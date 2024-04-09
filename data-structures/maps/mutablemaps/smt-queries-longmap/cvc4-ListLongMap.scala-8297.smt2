; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101132 () Bool)

(assert start!101132)

(declare-fun b_free!26057 () Bool)

(declare-fun b_next!26057 () Bool)

(assert (=> start!101132 (= b_free!26057 (not b_next!26057))))

(declare-fun tp!91190 () Bool)

(declare-fun b_and!43223 () Bool)

(assert (=> start!101132 (= tp!91190 b_and!43223)))

(declare-datatypes ((array!78280 0))(
  ( (array!78281 (arr!37772 (Array (_ BitVec 32) (_ BitVec 64))) (size!38309 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78280)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!60141 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((V!46141 0))(
  ( (V!46142 (val!15437 Int)) )
))
(declare-datatypes ((ValueCell!14671 0))(
  ( (ValueCellFull!14671 (v!18090 V!46141)) (EmptyCell!14671) )
))
(declare-datatypes ((array!78282 0))(
  ( (array!78283 (arr!37773 (Array (_ BitVec 32) ValueCell!14671)) (size!38310 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78282)

(declare-fun minValue!944 () V!46141)

(declare-datatypes ((tuple2!19970 0))(
  ( (tuple2!19971 (_1!9995 (_ BitVec 64)) (_2!9995 V!46141)) )
))
(declare-datatypes ((List!26790 0))(
  ( (Nil!26787) (Cons!26786 (h!27995 tuple2!19970) (t!39834 List!26790)) )
))
(declare-datatypes ((ListLongMap!17951 0))(
  ( (ListLongMap!17952 (toList!8991 List!26790)) )
))
(declare-fun call!60144 () ListLongMap!17951)

(declare-fun zeroValue!944 () V!46141)

(declare-fun getCurrentListMapNoExtraKeys!5396 (array!78280 array!78282 (_ BitVec 32) (_ BitVec 32) V!46141 V!46141 (_ BitVec 32) Int) ListLongMap!17951)

(assert (=> bm!60141 (= call!60144 (getCurrentListMapNoExtraKeys!5396 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212396 () Bool)

(declare-datatypes ((Unit!40125 0))(
  ( (Unit!40126) )
))
(declare-fun e!688576 () Unit!40125)

(declare-fun Unit!40127 () Unit!40125)

(assert (=> b!1212396 (= e!688576 Unit!40127)))

(declare-fun lt!550927 () ListLongMap!17951)

(declare-fun bm!60142 () Bool)

(declare-fun c!119617 () Bool)

(declare-fun c!119618 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!60146 () Unit!40125)

(declare-fun addStillContains!1077 (ListLongMap!17951 (_ BitVec 64) V!46141 (_ BitVec 64)) Unit!40125)

(assert (=> bm!60142 (= call!60146 (addStillContains!1077 lt!550927 (ite (or c!119618 c!119617) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119618 c!119617) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1212397 () Bool)

(declare-fun res!805323 () Bool)

(declare-fun e!688564 () Bool)

(assert (=> b!1212397 (=> (not res!805323) (not e!688564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78280 (_ BitVec 32)) Bool)

(assert (=> b!1212397 (= res!805323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1212398 () Bool)

(declare-fun res!805329 () Bool)

(declare-fun e!688568 () Bool)

(assert (=> b!1212398 (=> (not res!805329) (not e!688568))))

(declare-fun lt!550921 () array!78280)

(declare-datatypes ((List!26791 0))(
  ( (Nil!26788) (Cons!26787 (h!27996 (_ BitVec 64)) (t!39835 List!26791)) )
))
(declare-fun arrayNoDuplicates!0 (array!78280 (_ BitVec 32) List!26791) Bool)

(assert (=> b!1212398 (= res!805329 (arrayNoDuplicates!0 lt!550921 #b00000000000000000000000000000000 Nil!26788))))

(declare-fun b!1212399 () Bool)

(declare-fun Unit!40128 () Unit!40125)

(assert (=> b!1212399 (= e!688576 Unit!40128)))

(declare-fun lt!550928 () Bool)

(assert (=> b!1212399 (= lt!550928 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1212399 (= c!119618 (and (not lt!550928) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!550935 () Unit!40125)

(declare-fun e!688574 () Unit!40125)

(assert (=> b!1212399 (= lt!550935 e!688574)))

(declare-fun lt!550923 () Unit!40125)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!613 (array!78280 array!78282 (_ BitVec 32) (_ BitVec 32) V!46141 V!46141 (_ BitVec 64) (_ BitVec 32) Int) Unit!40125)

(assert (=> b!1212399 (= lt!550923 (lemmaListMapContainsThenArrayContainsFrom!613 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119621 () Bool)

(assert (=> b!1212399 (= c!119621 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!805325 () Bool)

(declare-fun e!688571 () Bool)

(assert (=> b!1212399 (= res!805325 e!688571)))

(declare-fun e!688575 () Bool)

(assert (=> b!1212399 (=> (not res!805325) (not e!688575))))

(assert (=> b!1212399 e!688575))

(declare-fun lt!550929 () Unit!40125)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78280 (_ BitVec 32) (_ BitVec 32)) Unit!40125)

(assert (=> b!1212399 (= lt!550929 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1212399 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26788)))

(declare-fun lt!550924 () Unit!40125)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78280 (_ BitVec 64) (_ BitVec 32) List!26791) Unit!40125)

(assert (=> b!1212399 (= lt!550924 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26788))))

(assert (=> b!1212399 false))

(declare-fun e!688565 () Bool)

(declare-fun b!1212400 () Bool)

(declare-fun call!60150 () ListLongMap!17951)

(declare-fun -!1887 (ListLongMap!17951 (_ BitVec 64)) ListLongMap!17951)

(assert (=> b!1212400 (= e!688565 (= call!60150 (-!1887 call!60144 k!934)))))

(declare-fun b!1212401 () Bool)

(declare-fun e!688572 () Bool)

(declare-fun tp_is_empty!30761 () Bool)

(assert (=> b!1212401 (= e!688572 tp_is_empty!30761)))

(declare-fun b!1212402 () Bool)

(declare-fun e!688570 () Unit!40125)

(declare-fun Unit!40129 () Unit!40125)

(assert (=> b!1212402 (= e!688570 Unit!40129)))

(declare-fun b!1212403 () Bool)

(declare-fun e!688567 () Bool)

(assert (=> b!1212403 (= e!688568 (not e!688567))))

(declare-fun res!805331 () Bool)

(assert (=> b!1212403 (=> res!805331 e!688567)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1212403 (= res!805331 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1212403 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!550936 () Unit!40125)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78280 (_ BitVec 64) (_ BitVec 32)) Unit!40125)

(assert (=> b!1212403 (= lt!550936 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!60143 () Bool)

(declare-fun call!60145 () Bool)

(declare-fun call!60151 () ListLongMap!17951)

(declare-fun lt!550934 () ListLongMap!17951)

(declare-fun contains!7006 (ListLongMap!17951 (_ BitVec 64)) Bool)

(assert (=> bm!60143 (= call!60145 (contains!7006 (ite c!119618 lt!550934 call!60151) k!934))))

(declare-fun b!1212404 () Bool)

(declare-fun e!688566 () Bool)

(declare-fun lt!550939 () ListLongMap!17951)

(declare-fun lt!550926 () array!78282)

(assert (=> b!1212404 (= e!688566 (= lt!550939 (getCurrentListMapNoExtraKeys!5396 lt!550921 lt!550926 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1212405 () Bool)

(declare-fun res!805332 () Bool)

(assert (=> b!1212405 (=> (not res!805332) (not e!688564))))

(assert (=> b!1212405 (= res!805332 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38309 _keys!1208))))))

(declare-fun b!1212406 () Bool)

(assert (=> b!1212406 (= e!688571 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!48013 () Bool)

(declare-fun mapRes!48013 () Bool)

(declare-fun tp!91191 () Bool)

(declare-fun e!688577 () Bool)

(assert (=> mapNonEmpty!48013 (= mapRes!48013 (and tp!91191 e!688577))))

(declare-fun mapRest!48013 () (Array (_ BitVec 32) ValueCell!14671))

(declare-fun mapValue!48013 () ValueCell!14671)

(declare-fun mapKey!48013 () (_ BitVec 32))

(assert (=> mapNonEmpty!48013 (= (arr!37773 _values!996) (store mapRest!48013 mapKey!48013 mapValue!48013))))

(declare-fun b!1212407 () Bool)

(declare-fun res!805327 () Bool)

(assert (=> b!1212407 (=> (not res!805327) (not e!688564))))

(assert (=> b!1212407 (= res!805327 (= (select (arr!37772 _keys!1208) i!673) k!934))))

(declare-fun b!1212408 () Bool)

(declare-fun e!688562 () Unit!40125)

(declare-fun lt!550932 () Unit!40125)

(assert (=> b!1212408 (= e!688562 lt!550932)))

(declare-fun call!60147 () Unit!40125)

(assert (=> b!1212408 (= lt!550932 call!60147)))

(declare-fun call!60148 () Bool)

(assert (=> b!1212408 call!60148))

(declare-fun b!1212409 () Bool)

(assert (=> b!1212409 (= e!688564 e!688568)))

(declare-fun res!805320 () Bool)

(assert (=> b!1212409 (=> (not res!805320) (not e!688568))))

(assert (=> b!1212409 (= res!805320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!550921 mask!1564))))

(assert (=> b!1212409 (= lt!550921 (array!78281 (store (arr!37772 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38309 _keys!1208)))))

(declare-fun b!1212410 () Bool)

(assert (=> b!1212410 (= c!119617 (and (not lt!550928) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1212410 (= e!688574 e!688562)))

(declare-fun res!805326 () Bool)

(assert (=> start!101132 (=> (not res!805326) (not e!688564))))

(assert (=> start!101132 (= res!805326 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38309 _keys!1208))))))

(assert (=> start!101132 e!688564))

(assert (=> start!101132 tp_is_empty!30761))

(declare-fun array_inv!28670 (array!78280) Bool)

(assert (=> start!101132 (array_inv!28670 _keys!1208)))

(assert (=> start!101132 true))

(assert (=> start!101132 tp!91190))

(declare-fun e!688563 () Bool)

(declare-fun array_inv!28671 (array!78282) Bool)

(assert (=> start!101132 (and (array_inv!28671 _values!996) e!688563)))

(declare-fun b!1212411 () Bool)

(declare-fun res!805328 () Bool)

(assert (=> b!1212411 (=> (not res!805328) (not e!688564))))

(assert (=> b!1212411 (= res!805328 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26788))))

(declare-fun bm!60144 () Bool)

(declare-fun call!60149 () ListLongMap!17951)

(assert (=> bm!60144 (= call!60151 call!60149)))

(declare-fun b!1212412 () Bool)

(assert (=> b!1212412 (= e!688571 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!550928) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!48013 () Bool)

(assert (=> mapIsEmpty!48013 mapRes!48013))

(declare-fun b!1212413 () Bool)

(declare-fun e!688573 () Bool)

(assert (=> b!1212413 (= e!688567 e!688573)))

(declare-fun res!805319 () Bool)

(assert (=> b!1212413 (=> res!805319 e!688573)))

(assert (=> b!1212413 (= res!805319 (not (= from!1455 i!673)))))

(declare-fun lt!550933 () ListLongMap!17951)

(assert (=> b!1212413 (= lt!550933 (getCurrentListMapNoExtraKeys!5396 lt!550921 lt!550926 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!550925 () V!46141)

(assert (=> b!1212413 (= lt!550926 (array!78283 (store (arr!37773 _values!996) i!673 (ValueCellFull!14671 lt!550925)) (size!38310 _values!996)))))

(declare-fun dynLambda!3308 (Int (_ BitVec 64)) V!46141)

(assert (=> b!1212413 (= lt!550925 (dynLambda!3308 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!550937 () ListLongMap!17951)

(assert (=> b!1212413 (= lt!550937 (getCurrentListMapNoExtraKeys!5396 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!60145 () Bool)

(declare-fun +!4018 (ListLongMap!17951 tuple2!19970) ListLongMap!17951)

(assert (=> bm!60145 (= call!60149 (+!4018 (ite c!119618 lt!550934 lt!550927) (ite c!119618 (tuple2!19971 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119617 (tuple2!19971 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19971 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!60146 () Bool)

(assert (=> bm!60146 (= call!60148 call!60145)))

(declare-fun b!1212414 () Bool)

(assert (=> b!1212414 call!60148))

(declare-fun lt!550922 () Unit!40125)

(assert (=> b!1212414 (= lt!550922 call!60147)))

(assert (=> b!1212414 (= e!688570 lt!550922)))

(declare-fun bm!60147 () Bool)

(assert (=> bm!60147 (= call!60150 (getCurrentListMapNoExtraKeys!5396 lt!550921 lt!550926 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212415 () Bool)

(assert (=> b!1212415 (= e!688562 e!688570)))

(declare-fun c!119619 () Bool)

(assert (=> b!1212415 (= c!119619 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!550928))))

(declare-fun b!1212416 () Bool)

(declare-fun res!805330 () Bool)

(assert (=> b!1212416 (=> (not res!805330) (not e!688564))))

(assert (=> b!1212416 (= res!805330 (and (= (size!38310 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38309 _keys!1208) (size!38310 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1212417 () Bool)

(declare-fun e!688561 () Bool)

(assert (=> b!1212417 (= e!688561 (bvslt i!673 (size!38310 _values!996)))))

(assert (=> b!1212417 e!688566))

(declare-fun res!805324 () Bool)

(assert (=> b!1212417 (=> (not res!805324) (not e!688566))))

(assert (=> b!1212417 (= res!805324 (= lt!550939 lt!550927))))

(assert (=> b!1212417 (= lt!550939 (-!1887 lt!550937 k!934))))

(declare-fun lt!550938 () V!46141)

(assert (=> b!1212417 (= (-!1887 (+!4018 lt!550927 (tuple2!19971 (select (arr!37772 _keys!1208) from!1455) lt!550938)) (select (arr!37772 _keys!1208) from!1455)) lt!550927)))

(declare-fun lt!550931 () Unit!40125)

(declare-fun addThenRemoveForNewKeyIsSame!288 (ListLongMap!17951 (_ BitVec 64) V!46141) Unit!40125)

(assert (=> b!1212417 (= lt!550931 (addThenRemoveForNewKeyIsSame!288 lt!550927 (select (arr!37772 _keys!1208) from!1455) lt!550938))))

(declare-fun get!19296 (ValueCell!14671 V!46141) V!46141)

(assert (=> b!1212417 (= lt!550938 (get!19296 (select (arr!37773 _values!996) from!1455) lt!550925))))

(declare-fun lt!550940 () Unit!40125)

(assert (=> b!1212417 (= lt!550940 e!688576)))

(declare-fun c!119620 () Bool)

(assert (=> b!1212417 (= c!119620 (contains!7006 lt!550927 k!934))))

(assert (=> b!1212417 (= lt!550927 (getCurrentListMapNoExtraKeys!5396 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212418 () Bool)

(declare-fun res!805322 () Bool)

(assert (=> b!1212418 (=> (not res!805322) (not e!688564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1212418 (= res!805322 (validMask!0 mask!1564))))

(declare-fun b!1212419 () Bool)

(assert (=> b!1212419 (= e!688563 (and e!688572 mapRes!48013))))

(declare-fun condMapEmpty!48013 () Bool)

(declare-fun mapDefault!48013 () ValueCell!14671)

