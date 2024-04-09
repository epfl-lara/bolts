; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99660 () Bool)

(assert start!99660)

(declare-fun b_free!25203 () Bool)

(declare-fun b_next!25203 () Bool)

(assert (=> start!99660 (= b_free!25203 (not b_next!25203))))

(declare-fun tp!88323 () Bool)

(declare-fun b_and!41287 () Bool)

(assert (=> start!99660 (= tp!88323 b_and!41287)))

(declare-fun b!1180417 () Bool)

(declare-fun e!671148 () Bool)

(declare-fun e!671143 () Bool)

(assert (=> b!1180417 (= e!671148 e!671143)))

(declare-fun res!784423 () Bool)

(assert (=> b!1180417 (=> (not res!784423) (not e!671143))))

(declare-datatypes ((array!76234 0))(
  ( (array!76235 (arr!36763 (Array (_ BitVec 32) (_ BitVec 64))) (size!37300 (_ BitVec 32))) )
))
(declare-fun lt!533680 () array!76234)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76234 (_ BitVec 32)) Bool)

(assert (=> b!1180417 (= res!784423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533680 mask!1564))))

(declare-fun _keys!1208 () array!76234)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1180417 (= lt!533680 (array!76235 (store (arr!36763 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37300 _keys!1208)))))

(declare-fun b!1180418 () Bool)

(declare-fun e!671149 () Bool)

(declare-fun tp_is_empty!29733 () Bool)

(assert (=> b!1180418 (= e!671149 tp_is_empty!29733)))

(declare-fun b!1180419 () Bool)

(declare-fun e!671142 () Bool)

(declare-fun mapRes!46427 () Bool)

(assert (=> b!1180419 (= e!671142 (and e!671149 mapRes!46427))))

(declare-fun condMapEmpty!46427 () Bool)

(declare-datatypes ((V!44771 0))(
  ( (V!44772 (val!14923 Int)) )
))
(declare-datatypes ((ValueCell!14157 0))(
  ( (ValueCellFull!14157 (v!17562 V!44771)) (EmptyCell!14157) )
))
(declare-datatypes ((array!76236 0))(
  ( (array!76237 (arr!36764 (Array (_ BitVec 32) ValueCell!14157)) (size!37301 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76236)

(declare-fun mapDefault!46427 () ValueCell!14157)

(assert (=> b!1180419 (= condMapEmpty!46427 (= (arr!36764 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14157)) mapDefault!46427)))))

(declare-fun b!1180420 () Bool)

(declare-fun res!784422 () Bool)

(assert (=> b!1180420 (=> (not res!784422) (not e!671148))))

(assert (=> b!1180420 (= res!784422 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37300 _keys!1208))))))

(declare-fun b!1180421 () Bool)

(declare-fun res!784431 () Bool)

(assert (=> b!1180421 (=> (not res!784431) (not e!671148))))

(assert (=> b!1180421 (= res!784431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1180422 () Bool)

(declare-fun res!784432 () Bool)

(assert (=> b!1180422 (=> (not res!784432) (not e!671148))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1180422 (= res!784432 (validKeyInArray!0 k0!934))))

(declare-fun b!1180423 () Bool)

(declare-fun res!784428 () Bool)

(assert (=> b!1180423 (=> (not res!784428) (not e!671148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1180423 (= res!784428 (validMask!0 mask!1564))))

(declare-fun b!1180424 () Bool)

(declare-fun res!784430 () Bool)

(assert (=> b!1180424 (=> (not res!784430) (not e!671148))))

(declare-datatypes ((List!25992 0))(
  ( (Nil!25989) (Cons!25988 (h!27197 (_ BitVec 64)) (t!38194 List!25992)) )
))
(declare-fun arrayNoDuplicates!0 (array!76234 (_ BitVec 32) List!25992) Bool)

(assert (=> b!1180424 (= res!784430 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25989))))

(declare-fun b!1180425 () Bool)

(declare-fun e!671138 () Bool)

(declare-fun e!671140 () Bool)

(assert (=> b!1180425 (= e!671138 e!671140)))

(declare-fun res!784416 () Bool)

(assert (=> b!1180425 (=> res!784416 e!671140)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1180425 (= res!784416 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44771)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!533692 () array!76236)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19230 0))(
  ( (tuple2!19231 (_1!9625 (_ BitVec 64)) (_2!9625 V!44771)) )
))
(declare-datatypes ((List!25993 0))(
  ( (Nil!25990) (Cons!25989 (h!27198 tuple2!19230) (t!38195 List!25993)) )
))
(declare-datatypes ((ListLongMap!17211 0))(
  ( (ListLongMap!17212 (toList!8621 List!25993)) )
))
(declare-fun lt!533682 () ListLongMap!17211)

(declare-fun minValue!944 () V!44771)

(declare-fun getCurrentListMapNoExtraKeys!5048 (array!76234 array!76236 (_ BitVec 32) (_ BitVec 32) V!44771 V!44771 (_ BitVec 32) Int) ListLongMap!17211)

(assert (=> b!1180425 (= lt!533682 (getCurrentListMapNoExtraKeys!5048 lt!533680 lt!533692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!533691 () V!44771)

(assert (=> b!1180425 (= lt!533692 (array!76237 (store (arr!36764 _values!996) i!673 (ValueCellFull!14157 lt!533691)) (size!37301 _values!996)))))

(declare-fun dynLambda!3019 (Int (_ BitVec 64)) V!44771)

(assert (=> b!1180425 (= lt!533691 (dynLambda!3019 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!533683 () ListLongMap!17211)

(assert (=> b!1180425 (= lt!533683 (getCurrentListMapNoExtraKeys!5048 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1180426 () Bool)

(declare-fun e!671141 () Bool)

(declare-fun lt!533694 () ListLongMap!17211)

(declare-fun lt!533690 () ListLongMap!17211)

(assert (=> b!1180426 (= e!671141 (= lt!533694 lt!533690))))

(declare-fun b!1180427 () Bool)

(declare-fun e!671137 () Bool)

(assert (=> b!1180427 (= e!671137 tp_is_empty!29733)))

(declare-fun res!784419 () Bool)

(assert (=> start!99660 (=> (not res!784419) (not e!671148))))

(assert (=> start!99660 (= res!784419 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37300 _keys!1208))))))

(assert (=> start!99660 e!671148))

(assert (=> start!99660 tp_is_empty!29733))

(declare-fun array_inv!27952 (array!76234) Bool)

(assert (=> start!99660 (array_inv!27952 _keys!1208)))

(assert (=> start!99660 true))

(assert (=> start!99660 tp!88323))

(declare-fun array_inv!27953 (array!76236) Bool)

(assert (=> start!99660 (and (array_inv!27953 _values!996) e!671142)))

(declare-fun b!1180428 () Bool)

(declare-fun res!784429 () Bool)

(assert (=> b!1180428 (=> (not res!784429) (not e!671141))))

(declare-fun lt!533684 () tuple2!19230)

(declare-fun lt!533689 () ListLongMap!17211)

(declare-fun +!3840 (ListLongMap!17211 tuple2!19230) ListLongMap!17211)

(assert (=> b!1180428 (= res!784429 (= lt!533683 (+!3840 lt!533689 lt!533684)))))

(declare-fun b!1180429 () Bool)

(declare-fun e!671145 () Bool)

(assert (=> b!1180429 (= e!671140 e!671145)))

(declare-fun res!784425 () Bool)

(assert (=> b!1180429 (=> res!784425 e!671145)))

(assert (=> b!1180429 (= res!784425 (not (validKeyInArray!0 (select (arr!36763 _keys!1208) from!1455))))))

(assert (=> b!1180429 (= lt!533690 lt!533694)))

(declare-fun -!1613 (ListLongMap!17211 (_ BitVec 64)) ListLongMap!17211)

(assert (=> b!1180429 (= lt!533694 (-!1613 lt!533689 k0!934))))

(assert (=> b!1180429 (= lt!533690 (getCurrentListMapNoExtraKeys!5048 lt!533680 lt!533692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1180429 (= lt!533689 (getCurrentListMapNoExtraKeys!5048 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38946 0))(
  ( (Unit!38947) )
))
(declare-fun lt!533681 () Unit!38946)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!837 (array!76234 array!76236 (_ BitVec 32) (_ BitVec 32) V!44771 V!44771 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38946)

(assert (=> b!1180429 (= lt!533681 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!837 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1180430 () Bool)

(declare-fun res!784418 () Bool)

(assert (=> b!1180430 (=> (not res!784418) (not e!671148))))

(assert (=> b!1180430 (= res!784418 (and (= (size!37301 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37300 _keys!1208) (size!37301 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun e!671147 () Bool)

(declare-fun b!1180431 () Bool)

(declare-fun arrayContainsKey!0 (array!76234 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1180431 (= e!671147 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1180432 () Bool)

(declare-fun res!784421 () Bool)

(assert (=> b!1180432 (=> (not res!784421) (not e!671148))))

(assert (=> b!1180432 (= res!784421 (= (select (arr!36763 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!46427 () Bool)

(declare-fun tp!88324 () Bool)

(assert (=> mapNonEmpty!46427 (= mapRes!46427 (and tp!88324 e!671137))))

(declare-fun mapKey!46427 () (_ BitVec 32))

(declare-fun mapRest!46427 () (Array (_ BitVec 32) ValueCell!14157))

(declare-fun mapValue!46427 () ValueCell!14157)

(assert (=> mapNonEmpty!46427 (= (arr!36764 _values!996) (store mapRest!46427 mapKey!46427 mapValue!46427))))

(declare-fun b!1180433 () Bool)

(assert (=> b!1180433 (= e!671143 (not e!671138))))

(declare-fun res!784426 () Bool)

(assert (=> b!1180433 (=> res!784426 e!671138)))

(assert (=> b!1180433 (= res!784426 (bvsgt from!1455 i!673))))

(assert (=> b!1180433 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!533687 () Unit!38946)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76234 (_ BitVec 64) (_ BitVec 32)) Unit!38946)

(assert (=> b!1180433 (= lt!533687 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1180434 () Bool)

(assert (=> b!1180434 (= e!671145 true)))

(assert (=> b!1180434 e!671141))

(declare-fun res!784424 () Bool)

(assert (=> b!1180434 (=> (not res!784424) (not e!671141))))

(assert (=> b!1180434 (= res!784424 (not (= (select (arr!36763 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!533693 () Unit!38946)

(declare-fun e!671139 () Unit!38946)

(assert (=> b!1180434 (= lt!533693 e!671139)))

(declare-fun c!116876 () Bool)

(assert (=> b!1180434 (= c!116876 (= (select (arr!36763 _keys!1208) from!1455) k0!934))))

(declare-fun e!671144 () Bool)

(assert (=> b!1180434 e!671144))

(declare-fun res!784420 () Bool)

(assert (=> b!1180434 (=> (not res!784420) (not e!671144))))

(assert (=> b!1180434 (= res!784420 (= lt!533682 (+!3840 lt!533694 lt!533684)))))

(declare-fun get!18832 (ValueCell!14157 V!44771) V!44771)

(assert (=> b!1180434 (= lt!533684 (tuple2!19231 (select (arr!36763 _keys!1208) from!1455) (get!18832 (select (arr!36764 _values!996) from!1455) lt!533691)))))

(declare-fun mapIsEmpty!46427 () Bool)

(assert (=> mapIsEmpty!46427 mapRes!46427))

(declare-fun b!1180435 () Bool)

(declare-fun Unit!38948 () Unit!38946)

(assert (=> b!1180435 (= e!671139 Unit!38948)))

(declare-fun b!1180436 () Bool)

(assert (=> b!1180436 (= e!671144 e!671147)))

(declare-fun res!784417 () Bool)

(assert (=> b!1180436 (=> res!784417 e!671147)))

(assert (=> b!1180436 (= res!784417 (not (= (select (arr!36763 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1180437 () Bool)

(declare-fun res!784427 () Bool)

(assert (=> b!1180437 (=> (not res!784427) (not e!671143))))

(assert (=> b!1180437 (= res!784427 (arrayNoDuplicates!0 lt!533680 #b00000000000000000000000000000000 Nil!25989))))

(declare-fun b!1180438 () Bool)

(declare-fun Unit!38949 () Unit!38946)

(assert (=> b!1180438 (= e!671139 Unit!38949)))

(declare-fun lt!533686 () Unit!38946)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76234 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38946)

(assert (=> b!1180438 (= lt!533686 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1180438 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!533688 () Unit!38946)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76234 (_ BitVec 32) (_ BitVec 32)) Unit!38946)

(assert (=> b!1180438 (= lt!533688 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1180438 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25989)))

(declare-fun lt!533685 () Unit!38946)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76234 (_ BitVec 64) (_ BitVec 32) List!25992) Unit!38946)

(assert (=> b!1180438 (= lt!533685 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25989))))

(assert (=> b!1180438 false))

(assert (= (and start!99660 res!784419) b!1180423))

(assert (= (and b!1180423 res!784428) b!1180430))

(assert (= (and b!1180430 res!784418) b!1180421))

(assert (= (and b!1180421 res!784431) b!1180424))

(assert (= (and b!1180424 res!784430) b!1180420))

(assert (= (and b!1180420 res!784422) b!1180422))

(assert (= (and b!1180422 res!784432) b!1180432))

(assert (= (and b!1180432 res!784421) b!1180417))

(assert (= (and b!1180417 res!784423) b!1180437))

(assert (= (and b!1180437 res!784427) b!1180433))

(assert (= (and b!1180433 (not res!784426)) b!1180425))

(assert (= (and b!1180425 (not res!784416)) b!1180429))

(assert (= (and b!1180429 (not res!784425)) b!1180434))

(assert (= (and b!1180434 res!784420) b!1180436))

(assert (= (and b!1180436 (not res!784417)) b!1180431))

(assert (= (and b!1180434 c!116876) b!1180438))

(assert (= (and b!1180434 (not c!116876)) b!1180435))

(assert (= (and b!1180434 res!784424) b!1180428))

(assert (= (and b!1180428 res!784429) b!1180426))

(assert (= (and b!1180419 condMapEmpty!46427) mapIsEmpty!46427))

(assert (= (and b!1180419 (not condMapEmpty!46427)) mapNonEmpty!46427))

(get-info :version)

(assert (= (and mapNonEmpty!46427 ((_ is ValueCellFull!14157) mapValue!46427)) b!1180427))

(assert (= (and b!1180419 ((_ is ValueCellFull!14157) mapDefault!46427)) b!1180418))

(assert (= start!99660 b!1180419))

(declare-fun b_lambda!20365 () Bool)

(assert (=> (not b_lambda!20365) (not b!1180425)))

(declare-fun t!38193 () Bool)

(declare-fun tb!10023 () Bool)

(assert (=> (and start!99660 (= defaultEntry!1004 defaultEntry!1004) t!38193) tb!10023))

(declare-fun result!20605 () Bool)

(assert (=> tb!10023 (= result!20605 tp_is_empty!29733)))

(assert (=> b!1180425 t!38193))

(declare-fun b_and!41289 () Bool)

(assert (= b_and!41287 (and (=> t!38193 result!20605) b_and!41289)))

(declare-fun m!1088423 () Bool)

(assert (=> b!1180431 m!1088423))

(declare-fun m!1088425 () Bool)

(assert (=> start!99660 m!1088425))

(declare-fun m!1088427 () Bool)

(assert (=> start!99660 m!1088427))

(declare-fun m!1088429 () Bool)

(assert (=> b!1180417 m!1088429))

(declare-fun m!1088431 () Bool)

(assert (=> b!1180417 m!1088431))

(declare-fun m!1088433 () Bool)

(assert (=> b!1180429 m!1088433))

(declare-fun m!1088435 () Bool)

(assert (=> b!1180429 m!1088435))

(declare-fun m!1088437 () Bool)

(assert (=> b!1180429 m!1088437))

(declare-fun m!1088439 () Bool)

(assert (=> b!1180429 m!1088439))

(declare-fun m!1088441 () Bool)

(assert (=> b!1180429 m!1088441))

(declare-fun m!1088443 () Bool)

(assert (=> b!1180429 m!1088443))

(assert (=> b!1180429 m!1088439))

(declare-fun m!1088445 () Bool)

(assert (=> b!1180428 m!1088445))

(declare-fun m!1088447 () Bool)

(assert (=> b!1180421 m!1088447))

(declare-fun m!1088449 () Bool)

(assert (=> b!1180422 m!1088449))

(declare-fun m!1088451 () Bool)

(assert (=> b!1180433 m!1088451))

(declare-fun m!1088453 () Bool)

(assert (=> b!1180433 m!1088453))

(assert (=> b!1180436 m!1088439))

(declare-fun m!1088455 () Bool)

(assert (=> b!1180423 m!1088455))

(declare-fun m!1088457 () Bool)

(assert (=> b!1180437 m!1088457))

(declare-fun m!1088459 () Bool)

(assert (=> b!1180432 m!1088459))

(declare-fun m!1088461 () Bool)

(assert (=> mapNonEmpty!46427 m!1088461))

(assert (=> b!1180434 m!1088439))

(declare-fun m!1088463 () Bool)

(assert (=> b!1180434 m!1088463))

(declare-fun m!1088465 () Bool)

(assert (=> b!1180434 m!1088465))

(assert (=> b!1180434 m!1088465))

(declare-fun m!1088467 () Bool)

(assert (=> b!1180434 m!1088467))

(declare-fun m!1088469 () Bool)

(assert (=> b!1180424 m!1088469))

(declare-fun m!1088471 () Bool)

(assert (=> b!1180425 m!1088471))

(declare-fun m!1088473 () Bool)

(assert (=> b!1180425 m!1088473))

(declare-fun m!1088475 () Bool)

(assert (=> b!1180425 m!1088475))

(declare-fun m!1088477 () Bool)

(assert (=> b!1180425 m!1088477))

(declare-fun m!1088479 () Bool)

(assert (=> b!1180438 m!1088479))

(declare-fun m!1088481 () Bool)

(assert (=> b!1180438 m!1088481))

(declare-fun m!1088483 () Bool)

(assert (=> b!1180438 m!1088483))

(declare-fun m!1088485 () Bool)

(assert (=> b!1180438 m!1088485))

(declare-fun m!1088487 () Bool)

(assert (=> b!1180438 m!1088487))

(check-sat (not b!1180417) (not b!1180437) b_and!41289 (not b_next!25203) (not b!1180428) (not b!1180438) (not mapNonEmpty!46427) (not b!1180423) (not b!1180429) (not b!1180434) (not start!99660) (not b!1180421) (not b!1180433) tp_is_empty!29733 (not b!1180425) (not b!1180424) (not b!1180422) (not b!1180431) (not b_lambda!20365))
(check-sat b_and!41289 (not b_next!25203))
