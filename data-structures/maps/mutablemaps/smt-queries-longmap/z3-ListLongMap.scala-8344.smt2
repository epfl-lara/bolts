; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101618 () Bool)

(assert start!101618)

(declare-fun b_free!26337 () Bool)

(declare-fun b_next!26337 () Bool)

(assert (=> start!101618 (= b_free!26337 (not b_next!26337))))

(declare-fun tp!92051 () Bool)

(declare-fun b_and!43909 () Bool)

(assert (=> start!101618 (= tp!92051 b_and!43909)))

(declare-fun b!1221397 () Bool)

(declare-fun e!693663 () Bool)

(declare-fun e!693660 () Bool)

(declare-fun mapRes!48454 () Bool)

(assert (=> b!1221397 (= e!693663 (and e!693660 mapRes!48454))))

(declare-fun condMapEmpty!48454 () Bool)

(declare-datatypes ((V!46515 0))(
  ( (V!46516 (val!15577 Int)) )
))
(declare-datatypes ((ValueCell!14811 0))(
  ( (ValueCellFull!14811 (v!18237 V!46515)) (EmptyCell!14811) )
))
(declare-datatypes ((array!78838 0))(
  ( (array!78839 (arr!38044 (Array (_ BitVec 32) ValueCell!14811)) (size!38581 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78838)

(declare-fun mapDefault!48454 () ValueCell!14811)

(assert (=> b!1221397 (= condMapEmpty!48454 (= (arr!38044 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14811)) mapDefault!48454)))))

(declare-fun mapIsEmpty!48454 () Bool)

(assert (=> mapIsEmpty!48454 mapRes!48454))

(declare-fun b!1221398 () Bool)

(declare-datatypes ((array!78840 0))(
  ( (array!78841 (arr!38045 (Array (_ BitVec 32) (_ BitVec 64))) (size!38582 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78840)

(declare-fun e!693657 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1221398 (= e!693657 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1221399 () Bool)

(declare-fun e!693653 () Bool)

(declare-fun e!693654 () Bool)

(assert (=> b!1221399 (= e!693653 e!693654)))

(declare-fun res!811512 () Bool)

(assert (=> b!1221399 (=> (not res!811512) (not e!693654))))

(declare-fun lt!555543 () array!78840)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78840 (_ BitVec 32)) Bool)

(assert (=> b!1221399 (= res!811512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555543 mask!1564))))

(assert (=> b!1221399 (= lt!555543 (array!78841 (store (arr!38045 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38582 _keys!1208)))))

(declare-fun b!1221400 () Bool)

(declare-fun e!693662 () Bool)

(declare-fun e!693659 () Bool)

(assert (=> b!1221400 (= e!693662 e!693659)))

(declare-fun res!811513 () Bool)

(assert (=> b!1221400 (=> (not res!811513) (not e!693659))))

(declare-datatypes ((List!27011 0))(
  ( (Nil!27008) (Cons!27007 (h!28216 (_ BitVec 64)) (t!40335 List!27011)) )
))
(declare-fun contains!7042 (List!27011 (_ BitVec 64)) Bool)

(assert (=> b!1221400 (= res!811513 (not (contains!7042 Nil!27008 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!811523 () Bool)

(assert (=> start!101618 (=> (not res!811523) (not e!693653))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101618 (= res!811523 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38582 _keys!1208))))))

(assert (=> start!101618 e!693653))

(declare-fun tp_is_empty!31041 () Bool)

(assert (=> start!101618 tp_is_empty!31041))

(declare-fun array_inv!28862 (array!78840) Bool)

(assert (=> start!101618 (array_inv!28862 _keys!1208)))

(assert (=> start!101618 true))

(assert (=> start!101618 tp!92051))

(declare-fun array_inv!28863 (array!78838) Bool)

(assert (=> start!101618 (and (array_inv!28863 _values!996) e!693663)))

(declare-fun b!1221401 () Bool)

(declare-fun e!693651 () Bool)

(declare-fun e!693658 () Bool)

(assert (=> b!1221401 (= e!693651 e!693658)))

(declare-fun res!811521 () Bool)

(assert (=> b!1221401 (=> res!811521 e!693658)))

(assert (=> b!1221401 (= res!811521 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46515)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!555544 () array!78838)

(declare-fun minValue!944 () V!46515)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20196 0))(
  ( (tuple2!20197 (_1!10108 (_ BitVec 64)) (_2!10108 V!46515)) )
))
(declare-datatypes ((List!27012 0))(
  ( (Nil!27009) (Cons!27008 (h!28217 tuple2!20196) (t!40336 List!27012)) )
))
(declare-datatypes ((ListLongMap!18177 0))(
  ( (ListLongMap!18178 (toList!9104 List!27012)) )
))
(declare-fun lt!555549 () ListLongMap!18177)

(declare-fun getCurrentListMapNoExtraKeys!5502 (array!78840 array!78838 (_ BitVec 32) (_ BitVec 32) V!46515 V!46515 (_ BitVec 32) Int) ListLongMap!18177)

(assert (=> b!1221401 (= lt!555549 (getCurrentListMapNoExtraKeys!5502 lt!555543 lt!555544 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!555548 () V!46515)

(assert (=> b!1221401 (= lt!555544 (array!78839 (store (arr!38044 _values!996) i!673 (ValueCellFull!14811 lt!555548)) (size!38581 _values!996)))))

(declare-fun dynLambda!3403 (Int (_ BitVec 64)) V!46515)

(assert (=> b!1221401 (= lt!555548 (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!555541 () ListLongMap!18177)

(assert (=> b!1221401 (= lt!555541 (getCurrentListMapNoExtraKeys!5502 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1221402 () Bool)

(declare-fun res!811519 () Bool)

(assert (=> b!1221402 (=> (not res!811519) (not e!693653))))

(assert (=> b!1221402 (= res!811519 (and (= (size!38581 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38582 _keys!1208) (size!38581 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1221403 () Bool)

(declare-fun res!811518 () Bool)

(assert (=> b!1221403 (=> (not res!811518) (not e!693653))))

(assert (=> b!1221403 (= res!811518 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38582 _keys!1208))))))

(declare-fun b!1221404 () Bool)

(declare-fun e!693661 () Bool)

(assert (=> b!1221404 (= e!693661 e!693657)))

(declare-fun res!811508 () Bool)

(assert (=> b!1221404 (=> res!811508 e!693657)))

(assert (=> b!1221404 (= res!811508 (not (= (select (arr!38045 _keys!1208) from!1455) k0!934)))))

(declare-fun mapNonEmpty!48454 () Bool)

(declare-fun tp!92052 () Bool)

(declare-fun e!693656 () Bool)

(assert (=> mapNonEmpty!48454 (= mapRes!48454 (and tp!92052 e!693656))))

(declare-fun mapKey!48454 () (_ BitVec 32))

(declare-fun mapValue!48454 () ValueCell!14811)

(declare-fun mapRest!48454 () (Array (_ BitVec 32) ValueCell!14811))

(assert (=> mapNonEmpty!48454 (= (arr!38044 _values!996) (store mapRest!48454 mapKey!48454 mapValue!48454))))

(declare-fun b!1221405 () Bool)

(declare-fun res!811525 () Bool)

(assert (=> b!1221405 (=> (not res!811525) (not e!693653))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1221405 (= res!811525 (validKeyInArray!0 k0!934))))

(declare-fun b!1221406 () Bool)

(declare-fun res!811517 () Bool)

(assert (=> b!1221406 (=> (not res!811517) (not e!693654))))

(declare-fun arrayNoDuplicates!0 (array!78840 (_ BitVec 32) List!27011) Bool)

(assert (=> b!1221406 (= res!811517 (arrayNoDuplicates!0 lt!555543 #b00000000000000000000000000000000 Nil!27008))))

(declare-fun b!1221407 () Bool)

(declare-fun res!811515 () Bool)

(assert (=> b!1221407 (=> (not res!811515) (not e!693653))))

(assert (=> b!1221407 (= res!811515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1221408 () Bool)

(declare-fun res!811526 () Bool)

(assert (=> b!1221408 (=> (not res!811526) (not e!693653))))

(assert (=> b!1221408 (= res!811526 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27008))))

(declare-fun b!1221409 () Bool)

(assert (=> b!1221409 (= e!693654 (not e!693651))))

(declare-fun res!811511 () Bool)

(assert (=> b!1221409 (=> res!811511 e!693651)))

(assert (=> b!1221409 (= res!811511 (bvsgt from!1455 i!673))))

(assert (=> b!1221409 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40376 0))(
  ( (Unit!40377) )
))
(declare-fun lt!555551 () Unit!40376)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78840 (_ BitVec 64) (_ BitVec 32)) Unit!40376)

(assert (=> b!1221409 (= lt!555551 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1221410 () Bool)

(assert (=> b!1221410 (= e!693660 tp_is_empty!31041)))

(declare-fun b!1221411 () Bool)

(assert (=> b!1221411 (= e!693656 tp_is_empty!31041)))

(declare-fun b!1221412 () Bool)

(declare-fun e!693655 () Bool)

(assert (=> b!1221412 (= e!693658 e!693655)))

(declare-fun res!811510 () Bool)

(assert (=> b!1221412 (=> res!811510 e!693655)))

(assert (=> b!1221412 (= res!811510 (not (validKeyInArray!0 (select (arr!38045 _keys!1208) from!1455))))))

(declare-fun lt!555550 () ListLongMap!18177)

(declare-fun lt!555540 () ListLongMap!18177)

(assert (=> b!1221412 (= lt!555550 lt!555540)))

(declare-fun lt!555546 () ListLongMap!18177)

(declare-fun -!1948 (ListLongMap!18177 (_ BitVec 64)) ListLongMap!18177)

(assert (=> b!1221412 (= lt!555540 (-!1948 lt!555546 k0!934))))

(assert (=> b!1221412 (= lt!555550 (getCurrentListMapNoExtraKeys!5502 lt!555543 lt!555544 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1221412 (= lt!555546 (getCurrentListMapNoExtraKeys!5502 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!555547 () Unit!40376)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1150 (array!78840 array!78838 (_ BitVec 32) (_ BitVec 32) V!46515 V!46515 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40376)

(assert (=> b!1221412 (= lt!555547 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1150 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1221413 () Bool)

(declare-fun e!693652 () Bool)

(assert (=> b!1221413 (= e!693655 e!693652)))

(declare-fun res!811516 () Bool)

(assert (=> b!1221413 (=> res!811516 e!693652)))

(assert (=> b!1221413 (= res!811516 (not (= (select (arr!38045 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1221413 e!693661))

(declare-fun res!811522 () Bool)

(assert (=> b!1221413 (=> (not res!811522) (not e!693661))))

(declare-fun +!4075 (ListLongMap!18177 tuple2!20196) ListLongMap!18177)

(declare-fun get!19457 (ValueCell!14811 V!46515) V!46515)

(assert (=> b!1221413 (= res!811522 (= lt!555549 (+!4075 lt!555540 (tuple2!20197 (select (arr!38045 _keys!1208) from!1455) (get!19457 (select (arr!38044 _values!996) from!1455) lt!555548)))))))

(declare-fun b!1221414 () Bool)

(declare-fun res!811509 () Bool)

(assert (=> b!1221414 (=> (not res!811509) (not e!693653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1221414 (= res!811509 (validMask!0 mask!1564))))

(declare-fun b!1221415 () Bool)

(declare-fun res!811514 () Bool)

(assert (=> b!1221415 (=> res!811514 e!693662)))

(declare-fun noDuplicate!1656 (List!27011) Bool)

(assert (=> b!1221415 (= res!811514 (not (noDuplicate!1656 Nil!27008)))))

(declare-fun b!1221416 () Bool)

(assert (=> b!1221416 (= e!693652 e!693662)))

(declare-fun res!811524 () Bool)

(assert (=> b!1221416 (=> res!811524 e!693662)))

(assert (=> b!1221416 (= res!811524 (or (bvsge (size!38582 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38582 _keys!1208)) (bvsge from!1455 (size!38582 _keys!1208))))))

(assert (=> b!1221416 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27008)))

(declare-fun lt!555542 () Unit!40376)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78840 (_ BitVec 32) (_ BitVec 32)) Unit!40376)

(assert (=> b!1221416 (= lt!555542 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1221416 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555545 () Unit!40376)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78840 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40376)

(assert (=> b!1221416 (= lt!555545 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1221417 () Bool)

(declare-fun res!811520 () Bool)

(assert (=> b!1221417 (=> (not res!811520) (not e!693653))))

(assert (=> b!1221417 (= res!811520 (= (select (arr!38045 _keys!1208) i!673) k0!934))))

(declare-fun b!1221418 () Bool)

(assert (=> b!1221418 (= e!693659 (not (contains!7042 Nil!27008 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!101618 res!811523) b!1221414))

(assert (= (and b!1221414 res!811509) b!1221402))

(assert (= (and b!1221402 res!811519) b!1221407))

(assert (= (and b!1221407 res!811515) b!1221408))

(assert (= (and b!1221408 res!811526) b!1221403))

(assert (= (and b!1221403 res!811518) b!1221405))

(assert (= (and b!1221405 res!811525) b!1221417))

(assert (= (and b!1221417 res!811520) b!1221399))

(assert (= (and b!1221399 res!811512) b!1221406))

(assert (= (and b!1221406 res!811517) b!1221409))

(assert (= (and b!1221409 (not res!811511)) b!1221401))

(assert (= (and b!1221401 (not res!811521)) b!1221412))

(assert (= (and b!1221412 (not res!811510)) b!1221413))

(assert (= (and b!1221413 res!811522) b!1221404))

(assert (= (and b!1221404 (not res!811508)) b!1221398))

(assert (= (and b!1221413 (not res!811516)) b!1221416))

(assert (= (and b!1221416 (not res!811524)) b!1221415))

(assert (= (and b!1221415 (not res!811514)) b!1221400))

(assert (= (and b!1221400 res!811513) b!1221418))

(assert (= (and b!1221397 condMapEmpty!48454) mapIsEmpty!48454))

(assert (= (and b!1221397 (not condMapEmpty!48454)) mapNonEmpty!48454))

(get-info :version)

(assert (= (and mapNonEmpty!48454 ((_ is ValueCellFull!14811) mapValue!48454)) b!1221411))

(assert (= (and b!1221397 ((_ is ValueCellFull!14811) mapDefault!48454)) b!1221410))

(assert (= start!101618 b!1221397))

(declare-fun b_lambda!22251 () Bool)

(assert (=> (not b_lambda!22251) (not b!1221401)))

(declare-fun t!40334 () Bool)

(declare-fun tb!11145 () Bool)

(assert (=> (and start!101618 (= defaultEntry!1004 defaultEntry!1004) t!40334) tb!11145))

(declare-fun result!22891 () Bool)

(assert (=> tb!11145 (= result!22891 tp_is_empty!31041)))

(assert (=> b!1221401 t!40334))

(declare-fun b_and!43911 () Bool)

(assert (= b_and!43909 (and (=> t!40334 result!22891) b_and!43911)))

(declare-fun m!1126317 () Bool)

(assert (=> b!1221398 m!1126317))

(declare-fun m!1126319 () Bool)

(assert (=> b!1221414 m!1126319))

(declare-fun m!1126321 () Bool)

(assert (=> b!1221416 m!1126321))

(declare-fun m!1126323 () Bool)

(assert (=> b!1221416 m!1126323))

(declare-fun m!1126325 () Bool)

(assert (=> b!1221416 m!1126325))

(declare-fun m!1126327 () Bool)

(assert (=> b!1221416 m!1126327))

(declare-fun m!1126329 () Bool)

(assert (=> b!1221415 m!1126329))

(declare-fun m!1126331 () Bool)

(assert (=> b!1221408 m!1126331))

(declare-fun m!1126333 () Bool)

(assert (=> b!1221417 m!1126333))

(declare-fun m!1126335 () Bool)

(assert (=> b!1221407 m!1126335))

(declare-fun m!1126337 () Bool)

(assert (=> b!1221404 m!1126337))

(declare-fun m!1126339 () Bool)

(assert (=> mapNonEmpty!48454 m!1126339))

(declare-fun m!1126341 () Bool)

(assert (=> start!101618 m!1126341))

(declare-fun m!1126343 () Bool)

(assert (=> start!101618 m!1126343))

(declare-fun m!1126345 () Bool)

(assert (=> b!1221409 m!1126345))

(declare-fun m!1126347 () Bool)

(assert (=> b!1221409 m!1126347))

(declare-fun m!1126349 () Bool)

(assert (=> b!1221400 m!1126349))

(declare-fun m!1126351 () Bool)

(assert (=> b!1221412 m!1126351))

(declare-fun m!1126353 () Bool)

(assert (=> b!1221412 m!1126353))

(declare-fun m!1126355 () Bool)

(assert (=> b!1221412 m!1126355))

(declare-fun m!1126357 () Bool)

(assert (=> b!1221412 m!1126357))

(assert (=> b!1221412 m!1126337))

(declare-fun m!1126359 () Bool)

(assert (=> b!1221412 m!1126359))

(assert (=> b!1221412 m!1126337))

(declare-fun m!1126361 () Bool)

(assert (=> b!1221399 m!1126361))

(declare-fun m!1126363 () Bool)

(assert (=> b!1221399 m!1126363))

(declare-fun m!1126365 () Bool)

(assert (=> b!1221405 m!1126365))

(declare-fun m!1126367 () Bool)

(assert (=> b!1221406 m!1126367))

(assert (=> b!1221413 m!1126337))

(declare-fun m!1126369 () Bool)

(assert (=> b!1221413 m!1126369))

(assert (=> b!1221413 m!1126369))

(declare-fun m!1126371 () Bool)

(assert (=> b!1221413 m!1126371))

(declare-fun m!1126373 () Bool)

(assert (=> b!1221413 m!1126373))

(declare-fun m!1126375 () Bool)

(assert (=> b!1221418 m!1126375))

(declare-fun m!1126377 () Bool)

(assert (=> b!1221401 m!1126377))

(declare-fun m!1126379 () Bool)

(assert (=> b!1221401 m!1126379))

(declare-fun m!1126381 () Bool)

(assert (=> b!1221401 m!1126381))

(declare-fun m!1126383 () Bool)

(assert (=> b!1221401 m!1126383))

(check-sat (not b!1221407) (not b!1221400) (not b!1221415) (not b!1221413) (not b!1221416) (not b!1221405) (not b!1221408) tp_is_empty!31041 (not start!101618) (not b_next!26337) (not b!1221414) (not b!1221418) (not b!1221398) b_and!43911 (not b!1221409) (not mapNonEmpty!48454) (not b_lambda!22251) (not b!1221401) (not b!1221399) (not b!1221412) (not b!1221406))
(check-sat b_and!43911 (not b_next!26337))
(get-model)

(declare-fun b_lambda!22255 () Bool)

(assert (= b_lambda!22251 (or (and start!101618 b_free!26337) b_lambda!22255)))

(check-sat (not b!1221407) (not b!1221400) (not b!1221415) (not b!1221413) (not b!1221416) (not b!1221401) (not b!1221408) tp_is_empty!31041 (not start!101618) (not b_next!26337) (not b!1221414) (not b!1221418) (not b!1221398) b_and!43911 (not b!1221409) (not mapNonEmpty!48454) (not b!1221405) (not b_lambda!22255) (not b!1221399) (not b!1221412) (not b!1221406))
(check-sat b_and!43911 (not b_next!26337))
(get-model)

(declare-fun d!133777 () Bool)

(declare-fun lt!555590 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!551 (List!27011) (InoxSet (_ BitVec 64)))

(assert (=> d!133777 (= lt!555590 (select (content!551 Nil!27008) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!693711 () Bool)

(assert (=> d!133777 (= lt!555590 e!693711)))

(declare-fun res!811588 () Bool)

(assert (=> d!133777 (=> (not res!811588) (not e!693711))))

(assert (=> d!133777 (= res!811588 ((_ is Cons!27007) Nil!27008))))

(assert (=> d!133777 (= (contains!7042 Nil!27008 #b1000000000000000000000000000000000000000000000000000000000000000) lt!555590)))

(declare-fun b!1221493 () Bool)

(declare-fun e!693710 () Bool)

(assert (=> b!1221493 (= e!693711 e!693710)))

(declare-fun res!811589 () Bool)

(assert (=> b!1221493 (=> res!811589 e!693710)))

(assert (=> b!1221493 (= res!811589 (= (h!28216 Nil!27008) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1221494 () Bool)

(assert (=> b!1221494 (= e!693710 (contains!7042 (t!40335 Nil!27008) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!133777 res!811588) b!1221493))

(assert (= (and b!1221493 (not res!811589)) b!1221494))

(declare-fun m!1126453 () Bool)

(assert (=> d!133777 m!1126453))

(declare-fun m!1126455 () Bool)

(assert (=> d!133777 m!1126455))

(declare-fun m!1126457 () Bool)

(assert (=> b!1221494 m!1126457))

(assert (=> b!1221418 d!133777))

(declare-fun b!1221503 () Bool)

(declare-fun e!693719 () Bool)

(declare-fun e!693718 () Bool)

(assert (=> b!1221503 (= e!693719 e!693718)))

(declare-fun c!120225 () Bool)

(assert (=> b!1221503 (= c!120225 (validKeyInArray!0 (select (arr!38045 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!60726 () Bool)

(declare-fun call!60729 () Bool)

(assert (=> bm!60726 (= call!60729 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1221504 () Bool)

(declare-fun e!693720 () Bool)

(assert (=> b!1221504 (= e!693720 call!60729)))

(declare-fun d!133779 () Bool)

(declare-fun res!811594 () Bool)

(assert (=> d!133779 (=> res!811594 e!693719)))

(assert (=> d!133779 (= res!811594 (bvsge #b00000000000000000000000000000000 (size!38582 _keys!1208)))))

(assert (=> d!133779 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!693719)))

(declare-fun b!1221505 () Bool)

(assert (=> b!1221505 (= e!693718 e!693720)))

(declare-fun lt!555598 () (_ BitVec 64))

(assert (=> b!1221505 (= lt!555598 (select (arr!38045 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!555597 () Unit!40376)

(assert (=> b!1221505 (= lt!555597 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!555598 #b00000000000000000000000000000000))))

(assert (=> b!1221505 (arrayContainsKey!0 _keys!1208 lt!555598 #b00000000000000000000000000000000)))

(declare-fun lt!555599 () Unit!40376)

(assert (=> b!1221505 (= lt!555599 lt!555597)))

(declare-fun res!811595 () Bool)

(declare-datatypes ((SeekEntryResult!9946 0))(
  ( (MissingZero!9946 (index!42154 (_ BitVec 32))) (Found!9946 (index!42155 (_ BitVec 32))) (Intermediate!9946 (undefined!10758 Bool) (index!42156 (_ BitVec 32)) (x!107576 (_ BitVec 32))) (Undefined!9946) (MissingVacant!9946 (index!42157 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78840 (_ BitVec 32)) SeekEntryResult!9946)

(assert (=> b!1221505 (= res!811595 (= (seekEntryOrOpen!0 (select (arr!38045 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9946 #b00000000000000000000000000000000)))))

(assert (=> b!1221505 (=> (not res!811595) (not e!693720))))

(declare-fun b!1221506 () Bool)

(assert (=> b!1221506 (= e!693718 call!60729)))

(assert (= (and d!133779 (not res!811594)) b!1221503))

(assert (= (and b!1221503 c!120225) b!1221505))

(assert (= (and b!1221503 (not c!120225)) b!1221506))

(assert (= (and b!1221505 res!811595) b!1221504))

(assert (= (or b!1221504 b!1221506) bm!60726))

(declare-fun m!1126459 () Bool)

(assert (=> b!1221503 m!1126459))

(assert (=> b!1221503 m!1126459))

(declare-fun m!1126461 () Bool)

(assert (=> b!1221503 m!1126461))

(declare-fun m!1126463 () Bool)

(assert (=> bm!60726 m!1126463))

(assert (=> b!1221505 m!1126459))

(declare-fun m!1126465 () Bool)

(assert (=> b!1221505 m!1126465))

(declare-fun m!1126467 () Bool)

(assert (=> b!1221505 m!1126467))

(assert (=> b!1221505 m!1126459))

(declare-fun m!1126469 () Bool)

(assert (=> b!1221505 m!1126469))

(assert (=> b!1221407 d!133779))

(declare-fun d!133781 () Bool)

(declare-fun res!811602 () Bool)

(declare-fun e!693729 () Bool)

(assert (=> d!133781 (=> res!811602 e!693729)))

(assert (=> d!133781 (= res!811602 (bvsge from!1455 (size!38582 _keys!1208)))))

(assert (=> d!133781 (= (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27008) e!693729)))

(declare-fun b!1221517 () Bool)

(declare-fun e!693731 () Bool)

(declare-fun call!60732 () Bool)

(assert (=> b!1221517 (= e!693731 call!60732)))

(declare-fun b!1221518 () Bool)

(declare-fun e!693732 () Bool)

(assert (=> b!1221518 (= e!693732 (contains!7042 Nil!27008 (select (arr!38045 _keys!1208) from!1455)))))

(declare-fun b!1221519 () Bool)

(assert (=> b!1221519 (= e!693731 call!60732)))

(declare-fun c!120228 () Bool)

(declare-fun bm!60729 () Bool)

(assert (=> bm!60729 (= call!60732 (arrayNoDuplicates!0 _keys!1208 (bvadd from!1455 #b00000000000000000000000000000001) (ite c!120228 (Cons!27007 (select (arr!38045 _keys!1208) from!1455) Nil!27008) Nil!27008)))))

(declare-fun b!1221520 () Bool)

(declare-fun e!693730 () Bool)

(assert (=> b!1221520 (= e!693729 e!693730)))

(declare-fun res!811604 () Bool)

(assert (=> b!1221520 (=> (not res!811604) (not e!693730))))

(assert (=> b!1221520 (= res!811604 (not e!693732))))

(declare-fun res!811603 () Bool)

(assert (=> b!1221520 (=> (not res!811603) (not e!693732))))

(assert (=> b!1221520 (= res!811603 (validKeyInArray!0 (select (arr!38045 _keys!1208) from!1455)))))

(declare-fun b!1221521 () Bool)

(assert (=> b!1221521 (= e!693730 e!693731)))

(assert (=> b!1221521 (= c!120228 (validKeyInArray!0 (select (arr!38045 _keys!1208) from!1455)))))

(assert (= (and d!133781 (not res!811602)) b!1221520))

(assert (= (and b!1221520 res!811603) b!1221518))

(assert (= (and b!1221520 res!811604) b!1221521))

(assert (= (and b!1221521 c!120228) b!1221517))

(assert (= (and b!1221521 (not c!120228)) b!1221519))

(assert (= (or b!1221517 b!1221519) bm!60729))

(assert (=> b!1221518 m!1126337))

(assert (=> b!1221518 m!1126337))

(declare-fun m!1126471 () Bool)

(assert (=> b!1221518 m!1126471))

(assert (=> bm!60729 m!1126337))

(declare-fun m!1126473 () Bool)

(assert (=> bm!60729 m!1126473))

(assert (=> b!1221520 m!1126337))

(assert (=> b!1221520 m!1126337))

(assert (=> b!1221520 m!1126359))

(assert (=> b!1221521 m!1126337))

(assert (=> b!1221521 m!1126337))

(assert (=> b!1221521 m!1126359))

(assert (=> b!1221416 d!133781))

(declare-fun d!133783 () Bool)

(assert (=> d!133783 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27008)))

(declare-fun lt!555602 () Unit!40376)

(declare-fun choose!39 (array!78840 (_ BitVec 32) (_ BitVec 32)) Unit!40376)

(assert (=> d!133783 (= lt!555602 (choose!39 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> d!133783 (bvslt (size!38582 _keys!1208) #b01111111111111111111111111111111)))

(assert (=> d!133783 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455) lt!555602)))

(declare-fun bs!34377 () Bool)

(assert (= bs!34377 d!133783))

(assert (=> bs!34377 m!1126321))

(declare-fun m!1126475 () Bool)

(assert (=> bs!34377 m!1126475))

(assert (=> b!1221416 d!133783))

(declare-fun d!133785 () Bool)

(declare-fun res!811609 () Bool)

(declare-fun e!693737 () Bool)

(assert (=> d!133785 (=> res!811609 e!693737)))

(assert (=> d!133785 (= res!811609 (= (select (arr!38045 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!133785 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!693737)))

(declare-fun b!1221526 () Bool)

(declare-fun e!693738 () Bool)

(assert (=> b!1221526 (= e!693737 e!693738)))

(declare-fun res!811610 () Bool)

(assert (=> b!1221526 (=> (not res!811610) (not e!693738))))

(assert (=> b!1221526 (= res!811610 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38582 _keys!1208)))))

(declare-fun b!1221527 () Bool)

(assert (=> b!1221527 (= e!693738 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!133785 (not res!811609)) b!1221526))

(assert (= (and b!1221526 res!811610) b!1221527))

(declare-fun m!1126477 () Bool)

(assert (=> d!133785 m!1126477))

(declare-fun m!1126479 () Bool)

(assert (=> b!1221527 m!1126479))

(assert (=> b!1221416 d!133785))

(declare-fun d!133787 () Bool)

(assert (=> d!133787 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555605 () Unit!40376)

(declare-fun choose!114 (array!78840 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40376)

(assert (=> d!133787 (= lt!555605 (choose!114 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> d!133787 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133787 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)) lt!555605)))

(declare-fun bs!34378 () Bool)

(assert (= bs!34378 d!133787))

(assert (=> bs!34378 m!1126325))

(declare-fun m!1126481 () Bool)

(assert (=> bs!34378 m!1126481))

(assert (=> b!1221416 d!133787))

(declare-fun d!133789 () Bool)

(assert (=> d!133789 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1221405 d!133789))

(declare-fun d!133791 () Bool)

(declare-fun res!811611 () Bool)

(declare-fun e!693739 () Bool)

(assert (=> d!133791 (=> res!811611 e!693739)))

(assert (=> d!133791 (= res!811611 (bvsge #b00000000000000000000000000000000 (size!38582 lt!555543)))))

(assert (=> d!133791 (= (arrayNoDuplicates!0 lt!555543 #b00000000000000000000000000000000 Nil!27008) e!693739)))

(declare-fun b!1221528 () Bool)

(declare-fun e!693741 () Bool)

(declare-fun call!60733 () Bool)

(assert (=> b!1221528 (= e!693741 call!60733)))

(declare-fun b!1221529 () Bool)

(declare-fun e!693742 () Bool)

(assert (=> b!1221529 (= e!693742 (contains!7042 Nil!27008 (select (arr!38045 lt!555543) #b00000000000000000000000000000000)))))

(declare-fun b!1221530 () Bool)

(assert (=> b!1221530 (= e!693741 call!60733)))

(declare-fun bm!60730 () Bool)

(declare-fun c!120229 () Bool)

(assert (=> bm!60730 (= call!60733 (arrayNoDuplicates!0 lt!555543 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120229 (Cons!27007 (select (arr!38045 lt!555543) #b00000000000000000000000000000000) Nil!27008) Nil!27008)))))

(declare-fun b!1221531 () Bool)

(declare-fun e!693740 () Bool)

(assert (=> b!1221531 (= e!693739 e!693740)))

(declare-fun res!811613 () Bool)

(assert (=> b!1221531 (=> (not res!811613) (not e!693740))))

(assert (=> b!1221531 (= res!811613 (not e!693742))))

(declare-fun res!811612 () Bool)

(assert (=> b!1221531 (=> (not res!811612) (not e!693742))))

(assert (=> b!1221531 (= res!811612 (validKeyInArray!0 (select (arr!38045 lt!555543) #b00000000000000000000000000000000)))))

(declare-fun b!1221532 () Bool)

(assert (=> b!1221532 (= e!693740 e!693741)))

(assert (=> b!1221532 (= c!120229 (validKeyInArray!0 (select (arr!38045 lt!555543) #b00000000000000000000000000000000)))))

(assert (= (and d!133791 (not res!811611)) b!1221531))

(assert (= (and b!1221531 res!811612) b!1221529))

(assert (= (and b!1221531 res!811613) b!1221532))

(assert (= (and b!1221532 c!120229) b!1221528))

(assert (= (and b!1221532 (not c!120229)) b!1221530))

(assert (= (or b!1221528 b!1221530) bm!60730))

(declare-fun m!1126483 () Bool)

(assert (=> b!1221529 m!1126483))

(assert (=> b!1221529 m!1126483))

(declare-fun m!1126485 () Bool)

(assert (=> b!1221529 m!1126485))

(assert (=> bm!60730 m!1126483))

(declare-fun m!1126487 () Bool)

(assert (=> bm!60730 m!1126487))

(assert (=> b!1221531 m!1126483))

(assert (=> b!1221531 m!1126483))

(declare-fun m!1126489 () Bool)

(assert (=> b!1221531 m!1126489))

(assert (=> b!1221532 m!1126483))

(assert (=> b!1221532 m!1126483))

(assert (=> b!1221532 m!1126489))

(assert (=> b!1221406 d!133791))

(declare-fun d!133793 () Bool)

(declare-fun res!811618 () Bool)

(declare-fun e!693747 () Bool)

(assert (=> d!133793 (=> res!811618 e!693747)))

(assert (=> d!133793 (= res!811618 ((_ is Nil!27008) Nil!27008))))

(assert (=> d!133793 (= (noDuplicate!1656 Nil!27008) e!693747)))

(declare-fun b!1221537 () Bool)

(declare-fun e!693748 () Bool)

(assert (=> b!1221537 (= e!693747 e!693748)))

(declare-fun res!811619 () Bool)

(assert (=> b!1221537 (=> (not res!811619) (not e!693748))))

(assert (=> b!1221537 (= res!811619 (not (contains!7042 (t!40335 Nil!27008) (h!28216 Nil!27008))))))

(declare-fun b!1221538 () Bool)

(assert (=> b!1221538 (= e!693748 (noDuplicate!1656 (t!40335 Nil!27008)))))

(assert (= (and d!133793 (not res!811618)) b!1221537))

(assert (= (and b!1221537 res!811619) b!1221538))

(declare-fun m!1126491 () Bool)

(assert (=> b!1221537 m!1126491))

(declare-fun m!1126493 () Bool)

(assert (=> b!1221538 m!1126493))

(assert (=> b!1221415 d!133793))

(declare-fun d!133795 () Bool)

(declare-fun e!693751 () Bool)

(assert (=> d!133795 e!693751))

(declare-fun res!811624 () Bool)

(assert (=> d!133795 (=> (not res!811624) (not e!693751))))

(declare-fun lt!555617 () ListLongMap!18177)

(declare-fun contains!7044 (ListLongMap!18177 (_ BitVec 64)) Bool)

(assert (=> d!133795 (= res!811624 (contains!7044 lt!555617 (_1!10108 (tuple2!20197 (select (arr!38045 _keys!1208) from!1455) (get!19457 (select (arr!38044 _values!996) from!1455) lt!555548)))))))

(declare-fun lt!555615 () List!27012)

(assert (=> d!133795 (= lt!555617 (ListLongMap!18178 lt!555615))))

(declare-fun lt!555614 () Unit!40376)

(declare-fun lt!555616 () Unit!40376)

(assert (=> d!133795 (= lt!555614 lt!555616)))

(declare-datatypes ((Option!701 0))(
  ( (Some!700 (v!18240 V!46515)) (None!699) )
))
(declare-fun getValueByKey!650 (List!27012 (_ BitVec 64)) Option!701)

(assert (=> d!133795 (= (getValueByKey!650 lt!555615 (_1!10108 (tuple2!20197 (select (arr!38045 _keys!1208) from!1455) (get!19457 (select (arr!38044 _values!996) from!1455) lt!555548)))) (Some!700 (_2!10108 (tuple2!20197 (select (arr!38045 _keys!1208) from!1455) (get!19457 (select (arr!38044 _values!996) from!1455) lt!555548)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!325 (List!27012 (_ BitVec 64) V!46515) Unit!40376)

(assert (=> d!133795 (= lt!555616 (lemmaContainsTupThenGetReturnValue!325 lt!555615 (_1!10108 (tuple2!20197 (select (arr!38045 _keys!1208) from!1455) (get!19457 (select (arr!38044 _values!996) from!1455) lt!555548))) (_2!10108 (tuple2!20197 (select (arr!38045 _keys!1208) from!1455) (get!19457 (select (arr!38044 _values!996) from!1455) lt!555548)))))))

(declare-fun insertStrictlySorted!417 (List!27012 (_ BitVec 64) V!46515) List!27012)

(assert (=> d!133795 (= lt!555615 (insertStrictlySorted!417 (toList!9104 lt!555540) (_1!10108 (tuple2!20197 (select (arr!38045 _keys!1208) from!1455) (get!19457 (select (arr!38044 _values!996) from!1455) lt!555548))) (_2!10108 (tuple2!20197 (select (arr!38045 _keys!1208) from!1455) (get!19457 (select (arr!38044 _values!996) from!1455) lt!555548)))))))

(assert (=> d!133795 (= (+!4075 lt!555540 (tuple2!20197 (select (arr!38045 _keys!1208) from!1455) (get!19457 (select (arr!38044 _values!996) from!1455) lt!555548))) lt!555617)))

(declare-fun b!1221543 () Bool)

(declare-fun res!811625 () Bool)

(assert (=> b!1221543 (=> (not res!811625) (not e!693751))))

(assert (=> b!1221543 (= res!811625 (= (getValueByKey!650 (toList!9104 lt!555617) (_1!10108 (tuple2!20197 (select (arr!38045 _keys!1208) from!1455) (get!19457 (select (arr!38044 _values!996) from!1455) lt!555548)))) (Some!700 (_2!10108 (tuple2!20197 (select (arr!38045 _keys!1208) from!1455) (get!19457 (select (arr!38044 _values!996) from!1455) lt!555548))))))))

(declare-fun b!1221544 () Bool)

(declare-fun contains!7045 (List!27012 tuple2!20196) Bool)

(assert (=> b!1221544 (= e!693751 (contains!7045 (toList!9104 lt!555617) (tuple2!20197 (select (arr!38045 _keys!1208) from!1455) (get!19457 (select (arr!38044 _values!996) from!1455) lt!555548))))))

(assert (= (and d!133795 res!811624) b!1221543))

(assert (= (and b!1221543 res!811625) b!1221544))

(declare-fun m!1126495 () Bool)

(assert (=> d!133795 m!1126495))

(declare-fun m!1126497 () Bool)

(assert (=> d!133795 m!1126497))

(declare-fun m!1126499 () Bool)

(assert (=> d!133795 m!1126499))

(declare-fun m!1126501 () Bool)

(assert (=> d!133795 m!1126501))

(declare-fun m!1126503 () Bool)

(assert (=> b!1221543 m!1126503))

(declare-fun m!1126505 () Bool)

(assert (=> b!1221544 m!1126505))

(assert (=> b!1221413 d!133795))

(declare-fun d!133797 () Bool)

(declare-fun c!120232 () Bool)

(assert (=> d!133797 (= c!120232 ((_ is ValueCellFull!14811) (select (arr!38044 _values!996) from!1455)))))

(declare-fun e!693754 () V!46515)

(assert (=> d!133797 (= (get!19457 (select (arr!38044 _values!996) from!1455) lt!555548) e!693754)))

(declare-fun b!1221549 () Bool)

(declare-fun get!19458 (ValueCell!14811 V!46515) V!46515)

(assert (=> b!1221549 (= e!693754 (get!19458 (select (arr!38044 _values!996) from!1455) lt!555548))))

(declare-fun b!1221550 () Bool)

(declare-fun get!19459 (ValueCell!14811 V!46515) V!46515)

(assert (=> b!1221550 (= e!693754 (get!19459 (select (arr!38044 _values!996) from!1455) lt!555548))))

(assert (= (and d!133797 c!120232) b!1221549))

(assert (= (and d!133797 (not c!120232)) b!1221550))

(assert (=> b!1221549 m!1126369))

(declare-fun m!1126507 () Bool)

(assert (=> b!1221549 m!1126507))

(assert (=> b!1221550 m!1126369))

(declare-fun m!1126509 () Bool)

(assert (=> b!1221550 m!1126509))

(assert (=> b!1221413 d!133797))

(declare-fun d!133799 () Bool)

(assert (=> d!133799 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1221414 d!133799))

(declare-fun d!133801 () Bool)

(assert (=> d!133801 (= (validKeyInArray!0 (select (arr!38045 _keys!1208) from!1455)) (and (not (= (select (arr!38045 _keys!1208) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38045 _keys!1208) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1221412 d!133801))

(declare-fun b!1221575 () Bool)

(declare-fun e!693772 () Bool)

(declare-fun e!693770 () Bool)

(assert (=> b!1221575 (= e!693772 e!693770)))

(declare-fun c!120242 () Bool)

(assert (=> b!1221575 (= c!120242 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38582 lt!555543)))))

(declare-fun b!1221576 () Bool)

(declare-fun e!693769 () Bool)

(assert (=> b!1221576 (= e!693769 e!693772)))

(declare-fun c!120244 () Bool)

(declare-fun e!693775 () Bool)

(assert (=> b!1221576 (= c!120244 e!693775)))

(declare-fun res!811636 () Bool)

(assert (=> b!1221576 (=> (not res!811636) (not e!693775))))

(assert (=> b!1221576 (= res!811636 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38582 lt!555543)))))

(declare-fun d!133803 () Bool)

(assert (=> d!133803 e!693769))

(declare-fun res!811634 () Bool)

(assert (=> d!133803 (=> (not res!811634) (not e!693769))))

(declare-fun lt!555637 () ListLongMap!18177)

(assert (=> d!133803 (= res!811634 (not (contains!7044 lt!555637 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!693771 () ListLongMap!18177)

(assert (=> d!133803 (= lt!555637 e!693771)))

(declare-fun c!120241 () Bool)

(assert (=> d!133803 (= c!120241 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38582 lt!555543)))))

(assert (=> d!133803 (validMask!0 mask!1564)))

(assert (=> d!133803 (= (getCurrentListMapNoExtraKeys!5502 lt!555543 lt!555544 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!555637)))

(declare-fun b!1221577 () Bool)

(declare-fun e!693774 () ListLongMap!18177)

(declare-fun call!60736 () ListLongMap!18177)

(assert (=> b!1221577 (= e!693774 call!60736)))

(declare-fun b!1221578 () Bool)

(declare-fun res!811637 () Bool)

(assert (=> b!1221578 (=> (not res!811637) (not e!693769))))

(assert (=> b!1221578 (= res!811637 (not (contains!7044 lt!555637 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1221579 () Bool)

(assert (=> b!1221579 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38582 lt!555543)))))

(assert (=> b!1221579 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38581 lt!555544)))))

(declare-fun e!693773 () Bool)

(declare-fun apply!1011 (ListLongMap!18177 (_ BitVec 64)) V!46515)

(assert (=> b!1221579 (= e!693773 (= (apply!1011 lt!555637 (select (arr!38045 lt!555543) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19457 (select (arr!38044 lt!555544) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!60733 () Bool)

(assert (=> bm!60733 (= call!60736 (getCurrentListMapNoExtraKeys!5502 lt!555543 lt!555544 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1221580 () Bool)

(assert (=> b!1221580 (= e!693771 (ListLongMap!18178 Nil!27009))))

(declare-fun b!1221581 () Bool)

(declare-fun lt!555638 () Unit!40376)

(declare-fun lt!555634 () Unit!40376)

(assert (=> b!1221581 (= lt!555638 lt!555634)))

(declare-fun lt!555633 () V!46515)

(declare-fun lt!555632 () ListLongMap!18177)

(declare-fun lt!555635 () (_ BitVec 64))

(declare-fun lt!555636 () (_ BitVec 64))

(assert (=> b!1221581 (not (contains!7044 (+!4075 lt!555632 (tuple2!20197 lt!555636 lt!555633)) lt!555635))))

(declare-fun addStillNotContains!306 (ListLongMap!18177 (_ BitVec 64) V!46515 (_ BitVec 64)) Unit!40376)

(assert (=> b!1221581 (= lt!555634 (addStillNotContains!306 lt!555632 lt!555636 lt!555633 lt!555635))))

(assert (=> b!1221581 (= lt!555635 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1221581 (= lt!555633 (get!19457 (select (arr!38044 lt!555544) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1221581 (= lt!555636 (select (arr!38045 lt!555543) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1221581 (= lt!555632 call!60736)))

(assert (=> b!1221581 (= e!693774 (+!4075 call!60736 (tuple2!20197 (select (arr!38045 lt!555543) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19457 (select (arr!38044 lt!555544) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1221582 () Bool)

(assert (=> b!1221582 (= e!693775 (validKeyInArray!0 (select (arr!38045 lt!555543) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1221582 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1221583 () Bool)

(assert (=> b!1221583 (= e!693771 e!693774)))

(declare-fun c!120243 () Bool)

(assert (=> b!1221583 (= c!120243 (validKeyInArray!0 (select (arr!38045 lt!555543) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1221584 () Bool)

(assert (=> b!1221584 (= e!693770 (= lt!555637 (getCurrentListMapNoExtraKeys!5502 lt!555543 lt!555544 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1221585 () Bool)

(assert (=> b!1221585 (= e!693772 e!693773)))

(assert (=> b!1221585 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38582 lt!555543)))))

(declare-fun res!811635 () Bool)

(assert (=> b!1221585 (= res!811635 (contains!7044 lt!555637 (select (arr!38045 lt!555543) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1221585 (=> (not res!811635) (not e!693773))))

(declare-fun b!1221586 () Bool)

(declare-fun isEmpty!1003 (ListLongMap!18177) Bool)

(assert (=> b!1221586 (= e!693770 (isEmpty!1003 lt!555637))))

(assert (= (and d!133803 c!120241) b!1221580))

(assert (= (and d!133803 (not c!120241)) b!1221583))

(assert (= (and b!1221583 c!120243) b!1221581))

(assert (= (and b!1221583 (not c!120243)) b!1221577))

(assert (= (or b!1221581 b!1221577) bm!60733))

(assert (= (and d!133803 res!811634) b!1221578))

(assert (= (and b!1221578 res!811637) b!1221576))

(assert (= (and b!1221576 res!811636) b!1221582))

(assert (= (and b!1221576 c!120244) b!1221585))

(assert (= (and b!1221576 (not c!120244)) b!1221575))

(assert (= (and b!1221585 res!811635) b!1221579))

(assert (= (and b!1221575 c!120242) b!1221584))

(assert (= (and b!1221575 (not c!120242)) b!1221586))

(declare-fun b_lambda!22257 () Bool)

(assert (=> (not b_lambda!22257) (not b!1221579)))

(assert (=> b!1221579 t!40334))

(declare-fun b_and!43917 () Bool)

(assert (= b_and!43911 (and (=> t!40334 result!22891) b_and!43917)))

(declare-fun b_lambda!22259 () Bool)

(assert (=> (not b_lambda!22259) (not b!1221581)))

(assert (=> b!1221581 t!40334))

(declare-fun b_and!43919 () Bool)

(assert (= b_and!43917 (and (=> t!40334 result!22891) b_and!43919)))

(declare-fun m!1126511 () Bool)

(assert (=> b!1221579 m!1126511))

(assert (=> b!1221579 m!1126381))

(declare-fun m!1126513 () Bool)

(assert (=> b!1221579 m!1126513))

(declare-fun m!1126515 () Bool)

(assert (=> b!1221579 m!1126515))

(declare-fun m!1126517 () Bool)

(assert (=> b!1221579 m!1126517))

(assert (=> b!1221579 m!1126515))

(assert (=> b!1221579 m!1126511))

(assert (=> b!1221579 m!1126381))

(declare-fun m!1126519 () Bool)

(assert (=> b!1221586 m!1126519))

(declare-fun m!1126521 () Bool)

(assert (=> bm!60733 m!1126521))

(declare-fun m!1126523 () Bool)

(assert (=> d!133803 m!1126523))

(assert (=> d!133803 m!1126319))

(assert (=> b!1221583 m!1126515))

(assert (=> b!1221583 m!1126515))

(declare-fun m!1126525 () Bool)

(assert (=> b!1221583 m!1126525))

(assert (=> b!1221585 m!1126515))

(assert (=> b!1221585 m!1126515))

(declare-fun m!1126527 () Bool)

(assert (=> b!1221585 m!1126527))

(assert (=> b!1221582 m!1126515))

(assert (=> b!1221582 m!1126515))

(assert (=> b!1221582 m!1126525))

(assert (=> b!1221584 m!1126521))

(declare-fun m!1126529 () Bool)

(assert (=> b!1221581 m!1126529))

(declare-fun m!1126531 () Bool)

(assert (=> b!1221581 m!1126531))

(assert (=> b!1221581 m!1126515))

(declare-fun m!1126533 () Bool)

(assert (=> b!1221581 m!1126533))

(assert (=> b!1221581 m!1126511))

(assert (=> b!1221581 m!1126381))

(assert (=> b!1221581 m!1126529))

(assert (=> b!1221581 m!1126511))

(assert (=> b!1221581 m!1126381))

(assert (=> b!1221581 m!1126513))

(declare-fun m!1126535 () Bool)

(assert (=> b!1221581 m!1126535))

(declare-fun m!1126537 () Bool)

(assert (=> b!1221578 m!1126537))

(assert (=> b!1221412 d!133803))

(declare-fun b!1221593 () Bool)

(declare-fun e!693781 () Bool)

(declare-fun call!60741 () ListLongMap!18177)

(declare-fun call!60742 () ListLongMap!18177)

(assert (=> b!1221593 (= e!693781 (= call!60741 call!60742))))

(assert (=> b!1221593 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38581 _values!996)))))

(declare-fun bm!60738 () Bool)

(assert (=> bm!60738 (= call!60741 (getCurrentListMapNoExtraKeys!5502 (array!78841 (store (arr!38045 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38582 _keys!1208)) (array!78839 (store (arr!38044 _values!996) i!673 (ValueCellFull!14811 (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38581 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun d!133805 () Bool)

(declare-fun e!693780 () Bool)

(assert (=> d!133805 e!693780))

(declare-fun res!811640 () Bool)

(assert (=> d!133805 (=> (not res!811640) (not e!693780))))

(assert (=> d!133805 (= res!811640 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38582 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38582 _keys!1208))))))))

(declare-fun lt!555641 () Unit!40376)

(declare-fun choose!1834 (array!78840 array!78838 (_ BitVec 32) (_ BitVec 32) V!46515 V!46515 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40376)

(assert (=> d!133805 (= lt!555641 (choose!1834 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133805 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38582 _keys!1208)))))

(assert (=> d!133805 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1150 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!555641)))

(declare-fun b!1221594 () Bool)

(assert (=> b!1221594 (= e!693780 e!693781)))

(declare-fun c!120247 () Bool)

(assert (=> b!1221594 (= c!120247 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun b!1221595 () Bool)

(assert (=> b!1221595 (= e!693781 (= call!60741 (-!1948 call!60742 k0!934)))))

(assert (=> b!1221595 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38581 _values!996)))))

(declare-fun bm!60739 () Bool)

(assert (=> bm!60739 (= call!60742 (getCurrentListMapNoExtraKeys!5502 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and d!133805 res!811640) b!1221594))

(assert (= (and b!1221594 c!120247) b!1221595))

(assert (= (and b!1221594 (not c!120247)) b!1221593))

(assert (= (or b!1221595 b!1221593) bm!60739))

(assert (= (or b!1221595 b!1221593) bm!60738))

(declare-fun b_lambda!22261 () Bool)

(assert (=> (not b_lambda!22261) (not bm!60738)))

(assert (=> bm!60738 t!40334))

(declare-fun b_and!43921 () Bool)

(assert (= b_and!43919 (and (=> t!40334 result!22891) b_and!43921)))

(assert (=> bm!60738 m!1126363))

(assert (=> bm!60738 m!1126381))

(declare-fun m!1126539 () Bool)

(assert (=> bm!60738 m!1126539))

(declare-fun m!1126541 () Bool)

(assert (=> bm!60738 m!1126541))

(declare-fun m!1126543 () Bool)

(assert (=> d!133805 m!1126543))

(declare-fun m!1126545 () Bool)

(assert (=> b!1221595 m!1126545))

(assert (=> bm!60739 m!1126351))

(assert (=> b!1221412 d!133805))

(declare-fun d!133807 () Bool)

(declare-fun lt!555644 () ListLongMap!18177)

(assert (=> d!133807 (not (contains!7044 lt!555644 k0!934))))

(declare-fun removeStrictlySorted!110 (List!27012 (_ BitVec 64)) List!27012)

(assert (=> d!133807 (= lt!555644 (ListLongMap!18178 (removeStrictlySorted!110 (toList!9104 lt!555546) k0!934)))))

(assert (=> d!133807 (= (-!1948 lt!555546 k0!934) lt!555644)))

(declare-fun bs!34379 () Bool)

(assert (= bs!34379 d!133807))

(declare-fun m!1126547 () Bool)

(assert (=> bs!34379 m!1126547))

(declare-fun m!1126549 () Bool)

(assert (=> bs!34379 m!1126549))

(assert (=> b!1221412 d!133807))

(declare-fun b!1221596 () Bool)

(declare-fun e!693785 () Bool)

(declare-fun e!693783 () Bool)

(assert (=> b!1221596 (= e!693785 e!693783)))

(declare-fun c!120249 () Bool)

(assert (=> b!1221596 (= c!120249 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38582 _keys!1208)))))

(declare-fun b!1221597 () Bool)

(declare-fun e!693782 () Bool)

(assert (=> b!1221597 (= e!693782 e!693785)))

(declare-fun c!120251 () Bool)

(declare-fun e!693788 () Bool)

(assert (=> b!1221597 (= c!120251 e!693788)))

(declare-fun res!811643 () Bool)

(assert (=> b!1221597 (=> (not res!811643) (not e!693788))))

(assert (=> b!1221597 (= res!811643 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38582 _keys!1208)))))

(declare-fun d!133809 () Bool)

(assert (=> d!133809 e!693782))

(declare-fun res!811641 () Bool)

(assert (=> d!133809 (=> (not res!811641) (not e!693782))))

(declare-fun lt!555650 () ListLongMap!18177)

(assert (=> d!133809 (= res!811641 (not (contains!7044 lt!555650 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!693784 () ListLongMap!18177)

(assert (=> d!133809 (= lt!555650 e!693784)))

(declare-fun c!120248 () Bool)

(assert (=> d!133809 (= c!120248 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38582 _keys!1208)))))

(assert (=> d!133809 (validMask!0 mask!1564)))

(assert (=> d!133809 (= (getCurrentListMapNoExtraKeys!5502 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!555650)))

(declare-fun b!1221598 () Bool)

(declare-fun e!693787 () ListLongMap!18177)

(declare-fun call!60743 () ListLongMap!18177)

(assert (=> b!1221598 (= e!693787 call!60743)))

(declare-fun b!1221599 () Bool)

(declare-fun res!811644 () Bool)

(assert (=> b!1221599 (=> (not res!811644) (not e!693782))))

(assert (=> b!1221599 (= res!811644 (not (contains!7044 lt!555650 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1221600 () Bool)

(assert (=> b!1221600 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38582 _keys!1208)))))

(assert (=> b!1221600 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38581 _values!996)))))

(declare-fun e!693786 () Bool)

(assert (=> b!1221600 (= e!693786 (= (apply!1011 lt!555650 (select (arr!38045 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19457 (select (arr!38044 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!60740 () Bool)

(assert (=> bm!60740 (= call!60743 (getCurrentListMapNoExtraKeys!5502 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1221601 () Bool)

(assert (=> b!1221601 (= e!693784 (ListLongMap!18178 Nil!27009))))

(declare-fun b!1221602 () Bool)

(declare-fun lt!555651 () Unit!40376)

(declare-fun lt!555647 () Unit!40376)

(assert (=> b!1221602 (= lt!555651 lt!555647)))

(declare-fun lt!555648 () (_ BitVec 64))

(declare-fun lt!555649 () (_ BitVec 64))

(declare-fun lt!555645 () ListLongMap!18177)

(declare-fun lt!555646 () V!46515)

(assert (=> b!1221602 (not (contains!7044 (+!4075 lt!555645 (tuple2!20197 lt!555649 lt!555646)) lt!555648))))

(assert (=> b!1221602 (= lt!555647 (addStillNotContains!306 lt!555645 lt!555649 lt!555646 lt!555648))))

(assert (=> b!1221602 (= lt!555648 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1221602 (= lt!555646 (get!19457 (select (arr!38044 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1221602 (= lt!555649 (select (arr!38045 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1221602 (= lt!555645 call!60743)))

(assert (=> b!1221602 (= e!693787 (+!4075 call!60743 (tuple2!20197 (select (arr!38045 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19457 (select (arr!38044 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1221603 () Bool)

(assert (=> b!1221603 (= e!693788 (validKeyInArray!0 (select (arr!38045 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1221603 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1221604 () Bool)

(assert (=> b!1221604 (= e!693784 e!693787)))

(declare-fun c!120250 () Bool)

(assert (=> b!1221604 (= c!120250 (validKeyInArray!0 (select (arr!38045 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1221605 () Bool)

(assert (=> b!1221605 (= e!693783 (= lt!555650 (getCurrentListMapNoExtraKeys!5502 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1221606 () Bool)

(assert (=> b!1221606 (= e!693785 e!693786)))

(assert (=> b!1221606 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38582 _keys!1208)))))

(declare-fun res!811642 () Bool)

(assert (=> b!1221606 (= res!811642 (contains!7044 lt!555650 (select (arr!38045 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1221606 (=> (not res!811642) (not e!693786))))

(declare-fun b!1221607 () Bool)

(assert (=> b!1221607 (= e!693783 (isEmpty!1003 lt!555650))))

(assert (= (and d!133809 c!120248) b!1221601))

(assert (= (and d!133809 (not c!120248)) b!1221604))

(assert (= (and b!1221604 c!120250) b!1221602))

(assert (= (and b!1221604 (not c!120250)) b!1221598))

(assert (= (or b!1221602 b!1221598) bm!60740))

(assert (= (and d!133809 res!811641) b!1221599))

(assert (= (and b!1221599 res!811644) b!1221597))

(assert (= (and b!1221597 res!811643) b!1221603))

(assert (= (and b!1221597 c!120251) b!1221606))

(assert (= (and b!1221597 (not c!120251)) b!1221596))

(assert (= (and b!1221606 res!811642) b!1221600))

(assert (= (and b!1221596 c!120249) b!1221605))

(assert (= (and b!1221596 (not c!120249)) b!1221607))

(declare-fun b_lambda!22263 () Bool)

(assert (=> (not b_lambda!22263) (not b!1221600)))

(assert (=> b!1221600 t!40334))

(declare-fun b_and!43923 () Bool)

(assert (= b_and!43921 (and (=> t!40334 result!22891) b_and!43923)))

(declare-fun b_lambda!22265 () Bool)

(assert (=> (not b_lambda!22265) (not b!1221602)))

(assert (=> b!1221602 t!40334))

(declare-fun b_and!43925 () Bool)

(assert (= b_and!43923 (and (=> t!40334 result!22891) b_and!43925)))

(declare-fun m!1126551 () Bool)

(assert (=> b!1221600 m!1126551))

(assert (=> b!1221600 m!1126381))

(declare-fun m!1126553 () Bool)

(assert (=> b!1221600 m!1126553))

(assert (=> b!1221600 m!1126477))

(declare-fun m!1126555 () Bool)

(assert (=> b!1221600 m!1126555))

(assert (=> b!1221600 m!1126477))

(assert (=> b!1221600 m!1126551))

(assert (=> b!1221600 m!1126381))

(declare-fun m!1126557 () Bool)

(assert (=> b!1221607 m!1126557))

(declare-fun m!1126559 () Bool)

(assert (=> bm!60740 m!1126559))

(declare-fun m!1126561 () Bool)

(assert (=> d!133809 m!1126561))

(assert (=> d!133809 m!1126319))

(assert (=> b!1221604 m!1126477))

(assert (=> b!1221604 m!1126477))

(declare-fun m!1126563 () Bool)

(assert (=> b!1221604 m!1126563))

(assert (=> b!1221606 m!1126477))

(assert (=> b!1221606 m!1126477))

(declare-fun m!1126565 () Bool)

(assert (=> b!1221606 m!1126565))

(assert (=> b!1221603 m!1126477))

(assert (=> b!1221603 m!1126477))

(assert (=> b!1221603 m!1126563))

(assert (=> b!1221605 m!1126559))

(declare-fun m!1126567 () Bool)

(assert (=> b!1221602 m!1126567))

(declare-fun m!1126569 () Bool)

(assert (=> b!1221602 m!1126569))

(assert (=> b!1221602 m!1126477))

(declare-fun m!1126571 () Bool)

(assert (=> b!1221602 m!1126571))

(assert (=> b!1221602 m!1126551))

(assert (=> b!1221602 m!1126381))

(assert (=> b!1221602 m!1126567))

(assert (=> b!1221602 m!1126551))

(assert (=> b!1221602 m!1126381))

(assert (=> b!1221602 m!1126553))

(declare-fun m!1126573 () Bool)

(assert (=> b!1221602 m!1126573))

(declare-fun m!1126575 () Bool)

(assert (=> b!1221599 m!1126575))

(assert (=> b!1221412 d!133809))

(declare-fun b!1221608 () Bool)

(declare-fun e!693792 () Bool)

(declare-fun e!693790 () Bool)

(assert (=> b!1221608 (= e!693792 e!693790)))

(declare-fun c!120253 () Bool)

(assert (=> b!1221608 (= c!120253 (bvslt from!1455 (size!38582 lt!555543)))))

(declare-fun b!1221609 () Bool)

(declare-fun e!693789 () Bool)

(assert (=> b!1221609 (= e!693789 e!693792)))

(declare-fun c!120255 () Bool)

(declare-fun e!693795 () Bool)

(assert (=> b!1221609 (= c!120255 e!693795)))

(declare-fun res!811647 () Bool)

(assert (=> b!1221609 (=> (not res!811647) (not e!693795))))

(assert (=> b!1221609 (= res!811647 (bvslt from!1455 (size!38582 lt!555543)))))

(declare-fun d!133811 () Bool)

(assert (=> d!133811 e!693789))

(declare-fun res!811645 () Bool)

(assert (=> d!133811 (=> (not res!811645) (not e!693789))))

(declare-fun lt!555657 () ListLongMap!18177)

(assert (=> d!133811 (= res!811645 (not (contains!7044 lt!555657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!693791 () ListLongMap!18177)

(assert (=> d!133811 (= lt!555657 e!693791)))

(declare-fun c!120252 () Bool)

(assert (=> d!133811 (= c!120252 (bvsge from!1455 (size!38582 lt!555543)))))

(assert (=> d!133811 (validMask!0 mask!1564)))

(assert (=> d!133811 (= (getCurrentListMapNoExtraKeys!5502 lt!555543 lt!555544 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!555657)))

(declare-fun b!1221610 () Bool)

(declare-fun e!693794 () ListLongMap!18177)

(declare-fun call!60744 () ListLongMap!18177)

(assert (=> b!1221610 (= e!693794 call!60744)))

(declare-fun b!1221611 () Bool)

(declare-fun res!811648 () Bool)

(assert (=> b!1221611 (=> (not res!811648) (not e!693789))))

(assert (=> b!1221611 (= res!811648 (not (contains!7044 lt!555657 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1221612 () Bool)

(assert (=> b!1221612 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38582 lt!555543)))))

(assert (=> b!1221612 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38581 lt!555544)))))

(declare-fun e!693793 () Bool)

(assert (=> b!1221612 (= e!693793 (= (apply!1011 lt!555657 (select (arr!38045 lt!555543) from!1455)) (get!19457 (select (arr!38044 lt!555544) from!1455) (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!60741 () Bool)

(assert (=> bm!60741 (= call!60744 (getCurrentListMapNoExtraKeys!5502 lt!555543 lt!555544 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1221613 () Bool)

(assert (=> b!1221613 (= e!693791 (ListLongMap!18178 Nil!27009))))

(declare-fun b!1221614 () Bool)

(declare-fun lt!555658 () Unit!40376)

(declare-fun lt!555654 () Unit!40376)

(assert (=> b!1221614 (= lt!555658 lt!555654)))

(declare-fun lt!555652 () ListLongMap!18177)

(declare-fun lt!555653 () V!46515)

(declare-fun lt!555656 () (_ BitVec 64))

(declare-fun lt!555655 () (_ BitVec 64))

(assert (=> b!1221614 (not (contains!7044 (+!4075 lt!555652 (tuple2!20197 lt!555656 lt!555653)) lt!555655))))

(assert (=> b!1221614 (= lt!555654 (addStillNotContains!306 lt!555652 lt!555656 lt!555653 lt!555655))))

(assert (=> b!1221614 (= lt!555655 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1221614 (= lt!555653 (get!19457 (select (arr!38044 lt!555544) from!1455) (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1221614 (= lt!555656 (select (arr!38045 lt!555543) from!1455))))

(assert (=> b!1221614 (= lt!555652 call!60744)))

(assert (=> b!1221614 (= e!693794 (+!4075 call!60744 (tuple2!20197 (select (arr!38045 lt!555543) from!1455) (get!19457 (select (arr!38044 lt!555544) from!1455) (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1221615 () Bool)

(assert (=> b!1221615 (= e!693795 (validKeyInArray!0 (select (arr!38045 lt!555543) from!1455)))))

(assert (=> b!1221615 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1221616 () Bool)

(assert (=> b!1221616 (= e!693791 e!693794)))

(declare-fun c!120254 () Bool)

(assert (=> b!1221616 (= c!120254 (validKeyInArray!0 (select (arr!38045 lt!555543) from!1455)))))

(declare-fun b!1221617 () Bool)

(assert (=> b!1221617 (= e!693790 (= lt!555657 (getCurrentListMapNoExtraKeys!5502 lt!555543 lt!555544 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1221618 () Bool)

(assert (=> b!1221618 (= e!693792 e!693793)))

(assert (=> b!1221618 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38582 lt!555543)))))

(declare-fun res!811646 () Bool)

(assert (=> b!1221618 (= res!811646 (contains!7044 lt!555657 (select (arr!38045 lt!555543) from!1455)))))

(assert (=> b!1221618 (=> (not res!811646) (not e!693793))))

(declare-fun b!1221619 () Bool)

(assert (=> b!1221619 (= e!693790 (isEmpty!1003 lt!555657))))

(assert (= (and d!133811 c!120252) b!1221613))

(assert (= (and d!133811 (not c!120252)) b!1221616))

(assert (= (and b!1221616 c!120254) b!1221614))

(assert (= (and b!1221616 (not c!120254)) b!1221610))

(assert (= (or b!1221614 b!1221610) bm!60741))

(assert (= (and d!133811 res!811645) b!1221611))

(assert (= (and b!1221611 res!811648) b!1221609))

(assert (= (and b!1221609 res!811647) b!1221615))

(assert (= (and b!1221609 c!120255) b!1221618))

(assert (= (and b!1221609 (not c!120255)) b!1221608))

(assert (= (and b!1221618 res!811646) b!1221612))

(assert (= (and b!1221608 c!120253) b!1221617))

(assert (= (and b!1221608 (not c!120253)) b!1221619))

(declare-fun b_lambda!22267 () Bool)

(assert (=> (not b_lambda!22267) (not b!1221612)))

(assert (=> b!1221612 t!40334))

(declare-fun b_and!43927 () Bool)

(assert (= b_and!43925 (and (=> t!40334 result!22891) b_and!43927)))

(declare-fun b_lambda!22269 () Bool)

(assert (=> (not b_lambda!22269) (not b!1221614)))

(assert (=> b!1221614 t!40334))

(declare-fun b_and!43929 () Bool)

(assert (= b_and!43927 (and (=> t!40334 result!22891) b_and!43929)))

(declare-fun m!1126577 () Bool)

(assert (=> b!1221612 m!1126577))

(assert (=> b!1221612 m!1126381))

(declare-fun m!1126579 () Bool)

(assert (=> b!1221612 m!1126579))

(declare-fun m!1126581 () Bool)

(assert (=> b!1221612 m!1126581))

(declare-fun m!1126583 () Bool)

(assert (=> b!1221612 m!1126583))

(assert (=> b!1221612 m!1126581))

(assert (=> b!1221612 m!1126577))

(assert (=> b!1221612 m!1126381))

(declare-fun m!1126585 () Bool)

(assert (=> b!1221619 m!1126585))

(declare-fun m!1126587 () Bool)

(assert (=> bm!60741 m!1126587))

(declare-fun m!1126589 () Bool)

(assert (=> d!133811 m!1126589))

(assert (=> d!133811 m!1126319))

(assert (=> b!1221616 m!1126581))

(assert (=> b!1221616 m!1126581))

(declare-fun m!1126591 () Bool)

(assert (=> b!1221616 m!1126591))

(assert (=> b!1221618 m!1126581))

(assert (=> b!1221618 m!1126581))

(declare-fun m!1126593 () Bool)

(assert (=> b!1221618 m!1126593))

(assert (=> b!1221615 m!1126581))

(assert (=> b!1221615 m!1126581))

(assert (=> b!1221615 m!1126591))

(assert (=> b!1221617 m!1126587))

(declare-fun m!1126595 () Bool)

(assert (=> b!1221614 m!1126595))

(declare-fun m!1126597 () Bool)

(assert (=> b!1221614 m!1126597))

(assert (=> b!1221614 m!1126581))

(declare-fun m!1126599 () Bool)

(assert (=> b!1221614 m!1126599))

(assert (=> b!1221614 m!1126577))

(assert (=> b!1221614 m!1126381))

(assert (=> b!1221614 m!1126595))

(assert (=> b!1221614 m!1126577))

(assert (=> b!1221614 m!1126381))

(assert (=> b!1221614 m!1126579))

(declare-fun m!1126601 () Bool)

(assert (=> b!1221614 m!1126601))

(declare-fun m!1126603 () Bool)

(assert (=> b!1221611 m!1126603))

(assert (=> b!1221401 d!133811))

(declare-fun b!1221620 () Bool)

(declare-fun e!693799 () Bool)

(declare-fun e!693797 () Bool)

(assert (=> b!1221620 (= e!693799 e!693797)))

(declare-fun c!120257 () Bool)

(assert (=> b!1221620 (= c!120257 (bvslt from!1455 (size!38582 _keys!1208)))))

(declare-fun b!1221621 () Bool)

(declare-fun e!693796 () Bool)

(assert (=> b!1221621 (= e!693796 e!693799)))

(declare-fun c!120259 () Bool)

(declare-fun e!693802 () Bool)

(assert (=> b!1221621 (= c!120259 e!693802)))

(declare-fun res!811651 () Bool)

(assert (=> b!1221621 (=> (not res!811651) (not e!693802))))

(assert (=> b!1221621 (= res!811651 (bvslt from!1455 (size!38582 _keys!1208)))))

(declare-fun d!133813 () Bool)

(assert (=> d!133813 e!693796))

(declare-fun res!811649 () Bool)

(assert (=> d!133813 (=> (not res!811649) (not e!693796))))

(declare-fun lt!555664 () ListLongMap!18177)

(assert (=> d!133813 (= res!811649 (not (contains!7044 lt!555664 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!693798 () ListLongMap!18177)

(assert (=> d!133813 (= lt!555664 e!693798)))

(declare-fun c!120256 () Bool)

(assert (=> d!133813 (= c!120256 (bvsge from!1455 (size!38582 _keys!1208)))))

(assert (=> d!133813 (validMask!0 mask!1564)))

(assert (=> d!133813 (= (getCurrentListMapNoExtraKeys!5502 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!555664)))

(declare-fun b!1221622 () Bool)

(declare-fun e!693801 () ListLongMap!18177)

(declare-fun call!60745 () ListLongMap!18177)

(assert (=> b!1221622 (= e!693801 call!60745)))

(declare-fun b!1221623 () Bool)

(declare-fun res!811652 () Bool)

(assert (=> b!1221623 (=> (not res!811652) (not e!693796))))

(assert (=> b!1221623 (= res!811652 (not (contains!7044 lt!555664 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1221624 () Bool)

(assert (=> b!1221624 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38582 _keys!1208)))))

(assert (=> b!1221624 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38581 _values!996)))))

(declare-fun e!693800 () Bool)

(assert (=> b!1221624 (= e!693800 (= (apply!1011 lt!555664 (select (arr!38045 _keys!1208) from!1455)) (get!19457 (select (arr!38044 _values!996) from!1455) (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!60742 () Bool)

(assert (=> bm!60742 (= call!60745 (getCurrentListMapNoExtraKeys!5502 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1221625 () Bool)

(assert (=> b!1221625 (= e!693798 (ListLongMap!18178 Nil!27009))))

(declare-fun b!1221626 () Bool)

(declare-fun lt!555665 () Unit!40376)

(declare-fun lt!555661 () Unit!40376)

(assert (=> b!1221626 (= lt!555665 lt!555661)))

(declare-fun lt!555660 () V!46515)

(declare-fun lt!555663 () (_ BitVec 64))

(declare-fun lt!555662 () (_ BitVec 64))

(declare-fun lt!555659 () ListLongMap!18177)

(assert (=> b!1221626 (not (contains!7044 (+!4075 lt!555659 (tuple2!20197 lt!555663 lt!555660)) lt!555662))))

(assert (=> b!1221626 (= lt!555661 (addStillNotContains!306 lt!555659 lt!555663 lt!555660 lt!555662))))

(assert (=> b!1221626 (= lt!555662 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1221626 (= lt!555660 (get!19457 (select (arr!38044 _values!996) from!1455) (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1221626 (= lt!555663 (select (arr!38045 _keys!1208) from!1455))))

(assert (=> b!1221626 (= lt!555659 call!60745)))

(assert (=> b!1221626 (= e!693801 (+!4075 call!60745 (tuple2!20197 (select (arr!38045 _keys!1208) from!1455) (get!19457 (select (arr!38044 _values!996) from!1455) (dynLambda!3403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1221627 () Bool)

(assert (=> b!1221627 (= e!693802 (validKeyInArray!0 (select (arr!38045 _keys!1208) from!1455)))))

(assert (=> b!1221627 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1221628 () Bool)

(assert (=> b!1221628 (= e!693798 e!693801)))

(declare-fun c!120258 () Bool)

(assert (=> b!1221628 (= c!120258 (validKeyInArray!0 (select (arr!38045 _keys!1208) from!1455)))))

(declare-fun b!1221629 () Bool)

(assert (=> b!1221629 (= e!693797 (= lt!555664 (getCurrentListMapNoExtraKeys!5502 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1221630 () Bool)

(assert (=> b!1221630 (= e!693799 e!693800)))

(assert (=> b!1221630 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38582 _keys!1208)))))

(declare-fun res!811650 () Bool)

(assert (=> b!1221630 (= res!811650 (contains!7044 lt!555664 (select (arr!38045 _keys!1208) from!1455)))))

(assert (=> b!1221630 (=> (not res!811650) (not e!693800))))

(declare-fun b!1221631 () Bool)

(assert (=> b!1221631 (= e!693797 (isEmpty!1003 lt!555664))))

(assert (= (and d!133813 c!120256) b!1221625))

(assert (= (and d!133813 (not c!120256)) b!1221628))

(assert (= (and b!1221628 c!120258) b!1221626))

(assert (= (and b!1221628 (not c!120258)) b!1221622))

(assert (= (or b!1221626 b!1221622) bm!60742))

(assert (= (and d!133813 res!811649) b!1221623))

(assert (= (and b!1221623 res!811652) b!1221621))

(assert (= (and b!1221621 res!811651) b!1221627))

(assert (= (and b!1221621 c!120259) b!1221630))

(assert (= (and b!1221621 (not c!120259)) b!1221620))

(assert (= (and b!1221630 res!811650) b!1221624))

(assert (= (and b!1221620 c!120257) b!1221629))

(assert (= (and b!1221620 (not c!120257)) b!1221631))

(declare-fun b_lambda!22271 () Bool)

(assert (=> (not b_lambda!22271) (not b!1221624)))

(assert (=> b!1221624 t!40334))

(declare-fun b_and!43931 () Bool)

(assert (= b_and!43929 (and (=> t!40334 result!22891) b_and!43931)))

(declare-fun b_lambda!22273 () Bool)

(assert (=> (not b_lambda!22273) (not b!1221626)))

(assert (=> b!1221626 t!40334))

(declare-fun b_and!43933 () Bool)

(assert (= b_and!43931 (and (=> t!40334 result!22891) b_and!43933)))

(assert (=> b!1221624 m!1126369))

(assert (=> b!1221624 m!1126381))

(declare-fun m!1126605 () Bool)

(assert (=> b!1221624 m!1126605))

(assert (=> b!1221624 m!1126337))

(declare-fun m!1126607 () Bool)

(assert (=> b!1221624 m!1126607))

(assert (=> b!1221624 m!1126337))

(assert (=> b!1221624 m!1126369))

(assert (=> b!1221624 m!1126381))

(declare-fun m!1126609 () Bool)

(assert (=> b!1221631 m!1126609))

(declare-fun m!1126611 () Bool)

(assert (=> bm!60742 m!1126611))

(declare-fun m!1126613 () Bool)

(assert (=> d!133813 m!1126613))

(assert (=> d!133813 m!1126319))

(assert (=> b!1221628 m!1126337))

(assert (=> b!1221628 m!1126337))

(assert (=> b!1221628 m!1126359))

(assert (=> b!1221630 m!1126337))

(assert (=> b!1221630 m!1126337))

(declare-fun m!1126615 () Bool)

(assert (=> b!1221630 m!1126615))

(assert (=> b!1221627 m!1126337))

(assert (=> b!1221627 m!1126337))

(assert (=> b!1221627 m!1126359))

(assert (=> b!1221629 m!1126611))

(declare-fun m!1126617 () Bool)

(assert (=> b!1221626 m!1126617))

(declare-fun m!1126619 () Bool)

(assert (=> b!1221626 m!1126619))

(assert (=> b!1221626 m!1126337))

(declare-fun m!1126621 () Bool)

(assert (=> b!1221626 m!1126621))

(assert (=> b!1221626 m!1126369))

(assert (=> b!1221626 m!1126381))

(assert (=> b!1221626 m!1126617))

(assert (=> b!1221626 m!1126369))

(assert (=> b!1221626 m!1126381))

(assert (=> b!1221626 m!1126605))

(declare-fun m!1126623 () Bool)

(assert (=> b!1221626 m!1126623))

(declare-fun m!1126625 () Bool)

(assert (=> b!1221623 m!1126625))

(assert (=> b!1221401 d!133813))

(declare-fun d!133815 () Bool)

(declare-fun res!811653 () Bool)

(declare-fun e!693803 () Bool)

(assert (=> d!133815 (=> res!811653 e!693803)))

(assert (=> d!133815 (= res!811653 (= (select (arr!38045 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!133815 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!693803)))

(declare-fun b!1221632 () Bool)

(declare-fun e!693804 () Bool)

(assert (=> b!1221632 (= e!693803 e!693804)))

(declare-fun res!811654 () Bool)

(assert (=> b!1221632 (=> (not res!811654) (not e!693804))))

(assert (=> b!1221632 (= res!811654 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38582 _keys!1208)))))

(declare-fun b!1221633 () Bool)

(assert (=> b!1221633 (= e!693804 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133815 (not res!811653)) b!1221632))

(assert (= (and b!1221632 res!811654) b!1221633))

(assert (=> d!133815 m!1126459))

(declare-fun m!1126627 () Bool)

(assert (=> b!1221633 m!1126627))

(assert (=> b!1221409 d!133815))

(declare-fun d!133817 () Bool)

(assert (=> d!133817 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!555668 () Unit!40376)

(declare-fun choose!13 (array!78840 (_ BitVec 64) (_ BitVec 32)) Unit!40376)

(assert (=> d!133817 (= lt!555668 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!133817 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133817 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!555668)))

(declare-fun bs!34380 () Bool)

(assert (= bs!34380 d!133817))

(assert (=> bs!34380 m!1126345))

(declare-fun m!1126629 () Bool)

(assert (=> bs!34380 m!1126629))

(assert (=> b!1221409 d!133817))

(declare-fun d!133819 () Bool)

(assert (=> d!133819 (= (array_inv!28862 _keys!1208) (bvsge (size!38582 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!101618 d!133819))

(declare-fun d!133821 () Bool)

(assert (=> d!133821 (= (array_inv!28863 _values!996) (bvsge (size!38581 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!101618 d!133821))

(declare-fun d!133823 () Bool)

(declare-fun lt!555669 () Bool)

(assert (=> d!133823 (= lt!555669 (select (content!551 Nil!27008) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!693806 () Bool)

(assert (=> d!133823 (= lt!555669 e!693806)))

(declare-fun res!811655 () Bool)

(assert (=> d!133823 (=> (not res!811655) (not e!693806))))

(assert (=> d!133823 (= res!811655 ((_ is Cons!27007) Nil!27008))))

(assert (=> d!133823 (= (contains!7042 Nil!27008 #b0000000000000000000000000000000000000000000000000000000000000000) lt!555669)))

(declare-fun b!1221634 () Bool)

(declare-fun e!693805 () Bool)

(assert (=> b!1221634 (= e!693806 e!693805)))

(declare-fun res!811656 () Bool)

(assert (=> b!1221634 (=> res!811656 e!693805)))

(assert (=> b!1221634 (= res!811656 (= (h!28216 Nil!27008) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1221635 () Bool)

(assert (=> b!1221635 (= e!693805 (contains!7042 (t!40335 Nil!27008) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!133823 res!811655) b!1221634))

(assert (= (and b!1221634 (not res!811656)) b!1221635))

(assert (=> d!133823 m!1126453))

(declare-fun m!1126631 () Bool)

(assert (=> d!133823 m!1126631))

(declare-fun m!1126633 () Bool)

(assert (=> b!1221635 m!1126633))

(assert (=> b!1221400 d!133823))

(declare-fun d!133825 () Bool)

(declare-fun res!811657 () Bool)

(declare-fun e!693807 () Bool)

(assert (=> d!133825 (=> res!811657 e!693807)))

(assert (=> d!133825 (= res!811657 (bvsge #b00000000000000000000000000000000 (size!38582 _keys!1208)))))

(assert (=> d!133825 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27008) e!693807)))

(declare-fun b!1221636 () Bool)

(declare-fun e!693809 () Bool)

(declare-fun call!60746 () Bool)

(assert (=> b!1221636 (= e!693809 call!60746)))

(declare-fun b!1221637 () Bool)

(declare-fun e!693810 () Bool)

(assert (=> b!1221637 (= e!693810 (contains!7042 Nil!27008 (select (arr!38045 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1221638 () Bool)

(assert (=> b!1221638 (= e!693809 call!60746)))

(declare-fun bm!60743 () Bool)

(declare-fun c!120260 () Bool)

(assert (=> bm!60743 (= call!60746 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120260 (Cons!27007 (select (arr!38045 _keys!1208) #b00000000000000000000000000000000) Nil!27008) Nil!27008)))))

(declare-fun b!1221639 () Bool)

(declare-fun e!693808 () Bool)

(assert (=> b!1221639 (= e!693807 e!693808)))

(declare-fun res!811659 () Bool)

(assert (=> b!1221639 (=> (not res!811659) (not e!693808))))

(assert (=> b!1221639 (= res!811659 (not e!693810))))

(declare-fun res!811658 () Bool)

(assert (=> b!1221639 (=> (not res!811658) (not e!693810))))

(assert (=> b!1221639 (= res!811658 (validKeyInArray!0 (select (arr!38045 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1221640 () Bool)

(assert (=> b!1221640 (= e!693808 e!693809)))

(assert (=> b!1221640 (= c!120260 (validKeyInArray!0 (select (arr!38045 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!133825 (not res!811657)) b!1221639))

(assert (= (and b!1221639 res!811658) b!1221637))

(assert (= (and b!1221639 res!811659) b!1221640))

(assert (= (and b!1221640 c!120260) b!1221636))

(assert (= (and b!1221640 (not c!120260)) b!1221638))

(assert (= (or b!1221636 b!1221638) bm!60743))

(assert (=> b!1221637 m!1126459))

(assert (=> b!1221637 m!1126459))

(declare-fun m!1126635 () Bool)

(assert (=> b!1221637 m!1126635))

(assert (=> bm!60743 m!1126459))

(declare-fun m!1126637 () Bool)

(assert (=> bm!60743 m!1126637))

(assert (=> b!1221639 m!1126459))

(assert (=> b!1221639 m!1126459))

(assert (=> b!1221639 m!1126461))

(assert (=> b!1221640 m!1126459))

(assert (=> b!1221640 m!1126459))

(assert (=> b!1221640 m!1126461))

(assert (=> b!1221408 d!133825))

(declare-fun d!133827 () Bool)

(declare-fun res!811660 () Bool)

(declare-fun e!693811 () Bool)

(assert (=> d!133827 (=> res!811660 e!693811)))

(assert (=> d!133827 (= res!811660 (= (select (arr!38045 _keys!1208) i!673) k0!934))))

(assert (=> d!133827 (= (arrayContainsKey!0 _keys!1208 k0!934 i!673) e!693811)))

(declare-fun b!1221641 () Bool)

(declare-fun e!693812 () Bool)

(assert (=> b!1221641 (= e!693811 e!693812)))

(declare-fun res!811661 () Bool)

(assert (=> b!1221641 (=> (not res!811661) (not e!693812))))

(assert (=> b!1221641 (= res!811661 (bvslt (bvadd i!673 #b00000000000000000000000000000001) (size!38582 _keys!1208)))))

(declare-fun b!1221642 () Bool)

(assert (=> b!1221642 (= e!693812 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd i!673 #b00000000000000000000000000000001)))))

(assert (= (and d!133827 (not res!811660)) b!1221641))

(assert (= (and b!1221641 res!811661) b!1221642))

(assert (=> d!133827 m!1126333))

(declare-fun m!1126639 () Bool)

(assert (=> b!1221642 m!1126639))

(assert (=> b!1221398 d!133827))

(declare-fun b!1221643 () Bool)

(declare-fun e!693814 () Bool)

(declare-fun e!693813 () Bool)

(assert (=> b!1221643 (= e!693814 e!693813)))

(declare-fun c!120261 () Bool)

(assert (=> b!1221643 (= c!120261 (validKeyInArray!0 (select (arr!38045 lt!555543) #b00000000000000000000000000000000)))))

(declare-fun bm!60744 () Bool)

(declare-fun call!60747 () Bool)

(assert (=> bm!60744 (= call!60747 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!555543 mask!1564))))

(declare-fun b!1221644 () Bool)

(declare-fun e!693815 () Bool)

(assert (=> b!1221644 (= e!693815 call!60747)))

(declare-fun d!133829 () Bool)

(declare-fun res!811662 () Bool)

(assert (=> d!133829 (=> res!811662 e!693814)))

(assert (=> d!133829 (= res!811662 (bvsge #b00000000000000000000000000000000 (size!38582 lt!555543)))))

(assert (=> d!133829 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555543 mask!1564) e!693814)))

(declare-fun b!1221645 () Bool)

(assert (=> b!1221645 (= e!693813 e!693815)))

(declare-fun lt!555671 () (_ BitVec 64))

(assert (=> b!1221645 (= lt!555671 (select (arr!38045 lt!555543) #b00000000000000000000000000000000))))

(declare-fun lt!555670 () Unit!40376)

(assert (=> b!1221645 (= lt!555670 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!555543 lt!555671 #b00000000000000000000000000000000))))

(assert (=> b!1221645 (arrayContainsKey!0 lt!555543 lt!555671 #b00000000000000000000000000000000)))

(declare-fun lt!555672 () Unit!40376)

(assert (=> b!1221645 (= lt!555672 lt!555670)))

(declare-fun res!811663 () Bool)

(assert (=> b!1221645 (= res!811663 (= (seekEntryOrOpen!0 (select (arr!38045 lt!555543) #b00000000000000000000000000000000) lt!555543 mask!1564) (Found!9946 #b00000000000000000000000000000000)))))

(assert (=> b!1221645 (=> (not res!811663) (not e!693815))))

(declare-fun b!1221646 () Bool)

(assert (=> b!1221646 (= e!693813 call!60747)))

(assert (= (and d!133829 (not res!811662)) b!1221643))

(assert (= (and b!1221643 c!120261) b!1221645))

(assert (= (and b!1221643 (not c!120261)) b!1221646))

(assert (= (and b!1221645 res!811663) b!1221644))

(assert (= (or b!1221644 b!1221646) bm!60744))

(assert (=> b!1221643 m!1126483))

(assert (=> b!1221643 m!1126483))

(assert (=> b!1221643 m!1126489))

(declare-fun m!1126641 () Bool)

(assert (=> bm!60744 m!1126641))

(assert (=> b!1221645 m!1126483))

(declare-fun m!1126643 () Bool)

(assert (=> b!1221645 m!1126643))

(declare-fun m!1126645 () Bool)

(assert (=> b!1221645 m!1126645))

(assert (=> b!1221645 m!1126483))

(declare-fun m!1126647 () Bool)

(assert (=> b!1221645 m!1126647))

(assert (=> b!1221399 d!133829))

(declare-fun mapIsEmpty!48460 () Bool)

(declare-fun mapRes!48460 () Bool)

(assert (=> mapIsEmpty!48460 mapRes!48460))

(declare-fun b!1221653 () Bool)

(declare-fun e!693821 () Bool)

(assert (=> b!1221653 (= e!693821 tp_is_empty!31041)))

(declare-fun mapNonEmpty!48460 () Bool)

(declare-fun tp!92061 () Bool)

(assert (=> mapNonEmpty!48460 (= mapRes!48460 (and tp!92061 e!693821))))

(declare-fun mapKey!48460 () (_ BitVec 32))

(declare-fun mapRest!48460 () (Array (_ BitVec 32) ValueCell!14811))

(declare-fun mapValue!48460 () ValueCell!14811)

(assert (=> mapNonEmpty!48460 (= mapRest!48454 (store mapRest!48460 mapKey!48460 mapValue!48460))))

(declare-fun b!1221654 () Bool)

(declare-fun e!693820 () Bool)

(assert (=> b!1221654 (= e!693820 tp_is_empty!31041)))

(declare-fun condMapEmpty!48460 () Bool)

(declare-fun mapDefault!48460 () ValueCell!14811)

(assert (=> mapNonEmpty!48454 (= condMapEmpty!48460 (= mapRest!48454 ((as const (Array (_ BitVec 32) ValueCell!14811)) mapDefault!48460)))))

(assert (=> mapNonEmpty!48454 (= tp!92052 (and e!693820 mapRes!48460))))

(assert (= (and mapNonEmpty!48454 condMapEmpty!48460) mapIsEmpty!48460))

(assert (= (and mapNonEmpty!48454 (not condMapEmpty!48460)) mapNonEmpty!48460))

(assert (= (and mapNonEmpty!48460 ((_ is ValueCellFull!14811) mapValue!48460)) b!1221653))

(assert (= (and mapNonEmpty!48454 ((_ is ValueCellFull!14811) mapDefault!48460)) b!1221654))

(declare-fun m!1126649 () Bool)

(assert (=> mapNonEmpty!48460 m!1126649))

(declare-fun b_lambda!22275 () Bool)

(assert (= b_lambda!22257 (or (and start!101618 b_free!26337) b_lambda!22275)))

(declare-fun b_lambda!22277 () Bool)

(assert (= b_lambda!22265 (or (and start!101618 b_free!26337) b_lambda!22277)))

(declare-fun b_lambda!22279 () Bool)

(assert (= b_lambda!22263 (or (and start!101618 b_free!26337) b_lambda!22279)))

(declare-fun b_lambda!22281 () Bool)

(assert (= b_lambda!22267 (or (and start!101618 b_free!26337) b_lambda!22281)))

(declare-fun b_lambda!22283 () Bool)

(assert (= b_lambda!22259 (or (and start!101618 b_free!26337) b_lambda!22283)))

(declare-fun b_lambda!22285 () Bool)

(assert (= b_lambda!22261 (or (and start!101618 b_free!26337) b_lambda!22285)))

(declare-fun b_lambda!22287 () Bool)

(assert (= b_lambda!22273 (or (and start!101618 b_free!26337) b_lambda!22287)))

(declare-fun b_lambda!22289 () Bool)

(assert (= b_lambda!22271 (or (and start!101618 b_free!26337) b_lambda!22289)))

(declare-fun b_lambda!22291 () Bool)

(assert (= b_lambda!22269 (or (and start!101618 b_free!26337) b_lambda!22291)))

(check-sat (not d!133787) (not b!1221611) (not b!1221582) (not b!1221602) (not b!1221532) (not b!1221619) (not d!133783) (not b_lambda!22291) (not d!133803) (not d!133813) (not bm!60744) (not b!1221618) (not b!1221578) (not b!1221643) (not d!133795) (not b!1221612) (not b!1221607) (not b_lambda!22283) (not d!133807) (not b!1221630) (not b!1221543) (not b!1221624) (not bm!60742) (not b_lambda!22279) (not b!1221494) (not b!1221642) (not b!1221606) (not bm!60729) (not d!133811) (not b!1221628) (not b!1221531) (not b_lambda!22289) (not d!133805) (not b!1221521) (not b!1221549) (not d!133817) (not b!1221617) (not b!1221640) (not b_lambda!22287) (not b!1221584) (not bm!60739) (not bm!60741) (not b!1221615) (not b!1221604) (not b!1221503) (not b!1221527) (not d!133809) (not b!1221633) (not b!1221639) (not b!1221529) (not b!1221614) (not b_lambda!22255) (not b!1221518) (not b!1221599) (not bm!60733) (not mapNonEmpty!48460) (not b!1221616) (not b!1221550) (not b!1221585) (not b!1221626) (not b!1221631) (not b!1221537) (not bm!60743) (not b!1221637) (not b!1221581) (not b_lambda!22275) (not bm!60740) (not b!1221520) (not b!1221603) (not b!1221635) (not b!1221627) tp_is_empty!31041 (not b_lambda!22281) (not b!1221505) (not bm!60738) (not b_lambda!22277) b_and!43933 (not b!1221544) (not b!1221586) (not bm!60726) (not d!133823) (not d!133777) (not b!1221579) (not b!1221595) (not b!1221538) (not b!1221623) (not b!1221605) (not bm!60730) (not b!1221645) (not b_next!26337) (not b!1221600) (not b!1221629) (not b_lambda!22285) (not b!1221583))
(check-sat b_and!43933 (not b_next!26337))
