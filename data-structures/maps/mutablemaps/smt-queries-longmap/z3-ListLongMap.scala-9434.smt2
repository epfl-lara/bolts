; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112250 () Bool)

(assert start!112250)

(declare-fun b_free!30609 () Bool)

(declare-fun b_next!30609 () Bool)

(assert (=> start!112250 (= b_free!30609 (not b_next!30609))))

(declare-fun tp!107464 () Bool)

(declare-fun b_and!49283 () Bool)

(assert (=> start!112250 (= tp!107464 b_and!49283)))

(declare-fun b!1329032 () Bool)

(declare-fun res!881898 () Bool)

(declare-fun e!757744 () Bool)

(assert (=> b!1329032 (=> (not res!881898) (not e!757744))))

(declare-datatypes ((V!53795 0))(
  ( (V!53796 (val!18334 Int)) )
))
(declare-datatypes ((ValueCell!17361 0))(
  ( (ValueCellFull!17361 (v!20969 V!53795)) (EmptyCell!17361) )
))
(declare-datatypes ((array!89895 0))(
  ( (array!89896 (arr!43409 (Array (_ BitVec 32) ValueCell!17361)) (size!43960 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89895)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89897 0))(
  ( (array!89898 (arr!43410 (Array (_ BitVec 32) (_ BitVec 64))) (size!43961 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89897)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53795)

(declare-fun zeroValue!1262 () V!53795)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23750 0))(
  ( (tuple2!23751 (_1!11885 (_ BitVec 64)) (_2!11885 V!53795)) )
))
(declare-datatypes ((List!30939 0))(
  ( (Nil!30936) (Cons!30935 (h!32144 tuple2!23750) (t!44968 List!30939)) )
))
(declare-datatypes ((ListLongMap!21419 0))(
  ( (ListLongMap!21420 (toList!10725 List!30939)) )
))
(declare-fun contains!8825 (ListLongMap!21419 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5657 (array!89897 array!89895 (_ BitVec 32) (_ BitVec 32) V!53795 V!53795 (_ BitVec 32) Int) ListLongMap!21419)

(assert (=> b!1329032 (= res!881898 (contains!8825 (getCurrentListMap!5657 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapIsEmpty!56452 () Bool)

(declare-fun mapRes!56452 () Bool)

(assert (=> mapIsEmpty!56452 mapRes!56452))

(declare-fun b!1329033 () Bool)

(declare-fun e!757740 () Bool)

(declare-fun tp_is_empty!36519 () Bool)

(assert (=> b!1329033 (= e!757740 tp_is_empty!36519)))

(declare-fun b!1329035 () Bool)

(declare-fun res!881900 () Bool)

(assert (=> b!1329035 (=> (not res!881900) (not e!757744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329035 (= res!881900 (validKeyInArray!0 (select (arr!43410 _keys!1590) from!1980)))))

(declare-fun b!1329036 () Bool)

(declare-fun res!881902 () Bool)

(assert (=> b!1329036 (=> (not res!881902) (not e!757744))))

(assert (=> b!1329036 (= res!881902 (not (= (select (arr!43410 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1329037 () Bool)

(declare-fun res!881904 () Bool)

(assert (=> b!1329037 (=> (not res!881904) (not e!757744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89897 (_ BitVec 32)) Bool)

(assert (=> b!1329037 (= res!881904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1329038 () Bool)

(declare-fun res!881901 () Bool)

(assert (=> b!1329038 (=> (not res!881901) (not e!757744))))

(assert (=> b!1329038 (= res!881901 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!56452 () Bool)

(declare-fun tp!107465 () Bool)

(declare-fun e!757742 () Bool)

(assert (=> mapNonEmpty!56452 (= mapRes!56452 (and tp!107465 e!757742))))

(declare-fun mapKey!56452 () (_ BitVec 32))

(declare-fun mapValue!56452 () ValueCell!17361)

(declare-fun mapRest!56452 () (Array (_ BitVec 32) ValueCell!17361))

(assert (=> mapNonEmpty!56452 (= (arr!43409 _values!1320) (store mapRest!56452 mapKey!56452 mapValue!56452))))

(declare-fun b!1329039 () Bool)

(assert (=> b!1329039 (= e!757742 tp_is_empty!36519)))

(declare-fun b!1329040 () Bool)

(declare-fun res!881903 () Bool)

(assert (=> b!1329040 (=> (not res!881903) (not e!757744))))

(declare-datatypes ((List!30940 0))(
  ( (Nil!30937) (Cons!30936 (h!32145 (_ BitVec 64)) (t!44969 List!30940)) )
))
(declare-fun arrayNoDuplicates!0 (array!89897 (_ BitVec 32) List!30940) Bool)

(assert (=> b!1329040 (= res!881903 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30937))))

(declare-fun b!1329034 () Bool)

(declare-fun res!881905 () Bool)

(assert (=> b!1329034 (=> (not res!881905) (not e!757744))))

(assert (=> b!1329034 (= res!881905 (and (= (size!43960 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43961 _keys!1590) (size!43960 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!881899 () Bool)

(assert (=> start!112250 (=> (not res!881899) (not e!757744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112250 (= res!881899 (validMask!0 mask!1998))))

(assert (=> start!112250 e!757744))

(declare-fun e!757743 () Bool)

(declare-fun array_inv!32703 (array!89895) Bool)

(assert (=> start!112250 (and (array_inv!32703 _values!1320) e!757743)))

(assert (=> start!112250 true))

(declare-fun array_inv!32704 (array!89897) Bool)

(assert (=> start!112250 (array_inv!32704 _keys!1590)))

(assert (=> start!112250 tp!107464))

(assert (=> start!112250 tp_is_empty!36519))

(declare-fun b!1329041 () Bool)

(assert (=> b!1329041 (= e!757743 (and e!757740 mapRes!56452))))

(declare-fun condMapEmpty!56452 () Bool)

(declare-fun mapDefault!56452 () ValueCell!17361)

(assert (=> b!1329041 (= condMapEmpty!56452 (= (arr!43409 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17361)) mapDefault!56452)))))

(declare-fun b!1329042 () Bool)

(assert (=> b!1329042 (= e!757744 (not true))))

(declare-fun lt!590839 () ListLongMap!21419)

(assert (=> b!1329042 (contains!8825 lt!590839 k0!1153)))

(declare-datatypes ((Unit!43671 0))(
  ( (Unit!43672) )
))
(declare-fun lt!590840 () Unit!43671)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!227 ((_ BitVec 64) (_ BitVec 64) V!53795 ListLongMap!21419) Unit!43671)

(assert (=> b!1329042 (= lt!590840 (lemmaInListMapAfterAddingDiffThenInBefore!227 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590839))))

(declare-fun +!4622 (ListLongMap!21419 tuple2!23750) ListLongMap!21419)

(declare-fun getCurrentListMapNoExtraKeys!6340 (array!89897 array!89895 (_ BitVec 32) (_ BitVec 32) V!53795 V!53795 (_ BitVec 32) Int) ListLongMap!21419)

(declare-fun get!21910 (ValueCell!17361 V!53795) V!53795)

(declare-fun dynLambda!3659 (Int (_ BitVec 64)) V!53795)

(assert (=> b!1329042 (= lt!590839 (+!4622 (getCurrentListMapNoExtraKeys!6340 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23751 (select (arr!43410 _keys!1590) from!1980) (get!21910 (select (arr!43409 _values!1320) from!1980) (dynLambda!3659 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329043 () Bool)

(declare-fun res!881906 () Bool)

(assert (=> b!1329043 (=> (not res!881906) (not e!757744))))

(assert (=> b!1329043 (= res!881906 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43961 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!112250 res!881899) b!1329034))

(assert (= (and b!1329034 res!881905) b!1329037))

(assert (= (and b!1329037 res!881904) b!1329040))

(assert (= (and b!1329040 res!881903) b!1329043))

(assert (= (and b!1329043 res!881906) b!1329032))

(assert (= (and b!1329032 res!881898) b!1329036))

(assert (= (and b!1329036 res!881902) b!1329035))

(assert (= (and b!1329035 res!881900) b!1329038))

(assert (= (and b!1329038 res!881901) b!1329042))

(assert (= (and b!1329041 condMapEmpty!56452) mapIsEmpty!56452))

(assert (= (and b!1329041 (not condMapEmpty!56452)) mapNonEmpty!56452))

(get-info :version)

(assert (= (and mapNonEmpty!56452 ((_ is ValueCellFull!17361) mapValue!56452)) b!1329039))

(assert (= (and b!1329041 ((_ is ValueCellFull!17361) mapDefault!56452)) b!1329033))

(assert (= start!112250 b!1329041))

(declare-fun b_lambda!23879 () Bool)

(assert (=> (not b_lambda!23879) (not b!1329042)))

(declare-fun t!44967 () Bool)

(declare-fun tb!11833 () Bool)

(assert (=> (and start!112250 (= defaultEntry!1323 defaultEntry!1323) t!44967) tb!11833))

(declare-fun result!24729 () Bool)

(assert (=> tb!11833 (= result!24729 tp_is_empty!36519)))

(assert (=> b!1329042 t!44967))

(declare-fun b_and!49285 () Bool)

(assert (= b_and!49283 (and (=> t!44967 result!24729) b_and!49285)))

(declare-fun m!1217863 () Bool)

(assert (=> start!112250 m!1217863))

(declare-fun m!1217865 () Bool)

(assert (=> start!112250 m!1217865))

(declare-fun m!1217867 () Bool)

(assert (=> start!112250 m!1217867))

(declare-fun m!1217869 () Bool)

(assert (=> b!1329037 m!1217869))

(declare-fun m!1217871 () Bool)

(assert (=> b!1329042 m!1217871))

(declare-fun m!1217873 () Bool)

(assert (=> b!1329042 m!1217873))

(declare-fun m!1217875 () Bool)

(assert (=> b!1329042 m!1217875))

(declare-fun m!1217877 () Bool)

(assert (=> b!1329042 m!1217877))

(assert (=> b!1329042 m!1217871))

(declare-fun m!1217879 () Bool)

(assert (=> b!1329042 m!1217879))

(declare-fun m!1217881 () Bool)

(assert (=> b!1329042 m!1217881))

(declare-fun m!1217883 () Bool)

(assert (=> b!1329042 m!1217883))

(assert (=> b!1329042 m!1217873))

(assert (=> b!1329042 m!1217877))

(declare-fun m!1217885 () Bool)

(assert (=> b!1329042 m!1217885))

(declare-fun m!1217887 () Bool)

(assert (=> mapNonEmpty!56452 m!1217887))

(assert (=> b!1329036 m!1217885))

(declare-fun m!1217889 () Bool)

(assert (=> b!1329040 m!1217889))

(assert (=> b!1329035 m!1217885))

(assert (=> b!1329035 m!1217885))

(declare-fun m!1217891 () Bool)

(assert (=> b!1329035 m!1217891))

(declare-fun m!1217893 () Bool)

(assert (=> b!1329032 m!1217893))

(assert (=> b!1329032 m!1217893))

(declare-fun m!1217895 () Bool)

(assert (=> b!1329032 m!1217895))

(check-sat (not b!1329037) (not mapNonEmpty!56452) (not b_lambda!23879) (not b_next!30609) (not b!1329040) tp_is_empty!36519 (not start!112250) (not b!1329042) (not b!1329035) (not b!1329032) b_and!49285)
(check-sat b_and!49285 (not b_next!30609))
