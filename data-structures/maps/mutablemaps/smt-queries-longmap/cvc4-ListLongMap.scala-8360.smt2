; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101782 () Bool)

(assert start!101782)

(declare-fun b_free!26435 () Bool)

(declare-fun b_next!26435 () Bool)

(assert (=> start!101782 (= b_free!26435 (not b_next!26435))))

(declare-fun tp!92351 () Bool)

(declare-fun b_and!44141 () Bool)

(assert (=> start!101782 (= tp!92351 b_and!44141)))

(declare-datatypes ((array!79036 0))(
  ( (array!79037 (arr!38141 (Array (_ BitVec 32) (_ BitVec 64))) (size!38678 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79036)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1224871 () Bool)

(declare-fun e!695719 () Bool)

(declare-fun arrayContainsKey!0 (array!79036 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224871 (= e!695719 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1224872 () Bool)

(declare-fun e!695718 () Bool)

(declare-fun e!695714 () Bool)

(assert (=> b!1224872 (= e!695718 e!695714)))

(declare-fun res!814045 () Bool)

(assert (=> b!1224872 (=> res!814045 e!695714)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224872 (= res!814045 (not (validKeyInArray!0 (select (arr!38141 _keys!1208) from!1455))))))

(declare-datatypes ((V!46645 0))(
  ( (V!46646 (val!15626 Int)) )
))
(declare-datatypes ((tuple2!20288 0))(
  ( (tuple2!20289 (_1!10154 (_ BitVec 64)) (_2!10154 V!46645)) )
))
(declare-datatypes ((List!27100 0))(
  ( (Nil!27097) (Cons!27096 (h!28305 tuple2!20288) (t!40522 List!27100)) )
))
(declare-datatypes ((ListLongMap!18269 0))(
  ( (ListLongMap!18270 (toList!9150 List!27100)) )
))
(declare-fun lt!557901 () ListLongMap!18269)

(declare-fun lt!557897 () ListLongMap!18269)

(assert (=> b!1224872 (= lt!557901 lt!557897)))

(declare-fun lt!557890 () ListLongMap!18269)

(declare-fun -!1986 (ListLongMap!18269 (_ BitVec 64)) ListLongMap!18269)

(assert (=> b!1224872 (= lt!557897 (-!1986 lt!557890 k!934))))

(declare-fun zeroValue!944 () V!46645)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!557886 () array!79036)

(declare-fun minValue!944 () V!46645)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14860 0))(
  ( (ValueCellFull!14860 (v!18289 V!46645)) (EmptyCell!14860) )
))
(declare-datatypes ((array!79038 0))(
  ( (array!79039 (arr!38142 (Array (_ BitVec 32) ValueCell!14860)) (size!38679 (_ BitVec 32))) )
))
(declare-fun lt!557889 () array!79038)

(declare-fun getCurrentListMapNoExtraKeys!5547 (array!79036 array!79038 (_ BitVec 32) (_ BitVec 32) V!46645 V!46645 (_ BitVec 32) Int) ListLongMap!18269)

(assert (=> b!1224872 (= lt!557901 (getCurrentListMapNoExtraKeys!5547 lt!557886 lt!557889 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!79038)

(assert (=> b!1224872 (= lt!557890 (getCurrentListMapNoExtraKeys!5547 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40528 0))(
  ( (Unit!40529) )
))
(declare-fun lt!557898 () Unit!40528)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1188 (array!79036 array!79038 (_ BitVec 32) (_ BitVec 32) V!46645 V!46645 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40528)

(assert (=> b!1224872 (= lt!557898 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1188 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1224873 () Bool)

(declare-fun e!695717 () Bool)

(declare-fun e!695716 () Bool)

(declare-fun mapRes!48607 () Bool)

(assert (=> b!1224873 (= e!695717 (and e!695716 mapRes!48607))))

(declare-fun condMapEmpty!48607 () Bool)

(declare-fun mapDefault!48607 () ValueCell!14860)

