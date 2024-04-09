; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37318 () Bool)

(assert start!37318)

(declare-fun b_free!8437 () Bool)

(declare-fun b_next!8437 () Bool)

(assert (=> start!37318 (= b_free!8437 (not b_next!8437))))

(declare-fun tp!30026 () Bool)

(declare-fun b_and!15697 () Bool)

(assert (=> start!37318 (= tp!30026 b_and!15697)))

(declare-fun mapIsEmpty!15192 () Bool)

(declare-fun mapRes!15192 () Bool)

(assert (=> mapIsEmpty!15192 mapRes!15192))

(declare-fun b!378083 () Bool)

(declare-fun res!214172 () Bool)

(declare-fun e!230135 () Bool)

(assert (=> b!378083 (=> (not res!214172) (not e!230135))))

(declare-datatypes ((V!13219 0))(
  ( (V!13220 (val!4587 Int)) )
))
(declare-datatypes ((tuple2!6094 0))(
  ( (tuple2!6095 (_1!3057 (_ BitVec 64)) (_2!3057 V!13219)) )
))
(declare-fun lt!176175 () tuple2!6094)

(declare-datatypes ((List!5966 0))(
  ( (Nil!5963) (Cons!5962 (h!6818 tuple2!6094) (t!11124 List!5966)) )
))
(declare-datatypes ((ListLongMap!5021 0))(
  ( (ListLongMap!5022 (toList!2526 List!5966)) )
))
(declare-fun lt!176179 () ListLongMap!5021)

(declare-fun lt!176180 () ListLongMap!5021)

(declare-fun +!867 (ListLongMap!5021 tuple2!6094) ListLongMap!5021)

(assert (=> b!378083 (= res!214172 (= lt!176180 (+!867 lt!176179 lt!176175)))))

(declare-fun b!378084 () Bool)

(declare-fun res!214179 () Bool)

(declare-fun e!230132 () Bool)

(assert (=> b!378084 (=> (not res!214179) (not e!230132))))

(declare-datatypes ((array!22067 0))(
  ( (array!22068 (arr!10499 (Array (_ BitVec 32) (_ BitVec 64))) (size!10851 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22067)

(declare-datatypes ((List!5967 0))(
  ( (Nil!5964) (Cons!5963 (h!6819 (_ BitVec 64)) (t!11125 List!5967)) )
))
(declare-fun arrayNoDuplicates!0 (array!22067 (_ BitVec 32) List!5967) Bool)

(assert (=> b!378084 (= res!214179 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5964))))

(declare-fun b!378085 () Bool)

(declare-fun e!230138 () Bool)

(declare-fun tp_is_empty!9085 () Bool)

(assert (=> b!378085 (= e!230138 tp_is_empty!9085)))

(declare-fun b!378086 () Bool)

(declare-fun res!214180 () Bool)

(assert (=> b!378086 (=> (not res!214180) (not e!230132))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!378086 (= res!214180 (or (= (select (arr!10499 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10499 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!378087 () Bool)

(declare-fun res!214175 () Bool)

(assert (=> b!378087 (=> (not res!214175) (not e!230132))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378087 (= res!214175 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun res!214174 () Bool)

(assert (=> start!37318 (=> (not res!214174) (not e!230132))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37318 (= res!214174 (validMask!0 mask!970))))

(assert (=> start!37318 e!230132))

(declare-datatypes ((ValueCell!4199 0))(
  ( (ValueCellFull!4199 (v!6780 V!13219)) (EmptyCell!4199) )
))
(declare-datatypes ((array!22069 0))(
  ( (array!22070 (arr!10500 (Array (_ BitVec 32) ValueCell!4199)) (size!10852 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22069)

(declare-fun e!230137 () Bool)

(declare-fun array_inv!7724 (array!22069) Bool)

(assert (=> start!37318 (and (array_inv!7724 _values!506) e!230137)))

(assert (=> start!37318 tp!30026))

(assert (=> start!37318 true))

(assert (=> start!37318 tp_is_empty!9085))

(declare-fun array_inv!7725 (array!22067) Bool)

(assert (=> start!37318 (array_inv!7725 _keys!658)))

(declare-fun b!378088 () Bool)

(assert (=> b!378088 (= e!230137 (and e!230138 mapRes!15192))))

(declare-fun condMapEmpty!15192 () Bool)

(declare-fun mapDefault!15192 () ValueCell!4199)

