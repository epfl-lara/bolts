; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43478 () Bool)

(assert start!43478)

(declare-fun b_free!12249 () Bool)

(declare-fun b_next!12249 () Bool)

(assert (=> start!43478 (= b_free!12249 (not b_next!12249))))

(declare-fun tp!43030 () Bool)

(declare-fun b_and!21027 () Bool)

(assert (=> start!43478 (= tp!43030 b_and!21027)))

(declare-fun b!481387 () Bool)

(declare-fun res!287057 () Bool)

(declare-fun e!283242 () Bool)

(assert (=> b!481387 (=> (not res!287057) (not e!283242))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!481387 (= res!287057 (validKeyInArray!0 k0!1332))))

(declare-fun b!481388 () Bool)

(declare-fun res!287060 () Bool)

(assert (=> b!481388 (=> (not res!287060) (not e!283242))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!31159 0))(
  ( (array!31160 (arr!14979 (Array (_ BitVec 32) (_ BitVec 64))) (size!15337 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31159)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19419 0))(
  ( (V!19420 (val!6928 Int)) )
))
(declare-datatypes ((ValueCell!6519 0))(
  ( (ValueCellFull!6519 (v!9217 V!19419)) (EmptyCell!6519) )
))
(declare-datatypes ((array!31161 0))(
  ( (array!31162 (arr!14980 (Array (_ BitVec 32) ValueCell!6519)) (size!15338 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31161)

(assert (=> b!481388 (= res!287060 (and (= (size!15338 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15337 _keys!1874) (size!15338 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481389 () Bool)

(declare-fun e!283246 () Bool)

(assert (=> b!481389 (= e!283246 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!287061 () Bool)

(assert (=> start!43478 (=> (not res!287061) (not e!283242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43478 (= res!287061 (validMask!0 mask!2352))))

(assert (=> start!43478 e!283242))

(assert (=> start!43478 true))

(declare-fun tp_is_empty!13761 () Bool)

(assert (=> start!43478 tp_is_empty!13761))

(declare-fun e!283245 () Bool)

(declare-fun array_inv!10786 (array!31161) Bool)

(assert (=> start!43478 (and (array_inv!10786 _values!1516) e!283245)))

(assert (=> start!43478 tp!43030))

(declare-fun array_inv!10787 (array!31159) Bool)

(assert (=> start!43478 (array_inv!10787 _keys!1874)))

(declare-fun b!481390 () Bool)

(declare-fun e!283243 () Bool)

(declare-fun mapRes!22351 () Bool)

(assert (=> b!481390 (= e!283245 (and e!283243 mapRes!22351))))

(declare-fun condMapEmpty!22351 () Bool)

(declare-fun mapDefault!22351 () ValueCell!6519)

(assert (=> b!481390 (= condMapEmpty!22351 (= (arr!14980 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6519)) mapDefault!22351)))))

(declare-fun mapNonEmpty!22351 () Bool)

(declare-fun tp!43029 () Bool)

(declare-fun e!283244 () Bool)

(assert (=> mapNonEmpty!22351 (= mapRes!22351 (and tp!43029 e!283244))))

(declare-fun mapKey!22351 () (_ BitVec 32))

(declare-fun mapRest!22351 () (Array (_ BitVec 32) ValueCell!6519))

(declare-fun mapValue!22351 () ValueCell!6519)

(assert (=> mapNonEmpty!22351 (= (arr!14980 _values!1516) (store mapRest!22351 mapKey!22351 mapValue!22351))))

(declare-fun b!481391 () Bool)

(assert (=> b!481391 (= e!283243 tp_is_empty!13761)))

(declare-fun b!481392 () Bool)

(declare-fun res!287058 () Bool)

(assert (=> b!481392 (=> (not res!287058) (not e!283242))))

(declare-datatypes ((List!9206 0))(
  ( (Nil!9203) (Cons!9202 (h!10058 (_ BitVec 64)) (t!15428 List!9206)) )
))
(declare-fun arrayNoDuplicates!0 (array!31159 (_ BitVec 32) List!9206) Bool)

(assert (=> b!481392 (= res!287058 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9203))))

(declare-fun b!481393 () Bool)

(declare-fun res!287059 () Bool)

(assert (=> b!481393 (=> (not res!287059) (not e!283242))))

(declare-fun minValue!1458 () V!19419)

(declare-fun zeroValue!1458 () V!19419)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9092 0))(
  ( (tuple2!9093 (_1!4556 (_ BitVec 64)) (_2!4556 V!19419)) )
))
(declare-datatypes ((List!9207 0))(
  ( (Nil!9204) (Cons!9203 (h!10059 tuple2!9092) (t!15429 List!9207)) )
))
(declare-datatypes ((ListLongMap!8019 0))(
  ( (ListLongMap!8020 (toList!4025 List!9207)) )
))
(declare-fun contains!2636 (ListLongMap!8019 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2317 (array!31159 array!31161 (_ BitVec 32) (_ BitVec 32) V!19419 V!19419 (_ BitVec 32) Int) ListLongMap!8019)

(assert (=> b!481393 (= res!287059 (contains!2636 (getCurrentListMap!2317 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!481394 () Bool)

(assert (=> b!481394 (= e!283244 tp_is_empty!13761)))

(declare-fun b!481395 () Bool)

(declare-fun arrayContainsKey!0 (array!31159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!481395 (= e!283246 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!22351 () Bool)

(assert (=> mapIsEmpty!22351 mapRes!22351))

(declare-fun b!481396 () Bool)

(declare-fun res!287062 () Bool)

(assert (=> b!481396 (=> (not res!287062) (not e!283242))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31159 (_ BitVec 32)) Bool)

(assert (=> b!481396 (= res!287062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481397 () Bool)

(assert (=> b!481397 (= e!283242 (not (= (size!15337 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))))))

(declare-fun lt!218529 () (_ BitVec 32))

(assert (=> b!481397 (arrayForallSeekEntryOrOpenFound!0 lt!218529 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14098 0))(
  ( (Unit!14099) )
))
(declare-fun lt!218531 () Unit!14098)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31159 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14098)

(assert (=> b!481397 (= lt!218531 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218529))))

(declare-fun arrayScanForKey!0 (array!31159 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!481397 (= lt!218529 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (=> b!481397 e!283246))

(declare-fun c!57852 () Bool)

(assert (=> b!481397 (= c!57852 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218530 () Unit!14098)

(declare-fun lemmaKeyInListMapIsInArray!138 (array!31159 array!31161 (_ BitVec 32) (_ BitVec 32) V!19419 V!19419 (_ BitVec 64) Int) Unit!14098)

(assert (=> b!481397 (= lt!218530 (lemmaKeyInListMapIsInArray!138 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(assert (= (and start!43478 res!287061) b!481388))

(assert (= (and b!481388 res!287060) b!481396))

(assert (= (and b!481396 res!287062) b!481392))

(assert (= (and b!481392 res!287058) b!481393))

(assert (= (and b!481393 res!287059) b!481387))

(assert (= (and b!481387 res!287057) b!481397))

(assert (= (and b!481397 c!57852) b!481395))

(assert (= (and b!481397 (not c!57852)) b!481389))

(assert (= (and b!481390 condMapEmpty!22351) mapIsEmpty!22351))

(assert (= (and b!481390 (not condMapEmpty!22351)) mapNonEmpty!22351))

(get-info :version)

(assert (= (and mapNonEmpty!22351 ((_ is ValueCellFull!6519) mapValue!22351)) b!481394))

(assert (= (and b!481390 ((_ is ValueCellFull!6519) mapDefault!22351)) b!481391))

(assert (= start!43478 b!481390))

(declare-fun m!462851 () Bool)

(assert (=> b!481387 m!462851))

(declare-fun m!462853 () Bool)

(assert (=> start!43478 m!462853))

(declare-fun m!462855 () Bool)

(assert (=> start!43478 m!462855))

(declare-fun m!462857 () Bool)

(assert (=> start!43478 m!462857))

(declare-fun m!462859 () Bool)

(assert (=> b!481392 m!462859))

(declare-fun m!462861 () Bool)

(assert (=> mapNonEmpty!22351 m!462861))

(declare-fun m!462863 () Bool)

(assert (=> b!481393 m!462863))

(assert (=> b!481393 m!462863))

(declare-fun m!462865 () Bool)

(assert (=> b!481393 m!462865))

(declare-fun m!462867 () Bool)

(assert (=> b!481395 m!462867))

(declare-fun m!462869 () Bool)

(assert (=> b!481397 m!462869))

(declare-fun m!462871 () Bool)

(assert (=> b!481397 m!462871))

(declare-fun m!462873 () Bool)

(assert (=> b!481397 m!462873))

(declare-fun m!462875 () Bool)

(assert (=> b!481397 m!462875))

(declare-fun m!462877 () Bool)

(assert (=> b!481396 m!462877))

(check-sat tp_is_empty!13761 (not b!481395) (not start!43478) (not mapNonEmpty!22351) b_and!21027 (not b!481396) (not b!481387) (not b!481393) (not b!481392) (not b_next!12249) (not b!481397))
(check-sat b_and!21027 (not b_next!12249))
