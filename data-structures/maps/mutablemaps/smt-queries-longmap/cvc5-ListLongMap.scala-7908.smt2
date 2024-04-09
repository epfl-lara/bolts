; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98228 () Bool)

(assert start!98228)

(declare-fun b_free!23893 () Bool)

(declare-fun b_next!23893 () Bool)

(assert (=> start!98228 (= b_free!23893 (not b_next!23893))))

(declare-fun tp!84384 () Bool)

(declare-fun b_and!38591 () Bool)

(assert (=> start!98228 (= tp!84384 b_and!38591)))

(declare-fun b!1129890 () Bool)

(declare-fun res!755073 () Bool)

(declare-fun e!643083 () Bool)

(assert (=> b!1129890 (=> (not res!755073) (not e!643083))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((array!73664 0))(
  ( (array!73665 (arr!35481 (Array (_ BitVec 32) (_ BitVec 64))) (size!36018 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73664)

(assert (=> b!1129890 (= res!755073 (= (select (arr!35481 _keys!1208) i!673) k!934))))

(declare-fun b!1129891 () Bool)

(declare-datatypes ((Unit!36965 0))(
  ( (Unit!36966) )
))
(declare-fun e!643075 () Unit!36965)

(declare-fun lt!501673 () Unit!36965)

(assert (=> b!1129891 (= e!643075 lt!501673)))

(declare-fun call!48191 () Unit!36965)

(assert (=> b!1129891 (= lt!501673 call!48191)))

(declare-fun call!48195 () Bool)

(assert (=> b!1129891 call!48195))

(declare-fun b!1129892 () Bool)

(declare-fun e!643074 () Bool)

(declare-fun tp_is_empty!28423 () Bool)

(assert (=> b!1129892 (= e!643074 tp_is_empty!28423)))

(declare-fun bm!48187 () Bool)

(declare-fun call!48194 () Bool)

(declare-datatypes ((V!43025 0))(
  ( (V!43026 (val!14268 Int)) )
))
(declare-datatypes ((tuple2!18060 0))(
  ( (tuple2!18061 (_1!9040 (_ BitVec 64)) (_2!9040 V!43025)) )
))
(declare-datatypes ((List!24879 0))(
  ( (Nil!24876) (Cons!24875 (h!26084 tuple2!18060) (t!35771 List!24879)) )
))
(declare-datatypes ((ListLongMap!16041 0))(
  ( (ListLongMap!16042 (toList!8036 List!24879)) )
))
(declare-fun lt!501678 () ListLongMap!16041)

(declare-fun c!109905 () Bool)

(declare-fun call!48193 () ListLongMap!16041)

(declare-fun contains!6530 (ListLongMap!16041 (_ BitVec 64)) Bool)

(assert (=> bm!48187 (= call!48194 (contains!6530 (ite c!109905 lt!501678 call!48193) k!934))))

(declare-fun b!1129893 () Bool)

(declare-fun e!643080 () Bool)

(declare-fun e!643086 () Bool)

(assert (=> b!1129893 (= e!643080 e!643086)))

(declare-fun res!755074 () Bool)

(assert (=> b!1129893 (=> res!755074 e!643086)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1129893 (= res!755074 (not (= (select (arr!35481 _keys!1208) from!1455) k!934)))))

(declare-fun e!643087 () Bool)

(assert (=> b!1129893 e!643087))

(declare-fun c!109904 () Bool)

(assert (=> b!1129893 (= c!109904 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43025)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13502 0))(
  ( (ValueCellFull!13502 (v!16902 V!43025)) (EmptyCell!13502) )
))
(declare-datatypes ((array!73666 0))(
  ( (array!73667 (arr!35482 (Array (_ BitVec 32) ValueCell!13502)) (size!36019 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73666)

(declare-fun minValue!944 () V!43025)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!501675 () Unit!36965)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!419 (array!73664 array!73666 (_ BitVec 32) (_ BitVec 32) V!43025 V!43025 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36965)

(assert (=> b!1129893 (= lt!501675 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!419 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48188 () Bool)

(assert (=> bm!48188 (= call!48195 call!48194)))

(declare-fun bm!48189 () Bool)

(declare-fun call!48192 () Unit!36965)

(assert (=> bm!48189 (= call!48191 call!48192)))

(declare-fun b!1129894 () Bool)

(declare-fun e!643082 () Bool)

(assert (=> b!1129894 (= e!643086 e!643082)))

(declare-fun res!755082 () Bool)

(assert (=> b!1129894 (=> res!755082 e!643082)))

(declare-fun lt!501677 () ListLongMap!16041)

(assert (=> b!1129894 (= res!755082 (not (contains!6530 lt!501677 k!934)))))

(declare-fun getCurrentListMapNoExtraKeys!4489 (array!73664 array!73666 (_ BitVec 32) (_ BitVec 32) V!43025 V!43025 (_ BitVec 32) Int) ListLongMap!16041)

(assert (=> b!1129894 (= lt!501677 (getCurrentListMapNoExtraKeys!4489 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129895 () Bool)

(assert (=> b!1129895 call!48195))

(declare-fun lt!501681 () Unit!36965)

(assert (=> b!1129895 (= lt!501681 call!48191)))

(declare-fun e!643077 () Unit!36965)

(assert (=> b!1129895 (= e!643077 lt!501681)))

(declare-fun b!1129896 () Bool)

(declare-fun res!755081 () Bool)

(assert (=> b!1129896 (=> (not res!755081) (not e!643083))))

(assert (=> b!1129896 (= res!755081 (and (= (size!36019 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36018 _keys!1208) (size!36019 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1129898 () Bool)

(declare-fun res!755080 () Bool)

(declare-fun e!643085 () Bool)

(assert (=> b!1129898 (=> (not res!755080) (not e!643085))))

(declare-fun lt!501680 () array!73664)

(declare-datatypes ((List!24880 0))(
  ( (Nil!24877) (Cons!24876 (h!26085 (_ BitVec 64)) (t!35772 List!24880)) )
))
(declare-fun arrayNoDuplicates!0 (array!73664 (_ BitVec 32) List!24880) Bool)

(assert (=> b!1129898 (= res!755080 (arrayNoDuplicates!0 lt!501680 #b00000000000000000000000000000000 Nil!24877))))

(declare-fun b!1129899 () Bool)

(declare-fun e!643081 () Unit!36965)

(assert (=> b!1129899 (= e!643081 e!643077)))

(declare-fun c!109906 () Bool)

(declare-fun lt!501683 () Bool)

(assert (=> b!1129899 (= c!109906 (and (not lt!501683) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!48190 () Bool)

(declare-fun addStillContains!703 (ListLongMap!16041 (_ BitVec 64) V!43025 (_ BitVec 64)) Unit!36965)

(assert (=> bm!48190 (= call!48192 (addStillContains!703 (ite c!109905 lt!501678 lt!501677) (ite c!109905 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!109906 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!109905 minValue!944 (ite c!109906 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1129900 () Bool)

(declare-fun res!755075 () Bool)

(assert (=> b!1129900 (=> (not res!755075) (not e!643083))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1129900 (= res!755075 (validKeyInArray!0 k!934))))

(declare-fun b!1129901 () Bool)

(assert (=> b!1129901 (= e!643083 e!643085)))

(declare-fun res!755069 () Bool)

(assert (=> b!1129901 (=> (not res!755069) (not e!643085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73664 (_ BitVec 32)) Bool)

(assert (=> b!1129901 (= res!755069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501680 mask!1564))))

(assert (=> b!1129901 (= lt!501680 (array!73665 (store (arr!35481 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36018 _keys!1208)))))

(declare-fun b!1129902 () Bool)

(declare-fun e!643088 () Bool)

(assert (=> b!1129902 (= e!643088 e!643080)))

(declare-fun res!755070 () Bool)

(assert (=> b!1129902 (=> res!755070 e!643080)))

(assert (=> b!1129902 (= res!755070 (not (= from!1455 i!673)))))

(declare-fun lt!501671 () array!73666)

(declare-fun lt!501674 () ListLongMap!16041)

(assert (=> b!1129902 (= lt!501674 (getCurrentListMapNoExtraKeys!4489 lt!501680 lt!501671 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2565 (Int (_ BitVec 64)) V!43025)

(assert (=> b!1129902 (= lt!501671 (array!73667 (store (arr!35482 _values!996) i!673 (ValueCellFull!13502 (dynLambda!2565 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36019 _values!996)))))

(declare-fun lt!501682 () ListLongMap!16041)

(assert (=> b!1129902 (= lt!501682 (getCurrentListMapNoExtraKeys!4489 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1129903 () Bool)

(declare-fun res!755078 () Bool)

(assert (=> b!1129903 (=> (not res!755078) (not e!643083))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1129903 (= res!755078 (validMask!0 mask!1564))))

(declare-fun call!48197 () ListLongMap!16041)

(declare-fun bm!48191 () Bool)

(assert (=> bm!48191 (= call!48197 (getCurrentListMapNoExtraKeys!4489 lt!501680 lt!501671 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129904 () Bool)

(declare-fun res!755071 () Bool)

(assert (=> b!1129904 (=> (not res!755071) (not e!643083))))

(assert (=> b!1129904 (= res!755071 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24877))))

(declare-fun b!1129905 () Bool)

(declare-fun c!109907 () Bool)

(assert (=> b!1129905 (= c!109907 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501683))))

(assert (=> b!1129905 (= e!643077 e!643075)))

(declare-fun b!1129906 () Bool)

(declare-fun res!755068 () Bool)

(assert (=> b!1129906 (=> (not res!755068) (not e!643083))))

(assert (=> b!1129906 (= res!755068 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36018 _keys!1208))))))

(declare-fun b!1129907 () Bool)

(declare-fun call!48190 () ListLongMap!16041)

(assert (=> b!1129907 (= e!643087 (= call!48197 call!48190))))

(declare-fun b!1129908 () Bool)

(declare-fun lt!501676 () Unit!36965)

(assert (=> b!1129908 (= e!643081 lt!501676)))

(declare-fun lt!501679 () Unit!36965)

(assert (=> b!1129908 (= lt!501679 (addStillContains!703 lt!501677 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun call!48196 () ListLongMap!16041)

(assert (=> b!1129908 (= lt!501678 call!48196)))

(assert (=> b!1129908 call!48194))

(assert (=> b!1129908 (= lt!501676 call!48192)))

(declare-fun +!3403 (ListLongMap!16041 tuple2!18060) ListLongMap!16041)

(assert (=> b!1129908 (contains!6530 (+!3403 lt!501678 (tuple2!18061 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1129909 () Bool)

(declare-fun Unit!36967 () Unit!36965)

(assert (=> b!1129909 (= e!643075 Unit!36967)))

(declare-fun b!1129910 () Bool)

(declare-fun e!643084 () Bool)

(assert (=> b!1129910 (= e!643082 e!643084)))

(declare-fun res!755076 () Bool)

(assert (=> b!1129910 (=> res!755076 e!643084)))

(assert (=> b!1129910 (= res!755076 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36018 _keys!1208))))))

(declare-fun lt!501670 () Unit!36965)

(assert (=> b!1129910 (= lt!501670 e!643081)))

(assert (=> b!1129910 (= c!109905 (and (not lt!501683) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1129910 (= lt!501683 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1129911 () Bool)

(declare-fun e!643078 () Bool)

(assert (=> b!1129911 (= e!643078 tp_is_empty!28423)))

(declare-fun b!1129912 () Bool)

(assert (=> b!1129912 (= e!643084 true)))

(declare-fun lt!501684 () Bool)

(declare-fun getCurrentListMap!4440 (array!73664 array!73666 (_ BitVec 32) (_ BitVec 32) V!43025 V!43025 (_ BitVec 32) Int) ListLongMap!16041)

(assert (=> b!1129912 (= lt!501684 (contains!6530 (getCurrentListMap!4440 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1129913 () Bool)

(declare-fun e!643076 () Bool)

(declare-fun mapRes!44452 () Bool)

(assert (=> b!1129913 (= e!643076 (and e!643078 mapRes!44452))))

(declare-fun condMapEmpty!44452 () Bool)

(declare-fun mapDefault!44452 () ValueCell!13502)

