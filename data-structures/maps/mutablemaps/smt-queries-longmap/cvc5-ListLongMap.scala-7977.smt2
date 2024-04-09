; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98738 () Bool)

(assert start!98738)

(declare-fun b_free!24307 () Bool)

(declare-fun b_next!24307 () Bool)

(assert (=> start!98738 (= b_free!24307 (not b_next!24307))))

(declare-fun tp!85633 () Bool)

(declare-fun b_and!39477 () Bool)

(assert (=> start!98738 (= tp!85633 b_and!39477)))

(declare-fun b!1149070 () Bool)

(declare-fun res!764627 () Bool)

(declare-fun e!653625 () Bool)

(assert (=> b!1149070 (=> (not res!764627) (not e!653625))))

(declare-datatypes ((array!74478 0))(
  ( (array!74479 (arr!35886 (Array (_ BitVec 32) (_ BitVec 64))) (size!36423 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74478)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74478 (_ BitVec 32)) Bool)

(assert (=> b!1149070 (= res!764627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1149071 () Bool)

(declare-datatypes ((Unit!37690 0))(
  ( (Unit!37691) )
))
(declare-fun e!653623 () Unit!37690)

(declare-fun e!653630 () Unit!37690)

(assert (=> b!1149071 (= e!653623 e!653630)))

(declare-fun c!113572 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!513828 () Bool)

(assert (=> b!1149071 (= c!113572 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!513828))))

(declare-fun b!1149072 () Bool)

(declare-fun e!653617 () Bool)

(declare-datatypes ((V!43577 0))(
  ( (V!43578 (val!14475 Int)) )
))
(declare-datatypes ((tuple2!18442 0))(
  ( (tuple2!18443 (_1!9231 (_ BitVec 64)) (_2!9231 V!43577)) )
))
(declare-datatypes ((List!25235 0))(
  ( (Nil!25232) (Cons!25231 (h!26440 tuple2!18442) (t!36541 List!25235)) )
))
(declare-datatypes ((ListLongMap!16423 0))(
  ( (ListLongMap!16424 (toList!8227 List!25235)) )
))
(declare-fun call!53231 () ListLongMap!16423)

(declare-fun call!53229 () ListLongMap!16423)

(assert (=> b!1149072 (= e!653617 (= call!53231 call!53229))))

(declare-fun res!764622 () Bool)

(assert (=> start!98738 (=> (not res!764622) (not e!653625))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98738 (= res!764622 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36423 _keys!1208))))))

(assert (=> start!98738 e!653625))

(declare-fun tp_is_empty!28837 () Bool)

(assert (=> start!98738 tp_is_empty!28837))

(declare-fun array_inv!27364 (array!74478) Bool)

(assert (=> start!98738 (array_inv!27364 _keys!1208)))

(assert (=> start!98738 true))

(assert (=> start!98738 tp!85633))

(declare-datatypes ((ValueCell!13709 0))(
  ( (ValueCellFull!13709 (v!17113 V!43577)) (EmptyCell!13709) )
))
(declare-datatypes ((array!74480 0))(
  ( (array!74481 (arr!35887 (Array (_ BitVec 32) ValueCell!13709)) (size!36424 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74480)

(declare-fun e!653626 () Bool)

(declare-fun array_inv!27365 (array!74480) Bool)

(assert (=> start!98738 (and (array_inv!27365 _values!996) e!653626)))

(declare-fun b!1149073 () Bool)

(declare-fun e!653620 () Unit!37690)

(declare-fun Unit!37692 () Unit!37690)

(assert (=> b!1149073 (= e!653620 Unit!37692)))

(assert (=> b!1149073 (= lt!513828 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!113570 () Bool)

(assert (=> b!1149073 (= c!113570 (and (not lt!513828) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513818 () Unit!37690)

(declare-fun e!653619 () Unit!37690)

(assert (=> b!1149073 (= lt!513818 e!653619)))

(declare-fun zeroValue!944 () V!43577)

(declare-fun lt!513811 () Unit!37690)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!43577)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!451 (array!74478 array!74480 (_ BitVec 32) (_ BitVec 32) V!43577 V!43577 (_ BitVec 64) (_ BitVec 32) Int) Unit!37690)

(assert (=> b!1149073 (= lt!513811 (lemmaListMapContainsThenArrayContainsFrom!451 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113573 () Bool)

(assert (=> b!1149073 (= c!113573 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764625 () Bool)

(declare-fun e!653621 () Bool)

(assert (=> b!1149073 (= res!764625 e!653621)))

(declare-fun e!653622 () Bool)

(assert (=> b!1149073 (=> (not res!764625) (not e!653622))))

(assert (=> b!1149073 e!653622))

(declare-fun lt!513819 () Unit!37690)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74478 (_ BitVec 32) (_ BitVec 32)) Unit!37690)

(assert (=> b!1149073 (= lt!513819 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25236 0))(
  ( (Nil!25233) (Cons!25232 (h!26441 (_ BitVec 64)) (t!36542 List!25236)) )
))
(declare-fun arrayNoDuplicates!0 (array!74478 (_ BitVec 32) List!25236) Bool)

(assert (=> b!1149073 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25233)))

(declare-fun lt!513827 () Unit!37690)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74478 (_ BitVec 64) (_ BitVec 32) List!25236) Unit!37690)

(assert (=> b!1149073 (= lt!513827 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25233))))

(assert (=> b!1149073 false))

(declare-fun b!1149074 () Bool)

(declare-fun res!764623 () Bool)

(assert (=> b!1149074 (=> (not res!764623) (not e!653625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1149074 (= res!764623 (validMask!0 mask!1564))))

(declare-fun b!1149075 () Bool)

(declare-fun e!653628 () Bool)

(assert (=> b!1149075 (= e!653628 true)))

(declare-fun e!653616 () Bool)

(assert (=> b!1149075 e!653616))

(declare-fun res!764626 () Bool)

(assert (=> b!1149075 (=> (not res!764626) (not e!653616))))

(declare-fun lt!513810 () ListLongMap!16423)

(declare-fun lt!513826 () ListLongMap!16423)

(assert (=> b!1149075 (= res!764626 (= lt!513810 lt!513826))))

(declare-fun lt!513820 () ListLongMap!16423)

(declare-fun -!1315 (ListLongMap!16423 (_ BitVec 64)) ListLongMap!16423)

(assert (=> b!1149075 (= lt!513810 (-!1315 lt!513820 k!934))))

(declare-fun lt!513829 () V!43577)

(declare-fun +!3565 (ListLongMap!16423 tuple2!18442) ListLongMap!16423)

(assert (=> b!1149075 (= (-!1315 (+!3565 lt!513826 (tuple2!18443 (select (arr!35886 _keys!1208) from!1455) lt!513829)) (select (arr!35886 _keys!1208) from!1455)) lt!513826)))

(declare-fun lt!513830 () Unit!37690)

(declare-fun addThenRemoveForNewKeyIsSame!164 (ListLongMap!16423 (_ BitVec 64) V!43577) Unit!37690)

(assert (=> b!1149075 (= lt!513830 (addThenRemoveForNewKeyIsSame!164 lt!513826 (select (arr!35886 _keys!1208) from!1455) lt!513829))))

(declare-fun lt!513824 () V!43577)

(declare-fun get!18288 (ValueCell!13709 V!43577) V!43577)

(assert (=> b!1149075 (= lt!513829 (get!18288 (select (arr!35887 _values!996) from!1455) lt!513824))))

(declare-fun lt!513813 () Unit!37690)

(assert (=> b!1149075 (= lt!513813 e!653620)))

(declare-fun c!113574 () Bool)

(declare-fun contains!6722 (ListLongMap!16423 (_ BitVec 64)) Bool)

(assert (=> b!1149075 (= c!113574 (contains!6722 lt!513826 k!934))))

(declare-fun getCurrentListMapNoExtraKeys!4668 (array!74478 array!74480 (_ BitVec 32) (_ BitVec 32) V!43577 V!43577 (_ BitVec 32) Int) ListLongMap!16423)

(assert (=> b!1149075 (= lt!513826 (getCurrentListMapNoExtraKeys!4668 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149076 () Bool)

(declare-fun res!764632 () Bool)

(assert (=> b!1149076 (=> (not res!764632) (not e!653625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1149076 (= res!764632 (validKeyInArray!0 k!934))))

(declare-fun b!1149077 () Bool)

(declare-fun e!653618 () Bool)

(assert (=> b!1149077 (= e!653618 tp_is_empty!28837)))

(declare-fun b!1149078 () Bool)

(assert (=> b!1149078 (= e!653617 (= call!53231 (-!1315 call!53229 k!934)))))

(declare-fun b!1149079 () Bool)

(declare-fun res!764621 () Bool)

(declare-fun e!653624 () Bool)

(assert (=> b!1149079 (=> (not res!764621) (not e!653624))))

(declare-fun lt!513821 () array!74478)

(assert (=> b!1149079 (= res!764621 (arrayNoDuplicates!0 lt!513821 #b00000000000000000000000000000000 Nil!25233))))

(declare-fun b!1149080 () Bool)

(declare-fun lt!513815 () Unit!37690)

(assert (=> b!1149080 (= e!653623 lt!513815)))

(declare-fun call!53226 () Unit!37690)

(assert (=> b!1149080 (= lt!513815 call!53226)))

(declare-fun call!53227 () Bool)

(assert (=> b!1149080 call!53227))

(declare-fun bm!53222 () Bool)

(declare-fun call!53232 () Unit!37690)

(assert (=> bm!53222 (= call!53226 call!53232)))

(declare-fun b!1149081 () Bool)

(declare-fun arrayContainsKey!0 (array!74478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1149081 (= e!653621 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!53223 () Bool)

(declare-fun lt!513831 () array!74480)

(assert (=> bm!53223 (= call!53231 (getCurrentListMapNoExtraKeys!4668 lt!513821 lt!513831 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149082 () Bool)

(declare-fun res!764631 () Bool)

(assert (=> b!1149082 (=> (not res!764631) (not e!653625))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1149082 (= res!764631 (= (select (arr!35886 _keys!1208) i!673) k!934))))

(declare-fun bm!53224 () Bool)

(declare-fun call!53225 () ListLongMap!16423)

(declare-fun call!53228 () ListLongMap!16423)

(assert (=> bm!53224 (= call!53225 call!53228)))

(declare-fun mapNonEmpty!45080 () Bool)

(declare-fun mapRes!45080 () Bool)

(declare-fun tp!85632 () Bool)

(declare-fun e!653627 () Bool)

(assert (=> mapNonEmpty!45080 (= mapRes!45080 (and tp!85632 e!653627))))

(declare-fun mapValue!45080 () ValueCell!13709)

(declare-fun mapKey!45080 () (_ BitVec 32))

(declare-fun mapRest!45080 () (Array (_ BitVec 32) ValueCell!13709))

(assert (=> mapNonEmpty!45080 (= (arr!35887 _values!996) (store mapRest!45080 mapKey!45080 mapValue!45080))))

(declare-fun b!1149083 () Bool)

(assert (=> b!1149083 (= e!653627 tp_is_empty!28837)))

(declare-fun b!1149084 () Bool)

(assert (=> b!1149084 (= e!653622 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149085 () Bool)

(assert (=> b!1149085 (contains!6722 call!53228 k!934)))

(declare-fun lt!513823 () ListLongMap!16423)

(declare-fun lt!513812 () Unit!37690)

(declare-fun addStillContains!865 (ListLongMap!16423 (_ BitVec 64) V!43577 (_ BitVec 64)) Unit!37690)

(assert (=> b!1149085 (= lt!513812 (addStillContains!865 lt!513823 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!53230 () Bool)

(assert (=> b!1149085 call!53230))

(assert (=> b!1149085 (= lt!513823 (+!3565 lt!513826 (tuple2!18443 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!513814 () Unit!37690)

(assert (=> b!1149085 (= lt!513814 call!53232)))

(assert (=> b!1149085 (= e!653619 lt!513812)))

(declare-fun b!1149086 () Bool)

(assert (=> b!1149086 (= e!653621 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!513828) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1149087 () Bool)

(declare-fun e!653631 () Bool)

(assert (=> b!1149087 (= e!653631 e!653628)))

(declare-fun res!764630 () Bool)

(assert (=> b!1149087 (=> res!764630 e!653628)))

(assert (=> b!1149087 (= res!764630 (not (= (select (arr!35886 _keys!1208) from!1455) k!934)))))

(assert (=> b!1149087 e!653617))

(declare-fun c!113569 () Bool)

(assert (=> b!1149087 (= c!113569 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!513822 () Unit!37690)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!558 (array!74478 array!74480 (_ BitVec 32) (_ BitVec 32) V!43577 V!43577 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37690)

(assert (=> b!1149087 (= lt!513822 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!558 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149088 () Bool)

(declare-fun e!653629 () Bool)

(assert (=> b!1149088 (= e!653629 e!653631)))

(declare-fun res!764633 () Bool)

(assert (=> b!1149088 (=> res!764633 e!653631)))

(assert (=> b!1149088 (= res!764633 (not (= from!1455 i!673)))))

(declare-fun lt!513817 () ListLongMap!16423)

(assert (=> b!1149088 (= lt!513817 (getCurrentListMapNoExtraKeys!4668 lt!513821 lt!513831 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1149088 (= lt!513831 (array!74481 (store (arr!35887 _values!996) i!673 (ValueCellFull!13709 lt!513824)) (size!36424 _values!996)))))

(declare-fun dynLambda!2699 (Int (_ BitVec 64)) V!43577)

(assert (=> b!1149088 (= lt!513824 (dynLambda!2699 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1149088 (= lt!513820 (getCurrentListMapNoExtraKeys!4668 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!53225 () Bool)

(assert (=> bm!53225 (= call!53229 (getCurrentListMapNoExtraKeys!4668 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149089 () Bool)

(declare-fun Unit!37693 () Unit!37690)

(assert (=> b!1149089 (= e!653630 Unit!37693)))

(declare-fun mapIsEmpty!45080 () Bool)

(assert (=> mapIsEmpty!45080 mapRes!45080))

(declare-fun b!1149090 () Bool)

(assert (=> b!1149090 call!53227))

(declare-fun lt!513825 () Unit!37690)

(assert (=> b!1149090 (= lt!513825 call!53226)))

(assert (=> b!1149090 (= e!653630 lt!513825)))

(declare-fun b!1149091 () Bool)

(declare-fun res!764619 () Bool)

(assert (=> b!1149091 (=> (not res!764619) (not e!653625))))

(assert (=> b!1149091 (= res!764619 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25233))))

(declare-fun b!1149092 () Bool)

(assert (=> b!1149092 (= e!653625 e!653624)))

(declare-fun res!764620 () Bool)

(assert (=> b!1149092 (=> (not res!764620) (not e!653624))))

(assert (=> b!1149092 (= res!764620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!513821 mask!1564))))

(assert (=> b!1149092 (= lt!513821 (array!74479 (store (arr!35886 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36423 _keys!1208)))))

(declare-fun b!1149093 () Bool)

(declare-fun res!764628 () Bool)

(assert (=> b!1149093 (=> (not res!764628) (not e!653625))))

(assert (=> b!1149093 (= res!764628 (and (= (size!36424 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36423 _keys!1208) (size!36424 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun c!113571 () Bool)

(declare-fun bm!53226 () Bool)

(assert (=> bm!53226 (= call!53228 (+!3565 (ite c!113570 lt!513823 lt!513826) (ite c!113570 (tuple2!18443 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113571 (tuple2!18443 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18443 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!53227 () Bool)

(assert (=> bm!53227 (= call!53230 (contains!6722 (ite c!113570 lt!513823 call!53225) k!934))))

(declare-fun bm!53228 () Bool)

(assert (=> bm!53228 (= call!53227 call!53230)))

(declare-fun b!1149094 () Bool)

(declare-fun Unit!37694 () Unit!37690)

(assert (=> b!1149094 (= e!653620 Unit!37694)))

(declare-fun b!1149095 () Bool)

(assert (=> b!1149095 (= c!113571 (and (not lt!513828) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1149095 (= e!653619 e!653623)))

(declare-fun b!1149096 () Bool)

(assert (=> b!1149096 (= e!653626 (and e!653618 mapRes!45080))))

(declare-fun condMapEmpty!45080 () Bool)

(declare-fun mapDefault!45080 () ValueCell!13709)

