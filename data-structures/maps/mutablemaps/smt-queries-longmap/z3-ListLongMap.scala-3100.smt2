; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43550 () Bool)

(assert start!43550)

(declare-fun b_free!12321 () Bool)

(declare-fun b_next!12321 () Bool)

(assert (=> start!43550 (= b_free!12321 (not b_next!12321))))

(declare-fun tp!43245 () Bool)

(declare-fun b_and!21099 () Bool)

(assert (=> start!43550 (= tp!43245 b_and!21099)))

(declare-fun b!482252 () Bool)

(declare-fun res!287544 () Bool)

(declare-fun e!283813 () Bool)

(assert (=> b!482252 (=> (not res!287544) (not e!283813))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-datatypes ((V!19515 0))(
  ( (V!19516 (val!6964 Int)) )
))
(declare-fun minValue!1458 () V!19515)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19515)

(declare-datatypes ((ValueCell!6555 0))(
  ( (ValueCellFull!6555 (v!9253 V!19515)) (EmptyCell!6555) )
))
(declare-datatypes ((array!31293 0))(
  ( (array!31294 (arr!15046 (Array (_ BitVec 32) ValueCell!6555)) (size!15404 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31293)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31295 0))(
  ( (array!31296 (arr!15047 (Array (_ BitVec 32) (_ BitVec 64))) (size!15405 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31295)

(declare-datatypes ((tuple2!9142 0))(
  ( (tuple2!9143 (_1!4581 (_ BitVec 64)) (_2!4581 V!19515)) )
))
(declare-datatypes ((List!9258 0))(
  ( (Nil!9255) (Cons!9254 (h!10110 tuple2!9142) (t!15480 List!9258)) )
))
(declare-datatypes ((ListLongMap!8069 0))(
  ( (ListLongMap!8070 (toList!4050 List!9258)) )
))
(declare-fun contains!2661 (ListLongMap!8069 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2342 (array!31295 array!31293 (_ BitVec 32) (_ BitVec 32) V!19515 V!19515 (_ BitVec 32) Int) ListLongMap!8069)

(assert (=> b!482252 (= res!287544 (contains!2661 (getCurrentListMap!2342 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun mapIsEmpty!22459 () Bool)

(declare-fun mapRes!22459 () Bool)

(assert (=> mapIsEmpty!22459 mapRes!22459))

(declare-fun b!482253 () Bool)

(declare-fun e!283812 () Bool)

(declare-fun tp_is_empty!13833 () Bool)

(assert (=> b!482253 (= e!283812 tp_is_empty!13833)))

(declare-fun b!482254 () Bool)

(declare-fun e!283811 () Bool)

(assert (=> b!482254 (= e!283811 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!482255 () Bool)

(declare-fun res!287548 () Bool)

(assert (=> b!482255 (=> (not res!287548) (not e!283813))))

(declare-datatypes ((List!9259 0))(
  ( (Nil!9256) (Cons!9255 (h!10111 (_ BitVec 64)) (t!15481 List!9259)) )
))
(declare-fun arrayNoDuplicates!0 (array!31295 (_ BitVec 32) List!9259) Bool)

(assert (=> b!482255 (= res!287548 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9256))))

(declare-fun b!482256 () Bool)

(declare-fun arrayContainsKey!0 (array!31295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!482256 (= e!283811 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!482257 () Bool)

(declare-fun e!283808 () Bool)

(assert (=> b!482257 (= e!283808 tp_is_empty!13833)))

(declare-fun b!482258 () Bool)

(declare-fun res!287546 () Bool)

(assert (=> b!482258 (=> (not res!287546) (not e!283813))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!482258 (= res!287546 (validKeyInArray!0 k0!1332))))

(declare-fun b!482251 () Bool)

(declare-fun res!287547 () Bool)

(assert (=> b!482251 (=> (not res!287547) (not e!283813))))

(assert (=> b!482251 (= res!287547 (and (= (size!15404 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15405 _keys!1874) (size!15404 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun res!287545 () Bool)

(assert (=> start!43550 (=> (not res!287545) (not e!283813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43550 (= res!287545 (validMask!0 mask!2352))))

(assert (=> start!43550 e!283813))

(assert (=> start!43550 true))

(assert (=> start!43550 tp_is_empty!13833))

(declare-fun e!283810 () Bool)

(declare-fun array_inv!10830 (array!31293) Bool)

(assert (=> start!43550 (and (array_inv!10830 _values!1516) e!283810)))

(assert (=> start!43550 tp!43245))

(declare-fun array_inv!10831 (array!31295) Bool)

(assert (=> start!43550 (array_inv!10831 _keys!1874)))

(declare-fun b!482259 () Bool)

(declare-fun res!287543 () Bool)

(assert (=> b!482259 (=> (not res!287543) (not e!283813))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31295 (_ BitVec 32)) Bool)

(assert (=> b!482259 (= res!287543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!482260 () Bool)

(assert (=> b!482260 (= e!283813 (not true))))

(declare-fun lt!218686 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!31295 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!482260 (= lt!218686 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (=> b!482260 e!283811))

(declare-fun c!57879 () Bool)

(assert (=> b!482260 (= c!57879 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14112 0))(
  ( (Unit!14113) )
))
(declare-fun lt!218687 () Unit!14112)

(declare-fun lemmaKeyInListMapIsInArray!145 (array!31295 array!31293 (_ BitVec 32) (_ BitVec 32) V!19515 V!19515 (_ BitVec 64) Int) Unit!14112)

(assert (=> b!482260 (= lt!218687 (lemmaKeyInListMapIsInArray!145 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!482261 () Bool)

(assert (=> b!482261 (= e!283810 (and e!283808 mapRes!22459))))

(declare-fun condMapEmpty!22459 () Bool)

(declare-fun mapDefault!22459 () ValueCell!6555)

(assert (=> b!482261 (= condMapEmpty!22459 (= (arr!15046 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6555)) mapDefault!22459)))))

(declare-fun mapNonEmpty!22459 () Bool)

(declare-fun tp!43246 () Bool)

(assert (=> mapNonEmpty!22459 (= mapRes!22459 (and tp!43246 e!283812))))

(declare-fun mapValue!22459 () ValueCell!6555)

(declare-fun mapRest!22459 () (Array (_ BitVec 32) ValueCell!6555))

(declare-fun mapKey!22459 () (_ BitVec 32))

(assert (=> mapNonEmpty!22459 (= (arr!15046 _values!1516) (store mapRest!22459 mapKey!22459 mapValue!22459))))

(assert (= (and start!43550 res!287545) b!482251))

(assert (= (and b!482251 res!287547) b!482259))

(assert (= (and b!482259 res!287543) b!482255))

(assert (= (and b!482255 res!287548) b!482252))

(assert (= (and b!482252 res!287544) b!482258))

(assert (= (and b!482258 res!287546) b!482260))

(assert (= (and b!482260 c!57879) b!482256))

(assert (= (and b!482260 (not c!57879)) b!482254))

(assert (= (and b!482261 condMapEmpty!22459) mapIsEmpty!22459))

(assert (= (and b!482261 (not condMapEmpty!22459)) mapNonEmpty!22459))

(get-info :version)

(assert (= (and mapNonEmpty!22459 ((_ is ValueCellFull!6555) mapValue!22459)) b!482253))

(assert (= (and b!482261 ((_ is ValueCellFull!6555) mapDefault!22459)) b!482257))

(assert (= start!43550 b!482261))

(declare-fun m!463531 () Bool)

(assert (=> b!482252 m!463531))

(assert (=> b!482252 m!463531))

(declare-fun m!463533 () Bool)

(assert (=> b!482252 m!463533))

(declare-fun m!463535 () Bool)

(assert (=> mapNonEmpty!22459 m!463535))

(declare-fun m!463537 () Bool)

(assert (=> start!43550 m!463537))

(declare-fun m!463539 () Bool)

(assert (=> start!43550 m!463539))

(declare-fun m!463541 () Bool)

(assert (=> start!43550 m!463541))

(declare-fun m!463543 () Bool)

(assert (=> b!482258 m!463543))

(declare-fun m!463545 () Bool)

(assert (=> b!482255 m!463545))

(declare-fun m!463547 () Bool)

(assert (=> b!482259 m!463547))

(declare-fun m!463549 () Bool)

(assert (=> b!482256 m!463549))

(declare-fun m!463551 () Bool)

(assert (=> b!482260 m!463551))

(declare-fun m!463553 () Bool)

(assert (=> b!482260 m!463553))

(check-sat (not mapNonEmpty!22459) (not b!482259) (not b!482252) (not b!482255) b_and!21099 tp_is_empty!13833 (not b!482260) (not b!482256) (not b_next!12321) (not start!43550) (not b!482258))
(check-sat b_and!21099 (not b_next!12321))
