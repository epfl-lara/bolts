; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100078 () Bool)

(assert start!100078)

(declare-fun b_free!25621 () Bool)

(declare-fun b_next!25621 () Bool)

(assert (=> start!100078 (= b_free!25621 (not b_next!25621))))

(declare-fun tp!89578 () Bool)

(declare-fun b_and!42123 () Bool)

(assert (=> start!100078 (= tp!89578 b_and!42123)))

(declare-fun b!1192203 () Bool)

(declare-fun e!677700 () Bool)

(declare-fun tp_is_empty!30151 () Bool)

(assert (=> b!1192203 (= e!677700 tp_is_empty!30151)))

(declare-fun b!1192204 () Bool)

(declare-fun res!793163 () Bool)

(declare-fun e!677698 () Bool)

(assert (=> b!1192204 (=> (not res!793163) (not e!677698))))

(declare-datatypes ((array!77066 0))(
  ( (array!77067 (arr!37179 (Array (_ BitVec 32) (_ BitVec 64))) (size!37716 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77066)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1192204 (= res!793163 (= (select (arr!37179 _keys!1208) i!673) k!934))))

(declare-fun b!1192205 () Bool)

(declare-fun e!677694 () Bool)

(assert (=> b!1192205 (= e!677698 e!677694)))

(declare-fun res!793168 () Bool)

(assert (=> b!1192205 (=> (not res!793168) (not e!677694))))

(declare-fun lt!542098 () array!77066)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77066 (_ BitVec 32)) Bool)

(assert (=> b!1192205 (= res!793168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542098 mask!1564))))

(assert (=> b!1192205 (= lt!542098 (array!77067 (store (arr!37179 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37716 _keys!1208)))))

(declare-fun b!1192206 () Bool)

(declare-fun e!677699 () Bool)

(declare-fun e!677701 () Bool)

(assert (=> b!1192206 (= e!677699 e!677701)))

(declare-fun res!793164 () Bool)

(assert (=> b!1192206 (=> res!793164 e!677701)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1192206 (= res!793164 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((V!45329 0))(
  ( (V!45330 (val!15132 Int)) )
))
(declare-datatypes ((tuple2!19590 0))(
  ( (tuple2!19591 (_1!9805 (_ BitVec 64)) (_2!9805 V!45329)) )
))
(declare-datatypes ((List!26354 0))(
  ( (Nil!26351) (Cons!26350 (h!27559 tuple2!19590) (t!38974 List!26354)) )
))
(declare-datatypes ((ListLongMap!17571 0))(
  ( (ListLongMap!17572 (toList!8801 List!26354)) )
))
(declare-fun lt!542097 () ListLongMap!17571)

(declare-datatypes ((ValueCell!14366 0))(
  ( (ValueCellFull!14366 (v!17771 V!45329)) (EmptyCell!14366) )
))
(declare-datatypes ((array!77068 0))(
  ( (array!77069 (arr!37180 (Array (_ BitVec 32) ValueCell!14366)) (size!37717 (_ BitVec 32))) )
))
(declare-fun lt!542100 () array!77068)

(declare-fun zeroValue!944 () V!45329)

(declare-fun minValue!944 () V!45329)

(declare-fun getCurrentListMapNoExtraKeys!5215 (array!77066 array!77068 (_ BitVec 32) (_ BitVec 32) V!45329 V!45329 (_ BitVec 32) Int) ListLongMap!17571)

(assert (=> b!1192206 (= lt!542097 (getCurrentListMapNoExtraKeys!5215 lt!542098 lt!542100 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!77068)

(declare-fun dynLambda!3157 (Int (_ BitVec 64)) V!45329)

(assert (=> b!1192206 (= lt!542100 (array!77069 (store (arr!37180 _values!996) i!673 (ValueCellFull!14366 (dynLambda!3157 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37717 _values!996)))))

(declare-fun lt!542095 () ListLongMap!17571)

(assert (=> b!1192206 (= lt!542095 (getCurrentListMapNoExtraKeys!5215 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1192207 () Bool)

(declare-fun res!793162 () Bool)

(assert (=> b!1192207 (=> (not res!793162) (not e!677694))))

(declare-datatypes ((List!26355 0))(
  ( (Nil!26352) (Cons!26351 (h!27560 (_ BitVec 64)) (t!38975 List!26355)) )
))
(declare-fun arrayNoDuplicates!0 (array!77066 (_ BitVec 32) List!26355) Bool)

(assert (=> b!1192207 (= res!793162 (arrayNoDuplicates!0 lt!542098 #b00000000000000000000000000000000 Nil!26352))))

(declare-fun b!1192208 () Bool)

(declare-fun e!677696 () Bool)

(assert (=> b!1192208 (= e!677696 tp_is_empty!30151)))

(declare-fun b!1192209 () Bool)

(declare-fun res!793159 () Bool)

(assert (=> b!1192209 (=> (not res!793159) (not e!677698))))

(assert (=> b!1192209 (= res!793159 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37716 _keys!1208))))))

(declare-fun mapNonEmpty!47054 () Bool)

(declare-fun mapRes!47054 () Bool)

(declare-fun tp!89577 () Bool)

(assert (=> mapNonEmpty!47054 (= mapRes!47054 (and tp!89577 e!677700))))

(declare-fun mapKey!47054 () (_ BitVec 32))

(declare-fun mapRest!47054 () (Array (_ BitVec 32) ValueCell!14366))

(declare-fun mapValue!47054 () ValueCell!14366)

(assert (=> mapNonEmpty!47054 (= (arr!37180 _values!996) (store mapRest!47054 mapKey!47054 mapValue!47054))))

(declare-fun b!1192210 () Bool)

(declare-fun res!793167 () Bool)

(assert (=> b!1192210 (=> (not res!793167) (not e!677698))))

(assert (=> b!1192210 (= res!793167 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26352))))

(declare-fun b!1192211 () Bool)

(declare-fun res!793165 () Bool)

(assert (=> b!1192211 (=> (not res!793165) (not e!677698))))

(assert (=> b!1192211 (= res!793165 (and (= (size!37717 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37716 _keys!1208) (size!37717 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!793161 () Bool)

(assert (=> start!100078 (=> (not res!793161) (not e!677698))))

(assert (=> start!100078 (= res!793161 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37716 _keys!1208))))))

(assert (=> start!100078 e!677698))

(assert (=> start!100078 tp_is_empty!30151))

(declare-fun array_inv!28250 (array!77066) Bool)

(assert (=> start!100078 (array_inv!28250 _keys!1208)))

(assert (=> start!100078 true))

(assert (=> start!100078 tp!89578))

(declare-fun e!677697 () Bool)

(declare-fun array_inv!28251 (array!77068) Bool)

(assert (=> start!100078 (and (array_inv!28251 _values!996) e!677697)))

(declare-fun mapIsEmpty!47054 () Bool)

(assert (=> mapIsEmpty!47054 mapRes!47054))

(declare-fun b!1192212 () Bool)

(declare-fun res!793157 () Bool)

(assert (=> b!1192212 (=> (not res!793157) (not e!677698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192212 (= res!793157 (validMask!0 mask!1564))))

(declare-fun b!1192213 () Bool)

(assert (=> b!1192213 (= e!677701 true)))

(declare-fun -!1779 (ListLongMap!17571 (_ BitVec 64)) ListLongMap!17571)

(assert (=> b!1192213 (= (getCurrentListMapNoExtraKeys!5215 lt!542098 lt!542100 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1779 (getCurrentListMapNoExtraKeys!5215 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39492 0))(
  ( (Unit!39493) )
))
(declare-fun lt!542099 () Unit!39492)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!985 (array!77066 array!77068 (_ BitVec 32) (_ BitVec 32) V!45329 V!45329 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39492)

(assert (=> b!1192213 (= lt!542099 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!985 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1192214 () Bool)

(declare-fun res!793166 () Bool)

(assert (=> b!1192214 (=> (not res!793166) (not e!677698))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192214 (= res!793166 (validKeyInArray!0 k!934))))

(declare-fun b!1192215 () Bool)

(assert (=> b!1192215 (= e!677694 (not e!677699))))

(declare-fun res!793158 () Bool)

(assert (=> b!1192215 (=> res!793158 e!677699)))

(assert (=> b!1192215 (= res!793158 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1192215 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!542096 () Unit!39492)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77066 (_ BitVec 64) (_ BitVec 32)) Unit!39492)

(assert (=> b!1192215 (= lt!542096 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1192216 () Bool)

(declare-fun res!793160 () Bool)

(assert (=> b!1192216 (=> (not res!793160) (not e!677698))))

(assert (=> b!1192216 (= res!793160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1192217 () Bool)

(assert (=> b!1192217 (= e!677697 (and e!677696 mapRes!47054))))

(declare-fun condMapEmpty!47054 () Bool)

(declare-fun mapDefault!47054 () ValueCell!14366)

