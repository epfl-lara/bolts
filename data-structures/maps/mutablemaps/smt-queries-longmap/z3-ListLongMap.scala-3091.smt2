; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43496 () Bool)

(assert start!43496)

(declare-fun b_free!12267 () Bool)

(declare-fun b_next!12267 () Bool)

(assert (=> start!43496 (= b_free!12267 (not b_next!12267))))

(declare-fun tp!43083 () Bool)

(declare-fun b_and!21045 () Bool)

(assert (=> start!43496 (= tp!43083 b_and!21045)))

(declare-fun b!481664 () Bool)

(declare-fun e!283399 () Bool)

(declare-fun tp_is_empty!13779 () Bool)

(assert (=> b!481664 (= e!283399 tp_is_empty!13779)))

(declare-fun res!287209 () Bool)

(declare-fun e!283401 () Bool)

(assert (=> start!43496 (=> (not res!287209) (not e!283401))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43496 (= res!287209 (validMask!0 mask!2352))))

(assert (=> start!43496 e!283401))

(assert (=> start!43496 true))

(assert (=> start!43496 tp_is_empty!13779))

(declare-datatypes ((V!19443 0))(
  ( (V!19444 (val!6937 Int)) )
))
(declare-datatypes ((ValueCell!6528 0))(
  ( (ValueCellFull!6528 (v!9226 V!19443)) (EmptyCell!6528) )
))
(declare-datatypes ((array!31193 0))(
  ( (array!31194 (arr!14996 (Array (_ BitVec 32) ValueCell!6528)) (size!15354 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31193)

(declare-fun e!283400 () Bool)

(declare-fun array_inv!10798 (array!31193) Bool)

(assert (=> start!43496 (and (array_inv!10798 _values!1516) e!283400)))

(assert (=> start!43496 tp!43083))

(declare-datatypes ((array!31195 0))(
  ( (array!31196 (arr!14997 (Array (_ BitVec 32) (_ BitVec 64))) (size!15355 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31195)

(declare-fun array_inv!10799 (array!31195) Bool)

(assert (=> start!43496 (array_inv!10799 _keys!1874)))

(declare-fun b!481665 () Bool)

(declare-fun res!287210 () Bool)

(assert (=> b!481665 (=> (not res!287210) (not e!283401))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!481665 (= res!287210 (and (= (size!15354 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15355 _keys!1874) (size!15354 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!22378 () Bool)

(declare-fun mapRes!22378 () Bool)

(declare-fun tp!43084 () Bool)

(declare-fun e!283398 () Bool)

(assert (=> mapNonEmpty!22378 (= mapRes!22378 (and tp!43084 e!283398))))

(declare-fun mapRest!22378 () (Array (_ BitVec 32) ValueCell!6528))

(declare-fun mapValue!22378 () ValueCell!6528)

(declare-fun mapKey!22378 () (_ BitVec 32))

(assert (=> mapNonEmpty!22378 (= (arr!14996 _values!1516) (store mapRest!22378 mapKey!22378 mapValue!22378))))

(declare-fun b!481666 () Bool)

(declare-fun res!287211 () Bool)

(assert (=> b!481666 (=> (not res!287211) (not e!283401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31195 (_ BitVec 32)) Bool)

(assert (=> b!481666 (= res!287211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481667 () Bool)

(declare-fun res!287212 () Bool)

(assert (=> b!481667 (=> (not res!287212) (not e!283401))))

(declare-datatypes ((List!9221 0))(
  ( (Nil!9218) (Cons!9217 (h!10073 (_ BitVec 64)) (t!15443 List!9221)) )
))
(declare-fun arrayNoDuplicates!0 (array!31195 (_ BitVec 32) List!9221) Bool)

(assert (=> b!481667 (= res!287212 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9218))))

(declare-fun mapIsEmpty!22378 () Bool)

(assert (=> mapIsEmpty!22378 mapRes!22378))

(declare-fun b!481668 () Bool)

(assert (=> b!481668 (= e!283398 tp_is_empty!13779)))

(declare-fun b!481669 () Bool)

(assert (=> b!481669 (= e!283401 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19443)

(declare-fun lt!218600 () Bool)

(declare-fun zeroValue!1458 () V!19443)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9108 0))(
  ( (tuple2!9109 (_1!4564 (_ BitVec 64)) (_2!4564 V!19443)) )
))
(declare-datatypes ((List!9222 0))(
  ( (Nil!9219) (Cons!9218 (h!10074 tuple2!9108) (t!15444 List!9222)) )
))
(declare-datatypes ((ListLongMap!8035 0))(
  ( (ListLongMap!8036 (toList!4033 List!9222)) )
))
(declare-fun contains!2644 (ListLongMap!8035 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2325 (array!31195 array!31193 (_ BitVec 32) (_ BitVec 32) V!19443 V!19443 (_ BitVec 32) Int) ListLongMap!8035)

(assert (=> b!481669 (= lt!218600 (contains!2644 (getCurrentListMap!2325 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!481670 () Bool)

(assert (=> b!481670 (= e!283400 (and e!283399 mapRes!22378))))

(declare-fun condMapEmpty!22378 () Bool)

(declare-fun mapDefault!22378 () ValueCell!6528)

(assert (=> b!481670 (= condMapEmpty!22378 (= (arr!14996 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6528)) mapDefault!22378)))))

(assert (= (and start!43496 res!287209) b!481665))

(assert (= (and b!481665 res!287210) b!481666))

(assert (= (and b!481666 res!287211) b!481667))

(assert (= (and b!481667 res!287212) b!481669))

(assert (= (and b!481670 condMapEmpty!22378) mapIsEmpty!22378))

(assert (= (and b!481670 (not condMapEmpty!22378)) mapNonEmpty!22378))

(get-info :version)

(assert (= (and mapNonEmpty!22378 ((_ is ValueCellFull!6528) mapValue!22378)) b!481668))

(assert (= (and b!481670 ((_ is ValueCellFull!6528) mapDefault!22378)) b!481664))

(assert (= start!43496 b!481670))

(declare-fun m!463091 () Bool)

(assert (=> mapNonEmpty!22378 m!463091))

(declare-fun m!463093 () Bool)

(assert (=> b!481667 m!463093))

(declare-fun m!463095 () Bool)

(assert (=> b!481669 m!463095))

(assert (=> b!481669 m!463095))

(declare-fun m!463097 () Bool)

(assert (=> b!481669 m!463097))

(declare-fun m!463099 () Bool)

(assert (=> start!43496 m!463099))

(declare-fun m!463101 () Bool)

(assert (=> start!43496 m!463101))

(declare-fun m!463103 () Bool)

(assert (=> start!43496 m!463103))

(declare-fun m!463105 () Bool)

(assert (=> b!481666 m!463105))

(check-sat (not start!43496) (not mapNonEmpty!22378) (not b!481666) (not b!481667) tp_is_empty!13779 (not b_next!12267) b_and!21045 (not b!481669))
(check-sat b_and!21045 (not b_next!12267))
