; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101326 () Bool)

(assert start!101326)

(declare-fun b_free!26213 () Bool)

(declare-fun b_next!26213 () Bool)

(assert (=> start!101326 (= b_free!26213 (not b_next!26213))))

(declare-fun tp!91661 () Bool)

(declare-fun b_and!43553 () Bool)

(assert (=> start!101326 (= tp!91661 b_and!43553)))

(declare-fun b!1216954 () Bool)

(declare-fun e!690935 () Bool)

(declare-fun e!690940 () Bool)

(assert (=> b!1216954 (= e!690935 e!690940)))

(declare-fun res!808257 () Bool)

(assert (=> b!1216954 (=> res!808257 e!690940)))

(declare-datatypes ((array!78580 0))(
  ( (array!78581 (arr!37921 (Array (_ BitVec 32) (_ BitVec 64))) (size!38458 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78580)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216954 (= res!808257 (not (validKeyInArray!0 (select (arr!37921 _keys!1208) from!1455))))))

(declare-datatypes ((V!46349 0))(
  ( (V!46350 (val!15515 Int)) )
))
(declare-fun zeroValue!944 () V!46349)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14749 0))(
  ( (ValueCellFull!14749 (v!18169 V!46349)) (EmptyCell!14749) )
))
(declare-datatypes ((array!78582 0))(
  ( (array!78583 (arr!37922 (Array (_ BitVec 32) ValueCell!14749)) (size!38459 (_ BitVec 32))) )
))
(declare-fun lt!553059 () array!78582)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun _values!996 () array!78582)

(declare-fun lt!553058 () array!78580)

(declare-fun minValue!944 () V!46349)

(declare-datatypes ((tuple2!20086 0))(
  ( (tuple2!20087 (_1!10053 (_ BitVec 64)) (_2!10053 V!46349)) )
))
(declare-datatypes ((List!26908 0))(
  ( (Nil!26905) (Cons!26904 (h!28113 tuple2!20086) (t!40108 List!26908)) )
))
(declare-datatypes ((ListLongMap!18067 0))(
  ( (ListLongMap!18068 (toList!9049 List!26908)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5454 (array!78580 array!78582 (_ BitVec 32) (_ BitVec 32) V!46349 V!46349 (_ BitVec 32) Int) ListLongMap!18067)

(declare-fun -!1912 (ListLongMap!18067 (_ BitVec 64)) ListLongMap!18067)

(assert (=> b!1216954 (= (getCurrentListMapNoExtraKeys!5454 lt!553058 lt!553059 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1912 (getCurrentListMapNoExtraKeys!5454 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!40284 0))(
  ( (Unit!40285) )
))
(declare-fun lt!553060 () Unit!40284)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1114 (array!78580 array!78582 (_ BitVec 32) (_ BitVec 32) V!46349 V!46349 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40284)

(assert (=> b!1216954 (= lt!553060 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1114 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1216955 () Bool)

(declare-fun e!690937 () Bool)

(declare-fun tp_is_empty!30917 () Bool)

(assert (=> b!1216955 (= e!690937 tp_is_empty!30917)))

(declare-fun b!1216956 () Bool)

(assert (=> b!1216956 (= e!690940 (bvslt from!1455 (size!38459 _values!996)))))

(declare-fun b!1216957 () Bool)

(declare-fun e!690939 () Bool)

(declare-fun e!690941 () Bool)

(assert (=> b!1216957 (= e!690939 (not e!690941))))

(declare-fun res!808265 () Bool)

(assert (=> b!1216957 (=> res!808265 e!690941)))

(assert (=> b!1216957 (= res!808265 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78580 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1216957 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!553056 () Unit!40284)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78580 (_ BitVec 64) (_ BitVec 32)) Unit!40284)

(assert (=> b!1216957 (= lt!553056 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1216958 () Bool)

(declare-fun e!690936 () Bool)

(declare-fun e!690934 () Bool)

(declare-fun mapRes!48250 () Bool)

(assert (=> b!1216958 (= e!690936 (and e!690934 mapRes!48250))))

(declare-fun condMapEmpty!48250 () Bool)

(declare-fun mapDefault!48250 () ValueCell!14749)

