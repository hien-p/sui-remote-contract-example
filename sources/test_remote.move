module 0x0::Calculator {

    use sui::event;
    use sui::tx_context::{Self, TxContext}; 

    use std::debug;

    public struct EventResult has  copy, drop {
        sender: address,
        result: u64,
    }
      public entry fun add(a: u64, b: u64, ctx: &TxContext ): u64{
        let result = a + b;
        event::emit(EventResult { sender: ctx.sender(), result });   
        result
    }
}