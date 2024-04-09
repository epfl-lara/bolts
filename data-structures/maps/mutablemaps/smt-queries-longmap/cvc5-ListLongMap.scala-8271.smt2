; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100610 () Bool)

(assert start!100610)

(declare-fun b_free!25897 () Bool)

(declare-fun b_next!25897 () Bool)

(assert (=> start!100610 (= b_free!25897 (not b_next!25897))))

(declare-fun tp!90681 () Bool)

(declare-fun b_and!42695 () Bool)

(assert (=> start!100610 (= tp!90681 b_and!42695)))

(declare-fun bm!57960 () Bool)

(declare-fun call!57963 () Bool)

(declare-fun call!57967 () Bool)

(assert (=> bm!57960 (= call!57963 call!57967)))

(declare-datatypes ((array!77952 0))(
  ( (array!77953 (arr!37617 (Array (_ BitVec 32) (_ BitVec 64))) (size!38154 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77952)

(declare-fun c!117727 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!545330 () array!77952)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!57961 () Bool)

(declare-datatypes ((V!45929 0))(
  ( (V!45930 (val!15357 Int)) )
))
(declare-datatypes ((ValueCell!14591 0))(
  ( (ValueCellFull!14591 (v!17996 V!45929)) (EmptyCell!14591) )
))
(declare-datatypes ((array!77954 0))(
  ( (array!77955 (arr!37618 (Array (_ BitVec 32) ValueCell!14591)) (size!38155 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77954)

(declare-fun minValue!944 () V!45929)

(declare-fun lt!545338 () array!77954)

(declare-fun zeroValue!944 () V!45929)

(declare-datatypes ((tuple2!19822 0))(
  ( (tuple2!19823 (_1!9921 (_ BitVec 64)) (_2!9921 V!45929)) )
))
(declare-datatypes ((List!26650 0))(
  ( (Nil!26647) (Cons!26646 (h!27855 tuple2!19822) (t!39534 List!26650)) )
))
(declare-datatypes ((ListLongMap!17803 0))(
  ( (ListLongMap!17804 (toList!8917 List!26650)) )
))
(declare-fun call!57968 () ListLongMap!17803)

(declare-fun getCurrentListMapNoExtraKeys!5327 (array!77952 array!77954 (_ BitVec 32) (_ BitVec 32) V!45929 V!45929 (_ BitVec 32) Int) ListLongMap!17803)

(assert (=> bm!57961 (= call!57968 (getCurrentListMapNoExtraKeys!5327 (ite c!117727 lt!545330 _keys!1208) (ite c!117727 lt!545338 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1203075 () Bool)

(declare-fun e!683197 () Bool)

(declare-fun e!683191 () Bool)

(assert (=> b!1203075 (= e!683197 e!683191)))

(declare-fun res!800746 () Bool)

(assert (=> b!1203075 (=> (not res!800746) (not e!683191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77952 (_ BitVec 32)) Bool)

(assert (=> b!1203075 (= res!800746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545330 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1203075 (= lt!545330 (array!77953 (store (arr!37617 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38154 _keys!1208)))))

(declare-fun b!1203076 () Bool)

(declare-fun e!683195 () Bool)

(declare-fun tp_is_empty!30601 () Bool)

(assert (=> b!1203076 (= e!683195 tp_is_empty!30601)))

(declare-fun b!1203077 () Bool)

(declare-fun res!800757 () Bool)

(assert (=> b!1203077 (=> (not res!800757) (not e!683197))))

(assert (=> b!1203077 (= res!800757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!47744 () Bool)

(declare-fun mapRes!47744 () Bool)

(declare-fun tp!90682 () Bool)

(declare-fun e!683196 () Bool)

(assert (=> mapNonEmpty!47744 (= mapRes!47744 (and tp!90682 e!683196))))

(declare-fun mapValue!47744 () ValueCell!14591)

(declare-fun mapKey!47744 () (_ BitVec 32))

(declare-fun mapRest!47744 () (Array (_ BitVec 32) ValueCell!14591))

(assert (=> mapNonEmpty!47744 (= (arr!37618 _values!996) (store mapRest!47744 mapKey!47744 mapValue!47744))))

(declare-fun bm!57962 () Bool)

(declare-datatypes ((Unit!39808 0))(
  ( (Unit!39809) )
))
(declare-fun call!57966 () Unit!39808)

(declare-fun call!57965 () Unit!39808)

(assert (=> bm!57962 (= call!57966 call!57965)))

(declare-fun b!1203078 () Bool)

(declare-fun e!683193 () Bool)

(assert (=> b!1203078 (= e!683193 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38154 _keys!1208))))))

(declare-fun lt!545334 () Unit!39808)

(declare-fun e!683190 () Unit!39808)

(assert (=> b!1203078 (= lt!545334 e!683190)))

(declare-fun c!117728 () Bool)

(declare-fun lt!545335 () Bool)

(assert (=> b!1203078 (= c!117728 (and (not lt!545335) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1203078 (= lt!545335 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1203079 () Bool)

(declare-fun res!800748 () Bool)

(assert (=> b!1203079 (=> (not res!800748) (not e!683197))))

(declare-datatypes ((List!26651 0))(
  ( (Nil!26648) (Cons!26647 (h!27856 (_ BitVec 64)) (t!39535 List!26651)) )
))
(declare-fun arrayNoDuplicates!0 (array!77952 (_ BitVec 32) List!26651) Bool)

(assert (=> b!1203079 (= res!800748 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26648))))

(declare-fun b!1203080 () Bool)

(declare-fun res!800756 () Bool)

(assert (=> b!1203080 (=> (not res!800756) (not e!683197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1203080 (= res!800756 (validMask!0 mask!1564))))

(declare-fun bm!57963 () Bool)

(declare-fun call!57970 () ListLongMap!17803)

(declare-fun call!57964 () ListLongMap!17803)

(assert (=> bm!57963 (= call!57970 call!57964)))

(declare-fun lt!545332 () ListLongMap!17803)

(declare-fun lt!545326 () ListLongMap!17803)

(declare-fun bm!57964 () Bool)

(declare-fun c!117730 () Bool)

(declare-fun +!3952 (ListLongMap!17803 tuple2!19822) ListLongMap!17803)

(assert (=> bm!57964 (= call!57964 (+!3952 (ite c!117728 lt!545332 lt!545326) (ite c!117728 (tuple2!19823 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117730 (tuple2!19823 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19823 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1203081 () Bool)

(declare-fun e!683192 () Bool)

(declare-fun call!57969 () ListLongMap!17803)

(assert (=> b!1203081 (= e!683192 (= call!57969 call!57968))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1203082 () Bool)

(declare-fun -!1833 (ListLongMap!17803 (_ BitVec 64)) ListLongMap!17803)

(assert (=> b!1203082 (= e!683192 (= call!57968 (-!1833 call!57969 k!934)))))

(declare-fun b!1203083 () Bool)

(declare-fun e!683187 () Bool)

(declare-fun e!683194 () Bool)

(assert (=> b!1203083 (= e!683187 e!683194)))

(declare-fun res!800755 () Bool)

(assert (=> b!1203083 (=> res!800755 e!683194)))

(assert (=> b!1203083 (= res!800755 (not (= from!1455 i!673)))))

(declare-fun lt!545328 () ListLongMap!17803)

(assert (=> b!1203083 (= lt!545328 (getCurrentListMapNoExtraKeys!5327 lt!545330 lt!545338 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3250 (Int (_ BitVec 64)) V!45929)

(assert (=> b!1203083 (= lt!545338 (array!77955 (store (arr!37618 _values!996) i!673 (ValueCellFull!14591 (dynLambda!3250 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38155 _values!996)))))

(declare-fun lt!545333 () ListLongMap!17803)

(assert (=> b!1203083 (= lt!545333 (getCurrentListMapNoExtraKeys!5327 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!47744 () Bool)

(assert (=> mapIsEmpty!47744 mapRes!47744))

(declare-fun b!1203084 () Bool)

(declare-fun res!800750 () Bool)

(assert (=> b!1203084 (=> (not res!800750) (not e!683197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1203084 (= res!800750 (validKeyInArray!0 k!934))))

(declare-fun res!800752 () Bool)

(assert (=> start!100610 (=> (not res!800752) (not e!683197))))

(assert (=> start!100610 (= res!800752 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38154 _keys!1208))))))

(assert (=> start!100610 e!683197))

(assert (=> start!100610 tp_is_empty!30601))

(declare-fun array_inv!28558 (array!77952) Bool)

(assert (=> start!100610 (array_inv!28558 _keys!1208)))

(assert (=> start!100610 true))

(assert (=> start!100610 tp!90681))

(declare-fun e!683198 () Bool)

(declare-fun array_inv!28559 (array!77954) Bool)

(assert (=> start!100610 (and (array_inv!28559 _values!996) e!683198)))

(declare-fun b!1203085 () Bool)

(declare-fun e!683200 () Unit!39808)

(declare-fun Unit!39810 () Unit!39808)

(assert (=> b!1203085 (= e!683200 Unit!39810)))

(declare-fun b!1203086 () Bool)

(assert (=> b!1203086 call!57963))

(declare-fun lt!545331 () Unit!39808)

(assert (=> b!1203086 (= lt!545331 call!57966)))

(declare-fun e!683189 () Unit!39808)

(assert (=> b!1203086 (= e!683189 lt!545331)))

(declare-fun b!1203087 () Bool)

(declare-fun e!683199 () Bool)

(assert (=> b!1203087 (= e!683199 e!683193)))

(declare-fun res!800745 () Bool)

(assert (=> b!1203087 (=> res!800745 e!683193)))

(declare-fun contains!6915 (ListLongMap!17803 (_ BitVec 64)) Bool)

(assert (=> b!1203087 (= res!800745 (not (contains!6915 lt!545326 k!934)))))

(assert (=> b!1203087 (= lt!545326 (getCurrentListMapNoExtraKeys!5327 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1203088 () Bool)

(declare-fun lt!545325 () Unit!39808)

(assert (=> b!1203088 (= e!683190 lt!545325)))

(declare-fun lt!545336 () Unit!39808)

(assert (=> b!1203088 (= lt!545336 call!57965)))

(assert (=> b!1203088 (= lt!545332 (+!3952 lt!545326 (tuple2!19823 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1203088 call!57967))

(declare-fun addStillContains!1016 (ListLongMap!17803 (_ BitVec 64) V!45929 (_ BitVec 64)) Unit!39808)

(assert (=> b!1203088 (= lt!545325 (addStillContains!1016 lt!545332 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1203088 (contains!6915 call!57964 k!934)))

(declare-fun b!1203089 () Bool)

(declare-fun res!800751 () Bool)

(assert (=> b!1203089 (=> (not res!800751) (not e!683197))))

(assert (=> b!1203089 (= res!800751 (= (select (arr!37617 _keys!1208) i!673) k!934))))

(declare-fun b!1203090 () Bool)

(assert (=> b!1203090 (= e!683191 (not e!683187))))

(declare-fun res!800753 () Bool)

(assert (=> b!1203090 (=> res!800753 e!683187)))

(assert (=> b!1203090 (= res!800753 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1203090 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!545327 () Unit!39808)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77952 (_ BitVec 64) (_ BitVec 32)) Unit!39808)

(assert (=> b!1203090 (= lt!545327 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1203091 () Bool)

(declare-fun res!800749 () Bool)

(assert (=> b!1203091 (=> (not res!800749) (not e!683197))))

(assert (=> b!1203091 (= res!800749 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38154 _keys!1208))))))

(declare-fun b!1203092 () Bool)

(assert (=> b!1203092 (= e!683194 e!683199)))

(declare-fun res!800747 () Bool)

(assert (=> b!1203092 (=> res!800747 e!683199)))

(assert (=> b!1203092 (= res!800747 (not (= (select (arr!37617 _keys!1208) from!1455) k!934)))))

(assert (=> b!1203092 e!683192))

(assert (=> b!1203092 (= c!117727 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!545337 () Unit!39808)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1037 (array!77952 array!77954 (_ BitVec 32) (_ BitVec 32) V!45929 V!45929 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39808)

(assert (=> b!1203092 (= lt!545337 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1037 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57965 () Bool)

(assert (=> bm!57965 (= call!57967 (contains!6915 (ite c!117728 lt!545332 call!57970) k!934))))

(declare-fun b!1203093 () Bool)

(assert (=> b!1203093 (= e!683196 tp_is_empty!30601)))

(declare-fun b!1203094 () Bool)

(declare-fun res!800744 () Bool)

(assert (=> b!1203094 (=> (not res!800744) (not e!683197))))

(assert (=> b!1203094 (= res!800744 (and (= (size!38155 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38154 _keys!1208) (size!38155 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1203095 () Bool)

(declare-fun lt!545329 () Unit!39808)

(assert (=> b!1203095 (= e!683200 lt!545329)))

(assert (=> b!1203095 (= lt!545329 call!57966)))

(assert (=> b!1203095 call!57963))

(declare-fun b!1203096 () Bool)

(assert (=> b!1203096 (= e!683198 (and e!683195 mapRes!47744))))

(declare-fun condMapEmpty!47744 () Bool)

(declare-fun mapDefault!47744 () ValueCell!14591)

