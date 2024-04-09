; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6746 () Bool)

(assert start!6746)

(declare-fun b_free!1517 () Bool)

(declare-fun b_next!1517 () Bool)

(assert (=> start!6746 (= b_free!1517 (not b_next!1517))))

(declare-fun tp!5963 () Bool)

(declare-fun b_and!2717 () Bool)

(assert (=> start!6746 (= tp!5963 b_and!2717)))

(declare-fun res!26070 () Bool)

(declare-fun e!27995 () Bool)

(assert (=> start!6746 (=> (not res!26070) (not e!27995))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6746 (= res!26070 (validMask!0 mask!853))))

(assert (=> start!6746 e!27995))

(assert (=> start!6746 true))

(assert (=> start!6746 tp!5963))

(declare-fun b!44142 () Bool)

(declare-fun e!27996 () Bool)

(assert (=> b!44142 (= e!27995 (not e!27996))))

(declare-fun res!26071 () Bool)

(assert (=> b!44142 (=> (not res!26071) (not e!27996))))

(declare-datatypes ((array!2955 0))(
  ( (array!2956 (arr!1421 (Array (_ BitVec 32) (_ BitVec 64))) (size!1624 (_ BitVec 32))) )
))
(declare-datatypes ((V!2329 0))(
  ( (V!2330 (val!992 Int)) )
))
(declare-datatypes ((ValueCell!706 0))(
  ( (ValueCellFull!706 (v!2087 V!2329)) (EmptyCell!706) )
))
(declare-datatypes ((array!2957 0))(
  ( (array!2958 (arr!1422 (Array (_ BitVec 32) ValueCell!706)) (size!1625 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!392 0))(
  ( (LongMapFixedSize!393 (defaultEntry!1898 Int) (mask!5475 (_ BitVec 32)) (extraKeys!1789 (_ BitVec 32)) (zeroValue!1816 V!2329) (minValue!1816 V!2329) (_size!245 (_ BitVec 32)) (_keys!3465 array!2955) (_values!1881 array!2957) (_vacant!245 (_ BitVec 32))) )
))
(declare-fun lt!19348 () LongMapFixedSize!392)

(declare-fun valid!130 (LongMapFixedSize!392) Bool)

(assert (=> b!44142 (= res!26071 (valid!130 lt!19348))))

(declare-datatypes ((Unit!1237 0))(
  ( (Unit!1238) )
))
(declare-fun lt!19356 () Unit!1237)

(declare-fun e!27994 () Unit!1237)

(assert (=> b!44142 (= lt!19356 e!27994)))

(declare-fun c!5755 () Bool)

(declare-fun lt!19357 () Bool)

(assert (=> b!44142 (= c!5755 lt!19357)))

(declare-datatypes ((tuple2!1642 0))(
  ( (tuple2!1643 (_1!831 (_ BitVec 64)) (_2!831 V!2329)) )
))
(declare-datatypes ((List!1228 0))(
  ( (Nil!1225) (Cons!1224 (h!1801 tuple2!1642) (t!4255 List!1228)) )
))
(declare-datatypes ((ListLongMap!1223 0))(
  ( (ListLongMap!1224 (toList!627 List!1228)) )
))
(declare-fun lt!19350 () ListLongMap!1223)

(assert (=> b!44142 (= lt!19357 (not (= lt!19350 (ListLongMap!1224 Nil!1225))))))

(declare-fun map!847 (LongMapFixedSize!392) ListLongMap!1223)

(assert (=> b!44142 (= lt!19350 (map!847 lt!19348))))

(declare-fun lt!19355 () array!2955)

(declare-datatypes ((List!1229 0))(
  ( (Nil!1226) (Cons!1225 (h!1802 (_ BitVec 64)) (t!4256 List!1229)) )
))
(declare-fun arrayNoDuplicates!0 (array!2955 (_ BitVec 32) List!1229) Bool)

(assert (=> b!44142 (arrayNoDuplicates!0 lt!19355 #b00000000000000000000000000000000 Nil!1226)))

(declare-fun lt!19360 () Unit!1237)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2955 (_ BitVec 32) (_ BitVec 32) List!1229) Unit!1237)

(assert (=> b!44142 (= lt!19360 (lemmaArrayNoDuplicatesInAll0Array!0 lt!19355 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2955 (_ BitVec 32)) Bool)

(assert (=> b!44142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19355 mask!853)))

(declare-fun lt!19359 () Unit!1237)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2955 (_ BitVec 32) (_ BitVec 32)) Unit!1237)

(assert (=> b!44142 (= lt!19359 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!19355 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2955 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!44142 (= (arrayCountValidKeys!0 lt!19355 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!19351 () Unit!1237)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2955 (_ BitVec 32) (_ BitVec 32)) Unit!1237)

(assert (=> b!44142 (= lt!19351 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!19355 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!19358 () V!2329)

(declare-fun lt!19352 () array!2957)

(assert (=> b!44142 (= lt!19348 (LongMapFixedSize!393 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19358 lt!19358 #b00000000000000000000000000000000 lt!19355 lt!19352 #b00000000000000000000000000000000))))

(assert (=> b!44142 (= lt!19352 (array!2958 ((as const (Array (_ BitVec 32) ValueCell!706)) EmptyCell!706) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!44142 (= lt!19355 (array!2956 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!267 (Int (_ BitVec 64)) V!2329)

(assert (=> b!44142 (= lt!19358 (dynLambda!267 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!44143 () Bool)

(declare-fun Unit!1239 () Unit!1237)

(assert (=> b!44143 (= e!27994 Unit!1239)))

(declare-fun lt!19353 () tuple2!1642)

(declare-fun head!895 (List!1228) tuple2!1642)

(assert (=> b!44143 (= lt!19353 (head!895 (toList!627 lt!19350)))))

(declare-fun lt!19349 () Unit!1237)

(declare-fun lemmaKeyInListMapIsInArray!110 (array!2955 array!2957 (_ BitVec 32) (_ BitVec 32) V!2329 V!2329 (_ BitVec 64) Int) Unit!1237)

(assert (=> b!44143 (= lt!19349 (lemmaKeyInListMapIsInArray!110 lt!19355 lt!19352 mask!853 #b00000000000000000000000000000000 lt!19358 lt!19358 (_1!831 lt!19353) defaultEntry!470))))

(declare-fun res!26069 () Bool)

(assert (=> b!44143 (= res!26069 (and (not (= (_1!831 lt!19353) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!831 lt!19353) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!27993 () Bool)

(assert (=> b!44143 (=> (not res!26069) (not e!27993))))

(assert (=> b!44143 e!27993))

(declare-fun lt!19354 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2955 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!44143 (= lt!19354 (arrayScanForKey!0 lt!19355 (_1!831 lt!19353) #b00000000000000000000000000000000))))

(assert (=> b!44143 false))

(declare-fun b!44144 () Bool)

(declare-fun arrayContainsKey!0 (array!2955 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!44144 (= e!27993 (arrayContainsKey!0 lt!19355 (_1!831 lt!19353) #b00000000000000000000000000000000))))

(declare-fun b!44145 () Bool)

(declare-fun Unit!1240 () Unit!1237)

(assert (=> b!44145 (= e!27994 Unit!1240)))

(declare-fun b!44146 () Bool)

(assert (=> b!44146 (= e!27996 (not lt!19357))))

(assert (= (and start!6746 res!26070) b!44142))

(assert (= (and b!44142 c!5755) b!44143))

(assert (= (and b!44142 (not c!5755)) b!44145))

(assert (= (and b!44143 res!26069) b!44144))

(assert (= (and b!44142 res!26071) b!44146))

(declare-fun b_lambda!2333 () Bool)

(assert (=> (not b_lambda!2333) (not b!44142)))

(declare-fun t!4254 () Bool)

(declare-fun tb!1013 () Bool)

(assert (=> (and start!6746 (= defaultEntry!470 defaultEntry!470) t!4254) tb!1013))

(declare-fun result!1763 () Bool)

(declare-fun tp_is_empty!1907 () Bool)

(assert (=> tb!1013 (= result!1763 tp_is_empty!1907)))

(assert (=> b!44142 t!4254))

(declare-fun b_and!2719 () Bool)

(assert (= b_and!2717 (and (=> t!4254 result!1763) b_and!2719)))

(declare-fun m!38383 () Bool)

(assert (=> start!6746 m!38383))

(declare-fun m!38385 () Bool)

(assert (=> b!44142 m!38385))

(declare-fun m!38387 () Bool)

(assert (=> b!44142 m!38387))

(declare-fun m!38389 () Bool)

(assert (=> b!44142 m!38389))

(declare-fun m!38391 () Bool)

(assert (=> b!44142 m!38391))

(declare-fun m!38393 () Bool)

(assert (=> b!44142 m!38393))

(declare-fun m!38395 () Bool)

(assert (=> b!44142 m!38395))

(declare-fun m!38397 () Bool)

(assert (=> b!44142 m!38397))

(declare-fun m!38399 () Bool)

(assert (=> b!44142 m!38399))

(declare-fun m!38401 () Bool)

(assert (=> b!44142 m!38401))

(declare-fun m!38403 () Bool)

(assert (=> b!44143 m!38403))

(declare-fun m!38405 () Bool)

(assert (=> b!44143 m!38405))

(declare-fun m!38407 () Bool)

(assert (=> b!44143 m!38407))

(declare-fun m!38409 () Bool)

(assert (=> b!44144 m!38409))

(push 1)

(assert (not b_lambda!2333))

(assert (not b_next!1517))

(assert (not start!6746))

(assert (not b!44144))

(assert (not b!44143))

(assert (not b!44142))

(assert tp_is_empty!1907)

(assert b_and!2719)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2719)

(assert (not b_next!1517))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2335 () Bool)

(assert (= b_lambda!2333 (or (and start!6746 b_free!1517) b_lambda!2335)))

(push 1)

(assert (not b_next!1517))

(assert (not start!6746))

(assert (not b!44144))

(assert (not b!44143))

(assert (not b!44142))

(assert tp_is_empty!1907)

(assert (not b_lambda!2335))

(assert b_and!2719)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2719)

(assert (not b_next!1517))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8305 () Bool)

(assert (=> d!8305 (arrayNoDuplicates!0 lt!19355 #b00000000000000000000000000000000 Nil!1226)))

(declare-fun lt!19366 () Unit!1237)

(declare-fun choose!111 (array!2955 (_ BitVec 32) (_ BitVec 32) List!1229) Unit!1237)

(assert (=> d!8305 (= lt!19366 (choose!111 lt!19355 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1226))))

(assert (=> d!8305 (= (size!1624 lt!19355) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!8305 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!19355 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1226) lt!19366)))

(declare-fun bs!2006 () Bool)

(assert (= bs!2006 d!8305))

(assert (=> bs!2006 m!38389))

(declare-fun m!38413 () Bool)

(assert (=> bs!2006 m!38413))

(assert (=> b!44142 d!8305))

(declare-fun d!8309 () Bool)

(declare-fun getCurrentListMap!355 (array!2955 array!2957 (_ BitVec 32) (_ BitVec 32) V!2329 V!2329 (_ BitVec 32) Int) ListLongMap!1223)

(assert (=> d!8309 (= (map!847 lt!19348) (getCurrentListMap!355 (_keys!3465 lt!19348) (_values!1881 lt!19348) (mask!5475 lt!19348) (extraKeys!1789 lt!19348) (zeroValue!1816 lt!19348) (minValue!1816 lt!19348) #b00000000000000000000000000000000 (defaultEntry!1898 lt!19348)))))

(declare-fun bs!2009 () Bool)

(assert (= bs!2009 d!8309))

(declare-fun m!38419 () Bool)

(assert (=> bs!2009 m!38419))

(assert (=> b!44142 d!8309))

(declare-fun b!44173 () Bool)

(declare-fun e!28015 () Bool)

(declare-fun call!3556 () Bool)

(assert (=> b!44173 (= e!28015 call!3556)))

(declare-fun b!44174 () Bool)

(declare-fun e!28014 () Bool)

(assert (=> b!44174 (= e!28014 e!28015)))

(declare-fun c!5763 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!44174 (= c!5763 (validKeyInArray!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000)))))

(declare-fun bm!3553 () Bool)

(assert (=> bm!3553 (= call!3556 (arrayNoDuplicates!0 lt!19355 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5763 (Cons!1225 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) Nil!1226) Nil!1226)))))

(declare-fun d!8319 () Bool)

(declare-fun res!26083 () Bool)

(declare-fun e!28016 () Bool)

(assert (=> d!8319 (=> res!26083 e!28016)))

(assert (=> d!8319 (= res!26083 (bvsge #b00000000000000000000000000000000 (size!1624 lt!19355)))))

(assert (=> d!8319 (= (arrayNoDuplicates!0 lt!19355 #b00000000000000000000000000000000 Nil!1226) e!28016)))

(declare-fun b!44175 () Bool)

(assert (=> b!44175 (= e!28016 e!28014)))

(declare-fun res!26082 () Bool)

(assert (=> b!44175 (=> (not res!26082) (not e!28014))))

(declare-fun e!28017 () Bool)

(assert (=> b!44175 (= res!26082 (not e!28017))))

(declare-fun res!26084 () Bool)

(assert (=> b!44175 (=> (not res!26084) (not e!28017))))

(assert (=> b!44175 (= res!26084 (validKeyInArray!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000)))))

(declare-fun b!44176 () Bool)

(assert (=> b!44176 (= e!28015 call!3556)))

(declare-fun b!44177 () Bool)

(declare-fun contains!576 (List!1229 (_ BitVec 64)) Bool)

(assert (=> b!44177 (= e!28017 (contains!576 Nil!1226 (select (arr!1421 lt!19355) #b00000000000000000000000000000000)))))

(assert (= (and d!8319 (not res!26083)) b!44175))

(assert (= (and b!44175 res!26084) b!44177))

(assert (= (and b!44175 res!26082) b!44174))

(assert (= (and b!44174 c!5763) b!44176))

(assert (= (and b!44174 (not c!5763)) b!44173))

(assert (= (or b!44176 b!44173) bm!3553))

(declare-fun m!38423 () Bool)

(assert (=> b!44174 m!38423))

(assert (=> b!44174 m!38423))

(declare-fun m!38425 () Bool)

(assert (=> b!44174 m!38425))

(assert (=> bm!3553 m!38423))

(declare-fun m!38427 () Bool)

(assert (=> bm!3553 m!38427))

(assert (=> b!44175 m!38423))

(assert (=> b!44175 m!38423))

(assert (=> b!44175 m!38425))

(assert (=> b!44177 m!38423))

(assert (=> b!44177 m!38423))

(declare-fun m!38429 () Bool)

(assert (=> b!44177 m!38429))

(assert (=> b!44142 d!8319))

(declare-fun d!8323 () Bool)

(declare-fun res!26103 () Bool)

(declare-fun e!28038 () Bool)

(assert (=> d!8323 (=> (not res!26103) (not e!28038))))

(declare-fun simpleValid!29 (LongMapFixedSize!392) Bool)

(assert (=> d!8323 (= res!26103 (simpleValid!29 lt!19348))))

(assert (=> d!8323 (= (valid!130 lt!19348) e!28038)))

(declare-fun b!44208 () Bool)

(declare-fun res!26104 () Bool)

(assert (=> b!44208 (=> (not res!26104) (not e!28038))))

(assert (=> b!44208 (= res!26104 (= (arrayCountValidKeys!0 (_keys!3465 lt!19348) #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))) (_size!245 lt!19348)))))

(declare-fun b!44209 () Bool)

(declare-fun res!26105 () Bool)

(assert (=> b!44209 (=> (not res!26105) (not e!28038))))

(assert (=> b!44209 (= res!26105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3465 lt!19348) (mask!5475 lt!19348)))))

(declare-fun b!44210 () Bool)

(assert (=> b!44210 (= e!28038 (arrayNoDuplicates!0 (_keys!3465 lt!19348) #b00000000000000000000000000000000 Nil!1226))))

(assert (= (and d!8323 res!26103) b!44208))

(assert (= (and b!44208 res!26104) b!44209))

(assert (= (and b!44209 res!26105) b!44210))

(declare-fun m!38449 () Bool)

(assert (=> d!8323 m!38449))

(declare-fun m!38451 () Bool)

(assert (=> b!44208 m!38451))

(declare-fun m!38453 () Bool)

(assert (=> b!44209 m!38453))

(declare-fun m!38455 () Bool)

(assert (=> b!44210 m!38455))

(assert (=> b!44142 d!8323))

(declare-fun d!8329 () Bool)

(assert (=> d!8329 (= (arrayCountValidKeys!0 lt!19355 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!19390 () Unit!1237)

(declare-fun choose!59 (array!2955 (_ BitVec 32) (_ BitVec 32)) Unit!1237)

(assert (=> d!8329 (= lt!19390 (choose!59 lt!19355 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8329 (bvslt (size!1624 lt!19355) #b01111111111111111111111111111111)))

(assert (=> d!8329 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!19355 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!19390)))

(declare-fun bs!2010 () Bool)

(assert (= bs!2010 d!8329))

(assert (=> bs!2010 m!38393))

(declare-fun m!38463 () Bool)

(assert (=> bs!2010 m!38463))

(assert (=> b!44142 d!8329))

(declare-fun b!44235 () Bool)

(declare-fun e!28052 () (_ BitVec 32))

(assert (=> b!44235 (= e!28052 #b00000000000000000000000000000000)))

(declare-fun bm!3560 () Bool)

(declare-fun call!3563 () (_ BitVec 32))

(assert (=> bm!3560 (= call!3563 (arrayCountValidKeys!0 lt!19355 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!44236 () Bool)

(declare-fun e!28053 () (_ BitVec 32))

(assert (=> b!44236 (= e!28052 e!28053)))

(declare-fun c!5776 () Bool)

(assert (=> b!44236 (= c!5776 (validKeyInArray!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000)))))

(declare-fun d!8335 () Bool)

(declare-fun lt!19393 () (_ BitVec 32))

(assert (=> d!8335 (and (bvsge lt!19393 #b00000000000000000000000000000000) (bvsle lt!19393 (bvsub (size!1624 lt!19355) #b00000000000000000000000000000000)))))

(assert (=> d!8335 (= lt!19393 e!28052)))

(declare-fun c!5775 () Bool)

(assert (=> d!8335 (= c!5775 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8335 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1624 lt!19355)))))

(assert (=> d!8335 (= (arrayCountValidKeys!0 lt!19355 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!19393)))

(declare-fun b!44237 () Bool)

(assert (=> b!44237 (= e!28053 (bvadd #b00000000000000000000000000000001 call!3563))))

(declare-fun b!44238 () Bool)

(assert (=> b!44238 (= e!28053 call!3563)))

(assert (= (and d!8335 c!5775) b!44235))

(assert (= (and d!8335 (not c!5775)) b!44236))

(assert (= (and b!44236 c!5776) b!44237))

(assert (= (and b!44236 (not c!5776)) b!44238))

(assert (= (or b!44237 b!44238) bm!3560))

(declare-fun m!38473 () Bool)

(assert (=> bm!3560 m!38473))

(assert (=> b!44236 m!38423))

(assert (=> b!44236 m!38423))

(assert (=> b!44236 m!38425))

(assert (=> b!44142 d!8335))

(declare-fun d!8339 () Bool)

(assert (=> d!8339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19355 mask!853)))

(declare-fun lt!19398 () Unit!1237)

(declare-fun choose!34 (array!2955 (_ BitVec 32) (_ BitVec 32)) Unit!1237)

(assert (=> d!8339 (= lt!19398 (choose!34 lt!19355 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!8339 (validMask!0 mask!853)))

(assert (=> d!8339 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!19355 mask!853 #b00000000000000000000000000000000) lt!19398)))

(declare-fun bs!2011 () Bool)

(assert (= bs!2011 d!8339))

(assert (=> bs!2011 m!38399))

(declare-fun m!38475 () Bool)

(assert (=> bs!2011 m!38475))

(assert (=> bs!2011 m!38383))

(assert (=> b!44142 d!8339))

(declare-fun b!44271 () Bool)

(declare-fun e!28075 () Bool)

(declare-fun call!3572 () Bool)

(assert (=> b!44271 (= e!28075 call!3572)))

(declare-fun b!44272 () Bool)

(declare-fun e!28077 () Bool)

(assert (=> b!44272 (= e!28075 e!28077)))

(declare-fun lt!19418 () (_ BitVec 64))

(assert (=> b!44272 (= lt!19418 (select (arr!1421 lt!19355) #b00000000000000000000000000000000))))

(declare-fun lt!19419 () Unit!1237)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2955 (_ BitVec 64) (_ BitVec 32)) Unit!1237)

(assert (=> b!44272 (= lt!19419 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19355 lt!19418 #b00000000000000000000000000000000))))

(assert (=> b!44272 (arrayContainsKey!0 lt!19355 lt!19418 #b00000000000000000000000000000000)))

(declare-fun lt!19417 () Unit!1237)

(assert (=> b!44272 (= lt!19417 lt!19419)))

(declare-fun res!26131 () Bool)

(declare-datatypes ((SeekEntryResult!215 0))(
  ( (MissingZero!215 (index!2982 (_ BitVec 32))) (Found!215 (index!2983 (_ BitVec 32))) (Intermediate!215 (undefined!1027 Bool) (index!2984 (_ BitVec 32)) (x!8369 (_ BitVec 32))) (Undefined!215) (MissingVacant!215 (index!2985 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2955 (_ BitVec 32)) SeekEntryResult!215)

(assert (=> b!44272 (= res!26131 (= (seekEntryOrOpen!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) lt!19355 mask!853) (Found!215 #b00000000000000000000000000000000)))))

(assert (=> b!44272 (=> (not res!26131) (not e!28077))))

(declare-fun d!8343 () Bool)

(declare-fun res!26130 () Bool)

(declare-fun e!28076 () Bool)

(assert (=> d!8343 (=> res!26130 e!28076)))

(assert (=> d!8343 (= res!26130 (bvsge #b00000000000000000000000000000000 (size!1624 lt!19355)))))

(assert (=> d!8343 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19355 mask!853) e!28076)))

(declare-fun b!44273 () Bool)

(assert (=> b!44273 (= e!28077 call!3572)))

(declare-fun b!44274 () Bool)

(assert (=> b!44274 (= e!28076 e!28075)))

(declare-fun c!5788 () Bool)

(assert (=> b!44274 (= c!5788 (validKeyInArray!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000)))))

(declare-fun bm!3569 () Bool)

(assert (=> bm!3569 (= call!3572 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!19355 mask!853))))

(assert (= (and d!8343 (not res!26130)) b!44274))

(assert (= (and b!44274 c!5788) b!44272))

(assert (= (and b!44274 (not c!5788)) b!44271))

(assert (= (and b!44272 res!26131) b!44273))

(assert (= (or b!44273 b!44271) bm!3569))

(assert (=> b!44272 m!38423))

(declare-fun m!38491 () Bool)

(assert (=> b!44272 m!38491))

(declare-fun m!38493 () Bool)

(assert (=> b!44272 m!38493))

(assert (=> b!44272 m!38423))

(declare-fun m!38495 () Bool)

(assert (=> b!44272 m!38495))

(assert (=> b!44274 m!38423))

(assert (=> b!44274 m!38423))

(assert (=> b!44274 m!38425))

(declare-fun m!38499 () Bool)

(assert (=> bm!3569 m!38499))

(assert (=> b!44142 d!8343))

(declare-fun d!8353 () Bool)

(assert (=> d!8353 (= (head!895 (toList!627 lt!19350)) (h!1801 (toList!627 lt!19350)))))

(assert (=> b!44143 d!8353))

(declare-fun d!8355 () Bool)

(declare-fun e!28080 () Bool)

(assert (=> d!8355 e!28080))

(declare-fun c!5791 () Bool)

(assert (=> d!8355 (= c!5791 (and (not (= (_1!831 lt!19353) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!831 lt!19353) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!19426 () Unit!1237)

(declare-fun choose!272 (array!2955 array!2957 (_ BitVec 32) (_ BitVec 32) V!2329 V!2329 (_ BitVec 64) Int) Unit!1237)

(assert (=> d!8355 (= lt!19426 (choose!272 lt!19355 lt!19352 mask!853 #b00000000000000000000000000000000 lt!19358 lt!19358 (_1!831 lt!19353) defaultEntry!470))))

(assert (=> d!8355 (validMask!0 mask!853)))

(assert (=> d!8355 (= (lemmaKeyInListMapIsInArray!110 lt!19355 lt!19352 mask!853 #b00000000000000000000000000000000 lt!19358 lt!19358 (_1!831 lt!19353) defaultEntry!470) lt!19426)))

(declare-fun b!44279 () Bool)

(assert (=> b!44279 (= e!28080 (arrayContainsKey!0 lt!19355 (_1!831 lt!19353) #b00000000000000000000000000000000))))

(declare-fun b!44280 () Bool)

(assert (=> b!44280 (= e!28080 (ite (= (_1!831 lt!19353) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!8355 c!5791) b!44279))

(assert (= (and d!8355 (not c!5791)) b!44280))

(declare-fun m!38503 () Bool)

(assert (=> d!8355 m!38503))

(assert (=> d!8355 m!38383))

(assert (=> b!44279 m!38409))

(assert (=> b!44143 d!8355))

(declare-fun d!8359 () Bool)

(declare-fun lt!19432 () (_ BitVec 32))

(assert (=> d!8359 (and (or (bvslt lt!19432 #b00000000000000000000000000000000) (bvsge lt!19432 (size!1624 lt!19355)) (and (bvsge lt!19432 #b00000000000000000000000000000000) (bvslt lt!19432 (size!1624 lt!19355)))) (bvsge lt!19432 #b00000000000000000000000000000000) (bvslt lt!19432 (size!1624 lt!19355)) (= (select (arr!1421 lt!19355) lt!19432) (_1!831 lt!19353)))))

(declare-fun e!28095 () (_ BitVec 32))

(assert (=> d!8359 (= lt!19432 e!28095)))

(declare-fun c!5800 () Bool)

(assert (=> d!8359 (= c!5800 (= (select (arr!1421 lt!19355) #b00000000000000000000000000000000) (_1!831 lt!19353)))))

(assert (=> d!8359 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1624 lt!19355)) (bvslt (size!1624 lt!19355) #b01111111111111111111111111111111))))

(assert (=> d!8359 (= (arrayScanForKey!0 lt!19355 (_1!831 lt!19353) #b00000000000000000000000000000000) lt!19432)))

(declare-fun b!44303 () Bool)

(assert (=> b!44303 (= e!28095 #b00000000000000000000000000000000)))

(declare-fun b!44304 () Bool)

(assert (=> b!44304 (= e!28095 (arrayScanForKey!0 lt!19355 (_1!831 lt!19353) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8359 c!5800) b!44303))

(assert (= (and d!8359 (not c!5800)) b!44304))

(declare-fun m!38509 () Bool)

(assert (=> d!8359 m!38509))

(assert (=> d!8359 m!38423))

(declare-fun m!38511 () Bool)

(assert (=> b!44304 m!38511))

(assert (=> b!44143 d!8359))

(declare-fun d!8369 () Bool)

(assert (=> d!8369 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6746 d!8369))

(declare-fun d!8377 () Bool)

(declare-fun res!26151 () Bool)

(declare-fun e!28109 () Bool)

(assert (=> d!8377 (=> res!26151 e!28109)))

(assert (=> d!8377 (= res!26151 (= (select (arr!1421 lt!19355) #b00000000000000000000000000000000) (_1!831 lt!19353)))))

(assert (=> d!8377 (= (arrayContainsKey!0 lt!19355 (_1!831 lt!19353) #b00000000000000000000000000000000) e!28109)))

(declare-fun b!44330 () Bool)

(declare-fun e!28110 () Bool)

(assert (=> b!44330 (= e!28109 e!28110)))

(declare-fun res!26152 () Bool)

(assert (=> b!44330 (=> (not res!26152) (not e!28110))))

(assert (=> b!44330 (= res!26152 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1624 lt!19355)))))

(declare-fun b!44331 () Bool)

(assert (=> b!44331 (= e!28110 (arrayContainsKey!0 lt!19355 (_1!831 lt!19353) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8377 (not res!26151)) b!44330))

(assert (= (and b!44330 res!26152) b!44331))

(assert (=> d!8377 m!38423))

(declare-fun m!38529 () Bool)

(assert (=> b!44331 m!38529))

(assert (=> b!44144 d!8377))

(push 1)

(assert (not b_next!1517))

(assert (not b!44208))

(assert (not b!44174))

(assert (not bm!3553))

(assert (not b!44304))

(assert (not b!44210))

(assert (not d!8323))

(assert (not b!44274))

(assert (not b!44279))

(assert (not bm!3560))

(assert (not b_lambda!2335))

(assert b_and!2719)

(assert (not b!44177))

(assert (not d!8305))

(assert (not b!44236))

(assert (not d!8309))

(assert (not b!44175))

(assert (not b!44209))

(assert (not d!8329))

(assert (not d!8355))

(assert (not bm!3569))

(assert (not d!8339))

(assert (not b!44331))

(assert tp_is_empty!1907)

(assert (not b!44272))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2719)

(assert (not b_next!1517))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8385 () Bool)

(assert (=> d!8385 (= (validKeyInArray!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000)) (and (not (= (select (arr!1421 lt!19355) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1421 lt!19355) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!44175 d!8385))

(assert (=> d!8339 d!8343))

(declare-fun d!8391 () Bool)

(assert (=> d!8391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19355 mask!853)))

(assert (=> d!8391 true))

(declare-fun _$30!69 () Unit!1237)

(assert (=> d!8391 (= (choose!34 lt!19355 mask!853 #b00000000000000000000000000000000) _$30!69)))

(declare-fun bs!2018 () Bool)

(assert (= bs!2018 d!8391))

(assert (=> bs!2018 m!38399))

(assert (=> d!8339 d!8391))

(assert (=> d!8339 d!8369))

(declare-fun b!44363 () Bool)

(declare-fun e!28134 () (_ BitVec 32))

(assert (=> b!44363 (= e!28134 #b00000000000000000000000000000000)))

(declare-fun bm!3579 () Bool)

(declare-fun call!3582 () (_ BitVec 32))

(assert (=> bm!3579 (= call!3582 (arrayCountValidKeys!0 lt!19355 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!44364 () Bool)

(declare-fun e!28135 () (_ BitVec 32))

(assert (=> b!44364 (= e!28134 e!28135)))

(declare-fun c!5816 () Bool)

(assert (=> b!44364 (= c!5816 (validKeyInArray!0 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!8397 () Bool)

(declare-fun lt!19450 () (_ BitVec 32))

(assert (=> d!8397 (and (bvsge lt!19450 #b00000000000000000000000000000000) (bvsle lt!19450 (bvsub (size!1624 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!8397 (= lt!19450 e!28134)))

(declare-fun c!5815 () Bool)

(assert (=> d!8397 (= c!5815 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8397 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1624 lt!19355)))))

(assert (=> d!8397 (= (arrayCountValidKeys!0 lt!19355 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!19450)))

(declare-fun b!44365 () Bool)

(assert (=> b!44365 (= e!28135 (bvadd #b00000000000000000000000000000001 call!3582))))

(declare-fun b!44366 () Bool)

(assert (=> b!44366 (= e!28135 call!3582)))

(assert (= (and d!8397 c!5815) b!44363))

(assert (= (and d!8397 (not c!5815)) b!44364))

(assert (= (and b!44364 c!5816) b!44365))

(assert (= (and b!44364 (not c!5816)) b!44366))

(assert (= (or b!44365 b!44366) bm!3579))

(declare-fun m!38563 () Bool)

(assert (=> bm!3579 m!38563))

(declare-fun m!38565 () Bool)

(assert (=> b!44364 m!38565))

(assert (=> b!44364 m!38565))

(declare-fun m!38567 () Bool)

(assert (=> b!44364 m!38567))

(assert (=> bm!3560 d!8397))

(declare-fun b!44375 () Bool)

(declare-fun res!26177 () Bool)

(declare-fun e!28138 () Bool)

(assert (=> b!44375 (=> (not res!26177) (not e!28138))))

(assert (=> b!44375 (= res!26177 (and (= (size!1625 (_values!1881 lt!19348)) (bvadd (mask!5475 lt!19348) #b00000000000000000000000000000001)) (= (size!1624 (_keys!3465 lt!19348)) (size!1625 (_values!1881 lt!19348))) (bvsge (_size!245 lt!19348) #b00000000000000000000000000000000) (bvsle (_size!245 lt!19348) (bvadd (mask!5475 lt!19348) #b00000000000000000000000000000001))))))

(declare-fun d!8401 () Bool)

(declare-fun res!26179 () Bool)

(assert (=> d!8401 (=> (not res!26179) (not e!28138))))

(assert (=> d!8401 (= res!26179 (validMask!0 (mask!5475 lt!19348)))))

(assert (=> d!8401 (= (simpleValid!29 lt!19348) e!28138)))

(declare-fun b!44378 () Bool)

(assert (=> b!44378 (= e!28138 (and (bvsge (extraKeys!1789 lt!19348) #b00000000000000000000000000000000) (bvsle (extraKeys!1789 lt!19348) #b00000000000000000000000000000011) (bvsge (_vacant!245 lt!19348) #b00000000000000000000000000000000)))))

(declare-fun b!44377 () Bool)

(declare-fun res!26178 () Bool)

(assert (=> b!44377 (=> (not res!26178) (not e!28138))))

(declare-fun size!1638 (LongMapFixedSize!392) (_ BitVec 32))

(assert (=> b!44377 (= res!26178 (= (size!1638 lt!19348) (bvadd (_size!245 lt!19348) (bvsdiv (bvadd (extraKeys!1789 lt!19348) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!44376 () Bool)

(declare-fun res!26176 () Bool)

(assert (=> b!44376 (=> (not res!26176) (not e!28138))))

(assert (=> b!44376 (= res!26176 (bvsge (size!1638 lt!19348) (_size!245 lt!19348)))))

(assert (= (and d!8401 res!26179) b!44375))

(assert (= (and b!44375 res!26177) b!44376))

(assert (= (and b!44376 res!26176) b!44377))

(assert (= (and b!44377 res!26178) b!44378))

(declare-fun m!38569 () Bool)

(assert (=> d!8401 m!38569))

(declare-fun m!38571 () Bool)

(assert (=> b!44377 m!38571))

(assert (=> b!44376 m!38571))

(assert (=> d!8323 d!8401))

(declare-fun d!8403 () Bool)

(declare-fun lt!19453 () Bool)

(declare-fun content!41 (List!1229) (Set (_ BitVec 64)))

(assert (=> d!8403 (= lt!19453 (member (select (arr!1421 lt!19355) #b00000000000000000000000000000000) (content!41 Nil!1226)))))

(declare-fun e!28143 () Bool)

(assert (=> d!8403 (= lt!19453 e!28143)))

(declare-fun res!26185 () Bool)

(assert (=> d!8403 (=> (not res!26185) (not e!28143))))

(assert (=> d!8403 (= res!26185 (is-Cons!1225 Nil!1226))))

(assert (=> d!8403 (= (contains!576 Nil!1226 (select (arr!1421 lt!19355) #b00000000000000000000000000000000)) lt!19453)))

(declare-fun b!44383 () Bool)

(declare-fun e!28144 () Bool)

(assert (=> b!44383 (= e!28143 e!28144)))

(declare-fun res!26184 () Bool)

(assert (=> b!44383 (=> res!26184 e!28144)))

(assert (=> b!44383 (= res!26184 (= (h!1802 Nil!1226) (select (arr!1421 lt!19355) #b00000000000000000000000000000000)))))

(declare-fun b!44384 () Bool)

(assert (=> b!44384 (= e!28144 (contains!576 (t!4256 Nil!1226) (select (arr!1421 lt!19355) #b00000000000000000000000000000000)))))

(assert (= (and d!8403 res!26185) b!44383))

(assert (= (and b!44383 (not res!26184)) b!44384))

(declare-fun m!38573 () Bool)

(assert (=> d!8403 m!38573))

(assert (=> d!8403 m!38423))

(declare-fun m!38575 () Bool)

(assert (=> d!8403 m!38575))

(assert (=> b!44384 m!38423))

(declare-fun m!38577 () Bool)

(assert (=> b!44384 m!38577))

(assert (=> b!44177 d!8403))

(assert (=> b!44236 d!8385))

(assert (=> b!44279 d!8377))

(assert (=> b!44274 d!8385))

(declare-fun d!8405 () Bool)

(declare-fun res!26186 () Bool)

(declare-fun e!28145 () Bool)

(assert (=> d!8405 (=> res!26186 e!28145)))

(assert (=> d!8405 (= res!26186 (= (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_1!831 lt!19353)))))

(assert (=> d!8405 (= (arrayContainsKey!0 lt!19355 (_1!831 lt!19353) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!28145)))

(declare-fun b!44385 () Bool)

(declare-fun e!28146 () Bool)

(assert (=> b!44385 (= e!28145 e!28146)))

(declare-fun res!26187 () Bool)

(assert (=> b!44385 (=> (not res!26187) (not e!28146))))

(assert (=> b!44385 (= res!26187 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1624 lt!19355)))))

(declare-fun b!44386 () Bool)

(assert (=> b!44386 (= e!28146 (arrayContainsKey!0 lt!19355 (_1!831 lt!19353) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8405 (not res!26186)) b!44385))

(assert (= (and b!44385 res!26187) b!44386))

(assert (=> d!8405 m!38565))

(declare-fun m!38579 () Bool)

(assert (=> b!44386 m!38579))

(assert (=> b!44331 d!8405))

(assert (=> b!44174 d!8385))

(assert (=> d!8305 d!8319))

(declare-fun d!8409 () Bool)

(assert (=> d!8409 (arrayNoDuplicates!0 lt!19355 #b00000000000000000000000000000000 Nil!1226)))

(assert (=> d!8409 true))

(declare-fun res!26190 () Unit!1237)

(assert (=> d!8409 (= (choose!111 lt!19355 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1226) res!26190)))

(declare-fun bs!2019 () Bool)

(assert (= bs!2019 d!8409))

(assert (=> bs!2019 m!38389))

(assert (=> d!8305 d!8409))

(declare-fun b!44387 () Bool)

(declare-fun e!28147 () Bool)

(declare-fun call!3583 () Bool)

(assert (=> b!44387 (= e!28147 call!3583)))

(declare-fun b!44388 () Bool)

(declare-fun e!28149 () Bool)

(assert (=> b!44388 (= e!28147 e!28149)))

(declare-fun lt!19455 () (_ BitVec 64))

(assert (=> b!44388 (= lt!19455 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!19456 () Unit!1237)

(assert (=> b!44388 (= lt!19456 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19355 lt!19455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!44388 (arrayContainsKey!0 lt!19355 lt!19455 #b00000000000000000000000000000000)))

(declare-fun lt!19454 () Unit!1237)

(assert (=> b!44388 (= lt!19454 lt!19456)))

(declare-fun res!26192 () Bool)

(assert (=> b!44388 (= res!26192 (= (seekEntryOrOpen!0 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19355 mask!853) (Found!215 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!44388 (=> (not res!26192) (not e!28149))))

(declare-fun d!8413 () Bool)

(declare-fun res!26191 () Bool)

(declare-fun e!28148 () Bool)

(assert (=> d!8413 (=> res!26191 e!28148)))

(assert (=> d!8413 (= res!26191 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1624 lt!19355)))))

(assert (=> d!8413 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!19355 mask!853) e!28148)))

(declare-fun b!44389 () Bool)

(assert (=> b!44389 (= e!28149 call!3583)))

(declare-fun b!44390 () Bool)

(assert (=> b!44390 (= e!28148 e!28147)))

(declare-fun c!5817 () Bool)

(assert (=> b!44390 (= c!5817 (validKeyInArray!0 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3580 () Bool)

(assert (=> bm!3580 (= call!3583 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!19355 mask!853))))

(assert (= (and d!8413 (not res!26191)) b!44390))

(assert (= (and b!44390 c!5817) b!44388))

(assert (= (and b!44390 (not c!5817)) b!44387))

(assert (= (and b!44388 res!26192) b!44389))

(assert (= (or b!44389 b!44387) bm!3580))

(assert (=> b!44388 m!38565))

(declare-fun m!38581 () Bool)

(assert (=> b!44388 m!38581))

(declare-fun m!38583 () Bool)

(assert (=> b!44388 m!38583))

(assert (=> b!44388 m!38565))

(declare-fun m!38585 () Bool)

(assert (=> b!44388 m!38585))

(assert (=> b!44390 m!38565))

(assert (=> b!44390 m!38565))

(assert (=> b!44390 m!38567))

(declare-fun m!38587 () Bool)

(assert (=> bm!3580 m!38587))

(assert (=> bm!3569 d!8413))

(declare-fun b!44391 () Bool)

(declare-fun e!28151 () Bool)

(declare-fun call!3584 () Bool)

(assert (=> b!44391 (= e!28151 call!3584)))

(declare-fun b!44392 () Bool)

(declare-fun e!28150 () Bool)

(assert (=> b!44392 (= e!28150 e!28151)))

(declare-fun c!5818 () Bool)

(assert (=> b!44392 (= c!5818 (validKeyInArray!0 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3581 () Bool)

(assert (=> bm!3581 (= call!3584 (arrayNoDuplicates!0 lt!19355 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5818 (Cons!1225 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5763 (Cons!1225 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) Nil!1226) Nil!1226)) (ite c!5763 (Cons!1225 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) Nil!1226) Nil!1226))))))

(declare-fun d!8415 () Bool)

(declare-fun res!26194 () Bool)

(declare-fun e!28152 () Bool)

(assert (=> d!8415 (=> res!26194 e!28152)))

(assert (=> d!8415 (= res!26194 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1624 lt!19355)))))

(assert (=> d!8415 (= (arrayNoDuplicates!0 lt!19355 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5763 (Cons!1225 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) Nil!1226) Nil!1226)) e!28152)))

(declare-fun b!44393 () Bool)

(assert (=> b!44393 (= e!28152 e!28150)))

(declare-fun res!26193 () Bool)

(assert (=> b!44393 (=> (not res!26193) (not e!28150))))

(declare-fun e!28153 () Bool)

(assert (=> b!44393 (= res!26193 (not e!28153))))

(declare-fun res!26195 () Bool)

(assert (=> b!44393 (=> (not res!26195) (not e!28153))))

(assert (=> b!44393 (= res!26195 (validKeyInArray!0 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!44394 () Bool)

(assert (=> b!44394 (= e!28151 call!3584)))

(declare-fun b!44395 () Bool)

(assert (=> b!44395 (= e!28153 (contains!576 (ite c!5763 (Cons!1225 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) Nil!1226) Nil!1226) (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!8415 (not res!26194)) b!44393))

(assert (= (and b!44393 res!26195) b!44395))

(assert (= (and b!44393 res!26193) b!44392))

(assert (= (and b!44392 c!5818) b!44394))

(assert (= (and b!44392 (not c!5818)) b!44391))

(assert (= (or b!44394 b!44391) bm!3581))

(assert (=> b!44392 m!38565))

(assert (=> b!44392 m!38565))

(assert (=> b!44392 m!38567))

(assert (=> bm!3581 m!38565))

(declare-fun m!38589 () Bool)

(assert (=> bm!3581 m!38589))

(assert (=> b!44393 m!38565))

(assert (=> b!44393 m!38565))

(assert (=> b!44393 m!38567))

(assert (=> b!44395 m!38565))

(assert (=> b!44395 m!38565))

(declare-fun m!38591 () Bool)

(assert (=> b!44395 m!38591))

(assert (=> bm!3553 d!8415))

(declare-fun b!44398 () Bool)

(declare-fun e!28154 () Bool)

(declare-fun call!3585 () Bool)

(assert (=> b!44398 (= e!28154 call!3585)))

(declare-fun b!44399 () Bool)

(declare-fun e!28156 () Bool)

(assert (=> b!44399 (= e!28154 e!28156)))

(declare-fun lt!19462 () (_ BitVec 64))

(assert (=> b!44399 (= lt!19462 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000))))

(declare-fun lt!19463 () Unit!1237)

(assert (=> b!44399 (= lt!19463 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3465 lt!19348) lt!19462 #b00000000000000000000000000000000))))

(assert (=> b!44399 (arrayContainsKey!0 (_keys!3465 lt!19348) lt!19462 #b00000000000000000000000000000000)))

(declare-fun lt!19461 () Unit!1237)

(assert (=> b!44399 (= lt!19461 lt!19463)))

(declare-fun res!26197 () Bool)

(assert (=> b!44399 (= res!26197 (= (seekEntryOrOpen!0 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) (_keys!3465 lt!19348) (mask!5475 lt!19348)) (Found!215 #b00000000000000000000000000000000)))))

(assert (=> b!44399 (=> (not res!26197) (not e!28156))))

(declare-fun d!8417 () Bool)

(declare-fun res!26196 () Bool)

(declare-fun e!28155 () Bool)

(assert (=> d!8417 (=> res!26196 e!28155)))

(assert (=> d!8417 (= res!26196 (bvsge #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))))))

(assert (=> d!8417 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3465 lt!19348) (mask!5475 lt!19348)) e!28155)))

(declare-fun b!44400 () Bool)

(assert (=> b!44400 (= e!28156 call!3585)))

(declare-fun b!44401 () Bool)

(assert (=> b!44401 (= e!28155 e!28154)))

(declare-fun c!5819 () Bool)

(assert (=> b!44401 (= c!5819 (validKeyInArray!0 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(declare-fun bm!3582 () Bool)

(assert (=> bm!3582 (= call!3585 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3465 lt!19348) (mask!5475 lt!19348)))))

(assert (= (and d!8417 (not res!26196)) b!44401))

(assert (= (and b!44401 c!5819) b!44399))

(assert (= (and b!44401 (not c!5819)) b!44398))

(assert (= (and b!44399 res!26197) b!44400))

(assert (= (or b!44400 b!44398) bm!3582))

(declare-fun m!38593 () Bool)

(assert (=> b!44399 m!38593))

(declare-fun m!38595 () Bool)

(assert (=> b!44399 m!38595))

(declare-fun m!38597 () Bool)

(assert (=> b!44399 m!38597))

(assert (=> b!44399 m!38593))

(declare-fun m!38599 () Bool)

(assert (=> b!44399 m!38599))

(assert (=> b!44401 m!38593))

(assert (=> b!44401 m!38593))

(declare-fun m!38601 () Bool)

(assert (=> b!44401 m!38601))

(declare-fun m!38603 () Bool)

(assert (=> bm!3582 m!38603))

(assert (=> b!44209 d!8417))

(assert (=> d!8329 d!8335))

(declare-fun d!8419 () Bool)

(assert (=> d!8419 (= (arrayCountValidKeys!0 lt!19355 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!8419 true))

(declare-fun _$88!55 () Unit!1237)

(assert (=> d!8419 (= (choose!59 lt!19355 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!55)))

(declare-fun bs!2020 () Bool)

(assert (= bs!2020 d!8419))

(assert (=> bs!2020 m!38393))

(assert (=> d!8329 d!8419))

(declare-fun d!8421 () Bool)

(assert (=> d!8421 (arrayContainsKey!0 lt!19355 lt!19418 #b00000000000000000000000000000000)))

(declare-fun lt!19468 () Unit!1237)

(declare-fun choose!13 (array!2955 (_ BitVec 64) (_ BitVec 32)) Unit!1237)

(assert (=> d!8421 (= lt!19468 (choose!13 lt!19355 lt!19418 #b00000000000000000000000000000000))))

(assert (=> d!8421 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!8421 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19355 lt!19418 #b00000000000000000000000000000000) lt!19468)))

(declare-fun bs!2021 () Bool)

(assert (= bs!2021 d!8421))

(assert (=> bs!2021 m!38493))

(declare-fun m!38609 () Bool)

(assert (=> bs!2021 m!38609))

(assert (=> b!44272 d!8421))

(declare-fun d!8425 () Bool)

(declare-fun res!26210 () Bool)

(declare-fun e!28166 () Bool)

(assert (=> d!8425 (=> res!26210 e!28166)))

(assert (=> d!8425 (= res!26210 (= (select (arr!1421 lt!19355) #b00000000000000000000000000000000) lt!19418))))

(assert (=> d!8425 (= (arrayContainsKey!0 lt!19355 lt!19418 #b00000000000000000000000000000000) e!28166)))

(declare-fun b!44424 () Bool)

(declare-fun e!28167 () Bool)

(assert (=> b!44424 (= e!28166 e!28167)))

(declare-fun res!26211 () Bool)

(assert (=> b!44424 (=> (not res!26211) (not e!28167))))

(assert (=> b!44424 (= res!26211 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1624 lt!19355)))))

(declare-fun b!44425 () Bool)

(assert (=> b!44425 (= e!28167 (arrayContainsKey!0 lt!19355 lt!19418 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8425 (not res!26210)) b!44424))

(assert (= (and b!44424 res!26211) b!44425))

(assert (=> d!8425 m!38423))

(declare-fun m!38611 () Bool)

(assert (=> b!44425 m!38611))

(assert (=> b!44272 d!8425))

(declare-fun b!44487 () Bool)

(declare-fun e!28201 () SeekEntryResult!215)

(declare-fun lt!19492 () SeekEntryResult!215)

(assert (=> b!44487 (= e!28201 (MissingZero!215 (index!2984 lt!19492)))))

(declare-fun b!44488 () Bool)

(declare-fun c!5847 () Bool)

(declare-fun lt!19491 () (_ BitVec 64))

(assert (=> b!44488 (= c!5847 (= lt!19491 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!28200 () SeekEntryResult!215)

(assert (=> b!44488 (= e!28200 e!28201)))

(declare-fun b!44489 () Bool)

(assert (=> b!44489 (= e!28200 (Found!215 (index!2984 lt!19492)))))

(declare-fun b!44490 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2955 (_ BitVec 32)) SeekEntryResult!215)

(assert (=> b!44490 (= e!28201 (seekKeyOrZeroReturnVacant!0 (x!8369 lt!19492) (index!2984 lt!19492) (index!2984 lt!19492) (select (arr!1421 lt!19355) #b00000000000000000000000000000000) lt!19355 mask!853))))

(declare-fun b!44491 () Bool)

(declare-fun e!28199 () SeekEntryResult!215)

(assert (=> b!44491 (= e!28199 e!28200)))

(assert (=> b!44491 (= lt!19491 (select (arr!1421 lt!19355) (index!2984 lt!19492)))))

(declare-fun c!5848 () Bool)

(assert (=> b!44491 (= c!5848 (= lt!19491 (select (arr!1421 lt!19355) #b00000000000000000000000000000000)))))

(declare-fun d!8427 () Bool)

(declare-fun lt!19493 () SeekEntryResult!215)

(assert (=> d!8427 (and (or (is-Undefined!215 lt!19493) (not (is-Found!215 lt!19493)) (and (bvsge (index!2983 lt!19493) #b00000000000000000000000000000000) (bvslt (index!2983 lt!19493) (size!1624 lt!19355)))) (or (is-Undefined!215 lt!19493) (is-Found!215 lt!19493) (not (is-MissingZero!215 lt!19493)) (and (bvsge (index!2982 lt!19493) #b00000000000000000000000000000000) (bvslt (index!2982 lt!19493) (size!1624 lt!19355)))) (or (is-Undefined!215 lt!19493) (is-Found!215 lt!19493) (is-MissingZero!215 lt!19493) (not (is-MissingVacant!215 lt!19493)) (and (bvsge (index!2985 lt!19493) #b00000000000000000000000000000000) (bvslt (index!2985 lt!19493) (size!1624 lt!19355)))) (or (is-Undefined!215 lt!19493) (ite (is-Found!215 lt!19493) (= (select (arr!1421 lt!19355) (index!2983 lt!19493)) (select (arr!1421 lt!19355) #b00000000000000000000000000000000)) (ite (is-MissingZero!215 lt!19493) (= (select (arr!1421 lt!19355) (index!2982 lt!19493)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!215 lt!19493) (= (select (arr!1421 lt!19355) (index!2985 lt!19493)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!8427 (= lt!19493 e!28199)))

(declare-fun c!5849 () Bool)

(assert (=> d!8427 (= c!5849 (and (is-Intermediate!215 lt!19492) (undefined!1027 lt!19492)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2955 (_ BitVec 32)) SeekEntryResult!215)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!8427 (= lt!19492 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) mask!853) (select (arr!1421 lt!19355) #b00000000000000000000000000000000) lt!19355 mask!853))))

(assert (=> d!8427 (validMask!0 mask!853)))

(assert (=> d!8427 (= (seekEntryOrOpen!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) lt!19355 mask!853) lt!19493)))

(declare-fun b!44492 () Bool)

(assert (=> b!44492 (= e!28199 Undefined!215)))

(assert (= (and d!8427 c!5849) b!44492))

(assert (= (and d!8427 (not c!5849)) b!44491))

(assert (= (and b!44491 c!5848) b!44489))

(assert (= (and b!44491 (not c!5848)) b!44488))

(assert (= (and b!44488 c!5847) b!44487))

(assert (= (and b!44488 (not c!5847)) b!44490))

(assert (=> b!44490 m!38423))

(declare-fun m!38651 () Bool)

(assert (=> b!44490 m!38651))

(declare-fun m!38653 () Bool)

(assert (=> b!44491 m!38653))

(declare-fun m!38655 () Bool)

(assert (=> d!8427 m!38655))

(assert (=> d!8427 m!38423))

(declare-fun m!38657 () Bool)

(assert (=> d!8427 m!38657))

(assert (=> d!8427 m!38383))

(declare-fun m!38659 () Bool)

(assert (=> d!8427 m!38659))

(assert (=> d!8427 m!38657))

(assert (=> d!8427 m!38423))

(declare-fun m!38661 () Bool)

(assert (=> d!8427 m!38661))

(declare-fun m!38663 () Bool)

(assert (=> d!8427 m!38663))

(assert (=> b!44272 d!8427))

(declare-fun b!44493 () Bool)

(declare-fun e!28203 () Bool)

(declare-fun call!3588 () Bool)

(assert (=> b!44493 (= e!28203 call!3588)))

(declare-fun b!44494 () Bool)

(declare-fun e!28202 () Bool)

(assert (=> b!44494 (= e!28202 e!28203)))

(declare-fun c!5850 () Bool)

(assert (=> b!44494 (= c!5850 (validKeyInArray!0 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(declare-fun bm!3585 () Bool)

(assert (=> bm!3585 (= call!3588 (arrayNoDuplicates!0 (_keys!3465 lt!19348) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5850 (Cons!1225 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) Nil!1226) Nil!1226)))))

(declare-fun d!8449 () Bool)

(declare-fun res!26232 () Bool)

(declare-fun e!28204 () Bool)

(assert (=> d!8449 (=> res!26232 e!28204)))

(assert (=> d!8449 (= res!26232 (bvsge #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))))))

(assert (=> d!8449 (= (arrayNoDuplicates!0 (_keys!3465 lt!19348) #b00000000000000000000000000000000 Nil!1226) e!28204)))

(declare-fun b!44495 () Bool)

(assert (=> b!44495 (= e!28204 e!28202)))

(declare-fun res!26231 () Bool)

(assert (=> b!44495 (=> (not res!26231) (not e!28202))))

(declare-fun e!28205 () Bool)

(assert (=> b!44495 (= res!26231 (not e!28205))))

(declare-fun res!26233 () Bool)

(assert (=> b!44495 (=> (not res!26233) (not e!28205))))

(assert (=> b!44495 (= res!26233 (validKeyInArray!0 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(declare-fun b!44496 () Bool)

(assert (=> b!44496 (= e!28203 call!3588)))

(declare-fun b!44497 () Bool)

(assert (=> b!44497 (= e!28205 (contains!576 Nil!1226 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(assert (= (and d!8449 (not res!26232)) b!44495))

(assert (= (and b!44495 res!26233) b!44497))

(assert (= (and b!44495 res!26231) b!44494))

(assert (= (and b!44494 c!5850) b!44496))

(assert (= (and b!44494 (not c!5850)) b!44493))

(assert (= (or b!44496 b!44493) bm!3585))

(assert (=> b!44494 m!38593))

(assert (=> b!44494 m!38593))

(assert (=> b!44494 m!38601))

(assert (=> bm!3585 m!38593))

(declare-fun m!38665 () Bool)

(assert (=> bm!3585 m!38665))

(assert (=> b!44495 m!38593))

(assert (=> b!44495 m!38593))

(assert (=> b!44495 m!38601))

(assert (=> b!44497 m!38593))

(assert (=> b!44497 m!38593))

(declare-fun m!38667 () Bool)

(assert (=> b!44497 m!38667))

(assert (=> b!44210 d!8449))

(declare-fun d!8451 () Bool)

(declare-fun e!28211 () Bool)

(assert (=> d!8451 e!28211))

(declare-fun c!5856 () Bool)

(assert (=> d!8451 (= c!5856 (and (not (= (_1!831 lt!19353) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!831 lt!19353) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!8451 true))

(declare-fun _$15!83 () Unit!1237)

(assert (=> d!8451 (= (choose!272 lt!19355 lt!19352 mask!853 #b00000000000000000000000000000000 lt!19358 lt!19358 (_1!831 lt!19353) defaultEntry!470) _$15!83)))

(declare-fun b!44508 () Bool)

(assert (=> b!44508 (= e!28211 (arrayContainsKey!0 lt!19355 (_1!831 lt!19353) #b00000000000000000000000000000000))))

(declare-fun b!44509 () Bool)

(assert (=> b!44509 (= e!28211 (ite (= (_1!831 lt!19353) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!8451 c!5856) b!44508))

(assert (= (and d!8451 (not c!5856)) b!44509))

(assert (=> b!44508 m!38409))

(assert (=> d!8355 d!8451))

(assert (=> d!8355 d!8369))

(declare-fun b!44671 () Bool)

(declare-fun e!28325 () ListLongMap!1223)

(declare-fun call!3640 () ListLongMap!1223)

(assert (=> b!44671 (= e!28325 call!3640)))

(declare-fun b!44672 () Bool)

(declare-fun e!28318 () Bool)

(declare-fun lt!19646 () ListLongMap!1223)

(declare-fun apply!62 (ListLongMap!1223 (_ BitVec 64)) V!2329)

(declare-fun get!804 (ValueCell!706 V!2329) V!2329)

(assert (=> b!44672 (= e!28318 (= (apply!62 lt!19646 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)) (get!804 (select (arr!1422 (_values!1881 lt!19348)) #b00000000000000000000000000000000) (dynLambda!267 (defaultEntry!1898 lt!19348) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!44672 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1625 (_values!1881 lt!19348))))))

(assert (=> b!44672 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))))))

(declare-fun b!44673 () Bool)

(declare-fun e!28322 () Bool)

(declare-fun e!28324 () Bool)

(assert (=> b!44673 (= e!28322 e!28324)))

(declare-fun c!5910 () Bool)

(assert (=> b!44673 (= c!5910 (not (= (bvand (extraKeys!1789 lt!19348) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!3636 () Bool)

(declare-fun call!3644 () Bool)

(declare-fun contains!580 (ListLongMap!1223 (_ BitVec 64)) Bool)

(assert (=> bm!3636 (= call!3644 (contains!580 lt!19646 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!44674 () Bool)

(declare-fun c!5911 () Bool)

(assert (=> b!44674 (= c!5911 (and (not (= (bvand (extraKeys!1789 lt!19348) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1789 lt!19348) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!28323 () ListLongMap!1223)

(assert (=> b!44674 (= e!28323 e!28325)))

(declare-fun b!44675 () Bool)

(declare-fun e!28326 () Unit!1237)

(declare-fun lt!19631 () Unit!1237)

(assert (=> b!44675 (= e!28326 lt!19631)))

(declare-fun lt!19647 () ListLongMap!1223)

(declare-fun getCurrentListMapNoExtraKeys!41 (array!2955 array!2957 (_ BitVec 32) (_ BitVec 32) V!2329 V!2329 (_ BitVec 32) Int) ListLongMap!1223)

(assert (=> b!44675 (= lt!19647 (getCurrentListMapNoExtraKeys!41 (_keys!3465 lt!19348) (_values!1881 lt!19348) (mask!5475 lt!19348) (extraKeys!1789 lt!19348) (zeroValue!1816 lt!19348) (minValue!1816 lt!19348) #b00000000000000000000000000000000 (defaultEntry!1898 lt!19348)))))

(declare-fun lt!19649 () (_ BitVec 64))

(assert (=> b!44675 (= lt!19649 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19634 () (_ BitVec 64))

(assert (=> b!44675 (= lt!19634 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000))))

(declare-fun lt!19644 () Unit!1237)

(declare-fun addStillContains!39 (ListLongMap!1223 (_ BitVec 64) V!2329 (_ BitVec 64)) Unit!1237)

(assert (=> b!44675 (= lt!19644 (addStillContains!39 lt!19647 lt!19649 (zeroValue!1816 lt!19348) lt!19634))))

(declare-fun +!72 (ListLongMap!1223 tuple2!1642) ListLongMap!1223)

(assert (=> b!44675 (contains!580 (+!72 lt!19647 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348))) lt!19634)))

(declare-fun lt!19635 () Unit!1237)

(assert (=> b!44675 (= lt!19635 lt!19644)))

(declare-fun lt!19626 () ListLongMap!1223)

(assert (=> b!44675 (= lt!19626 (getCurrentListMapNoExtraKeys!41 (_keys!3465 lt!19348) (_values!1881 lt!19348) (mask!5475 lt!19348) (extraKeys!1789 lt!19348) (zeroValue!1816 lt!19348) (minValue!1816 lt!19348) #b00000000000000000000000000000000 (defaultEntry!1898 lt!19348)))))

(declare-fun lt!19633 () (_ BitVec 64))

(assert (=> b!44675 (= lt!19633 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19645 () (_ BitVec 64))

(assert (=> b!44675 (= lt!19645 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000))))

(declare-fun lt!19638 () Unit!1237)

(declare-fun addApplyDifferent!39 (ListLongMap!1223 (_ BitVec 64) V!2329 (_ BitVec 64)) Unit!1237)

(assert (=> b!44675 (= lt!19638 (addApplyDifferent!39 lt!19626 lt!19633 (minValue!1816 lt!19348) lt!19645))))

(assert (=> b!44675 (= (apply!62 (+!72 lt!19626 (tuple2!1643 lt!19633 (minValue!1816 lt!19348))) lt!19645) (apply!62 lt!19626 lt!19645))))

(declare-fun lt!19632 () Unit!1237)

(assert (=> b!44675 (= lt!19632 lt!19638)))

(declare-fun lt!19641 () ListLongMap!1223)

(assert (=> b!44675 (= lt!19641 (getCurrentListMapNoExtraKeys!41 (_keys!3465 lt!19348) (_values!1881 lt!19348) (mask!5475 lt!19348) (extraKeys!1789 lt!19348) (zeroValue!1816 lt!19348) (minValue!1816 lt!19348) #b00000000000000000000000000000000 (defaultEntry!1898 lt!19348)))))

(declare-fun lt!19627 () (_ BitVec 64))

(assert (=> b!44675 (= lt!19627 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19629 () (_ BitVec 64))

(assert (=> b!44675 (= lt!19629 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000))))

(declare-fun lt!19639 () Unit!1237)

(assert (=> b!44675 (= lt!19639 (addApplyDifferent!39 lt!19641 lt!19627 (zeroValue!1816 lt!19348) lt!19629))))

(assert (=> b!44675 (= (apply!62 (+!72 lt!19641 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348))) lt!19629) (apply!62 lt!19641 lt!19629))))

(declare-fun lt!19630 () Unit!1237)

(assert (=> b!44675 (= lt!19630 lt!19639)))

(declare-fun lt!19640 () ListLongMap!1223)

(assert (=> b!44675 (= lt!19640 (getCurrentListMapNoExtraKeys!41 (_keys!3465 lt!19348) (_values!1881 lt!19348) (mask!5475 lt!19348) (extraKeys!1789 lt!19348) (zeroValue!1816 lt!19348) (minValue!1816 lt!19348) #b00000000000000000000000000000000 (defaultEntry!1898 lt!19348)))))

(declare-fun lt!19636 () (_ BitVec 64))

(assert (=> b!44675 (= lt!19636 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19628 () (_ BitVec 64))

(assert (=> b!44675 (= lt!19628 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000))))

(assert (=> b!44675 (= lt!19631 (addApplyDifferent!39 lt!19640 lt!19636 (minValue!1816 lt!19348) lt!19628))))

(assert (=> b!44675 (= (apply!62 (+!72 lt!19640 (tuple2!1643 lt!19636 (minValue!1816 lt!19348))) lt!19628) (apply!62 lt!19640 lt!19628))))

(declare-fun b!44676 () Bool)

(assert (=> b!44676 (= e!28324 (not call!3644))))

(declare-fun b!44677 () Bool)

(declare-fun call!3643 () ListLongMap!1223)

(assert (=> b!44677 (= e!28323 call!3643)))

(declare-fun b!44678 () Bool)

(declare-fun e!28316 () Bool)

(declare-fun call!3641 () Bool)

(assert (=> b!44678 (= e!28316 (not call!3641))))

(declare-fun bm!3637 () Bool)

(declare-fun call!3645 () ListLongMap!1223)

(assert (=> bm!3637 (= call!3645 (getCurrentListMapNoExtraKeys!41 (_keys!3465 lt!19348) (_values!1881 lt!19348) (mask!5475 lt!19348) (extraKeys!1789 lt!19348) (zeroValue!1816 lt!19348) (minValue!1816 lt!19348) #b00000000000000000000000000000000 (defaultEntry!1898 lt!19348)))))

(declare-fun b!44679 () Bool)

(declare-fun res!26304 () Bool)

(assert (=> b!44679 (=> (not res!26304) (not e!28322))))

(assert (=> b!44679 (= res!26304 e!28316)))

(declare-fun c!5908 () Bool)

(assert (=> b!44679 (= c!5908 (not (= (bvand (extraKeys!1789 lt!19348) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!3638 () Bool)

(declare-fun call!3639 () ListLongMap!1223)

(assert (=> bm!3638 (= call!3639 call!3645)))

(declare-fun b!44680 () Bool)

(declare-fun e!28320 () Bool)

(assert (=> b!44680 (= e!28320 (validKeyInArray!0 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(declare-fun bm!3639 () Bool)

(assert (=> bm!3639 (= call!3641 (contains!580 lt!19646 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!44681 () Bool)

(declare-fun e!28319 () Bool)

(assert (=> b!44681 (= e!28319 (validKeyInArray!0 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(declare-fun b!44682 () Bool)

(declare-fun e!28317 () Bool)

(assert (=> b!44682 (= e!28324 e!28317)))

(declare-fun res!26311 () Bool)

(assert (=> b!44682 (= res!26311 call!3644)))

(assert (=> b!44682 (=> (not res!26311) (not e!28317))))

(declare-fun b!44683 () Bool)

(declare-fun Unit!1243 () Unit!1237)

(assert (=> b!44683 (= e!28326 Unit!1243)))

(declare-fun bm!3640 () Bool)

(declare-fun call!3642 () ListLongMap!1223)

(assert (=> bm!3640 (= call!3643 call!3642)))

(declare-fun b!44684 () Bool)

(declare-fun res!26306 () Bool)

(assert (=> b!44684 (=> (not res!26306) (not e!28322))))

(declare-fun e!28314 () Bool)

(assert (=> b!44684 (= res!26306 e!28314)))

(declare-fun res!26307 () Bool)

(assert (=> b!44684 (=> res!26307 e!28314)))

(assert (=> b!44684 (= res!26307 (not e!28320))))

(declare-fun res!26308 () Bool)

(assert (=> b!44684 (=> (not res!26308) (not e!28320))))

(assert (=> b!44684 (= res!26308 (bvslt #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))))))

(declare-fun b!44685 () Bool)

(assert (=> b!44685 (= e!28325 call!3643)))

(declare-fun d!8457 () Bool)

(assert (=> d!8457 e!28322))

(declare-fun res!26310 () Bool)

(assert (=> d!8457 (=> (not res!26310) (not e!28322))))

(assert (=> d!8457 (= res!26310 (or (bvsge #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))))))))

(declare-fun lt!19648 () ListLongMap!1223)

(assert (=> d!8457 (= lt!19646 lt!19648)))

(declare-fun lt!19637 () Unit!1237)

(assert (=> d!8457 (= lt!19637 e!28326)))

(declare-fun c!5909 () Bool)

(assert (=> d!8457 (= c!5909 e!28319)))

(declare-fun res!26309 () Bool)

(assert (=> d!8457 (=> (not res!26309) (not e!28319))))

(assert (=> d!8457 (= res!26309 (bvslt #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))))))

(declare-fun e!28315 () ListLongMap!1223)

(assert (=> d!8457 (= lt!19648 e!28315)))

(declare-fun c!5907 () Bool)

(assert (=> d!8457 (= c!5907 (and (not (= (bvand (extraKeys!1789 lt!19348) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1789 lt!19348) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!8457 (validMask!0 (mask!5475 lt!19348))))

(assert (=> d!8457 (= (getCurrentListMap!355 (_keys!3465 lt!19348) (_values!1881 lt!19348) (mask!5475 lt!19348) (extraKeys!1789 lt!19348) (zeroValue!1816 lt!19348) (minValue!1816 lt!19348) #b00000000000000000000000000000000 (defaultEntry!1898 lt!19348)) lt!19646)))

(declare-fun b!44686 () Bool)

(assert (=> b!44686 (= e!28315 e!28323)))

(declare-fun c!5906 () Bool)

(assert (=> b!44686 (= c!5906 (and (not (= (bvand (extraKeys!1789 lt!19348) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1789 lt!19348) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!44687 () Bool)

(assert (=> b!44687 (= e!28317 (= (apply!62 lt!19646 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1816 lt!19348)))))

(declare-fun bm!3641 () Bool)

(assert (=> bm!3641 (= call!3642 (+!72 (ite c!5907 call!3645 (ite c!5906 call!3639 call!3640)) (ite (or c!5907 c!5906) (tuple2!1643 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1816 lt!19348)) (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348)))))))

(declare-fun b!44688 () Bool)

(declare-fun e!28321 () Bool)

(assert (=> b!44688 (= e!28316 e!28321)))

(declare-fun res!26305 () Bool)

(assert (=> b!44688 (= res!26305 call!3641)))

(assert (=> b!44688 (=> (not res!26305) (not e!28321))))

(declare-fun bm!3642 () Bool)

(assert (=> bm!3642 (= call!3640 call!3639)))

(declare-fun b!44689 () Bool)

(assert (=> b!44689 (= e!28315 (+!72 call!3642 (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348))))))

(declare-fun b!44690 () Bool)

(assert (=> b!44690 (= e!28314 e!28318)))

(declare-fun res!26303 () Bool)

(assert (=> b!44690 (=> (not res!26303) (not e!28318))))

(assert (=> b!44690 (= res!26303 (contains!580 lt!19646 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(assert (=> b!44690 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))))))

(declare-fun b!44691 () Bool)

(assert (=> b!44691 (= e!28321 (= (apply!62 lt!19646 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1816 lt!19348)))))

(assert (= (and d!8457 c!5907) b!44689))

(assert (= (and d!8457 (not c!5907)) b!44686))

(assert (= (and b!44686 c!5906) b!44677))

(assert (= (and b!44686 (not c!5906)) b!44674))

(assert (= (and b!44674 c!5911) b!44685))

(assert (= (and b!44674 (not c!5911)) b!44671))

(assert (= (or b!44685 b!44671) bm!3642))

(assert (= (or b!44677 bm!3642) bm!3638))

(assert (= (or b!44677 b!44685) bm!3640))

(assert (= (or b!44689 bm!3638) bm!3637))

(assert (= (or b!44689 bm!3640) bm!3641))

(assert (= (and d!8457 res!26309) b!44681))

(assert (= (and d!8457 c!5909) b!44675))

(assert (= (and d!8457 (not c!5909)) b!44683))

(assert (= (and d!8457 res!26310) b!44684))

(assert (= (and b!44684 res!26308) b!44680))

(assert (= (and b!44684 (not res!26307)) b!44690))

(assert (= (and b!44690 res!26303) b!44672))

(assert (= (and b!44684 res!26306) b!44679))

(assert (= (and b!44679 c!5908) b!44688))

(assert (= (and b!44679 (not c!5908)) b!44678))

(assert (= (and b!44688 res!26305) b!44691))

(assert (= (or b!44688 b!44678) bm!3639))

(assert (= (and b!44679 res!26304) b!44673))

(assert (= (and b!44673 c!5910) b!44682))

(assert (= (and b!44673 (not c!5910)) b!44676))

(assert (= (and b!44682 res!26311) b!44687))

(assert (= (or b!44682 b!44676) bm!3636))

(declare-fun b_lambda!2343 () Bool)

(assert (=> (not b_lambda!2343) (not b!44672)))

(declare-fun t!4260 () Bool)

(declare-fun tb!1017 () Bool)

(assert (=> (and start!6746 (= defaultEntry!470 (defaultEntry!1898 lt!19348)) t!4260) tb!1017))

(declare-fun result!1769 () Bool)

(assert (=> tb!1017 (= result!1769 tp_is_empty!1907)))

(assert (=> b!44672 t!4260))

(declare-fun b_and!2723 () Bool)

(assert (= b_and!2719 (and (=> t!4260 result!1769) b_and!2723)))

(declare-fun m!38777 () Bool)

(assert (=> bm!3639 m!38777))

(assert (=> d!8457 m!38569))

(declare-fun m!38779 () Bool)

(assert (=> b!44687 m!38779))

(assert (=> b!44681 m!38593))

(assert (=> b!44681 m!38593))

(assert (=> b!44681 m!38601))

(assert (=> b!44690 m!38593))

(assert (=> b!44690 m!38593))

(declare-fun m!38781 () Bool)

(assert (=> b!44690 m!38781))

(declare-fun m!38783 () Bool)

(assert (=> bm!3641 m!38783))

(assert (=> b!44680 m!38593))

(assert (=> b!44680 m!38593))

(assert (=> b!44680 m!38601))

(declare-fun m!38785 () Bool)

(assert (=> bm!3636 m!38785))

(declare-fun m!38787 () Bool)

(assert (=> b!44691 m!38787))

(declare-fun m!38789 () Bool)

(assert (=> bm!3637 m!38789))

(declare-fun m!38791 () Bool)

(assert (=> b!44672 m!38791))

(assert (=> b!44672 m!38593))

(declare-fun m!38793 () Bool)

(assert (=> b!44672 m!38793))

(assert (=> b!44672 m!38791))

(declare-fun m!38795 () Bool)

(assert (=> b!44672 m!38795))

(assert (=> b!44672 m!38793))

(assert (=> b!44672 m!38593))

(declare-fun m!38797 () Bool)

(assert (=> b!44672 m!38797))

(declare-fun m!38799 () Bool)

(assert (=> b!44689 m!38799))

(declare-fun m!38801 () Bool)

(assert (=> b!44675 m!38801))

(declare-fun m!38803 () Bool)

(assert (=> b!44675 m!38803))

(declare-fun m!38805 () Bool)

(assert (=> b!44675 m!38805))

(declare-fun m!38807 () Bool)

(assert (=> b!44675 m!38807))

(declare-fun m!38809 () Bool)

(assert (=> b!44675 m!38809))

(declare-fun m!38811 () Bool)

(assert (=> b!44675 m!38811))

(declare-fun m!38813 () Bool)

(assert (=> b!44675 m!38813))

(assert (=> b!44675 m!38789))

(assert (=> b!44675 m!38805))

(declare-fun m!38817 () Bool)

(assert (=> b!44675 m!38817))

(declare-fun m!38821 () Bool)

(assert (=> b!44675 m!38821))

(declare-fun m!38823 () Bool)

(assert (=> b!44675 m!38823))

(declare-fun m!38827 () Bool)

(assert (=> b!44675 m!38827))

(declare-fun m!38829 () Bool)

(assert (=> b!44675 m!38829))

(assert (=> b!44675 m!38823))

(declare-fun m!38831 () Bool)

(assert (=> b!44675 m!38831))

(assert (=> b!44675 m!38817))

(assert (=> b!44675 m!38593))

(assert (=> b!44675 m!38803))

(declare-fun m!38833 () Bool)

(assert (=> b!44675 m!38833))

(declare-fun m!38835 () Bool)

(assert (=> b!44675 m!38835))

(assert (=> d!8309 d!8457))

(declare-fun d!8487 () Bool)

(declare-fun lt!19685 () (_ BitVec 32))

(assert (=> d!8487 (and (or (bvslt lt!19685 #b00000000000000000000000000000000) (bvsge lt!19685 (size!1624 lt!19355)) (and (bvsge lt!19685 #b00000000000000000000000000000000) (bvslt lt!19685 (size!1624 lt!19355)))) (bvsge lt!19685 #b00000000000000000000000000000000) (bvslt lt!19685 (size!1624 lt!19355)) (= (select (arr!1421 lt!19355) lt!19685) (_1!831 lt!19353)))))

(declare-fun e!28349 () (_ BitVec 32))

(assert (=> d!8487 (= lt!19685 e!28349)))

(declare-fun c!5916 () Bool)

(assert (=> d!8487 (= c!5916 (= (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_1!831 lt!19353)))))

(assert (=> d!8487 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1624 lt!19355)) (bvslt (size!1624 lt!19355) #b01111111111111111111111111111111))))

(assert (=> d!8487 (= (arrayScanForKey!0 lt!19355 (_1!831 lt!19353) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19685)))

(declare-fun b!44722 () Bool)

(assert (=> b!44722 (= e!28349 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))

(declare-fun b!44723 () Bool)

(assert (=> b!44723 (= e!28349 (arrayScanForKey!0 lt!19355 (_1!831 lt!19353) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8487 c!5916) b!44722))

(assert (= (and d!8487 (not c!5916)) b!44723))

(declare-fun m!38837 () Bool)

(assert (=> d!8487 m!38837))

(assert (=> d!8487 m!38565))

(declare-fun m!38839 () Bool)

(assert (=> b!44723 m!38839))

(assert (=> b!44304 d!8487))

(declare-fun b!44724 () Bool)

(declare-fun e!28350 () (_ BitVec 32))

(assert (=> b!44724 (= e!28350 #b00000000000000000000000000000000)))

(declare-fun bm!3647 () Bool)

(declare-fun call!3650 () (_ BitVec 32))

(assert (=> bm!3647 (= call!3650 (arrayCountValidKeys!0 (_keys!3465 lt!19348) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1624 (_keys!3465 lt!19348))))))

(declare-fun b!44725 () Bool)

(declare-fun e!28351 () (_ BitVec 32))

(assert (=> b!44725 (= e!28350 e!28351)))

(declare-fun c!5918 () Bool)

(assert (=> b!44725 (= c!5918 (validKeyInArray!0 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(declare-fun d!8489 () Bool)

(declare-fun lt!19686 () (_ BitVec 32))

(assert (=> d!8489 (and (bvsge lt!19686 #b00000000000000000000000000000000) (bvsle lt!19686 (bvsub (size!1624 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(assert (=> d!8489 (= lt!19686 e!28350)))

(declare-fun c!5917 () Bool)

(assert (=> d!8489 (= c!5917 (bvsge #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))))))

(assert (=> d!8489 (and (bvsle #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1624 (_keys!3465 lt!19348)) (size!1624 (_keys!3465 lt!19348))))))

(assert (=> d!8489 (= (arrayCountValidKeys!0 (_keys!3465 lt!19348) #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))) lt!19686)))

(declare-fun b!44726 () Bool)

(assert (=> b!44726 (= e!28351 (bvadd #b00000000000000000000000000000001 call!3650))))

(declare-fun b!44727 () Bool)

(assert (=> b!44727 (= e!28351 call!3650)))

(assert (= (and d!8489 c!5917) b!44724))

(assert (= (and d!8489 (not c!5917)) b!44725))

(assert (= (and b!44725 c!5918) b!44726))

(assert (= (and b!44725 (not c!5918)) b!44727))

(assert (= (or b!44726 b!44727) bm!3647))

(declare-fun m!38841 () Bool)

(assert (=> bm!3647 m!38841))

(assert (=> b!44725 m!38593))

(assert (=> b!44725 m!38593))

(assert (=> b!44725 m!38601))

(assert (=> b!44208 d!8489))

(push 1)

(assert (not b!44401))

(assert (not b!44393))

(assert (not bm!3636))

(assert (not b!44495))

(assert (not b!44386))

(assert (not b!44376))

(assert (not b!44691))

(assert (not d!8409))

(assert (not b!44399))

(assert (not bm!3582))

(assert (not d!8421))

(assert (not b!44689))

(assert (not b_next!1517))

(assert (not b_lambda!2343))

(assert (not b!44388))

(assert (not b!44508))

(assert (not b!44675))

(assert (not d!8427))

(assert (not b!44392))

(assert (not b!44364))

(assert (not b!44395))

(assert (not b!44390))

(assert (not bm!3585))

(assert (not bm!3647))

(assert (not b!44494))

(assert (not b!44725))

(assert (not b!44687))

(assert (not b!44425))

(assert b_and!2723)

(assert (not bm!3637))

(assert (not b!44723))

(assert (not d!8419))

(assert (not bm!3579))

(assert (not b!44690))

(assert tp_is_empty!1907)

(assert (not d!8401))

(assert (not d!8391))

(assert (not bm!3580))

(assert (not b!44497))

(assert (not b!44377))

(assert (not d!8403))

(assert (not bm!3641))

(assert (not b!44490))

(assert (not b_lambda!2335))

(assert (not d!8457))

(assert (not b!44672))

(assert (not b!44681))

(assert (not bm!3639))

(assert (not b!44384))

(assert (not b!44680))

(assert (not bm!3581))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2723)

(assert (not b_next!1517))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8541 () Bool)

(assert (=> d!8541 (= (size!1638 lt!19348) (bvadd (_size!245 lt!19348) (bvsdiv (bvadd (extraKeys!1789 lt!19348) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!44377 d!8541))

(declare-fun b!44905 () Bool)

(declare-fun e!28463 () SeekEntryResult!215)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!44905 (= e!28463 (seekKeyOrZeroReturnVacant!0 (bvadd (x!8369 lt!19492) #b00000000000000000000000000000001) (nextIndex!0 (index!2984 lt!19492) (x!8369 lt!19492) mask!853) (index!2984 lt!19492) (select (arr!1421 lt!19355) #b00000000000000000000000000000000) lt!19355 mask!853))))

(declare-fun b!44906 () Bool)

(assert (=> b!44906 (= e!28463 (MissingVacant!215 (index!2984 lt!19492)))))

(declare-fun b!44907 () Bool)

(declare-fun c!5971 () Bool)

(declare-fun lt!19820 () (_ BitVec 64))

(assert (=> b!44907 (= c!5971 (= lt!19820 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!28462 () SeekEntryResult!215)

(assert (=> b!44907 (= e!28462 e!28463)))

(declare-fun b!44908 () Bool)

(declare-fun e!28464 () SeekEntryResult!215)

(assert (=> b!44908 (= e!28464 Undefined!215)))

(declare-fun b!44910 () Bool)

(assert (=> b!44910 (= e!28462 (Found!215 (index!2984 lt!19492)))))

(declare-fun d!8543 () Bool)

(declare-fun lt!19821 () SeekEntryResult!215)

(assert (=> d!8543 (and (or (is-Undefined!215 lt!19821) (not (is-Found!215 lt!19821)) (and (bvsge (index!2983 lt!19821) #b00000000000000000000000000000000) (bvslt (index!2983 lt!19821) (size!1624 lt!19355)))) (or (is-Undefined!215 lt!19821) (is-Found!215 lt!19821) (not (is-MissingVacant!215 lt!19821)) (not (= (index!2985 lt!19821) (index!2984 lt!19492))) (and (bvsge (index!2985 lt!19821) #b00000000000000000000000000000000) (bvslt (index!2985 lt!19821) (size!1624 lt!19355)))) (or (is-Undefined!215 lt!19821) (ite (is-Found!215 lt!19821) (= (select (arr!1421 lt!19355) (index!2983 lt!19821)) (select (arr!1421 lt!19355) #b00000000000000000000000000000000)) (and (is-MissingVacant!215 lt!19821) (= (index!2985 lt!19821) (index!2984 lt!19492)) (= (select (arr!1421 lt!19355) (index!2985 lt!19821)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!8543 (= lt!19821 e!28464)))

(declare-fun c!5972 () Bool)

(assert (=> d!8543 (= c!5972 (bvsge (x!8369 lt!19492) #b01111111111111111111111111111110))))

(assert (=> d!8543 (= lt!19820 (select (arr!1421 lt!19355) (index!2984 lt!19492)))))

(assert (=> d!8543 (validMask!0 mask!853)))

(assert (=> d!8543 (= (seekKeyOrZeroReturnVacant!0 (x!8369 lt!19492) (index!2984 lt!19492) (index!2984 lt!19492) (select (arr!1421 lt!19355) #b00000000000000000000000000000000) lt!19355 mask!853) lt!19821)))

(declare-fun b!44909 () Bool)

(assert (=> b!44909 (= e!28464 e!28462)))

(declare-fun c!5973 () Bool)

(assert (=> b!44909 (= c!5973 (= lt!19820 (select (arr!1421 lt!19355) #b00000000000000000000000000000000)))))

(assert (= (and d!8543 c!5972) b!44908))

(assert (= (and d!8543 (not c!5972)) b!44909))

(assert (= (and b!44909 c!5973) b!44910))

(assert (= (and b!44909 (not c!5973)) b!44907))

(assert (= (and b!44907 c!5971) b!44906))

(assert (= (and b!44907 (not c!5971)) b!44905))

(declare-fun m!39085 () Bool)

(assert (=> b!44905 m!39085))

(assert (=> b!44905 m!39085))

(assert (=> b!44905 m!38423))

(declare-fun m!39087 () Bool)

(assert (=> b!44905 m!39087))

(declare-fun m!39089 () Bool)

(assert (=> d!8543 m!39089))

(declare-fun m!39091 () Bool)

(assert (=> d!8543 m!39091))

(assert (=> d!8543 m!38653))

(assert (=> d!8543 m!38383))

(assert (=> b!44490 d!8543))

(declare-fun d!8563 () Bool)

(assert (=> d!8563 (arrayContainsKey!0 lt!19355 lt!19455 #b00000000000000000000000000000000)))

(declare-fun lt!19824 () Unit!1237)

(assert (=> d!8563 (= lt!19824 (choose!13 lt!19355 lt!19455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!8563 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!8563 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19355 lt!19455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19824)))

(declare-fun bs!2036 () Bool)

(assert (= bs!2036 d!8563))

(assert (=> bs!2036 m!38583))

(declare-fun m!39093 () Bool)

(assert (=> bs!2036 m!39093))

(assert (=> b!44388 d!8563))

(declare-fun d!8565 () Bool)

(declare-fun res!26410 () Bool)

(declare-fun e!28467 () Bool)

(assert (=> d!8565 (=> res!26410 e!28467)))

(assert (=> d!8565 (= res!26410 (= (select (arr!1421 lt!19355) #b00000000000000000000000000000000) lt!19455))))

(assert (=> d!8565 (= (arrayContainsKey!0 lt!19355 lt!19455 #b00000000000000000000000000000000) e!28467)))

(declare-fun b!44914 () Bool)

(declare-fun e!28468 () Bool)

(assert (=> b!44914 (= e!28467 e!28468)))

(declare-fun res!26411 () Bool)

(assert (=> b!44914 (=> (not res!26411) (not e!28468))))

(assert (=> b!44914 (= res!26411 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1624 lt!19355)))))

(declare-fun b!44915 () Bool)

(assert (=> b!44915 (= e!28468 (arrayContainsKey!0 lt!19355 lt!19455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8565 (not res!26410)) b!44914))

(assert (= (and b!44914 res!26411) b!44915))

(assert (=> d!8565 m!38423))

(declare-fun m!39095 () Bool)

(assert (=> b!44915 m!39095))

(assert (=> b!44388 d!8565))

(declare-fun b!44917 () Bool)

(declare-fun e!28472 () SeekEntryResult!215)

(declare-fun lt!19827 () SeekEntryResult!215)

(assert (=> b!44917 (= e!28472 (MissingZero!215 (index!2984 lt!19827)))))

(declare-fun b!44918 () Bool)

(declare-fun c!5974 () Bool)

(declare-fun lt!19826 () (_ BitVec 64))

(assert (=> b!44918 (= c!5974 (= lt!19826 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!28471 () SeekEntryResult!215)

(assert (=> b!44918 (= e!28471 e!28472)))

(declare-fun b!44919 () Bool)

(assert (=> b!44919 (= e!28471 (Found!215 (index!2984 lt!19827)))))

(declare-fun b!44920 () Bool)

(assert (=> b!44920 (= e!28472 (seekKeyOrZeroReturnVacant!0 (x!8369 lt!19827) (index!2984 lt!19827) (index!2984 lt!19827) (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19355 mask!853))))

(declare-fun b!44921 () Bool)

(declare-fun e!28469 () SeekEntryResult!215)

(assert (=> b!44921 (= e!28469 e!28471)))

(assert (=> b!44921 (= lt!19826 (select (arr!1421 lt!19355) (index!2984 lt!19827)))))

(declare-fun c!5975 () Bool)

(assert (=> b!44921 (= c!5975 (= lt!19826 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!8567 () Bool)

(declare-fun lt!19828 () SeekEntryResult!215)

(assert (=> d!8567 (and (or (is-Undefined!215 lt!19828) (not (is-Found!215 lt!19828)) (and (bvsge (index!2983 lt!19828) #b00000000000000000000000000000000) (bvslt (index!2983 lt!19828) (size!1624 lt!19355)))) (or (is-Undefined!215 lt!19828) (is-Found!215 lt!19828) (not (is-MissingZero!215 lt!19828)) (and (bvsge (index!2982 lt!19828) #b00000000000000000000000000000000) (bvslt (index!2982 lt!19828) (size!1624 lt!19355)))) (or (is-Undefined!215 lt!19828) (is-Found!215 lt!19828) (is-MissingZero!215 lt!19828) (not (is-MissingVacant!215 lt!19828)) (and (bvsge (index!2985 lt!19828) #b00000000000000000000000000000000) (bvslt (index!2985 lt!19828) (size!1624 lt!19355)))) (or (is-Undefined!215 lt!19828) (ite (is-Found!215 lt!19828) (= (select (arr!1421 lt!19355) (index!2983 lt!19828)) (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite (is-MissingZero!215 lt!19828) (= (select (arr!1421 lt!19355) (index!2982 lt!19828)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!215 lt!19828) (= (select (arr!1421 lt!19355) (index!2985 lt!19828)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!8567 (= lt!19828 e!28469)))

(declare-fun c!5976 () Bool)

(assert (=> d!8567 (= c!5976 (and (is-Intermediate!215 lt!19827) (undefined!1027 lt!19827)))))

(assert (=> d!8567 (= lt!19827 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!853) (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19355 mask!853))))

(assert (=> d!8567 (validMask!0 mask!853)))

(assert (=> d!8567 (= (seekEntryOrOpen!0 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19355 mask!853) lt!19828)))

(declare-fun b!44922 () Bool)

(assert (=> b!44922 (= e!28469 Undefined!215)))

(assert (= (and d!8567 c!5976) b!44922))

(assert (= (and d!8567 (not c!5976)) b!44921))

(assert (= (and b!44921 c!5975) b!44919))

(assert (= (and b!44921 (not c!5975)) b!44918))

(assert (= (and b!44918 c!5974) b!44917))

(assert (= (and b!44918 (not c!5974)) b!44920))

(assert (=> b!44920 m!38565))

(declare-fun m!39101 () Bool)

(assert (=> b!44920 m!39101))

(declare-fun m!39103 () Bool)

(assert (=> b!44921 m!39103))

(declare-fun m!39105 () Bool)

(assert (=> d!8567 m!39105))

(assert (=> d!8567 m!38565))

(declare-fun m!39107 () Bool)

(assert (=> d!8567 m!39107))

(assert (=> d!8567 m!38383))

(declare-fun m!39109 () Bool)

(assert (=> d!8567 m!39109))

(assert (=> d!8567 m!39107))

(assert (=> d!8567 m!38565))

(declare-fun m!39111 () Bool)

(assert (=> d!8567 m!39111))

(declare-fun m!39113 () Bool)

(assert (=> d!8567 m!39113))

(assert (=> b!44388 d!8567))

(declare-fun d!8571 () Bool)

(assert (=> d!8571 (= (validKeyInArray!0 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!44364 d!8571))

(declare-fun d!8573 () Bool)

(declare-datatypes ((Option!114 0))(
  ( (Some!113 (v!2093 V!2329)) (None!112) )
))
(declare-fun get!807 (Option!114) V!2329)

(declare-fun getValueByKey!108 (List!1228 (_ BitVec 64)) Option!114)

(assert (=> d!8573 (= (apply!62 lt!19641 lt!19629) (get!807 (getValueByKey!108 (toList!627 lt!19641) lt!19629)))))

(declare-fun bs!2038 () Bool)

(assert (= bs!2038 d!8573))

(declare-fun m!39143 () Bool)

(assert (=> bs!2038 m!39143))

(assert (=> bs!2038 m!39143))

(declare-fun m!39145 () Bool)

(assert (=> bs!2038 m!39145))

(assert (=> b!44675 d!8573))

(declare-fun d!8581 () Bool)

(declare-fun e!28485 () Bool)

(assert (=> d!8581 e!28485))

(declare-fun res!26428 () Bool)

(assert (=> d!8581 (=> (not res!26428) (not e!28485))))

(declare-fun lt!19860 () ListLongMap!1223)

(assert (=> d!8581 (= res!26428 (contains!580 lt!19860 (_1!831 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348)))))))

(declare-fun lt!19861 () List!1228)

(assert (=> d!8581 (= lt!19860 (ListLongMap!1224 lt!19861))))

(declare-fun lt!19858 () Unit!1237)

(declare-fun lt!19859 () Unit!1237)

(assert (=> d!8581 (= lt!19858 lt!19859)))

(assert (=> d!8581 (= (getValueByKey!108 lt!19861 (_1!831 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348)))) (Some!113 (_2!831 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!34 (List!1228 (_ BitVec 64) V!2329) Unit!1237)

(assert (=> d!8581 (= lt!19859 (lemmaContainsTupThenGetReturnValue!34 lt!19861 (_1!831 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348))) (_2!831 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348)))))))

(declare-fun insertStrictlySorted!31 (List!1228 (_ BitVec 64) V!2329) List!1228)

(assert (=> d!8581 (= lt!19861 (insertStrictlySorted!31 (toList!627 lt!19641) (_1!831 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348))) (_2!831 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348)))))))

(assert (=> d!8581 (= (+!72 lt!19641 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348))) lt!19860)))

(declare-fun b!44944 () Bool)

(declare-fun res!26427 () Bool)

(assert (=> b!44944 (=> (not res!26427) (not e!28485))))

(assert (=> b!44944 (= res!26427 (= (getValueByKey!108 (toList!627 lt!19860) (_1!831 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348)))) (Some!113 (_2!831 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348))))))))

(declare-fun b!44945 () Bool)

(declare-fun contains!584 (List!1228 tuple2!1642) Bool)

(assert (=> b!44945 (= e!28485 (contains!584 (toList!627 lt!19860) (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348))))))

(assert (= (and d!8581 res!26428) b!44944))

(assert (= (and b!44944 res!26427) b!44945))

(declare-fun m!39193 () Bool)

(assert (=> d!8581 m!39193))

(declare-fun m!39195 () Bool)

(assert (=> d!8581 m!39195))

(declare-fun m!39197 () Bool)

(assert (=> d!8581 m!39197))

(declare-fun m!39199 () Bool)

(assert (=> d!8581 m!39199))

(declare-fun m!39201 () Bool)

(assert (=> b!44944 m!39201))

(declare-fun m!39203 () Bool)

(assert (=> b!44945 m!39203))

(assert (=> b!44675 d!8581))

(declare-fun d!8599 () Bool)

(assert (=> d!8599 (contains!580 (+!72 lt!19647 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348))) lt!19634)))

(declare-fun lt!19890 () Unit!1237)

(declare-fun choose!275 (ListLongMap!1223 (_ BitVec 64) V!2329 (_ BitVec 64)) Unit!1237)

(assert (=> d!8599 (= lt!19890 (choose!275 lt!19647 lt!19649 (zeroValue!1816 lt!19348) lt!19634))))

(assert (=> d!8599 (contains!580 lt!19647 lt!19634)))

(assert (=> d!8599 (= (addStillContains!39 lt!19647 lt!19649 (zeroValue!1816 lt!19348) lt!19634) lt!19890)))

(declare-fun bs!2042 () Bool)

(assert (= bs!2042 d!8599))

(assert (=> bs!2042 m!38823))

(assert (=> bs!2042 m!38823))

(assert (=> bs!2042 m!38831))

(declare-fun m!39235 () Bool)

(assert (=> bs!2042 m!39235))

(declare-fun m!39237 () Bool)

(assert (=> bs!2042 m!39237))

(assert (=> b!44675 d!8599))

(declare-fun d!8611 () Bool)

(assert (=> d!8611 (= (apply!62 (+!72 lt!19640 (tuple2!1643 lt!19636 (minValue!1816 lt!19348))) lt!19628) (apply!62 lt!19640 lt!19628))))

(declare-fun lt!19893 () Unit!1237)

(declare-fun choose!276 (ListLongMap!1223 (_ BitVec 64) V!2329 (_ BitVec 64)) Unit!1237)

(assert (=> d!8611 (= lt!19893 (choose!276 lt!19640 lt!19636 (minValue!1816 lt!19348) lt!19628))))

(declare-fun e!28510 () Bool)

(assert (=> d!8611 e!28510))

(declare-fun res!26444 () Bool)

(assert (=> d!8611 (=> (not res!26444) (not e!28510))))

(assert (=> d!8611 (= res!26444 (contains!580 lt!19640 lt!19628))))

(assert (=> d!8611 (= (addApplyDifferent!39 lt!19640 lt!19636 (minValue!1816 lt!19348) lt!19628) lt!19893)))

(declare-fun b!44987 () Bool)

(assert (=> b!44987 (= e!28510 (not (= lt!19628 lt!19636)))))

(assert (= (and d!8611 res!26444) b!44987))

(declare-fun m!39239 () Bool)

(assert (=> d!8611 m!39239))

(assert (=> d!8611 m!38817))

(assert (=> d!8611 m!38827))

(assert (=> d!8611 m!38817))

(assert (=> d!8611 m!38821))

(declare-fun m!39241 () Bool)

(assert (=> d!8611 m!39241))

(assert (=> b!44675 d!8611))

(declare-fun d!8613 () Bool)

(assert (=> d!8613 (= (apply!62 (+!72 lt!19641 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348))) lt!19629) (get!807 (getValueByKey!108 (toList!627 (+!72 lt!19641 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348)))) lt!19629)))))

(declare-fun bs!2043 () Bool)

(assert (= bs!2043 d!8613))

(declare-fun m!39243 () Bool)

(assert (=> bs!2043 m!39243))

(assert (=> bs!2043 m!39243))

(declare-fun m!39245 () Bool)

(assert (=> bs!2043 m!39245))

(assert (=> b!44675 d!8613))

(declare-fun d!8615 () Bool)

(assert (=> d!8615 (= (apply!62 (+!72 lt!19626 (tuple2!1643 lt!19633 (minValue!1816 lt!19348))) lt!19645) (apply!62 lt!19626 lt!19645))))

(declare-fun lt!19894 () Unit!1237)

(assert (=> d!8615 (= lt!19894 (choose!276 lt!19626 lt!19633 (minValue!1816 lt!19348) lt!19645))))

(declare-fun e!28511 () Bool)

(assert (=> d!8615 e!28511))

(declare-fun res!26445 () Bool)

(assert (=> d!8615 (=> (not res!26445) (not e!28511))))

(assert (=> d!8615 (= res!26445 (contains!580 lt!19626 lt!19645))))

(assert (=> d!8615 (= (addApplyDifferent!39 lt!19626 lt!19633 (minValue!1816 lt!19348) lt!19645) lt!19894)))

(declare-fun b!44988 () Bool)

(assert (=> b!44988 (= e!28511 (not (= lt!19645 lt!19633)))))

(assert (= (and d!8615 res!26445) b!44988))

(declare-fun m!39247 () Bool)

(assert (=> d!8615 m!39247))

(assert (=> d!8615 m!38805))

(assert (=> d!8615 m!38813))

(assert (=> d!8615 m!38805))

(assert (=> d!8615 m!38807))

(declare-fun m!39249 () Bool)

(assert (=> d!8615 m!39249))

(assert (=> b!44675 d!8615))

(declare-fun d!8617 () Bool)

(assert (=> d!8617 (= (apply!62 (+!72 lt!19640 (tuple2!1643 lt!19636 (minValue!1816 lt!19348))) lt!19628) (get!807 (getValueByKey!108 (toList!627 (+!72 lt!19640 (tuple2!1643 lt!19636 (minValue!1816 lt!19348)))) lt!19628)))))

(declare-fun bs!2044 () Bool)

(assert (= bs!2044 d!8617))

(declare-fun m!39251 () Bool)

(assert (=> bs!2044 m!39251))

(assert (=> bs!2044 m!39251))

(declare-fun m!39253 () Bool)

(assert (=> bs!2044 m!39253))

(assert (=> b!44675 d!8617))

(declare-fun d!8619 () Bool)

(declare-fun e!28534 () Bool)

(assert (=> d!8619 e!28534))

(declare-fun res!26459 () Bool)

(assert (=> d!8619 (=> res!26459 e!28534)))

(declare-fun lt!19933 () Bool)

(assert (=> d!8619 (= res!26459 (not lt!19933))))

(declare-fun lt!19931 () Bool)

(assert (=> d!8619 (= lt!19933 lt!19931)))

(declare-fun lt!19930 () Unit!1237)

(declare-fun e!28535 () Unit!1237)

(assert (=> d!8619 (= lt!19930 e!28535)))

(declare-fun c!6005 () Bool)

(assert (=> d!8619 (= c!6005 lt!19931)))

(declare-fun containsKey!76 (List!1228 (_ BitVec 64)) Bool)

(assert (=> d!8619 (= lt!19931 (containsKey!76 (toList!627 (+!72 lt!19647 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348)))) lt!19634))))

(assert (=> d!8619 (= (contains!580 (+!72 lt!19647 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348))) lt!19634) lt!19933)))

(declare-fun b!45028 () Bool)

(declare-fun lt!19932 () Unit!1237)

(assert (=> b!45028 (= e!28535 lt!19932)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!64 (List!1228 (_ BitVec 64)) Unit!1237)

(assert (=> b!45028 (= lt!19932 (lemmaContainsKeyImpliesGetValueByKeyDefined!64 (toList!627 (+!72 lt!19647 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348)))) lt!19634))))

(declare-fun isDefined!65 (Option!114) Bool)

(assert (=> b!45028 (isDefined!65 (getValueByKey!108 (toList!627 (+!72 lt!19647 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348)))) lt!19634))))

(declare-fun b!45029 () Bool)

(declare-fun Unit!1250 () Unit!1237)

(assert (=> b!45029 (= e!28535 Unit!1250)))

(declare-fun b!45030 () Bool)

(assert (=> b!45030 (= e!28534 (isDefined!65 (getValueByKey!108 (toList!627 (+!72 lt!19647 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348)))) lt!19634)))))

(assert (= (and d!8619 c!6005) b!45028))

(assert (= (and d!8619 (not c!6005)) b!45029))

(assert (= (and d!8619 (not res!26459)) b!45030))

(declare-fun m!39327 () Bool)

(assert (=> d!8619 m!39327))

(declare-fun m!39329 () Bool)

(assert (=> b!45028 m!39329))

(declare-fun m!39333 () Bool)

(assert (=> b!45028 m!39333))

(assert (=> b!45028 m!39333))

(declare-fun m!39335 () Bool)

(assert (=> b!45028 m!39335))

(assert (=> b!45030 m!39333))

(assert (=> b!45030 m!39333))

(assert (=> b!45030 m!39335))

(assert (=> b!44675 d!8619))

(declare-fun d!8637 () Bool)

(assert (=> d!8637 (= (apply!62 lt!19626 lt!19645) (get!807 (getValueByKey!108 (toList!627 lt!19626) lt!19645)))))

(declare-fun bs!2049 () Bool)

(assert (= bs!2049 d!8637))

(declare-fun m!39341 () Bool)

(assert (=> bs!2049 m!39341))

(assert (=> bs!2049 m!39341))

(declare-fun m!39345 () Bool)

(assert (=> bs!2049 m!39345))

(assert (=> b!44675 d!8637))

(declare-fun d!8641 () Bool)

(assert (=> d!8641 (= (apply!62 (+!72 lt!19641 (tuple2!1643 lt!19627 (zeroValue!1816 lt!19348))) lt!19629) (apply!62 lt!19641 lt!19629))))

(declare-fun lt!19934 () Unit!1237)

(assert (=> d!8641 (= lt!19934 (choose!276 lt!19641 lt!19627 (zeroValue!1816 lt!19348) lt!19629))))

(declare-fun e!28536 () Bool)

(assert (=> d!8641 e!28536))

(declare-fun res!26460 () Bool)

(assert (=> d!8641 (=> (not res!26460) (not e!28536))))

(assert (=> d!8641 (= res!26460 (contains!580 lt!19641 lt!19629))))

(assert (=> d!8641 (= (addApplyDifferent!39 lt!19641 lt!19627 (zeroValue!1816 lt!19348) lt!19629) lt!19934)))

(declare-fun b!45031 () Bool)

(assert (=> b!45031 (= e!28536 (not (= lt!19629 lt!19627)))))

(assert (= (and d!8641 res!26460) b!45031))

(declare-fun m!39347 () Bool)

(assert (=> d!8641 m!39347))

(assert (=> d!8641 m!38803))

(assert (=> d!8641 m!38801))

(assert (=> d!8641 m!38803))

(assert (=> d!8641 m!38833))

(declare-fun m!39349 () Bool)

(assert (=> d!8641 m!39349))

(assert (=> b!44675 d!8641))

(declare-fun d!8643 () Bool)

(declare-fun e!28537 () Bool)

(assert (=> d!8643 e!28537))

(declare-fun res!26462 () Bool)

(assert (=> d!8643 (=> (not res!26462) (not e!28537))))

(declare-fun lt!19937 () ListLongMap!1223)

(assert (=> d!8643 (= res!26462 (contains!580 lt!19937 (_1!831 (tuple2!1643 lt!19633 (minValue!1816 lt!19348)))))))

(declare-fun lt!19938 () List!1228)

(assert (=> d!8643 (= lt!19937 (ListLongMap!1224 lt!19938))))

(declare-fun lt!19935 () Unit!1237)

(declare-fun lt!19936 () Unit!1237)

(assert (=> d!8643 (= lt!19935 lt!19936)))

(assert (=> d!8643 (= (getValueByKey!108 lt!19938 (_1!831 (tuple2!1643 lt!19633 (minValue!1816 lt!19348)))) (Some!113 (_2!831 (tuple2!1643 lt!19633 (minValue!1816 lt!19348)))))))

(assert (=> d!8643 (= lt!19936 (lemmaContainsTupThenGetReturnValue!34 lt!19938 (_1!831 (tuple2!1643 lt!19633 (minValue!1816 lt!19348))) (_2!831 (tuple2!1643 lt!19633 (minValue!1816 lt!19348)))))))

(assert (=> d!8643 (= lt!19938 (insertStrictlySorted!31 (toList!627 lt!19626) (_1!831 (tuple2!1643 lt!19633 (minValue!1816 lt!19348))) (_2!831 (tuple2!1643 lt!19633 (minValue!1816 lt!19348)))))))

(assert (=> d!8643 (= (+!72 lt!19626 (tuple2!1643 lt!19633 (minValue!1816 lt!19348))) lt!19937)))

(declare-fun b!45032 () Bool)

(declare-fun res!26461 () Bool)

(assert (=> b!45032 (=> (not res!26461) (not e!28537))))

(assert (=> b!45032 (= res!26461 (= (getValueByKey!108 (toList!627 lt!19937) (_1!831 (tuple2!1643 lt!19633 (minValue!1816 lt!19348)))) (Some!113 (_2!831 (tuple2!1643 lt!19633 (minValue!1816 lt!19348))))))))

(declare-fun b!45033 () Bool)

(assert (=> b!45033 (= e!28537 (contains!584 (toList!627 lt!19937) (tuple2!1643 lt!19633 (minValue!1816 lt!19348))))))

(assert (= (and d!8643 res!26462) b!45032))

(assert (= (and b!45032 res!26461) b!45033))

(declare-fun m!39351 () Bool)

(assert (=> d!8643 m!39351))

(declare-fun m!39353 () Bool)

(assert (=> d!8643 m!39353))

(declare-fun m!39355 () Bool)

(assert (=> d!8643 m!39355))

(declare-fun m!39357 () Bool)

(assert (=> d!8643 m!39357))

(declare-fun m!39359 () Bool)

(assert (=> b!45032 m!39359))

(declare-fun m!39361 () Bool)

(assert (=> b!45033 m!39361))

(assert (=> b!44675 d!8643))

(declare-fun b!45119 () Bool)

(declare-fun e!28590 () Bool)

(declare-fun e!28592 () Bool)

(assert (=> b!45119 (= e!28590 e!28592)))

(declare-fun c!6037 () Bool)

(assert (=> b!45119 (= c!6037 (bvslt #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))))))

(declare-fun b!45120 () Bool)

(assert (=> b!45120 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))))))

(assert (=> b!45120 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1625 (_values!1881 lt!19348))))))

(declare-fun e!28593 () Bool)

(declare-fun lt!19987 () ListLongMap!1223)

(assert (=> b!45120 (= e!28593 (= (apply!62 lt!19987 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)) (get!804 (select (arr!1422 (_values!1881 lt!19348)) #b00000000000000000000000000000000) (dynLambda!267 (defaultEntry!1898 lt!19348) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!45121 () Bool)

(declare-fun e!28594 () Bool)

(assert (=> b!45121 (= e!28594 e!28590)))

(declare-fun c!6038 () Bool)

(declare-fun e!28591 () Bool)

(assert (=> b!45121 (= c!6038 e!28591)))

(declare-fun res!26491 () Bool)

(assert (=> b!45121 (=> (not res!26491) (not e!28591))))

(assert (=> b!45121 (= res!26491 (bvslt #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))))))

(declare-fun b!45122 () Bool)

(declare-fun e!28588 () ListLongMap!1223)

(declare-fun call!3675 () ListLongMap!1223)

(assert (=> b!45122 (= e!28588 call!3675)))

(declare-fun d!8645 () Bool)

(assert (=> d!8645 e!28594))

(declare-fun res!26488 () Bool)

(assert (=> d!8645 (=> (not res!26488) (not e!28594))))

(assert (=> d!8645 (= res!26488 (not (contains!580 lt!19987 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!28589 () ListLongMap!1223)

(assert (=> d!8645 (= lt!19987 e!28589)))

(declare-fun c!6035 () Bool)

(assert (=> d!8645 (= c!6035 (bvsge #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))))))

(assert (=> d!8645 (validMask!0 (mask!5475 lt!19348))))

(assert (=> d!8645 (= (getCurrentListMapNoExtraKeys!41 (_keys!3465 lt!19348) (_values!1881 lt!19348) (mask!5475 lt!19348) (extraKeys!1789 lt!19348) (zeroValue!1816 lt!19348) (minValue!1816 lt!19348) #b00000000000000000000000000000000 (defaultEntry!1898 lt!19348)) lt!19987)))

(declare-fun b!45123 () Bool)

(assert (=> b!45123 (= e!28591 (validKeyInArray!0 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(assert (=> b!45123 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!45124 () Bool)

(assert (=> b!45124 (= e!28589 (ListLongMap!1224 Nil!1225))))

(declare-fun b!45125 () Bool)

(assert (=> b!45125 (= e!28589 e!28588)))

(declare-fun c!6036 () Bool)

(assert (=> b!45125 (= c!6036 (validKeyInArray!0 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(declare-fun b!45126 () Bool)

(assert (=> b!45126 (= e!28592 (= lt!19987 (getCurrentListMapNoExtraKeys!41 (_keys!3465 lt!19348) (_values!1881 lt!19348) (mask!5475 lt!19348) (extraKeys!1789 lt!19348) (zeroValue!1816 lt!19348) (minValue!1816 lt!19348) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1898 lt!19348))))))

(declare-fun b!45127 () Bool)

(declare-fun res!26489 () Bool)

(assert (=> b!45127 (=> (not res!26489) (not e!28594))))

(assert (=> b!45127 (= res!26489 (not (contains!580 lt!19987 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!3672 () Bool)

(assert (=> bm!3672 (= call!3675 (getCurrentListMapNoExtraKeys!41 (_keys!3465 lt!19348) (_values!1881 lt!19348) (mask!5475 lt!19348) (extraKeys!1789 lt!19348) (zeroValue!1816 lt!19348) (minValue!1816 lt!19348) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1898 lt!19348)))))

(declare-fun b!45128 () Bool)

(assert (=> b!45128 (= e!28590 e!28593)))

(assert (=> b!45128 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1624 (_keys!3465 lt!19348))))))

(declare-fun res!26490 () Bool)

(assert (=> b!45128 (= res!26490 (contains!580 lt!19987 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(assert (=> b!45128 (=> (not res!26490) (not e!28593))))

(declare-fun b!45129 () Bool)

(declare-fun lt!19990 () Unit!1237)

(declare-fun lt!19988 () Unit!1237)

(assert (=> b!45129 (= lt!19990 lt!19988)))

(declare-fun lt!19986 () (_ BitVec 64))

(declare-fun lt!19991 () ListLongMap!1223)

(declare-fun lt!19989 () V!2329)

(declare-fun lt!19992 () (_ BitVec 64))

(assert (=> b!45129 (not (contains!580 (+!72 lt!19991 (tuple2!1643 lt!19992 lt!19989)) lt!19986))))

(declare-fun addStillNotContains!15 (ListLongMap!1223 (_ BitVec 64) V!2329 (_ BitVec 64)) Unit!1237)

(assert (=> b!45129 (= lt!19988 (addStillNotContains!15 lt!19991 lt!19992 lt!19989 lt!19986))))

(assert (=> b!45129 (= lt!19986 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!45129 (= lt!19989 (get!804 (select (arr!1422 (_values!1881 lt!19348)) #b00000000000000000000000000000000) (dynLambda!267 (defaultEntry!1898 lt!19348) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!45129 (= lt!19992 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000))))

(assert (=> b!45129 (= lt!19991 call!3675)))

(assert (=> b!45129 (= e!28588 (+!72 call!3675 (tuple2!1643 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) (get!804 (select (arr!1422 (_values!1881 lt!19348)) #b00000000000000000000000000000000) (dynLambda!267 (defaultEntry!1898 lt!19348) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!45130 () Bool)

(declare-fun isEmpty!294 (ListLongMap!1223) Bool)

(assert (=> b!45130 (= e!28592 (isEmpty!294 lt!19987))))

(assert (= (and d!8645 c!6035) b!45124))

(assert (= (and d!8645 (not c!6035)) b!45125))

(assert (= (and b!45125 c!6036) b!45129))

(assert (= (and b!45125 (not c!6036)) b!45122))

(assert (= (or b!45129 b!45122) bm!3672))

(assert (= (and d!8645 res!26488) b!45127))

(assert (= (and b!45127 res!26489) b!45121))

(assert (= (and b!45121 res!26491) b!45123))

(assert (= (and b!45121 c!6038) b!45128))

(assert (= (and b!45121 (not c!6038)) b!45119))

(assert (= (and b!45128 res!26490) b!45120))

(assert (= (and b!45119 c!6037) b!45126))

(assert (= (and b!45119 (not c!6037)) b!45130))

(declare-fun b_lambda!2357 () Bool)

(assert (=> (not b_lambda!2357) (not b!45120)))

(assert (=> b!45120 t!4260))

(declare-fun b_and!2735 () Bool)

(assert (= b_and!2723 (and (=> t!4260 result!1769) b_and!2735)))

(declare-fun b_lambda!2359 () Bool)

(assert (=> (not b_lambda!2359) (not b!45129)))

(assert (=> b!45129 t!4260))

(declare-fun b_and!2737 () Bool)

(assert (= b_and!2735 (and (=> t!4260 result!1769) b_and!2737)))

(assert (=> b!45125 m!38593))

(assert (=> b!45125 m!38593))

(assert (=> b!45125 m!38601))

(declare-fun m!39495 () Bool)

(assert (=> b!45126 m!39495))

(declare-fun m!39497 () Bool)

(assert (=> b!45129 m!39497))

(assert (=> b!45129 m!38793))

(declare-fun m!39499 () Bool)

(assert (=> b!45129 m!39499))

(assert (=> b!45129 m!38593))

(declare-fun m!39501 () Bool)

(assert (=> b!45129 m!39501))

(assert (=> b!45129 m!38791))

(assert (=> b!45129 m!39499))

(declare-fun m!39503 () Bool)

(assert (=> b!45129 m!39503))

(assert (=> b!45129 m!38793))

(assert (=> b!45129 m!38791))

(assert (=> b!45129 m!38795))

(declare-fun m!39505 () Bool)

(assert (=> b!45127 m!39505))

(assert (=> b!45120 m!38593))

(declare-fun m!39507 () Bool)

(assert (=> b!45120 m!39507))

(assert (=> b!45120 m!38793))

(assert (=> b!45120 m!38593))

(assert (=> b!45120 m!38791))

(assert (=> b!45120 m!38793))

(assert (=> b!45120 m!38791))

(assert (=> b!45120 m!38795))

(assert (=> bm!3672 m!39495))

(declare-fun m!39513 () Bool)

(assert (=> b!45130 m!39513))

(assert (=> b!45123 m!38593))

(assert (=> b!45123 m!38593))

(assert (=> b!45123 m!38601))

(declare-fun m!39515 () Bool)

(assert (=> d!8645 m!39515))

(assert (=> d!8645 m!38569))

(assert (=> b!45128 m!38593))

(assert (=> b!45128 m!38593))

(declare-fun m!39517 () Bool)

(assert (=> b!45128 m!39517))

(assert (=> b!44675 d!8645))

(declare-fun d!8707 () Bool)

(declare-fun e!28604 () Bool)

(assert (=> d!8707 e!28604))

(declare-fun res!26500 () Bool)

(assert (=> d!8707 (=> (not res!26500) (not e!28604))))

(declare-fun lt!20004 () ListLongMap!1223)

(assert (=> d!8707 (= res!26500 (contains!580 lt!20004 (_1!831 (tuple2!1643 lt!19636 (minValue!1816 lt!19348)))))))

(declare-fun lt!20005 () List!1228)

(assert (=> d!8707 (= lt!20004 (ListLongMap!1224 lt!20005))))

(declare-fun lt!20002 () Unit!1237)

(declare-fun lt!20003 () Unit!1237)

(assert (=> d!8707 (= lt!20002 lt!20003)))

(assert (=> d!8707 (= (getValueByKey!108 lt!20005 (_1!831 (tuple2!1643 lt!19636 (minValue!1816 lt!19348)))) (Some!113 (_2!831 (tuple2!1643 lt!19636 (minValue!1816 lt!19348)))))))

(assert (=> d!8707 (= lt!20003 (lemmaContainsTupThenGetReturnValue!34 lt!20005 (_1!831 (tuple2!1643 lt!19636 (minValue!1816 lt!19348))) (_2!831 (tuple2!1643 lt!19636 (minValue!1816 lt!19348)))))))

(assert (=> d!8707 (= lt!20005 (insertStrictlySorted!31 (toList!627 lt!19640) (_1!831 (tuple2!1643 lt!19636 (minValue!1816 lt!19348))) (_2!831 (tuple2!1643 lt!19636 (minValue!1816 lt!19348)))))))

(assert (=> d!8707 (= (+!72 lt!19640 (tuple2!1643 lt!19636 (minValue!1816 lt!19348))) lt!20004)))

(declare-fun b!45142 () Bool)

(declare-fun res!26499 () Bool)

(assert (=> b!45142 (=> (not res!26499) (not e!28604))))

(assert (=> b!45142 (= res!26499 (= (getValueByKey!108 (toList!627 lt!20004) (_1!831 (tuple2!1643 lt!19636 (minValue!1816 lt!19348)))) (Some!113 (_2!831 (tuple2!1643 lt!19636 (minValue!1816 lt!19348))))))))

(declare-fun b!45143 () Bool)

(assert (=> b!45143 (= e!28604 (contains!584 (toList!627 lt!20004) (tuple2!1643 lt!19636 (minValue!1816 lt!19348))))))

(assert (= (and d!8707 res!26500) b!45142))

(assert (= (and b!45142 res!26499) b!45143))

(declare-fun m!39525 () Bool)

(assert (=> d!8707 m!39525))

(declare-fun m!39527 () Bool)

(assert (=> d!8707 m!39527))

(declare-fun m!39529 () Bool)

(assert (=> d!8707 m!39529))

(declare-fun m!39531 () Bool)

(assert (=> d!8707 m!39531))

(declare-fun m!39533 () Bool)

(assert (=> b!45142 m!39533))

(declare-fun m!39535 () Bool)

(assert (=> b!45143 m!39535))

(assert (=> b!44675 d!8707))

(declare-fun d!8711 () Bool)

(declare-fun e!28605 () Bool)

(assert (=> d!8711 e!28605))

(declare-fun res!26502 () Bool)

(assert (=> d!8711 (=> (not res!26502) (not e!28605))))

(declare-fun lt!20008 () ListLongMap!1223)

(assert (=> d!8711 (= res!26502 (contains!580 lt!20008 (_1!831 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348)))))))

(declare-fun lt!20009 () List!1228)

(assert (=> d!8711 (= lt!20008 (ListLongMap!1224 lt!20009))))

(declare-fun lt!20006 () Unit!1237)

(declare-fun lt!20007 () Unit!1237)

(assert (=> d!8711 (= lt!20006 lt!20007)))

(assert (=> d!8711 (= (getValueByKey!108 lt!20009 (_1!831 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348)))) (Some!113 (_2!831 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348)))))))

(assert (=> d!8711 (= lt!20007 (lemmaContainsTupThenGetReturnValue!34 lt!20009 (_1!831 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348))) (_2!831 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348)))))))

(assert (=> d!8711 (= lt!20009 (insertStrictlySorted!31 (toList!627 lt!19647) (_1!831 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348))) (_2!831 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348)))))))

(assert (=> d!8711 (= (+!72 lt!19647 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348))) lt!20008)))

(declare-fun b!45144 () Bool)

(declare-fun res!26501 () Bool)

(assert (=> b!45144 (=> (not res!26501) (not e!28605))))

(assert (=> b!45144 (= res!26501 (= (getValueByKey!108 (toList!627 lt!20008) (_1!831 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348)))) (Some!113 (_2!831 (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348))))))))

(declare-fun b!45145 () Bool)

(assert (=> b!45145 (= e!28605 (contains!584 (toList!627 lt!20008) (tuple2!1643 lt!19649 (zeroValue!1816 lt!19348))))))

(assert (= (and d!8711 res!26502) b!45144))

(assert (= (and b!45144 res!26501) b!45145))

(declare-fun m!39537 () Bool)

(assert (=> d!8711 m!39537))

(declare-fun m!39539 () Bool)

(assert (=> d!8711 m!39539))

(declare-fun m!39541 () Bool)

(assert (=> d!8711 m!39541))

(declare-fun m!39543 () Bool)

(assert (=> d!8711 m!39543))

(declare-fun m!39545 () Bool)

(assert (=> b!45144 m!39545))

(declare-fun m!39547 () Bool)

(assert (=> b!45145 m!39547))

(assert (=> b!44675 d!8711))

(declare-fun d!8715 () Bool)

(assert (=> d!8715 (= (apply!62 (+!72 lt!19626 (tuple2!1643 lt!19633 (minValue!1816 lt!19348))) lt!19645) (get!807 (getValueByKey!108 (toList!627 (+!72 lt!19626 (tuple2!1643 lt!19633 (minValue!1816 lt!19348)))) lt!19645)))))

(declare-fun bs!2057 () Bool)

(assert (= bs!2057 d!8715))

(declare-fun m!39549 () Bool)

(assert (=> bs!2057 m!39549))

(assert (=> bs!2057 m!39549))

(declare-fun m!39551 () Bool)

(assert (=> bs!2057 m!39551))

(assert (=> b!44675 d!8715))

(declare-fun d!8717 () Bool)

(assert (=> d!8717 (= (apply!62 lt!19640 lt!19628) (get!807 (getValueByKey!108 (toList!627 lt!19640) lt!19628)))))

(declare-fun bs!2058 () Bool)

(assert (= bs!2058 d!8717))

(declare-fun m!39553 () Bool)

(assert (=> bs!2058 m!39553))

(assert (=> bs!2058 m!39553))

(declare-fun m!39555 () Bool)

(assert (=> bs!2058 m!39555))

(assert (=> b!44675 d!8717))

(declare-fun d!8719 () Bool)

(assert (=> d!8719 (= (apply!62 lt!19646 #b0000000000000000000000000000000000000000000000000000000000000000) (get!807 (getValueByKey!108 (toList!627 lt!19646) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!2059 () Bool)

(assert (= bs!2059 d!8719))

(declare-fun m!39557 () Bool)

(assert (=> bs!2059 m!39557))

(assert (=> bs!2059 m!39557))

(declare-fun m!39561 () Bool)

(assert (=> bs!2059 m!39561))

(assert (=> b!44691 d!8719))

(assert (=> bm!3637 d!8645))

(declare-fun d!8721 () Bool)

(assert (=> d!8721 (= (validMask!0 (mask!5475 lt!19348)) (and (or (= (mask!5475 lt!19348) #b00000000000000000000000000000111) (= (mask!5475 lt!19348) #b00000000000000000000000000001111) (= (mask!5475 lt!19348) #b00000000000000000000000000011111) (= (mask!5475 lt!19348) #b00000000000000000000000000111111) (= (mask!5475 lt!19348) #b00000000000000000000000001111111) (= (mask!5475 lt!19348) #b00000000000000000000000011111111) (= (mask!5475 lt!19348) #b00000000000000000000000111111111) (= (mask!5475 lt!19348) #b00000000000000000000001111111111) (= (mask!5475 lt!19348) #b00000000000000000000011111111111) (= (mask!5475 lt!19348) #b00000000000000000000111111111111) (= (mask!5475 lt!19348) #b00000000000000000001111111111111) (= (mask!5475 lt!19348) #b00000000000000000011111111111111) (= (mask!5475 lt!19348) #b00000000000000000111111111111111) (= (mask!5475 lt!19348) #b00000000000000001111111111111111) (= (mask!5475 lt!19348) #b00000000000000011111111111111111) (= (mask!5475 lt!19348) #b00000000000000111111111111111111) (= (mask!5475 lt!19348) #b00000000000001111111111111111111) (= (mask!5475 lt!19348) #b00000000000011111111111111111111) (= (mask!5475 lt!19348) #b00000000000111111111111111111111) (= (mask!5475 lt!19348) #b00000000001111111111111111111111) (= (mask!5475 lt!19348) #b00000000011111111111111111111111) (= (mask!5475 lt!19348) #b00000000111111111111111111111111) (= (mask!5475 lt!19348) #b00000001111111111111111111111111) (= (mask!5475 lt!19348) #b00000011111111111111111111111111) (= (mask!5475 lt!19348) #b00000111111111111111111111111111) (= (mask!5475 lt!19348) #b00001111111111111111111111111111) (= (mask!5475 lt!19348) #b00011111111111111111111111111111) (= (mask!5475 lt!19348) #b00111111111111111111111111111111)) (bvsle (mask!5475 lt!19348) #b00111111111111111111111111111111)))))

(assert (=> d!8457 d!8721))

(assert (=> b!44376 d!8541))

(declare-fun d!8725 () Bool)

(declare-fun e!28610 () Bool)

(assert (=> d!8725 e!28610))

(declare-fun res!26506 () Bool)

(assert (=> d!8725 (=> res!26506 e!28610)))

(declare-fun lt!20013 () Bool)

(assert (=> d!8725 (= res!26506 (not lt!20013))))

(declare-fun lt!20011 () Bool)

(assert (=> d!8725 (= lt!20013 lt!20011)))

(declare-fun lt!20010 () Unit!1237)

(declare-fun e!28611 () Unit!1237)

(assert (=> d!8725 (= lt!20010 e!28611)))

(declare-fun c!6042 () Bool)

(assert (=> d!8725 (= c!6042 lt!20011)))

(assert (=> d!8725 (= lt!20011 (containsKey!76 (toList!627 lt!19646) (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(assert (=> d!8725 (= (contains!580 lt!19646 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)) lt!20013)))

(declare-fun b!45151 () Bool)

(declare-fun lt!20012 () Unit!1237)

(assert (=> b!45151 (= e!28611 lt!20012)))

(assert (=> b!45151 (= lt!20012 (lemmaContainsKeyImpliesGetValueByKeyDefined!64 (toList!627 lt!19646) (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(assert (=> b!45151 (isDefined!65 (getValueByKey!108 (toList!627 lt!19646) (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(declare-fun b!45152 () Bool)

(declare-fun Unit!1253 () Unit!1237)

(assert (=> b!45152 (= e!28611 Unit!1253)))

(declare-fun b!45153 () Bool)

(assert (=> b!45153 (= e!28610 (isDefined!65 (getValueByKey!108 (toList!627 lt!19646) (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000))))))

(assert (= (and d!8725 c!6042) b!45151))

(assert (= (and d!8725 (not c!6042)) b!45152))

(assert (= (and d!8725 (not res!26506)) b!45153))

(assert (=> d!8725 m!38593))

(declare-fun m!39567 () Bool)

(assert (=> d!8725 m!39567))

(assert (=> b!45151 m!38593))

(declare-fun m!39569 () Bool)

(assert (=> b!45151 m!39569))

(assert (=> b!45151 m!38593))

(declare-fun m!39571 () Bool)

(assert (=> b!45151 m!39571))

(assert (=> b!45151 m!39571))

(declare-fun m!39573 () Bool)

(assert (=> b!45151 m!39573))

(assert (=> b!45153 m!38593))

(assert (=> b!45153 m!39571))

(assert (=> b!45153 m!39571))

(assert (=> b!45153 m!39573))

(assert (=> b!44690 d!8725))

(declare-fun d!8729 () Bool)

(declare-fun e!28612 () Bool)

(assert (=> d!8729 e!28612))

(declare-fun res!26508 () Bool)

(assert (=> d!8729 (=> (not res!26508) (not e!28612))))

(declare-fun lt!20016 () ListLongMap!1223)

(assert (=> d!8729 (= res!26508 (contains!580 lt!20016 (_1!831 (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348)))))))

(declare-fun lt!20017 () List!1228)

(assert (=> d!8729 (= lt!20016 (ListLongMap!1224 lt!20017))))

(declare-fun lt!20014 () Unit!1237)

(declare-fun lt!20015 () Unit!1237)

(assert (=> d!8729 (= lt!20014 lt!20015)))

(assert (=> d!8729 (= (getValueByKey!108 lt!20017 (_1!831 (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348)))) (Some!113 (_2!831 (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348)))))))

(assert (=> d!8729 (= lt!20015 (lemmaContainsTupThenGetReturnValue!34 lt!20017 (_1!831 (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348))) (_2!831 (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348)))))))

(assert (=> d!8729 (= lt!20017 (insertStrictlySorted!31 (toList!627 call!3642) (_1!831 (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348))) (_2!831 (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348)))))))

(assert (=> d!8729 (= (+!72 call!3642 (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348))) lt!20016)))

(declare-fun b!45154 () Bool)

(declare-fun res!26507 () Bool)

(assert (=> b!45154 (=> (not res!26507) (not e!28612))))

(assert (=> b!45154 (= res!26507 (= (getValueByKey!108 (toList!627 lt!20016) (_1!831 (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348)))) (Some!113 (_2!831 (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348))))))))

(declare-fun b!45155 () Bool)

(assert (=> b!45155 (= e!28612 (contains!584 (toList!627 lt!20016) (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348))))))

(assert (= (and d!8729 res!26508) b!45154))

(assert (= (and b!45154 res!26507) b!45155))

(declare-fun m!39575 () Bool)

(assert (=> d!8729 m!39575))

(declare-fun m!39577 () Bool)

(assert (=> d!8729 m!39577))

(declare-fun m!39579 () Bool)

(assert (=> d!8729 m!39579))

(declare-fun m!39581 () Bool)

(assert (=> d!8729 m!39581))

(declare-fun m!39583 () Bool)

(assert (=> b!45154 m!39583))

(declare-fun m!39585 () Bool)

(assert (=> b!45155 m!39585))

(assert (=> b!44689 d!8729))

(declare-fun b!45156 () Bool)

(declare-fun e!28613 () (_ BitVec 32))

(assert (=> b!45156 (= e!28613 #b00000000000000000000000000000000)))

(declare-fun bm!3675 () Bool)

(declare-fun call!3678 () (_ BitVec 32))

(assert (=> bm!3675 (= call!3678 (arrayCountValidKeys!0 lt!19355 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!45157 () Bool)

(declare-fun e!28614 () (_ BitVec 32))

(assert (=> b!45157 (= e!28613 e!28614)))

(declare-fun c!6044 () Bool)

(assert (=> b!45157 (= c!6044 (validKeyInArray!0 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun d!8731 () Bool)

(declare-fun lt!20018 () (_ BitVec 32))

(assert (=> d!8731 (and (bvsge lt!20018 #b00000000000000000000000000000000) (bvsle lt!20018 (bvsub (size!1624 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> d!8731 (= lt!20018 e!28613)))

(declare-fun c!6043 () Bool)

(assert (=> d!8731 (= c!6043 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8731 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1624 lt!19355)))))

(assert (=> d!8731 (= (arrayCountValidKeys!0 lt!19355 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!20018)))

(declare-fun b!45158 () Bool)

(assert (=> b!45158 (= e!28614 (bvadd #b00000000000000000000000000000001 call!3678))))

(declare-fun b!45159 () Bool)

(assert (=> b!45159 (= e!28614 call!3678)))

(assert (= (and d!8731 c!6043) b!45156))

(assert (= (and d!8731 (not c!6043)) b!45157))

(assert (= (and b!45157 c!6044) b!45158))

(assert (= (and b!45157 (not c!6044)) b!45159))

(assert (= (or b!45158 b!45159) bm!3675))

(declare-fun m!39587 () Bool)

(assert (=> bm!3675 m!39587))

(declare-fun m!39589 () Bool)

(assert (=> b!45157 m!39589))

(assert (=> b!45157 m!39589))

(declare-fun m!39591 () Bool)

(assert (=> b!45157 m!39591))

(assert (=> bm!3579 d!8731))

(assert (=> b!44508 d!8377))

(declare-fun d!8733 () Bool)

(declare-fun res!26509 () Bool)

(declare-fun e!28615 () Bool)

(assert (=> d!8733 (=> res!26509 e!28615)))

(assert (=> d!8733 (= res!26509 (= (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19418))))

(assert (=> d!8733 (= (arrayContainsKey!0 lt!19355 lt!19418 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!28615)))

(declare-fun b!45160 () Bool)

(declare-fun e!28616 () Bool)

(assert (=> b!45160 (= e!28615 e!28616)))

(declare-fun res!26510 () Bool)

(assert (=> b!45160 (=> (not res!26510) (not e!28616))))

(assert (=> b!45160 (= res!26510 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1624 lt!19355)))))

(declare-fun b!45161 () Bool)

(assert (=> b!45161 (= e!28616 (arrayContainsKey!0 lt!19355 lt!19418 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8733 (not res!26509)) b!45160))

(assert (= (and b!45160 res!26510) b!45161))

(assert (=> d!8733 m!38565))

(declare-fun m!39593 () Bool)

(assert (=> b!45161 m!39593))

(assert (=> b!44425 d!8733))

(declare-fun d!8735 () Bool)

(assert (=> d!8735 (= (apply!62 lt!19646 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)) (get!807 (getValueByKey!108 (toList!627 lt!19646) (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000))))))

(declare-fun bs!2061 () Bool)

(assert (= bs!2061 d!8735))

(assert (=> bs!2061 m!38593))

(assert (=> bs!2061 m!39571))

(assert (=> bs!2061 m!39571))

(declare-fun m!39595 () Bool)

(assert (=> bs!2061 m!39595))

(assert (=> b!44672 d!8735))

(declare-fun d!8737 () Bool)

(declare-fun c!6047 () Bool)

(assert (=> d!8737 (= c!6047 (is-ValueCellFull!706 (select (arr!1422 (_values!1881 lt!19348)) #b00000000000000000000000000000000)))))

(declare-fun e!28619 () V!2329)

(assert (=> d!8737 (= (get!804 (select (arr!1422 (_values!1881 lt!19348)) #b00000000000000000000000000000000) (dynLambda!267 (defaultEntry!1898 lt!19348) #b0000000000000000000000000000000000000000000000000000000000000000)) e!28619)))

(declare-fun b!45166 () Bool)

(declare-fun get!811 (ValueCell!706 V!2329) V!2329)

(assert (=> b!45166 (= e!28619 (get!811 (select (arr!1422 (_values!1881 lt!19348)) #b00000000000000000000000000000000) (dynLambda!267 (defaultEntry!1898 lt!19348) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!45167 () Bool)

(declare-fun get!812 (ValueCell!706 V!2329) V!2329)

(assert (=> b!45167 (= e!28619 (get!812 (select (arr!1422 (_values!1881 lt!19348)) #b00000000000000000000000000000000) (dynLambda!267 (defaultEntry!1898 lt!19348) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!8737 c!6047) b!45166))

(assert (= (and d!8737 (not c!6047)) b!45167))

(assert (=> b!45166 m!38793))

(assert (=> b!45166 m!38791))

(declare-fun m!39597 () Bool)

(assert (=> b!45166 m!39597))

(assert (=> b!45167 m!38793))

(assert (=> b!45167 m!38791))

(declare-fun m!39599 () Bool)

(assert (=> b!45167 m!39599))

(assert (=> b!44672 d!8737))

(declare-fun d!8739 () Bool)

(assert (=> d!8739 (arrayContainsKey!0 (_keys!3465 lt!19348) lt!19462 #b00000000000000000000000000000000)))

(declare-fun lt!20019 () Unit!1237)

(assert (=> d!8739 (= lt!20019 (choose!13 (_keys!3465 lt!19348) lt!19462 #b00000000000000000000000000000000))))

(assert (=> d!8739 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!8739 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3465 lt!19348) lt!19462 #b00000000000000000000000000000000) lt!20019)))

(declare-fun bs!2062 () Bool)

(assert (= bs!2062 d!8739))

(assert (=> bs!2062 m!38597))

(declare-fun m!39601 () Bool)

(assert (=> bs!2062 m!39601))

(assert (=> b!44399 d!8739))

(declare-fun d!8741 () Bool)

(declare-fun res!26511 () Bool)

(declare-fun e!28620 () Bool)

(assert (=> d!8741 (=> res!26511 e!28620)))

(assert (=> d!8741 (= res!26511 (= (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) lt!19462))))

(assert (=> d!8741 (= (arrayContainsKey!0 (_keys!3465 lt!19348) lt!19462 #b00000000000000000000000000000000) e!28620)))

(declare-fun b!45168 () Bool)

(declare-fun e!28621 () Bool)

(assert (=> b!45168 (= e!28620 e!28621)))

(declare-fun res!26512 () Bool)

(assert (=> b!45168 (=> (not res!26512) (not e!28621))))

(assert (=> b!45168 (= res!26512 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1624 (_keys!3465 lt!19348))))))

(declare-fun b!45169 () Bool)

(assert (=> b!45169 (= e!28621 (arrayContainsKey!0 (_keys!3465 lt!19348) lt!19462 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8741 (not res!26511)) b!45168))

(assert (= (and b!45168 res!26512) b!45169))

(assert (=> d!8741 m!38593))

(declare-fun m!39603 () Bool)

(assert (=> b!45169 m!39603))

(assert (=> b!44399 d!8741))

(declare-fun b!45170 () Bool)

(declare-fun e!28624 () SeekEntryResult!215)

(declare-fun lt!20021 () SeekEntryResult!215)

(assert (=> b!45170 (= e!28624 (MissingZero!215 (index!2984 lt!20021)))))

(declare-fun b!45171 () Bool)

(declare-fun c!6048 () Bool)

(declare-fun lt!20020 () (_ BitVec 64))

(assert (=> b!45171 (= c!6048 (= lt!20020 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!28623 () SeekEntryResult!215)

(assert (=> b!45171 (= e!28623 e!28624)))

(declare-fun b!45172 () Bool)

(assert (=> b!45172 (= e!28623 (Found!215 (index!2984 lt!20021)))))

(declare-fun b!45173 () Bool)

(assert (=> b!45173 (= e!28624 (seekKeyOrZeroReturnVacant!0 (x!8369 lt!20021) (index!2984 lt!20021) (index!2984 lt!20021) (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) (_keys!3465 lt!19348) (mask!5475 lt!19348)))))

(declare-fun b!45174 () Bool)

(declare-fun e!28622 () SeekEntryResult!215)

(assert (=> b!45174 (= e!28622 e!28623)))

(assert (=> b!45174 (= lt!20020 (select (arr!1421 (_keys!3465 lt!19348)) (index!2984 lt!20021)))))

(declare-fun c!6049 () Bool)

(assert (=> b!45174 (= c!6049 (= lt!20020 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(declare-fun d!8743 () Bool)

(declare-fun lt!20022 () SeekEntryResult!215)

(assert (=> d!8743 (and (or (is-Undefined!215 lt!20022) (not (is-Found!215 lt!20022)) (and (bvsge (index!2983 lt!20022) #b00000000000000000000000000000000) (bvslt (index!2983 lt!20022) (size!1624 (_keys!3465 lt!19348))))) (or (is-Undefined!215 lt!20022) (is-Found!215 lt!20022) (not (is-MissingZero!215 lt!20022)) (and (bvsge (index!2982 lt!20022) #b00000000000000000000000000000000) (bvslt (index!2982 lt!20022) (size!1624 (_keys!3465 lt!19348))))) (or (is-Undefined!215 lt!20022) (is-Found!215 lt!20022) (is-MissingZero!215 lt!20022) (not (is-MissingVacant!215 lt!20022)) (and (bvsge (index!2985 lt!20022) #b00000000000000000000000000000000) (bvslt (index!2985 lt!20022) (size!1624 (_keys!3465 lt!19348))))) (or (is-Undefined!215 lt!20022) (ite (is-Found!215 lt!20022) (= (select (arr!1421 (_keys!3465 lt!19348)) (index!2983 lt!20022)) (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)) (ite (is-MissingZero!215 lt!20022) (= (select (arr!1421 (_keys!3465 lt!19348)) (index!2982 lt!20022)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!215 lt!20022) (= (select (arr!1421 (_keys!3465 lt!19348)) (index!2985 lt!20022)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!8743 (= lt!20022 e!28622)))

(declare-fun c!6050 () Bool)

(assert (=> d!8743 (= c!6050 (and (is-Intermediate!215 lt!20021) (undefined!1027 lt!20021)))))

(assert (=> d!8743 (= lt!20021 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) (mask!5475 lt!19348)) (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) (_keys!3465 lt!19348) (mask!5475 lt!19348)))))

(assert (=> d!8743 (validMask!0 (mask!5475 lt!19348))))

(assert (=> d!8743 (= (seekEntryOrOpen!0 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) (_keys!3465 lt!19348) (mask!5475 lt!19348)) lt!20022)))

(declare-fun b!45175 () Bool)

(assert (=> b!45175 (= e!28622 Undefined!215)))

(assert (= (and d!8743 c!6050) b!45175))

(assert (= (and d!8743 (not c!6050)) b!45174))

(assert (= (and b!45174 c!6049) b!45172))

(assert (= (and b!45174 (not c!6049)) b!45171))

(assert (= (and b!45171 c!6048) b!45170))

(assert (= (and b!45171 (not c!6048)) b!45173))

(assert (=> b!45173 m!38593))

(declare-fun m!39605 () Bool)

(assert (=> b!45173 m!39605))

(declare-fun m!39607 () Bool)

(assert (=> b!45174 m!39607))

(declare-fun m!39609 () Bool)

(assert (=> d!8743 m!39609))

(assert (=> d!8743 m!38593))

(declare-fun m!39611 () Bool)

(assert (=> d!8743 m!39611))

(assert (=> d!8743 m!38569))

(declare-fun m!39613 () Bool)

(assert (=> d!8743 m!39613))

(assert (=> d!8743 m!39611))

(assert (=> d!8743 m!38593))

(declare-fun m!39615 () Bool)

(assert (=> d!8743 m!39615))

(declare-fun m!39617 () Bool)

(assert (=> d!8743 m!39617))

(assert (=> b!44399 d!8743))

(assert (=> d!8391 d!8343))

(declare-fun b!45176 () Bool)

(declare-fun e!28625 () Bool)

(declare-fun call!3679 () Bool)

(assert (=> b!45176 (= e!28625 call!3679)))

(declare-fun b!45177 () Bool)

(declare-fun e!28627 () Bool)

(assert (=> b!45177 (= e!28625 e!28627)))

(declare-fun lt!20024 () (_ BitVec 64))

(assert (=> b!45177 (= lt!20024 (select (arr!1421 (_keys!3465 lt!19348)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!20025 () Unit!1237)

(assert (=> b!45177 (= lt!20025 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3465 lt!19348) lt!20024 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!45177 (arrayContainsKey!0 (_keys!3465 lt!19348) lt!20024 #b00000000000000000000000000000000)))

(declare-fun lt!20023 () Unit!1237)

(assert (=> b!45177 (= lt!20023 lt!20025)))

(declare-fun res!26514 () Bool)

(assert (=> b!45177 (= res!26514 (= (seekEntryOrOpen!0 (select (arr!1421 (_keys!3465 lt!19348)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3465 lt!19348) (mask!5475 lt!19348)) (Found!215 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!45177 (=> (not res!26514) (not e!28627))))

(declare-fun d!8745 () Bool)

(declare-fun res!26513 () Bool)

(declare-fun e!28626 () Bool)

(assert (=> d!8745 (=> res!26513 e!28626)))

(assert (=> d!8745 (= res!26513 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1624 (_keys!3465 lt!19348))))))

(assert (=> d!8745 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3465 lt!19348) (mask!5475 lt!19348)) e!28626)))

(declare-fun b!45178 () Bool)

(assert (=> b!45178 (= e!28627 call!3679)))

(declare-fun b!45179 () Bool)

(assert (=> b!45179 (= e!28626 e!28625)))

(declare-fun c!6051 () Bool)

(assert (=> b!45179 (= c!6051 (validKeyInArray!0 (select (arr!1421 (_keys!3465 lt!19348)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3676 () Bool)

(assert (=> bm!3676 (= call!3679 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3465 lt!19348) (mask!5475 lt!19348)))))

(assert (= (and d!8745 (not res!26513)) b!45179))

(assert (= (and b!45179 c!6051) b!45177))

(assert (= (and b!45179 (not c!6051)) b!45176))

(assert (= (and b!45177 res!26514) b!45178))

(assert (= (or b!45178 b!45176) bm!3676))

(declare-fun m!39619 () Bool)

(assert (=> b!45177 m!39619))

(declare-fun m!39621 () Bool)

(assert (=> b!45177 m!39621))

(declare-fun m!39623 () Bool)

(assert (=> b!45177 m!39623))

(assert (=> b!45177 m!39619))

(declare-fun m!39625 () Bool)

(assert (=> b!45177 m!39625))

(assert (=> b!45179 m!39619))

(assert (=> b!45179 m!39619))

(declare-fun m!39627 () Bool)

(assert (=> b!45179 m!39627))

(declare-fun m!39629 () Bool)

(assert (=> bm!3676 m!39629))

(assert (=> bm!3582 d!8745))

(declare-fun d!8747 () Bool)

(declare-fun e!28628 () Bool)

(assert (=> d!8747 e!28628))

(declare-fun res!26516 () Bool)

(assert (=> d!8747 (=> (not res!26516) (not e!28628))))

(declare-fun lt!20028 () ListLongMap!1223)

(assert (=> d!8747 (= res!26516 (contains!580 lt!20028 (_1!831 (ite (or c!5907 c!5906) (tuple2!1643 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1816 lt!19348)) (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348))))))))

(declare-fun lt!20029 () List!1228)

(assert (=> d!8747 (= lt!20028 (ListLongMap!1224 lt!20029))))

(declare-fun lt!20026 () Unit!1237)

(declare-fun lt!20027 () Unit!1237)

(assert (=> d!8747 (= lt!20026 lt!20027)))

(assert (=> d!8747 (= (getValueByKey!108 lt!20029 (_1!831 (ite (or c!5907 c!5906) (tuple2!1643 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1816 lt!19348)) (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348))))) (Some!113 (_2!831 (ite (or c!5907 c!5906) (tuple2!1643 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1816 lt!19348)) (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348))))))))

(assert (=> d!8747 (= lt!20027 (lemmaContainsTupThenGetReturnValue!34 lt!20029 (_1!831 (ite (or c!5907 c!5906) (tuple2!1643 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1816 lt!19348)) (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348)))) (_2!831 (ite (or c!5907 c!5906) (tuple2!1643 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1816 lt!19348)) (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348))))))))

(assert (=> d!8747 (= lt!20029 (insertStrictlySorted!31 (toList!627 (ite c!5907 call!3645 (ite c!5906 call!3639 call!3640))) (_1!831 (ite (or c!5907 c!5906) (tuple2!1643 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1816 lt!19348)) (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348)))) (_2!831 (ite (or c!5907 c!5906) (tuple2!1643 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1816 lt!19348)) (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348))))))))

(assert (=> d!8747 (= (+!72 (ite c!5907 call!3645 (ite c!5906 call!3639 call!3640)) (ite (or c!5907 c!5906) (tuple2!1643 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1816 lt!19348)) (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348)))) lt!20028)))

(declare-fun b!45180 () Bool)

(declare-fun res!26515 () Bool)

(assert (=> b!45180 (=> (not res!26515) (not e!28628))))

(assert (=> b!45180 (= res!26515 (= (getValueByKey!108 (toList!627 lt!20028) (_1!831 (ite (or c!5907 c!5906) (tuple2!1643 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1816 lt!19348)) (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348))))) (Some!113 (_2!831 (ite (or c!5907 c!5906) (tuple2!1643 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1816 lt!19348)) (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348)))))))))

(declare-fun b!45181 () Bool)

(assert (=> b!45181 (= e!28628 (contains!584 (toList!627 lt!20028) (ite (or c!5907 c!5906) (tuple2!1643 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1816 lt!19348)) (tuple2!1643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1816 lt!19348)))))))

(assert (= (and d!8747 res!26516) b!45180))

(assert (= (and b!45180 res!26515) b!45181))

(declare-fun m!39631 () Bool)

(assert (=> d!8747 m!39631))

(declare-fun m!39633 () Bool)

(assert (=> d!8747 m!39633))

(declare-fun m!39635 () Bool)

(assert (=> d!8747 m!39635))

(declare-fun m!39637 () Bool)

(assert (=> d!8747 m!39637))

(declare-fun m!39639 () Bool)

(assert (=> b!45180 m!39639))

(declare-fun m!39641 () Bool)

(assert (=> b!45181 m!39641))

(assert (=> bm!3641 d!8747))

(assert (=> d!8409 d!8319))

(declare-fun d!8749 () Bool)

(declare-fun e!28629 () Bool)

(assert (=> d!8749 e!28629))

(declare-fun res!26517 () Bool)

(assert (=> d!8749 (=> res!26517 e!28629)))

(declare-fun lt!20033 () Bool)

(assert (=> d!8749 (= res!26517 (not lt!20033))))

(declare-fun lt!20031 () Bool)

(assert (=> d!8749 (= lt!20033 lt!20031)))

(declare-fun lt!20030 () Unit!1237)

(declare-fun e!28630 () Unit!1237)

(assert (=> d!8749 (= lt!20030 e!28630)))

(declare-fun c!6052 () Bool)

(assert (=> d!8749 (= c!6052 lt!20031)))

(assert (=> d!8749 (= lt!20031 (containsKey!76 (toList!627 lt!19646) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!8749 (= (contains!580 lt!19646 #b1000000000000000000000000000000000000000000000000000000000000000) lt!20033)))

(declare-fun b!45182 () Bool)

(declare-fun lt!20032 () Unit!1237)

(assert (=> b!45182 (= e!28630 lt!20032)))

(assert (=> b!45182 (= lt!20032 (lemmaContainsKeyImpliesGetValueByKeyDefined!64 (toList!627 lt!19646) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!45182 (isDefined!65 (getValueByKey!108 (toList!627 lt!19646) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!45183 () Bool)

(declare-fun Unit!1254 () Unit!1237)

(assert (=> b!45183 (= e!28630 Unit!1254)))

(declare-fun b!45184 () Bool)

(assert (=> b!45184 (= e!28629 (isDefined!65 (getValueByKey!108 (toList!627 lt!19646) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!8749 c!6052) b!45182))

(assert (= (and d!8749 (not c!6052)) b!45183))

(assert (= (and d!8749 (not res!26517)) b!45184))

(declare-fun m!39643 () Bool)

(assert (=> d!8749 m!39643))

(declare-fun m!39645 () Bool)

(assert (=> b!45182 m!39645))

(declare-fun m!39647 () Bool)

(assert (=> b!45182 m!39647))

(assert (=> b!45182 m!39647))

(declare-fun m!39649 () Bool)

(assert (=> b!45182 m!39649))

(assert (=> b!45184 m!39647))

(assert (=> b!45184 m!39647))

(assert (=> b!45184 m!39649))

(assert (=> bm!3636 d!8749))

(declare-fun d!8751 () Bool)

(assert (=> d!8751 (= (validKeyInArray!0 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!44401 d!8751))

(assert (=> d!8419 d!8335))

(declare-fun d!8753 () Bool)

(assert (not d!8753))

(assert (=> b!44384 d!8753))

(declare-fun d!8755 () Bool)

(assert (=> d!8755 (= (apply!62 lt!19646 #b1000000000000000000000000000000000000000000000000000000000000000) (get!807 (getValueByKey!108 (toList!627 lt!19646) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!2063 () Bool)

(assert (= bs!2063 d!8755))

(assert (=> bs!2063 m!39647))

(assert (=> bs!2063 m!39647))

(declare-fun m!39651 () Bool)

(assert (=> bs!2063 m!39651))

(assert (=> b!44687 d!8755))

(assert (=> d!8401 d!8721))

(declare-fun d!8757 () Bool)

(declare-fun lt!20034 () (_ BitVec 32))

(assert (=> d!8757 (and (or (bvslt lt!20034 #b00000000000000000000000000000000) (bvsge lt!20034 (size!1624 lt!19355)) (and (bvsge lt!20034 #b00000000000000000000000000000000) (bvslt lt!20034 (size!1624 lt!19355)))) (bvsge lt!20034 #b00000000000000000000000000000000) (bvslt lt!20034 (size!1624 lt!19355)) (= (select (arr!1421 lt!19355) lt!20034) (_1!831 lt!19353)))))

(declare-fun e!28631 () (_ BitVec 32))

(assert (=> d!8757 (= lt!20034 e!28631)))

(declare-fun c!6053 () Bool)

(assert (=> d!8757 (= c!6053 (= (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (_1!831 lt!19353)))))

(assert (=> d!8757 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1624 lt!19355)) (bvslt (size!1624 lt!19355) #b01111111111111111111111111111111))))

(assert (=> d!8757 (= (arrayScanForKey!0 lt!19355 (_1!831 lt!19353) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!20034)))

(declare-fun b!45185 () Bool)

(assert (=> b!45185 (= e!28631 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))

(declare-fun b!45186 () Bool)

(assert (=> b!45186 (= e!28631 (arrayScanForKey!0 lt!19355 (_1!831 lt!19353) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8757 c!6053) b!45185))

(assert (= (and d!8757 (not c!6053)) b!45186))

(declare-fun m!39653 () Bool)

(assert (=> d!8757 m!39653))

(assert (=> d!8757 m!39589))

(declare-fun m!39655 () Bool)

(assert (=> b!45186 m!39655))

(assert (=> b!44723 d!8757))

(assert (=> b!44495 d!8751))

(declare-fun b!45187 () Bool)

(declare-fun e!28633 () Bool)

(declare-fun call!3680 () Bool)

(assert (=> b!45187 (= e!28633 call!3680)))

(declare-fun b!45188 () Bool)

(declare-fun e!28632 () Bool)

(assert (=> b!45188 (= e!28632 e!28633)))

(declare-fun c!6054 () Bool)

(assert (=> b!45188 (= c!6054 (validKeyInArray!0 (select (arr!1421 (_keys!3465 lt!19348)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3677 () Bool)

(assert (=> bm!3677 (= call!3680 (arrayNoDuplicates!0 (_keys!3465 lt!19348) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!6054 (Cons!1225 (select (arr!1421 (_keys!3465 lt!19348)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5850 (Cons!1225 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) Nil!1226) Nil!1226)) (ite c!5850 (Cons!1225 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) Nil!1226) Nil!1226))))))

(declare-fun d!8759 () Bool)

(declare-fun res!26519 () Bool)

(declare-fun e!28634 () Bool)

(assert (=> d!8759 (=> res!26519 e!28634)))

(assert (=> d!8759 (= res!26519 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1624 (_keys!3465 lt!19348))))))

(assert (=> d!8759 (= (arrayNoDuplicates!0 (_keys!3465 lt!19348) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5850 (Cons!1225 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) Nil!1226) Nil!1226)) e!28634)))

(declare-fun b!45189 () Bool)

(assert (=> b!45189 (= e!28634 e!28632)))

(declare-fun res!26518 () Bool)

(assert (=> b!45189 (=> (not res!26518) (not e!28632))))

(declare-fun e!28635 () Bool)

(assert (=> b!45189 (= res!26518 (not e!28635))))

(declare-fun res!26520 () Bool)

(assert (=> b!45189 (=> (not res!26520) (not e!28635))))

(assert (=> b!45189 (= res!26520 (validKeyInArray!0 (select (arr!1421 (_keys!3465 lt!19348)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!45190 () Bool)

(assert (=> b!45190 (= e!28633 call!3680)))

(declare-fun b!45191 () Bool)

(assert (=> b!45191 (= e!28635 (contains!576 (ite c!5850 (Cons!1225 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) Nil!1226) Nil!1226) (select (arr!1421 (_keys!3465 lt!19348)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!8759 (not res!26519)) b!45189))

(assert (= (and b!45189 res!26520) b!45191))

(assert (= (and b!45189 res!26518) b!45188))

(assert (= (and b!45188 c!6054) b!45190))

(assert (= (and b!45188 (not c!6054)) b!45187))

(assert (= (or b!45190 b!45187) bm!3677))

(assert (=> b!45188 m!39619))

(assert (=> b!45188 m!39619))

(assert (=> b!45188 m!39627))

(assert (=> bm!3677 m!39619))

(declare-fun m!39657 () Bool)

(assert (=> bm!3677 m!39657))

(assert (=> b!45189 m!39619))

(assert (=> b!45189 m!39619))

(assert (=> b!45189 m!39627))

(assert (=> b!45191 m!39619))

(assert (=> b!45191 m!39619))

(declare-fun m!39659 () Bool)

(assert (=> b!45191 m!39659))

(assert (=> bm!3585 d!8759))

(declare-fun b!45257 () Bool)

(declare-fun e!28674 () Bool)

(declare-fun lt!20060 () SeekEntryResult!215)

(assert (=> b!45257 (= e!28674 (bvsge (x!8369 lt!20060) #b01111111111111111111111111111110))))

(declare-fun d!8761 () Bool)

(assert (=> d!8761 e!28674))

(declare-fun c!6079 () Bool)

(assert (=> d!8761 (= c!6079 (and (is-Intermediate!215 lt!20060) (undefined!1027 lt!20060)))))

(declare-fun e!28673 () SeekEntryResult!215)

(assert (=> d!8761 (= lt!20060 e!28673)))

(declare-fun c!6078 () Bool)

(assert (=> d!8761 (= c!6078 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!20061 () (_ BitVec 64))

(assert (=> d!8761 (= lt!20061 (select (arr!1421 lt!19355) (toIndex!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) mask!853)))))

(assert (=> d!8761 (validMask!0 mask!853)))

(assert (=> d!8761 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) mask!853) (select (arr!1421 lt!19355) #b00000000000000000000000000000000) lt!19355 mask!853) lt!20060)))

(declare-fun b!45258 () Bool)

(assert (=> b!45258 (and (bvsge (index!2984 lt!20060) #b00000000000000000000000000000000) (bvslt (index!2984 lt!20060) (size!1624 lt!19355)))))

(declare-fun e!28675 () Bool)

(assert (=> b!45258 (= e!28675 (= (select (arr!1421 lt!19355) (index!2984 lt!20060)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!45259 () Bool)

(declare-fun e!28677 () SeekEntryResult!215)

(assert (=> b!45259 (= e!28673 e!28677)))

(declare-fun c!6080 () Bool)

(assert (=> b!45259 (= c!6080 (or (= lt!20061 (select (arr!1421 lt!19355) #b00000000000000000000000000000000)) (= (bvadd lt!20061 lt!20061) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!45260 () Bool)

(assert (=> b!45260 (= e!28673 (Intermediate!215 true (toIndex!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!45261 () Bool)

(assert (=> b!45261 (= e!28677 (Intermediate!215 false (toIndex!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!45262 () Bool)

(assert (=> b!45262 (and (bvsge (index!2984 lt!20060) #b00000000000000000000000000000000) (bvslt (index!2984 lt!20060) (size!1624 lt!19355)))))

(declare-fun res!26542 () Bool)

(assert (=> b!45262 (= res!26542 (= (select (arr!1421 lt!19355) (index!2984 lt!20060)) (select (arr!1421 lt!19355) #b00000000000000000000000000000000)))))

(assert (=> b!45262 (=> res!26542 e!28675)))

(declare-fun e!28676 () Bool)

(assert (=> b!45262 (= e!28676 e!28675)))

(declare-fun b!45263 () Bool)

(assert (=> b!45263 (= e!28674 e!28676)))

(declare-fun res!26543 () Bool)

(assert (=> b!45263 (= res!26543 (and (is-Intermediate!215 lt!20060) (not (undefined!1027 lt!20060)) (bvslt (x!8369 lt!20060) #b01111111111111111111111111111110) (bvsge (x!8369 lt!20060) #b00000000000000000000000000000000) (bvsge (x!8369 lt!20060) #b00000000000000000000000000000000)))))

(assert (=> b!45263 (=> (not res!26543) (not e!28676))))

(declare-fun b!45264 () Bool)

(assert (=> b!45264 (= e!28677 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000 mask!853) (select (arr!1421 lt!19355) #b00000000000000000000000000000000) lt!19355 mask!853))))

(declare-fun b!45265 () Bool)

(assert (=> b!45265 (and (bvsge (index!2984 lt!20060) #b00000000000000000000000000000000) (bvslt (index!2984 lt!20060) (size!1624 lt!19355)))))

(declare-fun res!26541 () Bool)

(assert (=> b!45265 (= res!26541 (= (select (arr!1421 lt!19355) (index!2984 lt!20060)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!45265 (=> res!26541 e!28675)))

(assert (= (and d!8761 c!6078) b!45260))

(assert (= (and d!8761 (not c!6078)) b!45259))

(assert (= (and b!45259 c!6080) b!45261))

(assert (= (and b!45259 (not c!6080)) b!45264))

(assert (= (and d!8761 c!6079) b!45257))

(assert (= (and d!8761 (not c!6079)) b!45263))

(assert (= (and b!45263 res!26543) b!45262))

(assert (= (and b!45262 (not res!26542)) b!45265))

(assert (= (and b!45265 (not res!26541)) b!45258))

(declare-fun m!39701 () Bool)

(assert (=> b!45258 m!39701))

(assert (=> b!45264 m!38657))

(declare-fun m!39703 () Bool)

(assert (=> b!45264 m!39703))

(assert (=> b!45264 m!39703))

(assert (=> b!45264 m!38423))

(declare-fun m!39705 () Bool)

(assert (=> b!45264 m!39705))

(assert (=> b!45262 m!39701))

(assert (=> b!45265 m!39701))

(assert (=> d!8761 m!38657))

(declare-fun m!39707 () Bool)

(assert (=> d!8761 m!39707))

(assert (=> d!8761 m!38383))

(assert (=> d!8427 d!8761))

(declare-fun d!8783 () Bool)

(declare-fun lt!20067 () (_ BitVec 32))

(declare-fun lt!20066 () (_ BitVec 32))

(assert (=> d!8783 (= lt!20067 (bvmul (bvxor lt!20066 (bvlshr lt!20066 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!8783 (= lt!20066 ((_ extract 31 0) (bvand (bvxor (select (arr!1421 lt!19355) #b00000000000000000000000000000000) (bvlshr (select (arr!1421 lt!19355) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!8783 (and (bvsge mask!853 #b00000000000000000000000000000000) (let ((res!26548 (let ((h!1805 ((_ extract 31 0) (bvand (bvxor (select (arr!1421 lt!19355) #b00000000000000000000000000000000) (bvlshr (select (arr!1421 lt!19355) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!8397 (bvmul (bvxor h!1805 (bvlshr h!1805 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!8397 (bvlshr x!8397 #b00000000000000000000000000001101)) mask!853))))) (and (bvslt res!26548 (bvadd mask!853 #b00000000000000000000000000000001)) (bvsge res!26548 #b00000000000000000000000000000000))))))

(assert (=> d!8783 (= (toIndex!0 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) mask!853) (bvand (bvxor lt!20067 (bvlshr lt!20067 #b00000000000000000000000000001101)) mask!853))))

(assert (=> d!8427 d!8783))

(assert (=> d!8427 d!8369))

(declare-fun d!8789 () Bool)

(declare-fun res!26549 () Bool)

(declare-fun e!28685 () Bool)

(assert (=> d!8789 (=> res!26549 e!28685)))

(assert (=> d!8789 (= res!26549 (= (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (_1!831 lt!19353)))))

(assert (=> d!8789 (= (arrayContainsKey!0 lt!19355 (_1!831 lt!19353) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) e!28685)))

(declare-fun b!45276 () Bool)

(declare-fun e!28686 () Bool)

(assert (=> b!45276 (= e!28685 e!28686)))

(declare-fun res!26550 () Bool)

(assert (=> b!45276 (=> (not res!26550) (not e!28686))))

(assert (=> b!45276 (= res!26550 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1624 lt!19355)))))

(declare-fun b!45277 () Bool)

(assert (=> b!45277 (= e!28686 (arrayContainsKey!0 lt!19355 (_1!831 lt!19353) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8789 (not res!26549)) b!45276))

(assert (= (and b!45276 res!26550) b!45277))

(assert (=> d!8789 m!39589))

(declare-fun m!39717 () Bool)

(assert (=> b!45277 m!39717))

(assert (=> b!44386 d!8789))

(declare-fun d!8791 () Bool)

(declare-fun lt!20068 () Bool)

(assert (=> d!8791 (= lt!20068 (member (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000) (content!41 Nil!1226)))))

(declare-fun e!28687 () Bool)

(assert (=> d!8791 (= lt!20068 e!28687)))

(declare-fun res!26552 () Bool)

(assert (=> d!8791 (=> (not res!26552) (not e!28687))))

(assert (=> d!8791 (= res!26552 (is-Cons!1225 Nil!1226))))

(assert (=> d!8791 (= (contains!576 Nil!1226 (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)) lt!20068)))

(declare-fun b!45278 () Bool)

(declare-fun e!28688 () Bool)

(assert (=> b!45278 (= e!28687 e!28688)))

(declare-fun res!26551 () Bool)

(assert (=> b!45278 (=> res!26551 e!28688)))

(assert (=> b!45278 (= res!26551 (= (h!1802 Nil!1226) (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(declare-fun b!45279 () Bool)

(assert (=> b!45279 (= e!28688 (contains!576 (t!4256 Nil!1226) (select (arr!1421 (_keys!3465 lt!19348)) #b00000000000000000000000000000000)))))

(assert (= (and d!8791 res!26552) b!45278))

(assert (= (and b!45278 (not res!26551)) b!45279))

(assert (=> d!8791 m!38573))

(assert (=> d!8791 m!38593))

(declare-fun m!39719 () Bool)

(assert (=> d!8791 m!39719))

(assert (=> b!45279 m!38593))

(declare-fun m!39721 () Bool)

(assert (=> b!45279 m!39721))

(assert (=> b!44497 d!8791))

(declare-fun b!45280 () Bool)

(declare-fun e!28690 () Bool)

(declare-fun call!3684 () Bool)

(assert (=> b!45280 (= e!28690 call!3684)))

(declare-fun b!45281 () Bool)

(declare-fun e!28689 () Bool)

(assert (=> b!45281 (= e!28689 e!28690)))

(declare-fun c!6084 () Bool)

(assert (=> b!45281 (= c!6084 (validKeyInArray!0 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun bm!3681 () Bool)

(assert (=> bm!3681 (= call!3684 (arrayNoDuplicates!0 lt!19355 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!6084 (Cons!1225 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!5818 (Cons!1225 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5763 (Cons!1225 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) Nil!1226) Nil!1226)) (ite c!5763 (Cons!1225 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) Nil!1226) Nil!1226))) (ite c!5818 (Cons!1225 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5763 (Cons!1225 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) Nil!1226) Nil!1226)) (ite c!5763 (Cons!1225 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) Nil!1226) Nil!1226)))))))

(declare-fun d!8793 () Bool)

(declare-fun res!26554 () Bool)

(declare-fun e!28691 () Bool)

(assert (=> d!8793 (=> res!26554 e!28691)))

(assert (=> d!8793 (= res!26554 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1624 lt!19355)))))

(assert (=> d!8793 (= (arrayNoDuplicates!0 lt!19355 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5818 (Cons!1225 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5763 (Cons!1225 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) Nil!1226) Nil!1226)) (ite c!5763 (Cons!1225 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) Nil!1226) Nil!1226))) e!28691)))

(declare-fun b!45282 () Bool)

(assert (=> b!45282 (= e!28691 e!28689)))

(declare-fun res!26553 () Bool)

(assert (=> b!45282 (=> (not res!26553) (not e!28689))))

(declare-fun e!28692 () Bool)

(assert (=> b!45282 (= res!26553 (not e!28692))))

(declare-fun res!26555 () Bool)

(assert (=> b!45282 (=> (not res!26555) (not e!28692))))

(assert (=> b!45282 (= res!26555 (validKeyInArray!0 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!45283 () Bool)

(assert (=> b!45283 (= e!28690 call!3684)))

(declare-fun b!45284 () Bool)

(assert (=> b!45284 (= e!28692 (contains!576 (ite c!5818 (Cons!1225 (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5763 (Cons!1225 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) Nil!1226) Nil!1226)) (ite c!5763 (Cons!1225 (select (arr!1421 lt!19355) #b00000000000000000000000000000000) Nil!1226) Nil!1226)) (select (arr!1421 lt!19355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (= (and d!8793 (not res!26554)) b!45282))

(assert (= (and b!45282 res!26555) b!45284))

(assert (= (and b!45282 res!26553) b!45281))

(assert (= (and b!45281 c!6084) b!45283))

(assert (= (and b!45281 (not c!6084)) b!45280))

(assert (= (or b!45283 b!45280) bm!3681))

(assert (=> b!45281 m!39589))

(assert (=> b!45281 m!39589))

(assert (=> b!45281 m!39591))

(assert (=> bm!3681 m!39589))

(declare-fun m!39723 () Bool)

(assert (=> bm!3681 m!39723))

