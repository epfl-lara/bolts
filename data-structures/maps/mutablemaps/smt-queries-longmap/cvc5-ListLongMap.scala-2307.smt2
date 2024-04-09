; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37312 () Bool)

(assert start!37312)

(declare-fun b_free!8431 () Bool)

(declare-fun b_next!8431 () Bool)

(assert (=> start!37312 (= b_free!8431 (not b_next!8431))))

(declare-fun tp!30009 () Bool)

(declare-fun b_and!15691 () Bool)

(assert (=> start!37312 (= tp!30009 b_and!15691)))

(declare-fun b!377946 () Bool)

(declare-fun res!214063 () Bool)

(declare-fun e!230062 () Bool)

(assert (=> b!377946 (=> (not res!214063) (not e!230062))))

(declare-datatypes ((array!22057 0))(
  ( (array!22058 (arr!10494 (Array (_ BitVec 32) (_ BitVec 64))) (size!10846 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22057)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22057 (_ BitVec 32)) Bool)

(assert (=> b!377946 (= res!214063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377947 () Bool)

(declare-fun res!214072 () Bool)

(assert (=> b!377947 (=> (not res!214072) (not e!230062))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22057 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377947 (= res!214072 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!377948 () Bool)

(declare-fun res!214069 () Bool)

(assert (=> b!377948 (=> (not res!214069) (not e!230062))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377948 (= res!214069 (or (= (select (arr!10494 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10494 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377949 () Bool)

(declare-fun e!230064 () Bool)

(declare-fun tp_is_empty!9079 () Bool)

(assert (=> b!377949 (= e!230064 tp_is_empty!9079)))

(declare-fun b!377950 () Bool)

(declare-fun res!214066 () Bool)

(assert (=> b!377950 (=> (not res!214066) (not e!230062))))

(declare-datatypes ((List!5963 0))(
  ( (Nil!5960) (Cons!5959 (h!6815 (_ BitVec 64)) (t!11121 List!5963)) )
))
(declare-fun arrayNoDuplicates!0 (array!22057 (_ BitVec 32) List!5963) Bool)

(assert (=> b!377950 (= res!214066 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5960))))

(declare-fun b!377951 () Bool)

(declare-fun e!230061 () Bool)

(declare-fun mapRes!15183 () Bool)

(assert (=> b!377951 (= e!230061 (and e!230064 mapRes!15183))))

(declare-fun condMapEmpty!15183 () Bool)

(declare-datatypes ((V!13211 0))(
  ( (V!13212 (val!4584 Int)) )
))
(declare-datatypes ((ValueCell!4196 0))(
  ( (ValueCellFull!4196 (v!6777 V!13211)) (EmptyCell!4196) )
))
(declare-datatypes ((array!22059 0))(
  ( (array!22060 (arr!10495 (Array (_ BitVec 32) ValueCell!4196)) (size!10847 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22059)

(declare-fun mapDefault!15183 () ValueCell!4196)

