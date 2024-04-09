; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99682 () Bool)

(assert start!99682)

(declare-fun b_free!25225 () Bool)

(declare-fun b_next!25225 () Bool)

(assert (=> start!99682 (= b_free!25225 (not b_next!25225))))

(declare-fun tp!88389 () Bool)

(declare-fun b_and!41331 () Bool)

(assert (=> start!99682 (= tp!88389 b_and!41331)))

(declare-fun b!1181165 () Bool)

(declare-fun res!784983 () Bool)

(declare-fun e!671568 () Bool)

(assert (=> b!1181165 (=> (not res!784983) (not e!671568))))

(declare-datatypes ((V!44801 0))(
  ( (V!44802 (val!14934 Int)) )
))
(declare-datatypes ((tuple2!19252 0))(
  ( (tuple2!19253 (_1!9636 (_ BitVec 64)) (_2!9636 V!44801)) )
))
(declare-fun lt!534188 () tuple2!19252)

(declare-datatypes ((List!26012 0))(
  ( (Nil!26009) (Cons!26008 (h!27217 tuple2!19252) (t!38236 List!26012)) )
))
(declare-datatypes ((ListLongMap!17233 0))(
  ( (ListLongMap!17234 (toList!8632 List!26012)) )
))
(declare-fun lt!534177 () ListLongMap!17233)

(declare-fun lt!534178 () ListLongMap!17233)

(declare-fun +!3851 (ListLongMap!17233 tuple2!19252) ListLongMap!17233)

(assert (=> b!1181165 (= res!784983 (= lt!534177 (+!3851 lt!534178 lt!534188)))))

(declare-fun b!1181166 () Bool)

(declare-fun e!671570 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76278 0))(
  ( (array!76279 (arr!36785 (Array (_ BitVec 32) (_ BitVec 64))) (size!37322 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76278)

(assert (=> b!1181166 (= e!671570 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37322 _keys!1208))))))

(assert (=> b!1181166 e!671568))

(declare-fun res!784992 () Bool)

(assert (=> b!1181166 (=> (not res!784992) (not e!671568))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1181166 (= res!784992 (not (= (select (arr!36785 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!38981 0))(
  ( (Unit!38982) )
))
(declare-fun lt!534179 () Unit!38981)

(declare-fun e!671574 () Unit!38981)

(assert (=> b!1181166 (= lt!534179 e!671574)))

(declare-fun c!116909 () Bool)

(assert (=> b!1181166 (= c!116909 (= (select (arr!36785 _keys!1208) from!1455) k!934))))

(declare-fun e!671578 () Bool)

(assert (=> b!1181166 e!671578))

(declare-fun res!784985 () Bool)

(assert (=> b!1181166 (=> (not res!784985) (not e!671578))))

(declare-fun lt!534187 () ListLongMap!17233)

(declare-fun lt!534182 () ListLongMap!17233)

(assert (=> b!1181166 (= res!784985 (= lt!534187 (+!3851 lt!534182 lt!534188)))))

(declare-fun lt!534180 () V!44801)

(declare-datatypes ((ValueCell!14168 0))(
  ( (ValueCellFull!14168 (v!17573 V!44801)) (EmptyCell!14168) )
))
(declare-datatypes ((array!76280 0))(
  ( (array!76281 (arr!36786 (Array (_ BitVec 32) ValueCell!14168)) (size!37323 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76280)

(declare-fun get!18849 (ValueCell!14168 V!44801) V!44801)

(assert (=> b!1181166 (= lt!534188 (tuple2!19253 (select (arr!36785 _keys!1208) from!1455) (get!18849 (select (arr!36786 _values!996) from!1455) lt!534180)))))

(declare-fun mapNonEmpty!46460 () Bool)

(declare-fun mapRes!46460 () Bool)

(declare-fun tp!88390 () Bool)

(declare-fun e!671566 () Bool)

(assert (=> mapNonEmpty!46460 (= mapRes!46460 (and tp!88390 e!671566))))

(declare-fun mapKey!46460 () (_ BitVec 32))

(declare-fun mapValue!46460 () ValueCell!14168)

(declare-fun mapRest!46460 () (Array (_ BitVec 32) ValueCell!14168))

(assert (=> mapNonEmpty!46460 (= (arr!36786 _values!996) (store mapRest!46460 mapKey!46460 mapValue!46460))))

(declare-fun b!1181168 () Bool)

(declare-fun e!671573 () Bool)

(declare-fun e!671577 () Bool)

(assert (=> b!1181168 (= e!671573 e!671577)))

(declare-fun res!784986 () Bool)

(assert (=> b!1181168 (=> res!784986 e!671577)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1181168 (= res!784986 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44801)

(declare-fun lt!534185 () array!76278)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!534184 () array!76280)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!44801)

(declare-fun getCurrentListMapNoExtraKeys!5057 (array!76278 array!76280 (_ BitVec 32) (_ BitVec 32) V!44801 V!44801 (_ BitVec 32) Int) ListLongMap!17233)

(assert (=> b!1181168 (= lt!534187 (getCurrentListMapNoExtraKeys!5057 lt!534185 lt!534184 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1181168 (= lt!534184 (array!76281 (store (arr!36786 _values!996) i!673 (ValueCellFull!14168 lt!534180)) (size!37323 _values!996)))))

(declare-fun dynLambda!3025 (Int (_ BitVec 64)) V!44801)

(assert (=> b!1181168 (= lt!534180 (dynLambda!3025 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1181168 (= lt!534177 (getCurrentListMapNoExtraKeys!5057 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1181169 () Bool)

(assert (=> b!1181169 (= e!671577 e!671570)))

(declare-fun res!784989 () Bool)

(assert (=> b!1181169 (=> res!784989 e!671570)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1181169 (= res!784989 (not (validKeyInArray!0 (select (arr!36785 _keys!1208) from!1455))))))

(declare-fun lt!534181 () ListLongMap!17233)

(assert (=> b!1181169 (= lt!534181 lt!534182)))

(declare-fun -!1621 (ListLongMap!17233 (_ BitVec 64)) ListLongMap!17233)

(assert (=> b!1181169 (= lt!534182 (-!1621 lt!534178 k!934))))

(assert (=> b!1181169 (= lt!534181 (getCurrentListMapNoExtraKeys!5057 lt!534185 lt!534184 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1181169 (= lt!534178 (getCurrentListMapNoExtraKeys!5057 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!534186 () Unit!38981)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!845 (array!76278 array!76280 (_ BitVec 32) (_ BitVec 32) V!44801 V!44801 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38981)

(assert (=> b!1181169 (= lt!534186 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!845 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1181170 () Bool)

(declare-fun res!784979 () Bool)

(declare-fun e!671567 () Bool)

(assert (=> b!1181170 (=> (not res!784979) (not e!671567))))

(assert (=> b!1181170 (= res!784979 (and (= (size!37323 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37322 _keys!1208) (size!37323 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1181171 () Bool)

(declare-fun res!784980 () Bool)

(assert (=> b!1181171 (=> (not res!784980) (not e!671567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1181171 (= res!784980 (validMask!0 mask!1564))))

(declare-fun b!1181172 () Bool)

(declare-fun e!671571 () Bool)

(declare-fun arrayContainsKey!0 (array!76278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181172 (= e!671571 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1181173 () Bool)

(declare-fun res!784981 () Bool)

(assert (=> b!1181173 (=> (not res!784981) (not e!671567))))

(assert (=> b!1181173 (= res!784981 (validKeyInArray!0 k!934))))

(declare-fun b!1181174 () Bool)

(declare-fun e!671572 () Bool)

(declare-fun tp_is_empty!29755 () Bool)

(assert (=> b!1181174 (= e!671572 tp_is_empty!29755)))

(declare-fun b!1181175 () Bool)

(assert (=> b!1181175 (= e!671578 e!671571)))

(declare-fun res!784988 () Bool)

(assert (=> b!1181175 (=> res!784988 e!671571)))

(assert (=> b!1181175 (= res!784988 (not (= (select (arr!36785 _keys!1208) from!1455) k!934)))))

(declare-fun b!1181176 () Bool)

(declare-fun res!784978 () Bool)

(assert (=> b!1181176 (=> (not res!784978) (not e!671567))))

(declare-datatypes ((List!26013 0))(
  ( (Nil!26010) (Cons!26009 (h!27218 (_ BitVec 64)) (t!38237 List!26013)) )
))
(declare-fun arrayNoDuplicates!0 (array!76278 (_ BitVec 32) List!26013) Bool)

(assert (=> b!1181176 (= res!784978 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26010))))

(declare-fun b!1181177 () Bool)

(declare-fun res!784987 () Bool)

(declare-fun e!671575 () Bool)

(assert (=> b!1181177 (=> (not res!784987) (not e!671575))))

(assert (=> b!1181177 (= res!784987 (arrayNoDuplicates!0 lt!534185 #b00000000000000000000000000000000 Nil!26010))))

(declare-fun b!1181167 () Bool)

(declare-fun Unit!38983 () Unit!38981)

(assert (=> b!1181167 (= e!671574 Unit!38983)))

(declare-fun lt!534189 () Unit!38981)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76278 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38981)

(assert (=> b!1181167 (= lt!534189 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1181167 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534176 () Unit!38981)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76278 (_ BitVec 32) (_ BitVec 32)) Unit!38981)

(assert (=> b!1181167 (= lt!534176 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1181167 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26010)))

(declare-fun lt!534183 () Unit!38981)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76278 (_ BitVec 64) (_ BitVec 32) List!26013) Unit!38981)

(assert (=> b!1181167 (= lt!534183 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26010))))

(assert (=> b!1181167 false))

(declare-fun res!784991 () Bool)

(assert (=> start!99682 (=> (not res!784991) (not e!671567))))

(assert (=> start!99682 (= res!784991 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37322 _keys!1208))))))

(assert (=> start!99682 e!671567))

(assert (=> start!99682 tp_is_empty!29755))

(declare-fun array_inv!27966 (array!76278) Bool)

(assert (=> start!99682 (array_inv!27966 _keys!1208)))

(assert (=> start!99682 true))

(assert (=> start!99682 tp!88389))

(declare-fun e!671576 () Bool)

(declare-fun array_inv!27967 (array!76280) Bool)

(assert (=> start!99682 (and (array_inv!27967 _values!996) e!671576)))

(declare-fun b!1181178 () Bool)

(assert (=> b!1181178 (= e!671576 (and e!671572 mapRes!46460))))

(declare-fun condMapEmpty!46460 () Bool)

(declare-fun mapDefault!46460 () ValueCell!14168)

