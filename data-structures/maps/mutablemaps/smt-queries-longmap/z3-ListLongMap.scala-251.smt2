; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4188 () Bool)

(assert start!4188)

(declare-fun b_free!1095 () Bool)

(declare-fun b_next!1095 () Bool)

(assert (=> start!4188 (= b_free!1095 (not b_next!1095))))

(declare-fun tp!4704 () Bool)

(declare-fun b_and!1907 () Bool)

(assert (=> start!4188 (= tp!4704 b_and!1907)))

(declare-fun b!31826 () Bool)

(declare-fun e!20292 () Bool)

(declare-fun e!20296 () Bool)

(declare-fun mapRes!1702 () Bool)

(assert (=> b!31826 (= e!20292 (and e!20296 mapRes!1702))))

(declare-fun condMapEmpty!1702 () Bool)

(declare-datatypes ((V!1757 0))(
  ( (V!1758 (val!751 Int)) )
))
(declare-datatypes ((ValueCell!525 0))(
  ( (ValueCellFull!525 (v!1840 V!1757)) (EmptyCell!525) )
))
(declare-datatypes ((array!2105 0))(
  ( (array!2106 (arr!1006 (Array (_ BitVec 32) ValueCell!525)) (size!1107 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2105)

(declare-fun mapDefault!1702 () ValueCell!525)

(assert (=> b!31826 (= condMapEmpty!1702 (= (arr!1006 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!525)) mapDefault!1702)))))

(declare-fun b!31827 () Bool)

(declare-fun res!19293 () Bool)

(declare-fun e!20293 () Bool)

(assert (=> b!31827 (=> (not res!19293) (not e!20293))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2107 0))(
  ( (array!2108 (arr!1007 (Array (_ BitVec 32) (_ BitVec 64))) (size!1108 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2107)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1757)

(declare-fun minValue!1443 () V!1757)

(declare-datatypes ((tuple2!1218 0))(
  ( (tuple2!1219 (_1!619 (_ BitVec 64)) (_2!619 V!1757)) )
))
(declare-datatypes ((List!820 0))(
  ( (Nil!817) (Cons!816 (h!1383 tuple2!1218) (t!3515 List!820)) )
))
(declare-datatypes ((ListLongMap!799 0))(
  ( (ListLongMap!800 (toList!415 List!820)) )
))
(declare-fun contains!352 (ListLongMap!799 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!240 (array!2107 array!2105 (_ BitVec 32) (_ BitVec 32) V!1757 V!1757 (_ BitVec 32) Int) ListLongMap!799)

(assert (=> b!31827 (= res!19293 (not (contains!352 (getCurrentListMap!240 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun mapIsEmpty!1702 () Bool)

(assert (=> mapIsEmpty!1702 mapRes!1702))

(declare-fun b!31828 () Bool)

(declare-fun res!19294 () Bool)

(assert (=> b!31828 (=> (not res!19294) (not e!20293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31828 (= res!19294 (validKeyInArray!0 k0!1304))))

(declare-fun res!19291 () Bool)

(assert (=> start!4188 (=> (not res!19291) (not e!20293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4188 (= res!19291 (validMask!0 mask!2294))))

(assert (=> start!4188 e!20293))

(assert (=> start!4188 true))

(assert (=> start!4188 tp!4704))

(declare-fun array_inv!671 (array!2105) Bool)

(assert (=> start!4188 (and (array_inv!671 _values!1501) e!20292)))

(declare-fun array_inv!672 (array!2107) Bool)

(assert (=> start!4188 (array_inv!672 _keys!1833)))

(declare-fun tp_is_empty!1449 () Bool)

(assert (=> start!4188 tp_is_empty!1449))

(declare-fun b!31829 () Bool)

(declare-fun res!19290 () Bool)

(assert (=> b!31829 (=> (not res!19290) (not e!20293))))

(assert (=> b!31829 (= res!19290 (and (= (size!1107 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1108 _keys!1833) (size!1107 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!1702 () Bool)

(declare-fun tp!4705 () Bool)

(declare-fun e!20295 () Bool)

(assert (=> mapNonEmpty!1702 (= mapRes!1702 (and tp!4705 e!20295))))

(declare-fun mapKey!1702 () (_ BitVec 32))

(declare-fun mapValue!1702 () ValueCell!525)

(declare-fun mapRest!1702 () (Array (_ BitVec 32) ValueCell!525))

(assert (=> mapNonEmpty!1702 (= (arr!1006 _values!1501) (store mapRest!1702 mapKey!1702 mapValue!1702))))

(declare-fun b!31830 () Bool)

(declare-fun res!19292 () Bool)

(assert (=> b!31830 (=> (not res!19292) (not e!20293))))

(declare-fun arrayContainsKey!0 (array!2107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31830 (= res!19292 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!31831 () Bool)

(assert (=> b!31831 (= e!20296 tp_is_empty!1449)))

(declare-fun b!31832 () Bool)

(assert (=> b!31832 (= e!20295 tp_is_empty!1449)))

(declare-fun b!31833 () Bool)

(assert (=> b!31833 (= e!20293 false)))

(declare-fun lt!11613 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2107 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!31833 (= lt!11613 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!31834 () Bool)

(declare-fun res!19289 () Bool)

(assert (=> b!31834 (=> (not res!19289) (not e!20293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2107 (_ BitVec 32)) Bool)

(assert (=> b!31834 (= res!19289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31835 () Bool)

(declare-fun res!19288 () Bool)

(assert (=> b!31835 (=> (not res!19288) (not e!20293))))

(declare-datatypes ((List!821 0))(
  ( (Nil!818) (Cons!817 (h!1384 (_ BitVec 64)) (t!3516 List!821)) )
))
(declare-fun arrayNoDuplicates!0 (array!2107 (_ BitVec 32) List!821) Bool)

(assert (=> b!31835 (= res!19288 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!818))))

(assert (= (and start!4188 res!19291) b!31829))

(assert (= (and b!31829 res!19290) b!31834))

(assert (= (and b!31834 res!19289) b!31835))

(assert (= (and b!31835 res!19288) b!31828))

(assert (= (and b!31828 res!19294) b!31827))

(assert (= (and b!31827 res!19293) b!31830))

(assert (= (and b!31830 res!19292) b!31833))

(assert (= (and b!31826 condMapEmpty!1702) mapIsEmpty!1702))

(assert (= (and b!31826 (not condMapEmpty!1702)) mapNonEmpty!1702))

(get-info :version)

(assert (= (and mapNonEmpty!1702 ((_ is ValueCellFull!525) mapValue!1702)) b!31832))

(assert (= (and b!31826 ((_ is ValueCellFull!525) mapDefault!1702)) b!31831))

(assert (= start!4188 b!31826))

(declare-fun m!25513 () Bool)

(assert (=> start!4188 m!25513))

(declare-fun m!25515 () Bool)

(assert (=> start!4188 m!25515))

(declare-fun m!25517 () Bool)

(assert (=> start!4188 m!25517))

(declare-fun m!25519 () Bool)

(assert (=> b!31833 m!25519))

(declare-fun m!25521 () Bool)

(assert (=> b!31827 m!25521))

(assert (=> b!31827 m!25521))

(declare-fun m!25523 () Bool)

(assert (=> b!31827 m!25523))

(declare-fun m!25525 () Bool)

(assert (=> b!31830 m!25525))

(declare-fun m!25527 () Bool)

(assert (=> b!31834 m!25527))

(declare-fun m!25529 () Bool)

(assert (=> b!31828 m!25529))

(declare-fun m!25531 () Bool)

(assert (=> b!31835 m!25531))

(declare-fun m!25533 () Bool)

(assert (=> mapNonEmpty!1702 m!25533))

(check-sat (not b!31833) (not b!31830) b_and!1907 (not start!4188) (not b!31834) (not b!31828) (not b!31835) (not b_next!1095) tp_is_empty!1449 (not b!31827) (not mapNonEmpty!1702))
(check-sat b_and!1907 (not b_next!1095))
