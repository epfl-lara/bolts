; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98038 () Bool)

(assert start!98038)

(declare-fun b_free!23703 () Bool)

(declare-fun b_next!23703 () Bool)

(assert (=> start!98038 (= b_free!23703 (not b_next!23703))))

(declare-fun tp!83814 () Bool)

(declare-fun b_and!38211 () Bool)

(assert (=> start!98038 (= tp!83814 b_and!38211)))

(declare-fun res!751139 () Bool)

(declare-fun e!639967 () Bool)

(assert (=> start!98038 (=> (not res!751139) (not e!639967))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73292 0))(
  ( (array!73293 (arr!35295 (Array (_ BitVec 32) (_ BitVec 64))) (size!35832 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73292)

(assert (=> start!98038 (= res!751139 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35832 _keys!1208))))))

(assert (=> start!98038 e!639967))

(declare-fun tp_is_empty!28233 () Bool)

(assert (=> start!98038 tp_is_empty!28233))

(declare-fun array_inv!26966 (array!73292) Bool)

(assert (=> start!98038 (array_inv!26966 _keys!1208)))

(assert (=> start!98038 true))

(assert (=> start!98038 tp!83814))

(declare-datatypes ((V!42771 0))(
  ( (V!42772 (val!14173 Int)) )
))
(declare-datatypes ((ValueCell!13407 0))(
  ( (ValueCellFull!13407 (v!16807 V!42771)) (EmptyCell!13407) )
))
(declare-datatypes ((array!73294 0))(
  ( (array!73295 (arr!35296 (Array (_ BitVec 32) ValueCell!13407)) (size!35833 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73294)

(declare-fun e!639969 () Bool)

(declare-fun array_inv!26967 (array!73294) Bool)

(assert (=> start!98038 (and (array_inv!26967 _values!996) e!639969)))

(declare-fun b!1124114 () Bool)

(declare-fun e!639977 () Bool)

(declare-fun e!639974 () Bool)

(assert (=> b!1124114 (= e!639977 (not e!639974))))

(declare-fun res!751142 () Bool)

(assert (=> b!1124114 (=> res!751142 e!639974)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124114 (= res!751142 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1124114 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36793 0))(
  ( (Unit!36794) )
))
(declare-fun lt!499322 () Unit!36793)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73292 (_ BitVec 64) (_ BitVec 32)) Unit!36793)

(assert (=> b!1124114 (= lt!499322 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1124115 () Bool)

(declare-fun e!639973 () Bool)

(assert (=> b!1124115 (= e!639973 true)))

(declare-datatypes ((tuple2!17882 0))(
  ( (tuple2!17883 (_1!8951 (_ BitVec 64)) (_2!8951 V!42771)) )
))
(declare-datatypes ((List!24714 0))(
  ( (Nil!24711) (Cons!24710 (h!25919 tuple2!17882) (t!35416 List!24714)) )
))
(declare-datatypes ((ListLongMap!15863 0))(
  ( (ListLongMap!15864 (toList!7947 List!24714)) )
))
(declare-fun lt!499324 () ListLongMap!15863)

(declare-fun zeroValue!944 () V!42771)

(declare-fun contains!6459 (ListLongMap!15863 (_ BitVec 64)) Bool)

(declare-fun +!3377 (ListLongMap!15863 tuple2!17882) ListLongMap!15863)

(assert (=> b!1124115 (contains!6459 (+!3377 lt!499324 (tuple2!17883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!499329 () Unit!36793)

(declare-fun addStillContains!676 (ListLongMap!15863 (_ BitVec 64) V!42771 (_ BitVec 64)) Unit!36793)

(assert (=> b!1124115 (= lt!499329 (addStillContains!676 lt!499324 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun b!1124116 () Bool)

(declare-fun e!639970 () Bool)

(declare-fun call!47393 () ListLongMap!15863)

(declare-fun call!47392 () ListLongMap!15863)

(assert (=> b!1124116 (= e!639970 (= call!47393 call!47392))))

(declare-fun b!1124117 () Bool)

(declare-fun res!751141 () Bool)

(assert (=> b!1124117 (=> (not res!751141) (not e!639967))))

(assert (=> b!1124117 (= res!751141 (= (select (arr!35295 _keys!1208) i!673) k0!934))))

(declare-fun b!1124118 () Bool)

(assert (=> b!1124118 (= e!639967 e!639977)))

(declare-fun res!751135 () Bool)

(assert (=> b!1124118 (=> (not res!751135) (not e!639977))))

(declare-fun lt!499328 () array!73292)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73292 (_ BitVec 32)) Bool)

(assert (=> b!1124118 (= res!751135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499328 mask!1564))))

(assert (=> b!1124118 (= lt!499328 (array!73293 (store (arr!35295 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35832 _keys!1208)))))

(declare-fun b!1124119 () Bool)

(declare-fun res!751136 () Bool)

(assert (=> b!1124119 (=> res!751136 e!639973)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1124119 (= res!751136 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1124120 () Bool)

(declare-fun res!751147 () Bool)

(assert (=> b!1124120 (=> (not res!751147) (not e!639967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1124120 (= res!751147 (validMask!0 mask!1564))))

(declare-fun bm!47389 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42771)

(declare-fun getCurrentListMapNoExtraKeys!4406 (array!73292 array!73294 (_ BitVec 32) (_ BitVec 32) V!42771 V!42771 (_ BitVec 32) Int) ListLongMap!15863)

(assert (=> bm!47389 (= call!47392 (getCurrentListMapNoExtraKeys!4406 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124121 () Bool)

(declare-fun res!751138 () Bool)

(assert (=> b!1124121 (=> (not res!751138) (not e!639977))))

(declare-datatypes ((List!24715 0))(
  ( (Nil!24712) (Cons!24711 (h!25920 (_ BitVec 64)) (t!35417 List!24715)) )
))
(declare-fun arrayNoDuplicates!0 (array!73292 (_ BitVec 32) List!24715) Bool)

(assert (=> b!1124121 (= res!751138 (arrayNoDuplicates!0 lt!499328 #b00000000000000000000000000000000 Nil!24712))))

(declare-fun b!1124122 () Bool)

(declare-fun e!639972 () Bool)

(declare-fun mapRes!44167 () Bool)

(assert (=> b!1124122 (= e!639969 (and e!639972 mapRes!44167))))

(declare-fun condMapEmpty!44167 () Bool)

(declare-fun mapDefault!44167 () ValueCell!13407)

(assert (=> b!1124122 (= condMapEmpty!44167 (= (arr!35296 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13407)) mapDefault!44167)))))

(declare-fun b!1124123 () Bool)

(declare-fun res!751145 () Bool)

(assert (=> b!1124123 (=> (not res!751145) (not e!639967))))

(assert (=> b!1124123 (= res!751145 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35832 _keys!1208))))))

(declare-fun mapNonEmpty!44167 () Bool)

(declare-fun tp!83813 () Bool)

(declare-fun e!639968 () Bool)

(assert (=> mapNonEmpty!44167 (= mapRes!44167 (and tp!83813 e!639968))))

(declare-fun mapValue!44167 () ValueCell!13407)

(declare-fun mapKey!44167 () (_ BitVec 32))

(declare-fun mapRest!44167 () (Array (_ BitVec 32) ValueCell!13407))

(assert (=> mapNonEmpty!44167 (= (arr!35296 _values!996) (store mapRest!44167 mapKey!44167 mapValue!44167))))

(declare-fun b!1124124 () Bool)

(declare-fun -!1099 (ListLongMap!15863 (_ BitVec 64)) ListLongMap!15863)

(assert (=> b!1124124 (= e!639970 (= call!47393 (-!1099 call!47392 k0!934)))))

(declare-fun b!1124125 () Bool)

(assert (=> b!1124125 (= e!639968 tp_is_empty!28233)))

(declare-fun mapIsEmpty!44167 () Bool)

(assert (=> mapIsEmpty!44167 mapRes!44167))

(declare-fun b!1124126 () Bool)

(declare-fun res!751146 () Bool)

(assert (=> b!1124126 (=> (not res!751146) (not e!639967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1124126 (= res!751146 (validKeyInArray!0 k0!934))))

(declare-fun b!1124127 () Bool)

(assert (=> b!1124127 (= e!639972 tp_is_empty!28233)))

(declare-fun b!1124128 () Bool)

(declare-fun e!639975 () Bool)

(declare-fun e!639971 () Bool)

(assert (=> b!1124128 (= e!639975 e!639971)))

(declare-fun res!751144 () Bool)

(assert (=> b!1124128 (=> res!751144 e!639971)))

(assert (=> b!1124128 (= res!751144 (not (= (select (arr!35295 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1124128 e!639970))

(declare-fun c!109505 () Bool)

(assert (=> b!1124128 (= c!109505 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!499325 () Unit!36793)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!353 (array!73292 array!73294 (_ BitVec 32) (_ BitVec 32) V!42771 V!42771 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36793)

(assert (=> b!1124128 (= lt!499325 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!353 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124129 () Bool)

(assert (=> b!1124129 (= e!639971 e!639973)))

(declare-fun res!751148 () Bool)

(assert (=> b!1124129 (=> res!751148 e!639973)))

(assert (=> b!1124129 (= res!751148 (not (contains!6459 lt!499324 k0!934)))))

(assert (=> b!1124129 (= lt!499324 (getCurrentListMapNoExtraKeys!4406 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124130 () Bool)

(declare-fun res!751137 () Bool)

(assert (=> b!1124130 (=> (not res!751137) (not e!639967))))

(assert (=> b!1124130 (= res!751137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1124131 () Bool)

(assert (=> b!1124131 (= e!639974 e!639975)))

(declare-fun res!751143 () Bool)

(assert (=> b!1124131 (=> res!751143 e!639975)))

(assert (=> b!1124131 (= res!751143 (not (= from!1455 i!673)))))

(declare-fun lt!499326 () ListLongMap!15863)

(declare-fun lt!499323 () array!73294)

(assert (=> b!1124131 (= lt!499326 (getCurrentListMapNoExtraKeys!4406 lt!499328 lt!499323 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2497 (Int (_ BitVec 64)) V!42771)

(assert (=> b!1124131 (= lt!499323 (array!73295 (store (arr!35296 _values!996) i!673 (ValueCellFull!13407 (dynLambda!2497 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35833 _values!996)))))

(declare-fun lt!499327 () ListLongMap!15863)

(assert (=> b!1124131 (= lt!499327 (getCurrentListMapNoExtraKeys!4406 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1124132 () Bool)

(declare-fun res!751140 () Bool)

(assert (=> b!1124132 (=> (not res!751140) (not e!639967))))

(assert (=> b!1124132 (= res!751140 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24712))))

(declare-fun b!1124133 () Bool)

(declare-fun res!751149 () Bool)

(assert (=> b!1124133 (=> (not res!751149) (not e!639967))))

(assert (=> b!1124133 (= res!751149 (and (= (size!35833 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35832 _keys!1208) (size!35833 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!47390 () Bool)

(assert (=> bm!47390 (= call!47393 (getCurrentListMapNoExtraKeys!4406 lt!499328 lt!499323 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98038 res!751139) b!1124120))

(assert (= (and b!1124120 res!751147) b!1124133))

(assert (= (and b!1124133 res!751149) b!1124130))

(assert (= (and b!1124130 res!751137) b!1124132))

(assert (= (and b!1124132 res!751140) b!1124123))

(assert (= (and b!1124123 res!751145) b!1124126))

(assert (= (and b!1124126 res!751146) b!1124117))

(assert (= (and b!1124117 res!751141) b!1124118))

(assert (= (and b!1124118 res!751135) b!1124121))

(assert (= (and b!1124121 res!751138) b!1124114))

(assert (= (and b!1124114 (not res!751142)) b!1124131))

(assert (= (and b!1124131 (not res!751143)) b!1124128))

(assert (= (and b!1124128 c!109505) b!1124124))

(assert (= (and b!1124128 (not c!109505)) b!1124116))

(assert (= (or b!1124124 b!1124116) bm!47389))

(assert (= (or b!1124124 b!1124116) bm!47390))

(assert (= (and b!1124128 (not res!751144)) b!1124129))

(assert (= (and b!1124129 (not res!751148)) b!1124119))

(assert (= (and b!1124119 (not res!751136)) b!1124115))

(assert (= (and b!1124122 condMapEmpty!44167) mapIsEmpty!44167))

(assert (= (and b!1124122 (not condMapEmpty!44167)) mapNonEmpty!44167))

(get-info :version)

(assert (= (and mapNonEmpty!44167 ((_ is ValueCellFull!13407) mapValue!44167)) b!1124125))

(assert (= (and b!1124122 ((_ is ValueCellFull!13407) mapDefault!44167)) b!1124127))

(assert (= start!98038 b!1124122))

(declare-fun b_lambda!18707 () Bool)

(assert (=> (not b_lambda!18707) (not b!1124131)))

(declare-fun t!35415 () Bool)

(declare-fun tb!8523 () Bool)

(assert (=> (and start!98038 (= defaultEntry!1004 defaultEntry!1004) t!35415) tb!8523))

(declare-fun result!17599 () Bool)

(assert (=> tb!8523 (= result!17599 tp_is_empty!28233)))

(assert (=> b!1124131 t!35415))

(declare-fun b_and!38213 () Bool)

(assert (= b_and!38211 (and (=> t!35415 result!17599) b_and!38213)))

(declare-fun m!1038571 () Bool)

(assert (=> start!98038 m!1038571))

(declare-fun m!1038573 () Bool)

(assert (=> start!98038 m!1038573))

(declare-fun m!1038575 () Bool)

(assert (=> b!1124130 m!1038575))

(declare-fun m!1038577 () Bool)

(assert (=> b!1124128 m!1038577))

(declare-fun m!1038579 () Bool)

(assert (=> b!1124128 m!1038579))

(declare-fun m!1038581 () Bool)

(assert (=> b!1124117 m!1038581))

(declare-fun m!1038583 () Bool)

(assert (=> b!1124115 m!1038583))

(assert (=> b!1124115 m!1038583))

(declare-fun m!1038585 () Bool)

(assert (=> b!1124115 m!1038585))

(declare-fun m!1038587 () Bool)

(assert (=> b!1124115 m!1038587))

(declare-fun m!1038589 () Bool)

(assert (=> b!1124132 m!1038589))

(declare-fun m!1038591 () Bool)

(assert (=> b!1124118 m!1038591))

(declare-fun m!1038593 () Bool)

(assert (=> b!1124118 m!1038593))

(declare-fun m!1038595 () Bool)

(assert (=> mapNonEmpty!44167 m!1038595))

(declare-fun m!1038597 () Bool)

(assert (=> bm!47389 m!1038597))

(declare-fun m!1038599 () Bool)

(assert (=> b!1124126 m!1038599))

(declare-fun m!1038601 () Bool)

(assert (=> b!1124131 m!1038601))

(declare-fun m!1038603 () Bool)

(assert (=> b!1124131 m!1038603))

(declare-fun m!1038605 () Bool)

(assert (=> b!1124131 m!1038605))

(declare-fun m!1038607 () Bool)

(assert (=> b!1124131 m!1038607))

(declare-fun m!1038609 () Bool)

(assert (=> b!1124120 m!1038609))

(declare-fun m!1038611 () Bool)

(assert (=> b!1124114 m!1038611))

(declare-fun m!1038613 () Bool)

(assert (=> b!1124114 m!1038613))

(declare-fun m!1038615 () Bool)

(assert (=> b!1124129 m!1038615))

(assert (=> b!1124129 m!1038597))

(declare-fun m!1038617 () Bool)

(assert (=> b!1124124 m!1038617))

(declare-fun m!1038619 () Bool)

(assert (=> b!1124121 m!1038619))

(declare-fun m!1038621 () Bool)

(assert (=> bm!47390 m!1038621))

(check-sat (not b_next!23703) (not bm!47389) (not b!1124115) (not b!1124129) tp_is_empty!28233 (not start!98038) (not b!1124120) (not b!1124130) (not b!1124126) (not b!1124131) (not b!1124128) (not b!1124114) (not b!1124118) (not b_lambda!18707) (not b!1124124) b_and!38213 (not b!1124132) (not mapNonEmpty!44167) (not b!1124121) (not bm!47390))
(check-sat b_and!38213 (not b_next!23703))
