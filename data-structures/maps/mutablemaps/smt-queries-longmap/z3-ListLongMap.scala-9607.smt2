; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113600 () Bool)

(assert start!113600)

(declare-fun b_free!31557 () Bool)

(declare-fun b_next!31557 () Bool)

(assert (=> start!113600 (= b_free!31557 (not b_next!31557))))

(declare-fun tp!110481 () Bool)

(declare-fun b_and!50913 () Bool)

(assert (=> start!113600 (= tp!110481 b_and!50913)))

(declare-fun b!1348124 () Bool)

(declare-fun res!894598 () Bool)

(declare-fun e!766953 () Bool)

(assert (=> b!1348124 (=> (not res!894598) (not e!766953))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91903 0))(
  ( (array!91904 (arr!44402 (Array (_ BitVec 32) (_ BitVec 64))) (size!44953 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91903)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55179 0))(
  ( (V!55180 (val!18853 Int)) )
))
(declare-datatypes ((ValueCell!17880 0))(
  ( (ValueCellFull!17880 (v!21502 V!55179)) (EmptyCell!17880) )
))
(declare-datatypes ((array!91905 0))(
  ( (array!91906 (arr!44403 (Array (_ BitVec 32) ValueCell!17880)) (size!44954 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91905)

(assert (=> b!1348124 (= res!894598 (and (= (size!44954 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44953 _keys!1571) (size!44954 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1348125 () Bool)

(declare-fun res!894596 () Bool)

(assert (=> b!1348125 (=> (not res!894596) (not e!766953))))

(declare-datatypes ((List!31620 0))(
  ( (Nil!31617) (Cons!31616 (h!32825 (_ BitVec 64)) (t!46263 List!31620)) )
))
(declare-fun arrayNoDuplicates!0 (array!91903 (_ BitVec 32) List!31620) Bool)

(assert (=> b!1348125 (= res!894596 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31617))))

(declare-fun b!1348126 () Bool)

(declare-fun res!894597 () Bool)

(assert (=> b!1348126 (=> (not res!894597) (not e!766953))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1348126 (= res!894597 (validKeyInArray!0 (select (arr!44402 _keys!1571) from!1960)))))

(declare-fun b!1348127 () Bool)

(declare-fun res!894600 () Bool)

(assert (=> b!1348127 (=> (not res!894600) (not e!766953))))

(declare-fun minValue!1245 () V!55179)

(declare-fun zeroValue!1245 () V!55179)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24452 0))(
  ( (tuple2!24453 (_1!12236 (_ BitVec 64)) (_2!12236 V!55179)) )
))
(declare-datatypes ((List!31621 0))(
  ( (Nil!31618) (Cons!31617 (h!32826 tuple2!24452) (t!46264 List!31621)) )
))
(declare-datatypes ((ListLongMap!22121 0))(
  ( (ListLongMap!22122 (toList!11076 List!31621)) )
))
(declare-fun contains!9189 (ListLongMap!22121 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5966 (array!91903 array!91905 (_ BitVec 32) (_ BitVec 32) V!55179 V!55179 (_ BitVec 32) Int) ListLongMap!22121)

(assert (=> b!1348127 (= res!894600 (contains!9189 (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun res!894599 () Bool)

(assert (=> start!113600 (=> (not res!894599) (not e!766953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113600 (= res!894599 (validMask!0 mask!1977))))

(assert (=> start!113600 e!766953))

(declare-fun tp_is_empty!37557 () Bool)

(assert (=> start!113600 tp_is_empty!37557))

(assert (=> start!113600 true))

(declare-fun array_inv!33359 (array!91903) Bool)

(assert (=> start!113600 (array_inv!33359 _keys!1571)))

(declare-fun e!766952 () Bool)

(declare-fun array_inv!33360 (array!91905) Bool)

(assert (=> start!113600 (and (array_inv!33360 _values!1303) e!766952)))

(assert (=> start!113600 tp!110481))

(declare-fun mapIsEmpty!58046 () Bool)

(declare-fun mapRes!58046 () Bool)

(assert (=> mapIsEmpty!58046 mapRes!58046))

(declare-fun b!1348128 () Bool)

(declare-fun res!894593 () Bool)

(assert (=> b!1348128 (=> (not res!894593) (not e!766953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91903 (_ BitVec 32)) Bool)

(assert (=> b!1348128 (= res!894593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1348129 () Bool)

(declare-fun res!894601 () Bool)

(assert (=> b!1348129 (=> (not res!894601) (not e!766953))))

(assert (=> b!1348129 (= res!894601 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1348130 () Bool)

(declare-fun e!766951 () Bool)

(assert (=> b!1348130 (= e!766951 tp_is_empty!37557)))

(declare-fun b!1348131 () Bool)

(declare-fun res!894594 () Bool)

(assert (=> b!1348131 (=> (not res!894594) (not e!766953))))

(assert (=> b!1348131 (= res!894594 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44953 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1348132 () Bool)

(declare-fun e!766955 () Bool)

(assert (=> b!1348132 (= e!766955 tp_is_empty!37557)))

(declare-fun b!1348133 () Bool)

(assert (=> b!1348133 (= e!766952 (and e!766955 mapRes!58046))))

(declare-fun condMapEmpty!58046 () Bool)

(declare-fun mapDefault!58046 () ValueCell!17880)

(assert (=> b!1348133 (= condMapEmpty!58046 (= (arr!44403 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17880)) mapDefault!58046)))))

(declare-fun b!1348134 () Bool)

(declare-fun res!894595 () Bool)

(assert (=> b!1348134 (=> (not res!894595) (not e!766953))))

(assert (=> b!1348134 (= res!894595 (not (= (select (arr!44402 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1348135 () Bool)

(assert (=> b!1348135 (= e!766953 (not (contains!9189 (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) k0!1142)))))

(declare-fun lt!595909 () ListLongMap!22121)

(declare-fun +!4825 (ListLongMap!22121 tuple2!24452) ListLongMap!22121)

(assert (=> b!1348135 (contains!9189 (+!4825 lt!595909 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142)))

(declare-datatypes ((Unit!44118 0))(
  ( (Unit!44119) )
))
(declare-fun lt!595910 () Unit!44118)

(declare-fun addStillContains!1218 (ListLongMap!22121 (_ BitVec 64) V!55179 (_ BitVec 64)) Unit!44118)

(assert (=> b!1348135 (= lt!595910 (addStillContains!1218 lt!595909 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k0!1142))))

(assert (=> b!1348135 (contains!9189 lt!595909 k0!1142)))

(declare-fun lt!595908 () Unit!44118)

(declare-fun lt!595913 () V!55179)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!411 ((_ BitVec 64) (_ BitVec 64) V!55179 ListLongMap!22121) Unit!44118)

(assert (=> b!1348135 (= lt!595908 (lemmaInListMapAfterAddingDiffThenInBefore!411 k0!1142 (select (arr!44402 _keys!1571) from!1960) lt!595913 lt!595909))))

(declare-fun lt!595912 () ListLongMap!22121)

(assert (=> b!1348135 (contains!9189 lt!595912 k0!1142)))

(declare-fun lt!595911 () Unit!44118)

(assert (=> b!1348135 (= lt!595911 (lemmaInListMapAfterAddingDiffThenInBefore!411 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595912))))

(assert (=> b!1348135 (= lt!595912 (+!4825 lt!595909 (tuple2!24453 (select (arr!44402 _keys!1571) from!1960) lt!595913)))))

(declare-fun get!22475 (ValueCell!17880 V!55179) V!55179)

(declare-fun dynLambda!3862 (Int (_ BitVec 64)) V!55179)

(assert (=> b!1348135 (= lt!595913 (get!22475 (select (arr!44403 _values!1303) from!1960) (dynLambda!3862 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6552 (array!91903 array!91905 (_ BitVec 32) (_ BitVec 32) V!55179 V!55179 (_ BitVec 32) Int) ListLongMap!22121)

(assert (=> b!1348135 (= lt!595909 (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun mapNonEmpty!58046 () Bool)

(declare-fun tp!110480 () Bool)

(assert (=> mapNonEmpty!58046 (= mapRes!58046 (and tp!110480 e!766951))))

(declare-fun mapRest!58046 () (Array (_ BitVec 32) ValueCell!17880))

(declare-fun mapKey!58046 () (_ BitVec 32))

(declare-fun mapValue!58046 () ValueCell!17880)

(assert (=> mapNonEmpty!58046 (= (arr!44403 _values!1303) (store mapRest!58046 mapKey!58046 mapValue!58046))))

(assert (= (and start!113600 res!894599) b!1348124))

(assert (= (and b!1348124 res!894598) b!1348128))

(assert (= (and b!1348128 res!894593) b!1348125))

(assert (= (and b!1348125 res!894596) b!1348131))

(assert (= (and b!1348131 res!894594) b!1348127))

(assert (= (and b!1348127 res!894600) b!1348134))

(assert (= (and b!1348134 res!894595) b!1348126))

(assert (= (and b!1348126 res!894597) b!1348129))

(assert (= (and b!1348129 res!894601) b!1348135))

(assert (= (and b!1348133 condMapEmpty!58046) mapIsEmpty!58046))

(assert (= (and b!1348133 (not condMapEmpty!58046)) mapNonEmpty!58046))

(get-info :version)

(assert (= (and mapNonEmpty!58046 ((_ is ValueCellFull!17880) mapValue!58046)) b!1348130))

(assert (= (and b!1348133 ((_ is ValueCellFull!17880) mapDefault!58046)) b!1348132))

(assert (= start!113600 b!1348133))

(declare-fun b_lambda!24641 () Bool)

(assert (=> (not b_lambda!24641) (not b!1348135)))

(declare-fun t!46262 () Bool)

(declare-fun tb!12447 () Bool)

(assert (=> (and start!113600 (= defaultEntry!1306 defaultEntry!1306) t!46262) tb!12447))

(declare-fun result!25979 () Bool)

(assert (=> tb!12447 (= result!25979 tp_is_empty!37557)))

(assert (=> b!1348135 t!46262))

(declare-fun b_and!50915 () Bool)

(assert (= b_and!50913 (and (=> t!46262 result!25979) b_and!50915)))

(declare-fun m!1235195 () Bool)

(assert (=> b!1348128 m!1235195))

(declare-fun m!1235197 () Bool)

(assert (=> b!1348135 m!1235197))

(declare-fun m!1235199 () Bool)

(assert (=> b!1348135 m!1235199))

(declare-fun m!1235201 () Bool)

(assert (=> b!1348135 m!1235201))

(declare-fun m!1235203 () Bool)

(assert (=> b!1348135 m!1235203))

(declare-fun m!1235205 () Bool)

(assert (=> b!1348135 m!1235205))

(declare-fun m!1235207 () Bool)

(assert (=> b!1348135 m!1235207))

(declare-fun m!1235209 () Bool)

(assert (=> b!1348135 m!1235209))

(assert (=> b!1348135 m!1235205))

(declare-fun m!1235211 () Bool)

(assert (=> b!1348135 m!1235211))

(declare-fun m!1235213 () Bool)

(assert (=> b!1348135 m!1235213))

(declare-fun m!1235215 () Bool)

(assert (=> b!1348135 m!1235215))

(assert (=> b!1348135 m!1235211))

(assert (=> b!1348135 m!1235203))

(assert (=> b!1348135 m!1235215))

(declare-fun m!1235217 () Bool)

(assert (=> b!1348135 m!1235217))

(declare-fun m!1235219 () Bool)

(assert (=> b!1348135 m!1235219))

(assert (=> b!1348135 m!1235201))

(declare-fun m!1235221 () Bool)

(assert (=> b!1348135 m!1235221))

(declare-fun m!1235223 () Bool)

(assert (=> b!1348135 m!1235223))

(declare-fun m!1235225 () Bool)

(assert (=> b!1348135 m!1235225))

(assert (=> b!1348126 m!1235211))

(assert (=> b!1348126 m!1235211))

(declare-fun m!1235227 () Bool)

(assert (=> b!1348126 m!1235227))

(declare-fun m!1235229 () Bool)

(assert (=> b!1348125 m!1235229))

(declare-fun m!1235231 () Bool)

(assert (=> b!1348127 m!1235231))

(assert (=> b!1348127 m!1235231))

(declare-fun m!1235233 () Bool)

(assert (=> b!1348127 m!1235233))

(assert (=> b!1348134 m!1235211))

(declare-fun m!1235235 () Bool)

(assert (=> mapNonEmpty!58046 m!1235235))

(declare-fun m!1235237 () Bool)

(assert (=> start!113600 m!1235237))

(declare-fun m!1235239 () Bool)

(assert (=> start!113600 m!1235239))

(declare-fun m!1235241 () Bool)

(assert (=> start!113600 m!1235241))

(check-sat (not start!113600) (not b!1348125) (not b_lambda!24641) tp_is_empty!37557 (not b_next!31557) (not b!1348128) (not b!1348126) (not b!1348127) (not mapNonEmpty!58046) b_and!50915 (not b!1348135))
(check-sat b_and!50915 (not b_next!31557))
(get-model)

(declare-fun b_lambda!24645 () Bool)

(assert (= b_lambda!24641 (or (and start!113600 b_free!31557) b_lambda!24645)))

(check-sat (not b_lambda!24645) (not start!113600) (not b!1348125) tp_is_empty!37557 (not b_next!31557) (not b!1348128) (not b!1348126) (not b!1348127) (not mapNonEmpty!58046) b_and!50915 (not b!1348135))
(check-sat b_and!50915 (not b_next!31557))
(get-model)

(declare-fun b!1348186 () Bool)

(declare-fun e!766979 () Bool)

(declare-fun e!766981 () Bool)

(assert (=> b!1348186 (= e!766979 e!766981)))

(declare-fun c!126348 () Bool)

(assert (=> b!1348186 (= c!126348 (validKeyInArray!0 (select (arr!44402 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1348187 () Bool)

(declare-fun call!65082 () Bool)

(assert (=> b!1348187 (= e!766981 call!65082)))

(declare-fun b!1348188 () Bool)

(assert (=> b!1348188 (= e!766981 call!65082)))

(declare-fun d!144381 () Bool)

(declare-fun res!894635 () Bool)

(declare-fun e!766982 () Bool)

(assert (=> d!144381 (=> res!894635 e!766982)))

(assert (=> d!144381 (= res!894635 (bvsge #b00000000000000000000000000000000 (size!44953 _keys!1571)))))

(assert (=> d!144381 (= (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31617) e!766982)))

(declare-fun b!1348189 () Bool)

(assert (=> b!1348189 (= e!766982 e!766979)))

(declare-fun res!894636 () Bool)

(assert (=> b!1348189 (=> (not res!894636) (not e!766979))))

(declare-fun e!766980 () Bool)

(assert (=> b!1348189 (= res!894636 (not e!766980))))

(declare-fun res!894637 () Bool)

(assert (=> b!1348189 (=> (not res!894637) (not e!766980))))

(assert (=> b!1348189 (= res!894637 (validKeyInArray!0 (select (arr!44402 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun bm!65079 () Bool)

(assert (=> bm!65079 (= call!65082 (arrayNoDuplicates!0 _keys!1571 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!126348 (Cons!31616 (select (arr!44402 _keys!1571) #b00000000000000000000000000000000) Nil!31617) Nil!31617)))))

(declare-fun b!1348190 () Bool)

(declare-fun contains!9190 (List!31620 (_ BitVec 64)) Bool)

(assert (=> b!1348190 (= e!766980 (contains!9190 Nil!31617 (select (arr!44402 _keys!1571) #b00000000000000000000000000000000)))))

(assert (= (and d!144381 (not res!894635)) b!1348189))

(assert (= (and b!1348189 res!894637) b!1348190))

(assert (= (and b!1348189 res!894636) b!1348186))

(assert (= (and b!1348186 c!126348) b!1348188))

(assert (= (and b!1348186 (not c!126348)) b!1348187))

(assert (= (or b!1348188 b!1348187) bm!65079))

(declare-fun m!1235291 () Bool)

(assert (=> b!1348186 m!1235291))

(assert (=> b!1348186 m!1235291))

(declare-fun m!1235293 () Bool)

(assert (=> b!1348186 m!1235293))

(assert (=> b!1348189 m!1235291))

(assert (=> b!1348189 m!1235291))

(assert (=> b!1348189 m!1235293))

(assert (=> bm!65079 m!1235291))

(declare-fun m!1235295 () Bool)

(assert (=> bm!65079 m!1235295))

(assert (=> b!1348190 m!1235291))

(assert (=> b!1348190 m!1235291))

(declare-fun m!1235297 () Bool)

(assert (=> b!1348190 m!1235297))

(assert (=> b!1348125 d!144381))

(declare-fun d!144383 () Bool)

(assert (=> d!144383 (contains!9189 lt!595909 k0!1142)))

(declare-fun lt!595934 () Unit!44118)

(declare-fun choose!1985 ((_ BitVec 64) (_ BitVec 64) V!55179 ListLongMap!22121) Unit!44118)

(assert (=> d!144383 (= lt!595934 (choose!1985 k0!1142 (select (arr!44402 _keys!1571) from!1960) lt!595913 lt!595909))))

(assert (=> d!144383 (contains!9189 (+!4825 lt!595909 (tuple2!24453 (select (arr!44402 _keys!1571) from!1960) lt!595913)) k0!1142)))

(assert (=> d!144383 (= (lemmaInListMapAfterAddingDiffThenInBefore!411 k0!1142 (select (arr!44402 _keys!1571) from!1960) lt!595913 lt!595909) lt!595934)))

(declare-fun bs!38642 () Bool)

(assert (= bs!38642 d!144383))

(assert (=> bs!38642 m!1235219))

(assert (=> bs!38642 m!1235211))

(declare-fun m!1235299 () Bool)

(assert (=> bs!38642 m!1235299))

(assert (=> bs!38642 m!1235197))

(assert (=> bs!38642 m!1235197))

(declare-fun m!1235301 () Bool)

(assert (=> bs!38642 m!1235301))

(assert (=> b!1348135 d!144383))

(declare-fun d!144385 () Bool)

(declare-fun e!766985 () Bool)

(assert (=> d!144385 e!766985))

(declare-fun res!894642 () Bool)

(assert (=> d!144385 (=> (not res!894642) (not e!766985))))

(declare-fun lt!595943 () ListLongMap!22121)

(assert (=> d!144385 (= res!894642 (contains!9189 lt!595943 (_1!12236 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(declare-fun lt!595945 () List!31621)

(assert (=> d!144385 (= lt!595943 (ListLongMap!22122 lt!595945))))

(declare-fun lt!595944 () Unit!44118)

(declare-fun lt!595946 () Unit!44118)

(assert (=> d!144385 (= lt!595944 lt!595946)))

(declare-datatypes ((Option!774 0))(
  ( (Some!773 (v!21504 V!55179)) (None!772) )
))
(declare-fun getValueByKey!723 (List!31621 (_ BitVec 64)) Option!774)

(assert (=> d!144385 (= (getValueByKey!723 lt!595945 (_1!12236 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) (Some!773 (_2!12236 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(declare-fun lemmaContainsTupThenGetReturnValue!366 (List!31621 (_ BitVec 64) V!55179) Unit!44118)

(assert (=> d!144385 (= lt!595946 (lemmaContainsTupThenGetReturnValue!366 lt!595945 (_1!12236 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) (_2!12236 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(declare-fun insertStrictlySorted!495 (List!31621 (_ BitVec 64) V!55179) List!31621)

(assert (=> d!144385 (= lt!595945 (insertStrictlySorted!495 (toList!11076 lt!595909) (_1!12236 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) (_2!12236 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(assert (=> d!144385 (= (+!4825 lt!595909 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) lt!595943)))

(declare-fun b!1348195 () Bool)

(declare-fun res!894643 () Bool)

(assert (=> b!1348195 (=> (not res!894643) (not e!766985))))

(assert (=> b!1348195 (= res!894643 (= (getValueByKey!723 (toList!11076 lt!595943) (_1!12236 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) (Some!773 (_2!12236 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))))

(declare-fun b!1348196 () Bool)

(declare-fun contains!9191 (List!31621 tuple2!24452) Bool)

(assert (=> b!1348196 (= e!766985 (contains!9191 (toList!11076 lt!595943) (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))

(assert (= (and d!144385 res!894642) b!1348195))

(assert (= (and b!1348195 res!894643) b!1348196))

(declare-fun m!1235303 () Bool)

(assert (=> d!144385 m!1235303))

(declare-fun m!1235305 () Bool)

(assert (=> d!144385 m!1235305))

(declare-fun m!1235307 () Bool)

(assert (=> d!144385 m!1235307))

(declare-fun m!1235309 () Bool)

(assert (=> d!144385 m!1235309))

(declare-fun m!1235311 () Bool)

(assert (=> b!1348195 m!1235311))

(declare-fun m!1235313 () Bool)

(assert (=> b!1348196 m!1235313))

(assert (=> b!1348135 d!144385))

(declare-fun d!144387 () Bool)

(declare-fun c!126351 () Bool)

(assert (=> d!144387 (= c!126351 ((_ is ValueCellFull!17880) (select (arr!44403 _values!1303) from!1960)))))

(declare-fun e!766988 () V!55179)

(assert (=> d!144387 (= (get!22475 (select (arr!44403 _values!1303) from!1960) (dynLambda!3862 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)) e!766988)))

(declare-fun b!1348201 () Bool)

(declare-fun get!22476 (ValueCell!17880 V!55179) V!55179)

(assert (=> b!1348201 (= e!766988 (get!22476 (select (arr!44403 _values!1303) from!1960) (dynLambda!3862 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1348202 () Bool)

(declare-fun get!22477 (ValueCell!17880 V!55179) V!55179)

(assert (=> b!1348202 (= e!766988 (get!22477 (select (arr!44403 _values!1303) from!1960) (dynLambda!3862 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144387 c!126351) b!1348201))

(assert (= (and d!144387 (not c!126351)) b!1348202))

(assert (=> b!1348201 m!1235203))

(assert (=> b!1348201 m!1235205))

(declare-fun m!1235315 () Bool)

(assert (=> b!1348201 m!1235315))

(assert (=> b!1348202 m!1235203))

(assert (=> b!1348202 m!1235205))

(declare-fun m!1235317 () Bool)

(assert (=> b!1348202 m!1235317))

(assert (=> b!1348135 d!144387))

(declare-fun d!144389 () Bool)

(assert (=> d!144389 (contains!9189 lt!595912 k0!1142)))

(declare-fun lt!595947 () Unit!44118)

(assert (=> d!144389 (= lt!595947 (choose!1985 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595912))))

(assert (=> d!144389 (contains!9189 (+!4825 lt!595912 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142)))

(assert (=> d!144389 (= (lemmaInListMapAfterAddingDiffThenInBefore!411 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595912) lt!595947)))

(declare-fun bs!38643 () Bool)

(assert (= bs!38643 d!144389))

(assert (=> bs!38643 m!1235209))

(declare-fun m!1235319 () Bool)

(assert (=> bs!38643 m!1235319))

(declare-fun m!1235321 () Bool)

(assert (=> bs!38643 m!1235321))

(assert (=> bs!38643 m!1235321))

(declare-fun m!1235323 () Bool)

(assert (=> bs!38643 m!1235323))

(assert (=> b!1348135 d!144389))

(declare-fun d!144391 () Bool)

(declare-fun e!766994 () Bool)

(assert (=> d!144391 e!766994))

(declare-fun res!894646 () Bool)

(assert (=> d!144391 (=> res!894646 e!766994)))

(declare-fun lt!595957 () Bool)

(assert (=> d!144391 (= res!894646 (not lt!595957))))

(declare-fun lt!595958 () Bool)

(assert (=> d!144391 (= lt!595957 lt!595958)))

(declare-fun lt!595959 () Unit!44118)

(declare-fun e!766993 () Unit!44118)

(assert (=> d!144391 (= lt!595959 e!766993)))

(declare-fun c!126354 () Bool)

(assert (=> d!144391 (= c!126354 lt!595958)))

(declare-fun containsKey!741 (List!31621 (_ BitVec 64)) Bool)

(assert (=> d!144391 (= lt!595958 (containsKey!741 (toList!11076 lt!595912) k0!1142))))

(assert (=> d!144391 (= (contains!9189 lt!595912 k0!1142) lt!595957)))

(declare-fun b!1348209 () Bool)

(declare-fun lt!595956 () Unit!44118)

(assert (=> b!1348209 (= e!766993 lt!595956)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!486 (List!31621 (_ BitVec 64)) Unit!44118)

(assert (=> b!1348209 (= lt!595956 (lemmaContainsKeyImpliesGetValueByKeyDefined!486 (toList!11076 lt!595912) k0!1142))))

(declare-fun isDefined!526 (Option!774) Bool)

(assert (=> b!1348209 (isDefined!526 (getValueByKey!723 (toList!11076 lt!595912) k0!1142))))

(declare-fun b!1348210 () Bool)

(declare-fun Unit!44120 () Unit!44118)

(assert (=> b!1348210 (= e!766993 Unit!44120)))

(declare-fun b!1348211 () Bool)

(assert (=> b!1348211 (= e!766994 (isDefined!526 (getValueByKey!723 (toList!11076 lt!595912) k0!1142)))))

(assert (= (and d!144391 c!126354) b!1348209))

(assert (= (and d!144391 (not c!126354)) b!1348210))

(assert (= (and d!144391 (not res!894646)) b!1348211))

(declare-fun m!1235325 () Bool)

(assert (=> d!144391 m!1235325))

(declare-fun m!1235327 () Bool)

(assert (=> b!1348209 m!1235327))

(declare-fun m!1235329 () Bool)

(assert (=> b!1348209 m!1235329))

(assert (=> b!1348209 m!1235329))

(declare-fun m!1235331 () Bool)

(assert (=> b!1348209 m!1235331))

(assert (=> b!1348211 m!1235329))

(assert (=> b!1348211 m!1235329))

(assert (=> b!1348211 m!1235331))

(assert (=> b!1348135 d!144391))

(declare-fun d!144393 () Bool)

(assert (=> d!144393 (contains!9189 (+!4825 lt!595909 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142)))

(declare-fun lt!595962 () Unit!44118)

(declare-fun choose!1986 (ListLongMap!22121 (_ BitVec 64) V!55179 (_ BitVec 64)) Unit!44118)

(assert (=> d!144393 (= lt!595962 (choose!1986 lt!595909 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k0!1142))))

(assert (=> d!144393 (contains!9189 lt!595909 k0!1142)))

(assert (=> d!144393 (= (addStillContains!1218 lt!595909 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k0!1142) lt!595962)))

(declare-fun bs!38644 () Bool)

(assert (= bs!38644 d!144393))

(assert (=> bs!38644 m!1235215))

(assert (=> bs!38644 m!1235215))

(assert (=> bs!38644 m!1235217))

(declare-fun m!1235333 () Bool)

(assert (=> bs!38644 m!1235333))

(assert (=> bs!38644 m!1235219))

(assert (=> b!1348135 d!144393))

(declare-fun d!144395 () Bool)

(declare-fun e!766995 () Bool)

(assert (=> d!144395 e!766995))

(declare-fun res!894647 () Bool)

(assert (=> d!144395 (=> (not res!894647) (not e!766995))))

(declare-fun lt!595963 () ListLongMap!22121)

(assert (=> d!144395 (= res!894647 (contains!9189 lt!595963 (_1!12236 (tuple2!24453 (select (arr!44402 _keys!1571) from!1960) lt!595913))))))

(declare-fun lt!595965 () List!31621)

(assert (=> d!144395 (= lt!595963 (ListLongMap!22122 lt!595965))))

(declare-fun lt!595964 () Unit!44118)

(declare-fun lt!595966 () Unit!44118)

(assert (=> d!144395 (= lt!595964 lt!595966)))

(assert (=> d!144395 (= (getValueByKey!723 lt!595965 (_1!12236 (tuple2!24453 (select (arr!44402 _keys!1571) from!1960) lt!595913))) (Some!773 (_2!12236 (tuple2!24453 (select (arr!44402 _keys!1571) from!1960) lt!595913))))))

(assert (=> d!144395 (= lt!595966 (lemmaContainsTupThenGetReturnValue!366 lt!595965 (_1!12236 (tuple2!24453 (select (arr!44402 _keys!1571) from!1960) lt!595913)) (_2!12236 (tuple2!24453 (select (arr!44402 _keys!1571) from!1960) lt!595913))))))

(assert (=> d!144395 (= lt!595965 (insertStrictlySorted!495 (toList!11076 lt!595909) (_1!12236 (tuple2!24453 (select (arr!44402 _keys!1571) from!1960) lt!595913)) (_2!12236 (tuple2!24453 (select (arr!44402 _keys!1571) from!1960) lt!595913))))))

(assert (=> d!144395 (= (+!4825 lt!595909 (tuple2!24453 (select (arr!44402 _keys!1571) from!1960) lt!595913)) lt!595963)))

(declare-fun b!1348213 () Bool)

(declare-fun res!894648 () Bool)

(assert (=> b!1348213 (=> (not res!894648) (not e!766995))))

(assert (=> b!1348213 (= res!894648 (= (getValueByKey!723 (toList!11076 lt!595963) (_1!12236 (tuple2!24453 (select (arr!44402 _keys!1571) from!1960) lt!595913))) (Some!773 (_2!12236 (tuple2!24453 (select (arr!44402 _keys!1571) from!1960) lt!595913)))))))

(declare-fun b!1348214 () Bool)

(assert (=> b!1348214 (= e!766995 (contains!9191 (toList!11076 lt!595963) (tuple2!24453 (select (arr!44402 _keys!1571) from!1960) lt!595913)))))

(assert (= (and d!144395 res!894647) b!1348213))

(assert (= (and b!1348213 res!894648) b!1348214))

(declare-fun m!1235335 () Bool)

(assert (=> d!144395 m!1235335))

(declare-fun m!1235337 () Bool)

(assert (=> d!144395 m!1235337))

(declare-fun m!1235339 () Bool)

(assert (=> d!144395 m!1235339))

(declare-fun m!1235341 () Bool)

(assert (=> d!144395 m!1235341))

(declare-fun m!1235343 () Bool)

(assert (=> b!1348213 m!1235343))

(declare-fun m!1235345 () Bool)

(assert (=> b!1348214 m!1235345))

(assert (=> b!1348135 d!144395))

(declare-fun d!144397 () Bool)

(declare-fun e!766997 () Bool)

(assert (=> d!144397 e!766997))

(declare-fun res!894649 () Bool)

(assert (=> d!144397 (=> res!894649 e!766997)))

(declare-fun lt!595968 () Bool)

(assert (=> d!144397 (= res!894649 (not lt!595968))))

(declare-fun lt!595969 () Bool)

(assert (=> d!144397 (= lt!595968 lt!595969)))

(declare-fun lt!595970 () Unit!44118)

(declare-fun e!766996 () Unit!44118)

(assert (=> d!144397 (= lt!595970 e!766996)))

(declare-fun c!126355 () Bool)

(assert (=> d!144397 (= c!126355 lt!595969)))

(assert (=> d!144397 (= lt!595969 (containsKey!741 (toList!11076 (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142))))

(assert (=> d!144397 (= (contains!9189 (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) k0!1142) lt!595968)))

(declare-fun b!1348215 () Bool)

(declare-fun lt!595967 () Unit!44118)

(assert (=> b!1348215 (= e!766996 lt!595967)))

(assert (=> b!1348215 (= lt!595967 (lemmaContainsKeyImpliesGetValueByKeyDefined!486 (toList!11076 (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142))))

(assert (=> b!1348215 (isDefined!526 (getValueByKey!723 (toList!11076 (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142))))

(declare-fun b!1348216 () Bool)

(declare-fun Unit!44121 () Unit!44118)

(assert (=> b!1348216 (= e!766996 Unit!44121)))

(declare-fun b!1348217 () Bool)

(assert (=> b!1348217 (= e!766997 (isDefined!526 (getValueByKey!723 (toList!11076 (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142)))))

(assert (= (and d!144397 c!126355) b!1348215))

(assert (= (and d!144397 (not c!126355)) b!1348216))

(assert (= (and d!144397 (not res!894649)) b!1348217))

(declare-fun m!1235347 () Bool)

(assert (=> d!144397 m!1235347))

(declare-fun m!1235349 () Bool)

(assert (=> b!1348215 m!1235349))

(declare-fun m!1235351 () Bool)

(assert (=> b!1348215 m!1235351))

(assert (=> b!1348215 m!1235351))

(declare-fun m!1235353 () Bool)

(assert (=> b!1348215 m!1235353))

(assert (=> b!1348217 m!1235351))

(assert (=> b!1348217 m!1235351))

(assert (=> b!1348217 m!1235353))

(assert (=> b!1348135 d!144397))

(declare-fun b!1348260 () Bool)

(declare-fun e!767026 () Bool)

(assert (=> b!1348260 (= e!767026 (validKeyInArray!0 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun b!1348261 () Bool)

(declare-fun e!767027 () Unit!44118)

(declare-fun Unit!44122 () Unit!44118)

(assert (=> b!1348261 (= e!767027 Unit!44122)))

(declare-fun c!126370 () Bool)

(declare-fun call!65101 () ListLongMap!22121)

(declare-fun bm!65094 () Bool)

(declare-fun c!126373 () Bool)

(declare-fun call!65097 () ListLongMap!22121)

(declare-fun call!65098 () ListLongMap!22121)

(declare-fun call!65100 () ListLongMap!22121)

(assert (=> bm!65094 (= call!65098 (+!4825 (ite c!126370 call!65101 (ite c!126373 call!65097 call!65100)) (ite (or c!126370 c!126373) (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24453 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun b!1348262 () Bool)

(declare-fun e!767034 () ListLongMap!22121)

(declare-fun call!65099 () ListLongMap!22121)

(assert (=> b!1348262 (= e!767034 call!65099)))

(declare-fun b!1348263 () Bool)

(declare-fun e!767036 () Bool)

(assert (=> b!1348263 (= e!767036 (validKeyInArray!0 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun b!1348264 () Bool)

(declare-fun res!894676 () Bool)

(declare-fun e!767029 () Bool)

(assert (=> b!1348264 (=> (not res!894676) (not e!767029))))

(declare-fun e!767024 () Bool)

(assert (=> b!1348264 (= res!894676 e!767024)))

(declare-fun c!126368 () Bool)

(assert (=> b!1348264 (= c!126368 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1348265 () Bool)

(declare-fun e!767035 () Bool)

(declare-fun e!767025 () Bool)

(assert (=> b!1348265 (= e!767035 e!767025)))

(declare-fun res!894674 () Bool)

(declare-fun call!65102 () Bool)

(assert (=> b!1348265 (= res!894674 call!65102)))

(assert (=> b!1348265 (=> (not res!894674) (not e!767025))))

(declare-fun b!1348266 () Bool)

(declare-fun e!767028 () Bool)

(declare-fun lt!596019 () ListLongMap!22121)

(declare-fun apply!1073 (ListLongMap!22121 (_ BitVec 64)) V!55179)

(assert (=> b!1348266 (= e!767028 (= (apply!1073 lt!596019 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1245))))

(declare-fun bm!65095 () Bool)

(assert (=> bm!65095 (= call!65097 call!65101)))

(declare-fun bm!65096 () Bool)

(assert (=> bm!65096 (= call!65101 (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1348267 () Bool)

(declare-fun e!767030 () ListLongMap!22121)

(assert (=> b!1348267 (= e!767030 (+!4825 call!65098 (tuple2!24453 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))

(declare-fun b!1348268 () Bool)

(declare-fun e!767033 () Bool)

(assert (=> b!1348268 (= e!767033 (= (apply!1073 lt!596019 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (get!22475 (select (arr!44403 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3862 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1348268 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44954 _values!1303)))))

(assert (=> b!1348268 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44953 _keys!1571)))))

(declare-fun bm!65097 () Bool)

(assert (=> bm!65097 (= call!65102 (contains!9189 lt!596019 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1348269 () Bool)

(declare-fun res!894675 () Bool)

(assert (=> b!1348269 (=> (not res!894675) (not e!767029))))

(declare-fun e!767032 () Bool)

(assert (=> b!1348269 (= res!894675 e!767032)))

(declare-fun res!894668 () Bool)

(assert (=> b!1348269 (=> res!894668 e!767032)))

(assert (=> b!1348269 (= res!894668 (not e!767026))))

(declare-fun res!894672 () Bool)

(assert (=> b!1348269 (=> (not res!894672) (not e!767026))))

(assert (=> b!1348269 (= res!894672 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44953 _keys!1571)))))

(declare-fun b!1348270 () Bool)

(declare-fun call!65103 () Bool)

(assert (=> b!1348270 (= e!767024 (not call!65103))))

(declare-fun b!1348271 () Bool)

(assert (=> b!1348271 (= e!767029 e!767035)))

(declare-fun c!126369 () Bool)

(assert (=> b!1348271 (= c!126369 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!65098 () Bool)

(assert (=> bm!65098 (= call!65103 (contains!9189 lt!596019 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!144399 () Bool)

(assert (=> d!144399 e!767029))

(declare-fun res!894671 () Bool)

(assert (=> d!144399 (=> (not res!894671) (not e!767029))))

(assert (=> d!144399 (= res!894671 (or (bvsge (bvadd #b00000000000000000000000000000001 from!1960) (size!44953 _keys!1571)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44953 _keys!1571)))))))

(declare-fun lt!596018 () ListLongMap!22121)

(assert (=> d!144399 (= lt!596019 lt!596018)))

(declare-fun lt!596028 () Unit!44118)

(assert (=> d!144399 (= lt!596028 e!767027)))

(declare-fun c!126371 () Bool)

(assert (=> d!144399 (= c!126371 e!767036)))

(declare-fun res!894673 () Bool)

(assert (=> d!144399 (=> (not res!894673) (not e!767036))))

(assert (=> d!144399 (= res!894673 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44953 _keys!1571)))))

(assert (=> d!144399 (= lt!596018 e!767030)))

(assert (=> d!144399 (= c!126370 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!144399 (validMask!0 mask!1977)))

(assert (=> d!144399 (= (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) lt!596019)))

(declare-fun bm!65099 () Bool)

(assert (=> bm!65099 (= call!65099 call!65098)))

(declare-fun b!1348272 () Bool)

(assert (=> b!1348272 (= e!767024 e!767028)))

(declare-fun res!894669 () Bool)

(assert (=> b!1348272 (= res!894669 call!65103)))

(assert (=> b!1348272 (=> (not res!894669) (not e!767028))))

(declare-fun b!1348273 () Bool)

(declare-fun c!126372 () Bool)

(assert (=> b!1348273 (= c!126372 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!767031 () ListLongMap!22121)

(assert (=> b!1348273 (= e!767034 e!767031)))

(declare-fun b!1348274 () Bool)

(assert (=> b!1348274 (= e!767035 (not call!65102))))

(declare-fun bm!65100 () Bool)

(assert (=> bm!65100 (= call!65100 call!65097)))

(declare-fun b!1348275 () Bool)

(declare-fun lt!596021 () Unit!44118)

(assert (=> b!1348275 (= e!767027 lt!596021)))

(declare-fun lt!596035 () ListLongMap!22121)

(assert (=> b!1348275 (= lt!596035 (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun lt!596016 () (_ BitVec 64))

(assert (=> b!1348275 (= lt!596016 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596029 () (_ BitVec 64))

(assert (=> b!1348275 (= lt!596029 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(declare-fun lt!596015 () Unit!44118)

(assert (=> b!1348275 (= lt!596015 (addStillContains!1218 lt!596035 lt!596016 zeroValue!1245 lt!596029))))

(assert (=> b!1348275 (contains!9189 (+!4825 lt!596035 (tuple2!24453 lt!596016 zeroValue!1245)) lt!596029)))

(declare-fun lt!596020 () Unit!44118)

(assert (=> b!1348275 (= lt!596020 lt!596015)))

(declare-fun lt!596033 () ListLongMap!22121)

(assert (=> b!1348275 (= lt!596033 (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun lt!596032 () (_ BitVec 64))

(assert (=> b!1348275 (= lt!596032 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596026 () (_ BitVec 64))

(assert (=> b!1348275 (= lt!596026 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(declare-fun lt!596034 () Unit!44118)

(declare-fun addApplyDifferent!576 (ListLongMap!22121 (_ BitVec 64) V!55179 (_ BitVec 64)) Unit!44118)

(assert (=> b!1348275 (= lt!596034 (addApplyDifferent!576 lt!596033 lt!596032 minValue!1245 lt!596026))))

(assert (=> b!1348275 (= (apply!1073 (+!4825 lt!596033 (tuple2!24453 lt!596032 minValue!1245)) lt!596026) (apply!1073 lt!596033 lt!596026))))

(declare-fun lt!596030 () Unit!44118)

(assert (=> b!1348275 (= lt!596030 lt!596034)))

(declare-fun lt!596024 () ListLongMap!22121)

(assert (=> b!1348275 (= lt!596024 (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun lt!596036 () (_ BitVec 64))

(assert (=> b!1348275 (= lt!596036 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596031 () (_ BitVec 64))

(assert (=> b!1348275 (= lt!596031 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(declare-fun lt!596025 () Unit!44118)

(assert (=> b!1348275 (= lt!596025 (addApplyDifferent!576 lt!596024 lt!596036 zeroValue!1245 lt!596031))))

(assert (=> b!1348275 (= (apply!1073 (+!4825 lt!596024 (tuple2!24453 lt!596036 zeroValue!1245)) lt!596031) (apply!1073 lt!596024 lt!596031))))

(declare-fun lt!596027 () Unit!44118)

(assert (=> b!1348275 (= lt!596027 lt!596025)))

(declare-fun lt!596022 () ListLongMap!22121)

(assert (=> b!1348275 (= lt!596022 (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun lt!596023 () (_ BitVec 64))

(assert (=> b!1348275 (= lt!596023 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596017 () (_ BitVec 64))

(assert (=> b!1348275 (= lt!596017 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(assert (=> b!1348275 (= lt!596021 (addApplyDifferent!576 lt!596022 lt!596023 minValue!1245 lt!596017))))

(assert (=> b!1348275 (= (apply!1073 (+!4825 lt!596022 (tuple2!24453 lt!596023 minValue!1245)) lt!596017) (apply!1073 lt!596022 lt!596017))))

(declare-fun b!1348276 () Bool)

(assert (=> b!1348276 (= e!767025 (= (apply!1073 lt!596019 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1245))))

(declare-fun b!1348277 () Bool)

(assert (=> b!1348277 (= e!767032 e!767033)))

(declare-fun res!894670 () Bool)

(assert (=> b!1348277 (=> (not res!894670) (not e!767033))))

(assert (=> b!1348277 (= res!894670 (contains!9189 lt!596019 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1348277 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44953 _keys!1571)))))

(declare-fun b!1348278 () Bool)

(assert (=> b!1348278 (= e!767031 call!65100)))

(declare-fun b!1348279 () Bool)

(assert (=> b!1348279 (= e!767030 e!767034)))

(assert (=> b!1348279 (= c!126373 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1348280 () Bool)

(assert (=> b!1348280 (= e!767031 call!65099)))

(assert (= (and d!144399 c!126370) b!1348267))

(assert (= (and d!144399 (not c!126370)) b!1348279))

(assert (= (and b!1348279 c!126373) b!1348262))

(assert (= (and b!1348279 (not c!126373)) b!1348273))

(assert (= (and b!1348273 c!126372) b!1348280))

(assert (= (and b!1348273 (not c!126372)) b!1348278))

(assert (= (or b!1348280 b!1348278) bm!65100))

(assert (= (or b!1348262 bm!65100) bm!65095))

(assert (= (or b!1348262 b!1348280) bm!65099))

(assert (= (or b!1348267 bm!65095) bm!65096))

(assert (= (or b!1348267 bm!65099) bm!65094))

(assert (= (and d!144399 res!894673) b!1348263))

(assert (= (and d!144399 c!126371) b!1348275))

(assert (= (and d!144399 (not c!126371)) b!1348261))

(assert (= (and d!144399 res!894671) b!1348269))

(assert (= (and b!1348269 res!894672) b!1348260))

(assert (= (and b!1348269 (not res!894668)) b!1348277))

(assert (= (and b!1348277 res!894670) b!1348268))

(assert (= (and b!1348269 res!894675) b!1348264))

(assert (= (and b!1348264 c!126368) b!1348272))

(assert (= (and b!1348264 (not c!126368)) b!1348270))

(assert (= (and b!1348272 res!894669) b!1348266))

(assert (= (or b!1348272 b!1348270) bm!65098))

(assert (= (and b!1348264 res!894676) b!1348271))

(assert (= (and b!1348271 c!126369) b!1348265))

(assert (= (and b!1348271 (not c!126369)) b!1348274))

(assert (= (and b!1348265 res!894674) b!1348276))

(assert (= (or b!1348265 b!1348274) bm!65097))

(declare-fun b_lambda!24647 () Bool)

(assert (=> (not b_lambda!24647) (not b!1348268)))

(assert (=> b!1348268 t!46262))

(declare-fun b_and!50921 () Bool)

(assert (= b_and!50915 (and (=> t!46262 result!25979) b_and!50921)))

(assert (=> d!144399 m!1235237))

(assert (=> bm!65096 m!1235199))

(declare-fun m!1235355 () Bool)

(assert (=> bm!65094 m!1235355))

(declare-fun m!1235357 () Bool)

(assert (=> bm!65098 m!1235357))

(declare-fun m!1235359 () Bool)

(assert (=> b!1348275 m!1235359))

(declare-fun m!1235361 () Bool)

(assert (=> b!1348275 m!1235361))

(declare-fun m!1235363 () Bool)

(assert (=> b!1348275 m!1235363))

(assert (=> b!1348275 m!1235361))

(declare-fun m!1235365 () Bool)

(assert (=> b!1348275 m!1235365))

(declare-fun m!1235367 () Bool)

(assert (=> b!1348275 m!1235367))

(declare-fun m!1235369 () Bool)

(assert (=> b!1348275 m!1235369))

(declare-fun m!1235371 () Bool)

(assert (=> b!1348275 m!1235371))

(declare-fun m!1235373 () Bool)

(assert (=> b!1348275 m!1235373))

(declare-fun m!1235375 () Bool)

(assert (=> b!1348275 m!1235375))

(declare-fun m!1235377 () Bool)

(assert (=> b!1348275 m!1235377))

(declare-fun m!1235379 () Bool)

(assert (=> b!1348275 m!1235379))

(declare-fun m!1235381 () Bool)

(assert (=> b!1348275 m!1235381))

(assert (=> b!1348275 m!1235199))

(assert (=> b!1348275 m!1235363))

(declare-fun m!1235383 () Bool)

(assert (=> b!1348275 m!1235383))

(declare-fun m!1235385 () Bool)

(assert (=> b!1348275 m!1235385))

(declare-fun m!1235387 () Bool)

(assert (=> b!1348275 m!1235387))

(declare-fun m!1235389 () Bool)

(assert (=> b!1348275 m!1235389))

(assert (=> b!1348275 m!1235369))

(assert (=> b!1348275 m!1235375))

(declare-fun m!1235391 () Bool)

(assert (=> b!1348267 m!1235391))

(declare-fun m!1235393 () Bool)

(assert (=> bm!65097 m!1235393))

(assert (=> b!1348263 m!1235387))

(assert (=> b!1348263 m!1235387))

(declare-fun m!1235395 () Bool)

(assert (=> b!1348263 m!1235395))

(assert (=> b!1348260 m!1235387))

(assert (=> b!1348260 m!1235387))

(assert (=> b!1348260 m!1235395))

(declare-fun m!1235397 () Bool)

(assert (=> b!1348276 m!1235397))

(declare-fun m!1235399 () Bool)

(assert (=> b!1348266 m!1235399))

(assert (=> b!1348277 m!1235387))

(assert (=> b!1348277 m!1235387))

(declare-fun m!1235401 () Bool)

(assert (=> b!1348277 m!1235401))

(assert (=> b!1348268 m!1235387))

(assert (=> b!1348268 m!1235205))

(declare-fun m!1235403 () Bool)

(assert (=> b!1348268 m!1235403))

(assert (=> b!1348268 m!1235205))

(declare-fun m!1235405 () Bool)

(assert (=> b!1348268 m!1235405))

(assert (=> b!1348268 m!1235387))

(declare-fun m!1235407 () Bool)

(assert (=> b!1348268 m!1235407))

(assert (=> b!1348268 m!1235403))

(assert (=> b!1348135 d!144399))

(declare-fun b!1348305 () Bool)

(declare-fun res!894685 () Bool)

(declare-fun e!767057 () Bool)

(assert (=> b!1348305 (=> (not res!894685) (not e!767057))))

(declare-fun lt!596053 () ListLongMap!22121)

(assert (=> b!1348305 (= res!894685 (not (contains!9189 lt!596053 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1348306 () Bool)

(declare-fun e!767056 () Bool)

(assert (=> b!1348306 (= e!767056 (validKeyInArray!0 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1348306 (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))

(declare-fun b!1348307 () Bool)

(declare-fun e!767052 () ListLongMap!22121)

(assert (=> b!1348307 (= e!767052 (ListLongMap!22122 Nil!31618))))

(declare-fun b!1348308 () Bool)

(declare-fun e!767053 () Bool)

(declare-fun isEmpty!1097 (ListLongMap!22121) Bool)

(assert (=> b!1348308 (= e!767053 (isEmpty!1097 lt!596053))))

(declare-fun b!1348309 () Bool)

(declare-fun e!767051 () ListLongMap!22121)

(assert (=> b!1348309 (= e!767052 e!767051)))

(declare-fun c!126383 () Bool)

(assert (=> b!1348309 (= c!126383 (validKeyInArray!0 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun b!1348310 () Bool)

(declare-fun call!65106 () ListLongMap!22121)

(assert (=> b!1348310 (= e!767051 call!65106)))

(declare-fun b!1348312 () Bool)

(assert (=> b!1348312 (= e!767053 (= lt!596053 (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) defaultEntry!1306)))))

(declare-fun b!1348313 () Bool)

(declare-fun lt!596055 () Unit!44118)

(declare-fun lt!596054 () Unit!44118)

(assert (=> b!1348313 (= lt!596055 lt!596054)))

(declare-fun lt!596051 () ListLongMap!22121)

(declare-fun lt!596052 () (_ BitVec 64))

(declare-fun lt!596056 () V!55179)

(declare-fun lt!596057 () (_ BitVec 64))

(assert (=> b!1348313 (not (contains!9189 (+!4825 lt!596051 (tuple2!24453 lt!596052 lt!596056)) lt!596057))))

(declare-fun addStillNotContains!511 (ListLongMap!22121 (_ BitVec 64) V!55179 (_ BitVec 64)) Unit!44118)

(assert (=> b!1348313 (= lt!596054 (addStillNotContains!511 lt!596051 lt!596052 lt!596056 lt!596057))))

(assert (=> b!1348313 (= lt!596057 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1348313 (= lt!596056 (get!22475 (select (arr!44403 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3862 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1348313 (= lt!596052 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(assert (=> b!1348313 (= lt!596051 call!65106)))

(assert (=> b!1348313 (= e!767051 (+!4825 call!65106 (tuple2!24453 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22475 (select (arr!44403 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3862 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!65103 () Bool)

(assert (=> bm!65103 (= call!65106 (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) defaultEntry!1306))))

(declare-fun b!1348314 () Bool)

(declare-fun e!767054 () Bool)

(assert (=> b!1348314 (= e!767054 e!767053)))

(declare-fun c!126385 () Bool)

(assert (=> b!1348314 (= c!126385 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44953 _keys!1571)))))

(declare-fun b!1348315 () Bool)

(assert (=> b!1348315 (= e!767057 e!767054)))

(declare-fun c!126382 () Bool)

(assert (=> b!1348315 (= c!126382 e!767056)))

(declare-fun res!894687 () Bool)

(assert (=> b!1348315 (=> (not res!894687) (not e!767056))))

(assert (=> b!1348315 (= res!894687 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44953 _keys!1571)))))

(declare-fun b!1348316 () Bool)

(assert (=> b!1348316 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44953 _keys!1571)))))

(assert (=> b!1348316 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44954 _values!1303)))))

(declare-fun e!767055 () Bool)

(assert (=> b!1348316 (= e!767055 (= (apply!1073 lt!596053 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (get!22475 (select (arr!44403 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3862 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1348311 () Bool)

(assert (=> b!1348311 (= e!767054 e!767055)))

(assert (=> b!1348311 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44953 _keys!1571)))))

(declare-fun res!894688 () Bool)

(assert (=> b!1348311 (= res!894688 (contains!9189 lt!596053 (select (arr!44402 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1348311 (=> (not res!894688) (not e!767055))))

(declare-fun d!144401 () Bool)

(assert (=> d!144401 e!767057))

(declare-fun res!894686 () Bool)

(assert (=> d!144401 (=> (not res!894686) (not e!767057))))

(assert (=> d!144401 (= res!894686 (not (contains!9189 lt!596053 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!144401 (= lt!596053 e!767052)))

(declare-fun c!126384 () Bool)

(assert (=> d!144401 (= c!126384 (bvsge (bvadd #b00000000000000000000000000000001 from!1960) (size!44953 _keys!1571)))))

(assert (=> d!144401 (validMask!0 mask!1977)))

(assert (=> d!144401 (= (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) lt!596053)))

(assert (= (and d!144401 c!126384) b!1348307))

(assert (= (and d!144401 (not c!126384)) b!1348309))

(assert (= (and b!1348309 c!126383) b!1348313))

(assert (= (and b!1348309 (not c!126383)) b!1348310))

(assert (= (or b!1348313 b!1348310) bm!65103))

(assert (= (and d!144401 res!894686) b!1348305))

(assert (= (and b!1348305 res!894685) b!1348315))

(assert (= (and b!1348315 res!894687) b!1348306))

(assert (= (and b!1348315 c!126382) b!1348311))

(assert (= (and b!1348315 (not c!126382)) b!1348314))

(assert (= (and b!1348311 res!894688) b!1348316))

(assert (= (and b!1348314 c!126385) b!1348312))

(assert (= (and b!1348314 (not c!126385)) b!1348308))

(declare-fun b_lambda!24649 () Bool)

(assert (=> (not b_lambda!24649) (not b!1348313)))

(assert (=> b!1348313 t!46262))

(declare-fun b_and!50923 () Bool)

(assert (= b_and!50921 (and (=> t!46262 result!25979) b_and!50923)))

(declare-fun b_lambda!24651 () Bool)

(assert (=> (not b_lambda!24651) (not b!1348316)))

(assert (=> b!1348316 t!46262))

(declare-fun b_and!50925 () Bool)

(assert (= b_and!50923 (and (=> t!46262 result!25979) b_and!50925)))

(declare-fun m!1235409 () Bool)

(assert (=> b!1348308 m!1235409))

(declare-fun m!1235411 () Bool)

(assert (=> bm!65103 m!1235411))

(assert (=> b!1348312 m!1235411))

(assert (=> b!1348306 m!1235387))

(assert (=> b!1348306 m!1235387))

(assert (=> b!1348306 m!1235395))

(assert (=> b!1348316 m!1235403))

(assert (=> b!1348316 m!1235205))

(assert (=> b!1348316 m!1235403))

(assert (=> b!1348316 m!1235205))

(assert (=> b!1348316 m!1235405))

(assert (=> b!1348316 m!1235387))

(declare-fun m!1235413 () Bool)

(assert (=> b!1348316 m!1235413))

(assert (=> b!1348316 m!1235387))

(assert (=> b!1348309 m!1235387))

(assert (=> b!1348309 m!1235387))

(assert (=> b!1348309 m!1235395))

(assert (=> b!1348311 m!1235387))

(assert (=> b!1348311 m!1235387))

(declare-fun m!1235415 () Bool)

(assert (=> b!1348311 m!1235415))

(declare-fun m!1235417 () Bool)

(assert (=> b!1348313 m!1235417))

(assert (=> b!1348313 m!1235403))

(declare-fun m!1235419 () Bool)

(assert (=> b!1348313 m!1235419))

(declare-fun m!1235421 () Bool)

(assert (=> b!1348313 m!1235421))

(assert (=> b!1348313 m!1235205))

(assert (=> b!1348313 m!1235403))

(assert (=> b!1348313 m!1235205))

(assert (=> b!1348313 m!1235405))

(declare-fun m!1235423 () Bool)

(assert (=> b!1348313 m!1235423))

(assert (=> b!1348313 m!1235419))

(assert (=> b!1348313 m!1235387))

(declare-fun m!1235425 () Bool)

(assert (=> d!144401 m!1235425))

(assert (=> d!144401 m!1235237))

(declare-fun m!1235427 () Bool)

(assert (=> b!1348305 m!1235427))

(assert (=> b!1348135 d!144401))

(declare-fun d!144403 () Bool)

(declare-fun e!767059 () Bool)

(assert (=> d!144403 e!767059))

(declare-fun res!894689 () Bool)

(assert (=> d!144403 (=> res!894689 e!767059)))

(declare-fun lt!596059 () Bool)

(assert (=> d!144403 (= res!894689 (not lt!596059))))

(declare-fun lt!596060 () Bool)

(assert (=> d!144403 (= lt!596059 lt!596060)))

(declare-fun lt!596061 () Unit!44118)

(declare-fun e!767058 () Unit!44118)

(assert (=> d!144403 (= lt!596061 e!767058)))

(declare-fun c!126386 () Bool)

(assert (=> d!144403 (= c!126386 lt!596060)))

(assert (=> d!144403 (= lt!596060 (containsKey!741 (toList!11076 lt!595909) k0!1142))))

(assert (=> d!144403 (= (contains!9189 lt!595909 k0!1142) lt!596059)))

(declare-fun b!1348317 () Bool)

(declare-fun lt!596058 () Unit!44118)

(assert (=> b!1348317 (= e!767058 lt!596058)))

(assert (=> b!1348317 (= lt!596058 (lemmaContainsKeyImpliesGetValueByKeyDefined!486 (toList!11076 lt!595909) k0!1142))))

(assert (=> b!1348317 (isDefined!526 (getValueByKey!723 (toList!11076 lt!595909) k0!1142))))

(declare-fun b!1348318 () Bool)

(declare-fun Unit!44123 () Unit!44118)

(assert (=> b!1348318 (= e!767058 Unit!44123)))

(declare-fun b!1348319 () Bool)

(assert (=> b!1348319 (= e!767059 (isDefined!526 (getValueByKey!723 (toList!11076 lt!595909) k0!1142)))))

(assert (= (and d!144403 c!126386) b!1348317))

(assert (= (and d!144403 (not c!126386)) b!1348318))

(assert (= (and d!144403 (not res!894689)) b!1348319))

(declare-fun m!1235429 () Bool)

(assert (=> d!144403 m!1235429))

(declare-fun m!1235431 () Bool)

(assert (=> b!1348317 m!1235431))

(declare-fun m!1235433 () Bool)

(assert (=> b!1348317 m!1235433))

(assert (=> b!1348317 m!1235433))

(declare-fun m!1235435 () Bool)

(assert (=> b!1348317 m!1235435))

(assert (=> b!1348319 m!1235433))

(assert (=> b!1348319 m!1235433))

(assert (=> b!1348319 m!1235435))

(assert (=> b!1348135 d!144403))

(declare-fun d!144405 () Bool)

(declare-fun e!767061 () Bool)

(assert (=> d!144405 e!767061))

(declare-fun res!894690 () Bool)

(assert (=> d!144405 (=> res!894690 e!767061)))

(declare-fun lt!596063 () Bool)

(assert (=> d!144405 (= res!894690 (not lt!596063))))

(declare-fun lt!596064 () Bool)

(assert (=> d!144405 (= lt!596063 lt!596064)))

(declare-fun lt!596065 () Unit!44118)

(declare-fun e!767060 () Unit!44118)

(assert (=> d!144405 (= lt!596065 e!767060)))

(declare-fun c!126387 () Bool)

(assert (=> d!144405 (= c!126387 lt!596064)))

(assert (=> d!144405 (= lt!596064 (containsKey!741 (toList!11076 (+!4825 lt!595909 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142))))

(assert (=> d!144405 (= (contains!9189 (+!4825 lt!595909 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142) lt!596063)))

(declare-fun b!1348320 () Bool)

(declare-fun lt!596062 () Unit!44118)

(assert (=> b!1348320 (= e!767060 lt!596062)))

(assert (=> b!1348320 (= lt!596062 (lemmaContainsKeyImpliesGetValueByKeyDefined!486 (toList!11076 (+!4825 lt!595909 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142))))

(assert (=> b!1348320 (isDefined!526 (getValueByKey!723 (toList!11076 (+!4825 lt!595909 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142))))

(declare-fun b!1348321 () Bool)

(declare-fun Unit!44124 () Unit!44118)

(assert (=> b!1348321 (= e!767060 Unit!44124)))

(declare-fun b!1348322 () Bool)

(assert (=> b!1348322 (= e!767061 (isDefined!526 (getValueByKey!723 (toList!11076 (+!4825 lt!595909 (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142)))))

(assert (= (and d!144405 c!126387) b!1348320))

(assert (= (and d!144405 (not c!126387)) b!1348321))

(assert (= (and d!144405 (not res!894690)) b!1348322))

(declare-fun m!1235437 () Bool)

(assert (=> d!144405 m!1235437))

(declare-fun m!1235439 () Bool)

(assert (=> b!1348320 m!1235439))

(declare-fun m!1235441 () Bool)

(assert (=> b!1348320 m!1235441))

(assert (=> b!1348320 m!1235441))

(declare-fun m!1235443 () Bool)

(assert (=> b!1348320 m!1235443))

(assert (=> b!1348322 m!1235441))

(assert (=> b!1348322 m!1235441))

(assert (=> b!1348322 m!1235443))

(assert (=> b!1348135 d!144405))

(declare-fun d!144407 () Bool)

(assert (=> d!144407 (= (validKeyInArray!0 (select (arr!44402 _keys!1571) from!1960)) (and (not (= (select (arr!44402 _keys!1571) from!1960) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44402 _keys!1571) from!1960) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1348126 d!144407))

(declare-fun b!1348331 () Bool)

(declare-fun e!767070 () Bool)

(declare-fun call!65109 () Bool)

(assert (=> b!1348331 (= e!767070 call!65109)))

(declare-fun d!144409 () Bool)

(declare-fun res!894695 () Bool)

(declare-fun e!767068 () Bool)

(assert (=> d!144409 (=> res!894695 e!767068)))

(assert (=> d!144409 (= res!894695 (bvsge #b00000000000000000000000000000000 (size!44953 _keys!1571)))))

(assert (=> d!144409 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977) e!767068)))

(declare-fun b!1348332 () Bool)

(declare-fun e!767069 () Bool)

(assert (=> b!1348332 (= e!767070 e!767069)))

(declare-fun lt!596074 () (_ BitVec 64))

(assert (=> b!1348332 (= lt!596074 (select (arr!44402 _keys!1571) #b00000000000000000000000000000000))))

(declare-fun lt!596073 () Unit!44118)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!91903 (_ BitVec 64) (_ BitVec 32)) Unit!44118)

(assert (=> b!1348332 (= lt!596073 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!596074 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!91903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1348332 (arrayContainsKey!0 _keys!1571 lt!596074 #b00000000000000000000000000000000)))

(declare-fun lt!596072 () Unit!44118)

(assert (=> b!1348332 (= lt!596072 lt!596073)))

(declare-fun res!894696 () Bool)

(declare-datatypes ((SeekEntryResult!10054 0))(
  ( (MissingZero!10054 (index!42586 (_ BitVec 32))) (Found!10054 (index!42587 (_ BitVec 32))) (Intermediate!10054 (undefined!10866 Bool) (index!42588 (_ BitVec 32)) (x!120666 (_ BitVec 32))) (Undefined!10054) (MissingVacant!10054 (index!42589 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!91903 (_ BitVec 32)) SeekEntryResult!10054)

(assert (=> b!1348332 (= res!894696 (= (seekEntryOrOpen!0 (select (arr!44402 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977) (Found!10054 #b00000000000000000000000000000000)))))

(assert (=> b!1348332 (=> (not res!894696) (not e!767069))))

(declare-fun b!1348333 () Bool)

(assert (=> b!1348333 (= e!767069 call!65109)))

(declare-fun bm!65106 () Bool)

(assert (=> bm!65106 (= call!65109 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1571 mask!1977))))

(declare-fun b!1348334 () Bool)

(assert (=> b!1348334 (= e!767068 e!767070)))

(declare-fun c!126390 () Bool)

(assert (=> b!1348334 (= c!126390 (validKeyInArray!0 (select (arr!44402 _keys!1571) #b00000000000000000000000000000000)))))

(assert (= (and d!144409 (not res!894695)) b!1348334))

(assert (= (and b!1348334 c!126390) b!1348332))

(assert (= (and b!1348334 (not c!126390)) b!1348331))

(assert (= (and b!1348332 res!894696) b!1348333))

(assert (= (or b!1348333 b!1348331) bm!65106))

(assert (=> b!1348332 m!1235291))

(declare-fun m!1235445 () Bool)

(assert (=> b!1348332 m!1235445))

(declare-fun m!1235447 () Bool)

(assert (=> b!1348332 m!1235447))

(assert (=> b!1348332 m!1235291))

(declare-fun m!1235449 () Bool)

(assert (=> b!1348332 m!1235449))

(declare-fun m!1235451 () Bool)

(assert (=> bm!65106 m!1235451))

(assert (=> b!1348334 m!1235291))

(assert (=> b!1348334 m!1235291))

(assert (=> b!1348334 m!1235293))

(assert (=> b!1348128 d!144409))

(declare-fun d!144411 () Bool)

(assert (=> d!144411 (= (validMask!0 mask!1977) (and (or (= mask!1977 #b00000000000000000000000000000111) (= mask!1977 #b00000000000000000000000000001111) (= mask!1977 #b00000000000000000000000000011111) (= mask!1977 #b00000000000000000000000000111111) (= mask!1977 #b00000000000000000000000001111111) (= mask!1977 #b00000000000000000000000011111111) (= mask!1977 #b00000000000000000000000111111111) (= mask!1977 #b00000000000000000000001111111111) (= mask!1977 #b00000000000000000000011111111111) (= mask!1977 #b00000000000000000000111111111111) (= mask!1977 #b00000000000000000001111111111111) (= mask!1977 #b00000000000000000011111111111111) (= mask!1977 #b00000000000000000111111111111111) (= mask!1977 #b00000000000000001111111111111111) (= mask!1977 #b00000000000000011111111111111111) (= mask!1977 #b00000000000000111111111111111111) (= mask!1977 #b00000000000001111111111111111111) (= mask!1977 #b00000000000011111111111111111111) (= mask!1977 #b00000000000111111111111111111111) (= mask!1977 #b00000000001111111111111111111111) (= mask!1977 #b00000000011111111111111111111111) (= mask!1977 #b00000000111111111111111111111111) (= mask!1977 #b00000001111111111111111111111111) (= mask!1977 #b00000011111111111111111111111111) (= mask!1977 #b00000111111111111111111111111111) (= mask!1977 #b00001111111111111111111111111111) (= mask!1977 #b00011111111111111111111111111111) (= mask!1977 #b00111111111111111111111111111111)) (bvsle mask!1977 #b00111111111111111111111111111111)))))

(assert (=> start!113600 d!144411))

(declare-fun d!144413 () Bool)

(assert (=> d!144413 (= (array_inv!33359 _keys!1571) (bvsge (size!44953 _keys!1571) #b00000000000000000000000000000000))))

(assert (=> start!113600 d!144413))

(declare-fun d!144415 () Bool)

(assert (=> d!144415 (= (array_inv!33360 _values!1303) (bvsge (size!44954 _values!1303) #b00000000000000000000000000000000))))

(assert (=> start!113600 d!144415))

(declare-fun d!144417 () Bool)

(declare-fun e!767072 () Bool)

(assert (=> d!144417 e!767072))

(declare-fun res!894697 () Bool)

(assert (=> d!144417 (=> res!894697 e!767072)))

(declare-fun lt!596076 () Bool)

(assert (=> d!144417 (= res!894697 (not lt!596076))))

(declare-fun lt!596077 () Bool)

(assert (=> d!144417 (= lt!596076 lt!596077)))

(declare-fun lt!596078 () Unit!44118)

(declare-fun e!767071 () Unit!44118)

(assert (=> d!144417 (= lt!596078 e!767071)))

(declare-fun c!126391 () Bool)

(assert (=> d!144417 (= c!126391 lt!596077)))

(assert (=> d!144417 (= lt!596077 (containsKey!741 (toList!11076 (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(assert (=> d!144417 (= (contains!9189 (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142) lt!596076)))

(declare-fun b!1348335 () Bool)

(declare-fun lt!596075 () Unit!44118)

(assert (=> b!1348335 (= e!767071 lt!596075)))

(assert (=> b!1348335 (= lt!596075 (lemmaContainsKeyImpliesGetValueByKeyDefined!486 (toList!11076 (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(assert (=> b!1348335 (isDefined!526 (getValueByKey!723 (toList!11076 (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(declare-fun b!1348336 () Bool)

(declare-fun Unit!44125 () Unit!44118)

(assert (=> b!1348336 (= e!767071 Unit!44125)))

(declare-fun b!1348337 () Bool)

(assert (=> b!1348337 (= e!767072 (isDefined!526 (getValueByKey!723 (toList!11076 (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142)))))

(assert (= (and d!144417 c!126391) b!1348335))

(assert (= (and d!144417 (not c!126391)) b!1348336))

(assert (= (and d!144417 (not res!894697)) b!1348337))

(declare-fun m!1235453 () Bool)

(assert (=> d!144417 m!1235453))

(declare-fun m!1235455 () Bool)

(assert (=> b!1348335 m!1235455))

(declare-fun m!1235457 () Bool)

(assert (=> b!1348335 m!1235457))

(assert (=> b!1348335 m!1235457))

(declare-fun m!1235459 () Bool)

(assert (=> b!1348335 m!1235459))

(assert (=> b!1348337 m!1235457))

(assert (=> b!1348337 m!1235457))

(assert (=> b!1348337 m!1235459))

(assert (=> b!1348127 d!144417))

(declare-fun b!1348338 () Bool)

(declare-fun e!767075 () Bool)

(assert (=> b!1348338 (= e!767075 (validKeyInArray!0 (select (arr!44402 _keys!1571) from!1960)))))

(declare-fun b!1348339 () Bool)

(declare-fun e!767076 () Unit!44118)

(declare-fun Unit!44126 () Unit!44118)

(assert (=> b!1348339 (= e!767076 Unit!44126)))

(declare-fun call!65113 () ListLongMap!22121)

(declare-fun bm!65107 () Bool)

(declare-fun c!126394 () Bool)

(declare-fun call!65110 () ListLongMap!22121)

(declare-fun call!65111 () ListLongMap!22121)

(declare-fun c!126397 () Bool)

(declare-fun call!65114 () ListLongMap!22121)

(assert (=> bm!65107 (= call!65111 (+!4825 (ite c!126394 call!65114 (ite c!126397 call!65110 call!65113)) (ite (or c!126394 c!126397) (tuple2!24453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24453 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun b!1348340 () Bool)

(declare-fun e!767083 () ListLongMap!22121)

(declare-fun call!65112 () ListLongMap!22121)

(assert (=> b!1348340 (= e!767083 call!65112)))

(declare-fun b!1348341 () Bool)

(declare-fun e!767085 () Bool)

(assert (=> b!1348341 (= e!767085 (validKeyInArray!0 (select (arr!44402 _keys!1571) from!1960)))))

(declare-fun b!1348342 () Bool)

(declare-fun res!894706 () Bool)

(declare-fun e!767078 () Bool)

(assert (=> b!1348342 (=> (not res!894706) (not e!767078))))

(declare-fun e!767073 () Bool)

(assert (=> b!1348342 (= res!894706 e!767073)))

(declare-fun c!126392 () Bool)

(assert (=> b!1348342 (= c!126392 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1348343 () Bool)

(declare-fun e!767084 () Bool)

(declare-fun e!767074 () Bool)

(assert (=> b!1348343 (= e!767084 e!767074)))

(declare-fun res!894704 () Bool)

(declare-fun call!65115 () Bool)

(assert (=> b!1348343 (= res!894704 call!65115)))

(assert (=> b!1348343 (=> (not res!894704) (not e!767074))))

(declare-fun b!1348344 () Bool)

(declare-fun e!767077 () Bool)

(declare-fun lt!596083 () ListLongMap!22121)

(assert (=> b!1348344 (= e!767077 (= (apply!1073 lt!596083 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1245))))

(declare-fun bm!65108 () Bool)

(assert (=> bm!65108 (= call!65110 call!65114)))

(declare-fun bm!65109 () Bool)

(assert (=> bm!65109 (= call!65114 (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun b!1348345 () Bool)

(declare-fun e!767079 () ListLongMap!22121)

(assert (=> b!1348345 (= e!767079 (+!4825 call!65111 (tuple2!24453 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))

(declare-fun e!767082 () Bool)

(declare-fun b!1348346 () Bool)

(assert (=> b!1348346 (= e!767082 (= (apply!1073 lt!596083 (select (arr!44402 _keys!1571) from!1960)) (get!22475 (select (arr!44403 _values!1303) from!1960) (dynLambda!3862 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1348346 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44954 _values!1303)))))

(assert (=> b!1348346 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44953 _keys!1571)))))

(declare-fun bm!65110 () Bool)

(assert (=> bm!65110 (= call!65115 (contains!9189 lt!596083 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1348347 () Bool)

(declare-fun res!894705 () Bool)

(assert (=> b!1348347 (=> (not res!894705) (not e!767078))))

(declare-fun e!767081 () Bool)

(assert (=> b!1348347 (= res!894705 e!767081)))

(declare-fun res!894698 () Bool)

(assert (=> b!1348347 (=> res!894698 e!767081)))

(assert (=> b!1348347 (= res!894698 (not e!767075))))

(declare-fun res!894702 () Bool)

(assert (=> b!1348347 (=> (not res!894702) (not e!767075))))

(assert (=> b!1348347 (= res!894702 (bvslt from!1960 (size!44953 _keys!1571)))))

(declare-fun b!1348348 () Bool)

(declare-fun call!65116 () Bool)

(assert (=> b!1348348 (= e!767073 (not call!65116))))

(declare-fun b!1348349 () Bool)

(assert (=> b!1348349 (= e!767078 e!767084)))

(declare-fun c!126393 () Bool)

(assert (=> b!1348349 (= c!126393 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!65111 () Bool)

(assert (=> bm!65111 (= call!65116 (contains!9189 lt!596083 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!144419 () Bool)

(assert (=> d!144419 e!767078))

(declare-fun res!894701 () Bool)

(assert (=> d!144419 (=> (not res!894701) (not e!767078))))

(assert (=> d!144419 (= res!894701 (or (bvsge from!1960 (size!44953 _keys!1571)) (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44953 _keys!1571)))))))

(declare-fun lt!596082 () ListLongMap!22121)

(assert (=> d!144419 (= lt!596083 lt!596082)))

(declare-fun lt!596092 () Unit!44118)

(assert (=> d!144419 (= lt!596092 e!767076)))

(declare-fun c!126395 () Bool)

(assert (=> d!144419 (= c!126395 e!767085)))

(declare-fun res!894703 () Bool)

(assert (=> d!144419 (=> (not res!894703) (not e!767085))))

(assert (=> d!144419 (= res!894703 (bvslt from!1960 (size!44953 _keys!1571)))))

(assert (=> d!144419 (= lt!596082 e!767079)))

(assert (=> d!144419 (= c!126394 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!144419 (validMask!0 mask!1977)))

(assert (=> d!144419 (= (getCurrentListMap!5966 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) lt!596083)))

(declare-fun bm!65112 () Bool)

(assert (=> bm!65112 (= call!65112 call!65111)))

(declare-fun b!1348350 () Bool)

(assert (=> b!1348350 (= e!767073 e!767077)))

(declare-fun res!894699 () Bool)

(assert (=> b!1348350 (= res!894699 call!65116)))

(assert (=> b!1348350 (=> (not res!894699) (not e!767077))))

(declare-fun b!1348351 () Bool)

(declare-fun c!126396 () Bool)

(assert (=> b!1348351 (= c!126396 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!767080 () ListLongMap!22121)

(assert (=> b!1348351 (= e!767083 e!767080)))

(declare-fun b!1348352 () Bool)

(assert (=> b!1348352 (= e!767084 (not call!65115))))

(declare-fun bm!65113 () Bool)

(assert (=> bm!65113 (= call!65113 call!65110)))

(declare-fun b!1348353 () Bool)

(declare-fun lt!596085 () Unit!44118)

(assert (=> b!1348353 (= e!767076 lt!596085)))

(declare-fun lt!596099 () ListLongMap!22121)

(assert (=> b!1348353 (= lt!596099 (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596080 () (_ BitVec 64))

(assert (=> b!1348353 (= lt!596080 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596093 () (_ BitVec 64))

(assert (=> b!1348353 (= lt!596093 (select (arr!44402 _keys!1571) from!1960))))

(declare-fun lt!596079 () Unit!44118)

(assert (=> b!1348353 (= lt!596079 (addStillContains!1218 lt!596099 lt!596080 zeroValue!1245 lt!596093))))

(assert (=> b!1348353 (contains!9189 (+!4825 lt!596099 (tuple2!24453 lt!596080 zeroValue!1245)) lt!596093)))

(declare-fun lt!596084 () Unit!44118)

(assert (=> b!1348353 (= lt!596084 lt!596079)))

(declare-fun lt!596097 () ListLongMap!22121)

(assert (=> b!1348353 (= lt!596097 (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596096 () (_ BitVec 64))

(assert (=> b!1348353 (= lt!596096 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596090 () (_ BitVec 64))

(assert (=> b!1348353 (= lt!596090 (select (arr!44402 _keys!1571) from!1960))))

(declare-fun lt!596098 () Unit!44118)

(assert (=> b!1348353 (= lt!596098 (addApplyDifferent!576 lt!596097 lt!596096 minValue!1245 lt!596090))))

(assert (=> b!1348353 (= (apply!1073 (+!4825 lt!596097 (tuple2!24453 lt!596096 minValue!1245)) lt!596090) (apply!1073 lt!596097 lt!596090))))

(declare-fun lt!596094 () Unit!44118)

(assert (=> b!1348353 (= lt!596094 lt!596098)))

(declare-fun lt!596088 () ListLongMap!22121)

(assert (=> b!1348353 (= lt!596088 (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596100 () (_ BitVec 64))

(assert (=> b!1348353 (= lt!596100 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596095 () (_ BitVec 64))

(assert (=> b!1348353 (= lt!596095 (select (arr!44402 _keys!1571) from!1960))))

(declare-fun lt!596089 () Unit!44118)

(assert (=> b!1348353 (= lt!596089 (addApplyDifferent!576 lt!596088 lt!596100 zeroValue!1245 lt!596095))))

(assert (=> b!1348353 (= (apply!1073 (+!4825 lt!596088 (tuple2!24453 lt!596100 zeroValue!1245)) lt!596095) (apply!1073 lt!596088 lt!596095))))

(declare-fun lt!596091 () Unit!44118)

(assert (=> b!1348353 (= lt!596091 lt!596089)))

(declare-fun lt!596086 () ListLongMap!22121)

(assert (=> b!1348353 (= lt!596086 (getCurrentListMapNoExtraKeys!6552 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596087 () (_ BitVec 64))

(assert (=> b!1348353 (= lt!596087 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596081 () (_ BitVec 64))

(assert (=> b!1348353 (= lt!596081 (select (arr!44402 _keys!1571) from!1960))))

(assert (=> b!1348353 (= lt!596085 (addApplyDifferent!576 lt!596086 lt!596087 minValue!1245 lt!596081))))

(assert (=> b!1348353 (= (apply!1073 (+!4825 lt!596086 (tuple2!24453 lt!596087 minValue!1245)) lt!596081) (apply!1073 lt!596086 lt!596081))))

(declare-fun b!1348354 () Bool)

(assert (=> b!1348354 (= e!767074 (= (apply!1073 lt!596083 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1245))))

(declare-fun b!1348355 () Bool)

(assert (=> b!1348355 (= e!767081 e!767082)))

(declare-fun res!894700 () Bool)

(assert (=> b!1348355 (=> (not res!894700) (not e!767082))))

(assert (=> b!1348355 (= res!894700 (contains!9189 lt!596083 (select (arr!44402 _keys!1571) from!1960)))))

(assert (=> b!1348355 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44953 _keys!1571)))))

(declare-fun b!1348356 () Bool)

(assert (=> b!1348356 (= e!767080 call!65113)))

(declare-fun b!1348357 () Bool)

(assert (=> b!1348357 (= e!767079 e!767083)))

(assert (=> b!1348357 (= c!126397 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1348358 () Bool)

(assert (=> b!1348358 (= e!767080 call!65112)))

(assert (= (and d!144419 c!126394) b!1348345))

(assert (= (and d!144419 (not c!126394)) b!1348357))

(assert (= (and b!1348357 c!126397) b!1348340))

(assert (= (and b!1348357 (not c!126397)) b!1348351))

(assert (= (and b!1348351 c!126396) b!1348358))

(assert (= (and b!1348351 (not c!126396)) b!1348356))

(assert (= (or b!1348358 b!1348356) bm!65113))

(assert (= (or b!1348340 bm!65113) bm!65108))

(assert (= (or b!1348340 b!1348358) bm!65112))

(assert (= (or b!1348345 bm!65108) bm!65109))

(assert (= (or b!1348345 bm!65112) bm!65107))

(assert (= (and d!144419 res!894703) b!1348341))

(assert (= (and d!144419 c!126395) b!1348353))

(assert (= (and d!144419 (not c!126395)) b!1348339))

(assert (= (and d!144419 res!894701) b!1348347))

(assert (= (and b!1348347 res!894702) b!1348338))

(assert (= (and b!1348347 (not res!894698)) b!1348355))

(assert (= (and b!1348355 res!894700) b!1348346))

(assert (= (and b!1348347 res!894705) b!1348342))

(assert (= (and b!1348342 c!126392) b!1348350))

(assert (= (and b!1348342 (not c!126392)) b!1348348))

(assert (= (and b!1348350 res!894699) b!1348344))

(assert (= (or b!1348350 b!1348348) bm!65111))

(assert (= (and b!1348342 res!894706) b!1348349))

(assert (= (and b!1348349 c!126393) b!1348343))

(assert (= (and b!1348349 (not c!126393)) b!1348352))

(assert (= (and b!1348343 res!894704) b!1348354))

(assert (= (or b!1348343 b!1348352) bm!65110))

(declare-fun b_lambda!24653 () Bool)

(assert (=> (not b_lambda!24653) (not b!1348346)))

(assert (=> b!1348346 t!46262))

(declare-fun b_and!50927 () Bool)

(assert (= b_and!50925 (and (=> t!46262 result!25979) b_and!50927)))

(assert (=> d!144419 m!1235237))

(declare-fun m!1235461 () Bool)

(assert (=> bm!65109 m!1235461))

(declare-fun m!1235463 () Bool)

(assert (=> bm!65107 m!1235463))

(declare-fun m!1235465 () Bool)

(assert (=> bm!65111 m!1235465))

(declare-fun m!1235467 () Bool)

(assert (=> b!1348353 m!1235467))

(declare-fun m!1235469 () Bool)

(assert (=> b!1348353 m!1235469))

(declare-fun m!1235471 () Bool)

(assert (=> b!1348353 m!1235471))

(assert (=> b!1348353 m!1235469))

(declare-fun m!1235473 () Bool)

(assert (=> b!1348353 m!1235473))

(declare-fun m!1235475 () Bool)

(assert (=> b!1348353 m!1235475))

(declare-fun m!1235477 () Bool)

(assert (=> b!1348353 m!1235477))

(declare-fun m!1235479 () Bool)

(assert (=> b!1348353 m!1235479))

(declare-fun m!1235481 () Bool)

(assert (=> b!1348353 m!1235481))

(declare-fun m!1235483 () Bool)

(assert (=> b!1348353 m!1235483))

(declare-fun m!1235485 () Bool)

(assert (=> b!1348353 m!1235485))

(declare-fun m!1235487 () Bool)

(assert (=> b!1348353 m!1235487))

(declare-fun m!1235489 () Bool)

(assert (=> b!1348353 m!1235489))

(assert (=> b!1348353 m!1235461))

(assert (=> b!1348353 m!1235471))

(declare-fun m!1235491 () Bool)

(assert (=> b!1348353 m!1235491))

(declare-fun m!1235493 () Bool)

(assert (=> b!1348353 m!1235493))

(assert (=> b!1348353 m!1235211))

(declare-fun m!1235495 () Bool)

(assert (=> b!1348353 m!1235495))

(assert (=> b!1348353 m!1235477))

(assert (=> b!1348353 m!1235483))

(declare-fun m!1235497 () Bool)

(assert (=> b!1348345 m!1235497))

(declare-fun m!1235499 () Bool)

(assert (=> bm!65110 m!1235499))

(assert (=> b!1348341 m!1235211))

(assert (=> b!1348341 m!1235211))

(assert (=> b!1348341 m!1235227))

(assert (=> b!1348338 m!1235211))

(assert (=> b!1348338 m!1235211))

(assert (=> b!1348338 m!1235227))

(declare-fun m!1235501 () Bool)

(assert (=> b!1348354 m!1235501))

(declare-fun m!1235503 () Bool)

(assert (=> b!1348344 m!1235503))

(assert (=> b!1348355 m!1235211))

(assert (=> b!1348355 m!1235211))

(declare-fun m!1235505 () Bool)

(assert (=> b!1348355 m!1235505))

(assert (=> b!1348346 m!1235211))

(assert (=> b!1348346 m!1235205))

(assert (=> b!1348346 m!1235203))

(assert (=> b!1348346 m!1235205))

(assert (=> b!1348346 m!1235207))

(assert (=> b!1348346 m!1235211))

(declare-fun m!1235507 () Bool)

(assert (=> b!1348346 m!1235507))

(assert (=> b!1348346 m!1235203))

(assert (=> b!1348127 d!144419))

(declare-fun b!1348366 () Bool)

(declare-fun e!767090 () Bool)

(assert (=> b!1348366 (= e!767090 tp_is_empty!37557)))

(declare-fun mapIsEmpty!58052 () Bool)

(declare-fun mapRes!58052 () Bool)

(assert (=> mapIsEmpty!58052 mapRes!58052))

(declare-fun condMapEmpty!58052 () Bool)

(declare-fun mapDefault!58052 () ValueCell!17880)

(assert (=> mapNonEmpty!58046 (= condMapEmpty!58052 (= mapRest!58046 ((as const (Array (_ BitVec 32) ValueCell!17880)) mapDefault!58052)))))

(assert (=> mapNonEmpty!58046 (= tp!110480 (and e!767090 mapRes!58052))))

(declare-fun mapNonEmpty!58052 () Bool)

(declare-fun tp!110490 () Bool)

(declare-fun e!767091 () Bool)

(assert (=> mapNonEmpty!58052 (= mapRes!58052 (and tp!110490 e!767091))))

(declare-fun mapValue!58052 () ValueCell!17880)

(declare-fun mapRest!58052 () (Array (_ BitVec 32) ValueCell!17880))

(declare-fun mapKey!58052 () (_ BitVec 32))

(assert (=> mapNonEmpty!58052 (= mapRest!58046 (store mapRest!58052 mapKey!58052 mapValue!58052))))

(declare-fun b!1348365 () Bool)

(assert (=> b!1348365 (= e!767091 tp_is_empty!37557)))

(assert (= (and mapNonEmpty!58046 condMapEmpty!58052) mapIsEmpty!58052))

(assert (= (and mapNonEmpty!58046 (not condMapEmpty!58052)) mapNonEmpty!58052))

(assert (= (and mapNonEmpty!58052 ((_ is ValueCellFull!17880) mapValue!58052)) b!1348365))

(assert (= (and mapNonEmpty!58046 ((_ is ValueCellFull!17880) mapDefault!58052)) b!1348366))

(declare-fun m!1235509 () Bool)

(assert (=> mapNonEmpty!58052 m!1235509))

(declare-fun b_lambda!24655 () Bool)

(assert (= b_lambda!24649 (or (and start!113600 b_free!31557) b_lambda!24655)))

(declare-fun b_lambda!24657 () Bool)

(assert (= b_lambda!24653 (or (and start!113600 b_free!31557) b_lambda!24657)))

(declare-fun b_lambda!24659 () Bool)

(assert (= b_lambda!24647 (or (and start!113600 b_free!31557) b_lambda!24659)))

(declare-fun b_lambda!24661 () Bool)

(assert (= b_lambda!24651 (or (and start!113600 b_free!31557) b_lambda!24661)))

(check-sat (not b!1348316) (not d!144389) (not b!1348345) (not b!1348319) (not b!1348320) (not d!144417) (not b!1348322) (not b!1348353) (not b_lambda!24645) (not b!1348263) (not b!1348213) (not d!144385) (not b!1348266) (not b!1348202) (not bm!65094) (not b!1348341) (not b!1348275) (not bm!65098) (not b!1348190) (not b!1348209) (not d!144383) (not bm!65079) (not b!1348306) (not b!1348338) (not b!1348186) (not d!144393) (not d!144397) (not bm!65107) (not b!1348344) (not d!144395) (not b!1348332) (not bm!65097) (not b!1348354) (not b!1348211) (not b!1348305) (not bm!65110) tp_is_empty!37557 (not d!144419) (not d!144399) (not b!1348195) (not d!144391) (not d!144405) (not mapNonEmpty!58052) (not bm!65096) (not b!1348276) (not b!1348268) (not b!1348215) (not b_lambda!24659) (not b_next!31557) (not b!1348217) (not b!1348355) (not b!1348308) (not b!1348313) (not b_lambda!24655) (not b_lambda!24657) (not b!1348309) (not b!1348312) (not bm!65106) (not b!1348346) (not b!1348214) (not b_lambda!24661) (not b!1348335) (not b!1348267) (not b!1348311) (not b!1348334) (not b!1348337) (not b!1348277) (not b!1348201) (not b!1348317) (not b!1348196) b_and!50927 (not b!1348260) (not d!144401) (not bm!65103) (not bm!65109) (not bm!65111) (not d!144403) (not b!1348189))
(check-sat b_and!50927 (not b_next!31557))
