; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99398 () Bool)

(assert start!99398)

(declare-fun b_free!24941 () Bool)

(declare-fun b_next!24941 () Bool)

(assert (=> start!99398 (= b_free!24941 (not b_next!24941))))

(declare-fun tp!87538 () Bool)

(declare-fun b_and!40763 () Bool)

(assert (=> start!99398 (= tp!87538 b_and!40763)))

(declare-fun b!1171995 () Bool)

(declare-fun res!778179 () Bool)

(declare-fun e!666197 () Bool)

(assert (=> b!1171995 (=> (not res!778179) (not e!666197))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75718 0))(
  ( (array!75719 (arr!36505 (Array (_ BitVec 32) (_ BitVec 64))) (size!37042 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75718)

(assert (=> b!1171995 (= res!778179 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37042 _keys!1208))))))

(declare-fun b!1171996 () Bool)

(declare-fun res!778183 () Bool)

(assert (=> b!1171996 (=> (not res!778183) (not e!666197))))

(declare-datatypes ((List!25766 0))(
  ( (Nil!25763) (Cons!25762 (h!26971 (_ BitVec 64)) (t!37706 List!25766)) )
))
(declare-fun arrayNoDuplicates!0 (array!75718 (_ BitVec 32) List!25766) Bool)

(assert (=> b!1171996 (= res!778183 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25763))))

(declare-fun e!666201 () Bool)

(declare-fun b!1171997 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171997 (= e!666201 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!46034 () Bool)

(declare-fun mapRes!46034 () Bool)

(assert (=> mapIsEmpty!46034 mapRes!46034))

(declare-fun b!1171998 () Bool)

(declare-fun e!666196 () Bool)

(assert (=> b!1171998 (= e!666197 e!666196)))

(declare-fun res!778167 () Bool)

(assert (=> b!1171998 (=> (not res!778167) (not e!666196))))

(declare-fun lt!528009 () array!75718)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75718 (_ BitVec 32)) Bool)

(assert (=> b!1171998 (= res!778167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528009 mask!1564))))

(assert (=> b!1171998 (= lt!528009 (array!75719 (store (arr!36505 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37042 _keys!1208)))))

(declare-fun b!1171999 () Bool)

(declare-fun e!666195 () Bool)

(declare-fun tp_is_empty!29471 () Bool)

(assert (=> b!1171999 (= e!666195 tp_is_empty!29471)))

(declare-fun b!1172000 () Bool)

(declare-fun e!666199 () Bool)

(assert (=> b!1172000 (= e!666199 e!666201)))

(declare-fun res!778181 () Bool)

(assert (=> b!1172000 (=> res!778181 e!666201)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1172000 (= res!778181 (not (= (select (arr!36505 _keys!1208) from!1455) k!934)))))

(declare-fun b!1172001 () Bool)

(declare-fun e!666191 () Bool)

(assert (=> b!1172001 (= e!666196 (not e!666191))))

(declare-fun res!778180 () Bool)

(assert (=> b!1172001 (=> res!778180 e!666191)))

(assert (=> b!1172001 (= res!778180 (bvsgt from!1455 i!673))))

(assert (=> b!1172001 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38552 0))(
  ( (Unit!38553) )
))
(declare-fun lt!528008 () Unit!38552)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75718 (_ BitVec 64) (_ BitVec 32)) Unit!38552)

(assert (=> b!1172001 (= lt!528008 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1172002 () Bool)

(declare-fun res!778174 () Bool)

(assert (=> b!1172002 (=> (not res!778174) (not e!666197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172002 (= res!778174 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!46034 () Bool)

(declare-fun tp!87537 () Bool)

(assert (=> mapNonEmpty!46034 (= mapRes!46034 (and tp!87537 e!666195))))

(declare-datatypes ((V!44421 0))(
  ( (V!44422 (val!14792 Int)) )
))
(declare-datatypes ((ValueCell!14026 0))(
  ( (ValueCellFull!14026 (v!17431 V!44421)) (EmptyCell!14026) )
))
(declare-fun mapRest!46034 () (Array (_ BitVec 32) ValueCell!14026))

(declare-datatypes ((array!75720 0))(
  ( (array!75721 (arr!36506 (Array (_ BitVec 32) ValueCell!14026)) (size!37043 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75720)

(declare-fun mapKey!46034 () (_ BitVec 32))

(declare-fun mapValue!46034 () ValueCell!14026)

(assert (=> mapNonEmpty!46034 (= (arr!36506 _values!996) (store mapRest!46034 mapKey!46034 mapValue!46034))))

(declare-fun b!1172003 () Bool)

(declare-fun e!666198 () Bool)

(declare-fun e!666190 () Bool)

(assert (=> b!1172003 (= e!666198 e!666190)))

(declare-fun res!778170 () Bool)

(assert (=> b!1172003 (=> res!778170 e!666190)))

(assert (=> b!1172003 (= res!778170 (or (bvsge (size!37042 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37042 _keys!1208)) (bvsge from!1455 (size!37042 _keys!1208))))))

(assert (=> b!1172003 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25763)))

(declare-fun lt!528005 () Unit!38552)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75718 (_ BitVec 32) (_ BitVec 32)) Unit!38552)

(assert (=> b!1172003 (= lt!528005 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1172003 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528013 () Unit!38552)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75718 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38552)

(assert (=> b!1172003 (= lt!528013 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1172004 () Bool)

(declare-fun res!778169 () Bool)

(assert (=> b!1172004 (=> (not res!778169) (not e!666196))))

(assert (=> b!1172004 (= res!778169 (arrayNoDuplicates!0 lt!528009 #b00000000000000000000000000000000 Nil!25763))))

(declare-fun b!1172005 () Bool)

(declare-fun res!778182 () Bool)

(assert (=> b!1172005 (=> (not res!778182) (not e!666197))))

(assert (=> b!1172005 (= res!778182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1172006 () Bool)

(declare-fun res!778175 () Bool)

(assert (=> b!1172006 (=> (not res!778175) (not e!666197))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1172006 (= res!778175 (and (= (size!37043 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37042 _keys!1208) (size!37043 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1172007 () Bool)

(declare-fun res!778177 () Bool)

(assert (=> b!1172007 (=> (not res!778177) (not e!666197))))

(assert (=> b!1172007 (= res!778177 (= (select (arr!36505 _keys!1208) i!673) k!934))))

(declare-fun b!1172008 () Bool)

(declare-fun res!778168 () Bool)

(assert (=> b!1172008 (=> (not res!778168) (not e!666197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1172008 (= res!778168 (validMask!0 mask!1564))))

(declare-fun b!1172009 () Bool)

(declare-fun res!778166 () Bool)

(assert (=> b!1172009 (=> res!778166 e!666190)))

(declare-fun noDuplicate!1637 (List!25766) Bool)

(assert (=> b!1172009 (= res!778166 (not (noDuplicate!1637 Nil!25763)))))

(declare-fun b!1172010 () Bool)

(assert (=> b!1172010 (= e!666190 true)))

(declare-fun lt!528011 () Bool)

(declare-fun contains!6872 (List!25766 (_ BitVec 64)) Bool)

(assert (=> b!1172010 (= lt!528011 (contains!6872 Nil!25763 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172011 () Bool)

(declare-fun res!778173 () Bool)

(assert (=> b!1172011 (=> res!778173 e!666190)))

(assert (=> b!1172011 (= res!778173 (contains!6872 Nil!25763 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172012 () Bool)

(declare-fun e!666194 () Bool)

(assert (=> b!1172012 (= e!666191 e!666194)))

(declare-fun res!778172 () Bool)

(assert (=> b!1172012 (=> res!778172 e!666194)))

(assert (=> b!1172012 (= res!778172 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44421)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!528007 () array!75720)

(declare-fun minValue!944 () V!44421)

(declare-datatypes ((tuple2!18994 0))(
  ( (tuple2!18995 (_1!9507 (_ BitVec 64)) (_2!9507 V!44421)) )
))
(declare-datatypes ((List!25767 0))(
  ( (Nil!25764) (Cons!25763 (h!26972 tuple2!18994) (t!37707 List!25767)) )
))
(declare-datatypes ((ListLongMap!16975 0))(
  ( (ListLongMap!16976 (toList!8503 List!25767)) )
))
(declare-fun lt!528003 () ListLongMap!16975)

(declare-fun getCurrentListMapNoExtraKeys!4935 (array!75718 array!75720 (_ BitVec 32) (_ BitVec 32) V!44421 V!44421 (_ BitVec 32) Int) ListLongMap!16975)

(assert (=> b!1172012 (= lt!528003 (getCurrentListMapNoExtraKeys!4935 lt!528009 lt!528007 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!528015 () V!44421)

(assert (=> b!1172012 (= lt!528007 (array!75721 (store (arr!36506 _values!996) i!673 (ValueCellFull!14026 lt!528015)) (size!37043 _values!996)))))

(declare-fun dynLambda!2923 (Int (_ BitVec 64)) V!44421)

(assert (=> b!1172012 (= lt!528015 (dynLambda!2923 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528004 () ListLongMap!16975)

(assert (=> b!1172012 (= lt!528004 (getCurrentListMapNoExtraKeys!4935 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1172013 () Bool)

(declare-fun e!666193 () Bool)

(assert (=> b!1172013 (= e!666193 tp_is_empty!29471)))

(declare-fun b!1172014 () Bool)

(declare-fun e!666202 () Bool)

(assert (=> b!1172014 (= e!666202 e!666198)))

(declare-fun res!778178 () Bool)

(assert (=> b!1172014 (=> res!778178 e!666198)))

(assert (=> b!1172014 (= res!778178 (not (= (select (arr!36505 _keys!1208) from!1455) k!934)))))

(assert (=> b!1172014 e!666199))

(declare-fun res!778176 () Bool)

(assert (=> b!1172014 (=> (not res!778176) (not e!666199))))

(declare-fun lt!528010 () ListLongMap!16975)

(declare-fun +!3741 (ListLongMap!16975 tuple2!18994) ListLongMap!16975)

(declare-fun get!18654 (ValueCell!14026 V!44421) V!44421)

(assert (=> b!1172014 (= res!778176 (= lt!528003 (+!3741 lt!528010 (tuple2!18995 (select (arr!36505 _keys!1208) from!1455) (get!18654 (select (arr!36506 _values!996) from!1455) lt!528015)))))))

(declare-fun b!1172015 () Bool)

(assert (=> b!1172015 (= e!666194 e!666202)))

(declare-fun res!778165 () Bool)

(assert (=> b!1172015 (=> res!778165 e!666202)))

(assert (=> b!1172015 (= res!778165 (not (validKeyInArray!0 (select (arr!36505 _keys!1208) from!1455))))))

(declare-fun lt!528014 () ListLongMap!16975)

(assert (=> b!1172015 (= lt!528014 lt!528010)))

(declare-fun lt!528006 () ListLongMap!16975)

(declare-fun -!1519 (ListLongMap!16975 (_ BitVec 64)) ListLongMap!16975)

(assert (=> b!1172015 (= lt!528010 (-!1519 lt!528006 k!934))))

(assert (=> b!1172015 (= lt!528014 (getCurrentListMapNoExtraKeys!4935 lt!528009 lt!528007 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1172015 (= lt!528006 (getCurrentListMapNoExtraKeys!4935 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!528012 () Unit!38552)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!743 (array!75718 array!75720 (_ BitVec 32) (_ BitVec 32) V!44421 V!44421 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38552)

(assert (=> b!1172015 (= lt!528012 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!743 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1172016 () Bool)

(declare-fun e!666192 () Bool)

(assert (=> b!1172016 (= e!666192 (and e!666193 mapRes!46034))))

(declare-fun condMapEmpty!46034 () Bool)

(declare-fun mapDefault!46034 () ValueCell!14026)

