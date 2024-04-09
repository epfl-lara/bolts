; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38260 () Bool)

(assert start!38260)

(declare-fun b!394486 () Bool)

(declare-fun res!226189 () Bool)

(declare-fun e!238820 () Bool)

(assert (=> b!394486 (=> (not res!226189) (not e!238820))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394486 (= res!226189 (validMask!0 mask!1025))))

(declare-fun b!394487 () Bool)

(declare-fun e!238823 () Bool)

(declare-fun e!238822 () Bool)

(declare-fun mapRes!16242 () Bool)

(assert (=> b!394487 (= e!238823 (and e!238822 mapRes!16242))))

(declare-fun condMapEmpty!16242 () Bool)

(declare-datatypes ((V!14119 0))(
  ( (V!14120 (val!4925 Int)) )
))
(declare-datatypes ((ValueCell!4537 0))(
  ( (ValueCellFull!4537 (v!7166 V!14119)) (EmptyCell!4537) )
))
(declare-datatypes ((array!23405 0))(
  ( (array!23406 (arr!11156 (Array (_ BitVec 32) ValueCell!4537)) (size!11508 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23405)

(declare-fun mapDefault!16242 () ValueCell!4537)

