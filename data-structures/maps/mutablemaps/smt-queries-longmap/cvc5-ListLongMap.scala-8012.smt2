; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98948 () Bool)

(assert start!98948)

(declare-fun b_free!24517 () Bool)

(declare-fun b_next!24517 () Bool)

(assert (=> start!98948 (= b_free!24517 (not b_next!24517))))

(declare-fun tp!86263 () Bool)

(declare-fun b_and!39897 () Bool)

(assert (=> start!98948 (= tp!86263 b_and!39897)))

(declare-fun b!1158730 () Bool)

(declare-fun e!658973 () Bool)

(declare-datatypes ((V!43857 0))(
  ( (V!43858 (val!14580 Int)) )
))
(declare-datatypes ((tuple2!18630 0))(
  ( (tuple2!18631 (_1!9325 (_ BitVec 64)) (_2!9325 V!43857)) )
))
(declare-datatypes ((List!25408 0))(
  ( (Nil!25405) (Cons!25404 (h!26613 tuple2!18630) (t!36924 List!25408)) )
))
(declare-datatypes ((ListLongMap!16611 0))(
  ( (ListLongMap!16612 (toList!8321 List!25408)) )
))
(declare-fun call!55747 () ListLongMap!16611)

(declare-fun call!55752 () ListLongMap!16611)

(assert (=> b!1158730 (= e!658973 (= call!55747 call!55752))))

(declare-fun b!1158731 () Bool)

(declare-fun res!769352 () Bool)

(declare-fun e!658984 () Bool)

(assert (=> b!1158731 (=> (not res!769352) (not e!658984))))

(declare-datatypes ((array!74884 0))(
  ( (array!74885 (arr!36089 (Array (_ BitVec 32) (_ BitVec 64))) (size!36626 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74884)

(declare-datatypes ((List!25409 0))(
  ( (Nil!25406) (Cons!25405 (h!26614 (_ BitVec 64)) (t!36925 List!25409)) )
))
(declare-fun arrayNoDuplicates!0 (array!74884 (_ BitVec 32) List!25409) Bool)

(assert (=> b!1158731 (= res!769352 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25406))))

(declare-fun zeroValue!944 () V!43857)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13814 0))(
  ( (ValueCellFull!13814 (v!17218 V!43857)) (EmptyCell!13814) )
))
(declare-datatypes ((array!74886 0))(
  ( (array!74887 (arr!36090 (Array (_ BitVec 32) ValueCell!13814)) (size!36627 (_ BitVec 32))) )
))
(declare-fun lt!520758 () array!74886)

(declare-fun minValue!944 () V!43857)

(declare-fun lt!520745 () array!74884)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!55742 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4757 (array!74884 array!74886 (_ BitVec 32) (_ BitVec 32) V!43857 V!43857 (_ BitVec 32) Int) ListLongMap!16611)

(assert (=> bm!55742 (= call!55747 (getCurrentListMapNoExtraKeys!4757 lt!520745 lt!520758 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158732 () Bool)

(declare-fun e!658981 () Bool)

(declare-fun e!658970 () Bool)

(assert (=> b!1158732 (= e!658981 e!658970)))

(declare-fun res!769346 () Bool)

(assert (=> b!1158732 (=> res!769346 e!658970)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1158732 (= res!769346 (not (= (select (arr!36089 _keys!1208) from!1455) k!934)))))

(assert (=> b!1158732 e!658973))

(declare-fun c!115461 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1158732 (= c!115461 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!38073 0))(
  ( (Unit!38074) )
))
(declare-fun lt!520747 () Unit!38073)

(declare-fun _values!996 () array!74886)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!620 (array!74884 array!74886 (_ BitVec 32) (_ BitVec 32) V!43857 V!43857 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38073)

(assert (=> b!1158732 (= lt!520747 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!620 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158733 () Bool)

(declare-fun e!658976 () Bool)

(declare-fun arrayContainsKey!0 (array!74884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1158733 (= e!658976 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!520743 () ListLongMap!16611)

(declare-fun c!115463 () Bool)

(declare-fun call!55749 () Unit!38073)

(declare-fun c!115462 () Bool)

(declare-fun bm!55743 () Bool)

(declare-fun addStillContains!944 (ListLongMap!16611 (_ BitVec 64) V!43857 (_ BitVec 64)) Unit!38073)

(assert (=> bm!55743 (= call!55749 (addStillContains!944 lt!520743 (ite (or c!115463 c!115462) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115463 c!115462) zeroValue!944 minValue!944) k!934))))

(declare-fun mapNonEmpty!45395 () Bool)

(declare-fun mapRes!45395 () Bool)

(declare-fun tp!86262 () Bool)

(declare-fun e!658983 () Bool)

(assert (=> mapNonEmpty!45395 (= mapRes!45395 (and tp!86262 e!658983))))

(declare-fun mapRest!45395 () (Array (_ BitVec 32) ValueCell!13814))

(declare-fun mapKey!45395 () (_ BitVec 32))

(declare-fun mapValue!45395 () ValueCell!13814)

(assert (=> mapNonEmpty!45395 (= (arr!36090 _values!996) (store mapRest!45395 mapKey!45395 mapValue!45395))))

(declare-fun b!1158734 () Bool)

(declare-fun e!658980 () Bool)

(assert (=> b!1158734 (= e!658984 e!658980)))

(declare-fun res!769357 () Bool)

(assert (=> b!1158734 (=> (not res!769357) (not e!658980))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74884 (_ BitVec 32)) Bool)

(assert (=> b!1158734 (= res!769357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!520745 mask!1564))))

(assert (=> b!1158734 (= lt!520745 (array!74885 (store (arr!36089 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36626 _keys!1208)))))

(declare-fun b!1158735 () Bool)

(declare-fun lt!520754 () Bool)

(assert (=> b!1158735 (= e!658976 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!520754) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1158736 () Bool)

(declare-fun e!658975 () Bool)

(declare-fun tp_is_empty!29047 () Bool)

(assert (=> b!1158736 (= e!658975 tp_is_empty!29047)))

(declare-fun bm!55744 () Bool)

(declare-fun call!55748 () ListLongMap!16611)

(declare-fun call!55746 () ListLongMap!16611)

(assert (=> bm!55744 (= call!55748 call!55746)))

(declare-fun b!1158737 () Bool)

(declare-fun call!55745 () Bool)

(assert (=> b!1158737 call!55745))

(declare-fun lt!520760 () Unit!38073)

(declare-fun call!55751 () Unit!38073)

(assert (=> b!1158737 (= lt!520760 call!55751)))

(declare-fun e!658982 () Unit!38073)

(assert (=> b!1158737 (= e!658982 lt!520760)))

(declare-fun b!1158738 () Bool)

(declare-fun -!1393 (ListLongMap!16611 (_ BitVec 64)) ListLongMap!16611)

(assert (=> b!1158738 (= e!658973 (= call!55747 (-!1393 call!55752 k!934)))))

(declare-fun b!1158739 () Bool)

(declare-fun res!769355 () Bool)

(assert (=> b!1158739 (=> (not res!769355) (not e!658984))))

(assert (=> b!1158739 (= res!769355 (= (select (arr!36089 _keys!1208) i!673) k!934))))

(declare-fun b!1158740 () Bool)

(declare-fun e!658971 () Bool)

(assert (=> b!1158740 (= e!658980 (not e!658971))))

(declare-fun res!769348 () Bool)

(assert (=> b!1158740 (=> res!769348 e!658971)))

(assert (=> b!1158740 (= res!769348 (bvsgt from!1455 i!673))))

(assert (=> b!1158740 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!520751 () Unit!38073)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74884 (_ BitVec 64) (_ BitVec 32)) Unit!38073)

(assert (=> b!1158740 (= lt!520751 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1158741 () Bool)

(declare-fun e!658972 () Bool)

(assert (=> b!1158741 (= e!658972 (and e!658975 mapRes!45395))))

(declare-fun condMapEmpty!45395 () Bool)

(declare-fun mapDefault!45395 () ValueCell!13814)

