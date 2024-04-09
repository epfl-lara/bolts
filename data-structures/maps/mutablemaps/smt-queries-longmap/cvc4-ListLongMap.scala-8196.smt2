; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100082 () Bool)

(assert start!100082)

(declare-fun b_free!25625 () Bool)

(declare-fun b_next!25625 () Bool)

(assert (=> start!100082 (= b_free!25625 (not b_next!25625))))

(declare-fun tp!89589 () Bool)

(declare-fun b_and!42131 () Bool)

(assert (=> start!100082 (= tp!89589 b_and!42131)))

(declare-fun b!1192297 () Bool)

(declare-fun e!677745 () Bool)

(assert (=> b!1192297 (= e!677745 true)))

(declare-datatypes ((V!45333 0))(
  ( (V!45334 (val!15134 Int)) )
))
(declare-fun zeroValue!944 () V!45333)

(declare-datatypes ((array!77074 0))(
  ( (array!77075 (arr!37183 (Array (_ BitVec 32) (_ BitVec 64))) (size!37720 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77074)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14368 0))(
  ( (ValueCellFull!14368 (v!17773 V!45333)) (EmptyCell!14368) )
))
(declare-datatypes ((array!77076 0))(
  ( (array!77077 (arr!37184 (Array (_ BitVec 32) ValueCell!14368)) (size!37721 (_ BitVec 32))) )
))
(declare-fun lt!542131 () array!77076)

(declare-fun lt!542132 () array!77074)

(declare-fun _values!996 () array!77076)

(declare-fun minValue!944 () V!45333)

(declare-datatypes ((tuple2!19594 0))(
  ( (tuple2!19595 (_1!9807 (_ BitVec 64)) (_2!9807 V!45333)) )
))
(declare-datatypes ((List!26358 0))(
  ( (Nil!26355) (Cons!26354 (h!27563 tuple2!19594) (t!38982 List!26358)) )
))
(declare-datatypes ((ListLongMap!17575 0))(
  ( (ListLongMap!17576 (toList!8803 List!26358)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5217 (array!77074 array!77076 (_ BitVec 32) (_ BitVec 32) V!45333 V!45333 (_ BitVec 32) Int) ListLongMap!17575)

(declare-fun -!1781 (ListLongMap!17575 (_ BitVec 64)) ListLongMap!17575)

(assert (=> b!1192297 (= (getCurrentListMapNoExtraKeys!5217 lt!542132 lt!542131 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1781 (getCurrentListMapNoExtraKeys!5217 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39496 0))(
  ( (Unit!39497) )
))
(declare-fun lt!542136 () Unit!39496)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!987 (array!77074 array!77076 (_ BitVec 32) (_ BitVec 32) V!45333 V!45333 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39496)

(assert (=> b!1192297 (= lt!542136 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!987 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1192298 () Bool)

(declare-fun res!793230 () Bool)

(declare-fun e!677748 () Bool)

(assert (=> b!1192298 (=> (not res!793230) (not e!677748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192298 (= res!793230 (validKeyInArray!0 k!934))))

(declare-fun b!1192299 () Bool)

(declare-fun e!677747 () Bool)

(assert (=> b!1192299 (= e!677747 e!677745)))

(declare-fun res!793234 () Bool)

(assert (=> b!1192299 (=> res!793234 e!677745)))

(assert (=> b!1192299 (= res!793234 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!542134 () ListLongMap!17575)

(assert (=> b!1192299 (= lt!542134 (getCurrentListMapNoExtraKeys!5217 lt!542132 lt!542131 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3159 (Int (_ BitVec 64)) V!45333)

(assert (=> b!1192299 (= lt!542131 (array!77077 (store (arr!37184 _values!996) i!673 (ValueCellFull!14368 (dynLambda!3159 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37721 _values!996)))))

(declare-fun lt!542133 () ListLongMap!17575)

(assert (=> b!1192299 (= lt!542133 (getCurrentListMapNoExtraKeys!5217 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1192300 () Bool)

(declare-fun e!677743 () Bool)

(declare-fun e!677742 () Bool)

(declare-fun mapRes!47060 () Bool)

(assert (=> b!1192300 (= e!677743 (and e!677742 mapRes!47060))))

(declare-fun condMapEmpty!47060 () Bool)

(declare-fun mapDefault!47060 () ValueCell!14368)

