; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99994 () Bool)

(assert start!99994)

(declare-fun b_free!25537 () Bool)

(declare-fun b_next!25537 () Bool)

(assert (=> start!99994 (= b_free!25537 (not b_next!25537))))

(declare-fun tp!89326 () Bool)

(declare-fun b_and!41955 () Bool)

(assert (=> start!99994 (= tp!89326 b_and!41955)))

(declare-fun b!1190229 () Bool)

(declare-fun res!791645 () Bool)

(declare-fun e!676691 () Bool)

(assert (=> b!1190229 (=> (not res!791645) (not e!676691))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190229 (= res!791645 (validKeyInArray!0 k!934))))

(declare-fun b!1190230 () Bool)

(declare-fun e!676687 () Bool)

(assert (=> b!1190230 (= e!676687 true)))

(declare-datatypes ((V!45217 0))(
  ( (V!45218 (val!15090 Int)) )
))
(declare-fun zeroValue!944 () V!45217)

(declare-datatypes ((array!76900 0))(
  ( (array!76901 (arr!37096 (Array (_ BitVec 32) (_ BitVec 64))) (size!37633 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76900)

(declare-fun lt!541340 () array!76900)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14324 0))(
  ( (ValueCellFull!14324 (v!17729 V!45217)) (EmptyCell!14324) )
))
(declare-datatypes ((array!76902 0))(
  ( (array!76903 (arr!37097 (Array (_ BitVec 32) ValueCell!14324)) (size!37634 (_ BitVec 32))) )
))
(declare-fun lt!541342 () array!76902)

(declare-fun _values!996 () array!76902)

(declare-fun minValue!944 () V!45217)

(declare-datatypes ((tuple2!19522 0))(
  ( (tuple2!19523 (_1!9771 (_ BitVec 64)) (_2!9771 V!45217)) )
))
(declare-datatypes ((List!26282 0))(
  ( (Nil!26279) (Cons!26278 (h!27487 tuple2!19522) (t!38818 List!26282)) )
))
(declare-datatypes ((ListLongMap!17503 0))(
  ( (ListLongMap!17504 (toList!8767 List!26282)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5181 (array!76900 array!76902 (_ BitVec 32) (_ BitVec 32) V!45217 V!45217 (_ BitVec 32) Int) ListLongMap!17503)

(declare-fun -!1749 (ListLongMap!17503 (_ BitVec 64)) ListLongMap!17503)

(assert (=> b!1190230 (= (getCurrentListMapNoExtraKeys!5181 lt!541340 lt!541342 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1749 (getCurrentListMapNoExtraKeys!5181 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39426 0))(
  ( (Unit!39427) )
))
(declare-fun lt!541344 () Unit!39426)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!955 (array!76900 array!76902 (_ BitVec 32) (_ BitVec 32) V!45217 V!45217 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39426)

(assert (=> b!1190230 (= lt!541344 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!955 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1190231 () Bool)

(declare-fun e!676690 () Bool)

(declare-fun e!676689 () Bool)

(assert (=> b!1190231 (= e!676690 (not e!676689))))

(declare-fun res!791651 () Bool)

(assert (=> b!1190231 (=> res!791651 e!676689)))

(assert (=> b!1190231 (= res!791651 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76900 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190231 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!541339 () Unit!39426)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76900 (_ BitVec 64) (_ BitVec 32)) Unit!39426)

(assert (=> b!1190231 (= lt!541339 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1190232 () Bool)

(declare-fun res!791652 () Bool)

(assert (=> b!1190232 (=> (not res!791652) (not e!676691))))

(assert (=> b!1190232 (= res!791652 (= (select (arr!37096 _keys!1208) i!673) k!934))))

(declare-fun b!1190233 () Bool)

(declare-fun res!791646 () Bool)

(assert (=> b!1190233 (=> (not res!791646) (not e!676691))))

(declare-datatypes ((List!26283 0))(
  ( (Nil!26280) (Cons!26279 (h!27488 (_ BitVec 64)) (t!38819 List!26283)) )
))
(declare-fun arrayNoDuplicates!0 (array!76900 (_ BitVec 32) List!26283) Bool)

(assert (=> b!1190233 (= res!791646 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26280))))

(declare-fun b!1190234 () Bool)

(declare-fun res!791656 () Bool)

(assert (=> b!1190234 (=> (not res!791656) (not e!676691))))

(assert (=> b!1190234 (= res!791656 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37633 _keys!1208))))))

(declare-fun b!1190235 () Bool)

(declare-fun res!791650 () Bool)

(assert (=> b!1190235 (=> (not res!791650) (not e!676691))))

(assert (=> b!1190235 (= res!791650 (and (= (size!37634 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37633 _keys!1208) (size!37634 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190236 () Bool)

(declare-fun e!676686 () Bool)

(declare-fun tp_is_empty!30067 () Bool)

(assert (=> b!1190236 (= e!676686 tp_is_empty!30067)))

(declare-fun b!1190237 () Bool)

(declare-fun res!791655 () Bool)

(assert (=> b!1190237 (=> (not res!791655) (not e!676691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76900 (_ BitVec 32)) Bool)

(assert (=> b!1190237 (= res!791655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190238 () Bool)

(assert (=> b!1190238 (= e!676691 e!676690)))

(declare-fun res!791647 () Bool)

(assert (=> b!1190238 (=> (not res!791647) (not e!676690))))

(assert (=> b!1190238 (= res!791647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541340 mask!1564))))

(assert (=> b!1190238 (= lt!541340 (array!76901 (store (arr!37096 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37633 _keys!1208)))))

(declare-fun b!1190239 () Bool)

(declare-fun e!676692 () Bool)

(assert (=> b!1190239 (= e!676692 tp_is_empty!30067)))

(declare-fun res!791653 () Bool)

(assert (=> start!99994 (=> (not res!791653) (not e!676691))))

(assert (=> start!99994 (= res!791653 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37633 _keys!1208))))))

(assert (=> start!99994 e!676691))

(assert (=> start!99994 tp_is_empty!30067))

(declare-fun array_inv!28186 (array!76900) Bool)

(assert (=> start!99994 (array_inv!28186 _keys!1208)))

(assert (=> start!99994 true))

(assert (=> start!99994 tp!89326))

(declare-fun e!676688 () Bool)

(declare-fun array_inv!28187 (array!76902) Bool)

(assert (=> start!99994 (and (array_inv!28187 _values!996) e!676688)))

(declare-fun b!1190240 () Bool)

(declare-fun mapRes!46928 () Bool)

(assert (=> b!1190240 (= e!676688 (and e!676692 mapRes!46928))))

(declare-fun condMapEmpty!46928 () Bool)

(declare-fun mapDefault!46928 () ValueCell!14324)

