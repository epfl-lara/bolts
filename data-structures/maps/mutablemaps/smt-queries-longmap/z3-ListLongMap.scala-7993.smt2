; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98836 () Bool)

(assert start!98836)

(declare-fun b_free!24405 () Bool)

(declare-fun b_next!24405 () Bool)

(assert (=> start!98836 (= b_free!24405 (not b_next!24405))))

(declare-fun tp!85927 () Bool)

(declare-fun b_and!39673 () Bool)

(assert (=> start!98836 (= tp!85927 b_and!39673)))

(declare-fun b!1153578 () Bool)

(declare-datatypes ((Unit!37874 0))(
  ( (Unit!37875) )
))
(declare-fun e!656123 () Unit!37874)

(declare-fun Unit!37876 () Unit!37874)

(assert (=> b!1153578 (= e!656123 Unit!37876)))

(declare-fun lt!517052 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1153578 (= lt!517052 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!114456 () Bool)

(assert (=> b!1153578 (= c!114456 (and (not lt!517052) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!517045 () Unit!37874)

(declare-fun e!656124 () Unit!37874)

(assert (=> b!1153578 (= lt!517045 e!656124)))

(declare-datatypes ((V!43707 0))(
  ( (V!43708 (val!14524 Int)) )
))
(declare-fun zeroValue!944 () V!43707)

(declare-datatypes ((array!74666 0))(
  ( (array!74667 (arr!35980 (Array (_ BitVec 32) (_ BitVec 64))) (size!36517 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74666)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13758 0))(
  ( (ValueCellFull!13758 (v!17162 V!43707)) (EmptyCell!13758) )
))
(declare-datatypes ((array!74668 0))(
  ( (array!74669 (arr!35981 (Array (_ BitVec 32) ValueCell!13758)) (size!36518 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74668)

(declare-fun minValue!944 () V!43707)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!517063 () Unit!37874)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!484 (array!74666 array!74668 (_ BitVec 32) (_ BitVec 32) V!43707 V!43707 (_ BitVec 64) (_ BitVec 32) Int) Unit!37874)

(assert (=> b!1153578 (= lt!517063 (lemmaListMapContainsThenArrayContainsFrom!484 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114451 () Bool)

(assert (=> b!1153578 (= c!114451 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!766828 () Bool)

(declare-fun e!656117 () Bool)

(assert (=> b!1153578 (= res!766828 e!656117)))

(declare-fun e!656119 () Bool)

(assert (=> b!1153578 (=> (not res!766828) (not e!656119))))

(assert (=> b!1153578 e!656119))

(declare-fun lt!517060 () Unit!37874)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74666 (_ BitVec 32) (_ BitVec 32)) Unit!37874)

(assert (=> b!1153578 (= lt!517060 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25315 0))(
  ( (Nil!25312) (Cons!25311 (h!26520 (_ BitVec 64)) (t!36719 List!25315)) )
))
(declare-fun arrayNoDuplicates!0 (array!74666 (_ BitVec 32) List!25315) Bool)

(assert (=> b!1153578 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25312)))

(declare-fun lt!517047 () Unit!37874)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74666 (_ BitVec 64) (_ BitVec 32) List!25315) Unit!37874)

(assert (=> b!1153578 (= lt!517047 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25312))))

(assert (=> b!1153578 false))

(declare-fun c!114455 () Bool)

(declare-datatypes ((tuple2!18528 0))(
  ( (tuple2!18529 (_1!9274 (_ BitVec 64)) (_2!9274 V!43707)) )
))
(declare-datatypes ((List!25316 0))(
  ( (Nil!25313) (Cons!25312 (h!26521 tuple2!18528) (t!36720 List!25316)) )
))
(declare-datatypes ((ListLongMap!16509 0))(
  ( (ListLongMap!16510 (toList!8270 List!25316)) )
))
(declare-fun lt!517054 () ListLongMap!16509)

(declare-fun lt!517065 () ListLongMap!16509)

(declare-fun call!54406 () Unit!37874)

(declare-fun bm!54398 () Bool)

(declare-fun addStillContains!902 (ListLongMap!16509 (_ BitVec 64) V!43707 (_ BitVec 64)) Unit!37874)

(assert (=> bm!54398 (= call!54406 (addStillContains!902 (ite c!114456 lt!517054 lt!517065) (ite c!114456 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114455 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114456 minValue!944 (ite c!114455 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1153579 () Bool)

(declare-fun e!656127 () Bool)

(declare-fun e!656118 () Bool)

(assert (=> b!1153579 (= e!656127 (not e!656118))))

(declare-fun res!766835 () Bool)

(assert (=> b!1153579 (=> res!766835 e!656118)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1153579 (= res!766835 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1153579 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!517048 () Unit!37874)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74666 (_ BitVec 64) (_ BitVec 32)) Unit!37874)

(assert (=> b!1153579 (= lt!517048 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1153580 () Bool)

(declare-fun e!656114 () Bool)

(assert (=> b!1153580 (= e!656114 true)))

(declare-fun e!656130 () Bool)

(assert (=> b!1153580 e!656130))

(declare-fun res!766832 () Bool)

(assert (=> b!1153580 (=> (not res!766832) (not e!656130))))

(declare-fun lt!517055 () ListLongMap!16509)

(assert (=> b!1153580 (= res!766832 (= lt!517055 lt!517065))))

(declare-fun lt!517058 () ListLongMap!16509)

(declare-fun -!1352 (ListLongMap!16509 (_ BitVec 64)) ListLongMap!16509)

(assert (=> b!1153580 (= lt!517055 (-!1352 lt!517058 k0!934))))

(declare-fun lt!517053 () V!43707)

(declare-fun +!3605 (ListLongMap!16509 tuple2!18528) ListLongMap!16509)

(assert (=> b!1153580 (= (-!1352 (+!3605 lt!517065 (tuple2!18529 (select (arr!35980 _keys!1208) from!1455) lt!517053)) (select (arr!35980 _keys!1208) from!1455)) lt!517065)))

(declare-fun lt!517057 () Unit!37874)

(declare-fun addThenRemoveForNewKeyIsSame!197 (ListLongMap!16509 (_ BitVec 64) V!43707) Unit!37874)

(assert (=> b!1153580 (= lt!517057 (addThenRemoveForNewKeyIsSame!197 lt!517065 (select (arr!35980 _keys!1208) from!1455) lt!517053))))

(declare-fun lt!517046 () V!43707)

(declare-fun get!18353 (ValueCell!13758 V!43707) V!43707)

(assert (=> b!1153580 (= lt!517053 (get!18353 (select (arr!35981 _values!996) from!1455) lt!517046))))

(declare-fun lt!517049 () Unit!37874)

(assert (=> b!1153580 (= lt!517049 e!656123)))

(declare-fun c!114453 () Bool)

(declare-fun contains!6762 (ListLongMap!16509 (_ BitVec 64)) Bool)

(assert (=> b!1153580 (= c!114453 (contains!6762 lt!517065 k0!934))))

(declare-fun getCurrentListMapNoExtraKeys!4710 (array!74666 array!74668 (_ BitVec 32) (_ BitVec 32) V!43707 V!43707 (_ BitVec 32) Int) ListLongMap!16509)

(assert (=> b!1153580 (= lt!517065 (getCurrentListMapNoExtraKeys!4710 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45227 () Bool)

(declare-fun mapRes!45227 () Bool)

(declare-fun tp!85926 () Bool)

(declare-fun e!656129 () Bool)

(assert (=> mapNonEmpty!45227 (= mapRes!45227 (and tp!85926 e!656129))))

(declare-fun mapRest!45227 () (Array (_ BitVec 32) ValueCell!13758))

(declare-fun mapValue!45227 () ValueCell!13758)

(declare-fun mapKey!45227 () (_ BitVec 32))

(assert (=> mapNonEmpty!45227 (= (arr!35981 _values!996) (store mapRest!45227 mapKey!45227 mapValue!45227))))

(declare-fun b!1153582 () Bool)

(declare-fun res!766827 () Bool)

(declare-fun e!656122 () Bool)

(assert (=> b!1153582 (=> (not res!766827) (not e!656122))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1153582 (= res!766827 (validKeyInArray!0 k0!934))))

(declare-fun b!1153583 () Bool)

(assert (=> b!1153583 (= e!656117 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!517052) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1153584 () Bool)

(declare-fun e!656115 () Bool)

(declare-fun call!54402 () ListLongMap!16509)

(declare-fun call!54401 () ListLongMap!16509)

(assert (=> b!1153584 (= e!656115 (= call!54402 (-!1352 call!54401 k0!934)))))

(declare-fun b!1153585 () Bool)

(declare-fun e!656125 () Unit!37874)

(declare-fun lt!517044 () Unit!37874)

(assert (=> b!1153585 (= e!656125 lt!517044)))

(declare-fun call!54407 () Unit!37874)

(assert (=> b!1153585 (= lt!517044 call!54407)))

(declare-fun call!54403 () Bool)

(assert (=> b!1153585 call!54403))

(declare-fun b!1153586 () Bool)

(declare-fun res!766836 () Bool)

(assert (=> b!1153586 (=> (not res!766836) (not e!656122))))

(assert (=> b!1153586 (= res!766836 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36517 _keys!1208))))))

(declare-fun b!1153587 () Bool)

(declare-fun e!656116 () Bool)

(declare-fun e!656121 () Bool)

(assert (=> b!1153587 (= e!656116 (and e!656121 mapRes!45227))))

(declare-fun condMapEmpty!45227 () Bool)

(declare-fun mapDefault!45227 () ValueCell!13758)

(assert (=> b!1153587 (= condMapEmpty!45227 (= (arr!35981 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13758)) mapDefault!45227)))))

(declare-fun b!1153588 () Bool)

(assert (=> b!1153588 (= e!656122 e!656127)))

(declare-fun res!766826 () Bool)

(assert (=> b!1153588 (=> (not res!766826) (not e!656127))))

(declare-fun lt!517050 () array!74666)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74666 (_ BitVec 32)) Bool)

(assert (=> b!1153588 (= res!766826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!517050 mask!1564))))

(assert (=> b!1153588 (= lt!517050 (array!74667 (store (arr!35980 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36517 _keys!1208)))))

(declare-fun b!1153589 () Bool)

(declare-fun res!766829 () Bool)

(assert (=> b!1153589 (=> (not res!766829) (not e!656122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1153589 (= res!766829 (validMask!0 mask!1564))))

(declare-fun b!1153590 () Bool)

(declare-fun tp_is_empty!28935 () Bool)

(assert (=> b!1153590 (= e!656121 tp_is_empty!28935)))

(declare-fun b!1153591 () Bool)

(assert (=> b!1153591 (= c!114455 (and (not lt!517052) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1153591 (= e!656124 e!656125)))

(declare-fun bm!54399 () Bool)

(assert (=> bm!54399 (= call!54407 call!54406)))

(declare-fun bm!54400 () Bool)

(assert (=> bm!54400 (= call!54401 (getCurrentListMapNoExtraKeys!4710 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153592 () Bool)

(declare-fun res!766837 () Bool)

(assert (=> b!1153592 (=> (not res!766837) (not e!656122))))

(assert (=> b!1153592 (= res!766837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1153593 () Bool)

(declare-fun res!766833 () Bool)

(assert (=> b!1153593 (=> (not res!766833) (not e!656122))))

(assert (=> b!1153593 (= res!766833 (= (select (arr!35980 _keys!1208) i!673) k0!934))))

(declare-fun b!1153594 () Bool)

(declare-fun call!54405 () ListLongMap!16509)

(assert (=> b!1153594 (contains!6762 call!54405 k0!934)))

(declare-fun lt!517062 () Unit!37874)

(assert (=> b!1153594 (= lt!517062 call!54406)))

(declare-fun call!54404 () Bool)

(assert (=> b!1153594 call!54404))

(assert (=> b!1153594 (= lt!517054 (+!3605 lt!517065 (tuple2!18529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!517059 () Unit!37874)

(assert (=> b!1153594 (= lt!517059 (addStillContains!902 lt!517065 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1153594 (= e!656124 lt!517062)))

(declare-fun b!1153595 () Bool)

(declare-fun res!766831 () Bool)

(assert (=> b!1153595 (=> (not res!766831) (not e!656127))))

(assert (=> b!1153595 (= res!766831 (arrayNoDuplicates!0 lt!517050 #b00000000000000000000000000000000 Nil!25312))))

(declare-fun bm!54401 () Bool)

(declare-fun lt!517056 () array!74668)

(assert (=> bm!54401 (= call!54402 (getCurrentListMapNoExtraKeys!4710 lt!517050 lt!517056 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153596 () Bool)

(assert (=> b!1153596 (= e!656119 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1153597 () Bool)

(assert (=> b!1153597 (= e!656117 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!54402 () Bool)

(declare-fun call!54408 () ListLongMap!16509)

(assert (=> bm!54402 (= call!54408 call!54405)))

(declare-fun b!1153598 () Bool)

(declare-fun e!656126 () Bool)

(assert (=> b!1153598 (= e!656118 e!656126)))

(declare-fun res!766830 () Bool)

(assert (=> b!1153598 (=> res!766830 e!656126)))

(assert (=> b!1153598 (= res!766830 (not (= from!1455 i!673)))))

(declare-fun lt!517061 () ListLongMap!16509)

(assert (=> b!1153598 (= lt!517061 (getCurrentListMapNoExtraKeys!4710 lt!517050 lt!517056 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1153598 (= lt!517056 (array!74669 (store (arr!35981 _values!996) i!673 (ValueCellFull!13758 lt!517046)) (size!36518 _values!996)))))

(declare-fun dynLambda!2731 (Int (_ BitVec 64)) V!43707)

(assert (=> b!1153598 (= lt!517046 (dynLambda!2731 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1153598 (= lt!517058 (getCurrentListMapNoExtraKeys!4710 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1153599 () Bool)

(assert (=> b!1153599 (= e!656115 (= call!54402 call!54401))))

(declare-fun b!1153600 () Bool)

(assert (=> b!1153600 call!54403))

(declare-fun lt!517064 () Unit!37874)

(assert (=> b!1153600 (= lt!517064 call!54407)))

(declare-fun e!656128 () Unit!37874)

(assert (=> b!1153600 (= e!656128 lt!517064)))

(declare-fun b!1153601 () Bool)

(declare-fun Unit!37877 () Unit!37874)

(assert (=> b!1153601 (= e!656123 Unit!37877)))

(declare-fun bm!54403 () Bool)

(assert (=> bm!54403 (= call!54405 (+!3605 (ite c!114456 lt!517054 lt!517065) (ite c!114456 (tuple2!18529 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!114455 (tuple2!18529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18529 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun mapIsEmpty!45227 () Bool)

(assert (=> mapIsEmpty!45227 mapRes!45227))

(declare-fun b!1153602 () Bool)

(declare-fun res!766824 () Bool)

(assert (=> b!1153602 (=> (not res!766824) (not e!656122))))

(assert (=> b!1153602 (= res!766824 (and (= (size!36518 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36517 _keys!1208) (size!36518 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1153603 () Bool)

(assert (=> b!1153603 (= e!656130 (= lt!517055 (getCurrentListMapNoExtraKeys!4710 lt!517050 lt!517056 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1153604 () Bool)

(assert (=> b!1153604 (= e!656126 e!656114)))

(declare-fun res!766834 () Bool)

(assert (=> b!1153604 (=> res!766834 e!656114)))

(assert (=> b!1153604 (= res!766834 (not (= (select (arr!35980 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1153604 e!656115))

(declare-fun c!114452 () Bool)

(assert (=> b!1153604 (= c!114452 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!517051 () Unit!37874)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!584 (array!74666 array!74668 (_ BitVec 32) (_ BitVec 32) V!43707 V!43707 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37874)

(assert (=> b!1153604 (= lt!517051 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!584 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!54404 () Bool)

(assert (=> bm!54404 (= call!54404 (contains!6762 (ite c!114456 lt!517054 call!54408) k0!934))))

(declare-fun b!1153605 () Bool)

(declare-fun res!766825 () Bool)

(assert (=> b!1153605 (=> (not res!766825) (not e!656122))))

(assert (=> b!1153605 (= res!766825 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25312))))

(declare-fun b!1153606 () Bool)

(assert (=> b!1153606 (= e!656125 e!656128)))

(declare-fun c!114454 () Bool)

(assert (=> b!1153606 (= c!114454 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!517052))))

(declare-fun bm!54405 () Bool)

(assert (=> bm!54405 (= call!54403 call!54404)))

(declare-fun b!1153607 () Bool)

(declare-fun Unit!37878 () Unit!37874)

(assert (=> b!1153607 (= e!656128 Unit!37878)))

(declare-fun b!1153581 () Bool)

(assert (=> b!1153581 (= e!656129 tp_is_empty!28935)))

(declare-fun res!766838 () Bool)

(assert (=> start!98836 (=> (not res!766838) (not e!656122))))

(assert (=> start!98836 (= res!766838 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36517 _keys!1208))))))

(assert (=> start!98836 e!656122))

(assert (=> start!98836 tp_is_empty!28935))

(declare-fun array_inv!27420 (array!74666) Bool)

(assert (=> start!98836 (array_inv!27420 _keys!1208)))

(assert (=> start!98836 true))

(assert (=> start!98836 tp!85927))

(declare-fun array_inv!27421 (array!74668) Bool)

(assert (=> start!98836 (and (array_inv!27421 _values!996) e!656116)))

(assert (= (and start!98836 res!766838) b!1153589))

(assert (= (and b!1153589 res!766829) b!1153602))

(assert (= (and b!1153602 res!766824) b!1153592))

(assert (= (and b!1153592 res!766837) b!1153605))

(assert (= (and b!1153605 res!766825) b!1153586))

(assert (= (and b!1153586 res!766836) b!1153582))

(assert (= (and b!1153582 res!766827) b!1153593))

(assert (= (and b!1153593 res!766833) b!1153588))

(assert (= (and b!1153588 res!766826) b!1153595))

(assert (= (and b!1153595 res!766831) b!1153579))

(assert (= (and b!1153579 (not res!766835)) b!1153598))

(assert (= (and b!1153598 (not res!766830)) b!1153604))

(assert (= (and b!1153604 c!114452) b!1153584))

(assert (= (and b!1153604 (not c!114452)) b!1153599))

(assert (= (or b!1153584 b!1153599) bm!54401))

(assert (= (or b!1153584 b!1153599) bm!54400))

(assert (= (and b!1153604 (not res!766834)) b!1153580))

(assert (= (and b!1153580 c!114453) b!1153578))

(assert (= (and b!1153580 (not c!114453)) b!1153601))

(assert (= (and b!1153578 c!114456) b!1153594))

(assert (= (and b!1153578 (not c!114456)) b!1153591))

(assert (= (and b!1153591 c!114455) b!1153585))

(assert (= (and b!1153591 (not c!114455)) b!1153606))

(assert (= (and b!1153606 c!114454) b!1153600))

(assert (= (and b!1153606 (not c!114454)) b!1153607))

(assert (= (or b!1153585 b!1153600) bm!54399))

(assert (= (or b!1153585 b!1153600) bm!54402))

(assert (= (or b!1153585 b!1153600) bm!54405))

(assert (= (or b!1153594 bm!54405) bm!54404))

(assert (= (or b!1153594 bm!54399) bm!54398))

(assert (= (or b!1153594 bm!54402) bm!54403))

(assert (= (and b!1153578 c!114451) b!1153597))

(assert (= (and b!1153578 (not c!114451)) b!1153583))

(assert (= (and b!1153578 res!766828) b!1153596))

(assert (= (and b!1153580 res!766832) b!1153603))

(assert (= (and b!1153587 condMapEmpty!45227) mapIsEmpty!45227))

(assert (= (and b!1153587 (not condMapEmpty!45227)) mapNonEmpty!45227))

(get-info :version)

(assert (= (and mapNonEmpty!45227 ((_ is ValueCellFull!13758) mapValue!45227)) b!1153581))

(assert (= (and b!1153587 ((_ is ValueCellFull!13758) mapDefault!45227)) b!1153590))

(assert (= start!98836 b!1153587))

(declare-fun b_lambda!19529 () Bool)

(assert (=> (not b_lambda!19529) (not b!1153598)))

(declare-fun t!36718 () Bool)

(declare-fun tb!9225 () Bool)

(assert (=> (and start!98836 (= defaultEntry!1004 defaultEntry!1004) t!36718) tb!9225))

(declare-fun result!19007 () Bool)

(assert (=> tb!9225 (= result!19007 tp_is_empty!28935)))

(assert (=> b!1153598 t!36718))

(declare-fun b_and!39675 () Bool)

(assert (= b_and!39673 (and (=> t!36718 result!19007) b_and!39675)))

(declare-fun m!1063459 () Bool)

(assert (=> b!1153582 m!1063459))

(declare-fun m!1063461 () Bool)

(assert (=> bm!54400 m!1063461))

(declare-fun m!1063463 () Bool)

(assert (=> b!1153597 m!1063463))

(declare-fun m!1063465 () Bool)

(assert (=> b!1153603 m!1063465))

(declare-fun m!1063467 () Bool)

(assert (=> b!1153584 m!1063467))

(declare-fun m!1063469 () Bool)

(assert (=> b!1153594 m!1063469))

(declare-fun m!1063471 () Bool)

(assert (=> b!1153594 m!1063471))

(declare-fun m!1063473 () Bool)

(assert (=> b!1153594 m!1063473))

(declare-fun m!1063475 () Bool)

(assert (=> bm!54404 m!1063475))

(declare-fun m!1063477 () Bool)

(assert (=> b!1153578 m!1063477))

(declare-fun m!1063479 () Bool)

(assert (=> b!1153578 m!1063479))

(declare-fun m!1063481 () Bool)

(assert (=> b!1153578 m!1063481))

(declare-fun m!1063483 () Bool)

(assert (=> b!1153578 m!1063483))

(declare-fun m!1063485 () Bool)

(assert (=> b!1153595 m!1063485))

(declare-fun m!1063487 () Bool)

(assert (=> b!1153579 m!1063487))

(declare-fun m!1063489 () Bool)

(assert (=> b!1153579 m!1063489))

(declare-fun m!1063491 () Bool)

(assert (=> bm!54403 m!1063491))

(declare-fun m!1063493 () Bool)

(assert (=> b!1153588 m!1063493))

(declare-fun m!1063495 () Bool)

(assert (=> b!1153588 m!1063495))

(assert (=> bm!54401 m!1063465))

(declare-fun m!1063497 () Bool)

(assert (=> b!1153605 m!1063497))

(declare-fun m!1063499 () Bool)

(assert (=> b!1153589 m!1063499))

(declare-fun m!1063501 () Bool)

(assert (=> b!1153598 m!1063501))

(declare-fun m!1063503 () Bool)

(assert (=> b!1153598 m!1063503))

(declare-fun m!1063505 () Bool)

(assert (=> b!1153598 m!1063505))

(declare-fun m!1063507 () Bool)

(assert (=> b!1153598 m!1063507))

(assert (=> b!1153596 m!1063463))

(declare-fun m!1063509 () Bool)

(assert (=> b!1153592 m!1063509))

(declare-fun m!1063511 () Bool)

(assert (=> start!98836 m!1063511))

(declare-fun m!1063513 () Bool)

(assert (=> start!98836 m!1063513))

(declare-fun m!1063515 () Bool)

(assert (=> b!1153593 m!1063515))

(declare-fun m!1063517 () Bool)

(assert (=> mapNonEmpty!45227 m!1063517))

(assert (=> b!1153580 m!1063461))

(declare-fun m!1063519 () Bool)

(assert (=> b!1153580 m!1063519))

(declare-fun m!1063521 () Bool)

(assert (=> b!1153580 m!1063521))

(declare-fun m!1063523 () Bool)

(assert (=> b!1153580 m!1063523))

(declare-fun m!1063525 () Bool)

(assert (=> b!1153580 m!1063525))

(declare-fun m!1063527 () Bool)

(assert (=> b!1153580 m!1063527))

(assert (=> b!1153580 m!1063527))

(assert (=> b!1153580 m!1063521))

(declare-fun m!1063529 () Bool)

(assert (=> b!1153580 m!1063529))

(assert (=> b!1153580 m!1063521))

(declare-fun m!1063531 () Bool)

(assert (=> b!1153580 m!1063531))

(assert (=> b!1153580 m!1063519))

(declare-fun m!1063533 () Bool)

(assert (=> b!1153580 m!1063533))

(assert (=> b!1153604 m!1063521))

(declare-fun m!1063535 () Bool)

(assert (=> b!1153604 m!1063535))

(declare-fun m!1063537 () Bool)

(assert (=> bm!54398 m!1063537))

(check-sat (not b!1153578) (not b!1153580) b_and!39675 (not bm!54401) (not b_next!24405) tp_is_empty!28935 (not start!98836) (not b!1153605) (not bm!54403) (not b!1153588) (not b!1153595) (not b_lambda!19529) (not b!1153589) (not mapNonEmpty!45227) (not b!1153604) (not b!1153597) (not b!1153582) (not b!1153603) (not b!1153579) (not b!1153584) (not bm!54404) (not b!1153594) (not b!1153598) (not bm!54400) (not bm!54398) (not b!1153596) (not b!1153592))
(check-sat b_and!39675 (not b_next!24405))
