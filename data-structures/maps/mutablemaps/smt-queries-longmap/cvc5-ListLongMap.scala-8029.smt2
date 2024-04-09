; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99050 () Bool)

(assert start!99050)

(declare-fun b_free!24619 () Bool)

(declare-fun b_next!24619 () Bool)

(assert (=> start!99050 (= b_free!24619 (not b_next!24619))))

(declare-fun tp!86568 () Bool)

(declare-fun b_and!40101 () Bool)

(assert (=> start!99050 (= tp!86568 b_and!40101)))

(declare-fun b!1163422 () Bool)

(declare-datatypes ((Unit!38289 0))(
  ( (Unit!38290) )
))
(declare-fun e!661586 () Unit!38289)

(declare-fun Unit!38291 () Unit!38289)

(assert (=> b!1163422 (= e!661586 Unit!38291)))

(declare-fun b!1163423 () Bool)

(declare-fun res!771649 () Bool)

(declare-fun e!661576 () Bool)

(assert (=> b!1163423 (=> (not res!771649) (not e!661576))))

(declare-datatypes ((array!75088 0))(
  ( (array!75089 (arr!36191 (Array (_ BitVec 32) (_ BitVec 64))) (size!36728 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75088)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1163423 (= res!771649 (= (select (arr!36191 _keys!1208) i!673) k!934))))

(declare-datatypes ((V!43993 0))(
  ( (V!43994 (val!14631 Int)) )
))
(declare-fun zeroValue!944 () V!43993)

(declare-fun call!56973 () Unit!38289)

(declare-fun bm!56966 () Bool)

(declare-datatypes ((tuple2!18732 0))(
  ( (tuple2!18733 (_1!9376 (_ BitVec 64)) (_2!9376 V!43993)) )
))
(declare-datatypes ((List!25506 0))(
  ( (Nil!25503) (Cons!25502 (h!26711 tuple2!18732) (t!37124 List!25506)) )
))
(declare-datatypes ((ListLongMap!16713 0))(
  ( (ListLongMap!16714 (toList!8372 List!25506)) )
))
(declare-fun lt!524120 () ListLongMap!16713)

(declare-fun c!116381 () Bool)

(declare-fun minValue!944 () V!43993)

(declare-fun c!116382 () Bool)

(declare-fun addStillContains!990 (ListLongMap!16713 (_ BitVec 64) V!43993 (_ BitVec 64)) Unit!38289)

(assert (=> bm!56966 (= call!56973 (addStillContains!990 lt!524120 (ite (or c!116382 c!116381) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!116382 c!116381) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1163424 () Bool)

(declare-fun e!661574 () Unit!38289)

(declare-fun lt!524116 () Unit!38289)

(assert (=> b!1163424 (= e!661574 lt!524116)))

(declare-fun call!56970 () Unit!38289)

(assert (=> b!1163424 (= lt!524116 call!56970)))

(declare-fun call!56972 () Bool)

(assert (=> b!1163424 call!56972))

(declare-fun b!1163425 () Bool)

(declare-fun res!771645 () Bool)

(assert (=> b!1163425 (=> (not res!771645) (not e!661576))))

(assert (=> b!1163425 (= res!771645 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36728 _keys!1208))))))

(declare-fun lt!524109 () ListLongMap!16713)

(declare-fun call!56971 () ListLongMap!16713)

(declare-fun bm!56967 () Bool)

(declare-fun call!56976 () Bool)

(declare-fun contains!6850 (ListLongMap!16713 (_ BitVec 64)) Bool)

(assert (=> bm!56967 (= call!56976 (contains!6850 (ite c!116382 lt!524109 call!56971) k!934))))

(declare-fun b!1163426 () Bool)

(declare-fun res!771653 () Bool)

(assert (=> b!1163426 (=> (not res!771653) (not e!661576))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75088 (_ BitVec 32)) Bool)

(assert (=> b!1163426 (= res!771653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1163427 () Bool)

(declare-fun res!771646 () Bool)

(assert (=> b!1163427 (=> (not res!771646) (not e!661576))))

(declare-datatypes ((List!25507 0))(
  ( (Nil!25504) (Cons!25503 (h!26712 (_ BitVec 64)) (t!37125 List!25507)) )
))
(declare-fun arrayNoDuplicates!0 (array!75088 (_ BitVec 32) List!25507) Bool)

(assert (=> b!1163427 (= res!771646 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25504))))

(declare-fun mapNonEmpty!45548 () Bool)

(declare-fun mapRes!45548 () Bool)

(declare-fun tp!86569 () Bool)

(declare-fun e!661585 () Bool)

(assert (=> mapNonEmpty!45548 (= mapRes!45548 (and tp!86569 e!661585))))

(declare-datatypes ((ValueCell!13865 0))(
  ( (ValueCellFull!13865 (v!17269 V!43993)) (EmptyCell!13865) )
))
(declare-fun mapValue!45548 () ValueCell!13865)

(declare-fun mapRest!45548 () (Array (_ BitVec 32) ValueCell!13865))

(declare-fun mapKey!45548 () (_ BitVec 32))

(declare-datatypes ((array!75090 0))(
  ( (array!75091 (arr!36192 (Array (_ BitVec 32) ValueCell!13865)) (size!36729 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75090)

(assert (=> mapNonEmpty!45548 (= (arr!36192 _values!996) (store mapRest!45548 mapKey!45548 mapValue!45548))))

(declare-fun b!1163428 () Bool)

(declare-fun e!661583 () Bool)

(declare-fun e!661580 () Bool)

(assert (=> b!1163428 (= e!661583 e!661580)))

(declare-fun res!771644 () Bool)

(assert (=> b!1163428 (=> res!771644 e!661580)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1163428 (= res!771644 (not (= from!1455 i!673)))))

(declare-fun lt!524113 () array!75088)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!524107 () array!75090)

(declare-fun lt!524125 () ListLongMap!16713)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4806 (array!75088 array!75090 (_ BitVec 32) (_ BitVec 32) V!43993 V!43993 (_ BitVec 32) Int) ListLongMap!16713)

(assert (=> b!1163428 (= lt!524125 (getCurrentListMapNoExtraKeys!4806 lt!524113 lt!524107 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524115 () V!43993)

(assert (=> b!1163428 (= lt!524107 (array!75091 (store (arr!36192 _values!996) i!673 (ValueCellFull!13865 lt!524115)) (size!36729 _values!996)))))

(declare-fun dynLambda!2803 (Int (_ BitVec 64)) V!43993)

(assert (=> b!1163428 (= lt!524115 (dynLambda!2803 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!524122 () ListLongMap!16713)

(assert (=> b!1163428 (= lt!524122 (getCurrentListMapNoExtraKeys!4806 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1163429 () Bool)

(declare-fun e!661572 () Bool)

(declare-fun arrayContainsKey!0 (array!75088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1163429 (= e!661572 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1163430 () Bool)

(declare-fun +!3693 (ListLongMap!16713 tuple2!18732) ListLongMap!16713)

(assert (=> b!1163430 (contains!6850 (+!3693 lt!524109 (tuple2!18733 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!524124 () Unit!38289)

(assert (=> b!1163430 (= lt!524124 (addStillContains!990 lt!524109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1163430 call!56976))

(declare-fun call!56974 () ListLongMap!16713)

(assert (=> b!1163430 (= lt!524109 call!56974)))

(declare-fun lt!524112 () Unit!38289)

(assert (=> b!1163430 (= lt!524112 call!56973)))

(declare-fun e!661582 () Unit!38289)

(assert (=> b!1163430 (= e!661582 lt!524124)))

(declare-fun b!1163431 () Bool)

(declare-fun e!661579 () Bool)

(declare-fun e!661584 () Bool)

(assert (=> b!1163431 (= e!661579 (and e!661584 mapRes!45548))))

(declare-fun condMapEmpty!45548 () Bool)

(declare-fun mapDefault!45548 () ValueCell!13865)

