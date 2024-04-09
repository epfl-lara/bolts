; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111724 () Bool)

(assert start!111724)

(declare-fun b_free!30345 () Bool)

(declare-fun b_next!30345 () Bool)

(assert (=> start!111724 (= b_free!30345 (not b_next!30345))))

(declare-fun tp!106512 () Bool)

(declare-fun b_and!48859 () Bool)

(assert (=> start!111724 (= tp!106512 b_and!48859)))

(declare-fun b!1323154 () Bool)

(declare-fun res!878343 () Bool)

(declare-fun e!754402 () Bool)

(assert (=> b!1323154 (=> (not res!878343) (not e!754402))))

(declare-datatypes ((array!89205 0))(
  ( (array!89206 (arr!43072 (Array (_ BitVec 32) (_ BitVec 64))) (size!43623 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89205)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1323154 (= res!878343 (validKeyInArray!0 (select (arr!43072 _keys!1609) from!2000)))))

(declare-fun res!878341 () Bool)

(assert (=> start!111724 (=> (not res!878341) (not e!754402))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111724 (= res!878341 (validMask!0 mask!2019))))

(assert (=> start!111724 e!754402))

(declare-fun array_inv!32471 (array!89205) Bool)

(assert (=> start!111724 (array_inv!32471 _keys!1609)))

(assert (=> start!111724 true))

(declare-fun tp_is_empty!36165 () Bool)

(assert (=> start!111724 tp_is_empty!36165))

(declare-datatypes ((V!53323 0))(
  ( (V!53324 (val!18157 Int)) )
))
(declare-datatypes ((ValueCell!17184 0))(
  ( (ValueCellFull!17184 (v!20785 V!53323)) (EmptyCell!17184) )
))
(declare-datatypes ((array!89207 0))(
  ( (array!89208 (arr!43073 (Array (_ BitVec 32) ValueCell!17184)) (size!43624 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89207)

(declare-fun e!754399 () Bool)

(declare-fun array_inv!32472 (array!89207) Bool)

(assert (=> start!111724 (and (array_inv!32472 _values!1337) e!754399)))

(assert (=> start!111724 tp!106512))

(declare-fun b!1323155 () Bool)

(declare-fun res!878342 () Bool)

(assert (=> b!1323155 (=> (not res!878342) (not e!754402))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1323155 (= res!878342 (and (= (size!43624 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43623 _keys!1609) (size!43624 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55895 () Bool)

(declare-fun mapRes!55895 () Bool)

(assert (=> mapIsEmpty!55895 mapRes!55895))

(declare-fun b!1323156 () Bool)

(assert (=> b!1323156 (= e!754402 (not true))))

(declare-datatypes ((tuple2!23556 0))(
  ( (tuple2!23557 (_1!11788 (_ BitVec 64)) (_2!11788 V!53323)) )
))
(declare-datatypes ((List!30729 0))(
  ( (Nil!30726) (Cons!30725 (h!31934 tuple2!23556) (t!44630 List!30729)) )
))
(declare-datatypes ((ListLongMap!21225 0))(
  ( (ListLongMap!21226 (toList!10628 List!30729)) )
))
(declare-fun lt!588797 () ListLongMap!21225)

(declare-fun minValue!1279 () V!53323)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8719 (ListLongMap!21225 (_ BitVec 64)) Bool)

(declare-fun +!4575 (ListLongMap!21225 tuple2!23556) ListLongMap!21225)

(assert (=> b!1323156 (contains!8719 (+!4575 lt!588797 (tuple2!23557 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164)))

(declare-datatypes ((Unit!43550 0))(
  ( (Unit!43551) )
))
(declare-fun lt!588794 () Unit!43550)

(declare-fun addStillContains!1156 (ListLongMap!21225 (_ BitVec 64) V!53323 (_ BitVec 64)) Unit!43550)

(assert (=> b!1323156 (= lt!588794 (addStillContains!1156 lt!588797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k0!1164))))

(assert (=> b!1323156 (contains!8719 lt!588797 k0!1164)))

(declare-fun lt!588802 () ListLongMap!21225)

(declare-fun lt!588793 () tuple2!23556)

(assert (=> b!1323156 (= lt!588797 (+!4575 lt!588802 lt!588793))))

(declare-fun zeroValue!1279 () V!53323)

(declare-fun lt!588801 () Unit!43550)

(assert (=> b!1323156 (= lt!588801 (addStillContains!1156 lt!588802 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1323156 (contains!8719 lt!588802 k0!1164)))

(declare-fun lt!588798 () Unit!43550)

(declare-fun lt!588799 () V!53323)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!190 ((_ BitVec 64) (_ BitVec 64) V!53323 ListLongMap!21225) Unit!43550)

(assert (=> b!1323156 (= lt!588798 (lemmaInListMapAfterAddingDiffThenInBefore!190 k0!1164 (select (arr!43072 _keys!1609) from!2000) lt!588799 lt!588802))))

(declare-fun lt!588796 () ListLongMap!21225)

(assert (=> b!1323156 (contains!8719 lt!588796 k0!1164)))

(declare-fun lt!588800 () Unit!43550)

(assert (=> b!1323156 (= lt!588800 (lemmaInListMapAfterAddingDiffThenInBefore!190 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588796))))

(declare-fun lt!588792 () ListLongMap!21225)

(assert (=> b!1323156 (contains!8719 lt!588792 k0!1164)))

(declare-fun lt!588795 () Unit!43550)

(assert (=> b!1323156 (= lt!588795 (lemmaInListMapAfterAddingDiffThenInBefore!190 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588792))))

(assert (=> b!1323156 (= lt!588792 (+!4575 lt!588796 lt!588793))))

(assert (=> b!1323156 (= lt!588793 (tuple2!23557 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1323156 (= lt!588796 (+!4575 lt!588802 (tuple2!23557 (select (arr!43072 _keys!1609) from!2000) lt!588799)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21737 (ValueCell!17184 V!53323) V!53323)

(declare-fun dynLambda!3612 (Int (_ BitVec 64)) V!53323)

(assert (=> b!1323156 (= lt!588799 (get!21737 (select (arr!43073 _values!1337) from!2000) (dynLambda!3612 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6290 (array!89205 array!89207 (_ BitVec 32) (_ BitVec 32) V!53323 V!53323 (_ BitVec 32) Int) ListLongMap!21225)

(assert (=> b!1323156 (= lt!588802 (getCurrentListMapNoExtraKeys!6290 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1323157 () Bool)

(declare-fun e!754401 () Bool)

(assert (=> b!1323157 (= e!754401 tp_is_empty!36165)))

(declare-fun mapNonEmpty!55895 () Bool)

(declare-fun tp!106511 () Bool)

(assert (=> mapNonEmpty!55895 (= mapRes!55895 (and tp!106511 e!754401))))

(declare-fun mapValue!55895 () ValueCell!17184)

(declare-fun mapRest!55895 () (Array (_ BitVec 32) ValueCell!17184))

(declare-fun mapKey!55895 () (_ BitVec 32))

(assert (=> mapNonEmpty!55895 (= (arr!43073 _values!1337) (store mapRest!55895 mapKey!55895 mapValue!55895))))

(declare-fun b!1323158 () Bool)

(declare-fun res!878338 () Bool)

(assert (=> b!1323158 (=> (not res!878338) (not e!754402))))

(assert (=> b!1323158 (= res!878338 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43623 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1323159 () Bool)

(declare-fun res!878344 () Bool)

(assert (=> b!1323159 (=> (not res!878344) (not e!754402))))

(assert (=> b!1323159 (= res!878344 (not (= (select (arr!43072 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1323160 () Bool)

(declare-fun res!878337 () Bool)

(assert (=> b!1323160 (=> (not res!878337) (not e!754402))))

(declare-datatypes ((List!30730 0))(
  ( (Nil!30727) (Cons!30726 (h!31935 (_ BitVec 64)) (t!44631 List!30730)) )
))
(declare-fun arrayNoDuplicates!0 (array!89205 (_ BitVec 32) List!30730) Bool)

(assert (=> b!1323160 (= res!878337 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30727))))

(declare-fun b!1323161 () Bool)

(declare-fun res!878340 () Bool)

(assert (=> b!1323161 (=> (not res!878340) (not e!754402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89205 (_ BitVec 32)) Bool)

(assert (=> b!1323161 (= res!878340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1323162 () Bool)

(declare-fun res!878339 () Bool)

(assert (=> b!1323162 (=> (not res!878339) (not e!754402))))

(declare-fun getCurrentListMap!5567 (array!89205 array!89207 (_ BitVec 32) (_ BitVec 32) V!53323 V!53323 (_ BitVec 32) Int) ListLongMap!21225)

(assert (=> b!1323162 (= res!878339 (contains!8719 (getCurrentListMap!5567 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1323163 () Bool)

(declare-fun e!754398 () Bool)

(assert (=> b!1323163 (= e!754398 tp_is_empty!36165)))

(declare-fun b!1323164 () Bool)

(assert (=> b!1323164 (= e!754399 (and e!754398 mapRes!55895))))

(declare-fun condMapEmpty!55895 () Bool)

(declare-fun mapDefault!55895 () ValueCell!17184)

(assert (=> b!1323164 (= condMapEmpty!55895 (= (arr!43073 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17184)) mapDefault!55895)))))

(assert (= (and start!111724 res!878341) b!1323155))

(assert (= (and b!1323155 res!878342) b!1323161))

(assert (= (and b!1323161 res!878340) b!1323160))

(assert (= (and b!1323160 res!878337) b!1323158))

(assert (= (and b!1323158 res!878338) b!1323162))

(assert (= (and b!1323162 res!878339) b!1323159))

(assert (= (and b!1323159 res!878344) b!1323154))

(assert (= (and b!1323154 res!878343) b!1323156))

(assert (= (and b!1323164 condMapEmpty!55895) mapIsEmpty!55895))

(assert (= (and b!1323164 (not condMapEmpty!55895)) mapNonEmpty!55895))

(get-info :version)

(assert (= (and mapNonEmpty!55895 ((_ is ValueCellFull!17184) mapValue!55895)) b!1323157))

(assert (= (and b!1323164 ((_ is ValueCellFull!17184) mapDefault!55895)) b!1323163))

(assert (= start!111724 b!1323164))

(declare-fun b_lambda!23681 () Bool)

(assert (=> (not b_lambda!23681) (not b!1323156)))

(declare-fun t!44629 () Bool)

(declare-fun tb!11705 () Bool)

(assert (=> (and start!111724 (= defaultEntry!1340 defaultEntry!1340) t!44629) tb!11705))

(declare-fun result!24457 () Bool)

(assert (=> tb!11705 (= result!24457 tp_is_empty!36165)))

(assert (=> b!1323156 t!44629))

(declare-fun b_and!48861 () Bool)

(assert (= b_and!48859 (and (=> t!44629 result!24457) b_and!48861)))

(declare-fun m!1211891 () Bool)

(assert (=> b!1323159 m!1211891))

(declare-fun m!1211893 () Bool)

(assert (=> b!1323161 m!1211893))

(declare-fun m!1211895 () Bool)

(assert (=> b!1323162 m!1211895))

(assert (=> b!1323162 m!1211895))

(declare-fun m!1211897 () Bool)

(assert (=> b!1323162 m!1211897))

(assert (=> b!1323154 m!1211891))

(assert (=> b!1323154 m!1211891))

(declare-fun m!1211899 () Bool)

(assert (=> b!1323154 m!1211899))

(declare-fun m!1211901 () Bool)

(assert (=> b!1323160 m!1211901))

(declare-fun m!1211903 () Bool)

(assert (=> b!1323156 m!1211903))

(declare-fun m!1211905 () Bool)

(assert (=> b!1323156 m!1211905))

(declare-fun m!1211907 () Bool)

(assert (=> b!1323156 m!1211907))

(declare-fun m!1211909 () Bool)

(assert (=> b!1323156 m!1211909))

(declare-fun m!1211911 () Bool)

(assert (=> b!1323156 m!1211911))

(declare-fun m!1211913 () Bool)

(assert (=> b!1323156 m!1211913))

(declare-fun m!1211915 () Bool)

(assert (=> b!1323156 m!1211915))

(declare-fun m!1211917 () Bool)

(assert (=> b!1323156 m!1211917))

(assert (=> b!1323156 m!1211911))

(assert (=> b!1323156 m!1211905))

(declare-fun m!1211919 () Bool)

(assert (=> b!1323156 m!1211919))

(declare-fun m!1211921 () Bool)

(assert (=> b!1323156 m!1211921))

(declare-fun m!1211923 () Bool)

(assert (=> b!1323156 m!1211923))

(declare-fun m!1211925 () Bool)

(assert (=> b!1323156 m!1211925))

(declare-fun m!1211927 () Bool)

(assert (=> b!1323156 m!1211927))

(assert (=> b!1323156 m!1211891))

(declare-fun m!1211929 () Bool)

(assert (=> b!1323156 m!1211929))

(declare-fun m!1211931 () Bool)

(assert (=> b!1323156 m!1211931))

(declare-fun m!1211933 () Bool)

(assert (=> b!1323156 m!1211933))

(declare-fun m!1211935 () Bool)

(assert (=> b!1323156 m!1211935))

(assert (=> b!1323156 m!1211921))

(declare-fun m!1211937 () Bool)

(assert (=> b!1323156 m!1211937))

(assert (=> b!1323156 m!1211891))

(declare-fun m!1211939 () Bool)

(assert (=> start!111724 m!1211939))

(declare-fun m!1211941 () Bool)

(assert (=> start!111724 m!1211941))

(declare-fun m!1211943 () Bool)

(assert (=> start!111724 m!1211943))

(declare-fun m!1211945 () Bool)

(assert (=> mapNonEmpty!55895 m!1211945))

(check-sat b_and!48861 (not b!1323156) tp_is_empty!36165 (not b!1323154) (not b!1323162) (not b_next!30345) (not b_lambda!23681) (not start!111724) (not mapNonEmpty!55895) (not b!1323161) (not b!1323160))
(check-sat b_and!48861 (not b_next!30345))
