; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98732 () Bool)

(assert start!98732)

(declare-fun b_free!24301 () Bool)

(declare-fun b_next!24301 () Bool)

(assert (=> start!98732 (= b_free!24301 (not b_next!24301))))

(declare-fun tp!85615 () Bool)

(declare-fun b_and!39465 () Bool)

(assert (=> start!98732 (= tp!85615 b_and!39465)))

(declare-fun b!1148795 () Bool)

(declare-datatypes ((Unit!37677 0))(
  ( (Unit!37678) )
))
(declare-fun e!653474 () Unit!37677)

(declare-fun Unit!37679 () Unit!37677)

(assert (=> b!1148795 (= e!653474 Unit!37679)))

(declare-fun lt!513633 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1148795 (= lt!513633 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!113515 () Bool)

(assert (=> b!1148795 (= c!113515 (and (not lt!513633) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513629 () Unit!37677)

(declare-fun e!653473 () Unit!37677)

(assert (=> b!1148795 (= lt!513629 e!653473)))

(declare-datatypes ((V!43569 0))(
  ( (V!43570 (val!14472 Int)) )
))
(declare-fun zeroValue!944 () V!43569)

(declare-datatypes ((array!74466 0))(
  ( (array!74467 (arr!35880 (Array (_ BitVec 32) (_ BitVec 64))) (size!36417 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74466)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13706 0))(
  ( (ValueCellFull!13706 (v!17110 V!43569)) (EmptyCell!13706) )
))
(declare-datatypes ((array!74468 0))(
  ( (array!74469 (arr!35881 (Array (_ BitVec 32) ValueCell!13706)) (size!36418 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74468)

(declare-fun minValue!944 () V!43569)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!513625 () Unit!37677)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!448 (array!74466 array!74468 (_ BitVec 32) (_ BitVec 32) V!43569 V!43569 (_ BitVec 64) (_ BitVec 32) Int) Unit!37677)

(assert (=> b!1148795 (= lt!513625 (lemmaListMapContainsThenArrayContainsFrom!448 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113518 () Bool)

(assert (=> b!1148795 (= c!113518 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764498 () Bool)

(declare-fun e!653465 () Bool)

(assert (=> b!1148795 (= res!764498 e!653465)))

(declare-fun e!653469 () Bool)

(assert (=> b!1148795 (=> (not res!764498) (not e!653469))))

(assert (=> b!1148795 e!653469))

(declare-fun lt!513630 () Unit!37677)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74466 (_ BitVec 32) (_ BitVec 32)) Unit!37677)

(assert (=> b!1148795 (= lt!513630 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25229 0))(
  ( (Nil!25226) (Cons!25225 (h!26434 (_ BitVec 64)) (t!36529 List!25229)) )
))
(declare-fun arrayNoDuplicates!0 (array!74466 (_ BitVec 32) List!25229) Bool)

(assert (=> b!1148795 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25226)))

(declare-fun lt!513634 () Unit!37677)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74466 (_ BitVec 64) (_ BitVec 32) List!25229) Unit!37677)

(assert (=> b!1148795 (= lt!513634 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25226))))

(assert (=> b!1148795 false))

(declare-fun b!1148796 () Bool)

(declare-fun call!53159 () Bool)

(assert (=> b!1148796 call!53159))

(declare-fun lt!513636 () Unit!37677)

(declare-fun call!53158 () Unit!37677)

(assert (=> b!1148796 (= lt!513636 call!53158)))

(declare-fun e!653466 () Unit!37677)

(assert (=> b!1148796 (= e!653466 lt!513636)))

(declare-fun b!1148797 () Bool)

(declare-fun e!653464 () Bool)

(declare-fun e!653471 () Bool)

(assert (=> b!1148797 (= e!653464 e!653471)))

(declare-fun res!764496 () Bool)

(assert (=> b!1148797 (=> res!764496 e!653471)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1148797 (= res!764496 (not (= from!1455 i!673)))))

(declare-fun lt!513624 () array!74468)

(declare-datatypes ((tuple2!18436 0))(
  ( (tuple2!18437 (_1!9228 (_ BitVec 64)) (_2!9228 V!43569)) )
))
(declare-datatypes ((List!25230 0))(
  ( (Nil!25227) (Cons!25226 (h!26435 tuple2!18436) (t!36530 List!25230)) )
))
(declare-datatypes ((ListLongMap!16417 0))(
  ( (ListLongMap!16418 (toList!8224 List!25230)) )
))
(declare-fun lt!513622 () ListLongMap!16417)

(declare-fun lt!513635 () array!74466)

(declare-fun getCurrentListMapNoExtraKeys!4665 (array!74466 array!74468 (_ BitVec 32) (_ BitVec 32) V!43569 V!43569 (_ BitVec 32) Int) ListLongMap!16417)

(assert (=> b!1148797 (= lt!513622 (getCurrentListMapNoExtraKeys!4665 lt!513635 lt!513624 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!513637 () V!43569)

(assert (=> b!1148797 (= lt!513624 (array!74469 (store (arr!35881 _values!996) i!673 (ValueCellFull!13706 lt!513637)) (size!36418 _values!996)))))

(declare-fun dynLambda!2696 (Int (_ BitVec 64)) V!43569)

(assert (=> b!1148797 (= lt!513637 (dynLambda!2696 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!513619 () ListLongMap!16417)

(assert (=> b!1148797 (= lt!513619 (getCurrentListMapNoExtraKeys!4665 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1148798 () Bool)

(declare-fun e!653477 () Bool)

(declare-fun call!53154 () ListLongMap!16417)

(declare-fun call!53157 () ListLongMap!16417)

(assert (=> b!1148798 (= e!653477 (= call!53154 call!53157))))

(declare-fun bm!53150 () Bool)

(declare-fun c!113516 () Bool)

(declare-fun lt!513631 () ListLongMap!16417)

(declare-fun call!53160 () Unit!37677)

(declare-fun lt!513623 () ListLongMap!16417)

(declare-fun addStillContains!862 (ListLongMap!16417 (_ BitVec 64) V!43569 (_ BitVec 64)) Unit!37677)

(assert (=> bm!53150 (= call!53160 (addStillContains!862 (ite c!113515 lt!513623 lt!513631) (ite c!113515 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113516 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113515 minValue!944 (ite c!113516 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1148799 () Bool)

(declare-fun res!764492 () Bool)

(declare-fun e!653472 () Bool)

(assert (=> b!1148799 (=> (not res!764492) (not e!653472))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1148799 (= res!764492 (validKeyInArray!0 k!934))))

(declare-fun bm!53151 () Bool)

(declare-fun call!53156 () ListLongMap!16417)

(declare-fun call!53155 () ListLongMap!16417)

(assert (=> bm!53151 (= call!53156 call!53155)))

(declare-fun b!1148800 () Bool)

(declare-fun e!653468 () Bool)

(declare-fun tp_is_empty!28831 () Bool)

(assert (=> b!1148800 (= e!653468 tp_is_empty!28831)))

(declare-fun mapNonEmpty!45071 () Bool)

(declare-fun mapRes!45071 () Bool)

(declare-fun tp!85614 () Bool)

(assert (=> mapNonEmpty!45071 (= mapRes!45071 (and tp!85614 e!653468))))

(declare-fun mapValue!45071 () ValueCell!13706)

(declare-fun mapRest!45071 () (Array (_ BitVec 32) ValueCell!13706))

(declare-fun mapKey!45071 () (_ BitVec 32))

(assert (=> mapNonEmpty!45071 (= (arr!35881 _values!996) (store mapRest!45071 mapKey!45071 mapValue!45071))))

(declare-fun b!1148801 () Bool)

(declare-fun e!653467 () Bool)

(declare-fun e!653462 () Bool)

(assert (=> b!1148801 (= e!653467 (and e!653462 mapRes!45071))))

(declare-fun condMapEmpty!45071 () Bool)

(declare-fun mapDefault!45071 () ValueCell!13706)

