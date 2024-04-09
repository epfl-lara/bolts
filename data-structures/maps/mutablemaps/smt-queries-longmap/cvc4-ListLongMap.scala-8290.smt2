; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101052 () Bool)

(assert start!101052)

(declare-fun b_free!26015 () Bool)

(declare-fun b_next!26015 () Bool)

(assert (=> start!101052 (= b_free!26015 (not b_next!26015))))

(declare-fun tp!91062 () Bool)

(declare-fun b_and!43121 () Bool)

(assert (=> start!101052 (= tp!91062 b_and!43121)))

(declare-fun bm!59616 () Bool)

(declare-datatypes ((V!46085 0))(
  ( (V!46086 (val!15416 Int)) )
))
(declare-datatypes ((tuple2!19932 0))(
  ( (tuple2!19933 (_1!9976 (_ BitVec 64)) (_2!9976 V!46085)) )
))
(declare-datatypes ((List!26752 0))(
  ( (Nil!26749) (Cons!26748 (h!27957 tuple2!19932) (t!39754 List!26752)) )
))
(declare-datatypes ((ListLongMap!17913 0))(
  ( (ListLongMap!17914 (toList!8972 List!26752)) )
))
(declare-fun call!59621 () ListLongMap!17913)

(declare-fun call!59626 () ListLongMap!17913)

(assert (=> bm!59616 (= call!59621 call!59626)))

(declare-fun b!1210317 () Bool)

(declare-fun e!687413 () Bool)

(declare-fun e!687408 () Bool)

(assert (=> b!1210317 (= e!687413 e!687408)))

(declare-fun res!804330 () Bool)

(assert (=> b!1210317 (=> res!804330 e!687408)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1210317 (= res!804330 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46085)

(declare-datatypes ((ValueCell!14650 0))(
  ( (ValueCellFull!14650 (v!18068 V!46085)) (EmptyCell!14650) )
))
(declare-datatypes ((array!78198 0))(
  ( (array!78199 (arr!37732 (Array (_ BitVec 32) ValueCell!14650)) (size!38269 (_ BitVec 32))) )
))
(declare-fun lt!549487 () array!78198)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!549497 () ListLongMap!17913)

(declare-fun minValue!944 () V!46085)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!78200 0))(
  ( (array!78201 (arr!37733 (Array (_ BitVec 32) (_ BitVec 64))) (size!38270 (_ BitVec 32))) )
))
(declare-fun lt!549483 () array!78200)

(declare-fun getCurrentListMapNoExtraKeys!5378 (array!78200 array!78198 (_ BitVec 32) (_ BitVec 32) V!46085 V!46085 (_ BitVec 32) Int) ListLongMap!17913)

(assert (=> b!1210317 (= lt!549497 (getCurrentListMapNoExtraKeys!5378 lt!549483 lt!549487 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78198)

(declare-fun dynLambda!3294 (Int (_ BitVec 64)) V!46085)

(assert (=> b!1210317 (= lt!549487 (array!78199 (store (arr!37732 _values!996) i!673 (ValueCellFull!14650 (dynLambda!3294 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38269 _values!996)))))

(declare-fun _keys!1208 () array!78200)

(declare-fun lt!549489 () ListLongMap!17913)

(assert (=> b!1210317 (= lt!549489 (getCurrentListMapNoExtraKeys!5378 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1210318 () Bool)

(declare-fun e!687412 () Bool)

(assert (=> b!1210318 (= e!687412 (bvslt from!1455 (size!38269 _values!996)))))

(declare-datatypes ((Unit!40041 0))(
  ( (Unit!40042) )
))
(declare-fun lt!549495 () Unit!40041)

(declare-fun e!687414 () Unit!40041)

(assert (=> b!1210318 (= lt!549495 e!687414)))

(declare-fun c!119191 () Bool)

(declare-fun lt!549482 () ListLongMap!17913)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6985 (ListLongMap!17913 (_ BitVec 64)) Bool)

(assert (=> b!1210318 (= c!119191 (contains!6985 lt!549482 k!934))))

(assert (=> b!1210318 (= lt!549482 (getCurrentListMapNoExtraKeys!5378 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!47947 () Bool)

(declare-fun mapRes!47947 () Bool)

(declare-fun tp!91061 () Bool)

(declare-fun e!687418 () Bool)

(assert (=> mapNonEmpty!47947 (= mapRes!47947 (and tp!91061 e!687418))))

(declare-fun mapRest!47947 () (Array (_ BitVec 32) ValueCell!14650))

(declare-fun mapValue!47947 () ValueCell!14650)

(declare-fun mapKey!47947 () (_ BitVec 32))

(assert (=> mapNonEmpty!47947 (= (arr!37732 _values!996) (store mapRest!47947 mapKey!47947 mapValue!47947))))

(declare-fun b!1210319 () Bool)

(declare-fun call!59622 () Bool)

(assert (=> b!1210319 call!59622))

(declare-fun lt!549486 () Unit!40041)

(declare-fun call!59620 () Unit!40041)

(assert (=> b!1210319 (= lt!549486 call!59620)))

(declare-fun e!687416 () Unit!40041)

(assert (=> b!1210319 (= e!687416 lt!549486)))

(declare-fun lt!549491 () Bool)

(declare-fun b!1210320 () Bool)

(declare-fun e!687405 () Bool)

(assert (=> b!1210320 (= e!687405 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!549491) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!59617 () Bool)

(declare-fun call!59625 () Bool)

(assert (=> bm!59617 (= call!59622 call!59625)))

(declare-fun b!1210321 () Bool)

(declare-fun e!687410 () Unit!40041)

(assert (=> b!1210321 (= e!687410 e!687416)))

(declare-fun c!119193 () Bool)

(assert (=> b!1210321 (= c!119193 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!549491))))

(declare-fun b!1210322 () Bool)

(declare-fun Unit!40043 () Unit!40041)

(assert (=> b!1210322 (= e!687414 Unit!40043)))

(assert (=> b!1210322 (= lt!549491 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!119194 () Bool)

(assert (=> b!1210322 (= c!119194 (and (not lt!549491) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!549496 () Unit!40041)

(declare-fun e!687409 () Unit!40041)

(assert (=> b!1210322 (= lt!549496 e!687409)))

(declare-fun lt!549493 () Unit!40041)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!599 (array!78200 array!78198 (_ BitVec 32) (_ BitVec 32) V!46085 V!46085 (_ BitVec 64) (_ BitVec 32) Int) Unit!40041)

(assert (=> b!1210322 (= lt!549493 (lemmaListMapContainsThenArrayContainsFrom!599 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119196 () Bool)

(assert (=> b!1210322 (= c!119196 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!804336 () Bool)

(assert (=> b!1210322 (= res!804336 e!687405)))

(declare-fun e!687415 () Bool)

(assert (=> b!1210322 (=> (not res!804336) (not e!687415))))

(assert (=> b!1210322 e!687415))

(declare-fun lt!549492 () Unit!40041)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78200 (_ BitVec 32) (_ BitVec 32)) Unit!40041)

(assert (=> b!1210322 (= lt!549492 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26753 0))(
  ( (Nil!26750) (Cons!26749 (h!27958 (_ BitVec 64)) (t!39755 List!26753)) )
))
(declare-fun arrayNoDuplicates!0 (array!78200 (_ BitVec 32) List!26753) Bool)

(assert (=> b!1210322 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26750)))

(declare-fun lt!549488 () Unit!40041)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78200 (_ BitVec 64) (_ BitVec 32) List!26753) Unit!40041)

(assert (=> b!1210322 (= lt!549488 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26750))))

(assert (=> b!1210322 false))

(declare-fun b!1210323 () Bool)

(declare-fun lt!549498 () Unit!40041)

(assert (=> b!1210323 (= e!687410 lt!549498)))

(assert (=> b!1210323 (= lt!549498 call!59620)))

(assert (=> b!1210323 call!59622))

(declare-fun b!1210324 () Bool)

(declare-fun res!804337 () Bool)

(declare-fun e!687404 () Bool)

(assert (=> b!1210324 (=> (not res!804337) (not e!687404))))

(assert (=> b!1210324 (= res!804337 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38270 _keys!1208))))))

(declare-fun bm!59618 () Bool)

(declare-fun call!59624 () Unit!40041)

(assert (=> bm!59618 (= call!59620 call!59624)))

(declare-fun b!1210325 () Bool)

(assert (=> b!1210325 (= e!687408 e!687412)))

(declare-fun res!804331 () Bool)

(assert (=> b!1210325 (=> res!804331 e!687412)))

(assert (=> b!1210325 (= res!804331 (not (= (select (arr!37733 _keys!1208) from!1455) k!934)))))

(declare-fun e!687407 () Bool)

(assert (=> b!1210325 e!687407))

(declare-fun c!119192 () Bool)

(assert (=> b!1210325 (= c!119192 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!549484 () Unit!40041)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1079 (array!78200 array!78198 (_ BitVec 32) (_ BitVec 32) V!46085 V!46085 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40041)

(assert (=> b!1210325 (= lt!549484 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1079 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210326 () Bool)

(declare-fun res!804328 () Bool)

(assert (=> b!1210326 (=> (not res!804328) (not e!687404))))

(assert (=> b!1210326 (= res!804328 (and (= (size!38269 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38270 _keys!1208) (size!38269 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1210327 () Bool)

(declare-fun res!804332 () Bool)

(assert (=> b!1210327 (=> (not res!804332) (not e!687404))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1210327 (= res!804332 (validKeyInArray!0 k!934))))

(declare-fun c!119195 () Bool)

(declare-fun bm!59619 () Bool)

(declare-fun addStillContains!1062 (ListLongMap!17913 (_ BitVec 64) V!46085 (_ BitVec 64)) Unit!40041)

(assert (=> bm!59619 (= call!59624 (addStillContains!1062 lt!549482 (ite (or c!119194 c!119195) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119194 c!119195) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1210316 () Bool)

(declare-fun Unit!40044 () Unit!40041)

(assert (=> b!1210316 (= e!687414 Unit!40044)))

(declare-fun res!804341 () Bool)

(assert (=> start!101052 (=> (not res!804341) (not e!687404))))

(assert (=> start!101052 (= res!804341 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38270 _keys!1208))))))

(assert (=> start!101052 e!687404))

(declare-fun tp_is_empty!30719 () Bool)

(assert (=> start!101052 tp_is_empty!30719))

(declare-fun array_inv!28644 (array!78200) Bool)

(assert (=> start!101052 (array_inv!28644 _keys!1208)))

(assert (=> start!101052 true))

(assert (=> start!101052 tp!91062))

(declare-fun e!687403 () Bool)

(declare-fun array_inv!28645 (array!78198) Bool)

(assert (=> start!101052 (and (array_inv!28645 _values!996) e!687403)))

(declare-fun b!1210328 () Bool)

(declare-fun res!804334 () Bool)

(assert (=> b!1210328 (=> (not res!804334) (not e!687404))))

(assert (=> b!1210328 (= res!804334 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26750))))

(declare-fun b!1210329 () Bool)

(declare-fun call!59619 () ListLongMap!17913)

(declare-fun call!59623 () ListLongMap!17913)

(assert (=> b!1210329 (= e!687407 (= call!59619 call!59623))))

(declare-fun b!1210330 () Bool)

(declare-fun res!804329 () Bool)

(assert (=> b!1210330 (=> (not res!804329) (not e!687404))))

(assert (=> b!1210330 (= res!804329 (= (select (arr!37733 _keys!1208) i!673) k!934))))

(declare-fun b!1210331 () Bool)

(declare-fun res!804338 () Bool)

(assert (=> b!1210331 (=> (not res!804338) (not e!687404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78200 (_ BitVec 32)) Bool)

(assert (=> b!1210331 (= res!804338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!59620 () Bool)

(declare-fun lt!549481 () ListLongMap!17913)

(declare-fun +!3999 (ListLongMap!17913 tuple2!19932) ListLongMap!17913)

(assert (=> bm!59620 (= call!59626 (+!3999 (ite c!119194 lt!549481 lt!549482) (ite c!119194 (tuple2!19933 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119195 (tuple2!19933 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19933 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1210332 () Bool)

(declare-fun res!804335 () Bool)

(declare-fun e!687417 () Bool)

(assert (=> b!1210332 (=> (not res!804335) (not e!687417))))

(assert (=> b!1210332 (= res!804335 (arrayNoDuplicates!0 lt!549483 #b00000000000000000000000000000000 Nil!26750))))

(declare-fun b!1210333 () Bool)

(assert (=> b!1210333 (= e!687418 tp_is_empty!30719)))

(declare-fun bm!59621 () Bool)

(assert (=> bm!59621 (= call!59619 (getCurrentListMapNoExtraKeys!5378 lt!549483 lt!549487 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210334 () Bool)

(declare-fun e!687411 () Bool)

(assert (=> b!1210334 (= e!687411 tp_is_empty!30719)))

(declare-fun b!1210335 () Bool)

(declare-fun res!804340 () Bool)

(assert (=> b!1210335 (=> (not res!804340) (not e!687404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1210335 (= res!804340 (validMask!0 mask!1564))))

(declare-fun b!1210336 () Bool)

(declare-fun arrayContainsKey!0 (array!78200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1210336 (= e!687415 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!59622 () Bool)

(assert (=> bm!59622 (= call!59625 (contains!6985 (ite c!119194 lt!549481 call!59621) k!934))))

(declare-fun b!1210337 () Bool)

(assert (=> b!1210337 (= c!119195 (and (not lt!549491) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1210337 (= e!687409 e!687410)))

(declare-fun b!1210338 () Bool)

(assert (=> b!1210338 (= e!687403 (and e!687411 mapRes!47947))))

(declare-fun condMapEmpty!47947 () Bool)

(declare-fun mapDefault!47947 () ValueCell!14650)

