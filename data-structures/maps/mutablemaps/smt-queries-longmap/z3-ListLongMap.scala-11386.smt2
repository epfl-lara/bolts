; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132340 () Bool)

(assert start!132340)

(declare-fun b_free!31935 () Bool)

(declare-fun b_next!31935 () Bool)

(assert (=> start!132340 (= b_free!31935 (not b_next!31935))))

(declare-fun tp!112070 () Bool)

(declare-fun b_and!51385 () Bool)

(assert (=> start!132340 (= tp!112070 b_and!51385)))

(declare-fun e!864281 () Bool)

(declare-datatypes ((array!103581 0))(
  ( (array!103582 (arr!49984 (Array (_ BitVec 32) (_ BitVec 64))) (size!50535 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103581)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((V!59391 0))(
  ( (V!59392 (val!19183 Int)) )
))
(declare-datatypes ((ValueCell!18195 0))(
  ( (ValueCellFull!18195 (v!21985 V!59391)) (EmptyCell!18195) )
))
(declare-datatypes ((array!103583 0))(
  ( (array!103584 (arr!49985 (Array (_ BitVec 32) ValueCell!18195)) (size!50536 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103583)

(declare-datatypes ((tuple2!24882 0))(
  ( (tuple2!24883 (_1!12451 (_ BitVec 64)) (_2!12451 V!59391)) )
))
(declare-datatypes ((List!36361 0))(
  ( (Nil!36358) (Cons!36357 (h!37803 tuple2!24882) (t!51086 List!36361)) )
))
(declare-datatypes ((ListLongMap!22503 0))(
  ( (ListLongMap!22504 (toList!11267 List!36361)) )
))
(declare-fun lt!669252 () ListLongMap!22503)

(declare-fun b!1552430 () Bool)

(declare-fun defaultEntry!478 () Int)

(declare-fun apply!1140 (ListLongMap!22503 (_ BitVec 64)) V!59391)

(declare-fun get!26063 (ValueCell!18195 V!59391) V!59391)

(declare-fun dynLambda!3874 (Int (_ BitVec 64)) V!59391)

(assert (=> b!1552430 (= e!864281 (not (= (apply!1140 lt!669252 (select (arr!49984 _keys!618) from!762)) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1552431 () Bool)

(declare-fun res!1062911 () Bool)

(declare-fun e!864277 () Bool)

(assert (=> b!1552431 (=> (not res!1062911) (not e!864277))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103581 (_ BitVec 32)) Bool)

(assert (=> b!1552431 (= res!1062911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1552432 () Bool)

(declare-fun e!864280 () Bool)

(declare-fun minValue!436 () V!59391)

(assert (=> b!1552432 (= e!864280 (not (= (apply!1140 lt!669252 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!436)))))

(declare-fun b!1552433 () Bool)

(declare-fun e!864269 () ListLongMap!22503)

(declare-fun call!71297 () ListLongMap!22503)

(assert (=> b!1552433 (= e!864269 call!71297)))

(declare-fun b!1552434 () Bool)

(declare-fun call!71293 () ListLongMap!22503)

(assert (=> b!1552434 (= e!864269 call!71293)))

(declare-fun b!1552435 () Bool)

(declare-datatypes ((Unit!51642 0))(
  ( (Unit!51643) )
))
(declare-fun e!864273 () Unit!51642)

(declare-fun lt!669253 () Unit!51642)

(assert (=> b!1552435 (= e!864273 lt!669253)))

(declare-fun zeroValue!436 () V!59391)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!669255 () ListLongMap!22503)

(declare-fun getCurrentListMapNoExtraKeys!6690 (array!103581 array!103583 (_ BitVec 32) (_ BitVec 32) V!59391 V!59391 (_ BitVec 32) Int) ListLongMap!22503)

(assert (=> b!1552435 (= lt!669255 (getCurrentListMapNoExtraKeys!6690 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!669258 () Unit!51642)

(declare-fun addStillContains!1308 (ListLongMap!22503 (_ BitVec 64) V!59391 (_ BitVec 64)) Unit!51642)

(assert (=> b!1552435 (= lt!669258 (addStillContains!1308 lt!669255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49984 _keys!618) from!762)))))

(declare-fun lt!669257 () ListLongMap!22503)

(declare-fun +!4973 (ListLongMap!22503 tuple2!24882) ListLongMap!22503)

(assert (=> b!1552435 (= lt!669257 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun contains!10137 (ListLongMap!22503 (_ BitVec 64)) Bool)

(assert (=> b!1552435 (contains!10137 lt!669257 (select (arr!49984 _keys!618) from!762))))

(declare-fun addApplyDifferent!641 (ListLongMap!22503 (_ BitVec 64) V!59391 (_ BitVec 64)) Unit!51642)

(assert (=> b!1552435 (= lt!669253 (addApplyDifferent!641 lt!669255 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49984 _keys!618) from!762)))))

(declare-fun lt!669260 () V!59391)

(assert (=> b!1552435 (= lt!669260 (apply!1140 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49984 _keys!618) from!762)))))

(declare-fun lt!669261 () V!59391)

(assert (=> b!1552435 (= lt!669261 (apply!1140 lt!669255 (select (arr!49984 _keys!618) from!762)))))

(assert (=> b!1552435 (= lt!669260 lt!669261)))

(declare-fun lt!669251 () Unit!51642)

(assert (=> b!1552435 (= lt!669251 (addApplyDifferent!641 lt!669255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49984 _keys!618) from!762)))))

(assert (=> b!1552435 (= (apply!1140 lt!669257 (select (arr!49984 _keys!618) from!762)) lt!669261)))

(declare-fun bm!71289 () Bool)

(declare-fun call!71294 () Bool)

(assert (=> bm!71289 (= call!71294 (contains!10137 lt!669252 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1552436 () Bool)

(declare-fun e!864274 () Bool)

(declare-fun tp_is_empty!38211 () Bool)

(assert (=> b!1552436 (= e!864274 tp_is_empty!38211)))

(declare-fun call!71292 () ListLongMap!22503)

(declare-fun call!71295 () ListLongMap!22503)

(declare-fun bm!71290 () Bool)

(declare-fun call!71298 () ListLongMap!22503)

(declare-fun c!142944 () Bool)

(declare-fun c!142948 () Bool)

(assert (=> bm!71290 (= call!71292 (+!4973 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)) (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552437 () Bool)

(declare-fun e!864271 () Bool)

(assert (=> b!1552437 (= e!864277 e!864271)))

(declare-fun res!1062913 () Bool)

(assert (=> b!1552437 (=> res!1062913 e!864271)))

(declare-fun e!864284 () Bool)

(assert (=> b!1552437 (= res!1062913 e!864284)))

(declare-fun res!1062904 () Bool)

(assert (=> b!1552437 (=> (not res!1062904) (not e!864284))))

(declare-fun lt!669259 () Bool)

(assert (=> b!1552437 (= res!1062904 (not lt!669259))))

(declare-fun lt!669254 () Unit!51642)

(assert (=> b!1552437 (= lt!669254 e!864273)))

(declare-fun c!142946 () Bool)

(assert (=> b!1552437 (= c!142946 (not lt!669259))))

(declare-fun e!864272 () Bool)

(assert (=> b!1552437 (= lt!669259 e!864272)))

(declare-fun res!1062906 () Bool)

(assert (=> b!1552437 (=> res!1062906 e!864272)))

(assert (=> b!1552437 (= res!1062906 (bvsge from!762 (size!50535 _keys!618)))))

(declare-fun e!864276 () ListLongMap!22503)

(assert (=> b!1552437 (= lt!669252 e!864276)))

(declare-fun lt!669256 () Bool)

(assert (=> b!1552437 (= c!142944 (and (not lt!669256) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1552437 (= lt!669256 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1552438 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1552438 (= e!864272 (not (validKeyInArray!0 (select (arr!49984 _keys!618) from!762))))))

(declare-fun b!1552439 () Bool)

(declare-fun e!864279 () Bool)

(assert (=> b!1552439 (= e!864279 tp_is_empty!38211)))

(declare-fun b!1552440 () Bool)

(assert (=> b!1552440 (= e!864276 (+!4973 call!71292 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1552441 () Bool)

(declare-fun res!1062912 () Bool)

(assert (=> b!1552441 (=> (not res!1062912) (not e!864277))))

(assert (=> b!1552441 (= res!1062912 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50535 _keys!618))))))

(declare-fun b!1552442 () Bool)

(declare-fun Unit!51644 () Unit!51642)

(assert (=> b!1552442 (= e!864273 Unit!51644)))

(declare-fun b!1552443 () Bool)

(declare-fun e!864268 () Bool)

(assert (=> b!1552443 (= e!864268 e!864280)))

(declare-fun res!1062909 () Bool)

(assert (=> b!1552443 (= res!1062909 (not call!71294))))

(assert (=> b!1552443 (=> res!1062909 e!864280)))

(declare-fun bm!71291 () Bool)

(assert (=> bm!71291 (= call!71297 call!71295)))

(declare-fun b!1552444 () Bool)

(assert (=> b!1552444 (= e!864284 e!864281)))

(declare-fun res!1062910 () Bool)

(assert (=> b!1552444 (=> res!1062910 e!864281)))

(assert (=> b!1552444 (= res!1062910 (not (contains!10137 lt!669252 (select (arr!49984 _keys!618) from!762))))))

(declare-fun mapNonEmpty!59032 () Bool)

(declare-fun mapRes!59032 () Bool)

(declare-fun tp!112069 () Bool)

(assert (=> mapNonEmpty!59032 (= mapRes!59032 (and tp!112069 e!864279))))

(declare-fun mapKey!59032 () (_ BitVec 32))

(declare-fun mapValue!59032 () ValueCell!18195)

(declare-fun mapRest!59032 () (Array (_ BitVec 32) ValueCell!18195))

(assert (=> mapNonEmpty!59032 (= (arr!49985 _values!470) (store mapRest!59032 mapKey!59032 mapValue!59032))))

(declare-fun b!1552445 () Bool)

(declare-fun e!864275 () ListLongMap!22503)

(assert (=> b!1552445 (= e!864276 e!864275)))

(assert (=> b!1552445 (= c!142948 (and (not lt!669256) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1552446 () Bool)

(assert (=> b!1552446 (= e!864275 call!71293)))

(declare-fun bm!71292 () Bool)

(assert (=> bm!71292 (= call!71293 call!71292)))

(declare-fun bm!71293 () Bool)

(assert (=> bm!71293 (= call!71298 (getCurrentListMapNoExtraKeys!6690 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1552447 () Bool)

(declare-fun res!1062907 () Bool)

(assert (=> b!1552447 (=> (not res!1062907) (not e!864277))))

(declare-datatypes ((List!36362 0))(
  ( (Nil!36359) (Cons!36358 (h!37804 (_ BitVec 64)) (t!51087 List!36362)) )
))
(declare-fun arrayNoDuplicates!0 (array!103581 (_ BitVec 32) List!36362) Bool)

(assert (=> b!1552447 (= res!1062907 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36359))))

(declare-fun bm!71294 () Bool)

(assert (=> bm!71294 (= call!71295 call!71298)))

(declare-fun res!1062905 () Bool)

(assert (=> start!132340 (=> (not res!1062905) (not e!864277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132340 (= res!1062905 (validMask!0 mask!926))))

(assert (=> start!132340 e!864277))

(declare-fun array_inv!38781 (array!103581) Bool)

(assert (=> start!132340 (array_inv!38781 _keys!618)))

(assert (=> start!132340 tp_is_empty!38211))

(assert (=> start!132340 true))

(assert (=> start!132340 tp!112070))

(declare-fun e!864283 () Bool)

(declare-fun array_inv!38782 (array!103583) Bool)

(assert (=> start!132340 (and (array_inv!38782 _values!470) e!864283)))

(declare-fun b!1552448 () Bool)

(declare-fun e!864278 () Bool)

(declare-fun e!864270 () Bool)

(assert (=> b!1552448 (= e!864278 e!864270)))

(declare-fun res!1062915 () Bool)

(declare-fun call!71296 () Bool)

(assert (=> b!1552448 (= res!1062915 (not call!71296))))

(assert (=> b!1552448 (=> res!1062915 e!864270)))

(declare-fun b!1552449 () Bool)

(assert (=> b!1552449 (= e!864268 call!71294)))

(declare-fun b!1552450 () Bool)

(assert (=> b!1552450 (= e!864271 e!864268)))

(declare-fun c!142947 () Bool)

(assert (=> b!1552450 (= c!142947 (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1552451 () Bool)

(declare-fun res!1062908 () Bool)

(assert (=> b!1552451 (=> res!1062908 e!864271)))

(assert (=> b!1552451 (= res!1062908 e!864278)))

(declare-fun c!142949 () Bool)

(assert (=> b!1552451 (= c!142949 (not lt!669256))))

(declare-fun b!1552452 () Bool)

(assert (=> b!1552452 (= e!864283 (and e!864274 mapRes!59032))))

(declare-fun condMapEmpty!59032 () Bool)

(declare-fun mapDefault!59032 () ValueCell!18195)

(assert (=> b!1552452 (= condMapEmpty!59032 (= (arr!49985 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18195)) mapDefault!59032)))))

(declare-fun b!1552453 () Bool)

(assert (=> b!1552453 (= e!864270 (not (= (apply!1140 lt!669252 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!436)))))

(declare-fun b!1552454 () Bool)

(declare-fun c!142945 () Bool)

(assert (=> b!1552454 (= c!142945 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!669256))))

(assert (=> b!1552454 (= e!864275 e!864269)))

(declare-fun b!1552455 () Bool)

(assert (=> b!1552455 (= e!864278 call!71296)))

(declare-fun bm!71295 () Bool)

(assert (=> bm!71295 (= call!71296 (contains!10137 lt!669252 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1552456 () Bool)

(declare-fun res!1062914 () Bool)

(assert (=> b!1552456 (=> (not res!1062914) (not e!864277))))

(assert (=> b!1552456 (= res!1062914 (and (= (size!50536 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50535 _keys!618) (size!50536 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59032 () Bool)

(assert (=> mapIsEmpty!59032 mapRes!59032))

(assert (= (and start!132340 res!1062905) b!1552456))

(assert (= (and b!1552456 res!1062914) b!1552431))

(assert (= (and b!1552431 res!1062911) b!1552447))

(assert (= (and b!1552447 res!1062907) b!1552441))

(assert (= (and b!1552441 res!1062912) b!1552437))

(assert (= (and b!1552437 c!142944) b!1552440))

(assert (= (and b!1552437 (not c!142944)) b!1552445))

(assert (= (and b!1552445 c!142948) b!1552446))

(assert (= (and b!1552445 (not c!142948)) b!1552454))

(assert (= (and b!1552454 c!142945) b!1552434))

(assert (= (and b!1552454 (not c!142945)) b!1552433))

(assert (= (or b!1552434 b!1552433) bm!71291))

(assert (= (or b!1552446 bm!71291) bm!71294))

(assert (= (or b!1552446 b!1552434) bm!71292))

(assert (= (or b!1552440 bm!71294) bm!71293))

(assert (= (or b!1552440 bm!71292) bm!71290))

(assert (= (and b!1552437 (not res!1062906)) b!1552438))

(assert (= (and b!1552437 c!142946) b!1552435))

(assert (= (and b!1552437 (not c!142946)) b!1552442))

(assert (= (and b!1552437 res!1062904) b!1552444))

(assert (= (and b!1552444 (not res!1062910)) b!1552430))

(assert (= (and b!1552437 (not res!1062913)) b!1552451))

(assert (= (and b!1552451 c!142949) b!1552448))

(assert (= (and b!1552451 (not c!142949)) b!1552455))

(assert (= (and b!1552448 (not res!1062915)) b!1552453))

(assert (= (or b!1552448 b!1552455) bm!71295))

(assert (= (and b!1552451 (not res!1062908)) b!1552450))

(assert (= (and b!1552450 c!142947) b!1552443))

(assert (= (and b!1552450 (not c!142947)) b!1552449))

(assert (= (and b!1552443 (not res!1062909)) b!1552432))

(assert (= (or b!1552443 b!1552449) bm!71289))

(assert (= (and b!1552452 condMapEmpty!59032) mapIsEmpty!59032))

(assert (= (and b!1552452 (not condMapEmpty!59032)) mapNonEmpty!59032))

(get-info :version)

(assert (= (and mapNonEmpty!59032 ((_ is ValueCellFull!18195) mapValue!59032)) b!1552439))

(assert (= (and b!1552452 ((_ is ValueCellFull!18195) mapDefault!59032)) b!1552436))

(assert (= start!132340 b!1552452))

(declare-fun b_lambda!24799 () Bool)

(assert (=> (not b_lambda!24799) (not b!1552430)))

(declare-fun t!51085 () Bool)

(declare-fun tb!12493 () Bool)

(assert (=> (and start!132340 (= defaultEntry!478 defaultEntry!478) t!51085) tb!12493))

(declare-fun result!26097 () Bool)

(assert (=> tb!12493 (= result!26097 tp_is_empty!38211)))

(assert (=> b!1552430 t!51085))

(declare-fun b_and!51387 () Bool)

(assert (= b_and!51385 (and (=> t!51085 result!26097) b_and!51387)))

(declare-fun m!1430931 () Bool)

(assert (=> b!1552453 m!1430931))

(declare-fun m!1430933 () Bool)

(assert (=> bm!71293 m!1430933))

(declare-fun m!1430935 () Bool)

(assert (=> b!1552447 m!1430935))

(declare-fun m!1430937 () Bool)

(assert (=> bm!71289 m!1430937))

(declare-fun m!1430939 () Bool)

(assert (=> mapNonEmpty!59032 m!1430939))

(declare-fun m!1430941 () Bool)

(assert (=> b!1552430 m!1430941))

(declare-fun m!1430943 () Bool)

(assert (=> b!1552430 m!1430943))

(declare-fun m!1430945 () Bool)

(assert (=> b!1552430 m!1430945))

(assert (=> b!1552430 m!1430943))

(declare-fun m!1430947 () Bool)

(assert (=> b!1552430 m!1430947))

(assert (=> b!1552430 m!1430941))

(assert (=> b!1552430 m!1430945))

(declare-fun m!1430949 () Bool)

(assert (=> b!1552430 m!1430949))

(assert (=> b!1552438 m!1430943))

(assert (=> b!1552438 m!1430943))

(declare-fun m!1430951 () Bool)

(assert (=> b!1552438 m!1430951))

(declare-fun m!1430953 () Bool)

(assert (=> b!1552431 m!1430953))

(declare-fun m!1430955 () Bool)

(assert (=> b!1552440 m!1430955))

(declare-fun m!1430957 () Bool)

(assert (=> b!1552432 m!1430957))

(declare-fun m!1430959 () Bool)

(assert (=> bm!71290 m!1430959))

(declare-fun m!1430961 () Bool)

(assert (=> bm!71295 m!1430961))

(assert (=> b!1552444 m!1430943))

(assert (=> b!1552444 m!1430943))

(declare-fun m!1430963 () Bool)

(assert (=> b!1552444 m!1430963))

(assert (=> b!1552435 m!1430933))

(assert (=> b!1552435 m!1430943))

(assert (=> b!1552435 m!1430943))

(declare-fun m!1430965 () Bool)

(assert (=> b!1552435 m!1430965))

(assert (=> b!1552435 m!1430943))

(declare-fun m!1430967 () Bool)

(assert (=> b!1552435 m!1430967))

(assert (=> b!1552435 m!1430943))

(declare-fun m!1430969 () Bool)

(assert (=> b!1552435 m!1430969))

(declare-fun m!1430971 () Bool)

(assert (=> b!1552435 m!1430971))

(declare-fun m!1430973 () Bool)

(assert (=> b!1552435 m!1430973))

(assert (=> b!1552435 m!1430943))

(declare-fun m!1430975 () Bool)

(assert (=> b!1552435 m!1430975))

(assert (=> b!1552435 m!1430943))

(declare-fun m!1430977 () Bool)

(assert (=> b!1552435 m!1430977))

(assert (=> b!1552435 m!1430973))

(assert (=> b!1552435 m!1430943))

(declare-fun m!1430979 () Bool)

(assert (=> b!1552435 m!1430979))

(assert (=> b!1552435 m!1430943))

(declare-fun m!1430981 () Bool)

(assert (=> b!1552435 m!1430981))

(declare-fun m!1430983 () Bool)

(assert (=> start!132340 m!1430983))

(declare-fun m!1430985 () Bool)

(assert (=> start!132340 m!1430985))

(declare-fun m!1430987 () Bool)

(assert (=> start!132340 m!1430987))

(check-sat (not b!1552432) (not b!1552440) (not bm!71293) (not b!1552430) b_and!51387 (not b!1552431) tp_is_empty!38211 (not b!1552444) (not start!132340) (not b!1552453) (not b!1552447) (not b_next!31935) (not bm!71290) (not b_lambda!24799) (not bm!71289) (not mapNonEmpty!59032) (not b!1552435) (not b!1552438) (not bm!71295))
(check-sat b_and!51387 (not b_next!31935))
(get-model)

(declare-fun b_lambda!24803 () Bool)

(assert (= b_lambda!24799 (or (and start!132340 b_free!31935) b_lambda!24803)))

(check-sat (not b!1552432) (not b!1552440) (not bm!71293) (not b!1552430) (not b!1552431) tp_is_empty!38211 (not b!1552444) (not start!132340) (not b!1552453) (not b!1552447) (not b_next!31935) (not bm!71290) (not bm!71289) (not mapNonEmpty!59032) (not b!1552435) b_and!51387 (not b_lambda!24803) (not b!1552438) (not bm!71295))
(check-sat b_and!51387 (not b_next!31935))
(get-model)

(declare-fun d!160963 () Bool)

(declare-datatypes ((Option!809 0))(
  ( (Some!808 (v!21987 V!59391)) (None!807) )
))
(declare-fun get!26065 (Option!809) V!59391)

(declare-fun getValueByKey!734 (List!36361 (_ BitVec 64)) Option!809)

(assert (=> d!160963 (= (apply!1140 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49984 _keys!618) from!762)) (get!26065 (getValueByKey!734 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (select (arr!49984 _keys!618) from!762))))))

(declare-fun bs!44590 () Bool)

(assert (= bs!44590 d!160963))

(assert (=> bs!44590 m!1430943))

(declare-fun m!1431047 () Bool)

(assert (=> bs!44590 m!1431047))

(assert (=> bs!44590 m!1431047))

(declare-fun m!1431049 () Bool)

(assert (=> bs!44590 m!1431049))

(assert (=> b!1552435 d!160963))

(declare-fun d!160965 () Bool)

(assert (=> d!160965 (= (apply!1140 lt!669255 (select (arr!49984 _keys!618) from!762)) (get!26065 (getValueByKey!734 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762))))))

(declare-fun bs!44591 () Bool)

(assert (= bs!44591 d!160965))

(assert (=> bs!44591 m!1430943))

(declare-fun m!1431051 () Bool)

(assert (=> bs!44591 m!1431051))

(assert (=> bs!44591 m!1431051))

(declare-fun m!1431053 () Bool)

(assert (=> bs!44591 m!1431053))

(assert (=> b!1552435 d!160965))

(declare-fun d!160967 () Bool)

(assert (=> d!160967 (= (apply!1140 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49984 _keys!618) from!762)) (apply!1140 lt!669255 (select (arr!49984 _keys!618) from!762)))))

(declare-fun lt!669297 () Unit!51642)

(declare-fun choose!2042 (ListLongMap!22503 (_ BitVec 64) V!59391 (_ BitVec 64)) Unit!51642)

(assert (=> d!160967 (= lt!669297 (choose!2042 lt!669255 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49984 _keys!618) from!762)))))

(declare-fun e!864338 () Bool)

(assert (=> d!160967 e!864338))

(declare-fun res!1062954 () Bool)

(assert (=> d!160967 (=> (not res!1062954) (not e!864338))))

(assert (=> d!160967 (= res!1062954 (contains!10137 lt!669255 (select (arr!49984 _keys!618) from!762)))))

(assert (=> d!160967 (= (addApplyDifferent!641 lt!669255 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49984 _keys!618) from!762)) lt!669297)))

(declare-fun b!1552545 () Bool)

(assert (=> b!1552545 (= e!864338 (not (= (select (arr!49984 _keys!618) from!762) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!160967 res!1062954) b!1552545))

(assert (=> d!160967 m!1430973))

(assert (=> d!160967 m!1430943))

(assert (=> d!160967 m!1430975))

(assert (=> d!160967 m!1430943))

(declare-fun m!1431055 () Bool)

(assert (=> d!160967 m!1431055))

(assert (=> d!160967 m!1430943))

(declare-fun m!1431057 () Bool)

(assert (=> d!160967 m!1431057))

(assert (=> d!160967 m!1430973))

(assert (=> d!160967 m!1430943))

(assert (=> d!160967 m!1430979))

(assert (=> b!1552435 d!160967))

(declare-fun d!160969 () Bool)

(assert (=> d!160969 (= (apply!1140 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49984 _keys!618) from!762)) (apply!1140 lt!669255 (select (arr!49984 _keys!618) from!762)))))

(declare-fun lt!669298 () Unit!51642)

(assert (=> d!160969 (= lt!669298 (choose!2042 lt!669255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49984 _keys!618) from!762)))))

(declare-fun e!864339 () Bool)

(assert (=> d!160969 e!864339))

(declare-fun res!1062955 () Bool)

(assert (=> d!160969 (=> (not res!1062955) (not e!864339))))

(assert (=> d!160969 (= res!1062955 (contains!10137 lt!669255 (select (arr!49984 _keys!618) from!762)))))

(assert (=> d!160969 (= (addApplyDifferent!641 lt!669255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49984 _keys!618) from!762)) lt!669298)))

(declare-fun b!1552546 () Bool)

(assert (=> b!1552546 (= e!864339 (not (= (select (arr!49984 _keys!618) from!762) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!160969 res!1062955) b!1552546))

(assert (=> d!160969 m!1430971))

(assert (=> d!160969 m!1430943))

(assert (=> d!160969 m!1430975))

(assert (=> d!160969 m!1430943))

(assert (=> d!160969 m!1431055))

(assert (=> d!160969 m!1430943))

(declare-fun m!1431059 () Bool)

(assert (=> d!160969 m!1431059))

(assert (=> d!160969 m!1430971))

(assert (=> d!160969 m!1430943))

(declare-fun m!1431061 () Bool)

(assert (=> d!160969 m!1431061))

(assert (=> b!1552435 d!160969))

(declare-fun d!160971 () Bool)

(assert (=> d!160971 (= (apply!1140 lt!669257 (select (arr!49984 _keys!618) from!762)) (get!26065 (getValueByKey!734 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762))))))

(declare-fun bs!44592 () Bool)

(assert (= bs!44592 d!160971))

(assert (=> bs!44592 m!1430943))

(declare-fun m!1431063 () Bool)

(assert (=> bs!44592 m!1431063))

(assert (=> bs!44592 m!1431063))

(declare-fun m!1431065 () Bool)

(assert (=> bs!44592 m!1431065))

(assert (=> b!1552435 d!160971))

(declare-fun d!160973 () Bool)

(assert (=> d!160973 (contains!10137 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49984 _keys!618) from!762))))

(declare-fun lt!669301 () Unit!51642)

(declare-fun choose!2043 (ListLongMap!22503 (_ BitVec 64) V!59391 (_ BitVec 64)) Unit!51642)

(assert (=> d!160973 (= lt!669301 (choose!2043 lt!669255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49984 _keys!618) from!762)))))

(assert (=> d!160973 (contains!10137 lt!669255 (select (arr!49984 _keys!618) from!762))))

(assert (=> d!160973 (= (addStillContains!1308 lt!669255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49984 _keys!618) from!762)) lt!669301)))

(declare-fun bs!44593 () Bool)

(assert (= bs!44593 d!160973))

(assert (=> bs!44593 m!1430971))

(assert (=> bs!44593 m!1430971))

(assert (=> bs!44593 m!1430943))

(declare-fun m!1431067 () Bool)

(assert (=> bs!44593 m!1431067))

(assert (=> bs!44593 m!1430943))

(declare-fun m!1431069 () Bool)

(assert (=> bs!44593 m!1431069))

(assert (=> bs!44593 m!1430943))

(assert (=> bs!44593 m!1431055))

(assert (=> b!1552435 d!160973))

(declare-fun b!1552572 () Bool)

(declare-fun e!864360 () ListLongMap!22503)

(declare-fun e!864355 () ListLongMap!22503)

(assert (=> b!1552572 (= e!864360 e!864355)))

(declare-fun c!142976 () Bool)

(assert (=> b!1552572 (= c!142976 (validKeyInArray!0 (select (arr!49984 _keys!618) from!762)))))

(declare-fun call!71322 () ListLongMap!22503)

(declare-fun bm!71319 () Bool)

(assert (=> bm!71319 (= call!71322 (getCurrentListMapNoExtraKeys!6690 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001) defaultEntry!478))))

(declare-fun b!1552573 () Bool)

(declare-fun res!1062966 () Bool)

(declare-fun e!864356 () Bool)

(assert (=> b!1552573 (=> (not res!1062966) (not e!864356))))

(declare-fun lt!669321 () ListLongMap!22503)

(assert (=> b!1552573 (= res!1062966 (not (contains!10137 lt!669321 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1552574 () Bool)

(assert (=> b!1552574 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50535 _keys!618)))))

(assert (=> b!1552574 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50536 _values!470)))))

(declare-fun e!864357 () Bool)

(assert (=> b!1552574 (= e!864357 (= (apply!1140 lt!669321 (select (arr!49984 _keys!618) from!762)) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!160975 () Bool)

(assert (=> d!160975 e!864356))

(declare-fun res!1062965 () Bool)

(assert (=> d!160975 (=> (not res!1062965) (not e!864356))))

(assert (=> d!160975 (= res!1062965 (not (contains!10137 lt!669321 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!160975 (= lt!669321 e!864360)))

(declare-fun c!142979 () Bool)

(assert (=> d!160975 (= c!142979 (bvsge from!762 (size!50535 _keys!618)))))

(assert (=> d!160975 (validMask!0 mask!926)))

(assert (=> d!160975 (= (getCurrentListMapNoExtraKeys!6690 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478) lt!669321)))

(declare-fun b!1552575 () Bool)

(assert (=> b!1552575 (= e!864355 call!71322)))

(declare-fun b!1552576 () Bool)

(declare-fun e!864354 () Bool)

(assert (=> b!1552576 (= e!864356 e!864354)))

(declare-fun c!142978 () Bool)

(declare-fun e!864358 () Bool)

(assert (=> b!1552576 (= c!142978 e!864358)))

(declare-fun res!1062967 () Bool)

(assert (=> b!1552576 (=> (not res!1062967) (not e!864358))))

(assert (=> b!1552576 (= res!1062967 (bvslt from!762 (size!50535 _keys!618)))))

(declare-fun b!1552577 () Bool)

(declare-fun e!864359 () Bool)

(declare-fun isEmpty!1134 (ListLongMap!22503) Bool)

(assert (=> b!1552577 (= e!864359 (isEmpty!1134 lt!669321))))

(declare-fun b!1552578 () Bool)

(assert (=> b!1552578 (= e!864354 e!864357)))

(assert (=> b!1552578 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50535 _keys!618)))))

(declare-fun res!1062964 () Bool)

(assert (=> b!1552578 (= res!1062964 (contains!10137 lt!669321 (select (arr!49984 _keys!618) from!762)))))

(assert (=> b!1552578 (=> (not res!1062964) (not e!864357))))

(declare-fun b!1552579 () Bool)

(assert (=> b!1552579 (= e!864354 e!864359)))

(declare-fun c!142977 () Bool)

(assert (=> b!1552579 (= c!142977 (bvslt from!762 (size!50535 _keys!618)))))

(declare-fun b!1552580 () Bool)

(assert (=> b!1552580 (= e!864359 (= lt!669321 (getCurrentListMapNoExtraKeys!6690 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001) defaultEntry!478)))))

(declare-fun b!1552581 () Bool)

(assert (=> b!1552581 (= e!864360 (ListLongMap!22504 Nil!36358))))

(declare-fun b!1552582 () Bool)

(declare-fun lt!669317 () Unit!51642)

(declare-fun lt!669318 () Unit!51642)

(assert (=> b!1552582 (= lt!669317 lt!669318)))

(declare-fun lt!669316 () V!59391)

(declare-fun lt!669320 () ListLongMap!22503)

(declare-fun lt!669319 () (_ BitVec 64))

(declare-fun lt!669322 () (_ BitVec 64))

(assert (=> b!1552582 (not (contains!10137 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316)) lt!669319))))

(declare-fun addStillNotContains!522 (ListLongMap!22503 (_ BitVec 64) V!59391 (_ BitVec 64)) Unit!51642)

(assert (=> b!1552582 (= lt!669318 (addStillNotContains!522 lt!669320 lt!669322 lt!669316 lt!669319))))

(assert (=> b!1552582 (= lt!669319 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1552582 (= lt!669316 (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1552582 (= lt!669322 (select (arr!49984 _keys!618) from!762))))

(assert (=> b!1552582 (= lt!669320 call!71322)))

(assert (=> b!1552582 (= e!864355 (+!4973 call!71322 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1552583 () Bool)

(assert (=> b!1552583 (= e!864358 (validKeyInArray!0 (select (arr!49984 _keys!618) from!762)))))

(assert (=> b!1552583 (bvsge from!762 #b00000000000000000000000000000000)))

(assert (= (and d!160975 c!142979) b!1552581))

(assert (= (and d!160975 (not c!142979)) b!1552572))

(assert (= (and b!1552572 c!142976) b!1552582))

(assert (= (and b!1552572 (not c!142976)) b!1552575))

(assert (= (or b!1552582 b!1552575) bm!71319))

(assert (= (and d!160975 res!1062965) b!1552573))

(assert (= (and b!1552573 res!1062966) b!1552576))

(assert (= (and b!1552576 res!1062967) b!1552583))

(assert (= (and b!1552576 c!142978) b!1552578))

(assert (= (and b!1552576 (not c!142978)) b!1552579))

(assert (= (and b!1552578 res!1062964) b!1552574))

(assert (= (and b!1552579 c!142977) b!1552580))

(assert (= (and b!1552579 (not c!142977)) b!1552577))

(declare-fun b_lambda!24805 () Bool)

(assert (=> (not b_lambda!24805) (not b!1552574)))

(assert (=> b!1552574 t!51085))

(declare-fun b_and!51393 () Bool)

(assert (= b_and!51387 (and (=> t!51085 result!26097) b_and!51393)))

(declare-fun b_lambda!24807 () Bool)

(assert (=> (not b_lambda!24807) (not b!1552582)))

(assert (=> b!1552582 t!51085))

(declare-fun b_and!51395 () Bool)

(assert (= b_and!51393 (and (=> t!51085 result!26097) b_and!51395)))

(declare-fun m!1431071 () Bool)

(assert (=> d!160975 m!1431071))

(assert (=> d!160975 m!1430983))

(assert (=> b!1552583 m!1430943))

(assert (=> b!1552583 m!1430943))

(assert (=> b!1552583 m!1430951))

(declare-fun m!1431073 () Bool)

(assert (=> b!1552580 m!1431073))

(declare-fun m!1431075 () Bool)

(assert (=> b!1552577 m!1431075))

(assert (=> b!1552572 m!1430943))

(assert (=> b!1552572 m!1430943))

(assert (=> b!1552572 m!1430951))

(assert (=> b!1552582 m!1430943))

(declare-fun m!1431077 () Bool)

(assert (=> b!1552582 m!1431077))

(declare-fun m!1431079 () Bool)

(assert (=> b!1552582 m!1431079))

(assert (=> b!1552582 m!1431077))

(assert (=> b!1552582 m!1430941))

(assert (=> b!1552582 m!1430941))

(assert (=> b!1552582 m!1430945))

(assert (=> b!1552582 m!1430949))

(declare-fun m!1431081 () Bool)

(assert (=> b!1552582 m!1431081))

(assert (=> b!1552582 m!1430945))

(declare-fun m!1431083 () Bool)

(assert (=> b!1552582 m!1431083))

(assert (=> b!1552574 m!1430943))

(assert (=> b!1552574 m!1430943))

(declare-fun m!1431085 () Bool)

(assert (=> b!1552574 m!1431085))

(assert (=> b!1552574 m!1430941))

(assert (=> b!1552574 m!1430941))

(assert (=> b!1552574 m!1430945))

(assert (=> b!1552574 m!1430949))

(assert (=> b!1552574 m!1430945))

(assert (=> bm!71319 m!1431073))

(declare-fun m!1431087 () Bool)

(assert (=> b!1552573 m!1431087))

(assert (=> b!1552578 m!1430943))

(assert (=> b!1552578 m!1430943))

(declare-fun m!1431089 () Bool)

(assert (=> b!1552578 m!1431089))

(assert (=> b!1552435 d!160975))

(declare-fun d!160977 () Bool)

(declare-fun e!864363 () Bool)

(assert (=> d!160977 e!864363))

(declare-fun res!1062972 () Bool)

(assert (=> d!160977 (=> (not res!1062972) (not e!864363))))

(declare-fun lt!669334 () ListLongMap!22503)

(assert (=> d!160977 (= res!1062972 (contains!10137 lt!669334 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lt!669332 () List!36361)

(assert (=> d!160977 (= lt!669334 (ListLongMap!22504 lt!669332))))

(declare-fun lt!669333 () Unit!51642)

(declare-fun lt!669331 () Unit!51642)

(assert (=> d!160977 (= lt!669333 lt!669331)))

(assert (=> d!160977 (= (getValueByKey!734 lt!669332 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!808 (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lemmaContainsTupThenGetReturnValue!374 (List!36361 (_ BitVec 64) V!59391) Unit!51642)

(assert (=> d!160977 (= lt!669331 (lemmaContainsTupThenGetReturnValue!374 lt!669332 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun insertStrictlySorted!503 (List!36361 (_ BitVec 64) V!59391) List!36361)

(assert (=> d!160977 (= lt!669332 (insertStrictlySorted!503 (toList!11267 lt!669255) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160977 (= (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) lt!669334)))

(declare-fun b!1552588 () Bool)

(declare-fun res!1062973 () Bool)

(assert (=> b!1552588 (=> (not res!1062973) (not e!864363))))

(assert (=> b!1552588 (= res!1062973 (= (getValueByKey!734 (toList!11267 lt!669334) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!808 (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1552589 () Bool)

(declare-fun contains!10139 (List!36361 tuple2!24882) Bool)

(assert (=> b!1552589 (= e!864363 (contains!10139 (toList!11267 lt!669334) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(assert (= (and d!160977 res!1062972) b!1552588))

(assert (= (and b!1552588 res!1062973) b!1552589))

(declare-fun m!1431091 () Bool)

(assert (=> d!160977 m!1431091))

(declare-fun m!1431093 () Bool)

(assert (=> d!160977 m!1431093))

(declare-fun m!1431095 () Bool)

(assert (=> d!160977 m!1431095))

(declare-fun m!1431097 () Bool)

(assert (=> d!160977 m!1431097))

(declare-fun m!1431099 () Bool)

(assert (=> b!1552588 m!1431099))

(declare-fun m!1431101 () Bool)

(assert (=> b!1552589 m!1431101))

(assert (=> b!1552435 d!160977))

(declare-fun d!160979 () Bool)

(declare-fun e!864369 () Bool)

(assert (=> d!160979 e!864369))

(declare-fun res!1062976 () Bool)

(assert (=> d!160979 (=> res!1062976 e!864369)))

(declare-fun lt!669346 () Bool)

(assert (=> d!160979 (= res!1062976 (not lt!669346))))

(declare-fun lt!669345 () Bool)

(assert (=> d!160979 (= lt!669346 lt!669345)))

(declare-fun lt!669344 () Unit!51642)

(declare-fun e!864368 () Unit!51642)

(assert (=> d!160979 (= lt!669344 e!864368)))

(declare-fun c!142982 () Bool)

(assert (=> d!160979 (= c!142982 lt!669345)))

(declare-fun containsKey!752 (List!36361 (_ BitVec 64)) Bool)

(assert (=> d!160979 (= lt!669345 (containsKey!752 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762)))))

(assert (=> d!160979 (= (contains!10137 lt!669257 (select (arr!49984 _keys!618) from!762)) lt!669346)))

(declare-fun b!1552596 () Bool)

(declare-fun lt!669343 () Unit!51642)

(assert (=> b!1552596 (= e!864368 lt!669343)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!497 (List!36361 (_ BitVec 64)) Unit!51642)

(assert (=> b!1552596 (= lt!669343 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762)))))

(declare-fun isDefined!546 (Option!809) Bool)

(assert (=> b!1552596 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1552597 () Bool)

(declare-fun Unit!51648 () Unit!51642)

(assert (=> b!1552597 (= e!864368 Unit!51648)))

(declare-fun b!1552598 () Bool)

(assert (=> b!1552598 (= e!864369 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762))))))

(assert (= (and d!160979 c!142982) b!1552596))

(assert (= (and d!160979 (not c!142982)) b!1552597))

(assert (= (and d!160979 (not res!1062976)) b!1552598))

(assert (=> d!160979 m!1430943))

(declare-fun m!1431103 () Bool)

(assert (=> d!160979 m!1431103))

(assert (=> b!1552596 m!1430943))

(declare-fun m!1431105 () Bool)

(assert (=> b!1552596 m!1431105))

(assert (=> b!1552596 m!1430943))

(assert (=> b!1552596 m!1431063))

(assert (=> b!1552596 m!1431063))

(declare-fun m!1431107 () Bool)

(assert (=> b!1552596 m!1431107))

(assert (=> b!1552598 m!1430943))

(assert (=> b!1552598 m!1431063))

(assert (=> b!1552598 m!1431063))

(assert (=> b!1552598 m!1431107))

(assert (=> b!1552435 d!160979))

(declare-fun d!160981 () Bool)

(declare-fun e!864370 () Bool)

(assert (=> d!160981 e!864370))

(declare-fun res!1062977 () Bool)

(assert (=> d!160981 (=> (not res!1062977) (not e!864370))))

(declare-fun lt!669350 () ListLongMap!22503)

(assert (=> d!160981 (= res!1062977 (contains!10137 lt!669350 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun lt!669348 () List!36361)

(assert (=> d!160981 (= lt!669350 (ListLongMap!22504 lt!669348))))

(declare-fun lt!669349 () Unit!51642)

(declare-fun lt!669347 () Unit!51642)

(assert (=> d!160981 (= lt!669349 lt!669347)))

(assert (=> d!160981 (= (getValueByKey!734 lt!669348 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (Some!808 (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!160981 (= lt!669347 (lemmaContainsTupThenGetReturnValue!374 lt!669348 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!160981 (= lt!669348 (insertStrictlySorted!503 (toList!11267 lt!669255) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!160981 (= (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) lt!669350)))

(declare-fun b!1552599 () Bool)

(declare-fun res!1062978 () Bool)

(assert (=> b!1552599 (=> (not res!1062978) (not e!864370))))

(assert (=> b!1552599 (= res!1062978 (= (getValueByKey!734 (toList!11267 lt!669350) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (Some!808 (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun b!1552600 () Bool)

(assert (=> b!1552600 (= e!864370 (contains!10139 (toList!11267 lt!669350) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(assert (= (and d!160981 res!1062977) b!1552599))

(assert (= (and b!1552599 res!1062978) b!1552600))

(declare-fun m!1431109 () Bool)

(assert (=> d!160981 m!1431109))

(declare-fun m!1431111 () Bool)

(assert (=> d!160981 m!1431111))

(declare-fun m!1431113 () Bool)

(assert (=> d!160981 m!1431113))

(declare-fun m!1431115 () Bool)

(assert (=> d!160981 m!1431115))

(declare-fun m!1431117 () Bool)

(assert (=> b!1552599 m!1431117))

(declare-fun m!1431119 () Bool)

(assert (=> b!1552600 m!1431119))

(assert (=> b!1552435 d!160981))

(declare-fun d!160983 () Bool)

(declare-fun e!864372 () Bool)

(assert (=> d!160983 e!864372))

(declare-fun res!1062979 () Bool)

(assert (=> d!160983 (=> res!1062979 e!864372)))

(declare-fun lt!669354 () Bool)

(assert (=> d!160983 (= res!1062979 (not lt!669354))))

(declare-fun lt!669353 () Bool)

(assert (=> d!160983 (= lt!669354 lt!669353)))

(declare-fun lt!669352 () Unit!51642)

(declare-fun e!864371 () Unit!51642)

(assert (=> d!160983 (= lt!669352 e!864371)))

(declare-fun c!142983 () Bool)

(assert (=> d!160983 (= c!142983 lt!669353)))

(assert (=> d!160983 (= lt!669353 (containsKey!752 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762)))))

(assert (=> d!160983 (= (contains!10137 lt!669252 (select (arr!49984 _keys!618) from!762)) lt!669354)))

(declare-fun b!1552601 () Bool)

(declare-fun lt!669351 () Unit!51642)

(assert (=> b!1552601 (= e!864371 lt!669351)))

(assert (=> b!1552601 (= lt!669351 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762)))))

(assert (=> b!1552601 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1552602 () Bool)

(declare-fun Unit!51649 () Unit!51642)

(assert (=> b!1552602 (= e!864371 Unit!51649)))

(declare-fun b!1552603 () Bool)

(assert (=> b!1552603 (= e!864372 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762))))))

(assert (= (and d!160983 c!142983) b!1552601))

(assert (= (and d!160983 (not c!142983)) b!1552602))

(assert (= (and d!160983 (not res!1062979)) b!1552603))

(assert (=> d!160983 m!1430943))

(declare-fun m!1431121 () Bool)

(assert (=> d!160983 m!1431121))

(assert (=> b!1552601 m!1430943))

(declare-fun m!1431123 () Bool)

(assert (=> b!1552601 m!1431123))

(assert (=> b!1552601 m!1430943))

(declare-fun m!1431125 () Bool)

(assert (=> b!1552601 m!1431125))

(assert (=> b!1552601 m!1431125))

(declare-fun m!1431127 () Bool)

(assert (=> b!1552601 m!1431127))

(assert (=> b!1552603 m!1430943))

(assert (=> b!1552603 m!1431125))

(assert (=> b!1552603 m!1431125))

(assert (=> b!1552603 m!1431127))

(assert (=> b!1552444 d!160983))

(declare-fun d!160985 () Bool)

(declare-fun e!864374 () Bool)

(assert (=> d!160985 e!864374))

(declare-fun res!1062980 () Bool)

(assert (=> d!160985 (=> res!1062980 e!864374)))

(declare-fun lt!669358 () Bool)

(assert (=> d!160985 (= res!1062980 (not lt!669358))))

(declare-fun lt!669357 () Bool)

(assert (=> d!160985 (= lt!669358 lt!669357)))

(declare-fun lt!669356 () Unit!51642)

(declare-fun e!864373 () Unit!51642)

(assert (=> d!160985 (= lt!669356 e!864373)))

(declare-fun c!142984 () Bool)

(assert (=> d!160985 (= c!142984 lt!669357)))

(assert (=> d!160985 (= lt!669357 (containsKey!752 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!160985 (= (contains!10137 lt!669252 #b1000000000000000000000000000000000000000000000000000000000000000) lt!669358)))

(declare-fun b!1552604 () Bool)

(declare-fun lt!669355 () Unit!51642)

(assert (=> b!1552604 (= e!864373 lt!669355)))

(assert (=> b!1552604 (= lt!669355 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1552604 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1552605 () Bool)

(declare-fun Unit!51650 () Unit!51642)

(assert (=> b!1552605 (= e!864373 Unit!51650)))

(declare-fun b!1552606 () Bool)

(assert (=> b!1552606 (= e!864374 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!160985 c!142984) b!1552604))

(assert (= (and d!160985 (not c!142984)) b!1552605))

(assert (= (and d!160985 (not res!1062980)) b!1552606))

(declare-fun m!1431129 () Bool)

(assert (=> d!160985 m!1431129))

(declare-fun m!1431131 () Bool)

(assert (=> b!1552604 m!1431131))

(declare-fun m!1431133 () Bool)

(assert (=> b!1552604 m!1431133))

(assert (=> b!1552604 m!1431133))

(declare-fun m!1431135 () Bool)

(assert (=> b!1552604 m!1431135))

(assert (=> b!1552606 m!1431133))

(assert (=> b!1552606 m!1431133))

(assert (=> b!1552606 m!1431135))

(assert (=> bm!71289 d!160985))

(declare-fun d!160987 () Bool)

(assert (=> d!160987 (= (validKeyInArray!0 (select (arr!49984 _keys!618) from!762)) (and (not (= (select (arr!49984 _keys!618) from!762) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49984 _keys!618) from!762) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1552438 d!160987))

(declare-fun d!160989 () Bool)

(assert (=> d!160989 (= (validMask!0 mask!926) (and (or (= mask!926 #b00000000000000000000000000000111) (= mask!926 #b00000000000000000000000000001111) (= mask!926 #b00000000000000000000000000011111) (= mask!926 #b00000000000000000000000000111111) (= mask!926 #b00000000000000000000000001111111) (= mask!926 #b00000000000000000000000011111111) (= mask!926 #b00000000000000000000000111111111) (= mask!926 #b00000000000000000000001111111111) (= mask!926 #b00000000000000000000011111111111) (= mask!926 #b00000000000000000000111111111111) (= mask!926 #b00000000000000000001111111111111) (= mask!926 #b00000000000000000011111111111111) (= mask!926 #b00000000000000000111111111111111) (= mask!926 #b00000000000000001111111111111111) (= mask!926 #b00000000000000011111111111111111) (= mask!926 #b00000000000000111111111111111111) (= mask!926 #b00000000000001111111111111111111) (= mask!926 #b00000000000011111111111111111111) (= mask!926 #b00000000000111111111111111111111) (= mask!926 #b00000000001111111111111111111111) (= mask!926 #b00000000011111111111111111111111) (= mask!926 #b00000000111111111111111111111111) (= mask!926 #b00000001111111111111111111111111) (= mask!926 #b00000011111111111111111111111111) (= mask!926 #b00000111111111111111111111111111) (= mask!926 #b00001111111111111111111111111111) (= mask!926 #b00011111111111111111111111111111) (= mask!926 #b00111111111111111111111111111111)) (bvsle mask!926 #b00111111111111111111111111111111)))))

(assert (=> start!132340 d!160989))

(declare-fun d!160991 () Bool)

(assert (=> d!160991 (= (array_inv!38781 _keys!618) (bvsge (size!50535 _keys!618) #b00000000000000000000000000000000))))

(assert (=> start!132340 d!160991))

(declare-fun d!160993 () Bool)

(assert (=> d!160993 (= (array_inv!38782 _values!470) (bvsge (size!50536 _values!470) #b00000000000000000000000000000000))))

(assert (=> start!132340 d!160993))

(declare-fun d!160995 () Bool)

(declare-fun e!864375 () Bool)

(assert (=> d!160995 e!864375))

(declare-fun res!1062981 () Bool)

(assert (=> d!160995 (=> (not res!1062981) (not e!864375))))

(declare-fun lt!669362 () ListLongMap!22503)

(assert (=> d!160995 (= res!1062981 (contains!10137 lt!669362 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun lt!669360 () List!36361)

(assert (=> d!160995 (= lt!669362 (ListLongMap!22504 lt!669360))))

(declare-fun lt!669361 () Unit!51642)

(declare-fun lt!669359 () Unit!51642)

(assert (=> d!160995 (= lt!669361 lt!669359)))

(assert (=> d!160995 (= (getValueByKey!734 lt!669360 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (Some!808 (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!160995 (= lt!669359 (lemmaContainsTupThenGetReturnValue!374 lt!669360 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!160995 (= lt!669360 (insertStrictlySorted!503 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!160995 (= (+!4973 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)) (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!669362)))

(declare-fun b!1552607 () Bool)

(declare-fun res!1062982 () Bool)

(assert (=> b!1552607 (=> (not res!1062982) (not e!864375))))

(assert (=> b!1552607 (= res!1062982 (= (getValueByKey!734 (toList!11267 lt!669362) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (Some!808 (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun b!1552608 () Bool)

(assert (=> b!1552608 (= e!864375 (contains!10139 (toList!11267 lt!669362) (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!160995 res!1062981) b!1552607))

(assert (= (and b!1552607 res!1062982) b!1552608))

(declare-fun m!1431137 () Bool)

(assert (=> d!160995 m!1431137))

(declare-fun m!1431139 () Bool)

(assert (=> d!160995 m!1431139))

(declare-fun m!1431141 () Bool)

(assert (=> d!160995 m!1431141))

(declare-fun m!1431143 () Bool)

(assert (=> d!160995 m!1431143))

(declare-fun m!1431145 () Bool)

(assert (=> b!1552607 m!1431145))

(declare-fun m!1431147 () Bool)

(assert (=> b!1552608 m!1431147))

(assert (=> bm!71290 d!160995))

(declare-fun d!160997 () Bool)

(assert (=> d!160997 (= (apply!1140 lt!669252 #b0000000000000000000000000000000000000000000000000000000000000000) (get!26065 (getValueByKey!734 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!44594 () Bool)

(assert (= bs!44594 d!160997))

(declare-fun m!1431149 () Bool)

(assert (=> bs!44594 m!1431149))

(assert (=> bs!44594 m!1431149))

(declare-fun m!1431151 () Bool)

(assert (=> bs!44594 m!1431151))

(assert (=> b!1552453 d!160997))

(declare-fun b!1552619 () Bool)

(declare-fun e!864386 () Bool)

(declare-fun e!864384 () Bool)

(assert (=> b!1552619 (= e!864386 e!864384)))

(declare-fun res!1062990 () Bool)

(assert (=> b!1552619 (=> (not res!1062990) (not e!864384))))

(declare-fun e!864387 () Bool)

(assert (=> b!1552619 (= res!1062990 (not e!864387))))

(declare-fun res!1062989 () Bool)

(assert (=> b!1552619 (=> (not res!1062989) (not e!864387))))

(assert (=> b!1552619 (= res!1062989 (validKeyInArray!0 (select (arr!49984 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1552620 () Bool)

(declare-fun e!864385 () Bool)

(declare-fun call!71325 () Bool)

(assert (=> b!1552620 (= e!864385 call!71325)))

(declare-fun d!160999 () Bool)

(declare-fun res!1062991 () Bool)

(assert (=> d!160999 (=> res!1062991 e!864386)))

(assert (=> d!160999 (= res!1062991 (bvsge #b00000000000000000000000000000000 (size!50535 _keys!618)))))

(assert (=> d!160999 (= (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36359) e!864386)))

(declare-fun b!1552621 () Bool)

(assert (=> b!1552621 (= e!864384 e!864385)))

(declare-fun c!142987 () Bool)

(assert (=> b!1552621 (= c!142987 (validKeyInArray!0 (select (arr!49984 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun bm!71322 () Bool)

(assert (=> bm!71322 (= call!71325 (arrayNoDuplicates!0 _keys!618 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359)))))

(declare-fun b!1552622 () Bool)

(declare-fun contains!10140 (List!36362 (_ BitVec 64)) Bool)

(assert (=> b!1552622 (= e!864387 (contains!10140 Nil!36359 (select (arr!49984 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1552623 () Bool)

(assert (=> b!1552623 (= e!864385 call!71325)))

(assert (= (and d!160999 (not res!1062991)) b!1552619))

(assert (= (and b!1552619 res!1062989) b!1552622))

(assert (= (and b!1552619 res!1062990) b!1552621))

(assert (= (and b!1552621 c!142987) b!1552623))

(assert (= (and b!1552621 (not c!142987)) b!1552620))

(assert (= (or b!1552623 b!1552620) bm!71322))

(declare-fun m!1431153 () Bool)

(assert (=> b!1552619 m!1431153))

(assert (=> b!1552619 m!1431153))

(declare-fun m!1431155 () Bool)

(assert (=> b!1552619 m!1431155))

(assert (=> b!1552621 m!1431153))

(assert (=> b!1552621 m!1431153))

(assert (=> b!1552621 m!1431155))

(assert (=> bm!71322 m!1431153))

(declare-fun m!1431157 () Bool)

(assert (=> bm!71322 m!1431157))

(assert (=> b!1552622 m!1431153))

(assert (=> b!1552622 m!1431153))

(declare-fun m!1431159 () Bool)

(assert (=> b!1552622 m!1431159))

(assert (=> b!1552447 d!160999))

(declare-fun d!161001 () Bool)

(declare-fun e!864388 () Bool)

(assert (=> d!161001 e!864388))

(declare-fun res!1062992 () Bool)

(assert (=> d!161001 (=> (not res!1062992) (not e!864388))))

(declare-fun lt!669366 () ListLongMap!22503)

(assert (=> d!161001 (= res!1062992 (contains!10137 lt!669366 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lt!669364 () List!36361)

(assert (=> d!161001 (= lt!669366 (ListLongMap!22504 lt!669364))))

(declare-fun lt!669365 () Unit!51642)

(declare-fun lt!669363 () Unit!51642)

(assert (=> d!161001 (= lt!669365 lt!669363)))

(assert (=> d!161001 (= (getValueByKey!734 lt!669364 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!808 (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!161001 (= lt!669363 (lemmaContainsTupThenGetReturnValue!374 lt!669364 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!161001 (= lt!669364 (insertStrictlySorted!503 (toList!11267 call!71292) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!161001 (= (+!4973 call!71292 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) lt!669366)))

(declare-fun b!1552624 () Bool)

(declare-fun res!1062993 () Bool)

(assert (=> b!1552624 (=> (not res!1062993) (not e!864388))))

(assert (=> b!1552624 (= res!1062993 (= (getValueByKey!734 (toList!11267 lt!669366) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!808 (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1552625 () Bool)

(assert (=> b!1552625 (= e!864388 (contains!10139 (toList!11267 lt!669366) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(assert (= (and d!161001 res!1062992) b!1552624))

(assert (= (and b!1552624 res!1062993) b!1552625))

(declare-fun m!1431161 () Bool)

(assert (=> d!161001 m!1431161))

(declare-fun m!1431163 () Bool)

(assert (=> d!161001 m!1431163))

(declare-fun m!1431165 () Bool)

(assert (=> d!161001 m!1431165))

(declare-fun m!1431167 () Bool)

(assert (=> d!161001 m!1431167))

(declare-fun m!1431169 () Bool)

(assert (=> b!1552624 m!1431169))

(declare-fun m!1431171 () Bool)

(assert (=> b!1552625 m!1431171))

(assert (=> b!1552440 d!161001))

(declare-fun d!161003 () Bool)

(assert (=> d!161003 (= (apply!1140 lt!669252 #b1000000000000000000000000000000000000000000000000000000000000000) (get!26065 (getValueByKey!734 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!44595 () Bool)

(assert (= bs!44595 d!161003))

(assert (=> bs!44595 m!1431133))

(assert (=> bs!44595 m!1431133))

(declare-fun m!1431173 () Bool)

(assert (=> bs!44595 m!1431173))

(assert (=> b!1552432 d!161003))

(declare-fun d!161005 () Bool)

(assert (=> d!161005 (= (apply!1140 lt!669252 (select (arr!49984 _keys!618) from!762)) (get!26065 (getValueByKey!734 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762))))))

(declare-fun bs!44596 () Bool)

(assert (= bs!44596 d!161005))

(assert (=> bs!44596 m!1430943))

(assert (=> bs!44596 m!1431125))

(assert (=> bs!44596 m!1431125))

(declare-fun m!1431175 () Bool)

(assert (=> bs!44596 m!1431175))

(assert (=> b!1552430 d!161005))

(declare-fun d!161007 () Bool)

(declare-fun c!142990 () Bool)

(assert (=> d!161007 (= c!142990 ((_ is ValueCellFull!18195) (select (arr!49985 _values!470) from!762)))))

(declare-fun e!864391 () V!59391)

(assert (=> d!161007 (= (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)) e!864391)))

(declare-fun b!1552630 () Bool)

(declare-fun get!26066 (ValueCell!18195 V!59391) V!59391)

(assert (=> b!1552630 (= e!864391 (get!26066 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1552631 () Bool)

(declare-fun get!26067 (ValueCell!18195 V!59391) V!59391)

(assert (=> b!1552631 (= e!864391 (get!26067 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!161007 c!142990) b!1552630))

(assert (= (and d!161007 (not c!142990)) b!1552631))

(assert (=> b!1552630 m!1430941))

(assert (=> b!1552630 m!1430945))

(declare-fun m!1431177 () Bool)

(assert (=> b!1552630 m!1431177))

(assert (=> b!1552631 m!1430941))

(assert (=> b!1552631 m!1430945))

(declare-fun m!1431179 () Bool)

(assert (=> b!1552631 m!1431179))

(assert (=> b!1552430 d!161007))

(declare-fun d!161009 () Bool)

(declare-fun e!864393 () Bool)

(assert (=> d!161009 e!864393))

(declare-fun res!1062994 () Bool)

(assert (=> d!161009 (=> res!1062994 e!864393)))

(declare-fun lt!669370 () Bool)

(assert (=> d!161009 (= res!1062994 (not lt!669370))))

(declare-fun lt!669369 () Bool)

(assert (=> d!161009 (= lt!669370 lt!669369)))

(declare-fun lt!669368 () Unit!51642)

(declare-fun e!864392 () Unit!51642)

(assert (=> d!161009 (= lt!669368 e!864392)))

(declare-fun c!142991 () Bool)

(assert (=> d!161009 (= c!142991 lt!669369)))

(assert (=> d!161009 (= lt!669369 (containsKey!752 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!161009 (= (contains!10137 lt!669252 #b0000000000000000000000000000000000000000000000000000000000000000) lt!669370)))

(declare-fun b!1552632 () Bool)

(declare-fun lt!669367 () Unit!51642)

(assert (=> b!1552632 (= e!864392 lt!669367)))

(assert (=> b!1552632 (= lt!669367 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1552632 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1552633 () Bool)

(declare-fun Unit!51651 () Unit!51642)

(assert (=> b!1552633 (= e!864392 Unit!51651)))

(declare-fun b!1552634 () Bool)

(assert (=> b!1552634 (= e!864393 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!161009 c!142991) b!1552632))

(assert (= (and d!161009 (not c!142991)) b!1552633))

(assert (= (and d!161009 (not res!1062994)) b!1552634))

(declare-fun m!1431181 () Bool)

(assert (=> d!161009 m!1431181))

(declare-fun m!1431183 () Bool)

(assert (=> b!1552632 m!1431183))

(assert (=> b!1552632 m!1431149))

(assert (=> b!1552632 m!1431149))

(declare-fun m!1431185 () Bool)

(assert (=> b!1552632 m!1431185))

(assert (=> b!1552634 m!1431149))

(assert (=> b!1552634 m!1431149))

(assert (=> b!1552634 m!1431185))

(assert (=> bm!71295 d!161009))

(declare-fun b!1552643 () Bool)

(declare-fun e!864402 () Bool)

(declare-fun e!864401 () Bool)

(assert (=> b!1552643 (= e!864402 e!864401)))

(declare-fun lt!669379 () (_ BitVec 64))

(assert (=> b!1552643 (= lt!669379 (select (arr!49984 _keys!618) #b00000000000000000000000000000000))))

(declare-fun lt!669378 () Unit!51642)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!103581 (_ BitVec 64) (_ BitVec 32)) Unit!51642)

(assert (=> b!1552643 (= lt!669378 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!618 lt!669379 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!103581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1552643 (arrayContainsKey!0 _keys!618 lt!669379 #b00000000000000000000000000000000)))

(declare-fun lt!669377 () Unit!51642)

(assert (=> b!1552643 (= lt!669377 lt!669378)))

(declare-fun res!1063000 () Bool)

(declare-datatypes ((SeekEntryResult!13514 0))(
  ( (MissingZero!13514 (index!56453 (_ BitVec 32))) (Found!13514 (index!56454 (_ BitVec 32))) (Intermediate!13514 (undefined!14326 Bool) (index!56455 (_ BitVec 32)) (x!139208 (_ BitVec 32))) (Undefined!13514) (MissingVacant!13514 (index!56456 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!103581 (_ BitVec 32)) SeekEntryResult!13514)

(assert (=> b!1552643 (= res!1063000 (= (seekEntryOrOpen!0 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926) (Found!13514 #b00000000000000000000000000000000)))))

(assert (=> b!1552643 (=> (not res!1063000) (not e!864401))))

(declare-fun b!1552644 () Bool)

(declare-fun e!864400 () Bool)

(assert (=> b!1552644 (= e!864400 e!864402)))

(declare-fun c!142994 () Bool)

(assert (=> b!1552644 (= c!142994 (validKeyInArray!0 (select (arr!49984 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun bm!71325 () Bool)

(declare-fun call!71328 () Bool)

(assert (=> bm!71325 (= call!71328 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!618 mask!926))))

(declare-fun b!1552645 () Bool)

(assert (=> b!1552645 (= e!864401 call!71328)))

(declare-fun b!1552646 () Bool)

(assert (=> b!1552646 (= e!864402 call!71328)))

(declare-fun d!161011 () Bool)

(declare-fun res!1062999 () Bool)

(assert (=> d!161011 (=> res!1062999 e!864400)))

(assert (=> d!161011 (= res!1062999 (bvsge #b00000000000000000000000000000000 (size!50535 _keys!618)))))

(assert (=> d!161011 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926) e!864400)))

(assert (= (and d!161011 (not res!1062999)) b!1552644))

(assert (= (and b!1552644 c!142994) b!1552643))

(assert (= (and b!1552644 (not c!142994)) b!1552646))

(assert (= (and b!1552643 res!1063000) b!1552645))

(assert (= (or b!1552645 b!1552646) bm!71325))

(assert (=> b!1552643 m!1431153))

(declare-fun m!1431187 () Bool)

(assert (=> b!1552643 m!1431187))

(declare-fun m!1431189 () Bool)

(assert (=> b!1552643 m!1431189))

(assert (=> b!1552643 m!1431153))

(declare-fun m!1431191 () Bool)

(assert (=> b!1552643 m!1431191))

(assert (=> b!1552644 m!1431153))

(assert (=> b!1552644 m!1431153))

(assert (=> b!1552644 m!1431155))

(declare-fun m!1431193 () Bool)

(assert (=> bm!71325 m!1431193))

(assert (=> b!1552431 d!161011))

(assert (=> bm!71293 d!160975))

(declare-fun b!1552654 () Bool)

(declare-fun e!864408 () Bool)

(assert (=> b!1552654 (= e!864408 tp_is_empty!38211)))

(declare-fun b!1552653 () Bool)

(declare-fun e!864407 () Bool)

(assert (=> b!1552653 (= e!864407 tp_is_empty!38211)))

(declare-fun condMapEmpty!59038 () Bool)

(declare-fun mapDefault!59038 () ValueCell!18195)

(assert (=> mapNonEmpty!59032 (= condMapEmpty!59038 (= mapRest!59032 ((as const (Array (_ BitVec 32) ValueCell!18195)) mapDefault!59038)))))

(declare-fun mapRes!59038 () Bool)

(assert (=> mapNonEmpty!59032 (= tp!112069 (and e!864408 mapRes!59038))))

(declare-fun mapIsEmpty!59038 () Bool)

(assert (=> mapIsEmpty!59038 mapRes!59038))

(declare-fun mapNonEmpty!59038 () Bool)

(declare-fun tp!112079 () Bool)

(assert (=> mapNonEmpty!59038 (= mapRes!59038 (and tp!112079 e!864407))))

(declare-fun mapValue!59038 () ValueCell!18195)

(declare-fun mapKey!59038 () (_ BitVec 32))

(declare-fun mapRest!59038 () (Array (_ BitVec 32) ValueCell!18195))

(assert (=> mapNonEmpty!59038 (= mapRest!59032 (store mapRest!59038 mapKey!59038 mapValue!59038))))

(assert (= (and mapNonEmpty!59032 condMapEmpty!59038) mapIsEmpty!59038))

(assert (= (and mapNonEmpty!59032 (not condMapEmpty!59038)) mapNonEmpty!59038))

(assert (= (and mapNonEmpty!59038 ((_ is ValueCellFull!18195) mapValue!59038)) b!1552653))

(assert (= (and mapNonEmpty!59032 ((_ is ValueCellFull!18195) mapDefault!59038)) b!1552654))

(declare-fun m!1431195 () Bool)

(assert (=> mapNonEmpty!59038 m!1431195))

(declare-fun b_lambda!24809 () Bool)

(assert (= b_lambda!24807 (or (and start!132340 b_free!31935) b_lambda!24809)))

(declare-fun b_lambda!24811 () Bool)

(assert (= b_lambda!24805 (or (and start!132340 b_free!31935) b_lambda!24811)))

(check-sat (not bm!71319) (not b!1552624) (not b!1552606) (not b!1552600) (not b!1552621) (not bm!71325) (not b!1552631) (not b!1552577) (not d!160981) (not d!160971) (not d!160995) (not b!1552573) (not b!1552589) (not d!160983) (not b!1552607) (not d!160979) (not d!160997) (not b!1552604) (not b!1552588) (not d!160967) b_and!51395 (not b!1552622) (not b!1552632) (not b!1552601) (not b!1552634) (not b_lambda!24803) (not d!160977) (not b!1552574) (not b!1552643) (not b_lambda!24809) (not d!161003) (not b!1552598) (not b!1552580) (not b!1552603) (not d!160985) (not b!1552625) (not d!160975) (not bm!71322) (not d!160973) (not b!1552583) (not b!1552608) tp_is_empty!38211 (not d!161009) (not b!1552572) (not d!160965) (not b!1552596) (not b_lambda!24811) (not b!1552630) (not d!161005) (not b!1552599) (not b!1552619) (not b!1552582) (not d!160963) (not b_next!31935) (not b!1552578) (not mapNonEmpty!59038) (not b!1552644) (not d!160969) (not d!161001))
(check-sat b_and!51395 (not b_next!31935))
(get-model)

(declare-fun b!1552655 () Bool)

(declare-fun e!864415 () ListLongMap!22503)

(declare-fun e!864410 () ListLongMap!22503)

(assert (=> b!1552655 (= e!864415 e!864410)))

(declare-fun c!142995 () Bool)

(assert (=> b!1552655 (= c!142995 (validKeyInArray!0 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001))))))

(declare-fun call!71329 () ListLongMap!22503)

(declare-fun bm!71326 () Bool)

(assert (=> bm!71326 (= call!71329 (getCurrentListMapNoExtraKeys!6690 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!478))))

(declare-fun b!1552656 () Bool)

(declare-fun res!1063003 () Bool)

(declare-fun e!864411 () Bool)

(assert (=> b!1552656 (=> (not res!1063003) (not e!864411))))

(declare-fun lt!669385 () ListLongMap!22503)

(assert (=> b!1552656 (= res!1063003 (not (contains!10137 lt!669385 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1552657 () Bool)

(assert (=> b!1552657 (and (bvsge (bvadd from!762 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!762 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(assert (=> b!1552657 (and (bvsge (bvadd from!762 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!762 #b00000000000000000000000000000001) (size!50536 _values!470)))))

(declare-fun e!864412 () Bool)

(assert (=> b!1552657 (= e!864412 (= (apply!1140 lt!669385 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001))) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!161013 () Bool)

(assert (=> d!161013 e!864411))

(declare-fun res!1063002 () Bool)

(assert (=> d!161013 (=> (not res!1063002) (not e!864411))))

(assert (=> d!161013 (= res!1063002 (not (contains!10137 lt!669385 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161013 (= lt!669385 e!864415)))

(declare-fun c!142998 () Bool)

(assert (=> d!161013 (= c!142998 (bvsge (bvadd from!762 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(assert (=> d!161013 (validMask!0 mask!926)))

(assert (=> d!161013 (= (getCurrentListMapNoExtraKeys!6690 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001) defaultEntry!478) lt!669385)))

(declare-fun b!1552658 () Bool)

(assert (=> b!1552658 (= e!864410 call!71329)))

(declare-fun b!1552659 () Bool)

(declare-fun e!864409 () Bool)

(assert (=> b!1552659 (= e!864411 e!864409)))

(declare-fun c!142997 () Bool)

(declare-fun e!864413 () Bool)

(assert (=> b!1552659 (= c!142997 e!864413)))

(declare-fun res!1063004 () Bool)

(assert (=> b!1552659 (=> (not res!1063004) (not e!864413))))

(assert (=> b!1552659 (= res!1063004 (bvslt (bvadd from!762 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(declare-fun b!1552660 () Bool)

(declare-fun e!864414 () Bool)

(assert (=> b!1552660 (= e!864414 (isEmpty!1134 lt!669385))))

(declare-fun b!1552661 () Bool)

(assert (=> b!1552661 (= e!864409 e!864412)))

(assert (=> b!1552661 (and (bvsge (bvadd from!762 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!762 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(declare-fun res!1063001 () Bool)

(assert (=> b!1552661 (= res!1063001 (contains!10137 lt!669385 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001))))))

(assert (=> b!1552661 (=> (not res!1063001) (not e!864412))))

(declare-fun b!1552662 () Bool)

(assert (=> b!1552662 (= e!864409 e!864414)))

(declare-fun c!142996 () Bool)

(assert (=> b!1552662 (= c!142996 (bvslt (bvadd from!762 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(declare-fun b!1552663 () Bool)

(assert (=> b!1552663 (= e!864414 (= lt!669385 (getCurrentListMapNoExtraKeys!6690 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!478)))))

(declare-fun b!1552664 () Bool)

(assert (=> b!1552664 (= e!864415 (ListLongMap!22504 Nil!36358))))

(declare-fun b!1552665 () Bool)

(declare-fun lt!669381 () Unit!51642)

(declare-fun lt!669382 () Unit!51642)

(assert (=> b!1552665 (= lt!669381 lt!669382)))

(declare-fun lt!669383 () (_ BitVec 64))

(declare-fun lt!669384 () ListLongMap!22503)

(declare-fun lt!669380 () V!59391)

(declare-fun lt!669386 () (_ BitVec 64))

(assert (=> b!1552665 (not (contains!10137 (+!4973 lt!669384 (tuple2!24883 lt!669386 lt!669380)) lt!669383))))

(assert (=> b!1552665 (= lt!669382 (addStillNotContains!522 lt!669384 lt!669386 lt!669380 lt!669383))))

(assert (=> b!1552665 (= lt!669383 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1552665 (= lt!669380 (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1552665 (= lt!669386 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)))))

(assert (=> b!1552665 (= lt!669384 call!71329)))

(assert (=> b!1552665 (= e!864410 (+!4973 call!71329 (tuple2!24883 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1552666 () Bool)

(assert (=> b!1552666 (= e!864413 (validKeyInArray!0 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001))))))

(assert (=> b!1552666 (bvsge (bvadd from!762 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (= (and d!161013 c!142998) b!1552664))

(assert (= (and d!161013 (not c!142998)) b!1552655))

(assert (= (and b!1552655 c!142995) b!1552665))

(assert (= (and b!1552655 (not c!142995)) b!1552658))

(assert (= (or b!1552665 b!1552658) bm!71326))

(assert (= (and d!161013 res!1063002) b!1552656))

(assert (= (and b!1552656 res!1063003) b!1552659))

(assert (= (and b!1552659 res!1063004) b!1552666))

(assert (= (and b!1552659 c!142997) b!1552661))

(assert (= (and b!1552659 (not c!142997)) b!1552662))

(assert (= (and b!1552661 res!1063001) b!1552657))

(assert (= (and b!1552662 c!142996) b!1552663))

(assert (= (and b!1552662 (not c!142996)) b!1552660))

(declare-fun b_lambda!24813 () Bool)

(assert (=> (not b_lambda!24813) (not b!1552657)))

(assert (=> b!1552657 t!51085))

(declare-fun b_and!51397 () Bool)

(assert (= b_and!51395 (and (=> t!51085 result!26097) b_and!51397)))

(declare-fun b_lambda!24815 () Bool)

(assert (=> (not b_lambda!24815) (not b!1552665)))

(assert (=> b!1552665 t!51085))

(declare-fun b_and!51399 () Bool)

(assert (= b_and!51397 (and (=> t!51085 result!26097) b_and!51399)))

(declare-fun m!1431197 () Bool)

(assert (=> d!161013 m!1431197))

(assert (=> d!161013 m!1430983))

(declare-fun m!1431199 () Bool)

(assert (=> b!1552666 m!1431199))

(assert (=> b!1552666 m!1431199))

(declare-fun m!1431201 () Bool)

(assert (=> b!1552666 m!1431201))

(declare-fun m!1431203 () Bool)

(assert (=> b!1552663 m!1431203))

(declare-fun m!1431205 () Bool)

(assert (=> b!1552660 m!1431205))

(assert (=> b!1552655 m!1431199))

(assert (=> b!1552655 m!1431199))

(assert (=> b!1552655 m!1431201))

(assert (=> b!1552665 m!1431199))

(declare-fun m!1431207 () Bool)

(assert (=> b!1552665 m!1431207))

(declare-fun m!1431209 () Bool)

(assert (=> b!1552665 m!1431209))

(assert (=> b!1552665 m!1431207))

(declare-fun m!1431211 () Bool)

(assert (=> b!1552665 m!1431211))

(assert (=> b!1552665 m!1431211))

(assert (=> b!1552665 m!1430945))

(declare-fun m!1431213 () Bool)

(assert (=> b!1552665 m!1431213))

(declare-fun m!1431215 () Bool)

(assert (=> b!1552665 m!1431215))

(assert (=> b!1552665 m!1430945))

(declare-fun m!1431217 () Bool)

(assert (=> b!1552665 m!1431217))

(assert (=> b!1552657 m!1431199))

(assert (=> b!1552657 m!1431199))

(declare-fun m!1431219 () Bool)

(assert (=> b!1552657 m!1431219))

(assert (=> b!1552657 m!1431211))

(assert (=> b!1552657 m!1431211))

(assert (=> b!1552657 m!1430945))

(assert (=> b!1552657 m!1431213))

(assert (=> b!1552657 m!1430945))

(assert (=> bm!71326 m!1431203))

(declare-fun m!1431221 () Bool)

(assert (=> b!1552656 m!1431221))

(assert (=> b!1552661 m!1431199))

(assert (=> b!1552661 m!1431199))

(declare-fun m!1431223 () Bool)

(assert (=> b!1552661 m!1431223))

(assert (=> bm!71319 d!161013))

(declare-fun d!161015 () Bool)

(declare-fun res!1063009 () Bool)

(declare-fun e!864420 () Bool)

(assert (=> d!161015 (=> res!1063009 e!864420)))

(assert (=> d!161015 (= res!1063009 (and ((_ is Cons!36357) (toList!11267 lt!669257)) (= (_1!12451 (h!37803 (toList!11267 lt!669257))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161015 (= (containsKey!752 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762)) e!864420)))

(declare-fun b!1552671 () Bool)

(declare-fun e!864421 () Bool)

(assert (=> b!1552671 (= e!864420 e!864421)))

(declare-fun res!1063010 () Bool)

(assert (=> b!1552671 (=> (not res!1063010) (not e!864421))))

(assert (=> b!1552671 (= res!1063010 (and (or (not ((_ is Cons!36357) (toList!11267 lt!669257))) (bvsle (_1!12451 (h!37803 (toList!11267 lt!669257))) (select (arr!49984 _keys!618) from!762))) ((_ is Cons!36357) (toList!11267 lt!669257)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669257))) (select (arr!49984 _keys!618) from!762))))))

(declare-fun b!1552672 () Bool)

(assert (=> b!1552672 (= e!864421 (containsKey!752 (t!51086 (toList!11267 lt!669257)) (select (arr!49984 _keys!618) from!762)))))

(assert (= (and d!161015 (not res!1063009)) b!1552671))

(assert (= (and b!1552671 res!1063010) b!1552672))

(assert (=> b!1552672 m!1430943))

(declare-fun m!1431225 () Bool)

(assert (=> b!1552672 m!1431225))

(assert (=> d!160979 d!161015))

(declare-fun d!161017 () Bool)

(assert (=> d!161017 (= (get!26065 (getValueByKey!734 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762))) (v!21987 (getValueByKey!734 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!160965 d!161017))

(declare-fun b!1552682 () Bool)

(declare-fun e!864426 () Option!809)

(declare-fun e!864427 () Option!809)

(assert (=> b!1552682 (= e!864426 e!864427)))

(declare-fun c!143004 () Bool)

(assert (=> b!1552682 (= c!143004 (and ((_ is Cons!36357) (toList!11267 lt!669255)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669255))) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun c!143003 () Bool)

(declare-fun d!161019 () Bool)

(assert (=> d!161019 (= c!143003 (and ((_ is Cons!36357) (toList!11267 lt!669255)) (= (_1!12451 (h!37803 (toList!11267 lt!669255))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161019 (= (getValueByKey!734 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762)) e!864426)))

(declare-fun b!1552681 () Bool)

(assert (=> b!1552681 (= e!864426 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669255)))))))

(declare-fun b!1552683 () Bool)

(assert (=> b!1552683 (= e!864427 (getValueByKey!734 (t!51086 (toList!11267 lt!669255)) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1552684 () Bool)

(assert (=> b!1552684 (= e!864427 None!807)))

(assert (= (and d!161019 c!143003) b!1552681))

(assert (= (and d!161019 (not c!143003)) b!1552682))

(assert (= (and b!1552682 c!143004) b!1552683))

(assert (= (and b!1552682 (not c!143004)) b!1552684))

(assert (=> b!1552683 m!1430943))

(declare-fun m!1431227 () Bool)

(assert (=> b!1552683 m!1431227))

(assert (=> d!160965 d!161019))

(declare-fun d!161021 () Bool)

(declare-fun res!1063011 () Bool)

(declare-fun e!864428 () Bool)

(assert (=> d!161021 (=> res!1063011 e!864428)))

(assert (=> d!161021 (= res!1063011 (and ((_ is Cons!36357) (toList!11267 lt!669252)) (= (_1!12451 (h!37803 (toList!11267 lt!669252))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161021 (= (containsKey!752 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000) e!864428)))

(declare-fun b!1552685 () Bool)

(declare-fun e!864429 () Bool)

(assert (=> b!1552685 (= e!864428 e!864429)))

(declare-fun res!1063012 () Bool)

(assert (=> b!1552685 (=> (not res!1063012) (not e!864429))))

(assert (=> b!1552685 (= res!1063012 (and (or (not ((_ is Cons!36357) (toList!11267 lt!669252))) (bvsle (_1!12451 (h!37803 (toList!11267 lt!669252))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36357) (toList!11267 lt!669252)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669252))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1552686 () Bool)

(assert (=> b!1552686 (= e!864429 (containsKey!752 (t!51086 (toList!11267 lt!669252)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!161021 (not res!1063011)) b!1552685))

(assert (= (and b!1552685 res!1063012) b!1552686))

(declare-fun m!1431229 () Bool)

(assert (=> b!1552686 m!1431229))

(assert (=> d!161009 d!161021))

(declare-fun d!161023 () Bool)

(assert (=> d!161023 (arrayContainsKey!0 _keys!618 lt!669379 #b00000000000000000000000000000000)))

(declare-fun lt!669389 () Unit!51642)

(declare-fun choose!13 (array!103581 (_ BitVec 64) (_ BitVec 32)) Unit!51642)

(assert (=> d!161023 (= lt!669389 (choose!13 _keys!618 lt!669379 #b00000000000000000000000000000000))))

(assert (=> d!161023 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!161023 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!618 lt!669379 #b00000000000000000000000000000000) lt!669389)))

(declare-fun bs!44597 () Bool)

(assert (= bs!44597 d!161023))

(assert (=> bs!44597 m!1431189))

(declare-fun m!1431231 () Bool)

(assert (=> bs!44597 m!1431231))

(assert (=> b!1552643 d!161023))

(declare-fun d!161025 () Bool)

(declare-fun res!1063017 () Bool)

(declare-fun e!864434 () Bool)

(assert (=> d!161025 (=> res!1063017 e!864434)))

(assert (=> d!161025 (= res!1063017 (= (select (arr!49984 _keys!618) #b00000000000000000000000000000000) lt!669379))))

(assert (=> d!161025 (= (arrayContainsKey!0 _keys!618 lt!669379 #b00000000000000000000000000000000) e!864434)))

(declare-fun b!1552691 () Bool)

(declare-fun e!864435 () Bool)

(assert (=> b!1552691 (= e!864434 e!864435)))

(declare-fun res!1063018 () Bool)

(assert (=> b!1552691 (=> (not res!1063018) (not e!864435))))

(assert (=> b!1552691 (= res!1063018 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(declare-fun b!1552692 () Bool)

(assert (=> b!1552692 (= e!864435 (arrayContainsKey!0 _keys!618 lt!669379 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!161025 (not res!1063017)) b!1552691))

(assert (= (and b!1552691 res!1063018) b!1552692))

(assert (=> d!161025 m!1431153))

(declare-fun m!1431233 () Bool)

(assert (=> b!1552692 m!1431233))

(assert (=> b!1552643 d!161025))

(declare-fun b!1552705 () Bool)

(declare-fun c!143011 () Bool)

(declare-fun lt!669396 () (_ BitVec 64))

(assert (=> b!1552705 (= c!143011 (= lt!669396 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!864444 () SeekEntryResult!13514)

(declare-fun e!864442 () SeekEntryResult!13514)

(assert (=> b!1552705 (= e!864444 e!864442)))

(declare-fun lt!669397 () SeekEntryResult!13514)

(declare-fun b!1552706 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!103581 (_ BitVec 32)) SeekEntryResult!13514)

(assert (=> b!1552706 (= e!864442 (seekKeyOrZeroReturnVacant!0 (x!139208 lt!669397) (index!56455 lt!669397) (index!56455 lt!669397) (select (arr!49984 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926))))

(declare-fun b!1552707 () Bool)

(declare-fun e!864443 () SeekEntryResult!13514)

(assert (=> b!1552707 (= e!864443 Undefined!13514)))

(declare-fun b!1552708 () Bool)

(assert (=> b!1552708 (= e!864442 (MissingZero!13514 (index!56455 lt!669397)))))

(declare-fun b!1552709 () Bool)

(assert (=> b!1552709 (= e!864443 e!864444)))

(assert (=> b!1552709 (= lt!669396 (select (arr!49984 _keys!618) (index!56455 lt!669397)))))

(declare-fun c!143013 () Bool)

(assert (=> b!1552709 (= c!143013 (= lt!669396 (select (arr!49984 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1552710 () Bool)

(assert (=> b!1552710 (= e!864444 (Found!13514 (index!56455 lt!669397)))))

(declare-fun d!161027 () Bool)

(declare-fun lt!669398 () SeekEntryResult!13514)

(assert (=> d!161027 (and (or ((_ is Undefined!13514) lt!669398) (not ((_ is Found!13514) lt!669398)) (and (bvsge (index!56454 lt!669398) #b00000000000000000000000000000000) (bvslt (index!56454 lt!669398) (size!50535 _keys!618)))) (or ((_ is Undefined!13514) lt!669398) ((_ is Found!13514) lt!669398) (not ((_ is MissingZero!13514) lt!669398)) (and (bvsge (index!56453 lt!669398) #b00000000000000000000000000000000) (bvslt (index!56453 lt!669398) (size!50535 _keys!618)))) (or ((_ is Undefined!13514) lt!669398) ((_ is Found!13514) lt!669398) ((_ is MissingZero!13514) lt!669398) (not ((_ is MissingVacant!13514) lt!669398)) (and (bvsge (index!56456 lt!669398) #b00000000000000000000000000000000) (bvslt (index!56456 lt!669398) (size!50535 _keys!618)))) (or ((_ is Undefined!13514) lt!669398) (ite ((_ is Found!13514) lt!669398) (= (select (arr!49984 _keys!618) (index!56454 lt!669398)) (select (arr!49984 _keys!618) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!13514) lt!669398) (= (select (arr!49984 _keys!618) (index!56453 lt!669398)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13514) lt!669398) (= (select (arr!49984 _keys!618) (index!56456 lt!669398)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!161027 (= lt!669398 e!864443)))

(declare-fun c!143012 () Bool)

(assert (=> d!161027 (= c!143012 (and ((_ is Intermediate!13514) lt!669397) (undefined!14326 lt!669397)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!103581 (_ BitVec 32)) SeekEntryResult!13514)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!161027 (= lt!669397 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) mask!926) (select (arr!49984 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926))))

(assert (=> d!161027 (validMask!0 mask!926)))

(assert (=> d!161027 (= (seekEntryOrOpen!0 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926) lt!669398)))

(assert (= (and d!161027 c!143012) b!1552707))

(assert (= (and d!161027 (not c!143012)) b!1552709))

(assert (= (and b!1552709 c!143013) b!1552710))

(assert (= (and b!1552709 (not c!143013)) b!1552705))

(assert (= (and b!1552705 c!143011) b!1552708))

(assert (= (and b!1552705 (not c!143011)) b!1552706))

(assert (=> b!1552706 m!1431153))

(declare-fun m!1431235 () Bool)

(assert (=> b!1552706 m!1431235))

(declare-fun m!1431237 () Bool)

(assert (=> b!1552709 m!1431237))

(declare-fun m!1431239 () Bool)

(assert (=> d!161027 m!1431239))

(assert (=> d!161027 m!1431153))

(declare-fun m!1431241 () Bool)

(assert (=> d!161027 m!1431241))

(assert (=> d!161027 m!1431153))

(assert (=> d!161027 m!1431239))

(declare-fun m!1431243 () Bool)

(assert (=> d!161027 m!1431243))

(declare-fun m!1431245 () Bool)

(assert (=> d!161027 m!1431245))

(declare-fun m!1431247 () Bool)

(assert (=> d!161027 m!1431247))

(assert (=> d!161027 m!1430983))

(assert (=> b!1552643 d!161027))

(declare-fun d!161029 () Bool)

(declare-fun e!864446 () Bool)

(assert (=> d!161029 e!864446))

(declare-fun res!1063019 () Bool)

(assert (=> d!161029 (=> res!1063019 e!864446)))

(declare-fun lt!669402 () Bool)

(assert (=> d!161029 (= res!1063019 (not lt!669402))))

(declare-fun lt!669401 () Bool)

(assert (=> d!161029 (= lt!669402 lt!669401)))

(declare-fun lt!669400 () Unit!51642)

(declare-fun e!864445 () Unit!51642)

(assert (=> d!161029 (= lt!669400 e!864445)))

(declare-fun c!143014 () Bool)

(assert (=> d!161029 (= c!143014 lt!669401)))

(assert (=> d!161029 (= lt!669401 (containsKey!752 (toList!11267 lt!669362) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161029 (= (contains!10137 lt!669362 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) lt!669402)))

(declare-fun b!1552711 () Bool)

(declare-fun lt!669399 () Unit!51642)

(assert (=> b!1552711 (= e!864445 lt!669399)))

(assert (=> b!1552711 (= lt!669399 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669362) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> b!1552711 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669362) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1552712 () Bool)

(declare-fun Unit!51652 () Unit!51642)

(assert (=> b!1552712 (= e!864445 Unit!51652)))

(declare-fun b!1552713 () Bool)

(assert (=> b!1552713 (= e!864446 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669362) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(assert (= (and d!161029 c!143014) b!1552711))

(assert (= (and d!161029 (not c!143014)) b!1552712))

(assert (= (and d!161029 (not res!1063019)) b!1552713))

(declare-fun m!1431249 () Bool)

(assert (=> d!161029 m!1431249))

(declare-fun m!1431251 () Bool)

(assert (=> b!1552711 m!1431251))

(assert (=> b!1552711 m!1431145))

(assert (=> b!1552711 m!1431145))

(declare-fun m!1431253 () Bool)

(assert (=> b!1552711 m!1431253))

(assert (=> b!1552713 m!1431145))

(assert (=> b!1552713 m!1431145))

(assert (=> b!1552713 m!1431253))

(assert (=> d!160995 d!161029))

(declare-fun b!1552715 () Bool)

(declare-fun e!864447 () Option!809)

(declare-fun e!864448 () Option!809)

(assert (=> b!1552715 (= e!864447 e!864448)))

(declare-fun c!143016 () Bool)

(assert (=> b!1552715 (= c!143016 (and ((_ is Cons!36357) lt!669360) (not (= (_1!12451 (h!37803 lt!669360)) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))))

(declare-fun d!161031 () Bool)

(declare-fun c!143015 () Bool)

(assert (=> d!161031 (= c!143015 (and ((_ is Cons!36357) lt!669360) (= (_1!12451 (h!37803 lt!669360)) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(assert (=> d!161031 (= (getValueByKey!734 lt!669360 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) e!864447)))

(declare-fun b!1552714 () Bool)

(assert (=> b!1552714 (= e!864447 (Some!808 (_2!12451 (h!37803 lt!669360))))))

(declare-fun b!1552716 () Bool)

(assert (=> b!1552716 (= e!864448 (getValueByKey!734 (t!51086 lt!669360) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1552717 () Bool)

(assert (=> b!1552717 (= e!864448 None!807)))

(assert (= (and d!161031 c!143015) b!1552714))

(assert (= (and d!161031 (not c!143015)) b!1552715))

(assert (= (and b!1552715 c!143016) b!1552716))

(assert (= (and b!1552715 (not c!143016)) b!1552717))

(declare-fun m!1431255 () Bool)

(assert (=> b!1552716 m!1431255))

(assert (=> d!160995 d!161031))

(declare-fun d!161033 () Bool)

(assert (=> d!161033 (= (getValueByKey!734 lt!669360 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (Some!808 (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun lt!669405 () Unit!51642)

(declare-fun choose!2044 (List!36361 (_ BitVec 64) V!59391) Unit!51642)

(assert (=> d!161033 (= lt!669405 (choose!2044 lt!669360 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun e!864451 () Bool)

(assert (=> d!161033 e!864451))

(declare-fun res!1063024 () Bool)

(assert (=> d!161033 (=> (not res!1063024) (not e!864451))))

(declare-fun isStrictlySorted!883 (List!36361) Bool)

(assert (=> d!161033 (= res!1063024 (isStrictlySorted!883 lt!669360))))

(assert (=> d!161033 (= (lemmaContainsTupThenGetReturnValue!374 lt!669360 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) lt!669405)))

(declare-fun b!1552722 () Bool)

(declare-fun res!1063025 () Bool)

(assert (=> b!1552722 (=> (not res!1063025) (not e!864451))))

(assert (=> b!1552722 (= res!1063025 (containsKey!752 lt!669360 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1552723 () Bool)

(assert (=> b!1552723 (= e!864451 (contains!10139 lt!669360 (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(assert (= (and d!161033 res!1063024) b!1552722))

(assert (= (and b!1552722 res!1063025) b!1552723))

(assert (=> d!161033 m!1431139))

(declare-fun m!1431257 () Bool)

(assert (=> d!161033 m!1431257))

(declare-fun m!1431259 () Bool)

(assert (=> d!161033 m!1431259))

(declare-fun m!1431261 () Bool)

(assert (=> b!1552722 m!1431261))

(declare-fun m!1431263 () Bool)

(assert (=> b!1552723 m!1431263))

(assert (=> d!160995 d!161033))

(declare-fun b!1552744 () Bool)

(declare-fun c!143028 () Bool)

(assert (=> b!1552744 (= c!143028 (and ((_ is Cons!36357) (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))) (bvsgt (_1!12451 (h!37803 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun e!864462 () List!36361)

(declare-fun e!864465 () List!36361)

(assert (=> b!1552744 (= e!864462 e!864465)))

(declare-fun e!864464 () Bool)

(declare-fun lt!669408 () List!36361)

(declare-fun b!1552745 () Bool)

(assert (=> b!1552745 (= e!864464 (contains!10139 lt!669408 (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun b!1552746 () Bool)

(declare-fun e!864466 () List!36361)

(assert (=> b!1552746 (= e!864466 e!864462)))

(declare-fun c!143025 () Bool)

(assert (=> b!1552746 (= c!143025 (and ((_ is Cons!36357) (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))) (= (_1!12451 (h!37803 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun bm!71333 () Bool)

(declare-fun c!143027 () Bool)

(declare-fun call!71336 () List!36361)

(declare-fun e!864463 () List!36361)

(declare-fun $colon$colon!946 (List!36361 tuple2!24882) List!36361)

(assert (=> bm!71333 (= call!71336 ($colon$colon!946 e!864463 (ite c!143027 (h!37803 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))) (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))))

(declare-fun c!143026 () Bool)

(assert (=> bm!71333 (= c!143026 c!143027)))

(declare-fun b!1552747 () Bool)

(assert (=> b!1552747 (= e!864466 call!71336)))

(declare-fun b!1552748 () Bool)

(declare-fun call!71337 () List!36361)

(assert (=> b!1552748 (= e!864465 call!71337)))

(declare-fun b!1552749 () Bool)

(declare-fun call!71338 () List!36361)

(assert (=> b!1552749 (= e!864462 call!71338)))

(declare-fun d!161035 () Bool)

(assert (=> d!161035 e!864464))

(declare-fun res!1063030 () Bool)

(assert (=> d!161035 (=> (not res!1063030) (not e!864464))))

(assert (=> d!161035 (= res!1063030 (isStrictlySorted!883 lt!669408))))

(assert (=> d!161035 (= lt!669408 e!864466)))

(assert (=> d!161035 (= c!143027 (and ((_ is Cons!36357) (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))) (bvslt (_1!12451 (h!37803 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(assert (=> d!161035 (isStrictlySorted!883 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))))

(assert (=> d!161035 (= (insertStrictlySorted!503 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) lt!669408)))

(declare-fun b!1552750 () Bool)

(assert (=> b!1552750 (= e!864463 (insertStrictlySorted!503 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1552751 () Bool)

(assert (=> b!1552751 (= e!864463 (ite c!143025 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))) (ite c!143028 (Cons!36357 (h!37803 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))) (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))) Nil!36358)))))

(declare-fun bm!71334 () Bool)

(assert (=> bm!71334 (= call!71338 call!71336)))

(declare-fun b!1552752 () Bool)

(assert (=> b!1552752 (= e!864465 call!71337)))

(declare-fun b!1552753 () Bool)

(declare-fun res!1063031 () Bool)

(assert (=> b!1552753 (=> (not res!1063031) (not e!864464))))

(assert (=> b!1552753 (= res!1063031 (containsKey!752 lt!669408 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun bm!71335 () Bool)

(assert (=> bm!71335 (= call!71337 call!71338)))

(assert (= (and d!161035 c!143027) b!1552747))

(assert (= (and d!161035 (not c!143027)) b!1552746))

(assert (= (and b!1552746 c!143025) b!1552749))

(assert (= (and b!1552746 (not c!143025)) b!1552744))

(assert (= (and b!1552744 c!143028) b!1552748))

(assert (= (and b!1552744 (not c!143028)) b!1552752))

(assert (= (or b!1552748 b!1552752) bm!71335))

(assert (= (or b!1552749 bm!71335) bm!71334))

(assert (= (or b!1552747 bm!71334) bm!71333))

(assert (= (and bm!71333 c!143026) b!1552750))

(assert (= (and bm!71333 (not c!143026)) b!1552751))

(assert (= (and d!161035 res!1063030) b!1552753))

(assert (= (and b!1552753 res!1063031) b!1552745))

(declare-fun m!1431265 () Bool)

(assert (=> bm!71333 m!1431265))

(declare-fun m!1431267 () Bool)

(assert (=> d!161035 m!1431267))

(declare-fun m!1431269 () Bool)

(assert (=> d!161035 m!1431269))

(declare-fun m!1431271 () Bool)

(assert (=> b!1552750 m!1431271))

(declare-fun m!1431273 () Bool)

(assert (=> b!1552745 m!1431273))

(declare-fun m!1431275 () Bool)

(assert (=> b!1552753 m!1431275))

(assert (=> d!160995 d!161035))

(declare-fun b!1552754 () Bool)

(declare-fun e!864469 () Bool)

(declare-fun e!864468 () Bool)

(assert (=> b!1552754 (= e!864469 e!864468)))

(declare-fun lt!669411 () (_ BitVec 64))

(assert (=> b!1552754 (= lt!669411 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!669410 () Unit!51642)

(assert (=> b!1552754 (= lt!669410 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!618 lt!669411 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1552754 (arrayContainsKey!0 _keys!618 lt!669411 #b00000000000000000000000000000000)))

(declare-fun lt!669409 () Unit!51642)

(assert (=> b!1552754 (= lt!669409 lt!669410)))

(declare-fun res!1063033 () Bool)

(assert (=> b!1552754 (= res!1063033 (= (seekEntryOrOpen!0 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!618 mask!926) (Found!13514 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1552754 (=> (not res!1063033) (not e!864468))))

(declare-fun b!1552755 () Bool)

(declare-fun e!864467 () Bool)

(assert (=> b!1552755 (= e!864467 e!864469)))

(declare-fun c!143029 () Bool)

(assert (=> b!1552755 (= c!143029 (validKeyInArray!0 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!71336 () Bool)

(declare-fun call!71339 () Bool)

(assert (=> bm!71336 (= call!71339 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!618 mask!926))))

(declare-fun b!1552756 () Bool)

(assert (=> b!1552756 (= e!864468 call!71339)))

(declare-fun b!1552757 () Bool)

(assert (=> b!1552757 (= e!864469 call!71339)))

(declare-fun d!161037 () Bool)

(declare-fun res!1063032 () Bool)

(assert (=> d!161037 (=> res!1063032 e!864467)))

(assert (=> d!161037 (= res!1063032 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(assert (=> d!161037 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!618 mask!926) e!864467)))

(assert (= (and d!161037 (not res!1063032)) b!1552755))

(assert (= (and b!1552755 c!143029) b!1552754))

(assert (= (and b!1552755 (not c!143029)) b!1552757))

(assert (= (and b!1552754 res!1063033) b!1552756))

(assert (= (or b!1552756 b!1552757) bm!71336))

(declare-fun m!1431277 () Bool)

(assert (=> b!1552754 m!1431277))

(declare-fun m!1431279 () Bool)

(assert (=> b!1552754 m!1431279))

(declare-fun m!1431281 () Bool)

(assert (=> b!1552754 m!1431281))

(assert (=> b!1552754 m!1431277))

(declare-fun m!1431283 () Bool)

(assert (=> b!1552754 m!1431283))

(assert (=> b!1552755 m!1431277))

(assert (=> b!1552755 m!1431277))

(declare-fun m!1431285 () Bool)

(assert (=> b!1552755 m!1431285))

(declare-fun m!1431287 () Bool)

(assert (=> bm!71336 m!1431287))

(assert (=> bm!71325 d!161037))

(declare-fun d!161039 () Bool)

(assert (=> d!161039 (= (apply!1140 lt!669321 (select (arr!49984 _keys!618) from!762)) (get!26065 (getValueByKey!734 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762))))))

(declare-fun bs!44598 () Bool)

(assert (= bs!44598 d!161039))

(assert (=> bs!44598 m!1430943))

(declare-fun m!1431289 () Bool)

(assert (=> bs!44598 m!1431289))

(assert (=> bs!44598 m!1431289))

(declare-fun m!1431291 () Bool)

(assert (=> bs!44598 m!1431291))

(assert (=> b!1552574 d!161039))

(assert (=> b!1552574 d!161007))

(declare-fun d!161041 () Bool)

(declare-fun e!864471 () Bool)

(assert (=> d!161041 e!864471))

(declare-fun res!1063034 () Bool)

(assert (=> d!161041 (=> res!1063034 e!864471)))

(declare-fun lt!669415 () Bool)

(assert (=> d!161041 (= res!1063034 (not lt!669415))))

(declare-fun lt!669414 () Bool)

(assert (=> d!161041 (= lt!669415 lt!669414)))

(declare-fun lt!669413 () Unit!51642)

(declare-fun e!864470 () Unit!51642)

(assert (=> d!161041 (= lt!669413 e!864470)))

(declare-fun c!143030 () Bool)

(assert (=> d!161041 (= c!143030 lt!669414)))

(assert (=> d!161041 (= lt!669414 (containsKey!752 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762)))))

(assert (=> d!161041 (= (contains!10137 lt!669321 (select (arr!49984 _keys!618) from!762)) lt!669415)))

(declare-fun b!1552758 () Bool)

(declare-fun lt!669412 () Unit!51642)

(assert (=> b!1552758 (= e!864470 lt!669412)))

(assert (=> b!1552758 (= lt!669412 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762)))))

(assert (=> b!1552758 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1552759 () Bool)

(declare-fun Unit!51653 () Unit!51642)

(assert (=> b!1552759 (= e!864470 Unit!51653)))

(declare-fun b!1552760 () Bool)

(assert (=> b!1552760 (= e!864471 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762))))))

(assert (= (and d!161041 c!143030) b!1552758))

(assert (= (and d!161041 (not c!143030)) b!1552759))

(assert (= (and d!161041 (not res!1063034)) b!1552760))

(assert (=> d!161041 m!1430943))

(declare-fun m!1431293 () Bool)

(assert (=> d!161041 m!1431293))

(assert (=> b!1552758 m!1430943))

(declare-fun m!1431295 () Bool)

(assert (=> b!1552758 m!1431295))

(assert (=> b!1552758 m!1430943))

(assert (=> b!1552758 m!1431289))

(assert (=> b!1552758 m!1431289))

(declare-fun m!1431297 () Bool)

(assert (=> b!1552758 m!1431297))

(assert (=> b!1552760 m!1430943))

(assert (=> b!1552760 m!1431289))

(assert (=> b!1552760 m!1431289))

(assert (=> b!1552760 m!1431297))

(assert (=> b!1552578 d!161041))

(declare-fun d!161043 () Bool)

(declare-fun e!864473 () Bool)

(assert (=> d!161043 e!864473))

(declare-fun res!1063035 () Bool)

(assert (=> d!161043 (=> res!1063035 e!864473)))

(declare-fun lt!669419 () Bool)

(assert (=> d!161043 (= res!1063035 (not lt!669419))))

(declare-fun lt!669418 () Bool)

(assert (=> d!161043 (= lt!669419 lt!669418)))

(declare-fun lt!669417 () Unit!51642)

(declare-fun e!864472 () Unit!51642)

(assert (=> d!161043 (= lt!669417 e!864472)))

(declare-fun c!143031 () Bool)

(assert (=> d!161043 (= c!143031 lt!669418)))

(assert (=> d!161043 (= lt!669418 (containsKey!752 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762)))))

(assert (=> d!161043 (= (contains!10137 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49984 _keys!618) from!762)) lt!669419)))

(declare-fun b!1552761 () Bool)

(declare-fun lt!669416 () Unit!51642)

(assert (=> b!1552761 (= e!864472 lt!669416)))

(assert (=> b!1552761 (= lt!669416 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762)))))

(assert (=> b!1552761 (isDefined!546 (getValueByKey!734 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1552762 () Bool)

(declare-fun Unit!51654 () Unit!51642)

(assert (=> b!1552762 (= e!864472 Unit!51654)))

(declare-fun b!1552763 () Bool)

(assert (=> b!1552763 (= e!864473 (isDefined!546 (getValueByKey!734 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762))))))

(assert (= (and d!161043 c!143031) b!1552761))

(assert (= (and d!161043 (not c!143031)) b!1552762))

(assert (= (and d!161043 (not res!1063035)) b!1552763))

(assert (=> d!161043 m!1430943))

(declare-fun m!1431299 () Bool)

(assert (=> d!161043 m!1431299))

(assert (=> b!1552761 m!1430943))

(declare-fun m!1431301 () Bool)

(assert (=> b!1552761 m!1431301))

(assert (=> b!1552761 m!1430943))

(declare-fun m!1431303 () Bool)

(assert (=> b!1552761 m!1431303))

(assert (=> b!1552761 m!1431303))

(declare-fun m!1431305 () Bool)

(assert (=> b!1552761 m!1431305))

(assert (=> b!1552763 m!1430943))

(assert (=> b!1552763 m!1431303))

(assert (=> b!1552763 m!1431303))

(assert (=> b!1552763 m!1431305))

(assert (=> d!160973 d!161043))

(assert (=> d!160973 d!160981))

(declare-fun d!161045 () Bool)

(assert (=> d!161045 (contains!10137 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49984 _keys!618) from!762))))

(assert (=> d!161045 true))

(declare-fun _$35!462 () Unit!51642)

(assert (=> d!161045 (= (choose!2043 lt!669255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49984 _keys!618) from!762)) _$35!462)))

(declare-fun bs!44599 () Bool)

(assert (= bs!44599 d!161045))

(assert (=> bs!44599 m!1430971))

(assert (=> bs!44599 m!1430971))

(assert (=> bs!44599 m!1430943))

(assert (=> bs!44599 m!1431067))

(assert (=> d!160973 d!161045))

(declare-fun d!161047 () Bool)

(declare-fun e!864475 () Bool)

(assert (=> d!161047 e!864475))

(declare-fun res!1063036 () Bool)

(assert (=> d!161047 (=> res!1063036 e!864475)))

(declare-fun lt!669423 () Bool)

(assert (=> d!161047 (= res!1063036 (not lt!669423))))

(declare-fun lt!669422 () Bool)

(assert (=> d!161047 (= lt!669423 lt!669422)))

(declare-fun lt!669421 () Unit!51642)

(declare-fun e!864474 () Unit!51642)

(assert (=> d!161047 (= lt!669421 e!864474)))

(declare-fun c!143032 () Bool)

(assert (=> d!161047 (= c!143032 lt!669422)))

(assert (=> d!161047 (= lt!669422 (containsKey!752 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762)))))

(assert (=> d!161047 (= (contains!10137 lt!669255 (select (arr!49984 _keys!618) from!762)) lt!669423)))

(declare-fun b!1552765 () Bool)

(declare-fun lt!669420 () Unit!51642)

(assert (=> b!1552765 (= e!864474 lt!669420)))

(assert (=> b!1552765 (= lt!669420 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762)))))

(assert (=> b!1552765 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1552766 () Bool)

(declare-fun Unit!51655 () Unit!51642)

(assert (=> b!1552766 (= e!864474 Unit!51655)))

(declare-fun b!1552767 () Bool)

(assert (=> b!1552767 (= e!864475 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762))))))

(assert (= (and d!161047 c!143032) b!1552765))

(assert (= (and d!161047 (not c!143032)) b!1552766))

(assert (= (and d!161047 (not res!1063036)) b!1552767))

(assert (=> d!161047 m!1430943))

(declare-fun m!1431307 () Bool)

(assert (=> d!161047 m!1431307))

(assert (=> b!1552765 m!1430943))

(declare-fun m!1431309 () Bool)

(assert (=> b!1552765 m!1431309))

(assert (=> b!1552765 m!1430943))

(assert (=> b!1552765 m!1431051))

(assert (=> b!1552765 m!1431051))

(declare-fun m!1431311 () Bool)

(assert (=> b!1552765 m!1431311))

(assert (=> b!1552767 m!1430943))

(assert (=> b!1552767 m!1431051))

(assert (=> b!1552767 m!1431051))

(assert (=> b!1552767 m!1431311))

(assert (=> d!160973 d!161047))

(declare-fun d!161049 () Bool)

(assert (=> d!161049 (= (get!26065 (getValueByKey!734 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!21987 (getValueByKey!734 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!160997 d!161049))

(declare-fun b!1552769 () Bool)

(declare-fun e!864476 () Option!809)

(declare-fun e!864477 () Option!809)

(assert (=> b!1552769 (= e!864476 e!864477)))

(declare-fun c!143034 () Bool)

(assert (=> b!1552769 (= c!143034 (and ((_ is Cons!36357) (toList!11267 lt!669252)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669252))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!161051 () Bool)

(declare-fun c!143033 () Bool)

(assert (=> d!161051 (= c!143033 (and ((_ is Cons!36357) (toList!11267 lt!669252)) (= (_1!12451 (h!37803 (toList!11267 lt!669252))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161051 (= (getValueByKey!734 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000) e!864476)))

(declare-fun b!1552768 () Bool)

(assert (=> b!1552768 (= e!864476 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669252)))))))

(declare-fun b!1552770 () Bool)

(assert (=> b!1552770 (= e!864477 (getValueByKey!734 (t!51086 (toList!11267 lt!669252)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1552771 () Bool)

(assert (=> b!1552771 (= e!864477 None!807)))

(assert (= (and d!161051 c!143033) b!1552768))

(assert (= (and d!161051 (not c!143033)) b!1552769))

(assert (= (and b!1552769 c!143034) b!1552770))

(assert (= (and b!1552769 (not c!143034)) b!1552771))

(declare-fun m!1431313 () Bool)

(assert (=> b!1552770 m!1431313))

(assert (=> d!160997 d!161051))

(assert (=> b!1552580 d!161013))

(assert (=> d!160969 d!160965))

(declare-fun d!161053 () Bool)

(assert (=> d!161053 (= (apply!1140 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49984 _keys!618) from!762)) (get!26065 (getValueByKey!734 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762))))))

(declare-fun bs!44600 () Bool)

(assert (= bs!44600 d!161053))

(assert (=> bs!44600 m!1430943))

(assert (=> bs!44600 m!1431303))

(assert (=> bs!44600 m!1431303))

(declare-fun m!1431315 () Bool)

(assert (=> bs!44600 m!1431315))

(assert (=> d!160969 d!161053))

(assert (=> d!160969 d!160981))

(assert (=> d!160969 d!161047))

(declare-fun d!161055 () Bool)

(assert (=> d!161055 (= (apply!1140 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49984 _keys!618) from!762)) (apply!1140 lt!669255 (select (arr!49984 _keys!618) from!762)))))

(assert (=> d!161055 true))

(declare-fun _$34!1188 () Unit!51642)

(assert (=> d!161055 (= (choose!2042 lt!669255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49984 _keys!618) from!762)) _$34!1188)))

(declare-fun bs!44601 () Bool)

(assert (= bs!44601 d!161055))

(assert (=> bs!44601 m!1430971))

(assert (=> bs!44601 m!1430971))

(assert (=> bs!44601 m!1430943))

(assert (=> bs!44601 m!1431061))

(assert (=> bs!44601 m!1430943))

(assert (=> bs!44601 m!1430975))

(assert (=> d!160969 d!161055))

(declare-fun b!1552774 () Bool)

(declare-fun e!864478 () Option!809)

(declare-fun e!864479 () Option!809)

(assert (=> b!1552774 (= e!864478 e!864479)))

(declare-fun c!143036 () Bool)

(assert (=> b!1552774 (= c!143036 (and ((_ is Cons!36357) (toList!11267 lt!669334)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669334))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun d!161057 () Bool)

(declare-fun c!143035 () Bool)

(assert (=> d!161057 (= c!143035 (and ((_ is Cons!36357) (toList!11267 lt!669334)) (= (_1!12451 (h!37803 (toList!11267 lt!669334))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161057 (= (getValueByKey!734 (toList!11267 lt!669334) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864478)))

(declare-fun b!1552773 () Bool)

(assert (=> b!1552773 (= e!864478 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669334)))))))

(declare-fun b!1552775 () Bool)

(assert (=> b!1552775 (= e!864479 (getValueByKey!734 (t!51086 (toList!11267 lt!669334)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552776 () Bool)

(assert (=> b!1552776 (= e!864479 None!807)))

(assert (= (and d!161057 c!143035) b!1552773))

(assert (= (and d!161057 (not c!143035)) b!1552774))

(assert (= (and b!1552774 c!143036) b!1552775))

(assert (= (and b!1552774 (not c!143036)) b!1552776))

(declare-fun m!1431317 () Bool)

(assert (=> b!1552775 m!1431317))

(assert (=> b!1552588 d!161057))

(declare-fun d!161059 () Bool)

(declare-fun e!864481 () Bool)

(assert (=> d!161059 e!864481))

(declare-fun res!1063037 () Bool)

(assert (=> d!161059 (=> res!1063037 e!864481)))

(declare-fun lt!669427 () Bool)

(assert (=> d!161059 (= res!1063037 (not lt!669427))))

(declare-fun lt!669426 () Bool)

(assert (=> d!161059 (= lt!669427 lt!669426)))

(declare-fun lt!669425 () Unit!51642)

(declare-fun e!864480 () Unit!51642)

(assert (=> d!161059 (= lt!669425 e!864480)))

(declare-fun c!143037 () Bool)

(assert (=> d!161059 (= c!143037 lt!669426)))

(assert (=> d!161059 (= lt!669426 (containsKey!752 (toList!11267 lt!669366) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!161059 (= (contains!10137 lt!669366 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!669427)))

(declare-fun b!1552777 () Bool)

(declare-fun lt!669424 () Unit!51642)

(assert (=> b!1552777 (= e!864480 lt!669424)))

(assert (=> b!1552777 (= lt!669424 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669366) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> b!1552777 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669366) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552778 () Bool)

(declare-fun Unit!51656 () Unit!51642)

(assert (=> b!1552778 (= e!864480 Unit!51656)))

(declare-fun b!1552779 () Bool)

(assert (=> b!1552779 (= e!864481 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669366) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (= (and d!161059 c!143037) b!1552777))

(assert (= (and d!161059 (not c!143037)) b!1552778))

(assert (= (and d!161059 (not res!1063037)) b!1552779))

(declare-fun m!1431319 () Bool)

(assert (=> d!161059 m!1431319))

(declare-fun m!1431321 () Bool)

(assert (=> b!1552777 m!1431321))

(assert (=> b!1552777 m!1431169))

(assert (=> b!1552777 m!1431169))

(declare-fun m!1431323 () Bool)

(assert (=> b!1552777 m!1431323))

(assert (=> b!1552779 m!1431169))

(assert (=> b!1552779 m!1431169))

(assert (=> b!1552779 m!1431323))

(assert (=> d!161001 d!161059))

(declare-fun b!1552781 () Bool)

(declare-fun e!864482 () Option!809)

(declare-fun e!864483 () Option!809)

(assert (=> b!1552781 (= e!864482 e!864483)))

(declare-fun c!143039 () Bool)

(assert (=> b!1552781 (= c!143039 (and ((_ is Cons!36357) lt!669364) (not (= (_1!12451 (h!37803 lt!669364)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun d!161061 () Bool)

(declare-fun c!143038 () Bool)

(assert (=> d!161061 (= c!143038 (and ((_ is Cons!36357) lt!669364) (= (_1!12451 (h!37803 lt!669364)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161061 (= (getValueByKey!734 lt!669364 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864482)))

(declare-fun b!1552780 () Bool)

(assert (=> b!1552780 (= e!864482 (Some!808 (_2!12451 (h!37803 lt!669364))))))

(declare-fun b!1552782 () Bool)

(assert (=> b!1552782 (= e!864483 (getValueByKey!734 (t!51086 lt!669364) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552783 () Bool)

(assert (=> b!1552783 (= e!864483 None!807)))

(assert (= (and d!161061 c!143038) b!1552780))

(assert (= (and d!161061 (not c!143038)) b!1552781))

(assert (= (and b!1552781 c!143039) b!1552782))

(assert (= (and b!1552781 (not c!143039)) b!1552783))

(declare-fun m!1431325 () Bool)

(assert (=> b!1552782 m!1431325))

(assert (=> d!161001 d!161061))

(declare-fun d!161063 () Bool)

(assert (=> d!161063 (= (getValueByKey!734 lt!669364 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!808 (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lt!669428 () Unit!51642)

(assert (=> d!161063 (= lt!669428 (choose!2044 lt!669364 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun e!864484 () Bool)

(assert (=> d!161063 e!864484))

(declare-fun res!1063038 () Bool)

(assert (=> d!161063 (=> (not res!1063038) (not e!864484))))

(assert (=> d!161063 (= res!1063038 (isStrictlySorted!883 lt!669364))))

(assert (=> d!161063 (= (lemmaContainsTupThenGetReturnValue!374 lt!669364 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!669428)))

(declare-fun b!1552784 () Bool)

(declare-fun res!1063039 () Bool)

(assert (=> b!1552784 (=> (not res!1063039) (not e!864484))))

(assert (=> b!1552784 (= res!1063039 (containsKey!752 lt!669364 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552785 () Bool)

(assert (=> b!1552785 (= e!864484 (contains!10139 lt!669364 (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (= (and d!161063 res!1063038) b!1552784))

(assert (= (and b!1552784 res!1063039) b!1552785))

(assert (=> d!161063 m!1431163))

(declare-fun m!1431327 () Bool)

(assert (=> d!161063 m!1431327))

(declare-fun m!1431329 () Bool)

(assert (=> d!161063 m!1431329))

(declare-fun m!1431331 () Bool)

(assert (=> b!1552784 m!1431331))

(declare-fun m!1431333 () Bool)

(assert (=> b!1552785 m!1431333))

(assert (=> d!161001 d!161063))

(declare-fun b!1552786 () Bool)

(declare-fun c!143043 () Bool)

(assert (=> b!1552786 (= c!143043 (and ((_ is Cons!36357) (toList!11267 call!71292)) (bvsgt (_1!12451 (h!37803 (toList!11267 call!71292))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun e!864485 () List!36361)

(declare-fun e!864488 () List!36361)

(assert (=> b!1552786 (= e!864485 e!864488)))

(declare-fun b!1552787 () Bool)

(declare-fun e!864487 () Bool)

(declare-fun lt!669429 () List!36361)

(assert (=> b!1552787 (= e!864487 (contains!10139 lt!669429 (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1552788 () Bool)

(declare-fun e!864489 () List!36361)

(assert (=> b!1552788 (= e!864489 e!864485)))

(declare-fun c!143040 () Bool)

(assert (=> b!1552788 (= c!143040 (and ((_ is Cons!36357) (toList!11267 call!71292)) (= (_1!12451 (h!37803 (toList!11267 call!71292))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun bm!71337 () Bool)

(declare-fun e!864486 () List!36361)

(declare-fun call!71340 () List!36361)

(declare-fun c!143042 () Bool)

(assert (=> bm!71337 (= call!71340 ($colon$colon!946 e!864486 (ite c!143042 (h!37803 (toList!11267 call!71292)) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun c!143041 () Bool)

(assert (=> bm!71337 (= c!143041 c!143042)))

(declare-fun b!1552789 () Bool)

(assert (=> b!1552789 (= e!864489 call!71340)))

(declare-fun b!1552790 () Bool)

(declare-fun call!71341 () List!36361)

(assert (=> b!1552790 (= e!864488 call!71341)))

(declare-fun b!1552791 () Bool)

(declare-fun call!71342 () List!36361)

(assert (=> b!1552791 (= e!864485 call!71342)))

(declare-fun d!161065 () Bool)

(assert (=> d!161065 e!864487))

(declare-fun res!1063040 () Bool)

(assert (=> d!161065 (=> (not res!1063040) (not e!864487))))

(assert (=> d!161065 (= res!1063040 (isStrictlySorted!883 lt!669429))))

(assert (=> d!161065 (= lt!669429 e!864489)))

(assert (=> d!161065 (= c!143042 (and ((_ is Cons!36357) (toList!11267 call!71292)) (bvslt (_1!12451 (h!37803 (toList!11267 call!71292))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161065 (isStrictlySorted!883 (toList!11267 call!71292))))

(assert (=> d!161065 (= (insertStrictlySorted!503 (toList!11267 call!71292) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!669429)))

(declare-fun b!1552792 () Bool)

(assert (=> b!1552792 (= e!864486 (insertStrictlySorted!503 (t!51086 (toList!11267 call!71292)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552793 () Bool)

(assert (=> b!1552793 (= e!864486 (ite c!143040 (t!51086 (toList!11267 call!71292)) (ite c!143043 (Cons!36357 (h!37803 (toList!11267 call!71292)) (t!51086 (toList!11267 call!71292))) Nil!36358)))))

(declare-fun bm!71338 () Bool)

(assert (=> bm!71338 (= call!71342 call!71340)))

(declare-fun b!1552794 () Bool)

(assert (=> b!1552794 (= e!864488 call!71341)))

(declare-fun b!1552795 () Bool)

(declare-fun res!1063041 () Bool)

(assert (=> b!1552795 (=> (not res!1063041) (not e!864487))))

(assert (=> b!1552795 (= res!1063041 (containsKey!752 lt!669429 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!71339 () Bool)

(assert (=> bm!71339 (= call!71341 call!71342)))

(assert (= (and d!161065 c!143042) b!1552789))

(assert (= (and d!161065 (not c!143042)) b!1552788))

(assert (= (and b!1552788 c!143040) b!1552791))

(assert (= (and b!1552788 (not c!143040)) b!1552786))

(assert (= (and b!1552786 c!143043) b!1552790))

(assert (= (and b!1552786 (not c!143043)) b!1552794))

(assert (= (or b!1552790 b!1552794) bm!71339))

(assert (= (or b!1552791 bm!71339) bm!71338))

(assert (= (or b!1552789 bm!71338) bm!71337))

(assert (= (and bm!71337 c!143041) b!1552792))

(assert (= (and bm!71337 (not c!143041)) b!1552793))

(assert (= (and d!161065 res!1063040) b!1552795))

(assert (= (and b!1552795 res!1063041) b!1552787))

(declare-fun m!1431335 () Bool)

(assert (=> bm!71337 m!1431335))

(declare-fun m!1431337 () Bool)

(assert (=> d!161065 m!1431337))

(declare-fun m!1431339 () Bool)

(assert (=> d!161065 m!1431339))

(declare-fun m!1431341 () Bool)

(assert (=> b!1552792 m!1431341))

(declare-fun m!1431343 () Bool)

(assert (=> b!1552787 m!1431343))

(declare-fun m!1431345 () Bool)

(assert (=> b!1552795 m!1431345))

(assert (=> d!161001 d!161065))

(declare-fun b!1552797 () Bool)

(declare-fun e!864490 () Option!809)

(declare-fun e!864491 () Option!809)

(assert (=> b!1552797 (= e!864490 e!864491)))

(declare-fun c!143045 () Bool)

(assert (=> b!1552797 (= c!143045 (and ((_ is Cons!36357) (toList!11267 lt!669362)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669362))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))))

(declare-fun c!143044 () Bool)

(declare-fun d!161067 () Bool)

(assert (=> d!161067 (= c!143044 (and ((_ is Cons!36357) (toList!11267 lt!669362)) (= (_1!12451 (h!37803 (toList!11267 lt!669362))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(assert (=> d!161067 (= (getValueByKey!734 (toList!11267 lt!669362) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) e!864490)))

(declare-fun b!1552796 () Bool)

(assert (=> b!1552796 (= e!864490 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669362)))))))

(declare-fun b!1552798 () Bool)

(assert (=> b!1552798 (= e!864491 (getValueByKey!734 (t!51086 (toList!11267 lt!669362)) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1552799 () Bool)

(assert (=> b!1552799 (= e!864491 None!807)))

(assert (= (and d!161067 c!143044) b!1552796))

(assert (= (and d!161067 (not c!143044)) b!1552797))

(assert (= (and b!1552797 c!143045) b!1552798))

(assert (= (and b!1552797 (not c!143045)) b!1552799))

(declare-fun m!1431347 () Bool)

(assert (=> b!1552798 m!1431347))

(assert (=> b!1552607 d!161067))

(declare-fun d!161069 () Bool)

(assert (=> d!161069 (= (get!26065 (getValueByKey!734 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!21987 (getValueByKey!734 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161003 d!161069))

(declare-fun b!1552801 () Bool)

(declare-fun e!864492 () Option!809)

(declare-fun e!864493 () Option!809)

(assert (=> b!1552801 (= e!864492 e!864493)))

(declare-fun c!143047 () Bool)

(assert (=> b!1552801 (= c!143047 (and ((_ is Cons!36357) (toList!11267 lt!669252)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669252))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!161071 () Bool)

(declare-fun c!143046 () Bool)

(assert (=> d!161071 (= c!143046 (and ((_ is Cons!36357) (toList!11267 lt!669252)) (= (_1!12451 (h!37803 (toList!11267 lt!669252))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161071 (= (getValueByKey!734 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000) e!864492)))

(declare-fun b!1552800 () Bool)

(assert (=> b!1552800 (= e!864492 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669252)))))))

(declare-fun b!1552802 () Bool)

(assert (=> b!1552802 (= e!864493 (getValueByKey!734 (t!51086 (toList!11267 lt!669252)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1552803 () Bool)

(assert (=> b!1552803 (= e!864493 None!807)))

(assert (= (and d!161071 c!143046) b!1552800))

(assert (= (and d!161071 (not c!143046)) b!1552801))

(assert (= (and b!1552801 c!143047) b!1552802))

(assert (= (and b!1552801 (not c!143047)) b!1552803))

(declare-fun m!1431349 () Bool)

(assert (=> b!1552802 m!1431349))

(assert (=> d!161003 d!161071))

(declare-fun d!161073 () Bool)

(assert (=> d!161073 (= (get!26065 (getValueByKey!734 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (select (arr!49984 _keys!618) from!762))) (v!21987 (getValueByKey!734 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!160963 d!161073))

(declare-fun b!1552805 () Bool)

(declare-fun e!864494 () Option!809)

(declare-fun e!864495 () Option!809)

(assert (=> b!1552805 (= e!864494 e!864495)))

(declare-fun c!143049 () Bool)

(assert (=> b!1552805 (= c!143049 (and ((_ is Cons!36357) (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (not (= (_1!12451 (h!37803 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun d!161075 () Bool)

(declare-fun c!143048 () Bool)

(assert (=> d!161075 (= c!143048 (and ((_ is Cons!36357) (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (= (_1!12451 (h!37803 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161075 (= (getValueByKey!734 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (select (arr!49984 _keys!618) from!762)) e!864494)))

(declare-fun b!1552804 () Bool)

(assert (=> b!1552804 (= e!864494 (Some!808 (_2!12451 (h!37803 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))))

(declare-fun b!1552806 () Bool)

(assert (=> b!1552806 (= e!864495 (getValueByKey!734 (t!51086 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1552807 () Bool)

(assert (=> b!1552807 (= e!864495 None!807)))

(assert (= (and d!161075 c!143048) b!1552804))

(assert (= (and d!161075 (not c!143048)) b!1552805))

(assert (= (and b!1552805 c!143049) b!1552806))

(assert (= (and b!1552805 (not c!143049)) b!1552807))

(assert (=> b!1552806 m!1430943))

(declare-fun m!1431351 () Bool)

(assert (=> b!1552806 m!1431351))

(assert (=> d!160963 d!161075))

(declare-fun d!161077 () Bool)

(assert (=> d!161077 (not (contains!10137 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316)) lt!669319))))

(declare-fun lt!669432 () Unit!51642)

(declare-fun choose!2045 (ListLongMap!22503 (_ BitVec 64) V!59391 (_ BitVec 64)) Unit!51642)

(assert (=> d!161077 (= lt!669432 (choose!2045 lt!669320 lt!669322 lt!669316 lt!669319))))

(declare-fun e!864498 () Bool)

(assert (=> d!161077 e!864498))

(declare-fun res!1063044 () Bool)

(assert (=> d!161077 (=> (not res!1063044) (not e!864498))))

(assert (=> d!161077 (= res!1063044 (not (contains!10137 lt!669320 lt!669319)))))

(assert (=> d!161077 (= (addStillNotContains!522 lt!669320 lt!669322 lt!669316 lt!669319) lt!669432)))

(declare-fun b!1552811 () Bool)

(assert (=> b!1552811 (= e!864498 (not (= lt!669322 lt!669319)))))

(assert (= (and d!161077 res!1063044) b!1552811))

(assert (=> d!161077 m!1431077))

(assert (=> d!161077 m!1431077))

(assert (=> d!161077 m!1431079))

(declare-fun m!1431353 () Bool)

(assert (=> d!161077 m!1431353))

(declare-fun m!1431355 () Bool)

(assert (=> d!161077 m!1431355))

(assert (=> b!1552582 d!161077))

(assert (=> b!1552582 d!161007))

(declare-fun d!161079 () Bool)

(declare-fun e!864500 () Bool)

(assert (=> d!161079 e!864500))

(declare-fun res!1063045 () Bool)

(assert (=> d!161079 (=> res!1063045 e!864500)))

(declare-fun lt!669436 () Bool)

(assert (=> d!161079 (= res!1063045 (not lt!669436))))

(declare-fun lt!669435 () Bool)

(assert (=> d!161079 (= lt!669436 lt!669435)))

(declare-fun lt!669434 () Unit!51642)

(declare-fun e!864499 () Unit!51642)

(assert (=> d!161079 (= lt!669434 e!864499)))

(declare-fun c!143050 () Bool)

(assert (=> d!161079 (= c!143050 lt!669435)))

(assert (=> d!161079 (= lt!669435 (containsKey!752 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))) lt!669319))))

(assert (=> d!161079 (= (contains!10137 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316)) lt!669319) lt!669436)))

(declare-fun b!1552812 () Bool)

(declare-fun lt!669433 () Unit!51642)

(assert (=> b!1552812 (= e!864499 lt!669433)))

(assert (=> b!1552812 (= lt!669433 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))) lt!669319))))

(assert (=> b!1552812 (isDefined!546 (getValueByKey!734 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))) lt!669319))))

(declare-fun b!1552813 () Bool)

(declare-fun Unit!51657 () Unit!51642)

(assert (=> b!1552813 (= e!864499 Unit!51657)))

(declare-fun b!1552814 () Bool)

(assert (=> b!1552814 (= e!864500 (isDefined!546 (getValueByKey!734 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))) lt!669319)))))

(assert (= (and d!161079 c!143050) b!1552812))

(assert (= (and d!161079 (not c!143050)) b!1552813))

(assert (= (and d!161079 (not res!1063045)) b!1552814))

(declare-fun m!1431357 () Bool)

(assert (=> d!161079 m!1431357))

(declare-fun m!1431359 () Bool)

(assert (=> b!1552812 m!1431359))

(declare-fun m!1431361 () Bool)

(assert (=> b!1552812 m!1431361))

(assert (=> b!1552812 m!1431361))

(declare-fun m!1431363 () Bool)

(assert (=> b!1552812 m!1431363))

(assert (=> b!1552814 m!1431361))

(assert (=> b!1552814 m!1431361))

(assert (=> b!1552814 m!1431363))

(assert (=> b!1552582 d!161079))

(declare-fun d!161081 () Bool)

(declare-fun e!864501 () Bool)

(assert (=> d!161081 e!864501))

(declare-fun res!1063046 () Bool)

(assert (=> d!161081 (=> (not res!1063046) (not e!864501))))

(declare-fun lt!669440 () ListLongMap!22503)

(assert (=> d!161081 (= res!1063046 (contains!10137 lt!669440 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!669438 () List!36361)

(assert (=> d!161081 (= lt!669440 (ListLongMap!22504 lt!669438))))

(declare-fun lt!669439 () Unit!51642)

(declare-fun lt!669437 () Unit!51642)

(assert (=> d!161081 (= lt!669439 lt!669437)))

(assert (=> d!161081 (= (getValueByKey!734 lt!669438 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!808 (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!161081 (= lt!669437 (lemmaContainsTupThenGetReturnValue!374 lt!669438 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!161081 (= lt!669438 (insertStrictlySorted!503 (toList!11267 call!71322) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!161081 (= (+!4973 call!71322 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!669440)))

(declare-fun b!1552815 () Bool)

(declare-fun res!1063047 () Bool)

(assert (=> b!1552815 (=> (not res!1063047) (not e!864501))))

(assert (=> b!1552815 (= res!1063047 (= (getValueByKey!734 (toList!11267 lt!669440) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!808 (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1552816 () Bool)

(assert (=> b!1552816 (= e!864501 (contains!10139 (toList!11267 lt!669440) (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!161081 res!1063046) b!1552815))

(assert (= (and b!1552815 res!1063047) b!1552816))

(declare-fun m!1431365 () Bool)

(assert (=> d!161081 m!1431365))

(declare-fun m!1431367 () Bool)

(assert (=> d!161081 m!1431367))

(declare-fun m!1431369 () Bool)

(assert (=> d!161081 m!1431369))

(declare-fun m!1431371 () Bool)

(assert (=> d!161081 m!1431371))

(declare-fun m!1431373 () Bool)

(assert (=> b!1552815 m!1431373))

(declare-fun m!1431375 () Bool)

(assert (=> b!1552816 m!1431375))

(assert (=> b!1552582 d!161081))

(declare-fun d!161083 () Bool)

(declare-fun e!864502 () Bool)

(assert (=> d!161083 e!864502))

(declare-fun res!1063048 () Bool)

(assert (=> d!161083 (=> (not res!1063048) (not e!864502))))

(declare-fun lt!669444 () ListLongMap!22503)

(assert (=> d!161083 (= res!1063048 (contains!10137 lt!669444 (_1!12451 (tuple2!24883 lt!669322 lt!669316))))))

(declare-fun lt!669442 () List!36361)

(assert (=> d!161083 (= lt!669444 (ListLongMap!22504 lt!669442))))

(declare-fun lt!669443 () Unit!51642)

(declare-fun lt!669441 () Unit!51642)

(assert (=> d!161083 (= lt!669443 lt!669441)))

(assert (=> d!161083 (= (getValueByKey!734 lt!669442 (_1!12451 (tuple2!24883 lt!669322 lt!669316))) (Some!808 (_2!12451 (tuple2!24883 lt!669322 lt!669316))))))

(assert (=> d!161083 (= lt!669441 (lemmaContainsTupThenGetReturnValue!374 lt!669442 (_1!12451 (tuple2!24883 lt!669322 lt!669316)) (_2!12451 (tuple2!24883 lt!669322 lt!669316))))))

(assert (=> d!161083 (= lt!669442 (insertStrictlySorted!503 (toList!11267 lt!669320) (_1!12451 (tuple2!24883 lt!669322 lt!669316)) (_2!12451 (tuple2!24883 lt!669322 lt!669316))))))

(assert (=> d!161083 (= (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316)) lt!669444)))

(declare-fun b!1552817 () Bool)

(declare-fun res!1063049 () Bool)

(assert (=> b!1552817 (=> (not res!1063049) (not e!864502))))

(assert (=> b!1552817 (= res!1063049 (= (getValueByKey!734 (toList!11267 lt!669444) (_1!12451 (tuple2!24883 lt!669322 lt!669316))) (Some!808 (_2!12451 (tuple2!24883 lt!669322 lt!669316)))))))

(declare-fun b!1552818 () Bool)

(assert (=> b!1552818 (= e!864502 (contains!10139 (toList!11267 lt!669444) (tuple2!24883 lt!669322 lt!669316)))))

(assert (= (and d!161083 res!1063048) b!1552817))

(assert (= (and b!1552817 res!1063049) b!1552818))

(declare-fun m!1431377 () Bool)

(assert (=> d!161083 m!1431377))

(declare-fun m!1431379 () Bool)

(assert (=> d!161083 m!1431379))

(declare-fun m!1431381 () Bool)

(assert (=> d!161083 m!1431381))

(declare-fun m!1431383 () Bool)

(assert (=> d!161083 m!1431383))

(declare-fun m!1431385 () Bool)

(assert (=> b!1552817 m!1431385))

(declare-fun m!1431387 () Bool)

(assert (=> b!1552818 m!1431387))

(assert (=> b!1552582 d!161083))

(declare-fun d!161085 () Bool)

(assert (=> d!161085 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!669447 () Unit!51642)

(declare-fun choose!2046 (List!36361 (_ BitVec 64)) Unit!51642)

(assert (=> d!161085 (= lt!669447 (choose!2046 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!864505 () Bool)

(assert (=> d!161085 e!864505))

(declare-fun res!1063052 () Bool)

(assert (=> d!161085 (=> (not res!1063052) (not e!864505))))

(assert (=> d!161085 (= res!1063052 (isStrictlySorted!883 (toList!11267 lt!669252)))))

(assert (=> d!161085 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000) lt!669447)))

(declare-fun b!1552821 () Bool)

(assert (=> b!1552821 (= e!864505 (containsKey!752 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!161085 res!1063052) b!1552821))

(assert (=> d!161085 m!1431133))

(assert (=> d!161085 m!1431133))

(assert (=> d!161085 m!1431135))

(declare-fun m!1431389 () Bool)

(assert (=> d!161085 m!1431389))

(declare-fun m!1431391 () Bool)

(assert (=> d!161085 m!1431391))

(assert (=> b!1552821 m!1431129))

(assert (=> b!1552604 d!161085))

(declare-fun d!161087 () Bool)

(declare-fun isEmpty!1135 (Option!809) Bool)

(assert (=> d!161087 (= (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!44602 () Bool)

(assert (= bs!44602 d!161087))

(assert (=> bs!44602 m!1431133))

(declare-fun m!1431393 () Bool)

(assert (=> bs!44602 m!1431393))

(assert (=> b!1552604 d!161087))

(assert (=> b!1552604 d!161071))

(declare-fun d!161089 () Bool)

(assert (=> d!161089 (= (validKeyInArray!0 (select (arr!49984 _keys!618) #b00000000000000000000000000000000)) (and (not (= (select (arr!49984 _keys!618) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49984 _keys!618) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1552619 d!161089))

(declare-fun d!161091 () Bool)

(assert (=> d!161091 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762)))))

(declare-fun lt!669448 () Unit!51642)

(assert (=> d!161091 (= lt!669448 (choose!2046 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762)))))

(declare-fun e!864506 () Bool)

(assert (=> d!161091 e!864506))

(declare-fun res!1063053 () Bool)

(assert (=> d!161091 (=> (not res!1063053) (not e!864506))))

(assert (=> d!161091 (= res!1063053 (isStrictlySorted!883 (toList!11267 lt!669252)))))

(assert (=> d!161091 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762)) lt!669448)))

(declare-fun b!1552822 () Bool)

(assert (=> b!1552822 (= e!864506 (containsKey!752 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762)))))

(assert (= (and d!161091 res!1063053) b!1552822))

(assert (=> d!161091 m!1430943))

(assert (=> d!161091 m!1431125))

(assert (=> d!161091 m!1431125))

(assert (=> d!161091 m!1431127))

(assert (=> d!161091 m!1430943))

(declare-fun m!1431395 () Bool)

(assert (=> d!161091 m!1431395))

(assert (=> d!161091 m!1431391))

(assert (=> b!1552822 m!1430943))

(assert (=> b!1552822 m!1431121))

(assert (=> b!1552601 d!161091))

(declare-fun d!161093 () Bool)

(assert (=> d!161093 (= (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762))) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun bs!44603 () Bool)

(assert (= bs!44603 d!161093))

(assert (=> bs!44603 m!1431125))

(declare-fun m!1431397 () Bool)

(assert (=> bs!44603 m!1431397))

(assert (=> b!1552601 d!161093))

(declare-fun b!1552824 () Bool)

(declare-fun e!864507 () Option!809)

(declare-fun e!864508 () Option!809)

(assert (=> b!1552824 (= e!864507 e!864508)))

(declare-fun c!143052 () Bool)

(assert (=> b!1552824 (= c!143052 (and ((_ is Cons!36357) (toList!11267 lt!669252)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669252))) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun c!143051 () Bool)

(declare-fun d!161095 () Bool)

(assert (=> d!161095 (= c!143051 (and ((_ is Cons!36357) (toList!11267 lt!669252)) (= (_1!12451 (h!37803 (toList!11267 lt!669252))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161095 (= (getValueByKey!734 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762)) e!864507)))

(declare-fun b!1552823 () Bool)

(assert (=> b!1552823 (= e!864507 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669252)))))))

(declare-fun b!1552825 () Bool)

(assert (=> b!1552825 (= e!864508 (getValueByKey!734 (t!51086 (toList!11267 lt!669252)) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1552826 () Bool)

(assert (=> b!1552826 (= e!864508 None!807)))

(assert (= (and d!161095 c!143051) b!1552823))

(assert (= (and d!161095 (not c!143051)) b!1552824))

(assert (= (and b!1552824 c!143052) b!1552825))

(assert (= (and b!1552824 (not c!143052)) b!1552826))

(assert (=> b!1552825 m!1430943))

(declare-fun m!1431399 () Bool)

(assert (=> b!1552825 m!1431399))

(assert (=> b!1552601 d!161095))

(declare-fun d!161097 () Bool)

(declare-fun lt!669451 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!797 (List!36361) (InoxSet tuple2!24882))

(assert (=> d!161097 (= lt!669451 (select (content!797 (toList!11267 lt!669350)) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun e!864513 () Bool)

(assert (=> d!161097 (= lt!669451 e!864513)))

(declare-fun res!1063058 () Bool)

(assert (=> d!161097 (=> (not res!1063058) (not e!864513))))

(assert (=> d!161097 (= res!1063058 ((_ is Cons!36357) (toList!11267 lt!669350)))))

(assert (=> d!161097 (= (contains!10139 (toList!11267 lt!669350) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) lt!669451)))

(declare-fun b!1552831 () Bool)

(declare-fun e!864514 () Bool)

(assert (=> b!1552831 (= e!864513 e!864514)))

(declare-fun res!1063059 () Bool)

(assert (=> b!1552831 (=> res!1063059 e!864514)))

(assert (=> b!1552831 (= res!1063059 (= (h!37803 (toList!11267 lt!669350)) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun b!1552832 () Bool)

(assert (=> b!1552832 (= e!864514 (contains!10139 (t!51086 (toList!11267 lt!669350)) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(assert (= (and d!161097 res!1063058) b!1552831))

(assert (= (and b!1552831 (not res!1063059)) b!1552832))

(declare-fun m!1431401 () Bool)

(assert (=> d!161097 m!1431401))

(declare-fun m!1431403 () Bool)

(assert (=> d!161097 m!1431403))

(declare-fun m!1431405 () Bool)

(assert (=> b!1552832 m!1431405))

(assert (=> b!1552600 d!161097))

(declare-fun d!161099 () Bool)

(assert (=> d!161099 (= (get!26066 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!21985 (select (arr!49985 _values!470) from!762)))))

(assert (=> b!1552630 d!161099))

(assert (=> b!1552621 d!161089))

(assert (=> b!1552603 d!161093))

(assert (=> b!1552603 d!161095))

(declare-fun d!161101 () Bool)

(assert (=> d!161101 (= (isDefined!546 (getValueByKey!734 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762))) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun bs!44604 () Bool)

(assert (= bs!44604 d!161101))

(assert (=> bs!44604 m!1431063))

(declare-fun m!1431407 () Bool)

(assert (=> bs!44604 m!1431407))

(assert (=> b!1552598 d!161101))

(declare-fun b!1552834 () Bool)

(declare-fun e!864515 () Option!809)

(declare-fun e!864516 () Option!809)

(assert (=> b!1552834 (= e!864515 e!864516)))

(declare-fun c!143054 () Bool)

(assert (=> b!1552834 (= c!143054 (and ((_ is Cons!36357) (toList!11267 lt!669257)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669257))) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun d!161103 () Bool)

(declare-fun c!143053 () Bool)

(assert (=> d!161103 (= c!143053 (and ((_ is Cons!36357) (toList!11267 lt!669257)) (= (_1!12451 (h!37803 (toList!11267 lt!669257))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161103 (= (getValueByKey!734 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762)) e!864515)))

(declare-fun b!1552833 () Bool)

(assert (=> b!1552833 (= e!864515 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669257)))))))

(declare-fun b!1552835 () Bool)

(assert (=> b!1552835 (= e!864516 (getValueByKey!734 (t!51086 (toList!11267 lt!669257)) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1552836 () Bool)

(assert (=> b!1552836 (= e!864516 None!807)))

(assert (= (and d!161103 c!143053) b!1552833))

(assert (= (and d!161103 (not c!143053)) b!1552834))

(assert (= (and b!1552834 c!143054) b!1552835))

(assert (= (and b!1552834 (not c!143054)) b!1552836))

(assert (=> b!1552835 m!1430943))

(declare-fun m!1431409 () Bool)

(assert (=> b!1552835 m!1431409))

(assert (=> b!1552598 d!161103))

(declare-fun d!161105 () Bool)

(assert (=> d!161105 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762)))))

(declare-fun lt!669452 () Unit!51642)

(assert (=> d!161105 (= lt!669452 (choose!2046 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762)))))

(declare-fun e!864517 () Bool)

(assert (=> d!161105 e!864517))

(declare-fun res!1063060 () Bool)

(assert (=> d!161105 (=> (not res!1063060) (not e!864517))))

(assert (=> d!161105 (= res!1063060 (isStrictlySorted!883 (toList!11267 lt!669257)))))

(assert (=> d!161105 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762)) lt!669452)))

(declare-fun b!1552837 () Bool)

(assert (=> b!1552837 (= e!864517 (containsKey!752 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762)))))

(assert (= (and d!161105 res!1063060) b!1552837))

(assert (=> d!161105 m!1430943))

(assert (=> d!161105 m!1431063))

(assert (=> d!161105 m!1431063))

(assert (=> d!161105 m!1431107))

(assert (=> d!161105 m!1430943))

(declare-fun m!1431411 () Bool)

(assert (=> d!161105 m!1431411))

(declare-fun m!1431413 () Bool)

(assert (=> d!161105 m!1431413))

(assert (=> b!1552837 m!1430943))

(assert (=> b!1552837 m!1431103))

(assert (=> b!1552596 d!161105))

(assert (=> b!1552596 d!161101))

(assert (=> b!1552596 d!161103))

(assert (=> b!1552606 d!161087))

(assert (=> b!1552606 d!161071))

(declare-fun b!1552839 () Bool)

(declare-fun e!864518 () Option!809)

(declare-fun e!864519 () Option!809)

(assert (=> b!1552839 (= e!864518 e!864519)))

(declare-fun c!143056 () Bool)

(assert (=> b!1552839 (= c!143056 (and ((_ is Cons!36357) (toList!11267 lt!669366)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669366))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun d!161107 () Bool)

(declare-fun c!143055 () Bool)

(assert (=> d!161107 (= c!143055 (and ((_ is Cons!36357) (toList!11267 lt!669366)) (= (_1!12451 (h!37803 (toList!11267 lt!669366))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161107 (= (getValueByKey!734 (toList!11267 lt!669366) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864518)))

(declare-fun b!1552838 () Bool)

(assert (=> b!1552838 (= e!864518 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669366)))))))

(declare-fun b!1552840 () Bool)

(assert (=> b!1552840 (= e!864519 (getValueByKey!734 (t!51086 (toList!11267 lt!669366)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552841 () Bool)

(assert (=> b!1552841 (= e!864519 None!807)))

(assert (= (and d!161107 c!143055) b!1552838))

(assert (= (and d!161107 (not c!143055)) b!1552839))

(assert (= (and b!1552839 c!143056) b!1552840))

(assert (= (and b!1552839 (not c!143056)) b!1552841))

(declare-fun m!1431415 () Bool)

(assert (=> b!1552840 m!1431415))

(assert (=> b!1552624 d!161107))

(declare-fun d!161109 () Bool)

(assert (=> d!161109 (= (get!26065 (getValueByKey!734 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762))) (v!21987 (getValueByKey!734 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!160971 d!161109))

(assert (=> d!160971 d!161103))

(declare-fun d!161111 () Bool)

(declare-fun lt!669455 () Bool)

(declare-fun content!798 (List!36362) (InoxSet (_ BitVec 64)))

(assert (=> d!161111 (= lt!669455 (select (content!798 Nil!36359) (select (arr!49984 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun e!864525 () Bool)

(assert (=> d!161111 (= lt!669455 e!864525)))

(declare-fun res!1063065 () Bool)

(assert (=> d!161111 (=> (not res!1063065) (not e!864525))))

(assert (=> d!161111 (= res!1063065 ((_ is Cons!36358) Nil!36359))))

(assert (=> d!161111 (= (contains!10140 Nil!36359 (select (arr!49984 _keys!618) #b00000000000000000000000000000000)) lt!669455)))

(declare-fun b!1552846 () Bool)

(declare-fun e!864524 () Bool)

(assert (=> b!1552846 (= e!864525 e!864524)))

(declare-fun res!1063066 () Bool)

(assert (=> b!1552846 (=> res!1063066 e!864524)))

(assert (=> b!1552846 (= res!1063066 (= (h!37804 Nil!36359) (select (arr!49984 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1552847 () Bool)

(assert (=> b!1552847 (= e!864524 (contains!10140 (t!51087 Nil!36359) (select (arr!49984 _keys!618) #b00000000000000000000000000000000)))))

(assert (= (and d!161111 res!1063065) b!1552846))

(assert (= (and b!1552846 (not res!1063066)) b!1552847))

(declare-fun m!1431417 () Bool)

(assert (=> d!161111 m!1431417))

(assert (=> d!161111 m!1431153))

(declare-fun m!1431419 () Bool)

(assert (=> d!161111 m!1431419))

(assert (=> b!1552847 m!1431153))

(declare-fun m!1431421 () Bool)

(assert (=> b!1552847 m!1431421))

(assert (=> b!1552622 d!161111))

(assert (=> b!1552644 d!161089))

(declare-fun d!161113 () Bool)

(declare-fun e!864527 () Bool)

(assert (=> d!161113 e!864527))

(declare-fun res!1063067 () Bool)

(assert (=> d!161113 (=> res!1063067 e!864527)))

(declare-fun lt!669459 () Bool)

(assert (=> d!161113 (= res!1063067 (not lt!669459))))

(declare-fun lt!669458 () Bool)

(assert (=> d!161113 (= lt!669459 lt!669458)))

(declare-fun lt!669457 () Unit!51642)

(declare-fun e!864526 () Unit!51642)

(assert (=> d!161113 (= lt!669457 e!864526)))

(declare-fun c!143057 () Bool)

(assert (=> d!161113 (= c!143057 lt!669458)))

(assert (=> d!161113 (= lt!669458 (containsKey!752 (toList!11267 lt!669321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!161113 (= (contains!10137 lt!669321 #b0000000000000000000000000000000000000000000000000000000000000000) lt!669459)))

(declare-fun b!1552848 () Bool)

(declare-fun lt!669456 () Unit!51642)

(assert (=> b!1552848 (= e!864526 lt!669456)))

(assert (=> b!1552848 (= lt!669456 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1552848 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1552849 () Bool)

(declare-fun Unit!51658 () Unit!51642)

(assert (=> b!1552849 (= e!864526 Unit!51658)))

(declare-fun b!1552850 () Bool)

(assert (=> b!1552850 (= e!864527 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669321) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!161113 c!143057) b!1552848))

(assert (= (and d!161113 (not c!143057)) b!1552849))

(assert (= (and d!161113 (not res!1063067)) b!1552850))

(declare-fun m!1431423 () Bool)

(assert (=> d!161113 m!1431423))

(declare-fun m!1431425 () Bool)

(assert (=> b!1552848 m!1431425))

(declare-fun m!1431427 () Bool)

(assert (=> b!1552848 m!1431427))

(assert (=> b!1552848 m!1431427))

(declare-fun m!1431429 () Bool)

(assert (=> b!1552848 m!1431429))

(assert (=> b!1552850 m!1431427))

(assert (=> b!1552850 m!1431427))

(assert (=> b!1552850 m!1431429))

(assert (=> d!160975 d!161113))

(assert (=> d!160975 d!160989))

(declare-fun d!161115 () Bool)

(declare-fun e!864529 () Bool)

(assert (=> d!161115 e!864529))

(declare-fun res!1063068 () Bool)

(assert (=> d!161115 (=> res!1063068 e!864529)))

(declare-fun lt!669463 () Bool)

(assert (=> d!161115 (= res!1063068 (not lt!669463))))

(declare-fun lt!669462 () Bool)

(assert (=> d!161115 (= lt!669463 lt!669462)))

(declare-fun lt!669461 () Unit!51642)

(declare-fun e!864528 () Unit!51642)

(assert (=> d!161115 (= lt!669461 e!864528)))

(declare-fun c!143058 () Bool)

(assert (=> d!161115 (= c!143058 lt!669462)))

(assert (=> d!161115 (= lt!669462 (containsKey!752 (toList!11267 lt!669334) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!161115 (= (contains!10137 lt!669334 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!669463)))

(declare-fun b!1552851 () Bool)

(declare-fun lt!669460 () Unit!51642)

(assert (=> b!1552851 (= e!864528 lt!669460)))

(assert (=> b!1552851 (= lt!669460 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669334) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> b!1552851 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669334) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552852 () Bool)

(declare-fun Unit!51659 () Unit!51642)

(assert (=> b!1552852 (= e!864528 Unit!51659)))

(declare-fun b!1552853 () Bool)

(assert (=> b!1552853 (= e!864529 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669334) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (= (and d!161115 c!143058) b!1552851))

(assert (= (and d!161115 (not c!143058)) b!1552852))

(assert (= (and d!161115 (not res!1063068)) b!1552853))

(declare-fun m!1431431 () Bool)

(assert (=> d!161115 m!1431431))

(declare-fun m!1431433 () Bool)

(assert (=> b!1552851 m!1431433))

(assert (=> b!1552851 m!1431099))

(assert (=> b!1552851 m!1431099))

(declare-fun m!1431435 () Bool)

(assert (=> b!1552851 m!1431435))

(assert (=> b!1552853 m!1431099))

(assert (=> b!1552853 m!1431099))

(assert (=> b!1552853 m!1431435))

(assert (=> d!160977 d!161115))

(declare-fun b!1552855 () Bool)

(declare-fun e!864530 () Option!809)

(declare-fun e!864531 () Option!809)

(assert (=> b!1552855 (= e!864530 e!864531)))

(declare-fun c!143060 () Bool)

(assert (=> b!1552855 (= c!143060 (and ((_ is Cons!36357) lt!669332) (not (= (_1!12451 (h!37803 lt!669332)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun d!161117 () Bool)

(declare-fun c!143059 () Bool)

(assert (=> d!161117 (= c!143059 (and ((_ is Cons!36357) lt!669332) (= (_1!12451 (h!37803 lt!669332)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161117 (= (getValueByKey!734 lt!669332 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864530)))

(declare-fun b!1552854 () Bool)

(assert (=> b!1552854 (= e!864530 (Some!808 (_2!12451 (h!37803 lt!669332))))))

(declare-fun b!1552856 () Bool)

(assert (=> b!1552856 (= e!864531 (getValueByKey!734 (t!51086 lt!669332) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552857 () Bool)

(assert (=> b!1552857 (= e!864531 None!807)))

(assert (= (and d!161117 c!143059) b!1552854))

(assert (= (and d!161117 (not c!143059)) b!1552855))

(assert (= (and b!1552855 c!143060) b!1552856))

(assert (= (and b!1552855 (not c!143060)) b!1552857))

(declare-fun m!1431437 () Bool)

(assert (=> b!1552856 m!1431437))

(assert (=> d!160977 d!161117))

(declare-fun d!161119 () Bool)

(assert (=> d!161119 (= (getValueByKey!734 lt!669332 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!808 (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lt!669464 () Unit!51642)

(assert (=> d!161119 (= lt!669464 (choose!2044 lt!669332 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun e!864532 () Bool)

(assert (=> d!161119 e!864532))

(declare-fun res!1063069 () Bool)

(assert (=> d!161119 (=> (not res!1063069) (not e!864532))))

(assert (=> d!161119 (= res!1063069 (isStrictlySorted!883 lt!669332))))

(assert (=> d!161119 (= (lemmaContainsTupThenGetReturnValue!374 lt!669332 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!669464)))

(declare-fun b!1552858 () Bool)

(declare-fun res!1063070 () Bool)

(assert (=> b!1552858 (=> (not res!1063070) (not e!864532))))

(assert (=> b!1552858 (= res!1063070 (containsKey!752 lt!669332 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552859 () Bool)

(assert (=> b!1552859 (= e!864532 (contains!10139 lt!669332 (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (= (and d!161119 res!1063069) b!1552858))

(assert (= (and b!1552858 res!1063070) b!1552859))

(assert (=> d!161119 m!1431093))

(declare-fun m!1431439 () Bool)

(assert (=> d!161119 m!1431439))

(declare-fun m!1431441 () Bool)

(assert (=> d!161119 m!1431441))

(declare-fun m!1431443 () Bool)

(assert (=> b!1552858 m!1431443))

(declare-fun m!1431445 () Bool)

(assert (=> b!1552859 m!1431445))

(assert (=> d!160977 d!161119))

(declare-fun b!1552860 () Bool)

(declare-fun c!143064 () Bool)

(assert (=> b!1552860 (= c!143064 (and ((_ is Cons!36357) (toList!11267 lt!669255)) (bvsgt (_1!12451 (h!37803 (toList!11267 lt!669255))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun e!864533 () List!36361)

(declare-fun e!864536 () List!36361)

(assert (=> b!1552860 (= e!864533 e!864536)))

(declare-fun b!1552861 () Bool)

(declare-fun e!864535 () Bool)

(declare-fun lt!669465 () List!36361)

(assert (=> b!1552861 (= e!864535 (contains!10139 lt!669465 (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1552862 () Bool)

(declare-fun e!864537 () List!36361)

(assert (=> b!1552862 (= e!864537 e!864533)))

(declare-fun c!143061 () Bool)

(assert (=> b!1552862 (= c!143061 (and ((_ is Cons!36357) (toList!11267 lt!669255)) (= (_1!12451 (h!37803 (toList!11267 lt!669255))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun call!71343 () List!36361)

(declare-fun c!143063 () Bool)

(declare-fun e!864534 () List!36361)

(declare-fun bm!71340 () Bool)

(assert (=> bm!71340 (= call!71343 ($colon$colon!946 e!864534 (ite c!143063 (h!37803 (toList!11267 lt!669255)) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun c!143062 () Bool)

(assert (=> bm!71340 (= c!143062 c!143063)))

(declare-fun b!1552863 () Bool)

(assert (=> b!1552863 (= e!864537 call!71343)))

(declare-fun b!1552864 () Bool)

(declare-fun call!71344 () List!36361)

(assert (=> b!1552864 (= e!864536 call!71344)))

(declare-fun b!1552865 () Bool)

(declare-fun call!71345 () List!36361)

(assert (=> b!1552865 (= e!864533 call!71345)))

(declare-fun d!161121 () Bool)

(assert (=> d!161121 e!864535))

(declare-fun res!1063071 () Bool)

(assert (=> d!161121 (=> (not res!1063071) (not e!864535))))

(assert (=> d!161121 (= res!1063071 (isStrictlySorted!883 lt!669465))))

(assert (=> d!161121 (= lt!669465 e!864537)))

(assert (=> d!161121 (= c!143063 (and ((_ is Cons!36357) (toList!11267 lt!669255)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669255))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161121 (isStrictlySorted!883 (toList!11267 lt!669255))))

(assert (=> d!161121 (= (insertStrictlySorted!503 (toList!11267 lt!669255) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!669465)))

(declare-fun b!1552866 () Bool)

(assert (=> b!1552866 (= e!864534 (insertStrictlySorted!503 (t!51086 (toList!11267 lt!669255)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552867 () Bool)

(assert (=> b!1552867 (= e!864534 (ite c!143061 (t!51086 (toList!11267 lt!669255)) (ite c!143064 (Cons!36357 (h!37803 (toList!11267 lt!669255)) (t!51086 (toList!11267 lt!669255))) Nil!36358)))))

(declare-fun bm!71341 () Bool)

(assert (=> bm!71341 (= call!71345 call!71343)))

(declare-fun b!1552868 () Bool)

(assert (=> b!1552868 (= e!864536 call!71344)))

(declare-fun b!1552869 () Bool)

(declare-fun res!1063072 () Bool)

(assert (=> b!1552869 (=> (not res!1063072) (not e!864535))))

(assert (=> b!1552869 (= res!1063072 (containsKey!752 lt!669465 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!71342 () Bool)

(assert (=> bm!71342 (= call!71344 call!71345)))

(assert (= (and d!161121 c!143063) b!1552863))

(assert (= (and d!161121 (not c!143063)) b!1552862))

(assert (= (and b!1552862 c!143061) b!1552865))

(assert (= (and b!1552862 (not c!143061)) b!1552860))

(assert (= (and b!1552860 c!143064) b!1552864))

(assert (= (and b!1552860 (not c!143064)) b!1552868))

(assert (= (or b!1552864 b!1552868) bm!71342))

(assert (= (or b!1552865 bm!71342) bm!71341))

(assert (= (or b!1552863 bm!71341) bm!71340))

(assert (= (and bm!71340 c!143062) b!1552866))

(assert (= (and bm!71340 (not c!143062)) b!1552867))

(assert (= (and d!161121 res!1063071) b!1552869))

(assert (= (and b!1552869 res!1063072) b!1552861))

(declare-fun m!1431447 () Bool)

(assert (=> bm!71340 m!1431447))

(declare-fun m!1431449 () Bool)

(assert (=> d!161121 m!1431449))

(declare-fun m!1431451 () Bool)

(assert (=> d!161121 m!1431451))

(declare-fun m!1431453 () Bool)

(assert (=> b!1552866 m!1431453))

(declare-fun m!1431455 () Bool)

(assert (=> b!1552861 m!1431455))

(declare-fun m!1431457 () Bool)

(assert (=> b!1552869 m!1431457))

(assert (=> d!160977 d!161121))

(assert (=> b!1552572 d!160987))

(declare-fun d!161123 () Bool)

(declare-fun e!864539 () Bool)

(assert (=> d!161123 e!864539))

(declare-fun res!1063073 () Bool)

(assert (=> d!161123 (=> res!1063073 e!864539)))

(declare-fun lt!669469 () Bool)

(assert (=> d!161123 (= res!1063073 (not lt!669469))))

(declare-fun lt!669468 () Bool)

(assert (=> d!161123 (= lt!669469 lt!669468)))

(declare-fun lt!669467 () Unit!51642)

(declare-fun e!864538 () Unit!51642)

(assert (=> d!161123 (= lt!669467 e!864538)))

(declare-fun c!143065 () Bool)

(assert (=> d!161123 (= c!143065 lt!669468)))

(assert (=> d!161123 (= lt!669468 (containsKey!752 (toList!11267 lt!669350) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!161123 (= (contains!10137 lt!669350 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) lt!669469)))

(declare-fun b!1552870 () Bool)

(declare-fun lt!669466 () Unit!51642)

(assert (=> b!1552870 (= e!864538 lt!669466)))

(assert (=> b!1552870 (= lt!669466 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669350) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> b!1552870 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669350) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun b!1552871 () Bool)

(declare-fun Unit!51660 () Unit!51642)

(assert (=> b!1552871 (= e!864538 Unit!51660)))

(declare-fun b!1552872 () Bool)

(assert (=> b!1552872 (= e!864539 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669350) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (= (and d!161123 c!143065) b!1552870))

(assert (= (and d!161123 (not c!143065)) b!1552871))

(assert (= (and d!161123 (not res!1063073)) b!1552872))

(declare-fun m!1431459 () Bool)

(assert (=> d!161123 m!1431459))

(declare-fun m!1431461 () Bool)

(assert (=> b!1552870 m!1431461))

(assert (=> b!1552870 m!1431117))

(assert (=> b!1552870 m!1431117))

(declare-fun m!1431463 () Bool)

(assert (=> b!1552870 m!1431463))

(assert (=> b!1552872 m!1431117))

(assert (=> b!1552872 m!1431117))

(assert (=> b!1552872 m!1431463))

(assert (=> d!160981 d!161123))

(declare-fun b!1552874 () Bool)

(declare-fun e!864540 () Option!809)

(declare-fun e!864541 () Option!809)

(assert (=> b!1552874 (= e!864540 e!864541)))

(declare-fun c!143067 () Bool)

(assert (=> b!1552874 (= c!143067 (and ((_ is Cons!36357) lt!669348) (not (= (_1!12451 (h!37803 lt!669348)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))))

(declare-fun d!161125 () Bool)

(declare-fun c!143066 () Bool)

(assert (=> d!161125 (= c!143066 (and ((_ is Cons!36357) lt!669348) (= (_1!12451 (h!37803 lt!669348)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (=> d!161125 (= (getValueByKey!734 lt!669348 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) e!864540)))

(declare-fun b!1552873 () Bool)

(assert (=> b!1552873 (= e!864540 (Some!808 (_2!12451 (h!37803 lt!669348))))))

(declare-fun b!1552875 () Bool)

(assert (=> b!1552875 (= e!864541 (getValueByKey!734 (t!51086 lt!669348) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun b!1552876 () Bool)

(assert (=> b!1552876 (= e!864541 None!807)))

(assert (= (and d!161125 c!143066) b!1552873))

(assert (= (and d!161125 (not c!143066)) b!1552874))

(assert (= (and b!1552874 c!143067) b!1552875))

(assert (= (and b!1552874 (not c!143067)) b!1552876))

(declare-fun m!1431465 () Bool)

(assert (=> b!1552875 m!1431465))

(assert (=> d!160981 d!161125))

(declare-fun d!161127 () Bool)

(assert (=> d!161127 (= (getValueByKey!734 lt!669348 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (Some!808 (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun lt!669470 () Unit!51642)

(assert (=> d!161127 (= lt!669470 (choose!2044 lt!669348 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun e!864542 () Bool)

(assert (=> d!161127 e!864542))

(declare-fun res!1063074 () Bool)

(assert (=> d!161127 (=> (not res!1063074) (not e!864542))))

(assert (=> d!161127 (= res!1063074 (isStrictlySorted!883 lt!669348))))

(assert (=> d!161127 (= (lemmaContainsTupThenGetReturnValue!374 lt!669348 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) lt!669470)))

(declare-fun b!1552877 () Bool)

(declare-fun res!1063075 () Bool)

(assert (=> b!1552877 (=> (not res!1063075) (not e!864542))))

(assert (=> b!1552877 (= res!1063075 (containsKey!752 lt!669348 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun b!1552878 () Bool)

(assert (=> b!1552878 (= e!864542 (contains!10139 lt!669348 (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (= (and d!161127 res!1063074) b!1552877))

(assert (= (and b!1552877 res!1063075) b!1552878))

(assert (=> d!161127 m!1431111))

(declare-fun m!1431467 () Bool)

(assert (=> d!161127 m!1431467))

(declare-fun m!1431469 () Bool)

(assert (=> d!161127 m!1431469))

(declare-fun m!1431471 () Bool)

(assert (=> b!1552877 m!1431471))

(declare-fun m!1431473 () Bool)

(assert (=> b!1552878 m!1431473))

(assert (=> d!160981 d!161127))

(declare-fun b!1552879 () Bool)

(declare-fun c!143071 () Bool)

(assert (=> b!1552879 (= c!143071 (and ((_ is Cons!36357) (toList!11267 lt!669255)) (bvsgt (_1!12451 (h!37803 (toList!11267 lt!669255))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun e!864543 () List!36361)

(declare-fun e!864546 () List!36361)

(assert (=> b!1552879 (= e!864543 e!864546)))

(declare-fun b!1552880 () Bool)

(declare-fun e!864545 () Bool)

(declare-fun lt!669471 () List!36361)

(assert (=> b!1552880 (= e!864545 (contains!10139 lt!669471 (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun b!1552881 () Bool)

(declare-fun e!864547 () List!36361)

(assert (=> b!1552881 (= e!864547 e!864543)))

(declare-fun c!143068 () Bool)

(assert (=> b!1552881 (= c!143068 (and ((_ is Cons!36357) (toList!11267 lt!669255)) (= (_1!12451 (h!37803 (toList!11267 lt!669255))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun call!71346 () List!36361)

(declare-fun e!864544 () List!36361)

(declare-fun bm!71343 () Bool)

(declare-fun c!143070 () Bool)

(assert (=> bm!71343 (= call!71346 ($colon$colon!946 e!864544 (ite c!143070 (h!37803 (toList!11267 lt!669255)) (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))))

(declare-fun c!143069 () Bool)

(assert (=> bm!71343 (= c!143069 c!143070)))

(declare-fun b!1552882 () Bool)

(assert (=> b!1552882 (= e!864547 call!71346)))

(declare-fun b!1552883 () Bool)

(declare-fun call!71347 () List!36361)

(assert (=> b!1552883 (= e!864546 call!71347)))

(declare-fun b!1552884 () Bool)

(declare-fun call!71348 () List!36361)

(assert (=> b!1552884 (= e!864543 call!71348)))

(declare-fun d!161129 () Bool)

(assert (=> d!161129 e!864545))

(declare-fun res!1063076 () Bool)

(assert (=> d!161129 (=> (not res!1063076) (not e!864545))))

(assert (=> d!161129 (= res!1063076 (isStrictlySorted!883 lt!669471))))

(assert (=> d!161129 (= lt!669471 e!864547)))

(assert (=> d!161129 (= c!143070 (and ((_ is Cons!36357) (toList!11267 lt!669255)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669255))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (=> d!161129 (isStrictlySorted!883 (toList!11267 lt!669255))))

(assert (=> d!161129 (= (insertStrictlySorted!503 (toList!11267 lt!669255) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) lt!669471)))

(declare-fun b!1552885 () Bool)

(assert (=> b!1552885 (= e!864544 (insertStrictlySorted!503 (t!51086 (toList!11267 lt!669255)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun b!1552886 () Bool)

(assert (=> b!1552886 (= e!864544 (ite c!143068 (t!51086 (toList!11267 lt!669255)) (ite c!143071 (Cons!36357 (h!37803 (toList!11267 lt!669255)) (t!51086 (toList!11267 lt!669255))) Nil!36358)))))

(declare-fun bm!71344 () Bool)

(assert (=> bm!71344 (= call!71348 call!71346)))

(declare-fun b!1552887 () Bool)

(assert (=> b!1552887 (= e!864546 call!71347)))

(declare-fun b!1552888 () Bool)

(declare-fun res!1063077 () Bool)

(assert (=> b!1552888 (=> (not res!1063077) (not e!864545))))

(assert (=> b!1552888 (= res!1063077 (containsKey!752 lt!669471 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun bm!71345 () Bool)

(assert (=> bm!71345 (= call!71347 call!71348)))

(assert (= (and d!161129 c!143070) b!1552882))

(assert (= (and d!161129 (not c!143070)) b!1552881))

(assert (= (and b!1552881 c!143068) b!1552884))

(assert (= (and b!1552881 (not c!143068)) b!1552879))

(assert (= (and b!1552879 c!143071) b!1552883))

(assert (= (and b!1552879 (not c!143071)) b!1552887))

(assert (= (or b!1552883 b!1552887) bm!71345))

(assert (= (or b!1552884 bm!71345) bm!71344))

(assert (= (or b!1552882 bm!71344) bm!71343))

(assert (= (and bm!71343 c!143069) b!1552885))

(assert (= (and bm!71343 (not c!143069)) b!1552886))

(assert (= (and d!161129 res!1063076) b!1552888))

(assert (= (and b!1552888 res!1063077) b!1552880))

(declare-fun m!1431475 () Bool)

(assert (=> bm!71343 m!1431475))

(declare-fun m!1431477 () Bool)

(assert (=> d!161129 m!1431477))

(assert (=> d!161129 m!1431451))

(declare-fun m!1431479 () Bool)

(assert (=> b!1552885 m!1431479))

(declare-fun m!1431481 () Bool)

(assert (=> b!1552880 m!1431481))

(declare-fun m!1431483 () Bool)

(assert (=> b!1552888 m!1431483))

(assert (=> d!160981 d!161129))

(declare-fun d!161131 () Bool)

(declare-fun e!864549 () Bool)

(assert (=> d!161131 e!864549))

(declare-fun res!1063078 () Bool)

(assert (=> d!161131 (=> res!1063078 e!864549)))

(declare-fun lt!669475 () Bool)

(assert (=> d!161131 (= res!1063078 (not lt!669475))))

(declare-fun lt!669474 () Bool)

(assert (=> d!161131 (= lt!669475 lt!669474)))

(declare-fun lt!669473 () Unit!51642)

(declare-fun e!864548 () Unit!51642)

(assert (=> d!161131 (= lt!669473 e!864548)))

(declare-fun c!143072 () Bool)

(assert (=> d!161131 (= c!143072 lt!669474)))

(assert (=> d!161131 (= lt!669474 (containsKey!752 (toList!11267 lt!669321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!161131 (= (contains!10137 lt!669321 #b1000000000000000000000000000000000000000000000000000000000000000) lt!669475)))

(declare-fun b!1552889 () Bool)

(declare-fun lt!669472 () Unit!51642)

(assert (=> b!1552889 (= e!864548 lt!669472)))

(assert (=> b!1552889 (= lt!669472 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1552889 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1552890 () Bool)

(declare-fun Unit!51661 () Unit!51642)

(assert (=> b!1552890 (= e!864548 Unit!51661)))

(declare-fun b!1552891 () Bool)

(assert (=> b!1552891 (= e!864549 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669321) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!161131 c!143072) b!1552889))

(assert (= (and d!161131 (not c!143072)) b!1552890))

(assert (= (and d!161131 (not res!1063078)) b!1552891))

(declare-fun m!1431485 () Bool)

(assert (=> d!161131 m!1431485))

(declare-fun m!1431487 () Bool)

(assert (=> b!1552889 m!1431487))

(declare-fun m!1431489 () Bool)

(assert (=> b!1552889 m!1431489))

(assert (=> b!1552889 m!1431489))

(declare-fun m!1431491 () Bool)

(assert (=> b!1552889 m!1431491))

(assert (=> b!1552891 m!1431489))

(assert (=> b!1552891 m!1431489))

(assert (=> b!1552891 m!1431491))

(assert (=> b!1552573 d!161131))

(declare-fun d!161133 () Bool)

(declare-fun isEmpty!1136 (List!36361) Bool)

(assert (=> d!161133 (= (isEmpty!1134 lt!669321) (isEmpty!1136 (toList!11267 lt!669321)))))

(declare-fun bs!44605 () Bool)

(assert (= bs!44605 d!161133))

(declare-fun m!1431493 () Bool)

(assert (=> bs!44605 m!1431493))

(assert (=> b!1552577 d!161133))

(assert (=> d!160967 d!160965))

(assert (=> d!160967 d!160977))

(assert (=> d!160967 d!161047))

(declare-fun d!161135 () Bool)

(assert (=> d!161135 (= (apply!1140 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49984 _keys!618) from!762)) (apply!1140 lt!669255 (select (arr!49984 _keys!618) from!762)))))

(assert (=> d!161135 true))

(declare-fun _$34!1189 () Unit!51642)

(assert (=> d!161135 (= (choose!2042 lt!669255 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49984 _keys!618) from!762)) _$34!1189)))

(declare-fun bs!44606 () Bool)

(assert (= bs!44606 d!161135))

(assert (=> bs!44606 m!1430973))

(assert (=> bs!44606 m!1430973))

(assert (=> bs!44606 m!1430943))

(assert (=> bs!44606 m!1430979))

(assert (=> bs!44606 m!1430943))

(assert (=> bs!44606 m!1430975))

(assert (=> d!160967 d!161135))

(assert (=> d!160967 d!160963))

(declare-fun d!161137 () Bool)

(declare-fun res!1063079 () Bool)

(declare-fun e!864550 () Bool)

(assert (=> d!161137 (=> res!1063079 e!864550)))

(assert (=> d!161137 (= res!1063079 (and ((_ is Cons!36357) (toList!11267 lt!669252)) (= (_1!12451 (h!37803 (toList!11267 lt!669252))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161137 (= (containsKey!752 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762)) e!864550)))

(declare-fun b!1552892 () Bool)

(declare-fun e!864551 () Bool)

(assert (=> b!1552892 (= e!864550 e!864551)))

(declare-fun res!1063080 () Bool)

(assert (=> b!1552892 (=> (not res!1063080) (not e!864551))))

(assert (=> b!1552892 (= res!1063080 (and (or (not ((_ is Cons!36357) (toList!11267 lt!669252))) (bvsle (_1!12451 (h!37803 (toList!11267 lt!669252))) (select (arr!49984 _keys!618) from!762))) ((_ is Cons!36357) (toList!11267 lt!669252)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669252))) (select (arr!49984 _keys!618) from!762))))))

(declare-fun b!1552893 () Bool)

(assert (=> b!1552893 (= e!864551 (containsKey!752 (t!51086 (toList!11267 lt!669252)) (select (arr!49984 _keys!618) from!762)))))

(assert (= (and d!161137 (not res!1063079)) b!1552892))

(assert (= (and b!1552892 res!1063080) b!1552893))

(assert (=> b!1552893 m!1430943))

(declare-fun m!1431495 () Bool)

(assert (=> b!1552893 m!1431495))

(assert (=> d!160983 d!161137))

(declare-fun d!161139 () Bool)

(declare-fun res!1063081 () Bool)

(declare-fun e!864552 () Bool)

(assert (=> d!161139 (=> res!1063081 e!864552)))

(assert (=> d!161139 (= res!1063081 (and ((_ is Cons!36357) (toList!11267 lt!669252)) (= (_1!12451 (h!37803 (toList!11267 lt!669252))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161139 (= (containsKey!752 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000) e!864552)))

(declare-fun b!1552894 () Bool)

(declare-fun e!864553 () Bool)

(assert (=> b!1552894 (= e!864552 e!864553)))

(declare-fun res!1063082 () Bool)

(assert (=> b!1552894 (=> (not res!1063082) (not e!864553))))

(assert (=> b!1552894 (= res!1063082 (and (or (not ((_ is Cons!36357) (toList!11267 lt!669252))) (bvsle (_1!12451 (h!37803 (toList!11267 lt!669252))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36357) (toList!11267 lt!669252)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669252))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1552895 () Bool)

(assert (=> b!1552895 (= e!864553 (containsKey!752 (t!51086 (toList!11267 lt!669252)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!161139 (not res!1063081)) b!1552894))

(assert (= (and b!1552894 res!1063082) b!1552895))

(declare-fun m!1431497 () Bool)

(assert (=> b!1552895 m!1431497))

(assert (=> d!160985 d!161139))

(declare-fun d!161141 () Bool)

(declare-fun lt!669476 () Bool)

(assert (=> d!161141 (= lt!669476 (select (content!797 (toList!11267 lt!669334)) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun e!864554 () Bool)

(assert (=> d!161141 (= lt!669476 e!864554)))

(declare-fun res!1063083 () Bool)

(assert (=> d!161141 (=> (not res!1063083) (not e!864554))))

(assert (=> d!161141 (= res!1063083 ((_ is Cons!36357) (toList!11267 lt!669334)))))

(assert (=> d!161141 (= (contains!10139 (toList!11267 lt!669334) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) lt!669476)))

(declare-fun b!1552896 () Bool)

(declare-fun e!864555 () Bool)

(assert (=> b!1552896 (= e!864554 e!864555)))

(declare-fun res!1063084 () Bool)

(assert (=> b!1552896 (=> res!1063084 e!864555)))

(assert (=> b!1552896 (= res!1063084 (= (h!37803 (toList!11267 lt!669334)) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1552897 () Bool)

(assert (=> b!1552897 (= e!864555 (contains!10139 (t!51086 (toList!11267 lt!669334)) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(assert (= (and d!161141 res!1063083) b!1552896))

(assert (= (and b!1552896 (not res!1063084)) b!1552897))

(declare-fun m!1431499 () Bool)

(assert (=> d!161141 m!1431499))

(declare-fun m!1431501 () Bool)

(assert (=> d!161141 m!1431501))

(declare-fun m!1431503 () Bool)

(assert (=> b!1552897 m!1431503))

(assert (=> b!1552589 d!161141))

(declare-fun d!161143 () Bool)

(assert (=> d!161143 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!669477 () Unit!51642)

(assert (=> d!161143 (= lt!669477 (choose!2046 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!864556 () Bool)

(assert (=> d!161143 e!864556))

(declare-fun res!1063085 () Bool)

(assert (=> d!161143 (=> (not res!1063085) (not e!864556))))

(assert (=> d!161143 (= res!1063085 (isStrictlySorted!883 (toList!11267 lt!669252)))))

(assert (=> d!161143 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000) lt!669477)))

(declare-fun b!1552898 () Bool)

(assert (=> b!1552898 (= e!864556 (containsKey!752 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!161143 res!1063085) b!1552898))

(assert (=> d!161143 m!1431149))

(assert (=> d!161143 m!1431149))

(assert (=> d!161143 m!1431185))

(declare-fun m!1431505 () Bool)

(assert (=> d!161143 m!1431505))

(assert (=> d!161143 m!1431391))

(assert (=> b!1552898 m!1431181))

(assert (=> b!1552632 d!161143))

(declare-fun d!161145 () Bool)

(assert (=> d!161145 (= (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!44607 () Bool)

(assert (= bs!44607 d!161145))

(assert (=> bs!44607 m!1431149))

(declare-fun m!1431507 () Bool)

(assert (=> bs!44607 m!1431507))

(assert (=> b!1552632 d!161145))

(assert (=> b!1552632 d!161051))

(assert (=> b!1552583 d!160987))

(declare-fun b!1552900 () Bool)

(declare-fun e!864557 () Option!809)

(declare-fun e!864558 () Option!809)

(assert (=> b!1552900 (= e!864557 e!864558)))

(declare-fun c!143074 () Bool)

(assert (=> b!1552900 (= c!143074 (and ((_ is Cons!36357) (toList!11267 lt!669350)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669350))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))))

(declare-fun d!161147 () Bool)

(declare-fun c!143073 () Bool)

(assert (=> d!161147 (= c!143073 (and ((_ is Cons!36357) (toList!11267 lt!669350)) (= (_1!12451 (h!37803 (toList!11267 lt!669350))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (=> d!161147 (= (getValueByKey!734 (toList!11267 lt!669350) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) e!864557)))

(declare-fun b!1552899 () Bool)

(assert (=> b!1552899 (= e!864557 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669350)))))))

(declare-fun b!1552901 () Bool)

(assert (=> b!1552901 (= e!864558 (getValueByKey!734 (t!51086 (toList!11267 lt!669350)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun b!1552902 () Bool)

(assert (=> b!1552902 (= e!864558 None!807)))

(assert (= (and d!161147 c!143073) b!1552899))

(assert (= (and d!161147 (not c!143073)) b!1552900))

(assert (= (and b!1552900 c!143074) b!1552901))

(assert (= (and b!1552900 (not c!143074)) b!1552902))

(declare-fun m!1431509 () Bool)

(assert (=> b!1552901 m!1431509))

(assert (=> b!1552599 d!161147))

(assert (=> b!1552634 d!161145))

(assert (=> b!1552634 d!161051))

(declare-fun d!161149 () Bool)

(assert (=> d!161149 (= (get!26067 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1552631 d!161149))

(declare-fun d!161151 () Bool)

(assert (=> d!161151 (= (get!26065 (getValueByKey!734 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762))) (v!21987 (getValueByKey!734 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161005 d!161151))

(assert (=> d!161005 d!161095))

(declare-fun d!161153 () Bool)

(declare-fun lt!669478 () Bool)

(assert (=> d!161153 (= lt!669478 (select (content!797 (toList!11267 lt!669362)) (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun e!864559 () Bool)

(assert (=> d!161153 (= lt!669478 e!864559)))

(declare-fun res!1063086 () Bool)

(assert (=> d!161153 (=> (not res!1063086) (not e!864559))))

(assert (=> d!161153 (= res!1063086 ((_ is Cons!36357) (toList!11267 lt!669362)))))

(assert (=> d!161153 (= (contains!10139 (toList!11267 lt!669362) (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!669478)))

(declare-fun b!1552903 () Bool)

(declare-fun e!864560 () Bool)

(assert (=> b!1552903 (= e!864559 e!864560)))

(declare-fun res!1063087 () Bool)

(assert (=> b!1552903 (=> res!1063087 e!864560)))

(assert (=> b!1552903 (= res!1063087 (= (h!37803 (toList!11267 lt!669362)) (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552904 () Bool)

(assert (=> b!1552904 (= e!864560 (contains!10139 (t!51086 (toList!11267 lt!669362)) (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!161153 res!1063086) b!1552903))

(assert (= (and b!1552903 (not res!1063087)) b!1552904))

(declare-fun m!1431511 () Bool)

(assert (=> d!161153 m!1431511))

(declare-fun m!1431513 () Bool)

(assert (=> d!161153 m!1431513))

(declare-fun m!1431515 () Bool)

(assert (=> b!1552904 m!1431515))

(assert (=> b!1552608 d!161153))

(declare-fun d!161155 () Bool)

(declare-fun lt!669479 () Bool)

(assert (=> d!161155 (= lt!669479 (select (content!797 (toList!11267 lt!669366)) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun e!864561 () Bool)

(assert (=> d!161155 (= lt!669479 e!864561)))

(declare-fun res!1063088 () Bool)

(assert (=> d!161155 (=> (not res!1063088) (not e!864561))))

(assert (=> d!161155 (= res!1063088 ((_ is Cons!36357) (toList!11267 lt!669366)))))

(assert (=> d!161155 (= (contains!10139 (toList!11267 lt!669366) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) lt!669479)))

(declare-fun b!1552905 () Bool)

(declare-fun e!864562 () Bool)

(assert (=> b!1552905 (= e!864561 e!864562)))

(declare-fun res!1063089 () Bool)

(assert (=> b!1552905 (=> res!1063089 e!864562)))

(assert (=> b!1552905 (= res!1063089 (= (h!37803 (toList!11267 lt!669366)) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1552906 () Bool)

(assert (=> b!1552906 (= e!864562 (contains!10139 (t!51086 (toList!11267 lt!669366)) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(assert (= (and d!161155 res!1063088) b!1552905))

(assert (= (and b!1552905 (not res!1063089)) b!1552906))

(declare-fun m!1431517 () Bool)

(assert (=> d!161155 m!1431517))

(declare-fun m!1431519 () Bool)

(assert (=> d!161155 m!1431519))

(declare-fun m!1431521 () Bool)

(assert (=> b!1552906 m!1431521))

(assert (=> b!1552625 d!161155))

(declare-fun b!1552907 () Bool)

(declare-fun e!864565 () Bool)

(declare-fun e!864563 () Bool)

(assert (=> b!1552907 (= e!864565 e!864563)))

(declare-fun res!1063091 () Bool)

(assert (=> b!1552907 (=> (not res!1063091) (not e!864563))))

(declare-fun e!864566 () Bool)

(assert (=> b!1552907 (= res!1063091 (not e!864566))))

(declare-fun res!1063090 () Bool)

(assert (=> b!1552907 (=> (not res!1063090) (not e!864566))))

(assert (=> b!1552907 (= res!1063090 (validKeyInArray!0 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1552908 () Bool)

(declare-fun e!864564 () Bool)

(declare-fun call!71349 () Bool)

(assert (=> b!1552908 (= e!864564 call!71349)))

(declare-fun d!161157 () Bool)

(declare-fun res!1063092 () Bool)

(assert (=> d!161157 (=> res!1063092 e!864565)))

(assert (=> d!161157 (= res!1063092 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(assert (=> d!161157 (= (arrayNoDuplicates!0 _keys!618 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359)) e!864565)))

(declare-fun b!1552909 () Bool)

(assert (=> b!1552909 (= e!864563 e!864564)))

(declare-fun c!143075 () Bool)

(assert (=> b!1552909 (= c!143075 (validKeyInArray!0 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!71346 () Bool)

(assert (=> bm!71346 (= call!71349 (arrayNoDuplicates!0 _keys!618 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!143075 (Cons!36358 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359)) (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359))))))

(declare-fun b!1552910 () Bool)

(assert (=> b!1552910 (= e!864566 (contains!10140 (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359) (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1552911 () Bool)

(assert (=> b!1552911 (= e!864564 call!71349)))

(assert (= (and d!161157 (not res!1063092)) b!1552907))

(assert (= (and b!1552907 res!1063090) b!1552910))

(assert (= (and b!1552907 res!1063091) b!1552909))

(assert (= (and b!1552909 c!143075) b!1552911))

(assert (= (and b!1552909 (not c!143075)) b!1552908))

(assert (= (or b!1552911 b!1552908) bm!71346))

(assert (=> b!1552907 m!1431277))

(assert (=> b!1552907 m!1431277))

(assert (=> b!1552907 m!1431285))

(assert (=> b!1552909 m!1431277))

(assert (=> b!1552909 m!1431277))

(assert (=> b!1552909 m!1431285))

(assert (=> bm!71346 m!1431277))

(declare-fun m!1431523 () Bool)

(assert (=> bm!71346 m!1431523))

(assert (=> b!1552910 m!1431277))

(assert (=> b!1552910 m!1431277))

(declare-fun m!1431525 () Bool)

(assert (=> b!1552910 m!1431525))

(assert (=> bm!71322 d!161157))

(declare-fun b!1552913 () Bool)

(declare-fun e!864568 () Bool)

(assert (=> b!1552913 (= e!864568 tp_is_empty!38211)))

(declare-fun b!1552912 () Bool)

(declare-fun e!864567 () Bool)

(assert (=> b!1552912 (= e!864567 tp_is_empty!38211)))

(declare-fun condMapEmpty!59039 () Bool)

(declare-fun mapDefault!59039 () ValueCell!18195)

(assert (=> mapNonEmpty!59038 (= condMapEmpty!59039 (= mapRest!59038 ((as const (Array (_ BitVec 32) ValueCell!18195)) mapDefault!59039)))))

(declare-fun mapRes!59039 () Bool)

(assert (=> mapNonEmpty!59038 (= tp!112079 (and e!864568 mapRes!59039))))

(declare-fun mapIsEmpty!59039 () Bool)

(assert (=> mapIsEmpty!59039 mapRes!59039))

(declare-fun mapNonEmpty!59039 () Bool)

(declare-fun tp!112080 () Bool)

(assert (=> mapNonEmpty!59039 (= mapRes!59039 (and tp!112080 e!864567))))

(declare-fun mapValue!59039 () ValueCell!18195)

(declare-fun mapKey!59039 () (_ BitVec 32))

(declare-fun mapRest!59039 () (Array (_ BitVec 32) ValueCell!18195))

(assert (=> mapNonEmpty!59039 (= mapRest!59038 (store mapRest!59039 mapKey!59039 mapValue!59039))))

(assert (= (and mapNonEmpty!59038 condMapEmpty!59039) mapIsEmpty!59039))

(assert (= (and mapNonEmpty!59038 (not condMapEmpty!59039)) mapNonEmpty!59039))

(assert (= (and mapNonEmpty!59039 ((_ is ValueCellFull!18195) mapValue!59039)) b!1552912))

(assert (= (and mapNonEmpty!59038 ((_ is ValueCellFull!18195) mapDefault!59039)) b!1552913))

(declare-fun m!1431527 () Bool)

(assert (=> mapNonEmpty!59039 m!1431527))

(declare-fun b_lambda!24817 () Bool)

(assert (= b_lambda!24815 (or (and start!132340 b_free!31935) b_lambda!24817)))

(declare-fun b_lambda!24819 () Bool)

(assert (= b_lambda!24813 (or (and start!132340 b_free!31935) b_lambda!24819)))

(check-sat (not d!161083) (not d!161105) (not b!1552657) (not b!1552893) (not b!1552851) (not b!1552869) (not b!1552858) (not b!1552907) (not b!1552784) (not d!161063) (not b!1552683) (not d!161121) (not b!1552750) (not b!1552656) (not d!161091) (not b!1552663) (not b!1552779) (not bm!71346) (not b!1552837) (not b!1552850) (not b!1552870) (not d!161141) (not b!1552910) (not d!161065) (not d!161115) (not b_lambda!24817) (not b!1552806) (not b!1552904) (not d!161101) (not b!1552880) (not b!1552888) (not b_lambda!24803) (not b!1552761) (not b!1552777) (not b!1552848) (not b!1552885) (not b!1552818) (not d!161081) (not d!161155) (not b!1552875) (not b!1552815) (not d!161143) (not b_lambda!24809) (not b!1552692) (not b!1552853) (not b!1552665) (not d!161055) (not b!1552716) (not b!1552767) (not b!1552775) (not b!1552754) (not b!1552817) (not d!161127) (not d!161013) (not b!1552872) (not b!1552755) (not b!1552861) (not bm!71343) (not b!1552814) (not b!1552672) (not d!161133) tp_is_empty!38211 (not d!161059) (not b!1552889) (not d!161077) (not b!1552765) (not d!161135) (not b!1552898) (not b!1552859) (not bm!71333) (not d!161119) (not b!1552856) (not bm!71337) (not b!1552660) (not d!161039) (not d!161033) (not d!161129) (not b!1552909) (not bm!71340) (not b!1552655) (not d!161111) (not d!161047) (not b!1552816) (not b!1552753) (not b!1552878) (not b!1552821) (not b!1552745) (not d!161093) (not b!1552770) (not b_lambda!24811) (not d!161045) (not d!161027) (not d!161085) (not bm!71326) (not b!1552795) (not b!1552792) (not bm!71336) (not b!1552723) (not d!161123) (not b!1552901) (not b!1552782) (not b!1552722) (not b!1552906) (not d!161043) (not b!1552711) (not d!161113) (not b!1552802) (not b!1552832) (not b!1552758) (not d!161035) (not b!1552891) (not d!161053) (not d!161023) (not b!1552822) (not d!161041) (not b!1552835) (not b!1552760) (not b!1552713) (not b_next!31935) (not b!1552787) (not d!161145) (not b!1552798) (not mapNonEmpty!59039) (not b!1552661) (not b!1552895) (not b!1552785) (not d!161029) b_and!51399 (not b_lambda!24819) (not d!161079) (not b!1552666) (not b!1552763) (not d!161131) (not b!1552825) (not b!1552706) (not b!1552897) (not d!161087) (not d!161153) (not d!161097) (not b!1552847) (not b!1552812) (not b!1552840) (not b!1552686) (not b!1552877) (not b!1552866))
(check-sat b_and!51399 (not b_next!31935))
(get-model)

(declare-fun d!161159 () Bool)

(assert (=> d!161159 (= (isDefined!546 (getValueByKey!734 (toList!11267 lt!669321) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669321) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!44608 () Bool)

(assert (= bs!44608 d!161159))

(assert (=> bs!44608 m!1431489))

(declare-fun m!1431529 () Bool)

(assert (=> bs!44608 m!1431529))

(assert (=> b!1552891 d!161159))

(declare-fun b!1552915 () Bool)

(declare-fun e!864569 () Option!809)

(declare-fun e!864570 () Option!809)

(assert (=> b!1552915 (= e!864569 e!864570)))

(declare-fun c!143077 () Bool)

(assert (=> b!1552915 (= c!143077 (and ((_ is Cons!36357) (toList!11267 lt!669321)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669321))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!161161 () Bool)

(declare-fun c!143076 () Bool)

(assert (=> d!161161 (= c!143076 (and ((_ is Cons!36357) (toList!11267 lt!669321)) (= (_1!12451 (h!37803 (toList!11267 lt!669321))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161161 (= (getValueByKey!734 (toList!11267 lt!669321) #b1000000000000000000000000000000000000000000000000000000000000000) e!864569)))

(declare-fun b!1552914 () Bool)

(assert (=> b!1552914 (= e!864569 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669321)))))))

(declare-fun b!1552916 () Bool)

(assert (=> b!1552916 (= e!864570 (getValueByKey!734 (t!51086 (toList!11267 lt!669321)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1552917 () Bool)

(assert (=> b!1552917 (= e!864570 None!807)))

(assert (= (and d!161161 c!143076) b!1552914))

(assert (= (and d!161161 (not c!143076)) b!1552915))

(assert (= (and b!1552915 c!143077) b!1552916))

(assert (= (and b!1552915 (not c!143077)) b!1552917))

(declare-fun m!1431531 () Bool)

(assert (=> b!1552916 m!1431531))

(assert (=> b!1552891 d!161161))

(declare-fun d!161163 () Bool)

(declare-fun c!143080 () Bool)

(assert (=> d!161163 (= c!143080 ((_ is Nil!36358) (toList!11267 lt!669334)))))

(declare-fun e!864573 () (InoxSet tuple2!24882))

(assert (=> d!161163 (= (content!797 (toList!11267 lt!669334)) e!864573)))

(declare-fun b!1552922 () Bool)

(assert (=> b!1552922 (= e!864573 ((as const (Array tuple2!24882 Bool)) false))))

(declare-fun b!1552923 () Bool)

(assert (=> b!1552923 (= e!864573 ((_ map or) (store ((as const (Array tuple2!24882 Bool)) false) (h!37803 (toList!11267 lt!669334)) true) (content!797 (t!51086 (toList!11267 lt!669334)))))))

(assert (= (and d!161163 c!143080) b!1552922))

(assert (= (and d!161163 (not c!143080)) b!1552923))

(declare-fun m!1431533 () Bool)

(assert (=> b!1552923 m!1431533))

(declare-fun m!1431535 () Bool)

(assert (=> b!1552923 m!1431535))

(assert (=> d!161141 d!161163))

(assert (=> d!161023 d!161025))

(declare-fun d!161165 () Bool)

(assert (=> d!161165 (arrayContainsKey!0 _keys!618 lt!669379 #b00000000000000000000000000000000)))

(assert (=> d!161165 true))

(declare-fun _$60!454 () Unit!51642)

(assert (=> d!161165 (= (choose!13 _keys!618 lt!669379 #b00000000000000000000000000000000) _$60!454)))

(declare-fun bs!44609 () Bool)

(assert (= bs!44609 d!161165))

(assert (=> bs!44609 m!1431189))

(assert (=> d!161023 d!161165))

(declare-fun d!161167 () Bool)

(assert (=> d!161167 (= (isDefined!546 (getValueByKey!734 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762))) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun bs!44610 () Bool)

(assert (= bs!44610 d!161167))

(assert (=> bs!44610 m!1431289))

(declare-fun m!1431537 () Bool)

(assert (=> bs!44610 m!1431537))

(assert (=> b!1552760 d!161167))

(declare-fun b!1552925 () Bool)

(declare-fun e!864574 () Option!809)

(declare-fun e!864575 () Option!809)

(assert (=> b!1552925 (= e!864574 e!864575)))

(declare-fun c!143082 () Bool)

(assert (=> b!1552925 (= c!143082 (and ((_ is Cons!36357) (toList!11267 lt!669321)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669321))) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun d!161169 () Bool)

(declare-fun c!143081 () Bool)

(assert (=> d!161169 (= c!143081 (and ((_ is Cons!36357) (toList!11267 lt!669321)) (= (_1!12451 (h!37803 (toList!11267 lt!669321))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161169 (= (getValueByKey!734 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762)) e!864574)))

(declare-fun b!1552924 () Bool)

(assert (=> b!1552924 (= e!864574 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669321)))))))

(declare-fun b!1552926 () Bool)

(assert (=> b!1552926 (= e!864575 (getValueByKey!734 (t!51086 (toList!11267 lt!669321)) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1552927 () Bool)

(assert (=> b!1552927 (= e!864575 None!807)))

(assert (= (and d!161169 c!143081) b!1552924))

(assert (= (and d!161169 (not c!143081)) b!1552925))

(assert (= (and b!1552925 c!143082) b!1552926))

(assert (= (and b!1552925 (not c!143082)) b!1552927))

(assert (=> b!1552926 m!1430943))

(declare-fun m!1431539 () Bool)

(assert (=> b!1552926 m!1431539))

(assert (=> b!1552760 d!161169))

(declare-fun d!161171 () Bool)

(declare-fun res!1063093 () Bool)

(declare-fun e!864576 () Bool)

(assert (=> d!161171 (=> res!1063093 e!864576)))

(assert (=> d!161171 (= res!1063093 (and ((_ is Cons!36357) (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316)))) (= (_1!12451 (h!37803 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))))) lt!669319)))))

(assert (=> d!161171 (= (containsKey!752 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))) lt!669319) e!864576)))

(declare-fun b!1552928 () Bool)

(declare-fun e!864577 () Bool)

(assert (=> b!1552928 (= e!864576 e!864577)))

(declare-fun res!1063094 () Bool)

(assert (=> b!1552928 (=> (not res!1063094) (not e!864577))))

(assert (=> b!1552928 (= res!1063094 (and (or (not ((_ is Cons!36357) (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))))) (bvsle (_1!12451 (h!37803 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))))) lt!669319)) ((_ is Cons!36357) (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316)))) (bvslt (_1!12451 (h!37803 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))))) lt!669319)))))

(declare-fun b!1552929 () Bool)

(assert (=> b!1552929 (= e!864577 (containsKey!752 (t!51086 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316)))) lt!669319))))

(assert (= (and d!161171 (not res!1063093)) b!1552928))

(assert (= (and b!1552928 res!1063094) b!1552929))

(declare-fun m!1431541 () Bool)

(assert (=> b!1552929 m!1431541))

(assert (=> d!161079 d!161171))

(declare-fun d!161173 () Bool)

(assert (=> d!161173 (= (validKeyInArray!0 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1552907 d!161173))

(declare-fun d!161175 () Bool)

(declare-fun e!864579 () Bool)

(assert (=> d!161175 e!864579))

(declare-fun res!1063095 () Bool)

(assert (=> d!161175 (=> res!1063095 e!864579)))

(declare-fun lt!669483 () Bool)

(assert (=> d!161175 (= res!1063095 (not lt!669483))))

(declare-fun lt!669482 () Bool)

(assert (=> d!161175 (= lt!669483 lt!669482)))

(declare-fun lt!669481 () Unit!51642)

(declare-fun e!864578 () Unit!51642)

(assert (=> d!161175 (= lt!669481 e!864578)))

(declare-fun c!143083 () Bool)

(assert (=> d!161175 (= c!143083 lt!669482)))

(assert (=> d!161175 (= lt!669482 (containsKey!752 (toList!11267 lt!669385) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!161175 (= (contains!10137 lt!669385 #b0000000000000000000000000000000000000000000000000000000000000000) lt!669483)))

(declare-fun b!1552930 () Bool)

(declare-fun lt!669480 () Unit!51642)

(assert (=> b!1552930 (= e!864578 lt!669480)))

(assert (=> b!1552930 (= lt!669480 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669385) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1552930 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669385) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1552931 () Bool)

(declare-fun Unit!51662 () Unit!51642)

(assert (=> b!1552931 (= e!864578 Unit!51662)))

(declare-fun b!1552932 () Bool)

(assert (=> b!1552932 (= e!864579 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669385) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!161175 c!143083) b!1552930))

(assert (= (and d!161175 (not c!143083)) b!1552931))

(assert (= (and d!161175 (not res!1063095)) b!1552932))

(declare-fun m!1431543 () Bool)

(assert (=> d!161175 m!1431543))

(declare-fun m!1431545 () Bool)

(assert (=> b!1552930 m!1431545))

(declare-fun m!1431547 () Bool)

(assert (=> b!1552930 m!1431547))

(assert (=> b!1552930 m!1431547))

(declare-fun m!1431549 () Bool)

(assert (=> b!1552930 m!1431549))

(assert (=> b!1552932 m!1431547))

(assert (=> b!1552932 m!1431547))

(assert (=> b!1552932 m!1431549))

(assert (=> d!161013 d!161175))

(assert (=> d!161013 d!160989))

(declare-fun d!161177 () Bool)

(declare-fun res!1063096 () Bool)

(declare-fun e!864580 () Bool)

(assert (=> d!161177 (=> res!1063096 e!864580)))

(assert (=> d!161177 (= res!1063096 (and ((_ is Cons!36357) (toList!11267 lt!669362)) (= (_1!12451 (h!37803 (toList!11267 lt!669362))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(assert (=> d!161177 (= (containsKey!752 (toList!11267 lt!669362) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) e!864580)))

(declare-fun b!1552933 () Bool)

(declare-fun e!864581 () Bool)

(assert (=> b!1552933 (= e!864580 e!864581)))

(declare-fun res!1063097 () Bool)

(assert (=> b!1552933 (=> (not res!1063097) (not e!864581))))

(assert (=> b!1552933 (= res!1063097 (and (or (not ((_ is Cons!36357) (toList!11267 lt!669362))) (bvsle (_1!12451 (h!37803 (toList!11267 lt!669362))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) ((_ is Cons!36357) (toList!11267 lt!669362)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669362))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun b!1552934 () Bool)

(assert (=> b!1552934 (= e!864581 (containsKey!752 (t!51086 (toList!11267 lt!669362)) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (= (and d!161177 (not res!1063096)) b!1552933))

(assert (= (and b!1552933 res!1063097) b!1552934))

(declare-fun m!1431551 () Bool)

(assert (=> b!1552934 m!1431551))

(assert (=> d!161029 d!161177))

(declare-fun d!161179 () Bool)

(declare-fun e!864583 () Bool)

(assert (=> d!161179 e!864583))

(declare-fun res!1063098 () Bool)

(assert (=> d!161179 (=> res!1063098 e!864583)))

(declare-fun lt!669487 () Bool)

(assert (=> d!161179 (= res!1063098 (not lt!669487))))

(declare-fun lt!669486 () Bool)

(assert (=> d!161179 (= lt!669487 lt!669486)))

(declare-fun lt!669485 () Unit!51642)

(declare-fun e!864582 () Unit!51642)

(assert (=> d!161179 (= lt!669485 e!864582)))

(declare-fun c!143084 () Bool)

(assert (=> d!161179 (= c!143084 lt!669486)))

(assert (=> d!161179 (= lt!669486 (containsKey!752 (toList!11267 lt!669440) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!161179 (= (contains!10137 lt!669440 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!669487)))

(declare-fun b!1552935 () Bool)

(declare-fun lt!669484 () Unit!51642)

(assert (=> b!1552935 (= e!864582 lt!669484)))

(assert (=> b!1552935 (= lt!669484 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669440) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!1552935 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669440) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1552936 () Bool)

(declare-fun Unit!51663 () Unit!51642)

(assert (=> b!1552936 (= e!864582 Unit!51663)))

(declare-fun b!1552937 () Bool)

(assert (=> b!1552937 (= e!864583 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669440) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!161179 c!143084) b!1552935))

(assert (= (and d!161179 (not c!143084)) b!1552936))

(assert (= (and d!161179 (not res!1063098)) b!1552937))

(declare-fun m!1431553 () Bool)

(assert (=> d!161179 m!1431553))

(declare-fun m!1431555 () Bool)

(assert (=> b!1552935 m!1431555))

(assert (=> b!1552935 m!1431373))

(assert (=> b!1552935 m!1431373))

(declare-fun m!1431557 () Bool)

(assert (=> b!1552935 m!1431557))

(assert (=> b!1552937 m!1431373))

(assert (=> b!1552937 m!1431373))

(assert (=> b!1552937 m!1431557))

(assert (=> d!161081 d!161179))

(declare-fun b!1552939 () Bool)

(declare-fun e!864584 () Option!809)

(declare-fun e!864585 () Option!809)

(assert (=> b!1552939 (= e!864584 e!864585)))

(declare-fun c!143086 () Bool)

(assert (=> b!1552939 (= c!143086 (and ((_ is Cons!36357) lt!669438) (not (= (_1!12451 (h!37803 lt!669438)) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun d!161181 () Bool)

(declare-fun c!143085 () Bool)

(assert (=> d!161181 (= c!143085 (and ((_ is Cons!36357) lt!669438) (= (_1!12451 (h!37803 lt!669438)) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!161181 (= (getValueByKey!734 lt!669438 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!864584)))

(declare-fun b!1552938 () Bool)

(assert (=> b!1552938 (= e!864584 (Some!808 (_2!12451 (h!37803 lt!669438))))))

(declare-fun b!1552940 () Bool)

(assert (=> b!1552940 (= e!864585 (getValueByKey!734 (t!51086 lt!669438) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1552941 () Bool)

(assert (=> b!1552941 (= e!864585 None!807)))

(assert (= (and d!161181 c!143085) b!1552938))

(assert (= (and d!161181 (not c!143085)) b!1552939))

(assert (= (and b!1552939 c!143086) b!1552940))

(assert (= (and b!1552939 (not c!143086)) b!1552941))

(declare-fun m!1431559 () Bool)

(assert (=> b!1552940 m!1431559))

(assert (=> d!161081 d!161181))

(declare-fun d!161183 () Bool)

(assert (=> d!161183 (= (getValueByKey!734 lt!669438 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!808 (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!669488 () Unit!51642)

(assert (=> d!161183 (= lt!669488 (choose!2044 lt!669438 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!864586 () Bool)

(assert (=> d!161183 e!864586))

(declare-fun res!1063099 () Bool)

(assert (=> d!161183 (=> (not res!1063099) (not e!864586))))

(assert (=> d!161183 (= res!1063099 (isStrictlySorted!883 lt!669438))))

(assert (=> d!161183 (= (lemmaContainsTupThenGetReturnValue!374 lt!669438 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!669488)))

(declare-fun b!1552942 () Bool)

(declare-fun res!1063100 () Bool)

(assert (=> b!1552942 (=> (not res!1063100) (not e!864586))))

(assert (=> b!1552942 (= res!1063100 (containsKey!752 lt!669438 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1552943 () Bool)

(assert (=> b!1552943 (= e!864586 (contains!10139 lt!669438 (tuple2!24883 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!161183 res!1063099) b!1552942))

(assert (= (and b!1552942 res!1063100) b!1552943))

(assert (=> d!161183 m!1431367))

(declare-fun m!1431561 () Bool)

(assert (=> d!161183 m!1431561))

(declare-fun m!1431563 () Bool)

(assert (=> d!161183 m!1431563))

(declare-fun m!1431565 () Bool)

(assert (=> b!1552942 m!1431565))

(declare-fun m!1431567 () Bool)

(assert (=> b!1552943 m!1431567))

(assert (=> d!161081 d!161183))

(declare-fun c!143090 () Bool)

(declare-fun b!1552944 () Bool)

(assert (=> b!1552944 (= c!143090 (and ((_ is Cons!36357) (toList!11267 call!71322)) (bvsgt (_1!12451 (h!37803 (toList!11267 call!71322))) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!864587 () List!36361)

(declare-fun e!864590 () List!36361)

(assert (=> b!1552944 (= e!864587 e!864590)))

(declare-fun lt!669489 () List!36361)

(declare-fun b!1552945 () Bool)

(declare-fun e!864589 () Bool)

(assert (=> b!1552945 (= e!864589 (contains!10139 lt!669489 (tuple2!24883 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1552946 () Bool)

(declare-fun e!864591 () List!36361)

(assert (=> b!1552946 (= e!864591 e!864587)))

(declare-fun c!143087 () Bool)

(assert (=> b!1552946 (= c!143087 (and ((_ is Cons!36357) (toList!11267 call!71322)) (= (_1!12451 (h!37803 (toList!11267 call!71322))) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun call!71350 () List!36361)

(declare-fun c!143089 () Bool)

(declare-fun e!864588 () List!36361)

(declare-fun bm!71347 () Bool)

(assert (=> bm!71347 (= call!71350 ($colon$colon!946 e!864588 (ite c!143089 (h!37803 (toList!11267 call!71322)) (tuple2!24883 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!143088 () Bool)

(assert (=> bm!71347 (= c!143088 c!143089)))

(declare-fun b!1552947 () Bool)

(assert (=> b!1552947 (= e!864591 call!71350)))

(declare-fun b!1552948 () Bool)

(declare-fun call!71351 () List!36361)

(assert (=> b!1552948 (= e!864590 call!71351)))

(declare-fun b!1552949 () Bool)

(declare-fun call!71352 () List!36361)

(assert (=> b!1552949 (= e!864587 call!71352)))

(declare-fun d!161185 () Bool)

(assert (=> d!161185 e!864589))

(declare-fun res!1063101 () Bool)

(assert (=> d!161185 (=> (not res!1063101) (not e!864589))))

(assert (=> d!161185 (= res!1063101 (isStrictlySorted!883 lt!669489))))

(assert (=> d!161185 (= lt!669489 e!864591)))

(assert (=> d!161185 (= c!143089 (and ((_ is Cons!36357) (toList!11267 call!71322)) (bvslt (_1!12451 (h!37803 (toList!11267 call!71322))) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!161185 (isStrictlySorted!883 (toList!11267 call!71322))))

(assert (=> d!161185 (= (insertStrictlySorted!503 (toList!11267 call!71322) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!669489)))

(declare-fun b!1552950 () Bool)

(assert (=> b!1552950 (= e!864588 (insertStrictlySorted!503 (t!51086 (toList!11267 call!71322)) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1552951 () Bool)

(assert (=> b!1552951 (= e!864588 (ite c!143087 (t!51086 (toList!11267 call!71322)) (ite c!143090 (Cons!36357 (h!37803 (toList!11267 call!71322)) (t!51086 (toList!11267 call!71322))) Nil!36358)))))

(declare-fun bm!71348 () Bool)

(assert (=> bm!71348 (= call!71352 call!71350)))

(declare-fun b!1552952 () Bool)

(assert (=> b!1552952 (= e!864590 call!71351)))

(declare-fun b!1552953 () Bool)

(declare-fun res!1063102 () Bool)

(assert (=> b!1552953 (=> (not res!1063102) (not e!864589))))

(assert (=> b!1552953 (= res!1063102 (containsKey!752 lt!669489 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!71349 () Bool)

(assert (=> bm!71349 (= call!71351 call!71352)))

(assert (= (and d!161185 c!143089) b!1552947))

(assert (= (and d!161185 (not c!143089)) b!1552946))

(assert (= (and b!1552946 c!143087) b!1552949))

(assert (= (and b!1552946 (not c!143087)) b!1552944))

(assert (= (and b!1552944 c!143090) b!1552948))

(assert (= (and b!1552944 (not c!143090)) b!1552952))

(assert (= (or b!1552948 b!1552952) bm!71349))

(assert (= (or b!1552949 bm!71349) bm!71348))

(assert (= (or b!1552947 bm!71348) bm!71347))

(assert (= (and bm!71347 c!143088) b!1552950))

(assert (= (and bm!71347 (not c!143088)) b!1552951))

(assert (= (and d!161185 res!1063101) b!1552953))

(assert (= (and b!1552953 res!1063102) b!1552945))

(declare-fun m!1431569 () Bool)

(assert (=> bm!71347 m!1431569))

(declare-fun m!1431571 () Bool)

(assert (=> d!161185 m!1431571))

(declare-fun m!1431573 () Bool)

(assert (=> d!161185 m!1431573))

(declare-fun m!1431575 () Bool)

(assert (=> b!1552950 m!1431575))

(declare-fun m!1431577 () Bool)

(assert (=> b!1552945 m!1431577))

(declare-fun m!1431579 () Bool)

(assert (=> b!1552953 m!1431579))

(assert (=> d!161081 d!161185))

(declare-fun b!1552954 () Bool)

(declare-fun e!864598 () ListLongMap!22503)

(declare-fun e!864593 () ListLongMap!22503)

(assert (=> b!1552954 (= e!864598 e!864593)))

(declare-fun c!143091 () Bool)

(assert (=> b!1552954 (= c!143091 (validKeyInArray!0 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun call!71353 () ListLongMap!22503)

(declare-fun bm!71350 () Bool)

(assert (=> bm!71350 (= call!71353 (getCurrentListMapNoExtraKeys!6690 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!478))))

(declare-fun b!1552955 () Bool)

(declare-fun res!1063105 () Bool)

(declare-fun e!864594 () Bool)

(assert (=> b!1552955 (=> (not res!1063105) (not e!864594))))

(declare-fun lt!669495 () ListLongMap!22503)

(assert (=> b!1552955 (= res!1063105 (not (contains!10137 lt!669495 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1552956 () Bool)

(assert (=> b!1552956 (and (bvsge (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(assert (=> b!1552956 (and (bvsge (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!50536 _values!470)))))

(declare-fun e!864595 () Bool)

(assert (=> b!1552956 (= e!864595 (= (apply!1140 lt!669495 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001))) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!161187 () Bool)

(assert (=> d!161187 e!864594))

(declare-fun res!1063104 () Bool)

(assert (=> d!161187 (=> (not res!1063104) (not e!864594))))

(assert (=> d!161187 (= res!1063104 (not (contains!10137 lt!669495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161187 (= lt!669495 e!864598)))

(declare-fun c!143094 () Bool)

(assert (=> d!161187 (= c!143094 (bvsge (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(assert (=> d!161187 (validMask!0 mask!926)))

(assert (=> d!161187 (= (getCurrentListMapNoExtraKeys!6690 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!478) lt!669495)))

(declare-fun b!1552957 () Bool)

(assert (=> b!1552957 (= e!864593 call!71353)))

(declare-fun b!1552958 () Bool)

(declare-fun e!864592 () Bool)

(assert (=> b!1552958 (= e!864594 e!864592)))

(declare-fun c!143093 () Bool)

(declare-fun e!864596 () Bool)

(assert (=> b!1552958 (= c!143093 e!864596)))

(declare-fun res!1063106 () Bool)

(assert (=> b!1552958 (=> (not res!1063106) (not e!864596))))

(assert (=> b!1552958 (= res!1063106 (bvslt (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(declare-fun b!1552959 () Bool)

(declare-fun e!864597 () Bool)

(assert (=> b!1552959 (= e!864597 (isEmpty!1134 lt!669495))))

(declare-fun b!1552960 () Bool)

(assert (=> b!1552960 (= e!864592 e!864595)))

(assert (=> b!1552960 (and (bvsge (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(declare-fun res!1063103 () Bool)

(assert (=> b!1552960 (= res!1063103 (contains!10137 lt!669495 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!1552960 (=> (not res!1063103) (not e!864595))))

(declare-fun b!1552961 () Bool)

(assert (=> b!1552961 (= e!864592 e!864597)))

(declare-fun c!143092 () Bool)

(assert (=> b!1552961 (= c!143092 (bvslt (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(declare-fun b!1552962 () Bool)

(assert (=> b!1552962 (= e!864597 (= lt!669495 (getCurrentListMapNoExtraKeys!6690 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!478)))))

(declare-fun b!1552963 () Bool)

(assert (=> b!1552963 (= e!864598 (ListLongMap!22504 Nil!36358))))

(declare-fun b!1552964 () Bool)

(declare-fun lt!669491 () Unit!51642)

(declare-fun lt!669492 () Unit!51642)

(assert (=> b!1552964 (= lt!669491 lt!669492)))

(declare-fun lt!669494 () ListLongMap!22503)

(declare-fun lt!669493 () (_ BitVec 64))

(declare-fun lt!669490 () V!59391)

(declare-fun lt!669496 () (_ BitVec 64))

(assert (=> b!1552964 (not (contains!10137 (+!4973 lt!669494 (tuple2!24883 lt!669496 lt!669490)) lt!669493))))

(assert (=> b!1552964 (= lt!669492 (addStillNotContains!522 lt!669494 lt!669496 lt!669490 lt!669493))))

(assert (=> b!1552964 (= lt!669493 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1552964 (= lt!669490 (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1552964 (= lt!669496 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!1552964 (= lt!669494 call!71353)))

(assert (=> b!1552964 (= e!864593 (+!4973 call!71353 (tuple2!24883 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1552965 () Bool)

(assert (=> b!1552965 (= e!864596 (validKeyInArray!0 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!1552965 (bvsge (bvadd from!762 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (= (and d!161187 c!143094) b!1552963))

(assert (= (and d!161187 (not c!143094)) b!1552954))

(assert (= (and b!1552954 c!143091) b!1552964))

(assert (= (and b!1552954 (not c!143091)) b!1552957))

(assert (= (or b!1552964 b!1552957) bm!71350))

(assert (= (and d!161187 res!1063104) b!1552955))

(assert (= (and b!1552955 res!1063105) b!1552958))

(assert (= (and b!1552958 res!1063106) b!1552965))

(assert (= (and b!1552958 c!143093) b!1552960))

(assert (= (and b!1552958 (not c!143093)) b!1552961))

(assert (= (and b!1552960 res!1063103) b!1552956))

(assert (= (and b!1552961 c!143092) b!1552962))

(assert (= (and b!1552961 (not c!143092)) b!1552959))

(declare-fun b_lambda!24821 () Bool)

(assert (=> (not b_lambda!24821) (not b!1552956)))

(assert (=> b!1552956 t!51085))

(declare-fun b_and!51401 () Bool)

(assert (= b_and!51399 (and (=> t!51085 result!26097) b_and!51401)))

(declare-fun b_lambda!24823 () Bool)

(assert (=> (not b_lambda!24823) (not b!1552964)))

(assert (=> b!1552964 t!51085))

(declare-fun b_and!51403 () Bool)

(assert (= b_and!51401 (and (=> t!51085 result!26097) b_and!51403)))

(declare-fun m!1431581 () Bool)

(assert (=> d!161187 m!1431581))

(assert (=> d!161187 m!1430983))

(declare-fun m!1431583 () Bool)

(assert (=> b!1552965 m!1431583))

(assert (=> b!1552965 m!1431583))

(declare-fun m!1431585 () Bool)

(assert (=> b!1552965 m!1431585))

(declare-fun m!1431587 () Bool)

(assert (=> b!1552962 m!1431587))

(declare-fun m!1431589 () Bool)

(assert (=> b!1552959 m!1431589))

(assert (=> b!1552954 m!1431583))

(assert (=> b!1552954 m!1431583))

(assert (=> b!1552954 m!1431585))

(assert (=> b!1552964 m!1431583))

(declare-fun m!1431591 () Bool)

(assert (=> b!1552964 m!1431591))

(declare-fun m!1431593 () Bool)

(assert (=> b!1552964 m!1431593))

(assert (=> b!1552964 m!1431591))

(declare-fun m!1431595 () Bool)

(assert (=> b!1552964 m!1431595))

(assert (=> b!1552964 m!1431595))

(assert (=> b!1552964 m!1430945))

(declare-fun m!1431597 () Bool)

(assert (=> b!1552964 m!1431597))

(declare-fun m!1431599 () Bool)

(assert (=> b!1552964 m!1431599))

(assert (=> b!1552964 m!1430945))

(declare-fun m!1431601 () Bool)

(assert (=> b!1552964 m!1431601))

(assert (=> b!1552956 m!1431583))

(assert (=> b!1552956 m!1431583))

(declare-fun m!1431603 () Bool)

(assert (=> b!1552956 m!1431603))

(assert (=> b!1552956 m!1431595))

(assert (=> b!1552956 m!1431595))

(assert (=> b!1552956 m!1430945))

(assert (=> b!1552956 m!1431597))

(assert (=> b!1552956 m!1430945))

(assert (=> bm!71350 m!1431587))

(declare-fun m!1431605 () Bool)

(assert (=> b!1552955 m!1431605))

(assert (=> b!1552960 m!1431583))

(assert (=> b!1552960 m!1431583))

(declare-fun m!1431607 () Bool)

(assert (=> b!1552960 m!1431607))

(assert (=> bm!71326 d!161187))

(assert (=> d!161085 d!161087))

(assert (=> d!161085 d!161071))

(declare-fun d!161189 () Bool)

(assert (=> d!161189 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!161189 true))

(declare-fun _$12!483 () Unit!51642)

(assert (=> d!161189 (= (choose!2046 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000) _$12!483)))

(declare-fun bs!44611 () Bool)

(assert (= bs!44611 d!161189))

(assert (=> bs!44611 m!1431133))

(assert (=> bs!44611 m!1431133))

(assert (=> bs!44611 m!1431135))

(assert (=> d!161085 d!161189))

(declare-fun d!161191 () Bool)

(declare-fun res!1063111 () Bool)

(declare-fun e!864603 () Bool)

(assert (=> d!161191 (=> res!1063111 e!864603)))

(assert (=> d!161191 (= res!1063111 (or ((_ is Nil!36358) (toList!11267 lt!669252)) ((_ is Nil!36358) (t!51086 (toList!11267 lt!669252)))))))

(assert (=> d!161191 (= (isStrictlySorted!883 (toList!11267 lt!669252)) e!864603)))

(declare-fun b!1552970 () Bool)

(declare-fun e!864604 () Bool)

(assert (=> b!1552970 (= e!864603 e!864604)))

(declare-fun res!1063112 () Bool)

(assert (=> b!1552970 (=> (not res!1063112) (not e!864604))))

(assert (=> b!1552970 (= res!1063112 (bvslt (_1!12451 (h!37803 (toList!11267 lt!669252))) (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252))))))))

(declare-fun b!1552971 () Bool)

(assert (=> b!1552971 (= e!864604 (isStrictlySorted!883 (t!51086 (toList!11267 lt!669252))))))

(assert (= (and d!161191 (not res!1063111)) b!1552970))

(assert (= (and b!1552970 res!1063112) b!1552971))

(declare-fun m!1431609 () Bool)

(assert (=> b!1552971 m!1431609))

(assert (=> d!161085 d!161191))

(declare-fun d!161193 () Bool)

(declare-fun lt!669497 () Bool)

(assert (=> d!161193 (= lt!669497 (select (content!798 (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359)) (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!864606 () Bool)

(assert (=> d!161193 (= lt!669497 e!864606)))

(declare-fun res!1063113 () Bool)

(assert (=> d!161193 (=> (not res!1063113) (not e!864606))))

(assert (=> d!161193 (= res!1063113 ((_ is Cons!36358) (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359)))))

(assert (=> d!161193 (= (contains!10140 (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359) (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!669497)))

(declare-fun b!1552972 () Bool)

(declare-fun e!864605 () Bool)

(assert (=> b!1552972 (= e!864606 e!864605)))

(declare-fun res!1063114 () Bool)

(assert (=> b!1552972 (=> res!1063114 e!864605)))

(assert (=> b!1552972 (= res!1063114 (= (h!37804 (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359)) (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1552973 () Bool)

(assert (=> b!1552973 (= e!864605 (contains!10140 (t!51087 (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359)) (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!161193 res!1063113) b!1552972))

(assert (= (and b!1552972 (not res!1063114)) b!1552973))

(declare-fun m!1431611 () Bool)

(assert (=> d!161193 m!1431611))

(assert (=> d!161193 m!1431277))

(declare-fun m!1431613 () Bool)

(assert (=> d!161193 m!1431613))

(assert (=> b!1552973 m!1431277))

(declare-fun m!1431615 () Bool)

(assert (=> b!1552973 m!1431615))

(assert (=> b!1552910 d!161193))

(declare-fun b!1552975 () Bool)

(declare-fun e!864607 () Option!809)

(declare-fun e!864608 () Option!809)

(assert (=> b!1552975 (= e!864607 e!864608)))

(declare-fun c!143096 () Bool)

(assert (=> b!1552975 (= c!143096 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669366))) (not (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669366)))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun d!161195 () Bool)

(declare-fun c!143095 () Bool)

(assert (=> d!161195 (= c!143095 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669366))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669366)))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161195 (= (getValueByKey!734 (t!51086 (toList!11267 lt!669366)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864607)))

(declare-fun b!1552974 () Bool)

(assert (=> b!1552974 (= e!864607 (Some!808 (_2!12451 (h!37803 (t!51086 (toList!11267 lt!669366))))))))

(declare-fun b!1552976 () Bool)

(assert (=> b!1552976 (= e!864608 (getValueByKey!734 (t!51086 (t!51086 (toList!11267 lt!669366))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552977 () Bool)

(assert (=> b!1552977 (= e!864608 None!807)))

(assert (= (and d!161195 c!143095) b!1552974))

(assert (= (and d!161195 (not c!143095)) b!1552975))

(assert (= (and b!1552975 c!143096) b!1552976))

(assert (= (and b!1552975 (not c!143096)) b!1552977))

(declare-fun m!1431617 () Bool)

(assert (=> b!1552976 m!1431617))

(assert (=> b!1552840 d!161195))

(assert (=> d!161063 d!161061))

(declare-fun d!161197 () Bool)

(assert (=> d!161197 (= (getValueByKey!734 lt!669364 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!808 (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!161197 true))

(declare-fun _$22!586 () Unit!51642)

(assert (=> d!161197 (= (choose!2044 lt!669364 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) _$22!586)))

(declare-fun bs!44612 () Bool)

(assert (= bs!44612 d!161197))

(assert (=> bs!44612 m!1431163))

(assert (=> d!161063 d!161197))

(declare-fun d!161199 () Bool)

(declare-fun res!1063115 () Bool)

(declare-fun e!864609 () Bool)

(assert (=> d!161199 (=> res!1063115 e!864609)))

(assert (=> d!161199 (= res!1063115 (or ((_ is Nil!36358) lt!669364) ((_ is Nil!36358) (t!51086 lt!669364))))))

(assert (=> d!161199 (= (isStrictlySorted!883 lt!669364) e!864609)))

(declare-fun b!1552978 () Bool)

(declare-fun e!864610 () Bool)

(assert (=> b!1552978 (= e!864609 e!864610)))

(declare-fun res!1063116 () Bool)

(assert (=> b!1552978 (=> (not res!1063116) (not e!864610))))

(assert (=> b!1552978 (= res!1063116 (bvslt (_1!12451 (h!37803 lt!669364)) (_1!12451 (h!37803 (t!51086 lt!669364)))))))

(declare-fun b!1552979 () Bool)

(assert (=> b!1552979 (= e!864610 (isStrictlySorted!883 (t!51086 lt!669364)))))

(assert (= (and d!161199 (not res!1063115)) b!1552978))

(assert (= (and b!1552978 res!1063116) b!1552979))

(declare-fun m!1431619 () Bool)

(assert (=> b!1552979 m!1431619))

(assert (=> d!161063 d!161199))

(declare-fun d!161201 () Bool)

(declare-fun lt!669498 () Bool)

(assert (=> d!161201 (= lt!669498 (select (content!797 lt!669471) (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun e!864611 () Bool)

(assert (=> d!161201 (= lt!669498 e!864611)))

(declare-fun res!1063117 () Bool)

(assert (=> d!161201 (=> (not res!1063117) (not e!864611))))

(assert (=> d!161201 (= res!1063117 ((_ is Cons!36357) lt!669471))))

(assert (=> d!161201 (= (contains!10139 lt!669471 (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))) lt!669498)))

(declare-fun b!1552980 () Bool)

(declare-fun e!864612 () Bool)

(assert (=> b!1552980 (= e!864611 e!864612)))

(declare-fun res!1063118 () Bool)

(assert (=> b!1552980 (=> res!1063118 e!864612)))

(assert (=> b!1552980 (= res!1063118 (= (h!37803 lt!669471) (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun b!1552981 () Bool)

(assert (=> b!1552981 (= e!864612 (contains!10139 (t!51086 lt!669471) (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (= (and d!161201 res!1063117) b!1552980))

(assert (= (and b!1552980 (not res!1063118)) b!1552981))

(declare-fun m!1431621 () Bool)

(assert (=> d!161201 m!1431621))

(declare-fun m!1431623 () Bool)

(assert (=> d!161201 m!1431623))

(declare-fun m!1431625 () Bool)

(assert (=> b!1552981 m!1431625))

(assert (=> b!1552880 d!161201))

(declare-fun d!161203 () Bool)

(declare-fun res!1063119 () Bool)

(declare-fun e!864613 () Bool)

(assert (=> d!161203 (=> res!1063119 e!864613)))

(assert (=> d!161203 (= res!1063119 (and ((_ is Cons!36357) (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))) (= (_1!12451 (h!37803 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161203 (= (containsKey!752 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762)) e!864613)))

(declare-fun b!1552982 () Bool)

(declare-fun e!864614 () Bool)

(assert (=> b!1552982 (= e!864613 e!864614)))

(declare-fun res!1063120 () Bool)

(assert (=> b!1552982 (=> (not res!1063120) (not e!864614))))

(assert (=> b!1552982 (= res!1063120 (and (or (not ((_ is Cons!36357) (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))) (bvsle (_1!12451 (h!37803 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))) (select (arr!49984 _keys!618) from!762))) ((_ is Cons!36357) (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))) (bvslt (_1!12451 (h!37803 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))) (select (arr!49984 _keys!618) from!762))))))

(declare-fun b!1552983 () Bool)

(assert (=> b!1552983 (= e!864614 (containsKey!752 (t!51086 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))) (select (arr!49984 _keys!618) from!762)))))

(assert (= (and d!161203 (not res!1063119)) b!1552982))

(assert (= (and b!1552982 res!1063120) b!1552983))

(assert (=> b!1552983 m!1430943))

(declare-fun m!1431627 () Bool)

(assert (=> b!1552983 m!1431627))

(assert (=> d!161043 d!161203))

(declare-fun b!1552985 () Bool)

(declare-fun e!864615 () Option!809)

(declare-fun e!864616 () Option!809)

(assert (=> b!1552985 (= e!864615 e!864616)))

(declare-fun c!143098 () Bool)

(assert (=> b!1552985 (= c!143098 (and ((_ is Cons!36357) (toList!11267 lt!669440)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669440))) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun d!161205 () Bool)

(declare-fun c!143097 () Bool)

(assert (=> d!161205 (= c!143097 (and ((_ is Cons!36357) (toList!11267 lt!669440)) (= (_1!12451 (h!37803 (toList!11267 lt!669440))) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!161205 (= (getValueByKey!734 (toList!11267 lt!669440) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!864615)))

(declare-fun b!1552984 () Bool)

(assert (=> b!1552984 (= e!864615 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669440)))))))

(declare-fun b!1552986 () Bool)

(assert (=> b!1552986 (= e!864616 (getValueByKey!734 (t!51086 (toList!11267 lt!669440)) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1552987 () Bool)

(assert (=> b!1552987 (= e!864616 None!807)))

(assert (= (and d!161205 c!143097) b!1552984))

(assert (= (and d!161205 (not c!143097)) b!1552985))

(assert (= (and b!1552985 c!143098) b!1552986))

(assert (= (and b!1552985 (not c!143098)) b!1552987))

(declare-fun m!1431629 () Bool)

(assert (=> b!1552986 m!1431629))

(assert (=> b!1552815 d!161205))

(declare-fun b!1552988 () Bool)

(declare-fun e!864619 () Bool)

(declare-fun e!864618 () Bool)

(assert (=> b!1552988 (= e!864619 e!864618)))

(declare-fun lt!669501 () (_ BitVec 64))

(assert (=> b!1552988 (= lt!669501 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!669500 () Unit!51642)

(assert (=> b!1552988 (= lt!669500 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!618 lt!669501 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!1552988 (arrayContainsKey!0 _keys!618 lt!669501 #b00000000000000000000000000000000)))

(declare-fun lt!669499 () Unit!51642)

(assert (=> b!1552988 (= lt!669499 lt!669500)))

(declare-fun res!1063122 () Bool)

(assert (=> b!1552988 (= res!1063122 (= (seekEntryOrOpen!0 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) _keys!618 mask!926) (Found!13514 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!1552988 (=> (not res!1063122) (not e!864618))))

(declare-fun b!1552989 () Bool)

(declare-fun e!864617 () Bool)

(assert (=> b!1552989 (= e!864617 e!864619)))

(declare-fun c!143099 () Bool)

(assert (=> b!1552989 (= c!143099 (validKeyInArray!0 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun bm!71351 () Bool)

(declare-fun call!71354 () Bool)

(assert (=> bm!71351 (= call!71354 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!618 mask!926))))

(declare-fun b!1552990 () Bool)

(assert (=> b!1552990 (= e!864618 call!71354)))

(declare-fun b!1552991 () Bool)

(assert (=> b!1552991 (= e!864619 call!71354)))

(declare-fun d!161207 () Bool)

(declare-fun res!1063121 () Bool)

(assert (=> d!161207 (=> res!1063121 e!864617)))

(assert (=> d!161207 (= res!1063121 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(assert (=> d!161207 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!618 mask!926) e!864617)))

(assert (= (and d!161207 (not res!1063121)) b!1552989))

(assert (= (and b!1552989 c!143099) b!1552988))

(assert (= (and b!1552989 (not c!143099)) b!1552991))

(assert (= (and b!1552988 res!1063122) b!1552990))

(assert (= (or b!1552990 b!1552991) bm!71351))

(declare-fun m!1431631 () Bool)

(assert (=> b!1552988 m!1431631))

(declare-fun m!1431633 () Bool)

(assert (=> b!1552988 m!1431633))

(declare-fun m!1431635 () Bool)

(assert (=> b!1552988 m!1431635))

(assert (=> b!1552988 m!1431631))

(declare-fun m!1431637 () Bool)

(assert (=> b!1552988 m!1431637))

(assert (=> b!1552989 m!1431631))

(assert (=> b!1552989 m!1431631))

(declare-fun m!1431639 () Bool)

(assert (=> b!1552989 m!1431639))

(declare-fun m!1431641 () Bool)

(assert (=> bm!71351 m!1431641))

(assert (=> bm!71336 d!161207))

(declare-fun d!161209 () Bool)

(assert (=> d!161209 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762)))))

(declare-fun lt!669502 () Unit!51642)

(assert (=> d!161209 (= lt!669502 (choose!2046 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762)))))

(declare-fun e!864620 () Bool)

(assert (=> d!161209 e!864620))

(declare-fun res!1063123 () Bool)

(assert (=> d!161209 (=> (not res!1063123) (not e!864620))))

(assert (=> d!161209 (= res!1063123 (isStrictlySorted!883 (toList!11267 lt!669255)))))

(assert (=> d!161209 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762)) lt!669502)))

(declare-fun b!1552992 () Bool)

(assert (=> b!1552992 (= e!864620 (containsKey!752 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762)))))

(assert (= (and d!161209 res!1063123) b!1552992))

(assert (=> d!161209 m!1430943))

(assert (=> d!161209 m!1431051))

(assert (=> d!161209 m!1431051))

(assert (=> d!161209 m!1431311))

(assert (=> d!161209 m!1430943))

(declare-fun m!1431643 () Bool)

(assert (=> d!161209 m!1431643))

(assert (=> d!161209 m!1431451))

(assert (=> b!1552992 m!1430943))

(assert (=> b!1552992 m!1431307))

(assert (=> b!1552765 d!161209))

(declare-fun d!161211 () Bool)

(assert (=> d!161211 (= (isDefined!546 (getValueByKey!734 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762))) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun bs!44613 () Bool)

(assert (= bs!44613 d!161211))

(assert (=> bs!44613 m!1431051))

(declare-fun m!1431645 () Bool)

(assert (=> bs!44613 m!1431645))

(assert (=> b!1552765 d!161211))

(assert (=> b!1552765 d!161019))

(assert (=> d!161045 d!161043))

(assert (=> d!161045 d!160981))

(declare-fun lt!669503 () Bool)

(declare-fun d!161213 () Bool)

(assert (=> d!161213 (= lt!669503 (select (content!797 lt!669360) (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun e!864621 () Bool)

(assert (=> d!161213 (= lt!669503 e!864621)))

(declare-fun res!1063124 () Bool)

(assert (=> d!161213 (=> (not res!1063124) (not e!864621))))

(assert (=> d!161213 (= res!1063124 ((_ is Cons!36357) lt!669360))))

(assert (=> d!161213 (= (contains!10139 lt!669360 (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) lt!669503)))

(declare-fun b!1552993 () Bool)

(declare-fun e!864622 () Bool)

(assert (=> b!1552993 (= e!864621 e!864622)))

(declare-fun res!1063125 () Bool)

(assert (=> b!1552993 (=> res!1063125 e!864622)))

(assert (=> b!1552993 (= res!1063125 (= (h!37803 lt!669360) (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun b!1552994 () Bool)

(assert (=> b!1552994 (= e!864622 (contains!10139 (t!51086 lt!669360) (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(assert (= (and d!161213 res!1063124) b!1552993))

(assert (= (and b!1552993 (not res!1063125)) b!1552994))

(declare-fun m!1431647 () Bool)

(assert (=> d!161213 m!1431647))

(declare-fun m!1431649 () Bool)

(assert (=> d!161213 m!1431649))

(declare-fun m!1431651 () Bool)

(assert (=> b!1552994 m!1431651))

(assert (=> b!1552723 d!161213))

(declare-fun b!1552996 () Bool)

(declare-fun e!864623 () Option!809)

(declare-fun e!864624 () Option!809)

(assert (=> b!1552996 (= e!864623 e!864624)))

(declare-fun c!143101 () Bool)

(assert (=> b!1552996 (= c!143101 (and ((_ is Cons!36357) (t!51086 lt!669348)) (not (= (_1!12451 (h!37803 (t!51086 lt!669348))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))))

(declare-fun d!161215 () Bool)

(declare-fun c!143100 () Bool)

(assert (=> d!161215 (= c!143100 (and ((_ is Cons!36357) (t!51086 lt!669348)) (= (_1!12451 (h!37803 (t!51086 lt!669348))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (=> d!161215 (= (getValueByKey!734 (t!51086 lt!669348) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) e!864623)))

(declare-fun b!1552995 () Bool)

(assert (=> b!1552995 (= e!864623 (Some!808 (_2!12451 (h!37803 (t!51086 lt!669348)))))))

(declare-fun b!1552997 () Bool)

(assert (=> b!1552997 (= e!864624 (getValueByKey!734 (t!51086 (t!51086 lt!669348)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun b!1552998 () Bool)

(assert (=> b!1552998 (= e!864624 None!807)))

(assert (= (and d!161215 c!143100) b!1552995))

(assert (= (and d!161215 (not c!143100)) b!1552996))

(assert (= (and b!1552996 c!143101) b!1552997))

(assert (= (and b!1552996 (not c!143101)) b!1552998))

(declare-fun m!1431653 () Bool)

(assert (=> b!1552997 m!1431653))

(assert (=> b!1552875 d!161215))

(assert (=> b!1552663 d!161187))

(declare-fun d!161217 () Bool)

(declare-fun res!1063126 () Bool)

(declare-fun e!864625 () Bool)

(assert (=> d!161217 (=> res!1063126 e!864625)))

(assert (=> d!161217 (= res!1063126 (or ((_ is Nil!36358) lt!669471) ((_ is Nil!36358) (t!51086 lt!669471))))))

(assert (=> d!161217 (= (isStrictlySorted!883 lt!669471) e!864625)))

(declare-fun b!1552999 () Bool)

(declare-fun e!864626 () Bool)

(assert (=> b!1552999 (= e!864625 e!864626)))

(declare-fun res!1063127 () Bool)

(assert (=> b!1552999 (=> (not res!1063127) (not e!864626))))

(assert (=> b!1552999 (= res!1063127 (bvslt (_1!12451 (h!37803 lt!669471)) (_1!12451 (h!37803 (t!51086 lt!669471)))))))

(declare-fun b!1553000 () Bool)

(assert (=> b!1553000 (= e!864626 (isStrictlySorted!883 (t!51086 lt!669471)))))

(assert (= (and d!161217 (not res!1063126)) b!1552999))

(assert (= (and b!1552999 res!1063127) b!1553000))

(declare-fun m!1431655 () Bool)

(assert (=> b!1553000 m!1431655))

(assert (=> d!161129 d!161217))

(declare-fun d!161219 () Bool)

(declare-fun res!1063128 () Bool)

(declare-fun e!864627 () Bool)

(assert (=> d!161219 (=> res!1063128 e!864627)))

(assert (=> d!161219 (= res!1063128 (or ((_ is Nil!36358) (toList!11267 lt!669255)) ((_ is Nil!36358) (t!51086 (toList!11267 lt!669255)))))))

(assert (=> d!161219 (= (isStrictlySorted!883 (toList!11267 lt!669255)) e!864627)))

(declare-fun b!1553001 () Bool)

(declare-fun e!864628 () Bool)

(assert (=> b!1553001 (= e!864627 e!864628)))

(declare-fun res!1063129 () Bool)

(assert (=> b!1553001 (=> (not res!1063129) (not e!864628))))

(assert (=> b!1553001 (= res!1063129 (bvslt (_1!12451 (h!37803 (toList!11267 lt!669255))) (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669255))))))))

(declare-fun b!1553002 () Bool)

(assert (=> b!1553002 (= e!864628 (isStrictlySorted!883 (t!51086 (toList!11267 lt!669255))))))

(assert (= (and d!161219 (not res!1063128)) b!1553001))

(assert (= (and b!1553001 res!1063129) b!1553002))

(declare-fun m!1431657 () Bool)

(assert (=> b!1553002 m!1431657))

(assert (=> d!161129 d!161219))

(assert (=> d!161105 d!161101))

(assert (=> d!161105 d!161103))

(declare-fun d!161221 () Bool)

(assert (=> d!161221 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762)))))

(assert (=> d!161221 true))

(declare-fun _$12!484 () Unit!51642)

(assert (=> d!161221 (= (choose!2046 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762)) _$12!484)))

(declare-fun bs!44614 () Bool)

(assert (= bs!44614 d!161221))

(assert (=> bs!44614 m!1430943))

(assert (=> bs!44614 m!1431063))

(assert (=> bs!44614 m!1431063))

(assert (=> bs!44614 m!1431107))

(assert (=> d!161105 d!161221))

(declare-fun d!161223 () Bool)

(declare-fun res!1063130 () Bool)

(declare-fun e!864629 () Bool)

(assert (=> d!161223 (=> res!1063130 e!864629)))

(assert (=> d!161223 (= res!1063130 (or ((_ is Nil!36358) (toList!11267 lt!669257)) ((_ is Nil!36358) (t!51086 (toList!11267 lt!669257)))))))

(assert (=> d!161223 (= (isStrictlySorted!883 (toList!11267 lt!669257)) e!864629)))

(declare-fun b!1553003 () Bool)

(declare-fun e!864630 () Bool)

(assert (=> b!1553003 (= e!864629 e!864630)))

(declare-fun res!1063131 () Bool)

(assert (=> b!1553003 (=> (not res!1063131) (not e!864630))))

(assert (=> b!1553003 (= res!1063131 (bvslt (_1!12451 (h!37803 (toList!11267 lt!669257))) (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669257))))))))

(declare-fun b!1553004 () Bool)

(assert (=> b!1553004 (= e!864630 (isStrictlySorted!883 (t!51086 (toList!11267 lt!669257))))))

(assert (= (and d!161223 (not res!1063130)) b!1553003))

(assert (= (and b!1553003 res!1063131) b!1553004))

(declare-fun m!1431659 () Bool)

(assert (=> b!1553004 m!1431659))

(assert (=> d!161105 d!161223))

(assert (=> d!161119 d!161117))

(declare-fun d!161225 () Bool)

(assert (=> d!161225 (= (getValueByKey!734 lt!669332 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!808 (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!161225 true))

(declare-fun _$22!587 () Unit!51642)

(assert (=> d!161225 (= (choose!2044 lt!669332 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) _$22!587)))

(declare-fun bs!44615 () Bool)

(assert (= bs!44615 d!161225))

(assert (=> bs!44615 m!1431093))

(assert (=> d!161119 d!161225))

(declare-fun d!161227 () Bool)

(declare-fun res!1063132 () Bool)

(declare-fun e!864631 () Bool)

(assert (=> d!161227 (=> res!1063132 e!864631)))

(assert (=> d!161227 (= res!1063132 (or ((_ is Nil!36358) lt!669332) ((_ is Nil!36358) (t!51086 lt!669332))))))

(assert (=> d!161227 (= (isStrictlySorted!883 lt!669332) e!864631)))

(declare-fun b!1553005 () Bool)

(declare-fun e!864632 () Bool)

(assert (=> b!1553005 (= e!864631 e!864632)))

(declare-fun res!1063133 () Bool)

(assert (=> b!1553005 (=> (not res!1063133) (not e!864632))))

(assert (=> b!1553005 (= res!1063133 (bvslt (_1!12451 (h!37803 lt!669332)) (_1!12451 (h!37803 (t!51086 lt!669332)))))))

(declare-fun b!1553006 () Bool)

(assert (=> b!1553006 (= e!864632 (isStrictlySorted!883 (t!51086 lt!669332)))))

(assert (= (and d!161227 (not res!1063132)) b!1553005))

(assert (= (and b!1553005 res!1063133) b!1553006))

(declare-fun m!1431661 () Bool)

(assert (=> b!1553006 m!1431661))

(assert (=> d!161119 d!161227))

(declare-fun d!161229 () Bool)

(declare-fun res!1063134 () Bool)

(declare-fun e!864633 () Bool)

(assert (=> d!161229 (=> res!1063134 e!864633)))

(assert (=> d!161229 (= res!1063134 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669257))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669257)))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161229 (= (containsKey!752 (t!51086 (toList!11267 lt!669257)) (select (arr!49984 _keys!618) from!762)) e!864633)))

(declare-fun b!1553007 () Bool)

(declare-fun e!864634 () Bool)

(assert (=> b!1553007 (= e!864633 e!864634)))

(declare-fun res!1063135 () Bool)

(assert (=> b!1553007 (=> (not res!1063135) (not e!864634))))

(assert (=> b!1553007 (= res!1063135 (and (or (not ((_ is Cons!36357) (t!51086 (toList!11267 lt!669257)))) (bvsle (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669257)))) (select (arr!49984 _keys!618) from!762))) ((_ is Cons!36357) (t!51086 (toList!11267 lt!669257))) (bvslt (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669257)))) (select (arr!49984 _keys!618) from!762))))))

(declare-fun b!1553008 () Bool)

(assert (=> b!1553008 (= e!864634 (containsKey!752 (t!51086 (t!51086 (toList!11267 lt!669257))) (select (arr!49984 _keys!618) from!762)))))

(assert (= (and d!161229 (not res!1063134)) b!1553007))

(assert (= (and b!1553007 res!1063135) b!1553008))

(assert (=> b!1553008 m!1430943))

(declare-fun m!1431663 () Bool)

(assert (=> b!1553008 m!1431663))

(assert (=> b!1552672 d!161229))

(declare-fun lt!669504 () Bool)

(declare-fun d!161231 () Bool)

(assert (=> d!161231 (= lt!669504 (select (content!797 lt!669408) (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun e!864635 () Bool)

(assert (=> d!161231 (= lt!669504 e!864635)))

(declare-fun res!1063136 () Bool)

(assert (=> d!161231 (=> (not res!1063136) (not e!864635))))

(assert (=> d!161231 (= res!1063136 ((_ is Cons!36357) lt!669408))))

(assert (=> d!161231 (= (contains!10139 lt!669408 (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) lt!669504)))

(declare-fun b!1553009 () Bool)

(declare-fun e!864636 () Bool)

(assert (=> b!1553009 (= e!864635 e!864636)))

(declare-fun res!1063137 () Bool)

(assert (=> b!1553009 (=> res!1063137 e!864636)))

(assert (=> b!1553009 (= res!1063137 (= (h!37803 lt!669408) (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun b!1553010 () Bool)

(assert (=> b!1553010 (= e!864636 (contains!10139 (t!51086 lt!669408) (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(assert (= (and d!161231 res!1063136) b!1553009))

(assert (= (and b!1553009 (not res!1063137)) b!1553010))

(declare-fun m!1431665 () Bool)

(assert (=> d!161231 m!1431665))

(declare-fun m!1431667 () Bool)

(assert (=> d!161231 m!1431667))

(declare-fun m!1431669 () Bool)

(assert (=> b!1553010 m!1431669))

(assert (=> b!1552745 d!161231))

(declare-fun d!161233 () Bool)

(assert (=> d!161233 (= (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762))) (not ((_ is Some!808) (getValueByKey!734 (toList!11267 lt!669257) (select (arr!49984 _keys!618) from!762)))))))

(assert (=> d!161101 d!161233))

(assert (=> b!1552837 d!161015))

(declare-fun d!161235 () Bool)

(assert (=> d!161235 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669350) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun lt!669505 () Unit!51642)

(assert (=> d!161235 (= lt!669505 (choose!2046 (toList!11267 lt!669350) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun e!864637 () Bool)

(assert (=> d!161235 e!864637))

(declare-fun res!1063138 () Bool)

(assert (=> d!161235 (=> (not res!1063138) (not e!864637))))

(assert (=> d!161235 (= res!1063138 (isStrictlySorted!883 (toList!11267 lt!669350)))))

(assert (=> d!161235 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669350) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) lt!669505)))

(declare-fun b!1553011 () Bool)

(assert (=> b!1553011 (= e!864637 (containsKey!752 (toList!11267 lt!669350) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (= (and d!161235 res!1063138) b!1553011))

(assert (=> d!161235 m!1431117))

(assert (=> d!161235 m!1431117))

(assert (=> d!161235 m!1431463))

(declare-fun m!1431671 () Bool)

(assert (=> d!161235 m!1431671))

(declare-fun m!1431673 () Bool)

(assert (=> d!161235 m!1431673))

(assert (=> b!1553011 m!1431459))

(assert (=> b!1552870 d!161235))

(declare-fun d!161237 () Bool)

(assert (=> d!161237 (= (isDefined!546 (getValueByKey!734 (toList!11267 lt!669350) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669350) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))))

(declare-fun bs!44616 () Bool)

(assert (= bs!44616 d!161237))

(assert (=> bs!44616 m!1431117))

(declare-fun m!1431675 () Bool)

(assert (=> bs!44616 m!1431675))

(assert (=> b!1552870 d!161237))

(assert (=> b!1552870 d!161147))

(assert (=> d!161055 d!161053))

(assert (=> d!161055 d!160981))

(assert (=> d!161055 d!160965))

(declare-fun d!161239 () Bool)

(declare-fun res!1063139 () Bool)

(declare-fun e!864638 () Bool)

(assert (=> d!161239 (=> res!1063139 e!864638)))

(assert (=> d!161239 (= res!1063139 (and ((_ is Cons!36357) (toList!11267 lt!669255)) (= (_1!12451 (h!37803 (toList!11267 lt!669255))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161239 (= (containsKey!752 (toList!11267 lt!669255) (select (arr!49984 _keys!618) from!762)) e!864638)))

(declare-fun b!1553012 () Bool)

(declare-fun e!864639 () Bool)

(assert (=> b!1553012 (= e!864638 e!864639)))

(declare-fun res!1063140 () Bool)

(assert (=> b!1553012 (=> (not res!1063140) (not e!864639))))

(assert (=> b!1553012 (= res!1063140 (and (or (not ((_ is Cons!36357) (toList!11267 lt!669255))) (bvsle (_1!12451 (h!37803 (toList!11267 lt!669255))) (select (arr!49984 _keys!618) from!762))) ((_ is Cons!36357) (toList!11267 lt!669255)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669255))) (select (arr!49984 _keys!618) from!762))))))

(declare-fun b!1553013 () Bool)

(assert (=> b!1553013 (= e!864639 (containsKey!752 (t!51086 (toList!11267 lt!669255)) (select (arr!49984 _keys!618) from!762)))))

(assert (= (and d!161239 (not res!1063139)) b!1553012))

(assert (= (and b!1553012 res!1063140) b!1553013))

(assert (=> b!1553013 m!1430943))

(declare-fun m!1431677 () Bool)

(assert (=> b!1553013 m!1431677))

(assert (=> d!161047 d!161239))

(declare-fun d!161241 () Bool)

(declare-fun lt!669506 () Bool)

(assert (=> d!161241 (= lt!669506 (select (content!797 lt!669429) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun e!864640 () Bool)

(assert (=> d!161241 (= lt!669506 e!864640)))

(declare-fun res!1063141 () Bool)

(assert (=> d!161241 (=> (not res!1063141) (not e!864640))))

(assert (=> d!161241 (= res!1063141 ((_ is Cons!36357) lt!669429))))

(assert (=> d!161241 (= (contains!10139 lt!669429 (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) lt!669506)))

(declare-fun b!1553014 () Bool)

(declare-fun e!864641 () Bool)

(assert (=> b!1553014 (= e!864640 e!864641)))

(declare-fun res!1063142 () Bool)

(assert (=> b!1553014 (=> res!1063142 e!864641)))

(assert (=> b!1553014 (= res!1063142 (= (h!37803 lt!669429) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553015 () Bool)

(assert (=> b!1553015 (= e!864641 (contains!10139 (t!51086 lt!669429) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (= (and d!161241 res!1063141) b!1553014))

(assert (= (and b!1553014 (not res!1063142)) b!1553015))

(declare-fun m!1431679 () Bool)

(assert (=> d!161241 m!1431679))

(declare-fun m!1431681 () Bool)

(assert (=> d!161241 m!1431681))

(declare-fun m!1431683 () Bool)

(assert (=> b!1553015 m!1431683))

(assert (=> b!1552787 d!161241))

(assert (=> b!1552821 d!161139))

(declare-fun d!161243 () Bool)

(declare-fun res!1063143 () Bool)

(declare-fun e!864642 () Bool)

(assert (=> d!161243 (=> res!1063143 e!864642)))

(assert (=> d!161243 (= res!1063143 (or ((_ is Nil!36358) lt!669429) ((_ is Nil!36358) (t!51086 lt!669429))))))

(assert (=> d!161243 (= (isStrictlySorted!883 lt!669429) e!864642)))

(declare-fun b!1553016 () Bool)

(declare-fun e!864643 () Bool)

(assert (=> b!1553016 (= e!864642 e!864643)))

(declare-fun res!1063144 () Bool)

(assert (=> b!1553016 (=> (not res!1063144) (not e!864643))))

(assert (=> b!1553016 (= res!1063144 (bvslt (_1!12451 (h!37803 lt!669429)) (_1!12451 (h!37803 (t!51086 lt!669429)))))))

(declare-fun b!1553017 () Bool)

(assert (=> b!1553017 (= e!864643 (isStrictlySorted!883 (t!51086 lt!669429)))))

(assert (= (and d!161243 (not res!1063143)) b!1553016))

(assert (= (and b!1553016 res!1063144) b!1553017))

(declare-fun m!1431685 () Bool)

(assert (=> b!1553017 m!1431685))

(assert (=> d!161065 d!161243))

(declare-fun d!161245 () Bool)

(declare-fun res!1063145 () Bool)

(declare-fun e!864644 () Bool)

(assert (=> d!161245 (=> res!1063145 e!864644)))

(assert (=> d!161245 (= res!1063145 (or ((_ is Nil!36358) (toList!11267 call!71292)) ((_ is Nil!36358) (t!51086 (toList!11267 call!71292)))))))

(assert (=> d!161245 (= (isStrictlySorted!883 (toList!11267 call!71292)) e!864644)))

(declare-fun b!1553018 () Bool)

(declare-fun e!864645 () Bool)

(assert (=> b!1553018 (= e!864644 e!864645)))

(declare-fun res!1063146 () Bool)

(assert (=> b!1553018 (=> (not res!1063146) (not e!864645))))

(assert (=> b!1553018 (= res!1063146 (bvslt (_1!12451 (h!37803 (toList!11267 call!71292))) (_1!12451 (h!37803 (t!51086 (toList!11267 call!71292))))))))

(declare-fun b!1553019 () Bool)

(assert (=> b!1553019 (= e!864645 (isStrictlySorted!883 (t!51086 (toList!11267 call!71292))))))

(assert (= (and d!161245 (not res!1063145)) b!1553018))

(assert (= (and b!1553018 res!1063146) b!1553019))

(declare-fun m!1431687 () Bool)

(assert (=> b!1553019 m!1431687))

(assert (=> d!161065 d!161245))

(declare-fun b!1553021 () Bool)

(declare-fun e!864646 () Option!809)

(declare-fun e!864647 () Option!809)

(assert (=> b!1553021 (= e!864646 e!864647)))

(declare-fun c!143103 () Bool)

(assert (=> b!1553021 (= c!143103 (and ((_ is Cons!36357) (t!51086 lt!669364)) (not (= (_1!12451 (h!37803 (t!51086 lt!669364))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun d!161247 () Bool)

(declare-fun c!143102 () Bool)

(assert (=> d!161247 (= c!143102 (and ((_ is Cons!36357) (t!51086 lt!669364)) (= (_1!12451 (h!37803 (t!51086 lt!669364))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161247 (= (getValueByKey!734 (t!51086 lt!669364) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864646)))

(declare-fun b!1553020 () Bool)

(assert (=> b!1553020 (= e!864646 (Some!808 (_2!12451 (h!37803 (t!51086 lt!669364)))))))

(declare-fun b!1553022 () Bool)

(assert (=> b!1553022 (= e!864647 (getValueByKey!734 (t!51086 (t!51086 lt!669364)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1553023 () Bool)

(assert (=> b!1553023 (= e!864647 None!807)))

(assert (= (and d!161247 c!143102) b!1553020))

(assert (= (and d!161247 (not c!143102)) b!1553021))

(assert (= (and b!1553021 c!143103) b!1553022))

(assert (= (and b!1553021 (not c!143103)) b!1553023))

(declare-fun m!1431689 () Bool)

(assert (=> b!1553022 m!1431689))

(assert (=> b!1552782 d!161247))

(declare-fun b!1553025 () Bool)

(declare-fun e!864648 () Option!809)

(declare-fun e!864649 () Option!809)

(assert (=> b!1553025 (= e!864648 e!864649)))

(declare-fun c!143105 () Bool)

(assert (=> b!1553025 (= c!143105 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252))) (not (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!161249 () Bool)

(declare-fun c!143104 () Bool)

(assert (=> d!161249 (= c!143104 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161249 (= (getValueByKey!734 (t!51086 (toList!11267 lt!669252)) #b1000000000000000000000000000000000000000000000000000000000000000) e!864648)))

(declare-fun b!1553024 () Bool)

(assert (=> b!1553024 (= e!864648 (Some!808 (_2!12451 (h!37803 (t!51086 (toList!11267 lt!669252))))))))

(declare-fun b!1553026 () Bool)

(assert (=> b!1553026 (= e!864649 (getValueByKey!734 (t!51086 (t!51086 (toList!11267 lt!669252))) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1553027 () Bool)

(assert (=> b!1553027 (= e!864649 None!807)))

(assert (= (and d!161249 c!143104) b!1553024))

(assert (= (and d!161249 (not c!143104)) b!1553025))

(assert (= (and b!1553025 c!143105) b!1553026))

(assert (= (and b!1553025 (not c!143105)) b!1553027))

(declare-fun m!1431691 () Bool)

(assert (=> b!1553026 m!1431691))

(assert (=> b!1552802 d!161249))

(declare-fun d!161251 () Bool)

(declare-fun lt!669507 () Bool)

(assert (=> d!161251 (= lt!669507 (select (content!797 (t!51086 (toList!11267 lt!669366))) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun e!864650 () Bool)

(assert (=> d!161251 (= lt!669507 e!864650)))

(declare-fun res!1063147 () Bool)

(assert (=> d!161251 (=> (not res!1063147) (not e!864650))))

(assert (=> d!161251 (= res!1063147 ((_ is Cons!36357) (t!51086 (toList!11267 lt!669366))))))

(assert (=> d!161251 (= (contains!10139 (t!51086 (toList!11267 lt!669366)) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) lt!669507)))

(declare-fun b!1553028 () Bool)

(declare-fun e!864651 () Bool)

(assert (=> b!1553028 (= e!864650 e!864651)))

(declare-fun res!1063148 () Bool)

(assert (=> b!1553028 (=> res!1063148 e!864651)))

(assert (=> b!1553028 (= res!1063148 (= (h!37803 (t!51086 (toList!11267 lt!669366))) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1553029 () Bool)

(assert (=> b!1553029 (= e!864651 (contains!10139 (t!51086 (t!51086 (toList!11267 lt!669366))) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(assert (= (and d!161251 res!1063147) b!1553028))

(assert (= (and b!1553028 (not res!1063148)) b!1553029))

(declare-fun m!1431693 () Bool)

(assert (=> d!161251 m!1431693))

(declare-fun m!1431695 () Bool)

(assert (=> d!161251 m!1431695))

(declare-fun m!1431697 () Bool)

(assert (=> b!1553029 m!1431697))

(assert (=> b!1552906 d!161251))

(declare-fun d!161253 () Bool)

(declare-fun lt!669508 () Bool)

(assert (=> d!161253 (= lt!669508 (select (content!797 lt!669465) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun e!864652 () Bool)

(assert (=> d!161253 (= lt!669508 e!864652)))

(declare-fun res!1063149 () Bool)

(assert (=> d!161253 (=> (not res!1063149) (not e!864652))))

(assert (=> d!161253 (= res!1063149 ((_ is Cons!36357) lt!669465))))

(assert (=> d!161253 (= (contains!10139 lt!669465 (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) lt!669508)))

(declare-fun b!1553030 () Bool)

(declare-fun e!864653 () Bool)

(assert (=> b!1553030 (= e!864652 e!864653)))

(declare-fun res!1063150 () Bool)

(assert (=> b!1553030 (=> res!1063150 e!864653)))

(assert (=> b!1553030 (= res!1063150 (= (h!37803 lt!669465) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553031 () Bool)

(assert (=> b!1553031 (= e!864653 (contains!10139 (t!51086 lt!669465) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (= (and d!161253 res!1063149) b!1553030))

(assert (= (and b!1553030 (not res!1063150)) b!1553031))

(declare-fun m!1431699 () Bool)

(assert (=> d!161253 m!1431699))

(declare-fun m!1431701 () Bool)

(assert (=> d!161253 m!1431701))

(declare-fun m!1431703 () Bool)

(assert (=> b!1553031 m!1431703))

(assert (=> b!1552861 d!161253))

(declare-fun b!1553032 () Bool)

(declare-fun e!864656 () Bool)

(declare-fun e!864654 () Bool)

(assert (=> b!1553032 (= e!864656 e!864654)))

(declare-fun res!1063152 () Bool)

(assert (=> b!1553032 (=> (not res!1063152) (not e!864654))))

(declare-fun e!864657 () Bool)

(assert (=> b!1553032 (= res!1063152 (not e!864657))))

(declare-fun res!1063151 () Bool)

(assert (=> b!1553032 (=> (not res!1063151) (not e!864657))))

(assert (=> b!1553032 (= res!1063151 (validKeyInArray!0 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!1553033 () Bool)

(declare-fun e!864655 () Bool)

(declare-fun call!71355 () Bool)

(assert (=> b!1553033 (= e!864655 call!71355)))

(declare-fun d!161255 () Bool)

(declare-fun res!1063153 () Bool)

(assert (=> d!161255 (=> res!1063153 e!864656)))

(assert (=> d!161255 (= res!1063153 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(assert (=> d!161255 (= (arrayNoDuplicates!0 _keys!618 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!143075 (Cons!36358 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359)) (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359))) e!864656)))

(declare-fun b!1553034 () Bool)

(assert (=> b!1553034 (= e!864654 e!864655)))

(declare-fun c!143106 () Bool)

(assert (=> b!1553034 (= c!143106 (validKeyInArray!0 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun bm!71352 () Bool)

(assert (=> bm!71352 (= call!71355 (arrayNoDuplicates!0 _keys!618 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!143106 (Cons!36358 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!143075 (Cons!36358 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359)) (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359))) (ite c!143075 (Cons!36358 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359)) (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359)))))))

(declare-fun b!1553035 () Bool)

(assert (=> b!1553035 (= e!864657 (contains!10140 (ite c!143075 (Cons!36358 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359)) (ite c!142987 (Cons!36358 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) Nil!36359) Nil!36359)) (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!1553036 () Bool)

(assert (=> b!1553036 (= e!864655 call!71355)))

(assert (= (and d!161255 (not res!1063153)) b!1553032))

(assert (= (and b!1553032 res!1063151) b!1553035))

(assert (= (and b!1553032 res!1063152) b!1553034))

(assert (= (and b!1553034 c!143106) b!1553036))

(assert (= (and b!1553034 (not c!143106)) b!1553033))

(assert (= (or b!1553036 b!1553033) bm!71352))

(assert (=> b!1553032 m!1431631))

(assert (=> b!1553032 m!1431631))

(assert (=> b!1553032 m!1431639))

(assert (=> b!1553034 m!1431631))

(assert (=> b!1553034 m!1431631))

(assert (=> b!1553034 m!1431639))

(assert (=> bm!71352 m!1431631))

(declare-fun m!1431705 () Bool)

(assert (=> bm!71352 m!1431705))

(assert (=> b!1553035 m!1431631))

(assert (=> b!1553035 m!1431631))

(declare-fun m!1431707 () Bool)

(assert (=> b!1553035 m!1431707))

(assert (=> bm!71346 d!161255))

(declare-fun d!161257 () Bool)

(assert (=> d!161257 (= (get!26065 (getValueByKey!734 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762))) (v!21987 (getValueByKey!734 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161039 d!161257))

(assert (=> d!161039 d!161169))

(declare-fun d!161259 () Bool)

(declare-fun res!1063154 () Bool)

(declare-fun e!864658 () Bool)

(assert (=> d!161259 (=> res!1063154 e!864658)))

(assert (=> d!161259 (= res!1063154 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161259 (= (containsKey!752 (t!51086 (toList!11267 lt!669252)) (select (arr!49984 _keys!618) from!762)) e!864658)))

(declare-fun b!1553037 () Bool)

(declare-fun e!864659 () Bool)

(assert (=> b!1553037 (= e!864658 e!864659)))

(declare-fun res!1063155 () Bool)

(assert (=> b!1553037 (=> (not res!1063155) (not e!864659))))

(assert (=> b!1553037 (= res!1063155 (and (or (not ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252)))) (bvsle (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) (select (arr!49984 _keys!618) from!762))) ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252))) (bvslt (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) (select (arr!49984 _keys!618) from!762))))))

(declare-fun b!1553038 () Bool)

(assert (=> b!1553038 (= e!864659 (containsKey!752 (t!51086 (t!51086 (toList!11267 lt!669252))) (select (arr!49984 _keys!618) from!762)))))

(assert (= (and d!161259 (not res!1063154)) b!1553037))

(assert (= (and b!1553037 res!1063155) b!1553038))

(assert (=> b!1553038 m!1430943))

(declare-fun m!1431709 () Bool)

(assert (=> b!1553038 m!1431709))

(assert (=> b!1552893 d!161259))

(declare-fun d!161261 () Bool)

(declare-fun lt!669509 () Bool)

(assert (=> d!161261 (= lt!669509 (select (content!797 (t!51086 (toList!11267 lt!669334))) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun e!864660 () Bool)

(assert (=> d!161261 (= lt!669509 e!864660)))

(declare-fun res!1063156 () Bool)

(assert (=> d!161261 (=> (not res!1063156) (not e!864660))))

(assert (=> d!161261 (= res!1063156 ((_ is Cons!36357) (t!51086 (toList!11267 lt!669334))))))

(assert (=> d!161261 (= (contains!10139 (t!51086 (toList!11267 lt!669334)) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) lt!669509)))

(declare-fun b!1553039 () Bool)

(declare-fun e!864661 () Bool)

(assert (=> b!1553039 (= e!864660 e!864661)))

(declare-fun res!1063157 () Bool)

(assert (=> b!1553039 (=> res!1063157 e!864661)))

(assert (=> b!1553039 (= res!1063157 (= (h!37803 (t!51086 (toList!11267 lt!669334))) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1553040 () Bool)

(assert (=> b!1553040 (= e!864661 (contains!10139 (t!51086 (t!51086 (toList!11267 lt!669334))) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(assert (= (and d!161261 res!1063156) b!1553039))

(assert (= (and b!1553039 (not res!1063157)) b!1553040))

(assert (=> d!161261 m!1431535))

(declare-fun m!1431711 () Bool)

(assert (=> d!161261 m!1431711))

(declare-fun m!1431713 () Bool)

(assert (=> b!1553040 m!1431713))

(assert (=> b!1552897 d!161261))

(declare-fun d!161263 () Bool)

(assert (=> d!161263 (= (validKeyInArray!0 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001))) (and (not (= (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1552655 d!161263))

(declare-fun d!161265 () Bool)

(assert (=> d!161265 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669366) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lt!669510 () Unit!51642)

(assert (=> d!161265 (= lt!669510 (choose!2046 (toList!11267 lt!669366) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun e!864662 () Bool)

(assert (=> d!161265 e!864662))

(declare-fun res!1063158 () Bool)

(assert (=> d!161265 (=> (not res!1063158) (not e!864662))))

(assert (=> d!161265 (= res!1063158 (isStrictlySorted!883 (toList!11267 lt!669366)))))

(assert (=> d!161265 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669366) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!669510)))

(declare-fun b!1553041 () Bool)

(assert (=> b!1553041 (= e!864662 (containsKey!752 (toList!11267 lt!669366) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!161265 res!1063158) b!1553041))

(assert (=> d!161265 m!1431169))

(assert (=> d!161265 m!1431169))

(assert (=> d!161265 m!1431323))

(declare-fun m!1431715 () Bool)

(assert (=> d!161265 m!1431715))

(declare-fun m!1431717 () Bool)

(assert (=> d!161265 m!1431717))

(assert (=> b!1553041 m!1431319))

(assert (=> b!1552777 d!161265))

(declare-fun d!161267 () Bool)

(assert (=> d!161267 (= (isDefined!546 (getValueByKey!734 (toList!11267 lt!669366) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669366) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun bs!44617 () Bool)

(assert (= bs!44617 d!161267))

(assert (=> bs!44617 m!1431169))

(declare-fun m!1431719 () Bool)

(assert (=> bs!44617 m!1431719))

(assert (=> b!1552777 d!161267))

(assert (=> b!1552777 d!161107))

(declare-fun b!1553043 () Bool)

(declare-fun e!864663 () Option!809)

(declare-fun e!864664 () Option!809)

(assert (=> b!1553043 (= e!864663 e!864664)))

(declare-fun c!143108 () Bool)

(assert (=> b!1553043 (= c!143108 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669257))) (not (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669257)))) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun d!161269 () Bool)

(declare-fun c!143107 () Bool)

(assert (=> d!161269 (= c!143107 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669257))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669257)))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161269 (= (getValueByKey!734 (t!51086 (toList!11267 lt!669257)) (select (arr!49984 _keys!618) from!762)) e!864663)))

(declare-fun b!1553042 () Bool)

(assert (=> b!1553042 (= e!864663 (Some!808 (_2!12451 (h!37803 (t!51086 (toList!11267 lt!669257))))))))

(declare-fun b!1553044 () Bool)

(assert (=> b!1553044 (= e!864664 (getValueByKey!734 (t!51086 (t!51086 (toList!11267 lt!669257))) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1553045 () Bool)

(assert (=> b!1553045 (= e!864664 None!807)))

(assert (= (and d!161269 c!143107) b!1553042))

(assert (= (and d!161269 (not c!143107)) b!1553043))

(assert (= (and b!1553043 c!143108) b!1553044))

(assert (= (and b!1553043 (not c!143108)) b!1553045))

(assert (=> b!1553044 m!1430943))

(declare-fun m!1431721 () Bool)

(assert (=> b!1553044 m!1431721))

(assert (=> b!1552835 d!161269))

(declare-fun d!161271 () Bool)

(declare-fun res!1063159 () Bool)

(declare-fun e!864665 () Bool)

(assert (=> d!161271 (=> res!1063159 e!864665)))

(assert (=> d!161271 (= res!1063159 (or ((_ is Nil!36358) lt!669465) ((_ is Nil!36358) (t!51086 lt!669465))))))

(assert (=> d!161271 (= (isStrictlySorted!883 lt!669465) e!864665)))

(declare-fun b!1553046 () Bool)

(declare-fun e!864666 () Bool)

(assert (=> b!1553046 (= e!864665 e!864666)))

(declare-fun res!1063160 () Bool)

(assert (=> b!1553046 (=> (not res!1063160) (not e!864666))))

(assert (=> b!1553046 (= res!1063160 (bvslt (_1!12451 (h!37803 lt!669465)) (_1!12451 (h!37803 (t!51086 lt!669465)))))))

(declare-fun b!1553047 () Bool)

(assert (=> b!1553047 (= e!864666 (isStrictlySorted!883 (t!51086 lt!669465)))))

(assert (= (and d!161271 (not res!1063159)) b!1553046))

(assert (= (and b!1553046 res!1063160) b!1553047))

(declare-fun m!1431723 () Bool)

(assert (=> b!1553047 m!1431723))

(assert (=> d!161121 d!161271))

(assert (=> d!161121 d!161219))

(declare-fun d!161273 () Bool)

(declare-fun res!1063161 () Bool)

(declare-fun e!864667 () Bool)

(assert (=> d!161273 (=> res!1063161 e!864667)))

(assert (=> d!161273 (= res!1063161 (and ((_ is Cons!36357) (toList!11267 lt!669350)) (= (_1!12451 (h!37803 (toList!11267 lt!669350))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (=> d!161273 (= (containsKey!752 (toList!11267 lt!669350) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) e!864667)))

(declare-fun b!1553048 () Bool)

(declare-fun e!864668 () Bool)

(assert (=> b!1553048 (= e!864667 e!864668)))

(declare-fun res!1063162 () Bool)

(assert (=> b!1553048 (=> (not res!1063162) (not e!864668))))

(assert (=> b!1553048 (= res!1063162 (and (or (not ((_ is Cons!36357) (toList!11267 lt!669350))) (bvsle (_1!12451 (h!37803 (toList!11267 lt!669350))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))) ((_ is Cons!36357) (toList!11267 lt!669350)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669350))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun b!1553049 () Bool)

(assert (=> b!1553049 (= e!864668 (containsKey!752 (t!51086 (toList!11267 lt!669350)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (= (and d!161273 (not res!1063161)) b!1553048))

(assert (= (and b!1553048 res!1063162) b!1553049))

(declare-fun m!1431725 () Bool)

(assert (=> b!1553049 m!1431725))

(assert (=> d!161123 d!161273))

(declare-fun b!1553051 () Bool)

(declare-fun e!864669 () Option!809)

(declare-fun e!864670 () Option!809)

(assert (=> b!1553051 (= e!864669 e!864670)))

(declare-fun c!143110 () Bool)

(assert (=> b!1553051 (= c!143110 (and ((_ is Cons!36357) (t!51086 lt!669332)) (not (= (_1!12451 (h!37803 (t!51086 lt!669332))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun d!161275 () Bool)

(declare-fun c!143109 () Bool)

(assert (=> d!161275 (= c!143109 (and ((_ is Cons!36357) (t!51086 lt!669332)) (= (_1!12451 (h!37803 (t!51086 lt!669332))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161275 (= (getValueByKey!734 (t!51086 lt!669332) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864669)))

(declare-fun b!1553050 () Bool)

(assert (=> b!1553050 (= e!864669 (Some!808 (_2!12451 (h!37803 (t!51086 lt!669332)))))))

(declare-fun b!1553052 () Bool)

(assert (=> b!1553052 (= e!864670 (getValueByKey!734 (t!51086 (t!51086 lt!669332)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1553053 () Bool)

(assert (=> b!1553053 (= e!864670 None!807)))

(assert (= (and d!161275 c!143109) b!1553050))

(assert (= (and d!161275 (not c!143109)) b!1553051))

(assert (= (and b!1553051 c!143110) b!1553052))

(assert (= (and b!1553051 (not c!143110)) b!1553053))

(declare-fun m!1431727 () Bool)

(assert (=> b!1553052 m!1431727))

(assert (=> b!1552856 d!161275))

(assert (=> b!1552755 d!161173))

(declare-fun lt!669511 () Bool)

(declare-fun d!161277 () Bool)

(assert (=> d!161277 (= lt!669511 (select (content!797 (toList!11267 lt!669444)) (tuple2!24883 lt!669322 lt!669316)))))

(declare-fun e!864671 () Bool)

(assert (=> d!161277 (= lt!669511 e!864671)))

(declare-fun res!1063163 () Bool)

(assert (=> d!161277 (=> (not res!1063163) (not e!864671))))

(assert (=> d!161277 (= res!1063163 ((_ is Cons!36357) (toList!11267 lt!669444)))))

(assert (=> d!161277 (= (contains!10139 (toList!11267 lt!669444) (tuple2!24883 lt!669322 lt!669316)) lt!669511)))

(declare-fun b!1553054 () Bool)

(declare-fun e!864672 () Bool)

(assert (=> b!1553054 (= e!864671 e!864672)))

(declare-fun res!1063164 () Bool)

(assert (=> b!1553054 (=> res!1063164 e!864672)))

(assert (=> b!1553054 (= res!1063164 (= (h!37803 (toList!11267 lt!669444)) (tuple2!24883 lt!669322 lt!669316)))))

(declare-fun b!1553055 () Bool)

(assert (=> b!1553055 (= e!864672 (contains!10139 (t!51086 (toList!11267 lt!669444)) (tuple2!24883 lt!669322 lt!669316)))))

(assert (= (and d!161277 res!1063163) b!1553054))

(assert (= (and b!1553054 (not res!1063164)) b!1553055))

(declare-fun m!1431729 () Bool)

(assert (=> d!161277 m!1431729))

(declare-fun m!1431731 () Bool)

(assert (=> d!161277 m!1431731))

(declare-fun m!1431733 () Bool)

(assert (=> b!1553055 m!1431733))

(assert (=> b!1552818 d!161277))

(declare-fun d!161279 () Bool)

(assert (=> d!161279 (= (isDefined!546 (getValueByKey!734 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))) lt!669319)) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))) lt!669319))))))

(declare-fun bs!44618 () Bool)

(assert (= bs!44618 d!161279))

(assert (=> bs!44618 m!1431361))

(declare-fun m!1431735 () Bool)

(assert (=> bs!44618 m!1431735))

(assert (=> b!1552814 d!161279))

(declare-fun b!1553057 () Bool)

(declare-fun e!864673 () Option!809)

(declare-fun e!864674 () Option!809)

(assert (=> b!1553057 (= e!864673 e!864674)))

(declare-fun c!143112 () Bool)

(assert (=> b!1553057 (= c!143112 (and ((_ is Cons!36357) (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316)))) (not (= (_1!12451 (h!37803 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))))) lt!669319))))))

(declare-fun d!161281 () Bool)

(declare-fun c!143111 () Bool)

(assert (=> d!161281 (= c!143111 (and ((_ is Cons!36357) (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316)))) (= (_1!12451 (h!37803 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))))) lt!669319)))))

(assert (=> d!161281 (= (getValueByKey!734 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))) lt!669319) e!864673)))

(declare-fun b!1553056 () Bool)

(assert (=> b!1553056 (= e!864673 (Some!808 (_2!12451 (h!37803 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316)))))))))

(declare-fun b!1553058 () Bool)

(assert (=> b!1553058 (= e!864674 (getValueByKey!734 (t!51086 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316)))) lt!669319))))

(declare-fun b!1553059 () Bool)

(assert (=> b!1553059 (= e!864674 None!807)))

(assert (= (and d!161281 c!143111) b!1553056))

(assert (= (and d!161281 (not c!143111)) b!1553057))

(assert (= (and b!1553057 c!143112) b!1553058))

(assert (= (and b!1553057 (not c!143112)) b!1553059))

(declare-fun m!1431737 () Bool)

(assert (=> b!1553058 m!1431737))

(assert (=> b!1552814 d!161281))

(declare-fun d!161283 () Bool)

(declare-fun res!1063165 () Bool)

(declare-fun e!864675 () Bool)

(assert (=> d!161283 (=> res!1063165 e!864675)))

(assert (=> d!161283 (= res!1063165 (= (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!669379))))

(assert (=> d!161283 (= (arrayContainsKey!0 _keys!618 lt!669379 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!864675)))

(declare-fun b!1553060 () Bool)

(declare-fun e!864676 () Bool)

(assert (=> b!1553060 (= e!864675 e!864676)))

(declare-fun res!1063166 () Bool)

(assert (=> b!1553060 (=> (not res!1063166) (not e!864676))))

(assert (=> b!1553060 (= res!1063166 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(declare-fun b!1553061 () Bool)

(assert (=> b!1553061 (= e!864676 (arrayContainsKey!0 _keys!618 lt!669379 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!161283 (not res!1063165)) b!1553060))

(assert (= (and b!1553060 res!1063166) b!1553061))

(assert (=> d!161283 m!1431277))

(declare-fun m!1431739 () Bool)

(assert (=> b!1553061 m!1431739))

(assert (=> b!1552692 d!161283))

(declare-fun d!161285 () Bool)

(declare-fun res!1063167 () Bool)

(declare-fun e!864677 () Bool)

(assert (=> d!161285 (=> res!1063167 e!864677)))

(assert (=> d!161285 (= res!1063167 (and ((_ is Cons!36357) lt!669360) (= (_1!12451 (h!37803 lt!669360)) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(assert (=> d!161285 (= (containsKey!752 lt!669360 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) e!864677)))

(declare-fun b!1553062 () Bool)

(declare-fun e!864678 () Bool)

(assert (=> b!1553062 (= e!864677 e!864678)))

(declare-fun res!1063168 () Bool)

(assert (=> b!1553062 (=> (not res!1063168) (not e!864678))))

(assert (=> b!1553062 (= res!1063168 (and (or (not ((_ is Cons!36357) lt!669360)) (bvsle (_1!12451 (h!37803 lt!669360)) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) ((_ is Cons!36357) lt!669360) (bvslt (_1!12451 (h!37803 lt!669360)) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun b!1553063 () Bool)

(assert (=> b!1553063 (= e!864678 (containsKey!752 (t!51086 lt!669360) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (= (and d!161285 (not res!1063167)) b!1553062))

(assert (= (and b!1553062 res!1063168) b!1553063))

(declare-fun m!1431741 () Bool)

(assert (=> b!1553063 m!1431741))

(assert (=> b!1552722 d!161285))

(declare-fun d!161287 () Bool)

(assert (=> d!161287 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!669512 () Unit!51642)

(assert (=> d!161287 (= lt!669512 (choose!2046 (toList!11267 lt!669321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!864679 () Bool)

(assert (=> d!161287 e!864679))

(declare-fun res!1063169 () Bool)

(assert (=> d!161287 (=> (not res!1063169) (not e!864679))))

(assert (=> d!161287 (= res!1063169 (isStrictlySorted!883 (toList!11267 lt!669321)))))

(assert (=> d!161287 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669321) #b0000000000000000000000000000000000000000000000000000000000000000) lt!669512)))

(declare-fun b!1553064 () Bool)

(assert (=> b!1553064 (= e!864679 (containsKey!752 (toList!11267 lt!669321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!161287 res!1063169) b!1553064))

(assert (=> d!161287 m!1431427))

(assert (=> d!161287 m!1431427))

(assert (=> d!161287 m!1431429))

(declare-fun m!1431743 () Bool)

(assert (=> d!161287 m!1431743))

(declare-fun m!1431745 () Bool)

(assert (=> d!161287 m!1431745))

(assert (=> b!1553064 m!1431423))

(assert (=> b!1552848 d!161287))

(declare-fun d!161289 () Bool)

(assert (=> d!161289 (= (isDefined!546 (getValueByKey!734 (toList!11267 lt!669321) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!44619 () Bool)

(assert (= bs!44619 d!161289))

(assert (=> bs!44619 m!1431427))

(declare-fun m!1431747 () Bool)

(assert (=> bs!44619 m!1431747))

(assert (=> b!1552848 d!161289))

(declare-fun b!1553066 () Bool)

(declare-fun e!864680 () Option!809)

(declare-fun e!864681 () Option!809)

(assert (=> b!1553066 (= e!864680 e!864681)))

(declare-fun c!143114 () Bool)

(assert (=> b!1553066 (= c!143114 (and ((_ is Cons!36357) (toList!11267 lt!669321)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669321))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!161291 () Bool)

(declare-fun c!143113 () Bool)

(assert (=> d!161291 (= c!143113 (and ((_ is Cons!36357) (toList!11267 lt!669321)) (= (_1!12451 (h!37803 (toList!11267 lt!669321))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161291 (= (getValueByKey!734 (toList!11267 lt!669321) #b0000000000000000000000000000000000000000000000000000000000000000) e!864680)))

(declare-fun b!1553065 () Bool)

(assert (=> b!1553065 (= e!864680 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669321)))))))

(declare-fun b!1553067 () Bool)

(assert (=> b!1553067 (= e!864681 (getValueByKey!734 (t!51086 (toList!11267 lt!669321)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1553068 () Bool)

(assert (=> b!1553068 (= e!864681 None!807)))

(assert (= (and d!161291 c!143113) b!1553065))

(assert (= (and d!161291 (not c!143113)) b!1553066))

(assert (= (and b!1553066 c!143114) b!1553067))

(assert (= (and b!1553066 (not c!143114)) b!1553068))

(declare-fun m!1431749 () Bool)

(assert (=> b!1553067 m!1431749))

(assert (=> b!1552848 d!161291))

(assert (=> d!161143 d!161145))

(assert (=> d!161143 d!161051))

(declare-fun d!161293 () Bool)

(assert (=> d!161293 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!161293 true))

(declare-fun _$12!485 () Unit!51642)

(assert (=> d!161293 (= (choose!2046 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000) _$12!485)))

(declare-fun bs!44620 () Bool)

(assert (= bs!44620 d!161293))

(assert (=> bs!44620 m!1431149))

(assert (=> bs!44620 m!1431149))

(assert (=> bs!44620 m!1431185))

(assert (=> d!161143 d!161293))

(assert (=> d!161143 d!161191))

(declare-fun d!161295 () Bool)

(assert (=> d!161295 (= (get!26065 (getValueByKey!734 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762))) (v!21987 (getValueByKey!734 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161053 d!161295))

(declare-fun b!1553070 () Bool)

(declare-fun e!864682 () Option!809)

(declare-fun e!864683 () Option!809)

(assert (=> b!1553070 (= e!864682 e!864683)))

(declare-fun c!143116 () Bool)

(assert (=> b!1553070 (= c!143116 (and ((_ is Cons!36357) (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))) (not (= (_1!12451 (h!37803 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun c!143115 () Bool)

(declare-fun d!161297 () Bool)

(assert (=> d!161297 (= c!143115 (and ((_ is Cons!36357) (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))) (= (_1!12451 (h!37803 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161297 (= (getValueByKey!734 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762)) e!864682)))

(declare-fun b!1553069 () Bool)

(assert (=> b!1553069 (= e!864682 (Some!808 (_2!12451 (h!37803 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))))

(declare-fun b!1553071 () Bool)

(assert (=> b!1553071 (= e!864683 (getValueByKey!734 (t!51086 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1553072 () Bool)

(assert (=> b!1553072 (= e!864683 None!807)))

(assert (= (and d!161297 c!143115) b!1553069))

(assert (= (and d!161297 (not c!143115)) b!1553070))

(assert (= (and b!1553070 c!143116) b!1553071))

(assert (= (and b!1553070 (not c!143116)) b!1553072))

(assert (=> b!1553071 m!1430943))

(declare-fun m!1431751 () Bool)

(assert (=> b!1553071 m!1431751))

(assert (=> d!161053 d!161297))

(declare-fun d!161299 () Bool)

(assert (=> d!161299 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669334) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lt!669513 () Unit!51642)

(assert (=> d!161299 (= lt!669513 (choose!2046 (toList!11267 lt!669334) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun e!864684 () Bool)

(assert (=> d!161299 e!864684))

(declare-fun res!1063170 () Bool)

(assert (=> d!161299 (=> (not res!1063170) (not e!864684))))

(assert (=> d!161299 (= res!1063170 (isStrictlySorted!883 (toList!11267 lt!669334)))))

(assert (=> d!161299 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669334) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!669513)))

(declare-fun b!1553073 () Bool)

(assert (=> b!1553073 (= e!864684 (containsKey!752 (toList!11267 lt!669334) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!161299 res!1063170) b!1553073))

(assert (=> d!161299 m!1431099))

(assert (=> d!161299 m!1431099))

(assert (=> d!161299 m!1431435))

(declare-fun m!1431753 () Bool)

(assert (=> d!161299 m!1431753))

(declare-fun m!1431755 () Bool)

(assert (=> d!161299 m!1431755))

(assert (=> b!1553073 m!1431431))

(assert (=> b!1552851 d!161299))

(declare-fun d!161301 () Bool)

(assert (=> d!161301 (= (isDefined!546 (getValueByKey!734 (toList!11267 lt!669334) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669334) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun bs!44621 () Bool)

(assert (= bs!44621 d!161301))

(assert (=> bs!44621 m!1431099))

(declare-fun m!1431757 () Bool)

(assert (=> bs!44621 m!1431757))

(assert (=> b!1552851 d!161301))

(assert (=> b!1552851 d!161057))

(declare-fun d!161303 () Bool)

(assert (=> d!161303 (= (isDefined!546 (getValueByKey!734 (toList!11267 lt!669362) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669362) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))))

(declare-fun bs!44622 () Bool)

(assert (= bs!44622 d!161303))

(assert (=> bs!44622 m!1431145))

(declare-fun m!1431759 () Bool)

(assert (=> bs!44622 m!1431759))

(assert (=> b!1552713 d!161303))

(assert (=> b!1552713 d!161067))

(assert (=> b!1552666 d!161263))

(declare-fun d!161305 () Bool)

(assert (=> d!161305 (= (content!798 Nil!36359) ((as const (Array (_ BitVec 64) Bool)) false))))

(assert (=> d!161111 d!161305))

(assert (=> d!161091 d!161093))

(assert (=> d!161091 d!161095))

(declare-fun d!161307 () Bool)

(assert (=> d!161307 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762)))))

(assert (=> d!161307 true))

(declare-fun _$12!486 () Unit!51642)

(assert (=> d!161307 (= (choose!2046 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762)) _$12!486)))

(declare-fun bs!44623 () Bool)

(assert (= bs!44623 d!161307))

(assert (=> bs!44623 m!1430943))

(assert (=> bs!44623 m!1431125))

(assert (=> bs!44623 m!1431125))

(assert (=> bs!44623 m!1431127))

(assert (=> d!161091 d!161307))

(assert (=> d!161091 d!161191))

(declare-fun d!161309 () Bool)

(assert (not d!161309))

(assert (=> b!1552847 d!161309))

(assert (=> b!1552898 d!161021))

(declare-fun d!161311 () Bool)

(assert (=> d!161311 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!669514 () Unit!51642)

(assert (=> d!161311 (= lt!669514 (choose!2046 (toList!11267 lt!669321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!864685 () Bool)

(assert (=> d!161311 e!864685))

(declare-fun res!1063171 () Bool)

(assert (=> d!161311 (=> (not res!1063171) (not e!864685))))

(assert (=> d!161311 (= res!1063171 (isStrictlySorted!883 (toList!11267 lt!669321)))))

(assert (=> d!161311 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669321) #b1000000000000000000000000000000000000000000000000000000000000000) lt!669514)))

(declare-fun b!1553074 () Bool)

(assert (=> b!1553074 (= e!864685 (containsKey!752 (toList!11267 lt!669321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!161311 res!1063171) b!1553074))

(assert (=> d!161311 m!1431489))

(assert (=> d!161311 m!1431489))

(assert (=> d!161311 m!1431491))

(declare-fun m!1431761 () Bool)

(assert (=> d!161311 m!1431761))

(assert (=> d!161311 m!1431745))

(assert (=> b!1553074 m!1431485))

(assert (=> b!1552889 d!161311))

(assert (=> b!1552889 d!161159))

(assert (=> b!1552889 d!161161))

(declare-fun b!1553093 () Bool)

(declare-fun e!864697 () SeekEntryResult!13514)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1553093 (= e!864697 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) mask!926) #b00000000000000000000000000000000 mask!926) (select (arr!49984 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926))))

(declare-fun b!1553094 () Bool)

(declare-fun lt!669519 () SeekEntryResult!13514)

(assert (=> b!1553094 (and (bvsge (index!56455 lt!669519) #b00000000000000000000000000000000) (bvslt (index!56455 lt!669519) (size!50535 _keys!618)))))

(declare-fun res!1063180 () Bool)

(assert (=> b!1553094 (= res!1063180 (= (select (arr!49984 _keys!618) (index!56455 lt!669519)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!864696 () Bool)

(assert (=> b!1553094 (=> res!1063180 e!864696)))

(declare-fun b!1553095 () Bool)

(assert (=> b!1553095 (= e!864697 (Intermediate!13514 false (toIndex!0 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) mask!926) #b00000000000000000000000000000000))))

(declare-fun b!1553096 () Bool)

(assert (=> b!1553096 (and (bvsge (index!56455 lt!669519) #b00000000000000000000000000000000) (bvslt (index!56455 lt!669519) (size!50535 _keys!618)))))

(declare-fun res!1063178 () Bool)

(assert (=> b!1553096 (= res!1063178 (= (select (arr!49984 _keys!618) (index!56455 lt!669519)) (select (arr!49984 _keys!618) #b00000000000000000000000000000000)))))

(assert (=> b!1553096 (=> res!1063178 e!864696)))

(declare-fun e!864699 () Bool)

(assert (=> b!1553096 (= e!864699 e!864696)))

(declare-fun d!161313 () Bool)

(declare-fun e!864698 () Bool)

(assert (=> d!161313 e!864698))

(declare-fun c!143124 () Bool)

(assert (=> d!161313 (= c!143124 (and ((_ is Intermediate!13514) lt!669519) (undefined!14326 lt!669519)))))

(declare-fun e!864700 () SeekEntryResult!13514)

(assert (=> d!161313 (= lt!669519 e!864700)))

(declare-fun c!143125 () Bool)

(assert (=> d!161313 (= c!143125 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!669520 () (_ BitVec 64))

(assert (=> d!161313 (= lt!669520 (select (arr!49984 _keys!618) (toIndex!0 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) mask!926)))))

(assert (=> d!161313 (validMask!0 mask!926)))

(assert (=> d!161313 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) mask!926) (select (arr!49984 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926) lt!669519)))

(declare-fun b!1553097 () Bool)

(assert (=> b!1553097 (= e!864700 e!864697)))

(declare-fun c!143123 () Bool)

(assert (=> b!1553097 (= c!143123 (or (= lt!669520 (select (arr!49984 _keys!618) #b00000000000000000000000000000000)) (= (bvadd lt!669520 lt!669520) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1553098 () Bool)

(assert (=> b!1553098 (= e!864698 (bvsge (x!139208 lt!669519) #b01111111111111111111111111111110))))

(declare-fun b!1553099 () Bool)

(assert (=> b!1553099 (= e!864698 e!864699)))

(declare-fun res!1063179 () Bool)

(assert (=> b!1553099 (= res!1063179 (and ((_ is Intermediate!13514) lt!669519) (not (undefined!14326 lt!669519)) (bvslt (x!139208 lt!669519) #b01111111111111111111111111111110) (bvsge (x!139208 lt!669519) #b00000000000000000000000000000000) (bvsge (x!139208 lt!669519) #b00000000000000000000000000000000)))))

(assert (=> b!1553099 (=> (not res!1063179) (not e!864699))))

(declare-fun b!1553100 () Bool)

(assert (=> b!1553100 (and (bvsge (index!56455 lt!669519) #b00000000000000000000000000000000) (bvslt (index!56455 lt!669519) (size!50535 _keys!618)))))

(assert (=> b!1553100 (= e!864696 (= (select (arr!49984 _keys!618) (index!56455 lt!669519)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1553101 () Bool)

(assert (=> b!1553101 (= e!864700 (Intermediate!13514 true (toIndex!0 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) mask!926) #b00000000000000000000000000000000))))

(assert (= (and d!161313 c!143125) b!1553101))

(assert (= (and d!161313 (not c!143125)) b!1553097))

(assert (= (and b!1553097 c!143123) b!1553095))

(assert (= (and b!1553097 (not c!143123)) b!1553093))

(assert (= (and d!161313 c!143124) b!1553098))

(assert (= (and d!161313 (not c!143124)) b!1553099))

(assert (= (and b!1553099 res!1063179) b!1553096))

(assert (= (and b!1553096 (not res!1063178)) b!1553094))

(assert (= (and b!1553094 (not res!1063180)) b!1553100))

(declare-fun m!1431763 () Bool)

(assert (=> b!1553096 m!1431763))

(assert (=> d!161313 m!1431239))

(declare-fun m!1431765 () Bool)

(assert (=> d!161313 m!1431765))

(assert (=> d!161313 m!1430983))

(assert (=> b!1553093 m!1431239))

(declare-fun m!1431767 () Bool)

(assert (=> b!1553093 m!1431767))

(assert (=> b!1553093 m!1431767))

(assert (=> b!1553093 m!1431153))

(declare-fun m!1431769 () Bool)

(assert (=> b!1553093 m!1431769))

(assert (=> b!1553100 m!1431763))

(assert (=> b!1553094 m!1431763))

(assert (=> d!161027 d!161313))

(declare-fun d!161315 () Bool)

(declare-fun lt!669526 () (_ BitVec 32))

(declare-fun lt!669525 () (_ BitVec 32))

(assert (=> d!161315 (= lt!669526 (bvmul (bvxor lt!669525 (bvlshr lt!669525 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!161315 (= lt!669525 ((_ extract 31 0) (bvand (bvxor (select (arr!49984 _keys!618) #b00000000000000000000000000000000) (bvlshr (select (arr!49984 _keys!618) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!161315 (and (bvsge mask!926 #b00000000000000000000000000000000) (let ((res!1063181 (let ((h!37807 ((_ extract 31 0) (bvand (bvxor (select (arr!49984 _keys!618) #b00000000000000000000000000000000) (bvlshr (select (arr!49984 _keys!618) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!139218 (bvmul (bvxor h!37807 (bvlshr h!37807 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!139218 (bvlshr x!139218 #b00000000000000000000000000001101)) mask!926))))) (and (bvslt res!1063181 (bvadd mask!926 #b00000000000000000000000000000001)) (bvsge res!1063181 #b00000000000000000000000000000000))))))

(assert (=> d!161315 (= (toIndex!0 (select (arr!49984 _keys!618) #b00000000000000000000000000000000) mask!926) (bvand (bvxor lt!669526 (bvlshr lt!669526 #b00000000000000000000000000001101)) mask!926))))

(assert (=> d!161027 d!161315))

(assert (=> d!161027 d!160989))

(declare-fun d!161317 () Bool)

(assert (=> d!161317 (= (isDefined!546 (getValueByKey!734 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762))) (not (isEmpty!1135 (getValueByKey!734 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun bs!44624 () Bool)

(assert (= bs!44624 d!161317))

(assert (=> bs!44624 m!1431303))

(declare-fun m!1431771 () Bool)

(assert (=> bs!44624 m!1431771))

(assert (=> b!1552763 d!161317))

(assert (=> b!1552763 d!161297))

(declare-fun d!161319 () Bool)

(assert (=> d!161319 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762)))))

(declare-fun lt!669527 () Unit!51642)

(assert (=> d!161319 (= lt!669527 (choose!2046 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762)))))

(declare-fun e!864701 () Bool)

(assert (=> d!161319 e!864701))

(declare-fun res!1063182 () Bool)

(assert (=> d!161319 (=> (not res!1063182) (not e!864701))))

(assert (=> d!161319 (= res!1063182 (isStrictlySorted!883 (toList!11267 lt!669321)))))

(assert (=> d!161319 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762)) lt!669527)))

(declare-fun b!1553102 () Bool)

(assert (=> b!1553102 (= e!864701 (containsKey!752 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762)))))

(assert (= (and d!161319 res!1063182) b!1553102))

(assert (=> d!161319 m!1430943))

(assert (=> d!161319 m!1431289))

(assert (=> d!161319 m!1431289))

(assert (=> d!161319 m!1431297))

(assert (=> d!161319 m!1430943))

(declare-fun m!1431773 () Bool)

(assert (=> d!161319 m!1431773))

(assert (=> d!161319 m!1431745))

(assert (=> b!1553102 m!1430943))

(assert (=> b!1553102 m!1431293))

(assert (=> b!1552758 d!161319))

(assert (=> b!1552758 d!161167))

(assert (=> b!1552758 d!161169))

(assert (=> b!1552822 d!161137))

(declare-fun d!161321 () Bool)

(declare-fun c!143126 () Bool)

(assert (=> d!161321 (= c!143126 ((_ is Nil!36358) (toList!11267 lt!669350)))))

(declare-fun e!864702 () (InoxSet tuple2!24882))

(assert (=> d!161321 (= (content!797 (toList!11267 lt!669350)) e!864702)))

(declare-fun b!1553103 () Bool)

(assert (=> b!1553103 (= e!864702 ((as const (Array tuple2!24882 Bool)) false))))

(declare-fun b!1553104 () Bool)

(assert (=> b!1553104 (= e!864702 ((_ map or) (store ((as const (Array tuple2!24882 Bool)) false) (h!37803 (toList!11267 lt!669350)) true) (content!797 (t!51086 (toList!11267 lt!669350)))))))

(assert (= (and d!161321 c!143126) b!1553103))

(assert (= (and d!161321 (not c!143126)) b!1553104))

(declare-fun m!1431775 () Bool)

(assert (=> b!1553104 m!1431775))

(declare-fun m!1431777 () Bool)

(assert (=> b!1553104 m!1431777))

(assert (=> d!161097 d!161321))

(declare-fun d!161323 () Bool)

(declare-fun res!1063183 () Bool)

(declare-fun e!864703 () Bool)

(assert (=> d!161323 (=> res!1063183 e!864703)))

(assert (=> d!161323 (= res!1063183 (and ((_ is Cons!36357) (toList!11267 lt!669366)) (= (_1!12451 (h!37803 (toList!11267 lt!669366))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161323 (= (containsKey!752 (toList!11267 lt!669366) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864703)))

(declare-fun b!1553105 () Bool)

(declare-fun e!864704 () Bool)

(assert (=> b!1553105 (= e!864703 e!864704)))

(declare-fun res!1063184 () Bool)

(assert (=> b!1553105 (=> (not res!1063184) (not e!864704))))

(assert (=> b!1553105 (= res!1063184 (and (or (not ((_ is Cons!36357) (toList!11267 lt!669366))) (bvsle (_1!12451 (h!37803 (toList!11267 lt!669366))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) ((_ is Cons!36357) (toList!11267 lt!669366)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669366))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553106 () Bool)

(assert (=> b!1553106 (= e!864704 (containsKey!752 (t!51086 (toList!11267 lt!669366)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!161323 (not res!1063183)) b!1553105))

(assert (= (and b!1553105 res!1063184) b!1553106))

(declare-fun m!1431779 () Bool)

(assert (=> b!1553106 m!1431779))

(assert (=> d!161059 d!161323))

(declare-fun d!161325 () Bool)

(assert (=> d!161325 (= (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000)) (not ((_ is Some!808) (getValueByKey!734 (toList!11267 lt!669252) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!161145 d!161325))

(declare-fun d!161327 () Bool)

(declare-fun lt!669528 () Bool)

(assert (=> d!161327 (= lt!669528 (select (content!797 (t!51086 (toList!11267 lt!669350))) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun e!864705 () Bool)

(assert (=> d!161327 (= lt!669528 e!864705)))

(declare-fun res!1063185 () Bool)

(assert (=> d!161327 (=> (not res!1063185) (not e!864705))))

(assert (=> d!161327 (= res!1063185 ((_ is Cons!36357) (t!51086 (toList!11267 lt!669350))))))

(assert (=> d!161327 (= (contains!10139 (t!51086 (toList!11267 lt!669350)) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) lt!669528)))

(declare-fun b!1553107 () Bool)

(declare-fun e!864706 () Bool)

(assert (=> b!1553107 (= e!864705 e!864706)))

(declare-fun res!1063186 () Bool)

(assert (=> b!1553107 (=> res!1063186 e!864706)))

(assert (=> b!1553107 (= res!1063186 (= (h!37803 (t!51086 (toList!11267 lt!669350))) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun b!1553108 () Bool)

(assert (=> b!1553108 (= e!864706 (contains!10139 (t!51086 (t!51086 (toList!11267 lt!669350))) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(assert (= (and d!161327 res!1063185) b!1553107))

(assert (= (and b!1553107 (not res!1063186)) b!1553108))

(assert (=> d!161327 m!1431777))

(declare-fun m!1431781 () Bool)

(assert (=> d!161327 m!1431781))

(declare-fun m!1431783 () Bool)

(assert (=> b!1553108 m!1431783))

(assert (=> b!1552832 d!161327))

(assert (=> b!1552909 d!161173))

(declare-fun d!161329 () Bool)

(assert (=> d!161329 (= (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762))) (not ((_ is Some!808) (getValueByKey!734 (toList!11267 lt!669252) (select (arr!49984 _keys!618) from!762)))))))

(assert (=> d!161093 d!161329))

(declare-fun d!161331 () Bool)

(declare-fun lt!669529 () Bool)

(assert (=> d!161331 (= lt!669529 (select (content!797 lt!669348) (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun e!864707 () Bool)

(assert (=> d!161331 (= lt!669529 e!864707)))

(declare-fun res!1063187 () Bool)

(assert (=> d!161331 (=> (not res!1063187) (not e!864707))))

(assert (=> d!161331 (= res!1063187 ((_ is Cons!36357) lt!669348))))

(assert (=> d!161331 (= (contains!10139 lt!669348 (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))) lt!669529)))

(declare-fun b!1553109 () Bool)

(declare-fun e!864708 () Bool)

(assert (=> b!1553109 (= e!864707 e!864708)))

(declare-fun res!1063188 () Bool)

(assert (=> b!1553109 (=> res!1063188 e!864708)))

(assert (=> b!1553109 (= res!1063188 (= (h!37803 lt!669348) (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun b!1553110 () Bool)

(assert (=> b!1553110 (= e!864708 (contains!10139 (t!51086 lt!669348) (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (= (and d!161331 res!1063187) b!1553109))

(assert (= (and b!1553109 (not res!1063188)) b!1553110))

(declare-fun m!1431785 () Bool)

(assert (=> d!161331 m!1431785))

(declare-fun m!1431787 () Bool)

(assert (=> d!161331 m!1431787))

(declare-fun m!1431789 () Bool)

(assert (=> b!1553110 m!1431789))

(assert (=> b!1552878 d!161331))

(declare-fun d!161333 () Bool)

(declare-fun res!1063189 () Bool)

(declare-fun e!864709 () Bool)

(assert (=> d!161333 (=> res!1063189 e!864709)))

(assert (=> d!161333 (= res!1063189 (and ((_ is Cons!36357) (toList!11267 lt!669321)) (= (_1!12451 (h!37803 (toList!11267 lt!669321))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161333 (= (containsKey!752 (toList!11267 lt!669321) #b0000000000000000000000000000000000000000000000000000000000000000) e!864709)))

(declare-fun b!1553111 () Bool)

(declare-fun e!864710 () Bool)

(assert (=> b!1553111 (= e!864709 e!864710)))

(declare-fun res!1063190 () Bool)

(assert (=> b!1553111 (=> (not res!1063190) (not e!864710))))

(assert (=> b!1553111 (= res!1063190 (and (or (not ((_ is Cons!36357) (toList!11267 lt!669321))) (bvsle (_1!12451 (h!37803 (toList!11267 lt!669321))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36357) (toList!11267 lt!669321)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669321))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1553112 () Bool)

(assert (=> b!1553112 (= e!864710 (containsKey!752 (t!51086 (toList!11267 lt!669321)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!161333 (not res!1063189)) b!1553111))

(assert (= (and b!1553111 res!1063190) b!1553112))

(declare-fun m!1431791 () Bool)

(assert (=> b!1553112 m!1431791))

(assert (=> d!161113 d!161333))

(declare-fun d!161335 () Bool)

(declare-fun res!1063191 () Bool)

(declare-fun e!864711 () Bool)

(assert (=> d!161335 (=> res!1063191 e!864711)))

(assert (=> d!161335 (= res!1063191 (and ((_ is Cons!36357) (toList!11267 lt!669334)) (= (_1!12451 (h!37803 (toList!11267 lt!669334))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161335 (= (containsKey!752 (toList!11267 lt!669334) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864711)))

(declare-fun b!1553113 () Bool)

(declare-fun e!864712 () Bool)

(assert (=> b!1553113 (= e!864711 e!864712)))

(declare-fun res!1063192 () Bool)

(assert (=> b!1553113 (=> (not res!1063192) (not e!864712))))

(assert (=> b!1553113 (= res!1063192 (and (or (not ((_ is Cons!36357) (toList!11267 lt!669334))) (bvsle (_1!12451 (h!37803 (toList!11267 lt!669334))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) ((_ is Cons!36357) (toList!11267 lt!669334)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669334))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553114 () Bool)

(assert (=> b!1553114 (= e!864712 (containsKey!752 (t!51086 (toList!11267 lt!669334)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!161335 (not res!1063191)) b!1553113))

(assert (= (and b!1553113 res!1063192) b!1553114))

(declare-fun m!1431793 () Bool)

(assert (=> b!1553114 m!1431793))

(assert (=> d!161115 d!161335))

(declare-fun b!1553116 () Bool)

(declare-fun e!864713 () Option!809)

(declare-fun e!864714 () Option!809)

(assert (=> b!1553116 (= e!864713 e!864714)))

(declare-fun c!143128 () Bool)

(assert (=> b!1553116 (= c!143128 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669255))) (not (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669255)))) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun c!143127 () Bool)

(declare-fun d!161337 () Bool)

(assert (=> d!161337 (= c!143127 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669255))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669255)))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161337 (= (getValueByKey!734 (t!51086 (toList!11267 lt!669255)) (select (arr!49984 _keys!618) from!762)) e!864713)))

(declare-fun b!1553115 () Bool)

(assert (=> b!1553115 (= e!864713 (Some!808 (_2!12451 (h!37803 (t!51086 (toList!11267 lt!669255))))))))

(declare-fun b!1553117 () Bool)

(assert (=> b!1553117 (= e!864714 (getValueByKey!734 (t!51086 (t!51086 (toList!11267 lt!669255))) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1553118 () Bool)

(assert (=> b!1553118 (= e!864714 None!807)))

(assert (= (and d!161337 c!143127) b!1553115))

(assert (= (and d!161337 (not c!143127)) b!1553116))

(assert (= (and b!1553116 c!143128) b!1553117))

(assert (= (and b!1553116 (not c!143128)) b!1553118))

(assert (=> b!1553117 m!1430943))

(declare-fun m!1431795 () Bool)

(assert (=> b!1553117 m!1431795))

(assert (=> b!1552683 d!161337))

(declare-fun d!161339 () Bool)

(declare-fun c!143129 () Bool)

(assert (=> d!161339 (= c!143129 ((_ is Nil!36358) (toList!11267 lt!669362)))))

(declare-fun e!864715 () (InoxSet tuple2!24882))

(assert (=> d!161339 (= (content!797 (toList!11267 lt!669362)) e!864715)))

(declare-fun b!1553119 () Bool)

(assert (=> b!1553119 (= e!864715 ((as const (Array tuple2!24882 Bool)) false))))

(declare-fun b!1553120 () Bool)

(assert (=> b!1553120 (= e!864715 ((_ map or) (store ((as const (Array tuple2!24882 Bool)) false) (h!37803 (toList!11267 lt!669362)) true) (content!797 (t!51086 (toList!11267 lt!669362)))))))

(assert (= (and d!161339 c!143129) b!1553119))

(assert (= (and d!161339 (not c!143129)) b!1553120))

(declare-fun m!1431797 () Bool)

(assert (=> b!1553120 m!1431797))

(declare-fun m!1431799 () Bool)

(assert (=> b!1553120 m!1431799))

(assert (=> d!161153 d!161339))

(declare-fun d!161341 () Bool)

(declare-fun e!864717 () Bool)

(assert (=> d!161341 e!864717))

(declare-fun res!1063193 () Bool)

(assert (=> d!161341 (=> res!1063193 e!864717)))

(declare-fun lt!669533 () Bool)

(assert (=> d!161341 (= res!1063193 (not lt!669533))))

(declare-fun lt!669532 () Bool)

(assert (=> d!161341 (= lt!669533 lt!669532)))

(declare-fun lt!669531 () Unit!51642)

(declare-fun e!864716 () Unit!51642)

(assert (=> d!161341 (= lt!669531 e!864716)))

(declare-fun c!143130 () Bool)

(assert (=> d!161341 (= c!143130 lt!669532)))

(assert (=> d!161341 (= lt!669532 (containsKey!752 (toList!11267 lt!669444) (_1!12451 (tuple2!24883 lt!669322 lt!669316))))))

(assert (=> d!161341 (= (contains!10137 lt!669444 (_1!12451 (tuple2!24883 lt!669322 lt!669316))) lt!669533)))

(declare-fun b!1553121 () Bool)

(declare-fun lt!669530 () Unit!51642)

(assert (=> b!1553121 (= e!864716 lt!669530)))

(assert (=> b!1553121 (= lt!669530 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669444) (_1!12451 (tuple2!24883 lt!669322 lt!669316))))))

(assert (=> b!1553121 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669444) (_1!12451 (tuple2!24883 lt!669322 lt!669316))))))

(declare-fun b!1553122 () Bool)

(declare-fun Unit!51664 () Unit!51642)

(assert (=> b!1553122 (= e!864716 Unit!51664)))

(declare-fun b!1553123 () Bool)

(assert (=> b!1553123 (= e!864717 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669444) (_1!12451 (tuple2!24883 lt!669322 lt!669316)))))))

(assert (= (and d!161341 c!143130) b!1553121))

(assert (= (and d!161341 (not c!143130)) b!1553122))

(assert (= (and d!161341 (not res!1063193)) b!1553123))

(declare-fun m!1431801 () Bool)

(assert (=> d!161341 m!1431801))

(declare-fun m!1431803 () Bool)

(assert (=> b!1553121 m!1431803))

(assert (=> b!1553121 m!1431385))

(assert (=> b!1553121 m!1431385))

(declare-fun m!1431805 () Bool)

(assert (=> b!1553121 m!1431805))

(assert (=> b!1553123 m!1431385))

(assert (=> b!1553123 m!1431385))

(assert (=> b!1553123 m!1431805))

(assert (=> d!161083 d!161341))

(declare-fun b!1553125 () Bool)

(declare-fun e!864718 () Option!809)

(declare-fun e!864719 () Option!809)

(assert (=> b!1553125 (= e!864718 e!864719)))

(declare-fun c!143132 () Bool)

(assert (=> b!1553125 (= c!143132 (and ((_ is Cons!36357) lt!669442) (not (= (_1!12451 (h!37803 lt!669442)) (_1!12451 (tuple2!24883 lt!669322 lt!669316))))))))

(declare-fun d!161343 () Bool)

(declare-fun c!143131 () Bool)

(assert (=> d!161343 (= c!143131 (and ((_ is Cons!36357) lt!669442) (= (_1!12451 (h!37803 lt!669442)) (_1!12451 (tuple2!24883 lt!669322 lt!669316)))))))

(assert (=> d!161343 (= (getValueByKey!734 lt!669442 (_1!12451 (tuple2!24883 lt!669322 lt!669316))) e!864718)))

(declare-fun b!1553124 () Bool)

(assert (=> b!1553124 (= e!864718 (Some!808 (_2!12451 (h!37803 lt!669442))))))

(declare-fun b!1553126 () Bool)

(assert (=> b!1553126 (= e!864719 (getValueByKey!734 (t!51086 lt!669442) (_1!12451 (tuple2!24883 lt!669322 lt!669316))))))

(declare-fun b!1553127 () Bool)

(assert (=> b!1553127 (= e!864719 None!807)))

(assert (= (and d!161343 c!143131) b!1553124))

(assert (= (and d!161343 (not c!143131)) b!1553125))

(assert (= (and b!1553125 c!143132) b!1553126))

(assert (= (and b!1553125 (not c!143132)) b!1553127))

(declare-fun m!1431807 () Bool)

(assert (=> b!1553126 m!1431807))

(assert (=> d!161083 d!161343))

(declare-fun d!161345 () Bool)

(assert (=> d!161345 (= (getValueByKey!734 lt!669442 (_1!12451 (tuple2!24883 lt!669322 lt!669316))) (Some!808 (_2!12451 (tuple2!24883 lt!669322 lt!669316))))))

(declare-fun lt!669534 () Unit!51642)

(assert (=> d!161345 (= lt!669534 (choose!2044 lt!669442 (_1!12451 (tuple2!24883 lt!669322 lt!669316)) (_2!12451 (tuple2!24883 lt!669322 lt!669316))))))

(declare-fun e!864720 () Bool)

(assert (=> d!161345 e!864720))

(declare-fun res!1063194 () Bool)

(assert (=> d!161345 (=> (not res!1063194) (not e!864720))))

(assert (=> d!161345 (= res!1063194 (isStrictlySorted!883 lt!669442))))

(assert (=> d!161345 (= (lemmaContainsTupThenGetReturnValue!374 lt!669442 (_1!12451 (tuple2!24883 lt!669322 lt!669316)) (_2!12451 (tuple2!24883 lt!669322 lt!669316))) lt!669534)))

(declare-fun b!1553128 () Bool)

(declare-fun res!1063195 () Bool)

(assert (=> b!1553128 (=> (not res!1063195) (not e!864720))))

(assert (=> b!1553128 (= res!1063195 (containsKey!752 lt!669442 (_1!12451 (tuple2!24883 lt!669322 lt!669316))))))

(declare-fun b!1553129 () Bool)

(assert (=> b!1553129 (= e!864720 (contains!10139 lt!669442 (tuple2!24883 (_1!12451 (tuple2!24883 lt!669322 lt!669316)) (_2!12451 (tuple2!24883 lt!669322 lt!669316)))))))

(assert (= (and d!161345 res!1063194) b!1553128))

(assert (= (and b!1553128 res!1063195) b!1553129))

(assert (=> d!161345 m!1431379))

(declare-fun m!1431809 () Bool)

(assert (=> d!161345 m!1431809))

(declare-fun m!1431811 () Bool)

(assert (=> d!161345 m!1431811))

(declare-fun m!1431813 () Bool)

(assert (=> b!1553128 m!1431813))

(declare-fun m!1431815 () Bool)

(assert (=> b!1553129 m!1431815))

(assert (=> d!161083 d!161345))

(declare-fun b!1553130 () Bool)

(declare-fun c!143136 () Bool)

(assert (=> b!1553130 (= c!143136 (and ((_ is Cons!36357) (toList!11267 lt!669320)) (bvsgt (_1!12451 (h!37803 (toList!11267 lt!669320))) (_1!12451 (tuple2!24883 lt!669322 lt!669316)))))))

(declare-fun e!864721 () List!36361)

(declare-fun e!864724 () List!36361)

(assert (=> b!1553130 (= e!864721 e!864724)))

(declare-fun b!1553131 () Bool)

(declare-fun e!864723 () Bool)

(declare-fun lt!669535 () List!36361)

(assert (=> b!1553131 (= e!864723 (contains!10139 lt!669535 (tuple2!24883 (_1!12451 (tuple2!24883 lt!669322 lt!669316)) (_2!12451 (tuple2!24883 lt!669322 lt!669316)))))))

(declare-fun b!1553132 () Bool)

(declare-fun e!864725 () List!36361)

(assert (=> b!1553132 (= e!864725 e!864721)))

(declare-fun c!143133 () Bool)

(assert (=> b!1553132 (= c!143133 (and ((_ is Cons!36357) (toList!11267 lt!669320)) (= (_1!12451 (h!37803 (toList!11267 lt!669320))) (_1!12451 (tuple2!24883 lt!669322 lt!669316)))))))

(declare-fun bm!71353 () Bool)

(declare-fun call!71356 () List!36361)

(declare-fun e!864722 () List!36361)

(declare-fun c!143135 () Bool)

(assert (=> bm!71353 (= call!71356 ($colon$colon!946 e!864722 (ite c!143135 (h!37803 (toList!11267 lt!669320)) (tuple2!24883 (_1!12451 (tuple2!24883 lt!669322 lt!669316)) (_2!12451 (tuple2!24883 lt!669322 lt!669316))))))))

(declare-fun c!143134 () Bool)

(assert (=> bm!71353 (= c!143134 c!143135)))

(declare-fun b!1553133 () Bool)

(assert (=> b!1553133 (= e!864725 call!71356)))

(declare-fun b!1553134 () Bool)

(declare-fun call!71357 () List!36361)

(assert (=> b!1553134 (= e!864724 call!71357)))

(declare-fun b!1553135 () Bool)

(declare-fun call!71358 () List!36361)

(assert (=> b!1553135 (= e!864721 call!71358)))

(declare-fun d!161347 () Bool)

(assert (=> d!161347 e!864723))

(declare-fun res!1063196 () Bool)

(assert (=> d!161347 (=> (not res!1063196) (not e!864723))))

(assert (=> d!161347 (= res!1063196 (isStrictlySorted!883 lt!669535))))

(assert (=> d!161347 (= lt!669535 e!864725)))

(assert (=> d!161347 (= c!143135 (and ((_ is Cons!36357) (toList!11267 lt!669320)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669320))) (_1!12451 (tuple2!24883 lt!669322 lt!669316)))))))

(assert (=> d!161347 (isStrictlySorted!883 (toList!11267 lt!669320))))

(assert (=> d!161347 (= (insertStrictlySorted!503 (toList!11267 lt!669320) (_1!12451 (tuple2!24883 lt!669322 lt!669316)) (_2!12451 (tuple2!24883 lt!669322 lt!669316))) lt!669535)))

(declare-fun b!1553136 () Bool)

(assert (=> b!1553136 (= e!864722 (insertStrictlySorted!503 (t!51086 (toList!11267 lt!669320)) (_1!12451 (tuple2!24883 lt!669322 lt!669316)) (_2!12451 (tuple2!24883 lt!669322 lt!669316))))))

(declare-fun b!1553137 () Bool)

(assert (=> b!1553137 (= e!864722 (ite c!143133 (t!51086 (toList!11267 lt!669320)) (ite c!143136 (Cons!36357 (h!37803 (toList!11267 lt!669320)) (t!51086 (toList!11267 lt!669320))) Nil!36358)))))

(declare-fun bm!71354 () Bool)

(assert (=> bm!71354 (= call!71358 call!71356)))

(declare-fun b!1553138 () Bool)

(assert (=> b!1553138 (= e!864724 call!71357)))

(declare-fun b!1553139 () Bool)

(declare-fun res!1063197 () Bool)

(assert (=> b!1553139 (=> (not res!1063197) (not e!864723))))

(assert (=> b!1553139 (= res!1063197 (containsKey!752 lt!669535 (_1!12451 (tuple2!24883 lt!669322 lt!669316))))))

(declare-fun bm!71355 () Bool)

(assert (=> bm!71355 (= call!71357 call!71358)))

(assert (= (and d!161347 c!143135) b!1553133))

(assert (= (and d!161347 (not c!143135)) b!1553132))

(assert (= (and b!1553132 c!143133) b!1553135))

(assert (= (and b!1553132 (not c!143133)) b!1553130))

(assert (= (and b!1553130 c!143136) b!1553134))

(assert (= (and b!1553130 (not c!143136)) b!1553138))

(assert (= (or b!1553134 b!1553138) bm!71355))

(assert (= (or b!1553135 bm!71355) bm!71354))

(assert (= (or b!1553133 bm!71354) bm!71353))

(assert (= (and bm!71353 c!143134) b!1553136))

(assert (= (and bm!71353 (not c!143134)) b!1553137))

(assert (= (and d!161347 res!1063196) b!1553139))

(assert (= (and b!1553139 res!1063197) b!1553131))

(declare-fun m!1431817 () Bool)

(assert (=> bm!71353 m!1431817))

(declare-fun m!1431819 () Bool)

(assert (=> d!161347 m!1431819))

(declare-fun m!1431821 () Bool)

(assert (=> d!161347 m!1431821))

(declare-fun m!1431823 () Bool)

(assert (=> b!1553136 m!1431823))

(declare-fun m!1431825 () Bool)

(assert (=> b!1553131 m!1431825))

(declare-fun m!1431827 () Bool)

(assert (=> b!1553139 m!1431827))

(assert (=> d!161083 d!161347))

(declare-fun d!161349 () Bool)

(assert (=> d!161349 (= (apply!1140 lt!669385 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001))) (get!26065 (getValueByKey!734 (toList!11267 lt!669385) (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)))))))

(declare-fun bs!44625 () Bool)

(assert (= bs!44625 d!161349))

(assert (=> bs!44625 m!1431199))

(declare-fun m!1431829 () Bool)

(assert (=> bs!44625 m!1431829))

(assert (=> bs!44625 m!1431829))

(declare-fun m!1431831 () Bool)

(assert (=> bs!44625 m!1431831))

(assert (=> b!1552657 d!161349))

(declare-fun d!161351 () Bool)

(declare-fun c!143137 () Bool)

(assert (=> d!161351 (= c!143137 ((_ is ValueCellFull!18195) (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001))))))

(declare-fun e!864726 () V!59391)

(assert (=> d!161351 (= (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)) e!864726)))

(declare-fun b!1553140 () Bool)

(assert (=> b!1553140 (= e!864726 (get!26066 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1553141 () Bool)

(assert (=> b!1553141 (= e!864726 (get!26067 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!161351 c!143137) b!1553140))

(assert (= (and d!161351 (not c!143137)) b!1553141))

(assert (=> b!1553140 m!1431211))

(assert (=> b!1553140 m!1430945))

(declare-fun m!1431833 () Bool)

(assert (=> b!1553140 m!1431833))

(assert (=> b!1553141 m!1431211))

(assert (=> b!1553141 m!1430945))

(declare-fun m!1431835 () Bool)

(assert (=> b!1553141 m!1431835))

(assert (=> b!1552657 d!161351))

(declare-fun b!1553143 () Bool)

(declare-fun e!864727 () Option!809)

(declare-fun e!864728 () Option!809)

(assert (=> b!1553143 (= e!864727 e!864728)))

(declare-fun c!143139 () Bool)

(assert (=> b!1553143 (= c!143139 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252))) (not (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!161353 () Bool)

(declare-fun c!143138 () Bool)

(assert (=> d!161353 (= c!143138 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161353 (= (getValueByKey!734 (t!51086 (toList!11267 lt!669252)) #b0000000000000000000000000000000000000000000000000000000000000000) e!864727)))

(declare-fun b!1553142 () Bool)

(assert (=> b!1553142 (= e!864727 (Some!808 (_2!12451 (h!37803 (t!51086 (toList!11267 lt!669252))))))))

(declare-fun b!1553144 () Bool)

(assert (=> b!1553144 (= e!864728 (getValueByKey!734 (t!51086 (t!51086 (toList!11267 lt!669252))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1553145 () Bool)

(assert (=> b!1553145 (= e!864728 None!807)))

(assert (= (and d!161353 c!143138) b!1553142))

(assert (= (and d!161353 (not c!143138)) b!1553143))

(assert (= (and b!1553143 c!143139) b!1553144))

(assert (= (and b!1553143 (not c!143139)) b!1553145))

(declare-fun m!1431837 () Bool)

(assert (=> b!1553144 m!1431837))

(assert (=> b!1552770 d!161353))

(declare-fun d!161355 () Bool)

(assert (=> d!161355 (= ($colon$colon!946 e!864544 (ite c!143070 (h!37803 (toList!11267 lt!669255)) (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))) (Cons!36357 (ite c!143070 (h!37803 (toList!11267 lt!669255)) (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))) e!864544))))

(assert (=> bm!71343 d!161355))

(declare-fun d!161357 () Bool)

(declare-fun res!1063198 () Bool)

(declare-fun e!864729 () Bool)

(assert (=> d!161357 (=> res!1063198 e!864729)))

(assert (=> d!161357 (= res!1063198 (and ((_ is Cons!36357) (toList!11267 lt!669321)) (= (_1!12451 (h!37803 (toList!11267 lt!669321))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161357 (= (containsKey!752 (toList!11267 lt!669321) #b1000000000000000000000000000000000000000000000000000000000000000) e!864729)))

(declare-fun b!1553146 () Bool)

(declare-fun e!864730 () Bool)

(assert (=> b!1553146 (= e!864729 e!864730)))

(declare-fun res!1063199 () Bool)

(assert (=> b!1553146 (=> (not res!1063199) (not e!864730))))

(assert (=> b!1553146 (= res!1063199 (and (or (not ((_ is Cons!36357) (toList!11267 lt!669321))) (bvsle (_1!12451 (h!37803 (toList!11267 lt!669321))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36357) (toList!11267 lt!669321)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669321))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1553147 () Bool)

(assert (=> b!1553147 (= e!864730 (containsKey!752 (t!51086 (toList!11267 lt!669321)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!161357 (not res!1063198)) b!1553146))

(assert (= (and b!1553146 res!1063199) b!1553147))

(declare-fun m!1431839 () Bool)

(assert (=> b!1553147 m!1431839))

(assert (=> d!161131 d!161357))

(declare-fun d!161359 () Bool)

(assert (=> d!161359 (= (isEmpty!1136 (toList!11267 lt!669321)) ((_ is Nil!36358) (toList!11267 lt!669321)))))

(assert (=> d!161133 d!161359))

(declare-fun d!161361 () Bool)

(declare-fun e!864732 () Bool)

(assert (=> d!161361 e!864732))

(declare-fun res!1063200 () Bool)

(assert (=> d!161361 (=> res!1063200 e!864732)))

(declare-fun lt!669539 () Bool)

(assert (=> d!161361 (= res!1063200 (not lt!669539))))

(declare-fun lt!669538 () Bool)

(assert (=> d!161361 (= lt!669539 lt!669538)))

(declare-fun lt!669537 () Unit!51642)

(declare-fun e!864731 () Unit!51642)

(assert (=> d!161361 (= lt!669537 e!864731)))

(declare-fun c!143140 () Bool)

(assert (=> d!161361 (= c!143140 lt!669538)))

(assert (=> d!161361 (= lt!669538 (containsKey!752 (toList!11267 lt!669385) (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001))))))

(assert (=> d!161361 (= (contains!10137 lt!669385 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001))) lt!669539)))

(declare-fun b!1553148 () Bool)

(declare-fun lt!669536 () Unit!51642)

(assert (=> b!1553148 (= e!864731 lt!669536)))

(assert (=> b!1553148 (= lt!669536 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669385) (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001))))))

(assert (=> b!1553148 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669385) (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001))))))

(declare-fun b!1553149 () Bool)

(declare-fun Unit!51665 () Unit!51642)

(assert (=> b!1553149 (= e!864731 Unit!51665)))

(declare-fun b!1553150 () Bool)

(assert (=> b!1553150 (= e!864732 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669385) (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)))))))

(assert (= (and d!161361 c!143140) b!1553148))

(assert (= (and d!161361 (not c!143140)) b!1553149))

(assert (= (and d!161361 (not res!1063200)) b!1553150))

(assert (=> d!161361 m!1431199))

(declare-fun m!1431841 () Bool)

(assert (=> d!161361 m!1431841))

(assert (=> b!1553148 m!1431199))

(declare-fun m!1431843 () Bool)

(assert (=> b!1553148 m!1431843))

(assert (=> b!1553148 m!1431199))

(assert (=> b!1553148 m!1431829))

(assert (=> b!1553148 m!1431829))

(declare-fun m!1431845 () Bool)

(assert (=> b!1553148 m!1431845))

(assert (=> b!1553150 m!1431199))

(assert (=> b!1553150 m!1431829))

(assert (=> b!1553150 m!1431829))

(assert (=> b!1553150 m!1431845))

(assert (=> b!1552661 d!161361))

(assert (=> d!161033 d!161031))

(declare-fun d!161363 () Bool)

(assert (=> d!161363 (= (getValueByKey!734 lt!669360 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (Some!808 (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161363 true))

(declare-fun _$22!588 () Unit!51642)

(assert (=> d!161363 (= (choose!2044 lt!669360 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) _$22!588)))

(declare-fun bs!44626 () Bool)

(assert (= bs!44626 d!161363))

(assert (=> bs!44626 m!1431139))

(assert (=> d!161033 d!161363))

(declare-fun d!161365 () Bool)

(declare-fun res!1063201 () Bool)

(declare-fun e!864733 () Bool)

(assert (=> d!161365 (=> res!1063201 e!864733)))

(assert (=> d!161365 (= res!1063201 (or ((_ is Nil!36358) lt!669360) ((_ is Nil!36358) (t!51086 lt!669360))))))

(assert (=> d!161365 (= (isStrictlySorted!883 lt!669360) e!864733)))

(declare-fun b!1553151 () Bool)

(declare-fun e!864734 () Bool)

(assert (=> b!1553151 (= e!864733 e!864734)))

(declare-fun res!1063202 () Bool)

(assert (=> b!1553151 (=> (not res!1063202) (not e!864734))))

(assert (=> b!1553151 (= res!1063202 (bvslt (_1!12451 (h!37803 lt!669360)) (_1!12451 (h!37803 (t!51086 lt!669360)))))))

(declare-fun b!1553152 () Bool)

(assert (=> b!1553152 (= e!864734 (isStrictlySorted!883 (t!51086 lt!669360)))))

(assert (= (and d!161365 (not res!1063201)) b!1553151))

(assert (= (and b!1553151 res!1063202) b!1553152))

(declare-fun m!1431847 () Bool)

(assert (=> b!1553152 m!1431847))

(assert (=> d!161033 d!161365))

(declare-fun d!161367 () Bool)

(assert (=> d!161367 (arrayContainsKey!0 _keys!618 lt!669411 #b00000000000000000000000000000000)))

(declare-fun lt!669540 () Unit!51642)

(assert (=> d!161367 (= lt!669540 (choose!13 _keys!618 lt!669411 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!161367 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!161367 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!618 lt!669411 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!669540)))

(declare-fun bs!44627 () Bool)

(assert (= bs!44627 d!161367))

(assert (=> bs!44627 m!1431281))

(declare-fun m!1431849 () Bool)

(assert (=> bs!44627 m!1431849))

(assert (=> b!1552754 d!161367))

(declare-fun d!161369 () Bool)

(declare-fun res!1063203 () Bool)

(declare-fun e!864735 () Bool)

(assert (=> d!161369 (=> res!1063203 e!864735)))

(assert (=> d!161369 (= res!1063203 (= (select (arr!49984 _keys!618) #b00000000000000000000000000000000) lt!669411))))

(assert (=> d!161369 (= (arrayContainsKey!0 _keys!618 lt!669411 #b00000000000000000000000000000000) e!864735)))

(declare-fun b!1553153 () Bool)

(declare-fun e!864736 () Bool)

(assert (=> b!1553153 (= e!864735 e!864736)))

(declare-fun res!1063204 () Bool)

(assert (=> b!1553153 (=> (not res!1063204) (not e!864736))))

(assert (=> b!1553153 (= res!1063204 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!50535 _keys!618)))))

(declare-fun b!1553154 () Bool)

(assert (=> b!1553154 (= e!864736 (arrayContainsKey!0 _keys!618 lt!669411 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!161369 (not res!1063203)) b!1553153))

(assert (= (and b!1553153 res!1063204) b!1553154))

(assert (=> d!161369 m!1431153))

(declare-fun m!1431851 () Bool)

(assert (=> b!1553154 m!1431851))

(assert (=> b!1552754 d!161369))

(declare-fun b!1553155 () Bool)

(declare-fun c!143141 () Bool)

(declare-fun lt!669541 () (_ BitVec 64))

(assert (=> b!1553155 (= c!143141 (= lt!669541 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!864739 () SeekEntryResult!13514)

(declare-fun e!864737 () SeekEntryResult!13514)

(assert (=> b!1553155 (= e!864739 e!864737)))

(declare-fun b!1553156 () Bool)

(declare-fun lt!669542 () SeekEntryResult!13514)

(assert (=> b!1553156 (= e!864737 (seekKeyOrZeroReturnVacant!0 (x!139208 lt!669542) (index!56455 lt!669542) (index!56455 lt!669542) (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!618 mask!926))))

(declare-fun b!1553157 () Bool)

(declare-fun e!864738 () SeekEntryResult!13514)

(assert (=> b!1553157 (= e!864738 Undefined!13514)))

(declare-fun b!1553158 () Bool)

(assert (=> b!1553158 (= e!864737 (MissingZero!13514 (index!56455 lt!669542)))))

(declare-fun b!1553159 () Bool)

(assert (=> b!1553159 (= e!864738 e!864739)))

(assert (=> b!1553159 (= lt!669541 (select (arr!49984 _keys!618) (index!56455 lt!669542)))))

(declare-fun c!143143 () Bool)

(assert (=> b!1553159 (= c!143143 (= lt!669541 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1553160 () Bool)

(assert (=> b!1553160 (= e!864739 (Found!13514 (index!56455 lt!669542)))))

(declare-fun d!161371 () Bool)

(declare-fun lt!669543 () SeekEntryResult!13514)

(assert (=> d!161371 (and (or ((_ is Undefined!13514) lt!669543) (not ((_ is Found!13514) lt!669543)) (and (bvsge (index!56454 lt!669543) #b00000000000000000000000000000000) (bvslt (index!56454 lt!669543) (size!50535 _keys!618)))) (or ((_ is Undefined!13514) lt!669543) ((_ is Found!13514) lt!669543) (not ((_ is MissingZero!13514) lt!669543)) (and (bvsge (index!56453 lt!669543) #b00000000000000000000000000000000) (bvslt (index!56453 lt!669543) (size!50535 _keys!618)))) (or ((_ is Undefined!13514) lt!669543) ((_ is Found!13514) lt!669543) ((_ is MissingZero!13514) lt!669543) (not ((_ is MissingVacant!13514) lt!669543)) (and (bvsge (index!56456 lt!669543) #b00000000000000000000000000000000) (bvslt (index!56456 lt!669543) (size!50535 _keys!618)))) (or ((_ is Undefined!13514) lt!669543) (ite ((_ is Found!13514) lt!669543) (= (select (arr!49984 _keys!618) (index!56454 lt!669543)) (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite ((_ is MissingZero!13514) lt!669543) (= (select (arr!49984 _keys!618) (index!56453 lt!669543)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13514) lt!669543) (= (select (arr!49984 _keys!618) (index!56456 lt!669543)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!161371 (= lt!669543 e!864738)))

(declare-fun c!143142 () Bool)

(assert (=> d!161371 (= c!143142 (and ((_ is Intermediate!13514) lt!669542) (undefined!14326 lt!669542)))))

(assert (=> d!161371 (= lt!669542 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!926) (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!618 mask!926))))

(assert (=> d!161371 (validMask!0 mask!926)))

(assert (=> d!161371 (= (seekEntryOrOpen!0 (select (arr!49984 _keys!618) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!618 mask!926) lt!669543)))

(assert (= (and d!161371 c!143142) b!1553157))

(assert (= (and d!161371 (not c!143142)) b!1553159))

(assert (= (and b!1553159 c!143143) b!1553160))

(assert (= (and b!1553159 (not c!143143)) b!1553155))

(assert (= (and b!1553155 c!143141) b!1553158))

(assert (= (and b!1553155 (not c!143141)) b!1553156))

(assert (=> b!1553156 m!1431277))

(declare-fun m!1431853 () Bool)

(assert (=> b!1553156 m!1431853))

(declare-fun m!1431855 () Bool)

(assert (=> b!1553159 m!1431855))

(declare-fun m!1431857 () Bool)

(assert (=> d!161371 m!1431857))

(assert (=> d!161371 m!1431277))

(declare-fun m!1431859 () Bool)

(assert (=> d!161371 m!1431859))

(assert (=> d!161371 m!1431277))

(assert (=> d!161371 m!1431857))

(declare-fun m!1431861 () Bool)

(assert (=> d!161371 m!1431861))

(declare-fun m!1431863 () Bool)

(assert (=> d!161371 m!1431863))

(declare-fun m!1431865 () Bool)

(assert (=> d!161371 m!1431865))

(assert (=> d!161371 m!1430983))

(assert (=> b!1552754 d!161371))

(declare-fun b!1553162 () Bool)

(declare-fun e!864740 () Option!809)

(declare-fun e!864741 () Option!809)

(assert (=> b!1553162 (= e!864740 e!864741)))

(declare-fun c!143145 () Bool)

(assert (=> b!1553162 (= c!143145 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669362))) (not (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669362)))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))))

(declare-fun d!161373 () Bool)

(declare-fun c!143144 () Bool)

(assert (=> d!161373 (= c!143144 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669362))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669362)))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(assert (=> d!161373 (= (getValueByKey!734 (t!51086 (toList!11267 lt!669362)) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) e!864740)))

(declare-fun b!1553161 () Bool)

(assert (=> b!1553161 (= e!864740 (Some!808 (_2!12451 (h!37803 (t!51086 (toList!11267 lt!669362))))))))

(declare-fun b!1553163 () Bool)

(assert (=> b!1553163 (= e!864741 (getValueByKey!734 (t!51086 (t!51086 (toList!11267 lt!669362))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553164 () Bool)

(assert (=> b!1553164 (= e!864741 None!807)))

(assert (= (and d!161373 c!143144) b!1553161))

(assert (= (and d!161373 (not c!143144)) b!1553162))

(assert (= (and b!1553162 c!143145) b!1553163))

(assert (= (and b!1553162 (not c!143145)) b!1553164))

(declare-fun m!1431867 () Bool)

(assert (=> b!1553163 m!1431867))

(assert (=> b!1552798 d!161373))

(declare-fun b!1553166 () Bool)

(declare-fun e!864742 () Option!809)

(declare-fun e!864743 () Option!809)

(assert (=> b!1553166 (= e!864742 e!864743)))

(declare-fun c!143147 () Bool)

(assert (=> b!1553166 (= c!143147 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669350))) (not (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669350)))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))))

(declare-fun d!161375 () Bool)

(declare-fun c!143146 () Bool)

(assert (=> d!161375 (= c!143146 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669350))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669350)))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (=> d!161375 (= (getValueByKey!734 (t!51086 (toList!11267 lt!669350)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) e!864742)))

(declare-fun b!1553165 () Bool)

(assert (=> b!1553165 (= e!864742 (Some!808 (_2!12451 (h!37803 (t!51086 (toList!11267 lt!669350))))))))

(declare-fun b!1553167 () Bool)

(assert (=> b!1553167 (= e!864743 (getValueByKey!734 (t!51086 (t!51086 (toList!11267 lt!669350))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun b!1553168 () Bool)

(assert (=> b!1553168 (= e!864743 None!807)))

(assert (= (and d!161375 c!143146) b!1553165))

(assert (= (and d!161375 (not c!143146)) b!1553166))

(assert (= (and b!1553166 c!143147) b!1553167))

(assert (= (and b!1553166 (not c!143147)) b!1553168))

(declare-fun m!1431869 () Bool)

(assert (=> b!1553167 m!1431869))

(assert (=> b!1552901 d!161375))

(declare-fun b!1553170 () Bool)

(declare-fun e!864744 () Option!809)

(declare-fun e!864745 () Option!809)

(assert (=> b!1553170 (= e!864744 e!864745)))

(declare-fun c!143149 () Bool)

(assert (=> b!1553170 (= c!143149 (and ((_ is Cons!36357) (toList!11267 lt!669444)) (not (= (_1!12451 (h!37803 (toList!11267 lt!669444))) (_1!12451 (tuple2!24883 lt!669322 lt!669316))))))))

(declare-fun c!143148 () Bool)

(declare-fun d!161377 () Bool)

(assert (=> d!161377 (= c!143148 (and ((_ is Cons!36357) (toList!11267 lt!669444)) (= (_1!12451 (h!37803 (toList!11267 lt!669444))) (_1!12451 (tuple2!24883 lt!669322 lt!669316)))))))

(assert (=> d!161377 (= (getValueByKey!734 (toList!11267 lt!669444) (_1!12451 (tuple2!24883 lt!669322 lt!669316))) e!864744)))

(declare-fun b!1553169 () Bool)

(assert (=> b!1553169 (= e!864744 (Some!808 (_2!12451 (h!37803 (toList!11267 lt!669444)))))))

(declare-fun b!1553171 () Bool)

(assert (=> b!1553171 (= e!864745 (getValueByKey!734 (t!51086 (toList!11267 lt!669444)) (_1!12451 (tuple2!24883 lt!669322 lt!669316))))))

(declare-fun b!1553172 () Bool)

(assert (=> b!1553172 (= e!864745 None!807)))

(assert (= (and d!161377 c!143148) b!1553169))

(assert (= (and d!161377 (not c!143148)) b!1553170))

(assert (= (and b!1553170 c!143149) b!1553171))

(assert (= (and b!1553170 (not c!143149)) b!1553172))

(declare-fun m!1431871 () Bool)

(assert (=> b!1553171 m!1431871))

(assert (=> b!1552817 d!161377))

(assert (=> b!1552767 d!161211))

(assert (=> b!1552767 d!161019))

(declare-fun b!1553173 () Bool)

(declare-fun c!143153 () Bool)

(assert (=> b!1553173 (= c!143153 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669255))) (bvsgt (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669255)))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun e!864746 () List!36361)

(declare-fun e!864749 () List!36361)

(assert (=> b!1553173 (= e!864746 e!864749)))

(declare-fun b!1553174 () Bool)

(declare-fun e!864748 () Bool)

(declare-fun lt!669544 () List!36361)

(assert (=> b!1553174 (= e!864748 (contains!10139 lt!669544 (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun b!1553175 () Bool)

(declare-fun e!864750 () List!36361)

(assert (=> b!1553175 (= e!864750 e!864746)))

(declare-fun c!143150 () Bool)

(assert (=> b!1553175 (= c!143150 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669255))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669255)))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun bm!71356 () Bool)

(declare-fun e!864747 () List!36361)

(declare-fun c!143152 () Bool)

(declare-fun call!71359 () List!36361)

(assert (=> bm!71356 (= call!71359 ($colon$colon!946 e!864747 (ite c!143152 (h!37803 (t!51086 (toList!11267 lt!669255))) (tuple2!24883 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))))

(declare-fun c!143151 () Bool)

(assert (=> bm!71356 (= c!143151 c!143152)))

(declare-fun b!1553176 () Bool)

(assert (=> b!1553176 (= e!864750 call!71359)))

(declare-fun b!1553177 () Bool)

(declare-fun call!71360 () List!36361)

(assert (=> b!1553177 (= e!864749 call!71360)))

(declare-fun b!1553178 () Bool)

(declare-fun call!71361 () List!36361)

(assert (=> b!1553178 (= e!864746 call!71361)))

(declare-fun d!161379 () Bool)

(assert (=> d!161379 e!864748))

(declare-fun res!1063205 () Bool)

(assert (=> d!161379 (=> (not res!1063205) (not e!864748))))

(assert (=> d!161379 (= res!1063205 (isStrictlySorted!883 lt!669544))))

(assert (=> d!161379 (= lt!669544 e!864750)))

(assert (=> d!161379 (= c!143152 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669255))) (bvslt (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669255)))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (=> d!161379 (isStrictlySorted!883 (t!51086 (toList!11267 lt!669255)))))

(assert (=> d!161379 (= (insertStrictlySorted!503 (t!51086 (toList!11267 lt!669255)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) lt!669544)))

(declare-fun b!1553179 () Bool)

(assert (=> b!1553179 (= e!864747 (insertStrictlySorted!503 (t!51086 (t!51086 (toList!11267 lt!669255))) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun b!1553180 () Bool)

(assert (=> b!1553180 (= e!864747 (ite c!143150 (t!51086 (t!51086 (toList!11267 lt!669255))) (ite c!143153 (Cons!36357 (h!37803 (t!51086 (toList!11267 lt!669255))) (t!51086 (t!51086 (toList!11267 lt!669255)))) Nil!36358)))))

(declare-fun bm!71357 () Bool)

(assert (=> bm!71357 (= call!71361 call!71359)))

(declare-fun b!1553181 () Bool)

(assert (=> b!1553181 (= e!864749 call!71360)))

(declare-fun b!1553182 () Bool)

(declare-fun res!1063206 () Bool)

(assert (=> b!1553182 (=> (not res!1063206) (not e!864748))))

(assert (=> b!1553182 (= res!1063206 (containsKey!752 lt!669544 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun bm!71358 () Bool)

(assert (=> bm!71358 (= call!71360 call!71361)))

(assert (= (and d!161379 c!143152) b!1553176))

(assert (= (and d!161379 (not c!143152)) b!1553175))

(assert (= (and b!1553175 c!143150) b!1553178))

(assert (= (and b!1553175 (not c!143150)) b!1553173))

(assert (= (and b!1553173 c!143153) b!1553177))

(assert (= (and b!1553173 (not c!143153)) b!1553181))

(assert (= (or b!1553177 b!1553181) bm!71358))

(assert (= (or b!1553178 bm!71358) bm!71357))

(assert (= (or b!1553176 bm!71357) bm!71356))

(assert (= (and bm!71356 c!143151) b!1553179))

(assert (= (and bm!71356 (not c!143151)) b!1553180))

(assert (= (and d!161379 res!1063205) b!1553182))

(assert (= (and b!1553182 res!1063206) b!1553174))

(declare-fun m!1431873 () Bool)

(assert (=> bm!71356 m!1431873))

(declare-fun m!1431875 () Bool)

(assert (=> d!161379 m!1431875))

(assert (=> d!161379 m!1431657))

(declare-fun m!1431877 () Bool)

(assert (=> b!1553179 m!1431877))

(declare-fun m!1431879 () Bool)

(assert (=> b!1553174 m!1431879))

(declare-fun m!1431881 () Bool)

(assert (=> b!1553182 m!1431881))

(assert (=> b!1552885 d!161379))

(declare-fun d!161381 () Bool)

(declare-fun res!1063207 () Bool)

(declare-fun e!864751 () Bool)

(assert (=> d!161381 (=> res!1063207 e!864751)))

(assert (=> d!161381 (= res!1063207 (and ((_ is Cons!36357) (toList!11267 lt!669321)) (= (_1!12451 (h!37803 (toList!11267 lt!669321))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161381 (= (containsKey!752 (toList!11267 lt!669321) (select (arr!49984 _keys!618) from!762)) e!864751)))

(declare-fun b!1553183 () Bool)

(declare-fun e!864752 () Bool)

(assert (=> b!1553183 (= e!864751 e!864752)))

(declare-fun res!1063208 () Bool)

(assert (=> b!1553183 (=> (not res!1063208) (not e!864752))))

(assert (=> b!1553183 (= res!1063208 (and (or (not ((_ is Cons!36357) (toList!11267 lt!669321))) (bvsle (_1!12451 (h!37803 (toList!11267 lt!669321))) (select (arr!49984 _keys!618) from!762))) ((_ is Cons!36357) (toList!11267 lt!669321)) (bvslt (_1!12451 (h!37803 (toList!11267 lt!669321))) (select (arr!49984 _keys!618) from!762))))))

(declare-fun b!1553184 () Bool)

(assert (=> b!1553184 (= e!864752 (containsKey!752 (t!51086 (toList!11267 lt!669321)) (select (arr!49984 _keys!618) from!762)))))

(assert (= (and d!161381 (not res!1063207)) b!1553183))

(assert (= (and b!1553183 res!1063208) b!1553184))

(assert (=> b!1553184 m!1430943))

(declare-fun m!1431883 () Bool)

(assert (=> b!1553184 m!1431883))

(assert (=> d!161041 d!161381))

(declare-fun b!1553186 () Bool)

(declare-fun e!864753 () Option!809)

(declare-fun e!864754 () Option!809)

(assert (=> b!1553186 (= e!864753 e!864754)))

(declare-fun c!143155 () Bool)

(assert (=> b!1553186 (= c!143155 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252))) (not (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun c!143154 () Bool)

(declare-fun d!161383 () Bool)

(assert (=> d!161383 (= c!143154 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161383 (= (getValueByKey!734 (t!51086 (toList!11267 lt!669252)) (select (arr!49984 _keys!618) from!762)) e!864753)))

(declare-fun b!1553185 () Bool)

(assert (=> b!1553185 (= e!864753 (Some!808 (_2!12451 (h!37803 (t!51086 (toList!11267 lt!669252))))))))

(declare-fun b!1553187 () Bool)

(assert (=> b!1553187 (= e!864754 (getValueByKey!734 (t!51086 (t!51086 (toList!11267 lt!669252))) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1553188 () Bool)

(assert (=> b!1553188 (= e!864754 None!807)))

(assert (= (and d!161383 c!143154) b!1553185))

(assert (= (and d!161383 (not c!143154)) b!1553186))

(assert (= (and b!1553186 c!143155) b!1553187))

(assert (= (and b!1553186 (not c!143155)) b!1553188))

(assert (=> b!1553187 m!1430943))

(declare-fun m!1431885 () Bool)

(assert (=> b!1553187 m!1431885))

(assert (=> b!1552825 d!161383))

(declare-fun d!161385 () Bool)

(declare-fun lt!669545 () Bool)

(assert (=> d!161385 (= lt!669545 (select (content!797 lt!669364) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun e!864755 () Bool)

(assert (=> d!161385 (= lt!669545 e!864755)))

(declare-fun res!1063209 () Bool)

(assert (=> d!161385 (=> (not res!1063209) (not e!864755))))

(assert (=> d!161385 (= res!1063209 ((_ is Cons!36357) lt!669364))))

(assert (=> d!161385 (= (contains!10139 lt!669364 (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) lt!669545)))

(declare-fun b!1553189 () Bool)

(declare-fun e!864756 () Bool)

(assert (=> b!1553189 (= e!864755 e!864756)))

(declare-fun res!1063210 () Bool)

(assert (=> b!1553189 (=> res!1063210 e!864756)))

(assert (=> b!1553189 (= res!1063210 (= (h!37803 lt!669364) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553190 () Bool)

(assert (=> b!1553190 (= e!864756 (contains!10139 (t!51086 lt!669364) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (= (and d!161385 res!1063209) b!1553189))

(assert (= (and b!1553189 (not res!1063210)) b!1553190))

(declare-fun m!1431887 () Bool)

(assert (=> d!161385 m!1431887))

(declare-fun m!1431889 () Bool)

(assert (=> d!161385 m!1431889))

(declare-fun m!1431891 () Bool)

(assert (=> b!1553190 m!1431891))

(assert (=> b!1552785 d!161385))

(declare-fun b!1553192 () Bool)

(declare-fun e!864757 () Option!809)

(declare-fun e!864758 () Option!809)

(assert (=> b!1553192 (= e!864757 e!864758)))

(declare-fun c!143157 () Bool)

(assert (=> b!1553192 (= c!143157 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669334))) (not (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669334)))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun d!161387 () Bool)

(declare-fun c!143156 () Bool)

(assert (=> d!161387 (= c!143156 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669334))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669334)))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161387 (= (getValueByKey!734 (t!51086 (toList!11267 lt!669334)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864757)))

(declare-fun b!1553191 () Bool)

(assert (=> b!1553191 (= e!864757 (Some!808 (_2!12451 (h!37803 (t!51086 (toList!11267 lt!669334))))))))

(declare-fun b!1553193 () Bool)

(assert (=> b!1553193 (= e!864758 (getValueByKey!734 (t!51086 (t!51086 (toList!11267 lt!669334))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1553194 () Bool)

(assert (=> b!1553194 (= e!864758 None!807)))

(assert (= (and d!161387 c!143156) b!1553191))

(assert (= (and d!161387 (not c!143156)) b!1553192))

(assert (= (and b!1553192 c!143157) b!1553193))

(assert (= (and b!1553192 (not c!143157)) b!1553194))

(declare-fun m!1431893 () Bool)

(assert (=> b!1553193 m!1431893))

(assert (=> b!1552775 d!161387))

(assert (=> b!1552665 d!161351))

(declare-fun d!161389 () Bool)

(declare-fun e!864760 () Bool)

(assert (=> d!161389 e!864760))

(declare-fun res!1063211 () Bool)

(assert (=> d!161389 (=> res!1063211 e!864760)))

(declare-fun lt!669549 () Bool)

(assert (=> d!161389 (= res!1063211 (not lt!669549))))

(declare-fun lt!669548 () Bool)

(assert (=> d!161389 (= lt!669549 lt!669548)))

(declare-fun lt!669547 () Unit!51642)

(declare-fun e!864759 () Unit!51642)

(assert (=> d!161389 (= lt!669547 e!864759)))

(declare-fun c!143158 () Bool)

(assert (=> d!161389 (= c!143158 lt!669548)))

(assert (=> d!161389 (= lt!669548 (containsKey!752 (toList!11267 (+!4973 lt!669384 (tuple2!24883 lt!669386 lt!669380))) lt!669383))))

(assert (=> d!161389 (= (contains!10137 (+!4973 lt!669384 (tuple2!24883 lt!669386 lt!669380)) lt!669383) lt!669549)))

(declare-fun b!1553195 () Bool)

(declare-fun lt!669546 () Unit!51642)

(assert (=> b!1553195 (= e!864759 lt!669546)))

(assert (=> b!1553195 (= lt!669546 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 (+!4973 lt!669384 (tuple2!24883 lt!669386 lt!669380))) lt!669383))))

(assert (=> b!1553195 (isDefined!546 (getValueByKey!734 (toList!11267 (+!4973 lt!669384 (tuple2!24883 lt!669386 lt!669380))) lt!669383))))

(declare-fun b!1553196 () Bool)

(declare-fun Unit!51666 () Unit!51642)

(assert (=> b!1553196 (= e!864759 Unit!51666)))

(declare-fun b!1553197 () Bool)

(assert (=> b!1553197 (= e!864760 (isDefined!546 (getValueByKey!734 (toList!11267 (+!4973 lt!669384 (tuple2!24883 lt!669386 lt!669380))) lt!669383)))))

(assert (= (and d!161389 c!143158) b!1553195))

(assert (= (and d!161389 (not c!143158)) b!1553196))

(assert (= (and d!161389 (not res!1063211)) b!1553197))

(declare-fun m!1431895 () Bool)

(assert (=> d!161389 m!1431895))

(declare-fun m!1431897 () Bool)

(assert (=> b!1553195 m!1431897))

(declare-fun m!1431899 () Bool)

(assert (=> b!1553195 m!1431899))

(assert (=> b!1553195 m!1431899))

(declare-fun m!1431901 () Bool)

(assert (=> b!1553195 m!1431901))

(assert (=> b!1553197 m!1431899))

(assert (=> b!1553197 m!1431899))

(assert (=> b!1553197 m!1431901))

(assert (=> b!1552665 d!161389))

(declare-fun d!161391 () Bool)

(declare-fun e!864761 () Bool)

(assert (=> d!161391 e!864761))

(declare-fun res!1063212 () Bool)

(assert (=> d!161391 (=> (not res!1063212) (not e!864761))))

(declare-fun lt!669553 () ListLongMap!22503)

(assert (=> d!161391 (= res!1063212 (contains!10137 lt!669553 (_1!12451 (tuple2!24883 lt!669386 lt!669380))))))

(declare-fun lt!669551 () List!36361)

(assert (=> d!161391 (= lt!669553 (ListLongMap!22504 lt!669551))))

(declare-fun lt!669552 () Unit!51642)

(declare-fun lt!669550 () Unit!51642)

(assert (=> d!161391 (= lt!669552 lt!669550)))

(assert (=> d!161391 (= (getValueByKey!734 lt!669551 (_1!12451 (tuple2!24883 lt!669386 lt!669380))) (Some!808 (_2!12451 (tuple2!24883 lt!669386 lt!669380))))))

(assert (=> d!161391 (= lt!669550 (lemmaContainsTupThenGetReturnValue!374 lt!669551 (_1!12451 (tuple2!24883 lt!669386 lt!669380)) (_2!12451 (tuple2!24883 lt!669386 lt!669380))))))

(assert (=> d!161391 (= lt!669551 (insertStrictlySorted!503 (toList!11267 lt!669384) (_1!12451 (tuple2!24883 lt!669386 lt!669380)) (_2!12451 (tuple2!24883 lt!669386 lt!669380))))))

(assert (=> d!161391 (= (+!4973 lt!669384 (tuple2!24883 lt!669386 lt!669380)) lt!669553)))

(declare-fun b!1553198 () Bool)

(declare-fun res!1063213 () Bool)

(assert (=> b!1553198 (=> (not res!1063213) (not e!864761))))

(assert (=> b!1553198 (= res!1063213 (= (getValueByKey!734 (toList!11267 lt!669553) (_1!12451 (tuple2!24883 lt!669386 lt!669380))) (Some!808 (_2!12451 (tuple2!24883 lt!669386 lt!669380)))))))

(declare-fun b!1553199 () Bool)

(assert (=> b!1553199 (= e!864761 (contains!10139 (toList!11267 lt!669553) (tuple2!24883 lt!669386 lt!669380)))))

(assert (= (and d!161391 res!1063212) b!1553198))

(assert (= (and b!1553198 res!1063213) b!1553199))

(declare-fun m!1431903 () Bool)

(assert (=> d!161391 m!1431903))

(declare-fun m!1431905 () Bool)

(assert (=> d!161391 m!1431905))

(declare-fun m!1431907 () Bool)

(assert (=> d!161391 m!1431907))

(declare-fun m!1431909 () Bool)

(assert (=> d!161391 m!1431909))

(declare-fun m!1431911 () Bool)

(assert (=> b!1553198 m!1431911))

(declare-fun m!1431913 () Bool)

(assert (=> b!1553199 m!1431913))

(assert (=> b!1552665 d!161391))

(declare-fun d!161393 () Bool)

(assert (=> d!161393 (not (contains!10137 (+!4973 lt!669384 (tuple2!24883 lt!669386 lt!669380)) lt!669383))))

(declare-fun lt!669554 () Unit!51642)

(assert (=> d!161393 (= lt!669554 (choose!2045 lt!669384 lt!669386 lt!669380 lt!669383))))

(declare-fun e!864762 () Bool)

(assert (=> d!161393 e!864762))

(declare-fun res!1063214 () Bool)

(assert (=> d!161393 (=> (not res!1063214) (not e!864762))))

(assert (=> d!161393 (= res!1063214 (not (contains!10137 lt!669384 lt!669383)))))

(assert (=> d!161393 (= (addStillNotContains!522 lt!669384 lt!669386 lt!669380 lt!669383) lt!669554)))

(declare-fun b!1553200 () Bool)

(assert (=> b!1553200 (= e!864762 (not (= lt!669386 lt!669383)))))

(assert (= (and d!161393 res!1063214) b!1553200))

(assert (=> d!161393 m!1431207))

(assert (=> d!161393 m!1431207))

(assert (=> d!161393 m!1431209))

(declare-fun m!1431915 () Bool)

(assert (=> d!161393 m!1431915))

(declare-fun m!1431917 () Bool)

(assert (=> d!161393 m!1431917))

(assert (=> b!1552665 d!161393))

(declare-fun d!161395 () Bool)

(declare-fun e!864763 () Bool)

(assert (=> d!161395 e!864763))

(declare-fun res!1063215 () Bool)

(assert (=> d!161395 (=> (not res!1063215) (not e!864763))))

(declare-fun lt!669558 () ListLongMap!22503)

(assert (=> d!161395 (= res!1063215 (contains!10137 lt!669558 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!669556 () List!36361)

(assert (=> d!161395 (= lt!669558 (ListLongMap!22504 lt!669556))))

(declare-fun lt!669557 () Unit!51642)

(declare-fun lt!669555 () Unit!51642)

(assert (=> d!161395 (= lt!669557 lt!669555)))

(assert (=> d!161395 (= (getValueByKey!734 lt!669556 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!808 (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!161395 (= lt!669555 (lemmaContainsTupThenGetReturnValue!374 lt!669556 (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!161395 (= lt!669556 (insertStrictlySorted!503 (toList!11267 call!71329) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!161395 (= (+!4973 call!71329 (tuple2!24883 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!669558)))

(declare-fun b!1553201 () Bool)

(declare-fun res!1063216 () Bool)

(assert (=> b!1553201 (=> (not res!1063216) (not e!864763))))

(assert (=> b!1553201 (= res!1063216 (= (getValueByKey!734 (toList!11267 lt!669558) (_1!12451 (tuple2!24883 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!808 (_2!12451 (tuple2!24883 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1553202 () Bool)

(assert (=> b!1553202 (= e!864763 (contains!10139 (toList!11267 lt!669558) (tuple2!24883 (select (arr!49984 _keys!618) (bvadd from!762 #b00000000000000000000000000000001)) (get!26063 (select (arr!49985 _values!470) (bvadd from!762 #b00000000000000000000000000000001)) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!161395 res!1063215) b!1553201))

(assert (= (and b!1553201 res!1063216) b!1553202))

(declare-fun m!1431919 () Bool)

(assert (=> d!161395 m!1431919))

(declare-fun m!1431921 () Bool)

(assert (=> d!161395 m!1431921))

(declare-fun m!1431923 () Bool)

(assert (=> d!161395 m!1431923))

(declare-fun m!1431925 () Bool)

(assert (=> d!161395 m!1431925))

(declare-fun m!1431927 () Bool)

(assert (=> b!1553201 m!1431927))

(declare-fun m!1431929 () Bool)

(assert (=> b!1553202 m!1431929))

(assert (=> b!1552665 d!161395))

(declare-fun d!161397 () Bool)

(declare-fun res!1063217 () Bool)

(declare-fun e!864764 () Bool)

(assert (=> d!161397 (=> res!1063217 e!864764)))

(assert (=> d!161397 (= res!1063217 (and ((_ is Cons!36357) lt!669471) (= (_1!12451 (h!37803 lt!669471)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (=> d!161397 (= (containsKey!752 lt!669471 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) e!864764)))

(declare-fun b!1553203 () Bool)

(declare-fun e!864765 () Bool)

(assert (=> b!1553203 (= e!864764 e!864765)))

(declare-fun res!1063218 () Bool)

(assert (=> b!1553203 (=> (not res!1063218) (not e!864765))))

(assert (=> b!1553203 (= res!1063218 (and (or (not ((_ is Cons!36357) lt!669471)) (bvsle (_1!12451 (h!37803 lt!669471)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))) ((_ is Cons!36357) lt!669471) (bvslt (_1!12451 (h!37803 lt!669471)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun b!1553204 () Bool)

(assert (=> b!1553204 (= e!864765 (containsKey!752 (t!51086 lt!669471) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (= (and d!161397 (not res!1063217)) b!1553203))

(assert (= (and b!1553203 res!1063218) b!1553204))

(declare-fun m!1431931 () Bool)

(assert (=> b!1553204 m!1431931))

(assert (=> b!1552888 d!161397))

(assert (=> d!161135 d!160963))

(assert (=> d!161135 d!160977))

(assert (=> d!161135 d!160965))

(assert (=> b!1552872 d!161237))

(assert (=> b!1552872 d!161147))

(declare-fun d!161399 () Bool)

(assert (=> d!161399 (= ($colon$colon!946 e!864463 (ite c!143027 (h!37803 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))) (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))) (Cons!36357 (ite c!143027 (h!37803 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))) (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) e!864463))))

(assert (=> bm!71333 d!161399))

(assert (=> d!161077 d!161079))

(assert (=> d!161077 d!161083))

(declare-fun d!161401 () Bool)

(assert (=> d!161401 (not (contains!10137 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316)) lt!669319))))

(assert (=> d!161401 true))

(declare-fun _$36!385 () Unit!51642)

(assert (=> d!161401 (= (choose!2045 lt!669320 lt!669322 lt!669316 lt!669319) _$36!385)))

(declare-fun bs!44628 () Bool)

(assert (= bs!44628 d!161401))

(assert (=> bs!44628 m!1431077))

(assert (=> bs!44628 m!1431077))

(assert (=> bs!44628 m!1431079))

(assert (=> d!161077 d!161401))

(declare-fun d!161403 () Bool)

(declare-fun e!864767 () Bool)

(assert (=> d!161403 e!864767))

(declare-fun res!1063219 () Bool)

(assert (=> d!161403 (=> res!1063219 e!864767)))

(declare-fun lt!669562 () Bool)

(assert (=> d!161403 (= res!1063219 (not lt!669562))))

(declare-fun lt!669561 () Bool)

(assert (=> d!161403 (= lt!669562 lt!669561)))

(declare-fun lt!669560 () Unit!51642)

(declare-fun e!864766 () Unit!51642)

(assert (=> d!161403 (= lt!669560 e!864766)))

(declare-fun c!143159 () Bool)

(assert (=> d!161403 (= c!143159 lt!669561)))

(assert (=> d!161403 (= lt!669561 (containsKey!752 (toList!11267 lt!669320) lt!669319))))

(assert (=> d!161403 (= (contains!10137 lt!669320 lt!669319) lt!669562)))

(declare-fun b!1553206 () Bool)

(declare-fun lt!669559 () Unit!51642)

(assert (=> b!1553206 (= e!864766 lt!669559)))

(assert (=> b!1553206 (= lt!669559 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669320) lt!669319))))

(assert (=> b!1553206 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669320) lt!669319))))

(declare-fun b!1553207 () Bool)

(declare-fun Unit!51667 () Unit!51642)

(assert (=> b!1553207 (= e!864766 Unit!51667)))

(declare-fun b!1553208 () Bool)

(assert (=> b!1553208 (= e!864767 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669320) lt!669319)))))

(assert (= (and d!161403 c!143159) b!1553206))

(assert (= (and d!161403 (not c!143159)) b!1553207))

(assert (= (and d!161403 (not res!1063219)) b!1553208))

(declare-fun m!1431933 () Bool)

(assert (=> d!161403 m!1431933))

(declare-fun m!1431935 () Bool)

(assert (=> b!1553206 m!1431935))

(declare-fun m!1431937 () Bool)

(assert (=> b!1553206 m!1431937))

(assert (=> b!1553206 m!1431937))

(declare-fun m!1431939 () Bool)

(assert (=> b!1553206 m!1431939))

(assert (=> b!1553208 m!1431937))

(assert (=> b!1553208 m!1431937))

(assert (=> b!1553208 m!1431939))

(assert (=> d!161077 d!161403))

(declare-fun b!1553209 () Bool)

(declare-fun c!143163 () Bool)

(assert (=> b!1553209 (= c!143163 (and ((_ is Cons!36357) (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))) (bvsgt (_1!12451 (h!37803 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun e!864768 () List!36361)

(declare-fun e!864771 () List!36361)

(assert (=> b!1553209 (= e!864768 e!864771)))

(declare-fun b!1553210 () Bool)

(declare-fun lt!669563 () List!36361)

(declare-fun e!864770 () Bool)

(assert (=> b!1553210 (= e!864770 (contains!10139 lt!669563 (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun b!1553211 () Bool)

(declare-fun e!864772 () List!36361)

(assert (=> b!1553211 (= e!864772 e!864768)))

(declare-fun c!143160 () Bool)

(assert (=> b!1553211 (= c!143160 (and ((_ is Cons!36357) (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun e!864769 () List!36361)

(declare-fun c!143162 () Bool)

(declare-fun call!71362 () List!36361)

(declare-fun bm!71359 () Bool)

(assert (=> bm!71359 (= call!71362 ($colon$colon!946 e!864769 (ite c!143162 (h!37803 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))) (tuple2!24883 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))))

(declare-fun c!143161 () Bool)

(assert (=> bm!71359 (= c!143161 c!143162)))

(declare-fun b!1553212 () Bool)

(assert (=> b!1553212 (= e!864772 call!71362)))

(declare-fun b!1553213 () Bool)

(declare-fun call!71363 () List!36361)

(assert (=> b!1553213 (= e!864771 call!71363)))

(declare-fun b!1553214 () Bool)

(declare-fun call!71364 () List!36361)

(assert (=> b!1553214 (= e!864768 call!71364)))

(declare-fun d!161405 () Bool)

(assert (=> d!161405 e!864770))

(declare-fun res!1063220 () Bool)

(assert (=> d!161405 (=> (not res!1063220) (not e!864770))))

(assert (=> d!161405 (= res!1063220 (isStrictlySorted!883 lt!669563))))

(assert (=> d!161405 (= lt!669563 e!864772)))

(assert (=> d!161405 (= c!143162 (and ((_ is Cons!36357) (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))) (bvslt (_1!12451 (h!37803 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(assert (=> d!161405 (isStrictlySorted!883 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))))))

(assert (=> d!161405 (= (insertStrictlySorted!503 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) lt!669563)))

(declare-fun b!1553215 () Bool)

(assert (=> b!1553215 (= e!864769 (insertStrictlySorted!503 (t!51086 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553216 () Bool)

(assert (=> b!1553216 (= e!864769 (ite c!143160 (t!51086 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))) (ite c!143163 (Cons!36357 (h!37803 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))) (t!51086 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))))) Nil!36358)))))

(declare-fun bm!71360 () Bool)

(assert (=> bm!71360 (= call!71364 call!71362)))

(declare-fun b!1553217 () Bool)

(assert (=> b!1553217 (= e!864771 call!71363)))

(declare-fun b!1553218 () Bool)

(declare-fun res!1063221 () Bool)

(assert (=> b!1553218 (=> (not res!1063221) (not e!864770))))

(assert (=> b!1553218 (= res!1063221 (containsKey!752 lt!669563 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun bm!71361 () Bool)

(assert (=> bm!71361 (= call!71363 call!71364)))

(assert (= (and d!161405 c!143162) b!1553212))

(assert (= (and d!161405 (not c!143162)) b!1553211))

(assert (= (and b!1553211 c!143160) b!1553214))

(assert (= (and b!1553211 (not c!143160)) b!1553209))

(assert (= (and b!1553209 c!143163) b!1553213))

(assert (= (and b!1553209 (not c!143163)) b!1553217))

(assert (= (or b!1553213 b!1553217) bm!71361))

(assert (= (or b!1553214 bm!71361) bm!71360))

(assert (= (or b!1553212 bm!71360) bm!71359))

(assert (= (and bm!71359 c!143161) b!1553215))

(assert (= (and bm!71359 (not c!143161)) b!1553216))

(assert (= (and d!161405 res!1063220) b!1553218))

(assert (= (and b!1553218 res!1063221) b!1553210))

(declare-fun m!1431941 () Bool)

(assert (=> bm!71359 m!1431941))

(declare-fun m!1431943 () Bool)

(assert (=> d!161405 m!1431943))

(declare-fun m!1431945 () Bool)

(assert (=> d!161405 m!1431945))

(declare-fun m!1431947 () Bool)

(assert (=> b!1553215 m!1431947))

(declare-fun m!1431949 () Bool)

(assert (=> b!1553210 m!1431949))

(declare-fun m!1431951 () Bool)

(assert (=> b!1553218 m!1431951))

(assert (=> b!1552750 d!161405))

(declare-fun d!161407 () Bool)

(declare-fun lt!669564 () Bool)

(assert (=> d!161407 (= lt!669564 (select (content!797 lt!669332) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun e!864773 () Bool)

(assert (=> d!161407 (= lt!669564 e!864773)))

(declare-fun res!1063222 () Bool)

(assert (=> d!161407 (=> (not res!1063222) (not e!864773))))

(assert (=> d!161407 (= res!1063222 ((_ is Cons!36357) lt!669332))))

(assert (=> d!161407 (= (contains!10139 lt!669332 (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) lt!669564)))

(declare-fun b!1553219 () Bool)

(declare-fun e!864774 () Bool)

(assert (=> b!1553219 (= e!864773 e!864774)))

(declare-fun res!1063223 () Bool)

(assert (=> b!1553219 (=> res!1063223 e!864774)))

(assert (=> b!1553219 (= res!1063223 (= (h!37803 lt!669332) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553220 () Bool)

(assert (=> b!1553220 (= e!864774 (contains!10139 (t!51086 lt!669332) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (= (and d!161407 res!1063222) b!1553219))

(assert (= (and b!1553219 (not res!1063223)) b!1553220))

(declare-fun m!1431953 () Bool)

(assert (=> d!161407 m!1431953))

(declare-fun m!1431955 () Bool)

(assert (=> d!161407 m!1431955))

(declare-fun m!1431957 () Bool)

(assert (=> b!1553220 m!1431957))

(assert (=> b!1552859 d!161407))

(declare-fun d!161409 () Bool)

(assert (=> d!161409 (= ($colon$colon!946 e!864486 (ite c!143042 (h!37803 (toList!11267 call!71292)) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) (Cons!36357 (ite c!143042 (h!37803 (toList!11267 call!71292)) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) e!864486))))

(assert (=> bm!71337 d!161409))

(declare-fun d!161411 () Bool)

(declare-fun lt!669570 () SeekEntryResult!13514)

(assert (=> d!161411 (and (or ((_ is Undefined!13514) lt!669570) (not ((_ is Found!13514) lt!669570)) (and (bvsge (index!56454 lt!669570) #b00000000000000000000000000000000) (bvslt (index!56454 lt!669570) (size!50535 _keys!618)))) (or ((_ is Undefined!13514) lt!669570) ((_ is Found!13514) lt!669570) (not ((_ is MissingVacant!13514) lt!669570)) (not (= (index!56456 lt!669570) (index!56455 lt!669397))) (and (bvsge (index!56456 lt!669570) #b00000000000000000000000000000000) (bvslt (index!56456 lt!669570) (size!50535 _keys!618)))) (or ((_ is Undefined!13514) lt!669570) (ite ((_ is Found!13514) lt!669570) (= (select (arr!49984 _keys!618) (index!56454 lt!669570)) (select (arr!49984 _keys!618) #b00000000000000000000000000000000)) (and ((_ is MissingVacant!13514) lt!669570) (= (index!56456 lt!669570) (index!56455 lt!669397)) (= (select (arr!49984 _keys!618) (index!56456 lt!669570)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!864781 () SeekEntryResult!13514)

(assert (=> d!161411 (= lt!669570 e!864781)))

(declare-fun c!143171 () Bool)

(assert (=> d!161411 (= c!143171 (bvsge (x!139208 lt!669397) #b01111111111111111111111111111110))))

(declare-fun lt!669569 () (_ BitVec 64))

(assert (=> d!161411 (= lt!669569 (select (arr!49984 _keys!618) (index!56455 lt!669397)))))

(assert (=> d!161411 (validMask!0 mask!926)))

(assert (=> d!161411 (= (seekKeyOrZeroReturnVacant!0 (x!139208 lt!669397) (index!56455 lt!669397) (index!56455 lt!669397) (select (arr!49984 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926) lt!669570)))

(declare-fun b!1553233 () Bool)

(declare-fun e!864783 () SeekEntryResult!13514)

(assert (=> b!1553233 (= e!864783 (seekKeyOrZeroReturnVacant!0 (bvadd (x!139208 lt!669397) #b00000000000000000000000000000001) (nextIndex!0 (index!56455 lt!669397) (x!139208 lt!669397) mask!926) (index!56455 lt!669397) (select (arr!49984 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926))))

(declare-fun b!1553234 () Bool)

(assert (=> b!1553234 (= e!864781 Undefined!13514)))

(declare-fun b!1553235 () Bool)

(declare-fun e!864782 () SeekEntryResult!13514)

(assert (=> b!1553235 (= e!864782 (Found!13514 (index!56455 lt!669397)))))

(declare-fun b!1553236 () Bool)

(assert (=> b!1553236 (= e!864783 (MissingVacant!13514 (index!56455 lt!669397)))))

(declare-fun b!1553237 () Bool)

(declare-fun c!143172 () Bool)

(assert (=> b!1553237 (= c!143172 (= lt!669569 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1553237 (= e!864782 e!864783)))

(declare-fun b!1553238 () Bool)

(assert (=> b!1553238 (= e!864781 e!864782)))

(declare-fun c!143170 () Bool)

(assert (=> b!1553238 (= c!143170 (= lt!669569 (select (arr!49984 _keys!618) #b00000000000000000000000000000000)))))

(assert (= (and d!161411 c!143171) b!1553234))

(assert (= (and d!161411 (not c!143171)) b!1553238))

(assert (= (and b!1553238 c!143170) b!1553235))

(assert (= (and b!1553238 (not c!143170)) b!1553237))

(assert (= (and b!1553237 c!143172) b!1553236))

(assert (= (and b!1553237 (not c!143172)) b!1553233))

(declare-fun m!1431959 () Bool)

(assert (=> d!161411 m!1431959))

(declare-fun m!1431961 () Bool)

(assert (=> d!161411 m!1431961))

(assert (=> d!161411 m!1431237))

(assert (=> d!161411 m!1430983))

(declare-fun m!1431963 () Bool)

(assert (=> b!1553233 m!1431963))

(assert (=> b!1553233 m!1431963))

(assert (=> b!1553233 m!1431153))

(declare-fun m!1431965 () Bool)

(assert (=> b!1553233 m!1431965))

(assert (=> b!1552706 d!161411))

(declare-fun d!161413 () Bool)

(declare-fun res!1063224 () Bool)

(declare-fun e!864784 () Bool)

(assert (=> d!161413 (=> res!1063224 e!864784)))

(assert (=> d!161413 (= res!1063224 (and ((_ is Cons!36357) lt!669348) (= (_1!12451 (h!37803 lt!669348)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (=> d!161413 (= (containsKey!752 lt!669348 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) e!864784)))

(declare-fun b!1553239 () Bool)

(declare-fun e!864785 () Bool)

(assert (=> b!1553239 (= e!864784 e!864785)))

(declare-fun res!1063225 () Bool)

(assert (=> b!1553239 (=> (not res!1063225) (not e!864785))))

(assert (=> b!1553239 (= res!1063225 (and (or (not ((_ is Cons!36357) lt!669348)) (bvsle (_1!12451 (h!37803 lt!669348)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))) ((_ is Cons!36357) lt!669348) (bvslt (_1!12451 (h!37803 lt!669348)) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun b!1553240 () Bool)

(assert (=> b!1553240 (= e!864785 (containsKey!752 (t!51086 lt!669348) (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (= (and d!161413 (not res!1063224)) b!1553239))

(assert (= (and b!1553239 res!1063225) b!1553240))

(declare-fun m!1431967 () Bool)

(assert (=> b!1553240 m!1431967))

(assert (=> b!1552877 d!161413))

(declare-fun d!161415 () Bool)

(declare-fun res!1063226 () Bool)

(declare-fun e!864786 () Bool)

(assert (=> d!161415 (=> res!1063226 e!864786)))

(assert (=> d!161415 (= res!1063226 (or ((_ is Nil!36358) lt!669408) ((_ is Nil!36358) (t!51086 lt!669408))))))

(assert (=> d!161415 (= (isStrictlySorted!883 lt!669408) e!864786)))

(declare-fun b!1553241 () Bool)

(declare-fun e!864787 () Bool)

(assert (=> b!1553241 (= e!864786 e!864787)))

(declare-fun res!1063227 () Bool)

(assert (=> b!1553241 (=> (not res!1063227) (not e!864787))))

(assert (=> b!1553241 (= res!1063227 (bvslt (_1!12451 (h!37803 lt!669408)) (_1!12451 (h!37803 (t!51086 lt!669408)))))))

(declare-fun b!1553242 () Bool)

(assert (=> b!1553242 (= e!864787 (isStrictlySorted!883 (t!51086 lt!669408)))))

(assert (= (and d!161415 (not res!1063226)) b!1553241))

(assert (= (and b!1553241 res!1063227) b!1553242))

(declare-fun m!1431969 () Bool)

(assert (=> b!1553242 m!1431969))

(assert (=> d!161035 d!161415))

(declare-fun d!161417 () Bool)

(declare-fun res!1063228 () Bool)

(declare-fun e!864788 () Bool)

(assert (=> d!161417 (=> res!1063228 e!864788)))

(assert (=> d!161417 (= res!1063228 (or ((_ is Nil!36358) (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))) ((_ is Nil!36358) (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))))))))

(assert (=> d!161417 (= (isStrictlySorted!883 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297)))) e!864788)))

(declare-fun b!1553243 () Bool)

(declare-fun e!864789 () Bool)

(assert (=> b!1553243 (= e!864788 e!864789)))

(declare-fun res!1063229 () Bool)

(assert (=> b!1553243 (=> (not res!1063229) (not e!864789))))

(assert (=> b!1553243 (= res!1063229 (bvslt (_1!12451 (h!37803 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))) (_1!12451 (h!37803 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))))))))

(declare-fun b!1553244 () Bool)

(assert (=> b!1553244 (= e!864789 (isStrictlySorted!883 (t!51086 (toList!11267 (ite c!142944 call!71298 (ite c!142948 call!71295 call!71297))))))))

(assert (= (and d!161417 (not res!1063228)) b!1553243))

(assert (= (and b!1553243 res!1063229) b!1553244))

(assert (=> b!1553244 m!1431945))

(assert (=> d!161035 d!161417))

(declare-fun d!161419 () Bool)

(assert (=> d!161419 (= (isEmpty!1135 (getValueByKey!734 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000)) (not ((_ is Some!808) (getValueByKey!734 (toList!11267 lt!669252) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!161087 d!161419))

(declare-fun d!161421 () Bool)

(declare-fun res!1063230 () Bool)

(declare-fun e!864790 () Bool)

(assert (=> d!161421 (=> res!1063230 e!864790)))

(assert (=> d!161421 (= res!1063230 (and ((_ is Cons!36357) lt!669408) (= (_1!12451 (h!37803 lt!669408)) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(assert (=> d!161421 (= (containsKey!752 lt!669408 (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) e!864790)))

(declare-fun b!1553245 () Bool)

(declare-fun e!864791 () Bool)

(assert (=> b!1553245 (= e!864790 e!864791)))

(declare-fun res!1063231 () Bool)

(assert (=> b!1553245 (=> (not res!1063231) (not e!864791))))

(assert (=> b!1553245 (= res!1063231 (and (or (not ((_ is Cons!36357) lt!669408)) (bvsle (_1!12451 (h!37803 lt!669408)) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) ((_ is Cons!36357) lt!669408) (bvslt (_1!12451 (h!37803 lt!669408)) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun b!1553246 () Bool)

(assert (=> b!1553246 (= e!864791 (containsKey!752 (t!51086 lt!669408) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (= (and d!161421 (not res!1063230)) b!1553245))

(assert (= (and b!1553245 res!1063231) b!1553246))

(declare-fun m!1431971 () Bool)

(assert (=> b!1553246 m!1431971))

(assert (=> b!1552753 d!161421))

(declare-fun b!1553247 () Bool)

(declare-fun c!143176 () Bool)

(assert (=> b!1553247 (= c!143176 (and ((_ is Cons!36357) (t!51086 (toList!11267 call!71292))) (bvsgt (_1!12451 (h!37803 (t!51086 (toList!11267 call!71292)))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun e!864792 () List!36361)

(declare-fun e!864795 () List!36361)

(assert (=> b!1553247 (= e!864792 e!864795)))

(declare-fun b!1553248 () Bool)

(declare-fun e!864794 () Bool)

(declare-fun lt!669571 () List!36361)

(assert (=> b!1553248 (= e!864794 (contains!10139 lt!669571 (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553249 () Bool)

(declare-fun e!864796 () List!36361)

(assert (=> b!1553249 (= e!864796 e!864792)))

(declare-fun c!143173 () Bool)

(assert (=> b!1553249 (= c!143173 (and ((_ is Cons!36357) (t!51086 (toList!11267 call!71292))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 call!71292)))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun call!71365 () List!36361)

(declare-fun c!143175 () Bool)

(declare-fun e!864793 () List!36361)

(declare-fun bm!71362 () Bool)

(assert (=> bm!71362 (= call!71365 ($colon$colon!946 e!864793 (ite c!143175 (h!37803 (t!51086 (toList!11267 call!71292))) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun c!143174 () Bool)

(assert (=> bm!71362 (= c!143174 c!143175)))

(declare-fun b!1553250 () Bool)

(assert (=> b!1553250 (= e!864796 call!71365)))

(declare-fun b!1553251 () Bool)

(declare-fun call!71366 () List!36361)

(assert (=> b!1553251 (= e!864795 call!71366)))

(declare-fun b!1553252 () Bool)

(declare-fun call!71367 () List!36361)

(assert (=> b!1553252 (= e!864792 call!71367)))

(declare-fun d!161423 () Bool)

(assert (=> d!161423 e!864794))

(declare-fun res!1063232 () Bool)

(assert (=> d!161423 (=> (not res!1063232) (not e!864794))))

(assert (=> d!161423 (= res!1063232 (isStrictlySorted!883 lt!669571))))

(assert (=> d!161423 (= lt!669571 e!864796)))

(assert (=> d!161423 (= c!143175 (and ((_ is Cons!36357) (t!51086 (toList!11267 call!71292))) (bvslt (_1!12451 (h!37803 (t!51086 (toList!11267 call!71292)))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161423 (isStrictlySorted!883 (t!51086 (toList!11267 call!71292)))))

(assert (=> d!161423 (= (insertStrictlySorted!503 (t!51086 (toList!11267 call!71292)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!669571)))

(declare-fun b!1553253 () Bool)

(assert (=> b!1553253 (= e!864793 (insertStrictlySorted!503 (t!51086 (t!51086 (toList!11267 call!71292))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1553254 () Bool)

(assert (=> b!1553254 (= e!864793 (ite c!143173 (t!51086 (t!51086 (toList!11267 call!71292))) (ite c!143176 (Cons!36357 (h!37803 (t!51086 (toList!11267 call!71292))) (t!51086 (t!51086 (toList!11267 call!71292)))) Nil!36358)))))

(declare-fun bm!71363 () Bool)

(assert (=> bm!71363 (= call!71367 call!71365)))

(declare-fun b!1553255 () Bool)

(assert (=> b!1553255 (= e!864795 call!71366)))

(declare-fun b!1553256 () Bool)

(declare-fun res!1063233 () Bool)

(assert (=> b!1553256 (=> (not res!1063233) (not e!864794))))

(assert (=> b!1553256 (= res!1063233 (containsKey!752 lt!669571 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!71364 () Bool)

(assert (=> bm!71364 (= call!71366 call!71367)))

(assert (= (and d!161423 c!143175) b!1553250))

(assert (= (and d!161423 (not c!143175)) b!1553249))

(assert (= (and b!1553249 c!143173) b!1553252))

(assert (= (and b!1553249 (not c!143173)) b!1553247))

(assert (= (and b!1553247 c!143176) b!1553251))

(assert (= (and b!1553247 (not c!143176)) b!1553255))

(assert (= (or b!1553251 b!1553255) bm!71364))

(assert (= (or b!1553252 bm!71364) bm!71363))

(assert (= (or b!1553250 bm!71363) bm!71362))

(assert (= (and bm!71362 c!143174) b!1553253))

(assert (= (and bm!71362 (not c!143174)) b!1553254))

(assert (= (and d!161423 res!1063232) b!1553256))

(assert (= (and b!1553256 res!1063233) b!1553248))

(declare-fun m!1431973 () Bool)

(assert (=> bm!71362 m!1431973))

(declare-fun m!1431975 () Bool)

(assert (=> d!161423 m!1431975))

(assert (=> d!161423 m!1431687))

(declare-fun m!1431977 () Bool)

(assert (=> b!1553253 m!1431977))

(declare-fun m!1431979 () Bool)

(assert (=> b!1553248 m!1431979))

(declare-fun m!1431981 () Bool)

(assert (=> b!1553256 m!1431981))

(assert (=> b!1552792 d!161423))

(declare-fun d!161425 () Bool)

(declare-fun res!1063234 () Bool)

(declare-fun e!864797 () Bool)

(assert (=> d!161425 (=> res!1063234 e!864797)))

(assert (=> d!161425 (= res!1063234 (and ((_ is Cons!36357) lt!669429) (= (_1!12451 (h!37803 lt!669429)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161425 (= (containsKey!752 lt!669429 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864797)))

(declare-fun b!1553257 () Bool)

(declare-fun e!864798 () Bool)

(assert (=> b!1553257 (= e!864797 e!864798)))

(declare-fun res!1063235 () Bool)

(assert (=> b!1553257 (=> (not res!1063235) (not e!864798))))

(assert (=> b!1553257 (= res!1063235 (and (or (not ((_ is Cons!36357) lt!669429)) (bvsle (_1!12451 (h!37803 lt!669429)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) ((_ is Cons!36357) lt!669429) (bvslt (_1!12451 (h!37803 lt!669429)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553258 () Bool)

(assert (=> b!1553258 (= e!864798 (containsKey!752 (t!51086 lt!669429) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!161425 (not res!1063234)) b!1553257))

(assert (= (and b!1553257 res!1063235) b!1553258))

(declare-fun m!1431983 () Bool)

(assert (=> b!1553258 m!1431983))

(assert (=> b!1552795 d!161425))

(declare-fun d!161427 () Bool)

(assert (=> d!161427 (= ($colon$colon!946 e!864534 (ite c!143063 (h!37803 (toList!11267 lt!669255)) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) (Cons!36357 (ite c!143063 (h!37803 (toList!11267 lt!669255)) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) e!864534))))

(assert (=> bm!71340 d!161427))

(declare-fun d!161429 () Bool)

(declare-fun e!864800 () Bool)

(assert (=> d!161429 e!864800))

(declare-fun res!1063236 () Bool)

(assert (=> d!161429 (=> res!1063236 e!864800)))

(declare-fun lt!669575 () Bool)

(assert (=> d!161429 (= res!1063236 (not lt!669575))))

(declare-fun lt!669574 () Bool)

(assert (=> d!161429 (= lt!669575 lt!669574)))

(declare-fun lt!669573 () Unit!51642)

(declare-fun e!864799 () Unit!51642)

(assert (=> d!161429 (= lt!669573 e!864799)))

(declare-fun c!143177 () Bool)

(assert (=> d!161429 (= c!143177 lt!669574)))

(assert (=> d!161429 (= lt!669574 (containsKey!752 (toList!11267 lt!669385) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!161429 (= (contains!10137 lt!669385 #b1000000000000000000000000000000000000000000000000000000000000000) lt!669575)))

(declare-fun b!1553259 () Bool)

(declare-fun lt!669572 () Unit!51642)

(assert (=> b!1553259 (= e!864799 lt!669572)))

(assert (=> b!1553259 (= lt!669572 (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669385) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1553259 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669385) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1553260 () Bool)

(declare-fun Unit!51668 () Unit!51642)

(assert (=> b!1553260 (= e!864799 Unit!51668)))

(declare-fun b!1553261 () Bool)

(assert (=> b!1553261 (= e!864800 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669385) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!161429 c!143177) b!1553259))

(assert (= (and d!161429 (not c!143177)) b!1553260))

(assert (= (and d!161429 (not res!1063236)) b!1553261))

(declare-fun m!1431985 () Bool)

(assert (=> d!161429 m!1431985))

(declare-fun m!1431987 () Bool)

(assert (=> b!1553259 m!1431987))

(declare-fun m!1431989 () Bool)

(assert (=> b!1553259 m!1431989))

(assert (=> b!1553259 m!1431989))

(declare-fun m!1431991 () Bool)

(assert (=> b!1553259 m!1431991))

(assert (=> b!1553261 m!1431989))

(assert (=> b!1553261 m!1431989))

(assert (=> b!1553261 m!1431991))

(assert (=> b!1552656 d!161429))

(declare-fun b!1553263 () Bool)

(declare-fun e!864801 () Option!809)

(declare-fun e!864802 () Option!809)

(assert (=> b!1553263 (= e!864801 e!864802)))

(declare-fun c!143179 () Bool)

(assert (=> b!1553263 (= c!143179 (and ((_ is Cons!36357) (t!51086 lt!669360)) (not (= (_1!12451 (h!37803 (t!51086 lt!669360))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))))

(declare-fun d!161431 () Bool)

(declare-fun c!143178 () Bool)

(assert (=> d!161431 (= c!143178 (and ((_ is Cons!36357) (t!51086 lt!669360)) (= (_1!12451 (h!37803 (t!51086 lt!669360))) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(assert (=> d!161431 (= (getValueByKey!734 (t!51086 lt!669360) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) e!864801)))

(declare-fun b!1553262 () Bool)

(assert (=> b!1553262 (= e!864801 (Some!808 (_2!12451 (h!37803 (t!51086 lt!669360)))))))

(declare-fun b!1553264 () Bool)

(assert (=> b!1553264 (= e!864802 (getValueByKey!734 (t!51086 (t!51086 lt!669360)) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553265 () Bool)

(assert (=> b!1553265 (= e!864802 None!807)))

(assert (= (and d!161431 c!143178) b!1553262))

(assert (= (and d!161431 (not c!143178)) b!1553263))

(assert (= (and b!1553263 c!143179) b!1553264))

(assert (= (and b!1553263 (not c!143179)) b!1553265))

(declare-fun m!1431993 () Bool)

(assert (=> b!1553264 m!1431993))

(assert (=> b!1552716 d!161431))

(declare-fun d!161433 () Bool)

(assert (=> d!161433 (= (isEmpty!1134 lt!669385) (isEmpty!1136 (toList!11267 lt!669385)))))

(declare-fun bs!44629 () Bool)

(assert (= bs!44629 d!161433))

(declare-fun m!1431995 () Bool)

(assert (=> bs!44629 m!1431995))

(assert (=> b!1552660 d!161433))

(declare-fun d!161435 () Bool)

(assert (=> d!161435 (isDefined!546 (getValueByKey!734 (toList!11267 lt!669362) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun lt!669576 () Unit!51642)

(assert (=> d!161435 (= lt!669576 (choose!2046 (toList!11267 lt!669362) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun e!864803 () Bool)

(assert (=> d!161435 e!864803))

(declare-fun res!1063237 () Bool)

(assert (=> d!161435 (=> (not res!1063237) (not e!864803))))

(assert (=> d!161435 (= res!1063237 (isStrictlySorted!883 (toList!11267 lt!669362)))))

(assert (=> d!161435 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 lt!669362) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) lt!669576)))

(declare-fun b!1553266 () Bool)

(assert (=> b!1553266 (= e!864803 (containsKey!752 (toList!11267 lt!669362) (_1!12451 (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (= (and d!161435 res!1063237) b!1553266))

(assert (=> d!161435 m!1431145))

(assert (=> d!161435 m!1431145))

(assert (=> d!161435 m!1431253))

(declare-fun m!1431997 () Bool)

(assert (=> d!161435 m!1431997))

(declare-fun m!1431999 () Bool)

(assert (=> d!161435 m!1431999))

(assert (=> b!1553266 m!1431249))

(assert (=> b!1552711 d!161435))

(assert (=> b!1552711 d!161303))

(assert (=> b!1552711 d!161067))

(declare-fun d!161437 () Bool)

(assert (=> d!161437 (isDefined!546 (getValueByKey!734 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))) lt!669319))))

(declare-fun lt!669577 () Unit!51642)

(assert (=> d!161437 (= lt!669577 (choose!2046 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))) lt!669319))))

(declare-fun e!864804 () Bool)

(assert (=> d!161437 e!864804))

(declare-fun res!1063238 () Bool)

(assert (=> d!161437 (=> (not res!1063238) (not e!864804))))

(assert (=> d!161437 (= res!1063238 (isStrictlySorted!883 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316)))))))

(assert (=> d!161437 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))) lt!669319) lt!669577)))

(declare-fun b!1553267 () Bool)

(assert (=> b!1553267 (= e!864804 (containsKey!752 (toList!11267 (+!4973 lt!669320 (tuple2!24883 lt!669322 lt!669316))) lt!669319))))

(assert (= (and d!161437 res!1063238) b!1553267))

(assert (=> d!161437 m!1431361))

(assert (=> d!161437 m!1431361))

(assert (=> d!161437 m!1431363))

(declare-fun m!1432001 () Bool)

(assert (=> d!161437 m!1432001))

(declare-fun m!1432003 () Bool)

(assert (=> d!161437 m!1432003))

(assert (=> b!1553267 m!1431357))

(assert (=> b!1552812 d!161437))

(assert (=> b!1552812 d!161279))

(assert (=> b!1552812 d!161281))

(declare-fun d!161439 () Bool)

(declare-fun lt!669578 () Bool)

(assert (=> d!161439 (= lt!669578 (select (content!797 (toList!11267 lt!669440)) (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!864805 () Bool)

(assert (=> d!161439 (= lt!669578 e!864805)))

(declare-fun res!1063239 () Bool)

(assert (=> d!161439 (=> (not res!1063239) (not e!864805))))

(assert (=> d!161439 (= res!1063239 ((_ is Cons!36357) (toList!11267 lt!669440)))))

(assert (=> d!161439 (= (contains!10139 (toList!11267 lt!669440) (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!669578)))

(declare-fun b!1553268 () Bool)

(declare-fun e!864806 () Bool)

(assert (=> b!1553268 (= e!864805 e!864806)))

(declare-fun res!1063240 () Bool)

(assert (=> b!1553268 (=> res!1063240 e!864806)))

(assert (=> b!1553268 (= res!1063240 (= (h!37803 (toList!11267 lt!669440)) (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1553269 () Bool)

(assert (=> b!1553269 (= e!864806 (contains!10139 (t!51086 (toList!11267 lt!669440)) (tuple2!24883 (select (arr!49984 _keys!618) from!762) (get!26063 (select (arr!49985 _values!470) from!762) (dynLambda!3874 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!161439 res!1063239) b!1553268))

(assert (= (and b!1553268 (not res!1063240)) b!1553269))

(declare-fun m!1432005 () Bool)

(assert (=> d!161439 m!1432005))

(declare-fun m!1432007 () Bool)

(assert (=> d!161439 m!1432007))

(declare-fun m!1432009 () Bool)

(assert (=> b!1553269 m!1432009))

(assert (=> b!1552816 d!161439))

(declare-fun lt!669579 () Bool)

(declare-fun d!161441 () Bool)

(assert (=> d!161441 (= lt!669579 (select (content!797 (t!51086 (toList!11267 lt!669362))) (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun e!864807 () Bool)

(assert (=> d!161441 (= lt!669579 e!864807)))

(declare-fun res!1063241 () Bool)

(assert (=> d!161441 (=> (not res!1063241) (not e!864807))))

(assert (=> d!161441 (= res!1063241 ((_ is Cons!36357) (t!51086 (toList!11267 lt!669362))))))

(assert (=> d!161441 (= (contains!10139 (t!51086 (toList!11267 lt!669362)) (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!669579)))

(declare-fun b!1553270 () Bool)

(declare-fun e!864808 () Bool)

(assert (=> b!1553270 (= e!864807 e!864808)))

(declare-fun res!1063242 () Bool)

(assert (=> b!1553270 (=> res!1063242 e!864808)))

(assert (=> b!1553270 (= res!1063242 (= (h!37803 (t!51086 (toList!11267 lt!669362))) (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1553271 () Bool)

(assert (=> b!1553271 (= e!864808 (contains!10139 (t!51086 (t!51086 (toList!11267 lt!669362))) (ite (or c!142944 c!142948) (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!161441 res!1063241) b!1553270))

(assert (= (and b!1553270 (not res!1063242)) b!1553271))

(assert (=> d!161441 m!1431799))

(declare-fun m!1432011 () Bool)

(assert (=> d!161441 m!1432011))

(declare-fun m!1432013 () Bool)

(assert (=> b!1553271 m!1432013))

(assert (=> b!1552904 d!161441))

(assert (=> b!1552779 d!161267))

(assert (=> b!1552779 d!161107))

(declare-fun b!1553272 () Bool)

(declare-fun c!143183 () Bool)

(assert (=> b!1553272 (= c!143183 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669255))) (bvsgt (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669255)))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun e!864809 () List!36361)

(declare-fun e!864812 () List!36361)

(assert (=> b!1553272 (= e!864809 e!864812)))

(declare-fun b!1553273 () Bool)

(declare-fun e!864811 () Bool)

(declare-fun lt!669580 () List!36361)

(assert (=> b!1553273 (= e!864811 (contains!10139 lt!669580 (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553274 () Bool)

(declare-fun e!864813 () List!36361)

(assert (=> b!1553274 (= e!864813 e!864809)))

(declare-fun c!143180 () Bool)

(assert (=> b!1553274 (= c!143180 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669255))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669255)))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun c!143182 () Bool)

(declare-fun e!864810 () List!36361)

(declare-fun bm!71365 () Bool)

(declare-fun call!71368 () List!36361)

(assert (=> bm!71365 (= call!71368 ($colon$colon!946 e!864810 (ite c!143182 (h!37803 (t!51086 (toList!11267 lt!669255))) (tuple2!24883 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun c!143181 () Bool)

(assert (=> bm!71365 (= c!143181 c!143182)))

(declare-fun b!1553275 () Bool)

(assert (=> b!1553275 (= e!864813 call!71368)))

(declare-fun b!1553276 () Bool)

(declare-fun call!71369 () List!36361)

(assert (=> b!1553276 (= e!864812 call!71369)))

(declare-fun b!1553277 () Bool)

(declare-fun call!71370 () List!36361)

(assert (=> b!1553277 (= e!864809 call!71370)))

(declare-fun d!161443 () Bool)

(assert (=> d!161443 e!864811))

(declare-fun res!1063243 () Bool)

(assert (=> d!161443 (=> (not res!1063243) (not e!864811))))

(assert (=> d!161443 (= res!1063243 (isStrictlySorted!883 lt!669580))))

(assert (=> d!161443 (= lt!669580 e!864813)))

(assert (=> d!161443 (= c!143182 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669255))) (bvslt (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669255)))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161443 (isStrictlySorted!883 (t!51086 (toList!11267 lt!669255)))))

(assert (=> d!161443 (= (insertStrictlySorted!503 (t!51086 (toList!11267 lt!669255)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!669580)))

(declare-fun b!1553278 () Bool)

(assert (=> b!1553278 (= e!864810 (insertStrictlySorted!503 (t!51086 (t!51086 (toList!11267 lt!669255))) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1553279 () Bool)

(assert (=> b!1553279 (= e!864810 (ite c!143180 (t!51086 (t!51086 (toList!11267 lt!669255))) (ite c!143183 (Cons!36357 (h!37803 (t!51086 (toList!11267 lt!669255))) (t!51086 (t!51086 (toList!11267 lt!669255)))) Nil!36358)))))

(declare-fun bm!71366 () Bool)

(assert (=> bm!71366 (= call!71370 call!71368)))

(declare-fun b!1553280 () Bool)

(assert (=> b!1553280 (= e!864812 call!71369)))

(declare-fun b!1553281 () Bool)

(declare-fun res!1063244 () Bool)

(assert (=> b!1553281 (=> (not res!1063244) (not e!864811))))

(assert (=> b!1553281 (= res!1063244 (containsKey!752 lt!669580 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!71367 () Bool)

(assert (=> bm!71367 (= call!71369 call!71370)))

(assert (= (and d!161443 c!143182) b!1553275))

(assert (= (and d!161443 (not c!143182)) b!1553274))

(assert (= (and b!1553274 c!143180) b!1553277))

(assert (= (and b!1553274 (not c!143180)) b!1553272))

(assert (= (and b!1553272 c!143183) b!1553276))

(assert (= (and b!1553272 (not c!143183)) b!1553280))

(assert (= (or b!1553276 b!1553280) bm!71367))

(assert (= (or b!1553277 bm!71367) bm!71366))

(assert (= (or b!1553275 bm!71366) bm!71365))

(assert (= (and bm!71365 c!143181) b!1553278))

(assert (= (and bm!71365 (not c!143181)) b!1553279))

(assert (= (and d!161443 res!1063243) b!1553281))

(assert (= (and b!1553281 res!1063244) b!1553273))

(declare-fun m!1432015 () Bool)

(assert (=> bm!71365 m!1432015))

(declare-fun m!1432017 () Bool)

(assert (=> d!161443 m!1432017))

(assert (=> d!161443 m!1431657))

(declare-fun m!1432019 () Bool)

(assert (=> b!1553278 m!1432019))

(declare-fun m!1432021 () Bool)

(assert (=> b!1553273 m!1432021))

(declare-fun m!1432023 () Bool)

(assert (=> b!1553281 m!1432023))

(assert (=> b!1552866 d!161443))

(declare-fun d!161445 () Bool)

(declare-fun res!1063245 () Bool)

(declare-fun e!864814 () Bool)

(assert (=> d!161445 (=> res!1063245 e!864814)))

(assert (=> d!161445 (= res!1063245 (and ((_ is Cons!36357) lt!669364) (= (_1!12451 (h!37803 lt!669364)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161445 (= (containsKey!752 lt!669364 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864814)))

(declare-fun b!1553282 () Bool)

(declare-fun e!864815 () Bool)

(assert (=> b!1553282 (= e!864814 e!864815)))

(declare-fun res!1063246 () Bool)

(assert (=> b!1553282 (=> (not res!1063246) (not e!864815))))

(assert (=> b!1553282 (= res!1063246 (and (or (not ((_ is Cons!36357) lt!669364)) (bvsle (_1!12451 (h!37803 lt!669364)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) ((_ is Cons!36357) lt!669364) (bvslt (_1!12451 (h!37803 lt!669364)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553283 () Bool)

(assert (=> b!1553283 (= e!864815 (containsKey!752 (t!51086 lt!669364) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!161445 (not res!1063245)) b!1553282))

(assert (= (and b!1553282 res!1063246) b!1553283))

(declare-fun m!1432025 () Bool)

(assert (=> b!1553283 m!1432025))

(assert (=> b!1552784 d!161445))

(assert (=> b!1552853 d!161301))

(assert (=> b!1552853 d!161057))

(declare-fun b!1553285 () Bool)

(declare-fun e!864816 () Option!809)

(declare-fun e!864817 () Option!809)

(assert (=> b!1553285 (= e!864816 e!864817)))

(declare-fun c!143185 () Bool)

(assert (=> b!1553285 (= c!143185 (and ((_ is Cons!36357) (t!51086 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) (not (= (_1!12451 (h!37803 (t!51086 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))) (select (arr!49984 _keys!618) from!762)))))))

(declare-fun d!161447 () Bool)

(declare-fun c!143184 () Bool)

(assert (=> d!161447 (= c!143184 (and ((_ is Cons!36357) (t!51086 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))) (select (arr!49984 _keys!618) from!762))))))

(assert (=> d!161447 (= (getValueByKey!734 (t!51086 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (select (arr!49984 _keys!618) from!762)) e!864816)))

(declare-fun b!1553284 () Bool)

(assert (=> b!1553284 (= e!864816 (Some!808 (_2!12451 (h!37803 (t!51086 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))))

(declare-fun b!1553286 () Bool)

(assert (=> b!1553286 (= e!864817 (getValueByKey!734 (t!51086 (t!51086 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))) (select (arr!49984 _keys!618) from!762)))))

(declare-fun b!1553287 () Bool)

(assert (=> b!1553287 (= e!864817 None!807)))

(assert (= (and d!161447 c!143184) b!1553284))

(assert (= (and d!161447 (not c!143184)) b!1553285))

(assert (= (and b!1553285 c!143185) b!1553286))

(assert (= (and b!1553285 (not c!143185)) b!1553287))

(assert (=> b!1553286 m!1430943))

(declare-fun m!1432027 () Bool)

(assert (=> b!1553286 m!1432027))

(assert (=> b!1552806 d!161447))

(declare-fun d!161449 () Bool)

(declare-fun res!1063247 () Bool)

(declare-fun e!864818 () Bool)

(assert (=> d!161449 (=> res!1063247 e!864818)))

(assert (=> d!161449 (= res!1063247 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161449 (= (containsKey!752 (t!51086 (toList!11267 lt!669252)) #b0000000000000000000000000000000000000000000000000000000000000000) e!864818)))

(declare-fun b!1553288 () Bool)

(declare-fun e!864819 () Bool)

(assert (=> b!1553288 (= e!864818 e!864819)))

(declare-fun res!1063248 () Bool)

(assert (=> b!1553288 (=> (not res!1063248) (not e!864819))))

(assert (=> b!1553288 (= res!1063248 (and (or (not ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252)))) (bvsle (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252))) (bvslt (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1553289 () Bool)

(assert (=> b!1553289 (= e!864819 (containsKey!752 (t!51086 (t!51086 (toList!11267 lt!669252))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!161449 (not res!1063247)) b!1553288))

(assert (= (and b!1553288 res!1063248) b!1553289))

(declare-fun m!1432029 () Bool)

(assert (=> b!1553289 m!1432029))

(assert (=> b!1552686 d!161449))

(declare-fun d!161451 () Bool)

(declare-fun res!1063249 () Bool)

(declare-fun e!864820 () Bool)

(assert (=> d!161451 (=> res!1063249 e!864820)))

(assert (=> d!161451 (= res!1063249 (and ((_ is Cons!36357) lt!669465) (= (_1!12451 (h!37803 lt!669465)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161451 (= (containsKey!752 lt!669465 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864820)))

(declare-fun b!1553290 () Bool)

(declare-fun e!864821 () Bool)

(assert (=> b!1553290 (= e!864820 e!864821)))

(declare-fun res!1063250 () Bool)

(assert (=> b!1553290 (=> (not res!1063250) (not e!864821))))

(assert (=> b!1553290 (= res!1063250 (and (or (not ((_ is Cons!36357) lt!669465)) (bvsle (_1!12451 (h!37803 lt!669465)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) ((_ is Cons!36357) lt!669465) (bvslt (_1!12451 (h!37803 lt!669465)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553291 () Bool)

(assert (=> b!1553291 (= e!864821 (containsKey!752 (t!51086 lt!669465) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!161451 (not res!1063249)) b!1553290))

(assert (= (and b!1553290 res!1063250) b!1553291))

(declare-fun m!1432031 () Bool)

(assert (=> b!1553291 m!1432031))

(assert (=> b!1552869 d!161451))

(declare-fun d!161453 () Bool)

(declare-fun res!1063251 () Bool)

(declare-fun e!864822 () Bool)

(assert (=> d!161453 (=> res!1063251 e!864822)))

(assert (=> d!161453 (= res!1063251 (and ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252))) (= (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!161453 (= (containsKey!752 (t!51086 (toList!11267 lt!669252)) #b1000000000000000000000000000000000000000000000000000000000000000) e!864822)))

(declare-fun b!1553292 () Bool)

(declare-fun e!864823 () Bool)

(assert (=> b!1553292 (= e!864822 e!864823)))

(declare-fun res!1063252 () Bool)

(assert (=> b!1553292 (=> (not res!1063252) (not e!864823))))

(assert (=> b!1553292 (= res!1063252 (and (or (not ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252)))) (bvsle (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36357) (t!51086 (toList!11267 lt!669252))) (bvslt (_1!12451 (h!37803 (t!51086 (toList!11267 lt!669252)))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1553293 () Bool)

(assert (=> b!1553293 (= e!864823 (containsKey!752 (t!51086 (t!51086 (toList!11267 lt!669252))) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!161453 (not res!1063251)) b!1553292))

(assert (= (and b!1553292 res!1063252) b!1553293))

(declare-fun m!1432033 () Bool)

(assert (=> b!1553293 m!1432033))

(assert (=> b!1552895 d!161453))

(assert (=> b!1552850 d!161289))

(assert (=> b!1552850 d!161291))

(assert (=> d!161127 d!161125))

(declare-fun d!161455 () Bool)

(assert (=> d!161455 (= (getValueByKey!734 lt!669348 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (Some!808 (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!161455 true))

(declare-fun _$22!589 () Unit!51642)

(assert (=> d!161455 (= (choose!2044 lt!669348 (_1!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12451 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) _$22!589)))

(declare-fun bs!44630 () Bool)

(assert (= bs!44630 d!161455))

(assert (=> bs!44630 m!1431111))

(assert (=> d!161127 d!161455))

(declare-fun d!161457 () Bool)

(declare-fun res!1063253 () Bool)

(declare-fun e!864824 () Bool)

(assert (=> d!161457 (=> res!1063253 e!864824)))

(assert (=> d!161457 (= res!1063253 (or ((_ is Nil!36358) lt!669348) ((_ is Nil!36358) (t!51086 lt!669348))))))

(assert (=> d!161457 (= (isStrictlySorted!883 lt!669348) e!864824)))

(declare-fun b!1553294 () Bool)

(declare-fun e!864825 () Bool)

(assert (=> b!1553294 (= e!864824 e!864825)))

(declare-fun res!1063254 () Bool)

(assert (=> b!1553294 (=> (not res!1063254) (not e!864825))))

(assert (=> b!1553294 (= res!1063254 (bvslt (_1!12451 (h!37803 lt!669348)) (_1!12451 (h!37803 (t!51086 lt!669348)))))))

(declare-fun b!1553295 () Bool)

(assert (=> b!1553295 (= e!864825 (isStrictlySorted!883 (t!51086 lt!669348)))))

(assert (= (and d!161457 (not res!1063253)) b!1553294))

(assert (= (and b!1553294 res!1063254) b!1553295))

(declare-fun m!1432035 () Bool)

(assert (=> b!1553295 m!1432035))

(assert (=> d!161127 d!161457))

(declare-fun d!161459 () Bool)

(assert (=> d!161459 (isDefined!546 (getValueByKey!734 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762)))))

(declare-fun lt!669581 () Unit!51642)

(assert (=> d!161459 (= lt!669581 (choose!2046 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762)))))

(declare-fun e!864826 () Bool)

(assert (=> d!161459 e!864826))

(declare-fun res!1063255 () Bool)

(assert (=> d!161459 (=> (not res!1063255) (not e!864826))))

(assert (=> d!161459 (= res!1063255 (isStrictlySorted!883 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(assert (=> d!161459 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!497 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762)) lt!669581)))

(declare-fun b!1553296 () Bool)

(assert (=> b!1553296 (= e!864826 (containsKey!752 (toList!11267 (+!4973 lt!669255 (tuple2!24883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49984 _keys!618) from!762)))))

(assert (= (and d!161459 res!1063255) b!1553296))

(assert (=> d!161459 m!1430943))

(assert (=> d!161459 m!1431303))

(assert (=> d!161459 m!1431303))

(assert (=> d!161459 m!1431305))

(assert (=> d!161459 m!1430943))

(declare-fun m!1432037 () Bool)

(assert (=> d!161459 m!1432037))

(declare-fun m!1432039 () Bool)

(assert (=> d!161459 m!1432039))

(assert (=> b!1553296 m!1430943))

(assert (=> b!1553296 m!1431299))

(assert (=> b!1552761 d!161459))

(assert (=> b!1552761 d!161317))

(assert (=> b!1552761 d!161297))

(declare-fun d!161461 () Bool)

(declare-fun res!1063256 () Bool)

(declare-fun e!864827 () Bool)

(assert (=> d!161461 (=> res!1063256 e!864827)))

(assert (=> d!161461 (= res!1063256 (and ((_ is Cons!36357) lt!669332) (= (_1!12451 (h!37803 lt!669332)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!161461 (= (containsKey!752 lt!669332 (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) e!864827)))

(declare-fun b!1553297 () Bool)

(declare-fun e!864828 () Bool)

(assert (=> b!1553297 (= e!864827 e!864828)))

(declare-fun res!1063257 () Bool)

(assert (=> b!1553297 (=> (not res!1063257) (not e!864828))))

(assert (=> b!1553297 (= res!1063257 (and (or (not ((_ is Cons!36357) lt!669332)) (bvsle (_1!12451 (h!37803 lt!669332)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) ((_ is Cons!36357) lt!669332) (bvslt (_1!12451 (h!37803 lt!669332)) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1553298 () Bool)

(assert (=> b!1553298 (= e!864828 (containsKey!752 (t!51086 lt!669332) (_1!12451 (tuple2!24883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!161461 (not res!1063256)) b!1553297))

(assert (= (and b!1553297 res!1063257) b!1553298))

(declare-fun m!1432041 () Bool)

(assert (=> b!1553298 m!1432041))

(assert (=> b!1552858 d!161461))

(declare-fun d!161463 () Bool)

(declare-fun c!143186 () Bool)

(assert (=> d!161463 (= c!143186 ((_ is Nil!36358) (toList!11267 lt!669366)))))

(declare-fun e!864829 () (InoxSet tuple2!24882))

(assert (=> d!161463 (= (content!797 (toList!11267 lt!669366)) e!864829)))

(declare-fun b!1553299 () Bool)

(assert (=> b!1553299 (= e!864829 ((as const (Array tuple2!24882 Bool)) false))))

(declare-fun b!1553300 () Bool)

(assert (=> b!1553300 (= e!864829 ((_ map or) (store ((as const (Array tuple2!24882 Bool)) false) (h!37803 (toList!11267 lt!669366)) true) (content!797 (t!51086 (toList!11267 lt!669366)))))))

(assert (= (and d!161463 c!143186) b!1553299))

(assert (= (and d!161463 (not c!143186)) b!1553300))

(declare-fun m!1432043 () Bool)

(assert (=> b!1553300 m!1432043))

(assert (=> b!1553300 m!1431693))

(assert (=> d!161155 d!161463))

(declare-fun b!1553302 () Bool)

(declare-fun e!864831 () Bool)

(assert (=> b!1553302 (= e!864831 tp_is_empty!38211)))

(declare-fun b!1553301 () Bool)

(declare-fun e!864830 () Bool)

(assert (=> b!1553301 (= e!864830 tp_is_empty!38211)))

(declare-fun condMapEmpty!59040 () Bool)

(declare-fun mapDefault!59040 () ValueCell!18195)

(assert (=> mapNonEmpty!59039 (= condMapEmpty!59040 (= mapRest!59039 ((as const (Array (_ BitVec 32) ValueCell!18195)) mapDefault!59040)))))

(declare-fun mapRes!59040 () Bool)

(assert (=> mapNonEmpty!59039 (= tp!112080 (and e!864831 mapRes!59040))))

(declare-fun mapIsEmpty!59040 () Bool)

(assert (=> mapIsEmpty!59040 mapRes!59040))

(declare-fun mapNonEmpty!59040 () Bool)

(declare-fun tp!112081 () Bool)

(assert (=> mapNonEmpty!59040 (= mapRes!59040 (and tp!112081 e!864830))))

(declare-fun mapValue!59040 () ValueCell!18195)

(declare-fun mapKey!59040 () (_ BitVec 32))

(declare-fun mapRest!59040 () (Array (_ BitVec 32) ValueCell!18195))

(assert (=> mapNonEmpty!59040 (= mapRest!59039 (store mapRest!59040 mapKey!59040 mapValue!59040))))

(assert (= (and mapNonEmpty!59039 condMapEmpty!59040) mapIsEmpty!59040))

(assert (= (and mapNonEmpty!59039 (not condMapEmpty!59040)) mapNonEmpty!59040))

(assert (= (and mapNonEmpty!59040 ((_ is ValueCellFull!18195) mapValue!59040)) b!1553301))

(assert (= (and mapNonEmpty!59039 ((_ is ValueCellFull!18195) mapDefault!59040)) b!1553302))

(declare-fun m!1432045 () Bool)

(assert (=> mapNonEmpty!59040 m!1432045))

(declare-fun b_lambda!24825 () Bool)

(assert (= b_lambda!24821 (or (and start!132340 b_free!31935) b_lambda!24825)))

(declare-fun b_lambda!24827 () Bool)

(assert (= b_lambda!24823 (or (and start!132340 b_free!31935) b_lambda!24827)))

(check-sat (not b!1553208) (not b!1553253) (not b!1553220) (not d!161267) (not b!1553300) (not d!161289) (not d!161183) (not d!161261) (not b!1552930) (not d!161225) (not b!1553179) (not d!161319) (not d!161193) (not d!161341) (not b!1553015) (not d!161405) (not b!1553298) (not d!161459) (not d!161407) (not b!1552942) (not b!1553278) (not b!1553106) (not d!161401) (not d!161347) (not b!1553008) (not b!1552950) (not b!1553256) (not d!161313) (not b!1553035) (not b!1553244) b_and!51403 (not b!1553269) (not b!1553281) (not b!1553029) (not d!161437) (not b!1552934) (not d!161367) (not d!161363) (not b!1553215) (not d!161439) (not b!1552960) (not b!1553139) (not d!161307) (not b!1553047) (not bm!71362) (not b!1553114) (not b!1553167) (not b!1552916) (not d!161331) (not b!1553193) (not b!1553147) (not b!1552989) (not b_lambda!24817) (not b!1553261) (not b!1553182) (not b!1553136) (not d!161293) (not b_lambda!24827) (not b!1553071) (not d!161175) (not d!161327) (not b!1553148) (not d!161211) (not b!1552994) (not b_lambda!24803) (not d!161179) (not b!1553197) (not d!161317) (not b!1552981) (not d!161189) (not b!1553163) (not b!1553017) (not b!1552937) (not b!1553120) (not b!1553150) (not b_lambda!24809) (not b!1553002) (not b!1552997) (not d!161345) (not b!1553074) (not b!1553198) (not d!161361) (not b!1553019) (not b!1553058) (not b!1553171) (not b!1553266) (not b!1553258) (not b!1553040) (not d!161433) (not b!1552992) (not b!1553190) (not b!1553289) (not b!1552983) (not d!161241) (not b!1553061) (not d!161265) (not b!1553063) (not b!1553052) (not b!1553067) (not b!1552955) (not b!1552971) (not b!1553011) (not b!1553206) (not b!1553110) (not b!1553000) (not d!161287) (not b!1552935) (not d!161201) (not b!1552979) (not b!1553117) (not b!1553131) (not b!1552959) (not bm!71347) tp_is_empty!38211 (not b!1553295) (not b!1553202) (not b!1553296) (not b!1553013) (not d!161411) (not b!1553242) (not bm!71359) (not b!1553041) (not b!1553204) (not b!1553112) (not d!161213) (not b!1553174) (not d!161221) (not d!161435) (not d!161165) (not bm!71365) (not b!1553233) (not b!1553093) (not bm!71351) (not d!161251) (not d!161187) (not d!161443) (not b!1553291) (not b!1552962) (not bm!71356) (not d!161235) (not b!1553240) (not b!1553286) (not b!1553022) (not b!1553283) (not b!1552926) (not d!161279) (not d!161253) (not b!1553108) (not d!161231) (not b!1552923) (not b!1553049) (not b!1553293) (not b_lambda!24811) (not b!1553026) (not d!161403) (not d!161429) (not mapNonEmpty!59040) (not b!1552976) (not b!1552965) (not b!1553010) (not bm!71352) (not b!1553273) (not b!1553267) (not b!1552986) (not d!161393) (not b!1553144) (not b!1553154) (not bm!71353) (not b!1553195) (not b!1553210) (not b!1552988) (not d!161349) (not b!1552953) (not b!1553121) (not b!1553102) (not b!1552973) (not b!1552943) (not b!1553129) (not d!161395) (not b!1552954) (not d!161167) (not b!1553199) (not b!1553184) (not b!1552940) (not d!161379) (not d!161423) (not b_next!31935) (not b!1553006) (not b!1553104) (not b!1553034) (not b!1552956) (not d!161385) (not b!1552945) (not d!161371) (not b!1553073) (not b!1553126) (not b!1553123) (not b!1553038) (not d!161185) (not d!161391) (not d!161389) (not b!1553055) (not d!161159) (not b!1553004) (not d!161209) (not d!161301) (not b!1553064) (not b_lambda!24819) (not b!1553246) (not b!1553264) (not b!1552964) (not b!1553152) (not b!1553218) (not b!1553032) (not b!1553248) (not b!1553031) (not b!1553187) (not b!1553201) (not b!1553259) (not d!161303) (not bm!71350) (not d!161237) (not b!1553044) (not b!1553141) (not b!1552929) (not d!161299) (not d!161441) (not b!1552932) (not b!1553156) (not d!161455) (not b!1553271) (not b!1553140) (not d!161311) (not d!161277) (not b!1553128) (not d!161197) (not b_lambda!24825))
(check-sat b_and!51403 (not b_next!31935))
