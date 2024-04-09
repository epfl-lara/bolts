; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101368 () Bool)

(assert start!101368)

(declare-fun b_free!26229 () Bool)

(declare-fun b_next!26229 () Bool)

(assert (=> start!101368 (= b_free!26229 (not b_next!26229))))

(declare-fun tp!91713 () Bool)

(declare-fun b_and!43603 () Bool)

(assert (=> start!101368 (= tp!91713 b_and!43603)))

(declare-fun b!1217502 () Bool)

(declare-fun e!691252 () Bool)

(declare-fun tp_is_empty!30933 () Bool)

(assert (=> b!1217502 (= e!691252 tp_is_empty!30933)))

(declare-fun res!808640 () Bool)

(declare-fun e!691256 () Bool)

(assert (=> start!101368 (=> (not res!808640) (not e!691256))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78614 0))(
  ( (array!78615 (arr!37937 (Array (_ BitVec 32) (_ BitVec 64))) (size!38474 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78614)

(assert (=> start!101368 (= res!808640 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38474 _keys!1208))))))

(assert (=> start!101368 e!691256))

(assert (=> start!101368 tp_is_empty!30933))

(declare-fun array_inv!28788 (array!78614) Bool)

(assert (=> start!101368 (array_inv!28788 _keys!1208)))

(assert (=> start!101368 true))

(assert (=> start!101368 tp!91713))

(declare-datatypes ((V!46371 0))(
  ( (V!46372 (val!15523 Int)) )
))
(declare-datatypes ((ValueCell!14757 0))(
  ( (ValueCellFull!14757 (v!18178 V!46371)) (EmptyCell!14757) )
))
(declare-datatypes ((array!78616 0))(
  ( (array!78617 (arr!37938 (Array (_ BitVec 32) ValueCell!14757)) (size!38475 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78616)

(declare-fun e!691255 () Bool)

(declare-fun array_inv!28789 (array!78616) Bool)

(assert (=> start!101368 (and (array_inv!28789 _values!996) e!691255)))

(declare-fun b!1217503 () Bool)

(declare-fun res!808635 () Bool)

(declare-fun e!691251 () Bool)

(assert (=> b!1217503 (=> (not res!808635) (not e!691251))))

(declare-fun lt!553367 () array!78614)

(declare-datatypes ((List!26919 0))(
  ( (Nil!26916) (Cons!26915 (h!28124 (_ BitVec 64)) (t!40135 List!26919)) )
))
(declare-fun arrayNoDuplicates!0 (array!78614 (_ BitVec 32) List!26919) Bool)

(assert (=> b!1217503 (= res!808635 (arrayNoDuplicates!0 lt!553367 #b00000000000000000000000000000000 Nil!26916))))

(declare-fun b!1217504 () Bool)

(declare-fun e!691253 () Bool)

(declare-fun e!691254 () Bool)

(assert (=> b!1217504 (= e!691253 e!691254)))

(declare-fun res!808641 () Bool)

(assert (=> b!1217504 (=> res!808641 e!691254)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1217504 (= res!808641 (not (validKeyInArray!0 (select (arr!37937 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!20098 0))(
  ( (tuple2!20099 (_1!10059 (_ BitVec 64)) (_2!10059 V!46371)) )
))
(declare-datatypes ((List!26920 0))(
  ( (Nil!26917) (Cons!26916 (h!28125 tuple2!20098) (t!40136 List!26920)) )
))
(declare-datatypes ((ListLongMap!18079 0))(
  ( (ListLongMap!18080 (toList!9055 List!26920)) )
))
(declare-fun lt!553374 () ListLongMap!18079)

(declare-fun lt!553371 () ListLongMap!18079)

(assert (=> b!1217504 (= lt!553374 lt!553371)))

(declare-fun lt!553373 () ListLongMap!18079)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1916 (ListLongMap!18079 (_ BitVec 64)) ListLongMap!18079)

(assert (=> b!1217504 (= lt!553371 (-!1916 lt!553373 k0!934))))

(declare-fun zeroValue!944 () V!46371)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46371)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!553368 () array!78616)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5459 (array!78614 array!78616 (_ BitVec 32) (_ BitVec 32) V!46371 V!46371 (_ BitVec 32) Int) ListLongMap!18079)

(assert (=> b!1217504 (= lt!553374 (getCurrentListMapNoExtraKeys!5459 lt!553367 lt!553368 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1217504 (= lt!553373 (getCurrentListMapNoExtraKeys!5459 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!40296 0))(
  ( (Unit!40297) )
))
(declare-fun lt!553372 () Unit!40296)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1118 (array!78614 array!78616 (_ BitVec 32) (_ BitVec 32) V!46371 V!46371 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40296)

(assert (=> b!1217504 (= lt!553372 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1118 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1217505 () Bool)

(declare-fun res!808632 () Bool)

(assert (=> b!1217505 (=> (not res!808632) (not e!691256))))

(assert (=> b!1217505 (= res!808632 (and (= (size!38475 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38474 _keys!1208) (size!38475 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1217506 () Bool)

(declare-fun res!808633 () Bool)

(assert (=> b!1217506 (=> (not res!808633) (not e!691256))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1217506 (= res!808633 (validMask!0 mask!1564))))

(declare-fun b!1217507 () Bool)

(declare-fun res!808631 () Bool)

(assert (=> b!1217507 (=> (not res!808631) (not e!691256))))

(assert (=> b!1217507 (= res!808631 (= (select (arr!37937 _keys!1208) i!673) k0!934))))

(declare-fun b!1217508 () Bool)

(declare-fun e!691249 () Bool)

(assert (=> b!1217508 (= e!691249 tp_is_empty!30933)))

(declare-fun b!1217509 () Bool)

(assert (=> b!1217509 (= e!691256 e!691251)))

(declare-fun res!808634 () Bool)

(assert (=> b!1217509 (=> (not res!808634) (not e!691251))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78614 (_ BitVec 32)) Bool)

(assert (=> b!1217509 (= res!808634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553367 mask!1564))))

(assert (=> b!1217509 (= lt!553367 (array!78615 (store (arr!37937 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38474 _keys!1208)))))

(declare-fun b!1217510 () Bool)

(declare-fun res!808638 () Bool)

(assert (=> b!1217510 (=> (not res!808638) (not e!691256))))

(assert (=> b!1217510 (= res!808638 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38474 _keys!1208))))))

(declare-fun b!1217511 () Bool)

(declare-fun res!808644 () Bool)

(assert (=> b!1217511 (=> (not res!808644) (not e!691256))))

(assert (=> b!1217511 (= res!808644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1217512 () Bool)

(declare-fun e!691258 () Bool)

(assert (=> b!1217512 (= e!691251 (not e!691258))))

(declare-fun res!808636 () Bool)

(assert (=> b!1217512 (=> res!808636 e!691258)))

(assert (=> b!1217512 (= res!808636 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78614 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1217512 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!553369 () Unit!40296)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78614 (_ BitVec 64) (_ BitVec 32)) Unit!40296)

(assert (=> b!1217512 (= lt!553369 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1217513 () Bool)

(declare-fun res!808642 () Bool)

(assert (=> b!1217513 (=> (not res!808642) (not e!691256))))

(assert (=> b!1217513 (= res!808642 (validKeyInArray!0 k0!934))))

(declare-fun e!691257 () Bool)

(declare-fun b!1217514 () Bool)

(assert (=> b!1217514 (= e!691257 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1217515 () Bool)

(assert (=> b!1217515 (= e!691254 e!691257)))

(declare-fun res!808637 () Bool)

(assert (=> b!1217515 (=> res!808637 e!691257)))

(assert (=> b!1217515 (= res!808637 (not (= (select (arr!37937 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!553376 () ListLongMap!18079)

(declare-fun lt!553375 () V!46371)

(declare-fun +!4038 (ListLongMap!18079 tuple2!20098) ListLongMap!18079)

(declare-fun get!19374 (ValueCell!14757 V!46371) V!46371)

(assert (=> b!1217515 (= lt!553376 (+!4038 lt!553371 (tuple2!20099 (select (arr!37937 _keys!1208) from!1455) (get!19374 (select (arr!37938 _values!996) from!1455) lt!553375))))))

(declare-fun b!1217516 () Bool)

(declare-fun mapRes!48277 () Bool)

(assert (=> b!1217516 (= e!691255 (and e!691252 mapRes!48277))))

(declare-fun condMapEmpty!48277 () Bool)

(declare-fun mapDefault!48277 () ValueCell!14757)

(assert (=> b!1217516 (= condMapEmpty!48277 (= (arr!37938 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14757)) mapDefault!48277)))))

(declare-fun b!1217517 () Bool)

(assert (=> b!1217517 (= e!691258 e!691253)))

(declare-fun res!808643 () Bool)

(assert (=> b!1217517 (=> res!808643 e!691253)))

(assert (=> b!1217517 (= res!808643 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1217517 (= lt!553376 (getCurrentListMapNoExtraKeys!5459 lt!553367 lt!553368 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1217517 (= lt!553368 (array!78617 (store (arr!37938 _values!996) i!673 (ValueCellFull!14757 lt!553375)) (size!38475 _values!996)))))

(declare-fun dynLambda!3364 (Int (_ BitVec 64)) V!46371)

(assert (=> b!1217517 (= lt!553375 (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553370 () ListLongMap!18079)

(assert (=> b!1217517 (= lt!553370 (getCurrentListMapNoExtraKeys!5459 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!48277 () Bool)

(assert (=> mapIsEmpty!48277 mapRes!48277))

(declare-fun mapNonEmpty!48277 () Bool)

(declare-fun tp!91712 () Bool)

(assert (=> mapNonEmpty!48277 (= mapRes!48277 (and tp!91712 e!691249))))

(declare-fun mapKey!48277 () (_ BitVec 32))

(declare-fun mapRest!48277 () (Array (_ BitVec 32) ValueCell!14757))

(declare-fun mapValue!48277 () ValueCell!14757)

(assert (=> mapNonEmpty!48277 (= (arr!37938 _values!996) (store mapRest!48277 mapKey!48277 mapValue!48277))))

(declare-fun b!1217518 () Bool)

(declare-fun res!808639 () Bool)

(assert (=> b!1217518 (=> (not res!808639) (not e!691256))))

(assert (=> b!1217518 (= res!808639 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26916))))

(assert (= (and start!101368 res!808640) b!1217506))

(assert (= (and b!1217506 res!808633) b!1217505))

(assert (= (and b!1217505 res!808632) b!1217511))

(assert (= (and b!1217511 res!808644) b!1217518))

(assert (= (and b!1217518 res!808639) b!1217510))

(assert (= (and b!1217510 res!808638) b!1217513))

(assert (= (and b!1217513 res!808642) b!1217507))

(assert (= (and b!1217507 res!808631) b!1217509))

(assert (= (and b!1217509 res!808634) b!1217503))

(assert (= (and b!1217503 res!808635) b!1217512))

(assert (= (and b!1217512 (not res!808636)) b!1217517))

(assert (= (and b!1217517 (not res!808643)) b!1217504))

(assert (= (and b!1217504 (not res!808641)) b!1217515))

(assert (= (and b!1217515 (not res!808637)) b!1217514))

(assert (= (and b!1217516 condMapEmpty!48277) mapIsEmpty!48277))

(assert (= (and b!1217516 (not condMapEmpty!48277)) mapNonEmpty!48277))

(get-info :version)

(assert (= (and mapNonEmpty!48277 ((_ is ValueCellFull!14757) mapValue!48277)) b!1217508))

(assert (= (and b!1217516 ((_ is ValueCellFull!14757) mapDefault!48277)) b!1217502))

(assert (= start!101368 b!1217516))

(declare-fun b_lambda!21953 () Bool)

(assert (=> (not b_lambda!21953) (not b!1217517)))

(declare-fun t!40134 () Bool)

(declare-fun tb!11037 () Bool)

(assert (=> (and start!101368 (= defaultEntry!1004 defaultEntry!1004) t!40134) tb!11037))

(declare-fun result!22665 () Bool)

(assert (=> tb!11037 (= result!22665 tp_is_empty!30933)))

(assert (=> b!1217517 t!40134))

(declare-fun b_and!43605 () Bool)

(assert (= b_and!43603 (and (=> t!40134 result!22665) b_and!43605)))

(declare-fun m!1122279 () Bool)

(assert (=> b!1217515 m!1122279))

(declare-fun m!1122281 () Bool)

(assert (=> b!1217515 m!1122281))

(assert (=> b!1217515 m!1122281))

(declare-fun m!1122283 () Bool)

(assert (=> b!1217515 m!1122283))

(declare-fun m!1122285 () Bool)

(assert (=> b!1217515 m!1122285))

(declare-fun m!1122287 () Bool)

(assert (=> b!1217506 m!1122287))

(declare-fun m!1122289 () Bool)

(assert (=> b!1217517 m!1122289))

(declare-fun m!1122291 () Bool)

(assert (=> b!1217517 m!1122291))

(declare-fun m!1122293 () Bool)

(assert (=> b!1217517 m!1122293))

(declare-fun m!1122295 () Bool)

(assert (=> b!1217517 m!1122295))

(declare-fun m!1122297 () Bool)

(assert (=> b!1217509 m!1122297))

(declare-fun m!1122299 () Bool)

(assert (=> b!1217509 m!1122299))

(declare-fun m!1122301 () Bool)

(assert (=> b!1217504 m!1122301))

(declare-fun m!1122303 () Bool)

(assert (=> b!1217504 m!1122303))

(declare-fun m!1122305 () Bool)

(assert (=> b!1217504 m!1122305))

(assert (=> b!1217504 m!1122279))

(declare-fun m!1122307 () Bool)

(assert (=> b!1217504 m!1122307))

(declare-fun m!1122309 () Bool)

(assert (=> b!1217504 m!1122309))

(assert (=> b!1217504 m!1122279))

(declare-fun m!1122311 () Bool)

(assert (=> b!1217518 m!1122311))

(declare-fun m!1122313 () Bool)

(assert (=> b!1217512 m!1122313))

(declare-fun m!1122315 () Bool)

(assert (=> b!1217512 m!1122315))

(declare-fun m!1122317 () Bool)

(assert (=> b!1217514 m!1122317))

(declare-fun m!1122319 () Bool)

(assert (=> b!1217513 m!1122319))

(declare-fun m!1122321 () Bool)

(assert (=> mapNonEmpty!48277 m!1122321))

(declare-fun m!1122323 () Bool)

(assert (=> b!1217511 m!1122323))

(declare-fun m!1122325 () Bool)

(assert (=> start!101368 m!1122325))

(declare-fun m!1122327 () Bool)

(assert (=> start!101368 m!1122327))

(declare-fun m!1122329 () Bool)

(assert (=> b!1217507 m!1122329))

(declare-fun m!1122331 () Bool)

(assert (=> b!1217503 m!1122331))

(check-sat (not b!1217515) (not b!1217509) (not b!1217514) (not b!1217504) (not b!1217506) (not b!1217517) b_and!43605 (not b!1217512) (not b!1217511) (not b!1217513) tp_is_empty!30933 (not b!1217518) (not b_lambda!21953) (not start!101368) (not mapNonEmpty!48277) (not b!1217503) (not b_next!26229))
(check-sat b_and!43605 (not b_next!26229))
(get-model)

(declare-fun b_lambda!21957 () Bool)

(assert (= b_lambda!21953 (or (and start!101368 b_free!26229) b_lambda!21957)))

(check-sat (not b!1217515) (not b!1217509) (not b!1217514) (not b!1217504) (not b!1217506) (not b!1217517) b_and!43605 (not b!1217512) (not b!1217511) (not b!1217513) tp_is_empty!30933 (not b!1217518) (not start!101368) (not mapNonEmpty!48277) (not b_lambda!21957) (not b!1217503) (not b_next!26229))
(check-sat b_and!43605 (not b_next!26229))
(get-model)

(declare-fun b!1217584 () Bool)

(declare-fun e!691300 () Bool)

(declare-fun e!691298 () Bool)

(assert (=> b!1217584 (= e!691300 e!691298)))

(declare-fun res!808694 () Bool)

(assert (=> b!1217584 (=> (not res!808694) (not e!691298))))

(declare-fun e!691299 () Bool)

(assert (=> b!1217584 (= res!808694 (not e!691299))))

(declare-fun res!808693 () Bool)

(assert (=> b!1217584 (=> (not res!808693) (not e!691299))))

(assert (=> b!1217584 (= res!808693 (validKeyInArray!0 (select (arr!37937 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!60624 () Bool)

(declare-fun call!60627 () Bool)

(declare-fun c!120033 () Bool)

(assert (=> bm!60624 (= call!60627 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120033 (Cons!26915 (select (arr!37937 _keys!1208) #b00000000000000000000000000000000) Nil!26916) Nil!26916)))))

(declare-fun b!1217585 () Bool)

(declare-fun e!691297 () Bool)

(assert (=> b!1217585 (= e!691297 call!60627)))

(declare-fun b!1217586 () Bool)

(assert (=> b!1217586 (= e!691297 call!60627)))

(declare-fun b!1217587 () Bool)

(declare-fun contains!7026 (List!26919 (_ BitVec 64)) Bool)

(assert (=> b!1217587 (= e!691299 (contains!7026 Nil!26916 (select (arr!37937 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1217588 () Bool)

(assert (=> b!1217588 (= e!691298 e!691297)))

(assert (=> b!1217588 (= c!120033 (validKeyInArray!0 (select (arr!37937 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!133519 () Bool)

(declare-fun res!808695 () Bool)

(assert (=> d!133519 (=> res!808695 e!691300)))

(assert (=> d!133519 (= res!808695 (bvsge #b00000000000000000000000000000000 (size!38474 _keys!1208)))))

(assert (=> d!133519 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26916) e!691300)))

(assert (= (and d!133519 (not res!808695)) b!1217584))

(assert (= (and b!1217584 res!808693) b!1217587))

(assert (= (and b!1217584 res!808694) b!1217588))

(assert (= (and b!1217588 c!120033) b!1217585))

(assert (= (and b!1217588 (not c!120033)) b!1217586))

(assert (= (or b!1217585 b!1217586) bm!60624))

(declare-fun m!1122387 () Bool)

(assert (=> b!1217584 m!1122387))

(assert (=> b!1217584 m!1122387))

(declare-fun m!1122389 () Bool)

(assert (=> b!1217584 m!1122389))

(assert (=> bm!60624 m!1122387))

(declare-fun m!1122391 () Bool)

(assert (=> bm!60624 m!1122391))

(assert (=> b!1217587 m!1122387))

(assert (=> b!1217587 m!1122387))

(declare-fun m!1122393 () Bool)

(assert (=> b!1217587 m!1122393))

(assert (=> b!1217588 m!1122387))

(assert (=> b!1217588 m!1122387))

(assert (=> b!1217588 m!1122389))

(assert (=> b!1217518 d!133519))

(declare-fun bm!60627 () Bool)

(declare-fun call!60630 () Bool)

(assert (=> bm!60627 (= call!60630 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!553367 mask!1564))))

(declare-fun b!1217598 () Bool)

(declare-fun e!691308 () Bool)

(declare-fun e!691309 () Bool)

(assert (=> b!1217598 (= e!691308 e!691309)))

(declare-fun lt!553413 () (_ BitVec 64))

(assert (=> b!1217598 (= lt!553413 (select (arr!37937 lt!553367) #b00000000000000000000000000000000))))

(declare-fun lt!553414 () Unit!40296)

(assert (=> b!1217598 (= lt!553414 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!553367 lt!553413 #b00000000000000000000000000000000))))

(assert (=> b!1217598 (arrayContainsKey!0 lt!553367 lt!553413 #b00000000000000000000000000000000)))

(declare-fun lt!553415 () Unit!40296)

(assert (=> b!1217598 (= lt!553415 lt!553414)))

(declare-fun res!808700 () Bool)

(declare-datatypes ((SeekEntryResult!9941 0))(
  ( (MissingZero!9941 (index!42134 (_ BitVec 32))) (Found!9941 (index!42135 (_ BitVec 32))) (Intermediate!9941 (undefined!10753 Bool) (index!42136 (_ BitVec 32)) (x!107264 (_ BitVec 32))) (Undefined!9941) (MissingVacant!9941 (index!42137 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78614 (_ BitVec 32)) SeekEntryResult!9941)

(assert (=> b!1217598 (= res!808700 (= (seekEntryOrOpen!0 (select (arr!37937 lt!553367) #b00000000000000000000000000000000) lt!553367 mask!1564) (Found!9941 #b00000000000000000000000000000000)))))

(assert (=> b!1217598 (=> (not res!808700) (not e!691309))))

(declare-fun b!1217599 () Bool)

(declare-fun e!691307 () Bool)

(assert (=> b!1217599 (= e!691307 e!691308)))

(declare-fun c!120036 () Bool)

(assert (=> b!1217599 (= c!120036 (validKeyInArray!0 (select (arr!37937 lt!553367) #b00000000000000000000000000000000)))))

(declare-fun b!1217600 () Bool)

(assert (=> b!1217600 (= e!691309 call!60630)))

(declare-fun b!1217597 () Bool)

(assert (=> b!1217597 (= e!691308 call!60630)))

(declare-fun d!133521 () Bool)

(declare-fun res!808701 () Bool)

(assert (=> d!133521 (=> res!808701 e!691307)))

(assert (=> d!133521 (= res!808701 (bvsge #b00000000000000000000000000000000 (size!38474 lt!553367)))))

(assert (=> d!133521 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553367 mask!1564) e!691307)))

(assert (= (and d!133521 (not res!808701)) b!1217599))

(assert (= (and b!1217599 c!120036) b!1217598))

(assert (= (and b!1217599 (not c!120036)) b!1217597))

(assert (= (and b!1217598 res!808700) b!1217600))

(assert (= (or b!1217600 b!1217597) bm!60627))

(declare-fun m!1122395 () Bool)

(assert (=> bm!60627 m!1122395))

(declare-fun m!1122397 () Bool)

(assert (=> b!1217598 m!1122397))

(declare-fun m!1122399 () Bool)

(assert (=> b!1217598 m!1122399))

(declare-fun m!1122401 () Bool)

(assert (=> b!1217598 m!1122401))

(assert (=> b!1217598 m!1122397))

(declare-fun m!1122403 () Bool)

(assert (=> b!1217598 m!1122403))

(assert (=> b!1217599 m!1122397))

(assert (=> b!1217599 m!1122397))

(declare-fun m!1122405 () Bool)

(assert (=> b!1217599 m!1122405))

(assert (=> b!1217509 d!133521))

(declare-fun d!133523 () Bool)

(declare-fun res!808706 () Bool)

(declare-fun e!691314 () Bool)

(assert (=> d!133523 (=> res!808706 e!691314)))

(assert (=> d!133523 (= res!808706 (= (select (arr!37937 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!133523 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!691314)))

(declare-fun b!1217605 () Bool)

(declare-fun e!691315 () Bool)

(assert (=> b!1217605 (= e!691314 e!691315)))

(declare-fun res!808707 () Bool)

(assert (=> b!1217605 (=> (not res!808707) (not e!691315))))

(assert (=> b!1217605 (= res!808707 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38474 _keys!1208)))))

(declare-fun b!1217606 () Bool)

(assert (=> b!1217606 (= e!691315 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133523 (not res!808706)) b!1217605))

(assert (= (and b!1217605 res!808707) b!1217606))

(assert (=> d!133523 m!1122387))

(declare-fun m!1122407 () Bool)

(assert (=> b!1217606 m!1122407))

(assert (=> b!1217512 d!133523))

(declare-fun d!133525 () Bool)

(assert (=> d!133525 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!553418 () Unit!40296)

(declare-fun choose!13 (array!78614 (_ BitVec 64) (_ BitVec 32)) Unit!40296)

(assert (=> d!133525 (= lt!553418 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!133525 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133525 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!553418)))

(declare-fun bs!34308 () Bool)

(assert (= bs!34308 d!133525))

(assert (=> bs!34308 m!1122313))

(declare-fun m!1122409 () Bool)

(assert (=> bs!34308 m!1122409))

(assert (=> b!1217512 d!133525))

(declare-fun d!133527 () Bool)

(assert (=> d!133527 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1217513 d!133527))

(declare-fun bm!60628 () Bool)

(declare-fun call!60631 () Bool)

(assert (=> bm!60628 (= call!60631 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1217608 () Bool)

(declare-fun e!691317 () Bool)

(declare-fun e!691318 () Bool)

(assert (=> b!1217608 (= e!691317 e!691318)))

(declare-fun lt!553419 () (_ BitVec 64))

(assert (=> b!1217608 (= lt!553419 (select (arr!37937 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!553420 () Unit!40296)

(assert (=> b!1217608 (= lt!553420 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!553419 #b00000000000000000000000000000000))))

(assert (=> b!1217608 (arrayContainsKey!0 _keys!1208 lt!553419 #b00000000000000000000000000000000)))

(declare-fun lt!553421 () Unit!40296)

(assert (=> b!1217608 (= lt!553421 lt!553420)))

(declare-fun res!808708 () Bool)

(assert (=> b!1217608 (= res!808708 (= (seekEntryOrOpen!0 (select (arr!37937 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9941 #b00000000000000000000000000000000)))))

(assert (=> b!1217608 (=> (not res!808708) (not e!691318))))

(declare-fun b!1217609 () Bool)

(declare-fun e!691316 () Bool)

(assert (=> b!1217609 (= e!691316 e!691317)))

(declare-fun c!120037 () Bool)

(assert (=> b!1217609 (= c!120037 (validKeyInArray!0 (select (arr!37937 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1217610 () Bool)

(assert (=> b!1217610 (= e!691318 call!60631)))

(declare-fun b!1217607 () Bool)

(assert (=> b!1217607 (= e!691317 call!60631)))

(declare-fun d!133529 () Bool)

(declare-fun res!808709 () Bool)

(assert (=> d!133529 (=> res!808709 e!691316)))

(assert (=> d!133529 (= res!808709 (bvsge #b00000000000000000000000000000000 (size!38474 _keys!1208)))))

(assert (=> d!133529 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!691316)))

(assert (= (and d!133529 (not res!808709)) b!1217609))

(assert (= (and b!1217609 c!120037) b!1217608))

(assert (= (and b!1217609 (not c!120037)) b!1217607))

(assert (= (and b!1217608 res!808708) b!1217610))

(assert (= (or b!1217610 b!1217607) bm!60628))

(declare-fun m!1122411 () Bool)

(assert (=> bm!60628 m!1122411))

(assert (=> b!1217608 m!1122387))

(declare-fun m!1122413 () Bool)

(assert (=> b!1217608 m!1122413))

(declare-fun m!1122415 () Bool)

(assert (=> b!1217608 m!1122415))

(assert (=> b!1217608 m!1122387))

(declare-fun m!1122417 () Bool)

(assert (=> b!1217608 m!1122417))

(assert (=> b!1217609 m!1122387))

(assert (=> b!1217609 m!1122387))

(assert (=> b!1217609 m!1122389))

(assert (=> b!1217511 d!133529))

(declare-fun d!133531 () Bool)

(assert (=> d!133531 (= (validKeyInArray!0 (select (arr!37937 _keys!1208) from!1455)) (and (not (= (select (arr!37937 _keys!1208) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37937 _keys!1208) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1217504 d!133531))

(declare-fun b!1217635 () Bool)

(declare-fun e!691333 () Bool)

(declare-fun lt!553440 () ListLongMap!18079)

(declare-fun isEmpty!998 (ListLongMap!18079) Bool)

(assert (=> b!1217635 (= e!691333 (isEmpty!998 lt!553440))))

(declare-fun d!133533 () Bool)

(declare-fun e!691334 () Bool)

(assert (=> d!133533 e!691334))

(declare-fun res!808718 () Bool)

(assert (=> d!133533 (=> (not res!808718) (not e!691334))))

(declare-fun contains!7027 (ListLongMap!18079 (_ BitVec 64)) Bool)

(assert (=> d!133533 (= res!808718 (not (contains!7027 lt!553440 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!691339 () ListLongMap!18079)

(assert (=> d!133533 (= lt!553440 e!691339)))

(declare-fun c!120046 () Bool)

(assert (=> d!133533 (= c!120046 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38474 lt!553367)))))

(assert (=> d!133533 (validMask!0 mask!1564)))

(assert (=> d!133533 (= (getCurrentListMapNoExtraKeys!5459 lt!553367 lt!553368 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!553440)))

(declare-fun b!1217636 () Bool)

(declare-fun e!691335 () Bool)

(assert (=> b!1217636 (= e!691335 e!691333)))

(declare-fun c!120048 () Bool)

(assert (=> b!1217636 (= c!120048 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38474 lt!553367)))))

(declare-fun b!1217637 () Bool)

(declare-fun res!808719 () Bool)

(assert (=> b!1217637 (=> (not res!808719) (not e!691334))))

(assert (=> b!1217637 (= res!808719 (not (contains!7027 lt!553440 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1217638 () Bool)

(assert (=> b!1217638 (= e!691334 e!691335)))

(declare-fun c!120047 () Bool)

(declare-fun e!691338 () Bool)

(assert (=> b!1217638 (= c!120047 e!691338)))

(declare-fun res!808721 () Bool)

(assert (=> b!1217638 (=> (not res!808721) (not e!691338))))

(assert (=> b!1217638 (= res!808721 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38474 lt!553367)))))

(declare-fun b!1217639 () Bool)

(assert (=> b!1217639 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38474 lt!553367)))))

(assert (=> b!1217639 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38475 lt!553368)))))

(declare-fun e!691337 () Bool)

(declare-fun apply!1006 (ListLongMap!18079 (_ BitVec 64)) V!46371)

(assert (=> b!1217639 (= e!691337 (= (apply!1006 lt!553440 (select (arr!37937 lt!553367) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19374 (select (arr!37938 lt!553368) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1217640 () Bool)

(assert (=> b!1217640 (= e!691338 (validKeyInArray!0 (select (arr!37937 lt!553367) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1217640 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1217641 () Bool)

(declare-fun lt!553438 () Unit!40296)

(declare-fun lt!553436 () Unit!40296)

(assert (=> b!1217641 (= lt!553438 lt!553436)))

(declare-fun lt!553442 () (_ BitVec 64))

(declare-fun lt!553437 () ListLongMap!18079)

(declare-fun lt!553439 () (_ BitVec 64))

(declare-fun lt!553441 () V!46371)

(assert (=> b!1217641 (not (contains!7027 (+!4038 lt!553437 (tuple2!20099 lt!553442 lt!553441)) lt!553439))))

(declare-fun addStillNotContains!301 (ListLongMap!18079 (_ BitVec 64) V!46371 (_ BitVec 64)) Unit!40296)

(assert (=> b!1217641 (= lt!553436 (addStillNotContains!301 lt!553437 lt!553442 lt!553441 lt!553439))))

(assert (=> b!1217641 (= lt!553439 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1217641 (= lt!553441 (get!19374 (select (arr!37938 lt!553368) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1217641 (= lt!553442 (select (arr!37937 lt!553367) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!60634 () ListLongMap!18079)

(assert (=> b!1217641 (= lt!553437 call!60634)))

(declare-fun e!691336 () ListLongMap!18079)

(assert (=> b!1217641 (= e!691336 (+!4038 call!60634 (tuple2!20099 (select (arr!37937 lt!553367) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19374 (select (arr!37938 lt!553368) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1217642 () Bool)

(assert (=> b!1217642 (= e!691339 e!691336)))

(declare-fun c!120049 () Bool)

(assert (=> b!1217642 (= c!120049 (validKeyInArray!0 (select (arr!37937 lt!553367) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1217643 () Bool)

(assert (=> b!1217643 (= e!691339 (ListLongMap!18080 Nil!26917))))

(declare-fun b!1217644 () Bool)

(assert (=> b!1217644 (= e!691335 e!691337)))

(assert (=> b!1217644 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38474 lt!553367)))))

(declare-fun res!808720 () Bool)

(assert (=> b!1217644 (= res!808720 (contains!7027 lt!553440 (select (arr!37937 lt!553367) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1217644 (=> (not res!808720) (not e!691337))))

(declare-fun b!1217645 () Bool)

(assert (=> b!1217645 (= e!691336 call!60634)))

(declare-fun bm!60631 () Bool)

(assert (=> bm!60631 (= call!60634 (getCurrentListMapNoExtraKeys!5459 lt!553367 lt!553368 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1217646 () Bool)

(assert (=> b!1217646 (= e!691333 (= lt!553440 (getCurrentListMapNoExtraKeys!5459 lt!553367 lt!553368 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(assert (= (and d!133533 c!120046) b!1217643))

(assert (= (and d!133533 (not c!120046)) b!1217642))

(assert (= (and b!1217642 c!120049) b!1217641))

(assert (= (and b!1217642 (not c!120049)) b!1217645))

(assert (= (or b!1217641 b!1217645) bm!60631))

(assert (= (and d!133533 res!808718) b!1217637))

(assert (= (and b!1217637 res!808719) b!1217638))

(assert (= (and b!1217638 res!808721) b!1217640))

(assert (= (and b!1217638 c!120047) b!1217644))

(assert (= (and b!1217638 (not c!120047)) b!1217636))

(assert (= (and b!1217644 res!808720) b!1217639))

(assert (= (and b!1217636 c!120048) b!1217646))

(assert (= (and b!1217636 (not c!120048)) b!1217635))

(declare-fun b_lambda!21959 () Bool)

(assert (=> (not b_lambda!21959) (not b!1217639)))

(assert (=> b!1217639 t!40134))

(declare-fun b_and!43611 () Bool)

(assert (= b_and!43605 (and (=> t!40134 result!22665) b_and!43611)))

(declare-fun b_lambda!21961 () Bool)

(assert (=> (not b_lambda!21961) (not b!1217641)))

(assert (=> b!1217641 t!40134))

(declare-fun b_and!43613 () Bool)

(assert (= b_and!43611 (and (=> t!40134 result!22665) b_and!43613)))

(declare-fun m!1122419 () Bool)

(assert (=> b!1217637 m!1122419))

(declare-fun m!1122421 () Bool)

(assert (=> bm!60631 m!1122421))

(declare-fun m!1122423 () Bool)

(assert (=> b!1217642 m!1122423))

(assert (=> b!1217642 m!1122423))

(declare-fun m!1122425 () Bool)

(assert (=> b!1217642 m!1122425))

(assert (=> b!1217639 m!1122423))

(declare-fun m!1122427 () Bool)

(assert (=> b!1217639 m!1122427))

(assert (=> b!1217639 m!1122293))

(assert (=> b!1217639 m!1122427))

(assert (=> b!1217639 m!1122293))

(declare-fun m!1122429 () Bool)

(assert (=> b!1217639 m!1122429))

(assert (=> b!1217639 m!1122423))

(declare-fun m!1122431 () Bool)

(assert (=> b!1217639 m!1122431))

(assert (=> b!1217644 m!1122423))

(assert (=> b!1217644 m!1122423))

(declare-fun m!1122433 () Bool)

(assert (=> b!1217644 m!1122433))

(assert (=> b!1217646 m!1122421))

(declare-fun m!1122435 () Bool)

(assert (=> d!133533 m!1122435))

(assert (=> d!133533 m!1122287))

(declare-fun m!1122437 () Bool)

(assert (=> b!1217635 m!1122437))

(assert (=> b!1217640 m!1122423))

(assert (=> b!1217640 m!1122423))

(assert (=> b!1217640 m!1122425))

(assert (=> b!1217641 m!1122423))

(assert (=> b!1217641 m!1122427))

(declare-fun m!1122439 () Bool)

(assert (=> b!1217641 m!1122439))

(declare-fun m!1122441 () Bool)

(assert (=> b!1217641 m!1122441))

(assert (=> b!1217641 m!1122293))

(assert (=> b!1217641 m!1122427))

(assert (=> b!1217641 m!1122293))

(assert (=> b!1217641 m!1122429))

(declare-fun m!1122443 () Bool)

(assert (=> b!1217641 m!1122443))

(assert (=> b!1217641 m!1122439))

(declare-fun m!1122445 () Bool)

(assert (=> b!1217641 m!1122445))

(assert (=> b!1217504 d!133533))

(declare-fun b!1217647 () Bool)

(declare-fun e!691340 () Bool)

(declare-fun lt!553447 () ListLongMap!18079)

(assert (=> b!1217647 (= e!691340 (isEmpty!998 lt!553447))))

(declare-fun d!133535 () Bool)

(declare-fun e!691341 () Bool)

(assert (=> d!133535 e!691341))

(declare-fun res!808722 () Bool)

(assert (=> d!133535 (=> (not res!808722) (not e!691341))))

(assert (=> d!133535 (= res!808722 (not (contains!7027 lt!553447 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!691346 () ListLongMap!18079)

(assert (=> d!133535 (= lt!553447 e!691346)))

(declare-fun c!120050 () Bool)

(assert (=> d!133535 (= c!120050 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38474 _keys!1208)))))

(assert (=> d!133535 (validMask!0 mask!1564)))

(assert (=> d!133535 (= (getCurrentListMapNoExtraKeys!5459 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!553447)))

(declare-fun b!1217648 () Bool)

(declare-fun e!691342 () Bool)

(assert (=> b!1217648 (= e!691342 e!691340)))

(declare-fun c!120052 () Bool)

(assert (=> b!1217648 (= c!120052 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38474 _keys!1208)))))

(declare-fun b!1217649 () Bool)

(declare-fun res!808723 () Bool)

(assert (=> b!1217649 (=> (not res!808723) (not e!691341))))

(assert (=> b!1217649 (= res!808723 (not (contains!7027 lt!553447 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1217650 () Bool)

(assert (=> b!1217650 (= e!691341 e!691342)))

(declare-fun c!120051 () Bool)

(declare-fun e!691345 () Bool)

(assert (=> b!1217650 (= c!120051 e!691345)))

(declare-fun res!808725 () Bool)

(assert (=> b!1217650 (=> (not res!808725) (not e!691345))))

(assert (=> b!1217650 (= res!808725 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38474 _keys!1208)))))

(declare-fun b!1217651 () Bool)

(assert (=> b!1217651 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38474 _keys!1208)))))

(assert (=> b!1217651 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38475 _values!996)))))

(declare-fun e!691344 () Bool)

(assert (=> b!1217651 (= e!691344 (= (apply!1006 lt!553447 (select (arr!37937 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19374 (select (arr!37938 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1217652 () Bool)

(assert (=> b!1217652 (= e!691345 (validKeyInArray!0 (select (arr!37937 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1217652 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1217653 () Bool)

(declare-fun lt!553445 () Unit!40296)

(declare-fun lt!553443 () Unit!40296)

(assert (=> b!1217653 (= lt!553445 lt!553443)))

(declare-fun lt!553444 () ListLongMap!18079)

(declare-fun lt!553449 () (_ BitVec 64))

(declare-fun lt!553446 () (_ BitVec 64))

(declare-fun lt!553448 () V!46371)

(assert (=> b!1217653 (not (contains!7027 (+!4038 lt!553444 (tuple2!20099 lt!553449 lt!553448)) lt!553446))))

(assert (=> b!1217653 (= lt!553443 (addStillNotContains!301 lt!553444 lt!553449 lt!553448 lt!553446))))

(assert (=> b!1217653 (= lt!553446 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1217653 (= lt!553448 (get!19374 (select (arr!37938 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1217653 (= lt!553449 (select (arr!37937 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!60635 () ListLongMap!18079)

(assert (=> b!1217653 (= lt!553444 call!60635)))

(declare-fun e!691343 () ListLongMap!18079)

(assert (=> b!1217653 (= e!691343 (+!4038 call!60635 (tuple2!20099 (select (arr!37937 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19374 (select (arr!37938 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1217654 () Bool)

(assert (=> b!1217654 (= e!691346 e!691343)))

(declare-fun c!120053 () Bool)

(assert (=> b!1217654 (= c!120053 (validKeyInArray!0 (select (arr!37937 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1217655 () Bool)

(assert (=> b!1217655 (= e!691346 (ListLongMap!18080 Nil!26917))))

(declare-fun b!1217656 () Bool)

(assert (=> b!1217656 (= e!691342 e!691344)))

(assert (=> b!1217656 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38474 _keys!1208)))))

(declare-fun res!808724 () Bool)

(assert (=> b!1217656 (= res!808724 (contains!7027 lt!553447 (select (arr!37937 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1217656 (=> (not res!808724) (not e!691344))))

(declare-fun b!1217657 () Bool)

(assert (=> b!1217657 (= e!691343 call!60635)))

(declare-fun bm!60632 () Bool)

(assert (=> bm!60632 (= call!60635 (getCurrentListMapNoExtraKeys!5459 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1217658 () Bool)

(assert (=> b!1217658 (= e!691340 (= lt!553447 (getCurrentListMapNoExtraKeys!5459 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(assert (= (and d!133535 c!120050) b!1217655))

(assert (= (and d!133535 (not c!120050)) b!1217654))

(assert (= (and b!1217654 c!120053) b!1217653))

(assert (= (and b!1217654 (not c!120053)) b!1217657))

(assert (= (or b!1217653 b!1217657) bm!60632))

(assert (= (and d!133535 res!808722) b!1217649))

(assert (= (and b!1217649 res!808723) b!1217650))

(assert (= (and b!1217650 res!808725) b!1217652))

(assert (= (and b!1217650 c!120051) b!1217656))

(assert (= (and b!1217650 (not c!120051)) b!1217648))

(assert (= (and b!1217656 res!808724) b!1217651))

(assert (= (and b!1217648 c!120052) b!1217658))

(assert (= (and b!1217648 (not c!120052)) b!1217647))

(declare-fun b_lambda!21963 () Bool)

(assert (=> (not b_lambda!21963) (not b!1217651)))

(assert (=> b!1217651 t!40134))

(declare-fun b_and!43615 () Bool)

(assert (= b_and!43613 (and (=> t!40134 result!22665) b_and!43615)))

(declare-fun b_lambda!21965 () Bool)

(assert (=> (not b_lambda!21965) (not b!1217653)))

(assert (=> b!1217653 t!40134))

(declare-fun b_and!43617 () Bool)

(assert (= b_and!43615 (and (=> t!40134 result!22665) b_and!43617)))

(declare-fun m!1122447 () Bool)

(assert (=> b!1217649 m!1122447))

(declare-fun m!1122449 () Bool)

(assert (=> bm!60632 m!1122449))

(declare-fun m!1122451 () Bool)

(assert (=> b!1217654 m!1122451))

(assert (=> b!1217654 m!1122451))

(declare-fun m!1122453 () Bool)

(assert (=> b!1217654 m!1122453))

(assert (=> b!1217651 m!1122451))

(declare-fun m!1122455 () Bool)

(assert (=> b!1217651 m!1122455))

(assert (=> b!1217651 m!1122293))

(assert (=> b!1217651 m!1122455))

(assert (=> b!1217651 m!1122293))

(declare-fun m!1122457 () Bool)

(assert (=> b!1217651 m!1122457))

(assert (=> b!1217651 m!1122451))

(declare-fun m!1122459 () Bool)

(assert (=> b!1217651 m!1122459))

(assert (=> b!1217656 m!1122451))

(assert (=> b!1217656 m!1122451))

(declare-fun m!1122461 () Bool)

(assert (=> b!1217656 m!1122461))

(assert (=> b!1217658 m!1122449))

(declare-fun m!1122463 () Bool)

(assert (=> d!133535 m!1122463))

(assert (=> d!133535 m!1122287))

(declare-fun m!1122465 () Bool)

(assert (=> b!1217647 m!1122465))

(assert (=> b!1217652 m!1122451))

(assert (=> b!1217652 m!1122451))

(assert (=> b!1217652 m!1122453))

(assert (=> b!1217653 m!1122451))

(assert (=> b!1217653 m!1122455))

(declare-fun m!1122467 () Bool)

(assert (=> b!1217653 m!1122467))

(declare-fun m!1122469 () Bool)

(assert (=> b!1217653 m!1122469))

(assert (=> b!1217653 m!1122293))

(assert (=> b!1217653 m!1122455))

(assert (=> b!1217653 m!1122293))

(assert (=> b!1217653 m!1122457))

(declare-fun m!1122471 () Bool)

(assert (=> b!1217653 m!1122471))

(assert (=> b!1217653 m!1122467))

(declare-fun m!1122473 () Bool)

(assert (=> b!1217653 m!1122473))

(assert (=> b!1217504 d!133535))

(declare-fun d!133537 () Bool)

(declare-fun lt!553452 () ListLongMap!18079)

(assert (=> d!133537 (not (contains!7027 lt!553452 k0!934))))

(declare-fun removeStrictlySorted!105 (List!26920 (_ BitVec 64)) List!26920)

(assert (=> d!133537 (= lt!553452 (ListLongMap!18080 (removeStrictlySorted!105 (toList!9055 lt!553373) k0!934)))))

(assert (=> d!133537 (= (-!1916 lt!553373 k0!934) lt!553452)))

(declare-fun bs!34309 () Bool)

(assert (= bs!34309 d!133537))

(declare-fun m!1122475 () Bool)

(assert (=> bs!34309 m!1122475))

(declare-fun m!1122477 () Bool)

(assert (=> bs!34309 m!1122477))

(assert (=> b!1217504 d!133537))

(declare-fun e!691351 () Bool)

(declare-fun b!1217665 () Bool)

(declare-fun call!60640 () ListLongMap!18079)

(declare-fun call!60641 () ListLongMap!18079)

(assert (=> b!1217665 (= e!691351 (= call!60640 (-!1916 call!60641 k0!934)))))

(assert (=> b!1217665 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38475 _values!996)))))

(declare-fun d!133539 () Bool)

(declare-fun e!691352 () Bool)

(assert (=> d!133539 e!691352))

(declare-fun res!808728 () Bool)

(assert (=> d!133539 (=> (not res!808728) (not e!691352))))

(assert (=> d!133539 (= res!808728 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38474 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38474 _keys!1208))))))))

(declare-fun lt!553455 () Unit!40296)

(declare-fun choose!1829 (array!78614 array!78616 (_ BitVec 32) (_ BitVec 32) V!46371 V!46371 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40296)

(assert (=> d!133539 (= lt!553455 (choose!1829 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133539 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38474 _keys!1208)))))

(assert (=> d!133539 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1118 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!553455)))

(declare-fun bm!60637 () Bool)

(assert (=> bm!60637 (= call!60641 (getCurrentListMapNoExtraKeys!5459 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1217666 () Bool)

(assert (=> b!1217666 (= e!691351 (= call!60640 call!60641))))

(assert (=> b!1217666 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38475 _values!996)))))

(declare-fun b!1217667 () Bool)

(assert (=> b!1217667 (= e!691352 e!691351)))

(declare-fun c!120056 () Bool)

(assert (=> b!1217667 (= c!120056 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun bm!60638 () Bool)

(assert (=> bm!60638 (= call!60640 (getCurrentListMapNoExtraKeys!5459 (array!78615 (store (arr!37937 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38474 _keys!1208)) (array!78617 (store (arr!37938 _values!996) i!673 (ValueCellFull!14757 (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38475 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and d!133539 res!808728) b!1217667))

(assert (= (and b!1217667 c!120056) b!1217665))

(assert (= (and b!1217667 (not c!120056)) b!1217666))

(assert (= (or b!1217665 b!1217666) bm!60637))

(assert (= (or b!1217665 b!1217666) bm!60638))

(declare-fun b_lambda!21967 () Bool)

(assert (=> (not b_lambda!21967) (not bm!60638)))

(assert (=> bm!60638 t!40134))

(declare-fun b_and!43619 () Bool)

(assert (= b_and!43617 (and (=> t!40134 result!22665) b_and!43619)))

(declare-fun m!1122479 () Bool)

(assert (=> b!1217665 m!1122479))

(declare-fun m!1122481 () Bool)

(assert (=> d!133539 m!1122481))

(assert (=> bm!60637 m!1122301))

(assert (=> bm!60638 m!1122299))

(assert (=> bm!60638 m!1122293))

(declare-fun m!1122483 () Bool)

(assert (=> bm!60638 m!1122483))

(declare-fun m!1122485 () Bool)

(assert (=> bm!60638 m!1122485))

(assert (=> b!1217504 d!133539))

(declare-fun d!133541 () Bool)

(declare-fun e!691355 () Bool)

(assert (=> d!133541 e!691355))

(declare-fun res!808734 () Bool)

(assert (=> d!133541 (=> (not res!808734) (not e!691355))))

(declare-fun lt!553467 () ListLongMap!18079)

(assert (=> d!133541 (= res!808734 (contains!7027 lt!553467 (_1!10059 (tuple2!20099 (select (arr!37937 _keys!1208) from!1455) (get!19374 (select (arr!37938 _values!996) from!1455) lt!553375)))))))

(declare-fun lt!553465 () List!26920)

(assert (=> d!133541 (= lt!553467 (ListLongMap!18080 lt!553465))))

(declare-fun lt!553464 () Unit!40296)

(declare-fun lt!553466 () Unit!40296)

(assert (=> d!133541 (= lt!553464 lt!553466)))

(declare-datatypes ((Option!696 0))(
  ( (Some!695 (v!18180 V!46371)) (None!694) )
))
(declare-fun getValueByKey!645 (List!26920 (_ BitVec 64)) Option!696)

(assert (=> d!133541 (= (getValueByKey!645 lt!553465 (_1!10059 (tuple2!20099 (select (arr!37937 _keys!1208) from!1455) (get!19374 (select (arr!37938 _values!996) from!1455) lt!553375)))) (Some!695 (_2!10059 (tuple2!20099 (select (arr!37937 _keys!1208) from!1455) (get!19374 (select (arr!37938 _values!996) from!1455) lt!553375)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!320 (List!26920 (_ BitVec 64) V!46371) Unit!40296)

(assert (=> d!133541 (= lt!553466 (lemmaContainsTupThenGetReturnValue!320 lt!553465 (_1!10059 (tuple2!20099 (select (arr!37937 _keys!1208) from!1455) (get!19374 (select (arr!37938 _values!996) from!1455) lt!553375))) (_2!10059 (tuple2!20099 (select (arr!37937 _keys!1208) from!1455) (get!19374 (select (arr!37938 _values!996) from!1455) lt!553375)))))))

(declare-fun insertStrictlySorted!412 (List!26920 (_ BitVec 64) V!46371) List!26920)

(assert (=> d!133541 (= lt!553465 (insertStrictlySorted!412 (toList!9055 lt!553371) (_1!10059 (tuple2!20099 (select (arr!37937 _keys!1208) from!1455) (get!19374 (select (arr!37938 _values!996) from!1455) lt!553375))) (_2!10059 (tuple2!20099 (select (arr!37937 _keys!1208) from!1455) (get!19374 (select (arr!37938 _values!996) from!1455) lt!553375)))))))

(assert (=> d!133541 (= (+!4038 lt!553371 (tuple2!20099 (select (arr!37937 _keys!1208) from!1455) (get!19374 (select (arr!37938 _values!996) from!1455) lt!553375))) lt!553467)))

(declare-fun b!1217672 () Bool)

(declare-fun res!808733 () Bool)

(assert (=> b!1217672 (=> (not res!808733) (not e!691355))))

(assert (=> b!1217672 (= res!808733 (= (getValueByKey!645 (toList!9055 lt!553467) (_1!10059 (tuple2!20099 (select (arr!37937 _keys!1208) from!1455) (get!19374 (select (arr!37938 _values!996) from!1455) lt!553375)))) (Some!695 (_2!10059 (tuple2!20099 (select (arr!37937 _keys!1208) from!1455) (get!19374 (select (arr!37938 _values!996) from!1455) lt!553375))))))))

(declare-fun b!1217673 () Bool)

(declare-fun contains!7028 (List!26920 tuple2!20098) Bool)

(assert (=> b!1217673 (= e!691355 (contains!7028 (toList!9055 lt!553467) (tuple2!20099 (select (arr!37937 _keys!1208) from!1455) (get!19374 (select (arr!37938 _values!996) from!1455) lt!553375))))))

(assert (= (and d!133541 res!808734) b!1217672))

(assert (= (and b!1217672 res!808733) b!1217673))

(declare-fun m!1122487 () Bool)

(assert (=> d!133541 m!1122487))

(declare-fun m!1122489 () Bool)

(assert (=> d!133541 m!1122489))

(declare-fun m!1122491 () Bool)

(assert (=> d!133541 m!1122491))

(declare-fun m!1122493 () Bool)

(assert (=> d!133541 m!1122493))

(declare-fun m!1122495 () Bool)

(assert (=> b!1217672 m!1122495))

(declare-fun m!1122497 () Bool)

(assert (=> b!1217673 m!1122497))

(assert (=> b!1217515 d!133541))

(declare-fun d!133543 () Bool)

(declare-fun c!120059 () Bool)

(assert (=> d!133543 (= c!120059 ((_ is ValueCellFull!14757) (select (arr!37938 _values!996) from!1455)))))

(declare-fun e!691358 () V!46371)

(assert (=> d!133543 (= (get!19374 (select (arr!37938 _values!996) from!1455) lt!553375) e!691358)))

(declare-fun b!1217678 () Bool)

(declare-fun get!19375 (ValueCell!14757 V!46371) V!46371)

(assert (=> b!1217678 (= e!691358 (get!19375 (select (arr!37938 _values!996) from!1455) lt!553375))))

(declare-fun b!1217679 () Bool)

(declare-fun get!19376 (ValueCell!14757 V!46371) V!46371)

(assert (=> b!1217679 (= e!691358 (get!19376 (select (arr!37938 _values!996) from!1455) lt!553375))))

(assert (= (and d!133543 c!120059) b!1217678))

(assert (= (and d!133543 (not c!120059)) b!1217679))

(assert (=> b!1217678 m!1122281))

(declare-fun m!1122499 () Bool)

(assert (=> b!1217678 m!1122499))

(assert (=> b!1217679 m!1122281))

(declare-fun m!1122501 () Bool)

(assert (=> b!1217679 m!1122501))

(assert (=> b!1217515 d!133543))

(declare-fun b!1217680 () Bool)

(declare-fun e!691362 () Bool)

(declare-fun e!691360 () Bool)

(assert (=> b!1217680 (= e!691362 e!691360)))

(declare-fun res!808736 () Bool)

(assert (=> b!1217680 (=> (not res!808736) (not e!691360))))

(declare-fun e!691361 () Bool)

(assert (=> b!1217680 (= res!808736 (not e!691361))))

(declare-fun res!808735 () Bool)

(assert (=> b!1217680 (=> (not res!808735) (not e!691361))))

(assert (=> b!1217680 (= res!808735 (validKeyInArray!0 (select (arr!37937 lt!553367) #b00000000000000000000000000000000)))))

(declare-fun bm!60639 () Bool)

(declare-fun call!60642 () Bool)

(declare-fun c!120060 () Bool)

(assert (=> bm!60639 (= call!60642 (arrayNoDuplicates!0 lt!553367 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120060 (Cons!26915 (select (arr!37937 lt!553367) #b00000000000000000000000000000000) Nil!26916) Nil!26916)))))

(declare-fun b!1217681 () Bool)

(declare-fun e!691359 () Bool)

(assert (=> b!1217681 (= e!691359 call!60642)))

(declare-fun b!1217682 () Bool)

(assert (=> b!1217682 (= e!691359 call!60642)))

(declare-fun b!1217683 () Bool)

(assert (=> b!1217683 (= e!691361 (contains!7026 Nil!26916 (select (arr!37937 lt!553367) #b00000000000000000000000000000000)))))

(declare-fun b!1217684 () Bool)

(assert (=> b!1217684 (= e!691360 e!691359)))

(assert (=> b!1217684 (= c!120060 (validKeyInArray!0 (select (arr!37937 lt!553367) #b00000000000000000000000000000000)))))

(declare-fun d!133545 () Bool)

(declare-fun res!808737 () Bool)

(assert (=> d!133545 (=> res!808737 e!691362)))

(assert (=> d!133545 (= res!808737 (bvsge #b00000000000000000000000000000000 (size!38474 lt!553367)))))

(assert (=> d!133545 (= (arrayNoDuplicates!0 lt!553367 #b00000000000000000000000000000000 Nil!26916) e!691362)))

(assert (= (and d!133545 (not res!808737)) b!1217680))

(assert (= (and b!1217680 res!808735) b!1217683))

(assert (= (and b!1217680 res!808736) b!1217684))

(assert (= (and b!1217684 c!120060) b!1217681))

(assert (= (and b!1217684 (not c!120060)) b!1217682))

(assert (= (or b!1217681 b!1217682) bm!60639))

(assert (=> b!1217680 m!1122397))

(assert (=> b!1217680 m!1122397))

(assert (=> b!1217680 m!1122405))

(assert (=> bm!60639 m!1122397))

(declare-fun m!1122503 () Bool)

(assert (=> bm!60639 m!1122503))

(assert (=> b!1217683 m!1122397))

(assert (=> b!1217683 m!1122397))

(declare-fun m!1122505 () Bool)

(assert (=> b!1217683 m!1122505))

(assert (=> b!1217684 m!1122397))

(assert (=> b!1217684 m!1122397))

(assert (=> b!1217684 m!1122405))

(assert (=> b!1217503 d!133545))

(declare-fun d!133547 () Bool)

(declare-fun res!808738 () Bool)

(declare-fun e!691363 () Bool)

(assert (=> d!133547 (=> res!808738 e!691363)))

(assert (=> d!133547 (= res!808738 (= (select (arr!37937 _keys!1208) i!673) k0!934))))

(assert (=> d!133547 (= (arrayContainsKey!0 _keys!1208 k0!934 i!673) e!691363)))

(declare-fun b!1217685 () Bool)

(declare-fun e!691364 () Bool)

(assert (=> b!1217685 (= e!691363 e!691364)))

(declare-fun res!808739 () Bool)

(assert (=> b!1217685 (=> (not res!808739) (not e!691364))))

(assert (=> b!1217685 (= res!808739 (bvslt (bvadd i!673 #b00000000000000000000000000000001) (size!38474 _keys!1208)))))

(declare-fun b!1217686 () Bool)

(assert (=> b!1217686 (= e!691364 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd i!673 #b00000000000000000000000000000001)))))

(assert (= (and d!133547 (not res!808738)) b!1217685))

(assert (= (and b!1217685 res!808739) b!1217686))

(assert (=> d!133547 m!1122329))

(declare-fun m!1122507 () Bool)

(assert (=> b!1217686 m!1122507))

(assert (=> b!1217514 d!133547))

(declare-fun d!133549 () Bool)

(assert (=> d!133549 (= (array_inv!28788 _keys!1208) (bvsge (size!38474 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!101368 d!133549))

(declare-fun d!133551 () Bool)

(assert (=> d!133551 (= (array_inv!28789 _values!996) (bvsge (size!38475 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!101368 d!133551))

(declare-fun d!133553 () Bool)

(assert (=> d!133553 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1217506 d!133553))

(declare-fun b!1217687 () Bool)

(declare-fun e!691365 () Bool)

(declare-fun lt!553472 () ListLongMap!18079)

(assert (=> b!1217687 (= e!691365 (isEmpty!998 lt!553472))))

(declare-fun d!133555 () Bool)

(declare-fun e!691366 () Bool)

(assert (=> d!133555 e!691366))

(declare-fun res!808740 () Bool)

(assert (=> d!133555 (=> (not res!808740) (not e!691366))))

(assert (=> d!133555 (= res!808740 (not (contains!7027 lt!553472 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!691371 () ListLongMap!18079)

(assert (=> d!133555 (= lt!553472 e!691371)))

(declare-fun c!120061 () Bool)

(assert (=> d!133555 (= c!120061 (bvsge from!1455 (size!38474 lt!553367)))))

(assert (=> d!133555 (validMask!0 mask!1564)))

(assert (=> d!133555 (= (getCurrentListMapNoExtraKeys!5459 lt!553367 lt!553368 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!553472)))

(declare-fun b!1217688 () Bool)

(declare-fun e!691367 () Bool)

(assert (=> b!1217688 (= e!691367 e!691365)))

(declare-fun c!120063 () Bool)

(assert (=> b!1217688 (= c!120063 (bvslt from!1455 (size!38474 lt!553367)))))

(declare-fun b!1217689 () Bool)

(declare-fun res!808741 () Bool)

(assert (=> b!1217689 (=> (not res!808741) (not e!691366))))

(assert (=> b!1217689 (= res!808741 (not (contains!7027 lt!553472 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1217690 () Bool)

(assert (=> b!1217690 (= e!691366 e!691367)))

(declare-fun c!120062 () Bool)

(declare-fun e!691370 () Bool)

(assert (=> b!1217690 (= c!120062 e!691370)))

(declare-fun res!808743 () Bool)

(assert (=> b!1217690 (=> (not res!808743) (not e!691370))))

(assert (=> b!1217690 (= res!808743 (bvslt from!1455 (size!38474 lt!553367)))))

(declare-fun b!1217691 () Bool)

(assert (=> b!1217691 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38474 lt!553367)))))

(assert (=> b!1217691 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38475 lt!553368)))))

(declare-fun e!691369 () Bool)

(assert (=> b!1217691 (= e!691369 (= (apply!1006 lt!553472 (select (arr!37937 lt!553367) from!1455)) (get!19374 (select (arr!37938 lt!553368) from!1455) (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1217692 () Bool)

(assert (=> b!1217692 (= e!691370 (validKeyInArray!0 (select (arr!37937 lt!553367) from!1455)))))

(assert (=> b!1217692 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1217693 () Bool)

(declare-fun lt!553470 () Unit!40296)

(declare-fun lt!553468 () Unit!40296)

(assert (=> b!1217693 (= lt!553470 lt!553468)))

(declare-fun lt!553474 () (_ BitVec 64))

(declare-fun lt!553471 () (_ BitVec 64))

(declare-fun lt!553469 () ListLongMap!18079)

(declare-fun lt!553473 () V!46371)

(assert (=> b!1217693 (not (contains!7027 (+!4038 lt!553469 (tuple2!20099 lt!553474 lt!553473)) lt!553471))))

(assert (=> b!1217693 (= lt!553468 (addStillNotContains!301 lt!553469 lt!553474 lt!553473 lt!553471))))

(assert (=> b!1217693 (= lt!553471 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1217693 (= lt!553473 (get!19374 (select (arr!37938 lt!553368) from!1455) (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1217693 (= lt!553474 (select (arr!37937 lt!553367) from!1455))))

(declare-fun call!60643 () ListLongMap!18079)

(assert (=> b!1217693 (= lt!553469 call!60643)))

(declare-fun e!691368 () ListLongMap!18079)

(assert (=> b!1217693 (= e!691368 (+!4038 call!60643 (tuple2!20099 (select (arr!37937 lt!553367) from!1455) (get!19374 (select (arr!37938 lt!553368) from!1455) (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1217694 () Bool)

(assert (=> b!1217694 (= e!691371 e!691368)))

(declare-fun c!120064 () Bool)

(assert (=> b!1217694 (= c!120064 (validKeyInArray!0 (select (arr!37937 lt!553367) from!1455)))))

(declare-fun b!1217695 () Bool)

(assert (=> b!1217695 (= e!691371 (ListLongMap!18080 Nil!26917))))

(declare-fun b!1217696 () Bool)

(assert (=> b!1217696 (= e!691367 e!691369)))

(assert (=> b!1217696 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38474 lt!553367)))))

(declare-fun res!808742 () Bool)

(assert (=> b!1217696 (= res!808742 (contains!7027 lt!553472 (select (arr!37937 lt!553367) from!1455)))))

(assert (=> b!1217696 (=> (not res!808742) (not e!691369))))

(declare-fun b!1217697 () Bool)

(assert (=> b!1217697 (= e!691368 call!60643)))

(declare-fun bm!60640 () Bool)

(assert (=> bm!60640 (= call!60643 (getCurrentListMapNoExtraKeys!5459 lt!553367 lt!553368 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1217698 () Bool)

(assert (=> b!1217698 (= e!691365 (= lt!553472 (getCurrentListMapNoExtraKeys!5459 lt!553367 lt!553368 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(assert (= (and d!133555 c!120061) b!1217695))

(assert (= (and d!133555 (not c!120061)) b!1217694))

(assert (= (and b!1217694 c!120064) b!1217693))

(assert (= (and b!1217694 (not c!120064)) b!1217697))

(assert (= (or b!1217693 b!1217697) bm!60640))

(assert (= (and d!133555 res!808740) b!1217689))

(assert (= (and b!1217689 res!808741) b!1217690))

(assert (= (and b!1217690 res!808743) b!1217692))

(assert (= (and b!1217690 c!120062) b!1217696))

(assert (= (and b!1217690 (not c!120062)) b!1217688))

(assert (= (and b!1217696 res!808742) b!1217691))

(assert (= (and b!1217688 c!120063) b!1217698))

(assert (= (and b!1217688 (not c!120063)) b!1217687))

(declare-fun b_lambda!21969 () Bool)

(assert (=> (not b_lambda!21969) (not b!1217691)))

(assert (=> b!1217691 t!40134))

(declare-fun b_and!43621 () Bool)

(assert (= b_and!43619 (and (=> t!40134 result!22665) b_and!43621)))

(declare-fun b_lambda!21971 () Bool)

(assert (=> (not b_lambda!21971) (not b!1217693)))

(assert (=> b!1217693 t!40134))

(declare-fun b_and!43623 () Bool)

(assert (= b_and!43621 (and (=> t!40134 result!22665) b_and!43623)))

(declare-fun m!1122509 () Bool)

(assert (=> b!1217689 m!1122509))

(declare-fun m!1122511 () Bool)

(assert (=> bm!60640 m!1122511))

(declare-fun m!1122513 () Bool)

(assert (=> b!1217694 m!1122513))

(assert (=> b!1217694 m!1122513))

(declare-fun m!1122515 () Bool)

(assert (=> b!1217694 m!1122515))

(assert (=> b!1217691 m!1122513))

(declare-fun m!1122517 () Bool)

(assert (=> b!1217691 m!1122517))

(assert (=> b!1217691 m!1122293))

(assert (=> b!1217691 m!1122517))

(assert (=> b!1217691 m!1122293))

(declare-fun m!1122519 () Bool)

(assert (=> b!1217691 m!1122519))

(assert (=> b!1217691 m!1122513))

(declare-fun m!1122521 () Bool)

(assert (=> b!1217691 m!1122521))

(assert (=> b!1217696 m!1122513))

(assert (=> b!1217696 m!1122513))

(declare-fun m!1122523 () Bool)

(assert (=> b!1217696 m!1122523))

(assert (=> b!1217698 m!1122511))

(declare-fun m!1122525 () Bool)

(assert (=> d!133555 m!1122525))

(assert (=> d!133555 m!1122287))

(declare-fun m!1122527 () Bool)

(assert (=> b!1217687 m!1122527))

(assert (=> b!1217692 m!1122513))

(assert (=> b!1217692 m!1122513))

(assert (=> b!1217692 m!1122515))

(assert (=> b!1217693 m!1122513))

(assert (=> b!1217693 m!1122517))

(declare-fun m!1122529 () Bool)

(assert (=> b!1217693 m!1122529))

(declare-fun m!1122531 () Bool)

(assert (=> b!1217693 m!1122531))

(assert (=> b!1217693 m!1122293))

(assert (=> b!1217693 m!1122517))

(assert (=> b!1217693 m!1122293))

(assert (=> b!1217693 m!1122519))

(declare-fun m!1122533 () Bool)

(assert (=> b!1217693 m!1122533))

(assert (=> b!1217693 m!1122529))

(declare-fun m!1122535 () Bool)

(assert (=> b!1217693 m!1122535))

(assert (=> b!1217517 d!133555))

(declare-fun b!1217699 () Bool)

(declare-fun e!691372 () Bool)

(declare-fun lt!553479 () ListLongMap!18079)

(assert (=> b!1217699 (= e!691372 (isEmpty!998 lt!553479))))

(declare-fun d!133557 () Bool)

(declare-fun e!691373 () Bool)

(assert (=> d!133557 e!691373))

(declare-fun res!808744 () Bool)

(assert (=> d!133557 (=> (not res!808744) (not e!691373))))

(assert (=> d!133557 (= res!808744 (not (contains!7027 lt!553479 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!691378 () ListLongMap!18079)

(assert (=> d!133557 (= lt!553479 e!691378)))

(declare-fun c!120065 () Bool)

(assert (=> d!133557 (= c!120065 (bvsge from!1455 (size!38474 _keys!1208)))))

(assert (=> d!133557 (validMask!0 mask!1564)))

(assert (=> d!133557 (= (getCurrentListMapNoExtraKeys!5459 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!553479)))

(declare-fun b!1217700 () Bool)

(declare-fun e!691374 () Bool)

(assert (=> b!1217700 (= e!691374 e!691372)))

(declare-fun c!120067 () Bool)

(assert (=> b!1217700 (= c!120067 (bvslt from!1455 (size!38474 _keys!1208)))))

(declare-fun b!1217701 () Bool)

(declare-fun res!808745 () Bool)

(assert (=> b!1217701 (=> (not res!808745) (not e!691373))))

(assert (=> b!1217701 (= res!808745 (not (contains!7027 lt!553479 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1217702 () Bool)

(assert (=> b!1217702 (= e!691373 e!691374)))

(declare-fun c!120066 () Bool)

(declare-fun e!691377 () Bool)

(assert (=> b!1217702 (= c!120066 e!691377)))

(declare-fun res!808747 () Bool)

(assert (=> b!1217702 (=> (not res!808747) (not e!691377))))

(assert (=> b!1217702 (= res!808747 (bvslt from!1455 (size!38474 _keys!1208)))))

(declare-fun b!1217703 () Bool)

(assert (=> b!1217703 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38474 _keys!1208)))))

(assert (=> b!1217703 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38475 _values!996)))))

(declare-fun e!691376 () Bool)

(assert (=> b!1217703 (= e!691376 (= (apply!1006 lt!553479 (select (arr!37937 _keys!1208) from!1455)) (get!19374 (select (arr!37938 _values!996) from!1455) (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1217704 () Bool)

(assert (=> b!1217704 (= e!691377 (validKeyInArray!0 (select (arr!37937 _keys!1208) from!1455)))))

(assert (=> b!1217704 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1217705 () Bool)

(declare-fun lt!553477 () Unit!40296)

(declare-fun lt!553475 () Unit!40296)

(assert (=> b!1217705 (= lt!553477 lt!553475)))

(declare-fun lt!553478 () (_ BitVec 64))

(declare-fun lt!553480 () V!46371)

(declare-fun lt!553481 () (_ BitVec 64))

(declare-fun lt!553476 () ListLongMap!18079)

(assert (=> b!1217705 (not (contains!7027 (+!4038 lt!553476 (tuple2!20099 lt!553481 lt!553480)) lt!553478))))

(assert (=> b!1217705 (= lt!553475 (addStillNotContains!301 lt!553476 lt!553481 lt!553480 lt!553478))))

(assert (=> b!1217705 (= lt!553478 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1217705 (= lt!553480 (get!19374 (select (arr!37938 _values!996) from!1455) (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1217705 (= lt!553481 (select (arr!37937 _keys!1208) from!1455))))

(declare-fun call!60644 () ListLongMap!18079)

(assert (=> b!1217705 (= lt!553476 call!60644)))

(declare-fun e!691375 () ListLongMap!18079)

(assert (=> b!1217705 (= e!691375 (+!4038 call!60644 (tuple2!20099 (select (arr!37937 _keys!1208) from!1455) (get!19374 (select (arr!37938 _values!996) from!1455) (dynLambda!3364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1217706 () Bool)

(assert (=> b!1217706 (= e!691378 e!691375)))

(declare-fun c!120068 () Bool)

(assert (=> b!1217706 (= c!120068 (validKeyInArray!0 (select (arr!37937 _keys!1208) from!1455)))))

(declare-fun b!1217707 () Bool)

(assert (=> b!1217707 (= e!691378 (ListLongMap!18080 Nil!26917))))

(declare-fun b!1217708 () Bool)

(assert (=> b!1217708 (= e!691374 e!691376)))

(assert (=> b!1217708 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38474 _keys!1208)))))

(declare-fun res!808746 () Bool)

(assert (=> b!1217708 (= res!808746 (contains!7027 lt!553479 (select (arr!37937 _keys!1208) from!1455)))))

(assert (=> b!1217708 (=> (not res!808746) (not e!691376))))

(declare-fun b!1217709 () Bool)

(assert (=> b!1217709 (= e!691375 call!60644)))

(declare-fun bm!60641 () Bool)

(assert (=> bm!60641 (= call!60644 (getCurrentListMapNoExtraKeys!5459 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1217710 () Bool)

(assert (=> b!1217710 (= e!691372 (= lt!553479 (getCurrentListMapNoExtraKeys!5459 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(assert (= (and d!133557 c!120065) b!1217707))

(assert (= (and d!133557 (not c!120065)) b!1217706))

(assert (= (and b!1217706 c!120068) b!1217705))

(assert (= (and b!1217706 (not c!120068)) b!1217709))

(assert (= (or b!1217705 b!1217709) bm!60641))

(assert (= (and d!133557 res!808744) b!1217701))

(assert (= (and b!1217701 res!808745) b!1217702))

(assert (= (and b!1217702 res!808747) b!1217704))

(assert (= (and b!1217702 c!120066) b!1217708))

(assert (= (and b!1217702 (not c!120066)) b!1217700))

(assert (= (and b!1217708 res!808746) b!1217703))

(assert (= (and b!1217700 c!120067) b!1217710))

(assert (= (and b!1217700 (not c!120067)) b!1217699))

(declare-fun b_lambda!21973 () Bool)

(assert (=> (not b_lambda!21973) (not b!1217703)))

(assert (=> b!1217703 t!40134))

(declare-fun b_and!43625 () Bool)

(assert (= b_and!43623 (and (=> t!40134 result!22665) b_and!43625)))

(declare-fun b_lambda!21975 () Bool)

(assert (=> (not b_lambda!21975) (not b!1217705)))

(assert (=> b!1217705 t!40134))

(declare-fun b_and!43627 () Bool)

(assert (= b_and!43625 (and (=> t!40134 result!22665) b_and!43627)))

(declare-fun m!1122537 () Bool)

(assert (=> b!1217701 m!1122537))

(declare-fun m!1122539 () Bool)

(assert (=> bm!60641 m!1122539))

(assert (=> b!1217706 m!1122279))

(assert (=> b!1217706 m!1122279))

(assert (=> b!1217706 m!1122307))

(assert (=> b!1217703 m!1122279))

(assert (=> b!1217703 m!1122281))

(assert (=> b!1217703 m!1122293))

(assert (=> b!1217703 m!1122281))

(assert (=> b!1217703 m!1122293))

(declare-fun m!1122541 () Bool)

(assert (=> b!1217703 m!1122541))

(assert (=> b!1217703 m!1122279))

(declare-fun m!1122543 () Bool)

(assert (=> b!1217703 m!1122543))

(assert (=> b!1217708 m!1122279))

(assert (=> b!1217708 m!1122279))

(declare-fun m!1122545 () Bool)

(assert (=> b!1217708 m!1122545))

(assert (=> b!1217710 m!1122539))

(declare-fun m!1122547 () Bool)

(assert (=> d!133557 m!1122547))

(assert (=> d!133557 m!1122287))

(declare-fun m!1122549 () Bool)

(assert (=> b!1217699 m!1122549))

(assert (=> b!1217704 m!1122279))

(assert (=> b!1217704 m!1122279))

(assert (=> b!1217704 m!1122307))

(assert (=> b!1217705 m!1122279))

(assert (=> b!1217705 m!1122281))

(declare-fun m!1122551 () Bool)

(assert (=> b!1217705 m!1122551))

(declare-fun m!1122553 () Bool)

(assert (=> b!1217705 m!1122553))

(assert (=> b!1217705 m!1122293))

(assert (=> b!1217705 m!1122281))

(assert (=> b!1217705 m!1122293))

(assert (=> b!1217705 m!1122541))

(declare-fun m!1122555 () Bool)

(assert (=> b!1217705 m!1122555))

(assert (=> b!1217705 m!1122551))

(declare-fun m!1122557 () Bool)

(assert (=> b!1217705 m!1122557))

(assert (=> b!1217517 d!133557))

(declare-fun b!1217717 () Bool)

(declare-fun e!691384 () Bool)

(assert (=> b!1217717 (= e!691384 tp_is_empty!30933)))

(declare-fun mapIsEmpty!48283 () Bool)

(declare-fun mapRes!48283 () Bool)

(assert (=> mapIsEmpty!48283 mapRes!48283))

(declare-fun mapNonEmpty!48283 () Bool)

(declare-fun tp!91722 () Bool)

(assert (=> mapNonEmpty!48283 (= mapRes!48283 (and tp!91722 e!691384))))

(declare-fun mapKey!48283 () (_ BitVec 32))

(declare-fun mapRest!48283 () (Array (_ BitVec 32) ValueCell!14757))

(declare-fun mapValue!48283 () ValueCell!14757)

(assert (=> mapNonEmpty!48283 (= mapRest!48277 (store mapRest!48283 mapKey!48283 mapValue!48283))))

(declare-fun condMapEmpty!48283 () Bool)

(declare-fun mapDefault!48283 () ValueCell!14757)

(assert (=> mapNonEmpty!48277 (= condMapEmpty!48283 (= mapRest!48277 ((as const (Array (_ BitVec 32) ValueCell!14757)) mapDefault!48283)))))

(declare-fun e!691383 () Bool)

(assert (=> mapNonEmpty!48277 (= tp!91712 (and e!691383 mapRes!48283))))

(declare-fun b!1217718 () Bool)

(assert (=> b!1217718 (= e!691383 tp_is_empty!30933)))

(assert (= (and mapNonEmpty!48277 condMapEmpty!48283) mapIsEmpty!48283))

(assert (= (and mapNonEmpty!48277 (not condMapEmpty!48283)) mapNonEmpty!48283))

(assert (= (and mapNonEmpty!48283 ((_ is ValueCellFull!14757) mapValue!48283)) b!1217717))

(assert (= (and mapNonEmpty!48277 ((_ is ValueCellFull!14757) mapDefault!48283)) b!1217718))

(declare-fun m!1122559 () Bool)

(assert (=> mapNonEmpty!48283 m!1122559))

(declare-fun b_lambda!21977 () Bool)

(assert (= b_lambda!21973 (or (and start!101368 b_free!26229) b_lambda!21977)))

(declare-fun b_lambda!21979 () Bool)

(assert (= b_lambda!21963 (or (and start!101368 b_free!26229) b_lambda!21979)))

(declare-fun b_lambda!21981 () Bool)

(assert (= b_lambda!21959 (or (and start!101368 b_free!26229) b_lambda!21981)))

(declare-fun b_lambda!21983 () Bool)

(assert (= b_lambda!21975 (or (and start!101368 b_free!26229) b_lambda!21983)))

(declare-fun b_lambda!21985 () Bool)

(assert (= b_lambda!21969 (or (and start!101368 b_free!26229) b_lambda!21985)))

(declare-fun b_lambda!21987 () Bool)

(assert (= b_lambda!21971 (or (and start!101368 b_free!26229) b_lambda!21987)))

(declare-fun b_lambda!21989 () Bool)

(assert (= b_lambda!21967 (or (and start!101368 b_free!26229) b_lambda!21989)))

(declare-fun b_lambda!21991 () Bool)

(assert (= b_lambda!21961 (or (and start!101368 b_free!26229) b_lambda!21991)))

(declare-fun b_lambda!21993 () Bool)

(assert (= b_lambda!21965 (or (and start!101368 b_free!26229) b_lambda!21993)))

(check-sat (not b!1217599) (not b!1217701) (not b!1217673) (not d!133541) (not d!133539) (not d!133533) (not b!1217635) (not b!1217656) (not b!1217658) (not b!1217694) (not b!1217693) (not b!1217704) (not b!1217584) (not b!1217640) (not bm!60632) (not mapNonEmpty!48283) (not b!1217609) (not b!1217644) (not b!1217653) (not b!1217705) (not b_lambda!21981) (not d!133537) (not b!1217699) (not bm!60628) (not bm!60631) (not b!1217683) (not b!1217696) (not b!1217651) (not d!133555) (not b!1217588) (not b!1217708) (not b!1217646) (not b!1217703) (not b!1217698) (not b!1217608) (not b!1217687) (not b!1217692) (not b!1217706) (not bm!60641) (not b!1217672) (not b!1217647) (not b!1217678) (not bm!60627) (not b!1217686) (not b!1217641) (not b_lambda!21993) (not b!1217649) (not b_lambda!21983) (not bm!60637) (not b!1217654) (not bm!60638) (not b!1217665) (not b_lambda!21979) (not b!1217679) (not d!133535) (not b_lambda!21957) (not b_next!26229) (not b_lambda!21987) (not b_lambda!21991) b_and!43627 tp_is_empty!30933 (not d!133557) (not b!1217689) (not b!1217710) (not b!1217606) (not b!1217680) (not b!1217639) (not b!1217684) (not bm!60639) (not bm!60640) (not b!1217642) (not b!1217691) (not b!1217598) (not bm!60624) (not b_lambda!21985) (not d!133525) (not b!1217587) (not b!1217652) (not b_lambda!21989) (not b_lambda!21977) (not b!1217637))
(check-sat b_and!43627 (not b_next!26229))
