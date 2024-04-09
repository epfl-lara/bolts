; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111598 () Bool)

(assert start!111598)

(declare-fun b_free!30219 () Bool)

(declare-fun b_next!30219 () Bool)

(assert (=> start!111598 (= b_free!30219 (not b_next!30219))))

(declare-fun tp!106134 () Bool)

(declare-fun b_and!48607 () Bool)

(assert (=> start!111598 (= tp!106134 b_and!48607)))

(declare-fun b!1320949 () Bool)

(declare-fun res!876829 () Bool)

(declare-fun e!753453 () Bool)

(assert (=> b!1320949 (=> (not res!876829) (not e!753453))))

(declare-datatypes ((array!88971 0))(
  ( (array!88972 (arr!42955 (Array (_ BitVec 32) (_ BitVec 64))) (size!43506 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88971)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1320949 (= res!876829 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43506 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320950 () Bool)

(declare-fun e!753455 () Bool)

(declare-fun e!753457 () Bool)

(declare-fun mapRes!55706 () Bool)

(assert (=> b!1320950 (= e!753455 (and e!753457 mapRes!55706))))

(declare-fun condMapEmpty!55706 () Bool)

(declare-datatypes ((V!53155 0))(
  ( (V!53156 (val!18094 Int)) )
))
(declare-datatypes ((ValueCell!17121 0))(
  ( (ValueCellFull!17121 (v!20722 V!53155)) (EmptyCell!17121) )
))
(declare-datatypes ((array!88973 0))(
  ( (array!88974 (arr!42956 (Array (_ BitVec 32) ValueCell!17121)) (size!43507 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88973)

(declare-fun mapDefault!55706 () ValueCell!17121)

(assert (=> b!1320950 (= condMapEmpty!55706 (= (arr!42956 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17121)) mapDefault!55706)))))

(declare-fun b!1320951 () Bool)

(declare-fun e!753454 () Bool)

(declare-fun tp_is_empty!36039 () Bool)

(assert (=> b!1320951 (= e!753454 tp_is_empty!36039)))

(declare-fun b!1320952 () Bool)

(declare-fun res!876828 () Bool)

(assert (=> b!1320952 (=> (not res!876828) (not e!753453))))

(declare-datatypes ((List!30647 0))(
  ( (Nil!30644) (Cons!30643 (h!31852 (_ BitVec 64)) (t!44422 List!30647)) )
))
(declare-fun arrayNoDuplicates!0 (array!88971 (_ BitVec 32) List!30647) Bool)

(assert (=> b!1320952 (= res!876828 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30644))))

(declare-fun b!1320953 () Bool)

(declare-fun res!876826 () Bool)

(assert (=> b!1320953 (=> (not res!876826) (not e!753453))))

(assert (=> b!1320953 (= res!876826 (not (= (select (arr!42955 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1320954 () Bool)

(declare-fun res!876830 () Bool)

(assert (=> b!1320954 (=> (not res!876830) (not e!753453))))

(declare-fun zeroValue!1279 () V!53155)

(declare-fun minValue!1279 () V!53155)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23466 0))(
  ( (tuple2!23467 (_1!11743 (_ BitVec 64)) (_2!11743 V!53155)) )
))
(declare-datatypes ((List!30648 0))(
  ( (Nil!30645) (Cons!30644 (h!31853 tuple2!23466) (t!44423 List!30648)) )
))
(declare-datatypes ((ListLongMap!21135 0))(
  ( (ListLongMap!21136 (toList!10583 List!30648)) )
))
(declare-fun contains!8674 (ListLongMap!21135 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5526 (array!88971 array!88973 (_ BitVec 32) (_ BitVec 32) V!53155 V!53155 (_ BitVec 32) Int) ListLongMap!21135)

(assert (=> b!1320954 (= res!876830 (contains!8674 (getCurrentListMap!5526 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1320955 () Bool)

(assert (=> b!1320955 (= e!753453 (not true))))

(declare-fun lt!587165 () ListLongMap!21135)

(assert (=> b!1320955 (contains!8674 lt!587165 k0!1164)))

(declare-datatypes ((Unit!43474 0))(
  ( (Unit!43475) )
))
(declare-fun lt!587162 () Unit!43474)

(declare-fun lt!587164 () V!53155)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!152 ((_ BitVec 64) (_ BitVec 64) V!53155 ListLongMap!21135) Unit!43474)

(assert (=> b!1320955 (= lt!587162 (lemmaInListMapAfterAddingDiffThenInBefore!152 k0!1164 (select (arr!42955 _keys!1609) from!2000) lt!587164 lt!587165))))

(declare-fun lt!587161 () ListLongMap!21135)

(assert (=> b!1320955 (contains!8674 lt!587161 k0!1164)))

(declare-fun lt!587163 () Unit!43474)

(assert (=> b!1320955 (= lt!587163 (lemmaInListMapAfterAddingDiffThenInBefore!152 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587161))))

(declare-fun lt!587167 () ListLongMap!21135)

(assert (=> b!1320955 (contains!8674 lt!587167 k0!1164)))

(declare-fun lt!587166 () Unit!43474)

(assert (=> b!1320955 (= lt!587166 (lemmaInListMapAfterAddingDiffThenInBefore!152 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587167))))

(declare-fun +!4537 (ListLongMap!21135 tuple2!23466) ListLongMap!21135)

(assert (=> b!1320955 (= lt!587167 (+!4537 lt!587161 (tuple2!23467 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1320955 (= lt!587161 (+!4537 lt!587165 (tuple2!23467 (select (arr!42955 _keys!1609) from!2000) lt!587164)))))

(declare-fun get!21657 (ValueCell!17121 V!53155) V!53155)

(declare-fun dynLambda!3574 (Int (_ BitVec 64)) V!53155)

(assert (=> b!1320955 (= lt!587164 (get!21657 (select (arr!42956 _values!1337) from!2000) (dynLambda!3574 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6252 (array!88971 array!88973 (_ BitVec 32) (_ BitVec 32) V!53155 V!53155 (_ BitVec 32) Int) ListLongMap!21135)

(assert (=> b!1320955 (= lt!587165 (getCurrentListMapNoExtraKeys!6252 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapNonEmpty!55706 () Bool)

(declare-fun tp!106133 () Bool)

(assert (=> mapNonEmpty!55706 (= mapRes!55706 (and tp!106133 e!753454))))

(declare-fun mapRest!55706 () (Array (_ BitVec 32) ValueCell!17121))

(declare-fun mapValue!55706 () ValueCell!17121)

(declare-fun mapKey!55706 () (_ BitVec 32))

(assert (=> mapNonEmpty!55706 (= (arr!42956 _values!1337) (store mapRest!55706 mapKey!55706 mapValue!55706))))

(declare-fun b!1320956 () Bool)

(assert (=> b!1320956 (= e!753457 tp_is_empty!36039)))

(declare-fun b!1320957 () Bool)

(declare-fun res!876832 () Bool)

(assert (=> b!1320957 (=> (not res!876832) (not e!753453))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88971 (_ BitVec 32)) Bool)

(assert (=> b!1320957 (= res!876832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320958 () Bool)

(declare-fun res!876825 () Bool)

(assert (=> b!1320958 (=> (not res!876825) (not e!753453))))

(assert (=> b!1320958 (= res!876825 (and (= (size!43507 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43506 _keys!1609) (size!43507 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320959 () Bool)

(declare-fun res!876827 () Bool)

(assert (=> b!1320959 (=> (not res!876827) (not e!753453))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320959 (= res!876827 (validKeyInArray!0 (select (arr!42955 _keys!1609) from!2000)))))

(declare-fun mapIsEmpty!55706 () Bool)

(assert (=> mapIsEmpty!55706 mapRes!55706))

(declare-fun res!876831 () Bool)

(assert (=> start!111598 (=> (not res!876831) (not e!753453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111598 (= res!876831 (validMask!0 mask!2019))))

(assert (=> start!111598 e!753453))

(declare-fun array_inv!32387 (array!88971) Bool)

(assert (=> start!111598 (array_inv!32387 _keys!1609)))

(assert (=> start!111598 true))

(assert (=> start!111598 tp_is_empty!36039))

(declare-fun array_inv!32388 (array!88973) Bool)

(assert (=> start!111598 (and (array_inv!32388 _values!1337) e!753455)))

(assert (=> start!111598 tp!106134))

(assert (= (and start!111598 res!876831) b!1320958))

(assert (= (and b!1320958 res!876825) b!1320957))

(assert (= (and b!1320957 res!876832) b!1320952))

(assert (= (and b!1320952 res!876828) b!1320949))

(assert (= (and b!1320949 res!876829) b!1320954))

(assert (= (and b!1320954 res!876830) b!1320953))

(assert (= (and b!1320953 res!876826) b!1320959))

(assert (= (and b!1320959 res!876827) b!1320955))

(assert (= (and b!1320950 condMapEmpty!55706) mapIsEmpty!55706))

(assert (= (and b!1320950 (not condMapEmpty!55706)) mapNonEmpty!55706))

(get-info :version)

(assert (= (and mapNonEmpty!55706 ((_ is ValueCellFull!17121) mapValue!55706)) b!1320951))

(assert (= (and b!1320950 ((_ is ValueCellFull!17121) mapDefault!55706)) b!1320956))

(assert (= start!111598 b!1320950))

(declare-fun b_lambda!23555 () Bool)

(assert (=> (not b_lambda!23555) (not b!1320955)))

(declare-fun t!44421 () Bool)

(declare-fun tb!11579 () Bool)

(assert (=> (and start!111598 (= defaultEntry!1340 defaultEntry!1340) t!44421) tb!11579))

(declare-fun result!24205 () Bool)

(assert (=> tb!11579 (= result!24205 tp_is_empty!36039)))

(assert (=> b!1320955 t!44421))

(declare-fun b_and!48609 () Bool)

(assert (= b_and!48607 (and (=> t!44421 result!24205) b_and!48609)))

(declare-fun m!1208819 () Bool)

(assert (=> b!1320953 m!1208819))

(assert (=> b!1320959 m!1208819))

(assert (=> b!1320959 m!1208819))

(declare-fun m!1208821 () Bool)

(assert (=> b!1320959 m!1208821))

(declare-fun m!1208823 () Bool)

(assert (=> b!1320957 m!1208823))

(declare-fun m!1208825 () Bool)

(assert (=> b!1320952 m!1208825))

(declare-fun m!1208827 () Bool)

(assert (=> start!111598 m!1208827))

(declare-fun m!1208829 () Bool)

(assert (=> start!111598 m!1208829))

(declare-fun m!1208831 () Bool)

(assert (=> start!111598 m!1208831))

(declare-fun m!1208833 () Bool)

(assert (=> b!1320954 m!1208833))

(assert (=> b!1320954 m!1208833))

(declare-fun m!1208835 () Bool)

(assert (=> b!1320954 m!1208835))

(assert (=> b!1320955 m!1208819))

(declare-fun m!1208837 () Bool)

(assert (=> b!1320955 m!1208837))

(declare-fun m!1208839 () Bool)

(assert (=> b!1320955 m!1208839))

(declare-fun m!1208841 () Bool)

(assert (=> b!1320955 m!1208841))

(declare-fun m!1208843 () Bool)

(assert (=> b!1320955 m!1208843))

(declare-fun m!1208845 () Bool)

(assert (=> b!1320955 m!1208845))

(declare-fun m!1208847 () Bool)

(assert (=> b!1320955 m!1208847))

(declare-fun m!1208849 () Bool)

(assert (=> b!1320955 m!1208849))

(declare-fun m!1208851 () Bool)

(assert (=> b!1320955 m!1208851))

(assert (=> b!1320955 m!1208845))

(assert (=> b!1320955 m!1208843))

(declare-fun m!1208853 () Bool)

(assert (=> b!1320955 m!1208853))

(assert (=> b!1320955 m!1208819))

(declare-fun m!1208855 () Bool)

(assert (=> b!1320955 m!1208855))

(declare-fun m!1208857 () Bool)

(assert (=> b!1320955 m!1208857))

(declare-fun m!1208859 () Bool)

(assert (=> b!1320955 m!1208859))

(declare-fun m!1208861 () Bool)

(assert (=> mapNonEmpty!55706 m!1208861))

(check-sat (not start!111598) (not b!1320959) (not b!1320952) tp_is_empty!36039 (not b!1320954) (not b_next!30219) (not b!1320957) (not mapNonEmpty!55706) b_and!48609 (not b_lambda!23555) (not b!1320955))
(check-sat b_and!48609 (not b_next!30219))
