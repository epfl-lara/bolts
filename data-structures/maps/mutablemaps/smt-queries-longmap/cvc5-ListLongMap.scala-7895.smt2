; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98150 () Bool)

(assert start!98150)

(declare-fun b_free!23815 () Bool)

(declare-fun b_next!23815 () Bool)

(assert (=> start!98150 (= b_free!23815 (not b_next!23815))))

(declare-fun tp!84149 () Bool)

(declare-fun b_and!38435 () Bool)

(assert (=> start!98150 (= tp!84149 b_and!38435)))

(declare-fun b!1127393 () Bool)

(declare-fun e!641723 () Bool)

(declare-fun tp_is_empty!28345 () Bool)

(assert (=> b!1127393 (= e!641723 tp_is_empty!28345)))

(declare-fun b!1127394 () Bool)

(declare-fun e!641722 () Bool)

(assert (=> b!1127394 (= e!641722 tp_is_empty!28345)))

(declare-fun res!753465 () Bool)

(declare-fun e!641714 () Bool)

(assert (=> start!98150 (=> (not res!753465) (not e!641714))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73510 0))(
  ( (array!73511 (arr!35404 (Array (_ BitVec 32) (_ BitVec 64))) (size!35941 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73510)

(assert (=> start!98150 (= res!753465 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35941 _keys!1208))))))

(assert (=> start!98150 e!641714))

(assert (=> start!98150 tp_is_empty!28345))

(declare-fun array_inv!27034 (array!73510) Bool)

(assert (=> start!98150 (array_inv!27034 _keys!1208)))

(assert (=> start!98150 true))

(assert (=> start!98150 tp!84149))

(declare-datatypes ((V!42921 0))(
  ( (V!42922 (val!14229 Int)) )
))
(declare-datatypes ((ValueCell!13463 0))(
  ( (ValueCellFull!13463 (v!16863 V!42921)) (EmptyCell!13463) )
))
(declare-datatypes ((array!73512 0))(
  ( (array!73513 (arr!35405 (Array (_ BitVec 32) ValueCell!13463)) (size!35942 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73512)

(declare-fun e!641718 () Bool)

(declare-fun array_inv!27035 (array!73512) Bool)

(assert (=> start!98150 (and (array_inv!27035 _values!996) e!641718)))

(declare-fun b!1127395 () Bool)

(declare-fun res!753468 () Bool)

(assert (=> b!1127395 (=> (not res!753468) (not e!641714))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1127395 (= res!753468 (validKeyInArray!0 k!934))))

(declare-fun b!1127396 () Bool)

(declare-fun res!753471 () Bool)

(assert (=> b!1127396 (=> (not res!753471) (not e!641714))))

(declare-datatypes ((List!24811 0))(
  ( (Nil!24808) (Cons!24807 (h!26016 (_ BitVec 64)) (t!35625 List!24811)) )
))
(declare-fun arrayNoDuplicates!0 (array!73510 (_ BitVec 32) List!24811) Bool)

(assert (=> b!1127396 (= res!753471 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24808))))

(declare-fun b!1127397 () Bool)

(declare-fun res!753469 () Bool)

(declare-fun e!641721 () Bool)

(assert (=> b!1127397 (=> (not res!753469) (not e!641721))))

(declare-fun lt!500557 () array!73510)

(assert (=> b!1127397 (= res!753469 (arrayNoDuplicates!0 lt!500557 #b00000000000000000000000000000000 Nil!24808))))

(declare-fun b!1127398 () Bool)

(declare-fun e!641716 () Bool)

(assert (=> b!1127398 (= e!641716 true)))

(declare-fun zeroValue!944 () V!42921)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42921)

(declare-fun lt!500556 () Bool)

(declare-datatypes ((tuple2!17986 0))(
  ( (tuple2!17987 (_1!9003 (_ BitVec 64)) (_2!9003 V!42921)) )
))
(declare-datatypes ((List!24812 0))(
  ( (Nil!24809) (Cons!24808 (h!26017 tuple2!17986) (t!35626 List!24812)) )
))
(declare-datatypes ((ListLongMap!15967 0))(
  ( (ListLongMap!15968 (toList!7999 List!24812)) )
))
(declare-fun contains!6503 (ListLongMap!15967 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4457 (array!73510 array!73512 (_ BitVec 32) (_ BitVec 32) V!42921 V!42921 (_ BitVec 32) Int) ListLongMap!15967)

(assert (=> b!1127398 (= lt!500556 (contains!6503 (getCurrentListMapNoExtraKeys!4457 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun mapNonEmpty!44335 () Bool)

(declare-fun mapRes!44335 () Bool)

(declare-fun tp!84150 () Bool)

(assert (=> mapNonEmpty!44335 (= mapRes!44335 (and tp!84150 e!641723))))

(declare-fun mapRest!44335 () (Array (_ BitVec 32) ValueCell!13463))

(declare-fun mapKey!44335 () (_ BitVec 32))

(declare-fun mapValue!44335 () ValueCell!13463)

(assert (=> mapNonEmpty!44335 (= (arr!35405 _values!996) (store mapRest!44335 mapKey!44335 mapValue!44335))))

(declare-fun b!1127399 () Bool)

(declare-fun res!753470 () Bool)

(assert (=> b!1127399 (=> (not res!753470) (not e!641714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1127399 (= res!753470 (validMask!0 mask!1564))))

(declare-fun c!109673 () Bool)

(declare-fun bm!47725 () Bool)

(declare-fun lt!500560 () array!73512)

(declare-fun call!47728 () ListLongMap!15967)

(assert (=> bm!47725 (= call!47728 (getCurrentListMapNoExtraKeys!4457 (ite c!109673 lt!500557 _keys!1208) (ite c!109673 lt!500560 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127400 () Bool)

(declare-fun e!641717 () Bool)

(declare-fun e!641719 () Bool)

(assert (=> b!1127400 (= e!641717 e!641719)))

(declare-fun res!753472 () Bool)

(assert (=> b!1127400 (=> res!753472 e!641719)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1127400 (= res!753472 (not (= from!1455 i!673)))))

(declare-fun lt!500561 () ListLongMap!15967)

(assert (=> b!1127400 (= lt!500561 (getCurrentListMapNoExtraKeys!4457 lt!500557 lt!500560 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2536 (Int (_ BitVec 64)) V!42921)

(assert (=> b!1127400 (= lt!500560 (array!73513 (store (arr!35405 _values!996) i!673 (ValueCellFull!13463 (dynLambda!2536 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35942 _values!996)))))

(declare-fun lt!500558 () ListLongMap!15967)

(assert (=> b!1127400 (= lt!500558 (getCurrentListMapNoExtraKeys!4457 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1127401 () Bool)

(declare-fun e!641720 () Bool)

(declare-fun call!47729 () ListLongMap!15967)

(declare-fun -!1136 (ListLongMap!15967 (_ BitVec 64)) ListLongMap!15967)

(assert (=> b!1127401 (= e!641720 (= call!47728 (-!1136 call!47729 k!934)))))

(declare-fun bm!47726 () Bool)

(assert (=> bm!47726 (= call!47729 (getCurrentListMapNoExtraKeys!4457 (ite c!109673 _keys!1208 lt!500557) (ite c!109673 _values!996 lt!500560) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127402 () Bool)

(assert (=> b!1127402 (= e!641720 (= call!47729 call!47728))))

(declare-fun b!1127403 () Bool)

(declare-fun res!753467 () Bool)

(assert (=> b!1127403 (=> (not res!753467) (not e!641714))))

(assert (=> b!1127403 (= res!753467 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35941 _keys!1208))))))

(declare-fun b!1127404 () Bool)

(declare-fun res!753463 () Bool)

(assert (=> b!1127404 (=> (not res!753463) (not e!641714))))

(assert (=> b!1127404 (= res!753463 (and (= (size!35942 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35941 _keys!1208) (size!35942 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1127405 () Bool)

(declare-fun res!753473 () Bool)

(assert (=> b!1127405 (=> (not res!753473) (not e!641714))))

(assert (=> b!1127405 (= res!753473 (= (select (arr!35404 _keys!1208) i!673) k!934))))

(declare-fun b!1127406 () Bool)

(assert (=> b!1127406 (= e!641719 e!641716)))

(declare-fun res!753466 () Bool)

(assert (=> b!1127406 (=> res!753466 e!641716)))

(assert (=> b!1127406 (= res!753466 (not (= (select (arr!35404 _keys!1208) from!1455) k!934)))))

(assert (=> b!1127406 e!641720))

(assert (=> b!1127406 (= c!109673 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36889 0))(
  ( (Unit!36890) )
))
(declare-fun lt!500562 () Unit!36889)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!393 (array!73510 array!73512 (_ BitVec 32) (_ BitVec 32) V!42921 V!42921 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36889)

(assert (=> b!1127406 (= lt!500562 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!393 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44335 () Bool)

(assert (=> mapIsEmpty!44335 mapRes!44335))

(declare-fun b!1127407 () Bool)

(assert (=> b!1127407 (= e!641718 (and e!641722 mapRes!44335))))

(declare-fun condMapEmpty!44335 () Bool)

(declare-fun mapDefault!44335 () ValueCell!13463)

