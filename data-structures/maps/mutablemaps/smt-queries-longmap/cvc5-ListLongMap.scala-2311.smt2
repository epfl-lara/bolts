; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37336 () Bool)

(assert start!37336)

(declare-fun b_free!8455 () Bool)

(declare-fun b_next!8455 () Bool)

(assert (=> start!37336 (= b_free!8455 (not b_next!8455))))

(declare-fun tp!30080 () Bool)

(declare-fun b_and!15715 () Bool)

(assert (=> start!37336 (= tp!30080 b_and!15715)))

(declare-fun mapNonEmpty!15219 () Bool)

(declare-fun mapRes!15219 () Bool)

(declare-fun tp!30081 () Bool)

(declare-fun e!230349 () Bool)

(assert (=> mapNonEmpty!15219 (= mapRes!15219 (and tp!30081 e!230349))))

(declare-datatypes ((V!13243 0))(
  ( (V!13244 (val!4596 Int)) )
))
(declare-datatypes ((ValueCell!4208 0))(
  ( (ValueCellFull!4208 (v!6789 V!13243)) (EmptyCell!4208) )
))
(declare-datatypes ((array!22103 0))(
  ( (array!22104 (arr!10517 (Array (_ BitVec 32) ValueCell!4208)) (size!10869 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22103)

(declare-fun mapKey!15219 () (_ BitVec 32))

(declare-fun mapValue!15219 () ValueCell!4208)

(declare-fun mapRest!15219 () (Array (_ BitVec 32) ValueCell!4208))

(assert (=> mapNonEmpty!15219 (= (arr!10517 _values!506) (store mapRest!15219 mapKey!15219 mapValue!15219))))

(declare-fun b!378495 () Bool)

(declare-fun res!214508 () Bool)

(declare-fun e!230348 () Bool)

(assert (=> b!378495 (=> (not res!214508) (not e!230348))))

(declare-datatypes ((array!22105 0))(
  ( (array!22106 (arr!10518 (Array (_ BitVec 32) (_ BitVec 64))) (size!10870 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22105)

(declare-datatypes ((List!5980 0))(
  ( (Nil!5977) (Cons!5976 (h!6832 (_ BitVec 64)) (t!11138 List!5980)) )
))
(declare-fun arrayNoDuplicates!0 (array!22105 (_ BitVec 32) List!5980) Bool)

(assert (=> b!378495 (= res!214508 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5977))))

(declare-fun b!378496 () Bool)

(declare-fun res!214504 () Bool)

(declare-fun e!230350 () Bool)

(assert (=> b!378496 (=> (not res!214504) (not e!230350))))

(declare-fun lt!176499 () array!22105)

(assert (=> b!378496 (= res!214504 (arrayNoDuplicates!0 lt!176499 #b00000000000000000000000000000000 Nil!5977))))

(declare-fun b!378497 () Bool)

(declare-fun e!230352 () Bool)

(declare-fun e!230353 () Bool)

(assert (=> b!378497 (= e!230352 e!230353)))

(declare-fun res!214507 () Bool)

(assert (=> b!378497 (=> res!214507 e!230353)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!378497 (= res!214507 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6108 0))(
  ( (tuple2!6109 (_1!3064 (_ BitVec 64)) (_2!3064 V!13243)) )
))
(declare-datatypes ((List!5981 0))(
  ( (Nil!5978) (Cons!5977 (h!6833 tuple2!6108) (t!11139 List!5981)) )
))
(declare-datatypes ((ListLongMap!5035 0))(
  ( (ListLongMap!5036 (toList!2533 List!5981)) )
))
(declare-fun lt!176505 () ListLongMap!5035)

(declare-fun lt!176504 () ListLongMap!5035)

(assert (=> b!378497 (= lt!176505 lt!176504)))

(declare-fun lt!176500 () ListLongMap!5035)

(declare-fun lt!176506 () tuple2!6108)

(declare-fun +!874 (ListLongMap!5035 tuple2!6108) ListLongMap!5035)

(assert (=> b!378497 (= lt!176504 (+!874 lt!176500 lt!176506))))

(declare-fun lt!176501 () ListLongMap!5035)

(declare-fun lt!176497 () ListLongMap!5035)

(assert (=> b!378497 (= lt!176501 lt!176497)))

(declare-fun lt!176498 () ListLongMap!5035)

(assert (=> b!378497 (= lt!176497 (+!874 lt!176498 lt!176506))))

(declare-fun lt!176503 () ListLongMap!5035)

(assert (=> b!378497 (= lt!176501 (+!874 lt!176503 lt!176506))))

(declare-fun minValue!472 () V!13243)

(assert (=> b!378497 (= lt!176506 (tuple2!6109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378498 () Bool)

(declare-fun res!214513 () Bool)

(assert (=> b!378498 (=> (not res!214513) (not e!230348))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378498 (= res!214513 (validKeyInArray!0 k!778))))

(declare-fun b!378499 () Bool)

(declare-fun e!230354 () Bool)

(declare-fun tp_is_empty!9103 () Bool)

(assert (=> b!378499 (= e!230354 tp_is_empty!9103)))

(declare-fun b!378500 () Bool)

(declare-fun res!214511 () Bool)

(assert (=> b!378500 (=> (not res!214511) (not e!230348))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!378500 (= res!214511 (and (= (size!10869 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10870 _keys!658) (size!10869 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378501 () Bool)

(assert (=> b!378501 (= e!230353 true)))

(declare-fun lt!176507 () tuple2!6108)

(assert (=> b!378501 (= lt!176497 (+!874 lt!176504 lt!176507))))

(declare-fun v!373 () V!13243)

(declare-datatypes ((Unit!11645 0))(
  ( (Unit!11646) )
))
(declare-fun lt!176508 () Unit!11645)

(declare-fun addCommutativeForDiffKeys!289 (ListLongMap!5035 (_ BitVec 64) V!13243 (_ BitVec 64) V!13243) Unit!11645)

(assert (=> b!378501 (= lt!176508 (addCommutativeForDiffKeys!289 lt!176500 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun res!214514 () Bool)

(assert (=> start!37336 (=> (not res!214514) (not e!230348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37336 (= res!214514 (validMask!0 mask!970))))

(assert (=> start!37336 e!230348))

(declare-fun e!230351 () Bool)

(declare-fun array_inv!7738 (array!22103) Bool)

(assert (=> start!37336 (and (array_inv!7738 _values!506) e!230351)))

(assert (=> start!37336 tp!30080))

(assert (=> start!37336 true))

(assert (=> start!37336 tp_is_empty!9103))

(declare-fun array_inv!7739 (array!22105) Bool)

(assert (=> start!37336 (array_inv!7739 _keys!658)))

(declare-fun b!378502 () Bool)

(assert (=> b!378502 (= e!230350 (not e!230352))))

(declare-fun res!214503 () Bool)

(assert (=> b!378502 (=> res!214503 e!230352)))

(assert (=> b!378502 (= res!214503 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13243)

(declare-fun getCurrentListMap!1964 (array!22105 array!22103 (_ BitVec 32) (_ BitVec 32) V!13243 V!13243 (_ BitVec 32) Int) ListLongMap!5035)

(assert (=> b!378502 (= lt!176505 (getCurrentListMap!1964 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176509 () array!22103)

(assert (=> b!378502 (= lt!176501 (getCurrentListMap!1964 lt!176499 lt!176509 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378502 (and (= lt!176503 lt!176498) (= lt!176498 lt!176503))))

(assert (=> b!378502 (= lt!176498 (+!874 lt!176500 lt!176507))))

(assert (=> b!378502 (= lt!176507 (tuple2!6109 k!778 v!373))))

(declare-fun lt!176502 () Unit!11645)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!115 (array!22105 array!22103 (_ BitVec 32) (_ BitVec 32) V!13243 V!13243 (_ BitVec 32) (_ BitVec 64) V!13243 (_ BitVec 32) Int) Unit!11645)

(assert (=> b!378502 (= lt!176502 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!115 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!782 (array!22105 array!22103 (_ BitVec 32) (_ BitVec 32) V!13243 V!13243 (_ BitVec 32) Int) ListLongMap!5035)

(assert (=> b!378502 (= lt!176503 (getCurrentListMapNoExtraKeys!782 lt!176499 lt!176509 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378502 (= lt!176509 (array!22104 (store (arr!10517 _values!506) i!548 (ValueCellFull!4208 v!373)) (size!10869 _values!506)))))

(assert (=> b!378502 (= lt!176500 (getCurrentListMapNoExtraKeys!782 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!378503 () Bool)

(declare-fun res!214510 () Bool)

(assert (=> b!378503 (=> (not res!214510) (not e!230348))))

(assert (=> b!378503 (= res!214510 (or (= (select (arr!10518 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10518 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!378504 () Bool)

(assert (=> b!378504 (= e!230348 e!230350)))

(declare-fun res!214506 () Bool)

(assert (=> b!378504 (=> (not res!214506) (not e!230350))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22105 (_ BitVec 32)) Bool)

(assert (=> b!378504 (= res!214506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!176499 mask!970))))

(assert (=> b!378504 (= lt!176499 (array!22106 (store (arr!10518 _keys!658) i!548 k!778) (size!10870 _keys!658)))))

(declare-fun b!378505 () Bool)

(declare-fun res!214509 () Bool)

(assert (=> b!378505 (=> (not res!214509) (not e!230348))))

(assert (=> b!378505 (= res!214509 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10870 _keys!658))))))

(declare-fun b!378506 () Bool)

(declare-fun res!214505 () Bool)

(assert (=> b!378506 (=> (not res!214505) (not e!230348))))

(assert (=> b!378506 (= res!214505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!378507 () Bool)

(assert (=> b!378507 (= e!230349 tp_is_empty!9103)))

(declare-fun b!378508 () Bool)

(assert (=> b!378508 (= e!230351 (and e!230354 mapRes!15219))))

(declare-fun condMapEmpty!15219 () Bool)

(declare-fun mapDefault!15219 () ValueCell!4208)

