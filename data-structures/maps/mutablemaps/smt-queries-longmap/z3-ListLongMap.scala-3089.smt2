; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43484 () Bool)

(assert start!43484)

(declare-fun b_free!12255 () Bool)

(declare-fun b_next!12255 () Bool)

(assert (=> start!43484 (= b_free!12255 (not b_next!12255))))

(declare-fun tp!43048 () Bool)

(declare-fun b_and!21033 () Bool)

(assert (=> start!43484 (= tp!43048 b_and!21033)))

(declare-fun b!481487 () Bool)

(declare-fun res!287111 () Bool)

(declare-fun e!283296 () Bool)

(assert (=> b!481487 (=> (not res!287111) (not e!283296))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!31171 0))(
  ( (array!31172 (arr!14985 (Array (_ BitVec 32) (_ BitVec 64))) (size!15343 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31171)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19427 0))(
  ( (V!19428 (val!6931 Int)) )
))
(declare-datatypes ((ValueCell!6522 0))(
  ( (ValueCellFull!6522 (v!9220 V!19427)) (EmptyCell!6522) )
))
(declare-datatypes ((array!31173 0))(
  ( (array!31174 (arr!14986 (Array (_ BitVec 32) ValueCell!6522)) (size!15344 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31173)

(assert (=> b!481487 (= res!287111 (and (= (size!15344 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15343 _keys!1874) (size!15344 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481488 () Bool)

(declare-fun res!287113 () Bool)

(assert (=> b!481488 (=> (not res!287113) (not e!283296))))

(declare-datatypes ((List!9211 0))(
  ( (Nil!9208) (Cons!9207 (h!10063 (_ BitVec 64)) (t!15433 List!9211)) )
))
(declare-fun arrayNoDuplicates!0 (array!31171 (_ BitVec 32) List!9211) Bool)

(assert (=> b!481488 (= res!287113 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9208))))

(declare-fun b!481489 () Bool)

(declare-fun res!287116 () Bool)

(assert (=> b!481489 (=> (not res!287116) (not e!283296))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19427)

(declare-fun zeroValue!1458 () V!19427)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9098 0))(
  ( (tuple2!9099 (_1!4559 (_ BitVec 64)) (_2!4559 V!19427)) )
))
(declare-datatypes ((List!9212 0))(
  ( (Nil!9209) (Cons!9208 (h!10064 tuple2!9098) (t!15434 List!9212)) )
))
(declare-datatypes ((ListLongMap!8025 0))(
  ( (ListLongMap!8026 (toList!4028 List!9212)) )
))
(declare-fun contains!2639 (ListLongMap!8025 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2320 (array!31171 array!31173 (_ BitVec 32) (_ BitVec 32) V!19427 V!19427 (_ BitVec 32) Int) ListLongMap!8025)

(assert (=> b!481489 (= res!287116 (contains!2639 (getCurrentListMap!2320 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!481490 () Bool)

(declare-fun e!283299 () Bool)

(declare-fun e!283300 () Bool)

(declare-fun mapRes!22360 () Bool)

(assert (=> b!481490 (= e!283299 (and e!283300 mapRes!22360))))

(declare-fun condMapEmpty!22360 () Bool)

(declare-fun mapDefault!22360 () ValueCell!6522)

(assert (=> b!481490 (= condMapEmpty!22360 (= (arr!14986 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6522)) mapDefault!22360)))))

(declare-fun mapIsEmpty!22360 () Bool)

(assert (=> mapIsEmpty!22360 mapRes!22360))

(declare-fun b!481491 () Bool)

(declare-fun res!287115 () Bool)

(assert (=> b!481491 (=> (not res!287115) (not e!283296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31171 (_ BitVec 32)) Bool)

(assert (=> b!481491 (= res!287115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481492 () Bool)

(declare-fun e!283295 () Bool)

(assert (=> b!481492 (= e!283295 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!481493 () Bool)

(declare-fun tp_is_empty!13767 () Bool)

(assert (=> b!481493 (= e!283300 tp_is_empty!13767)))

(declare-fun b!481494 () Bool)

(declare-fun arrayContainsKey!0 (array!31171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!481494 (= e!283295 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!22360 () Bool)

(declare-fun tp!43047 () Bool)

(declare-fun e!283298 () Bool)

(assert (=> mapNonEmpty!22360 (= mapRes!22360 (and tp!43047 e!283298))))

(declare-fun mapRest!22360 () (Array (_ BitVec 32) ValueCell!6522))

(declare-fun mapValue!22360 () ValueCell!6522)

(declare-fun mapKey!22360 () (_ BitVec 32))

(assert (=> mapNonEmpty!22360 (= (arr!14986 _values!1516) (store mapRest!22360 mapKey!22360 mapValue!22360))))

(declare-fun b!481495 () Bool)

(declare-fun res!287112 () Bool)

(assert (=> b!481495 (=> (not res!287112) (not e!283296))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!481495 (= res!287112 (validKeyInArray!0 k0!1332))))

(declare-fun b!481496 () Bool)

(assert (=> b!481496 (= e!283296 (not true))))

(declare-fun lt!218558 () (_ BitVec 32))

(assert (=> b!481496 (arrayForallSeekEntryOrOpenFound!0 lt!218558 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14104 0))(
  ( (Unit!14105) )
))
(declare-fun lt!218556 () Unit!14104)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31171 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14104)

(assert (=> b!481496 (= lt!218556 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218558))))

(declare-fun arrayScanForKey!0 (array!31171 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!481496 (= lt!218558 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (=> b!481496 e!283295))

(declare-fun c!57861 () Bool)

(assert (=> b!481496 (= c!57861 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218557 () Unit!14104)

(declare-fun lemmaKeyInListMapIsInArray!141 (array!31171 array!31173 (_ BitVec 32) (_ BitVec 32) V!19427 V!19427 (_ BitVec 64) Int) Unit!14104)

(assert (=> b!481496 (= lt!218557 (lemmaKeyInListMapIsInArray!141 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!481486 () Bool)

(assert (=> b!481486 (= e!283298 tp_is_empty!13767)))

(declare-fun res!287114 () Bool)

(assert (=> start!43484 (=> (not res!287114) (not e!283296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43484 (= res!287114 (validMask!0 mask!2352))))

(assert (=> start!43484 e!283296))

(assert (=> start!43484 true))

(assert (=> start!43484 tp_is_empty!13767))

(declare-fun array_inv!10792 (array!31173) Bool)

(assert (=> start!43484 (and (array_inv!10792 _values!1516) e!283299)))

(assert (=> start!43484 tp!43048))

(declare-fun array_inv!10793 (array!31171) Bool)

(assert (=> start!43484 (array_inv!10793 _keys!1874)))

(assert (= (and start!43484 res!287114) b!481487))

(assert (= (and b!481487 res!287111) b!481491))

(assert (= (and b!481491 res!287115) b!481488))

(assert (= (and b!481488 res!287113) b!481489))

(assert (= (and b!481489 res!287116) b!481495))

(assert (= (and b!481495 res!287112) b!481496))

(assert (= (and b!481496 c!57861) b!481494))

(assert (= (and b!481496 (not c!57861)) b!481492))

(assert (= (and b!481490 condMapEmpty!22360) mapIsEmpty!22360))

(assert (= (and b!481490 (not condMapEmpty!22360)) mapNonEmpty!22360))

(get-info :version)

(assert (= (and mapNonEmpty!22360 ((_ is ValueCellFull!6522) mapValue!22360)) b!481486))

(assert (= (and b!481490 ((_ is ValueCellFull!6522) mapDefault!22360)) b!481493))

(assert (= start!43484 b!481490))

(declare-fun m!462935 () Bool)

(assert (=> b!481496 m!462935))

(declare-fun m!462937 () Bool)

(assert (=> b!481496 m!462937))

(declare-fun m!462939 () Bool)

(assert (=> b!481496 m!462939))

(declare-fun m!462941 () Bool)

(assert (=> b!481496 m!462941))

(declare-fun m!462943 () Bool)

(assert (=> start!43484 m!462943))

(declare-fun m!462945 () Bool)

(assert (=> start!43484 m!462945))

(declare-fun m!462947 () Bool)

(assert (=> start!43484 m!462947))

(declare-fun m!462949 () Bool)

(assert (=> mapNonEmpty!22360 m!462949))

(declare-fun m!462951 () Bool)

(assert (=> b!481491 m!462951))

(declare-fun m!462953 () Bool)

(assert (=> b!481494 m!462953))

(declare-fun m!462955 () Bool)

(assert (=> b!481489 m!462955))

(assert (=> b!481489 m!462955))

(declare-fun m!462957 () Bool)

(assert (=> b!481489 m!462957))

(declare-fun m!462959 () Bool)

(assert (=> b!481488 m!462959))

(declare-fun m!462961 () Bool)

(assert (=> b!481495 m!462961))

(check-sat (not mapNonEmpty!22360) (not b!481489) (not b!481496) (not b!481488) (not start!43484) (not b!481491) tp_is_empty!13767 (not b!481495) (not b!481494) b_and!21033 (not b_next!12255))
(check-sat b_and!21033 (not b_next!12255))
