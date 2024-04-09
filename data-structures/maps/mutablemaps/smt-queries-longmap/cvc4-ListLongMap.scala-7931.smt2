; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98466 () Bool)

(assert start!98466)

(declare-fun b_free!24035 () Bool)

(declare-fun b_next!24035 () Bool)

(assert (=> start!98466 (= b_free!24035 (not b_next!24035))))

(declare-fun tp!84816 () Bool)

(declare-fun b_and!38933 () Bool)

(assert (=> start!98466 (= tp!84816 b_and!38933)))

(declare-fun b!1136802 () Bool)

(declare-fun e!646930 () Bool)

(declare-fun e!646929 () Bool)

(assert (=> b!1136802 (= e!646930 e!646929)))

(declare-fun res!758755 () Bool)

(assert (=> b!1136802 (=> res!758755 e!646929)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1136802 (= res!758755 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43213 0))(
  ( (V!43214 (val!14339 Int)) )
))
(declare-fun zeroValue!944 () V!43213)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!18198 0))(
  ( (tuple2!18199 (_1!9109 (_ BitVec 64)) (_2!9109 V!43213)) )
))
(declare-datatypes ((List!25008 0))(
  ( (Nil!25005) (Cons!25004 (h!26213 tuple2!18198) (t!36042 List!25008)) )
))
(declare-datatypes ((ListLongMap!16179 0))(
  ( (ListLongMap!16180 (toList!8105 List!25008)) )
))
(declare-fun lt!505491 () ListLongMap!16179)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!73950 0))(
  ( (array!73951 (arr!35622 (Array (_ BitVec 32) (_ BitVec 64))) (size!36159 (_ BitVec 32))) )
))
(declare-fun lt!505490 () array!73950)

(declare-fun minValue!944 () V!43213)

(declare-datatypes ((ValueCell!13573 0))(
  ( (ValueCellFull!13573 (v!16977 V!43213)) (EmptyCell!13573) )
))
(declare-datatypes ((array!73952 0))(
  ( (array!73953 (arr!35623 (Array (_ BitVec 32) ValueCell!13573)) (size!36160 (_ BitVec 32))) )
))
(declare-fun lt!505481 () array!73952)

(declare-fun getCurrentListMapNoExtraKeys!4553 (array!73950 array!73952 (_ BitVec 32) (_ BitVec 32) V!43213 V!43213 (_ BitVec 32) Int) ListLongMap!16179)

(assert (=> b!1136802 (= lt!505491 (getCurrentListMapNoExtraKeys!4553 lt!505490 lt!505481 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73952)

(declare-fun dynLambda!2616 (Int (_ BitVec 64)) V!43213)

(assert (=> b!1136802 (= lt!505481 (array!73953 (store (arr!35623 _values!996) i!673 (ValueCellFull!13573 (dynLambda!2616 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36160 _values!996)))))

(declare-fun _keys!1208 () array!73950)

(declare-fun lt!505484 () ListLongMap!16179)

(assert (=> b!1136802 (= lt!505484 (getCurrentListMapNoExtraKeys!4553 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!646924 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!49963 () ListLongMap!16179)

(declare-fun call!49965 () ListLongMap!16179)

(declare-fun b!1136803 () Bool)

(declare-fun -!1215 (ListLongMap!16179 (_ BitVec 64)) ListLongMap!16179)

(assert (=> b!1136803 (= e!646924 (= call!49963 (-!1215 call!49965 k!934)))))

(declare-fun b!1136804 () Bool)

(declare-fun e!646927 () Bool)

(assert (=> b!1136804 (= e!646927 true)))

(declare-datatypes ((Unit!37183 0))(
  ( (Unit!37184) )
))
(declare-fun lt!505492 () Unit!37183)

(declare-fun e!646937 () Unit!37183)

(assert (=> b!1136804 (= lt!505492 e!646937)))

(declare-fun c!111124 () Bool)

(declare-fun lt!505493 () ListLongMap!16179)

(declare-fun contains!6616 (ListLongMap!16179 (_ BitVec 64)) Bool)

(assert (=> b!1136804 (= c!111124 (contains!6616 lt!505493 k!934))))

(assert (=> b!1136804 (= lt!505493 (getCurrentListMapNoExtraKeys!4553 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136805 () Bool)

(declare-fun call!49967 () Bool)

(assert (=> b!1136805 call!49967))

(declare-fun lt!505480 () Unit!37183)

(declare-fun call!49961 () Unit!37183)

(assert (=> b!1136805 (= lt!505480 call!49961)))

(declare-fun e!646931 () Unit!37183)

(assert (=> b!1136805 (= e!646931 lt!505480)))

(declare-fun b!1136807 () Bool)

(declare-fun call!49968 () ListLongMap!16179)

(assert (=> b!1136807 (contains!6616 call!49968 k!934)))

(declare-fun lt!505483 () Unit!37183)

(declare-fun lt!505488 () ListLongMap!16179)

(declare-fun addStillContains!760 (ListLongMap!16179 (_ BitVec 64) V!43213 (_ BitVec 64)) Unit!37183)

(assert (=> b!1136807 (= lt!505483 (addStillContains!760 lt!505488 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!49962 () Bool)

(assert (=> b!1136807 call!49962))

(declare-fun +!3459 (ListLongMap!16179 tuple2!18198) ListLongMap!16179)

(assert (=> b!1136807 (= lt!505488 (+!3459 lt!505493 (tuple2!18199 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!505486 () Unit!37183)

(declare-fun call!49964 () Unit!37183)

(assert (=> b!1136807 (= lt!505486 call!49964)))

(declare-fun e!646934 () Unit!37183)

(assert (=> b!1136807 (= e!646934 lt!505483)))

(declare-fun bm!49958 () Bool)

(declare-fun c!111123 () Bool)

(declare-fun c!111122 () Bool)

(assert (=> bm!49958 (= call!49964 (addStillContains!760 lt!505493 (ite (or c!111122 c!111123) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111122 c!111123) zeroValue!944 minValue!944) k!934))))

(declare-fun bm!49959 () Bool)

(declare-fun call!49966 () ListLongMap!16179)

(assert (=> bm!49959 (= call!49966 call!49968)))

(declare-fun b!1136808 () Bool)

(declare-fun e!646933 () Unit!37183)

(declare-fun lt!505479 () Unit!37183)

(assert (=> b!1136808 (= e!646933 lt!505479)))

(assert (=> b!1136808 (= lt!505479 call!49961)))

(assert (=> b!1136808 call!49967))

(declare-fun b!1136809 () Bool)

(assert (=> b!1136809 (= e!646924 (= call!49963 call!49965))))

(declare-fun b!1136810 () Bool)

(declare-fun Unit!37185 () Unit!37183)

(assert (=> b!1136810 (= e!646937 Unit!37185)))

(declare-fun b!1136811 () Bool)

(declare-fun res!758744 () Bool)

(declare-fun e!646925 () Bool)

(assert (=> b!1136811 (=> (not res!758744) (not e!646925))))

(declare-datatypes ((List!25009 0))(
  ( (Nil!25006) (Cons!25005 (h!26214 (_ BitVec 64)) (t!36043 List!25009)) )
))
(declare-fun arrayNoDuplicates!0 (array!73950 (_ BitVec 32) List!25009) Bool)

(assert (=> b!1136811 (= res!758744 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25006))))

(declare-fun e!646935 () Bool)

(declare-fun b!1136812 () Bool)

(declare-fun arrayContainsKey!0 (array!73950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1136812 (= e!646935 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1136813 () Bool)

(declare-fun Unit!37186 () Unit!37183)

(assert (=> b!1136813 (= e!646931 Unit!37186)))

(declare-fun b!1136814 () Bool)

(assert (=> b!1136814 (= e!646929 e!646927)))

(declare-fun res!758747 () Bool)

(assert (=> b!1136814 (=> res!758747 e!646927)))

(assert (=> b!1136814 (= res!758747 (not (= (select (arr!35622 _keys!1208) from!1455) k!934)))))

(assert (=> b!1136814 e!646924))

(declare-fun c!111126 () Bool)

(assert (=> b!1136814 (= c!111126 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!505485 () Unit!37183)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!471 (array!73950 array!73952 (_ BitVec 32) (_ BitVec 32) V!43213 V!43213 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37183)

(assert (=> b!1136814 (= lt!505485 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136815 () Bool)

(declare-fun Unit!37187 () Unit!37183)

(assert (=> b!1136815 (= e!646937 Unit!37187)))

(declare-fun lt!505482 () Bool)

(assert (=> b!1136815 (= lt!505482 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1136815 (= c!111122 (and (not lt!505482) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!505487 () Unit!37183)

(assert (=> b!1136815 (= lt!505487 e!646934)))

(declare-fun lt!505494 () Unit!37183)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!365 (array!73950 array!73952 (_ BitVec 32) (_ BitVec 32) V!43213 V!43213 (_ BitVec 64) (_ BitVec 32) Int) Unit!37183)

(assert (=> b!1136815 (= lt!505494 (lemmaListMapContainsThenArrayContainsFrom!365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111125 () Bool)

(assert (=> b!1136815 (= c!111125 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!758754 () Bool)

(assert (=> b!1136815 (= res!758754 e!646935)))

(declare-fun e!646932 () Bool)

(assert (=> b!1136815 (=> (not res!758754) (not e!646932))))

(assert (=> b!1136815 e!646932))

(declare-fun lt!505489 () Unit!37183)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73950 (_ BitVec 32) (_ BitVec 32)) Unit!37183)

(assert (=> b!1136815 (= lt!505489 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1136815 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25006)))

(declare-fun lt!505477 () Unit!37183)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!73950 (_ BitVec 64) (_ BitVec 32) List!25009) Unit!37183)

(assert (=> b!1136815 (= lt!505477 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25006))))

(assert (=> b!1136815 false))

(declare-fun b!1136816 () Bool)

(declare-fun res!758743 () Bool)

(declare-fun e!646936 () Bool)

(assert (=> b!1136816 (=> (not res!758743) (not e!646936))))

(assert (=> b!1136816 (= res!758743 (arrayNoDuplicates!0 lt!505490 #b00000000000000000000000000000000 Nil!25006))))

(declare-fun bm!49960 () Bool)

(assert (=> bm!49960 (= call!49961 call!49964)))

(declare-fun b!1136817 () Bool)

(assert (=> b!1136817 (= e!646935 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505482) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1136818 () Bool)

(declare-fun res!758745 () Bool)

(assert (=> b!1136818 (=> (not res!758745) (not e!646925))))

(assert (=> b!1136818 (= res!758745 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36159 _keys!1208))))))

(declare-fun b!1136806 () Bool)

(assert (=> b!1136806 (= e!646936 (not e!646930))))

(declare-fun res!758751 () Bool)

(assert (=> b!1136806 (=> res!758751 e!646930)))

(assert (=> b!1136806 (= res!758751 (bvsgt from!1455 i!673))))

(assert (=> b!1136806 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!505478 () Unit!37183)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73950 (_ BitVec 64) (_ BitVec 32)) Unit!37183)

(assert (=> b!1136806 (= lt!505478 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!758756 () Bool)

(assert (=> start!98466 (=> (not res!758756) (not e!646925))))

(assert (=> start!98466 (= res!758756 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36159 _keys!1208))))))

(assert (=> start!98466 e!646925))

(declare-fun tp_is_empty!28565 () Bool)

(assert (=> start!98466 tp_is_empty!28565))

(declare-fun array_inv!27188 (array!73950) Bool)

(assert (=> start!98466 (array_inv!27188 _keys!1208)))

(assert (=> start!98466 true))

(assert (=> start!98466 tp!84816))

(declare-fun e!646923 () Bool)

(declare-fun array_inv!27189 (array!73952) Bool)

(assert (=> start!98466 (and (array_inv!27189 _values!996) e!646923)))

(declare-fun b!1136819 () Bool)

(declare-fun e!646928 () Bool)

(assert (=> b!1136819 (= e!646928 tp_is_empty!28565)))

(declare-fun mapNonEmpty!44672 () Bool)

(declare-fun mapRes!44672 () Bool)

(declare-fun tp!84817 () Bool)

(declare-fun e!646938 () Bool)

(assert (=> mapNonEmpty!44672 (= mapRes!44672 (and tp!84817 e!646938))))

(declare-fun mapKey!44672 () (_ BitVec 32))

(declare-fun mapRest!44672 () (Array (_ BitVec 32) ValueCell!13573))

(declare-fun mapValue!44672 () ValueCell!13573)

(assert (=> mapNonEmpty!44672 (= (arr!35623 _values!996) (store mapRest!44672 mapKey!44672 mapValue!44672))))

(declare-fun b!1136820 () Bool)

(assert (=> b!1136820 (= e!646923 (and e!646928 mapRes!44672))))

(declare-fun condMapEmpty!44672 () Bool)

(declare-fun mapDefault!44672 () ValueCell!13573)

