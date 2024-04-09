; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112322 () Bool)

(assert start!112322)

(declare-fun b_free!30681 () Bool)

(declare-fun b_next!30681 () Bool)

(assert (=> start!112322 (= b_free!30681 (not b_next!30681))))

(declare-fun tp!107681 () Bool)

(declare-fun b_and!49427 () Bool)

(assert (=> start!112322 (= tp!107681 b_and!49427)))

(declare-fun b!1330400 () Bool)

(declare-fun res!882877 () Bool)

(declare-fun e!758284 () Bool)

(assert (=> b!1330400 (=> (not res!882877) (not e!758284))))

(declare-datatypes ((array!90037 0))(
  ( (array!90038 (arr!43480 (Array (_ BitVec 32) (_ BitVec 64))) (size!44031 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90037)

(declare-datatypes ((List!30993 0))(
  ( (Nil!30990) (Cons!30989 (h!32198 (_ BitVec 64)) (t!45094 List!30993)) )
))
(declare-fun arrayNoDuplicates!0 (array!90037 (_ BitVec 32) List!30993) Bool)

(assert (=> b!1330400 (= res!882877 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30990))))

(declare-fun b!1330401 () Bool)

(declare-fun e!758283 () Bool)

(declare-fun tp_is_empty!36591 () Bool)

(assert (=> b!1330401 (= e!758283 tp_is_empty!36591)))

(declare-fun res!882870 () Bool)

(assert (=> start!112322 (=> (not res!882870) (not e!758284))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112322 (= res!882870 (validMask!0 mask!1998))))

(assert (=> start!112322 e!758284))

(declare-datatypes ((V!53891 0))(
  ( (V!53892 (val!18370 Int)) )
))
(declare-datatypes ((ValueCell!17397 0))(
  ( (ValueCellFull!17397 (v!21005 V!53891)) (EmptyCell!17397) )
))
(declare-datatypes ((array!90039 0))(
  ( (array!90040 (arr!43481 (Array (_ BitVec 32) ValueCell!17397)) (size!44032 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90039)

(declare-fun e!758280 () Bool)

(declare-fun array_inv!32755 (array!90039) Bool)

(assert (=> start!112322 (and (array_inv!32755 _values!1320) e!758280)))

(assert (=> start!112322 true))

(declare-fun array_inv!32756 (array!90037) Bool)

(assert (=> start!112322 (array_inv!32756 _keys!1590)))

(assert (=> start!112322 tp!107681))

(assert (=> start!112322 tp_is_empty!36591))

(declare-fun b!1330402 () Bool)

(declare-fun res!882876 () Bool)

(assert (=> b!1330402 (=> (not res!882876) (not e!758284))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330402 (= res!882876 (validKeyInArray!0 (select (arr!43480 _keys!1590) from!1980)))))

(declare-fun b!1330403 () Bool)

(declare-fun mapRes!56560 () Bool)

(assert (=> b!1330403 (= e!758280 (and e!758283 mapRes!56560))))

(declare-fun condMapEmpty!56560 () Bool)

(declare-fun mapDefault!56560 () ValueCell!17397)

(assert (=> b!1330403 (= condMapEmpty!56560 (= (arr!43481 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17397)) mapDefault!56560)))))

(declare-fun b!1330404 () Bool)

(assert (=> b!1330404 (= e!758284 (not true))))

(declare-datatypes ((tuple2!23806 0))(
  ( (tuple2!23807 (_1!11913 (_ BitVec 64)) (_2!11913 V!53891)) )
))
(declare-datatypes ((List!30994 0))(
  ( (Nil!30991) (Cons!30990 (h!32199 tuple2!23806) (t!45095 List!30994)) )
))
(declare-datatypes ((ListLongMap!21475 0))(
  ( (ListLongMap!21476 (toList!10753 List!30994)) )
))
(declare-fun lt!591099 () ListLongMap!21475)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8853 (ListLongMap!21475 (_ BitVec 64)) Bool)

(assert (=> b!1330404 (contains!8853 lt!591099 k0!1153)))

(declare-fun lt!591101 () V!53891)

(declare-datatypes ((Unit!43717 0))(
  ( (Unit!43718) )
))
(declare-fun lt!591098 () Unit!43717)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!250 ((_ BitVec 64) (_ BitVec 64) V!53891 ListLongMap!21475) Unit!43717)

(assert (=> b!1330404 (= lt!591098 (lemmaInListMapAfterAddingDiffThenInBefore!250 k0!1153 (select (arr!43480 _keys!1590) from!1980) lt!591101 lt!591099))))

(declare-fun lt!591097 () ListLongMap!21475)

(assert (=> b!1330404 (contains!8853 lt!591097 k0!1153)))

(declare-fun lt!591100 () Unit!43717)

(declare-fun minValue!1262 () V!53891)

(assert (=> b!1330404 (= lt!591100 (lemmaInListMapAfterAddingDiffThenInBefore!250 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591097))))

(declare-fun +!4645 (ListLongMap!21475 tuple2!23806) ListLongMap!21475)

(assert (=> b!1330404 (= lt!591097 (+!4645 lt!591099 (tuple2!23807 (select (arr!43480 _keys!1590) from!1980) lt!591101)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21957 (ValueCell!17397 V!53891) V!53891)

(declare-fun dynLambda!3682 (Int (_ BitVec 64)) V!53891)

(assert (=> b!1330404 (= lt!591101 (get!21957 (select (arr!43481 _values!1320) from!1980) (dynLambda!3682 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53891)

(declare-fun getCurrentListMapNoExtraKeys!6363 (array!90037 array!90039 (_ BitVec 32) (_ BitVec 32) V!53891 V!53891 (_ BitVec 32) Int) ListLongMap!21475)

(assert (=> b!1330404 (= lt!591099 (getCurrentListMapNoExtraKeys!6363 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun mapNonEmpty!56560 () Bool)

(declare-fun tp!107680 () Bool)

(declare-fun e!758281 () Bool)

(assert (=> mapNonEmpty!56560 (= mapRes!56560 (and tp!107680 e!758281))))

(declare-fun mapKey!56560 () (_ BitVec 32))

(declare-fun mapValue!56560 () ValueCell!17397)

(declare-fun mapRest!56560 () (Array (_ BitVec 32) ValueCell!17397))

(assert (=> mapNonEmpty!56560 (= (arr!43481 _values!1320) (store mapRest!56560 mapKey!56560 mapValue!56560))))

(declare-fun b!1330405 () Bool)

(declare-fun res!882875 () Bool)

(assert (=> b!1330405 (=> (not res!882875) (not e!758284))))

(assert (=> b!1330405 (= res!882875 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1330406 () Bool)

(declare-fun res!882878 () Bool)

(assert (=> b!1330406 (=> (not res!882878) (not e!758284))))

(assert (=> b!1330406 (= res!882878 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44031 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1330407 () Bool)

(declare-fun res!882872 () Bool)

(assert (=> b!1330407 (=> (not res!882872) (not e!758284))))

(assert (=> b!1330407 (= res!882872 (not (= (select (arr!43480 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1330408 () Bool)

(assert (=> b!1330408 (= e!758281 tp_is_empty!36591)))

(declare-fun b!1330409 () Bool)

(declare-fun res!882871 () Bool)

(assert (=> b!1330409 (=> (not res!882871) (not e!758284))))

(assert (=> b!1330409 (= res!882871 (and (= (size!44032 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44031 _keys!1590) (size!44032 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1330410 () Bool)

(declare-fun res!882874 () Bool)

(assert (=> b!1330410 (=> (not res!882874) (not e!758284))))

(declare-fun getCurrentListMap!5681 (array!90037 array!90039 (_ BitVec 32) (_ BitVec 32) V!53891 V!53891 (_ BitVec 32) Int) ListLongMap!21475)

(assert (=> b!1330410 (= res!882874 (contains!8853 (getCurrentListMap!5681 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1330411 () Bool)

(declare-fun res!882873 () Bool)

(assert (=> b!1330411 (=> (not res!882873) (not e!758284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90037 (_ BitVec 32)) Bool)

(assert (=> b!1330411 (= res!882873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapIsEmpty!56560 () Bool)

(assert (=> mapIsEmpty!56560 mapRes!56560))

(assert (= (and start!112322 res!882870) b!1330409))

(assert (= (and b!1330409 res!882871) b!1330411))

(assert (= (and b!1330411 res!882873) b!1330400))

(assert (= (and b!1330400 res!882877) b!1330406))

(assert (= (and b!1330406 res!882878) b!1330410))

(assert (= (and b!1330410 res!882874) b!1330407))

(assert (= (and b!1330407 res!882872) b!1330402))

(assert (= (and b!1330402 res!882876) b!1330405))

(assert (= (and b!1330405 res!882875) b!1330404))

(assert (= (and b!1330403 condMapEmpty!56560) mapIsEmpty!56560))

(assert (= (and b!1330403 (not condMapEmpty!56560)) mapNonEmpty!56560))

(get-info :version)

(assert (= (and mapNonEmpty!56560 ((_ is ValueCellFull!17397) mapValue!56560)) b!1330408))

(assert (= (and b!1330403 ((_ is ValueCellFull!17397) mapDefault!56560)) b!1330401))

(assert (= start!112322 b!1330403))

(declare-fun b_lambda!23951 () Bool)

(assert (=> (not b_lambda!23951) (not b!1330404)))

(declare-fun t!45093 () Bool)

(declare-fun tb!11905 () Bool)

(assert (=> (and start!112322 (= defaultEntry!1323 defaultEntry!1323) t!45093) tb!11905))

(declare-fun result!24873 () Bool)

(assert (=> tb!11905 (= result!24873 tp_is_empty!36591)))

(assert (=> b!1330404 t!45093))

(declare-fun b_and!49429 () Bool)

(assert (= b_and!49427 (and (=> t!45093 result!24873) b_and!49429)))

(declare-fun m!1219103 () Bool)

(assert (=> b!1330411 m!1219103))

(declare-fun m!1219105 () Bool)

(assert (=> mapNonEmpty!56560 m!1219105))

(declare-fun m!1219107 () Bool)

(assert (=> b!1330400 m!1219107))

(declare-fun m!1219109 () Bool)

(assert (=> b!1330402 m!1219109))

(assert (=> b!1330402 m!1219109))

(declare-fun m!1219111 () Bool)

(assert (=> b!1330402 m!1219111))

(declare-fun m!1219113 () Bool)

(assert (=> b!1330404 m!1219113))

(declare-fun m!1219115 () Bool)

(assert (=> b!1330404 m!1219115))

(declare-fun m!1219117 () Bool)

(assert (=> b!1330404 m!1219117))

(declare-fun m!1219119 () Bool)

(assert (=> b!1330404 m!1219119))

(assert (=> b!1330404 m!1219115))

(declare-fun m!1219121 () Bool)

(assert (=> b!1330404 m!1219121))

(declare-fun m!1219123 () Bool)

(assert (=> b!1330404 m!1219123))

(assert (=> b!1330404 m!1219109))

(declare-fun m!1219125 () Bool)

(assert (=> b!1330404 m!1219125))

(assert (=> b!1330404 m!1219109))

(declare-fun m!1219127 () Bool)

(assert (=> b!1330404 m!1219127))

(assert (=> b!1330404 m!1219119))

(declare-fun m!1219129 () Bool)

(assert (=> b!1330404 m!1219129))

(assert (=> b!1330407 m!1219109))

(declare-fun m!1219131 () Bool)

(assert (=> start!112322 m!1219131))

(declare-fun m!1219133 () Bool)

(assert (=> start!112322 m!1219133))

(declare-fun m!1219135 () Bool)

(assert (=> start!112322 m!1219135))

(declare-fun m!1219137 () Bool)

(assert (=> b!1330410 m!1219137))

(assert (=> b!1330410 m!1219137))

(declare-fun m!1219139 () Bool)

(assert (=> b!1330410 m!1219139))

(check-sat (not start!112322) (not b!1330410) (not b_lambda!23951) b_and!49429 tp_is_empty!36591 (not b_next!30681) (not mapNonEmpty!56560) (not b!1330402) (not b!1330404) (not b!1330400) (not b!1330411))
(check-sat b_and!49429 (not b_next!30681))
