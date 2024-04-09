; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112364 () Bool)

(assert start!112364)

(declare-fun b_free!30723 () Bool)

(declare-fun b_next!30723 () Bool)

(assert (=> start!112364 (= b_free!30723 (not b_next!30723))))

(declare-fun tp!107806 () Bool)

(declare-fun b_and!49511 () Bool)

(assert (=> start!112364 (= tp!107806 b_and!49511)))

(declare-fun res!883444 () Bool)

(declare-fun e!758599 () Bool)

(assert (=> start!112364 (=> (not res!883444) (not e!758599))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112364 (= res!883444 (validMask!0 mask!1998))))

(assert (=> start!112364 e!758599))

(declare-datatypes ((V!53947 0))(
  ( (V!53948 (val!18391 Int)) )
))
(declare-datatypes ((ValueCell!17418 0))(
  ( (ValueCellFull!17418 (v!21026 V!53947)) (EmptyCell!17418) )
))
(declare-datatypes ((array!90117 0))(
  ( (array!90118 (arr!43520 (Array (_ BitVec 32) ValueCell!17418)) (size!44071 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90117)

(declare-fun e!758597 () Bool)

(declare-fun array_inv!32781 (array!90117) Bool)

(assert (=> start!112364 (and (array_inv!32781 _values!1320) e!758597)))

(assert (=> start!112364 true))

(declare-datatypes ((array!90119 0))(
  ( (array!90120 (arr!43521 (Array (_ BitVec 32) (_ BitVec 64))) (size!44072 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90119)

(declare-fun array_inv!32782 (array!90119) Bool)

(assert (=> start!112364 (array_inv!32782 _keys!1590)))

(assert (=> start!112364 tp!107806))

(declare-fun tp_is_empty!36633 () Bool)

(assert (=> start!112364 tp_is_empty!36633))

(declare-fun mapNonEmpty!56623 () Bool)

(declare-fun mapRes!56623 () Bool)

(declare-fun tp!107807 () Bool)

(declare-fun e!758596 () Bool)

(assert (=> mapNonEmpty!56623 (= mapRes!56623 (and tp!107807 e!758596))))

(declare-fun mapKey!56623 () (_ BitVec 32))

(declare-fun mapValue!56623 () ValueCell!17418)

(declare-fun mapRest!56623 () (Array (_ BitVec 32) ValueCell!17418))

(assert (=> mapNonEmpty!56623 (= (arr!43520 _values!1320) (store mapRest!56623 mapKey!56623 mapValue!56623))))

(declare-fun b!1331198 () Bool)

(declare-fun res!883443 () Bool)

(assert (=> b!1331198 (=> (not res!883443) (not e!758599))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53947)

(declare-fun zeroValue!1262 () V!53947)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23838 0))(
  ( (tuple2!23839 (_1!11929 (_ BitVec 64)) (_2!11929 V!53947)) )
))
(declare-datatypes ((List!31024 0))(
  ( (Nil!31021) (Cons!31020 (h!32229 tuple2!23838) (t!45167 List!31024)) )
))
(declare-datatypes ((ListLongMap!21507 0))(
  ( (ListLongMap!21508 (toList!10769 List!31024)) )
))
(declare-fun contains!8869 (ListLongMap!21507 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5692 (array!90119 array!90117 (_ BitVec 32) (_ BitVec 32) V!53947 V!53947 (_ BitVec 32) Int) ListLongMap!21507)

(assert (=> b!1331198 (= res!883443 (contains!8869 (getCurrentListMap!5692 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1331199 () Bool)

(declare-fun res!883437 () Bool)

(assert (=> b!1331199 (=> (not res!883437) (not e!758599))))

(assert (=> b!1331199 (= res!883437 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331200 () Bool)

(declare-fun e!758598 () Bool)

(assert (=> b!1331200 (= e!758598 tp_is_empty!36633)))

(declare-fun b!1331201 () Bool)

(declare-fun res!883439 () Bool)

(assert (=> b!1331201 (=> (not res!883439) (not e!758599))))

(assert (=> b!1331201 (= res!883439 (not (= (select (arr!43521 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1331202 () Bool)

(declare-fun res!883445 () Bool)

(assert (=> b!1331202 (=> (not res!883445) (not e!758599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90119 (_ BitVec 32)) Bool)

(assert (=> b!1331202 (= res!883445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331203 () Bool)

(assert (=> b!1331203 (= e!758599 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))))

(declare-fun lt!591413 () ListLongMap!21507)

(assert (=> b!1331203 (contains!8869 lt!591413 k0!1153)))

(declare-fun lt!591414 () V!53947)

(declare-datatypes ((Unit!43747 0))(
  ( (Unit!43748) )
))
(declare-fun lt!591415 () Unit!43747)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!265 ((_ BitVec 64) (_ BitVec 64) V!53947 ListLongMap!21507) Unit!43747)

(assert (=> b!1331203 (= lt!591415 (lemmaInListMapAfterAddingDiffThenInBefore!265 k0!1153 (select (arr!43521 _keys!1590) from!1980) lt!591414 lt!591413))))

(declare-fun lt!591416 () ListLongMap!21507)

(assert (=> b!1331203 (contains!8869 lt!591416 k0!1153)))

(declare-fun lt!591412 () Unit!43747)

(assert (=> b!1331203 (= lt!591412 (lemmaInListMapAfterAddingDiffThenInBefore!265 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591416))))

(declare-fun +!4660 (ListLongMap!21507 tuple2!23838) ListLongMap!21507)

(assert (=> b!1331203 (= lt!591416 (+!4660 lt!591413 (tuple2!23839 (select (arr!43521 _keys!1590) from!1980) lt!591414)))))

(declare-fun get!21986 (ValueCell!17418 V!53947) V!53947)

(declare-fun dynLambda!3697 (Int (_ BitVec 64)) V!53947)

(assert (=> b!1331203 (= lt!591414 (get!21986 (select (arr!43520 _values!1320) from!1980) (dynLambda!3697 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6378 (array!90119 array!90117 (_ BitVec 32) (_ BitVec 32) V!53947 V!53947 (_ BitVec 32) Int) ListLongMap!21507)

(assert (=> b!1331203 (= lt!591413 (getCurrentListMapNoExtraKeys!6378 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331204 () Bool)

(assert (=> b!1331204 (= e!758596 tp_is_empty!36633)))

(declare-fun b!1331205 () Bool)

(declare-fun res!883441 () Bool)

(assert (=> b!1331205 (=> (not res!883441) (not e!758599))))

(assert (=> b!1331205 (= res!883441 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44072 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1331206 () Bool)

(declare-fun res!883442 () Bool)

(assert (=> b!1331206 (=> (not res!883442) (not e!758599))))

(assert (=> b!1331206 (= res!883442 (and (= (size!44071 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44072 _keys!1590) (size!44071 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56623 () Bool)

(assert (=> mapIsEmpty!56623 mapRes!56623))

(declare-fun b!1331207 () Bool)

(assert (=> b!1331207 (= e!758597 (and e!758598 mapRes!56623))))

(declare-fun condMapEmpty!56623 () Bool)

(declare-fun mapDefault!56623 () ValueCell!17418)

(assert (=> b!1331207 (= condMapEmpty!56623 (= (arr!43520 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17418)) mapDefault!56623)))))

(declare-fun b!1331208 () Bool)

(declare-fun res!883438 () Bool)

(assert (=> b!1331208 (=> (not res!883438) (not e!758599))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331208 (= res!883438 (validKeyInArray!0 (select (arr!43521 _keys!1590) from!1980)))))

(declare-fun b!1331209 () Bool)

(declare-fun res!883440 () Bool)

(assert (=> b!1331209 (=> (not res!883440) (not e!758599))))

(declare-datatypes ((List!31025 0))(
  ( (Nil!31022) (Cons!31021 (h!32230 (_ BitVec 64)) (t!45168 List!31025)) )
))
(declare-fun arrayNoDuplicates!0 (array!90119 (_ BitVec 32) List!31025) Bool)

(assert (=> b!1331209 (= res!883440 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31022))))

(assert (= (and start!112364 res!883444) b!1331206))

(assert (= (and b!1331206 res!883442) b!1331202))

(assert (= (and b!1331202 res!883445) b!1331209))

(assert (= (and b!1331209 res!883440) b!1331205))

(assert (= (and b!1331205 res!883441) b!1331198))

(assert (= (and b!1331198 res!883443) b!1331201))

(assert (= (and b!1331201 res!883439) b!1331208))

(assert (= (and b!1331208 res!883438) b!1331199))

(assert (= (and b!1331199 res!883437) b!1331203))

(assert (= (and b!1331207 condMapEmpty!56623) mapIsEmpty!56623))

(assert (= (and b!1331207 (not condMapEmpty!56623)) mapNonEmpty!56623))

(get-info :version)

(assert (= (and mapNonEmpty!56623 ((_ is ValueCellFull!17418) mapValue!56623)) b!1331204))

(assert (= (and b!1331207 ((_ is ValueCellFull!17418) mapDefault!56623)) b!1331200))

(assert (= start!112364 b!1331207))

(declare-fun b_lambda!23993 () Bool)

(assert (=> (not b_lambda!23993) (not b!1331203)))

(declare-fun t!45166 () Bool)

(declare-fun tb!11947 () Bool)

(assert (=> (and start!112364 (= defaultEntry!1323 defaultEntry!1323) t!45166) tb!11947))

(declare-fun result!24957 () Bool)

(assert (=> tb!11947 (= result!24957 tp_is_empty!36633)))

(assert (=> b!1331203 t!45166))

(declare-fun b_and!49513 () Bool)

(assert (= b_and!49511 (and (=> t!45166 result!24957) b_and!49513)))

(declare-fun m!1219901 () Bool)

(assert (=> mapNonEmpty!56623 m!1219901))

(declare-fun m!1219903 () Bool)

(assert (=> b!1331209 m!1219903))

(declare-fun m!1219905 () Bool)

(assert (=> b!1331201 m!1219905))

(assert (=> b!1331203 m!1219905))

(declare-fun m!1219907 () Bool)

(assert (=> b!1331203 m!1219907))

(declare-fun m!1219909 () Bool)

(assert (=> b!1331203 m!1219909))

(declare-fun m!1219911 () Bool)

(assert (=> b!1331203 m!1219911))

(assert (=> b!1331203 m!1219909))

(declare-fun m!1219913 () Bool)

(assert (=> b!1331203 m!1219913))

(declare-fun m!1219915 () Bool)

(assert (=> b!1331203 m!1219915))

(assert (=> b!1331203 m!1219911))

(declare-fun m!1219917 () Bool)

(assert (=> b!1331203 m!1219917))

(declare-fun m!1219919 () Bool)

(assert (=> b!1331203 m!1219919))

(declare-fun m!1219921 () Bool)

(assert (=> b!1331203 m!1219921))

(declare-fun m!1219923 () Bool)

(assert (=> b!1331203 m!1219923))

(assert (=> b!1331203 m!1219905))

(declare-fun m!1219925 () Bool)

(assert (=> b!1331198 m!1219925))

(assert (=> b!1331198 m!1219925))

(declare-fun m!1219927 () Bool)

(assert (=> b!1331198 m!1219927))

(assert (=> b!1331208 m!1219905))

(assert (=> b!1331208 m!1219905))

(declare-fun m!1219929 () Bool)

(assert (=> b!1331208 m!1219929))

(declare-fun m!1219931 () Bool)

(assert (=> start!112364 m!1219931))

(declare-fun m!1219933 () Bool)

(assert (=> start!112364 m!1219933))

(declare-fun m!1219935 () Bool)

(assert (=> start!112364 m!1219935))

(declare-fun m!1219937 () Bool)

(assert (=> b!1331202 m!1219937))

(check-sat (not mapNonEmpty!56623) tp_is_empty!36633 (not b_lambda!23993) (not start!112364) (not b!1331209) b_and!49513 (not b_next!30723) (not b!1331202) (not b!1331203) (not b!1331208) (not b!1331198))
(check-sat b_and!49513 (not b_next!30723))
