; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43472 () Bool)

(assert start!43472)

(declare-fun b_free!12243 () Bool)

(declare-fun b_next!12243 () Bool)

(assert (=> start!43472 (= b_free!12243 (not b_next!12243))))

(declare-fun tp!43012 () Bool)

(declare-fun b_and!21021 () Bool)

(assert (=> start!43472 (= tp!43012 b_and!21021)))

(declare-fun mapNonEmpty!22342 () Bool)

(declare-fun mapRes!22342 () Bool)

(declare-fun tp!43011 () Bool)

(declare-fun e!283188 () Bool)

(assert (=> mapNonEmpty!22342 (= mapRes!22342 (and tp!43011 e!283188))))

(declare-datatypes ((V!19411 0))(
  ( (V!19412 (val!6925 Int)) )
))
(declare-datatypes ((ValueCell!6516 0))(
  ( (ValueCellFull!6516 (v!9214 V!19411)) (EmptyCell!6516) )
))
(declare-fun mapValue!22342 () ValueCell!6516)

(declare-fun mapKey!22342 () (_ BitVec 32))

(declare-fun mapRest!22342 () (Array (_ BitVec 32) ValueCell!6516))

(declare-datatypes ((array!31147 0))(
  ( (array!31148 (arr!14973 (Array (_ BitVec 32) ValueCell!6516)) (size!15331 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31147)

(assert (=> mapNonEmpty!22342 (= (arr!14973 _values!1516) (store mapRest!22342 mapKey!22342 mapValue!22342))))

(declare-fun b!481288 () Bool)

(declare-fun e!283191 () Bool)

(assert (=> b!481288 (= e!283191 (not true))))

(declare-fun lt!218504 () (_ BitVec 32))

(declare-datatypes ((array!31149 0))(
  ( (array!31150 (arr!14974 (Array (_ BitVec 32) (_ BitVec 64))) (size!15332 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31149)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31149 (_ BitVec 32)) Bool)

(assert (=> b!481288 (arrayForallSeekEntryOrOpenFound!0 lt!218504 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14094 0))(
  ( (Unit!14095) )
))
(declare-fun lt!218502 () Unit!14094)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31149 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14094)

(assert (=> b!481288 (= lt!218502 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218504))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!31149 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!481288 (= lt!218504 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun e!283190 () Bool)

(assert (=> b!481288 e!283190))

(declare-fun c!57843 () Bool)

(assert (=> b!481288 (= c!57843 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218503 () Unit!14094)

(declare-fun minValue!1458 () V!19411)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19411)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!136 (array!31149 array!31147 (_ BitVec 32) (_ BitVec 32) V!19411 V!19411 (_ BitVec 64) Int) Unit!14094)

(assert (=> b!481288 (= lt!218503 (lemmaKeyInListMapIsInArray!136 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!481289 () Bool)

(declare-fun arrayContainsKey!0 (array!31149 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!481289 (= e!283190 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!481290 () Bool)

(assert (=> b!481290 (= e!283190 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!481291 () Bool)

(declare-fun res!287004 () Bool)

(assert (=> b!481291 (=> (not res!287004) (not e!283191))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!481291 (= res!287004 (validKeyInArray!0 k0!1332))))

(declare-fun b!481292 () Bool)

(declare-fun res!287008 () Bool)

(assert (=> b!481292 (=> (not res!287008) (not e!283191))))

(declare-datatypes ((tuple2!9086 0))(
  ( (tuple2!9087 (_1!4553 (_ BitVec 64)) (_2!4553 V!19411)) )
))
(declare-datatypes ((List!9200 0))(
  ( (Nil!9197) (Cons!9196 (h!10052 tuple2!9086) (t!15422 List!9200)) )
))
(declare-datatypes ((ListLongMap!8013 0))(
  ( (ListLongMap!8014 (toList!4022 List!9200)) )
))
(declare-fun contains!2633 (ListLongMap!8013 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2314 (array!31149 array!31147 (_ BitVec 32) (_ BitVec 32) V!19411 V!19411 (_ BitVec 32) Int) ListLongMap!8013)

(assert (=> b!481292 (= res!287008 (contains!2633 (getCurrentListMap!2314 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!481293 () Bool)

(declare-fun res!287003 () Bool)

(assert (=> b!481293 (=> (not res!287003) (not e!283191))))

(assert (=> b!481293 (= res!287003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun res!287007 () Bool)

(assert (=> start!43472 (=> (not res!287007) (not e!283191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43472 (= res!287007 (validMask!0 mask!2352))))

(assert (=> start!43472 e!283191))

(assert (=> start!43472 true))

(declare-fun tp_is_empty!13755 () Bool)

(assert (=> start!43472 tp_is_empty!13755))

(declare-fun e!283189 () Bool)

(declare-fun array_inv!10782 (array!31147) Bool)

(assert (=> start!43472 (and (array_inv!10782 _values!1516) e!283189)))

(assert (=> start!43472 tp!43012))

(declare-fun array_inv!10783 (array!31149) Bool)

(assert (=> start!43472 (array_inv!10783 _keys!1874)))

(declare-fun b!481294 () Bool)

(declare-fun res!287005 () Bool)

(assert (=> b!481294 (=> (not res!287005) (not e!283191))))

(assert (=> b!481294 (= res!287005 (and (= (size!15331 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15332 _keys!1874) (size!15331 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481295 () Bool)

(assert (=> b!481295 (= e!283188 tp_is_empty!13755)))

(declare-fun mapIsEmpty!22342 () Bool)

(assert (=> mapIsEmpty!22342 mapRes!22342))

(declare-fun b!481296 () Bool)

(declare-fun e!283192 () Bool)

(assert (=> b!481296 (= e!283192 tp_is_empty!13755)))

(declare-fun b!481297 () Bool)

(declare-fun res!287006 () Bool)

(assert (=> b!481297 (=> (not res!287006) (not e!283191))))

(declare-datatypes ((List!9201 0))(
  ( (Nil!9198) (Cons!9197 (h!10053 (_ BitVec 64)) (t!15423 List!9201)) )
))
(declare-fun arrayNoDuplicates!0 (array!31149 (_ BitVec 32) List!9201) Bool)

(assert (=> b!481297 (= res!287006 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9198))))

(declare-fun b!481298 () Bool)

(assert (=> b!481298 (= e!283189 (and e!283192 mapRes!22342))))

(declare-fun condMapEmpty!22342 () Bool)

(declare-fun mapDefault!22342 () ValueCell!6516)

(assert (=> b!481298 (= condMapEmpty!22342 (= (arr!14973 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6516)) mapDefault!22342)))))

(assert (= (and start!43472 res!287007) b!481294))

(assert (= (and b!481294 res!287005) b!481293))

(assert (= (and b!481293 res!287003) b!481297))

(assert (= (and b!481297 res!287006) b!481292))

(assert (= (and b!481292 res!287008) b!481291))

(assert (= (and b!481291 res!287004) b!481288))

(assert (= (and b!481288 c!57843) b!481289))

(assert (= (and b!481288 (not c!57843)) b!481290))

(assert (= (and b!481298 condMapEmpty!22342) mapIsEmpty!22342))

(assert (= (and b!481298 (not condMapEmpty!22342)) mapNonEmpty!22342))

(get-info :version)

(assert (= (and mapNonEmpty!22342 ((_ is ValueCellFull!6516) mapValue!22342)) b!481295))

(assert (= (and b!481298 ((_ is ValueCellFull!6516) mapDefault!22342)) b!481296))

(assert (= start!43472 b!481298))

(declare-fun m!462767 () Bool)

(assert (=> b!481289 m!462767))

(declare-fun m!462769 () Bool)

(assert (=> b!481292 m!462769))

(assert (=> b!481292 m!462769))

(declare-fun m!462771 () Bool)

(assert (=> b!481292 m!462771))

(declare-fun m!462773 () Bool)

(assert (=> mapNonEmpty!22342 m!462773))

(declare-fun m!462775 () Bool)

(assert (=> b!481297 m!462775))

(declare-fun m!462777 () Bool)

(assert (=> start!43472 m!462777))

(declare-fun m!462779 () Bool)

(assert (=> start!43472 m!462779))

(declare-fun m!462781 () Bool)

(assert (=> start!43472 m!462781))

(declare-fun m!462783 () Bool)

(assert (=> b!481291 m!462783))

(declare-fun m!462785 () Bool)

(assert (=> b!481288 m!462785))

(declare-fun m!462787 () Bool)

(assert (=> b!481288 m!462787))

(declare-fun m!462789 () Bool)

(assert (=> b!481288 m!462789))

(declare-fun m!462791 () Bool)

(assert (=> b!481288 m!462791))

(declare-fun m!462793 () Bool)

(assert (=> b!481293 m!462793))

(check-sat (not start!43472) (not b!481293) (not b!481291) b_and!21021 (not b!481288) (not b!481292) (not b_next!12243) (not b!481297) (not mapNonEmpty!22342) (not b!481289) tp_is_empty!13755)
(check-sat b_and!21021 (not b_next!12243))
