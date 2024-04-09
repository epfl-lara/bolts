; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37310 () Bool)

(assert start!37310)

(declare-fun b_free!8429 () Bool)

(declare-fun b_next!8429 () Bool)

(assert (=> start!37310 (= b_free!8429 (not b_next!8429))))

(declare-fun tp!30002 () Bool)

(declare-fun b_and!15689 () Bool)

(assert (=> start!37310 (= tp!30002 b_and!15689)))

(declare-fun b!377901 () Bool)

(declare-fun e!230036 () Bool)

(assert (=> b!377901 (= e!230036 true)))

(declare-datatypes ((V!13207 0))(
  ( (V!13208 (val!4583 Int)) )
))
(declare-datatypes ((tuple2!6090 0))(
  ( (tuple2!6091 (_1!3055 (_ BitVec 64)) (_2!3055 V!13207)) )
))
(declare-datatypes ((List!5961 0))(
  ( (Nil!5958) (Cons!5957 (h!6813 tuple2!6090) (t!11119 List!5961)) )
))
(declare-datatypes ((ListLongMap!5017 0))(
  ( (ListLongMap!5018 (toList!2524 List!5961)) )
))
(declare-fun lt!176028 () ListLongMap!5017)

(declare-fun lt!176033 () ListLongMap!5017)

(declare-fun lt!176038 () tuple2!6090)

(declare-fun +!865 (ListLongMap!5017 tuple2!6090) ListLongMap!5017)

(assert (=> b!377901 (= lt!176028 (+!865 lt!176033 lt!176038))))

(declare-fun v!373 () V!13207)

(declare-fun k!778 () (_ BitVec 64))

(declare-datatypes ((Unit!11629 0))(
  ( (Unit!11630) )
))
(declare-fun lt!176036 () Unit!11629)

(declare-fun lt!176026 () ListLongMap!5017)

(declare-fun zeroValue!472 () V!13207)

(declare-fun addCommutativeForDiffKeys!282 (ListLongMap!5017 (_ BitVec 64) V!13207 (_ BitVec 64) V!13207) Unit!11629)

(assert (=> b!377901 (= lt!176036 (addCommutativeForDiffKeys!282 lt!176026 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377902 () Bool)

(declare-fun e!230037 () Bool)

(declare-fun tp_is_empty!9077 () Bool)

(assert (=> b!377902 (= e!230037 tp_is_empty!9077)))

(declare-fun b!377903 () Bool)

(declare-fun e!230043 () Bool)

(assert (=> b!377903 (= e!230043 e!230036)))

(declare-fun res!214032 () Bool)

(assert (=> b!377903 (=> res!214032 e!230036)))

(assert (=> b!377903 (= res!214032 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!176035 () ListLongMap!5017)

(assert (=> b!377903 (= lt!176035 lt!176028)))

(declare-fun lt!176037 () ListLongMap!5017)

(declare-fun lt!176029 () tuple2!6090)

(assert (=> b!377903 (= lt!176028 (+!865 lt!176037 lt!176029))))

(declare-fun lt!176030 () ListLongMap!5017)

(assert (=> b!377903 (= lt!176030 lt!176033)))

(assert (=> b!377903 (= lt!176033 (+!865 lt!176026 lt!176029))))

(declare-fun lt!176031 () ListLongMap!5017)

(assert (=> b!377903 (= lt!176035 (+!865 lt!176031 lt!176029))))

(assert (=> b!377903 (= lt!176029 (tuple2!6091 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapNonEmpty!15180 () Bool)

(declare-fun mapRes!15180 () Bool)

(declare-fun tp!30003 () Bool)

(declare-fun e!230040 () Bool)

(assert (=> mapNonEmpty!15180 (= mapRes!15180 (and tp!30003 e!230040))))

(declare-datatypes ((ValueCell!4195 0))(
  ( (ValueCellFull!4195 (v!6776 V!13207)) (EmptyCell!4195) )
))
(declare-fun mapValue!15180 () ValueCell!4195)

(declare-datatypes ((array!22053 0))(
  ( (array!22054 (arr!10492 (Array (_ BitVec 32) ValueCell!4195)) (size!10844 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22053)

(declare-fun mapRest!15180 () (Array (_ BitVec 32) ValueCell!4195))

(declare-fun mapKey!15180 () (_ BitVec 32))

(assert (=> mapNonEmpty!15180 (= (arr!10492 _values!506) (store mapRest!15180 mapKey!15180 mapValue!15180))))

(declare-fun b!377904 () Bool)

(declare-fun res!214027 () Bool)

(declare-fun e!230039 () Bool)

(assert (=> b!377904 (=> (not res!214027) (not e!230039))))

(declare-datatypes ((array!22055 0))(
  ( (array!22056 (arr!10493 (Array (_ BitVec 32) (_ BitVec 64))) (size!10845 (_ BitVec 32))) )
))
(declare-fun lt!176027 () array!22055)

(declare-datatypes ((List!5962 0))(
  ( (Nil!5959) (Cons!5958 (h!6814 (_ BitVec 64)) (t!11120 List!5962)) )
))
(declare-fun arrayNoDuplicates!0 (array!22055 (_ BitVec 32) List!5962) Bool)

(assert (=> b!377904 (= res!214027 (arrayNoDuplicates!0 lt!176027 #b00000000000000000000000000000000 Nil!5959))))

(declare-fun b!377905 () Bool)

(declare-fun res!214034 () Bool)

(declare-fun e!230042 () Bool)

(assert (=> b!377905 (=> (not res!214034) (not e!230042))))

(declare-fun _keys!658 () array!22055)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22055 (_ BitVec 32)) Bool)

(assert (=> b!377905 (= res!214034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377906 () Bool)

(assert (=> b!377906 (= e!230042 e!230039)))

(declare-fun res!214031 () Bool)

(assert (=> b!377906 (=> (not res!214031) (not e!230039))))

(assert (=> b!377906 (= res!214031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!176027 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377906 (= lt!176027 (array!22056 (store (arr!10493 _keys!658) i!548 k!778) (size!10845 _keys!658)))))

(declare-fun b!377907 () Bool)

(declare-fun e!230041 () Bool)

(assert (=> b!377907 (= e!230041 (and e!230037 mapRes!15180))))

(declare-fun condMapEmpty!15180 () Bool)

(declare-fun mapDefault!15180 () ValueCell!4195)

