; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111430 () Bool)

(assert start!111430)

(declare-fun b_free!30051 () Bool)

(declare-fun b_next!30051 () Bool)

(assert (=> start!111430 (= b_free!30051 (not b_next!30051))))

(declare-fun tp!105629 () Bool)

(declare-fun b_and!48281 () Bool)

(assert (=> start!111430 (= tp!105629 b_and!48281)))

(declare-fun b!1318031 () Bool)

(declare-fun res!874823 () Bool)

(declare-fun e!752194 () Bool)

(assert (=> b!1318031 (=> (not res!874823) (not e!752194))))

(declare-datatypes ((array!88645 0))(
  ( (array!88646 (arr!42792 (Array (_ BitVec 32) (_ BitVec 64))) (size!43343 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88645)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1318031 (= res!874823 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43343 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318033 () Bool)

(declare-fun e!752197 () Bool)

(declare-fun e!752193 () Bool)

(declare-fun mapRes!55454 () Bool)

(assert (=> b!1318033 (= e!752197 (and e!752193 mapRes!55454))))

(declare-fun condMapEmpty!55454 () Bool)

(declare-datatypes ((V!52931 0))(
  ( (V!52932 (val!18010 Int)) )
))
(declare-datatypes ((ValueCell!17037 0))(
  ( (ValueCellFull!17037 (v!20638 V!52931)) (EmptyCell!17037) )
))
(declare-datatypes ((array!88647 0))(
  ( (array!88648 (arr!42793 (Array (_ BitVec 32) ValueCell!17037)) (size!43344 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88647)

(declare-fun mapDefault!55454 () ValueCell!17037)

(assert (=> b!1318033 (= condMapEmpty!55454 (= (arr!42793 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17037)) mapDefault!55454)))))

(declare-fun b!1318034 () Bool)

(assert (=> b!1318034 (= e!752194 false)))

(declare-fun zeroValue!1279 () V!52931)

(declare-fun minValue!1279 () V!52931)

(declare-fun lt!586384 () Bool)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23328 0))(
  ( (tuple2!23329 (_1!11674 (_ BitVec 64)) (_2!11674 V!52931)) )
))
(declare-datatypes ((List!30518 0))(
  ( (Nil!30515) (Cons!30514 (h!31723 tuple2!23328) (t!44133 List!30518)) )
))
(declare-datatypes ((ListLongMap!20997 0))(
  ( (ListLongMap!20998 (toList!10514 List!30518)) )
))
(declare-fun contains!8605 (ListLongMap!20997 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5470 (array!88645 array!88647 (_ BitVec 32) (_ BitVec 32) V!52931 V!52931 (_ BitVec 32) Int) ListLongMap!20997)

(assert (=> b!1318034 (= lt!586384 (contains!8605 (getCurrentListMap!5470 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1318035 () Bool)

(declare-fun e!752196 () Bool)

(declare-fun tp_is_empty!35871 () Bool)

(assert (=> b!1318035 (= e!752196 tp_is_empty!35871)))

(declare-fun b!1318036 () Bool)

(assert (=> b!1318036 (= e!752193 tp_is_empty!35871)))

(declare-fun b!1318037 () Bool)

(declare-fun res!874824 () Bool)

(assert (=> b!1318037 (=> (not res!874824) (not e!752194))))

(declare-datatypes ((List!30519 0))(
  ( (Nil!30516) (Cons!30515 (h!31724 (_ BitVec 64)) (t!44134 List!30519)) )
))
(declare-fun arrayNoDuplicates!0 (array!88645 (_ BitVec 32) List!30519) Bool)

(assert (=> b!1318037 (= res!874824 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30516))))

(declare-fun mapNonEmpty!55454 () Bool)

(declare-fun tp!105630 () Bool)

(assert (=> mapNonEmpty!55454 (= mapRes!55454 (and tp!105630 e!752196))))

(declare-fun mapRest!55454 () (Array (_ BitVec 32) ValueCell!17037))

(declare-fun mapValue!55454 () ValueCell!17037)

(declare-fun mapKey!55454 () (_ BitVec 32))

(assert (=> mapNonEmpty!55454 (= (arr!42793 _values!1337) (store mapRest!55454 mapKey!55454 mapValue!55454))))

(declare-fun res!874822 () Bool)

(assert (=> start!111430 (=> (not res!874822) (not e!752194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111430 (= res!874822 (validMask!0 mask!2019))))

(assert (=> start!111430 e!752194))

(declare-fun array_inv!32269 (array!88645) Bool)

(assert (=> start!111430 (array_inv!32269 _keys!1609)))

(assert (=> start!111430 true))

(assert (=> start!111430 tp_is_empty!35871))

(declare-fun array_inv!32270 (array!88647) Bool)

(assert (=> start!111430 (and (array_inv!32270 _values!1337) e!752197)))

(assert (=> start!111430 tp!105629))

(declare-fun b!1318032 () Bool)

(declare-fun res!874821 () Bool)

(assert (=> b!1318032 (=> (not res!874821) (not e!752194))))

(assert (=> b!1318032 (= res!874821 (and (= (size!43344 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43343 _keys!1609) (size!43344 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55454 () Bool)

(assert (=> mapIsEmpty!55454 mapRes!55454))

(declare-fun b!1318038 () Bool)

(declare-fun res!874825 () Bool)

(assert (=> b!1318038 (=> (not res!874825) (not e!752194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88645 (_ BitVec 32)) Bool)

(assert (=> b!1318038 (= res!874825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(assert (= (and start!111430 res!874822) b!1318032))

(assert (= (and b!1318032 res!874821) b!1318038))

(assert (= (and b!1318038 res!874825) b!1318037))

(assert (= (and b!1318037 res!874824) b!1318031))

(assert (= (and b!1318031 res!874823) b!1318034))

(assert (= (and b!1318033 condMapEmpty!55454) mapIsEmpty!55454))

(assert (= (and b!1318033 (not condMapEmpty!55454)) mapNonEmpty!55454))

(get-info :version)

(assert (= (and mapNonEmpty!55454 ((_ is ValueCellFull!17037) mapValue!55454)) b!1318035))

(assert (= (and b!1318033 ((_ is ValueCellFull!17037) mapDefault!55454)) b!1318036))

(assert (= start!111430 b!1318033))

(declare-fun m!1205695 () Bool)

(assert (=> mapNonEmpty!55454 m!1205695))

(declare-fun m!1205697 () Bool)

(assert (=> b!1318034 m!1205697))

(assert (=> b!1318034 m!1205697))

(declare-fun m!1205699 () Bool)

(assert (=> b!1318034 m!1205699))

(declare-fun m!1205701 () Bool)

(assert (=> b!1318037 m!1205701))

(declare-fun m!1205703 () Bool)

(assert (=> start!111430 m!1205703))

(declare-fun m!1205705 () Bool)

(assert (=> start!111430 m!1205705))

(declare-fun m!1205707 () Bool)

(assert (=> start!111430 m!1205707))

(declare-fun m!1205709 () Bool)

(assert (=> b!1318038 m!1205709))

(check-sat (not start!111430) (not b_next!30051) b_and!48281 (not mapNonEmpty!55454) (not b!1318038) (not b!1318034) tp_is_empty!35871 (not b!1318037))
(check-sat b_and!48281 (not b_next!30051))
