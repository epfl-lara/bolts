; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99608 () Bool)

(assert start!99608)

(declare-fun b_free!25151 () Bool)

(declare-fun b_next!25151 () Bool)

(assert (=> start!99608 (= b_free!25151 (not b_next!25151))))

(declare-fun tp!88168 () Bool)

(declare-fun b_and!41183 () Bool)

(assert (=> start!99608 (= tp!88168 b_and!41183)))

(declare-fun b!1178686 () Bool)

(declare-fun res!783141 () Bool)

(declare-fun e!670134 () Bool)

(assert (=> b!1178686 (=> (not res!783141) (not e!670134))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1178686 (= res!783141 (validKeyInArray!0 k!934))))

(declare-fun b!1178687 () Bool)

(declare-fun e!670132 () Bool)

(declare-fun tp_is_empty!29681 () Bool)

(assert (=> b!1178687 (= e!670132 tp_is_empty!29681)))

(declare-fun b!1178688 () Bool)

(declare-fun e!670135 () Bool)

(declare-fun e!670128 () Bool)

(assert (=> b!1178688 (= e!670135 e!670128)))

(declare-fun res!783136 () Bool)

(assert (=> b!1178688 (=> res!783136 e!670128)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1178688 (= res!783136 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44701 0))(
  ( (V!44702 (val!14897 Int)) )
))
(declare-fun zeroValue!944 () V!44701)

(declare-datatypes ((tuple2!19188 0))(
  ( (tuple2!19189 (_1!9604 (_ BitVec 64)) (_2!9604 V!44701)) )
))
(declare-datatypes ((List!25952 0))(
  ( (Nil!25949) (Cons!25948 (h!27157 tuple2!19188) (t!38102 List!25952)) )
))
(declare-datatypes ((ListLongMap!17169 0))(
  ( (ListLongMap!17170 (toList!8600 List!25952)) )
))
(declare-fun lt!532517 () ListLongMap!17169)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!76134 0))(
  ( (array!76135 (arr!36713 (Array (_ BitVec 32) (_ BitVec 64))) (size!37250 (_ BitVec 32))) )
))
(declare-fun lt!532514 () array!76134)

(declare-fun minValue!944 () V!44701)

(declare-datatypes ((ValueCell!14131 0))(
  ( (ValueCellFull!14131 (v!17536 V!44701)) (EmptyCell!14131) )
))
(declare-datatypes ((array!76136 0))(
  ( (array!76137 (arr!36714 (Array (_ BitVec 32) ValueCell!14131)) (size!37251 (_ BitVec 32))) )
))
(declare-fun lt!532524 () array!76136)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5029 (array!76134 array!76136 (_ BitVec 32) (_ BitVec 32) V!44701 V!44701 (_ BitVec 32) Int) ListLongMap!17169)

(assert (=> b!1178688 (= lt!532517 (getCurrentListMapNoExtraKeys!5029 lt!532514 lt!532524 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!532521 () V!44701)

(declare-fun _values!996 () array!76136)

(assert (=> b!1178688 (= lt!532524 (array!76137 (store (arr!36714 _values!996) i!673 (ValueCellFull!14131 lt!532521)) (size!37251 _values!996)))))

(declare-fun dynLambda!3003 (Int (_ BitVec 64)) V!44701)

(assert (=> b!1178688 (= lt!532521 (dynLambda!3003 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76134)

(declare-fun lt!532511 () ListLongMap!17169)

(assert (=> b!1178688 (= lt!532511 (getCurrentListMapNoExtraKeys!5029 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!670133 () Bool)

(declare-fun b!1178689 () Bool)

(declare-fun arrayContainsKey!0 (array!76134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178689 (= e!670133 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun res!783128 () Bool)

(assert (=> start!99608 (=> (not res!783128) (not e!670134))))

(assert (=> start!99608 (= res!783128 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37250 _keys!1208))))))

(assert (=> start!99608 e!670134))

(assert (=> start!99608 tp_is_empty!29681))

(declare-fun array_inv!27922 (array!76134) Bool)

(assert (=> start!99608 (array_inv!27922 _keys!1208)))

(assert (=> start!99608 true))

(assert (=> start!99608 tp!88168))

(declare-fun e!670124 () Bool)

(declare-fun array_inv!27923 (array!76136) Bool)

(assert (=> start!99608 (and (array_inv!27923 _values!996) e!670124)))

(declare-fun b!1178690 () Bool)

(declare-fun e!670126 () Bool)

(assert (=> b!1178690 (= e!670134 e!670126)))

(declare-fun res!783131 () Bool)

(assert (=> b!1178690 (=> (not res!783131) (not e!670126))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76134 (_ BitVec 32)) Bool)

(assert (=> b!1178690 (= res!783131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!532514 mask!1564))))

(assert (=> b!1178690 (= lt!532514 (array!76135 (store (arr!36713 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37250 _keys!1208)))))

(declare-fun b!1178691 () Bool)

(declare-fun res!783138 () Bool)

(assert (=> b!1178691 (=> (not res!783138) (not e!670134))))

(assert (=> b!1178691 (= res!783138 (= (select (arr!36713 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!46349 () Bool)

(declare-fun mapRes!46349 () Bool)

(declare-fun tp!88167 () Bool)

(declare-fun e!670125 () Bool)

(assert (=> mapNonEmpty!46349 (= mapRes!46349 (and tp!88167 e!670125))))

(declare-fun mapValue!46349 () ValueCell!14131)

(declare-fun mapRest!46349 () (Array (_ BitVec 32) ValueCell!14131))

(declare-fun mapKey!46349 () (_ BitVec 32))

(assert (=> mapNonEmpty!46349 (= (arr!36714 _values!996) (store mapRest!46349 mapKey!46349 mapValue!46349))))

(declare-fun lt!532519 () tuple2!19188)

(declare-fun b!1178692 () Bool)

(declare-fun e!670123 () Bool)

(declare-fun lt!532518 () ListLongMap!17169)

(declare-fun +!3821 (ListLongMap!17169 tuple2!19188) ListLongMap!17169)

(assert (=> b!1178692 (= e!670123 (= lt!532511 (+!3821 lt!532518 lt!532519)))))

(declare-fun b!1178693 () Bool)

(declare-fun e!670127 () Bool)

(assert (=> b!1178693 (= e!670128 e!670127)))

(declare-fun res!783139 () Bool)

(assert (=> b!1178693 (=> res!783139 e!670127)))

(assert (=> b!1178693 (= res!783139 (not (validKeyInArray!0 (select (arr!36713 _keys!1208) from!1455))))))

(declare-fun lt!532513 () ListLongMap!17169)

(declare-fun lt!532520 () ListLongMap!17169)

(assert (=> b!1178693 (= lt!532513 lt!532520)))

(declare-fun -!1597 (ListLongMap!17169 (_ BitVec 64)) ListLongMap!17169)

(assert (=> b!1178693 (= lt!532520 (-!1597 lt!532518 k!934))))

(assert (=> b!1178693 (= lt!532513 (getCurrentListMapNoExtraKeys!5029 lt!532514 lt!532524 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1178693 (= lt!532518 (getCurrentListMapNoExtraKeys!5029 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38876 0))(
  ( (Unit!38877) )
))
(declare-fun lt!532515 () Unit!38876)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!821 (array!76134 array!76136 (_ BitVec 32) (_ BitVec 32) V!44701 V!44701 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38876)

(assert (=> b!1178693 (= lt!532515 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!821 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1178694 () Bool)

(declare-fun e!670131 () Bool)

(assert (=> b!1178694 (= e!670131 e!670133)))

(declare-fun res!783137 () Bool)

(assert (=> b!1178694 (=> res!783137 e!670133)))

(assert (=> b!1178694 (= res!783137 (not (= (select (arr!36713 _keys!1208) from!1455) k!934)))))

(declare-fun b!1178695 () Bool)

(declare-fun res!783132 () Bool)

(assert (=> b!1178695 (=> (not res!783132) (not e!670126))))

(declare-datatypes ((List!25953 0))(
  ( (Nil!25950) (Cons!25949 (h!27158 (_ BitVec 64)) (t!38103 List!25953)) )
))
(declare-fun arrayNoDuplicates!0 (array!76134 (_ BitVec 32) List!25953) Bool)

(assert (=> b!1178695 (= res!783132 (arrayNoDuplicates!0 lt!532514 #b00000000000000000000000000000000 Nil!25950))))

(declare-fun b!1178696 () Bool)

(declare-fun res!783130 () Bool)

(assert (=> b!1178696 (=> (not res!783130) (not e!670134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1178696 (= res!783130 (validMask!0 mask!1564))))

(declare-fun b!1178697 () Bool)

(assert (=> b!1178697 (= e!670124 (and e!670132 mapRes!46349))))

(declare-fun condMapEmpty!46349 () Bool)

(declare-fun mapDefault!46349 () ValueCell!14131)

