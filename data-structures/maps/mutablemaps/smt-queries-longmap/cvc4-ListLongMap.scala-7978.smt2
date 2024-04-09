; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98748 () Bool)

(assert start!98748)

(declare-fun b_free!24317 () Bool)

(declare-fun b_next!24317 () Bool)

(assert (=> start!98748 (= b_free!24317 (not b_next!24317))))

(declare-fun tp!85662 () Bool)

(declare-fun b_and!39497 () Bool)

(assert (=> start!98748 (= tp!85662 b_and!39497)))

(declare-fun call!53352 () Bool)

(declare-datatypes ((V!43589 0))(
  ( (V!43590 (val!14480 Int)) )
))
(declare-datatypes ((tuple2!18452 0))(
  ( (tuple2!18453 (_1!9236 (_ BitVec 64)) (_2!9236 V!43589)) )
))
(declare-datatypes ((List!25245 0))(
  ( (Nil!25242) (Cons!25241 (h!26450 tuple2!18452) (t!36561 List!25245)) )
))
(declare-datatypes ((ListLongMap!16433 0))(
  ( (ListLongMap!16434 (toList!8232 List!25245)) )
))
(declare-fun call!53347 () ListLongMap!16433)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun bm!53342 () Bool)

(declare-fun lt!514155 () ListLongMap!16433)

(declare-fun c!113659 () Bool)

(declare-fun contains!6727 (ListLongMap!16433 (_ BitVec 64)) Bool)

(assert (=> bm!53342 (= call!53352 (contains!6727 (ite c!113659 lt!514155 call!53347) k!934))))

(declare-fun res!764845 () Bool)

(declare-fun e!653882 () Bool)

(assert (=> start!98748 (=> (not res!764845) (not e!653882))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!74498 0))(
  ( (array!74499 (arr!35896 (Array (_ BitVec 32) (_ BitVec 64))) (size!36433 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74498)

(assert (=> start!98748 (= res!764845 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36433 _keys!1208))))))

(assert (=> start!98748 e!653882))

(declare-fun tp_is_empty!28847 () Bool)

(assert (=> start!98748 tp_is_empty!28847))

(declare-fun array_inv!27372 (array!74498) Bool)

(assert (=> start!98748 (array_inv!27372 _keys!1208)))

(assert (=> start!98748 true))

(assert (=> start!98748 tp!85662))

(declare-datatypes ((ValueCell!13714 0))(
  ( (ValueCellFull!13714 (v!17118 V!43589)) (EmptyCell!13714) )
))
(declare-datatypes ((array!74500 0))(
  ( (array!74501 (arr!35897 (Array (_ BitVec 32) ValueCell!13714)) (size!36434 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74500)

(declare-fun e!653871 () Bool)

(declare-fun array_inv!27373 (array!74500) Bool)

(assert (=> start!98748 (and (array_inv!27373 _values!996) e!653871)))

(declare-fun b!1149530 () Bool)

(declare-fun e!653885 () Bool)

(assert (=> b!1149530 (= e!653885 tp_is_empty!28847)))

(declare-fun b!1149531 () Bool)

(declare-fun res!764852 () Bool)

(declare-fun e!653878 () Bool)

(assert (=> b!1149531 (=> (not res!764852) (not e!653878))))

(declare-fun lt!514146 () array!74498)

(declare-datatypes ((List!25246 0))(
  ( (Nil!25243) (Cons!25242 (h!26451 (_ BitVec 64)) (t!36562 List!25246)) )
))
(declare-fun arrayNoDuplicates!0 (array!74498 (_ BitVec 32) List!25246) Bool)

(assert (=> b!1149531 (= res!764852 (arrayNoDuplicates!0 lt!514146 #b00000000000000000000000000000000 Nil!25243))))

(declare-fun b!1149532 () Bool)

(declare-datatypes ((Unit!37713 0))(
  ( (Unit!37714) )
))
(declare-fun e!653874 () Unit!37713)

(declare-fun Unit!37715 () Unit!37713)

(assert (=> b!1149532 (= e!653874 Unit!37715)))

(declare-fun lt!514142 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1149532 (= lt!514142 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1149532 (= c!113659 (and (not lt!514142) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!514144 () Unit!37713)

(declare-fun e!653876 () Unit!37713)

(assert (=> b!1149532 (= lt!514144 e!653876)))

(declare-fun zeroValue!944 () V!43589)

(declare-fun lt!514154 () Unit!37713)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43589)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!456 (array!74498 array!74500 (_ BitVec 32) (_ BitVec 32) V!43589 V!43589 (_ BitVec 64) (_ BitVec 32) Int) Unit!37713)

(assert (=> b!1149532 (= lt!514154 (lemmaListMapContainsThenArrayContainsFrom!456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113660 () Bool)

(assert (=> b!1149532 (= c!113660 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764858 () Bool)

(declare-fun e!653875 () Bool)

(assert (=> b!1149532 (= res!764858 e!653875)))

(declare-fun e!653877 () Bool)

(assert (=> b!1149532 (=> (not res!764858) (not e!653877))))

(assert (=> b!1149532 e!653877))

(declare-fun lt!514152 () Unit!37713)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74498 (_ BitVec 32) (_ BitVec 32)) Unit!37713)

(assert (=> b!1149532 (= lt!514152 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1149532 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25243)))

(declare-fun lt!514151 () Unit!37713)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74498 (_ BitVec 64) (_ BitVec 32) List!25246) Unit!37713)

(assert (=> b!1149532 (= lt!514151 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25243))))

(assert (=> b!1149532 false))

(declare-fun e!653879 () Bool)

(declare-fun b!1149533 () Bool)

(declare-fun lt!514150 () array!74500)

(declare-fun lt!514149 () ListLongMap!16433)

(declare-fun getCurrentListMapNoExtraKeys!4673 (array!74498 array!74500 (_ BitVec 32) (_ BitVec 32) V!43589 V!43589 (_ BitVec 32) Int) ListLongMap!16433)

(assert (=> b!1149533 (= e!653879 (= lt!514149 (getCurrentListMapNoExtraKeys!4673 lt!514146 lt!514150 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1149534 () Bool)

(declare-fun res!764844 () Bool)

(assert (=> b!1149534 (=> (not res!764844) (not e!653882))))

(assert (=> b!1149534 (= res!764844 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25243))))

(declare-fun lt!514161 () ListLongMap!16433)

(declare-fun c!113663 () Bool)

(declare-fun bm!53343 () Bool)

(declare-fun call!53350 () Unit!37713)

(declare-fun addStillContains!870 (ListLongMap!16433 (_ BitVec 64) V!43589 (_ BitVec 64)) Unit!37713)

(assert (=> bm!53343 (= call!53350 (addStillContains!870 (ite c!113659 lt!514155 lt!514161) (ite c!113659 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113663 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113659 minValue!944 (ite c!113663 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1149535 () Bool)

(declare-fun e!653881 () Bool)

(declare-fun e!653880 () Bool)

(assert (=> b!1149535 (= e!653881 e!653880)))

(declare-fun res!764847 () Bool)

(assert (=> b!1149535 (=> res!764847 e!653880)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1149535 (= res!764847 (not (= from!1455 i!673)))))

(declare-fun lt!514156 () ListLongMap!16433)

(assert (=> b!1149535 (= lt!514156 (getCurrentListMapNoExtraKeys!4673 lt!514146 lt!514150 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!514160 () V!43589)

(assert (=> b!1149535 (= lt!514150 (array!74501 (store (arr!35897 _values!996) i!673 (ValueCellFull!13714 lt!514160)) (size!36434 _values!996)))))

(declare-fun dynLambda!2703 (Int (_ BitVec 64)) V!43589)

(assert (=> b!1149535 (= lt!514160 (dynLambda!2703 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!514147 () ListLongMap!16433)

(assert (=> b!1149535 (= lt!514147 (getCurrentListMapNoExtraKeys!4673 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!53344 () Bool)

(declare-fun call!53346 () Unit!37713)

(assert (=> bm!53344 (= call!53346 call!53350)))

(declare-fun b!1149536 () Bool)

(assert (=> b!1149536 (= e!653882 e!653878)))

(declare-fun res!764849 () Bool)

(assert (=> b!1149536 (=> (not res!764849) (not e!653878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74498 (_ BitVec 32)) Bool)

(assert (=> b!1149536 (= res!764849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!514146 mask!1564))))

(assert (=> b!1149536 (= lt!514146 (array!74499 (store (arr!35896 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36433 _keys!1208)))))

(declare-fun b!1149537 () Bool)

(declare-fun e!653872 () Unit!37713)

(declare-fun lt!514157 () Unit!37713)

(assert (=> b!1149537 (= e!653872 lt!514157)))

(assert (=> b!1149537 (= lt!514157 call!53346)))

(declare-fun call!53351 () Bool)

(assert (=> b!1149537 call!53351))

(declare-fun b!1149538 () Bool)

(assert (=> b!1149538 (= e!653875 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!514142) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1149539 () Bool)

(declare-fun res!764850 () Bool)

(assert (=> b!1149539 (=> (not res!764850) (not e!653882))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1149539 (= res!764850 (validKeyInArray!0 k!934))))

(declare-fun b!1149540 () Bool)

(declare-fun res!764846 () Bool)

(assert (=> b!1149540 (=> (not res!764846) (not e!653882))))

(assert (=> b!1149540 (= res!764846 (= (select (arr!35896 _keys!1208) i!673) k!934))))

(declare-fun b!1149541 () Bool)

(declare-fun e!653870 () Bool)

(declare-fun mapRes!45095 () Bool)

(assert (=> b!1149541 (= e!653871 (and e!653870 mapRes!45095))))

(declare-fun condMapEmpty!45095 () Bool)

(declare-fun mapDefault!45095 () ValueCell!13714)

