; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3918 () Bool)

(assert start!3918)

(declare-fun b_free!825 () Bool)

(declare-fun b_next!825 () Bool)

(assert (=> start!3918 (= b_free!825 (not b_next!825))))

(declare-fun tp!3895 () Bool)

(declare-fun b_and!1637 () Bool)

(assert (=> start!3918 (= tp!3895 b_and!1637)))

(declare-fun mapIsEmpty!1297 () Bool)

(declare-fun mapRes!1297 () Bool)

(assert (=> mapIsEmpty!1297 mapRes!1297))

(declare-fun b!27785 () Bool)

(declare-fun res!16465 () Bool)

(declare-fun e!18054 () Bool)

(assert (=> b!27785 (=> (not res!16465) (not e!18054))))

(declare-datatypes ((V!1397 0))(
  ( (V!1398 (val!616 Int)) )
))
(declare-datatypes ((ValueCell!390 0))(
  ( (ValueCellFull!390 (v!1705 V!1397)) (EmptyCell!390) )
))
(declare-datatypes ((array!1587 0))(
  ( (array!1588 (arr!747 (Array (_ BitVec 32) ValueCell!390)) (size!848 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1587)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1589 0))(
  ( (array!1590 (arr!748 (Array (_ BitVec 32) (_ BitVec 64))) (size!849 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1589)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!27785 (= res!16465 (and (= (size!848 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!849 _keys!1833) (size!848 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!27786 () Bool)

(declare-fun e!18052 () Bool)

(declare-fun e!18055 () Bool)

(assert (=> b!27786 (= e!18052 (and e!18055 mapRes!1297))))

(declare-fun condMapEmpty!1297 () Bool)

(declare-fun mapDefault!1297 () ValueCell!390)

(assert (=> b!27786 (= condMapEmpty!1297 (= (arr!747 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!390)) mapDefault!1297)))))

(declare-fun b!27787 () Bool)

(declare-fun res!16464 () Bool)

(assert (=> b!27787 (=> (not res!16464) (not e!18054))))

(declare-datatypes ((List!629 0))(
  ( (Nil!626) (Cons!625 (h!1192 (_ BitVec 64)) (t!3324 List!629)) )
))
(declare-fun arrayNoDuplicates!0 (array!1589 (_ BitVec 32) List!629) Bool)

(assert (=> b!27787 (= res!16464 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!626))))

(declare-fun b!27788 () Bool)

(declare-fun e!18053 () Bool)

(declare-fun tp_is_empty!1179 () Bool)

(assert (=> b!27788 (= e!18053 tp_is_empty!1179)))

(declare-fun b!27789 () Bool)

(declare-fun res!16466 () Bool)

(assert (=> b!27789 (=> (not res!16466) (not e!18054))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27789 (= res!16466 (validKeyInArray!0 k0!1304))))

(declare-fun b!27790 () Bool)

(assert (=> b!27790 (= e!18054 false)))

(declare-fun lt!10722 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1589 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!27790 (= lt!10722 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!27791 () Bool)

(declare-fun res!16462 () Bool)

(assert (=> b!27791 (=> (not res!16462) (not e!18054))))

(declare-fun arrayContainsKey!0 (array!1589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27791 (= res!16462 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!27792 () Bool)

(declare-fun res!16468 () Bool)

(assert (=> b!27792 (=> (not res!16468) (not e!18054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1589 (_ BitVec 32)) Bool)

(assert (=> b!27792 (= res!16468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!27793 () Bool)

(declare-fun res!16467 () Bool)

(assert (=> b!27793 (=> (not res!16467) (not e!18054))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1397)

(declare-fun minValue!1443 () V!1397)

(declare-datatypes ((tuple2!1014 0))(
  ( (tuple2!1015 (_1!517 (_ BitVec 64)) (_2!517 V!1397)) )
))
(declare-datatypes ((List!630 0))(
  ( (Nil!627) (Cons!626 (h!1193 tuple2!1014) (t!3325 List!630)) )
))
(declare-datatypes ((ListLongMap!595 0))(
  ( (ListLongMap!596 (toList!313 List!630)) )
))
(declare-fun contains!250 (ListLongMap!595 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!141 (array!1589 array!1587 (_ BitVec 32) (_ BitVec 32) V!1397 V!1397 (_ BitVec 32) Int) ListLongMap!595)

(assert (=> b!27793 (= res!16467 (not (contains!250 (getCurrentListMap!141 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!27794 () Bool)

(assert (=> b!27794 (= e!18055 tp_is_empty!1179)))

(declare-fun res!16463 () Bool)

(assert (=> start!3918 (=> (not res!16463) (not e!18054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3918 (= res!16463 (validMask!0 mask!2294))))

(assert (=> start!3918 e!18054))

(assert (=> start!3918 true))

(assert (=> start!3918 tp!3895))

(declare-fun array_inv!513 (array!1587) Bool)

(assert (=> start!3918 (and (array_inv!513 _values!1501) e!18052)))

(declare-fun array_inv!514 (array!1589) Bool)

(assert (=> start!3918 (array_inv!514 _keys!1833)))

(assert (=> start!3918 tp_is_empty!1179))

(declare-fun mapNonEmpty!1297 () Bool)

(declare-fun tp!3894 () Bool)

(assert (=> mapNonEmpty!1297 (= mapRes!1297 (and tp!3894 e!18053))))

(declare-fun mapValue!1297 () ValueCell!390)

(declare-fun mapKey!1297 () (_ BitVec 32))

(declare-fun mapRest!1297 () (Array (_ BitVec 32) ValueCell!390))

(assert (=> mapNonEmpty!1297 (= (arr!747 _values!1501) (store mapRest!1297 mapKey!1297 mapValue!1297))))

(assert (= (and start!3918 res!16463) b!27785))

(assert (= (and b!27785 res!16465) b!27792))

(assert (= (and b!27792 res!16468) b!27787))

(assert (= (and b!27787 res!16464) b!27789))

(assert (= (and b!27789 res!16466) b!27793))

(assert (= (and b!27793 res!16467) b!27791))

(assert (= (and b!27791 res!16462) b!27790))

(assert (= (and b!27786 condMapEmpty!1297) mapIsEmpty!1297))

(assert (= (and b!27786 (not condMapEmpty!1297)) mapNonEmpty!1297))

(get-info :version)

(assert (= (and mapNonEmpty!1297 ((_ is ValueCellFull!390) mapValue!1297)) b!27788))

(assert (= (and b!27786 ((_ is ValueCellFull!390) mapDefault!1297)) b!27794))

(assert (= start!3918 b!27786))

(declare-fun m!22159 () Bool)

(assert (=> b!27791 m!22159))

(declare-fun m!22161 () Bool)

(assert (=> b!27789 m!22161))

(declare-fun m!22163 () Bool)

(assert (=> b!27792 m!22163))

(declare-fun m!22165 () Bool)

(assert (=> b!27790 m!22165))

(declare-fun m!22167 () Bool)

(assert (=> b!27787 m!22167))

(declare-fun m!22169 () Bool)

(assert (=> b!27793 m!22169))

(assert (=> b!27793 m!22169))

(declare-fun m!22171 () Bool)

(assert (=> b!27793 m!22171))

(declare-fun m!22173 () Bool)

(assert (=> start!3918 m!22173))

(declare-fun m!22175 () Bool)

(assert (=> start!3918 m!22175))

(declare-fun m!22177 () Bool)

(assert (=> start!3918 m!22177))

(declare-fun m!22179 () Bool)

(assert (=> mapNonEmpty!1297 m!22179))

(check-sat (not mapNonEmpty!1297) (not b!27791) (not b!27790) (not start!3918) b_and!1637 (not b_next!825) tp_is_empty!1179 (not b!27793) (not b!27792) (not b!27789) (not b!27787))
(check-sat b_and!1637 (not b_next!825))
