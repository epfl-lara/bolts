; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100080 () Bool)

(assert start!100080)

(declare-fun b_free!25623 () Bool)

(declare-fun b_next!25623 () Bool)

(assert (=> start!100080 (= b_free!25623 (not b_next!25623))))

(declare-fun tp!89584 () Bool)

(declare-fun b_and!42127 () Bool)

(assert (=> start!100080 (= tp!89584 b_and!42127)))

(declare-fun b!1192250 () Bool)

(declare-fun res!793201 () Bool)

(declare-fun e!677718 () Bool)

(assert (=> b!1192250 (=> (not res!793201) (not e!677718))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192250 (= res!793201 (validMask!0 mask!1564))))

(declare-fun b!1192251 () Bool)

(declare-fun e!677721 () Bool)

(assert (=> b!1192251 (= e!677721 true)))

(declare-datatypes ((V!45331 0))(
  ( (V!45332 (val!15133 Int)) )
))
(declare-fun zeroValue!944 () V!45331)

(declare-datatypes ((array!77070 0))(
  ( (array!77071 (arr!37181 (Array (_ BitVec 32) (_ BitVec 64))) (size!37718 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77070)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!542115 () array!77070)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((ValueCell!14367 0))(
  ( (ValueCellFull!14367 (v!17772 V!45331)) (EmptyCell!14367) )
))
(declare-datatypes ((array!77072 0))(
  ( (array!77073 (arr!37182 (Array (_ BitVec 32) ValueCell!14367)) (size!37719 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77072)

(declare-fun minValue!944 () V!45331)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!542113 () array!77072)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!19592 0))(
  ( (tuple2!19593 (_1!9806 (_ BitVec 64)) (_2!9806 V!45331)) )
))
(declare-datatypes ((List!26356 0))(
  ( (Nil!26353) (Cons!26352 (h!27561 tuple2!19592) (t!38978 List!26356)) )
))
(declare-datatypes ((ListLongMap!17573 0))(
  ( (ListLongMap!17574 (toList!8802 List!26356)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5216 (array!77070 array!77072 (_ BitVec 32) (_ BitVec 32) V!45331 V!45331 (_ BitVec 32) Int) ListLongMap!17573)

(declare-fun -!1780 (ListLongMap!17573 (_ BitVec 64)) ListLongMap!17573)

(assert (=> b!1192251 (= (getCurrentListMapNoExtraKeys!5216 lt!542115 lt!542113 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1780 (getCurrentListMapNoExtraKeys!5216 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39494 0))(
  ( (Unit!39495) )
))
(declare-fun lt!542117 () Unit!39494)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!986 (array!77070 array!77072 (_ BitVec 32) (_ BitVec 32) V!45331 V!45331 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39494)

(assert (=> b!1192251 (= lt!542117 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!986 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1192252 () Bool)

(declare-fun res!793199 () Bool)

(assert (=> b!1192252 (=> (not res!793199) (not e!677718))))

(assert (=> b!1192252 (= res!793199 (= (select (arr!37181 _keys!1208) i!673) k0!934))))

(declare-fun b!1192253 () Bool)

(declare-fun res!793196 () Bool)

(assert (=> b!1192253 (=> (not res!793196) (not e!677718))))

(declare-datatypes ((List!26357 0))(
  ( (Nil!26354) (Cons!26353 (h!27562 (_ BitVec 64)) (t!38979 List!26357)) )
))
(declare-fun arrayNoDuplicates!0 (array!77070 (_ BitVec 32) List!26357) Bool)

(assert (=> b!1192253 (= res!793196 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26354))))

(declare-fun b!1192255 () Bool)

(declare-fun e!677722 () Bool)

(declare-fun e!677724 () Bool)

(declare-fun mapRes!47057 () Bool)

(assert (=> b!1192255 (= e!677722 (and e!677724 mapRes!47057))))

(declare-fun condMapEmpty!47057 () Bool)

(declare-fun mapDefault!47057 () ValueCell!14367)

(assert (=> b!1192255 (= condMapEmpty!47057 (= (arr!37182 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14367)) mapDefault!47057)))))

(declare-fun b!1192256 () Bool)

(declare-fun res!793202 () Bool)

(assert (=> b!1192256 (=> (not res!793202) (not e!677718))))

(assert (=> b!1192256 (= res!793202 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37718 _keys!1208))))))

(declare-fun b!1192257 () Bool)

(declare-fun res!793198 () Bool)

(assert (=> b!1192257 (=> (not res!793198) (not e!677718))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192257 (= res!793198 (validKeyInArray!0 k0!934))))

(declare-fun b!1192258 () Bool)

(declare-fun res!793194 () Bool)

(assert (=> b!1192258 (=> (not res!793194) (not e!677718))))

(assert (=> b!1192258 (= res!793194 (and (= (size!37719 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37718 _keys!1208) (size!37719 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!47057 () Bool)

(assert (=> mapIsEmpty!47057 mapRes!47057))

(declare-fun b!1192259 () Bool)

(declare-fun res!793204 () Bool)

(assert (=> b!1192259 (=> (not res!793204) (not e!677718))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77070 (_ BitVec 32)) Bool)

(assert (=> b!1192259 (= res!793204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1192254 () Bool)

(declare-fun tp_is_empty!30153 () Bool)

(assert (=> b!1192254 (= e!677724 tp_is_empty!30153)))

(declare-fun res!793200 () Bool)

(assert (=> start!100080 (=> (not res!793200) (not e!677718))))

(assert (=> start!100080 (= res!793200 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37718 _keys!1208))))))

(assert (=> start!100080 e!677718))

(assert (=> start!100080 tp_is_empty!30153))

(declare-fun array_inv!28252 (array!77070) Bool)

(assert (=> start!100080 (array_inv!28252 _keys!1208)))

(assert (=> start!100080 true))

(assert (=> start!100080 tp!89584))

(declare-fun array_inv!28253 (array!77072) Bool)

(assert (=> start!100080 (and (array_inv!28253 _values!996) e!677722)))

(declare-fun b!1192260 () Bool)

(declare-fun res!793195 () Bool)

(declare-fun e!677720 () Bool)

(assert (=> b!1192260 (=> (not res!793195) (not e!677720))))

(assert (=> b!1192260 (= res!793195 (arrayNoDuplicates!0 lt!542115 #b00000000000000000000000000000000 Nil!26354))))

(declare-fun b!1192261 () Bool)

(declare-fun e!677723 () Bool)

(assert (=> b!1192261 (= e!677720 (not e!677723))))

(declare-fun res!793197 () Bool)

(assert (=> b!1192261 (=> res!793197 e!677723)))

(assert (=> b!1192261 (= res!793197 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1192261 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!542114 () Unit!39494)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77070 (_ BitVec 64) (_ BitVec 32)) Unit!39494)

(assert (=> b!1192261 (= lt!542114 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1192262 () Bool)

(declare-fun e!677719 () Bool)

(assert (=> b!1192262 (= e!677719 tp_is_empty!30153)))

(declare-fun b!1192263 () Bool)

(assert (=> b!1192263 (= e!677723 e!677721)))

(declare-fun res!793193 () Bool)

(assert (=> b!1192263 (=> res!793193 e!677721)))

(assert (=> b!1192263 (= res!793193 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!542118 () ListLongMap!17573)

(assert (=> b!1192263 (= lt!542118 (getCurrentListMapNoExtraKeys!5216 lt!542115 lt!542113 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3158 (Int (_ BitVec 64)) V!45331)

(assert (=> b!1192263 (= lt!542113 (array!77073 (store (arr!37182 _values!996) i!673 (ValueCellFull!14367 (dynLambda!3158 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37719 _values!996)))))

(declare-fun lt!542116 () ListLongMap!17573)

(assert (=> b!1192263 (= lt!542116 (getCurrentListMapNoExtraKeys!5216 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1192264 () Bool)

(assert (=> b!1192264 (= e!677718 e!677720)))

(declare-fun res!793203 () Bool)

(assert (=> b!1192264 (=> (not res!793203) (not e!677720))))

(assert (=> b!1192264 (= res!793203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542115 mask!1564))))

(assert (=> b!1192264 (= lt!542115 (array!77071 (store (arr!37181 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37718 _keys!1208)))))

(declare-fun mapNonEmpty!47057 () Bool)

(declare-fun tp!89583 () Bool)

(assert (=> mapNonEmpty!47057 (= mapRes!47057 (and tp!89583 e!677719))))

(declare-fun mapRest!47057 () (Array (_ BitVec 32) ValueCell!14367))

(declare-fun mapValue!47057 () ValueCell!14367)

(declare-fun mapKey!47057 () (_ BitVec 32))

(assert (=> mapNonEmpty!47057 (= (arr!37182 _values!996) (store mapRest!47057 mapKey!47057 mapValue!47057))))

(assert (= (and start!100080 res!793200) b!1192250))

(assert (= (and b!1192250 res!793201) b!1192258))

(assert (= (and b!1192258 res!793194) b!1192259))

(assert (= (and b!1192259 res!793204) b!1192253))

(assert (= (and b!1192253 res!793196) b!1192256))

(assert (= (and b!1192256 res!793202) b!1192257))

(assert (= (and b!1192257 res!793198) b!1192252))

(assert (= (and b!1192252 res!793199) b!1192264))

(assert (= (and b!1192264 res!793203) b!1192260))

(assert (= (and b!1192260 res!793195) b!1192261))

(assert (= (and b!1192261 (not res!793197)) b!1192263))

(assert (= (and b!1192263 (not res!793193)) b!1192251))

(assert (= (and b!1192255 condMapEmpty!47057) mapIsEmpty!47057))

(assert (= (and b!1192255 (not condMapEmpty!47057)) mapNonEmpty!47057))

(get-info :version)

(assert (= (and mapNonEmpty!47057 ((_ is ValueCellFull!14367) mapValue!47057)) b!1192262))

(assert (= (and b!1192255 ((_ is ValueCellFull!14367) mapDefault!47057)) b!1192254))

(assert (= start!100080 b!1192255))

(declare-fun b_lambda!20785 () Bool)

(assert (=> (not b_lambda!20785) (not b!1192263)))

(declare-fun t!38977 () Bool)

(declare-fun tb!10443 () Bool)

(assert (=> (and start!100080 (= defaultEntry!1004 defaultEntry!1004) t!38977) tb!10443))

(declare-fun result!21445 () Bool)

(assert (=> tb!10443 (= result!21445 tp_is_empty!30153)))

(assert (=> b!1192263 t!38977))

(declare-fun b_and!42129 () Bool)

(assert (= b_and!42127 (and (=> t!38977 result!21445) b_and!42129)))

(declare-fun m!1100675 () Bool)

(assert (=> b!1192250 m!1100675))

(declare-fun m!1100677 () Bool)

(assert (=> start!100080 m!1100677))

(declare-fun m!1100679 () Bool)

(assert (=> start!100080 m!1100679))

(declare-fun m!1100681 () Bool)

(assert (=> b!1192251 m!1100681))

(declare-fun m!1100683 () Bool)

(assert (=> b!1192251 m!1100683))

(assert (=> b!1192251 m!1100683))

(declare-fun m!1100685 () Bool)

(assert (=> b!1192251 m!1100685))

(declare-fun m!1100687 () Bool)

(assert (=> b!1192251 m!1100687))

(declare-fun m!1100689 () Bool)

(assert (=> b!1192252 m!1100689))

(declare-fun m!1100691 () Bool)

(assert (=> b!1192259 m!1100691))

(declare-fun m!1100693 () Bool)

(assert (=> b!1192261 m!1100693))

(declare-fun m!1100695 () Bool)

(assert (=> b!1192261 m!1100695))

(declare-fun m!1100697 () Bool)

(assert (=> b!1192264 m!1100697))

(declare-fun m!1100699 () Bool)

(assert (=> b!1192264 m!1100699))

(declare-fun m!1100701 () Bool)

(assert (=> b!1192257 m!1100701))

(declare-fun m!1100703 () Bool)

(assert (=> b!1192260 m!1100703))

(declare-fun m!1100705 () Bool)

(assert (=> b!1192253 m!1100705))

(declare-fun m!1100707 () Bool)

(assert (=> b!1192263 m!1100707))

(declare-fun m!1100709 () Bool)

(assert (=> b!1192263 m!1100709))

(declare-fun m!1100711 () Bool)

(assert (=> b!1192263 m!1100711))

(declare-fun m!1100713 () Bool)

(assert (=> b!1192263 m!1100713))

(declare-fun m!1100715 () Bool)

(assert (=> mapNonEmpty!47057 m!1100715))

(check-sat (not b!1192259) (not b!1192250) (not b_next!25623) (not b_lambda!20785) (not b!1192264) (not b!1192253) tp_is_empty!30153 (not b!1192251) (not mapNonEmpty!47057) (not b!1192261) (not b!1192263) b_and!42129 (not start!100080) (not b!1192260) (not b!1192257))
(check-sat b_and!42129 (not b_next!25623))
