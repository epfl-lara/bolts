; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132188 () Bool)

(assert start!132188)

(declare-fun b_free!31869 () Bool)

(declare-fun b_next!31869 () Bool)

(assert (=> start!132188 (= b_free!31869 (not b_next!31869))))

(declare-fun tp!111860 () Bool)

(declare-fun b_and!51301 () Bool)

(assert (=> start!132188 (= tp!111860 b_and!51301)))

(declare-fun b!1550308 () Bool)

(declare-datatypes ((V!59303 0))(
  ( (V!59304 (val!19150 Int)) )
))
(declare-datatypes ((tuple2!24820 0))(
  ( (tuple2!24821 (_1!12420 (_ BitVec 64)) (_2!12420 V!59303)) )
))
(declare-datatypes ((List!36310 0))(
  ( (Nil!36307) (Cons!36306 (h!37752 tuple2!24820) (t!51023 List!36310)) )
))
(declare-datatypes ((ListLongMap!22441 0))(
  ( (ListLongMap!22442 (toList!11236 List!36310)) )
))
(declare-fun e!863009 () ListLongMap!22441)

(declare-fun e!863010 () ListLongMap!22441)

(assert (=> b!1550308 (= e!863009 e!863010)))

(declare-fun c!142510 () Bool)

(declare-fun lt!668197 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1550308 (= c!142510 (and (not lt!668197) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1550309 () Bool)

(declare-fun res!1061999 () Bool)

(declare-fun e!863014 () Bool)

(assert (=> b!1550309 (=> (not res!1061999) (not e!863014))))

(declare-datatypes ((array!103447 0))(
  ( (array!103448 (arr!49921 (Array (_ BitVec 32) (_ BitVec 64))) (size!50472 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103447)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103447 (_ BitVec 32)) Bool)

(assert (=> b!1550309 (= res!1061999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun res!1062001 () Bool)

(assert (=> start!132188 (=> (not res!1062001) (not e!863014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132188 (= res!1062001 (validMask!0 mask!926))))

(assert (=> start!132188 e!863014))

(declare-fun array_inv!38737 (array!103447) Bool)

(assert (=> start!132188 (array_inv!38737 _keys!618)))

(declare-fun tp_is_empty!38145 () Bool)

(assert (=> start!132188 tp_is_empty!38145))

(assert (=> start!132188 true))

(assert (=> start!132188 tp!111860))

(declare-datatypes ((ValueCell!18162 0))(
  ( (ValueCellFull!18162 (v!21948 V!59303)) (EmptyCell!18162) )
))
(declare-datatypes ((array!103449 0))(
  ( (array!103450 (arr!49922 (Array (_ BitVec 32) ValueCell!18162)) (size!50473 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103449)

(declare-fun e!863012 () Bool)

(declare-fun array_inv!38738 (array!103449) Bool)

(assert (=> start!132188 (and (array_inv!38738 _values!470) e!863012)))

(declare-fun b!1550310 () Bool)

(declare-fun e!863013 () ListLongMap!22441)

(declare-fun call!70755 () ListLongMap!22441)

(assert (=> b!1550310 (= e!863013 call!70755)))

(declare-fun bm!70748 () Bool)

(declare-fun call!70751 () ListLongMap!22441)

(assert (=> bm!70748 (= call!70755 call!70751)))

(declare-fun b!1550311 () Bool)

(declare-fun e!863006 () Bool)

(assert (=> b!1550311 (= e!863006 tp_is_empty!38145)))

(declare-fun b!1550312 () Bool)

(declare-fun c!142511 () Bool)

(assert (=> b!1550312 (= c!142511 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668197))))

(assert (=> b!1550312 (= e!863010 e!863013)))

(declare-fun b!1550313 () Bool)

(declare-fun call!70754 () ListLongMap!22441)

(assert (=> b!1550313 (= e!863013 call!70754)))

(declare-fun b!1550314 () Bool)

(declare-fun res!1061996 () Bool)

(assert (=> b!1550314 (=> (not res!1061996) (not e!863014))))

(assert (=> b!1550314 (= res!1061996 (and (= (size!50473 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50472 _keys!618) (size!50473 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!436 () V!59303)

(declare-fun defaultEntry!478 () Int)

(declare-fun call!70753 () ListLongMap!22441)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun bm!70749 () Bool)

(declare-fun minValue!436 () V!59303)

(declare-fun getCurrentListMapNoExtraKeys!6665 (array!103447 array!103449 (_ BitVec 32) (_ BitVec 32) V!59303 V!59303 (_ BitVec 32) Int) ListLongMap!22441)

(assert (=> bm!70749 (= call!70753 (getCurrentListMapNoExtraKeys!6665 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!70750 () Bool)

(assert (=> bm!70750 (= call!70751 call!70753)))

(declare-fun b!1550315 () Bool)

(declare-fun e!863007 () Bool)

(declare-fun mapRes!58921 () Bool)

(assert (=> b!1550315 (= e!863012 (and e!863007 mapRes!58921))))

(declare-fun condMapEmpty!58921 () Bool)

(declare-fun mapDefault!58921 () ValueCell!18162)

(assert (=> b!1550315 (= condMapEmpty!58921 (= (arr!49922 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18162)) mapDefault!58921)))))

(declare-fun mapIsEmpty!58921 () Bool)

(assert (=> mapIsEmpty!58921 mapRes!58921))

(declare-fun b!1550316 () Bool)

(declare-fun res!1061997 () Bool)

(declare-fun e!863011 () Bool)

(assert (=> b!1550316 (=> (not res!1061997) (not e!863011))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1550316 (= res!1061997 (validKeyInArray!0 (select (arr!49921 _keys!618) from!762)))))

(declare-fun b!1550317 () Bool)

(declare-fun res!1062000 () Bool)

(assert (=> b!1550317 (=> (not res!1062000) (not e!863014))))

(assert (=> b!1550317 (= res!1062000 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50472 _keys!618))))))

(declare-fun b!1550318 () Bool)

(assert (=> b!1550318 (= e!863010 call!70754)))

(declare-fun bm!70751 () Bool)

(declare-fun call!70752 () ListLongMap!22441)

(assert (=> bm!70751 (= call!70754 call!70752)))

(declare-fun b!1550319 () Bool)

(assert (=> b!1550319 (= e!863007 tp_is_empty!38145)))

(declare-fun mapNonEmpty!58921 () Bool)

(declare-fun tp!111859 () Bool)

(assert (=> mapNonEmpty!58921 (= mapRes!58921 (and tp!111859 e!863006))))

(declare-fun mapKey!58921 () (_ BitVec 32))

(declare-fun mapRest!58921 () (Array (_ BitVec 32) ValueCell!18162))

(declare-fun mapValue!58921 () ValueCell!18162)

(assert (=> mapNonEmpty!58921 (= (arr!49922 _values!470) (store mapRest!58921 mapKey!58921 mapValue!58921))))

(declare-fun b!1550320 () Bool)

(declare-fun +!4946 (ListLongMap!22441 tuple2!24820) ListLongMap!22441)

(assert (=> b!1550320 (= e!863009 (+!4946 call!70752 (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1550321 () Bool)

(declare-fun contains!10105 (ListLongMap!22441 (_ BitVec 64)) Bool)

(assert (=> b!1550321 (= e!863011 (not (contains!10105 (getCurrentListMapNoExtraKeys!6665 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478) (select (arr!49921 _keys!618) from!762))))))

(declare-fun b!1550322 () Bool)

(declare-fun res!1062002 () Bool)

(assert (=> b!1550322 (=> (not res!1062002) (not e!863014))))

(declare-datatypes ((List!36311 0))(
  ( (Nil!36308) (Cons!36307 (h!37753 (_ BitVec 64)) (t!51024 List!36311)) )
))
(declare-fun arrayNoDuplicates!0 (array!103447 (_ BitVec 32) List!36311) Bool)

(assert (=> b!1550322 (= res!1062002 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36308))))

(declare-fun bm!70752 () Bool)

(declare-fun c!142509 () Bool)

(assert (=> bm!70752 (= call!70752 (+!4946 (ite c!142509 call!70753 (ite c!142510 call!70751 call!70755)) (ite (or c!142509 c!142510) (tuple2!24821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1550323 () Bool)

(assert (=> b!1550323 (= e!863014 e!863011)))

(declare-fun res!1061998 () Bool)

(assert (=> b!1550323 (=> (not res!1061998) (not e!863011))))

(assert (=> b!1550323 (= res!1061998 (bvslt from!762 (size!50472 _keys!618)))))

(declare-fun lt!668198 () ListLongMap!22441)

(assert (=> b!1550323 (= lt!668198 e!863009)))

(assert (=> b!1550323 (= c!142509 (and (not lt!668197) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1550323 (= lt!668197 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (= (and start!132188 res!1062001) b!1550314))

(assert (= (and b!1550314 res!1061996) b!1550309))

(assert (= (and b!1550309 res!1061999) b!1550322))

(assert (= (and b!1550322 res!1062002) b!1550317))

(assert (= (and b!1550317 res!1062000) b!1550323))

(assert (= (and b!1550323 c!142509) b!1550320))

(assert (= (and b!1550323 (not c!142509)) b!1550308))

(assert (= (and b!1550308 c!142510) b!1550318))

(assert (= (and b!1550308 (not c!142510)) b!1550312))

(assert (= (and b!1550312 c!142511) b!1550313))

(assert (= (and b!1550312 (not c!142511)) b!1550310))

(assert (= (or b!1550313 b!1550310) bm!70748))

(assert (= (or b!1550318 bm!70748) bm!70750))

(assert (= (or b!1550318 b!1550313) bm!70751))

(assert (= (or b!1550320 bm!70750) bm!70749))

(assert (= (or b!1550320 bm!70751) bm!70752))

(assert (= (and b!1550323 res!1061998) b!1550316))

(assert (= (and b!1550316 res!1061997) b!1550321))

(assert (= (and b!1550315 condMapEmpty!58921) mapIsEmpty!58921))

(assert (= (and b!1550315 (not condMapEmpty!58921)) mapNonEmpty!58921))

(get-info :version)

(assert (= (and mapNonEmpty!58921 ((_ is ValueCellFull!18162) mapValue!58921)) b!1550311))

(assert (= (and b!1550315 ((_ is ValueCellFull!18162) mapDefault!58921)) b!1550319))

(assert (= start!132188 b!1550315))

(declare-fun m!1429273 () Bool)

(assert (=> mapNonEmpty!58921 m!1429273))

(declare-fun m!1429275 () Bool)

(assert (=> b!1550309 m!1429275))

(declare-fun m!1429277 () Bool)

(assert (=> bm!70752 m!1429277))

(declare-fun m!1429279 () Bool)

(assert (=> bm!70749 m!1429279))

(assert (=> b!1550321 m!1429279))

(declare-fun m!1429281 () Bool)

(assert (=> b!1550321 m!1429281))

(assert (=> b!1550321 m!1429279))

(assert (=> b!1550321 m!1429281))

(declare-fun m!1429283 () Bool)

(assert (=> b!1550321 m!1429283))

(declare-fun m!1429285 () Bool)

(assert (=> start!132188 m!1429285))

(declare-fun m!1429287 () Bool)

(assert (=> start!132188 m!1429287))

(declare-fun m!1429289 () Bool)

(assert (=> start!132188 m!1429289))

(assert (=> b!1550316 m!1429281))

(assert (=> b!1550316 m!1429281))

(declare-fun m!1429291 () Bool)

(assert (=> b!1550316 m!1429291))

(declare-fun m!1429293 () Bool)

(assert (=> b!1550320 m!1429293))

(declare-fun m!1429295 () Bool)

(assert (=> b!1550322 m!1429295))

(check-sat (not bm!70752) (not b!1550316) (not bm!70749) tp_is_empty!38145 (not b!1550322) (not b!1550309) (not b_next!31869) (not b!1550321) (not b!1550320) (not mapNonEmpty!58921) (not start!132188) b_and!51301)
(check-sat b_and!51301 (not b_next!31869))
(get-model)

(declare-fun d!160823 () Bool)

(declare-fun e!863044 () Bool)

(assert (=> d!160823 e!863044))

(declare-fun res!1062029 () Bool)

(assert (=> d!160823 (=> (not res!1062029) (not e!863044))))

(declare-fun lt!668214 () ListLongMap!22441)

(assert (=> d!160823 (= res!1062029 (contains!10105 lt!668214 (_1!12420 (ite (or c!142509 c!142510) (tuple2!24821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun lt!668215 () List!36310)

(assert (=> d!160823 (= lt!668214 (ListLongMap!22442 lt!668215))))

(declare-datatypes ((Unit!51578 0))(
  ( (Unit!51579) )
))
(declare-fun lt!668213 () Unit!51578)

(declare-fun lt!668216 () Unit!51578)

(assert (=> d!160823 (= lt!668213 lt!668216)))

(declare-datatypes ((Option!805 0))(
  ( (Some!804 (v!21950 V!59303)) (None!803) )
))
(declare-fun getValueByKey!730 (List!36310 (_ BitVec 64)) Option!805)

(assert (=> d!160823 (= (getValueByKey!730 lt!668215 (_1!12420 (ite (or c!142509 c!142510) (tuple2!24821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (Some!804 (_2!12420 (ite (or c!142509 c!142510) (tuple2!24821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!370 (List!36310 (_ BitVec 64) V!59303) Unit!51578)

(assert (=> d!160823 (= lt!668216 (lemmaContainsTupThenGetReturnValue!370 lt!668215 (_1!12420 (ite (or c!142509 c!142510) (tuple2!24821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12420 (ite (or c!142509 c!142510) (tuple2!24821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun insertStrictlySorted!499 (List!36310 (_ BitVec 64) V!59303) List!36310)

(assert (=> d!160823 (= lt!668215 (insertStrictlySorted!499 (toList!11236 (ite c!142509 call!70753 (ite c!142510 call!70751 call!70755))) (_1!12420 (ite (or c!142509 c!142510) (tuple2!24821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12420 (ite (or c!142509 c!142510) (tuple2!24821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!160823 (= (+!4946 (ite c!142509 call!70753 (ite c!142510 call!70751 call!70755)) (ite (or c!142509 c!142510) (tuple2!24821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!668214)))

(declare-fun b!1550376 () Bool)

(declare-fun res!1062028 () Bool)

(assert (=> b!1550376 (=> (not res!1062028) (not e!863044))))

(assert (=> b!1550376 (= res!1062028 (= (getValueByKey!730 (toList!11236 lt!668214) (_1!12420 (ite (or c!142509 c!142510) (tuple2!24821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (Some!804 (_2!12420 (ite (or c!142509 c!142510) (tuple2!24821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun b!1550377 () Bool)

(declare-fun contains!10106 (List!36310 tuple2!24820) Bool)

(assert (=> b!1550377 (= e!863044 (contains!10106 (toList!11236 lt!668214) (ite (or c!142509 c!142510) (tuple2!24821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!160823 res!1062029) b!1550376))

(assert (= (and b!1550376 res!1062028) b!1550377))

(declare-fun m!1429321 () Bool)

(assert (=> d!160823 m!1429321))

(declare-fun m!1429323 () Bool)

(assert (=> d!160823 m!1429323))

(declare-fun m!1429325 () Bool)

(assert (=> d!160823 m!1429325))

(declare-fun m!1429327 () Bool)

(assert (=> d!160823 m!1429327))

(declare-fun m!1429329 () Bool)

(assert (=> b!1550376 m!1429329))

(declare-fun m!1429331 () Bool)

(assert (=> b!1550377 m!1429331))

(assert (=> bm!70752 d!160823))

(declare-fun d!160825 () Bool)

(assert (=> d!160825 (= (validKeyInArray!0 (select (arr!49921 _keys!618) from!762)) (and (not (= (select (arr!49921 _keys!618) from!762) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49921 _keys!618) from!762) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1550316 d!160825))

(declare-fun bm!70770 () Bool)

(declare-fun call!70773 () Bool)

(assert (=> bm!70770 (= call!70773 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!618 mask!926))))

(declare-fun b!1550386 () Bool)

(declare-fun e!863053 () Bool)

(assert (=> b!1550386 (= e!863053 call!70773)))

(declare-fun b!1550387 () Bool)

(declare-fun e!863051 () Bool)

(declare-fun e!863052 () Bool)

(assert (=> b!1550387 (= e!863051 e!863052)))

(declare-fun c!142523 () Bool)

(assert (=> b!1550387 (= c!142523 (validKeyInArray!0 (select (arr!49921 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun d!160827 () Bool)

(declare-fun res!1062034 () Bool)

(assert (=> d!160827 (=> res!1062034 e!863051)))

(assert (=> d!160827 (= res!1062034 (bvsge #b00000000000000000000000000000000 (size!50472 _keys!618)))))

(assert (=> d!160827 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926) e!863051)))

(declare-fun b!1550388 () Bool)

(assert (=> b!1550388 (= e!863052 e!863053)))

(declare-fun lt!668225 () (_ BitVec 64))

(assert (=> b!1550388 (= lt!668225 (select (arr!49921 _keys!618) #b00000000000000000000000000000000))))

(declare-fun lt!668224 () Unit!51578)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!103447 (_ BitVec 64) (_ BitVec 32)) Unit!51578)

(assert (=> b!1550388 (= lt!668224 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!618 lt!668225 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!103447 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1550388 (arrayContainsKey!0 _keys!618 lt!668225 #b00000000000000000000000000000000)))

(declare-fun lt!668223 () Unit!51578)

(assert (=> b!1550388 (= lt!668223 lt!668224)))

(declare-fun res!1062035 () Bool)

(declare-datatypes ((SeekEntryResult!13510 0))(
  ( (MissingZero!13510 (index!56437 (_ BitVec 32))) (Found!13510 (index!56438 (_ BitVec 32))) (Intermediate!13510 (undefined!14322 Bool) (index!56439 (_ BitVec 32)) (x!139066 (_ BitVec 32))) (Undefined!13510) (MissingVacant!13510 (index!56440 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!103447 (_ BitVec 32)) SeekEntryResult!13510)

(assert (=> b!1550388 (= res!1062035 (= (seekEntryOrOpen!0 (select (arr!49921 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926) (Found!13510 #b00000000000000000000000000000000)))))

(assert (=> b!1550388 (=> (not res!1062035) (not e!863053))))

(declare-fun b!1550389 () Bool)

(assert (=> b!1550389 (= e!863052 call!70773)))

(assert (= (and d!160827 (not res!1062034)) b!1550387))

(assert (= (and b!1550387 c!142523) b!1550388))

(assert (= (and b!1550387 (not c!142523)) b!1550389))

(assert (= (and b!1550388 res!1062035) b!1550386))

(assert (= (or b!1550386 b!1550389) bm!70770))

(declare-fun m!1429333 () Bool)

(assert (=> bm!70770 m!1429333))

(declare-fun m!1429335 () Bool)

(assert (=> b!1550387 m!1429335))

(assert (=> b!1550387 m!1429335))

(declare-fun m!1429337 () Bool)

(assert (=> b!1550387 m!1429337))

(assert (=> b!1550388 m!1429335))

(declare-fun m!1429339 () Bool)

(assert (=> b!1550388 m!1429339))

(declare-fun m!1429341 () Bool)

(assert (=> b!1550388 m!1429341))

(assert (=> b!1550388 m!1429335))

(declare-fun m!1429343 () Bool)

(assert (=> b!1550388 m!1429343))

(assert (=> b!1550309 d!160827))

(declare-fun b!1550414 () Bool)

(declare-fun e!863068 () ListLongMap!22441)

(declare-fun e!863070 () ListLongMap!22441)

(assert (=> b!1550414 (= e!863068 e!863070)))

(declare-fun c!142535 () Bool)

(assert (=> b!1550414 (= c!142535 (validKeyInArray!0 (select (arr!49921 _keys!618) from!762)))))

(declare-fun b!1550415 () Bool)

(declare-fun e!863074 () Bool)

(assert (=> b!1550415 (= e!863074 (validKeyInArray!0 (select (arr!49921 _keys!618) from!762)))))

(assert (=> b!1550415 (bvsge from!762 #b00000000000000000000000000000000)))

(declare-fun b!1550417 () Bool)

(declare-fun e!863073 () Bool)

(declare-fun e!863069 () Bool)

(assert (=> b!1550417 (= e!863073 e!863069)))

(declare-fun c!142533 () Bool)

(assert (=> b!1550417 (= c!142533 (bvslt from!762 (size!50472 _keys!618)))))

(declare-fun b!1550418 () Bool)

(declare-fun res!1062047 () Bool)

(declare-fun e!863071 () Bool)

(assert (=> b!1550418 (=> (not res!1062047) (not e!863071))))

(declare-fun lt!668243 () ListLongMap!22441)

(assert (=> b!1550418 (= res!1062047 (not (contains!10105 lt!668243 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1550419 () Bool)

(assert (=> b!1550419 (= e!863071 e!863073)))

(declare-fun c!142532 () Bool)

(assert (=> b!1550419 (= c!142532 e!863074)))

(declare-fun res!1062046 () Bool)

(assert (=> b!1550419 (=> (not res!1062046) (not e!863074))))

(assert (=> b!1550419 (= res!1062046 (bvslt from!762 (size!50472 _keys!618)))))

(declare-fun call!70776 () ListLongMap!22441)

(declare-fun bm!70773 () Bool)

(assert (=> bm!70773 (= call!70776 (getCurrentListMapNoExtraKeys!6665 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001) defaultEntry!478))))

(declare-fun b!1550420 () Bool)

(declare-fun isEmpty!1130 (ListLongMap!22441) Bool)

(assert (=> b!1550420 (= e!863069 (isEmpty!1130 lt!668243))))

(declare-fun b!1550421 () Bool)

(assert (=> b!1550421 (= e!863070 call!70776)))

(declare-fun b!1550422 () Bool)

(assert (=> b!1550422 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50472 _keys!618)))))

(assert (=> b!1550422 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50473 _values!470)))))

(declare-fun e!863072 () Bool)

(declare-fun apply!1119 (ListLongMap!22441 (_ BitVec 64)) V!59303)

(declare-fun get!26035 (ValueCell!18162 V!59303) V!59303)

(declare-fun dynLambda!3870 (Int (_ BitVec 64)) V!59303)

(assert (=> b!1550422 (= e!863072 (= (apply!1119 lt!668243 (select (arr!49921 _keys!618) from!762)) (get!26035 (select (arr!49922 _values!470) from!762) (dynLambda!3870 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1550423 () Bool)

(declare-fun lt!668246 () Unit!51578)

(declare-fun lt!668240 () Unit!51578)

(assert (=> b!1550423 (= lt!668246 lt!668240)))

(declare-fun lt!668242 () (_ BitVec 64))

(declare-fun lt!668245 () V!59303)

(declare-fun lt!668241 () (_ BitVec 64))

(declare-fun lt!668244 () ListLongMap!22441)

(assert (=> b!1550423 (not (contains!10105 (+!4946 lt!668244 (tuple2!24821 lt!668242 lt!668245)) lt!668241))))

(declare-fun addStillNotContains!518 (ListLongMap!22441 (_ BitVec 64) V!59303 (_ BitVec 64)) Unit!51578)

(assert (=> b!1550423 (= lt!668240 (addStillNotContains!518 lt!668244 lt!668242 lt!668245 lt!668241))))

(assert (=> b!1550423 (= lt!668241 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1550423 (= lt!668245 (get!26035 (select (arr!49922 _values!470) from!762) (dynLambda!3870 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1550423 (= lt!668242 (select (arr!49921 _keys!618) from!762))))

(assert (=> b!1550423 (= lt!668244 call!70776)))

(assert (=> b!1550423 (= e!863070 (+!4946 call!70776 (tuple2!24821 (select (arr!49921 _keys!618) from!762) (get!26035 (select (arr!49922 _values!470) from!762) (dynLambda!3870 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1550416 () Bool)

(assert (=> b!1550416 (= e!863073 e!863072)))

(assert (=> b!1550416 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50472 _keys!618)))))

(declare-fun res!1062045 () Bool)

(assert (=> b!1550416 (= res!1062045 (contains!10105 lt!668243 (select (arr!49921 _keys!618) from!762)))))

(assert (=> b!1550416 (=> (not res!1062045) (not e!863072))))

(declare-fun d!160829 () Bool)

(assert (=> d!160829 e!863071))

(declare-fun res!1062044 () Bool)

(assert (=> d!160829 (=> (not res!1062044) (not e!863071))))

(assert (=> d!160829 (= res!1062044 (not (contains!10105 lt!668243 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!160829 (= lt!668243 e!863068)))

(declare-fun c!142534 () Bool)

(assert (=> d!160829 (= c!142534 (bvsge from!762 (size!50472 _keys!618)))))

(assert (=> d!160829 (validMask!0 mask!926)))

(assert (=> d!160829 (= (getCurrentListMapNoExtraKeys!6665 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478) lt!668243)))

(declare-fun b!1550424 () Bool)

(assert (=> b!1550424 (= e!863069 (= lt!668243 (getCurrentListMapNoExtraKeys!6665 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001) defaultEntry!478)))))

(declare-fun b!1550425 () Bool)

(assert (=> b!1550425 (= e!863068 (ListLongMap!22442 Nil!36307))))

(assert (= (and d!160829 c!142534) b!1550425))

(assert (= (and d!160829 (not c!142534)) b!1550414))

(assert (= (and b!1550414 c!142535) b!1550423))

(assert (= (and b!1550414 (not c!142535)) b!1550421))

(assert (= (or b!1550423 b!1550421) bm!70773))

(assert (= (and d!160829 res!1062044) b!1550418))

(assert (= (and b!1550418 res!1062047) b!1550419))

(assert (= (and b!1550419 res!1062046) b!1550415))

(assert (= (and b!1550419 c!142532) b!1550416))

(assert (= (and b!1550419 (not c!142532)) b!1550417))

(assert (= (and b!1550416 res!1062045) b!1550422))

(assert (= (and b!1550417 c!142533) b!1550424))

(assert (= (and b!1550417 (not c!142533)) b!1550420))

(declare-fun b_lambda!24765 () Bool)

(assert (=> (not b_lambda!24765) (not b!1550422)))

(declare-fun t!51027 () Bool)

(declare-fun tb!12483 () Bool)

(assert (=> (and start!132188 (= defaultEntry!478 defaultEntry!478) t!51027) tb!12483))

(declare-fun result!26069 () Bool)

(assert (=> tb!12483 (= result!26069 tp_is_empty!38145)))

(assert (=> b!1550422 t!51027))

(declare-fun b_and!51305 () Bool)

(assert (= b_and!51301 (and (=> t!51027 result!26069) b_and!51305)))

(declare-fun b_lambda!24767 () Bool)

(assert (=> (not b_lambda!24767) (not b!1550423)))

(assert (=> b!1550423 t!51027))

(declare-fun b_and!51307 () Bool)

(assert (= b_and!51305 (and (=> t!51027 result!26069) b_and!51307)))

(declare-fun m!1429345 () Bool)

(assert (=> b!1550420 m!1429345))

(assert (=> b!1550422 m!1429281))

(declare-fun m!1429347 () Bool)

(assert (=> b!1550422 m!1429347))

(assert (=> b!1550422 m!1429281))

(declare-fun m!1429349 () Bool)

(assert (=> b!1550422 m!1429349))

(declare-fun m!1429351 () Bool)

(assert (=> b!1550422 m!1429351))

(declare-fun m!1429353 () Bool)

(assert (=> b!1550422 m!1429353))

(assert (=> b!1550422 m!1429351))

(assert (=> b!1550422 m!1429349))

(assert (=> b!1550414 m!1429281))

(assert (=> b!1550414 m!1429281))

(assert (=> b!1550414 m!1429291))

(assert (=> b!1550416 m!1429281))

(assert (=> b!1550416 m!1429281))

(declare-fun m!1429355 () Bool)

(assert (=> b!1550416 m!1429355))

(declare-fun m!1429357 () Bool)

(assert (=> bm!70773 m!1429357))

(assert (=> b!1550415 m!1429281))

(assert (=> b!1550415 m!1429281))

(assert (=> b!1550415 m!1429291))

(declare-fun m!1429359 () Bool)

(assert (=> b!1550423 m!1429359))

(assert (=> b!1550423 m!1429281))

(declare-fun m!1429361 () Bool)

(assert (=> b!1550423 m!1429361))

(assert (=> b!1550423 m!1429349))

(assert (=> b!1550423 m!1429351))

(assert (=> b!1550423 m!1429353))

(declare-fun m!1429363 () Bool)

(assert (=> b!1550423 m!1429363))

(declare-fun m!1429365 () Bool)

(assert (=> b!1550423 m!1429365))

(assert (=> b!1550423 m!1429363))

(assert (=> b!1550423 m!1429351))

(assert (=> b!1550423 m!1429349))

(declare-fun m!1429367 () Bool)

(assert (=> b!1550418 m!1429367))

(assert (=> b!1550424 m!1429357))

(declare-fun m!1429369 () Bool)

(assert (=> d!160829 m!1429369))

(assert (=> d!160829 m!1429285))

(assert (=> bm!70749 d!160829))

(declare-fun d!160831 () Bool)

(declare-fun e!863079 () Bool)

(assert (=> d!160831 e!863079))

(declare-fun res!1062050 () Bool)

(assert (=> d!160831 (=> res!1062050 e!863079)))

(declare-fun lt!668255 () Bool)

(assert (=> d!160831 (= res!1062050 (not lt!668255))))

(declare-fun lt!668257 () Bool)

(assert (=> d!160831 (= lt!668255 lt!668257)))

(declare-fun lt!668258 () Unit!51578)

(declare-fun e!863080 () Unit!51578)

(assert (=> d!160831 (= lt!668258 e!863080)))

(declare-fun c!142538 () Bool)

(assert (=> d!160831 (= c!142538 lt!668257)))

(declare-fun containsKey!748 (List!36310 (_ BitVec 64)) Bool)

(assert (=> d!160831 (= lt!668257 (containsKey!748 (toList!11236 (getCurrentListMapNoExtraKeys!6665 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478)) (select (arr!49921 _keys!618) from!762)))))

(assert (=> d!160831 (= (contains!10105 (getCurrentListMapNoExtraKeys!6665 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478) (select (arr!49921 _keys!618) from!762)) lt!668255)))

(declare-fun b!1550434 () Bool)

(declare-fun lt!668256 () Unit!51578)

(assert (=> b!1550434 (= e!863080 lt!668256)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!493 (List!36310 (_ BitVec 64)) Unit!51578)

(assert (=> b!1550434 (= lt!668256 (lemmaContainsKeyImpliesGetValueByKeyDefined!493 (toList!11236 (getCurrentListMapNoExtraKeys!6665 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478)) (select (arr!49921 _keys!618) from!762)))))

(declare-fun isDefined!542 (Option!805) Bool)

(assert (=> b!1550434 (isDefined!542 (getValueByKey!730 (toList!11236 (getCurrentListMapNoExtraKeys!6665 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478)) (select (arr!49921 _keys!618) from!762)))))

(declare-fun b!1550435 () Bool)

(declare-fun Unit!51580 () Unit!51578)

(assert (=> b!1550435 (= e!863080 Unit!51580)))

(declare-fun b!1550436 () Bool)

(assert (=> b!1550436 (= e!863079 (isDefined!542 (getValueByKey!730 (toList!11236 (getCurrentListMapNoExtraKeys!6665 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478)) (select (arr!49921 _keys!618) from!762))))))

(assert (= (and d!160831 c!142538) b!1550434))

(assert (= (and d!160831 (not c!142538)) b!1550435))

(assert (= (and d!160831 (not res!1062050)) b!1550436))

(assert (=> d!160831 m!1429281))

(declare-fun m!1429371 () Bool)

(assert (=> d!160831 m!1429371))

(assert (=> b!1550434 m!1429281))

(declare-fun m!1429373 () Bool)

(assert (=> b!1550434 m!1429373))

(assert (=> b!1550434 m!1429281))

(declare-fun m!1429375 () Bool)

(assert (=> b!1550434 m!1429375))

(assert (=> b!1550434 m!1429375))

(declare-fun m!1429377 () Bool)

(assert (=> b!1550434 m!1429377))

(assert (=> b!1550436 m!1429281))

(assert (=> b!1550436 m!1429375))

(assert (=> b!1550436 m!1429375))

(assert (=> b!1550436 m!1429377))

(assert (=> b!1550321 d!160831))

(assert (=> b!1550321 d!160829))

(declare-fun d!160833 () Bool)

(declare-fun e!863081 () Bool)

(assert (=> d!160833 e!863081))

(declare-fun res!1062052 () Bool)

(assert (=> d!160833 (=> (not res!1062052) (not e!863081))))

(declare-fun lt!668260 () ListLongMap!22441)

(assert (=> d!160833 (= res!1062052 (contains!10105 lt!668260 (_1!12420 (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lt!668261 () List!36310)

(assert (=> d!160833 (= lt!668260 (ListLongMap!22442 lt!668261))))

(declare-fun lt!668259 () Unit!51578)

(declare-fun lt!668262 () Unit!51578)

(assert (=> d!160833 (= lt!668259 lt!668262)))

(assert (=> d!160833 (= (getValueByKey!730 lt!668261 (_1!12420 (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!804 (_2!12420 (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160833 (= lt!668262 (lemmaContainsTupThenGetReturnValue!370 lt!668261 (_1!12420 (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12420 (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160833 (= lt!668261 (insertStrictlySorted!499 (toList!11236 call!70752) (_1!12420 (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12420 (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160833 (= (+!4946 call!70752 (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) lt!668260)))

(declare-fun b!1550437 () Bool)

(declare-fun res!1062051 () Bool)

(assert (=> b!1550437 (=> (not res!1062051) (not e!863081))))

(assert (=> b!1550437 (= res!1062051 (= (getValueByKey!730 (toList!11236 lt!668260) (_1!12420 (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!804 (_2!12420 (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1550438 () Bool)

(assert (=> b!1550438 (= e!863081 (contains!10106 (toList!11236 lt!668260) (tuple2!24821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(assert (= (and d!160833 res!1062052) b!1550437))

(assert (= (and b!1550437 res!1062051) b!1550438))

(declare-fun m!1429379 () Bool)

(assert (=> d!160833 m!1429379))

(declare-fun m!1429381 () Bool)

(assert (=> d!160833 m!1429381))

(declare-fun m!1429383 () Bool)

(assert (=> d!160833 m!1429383))

(declare-fun m!1429385 () Bool)

(assert (=> d!160833 m!1429385))

(declare-fun m!1429387 () Bool)

(assert (=> b!1550437 m!1429387))

(declare-fun m!1429389 () Bool)

(assert (=> b!1550438 m!1429389))

(assert (=> b!1550320 d!160833))

(declare-fun b!1550449 () Bool)

(declare-fun e!863092 () Bool)

(declare-fun contains!10107 (List!36311 (_ BitVec 64)) Bool)

(assert (=> b!1550449 (= e!863092 (contains!10107 Nil!36308 (select (arr!49921 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1550450 () Bool)

(declare-fun e!863090 () Bool)

(declare-fun e!863091 () Bool)

(assert (=> b!1550450 (= e!863090 e!863091)))

(declare-fun res!1062060 () Bool)

(assert (=> b!1550450 (=> (not res!1062060) (not e!863091))))

(assert (=> b!1550450 (= res!1062060 (not e!863092))))

(declare-fun res!1062061 () Bool)

(assert (=> b!1550450 (=> (not res!1062061) (not e!863092))))

(assert (=> b!1550450 (= res!1062061 (validKeyInArray!0 (select (arr!49921 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1550451 () Bool)

(declare-fun e!863093 () Bool)

(declare-fun call!70779 () Bool)

(assert (=> b!1550451 (= e!863093 call!70779)))

(declare-fun b!1550452 () Bool)

(assert (=> b!1550452 (= e!863091 e!863093)))

(declare-fun c!142541 () Bool)

(assert (=> b!1550452 (= c!142541 (validKeyInArray!0 (select (arr!49921 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun bm!70776 () Bool)

(assert (=> bm!70776 (= call!70779 (arrayNoDuplicates!0 _keys!618 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!142541 (Cons!36307 (select (arr!49921 _keys!618) #b00000000000000000000000000000000) Nil!36308) Nil!36308)))))

(declare-fun d!160835 () Bool)

(declare-fun res!1062059 () Bool)

(assert (=> d!160835 (=> res!1062059 e!863090)))

(assert (=> d!160835 (= res!1062059 (bvsge #b00000000000000000000000000000000 (size!50472 _keys!618)))))

(assert (=> d!160835 (= (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36308) e!863090)))

(declare-fun b!1550453 () Bool)

(assert (=> b!1550453 (= e!863093 call!70779)))

(assert (= (and d!160835 (not res!1062059)) b!1550450))

(assert (= (and b!1550450 res!1062061) b!1550449))

(assert (= (and b!1550450 res!1062060) b!1550452))

(assert (= (and b!1550452 c!142541) b!1550451))

(assert (= (and b!1550452 (not c!142541)) b!1550453))

(assert (= (or b!1550451 b!1550453) bm!70776))

(assert (=> b!1550449 m!1429335))

(assert (=> b!1550449 m!1429335))

(declare-fun m!1429391 () Bool)

(assert (=> b!1550449 m!1429391))

(assert (=> b!1550450 m!1429335))

(assert (=> b!1550450 m!1429335))

(assert (=> b!1550450 m!1429337))

(assert (=> b!1550452 m!1429335))

(assert (=> b!1550452 m!1429335))

(assert (=> b!1550452 m!1429337))

(assert (=> bm!70776 m!1429335))

(declare-fun m!1429393 () Bool)

(assert (=> bm!70776 m!1429393))

(assert (=> b!1550322 d!160835))

(declare-fun d!160837 () Bool)

(assert (=> d!160837 (= (validMask!0 mask!926) (and (or (= mask!926 #b00000000000000000000000000000111) (= mask!926 #b00000000000000000000000000001111) (= mask!926 #b00000000000000000000000000011111) (= mask!926 #b00000000000000000000000000111111) (= mask!926 #b00000000000000000000000001111111) (= mask!926 #b00000000000000000000000011111111) (= mask!926 #b00000000000000000000000111111111) (= mask!926 #b00000000000000000000001111111111) (= mask!926 #b00000000000000000000011111111111) (= mask!926 #b00000000000000000000111111111111) (= mask!926 #b00000000000000000001111111111111) (= mask!926 #b00000000000000000011111111111111) (= mask!926 #b00000000000000000111111111111111) (= mask!926 #b00000000000000001111111111111111) (= mask!926 #b00000000000000011111111111111111) (= mask!926 #b00000000000000111111111111111111) (= mask!926 #b00000000000001111111111111111111) (= mask!926 #b00000000000011111111111111111111) (= mask!926 #b00000000000111111111111111111111) (= mask!926 #b00000000001111111111111111111111) (= mask!926 #b00000000011111111111111111111111) (= mask!926 #b00000000111111111111111111111111) (= mask!926 #b00000001111111111111111111111111) (= mask!926 #b00000011111111111111111111111111) (= mask!926 #b00000111111111111111111111111111) (= mask!926 #b00001111111111111111111111111111) (= mask!926 #b00011111111111111111111111111111) (= mask!926 #b00111111111111111111111111111111)) (bvsle mask!926 #b00111111111111111111111111111111)))))

(assert (=> start!132188 d!160837))

(declare-fun d!160839 () Bool)

(assert (=> d!160839 (= (array_inv!38737 _keys!618) (bvsge (size!50472 _keys!618) #b00000000000000000000000000000000))))

(assert (=> start!132188 d!160839))

(declare-fun d!160841 () Bool)

(assert (=> d!160841 (= (array_inv!38738 _values!470) (bvsge (size!50473 _values!470) #b00000000000000000000000000000000))))

(assert (=> start!132188 d!160841))

(declare-fun b!1550461 () Bool)

(declare-fun e!863099 () Bool)

(assert (=> b!1550461 (= e!863099 tp_is_empty!38145)))

(declare-fun mapIsEmpty!58927 () Bool)

(declare-fun mapRes!58927 () Bool)

(assert (=> mapIsEmpty!58927 mapRes!58927))

(declare-fun b!1550460 () Bool)

(declare-fun e!863098 () Bool)

(assert (=> b!1550460 (= e!863098 tp_is_empty!38145)))

(declare-fun mapNonEmpty!58927 () Bool)

(declare-fun tp!111869 () Bool)

(assert (=> mapNonEmpty!58927 (= mapRes!58927 (and tp!111869 e!863098))))

(declare-fun mapRest!58927 () (Array (_ BitVec 32) ValueCell!18162))

(declare-fun mapValue!58927 () ValueCell!18162)

(declare-fun mapKey!58927 () (_ BitVec 32))

(assert (=> mapNonEmpty!58927 (= mapRest!58921 (store mapRest!58927 mapKey!58927 mapValue!58927))))

(declare-fun condMapEmpty!58927 () Bool)

(declare-fun mapDefault!58927 () ValueCell!18162)

(assert (=> mapNonEmpty!58921 (= condMapEmpty!58927 (= mapRest!58921 ((as const (Array (_ BitVec 32) ValueCell!18162)) mapDefault!58927)))))

(assert (=> mapNonEmpty!58921 (= tp!111859 (and e!863099 mapRes!58927))))

(assert (= (and mapNonEmpty!58921 condMapEmpty!58927) mapIsEmpty!58927))

(assert (= (and mapNonEmpty!58921 (not condMapEmpty!58927)) mapNonEmpty!58927))

(assert (= (and mapNonEmpty!58927 ((_ is ValueCellFull!18162) mapValue!58927)) b!1550460))

(assert (= (and mapNonEmpty!58921 ((_ is ValueCellFull!18162) mapDefault!58927)) b!1550461))

(declare-fun m!1429395 () Bool)

(assert (=> mapNonEmpty!58927 m!1429395))

(declare-fun b_lambda!24769 () Bool)

(assert (= b_lambda!24765 (or (and start!132188 b_free!31869) b_lambda!24769)))

(declare-fun b_lambda!24771 () Bool)

(assert (= b_lambda!24767 (or (and start!132188 b_free!31869) b_lambda!24771)))

(check-sat (not b!1550388) (not b!1550437) (not d!160831) (not b!1550449) (not b!1550414) (not bm!70773) (not b_lambda!24769) (not b!1550452) (not b!1550376) (not b!1550422) (not b!1550450) (not bm!70776) (not b_lambda!24771) (not b!1550420) (not d!160829) (not b!1550415) (not d!160823) (not b!1550424) tp_is_empty!38145 (not b!1550377) (not bm!70770) (not b!1550434) (not b_next!31869) (not b!1550418) (not b!1550438) b_and!51307 (not d!160833) (not b!1550436) (not b!1550416) (not mapNonEmpty!58927) (not b!1550387) (not b!1550423))
(check-sat b_and!51307 (not b_next!31869))
