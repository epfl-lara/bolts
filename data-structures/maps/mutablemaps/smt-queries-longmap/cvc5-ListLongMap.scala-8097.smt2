; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99484 () Bool)

(assert start!99484)

(declare-fun b_free!25027 () Bool)

(declare-fun b_next!25027 () Bool)

(assert (=> start!99484 (= b_free!25027 (not b_next!25027))))

(declare-fun tp!87796 () Bool)

(declare-fun b_and!40935 () Bool)

(assert (=> start!99484 (= tp!87796 b_and!40935)))

(declare-fun b!1174717 () Bool)

(declare-fun res!780224 () Bool)

(declare-fun e!667773 () Bool)

(assert (=> b!1174717 (=> (not res!780224) (not e!667773))))

(declare-datatypes ((array!75890 0))(
  ( (array!75891 (arr!36591 (Array (_ BitVec 32) (_ BitVec 64))) (size!37128 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75890)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1174717 (= res!780224 (= (select (arr!36591 _keys!1208) i!673) k!934))))

(declare-fun b!1174718 () Bool)

(declare-fun e!667766 () Bool)

(declare-fun tp_is_empty!29557 () Bool)

(assert (=> b!1174718 (= e!667766 tp_is_empty!29557)))

(declare-fun b!1174719 () Bool)

(declare-fun e!667776 () Bool)

(declare-fun e!667770 () Bool)

(assert (=> b!1174719 (= e!667776 e!667770)))

(declare-fun res!780220 () Bool)

(assert (=> b!1174719 (=> res!780220 e!667770)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174719 (= res!780220 (not (validKeyInArray!0 (select (arr!36591 _keys!1208) from!1455))))))

(declare-datatypes ((V!44537 0))(
  ( (V!44538 (val!14835 Int)) )
))
(declare-datatypes ((tuple2!19068 0))(
  ( (tuple2!19069 (_1!9544 (_ BitVec 64)) (_2!9544 V!44537)) )
))
(declare-datatypes ((List!25838 0))(
  ( (Nil!25835) (Cons!25834 (h!27043 tuple2!19068) (t!37864 List!25838)) )
))
(declare-datatypes ((ListLongMap!17049 0))(
  ( (ListLongMap!17050 (toList!8540 List!25838)) )
))
(declare-fun lt!529781 () ListLongMap!17049)

(declare-fun lt!529787 () ListLongMap!17049)

(assert (=> b!1174719 (= lt!529781 lt!529787)))

(declare-fun lt!529789 () ListLongMap!17049)

(declare-fun -!1550 (ListLongMap!17049 (_ BitVec 64)) ListLongMap!17049)

(assert (=> b!1174719 (= lt!529787 (-!1550 lt!529789 k!934))))

(declare-fun zeroValue!944 () V!44537)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14069 0))(
  ( (ValueCellFull!14069 (v!17474 V!44537)) (EmptyCell!14069) )
))
(declare-datatypes ((array!75892 0))(
  ( (array!75893 (arr!36592 (Array (_ BitVec 32) ValueCell!14069)) (size!37129 (_ BitVec 32))) )
))
(declare-fun lt!529793 () array!75892)

(declare-fun minValue!944 () V!44537)

(declare-fun lt!529791 () array!75890)

(declare-fun getCurrentListMapNoExtraKeys!4971 (array!75890 array!75892 (_ BitVec 32) (_ BitVec 32) V!44537 V!44537 (_ BitVec 32) Int) ListLongMap!17049)

(assert (=> b!1174719 (= lt!529781 (getCurrentListMapNoExtraKeys!4971 lt!529791 lt!529793 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75892)

(assert (=> b!1174719 (= lt!529789 (getCurrentListMapNoExtraKeys!4971 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38673 0))(
  ( (Unit!38674) )
))
(declare-fun lt!529794 () Unit!38673)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!774 (array!75890 array!75892 (_ BitVec 32) (_ BitVec 32) V!44537 V!44537 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38673)

(assert (=> b!1174719 (= lt!529794 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!774 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1174720 () Bool)

(assert (=> b!1174720 (= e!667770 true)))

(assert (=> b!1174720 (not (= (select (arr!36591 _keys!1208) from!1455) k!934))))

(declare-fun lt!529783 () Unit!38673)

(declare-fun e!667767 () Unit!38673)

(assert (=> b!1174720 (= lt!529783 e!667767)))

(declare-fun c!116612 () Bool)

(assert (=> b!1174720 (= c!116612 (= (select (arr!36591 _keys!1208) from!1455) k!934))))

(declare-fun e!667769 () Bool)

(assert (=> b!1174720 e!667769))

(declare-fun res!780219 () Bool)

(assert (=> b!1174720 (=> (not res!780219) (not e!667769))))

(declare-fun lt!529785 () V!44537)

(declare-fun lt!529782 () ListLongMap!17049)

(declare-fun +!3770 (ListLongMap!17049 tuple2!19068) ListLongMap!17049)

(declare-fun get!18713 (ValueCell!14069 V!44537) V!44537)

(assert (=> b!1174720 (= res!780219 (= lt!529782 (+!3770 lt!529787 (tuple2!19069 (select (arr!36591 _keys!1208) from!1455) (get!18713 (select (arr!36592 _values!996) from!1455) lt!529785)))))))

(declare-fun b!1174721 () Bool)

(declare-fun res!780213 () Bool)

(assert (=> b!1174721 (=> (not res!780213) (not e!667773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1174721 (= res!780213 (validMask!0 mask!1564))))

(declare-fun b!1174722 () Bool)

(declare-fun Unit!38675 () Unit!38673)

(assert (=> b!1174722 (= e!667767 Unit!38675)))

(declare-fun b!1174723 () Bool)

(declare-fun e!667771 () Bool)

(declare-fun mapRes!46163 () Bool)

(assert (=> b!1174723 (= e!667771 (and e!667766 mapRes!46163))))

(declare-fun condMapEmpty!46163 () Bool)

(declare-fun mapDefault!46163 () ValueCell!14069)

