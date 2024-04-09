; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3894 () Bool)

(assert start!3894)

(declare-fun b_free!801 () Bool)

(declare-fun b_next!801 () Bool)

(assert (=> start!3894 (= b_free!801 (not b_next!801))))

(declare-fun tp!3823 () Bool)

(declare-fun b_and!1613 () Bool)

(assert (=> start!3894 (= tp!3823 b_and!1613)))

(declare-fun mapNonEmpty!1261 () Bool)

(declare-fun mapRes!1261 () Bool)

(declare-fun tp!3822 () Bool)

(declare-fun e!17873 () Bool)

(assert (=> mapNonEmpty!1261 (= mapRes!1261 (and tp!3822 e!17873))))

(declare-datatypes ((V!1365 0))(
  ( (V!1366 (val!604 Int)) )
))
(declare-datatypes ((ValueCell!378 0))(
  ( (ValueCellFull!378 (v!1693 V!1365)) (EmptyCell!378) )
))
(declare-datatypes ((array!1543 0))(
  ( (array!1544 (arr!725 (Array (_ BitVec 32) ValueCell!378)) (size!826 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1543)

(declare-fun mapRest!1261 () (Array (_ BitVec 32) ValueCell!378))

(declare-fun mapValue!1261 () ValueCell!378)

(declare-fun mapKey!1261 () (_ BitVec 32))

(assert (=> mapNonEmpty!1261 (= (arr!725 _values!1501) (store mapRest!1261 mapKey!1261 mapValue!1261))))

(declare-fun b!27433 () Bool)

(declare-fun res!16219 () Bool)

(declare-fun e!17875 () Bool)

(assert (=> b!27433 (=> (not res!16219) (not e!17875))))

(declare-datatypes ((array!1545 0))(
  ( (array!1546 (arr!726 (Array (_ BitVec 32) (_ BitVec 64))) (size!827 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1545)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1545 (_ BitVec 32)) Bool)

(assert (=> b!27433 (= res!16219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!16218 () Bool)

(assert (=> start!3894 (=> (not res!16218) (not e!17875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3894 (= res!16218 (validMask!0 mask!2294))))

(assert (=> start!3894 e!17875))

(assert (=> start!3894 true))

(assert (=> start!3894 tp!3823))

(declare-fun e!17872 () Bool)

(declare-fun array_inv!499 (array!1543) Bool)

(assert (=> start!3894 (and (array_inv!499 _values!1501) e!17872)))

(declare-fun array_inv!500 (array!1545) Bool)

(assert (=> start!3894 (array_inv!500 _keys!1833)))

(declare-fun tp_is_empty!1155 () Bool)

(assert (=> start!3894 tp_is_empty!1155))

(declare-fun b!27434 () Bool)

(assert (=> b!27434 (= e!17873 tp_is_empty!1155)))

(declare-fun b!27435 () Bool)

(declare-fun e!17871 () Bool)

(assert (=> b!27435 (= e!17872 (and e!17871 mapRes!1261))))

(declare-fun condMapEmpty!1261 () Bool)

(declare-fun mapDefault!1261 () ValueCell!378)

(assert (=> b!27435 (= condMapEmpty!1261 (= (arr!725 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!378)) mapDefault!1261)))))

(declare-fun b!27436 () Bool)

(assert (=> b!27436 (= e!17871 tp_is_empty!1155)))

(declare-fun b!27437 () Bool)

(declare-fun res!16222 () Bool)

(assert (=> b!27437 (=> (not res!16222) (not e!17875))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27437 (= res!16222 (validKeyInArray!0 k0!1304))))

(declare-fun mapIsEmpty!1261 () Bool)

(assert (=> mapIsEmpty!1261 mapRes!1261))

(declare-fun b!27438 () Bool)

(declare-fun res!16220 () Bool)

(assert (=> b!27438 (=> (not res!16220) (not e!17875))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!27438 (= res!16220 (and (= (size!826 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!827 _keys!1833) (size!826 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!27439 () Bool)

(declare-fun res!16221 () Bool)

(assert (=> b!27439 (=> (not res!16221) (not e!17875))))

(declare-datatypes ((List!614 0))(
  ( (Nil!611) (Cons!610 (h!1177 (_ BitVec 64)) (t!3309 List!614)) )
))
(declare-fun arrayNoDuplicates!0 (array!1545 (_ BitVec 32) List!614) Bool)

(assert (=> b!27439 (= res!16221 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!611))))

(declare-fun b!27440 () Bool)

(assert (=> b!27440 (= e!17875 false)))

(declare-fun defaultEntry!1504 () Int)

(declare-fun lt!10686 () Bool)

(declare-fun zeroValue!1443 () V!1365)

(declare-fun minValue!1443 () V!1365)

(declare-datatypes ((tuple2!996 0))(
  ( (tuple2!997 (_1!508 (_ BitVec 64)) (_2!508 V!1365)) )
))
(declare-datatypes ((List!615 0))(
  ( (Nil!612) (Cons!611 (h!1178 tuple2!996) (t!3310 List!615)) )
))
(declare-datatypes ((ListLongMap!577 0))(
  ( (ListLongMap!578 (toList!304 List!615)) )
))
(declare-fun contains!241 (ListLongMap!577 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!132 (array!1545 array!1543 (_ BitVec 32) (_ BitVec 32) V!1365 V!1365 (_ BitVec 32) Int) ListLongMap!577)

(assert (=> b!27440 (= lt!10686 (contains!241 (getCurrentListMap!132 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304))))

(assert (= (and start!3894 res!16218) b!27438))

(assert (= (and b!27438 res!16220) b!27433))

(assert (= (and b!27433 res!16219) b!27439))

(assert (= (and b!27439 res!16221) b!27437))

(assert (= (and b!27437 res!16222) b!27440))

(assert (= (and b!27435 condMapEmpty!1261) mapIsEmpty!1261))

(assert (= (and b!27435 (not condMapEmpty!1261)) mapNonEmpty!1261))

(get-info :version)

(assert (= (and mapNonEmpty!1261 ((_ is ValueCellFull!378) mapValue!1261)) b!27434))

(assert (= (and b!27435 ((_ is ValueCellFull!378) mapDefault!1261)) b!27436))

(assert (= start!3894 b!27435))

(declare-fun m!21903 () Bool)

(assert (=> b!27437 m!21903))

(declare-fun m!21905 () Bool)

(assert (=> start!3894 m!21905))

(declare-fun m!21907 () Bool)

(assert (=> start!3894 m!21907))

(declare-fun m!21909 () Bool)

(assert (=> start!3894 m!21909))

(declare-fun m!21911 () Bool)

(assert (=> b!27439 m!21911))

(declare-fun m!21913 () Bool)

(assert (=> b!27433 m!21913))

(declare-fun m!21915 () Bool)

(assert (=> mapNonEmpty!1261 m!21915))

(declare-fun m!21917 () Bool)

(assert (=> b!27440 m!21917))

(assert (=> b!27440 m!21917))

(declare-fun m!21919 () Bool)

(assert (=> b!27440 m!21919))

(check-sat b_and!1613 (not mapNonEmpty!1261) (not b!27433) (not b!27437) (not b!27440) tp_is_empty!1155 (not start!3894) (not b_next!801) (not b!27439))
(check-sat b_and!1613 (not b_next!801))
