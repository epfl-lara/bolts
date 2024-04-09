; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99826 () Bool)

(assert start!99826)

(declare-fun b_free!25369 () Bool)

(declare-fun b_next!25369 () Bool)

(assert (=> start!99826 (= b_free!25369 (not b_next!25369))))

(declare-fun tp!88821 () Bool)

(declare-fun b_and!41619 () Bool)

(assert (=> start!99826 (= tp!88821 b_and!41619)))

(declare-fun b!1185661 () Bool)

(declare-fun res!788263 () Bool)

(declare-fun e!674185 () Bool)

(assert (=> b!1185661 (=> (not res!788263) (not e!674185))))

(declare-datatypes ((array!76566 0))(
  ( (array!76567 (arr!36929 (Array (_ BitVec 32) (_ BitVec 64))) (size!37466 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76566)

(declare-datatypes ((List!26137 0))(
  ( (Nil!26134) (Cons!26133 (h!27342 (_ BitVec 64)) (t!38505 List!26137)) )
))
(declare-fun arrayNoDuplicates!0 (array!76566 (_ BitVec 32) List!26137) Bool)

(assert (=> b!1185661 (= res!788263 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26134))))

(declare-fun mapIsEmpty!46676 () Bool)

(declare-fun mapRes!46676 () Bool)

(assert (=> mapIsEmpty!46676 mapRes!46676))

(declare-fun b!1185663 () Bool)

(declare-datatypes ((Unit!39207 0))(
  ( (Unit!39208) )
))
(declare-fun e!674180 () Unit!39207)

(declare-fun Unit!39209 () Unit!39207)

(assert (=> b!1185663 (= e!674180 Unit!39209)))

(declare-fun b!1185664 () Bool)

(declare-fun e!674182 () Bool)

(declare-fun e!674181 () Bool)

(assert (=> b!1185664 (= e!674182 e!674181)))

(declare-fun res!788255 () Bool)

(assert (=> b!1185664 (=> res!788255 e!674181)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1185664 (= res!788255 (not (validKeyInArray!0 (select (arr!36929 _keys!1208) from!1455))))))

(declare-datatypes ((V!44993 0))(
  ( (V!44994 (val!15006 Int)) )
))
(declare-datatypes ((tuple2!19376 0))(
  ( (tuple2!19377 (_1!9698 (_ BitVec 64)) (_2!9698 V!44993)) )
))
(declare-datatypes ((List!26138 0))(
  ( (Nil!26135) (Cons!26134 (h!27343 tuple2!19376) (t!38506 List!26138)) )
))
(declare-datatypes ((ListLongMap!17357 0))(
  ( (ListLongMap!17358 (toList!8694 List!26138)) )
))
(declare-fun lt!538228 () ListLongMap!17357)

(declare-fun lt!538227 () ListLongMap!17357)

(assert (=> b!1185664 (= lt!538228 lt!538227)))

(declare-fun lt!538230 () ListLongMap!17357)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1679 (ListLongMap!17357 (_ BitVec 64)) ListLongMap!17357)

(assert (=> b!1185664 (= lt!538227 (-!1679 lt!538230 k!934))))

(declare-fun zeroValue!944 () V!44993)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14240 0))(
  ( (ValueCellFull!14240 (v!17645 V!44993)) (EmptyCell!14240) )
))
(declare-datatypes ((array!76568 0))(
  ( (array!76569 (arr!36930 (Array (_ BitVec 32) ValueCell!14240)) (size!37467 (_ BitVec 32))) )
))
(declare-fun lt!538223 () array!76568)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!538224 () array!76566)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44993)

(declare-fun getCurrentListMapNoExtraKeys!5112 (array!76566 array!76568 (_ BitVec 32) (_ BitVec 32) V!44993 V!44993 (_ BitVec 32) Int) ListLongMap!17357)

(assert (=> b!1185664 (= lt!538228 (getCurrentListMapNoExtraKeys!5112 lt!538224 lt!538223 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76568)

(assert (=> b!1185664 (= lt!538230 (getCurrentListMapNoExtraKeys!5112 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!538225 () Unit!39207)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!892 (array!76566 array!76568 (_ BitVec 32) (_ BitVec 32) V!44993 V!44993 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39207)

(assert (=> b!1185664 (= lt!538225 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!892 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1185665 () Bool)

(declare-fun res!788261 () Bool)

(assert (=> b!1185665 (=> (not res!788261) (not e!674185))))

(assert (=> b!1185665 (= res!788261 (= (select (arr!36929 _keys!1208) i!673) k!934))))

(declare-fun b!1185666 () Bool)

(declare-fun e!674175 () Bool)

(declare-fun e!674176 () Bool)

(assert (=> b!1185666 (= e!674175 e!674176)))

(declare-fun res!788258 () Bool)

(assert (=> b!1185666 (=> res!788258 e!674176)))

(assert (=> b!1185666 (= res!788258 (not (= (select (arr!36929 _keys!1208) from!1455) k!934)))))

(declare-fun b!1185667 () Bool)

(declare-fun e!674179 () Bool)

(declare-fun e!674184 () Bool)

(assert (=> b!1185667 (= e!674179 (not e!674184))))

(declare-fun res!788252 () Bool)

(assert (=> b!1185667 (=> res!788252 e!674184)))

(assert (=> b!1185667 (= res!788252 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185667 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!538215 () Unit!39207)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76566 (_ BitVec 64) (_ BitVec 32)) Unit!39207)

(assert (=> b!1185667 (= lt!538215 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1185668 () Bool)

(declare-fun res!788253 () Bool)

(assert (=> b!1185668 (=> (not res!788253) (not e!674185))))

(assert (=> b!1185668 (= res!788253 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37466 _keys!1208))))))

(declare-fun b!1185669 () Bool)

(declare-fun res!788249 () Bool)

(assert (=> b!1185669 (=> (not res!788249) (not e!674185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76566 (_ BitVec 32)) Bool)

(assert (=> b!1185669 (= res!788249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1185670 () Bool)

(declare-fun Unit!39210 () Unit!39207)

(assert (=> b!1185670 (= e!674180 Unit!39210)))

(declare-fun lt!538222 () Unit!39207)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76566 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39207)

(assert (=> b!1185670 (= lt!538222 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1185670 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!538229 () Unit!39207)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76566 (_ BitVec 32) (_ BitVec 32)) Unit!39207)

(assert (=> b!1185670 (= lt!538229 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1185670 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26134)))

(declare-fun lt!538217 () Unit!39207)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76566 (_ BitVec 64) (_ BitVec 32) List!26137) Unit!39207)

(assert (=> b!1185670 (= lt!538217 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26134))))

(assert (=> b!1185670 false))

(declare-fun b!1185671 () Bool)

(assert (=> b!1185671 (= e!674181 true)))

(declare-fun lt!538219 () ListLongMap!17357)

(declare-fun lt!538218 () ListLongMap!17357)

(assert (=> b!1185671 (= (-!1679 lt!538219 k!934) lt!538218)))

(declare-fun lt!538221 () V!44993)

(declare-fun lt!538231 () Unit!39207)

(declare-fun addRemoveCommutativeForDiffKeys!190 (ListLongMap!17357 (_ BitVec 64) V!44993 (_ BitVec 64)) Unit!39207)

(assert (=> b!1185671 (= lt!538231 (addRemoveCommutativeForDiffKeys!190 lt!538230 (select (arr!36929 _keys!1208) from!1455) lt!538221 k!934))))

(declare-fun lt!538220 () ListLongMap!17357)

(assert (=> b!1185671 (and (= lt!538220 lt!538219) (= lt!538227 lt!538228))))

(declare-fun lt!538233 () tuple2!19376)

(declare-fun +!3900 (ListLongMap!17357 tuple2!19376) ListLongMap!17357)

(assert (=> b!1185671 (= lt!538219 (+!3900 lt!538230 lt!538233))))

(assert (=> b!1185671 (not (= (select (arr!36929 _keys!1208) from!1455) k!934))))

(declare-fun lt!538226 () Unit!39207)

(assert (=> b!1185671 (= lt!538226 e!674180)))

(declare-fun c!117125 () Bool)

(assert (=> b!1185671 (= c!117125 (= (select (arr!36929 _keys!1208) from!1455) k!934))))

(assert (=> b!1185671 e!674175))

(declare-fun res!788251 () Bool)

(assert (=> b!1185671 (=> (not res!788251) (not e!674175))))

(declare-fun lt!538232 () ListLongMap!17357)

(assert (=> b!1185671 (= res!788251 (= lt!538232 lt!538218))))

(assert (=> b!1185671 (= lt!538218 (+!3900 lt!538227 lt!538233))))

(assert (=> b!1185671 (= lt!538233 (tuple2!19377 (select (arr!36929 _keys!1208) from!1455) lt!538221))))

(declare-fun lt!538216 () V!44993)

(declare-fun get!18946 (ValueCell!14240 V!44993) V!44993)

(assert (=> b!1185671 (= lt!538221 (get!18946 (select (arr!36930 _values!996) from!1455) lt!538216))))

(declare-fun b!1185672 () Bool)

(declare-fun res!788262 () Bool)

(assert (=> b!1185672 (=> (not res!788262) (not e!674185))))

(assert (=> b!1185672 (= res!788262 (validKeyInArray!0 k!934))))

(declare-fun res!788259 () Bool)

(assert (=> start!99826 (=> (not res!788259) (not e!674185))))

(assert (=> start!99826 (= res!788259 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37466 _keys!1208))))))

(assert (=> start!99826 e!674185))

(declare-fun tp_is_empty!29899 () Bool)

(assert (=> start!99826 tp_is_empty!29899))

(declare-fun array_inv!28060 (array!76566) Bool)

(assert (=> start!99826 (array_inv!28060 _keys!1208)))

(assert (=> start!99826 true))

(assert (=> start!99826 tp!88821))

(declare-fun e!674183 () Bool)

(declare-fun array_inv!28061 (array!76568) Bool)

(assert (=> start!99826 (and (array_inv!28061 _values!996) e!674183)))

(declare-fun b!1185662 () Bool)

(assert (=> b!1185662 (= e!674184 e!674182)))

(declare-fun res!788257 () Bool)

(assert (=> b!1185662 (=> res!788257 e!674182)))

(assert (=> b!1185662 (= res!788257 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1185662 (= lt!538232 (getCurrentListMapNoExtraKeys!5112 lt!538224 lt!538223 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1185662 (= lt!538223 (array!76569 (store (arr!36930 _values!996) i!673 (ValueCellFull!14240 lt!538216)) (size!37467 _values!996)))))

(declare-fun dynLambda!3072 (Int (_ BitVec 64)) V!44993)

(assert (=> b!1185662 (= lt!538216 (dynLambda!3072 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1185662 (= lt!538220 (getCurrentListMapNoExtraKeys!5112 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1185673 () Bool)

(declare-fun e!674177 () Bool)

(assert (=> b!1185673 (= e!674183 (and e!674177 mapRes!46676))))

(declare-fun condMapEmpty!46676 () Bool)

(declare-fun mapDefault!46676 () ValueCell!14240)

