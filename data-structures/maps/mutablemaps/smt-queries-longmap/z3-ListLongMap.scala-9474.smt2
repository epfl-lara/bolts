; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112490 () Bool)

(assert start!112490)

(declare-fun b_free!30849 () Bool)

(declare-fun b_next!30849 () Bool)

(assert (=> start!112490 (= b_free!30849 (not b_next!30849))))

(declare-fun tp!108185 () Bool)

(declare-fun b_and!49709 () Bool)

(assert (=> start!112490 (= tp!108185 b_and!49709)))

(declare-fun b!1333241 () Bool)

(declare-fun res!884841 () Bool)

(declare-fun e!759542 () Bool)

(assert (=> b!1333241 (=> (not res!884841) (not e!759542))))

(declare-datatypes ((V!54115 0))(
  ( (V!54116 (val!18454 Int)) )
))
(declare-datatypes ((ValueCell!17481 0))(
  ( (ValueCellFull!17481 (v!21089 V!54115)) (EmptyCell!17481) )
))
(declare-datatypes ((array!90365 0))(
  ( (array!90366 (arr!43644 (Array (_ BitVec 32) ValueCell!17481)) (size!44195 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90365)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90367 0))(
  ( (array!90368 (arr!43645 (Array (_ BitVec 32) (_ BitVec 64))) (size!44196 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90367)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun zeroValue!1262 () V!54115)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun minValue!1262 () V!54115)

(declare-datatypes ((tuple2!23938 0))(
  ( (tuple2!23939 (_1!11979 (_ BitVec 64)) (_2!11979 V!54115)) )
))
(declare-datatypes ((List!31115 0))(
  ( (Nil!31112) (Cons!31111 (h!32320 tuple2!23938) (t!45330 List!31115)) )
))
(declare-datatypes ((ListLongMap!21607 0))(
  ( (ListLongMap!21608 (toList!10819 List!31115)) )
))
(declare-fun contains!8919 (ListLongMap!21607 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5740 (array!90367 array!90365 (_ BitVec 32) (_ BitVec 32) V!54115 V!54115 (_ BitVec 32) Int) ListLongMap!21607)

(assert (=> b!1333241 (= res!884841 (contains!8919 (getCurrentListMap!5740 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1333242 () Bool)

(declare-fun res!884845 () Bool)

(assert (=> b!1333242 (=> (not res!884845) (not e!759542))))

(assert (=> b!1333242 (= res!884845 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333243 () Bool)

(declare-fun res!884846 () Bool)

(assert (=> b!1333243 (=> (not res!884846) (not e!759542))))

(assert (=> b!1333243 (= res!884846 (not (= (select (arr!43645 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1333244 () Bool)

(declare-fun e!759540 () Bool)

(declare-fun tp_is_empty!36759 () Bool)

(assert (=> b!1333244 (= e!759540 tp_is_empty!36759)))

(declare-fun b!1333245 () Bool)

(declare-fun res!884848 () Bool)

(assert (=> b!1333245 (=> (not res!884848) (not e!759542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333245 (= res!884848 (validKeyInArray!0 (select (arr!43645 _keys!1590) from!1980)))))

(declare-fun mapIsEmpty!56812 () Bool)

(declare-fun mapRes!56812 () Bool)

(assert (=> mapIsEmpty!56812 mapRes!56812))

(declare-fun b!1333246 () Bool)

(declare-fun e!759544 () Bool)

(assert (=> b!1333246 (= e!759544 tp_is_empty!36759)))

(declare-fun b!1333248 () Bool)

(declare-fun res!884843 () Bool)

(assert (=> b!1333248 (=> (not res!884843) (not e!759542))))

(assert (=> b!1333248 (= res!884843 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44196 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1333249 () Bool)

(declare-fun res!884849 () Bool)

(assert (=> b!1333249 (=> (not res!884849) (not e!759542))))

(declare-datatypes ((List!31116 0))(
  ( (Nil!31113) (Cons!31112 (h!32321 (_ BitVec 64)) (t!45331 List!31116)) )
))
(declare-fun arrayNoDuplicates!0 (array!90367 (_ BitVec 32) List!31116) Bool)

(assert (=> b!1333249 (= res!884849 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31113))))

(declare-fun mapNonEmpty!56812 () Bool)

(declare-fun tp!108184 () Bool)

(assert (=> mapNonEmpty!56812 (= mapRes!56812 (and tp!108184 e!759540))))

(declare-fun mapValue!56812 () ValueCell!17481)

(declare-fun mapRest!56812 () (Array (_ BitVec 32) ValueCell!17481))

(declare-fun mapKey!56812 () (_ BitVec 32))

(assert (=> mapNonEmpty!56812 (= (arr!43644 _values!1320) (store mapRest!56812 mapKey!56812 mapValue!56812))))

(declare-fun b!1333250 () Bool)

(declare-fun res!884842 () Bool)

(assert (=> b!1333250 (=> (not res!884842) (not e!759542))))

(assert (=> b!1333250 (= res!884842 (and (= (size!44195 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44196 _keys!1590) (size!44195 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1333251 () Bool)

(declare-fun e!759543 () Bool)

(assert (=> b!1333251 (= e!759543 (and e!759544 mapRes!56812))))

(declare-fun condMapEmpty!56812 () Bool)

(declare-fun mapDefault!56812 () ValueCell!17481)

(assert (=> b!1333251 (= condMapEmpty!56812 (= (arr!43644 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17481)) mapDefault!56812)))))

(declare-fun b!1333252 () Bool)

(declare-fun res!884847 () Bool)

(assert (=> b!1333252 (=> (not res!884847) (not e!759542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90367 (_ BitVec 32)) Bool)

(assert (=> b!1333252 (= res!884847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1333247 () Bool)

(assert (=> b!1333247 (= e!759542 false)))

(declare-fun lt!592049 () Bool)

(declare-fun +!4686 (ListLongMap!21607 tuple2!23938) ListLongMap!21607)

(declare-fun getCurrentListMapNoExtraKeys!6404 (array!90367 array!90365 (_ BitVec 32) (_ BitVec 32) V!54115 V!54115 (_ BitVec 32) Int) ListLongMap!21607)

(declare-fun get!22054 (ValueCell!17481 V!54115) V!54115)

(declare-fun dynLambda!3723 (Int (_ BitVec 64)) V!54115)

(assert (=> b!1333247 (= lt!592049 (contains!8919 (+!4686 (getCurrentListMapNoExtraKeys!6404 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23939 (select (arr!43645 _keys!1590) from!1980) (get!22054 (select (arr!43644 _values!1320) from!1980) (dynLambda!3723 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) k0!1153))))

(declare-fun res!884844 () Bool)

(assert (=> start!112490 (=> (not res!884844) (not e!759542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112490 (= res!884844 (validMask!0 mask!1998))))

(assert (=> start!112490 e!759542))

(declare-fun array_inv!32861 (array!90365) Bool)

(assert (=> start!112490 (and (array_inv!32861 _values!1320) e!759543)))

(assert (=> start!112490 true))

(declare-fun array_inv!32862 (array!90367) Bool)

(assert (=> start!112490 (array_inv!32862 _keys!1590)))

(assert (=> start!112490 tp!108185))

(assert (=> start!112490 tp_is_empty!36759))

(assert (= (and start!112490 res!884844) b!1333250))

(assert (= (and b!1333250 res!884842) b!1333252))

(assert (= (and b!1333252 res!884847) b!1333249))

(assert (= (and b!1333249 res!884849) b!1333248))

(assert (= (and b!1333248 res!884843) b!1333241))

(assert (= (and b!1333241 res!884841) b!1333243))

(assert (= (and b!1333243 res!884846) b!1333245))

(assert (= (and b!1333245 res!884848) b!1333242))

(assert (= (and b!1333242 res!884845) b!1333247))

(assert (= (and b!1333251 condMapEmpty!56812) mapIsEmpty!56812))

(assert (= (and b!1333251 (not condMapEmpty!56812)) mapNonEmpty!56812))

(get-info :version)

(assert (= (and mapNonEmpty!56812 ((_ is ValueCellFull!17481) mapValue!56812)) b!1333244))

(assert (= (and b!1333251 ((_ is ValueCellFull!17481) mapDefault!56812)) b!1333246))

(assert (= start!112490 b!1333251))

(declare-fun b_lambda!24065 () Bool)

(assert (=> (not b_lambda!24065) (not b!1333247)))

(declare-fun t!45329 () Bool)

(declare-fun tb!12019 () Bool)

(assert (=> (and start!112490 (= defaultEntry!1323 defaultEntry!1323) t!45329) tb!12019))

(declare-fun result!25101 () Bool)

(assert (=> tb!12019 (= result!25101 tp_is_empty!36759)))

(assert (=> b!1333247 t!45329))

(declare-fun b_and!49711 () Bool)

(assert (= b_and!49709 (and (=> t!45329 result!25101) b_and!49711)))

(declare-fun m!1221851 () Bool)

(assert (=> b!1333241 m!1221851))

(assert (=> b!1333241 m!1221851))

(declare-fun m!1221853 () Bool)

(assert (=> b!1333241 m!1221853))

(declare-fun m!1221855 () Bool)

(assert (=> b!1333243 m!1221855))

(declare-fun m!1221857 () Bool)

(assert (=> b!1333247 m!1221857))

(declare-fun m!1221859 () Bool)

(assert (=> b!1333247 m!1221859))

(declare-fun m!1221861 () Bool)

(assert (=> b!1333247 m!1221861))

(declare-fun m!1221863 () Bool)

(assert (=> b!1333247 m!1221863))

(assert (=> b!1333247 m!1221857))

(declare-fun m!1221865 () Bool)

(assert (=> b!1333247 m!1221865))

(assert (=> b!1333247 m!1221861))

(declare-fun m!1221867 () Bool)

(assert (=> b!1333247 m!1221867))

(assert (=> b!1333247 m!1221859))

(assert (=> b!1333247 m!1221863))

(assert (=> b!1333247 m!1221855))

(assert (=> b!1333245 m!1221855))

(assert (=> b!1333245 m!1221855))

(declare-fun m!1221869 () Bool)

(assert (=> b!1333245 m!1221869))

(declare-fun m!1221871 () Bool)

(assert (=> b!1333252 m!1221871))

(declare-fun m!1221873 () Bool)

(assert (=> start!112490 m!1221873))

(declare-fun m!1221875 () Bool)

(assert (=> start!112490 m!1221875))

(declare-fun m!1221877 () Bool)

(assert (=> start!112490 m!1221877))

(declare-fun m!1221879 () Bool)

(assert (=> b!1333249 m!1221879))

(declare-fun m!1221881 () Bool)

(assert (=> mapNonEmpty!56812 m!1221881))

(check-sat tp_is_empty!36759 (not b!1333252) b_and!49711 (not b!1333245) (not b_next!30849) (not b!1333247) (not b!1333241) (not start!112490) (not mapNonEmpty!56812) (not b_lambda!24065) (not b!1333249))
(check-sat b_and!49711 (not b_next!30849))
