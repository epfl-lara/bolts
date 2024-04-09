; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38246 () Bool)

(assert start!38246)

(declare-fun b_free!9075 () Bool)

(declare-fun b_next!9075 () Bool)

(assert (=> start!38246 (= b_free!9075 (not b_next!9075))))

(declare-fun tp!32013 () Bool)

(declare-fun b_and!16479 () Bool)

(assert (=> start!38246 (= tp!32013 b_and!16479)))

(declare-fun b!394345 () Bool)

(declare-fun e!238712 () Bool)

(declare-fun e!238708 () Bool)

(assert (=> b!394345 (= e!238712 (not e!238708))))

(declare-fun res!226117 () Bool)

(assert (=> b!394345 (=> res!226117 e!238708)))

(declare-fun lt!186948 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!394345 (= res!226117 (or (and (not lt!186948) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!186948) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!186948)))))

(assert (=> b!394345 (= lt!186948 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!14101 0))(
  ( (V!14102 (val!4918 Int)) )
))
(declare-datatypes ((ValueCell!4530 0))(
  ( (ValueCellFull!4530 (v!7159 V!14101)) (EmptyCell!4530) )
))
(declare-datatypes ((array!23379 0))(
  ( (array!23380 (arr!11143 (Array (_ BitVec 32) ValueCell!4530)) (size!11495 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23379)

(declare-datatypes ((tuple2!6570 0))(
  ( (tuple2!6571 (_1!3295 (_ BitVec 64)) (_2!3295 V!14101)) )
))
(declare-datatypes ((List!6454 0))(
  ( (Nil!6451) (Cons!6450 (h!7306 tuple2!6570) (t!11636 List!6454)) )
))
(declare-datatypes ((ListLongMap!5497 0))(
  ( (ListLongMap!5498 (toList!2764 List!6454)) )
))
(declare-fun lt!186955 () ListLongMap!5497)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14101)

(declare-datatypes ((array!23381 0))(
  ( (array!23382 (arr!11144 (Array (_ BitVec 32) (_ BitVec 64))) (size!11496 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23381)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!14101)

(declare-fun getCurrentListMap!2121 (array!23381 array!23379 (_ BitVec 32) (_ BitVec 32) V!14101 V!14101 (_ BitVec 32) Int) ListLongMap!5497)

(assert (=> b!394345 (= lt!186955 (getCurrentListMap!2121 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186952 () array!23379)

(declare-fun lt!186953 () array!23381)

(declare-fun lt!186951 () ListLongMap!5497)

(assert (=> b!394345 (= lt!186951 (getCurrentListMap!2121 lt!186953 lt!186952 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186949 () ListLongMap!5497)

(declare-fun lt!186947 () ListLongMap!5497)

(assert (=> b!394345 (and (= lt!186949 lt!186947) (= lt!186947 lt!186949))))

(declare-fun lt!186950 () ListLongMap!5497)

(declare-fun lt!186945 () tuple2!6570)

(declare-fun +!1062 (ListLongMap!5497 tuple2!6570) ListLongMap!5497)

(assert (=> b!394345 (= lt!186947 (+!1062 lt!186950 lt!186945))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!14101)

(assert (=> b!394345 (= lt!186945 (tuple2!6571 k0!778 v!373))))

(declare-datatypes ((Unit!12017 0))(
  ( (Unit!12018) )
))
(declare-fun lt!186954 () Unit!12017)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!278 (array!23381 array!23379 (_ BitVec 32) (_ BitVec 32) V!14101 V!14101 (_ BitVec 32) (_ BitVec 64) V!14101 (_ BitVec 32) Int) Unit!12017)

(assert (=> b!394345 (= lt!186954 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!278 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!983 (array!23381 array!23379 (_ BitVec 32) (_ BitVec 32) V!14101 V!14101 (_ BitVec 32) Int) ListLongMap!5497)

(assert (=> b!394345 (= lt!186949 (getCurrentListMapNoExtraKeys!983 lt!186953 lt!186952 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!394345 (= lt!186952 (array!23380 (store (arr!11143 _values!506) i!548 (ValueCellFull!4530 v!373)) (size!11495 _values!506)))))

(assert (=> b!394345 (= lt!186950 (getCurrentListMapNoExtraKeys!983 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!394346 () Bool)

(declare-fun res!226116 () Bool)

(declare-fun e!238713 () Bool)

(assert (=> b!394346 (=> (not res!226116) (not e!238713))))

(assert (=> b!394346 (= res!226116 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11496 _keys!658))))))

(declare-fun mapIsEmpty!16221 () Bool)

(declare-fun mapRes!16221 () Bool)

(assert (=> mapIsEmpty!16221 mapRes!16221))

(declare-fun b!394347 () Bool)

(declare-fun res!226121 () Bool)

(assert (=> b!394347 (=> (not res!226121) (not e!238713))))

(declare-fun arrayContainsKey!0 (array!23381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!394347 (= res!226121 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!394348 () Bool)

(declare-fun res!226119 () Bool)

(assert (=> b!394348 (=> (not res!226119) (not e!238713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23381 (_ BitVec 32)) Bool)

(assert (=> b!394348 (= res!226119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!16221 () Bool)

(declare-fun tp!32012 () Bool)

(declare-fun e!238707 () Bool)

(assert (=> mapNonEmpty!16221 (= mapRes!16221 (and tp!32012 e!238707))))

(declare-fun mapKey!16221 () (_ BitVec 32))

(declare-fun mapValue!16221 () ValueCell!4530)

(declare-fun mapRest!16221 () (Array (_ BitVec 32) ValueCell!4530))

(assert (=> mapNonEmpty!16221 (= (arr!11143 _values!506) (store mapRest!16221 mapKey!16221 mapValue!16221))))

(declare-fun b!394349 () Bool)

(declare-fun tp_is_empty!9747 () Bool)

(assert (=> b!394349 (= e!238707 tp_is_empty!9747)))

(declare-fun b!394350 () Bool)

(assert (=> b!394350 (= e!238713 e!238712)))

(declare-fun res!226115 () Bool)

(assert (=> b!394350 (=> (not res!226115) (not e!238712))))

(assert (=> b!394350 (= res!226115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186953 mask!970))))

(assert (=> b!394350 (= lt!186953 (array!23382 (store (arr!11144 _keys!658) i!548 k0!778) (size!11496 _keys!658)))))

(declare-fun res!226114 () Bool)

(assert (=> start!38246 (=> (not res!226114) (not e!238713))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38246 (= res!226114 (validMask!0 mask!970))))

(assert (=> start!38246 e!238713))

(declare-fun e!238710 () Bool)

(declare-fun array_inv!8158 (array!23379) Bool)

(assert (=> start!38246 (and (array_inv!8158 _values!506) e!238710)))

(assert (=> start!38246 tp!32013))

(assert (=> start!38246 true))

(assert (=> start!38246 tp_is_empty!9747))

(declare-fun array_inv!8159 (array!23381) Bool)

(assert (=> start!38246 (array_inv!8159 _keys!658)))

(declare-fun b!394351 () Bool)

(declare-fun res!226112 () Bool)

(assert (=> b!394351 (=> (not res!226112) (not e!238713))))

(declare-datatypes ((List!6455 0))(
  ( (Nil!6452) (Cons!6451 (h!7307 (_ BitVec 64)) (t!11637 List!6455)) )
))
(declare-fun arrayNoDuplicates!0 (array!23381 (_ BitVec 32) List!6455) Bool)

(assert (=> b!394351 (= res!226112 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6452))))

(declare-fun b!394352 () Bool)

(declare-fun e!238711 () Bool)

(assert (=> b!394352 (= e!238711 tp_is_empty!9747)))

(declare-fun b!394353 () Bool)

(declare-fun res!226118 () Bool)

(assert (=> b!394353 (=> (not res!226118) (not e!238713))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!394353 (= res!226118 (validKeyInArray!0 k0!778))))

(declare-fun b!394354 () Bool)

(declare-fun res!226111 () Bool)

(assert (=> b!394354 (=> (not res!226111) (not e!238713))))

(assert (=> b!394354 (= res!226111 (or (= (select (arr!11144 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11144 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!394355 () Bool)

(assert (=> b!394355 (= e!238708 true)))

(declare-fun lt!186946 () ListLongMap!5497)

(assert (=> b!394355 (= lt!186946 (+!1062 lt!186955 lt!186945))))

(assert (=> b!394355 (= lt!186951 lt!186949)))

(declare-fun b!394356 () Bool)

(declare-fun res!226120 () Bool)

(assert (=> b!394356 (=> (not res!226120) (not e!238712))))

(assert (=> b!394356 (= res!226120 (arrayNoDuplicates!0 lt!186953 #b00000000000000000000000000000000 Nil!6452))))

(declare-fun b!394357 () Bool)

(assert (=> b!394357 (= e!238710 (and e!238711 mapRes!16221))))

(declare-fun condMapEmpty!16221 () Bool)

(declare-fun mapDefault!16221 () ValueCell!4530)

(assert (=> b!394357 (= condMapEmpty!16221 (= (arr!11143 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4530)) mapDefault!16221)))))

(declare-fun b!394358 () Bool)

(declare-fun res!226113 () Bool)

(assert (=> b!394358 (=> (not res!226113) (not e!238713))))

(assert (=> b!394358 (= res!226113 (and (= (size!11495 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11496 _keys!658) (size!11495 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(assert (= (and start!38246 res!226114) b!394358))

(assert (= (and b!394358 res!226113) b!394348))

(assert (= (and b!394348 res!226119) b!394351))

(assert (= (and b!394351 res!226112) b!394346))

(assert (= (and b!394346 res!226116) b!394353))

(assert (= (and b!394353 res!226118) b!394354))

(assert (= (and b!394354 res!226111) b!394347))

(assert (= (and b!394347 res!226121) b!394350))

(assert (= (and b!394350 res!226115) b!394356))

(assert (= (and b!394356 res!226120) b!394345))

(assert (= (and b!394345 (not res!226117)) b!394355))

(assert (= (and b!394357 condMapEmpty!16221) mapIsEmpty!16221))

(assert (= (and b!394357 (not condMapEmpty!16221)) mapNonEmpty!16221))

(get-info :version)

(assert (= (and mapNonEmpty!16221 ((_ is ValueCellFull!4530) mapValue!16221)) b!394349))

(assert (= (and b!394357 ((_ is ValueCellFull!4530) mapDefault!16221)) b!394352))

(assert (= start!38246 b!394357))

(declare-fun m!390805 () Bool)

(assert (=> b!394350 m!390805))

(declare-fun m!390807 () Bool)

(assert (=> b!394350 m!390807))

(declare-fun m!390809 () Bool)

(assert (=> b!394345 m!390809))

(declare-fun m!390811 () Bool)

(assert (=> b!394345 m!390811))

(declare-fun m!390813 () Bool)

(assert (=> b!394345 m!390813))

(declare-fun m!390815 () Bool)

(assert (=> b!394345 m!390815))

(declare-fun m!390817 () Bool)

(assert (=> b!394345 m!390817))

(declare-fun m!390819 () Bool)

(assert (=> b!394345 m!390819))

(declare-fun m!390821 () Bool)

(assert (=> b!394345 m!390821))

(declare-fun m!390823 () Bool)

(assert (=> b!394355 m!390823))

(declare-fun m!390825 () Bool)

(assert (=> b!394354 m!390825))

(declare-fun m!390827 () Bool)

(assert (=> b!394351 m!390827))

(declare-fun m!390829 () Bool)

(assert (=> start!38246 m!390829))

(declare-fun m!390831 () Bool)

(assert (=> start!38246 m!390831))

(declare-fun m!390833 () Bool)

(assert (=> start!38246 m!390833))

(declare-fun m!390835 () Bool)

(assert (=> b!394348 m!390835))

(declare-fun m!390837 () Bool)

(assert (=> b!394353 m!390837))

(declare-fun m!390839 () Bool)

(assert (=> mapNonEmpty!16221 m!390839))

(declare-fun m!390841 () Bool)

(assert (=> b!394356 m!390841))

(declare-fun m!390843 () Bool)

(assert (=> b!394347 m!390843))

(check-sat tp_is_empty!9747 (not b!394350) (not mapNonEmpty!16221) (not b!394348) (not b!394355) (not start!38246) (not b!394345) b_and!16479 (not b!394353) (not b!394347) (not b_next!9075) (not b!394356) (not b!394351))
(check-sat b_and!16479 (not b_next!9075))
