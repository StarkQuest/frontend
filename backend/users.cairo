%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.starknet.common.syscalls import get_caller_address
from starkware.cairo.common.math import assert_nn


@storage_var
func balance(user: felt) -> (res : felt):
end

@storage_var
func users_banned(user: felt) -> (res : felt):
end

@storage_var
func users_reputation_scores(user: felt) -> (res : felt):
end

@view
func get_balance{
    syscall_ptr : felt*,
    pedersen_ptr : HashBuiltin*,
    range_check_ptr,
}(user:felt) -> (res : felt):
    let (res) = balance.read(user=user)
    return (res=res)
end

@view
func get_reputation_score{
    syscall_ptr : felt*,
    pedersen_ptr : HashBuiltin*,
    range_check_ptr,
}(user : felt) -> (res : felt):
    let (res) = users_reputation_scores.read(user=user)
    return (res=res)
end


@external
func increase_reputation{
    syscall_ptr : felt*,
    pedersen_ptr : HashBuiltin*,
    range_check_ptr,
}(amount : felt):

    # Obtain the address of the account contract.
    let (user) = get_caller_address()

    # Read and update its balance.
    let (res) = users_reputation_scores.read(user=user)
    users_reputation_scores.write(user, res + amount)
    return ()
end

@external
func decrease_reputation{
    syscall_ptr : felt*,
    pedersen_ptr : HashBuiltin*,
    range_check_ptr,
}(amount : felt):

    # Obtain the address of the account contract.
    let (user) = get_caller_address()

    # Read and update its balance.
    let (res) = users_reputation_scores.read(user=user)
    users_reputation_scores.write(user, res - amount)
    return ()
end
