; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111760 () Bool)

(assert start!111760)

(declare-fun b_free!30381 () Bool)

(declare-fun b_next!30381 () Bool)

(assert (=> start!111760 (= b_free!30381 (not b_next!30381))))

(declare-fun tp!106620 () Bool)

(declare-fun b_and!48929 () Bool)

(assert (=> start!111760 (= tp!106620 b_and!48929)))

(declare-fun b!1323767 () Bool)

(declare-fun res!878758 () Bool)

(declare-fun e!754669 () Bool)

(assert (=> b!1323767 (=> (not res!878758) (not e!754669))))

(declare-datatypes ((array!89277 0))(
  ( (array!89278 (arr!43108 (Array (_ BitVec 32) (_ BitVec 64))) (size!43659 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89277)

(declare-datatypes ((List!30755 0))(
  ( (Nil!30752) (Cons!30751 (h!31960 (_ BitVec 64)) (t!44688 List!30755)) )
))
(declare-fun arrayNoDuplicates!0 (array!89277 (_ BitVec 32) List!30755) Bool)

(assert (=> b!1323767 (= res!878758 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30752))))

(declare-fun b!1323768 () Bool)

(declare-fun e!754672 () Bool)

(declare-fun tp_is_empty!36201 () Bool)

(assert (=> b!1323768 (= e!754672 tp_is_empty!36201)))

(declare-fun b!1323769 () Bool)

(declare-fun res!878756 () Bool)

(assert (=> b!1323769 (=> (not res!878756) (not e!754669))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53371 0))(
  ( (V!53372 (val!18175 Int)) )
))
(declare-datatypes ((ValueCell!17202 0))(
  ( (ValueCellFull!17202 (v!20803 V!53371)) (EmptyCell!17202) )
))
(declare-datatypes ((array!89279 0))(
  ( (array!89280 (arr!43109 (Array (_ BitVec 32) ValueCell!17202)) (size!43660 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89279)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1323769 (= res!878756 (and (= (size!43660 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43659 _keys!1609) (size!43660 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!55949 () Bool)

(declare-fun mapRes!55949 () Bool)

(declare-fun tp!106619 () Bool)

(assert (=> mapNonEmpty!55949 (= mapRes!55949 (and tp!106619 e!754672))))

(declare-fun mapKey!55949 () (_ BitVec 32))

(declare-fun mapRest!55949 () (Array (_ BitVec 32) ValueCell!17202))

(declare-fun mapValue!55949 () ValueCell!17202)

(assert (=> mapNonEmpty!55949 (= (arr!43109 _values!1337) (store mapRest!55949 mapKey!55949 mapValue!55949))))

(declare-fun b!1323770 () Bool)

(declare-fun res!878754 () Bool)

(assert (=> b!1323770 (=> (not res!878754) (not e!754669))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1323770 (= res!878754 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43659 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1323771 () Bool)

(assert (=> b!1323771 (= e!754669 false)))

(declare-fun zeroValue!1279 () V!53371)

(declare-fun minValue!1279 () V!53371)

(declare-fun lt!589336 () Bool)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23582 0))(
  ( (tuple2!23583 (_1!11801 (_ BitVec 64)) (_2!11801 V!53371)) )
))
(declare-datatypes ((List!30756 0))(
  ( (Nil!30753) (Cons!30752 (h!31961 tuple2!23582) (t!44689 List!30756)) )
))
(declare-datatypes ((ListLongMap!21251 0))(
  ( (ListLongMap!21252 (toList!10641 List!30756)) )
))
(declare-fun contains!8732 (ListLongMap!21251 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5578 (array!89277 array!89279 (_ BitVec 32) (_ BitVec 32) V!53371 V!53371 (_ BitVec 32) Int) ListLongMap!21251)

(assert (=> b!1323771 (= lt!589336 (contains!8732 (getCurrentListMap!5578 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun res!878757 () Bool)

(assert (=> start!111760 (=> (not res!878757) (not e!754669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111760 (= res!878757 (validMask!0 mask!2019))))

(assert (=> start!111760 e!754669))

(declare-fun array_inv!32495 (array!89277) Bool)

(assert (=> start!111760 (array_inv!32495 _keys!1609)))

(assert (=> start!111760 true))

(assert (=> start!111760 tp_is_empty!36201))

(declare-fun e!754670 () Bool)

(declare-fun array_inv!32496 (array!89279) Bool)

(assert (=> start!111760 (and (array_inv!32496 _values!1337) e!754670)))

(assert (=> start!111760 tp!106620))

(declare-fun mapIsEmpty!55949 () Bool)

(assert (=> mapIsEmpty!55949 mapRes!55949))

(declare-fun b!1323772 () Bool)

(declare-fun e!754671 () Bool)

(assert (=> b!1323772 (= e!754671 tp_is_empty!36201)))

(declare-fun b!1323773 () Bool)

(declare-fun res!878755 () Bool)

(assert (=> b!1323773 (=> (not res!878755) (not e!754669))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89277 (_ BitVec 32)) Bool)

(assert (=> b!1323773 (= res!878755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1323774 () Bool)

(assert (=> b!1323774 (= e!754670 (and e!754671 mapRes!55949))))

(declare-fun condMapEmpty!55949 () Bool)

(declare-fun mapDefault!55949 () ValueCell!17202)

(assert (=> b!1323774 (= condMapEmpty!55949 (= (arr!43109 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17202)) mapDefault!55949)))))

(assert (= (and start!111760 res!878757) b!1323769))

(assert (= (and b!1323769 res!878756) b!1323773))

(assert (= (and b!1323773 res!878755) b!1323767))

(assert (= (and b!1323767 res!878758) b!1323770))

(assert (= (and b!1323770 res!878754) b!1323771))

(assert (= (and b!1323774 condMapEmpty!55949) mapIsEmpty!55949))

(assert (= (and b!1323774 (not condMapEmpty!55949)) mapNonEmpty!55949))

(get-info :version)

(assert (= (and mapNonEmpty!55949 ((_ is ValueCellFull!17202) mapValue!55949)) b!1323768))

(assert (= (and b!1323774 ((_ is ValueCellFull!17202) mapDefault!55949)) b!1323772))

(assert (= start!111760 b!1323774))

(declare-fun m!1212859 () Bool)

(assert (=> mapNonEmpty!55949 m!1212859))

(declare-fun m!1212861 () Bool)

(assert (=> b!1323767 m!1212861))

(declare-fun m!1212863 () Bool)

(assert (=> start!111760 m!1212863))

(declare-fun m!1212865 () Bool)

(assert (=> start!111760 m!1212865))

(declare-fun m!1212867 () Bool)

(assert (=> start!111760 m!1212867))

(declare-fun m!1212869 () Bool)

(assert (=> b!1323771 m!1212869))

(assert (=> b!1323771 m!1212869))

(declare-fun m!1212871 () Bool)

(assert (=> b!1323771 m!1212871))

(declare-fun m!1212873 () Bool)

(assert (=> b!1323773 m!1212873))

(check-sat (not b_next!30381) b_and!48929 (not b!1323771) (not b!1323773) (not start!111760) (not mapNonEmpty!55949) (not b!1323767) tp_is_empty!36201)
(check-sat b_and!48929 (not b_next!30381))
