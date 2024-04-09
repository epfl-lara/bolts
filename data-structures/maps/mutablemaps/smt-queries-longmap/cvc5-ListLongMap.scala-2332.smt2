; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37462 () Bool)

(assert start!37462)

(declare-fun b_free!8581 () Bool)

(declare-fun b_next!8581 () Bool)

(assert (=> start!37462 (= b_free!8581 (not b_next!8581))))

(declare-fun tp!30458 () Bool)

(declare-fun b_and!15841 () Bool)

(assert (=> start!37462 (= tp!30458 b_and!15841)))

(declare-fun b!381283 () Bool)

(declare-fun res!216724 () Bool)

(declare-fun e!231817 () Bool)

(assert (=> b!381283 (=> (not res!216724) (not e!231817))))

(declare-datatypes ((array!22351 0))(
  ( (array!22352 (arr!10641 (Array (_ BitVec 32) (_ BitVec 64))) (size!10993 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22351)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381283 (= res!216724 (or (= (select (arr!10641 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10641 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381284 () Bool)

(declare-fun e!231819 () Bool)

(declare-fun tp_is_empty!9229 () Bool)

(assert (=> b!381284 (= e!231819 tp_is_empty!9229)))

(declare-fun b!381285 () Bool)

(declare-fun res!216731 () Bool)

(assert (=> b!381285 (=> (not res!216731) (not e!231817))))

(assert (=> b!381285 (= res!216731 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10993 _keys!658))))))

(declare-fun b!381286 () Bool)

(declare-fun e!231814 () Bool)

(assert (=> b!381286 (= e!231814 true)))

(declare-datatypes ((V!13411 0))(
  ( (V!13412 (val!4659 Int)) )
))
(declare-datatypes ((tuple2!6212 0))(
  ( (tuple2!6213 (_1!3116 (_ BitVec 64)) (_2!3116 V!13411)) )
))
(declare-datatypes ((List!6083 0))(
  ( (Nil!6080) (Cons!6079 (h!6935 tuple2!6212) (t!11241 List!6083)) )
))
(declare-datatypes ((ListLongMap!5139 0))(
  ( (ListLongMap!5140 (toList!2585 List!6083)) )
))
(declare-fun lt!178771 () ListLongMap!5139)

(declare-fun lt!178770 () ListLongMap!5139)

(assert (=> b!381286 (= lt!178771 lt!178770)))

(declare-fun b!381287 () Bool)

(declare-fun e!231813 () Bool)

(assert (=> b!381287 (= e!231813 (not e!231814))))

(declare-fun res!216725 () Bool)

(assert (=> b!381287 (=> res!216725 e!231814)))

(declare-fun lt!178774 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!381287 (= res!216725 (or (and (not lt!178774) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!178774) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!178774)))))

(assert (=> b!381287 (= lt!178774 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!178766 () ListLongMap!5139)

(declare-datatypes ((ValueCell!4271 0))(
  ( (ValueCellFull!4271 (v!6852 V!13411)) (EmptyCell!4271) )
))
(declare-datatypes ((array!22353 0))(
  ( (array!22354 (arr!10642 (Array (_ BitVec 32) ValueCell!4271)) (size!10994 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22353)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13411)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13411)

(declare-fun getCurrentListMap!2005 (array!22351 array!22353 (_ BitVec 32) (_ BitVec 32) V!13411 V!13411 (_ BitVec 32) Int) ListLongMap!5139)

(assert (=> b!381287 (= lt!178766 (getCurrentListMap!2005 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178768 () array!22353)

(declare-fun lt!178773 () array!22351)

(assert (=> b!381287 (= lt!178771 (getCurrentListMap!2005 lt!178773 lt!178768 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178772 () ListLongMap!5139)

(assert (=> b!381287 (and (= lt!178770 lt!178772) (= lt!178772 lt!178770))))

(declare-fun v!373 () V!13411)

(declare-fun lt!178769 () ListLongMap!5139)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!923 (ListLongMap!5139 tuple2!6212) ListLongMap!5139)

(assert (=> b!381287 (= lt!178772 (+!923 lt!178769 (tuple2!6213 k!778 v!373)))))

(declare-datatypes ((Unit!11739 0))(
  ( (Unit!11740) )
))
(declare-fun lt!178767 () Unit!11739)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!156 (array!22351 array!22353 (_ BitVec 32) (_ BitVec 32) V!13411 V!13411 (_ BitVec 32) (_ BitVec 64) V!13411 (_ BitVec 32) Int) Unit!11739)

(assert (=> b!381287 (= lt!178767 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!156 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!823 (array!22351 array!22353 (_ BitVec 32) (_ BitVec 32) V!13411 V!13411 (_ BitVec 32) Int) ListLongMap!5139)

(assert (=> b!381287 (= lt!178770 (getCurrentListMapNoExtraKeys!823 lt!178773 lt!178768 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381287 (= lt!178768 (array!22354 (store (arr!10642 _values!506) i!548 (ValueCellFull!4271 v!373)) (size!10994 _values!506)))))

(assert (=> b!381287 (= lt!178769 (getCurrentListMapNoExtraKeys!823 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15408 () Bool)

(declare-fun mapRes!15408 () Bool)

(assert (=> mapIsEmpty!15408 mapRes!15408))

(declare-fun b!381288 () Bool)

(declare-fun e!231818 () Bool)

(assert (=> b!381288 (= e!231818 (and e!231819 mapRes!15408))))

(declare-fun condMapEmpty!15408 () Bool)

(declare-fun mapDefault!15408 () ValueCell!4271)

