; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37490 () Bool)

(assert start!37490)

(declare-fun b_free!8609 () Bool)

(declare-fun b_next!8609 () Bool)

(assert (=> start!37490 (= b_free!8609 (not b_next!8609))))

(declare-fun tp!30543 () Bool)

(declare-fun b_and!15869 () Bool)

(assert (=> start!37490 (= tp!30543 b_and!15869)))

(declare-fun b!381871 () Bool)

(declare-fun res!217188 () Bool)

(declare-fun e!232109 () Bool)

(assert (=> b!381871 (=> (not res!217188) (not e!232109))))

(declare-datatypes ((array!22405 0))(
  ( (array!22406 (arr!10668 (Array (_ BitVec 32) (_ BitVec 64))) (size!11020 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22405)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381871 (= res!217188 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!381872 () Bool)

(declare-fun e!232108 () Bool)

(declare-fun e!232110 () Bool)

(declare-fun mapRes!15450 () Bool)

(assert (=> b!381872 (= e!232108 (and e!232110 mapRes!15450))))

(declare-fun condMapEmpty!15450 () Bool)

(declare-datatypes ((V!13447 0))(
  ( (V!13448 (val!4673 Int)) )
))
(declare-datatypes ((ValueCell!4285 0))(
  ( (ValueCellFull!4285 (v!6866 V!13447)) (EmptyCell!4285) )
))
(declare-datatypes ((array!22407 0))(
  ( (array!22408 (arr!10669 (Array (_ BitVec 32) ValueCell!4285)) (size!11021 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22407)

(declare-fun mapDefault!15450 () ValueCell!4285)

