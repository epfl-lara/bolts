; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111604 () Bool)

(assert start!111604)

(declare-fun b_free!30225 () Bool)

(declare-fun b_next!30225 () Bool)

(assert (=> start!111604 (= b_free!30225 (not b_next!30225))))

(declare-fun tp!106152 () Bool)

(declare-fun b_and!48619 () Bool)

(assert (=> start!111604 (= tp!106152 b_and!48619)))

(declare-fun b!1321055 () Bool)

(declare-fun e!753498 () Bool)

(declare-fun tp_is_empty!36045 () Bool)

(assert (=> b!1321055 (= e!753498 tp_is_empty!36045)))

(declare-fun b!1321056 () Bool)

(declare-fun e!753500 () Bool)

(declare-fun mapRes!55715 () Bool)

(assert (=> b!1321056 (= e!753500 (and e!753498 mapRes!55715))))

(declare-fun condMapEmpty!55715 () Bool)

(declare-datatypes ((V!53163 0))(
  ( (V!53164 (val!18097 Int)) )
))
(declare-datatypes ((ValueCell!17124 0))(
  ( (ValueCellFull!17124 (v!20725 V!53163)) (EmptyCell!17124) )
))
(declare-datatypes ((array!88981 0))(
  ( (array!88982 (arr!42960 (Array (_ BitVec 32) ValueCell!17124)) (size!43511 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88981)

(declare-fun mapDefault!55715 () ValueCell!17124)

(assert (=> b!1321056 (= condMapEmpty!55715 (= (arr!42960 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17124)) mapDefault!55715)))))

(declare-fun b!1321057 () Bool)

(declare-fun res!876897 () Bool)

(declare-fun e!753499 () Bool)

(assert (=> b!1321057 (=> (not res!876897) (not e!753499))))

(declare-datatypes ((array!88983 0))(
  ( (array!88984 (arr!42961 (Array (_ BitVec 32) (_ BitVec 64))) (size!43512 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88983)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88983 (_ BitVec 32)) Bool)

(assert (=> b!1321057 (= res!876897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321058 () Bool)

(declare-fun e!753501 () Bool)

(assert (=> b!1321058 (= e!753501 tp_is_empty!36045)))

(declare-fun mapIsEmpty!55715 () Bool)

(assert (=> mapIsEmpty!55715 mapRes!55715))

(declare-fun b!1321059 () Bool)

(declare-fun res!876901 () Bool)

(assert (=> b!1321059 (=> (not res!876901) (not e!753499))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1321059 (= res!876901 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43512 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321054 () Bool)

(declare-fun res!876899 () Bool)

(assert (=> b!1321054 (=> (not res!876899) (not e!753499))))

(declare-datatypes ((List!30649 0))(
  ( (Nil!30646) (Cons!30645 (h!31854 (_ BitVec 64)) (t!44430 List!30649)) )
))
(declare-fun arrayNoDuplicates!0 (array!88983 (_ BitVec 32) List!30649) Bool)

(assert (=> b!1321054 (= res!876899 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30646))))

(declare-fun res!876902 () Bool)

(assert (=> start!111604 (=> (not res!876902) (not e!753499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111604 (= res!876902 (validMask!0 mask!2019))))

(assert (=> start!111604 e!753499))

(declare-fun array_inv!32389 (array!88983) Bool)

(assert (=> start!111604 (array_inv!32389 _keys!1609)))

(assert (=> start!111604 true))

(assert (=> start!111604 tp_is_empty!36045))

(declare-fun array_inv!32390 (array!88981) Bool)

(assert (=> start!111604 (and (array_inv!32390 _values!1337) e!753500)))

(assert (=> start!111604 tp!106152))

(declare-fun b!1321060 () Bool)

(declare-fun res!876904 () Bool)

(assert (=> b!1321060 (=> (not res!876904) (not e!753499))))

(assert (=> b!1321060 (= res!876904 (and (= (size!43511 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43512 _keys!1609) (size!43511 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1321061 () Bool)

(declare-fun res!876898 () Bool)

(assert (=> b!1321061 (=> (not res!876898) (not e!753499))))

(assert (=> b!1321061 (= res!876898 (not (= (select (arr!42961 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1321062 () Bool)

(declare-fun res!876903 () Bool)

(assert (=> b!1321062 (=> (not res!876903) (not e!753499))))

(declare-fun zeroValue!1279 () V!53163)

(declare-fun minValue!1279 () V!53163)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23468 0))(
  ( (tuple2!23469 (_1!11744 (_ BitVec 64)) (_2!11744 V!53163)) )
))
(declare-datatypes ((List!30650 0))(
  ( (Nil!30647) (Cons!30646 (h!31855 tuple2!23468) (t!44431 List!30650)) )
))
(declare-datatypes ((ListLongMap!21137 0))(
  ( (ListLongMap!21138 (toList!10584 List!30650)) )
))
(declare-fun contains!8675 (ListLongMap!21137 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5527 (array!88983 array!88981 (_ BitVec 32) (_ BitVec 32) V!53163 V!53163 (_ BitVec 32) Int) ListLongMap!21137)

(assert (=> b!1321062 (= res!876903 (contains!8675 (getCurrentListMap!5527 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1321063 () Bool)

(assert (=> b!1321063 (= e!753499 (not true))))

(declare-fun lt!587228 () ListLongMap!21137)

(assert (=> b!1321063 (contains!8675 lt!587228 k0!1164)))

(declare-datatypes ((Unit!43476 0))(
  ( (Unit!43477) )
))
(declare-fun lt!587229 () Unit!43476)

(declare-fun lt!587226 () V!53163)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!153 ((_ BitVec 64) (_ BitVec 64) V!53163 ListLongMap!21137) Unit!43476)

(assert (=> b!1321063 (= lt!587229 (lemmaInListMapAfterAddingDiffThenInBefore!153 k0!1164 (select (arr!42961 _keys!1609) from!2000) lt!587226 lt!587228))))

(declare-fun lt!587230 () ListLongMap!21137)

(assert (=> b!1321063 (contains!8675 lt!587230 k0!1164)))

(declare-fun lt!587225 () Unit!43476)

(assert (=> b!1321063 (= lt!587225 (lemmaInListMapAfterAddingDiffThenInBefore!153 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587230))))

(declare-fun lt!587227 () ListLongMap!21137)

(assert (=> b!1321063 (contains!8675 lt!587227 k0!1164)))

(declare-fun lt!587224 () Unit!43476)

(assert (=> b!1321063 (= lt!587224 (lemmaInListMapAfterAddingDiffThenInBefore!153 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587227))))

(declare-fun +!4538 (ListLongMap!21137 tuple2!23468) ListLongMap!21137)

(assert (=> b!1321063 (= lt!587227 (+!4538 lt!587230 (tuple2!23469 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321063 (= lt!587230 (+!4538 lt!587228 (tuple2!23469 (select (arr!42961 _keys!1609) from!2000) lt!587226)))))

(declare-fun get!21660 (ValueCell!17124 V!53163) V!53163)

(declare-fun dynLambda!3575 (Int (_ BitVec 64)) V!53163)

(assert (=> b!1321063 (= lt!587226 (get!21660 (select (arr!42960 _values!1337) from!2000) (dynLambda!3575 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6253 (array!88983 array!88981 (_ BitVec 32) (_ BitVec 32) V!53163 V!53163 (_ BitVec 32) Int) ListLongMap!21137)

(assert (=> b!1321063 (= lt!587228 (getCurrentListMapNoExtraKeys!6253 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapNonEmpty!55715 () Bool)

(declare-fun tp!106151 () Bool)

(assert (=> mapNonEmpty!55715 (= mapRes!55715 (and tp!106151 e!753501))))

(declare-fun mapRest!55715 () (Array (_ BitVec 32) ValueCell!17124))

(declare-fun mapKey!55715 () (_ BitVec 32))

(declare-fun mapValue!55715 () ValueCell!17124)

(assert (=> mapNonEmpty!55715 (= (arr!42960 _values!1337) (store mapRest!55715 mapKey!55715 mapValue!55715))))

(declare-fun b!1321064 () Bool)

(declare-fun res!876900 () Bool)

(assert (=> b!1321064 (=> (not res!876900) (not e!753499))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321064 (= res!876900 (validKeyInArray!0 (select (arr!42961 _keys!1609) from!2000)))))

(assert (= (and start!111604 res!876902) b!1321060))

(assert (= (and b!1321060 res!876904) b!1321057))

(assert (= (and b!1321057 res!876897) b!1321054))

(assert (= (and b!1321054 res!876899) b!1321059))

(assert (= (and b!1321059 res!876901) b!1321062))

(assert (= (and b!1321062 res!876903) b!1321061))

(assert (= (and b!1321061 res!876898) b!1321064))

(assert (= (and b!1321064 res!876900) b!1321063))

(assert (= (and b!1321056 condMapEmpty!55715) mapIsEmpty!55715))

(assert (= (and b!1321056 (not condMapEmpty!55715)) mapNonEmpty!55715))

(get-info :version)

(assert (= (and mapNonEmpty!55715 ((_ is ValueCellFull!17124) mapValue!55715)) b!1321058))

(assert (= (and b!1321056 ((_ is ValueCellFull!17124) mapDefault!55715)) b!1321055))

(assert (= start!111604 b!1321056))

(declare-fun b_lambda!23561 () Bool)

(assert (=> (not b_lambda!23561) (not b!1321063)))

(declare-fun t!44429 () Bool)

(declare-fun tb!11585 () Bool)

(assert (=> (and start!111604 (= defaultEntry!1340 defaultEntry!1340) t!44429) tb!11585))

(declare-fun result!24217 () Bool)

(assert (=> tb!11585 (= result!24217 tp_is_empty!36045)))

(assert (=> b!1321063 t!44429))

(declare-fun b_and!48621 () Bool)

(assert (= b_and!48619 (and (=> t!44429 result!24217) b_and!48621)))

(declare-fun m!1208951 () Bool)

(assert (=> start!111604 m!1208951))

(declare-fun m!1208953 () Bool)

(assert (=> start!111604 m!1208953))

(declare-fun m!1208955 () Bool)

(assert (=> start!111604 m!1208955))

(declare-fun m!1208957 () Bool)

(assert (=> mapNonEmpty!55715 m!1208957))

(declare-fun m!1208959 () Bool)

(assert (=> b!1321057 m!1208959))

(declare-fun m!1208961 () Bool)

(assert (=> b!1321064 m!1208961))

(assert (=> b!1321064 m!1208961))

(declare-fun m!1208963 () Bool)

(assert (=> b!1321064 m!1208963))

(declare-fun m!1208965 () Bool)

(assert (=> b!1321054 m!1208965))

(assert (=> b!1321061 m!1208961))

(declare-fun m!1208967 () Bool)

(assert (=> b!1321062 m!1208967))

(assert (=> b!1321062 m!1208967))

(declare-fun m!1208969 () Bool)

(assert (=> b!1321062 m!1208969))

(assert (=> b!1321063 m!1208961))

(declare-fun m!1208971 () Bool)

(assert (=> b!1321063 m!1208971))

(declare-fun m!1208973 () Bool)

(assert (=> b!1321063 m!1208973))

(declare-fun m!1208975 () Bool)

(assert (=> b!1321063 m!1208975))

(declare-fun m!1208977 () Bool)

(assert (=> b!1321063 m!1208977))

(declare-fun m!1208979 () Bool)

(assert (=> b!1321063 m!1208979))

(declare-fun m!1208981 () Bool)

(assert (=> b!1321063 m!1208981))

(assert (=> b!1321063 m!1208961))

(declare-fun m!1208983 () Bool)

(assert (=> b!1321063 m!1208983))

(declare-fun m!1208985 () Bool)

(assert (=> b!1321063 m!1208985))

(declare-fun m!1208987 () Bool)

(assert (=> b!1321063 m!1208987))

(declare-fun m!1208989 () Bool)

(assert (=> b!1321063 m!1208989))

(assert (=> b!1321063 m!1208979))

(assert (=> b!1321063 m!1208975))

(declare-fun m!1208991 () Bool)

(assert (=> b!1321063 m!1208991))

(declare-fun m!1208993 () Bool)

(assert (=> b!1321063 m!1208993))

(check-sat tp_is_empty!36045 (not mapNonEmpty!55715) (not b!1321064) b_and!48621 (not b!1321063) (not b_lambda!23561) (not start!111604) (not b!1321057) (not b!1321062) (not b!1321054) (not b_next!30225))
(check-sat b_and!48621 (not b_next!30225))
