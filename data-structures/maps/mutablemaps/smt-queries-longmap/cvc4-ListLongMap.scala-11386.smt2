; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132342 () Bool)

(assert start!132342)

(declare-fun b_free!31937 () Bool)

(declare-fun b_next!31937 () Bool)

(assert (=> start!132342 (= b_free!31937 (not b_next!31937))))

(declare-fun tp!112076 () Bool)

(declare-fun b_and!51389 () Bool)

(assert (=> start!132342 (= tp!112076 b_and!51389)))

(declare-fun b!1552513 () Bool)

(declare-fun e!864332 () Bool)

(declare-fun call!71319 () Bool)

(assert (=> b!1552513 (= e!864332 call!71319)))

(declare-fun bm!71310 () Bool)

(declare-fun call!71318 () Bool)

(declare-datatypes ((V!59393 0))(
  ( (V!59394 (val!19184 Int)) )
))
(declare-datatypes ((tuple2!24884 0))(
  ( (tuple2!24885 (_1!12452 (_ BitVec 64)) (_2!12452 V!59393)) )
))
(declare-datatypes ((List!36363 0))(
  ( (Nil!36360) (Cons!36359 (h!37805 tuple2!24884) (t!51090 List!36363)) )
))
(declare-datatypes ((ListLongMap!22505 0))(
  ( (ListLongMap!22506 (toList!11268 List!36363)) )
))
(declare-fun lt!669285 () ListLongMap!22505)

(declare-fun contains!10138 (ListLongMap!22505 (_ BitVec 64)) Bool)

(assert (=> bm!71310 (= call!71318 (contains!10138 lt!669285 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!71311 () Bool)

(assert (=> bm!71311 (= call!71319 (contains!10138 lt!669285 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1552514 () Bool)

(declare-fun res!1062947 () Bool)

(declare-fun e!864322 () Bool)

(assert (=> b!1552514 (=> (not res!1062947) (not e!864322))))

(declare-datatypes ((array!103585 0))(
  ( (array!103586 (arr!49986 (Array (_ BitVec 32) (_ BitVec 64))) (size!50537 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103585)

(declare-datatypes ((List!36364 0))(
  ( (Nil!36361) (Cons!36360 (h!37806 (_ BitVec 64)) (t!51091 List!36364)) )
))
(declare-fun arrayNoDuplicates!0 (array!103585 (_ BitVec 32) List!36364) Bool)

(assert (=> b!1552514 (= res!1062947 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36361))))

(declare-fun b!1552515 () Bool)

(declare-fun e!864320 () Bool)

(declare-fun e!864335 () Bool)

(assert (=> b!1552515 (= e!864320 e!864335)))

(declare-fun c!142965 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1552515 (= c!142965 (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1552516 () Bool)

(declare-fun c!142966 () Bool)

(declare-fun lt!669291 () Bool)

(assert (=> b!1552516 (= c!142966 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!669291))))

(declare-fun e!864329 () ListLongMap!22505)

(declare-fun e!864321 () ListLongMap!22505)

(assert (=> b!1552516 (= e!864329 e!864321)))

(declare-fun b!1552517 () Bool)

(declare-fun res!1062941 () Bool)

(assert (=> b!1552517 (=> (not res!1062941) (not e!864322))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18196 0))(
  ( (ValueCellFull!18196 (v!21986 V!59393)) (EmptyCell!18196) )
))
(declare-datatypes ((array!103587 0))(
  ( (array!103588 (arr!49987 (Array (_ BitVec 32) ValueCell!18196)) (size!50538 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103587)

(assert (=> b!1552517 (= res!1062941 (and (= (size!50538 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50537 _keys!618) (size!50538 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!71312 () Bool)

(declare-fun call!71317 () ListLongMap!22505)

(declare-fun call!71314 () ListLongMap!22505)

(assert (=> bm!71312 (= call!71317 call!71314)))

(declare-fun b!1552518 () Bool)

(declare-fun e!864323 () Bool)

(declare-fun minValue!436 () V!59393)

(declare-fun apply!1141 (ListLongMap!22505 (_ BitVec 64)) V!59393)

(assert (=> b!1552518 (= e!864323 (not (= (apply!1141 lt!669285 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!436)))))

(declare-fun from!762 () (_ BitVec 32))

(declare-fun e!864334 () Bool)

(declare-fun b!1552519 () Bool)

(declare-fun defaultEntry!478 () Int)

(declare-fun get!26064 (ValueCell!18196 V!59393) V!59393)

(declare-fun dynLambda!3875 (Int (_ BitVec 64)) V!59393)

(assert (=> b!1552519 (= e!864334 (not (= (apply!1141 lt!669285 (select (arr!49986 _keys!618) from!762)) (get!26064 (select (arr!49987 _values!470) from!762) (dynLambda!3875 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapNonEmpty!59035 () Bool)

(declare-fun mapRes!59035 () Bool)

(declare-fun tp!112075 () Bool)

(declare-fun e!864333 () Bool)

(assert (=> mapNonEmpty!59035 (= mapRes!59035 (and tp!112075 e!864333))))

(declare-fun mapValue!59035 () ValueCell!18196)

(declare-fun mapRest!59035 () (Array (_ BitVec 32) ValueCell!18196))

(declare-fun mapKey!59035 () (_ BitVec 32))

(assert (=> mapNonEmpty!59035 (= (arr!49987 _values!470) (store mapRest!59035 mapKey!59035 mapValue!59035))))

(declare-fun b!1552520 () Bool)

(assert (=> b!1552520 (= e!864321 call!71317)))

(declare-fun b!1552521 () Bool)

(assert (=> b!1552521 (= e!864335 call!71318)))

(declare-fun zeroValue!436 () V!59393)

(declare-fun call!71315 () ListLongMap!22505)

(declare-fun bm!71313 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6691 (array!103585 array!103587 (_ BitVec 32) (_ BitVec 32) V!59393 V!59393 (_ BitVec 32) Int) ListLongMap!22505)

(assert (=> bm!71313 (= call!71315 (getCurrentListMapNoExtraKeys!6691 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1552522 () Bool)

(declare-fun res!1062948 () Bool)

(assert (=> b!1552522 (=> res!1062948 e!864320)))

(assert (=> b!1552522 (= res!1062948 e!864332)))

(declare-fun c!142964 () Bool)

(assert (=> b!1552522 (= c!142964 (not lt!669291))))

(declare-fun b!1552524 () Bool)

(declare-fun e!864331 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1552524 (= e!864331 (not (validKeyInArray!0 (select (arr!49986 _keys!618) from!762))))))

(declare-fun b!1552525 () Bool)

(declare-datatypes ((Unit!51645 0))(
  ( (Unit!51646) )
))
(declare-fun e!864326 () Unit!51645)

(declare-fun Unit!51647 () Unit!51645)

(assert (=> b!1552525 (= e!864326 Unit!51647)))

(declare-fun b!1552526 () Bool)

(declare-fun e!864328 () Bool)

(assert (=> b!1552526 (= e!864328 (not (= (apply!1141 lt!669285 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!436)))))

(declare-fun b!1552527 () Bool)

(assert (=> b!1552527 (= e!864329 call!71317)))

(declare-fun bm!71314 () Bool)

(declare-fun call!71316 () ListLongMap!22505)

(assert (=> bm!71314 (= call!71316 call!71315)))

(declare-fun b!1552528 () Bool)

(declare-fun tp_is_empty!38213 () Bool)

(assert (=> b!1552528 (= e!864333 tp_is_empty!38213)))

(declare-fun bm!71315 () Bool)

(declare-fun call!71313 () ListLongMap!22505)

(declare-fun c!142962 () Bool)

(declare-fun c!142963 () Bool)

(declare-fun +!4974 (ListLongMap!22505 tuple2!24884) ListLongMap!22505)

(assert (=> bm!71315 (= call!71314 (+!4974 (ite c!142962 call!71315 (ite c!142963 call!71316 call!71313)) (ite (or c!142962 c!142963) (tuple2!24885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24885 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552529 () Bool)

(assert (=> b!1552529 (= e!864322 e!864320)))

(declare-fun res!1062942 () Bool)

(assert (=> b!1552529 (=> res!1062942 e!864320)))

(declare-fun e!864330 () Bool)

(assert (=> b!1552529 (= res!1062942 e!864330)))

(declare-fun res!1062944 () Bool)

(assert (=> b!1552529 (=> (not res!1062944) (not e!864330))))

(declare-fun lt!669287 () Bool)

(assert (=> b!1552529 (= res!1062944 (not lt!669287))))

(declare-fun lt!669288 () Unit!51645)

(assert (=> b!1552529 (= lt!669288 e!864326)))

(declare-fun c!142967 () Bool)

(assert (=> b!1552529 (= c!142967 (not lt!669287))))

(assert (=> b!1552529 (= lt!669287 e!864331)))

(declare-fun res!1062940 () Bool)

(assert (=> b!1552529 (=> res!1062940 e!864331)))

(assert (=> b!1552529 (= res!1062940 (bvsge from!762 (size!50537 _keys!618)))))

(declare-fun e!864327 () ListLongMap!22505)

(assert (=> b!1552529 (= lt!669285 e!864327)))

(assert (=> b!1552529 (= c!142962 (and (not lt!669291) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1552529 (= lt!669291 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1552530 () Bool)

(assert (=> b!1552530 (= e!864335 e!864323)))

(declare-fun res!1062946 () Bool)

(assert (=> b!1552530 (= res!1062946 (not call!71318))))

(assert (=> b!1552530 (=> res!1062946 e!864323)))

(declare-fun b!1552531 () Bool)

(assert (=> b!1552531 (= e!864321 call!71313)))

(declare-fun b!1552532 () Bool)

(declare-fun res!1062950 () Bool)

(assert (=> b!1552532 (=> (not res!1062950) (not e!864322))))

(assert (=> b!1552532 (= res!1062950 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50537 _keys!618))))))

(declare-fun b!1552533 () Bool)

(declare-fun lt!669290 () Unit!51645)

(assert (=> b!1552533 (= e!864326 lt!669290)))

(declare-fun lt!669284 () ListLongMap!22505)

(assert (=> b!1552533 (= lt!669284 (getCurrentListMapNoExtraKeys!6691 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!669294 () Unit!51645)

(declare-fun addStillContains!1309 (ListLongMap!22505 (_ BitVec 64) V!59393 (_ BitVec 64)) Unit!51645)

(assert (=> b!1552533 (= lt!669294 (addStillContains!1309 lt!669284 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49986 _keys!618) from!762)))))

(declare-fun lt!669286 () ListLongMap!22505)

(assert (=> b!1552533 (= lt!669286 (+!4974 lt!669284 (tuple2!24885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(assert (=> b!1552533 (contains!10138 lt!669286 (select (arr!49986 _keys!618) from!762))))

(declare-fun addApplyDifferent!642 (ListLongMap!22505 (_ BitVec 64) V!59393 (_ BitVec 64)) Unit!51645)

(assert (=> b!1552533 (= lt!669290 (addApplyDifferent!642 lt!669284 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49986 _keys!618) from!762)))))

(declare-fun lt!669292 () V!59393)

(assert (=> b!1552533 (= lt!669292 (apply!1141 (+!4974 lt!669284 (tuple2!24885 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49986 _keys!618) from!762)))))

(declare-fun lt!669293 () V!59393)

(assert (=> b!1552533 (= lt!669293 (apply!1141 lt!669284 (select (arr!49986 _keys!618) from!762)))))

(assert (=> b!1552533 (= lt!669292 lt!669293)))

(declare-fun lt!669289 () Unit!51645)

(assert (=> b!1552533 (= lt!669289 (addApplyDifferent!642 lt!669284 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49986 _keys!618) from!762)))))

(assert (=> b!1552533 (= (apply!1141 lt!669286 (select (arr!49986 _keys!618) from!762)) lt!669293)))

(declare-fun b!1552534 () Bool)

(assert (=> b!1552534 (= e!864327 (+!4974 call!71314 (tuple2!24885 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1552535 () Bool)

(assert (=> b!1552535 (= e!864330 e!864334)))

(declare-fun res!1062943 () Bool)

(assert (=> b!1552535 (=> res!1062943 e!864334)))

(assert (=> b!1552535 (= res!1062943 (not (contains!10138 lt!669285 (select (arr!49986 _keys!618) from!762))))))

(declare-fun b!1552536 () Bool)

(declare-fun res!1062951 () Bool)

(assert (=> b!1552536 (=> (not res!1062951) (not e!864322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103585 (_ BitVec 32)) Bool)

(assert (=> b!1552536 (= res!1062951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!71316 () Bool)

(assert (=> bm!71316 (= call!71313 call!71316)))

(declare-fun b!1552537 () Bool)

(declare-fun e!864319 () Bool)

(assert (=> b!1552537 (= e!864319 tp_is_empty!38213)))

(declare-fun b!1552538 () Bool)

(declare-fun e!864324 () Bool)

(assert (=> b!1552538 (= e!864324 (and e!864319 mapRes!59035))))

(declare-fun condMapEmpty!59035 () Bool)

(declare-fun mapDefault!59035 () ValueCell!18196)

