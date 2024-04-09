; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3936 () Bool)

(assert start!3936)

(declare-fun b_free!843 () Bool)

(declare-fun b_next!843 () Bool)

(assert (=> start!3936 (= b_free!843 (not b_next!843))))

(declare-fun tp!3948 () Bool)

(declare-fun b_and!1655 () Bool)

(assert (=> start!3936 (= tp!3948 b_and!1655)))

(declare-fun b!28055 () Bool)

(declare-fun res!16652 () Bool)

(declare-fun e!18187 () Bool)

(assert (=> b!28055 (=> (not res!16652) (not e!18187))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1421 0))(
  ( (V!1422 (val!625 Int)) )
))
(declare-datatypes ((ValueCell!399 0))(
  ( (ValueCellFull!399 (v!1714 V!1421)) (EmptyCell!399) )
))
(declare-datatypes ((array!1619 0))(
  ( (array!1620 (arr!763 (Array (_ BitVec 32) ValueCell!399)) (size!864 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1619)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1621 0))(
  ( (array!1622 (arr!764 (Array (_ BitVec 32) (_ BitVec 64))) (size!865 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1621)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1421)

(declare-fun minValue!1443 () V!1421)

(declare-datatypes ((tuple2!1024 0))(
  ( (tuple2!1025 (_1!522 (_ BitVec 64)) (_2!522 V!1421)) )
))
(declare-datatypes ((List!640 0))(
  ( (Nil!637) (Cons!636 (h!1203 tuple2!1024) (t!3335 List!640)) )
))
(declare-datatypes ((ListLongMap!605 0))(
  ( (ListLongMap!606 (toList!318 List!640)) )
))
(declare-fun contains!255 (ListLongMap!605 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!146 (array!1621 array!1619 (_ BitVec 32) (_ BitVec 32) V!1421 V!1421 (_ BitVec 32) Int) ListLongMap!605)

(assert (=> b!28055 (= res!16652 (not (contains!255 (getCurrentListMap!146 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!28056 () Bool)

(declare-fun res!16657 () Bool)

(assert (=> b!28056 (=> (not res!16657) (not e!18187))))

(assert (=> b!28056 (= res!16657 (and (= (size!864 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!865 _keys!1833) (size!864 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!28057 () Bool)

(declare-fun e!18189 () Bool)

(declare-fun tp_is_empty!1197 () Bool)

(assert (=> b!28057 (= e!18189 tp_is_empty!1197)))

(declare-fun res!16656 () Bool)

(assert (=> start!3936 (=> (not res!16656) (not e!18187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3936 (= res!16656 (validMask!0 mask!2294))))

(assert (=> start!3936 e!18187))

(assert (=> start!3936 true))

(assert (=> start!3936 tp!3948))

(declare-fun e!18186 () Bool)

(declare-fun array_inv!519 (array!1619) Bool)

(assert (=> start!3936 (and (array_inv!519 _values!1501) e!18186)))

(declare-fun array_inv!520 (array!1621) Bool)

(assert (=> start!3936 (array_inv!520 _keys!1833)))

(assert (=> start!3936 tp_is_empty!1197))

(declare-fun b!28058 () Bool)

(assert (=> b!28058 (= e!18187 false)))

(declare-fun lt!10749 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1621 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28058 (= lt!10749 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!28059 () Bool)

(declare-fun e!18190 () Bool)

(declare-fun mapRes!1324 () Bool)

(assert (=> b!28059 (= e!18186 (and e!18190 mapRes!1324))))

(declare-fun condMapEmpty!1324 () Bool)

(declare-fun mapDefault!1324 () ValueCell!399)

(assert (=> b!28059 (= condMapEmpty!1324 (= (arr!763 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!399)) mapDefault!1324)))))

(declare-fun b!28060 () Bool)

(declare-fun res!16653 () Bool)

(assert (=> b!28060 (=> (not res!16653) (not e!18187))))

(declare-fun arrayContainsKey!0 (array!1621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28060 (= res!16653 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!1324 () Bool)

(assert (=> mapIsEmpty!1324 mapRes!1324))

(declare-fun mapNonEmpty!1324 () Bool)

(declare-fun tp!3949 () Bool)

(assert (=> mapNonEmpty!1324 (= mapRes!1324 (and tp!3949 e!18189))))

(declare-fun mapKey!1324 () (_ BitVec 32))

(declare-fun mapRest!1324 () (Array (_ BitVec 32) ValueCell!399))

(declare-fun mapValue!1324 () ValueCell!399)

(assert (=> mapNonEmpty!1324 (= (arr!763 _values!1501) (store mapRest!1324 mapKey!1324 mapValue!1324))))

(declare-fun b!28061 () Bool)

(declare-fun res!16654 () Bool)

(assert (=> b!28061 (=> (not res!16654) (not e!18187))))

(declare-datatypes ((List!641 0))(
  ( (Nil!638) (Cons!637 (h!1204 (_ BitVec 64)) (t!3336 List!641)) )
))
(declare-fun arrayNoDuplicates!0 (array!1621 (_ BitVec 32) List!641) Bool)

(assert (=> b!28061 (= res!16654 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!638))))

(declare-fun b!28062 () Bool)

(assert (=> b!28062 (= e!18190 tp_is_empty!1197)))

(declare-fun b!28063 () Bool)

(declare-fun res!16655 () Bool)

(assert (=> b!28063 (=> (not res!16655) (not e!18187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1621 (_ BitVec 32)) Bool)

(assert (=> b!28063 (= res!16655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28064 () Bool)

(declare-fun res!16651 () Bool)

(assert (=> b!28064 (=> (not res!16651) (not e!18187))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28064 (= res!16651 (validKeyInArray!0 k0!1304))))

(assert (= (and start!3936 res!16656) b!28056))

(assert (= (and b!28056 res!16657) b!28063))

(assert (= (and b!28063 res!16655) b!28061))

(assert (= (and b!28061 res!16654) b!28064))

(assert (= (and b!28064 res!16651) b!28055))

(assert (= (and b!28055 res!16652) b!28060))

(assert (= (and b!28060 res!16653) b!28058))

(assert (= (and b!28059 condMapEmpty!1324) mapIsEmpty!1324))

(assert (= (and b!28059 (not condMapEmpty!1324)) mapNonEmpty!1324))

(get-info :version)

(assert (= (and mapNonEmpty!1324 ((_ is ValueCellFull!399) mapValue!1324)) b!28057))

(assert (= (and b!28059 ((_ is ValueCellFull!399) mapDefault!1324)) b!28062))

(assert (= start!3936 b!28059))

(declare-fun m!22357 () Bool)

(assert (=> b!28058 m!22357))

(declare-fun m!22359 () Bool)

(assert (=> b!28055 m!22359))

(assert (=> b!28055 m!22359))

(declare-fun m!22361 () Bool)

(assert (=> b!28055 m!22361))

(declare-fun m!22363 () Bool)

(assert (=> b!28060 m!22363))

(declare-fun m!22365 () Bool)

(assert (=> b!28061 m!22365))

(declare-fun m!22367 () Bool)

(assert (=> mapNonEmpty!1324 m!22367))

(declare-fun m!22369 () Bool)

(assert (=> b!28064 m!22369))

(declare-fun m!22371 () Bool)

(assert (=> b!28063 m!22371))

(declare-fun m!22373 () Bool)

(assert (=> start!3936 m!22373))

(declare-fun m!22375 () Bool)

(assert (=> start!3936 m!22375))

(declare-fun m!22377 () Bool)

(assert (=> start!3936 m!22377))

(check-sat (not mapNonEmpty!1324) (not b!28063) tp_is_empty!1197 (not b!28058) (not b!28055) (not b!28060) (not b!28061) (not b_next!843) b_and!1655 (not start!3936) (not b!28064))
(check-sat b_and!1655 (not b_next!843))
