; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6742 () Bool)

(assert start!6742)

(declare-fun b_free!1513 () Bool)

(declare-fun b_next!1513 () Bool)

(assert (=> start!6742 (= b_free!1513 (not b_next!1513))))

(declare-fun tp!5957 () Bool)

(declare-fun b_and!2709 () Bool)

(assert (=> start!6742 (= tp!5957 b_and!2709)))

(declare-fun b!44108 () Bool)

(declare-datatypes ((Unit!1229 0))(
  ( (Unit!1230) )
))
(declare-fun e!27969 () Unit!1229)

(declare-fun Unit!1231 () Unit!1229)

(assert (=> b!44108 (= e!27969 Unit!1231)))

(declare-fun b!44109 () Bool)

(declare-fun e!27970 () Bool)

(declare-fun e!27972 () Bool)

(assert (=> b!44109 (= e!27970 (not e!27972))))

(declare-fun res!26051 () Bool)

(assert (=> b!44109 (=> (not res!26051) (not e!27972))))

(declare-datatypes ((array!2947 0))(
  ( (array!2948 (arr!1417 (Array (_ BitVec 32) (_ BitVec 64))) (size!1620 (_ BitVec 32))) )
))
(declare-datatypes ((V!2325 0))(
  ( (V!2326 (val!990 Int)) )
))
(declare-datatypes ((ValueCell!704 0))(
  ( (ValueCellFull!704 (v!2085 V!2325)) (EmptyCell!704) )
))
(declare-datatypes ((array!2949 0))(
  ( (array!2950 (arr!1418 (Array (_ BitVec 32) ValueCell!704)) (size!1621 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!388 0))(
  ( (LongMapFixedSize!389 (defaultEntry!1896 Int) (mask!5473 (_ BitVec 32)) (extraKeys!1787 (_ BitVec 32)) (zeroValue!1814 V!2325) (minValue!1814 V!2325) (_size!243 (_ BitVec 32)) (_keys!3463 array!2947) (_values!1879 array!2949) (_vacant!243 (_ BitVec 32))) )
))
(declare-fun lt!19281 () LongMapFixedSize!388)

(declare-fun valid!128 (LongMapFixedSize!388) Bool)

(assert (=> b!44109 (= res!26051 (valid!128 lt!19281))))

(declare-fun lt!19279 () Unit!1229)

(assert (=> b!44109 (= lt!19279 e!27969)))

(declare-fun c!5749 () Bool)

(declare-fun lt!19275 () Bool)

(assert (=> b!44109 (= c!5749 lt!19275)))

(declare-datatypes ((tuple2!1638 0))(
  ( (tuple2!1639 (_1!829 (_ BitVec 64)) (_2!829 V!2325)) )
))
(declare-datatypes ((List!1224 0))(
  ( (Nil!1221) (Cons!1220 (h!1797 tuple2!1638) (t!4247 List!1224)) )
))
(declare-datatypes ((ListLongMap!1219 0))(
  ( (ListLongMap!1220 (toList!625 List!1224)) )
))
(declare-fun lt!19277 () ListLongMap!1219)

(assert (=> b!44109 (= lt!19275 (not (= lt!19277 (ListLongMap!1220 Nil!1221))))))

(declare-fun map!845 (LongMapFixedSize!388) ListLongMap!1219)

(assert (=> b!44109 (= lt!19277 (map!845 lt!19281))))

(declare-fun lt!19280 () array!2947)

(declare-datatypes ((List!1225 0))(
  ( (Nil!1222) (Cons!1221 (h!1798 (_ BitVec 64)) (t!4248 List!1225)) )
))
(declare-fun arrayNoDuplicates!0 (array!2947 (_ BitVec 32) List!1225) Bool)

(assert (=> b!44109 (arrayNoDuplicates!0 lt!19280 #b00000000000000000000000000000000 Nil!1222)))

(declare-fun lt!19273 () Unit!1229)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2947 (_ BitVec 32) (_ BitVec 32) List!1225) Unit!1229)

(assert (=> b!44109 (= lt!19273 (lemmaArrayNoDuplicatesInAll0Array!0 lt!19280 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1222))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2947 (_ BitVec 32)) Bool)

(assert (=> b!44109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19280 mask!853)))

(declare-fun lt!19271 () Unit!1229)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2947 (_ BitVec 32) (_ BitVec 32)) Unit!1229)

(assert (=> b!44109 (= lt!19271 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!19280 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2947 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!44109 (= (arrayCountValidKeys!0 lt!19280 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!19274 () Unit!1229)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2947 (_ BitVec 32) (_ BitVec 32)) Unit!1229)

(assert (=> b!44109 (= lt!19274 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!19280 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!19272 () array!2949)

(declare-fun lt!19270 () V!2325)

(assert (=> b!44109 (= lt!19281 (LongMapFixedSize!389 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19270 lt!19270 #b00000000000000000000000000000000 lt!19280 lt!19272 #b00000000000000000000000000000000))))

(assert (=> b!44109 (= lt!19272 (array!2950 ((as const (Array (_ BitVec 32) ValueCell!704)) EmptyCell!704) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!44109 (= lt!19280 (array!2948 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!265 (Int (_ BitVec 64)) V!2325)

(assert (=> b!44109 (= lt!19270 (dynLambda!265 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!26052 () Bool)

(assert (=> start!6742 (=> (not res!26052) (not e!27970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6742 (= res!26052 (validMask!0 mask!853))))

(assert (=> start!6742 e!27970))

(assert (=> start!6742 true))

(assert (=> start!6742 tp!5957))

(declare-fun b!44110 () Bool)

(assert (=> b!44110 (= e!27972 (not lt!19275))))

(declare-fun b!44111 () Bool)

(declare-fun e!27971 () Bool)

(declare-fun lt!19282 () tuple2!1638)

(declare-fun arrayContainsKey!0 (array!2947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!44111 (= e!27971 (arrayContainsKey!0 lt!19280 (_1!829 lt!19282) #b00000000000000000000000000000000))))

(declare-fun b!44112 () Bool)

(declare-fun Unit!1232 () Unit!1229)

(assert (=> b!44112 (= e!27969 Unit!1232)))

(declare-fun head!893 (List!1224) tuple2!1638)

(assert (=> b!44112 (= lt!19282 (head!893 (toList!625 lt!19277)))))

(declare-fun lt!19276 () Unit!1229)

(declare-fun lemmaKeyInListMapIsInArray!108 (array!2947 array!2949 (_ BitVec 32) (_ BitVec 32) V!2325 V!2325 (_ BitVec 64) Int) Unit!1229)

(assert (=> b!44112 (= lt!19276 (lemmaKeyInListMapIsInArray!108 lt!19280 lt!19272 mask!853 #b00000000000000000000000000000000 lt!19270 lt!19270 (_1!829 lt!19282) defaultEntry!470))))

(declare-fun res!26053 () Bool)

(assert (=> b!44112 (= res!26053 (and (not (= (_1!829 lt!19282) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!829 lt!19282) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!44112 (=> (not res!26053) (not e!27971))))

(assert (=> b!44112 e!27971))

(declare-fun lt!19278 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2947 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!44112 (= lt!19278 (arrayScanForKey!0 lt!19280 (_1!829 lt!19282) #b00000000000000000000000000000000))))

(assert (=> b!44112 false))

(assert (= (and start!6742 res!26052) b!44109))

(assert (= (and b!44109 c!5749) b!44112))

(assert (= (and b!44109 (not c!5749)) b!44108))

(assert (= (and b!44112 res!26053) b!44111))

(assert (= (and b!44109 res!26051) b!44110))

(declare-fun b_lambda!2329 () Bool)

(assert (=> (not b_lambda!2329) (not b!44109)))

(declare-fun t!4246 () Bool)

(declare-fun tb!1009 () Bool)

(assert (=> (and start!6742 (= defaultEntry!470 defaultEntry!470) t!4246) tb!1009))

(declare-fun result!1755 () Bool)

(declare-fun tp_is_empty!1903 () Bool)

(assert (=> tb!1009 (= result!1755 tp_is_empty!1903)))

(assert (=> b!44109 t!4246))

(declare-fun b_and!2711 () Bool)

(assert (= b_and!2709 (and (=> t!4246 result!1755) b_and!2711)))

(declare-fun m!38327 () Bool)

(assert (=> b!44109 m!38327))

(declare-fun m!38329 () Bool)

(assert (=> b!44109 m!38329))

(declare-fun m!38331 () Bool)

(assert (=> b!44109 m!38331))

(declare-fun m!38333 () Bool)

(assert (=> b!44109 m!38333))

(declare-fun m!38335 () Bool)

(assert (=> b!44109 m!38335))

(declare-fun m!38337 () Bool)

(assert (=> b!44109 m!38337))

(declare-fun m!38339 () Bool)

(assert (=> b!44109 m!38339))

(declare-fun m!38341 () Bool)

(assert (=> b!44109 m!38341))

(declare-fun m!38343 () Bool)

(assert (=> b!44109 m!38343))

(declare-fun m!38345 () Bool)

(assert (=> start!6742 m!38345))

(declare-fun m!38347 () Bool)

(assert (=> b!44111 m!38347))

(declare-fun m!38349 () Bool)

(assert (=> b!44112 m!38349))

(declare-fun m!38351 () Bool)

(assert (=> b!44112 m!38351))

(declare-fun m!38353 () Bool)

(assert (=> b!44112 m!38353))

(push 1)

(assert (not b!44112))

(assert (not b_next!1513))

(assert (not b_lambda!2329))

(assert (not start!6742))

(assert tp_is_empty!1903)

(assert (not b!44109))

(assert (not b!44111))

(assert b_and!2711)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2711)

(assert (not b_next!1513))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2337 () Bool)

(assert (= b_lambda!2329 (or (and start!6742 b_free!1513) b_lambda!2337)))

(push 1)

(assert (not b!44112))

(assert (not b_next!1513))

(assert (not b_lambda!2337))

(assert (not start!6742))

(assert tp_is_empty!1903)

(assert (not b!44109))

(assert (not b!44111))

(assert b_and!2711)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2711)

(assert (not b_next!1513))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8303 () Bool)

(assert (=> d!8303 (= (arrayCountValidKeys!0 lt!19280 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!19365 () Unit!1229)

(declare-fun choose!59 (array!2947 (_ BitVec 32) (_ BitVec 32)) Unit!1229)

(assert (=> d!8303 (= lt!19365 (choose!59 lt!19280 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8303 (bvslt (size!1620 lt!19280) #b01111111111111111111111111111111)))

(assert (=> d!8303 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!19280 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!19365)))

(declare-fun bs!2005 () Bool)

(assert (= bs!2005 d!8303))

(assert (=> bs!2005 m!38339))

(declare-fun m!38411 () Bool)

(assert (=> bs!2005 m!38411))

(assert (=> b!44109 d!8303))

(declare-fun d!8307 () Bool)

(assert (=> d!8307 (arrayNoDuplicates!0 lt!19280 #b00000000000000000000000000000000 Nil!1222)))

(declare-fun lt!19369 () Unit!1229)

(declare-fun choose!111 (array!2947 (_ BitVec 32) (_ BitVec 32) List!1225) Unit!1229)

(assert (=> d!8307 (= lt!19369 (choose!111 lt!19280 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1222))))

(assert (=> d!8307 (= (size!1620 lt!19280) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!8307 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!19280 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1222) lt!19369)))

(declare-fun bs!2007 () Bool)

(assert (= bs!2007 d!8307))

(assert (=> bs!2007 m!38333))

(declare-fun m!38415 () Bool)

(assert (=> bs!2007 m!38415))

(assert (=> b!44109 d!8307))

(declare-fun d!8311 () Bool)

(assert (=> d!8311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19280 mask!853)))

(declare-fun lt!19372 () Unit!1229)

(declare-fun choose!34 (array!2947 (_ BitVec 32) (_ BitVec 32)) Unit!1229)

(assert (=> d!8311 (= lt!19372 (choose!34 lt!19280 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!8311 (validMask!0 mask!853)))

(assert (=> d!8311 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!19280 mask!853 #b00000000000000000000000000000000) lt!19372)))

(declare-fun bs!2008 () Bool)

(assert (= bs!2008 d!8311))

(assert (=> bs!2008 m!38331))

(declare-fun m!38417 () Bool)

(assert (=> bs!2008 m!38417))

(assert (=> bs!2008 m!38345))

(assert (=> b!44109 d!8311))

(declare-fun b!44178 () Bool)

(declare-fun e!28020 () Bool)

(declare-fun e!28018 () Bool)

(assert (=> b!44178 (= e!28020 e!28018)))

(declare-fun lt!19382 () (_ BitVec 64))

(assert (=> b!44178 (= lt!19382 (select (arr!1417 lt!19280) #b00000000000000000000000000000000))))

(declare-fun lt!19383 () Unit!1229)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2947 (_ BitVec 64) (_ BitVec 32)) Unit!1229)

(assert (=> b!44178 (= lt!19383 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19280 lt!19382 #b00000000000000000000000000000000))))

(assert (=> b!44178 (arrayContainsKey!0 lt!19280 lt!19382 #b00000000000000000000000000000000)))

(declare-fun lt!19384 () Unit!1229)

(assert (=> b!44178 (= lt!19384 lt!19383)))

(declare-fun res!26086 () Bool)

(declare-datatypes ((SeekEntryResult!213 0))(
  ( (MissingZero!213 (index!2974 (_ BitVec 32))) (Found!213 (index!2975 (_ BitVec 32))) (Intermediate!213 (undefined!1025 Bool) (index!2976 (_ BitVec 32)) (x!8367 (_ BitVec 32))) (Undefined!213) (MissingVacant!213 (index!2977 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2947 (_ BitVec 32)) SeekEntryResult!213)

(assert (=> b!44178 (= res!26086 (= (seekEntryOrOpen!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) lt!19280 mask!853) (Found!213 #b00000000000000000000000000000000)))))

(assert (=> b!44178 (=> (not res!26086) (not e!28018))))

(declare-fun b!44179 () Bool)

(declare-fun call!3557 () Bool)

(assert (=> b!44179 (= e!28020 call!3557)))

(declare-fun b!44180 () Bool)

(declare-fun e!28019 () Bool)

(assert (=> b!44180 (= e!28019 e!28020)))

(declare-fun c!5764 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!44180 (= c!5764 (validKeyInArray!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000)))))

(declare-fun d!8317 () Bool)

(declare-fun res!26085 () Bool)

(assert (=> d!8317 (=> res!26085 e!28019)))

(assert (=> d!8317 (= res!26085 (bvsge #b00000000000000000000000000000000 (size!1620 lt!19280)))))

(assert (=> d!8317 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19280 mask!853) e!28019)))

(declare-fun bm!3554 () Bool)

(assert (=> bm!3554 (= call!3557 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!19280 mask!853))))

(declare-fun b!44181 () Bool)

(assert (=> b!44181 (= e!28018 call!3557)))

(assert (= (and d!8317 (not res!26085)) b!44180))

(assert (= (and b!44180 c!5764) b!44178))

(assert (= (and b!44180 (not c!5764)) b!44179))

(assert (= (and b!44178 res!26086) b!44181))

(assert (= (or b!44181 b!44179) bm!3554))

(declare-fun m!38431 () Bool)

(assert (=> b!44178 m!38431))

(declare-fun m!38433 () Bool)

(assert (=> b!44178 m!38433))

(declare-fun m!38435 () Bool)

(assert (=> b!44178 m!38435))

(assert (=> b!44178 m!38431))

(declare-fun m!38437 () Bool)

(assert (=> b!44178 m!38437))

(assert (=> b!44180 m!38431))

(assert (=> b!44180 m!38431))

(declare-fun m!38439 () Bool)

(assert (=> b!44180 m!38439))

(declare-fun m!38441 () Bool)

(assert (=> bm!3554 m!38441))

(assert (=> b!44109 d!8317))

(declare-fun b!44213 () Bool)

(declare-fun e!28044 () Bool)

(declare-fun call!3560 () Bool)

(assert (=> b!44213 (= e!28044 call!3560)))

(declare-fun d!8325 () Bool)

(declare-fun res!26109 () Bool)

(declare-fun e!28042 () Bool)

(assert (=> d!8325 (=> res!26109 e!28042)))

(assert (=> d!8325 (= res!26109 (bvsge #b00000000000000000000000000000000 (size!1620 lt!19280)))))

(assert (=> d!8325 (= (arrayNoDuplicates!0 lt!19280 #b00000000000000000000000000000000 Nil!1222) e!28042)))

(declare-fun b!44214 () Bool)

(declare-fun e!28041 () Bool)

(assert (=> b!44214 (= e!28042 e!28041)))

(declare-fun res!26108 () Bool)

(assert (=> b!44214 (=> (not res!26108) (not e!28041))))

(declare-fun e!28043 () Bool)

(assert (=> b!44214 (= res!26108 (not e!28043))))

(declare-fun res!26110 () Bool)

(assert (=> b!44214 (=> (not res!26110) (not e!28043))))

(assert (=> b!44214 (= res!26110 (validKeyInArray!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000)))))

(declare-fun b!44215 () Bool)

(assert (=> b!44215 (= e!28044 call!3560)))

(declare-fun bm!3557 () Bool)

(declare-fun c!5770 () Bool)

(assert (=> bm!3557 (= call!3560 (arrayNoDuplicates!0 lt!19280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222)))))

(declare-fun b!44216 () Bool)

(declare-fun contains!577 (List!1225 (_ BitVec 64)) Bool)

(assert (=> b!44216 (= e!28043 (contains!577 Nil!1222 (select (arr!1417 lt!19280) #b00000000000000000000000000000000)))))

(declare-fun b!44217 () Bool)

(assert (=> b!44217 (= e!28041 e!28044)))

(assert (=> b!44217 (= c!5770 (validKeyInArray!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000)))))

(assert (= (and d!8325 (not res!26109)) b!44214))

(assert (= (and b!44214 res!26110) b!44216))

(assert (= (and b!44214 res!26108) b!44217))

(assert (= (and b!44217 c!5770) b!44213))

(assert (= (and b!44217 (not c!5770)) b!44215))

(assert (= (or b!44213 b!44215) bm!3557))

(assert (=> b!44214 m!38431))

(assert (=> b!44214 m!38431))

(assert (=> b!44214 m!38439))

(assert (=> bm!3557 m!38431))

(declare-fun m!38459 () Bool)

(assert (=> bm!3557 m!38459))

(assert (=> b!44216 m!38431))

(assert (=> b!44216 m!38431))

(declare-fun m!38461 () Bool)

(assert (=> b!44216 m!38461))

(assert (=> b!44217 m!38431))

(assert (=> b!44217 m!38431))

(assert (=> b!44217 m!38439))

(assert (=> b!44109 d!8325))

(declare-fun d!8333 () Bool)

(declare-fun res!26117 () Bool)

(declare-fun e!28051 () Bool)

(assert (=> d!8333 (=> (not res!26117) (not e!28051))))

(declare-fun simpleValid!30 (LongMapFixedSize!388) Bool)

(assert (=> d!8333 (= res!26117 (simpleValid!30 lt!19281))))

(assert (=> d!8333 (= (valid!128 lt!19281) e!28051)))

(declare-fun b!44232 () Bool)

(declare-fun res!26118 () Bool)

(assert (=> b!44232 (=> (not res!26118) (not e!28051))))

(assert (=> b!44232 (= res!26118 (= (arrayCountValidKeys!0 (_keys!3463 lt!19281) #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))) (_size!243 lt!19281)))))

(declare-fun b!44233 () Bool)

(declare-fun res!26119 () Bool)

(assert (=> b!44233 (=> (not res!26119) (not e!28051))))

(assert (=> b!44233 (= res!26119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3463 lt!19281) (mask!5473 lt!19281)))))

(declare-fun b!44234 () Bool)

(assert (=> b!44234 (= e!28051 (arrayNoDuplicates!0 (_keys!3463 lt!19281) #b00000000000000000000000000000000 Nil!1222))))

(assert (= (and d!8333 res!26117) b!44232))

(assert (= (and b!44232 res!26118) b!44233))

(assert (= (and b!44233 res!26119) b!44234))

(declare-fun m!38465 () Bool)

(assert (=> d!8333 m!38465))

(declare-fun m!38467 () Bool)

(assert (=> b!44232 m!38467))

(declare-fun m!38469 () Bool)

(assert (=> b!44233 m!38469))

(declare-fun m!38471 () Bool)

(assert (=> b!44234 m!38471))

(assert (=> b!44109 d!8333))

(declare-fun bm!3563 () Bool)

(declare-fun call!3566 () (_ BitVec 32))

(assert (=> bm!3563 (= call!3566 (arrayCountValidKeys!0 lt!19280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!44247 () Bool)

(declare-fun e!28058 () (_ BitVec 32))

(assert (=> b!44247 (= e!28058 (bvadd #b00000000000000000000000000000001 call!3566))))

(declare-fun d!8337 () Bool)

(declare-fun lt!19399 () (_ BitVec 32))

(assert (=> d!8337 (and (bvsge lt!19399 #b00000000000000000000000000000000) (bvsle lt!19399 (bvsub (size!1620 lt!19280) #b00000000000000000000000000000000)))))

(declare-fun e!28059 () (_ BitVec 32))

(assert (=> d!8337 (= lt!19399 e!28059)))

(declare-fun c!5782 () Bool)

(assert (=> d!8337 (= c!5782 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8337 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1620 lt!19280)))))

(assert (=> d!8337 (= (arrayCountValidKeys!0 lt!19280 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!19399)))

(declare-fun b!44248 () Bool)

(assert (=> b!44248 (= e!28059 #b00000000000000000000000000000000)))

(declare-fun b!44249 () Bool)

(assert (=> b!44249 (= e!28058 call!3566)))

(declare-fun b!44250 () Bool)

(assert (=> b!44250 (= e!28059 e!28058)))

(declare-fun c!5781 () Bool)

(assert (=> b!44250 (= c!5781 (validKeyInArray!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000)))))

(assert (= (and d!8337 c!5782) b!44248))

(assert (= (and d!8337 (not c!5782)) b!44250))

(assert (= (and b!44250 c!5781) b!44247))

(assert (= (and b!44250 (not c!5781)) b!44249))

(assert (= (or b!44247 b!44249) bm!3563))

(declare-fun m!38477 () Bool)

(assert (=> bm!3563 m!38477))

(assert (=> b!44250 m!38431))

(assert (=> b!44250 m!38431))

(assert (=> b!44250 m!38439))

(assert (=> b!44109 d!8337))

(declare-fun d!8345 () Bool)

(declare-fun getCurrentListMap!356 (array!2947 array!2949 (_ BitVec 32) (_ BitVec 32) V!2325 V!2325 (_ BitVec 32) Int) ListLongMap!1219)

(assert (=> d!8345 (= (map!845 lt!19281) (getCurrentListMap!356 (_keys!3463 lt!19281) (_values!1879 lt!19281) (mask!5473 lt!19281) (extraKeys!1787 lt!19281) (zeroValue!1814 lt!19281) (minValue!1814 lt!19281) #b00000000000000000000000000000000 (defaultEntry!1896 lt!19281)))))

(declare-fun bs!2013 () Bool)

(assert (= bs!2013 d!8345))

(declare-fun m!38497 () Bool)

(assert (=> bs!2013 m!38497))

(assert (=> b!44109 d!8345))

(declare-fun d!8351 () Bool)

(assert (=> d!8351 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6742 d!8351))

(declare-fun d!8361 () Bool)

(declare-fun res!26136 () Bool)

(declare-fun e!28093 () Bool)

(assert (=> d!8361 (=> res!26136 e!28093)))

(assert (=> d!8361 (= res!26136 (= (select (arr!1417 lt!19280) #b00000000000000000000000000000000) (_1!829 lt!19282)))))

(assert (=> d!8361 (= (arrayContainsKey!0 lt!19280 (_1!829 lt!19282) #b00000000000000000000000000000000) e!28093)))

(declare-fun b!44301 () Bool)

(declare-fun e!28094 () Bool)

(assert (=> b!44301 (= e!28093 e!28094)))

(declare-fun res!26137 () Bool)

(assert (=> b!44301 (=> (not res!26137) (not e!28094))))

(assert (=> b!44301 (= res!26137 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1620 lt!19280)))))

(declare-fun b!44302 () Bool)

(assert (=> b!44302 (= e!28094 (arrayContainsKey!0 lt!19280 (_1!829 lt!19282) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8361 (not res!26136)) b!44301))

(assert (= (and b!44301 res!26137) b!44302))

(assert (=> d!8361 m!38431))

(declare-fun m!38507 () Bool)

(assert (=> b!44302 m!38507))

(assert (=> b!44111 d!8361))

(declare-fun d!8365 () Bool)

(assert (=> d!8365 (= (head!893 (toList!625 lt!19277)) (h!1797 (toList!625 lt!19277)))))

(assert (=> b!44112 d!8365))

(declare-fun d!8367 () Bool)

(declare-fun e!28101 () Bool)

(assert (=> d!8367 e!28101))

(declare-fun c!5803 () Bool)

(assert (=> d!8367 (= c!5803 (and (not (= (_1!829 lt!19282) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!829 lt!19282) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!19435 () Unit!1229)

(declare-fun choose!271 (array!2947 array!2949 (_ BitVec 32) (_ BitVec 32) V!2325 V!2325 (_ BitVec 64) Int) Unit!1229)

(assert (=> d!8367 (= lt!19435 (choose!271 lt!19280 lt!19272 mask!853 #b00000000000000000000000000000000 lt!19270 lt!19270 (_1!829 lt!19282) defaultEntry!470))))

(assert (=> d!8367 (validMask!0 mask!853)))

(assert (=> d!8367 (= (lemmaKeyInListMapIsInArray!108 lt!19280 lt!19272 mask!853 #b00000000000000000000000000000000 lt!19270 lt!19270 (_1!829 lt!19282) defaultEntry!470) lt!19435)))

(declare-fun b!44318 () Bool)

(assert (=> b!44318 (= e!28101 (arrayContainsKey!0 lt!19280 (_1!829 lt!19282) #b00000000000000000000000000000000))))

(declare-fun b!44319 () Bool)

(assert (=> b!44319 (= e!28101 (ite (= (_1!829 lt!19282) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!8367 c!5803) b!44318))

(assert (= (and d!8367 (not c!5803)) b!44319))

(declare-fun m!38521 () Bool)

(assert (=> d!8367 m!38521))

(assert (=> d!8367 m!38345))

(assert (=> b!44318 m!38347))

(assert (=> b!44112 d!8367))

(declare-fun d!8373 () Bool)

(declare-fun lt!19441 () (_ BitVec 32))

(assert (=> d!8373 (and (or (bvslt lt!19441 #b00000000000000000000000000000000) (bvsge lt!19441 (size!1620 lt!19280)) (and (bvsge lt!19441 #b00000000000000000000000000000000) (bvslt lt!19441 (size!1620 lt!19280)))) (bvsge lt!19441 #b00000000000000000000000000000000) (bvslt lt!19441 (size!1620 lt!19280)) (= (select (arr!1417 lt!19280) lt!19441) (_1!829 lt!19282)))))

(declare-fun e!28108 () (_ BitVec 32))

(assert (=> d!8373 (= lt!19441 e!28108)))

(declare-fun c!5806 () Bool)

(assert (=> d!8373 (= c!5806 (= (select (arr!1417 lt!19280) #b00000000000000000000000000000000) (_1!829 lt!19282)))))

(assert (=> d!8373 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1620 lt!19280)) (bvslt (size!1620 lt!19280) #b01111111111111111111111111111111))))

(assert (=> d!8373 (= (arrayScanForKey!0 lt!19280 (_1!829 lt!19282) #b00000000000000000000000000000000) lt!19441)))

(declare-fun b!44328 () Bool)

(assert (=> b!44328 (= e!28108 #b00000000000000000000000000000000)))

(declare-fun b!44329 () Bool)

(assert (=> b!44329 (= e!28108 (arrayScanForKey!0 lt!19280 (_1!829 lt!19282) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8373 c!5806) b!44328))

(assert (= (and d!8373 (not c!5806)) b!44329))

(declare-fun m!38525 () Bool)

(assert (=> d!8373 m!38525))

(assert (=> d!8373 m!38431))

(declare-fun m!38527 () Bool)

(assert (=> b!44329 m!38527))

(assert (=> b!44112 d!8373))

(push 1)

(assert (not b!44232))

(assert (not b_next!1513))

(assert (not b_lambda!2337))

(assert (not b!44302))

(assert (not b!44318))

(assert (not bm!3563))

(assert (not bm!3557))

(assert (not b!44250))

(assert (not b!44329))

(assert (not b!44214))

(assert tp_is_empty!1903)

(assert (not d!8311))

(assert (not bm!3554))

(assert (not d!8303))

(assert (not b!44178))

(assert (not b!44233))

(assert (not b!44217))

(assert (not d!8367))

(assert (not d!8333))

(assert (not b!44216))

(assert (not d!8345))

(assert (not b!44180))

(assert (not b!44234))

(assert b_and!2711)

(assert (not d!8307))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2711)

(assert (not b_next!1513))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8407 () Bool)

(assert (=> d!8407 (= (validKeyInArray!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000)) (and (not (= (select (arr!1417 lt!19280) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1417 lt!19280) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!44250 d!8407))

(declare-fun b!44422 () Bool)

(declare-fun res!26207 () Bool)

(declare-fun e!28165 () Bool)

(assert (=> b!44422 (=> (not res!26207) (not e!28165))))

(declare-fun size!1639 (LongMapFixedSize!388) (_ BitVec 32))

(assert (=> b!44422 (= res!26207 (= (size!1639 lt!19281) (bvadd (_size!243 lt!19281) (bvsdiv (bvadd (extraKeys!1787 lt!19281) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!44423 () Bool)

(assert (=> b!44423 (= e!28165 (and (bvsge (extraKeys!1787 lt!19281) #b00000000000000000000000000000000) (bvsle (extraKeys!1787 lt!19281) #b00000000000000000000000000000011) (bvsge (_vacant!243 lt!19281) #b00000000000000000000000000000000)))))

(declare-fun d!8411 () Bool)

(declare-fun res!26208 () Bool)

(assert (=> d!8411 (=> (not res!26208) (not e!28165))))

(assert (=> d!8411 (= res!26208 (validMask!0 (mask!5473 lt!19281)))))

(assert (=> d!8411 (= (simpleValid!30 lt!19281) e!28165)))

(declare-fun b!44420 () Bool)

(declare-fun res!26209 () Bool)

(assert (=> b!44420 (=> (not res!26209) (not e!28165))))

(assert (=> b!44420 (= res!26209 (and (= (size!1621 (_values!1879 lt!19281)) (bvadd (mask!5473 lt!19281) #b00000000000000000000000000000001)) (= (size!1620 (_keys!3463 lt!19281)) (size!1621 (_values!1879 lt!19281))) (bvsge (_size!243 lt!19281) #b00000000000000000000000000000000) (bvsle (_size!243 lt!19281) (bvadd (mask!5473 lt!19281) #b00000000000000000000000000000001))))))

(declare-fun b!44421 () Bool)

(declare-fun res!26206 () Bool)

(assert (=> b!44421 (=> (not res!26206) (not e!28165))))

(assert (=> b!44421 (= res!26206 (bvsge (size!1639 lt!19281) (_size!243 lt!19281)))))

(assert (= (and d!8411 res!26208) b!44420))

(assert (= (and b!44420 res!26209) b!44421))

(assert (= (and b!44421 res!26206) b!44422))

(assert (= (and b!44422 res!26207) b!44423))

(declare-fun m!38605 () Bool)

(assert (=> b!44422 m!38605))

(declare-fun m!38607 () Bool)

(assert (=> d!8411 m!38607))

(assert (=> b!44421 m!38605))

(assert (=> d!8333 d!8411))

(declare-fun d!8423 () Bool)

(assert (=> d!8423 (arrayContainsKey!0 lt!19280 lt!19382 #b00000000000000000000000000000000)))

(declare-fun lt!19474 () Unit!1229)

(declare-fun choose!13 (array!2947 (_ BitVec 64) (_ BitVec 32)) Unit!1229)

(assert (=> d!8423 (= lt!19474 (choose!13 lt!19280 lt!19382 #b00000000000000000000000000000000))))

(assert (=> d!8423 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!8423 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19280 lt!19382 #b00000000000000000000000000000000) lt!19474)))

(declare-fun bs!2022 () Bool)

(assert (= bs!2022 d!8423))

(assert (=> bs!2022 m!38435))

(declare-fun m!38627 () Bool)

(assert (=> bs!2022 m!38627))

(assert (=> b!44178 d!8423))

(declare-fun d!8431 () Bool)

(declare-fun res!26212 () Bool)

(declare-fun e!28171 () Bool)

(assert (=> d!8431 (=> res!26212 e!28171)))

(assert (=> d!8431 (= res!26212 (= (select (arr!1417 lt!19280) #b00000000000000000000000000000000) lt!19382))))

(assert (=> d!8431 (= (arrayContainsKey!0 lt!19280 lt!19382 #b00000000000000000000000000000000) e!28171)))

(declare-fun b!44432 () Bool)

(declare-fun e!28172 () Bool)

(assert (=> b!44432 (= e!28171 e!28172)))

(declare-fun res!26213 () Bool)

(assert (=> b!44432 (=> (not res!26213) (not e!28172))))

(assert (=> b!44432 (= res!26213 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1620 lt!19280)))))

(declare-fun b!44433 () Bool)

(assert (=> b!44433 (= e!28172 (arrayContainsKey!0 lt!19280 lt!19382 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8431 (not res!26212)) b!44432))

(assert (= (and b!44432 res!26213) b!44433))

(assert (=> d!8431 m!38431))

(declare-fun m!38629 () Bool)

(assert (=> b!44433 m!38629))

(assert (=> b!44178 d!8431))

(declare-fun b!44498 () Bool)

(declare-fun e!28208 () SeekEntryResult!213)

(declare-fun lt!19494 () SeekEntryResult!213)

(assert (=> b!44498 (= e!28208 (Found!213 (index!2976 lt!19494)))))

(declare-fun b!44499 () Bool)

(declare-fun e!28207 () SeekEntryResult!213)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2947 (_ BitVec 32)) SeekEntryResult!213)

(assert (=> b!44499 (= e!28207 (seekKeyOrZeroReturnVacant!0 (x!8367 lt!19494) (index!2976 lt!19494) (index!2976 lt!19494) (select (arr!1417 lt!19280) #b00000000000000000000000000000000) lt!19280 mask!853))))

(declare-fun d!8433 () Bool)

(declare-fun lt!19496 () SeekEntryResult!213)

(assert (=> d!8433 (and (or (is-Undefined!213 lt!19496) (not (is-Found!213 lt!19496)) (and (bvsge (index!2975 lt!19496) #b00000000000000000000000000000000) (bvslt (index!2975 lt!19496) (size!1620 lt!19280)))) (or (is-Undefined!213 lt!19496) (is-Found!213 lt!19496) (not (is-MissingZero!213 lt!19496)) (and (bvsge (index!2974 lt!19496) #b00000000000000000000000000000000) (bvslt (index!2974 lt!19496) (size!1620 lt!19280)))) (or (is-Undefined!213 lt!19496) (is-Found!213 lt!19496) (is-MissingZero!213 lt!19496) (not (is-MissingVacant!213 lt!19496)) (and (bvsge (index!2977 lt!19496) #b00000000000000000000000000000000) (bvslt (index!2977 lt!19496) (size!1620 lt!19280)))) (or (is-Undefined!213 lt!19496) (ite (is-Found!213 lt!19496) (= (select (arr!1417 lt!19280) (index!2975 lt!19496)) (select (arr!1417 lt!19280) #b00000000000000000000000000000000)) (ite (is-MissingZero!213 lt!19496) (= (select (arr!1417 lt!19280) (index!2974 lt!19496)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!213 lt!19496) (= (select (arr!1417 lt!19280) (index!2977 lt!19496)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!28206 () SeekEntryResult!213)

(assert (=> d!8433 (= lt!19496 e!28206)))

(declare-fun c!5851 () Bool)

(assert (=> d!8433 (= c!5851 (and (is-Intermediate!213 lt!19494) (undefined!1025 lt!19494)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2947 (_ BitVec 32)) SeekEntryResult!213)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!8433 (= lt!19494 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) mask!853) (select (arr!1417 lt!19280) #b00000000000000000000000000000000) lt!19280 mask!853))))

(assert (=> d!8433 (validMask!0 mask!853)))

(assert (=> d!8433 (= (seekEntryOrOpen!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) lt!19280 mask!853) lt!19496)))

(declare-fun b!44500 () Bool)

(assert (=> b!44500 (= e!28206 e!28208)))

(declare-fun lt!19495 () (_ BitVec 64))

(assert (=> b!44500 (= lt!19495 (select (arr!1417 lt!19280) (index!2976 lt!19494)))))

(declare-fun c!5853 () Bool)

(assert (=> b!44500 (= c!5853 (= lt!19495 (select (arr!1417 lt!19280) #b00000000000000000000000000000000)))))

(declare-fun b!44501 () Bool)

(assert (=> b!44501 (= e!28206 Undefined!213)))

(declare-fun b!44502 () Bool)

(assert (=> b!44502 (= e!28207 (MissingZero!213 (index!2976 lt!19494)))))

(declare-fun b!44503 () Bool)

(declare-fun c!5852 () Bool)

(assert (=> b!44503 (= c!5852 (= lt!19495 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!44503 (= e!28208 e!28207)))

(assert (= (and d!8433 c!5851) b!44501))

(assert (= (and d!8433 (not c!5851)) b!44500))

(assert (= (and b!44500 c!5853) b!44498))

(assert (= (and b!44500 (not c!5853)) b!44503))

(assert (= (and b!44503 c!5852) b!44502))

(assert (= (and b!44503 (not c!5852)) b!44499))

(assert (=> b!44499 m!38431))

(declare-fun m!38669 () Bool)

(assert (=> b!44499 m!38669))

(assert (=> d!8433 m!38431))

(declare-fun m!38671 () Bool)

(assert (=> d!8433 m!38671))

(assert (=> d!8433 m!38345))

(declare-fun m!38673 () Bool)

(assert (=> d!8433 m!38673))

(declare-fun m!38675 () Bool)

(assert (=> d!8433 m!38675))

(declare-fun m!38677 () Bool)

(assert (=> d!8433 m!38677))

(assert (=> d!8433 m!38671))

(assert (=> d!8433 m!38431))

(declare-fun m!38679 () Bool)

(assert (=> d!8433 m!38679))

(declare-fun m!38681 () Bool)

(assert (=> b!44500 m!38681))

(assert (=> b!44178 d!8433))

(assert (=> d!8311 d!8317))

(declare-fun d!8453 () Bool)

(assert (=> d!8453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19280 mask!853)))

(assert (=> d!8453 true))

(declare-fun _$30!72 () Unit!1229)

(assert (=> d!8453 (= (choose!34 lt!19280 mask!853 #b00000000000000000000000000000000) _$30!72)))

(declare-fun bs!2024 () Bool)

(assert (= bs!2024 d!8453))

(assert (=> bs!2024 m!38331))

(assert (=> d!8311 d!8453))

(assert (=> d!8311 d!8351))

(declare-fun d!8455 () Bool)

(declare-fun res!26234 () Bool)

(declare-fun e!28212 () Bool)

(assert (=> d!8455 (=> res!26234 e!28212)))

(assert (=> d!8455 (= res!26234 (= (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_1!829 lt!19282)))))

(assert (=> d!8455 (= (arrayContainsKey!0 lt!19280 (_1!829 lt!19282) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!28212)))

(declare-fun b!44510 () Bool)

(declare-fun e!28213 () Bool)

(assert (=> b!44510 (= e!28212 e!28213)))

(declare-fun res!26235 () Bool)

(assert (=> b!44510 (=> (not res!26235) (not e!28213))))

(assert (=> b!44510 (= res!26235 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1620 lt!19280)))))

(declare-fun b!44511 () Bool)

(assert (=> b!44511 (= e!28213 (arrayContainsKey!0 lt!19280 (_1!829 lt!19282) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8455 (not res!26234)) b!44510))

(assert (= (and b!44510 res!26235) b!44511))

(declare-fun m!38683 () Bool)

(assert (=> d!8455 m!38683))

(declare-fun m!38685 () Bool)

(assert (=> b!44511 m!38685))

(assert (=> b!44302 d!8455))

(declare-fun d!8459 () Bool)

(declare-fun lt!19497 () (_ BitVec 32))

(assert (=> d!8459 (and (or (bvslt lt!19497 #b00000000000000000000000000000000) (bvsge lt!19497 (size!1620 lt!19280)) (and (bvsge lt!19497 #b00000000000000000000000000000000) (bvslt lt!19497 (size!1620 lt!19280)))) (bvsge lt!19497 #b00000000000000000000000000000000) (bvslt lt!19497 (size!1620 lt!19280)) (= (select (arr!1417 lt!19280) lt!19497) (_1!829 lt!19282)))))

(declare-fun e!28214 () (_ BitVec 32))

(assert (=> d!8459 (= lt!19497 e!28214)))

(declare-fun c!5857 () Bool)

(assert (=> d!8459 (= c!5857 (= (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_1!829 lt!19282)))))

(assert (=> d!8459 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1620 lt!19280)) (bvslt (size!1620 lt!19280) #b01111111111111111111111111111111))))

(assert (=> d!8459 (= (arrayScanForKey!0 lt!19280 (_1!829 lt!19282) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19497)))

(declare-fun b!44512 () Bool)

(assert (=> b!44512 (= e!28214 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))

(declare-fun b!44513 () Bool)

(assert (=> b!44513 (= e!28214 (arrayScanForKey!0 lt!19280 (_1!829 lt!19282) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8459 c!5857) b!44512))

(assert (= (and d!8459 (not c!5857)) b!44513))

(declare-fun m!38687 () Bool)

(assert (=> d!8459 m!38687))

(assert (=> d!8459 m!38683))

(declare-fun m!38689 () Bool)

(assert (=> b!44513 m!38689))

(assert (=> b!44329 d!8459))

(assert (=> d!8307 d!8325))

(declare-fun d!8461 () Bool)

(assert (=> d!8461 (arrayNoDuplicates!0 lt!19280 #b00000000000000000000000000000000 Nil!1222)))

(assert (=> d!8461 true))

(declare-fun res!26238 () Unit!1229)

(assert (=> d!8461 (= (choose!111 lt!19280 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1222) res!26238)))

(declare-fun bs!2025 () Bool)

(assert (= bs!2025 d!8461))

(assert (=> bs!2025 m!38333))

(assert (=> d!8307 d!8461))

(declare-fun d!8463 () Bool)

(declare-fun lt!19500 () Bool)

(declare-fun content!42 (List!1225) (Set (_ BitVec 64)))

(assert (=> d!8463 (= lt!19500 (set.member (select (arr!1417 lt!19280) #b00000000000000000000000000000000) (content!42 Nil!1222)))))

(declare-fun e!28220 () Bool)

(assert (=> d!8463 (= lt!19500 e!28220)))

(declare-fun res!26243 () Bool)

(assert (=> d!8463 (=> (not res!26243) (not e!28220))))

(assert (=> d!8463 (= res!26243 (is-Cons!1221 Nil!1222))))

(assert (=> d!8463 (= (contains!577 Nil!1222 (select (arr!1417 lt!19280) #b00000000000000000000000000000000)) lt!19500)))

(declare-fun b!44518 () Bool)

(declare-fun e!28219 () Bool)

(assert (=> b!44518 (= e!28220 e!28219)))

(declare-fun res!26244 () Bool)

(assert (=> b!44518 (=> res!26244 e!28219)))

(assert (=> b!44518 (= res!26244 (= (h!1798 Nil!1222) (select (arr!1417 lt!19280) #b00000000000000000000000000000000)))))

(declare-fun b!44519 () Bool)

(assert (=> b!44519 (= e!28219 (contains!577 (t!4248 Nil!1222) (select (arr!1417 lt!19280) #b00000000000000000000000000000000)))))

(assert (= (and d!8463 res!26243) b!44518))

(assert (= (and b!44518 (not res!26244)) b!44519))

(declare-fun m!38691 () Bool)

(assert (=> d!8463 m!38691))

(assert (=> d!8463 m!38431))

(declare-fun m!38693 () Bool)

(assert (=> d!8463 m!38693))

(assert (=> b!44519 m!38431))

(declare-fun m!38695 () Bool)

(assert (=> b!44519 m!38695))

(assert (=> b!44216 d!8463))

(assert (=> b!44217 d!8407))

(declare-fun d!8465 () Bool)

(declare-fun e!28223 () Bool)

(assert (=> d!8465 e!28223))

(declare-fun c!5860 () Bool)

(assert (=> d!8465 (= c!5860 (and (not (= (_1!829 lt!19282) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!829 lt!19282) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!8465 true))

(declare-fun _$15!86 () Unit!1229)

(assert (=> d!8465 (= (choose!271 lt!19280 lt!19272 mask!853 #b00000000000000000000000000000000 lt!19270 lt!19270 (_1!829 lt!19282) defaultEntry!470) _$15!86)))

(declare-fun b!44524 () Bool)

(assert (=> b!44524 (= e!28223 (arrayContainsKey!0 lt!19280 (_1!829 lt!19282) #b00000000000000000000000000000000))))

(declare-fun b!44525 () Bool)

(assert (=> b!44525 (= e!28223 (ite (= (_1!829 lt!19282) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!8465 c!5860) b!44524))

(assert (= (and d!8465 (not c!5860)) b!44525))

(assert (=> b!44524 m!38347))

(assert (=> d!8367 d!8465))

(assert (=> d!8367 d!8351))

(assert (=> b!44318 d!8361))

(assert (=> b!44214 d!8407))

(assert (=> d!8303 d!8337))

(declare-fun d!8467 () Bool)

(assert (=> d!8467 (= (arrayCountValidKeys!0 lt!19280 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!8467 true))

(declare-fun _$88!61 () Unit!1229)

(assert (=> d!8467 (= (choose!59 lt!19280 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!61)))

(declare-fun bs!2026 () Bool)

(assert (= bs!2026 d!8467))

(assert (=> bs!2026 m!38339))

(assert (=> d!8303 d!8467))

(declare-fun bm!3586 () Bool)

(declare-fun call!3589 () (_ BitVec 32))

(assert (=> bm!3586 (= call!3589 (arrayCountValidKeys!0 lt!19280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!44526 () Bool)

(declare-fun e!28224 () (_ BitVec 32))

(assert (=> b!44526 (= e!28224 (bvadd #b00000000000000000000000000000001 call!3589))))

(declare-fun d!8469 () Bool)

(declare-fun lt!19501 () (_ BitVec 32))

(assert (=> d!8469 (and (bvsge lt!19501 #b00000000000000000000000000000000) (bvsle lt!19501 (bvsub (size!1620 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!28225 () (_ BitVec 32))

(assert (=> d!8469 (= lt!19501 e!28225)))

(declare-fun c!5862 () Bool)

(assert (=> d!8469 (= c!5862 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8469 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1620 lt!19280)))))

(assert (=> d!8469 (= (arrayCountValidKeys!0 lt!19280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!19501)))

(declare-fun b!44527 () Bool)

(assert (=> b!44527 (= e!28225 #b00000000000000000000000000000000)))

(declare-fun b!44528 () Bool)

(assert (=> b!44528 (= e!28224 call!3589)))

(declare-fun b!44529 () Bool)

(assert (=> b!44529 (= e!28225 e!28224)))

(declare-fun c!5861 () Bool)

(assert (=> b!44529 (= c!5861 (validKeyInArray!0 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!8469 c!5862) b!44527))

(assert (= (and d!8469 (not c!5862)) b!44529))

(assert (= (and b!44529 c!5861) b!44526))

(assert (= (and b!44529 (not c!5861)) b!44528))

(assert (= (or b!44526 b!44528) bm!3586))

(declare-fun m!38697 () Bool)

(assert (=> bm!3586 m!38697))

(assert (=> b!44529 m!38683))

(assert (=> b!44529 m!38683))

(declare-fun m!38699 () Bool)

(assert (=> b!44529 m!38699))

(assert (=> bm!3563 d!8469))

(declare-fun b!44530 () Bool)

(declare-fun e!28229 () Bool)

(declare-fun call!3590 () Bool)

(assert (=> b!44530 (= e!28229 call!3590)))

(declare-fun d!8471 () Bool)

(declare-fun res!26246 () Bool)

(declare-fun e!28227 () Bool)

(assert (=> d!8471 (=> res!26246 e!28227)))

(assert (=> d!8471 (= res!26246 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1620 lt!19280)))))

(assert (=> d!8471 (= (arrayNoDuplicates!0 lt!19280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222)) e!28227)))

(declare-fun b!44531 () Bool)

(declare-fun e!28226 () Bool)

(assert (=> b!44531 (= e!28227 e!28226)))

(declare-fun res!26245 () Bool)

(assert (=> b!44531 (=> (not res!26245) (not e!28226))))

(declare-fun e!28228 () Bool)

(assert (=> b!44531 (= res!26245 (not e!28228))))

(declare-fun res!26247 () Bool)

(assert (=> b!44531 (=> (not res!26247) (not e!28228))))

(assert (=> b!44531 (= res!26247 (validKeyInArray!0 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!44532 () Bool)

(assert (=> b!44532 (= e!28229 call!3590)))

(declare-fun bm!3587 () Bool)

(declare-fun c!5863 () Bool)

(assert (=> bm!3587 (= call!3590 (arrayNoDuplicates!0 lt!19280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5863 (Cons!1221 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222)) (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222))))))

(declare-fun b!44533 () Bool)

(assert (=> b!44533 (= e!28228 (contains!577 (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222) (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!44534 () Bool)

(assert (=> b!44534 (= e!28226 e!28229)))

(assert (=> b!44534 (= c!5863 (validKeyInArray!0 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!8471 (not res!26246)) b!44531))

(assert (= (and b!44531 res!26247) b!44533))

(assert (= (and b!44531 res!26245) b!44534))

(assert (= (and b!44534 c!5863) b!44530))

(assert (= (and b!44534 (not c!5863)) b!44532))

(assert (= (or b!44530 b!44532) bm!3587))

(assert (=> b!44531 m!38683))

(assert (=> b!44531 m!38683))

(assert (=> b!44531 m!38699))

(assert (=> bm!3587 m!38683))

(declare-fun m!38701 () Bool)

(assert (=> bm!3587 m!38701))

(assert (=> b!44533 m!38683))

(assert (=> b!44533 m!38683))

(declare-fun m!38703 () Bool)

(assert (=> b!44533 m!38703))

(assert (=> b!44534 m!38683))

(assert (=> b!44534 m!38683))

(assert (=> b!44534 m!38699))

(assert (=> bm!3557 d!8471))

(declare-fun bm!3588 () Bool)

(declare-fun call!3591 () (_ BitVec 32))

(assert (=> bm!3588 (= call!3591 (arrayCountValidKeys!0 (_keys!3463 lt!19281) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1620 (_keys!3463 lt!19281))))))

(declare-fun b!44535 () Bool)

(declare-fun e!28230 () (_ BitVec 32))

(assert (=> b!44535 (= e!28230 (bvadd #b00000000000000000000000000000001 call!3591))))

(declare-fun d!8473 () Bool)

(declare-fun lt!19502 () (_ BitVec 32))

(assert (=> d!8473 (and (bvsge lt!19502 #b00000000000000000000000000000000) (bvsle lt!19502 (bvsub (size!1620 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(declare-fun e!28231 () (_ BitVec 32))

(assert (=> d!8473 (= lt!19502 e!28231)))

(declare-fun c!5865 () Bool)

(assert (=> d!8473 (= c!5865 (bvsge #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))))))

(assert (=> d!8473 (and (bvsle #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1620 (_keys!3463 lt!19281)) (size!1620 (_keys!3463 lt!19281))))))

(assert (=> d!8473 (= (arrayCountValidKeys!0 (_keys!3463 lt!19281) #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))) lt!19502)))

(declare-fun b!44536 () Bool)

(assert (=> b!44536 (= e!28231 #b00000000000000000000000000000000)))

(declare-fun b!44537 () Bool)

(assert (=> b!44537 (= e!28230 call!3591)))

(declare-fun b!44538 () Bool)

(assert (=> b!44538 (= e!28231 e!28230)))

(declare-fun c!5864 () Bool)

(assert (=> b!44538 (= c!5864 (validKeyInArray!0 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(assert (= (and d!8473 c!5865) b!44536))

(assert (= (and d!8473 (not c!5865)) b!44538))

(assert (= (and b!44538 c!5864) b!44535))

(assert (= (and b!44538 (not c!5864)) b!44537))

(assert (= (or b!44535 b!44537) bm!3588))

(declare-fun m!38705 () Bool)

(assert (=> bm!3588 m!38705))

(declare-fun m!38707 () Bool)

(assert (=> b!44538 m!38707))

(assert (=> b!44538 m!38707))

(declare-fun m!38709 () Bool)

(assert (=> b!44538 m!38709))

(assert (=> b!44232 d!8473))

(assert (=> b!44180 d!8407))

(declare-fun b!44539 () Bool)

(declare-fun e!28234 () Bool)

(declare-fun e!28232 () Bool)

(assert (=> b!44539 (= e!28234 e!28232)))

(declare-fun lt!19503 () (_ BitVec 64))

(assert (=> b!44539 (= lt!19503 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000))))

(declare-fun lt!19504 () Unit!1229)

(assert (=> b!44539 (= lt!19504 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3463 lt!19281) lt!19503 #b00000000000000000000000000000000))))

(assert (=> b!44539 (arrayContainsKey!0 (_keys!3463 lt!19281) lt!19503 #b00000000000000000000000000000000)))

(declare-fun lt!19505 () Unit!1229)

(assert (=> b!44539 (= lt!19505 lt!19504)))

(declare-fun res!26249 () Bool)

(assert (=> b!44539 (= res!26249 (= (seekEntryOrOpen!0 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) (_keys!3463 lt!19281) (mask!5473 lt!19281)) (Found!213 #b00000000000000000000000000000000)))))

(assert (=> b!44539 (=> (not res!26249) (not e!28232))))

(declare-fun b!44540 () Bool)

(declare-fun call!3592 () Bool)

(assert (=> b!44540 (= e!28234 call!3592)))

(declare-fun b!44541 () Bool)

(declare-fun e!28233 () Bool)

(assert (=> b!44541 (= e!28233 e!28234)))

(declare-fun c!5866 () Bool)

(assert (=> b!44541 (= c!5866 (validKeyInArray!0 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(declare-fun d!8475 () Bool)

(declare-fun res!26248 () Bool)

(assert (=> d!8475 (=> res!26248 e!28233)))

(assert (=> d!8475 (= res!26248 (bvsge #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))))))

(assert (=> d!8475 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3463 lt!19281) (mask!5473 lt!19281)) e!28233)))

(declare-fun bm!3589 () Bool)

(assert (=> bm!3589 (= call!3592 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3463 lt!19281) (mask!5473 lt!19281)))))

(declare-fun b!44542 () Bool)

(assert (=> b!44542 (= e!28232 call!3592)))

(assert (= (and d!8475 (not res!26248)) b!44541))

(assert (= (and b!44541 c!5866) b!44539))

(assert (= (and b!44541 (not c!5866)) b!44540))

(assert (= (and b!44539 res!26249) b!44542))

(assert (= (or b!44542 b!44540) bm!3589))

(assert (=> b!44539 m!38707))

(declare-fun m!38711 () Bool)

(assert (=> b!44539 m!38711))

(declare-fun m!38713 () Bool)

(assert (=> b!44539 m!38713))

(assert (=> b!44539 m!38707))

(declare-fun m!38715 () Bool)

(assert (=> b!44539 m!38715))

(assert (=> b!44541 m!38707))

(assert (=> b!44541 m!38707))

(assert (=> b!44541 m!38709))

(declare-fun m!38717 () Bool)

(assert (=> bm!3589 m!38717))

(assert (=> b!44233 d!8475))

(declare-fun b!44728 () Bool)

(declare-fun e!28358 () ListLongMap!1219)

(declare-fun call!3657 () ListLongMap!1219)

(declare-fun +!71 (ListLongMap!1219 tuple2!1638) ListLongMap!1219)

(assert (=> b!44728 (= e!28358 (+!71 call!3657 (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281))))))

(declare-fun b!44729 () Bool)

(declare-fun e!28356 () Bool)

(declare-fun e!28362 () Bool)

(assert (=> b!44729 (= e!28356 e!28362)))

(declare-fun c!5921 () Bool)

(assert (=> b!44729 (= c!5921 (not (= (bvand (extraKeys!1787 lt!19281) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!44730 () Bool)

(declare-fun res!26334 () Bool)

(assert (=> b!44730 (=> (not res!26334) (not e!28356))))

(declare-fun e!28355 () Bool)

(assert (=> b!44730 (= res!26334 e!28355)))

(declare-fun c!5920 () Bool)

(assert (=> b!44730 (= c!5920 (not (= (bvand (extraKeys!1787 lt!19281) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!44731 () Bool)

(declare-fun e!28353 () ListLongMap!1219)

(declare-fun call!3655 () ListLongMap!1219)

(assert (=> b!44731 (= e!28353 call!3655)))

(declare-fun b!44732 () Bool)

(declare-fun e!28357 () Unit!1229)

(declare-fun lt!19701 () Unit!1229)

(assert (=> b!44732 (= e!28357 lt!19701)))

(declare-fun lt!19690 () ListLongMap!1219)

(declare-fun getCurrentListMapNoExtraKeys!40 (array!2947 array!2949 (_ BitVec 32) (_ BitVec 32) V!2325 V!2325 (_ BitVec 32) Int) ListLongMap!1219)

(assert (=> b!44732 (= lt!19690 (getCurrentListMapNoExtraKeys!40 (_keys!3463 lt!19281) (_values!1879 lt!19281) (mask!5473 lt!19281) (extraKeys!1787 lt!19281) (zeroValue!1814 lt!19281) (minValue!1814 lt!19281) #b00000000000000000000000000000000 (defaultEntry!1896 lt!19281)))))

(declare-fun lt!19700 () (_ BitVec 64))

(assert (=> b!44732 (= lt!19700 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19687 () (_ BitVec 64))

(assert (=> b!44732 (= lt!19687 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000))))

(declare-fun lt!19707 () Unit!1229)

(declare-fun addStillContains!38 (ListLongMap!1219 (_ BitVec 64) V!2325 (_ BitVec 64)) Unit!1229)

(assert (=> b!44732 (= lt!19707 (addStillContains!38 lt!19690 lt!19700 (zeroValue!1814 lt!19281) lt!19687))))

(declare-fun contains!581 (ListLongMap!1219 (_ BitVec 64)) Bool)

(assert (=> b!44732 (contains!581 (+!71 lt!19690 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281))) lt!19687)))

(declare-fun lt!19708 () Unit!1229)

(assert (=> b!44732 (= lt!19708 lt!19707)))

(declare-fun lt!19706 () ListLongMap!1219)

(assert (=> b!44732 (= lt!19706 (getCurrentListMapNoExtraKeys!40 (_keys!3463 lt!19281) (_values!1879 lt!19281) (mask!5473 lt!19281) (extraKeys!1787 lt!19281) (zeroValue!1814 lt!19281) (minValue!1814 lt!19281) #b00000000000000000000000000000000 (defaultEntry!1896 lt!19281)))))

(declare-fun lt!19689 () (_ BitVec 64))

(assert (=> b!44732 (= lt!19689 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19705 () (_ BitVec 64))

(assert (=> b!44732 (= lt!19705 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000))))

(declare-fun lt!19693 () Unit!1229)

(declare-fun addApplyDifferent!38 (ListLongMap!1219 (_ BitVec 64) V!2325 (_ BitVec 64)) Unit!1229)

(assert (=> b!44732 (= lt!19693 (addApplyDifferent!38 lt!19706 lt!19689 (minValue!1814 lt!19281) lt!19705))))

(declare-fun apply!63 (ListLongMap!1219 (_ BitVec 64)) V!2325)

(assert (=> b!44732 (= (apply!63 (+!71 lt!19706 (tuple2!1639 lt!19689 (minValue!1814 lt!19281))) lt!19705) (apply!63 lt!19706 lt!19705))))

(declare-fun lt!19691 () Unit!1229)

(assert (=> b!44732 (= lt!19691 lt!19693)))

(declare-fun lt!19704 () ListLongMap!1219)

(assert (=> b!44732 (= lt!19704 (getCurrentListMapNoExtraKeys!40 (_keys!3463 lt!19281) (_values!1879 lt!19281) (mask!5473 lt!19281) (extraKeys!1787 lt!19281) (zeroValue!1814 lt!19281) (minValue!1814 lt!19281) #b00000000000000000000000000000000 (defaultEntry!1896 lt!19281)))))

(declare-fun lt!19692 () (_ BitVec 64))

(assert (=> b!44732 (= lt!19692 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19688 () (_ BitVec 64))

(assert (=> b!44732 (= lt!19688 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000))))

(declare-fun lt!19697 () Unit!1229)

(assert (=> b!44732 (= lt!19697 (addApplyDifferent!38 lt!19704 lt!19692 (zeroValue!1814 lt!19281) lt!19688))))

(assert (=> b!44732 (= (apply!63 (+!71 lt!19704 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281))) lt!19688) (apply!63 lt!19704 lt!19688))))

(declare-fun lt!19699 () Unit!1229)

(assert (=> b!44732 (= lt!19699 lt!19697)))

(declare-fun lt!19698 () ListLongMap!1219)

(assert (=> b!44732 (= lt!19698 (getCurrentListMapNoExtraKeys!40 (_keys!3463 lt!19281) (_values!1879 lt!19281) (mask!5473 lt!19281) (extraKeys!1787 lt!19281) (zeroValue!1814 lt!19281) (minValue!1814 lt!19281) #b00000000000000000000000000000000 (defaultEntry!1896 lt!19281)))))

(declare-fun lt!19696 () (_ BitVec 64))

(assert (=> b!44732 (= lt!19696 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19694 () (_ BitVec 64))

(assert (=> b!44732 (= lt!19694 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000))))

(assert (=> b!44732 (= lt!19701 (addApplyDifferent!38 lt!19698 lt!19696 (minValue!1814 lt!19281) lt!19694))))

(assert (=> b!44732 (= (apply!63 (+!71 lt!19698 (tuple2!1639 lt!19696 (minValue!1814 lt!19281))) lt!19694) (apply!63 lt!19698 lt!19694))))

(declare-fun bm!3648 () Bool)

(declare-fun call!3652 () Bool)

(declare-fun lt!19695 () ListLongMap!1219)

(assert (=> bm!3648 (= call!3652 (contains!581 lt!19695 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!44733 () Bool)

(declare-fun call!3651 () Bool)

(assert (=> b!44733 (= e!28355 (not call!3651))))

(declare-fun b!44734 () Bool)

(declare-fun c!5922 () Bool)

(assert (=> b!44734 (= c!5922 (and (not (= (bvand (extraKeys!1787 lt!19281) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1787 lt!19281) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!28360 () ListLongMap!1219)

(assert (=> b!44734 (= e!28353 e!28360)))

(declare-fun bm!3649 () Bool)

(declare-fun call!3656 () ListLongMap!1219)

(declare-fun call!3654 () ListLongMap!1219)

(assert (=> bm!3649 (= call!3656 call!3654)))

(declare-fun b!44735 () Bool)

(assert (=> b!44735 (= e!28360 call!3655)))

(declare-fun b!44736 () Bool)

(declare-fun e!28352 () Bool)

(assert (=> b!44736 (= e!28352 (validKeyInArray!0 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(declare-fun b!44737 () Bool)

(declare-fun e!28359 () Bool)

(declare-fun get!805 (ValueCell!704 V!2325) V!2325)

(assert (=> b!44737 (= e!28359 (= (apply!63 lt!19695 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)) (get!805 (select (arr!1418 (_values!1879 lt!19281)) #b00000000000000000000000000000000) (dynLambda!265 (defaultEntry!1896 lt!19281) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!44737 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1621 (_values!1879 lt!19281))))))

(assert (=> b!44737 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))))))

(declare-fun b!44738 () Bool)

(declare-fun e!28354 () Bool)

(assert (=> b!44738 (= e!28362 e!28354)))

(declare-fun res!26335 () Bool)

(assert (=> b!44738 (= res!26335 call!3652)))

(assert (=> b!44738 (=> (not res!26335) (not e!28354))))

(declare-fun bm!3651 () Bool)

(declare-fun call!3653 () ListLongMap!1219)

(assert (=> bm!3651 (= call!3653 (getCurrentListMapNoExtraKeys!40 (_keys!3463 lt!19281) (_values!1879 lt!19281) (mask!5473 lt!19281) (extraKeys!1787 lt!19281) (zeroValue!1814 lt!19281) (minValue!1814 lt!19281) #b00000000000000000000000000000000 (defaultEntry!1896 lt!19281)))))

(declare-fun b!44739 () Bool)

(assert (=> b!44739 (= e!28354 (= (apply!63 lt!19695 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1814 lt!19281)))))

(declare-fun b!44740 () Bool)

(assert (=> b!44740 (= e!28358 e!28353)))

(declare-fun c!5924 () Bool)

(assert (=> b!44740 (= c!5924 (and (not (= (bvand (extraKeys!1787 lt!19281) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1787 lt!19281) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!44741 () Bool)

(declare-fun e!28361 () Bool)

(assert (=> b!44741 (= e!28355 e!28361)))

(declare-fun res!26337 () Bool)

(assert (=> b!44741 (= res!26337 call!3651)))

(assert (=> b!44741 (=> (not res!26337) (not e!28361))))

(declare-fun b!44742 () Bool)

(declare-fun e!28363 () Bool)

(assert (=> b!44742 (= e!28363 (validKeyInArray!0 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(declare-fun b!44743 () Bool)

(declare-fun Unit!1242 () Unit!1229)

(assert (=> b!44743 (= e!28357 Unit!1242)))

(declare-fun bm!3652 () Bool)

(assert (=> bm!3652 (= call!3655 call!3657)))

(declare-fun b!44744 () Bool)

(assert (=> b!44744 (= e!28361 (= (apply!63 lt!19695 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1814 lt!19281)))))

(declare-fun c!5923 () Bool)

(declare-fun bm!3653 () Bool)

(assert (=> bm!3653 (= call!3657 (+!71 (ite c!5923 call!3653 (ite c!5924 call!3654 call!3656)) (ite (or c!5923 c!5924) (tuple2!1639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1814 lt!19281)) (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281)))))))

(declare-fun b!44745 () Bool)

(declare-fun res!26338 () Bool)

(assert (=> b!44745 (=> (not res!26338) (not e!28356))))

(declare-fun e!28364 () Bool)

(assert (=> b!44745 (= res!26338 e!28364)))

(declare-fun res!26341 () Bool)

(assert (=> b!44745 (=> res!26341 e!28364)))

(assert (=> b!44745 (= res!26341 (not e!28363))))

(declare-fun res!26336 () Bool)

(assert (=> b!44745 (=> (not res!26336) (not e!28363))))

(assert (=> b!44745 (= res!26336 (bvslt #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))))))

(declare-fun b!44746 () Bool)

(assert (=> b!44746 (= e!28362 (not call!3652))))

(declare-fun bm!3654 () Bool)

(assert (=> bm!3654 (= call!3651 (contains!581 lt!19695 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!8477 () Bool)

(assert (=> d!8477 e!28356))

(declare-fun res!26342 () Bool)

(assert (=> d!8477 (=> (not res!26342) (not e!28356))))

(assert (=> d!8477 (= res!26342 (or (bvsge #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))))))))

(declare-fun lt!19702 () ListLongMap!1219)

(assert (=> d!8477 (= lt!19695 lt!19702)))

(declare-fun lt!19703 () Unit!1229)

(assert (=> d!8477 (= lt!19703 e!28357)))

(declare-fun c!5919 () Bool)

(assert (=> d!8477 (= c!5919 e!28352)))

(declare-fun res!26339 () Bool)

(assert (=> d!8477 (=> (not res!26339) (not e!28352))))

(assert (=> d!8477 (= res!26339 (bvslt #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))))))

(assert (=> d!8477 (= lt!19702 e!28358)))

(assert (=> d!8477 (= c!5923 (and (not (= (bvand (extraKeys!1787 lt!19281) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1787 lt!19281) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!8477 (validMask!0 (mask!5473 lt!19281))))

(assert (=> d!8477 (= (getCurrentListMap!356 (_keys!3463 lt!19281) (_values!1879 lt!19281) (mask!5473 lt!19281) (extraKeys!1787 lt!19281) (zeroValue!1814 lt!19281) (minValue!1814 lt!19281) #b00000000000000000000000000000000 (defaultEntry!1896 lt!19281)) lt!19695)))

(declare-fun bm!3650 () Bool)

(assert (=> bm!3650 (= call!3654 call!3653)))

(declare-fun b!44747 () Bool)

(assert (=> b!44747 (= e!28360 call!3656)))

(declare-fun b!44748 () Bool)

(assert (=> b!44748 (= e!28364 e!28359)))

(declare-fun res!26340 () Bool)

(assert (=> b!44748 (=> (not res!26340) (not e!28359))))

(assert (=> b!44748 (= res!26340 (contains!581 lt!19695 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(assert (=> b!44748 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))))))

(assert (= (and d!8477 c!5923) b!44728))

(assert (= (and d!8477 (not c!5923)) b!44740))

(assert (= (and b!44740 c!5924) b!44731))

(assert (= (and b!44740 (not c!5924)) b!44734))

(assert (= (and b!44734 c!5922) b!44735))

(assert (= (and b!44734 (not c!5922)) b!44747))

(assert (= (or b!44735 b!44747) bm!3649))

(assert (= (or b!44731 bm!3649) bm!3650))

(assert (= (or b!44731 b!44735) bm!3652))

(assert (= (or b!44728 bm!3650) bm!3651))

(assert (= (or b!44728 bm!3652) bm!3653))

(assert (= (and d!8477 res!26339) b!44736))

(assert (= (and d!8477 c!5919) b!44732))

(assert (= (and d!8477 (not c!5919)) b!44743))

(assert (= (and d!8477 res!26342) b!44745))

(assert (= (and b!44745 res!26336) b!44742))

(assert (= (and b!44745 (not res!26341)) b!44748))

(assert (= (and b!44748 res!26340) b!44737))

(assert (= (and b!44745 res!26338) b!44730))

(assert (= (and b!44730 c!5920) b!44741))

(assert (= (and b!44730 (not c!5920)) b!44733))

(assert (= (and b!44741 res!26337) b!44744))

(assert (= (or b!44741 b!44733) bm!3654))

(assert (= (and b!44730 res!26334) b!44729))

(assert (= (and b!44729 c!5921) b!44738))

(assert (= (and b!44729 (not c!5921)) b!44746))

(assert (= (and b!44738 res!26335) b!44739))

(assert (= (or b!44738 b!44746) bm!3648))

(declare-fun b_lambda!2345 () Bool)

(assert (=> (not b_lambda!2345) (not b!44737)))

(declare-fun t!4262 () Bool)

(declare-fun tb!1019 () Bool)

(assert (=> (and start!6742 (= defaultEntry!470 (defaultEntry!1896 lt!19281)) t!4262) tb!1019))

(declare-fun result!1771 () Bool)

(assert (=> tb!1019 (= result!1771 tp_is_empty!1903)))

(assert (=> b!44737 t!4262))

(declare-fun b_and!2725 () Bool)

(assert (= b_and!2711 (and (=> t!4262 result!1771) b_and!2725)))

(assert (=> b!44742 m!38707))

(assert (=> b!44742 m!38707))

(assert (=> b!44742 m!38709))

(declare-fun m!38843 () Bool)

(assert (=> b!44728 m!38843))

(declare-fun m!38845 () Bool)

(assert (=> b!44744 m!38845))

(declare-fun m!38847 () Bool)

(assert (=> bm!3653 m!38847))

(declare-fun m!38849 () Bool)

(assert (=> b!44732 m!38849))

(declare-fun m!38851 () Bool)

(assert (=> b!44732 m!38851))

(declare-fun m!38853 () Bool)

(assert (=> b!44732 m!38853))

(declare-fun m!38855 () Bool)

(assert (=> b!44732 m!38855))

(declare-fun m!38857 () Bool)

(assert (=> b!44732 m!38857))

(declare-fun m!38859 () Bool)

(assert (=> b!44732 m!38859))

(declare-fun m!38861 () Bool)

(assert (=> b!44732 m!38861))

(declare-fun m!38863 () Bool)

(assert (=> b!44732 m!38863))

(declare-fun m!38865 () Bool)

(assert (=> b!44732 m!38865))

(declare-fun m!38867 () Bool)

(assert (=> b!44732 m!38867))

(declare-fun m!38869 () Bool)

(assert (=> b!44732 m!38869))

(assert (=> b!44732 m!38863))

(declare-fun m!38871 () Bool)

(assert (=> b!44732 m!38871))

(declare-fun m!38873 () Bool)

(assert (=> b!44732 m!38873))

(assert (=> b!44732 m!38707))

(assert (=> b!44732 m!38849))

(assert (=> b!44732 m!38869))

(declare-fun m!38875 () Bool)

(assert (=> b!44732 m!38875))

(declare-fun m!38877 () Bool)

(assert (=> b!44732 m!38877))

(assert (=> b!44732 m!38861))

(declare-fun m!38879 () Bool)

(assert (=> b!44732 m!38879))

(assert (=> d!8477 m!38607))

(assert (=> b!44737 m!38707))

(declare-fun m!38881 () Bool)

(assert (=> b!44737 m!38881))

(declare-fun m!38883 () Bool)

(assert (=> b!44737 m!38883))

(declare-fun m!38885 () Bool)

(assert (=> b!44737 m!38885))

(assert (=> b!44737 m!38881))

(assert (=> b!44737 m!38883))

(assert (=> b!44737 m!38707))

(declare-fun m!38887 () Bool)

(assert (=> b!44737 m!38887))

(declare-fun m!38889 () Bool)

(assert (=> bm!3654 m!38889))

(declare-fun m!38891 () Bool)

(assert (=> b!44739 m!38891))

(assert (=> b!44736 m!38707))

(assert (=> b!44736 m!38707))

(assert (=> b!44736 m!38709))

(assert (=> b!44748 m!38707))

(assert (=> b!44748 m!38707))

(declare-fun m!38893 () Bool)

(assert (=> b!44748 m!38893))

(assert (=> bm!3651 m!38877))

(declare-fun m!38895 () Bool)

(assert (=> bm!3648 m!38895))

(assert (=> d!8345 d!8477))

(declare-fun b!44749 () Bool)

(declare-fun e!28368 () Bool)

(declare-fun call!3658 () Bool)

(assert (=> b!44749 (= e!28368 call!3658)))

(declare-fun d!8491 () Bool)

(declare-fun res!26344 () Bool)

(declare-fun e!28366 () Bool)

(assert (=> d!8491 (=> res!26344 e!28366)))

(assert (=> d!8491 (= res!26344 (bvsge #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))))))

(assert (=> d!8491 (= (arrayNoDuplicates!0 (_keys!3463 lt!19281) #b00000000000000000000000000000000 Nil!1222) e!28366)))

(declare-fun b!44750 () Bool)

(declare-fun e!28365 () Bool)

(assert (=> b!44750 (= e!28366 e!28365)))

(declare-fun res!26343 () Bool)

(assert (=> b!44750 (=> (not res!26343) (not e!28365))))

(declare-fun e!28367 () Bool)

(assert (=> b!44750 (= res!26343 (not e!28367))))

(declare-fun res!26345 () Bool)

(assert (=> b!44750 (=> (not res!26345) (not e!28367))))

(assert (=> b!44750 (= res!26345 (validKeyInArray!0 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(declare-fun b!44751 () Bool)

(assert (=> b!44751 (= e!28368 call!3658)))

(declare-fun bm!3655 () Bool)

(declare-fun c!5925 () Bool)

(assert (=> bm!3655 (= call!3658 (arrayNoDuplicates!0 (_keys!3463 lt!19281) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5925 (Cons!1221 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) Nil!1222) Nil!1222)))))

(declare-fun b!44752 () Bool)

(assert (=> b!44752 (= e!28367 (contains!577 Nil!1222 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(declare-fun b!44753 () Bool)

(assert (=> b!44753 (= e!28365 e!28368)))

(assert (=> b!44753 (= c!5925 (validKeyInArray!0 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(assert (= (and d!8491 (not res!26344)) b!44750))

(assert (= (and b!44750 res!26345) b!44752))

(assert (= (and b!44750 res!26343) b!44753))

(assert (= (and b!44753 c!5925) b!44749))

(assert (= (and b!44753 (not c!5925)) b!44751))

(assert (= (or b!44749 b!44751) bm!3655))

(assert (=> b!44750 m!38707))

(assert (=> b!44750 m!38707))

(assert (=> b!44750 m!38709))

(assert (=> bm!3655 m!38707))

(declare-fun m!38897 () Bool)

(assert (=> bm!3655 m!38897))

(assert (=> b!44752 m!38707))

(assert (=> b!44752 m!38707))

(declare-fun m!38899 () Bool)

(assert (=> b!44752 m!38899))

(assert (=> b!44753 m!38707))

(assert (=> b!44753 m!38707))

(assert (=> b!44753 m!38709))

(assert (=> b!44234 d!8491))

(declare-fun b!44754 () Bool)

(declare-fun e!28371 () Bool)

(declare-fun e!28369 () Bool)

(assert (=> b!44754 (= e!28371 e!28369)))

(declare-fun lt!19709 () (_ BitVec 64))

(assert (=> b!44754 (= lt!19709 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!19710 () Unit!1229)

(assert (=> b!44754 (= lt!19710 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19280 lt!19709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!44754 (arrayContainsKey!0 lt!19280 lt!19709 #b00000000000000000000000000000000)))

(declare-fun lt!19711 () Unit!1229)

(assert (=> b!44754 (= lt!19711 lt!19710)))

(declare-fun res!26347 () Bool)

(assert (=> b!44754 (= res!26347 (= (seekEntryOrOpen!0 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19280 mask!853) (Found!213 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!44754 (=> (not res!26347) (not e!28369))))

(declare-fun b!44755 () Bool)

(declare-fun call!3659 () Bool)

(assert (=> b!44755 (= e!28371 call!3659)))

(declare-fun b!44756 () Bool)

(declare-fun e!28370 () Bool)

(assert (=> b!44756 (= e!28370 e!28371)))

(declare-fun c!5926 () Bool)

(assert (=> b!44756 (= c!5926 (validKeyInArray!0 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!8493 () Bool)

(declare-fun res!26346 () Bool)

(assert (=> d!8493 (=> res!26346 e!28370)))

(assert (=> d!8493 (= res!26346 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1620 lt!19280)))))

(assert (=> d!8493 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!19280 mask!853) e!28370)))

(declare-fun bm!3656 () Bool)

(assert (=> bm!3656 (= call!3659 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!19280 mask!853))))

(declare-fun b!44757 () Bool)

(assert (=> b!44757 (= e!28369 call!3659)))

(assert (= (and d!8493 (not res!26346)) b!44756))

(assert (= (and b!44756 c!5926) b!44754))

(assert (= (and b!44756 (not c!5926)) b!44755))

(assert (= (and b!44754 res!26347) b!44757))

(assert (= (or b!44757 b!44755) bm!3656))

(assert (=> b!44754 m!38683))

(declare-fun m!38901 () Bool)

(assert (=> b!44754 m!38901))

(declare-fun m!38903 () Bool)

(assert (=> b!44754 m!38903))

(assert (=> b!44754 m!38683))

(declare-fun m!38905 () Bool)

(assert (=> b!44754 m!38905))

(assert (=> b!44756 m!38683))

(assert (=> b!44756 m!38683))

(assert (=> b!44756 m!38699))

(declare-fun m!38907 () Bool)

(assert (=> bm!3656 m!38907))

(assert (=> bm!3554 d!8493))

(push 1)

(assert (not b!44524))

(assert (not b!44529))

(assert (not d!8453))

(assert (not b!44748))

(assert (not b_lambda!2345))

(assert b_and!2725)

(assert (not b!44754))

(assert (not bm!3587))

(assert (not bm!3648))

(assert (not d!8467))

(assert (not d!8463))

(assert (not b!44531))

(assert (not bm!3655))

(assert (not b!44753))

(assert (not b!44538))

(assert (not b!44750))

(assert (not b!44756))

(assert (not d!8477))

(assert (not b!44742))

(assert (not b!44499))

(assert (not b!44533))

(assert (not bm!3653))

(assert (not b_next!1513))

(assert (not b!44421))

(assert (not b_lambda!2337))

(assert (not b!44433))

(assert (not d!8433))

(assert (not b!44739))

(assert (not bm!3654))

(assert (not b!44732))

(assert (not bm!3651))

(assert (not b!44513))

(assert (not bm!3586))

(assert (not b!44744))

(assert (not b!44534))

(assert (not b!44752))

(assert (not b!44539))

(assert (not b!44511))

(assert (not d!8423))

(assert (not b!44728))

(assert tp_is_empty!1903)

(assert (not bm!3589))

(assert (not d!8411))

(assert (not b!44736))

(assert (not b!44422))

(assert (not b!44541))

(assert (not bm!3588))

(assert (not d!8461))

(assert (not bm!3656))

(assert (not b!44737))

(assert (not b!44519))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2725)

(assert (not b_next!1513))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8535 () Bool)

(declare-fun e!28431 () Bool)

(assert (=> d!8535 e!28431))

(declare-fun res!26387 () Bool)

(assert (=> d!8535 (=> res!26387 e!28431)))

(declare-fun lt!19778 () Bool)

(assert (=> d!8535 (= res!26387 (not lt!19778))))

(declare-fun lt!19776 () Bool)

(assert (=> d!8535 (= lt!19778 lt!19776)))

(declare-fun lt!19777 () Unit!1229)

(declare-fun e!28432 () Unit!1229)

(assert (=> d!8535 (= lt!19777 e!28432)))

(declare-fun c!5953 () Bool)

(assert (=> d!8535 (= c!5953 lt!19776)))

(declare-fun containsKey!75 (List!1224 (_ BitVec 64)) Bool)

(assert (=> d!8535 (= lt!19776 (containsKey!75 (toList!625 lt!19695) (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(assert (=> d!8535 (= (contains!581 lt!19695 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)) lt!19778)))

(declare-fun b!44849 () Bool)

(declare-fun lt!19779 () Unit!1229)

(assert (=> b!44849 (= e!28432 lt!19779)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!63 (List!1224 (_ BitVec 64)) Unit!1229)

(assert (=> b!44849 (= lt!19779 (lemmaContainsKeyImpliesGetValueByKeyDefined!63 (toList!625 lt!19695) (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(declare-datatypes ((Option!113 0))(
  ( (Some!112 (v!2092 V!2325)) (None!111) )
))
(declare-fun isDefined!64 (Option!113) Bool)

(declare-fun getValueByKey!107 (List!1224 (_ BitVec 64)) Option!113)

(assert (=> b!44849 (isDefined!64 (getValueByKey!107 (toList!625 lt!19695) (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(declare-fun b!44850 () Bool)

(declare-fun Unit!1245 () Unit!1229)

(assert (=> b!44850 (= e!28432 Unit!1245)))

(declare-fun b!44851 () Bool)

(assert (=> b!44851 (= e!28431 (isDefined!64 (getValueByKey!107 (toList!625 lt!19695) (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000))))))

(assert (= (and d!8535 c!5953) b!44849))

(assert (= (and d!8535 (not c!5953)) b!44850))

(assert (= (and d!8535 (not res!26387)) b!44851))

(assert (=> d!8535 m!38707))

(declare-fun m!39013 () Bool)

(assert (=> d!8535 m!39013))

(assert (=> b!44849 m!38707))

(declare-fun m!39015 () Bool)

(assert (=> b!44849 m!39015))

(assert (=> b!44849 m!38707))

(declare-fun m!39017 () Bool)

(assert (=> b!44849 m!39017))

(assert (=> b!44849 m!39017))

(declare-fun m!39019 () Bool)

(assert (=> b!44849 m!39019))

(assert (=> b!44851 m!38707))

(assert (=> b!44851 m!39017))

(assert (=> b!44851 m!39017))

(assert (=> b!44851 m!39019))

(assert (=> b!44748 d!8535))

(declare-fun d!8537 () Bool)

(declare-fun e!28433 () Bool)

(assert (=> d!8537 e!28433))

(declare-fun res!26388 () Bool)

(assert (=> d!8537 (=> res!26388 e!28433)))

(declare-fun lt!19782 () Bool)

(assert (=> d!8537 (= res!26388 (not lt!19782))))

(declare-fun lt!19780 () Bool)

(assert (=> d!8537 (= lt!19782 lt!19780)))

(declare-fun lt!19781 () Unit!1229)

(declare-fun e!28434 () Unit!1229)

(assert (=> d!8537 (= lt!19781 e!28434)))

(declare-fun c!5954 () Bool)

(assert (=> d!8537 (= c!5954 lt!19780)))

(assert (=> d!8537 (= lt!19780 (containsKey!75 (toList!625 lt!19695) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!8537 (= (contains!581 lt!19695 #b1000000000000000000000000000000000000000000000000000000000000000) lt!19782)))

(declare-fun b!44852 () Bool)

(declare-fun lt!19783 () Unit!1229)

(assert (=> b!44852 (= e!28434 lt!19783)))

(assert (=> b!44852 (= lt!19783 (lemmaContainsKeyImpliesGetValueByKeyDefined!63 (toList!625 lt!19695) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!44852 (isDefined!64 (getValueByKey!107 (toList!625 lt!19695) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!44853 () Bool)

(declare-fun Unit!1246 () Unit!1229)

(assert (=> b!44853 (= e!28434 Unit!1246)))

(declare-fun b!44854 () Bool)

(assert (=> b!44854 (= e!28433 (isDefined!64 (getValueByKey!107 (toList!625 lt!19695) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!8537 c!5954) b!44852))

(assert (= (and d!8537 (not c!5954)) b!44853))

(assert (= (and d!8537 (not res!26388)) b!44854))

(declare-fun m!39021 () Bool)

(assert (=> d!8537 m!39021))

(declare-fun m!39023 () Bool)

(assert (=> b!44852 m!39023))

(declare-fun m!39025 () Bool)

(assert (=> b!44852 m!39025))

(assert (=> b!44852 m!39025))

(declare-fun m!39027 () Bool)

(assert (=> b!44852 m!39027))

(assert (=> b!44854 m!39025))

(assert (=> b!44854 m!39025))

(assert (=> b!44854 m!39027))

(assert (=> bm!3648 d!8537))

(declare-fun d!8539 () Bool)

(declare-fun e!28452 () Bool)

(assert (=> d!8539 e!28452))

(declare-fun res!26403 () Bool)

(assert (=> d!8539 (=> (not res!26403) (not e!28452))))

(declare-fun lt!19800 () ListLongMap!1219)

(assert (=> d!8539 (= res!26403 (contains!581 lt!19800 (_1!829 (tuple2!1639 lt!19689 (minValue!1814 lt!19281)))))))

(declare-fun lt!19801 () List!1224)

(assert (=> d!8539 (= lt!19800 (ListLongMap!1220 lt!19801))))

(declare-fun lt!19799 () Unit!1229)

(declare-fun lt!19798 () Unit!1229)

(assert (=> d!8539 (= lt!19799 lt!19798)))

(assert (=> d!8539 (= (getValueByKey!107 lt!19801 (_1!829 (tuple2!1639 lt!19689 (minValue!1814 lt!19281)))) (Some!112 (_2!829 (tuple2!1639 lt!19689 (minValue!1814 lt!19281)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!33 (List!1224 (_ BitVec 64) V!2325) Unit!1229)

(assert (=> d!8539 (= lt!19798 (lemmaContainsTupThenGetReturnValue!33 lt!19801 (_1!829 (tuple2!1639 lt!19689 (minValue!1814 lt!19281))) (_2!829 (tuple2!1639 lt!19689 (minValue!1814 lt!19281)))))))

(declare-fun insertStrictlySorted!30 (List!1224 (_ BitVec 64) V!2325) List!1224)

(assert (=> d!8539 (= lt!19801 (insertStrictlySorted!30 (toList!625 lt!19706) (_1!829 (tuple2!1639 lt!19689 (minValue!1814 lt!19281))) (_2!829 (tuple2!1639 lt!19689 (minValue!1814 lt!19281)))))))

(assert (=> d!8539 (= (+!71 lt!19706 (tuple2!1639 lt!19689 (minValue!1814 lt!19281))) lt!19800)))

(declare-fun b!44886 () Bool)

(declare-fun res!26404 () Bool)

(assert (=> b!44886 (=> (not res!26404) (not e!28452))))

(assert (=> b!44886 (= res!26404 (= (getValueByKey!107 (toList!625 lt!19800) (_1!829 (tuple2!1639 lt!19689 (minValue!1814 lt!19281)))) (Some!112 (_2!829 (tuple2!1639 lt!19689 (minValue!1814 lt!19281))))))))

(declare-fun b!44887 () Bool)

(declare-fun contains!583 (List!1224 tuple2!1638) Bool)

(assert (=> b!44887 (= e!28452 (contains!583 (toList!625 lt!19800) (tuple2!1639 lt!19689 (minValue!1814 lt!19281))))))

(assert (= (and d!8539 res!26403) b!44886))

(assert (= (and b!44886 res!26404) b!44887))

(declare-fun m!39037 () Bool)

(assert (=> d!8539 m!39037))

(declare-fun m!39039 () Bool)

(assert (=> d!8539 m!39039))

(declare-fun m!39041 () Bool)

(assert (=> d!8539 m!39041))

(declare-fun m!39043 () Bool)

(assert (=> d!8539 m!39043))

(declare-fun m!39045 () Bool)

(assert (=> b!44886 m!39045))

(declare-fun m!39047 () Bool)

(assert (=> b!44887 m!39047))

(assert (=> b!44732 d!8539))

(declare-fun d!8547 () Bool)

(declare-fun e!28518 () Bool)

(assert (=> d!8547 e!28518))

(declare-fun res!26446 () Bool)

(assert (=> d!8547 (=> (not res!26446) (not e!28518))))

(declare-fun lt!19901 () ListLongMap!1219)

(assert (=> d!8547 (= res!26446 (not (contains!581 lt!19901 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!28512 () ListLongMap!1219)

(assert (=> d!8547 (= lt!19901 e!28512)))

(declare-fun c!5994 () Bool)

(assert (=> d!8547 (= c!5994 (bvsge #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))))))

(assert (=> d!8547 (validMask!0 (mask!5473 lt!19281))))

(assert (=> d!8547 (= (getCurrentListMapNoExtraKeys!40 (_keys!3463 lt!19281) (_values!1879 lt!19281) (mask!5473 lt!19281) (extraKeys!1787 lt!19281) (zeroValue!1814 lt!19281) (minValue!1814 lt!19281) #b00000000000000000000000000000000 (defaultEntry!1896 lt!19281)) lt!19901)))

(declare-fun b!44989 () Bool)

(declare-fun e!28513 () ListLongMap!1219)

(declare-fun call!3671 () ListLongMap!1219)

(assert (=> b!44989 (= e!28513 call!3671)))

(declare-fun b!44990 () Bool)

(declare-fun e!28515 () Bool)

(declare-fun e!28514 () Bool)

(assert (=> b!44990 (= e!28515 e!28514)))

(assert (=> b!44990 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))))))

(declare-fun res!26447 () Bool)

(assert (=> b!44990 (= res!26447 (contains!581 lt!19901 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(assert (=> b!44990 (=> (not res!26447) (not e!28514))))

(declare-fun b!44991 () Bool)

(assert (=> b!44991 (= e!28512 (ListLongMap!1220 Nil!1221))))

(declare-fun b!44992 () Bool)

(assert (=> b!44992 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))))))

(assert (=> b!44992 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1621 (_values!1879 lt!19281))))))

(assert (=> b!44992 (= e!28514 (= (apply!63 lt!19901 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)) (get!805 (select (arr!1418 (_values!1879 lt!19281)) #b00000000000000000000000000000000) (dynLambda!265 (defaultEntry!1896 lt!19281) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!44993 () Bool)

(assert (=> b!44993 (= e!28512 e!28513)))

(declare-fun c!5995 () Bool)

(assert (=> b!44993 (= c!5995 (validKeyInArray!0 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(declare-fun b!44994 () Bool)

(declare-fun e!28516 () Bool)

(assert (=> b!44994 (= e!28516 (validKeyInArray!0 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(assert (=> b!44994 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!44995 () Bool)

(declare-fun e!28517 () Bool)

(assert (=> b!44995 (= e!28515 e!28517)))

(declare-fun c!5993 () Bool)

(assert (=> b!44995 (= c!5993 (bvslt #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))))))

(declare-fun b!44996 () Bool)

(assert (=> b!44996 (= e!28517 (= lt!19901 (getCurrentListMapNoExtraKeys!40 (_keys!3463 lt!19281) (_values!1879 lt!19281) (mask!5473 lt!19281) (extraKeys!1787 lt!19281) (zeroValue!1814 lt!19281) (minValue!1814 lt!19281) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1896 lt!19281))))))

(declare-fun b!44997 () Bool)

(declare-fun lt!19897 () Unit!1229)

(declare-fun lt!19896 () Unit!1229)

(assert (=> b!44997 (= lt!19897 lt!19896)))

(declare-fun lt!19899 () V!2325)

(declare-fun lt!19898 () (_ BitVec 64))

(declare-fun lt!19895 () ListLongMap!1219)

(declare-fun lt!19900 () (_ BitVec 64))

(assert (=> b!44997 (not (contains!581 (+!71 lt!19895 (tuple2!1639 lt!19898 lt!19899)) lt!19900))))

(declare-fun addStillNotContains!14 (ListLongMap!1219 (_ BitVec 64) V!2325 (_ BitVec 64)) Unit!1229)

(assert (=> b!44997 (= lt!19896 (addStillNotContains!14 lt!19895 lt!19898 lt!19899 lt!19900))))

(assert (=> b!44997 (= lt!19900 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!44997 (= lt!19899 (get!805 (select (arr!1418 (_values!1879 lt!19281)) #b00000000000000000000000000000000) (dynLambda!265 (defaultEntry!1896 lt!19281) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!44997 (= lt!19898 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000))))

(assert (=> b!44997 (= lt!19895 call!3671)))

(assert (=> b!44997 (= e!28513 (+!71 call!3671 (tuple2!1639 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) (get!805 (select (arr!1418 (_values!1879 lt!19281)) #b00000000000000000000000000000000) (dynLambda!265 (defaultEntry!1896 lt!19281) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!44998 () Bool)

(assert (=> b!44998 (= e!28518 e!28515)))

(declare-fun c!5992 () Bool)

(assert (=> b!44998 (= c!5992 e!28516)))

(declare-fun res!26448 () Bool)

(assert (=> b!44998 (=> (not res!26448) (not e!28516))))

(assert (=> b!44998 (= res!26448 (bvslt #b00000000000000000000000000000000 (size!1620 (_keys!3463 lt!19281))))))

(declare-fun b!44999 () Bool)

(declare-fun res!26449 () Bool)

(assert (=> b!44999 (=> (not res!26449) (not e!28518))))

(assert (=> b!44999 (= res!26449 (not (contains!581 lt!19901 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!3668 () Bool)

(assert (=> bm!3668 (= call!3671 (getCurrentListMapNoExtraKeys!40 (_keys!3463 lt!19281) (_values!1879 lt!19281) (mask!5473 lt!19281) (extraKeys!1787 lt!19281) (zeroValue!1814 lt!19281) (minValue!1814 lt!19281) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1896 lt!19281)))))

(declare-fun b!45000 () Bool)

(declare-fun isEmpty!293 (ListLongMap!1219) Bool)

(assert (=> b!45000 (= e!28517 (isEmpty!293 lt!19901))))

(assert (= (and d!8547 c!5994) b!44991))

(assert (= (and d!8547 (not c!5994)) b!44993))

(assert (= (and b!44993 c!5995) b!44997))

(assert (= (and b!44993 (not c!5995)) b!44989))

(assert (= (or b!44997 b!44989) bm!3668))

(assert (= (and d!8547 res!26446) b!44999))

(assert (= (and b!44999 res!26449) b!44998))

(assert (= (and b!44998 res!26448) b!44994))

(assert (= (and b!44998 c!5992) b!44990))

(assert (= (and b!44998 (not c!5992)) b!44995))

(assert (= (and b!44990 res!26447) b!44992))

(assert (= (and b!44995 c!5993) b!44996))

(assert (= (and b!44995 (not c!5993)) b!45000))

(declare-fun b_lambda!2351 () Bool)

(assert (=> (not b_lambda!2351) (not b!44992)))

(assert (=> b!44992 t!4262))

(declare-fun b_and!2731 () Bool)

(assert (= b_and!2725 (and (=> t!4262 result!1771) b_and!2731)))

(declare-fun b_lambda!2353 () Bool)

(assert (=> (not b_lambda!2353) (not b!44997)))

(assert (=> b!44997 t!4262))

(declare-fun b_and!2733 () Bool)

(assert (= b_and!2731 (and (=> t!4262 result!1771) b_and!2733)))

(declare-fun m!39255 () Bool)

(assert (=> d!8547 m!39255))

(assert (=> d!8547 m!38607))

(declare-fun m!39257 () Bool)

(assert (=> b!45000 m!39257))

(assert (=> b!44990 m!38707))

(assert (=> b!44990 m!38707))

(declare-fun m!39259 () Bool)

(assert (=> b!44990 m!39259))

(assert (=> b!44993 m!38707))

(assert (=> b!44993 m!38707))

(assert (=> b!44993 m!38709))

(assert (=> b!44994 m!38707))

(assert (=> b!44994 m!38707))

(assert (=> b!44994 m!38709))

(declare-fun m!39261 () Bool)

(assert (=> b!44996 m!39261))

(declare-fun m!39263 () Bool)

(assert (=> b!44999 m!39263))

(assert (=> b!44997 m!38881))

(assert (=> b!44997 m!38881))

(assert (=> b!44997 m!38883))

(assert (=> b!44997 m!38885))

(declare-fun m!39265 () Bool)

(assert (=> b!44997 m!39265))

(assert (=> b!44997 m!38883))

(assert (=> b!44997 m!38707))

(declare-fun m!39267 () Bool)

(assert (=> b!44997 m!39267))

(declare-fun m!39269 () Bool)

(assert (=> b!44997 m!39269))

(declare-fun m!39271 () Bool)

(assert (=> b!44997 m!39271))

(assert (=> b!44997 m!39267))

(assert (=> bm!3668 m!39261))

(assert (=> b!44992 m!38881))

(assert (=> b!44992 m!38881))

(assert (=> b!44992 m!38883))

(assert (=> b!44992 m!38885))

(assert (=> b!44992 m!38883))

(assert (=> b!44992 m!38707))

(assert (=> b!44992 m!38707))

(declare-fun m!39273 () Bool)

(assert (=> b!44992 m!39273))

(assert (=> b!44732 d!8547))

(declare-fun d!8621 () Bool)

(declare-fun e!28519 () Bool)

(assert (=> d!8621 e!28519))

(declare-fun res!26450 () Bool)

(assert (=> d!8621 (=> (not res!26450) (not e!28519))))

(declare-fun lt!19904 () ListLongMap!1219)

(assert (=> d!8621 (= res!26450 (contains!581 lt!19904 (_1!829 (tuple2!1639 lt!19696 (minValue!1814 lt!19281)))))))

(declare-fun lt!19905 () List!1224)

(assert (=> d!8621 (= lt!19904 (ListLongMap!1220 lt!19905))))

(declare-fun lt!19903 () Unit!1229)

(declare-fun lt!19902 () Unit!1229)

(assert (=> d!8621 (= lt!19903 lt!19902)))

(assert (=> d!8621 (= (getValueByKey!107 lt!19905 (_1!829 (tuple2!1639 lt!19696 (minValue!1814 lt!19281)))) (Some!112 (_2!829 (tuple2!1639 lt!19696 (minValue!1814 lt!19281)))))))

(assert (=> d!8621 (= lt!19902 (lemmaContainsTupThenGetReturnValue!33 lt!19905 (_1!829 (tuple2!1639 lt!19696 (minValue!1814 lt!19281))) (_2!829 (tuple2!1639 lt!19696 (minValue!1814 lt!19281)))))))

(assert (=> d!8621 (= lt!19905 (insertStrictlySorted!30 (toList!625 lt!19698) (_1!829 (tuple2!1639 lt!19696 (minValue!1814 lt!19281))) (_2!829 (tuple2!1639 lt!19696 (minValue!1814 lt!19281)))))))

(assert (=> d!8621 (= (+!71 lt!19698 (tuple2!1639 lt!19696 (minValue!1814 lt!19281))) lt!19904)))

(declare-fun b!45001 () Bool)

(declare-fun res!26451 () Bool)

(assert (=> b!45001 (=> (not res!26451) (not e!28519))))

(assert (=> b!45001 (= res!26451 (= (getValueByKey!107 (toList!625 lt!19904) (_1!829 (tuple2!1639 lt!19696 (minValue!1814 lt!19281)))) (Some!112 (_2!829 (tuple2!1639 lt!19696 (minValue!1814 lt!19281))))))))

(declare-fun b!45002 () Bool)

(assert (=> b!45002 (= e!28519 (contains!583 (toList!625 lt!19904) (tuple2!1639 lt!19696 (minValue!1814 lt!19281))))))

(assert (= (and d!8621 res!26450) b!45001))

(assert (= (and b!45001 res!26451) b!45002))

(declare-fun m!39275 () Bool)

(assert (=> d!8621 m!39275))

(declare-fun m!39277 () Bool)

(assert (=> d!8621 m!39277))

(declare-fun m!39279 () Bool)

(assert (=> d!8621 m!39279))

(declare-fun m!39281 () Bool)

(assert (=> d!8621 m!39281))

(declare-fun m!39283 () Bool)

(assert (=> b!45001 m!39283))

(declare-fun m!39285 () Bool)

(assert (=> b!45002 m!39285))

(assert (=> b!44732 d!8621))

(declare-fun d!8623 () Bool)

(declare-fun e!28520 () Bool)

(assert (=> d!8623 e!28520))

(declare-fun res!26452 () Bool)

(assert (=> d!8623 (=> (not res!26452) (not e!28520))))

(declare-fun lt!19908 () ListLongMap!1219)

(assert (=> d!8623 (= res!26452 (contains!581 lt!19908 (_1!829 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281)))))))

(declare-fun lt!19909 () List!1224)

(assert (=> d!8623 (= lt!19908 (ListLongMap!1220 lt!19909))))

(declare-fun lt!19907 () Unit!1229)

(declare-fun lt!19906 () Unit!1229)

(assert (=> d!8623 (= lt!19907 lt!19906)))

(assert (=> d!8623 (= (getValueByKey!107 lt!19909 (_1!829 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281)))) (Some!112 (_2!829 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281)))))))

(assert (=> d!8623 (= lt!19906 (lemmaContainsTupThenGetReturnValue!33 lt!19909 (_1!829 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281))) (_2!829 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281)))))))

(assert (=> d!8623 (= lt!19909 (insertStrictlySorted!30 (toList!625 lt!19690) (_1!829 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281))) (_2!829 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281)))))))

(assert (=> d!8623 (= (+!71 lt!19690 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281))) lt!19908)))

(declare-fun b!45003 () Bool)

(declare-fun res!26453 () Bool)

(assert (=> b!45003 (=> (not res!26453) (not e!28520))))

(assert (=> b!45003 (= res!26453 (= (getValueByKey!107 (toList!625 lt!19908) (_1!829 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281)))) (Some!112 (_2!829 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281))))))))

(declare-fun b!45004 () Bool)

(assert (=> b!45004 (= e!28520 (contains!583 (toList!625 lt!19908) (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281))))))

(assert (= (and d!8623 res!26452) b!45003))

(assert (= (and b!45003 res!26453) b!45004))

(declare-fun m!39287 () Bool)

(assert (=> d!8623 m!39287))

(declare-fun m!39289 () Bool)

(assert (=> d!8623 m!39289))

(declare-fun m!39291 () Bool)

(assert (=> d!8623 m!39291))

(declare-fun m!39293 () Bool)

(assert (=> d!8623 m!39293))

(declare-fun m!39295 () Bool)

(assert (=> b!45003 m!39295))

(declare-fun m!39297 () Bool)

(assert (=> b!45004 m!39297))

(assert (=> b!44732 d!8623))

(declare-fun d!8625 () Bool)

(declare-fun e!28521 () Bool)

(assert (=> d!8625 e!28521))

(declare-fun res!26454 () Bool)

(assert (=> d!8625 (=> (not res!26454) (not e!28521))))

(declare-fun lt!19912 () ListLongMap!1219)

(assert (=> d!8625 (= res!26454 (contains!581 lt!19912 (_1!829 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281)))))))

(declare-fun lt!19913 () List!1224)

(assert (=> d!8625 (= lt!19912 (ListLongMap!1220 lt!19913))))

(declare-fun lt!19911 () Unit!1229)

(declare-fun lt!19910 () Unit!1229)

(assert (=> d!8625 (= lt!19911 lt!19910)))

(assert (=> d!8625 (= (getValueByKey!107 lt!19913 (_1!829 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281)))) (Some!112 (_2!829 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281)))))))

(assert (=> d!8625 (= lt!19910 (lemmaContainsTupThenGetReturnValue!33 lt!19913 (_1!829 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281))) (_2!829 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281)))))))

(assert (=> d!8625 (= lt!19913 (insertStrictlySorted!30 (toList!625 lt!19704) (_1!829 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281))) (_2!829 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281)))))))

(assert (=> d!8625 (= (+!71 lt!19704 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281))) lt!19912)))

(declare-fun b!45005 () Bool)

(declare-fun res!26455 () Bool)

(assert (=> b!45005 (=> (not res!26455) (not e!28521))))

(assert (=> b!45005 (= res!26455 (= (getValueByKey!107 (toList!625 lt!19912) (_1!829 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281)))) (Some!112 (_2!829 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281))))))))

(declare-fun b!45006 () Bool)

(assert (=> b!45006 (= e!28521 (contains!583 (toList!625 lt!19912) (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281))))))

(assert (= (and d!8625 res!26454) b!45005))

(assert (= (and b!45005 res!26455) b!45006))

(declare-fun m!39299 () Bool)

(assert (=> d!8625 m!39299))

(declare-fun m!39301 () Bool)

(assert (=> d!8625 m!39301))

(declare-fun m!39303 () Bool)

(assert (=> d!8625 m!39303))

(declare-fun m!39305 () Bool)

(assert (=> d!8625 m!39305))

(declare-fun m!39307 () Bool)

(assert (=> b!45005 m!39307))

(declare-fun m!39309 () Bool)

(assert (=> b!45006 m!39309))

(assert (=> b!44732 d!8625))

(declare-fun d!8627 () Bool)

(declare-fun get!808 (Option!113) V!2325)

(assert (=> d!8627 (= (apply!63 (+!71 lt!19698 (tuple2!1639 lt!19696 (minValue!1814 lt!19281))) lt!19694) (get!808 (getValueByKey!107 (toList!625 (+!71 lt!19698 (tuple2!1639 lt!19696 (minValue!1814 lt!19281)))) lt!19694)))))

(declare-fun bs!2045 () Bool)

(assert (= bs!2045 d!8627))

(declare-fun m!39311 () Bool)

(assert (=> bs!2045 m!39311))

(assert (=> bs!2045 m!39311))

(declare-fun m!39313 () Bool)

(assert (=> bs!2045 m!39313))

(assert (=> b!44732 d!8627))

(declare-fun d!8629 () Bool)

(assert (=> d!8629 (= (apply!63 lt!19704 lt!19688) (get!808 (getValueByKey!107 (toList!625 lt!19704) lt!19688)))))

(declare-fun bs!2046 () Bool)

(assert (= bs!2046 d!8629))

(declare-fun m!39315 () Bool)

(assert (=> bs!2046 m!39315))

(assert (=> bs!2046 m!39315))

(declare-fun m!39317 () Bool)

(assert (=> bs!2046 m!39317))

(assert (=> b!44732 d!8629))

(declare-fun d!8631 () Bool)

(declare-fun e!28532 () Bool)

(assert (=> d!8631 e!28532))

(declare-fun res!26458 () Bool)

(assert (=> d!8631 (=> res!26458 e!28532)))

(declare-fun lt!19928 () Bool)

(assert (=> d!8631 (= res!26458 (not lt!19928))))

(declare-fun lt!19926 () Bool)

(assert (=> d!8631 (= lt!19928 lt!19926)))

(declare-fun lt!19927 () Unit!1229)

(declare-fun e!28533 () Unit!1229)

(assert (=> d!8631 (= lt!19927 e!28533)))

(declare-fun c!6004 () Bool)

(assert (=> d!8631 (= c!6004 lt!19926)))

(assert (=> d!8631 (= lt!19926 (containsKey!75 (toList!625 (+!71 lt!19690 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281)))) lt!19687))))

(assert (=> d!8631 (= (contains!581 (+!71 lt!19690 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281))) lt!19687) lt!19928)))

(declare-fun b!45025 () Bool)

(declare-fun lt!19929 () Unit!1229)

(assert (=> b!45025 (= e!28533 lt!19929)))

(assert (=> b!45025 (= lt!19929 (lemmaContainsKeyImpliesGetValueByKeyDefined!63 (toList!625 (+!71 lt!19690 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281)))) lt!19687))))

(assert (=> b!45025 (isDefined!64 (getValueByKey!107 (toList!625 (+!71 lt!19690 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281)))) lt!19687))))

(declare-fun b!45026 () Bool)

(declare-fun Unit!1248 () Unit!1229)

(assert (=> b!45026 (= e!28533 Unit!1248)))

(declare-fun b!45027 () Bool)

(assert (=> b!45027 (= e!28532 (isDefined!64 (getValueByKey!107 (toList!625 (+!71 lt!19690 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281)))) lt!19687)))))

(assert (= (and d!8631 c!6004) b!45025))

(assert (= (and d!8631 (not c!6004)) b!45026))

(assert (= (and d!8631 (not res!26458)) b!45027))

(declare-fun m!39319 () Bool)

(assert (=> d!8631 m!39319))

(declare-fun m!39321 () Bool)

(assert (=> b!45025 m!39321))

(declare-fun m!39323 () Bool)

(assert (=> b!45025 m!39323))

(assert (=> b!45025 m!39323))

(declare-fun m!39325 () Bool)

(assert (=> b!45025 m!39325))

(assert (=> b!45027 m!39323))

(assert (=> b!45027 m!39323))

(assert (=> b!45027 m!39325))

(assert (=> b!44732 d!8631))

(declare-fun d!8633 () Bool)

(assert (=> d!8633 (= (apply!63 (+!71 lt!19704 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281))) lt!19688) (get!808 (getValueByKey!107 (toList!625 (+!71 lt!19704 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281)))) lt!19688)))))

(declare-fun bs!2047 () Bool)

(assert (= bs!2047 d!8633))

(declare-fun m!39331 () Bool)

(assert (=> bs!2047 m!39331))

(assert (=> bs!2047 m!39331))

(declare-fun m!39337 () Bool)

(assert (=> bs!2047 m!39337))

(assert (=> b!44732 d!8633))

(declare-fun d!8635 () Bool)

(assert (=> d!8635 (= (apply!63 lt!19706 lt!19705) (get!808 (getValueByKey!107 (toList!625 lt!19706) lt!19705)))))

(declare-fun bs!2048 () Bool)

(assert (= bs!2048 d!8635))

(declare-fun m!39339 () Bool)

(assert (=> bs!2048 m!39339))

(assert (=> bs!2048 m!39339))

(declare-fun m!39343 () Bool)

(assert (=> bs!2048 m!39343))

(assert (=> b!44732 d!8635))

(declare-fun d!8639 () Bool)

(assert (=> d!8639 (contains!581 (+!71 lt!19690 (tuple2!1639 lt!19700 (zeroValue!1814 lt!19281))) lt!19687)))

(declare-fun lt!19943 () Unit!1229)

(declare-fun choose!277 (ListLongMap!1219 (_ BitVec 64) V!2325 (_ BitVec 64)) Unit!1229)

(assert (=> d!8639 (= lt!19943 (choose!277 lt!19690 lt!19700 (zeroValue!1814 lt!19281) lt!19687))))

(assert (=> d!8639 (contains!581 lt!19690 lt!19687)))

(assert (=> d!8639 (= (addStillContains!38 lt!19690 lt!19700 (zeroValue!1814 lt!19281) lt!19687) lt!19943)))

(declare-fun bs!2051 () Bool)

(assert (= bs!2051 d!8639))

(assert (=> bs!2051 m!38849))

(assert (=> bs!2051 m!38849))

(assert (=> bs!2051 m!38851))

(declare-fun m!39373 () Bool)

(assert (=> bs!2051 m!39373))

(declare-fun m!39375 () Bool)

(assert (=> bs!2051 m!39375))

(assert (=> b!44732 d!8639))

(declare-fun d!8653 () Bool)

(assert (=> d!8653 (= (apply!63 (+!71 lt!19704 (tuple2!1639 lt!19692 (zeroValue!1814 lt!19281))) lt!19688) (apply!63 lt!19704 lt!19688))))

(declare-fun lt!19950 () Unit!1229)

(declare-fun choose!278 (ListLongMap!1219 (_ BitVec 64) V!2325 (_ BitVec 64)) Unit!1229)

(assert (=> d!8653 (= lt!19950 (choose!278 lt!19704 lt!19692 (zeroValue!1814 lt!19281) lt!19688))))

(declare-fun e!28550 () Bool)

(assert (=> d!8653 e!28550))

(declare-fun res!26468 () Bool)

(assert (=> d!8653 (=> (not res!26468) (not e!28550))))

(assert (=> d!8653 (= res!26468 (contains!581 lt!19704 lt!19688))))

(assert (=> d!8653 (= (addApplyDifferent!38 lt!19704 lt!19692 (zeroValue!1814 lt!19281) lt!19688) lt!19950)))

(declare-fun b!45055 () Bool)

(assert (=> b!45055 (= e!28550 (not (= lt!19688 lt!19692)))))

(assert (= (and d!8653 res!26468) b!45055))

(assert (=> d!8653 m!38861))

(assert (=> d!8653 m!38861))

(assert (=> d!8653 m!38879))

(declare-fun m!39391 () Bool)

(assert (=> d!8653 m!39391))

(assert (=> d!8653 m!38871))

(declare-fun m!39393 () Bool)

(assert (=> d!8653 m!39393))

(assert (=> b!44732 d!8653))

(declare-fun d!8663 () Bool)

(assert (=> d!8663 (= (apply!63 (+!71 lt!19698 (tuple2!1639 lt!19696 (minValue!1814 lt!19281))) lt!19694) (apply!63 lt!19698 lt!19694))))

(declare-fun lt!19951 () Unit!1229)

(assert (=> d!8663 (= lt!19951 (choose!278 lt!19698 lt!19696 (minValue!1814 lt!19281) lt!19694))))

(declare-fun e!28551 () Bool)

(assert (=> d!8663 e!28551))

(declare-fun res!26469 () Bool)

(assert (=> d!8663 (=> (not res!26469) (not e!28551))))

(assert (=> d!8663 (= res!26469 (contains!581 lt!19698 lt!19694))))

(assert (=> d!8663 (= (addApplyDifferent!38 lt!19698 lt!19696 (minValue!1814 lt!19281) lt!19694) lt!19951)))

(declare-fun b!45056 () Bool)

(assert (=> b!45056 (= e!28551 (not (= lt!19694 lt!19696)))))

(assert (= (and d!8663 res!26469) b!45056))

(assert (=> d!8663 m!38869))

(assert (=> d!8663 m!38869))

(assert (=> d!8663 m!38875))

(declare-fun m!39395 () Bool)

(assert (=> d!8663 m!39395))

(assert (=> d!8663 m!38859))

(declare-fun m!39397 () Bool)

(assert (=> d!8663 m!39397))

(assert (=> b!44732 d!8663))

(declare-fun d!8665 () Bool)

(assert (=> d!8665 (= (apply!63 (+!71 lt!19706 (tuple2!1639 lt!19689 (minValue!1814 lt!19281))) lt!19705) (get!808 (getValueByKey!107 (toList!625 (+!71 lt!19706 (tuple2!1639 lt!19689 (minValue!1814 lt!19281)))) lt!19705)))))

(declare-fun bs!2053 () Bool)

(assert (= bs!2053 d!8665))

(declare-fun m!39399 () Bool)

(assert (=> bs!2053 m!39399))

(assert (=> bs!2053 m!39399))

(declare-fun m!39401 () Bool)

(assert (=> bs!2053 m!39401))

(assert (=> b!44732 d!8665))

(declare-fun d!8667 () Bool)

(assert (=> d!8667 (= (apply!63 lt!19698 lt!19694) (get!808 (getValueByKey!107 (toList!625 lt!19698) lt!19694)))))

(declare-fun bs!2054 () Bool)

(assert (= bs!2054 d!8667))

(declare-fun m!39403 () Bool)

(assert (=> bs!2054 m!39403))

(assert (=> bs!2054 m!39403))

(declare-fun m!39405 () Bool)

(assert (=> bs!2054 m!39405))

(assert (=> b!44732 d!8667))

(declare-fun d!8669 () Bool)

(assert (=> d!8669 (= (apply!63 (+!71 lt!19706 (tuple2!1639 lt!19689 (minValue!1814 lt!19281))) lt!19705) (apply!63 lt!19706 lt!19705))))

(declare-fun lt!19952 () Unit!1229)

(assert (=> d!8669 (= lt!19952 (choose!278 lt!19706 lt!19689 (minValue!1814 lt!19281) lt!19705))))

(declare-fun e!28552 () Bool)

(assert (=> d!8669 e!28552))

(declare-fun res!26470 () Bool)

(assert (=> d!8669 (=> (not res!26470) (not e!28552))))

(assert (=> d!8669 (= res!26470 (contains!581 lt!19706 lt!19705))))

(assert (=> d!8669 (= (addApplyDifferent!38 lt!19706 lt!19689 (minValue!1814 lt!19281) lt!19705) lt!19952)))

(declare-fun b!45057 () Bool)

(assert (=> b!45057 (= e!28552 (not (= lt!19705 lt!19689)))))

(assert (= (and d!8669 res!26470) b!45057))

(assert (=> d!8669 m!38863))

(assert (=> d!8669 m!38863))

(assert (=> d!8669 m!38865))

(declare-fun m!39407 () Bool)

(assert (=> d!8669 m!39407))

(assert (=> d!8669 m!38855))

(declare-fun m!39409 () Bool)

(assert (=> d!8669 m!39409))

(assert (=> b!44732 d!8669))

(declare-fun b!45078 () Bool)

(declare-fun e!28565 () SeekEntryResult!213)

(declare-fun e!28563 () SeekEntryResult!213)

(assert (=> b!45078 (= e!28565 e!28563)))

(declare-fun c!6024 () Bool)

(declare-fun lt!19971 () (_ BitVec 64))

(assert (=> b!45078 (= c!6024 (= lt!19971 (select (arr!1417 lt!19280) #b00000000000000000000000000000000)))))

(declare-fun b!45079 () Bool)

(assert (=> b!45079 (= e!28563 (Found!213 (index!2976 lt!19494)))))

(declare-fun d!8671 () Bool)

(declare-fun lt!19972 () SeekEntryResult!213)

(assert (=> d!8671 (and (or (is-Undefined!213 lt!19972) (not (is-Found!213 lt!19972)) (and (bvsge (index!2975 lt!19972) #b00000000000000000000000000000000) (bvslt (index!2975 lt!19972) (size!1620 lt!19280)))) (or (is-Undefined!213 lt!19972) (is-Found!213 lt!19972) (not (is-MissingVacant!213 lt!19972)) (not (= (index!2977 lt!19972) (index!2976 lt!19494))) (and (bvsge (index!2977 lt!19972) #b00000000000000000000000000000000) (bvslt (index!2977 lt!19972) (size!1620 lt!19280)))) (or (is-Undefined!213 lt!19972) (ite (is-Found!213 lt!19972) (= (select (arr!1417 lt!19280) (index!2975 lt!19972)) (select (arr!1417 lt!19280) #b00000000000000000000000000000000)) (and (is-MissingVacant!213 lt!19972) (= (index!2977 lt!19972) (index!2976 lt!19494)) (= (select (arr!1417 lt!19280) (index!2977 lt!19972)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!8671 (= lt!19972 e!28565)))

(declare-fun c!6025 () Bool)

(assert (=> d!8671 (= c!6025 (bvsge (x!8367 lt!19494) #b01111111111111111111111111111110))))

(assert (=> d!8671 (= lt!19971 (select (arr!1417 lt!19280) (index!2976 lt!19494)))))

(assert (=> d!8671 (validMask!0 mask!853)))

(assert (=> d!8671 (= (seekKeyOrZeroReturnVacant!0 (x!8367 lt!19494) (index!2976 lt!19494) (index!2976 lt!19494) (select (arr!1417 lt!19280) #b00000000000000000000000000000000) lt!19280 mask!853) lt!19972)))

(declare-fun b!45080 () Bool)

(declare-fun e!28564 () SeekEntryResult!213)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!45080 (= e!28564 (seekKeyOrZeroReturnVacant!0 (bvadd (x!8367 lt!19494) #b00000000000000000000000000000001) (nextIndex!0 (index!2976 lt!19494) (x!8367 lt!19494) mask!853) (index!2976 lt!19494) (select (arr!1417 lt!19280) #b00000000000000000000000000000000) lt!19280 mask!853))))

(declare-fun b!45081 () Bool)

(declare-fun c!6023 () Bool)

(assert (=> b!45081 (= c!6023 (= lt!19971 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!45081 (= e!28563 e!28564)))

(declare-fun b!45082 () Bool)

(assert (=> b!45082 (= e!28564 (MissingVacant!213 (index!2976 lt!19494)))))

(declare-fun b!45083 () Bool)

(assert (=> b!45083 (= e!28565 Undefined!213)))

(assert (= (and d!8671 c!6025) b!45083))

(assert (= (and d!8671 (not c!6025)) b!45078))

(assert (= (and b!45078 c!6024) b!45079))

(assert (= (and b!45078 (not c!6024)) b!45081))

(assert (= (and b!45081 c!6023) b!45082))

(assert (= (and b!45081 (not c!6023)) b!45080))

(declare-fun m!39411 () Bool)

(assert (=> d!8671 m!39411))

(declare-fun m!39413 () Bool)

(assert (=> d!8671 m!39413))

(assert (=> d!8671 m!38681))

(assert (=> d!8671 m!38345))

(declare-fun m!39415 () Bool)

(assert (=> b!45080 m!39415))

(assert (=> b!45080 m!39415))

(assert (=> b!45080 m!38431))

(declare-fun m!39417 () Bool)

(assert (=> b!45080 m!39417))

(assert (=> b!44499 d!8671))

(declare-fun d!8673 () Bool)

(declare-fun e!28574 () Bool)

(assert (=> d!8673 e!28574))

(declare-fun res!26479 () Bool)

(assert (=> d!8673 (=> (not res!26479) (not e!28574))))

(declare-fun lt!19975 () ListLongMap!1219)

(assert (=> d!8673 (= res!26479 (contains!581 lt!19975 (_1!829 (ite (or c!5923 c!5924) (tuple2!1639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1814 lt!19281)) (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281))))))))

(declare-fun lt!19976 () List!1224)

(assert (=> d!8673 (= lt!19975 (ListLongMap!1220 lt!19976))))

(declare-fun lt!19974 () Unit!1229)

(declare-fun lt!19973 () Unit!1229)

(assert (=> d!8673 (= lt!19974 lt!19973)))

(assert (=> d!8673 (= (getValueByKey!107 lt!19976 (_1!829 (ite (or c!5923 c!5924) (tuple2!1639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1814 lt!19281)) (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281))))) (Some!112 (_2!829 (ite (or c!5923 c!5924) (tuple2!1639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1814 lt!19281)) (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281))))))))

(assert (=> d!8673 (= lt!19973 (lemmaContainsTupThenGetReturnValue!33 lt!19976 (_1!829 (ite (or c!5923 c!5924) (tuple2!1639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1814 lt!19281)) (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281)))) (_2!829 (ite (or c!5923 c!5924) (tuple2!1639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1814 lt!19281)) (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281))))))))

(assert (=> d!8673 (= lt!19976 (insertStrictlySorted!30 (toList!625 (ite c!5923 call!3653 (ite c!5924 call!3654 call!3656))) (_1!829 (ite (or c!5923 c!5924) (tuple2!1639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1814 lt!19281)) (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281)))) (_2!829 (ite (or c!5923 c!5924) (tuple2!1639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1814 lt!19281)) (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281))))))))

(assert (=> d!8673 (= (+!71 (ite c!5923 call!3653 (ite c!5924 call!3654 call!3656)) (ite (or c!5923 c!5924) (tuple2!1639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1814 lt!19281)) (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281)))) lt!19975)))

(declare-fun b!45096 () Bool)

(declare-fun res!26480 () Bool)

(assert (=> b!45096 (=> (not res!26480) (not e!28574))))

(assert (=> b!45096 (= res!26480 (= (getValueByKey!107 (toList!625 lt!19975) (_1!829 (ite (or c!5923 c!5924) (tuple2!1639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1814 lt!19281)) (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281))))) (Some!112 (_2!829 (ite (or c!5923 c!5924) (tuple2!1639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1814 lt!19281)) (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281)))))))))

(declare-fun b!45097 () Bool)

(assert (=> b!45097 (= e!28574 (contains!583 (toList!625 lt!19975) (ite (or c!5923 c!5924) (tuple2!1639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1814 lt!19281)) (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281)))))))

(assert (= (and d!8673 res!26479) b!45096))

(assert (= (and b!45096 res!26480) b!45097))

(declare-fun m!39419 () Bool)

(assert (=> d!8673 m!39419))

(declare-fun m!39421 () Bool)

(assert (=> d!8673 m!39421))

(declare-fun m!39423 () Bool)

(assert (=> d!8673 m!39423))

(declare-fun m!39425 () Bool)

(assert (=> d!8673 m!39425))

(declare-fun m!39427 () Bool)

(assert (=> b!45096 m!39427))

(declare-fun m!39429 () Bool)

(assert (=> b!45097 m!39429))

(assert (=> bm!3653 d!8673))

(declare-fun d!8675 () Bool)

(assert (=> d!8675 (= (validKeyInArray!0 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!44756 d!8675))

(declare-fun d!8677 () Bool)

(declare-fun e!28577 () Bool)

(assert (=> d!8677 e!28577))

(declare-fun res!26481 () Bool)

(assert (=> d!8677 (=> (not res!26481) (not e!28577))))

(declare-fun lt!19979 () ListLongMap!1219)

(assert (=> d!8677 (= res!26481 (contains!581 lt!19979 (_1!829 (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281)))))))

(declare-fun lt!19980 () List!1224)

(assert (=> d!8677 (= lt!19979 (ListLongMap!1220 lt!19980))))

(declare-fun lt!19978 () Unit!1229)

(declare-fun lt!19977 () Unit!1229)

(assert (=> d!8677 (= lt!19978 lt!19977)))

(assert (=> d!8677 (= (getValueByKey!107 lt!19980 (_1!829 (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281)))) (Some!112 (_2!829 (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281)))))))

(assert (=> d!8677 (= lt!19977 (lemmaContainsTupThenGetReturnValue!33 lt!19980 (_1!829 (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281))) (_2!829 (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281)))))))

(assert (=> d!8677 (= lt!19980 (insertStrictlySorted!30 (toList!625 call!3657) (_1!829 (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281))) (_2!829 (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281)))))))

(assert (=> d!8677 (= (+!71 call!3657 (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281))) lt!19979)))

(declare-fun b!45102 () Bool)

(declare-fun res!26482 () Bool)

(assert (=> b!45102 (=> (not res!26482) (not e!28577))))

(assert (=> b!45102 (= res!26482 (= (getValueByKey!107 (toList!625 lt!19979) (_1!829 (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281)))) (Some!112 (_2!829 (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281))))))))

(declare-fun b!45103 () Bool)

(assert (=> b!45103 (= e!28577 (contains!583 (toList!625 lt!19979) (tuple2!1639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1814 lt!19281))))))

(assert (= (and d!8677 res!26481) b!45102))

(assert (= (and b!45102 res!26482) b!45103))

(declare-fun m!39431 () Bool)

(assert (=> d!8677 m!39431))

(declare-fun m!39433 () Bool)

(assert (=> d!8677 m!39433))

(declare-fun m!39435 () Bool)

(assert (=> d!8677 m!39435))

(declare-fun m!39437 () Bool)

(assert (=> d!8677 m!39437))

(declare-fun m!39439 () Bool)

(assert (=> b!45102 m!39439))

(declare-fun m!39441 () Bool)

(assert (=> b!45103 m!39441))

(assert (=> b!44728 d!8677))

(declare-fun d!8679 () Bool)

(assert (=> d!8679 (= (content!42 Nil!1222) (as set.empty (Set (_ BitVec 64))))))

(assert (=> d!8463 d!8679))

(declare-fun b!45104 () Bool)

(declare-fun e!28581 () Bool)

(declare-fun call!3674 () Bool)

(assert (=> b!45104 (= e!28581 call!3674)))

(declare-fun d!8681 () Bool)

(declare-fun res!26484 () Bool)

(declare-fun e!28579 () Bool)

(assert (=> d!8681 (=> res!26484 e!28579)))

(assert (=> d!8681 (= res!26484 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1620 (_keys!3463 lt!19281))))))

(assert (=> d!8681 (= (arrayNoDuplicates!0 (_keys!3463 lt!19281) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5925 (Cons!1221 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) Nil!1222) Nil!1222)) e!28579)))

(declare-fun b!45105 () Bool)

(declare-fun e!28578 () Bool)

(assert (=> b!45105 (= e!28579 e!28578)))

(declare-fun res!26483 () Bool)

(assert (=> b!45105 (=> (not res!26483) (not e!28578))))

(declare-fun e!28580 () Bool)

(assert (=> b!45105 (= res!26483 (not e!28580))))

(declare-fun res!26485 () Bool)

(assert (=> b!45105 (=> (not res!26485) (not e!28580))))

(assert (=> b!45105 (= res!26485 (validKeyInArray!0 (select (arr!1417 (_keys!3463 lt!19281)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!45106 () Bool)

(assert (=> b!45106 (= e!28581 call!3674)))

(declare-fun c!6030 () Bool)

(declare-fun bm!3671 () Bool)

(assert (=> bm!3671 (= call!3674 (arrayNoDuplicates!0 (_keys!3463 lt!19281) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!6030 (Cons!1221 (select (arr!1417 (_keys!3463 lt!19281)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5925 (Cons!1221 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) Nil!1222) Nil!1222)) (ite c!5925 (Cons!1221 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) Nil!1222) Nil!1222))))))

(declare-fun b!45107 () Bool)

(assert (=> b!45107 (= e!28580 (contains!577 (ite c!5925 (Cons!1221 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) Nil!1222) Nil!1222) (select (arr!1417 (_keys!3463 lt!19281)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!45108 () Bool)

(assert (=> b!45108 (= e!28578 e!28581)))

(assert (=> b!45108 (= c!6030 (validKeyInArray!0 (select (arr!1417 (_keys!3463 lt!19281)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!8681 (not res!26484)) b!45105))

(assert (= (and b!45105 res!26485) b!45107))

(assert (= (and b!45105 res!26483) b!45108))

(assert (= (and b!45108 c!6030) b!45104))

(assert (= (and b!45108 (not c!6030)) b!45106))

(assert (= (or b!45104 b!45106) bm!3671))

(declare-fun m!39443 () Bool)

(assert (=> b!45105 m!39443))

(assert (=> b!45105 m!39443))

(declare-fun m!39445 () Bool)

(assert (=> b!45105 m!39445))

(assert (=> bm!3671 m!39443))

(declare-fun m!39447 () Bool)

(assert (=> bm!3671 m!39447))

(assert (=> b!45107 m!39443))

(assert (=> b!45107 m!39443))

(declare-fun m!39449 () Bool)

(assert (=> b!45107 m!39449))

(assert (=> b!45108 m!39443))

(assert (=> b!45108 m!39443))

(assert (=> b!45108 m!39445))

(assert (=> bm!3655 d!8681))

(declare-fun d!8683 () Bool)

(assert (=> d!8683 (= (apply!63 lt!19695 #b0000000000000000000000000000000000000000000000000000000000000000) (get!808 (getValueByKey!107 (toList!625 lt!19695) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!2055 () Bool)

(assert (= bs!2055 d!8683))

(declare-fun m!39451 () Bool)

(assert (=> bs!2055 m!39451))

(assert (=> bs!2055 m!39451))

(declare-fun m!39453 () Bool)

(assert (=> bs!2055 m!39453))

(assert (=> b!44744 d!8683))

(declare-fun d!8685 () Bool)

(assert (=> d!8685 (arrayContainsKey!0 lt!19280 lt!19709 #b00000000000000000000000000000000)))

(declare-fun lt!19981 () Unit!1229)

(assert (=> d!8685 (= lt!19981 (choose!13 lt!19280 lt!19709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!8685 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!8685 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19280 lt!19709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19981)))

(declare-fun bs!2056 () Bool)

(assert (= bs!2056 d!8685))

(assert (=> bs!2056 m!38903))

(declare-fun m!39455 () Bool)

(assert (=> bs!2056 m!39455))

(assert (=> b!44754 d!8685))

(declare-fun d!8687 () Bool)

(declare-fun res!26486 () Bool)

(declare-fun e!28582 () Bool)

(assert (=> d!8687 (=> res!26486 e!28582)))

(assert (=> d!8687 (= res!26486 (= (select (arr!1417 lt!19280) #b00000000000000000000000000000000) lt!19709))))

(assert (=> d!8687 (= (arrayContainsKey!0 lt!19280 lt!19709 #b00000000000000000000000000000000) e!28582)))

(declare-fun b!45109 () Bool)

(declare-fun e!28583 () Bool)

(assert (=> b!45109 (= e!28582 e!28583)))

(declare-fun res!26487 () Bool)

(assert (=> b!45109 (=> (not res!26487) (not e!28583))))

(assert (=> b!45109 (= res!26487 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1620 lt!19280)))))

(declare-fun b!45110 () Bool)

(assert (=> b!45110 (= e!28583 (arrayContainsKey!0 lt!19280 lt!19709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8687 (not res!26486)) b!45109))

(assert (= (and b!45109 res!26487) b!45110))

(assert (=> d!8687 m!38431))

(declare-fun m!39457 () Bool)

(assert (=> b!45110 m!39457))

(assert (=> b!44754 d!8687))

(declare-fun b!45111 () Bool)

(declare-fun e!28586 () SeekEntryResult!213)

(declare-fun lt!19982 () SeekEntryResult!213)

(assert (=> b!45111 (= e!28586 (Found!213 (index!2976 lt!19982)))))

(declare-fun b!45112 () Bool)

(declare-fun e!28585 () SeekEntryResult!213)

(assert (=> b!45112 (= e!28585 (seekKeyOrZeroReturnVacant!0 (x!8367 lt!19982) (index!2976 lt!19982) (index!2976 lt!19982) (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19280 mask!853))))

(declare-fun d!8689 () Bool)

(declare-fun lt!19984 () SeekEntryResult!213)

(assert (=> d!8689 (and (or (is-Undefined!213 lt!19984) (not (is-Found!213 lt!19984)) (and (bvsge (index!2975 lt!19984) #b00000000000000000000000000000000) (bvslt (index!2975 lt!19984) (size!1620 lt!19280)))) (or (is-Undefined!213 lt!19984) (is-Found!213 lt!19984) (not (is-MissingZero!213 lt!19984)) (and (bvsge (index!2974 lt!19984) #b00000000000000000000000000000000) (bvslt (index!2974 lt!19984) (size!1620 lt!19280)))) (or (is-Undefined!213 lt!19984) (is-Found!213 lt!19984) (is-MissingZero!213 lt!19984) (not (is-MissingVacant!213 lt!19984)) (and (bvsge (index!2977 lt!19984) #b00000000000000000000000000000000) (bvslt (index!2977 lt!19984) (size!1620 lt!19280)))) (or (is-Undefined!213 lt!19984) (ite (is-Found!213 lt!19984) (= (select (arr!1417 lt!19280) (index!2975 lt!19984)) (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite (is-MissingZero!213 lt!19984) (= (select (arr!1417 lt!19280) (index!2974 lt!19984)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!213 lt!19984) (= (select (arr!1417 lt!19280) (index!2977 lt!19984)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!28584 () SeekEntryResult!213)

(assert (=> d!8689 (= lt!19984 e!28584)))

(declare-fun c!6031 () Bool)

(assert (=> d!8689 (= c!6031 (and (is-Intermediate!213 lt!19982) (undefined!1025 lt!19982)))))

(assert (=> d!8689 (= lt!19982 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!853) (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19280 mask!853))))

(assert (=> d!8689 (validMask!0 mask!853)))

(assert (=> d!8689 (= (seekEntryOrOpen!0 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19280 mask!853) lt!19984)))

(declare-fun b!45113 () Bool)

(assert (=> b!45113 (= e!28584 e!28586)))

(declare-fun lt!19983 () (_ BitVec 64))

(assert (=> b!45113 (= lt!19983 (select (arr!1417 lt!19280) (index!2976 lt!19982)))))

(declare-fun c!6033 () Bool)

(assert (=> b!45113 (= c!6033 (= lt!19983 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!45114 () Bool)

(assert (=> b!45114 (= e!28584 Undefined!213)))

(declare-fun b!45115 () Bool)

(assert (=> b!45115 (= e!28585 (MissingZero!213 (index!2976 lt!19982)))))

(declare-fun b!45116 () Bool)

(declare-fun c!6032 () Bool)

(assert (=> b!45116 (= c!6032 (= lt!19983 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!45116 (= e!28586 e!28585)))

(assert (= (and d!8689 c!6031) b!45114))

(assert (= (and d!8689 (not c!6031)) b!45113))

(assert (= (and b!45113 c!6033) b!45111))

(assert (= (and b!45113 (not c!6033)) b!45116))

(assert (= (and b!45116 c!6032) b!45115))

(assert (= (and b!45116 (not c!6032)) b!45112))

(assert (=> b!45112 m!38683))

(declare-fun m!39459 () Bool)

(assert (=> b!45112 m!39459))

(assert (=> d!8689 m!38683))

(declare-fun m!39461 () Bool)

(assert (=> d!8689 m!39461))

(assert (=> d!8689 m!38345))

(declare-fun m!39463 () Bool)

(assert (=> d!8689 m!39463))

(declare-fun m!39465 () Bool)

(assert (=> d!8689 m!39465))

(declare-fun m!39467 () Bool)

(assert (=> d!8689 m!39467))

(assert (=> d!8689 m!39461))

(assert (=> d!8689 m!38683))

(declare-fun m!39469 () Bool)

(assert (=> d!8689 m!39469))

(declare-fun m!39471 () Bool)

(assert (=> b!45113 m!39471))

(assert (=> b!44754 d!8689))

(declare-fun d!8691 () Bool)

(assert (=> d!8691 (= (validMask!0 (mask!5473 lt!19281)) (and (or (= (mask!5473 lt!19281) #b00000000000000000000000000000111) (= (mask!5473 lt!19281) #b00000000000000000000000000001111) (= (mask!5473 lt!19281) #b00000000000000000000000000011111) (= (mask!5473 lt!19281) #b00000000000000000000000000111111) (= (mask!5473 lt!19281) #b00000000000000000000000001111111) (= (mask!5473 lt!19281) #b00000000000000000000000011111111) (= (mask!5473 lt!19281) #b00000000000000000000000111111111) (= (mask!5473 lt!19281) #b00000000000000000000001111111111) (= (mask!5473 lt!19281) #b00000000000000000000011111111111) (= (mask!5473 lt!19281) #b00000000000000000000111111111111) (= (mask!5473 lt!19281) #b00000000000000000001111111111111) (= (mask!5473 lt!19281) #b00000000000000000011111111111111) (= (mask!5473 lt!19281) #b00000000000000000111111111111111) (= (mask!5473 lt!19281) #b00000000000000001111111111111111) (= (mask!5473 lt!19281) #b00000000000000011111111111111111) (= (mask!5473 lt!19281) #b00000000000000111111111111111111) (= (mask!5473 lt!19281) #b00000000000001111111111111111111) (= (mask!5473 lt!19281) #b00000000000011111111111111111111) (= (mask!5473 lt!19281) #b00000000000111111111111111111111) (= (mask!5473 lt!19281) #b00000000001111111111111111111111) (= (mask!5473 lt!19281) #b00000000011111111111111111111111) (= (mask!5473 lt!19281) #b00000000111111111111111111111111) (= (mask!5473 lt!19281) #b00000001111111111111111111111111) (= (mask!5473 lt!19281) #b00000011111111111111111111111111) (= (mask!5473 lt!19281) #b00000111111111111111111111111111) (= (mask!5473 lt!19281) #b00001111111111111111111111111111) (= (mask!5473 lt!19281) #b00011111111111111111111111111111) (= (mask!5473 lt!19281) #b00111111111111111111111111111111)) (bvsle (mask!5473 lt!19281) #b00111111111111111111111111111111)))))

(assert (=> d!8477 d!8691))

(declare-fun d!8693 () Bool)

(assert (not d!8693))

(assert (=> b!44519 d!8693))

(declare-fun d!8695 () Bool)

(declare-fun lt!19985 () (_ BitVec 32))

(assert (=> d!8695 (and (or (bvslt lt!19985 #b00000000000000000000000000000000) (bvsge lt!19985 (size!1620 lt!19280)) (and (bvsge lt!19985 #b00000000000000000000000000000000) (bvslt lt!19985 (size!1620 lt!19280)))) (bvsge lt!19985 #b00000000000000000000000000000000) (bvslt lt!19985 (size!1620 lt!19280)) (= (select (arr!1417 lt!19280) lt!19985) (_1!829 lt!19282)))))

(declare-fun e!28587 () (_ BitVec 32))

(assert (=> d!8695 (= lt!19985 e!28587)))

(declare-fun c!6034 () Bool)

(assert (=> d!8695 (= c!6034 (= (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (_1!829 lt!19282)))))

(assert (=> d!8695 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1620 lt!19280)) (bvslt (size!1620 lt!19280) #b01111111111111111111111111111111))))

(assert (=> d!8695 (= (arrayScanForKey!0 lt!19280 (_1!829 lt!19282) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!19985)))

(declare-fun b!45117 () Bool)

(assert (=> b!45117 (= e!28587 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))

(declare-fun b!45118 () Bool)

(assert (=> b!45118 (= e!28587 (arrayScanForKey!0 lt!19280 (_1!829 lt!19282) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8695 c!6034) b!45117))

(assert (= (and d!8695 (not c!6034)) b!45118))

(declare-fun m!39473 () Bool)

(assert (=> d!8695 m!39473))

(declare-fun m!39475 () Bool)

(assert (=> d!8695 m!39475))

(declare-fun m!39477 () Bool)

(assert (=> b!45118 m!39477))

(assert (=> b!44513 d!8695))

(declare-fun d!8697 () Bool)

(declare-fun e!28595 () Bool)

(assert (=> d!8697 e!28595))

(declare-fun res!26492 () Bool)

(assert (=> d!8697 (=> res!26492 e!28595)))

(declare-fun lt!19995 () Bool)

(assert (=> d!8697 (= res!26492 (not lt!19995))))

(declare-fun lt!19993 () Bool)

(assert (=> d!8697 (= lt!19995 lt!19993)))

(declare-fun lt!19994 () Unit!1229)

(declare-fun e!28596 () Unit!1229)

(assert (=> d!8697 (= lt!19994 e!28596)))

(declare-fun c!6039 () Bool)

(assert (=> d!8697 (= c!6039 lt!19993)))

(assert (=> d!8697 (= lt!19993 (containsKey!75 (toList!625 lt!19695) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!8697 (= (contains!581 lt!19695 #b0000000000000000000000000000000000000000000000000000000000000000) lt!19995)))

(declare-fun b!45131 () Bool)

(declare-fun lt!19996 () Unit!1229)

(assert (=> b!45131 (= e!28596 lt!19996)))

(assert (=> b!45131 (= lt!19996 (lemmaContainsKeyImpliesGetValueByKeyDefined!63 (toList!625 lt!19695) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!45131 (isDefined!64 (getValueByKey!107 (toList!625 lt!19695) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!45132 () Bool)

(declare-fun Unit!1252 () Unit!1229)

(assert (=> b!45132 (= e!28596 Unit!1252)))

(declare-fun b!45133 () Bool)

(assert (=> b!45133 (= e!28595 (isDefined!64 (getValueByKey!107 (toList!625 lt!19695) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!8697 c!6039) b!45131))

(assert (= (and d!8697 (not c!6039)) b!45132))

(assert (= (and d!8697 (not res!26492)) b!45133))

(declare-fun m!39479 () Bool)

(assert (=> d!8697 m!39479))

(declare-fun m!39481 () Bool)

(assert (=> b!45131 m!39481))

(assert (=> b!45131 m!39451))

(assert (=> b!45131 m!39451))

(declare-fun m!39483 () Bool)

(assert (=> b!45131 m!39483))

(assert (=> b!45133 m!39451))

(assert (=> b!45133 m!39451))

(assert (=> b!45133 m!39483))

(assert (=> bm!3654 d!8697))

(declare-fun b!45134 () Bool)

(declare-fun e!28599 () Bool)

(declare-fun e!28597 () Bool)

(assert (=> b!45134 (= e!28599 e!28597)))

(declare-fun lt!19997 () (_ BitVec 64))

(assert (=> b!45134 (= lt!19997 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!19998 () Unit!1229)

(assert (=> b!45134 (= lt!19998 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19280 lt!19997 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!45134 (arrayContainsKey!0 lt!19280 lt!19997 #b00000000000000000000000000000000)))

(declare-fun lt!19999 () Unit!1229)

(assert (=> b!45134 (= lt!19999 lt!19998)))

(declare-fun res!26494 () Bool)

(assert (=> b!45134 (= res!26494 (= (seekEntryOrOpen!0 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!19280 mask!853) (Found!213 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!45134 (=> (not res!26494) (not e!28597))))

(declare-fun b!45135 () Bool)

(declare-fun call!3676 () Bool)

(assert (=> b!45135 (= e!28599 call!3676)))

(declare-fun b!45136 () Bool)

(declare-fun e!28598 () Bool)

(assert (=> b!45136 (= e!28598 e!28599)))

(declare-fun c!6040 () Bool)

(assert (=> b!45136 (= c!6040 (validKeyInArray!0 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun d!8699 () Bool)

(declare-fun res!26493 () Bool)

(assert (=> d!8699 (=> res!26493 e!28598)))

(assert (=> d!8699 (= res!26493 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1620 lt!19280)))))

(assert (=> d!8699 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!19280 mask!853) e!28598)))

(declare-fun bm!3673 () Bool)

(assert (=> bm!3673 (= call!3676 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!19280 mask!853))))

(declare-fun b!45137 () Bool)

(assert (=> b!45137 (= e!28597 call!3676)))

(assert (= (and d!8699 (not res!26493)) b!45136))

(assert (= (and b!45136 c!6040) b!45134))

(assert (= (and b!45136 (not c!6040)) b!45135))

(assert (= (and b!45134 res!26494) b!45137))

(assert (= (or b!45137 b!45135) bm!3673))

(assert (=> b!45134 m!39475))

(declare-fun m!39485 () Bool)

(assert (=> b!45134 m!39485))

(declare-fun m!39487 () Bool)

(assert (=> b!45134 m!39487))

(assert (=> b!45134 m!39475))

(declare-fun m!39489 () Bool)

(assert (=> b!45134 m!39489))

(assert (=> b!45136 m!39475))

(assert (=> b!45136 m!39475))

(declare-fun m!39491 () Bool)

(assert (=> b!45136 m!39491))

(declare-fun m!39493 () Bool)

(assert (=> bm!3673 m!39493))

(assert (=> bm!3656 d!8699))

(declare-fun d!8701 () Bool)

(assert (=> d!8701 (= (validKeyInArray!0 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!44753 d!8701))

(declare-fun d!8703 () Bool)

(declare-fun lt!20000 () Bool)

(assert (=> d!8703 (= lt!20000 (set.member (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) (content!42 Nil!1222)))))

(declare-fun e!28601 () Bool)

(assert (=> d!8703 (= lt!20000 e!28601)))

(declare-fun res!26495 () Bool)

(assert (=> d!8703 (=> (not res!26495) (not e!28601))))

(assert (=> d!8703 (= res!26495 (is-Cons!1221 Nil!1222))))

(assert (=> d!8703 (= (contains!577 Nil!1222 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)) lt!20000)))

(declare-fun b!45138 () Bool)

(declare-fun e!28600 () Bool)

(assert (=> b!45138 (= e!28601 e!28600)))

(declare-fun res!26496 () Bool)

(assert (=> b!45138 (=> res!26496 e!28600)))

(assert (=> b!45138 (= res!26496 (= (h!1798 Nil!1222) (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(declare-fun b!45139 () Bool)

(assert (=> b!45139 (= e!28600 (contains!577 (t!4248 Nil!1222) (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(assert (= (and d!8703 res!26495) b!45138))

(assert (= (and b!45138 (not res!26496)) b!45139))

(assert (=> d!8703 m!38691))

(assert (=> d!8703 m!38707))

(declare-fun m!39509 () Bool)

(assert (=> d!8703 m!39509))

(assert (=> b!45139 m!38707))

(declare-fun m!39511 () Bool)

(assert (=> b!45139 m!39511))

(assert (=> b!44752 d!8703))

(declare-fun d!8705 () Bool)

(declare-fun lt!20001 () Bool)

(assert (=> d!8705 (= lt!20001 (set.member (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (content!42 (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222))))))

(declare-fun e!28603 () Bool)

(assert (=> d!8705 (= lt!20001 e!28603)))

(declare-fun res!26497 () Bool)

(assert (=> d!8705 (=> (not res!26497) (not e!28603))))

(assert (=> d!8705 (= res!26497 (is-Cons!1221 (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222)))))

(assert (=> d!8705 (= (contains!577 (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222) (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!20001)))

(declare-fun b!45140 () Bool)

(declare-fun e!28602 () Bool)

(assert (=> b!45140 (= e!28603 e!28602)))

(declare-fun res!26498 () Bool)

(assert (=> b!45140 (=> res!26498 e!28602)))

(assert (=> b!45140 (= res!26498 (= (h!1798 (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222)) (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!45141 () Bool)

(assert (=> b!45141 (= e!28602 (contains!577 (t!4248 (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222)) (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!8705 res!26497) b!45140))

(assert (= (and b!45140 (not res!26498)) b!45141))

(declare-fun m!39519 () Bool)

(assert (=> d!8705 m!39519))

(assert (=> d!8705 m!38683))

(declare-fun m!39521 () Bool)

(assert (=> d!8705 m!39521))

(assert (=> b!45141 m!38683))

(declare-fun m!39523 () Bool)

(assert (=> b!45141 m!39523))

(assert (=> b!44533 d!8705))

(declare-fun d!8709 () Bool)

(assert (=> d!8709 (= (size!1639 lt!19281) (bvadd (_size!243 lt!19281) (bvsdiv (bvadd (extraKeys!1787 lt!19281) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!44421 d!8709))

(declare-fun b!45146 () Bool)

(declare-fun e!28609 () Bool)

(declare-fun call!3677 () Bool)

(assert (=> b!45146 (= e!28609 call!3677)))

(declare-fun d!8713 () Bool)

(declare-fun res!26504 () Bool)

(declare-fun e!28607 () Bool)

(assert (=> d!8713 (=> res!26504 e!28607)))

(assert (=> d!8713 (= res!26504 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1620 lt!19280)))))

(assert (=> d!8713 (= (arrayNoDuplicates!0 lt!19280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5863 (Cons!1221 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222)) (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222))) e!28607)))

(declare-fun b!45147 () Bool)

(declare-fun e!28606 () Bool)

(assert (=> b!45147 (= e!28607 e!28606)))

(declare-fun res!26503 () Bool)

(assert (=> b!45147 (=> (not res!26503) (not e!28606))))

(declare-fun e!28608 () Bool)

(assert (=> b!45147 (= res!26503 (not e!28608))))

(declare-fun res!26505 () Bool)

(assert (=> b!45147 (=> (not res!26505) (not e!28608))))

(assert (=> b!45147 (= res!26505 (validKeyInArray!0 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!45148 () Bool)

(assert (=> b!45148 (= e!28609 call!3677)))

(declare-fun bm!3674 () Bool)

(declare-fun c!6041 () Bool)

(assert (=> bm!3674 (= call!3677 (arrayNoDuplicates!0 lt!19280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!6041 (Cons!1221 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!5863 (Cons!1221 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222)) (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222))) (ite c!5863 (Cons!1221 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222)) (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222)))))))

(declare-fun b!45149 () Bool)

(assert (=> b!45149 (= e!28608 (contains!577 (ite c!5863 (Cons!1221 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222)) (ite c!5770 (Cons!1221 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) Nil!1222) Nil!1222)) (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!45150 () Bool)

(assert (=> b!45150 (= e!28606 e!28609)))

(assert (=> b!45150 (= c!6041 (validKeyInArray!0 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (= (and d!8713 (not res!26504)) b!45147))

(assert (= (and b!45147 res!26505) b!45149))

(assert (= (and b!45147 res!26503) b!45150))

(assert (= (and b!45150 c!6041) b!45146))

(assert (= (and b!45150 (not c!6041)) b!45148))

(assert (= (or b!45146 b!45148) bm!3674))

(assert (=> b!45147 m!39475))

(assert (=> b!45147 m!39475))

(assert (=> b!45147 m!39491))

(assert (=> bm!3674 m!39475))

(declare-fun m!39559 () Bool)

(assert (=> bm!3674 m!39559))

(assert (=> b!45149 m!39475))

(assert (=> b!45149 m!39475))

(declare-fun m!39563 () Bool)

(assert (=> b!45149 m!39563))

(assert (=> b!45150 m!39475))

(assert (=> b!45150 m!39475))

(assert (=> b!45150 m!39491))

(assert (=> bm!3587 d!8713))

(declare-fun d!8723 () Bool)

(assert (=> d!8723 (= (apply!63 lt!19695 #b1000000000000000000000000000000000000000000000000000000000000000) (get!808 (getValueByKey!107 (toList!625 lt!19695) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!2060 () Bool)

(assert (= bs!2060 d!8723))

(assert (=> bs!2060 m!39025))

(assert (=> bs!2060 m!39025))

(declare-fun m!39565 () Bool)

(assert (=> bs!2060 m!39565))

(assert (=> b!44739 d!8723))

(assert (=> b!44750 d!8701))

(declare-fun b!45210 () Bool)

(declare-fun e!28646 () SeekEntryResult!213)

(assert (=> b!45210 (= e!28646 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000 mask!853) (select (arr!1417 lt!19280) #b00000000000000000000000000000000) lt!19280 mask!853))))

(declare-fun b!45211 () Bool)

(declare-fun lt!20040 () SeekEntryResult!213)

(assert (=> b!45211 (and (bvsge (index!2976 lt!20040) #b00000000000000000000000000000000) (bvslt (index!2976 lt!20040) (size!1620 lt!19280)))))

(declare-fun e!28648 () Bool)

(assert (=> b!45211 (= e!28648 (= (select (arr!1417 lt!19280) (index!2976 lt!20040)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!45212 () Bool)

(assert (=> b!45212 (and (bvsge (index!2976 lt!20040) #b00000000000000000000000000000000) (bvslt (index!2976 lt!20040) (size!1620 lt!19280)))))

(declare-fun res!26527 () Bool)

(assert (=> b!45212 (= res!26527 (= (select (arr!1417 lt!19280) (index!2976 lt!20040)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!45212 (=> res!26527 e!28648)))

(declare-fun b!45213 () Bool)

(declare-fun e!28650 () SeekEntryResult!213)

(assert (=> b!45213 (= e!28650 (Intermediate!213 true (toIndex!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!45214 () Bool)

(assert (=> b!45214 (and (bvsge (index!2976 lt!20040) #b00000000000000000000000000000000) (bvslt (index!2976 lt!20040) (size!1620 lt!19280)))))

(declare-fun res!26528 () Bool)

(assert (=> b!45214 (= res!26528 (= (select (arr!1417 lt!19280) (index!2976 lt!20040)) (select (arr!1417 lt!19280) #b00000000000000000000000000000000)))))

(assert (=> b!45214 (=> res!26528 e!28648)))

(declare-fun e!28649 () Bool)

(assert (=> b!45214 (= e!28649 e!28648)))

(declare-fun b!45216 () Bool)

(assert (=> b!45216 (= e!28646 (Intermediate!213 false (toIndex!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!45217 () Bool)

(assert (=> b!45217 (= e!28650 e!28646)))

(declare-fun c!6062 () Bool)

(declare-fun lt!20039 () (_ BitVec 64))

(assert (=> b!45217 (= c!6062 (or (= lt!20039 (select (arr!1417 lt!19280) #b00000000000000000000000000000000)) (= (bvadd lt!20039 lt!20039) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!45218 () Bool)

(declare-fun e!28647 () Bool)

(assert (=> b!45218 (= e!28647 e!28649)))

(declare-fun res!26529 () Bool)

(assert (=> b!45218 (= res!26529 (and (is-Intermediate!213 lt!20040) (not (undefined!1025 lt!20040)) (bvslt (x!8367 lt!20040) #b01111111111111111111111111111110) (bvsge (x!8367 lt!20040) #b00000000000000000000000000000000) (bvsge (x!8367 lt!20040) #b00000000000000000000000000000000)))))

(assert (=> b!45218 (=> (not res!26529) (not e!28649))))

(declare-fun d!8727 () Bool)

(assert (=> d!8727 e!28647))

(declare-fun c!6061 () Bool)

(assert (=> d!8727 (= c!6061 (and (is-Intermediate!213 lt!20040) (undefined!1025 lt!20040)))))

(assert (=> d!8727 (= lt!20040 e!28650)))

(declare-fun c!6063 () Bool)

(assert (=> d!8727 (= c!6063 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!8727 (= lt!20039 (select (arr!1417 lt!19280) (toIndex!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) mask!853)))))

(assert (=> d!8727 (validMask!0 mask!853)))

(assert (=> d!8727 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) mask!853) (select (arr!1417 lt!19280) #b00000000000000000000000000000000) lt!19280 mask!853) lt!20040)))

(declare-fun b!45215 () Bool)

(assert (=> b!45215 (= e!28647 (bvsge (x!8367 lt!20040) #b01111111111111111111111111111110))))

(assert (= (and d!8727 c!6063) b!45213))

(assert (= (and d!8727 (not c!6063)) b!45217))

(assert (= (and b!45217 c!6062) b!45216))

(assert (= (and b!45217 (not c!6062)) b!45210))

(assert (= (and d!8727 c!6061) b!45215))

(assert (= (and d!8727 (not c!6061)) b!45218))

(assert (= (and b!45218 res!26529) b!45214))

(assert (= (and b!45214 (not res!26528)) b!45212))

(assert (= (and b!45212 (not res!26527)) b!45211))

(assert (=> b!45210 m!38671))

(declare-fun m!39661 () Bool)

(assert (=> b!45210 m!39661))

(assert (=> b!45210 m!39661))

(assert (=> b!45210 m!38431))

(declare-fun m!39663 () Bool)

(assert (=> b!45210 m!39663))

(declare-fun m!39665 () Bool)

(assert (=> b!45214 m!39665))

(assert (=> b!45211 m!39665))

(assert (=> b!45212 m!39665))

(assert (=> d!8727 m!38671))

(declare-fun m!39667 () Bool)

(assert (=> d!8727 m!39667))

(assert (=> d!8727 m!38345))

(assert (=> d!8433 d!8727))

(declare-fun d!8763 () Bool)

(declare-fun lt!20046 () (_ BitVec 32))

(declare-fun lt!20045 () (_ BitVec 32))

(assert (=> d!8763 (= lt!20046 (bvmul (bvxor lt!20045 (bvlshr lt!20045 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!8763 (= lt!20045 ((_ extract 31 0) (bvand (bvxor (select (arr!1417 lt!19280) #b00000000000000000000000000000000) (bvlshr (select (arr!1417 lt!19280) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!8763 (and (bvsge mask!853 #b00000000000000000000000000000000) (let ((res!26530 (let ((h!1804 ((_ extract 31 0) (bvand (bvxor (select (arr!1417 lt!19280) #b00000000000000000000000000000000) (bvlshr (select (arr!1417 lt!19280) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!8395 (bvmul (bvxor h!1804 (bvlshr h!1804 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!8395 (bvlshr x!8395 #b00000000000000000000000000001101)) mask!853))))) (and (bvslt res!26530 (bvadd mask!853 #b00000000000000000000000000000001)) (bvsge res!26530 #b00000000000000000000000000000000))))))

(assert (=> d!8763 (= (toIndex!0 (select (arr!1417 lt!19280) #b00000000000000000000000000000000) mask!853) (bvand (bvxor lt!20046 (bvlshr lt!20046 #b00000000000000000000000000001101)) mask!853))))

(assert (=> d!8433 d!8763))

(assert (=> d!8433 d!8351))

(assert (=> b!44742 d!8701))

(assert (=> b!44529 d!8675))

(assert (=> b!44534 d!8675))

(assert (=> d!8467 d!8337))

(assert (=> b!44422 d!8709))

(assert (=> d!8411 d!8691))

(declare-fun d!8765 () Bool)

(assert (=> d!8765 (arrayContainsKey!0 (_keys!3463 lt!19281) lt!19503 #b00000000000000000000000000000000)))

(declare-fun lt!20047 () Unit!1229)

(assert (=> d!8765 (= lt!20047 (choose!13 (_keys!3463 lt!19281) lt!19503 #b00000000000000000000000000000000))))

(assert (=> d!8765 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!8765 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3463 lt!19281) lt!19503 #b00000000000000000000000000000000) lt!20047)))

(declare-fun bs!2064 () Bool)

(assert (= bs!2064 d!8765))

(assert (=> bs!2064 m!38713))

(declare-fun m!39669 () Bool)

(assert (=> bs!2064 m!39669))

(assert (=> b!44539 d!8765))

(declare-fun d!8767 () Bool)

(declare-fun res!26531 () Bool)

(declare-fun e!28655 () Bool)

(assert (=> d!8767 (=> res!26531 e!28655)))

(assert (=> d!8767 (= res!26531 (= (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) lt!19503))))

(assert (=> d!8767 (= (arrayContainsKey!0 (_keys!3463 lt!19281) lt!19503 #b00000000000000000000000000000000) e!28655)))

(declare-fun b!45227 () Bool)

(declare-fun e!28656 () Bool)

(assert (=> b!45227 (= e!28655 e!28656)))

(declare-fun res!26532 () Bool)

(assert (=> b!45227 (=> (not res!26532) (not e!28656))))

(assert (=> b!45227 (= res!26532 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1620 (_keys!3463 lt!19281))))))

(declare-fun b!45228 () Bool)

(assert (=> b!45228 (= e!28656 (arrayContainsKey!0 (_keys!3463 lt!19281) lt!19503 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8767 (not res!26531)) b!45227))

(assert (= (and b!45227 res!26532) b!45228))

(assert (=> d!8767 m!38707))

(declare-fun m!39671 () Bool)

(assert (=> b!45228 m!39671))

(assert (=> b!44539 d!8767))

(declare-fun b!45229 () Bool)

(declare-fun e!28659 () SeekEntryResult!213)

(declare-fun lt!20052 () SeekEntryResult!213)

(assert (=> b!45229 (= e!28659 (Found!213 (index!2976 lt!20052)))))

(declare-fun b!45230 () Bool)

(declare-fun e!28658 () SeekEntryResult!213)

(assert (=> b!45230 (= e!28658 (seekKeyOrZeroReturnVacant!0 (x!8367 lt!20052) (index!2976 lt!20052) (index!2976 lt!20052) (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) (_keys!3463 lt!19281) (mask!5473 lt!19281)))))

(declare-fun d!8769 () Bool)

(declare-fun lt!20054 () SeekEntryResult!213)

(assert (=> d!8769 (and (or (is-Undefined!213 lt!20054) (not (is-Found!213 lt!20054)) (and (bvsge (index!2975 lt!20054) #b00000000000000000000000000000000) (bvslt (index!2975 lt!20054) (size!1620 (_keys!3463 lt!19281))))) (or (is-Undefined!213 lt!20054) (is-Found!213 lt!20054) (not (is-MissingZero!213 lt!20054)) (and (bvsge (index!2974 lt!20054) #b00000000000000000000000000000000) (bvslt (index!2974 lt!20054) (size!1620 (_keys!3463 lt!19281))))) (or (is-Undefined!213 lt!20054) (is-Found!213 lt!20054) (is-MissingZero!213 lt!20054) (not (is-MissingVacant!213 lt!20054)) (and (bvsge (index!2977 lt!20054) #b00000000000000000000000000000000) (bvslt (index!2977 lt!20054) (size!1620 (_keys!3463 lt!19281))))) (or (is-Undefined!213 lt!20054) (ite (is-Found!213 lt!20054) (= (select (arr!1417 (_keys!3463 lt!19281)) (index!2975 lt!20054)) (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)) (ite (is-MissingZero!213 lt!20054) (= (select (arr!1417 (_keys!3463 lt!19281)) (index!2974 lt!20054)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!213 lt!20054) (= (select (arr!1417 (_keys!3463 lt!19281)) (index!2977 lt!20054)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!28657 () SeekEntryResult!213)

(assert (=> d!8769 (= lt!20054 e!28657)))

(declare-fun c!6068 () Bool)

(assert (=> d!8769 (= c!6068 (and (is-Intermediate!213 lt!20052) (undefined!1025 lt!20052)))))

(assert (=> d!8769 (= lt!20052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) (mask!5473 lt!19281)) (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) (_keys!3463 lt!19281) (mask!5473 lt!19281)))))

(assert (=> d!8769 (validMask!0 (mask!5473 lt!19281))))

(assert (=> d!8769 (= (seekEntryOrOpen!0 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000) (_keys!3463 lt!19281) (mask!5473 lt!19281)) lt!20054)))

(declare-fun b!45231 () Bool)

(assert (=> b!45231 (= e!28657 e!28659)))

(declare-fun lt!20053 () (_ BitVec 64))

(assert (=> b!45231 (= lt!20053 (select (arr!1417 (_keys!3463 lt!19281)) (index!2976 lt!20052)))))

(declare-fun c!6070 () Bool)

(assert (=> b!45231 (= c!6070 (= lt!20053 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)))))

(declare-fun b!45232 () Bool)

(assert (=> b!45232 (= e!28657 Undefined!213)))

(declare-fun b!45233 () Bool)

(assert (=> b!45233 (= e!28658 (MissingZero!213 (index!2976 lt!20052)))))

(declare-fun b!45234 () Bool)

(declare-fun c!6069 () Bool)

(assert (=> b!45234 (= c!6069 (= lt!20053 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!45234 (= e!28659 e!28658)))

(assert (= (and d!8769 c!6068) b!45232))

(assert (= (and d!8769 (not c!6068)) b!45231))

(assert (= (and b!45231 c!6070) b!45229))

(assert (= (and b!45231 (not c!6070)) b!45234))

(assert (= (and b!45234 c!6069) b!45233))

(assert (= (and b!45234 (not c!6069)) b!45230))

(assert (=> b!45230 m!38707))

(declare-fun m!39673 () Bool)

(assert (=> b!45230 m!39673))

(assert (=> d!8769 m!38707))

(declare-fun m!39675 () Bool)

(assert (=> d!8769 m!39675))

(assert (=> d!8769 m!38607))

(declare-fun m!39677 () Bool)

(assert (=> d!8769 m!39677))

(declare-fun m!39679 () Bool)

(assert (=> d!8769 m!39679))

(declare-fun m!39681 () Bool)

(assert (=> d!8769 m!39681))

(assert (=> d!8769 m!39675))

(assert (=> d!8769 m!38707))

(declare-fun m!39683 () Bool)

(assert (=> d!8769 m!39683))

(declare-fun m!39685 () Bool)

(assert (=> b!45231 m!39685))

(assert (=> b!44539 d!8769))

(assert (=> b!44736 d!8701))

(assert (=> d!8423 d!8431))

(declare-fun d!8771 () Bool)

(assert (=> d!8771 (arrayContainsKey!0 lt!19280 lt!19382 #b00000000000000000000000000000000)))

(assert (=> d!8771 true))

(declare-fun _$60!353 () Unit!1229)

(assert (=> d!8771 (= (choose!13 lt!19280 lt!19382 #b00000000000000000000000000000000) _$60!353)))

(declare-fun bs!2065 () Bool)

(assert (= bs!2065 d!8771))

(assert (=> bs!2065 m!38435))

(assert (=> d!8423 d!8771))

(declare-fun bm!3678 () Bool)

(declare-fun call!3681 () (_ BitVec 32))

(assert (=> bm!3678 (= call!3681 (arrayCountValidKeys!0 (_keys!3463 lt!19281) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1620 (_keys!3463 lt!19281))))))

(declare-fun b!45245 () Bool)

(declare-fun e!28666 () (_ BitVec 32))

(assert (=> b!45245 (= e!28666 (bvadd #b00000000000000000000000000000001 call!3681))))

(declare-fun d!8773 () Bool)

(declare-fun lt!20055 () (_ BitVec 32))

(assert (=> d!8773 (and (bvsge lt!20055 #b00000000000000000000000000000000) (bvsle lt!20055 (bvsub (size!1620 (_keys!3463 lt!19281)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!28667 () (_ BitVec 32))

(assert (=> d!8773 (= lt!20055 e!28667)))

(declare-fun c!6074 () Bool)

(assert (=> d!8773 (= c!6074 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1620 (_keys!3463 lt!19281))))))

(assert (=> d!8773 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1620 (_keys!3463 lt!19281))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1620 (_keys!3463 lt!19281)) (size!1620 (_keys!3463 lt!19281))))))

(assert (=> d!8773 (= (arrayCountValidKeys!0 (_keys!3463 lt!19281) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1620 (_keys!3463 lt!19281))) lt!20055)))

(declare-fun b!45246 () Bool)

(assert (=> b!45246 (= e!28667 #b00000000000000000000000000000000)))

(declare-fun b!45247 () Bool)

(assert (=> b!45247 (= e!28666 call!3681)))

(declare-fun b!45248 () Bool)

(assert (=> b!45248 (= e!28667 e!28666)))

(declare-fun c!6073 () Bool)

(assert (=> b!45248 (= c!6073 (validKeyInArray!0 (select (arr!1417 (_keys!3463 lt!19281)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!8773 c!6074) b!45246))

(assert (= (and d!8773 (not c!6074)) b!45248))

(assert (= (and b!45248 c!6073) b!45245))

(assert (= (and b!45248 (not c!6073)) b!45247))

(assert (= (or b!45245 b!45247) bm!3678))

(declare-fun m!39687 () Bool)

(assert (=> bm!3678 m!39687))

(assert (=> b!45248 m!39443))

(assert (=> b!45248 m!39443))

(assert (=> b!45248 m!39445))

(assert (=> bm!3588 d!8773))

(assert (=> d!8461 d!8325))

(assert (=> b!44524 d!8361))

(assert (=> bm!3651 d!8547))

(declare-fun b!45249 () Bool)

(declare-fun e!28670 () Bool)

(declare-fun e!28668 () Bool)

(assert (=> b!45249 (= e!28670 e!28668)))

(declare-fun lt!20056 () (_ BitVec 64))

(assert (=> b!45249 (= lt!20056 (select (arr!1417 (_keys!3463 lt!19281)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!20057 () Unit!1229)

(assert (=> b!45249 (= lt!20057 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3463 lt!19281) lt!20056 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!45249 (arrayContainsKey!0 (_keys!3463 lt!19281) lt!20056 #b00000000000000000000000000000000)))

(declare-fun lt!20058 () Unit!1229)

(assert (=> b!45249 (= lt!20058 lt!20057)))

(declare-fun res!26540 () Bool)

(assert (=> b!45249 (= res!26540 (= (seekEntryOrOpen!0 (select (arr!1417 (_keys!3463 lt!19281)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3463 lt!19281) (mask!5473 lt!19281)) (Found!213 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!45249 (=> (not res!26540) (not e!28668))))

(declare-fun b!45250 () Bool)

(declare-fun call!3682 () Bool)

(assert (=> b!45250 (= e!28670 call!3682)))

(declare-fun b!45251 () Bool)

(declare-fun e!28669 () Bool)

(assert (=> b!45251 (= e!28669 e!28670)))

(declare-fun c!6075 () Bool)

(assert (=> b!45251 (= c!6075 (validKeyInArray!0 (select (arr!1417 (_keys!3463 lt!19281)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!8775 () Bool)

(declare-fun res!26539 () Bool)

(assert (=> d!8775 (=> res!26539 e!28669)))

(assert (=> d!8775 (= res!26539 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1620 (_keys!3463 lt!19281))))))

(assert (=> d!8775 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3463 lt!19281) (mask!5473 lt!19281)) e!28669)))

(declare-fun bm!3679 () Bool)

(assert (=> bm!3679 (= call!3682 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3463 lt!19281) (mask!5473 lt!19281)))))

(declare-fun b!45252 () Bool)

(assert (=> b!45252 (= e!28668 call!3682)))

(assert (= (and d!8775 (not res!26539)) b!45251))

(assert (= (and b!45251 c!6075) b!45249))

(assert (= (and b!45251 (not c!6075)) b!45250))

(assert (= (and b!45249 res!26540) b!45252))

(assert (= (or b!45252 b!45250) bm!3679))

(assert (=> b!45249 m!39443))

(declare-fun m!39689 () Bool)

(assert (=> b!45249 m!39689))

(declare-fun m!39691 () Bool)

(assert (=> b!45249 m!39691))

(assert (=> b!45249 m!39443))

(declare-fun m!39693 () Bool)

(assert (=> b!45249 m!39693))

(assert (=> b!45251 m!39443))

(assert (=> b!45251 m!39443))

(assert (=> b!45251 m!39445))

(declare-fun m!39695 () Bool)

(assert (=> bm!3679 m!39695))

(assert (=> bm!3589 d!8775))

(declare-fun bm!3680 () Bool)

(declare-fun call!3683 () (_ BitVec 32))

(assert (=> bm!3680 (= call!3683 (arrayCountValidKeys!0 lt!19280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!45253 () Bool)

(declare-fun e!28671 () (_ BitVec 32))

(assert (=> b!45253 (= e!28671 (bvadd #b00000000000000000000000000000001 call!3683))))

(declare-fun d!8777 () Bool)

(declare-fun lt!20059 () (_ BitVec 32))

(assert (=> d!8777 (and (bvsge lt!20059 #b00000000000000000000000000000000) (bvsle lt!20059 (bvsub (size!1620 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun e!28672 () (_ BitVec 32))

(assert (=> d!8777 (= lt!20059 e!28672)))

(declare-fun c!6077 () Bool)

(assert (=> d!8777 (= c!6077 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8777 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1620 lt!19280)))))

(assert (=> d!8777 (= (arrayCountValidKeys!0 lt!19280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!20059)))

(declare-fun b!45254 () Bool)

(assert (=> b!45254 (= e!28672 #b00000000000000000000000000000000)))

(declare-fun b!45255 () Bool)

(assert (=> b!45255 (= e!28671 call!3683)))

(declare-fun b!45256 () Bool)

(assert (=> b!45256 (= e!28672 e!28671)))

(declare-fun c!6076 () Bool)

(assert (=> b!45256 (= c!6076 (validKeyInArray!0 (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (= (and d!8777 c!6077) b!45254))

(assert (= (and d!8777 (not c!6077)) b!45256))

(assert (= (and b!45256 c!6076) b!45253))

(assert (= (and b!45256 (not c!6076)) b!45255))

(assert (= (or b!45253 b!45255) bm!3680))

(declare-fun m!39697 () Bool)

(assert (=> bm!3680 m!39697))

(assert (=> b!45256 m!39475))

(assert (=> b!45256 m!39475))

(assert (=> b!45256 m!39491))

(assert (=> bm!3586 d!8777))

(declare-fun d!8779 () Bool)

(declare-fun res!26544 () Bool)

(declare-fun e!28678 () Bool)

(assert (=> d!8779 (=> res!26544 e!28678)))

(assert (=> d!8779 (= res!26544 (= (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19382))))

(assert (=> d!8779 (= (arrayContainsKey!0 lt!19280 lt!19382 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!28678)))

(declare-fun b!45266 () Bool)

(declare-fun e!28679 () Bool)

(assert (=> b!45266 (= e!28678 e!28679)))

(declare-fun res!26545 () Bool)

(assert (=> b!45266 (=> (not res!26545) (not e!28679))))

(assert (=> b!45266 (= res!26545 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1620 lt!19280)))))

(declare-fun b!45267 () Bool)

(assert (=> b!45267 (= e!28679 (arrayContainsKey!0 lt!19280 lt!19382 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8779 (not res!26544)) b!45266))

(assert (= (and b!45266 res!26545) b!45267))

(assert (=> d!8779 m!38683))

(declare-fun m!39699 () Bool)

(assert (=> b!45267 m!39699))

(assert (=> b!44433 d!8779))

(assert (=> b!44531 d!8675))

(declare-fun d!8781 () Bool)

(declare-fun res!26546 () Bool)

(declare-fun e!28680 () Bool)

(assert (=> d!8781 (=> res!26546 e!28680)))

(assert (=> d!8781 (= res!26546 (= (select (arr!1417 lt!19280) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (_1!829 lt!19282)))))

(assert (=> d!8781 (= (arrayContainsKey!0 lt!19280 (_1!829 lt!19282) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) e!28680)))

(declare-fun b!45268 () Bool)

(declare-fun e!28681 () Bool)

(assert (=> b!45268 (= e!28680 e!28681)))

(declare-fun res!26547 () Bool)

(assert (=> b!45268 (=> (not res!26547) (not e!28681))))

(assert (=> b!45268 (= res!26547 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1620 lt!19280)))))

(declare-fun b!45269 () Bool)

(assert (=> b!45269 (= e!28681 (arrayContainsKey!0 lt!19280 (_1!829 lt!19282) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8781 (not res!26546)) b!45268))

(assert (= (and b!45268 res!26547) b!45269))

(assert (=> d!8781 m!39475))

(declare-fun m!39709 () Bool)

(assert (=> b!45269 m!39709))

(assert (=> b!44511 d!8781))

(assert (=> b!44538 d!8701))

(assert (=> b!44541 d!8701))

(assert (=> d!8453 d!8317))

(declare-fun d!8785 () Bool)

(assert (=> d!8785 (= (apply!63 lt!19695 (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000)) (get!808 (getValueByKey!107 (toList!625 lt!19695) (select (arr!1417 (_keys!3463 lt!19281)) #b00000000000000000000000000000000))))))

(declare-fun bs!2066 () Bool)

(assert (= bs!2066 d!8785))

(assert (=> bs!2066 m!38707))

(assert (=> bs!2066 m!39017))

(assert (=> bs!2066 m!39017))

(declare-fun m!39711 () Bool)

(assert (=> bs!2066 m!39711))

(assert (=> b!44737 d!8785))

(declare-fun d!8787 () Bool)

(declare-fun c!6083 () Bool)

(assert (=> d!8787 (= c!6083 (is-ValueCellFull!704 (select (arr!1418 (_values!1879 lt!19281)) #b00000000000000000000000000000000)))))

(declare-fun e!28684 () V!2325)

(assert (=> d!8787 (= (get!805 (select (arr!1418 (_values!1879 lt!19281)) #b00000000000000000000000000000000) (dynLambda!265 (defaultEntry!1896 lt!19281) #b0000000000000000000000000000000000000000000000000000000000000000)) e!28684)))

(declare-fun b!45274 () Bool)

(declare-fun get!813 (ValueCell!704 V!2325) V!2325)

(assert (=> b!45274 (= e!28684 (get!813 (select (arr!1418 (_values!1879 lt!19281)) #b00000000000000000000000000000000) (dynLambda!265 (defaultEntry!1896 lt!19281) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!45275 () Bool)

(declare-fun get!814 (ValueCell!704 V!2325) V!2325)

(assert (=> b!45275 (= e!28684 (get!814 (select (arr!1418 (_values!1879 lt!19281)) #b00000000000000000000000000000000) (dynLambda!265 (defaultEntry!1896 lt!19281) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!8787 c!6083) b!45274))

(assert (= (and d!8787 (not c!6083)) b!45275))

(assert (=> b!45274 m!38881))

(assert (=> b!45274 m!38883))

(declare-fun m!39713 () Bool)

(assert (=> b!45274 m!39713))

(assert (=> b!45275 m!38881))

(assert (=> b!45275 m!38883))

(declare-fun m!39715 () Bool)

(assert (=> b!45275 m!39715))

(assert (=> b!44737 d!8787))

(declare-fun b_lambda!2361 () Bool)

(assert (= b_lambda!2345 (or (and start!6742 b_free!1513 (= defaultEntry!470 (defaultEntry!1896 lt!19281))) b_lambda!2361)))

(push 1)

