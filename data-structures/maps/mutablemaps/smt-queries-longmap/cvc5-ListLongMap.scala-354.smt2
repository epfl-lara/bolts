; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6472 () Bool)

(assert start!6472)

(declare-fun b_free!1501 () Bool)

(declare-fun b_next!1501 () Bool)

(assert (=> start!6472 (= b_free!1501 (not b_next!1501))))

(declare-fun tp!5939 () Bool)

(declare-fun b_and!2661 () Bool)

(assert (=> start!6472 (= tp!5939 b_and!2661)))

(declare-fun b!43035 () Bool)

(declare-datatypes ((V!2309 0))(
  ( (V!2310 (val!984 Int)) )
))
(declare-datatypes ((tuple2!1626 0))(
  ( (tuple2!1627 (_1!823 (_ BitVec 64)) (_2!823 V!2309)) )
))
(declare-datatypes ((List!1212 0))(
  ( (Nil!1209) (Cons!1208 (h!1785 tuple2!1626) (t!4217 List!1212)) )
))
(declare-datatypes ((ListLongMap!1207 0))(
  ( (ListLongMap!1208 (toList!619 List!1212)) )
))
(declare-fun lt!18364 () ListLongMap!1207)

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!18368 () V!2309)

(declare-datatypes ((ValueCell!698 0))(
  ( (ValueCellFull!698 (v!2073 V!2309)) (EmptyCell!698) )
))
(declare-datatypes ((array!2923 0))(
  ( (array!2924 (arr!1405 (Array (_ BitVec 32) ValueCell!698)) (size!1590 (_ BitVec 32))) )
))
(declare-fun lt!18366 () array!2923)

(declare-fun e!27278 () Bool)

(declare-datatypes ((array!2925 0))(
  ( (array!2926 (arr!1406 (Array (_ BitVec 32) (_ BitVec 64))) (size!1591 (_ BitVec 32))) )
))
(declare-fun lt!18370 () array!2925)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun contains!564 (ListLongMap!1207 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!350 (array!2925 array!2923 (_ BitVec 32) (_ BitVec 32) V!2309 V!2309 (_ BitVec 32) Int) ListLongMap!1207)

(declare-fun head!887 (List!1212) tuple2!1626)

(assert (=> b!43035 (= e!27278 (contains!564 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470) (_1!823 (head!887 (toList!619 lt!18364)))))))

(declare-fun b!43033 () Bool)

(declare-fun res!25560 () Bool)

(assert (=> b!43033 (=> res!25560 e!27278)))

(declare-fun isEmpty!280 (List!1212) Bool)

(assert (=> b!43033 (= res!25560 (isEmpty!280 (toList!619 lt!18364)))))

(declare-fun b!43034 () Bool)

(declare-fun res!25558 () Bool)

(assert (=> b!43034 (=> res!25558 e!27278)))

(assert (=> b!43034 (= res!25558 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun res!25559 () Bool)

(declare-fun e!27279 () Bool)

(assert (=> start!6472 (=> (not res!25559) (not e!27279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6472 (= res!25559 (validMask!0 mask!853))))

(assert (=> start!6472 e!27279))

(assert (=> start!6472 true))

(assert (=> start!6472 tp!5939))

(declare-fun b!43032 () Bool)

(assert (=> b!43032 (= e!27279 (not e!27278))))

(declare-fun res!25561 () Bool)

(assert (=> b!43032 (=> res!25561 e!27278)))

(assert (=> b!43032 (= res!25561 (= lt!18364 (ListLongMap!1208 Nil!1209)))))

(declare-datatypes ((LongMapFixedSize!376 0))(
  ( (LongMapFixedSize!377 (defaultEntry!1881 Int) (mask!5430 (_ BitVec 32)) (extraKeys!1772 (_ BitVec 32)) (zeroValue!1799 V!2309) (minValue!1799 V!2309) (_size!237 (_ BitVec 32)) (_keys!3430 array!2925) (_values!1864 array!2923) (_vacant!237 (_ BitVec 32))) )
))
(declare-fun map!835 (LongMapFixedSize!376) ListLongMap!1207)

(assert (=> b!43032 (= lt!18364 (map!835 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1213 0))(
  ( (Nil!1210) (Cons!1209 (h!1786 (_ BitVec 64)) (t!4218 List!1213)) )
))
(declare-fun arrayNoDuplicates!0 (array!2925 (_ BitVec 32) List!1213) Bool)

(assert (=> b!43032 (arrayNoDuplicates!0 lt!18370 #b00000000000000000000000000000000 Nil!1210)))

(declare-datatypes ((Unit!1199 0))(
  ( (Unit!1200) )
))
(declare-fun lt!18365 () Unit!1199)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2925 (_ BitVec 32) (_ BitVec 32) List!1213) Unit!1199)

(assert (=> b!43032 (= lt!18365 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18370 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2925 (_ BitVec 32)) Bool)

(assert (=> b!43032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18370 mask!853)))

(declare-fun lt!18367 () Unit!1199)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2925 (_ BitVec 32) (_ BitVec 32)) Unit!1199)

(assert (=> b!43032 (= lt!18367 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18370 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2925 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43032 (= (arrayCountValidKeys!0 lt!18370 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18369 () Unit!1199)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2925 (_ BitVec 32) (_ BitVec 32)) Unit!1199)

(assert (=> b!43032 (= lt!18369 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18370 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43032 (= lt!18366 (array!2924 ((as const (Array (_ BitVec 32) ValueCell!698)) EmptyCell!698) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43032 (= lt!18370 (array!2926 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!259 (Int (_ BitVec 64)) V!2309)

(assert (=> b!43032 (= lt!18368 (dynLambda!259 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6472 res!25559) b!43032))

(assert (= (and b!43032 (not res!25561)) b!43033))

(assert (= (and b!43033 (not res!25560)) b!43034))

(assert (= (and b!43034 (not res!25558)) b!43035))

(declare-fun b_lambda!2263 () Bool)

(assert (=> (not b_lambda!2263) (not b!43032)))

(declare-fun t!4216 () Bool)

(declare-fun tb!991 () Bool)

(assert (=> (and start!6472 (= defaultEntry!470 defaultEntry!470) t!4216) tb!991))

(declare-fun result!1725 () Bool)

(declare-fun tp_is_empty!1891 () Bool)

(assert (=> tb!991 (= result!1725 tp_is_empty!1891)))

(assert (=> b!43032 t!4216))

(declare-fun b_and!2663 () Bool)

(assert (= b_and!2661 (and (=> t!4216 result!1725) b_and!2663)))

(declare-fun m!36947 () Bool)

(assert (=> b!43035 m!36947))

(declare-fun m!36949 () Bool)

(assert (=> b!43035 m!36949))

(assert (=> b!43035 m!36947))

(declare-fun m!36951 () Bool)

(assert (=> b!43035 m!36951))

(declare-fun m!36953 () Bool)

(assert (=> b!43033 m!36953))

(declare-fun m!36955 () Bool)

(assert (=> start!6472 m!36955))

(declare-fun m!36957 () Bool)

(assert (=> b!43032 m!36957))

(declare-fun m!36959 () Bool)

(assert (=> b!43032 m!36959))

(declare-fun m!36961 () Bool)

(assert (=> b!43032 m!36961))

(declare-fun m!36963 () Bool)

(assert (=> b!43032 m!36963))

(declare-fun m!36965 () Bool)

(assert (=> b!43032 m!36965))

(declare-fun m!36967 () Bool)

(assert (=> b!43032 m!36967))

(declare-fun m!36969 () Bool)

(assert (=> b!43032 m!36969))

(declare-fun m!36971 () Bool)

(assert (=> b!43032 m!36971))

(push 1)

(assert (not b_next!1501))

(assert tp_is_empty!1891)

(assert (not b!43033))

(assert (not start!6472))

(assert (not b!43035))

(assert b_and!2663)

(assert (not b_lambda!2263))

(assert (not b!43032))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2663)

(assert (not b_next!1501))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2269 () Bool)

(assert (= b_lambda!2263 (or (and start!6472 b_free!1501) b_lambda!2269)))

(push 1)

(assert (not b_next!1501))

(assert (not b_lambda!2269))

(assert tp_is_empty!1891)

(assert (not b!43033))

(assert (not start!6472))

(assert (not b!43035))

(assert b_and!2663)

(assert (not b!43032))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2663)

(assert (not b_next!1501))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7903 () Bool)

(declare-fun lt!18417 () (_ BitVec 32))

(assert (=> d!7903 (and (bvsge lt!18417 #b00000000000000000000000000000000) (bvsle lt!18417 (bvsub (size!1591 lt!18370) #b00000000000000000000000000000000)))))

(declare-fun e!27301 () (_ BitVec 32))

(assert (=> d!7903 (= lt!18417 e!27301)))

(declare-fun c!5471 () Bool)

(assert (=> d!7903 (= c!5471 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7903 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1591 lt!18370)))))

(assert (=> d!7903 (= (arrayCountValidKeys!0 lt!18370 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!18417)))

(declare-fun b!43082 () Bool)

(assert (=> b!43082 (= e!27301 #b00000000000000000000000000000000)))

(declare-fun b!43083 () Bool)

(declare-fun e!27300 () (_ BitVec 32))

(declare-fun call!3400 () (_ BitVec 32))

(assert (=> b!43083 (= e!27300 call!3400)))

(declare-fun b!43084 () Bool)

(assert (=> b!43084 (= e!27300 (bvadd #b00000000000000000000000000000001 call!3400))))

(declare-fun b!43085 () Bool)

(assert (=> b!43085 (= e!27301 e!27300)))

(declare-fun c!5470 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!43085 (= c!5470 (validKeyInArray!0 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(declare-fun bm!3397 () Bool)

(assert (=> bm!3397 (= call!3400 (arrayCountValidKeys!0 lt!18370 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!7903 c!5471) b!43082))

(assert (= (and d!7903 (not c!5471)) b!43085))

(assert (= (and b!43085 c!5470) b!43084))

(assert (= (and b!43085 (not c!5470)) b!43083))

(assert (= (or b!43084 b!43083) bm!3397))

(declare-fun m!37027 () Bool)

(assert (=> b!43085 m!37027))

(assert (=> b!43085 m!37027))

(declare-fun m!37031 () Bool)

(assert (=> b!43085 m!37031))

(declare-fun m!37035 () Bool)

(assert (=> bm!3397 m!37035))

(assert (=> b!43032 d!7903))

(declare-fun d!7911 () Bool)

(assert (=> d!7911 (arrayNoDuplicates!0 lt!18370 #b00000000000000000000000000000000 Nil!1210)))

(declare-fun lt!18421 () Unit!1199)

(declare-fun choose!111 (array!2925 (_ BitVec 32) (_ BitVec 32) List!1213) Unit!1199)

(assert (=> d!7911 (= lt!18421 (choose!111 lt!18370 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1210))))

(assert (=> d!7911 (= (size!1591 lt!18370) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7911 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!18370 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1210) lt!18421)))

(declare-fun bs!1930 () Bool)

(assert (= bs!1930 d!7911))

(assert (=> bs!1930 m!36965))

(declare-fun m!37037 () Bool)

(assert (=> bs!1930 m!37037))

(assert (=> b!43032 d!7911))

(declare-fun b!43124 () Bool)

(declare-fun e!27332 () Bool)

(declare-fun call!3407 () Bool)

(assert (=> b!43124 (= e!27332 call!3407)))

(declare-fun b!43125 () Bool)

(declare-fun e!27330 () Bool)

(declare-fun e!27333 () Bool)

(assert (=> b!43125 (= e!27330 e!27333)))

(declare-fun res!25605 () Bool)

(assert (=> b!43125 (=> (not res!25605) (not e!27333))))

(declare-fun e!27331 () Bool)

(assert (=> b!43125 (= res!25605 (not e!27331))))

(declare-fun res!25606 () Bool)

(assert (=> b!43125 (=> (not res!25606) (not e!27331))))

(assert (=> b!43125 (= res!25606 (validKeyInArray!0 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(declare-fun d!7913 () Bool)

(declare-fun res!25604 () Bool)

(assert (=> d!7913 (=> res!25604 e!27330)))

(assert (=> d!7913 (= res!25604 (bvsge #b00000000000000000000000000000000 (size!1591 lt!18370)))))

(assert (=> d!7913 (= (arrayNoDuplicates!0 lt!18370 #b00000000000000000000000000000000 Nil!1210) e!27330)))

(declare-fun b!43126 () Bool)

(assert (=> b!43126 (= e!27332 call!3407)))

(declare-fun b!43127 () Bool)

(assert (=> b!43127 (= e!27333 e!27332)))

(declare-fun c!5482 () Bool)

(assert (=> b!43127 (= c!5482 (validKeyInArray!0 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(declare-fun b!43128 () Bool)

(declare-fun contains!568 (List!1213 (_ BitVec 64)) Bool)

(assert (=> b!43128 (= e!27331 (contains!568 Nil!1210 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(declare-fun bm!3404 () Bool)

(assert (=> bm!3404 (= call!3407 (arrayNoDuplicates!0 lt!18370 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5482 (Cons!1209 (select (arr!1406 lt!18370) #b00000000000000000000000000000000) Nil!1210) Nil!1210)))))

(assert (= (and d!7913 (not res!25604)) b!43125))

(assert (= (and b!43125 res!25606) b!43128))

(assert (= (and b!43125 res!25605) b!43127))

(assert (= (and b!43127 c!5482) b!43126))

(assert (= (and b!43127 (not c!5482)) b!43124))

(assert (= (or b!43126 b!43124) bm!3404))

(assert (=> b!43125 m!37027))

(assert (=> b!43125 m!37027))

(assert (=> b!43125 m!37031))

(assert (=> b!43127 m!37027))

(assert (=> b!43127 m!37027))

(assert (=> b!43127 m!37031))

(assert (=> b!43128 m!37027))

(assert (=> b!43128 m!37027))

(declare-fun m!37051 () Bool)

(assert (=> b!43128 m!37051))

(assert (=> bm!3404 m!37027))

(declare-fun m!37053 () Bool)

(assert (=> bm!3404 m!37053))

(assert (=> b!43032 d!7913))

(declare-fun d!7919 () Bool)

(assert (=> d!7919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18370 mask!853)))

(declare-fun lt!18441 () Unit!1199)

(declare-fun choose!34 (array!2925 (_ BitVec 32) (_ BitVec 32)) Unit!1199)

(assert (=> d!7919 (= lt!18441 (choose!34 lt!18370 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7919 (validMask!0 mask!853)))

(assert (=> d!7919 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18370 mask!853 #b00000000000000000000000000000000) lt!18441)))

(declare-fun bs!1932 () Bool)

(assert (= bs!1932 d!7919))

(assert (=> bs!1932 m!36961))

(declare-fun m!37057 () Bool)

(assert (=> bs!1932 m!37057))

(assert (=> bs!1932 m!36955))

(assert (=> b!43032 d!7919))

(declare-fun bm!3407 () Bool)

(declare-fun call!3410 () Bool)

(assert (=> bm!3407 (= call!3410 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!18370 mask!853))))

(declare-fun b!43146 () Bool)

(declare-fun e!27348 () Bool)

(declare-fun e!27346 () Bool)

(assert (=> b!43146 (= e!27348 e!27346)))

(declare-fun c!5487 () Bool)

(assert (=> b!43146 (= c!5487 (validKeyInArray!0 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(declare-fun b!43147 () Bool)

(assert (=> b!43147 (= e!27346 call!3410)))

(declare-fun b!43148 () Bool)

(declare-fun e!27347 () Bool)

(assert (=> b!43148 (= e!27346 e!27347)))

(declare-fun lt!18460 () (_ BitVec 64))

(assert (=> b!43148 (= lt!18460 (select (arr!1406 lt!18370) #b00000000000000000000000000000000))))

(declare-fun lt!18459 () Unit!1199)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2925 (_ BitVec 64) (_ BitVec 32)) Unit!1199)

(assert (=> b!43148 (= lt!18459 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!18370 lt!18460 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!43148 (arrayContainsKey!0 lt!18370 lt!18460 #b00000000000000000000000000000000)))

(declare-fun lt!18458 () Unit!1199)

(assert (=> b!43148 (= lt!18458 lt!18459)))

(declare-fun res!25616 () Bool)

(declare-datatypes ((SeekEntryResult!207 0))(
  ( (MissingZero!207 (index!2950 (_ BitVec 32))) (Found!207 (index!2951 (_ BitVec 32))) (Intermediate!207 (undefined!1019 Bool) (index!2952 (_ BitVec 32)) (x!8296 (_ BitVec 32))) (Undefined!207) (MissingVacant!207 (index!2953 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2925 (_ BitVec 32)) SeekEntryResult!207)

(assert (=> b!43148 (= res!25616 (= (seekEntryOrOpen!0 (select (arr!1406 lt!18370) #b00000000000000000000000000000000) lt!18370 mask!853) (Found!207 #b00000000000000000000000000000000)))))

(assert (=> b!43148 (=> (not res!25616) (not e!27347))))

(declare-fun d!7923 () Bool)

(declare-fun res!25615 () Bool)

(assert (=> d!7923 (=> res!25615 e!27348)))

(assert (=> d!7923 (= res!25615 (bvsge #b00000000000000000000000000000000 (size!1591 lt!18370)))))

(assert (=> d!7923 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18370 mask!853) e!27348)))

(declare-fun b!43145 () Bool)

(assert (=> b!43145 (= e!27347 call!3410)))

(assert (= (and d!7923 (not res!25615)) b!43146))

(assert (= (and b!43146 c!5487) b!43148))

(assert (= (and b!43146 (not c!5487)) b!43147))

(assert (= (and b!43148 res!25616) b!43145))

(assert (= (or b!43145 b!43147) bm!3407))

(declare-fun m!37063 () Bool)

(assert (=> bm!3407 m!37063))

(assert (=> b!43146 m!37027))

(assert (=> b!43146 m!37027))

(assert (=> b!43146 m!37031))

(assert (=> b!43148 m!37027))

(declare-fun m!37065 () Bool)

(assert (=> b!43148 m!37065))

(declare-fun m!37067 () Bool)

(assert (=> b!43148 m!37067))

(assert (=> b!43148 m!37027))

(declare-fun m!37069 () Bool)

(assert (=> b!43148 m!37069))

(assert (=> b!43032 d!7923))

(declare-fun d!7929 () Bool)

(assert (=> d!7929 (= (arrayCountValidKeys!0 lt!18370 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18466 () Unit!1199)

(declare-fun choose!59 (array!2925 (_ BitVec 32) (_ BitVec 32)) Unit!1199)

(assert (=> d!7929 (= lt!18466 (choose!59 lt!18370 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7929 (bvslt (size!1591 lt!18370) #b01111111111111111111111111111111)))

(assert (=> d!7929 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18370 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!18466)))

(declare-fun bs!1935 () Bool)

(assert (= bs!1935 d!7929))

(assert (=> bs!1935 m!36957))

(declare-fun m!37071 () Bool)

(assert (=> bs!1935 m!37071))

(assert (=> b!43032 d!7929))

(declare-fun d!7931 () Bool)

(assert (=> d!7931 (= (map!835 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (getCurrentListMap!350 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (_values!1864 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (mask!5430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (zeroValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1881 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))))))

(declare-fun bs!1936 () Bool)

(assert (= bs!1936 d!7931))

(declare-fun m!37081 () Bool)

(assert (=> bs!1936 m!37081))

(assert (=> b!43032 d!7931))

(declare-fun d!7935 () Bool)

(assert (=> d!7935 (= (isEmpty!280 (toList!619 lt!18364)) (is-Nil!1209 (toList!619 lt!18364)))))

(assert (=> b!43033 d!7935))

(declare-fun d!7939 () Bool)

(assert (=> d!7939 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6472 d!7939))

(declare-fun d!7943 () Bool)

(declare-fun e!27360 () Bool)

(assert (=> d!7943 e!27360))

(declare-fun res!25623 () Bool)

(assert (=> d!7943 (=> res!25623 e!27360)))

(declare-fun lt!18483 () Bool)

(assert (=> d!7943 (= res!25623 (not lt!18483))))

(declare-fun lt!18485 () Bool)

(assert (=> d!7943 (= lt!18483 lt!18485)))

(declare-fun lt!18484 () Unit!1199)

(declare-fun e!27361 () Unit!1199)

(assert (=> d!7943 (= lt!18484 e!27361)))

(declare-fun c!5493 () Bool)

(assert (=> d!7943 (= c!5493 lt!18485)))

(declare-fun containsKey!72 (List!1212 (_ BitVec 64)) Bool)

(assert (=> d!7943 (= lt!18485 (containsKey!72 (toList!619 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470)) (_1!823 (head!887 (toList!619 lt!18364)))))))

(assert (=> d!7943 (= (contains!564 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470) (_1!823 (head!887 (toList!619 lt!18364)))) lt!18483)))

(declare-fun b!43165 () Bool)

(declare-fun lt!18486 () Unit!1199)

(assert (=> b!43165 (= e!27361 lt!18486)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!60 (List!1212 (_ BitVec 64)) Unit!1199)

(assert (=> b!43165 (= lt!18486 (lemmaContainsKeyImpliesGetValueByKeyDefined!60 (toList!619 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470)) (_1!823 (head!887 (toList!619 lt!18364)))))))

(declare-datatypes ((Option!110 0))(
  ( (Some!109 (v!2077 V!2309)) (None!108) )
))
(declare-fun isDefined!61 (Option!110) Bool)

(declare-fun getValueByKey!104 (List!1212 (_ BitVec 64)) Option!110)

(assert (=> b!43165 (isDefined!61 (getValueByKey!104 (toList!619 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470)) (_1!823 (head!887 (toList!619 lt!18364)))))))

(declare-fun b!43166 () Bool)

(declare-fun Unit!1207 () Unit!1199)

(assert (=> b!43166 (= e!27361 Unit!1207)))

(declare-fun b!43167 () Bool)

(assert (=> b!43167 (= e!27360 (isDefined!61 (getValueByKey!104 (toList!619 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470)) (_1!823 (head!887 (toList!619 lt!18364))))))))

(assert (= (and d!7943 c!5493) b!43165))

(assert (= (and d!7943 (not c!5493)) b!43166))

(assert (= (and d!7943 (not res!25623)) b!43167))

(declare-fun m!37085 () Bool)

(assert (=> d!7943 m!37085))

(declare-fun m!37087 () Bool)

(assert (=> b!43165 m!37087))

(declare-fun m!37089 () Bool)

(assert (=> b!43165 m!37089))

(assert (=> b!43165 m!37089))

(declare-fun m!37093 () Bool)

(assert (=> b!43165 m!37093))

(assert (=> b!43167 m!37089))

(assert (=> b!43167 m!37089))

(assert (=> b!43167 m!37093))

(assert (=> b!43035 d!7943))

(declare-fun bm!3469 () Bool)

(declare-fun call!3473 () ListLongMap!1207)

(declare-fun call!3477 () ListLongMap!1207)

(assert (=> bm!3469 (= call!3473 call!3477)))

(declare-fun b!43357 () Bool)

(declare-fun e!27490 () Bool)

(declare-fun e!27487 () Bool)

(assert (=> b!43357 (= e!27490 e!27487)))

(declare-fun res!25706 () Bool)

(assert (=> b!43357 (=> (not res!25706) (not e!27487))))

(declare-fun lt!18682 () ListLongMap!1207)

(assert (=> b!43357 (= res!25706 (contains!564 lt!18682 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(assert (=> b!43357 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1591 lt!18370)))))

(declare-fun b!43358 () Bool)

(declare-fun e!27488 () Bool)

(declare-fun e!27492 () Bool)

(assert (=> b!43358 (= e!27488 e!27492)))

(declare-fun res!25703 () Bool)

(declare-fun call!3476 () Bool)

(assert (=> b!43358 (= res!25703 call!3476)))

(assert (=> b!43358 (=> (not res!25703) (not e!27492))))

(declare-fun b!43359 () Bool)

(declare-fun e!27491 () Bool)

(declare-fun apply!59 (ListLongMap!1207 (_ BitVec 64)) V!2309)

(assert (=> b!43359 (= e!27491 (= (apply!59 lt!18682 #b0000000000000000000000000000000000000000000000000000000000000000) lt!18368))))

(declare-fun b!43360 () Bool)

(declare-fun e!27494 () ListLongMap!1207)

(declare-fun call!3478 () ListLongMap!1207)

(assert (=> b!43360 (= e!27494 call!3478)))

(declare-fun b!43361 () Bool)

(declare-fun e!27484 () Bool)

(assert (=> b!43361 (= e!27484 (validKeyInArray!0 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(declare-fun b!43362 () Bool)

(declare-fun e!27486 () Bool)

(declare-fun call!3474 () Bool)

(assert (=> b!43362 (= e!27486 (not call!3474))))

(declare-fun bm!3471 () Bool)

(declare-fun call!3475 () ListLongMap!1207)

(assert (=> bm!3471 (= call!3477 call!3475)))

(declare-fun b!43363 () Bool)

(declare-fun e!27482 () Unit!1199)

(declare-fun lt!18676 () Unit!1199)

(assert (=> b!43363 (= e!27482 lt!18676)))

(declare-fun lt!18668 () ListLongMap!1207)

(declare-fun getCurrentListMapNoExtraKeys!37 (array!2925 array!2923 (_ BitVec 32) (_ BitVec 32) V!2309 V!2309 (_ BitVec 32) Int) ListLongMap!1207)

(assert (=> b!43363 (= lt!18668 (getCurrentListMapNoExtraKeys!37 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun lt!18680 () (_ BitVec 64))

(assert (=> b!43363 (= lt!18680 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18679 () (_ BitVec 64))

(assert (=> b!43363 (= lt!18679 (select (arr!1406 lt!18370) #b00000000000000000000000000000000))))

(declare-fun lt!18670 () Unit!1199)

(declare-fun addStillContains!35 (ListLongMap!1207 (_ BitVec 64) V!2309 (_ BitVec 64)) Unit!1199)

(assert (=> b!43363 (= lt!18670 (addStillContains!35 lt!18668 lt!18680 lt!18368 lt!18679))))

(declare-fun +!68 (ListLongMap!1207 tuple2!1626) ListLongMap!1207)

(assert (=> b!43363 (contains!564 (+!68 lt!18668 (tuple2!1627 lt!18680 lt!18368)) lt!18679)))

(declare-fun lt!18678 () Unit!1199)

(assert (=> b!43363 (= lt!18678 lt!18670)))

(declare-fun lt!18681 () ListLongMap!1207)

(assert (=> b!43363 (= lt!18681 (getCurrentListMapNoExtraKeys!37 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun lt!18673 () (_ BitVec 64))

(assert (=> b!43363 (= lt!18673 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18669 () (_ BitVec 64))

(assert (=> b!43363 (= lt!18669 (select (arr!1406 lt!18370) #b00000000000000000000000000000000))))

(declare-fun lt!18685 () Unit!1199)

(declare-fun addApplyDifferent!35 (ListLongMap!1207 (_ BitVec 64) V!2309 (_ BitVec 64)) Unit!1199)

(assert (=> b!43363 (= lt!18685 (addApplyDifferent!35 lt!18681 lt!18673 lt!18368 lt!18669))))

(assert (=> b!43363 (= (apply!59 (+!68 lt!18681 (tuple2!1627 lt!18673 lt!18368)) lt!18669) (apply!59 lt!18681 lt!18669))))

(declare-fun lt!18671 () Unit!1199)

(assert (=> b!43363 (= lt!18671 lt!18685)))

(declare-fun lt!18683 () ListLongMap!1207)

(assert (=> b!43363 (= lt!18683 (getCurrentListMapNoExtraKeys!37 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun lt!18686 () (_ BitVec 64))

(assert (=> b!43363 (= lt!18686 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18677 () (_ BitVec 64))

(assert (=> b!43363 (= lt!18677 (select (arr!1406 lt!18370) #b00000000000000000000000000000000))))

(declare-fun lt!18667 () Unit!1199)

(assert (=> b!43363 (= lt!18667 (addApplyDifferent!35 lt!18683 lt!18686 lt!18368 lt!18677))))

(assert (=> b!43363 (= (apply!59 (+!68 lt!18683 (tuple2!1627 lt!18686 lt!18368)) lt!18677) (apply!59 lt!18683 lt!18677))))

(declare-fun lt!18666 () Unit!1199)

(assert (=> b!43363 (= lt!18666 lt!18667)))

(declare-fun lt!18684 () ListLongMap!1207)

(assert (=> b!43363 (= lt!18684 (getCurrentListMapNoExtraKeys!37 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun lt!18675 () (_ BitVec 64))

(assert (=> b!43363 (= lt!18675 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18674 () (_ BitVec 64))

(assert (=> b!43363 (= lt!18674 (select (arr!1406 lt!18370) #b00000000000000000000000000000000))))

(assert (=> b!43363 (= lt!18676 (addApplyDifferent!35 lt!18684 lt!18675 lt!18368 lt!18674))))

(assert (=> b!43363 (= (apply!59 (+!68 lt!18684 (tuple2!1627 lt!18675 lt!18368)) lt!18674) (apply!59 lt!18684 lt!18674))))

(declare-fun b!43364 () Bool)

(declare-fun e!27483 () Bool)

(assert (=> b!43364 (= e!27483 (validKeyInArray!0 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(declare-fun bm!3472 () Bool)

(declare-fun call!3472 () ListLongMap!1207)

(assert (=> bm!3472 (= call!3478 call!3472)))

(declare-fun b!43365 () Bool)

(assert (=> b!43365 (= e!27492 (= (apply!59 lt!18682 #b1000000000000000000000000000000000000000000000000000000000000000) lt!18368))))

(declare-fun bm!3473 () Bool)

(declare-fun c!5552 () Bool)

(declare-fun c!5549 () Bool)

(assert (=> bm!3473 (= call!3472 (+!68 (ite c!5549 call!3475 (ite c!5552 call!3477 call!3473)) (ite (or c!5549 c!5552) (tuple2!1627 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18368) (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18368))))))

(declare-fun bm!3474 () Bool)

(assert (=> bm!3474 (= call!3475 (getCurrentListMapNoExtraKeys!37 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun b!43366 () Bool)

(assert (=> b!43366 (= e!27488 (not call!3476))))

(declare-fun b!43367 () Bool)

(declare-fun e!27493 () ListLongMap!1207)

(assert (=> b!43367 (= e!27493 e!27494)))

(assert (=> b!43367 (= c!5552 (and (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!3470 () Bool)

(assert (=> bm!3470 (= call!3476 (contains!564 lt!18682 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!7947 () Bool)

(declare-fun e!27489 () Bool)

(assert (=> d!7947 e!27489))

(declare-fun res!25711 () Bool)

(assert (=> d!7947 (=> (not res!25711) (not e!27489))))

(assert (=> d!7947 (= res!25711 (or (bvsge #b00000000000000000000000000000000 (size!1591 lt!18370)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1591 lt!18370)))))))

(declare-fun lt!18672 () ListLongMap!1207)

(assert (=> d!7947 (= lt!18682 lt!18672)))

(declare-fun lt!18665 () Unit!1199)

(assert (=> d!7947 (= lt!18665 e!27482)))

(declare-fun c!5551 () Bool)

(assert (=> d!7947 (= c!5551 e!27484)))

(declare-fun res!25710 () Bool)

(assert (=> d!7947 (=> (not res!25710) (not e!27484))))

(assert (=> d!7947 (= res!25710 (bvslt #b00000000000000000000000000000000 (size!1591 lt!18370)))))

(assert (=> d!7947 (= lt!18672 e!27493)))

(assert (=> d!7947 (= c!5549 (and (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!7947 (validMask!0 mask!853)))

(assert (=> d!7947 (= (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470) lt!18682)))

(declare-fun b!43368 () Bool)

(assert (=> b!43368 (= e!27489 e!27488)))

(declare-fun c!5553 () Bool)

(assert (=> b!43368 (= c!5553 (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!43369 () Bool)

(assert (=> b!43369 (= e!27493 (+!68 call!3472 (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18368)))))

(declare-fun b!43370 () Bool)

(declare-fun res!25708 () Bool)

(assert (=> b!43370 (=> (not res!25708) (not e!27489))))

(assert (=> b!43370 (= res!25708 e!27486)))

(declare-fun c!5550 () Bool)

(assert (=> b!43370 (= c!5550 (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!43371 () Bool)

(declare-fun e!27485 () ListLongMap!1207)

(assert (=> b!43371 (= e!27485 call!3478)))

(declare-fun b!43372 () Bool)

(declare-fun get!790 (ValueCell!698 V!2309) V!2309)

(assert (=> b!43372 (= e!27487 (= (apply!59 lt!18682 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)) (get!790 (select (arr!1405 lt!18366) #b00000000000000000000000000000000) (dynLambda!259 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!43372 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1590 lt!18366)))))

(assert (=> b!43372 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1591 lt!18370)))))

(declare-fun bm!3475 () Bool)

(assert (=> bm!3475 (= call!3474 (contains!564 lt!18682 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!43373 () Bool)

(declare-fun Unit!1209 () Unit!1199)

(assert (=> b!43373 (= e!27482 Unit!1209)))

(declare-fun b!43374 () Bool)

(assert (=> b!43374 (= e!27486 e!27491)))

(declare-fun res!25705 () Bool)

(assert (=> b!43374 (= res!25705 call!3474)))

(assert (=> b!43374 (=> (not res!25705) (not e!27491))))

(declare-fun b!43375 () Bool)

(declare-fun res!25707 () Bool)

(assert (=> b!43375 (=> (not res!25707) (not e!27489))))

(assert (=> b!43375 (= res!25707 e!27490)))

(declare-fun res!25709 () Bool)

(assert (=> b!43375 (=> res!25709 e!27490)))

(assert (=> b!43375 (= res!25709 (not e!27483))))

(declare-fun res!25704 () Bool)

(assert (=> b!43375 (=> (not res!25704) (not e!27483))))

(assert (=> b!43375 (= res!25704 (bvslt #b00000000000000000000000000000000 (size!1591 lt!18370)))))

(declare-fun b!43376 () Bool)

(assert (=> b!43376 (= e!27485 call!3473)))

(declare-fun b!43377 () Bool)

(declare-fun c!5554 () Bool)

(assert (=> b!43377 (= c!5554 (and (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!43377 (= e!27494 e!27485)))

(assert (= (and d!7947 c!5549) b!43369))

(assert (= (and d!7947 (not c!5549)) b!43367))

(assert (= (and b!43367 c!5552) b!43360))

(assert (= (and b!43367 (not c!5552)) b!43377))

(assert (= (and b!43377 c!5554) b!43371))

(assert (= (and b!43377 (not c!5554)) b!43376))

(assert (= (or b!43371 b!43376) bm!3469))

(assert (= (or b!43360 bm!3469) bm!3471))

(assert (= (or b!43360 b!43371) bm!3472))

(assert (= (or b!43369 bm!3471) bm!3474))

(assert (= (or b!43369 bm!3472) bm!3473))

(assert (= (and d!7947 res!25710) b!43361))

(assert (= (and d!7947 c!5551) b!43363))

(assert (= (and d!7947 (not c!5551)) b!43373))

(assert (= (and d!7947 res!25711) b!43375))

(assert (= (and b!43375 res!25704) b!43364))

(assert (= (and b!43375 (not res!25709)) b!43357))

(assert (= (and b!43357 res!25706) b!43372))

(assert (= (and b!43375 res!25707) b!43370))

(assert (= (and b!43370 c!5550) b!43374))

(assert (= (and b!43370 (not c!5550)) b!43362))

(assert (= (and b!43374 res!25705) b!43359))

(assert (= (or b!43374 b!43362) bm!3475))

(assert (= (and b!43370 res!25708) b!43368))

(assert (= (and b!43368 c!5553) b!43358))

(assert (= (and b!43368 (not c!5553)) b!43366))

(assert (= (and b!43358 res!25703) b!43365))

(assert (= (or b!43358 b!43366) bm!3470))

(declare-fun b_lambda!2277 () Bool)

(assert (=> (not b_lambda!2277) (not b!43372)))

(assert (=> b!43372 t!4216))

(declare-fun b_and!2675 () Bool)

(assert (= b_and!2663 (and (=> t!4216 result!1725) b_and!2675)))

(declare-fun m!37179 () Bool)

(assert (=> bm!3470 m!37179))

(assert (=> b!43357 m!37027))

(assert (=> b!43357 m!37027))

(declare-fun m!37181 () Bool)

(assert (=> b!43357 m!37181))

(declare-fun m!37183 () Bool)

(assert (=> bm!3474 m!37183))

(assert (=> b!43364 m!37027))

(assert (=> b!43364 m!37027))

(assert (=> b!43364 m!37031))

(assert (=> b!43363 m!37183))

(declare-fun m!37187 () Bool)

(assert (=> b!43363 m!37187))

(declare-fun m!37189 () Bool)

(assert (=> b!43363 m!37189))

(declare-fun m!37192 () Bool)

(assert (=> b!43363 m!37192))

(declare-fun m!37195 () Bool)

(assert (=> b!43363 m!37195))

(declare-fun m!37199 () Bool)

(assert (=> b!43363 m!37199))

(assert (=> b!43363 m!37189))

(declare-fun m!37203 () Bool)

(assert (=> b!43363 m!37203))

(assert (=> b!43363 m!37195))

(declare-fun m!37205 () Bool)

(assert (=> b!43363 m!37205))

(assert (=> b!43363 m!37027))

(declare-fun m!37207 () Bool)

(assert (=> b!43363 m!37207))

(declare-fun m!37211 () Bool)

(assert (=> b!43363 m!37211))

(declare-fun m!37213 () Bool)

(assert (=> b!43363 m!37213))

(declare-fun m!37217 () Bool)

(assert (=> b!43363 m!37217))

(declare-fun m!37219 () Bool)

(assert (=> b!43363 m!37219))

(declare-fun m!37221 () Bool)

(assert (=> b!43363 m!37221))

(declare-fun m!37223 () Bool)

(assert (=> b!43363 m!37223))

(assert (=> b!43363 m!37187))

(declare-fun m!37229 () Bool)

(assert (=> b!43363 m!37229))

(assert (=> b!43363 m!37217))

(declare-fun m!37233 () Bool)

(assert (=> bm!3475 m!37233))

(declare-fun m!37235 () Bool)

(assert (=> b!43365 m!37235))

(assert (=> b!43361 m!37027))

(assert (=> b!43361 m!37027))

(assert (=> b!43361 m!37031))

(declare-fun m!37241 () Bool)

(assert (=> bm!3473 m!37241))

(declare-fun m!37245 () Bool)

(assert (=> b!43359 m!37245))

(assert (=> b!43372 m!36969))

(declare-fun m!37251 () Bool)

(assert (=> b!43372 m!37251))

(assert (=> b!43372 m!36969))

(declare-fun m!37255 () Bool)

(assert (=> b!43372 m!37255))

(assert (=> b!43372 m!37027))

(declare-fun m!37261 () Bool)

(assert (=> b!43372 m!37261))

(assert (=> b!43372 m!37251))

(assert (=> b!43372 m!37027))

(declare-fun m!37267 () Bool)

(assert (=> b!43369 m!37267))

(assert (=> d!7947 m!36955))

(assert (=> b!43035 d!7947))

(declare-fun d!7971 () Bool)

(assert (=> d!7971 (= (head!887 (toList!619 lt!18364)) (h!1785 (toList!619 lt!18364)))))

(assert (=> b!43035 d!7971))

(declare-fun b_lambda!2281 () Bool)

(assert (= b_lambda!2277 (or (and start!6472 b_free!1501) b_lambda!2281)))

(push 1)

(assert (not b!43363))

(assert (not b!43125))

(assert (not b!43165))

(assert (not b!43372))

(assert (not d!7947))

(assert (not bm!3474))

(assert (not b!43148))

(assert (not b!43365))

(assert (not b!43146))

(assert b_and!2675)

(assert (not bm!3475))

(assert (not d!7929))

(assert (not b!43364))

(assert (not b!43359))

(assert (not b!43085))

(assert (not b!43128))

(assert (not b_next!1501))

(assert (not b_lambda!2269))

(assert (not bm!3404))

(assert (not b!43127))

(assert tp_is_empty!1891)

(assert (not b!43369))

(assert (not d!7911))

(assert (not b!43167))

(assert (not d!7943))

(assert (not bm!3470))

(assert (not bm!3473))

(assert (not b!43357))

(assert (not d!7931))

(assert (not b!43361))

(assert (not b_lambda!2281))

(assert (not d!7919))

(assert (not bm!3397))

(assert (not bm!3407))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2675)

(assert (not b_next!1501))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!43514 () Bool)

(declare-fun e!27579 () Bool)

(declare-fun lt!18783 () ListLongMap!1207)

(declare-fun isEmpty!283 (ListLongMap!1207) Bool)

(assert (=> b!43514 (= e!27579 (isEmpty!283 lt!18783))))

(declare-fun b!43515 () Bool)

(declare-fun e!27578 () Bool)

(assert (=> b!43515 (= e!27578 (validKeyInArray!0 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(assert (=> b!43515 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!43516 () Bool)

(declare-fun e!27582 () Bool)

(assert (=> b!43516 (= e!27582 e!27579)))

(declare-fun c!5604 () Bool)

(assert (=> b!43516 (= c!5604 (bvslt #b00000000000000000000000000000000 (size!1591 lt!18370)))))

(declare-fun b!43517 () Bool)

(declare-fun e!27583 () Bool)

(assert (=> b!43517 (= e!27582 e!27583)))

(assert (=> b!43517 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1591 lt!18370)))))

(declare-fun res!25760 () Bool)

(assert (=> b!43517 (= res!25760 (contains!564 lt!18783 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(assert (=> b!43517 (=> (not res!25760) (not e!27583))))

(declare-fun b!43518 () Bool)

(declare-fun e!27584 () ListLongMap!1207)

(declare-fun e!27580 () ListLongMap!1207)

(assert (=> b!43518 (= e!27584 e!27580)))

(declare-fun c!5603 () Bool)

(assert (=> b!43518 (= c!5603 (validKeyInArray!0 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(declare-fun b!43520 () Bool)

(declare-fun call!3492 () ListLongMap!1207)

(assert (=> b!43520 (= e!27580 call!3492)))

(declare-fun b!43521 () Bool)

(declare-fun res!25761 () Bool)

(declare-fun e!27581 () Bool)

(assert (=> b!43521 (=> (not res!25761) (not e!27581))))

(assert (=> b!43521 (= res!25761 (not (contains!564 lt!18783 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!43522 () Bool)

(assert (=> b!43522 (= e!27579 (= lt!18783 (getCurrentListMapNoExtraKeys!37 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!470)))))

(declare-fun b!43523 () Bool)

(assert (=> b!43523 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1591 lt!18370)))))

(assert (=> b!43523 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1590 lt!18366)))))

(assert (=> b!43523 (= e!27583 (= (apply!59 lt!18783 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)) (get!790 (select (arr!1405 lt!18366) #b00000000000000000000000000000000) (dynLambda!259 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!43524 () Bool)

(assert (=> b!43524 (= e!27581 e!27582)))

(declare-fun c!5602 () Bool)

(assert (=> b!43524 (= c!5602 e!27578)))

(declare-fun res!25762 () Bool)

(assert (=> b!43524 (=> (not res!25762) (not e!27578))))

(assert (=> b!43524 (= res!25762 (bvslt #b00000000000000000000000000000000 (size!1591 lt!18370)))))

(declare-fun b!43519 () Bool)

(assert (=> b!43519 (= e!27584 (ListLongMap!1208 Nil!1209))))

(declare-fun d!7997 () Bool)

(assert (=> d!7997 e!27581))

(declare-fun res!25759 () Bool)

(assert (=> d!7997 (=> (not res!25759) (not e!27581))))

(assert (=> d!7997 (= res!25759 (not (contains!564 lt!18783 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!7997 (= lt!18783 e!27584)))

(declare-fun c!5601 () Bool)

(assert (=> d!7997 (= c!5601 (bvsge #b00000000000000000000000000000000 (size!1591 lt!18370)))))

(assert (=> d!7997 (validMask!0 mask!853)))

(assert (=> d!7997 (= (getCurrentListMapNoExtraKeys!37 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470) lt!18783)))

(declare-fun b!43525 () Bool)

(declare-fun lt!18781 () Unit!1199)

(declare-fun lt!18784 () Unit!1199)

(assert (=> b!43525 (= lt!18781 lt!18784)))

(declare-fun lt!18780 () (_ BitVec 64))

(declare-fun lt!18782 () ListLongMap!1207)

(declare-fun lt!18785 () V!2309)

(declare-fun lt!18779 () (_ BitVec 64))

(assert (=> b!43525 (not (contains!564 (+!68 lt!18782 (tuple2!1627 lt!18779 lt!18785)) lt!18780))))

(declare-fun addStillNotContains!11 (ListLongMap!1207 (_ BitVec 64) V!2309 (_ BitVec 64)) Unit!1199)

(assert (=> b!43525 (= lt!18784 (addStillNotContains!11 lt!18782 lt!18779 lt!18785 lt!18780))))

(assert (=> b!43525 (= lt!18780 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!43525 (= lt!18785 (get!790 (select (arr!1405 lt!18366) #b00000000000000000000000000000000) (dynLambda!259 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!43525 (= lt!18779 (select (arr!1406 lt!18370) #b00000000000000000000000000000000))))

(assert (=> b!43525 (= lt!18782 call!3492)))

(assert (=> b!43525 (= e!27580 (+!68 call!3492 (tuple2!1627 (select (arr!1406 lt!18370) #b00000000000000000000000000000000) (get!790 (select (arr!1405 lt!18366) #b00000000000000000000000000000000) (dynLambda!259 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!3489 () Bool)

(assert (=> bm!3489 (= call!3492 (getCurrentListMapNoExtraKeys!37 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!470))))

(assert (= (and d!7997 c!5601) b!43519))

(assert (= (and d!7997 (not c!5601)) b!43518))

(assert (= (and b!43518 c!5603) b!43525))

(assert (= (and b!43518 (not c!5603)) b!43520))

(assert (= (or b!43525 b!43520) bm!3489))

(assert (= (and d!7997 res!25759) b!43521))

(assert (= (and b!43521 res!25761) b!43524))

(assert (= (and b!43524 res!25762) b!43515))

(assert (= (and b!43524 c!5602) b!43517))

(assert (= (and b!43524 (not c!5602)) b!43516))

(assert (= (and b!43517 res!25760) b!43523))

(assert (= (and b!43516 c!5604) b!43522))

(assert (= (and b!43516 (not c!5604)) b!43514))

(declare-fun b_lambda!2287 () Bool)

(assert (=> (not b_lambda!2287) (not b!43523)))

(assert (=> b!43523 t!4216))

(declare-fun b_and!2679 () Bool)

(assert (= b_and!2675 (and (=> t!4216 result!1725) b_and!2679)))

(declare-fun b_lambda!2289 () Bool)

(assert (=> (not b_lambda!2289) (not b!43525)))

(assert (=> b!43525 t!4216))

(declare-fun b_and!2681 () Bool)

(assert (= b_and!2679 (and (=> t!4216 result!1725) b_and!2681)))

(assert (=> b!43518 m!37027))

(assert (=> b!43518 m!37027))

(assert (=> b!43518 m!37031))

(assert (=> b!43523 m!36969))

(assert (=> b!43523 m!37027))

(declare-fun m!37373 () Bool)

(assert (=> b!43523 m!37373))

(assert (=> b!43523 m!37027))

(assert (=> b!43523 m!37251))

(assert (=> b!43523 m!37251))

(assert (=> b!43523 m!36969))

(assert (=> b!43523 m!37255))

(declare-fun m!37375 () Bool)

(assert (=> b!43514 m!37375))

(declare-fun m!37377 () Bool)

(assert (=> d!7997 m!37377))

(assert (=> d!7997 m!36955))

(declare-fun m!37379 () Bool)

(assert (=> b!43525 m!37379))

(declare-fun m!37381 () Bool)

(assert (=> b!43525 m!37381))

(assert (=> b!43525 m!36969))

(assert (=> b!43525 m!37381))

(declare-fun m!37383 () Bool)

(assert (=> b!43525 m!37383))

(assert (=> b!43525 m!37027))

(assert (=> b!43525 m!37251))

(assert (=> b!43525 m!37251))

(assert (=> b!43525 m!36969))

(assert (=> b!43525 m!37255))

(declare-fun m!37385 () Bool)

(assert (=> b!43525 m!37385))

(assert (=> b!43517 m!37027))

(assert (=> b!43517 m!37027))

(declare-fun m!37387 () Bool)

(assert (=> b!43517 m!37387))

(declare-fun m!37389 () Bool)

(assert (=> b!43522 m!37389))

(assert (=> b!43515 m!37027))

(assert (=> b!43515 m!37027))

(assert (=> b!43515 m!37031))

(assert (=> bm!3489 m!37389))

(declare-fun m!37391 () Bool)

(assert (=> b!43521 m!37391))

(assert (=> bm!3474 d!7997))

(assert (=> d!7929 d!7903))

(declare-fun d!8025 () Bool)

(assert (=> d!8025 (= (arrayCountValidKeys!0 lt!18370 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!8025 true))

(declare-fun _$88!46 () Unit!1199)

(assert (=> d!8025 (= (choose!59 lt!18370 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!46)))

(declare-fun bs!1949 () Bool)

(assert (= bs!1949 d!8025))

(assert (=> bs!1949 m!36957))

(assert (=> d!7929 d!8025))

(declare-fun d!8027 () Bool)

(declare-fun e!27610 () Bool)

(assert (=> d!8027 e!27610))

(declare-fun res!25780 () Bool)

(assert (=> d!8027 (=> (not res!25780) (not e!27610))))

(declare-fun lt!18810 () ListLongMap!1207)

(assert (=> d!8027 (= res!25780 (contains!564 lt!18810 (_1!823 (ite (or c!5549 c!5552) (tuple2!1627 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18368) (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18368)))))))

(declare-fun lt!18807 () List!1212)

(assert (=> d!8027 (= lt!18810 (ListLongMap!1208 lt!18807))))

(declare-fun lt!18808 () Unit!1199)

(declare-fun lt!18809 () Unit!1199)

(assert (=> d!8027 (= lt!18808 lt!18809)))

(assert (=> d!8027 (= (getValueByKey!104 lt!18807 (_1!823 (ite (or c!5549 c!5552) (tuple2!1627 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18368) (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18368)))) (Some!109 (_2!823 (ite (or c!5549 c!5552) (tuple2!1627 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18368) (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18368)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!30 (List!1212 (_ BitVec 64) V!2309) Unit!1199)

(assert (=> d!8027 (= lt!18809 (lemmaContainsTupThenGetReturnValue!30 lt!18807 (_1!823 (ite (or c!5549 c!5552) (tuple2!1627 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18368) (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18368))) (_2!823 (ite (or c!5549 c!5552) (tuple2!1627 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18368) (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18368)))))))

(declare-fun insertStrictlySorted!27 (List!1212 (_ BitVec 64) V!2309) List!1212)

(assert (=> d!8027 (= lt!18807 (insertStrictlySorted!27 (toList!619 (ite c!5549 call!3475 (ite c!5552 call!3477 call!3473))) (_1!823 (ite (or c!5549 c!5552) (tuple2!1627 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18368) (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18368))) (_2!823 (ite (or c!5549 c!5552) (tuple2!1627 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18368) (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18368)))))))

(assert (=> d!8027 (= (+!68 (ite c!5549 call!3475 (ite c!5552 call!3477 call!3473)) (ite (or c!5549 c!5552) (tuple2!1627 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18368) (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18368))) lt!18810)))

(declare-fun b!43570 () Bool)

(declare-fun res!25779 () Bool)

(assert (=> b!43570 (=> (not res!25779) (not e!27610))))

(assert (=> b!43570 (= res!25779 (= (getValueByKey!104 (toList!619 lt!18810) (_1!823 (ite (or c!5549 c!5552) (tuple2!1627 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18368) (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18368)))) (Some!109 (_2!823 (ite (or c!5549 c!5552) (tuple2!1627 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18368) (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18368))))))))

(declare-fun b!43571 () Bool)

(declare-fun contains!571 (List!1212 tuple2!1626) Bool)

(assert (=> b!43571 (= e!27610 (contains!571 (toList!619 lt!18810) (ite (or c!5549 c!5552) (tuple2!1627 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18368) (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18368))))))

(assert (= (and d!8027 res!25780) b!43570))

(assert (= (and b!43570 res!25779) b!43571))

(declare-fun m!37413 () Bool)

(assert (=> d!8027 m!37413))

(declare-fun m!37415 () Bool)

(assert (=> d!8027 m!37415))

(declare-fun m!37417 () Bool)

(assert (=> d!8027 m!37417))

(declare-fun m!37419 () Bool)

(assert (=> d!8027 m!37419))

(declare-fun m!37421 () Bool)

(assert (=> b!43570 m!37421))

(declare-fun m!37423 () Bool)

(assert (=> b!43571 m!37423))

(assert (=> bm!3473 d!8027))

(declare-fun d!8031 () Bool)

(declare-fun get!798 (Option!110) V!2309)

(assert (=> d!8031 (= (apply!59 lt!18682 #b1000000000000000000000000000000000000000000000000000000000000000) (get!798 (getValueByKey!104 (toList!619 lt!18682) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1950 () Bool)

(assert (= bs!1950 d!8031))

(declare-fun m!37445 () Bool)

(assert (=> bs!1950 m!37445))

(assert (=> bs!1950 m!37445))

(declare-fun m!37447 () Bool)

(assert (=> bs!1950 m!37447))

(assert (=> b!43365 d!8031))

(declare-fun d!8037 () Bool)

(assert (=> d!8037 (= (validKeyInArray!0 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)) (and (not (= (select (arr!1406 lt!18370) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1406 lt!18370) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!43364 d!8037))

(declare-fun d!8039 () Bool)

(assert (=> d!8039 (= (apply!59 lt!18683 lt!18677) (get!798 (getValueByKey!104 (toList!619 lt!18683) lt!18677)))))

(declare-fun bs!1951 () Bool)

(assert (= bs!1951 d!8039))

(declare-fun m!37449 () Bool)

(assert (=> bs!1951 m!37449))

(assert (=> bs!1951 m!37449))

(declare-fun m!37451 () Bool)

(assert (=> bs!1951 m!37451))

(assert (=> b!43363 d!8039))

(declare-fun d!8041 () Bool)

(assert (=> d!8041 (= (apply!59 (+!68 lt!18684 (tuple2!1627 lt!18675 lt!18368)) lt!18674) (get!798 (getValueByKey!104 (toList!619 (+!68 lt!18684 (tuple2!1627 lt!18675 lt!18368))) lt!18674)))))

(declare-fun bs!1952 () Bool)

(assert (= bs!1952 d!8041))

(declare-fun m!37453 () Bool)

(assert (=> bs!1952 m!37453))

(assert (=> bs!1952 m!37453))

(declare-fun m!37459 () Bool)

(assert (=> bs!1952 m!37459))

(assert (=> b!43363 d!8041))

(declare-fun d!8043 () Bool)

(declare-fun e!27618 () Bool)

(assert (=> d!8043 e!27618))

(declare-fun res!25786 () Bool)

(assert (=> d!8043 (=> (not res!25786) (not e!27618))))

(declare-fun lt!18824 () ListLongMap!1207)

(assert (=> d!8043 (= res!25786 (contains!564 lt!18824 (_1!823 (tuple2!1627 lt!18680 lt!18368))))))

(declare-fun lt!18821 () List!1212)

(assert (=> d!8043 (= lt!18824 (ListLongMap!1208 lt!18821))))

(declare-fun lt!18822 () Unit!1199)

(declare-fun lt!18823 () Unit!1199)

(assert (=> d!8043 (= lt!18822 lt!18823)))

(assert (=> d!8043 (= (getValueByKey!104 lt!18821 (_1!823 (tuple2!1627 lt!18680 lt!18368))) (Some!109 (_2!823 (tuple2!1627 lt!18680 lt!18368))))))

(assert (=> d!8043 (= lt!18823 (lemmaContainsTupThenGetReturnValue!30 lt!18821 (_1!823 (tuple2!1627 lt!18680 lt!18368)) (_2!823 (tuple2!1627 lt!18680 lt!18368))))))

(assert (=> d!8043 (= lt!18821 (insertStrictlySorted!27 (toList!619 lt!18668) (_1!823 (tuple2!1627 lt!18680 lt!18368)) (_2!823 (tuple2!1627 lt!18680 lt!18368))))))

(assert (=> d!8043 (= (+!68 lt!18668 (tuple2!1627 lt!18680 lt!18368)) lt!18824)))

(declare-fun b!43584 () Bool)

(declare-fun res!25785 () Bool)

(assert (=> b!43584 (=> (not res!25785) (not e!27618))))

(assert (=> b!43584 (= res!25785 (= (getValueByKey!104 (toList!619 lt!18824) (_1!823 (tuple2!1627 lt!18680 lt!18368))) (Some!109 (_2!823 (tuple2!1627 lt!18680 lt!18368)))))))

(declare-fun b!43585 () Bool)

(assert (=> b!43585 (= e!27618 (contains!571 (toList!619 lt!18824) (tuple2!1627 lt!18680 lt!18368)))))

(assert (= (and d!8043 res!25786) b!43584))

(assert (= (and b!43584 res!25785) b!43585))

(declare-fun m!37471 () Bool)

(assert (=> d!8043 m!37471))

(declare-fun m!37473 () Bool)

(assert (=> d!8043 m!37473))

(declare-fun m!37475 () Bool)

(assert (=> d!8043 m!37475))

(declare-fun m!37477 () Bool)

(assert (=> d!8043 m!37477))

(declare-fun m!37479 () Bool)

(assert (=> b!43584 m!37479))

(declare-fun m!37481 () Bool)

(assert (=> b!43585 m!37481))

(assert (=> b!43363 d!8043))

(declare-fun d!8047 () Bool)

(assert (=> d!8047 (contains!564 (+!68 lt!18668 (tuple2!1627 lt!18680 lt!18368)) lt!18679)))

(declare-fun lt!18843 () Unit!1199)

(declare-fun choose!260 (ListLongMap!1207 (_ BitVec 64) V!2309 (_ BitVec 64)) Unit!1199)

(assert (=> d!8047 (= lt!18843 (choose!260 lt!18668 lt!18680 lt!18368 lt!18679))))

(assert (=> d!8047 (contains!564 lt!18668 lt!18679)))

(assert (=> d!8047 (= (addStillContains!35 lt!18668 lt!18680 lt!18368 lt!18679) lt!18843)))

(declare-fun bs!1959 () Bool)

(assert (= bs!1959 d!8047))

(assert (=> bs!1959 m!37187))

(assert (=> bs!1959 m!37187))

(assert (=> bs!1959 m!37229))

(declare-fun m!37525 () Bool)

(assert (=> bs!1959 m!37525))

(declare-fun m!37529 () Bool)

(assert (=> bs!1959 m!37529))

(assert (=> b!43363 d!8047))

(assert (=> b!43363 d!7997))

(declare-fun d!8065 () Bool)

(declare-fun e!27626 () Bool)

(assert (=> d!8065 e!27626))

(declare-fun res!25796 () Bool)

(assert (=> d!8065 (=> (not res!25796) (not e!27626))))

(declare-fun lt!18847 () ListLongMap!1207)

(assert (=> d!8065 (= res!25796 (contains!564 lt!18847 (_1!823 (tuple2!1627 lt!18686 lt!18368))))))

(declare-fun lt!18844 () List!1212)

(assert (=> d!8065 (= lt!18847 (ListLongMap!1208 lt!18844))))

(declare-fun lt!18845 () Unit!1199)

(declare-fun lt!18846 () Unit!1199)

(assert (=> d!8065 (= lt!18845 lt!18846)))

(assert (=> d!8065 (= (getValueByKey!104 lt!18844 (_1!823 (tuple2!1627 lt!18686 lt!18368))) (Some!109 (_2!823 (tuple2!1627 lt!18686 lt!18368))))))

(assert (=> d!8065 (= lt!18846 (lemmaContainsTupThenGetReturnValue!30 lt!18844 (_1!823 (tuple2!1627 lt!18686 lt!18368)) (_2!823 (tuple2!1627 lt!18686 lt!18368))))))

(assert (=> d!8065 (= lt!18844 (insertStrictlySorted!27 (toList!619 lt!18683) (_1!823 (tuple2!1627 lt!18686 lt!18368)) (_2!823 (tuple2!1627 lt!18686 lt!18368))))))

(assert (=> d!8065 (= (+!68 lt!18683 (tuple2!1627 lt!18686 lt!18368)) lt!18847)))

(declare-fun b!43598 () Bool)

(declare-fun res!25795 () Bool)

(assert (=> b!43598 (=> (not res!25795) (not e!27626))))

(assert (=> b!43598 (= res!25795 (= (getValueByKey!104 (toList!619 lt!18847) (_1!823 (tuple2!1627 lt!18686 lt!18368))) (Some!109 (_2!823 (tuple2!1627 lt!18686 lt!18368)))))))

(declare-fun b!43599 () Bool)

(assert (=> b!43599 (= e!27626 (contains!571 (toList!619 lt!18847) (tuple2!1627 lt!18686 lt!18368)))))

(assert (= (and d!8065 res!25796) b!43598))

(assert (= (and b!43598 res!25795) b!43599))

(declare-fun m!37543 () Bool)

(assert (=> d!8065 m!37543))

(declare-fun m!37545 () Bool)

(assert (=> d!8065 m!37545))

(declare-fun m!37547 () Bool)

(assert (=> d!8065 m!37547))

(declare-fun m!37549 () Bool)

(assert (=> d!8065 m!37549))

(declare-fun m!37551 () Bool)

(assert (=> b!43598 m!37551))

(declare-fun m!37553 () Bool)

(assert (=> b!43599 m!37553))

(assert (=> b!43363 d!8065))

(declare-fun d!8071 () Bool)

(declare-fun e!27628 () Bool)

(assert (=> d!8071 e!27628))

(declare-fun res!25799 () Bool)

(assert (=> d!8071 (=> (not res!25799) (not e!27628))))

(declare-fun lt!18852 () ListLongMap!1207)

(assert (=> d!8071 (= res!25799 (contains!564 lt!18852 (_1!823 (tuple2!1627 lt!18675 lt!18368))))))

(declare-fun lt!18849 () List!1212)

(assert (=> d!8071 (= lt!18852 (ListLongMap!1208 lt!18849))))

(declare-fun lt!18850 () Unit!1199)

(declare-fun lt!18851 () Unit!1199)

(assert (=> d!8071 (= lt!18850 lt!18851)))

(assert (=> d!8071 (= (getValueByKey!104 lt!18849 (_1!823 (tuple2!1627 lt!18675 lt!18368))) (Some!109 (_2!823 (tuple2!1627 lt!18675 lt!18368))))))

(assert (=> d!8071 (= lt!18851 (lemmaContainsTupThenGetReturnValue!30 lt!18849 (_1!823 (tuple2!1627 lt!18675 lt!18368)) (_2!823 (tuple2!1627 lt!18675 lt!18368))))))

(assert (=> d!8071 (= lt!18849 (insertStrictlySorted!27 (toList!619 lt!18684) (_1!823 (tuple2!1627 lt!18675 lt!18368)) (_2!823 (tuple2!1627 lt!18675 lt!18368))))))

(assert (=> d!8071 (= (+!68 lt!18684 (tuple2!1627 lt!18675 lt!18368)) lt!18852)))

(declare-fun b!43601 () Bool)

(declare-fun res!25798 () Bool)

(assert (=> b!43601 (=> (not res!25798) (not e!27628))))

(assert (=> b!43601 (= res!25798 (= (getValueByKey!104 (toList!619 lt!18852) (_1!823 (tuple2!1627 lt!18675 lt!18368))) (Some!109 (_2!823 (tuple2!1627 lt!18675 lt!18368)))))))

(declare-fun b!43602 () Bool)

(assert (=> b!43602 (= e!27628 (contains!571 (toList!619 lt!18852) (tuple2!1627 lt!18675 lt!18368)))))

(assert (= (and d!8071 res!25799) b!43601))

(assert (= (and b!43601 res!25798) b!43602))

(declare-fun m!37559 () Bool)

(assert (=> d!8071 m!37559))

(declare-fun m!37561 () Bool)

(assert (=> d!8071 m!37561))

(declare-fun m!37563 () Bool)

(assert (=> d!8071 m!37563))

(declare-fun m!37565 () Bool)

(assert (=> d!8071 m!37565))

(declare-fun m!37567 () Bool)

(assert (=> b!43601 m!37567))

(declare-fun m!37569 () Bool)

(assert (=> b!43602 m!37569))

(assert (=> b!43363 d!8071))

(declare-fun d!8075 () Bool)

(declare-fun e!27629 () Bool)

(assert (=> d!8075 e!27629))

(declare-fun res!25801 () Bool)

(assert (=> d!8075 (=> (not res!25801) (not e!27629))))

(declare-fun lt!18856 () ListLongMap!1207)

(assert (=> d!8075 (= res!25801 (contains!564 lt!18856 (_1!823 (tuple2!1627 lt!18673 lt!18368))))))

(declare-fun lt!18853 () List!1212)

(assert (=> d!8075 (= lt!18856 (ListLongMap!1208 lt!18853))))

(declare-fun lt!18854 () Unit!1199)

(declare-fun lt!18855 () Unit!1199)

(assert (=> d!8075 (= lt!18854 lt!18855)))

(assert (=> d!8075 (= (getValueByKey!104 lt!18853 (_1!823 (tuple2!1627 lt!18673 lt!18368))) (Some!109 (_2!823 (tuple2!1627 lt!18673 lt!18368))))))

(assert (=> d!8075 (= lt!18855 (lemmaContainsTupThenGetReturnValue!30 lt!18853 (_1!823 (tuple2!1627 lt!18673 lt!18368)) (_2!823 (tuple2!1627 lt!18673 lt!18368))))))

(assert (=> d!8075 (= lt!18853 (insertStrictlySorted!27 (toList!619 lt!18681) (_1!823 (tuple2!1627 lt!18673 lt!18368)) (_2!823 (tuple2!1627 lt!18673 lt!18368))))))

(assert (=> d!8075 (= (+!68 lt!18681 (tuple2!1627 lt!18673 lt!18368)) lt!18856)))

(declare-fun b!43603 () Bool)

(declare-fun res!25800 () Bool)

(assert (=> b!43603 (=> (not res!25800) (not e!27629))))

(assert (=> b!43603 (= res!25800 (= (getValueByKey!104 (toList!619 lt!18856) (_1!823 (tuple2!1627 lt!18673 lt!18368))) (Some!109 (_2!823 (tuple2!1627 lt!18673 lt!18368)))))))

(declare-fun b!43604 () Bool)

(assert (=> b!43604 (= e!27629 (contains!571 (toList!619 lt!18856) (tuple2!1627 lt!18673 lt!18368)))))

(assert (= (and d!8075 res!25801) b!43603))

(assert (= (and b!43603 res!25800) b!43604))

(declare-fun m!37571 () Bool)

(assert (=> d!8075 m!37571))

(declare-fun m!37573 () Bool)

(assert (=> d!8075 m!37573))

(declare-fun m!37575 () Bool)

(assert (=> d!8075 m!37575))

(declare-fun m!37577 () Bool)

(assert (=> d!8075 m!37577))

(declare-fun m!37579 () Bool)

(assert (=> b!43603 m!37579))

(declare-fun m!37581 () Bool)

(assert (=> b!43604 m!37581))

(assert (=> b!43363 d!8075))

(declare-fun d!8077 () Bool)

(declare-fun e!27630 () Bool)

(assert (=> d!8077 e!27630))

(declare-fun res!25802 () Bool)

(assert (=> d!8077 (=> res!25802 e!27630)))

(declare-fun lt!18857 () Bool)

(assert (=> d!8077 (= res!25802 (not lt!18857))))

(declare-fun lt!18859 () Bool)

(assert (=> d!8077 (= lt!18857 lt!18859)))

(declare-fun lt!18858 () Unit!1199)

(declare-fun e!27631 () Unit!1199)

(assert (=> d!8077 (= lt!18858 e!27631)))

(declare-fun c!5624 () Bool)

(assert (=> d!8077 (= c!5624 lt!18859)))

(assert (=> d!8077 (= lt!18859 (containsKey!72 (toList!619 (+!68 lt!18668 (tuple2!1627 lt!18680 lt!18368))) lt!18679))))

(assert (=> d!8077 (= (contains!564 (+!68 lt!18668 (tuple2!1627 lt!18680 lt!18368)) lt!18679) lt!18857)))

(declare-fun b!43605 () Bool)

(declare-fun lt!18860 () Unit!1199)

(assert (=> b!43605 (= e!27631 lt!18860)))

(assert (=> b!43605 (= lt!18860 (lemmaContainsKeyImpliesGetValueByKeyDefined!60 (toList!619 (+!68 lt!18668 (tuple2!1627 lt!18680 lt!18368))) lt!18679))))

(assert (=> b!43605 (isDefined!61 (getValueByKey!104 (toList!619 (+!68 lt!18668 (tuple2!1627 lt!18680 lt!18368))) lt!18679))))

(declare-fun b!43606 () Bool)

(declare-fun Unit!1215 () Unit!1199)

(assert (=> b!43606 (= e!27631 Unit!1215)))

(declare-fun b!43607 () Bool)

(assert (=> b!43607 (= e!27630 (isDefined!61 (getValueByKey!104 (toList!619 (+!68 lt!18668 (tuple2!1627 lt!18680 lt!18368))) lt!18679)))))

(assert (= (and d!8077 c!5624) b!43605))

(assert (= (and d!8077 (not c!5624)) b!43606))

(assert (= (and d!8077 (not res!25802)) b!43607))

(declare-fun m!37583 () Bool)

(assert (=> d!8077 m!37583))

(declare-fun m!37585 () Bool)

(assert (=> b!43605 m!37585))

(declare-fun m!37587 () Bool)

(assert (=> b!43605 m!37587))

(assert (=> b!43605 m!37587))

(declare-fun m!37589 () Bool)

(assert (=> b!43605 m!37589))

(assert (=> b!43607 m!37587))

(assert (=> b!43607 m!37587))

(assert (=> b!43607 m!37589))

(assert (=> b!43363 d!8077))

(declare-fun d!8079 () Bool)

(assert (=> d!8079 (= (apply!59 (+!68 lt!18681 (tuple2!1627 lt!18673 lt!18368)) lt!18669) (apply!59 lt!18681 lt!18669))))

(declare-fun lt!18880 () Unit!1199)

(declare-fun choose!263 (ListLongMap!1207 (_ BitVec 64) V!2309 (_ BitVec 64)) Unit!1199)

(assert (=> d!8079 (= lt!18880 (choose!263 lt!18681 lt!18673 lt!18368 lt!18669))))

(declare-fun e!27643 () Bool)

(assert (=> d!8079 e!27643))

(declare-fun res!25815 () Bool)

(assert (=> d!8079 (=> (not res!25815) (not e!27643))))

(assert (=> d!8079 (= res!25815 (contains!564 lt!18681 lt!18669))))

(assert (=> d!8079 (= (addApplyDifferent!35 lt!18681 lt!18673 lt!18368 lt!18669) lt!18880)))

(declare-fun b!43624 () Bool)

(assert (=> b!43624 (= e!27643 (not (= lt!18669 lt!18673)))))

(assert (= (and d!8079 res!25815) b!43624))

(declare-fun m!37615 () Bool)

(assert (=> d!8079 m!37615))

(assert (=> d!8079 m!37203))

(declare-fun m!37617 () Bool)

(assert (=> d!8079 m!37617))

(assert (=> d!8079 m!37217))

(assert (=> d!8079 m!37219))

(assert (=> d!8079 m!37217))

(assert (=> b!43363 d!8079))

(declare-fun d!8091 () Bool)

(assert (=> d!8091 (= (apply!59 (+!68 lt!18683 (tuple2!1627 lt!18686 lt!18368)) lt!18677) (apply!59 lt!18683 lt!18677))))

(declare-fun lt!18885 () Unit!1199)

(assert (=> d!8091 (= lt!18885 (choose!263 lt!18683 lt!18686 lt!18368 lt!18677))))

(declare-fun e!27645 () Bool)

(assert (=> d!8091 e!27645))

(declare-fun res!25818 () Bool)

(assert (=> d!8091 (=> (not res!25818) (not e!27645))))

(assert (=> d!8091 (= res!25818 (contains!564 lt!18683 lt!18677))))

(assert (=> d!8091 (= (addApplyDifferent!35 lt!18683 lt!18686 lt!18368 lt!18677) lt!18885)))

(declare-fun b!43627 () Bool)

(assert (=> b!43627 (= e!27645 (not (= lt!18677 lt!18686)))))

(assert (= (and d!8091 res!25818) b!43627))

(declare-fun m!37623 () Bool)

(assert (=> d!8091 m!37623))

(assert (=> d!8091 m!37213))

(declare-fun m!37629 () Bool)

(assert (=> d!8091 m!37629))

(assert (=> d!8091 m!37189))

(assert (=> d!8091 m!37192))

(assert (=> d!8091 m!37189))

(assert (=> b!43363 d!8091))

(declare-fun d!8095 () Bool)

(assert (=> d!8095 (= (apply!59 lt!18684 lt!18674) (get!798 (getValueByKey!104 (toList!619 lt!18684) lt!18674)))))

(declare-fun bs!1962 () Bool)

(assert (= bs!1962 d!8095))

(declare-fun m!37635 () Bool)

(assert (=> bs!1962 m!37635))

(assert (=> bs!1962 m!37635))

(declare-fun m!37641 () Bool)

(assert (=> bs!1962 m!37641))

(assert (=> b!43363 d!8095))

(declare-fun d!8097 () Bool)

(assert (=> d!8097 (= (apply!59 (+!68 lt!18684 (tuple2!1627 lt!18675 lt!18368)) lt!18674) (apply!59 lt!18684 lt!18674))))

(declare-fun lt!18894 () Unit!1199)

(assert (=> d!8097 (= lt!18894 (choose!263 lt!18684 lt!18675 lt!18368 lt!18674))))

(declare-fun e!27648 () Bool)

(assert (=> d!8097 e!27648))

(declare-fun res!25823 () Bool)

(assert (=> d!8097 (=> (not res!25823) (not e!27648))))

(assert (=> d!8097 (= res!25823 (contains!564 lt!18684 lt!18674))))

(assert (=> d!8097 (= (addApplyDifferent!35 lt!18684 lt!18675 lt!18368 lt!18674) lt!18894)))

(declare-fun b!43632 () Bool)

(assert (=> b!43632 (= e!27648 (not (= lt!18674 lt!18675)))))

(assert (= (and d!8097 res!25823) b!43632))

(declare-fun m!37653 () Bool)

(assert (=> d!8097 m!37653))

(assert (=> d!8097 m!37211))

(declare-fun m!37657 () Bool)

(assert (=> d!8097 m!37657))

(assert (=> d!8097 m!37195))

(assert (=> d!8097 m!37205))

(assert (=> d!8097 m!37195))

(assert (=> b!43363 d!8097))

(declare-fun d!8101 () Bool)

(assert (=> d!8101 (= (apply!59 (+!68 lt!18681 (tuple2!1627 lt!18673 lt!18368)) lt!18669) (get!798 (getValueByKey!104 (toList!619 (+!68 lt!18681 (tuple2!1627 lt!18673 lt!18368))) lt!18669)))))

(declare-fun bs!1963 () Bool)

(assert (= bs!1963 d!8101))

(declare-fun m!37673 () Bool)

(assert (=> bs!1963 m!37673))

(assert (=> bs!1963 m!37673))

(declare-fun m!37677 () Bool)

(assert (=> bs!1963 m!37677))

(assert (=> b!43363 d!8101))

(declare-fun d!8105 () Bool)

(assert (=> d!8105 (= (apply!59 lt!18681 lt!18669) (get!798 (getValueByKey!104 (toList!619 lt!18681) lt!18669)))))

(declare-fun bs!1964 () Bool)

(assert (= bs!1964 d!8105))

(declare-fun m!37679 () Bool)

(assert (=> bs!1964 m!37679))

(assert (=> bs!1964 m!37679))

(declare-fun m!37687 () Bool)

(assert (=> bs!1964 m!37687))

(assert (=> b!43363 d!8105))

(declare-fun d!8109 () Bool)

(assert (=> d!8109 (= (apply!59 (+!68 lt!18683 (tuple2!1627 lt!18686 lt!18368)) lt!18677) (get!798 (getValueByKey!104 (toList!619 (+!68 lt!18683 (tuple2!1627 lt!18686 lt!18368))) lt!18677)))))

(declare-fun bs!1966 () Bool)

(assert (= bs!1966 d!8109))

(declare-fun m!37695 () Bool)

(assert (=> bs!1966 m!37695))

(assert (=> bs!1966 m!37695))

(declare-fun m!37699 () Bool)

(assert (=> bs!1966 m!37699))

(assert (=> b!43363 d!8109))

(assert (=> d!7947 d!7939))

(declare-fun b!43639 () Bool)

(declare-fun e!27667 () Bool)

(declare-fun call!3499 () Bool)

(assert (=> b!43639 (= e!27667 call!3499)))

(declare-fun b!43640 () Bool)

(declare-fun e!27663 () Bool)

(declare-fun e!27669 () Bool)

(assert (=> b!43640 (= e!27663 e!27669)))

(declare-fun res!25834 () Bool)

(assert (=> b!43640 (=> (not res!25834) (not e!27669))))

(declare-fun e!27664 () Bool)

(assert (=> b!43640 (= res!25834 (not e!27664))))

(declare-fun res!25835 () Bool)

(assert (=> b!43640 (=> (not res!25835) (not e!27664))))

(assert (=> b!43640 (= res!25835 (validKeyInArray!0 (select (arr!1406 lt!18370) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!8115 () Bool)

(declare-fun res!25833 () Bool)

(assert (=> d!8115 (=> res!25833 e!27663)))

(assert (=> d!8115 (= res!25833 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1591 lt!18370)))))

(assert (=> d!8115 (= (arrayNoDuplicates!0 lt!18370 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5482 (Cons!1209 (select (arr!1406 lt!18370) #b00000000000000000000000000000000) Nil!1210) Nil!1210)) e!27663)))

(declare-fun b!43641 () Bool)

(assert (=> b!43641 (= e!27667 call!3499)))

(declare-fun b!43642 () Bool)

(assert (=> b!43642 (= e!27669 e!27667)))

(declare-fun c!5632 () Bool)

(assert (=> b!43642 (= c!5632 (validKeyInArray!0 (select (arr!1406 lt!18370) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!43643 () Bool)

(assert (=> b!43643 (= e!27664 (contains!568 (ite c!5482 (Cons!1209 (select (arr!1406 lt!18370) #b00000000000000000000000000000000) Nil!1210) Nil!1210) (select (arr!1406 lt!18370) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3493 () Bool)

(assert (=> bm!3493 (= call!3499 (arrayNoDuplicates!0 lt!18370 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5632 (Cons!1209 (select (arr!1406 lt!18370) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5482 (Cons!1209 (select (arr!1406 lt!18370) #b00000000000000000000000000000000) Nil!1210) Nil!1210)) (ite c!5482 (Cons!1209 (select (arr!1406 lt!18370) #b00000000000000000000000000000000) Nil!1210) Nil!1210))))))

(assert (= (and d!8115 (not res!25833)) b!43640))

(assert (= (and b!43640 res!25835) b!43643))

(assert (= (and b!43640 res!25834) b!43642))

(assert (= (and b!43642 c!5632) b!43641))

(assert (= (and b!43642 (not c!5632)) b!43639))

(assert (= (or b!43641 b!43639) bm!3493))

(declare-fun m!37703 () Bool)

(assert (=> b!43640 m!37703))

(assert (=> b!43640 m!37703))

(declare-fun m!37705 () Bool)

(assert (=> b!43640 m!37705))

(assert (=> b!43642 m!37703))

(assert (=> b!43642 m!37703))

(assert (=> b!43642 m!37705))

(assert (=> b!43643 m!37703))

(assert (=> b!43643 m!37703))

(declare-fun m!37707 () Bool)

(assert (=> b!43643 m!37707))

(assert (=> bm!3493 m!37703))

(declare-fun m!37709 () Bool)

(assert (=> bm!3493 m!37709))

(assert (=> bm!3404 d!8115))

(declare-fun d!8119 () Bool)

(declare-fun lt!18929 () Bool)

(declare-fun content!39 (List!1213) (Set (_ BitVec 64)))

(assert (=> d!8119 (= lt!18929 (set.member (select (arr!1406 lt!18370) #b00000000000000000000000000000000) (content!39 Nil!1210)))))

(declare-fun e!27676 () Bool)

(assert (=> d!8119 (= lt!18929 e!27676)))

(declare-fun res!25845 () Bool)

(assert (=> d!8119 (=> (not res!25845) (not e!27676))))

(assert (=> d!8119 (= res!25845 (is-Cons!1209 Nil!1210))))

(assert (=> d!8119 (= (contains!568 Nil!1210 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)) lt!18929)))

(declare-fun b!43672 () Bool)

(declare-fun e!27677 () Bool)

(assert (=> b!43672 (= e!27676 e!27677)))

(declare-fun res!25844 () Bool)

(assert (=> b!43672 (=> res!25844 e!27677)))

(assert (=> b!43672 (= res!25844 (= (h!1786 Nil!1210) (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(declare-fun b!43673 () Bool)

(assert (=> b!43673 (= e!27677 (contains!568 (t!4218 Nil!1210) (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(assert (= (and d!8119 res!25845) b!43672))

(assert (= (and b!43672 (not res!25844)) b!43673))

(declare-fun m!37751 () Bool)

(assert (=> d!8119 m!37751))

(assert (=> d!8119 m!37027))

(declare-fun m!37753 () Bool)

(assert (=> d!8119 m!37753))

(assert (=> b!43673 m!37027))

(declare-fun m!37755 () Bool)

(assert (=> b!43673 m!37755))

(assert (=> b!43128 d!8119))

(assert (=> b!43361 d!8037))

(assert (=> b!43127 d!8037))

(declare-fun d!8121 () Bool)

(declare-fun e!27679 () Bool)

(assert (=> d!8121 e!27679))

(declare-fun res!25847 () Bool)

(assert (=> d!8121 (=> res!25847 e!27679)))

(declare-fun lt!18931 () Bool)

(assert (=> d!8121 (= res!25847 (not lt!18931))))

(declare-fun lt!18933 () Bool)

(assert (=> d!8121 (= lt!18931 lt!18933)))

(declare-fun lt!18932 () Unit!1199)

(declare-fun e!27680 () Unit!1199)

(assert (=> d!8121 (= lt!18932 e!27680)))

(declare-fun c!5635 () Bool)

(assert (=> d!8121 (= c!5635 lt!18933)))

(assert (=> d!8121 (= lt!18933 (containsKey!72 (toList!619 lt!18682) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!8121 (= (contains!564 lt!18682 #b1000000000000000000000000000000000000000000000000000000000000000) lt!18931)))

(declare-fun b!43675 () Bool)

(declare-fun lt!18934 () Unit!1199)

(assert (=> b!43675 (= e!27680 lt!18934)))

(assert (=> b!43675 (= lt!18934 (lemmaContainsKeyImpliesGetValueByKeyDefined!60 (toList!619 lt!18682) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!43675 (isDefined!61 (getValueByKey!104 (toList!619 lt!18682) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!43676 () Bool)

(declare-fun Unit!1218 () Unit!1199)

(assert (=> b!43676 (= e!27680 Unit!1218)))

(declare-fun b!43677 () Bool)

(assert (=> b!43677 (= e!27679 (isDefined!61 (getValueByKey!104 (toList!619 lt!18682) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!8121 c!5635) b!43675))

(assert (= (and d!8121 (not c!5635)) b!43676))

(assert (= (and d!8121 (not res!25847)) b!43677))

(declare-fun m!37775 () Bool)

(assert (=> d!8121 m!37775))

(declare-fun m!37777 () Bool)

(assert (=> b!43675 m!37777))

(assert (=> b!43675 m!37445))

(assert (=> b!43675 m!37445))

(declare-fun m!37781 () Bool)

(assert (=> b!43675 m!37781))

(assert (=> b!43677 m!37445))

(assert (=> b!43677 m!37445))

(assert (=> b!43677 m!37781))

(assert (=> bm!3470 d!8121))

(assert (=> b!43125 d!8037))

(declare-fun d!8125 () Bool)

(assert (=> d!8125 (= (apply!59 lt!18682 #b0000000000000000000000000000000000000000000000000000000000000000) (get!798 (getValueByKey!104 (toList!619 lt!18682) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1968 () Bool)

(assert (= bs!1968 d!8125))

(declare-fun m!37793 () Bool)

(assert (=> bs!1968 m!37793))

(assert (=> bs!1968 m!37793))

(declare-fun m!37801 () Bool)

(assert (=> bs!1968 m!37801))

(assert (=> b!43359 d!8125))

(assert (=> d!7919 d!7923))

(declare-fun d!8131 () Bool)

(assert (=> d!8131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18370 mask!853)))

(assert (=> d!8131 true))

(declare-fun _$30!63 () Unit!1199)

(assert (=> d!8131 (= (choose!34 lt!18370 mask!853 #b00000000000000000000000000000000) _$30!63)))

(declare-fun bs!1972 () Bool)

(assert (= bs!1972 d!8131))

(assert (=> bs!1972 m!36961))

(assert (=> d!7919 d!8131))

(assert (=> d!7919 d!7939))

(declare-fun d!8141 () Bool)

(declare-fun e!27683 () Bool)

(assert (=> d!8141 e!27683))

(declare-fun res!25854 () Bool)

(assert (=> d!8141 (=> res!25854 e!27683)))

(declare-fun lt!18940 () Bool)

(assert (=> d!8141 (= res!25854 (not lt!18940))))

(declare-fun lt!18942 () Bool)

(assert (=> d!8141 (= lt!18940 lt!18942)))

(declare-fun lt!18941 () Unit!1199)

(declare-fun e!27684 () Unit!1199)

(assert (=> d!8141 (= lt!18941 e!27684)))

(declare-fun c!5636 () Bool)

(assert (=> d!8141 (= c!5636 lt!18942)))

(assert (=> d!8141 (= lt!18942 (containsKey!72 (toList!619 lt!18682) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!8141 (= (contains!564 lt!18682 #b0000000000000000000000000000000000000000000000000000000000000000) lt!18940)))

(declare-fun b!43681 () Bool)

(declare-fun lt!18943 () Unit!1199)

(assert (=> b!43681 (= e!27684 lt!18943)))

(assert (=> b!43681 (= lt!18943 (lemmaContainsKeyImpliesGetValueByKeyDefined!60 (toList!619 lt!18682) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!43681 (isDefined!61 (getValueByKey!104 (toList!619 lt!18682) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!43682 () Bool)

(declare-fun Unit!1219 () Unit!1199)

(assert (=> b!43682 (= e!27684 Unit!1219)))

(declare-fun b!43683 () Bool)

(assert (=> b!43683 (= e!27683 (isDefined!61 (getValueByKey!104 (toList!619 lt!18682) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!8141 c!5636) b!43681))

(assert (= (and d!8141 (not c!5636)) b!43682))

(assert (= (and d!8141 (not res!25854)) b!43683))

(declare-fun m!37811 () Bool)

(assert (=> d!8141 m!37811))

(declare-fun m!37813 () Bool)

(assert (=> b!43681 m!37813))

(assert (=> b!43681 m!37793))

(assert (=> b!43681 m!37793))

(declare-fun m!37815 () Bool)

(assert (=> b!43681 m!37815))

(assert (=> b!43683 m!37793))

(assert (=> b!43683 m!37793))

(assert (=> b!43683 m!37815))

(assert (=> bm!3475 d!8141))

(declare-fun d!8143 () Bool)

(declare-fun e!27685 () Bool)

(assert (=> d!8143 e!27685))

(declare-fun res!25855 () Bool)

(assert (=> d!8143 (=> res!25855 e!27685)))

(declare-fun lt!18944 () Bool)

(assert (=> d!8143 (= res!25855 (not lt!18944))))

(declare-fun lt!18946 () Bool)

(assert (=> d!8143 (= lt!18944 lt!18946)))

(declare-fun lt!18945 () Unit!1199)

(declare-fun e!27686 () Unit!1199)

(assert (=> d!8143 (= lt!18945 e!27686)))

(declare-fun c!5637 () Bool)

(assert (=> d!8143 (= c!5637 lt!18946)))

(assert (=> d!8143 (= lt!18946 (containsKey!72 (toList!619 lt!18682) (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(assert (=> d!8143 (= (contains!564 lt!18682 (select (arr!1406 lt!18370) #b00000000000000000000000000000000)) lt!18944)))

(declare-fun b!43684 () Bool)

(declare-fun lt!18947 () Unit!1199)

(assert (=> b!43684 (= e!27686 lt!18947)))

(assert (=> b!43684 (= lt!18947 (lemmaContainsKeyImpliesGetValueByKeyDefined!60 (toList!619 lt!18682) (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(assert (=> b!43684 (isDefined!61 (getValueByKey!104 (toList!619 lt!18682) (select (arr!1406 lt!18370) #b00000000000000000000000000000000)))))

(declare-fun b!43685 () Bool)

(declare-fun Unit!1220 () Unit!1199)

(assert (=> b!43685 (= e!27686 Unit!1220)))

(declare-fun b!43686 () Bool)

(assert (=> b!43686 (= e!27685 (isDefined!61 (getValueByKey!104 (toList!619 lt!18682) (select (arr!1406 lt!18370) #b00000000000000000000000000000000))))))

(assert (= (and d!8143 c!5637) b!43684))

(assert (= (and d!8143 (not c!5637)) b!43685))

(assert (= (and d!8143 (not res!25855)) b!43686))

(assert (=> d!8143 m!37027))

(declare-fun m!37817 () Bool)

(assert (=> d!8143 m!37817))

(assert (=> b!43684 m!37027))

(declare-fun m!37819 () Bool)

(assert (=> b!43684 m!37819))

(assert (=> b!43684 m!37027))

(declare-fun m!37821 () Bool)

(assert (=> b!43684 m!37821))

(assert (=> b!43684 m!37821))

(declare-fun m!37823 () Bool)

(assert (=> b!43684 m!37823))

(assert (=> b!43686 m!37027))

(assert (=> b!43686 m!37821))

(assert (=> b!43686 m!37821))

(assert (=> b!43686 m!37823))

(assert (=> b!43357 d!8143))

(declare-fun d!8145 () Bool)

(declare-fun isEmpty!286 (Option!110) Bool)

(assert (=> d!8145 (= (isDefined!61 (getValueByKey!104 (toList!619 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470)) (_1!823 (head!887 (toList!619 lt!18364))))) (not (isEmpty!286 (getValueByKey!104 (toList!619 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470)) (_1!823 (head!887 (toList!619 lt!18364)))))))))

(declare-fun bs!1974 () Bool)

(assert (= bs!1974 d!8145))

(assert (=> bs!1974 m!37089))

(declare-fun m!37829 () Bool)

(assert (=> bs!1974 m!37829))

(assert (=> b!43167 d!8145))

(declare-fun b!43711 () Bool)

(declare-fun e!27703 () Option!110)

(declare-fun e!27704 () Option!110)

(assert (=> b!43711 (= e!27703 e!27704)))

(declare-fun c!5644 () Bool)

(assert (=> b!43711 (= c!5644 (and (is-Cons!1208 (toList!619 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470))) (not (= (_1!823 (h!1785 (toList!619 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470)))) (_1!823 (head!887 (toList!619 lt!18364)))))))))

(declare-fun b!43710 () Bool)

(assert (=> b!43710 (= e!27703 (Some!109 (_2!823 (h!1785 (toList!619 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470))))))))

(declare-fun c!5643 () Bool)

(declare-fun d!8149 () Bool)

(assert (=> d!8149 (= c!5643 (and (is-Cons!1208 (toList!619 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470))) (= (_1!823 (h!1785 (toList!619 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470)))) (_1!823 (head!887 (toList!619 lt!18364))))))))

(assert (=> d!8149 (= (getValueByKey!104 (toList!619 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470)) (_1!823 (head!887 (toList!619 lt!18364)))) e!27703)))

(declare-fun b!43713 () Bool)

(assert (=> b!43713 (= e!27704 None!108)))

(declare-fun b!43712 () Bool)

(assert (=> b!43712 (= e!27704 (getValueByKey!104 (t!4217 (toList!619 (getCurrentListMap!350 lt!18370 lt!18366 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 defaultEntry!470))) (_1!823 (head!887 (toList!619 lt!18364)))))))

(assert (= (and d!8149 c!5643) b!43710))

(assert (= (and d!8149 (not c!5643)) b!43711))

(assert (= (and b!43711 c!5644) b!43712))

(assert (= (and b!43711 (not c!5644)) b!43713))

(declare-fun m!37865 () Bool)

(assert (=> b!43712 m!37865))

(assert (=> b!43167 d!8149))

(declare-fun bm!3502 () Bool)

(declare-fun call!3506 () ListLongMap!1207)

(declare-fun call!3510 () ListLongMap!1207)

(assert (=> bm!3502 (= call!3506 call!3510)))

(declare-fun b!43714 () Bool)

(declare-fun e!27713 () Bool)

(declare-fun e!27710 () Bool)

(assert (=> b!43714 (= e!27713 e!27710)))

(declare-fun res!25871 () Bool)

(assert (=> b!43714 (=> (not res!25871) (not e!27710))))

(declare-fun lt!18976 () ListLongMap!1207)

(assert (=> b!43714 (= res!25871 (contains!564 lt!18976 (select (arr!1406 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(assert (=> b!43714 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1591 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))))))

(declare-fun b!43715 () Bool)

(declare-fun e!27711 () Bool)

(declare-fun e!27715 () Bool)

(assert (=> b!43715 (= e!27711 e!27715)))

(declare-fun res!25868 () Bool)

(declare-fun call!3509 () Bool)

(assert (=> b!43715 (= res!25868 call!3509)))

(assert (=> b!43715 (=> (not res!25868) (not e!27715))))

(declare-fun e!27714 () Bool)

(declare-fun b!43716 () Bool)

(assert (=> b!43716 (= e!27714 (= (apply!59 lt!18976 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))))))

(declare-fun b!43717 () Bool)

(declare-fun e!27717 () ListLongMap!1207)

(declare-fun call!3511 () ListLongMap!1207)

(assert (=> b!43717 (= e!27717 call!3511)))

(declare-fun e!27707 () Bool)

(declare-fun b!43718 () Bool)

(assert (=> b!43718 (= e!27707 (validKeyInArray!0 (select (arr!1406 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!43719 () Bool)

(declare-fun e!27709 () Bool)

(declare-fun call!3507 () Bool)

(assert (=> b!43719 (= e!27709 (not call!3507))))

(declare-fun bm!3504 () Bool)

(declare-fun call!3508 () ListLongMap!1207)

(assert (=> bm!3504 (= call!3510 call!3508)))

(declare-fun b!43720 () Bool)

(declare-fun e!27705 () Unit!1199)

(declare-fun lt!18970 () Unit!1199)

(assert (=> b!43720 (= e!27705 lt!18970)))

(declare-fun lt!18962 () ListLongMap!1207)

(assert (=> b!43720 (= lt!18962 (getCurrentListMapNoExtraKeys!37 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (_values!1864 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (mask!5430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (zeroValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1881 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))))))

(declare-fun lt!18974 () (_ BitVec 64))

(assert (=> b!43720 (= lt!18974 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18973 () (_ BitVec 64))

(assert (=> b!43720 (= lt!18973 (select (arr!1406 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(declare-fun lt!18964 () Unit!1199)

(assert (=> b!43720 (= lt!18964 (addStillContains!35 lt!18962 lt!18974 (zeroValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) lt!18973))))

(assert (=> b!43720 (contains!564 (+!68 lt!18962 (tuple2!1627 lt!18974 (zeroValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))) lt!18973)))

(declare-fun lt!18972 () Unit!1199)

(assert (=> b!43720 (= lt!18972 lt!18964)))

(declare-fun lt!18975 () ListLongMap!1207)

(assert (=> b!43720 (= lt!18975 (getCurrentListMapNoExtraKeys!37 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (_values!1864 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (mask!5430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (zeroValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1881 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))))))

(declare-fun lt!18967 () (_ BitVec 64))

(assert (=> b!43720 (= lt!18967 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18963 () (_ BitVec 64))

(assert (=> b!43720 (= lt!18963 (select (arr!1406 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(declare-fun lt!18979 () Unit!1199)

(assert (=> b!43720 (= lt!18979 (addApplyDifferent!35 lt!18975 lt!18967 (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) lt!18963))))

(assert (=> b!43720 (= (apply!59 (+!68 lt!18975 (tuple2!1627 lt!18967 (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))) lt!18963) (apply!59 lt!18975 lt!18963))))

(declare-fun lt!18965 () Unit!1199)

(assert (=> b!43720 (= lt!18965 lt!18979)))

(declare-fun lt!18977 () ListLongMap!1207)

(assert (=> b!43720 (= lt!18977 (getCurrentListMapNoExtraKeys!37 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (_values!1864 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (mask!5430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (zeroValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1881 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))))))

(declare-fun lt!18980 () (_ BitVec 64))

(assert (=> b!43720 (= lt!18980 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18971 () (_ BitVec 64))

(assert (=> b!43720 (= lt!18971 (select (arr!1406 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(declare-fun lt!18961 () Unit!1199)

(assert (=> b!43720 (= lt!18961 (addApplyDifferent!35 lt!18977 lt!18980 (zeroValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) lt!18971))))

(assert (=> b!43720 (= (apply!59 (+!68 lt!18977 (tuple2!1627 lt!18980 (zeroValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))) lt!18971) (apply!59 lt!18977 lt!18971))))

(declare-fun lt!18960 () Unit!1199)

(assert (=> b!43720 (= lt!18960 lt!18961)))

(declare-fun lt!18978 () ListLongMap!1207)

(assert (=> b!43720 (= lt!18978 (getCurrentListMapNoExtraKeys!37 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (_values!1864 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (mask!5430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (zeroValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1881 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))))))

(declare-fun lt!18969 () (_ BitVec 64))

(assert (=> b!43720 (= lt!18969 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18968 () (_ BitVec 64))

(assert (=> b!43720 (= lt!18968 (select (arr!1406 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(assert (=> b!43720 (= lt!18970 (addApplyDifferent!35 lt!18978 lt!18969 (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) lt!18968))))

(assert (=> b!43720 (= (apply!59 (+!68 lt!18978 (tuple2!1627 lt!18969 (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))) lt!18968) (apply!59 lt!18978 lt!18968))))

(declare-fun e!27706 () Bool)

(declare-fun b!43721 () Bool)

(assert (=> b!43721 (= e!27706 (validKeyInArray!0 (select (arr!1406 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun bm!3505 () Bool)

(declare-fun call!3505 () ListLongMap!1207)

(assert (=> bm!3505 (= call!3511 call!3505)))

(declare-fun b!43722 () Bool)

(assert (=> b!43722 (= e!27715 (= (apply!59 lt!18976 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))))))

(declare-fun bm!3506 () Bool)

(declare-fun c!5648 () Bool)

(declare-fun c!5645 () Bool)

(assert (=> bm!3506 (= call!3505 (+!68 (ite c!5645 call!3508 (ite c!5648 call!3510 call!3506)) (ite (or c!5645 c!5648) (tuple2!1627 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))) (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))))))))

(declare-fun bm!3507 () Bool)

(assert (=> bm!3507 (= call!3508 (getCurrentListMapNoExtraKeys!37 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (_values!1864 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (mask!5430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (zeroValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1881 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))))))

(declare-fun b!43723 () Bool)

(assert (=> b!43723 (= e!27711 (not call!3509))))

(declare-fun b!43724 () Bool)

(declare-fun e!27716 () ListLongMap!1207)

(assert (=> b!43724 (= e!27716 e!27717)))

(assert (=> b!43724 (= c!5648 (and (not (= (bvand (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!3503 () Bool)

(assert (=> bm!3503 (= call!3509 (contains!564 lt!18976 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!8165 () Bool)

(declare-fun e!27712 () Bool)

(assert (=> d!8165 e!27712))

(declare-fun res!25876 () Bool)

(assert (=> d!8165 (=> (not res!25876) (not e!27712))))

(assert (=> d!8165 (= res!25876 (or (bvsge #b00000000000000000000000000000000 (size!1591 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1591 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))))))))

(declare-fun lt!18966 () ListLongMap!1207)

(assert (=> d!8165 (= lt!18976 lt!18966)))

(declare-fun lt!18959 () Unit!1199)

(assert (=> d!8165 (= lt!18959 e!27705)))

(declare-fun c!5647 () Bool)

(assert (=> d!8165 (= c!5647 e!27707)))

(declare-fun res!25875 () Bool)

(assert (=> d!8165 (=> (not res!25875) (not e!27707))))

(assert (=> d!8165 (= res!25875 (bvslt #b00000000000000000000000000000000 (size!1591 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))))))

(assert (=> d!8165 (= lt!18966 e!27716)))

(assert (=> d!8165 (= c!5645 (and (not (= (bvand (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!8165 (validMask!0 (mask!5430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))))

(assert (=> d!8165 (= (getCurrentListMap!350 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (_values!1864 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (mask!5430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (zeroValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1881 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))) lt!18976)))

(declare-fun b!43725 () Bool)

(assert (=> b!43725 (= e!27712 e!27711)))

(declare-fun c!5649 () Bool)

(assert (=> b!43725 (= c!5649 (not (= (bvand (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!43726 () Bool)

(assert (=> b!43726 (= e!27716 (+!68 call!3505 (tuple2!1627 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1799 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))))))

(declare-fun b!43727 () Bool)

(declare-fun res!25873 () Bool)

(assert (=> b!43727 (=> (not res!25873) (not e!27712))))

(assert (=> b!43727 (= res!25873 e!27709)))

(declare-fun c!5646 () Bool)

(assert (=> b!43727 (= c!5646 (not (= (bvand (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!43728 () Bool)

(declare-fun e!27708 () ListLongMap!1207)

(assert (=> b!43728 (= e!27708 call!3511)))

(declare-fun b!43729 () Bool)

(assert (=> b!43729 (= e!27710 (= (apply!59 lt!18976 (select (arr!1406 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (get!790 (select (arr!1405 (_values!1864 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (dynLambda!259 (defaultEntry!1881 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!43729 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1590 (_values!1864 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))))))

(assert (=> b!43729 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1591 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))))))

(declare-fun bm!3508 () Bool)

(assert (=> bm!3508 (= call!3507 (contains!564 lt!18976 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!43730 () Bool)

(declare-fun Unit!1222 () Unit!1199)

(assert (=> b!43730 (= e!27705 Unit!1222)))

(declare-fun b!43731 () Bool)

(assert (=> b!43731 (= e!27709 e!27714)))

(declare-fun res!25870 () Bool)

(assert (=> b!43731 (= res!25870 call!3507)))

(assert (=> b!43731 (=> (not res!25870) (not e!27714))))

(declare-fun b!43732 () Bool)

(declare-fun res!25872 () Bool)

(assert (=> b!43732 (=> (not res!25872) (not e!27712))))

(assert (=> b!43732 (= res!25872 e!27713)))

(declare-fun res!25874 () Bool)

(assert (=> b!43732 (=> res!25874 e!27713)))

(assert (=> b!43732 (= res!25874 (not e!27706))))

(declare-fun res!25869 () Bool)

(assert (=> b!43732 (=> (not res!25869) (not e!27706))))

(assert (=> b!43732 (= res!25869 (bvslt #b00000000000000000000000000000000 (size!1591 (_keys!3430 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)))))))

(declare-fun b!43733 () Bool)

(assert (=> b!43733 (= e!27708 call!3506)))

(declare-fun b!43734 () Bool)

(declare-fun c!5650 () Bool)

(assert (=> b!43734 (= c!5650 (and (not (= (bvand (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1772 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!43734 (= e!27717 e!27708)))

(assert (= (and d!8165 c!5645) b!43726))

(assert (= (and d!8165 (not c!5645)) b!43724))

(assert (= (and b!43724 c!5648) b!43717))

(assert (= (and b!43724 (not c!5648)) b!43734))

(assert (= (and b!43734 c!5650) b!43728))

(assert (= (and b!43734 (not c!5650)) b!43733))

(assert (= (or b!43728 b!43733) bm!3502))

(assert (= (or b!43717 bm!3502) bm!3504))

(assert (= (or b!43717 b!43728) bm!3505))

(assert (= (or b!43726 bm!3504) bm!3507))

(assert (= (or b!43726 bm!3505) bm!3506))

(assert (= (and d!8165 res!25875) b!43718))

(assert (= (and d!8165 c!5647) b!43720))

(assert (= (and d!8165 (not c!5647)) b!43730))

(assert (= (and d!8165 res!25876) b!43732))

(assert (= (and b!43732 res!25869) b!43721))

(assert (= (and b!43732 (not res!25874)) b!43714))

(assert (= (and b!43714 res!25871) b!43729))

(assert (= (and b!43732 res!25872) b!43727))

(assert (= (and b!43727 c!5646) b!43731))

(assert (= (and b!43727 (not c!5646)) b!43719))

(assert (= (and b!43731 res!25870) b!43716))

(assert (= (or b!43731 b!43719) bm!3508))

(assert (= (and b!43727 res!25873) b!43725))

(assert (= (and b!43725 c!5649) b!43715))

(assert (= (and b!43725 (not c!5649)) b!43723))

(assert (= (and b!43715 res!25868) b!43722))

(assert (= (or b!43715 b!43723) bm!3503))

(declare-fun b_lambda!2297 () Bool)

(assert (=> (not b_lambda!2297) (not b!43729)))

(declare-fun t!4230 () Bool)

(declare-fun tb!999 () Bool)

(assert (=> (and start!6472 (= defaultEntry!470 (defaultEntry!1881 (LongMapFixedSize!377 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18368 lt!18368 #b00000000000000000000000000000000 lt!18370 lt!18366 #b00000000000000000000000000000000))) t!4230) tb!999))

(declare-fun result!1739 () Bool)

(assert (=> tb!999 (= result!1739 tp_is_empty!1891)))

(assert (=> b!43729 t!4230))

(declare-fun b_and!2689 () Bool)

(assert (= b_and!2681 (and (=> t!4230 result!1739) b_and!2689)))

(declare-fun m!37869 () Bool)

(assert (=> bm!3503 m!37869))

(declare-fun m!37871 () Bool)

(assert (=> b!43714 m!37871))

(assert (=> b!43714 m!37871))

(declare-fun m!37873 () Bool)

(assert (=> b!43714 m!37873))

(declare-fun m!37875 () Bool)

(assert (=> bm!3507 m!37875))

(assert (=> b!43721 m!37871))

(assert (=> b!43721 m!37871))

(declare-fun m!37879 () Bool)

(assert (=> b!43721 m!37879))

(assert (=> b!43720 m!37875))

(declare-fun m!37881 () Bool)

(assert (=> b!43720 m!37881))

(declare-fun m!37883 () Bool)

(assert (=> b!43720 m!37883))

(declare-fun m!37885 () Bool)

(assert (=> b!43720 m!37885))

(declare-fun m!37887 () Bool)

(assert (=> b!43720 m!37887))

(declare-fun m!37889 () Bool)

(assert (=> b!43720 m!37889))

(assert (=> b!43720 m!37883))

(declare-fun m!37891 () Bool)

(assert (=> b!43720 m!37891))

(assert (=> b!43720 m!37887))

(declare-fun m!37893 () Bool)

(assert (=> b!43720 m!37893))

