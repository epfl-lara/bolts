; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99964 () Bool)

(assert start!99964)

(declare-fun b_free!25507 () Bool)

(declare-fun b_next!25507 () Bool)

(assert (=> start!99964 (= b_free!25507 (not b_next!25507))))

(declare-fun tp!89235 () Bool)

(declare-fun b_and!41895 () Bool)

(assert (=> start!99964 (= tp!89235 b_and!41895)))

(declare-fun b!1189524 () Bool)

(declare-fun e!676329 () Bool)

(declare-fun e!676332 () Bool)

(assert (=> b!1189524 (= e!676329 e!676332)))

(declare-fun res!791116 () Bool)

(assert (=> b!1189524 (=> res!791116 e!676332)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1189524 (= res!791116 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45177 0))(
  ( (V!45178 (val!15075 Int)) )
))
(declare-fun zeroValue!944 () V!45177)

(declare-datatypes ((tuple2!19494 0))(
  ( (tuple2!19495 (_1!9757 (_ BitVec 64)) (_2!9757 V!45177)) )
))
(declare-datatypes ((List!26254 0))(
  ( (Nil!26251) (Cons!26250 (h!27459 tuple2!19494) (t!38760 List!26254)) )
))
(declare-datatypes ((ListLongMap!17475 0))(
  ( (ListLongMap!17476 (toList!8753 List!26254)) )
))
(declare-fun lt!541071 () ListLongMap!17475)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14309 0))(
  ( (ValueCellFull!14309 (v!17714 V!45177)) (EmptyCell!14309) )
))
(declare-datatypes ((array!76840 0))(
  ( (array!76841 (arr!37066 (Array (_ BitVec 32) ValueCell!14309)) (size!37603 (_ BitVec 32))) )
))
(declare-fun lt!541074 () array!76840)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!76842 0))(
  ( (array!76843 (arr!37067 (Array (_ BitVec 32) (_ BitVec 64))) (size!37604 (_ BitVec 32))) )
))
(declare-fun lt!541072 () array!76842)

(declare-fun minValue!944 () V!45177)

(declare-fun getCurrentListMapNoExtraKeys!5167 (array!76842 array!76840 (_ BitVec 32) (_ BitVec 32) V!45177 V!45177 (_ BitVec 32) Int) ListLongMap!17475)

(assert (=> b!1189524 (= lt!541071 (getCurrentListMapNoExtraKeys!5167 lt!541072 lt!541074 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76840)

(declare-fun dynLambda!3119 (Int (_ BitVec 64)) V!45177)

(assert (=> b!1189524 (= lt!541074 (array!76841 (store (arr!37066 _values!996) i!673 (ValueCellFull!14309 (dynLambda!3119 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37603 _values!996)))))

(declare-fun _keys!1208 () array!76842)

(declare-fun lt!541070 () ListLongMap!17475)

(assert (=> b!1189524 (= lt!541070 (getCurrentListMapNoExtraKeys!5167 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1189525 () Bool)

(declare-fun res!791106 () Bool)

(declare-fun e!676328 () Bool)

(assert (=> b!1189525 (=> (not res!791106) (not e!676328))))

(assert (=> b!1189525 (= res!791106 (and (= (size!37603 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37604 _keys!1208) (size!37603 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189526 () Bool)

(assert (=> b!1189526 (= e!676332 true)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1735 (ListLongMap!17475 (_ BitVec 64)) ListLongMap!17475)

(assert (=> b!1189526 (= (getCurrentListMapNoExtraKeys!5167 lt!541072 lt!541074 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1735 (getCurrentListMapNoExtraKeys!5167 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39398 0))(
  ( (Unit!39399) )
))
(declare-fun lt!541069 () Unit!39398)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!941 (array!76842 array!76840 (_ BitVec 32) (_ BitVec 32) V!45177 V!45177 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39398)

(assert (=> b!1189526 (= lt!541069 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!941 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189527 () Bool)

(declare-fun e!676333 () Bool)

(declare-fun e!676327 () Bool)

(declare-fun mapRes!46883 () Bool)

(assert (=> b!1189527 (= e!676333 (and e!676327 mapRes!46883))))

(declare-fun condMapEmpty!46883 () Bool)

(declare-fun mapDefault!46883 () ValueCell!14309)

