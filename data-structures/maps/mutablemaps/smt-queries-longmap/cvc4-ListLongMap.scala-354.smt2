; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6476 () Bool)

(assert start!6476)

(declare-fun b_free!1505 () Bool)

(declare-fun b_next!1505 () Bool)

(assert (=> start!6476 (= b_free!1505 (not b_next!1505))))

(declare-fun tp!5945 () Bool)

(declare-fun b_and!2669 () Bool)

(assert (=> start!6476 (= tp!5945 b_and!2669)))

(declare-fun b!43060 () Bool)

(declare-fun e!27291 () Bool)

(declare-fun e!27290 () Bool)

(assert (=> b!43060 (= e!27291 (not e!27290))))

(declare-fun res!25582 () Bool)

(assert (=> b!43060 (=> res!25582 e!27290)))

(declare-datatypes ((V!2313 0))(
  ( (V!2314 (val!986 Int)) )
))
(declare-datatypes ((tuple2!1630 0))(
  ( (tuple2!1631 (_1!825 (_ BitVec 64)) (_2!825 V!2313)) )
))
(declare-datatypes ((List!1216 0))(
  ( (Nil!1213) (Cons!1212 (h!1789 tuple2!1630) (t!4225 List!1216)) )
))
(declare-datatypes ((ListLongMap!1211 0))(
  ( (ListLongMap!1212 (toList!621 List!1216)) )
))
(declare-fun lt!18411 () ListLongMap!1211)

(assert (=> b!43060 (= res!25582 (= lt!18411 (ListLongMap!1212 Nil!1213)))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2931 0))(
  ( (array!2932 (arr!1409 (Array (_ BitVec 32) (_ BitVec 64))) (size!1594 (_ BitVec 32))) )
))
(declare-fun lt!18410 () array!2931)

(declare-fun lt!18406 () V!2313)

(declare-datatypes ((ValueCell!700 0))(
  ( (ValueCellFull!700 (v!2075 V!2313)) (EmptyCell!700) )
))
(declare-datatypes ((array!2933 0))(
  ( (array!2934 (arr!1410 (Array (_ BitVec 32) ValueCell!700)) (size!1595 (_ BitVec 32))) )
))
(declare-fun lt!18408 () array!2933)

(declare-datatypes ((LongMapFixedSize!380 0))(
  ( (LongMapFixedSize!381 (defaultEntry!1883 Int) (mask!5432 (_ BitVec 32)) (extraKeys!1774 (_ BitVec 32)) (zeroValue!1801 V!2313) (minValue!1801 V!2313) (_size!239 (_ BitVec 32)) (_keys!3432 array!2931) (_values!1866 array!2933) (_vacant!239 (_ BitVec 32))) )
))
(declare-fun map!837 (LongMapFixedSize!380) ListLongMap!1211)

(assert (=> b!43060 (= lt!18411 (map!837 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1217 0))(
  ( (Nil!1214) (Cons!1213 (h!1790 (_ BitVec 64)) (t!4226 List!1217)) )
))
(declare-fun arrayNoDuplicates!0 (array!2931 (_ BitVec 32) List!1217) Bool)

(assert (=> b!43060 (arrayNoDuplicates!0 lt!18410 #b00000000000000000000000000000000 Nil!1214)))

(declare-datatypes ((Unit!1203 0))(
  ( (Unit!1204) )
))
(declare-fun lt!18407 () Unit!1203)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2931 (_ BitVec 32) (_ BitVec 32) List!1217) Unit!1203)

(assert (=> b!43060 (= lt!18407 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18410 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2931 (_ BitVec 32)) Bool)

(assert (=> b!43060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18410 mask!853)))

(declare-fun lt!18409 () Unit!1203)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2931 (_ BitVec 32) (_ BitVec 32)) Unit!1203)

(assert (=> b!43060 (= lt!18409 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18410 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2931 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43060 (= (arrayCountValidKeys!0 lt!18410 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18412 () Unit!1203)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2931 (_ BitVec 32) (_ BitVec 32)) Unit!1203)

(assert (=> b!43060 (= lt!18412 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18410 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43060 (= lt!18408 (array!2934 ((as const (Array (_ BitVec 32) ValueCell!700)) EmptyCell!700) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43060 (= lt!18410 (array!2932 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!261 (Int (_ BitVec 64)) V!2313)

(assert (=> b!43060 (= lt!18406 (dynLambda!261 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!43063 () Bool)

(declare-fun contains!566 (ListLongMap!1211 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!352 (array!2931 array!2933 (_ BitVec 32) (_ BitVec 32) V!2313 V!2313 (_ BitVec 32) Int) ListLongMap!1211)

(declare-fun head!889 (List!1216) tuple2!1630)

(assert (=> b!43063 (= e!27290 (contains!566 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470) (_1!825 (head!889 (toList!621 lt!18411)))))))

(declare-fun b!43061 () Bool)

(declare-fun res!25583 () Bool)

(assert (=> b!43061 (=> res!25583 e!27290)))

(declare-fun isEmpty!282 (List!1216) Bool)

(assert (=> b!43061 (= res!25583 (isEmpty!282 (toList!621 lt!18411)))))

(declare-fun b!43062 () Bool)

(declare-fun res!25585 () Bool)

(assert (=> b!43062 (=> res!25585 e!27290)))

(assert (=> b!43062 (= res!25585 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun res!25584 () Bool)

(assert (=> start!6476 (=> (not res!25584) (not e!27291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6476 (= res!25584 (validMask!0 mask!853))))

(assert (=> start!6476 e!27291))

(assert (=> start!6476 true))

(assert (=> start!6476 tp!5945))

(assert (= (and start!6476 res!25584) b!43060))

(assert (= (and b!43060 (not res!25582)) b!43061))

(assert (= (and b!43061 (not res!25583)) b!43062))

(assert (= (and b!43062 (not res!25585)) b!43063))

(declare-fun b_lambda!2267 () Bool)

(assert (=> (not b_lambda!2267) (not b!43060)))

(declare-fun t!4224 () Bool)

(declare-fun tb!995 () Bool)

(assert (=> (and start!6476 (= defaultEntry!470 defaultEntry!470) t!4224) tb!995))

(declare-fun result!1733 () Bool)

(declare-fun tp_is_empty!1895 () Bool)

(assert (=> tb!995 (= result!1733 tp_is_empty!1895)))

(assert (=> b!43060 t!4224))

(declare-fun b_and!2671 () Bool)

(assert (= b_and!2669 (and (=> t!4224 result!1733) b_and!2671)))

(declare-fun m!36999 () Bool)

(assert (=> b!43060 m!36999))

(declare-fun m!37001 () Bool)

(assert (=> b!43060 m!37001))

(declare-fun m!37003 () Bool)

(assert (=> b!43060 m!37003))

(declare-fun m!37005 () Bool)

(assert (=> b!43060 m!37005))

(declare-fun m!37007 () Bool)

(assert (=> b!43060 m!37007))

(declare-fun m!37009 () Bool)

(assert (=> b!43060 m!37009))

(declare-fun m!37011 () Bool)

(assert (=> b!43060 m!37011))

(declare-fun m!37013 () Bool)

(assert (=> b!43060 m!37013))

(declare-fun m!37015 () Bool)

(assert (=> b!43063 m!37015))

(declare-fun m!37017 () Bool)

(assert (=> b!43063 m!37017))

(assert (=> b!43063 m!37015))

(declare-fun m!37019 () Bool)

(assert (=> b!43063 m!37019))

(declare-fun m!37021 () Bool)

(assert (=> b!43061 m!37021))

(declare-fun m!37023 () Bool)

(assert (=> start!6476 m!37023))

(push 1)

(assert (not b_lambda!2267))

(assert b_and!2671)

(assert (not b!43061))

(assert (not start!6476))

(assert (not b!43063))

(assert (not b!43060))

(assert (not b_next!1505))

(assert tp_is_empty!1895)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2671)

(assert (not b_next!1505))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2271 () Bool)

(assert (= b_lambda!2267 (or (and start!6476 b_free!1505) b_lambda!2271)))

(push 1)

(assert b_and!2671)

(assert (not b_lambda!2271))

(assert (not b!43061))

(assert (not start!6476))

(assert (not b!43063))

(assert (not b!43060))

(assert (not b_next!1505))

(assert tp_is_empty!1895)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2671)

(assert (not b_next!1505))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!43086 () Bool)

(declare-fun e!27302 () (_ BitVec 32))

(declare-fun call!3401 () (_ BitVec 32))

(assert (=> b!43086 (= e!27302 call!3401)))

(declare-fun b!43088 () Bool)

(declare-fun e!27303 () (_ BitVec 32))

(assert (=> b!43088 (= e!27303 e!27302)))

(declare-fun c!5473 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!43088 (= c!5473 (validKeyInArray!0 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)))))

(declare-fun b!43089 () Bool)

(assert (=> b!43089 (= e!27303 #b00000000000000000000000000000000)))

(declare-fun bm!3398 () Bool)

(assert (=> bm!3398 (= call!3401 (arrayCountValidKeys!0 lt!18410 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun d!7905 () Bool)

(declare-fun lt!18418 () (_ BitVec 32))

(assert (=> d!7905 (and (bvsge lt!18418 #b00000000000000000000000000000000) (bvsle lt!18418 (bvsub (size!1594 lt!18410) #b00000000000000000000000000000000)))))

(assert (=> d!7905 (= lt!18418 e!27303)))

(declare-fun c!5472 () Bool)

(assert (=> d!7905 (= c!5472 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7905 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1594 lt!18410)))))

(assert (=> d!7905 (= (arrayCountValidKeys!0 lt!18410 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!18418)))

(declare-fun b!43087 () Bool)

(assert (=> b!43087 (= e!27302 (bvadd #b00000000000000000000000000000001 call!3401))))

(assert (= (and d!7905 c!5472) b!43089))

(assert (= (and d!7905 (not c!5472)) b!43088))

(assert (= (and b!43088 c!5473) b!43087))

(assert (= (and b!43088 (not c!5473)) b!43086))

(assert (= (or b!43087 b!43086) bm!3398))

(declare-fun m!37026 () Bool)

(assert (=> b!43088 m!37026))

(assert (=> b!43088 m!37026))

(declare-fun m!37029 () Bool)

(assert (=> b!43088 m!37029))

(declare-fun m!37033 () Bool)

(assert (=> bm!3398 m!37033))

(assert (=> b!43060 d!7905))

(declare-fun b!43116 () Bool)

(declare-fun e!27326 () Bool)

(declare-fun call!3404 () Bool)

(assert (=> b!43116 (= e!27326 call!3404)))

(declare-fun b!43117 () Bool)

(declare-fun e!27327 () Bool)

(declare-fun e!27325 () Bool)

(assert (=> b!43117 (= e!27327 e!27325)))

(declare-fun res!25602 () Bool)

(assert (=> b!43117 (=> (not res!25602) (not e!27325))))

(declare-fun e!27324 () Bool)

(assert (=> b!43117 (= res!25602 (not e!27324))))

(declare-fun res!25600 () Bool)

(assert (=> b!43117 (=> (not res!25600) (not e!27324))))

(assert (=> b!43117 (= res!25600 (validKeyInArray!0 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)))))

(declare-fun b!43118 () Bool)

(assert (=> b!43118 (= e!27326 call!3404)))

(declare-fun b!43119 () Bool)

(assert (=> b!43119 (= e!27325 e!27326)))

(declare-fun c!5480 () Bool)

(assert (=> b!43119 (= c!5480 (validKeyInArray!0 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)))))

(declare-fun b!43120 () Bool)

(declare-fun contains!567 (List!1217 (_ BitVec 64)) Bool)

(assert (=> b!43120 (= e!27324 (contains!567 Nil!1214 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)))))

(declare-fun d!7909 () Bool)

(declare-fun res!25601 () Bool)

(assert (=> d!7909 (=> res!25601 e!27327)))

(assert (=> d!7909 (= res!25601 (bvsge #b00000000000000000000000000000000 (size!1594 lt!18410)))))

(assert (=> d!7909 (= (arrayNoDuplicates!0 lt!18410 #b00000000000000000000000000000000 Nil!1214) e!27327)))

(declare-fun bm!3401 () Bool)

(assert (=> bm!3401 (= call!3404 (arrayNoDuplicates!0 lt!18410 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5480 (Cons!1213 (select (arr!1409 lt!18410) #b00000000000000000000000000000000) Nil!1214) Nil!1214)))))

(assert (= (and d!7909 (not res!25601)) b!43117))

(assert (= (and b!43117 res!25600) b!43120))

(assert (= (and b!43117 res!25602) b!43119))

(assert (= (and b!43119 c!5480) b!43118))

(assert (= (and b!43119 (not c!5480)) b!43116))

(assert (= (or b!43118 b!43116) bm!3401))

(assert (=> b!43117 m!37026))

(assert (=> b!43117 m!37026))

(assert (=> b!43117 m!37029))

(assert (=> b!43119 m!37026))

(assert (=> b!43119 m!37026))

(assert (=> b!43119 m!37029))

(assert (=> b!43120 m!37026))

(assert (=> b!43120 m!37026))

(declare-fun m!37043 () Bool)

(assert (=> b!43120 m!37043))

(assert (=> bm!3401 m!37026))

(declare-fun m!37049 () Bool)

(assert (=> bm!3401 m!37049))

(assert (=> b!43060 d!7909))

(declare-fun d!7915 () Bool)

(assert (=> d!7915 (arrayNoDuplicates!0 lt!18410 #b00000000000000000000000000000000 Nil!1214)))

(declare-fun lt!18436 () Unit!1203)

(declare-fun choose!111 (array!2931 (_ BitVec 32) (_ BitVec 32) List!1217) Unit!1203)

(assert (=> d!7915 (= lt!18436 (choose!111 lt!18410 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1214))))

(assert (=> d!7915 (= (size!1594 lt!18410) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7915 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!18410 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1214) lt!18436)))

(declare-fun bs!1931 () Bool)

(assert (= bs!1931 d!7915))

(assert (=> bs!1931 m!37005))

(declare-fun m!37055 () Bool)

(assert (=> bs!1931 m!37055))

(assert (=> b!43060 d!7915))

(declare-fun d!7921 () Bool)

(assert (=> d!7921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18410 mask!853)))

(declare-fun lt!18442 () Unit!1203)

(declare-fun choose!34 (array!2931 (_ BitVec 32) (_ BitVec 32)) Unit!1203)

(assert (=> d!7921 (= lt!18442 (choose!34 lt!18410 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7921 (validMask!0 mask!853)))

(assert (=> d!7921 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18410 mask!853 #b00000000000000000000000000000000) lt!18442)))

(declare-fun bs!1933 () Bool)

(assert (= bs!1933 d!7921))

(assert (=> bs!1933 m!37001))

(declare-fun m!37059 () Bool)

(assert (=> bs!1933 m!37059))

(assert (=> bs!1933 m!37023))

(assert (=> b!43060 d!7921))

(declare-fun d!7925 () Bool)

(assert (=> d!7925 (= (arrayCountValidKeys!0 lt!18410 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18445 () Unit!1203)

(declare-fun choose!59 (array!2931 (_ BitVec 32) (_ BitVec 32)) Unit!1203)

(assert (=> d!7925 (= lt!18445 (choose!59 lt!18410 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7925 (bvslt (size!1594 lt!18410) #b01111111111111111111111111111111)))

(assert (=> d!7925 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18410 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!18445)))

(declare-fun bs!1934 () Bool)

(assert (= bs!1934 d!7925))

(assert (=> bs!1934 m!37009))

(declare-fun m!37061 () Bool)

(assert (=> bs!1934 m!37061))

(assert (=> b!43060 d!7925))

(declare-fun b!43149 () Bool)

(declare-fun e!27350 () Bool)

(declare-fun call!3413 () Bool)

(assert (=> b!43149 (= e!27350 call!3413)))

(declare-fun bm!3410 () Bool)

(assert (=> bm!3410 (= call!3413 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!18410 mask!853))))

(declare-fun b!43150 () Bool)

(declare-fun e!27349 () Bool)

(assert (=> b!43150 (= e!27349 e!27350)))

(declare-fun lt!18464 () (_ BitVec 64))

(assert (=> b!43150 (= lt!18464 (select (arr!1409 lt!18410) #b00000000000000000000000000000000))))

(declare-fun lt!18463 () Unit!1203)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2931 (_ BitVec 64) (_ BitVec 32)) Unit!1203)

(assert (=> b!43150 (= lt!18463 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!18410 lt!18464 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2931 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!43150 (arrayContainsKey!0 lt!18410 lt!18464 #b00000000000000000000000000000000)))

(declare-fun lt!18465 () Unit!1203)

(assert (=> b!43150 (= lt!18465 lt!18463)))

(declare-fun res!25617 () Bool)

(declare-datatypes ((SeekEntryResult!208 0))(
  ( (MissingZero!208 (index!2954 (_ BitVec 32))) (Found!208 (index!2955 (_ BitVec 32))) (Intermediate!208 (undefined!1020 Bool) (index!2956 (_ BitVec 32)) (x!8297 (_ BitVec 32))) (Undefined!208) (MissingVacant!208 (index!2957 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2931 (_ BitVec 32)) SeekEntryResult!208)

(assert (=> b!43150 (= res!25617 (= (seekEntryOrOpen!0 (select (arr!1409 lt!18410) #b00000000000000000000000000000000) lt!18410 mask!853) (Found!208 #b00000000000000000000000000000000)))))

(assert (=> b!43150 (=> (not res!25617) (not e!27350))))

(declare-fun b!43151 () Bool)

(declare-fun e!27351 () Bool)

(assert (=> b!43151 (= e!27351 e!27349)))

(declare-fun c!5488 () Bool)

(assert (=> b!43151 (= c!5488 (validKeyInArray!0 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)))))

(declare-fun b!43152 () Bool)

(assert (=> b!43152 (= e!27349 call!3413)))

(declare-fun d!7927 () Bool)

(declare-fun res!25618 () Bool)

(assert (=> d!7927 (=> res!25618 e!27351)))

(assert (=> d!7927 (= res!25618 (bvsge #b00000000000000000000000000000000 (size!1594 lt!18410)))))

(assert (=> d!7927 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18410 mask!853) e!27351)))

(assert (= (and d!7927 (not res!25618)) b!43151))

(assert (= (and b!43151 c!5488) b!43150))

(assert (= (and b!43151 (not c!5488)) b!43152))

(assert (= (and b!43150 res!25617) b!43149))

(assert (= (or b!43149 b!43152) bm!3410))

(declare-fun m!37073 () Bool)

(assert (=> bm!3410 m!37073))

(assert (=> b!43150 m!37026))

(declare-fun m!37075 () Bool)

(assert (=> b!43150 m!37075))

(declare-fun m!37077 () Bool)

(assert (=> b!43150 m!37077))

(assert (=> b!43150 m!37026))

(declare-fun m!37079 () Bool)

(assert (=> b!43150 m!37079))

(assert (=> b!43151 m!37026))

(assert (=> b!43151 m!37026))

(assert (=> b!43151 m!37029))

(assert (=> b!43060 d!7927))

(declare-fun d!7933 () Bool)

(assert (=> d!7933 (= (map!837 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (getCurrentListMap!352 (_keys!3432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (_values!1866 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (mask!5432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (extraKeys!1774 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (zeroValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (minValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1883 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000))))))

(declare-fun bs!1937 () Bool)

(assert (= bs!1937 d!7933))

(declare-fun m!37083 () Bool)

(assert (=> bs!1937 m!37083))

(assert (=> b!43060 d!7933))

(declare-fun d!7937 () Bool)

(assert (=> d!7937 (= (isEmpty!282 (toList!621 lt!18411)) (is-Nil!1213 (toList!621 lt!18411)))))

(assert (=> b!43061 d!7937))

(declare-fun d!7941 () Bool)

(assert (=> d!7941 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6476 d!7941))

(declare-fun d!7945 () Bool)

(declare-fun e!27362 () Bool)

(assert (=> d!7945 e!27362))

(declare-fun res!25624 () Bool)

(assert (=> d!7945 (=> res!25624 e!27362)))

(declare-fun lt!18487 () Bool)

(assert (=> d!7945 (= res!25624 (not lt!18487))))

(declare-fun lt!18488 () Bool)

(assert (=> d!7945 (= lt!18487 lt!18488)))

(declare-fun lt!18489 () Unit!1203)

(declare-fun e!27363 () Unit!1203)

(assert (=> d!7945 (= lt!18489 e!27363)))

(declare-fun c!5494 () Bool)

(assert (=> d!7945 (= c!5494 lt!18488)))

(declare-fun containsKey!73 (List!1216 (_ BitVec 64)) Bool)

(assert (=> d!7945 (= lt!18488 (containsKey!73 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470)) (_1!825 (head!889 (toList!621 lt!18411)))))))

(assert (=> d!7945 (= (contains!566 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470) (_1!825 (head!889 (toList!621 lt!18411)))) lt!18487)))

(declare-fun b!43168 () Bool)

(declare-fun lt!18490 () Unit!1203)

(assert (=> b!43168 (= e!27363 lt!18490)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!61 (List!1216 (_ BitVec 64)) Unit!1203)

(assert (=> b!43168 (= lt!18490 (lemmaContainsKeyImpliesGetValueByKeyDefined!61 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470)) (_1!825 (head!889 (toList!621 lt!18411)))))))

(declare-datatypes ((Option!111 0))(
  ( (Some!110 (v!2078 V!2313)) (None!109) )
))
(declare-fun isDefined!62 (Option!111) Bool)

(declare-fun getValueByKey!105 (List!1216 (_ BitVec 64)) Option!111)

(assert (=> b!43168 (isDefined!62 (getValueByKey!105 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470)) (_1!825 (head!889 (toList!621 lt!18411)))))))

(declare-fun b!43169 () Bool)

(declare-fun Unit!1208 () Unit!1203)

(assert (=> b!43169 (= e!27363 Unit!1208)))

(declare-fun b!43170 () Bool)

(assert (=> b!43170 (= e!27362 (isDefined!62 (getValueByKey!105 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470)) (_1!825 (head!889 (toList!621 lt!18411))))))))

(assert (= (and d!7945 c!5494) b!43168))

(assert (= (and d!7945 (not c!5494)) b!43169))

(assert (= (and d!7945 (not res!25624)) b!43170))

(declare-fun m!37091 () Bool)

(assert (=> d!7945 m!37091))

(declare-fun m!37095 () Bool)

(assert (=> b!43168 m!37095))

(declare-fun m!37097 () Bool)

(assert (=> b!43168 m!37097))

(assert (=> b!43168 m!37097))

(declare-fun m!37099 () Bool)

(assert (=> b!43168 m!37099))

(assert (=> b!43170 m!37097))

(assert (=> b!43170 m!37097))

(assert (=> b!43170 m!37099))

(assert (=> b!43063 d!7945))

(declare-fun bm!3476 () Bool)

(declare-fun call!3480 () Bool)

(declare-fun lt!18687 () ListLongMap!1211)

(assert (=> bm!3476 (= call!3480 (contains!566 lt!18687 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!43379 () Bool)

(declare-fun e!27505 () Bool)

(declare-fun e!27499 () Bool)

(assert (=> b!43379 (= e!27505 e!27499)))

(declare-fun c!5559 () Bool)

(assert (=> b!43379 (= c!5559 (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!43380 () Bool)

(declare-fun e!27503 () ListLongMap!1211)

(declare-fun call!3479 () ListLongMap!1211)

(declare-fun +!69 (ListLongMap!1211 tuple2!1630) ListLongMap!1211)

(assert (=> b!43380 (= e!27503 (+!69 call!3479 (tuple2!1631 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18406)))))

(declare-fun bm!3477 () Bool)

(declare-fun call!3484 () ListLongMap!1211)

(assert (=> bm!3477 (= call!3484 call!3479)))

(declare-fun b!43381 () Bool)

(declare-fun c!5556 () Bool)

(assert (=> b!43381 (= c!5556 (and (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!27497 () ListLongMap!1211)

(declare-fun e!27500 () ListLongMap!1211)

(assert (=> b!43381 (= e!27497 e!27500)))

(declare-fun b!43382 () Bool)

(assert (=> b!43382 (= e!27503 e!27497)))

(declare-fun c!5558 () Bool)

(assert (=> b!43382 (= c!5558 (and (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!43383 () Bool)

(declare-fun e!27501 () Bool)

(assert (=> b!43383 (= e!27501 (validKeyInArray!0 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)))))

(declare-fun b!43384 () Bool)

(declare-fun call!3483 () Bool)

(assert (=> b!43384 (= e!27499 (not call!3483))))

(declare-fun b!43385 () Bool)

(declare-fun e!27498 () Bool)

(assert (=> b!43385 (= e!27498 (not call!3480))))

(declare-fun b!43386 () Bool)

(declare-fun e!27502 () Unit!1203)

(declare-fun lt!18693 () Unit!1203)

(assert (=> b!43386 (= e!27502 lt!18693)))

(declare-fun lt!18696 () ListLongMap!1211)

(declare-fun getCurrentListMapNoExtraKeys!38 (array!2931 array!2933 (_ BitVec 32) (_ BitVec 32) V!2313 V!2313 (_ BitVec 32) Int) ListLongMap!1211)

(assert (=> b!43386 (= lt!18696 (getCurrentListMapNoExtraKeys!38 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun lt!18702 () (_ BitVec 64))

(assert (=> b!43386 (= lt!18702 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18697 () (_ BitVec 64))

(assert (=> b!43386 (= lt!18697 (select (arr!1409 lt!18410) #b00000000000000000000000000000000))))

(declare-fun lt!18703 () Unit!1203)

(declare-fun addStillContains!36 (ListLongMap!1211 (_ BitVec 64) V!2313 (_ BitVec 64)) Unit!1203)

(assert (=> b!43386 (= lt!18703 (addStillContains!36 lt!18696 lt!18702 lt!18406 lt!18697))))

(assert (=> b!43386 (contains!566 (+!69 lt!18696 (tuple2!1631 lt!18702 lt!18406)) lt!18697)))

(declare-fun lt!18708 () Unit!1203)

(assert (=> b!43386 (= lt!18708 lt!18703)))

(declare-fun lt!18695 () ListLongMap!1211)

(assert (=> b!43386 (= lt!18695 (getCurrentListMapNoExtraKeys!38 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun lt!18699 () (_ BitVec 64))

(assert (=> b!43386 (= lt!18699 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18692 () (_ BitVec 64))

(assert (=> b!43386 (= lt!18692 (select (arr!1409 lt!18410) #b00000000000000000000000000000000))))

(declare-fun lt!18704 () Unit!1203)

(declare-fun addApplyDifferent!36 (ListLongMap!1211 (_ BitVec 64) V!2313 (_ BitVec 64)) Unit!1203)

(assert (=> b!43386 (= lt!18704 (addApplyDifferent!36 lt!18695 lt!18699 lt!18406 lt!18692))))

(declare-fun apply!60 (ListLongMap!1211 (_ BitVec 64)) V!2313)

(assert (=> b!43386 (= (apply!60 (+!69 lt!18695 (tuple2!1631 lt!18699 lt!18406)) lt!18692) (apply!60 lt!18695 lt!18692))))

(declare-fun lt!18707 () Unit!1203)

(assert (=> b!43386 (= lt!18707 lt!18704)))

(declare-fun lt!18691 () ListLongMap!1211)

(assert (=> b!43386 (= lt!18691 (getCurrentListMapNoExtraKeys!38 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun lt!18689 () (_ BitVec 64))

(assert (=> b!43386 (= lt!18689 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18688 () (_ BitVec 64))

(assert (=> b!43386 (= lt!18688 (select (arr!1409 lt!18410) #b00000000000000000000000000000000))))

(declare-fun lt!18706 () Unit!1203)

(assert (=> b!43386 (= lt!18706 (addApplyDifferent!36 lt!18691 lt!18689 lt!18406 lt!18688))))

(assert (=> b!43386 (= (apply!60 (+!69 lt!18691 (tuple2!1631 lt!18689 lt!18406)) lt!18688) (apply!60 lt!18691 lt!18688))))

(declare-fun lt!18694 () Unit!1203)

(assert (=> b!43386 (= lt!18694 lt!18706)))

(declare-fun lt!18705 () ListLongMap!1211)

(assert (=> b!43386 (= lt!18705 (getCurrentListMapNoExtraKeys!38 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun lt!18690 () (_ BitVec 64))

(assert (=> b!43386 (= lt!18690 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18701 () (_ BitVec 64))

(assert (=> b!43386 (= lt!18701 (select (arr!1409 lt!18410) #b00000000000000000000000000000000))))

(assert (=> b!43386 (= lt!18693 (addApplyDifferent!36 lt!18705 lt!18690 lt!18406 lt!18701))))

(assert (=> b!43386 (= (apply!60 (+!69 lt!18705 (tuple2!1631 lt!18690 lt!18406)) lt!18701) (apply!60 lt!18705 lt!18701))))

(declare-fun b!43387 () Bool)

(declare-fun res!25720 () Bool)

(assert (=> b!43387 (=> (not res!25720) (not e!27505))))

(declare-fun e!27506 () Bool)

(assert (=> b!43387 (= res!25720 e!27506)))

(declare-fun res!25717 () Bool)

(assert (=> b!43387 (=> res!25717 e!27506)))

(declare-fun e!27496 () Bool)

(assert (=> b!43387 (= res!25717 (not e!27496))))

(declare-fun res!25715 () Bool)

(assert (=> b!43387 (=> (not res!25715) (not e!27496))))

(assert (=> b!43387 (= res!25715 (bvslt #b00000000000000000000000000000000 (size!1594 lt!18410)))))

(declare-fun b!43388 () Bool)

(declare-fun call!3481 () ListLongMap!1211)

(assert (=> b!43388 (= e!27500 call!3481)))

(declare-fun e!27504 () Bool)

(declare-fun b!43389 () Bool)

(declare-fun get!791 (ValueCell!700 V!2313) V!2313)

(assert (=> b!43389 (= e!27504 (= (apply!60 lt!18687 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)) (get!791 (select (arr!1410 lt!18408) #b00000000000000000000000000000000) (dynLambda!261 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!43389 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1595 lt!18408)))))

(assert (=> b!43389 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1594 lt!18410)))))

(declare-fun bm!3478 () Bool)

(assert (=> bm!3478 (= call!3483 (contains!566 lt!18687 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!43378 () Bool)

(declare-fun e!27507 () Bool)

(assert (=> b!43378 (= e!27498 e!27507)))

(declare-fun res!25712 () Bool)

(assert (=> b!43378 (= res!25712 call!3480)))

(assert (=> b!43378 (=> (not res!25712) (not e!27507))))

(declare-fun d!7949 () Bool)

(assert (=> d!7949 e!27505))

(declare-fun res!25714 () Bool)

(assert (=> d!7949 (=> (not res!25714) (not e!27505))))

(assert (=> d!7949 (= res!25714 (or (bvsge #b00000000000000000000000000000000 (size!1594 lt!18410)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1594 lt!18410)))))))

(declare-fun lt!18698 () ListLongMap!1211)

(assert (=> d!7949 (= lt!18687 lt!18698)))

(declare-fun lt!18700 () Unit!1203)

(assert (=> d!7949 (= lt!18700 e!27502)))

(declare-fun c!5560 () Bool)

(assert (=> d!7949 (= c!5560 e!27501)))

(declare-fun res!25713 () Bool)

(assert (=> d!7949 (=> (not res!25713) (not e!27501))))

(assert (=> d!7949 (= res!25713 (bvslt #b00000000000000000000000000000000 (size!1594 lt!18410)))))

(assert (=> d!7949 (= lt!18698 e!27503)))

(declare-fun c!5557 () Bool)

(assert (=> d!7949 (= c!5557 (and (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!7949 (validMask!0 mask!853)))

(assert (=> d!7949 (= (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470) lt!18687)))

(declare-fun b!43390 () Bool)

(declare-fun e!27495 () Bool)

(assert (=> b!43390 (= e!27495 (= (apply!60 lt!18687 #b1000000000000000000000000000000000000000000000000000000000000000) lt!18406))))

(declare-fun b!43391 () Bool)

(assert (=> b!43391 (= e!27506 e!27504)))

(declare-fun res!25716 () Bool)

(assert (=> b!43391 (=> (not res!25716) (not e!27504))))

(assert (=> b!43391 (= res!25716 (contains!566 lt!18687 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)))))

(assert (=> b!43391 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1594 lt!18410)))))

(declare-fun bm!3479 () Bool)

(declare-fun call!3485 () ListLongMap!1211)

(declare-fun call!3482 () ListLongMap!1211)

(assert (=> bm!3479 (= call!3485 call!3482)))

(declare-fun bm!3480 () Bool)

(assert (=> bm!3480 (= call!3481 call!3485)))

(declare-fun b!43392 () Bool)

(assert (=> b!43392 (= e!27499 e!27495)))

(declare-fun res!25719 () Bool)

(assert (=> b!43392 (= res!25719 call!3483)))

(assert (=> b!43392 (=> (not res!25719) (not e!27495))))

(declare-fun bm!3481 () Bool)

(assert (=> bm!3481 (= call!3479 (+!69 (ite c!5557 call!3482 (ite c!5558 call!3485 call!3481)) (ite (or c!5557 c!5558) (tuple2!1631 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18406) (tuple2!1631 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18406))))))

(declare-fun b!43393 () Bool)

(assert (=> b!43393 (= e!27496 (validKeyInArray!0 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)))))

(declare-fun b!43394 () Bool)

(assert (=> b!43394 (= e!27497 call!3484)))

(declare-fun bm!3482 () Bool)

(assert (=> bm!3482 (= call!3482 (getCurrentListMapNoExtraKeys!38 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun b!43395 () Bool)

(assert (=> b!43395 (= e!27500 call!3484)))

(declare-fun b!43396 () Bool)

(declare-fun res!25718 () Bool)

(assert (=> b!43396 (=> (not res!25718) (not e!27505))))

(assert (=> b!43396 (= res!25718 e!27498)))

(declare-fun c!5555 () Bool)

(assert (=> b!43396 (= c!5555 (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!43397 () Bool)

(declare-fun Unit!1210 () Unit!1203)

(assert (=> b!43397 (= e!27502 Unit!1210)))

(declare-fun b!43398 () Bool)

(assert (=> b!43398 (= e!27507 (= (apply!60 lt!18687 #b0000000000000000000000000000000000000000000000000000000000000000) lt!18406))))

(assert (= (and d!7949 c!5557) b!43380))

(assert (= (and d!7949 (not c!5557)) b!43382))

(assert (= (and b!43382 c!5558) b!43394))

(assert (= (and b!43382 (not c!5558)) b!43381))

(assert (= (and b!43381 c!5556) b!43395))

(assert (= (and b!43381 (not c!5556)) b!43388))

(assert (= (or b!43395 b!43388) bm!3480))

(assert (= (or b!43394 bm!3480) bm!3479))

(assert (= (or b!43394 b!43395) bm!3477))

(assert (= (or b!43380 bm!3479) bm!3482))

(assert (= (or b!43380 bm!3477) bm!3481))

(assert (= (and d!7949 res!25713) b!43383))

(assert (= (and d!7949 c!5560) b!43386))

(assert (= (and d!7949 (not c!5560)) b!43397))

(assert (= (and d!7949 res!25714) b!43387))

(assert (= (and b!43387 res!25715) b!43393))

(assert (= (and b!43387 (not res!25717)) b!43391))

(assert (= (and b!43391 res!25716) b!43389))

(assert (= (and b!43387 res!25720) b!43396))

(assert (= (and b!43396 c!5555) b!43378))

(assert (= (and b!43396 (not c!5555)) b!43385))

(assert (= (and b!43378 res!25712) b!43398))

(assert (= (or b!43378 b!43385) bm!3476))

(assert (= (and b!43396 res!25718) b!43379))

(assert (= (and b!43379 c!5559) b!43392))

(assert (= (and b!43379 (not c!5559)) b!43384))

(assert (= (and b!43392 res!25719) b!43390))

(assert (= (or b!43392 b!43384) bm!3478))

(declare-fun b_lambda!2279 () Bool)

(assert (=> (not b_lambda!2279) (not b!43389)))

(assert (=> b!43389 t!4224))

(declare-fun b_and!2677 () Bool)

(assert (= b_and!2671 (and (=> t!4224 result!1733) b_and!2677)))

(declare-fun m!37185 () Bool)

(assert (=> b!43398 m!37185))

(assert (=> b!43383 m!37026))

(assert (=> b!43383 m!37026))

(assert (=> b!43383 m!37029))

(declare-fun m!37193 () Bool)

(assert (=> bm!3478 m!37193))

(declare-fun m!37197 () Bool)

(assert (=> b!43389 m!37197))

(assert (=> b!43389 m!37003))

(declare-fun m!37201 () Bool)

(assert (=> b!43389 m!37201))

(assert (=> b!43389 m!37026))

(assert (=> b!43389 m!37197))

(assert (=> b!43389 m!37003))

(assert (=> b!43389 m!37026))

(declare-fun m!37209 () Bool)

(assert (=> b!43389 m!37209))

(declare-fun m!37215 () Bool)

(assert (=> bm!3482 m!37215))

(assert (=> b!43393 m!37026))

(assert (=> b!43393 m!37026))

(assert (=> b!43393 m!37029))

(declare-fun m!37225 () Bool)

(assert (=> bm!3476 m!37225))

(declare-fun m!37227 () Bool)

(assert (=> b!43380 m!37227))

(declare-fun m!37231 () Bool)

(assert (=> bm!3481 m!37231))

(assert (=> d!7949 m!37023))

(assert (=> b!43391 m!37026))

(assert (=> b!43391 m!37026))

(declare-fun m!37237 () Bool)

(assert (=> b!43391 m!37237))

(declare-fun m!37239 () Bool)

(assert (=> b!43386 m!37239))

(assert (=> b!43386 m!37215))

(declare-fun m!37243 () Bool)

(assert (=> b!43386 m!37243))

(declare-fun m!37247 () Bool)

(assert (=> b!43386 m!37247))

(declare-fun m!37249 () Bool)

(assert (=> b!43386 m!37249))

(assert (=> b!43386 m!37026))

(declare-fun m!37253 () Bool)

(assert (=> b!43386 m!37253))

(declare-fun m!37257 () Bool)

(assert (=> b!43386 m!37257))

(declare-fun m!37259 () Bool)

(assert (=> b!43386 m!37259))

(declare-fun m!37263 () Bool)

(assert (=> b!43386 m!37263))

(declare-fun m!37265 () Bool)

(assert (=> b!43386 m!37265))

(declare-fun m!37269 () Bool)

(assert (=> b!43386 m!37269))

(assert (=> b!43386 m!37269))

(declare-fun m!37271 () Bool)

(assert (=> b!43386 m!37271))

(assert (=> b!43386 m!37257))

(declare-fun m!37273 () Bool)

(assert (=> b!43386 m!37273))

(assert (=> b!43386 m!37239))

(declare-fun m!37275 () Bool)

(assert (=> b!43386 m!37275))

(declare-fun m!37277 () Bool)

(assert (=> b!43386 m!37277))

(declare-fun m!37279 () Bool)

(assert (=> b!43386 m!37279))

(assert (=> b!43386 m!37263))

(declare-fun m!37281 () Bool)

(assert (=> b!43390 m!37281))

(assert (=> b!43063 d!7949))

(declare-fun d!7973 () Bool)

(assert (=> d!7973 (= (head!889 (toList!621 lt!18411)) (h!1789 (toList!621 lt!18411)))))

(assert (=> b!43063 d!7973))

(declare-fun b_lambda!2283 () Bool)

(assert (= b_lambda!2279 (or (and start!6476 b_free!1505) b_lambda!2283)))

(push 1)

(assert (not b!43119))

(assert (not b!43088))

(assert (not b_lambda!2271))

(assert (not b!43120))

(assert (not b!43398))

(assert (not b!43383))

(assert b_and!2677)

(assert (not bm!3410))

(assert (not b!43386))

(assert (not d!7921))

(assert (not d!7945))

(assert (not b!43389))

(assert (not d!7949))

(assert (not b_lambda!2283))

(assert (not b!43390))

(assert (not b!43391))

(assert (not d!7933))

(assert (not bm!3401))

(assert (not d!7925))

(assert (not b!43150))

(assert (not b!43151))

(assert (not bm!3482))

(assert (not b!43393))

(assert (not b!43117))

(assert (not b!43380))

(assert (not b_next!1505))

(assert tp_is_empty!1895)

(assert (not d!7915))

(assert (not bm!3476))

(assert (not bm!3398))

(assert (not bm!3478))

(assert (not b!43170))

(assert (not b!43168))

(assert (not bm!3481))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2677)

(assert (not b_next!1505))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8003 () Bool)

(assert (=> d!8003 (= (validKeyInArray!0 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)) (and (not (= (select (arr!1409 lt!18410) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1409 lt!18410) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!43088 d!8003))

(declare-fun d!8005 () Bool)

(declare-fun e!27541 () Bool)

(assert (=> d!8005 e!27541))

(declare-fun res!25741 () Bool)

(assert (=> d!8005 (=> res!25741 e!27541)))

(declare-fun lt!18743 () Bool)

(assert (=> d!8005 (= res!25741 (not lt!18743))))

(declare-fun lt!18744 () Bool)

(assert (=> d!8005 (= lt!18743 lt!18744)))

(declare-fun lt!18745 () Unit!1203)

(declare-fun e!27542 () Unit!1203)

(assert (=> d!8005 (= lt!18745 e!27542)))

(declare-fun c!5577 () Bool)

(assert (=> d!8005 (= c!5577 lt!18744)))

(assert (=> d!8005 (= lt!18744 (containsKey!73 (toList!621 lt!18687) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!8005 (= (contains!566 lt!18687 #b1000000000000000000000000000000000000000000000000000000000000000) lt!18743)))

(declare-fun b!43451 () Bool)

(declare-fun lt!18746 () Unit!1203)

(assert (=> b!43451 (= e!27542 lt!18746)))

(assert (=> b!43451 (= lt!18746 (lemmaContainsKeyImpliesGetValueByKeyDefined!61 (toList!621 lt!18687) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!43451 (isDefined!62 (getValueByKey!105 (toList!621 lt!18687) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!43452 () Bool)

(declare-fun Unit!1213 () Unit!1203)

(assert (=> b!43452 (= e!27542 Unit!1213)))

(declare-fun b!43453 () Bool)

(assert (=> b!43453 (= e!27541 (isDefined!62 (getValueByKey!105 (toList!621 lt!18687) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!8005 c!5577) b!43451))

(assert (= (and d!8005 (not c!5577)) b!43452))

(assert (= (and d!8005 (not res!25741)) b!43453))

(declare-fun m!37343 () Bool)

(assert (=> d!8005 m!37343))

(declare-fun m!37345 () Bool)

(assert (=> b!43451 m!37345))

(declare-fun m!37347 () Bool)

(assert (=> b!43451 m!37347))

(assert (=> b!43451 m!37347))

(declare-fun m!37349 () Bool)

(assert (=> b!43451 m!37349))

(assert (=> b!43453 m!37347))

(assert (=> b!43453 m!37347))

(assert (=> b!43453 m!37349))

(assert (=> bm!3478 d!8005))

(declare-fun d!8007 () Bool)

(declare-fun get!795 (Option!111) V!2313)

(assert (=> d!8007 (= (apply!60 lt!18687 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)) (get!795 (getValueByKey!105 (toList!621 lt!18687) (select (arr!1409 lt!18410) #b00000000000000000000000000000000))))))

(declare-fun bs!1945 () Bool)

(assert (= bs!1945 d!8007))

(assert (=> bs!1945 m!37026))

(declare-fun m!37351 () Bool)

(assert (=> bs!1945 m!37351))

(assert (=> bs!1945 m!37351))

(declare-fun m!37353 () Bool)

(assert (=> bs!1945 m!37353))

(assert (=> b!43389 d!8007))

(declare-fun d!8009 () Bool)

(declare-fun c!5580 () Bool)

(assert (=> d!8009 (= c!5580 (is-ValueCellFull!700 (select (arr!1410 lt!18408) #b00000000000000000000000000000000)))))

(declare-fun e!27545 () V!2313)

(assert (=> d!8009 (= (get!791 (select (arr!1410 lt!18408) #b00000000000000000000000000000000) (dynLambda!261 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000)) e!27545)))

(declare-fun b!43458 () Bool)

(declare-fun get!796 (ValueCell!700 V!2313) V!2313)

(assert (=> b!43458 (= e!27545 (get!796 (select (arr!1410 lt!18408) #b00000000000000000000000000000000) (dynLambda!261 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!43459 () Bool)

(declare-fun get!797 (ValueCell!700 V!2313) V!2313)

(assert (=> b!43459 (= e!27545 (get!797 (select (arr!1410 lt!18408) #b00000000000000000000000000000000) (dynLambda!261 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!8009 c!5580) b!43458))

(assert (= (and d!8009 (not c!5580)) b!43459))

(assert (=> b!43458 m!37197))

(assert (=> b!43458 m!37003))

(declare-fun m!37355 () Bool)

(assert (=> b!43458 m!37355))

(assert (=> b!43459 m!37197))

(assert (=> b!43459 m!37003))

(declare-fun m!37357 () Bool)

(assert (=> b!43459 m!37357))

(assert (=> b!43389 d!8009))

(assert (=> b!43151 d!8003))

(assert (=> d!7915 d!7909))

(declare-fun d!8011 () Bool)

(assert (=> d!8011 (arrayNoDuplicates!0 lt!18410 #b00000000000000000000000000000000 Nil!1214)))

(assert (=> d!8011 true))

(declare-fun res!25744 () Unit!1203)

(assert (=> d!8011 (= (choose!111 lt!18410 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1214) res!25744)))

(declare-fun bs!1946 () Bool)

(assert (= bs!1946 d!8011))

(assert (=> bs!1946 m!37005))

(assert (=> d!7915 d!8011))

(declare-fun b!43460 () Bool)

(declare-fun e!27546 () (_ BitVec 32))

(declare-fun call!3487 () (_ BitVec 32))

(assert (=> b!43460 (= e!27546 call!3487)))

(declare-fun b!43462 () Bool)

(declare-fun e!27547 () (_ BitVec 32))

(assert (=> b!43462 (= e!27547 e!27546)))

(declare-fun c!5582 () Bool)

(assert (=> b!43462 (= c!5582 (validKeyInArray!0 (select (arr!1409 lt!18410) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!43463 () Bool)

(assert (=> b!43463 (= e!27547 #b00000000000000000000000000000000)))

(declare-fun bm!3484 () Bool)

(assert (=> bm!3484 (= call!3487 (arrayCountValidKeys!0 lt!18410 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun d!8013 () Bool)

(declare-fun lt!18747 () (_ BitVec 32))

(assert (=> d!8013 (and (bvsge lt!18747 #b00000000000000000000000000000000) (bvsle lt!18747 (bvsub (size!1594 lt!18410) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!8013 (= lt!18747 e!27547)))

(declare-fun c!5581 () Bool)

(assert (=> d!8013 (= c!5581 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8013 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1594 lt!18410)))))

(assert (=> d!8013 (= (arrayCountValidKeys!0 lt!18410 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!18747)))

(declare-fun b!43461 () Bool)

(assert (=> b!43461 (= e!27546 (bvadd #b00000000000000000000000000000001 call!3487))))

(assert (= (and d!8013 c!5581) b!43463))

(assert (= (and d!8013 (not c!5581)) b!43462))

(assert (= (and b!43462 c!5582) b!43461))

(assert (= (and b!43462 (not c!5582)) b!43460))

(assert (= (or b!43461 b!43460) bm!3484))

(declare-fun m!37359 () Bool)

(assert (=> b!43462 m!37359))

(assert (=> b!43462 m!37359))

(declare-fun m!37361 () Bool)

(assert (=> b!43462 m!37361))

(declare-fun m!37363 () Bool)

(assert (=> bm!3484 m!37363))

(assert (=> bm!3398 d!8013))

(declare-fun d!8015 () Bool)

(declare-fun isEmpty!285 (Option!111) Bool)

(assert (=> d!8015 (= (isDefined!62 (getValueByKey!105 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470)) (_1!825 (head!889 (toList!621 lt!18411))))) (not (isEmpty!285 (getValueByKey!105 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470)) (_1!825 (head!889 (toList!621 lt!18411)))))))))

(declare-fun bs!1947 () Bool)

(assert (= bs!1947 d!8015))

(assert (=> bs!1947 m!37097))

(declare-fun m!37365 () Bool)

(assert (=> bs!1947 m!37365))

(assert (=> b!43170 d!8015))

(declare-fun b!43481 () Bool)

(declare-fun e!27556 () Option!111)

(declare-fun e!27557 () Option!111)

(assert (=> b!43481 (= e!27556 e!27557)))

(declare-fun c!5592 () Bool)

(assert (=> b!43481 (= c!5592 (and (is-Cons!1212 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470))) (not (= (_1!825 (h!1789 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470)))) (_1!825 (head!889 (toList!621 lt!18411)))))))))

(declare-fun c!5591 () Bool)

(declare-fun d!8017 () Bool)

(assert (=> d!8017 (= c!5591 (and (is-Cons!1212 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470))) (= (_1!825 (h!1789 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470)))) (_1!825 (head!889 (toList!621 lt!18411))))))))

(assert (=> d!8017 (= (getValueByKey!105 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470)) (_1!825 (head!889 (toList!621 lt!18411)))) e!27556)))

(declare-fun b!43480 () Bool)

(assert (=> b!43480 (= e!27556 (Some!110 (_2!825 (h!1789 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470))))))))

(declare-fun b!43483 () Bool)

(assert (=> b!43483 (= e!27557 None!109)))

(declare-fun b!43482 () Bool)

(assert (=> b!43482 (= e!27557 (getValueByKey!105 (t!4225 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470))) (_1!825 (head!889 (toList!621 lt!18411)))))))

(assert (= (and d!8017 c!5591) b!43480))

(assert (= (and d!8017 (not c!5591)) b!43481))

(assert (= (and b!43481 c!5592) b!43482))

(assert (= (and b!43481 (not c!5592)) b!43483))

(declare-fun m!37367 () Bool)

(assert (=> b!43482 m!37367))

(assert (=> b!43170 d!8017))

(declare-fun d!8019 () Bool)

(assert (=> d!8019 (arrayContainsKey!0 lt!18410 lt!18464 #b00000000000000000000000000000000)))

(declare-fun lt!18764 () Unit!1203)

(declare-fun choose!13 (array!2931 (_ BitVec 64) (_ BitVec 32)) Unit!1203)

(assert (=> d!8019 (= lt!18764 (choose!13 lt!18410 lt!18464 #b00000000000000000000000000000000))))

(assert (=> d!8019 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!8019 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!18410 lt!18464 #b00000000000000000000000000000000) lt!18764)))

(declare-fun bs!1948 () Bool)

(assert (= bs!1948 d!8019))

(assert (=> bs!1948 m!37077))

(declare-fun m!37369 () Bool)

(assert (=> bs!1948 m!37369))

(assert (=> b!43150 d!8019))

(declare-fun d!8021 () Bool)

(declare-fun res!25757 () Bool)

(declare-fun e!27572 () Bool)

(assert (=> d!8021 (=> res!25757 e!27572)))

(assert (=> d!8021 (= res!25757 (= (select (arr!1409 lt!18410) #b00000000000000000000000000000000) lt!18464))))

(assert (=> d!8021 (= (arrayContainsKey!0 lt!18410 lt!18464 #b00000000000000000000000000000000) e!27572)))

(declare-fun b!43504 () Bool)

(declare-fun e!27573 () Bool)

(assert (=> b!43504 (= e!27572 e!27573)))

(declare-fun res!25758 () Bool)

(assert (=> b!43504 (=> (not res!25758) (not e!27573))))

(assert (=> b!43504 (= res!25758 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1594 lt!18410)))))

(declare-fun b!43505 () Bool)

(assert (=> b!43505 (= e!27573 (arrayContainsKey!0 lt!18410 lt!18464 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8021 (not res!25757)) b!43504))

(assert (= (and b!43504 res!25758) b!43505))

(assert (=> d!8021 m!37026))

(declare-fun m!37371 () Bool)

(assert (=> b!43505 m!37371))

(assert (=> b!43150 d!8021))

(declare-fun d!8023 () Bool)

(declare-fun lt!18818 () SeekEntryResult!208)

(assert (=> d!8023 (and (or (is-Undefined!208 lt!18818) (not (is-Found!208 lt!18818)) (and (bvsge (index!2955 lt!18818) #b00000000000000000000000000000000) (bvslt (index!2955 lt!18818) (size!1594 lt!18410)))) (or (is-Undefined!208 lt!18818) (is-Found!208 lt!18818) (not (is-MissingZero!208 lt!18818)) (and (bvsge (index!2954 lt!18818) #b00000000000000000000000000000000) (bvslt (index!2954 lt!18818) (size!1594 lt!18410)))) (or (is-Undefined!208 lt!18818) (is-Found!208 lt!18818) (is-MissingZero!208 lt!18818) (not (is-MissingVacant!208 lt!18818)) (and (bvsge (index!2957 lt!18818) #b00000000000000000000000000000000) (bvslt (index!2957 lt!18818) (size!1594 lt!18410)))) (or (is-Undefined!208 lt!18818) (ite (is-Found!208 lt!18818) (= (select (arr!1409 lt!18410) (index!2955 lt!18818)) (select (arr!1409 lt!18410) #b00000000000000000000000000000000)) (ite (is-MissingZero!208 lt!18818) (= (select (arr!1409 lt!18410) (index!2954 lt!18818)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!208 lt!18818) (= (select (arr!1409 lt!18410) (index!2957 lt!18818)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!27616 () SeekEntryResult!208)

(assert (=> d!8023 (= lt!18818 e!27616)))

(declare-fun c!5620 () Bool)

(declare-fun lt!18820 () SeekEntryResult!208)

(assert (=> d!8023 (= c!5620 (and (is-Intermediate!208 lt!18820) (undefined!1020 lt!18820)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2931 (_ BitVec 32)) SeekEntryResult!208)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!8023 (= lt!18820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1409 lt!18410) #b00000000000000000000000000000000) mask!853) (select (arr!1409 lt!18410) #b00000000000000000000000000000000) lt!18410 mask!853))))

(assert (=> d!8023 (validMask!0 mask!853)))

(assert (=> d!8023 (= (seekEntryOrOpen!0 (select (arr!1409 lt!18410) #b00000000000000000000000000000000) lt!18410 mask!853) lt!18818)))

(declare-fun b!43578 () Bool)

(declare-fun e!27617 () SeekEntryResult!208)

(assert (=> b!43578 (= e!27616 e!27617)))

(declare-fun lt!18819 () (_ BitVec 64))

(assert (=> b!43578 (= lt!18819 (select (arr!1409 lt!18410) (index!2956 lt!18820)))))

(declare-fun c!5621 () Bool)

(assert (=> b!43578 (= c!5621 (= lt!18819 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)))))

(declare-fun b!43579 () Bool)

(declare-fun c!5622 () Bool)

(assert (=> b!43579 (= c!5622 (= lt!18819 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!27615 () SeekEntryResult!208)

(assert (=> b!43579 (= e!27617 e!27615)))

(declare-fun b!43580 () Bool)

(assert (=> b!43580 (= e!27617 (Found!208 (index!2956 lt!18820)))))

(declare-fun b!43581 () Bool)

(assert (=> b!43581 (= e!27615 (MissingZero!208 (index!2956 lt!18820)))))

(declare-fun b!43582 () Bool)

(assert (=> b!43582 (= e!27616 Undefined!208)))

(declare-fun b!43583 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2931 (_ BitVec 32)) SeekEntryResult!208)

(assert (=> b!43583 (= e!27615 (seekKeyOrZeroReturnVacant!0 (x!8297 lt!18820) (index!2956 lt!18820) (index!2956 lt!18820) (select (arr!1409 lt!18410) #b00000000000000000000000000000000) lt!18410 mask!853))))

(assert (= (and d!8023 c!5620) b!43582))

(assert (= (and d!8023 (not c!5620)) b!43578))

(assert (= (and b!43578 c!5621) b!43580))

(assert (= (and b!43578 (not c!5621)) b!43579))

(assert (= (and b!43579 c!5622) b!43581))

(assert (= (and b!43579 (not c!5622)) b!43583))

(declare-fun m!37455 () Bool)

(assert (=> d!8023 m!37455))

(declare-fun m!37457 () Bool)

(assert (=> d!8023 m!37457))

(assert (=> d!8023 m!37026))

(declare-fun m!37461 () Bool)

(assert (=> d!8023 m!37461))

(declare-fun m!37463 () Bool)

(assert (=> d!8023 m!37463))

(declare-fun m!37465 () Bool)

(assert (=> d!8023 m!37465))

(assert (=> d!8023 m!37026))

(assert (=> d!8023 m!37457))

(assert (=> d!8023 m!37023))

(declare-fun m!37467 () Bool)

(assert (=> b!43578 m!37467))

(assert (=> b!43583 m!37026))

(declare-fun m!37469 () Bool)

(assert (=> b!43583 m!37469))

(assert (=> b!43150 d!8023))

(assert (=> d!7925 d!7905))

(declare-fun d!8045 () Bool)

(assert (=> d!8045 (= (arrayCountValidKeys!0 lt!18410 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!8045 true))

(declare-fun _$88!49 () Unit!1203)

(assert (=> d!8045 (= (choose!59 lt!18410 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!49)))

(declare-fun bs!1953 () Bool)

(assert (= bs!1953 d!8045))

(assert (=> bs!1953 m!37009))

(assert (=> d!7925 d!8045))

(declare-fun b!43587 () Bool)

(declare-fun e!27620 () Bool)

(declare-fun call!3495 () Bool)

(assert (=> b!43587 (= e!27620 call!3495)))

(declare-fun bm!3492 () Bool)

(assert (=> bm!3492 (= call!3495 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!18410 mask!853))))

(declare-fun b!43588 () Bool)

(declare-fun e!27619 () Bool)

(assert (=> b!43588 (= e!27619 e!27620)))

(declare-fun lt!18828 () (_ BitVec 64))

(assert (=> b!43588 (= lt!18828 (select (arr!1409 lt!18410) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!18827 () Unit!1203)

(assert (=> b!43588 (= lt!18827 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!18410 lt!18828 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!43588 (arrayContainsKey!0 lt!18410 lt!18828 #b00000000000000000000000000000000)))

(declare-fun lt!18829 () Unit!1203)

(assert (=> b!43588 (= lt!18829 lt!18827)))

(declare-fun res!25787 () Bool)

(assert (=> b!43588 (= res!25787 (= (seekEntryOrOpen!0 (select (arr!1409 lt!18410) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!18410 mask!853) (Found!208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!43588 (=> (not res!25787) (not e!27620))))

(declare-fun b!43589 () Bool)

(declare-fun e!27621 () Bool)

(assert (=> b!43589 (= e!27621 e!27619)))

(declare-fun c!5623 () Bool)

(assert (=> b!43589 (= c!5623 (validKeyInArray!0 (select (arr!1409 lt!18410) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!43590 () Bool)

(assert (=> b!43590 (= e!27619 call!3495)))

(declare-fun d!8049 () Bool)

(declare-fun res!25788 () Bool)

(assert (=> d!8049 (=> res!25788 e!27621)))

(assert (=> d!8049 (= res!25788 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1594 lt!18410)))))

(assert (=> d!8049 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!18410 mask!853) e!27621)))

(assert (= (and d!8049 (not res!25788)) b!43589))

(assert (= (and b!43589 c!5623) b!43588))

(assert (= (and b!43589 (not c!5623)) b!43590))

(assert (= (and b!43588 res!25787) b!43587))

(assert (= (or b!43587 b!43590) bm!3492))

(declare-fun m!37485 () Bool)

(assert (=> bm!3492 m!37485))

(assert (=> b!43588 m!37359))

(declare-fun m!37489 () Bool)

(assert (=> b!43588 m!37489))

(declare-fun m!37491 () Bool)

(assert (=> b!43588 m!37491))

(assert (=> b!43588 m!37359))

(declare-fun m!37493 () Bool)

(assert (=> b!43588 m!37493))

(assert (=> b!43589 m!37359))

(assert (=> b!43589 m!37359))

(assert (=> b!43589 m!37361))

(assert (=> bm!3410 d!8049))

(assert (=> d!7949 d!7941))

(declare-fun d!8053 () Bool)

(assert (=> d!8053 (isDefined!62 (getValueByKey!105 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470)) (_1!825 (head!889 (toList!621 lt!18411)))))))

(declare-fun lt!18848 () Unit!1203)

(declare-fun choose!262 (List!1216 (_ BitVec 64)) Unit!1203)

(assert (=> d!8053 (= lt!18848 (choose!262 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470)) (_1!825 (head!889 (toList!621 lt!18411)))))))

(declare-fun e!27627 () Bool)

(assert (=> d!8053 e!27627))

(declare-fun res!25797 () Bool)

(assert (=> d!8053 (=> (not res!25797) (not e!27627))))

(declare-fun isStrictlySorted!208 (List!1216) Bool)

(assert (=> d!8053 (= res!25797 (isStrictlySorted!208 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470))))))

(assert (=> d!8053 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!61 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470)) (_1!825 (head!889 (toList!621 lt!18411)))) lt!18848)))

(declare-fun b!43600 () Bool)

(assert (=> b!43600 (= e!27627 (containsKey!73 (toList!621 (getCurrentListMap!352 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470)) (_1!825 (head!889 (toList!621 lt!18411)))))))

(assert (= (and d!8053 res!25797) b!43600))

(assert (=> d!8053 m!37097))

(assert (=> d!8053 m!37097))

(assert (=> d!8053 m!37099))

(declare-fun m!37555 () Bool)

(assert (=> d!8053 m!37555))

(declare-fun m!37557 () Bool)

(assert (=> d!8053 m!37557))

(assert (=> b!43600 m!37091))

(assert (=> b!43168 d!8053))

(assert (=> b!43168 d!8015))

(assert (=> b!43168 d!8017))

(declare-fun d!8073 () Bool)

(declare-fun e!27646 () Bool)

(assert (=> d!8073 e!27646))

(declare-fun res!25819 () Bool)

(assert (=> d!8073 (=> (not res!25819) (not e!27646))))

(declare-fun lt!18887 () ListLongMap!1211)

(assert (=> d!8073 (= res!25819 (contains!566 lt!18887 (_1!825 (tuple2!1631 lt!18690 lt!18406))))))

(declare-fun lt!18888 () List!1216)

(assert (=> d!8073 (= lt!18887 (ListLongMap!1212 lt!18888))))

(declare-fun lt!18889 () Unit!1203)

(declare-fun lt!18886 () Unit!1203)

(assert (=> d!8073 (= lt!18889 lt!18886)))

(assert (=> d!8073 (= (getValueByKey!105 lt!18888 (_1!825 (tuple2!1631 lt!18690 lt!18406))) (Some!110 (_2!825 (tuple2!1631 lt!18690 lt!18406))))))

(declare-fun lemmaContainsTupThenGetReturnValue!31 (List!1216 (_ BitVec 64) V!2313) Unit!1203)

(assert (=> d!8073 (= lt!18886 (lemmaContainsTupThenGetReturnValue!31 lt!18888 (_1!825 (tuple2!1631 lt!18690 lt!18406)) (_2!825 (tuple2!1631 lt!18690 lt!18406))))))

(declare-fun insertStrictlySorted!28 (List!1216 (_ BitVec 64) V!2313) List!1216)

(assert (=> d!8073 (= lt!18888 (insertStrictlySorted!28 (toList!621 lt!18705) (_1!825 (tuple2!1631 lt!18690 lt!18406)) (_2!825 (tuple2!1631 lt!18690 lt!18406))))))

(assert (=> d!8073 (= (+!69 lt!18705 (tuple2!1631 lt!18690 lt!18406)) lt!18887)))

(declare-fun b!43628 () Bool)

(declare-fun res!25820 () Bool)

(assert (=> b!43628 (=> (not res!25820) (not e!27646))))

(assert (=> b!43628 (= res!25820 (= (getValueByKey!105 (toList!621 lt!18887) (_1!825 (tuple2!1631 lt!18690 lt!18406))) (Some!110 (_2!825 (tuple2!1631 lt!18690 lt!18406)))))))

(declare-fun b!43629 () Bool)

(declare-fun contains!572 (List!1216 tuple2!1630) Bool)

(assert (=> b!43629 (= e!27646 (contains!572 (toList!621 lt!18887) (tuple2!1631 lt!18690 lt!18406)))))

(assert (= (and d!8073 res!25819) b!43628))

(assert (= (and b!43628 res!25820) b!43629))

(declare-fun m!37637 () Bool)

(assert (=> d!8073 m!37637))

(declare-fun m!37639 () Bool)

(assert (=> d!8073 m!37639))

(declare-fun m!37643 () Bool)

(assert (=> d!8073 m!37643))

(declare-fun m!37645 () Bool)

(assert (=> d!8073 m!37645))

(declare-fun m!37647 () Bool)

(assert (=> b!43628 m!37647))

(declare-fun m!37649 () Bool)

(assert (=> b!43629 m!37649))

(assert (=> b!43386 d!8073))

(declare-fun d!8099 () Bool)

(declare-fun e!27649 () Bool)

(assert (=> d!8099 e!27649))

(declare-fun res!25824 () Bool)

(assert (=> d!8099 (=> res!25824 e!27649)))

(declare-fun lt!18895 () Bool)

(assert (=> d!8099 (= res!25824 (not lt!18895))))

(declare-fun lt!18896 () Bool)

(assert (=> d!8099 (= lt!18895 lt!18896)))

(declare-fun lt!18897 () Unit!1203)

(declare-fun e!27650 () Unit!1203)

(assert (=> d!8099 (= lt!18897 e!27650)))

(declare-fun c!5626 () Bool)

(assert (=> d!8099 (= c!5626 lt!18896)))

(assert (=> d!8099 (= lt!18896 (containsKey!73 (toList!621 (+!69 lt!18696 (tuple2!1631 lt!18702 lt!18406))) lt!18697))))

(assert (=> d!8099 (= (contains!566 (+!69 lt!18696 (tuple2!1631 lt!18702 lt!18406)) lt!18697) lt!18895)))

(declare-fun b!43633 () Bool)

(declare-fun lt!18898 () Unit!1203)

(assert (=> b!43633 (= e!27650 lt!18898)))

(assert (=> b!43633 (= lt!18898 (lemmaContainsKeyImpliesGetValueByKeyDefined!61 (toList!621 (+!69 lt!18696 (tuple2!1631 lt!18702 lt!18406))) lt!18697))))

(assert (=> b!43633 (isDefined!62 (getValueByKey!105 (toList!621 (+!69 lt!18696 (tuple2!1631 lt!18702 lt!18406))) lt!18697))))

(declare-fun b!43634 () Bool)

(declare-fun Unit!1217 () Unit!1203)

(assert (=> b!43634 (= e!27650 Unit!1217)))

(declare-fun b!43635 () Bool)

(assert (=> b!43635 (= e!27649 (isDefined!62 (getValueByKey!105 (toList!621 (+!69 lt!18696 (tuple2!1631 lt!18702 lt!18406))) lt!18697)))))

(assert (= (and d!8099 c!5626) b!43633))

(assert (= (and d!8099 (not c!5626)) b!43634))

(assert (= (and d!8099 (not res!25824)) b!43635))

(declare-fun m!37667 () Bool)

(assert (=> d!8099 m!37667))

(declare-fun m!37669 () Bool)

(assert (=> b!43633 m!37669))

(declare-fun m!37671 () Bool)

(assert (=> b!43633 m!37671))

(assert (=> b!43633 m!37671))

(declare-fun m!37675 () Bool)

(assert (=> b!43633 m!37675))

(assert (=> b!43635 m!37671))

(assert (=> b!43635 m!37671))

(assert (=> b!43635 m!37675))

(assert (=> b!43386 d!8099))

(declare-fun d!8107 () Bool)

(assert (=> d!8107 (= (apply!60 lt!18691 lt!18688) (get!795 (getValueByKey!105 (toList!621 lt!18691) lt!18688)))))

(declare-fun bs!1965 () Bool)

(assert (= bs!1965 d!8107))

(declare-fun m!37683 () Bool)

(assert (=> bs!1965 m!37683))

(assert (=> bs!1965 m!37683))

(declare-fun m!37691 () Bool)

(assert (=> bs!1965 m!37691))

(assert (=> b!43386 d!8107))

(declare-fun d!8111 () Bool)

(assert (=> d!8111 (= (apply!60 lt!18705 lt!18701) (get!795 (getValueByKey!105 (toList!621 lt!18705) lt!18701)))))

(declare-fun bs!1967 () Bool)

(assert (= bs!1967 d!8111))

(declare-fun m!37697 () Bool)

(assert (=> bs!1967 m!37697))

(assert (=> bs!1967 m!37697))

(declare-fun m!37701 () Bool)

(assert (=> bs!1967 m!37701))

(assert (=> b!43386 d!8111))

(declare-fun d!8117 () Bool)

(assert (=> d!8117 (= (apply!60 (+!69 lt!18695 (tuple2!1631 lt!18699 lt!18406)) lt!18692) (apply!60 lt!18695 lt!18692))))

(declare-fun lt!18930 () Unit!1203)

(declare-fun choose!264 (ListLongMap!1211 (_ BitVec 64) V!2313 (_ BitVec 64)) Unit!1203)

(assert (=> d!8117 (= lt!18930 (choose!264 lt!18695 lt!18699 lt!18406 lt!18692))))

(declare-fun e!27678 () Bool)

(assert (=> d!8117 e!27678))

(declare-fun res!25846 () Bool)

(assert (=> d!8117 (=> (not res!25846) (not e!27678))))

(assert (=> d!8117 (= res!25846 (contains!566 lt!18695 lt!18692))))

(assert (=> d!8117 (= (addApplyDifferent!36 lt!18695 lt!18699 lt!18406 lt!18692) lt!18930)))

(declare-fun b!43674 () Bool)

(assert (=> b!43674 (= e!27678 (not (= lt!18692 lt!18699)))))

(assert (= (and d!8117 res!25846) b!43674))

(declare-fun m!37763 () Bool)

(assert (=> d!8117 m!37763))

(assert (=> d!8117 m!37269))

(assert (=> d!8117 m!37271))

(declare-fun m!37765 () Bool)

(assert (=> d!8117 m!37765))

(assert (=> d!8117 m!37253))

(assert (=> d!8117 m!37269))

(assert (=> b!43386 d!8117))

(declare-fun d!8123 () Bool)

(declare-fun e!27681 () Bool)

(assert (=> d!8123 e!27681))

(declare-fun res!25848 () Bool)

(assert (=> d!8123 (=> (not res!25848) (not e!27681))))

(declare-fun lt!18936 () ListLongMap!1211)

(assert (=> d!8123 (= res!25848 (contains!566 lt!18936 (_1!825 (tuple2!1631 lt!18689 lt!18406))))))

(declare-fun lt!18937 () List!1216)

(assert (=> d!8123 (= lt!18936 (ListLongMap!1212 lt!18937))))

(declare-fun lt!18938 () Unit!1203)

(declare-fun lt!18935 () Unit!1203)

(assert (=> d!8123 (= lt!18938 lt!18935)))

(assert (=> d!8123 (= (getValueByKey!105 lt!18937 (_1!825 (tuple2!1631 lt!18689 lt!18406))) (Some!110 (_2!825 (tuple2!1631 lt!18689 lt!18406))))))

(assert (=> d!8123 (= lt!18935 (lemmaContainsTupThenGetReturnValue!31 lt!18937 (_1!825 (tuple2!1631 lt!18689 lt!18406)) (_2!825 (tuple2!1631 lt!18689 lt!18406))))))

(assert (=> d!8123 (= lt!18937 (insertStrictlySorted!28 (toList!621 lt!18691) (_1!825 (tuple2!1631 lt!18689 lt!18406)) (_2!825 (tuple2!1631 lt!18689 lt!18406))))))

(assert (=> d!8123 (= (+!69 lt!18691 (tuple2!1631 lt!18689 lt!18406)) lt!18936)))

(declare-fun b!43678 () Bool)

(declare-fun res!25849 () Bool)

(assert (=> b!43678 (=> (not res!25849) (not e!27681))))

(assert (=> b!43678 (= res!25849 (= (getValueByKey!105 (toList!621 lt!18936) (_1!825 (tuple2!1631 lt!18689 lt!18406))) (Some!110 (_2!825 (tuple2!1631 lt!18689 lt!18406)))))))

(declare-fun b!43679 () Bool)

(assert (=> b!43679 (= e!27681 (contains!572 (toList!621 lt!18936) (tuple2!1631 lt!18689 lt!18406)))))

(assert (= (and d!8123 res!25848) b!43678))

(assert (= (and b!43678 res!25849) b!43679))

(declare-fun m!37787 () Bool)

(assert (=> d!8123 m!37787))

(declare-fun m!37789 () Bool)

(assert (=> d!8123 m!37789))

(declare-fun m!37791 () Bool)

(assert (=> d!8123 m!37791))

(declare-fun m!37795 () Bool)

(assert (=> d!8123 m!37795))

(declare-fun m!37797 () Bool)

(assert (=> b!43678 m!37797))

(declare-fun m!37799 () Bool)

(assert (=> b!43679 m!37799))

(assert (=> b!43386 d!8123))

(declare-fun d!8129 () Bool)

(assert (=> d!8129 (= (apply!60 (+!69 lt!18691 (tuple2!1631 lt!18689 lt!18406)) lt!18688) (apply!60 lt!18691 lt!18688))))

(declare-fun lt!18939 () Unit!1203)

(assert (=> d!8129 (= lt!18939 (choose!264 lt!18691 lt!18689 lt!18406 lt!18688))))

(declare-fun e!27682 () Bool)

(assert (=> d!8129 e!27682))

(declare-fun res!25850 () Bool)

(assert (=> d!8129 (=> (not res!25850) (not e!27682))))

(assert (=> d!8129 (= res!25850 (contains!566 lt!18691 lt!18688))))

(assert (=> d!8129 (= (addApplyDifferent!36 lt!18691 lt!18689 lt!18406 lt!18688) lt!18939)))

(declare-fun b!43680 () Bool)

(assert (=> b!43680 (= e!27682 (not (= lt!18688 lt!18689)))))

(assert (= (and d!8129 res!25850) b!43680))

(declare-fun m!37803 () Bool)

(assert (=> d!8129 m!37803))

(assert (=> d!8129 m!37239))

(assert (=> d!8129 m!37275))

(declare-fun m!37805 () Bool)

(assert (=> d!8129 m!37805))

(assert (=> d!8129 m!37277))

(assert (=> d!8129 m!37239))

(assert (=> b!43386 d!8129))

(declare-fun d!8133 () Bool)

(assert (=> d!8133 (= (apply!60 (+!69 lt!18691 (tuple2!1631 lt!18689 lt!18406)) lt!18688) (get!795 (getValueByKey!105 (toList!621 (+!69 lt!18691 (tuple2!1631 lt!18689 lt!18406))) lt!18688)))))

(declare-fun bs!1969 () Bool)

(assert (= bs!1969 d!8133))

(declare-fun m!37807 () Bool)

(assert (=> bs!1969 m!37807))

(assert (=> bs!1969 m!37807))

(declare-fun m!37809 () Bool)

(assert (=> bs!1969 m!37809))

(assert (=> b!43386 d!8133))

(declare-fun d!8135 () Bool)

(assert (=> d!8135 (contains!566 (+!69 lt!18696 (tuple2!1631 lt!18702 lt!18406)) lt!18697)))

(declare-fun lt!18952 () Unit!1203)

(declare-fun choose!265 (ListLongMap!1211 (_ BitVec 64) V!2313 (_ BitVec 64)) Unit!1203)

(assert (=> d!8135 (= lt!18952 (choose!265 lt!18696 lt!18702 lt!18406 lt!18697))))

(assert (=> d!8135 (contains!566 lt!18696 lt!18697)))

(assert (=> d!8135 (= (addStillContains!36 lt!18696 lt!18702 lt!18406 lt!18697) lt!18952)))

(declare-fun bs!1973 () Bool)

(assert (= bs!1973 d!8135))

(assert (=> bs!1973 m!37263))

(assert (=> bs!1973 m!37263))

(assert (=> bs!1973 m!37265))

(declare-fun m!37825 () Bool)

(assert (=> bs!1973 m!37825))

(declare-fun m!37827 () Bool)

(assert (=> bs!1973 m!37827))

(assert (=> b!43386 d!8135))

(declare-fun d!8147 () Bool)

(declare-fun e!27691 () Bool)

(assert (=> d!8147 e!27691))

(declare-fun res!25860 () Bool)

(assert (=> d!8147 (=> (not res!25860) (not e!27691))))

(declare-fun lt!18954 () ListLongMap!1211)

(assert (=> d!8147 (= res!25860 (contains!566 lt!18954 (_1!825 (tuple2!1631 lt!18699 lt!18406))))))

(declare-fun lt!18955 () List!1216)

(assert (=> d!8147 (= lt!18954 (ListLongMap!1212 lt!18955))))

(declare-fun lt!18956 () Unit!1203)

(declare-fun lt!18953 () Unit!1203)

(assert (=> d!8147 (= lt!18956 lt!18953)))

(assert (=> d!8147 (= (getValueByKey!105 lt!18955 (_1!825 (tuple2!1631 lt!18699 lt!18406))) (Some!110 (_2!825 (tuple2!1631 lt!18699 lt!18406))))))

(assert (=> d!8147 (= lt!18953 (lemmaContainsTupThenGetReturnValue!31 lt!18955 (_1!825 (tuple2!1631 lt!18699 lt!18406)) (_2!825 (tuple2!1631 lt!18699 lt!18406))))))

(assert (=> d!8147 (= lt!18955 (insertStrictlySorted!28 (toList!621 lt!18695) (_1!825 (tuple2!1631 lt!18699 lt!18406)) (_2!825 (tuple2!1631 lt!18699 lt!18406))))))

(assert (=> d!8147 (= (+!69 lt!18695 (tuple2!1631 lt!18699 lt!18406)) lt!18954)))

(declare-fun b!43692 () Bool)

(declare-fun res!25861 () Bool)

(assert (=> b!43692 (=> (not res!25861) (not e!27691))))

(assert (=> b!43692 (= res!25861 (= (getValueByKey!105 (toList!621 lt!18954) (_1!825 (tuple2!1631 lt!18699 lt!18406))) (Some!110 (_2!825 (tuple2!1631 lt!18699 lt!18406)))))))

(declare-fun b!43693 () Bool)

(assert (=> b!43693 (= e!27691 (contains!572 (toList!621 lt!18954) (tuple2!1631 lt!18699 lt!18406)))))

(assert (= (and d!8147 res!25860) b!43692))

(assert (= (and b!43692 res!25861) b!43693))

(declare-fun m!37831 () Bool)

(assert (=> d!8147 m!37831))

(declare-fun m!37833 () Bool)

(assert (=> d!8147 m!37833))

(declare-fun m!37835 () Bool)

(assert (=> d!8147 m!37835))

(declare-fun m!37837 () Bool)

(assert (=> d!8147 m!37837))

(declare-fun m!37839 () Bool)

(assert (=> b!43692 m!37839))

(declare-fun m!37841 () Bool)

(assert (=> b!43693 m!37841))

(assert (=> b!43386 d!8147))

(declare-fun d!8151 () Bool)

(assert (=> d!8151 (= (apply!60 (+!69 lt!18705 (tuple2!1631 lt!18690 lt!18406)) lt!18701) (apply!60 lt!18705 lt!18701))))

(declare-fun lt!18958 () Unit!1203)

(assert (=> d!8151 (= lt!18958 (choose!264 lt!18705 lt!18690 lt!18406 lt!18701))))

(declare-fun e!27694 () Bool)

(assert (=> d!8151 e!27694))

(declare-fun res!25864 () Bool)

(assert (=> d!8151 (=> (not res!25864) (not e!27694))))

(assert (=> d!8151 (= res!25864 (contains!566 lt!18705 lt!18701))))

(assert (=> d!8151 (= (addApplyDifferent!36 lt!18705 lt!18690 lt!18406 lt!18701) lt!18958)))

(declare-fun b!43696 () Bool)

(assert (=> b!43696 (= e!27694 (not (= lt!18701 lt!18690)))))

(assert (= (and d!8151 res!25864) b!43696))

(declare-fun m!37849 () Bool)

(assert (=> d!8151 m!37849))

(assert (=> d!8151 m!37257))

(assert (=> d!8151 m!37273))

(declare-fun m!37851 () Bool)

(assert (=> d!8151 m!37851))

(assert (=> d!8151 m!37279))

(assert (=> d!8151 m!37257))

(assert (=> b!43386 d!8151))

(declare-fun d!8155 () Bool)

(assert (=> d!8155 (= (apply!60 (+!69 lt!18705 (tuple2!1631 lt!18690 lt!18406)) lt!18701) (get!795 (getValueByKey!105 (toList!621 (+!69 lt!18705 (tuple2!1631 lt!18690 lt!18406))) lt!18701)))))

(declare-fun bs!1975 () Bool)

(assert (= bs!1975 d!8155))

(declare-fun m!37853 () Bool)

(assert (=> bs!1975 m!37853))

(assert (=> bs!1975 m!37853))

(declare-fun m!37855 () Bool)

(assert (=> bs!1975 m!37855))

(assert (=> b!43386 d!8155))

(declare-fun b!43792 () Bool)

(declare-fun e!27756 () Bool)

(assert (=> b!43792 (= e!27756 (validKeyInArray!0 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)))))

(assert (=> b!43792 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!43793 () Bool)

(declare-fun e!27762 () ListLongMap!1211)

(declare-fun call!3514 () ListLongMap!1211)

(assert (=> b!43793 (= e!27762 call!3514)))

(declare-fun b!43794 () Bool)

(declare-fun e!27761 () Bool)

(declare-fun e!27759 () Bool)

(assert (=> b!43794 (= e!27761 e!27759)))

(assert (=> b!43794 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1594 lt!18410)))))

(declare-fun res!25901 () Bool)

(declare-fun lt!19005 () ListLongMap!1211)

(assert (=> b!43794 (= res!25901 (contains!566 lt!19005 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)))))

(assert (=> b!43794 (=> (not res!25901) (not e!27759))))

(declare-fun b!43795 () Bool)

(declare-fun e!27760 () Bool)

(assert (=> b!43795 (= e!27760 e!27761)))

(declare-fun c!5671 () Bool)

(assert (=> b!43795 (= c!5671 e!27756)))

(declare-fun res!25900 () Bool)

(assert (=> b!43795 (=> (not res!25900) (not e!27756))))

(assert (=> b!43795 (= res!25900 (bvslt #b00000000000000000000000000000000 (size!1594 lt!18410)))))

(declare-fun b!43796 () Bool)

(declare-fun res!25903 () Bool)

(assert (=> b!43796 (=> (not res!25903) (not e!27760))))

(assert (=> b!43796 (= res!25903 (not (contains!566 lt!19005 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!43797 () Bool)

(declare-fun lt!19002 () Unit!1203)

(declare-fun lt!19007 () Unit!1203)

(assert (=> b!43797 (= lt!19002 lt!19007)))

(declare-fun lt!19003 () V!2313)

(declare-fun lt!19006 () (_ BitVec 64))

(declare-fun lt!19004 () (_ BitVec 64))

(declare-fun lt!19001 () ListLongMap!1211)

(assert (=> b!43797 (not (contains!566 (+!69 lt!19001 (tuple2!1631 lt!19006 lt!19003)) lt!19004))))

(declare-fun addStillNotContains!12 (ListLongMap!1211 (_ BitVec 64) V!2313 (_ BitVec 64)) Unit!1203)

(assert (=> b!43797 (= lt!19007 (addStillNotContains!12 lt!19001 lt!19006 lt!19003 lt!19004))))

(assert (=> b!43797 (= lt!19004 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!43797 (= lt!19003 (get!791 (select (arr!1410 lt!18408) #b00000000000000000000000000000000) (dynLambda!261 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!43797 (= lt!19006 (select (arr!1409 lt!18410) #b00000000000000000000000000000000))))

(assert (=> b!43797 (= lt!19001 call!3514)))

(assert (=> b!43797 (= e!27762 (+!69 call!3514 (tuple2!1631 (select (arr!1409 lt!18410) #b00000000000000000000000000000000) (get!791 (select (arr!1410 lt!18408) #b00000000000000000000000000000000) (dynLambda!261 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!43798 () Bool)

(assert (=> b!43798 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1594 lt!18410)))))

(assert (=> b!43798 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1595 lt!18408)))))

(assert (=> b!43798 (= e!27759 (= (apply!60 lt!19005 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)) (get!791 (select (arr!1410 lt!18408) #b00000000000000000000000000000000) (dynLambda!261 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!8157 () Bool)

(assert (=> d!8157 e!27760))

(declare-fun res!25902 () Bool)

(assert (=> d!8157 (=> (not res!25902) (not e!27760))))

(assert (=> d!8157 (= res!25902 (not (contains!566 lt!19005 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!27757 () ListLongMap!1211)

(assert (=> d!8157 (= lt!19005 e!27757)))

(declare-fun c!5668 () Bool)

(assert (=> d!8157 (= c!5668 (bvsge #b00000000000000000000000000000000 (size!1594 lt!18410)))))

(assert (=> d!8157 (validMask!0 mask!853)))

(assert (=> d!8157 (= (getCurrentListMapNoExtraKeys!38 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 defaultEntry!470) lt!19005)))

(declare-fun b!43799 () Bool)

(declare-fun e!27758 () Bool)

(declare-fun isEmpty!287 (ListLongMap!1211) Bool)

(assert (=> b!43799 (= e!27758 (isEmpty!287 lt!19005))))

(declare-fun b!43800 () Bool)

(assert (=> b!43800 (= e!27761 e!27758)))

(declare-fun c!5670 () Bool)

(assert (=> b!43800 (= c!5670 (bvslt #b00000000000000000000000000000000 (size!1594 lt!18410)))))

(declare-fun b!43801 () Bool)

(assert (=> b!43801 (= e!27758 (= lt!19005 (getCurrentListMapNoExtraKeys!38 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!470)))))

(declare-fun bm!3511 () Bool)

(assert (=> bm!3511 (= call!3514 (getCurrentListMapNoExtraKeys!38 lt!18410 lt!18408 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!470))))

(declare-fun b!43802 () Bool)

(assert (=> b!43802 (= e!27757 (ListLongMap!1212 Nil!1213))))

(declare-fun b!43803 () Bool)

(assert (=> b!43803 (= e!27757 e!27762)))

(declare-fun c!5669 () Bool)

(assert (=> b!43803 (= c!5669 (validKeyInArray!0 (select (arr!1409 lt!18410) #b00000000000000000000000000000000)))))

(assert (= (and d!8157 c!5668) b!43802))

(assert (= (and d!8157 (not c!5668)) b!43803))

(assert (= (and b!43803 c!5669) b!43797))

(assert (= (and b!43803 (not c!5669)) b!43793))

(assert (= (or b!43797 b!43793) bm!3511))

(assert (= (and d!8157 res!25902) b!43796))

(assert (= (and b!43796 res!25903) b!43795))

(assert (= (and b!43795 res!25900) b!43792))

(assert (= (and b!43795 c!5671) b!43794))

(assert (= (and b!43795 (not c!5671)) b!43800))

(assert (= (and b!43794 res!25901) b!43798))

(assert (= (and b!43800 c!5670) b!43801))

(assert (= (and b!43800 (not c!5670)) b!43799))

(declare-fun b_lambda!2303 () Bool)

(assert (=> (not b_lambda!2303) (not b!43797)))

(assert (=> b!43797 t!4224))

(declare-fun b_and!2691 () Bool)

(assert (= b_and!2677 (and (=> t!4224 result!1733) b_and!2691)))

(declare-fun b_lambda!2305 () Bool)

(assert (=> (not b_lambda!2305) (not b!43798)))

(assert (=> b!43798 t!4224))

(declare-fun b_and!2693 () Bool)

(assert (= b_and!2691 (and (=> t!4224 result!1733) b_and!2693)))

(assert (=> b!43792 m!37026))

(assert (=> b!43792 m!37026))

(assert (=> b!43792 m!37029))

(declare-fun m!37947 () Bool)

(assert (=> b!43797 m!37947))

(declare-fun m!37949 () Bool)

(assert (=> b!43797 m!37949))

(declare-fun m!37951 () Bool)

(assert (=> b!43797 m!37951))

(assert (=> b!43797 m!37197))

(assert (=> b!43797 m!37026))

(declare-fun m!37953 () Bool)

(assert (=> b!43797 m!37953))

(assert (=> b!43797 m!37947))

(assert (=> b!43797 m!37003))

(assert (=> b!43797 m!37197))

(assert (=> b!43797 m!37003))

(assert (=> b!43797 m!37201))

(assert (=> b!43794 m!37026))

(assert (=> b!43794 m!37026))

(declare-fun m!37955 () Bool)

(assert (=> b!43794 m!37955))

(assert (=> b!43798 m!37197))

(assert (=> b!43798 m!37026))

(declare-fun m!37957 () Bool)

(assert (=> b!43798 m!37957))

(assert (=> b!43798 m!37026))

(assert (=> b!43798 m!37003))

(assert (=> b!43798 m!37197))

(assert (=> b!43798 m!37003))

(assert (=> b!43798 m!37201))

(declare-fun m!37959 () Bool)

(assert (=> b!43801 m!37959))

(declare-fun m!37961 () Bool)

(assert (=> b!43799 m!37961))

(assert (=> b!43803 m!37026))

(assert (=> b!43803 m!37026))

(assert (=> b!43803 m!37029))

(declare-fun m!37963 () Bool)

(assert (=> d!8157 m!37963))

(assert (=> d!8157 m!37023))

(declare-fun m!37965 () Bool)

(assert (=> b!43796 m!37965))

(assert (=> bm!3511 m!37959))

(assert (=> b!43386 d!8157))

(declare-fun d!8183 () Bool)

(assert (=> d!8183 (= (apply!60 lt!18695 lt!18692) (get!795 (getValueByKey!105 (toList!621 lt!18695) lt!18692)))))

(declare-fun bs!1981 () Bool)

(assert (= bs!1981 d!8183))

(declare-fun m!37967 () Bool)

(assert (=> bs!1981 m!37967))

(assert (=> bs!1981 m!37967))

(declare-fun m!37969 () Bool)

(assert (=> bs!1981 m!37969))

(assert (=> b!43386 d!8183))

(declare-fun d!8185 () Bool)

(assert (=> d!8185 (= (apply!60 (+!69 lt!18695 (tuple2!1631 lt!18699 lt!18406)) lt!18692) (get!795 (getValueByKey!105 (toList!621 (+!69 lt!18695 (tuple2!1631 lt!18699 lt!18406))) lt!18692)))))

(declare-fun bs!1982 () Bool)

(assert (= bs!1982 d!8185))

(declare-fun m!37971 () Bool)

(assert (=> bs!1982 m!37971))

(assert (=> bs!1982 m!37971))

(declare-fun m!37973 () Bool)

(assert (=> bs!1982 m!37973))

(assert (=> b!43386 d!8185))

(declare-fun d!8187 () Bool)

(declare-fun e!27763 () Bool)

(assert (=> d!8187 e!27763))

(declare-fun res!25904 () Bool)

(assert (=> d!8187 (=> (not res!25904) (not e!27763))))

(declare-fun lt!19009 () ListLongMap!1211)

(assert (=> d!8187 (= res!25904 (contains!566 lt!19009 (_1!825 (tuple2!1631 lt!18702 lt!18406))))))

(declare-fun lt!19010 () List!1216)

(assert (=> d!8187 (= lt!19009 (ListLongMap!1212 lt!19010))))

(declare-fun lt!19011 () Unit!1203)

(declare-fun lt!19008 () Unit!1203)

(assert (=> d!8187 (= lt!19011 lt!19008)))

(assert (=> d!8187 (= (getValueByKey!105 lt!19010 (_1!825 (tuple2!1631 lt!18702 lt!18406))) (Some!110 (_2!825 (tuple2!1631 lt!18702 lt!18406))))))

(assert (=> d!8187 (= lt!19008 (lemmaContainsTupThenGetReturnValue!31 lt!19010 (_1!825 (tuple2!1631 lt!18702 lt!18406)) (_2!825 (tuple2!1631 lt!18702 lt!18406))))))

(assert (=> d!8187 (= lt!19010 (insertStrictlySorted!28 (toList!621 lt!18696) (_1!825 (tuple2!1631 lt!18702 lt!18406)) (_2!825 (tuple2!1631 lt!18702 lt!18406))))))

(assert (=> d!8187 (= (+!69 lt!18696 (tuple2!1631 lt!18702 lt!18406)) lt!19009)))

(declare-fun b!43804 () Bool)

(declare-fun res!25905 () Bool)

(assert (=> b!43804 (=> (not res!25905) (not e!27763))))

(assert (=> b!43804 (= res!25905 (= (getValueByKey!105 (toList!621 lt!19009) (_1!825 (tuple2!1631 lt!18702 lt!18406))) (Some!110 (_2!825 (tuple2!1631 lt!18702 lt!18406)))))))

(declare-fun b!43805 () Bool)

(assert (=> b!43805 (= e!27763 (contains!572 (toList!621 lt!19009) (tuple2!1631 lt!18702 lt!18406)))))

(assert (= (and d!8187 res!25904) b!43804))

(assert (= (and b!43804 res!25905) b!43805))

(declare-fun m!37975 () Bool)

(assert (=> d!8187 m!37975))

(declare-fun m!37977 () Bool)

(assert (=> d!8187 m!37977))

(declare-fun m!37979 () Bool)

(assert (=> d!8187 m!37979))

(declare-fun m!37981 () Bool)

(assert (=> d!8187 m!37981))

(declare-fun m!37983 () Bool)

(assert (=> b!43804 m!37983))

(declare-fun m!37985 () Bool)

(assert (=> b!43805 m!37985))

(assert (=> b!43386 d!8187))

(declare-fun bm!3512 () Bool)

(declare-fun call!3516 () Bool)

(declare-fun lt!19018 () ListLongMap!1211)

(assert (=> bm!3512 (= call!3516 (contains!566 lt!19018 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!43819 () Bool)

(declare-fun e!27780 () Bool)

(declare-fun e!27774 () Bool)

(assert (=> b!43819 (= e!27780 e!27774)))

(declare-fun c!5682 () Bool)

(assert (=> b!43819 (= c!5682 (not (= (bvand (extraKeys!1774 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!3515 () ListLongMap!1211)

(declare-fun e!27778 () ListLongMap!1211)

(declare-fun b!43820 () Bool)

(assert (=> b!43820 (= e!27778 (+!69 call!3515 (tuple2!1631 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)))))))

(declare-fun bm!3513 () Bool)

(declare-fun call!3520 () ListLongMap!1211)

(assert (=> bm!3513 (= call!3520 call!3515)))

(declare-fun c!5679 () Bool)

(declare-fun b!43821 () Bool)

(assert (=> b!43821 (= c!5679 (and (not (= (bvand (extraKeys!1774 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1774 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!27772 () ListLongMap!1211)

(declare-fun e!27775 () ListLongMap!1211)

(assert (=> b!43821 (= e!27772 e!27775)))

(declare-fun b!43822 () Bool)

(assert (=> b!43822 (= e!27778 e!27772)))

(declare-fun c!5681 () Bool)

(assert (=> b!43822 (= c!5681 (and (not (= (bvand (extraKeys!1774 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1774 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!43823 () Bool)

(declare-fun e!27776 () Bool)

(assert (=> b!43823 (= e!27776 (validKeyInArray!0 (select (arr!1409 (_keys!3432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!43824 () Bool)

(declare-fun call!3519 () Bool)

(assert (=> b!43824 (= e!27774 (not call!3519))))

(declare-fun b!43825 () Bool)

(declare-fun e!27773 () Bool)

(assert (=> b!43825 (= e!27773 (not call!3516))))

(declare-fun b!43826 () Bool)

(declare-fun e!27777 () Unit!1203)

(declare-fun lt!19024 () Unit!1203)

(assert (=> b!43826 (= e!27777 lt!19024)))

(declare-fun lt!19027 () ListLongMap!1211)

(assert (=> b!43826 (= lt!19027 (getCurrentListMapNoExtraKeys!38 (_keys!3432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (_values!1866 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (mask!5432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (extraKeys!1774 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (zeroValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (minValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1883 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000))))))

(declare-fun lt!19033 () (_ BitVec 64))

(assert (=> b!43826 (= lt!19033 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19028 () (_ BitVec 64))

(assert (=> b!43826 (= lt!19028 (select (arr!1409 (_keys!3432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(declare-fun lt!19034 () Unit!1203)

(assert (=> b!43826 (= lt!19034 (addStillContains!36 lt!19027 lt!19033 (zeroValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) lt!19028))))

(assert (=> b!43826 (contains!566 (+!69 lt!19027 (tuple2!1631 lt!19033 (zeroValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)))) lt!19028)))

(declare-fun lt!19039 () Unit!1203)

(assert (=> b!43826 (= lt!19039 lt!19034)))

(declare-fun lt!19026 () ListLongMap!1211)

(assert (=> b!43826 (= lt!19026 (getCurrentListMapNoExtraKeys!38 (_keys!3432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (_values!1866 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (mask!5432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (extraKeys!1774 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (zeroValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (minValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1883 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000))))))

(declare-fun lt!19030 () (_ BitVec 64))

(assert (=> b!43826 (= lt!19030 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19023 () (_ BitVec 64))

(assert (=> b!43826 (= lt!19023 (select (arr!1409 (_keys!3432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(declare-fun lt!19035 () Unit!1203)

(assert (=> b!43826 (= lt!19035 (addApplyDifferent!36 lt!19026 lt!19030 (minValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) lt!19023))))

(assert (=> b!43826 (= (apply!60 (+!69 lt!19026 (tuple2!1631 lt!19030 (minValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)))) lt!19023) (apply!60 lt!19026 lt!19023))))

(declare-fun lt!19038 () Unit!1203)

(assert (=> b!43826 (= lt!19038 lt!19035)))

(declare-fun lt!19022 () ListLongMap!1211)

(assert (=> b!43826 (= lt!19022 (getCurrentListMapNoExtraKeys!38 (_keys!3432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (_values!1866 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (mask!5432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (extraKeys!1774 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (zeroValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (minValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1883 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000))))))

(declare-fun lt!19020 () (_ BitVec 64))

(assert (=> b!43826 (= lt!19020 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19019 () (_ BitVec 64))

(assert (=> b!43826 (= lt!19019 (select (arr!1409 (_keys!3432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(declare-fun lt!19037 () Unit!1203)

(assert (=> b!43826 (= lt!19037 (addApplyDifferent!36 lt!19022 lt!19020 (zeroValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) lt!19019))))

(assert (=> b!43826 (= (apply!60 (+!69 lt!19022 (tuple2!1631 lt!19020 (zeroValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)))) lt!19019) (apply!60 lt!19022 lt!19019))))

(declare-fun lt!19025 () Unit!1203)

(assert (=> b!43826 (= lt!19025 lt!19037)))

(declare-fun lt!19036 () ListLongMap!1211)

(assert (=> b!43826 (= lt!19036 (getCurrentListMapNoExtraKeys!38 (_keys!3432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (_values!1866 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (mask!5432 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (extraKeys!1774 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (zeroValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) (minValue!1801 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1883 (LongMapFixedSize!381 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18406 lt!18406 #b00000000000000000000000000000000 lt!18410 lt!18408 #b00000000000000000000000000000000))))))

(declare-fun lt!19021 () (_ BitVec 64))

(assert (=> b!43826 (= lt!19021 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19032 () (_ BitVec 64))

(assert (=> b!43826 (= lt!19032 (select (arr!1409 (_keys!3432 (LongMapFixedSize!381 defaultEntry!470 mask!853 