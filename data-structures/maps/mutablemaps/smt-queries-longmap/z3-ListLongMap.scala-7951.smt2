; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98584 () Bool)

(assert start!98584)

(declare-fun b_free!24153 () Bool)

(declare-fun b_next!24153 () Bool)

(assert (=> start!98584 (= b_free!24153 (not b_next!24153))))

(declare-fun tp!85171 () Bool)

(declare-fun b_and!39169 () Bool)

(assert (=> start!98584 (= tp!85171 b_and!39169)))

(declare-datatypes ((array!74176 0))(
  ( (array!74177 (arr!35735 (Array (_ BitVec 32) (_ BitVec 64))) (size!36272 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74176)

(declare-fun b!1142053 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!649766 () Bool)

(declare-fun arrayContainsKey!0 (array!74176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1142053 (= e!649766 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun c!112184 () Bool)

(declare-datatypes ((V!43371 0))(
  ( (V!43372 (val!14398 Int)) )
))
(declare-datatypes ((tuple2!18302 0))(
  ( (tuple2!18303 (_1!9161 (_ BitVec 64)) (_2!9161 V!43371)) )
))
(declare-datatypes ((List!25102 0))(
  ( (Nil!25099) (Cons!25098 (h!26307 tuple2!18302) (t!36254 List!25102)) )
))
(declare-datatypes ((ListLongMap!16283 0))(
  ( (ListLongMap!16284 (toList!8157 List!25102)) )
))
(declare-fun call!51382 () ListLongMap!16283)

(declare-fun bm!51374 () Bool)

(declare-fun lt!508971 () ListLongMap!16283)

(declare-fun call!51381 () Bool)

(declare-fun contains!6661 (ListLongMap!16283 (_ BitVec 64)) Bool)

(assert (=> bm!51374 (= call!51381 (contains!6661 (ite c!112184 lt!508971 call!51382) k0!934))))

(declare-fun b!1142054 () Bool)

(declare-fun res!761221 () Bool)

(declare-fun e!649764 () Bool)

(assert (=> b!1142054 (=> (not res!761221) (not e!649764))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13632 0))(
  ( (ValueCellFull!13632 (v!17036 V!43371)) (EmptyCell!13632) )
))
(declare-datatypes ((array!74178 0))(
  ( (array!74179 (arr!35736 (Array (_ BitVec 32) ValueCell!13632)) (size!36273 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74178)

(assert (=> b!1142054 (= res!761221 (and (= (size!36273 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36272 _keys!1208) (size!36273 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1142055 () Bool)

(declare-fun c!112188 () Bool)

(declare-fun lt!508964 () Bool)

(assert (=> b!1142055 (= c!112188 (and (not lt!508964) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!37388 0))(
  ( (Unit!37389) )
))
(declare-fun e!649768 () Unit!37388)

(declare-fun e!649770 () Unit!37388)

(assert (=> b!1142055 (= e!649768 e!649770)))

(declare-fun b!1142057 () Bool)

(declare-fun e!649758 () Bool)

(declare-fun e!649761 () Bool)

(assert (=> b!1142057 (= e!649758 e!649761)))

(declare-fun res!761231 () Bool)

(assert (=> b!1142057 (=> res!761231 e!649761)))

(assert (=> b!1142057 (= res!761231 (not (= (select (arr!35735 _keys!1208) from!1455) k0!934)))))

(declare-fun e!649763 () Bool)

(assert (=> b!1142057 e!649763))

(declare-fun c!112186 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1142057 (= c!112186 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43371)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43371)

(declare-fun lt!508961 () Unit!37388)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!509 (array!74176 array!74178 (_ BitVec 32) (_ BitVec 32) V!43371 V!43371 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37388)

(assert (=> b!1142057 (= lt!508961 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!509 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142058 () Bool)

(declare-fun e!649769 () Bool)

(assert (=> b!1142058 (= e!649764 e!649769)))

(declare-fun res!761232 () Bool)

(assert (=> b!1142058 (=> (not res!761232) (not e!649769))))

(declare-fun lt!508977 () array!74176)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74176 (_ BitVec 32)) Bool)

(assert (=> b!1142058 (= res!761232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!508977 mask!1564))))

(assert (=> b!1142058 (= lt!508977 (array!74177 (store (arr!35735 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36272 _keys!1208)))))

(declare-fun bm!51375 () Bool)

(declare-fun call!51378 () Unit!37388)

(declare-fun call!51377 () Unit!37388)

(assert (=> bm!51375 (= call!51378 call!51377)))

(declare-fun b!1142059 () Bool)

(declare-fun res!761234 () Bool)

(assert (=> b!1142059 (=> (not res!761234) (not e!649764))))

(declare-datatypes ((List!25103 0))(
  ( (Nil!25100) (Cons!25099 (h!26308 (_ BitVec 64)) (t!36255 List!25103)) )
))
(declare-fun arrayNoDuplicates!0 (array!74176 (_ BitVec 32) List!25103) Bool)

(assert (=> b!1142059 (= res!761234 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25100))))

(declare-fun call!51379 () ListLongMap!16283)

(declare-fun bm!51376 () Bool)

(declare-fun lt!508968 () array!74178)

(declare-fun getCurrentListMapNoExtraKeys!4600 (array!74176 array!74178 (_ BitVec 32) (_ BitVec 32) V!43371 V!43371 (_ BitVec 32) Int) ListLongMap!16283)

(assert (=> bm!51376 (= call!51379 (getCurrentListMapNoExtraKeys!4600 lt!508977 lt!508968 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44849 () Bool)

(declare-fun mapRes!44849 () Bool)

(declare-fun tp!85170 () Bool)

(declare-fun e!649757 () Bool)

(assert (=> mapNonEmpty!44849 (= mapRes!44849 (and tp!85170 e!649757))))

(declare-fun mapKey!44849 () (_ BitVec 32))

(declare-fun mapValue!44849 () ValueCell!13632)

(declare-fun mapRest!44849 () (Array (_ BitVec 32) ValueCell!13632))

(assert (=> mapNonEmpty!44849 (= (arr!35736 _values!996) (store mapRest!44849 mapKey!44849 mapValue!44849))))

(declare-fun bm!51377 () Bool)

(declare-fun lt!508962 () ListLongMap!16283)

(declare-fun addStillContains!801 (ListLongMap!16283 (_ BitVec 64) V!43371 (_ BitVec 64)) Unit!37388)

(assert (=> bm!51377 (= call!51377 (addStillContains!801 (ite c!112184 lt!508971 lt!508962) (ite c!112184 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112188 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112184 minValue!944 (ite c!112188 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1142060 () Bool)

(declare-fun call!51384 () ListLongMap!16283)

(assert (=> b!1142060 (= e!649763 (= call!51379 call!51384))))

(declare-fun b!1142061 () Bool)

(declare-fun e!649767 () Bool)

(declare-fun tp_is_empty!28683 () Bool)

(assert (=> b!1142061 (= e!649767 tp_is_empty!28683)))

(declare-fun call!51383 () ListLongMap!16283)

(declare-fun bm!51378 () Bool)

(declare-fun +!3502 (ListLongMap!16283 tuple2!18302) ListLongMap!16283)

(assert (=> bm!51378 (= call!51383 (+!3502 (ite c!112184 lt!508971 lt!508962) (ite c!112184 (tuple2!18303 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112188 (tuple2!18303 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18303 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1142062 () Bool)

(declare-fun e!649762 () Unit!37388)

(declare-fun Unit!37390 () Unit!37388)

(assert (=> b!1142062 (= e!649762 Unit!37390)))

(declare-fun b!1142063 () Bool)

(declare-fun e!649756 () Unit!37388)

(declare-fun Unit!37391 () Unit!37388)

(assert (=> b!1142063 (= e!649756 Unit!37391)))

(declare-fun b!1142064 () Bool)

(declare-fun lt!508958 () Unit!37388)

(assert (=> b!1142064 (= e!649770 lt!508958)))

(assert (=> b!1142064 (= lt!508958 call!51378)))

(declare-fun call!51380 () Bool)

(assert (=> b!1142064 call!51380))

(declare-fun b!1142065 () Bool)

(assert (=> b!1142065 call!51380))

(declare-fun lt!508970 () Unit!37388)

(assert (=> b!1142065 (= lt!508970 call!51378)))

(assert (=> b!1142065 (= e!649756 lt!508970)))

(declare-fun b!1142066 () Bool)

(assert (=> b!1142066 (= e!649770 e!649756)))

(declare-fun c!112187 () Bool)

(assert (=> b!1142066 (= c!112187 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!508964))))

(declare-fun mapIsEmpty!44849 () Bool)

(assert (=> mapIsEmpty!44849 mapRes!44849))

(declare-fun b!1142067 () Bool)

(declare-fun res!761228 () Bool)

(assert (=> b!1142067 (=> (not res!761228) (not e!649769))))

(assert (=> b!1142067 (= res!761228 (arrayNoDuplicates!0 lt!508977 #b00000000000000000000000000000000 Nil!25100))))

(declare-fun b!1142068 () Bool)

(assert (=> b!1142068 (contains!6661 call!51383 k0!934)))

(declare-fun lt!508974 () Unit!37388)

(assert (=> b!1142068 (= lt!508974 call!51377)))

(assert (=> b!1142068 call!51381))

(assert (=> b!1142068 (= lt!508971 (+!3502 lt!508962 (tuple2!18303 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!508957 () Unit!37388)

(assert (=> b!1142068 (= lt!508957 (addStillContains!801 lt!508962 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1142068 (= e!649768 lt!508974)))

(declare-fun res!761227 () Bool)

(assert (=> start!98584 (=> (not res!761227) (not e!649764))))

(assert (=> start!98584 (= res!761227 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36272 _keys!1208))))))

(assert (=> start!98584 e!649764))

(assert (=> start!98584 tp_is_empty!28683))

(declare-fun array_inv!27260 (array!74176) Bool)

(assert (=> start!98584 (array_inv!27260 _keys!1208)))

(assert (=> start!98584 true))

(assert (=> start!98584 tp!85171))

(declare-fun e!649759 () Bool)

(declare-fun array_inv!27261 (array!74178) Bool)

(assert (=> start!98584 (and (array_inv!27261 _values!996) e!649759)))

(declare-fun b!1142056 () Bool)

(declare-fun res!761230 () Bool)

(assert (=> b!1142056 (=> (not res!761230) (not e!649764))))

(assert (=> b!1142056 (= res!761230 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36272 _keys!1208))))))

(declare-fun b!1142069 () Bool)

(assert (=> b!1142069 (= e!649761 true)))

(declare-fun lt!508969 () V!43371)

(declare-fun -!1252 (ListLongMap!16283 (_ BitVec 64)) ListLongMap!16283)

(assert (=> b!1142069 (= (-!1252 (+!3502 lt!508962 (tuple2!18303 (select (arr!35735 _keys!1208) from!1455) lt!508969)) (select (arr!35735 _keys!1208) from!1455)) lt!508962)))

(declare-fun lt!508972 () Unit!37388)

(declare-fun addThenRemoveForNewKeyIsSame!107 (ListLongMap!16283 (_ BitVec 64) V!43371) Unit!37388)

(assert (=> b!1142069 (= lt!508972 (addThenRemoveForNewKeyIsSame!107 lt!508962 (select (arr!35735 _keys!1208) from!1455) lt!508969))))

(declare-fun lt!508976 () V!43371)

(declare-fun get!18179 (ValueCell!13632 V!43371) V!43371)

(assert (=> b!1142069 (= lt!508969 (get!18179 (select (arr!35736 _values!996) from!1455) lt!508976))))

(declare-fun lt!508973 () Unit!37388)

(assert (=> b!1142069 (= lt!508973 e!649762)))

(declare-fun c!112185 () Bool)

(assert (=> b!1142069 (= c!112185 (contains!6661 lt!508962 k0!934))))

(assert (=> b!1142069 (= lt!508962 (getCurrentListMapNoExtraKeys!4600 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142070 () Bool)

(declare-fun res!761223 () Bool)

(assert (=> b!1142070 (=> (not res!761223) (not e!649764))))

(assert (=> b!1142070 (= res!761223 (= (select (arr!35735 _keys!1208) i!673) k0!934))))

(declare-fun b!1142071 () Bool)

(assert (=> b!1142071 (= e!649759 (and e!649767 mapRes!44849))))

(declare-fun condMapEmpty!44849 () Bool)

(declare-fun mapDefault!44849 () ValueCell!13632)

(assert (=> b!1142071 (= condMapEmpty!44849 (= (arr!35736 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13632)) mapDefault!44849)))))

(declare-fun b!1142072 () Bool)

(declare-fun Unit!37392 () Unit!37388)

(assert (=> b!1142072 (= e!649762 Unit!37392)))

(assert (=> b!1142072 (= lt!508964 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1142072 (= c!112184 (and (not lt!508964) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!508967 () Unit!37388)

(assert (=> b!1142072 (= lt!508967 e!649768)))

(declare-fun lt!508965 () Unit!37388)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!398 (array!74176 array!74178 (_ BitVec 32) (_ BitVec 32) V!43371 V!43371 (_ BitVec 64) (_ BitVec 32) Int) Unit!37388)

(assert (=> b!1142072 (= lt!508965 (lemmaListMapContainsThenArrayContainsFrom!398 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112183 () Bool)

(assert (=> b!1142072 (= c!112183 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761229 () Bool)

(assert (=> b!1142072 (= res!761229 e!649766)))

(declare-fun e!649760 () Bool)

(assert (=> b!1142072 (=> (not res!761229) (not e!649760))))

(assert (=> b!1142072 e!649760))

(declare-fun lt!508959 () Unit!37388)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74176 (_ BitVec 32) (_ BitVec 32)) Unit!37388)

(assert (=> b!1142072 (= lt!508959 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1142072 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25100)))

(declare-fun lt!508966 () Unit!37388)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74176 (_ BitVec 64) (_ BitVec 32) List!25103) Unit!37388)

(assert (=> b!1142072 (= lt!508966 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25100))))

(assert (=> b!1142072 false))

(declare-fun b!1142073 () Bool)

(assert (=> b!1142073 (= e!649760 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!51379 () Bool)

(assert (=> bm!51379 (= call!51380 call!51381)))

(declare-fun b!1142074 () Bool)

(assert (=> b!1142074 (= e!649766 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!508964) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1142075 () Bool)

(assert (=> b!1142075 (= e!649763 (= call!51379 (-!1252 call!51384 k0!934)))))

(declare-fun b!1142076 () Bool)

(declare-fun res!761224 () Bool)

(assert (=> b!1142076 (=> (not res!761224) (not e!649764))))

(assert (=> b!1142076 (= res!761224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1142077 () Bool)

(declare-fun e!649765 () Bool)

(assert (=> b!1142077 (= e!649769 (not e!649765))))

(declare-fun res!761222 () Bool)

(assert (=> b!1142077 (=> res!761222 e!649765)))

(assert (=> b!1142077 (= res!761222 (bvsgt from!1455 i!673))))

(assert (=> b!1142077 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!508963 () Unit!37388)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74176 (_ BitVec 64) (_ BitVec 32)) Unit!37388)

(assert (=> b!1142077 (= lt!508963 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1142078 () Bool)

(declare-fun res!761233 () Bool)

(assert (=> b!1142078 (=> (not res!761233) (not e!649764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1142078 (= res!761233 (validKeyInArray!0 k0!934))))

(declare-fun b!1142079 () Bool)

(assert (=> b!1142079 (= e!649765 e!649758)))

(declare-fun res!761226 () Bool)

(assert (=> b!1142079 (=> res!761226 e!649758)))

(assert (=> b!1142079 (= res!761226 (not (= from!1455 i!673)))))

(declare-fun lt!508960 () ListLongMap!16283)

(assert (=> b!1142079 (= lt!508960 (getCurrentListMapNoExtraKeys!4600 lt!508977 lt!508968 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1142079 (= lt!508968 (array!74179 (store (arr!35736 _values!996) i!673 (ValueCellFull!13632 lt!508976)) (size!36273 _values!996)))))

(declare-fun dynLambda!2650 (Int (_ BitVec 64)) V!43371)

(assert (=> b!1142079 (= lt!508976 (dynLambda!2650 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!508975 () ListLongMap!16283)

(assert (=> b!1142079 (= lt!508975 (getCurrentListMapNoExtraKeys!4600 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1142080 () Bool)

(assert (=> b!1142080 (= e!649757 tp_is_empty!28683)))

(declare-fun b!1142081 () Bool)

(declare-fun res!761225 () Bool)

(assert (=> b!1142081 (=> (not res!761225) (not e!649764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1142081 (= res!761225 (validMask!0 mask!1564))))

(declare-fun bm!51380 () Bool)

(assert (=> bm!51380 (= call!51382 call!51383)))

(declare-fun bm!51381 () Bool)

(assert (=> bm!51381 (= call!51384 (getCurrentListMapNoExtraKeys!4600 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98584 res!761227) b!1142081))

(assert (= (and b!1142081 res!761225) b!1142054))

(assert (= (and b!1142054 res!761221) b!1142076))

(assert (= (and b!1142076 res!761224) b!1142059))

(assert (= (and b!1142059 res!761234) b!1142056))

(assert (= (and b!1142056 res!761230) b!1142078))

(assert (= (and b!1142078 res!761233) b!1142070))

(assert (= (and b!1142070 res!761223) b!1142058))

(assert (= (and b!1142058 res!761232) b!1142067))

(assert (= (and b!1142067 res!761228) b!1142077))

(assert (= (and b!1142077 (not res!761222)) b!1142079))

(assert (= (and b!1142079 (not res!761226)) b!1142057))

(assert (= (and b!1142057 c!112186) b!1142075))

(assert (= (and b!1142057 (not c!112186)) b!1142060))

(assert (= (or b!1142075 b!1142060) bm!51376))

(assert (= (or b!1142075 b!1142060) bm!51381))

(assert (= (and b!1142057 (not res!761231)) b!1142069))

(assert (= (and b!1142069 c!112185) b!1142072))

(assert (= (and b!1142069 (not c!112185)) b!1142062))

(assert (= (and b!1142072 c!112184) b!1142068))

(assert (= (and b!1142072 (not c!112184)) b!1142055))

(assert (= (and b!1142055 c!112188) b!1142064))

(assert (= (and b!1142055 (not c!112188)) b!1142066))

(assert (= (and b!1142066 c!112187) b!1142065))

(assert (= (and b!1142066 (not c!112187)) b!1142063))

(assert (= (or b!1142064 b!1142065) bm!51375))

(assert (= (or b!1142064 b!1142065) bm!51380))

(assert (= (or b!1142064 b!1142065) bm!51379))

(assert (= (or b!1142068 bm!51379) bm!51374))

(assert (= (or b!1142068 bm!51375) bm!51377))

(assert (= (or b!1142068 bm!51380) bm!51378))

(assert (= (and b!1142072 c!112183) b!1142053))

(assert (= (and b!1142072 (not c!112183)) b!1142074))

(assert (= (and b!1142072 res!761229) b!1142073))

(assert (= (and b!1142071 condMapEmpty!44849) mapIsEmpty!44849))

(assert (= (and b!1142071 (not condMapEmpty!44849)) mapNonEmpty!44849))

(get-info :version)

(assert (= (and mapNonEmpty!44849 ((_ is ValueCellFull!13632) mapValue!44849)) b!1142080))

(assert (= (and b!1142071 ((_ is ValueCellFull!13632) mapDefault!44849)) b!1142061))

(assert (= start!98584 b!1142071))

(declare-fun b_lambda!19277 () Bool)

(assert (=> (not b_lambda!19277) (not b!1142079)))

(declare-fun t!36253 () Bool)

(declare-fun tb!8973 () Bool)

(assert (=> (and start!98584 (= defaultEntry!1004 defaultEntry!1004) t!36253) tb!8973))

(declare-fun result!18503 () Bool)

(assert (=> tb!8973 (= result!18503 tp_is_empty!28683)))

(assert (=> b!1142079 t!36253))

(declare-fun b_and!39171 () Bool)

(assert (= b_and!39169 (and (=> t!36253 result!18503) b_and!39171)))

(declare-fun m!1053413 () Bool)

(assert (=> start!98584 m!1053413))

(declare-fun m!1053415 () Bool)

(assert (=> start!98584 m!1053415))

(declare-fun m!1053417 () Bool)

(assert (=> b!1142069 m!1053417))

(declare-fun m!1053419 () Bool)

(assert (=> b!1142069 m!1053419))

(declare-fun m!1053421 () Bool)

(assert (=> b!1142069 m!1053421))

(declare-fun m!1053423 () Bool)

(assert (=> b!1142069 m!1053423))

(declare-fun m!1053425 () Bool)

(assert (=> b!1142069 m!1053425))

(declare-fun m!1053427 () Bool)

(assert (=> b!1142069 m!1053427))

(assert (=> b!1142069 m!1053423))

(assert (=> b!1142069 m!1053419))

(declare-fun m!1053429 () Bool)

(assert (=> b!1142069 m!1053429))

(assert (=> b!1142069 m!1053425))

(declare-fun m!1053431 () Bool)

(assert (=> b!1142069 m!1053431))

(assert (=> b!1142069 m!1053425))

(declare-fun m!1053433 () Bool)

(assert (=> b!1142072 m!1053433))

(declare-fun m!1053435 () Bool)

(assert (=> b!1142072 m!1053435))

(declare-fun m!1053437 () Bool)

(assert (=> b!1142072 m!1053437))

(declare-fun m!1053439 () Bool)

(assert (=> b!1142072 m!1053439))

(declare-fun m!1053441 () Bool)

(assert (=> b!1142068 m!1053441))

(declare-fun m!1053443 () Bool)

(assert (=> b!1142068 m!1053443))

(declare-fun m!1053445 () Bool)

(assert (=> b!1142068 m!1053445))

(assert (=> bm!51381 m!1053417))

(declare-fun m!1053447 () Bool)

(assert (=> b!1142067 m!1053447))

(declare-fun m!1053449 () Bool)

(assert (=> b!1142075 m!1053449))

(declare-fun m!1053451 () Bool)

(assert (=> bm!51376 m!1053451))

(declare-fun m!1053453 () Bool)

(assert (=> b!1142078 m!1053453))

(declare-fun m!1053455 () Bool)

(assert (=> bm!51374 m!1053455))

(declare-fun m!1053457 () Bool)

(assert (=> b!1142059 m!1053457))

(declare-fun m!1053459 () Bool)

(assert (=> bm!51378 m!1053459))

(declare-fun m!1053461 () Bool)

(assert (=> b!1142058 m!1053461))

(declare-fun m!1053463 () Bool)

(assert (=> b!1142058 m!1053463))

(declare-fun m!1053465 () Bool)

(assert (=> b!1142076 m!1053465))

(declare-fun m!1053467 () Bool)

(assert (=> b!1142077 m!1053467))

(declare-fun m!1053469 () Bool)

(assert (=> b!1142077 m!1053469))

(declare-fun m!1053471 () Bool)

(assert (=> bm!51377 m!1053471))

(declare-fun m!1053473 () Bool)

(assert (=> mapNonEmpty!44849 m!1053473))

(declare-fun m!1053475 () Bool)

(assert (=> b!1142073 m!1053475))

(declare-fun m!1053477 () Bool)

(assert (=> b!1142079 m!1053477))

(declare-fun m!1053479 () Bool)

(assert (=> b!1142079 m!1053479))

(declare-fun m!1053481 () Bool)

(assert (=> b!1142079 m!1053481))

(declare-fun m!1053483 () Bool)

(assert (=> b!1142079 m!1053483))

(declare-fun m!1053485 () Bool)

(assert (=> b!1142081 m!1053485))

(assert (=> b!1142053 m!1053475))

(declare-fun m!1053487 () Bool)

(assert (=> b!1142070 m!1053487))

(assert (=> b!1142057 m!1053425))

(declare-fun m!1053489 () Bool)

(assert (=> b!1142057 m!1053489))

(check-sat tp_is_empty!28683 b_and!39171 (not bm!51374) (not b!1142072) (not b!1142076) (not b!1142077) (not b!1142081) (not b!1142058) (not b!1142078) (not bm!51378) (not b!1142057) (not b!1142075) (not b!1142053) (not b_next!24153) (not b!1142067) (not bm!51381) (not b!1142079) (not bm!51377) (not b_lambda!19277) (not b!1142073) (not mapNonEmpty!44849) (not bm!51376) (not b!1142059) (not b!1142068) (not start!98584) (not b!1142069))
(check-sat b_and!39171 (not b_next!24153))
