; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99904 () Bool)

(assert start!99904)

(declare-fun b_free!25447 () Bool)

(declare-fun b_next!25447 () Bool)

(assert (=> start!99904 (= b_free!25447 (not b_next!25447))))

(declare-fun tp!89055 () Bool)

(declare-fun b_and!41775 () Bool)

(assert (=> start!99904 (= tp!89055 b_and!41775)))

(declare-fun b!1188079 () Bool)

(declare-fun e!675583 () Bool)

(declare-fun e!675589 () Bool)

(assert (=> b!1188079 (= e!675583 e!675589)))

(declare-fun res!790014 () Bool)

(assert (=> b!1188079 (=> res!790014 e!675589)))

(declare-datatypes ((array!76722 0))(
  ( (array!76723 (arr!37007 (Array (_ BitVec 32) (_ BitVec 64))) (size!37544 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76722)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1188079 (= res!790014 (not (= (select (arr!37007 _keys!1208) from!1455) k!934)))))

(declare-fun b!1188080 () Bool)

(declare-fun res!790016 () Bool)

(declare-fun e!675585 () Bool)

(assert (=> b!1188080 (=> (not res!790016) (not e!675585))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1188080 (= res!790016 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37544 _keys!1208))))))

(declare-fun b!1188081 () Bool)

(declare-fun e!675581 () Bool)

(assert (=> b!1188081 (= e!675581 true)))

(declare-datatypes ((V!45097 0))(
  ( (V!45098 (val!15045 Int)) )
))
(declare-datatypes ((tuple2!19446 0))(
  ( (tuple2!19447 (_1!9733 (_ BitVec 64)) (_2!9733 V!45097)) )
))
(declare-datatypes ((List!26206 0))(
  ( (Nil!26203) (Cons!26202 (h!27411 tuple2!19446) (t!38652 List!26206)) )
))
(declare-datatypes ((ListLongMap!17427 0))(
  ( (ListLongMap!17428 (toList!8729 List!26206)) )
))
(declare-fun lt!540446 () ListLongMap!17427)

(declare-fun lt!540443 () ListLongMap!17427)

(declare-fun -!1714 (ListLongMap!17427 (_ BitVec 64)) ListLongMap!17427)

(assert (=> b!1188081 (= (-!1714 lt!540446 k!934) lt!540443)))

(declare-fun lt!540453 () ListLongMap!17427)

(declare-fun lt!540452 () V!45097)

(declare-datatypes ((Unit!39341 0))(
  ( (Unit!39342) )
))
(declare-fun lt!540441 () Unit!39341)

(declare-fun addRemoveCommutativeForDiffKeys!221 (ListLongMap!17427 (_ BitVec 64) V!45097 (_ BitVec 64)) Unit!39341)

(assert (=> b!1188081 (= lt!540441 (addRemoveCommutativeForDiffKeys!221 lt!540453 (select (arr!37007 _keys!1208) from!1455) lt!540452 k!934))))

(declare-fun lt!540442 () ListLongMap!17427)

(declare-fun lt!540440 () ListLongMap!17427)

(declare-fun lt!540450 () ListLongMap!17427)

(assert (=> b!1188081 (and (= lt!540440 lt!540446) (= lt!540450 lt!540442))))

(declare-fun lt!540445 () tuple2!19446)

(declare-fun +!3931 (ListLongMap!17427 tuple2!19446) ListLongMap!17427)

(assert (=> b!1188081 (= lt!540446 (+!3931 lt!540453 lt!540445))))

(assert (=> b!1188081 (not (= (select (arr!37007 _keys!1208) from!1455) k!934))))

(declare-fun lt!540447 () Unit!39341)

(declare-fun e!675578 () Unit!39341)

(assert (=> b!1188081 (= lt!540447 e!675578)))

(declare-fun c!117242 () Bool)

(assert (=> b!1188081 (= c!117242 (= (select (arr!37007 _keys!1208) from!1455) k!934))))

(assert (=> b!1188081 e!675583))

(declare-fun res!790007 () Bool)

(assert (=> b!1188081 (=> (not res!790007) (not e!675583))))

(declare-fun lt!540439 () ListLongMap!17427)

(assert (=> b!1188081 (= res!790007 (= lt!540439 lt!540443))))

(assert (=> b!1188081 (= lt!540443 (+!3931 lt!540450 lt!540445))))

(assert (=> b!1188081 (= lt!540445 (tuple2!19447 (select (arr!37007 _keys!1208) from!1455) lt!540452))))

(declare-datatypes ((ValueCell!14279 0))(
  ( (ValueCellFull!14279 (v!17684 V!45097)) (EmptyCell!14279) )
))
(declare-datatypes ((array!76724 0))(
  ( (array!76725 (arr!37008 (Array (_ BitVec 32) ValueCell!14279)) (size!37545 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76724)

(declare-fun lt!540455 () V!45097)

(declare-fun get!19003 (ValueCell!14279 V!45097) V!45097)

(assert (=> b!1188081 (= lt!540452 (get!19003 (select (arr!37008 _values!996) from!1455) lt!540455))))

(declare-fun b!1188082 () Bool)

(declare-fun res!790013 () Bool)

(assert (=> b!1188082 (=> (not res!790013) (not e!675585))))

(declare-datatypes ((List!26207 0))(
  ( (Nil!26204) (Cons!26203 (h!27412 (_ BitVec 64)) (t!38653 List!26207)) )
))
(declare-fun arrayNoDuplicates!0 (array!76722 (_ BitVec 32) List!26207) Bool)

(assert (=> b!1188082 (= res!790013 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26204))))

(declare-fun b!1188083 () Bool)

(declare-fun arrayContainsKey!0 (array!76722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188083 (= e!675589 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1188084 () Bool)

(declare-fun e!675582 () Bool)

(declare-fun tp_is_empty!29977 () Bool)

(assert (=> b!1188084 (= e!675582 tp_is_empty!29977)))

(declare-fun b!1188085 () Bool)

(declare-fun res!790018 () Bool)

(assert (=> b!1188085 (=> (not res!790018) (not e!675585))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188085 (= res!790018 (validKeyInArray!0 k!934))))

(declare-fun b!1188086 () Bool)

(declare-fun e!675584 () Bool)

(declare-fun e!675580 () Bool)

(assert (=> b!1188086 (= e!675584 (not e!675580))))

(declare-fun res!790004 () Bool)

(assert (=> b!1188086 (=> res!790004 e!675580)))

(assert (=> b!1188086 (= res!790004 (bvsgt from!1455 i!673))))

(assert (=> b!1188086 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!540456 () Unit!39341)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76722 (_ BitVec 64) (_ BitVec 32)) Unit!39341)

(assert (=> b!1188086 (= lt!540456 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1188087 () Bool)

(assert (=> b!1188087 (= e!675585 e!675584)))

(declare-fun res!790011 () Bool)

(assert (=> b!1188087 (=> (not res!790011) (not e!675584))))

(declare-fun lt!540449 () array!76722)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76722 (_ BitVec 32)) Bool)

(assert (=> b!1188087 (= res!790011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540449 mask!1564))))

(assert (=> b!1188087 (= lt!540449 (array!76723 (store (arr!37007 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37544 _keys!1208)))))

(declare-fun b!1188088 () Bool)

(declare-fun res!790015 () Bool)

(assert (=> b!1188088 (=> (not res!790015) (not e!675585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188088 (= res!790015 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!46793 () Bool)

(declare-fun mapRes!46793 () Bool)

(declare-fun tp!89056 () Bool)

(declare-fun e!675587 () Bool)

(assert (=> mapNonEmpty!46793 (= mapRes!46793 (and tp!89056 e!675587))))

(declare-fun mapKey!46793 () (_ BitVec 32))

(declare-fun mapValue!46793 () ValueCell!14279)

(declare-fun mapRest!46793 () (Array (_ BitVec 32) ValueCell!14279))

(assert (=> mapNonEmpty!46793 (= (arr!37008 _values!996) (store mapRest!46793 mapKey!46793 mapValue!46793))))

(declare-fun b!1188089 () Bool)

(declare-fun res!790005 () Bool)

(assert (=> b!1188089 (=> (not res!790005) (not e!675585))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1188089 (= res!790005 (and (= (size!37545 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37544 _keys!1208) (size!37545 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1188090 () Bool)

(declare-fun e!675588 () Bool)

(assert (=> b!1188090 (= e!675580 e!675588)))

(declare-fun res!790017 () Bool)

(assert (=> b!1188090 (=> res!790017 e!675588)))

(assert (=> b!1188090 (= res!790017 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45097)

(declare-fun lt!540451 () array!76724)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45097)

(declare-fun getCurrentListMapNoExtraKeys!5143 (array!76722 array!76724 (_ BitVec 32) (_ BitVec 32) V!45097 V!45097 (_ BitVec 32) Int) ListLongMap!17427)

(assert (=> b!1188090 (= lt!540439 (getCurrentListMapNoExtraKeys!5143 lt!540449 lt!540451 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1188090 (= lt!540451 (array!76725 (store (arr!37008 _values!996) i!673 (ValueCellFull!14279 lt!540455)) (size!37545 _values!996)))))

(declare-fun dynLambda!3100 (Int (_ BitVec 64)) V!45097)

(assert (=> b!1188090 (= lt!540455 (dynLambda!3100 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1188090 (= lt!540440 (getCurrentListMapNoExtraKeys!5143 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1188091 () Bool)

(assert (=> b!1188091 (= e!675587 tp_is_empty!29977)))

(declare-fun b!1188092 () Bool)

(declare-fun Unit!39343 () Unit!39341)

(assert (=> b!1188092 (= e!675578 Unit!39343)))

(declare-fun lt!540454 () Unit!39341)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76722 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39341)

(assert (=> b!1188092 (= lt!540454 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1188092 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!540448 () Unit!39341)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76722 (_ BitVec 32) (_ BitVec 32)) Unit!39341)

(assert (=> b!1188092 (= lt!540448 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1188092 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26204)))

(declare-fun lt!540444 () Unit!39341)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76722 (_ BitVec 64) (_ BitVec 32) List!26207) Unit!39341)

(assert (=> b!1188092 (= lt!540444 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26204))))

(assert (=> b!1188092 false))

(declare-fun b!1188093 () Bool)

(declare-fun res!790012 () Bool)

(assert (=> b!1188093 (=> (not res!790012) (not e!675584))))

(assert (=> b!1188093 (= res!790012 (arrayNoDuplicates!0 lt!540449 #b00000000000000000000000000000000 Nil!26204))))

(declare-fun b!1188094 () Bool)

(declare-fun res!790006 () Bool)

(assert (=> b!1188094 (=> (not res!790006) (not e!675585))))

(assert (=> b!1188094 (= res!790006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188095 () Bool)

(assert (=> b!1188095 (= e!675588 e!675581)))

(declare-fun res!790008 () Bool)

(assert (=> b!1188095 (=> res!790008 e!675581)))

(assert (=> b!1188095 (= res!790008 (not (validKeyInArray!0 (select (arr!37007 _keys!1208) from!1455))))))

(assert (=> b!1188095 (= lt!540442 lt!540450)))

(assert (=> b!1188095 (= lt!540450 (-!1714 lt!540453 k!934))))

(assert (=> b!1188095 (= lt!540442 (getCurrentListMapNoExtraKeys!5143 lt!540449 lt!540451 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1188095 (= lt!540453 (getCurrentListMapNoExtraKeys!5143 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!540438 () Unit!39341)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!920 (array!76722 array!76724 (_ BitVec 32) (_ BitVec 32) V!45097 V!45097 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39341)

(assert (=> b!1188095 (= lt!540438 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!920 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46793 () Bool)

(assert (=> mapIsEmpty!46793 mapRes!46793))

(declare-fun b!1188096 () Bool)

(declare-fun res!790009 () Bool)

(assert (=> b!1188096 (=> (not res!790009) (not e!675585))))

(assert (=> b!1188096 (= res!790009 (= (select (arr!37007 _keys!1208) i!673) k!934))))

(declare-fun b!1188097 () Bool)

(declare-fun Unit!39344 () Unit!39341)

(assert (=> b!1188097 (= e!675578 Unit!39344)))

(declare-fun res!790010 () Bool)

(assert (=> start!99904 (=> (not res!790010) (not e!675585))))

(assert (=> start!99904 (= res!790010 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37544 _keys!1208))))))

(assert (=> start!99904 e!675585))

(assert (=> start!99904 tp_is_empty!29977))

(declare-fun array_inv!28120 (array!76722) Bool)

(assert (=> start!99904 (array_inv!28120 _keys!1208)))

(assert (=> start!99904 true))

(assert (=> start!99904 tp!89055))

(declare-fun e!675586 () Bool)

(declare-fun array_inv!28121 (array!76724) Bool)

(assert (=> start!99904 (and (array_inv!28121 _values!996) e!675586)))

(declare-fun b!1188098 () Bool)

(assert (=> b!1188098 (= e!675586 (and e!675582 mapRes!46793))))

(declare-fun condMapEmpty!46793 () Bool)

(declare-fun mapDefault!46793 () ValueCell!14279)

