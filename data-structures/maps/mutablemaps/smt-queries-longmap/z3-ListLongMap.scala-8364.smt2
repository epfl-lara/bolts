; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101804 () Bool)

(assert start!101804)

(declare-fun b_free!26457 () Bool)

(declare-fun b_next!26457 () Bool)

(assert (=> start!101804 (= b_free!26457 (not b_next!26457))))

(declare-fun tp!92417 () Bool)

(declare-fun b_and!44185 () Bool)

(assert (=> start!101804 (= tp!92417 b_and!44185)))

(declare-fun mapNonEmpty!48640 () Bool)

(declare-fun mapRes!48640 () Bool)

(declare-fun tp!92418 () Bool)

(declare-fun e!696092 () Bool)

(assert (=> mapNonEmpty!48640 (= mapRes!48640 (and tp!92418 e!696092))))

(declare-datatypes ((V!46675 0))(
  ( (V!46676 (val!15637 Int)) )
))
(declare-datatypes ((ValueCell!14871 0))(
  ( (ValueCellFull!14871 (v!18300 V!46675)) (EmptyCell!14871) )
))
(declare-fun mapValue!48640 () ValueCell!14871)

(declare-fun mapKey!48640 () (_ BitVec 32))

(declare-fun mapRest!48640 () (Array (_ BitVec 32) ValueCell!14871))

(declare-datatypes ((array!79080 0))(
  ( (array!79081 (arr!38163 (Array (_ BitVec 32) ValueCell!14871)) (size!38700 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79080)

(assert (=> mapNonEmpty!48640 (= (arr!38163 _values!996) (store mapRest!48640 mapKey!48640 mapValue!48640))))

(declare-fun b!1225528 () Bool)

(declare-fun e!696089 () Bool)

(assert (=> b!1225528 (= e!696089 true)))

(declare-fun zeroValue!944 () V!46675)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!558447 () array!79080)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!46675)

(declare-datatypes ((array!79082 0))(
  ( (array!79083 (arr!38164 (Array (_ BitVec 32) (_ BitVec 64))) (size!38701 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79082)

(declare-fun lt!558446 () array!79082)

(declare-datatypes ((tuple2!20306 0))(
  ( (tuple2!20307 (_1!10163 (_ BitVec 64)) (_2!10163 V!46675)) )
))
(declare-datatypes ((List!27117 0))(
  ( (Nil!27114) (Cons!27113 (h!28322 tuple2!20306) (t!40561 List!27117)) )
))
(declare-datatypes ((ListLongMap!18287 0))(
  ( (ListLongMap!18288 (toList!9159 List!27117)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5555 (array!79082 array!79080 (_ BitVec 32) (_ BitVec 32) V!46675 V!46675 (_ BitVec 32) Int) ListLongMap!18287)

(declare-fun -!1995 (ListLongMap!18287 (_ BitVec 64)) ListLongMap!18287)

(assert (=> b!1225528 (= (getCurrentListMapNoExtraKeys!5555 lt!558446 lt!558447 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1995 (getCurrentListMapNoExtraKeys!5555 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!40564 0))(
  ( (Unit!40565) )
))
(declare-fun lt!558448 () Unit!40564)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1195 (array!79082 array!79080 (_ BitVec 32) (_ BitVec 32) V!46675 V!46675 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40564)

(assert (=> b!1225528 (= lt!558448 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1195 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!48640 () Bool)

(assert (=> mapIsEmpty!48640 mapRes!48640))

(declare-fun b!1225529 () Bool)

(declare-fun tp_is_empty!31161 () Bool)

(assert (=> b!1225529 (= e!696092 tp_is_empty!31161)))

(declare-fun b!1225530 () Bool)

(declare-fun res!814524 () Bool)

(declare-fun e!696090 () Bool)

(assert (=> b!1225530 (=> (not res!814524) (not e!696090))))

(declare-datatypes ((List!27118 0))(
  ( (Nil!27115) (Cons!27114 (h!28323 (_ BitVec 64)) (t!40562 List!27118)) )
))
(declare-fun arrayNoDuplicates!0 (array!79082 (_ BitVec 32) List!27118) Bool)

(assert (=> b!1225530 (= res!814524 (arrayNoDuplicates!0 lt!558446 #b00000000000000000000000000000000 Nil!27115))))

(declare-fun b!1225531 () Bool)

(declare-fun res!814529 () Bool)

(declare-fun e!696091 () Bool)

(assert (=> b!1225531 (=> (not res!814529) (not e!696091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225531 (= res!814529 (validMask!0 mask!1564))))

(declare-fun res!814520 () Bool)

(assert (=> start!101804 (=> (not res!814520) (not e!696091))))

(assert (=> start!101804 (= res!814520 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38701 _keys!1208))))))

(assert (=> start!101804 e!696091))

(assert (=> start!101804 tp_is_empty!31161))

(declare-fun array_inv!28942 (array!79082) Bool)

(assert (=> start!101804 (array_inv!28942 _keys!1208)))

(assert (=> start!101804 true))

(assert (=> start!101804 tp!92417))

(declare-fun e!696093 () Bool)

(declare-fun array_inv!28943 (array!79080) Bool)

(assert (=> start!101804 (and (array_inv!28943 _values!996) e!696093)))

(declare-fun b!1225532 () Bool)

(declare-fun res!814528 () Bool)

(assert (=> b!1225532 (=> (not res!814528) (not e!696091))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79082 (_ BitVec 32)) Bool)

(assert (=> b!1225532 (= res!814528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1225533 () Bool)

(declare-fun res!814523 () Bool)

(assert (=> b!1225533 (=> (not res!814523) (not e!696091))))

(assert (=> b!1225533 (= res!814523 (= (select (arr!38164 _keys!1208) i!673) k0!934))))

(declare-fun b!1225534 () Bool)

(declare-fun e!696096 () Bool)

(assert (=> b!1225534 (= e!696096 tp_is_empty!31161)))

(declare-fun b!1225535 () Bool)

(declare-fun e!696094 () Bool)

(assert (=> b!1225535 (= e!696090 (not e!696094))))

(declare-fun res!814521 () Bool)

(assert (=> b!1225535 (=> res!814521 e!696094)))

(assert (=> b!1225535 (= res!814521 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!79082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225535 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!558451 () Unit!40564)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79082 (_ BitVec 64) (_ BitVec 32)) Unit!40564)

(assert (=> b!1225535 (= lt!558451 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1225536 () Bool)

(declare-fun res!814525 () Bool)

(assert (=> b!1225536 (=> (not res!814525) (not e!696091))))

(assert (=> b!1225536 (= res!814525 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27115))))

(declare-fun b!1225537 () Bool)

(assert (=> b!1225537 (= e!696093 (and e!696096 mapRes!48640))))

(declare-fun condMapEmpty!48640 () Bool)

(declare-fun mapDefault!48640 () ValueCell!14871)

(assert (=> b!1225537 (= condMapEmpty!48640 (= (arr!38163 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14871)) mapDefault!48640)))))

(declare-fun b!1225538 () Bool)

(declare-fun res!814522 () Bool)

(assert (=> b!1225538 (=> (not res!814522) (not e!696091))))

(assert (=> b!1225538 (= res!814522 (and (= (size!38700 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38701 _keys!1208) (size!38700 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225539 () Bool)

(declare-fun res!814527 () Bool)

(assert (=> b!1225539 (=> (not res!814527) (not e!696091))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225539 (= res!814527 (validKeyInArray!0 k0!934))))

(declare-fun b!1225540 () Bool)

(declare-fun res!814530 () Bool)

(assert (=> b!1225540 (=> (not res!814530) (not e!696091))))

(assert (=> b!1225540 (= res!814530 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38701 _keys!1208))))))

(declare-fun b!1225541 () Bool)

(assert (=> b!1225541 (= e!696094 e!696089)))

(declare-fun res!814526 () Bool)

(assert (=> b!1225541 (=> res!814526 e!696089)))

(assert (=> b!1225541 (= res!814526 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!558450 () ListLongMap!18287)

(assert (=> b!1225541 (= lt!558450 (getCurrentListMapNoExtraKeys!5555 lt!558446 lt!558447 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3449 (Int (_ BitVec 64)) V!46675)

(assert (=> b!1225541 (= lt!558447 (array!79081 (store (arr!38163 _values!996) i!673 (ValueCellFull!14871 (dynLambda!3449 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38700 _values!996)))))

(declare-fun lt!558449 () ListLongMap!18287)

(assert (=> b!1225541 (= lt!558449 (getCurrentListMapNoExtraKeys!5555 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1225542 () Bool)

(assert (=> b!1225542 (= e!696091 e!696090)))

(declare-fun res!814519 () Bool)

(assert (=> b!1225542 (=> (not res!814519) (not e!696090))))

(assert (=> b!1225542 (= res!814519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558446 mask!1564))))

(assert (=> b!1225542 (= lt!558446 (array!79083 (store (arr!38164 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38701 _keys!1208)))))

(assert (= (and start!101804 res!814520) b!1225531))

(assert (= (and b!1225531 res!814529) b!1225538))

(assert (= (and b!1225538 res!814522) b!1225532))

(assert (= (and b!1225532 res!814528) b!1225536))

(assert (= (and b!1225536 res!814525) b!1225540))

(assert (= (and b!1225540 res!814530) b!1225539))

(assert (= (and b!1225539 res!814527) b!1225533))

(assert (= (and b!1225533 res!814523) b!1225542))

(assert (= (and b!1225542 res!814519) b!1225530))

(assert (= (and b!1225530 res!814524) b!1225535))

(assert (= (and b!1225535 (not res!814521)) b!1225541))

(assert (= (and b!1225541 (not res!814526)) b!1225528))

(assert (= (and b!1225537 condMapEmpty!48640) mapIsEmpty!48640))

(assert (= (and b!1225537 (not condMapEmpty!48640)) mapNonEmpty!48640))

(get-info :version)

(assert (= (and mapNonEmpty!48640 ((_ is ValueCellFull!14871) mapValue!48640)) b!1225529))

(assert (= (and b!1225537 ((_ is ValueCellFull!14871) mapDefault!48640)) b!1225534))

(assert (= start!101804 b!1225537))

(declare-fun b_lambda!22447 () Bool)

(assert (=> (not b_lambda!22447) (not b!1225541)))

(declare-fun t!40560 () Bool)

(declare-fun tb!11265 () Bool)

(assert (=> (and start!101804 (= defaultEntry!1004 defaultEntry!1004) t!40560) tb!11265))

(declare-fun result!23135 () Bool)

(assert (=> tb!11265 (= result!23135 tp_is_empty!31161)))

(assert (=> b!1225541 t!40560))

(declare-fun b_and!44187 () Bool)

(assert (= b_and!44185 (and (=> t!40560 result!23135) b_and!44187)))

(declare-fun m!1130701 () Bool)

(assert (=> b!1225542 m!1130701))

(declare-fun m!1130703 () Bool)

(assert (=> b!1225542 m!1130703))

(declare-fun m!1130705 () Bool)

(assert (=> b!1225539 m!1130705))

(declare-fun m!1130707 () Bool)

(assert (=> b!1225528 m!1130707))

(declare-fun m!1130709 () Bool)

(assert (=> b!1225528 m!1130709))

(assert (=> b!1225528 m!1130709))

(declare-fun m!1130711 () Bool)

(assert (=> b!1225528 m!1130711))

(declare-fun m!1130713 () Bool)

(assert (=> b!1225528 m!1130713))

(declare-fun m!1130715 () Bool)

(assert (=> b!1225532 m!1130715))

(declare-fun m!1130717 () Bool)

(assert (=> b!1225533 m!1130717))

(declare-fun m!1130719 () Bool)

(assert (=> b!1225535 m!1130719))

(declare-fun m!1130721 () Bool)

(assert (=> b!1225535 m!1130721))

(declare-fun m!1130723 () Bool)

(assert (=> start!101804 m!1130723))

(declare-fun m!1130725 () Bool)

(assert (=> start!101804 m!1130725))

(declare-fun m!1130727 () Bool)

(assert (=> b!1225541 m!1130727))

(declare-fun m!1130729 () Bool)

(assert (=> b!1225541 m!1130729))

(declare-fun m!1130731 () Bool)

(assert (=> b!1225541 m!1130731))

(declare-fun m!1130733 () Bool)

(assert (=> b!1225541 m!1130733))

(declare-fun m!1130735 () Bool)

(assert (=> b!1225536 m!1130735))

(declare-fun m!1130737 () Bool)

(assert (=> b!1225530 m!1130737))

(declare-fun m!1130739 () Bool)

(assert (=> b!1225531 m!1130739))

(declare-fun m!1130741 () Bool)

(assert (=> mapNonEmpty!48640 m!1130741))

(check-sat (not b!1225535) (not b!1225541) (not b!1225536) (not b!1225528) (not b!1225542) (not b!1225531) b_and!44187 (not b_next!26457) (not b_lambda!22447) (not b!1225539) (not b!1225532) (not b!1225530) (not start!101804) tp_is_empty!31161 (not mapNonEmpty!48640))
(check-sat b_and!44187 (not b_next!26457))
