; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97930 () Bool)

(assert start!97930)

(declare-fun b_free!23595 () Bool)

(declare-fun b_next!23595 () Bool)

(assert (=> start!97930 (= b_free!23595 (not b_next!23595))))

(declare-fun tp!83489 () Bool)

(declare-fun b_and!37995 () Bool)

(assert (=> start!97930 (= tp!83489 b_and!37995)))

(declare-fun b!1121084 () Bool)

(declare-fun res!749025 () Bool)

(declare-fun e!638376 () Bool)

(assert (=> b!1121084 (=> (not res!749025) (not e!638376))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121084 (= res!749025 (validMask!0 mask!1564))))

(declare-fun e!638377 () Bool)

(declare-datatypes ((V!42627 0))(
  ( (V!42628 (val!14119 Int)) )
))
(declare-datatypes ((tuple2!17780 0))(
  ( (tuple2!17781 (_1!8900 (_ BitVec 64)) (_2!8900 V!42627)) )
))
(declare-datatypes ((List!24619 0))(
  ( (Nil!24616) (Cons!24615 (h!25824 tuple2!17780) (t!35213 List!24619)) )
))
(declare-datatypes ((ListLongMap!15761 0))(
  ( (ListLongMap!15762 (toList!7896 List!24619)) )
))
(declare-fun call!47069 () ListLongMap!15761)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1121085 () Bool)

(declare-fun call!47068 () ListLongMap!15761)

(declare-fun -!1062 (ListLongMap!15761 (_ BitVec 64)) ListLongMap!15761)

(assert (=> b!1121085 (= e!638377 (= call!47068 (-!1062 call!47069 k0!934)))))

(declare-fun b!1121086 () Bool)

(declare-fun res!749023 () Bool)

(declare-fun e!638378 () Bool)

(assert (=> b!1121086 (=> (not res!749023) (not e!638378))))

(declare-datatypes ((array!73076 0))(
  ( (array!73077 (arr!35187 (Array (_ BitVec 32) (_ BitVec 64))) (size!35724 (_ BitVec 32))) )
))
(declare-fun lt!498228 () array!73076)

(declare-datatypes ((List!24620 0))(
  ( (Nil!24617) (Cons!24616 (h!25825 (_ BitVec 64)) (t!35214 List!24620)) )
))
(declare-fun arrayNoDuplicates!0 (array!73076 (_ BitVec 32) List!24620) Bool)

(assert (=> b!1121086 (= res!749023 (arrayNoDuplicates!0 lt!498228 #b00000000000000000000000000000000 Nil!24617))))

(declare-fun b!1121087 () Bool)

(assert (=> b!1121087 (= e!638376 e!638378)))

(declare-fun res!749031 () Bool)

(assert (=> b!1121087 (=> (not res!749031) (not e!638378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73076 (_ BitVec 32)) Bool)

(assert (=> b!1121087 (= res!749031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498228 mask!1564))))

(declare-fun _keys!1208 () array!73076)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1121087 (= lt!498228 (array!73077 (store (arr!35187 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35724 _keys!1208)))))

(declare-fun b!1121088 () Bool)

(declare-fun res!749034 () Bool)

(assert (=> b!1121088 (=> (not res!749034) (not e!638376))))

(assert (=> b!1121088 (= res!749034 (= (select (arr!35187 _keys!1208) i!673) k0!934))))

(declare-fun b!1121089 () Bool)

(declare-fun res!749029 () Bool)

(assert (=> b!1121089 (=> (not res!749029) (not e!638376))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121089 (= res!749029 (validKeyInArray!0 k0!934))))

(declare-fun b!1121090 () Bool)

(assert (=> b!1121090 (= e!638377 (= call!47068 call!47069))))

(declare-fun b!1121091 () Bool)

(declare-fun res!749027 () Bool)

(assert (=> b!1121091 (=> (not res!749027) (not e!638376))))

(assert (=> b!1121091 (= res!749027 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24617))))

(declare-fun mapNonEmpty!44005 () Bool)

(declare-fun mapRes!44005 () Bool)

(declare-fun tp!83490 () Bool)

(declare-fun e!638381 () Bool)

(assert (=> mapNonEmpty!44005 (= mapRes!44005 (and tp!83490 e!638381))))

(declare-datatypes ((ValueCell!13353 0))(
  ( (ValueCellFull!13353 (v!16753 V!42627)) (EmptyCell!13353) )
))
(declare-fun mapRest!44005 () (Array (_ BitVec 32) ValueCell!13353))

(declare-fun mapKey!44005 () (_ BitVec 32))

(declare-datatypes ((array!73078 0))(
  ( (array!73079 (arr!35188 (Array (_ BitVec 32) ValueCell!13353)) (size!35725 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73078)

(declare-fun mapValue!44005 () ValueCell!13353)

(assert (=> mapNonEmpty!44005 (= (arr!35188 _values!996) (store mapRest!44005 mapKey!44005 mapValue!44005))))

(declare-fun mapIsEmpty!44005 () Bool)

(assert (=> mapIsEmpty!44005 mapRes!44005))

(declare-fun b!1121093 () Bool)

(declare-fun tp_is_empty!28125 () Bool)

(assert (=> b!1121093 (= e!638381 tp_is_empty!28125)))

(declare-fun b!1121094 () Bool)

(declare-fun res!749030 () Bool)

(assert (=> b!1121094 (=> (not res!749030) (not e!638376))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1121094 (= res!749030 (and (= (size!35725 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35724 _keys!1208) (size!35725 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1121095 () Bool)

(declare-fun res!749024 () Bool)

(assert (=> b!1121095 (=> (not res!749024) (not e!638376))))

(assert (=> b!1121095 (= res!749024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1121096 () Bool)

(declare-fun e!638375 () Bool)

(assert (=> b!1121096 (= e!638378 (not e!638375))))

(declare-fun res!749032 () Bool)

(assert (=> b!1121096 (=> res!749032 e!638375)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1121096 (= res!749032 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1121096 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36707 0))(
  ( (Unit!36708) )
))
(declare-fun lt!498224 () Unit!36707)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73076 (_ BitVec 64) (_ BitVec 32)) Unit!36707)

(assert (=> b!1121096 (= lt!498224 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42627)

(declare-fun lt!498226 () array!73078)

(declare-fun zeroValue!944 () V!42627)

(declare-fun bm!47065 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4357 (array!73076 array!73078 (_ BitVec 32) (_ BitVec 32) V!42627 V!42627 (_ BitVec 32) Int) ListLongMap!15761)

(assert (=> bm!47065 (= call!47068 (getCurrentListMapNoExtraKeys!4357 lt!498228 lt!498226 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121097 () Bool)

(declare-fun e!638380 () Bool)

(assert (=> b!1121097 (= e!638380 tp_is_empty!28125)))

(declare-fun b!1121098 () Bool)

(declare-fun e!638379 () Bool)

(assert (=> b!1121098 (= e!638375 e!638379)))

(declare-fun res!749028 () Bool)

(assert (=> b!1121098 (=> res!749028 e!638379)))

(assert (=> b!1121098 (= res!749028 (not (= from!1455 i!673)))))

(declare-fun lt!498227 () ListLongMap!15761)

(assert (=> b!1121098 (= lt!498227 (getCurrentListMapNoExtraKeys!4357 lt!498228 lt!498226 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2457 (Int (_ BitVec 64)) V!42627)

(assert (=> b!1121098 (= lt!498226 (array!73079 (store (arr!35188 _values!996) i!673 (ValueCellFull!13353 (dynLambda!2457 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35725 _values!996)))))

(declare-fun lt!498225 () ListLongMap!15761)

(assert (=> b!1121098 (= lt!498225 (getCurrentListMapNoExtraKeys!4357 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!47066 () Bool)

(assert (=> bm!47066 (= call!47069 (getCurrentListMapNoExtraKeys!4357 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121099 () Bool)

(assert (=> b!1121099 (= e!638379 true)))

(assert (=> b!1121099 e!638377))

(declare-fun c!109343 () Bool)

(assert (=> b!1121099 (= c!109343 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!498223 () Unit!36707)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!317 (array!73076 array!73078 (_ BitVec 32) (_ BitVec 32) V!42627 V!42627 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36707)

(assert (=> b!1121099 (= lt!498223 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!317 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121100 () Bool)

(declare-fun res!749033 () Bool)

(assert (=> b!1121100 (=> (not res!749033) (not e!638376))))

(assert (=> b!1121100 (= res!749033 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35724 _keys!1208))))))

(declare-fun res!749026 () Bool)

(assert (=> start!97930 (=> (not res!749026) (not e!638376))))

(assert (=> start!97930 (= res!749026 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35724 _keys!1208))))))

(assert (=> start!97930 e!638376))

(assert (=> start!97930 tp_is_empty!28125))

(declare-fun array_inv!26896 (array!73076) Bool)

(assert (=> start!97930 (array_inv!26896 _keys!1208)))

(assert (=> start!97930 true))

(assert (=> start!97930 tp!83489))

(declare-fun e!638373 () Bool)

(declare-fun array_inv!26897 (array!73078) Bool)

(assert (=> start!97930 (and (array_inv!26897 _values!996) e!638373)))

(declare-fun b!1121092 () Bool)

(assert (=> b!1121092 (= e!638373 (and e!638380 mapRes!44005))))

(declare-fun condMapEmpty!44005 () Bool)

(declare-fun mapDefault!44005 () ValueCell!13353)

(assert (=> b!1121092 (= condMapEmpty!44005 (= (arr!35188 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13353)) mapDefault!44005)))))

(assert (= (and start!97930 res!749026) b!1121084))

(assert (= (and b!1121084 res!749025) b!1121094))

(assert (= (and b!1121094 res!749030) b!1121095))

(assert (= (and b!1121095 res!749024) b!1121091))

(assert (= (and b!1121091 res!749027) b!1121100))

(assert (= (and b!1121100 res!749033) b!1121089))

(assert (= (and b!1121089 res!749029) b!1121088))

(assert (= (and b!1121088 res!749034) b!1121087))

(assert (= (and b!1121087 res!749031) b!1121086))

(assert (= (and b!1121086 res!749023) b!1121096))

(assert (= (and b!1121096 (not res!749032)) b!1121098))

(assert (= (and b!1121098 (not res!749028)) b!1121099))

(assert (= (and b!1121099 c!109343) b!1121085))

(assert (= (and b!1121099 (not c!109343)) b!1121090))

(assert (= (or b!1121085 b!1121090) bm!47066))

(assert (= (or b!1121085 b!1121090) bm!47065))

(assert (= (and b!1121092 condMapEmpty!44005) mapIsEmpty!44005))

(assert (= (and b!1121092 (not condMapEmpty!44005)) mapNonEmpty!44005))

(get-info :version)

(assert (= (and mapNonEmpty!44005 ((_ is ValueCellFull!13353) mapValue!44005)) b!1121093))

(assert (= (and b!1121092 ((_ is ValueCellFull!13353) mapDefault!44005)) b!1121097))

(assert (= start!97930 b!1121092))

(declare-fun b_lambda!18599 () Bool)

(assert (=> (not b_lambda!18599) (not b!1121098)))

(declare-fun t!35212 () Bool)

(declare-fun tb!8415 () Bool)

(assert (=> (and start!97930 (= defaultEntry!1004 defaultEntry!1004) t!35212) tb!8415))

(declare-fun result!17383 () Bool)

(assert (=> tb!8415 (= result!17383 tp_is_empty!28125)))

(assert (=> b!1121098 t!35212))

(declare-fun b_and!37997 () Bool)

(assert (= b_and!37995 (and (=> t!35212 result!17383) b_and!37997)))

(declare-fun m!1036105 () Bool)

(assert (=> bm!47066 m!1036105))

(declare-fun m!1036107 () Bool)

(assert (=> bm!47065 m!1036107))

(declare-fun m!1036109 () Bool)

(assert (=> b!1121089 m!1036109))

(declare-fun m!1036111 () Bool)

(assert (=> b!1121095 m!1036111))

(declare-fun m!1036113 () Bool)

(assert (=> b!1121084 m!1036113))

(declare-fun m!1036115 () Bool)

(assert (=> b!1121087 m!1036115))

(declare-fun m!1036117 () Bool)

(assert (=> b!1121087 m!1036117))

(declare-fun m!1036119 () Bool)

(assert (=> b!1121086 m!1036119))

(declare-fun m!1036121 () Bool)

(assert (=> b!1121088 m!1036121))

(declare-fun m!1036123 () Bool)

(assert (=> b!1121096 m!1036123))

(declare-fun m!1036125 () Bool)

(assert (=> b!1121096 m!1036125))

(declare-fun m!1036127 () Bool)

(assert (=> b!1121085 m!1036127))

(declare-fun m!1036129 () Bool)

(assert (=> b!1121091 m!1036129))

(declare-fun m!1036131 () Bool)

(assert (=> b!1121098 m!1036131))

(declare-fun m!1036133 () Bool)

(assert (=> b!1121098 m!1036133))

(declare-fun m!1036135 () Bool)

(assert (=> b!1121098 m!1036135))

(declare-fun m!1036137 () Bool)

(assert (=> b!1121098 m!1036137))

(declare-fun m!1036139 () Bool)

(assert (=> start!97930 m!1036139))

(declare-fun m!1036141 () Bool)

(assert (=> start!97930 m!1036141))

(declare-fun m!1036143 () Bool)

(assert (=> b!1121099 m!1036143))

(declare-fun m!1036145 () Bool)

(assert (=> mapNonEmpty!44005 m!1036145))

(check-sat (not b!1121086) (not b!1121098) b_and!37997 (not mapNonEmpty!44005) (not b!1121091) (not b!1121085) (not b!1121087) (not b!1121096) (not bm!47065) tp_is_empty!28125 (not b!1121089) (not b!1121099) (not b_next!23595) (not bm!47066) (not start!97930) (not b!1121095) (not b!1121084) (not b_lambda!18599))
(check-sat b_and!37997 (not b_next!23595))
