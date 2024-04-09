; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132250 () Bool)

(assert start!132250)

(declare-fun b_free!31893 () Bool)

(declare-fun b_next!31893 () Bool)

(assert (=> start!132250 (= b_free!31893 (not b_next!31893))))

(declare-fun tp!111937 () Bool)

(declare-fun b_and!51333 () Bool)

(assert (=> start!132250 (= tp!111937 b_and!51333)))

(declare-fun b!1551084 () Bool)

(declare-fun e!863463 () Bool)

(declare-fun e!863472 () Bool)

(declare-fun mapRes!58963 () Bool)

(assert (=> b!1551084 (= e!863463 (and e!863472 mapRes!58963))))

(declare-fun condMapEmpty!58963 () Bool)

(declare-datatypes ((V!59335 0))(
  ( (V!59336 (val!19162 Int)) )
))
(declare-datatypes ((ValueCell!18174 0))(
  ( (ValueCellFull!18174 (v!21962 V!59335)) (EmptyCell!18174) )
))
(declare-datatypes ((array!103493 0))(
  ( (array!103494 (arr!49942 (Array (_ BitVec 32) ValueCell!18174)) (size!50493 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103493)

(declare-fun mapDefault!58963 () ValueCell!18174)

(assert (=> b!1551084 (= condMapEmpty!58963 (= (arr!49942 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18174)) mapDefault!58963)))))

(declare-fun res!1062346 () Bool)

(declare-fun e!863464 () Bool)

(assert (=> start!132250 (=> (not res!1062346) (not e!863464))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132250 (= res!1062346 (validMask!0 mask!926))))

(assert (=> start!132250 e!863464))

(declare-datatypes ((array!103495 0))(
  ( (array!103496 (arr!49943 (Array (_ BitVec 32) (_ BitVec 64))) (size!50494 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103495)

(declare-fun array_inv!38753 (array!103495) Bool)

(assert (=> start!132250 (array_inv!38753 _keys!618)))

(declare-fun tp_is_empty!38169 () Bool)

(assert (=> start!132250 tp_is_empty!38169))

(assert (=> start!132250 true))

(assert (=> start!132250 tp!111937))

(declare-fun array_inv!38754 (array!103493) Bool)

(assert (=> start!132250 (and (array_inv!38754 _values!470) e!863463)))

(declare-fun b!1551085 () Bool)

(declare-datatypes ((tuple2!24840 0))(
  ( (tuple2!24841 (_1!12430 (_ BitVec 64)) (_2!12430 V!59335)) )
))
(declare-datatypes ((List!36326 0))(
  ( (Nil!36323) (Cons!36322 (h!37768 tuple2!24840) (t!51043 List!36326)) )
))
(declare-datatypes ((ListLongMap!22461 0))(
  ( (ListLongMap!22462 (toList!11246 List!36326)) )
))
(declare-fun e!863467 () ListLongMap!22461)

(declare-fun call!70949 () ListLongMap!22461)

(assert (=> b!1551085 (= e!863467 call!70949)))

(declare-fun mapNonEmpty!58963 () Bool)

(declare-fun tp!111938 () Bool)

(declare-fun e!863468 () Bool)

(assert (=> mapNonEmpty!58963 (= mapRes!58963 (and tp!111938 e!863468))))

(declare-fun mapRest!58963 () (Array (_ BitVec 32) ValueCell!18174))

(declare-fun mapValue!58963 () ValueCell!18174)

(declare-fun mapKey!58963 () (_ BitVec 32))

(assert (=> mapNonEmpty!58963 (= (arr!49942 _values!470) (store mapRest!58963 mapKey!58963 mapValue!58963))))

(declare-fun b!1551086 () Bool)

(declare-fun e!863469 () ListLongMap!22461)

(declare-fun e!863470 () ListLongMap!22461)

(assert (=> b!1551086 (= e!863469 e!863470)))

(declare-fun c!142660 () Bool)

(declare-fun lt!668475 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1551086 (= c!142660 (and (not lt!668475) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1551087 () Bool)

(declare-fun res!1062343 () Bool)

(assert (=> b!1551087 (=> (not res!1062343) (not e!863464))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1551087 (= res!1062343 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50494 _keys!618))))))

(declare-fun b!1551088 () Bool)

(assert (=> b!1551088 (= e!863472 tp_is_empty!38169)))

(declare-fun b!1551089 () Bool)

(declare-fun res!1062341 () Bool)

(assert (=> b!1551089 (=> (not res!1062341) (not e!863464))))

(assert (=> b!1551089 (= res!1062341 (and (= (size!50493 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50494 _keys!618) (size!50493 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1551090 () Bool)

(declare-fun res!1062347 () Bool)

(assert (=> b!1551090 (=> (not res!1062347) (not e!863464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103495 (_ BitVec 32)) Bool)

(assert (=> b!1551090 (= res!1062347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1551091 () Bool)

(assert (=> b!1551091 (= e!863468 tp_is_empty!38169)))

(declare-fun bm!70946 () Bool)

(declare-fun call!70950 () ListLongMap!22461)

(declare-fun call!70952 () ListLongMap!22461)

(assert (=> bm!70946 (= call!70950 call!70952)))

(declare-fun b!1551092 () Bool)

(declare-fun e!863471 () Bool)

(declare-fun e!863466 () Bool)

(assert (=> b!1551092 (= e!863471 (not e!863466))))

(declare-fun res!1062345 () Bool)

(assert (=> b!1551092 (=> (not res!1062345) (not e!863466))))

(declare-fun lt!668476 () ListLongMap!22461)

(declare-fun contains!10115 (ListLongMap!22461 (_ BitVec 64)) Bool)

(assert (=> b!1551092 (= res!1062345 (contains!10115 lt!668476 (select (arr!49943 _keys!618) from!762)))))

(declare-fun minValue!436 () V!59335)

(declare-fun apply!1122 (ListLongMap!22461 (_ BitVec 64)) V!59335)

(declare-fun +!4954 (ListLongMap!22461 tuple2!24840) ListLongMap!22461)

(assert (=> b!1551092 (= (apply!1122 (+!4954 lt!668476 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49943 _keys!618) from!762)) (apply!1122 lt!668476 (select (arr!49943 _keys!618) from!762)))))

(declare-datatypes ((Unit!51593 0))(
  ( (Unit!51594) )
))
(declare-fun lt!668474 () Unit!51593)

(declare-fun addApplyDifferent!623 (ListLongMap!22461 (_ BitVec 64) V!59335 (_ BitVec 64)) Unit!51593)

(assert (=> b!1551092 (= lt!668474 (addApplyDifferent!623 lt!668476 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49943 _keys!618) from!762)))))

(declare-fun zeroValue!436 () V!59335)

(assert (=> b!1551092 (contains!10115 (+!4954 lt!668476 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49943 _keys!618) from!762))))

(declare-fun lt!668478 () Unit!51593)

(declare-fun addStillContains!1290 (ListLongMap!22461 (_ BitVec 64) V!59335 (_ BitVec 64)) Unit!51593)

(assert (=> b!1551092 (= lt!668478 (addStillContains!1290 lt!668476 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49943 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6672 (array!103495 array!103493 (_ BitVec 32) (_ BitVec 32) V!59335 V!59335 (_ BitVec 32) Int) ListLongMap!22461)

(assert (=> b!1551092 (= lt!668476 (getCurrentListMapNoExtraKeys!6672 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1551093 () Bool)

(declare-fun res!1062348 () Bool)

(assert (=> b!1551093 (=> (not res!1062348) (not e!863471))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1551093 (= res!1062348 (validKeyInArray!0 (select (arr!49943 _keys!618) from!762)))))

(declare-fun bm!70947 () Bool)

(declare-fun call!70951 () ListLongMap!22461)

(assert (=> bm!70947 (= call!70951 (getCurrentListMapNoExtraKeys!6672 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1551094 () Bool)

(declare-fun res!1062344 () Bool)

(assert (=> b!1551094 (=> (not res!1062344) (not e!863464))))

(declare-datatypes ((List!36327 0))(
  ( (Nil!36324) (Cons!36323 (h!37769 (_ BitVec 64)) (t!51044 List!36327)) )
))
(declare-fun arrayNoDuplicates!0 (array!103495 (_ BitVec 32) List!36327) Bool)

(assert (=> b!1551094 (= res!1062344 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36324))))

(declare-fun b!1551095 () Bool)

(assert (=> b!1551095 (= e!863470 call!70949)))

(declare-fun mapIsEmpty!58963 () Bool)

(assert (=> mapIsEmpty!58963 mapRes!58963))

(declare-fun b!1551096 () Bool)

(assert (=> b!1551096 (= e!863467 call!70950)))

(declare-fun call!70953 () ListLongMap!22461)

(declare-fun bm!70948 () Bool)

(declare-fun c!142662 () Bool)

(assert (=> bm!70948 (= call!70953 (+!4954 (ite c!142662 call!70951 (ite c!142660 call!70952 call!70950)) (ite (or c!142662 c!142660) (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!70949 () Bool)

(assert (=> bm!70949 (= call!70949 call!70953)))

(declare-fun b!1551097 () Bool)

(assert (=> b!1551097 (= e!863466 (not (= (select (arr!49943 _keys!618) from!762) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1551098 () Bool)

(assert (=> b!1551098 (= e!863464 e!863471)))

(declare-fun res!1062342 () Bool)

(assert (=> b!1551098 (=> (not res!1062342) (not e!863471))))

(assert (=> b!1551098 (= res!1062342 (bvslt from!762 (size!50494 _keys!618)))))

(declare-fun lt!668477 () ListLongMap!22461)

(assert (=> b!1551098 (= lt!668477 e!863469)))

(assert (=> b!1551098 (= c!142662 (and (not lt!668475) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1551098 (= lt!668475 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1551099 () Bool)

(declare-fun c!142661 () Bool)

(assert (=> b!1551099 (= c!142661 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668475))))

(assert (=> b!1551099 (= e!863470 e!863467)))

(declare-fun b!1551100 () Bool)

(assert (=> b!1551100 (= e!863469 (+!4954 call!70953 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!70950 () Bool)

(assert (=> bm!70950 (= call!70952 call!70951)))

(assert (= (and start!132250 res!1062346) b!1551089))

(assert (= (and b!1551089 res!1062341) b!1551090))

(assert (= (and b!1551090 res!1062347) b!1551094))

(assert (= (and b!1551094 res!1062344) b!1551087))

(assert (= (and b!1551087 res!1062343) b!1551098))

(assert (= (and b!1551098 c!142662) b!1551100))

(assert (= (and b!1551098 (not c!142662)) b!1551086))

(assert (= (and b!1551086 c!142660) b!1551095))

(assert (= (and b!1551086 (not c!142660)) b!1551099))

(assert (= (and b!1551099 c!142661) b!1551085))

(assert (= (and b!1551099 (not c!142661)) b!1551096))

(assert (= (or b!1551085 b!1551096) bm!70946))

(assert (= (or b!1551095 bm!70946) bm!70950))

(assert (= (or b!1551095 b!1551085) bm!70949))

(assert (= (or b!1551100 bm!70950) bm!70947))

(assert (= (or b!1551100 bm!70949) bm!70948))

(assert (= (and b!1551098 res!1062342) b!1551093))

(assert (= (and b!1551093 res!1062348) b!1551092))

(assert (= (and b!1551092 res!1062345) b!1551097))

(assert (= (and b!1551084 condMapEmpty!58963) mapIsEmpty!58963))

(assert (= (and b!1551084 (not condMapEmpty!58963)) mapNonEmpty!58963))

(get-info :version)

(assert (= (and mapNonEmpty!58963 ((_ is ValueCellFull!18174) mapValue!58963)) b!1551091))

(assert (= (and b!1551084 ((_ is ValueCellFull!18174) mapDefault!58963)) b!1551088))

(assert (= start!132250 b!1551084))

(declare-fun m!1429815 () Bool)

(assert (=> b!1551094 m!1429815))

(declare-fun m!1429817 () Bool)

(assert (=> b!1551097 m!1429817))

(declare-fun m!1429819 () Bool)

(assert (=> bm!70947 m!1429819))

(assert (=> b!1551093 m!1429817))

(assert (=> b!1551093 m!1429817))

(declare-fun m!1429821 () Bool)

(assert (=> b!1551093 m!1429821))

(declare-fun m!1429823 () Bool)

(assert (=> b!1551090 m!1429823))

(assert (=> b!1551092 m!1429817))

(declare-fun m!1429825 () Bool)

(assert (=> b!1551092 m!1429825))

(declare-fun m!1429827 () Bool)

(assert (=> b!1551092 m!1429827))

(assert (=> b!1551092 m!1429817))

(declare-fun m!1429829 () Bool)

(assert (=> b!1551092 m!1429829))

(assert (=> b!1551092 m!1429819))

(assert (=> b!1551092 m!1429817))

(declare-fun m!1429831 () Bool)

(assert (=> b!1551092 m!1429831))

(assert (=> b!1551092 m!1429817))

(declare-fun m!1429833 () Bool)

(assert (=> b!1551092 m!1429833))

(assert (=> b!1551092 m!1429831))

(assert (=> b!1551092 m!1429817))

(declare-fun m!1429835 () Bool)

(assert (=> b!1551092 m!1429835))

(assert (=> b!1551092 m!1429817))

(declare-fun m!1429837 () Bool)

(assert (=> b!1551092 m!1429837))

(assert (=> b!1551092 m!1429817))

(declare-fun m!1429839 () Bool)

(assert (=> b!1551092 m!1429839))

(assert (=> b!1551092 m!1429827))

(declare-fun m!1429841 () Bool)

(assert (=> start!132250 m!1429841))

(declare-fun m!1429843 () Bool)

(assert (=> start!132250 m!1429843))

(declare-fun m!1429845 () Bool)

(assert (=> start!132250 m!1429845))

(declare-fun m!1429847 () Bool)

(assert (=> bm!70948 m!1429847))

(declare-fun m!1429849 () Bool)

(assert (=> b!1551100 m!1429849))

(declare-fun m!1429851 () Bool)

(assert (=> mapNonEmpty!58963 m!1429851))

(check-sat tp_is_empty!38169 (not b!1551090) (not mapNonEmpty!58963) (not bm!70947) (not b!1551100) (not b!1551094) (not b_next!31893) (not bm!70948) b_and!51333 (not start!132250) (not b!1551093) (not b!1551092))
(check-sat b_and!51333 (not b_next!31893))
(get-model)

(declare-fun d!160877 () Bool)

(declare-fun e!863505 () Bool)

(assert (=> d!160877 e!863505))

(declare-fun res!1062377 () Bool)

(assert (=> d!160877 (=> (not res!1062377) (not e!863505))))

(declare-fun lt!668503 () ListLongMap!22461)

(assert (=> d!160877 (= res!1062377 (contains!10115 lt!668503 (_1!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lt!668505 () List!36326)

(assert (=> d!160877 (= lt!668503 (ListLongMap!22462 lt!668505))))

(declare-fun lt!668502 () Unit!51593)

(declare-fun lt!668504 () Unit!51593)

(assert (=> d!160877 (= lt!668502 lt!668504)))

(declare-datatypes ((Option!807 0))(
  ( (Some!806 (v!21964 V!59335)) (None!805) )
))
(declare-fun getValueByKey!732 (List!36326 (_ BitVec 64)) Option!807)

(assert (=> d!160877 (= (getValueByKey!732 lt!668505 (_1!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!806 (_2!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lemmaContainsTupThenGetReturnValue!372 (List!36326 (_ BitVec 64) V!59335) Unit!51593)

(assert (=> d!160877 (= lt!668504 (lemmaContainsTupThenGetReturnValue!372 lt!668505 (_1!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun insertStrictlySorted!501 (List!36326 (_ BitVec 64) V!59335) List!36326)

(assert (=> d!160877 (= lt!668505 (insertStrictlySorted!501 (toList!11246 call!70953) (_1!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160877 (= (+!4954 call!70953 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) lt!668503)))

(declare-fun b!1551156 () Bool)

(declare-fun res!1062378 () Bool)

(assert (=> b!1551156 (=> (not res!1062378) (not e!863505))))

(assert (=> b!1551156 (= res!1062378 (= (getValueByKey!732 (toList!11246 lt!668503) (_1!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!806 (_2!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1551157 () Bool)

(declare-fun contains!10116 (List!36326 tuple2!24840) Bool)

(assert (=> b!1551157 (= e!863505 (contains!10116 (toList!11246 lt!668503) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(assert (= (and d!160877 res!1062377) b!1551156))

(assert (= (and b!1551156 res!1062378) b!1551157))

(declare-fun m!1429891 () Bool)

(assert (=> d!160877 m!1429891))

(declare-fun m!1429893 () Bool)

(assert (=> d!160877 m!1429893))

(declare-fun m!1429895 () Bool)

(assert (=> d!160877 m!1429895))

(declare-fun m!1429897 () Bool)

(assert (=> d!160877 m!1429897))

(declare-fun m!1429899 () Bool)

(assert (=> b!1551156 m!1429899))

(declare-fun m!1429901 () Bool)

(assert (=> b!1551157 m!1429901))

(assert (=> b!1551100 d!160877))

(declare-fun b!1551182 () Bool)

(declare-fun e!863521 () ListLongMap!22461)

(assert (=> b!1551182 (= e!863521 (ListLongMap!22462 Nil!36323))))

(declare-fun b!1551183 () Bool)

(assert (=> b!1551183 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50494 _keys!618)))))

(assert (=> b!1551183 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50493 _values!470)))))

(declare-fun lt!668523 () ListLongMap!22461)

(declare-fun e!863520 () Bool)

(declare-fun get!26045 (ValueCell!18174 V!59335) V!59335)

(declare-fun dynLambda!3872 (Int (_ BitVec 64)) V!59335)

(assert (=> b!1551183 (= e!863520 (= (apply!1122 lt!668523 (select (arr!49943 _keys!618) from!762)) (get!26045 (select (arr!49942 _values!470) from!762) (dynLambda!3872 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!70968 () Bool)

(declare-fun call!70971 () ListLongMap!22461)

(assert (=> bm!70968 (= call!70971 (getCurrentListMapNoExtraKeys!6672 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001) defaultEntry!478))))

(declare-fun b!1551184 () Bool)

(declare-fun e!863526 () Bool)

(assert (=> b!1551184 (= e!863526 (validKeyInArray!0 (select (arr!49943 _keys!618) from!762)))))

(assert (=> b!1551184 (bvsge from!762 #b00000000000000000000000000000000)))

(declare-fun b!1551185 () Bool)

(declare-fun e!863523 () Bool)

(assert (=> b!1551185 (= e!863523 e!863520)))

(assert (=> b!1551185 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50494 _keys!618)))))

(declare-fun res!1062389 () Bool)

(assert (=> b!1551185 (= res!1062389 (contains!10115 lt!668523 (select (arr!49943 _keys!618) from!762)))))

(assert (=> b!1551185 (=> (not res!1062389) (not e!863520))))

(declare-fun b!1551186 () Bool)

(declare-fun e!863524 () Bool)

(assert (=> b!1551186 (= e!863523 e!863524)))

(declare-fun c!142683 () Bool)

(assert (=> b!1551186 (= c!142683 (bvslt from!762 (size!50494 _keys!618)))))

(declare-fun b!1551187 () Bool)

(declare-fun e!863522 () ListLongMap!22461)

(assert (=> b!1551187 (= e!863522 call!70971)))

(declare-fun b!1551188 () Bool)

(declare-fun e!863525 () Bool)

(assert (=> b!1551188 (= e!863525 e!863523)))

(declare-fun c!142681 () Bool)

(assert (=> b!1551188 (= c!142681 e!863526)))

(declare-fun res!1062390 () Bool)

(assert (=> b!1551188 (=> (not res!1062390) (not e!863526))))

(assert (=> b!1551188 (= res!1062390 (bvslt from!762 (size!50494 _keys!618)))))

(declare-fun b!1551189 () Bool)

(declare-fun res!1062387 () Bool)

(assert (=> b!1551189 (=> (not res!1062387) (not e!863525))))

(assert (=> b!1551189 (= res!1062387 (not (contains!10115 lt!668523 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1551190 () Bool)

(declare-fun lt!668525 () Unit!51593)

(declare-fun lt!668522 () Unit!51593)

(assert (=> b!1551190 (= lt!668525 lt!668522)))

(declare-fun lt!668524 () (_ BitVec 64))

(declare-fun lt!668520 () ListLongMap!22461)

(declare-fun lt!668526 () V!59335)

(declare-fun lt!668521 () (_ BitVec 64))

(assert (=> b!1551190 (not (contains!10115 (+!4954 lt!668520 (tuple2!24841 lt!668524 lt!668526)) lt!668521))))

(declare-fun addStillNotContains!520 (ListLongMap!22461 (_ BitVec 64) V!59335 (_ BitVec 64)) Unit!51593)

(assert (=> b!1551190 (= lt!668522 (addStillNotContains!520 lt!668520 lt!668524 lt!668526 lt!668521))))

(assert (=> b!1551190 (= lt!668521 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1551190 (= lt!668526 (get!26045 (select (arr!49942 _values!470) from!762) (dynLambda!3872 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1551190 (= lt!668524 (select (arr!49943 _keys!618) from!762))))

(assert (=> b!1551190 (= lt!668520 call!70971)))

(assert (=> b!1551190 (= e!863522 (+!4954 call!70971 (tuple2!24841 (select (arr!49943 _keys!618) from!762) (get!26045 (select (arr!49942 _values!470) from!762) (dynLambda!3872 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1551191 () Bool)

(declare-fun isEmpty!1132 (ListLongMap!22461) Bool)

(assert (=> b!1551191 (= e!863524 (isEmpty!1132 lt!668523))))

(declare-fun d!160879 () Bool)

(assert (=> d!160879 e!863525))

(declare-fun res!1062388 () Bool)

(assert (=> d!160879 (=> (not res!1062388) (not e!863525))))

(assert (=> d!160879 (= res!1062388 (not (contains!10115 lt!668523 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!160879 (= lt!668523 e!863521)))

(declare-fun c!142680 () Bool)

(assert (=> d!160879 (= c!142680 (bvsge from!762 (size!50494 _keys!618)))))

(assert (=> d!160879 (validMask!0 mask!926)))

(assert (=> d!160879 (= (getCurrentListMapNoExtraKeys!6672 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478) lt!668523)))

(declare-fun b!1551192 () Bool)

(assert (=> b!1551192 (= e!863524 (= lt!668523 (getCurrentListMapNoExtraKeys!6672 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001) defaultEntry!478)))))

(declare-fun b!1551193 () Bool)

(assert (=> b!1551193 (= e!863521 e!863522)))

(declare-fun c!142682 () Bool)

(assert (=> b!1551193 (= c!142682 (validKeyInArray!0 (select (arr!49943 _keys!618) from!762)))))

(assert (= (and d!160879 c!142680) b!1551182))

(assert (= (and d!160879 (not c!142680)) b!1551193))

(assert (= (and b!1551193 c!142682) b!1551190))

(assert (= (and b!1551193 (not c!142682)) b!1551187))

(assert (= (or b!1551190 b!1551187) bm!70968))

(assert (= (and d!160879 res!1062388) b!1551189))

(assert (= (and b!1551189 res!1062387) b!1551188))

(assert (= (and b!1551188 res!1062390) b!1551184))

(assert (= (and b!1551188 c!142681) b!1551185))

(assert (= (and b!1551188 (not c!142681)) b!1551186))

(assert (= (and b!1551185 res!1062389) b!1551183))

(assert (= (and b!1551186 c!142683) b!1551192))

(assert (= (and b!1551186 (not c!142683)) b!1551191))

(declare-fun b_lambda!24781 () Bool)

(assert (=> (not b_lambda!24781) (not b!1551183)))

(declare-fun t!51047 () Bool)

(declare-fun tb!12487 () Bool)

(assert (=> (and start!132250 (= defaultEntry!478 defaultEntry!478) t!51047) tb!12487))

(declare-fun result!26081 () Bool)

(assert (=> tb!12487 (= result!26081 tp_is_empty!38169)))

(assert (=> b!1551183 t!51047))

(declare-fun b_and!51337 () Bool)

(assert (= b_and!51333 (and (=> t!51047 result!26081) b_and!51337)))

(declare-fun b_lambda!24783 () Bool)

(assert (=> (not b_lambda!24783) (not b!1551190)))

(assert (=> b!1551190 t!51047))

(declare-fun b_and!51339 () Bool)

(assert (= b_and!51337 (and (=> t!51047 result!26081) b_and!51339)))

(declare-fun m!1429903 () Bool)

(assert (=> b!1551190 m!1429903))

(declare-fun m!1429905 () Bool)

(assert (=> b!1551190 m!1429905))

(declare-fun m!1429907 () Bool)

(assert (=> b!1551190 m!1429907))

(declare-fun m!1429909 () Bool)

(assert (=> b!1551190 m!1429909))

(declare-fun m!1429911 () Bool)

(assert (=> b!1551190 m!1429911))

(assert (=> b!1551190 m!1429905))

(assert (=> b!1551190 m!1429907))

(assert (=> b!1551190 m!1429903))

(declare-fun m!1429913 () Bool)

(assert (=> b!1551190 m!1429913))

(declare-fun m!1429915 () Bool)

(assert (=> b!1551190 m!1429915))

(assert (=> b!1551190 m!1429817))

(declare-fun m!1429917 () Bool)

(assert (=> b!1551191 m!1429917))

(declare-fun m!1429919 () Bool)

(assert (=> b!1551192 m!1429919))

(assert (=> b!1551185 m!1429817))

(assert (=> b!1551185 m!1429817))

(declare-fun m!1429921 () Bool)

(assert (=> b!1551185 m!1429921))

(assert (=> b!1551183 m!1429905))

(assert (=> b!1551183 m!1429907))

(assert (=> b!1551183 m!1429909))

(assert (=> b!1551183 m!1429905))

(assert (=> b!1551183 m!1429907))

(assert (=> b!1551183 m!1429817))

(declare-fun m!1429923 () Bool)

(assert (=> b!1551183 m!1429923))

(assert (=> b!1551183 m!1429817))

(assert (=> b!1551184 m!1429817))

(assert (=> b!1551184 m!1429817))

(assert (=> b!1551184 m!1429821))

(declare-fun m!1429925 () Bool)

(assert (=> b!1551189 m!1429925))

(declare-fun m!1429927 () Bool)

(assert (=> d!160879 m!1429927))

(assert (=> d!160879 m!1429841))

(assert (=> b!1551193 m!1429817))

(assert (=> b!1551193 m!1429817))

(assert (=> b!1551193 m!1429821))

(assert (=> bm!70968 m!1429919))

(assert (=> bm!70947 d!160879))

(declare-fun d!160881 () Bool)

(assert (=> d!160881 (= (validKeyInArray!0 (select (arr!49943 _keys!618) from!762)) (and (not (= (select (arr!49943 _keys!618) from!762) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49943 _keys!618) from!762) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1551093 d!160881))

(declare-fun d!160883 () Bool)

(declare-fun e!863527 () Bool)

(assert (=> d!160883 e!863527))

(declare-fun res!1062391 () Bool)

(assert (=> d!160883 (=> (not res!1062391) (not e!863527))))

(declare-fun lt!668528 () ListLongMap!22461)

(assert (=> d!160883 (= res!1062391 (contains!10115 lt!668528 (_1!12430 (ite (or c!142662 c!142660) (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun lt!668530 () List!36326)

(assert (=> d!160883 (= lt!668528 (ListLongMap!22462 lt!668530))))

(declare-fun lt!668527 () Unit!51593)

(declare-fun lt!668529 () Unit!51593)

(assert (=> d!160883 (= lt!668527 lt!668529)))

(assert (=> d!160883 (= (getValueByKey!732 lt!668530 (_1!12430 (ite (or c!142662 c!142660) (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (Some!806 (_2!12430 (ite (or c!142662 c!142660) (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!160883 (= lt!668529 (lemmaContainsTupThenGetReturnValue!372 lt!668530 (_1!12430 (ite (or c!142662 c!142660) (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12430 (ite (or c!142662 c!142660) (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!160883 (= lt!668530 (insertStrictlySorted!501 (toList!11246 (ite c!142662 call!70951 (ite c!142660 call!70952 call!70950))) (_1!12430 (ite (or c!142662 c!142660) (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12430 (ite (or c!142662 c!142660) (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!160883 (= (+!4954 (ite c!142662 call!70951 (ite c!142660 call!70952 call!70950)) (ite (or c!142662 c!142660) (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!668528)))

(declare-fun b!1551196 () Bool)

(declare-fun res!1062392 () Bool)

(assert (=> b!1551196 (=> (not res!1062392) (not e!863527))))

(assert (=> b!1551196 (= res!1062392 (= (getValueByKey!732 (toList!11246 lt!668528) (_1!12430 (ite (or c!142662 c!142660) (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (Some!806 (_2!12430 (ite (or c!142662 c!142660) (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun b!1551197 () Bool)

(assert (=> b!1551197 (= e!863527 (contains!10116 (toList!11246 lt!668528) (ite (or c!142662 c!142660) (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!160883 res!1062391) b!1551196))

(assert (= (and b!1551196 res!1062392) b!1551197))

(declare-fun m!1429929 () Bool)

(assert (=> d!160883 m!1429929))

(declare-fun m!1429931 () Bool)

(assert (=> d!160883 m!1429931))

(declare-fun m!1429933 () Bool)

(assert (=> d!160883 m!1429933))

(declare-fun m!1429935 () Bool)

(assert (=> d!160883 m!1429935))

(declare-fun m!1429937 () Bool)

(assert (=> b!1551196 m!1429937))

(declare-fun m!1429939 () Bool)

(assert (=> b!1551197 m!1429939))

(assert (=> bm!70948 d!160883))

(declare-fun d!160885 () Bool)

(declare-fun e!863533 () Bool)

(assert (=> d!160885 e!863533))

(declare-fun res!1062395 () Bool)

(assert (=> d!160885 (=> res!1062395 e!863533)))

(declare-fun lt!668539 () Bool)

(assert (=> d!160885 (= res!1062395 (not lt!668539))))

(declare-fun lt!668542 () Bool)

(assert (=> d!160885 (= lt!668539 lt!668542)))

(declare-fun lt!668541 () Unit!51593)

(declare-fun e!863532 () Unit!51593)

(assert (=> d!160885 (= lt!668541 e!863532)))

(declare-fun c!142686 () Bool)

(assert (=> d!160885 (= c!142686 lt!668542)))

(declare-fun containsKey!750 (List!36326 (_ BitVec 64)) Bool)

(assert (=> d!160885 (= lt!668542 (containsKey!750 (toList!11246 lt!668476) (select (arr!49943 _keys!618) from!762)))))

(assert (=> d!160885 (= (contains!10115 lt!668476 (select (arr!49943 _keys!618) from!762)) lt!668539)))

(declare-fun b!1551204 () Bool)

(declare-fun lt!668540 () Unit!51593)

(assert (=> b!1551204 (= e!863532 lt!668540)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!495 (List!36326 (_ BitVec 64)) Unit!51593)

(assert (=> b!1551204 (= lt!668540 (lemmaContainsKeyImpliesGetValueByKeyDefined!495 (toList!11246 lt!668476) (select (arr!49943 _keys!618) from!762)))))

(declare-fun isDefined!544 (Option!807) Bool)

(assert (=> b!1551204 (isDefined!544 (getValueByKey!732 (toList!11246 lt!668476) (select (arr!49943 _keys!618) from!762)))))

(declare-fun b!1551205 () Bool)

(declare-fun Unit!51595 () Unit!51593)

(assert (=> b!1551205 (= e!863532 Unit!51595)))

(declare-fun b!1551206 () Bool)

(assert (=> b!1551206 (= e!863533 (isDefined!544 (getValueByKey!732 (toList!11246 lt!668476) (select (arr!49943 _keys!618) from!762))))))

(assert (= (and d!160885 c!142686) b!1551204))

(assert (= (and d!160885 (not c!142686)) b!1551205))

(assert (= (and d!160885 (not res!1062395)) b!1551206))

(assert (=> d!160885 m!1429817))

(declare-fun m!1429941 () Bool)

(assert (=> d!160885 m!1429941))

(assert (=> b!1551204 m!1429817))

(declare-fun m!1429943 () Bool)

(assert (=> b!1551204 m!1429943))

(assert (=> b!1551204 m!1429817))

(declare-fun m!1429945 () Bool)

(assert (=> b!1551204 m!1429945))

(assert (=> b!1551204 m!1429945))

(declare-fun m!1429947 () Bool)

(assert (=> b!1551204 m!1429947))

(assert (=> b!1551206 m!1429817))

(assert (=> b!1551206 m!1429945))

(assert (=> b!1551206 m!1429945))

(assert (=> b!1551206 m!1429947))

(assert (=> b!1551092 d!160885))

(declare-fun d!160887 () Bool)

(assert (=> d!160887 (= (apply!1122 (+!4954 lt!668476 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49943 _keys!618) from!762)) (apply!1122 lt!668476 (select (arr!49943 _keys!618) from!762)))))

(declare-fun lt!668545 () Unit!51593)

(declare-fun choose!2038 (ListLongMap!22461 (_ BitVec 64) V!59335 (_ BitVec 64)) Unit!51593)

(assert (=> d!160887 (= lt!668545 (choose!2038 lt!668476 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49943 _keys!618) from!762)))))

(declare-fun e!863536 () Bool)

(assert (=> d!160887 e!863536))

(declare-fun res!1062398 () Bool)

(assert (=> d!160887 (=> (not res!1062398) (not e!863536))))

(assert (=> d!160887 (= res!1062398 (contains!10115 lt!668476 (select (arr!49943 _keys!618) from!762)))))

(assert (=> d!160887 (= (addApplyDifferent!623 lt!668476 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49943 _keys!618) from!762)) lt!668545)))

(declare-fun b!1551210 () Bool)

(assert (=> b!1551210 (= e!863536 (not (= (select (arr!49943 _keys!618) from!762) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!160887 res!1062398) b!1551210))

(assert (=> d!160887 m!1429817))

(assert (=> d!160887 m!1429837))

(assert (=> d!160887 m!1429827))

(assert (=> d!160887 m!1429817))

(assert (=> d!160887 m!1429829))

(assert (=> d!160887 m!1429827))

(assert (=> d!160887 m!1429817))

(declare-fun m!1429949 () Bool)

(assert (=> d!160887 m!1429949))

(assert (=> d!160887 m!1429817))

(assert (=> d!160887 m!1429839))

(assert (=> b!1551092 d!160887))

(assert (=> b!1551092 d!160879))

(declare-fun d!160889 () Bool)

(declare-fun e!863537 () Bool)

(assert (=> d!160889 e!863537))

(declare-fun res!1062399 () Bool)

(assert (=> d!160889 (=> (not res!1062399) (not e!863537))))

(declare-fun lt!668547 () ListLongMap!22461)

(assert (=> d!160889 (= res!1062399 (contains!10115 lt!668547 (_1!12430 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun lt!668549 () List!36326)

(assert (=> d!160889 (= lt!668547 (ListLongMap!22462 lt!668549))))

(declare-fun lt!668546 () Unit!51593)

(declare-fun lt!668548 () Unit!51593)

(assert (=> d!160889 (= lt!668546 lt!668548)))

(assert (=> d!160889 (= (getValueByKey!732 lt!668549 (_1!12430 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (Some!806 (_2!12430 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!160889 (= lt!668548 (lemmaContainsTupThenGetReturnValue!372 lt!668549 (_1!12430 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12430 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!160889 (= lt!668549 (insertStrictlySorted!501 (toList!11246 lt!668476) (_1!12430 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12430 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!160889 (= (+!4954 lt!668476 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) lt!668547)))

(declare-fun b!1551211 () Bool)

(declare-fun res!1062400 () Bool)

(assert (=> b!1551211 (=> (not res!1062400) (not e!863537))))

(assert (=> b!1551211 (= res!1062400 (= (getValueByKey!732 (toList!11246 lt!668547) (_1!12430 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (Some!806 (_2!12430 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun b!1551212 () Bool)

(assert (=> b!1551212 (= e!863537 (contains!10116 (toList!11246 lt!668547) (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(assert (= (and d!160889 res!1062399) b!1551211))

(assert (= (and b!1551211 res!1062400) b!1551212))

(declare-fun m!1429951 () Bool)

(assert (=> d!160889 m!1429951))

(declare-fun m!1429953 () Bool)

(assert (=> d!160889 m!1429953))

(declare-fun m!1429955 () Bool)

(assert (=> d!160889 m!1429955))

(declare-fun m!1429957 () Bool)

(assert (=> d!160889 m!1429957))

(declare-fun m!1429959 () Bool)

(assert (=> b!1551211 m!1429959))

(declare-fun m!1429961 () Bool)

(assert (=> b!1551212 m!1429961))

(assert (=> b!1551092 d!160889))

(declare-fun d!160891 () Bool)

(assert (=> d!160891 (contains!10115 (+!4954 lt!668476 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49943 _keys!618) from!762))))

(declare-fun lt!668552 () Unit!51593)

(declare-fun choose!2039 (ListLongMap!22461 (_ BitVec 64) V!59335 (_ BitVec 64)) Unit!51593)

(assert (=> d!160891 (= lt!668552 (choose!2039 lt!668476 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49943 _keys!618) from!762)))))

(assert (=> d!160891 (contains!10115 lt!668476 (select (arr!49943 _keys!618) from!762))))

(assert (=> d!160891 (= (addStillContains!1290 lt!668476 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49943 _keys!618) from!762)) lt!668552)))

(declare-fun bs!44562 () Bool)

(assert (= bs!44562 d!160891))

(assert (=> bs!44562 m!1429831))

(assert (=> bs!44562 m!1429831))

(assert (=> bs!44562 m!1429817))

(assert (=> bs!44562 m!1429833))

(assert (=> bs!44562 m!1429817))

(declare-fun m!1429963 () Bool)

(assert (=> bs!44562 m!1429963))

(assert (=> bs!44562 m!1429817))

(assert (=> bs!44562 m!1429839))

(assert (=> b!1551092 d!160891))

(declare-fun d!160893 () Bool)

(declare-fun e!863539 () Bool)

(assert (=> d!160893 e!863539))

(declare-fun res!1062401 () Bool)

(assert (=> d!160893 (=> res!1062401 e!863539)))

(declare-fun lt!668553 () Bool)

(assert (=> d!160893 (= res!1062401 (not lt!668553))))

(declare-fun lt!668556 () Bool)

(assert (=> d!160893 (= lt!668553 lt!668556)))

(declare-fun lt!668555 () Unit!51593)

(declare-fun e!863538 () Unit!51593)

(assert (=> d!160893 (= lt!668555 e!863538)))

(declare-fun c!142687 () Bool)

(assert (=> d!160893 (= c!142687 lt!668556)))

(assert (=> d!160893 (= lt!668556 (containsKey!750 (toList!11246 (+!4954 lt!668476 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49943 _keys!618) from!762)))))

(assert (=> d!160893 (= (contains!10115 (+!4954 lt!668476 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49943 _keys!618) from!762)) lt!668553)))

(declare-fun b!1551214 () Bool)

(declare-fun lt!668554 () Unit!51593)

(assert (=> b!1551214 (= e!863538 lt!668554)))

(assert (=> b!1551214 (= lt!668554 (lemmaContainsKeyImpliesGetValueByKeyDefined!495 (toList!11246 (+!4954 lt!668476 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49943 _keys!618) from!762)))))

(assert (=> b!1551214 (isDefined!544 (getValueByKey!732 (toList!11246 (+!4954 lt!668476 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49943 _keys!618) from!762)))))

(declare-fun b!1551215 () Bool)

(declare-fun Unit!51596 () Unit!51593)

(assert (=> b!1551215 (= e!863538 Unit!51596)))

(declare-fun b!1551216 () Bool)

(assert (=> b!1551216 (= e!863539 (isDefined!544 (getValueByKey!732 (toList!11246 (+!4954 lt!668476 (tuple2!24841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49943 _keys!618) from!762))))))

(assert (= (and d!160893 c!142687) b!1551214))

(assert (= (and d!160893 (not c!142687)) b!1551215))

(assert (= (and d!160893 (not res!1062401)) b!1551216))

(assert (=> d!160893 m!1429817))

(declare-fun m!1429965 () Bool)

(assert (=> d!160893 m!1429965))

(assert (=> b!1551214 m!1429817))

(declare-fun m!1429967 () Bool)

(assert (=> b!1551214 m!1429967))

(assert (=> b!1551214 m!1429817))

(declare-fun m!1429969 () Bool)

(assert (=> b!1551214 m!1429969))

(assert (=> b!1551214 m!1429969))

(declare-fun m!1429971 () Bool)

(assert (=> b!1551214 m!1429971))

(assert (=> b!1551216 m!1429817))

(assert (=> b!1551216 m!1429969))

(assert (=> b!1551216 m!1429969))

(assert (=> b!1551216 m!1429971))

(assert (=> b!1551092 d!160893))

(declare-fun d!160895 () Bool)

(declare-fun e!863540 () Bool)

(assert (=> d!160895 e!863540))

(declare-fun res!1062402 () Bool)

(assert (=> d!160895 (=> (not res!1062402) (not e!863540))))

(declare-fun lt!668558 () ListLongMap!22461)

(assert (=> d!160895 (= res!1062402 (contains!10115 lt!668558 (_1!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lt!668560 () List!36326)

(assert (=> d!160895 (= lt!668558 (ListLongMap!22462 lt!668560))))

(declare-fun lt!668557 () Unit!51593)

(declare-fun lt!668559 () Unit!51593)

(assert (=> d!160895 (= lt!668557 lt!668559)))

(assert (=> d!160895 (= (getValueByKey!732 lt!668560 (_1!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!806 (_2!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160895 (= lt!668559 (lemmaContainsTupThenGetReturnValue!372 lt!668560 (_1!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160895 (= lt!668560 (insertStrictlySorted!501 (toList!11246 lt!668476) (_1!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160895 (= (+!4954 lt!668476 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) lt!668558)))

(declare-fun b!1551217 () Bool)

(declare-fun res!1062403 () Bool)

(assert (=> b!1551217 (=> (not res!1062403) (not e!863540))))

(assert (=> b!1551217 (= res!1062403 (= (getValueByKey!732 (toList!11246 lt!668558) (_1!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!806 (_2!12430 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1551218 () Bool)

(assert (=> b!1551218 (= e!863540 (contains!10116 (toList!11246 lt!668558) (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(assert (= (and d!160895 res!1062402) b!1551217))

(assert (= (and b!1551217 res!1062403) b!1551218))

(declare-fun m!1429973 () Bool)

(assert (=> d!160895 m!1429973))

(declare-fun m!1429975 () Bool)

(assert (=> d!160895 m!1429975))

(declare-fun m!1429977 () Bool)

(assert (=> d!160895 m!1429977))

(declare-fun m!1429979 () Bool)

(assert (=> d!160895 m!1429979))

(declare-fun m!1429981 () Bool)

(assert (=> b!1551217 m!1429981))

(declare-fun m!1429983 () Bool)

(assert (=> b!1551218 m!1429983))

(assert (=> b!1551092 d!160895))

(declare-fun d!160897 () Bool)

(declare-fun get!26046 (Option!807) V!59335)

(assert (=> d!160897 (= (apply!1122 (+!4954 lt!668476 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49943 _keys!618) from!762)) (get!26046 (getValueByKey!732 (toList!11246 (+!4954 lt!668476 (tuple2!24841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (select (arr!49943 _keys!618) from!762))))))

(declare-fun bs!44563 () Bool)

(assert (= bs!44563 d!160897))

(assert (=> bs!44563 m!1429817))

(declare-fun m!1429985 () Bool)

(assert (=> bs!44563 m!1429985))

(assert (=> bs!44563 m!1429985))

(declare-fun m!1429987 () Bool)

(assert (=> bs!44563 m!1429987))

(assert (=> b!1551092 d!160897))

(declare-fun d!160899 () Bool)

(assert (=> d!160899 (= (apply!1122 lt!668476 (select (arr!49943 _keys!618) from!762)) (get!26046 (getValueByKey!732 (toList!11246 lt!668476) (select (arr!49943 _keys!618) from!762))))))

(declare-fun bs!44564 () Bool)

(assert (= bs!44564 d!160899))

(assert (=> bs!44564 m!1429817))

(assert (=> bs!44564 m!1429945))

(assert (=> bs!44564 m!1429945))

(declare-fun m!1429989 () Bool)

(assert (=> bs!44564 m!1429989))

(assert (=> b!1551092 d!160899))

(declare-fun b!1551229 () Bool)

(declare-fun e!863549 () Bool)

(declare-fun contains!10117 (List!36327 (_ BitVec 64)) Bool)

(assert (=> b!1551229 (= e!863549 (contains!10117 Nil!36324 (select (arr!49943 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1551230 () Bool)

(declare-fun e!863550 () Bool)

(declare-fun call!70974 () Bool)

(assert (=> b!1551230 (= e!863550 call!70974)))

(declare-fun b!1551231 () Bool)

(assert (=> b!1551231 (= e!863550 call!70974)))

(declare-fun bm!70971 () Bool)

(declare-fun c!142690 () Bool)

(assert (=> bm!70971 (= call!70974 (arrayNoDuplicates!0 _keys!618 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!142690 (Cons!36323 (select (arr!49943 _keys!618) #b00000000000000000000000000000000) Nil!36324) Nil!36324)))))

(declare-fun b!1551232 () Bool)

(declare-fun e!863551 () Bool)

(assert (=> b!1551232 (= e!863551 e!863550)))

(assert (=> b!1551232 (= c!142690 (validKeyInArray!0 (select (arr!49943 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun d!160901 () Bool)

(declare-fun res!1062412 () Bool)

(declare-fun e!863552 () Bool)

(assert (=> d!160901 (=> res!1062412 e!863552)))

(assert (=> d!160901 (= res!1062412 (bvsge #b00000000000000000000000000000000 (size!50494 _keys!618)))))

(assert (=> d!160901 (= (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36324) e!863552)))

(declare-fun b!1551233 () Bool)

(assert (=> b!1551233 (= e!863552 e!863551)))

(declare-fun res!1062410 () Bool)

(assert (=> b!1551233 (=> (not res!1062410) (not e!863551))))

(assert (=> b!1551233 (= res!1062410 (not e!863549))))

(declare-fun res!1062411 () Bool)

(assert (=> b!1551233 (=> (not res!1062411) (not e!863549))))

(assert (=> b!1551233 (= res!1062411 (validKeyInArray!0 (select (arr!49943 _keys!618) #b00000000000000000000000000000000)))))

(assert (= (and d!160901 (not res!1062412)) b!1551233))

(assert (= (and b!1551233 res!1062411) b!1551229))

(assert (= (and b!1551233 res!1062410) b!1551232))

(assert (= (and b!1551232 c!142690) b!1551231))

(assert (= (and b!1551232 (not c!142690)) b!1551230))

(assert (= (or b!1551231 b!1551230) bm!70971))

(declare-fun m!1429991 () Bool)

(assert (=> b!1551229 m!1429991))

(assert (=> b!1551229 m!1429991))

(declare-fun m!1429993 () Bool)

(assert (=> b!1551229 m!1429993))

(assert (=> bm!70971 m!1429991))

(declare-fun m!1429995 () Bool)

(assert (=> bm!70971 m!1429995))

(assert (=> b!1551232 m!1429991))

(assert (=> b!1551232 m!1429991))

(declare-fun m!1429997 () Bool)

(assert (=> b!1551232 m!1429997))

(assert (=> b!1551233 m!1429991))

(assert (=> b!1551233 m!1429991))

(assert (=> b!1551233 m!1429997))

(assert (=> b!1551094 d!160901))

(declare-fun d!160903 () Bool)

(assert (=> d!160903 (= (validMask!0 mask!926) (and (or (= mask!926 #b00000000000000000000000000000111) (= mask!926 #b00000000000000000000000000001111) (= mask!926 #b00000000000000000000000000011111) (= mask!926 #b00000000000000000000000000111111) (= mask!926 #b00000000000000000000000001111111) (= mask!926 #b00000000000000000000000011111111) (= mask!926 #b00000000000000000000000111111111) (= mask!926 #b00000000000000000000001111111111) (= mask!926 #b00000000000000000000011111111111) (= mask!926 #b00000000000000000000111111111111) (= mask!926 #b00000000000000000001111111111111) (= mask!926 #b00000000000000000011111111111111) (= mask!926 #b00000000000000000111111111111111) (= mask!926 #b00000000000000001111111111111111) (= mask!926 #b00000000000000011111111111111111) (= mask!926 #b00000000000000111111111111111111) (= mask!926 #b00000000000001111111111111111111) (= mask!926 #b00000000000011111111111111111111) (= mask!926 #b00000000000111111111111111111111) (= mask!926 #b00000000001111111111111111111111) (= mask!926 #b00000000011111111111111111111111) (= mask!926 #b00000000111111111111111111111111) (= mask!926 #b00000001111111111111111111111111) (= mask!926 #b00000011111111111111111111111111) (= mask!926 #b00000111111111111111111111111111) (= mask!926 #b00001111111111111111111111111111) (= mask!926 #b00011111111111111111111111111111) (= mask!926 #b00111111111111111111111111111111)) (bvsle mask!926 #b00111111111111111111111111111111)))))

(assert (=> start!132250 d!160903))

(declare-fun d!160905 () Bool)

(assert (=> d!160905 (= (array_inv!38753 _keys!618) (bvsge (size!50494 _keys!618) #b00000000000000000000000000000000))))

(assert (=> start!132250 d!160905))

(declare-fun d!160907 () Bool)

(assert (=> d!160907 (= (array_inv!38754 _values!470) (bvsge (size!50493 _values!470) #b00000000000000000000000000000000))))

(assert (=> start!132250 d!160907))

(declare-fun bm!70974 () Bool)

(declare-fun call!70977 () Bool)

(assert (=> bm!70974 (= call!70977 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!618 mask!926))))

(declare-fun b!1551243 () Bool)

(declare-fun e!863560 () Bool)

(assert (=> b!1551243 (= e!863560 call!70977)))

(declare-fun b!1551244 () Bool)

(declare-fun e!863561 () Bool)

(assert (=> b!1551244 (= e!863561 e!863560)))

(declare-fun c!142693 () Bool)

(assert (=> b!1551244 (= c!142693 (validKeyInArray!0 (select (arr!49943 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1551245 () Bool)

(declare-fun e!863559 () Bool)

(assert (=> b!1551245 (= e!863559 call!70977)))

(declare-fun b!1551242 () Bool)

(assert (=> b!1551242 (= e!863560 e!863559)))

(declare-fun lt!668568 () (_ BitVec 64))

(assert (=> b!1551242 (= lt!668568 (select (arr!49943 _keys!618) #b00000000000000000000000000000000))))

(declare-fun lt!668569 () Unit!51593)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!103495 (_ BitVec 64) (_ BitVec 32)) Unit!51593)

(assert (=> b!1551242 (= lt!668569 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!618 lt!668568 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!103495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1551242 (arrayContainsKey!0 _keys!618 lt!668568 #b00000000000000000000000000000000)))

(declare-fun lt!668567 () Unit!51593)

(assert (=> b!1551242 (= lt!668567 lt!668569)))

(declare-fun res!1062418 () Bool)

(declare-datatypes ((SeekEntryResult!13512 0))(
  ( (MissingZero!13512 (index!56445 (_ BitVec 32))) (Found!13512 (index!56446 (_ BitVec 32))) (Intermediate!13512 (undefined!14324 Bool) (index!56447 (_ BitVec 32)) (x!139122 (_ BitVec 32))) (Undefined!13512) (MissingVacant!13512 (index!56448 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!103495 (_ BitVec 32)) SeekEntryResult!13512)

(assert (=> b!1551242 (= res!1062418 (= (seekEntryOrOpen!0 (select (arr!49943 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926) (Found!13512 #b00000000000000000000000000000000)))))

(assert (=> b!1551242 (=> (not res!1062418) (not e!863559))))

(declare-fun d!160909 () Bool)

(declare-fun res!1062417 () Bool)

(assert (=> d!160909 (=> res!1062417 e!863561)))

(assert (=> d!160909 (= res!1062417 (bvsge #b00000000000000000000000000000000 (size!50494 _keys!618)))))

(assert (=> d!160909 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926) e!863561)))

(assert (= (and d!160909 (not res!1062417)) b!1551244))

(assert (= (and b!1551244 c!142693) b!1551242))

(assert (= (and b!1551244 (not c!142693)) b!1551243))

(assert (= (and b!1551242 res!1062418) b!1551245))

(assert (= (or b!1551245 b!1551243) bm!70974))

(declare-fun m!1429999 () Bool)

(assert (=> bm!70974 m!1429999))

(assert (=> b!1551244 m!1429991))

(assert (=> b!1551244 m!1429991))

(assert (=> b!1551244 m!1429997))

(assert (=> b!1551242 m!1429991))

(declare-fun m!1430001 () Bool)

(assert (=> b!1551242 m!1430001))

(declare-fun m!1430003 () Bool)

(assert (=> b!1551242 m!1430003))

(assert (=> b!1551242 m!1429991))

(declare-fun m!1430005 () Bool)

(assert (=> b!1551242 m!1430005))

(assert (=> b!1551090 d!160909))

(declare-fun mapIsEmpty!58969 () Bool)

(declare-fun mapRes!58969 () Bool)

(assert (=> mapIsEmpty!58969 mapRes!58969))

(declare-fun mapNonEmpty!58969 () Bool)

(declare-fun tp!111947 () Bool)

(declare-fun e!863567 () Bool)

(assert (=> mapNonEmpty!58969 (= mapRes!58969 (and tp!111947 e!863567))))

(declare-fun mapRest!58969 () (Array (_ BitVec 32) ValueCell!18174))

(declare-fun mapKey!58969 () (_ BitVec 32))

(declare-fun mapValue!58969 () ValueCell!18174)

(assert (=> mapNonEmpty!58969 (= mapRest!58963 (store mapRest!58969 mapKey!58969 mapValue!58969))))

(declare-fun condMapEmpty!58969 () Bool)

(declare-fun mapDefault!58969 () ValueCell!18174)

(assert (=> mapNonEmpty!58963 (= condMapEmpty!58969 (= mapRest!58963 ((as const (Array (_ BitVec 32) ValueCell!18174)) mapDefault!58969)))))

(declare-fun e!863566 () Bool)

(assert (=> mapNonEmpty!58963 (= tp!111938 (and e!863566 mapRes!58969))))

(declare-fun b!1551252 () Bool)

(assert (=> b!1551252 (= e!863567 tp_is_empty!38169)))

(declare-fun b!1551253 () Bool)

(assert (=> b!1551253 (= e!863566 tp_is_empty!38169)))

(assert (= (and mapNonEmpty!58963 condMapEmpty!58969) mapIsEmpty!58969))

(assert (= (and mapNonEmpty!58963 (not condMapEmpty!58969)) mapNonEmpty!58969))

(assert (= (and mapNonEmpty!58969 ((_ is ValueCellFull!18174) mapValue!58969)) b!1551252))

(assert (= (and mapNonEmpty!58963 ((_ is ValueCellFull!18174) mapDefault!58969)) b!1551253))

(declare-fun m!1430007 () Bool)

(assert (=> mapNonEmpty!58969 m!1430007))

(declare-fun b_lambda!24785 () Bool)

(assert (= b_lambda!24783 (or (and start!132250 b_free!31893) b_lambda!24785)))

(declare-fun b_lambda!24787 () Bool)

(assert (= b_lambda!24781 (or (and start!132250 b_free!31893) b_lambda!24787)))

(check-sat (not d!160879) (not b!1551217) (not b_lambda!24785) (not b!1551242) (not b!1551192) (not bm!70974) (not d!160877) (not b_next!31893) b_and!51339 (not b!1551190) (not bm!70968) (not b!1551189) (not b!1551185) (not b!1551197) (not d!160895) tp_is_empty!38169 (not d!160887) (not b!1551218) (not b!1551244) (not d!160899) (not d!160891) (not d!160885) (not b!1551211) (not b!1551157) (not b_lambda!24787) (not b!1551214) (not b!1551191) (not b!1551212) (not b!1551193) (not d!160889) (not d!160883) (not d!160897) (not b!1551206) (not b!1551229) (not b!1551184) (not b!1551232) (not d!160893) (not b!1551196) (not b!1551233) (not b!1551156) (not b!1551216) (not b!1551204) (not b!1551183) (not bm!70971) (not mapNonEmpty!58969))
(check-sat b_and!51339 (not b_next!31893))
