; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99748 () Bool)

(assert start!99748)

(declare-fun b_free!25291 () Bool)

(declare-fun b_next!25291 () Bool)

(assert (=> start!99748 (= b_free!25291 (not b_next!25291))))

(declare-fun tp!88588 () Bool)

(declare-fun b_and!41463 () Bool)

(assert (=> start!99748 (= tp!88588 b_and!41463)))

(declare-fun b!1183243 () Bool)

(declare-fun res!786502 () Bool)

(declare-fun e!672774 () Bool)

(assert (=> b!1183243 (=> (not res!786502) (not e!672774))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1183243 (= res!786502 (validKeyInArray!0 k!934))))

(declare-fun b!1183244 () Bool)

(declare-fun res!786508 () Bool)

(assert (=> b!1183244 (=> (not res!786508) (not e!672774))))

(declare-datatypes ((array!76410 0))(
  ( (array!76411 (arr!36851 (Array (_ BitVec 32) (_ BitVec 64))) (size!37388 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76410)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1183244 (= res!786508 (= (select (arr!36851 _keys!1208) i!673) k!934))))

(declare-fun b!1183245 () Bool)

(declare-fun e!672771 () Bool)

(declare-fun e!672773 () Bool)

(assert (=> b!1183245 (= e!672771 e!672773)))

(declare-fun res!786495 () Bool)

(assert (=> b!1183245 (=> res!786495 e!672773)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1183245 (= res!786495 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44889 0))(
  ( (V!44890 (val!14967 Int)) )
))
(declare-fun zeroValue!944 () V!44889)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!535993 () array!76410)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19304 0))(
  ( (tuple2!19305 (_1!9662 (_ BitVec 64)) (_2!9662 V!44889)) )
))
(declare-datatypes ((List!26067 0))(
  ( (Nil!26064) (Cons!26063 (h!27272 tuple2!19304) (t!38357 List!26067)) )
))
(declare-datatypes ((ListLongMap!17285 0))(
  ( (ListLongMap!17286 (toList!8658 List!26067)) )
))
(declare-fun lt!536005 () ListLongMap!17285)

(declare-datatypes ((ValueCell!14201 0))(
  ( (ValueCellFull!14201 (v!17606 V!44889)) (EmptyCell!14201) )
))
(declare-datatypes ((array!76412 0))(
  ( (array!76413 (arr!36852 (Array (_ BitVec 32) ValueCell!14201)) (size!37389 (_ BitVec 32))) )
))
(declare-fun lt!536004 () array!76412)

(declare-fun minValue!944 () V!44889)

(declare-fun getCurrentListMapNoExtraKeys!5080 (array!76410 array!76412 (_ BitVec 32) (_ BitVec 32) V!44889 V!44889 (_ BitVec 32) Int) ListLongMap!17285)

(assert (=> b!1183245 (= lt!536005 (getCurrentListMapNoExtraKeys!5080 lt!535993 lt!536004 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!536008 () V!44889)

(declare-fun _values!996 () array!76412)

(assert (=> b!1183245 (= lt!536004 (array!76413 (store (arr!36852 _values!996) i!673 (ValueCellFull!14201 lt!536008)) (size!37389 _values!996)))))

(declare-fun dynLambda!3047 (Int (_ BitVec 64)) V!44889)

(assert (=> b!1183245 (= lt!536008 (dynLambda!3047 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!535996 () ListLongMap!17285)

(assert (=> b!1183245 (= lt!535996 (getCurrentListMapNoExtraKeys!5080 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!786500 () Bool)

(assert (=> start!99748 (=> (not res!786500) (not e!672774))))

(assert (=> start!99748 (= res!786500 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37388 _keys!1208))))))

(assert (=> start!99748 e!672774))

(declare-fun tp_is_empty!29821 () Bool)

(assert (=> start!99748 tp_is_empty!29821))

(declare-fun array_inv!28010 (array!76410) Bool)

(assert (=> start!99748 (array_inv!28010 _keys!1208)))

(assert (=> start!99748 true))

(assert (=> start!99748 tp!88588))

(declare-fun e!672780 () Bool)

(declare-fun array_inv!28011 (array!76412) Bool)

(assert (=> start!99748 (and (array_inv!28011 _values!996) e!672780)))

(declare-fun b!1183246 () Bool)

(declare-fun e!672776 () Bool)

(assert (=> b!1183246 (= e!672776 true)))

(declare-fun lt!535997 () ListLongMap!17285)

(declare-fun lt!536003 () ListLongMap!17285)

(declare-fun -!1646 (ListLongMap!17285 (_ BitVec 64)) ListLongMap!17285)

(assert (=> b!1183246 (= (-!1646 lt!535997 k!934) lt!536003)))

(declare-fun lt!535994 () ListLongMap!17285)

(declare-datatypes ((Unit!39086 0))(
  ( (Unit!39087) )
))
(declare-fun lt!536006 () Unit!39086)

(declare-fun lt!536010 () V!44889)

(declare-fun addRemoveCommutativeForDiffKeys!164 (ListLongMap!17285 (_ BitVec 64) V!44889 (_ BitVec 64)) Unit!39086)

(assert (=> b!1183246 (= lt!536006 (addRemoveCommutativeForDiffKeys!164 lt!535994 (select (arr!36851 _keys!1208) from!1455) lt!536010 k!934))))

(declare-fun lt!536002 () ListLongMap!17285)

(declare-fun lt!535999 () ListLongMap!17285)

(assert (=> b!1183246 (and (= lt!535996 lt!535997) (= lt!536002 lt!535999))))

(declare-fun lt!536001 () tuple2!19304)

(declare-fun +!3874 (ListLongMap!17285 tuple2!19304) ListLongMap!17285)

(assert (=> b!1183246 (= lt!535997 (+!3874 lt!535994 lt!536001))))

(assert (=> b!1183246 (not (= (select (arr!36851 _keys!1208) from!1455) k!934))))

(declare-fun lt!536009 () Unit!39086)

(declare-fun e!672770 () Unit!39086)

(assert (=> b!1183246 (= lt!536009 e!672770)))

(declare-fun c!117008 () Bool)

(assert (=> b!1183246 (= c!117008 (= (select (arr!36851 _keys!1208) from!1455) k!934))))

(declare-fun e!672781 () Bool)

(assert (=> b!1183246 e!672781))

(declare-fun res!786507 () Bool)

(assert (=> b!1183246 (=> (not res!786507) (not e!672781))))

(assert (=> b!1183246 (= res!786507 (= lt!536005 lt!536003))))

(assert (=> b!1183246 (= lt!536003 (+!3874 lt!536002 lt!536001))))

(assert (=> b!1183246 (= lt!536001 (tuple2!19305 (select (arr!36851 _keys!1208) from!1455) lt!536010))))

(declare-fun get!18894 (ValueCell!14201 V!44889) V!44889)

(assert (=> b!1183246 (= lt!536010 (get!18894 (select (arr!36852 _values!996) from!1455) lt!536008))))

(declare-fun b!1183247 () Bool)

(assert (=> b!1183247 (= e!672773 e!672776)))

(declare-fun res!786506 () Bool)

(assert (=> b!1183247 (=> res!786506 e!672776)))

(assert (=> b!1183247 (= res!786506 (not (validKeyInArray!0 (select (arr!36851 _keys!1208) from!1455))))))

(assert (=> b!1183247 (= lt!535999 lt!536002)))

(assert (=> b!1183247 (= lt!536002 (-!1646 lt!535994 k!934))))

(assert (=> b!1183247 (= lt!535999 (getCurrentListMapNoExtraKeys!5080 lt!535993 lt!536004 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1183247 (= lt!535994 (getCurrentListMapNoExtraKeys!5080 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!536000 () Unit!39086)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!865 (array!76410 array!76412 (_ BitVec 32) (_ BitVec 32) V!44889 V!44889 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39086)

(assert (=> b!1183247 (= lt!536000 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!865 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1183248 () Bool)

(declare-fun e!672772 () Bool)

(assert (=> b!1183248 (= e!672781 e!672772)))

(declare-fun res!786503 () Bool)

(assert (=> b!1183248 (=> res!786503 e!672772)))

(assert (=> b!1183248 (= res!786503 (not (= (select (arr!36851 _keys!1208) from!1455) k!934)))))

(declare-fun b!1183249 () Bool)

(declare-fun e!672778 () Bool)

(assert (=> b!1183249 (= e!672778 tp_is_empty!29821)))

(declare-fun b!1183250 () Bool)

(declare-fun arrayContainsKey!0 (array!76410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183250 (= e!672772 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1183251 () Bool)

(declare-fun e!672775 () Bool)

(assert (=> b!1183251 (= e!672774 e!672775)))

(declare-fun res!786499 () Bool)

(assert (=> b!1183251 (=> (not res!786499) (not e!672775))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76410 (_ BitVec 32)) Bool)

(assert (=> b!1183251 (= res!786499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!535993 mask!1564))))

(assert (=> b!1183251 (= lt!535993 (array!76411 (store (arr!36851 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37388 _keys!1208)))))

(declare-fun b!1183252 () Bool)

(declare-fun res!786497 () Bool)

(assert (=> b!1183252 (=> (not res!786497) (not e!672774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1183252 (= res!786497 (validMask!0 mask!1564))))

(declare-fun b!1183253 () Bool)

(declare-fun Unit!39088 () Unit!39086)

(assert (=> b!1183253 (= e!672770 Unit!39088)))

(declare-fun lt!536007 () Unit!39086)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76410 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39086)

(assert (=> b!1183253 (= lt!536007 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1183253 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!535998 () Unit!39086)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76410 (_ BitVec 32) (_ BitVec 32)) Unit!39086)

(assert (=> b!1183253 (= lt!535998 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26068 0))(
  ( (Nil!26065) (Cons!26064 (h!27273 (_ BitVec 64)) (t!38358 List!26068)) )
))
(declare-fun arrayNoDuplicates!0 (array!76410 (_ BitVec 32) List!26068) Bool)

(assert (=> b!1183253 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26065)))

(declare-fun lt!535992 () Unit!39086)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76410 (_ BitVec 64) (_ BitVec 32) List!26068) Unit!39086)

(assert (=> b!1183253 (= lt!535992 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26065))))

(assert (=> b!1183253 false))

(declare-fun mapIsEmpty!46559 () Bool)

(declare-fun mapRes!46559 () Bool)

(assert (=> mapIsEmpty!46559 mapRes!46559))

(declare-fun b!1183254 () Bool)

(declare-fun res!786505 () Bool)

(assert (=> b!1183254 (=> (not res!786505) (not e!672774))))

(assert (=> b!1183254 (= res!786505 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37388 _keys!1208))))))

(declare-fun b!1183255 () Bool)

(declare-fun res!786496 () Bool)

(assert (=> b!1183255 (=> (not res!786496) (not e!672775))))

(assert (=> b!1183255 (= res!786496 (arrayNoDuplicates!0 lt!535993 #b00000000000000000000000000000000 Nil!26065))))

(declare-fun b!1183256 () Bool)

(assert (=> b!1183256 (= e!672775 (not e!672771))))

(declare-fun res!786504 () Bool)

(assert (=> b!1183256 (=> res!786504 e!672771)))

(assert (=> b!1183256 (= res!786504 (bvsgt from!1455 i!673))))

(assert (=> b!1183256 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!535995 () Unit!39086)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76410 (_ BitVec 64) (_ BitVec 32)) Unit!39086)

(assert (=> b!1183256 (= lt!535995 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1183257 () Bool)

(declare-fun res!786498 () Bool)

(assert (=> b!1183257 (=> (not res!786498) (not e!672774))))

(assert (=> b!1183257 (= res!786498 (and (= (size!37389 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37388 _keys!1208) (size!37389 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1183258 () Bool)

(declare-fun res!786501 () Bool)

(assert (=> b!1183258 (=> (not res!786501) (not e!672774))))

(assert (=> b!1183258 (= res!786501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!46559 () Bool)

(declare-fun tp!88587 () Bool)

(assert (=> mapNonEmpty!46559 (= mapRes!46559 (and tp!88587 e!672778))))

(declare-fun mapRest!46559 () (Array (_ BitVec 32) ValueCell!14201))

(declare-fun mapKey!46559 () (_ BitVec 32))

(declare-fun mapValue!46559 () ValueCell!14201)

(assert (=> mapNonEmpty!46559 (= (arr!36852 _values!996) (store mapRest!46559 mapKey!46559 mapValue!46559))))

(declare-fun b!1183259 () Bool)

(declare-fun e!672779 () Bool)

(assert (=> b!1183259 (= e!672779 tp_is_empty!29821)))

(declare-fun b!1183260 () Bool)

(assert (=> b!1183260 (= e!672780 (and e!672779 mapRes!46559))))

(declare-fun condMapEmpty!46559 () Bool)

(declare-fun mapDefault!46559 () ValueCell!14201)

