; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98954 () Bool)

(assert start!98954)

(declare-fun b_free!24523 () Bool)

(declare-fun b_next!24523 () Bool)

(assert (=> start!98954 (= b_free!24523 (not b_next!24523))))

(declare-fun tp!86280 () Bool)

(declare-fun b_and!39909 () Bool)

(assert (=> start!98954 (= tp!86280 b_and!39909)))

(declare-fun e!659130 () Bool)

(declare-fun b!1159006 () Bool)

(declare-datatypes ((V!43865 0))(
  ( (V!43866 (val!14583 Int)) )
))
(declare-datatypes ((tuple2!18636 0))(
  ( (tuple2!18637 (_1!9328 (_ BitVec 64)) (_2!9328 V!43865)) )
))
(declare-datatypes ((List!25414 0))(
  ( (Nil!25411) (Cons!25410 (h!26619 tuple2!18636) (t!36936 List!25414)) )
))
(declare-datatypes ((ListLongMap!16617 0))(
  ( (ListLongMap!16618 (toList!8324 List!25414)) )
))
(declare-fun call!55818 () ListLongMap!16617)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!55822 () ListLongMap!16617)

(declare-fun -!1396 (ListLongMap!16617 (_ BitVec 64)) ListLongMap!16617)

(assert (=> b!1159006 (= e!659130 (= call!55818 (-!1396 call!55822 k!934)))))

(declare-fun bm!55814 () Bool)

(declare-fun call!55823 () Bool)

(declare-fun call!55817 () Bool)

(assert (=> bm!55814 (= call!55823 call!55817)))

(declare-fun res!769483 () Bool)

(declare-fun e!659124 () Bool)

(assert (=> start!98954 (=> (not res!769483) (not e!659124))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!74896 0))(
  ( (array!74897 (arr!36095 (Array (_ BitVec 32) (_ BitVec 64))) (size!36632 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74896)

(assert (=> start!98954 (= res!769483 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36632 _keys!1208))))))

(assert (=> start!98954 e!659124))

(declare-fun tp_is_empty!29053 () Bool)

(assert (=> start!98954 tp_is_empty!29053))

(declare-fun array_inv!27486 (array!74896) Bool)

(assert (=> start!98954 (array_inv!27486 _keys!1208)))

(assert (=> start!98954 true))

(assert (=> start!98954 tp!86280))

(declare-datatypes ((ValueCell!13817 0))(
  ( (ValueCellFull!13817 (v!17221 V!43865)) (EmptyCell!13817) )
))
(declare-datatypes ((array!74898 0))(
  ( (array!74899 (arr!36096 (Array (_ BitVec 32) ValueCell!13817)) (size!36633 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74898)

(declare-fun e!659129 () Bool)

(declare-fun array_inv!27487 (array!74898) Bool)

(assert (=> start!98954 (and (array_inv!27487 _values!996) e!659129)))

(declare-fun b!1159007 () Bool)

(declare-fun res!769480 () Bool)

(assert (=> b!1159007 (=> (not res!769480) (not e!659124))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74896 (_ BitVec 32)) Bool)

(assert (=> b!1159007 (= res!769480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1159008 () Bool)

(declare-fun e!659139 () Bool)

(declare-fun e!659123 () Bool)

(assert (=> b!1159008 (= e!659139 e!659123)))

(declare-fun res!769481 () Bool)

(assert (=> b!1159008 (=> res!769481 e!659123)))

(assert (=> b!1159008 (= res!769481 (not (= (select (arr!36095 _keys!1208) from!1455) k!934)))))

(assert (=> b!1159008 e!659130))

(declare-fun c!115514 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1159008 (= c!115514 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43865)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43865)

(declare-datatypes ((Unit!38085 0))(
  ( (Unit!38086) )
))
(declare-fun lt!520943 () Unit!38085)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!622 (array!74896 array!74898 (_ BitVec 32) (_ BitVec 32) V!43865 V!43865 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38085)

(assert (=> b!1159008 (= lt!520943 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!622 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159009 () Bool)

(declare-fun e!659125 () Unit!38085)

(declare-fun e!659127 () Unit!38085)

(assert (=> b!1159009 (= e!659125 e!659127)))

(declare-fun c!115513 () Bool)

(declare-fun lt!520949 () Bool)

(assert (=> b!1159009 (= c!115513 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!520949))))

(declare-fun e!659134 () Bool)

(declare-fun b!1159010 () Bool)

(declare-fun lt!520948 () array!74896)

(declare-fun lt!520944 () ListLongMap!16617)

(declare-fun lt!520953 () array!74898)

(declare-fun getCurrentListMapNoExtraKeys!4760 (array!74896 array!74898 (_ BitVec 32) (_ BitVec 32) V!43865 V!43865 (_ BitVec 32) Int) ListLongMap!16617)

(assert (=> b!1159010 (= e!659134 (= lt!520944 (getCurrentListMapNoExtraKeys!4760 lt!520948 lt!520953 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun c!115518 () Bool)

(declare-fun lt!520946 () ListLongMap!16617)

(declare-fun c!115517 () Bool)

(declare-fun bm!55815 () Bool)

(declare-fun call!55820 () Unit!38085)

(declare-fun addStillContains!947 (ListLongMap!16617 (_ BitVec 64) V!43865 (_ BitVec 64)) Unit!38085)

(assert (=> bm!55815 (= call!55820 (addStillContains!947 lt!520946 (ite (or c!115518 c!115517) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115518 c!115517) zeroValue!944 minValue!944) k!934))))

(declare-fun bm!55816 () Bool)

(declare-fun call!55819 () Unit!38085)

(assert (=> bm!55816 (= call!55819 call!55820)))

(declare-fun b!1159011 () Bool)

(declare-fun call!55821 () ListLongMap!16617)

(declare-fun contains!6806 (ListLongMap!16617 (_ BitVec 64)) Bool)

(assert (=> b!1159011 (contains!6806 call!55821 k!934)))

(declare-fun lt!520947 () ListLongMap!16617)

(declare-fun lt!520938 () Unit!38085)

(assert (=> b!1159011 (= lt!520938 (addStillContains!947 lt!520947 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1159011 call!55817))

(declare-fun +!3650 (ListLongMap!16617 tuple2!18636) ListLongMap!16617)

(assert (=> b!1159011 (= lt!520947 (+!3650 lt!520946 (tuple2!18637 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!520959 () Unit!38085)

(assert (=> b!1159011 (= lt!520959 call!55820)))

(declare-fun e!659128 () Unit!38085)

(assert (=> b!1159011 (= e!659128 lt!520938)))

(declare-fun bm!55817 () Bool)

(declare-fun call!55824 () ListLongMap!16617)

(assert (=> bm!55817 (= call!55824 call!55821)))

(declare-fun b!1159012 () Bool)

(declare-fun res!769485 () Bool)

(assert (=> b!1159012 (=> (not res!769485) (not e!659124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1159012 (= res!769485 (validKeyInArray!0 k!934))))

(declare-fun b!1159013 () Bool)

(declare-fun e!659126 () Bool)

(declare-fun arrayContainsKey!0 (array!74896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1159013 (= e!659126 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1159014 () Bool)

(assert (=> b!1159014 (= e!659130 (= call!55818 call!55822))))

(declare-fun b!1159015 () Bool)

(declare-fun e!659132 () Unit!38085)

(declare-fun Unit!38087 () Unit!38085)

(assert (=> b!1159015 (= e!659132 Unit!38087)))

(declare-fun b!1159016 () Bool)

(declare-fun res!769492 () Bool)

(assert (=> b!1159016 (=> (not res!769492) (not e!659124))))

(assert (=> b!1159016 (= res!769492 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36632 _keys!1208))))))

(declare-fun b!1159017 () Bool)

(declare-fun Unit!38088 () Unit!38085)

(assert (=> b!1159017 (= e!659132 Unit!38088)))

(assert (=> b!1159017 (= lt!520949 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1159017 (= c!115518 (and (not lt!520949) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!520945 () Unit!38085)

(assert (=> b!1159017 (= lt!520945 e!659128)))

(declare-fun lt!520956 () Unit!38085)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!521 (array!74896 array!74898 (_ BitVec 32) (_ BitVec 32) V!43865 V!43865 (_ BitVec 64) (_ BitVec 32) Int) Unit!38085)

(assert (=> b!1159017 (= lt!520956 (lemmaListMapContainsThenArrayContainsFrom!521 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115516 () Bool)

(assert (=> b!1159017 (= c!115516 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769484 () Bool)

(declare-fun e!659133 () Bool)

(assert (=> b!1159017 (= res!769484 e!659133)))

(assert (=> b!1159017 (=> (not res!769484) (not e!659126))))

(assert (=> b!1159017 e!659126))

(declare-fun lt!520957 () Unit!38085)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74896 (_ BitVec 32) (_ BitVec 32)) Unit!38085)

(assert (=> b!1159017 (= lt!520957 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25415 0))(
  ( (Nil!25412) (Cons!25411 (h!26620 (_ BitVec 64)) (t!36937 List!25415)) )
))
(declare-fun arrayNoDuplicates!0 (array!74896 (_ BitVec 32) List!25415) Bool)

(assert (=> b!1159017 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25412)))

(declare-fun lt!520955 () Unit!38085)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74896 (_ BitVec 64) (_ BitVec 32) List!25415) Unit!38085)

(assert (=> b!1159017 (= lt!520955 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25412))))

(assert (=> b!1159017 false))

(declare-fun b!1159018 () Bool)

(assert (=> b!1159018 (= e!659133 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1159019 () Bool)

(declare-fun res!769490 () Bool)

(assert (=> b!1159019 (=> (not res!769490) (not e!659124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1159019 (= res!769490 (validMask!0 mask!1564))))

(declare-fun b!1159020 () Bool)

(declare-fun lt!520952 () Unit!38085)

(assert (=> b!1159020 (= e!659125 lt!520952)))

(assert (=> b!1159020 (= lt!520952 call!55819)))

(assert (=> b!1159020 call!55823))

(declare-fun b!1159021 () Bool)

(assert (=> b!1159021 call!55823))

(declare-fun lt!520940 () Unit!38085)

(assert (=> b!1159021 (= lt!520940 call!55819)))

(assert (=> b!1159021 (= e!659127 lt!520940)))

(declare-fun b!1159022 () Bool)

(assert (=> b!1159022 (= e!659123 true)))

(assert (=> b!1159022 e!659134))

(declare-fun res!769486 () Bool)

(assert (=> b!1159022 (=> (not res!769486) (not e!659134))))

(assert (=> b!1159022 (= res!769486 (= lt!520944 lt!520946))))

(declare-fun lt!520950 () ListLongMap!16617)

(assert (=> b!1159022 (= lt!520944 (-!1396 lt!520950 k!934))))

(declare-fun lt!520951 () V!43865)

(assert (=> b!1159022 (= (-!1396 (+!3650 lt!520946 (tuple2!18637 (select (arr!36095 _keys!1208) from!1455) lt!520951)) (select (arr!36095 _keys!1208) from!1455)) lt!520946)))

(declare-fun lt!520958 () Unit!38085)

(declare-fun addThenRemoveForNewKeyIsSame!235 (ListLongMap!16617 (_ BitVec 64) V!43865) Unit!38085)

(assert (=> b!1159022 (= lt!520958 (addThenRemoveForNewKeyIsSame!235 lt!520946 (select (arr!36095 _keys!1208) from!1455) lt!520951))))

(declare-fun lt!520954 () V!43865)

(declare-fun get!18431 (ValueCell!13817 V!43865) V!43865)

(assert (=> b!1159022 (= lt!520951 (get!18431 (select (arr!36096 _values!996) from!1455) lt!520954))))

(declare-fun lt!520942 () Unit!38085)

(assert (=> b!1159022 (= lt!520942 e!659132)))

(declare-fun c!115515 () Bool)

(assert (=> b!1159022 (= c!115515 (contains!6806 lt!520946 k!934))))

(assert (=> b!1159022 (= lt!520946 (getCurrentListMapNoExtraKeys!4760 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55818 () Bool)

(assert (=> bm!55818 (= call!55822 (getCurrentListMapNoExtraKeys!4760 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159023 () Bool)

(declare-fun e!659136 () Bool)

(assert (=> b!1159023 (= e!659136 tp_is_empty!29053)))

(declare-fun b!1159024 () Bool)

(declare-fun e!659131 () Bool)

(assert (=> b!1159024 (= e!659124 e!659131)))

(declare-fun res!769487 () Bool)

(assert (=> b!1159024 (=> (not res!769487) (not e!659131))))

(assert (=> b!1159024 (= res!769487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!520948 mask!1564))))

(assert (=> b!1159024 (= lt!520948 (array!74897 (store (arr!36095 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36632 _keys!1208)))))

(declare-fun mapIsEmpty!45404 () Bool)

(declare-fun mapRes!45404 () Bool)

(assert (=> mapIsEmpty!45404 mapRes!45404))

(declare-fun b!1159025 () Bool)

(assert (=> b!1159025 (= e!659133 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!520949) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!55819 () Bool)

(assert (=> bm!55819 (= call!55818 (getCurrentListMapNoExtraKeys!4760 lt!520948 lt!520953 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159026 () Bool)

(declare-fun Unit!38089 () Unit!38085)

(assert (=> b!1159026 (= e!659127 Unit!38089)))

(declare-fun b!1159027 () Bool)

(declare-fun e!659138 () Bool)

(assert (=> b!1159027 (= e!659138 e!659139)))

(declare-fun res!769491 () Bool)

(assert (=> b!1159027 (=> res!769491 e!659139)))

(assert (=> b!1159027 (= res!769491 (not (= from!1455 i!673)))))

(declare-fun lt!520939 () ListLongMap!16617)

(assert (=> b!1159027 (= lt!520939 (getCurrentListMapNoExtraKeys!4760 lt!520948 lt!520953 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1159027 (= lt!520953 (array!74899 (store (arr!36096 _values!996) i!673 (ValueCellFull!13817 lt!520954)) (size!36633 _values!996)))))

(declare-fun dynLambda!2764 (Int (_ BitVec 64)) V!43865)

(assert (=> b!1159027 (= lt!520954 (dynLambda!2764 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1159027 (= lt!520950 (getCurrentListMapNoExtraKeys!4760 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1159028 () Bool)

(declare-fun res!769489 () Bool)

(assert (=> b!1159028 (=> (not res!769489) (not e!659124))))

(assert (=> b!1159028 (= res!769489 (and (= (size!36633 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36632 _keys!1208) (size!36633 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1159029 () Bool)

(declare-fun e!659137 () Bool)

(assert (=> b!1159029 (= e!659137 tp_is_empty!29053)))

(declare-fun b!1159030 () Bool)

(declare-fun res!769493 () Bool)

(assert (=> b!1159030 (=> (not res!769493) (not e!659124))))

(assert (=> b!1159030 (= res!769493 (= (select (arr!36095 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!45404 () Bool)

(declare-fun tp!86281 () Bool)

(assert (=> mapNonEmpty!45404 (= mapRes!45404 (and tp!86281 e!659136))))

(declare-fun mapValue!45404 () ValueCell!13817)

(declare-fun mapKey!45404 () (_ BitVec 32))

(declare-fun mapRest!45404 () (Array (_ BitVec 32) ValueCell!13817))

(assert (=> mapNonEmpty!45404 (= (arr!36096 _values!996) (store mapRest!45404 mapKey!45404 mapValue!45404))))

(declare-fun bm!55820 () Bool)

(assert (=> bm!55820 (= call!55821 (+!3650 (ite c!115518 lt!520947 lt!520946) (ite c!115518 (tuple2!18637 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115517 (tuple2!18637 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18637 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1159031 () Bool)

(declare-fun res!769479 () Bool)

(assert (=> b!1159031 (=> (not res!769479) (not e!659124))))

(assert (=> b!1159031 (= res!769479 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25412))))

(declare-fun b!1159032 () Bool)

(declare-fun res!769488 () Bool)

(assert (=> b!1159032 (=> (not res!769488) (not e!659131))))

(assert (=> b!1159032 (= res!769488 (arrayNoDuplicates!0 lt!520948 #b00000000000000000000000000000000 Nil!25412))))

(declare-fun b!1159033 () Bool)

(assert (=> b!1159033 (= e!659129 (and e!659137 mapRes!45404))))

(declare-fun condMapEmpty!45404 () Bool)

(declare-fun mapDefault!45404 () ValueCell!13817)

