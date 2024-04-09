; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112728 () Bool)

(assert start!112728)

(declare-fun b_free!31029 () Bool)

(declare-fun b_next!31029 () Bool)

(assert (=> start!112728 (= b_free!31029 (not b_next!31029))))

(declare-fun tp!108729 () Bool)

(declare-fun b_and!50005 () Bool)

(assert (=> start!112728 (= tp!108729 b_and!50005)))

(declare-fun b!1336760 () Bool)

(declare-fun res!887231 () Bool)

(declare-fun e!761214 () Bool)

(assert (=> b!1336760 (=> (not res!887231) (not e!761214))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1336760 (= res!887231 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!54355 0))(
  ( (V!54356 (val!18544 Int)) )
))
(declare-datatypes ((ValueCell!17571 0))(
  ( (ValueCellFull!17571 (v!21182 V!54355)) (EmptyCell!17571) )
))
(declare-datatypes ((array!90709 0))(
  ( (array!90710 (arr!43815 (Array (_ BitVec 32) ValueCell!17571)) (size!44366 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90709)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-datatypes ((array!90711 0))(
  ( (array!90712 (arr!43816 (Array (_ BitVec 32) (_ BitVec 64))) (size!44367 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90711)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54355)

(declare-fun zeroValue!1262 () V!54355)

(declare-fun b!1336761 () Bool)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!24068 0))(
  ( (tuple2!24069 (_1!12044 (_ BitVec 64)) (_2!12044 V!54355)) )
))
(declare-datatypes ((List!31234 0))(
  ( (Nil!31231) (Cons!31230 (h!32439 tuple2!24068) (t!45551 List!31234)) )
))
(declare-datatypes ((ListLongMap!21737 0))(
  ( (ListLongMap!21738 (toList!10884 List!31234)) )
))
(declare-fun contains!8985 (ListLongMap!21737 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5790 (array!90711 array!90709 (_ BitVec 32) (_ BitVec 32) V!54355 V!54355 (_ BitVec 32) Int) ListLongMap!21737)

(assert (=> b!1336761 (= e!761214 (not (contains!8985 (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) k0!1153)))))

(declare-fun lt!592822 () ListLongMap!21737)

(declare-fun +!4716 (ListLongMap!21737 tuple2!24068) ListLongMap!21737)

(assert (=> b!1336761 (contains!8985 (+!4716 lt!592822 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153)))

(declare-datatypes ((Unit!43866 0))(
  ( (Unit!43867) )
))
(declare-fun lt!592823 () Unit!43866)

(declare-fun addStillContains!1194 (ListLongMap!21737 (_ BitVec 64) V!54355 (_ BitVec 64)) Unit!43866)

(assert (=> b!1336761 (= lt!592823 (addStillContains!1194 lt!592822 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k0!1153))))

(assert (=> b!1336761 (contains!8985 lt!592822 k0!1153)))

(declare-fun lt!592820 () Unit!43866)

(declare-fun lt!592824 () V!54355)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!317 ((_ BitVec 64) (_ BitVec 64) V!54355 ListLongMap!21737) Unit!43866)

(assert (=> b!1336761 (= lt!592820 (lemmaInListMapAfterAddingDiffThenInBefore!317 k0!1153 (select (arr!43816 _keys!1590) from!1980) lt!592824 lt!592822))))

(declare-fun lt!592819 () ListLongMap!21737)

(assert (=> b!1336761 (contains!8985 lt!592819 k0!1153)))

(declare-fun lt!592821 () Unit!43866)

(assert (=> b!1336761 (= lt!592821 (lemmaInListMapAfterAddingDiffThenInBefore!317 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!592819))))

(assert (=> b!1336761 (= lt!592819 (+!4716 lt!592822 (tuple2!24069 (select (arr!43816 _keys!1590) from!1980) lt!592824)))))

(declare-fun get!22147 (ValueCell!17571 V!54355) V!54355)

(declare-fun dynLambda!3753 (Int (_ BitVec 64)) V!54355)

(assert (=> b!1336761 (= lt!592824 (get!22147 (select (arr!43815 _values!1320) from!1980) (dynLambda!3753 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6439 (array!90711 array!90709 (_ BitVec 32) (_ BitVec 32) V!54355 V!54355 (_ BitVec 32) Int) ListLongMap!21737)

(assert (=> b!1336761 (= lt!592822 (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1336762 () Bool)

(declare-fun res!887229 () Bool)

(assert (=> b!1336762 (=> (not res!887229) (not e!761214))))

(assert (=> b!1336762 (= res!887229 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44367 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1336763 () Bool)

(declare-fun e!761216 () Bool)

(declare-fun tp_is_empty!36939 () Bool)

(assert (=> b!1336763 (= e!761216 tp_is_empty!36939)))

(declare-fun mapNonEmpty!57086 () Bool)

(declare-fun mapRes!57086 () Bool)

(declare-fun tp!108728 () Bool)

(assert (=> mapNonEmpty!57086 (= mapRes!57086 (and tp!108728 e!761216))))

(declare-fun mapRest!57086 () (Array (_ BitVec 32) ValueCell!17571))

(declare-fun mapValue!57086 () ValueCell!17571)

(declare-fun mapKey!57086 () (_ BitVec 32))

(assert (=> mapNonEmpty!57086 (= (arr!43815 _values!1320) (store mapRest!57086 mapKey!57086 mapValue!57086))))

(declare-fun b!1336764 () Bool)

(declare-fun res!887233 () Bool)

(assert (=> b!1336764 (=> (not res!887233) (not e!761214))))

(assert (=> b!1336764 (= res!887233 (not (= (select (arr!43816 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1336765 () Bool)

(declare-fun res!887232 () Bool)

(assert (=> b!1336765 (=> (not res!887232) (not e!761214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90711 (_ BitVec 32)) Bool)

(assert (=> b!1336765 (= res!887232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1336766 () Bool)

(declare-fun res!887227 () Bool)

(assert (=> b!1336766 (=> (not res!887227) (not e!761214))))

(declare-datatypes ((List!31235 0))(
  ( (Nil!31232) (Cons!31231 (h!32440 (_ BitVec 64)) (t!45552 List!31235)) )
))
(declare-fun arrayNoDuplicates!0 (array!90711 (_ BitVec 32) List!31235) Bool)

(assert (=> b!1336766 (= res!887227 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31232))))

(declare-fun res!887228 () Bool)

(assert (=> start!112728 (=> (not res!887228) (not e!761214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112728 (= res!887228 (validMask!0 mask!1998))))

(assert (=> start!112728 e!761214))

(declare-fun e!761218 () Bool)

(declare-fun array_inv!32971 (array!90709) Bool)

(assert (=> start!112728 (and (array_inv!32971 _values!1320) e!761218)))

(assert (=> start!112728 true))

(declare-fun array_inv!32972 (array!90711) Bool)

(assert (=> start!112728 (array_inv!32972 _keys!1590)))

(assert (=> start!112728 tp!108729))

(assert (=> start!112728 tp_is_empty!36939))

(declare-fun b!1336767 () Bool)

(declare-fun res!887230 () Bool)

(assert (=> b!1336767 (=> (not res!887230) (not e!761214))))

(assert (=> b!1336767 (= res!887230 (contains!8985 (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1336768 () Bool)

(declare-fun res!887226 () Bool)

(assert (=> b!1336768 (=> (not res!887226) (not e!761214))))

(assert (=> b!1336768 (= res!887226 (and (= (size!44366 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44367 _keys!1590) (size!44366 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1336769 () Bool)

(declare-fun e!761217 () Bool)

(assert (=> b!1336769 (= e!761218 (and e!761217 mapRes!57086))))

(declare-fun condMapEmpty!57086 () Bool)

(declare-fun mapDefault!57086 () ValueCell!17571)

(assert (=> b!1336769 (= condMapEmpty!57086 (= (arr!43815 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17571)) mapDefault!57086)))))

(declare-fun b!1336770 () Bool)

(declare-fun res!887225 () Bool)

(assert (=> b!1336770 (=> (not res!887225) (not e!761214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336770 (= res!887225 (validKeyInArray!0 (select (arr!43816 _keys!1590) from!1980)))))

(declare-fun b!1336771 () Bool)

(assert (=> b!1336771 (= e!761217 tp_is_empty!36939)))

(declare-fun mapIsEmpty!57086 () Bool)

(assert (=> mapIsEmpty!57086 mapRes!57086))

(assert (= (and start!112728 res!887228) b!1336768))

(assert (= (and b!1336768 res!887226) b!1336765))

(assert (= (and b!1336765 res!887232) b!1336766))

(assert (= (and b!1336766 res!887227) b!1336762))

(assert (= (and b!1336762 res!887229) b!1336767))

(assert (= (and b!1336767 res!887230) b!1336764))

(assert (= (and b!1336764 res!887233) b!1336770))

(assert (= (and b!1336770 res!887225) b!1336760))

(assert (= (and b!1336760 res!887231) b!1336761))

(assert (= (and b!1336769 condMapEmpty!57086) mapIsEmpty!57086))

(assert (= (and b!1336769 (not condMapEmpty!57086)) mapNonEmpty!57086))

(get-info :version)

(assert (= (and mapNonEmpty!57086 ((_ is ValueCellFull!17571) mapValue!57086)) b!1336763))

(assert (= (and b!1336769 ((_ is ValueCellFull!17571) mapDefault!57086)) b!1336771))

(assert (= start!112728 b!1336769))

(declare-fun b_lambda!24197 () Bool)

(assert (=> (not b_lambda!24197) (not b!1336761)))

(declare-fun t!45550 () Bool)

(declare-fun tb!12121 () Bool)

(assert (=> (and start!112728 (= defaultEntry!1323 defaultEntry!1323) t!45550) tb!12121))

(declare-fun result!25307 () Bool)

(assert (=> tb!12121 (= result!25307 tp_is_empty!36939)))

(assert (=> b!1336761 t!45550))

(declare-fun b_and!50007 () Bool)

(assert (= b_and!50005 (and (=> t!45550 result!25307) b_and!50007)))

(declare-fun m!1224871 () Bool)

(assert (=> b!1336766 m!1224871))

(declare-fun m!1224873 () Bool)

(assert (=> b!1336761 m!1224873))

(declare-fun m!1224875 () Bool)

(assert (=> b!1336761 m!1224875))

(declare-fun m!1224877 () Bool)

(assert (=> b!1336761 m!1224877))

(declare-fun m!1224879 () Bool)

(assert (=> b!1336761 m!1224879))

(declare-fun m!1224881 () Bool)

(assert (=> b!1336761 m!1224881))

(declare-fun m!1224883 () Bool)

(assert (=> b!1336761 m!1224883))

(declare-fun m!1224885 () Bool)

(assert (=> b!1336761 m!1224885))

(assert (=> b!1336761 m!1224881))

(declare-fun m!1224887 () Bool)

(assert (=> b!1336761 m!1224887))

(assert (=> b!1336761 m!1224873))

(declare-fun m!1224889 () Bool)

(assert (=> b!1336761 m!1224889))

(declare-fun m!1224891 () Bool)

(assert (=> b!1336761 m!1224891))

(declare-fun m!1224893 () Bool)

(assert (=> b!1336761 m!1224893))

(declare-fun m!1224895 () Bool)

(assert (=> b!1336761 m!1224895))

(declare-fun m!1224897 () Bool)

(assert (=> b!1336761 m!1224897))

(declare-fun m!1224899 () Bool)

(assert (=> b!1336761 m!1224899))

(assert (=> b!1336761 m!1224885))

(assert (=> b!1336761 m!1224877))

(declare-fun m!1224901 () Bool)

(assert (=> b!1336761 m!1224901))

(assert (=> b!1336761 m!1224893))

(declare-fun m!1224903 () Bool)

(assert (=> b!1336765 m!1224903))

(assert (=> b!1336770 m!1224893))

(assert (=> b!1336770 m!1224893))

(declare-fun m!1224905 () Bool)

(assert (=> b!1336770 m!1224905))

(declare-fun m!1224907 () Bool)

(assert (=> mapNonEmpty!57086 m!1224907))

(declare-fun m!1224909 () Bool)

(assert (=> b!1336767 m!1224909))

(assert (=> b!1336767 m!1224909))

(declare-fun m!1224911 () Bool)

(assert (=> b!1336767 m!1224911))

(assert (=> b!1336764 m!1224893))

(declare-fun m!1224913 () Bool)

(assert (=> start!112728 m!1224913))

(declare-fun m!1224915 () Bool)

(assert (=> start!112728 m!1224915))

(declare-fun m!1224917 () Bool)

(assert (=> start!112728 m!1224917))

(check-sat b_and!50007 (not mapNonEmpty!57086) (not start!112728) (not b_next!31029) (not b!1336765) tp_is_empty!36939 (not b!1336770) (not b!1336766) (not b_lambda!24197) (not b!1336761) (not b!1336767))
(check-sat b_and!50007 (not b_next!31029))
(get-model)

(declare-fun b_lambda!24201 () Bool)

(assert (= b_lambda!24197 (or (and start!112728 b_free!31029) b_lambda!24201)))

(check-sat b_and!50007 (not b_lambda!24201) (not mapNonEmpty!57086) (not start!112728) (not b_next!31029) (not b!1336765) tp_is_empty!36939 (not b!1336770) (not b!1336766) (not b!1336761) (not b!1336767))
(check-sat b_and!50007 (not b_next!31029))
(get-model)

(declare-fun d!143607 () Bool)

(declare-fun res!887267 () Bool)

(declare-fun e!761244 () Bool)

(assert (=> d!143607 (=> res!887267 e!761244)))

(assert (=> d!143607 (= res!887267 (bvsge #b00000000000000000000000000000000 (size!44367 _keys!1590)))))

(assert (=> d!143607 (= (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31232) e!761244)))

(declare-fun bm!64864 () Bool)

(declare-fun call!64867 () Bool)

(declare-fun c!125951 () Bool)

(assert (=> bm!64864 (= call!64867 (arrayNoDuplicates!0 _keys!1590 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125951 (Cons!31231 (select (arr!43816 _keys!1590) #b00000000000000000000000000000000) Nil!31232) Nil!31232)))))

(declare-fun b!1336822 () Bool)

(declare-fun e!761245 () Bool)

(assert (=> b!1336822 (= e!761244 e!761245)))

(declare-fun res!887269 () Bool)

(assert (=> b!1336822 (=> (not res!887269) (not e!761245))))

(declare-fun e!761243 () Bool)

(assert (=> b!1336822 (= res!887269 (not e!761243))))

(declare-fun res!887268 () Bool)

(assert (=> b!1336822 (=> (not res!887268) (not e!761243))))

(assert (=> b!1336822 (= res!887268 (validKeyInArray!0 (select (arr!43816 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1336823 () Bool)

(declare-fun e!761242 () Bool)

(assert (=> b!1336823 (= e!761245 e!761242)))

(assert (=> b!1336823 (= c!125951 (validKeyInArray!0 (select (arr!43816 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1336824 () Bool)

(declare-fun contains!8987 (List!31235 (_ BitVec 64)) Bool)

(assert (=> b!1336824 (= e!761243 (contains!8987 Nil!31232 (select (arr!43816 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1336825 () Bool)

(assert (=> b!1336825 (= e!761242 call!64867)))

(declare-fun b!1336826 () Bool)

(assert (=> b!1336826 (= e!761242 call!64867)))

(assert (= (and d!143607 (not res!887267)) b!1336822))

(assert (= (and b!1336822 res!887268) b!1336824))

(assert (= (and b!1336822 res!887269) b!1336823))

(assert (= (and b!1336823 c!125951) b!1336826))

(assert (= (and b!1336823 (not c!125951)) b!1336825))

(assert (= (or b!1336826 b!1336825) bm!64864))

(declare-fun m!1224967 () Bool)

(assert (=> bm!64864 m!1224967))

(declare-fun m!1224969 () Bool)

(assert (=> bm!64864 m!1224969))

(assert (=> b!1336822 m!1224967))

(assert (=> b!1336822 m!1224967))

(declare-fun m!1224971 () Bool)

(assert (=> b!1336822 m!1224971))

(assert (=> b!1336823 m!1224967))

(assert (=> b!1336823 m!1224967))

(assert (=> b!1336823 m!1224971))

(assert (=> b!1336824 m!1224967))

(assert (=> b!1336824 m!1224967))

(declare-fun m!1224973 () Bool)

(assert (=> b!1336824 m!1224973))

(assert (=> b!1336766 d!143607))

(declare-fun d!143609 () Bool)

(assert (=> d!143609 (= (validMask!0 mask!1998) (and (or (= mask!1998 #b00000000000000000000000000000111) (= mask!1998 #b00000000000000000000000000001111) (= mask!1998 #b00000000000000000000000000011111) (= mask!1998 #b00000000000000000000000000111111) (= mask!1998 #b00000000000000000000000001111111) (= mask!1998 #b00000000000000000000000011111111) (= mask!1998 #b00000000000000000000000111111111) (= mask!1998 #b00000000000000000000001111111111) (= mask!1998 #b00000000000000000000011111111111) (= mask!1998 #b00000000000000000000111111111111) (= mask!1998 #b00000000000000000001111111111111) (= mask!1998 #b00000000000000000011111111111111) (= mask!1998 #b00000000000000000111111111111111) (= mask!1998 #b00000000000000001111111111111111) (= mask!1998 #b00000000000000011111111111111111) (= mask!1998 #b00000000000000111111111111111111) (= mask!1998 #b00000000000001111111111111111111) (= mask!1998 #b00000000000011111111111111111111) (= mask!1998 #b00000000000111111111111111111111) (= mask!1998 #b00000000001111111111111111111111) (= mask!1998 #b00000000011111111111111111111111) (= mask!1998 #b00000000111111111111111111111111) (= mask!1998 #b00000001111111111111111111111111) (= mask!1998 #b00000011111111111111111111111111) (= mask!1998 #b00000111111111111111111111111111) (= mask!1998 #b00001111111111111111111111111111) (= mask!1998 #b00011111111111111111111111111111) (= mask!1998 #b00111111111111111111111111111111)) (bvsle mask!1998 #b00111111111111111111111111111111)))))

(assert (=> start!112728 d!143609))

(declare-fun d!143611 () Bool)

(assert (=> d!143611 (= (array_inv!32971 _values!1320) (bvsge (size!44366 _values!1320) #b00000000000000000000000000000000))))

(assert (=> start!112728 d!143611))

(declare-fun d!143613 () Bool)

(assert (=> d!143613 (= (array_inv!32972 _keys!1590) (bvsge (size!44367 _keys!1590) #b00000000000000000000000000000000))))

(assert (=> start!112728 d!143613))

(declare-fun d!143615 () Bool)

(assert (=> d!143615 (= (validKeyInArray!0 (select (arr!43816 _keys!1590) from!1980)) (and (not (= (select (arr!43816 _keys!1590) from!1980) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43816 _keys!1590) from!1980) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1336770 d!143615))

(declare-fun d!143617 () Bool)

(declare-fun e!761250 () Bool)

(assert (=> d!143617 e!761250))

(declare-fun res!887272 () Bool)

(assert (=> d!143617 (=> res!887272 e!761250)))

(declare-fun lt!592852 () Bool)

(assert (=> d!143617 (= res!887272 (not lt!592852))))

(declare-fun lt!592854 () Bool)

(assert (=> d!143617 (= lt!592852 lt!592854)))

(declare-fun lt!592851 () Unit!43866)

(declare-fun e!761251 () Unit!43866)

(assert (=> d!143617 (= lt!592851 e!761251)))

(declare-fun c!125954 () Bool)

(assert (=> d!143617 (= c!125954 lt!592854)))

(declare-fun containsKey!736 (List!31234 (_ BitVec 64)) Bool)

(assert (=> d!143617 (= lt!592854 (containsKey!736 (toList!10884 lt!592819) k0!1153))))

(assert (=> d!143617 (= (contains!8985 lt!592819 k0!1153) lt!592852)))

(declare-fun b!1336833 () Bool)

(declare-fun lt!592853 () Unit!43866)

(assert (=> b!1336833 (= e!761251 lt!592853)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!481 (List!31234 (_ BitVec 64)) Unit!43866)

(assert (=> b!1336833 (= lt!592853 (lemmaContainsKeyImpliesGetValueByKeyDefined!481 (toList!10884 lt!592819) k0!1153))))

(declare-datatypes ((Option!769 0))(
  ( (Some!768 (v!21184 V!54355)) (None!767) )
))
(declare-fun isDefined!521 (Option!769) Bool)

(declare-fun getValueByKey!718 (List!31234 (_ BitVec 64)) Option!769)

(assert (=> b!1336833 (isDefined!521 (getValueByKey!718 (toList!10884 lt!592819) k0!1153))))

(declare-fun b!1336834 () Bool)

(declare-fun Unit!43868 () Unit!43866)

(assert (=> b!1336834 (= e!761251 Unit!43868)))

(declare-fun b!1336835 () Bool)

(assert (=> b!1336835 (= e!761250 (isDefined!521 (getValueByKey!718 (toList!10884 lt!592819) k0!1153)))))

(assert (= (and d!143617 c!125954) b!1336833))

(assert (= (and d!143617 (not c!125954)) b!1336834))

(assert (= (and d!143617 (not res!887272)) b!1336835))

(declare-fun m!1224975 () Bool)

(assert (=> d!143617 m!1224975))

(declare-fun m!1224977 () Bool)

(assert (=> b!1336833 m!1224977))

(declare-fun m!1224979 () Bool)

(assert (=> b!1336833 m!1224979))

(assert (=> b!1336833 m!1224979))

(declare-fun m!1224981 () Bool)

(assert (=> b!1336833 m!1224981))

(assert (=> b!1336835 m!1224979))

(assert (=> b!1336835 m!1224979))

(assert (=> b!1336835 m!1224981))

(assert (=> b!1336761 d!143617))

(declare-fun d!143619 () Bool)

(assert (=> d!143619 (contains!8985 lt!592819 k0!1153)))

(declare-fun lt!592857 () Unit!43866)

(declare-fun choose!1969 ((_ BitVec 64) (_ BitVec 64) V!54355 ListLongMap!21737) Unit!43866)

(assert (=> d!143619 (= lt!592857 (choose!1969 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!592819))))

(assert (=> d!143619 (contains!8985 (+!4716 lt!592819 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153)))

(assert (=> d!143619 (= (lemmaInListMapAfterAddingDiffThenInBefore!317 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!592819) lt!592857)))

(declare-fun bs!38276 () Bool)

(assert (= bs!38276 d!143619))

(assert (=> bs!38276 m!1224875))

(declare-fun m!1224983 () Bool)

(assert (=> bs!38276 m!1224983))

(declare-fun m!1224985 () Bool)

(assert (=> bs!38276 m!1224985))

(assert (=> bs!38276 m!1224985))

(declare-fun m!1224987 () Bool)

(assert (=> bs!38276 m!1224987))

(assert (=> b!1336761 d!143619))

(declare-fun d!143621 () Bool)

(assert (=> d!143621 (contains!8985 (+!4716 lt!592822 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153)))

(declare-fun lt!592860 () Unit!43866)

(declare-fun choose!1970 (ListLongMap!21737 (_ BitVec 64) V!54355 (_ BitVec 64)) Unit!43866)

(assert (=> d!143621 (= lt!592860 (choose!1970 lt!592822 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k0!1153))))

(assert (=> d!143621 (contains!8985 lt!592822 k0!1153)))

(assert (=> d!143621 (= (addStillContains!1194 lt!592822 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k0!1153) lt!592860)))

(declare-fun bs!38277 () Bool)

(assert (= bs!38277 d!143621))

(assert (=> bs!38277 m!1224877))

(assert (=> bs!38277 m!1224877))

(assert (=> bs!38277 m!1224879))

(declare-fun m!1224989 () Bool)

(assert (=> bs!38277 m!1224989))

(assert (=> bs!38277 m!1224899))

(assert (=> b!1336761 d!143621))

(declare-fun d!143623 () Bool)

(declare-fun e!761254 () Bool)

(assert (=> d!143623 e!761254))

(declare-fun res!887278 () Bool)

(assert (=> d!143623 (=> (not res!887278) (not e!761254))))

(declare-fun lt!592872 () ListLongMap!21737)

(assert (=> d!143623 (= res!887278 (contains!8985 lt!592872 (_1!12044 (tuple2!24069 (select (arr!43816 _keys!1590) from!1980) lt!592824))))))

(declare-fun lt!592869 () List!31234)

(assert (=> d!143623 (= lt!592872 (ListLongMap!21738 lt!592869))))

(declare-fun lt!592870 () Unit!43866)

(declare-fun lt!592871 () Unit!43866)

(assert (=> d!143623 (= lt!592870 lt!592871)))

(assert (=> d!143623 (= (getValueByKey!718 lt!592869 (_1!12044 (tuple2!24069 (select (arr!43816 _keys!1590) from!1980) lt!592824))) (Some!768 (_2!12044 (tuple2!24069 (select (arr!43816 _keys!1590) from!1980) lt!592824))))))

(declare-fun lemmaContainsTupThenGetReturnValue!361 (List!31234 (_ BitVec 64) V!54355) Unit!43866)

(assert (=> d!143623 (= lt!592871 (lemmaContainsTupThenGetReturnValue!361 lt!592869 (_1!12044 (tuple2!24069 (select (arr!43816 _keys!1590) from!1980) lt!592824)) (_2!12044 (tuple2!24069 (select (arr!43816 _keys!1590) from!1980) lt!592824))))))

(declare-fun insertStrictlySorted!490 (List!31234 (_ BitVec 64) V!54355) List!31234)

(assert (=> d!143623 (= lt!592869 (insertStrictlySorted!490 (toList!10884 lt!592822) (_1!12044 (tuple2!24069 (select (arr!43816 _keys!1590) from!1980) lt!592824)) (_2!12044 (tuple2!24069 (select (arr!43816 _keys!1590) from!1980) lt!592824))))))

(assert (=> d!143623 (= (+!4716 lt!592822 (tuple2!24069 (select (arr!43816 _keys!1590) from!1980) lt!592824)) lt!592872)))

(declare-fun b!1336841 () Bool)

(declare-fun res!887277 () Bool)

(assert (=> b!1336841 (=> (not res!887277) (not e!761254))))

(assert (=> b!1336841 (= res!887277 (= (getValueByKey!718 (toList!10884 lt!592872) (_1!12044 (tuple2!24069 (select (arr!43816 _keys!1590) from!1980) lt!592824))) (Some!768 (_2!12044 (tuple2!24069 (select (arr!43816 _keys!1590) from!1980) lt!592824)))))))

(declare-fun b!1336842 () Bool)

(declare-fun contains!8988 (List!31234 tuple2!24068) Bool)

(assert (=> b!1336842 (= e!761254 (contains!8988 (toList!10884 lt!592872) (tuple2!24069 (select (arr!43816 _keys!1590) from!1980) lt!592824)))))

(assert (= (and d!143623 res!887278) b!1336841))

(assert (= (and b!1336841 res!887277) b!1336842))

(declare-fun m!1224991 () Bool)

(assert (=> d!143623 m!1224991))

(declare-fun m!1224993 () Bool)

(assert (=> d!143623 m!1224993))

(declare-fun m!1224995 () Bool)

(assert (=> d!143623 m!1224995))

(declare-fun m!1224997 () Bool)

(assert (=> d!143623 m!1224997))

(declare-fun m!1224999 () Bool)

(assert (=> b!1336841 m!1224999))

(declare-fun m!1225001 () Bool)

(assert (=> b!1336842 m!1225001))

(assert (=> b!1336761 d!143623))

(declare-fun d!143625 () Bool)

(declare-fun e!761255 () Bool)

(assert (=> d!143625 e!761255))

(declare-fun res!887279 () Bool)

(assert (=> d!143625 (=> res!887279 e!761255)))

(declare-fun lt!592874 () Bool)

(assert (=> d!143625 (= res!887279 (not lt!592874))))

(declare-fun lt!592876 () Bool)

(assert (=> d!143625 (= lt!592874 lt!592876)))

(declare-fun lt!592873 () Unit!43866)

(declare-fun e!761256 () Unit!43866)

(assert (=> d!143625 (= lt!592873 e!761256)))

(declare-fun c!125955 () Bool)

(assert (=> d!143625 (= c!125955 lt!592876)))

(assert (=> d!143625 (= lt!592876 (containsKey!736 (toList!10884 (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153))))

(assert (=> d!143625 (= (contains!8985 (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) k0!1153) lt!592874)))

(declare-fun b!1336843 () Bool)

(declare-fun lt!592875 () Unit!43866)

(assert (=> b!1336843 (= e!761256 lt!592875)))

(assert (=> b!1336843 (= lt!592875 (lemmaContainsKeyImpliesGetValueByKeyDefined!481 (toList!10884 (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153))))

(assert (=> b!1336843 (isDefined!521 (getValueByKey!718 (toList!10884 (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153))))

(declare-fun b!1336844 () Bool)

(declare-fun Unit!43869 () Unit!43866)

(assert (=> b!1336844 (= e!761256 Unit!43869)))

(declare-fun b!1336845 () Bool)

(assert (=> b!1336845 (= e!761255 (isDefined!521 (getValueByKey!718 (toList!10884 (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153)))))

(assert (= (and d!143625 c!125955) b!1336843))

(assert (= (and d!143625 (not c!125955)) b!1336844))

(assert (= (and d!143625 (not res!887279)) b!1336845))

(declare-fun m!1225003 () Bool)

(assert (=> d!143625 m!1225003))

(declare-fun m!1225005 () Bool)

(assert (=> b!1336843 m!1225005))

(declare-fun m!1225007 () Bool)

(assert (=> b!1336843 m!1225007))

(assert (=> b!1336843 m!1225007))

(declare-fun m!1225009 () Bool)

(assert (=> b!1336843 m!1225009))

(assert (=> b!1336845 m!1225007))

(assert (=> b!1336845 m!1225007))

(assert (=> b!1336845 m!1225009))

(assert (=> b!1336761 d!143625))

(declare-fun bm!64879 () Bool)

(declare-fun call!64887 () Bool)

(declare-fun lt!592936 () ListLongMap!21737)

(assert (=> bm!64879 (= call!64887 (contains!8985 lt!592936 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1336888 () Bool)

(declare-fun e!761284 () Bool)

(assert (=> b!1336888 (= e!761284 (validKeyInArray!0 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun b!1336889 () Bool)

(declare-fun e!761293 () Bool)

(assert (=> b!1336889 (= e!761293 (validKeyInArray!0 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun b!1336891 () Bool)

(declare-fun res!887304 () Bool)

(declare-fun e!761286 () Bool)

(assert (=> b!1336891 (=> (not res!887304) (not e!761286))))

(declare-fun e!761287 () Bool)

(assert (=> b!1336891 (= res!887304 e!761287)))

(declare-fun res!887298 () Bool)

(assert (=> b!1336891 (=> res!887298 e!761287)))

(assert (=> b!1336891 (= res!887298 (not e!761284))))

(declare-fun res!887302 () Bool)

(assert (=> b!1336891 (=> (not res!887302) (not e!761284))))

(assert (=> b!1336891 (= res!887302 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44367 _keys!1590)))))

(declare-fun b!1336892 () Bool)

(declare-fun e!761288 () Unit!43866)

(declare-fun lt!592931 () Unit!43866)

(assert (=> b!1336892 (= e!761288 lt!592931)))

(declare-fun lt!592923 () ListLongMap!21737)

(assert (=> b!1336892 (= lt!592923 (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun lt!592925 () (_ BitVec 64))

(assert (=> b!1336892 (= lt!592925 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!592937 () (_ BitVec 64))

(assert (=> b!1336892 (= lt!592937 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(declare-fun lt!592929 () Unit!43866)

(assert (=> b!1336892 (= lt!592929 (addStillContains!1194 lt!592923 lt!592925 zeroValue!1262 lt!592937))))

(assert (=> b!1336892 (contains!8985 (+!4716 lt!592923 (tuple2!24069 lt!592925 zeroValue!1262)) lt!592937)))

(declare-fun lt!592940 () Unit!43866)

(assert (=> b!1336892 (= lt!592940 lt!592929)))

(declare-fun lt!592942 () ListLongMap!21737)

(assert (=> b!1336892 (= lt!592942 (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun lt!592926 () (_ BitVec 64))

(assert (=> b!1336892 (= lt!592926 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!592935 () (_ BitVec 64))

(assert (=> b!1336892 (= lt!592935 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(declare-fun lt!592930 () Unit!43866)

(declare-fun addApplyDifferent!571 (ListLongMap!21737 (_ BitVec 64) V!54355 (_ BitVec 64)) Unit!43866)

(assert (=> b!1336892 (= lt!592930 (addApplyDifferent!571 lt!592942 lt!592926 minValue!1262 lt!592935))))

(declare-fun apply!1068 (ListLongMap!21737 (_ BitVec 64)) V!54355)

(assert (=> b!1336892 (= (apply!1068 (+!4716 lt!592942 (tuple2!24069 lt!592926 minValue!1262)) lt!592935) (apply!1068 lt!592942 lt!592935))))

(declare-fun lt!592921 () Unit!43866)

(assert (=> b!1336892 (= lt!592921 lt!592930)))

(declare-fun lt!592924 () ListLongMap!21737)

(assert (=> b!1336892 (= lt!592924 (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun lt!592938 () (_ BitVec 64))

(assert (=> b!1336892 (= lt!592938 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!592928 () (_ BitVec 64))

(assert (=> b!1336892 (= lt!592928 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(declare-fun lt!592932 () Unit!43866)

(assert (=> b!1336892 (= lt!592932 (addApplyDifferent!571 lt!592924 lt!592938 zeroValue!1262 lt!592928))))

(assert (=> b!1336892 (= (apply!1068 (+!4716 lt!592924 (tuple2!24069 lt!592938 zeroValue!1262)) lt!592928) (apply!1068 lt!592924 lt!592928))))

(declare-fun lt!592934 () Unit!43866)

(assert (=> b!1336892 (= lt!592934 lt!592932)))

(declare-fun lt!592922 () ListLongMap!21737)

(assert (=> b!1336892 (= lt!592922 (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun lt!592941 () (_ BitVec 64))

(assert (=> b!1336892 (= lt!592941 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!592939 () (_ BitVec 64))

(assert (=> b!1336892 (= lt!592939 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(assert (=> b!1336892 (= lt!592931 (addApplyDifferent!571 lt!592922 lt!592941 minValue!1262 lt!592939))))

(assert (=> b!1336892 (= (apply!1068 (+!4716 lt!592922 (tuple2!24069 lt!592941 minValue!1262)) lt!592939) (apply!1068 lt!592922 lt!592939))))

(declare-fun bm!64880 () Bool)

(declare-fun call!64883 () ListLongMap!21737)

(declare-fun call!64884 () ListLongMap!21737)

(assert (=> bm!64880 (= call!64883 call!64884)))

(declare-fun b!1336893 () Bool)

(declare-fun e!761291 () ListLongMap!21737)

(assert (=> b!1336893 (= e!761291 call!64883)))

(declare-fun b!1336894 () Bool)

(declare-fun e!761290 () Bool)

(assert (=> b!1336894 (= e!761290 (= (apply!1068 lt!592936 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1262))))

(declare-fun b!1336895 () Bool)

(declare-fun e!761289 () Bool)

(assert (=> b!1336895 (= e!761286 e!761289)))

(declare-fun c!125968 () Bool)

(assert (=> b!1336895 (= c!125968 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!64881 () Bool)

(declare-fun call!64882 () ListLongMap!21737)

(assert (=> bm!64881 (= call!64882 (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1336896 () Bool)

(declare-fun res!887299 () Bool)

(assert (=> b!1336896 (=> (not res!887299) (not e!761286))))

(declare-fun e!761295 () Bool)

(assert (=> b!1336896 (= res!887299 e!761295)))

(declare-fun c!125972 () Bool)

(assert (=> b!1336896 (= c!125972 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1336897 () Bool)

(declare-fun e!761292 () ListLongMap!21737)

(declare-fun e!761285 () ListLongMap!21737)

(assert (=> b!1336897 (= e!761292 e!761285)))

(declare-fun c!125969 () Bool)

(assert (=> b!1336897 (= c!125969 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1336898 () Bool)

(assert (=> b!1336898 (= e!761292 (+!4716 call!64884 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(declare-fun b!1336899 () Bool)

(assert (=> b!1336899 (= e!761295 e!761290)))

(declare-fun res!887300 () Bool)

(declare-fun call!64888 () Bool)

(assert (=> b!1336899 (= res!887300 call!64888)))

(assert (=> b!1336899 (=> (not res!887300) (not e!761290))))

(declare-fun b!1336900 () Bool)

(declare-fun e!761283 () Bool)

(assert (=> b!1336900 (= e!761287 e!761283)))

(declare-fun res!887303 () Bool)

(assert (=> b!1336900 (=> (not res!887303) (not e!761283))))

(assert (=> b!1336900 (= res!887303 (contains!8985 lt!592936 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1336900 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44367 _keys!1590)))))

(declare-fun bm!64882 () Bool)

(declare-fun call!64885 () ListLongMap!21737)

(declare-fun call!64886 () ListLongMap!21737)

(assert (=> bm!64882 (= call!64885 call!64886)))

(declare-fun b!1336890 () Bool)

(declare-fun c!125973 () Bool)

(assert (=> b!1336890 (= c!125973 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1336890 (= e!761285 e!761291)))

(declare-fun d!143627 () Bool)

(assert (=> d!143627 e!761286))

(declare-fun res!887306 () Bool)

(assert (=> d!143627 (=> (not res!887306) (not e!761286))))

(assert (=> d!143627 (= res!887306 (or (bvsge (bvadd #b00000000000000000000000000000001 from!1980) (size!44367 _keys!1590)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44367 _keys!1590)))))))

(declare-fun lt!592933 () ListLongMap!21737)

(assert (=> d!143627 (= lt!592936 lt!592933)))

(declare-fun lt!592927 () Unit!43866)

(assert (=> d!143627 (= lt!592927 e!761288)))

(declare-fun c!125971 () Bool)

(assert (=> d!143627 (= c!125971 e!761293)))

(declare-fun res!887301 () Bool)

(assert (=> d!143627 (=> (not res!887301) (not e!761293))))

(assert (=> d!143627 (= res!887301 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44367 _keys!1590)))))

(assert (=> d!143627 (= lt!592933 e!761292)))

(declare-fun c!125970 () Bool)

(assert (=> d!143627 (= c!125970 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!143627 (validMask!0 mask!1998)))

(assert (=> d!143627 (= (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) lt!592936)))

(declare-fun b!1336901 () Bool)

(assert (=> b!1336901 (= e!761283 (= (apply!1068 lt!592936 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (get!22147 (select (arr!43815 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3753 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1336901 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44366 _values!1320)))))

(assert (=> b!1336901 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44367 _keys!1590)))))

(declare-fun b!1336902 () Bool)

(assert (=> b!1336902 (= e!761291 call!64885)))

(declare-fun b!1336903 () Bool)

(assert (=> b!1336903 (= e!761295 (not call!64888))))

(declare-fun bm!64883 () Bool)

(assert (=> bm!64883 (= call!64884 (+!4716 (ite c!125970 call!64882 (ite c!125969 call!64886 call!64885)) (ite (or c!125970 c!125969) (tuple2!24069 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun b!1336904 () Bool)

(declare-fun e!761294 () Bool)

(assert (=> b!1336904 (= e!761294 (= (apply!1068 lt!592936 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1262))))

(declare-fun b!1336905 () Bool)

(assert (=> b!1336905 (= e!761289 (not call!64887))))

(declare-fun b!1336906 () Bool)

(assert (=> b!1336906 (= e!761285 call!64883)))

(declare-fun b!1336907 () Bool)

(assert (=> b!1336907 (= e!761289 e!761294)))

(declare-fun res!887305 () Bool)

(assert (=> b!1336907 (= res!887305 call!64887)))

(assert (=> b!1336907 (=> (not res!887305) (not e!761294))))

(declare-fun bm!64884 () Bool)

(assert (=> bm!64884 (= call!64888 (contains!8985 lt!592936 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64885 () Bool)

(assert (=> bm!64885 (= call!64886 call!64882)))

(declare-fun b!1336908 () Bool)

(declare-fun Unit!43870 () Unit!43866)

(assert (=> b!1336908 (= e!761288 Unit!43870)))

(assert (= (and d!143627 c!125970) b!1336898))

(assert (= (and d!143627 (not c!125970)) b!1336897))

(assert (= (and b!1336897 c!125969) b!1336906))

(assert (= (and b!1336897 (not c!125969)) b!1336890))

(assert (= (and b!1336890 c!125973) b!1336893))

(assert (= (and b!1336890 (not c!125973)) b!1336902))

(assert (= (or b!1336893 b!1336902) bm!64882))

(assert (= (or b!1336906 bm!64882) bm!64885))

(assert (= (or b!1336906 b!1336893) bm!64880))

(assert (= (or b!1336898 bm!64885) bm!64881))

(assert (= (or b!1336898 bm!64880) bm!64883))

(assert (= (and d!143627 res!887301) b!1336889))

(assert (= (and d!143627 c!125971) b!1336892))

(assert (= (and d!143627 (not c!125971)) b!1336908))

(assert (= (and d!143627 res!887306) b!1336891))

(assert (= (and b!1336891 res!887302) b!1336888))

(assert (= (and b!1336891 (not res!887298)) b!1336900))

(assert (= (and b!1336900 res!887303) b!1336901))

(assert (= (and b!1336891 res!887304) b!1336896))

(assert (= (and b!1336896 c!125972) b!1336899))

(assert (= (and b!1336896 (not c!125972)) b!1336903))

(assert (= (and b!1336899 res!887300) b!1336894))

(assert (= (or b!1336899 b!1336903) bm!64884))

(assert (= (and b!1336896 res!887299) b!1336895))

(assert (= (and b!1336895 c!125968) b!1336907))

(assert (= (and b!1336895 (not c!125968)) b!1336905))

(assert (= (and b!1336907 res!887305) b!1336904))

(assert (= (or b!1336907 b!1336905) bm!64879))

(declare-fun b_lambda!24203 () Bool)

(assert (=> (not b_lambda!24203) (not b!1336901)))

(assert (=> b!1336901 t!45550))

(declare-fun b_and!50013 () Bool)

(assert (= b_and!50007 (and (=> t!45550 result!25307) b_and!50013)))

(declare-fun m!1225011 () Bool)

(assert (=> b!1336904 m!1225011))

(assert (=> d!143627 m!1224913))

(declare-fun m!1225013 () Bool)

(assert (=> bm!64879 m!1225013))

(declare-fun m!1225015 () Bool)

(assert (=> b!1336894 m!1225015))

(declare-fun m!1225017 () Bool)

(assert (=> b!1336892 m!1225017))

(declare-fun m!1225019 () Bool)

(assert (=> b!1336892 m!1225019))

(declare-fun m!1225021 () Bool)

(assert (=> b!1336892 m!1225021))

(declare-fun m!1225023 () Bool)

(assert (=> b!1336892 m!1225023))

(declare-fun m!1225025 () Bool)

(assert (=> b!1336892 m!1225025))

(declare-fun m!1225027 () Bool)

(assert (=> b!1336892 m!1225027))

(assert (=> b!1336892 m!1224897))

(declare-fun m!1225029 () Bool)

(assert (=> b!1336892 m!1225029))

(declare-fun m!1225031 () Bool)

(assert (=> b!1336892 m!1225031))

(declare-fun m!1225033 () Bool)

(assert (=> b!1336892 m!1225033))

(declare-fun m!1225035 () Bool)

(assert (=> b!1336892 m!1225035))

(declare-fun m!1225037 () Bool)

(assert (=> b!1336892 m!1225037))

(declare-fun m!1225039 () Bool)

(assert (=> b!1336892 m!1225039))

(assert (=> b!1336892 m!1225017))

(assert (=> b!1336892 m!1225023))

(assert (=> b!1336892 m!1225027))

(declare-fun m!1225041 () Bool)

(assert (=> b!1336892 m!1225041))

(declare-fun m!1225043 () Bool)

(assert (=> b!1336892 m!1225043))

(assert (=> b!1336892 m!1225037))

(declare-fun m!1225045 () Bool)

(assert (=> b!1336892 m!1225045))

(declare-fun m!1225047 () Bool)

(assert (=> b!1336892 m!1225047))

(declare-fun m!1225049 () Bool)

(assert (=> bm!64883 m!1225049))

(assert (=> b!1336889 m!1225021))

(assert (=> b!1336889 m!1225021))

(declare-fun m!1225051 () Bool)

(assert (=> b!1336889 m!1225051))

(assert (=> b!1336888 m!1225021))

(assert (=> b!1336888 m!1225021))

(assert (=> b!1336888 m!1225051))

(assert (=> bm!64881 m!1224897))

(declare-fun m!1225053 () Bool)

(assert (=> b!1336898 m!1225053))

(assert (=> b!1336900 m!1225021))

(assert (=> b!1336900 m!1225021))

(declare-fun m!1225055 () Bool)

(assert (=> b!1336900 m!1225055))

(assert (=> b!1336901 m!1225021))

(assert (=> b!1336901 m!1225021))

(declare-fun m!1225057 () Bool)

(assert (=> b!1336901 m!1225057))

(assert (=> b!1336901 m!1224881))

(declare-fun m!1225059 () Bool)

(assert (=> b!1336901 m!1225059))

(assert (=> b!1336901 m!1225059))

(assert (=> b!1336901 m!1224881))

(declare-fun m!1225061 () Bool)

(assert (=> b!1336901 m!1225061))

(declare-fun m!1225063 () Bool)

(assert (=> bm!64884 m!1225063))

(assert (=> b!1336761 d!143627))

(declare-fun d!143629 () Bool)

(declare-fun c!125976 () Bool)

(assert (=> d!143629 (= c!125976 ((_ is ValueCellFull!17571) (select (arr!43815 _values!1320) from!1980)))))

(declare-fun e!761298 () V!54355)

(assert (=> d!143629 (= (get!22147 (select (arr!43815 _values!1320) from!1980) (dynLambda!3753 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)) e!761298)))

(declare-fun b!1336913 () Bool)

(declare-fun get!22148 (ValueCell!17571 V!54355) V!54355)

(assert (=> b!1336913 (= e!761298 (get!22148 (select (arr!43815 _values!1320) from!1980) (dynLambda!3753 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1336914 () Bool)

(declare-fun get!22149 (ValueCell!17571 V!54355) V!54355)

(assert (=> b!1336914 (= e!761298 (get!22149 (select (arr!43815 _values!1320) from!1980) (dynLambda!3753 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143629 c!125976) b!1336913))

(assert (= (and d!143629 (not c!125976)) b!1336914))

(assert (=> b!1336913 m!1224885))

(assert (=> b!1336913 m!1224881))

(declare-fun m!1225065 () Bool)

(assert (=> b!1336913 m!1225065))

(assert (=> b!1336914 m!1224885))

(assert (=> b!1336914 m!1224881))

(declare-fun m!1225067 () Bool)

(assert (=> b!1336914 m!1225067))

(assert (=> b!1336761 d!143629))

(declare-fun d!143631 () Bool)

(declare-fun e!761299 () Bool)

(assert (=> d!143631 e!761299))

(declare-fun res!887308 () Bool)

(assert (=> d!143631 (=> (not res!887308) (not e!761299))))

(declare-fun lt!592946 () ListLongMap!21737)

(assert (=> d!143631 (= res!887308 (contains!8985 lt!592946 (_1!12044 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun lt!592943 () List!31234)

(assert (=> d!143631 (= lt!592946 (ListLongMap!21738 lt!592943))))

(declare-fun lt!592944 () Unit!43866)

(declare-fun lt!592945 () Unit!43866)

(assert (=> d!143631 (= lt!592944 lt!592945)))

(assert (=> d!143631 (= (getValueByKey!718 lt!592943 (_1!12044 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (Some!768 (_2!12044 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143631 (= lt!592945 (lemmaContainsTupThenGetReturnValue!361 lt!592943 (_1!12044 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12044 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143631 (= lt!592943 (insertStrictlySorted!490 (toList!10884 lt!592822) (_1!12044 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12044 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143631 (= (+!4716 lt!592822 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) lt!592946)))

(declare-fun b!1336915 () Bool)

(declare-fun res!887307 () Bool)

(assert (=> b!1336915 (=> (not res!887307) (not e!761299))))

(assert (=> b!1336915 (= res!887307 (= (getValueByKey!718 (toList!10884 lt!592946) (_1!12044 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (Some!768 (_2!12044 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(declare-fun b!1336916 () Bool)

(assert (=> b!1336916 (= e!761299 (contains!8988 (toList!10884 lt!592946) (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(assert (= (and d!143631 res!887308) b!1336915))

(assert (= (and b!1336915 res!887307) b!1336916))

(declare-fun m!1225069 () Bool)

(assert (=> d!143631 m!1225069))

(declare-fun m!1225071 () Bool)

(assert (=> d!143631 m!1225071))

(declare-fun m!1225073 () Bool)

(assert (=> d!143631 m!1225073))

(declare-fun m!1225075 () Bool)

(assert (=> d!143631 m!1225075))

(declare-fun m!1225077 () Bool)

(assert (=> b!1336915 m!1225077))

(declare-fun m!1225079 () Bool)

(assert (=> b!1336916 m!1225079))

(assert (=> b!1336761 d!143631))

(declare-fun d!143633 () Bool)

(assert (=> d!143633 (contains!8985 lt!592822 k0!1153)))

(declare-fun lt!592947 () Unit!43866)

(assert (=> d!143633 (= lt!592947 (choose!1969 k0!1153 (select (arr!43816 _keys!1590) from!1980) lt!592824 lt!592822))))

(assert (=> d!143633 (contains!8985 (+!4716 lt!592822 (tuple2!24069 (select (arr!43816 _keys!1590) from!1980) lt!592824)) k0!1153)))

(assert (=> d!143633 (= (lemmaInListMapAfterAddingDiffThenInBefore!317 k0!1153 (select (arr!43816 _keys!1590) from!1980) lt!592824 lt!592822) lt!592947)))

(declare-fun bs!38278 () Bool)

(assert (= bs!38278 d!143633))

(assert (=> bs!38278 m!1224899))

(assert (=> bs!38278 m!1224893))

(declare-fun m!1225081 () Bool)

(assert (=> bs!38278 m!1225081))

(assert (=> bs!38278 m!1224883))

(assert (=> bs!38278 m!1224883))

(declare-fun m!1225083 () Bool)

(assert (=> bs!38278 m!1225083))

(assert (=> b!1336761 d!143633))

(declare-fun d!143635 () Bool)

(declare-fun e!761300 () Bool)

(assert (=> d!143635 e!761300))

(declare-fun res!887309 () Bool)

(assert (=> d!143635 (=> res!887309 e!761300)))

(declare-fun lt!592949 () Bool)

(assert (=> d!143635 (= res!887309 (not lt!592949))))

(declare-fun lt!592951 () Bool)

(assert (=> d!143635 (= lt!592949 lt!592951)))

(declare-fun lt!592948 () Unit!43866)

(declare-fun e!761301 () Unit!43866)

(assert (=> d!143635 (= lt!592948 e!761301)))

(declare-fun c!125977 () Bool)

(assert (=> d!143635 (= c!125977 lt!592951)))

(assert (=> d!143635 (= lt!592951 (containsKey!736 (toList!10884 lt!592822) k0!1153))))

(assert (=> d!143635 (= (contains!8985 lt!592822 k0!1153) lt!592949)))

(declare-fun b!1336917 () Bool)

(declare-fun lt!592950 () Unit!43866)

(assert (=> b!1336917 (= e!761301 lt!592950)))

(assert (=> b!1336917 (= lt!592950 (lemmaContainsKeyImpliesGetValueByKeyDefined!481 (toList!10884 lt!592822) k0!1153))))

(assert (=> b!1336917 (isDefined!521 (getValueByKey!718 (toList!10884 lt!592822) k0!1153))))

(declare-fun b!1336918 () Bool)

(declare-fun Unit!43871 () Unit!43866)

(assert (=> b!1336918 (= e!761301 Unit!43871)))

(declare-fun b!1336919 () Bool)

(assert (=> b!1336919 (= e!761300 (isDefined!521 (getValueByKey!718 (toList!10884 lt!592822) k0!1153)))))

(assert (= (and d!143635 c!125977) b!1336917))

(assert (= (and d!143635 (not c!125977)) b!1336918))

(assert (= (and d!143635 (not res!887309)) b!1336919))

(declare-fun m!1225085 () Bool)

(assert (=> d!143635 m!1225085))

(declare-fun m!1225087 () Bool)

(assert (=> b!1336917 m!1225087))

(declare-fun m!1225089 () Bool)

(assert (=> b!1336917 m!1225089))

(assert (=> b!1336917 m!1225089))

(declare-fun m!1225091 () Bool)

(assert (=> b!1336917 m!1225091))

(assert (=> b!1336919 m!1225089))

(assert (=> b!1336919 m!1225089))

(assert (=> b!1336919 m!1225091))

(assert (=> b!1336761 d!143635))

(declare-fun d!143637 () Bool)

(declare-fun e!761302 () Bool)

(assert (=> d!143637 e!761302))

(declare-fun res!887310 () Bool)

(assert (=> d!143637 (=> res!887310 e!761302)))

(declare-fun lt!592953 () Bool)

(assert (=> d!143637 (= res!887310 (not lt!592953))))

(declare-fun lt!592955 () Bool)

(assert (=> d!143637 (= lt!592953 lt!592955)))

(declare-fun lt!592952 () Unit!43866)

(declare-fun e!761303 () Unit!43866)

(assert (=> d!143637 (= lt!592952 e!761303)))

(declare-fun c!125978 () Bool)

(assert (=> d!143637 (= c!125978 lt!592955)))

(assert (=> d!143637 (= lt!592955 (containsKey!736 (toList!10884 (+!4716 lt!592822 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153))))

(assert (=> d!143637 (= (contains!8985 (+!4716 lt!592822 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153) lt!592953)))

(declare-fun b!1336920 () Bool)

(declare-fun lt!592954 () Unit!43866)

(assert (=> b!1336920 (= e!761303 lt!592954)))

(assert (=> b!1336920 (= lt!592954 (lemmaContainsKeyImpliesGetValueByKeyDefined!481 (toList!10884 (+!4716 lt!592822 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153))))

(assert (=> b!1336920 (isDefined!521 (getValueByKey!718 (toList!10884 (+!4716 lt!592822 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153))))

(declare-fun b!1336921 () Bool)

(declare-fun Unit!43872 () Unit!43866)

(assert (=> b!1336921 (= e!761303 Unit!43872)))

(declare-fun b!1336922 () Bool)

(assert (=> b!1336922 (= e!761302 (isDefined!521 (getValueByKey!718 (toList!10884 (+!4716 lt!592822 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153)))))

(assert (= (and d!143637 c!125978) b!1336920))

(assert (= (and d!143637 (not c!125978)) b!1336921))

(assert (= (and d!143637 (not res!887310)) b!1336922))

(declare-fun m!1225093 () Bool)

(assert (=> d!143637 m!1225093))

(declare-fun m!1225095 () Bool)

(assert (=> b!1336920 m!1225095))

(declare-fun m!1225097 () Bool)

(assert (=> b!1336920 m!1225097))

(assert (=> b!1336920 m!1225097))

(declare-fun m!1225099 () Bool)

(assert (=> b!1336920 m!1225099))

(assert (=> b!1336922 m!1225097))

(assert (=> b!1336922 m!1225097))

(assert (=> b!1336922 m!1225099))

(assert (=> b!1336761 d!143637))

(declare-fun d!143639 () Bool)

(declare-fun e!761319 () Bool)

(assert (=> d!143639 e!761319))

(declare-fun res!887322 () Bool)

(assert (=> d!143639 (=> (not res!887322) (not e!761319))))

(declare-fun lt!592972 () ListLongMap!21737)

(assert (=> d!143639 (= res!887322 (not (contains!8985 lt!592972 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!761318 () ListLongMap!21737)

(assert (=> d!143639 (= lt!592972 e!761318)))

(declare-fun c!125989 () Bool)

(assert (=> d!143639 (= c!125989 (bvsge (bvadd #b00000000000000000000000000000001 from!1980) (size!44367 _keys!1590)))))

(assert (=> d!143639 (validMask!0 mask!1998)))

(assert (=> d!143639 (= (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) lt!592972)))

(declare-fun b!1336947 () Bool)

(declare-fun res!887321 () Bool)

(assert (=> b!1336947 (=> (not res!887321) (not e!761319))))

(assert (=> b!1336947 (= res!887321 (not (contains!8985 lt!592972 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1336948 () Bool)

(assert (=> b!1336948 (= e!761318 (ListLongMap!21738 Nil!31231))))

(declare-fun b!1336949 () Bool)

(assert (=> b!1336949 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44367 _keys!1590)))))

(assert (=> b!1336949 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44366 _values!1320)))))

(declare-fun e!761321 () Bool)

(assert (=> b!1336949 (= e!761321 (= (apply!1068 lt!592972 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (get!22147 (select (arr!43815 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3753 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1336950 () Bool)

(declare-fun e!761320 () Bool)

(assert (=> b!1336950 (= e!761320 (validKeyInArray!0 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1336950 (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))

(declare-fun b!1336951 () Bool)

(declare-fun e!761322 () ListLongMap!21737)

(assert (=> b!1336951 (= e!761318 e!761322)))

(declare-fun c!125988 () Bool)

(assert (=> b!1336951 (= c!125988 (validKeyInArray!0 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun e!761324 () Bool)

(declare-fun b!1336952 () Bool)

(assert (=> b!1336952 (= e!761324 (= lt!592972 (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) defaultEntry!1323)))))

(declare-fun b!1336953 () Bool)

(declare-fun e!761323 () Bool)

(assert (=> b!1336953 (= e!761319 e!761323)))

(declare-fun c!125990 () Bool)

(assert (=> b!1336953 (= c!125990 e!761320)))

(declare-fun res!887320 () Bool)

(assert (=> b!1336953 (=> (not res!887320) (not e!761320))))

(assert (=> b!1336953 (= res!887320 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44367 _keys!1590)))))

(declare-fun b!1336954 () Bool)

(declare-fun lt!592974 () Unit!43866)

(declare-fun lt!592973 () Unit!43866)

(assert (=> b!1336954 (= lt!592974 lt!592973)))

(declare-fun lt!592975 () (_ BitVec 64))

(declare-fun lt!592971 () V!54355)

(declare-fun lt!592976 () ListLongMap!21737)

(declare-fun lt!592970 () (_ BitVec 64))

(assert (=> b!1336954 (not (contains!8985 (+!4716 lt!592976 (tuple2!24069 lt!592975 lt!592971)) lt!592970))))

(declare-fun addStillNotContains!506 (ListLongMap!21737 (_ BitVec 64) V!54355 (_ BitVec 64)) Unit!43866)

(assert (=> b!1336954 (= lt!592973 (addStillNotContains!506 lt!592976 lt!592975 lt!592971 lt!592970))))

(assert (=> b!1336954 (= lt!592970 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1336954 (= lt!592971 (get!22147 (select (arr!43815 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3753 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1336954 (= lt!592975 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(declare-fun call!64891 () ListLongMap!21737)

(assert (=> b!1336954 (= lt!592976 call!64891)))

(assert (=> b!1336954 (= e!761322 (+!4716 call!64891 (tuple2!24069 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22147 (select (arr!43815 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3753 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1336955 () Bool)

(declare-fun isEmpty!1087 (ListLongMap!21737) Bool)

(assert (=> b!1336955 (= e!761324 (isEmpty!1087 lt!592972))))

(declare-fun b!1336956 () Bool)

(assert (=> b!1336956 (= e!761322 call!64891)))

(declare-fun b!1336957 () Bool)

(assert (=> b!1336957 (= e!761323 e!761324)))

(declare-fun c!125987 () Bool)

(assert (=> b!1336957 (= c!125987 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44367 _keys!1590)))))

(declare-fun b!1336958 () Bool)

(assert (=> b!1336958 (= e!761323 e!761321)))

(assert (=> b!1336958 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44367 _keys!1590)))))

(declare-fun res!887319 () Bool)

(assert (=> b!1336958 (= res!887319 (contains!8985 lt!592972 (select (arr!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1336958 (=> (not res!887319) (not e!761321))))

(declare-fun bm!64888 () Bool)

(assert (=> bm!64888 (= call!64891 (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) defaultEntry!1323))))

(assert (= (and d!143639 c!125989) b!1336948))

(assert (= (and d!143639 (not c!125989)) b!1336951))

(assert (= (and b!1336951 c!125988) b!1336954))

(assert (= (and b!1336951 (not c!125988)) b!1336956))

(assert (= (or b!1336954 b!1336956) bm!64888))

(assert (= (and d!143639 res!887322) b!1336947))

(assert (= (and b!1336947 res!887321) b!1336953))

(assert (= (and b!1336953 res!887320) b!1336950))

(assert (= (and b!1336953 c!125990) b!1336958))

(assert (= (and b!1336953 (not c!125990)) b!1336957))

(assert (= (and b!1336958 res!887319) b!1336949))

(assert (= (and b!1336957 c!125987) b!1336952))

(assert (= (and b!1336957 (not c!125987)) b!1336955))

(declare-fun b_lambda!24205 () Bool)

(assert (=> (not b_lambda!24205) (not b!1336949)))

(assert (=> b!1336949 t!45550))

(declare-fun b_and!50015 () Bool)

(assert (= b_and!50013 (and (=> t!45550 result!25307) b_and!50015)))

(declare-fun b_lambda!24207 () Bool)

(assert (=> (not b_lambda!24207) (not b!1336954)))

(assert (=> b!1336954 t!45550))

(declare-fun b_and!50017 () Bool)

(assert (= b_and!50015 (and (=> t!45550 result!25307) b_and!50017)))

(declare-fun m!1225101 () Bool)

(assert (=> b!1336952 m!1225101))

(declare-fun m!1225103 () Bool)

(assert (=> b!1336955 m!1225103))

(declare-fun m!1225105 () Bool)

(assert (=> b!1336947 m!1225105))

(assert (=> bm!64888 m!1225101))

(assert (=> b!1336950 m!1225021))

(assert (=> b!1336950 m!1225021))

(assert (=> b!1336950 m!1225051))

(assert (=> b!1336951 m!1225021))

(assert (=> b!1336951 m!1225021))

(assert (=> b!1336951 m!1225051))

(declare-fun m!1225107 () Bool)

(assert (=> b!1336954 m!1225107))

(assert (=> b!1336954 m!1225021))

(assert (=> b!1336954 m!1225059))

(assert (=> b!1336954 m!1224881))

(assert (=> b!1336954 m!1225061))

(assert (=> b!1336954 m!1225107))

(declare-fun m!1225109 () Bool)

(assert (=> b!1336954 m!1225109))

(assert (=> b!1336954 m!1224881))

(assert (=> b!1336954 m!1225059))

(declare-fun m!1225111 () Bool)

(assert (=> b!1336954 m!1225111))

(declare-fun m!1225113 () Bool)

(assert (=> b!1336954 m!1225113))

(assert (=> b!1336958 m!1225021))

(assert (=> b!1336958 m!1225021))

(declare-fun m!1225115 () Bool)

(assert (=> b!1336958 m!1225115))

(declare-fun m!1225117 () Bool)

(assert (=> d!143639 m!1225117))

(assert (=> d!143639 m!1224913))

(assert (=> b!1336949 m!1225021))

(assert (=> b!1336949 m!1225059))

(assert (=> b!1336949 m!1224881))

(assert (=> b!1336949 m!1225061))

(assert (=> b!1336949 m!1224881))

(assert (=> b!1336949 m!1225021))

(declare-fun m!1225119 () Bool)

(assert (=> b!1336949 m!1225119))

(assert (=> b!1336949 m!1225059))

(assert (=> b!1336761 d!143639))

(declare-fun bm!64891 () Bool)

(declare-fun call!64894 () Bool)

(assert (=> bm!64891 (= call!64894 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1590 mask!1998))))

(declare-fun b!1336967 () Bool)

(declare-fun e!761332 () Bool)

(declare-fun e!761331 () Bool)

(assert (=> b!1336967 (= e!761332 e!761331)))

(declare-fun c!125993 () Bool)

(assert (=> b!1336967 (= c!125993 (validKeyInArray!0 (select (arr!43816 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1336968 () Bool)

(assert (=> b!1336968 (= e!761331 call!64894)))

(declare-fun b!1336969 () Bool)

(declare-fun e!761333 () Bool)

(assert (=> b!1336969 (= e!761333 call!64894)))

(declare-fun d!143641 () Bool)

(declare-fun res!887328 () Bool)

(assert (=> d!143641 (=> res!887328 e!761332)))

(assert (=> d!143641 (= res!887328 (bvsge #b00000000000000000000000000000000 (size!44367 _keys!1590)))))

(assert (=> d!143641 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998) e!761332)))

(declare-fun b!1336970 () Bool)

(assert (=> b!1336970 (= e!761331 e!761333)))

(declare-fun lt!592983 () (_ BitVec 64))

(assert (=> b!1336970 (= lt!592983 (select (arr!43816 _keys!1590) #b00000000000000000000000000000000))))

(declare-fun lt!592984 () Unit!43866)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!90711 (_ BitVec 64) (_ BitVec 32)) Unit!43866)

(assert (=> b!1336970 (= lt!592984 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!592983 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!90711 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1336970 (arrayContainsKey!0 _keys!1590 lt!592983 #b00000000000000000000000000000000)))

(declare-fun lt!592985 () Unit!43866)

(assert (=> b!1336970 (= lt!592985 lt!592984)))

(declare-fun res!887327 () Bool)

(declare-datatypes ((SeekEntryResult!10045 0))(
  ( (MissingZero!10045 (index!42550 (_ BitVec 32))) (Found!10045 (index!42551 (_ BitVec 32))) (Intermediate!10045 (undefined!10857 Bool) (index!42552 (_ BitVec 32)) (x!119432 (_ BitVec 32))) (Undefined!10045) (MissingVacant!10045 (index!42553 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!90711 (_ BitVec 32)) SeekEntryResult!10045)

(assert (=> b!1336970 (= res!887327 (= (seekEntryOrOpen!0 (select (arr!43816 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998) (Found!10045 #b00000000000000000000000000000000)))))

(assert (=> b!1336970 (=> (not res!887327) (not e!761333))))

(assert (= (and d!143641 (not res!887328)) b!1336967))

(assert (= (and b!1336967 c!125993) b!1336970))

(assert (= (and b!1336967 (not c!125993)) b!1336968))

(assert (= (and b!1336970 res!887327) b!1336969))

(assert (= (or b!1336969 b!1336968) bm!64891))

(declare-fun m!1225121 () Bool)

(assert (=> bm!64891 m!1225121))

(assert (=> b!1336967 m!1224967))

(assert (=> b!1336967 m!1224967))

(assert (=> b!1336967 m!1224971))

(assert (=> b!1336970 m!1224967))

(declare-fun m!1225123 () Bool)

(assert (=> b!1336970 m!1225123))

(declare-fun m!1225125 () Bool)

(assert (=> b!1336970 m!1225125))

(assert (=> b!1336970 m!1224967))

(declare-fun m!1225127 () Bool)

(assert (=> b!1336970 m!1225127))

(assert (=> b!1336765 d!143641))

(declare-fun d!143643 () Bool)

(declare-fun e!761334 () Bool)

(assert (=> d!143643 e!761334))

(declare-fun res!887329 () Bool)

(assert (=> d!143643 (=> res!887329 e!761334)))

(declare-fun lt!592987 () Bool)

(assert (=> d!143643 (= res!887329 (not lt!592987))))

(declare-fun lt!592989 () Bool)

(assert (=> d!143643 (= lt!592987 lt!592989)))

(declare-fun lt!592986 () Unit!43866)

(declare-fun e!761335 () Unit!43866)

(assert (=> d!143643 (= lt!592986 e!761335)))

(declare-fun c!125994 () Bool)

(assert (=> d!143643 (= c!125994 lt!592989)))

(assert (=> d!143643 (= lt!592989 (containsKey!736 (toList!10884 (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(assert (=> d!143643 (= (contains!8985 (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153) lt!592987)))

(declare-fun b!1336971 () Bool)

(declare-fun lt!592988 () Unit!43866)

(assert (=> b!1336971 (= e!761335 lt!592988)))

(assert (=> b!1336971 (= lt!592988 (lemmaContainsKeyImpliesGetValueByKeyDefined!481 (toList!10884 (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(assert (=> b!1336971 (isDefined!521 (getValueByKey!718 (toList!10884 (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(declare-fun b!1336972 () Bool)

(declare-fun Unit!43873 () Unit!43866)

(assert (=> b!1336972 (= e!761335 Unit!43873)))

(declare-fun b!1336973 () Bool)

(assert (=> b!1336973 (= e!761334 (isDefined!521 (getValueByKey!718 (toList!10884 (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153)))))

(assert (= (and d!143643 c!125994) b!1336971))

(assert (= (and d!143643 (not c!125994)) b!1336972))

(assert (= (and d!143643 (not res!887329)) b!1336973))

(declare-fun m!1225129 () Bool)

(assert (=> d!143643 m!1225129))

(declare-fun m!1225131 () Bool)

(assert (=> b!1336971 m!1225131))

(declare-fun m!1225133 () Bool)

(assert (=> b!1336971 m!1225133))

(assert (=> b!1336971 m!1225133))

(declare-fun m!1225135 () Bool)

(assert (=> b!1336971 m!1225135))

(assert (=> b!1336973 m!1225133))

(assert (=> b!1336973 m!1225133))

(assert (=> b!1336973 m!1225135))

(assert (=> b!1336767 d!143643))

(declare-fun bm!64892 () Bool)

(declare-fun call!64900 () Bool)

(declare-fun lt!593005 () ListLongMap!21737)

(assert (=> bm!64892 (= call!64900 (contains!8985 lt!593005 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1336974 () Bool)

(declare-fun e!761337 () Bool)

(assert (=> b!1336974 (= e!761337 (validKeyInArray!0 (select (arr!43816 _keys!1590) from!1980)))))

(declare-fun b!1336975 () Bool)

(declare-fun e!761346 () Bool)

(assert (=> b!1336975 (= e!761346 (validKeyInArray!0 (select (arr!43816 _keys!1590) from!1980)))))

(declare-fun b!1336977 () Bool)

(declare-fun res!887336 () Bool)

(declare-fun e!761339 () Bool)

(assert (=> b!1336977 (=> (not res!887336) (not e!761339))))

(declare-fun e!761340 () Bool)

(assert (=> b!1336977 (= res!887336 e!761340)))

(declare-fun res!887330 () Bool)

(assert (=> b!1336977 (=> res!887330 e!761340)))

(assert (=> b!1336977 (= res!887330 (not e!761337))))

(declare-fun res!887334 () Bool)

(assert (=> b!1336977 (=> (not res!887334) (not e!761337))))

(assert (=> b!1336977 (= res!887334 (bvslt from!1980 (size!44367 _keys!1590)))))

(declare-fun b!1336978 () Bool)

(declare-fun e!761341 () Unit!43866)

(declare-fun lt!593000 () Unit!43866)

(assert (=> b!1336978 (= e!761341 lt!593000)))

(declare-fun lt!592992 () ListLongMap!21737)

(assert (=> b!1336978 (= lt!592992 (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!592994 () (_ BitVec 64))

(assert (=> b!1336978 (= lt!592994 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593006 () (_ BitVec 64))

(assert (=> b!1336978 (= lt!593006 (select (arr!43816 _keys!1590) from!1980))))

(declare-fun lt!592998 () Unit!43866)

(assert (=> b!1336978 (= lt!592998 (addStillContains!1194 lt!592992 lt!592994 zeroValue!1262 lt!593006))))

(assert (=> b!1336978 (contains!8985 (+!4716 lt!592992 (tuple2!24069 lt!592994 zeroValue!1262)) lt!593006)))

(declare-fun lt!593009 () Unit!43866)

(assert (=> b!1336978 (= lt!593009 lt!592998)))

(declare-fun lt!593011 () ListLongMap!21737)

(assert (=> b!1336978 (= lt!593011 (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!592995 () (_ BitVec 64))

(assert (=> b!1336978 (= lt!592995 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593004 () (_ BitVec 64))

(assert (=> b!1336978 (= lt!593004 (select (arr!43816 _keys!1590) from!1980))))

(declare-fun lt!592999 () Unit!43866)

(assert (=> b!1336978 (= lt!592999 (addApplyDifferent!571 lt!593011 lt!592995 minValue!1262 lt!593004))))

(assert (=> b!1336978 (= (apply!1068 (+!4716 lt!593011 (tuple2!24069 lt!592995 minValue!1262)) lt!593004) (apply!1068 lt!593011 lt!593004))))

(declare-fun lt!592990 () Unit!43866)

(assert (=> b!1336978 (= lt!592990 lt!592999)))

(declare-fun lt!592993 () ListLongMap!21737)

(assert (=> b!1336978 (= lt!592993 (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593007 () (_ BitVec 64))

(assert (=> b!1336978 (= lt!593007 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!592997 () (_ BitVec 64))

(assert (=> b!1336978 (= lt!592997 (select (arr!43816 _keys!1590) from!1980))))

(declare-fun lt!593001 () Unit!43866)

(assert (=> b!1336978 (= lt!593001 (addApplyDifferent!571 lt!592993 lt!593007 zeroValue!1262 lt!592997))))

(assert (=> b!1336978 (= (apply!1068 (+!4716 lt!592993 (tuple2!24069 lt!593007 zeroValue!1262)) lt!592997) (apply!1068 lt!592993 lt!592997))))

(declare-fun lt!593003 () Unit!43866)

(assert (=> b!1336978 (= lt!593003 lt!593001)))

(declare-fun lt!592991 () ListLongMap!21737)

(assert (=> b!1336978 (= lt!592991 (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593010 () (_ BitVec 64))

(assert (=> b!1336978 (= lt!593010 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593008 () (_ BitVec 64))

(assert (=> b!1336978 (= lt!593008 (select (arr!43816 _keys!1590) from!1980))))

(assert (=> b!1336978 (= lt!593000 (addApplyDifferent!571 lt!592991 lt!593010 minValue!1262 lt!593008))))

(assert (=> b!1336978 (= (apply!1068 (+!4716 lt!592991 (tuple2!24069 lt!593010 minValue!1262)) lt!593008) (apply!1068 lt!592991 lt!593008))))

(declare-fun bm!64893 () Bool)

(declare-fun call!64896 () ListLongMap!21737)

(declare-fun call!64897 () ListLongMap!21737)

(assert (=> bm!64893 (= call!64896 call!64897)))

(declare-fun b!1336979 () Bool)

(declare-fun e!761344 () ListLongMap!21737)

(assert (=> b!1336979 (= e!761344 call!64896)))

(declare-fun b!1336980 () Bool)

(declare-fun e!761343 () Bool)

(assert (=> b!1336980 (= e!761343 (= (apply!1068 lt!593005 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1262))))

(declare-fun b!1336981 () Bool)

(declare-fun e!761342 () Bool)

(assert (=> b!1336981 (= e!761339 e!761342)))

(declare-fun c!125995 () Bool)

(assert (=> b!1336981 (= c!125995 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!64894 () Bool)

(declare-fun call!64895 () ListLongMap!21737)

(assert (=> bm!64894 (= call!64895 (getCurrentListMapNoExtraKeys!6439 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun b!1336982 () Bool)

(declare-fun res!887331 () Bool)

(assert (=> b!1336982 (=> (not res!887331) (not e!761339))))

(declare-fun e!761348 () Bool)

(assert (=> b!1336982 (= res!887331 e!761348)))

(declare-fun c!125999 () Bool)

(assert (=> b!1336982 (= c!125999 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1336983 () Bool)

(declare-fun e!761345 () ListLongMap!21737)

(declare-fun e!761338 () ListLongMap!21737)

(assert (=> b!1336983 (= e!761345 e!761338)))

(declare-fun c!125996 () Bool)

(assert (=> b!1336983 (= c!125996 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1336984 () Bool)

(assert (=> b!1336984 (= e!761345 (+!4716 call!64897 (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(declare-fun b!1336985 () Bool)

(assert (=> b!1336985 (= e!761348 e!761343)))

(declare-fun res!887332 () Bool)

(declare-fun call!64901 () Bool)

(assert (=> b!1336985 (= res!887332 call!64901)))

(assert (=> b!1336985 (=> (not res!887332) (not e!761343))))

(declare-fun b!1336986 () Bool)

(declare-fun e!761336 () Bool)

(assert (=> b!1336986 (= e!761340 e!761336)))

(declare-fun res!887335 () Bool)

(assert (=> b!1336986 (=> (not res!887335) (not e!761336))))

(assert (=> b!1336986 (= res!887335 (contains!8985 lt!593005 (select (arr!43816 _keys!1590) from!1980)))))

(assert (=> b!1336986 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44367 _keys!1590)))))

(declare-fun bm!64895 () Bool)

(declare-fun call!64898 () ListLongMap!21737)

(declare-fun call!64899 () ListLongMap!21737)

(assert (=> bm!64895 (= call!64898 call!64899)))

(declare-fun b!1336976 () Bool)

(declare-fun c!126000 () Bool)

(assert (=> b!1336976 (= c!126000 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1336976 (= e!761338 e!761344)))

(declare-fun d!143645 () Bool)

(assert (=> d!143645 e!761339))

(declare-fun res!887338 () Bool)

(assert (=> d!143645 (=> (not res!887338) (not e!761339))))

(assert (=> d!143645 (= res!887338 (or (bvsge from!1980 (size!44367 _keys!1590)) (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44367 _keys!1590)))))))

(declare-fun lt!593002 () ListLongMap!21737)

(assert (=> d!143645 (= lt!593005 lt!593002)))

(declare-fun lt!592996 () Unit!43866)

(assert (=> d!143645 (= lt!592996 e!761341)))

(declare-fun c!125998 () Bool)

(assert (=> d!143645 (= c!125998 e!761346)))

(declare-fun res!887333 () Bool)

(assert (=> d!143645 (=> (not res!887333) (not e!761346))))

(assert (=> d!143645 (= res!887333 (bvslt from!1980 (size!44367 _keys!1590)))))

(assert (=> d!143645 (= lt!593002 e!761345)))

(declare-fun c!125997 () Bool)

(assert (=> d!143645 (= c!125997 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!143645 (validMask!0 mask!1998)))

(assert (=> d!143645 (= (getCurrentListMap!5790 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) lt!593005)))

(declare-fun b!1336987 () Bool)

(assert (=> b!1336987 (= e!761336 (= (apply!1068 lt!593005 (select (arr!43816 _keys!1590) from!1980)) (get!22147 (select (arr!43815 _values!1320) from!1980) (dynLambda!3753 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1336987 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44366 _values!1320)))))

(assert (=> b!1336987 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44367 _keys!1590)))))

(declare-fun b!1336988 () Bool)

(assert (=> b!1336988 (= e!761344 call!64898)))

(declare-fun b!1336989 () Bool)

(assert (=> b!1336989 (= e!761348 (not call!64901))))

(declare-fun bm!64896 () Bool)

(assert (=> bm!64896 (= call!64897 (+!4716 (ite c!125997 call!64895 (ite c!125996 call!64899 call!64898)) (ite (or c!125997 c!125996) (tuple2!24069 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun b!1336990 () Bool)

(declare-fun e!761347 () Bool)

(assert (=> b!1336990 (= e!761347 (= (apply!1068 lt!593005 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1262))))

(declare-fun b!1336991 () Bool)

(assert (=> b!1336991 (= e!761342 (not call!64900))))

(declare-fun b!1336992 () Bool)

(assert (=> b!1336992 (= e!761338 call!64896)))

(declare-fun b!1336993 () Bool)

(assert (=> b!1336993 (= e!761342 e!761347)))

(declare-fun res!887337 () Bool)

(assert (=> b!1336993 (= res!887337 call!64900)))

(assert (=> b!1336993 (=> (not res!887337) (not e!761347))))

(declare-fun bm!64897 () Bool)

(assert (=> bm!64897 (= call!64901 (contains!8985 lt!593005 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64898 () Bool)

(assert (=> bm!64898 (= call!64899 call!64895)))

(declare-fun b!1336994 () Bool)

(declare-fun Unit!43874 () Unit!43866)

(assert (=> b!1336994 (= e!761341 Unit!43874)))

(assert (= (and d!143645 c!125997) b!1336984))

(assert (= (and d!143645 (not c!125997)) b!1336983))

(assert (= (and b!1336983 c!125996) b!1336992))

(assert (= (and b!1336983 (not c!125996)) b!1336976))

(assert (= (and b!1336976 c!126000) b!1336979))

(assert (= (and b!1336976 (not c!126000)) b!1336988))

(assert (= (or b!1336979 b!1336988) bm!64895))

(assert (= (or b!1336992 bm!64895) bm!64898))

(assert (= (or b!1336992 b!1336979) bm!64893))

(assert (= (or b!1336984 bm!64898) bm!64894))

(assert (= (or b!1336984 bm!64893) bm!64896))

(assert (= (and d!143645 res!887333) b!1336975))

(assert (= (and d!143645 c!125998) b!1336978))

(assert (= (and d!143645 (not c!125998)) b!1336994))

(assert (= (and d!143645 res!887338) b!1336977))

(assert (= (and b!1336977 res!887334) b!1336974))

(assert (= (and b!1336977 (not res!887330)) b!1336986))

(assert (= (and b!1336986 res!887335) b!1336987))

(assert (= (and b!1336977 res!887336) b!1336982))

(assert (= (and b!1336982 c!125999) b!1336985))

(assert (= (and b!1336982 (not c!125999)) b!1336989))

(assert (= (and b!1336985 res!887332) b!1336980))

(assert (= (or b!1336985 b!1336989) bm!64897))

(assert (= (and b!1336982 res!887331) b!1336981))

(assert (= (and b!1336981 c!125995) b!1336993))

(assert (= (and b!1336981 (not c!125995)) b!1336991))

(assert (= (and b!1336993 res!887337) b!1336990))

(assert (= (or b!1336993 b!1336991) bm!64892))

(declare-fun b_lambda!24209 () Bool)

(assert (=> (not b_lambda!24209) (not b!1336987)))

(assert (=> b!1336987 t!45550))

(declare-fun b_and!50019 () Bool)

(assert (= b_and!50017 (and (=> t!45550 result!25307) b_and!50019)))

(declare-fun m!1225137 () Bool)

(assert (=> b!1336990 m!1225137))

(assert (=> d!143645 m!1224913))

(declare-fun m!1225139 () Bool)

(assert (=> bm!64892 m!1225139))

(declare-fun m!1225141 () Bool)

(assert (=> b!1336980 m!1225141))

(declare-fun m!1225143 () Bool)

(assert (=> b!1336978 m!1225143))

(declare-fun m!1225145 () Bool)

(assert (=> b!1336978 m!1225145))

(assert (=> b!1336978 m!1224893))

(declare-fun m!1225147 () Bool)

(assert (=> b!1336978 m!1225147))

(declare-fun m!1225149 () Bool)

(assert (=> b!1336978 m!1225149))

(declare-fun m!1225151 () Bool)

(assert (=> b!1336978 m!1225151))

(declare-fun m!1225153 () Bool)

(assert (=> b!1336978 m!1225153))

(declare-fun m!1225155 () Bool)

(assert (=> b!1336978 m!1225155))

(declare-fun m!1225157 () Bool)

(assert (=> b!1336978 m!1225157))

(declare-fun m!1225159 () Bool)

(assert (=> b!1336978 m!1225159))

(declare-fun m!1225161 () Bool)

(assert (=> b!1336978 m!1225161))

(declare-fun m!1225163 () Bool)

(assert (=> b!1336978 m!1225163))

(declare-fun m!1225165 () Bool)

(assert (=> b!1336978 m!1225165))

(assert (=> b!1336978 m!1225143))

(assert (=> b!1336978 m!1225147))

(assert (=> b!1336978 m!1225151))

(declare-fun m!1225167 () Bool)

(assert (=> b!1336978 m!1225167))

(declare-fun m!1225169 () Bool)

(assert (=> b!1336978 m!1225169))

(assert (=> b!1336978 m!1225163))

(declare-fun m!1225171 () Bool)

(assert (=> b!1336978 m!1225171))

(declare-fun m!1225173 () Bool)

(assert (=> b!1336978 m!1225173))

(declare-fun m!1225175 () Bool)

(assert (=> bm!64896 m!1225175))

(assert (=> b!1336975 m!1224893))

(assert (=> b!1336975 m!1224893))

(assert (=> b!1336975 m!1224905))

(assert (=> b!1336974 m!1224893))

(assert (=> b!1336974 m!1224893))

(assert (=> b!1336974 m!1224905))

(assert (=> bm!64894 m!1225153))

(declare-fun m!1225177 () Bool)

(assert (=> b!1336984 m!1225177))

(assert (=> b!1336986 m!1224893))

(assert (=> b!1336986 m!1224893))

(declare-fun m!1225179 () Bool)

(assert (=> b!1336986 m!1225179))

(assert (=> b!1336987 m!1224893))

(assert (=> b!1336987 m!1224893))

(declare-fun m!1225181 () Bool)

(assert (=> b!1336987 m!1225181))

(assert (=> b!1336987 m!1224881))

(assert (=> b!1336987 m!1224885))

(assert (=> b!1336987 m!1224885))

(assert (=> b!1336987 m!1224881))

(assert (=> b!1336987 m!1224887))

(declare-fun m!1225183 () Bool)

(assert (=> bm!64897 m!1225183))

(assert (=> b!1336767 d!143645))

(declare-fun b!1337001 () Bool)

(declare-fun e!761354 () Bool)

(assert (=> b!1337001 (= e!761354 tp_is_empty!36939)))

(declare-fun mapNonEmpty!57092 () Bool)

(declare-fun mapRes!57092 () Bool)

(declare-fun tp!108738 () Bool)

(assert (=> mapNonEmpty!57092 (= mapRes!57092 (and tp!108738 e!761354))))

(declare-fun mapKey!57092 () (_ BitVec 32))

(declare-fun mapValue!57092 () ValueCell!17571)

(declare-fun mapRest!57092 () (Array (_ BitVec 32) ValueCell!17571))

(assert (=> mapNonEmpty!57092 (= mapRest!57086 (store mapRest!57092 mapKey!57092 mapValue!57092))))

(declare-fun condMapEmpty!57092 () Bool)

(declare-fun mapDefault!57092 () ValueCell!17571)

(assert (=> mapNonEmpty!57086 (= condMapEmpty!57092 (= mapRest!57086 ((as const (Array (_ BitVec 32) ValueCell!17571)) mapDefault!57092)))))

(declare-fun e!761353 () Bool)

(assert (=> mapNonEmpty!57086 (= tp!108728 (and e!761353 mapRes!57092))))

(declare-fun b!1337002 () Bool)

(assert (=> b!1337002 (= e!761353 tp_is_empty!36939)))

(declare-fun mapIsEmpty!57092 () Bool)

(assert (=> mapIsEmpty!57092 mapRes!57092))

(assert (= (and mapNonEmpty!57086 condMapEmpty!57092) mapIsEmpty!57092))

(assert (= (and mapNonEmpty!57086 (not condMapEmpty!57092)) mapNonEmpty!57092))

(assert (= (and mapNonEmpty!57092 ((_ is ValueCellFull!17571) mapValue!57092)) b!1337001))

(assert (= (and mapNonEmpty!57086 ((_ is ValueCellFull!17571) mapDefault!57092)) b!1337002))

(declare-fun m!1225185 () Bool)

(assert (=> mapNonEmpty!57092 m!1225185))

(declare-fun b_lambda!24211 () Bool)

(assert (= b_lambda!24205 (or (and start!112728 b_free!31029) b_lambda!24211)))

(declare-fun b_lambda!24213 () Bool)

(assert (= b_lambda!24209 (or (and start!112728 b_free!31029) b_lambda!24213)))

(declare-fun b_lambda!24215 () Bool)

(assert (= b_lambda!24207 (or (and start!112728 b_free!31029) b_lambda!24215)))

(declare-fun b_lambda!24217 () Bool)

(assert (= b_lambda!24203 (or (and start!112728 b_free!31029) b_lambda!24217)))

(check-sat (not b_lambda!24213) (not b!1336913) (not bm!64879) (not bm!64884) (not d!143631) (not d!143645) (not b!1336947) (not b!1336888) (not d!143619) (not b!1336974) (not b!1336971) (not b!1336900) (not b!1336984) (not d!143637) (not bm!64864) (not b!1336823) (not b!1336967) (not b!1336973) (not b!1336904) (not bm!64892) (not b!1336894) (not b!1336986) (not d!143617) (not b!1336901) (not d!143635) (not b!1336898) (not b!1336915) (not bm!64896) (not b_lambda!24201) (not d!143633) (not bm!64897) (not mapNonEmpty!57092) (not b!1336952) (not d!143623) (not b!1336845) (not b!1336842) (not bm!64888) (not b!1336954) (not b!1336922) (not b_lambda!24211) (not b_lambda!24215) (not d!143643) (not b!1336950) (not b!1336822) (not b!1336917) (not bm!64883) (not b!1336835) (not d!143621) (not b_next!31029) (not b!1336987) (not b!1336833) (not b!1336920) tp_is_empty!36939 (not b!1336919) b_and!50019 (not d!143627) (not b!1336990) (not b!1336843) (not b!1336824) (not d!143625) (not b!1336970) (not bm!64891) (not b!1336892) (not b!1336841) (not b!1336955) (not b!1336889) (not bm!64894) (not b!1336916) (not d!143639) (not b!1336914) (not b_lambda!24217) (not b!1336958) (not b!1336975) (not b!1336980) (not b!1336949) (not b!1336978) (not b!1336951) (not bm!64881))
(check-sat b_and!50019 (not b_next!31029))
