; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100096 () Bool)

(assert start!100096)

(declare-fun b_free!25639 () Bool)

(declare-fun b_next!25639 () Bool)

(assert (=> start!100096 (= b_free!25639 (not b_next!25639))))

(declare-fun tp!89631 () Bool)

(declare-fun b_and!42159 () Bool)

(assert (=> start!100096 (= tp!89631 b_and!42159)))

(declare-fun b!1192626 () Bool)

(declare-fun e!677915 () Bool)

(assert (=> b!1192626 (= e!677915 true)))

(declare-datatypes ((array!77102 0))(
  ( (array!77103 (arr!37197 (Array (_ BitVec 32) (_ BitVec 64))) (size!37734 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77102)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((V!45353 0))(
  ( (V!45354 (val!15141 Int)) )
))
(declare-datatypes ((ValueCell!14375 0))(
  ( (ValueCellFull!14375 (v!17780 V!45353)) (EmptyCell!14375) )
))
(declare-datatypes ((array!77104 0))(
  ( (array!77105 (arr!37198 (Array (_ BitVec 32) ValueCell!14375)) (size!37735 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77104)

(declare-fun lt!542260 () array!77102)

(declare-fun minValue!944 () V!45353)

(declare-fun lt!542259 () array!77104)

(declare-fun zeroValue!944 () V!45353)

(declare-datatypes ((tuple2!19606 0))(
  ( (tuple2!19607 (_1!9813 (_ BitVec 64)) (_2!9813 V!45353)) )
))
(declare-datatypes ((List!26367 0))(
  ( (Nil!26364) (Cons!26363 (h!27572 tuple2!19606) (t!39005 List!26367)) )
))
(declare-datatypes ((ListLongMap!17587 0))(
  ( (ListLongMap!17588 (toList!8809 List!26367)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5223 (array!77102 array!77104 (_ BitVec 32) (_ BitVec 32) V!45353 V!45353 (_ BitVec 32) Int) ListLongMap!17587)

(declare-fun -!1785 (ListLongMap!17587 (_ BitVec 64)) ListLongMap!17587)

(assert (=> b!1192626 (= (getCurrentListMapNoExtraKeys!5223 lt!542260 lt!542259 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1785 (getCurrentListMapNoExtraKeys!5223 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39506 0))(
  ( (Unit!39507) )
))
(declare-fun lt!542262 () Unit!39506)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!991 (array!77102 array!77104 (_ BitVec 32) (_ BitVec 32) V!45353 V!45353 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39506)

(assert (=> b!1192626 (= lt!542262 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!991 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1192627 () Bool)

(declare-fun e!677912 () Bool)

(declare-fun e!677910 () Bool)

(declare-fun mapRes!47081 () Bool)

(assert (=> b!1192627 (= e!677912 (and e!677910 mapRes!47081))))

(declare-fun condMapEmpty!47081 () Bool)

(declare-fun mapDefault!47081 () ValueCell!14375)

