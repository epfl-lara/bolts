; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98578 () Bool)

(assert start!98578)

(declare-fun b_free!24147 () Bool)

(declare-fun b_next!24147 () Bool)

(assert (=> start!98578 (= b_free!24147 (not b_next!24147))))

(declare-fun tp!85153 () Bool)

(declare-fun b_and!39157 () Bool)

(assert (=> start!98578 (= tp!85153 b_and!39157)))

(declare-fun bm!51302 () Bool)

(declare-fun call!51312 () Bool)

(declare-fun call!51307 () Bool)

(assert (=> bm!51302 (= call!51312 call!51307)))

(declare-fun b!1141786 () Bool)

(declare-fun e!649618 () Bool)

(declare-fun tp_is_empty!28677 () Bool)

(assert (=> b!1141786 (= e!649618 tp_is_empty!28677)))

(declare-fun b!1141787 () Bool)

(declare-fun e!649626 () Bool)

(declare-fun e!649623 () Bool)

(declare-fun mapRes!44840 () Bool)

(assert (=> b!1141787 (= e!649626 (and e!649623 mapRes!44840))))

(declare-fun condMapEmpty!44840 () Bool)

(declare-datatypes ((V!43363 0))(
  ( (V!43364 (val!14395 Int)) )
))
(declare-datatypes ((ValueCell!13629 0))(
  ( (ValueCellFull!13629 (v!17033 V!43363)) (EmptyCell!13629) )
))
(declare-datatypes ((array!74164 0))(
  ( (array!74165 (arr!35729 (Array (_ BitVec 32) ValueCell!13629)) (size!36266 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74164)

(declare-fun mapDefault!44840 () ValueCell!13629)

(assert (=> b!1141787 (= condMapEmpty!44840 (= (arr!35729 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13629)) mapDefault!44840)))))

(declare-fun b!1141788 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!508788 () Bool)

(declare-fun e!649622 () Bool)

(assert (=> b!1141788 (= e!649622 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!508788) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1141789 () Bool)

(declare-fun res!761097 () Bool)

(declare-fun e!649614 () Bool)

(assert (=> b!1141789 (=> (not res!761097) (not e!649614))))

(declare-datatypes ((array!74166 0))(
  ( (array!74167 (arr!35730 (Array (_ BitVec 32) (_ BitVec 64))) (size!36267 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74166)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1141789 (= res!761097 (= (select (arr!35730 _keys!1208) i!673) k0!934))))

(declare-fun bm!51303 () Bool)

(declare-datatypes ((tuple2!18296 0))(
  ( (tuple2!18297 (_1!9158 (_ BitVec 64)) (_2!9158 V!43363)) )
))
(declare-datatypes ((List!25096 0))(
  ( (Nil!25093) (Cons!25092 (h!26301 tuple2!18296) (t!36242 List!25096)) )
))
(declare-datatypes ((ListLongMap!16277 0))(
  ( (ListLongMap!16278 (toList!8154 List!25096)) )
))
(declare-fun call!51311 () ListLongMap!16277)

(declare-fun call!51308 () ListLongMap!16277)

(assert (=> bm!51303 (= call!51311 call!51308)))

(declare-fun b!1141790 () Bool)

(declare-fun res!761101 () Bool)

(assert (=> b!1141790 (=> (not res!761101) (not e!649614))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74166 (_ BitVec 32)) Bool)

(assert (=> b!1141790 (= res!761101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1141791 () Bool)

(declare-datatypes ((Unit!37377 0))(
  ( (Unit!37378) )
))
(declare-fun e!649621 () Unit!37377)

(declare-fun Unit!37379 () Unit!37377)

(assert (=> b!1141791 (= e!649621 Unit!37379)))

(assert (=> b!1141791 (= lt!508788 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!112132 () Bool)

(assert (=> b!1141791 (= c!112132 (and (not lt!508788) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!508772 () Unit!37377)

(declare-fun e!649617 () Unit!37377)

(assert (=> b!1141791 (= lt!508772 e!649617)))

(declare-fun zeroValue!944 () V!43363)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43363)

(declare-fun lt!508775 () Unit!37377)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!396 (array!74166 array!74164 (_ BitVec 32) (_ BitVec 32) V!43363 V!43363 (_ BitVec 64) (_ BitVec 32) Int) Unit!37377)

(assert (=> b!1141791 (= lt!508775 (lemmaListMapContainsThenArrayContainsFrom!396 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112129 () Bool)

(assert (=> b!1141791 (= c!112129 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761099 () Bool)

(assert (=> b!1141791 (= res!761099 e!649622)))

(declare-fun e!649625 () Bool)

(assert (=> b!1141791 (=> (not res!761099) (not e!649625))))

(assert (=> b!1141791 e!649625))

(declare-fun lt!508780 () Unit!37377)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74166 (_ BitVec 32) (_ BitVec 32)) Unit!37377)

(assert (=> b!1141791 (= lt!508780 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25097 0))(
  ( (Nil!25094) (Cons!25093 (h!26302 (_ BitVec 64)) (t!36243 List!25097)) )
))
(declare-fun arrayNoDuplicates!0 (array!74166 (_ BitVec 32) List!25097) Bool)

(assert (=> b!1141791 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25094)))

(declare-fun lt!508786 () Unit!37377)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74166 (_ BitVec 64) (_ BitVec 32) List!25097) Unit!37377)

(assert (=> b!1141791 (= lt!508786 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25094))))

(assert (=> b!1141791 false))

(declare-fun bm!51304 () Bool)

(declare-fun call!51305 () ListLongMap!16277)

(declare-fun getCurrentListMapNoExtraKeys!4597 (array!74166 array!74164 (_ BitVec 32) (_ BitVec 32) V!43363 V!43363 (_ BitVec 32) Int) ListLongMap!16277)

(assert (=> bm!51304 (= call!51305 (getCurrentListMapNoExtraKeys!4597 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141793 () Bool)

(declare-fun arrayContainsKey!0 (array!74166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1141793 (= e!649622 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1141794 () Bool)

(assert (=> b!1141794 (= e!649625 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1141795 () Bool)

(declare-fun res!761102 () Bool)

(declare-fun e!649620 () Bool)

(assert (=> b!1141795 (=> (not res!761102) (not e!649620))))

(declare-fun lt!508785 () array!74166)

(assert (=> b!1141795 (= res!761102 (arrayNoDuplicates!0 lt!508785 #b00000000000000000000000000000000 Nil!25094))))

(declare-fun bm!51305 () Bool)

(declare-fun call!51310 () Unit!37377)

(declare-fun call!51309 () Unit!37377)

(assert (=> bm!51305 (= call!51310 call!51309)))

(declare-fun b!1141796 () Bool)

(declare-fun e!649616 () Unit!37377)

(declare-fun lt!508771 () Unit!37377)

(assert (=> b!1141796 (= e!649616 lt!508771)))

(assert (=> b!1141796 (= lt!508771 call!51310)))

(assert (=> b!1141796 call!51312))

(declare-fun b!1141797 () Bool)

(assert (=> b!1141797 (= e!649614 e!649620)))

(declare-fun res!761104 () Bool)

(assert (=> b!1141797 (=> (not res!761104) (not e!649620))))

(assert (=> b!1141797 (= res!761104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!508785 mask!1564))))

(assert (=> b!1141797 (= lt!508785 (array!74167 (store (arr!35730 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36267 _keys!1208)))))

(declare-fun e!649619 () Bool)

(declare-fun b!1141798 () Bool)

(declare-fun call!51306 () ListLongMap!16277)

(declare-fun -!1250 (ListLongMap!16277 (_ BitVec 64)) ListLongMap!16277)

(assert (=> b!1141798 (= e!649619 (= call!51306 (-!1250 call!51305 k0!934)))))

(declare-fun b!1141799 () Bool)

(declare-fun e!649611 () Unit!37377)

(declare-fun Unit!37380 () Unit!37377)

(assert (=> b!1141799 (= e!649611 Unit!37380)))

(declare-fun b!1141800 () Bool)

(assert (=> b!1141800 call!51312))

(declare-fun lt!508770 () Unit!37377)

(assert (=> b!1141800 (= lt!508770 call!51310)))

(assert (=> b!1141800 (= e!649611 lt!508770)))

(declare-fun b!1141792 () Bool)

(declare-fun e!649624 () Bool)

(declare-fun e!649612 () Bool)

(assert (=> b!1141792 (= e!649624 e!649612)))

(declare-fun res!761107 () Bool)

(assert (=> b!1141792 (=> res!761107 e!649612)))

(assert (=> b!1141792 (= res!761107 (not (= from!1455 i!673)))))

(declare-fun lt!508779 () array!74164)

(declare-fun lt!508769 () ListLongMap!16277)

(assert (=> b!1141792 (= lt!508769 (getCurrentListMapNoExtraKeys!4597 lt!508785 lt!508779 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!508774 () V!43363)

(assert (=> b!1141792 (= lt!508779 (array!74165 (store (arr!35729 _values!996) i!673 (ValueCellFull!13629 lt!508774)) (size!36266 _values!996)))))

(declare-fun dynLambda!2649 (Int (_ BitVec 64)) V!43363)

(assert (=> b!1141792 (= lt!508774 (dynLambda!2649 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!508776 () ListLongMap!16277)

(assert (=> b!1141792 (= lt!508776 (getCurrentListMapNoExtraKeys!4597 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!761100 () Bool)

(assert (=> start!98578 (=> (not res!761100) (not e!649614))))

(assert (=> start!98578 (= res!761100 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36267 _keys!1208))))))

(assert (=> start!98578 e!649614))

(assert (=> start!98578 tp_is_empty!28677))

(declare-fun array_inv!27256 (array!74166) Bool)

(assert (=> start!98578 (array_inv!27256 _keys!1208)))

(assert (=> start!98578 true))

(assert (=> start!98578 tp!85153))

(declare-fun array_inv!27257 (array!74164) Bool)

(assert (=> start!98578 (and (array_inv!27257 _values!996) e!649626)))

(declare-fun b!1141801 () Bool)

(declare-fun c!112131 () Bool)

(assert (=> b!1141801 (= c!112131 (and (not lt!508788) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1141801 (= e!649617 e!649616)))

(declare-fun b!1141802 () Bool)

(assert (=> b!1141802 (= e!649620 (not e!649624))))

(declare-fun res!761096 () Bool)

(assert (=> b!1141802 (=> res!761096 e!649624)))

(assert (=> b!1141802 (= res!761096 (bvsgt from!1455 i!673))))

(assert (=> b!1141802 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!508783 () Unit!37377)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74166 (_ BitVec 64) (_ BitVec 32)) Unit!37377)

(assert (=> b!1141802 (= lt!508783 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1141803 () Bool)

(declare-fun res!761105 () Bool)

(assert (=> b!1141803 (=> (not res!761105) (not e!649614))))

(assert (=> b!1141803 (= res!761105 (and (= (size!36266 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36267 _keys!1208) (size!36266 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1141804 () Bool)

(declare-fun res!761108 () Bool)

(assert (=> b!1141804 (=> (not res!761108) (not e!649614))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1141804 (= res!761108 (validKeyInArray!0 k0!934))))

(declare-fun b!1141805 () Bool)

(declare-fun e!649615 () Bool)

(assert (=> b!1141805 (= e!649612 e!649615)))

(declare-fun res!761095 () Bool)

(assert (=> b!1141805 (=> res!761095 e!649615)))

(assert (=> b!1141805 (= res!761095 (not (= (select (arr!35730 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1141805 e!649619))

(declare-fun c!112130 () Bool)

(assert (=> b!1141805 (= c!112130 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!508782 () Unit!37377)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!507 (array!74166 array!74164 (_ BitVec 32) (_ BitVec 32) V!43363 V!43363 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37377)

(assert (=> b!1141805 (= lt!508782 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!507 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141806 () Bool)

(assert (=> b!1141806 (= e!649616 e!649611)))

(declare-fun c!112134 () Bool)

(assert (=> b!1141806 (= c!112134 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!508788))))

(declare-fun b!1141807 () Bool)

(assert (=> b!1141807 (= e!649615 true)))

(declare-fun lt!508768 () ListLongMap!16277)

(declare-fun lt!508784 () V!43363)

(declare-fun +!3499 (ListLongMap!16277 tuple2!18296) ListLongMap!16277)

(assert (=> b!1141807 (= (-!1250 (+!3499 lt!508768 (tuple2!18297 (select (arr!35730 _keys!1208) from!1455) lt!508784)) (select (arr!35730 _keys!1208) from!1455)) lt!508768)))

(declare-fun lt!508787 () Unit!37377)

(declare-fun addThenRemoveForNewKeyIsSame!105 (ListLongMap!16277 (_ BitVec 64) V!43363) Unit!37377)

(assert (=> b!1141807 (= lt!508787 (addThenRemoveForNewKeyIsSame!105 lt!508768 (select (arr!35730 _keys!1208) from!1455) lt!508784))))

(declare-fun get!18175 (ValueCell!13629 V!43363) V!43363)

(assert (=> b!1141807 (= lt!508784 (get!18175 (select (arr!35729 _values!996) from!1455) lt!508774))))

(declare-fun lt!508778 () Unit!37377)

(assert (=> b!1141807 (= lt!508778 e!649621)))

(declare-fun c!112133 () Bool)

(declare-fun contains!6659 (ListLongMap!16277 (_ BitVec 64)) Bool)

(assert (=> b!1141807 (= c!112133 (contains!6659 lt!508768 k0!934))))

(assert (=> b!1141807 (= lt!508768 (getCurrentListMapNoExtraKeys!4597 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141808 () Bool)

(declare-fun lt!508773 () ListLongMap!16277)

(assert (=> b!1141808 (contains!6659 (+!3499 lt!508773 (tuple2!18297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!508777 () Unit!37377)

(declare-fun addStillContains!800 (ListLongMap!16277 (_ BitVec 64) V!43363 (_ BitVec 64)) Unit!37377)

(assert (=> b!1141808 (= lt!508777 (addStillContains!800 lt!508773 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1141808 call!51307))

(assert (=> b!1141808 (= lt!508773 call!51308)))

(declare-fun lt!508781 () Unit!37377)

(assert (=> b!1141808 (= lt!508781 call!51309)))

(assert (=> b!1141808 (= e!649617 lt!508777)))

(declare-fun b!1141809 () Bool)

(declare-fun res!761098 () Bool)

(assert (=> b!1141809 (=> (not res!761098) (not e!649614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1141809 (= res!761098 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!44840 () Bool)

(assert (=> mapIsEmpty!44840 mapRes!44840))

(declare-fun b!1141810 () Bool)

(declare-fun Unit!37381 () Unit!37377)

(assert (=> b!1141810 (= e!649621 Unit!37381)))

(declare-fun b!1141811 () Bool)

(assert (=> b!1141811 (= e!649623 tp_is_empty!28677)))

(declare-fun b!1141812 () Bool)

(declare-fun res!761106 () Bool)

(assert (=> b!1141812 (=> (not res!761106) (not e!649614))))

(assert (=> b!1141812 (= res!761106 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36267 _keys!1208))))))

(declare-fun bm!51306 () Bool)

(assert (=> bm!51306 (= call!51306 (getCurrentListMapNoExtraKeys!4597 lt!508785 lt!508779 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44840 () Bool)

(declare-fun tp!85152 () Bool)

(assert (=> mapNonEmpty!44840 (= mapRes!44840 (and tp!85152 e!649618))))

(declare-fun mapRest!44840 () (Array (_ BitVec 32) ValueCell!13629))

(declare-fun mapKey!44840 () (_ BitVec 32))

(declare-fun mapValue!44840 () ValueCell!13629)

(assert (=> mapNonEmpty!44840 (= (arr!35729 _values!996) (store mapRest!44840 mapKey!44840 mapValue!44840))))

(declare-fun bm!51307 () Bool)

(assert (=> bm!51307 (= call!51309 (addStillContains!800 lt!508768 (ite (or c!112132 c!112131) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112132 c!112131) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1141813 () Bool)

(declare-fun res!761103 () Bool)

(assert (=> b!1141813 (=> (not res!761103) (not e!649614))))

(assert (=> b!1141813 (= res!761103 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25094))))

(declare-fun bm!51308 () Bool)

(assert (=> bm!51308 (= call!51307 (contains!6659 (ite c!112132 lt!508773 call!51311) k0!934))))

(declare-fun bm!51309 () Bool)

(assert (=> bm!51309 (= call!51308 (+!3499 lt!508768 (ite (or c!112132 c!112131) (tuple2!18297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1141814 () Bool)

(assert (=> b!1141814 (= e!649619 (= call!51306 call!51305))))

(assert (= (and start!98578 res!761100) b!1141809))

(assert (= (and b!1141809 res!761098) b!1141803))

(assert (= (and b!1141803 res!761105) b!1141790))

(assert (= (and b!1141790 res!761101) b!1141813))

(assert (= (and b!1141813 res!761103) b!1141812))

(assert (= (and b!1141812 res!761106) b!1141804))

(assert (= (and b!1141804 res!761108) b!1141789))

(assert (= (and b!1141789 res!761097) b!1141797))

(assert (= (and b!1141797 res!761104) b!1141795))

(assert (= (and b!1141795 res!761102) b!1141802))

(assert (= (and b!1141802 (not res!761096)) b!1141792))

(assert (= (and b!1141792 (not res!761107)) b!1141805))

(assert (= (and b!1141805 c!112130) b!1141798))

(assert (= (and b!1141805 (not c!112130)) b!1141814))

(assert (= (or b!1141798 b!1141814) bm!51306))

(assert (= (or b!1141798 b!1141814) bm!51304))

(assert (= (and b!1141805 (not res!761095)) b!1141807))

(assert (= (and b!1141807 c!112133) b!1141791))

(assert (= (and b!1141807 (not c!112133)) b!1141810))

(assert (= (and b!1141791 c!112132) b!1141808))

(assert (= (and b!1141791 (not c!112132)) b!1141801))

(assert (= (and b!1141801 c!112131) b!1141796))

(assert (= (and b!1141801 (not c!112131)) b!1141806))

(assert (= (and b!1141806 c!112134) b!1141800))

(assert (= (and b!1141806 (not c!112134)) b!1141799))

(assert (= (or b!1141796 b!1141800) bm!51305))

(assert (= (or b!1141796 b!1141800) bm!51303))

(assert (= (or b!1141796 b!1141800) bm!51302))

(assert (= (or b!1141808 bm!51302) bm!51308))

(assert (= (or b!1141808 bm!51305) bm!51307))

(assert (= (or b!1141808 bm!51303) bm!51309))

(assert (= (and b!1141791 c!112129) b!1141793))

(assert (= (and b!1141791 (not c!112129)) b!1141788))

(assert (= (and b!1141791 res!761099) b!1141794))

(assert (= (and b!1141787 condMapEmpty!44840) mapIsEmpty!44840))

(assert (= (and b!1141787 (not condMapEmpty!44840)) mapNonEmpty!44840))

(get-info :version)

(assert (= (and mapNonEmpty!44840 ((_ is ValueCellFull!13629) mapValue!44840)) b!1141786))

(assert (= (and b!1141787 ((_ is ValueCellFull!13629) mapDefault!44840)) b!1141811))

(assert (= start!98578 b!1141787))

(declare-fun b_lambda!19271 () Bool)

(assert (=> (not b_lambda!19271) (not b!1141792)))

(declare-fun t!36241 () Bool)

(declare-fun tb!8967 () Bool)

(assert (=> (and start!98578 (= defaultEntry!1004 defaultEntry!1004) t!36241) tb!8967))

(declare-fun result!18491 () Bool)

(assert (=> tb!8967 (= result!18491 tp_is_empty!28677)))

(assert (=> b!1141792 t!36241))

(declare-fun b_and!39159 () Bool)

(assert (= b_and!39157 (and (=> t!36241 result!18491) b_and!39159)))

(declare-fun m!1053179 () Bool)

(assert (=> b!1141813 m!1053179))

(declare-fun m!1053181 () Bool)

(assert (=> start!98578 m!1053181))

(declare-fun m!1053183 () Bool)

(assert (=> start!98578 m!1053183))

(declare-fun m!1053185 () Bool)

(assert (=> bm!51307 m!1053185))

(declare-fun m!1053187 () Bool)

(assert (=> bm!51304 m!1053187))

(declare-fun m!1053189 () Bool)

(assert (=> mapNonEmpty!44840 m!1053189))

(declare-fun m!1053191 () Bool)

(assert (=> bm!51308 m!1053191))

(declare-fun m!1053193 () Bool)

(assert (=> b!1141798 m!1053193))

(assert (=> b!1141807 m!1053187))

(declare-fun m!1053195 () Bool)

(assert (=> b!1141807 m!1053195))

(assert (=> b!1141807 m!1053195))

(declare-fun m!1053197 () Bool)

(assert (=> b!1141807 m!1053197))

(declare-fun m!1053199 () Bool)

(assert (=> b!1141807 m!1053199))

(declare-fun m!1053201 () Bool)

(assert (=> b!1141807 m!1053201))

(declare-fun m!1053203 () Bool)

(assert (=> b!1141807 m!1053203))

(declare-fun m!1053205 () Bool)

(assert (=> b!1141807 m!1053205))

(assert (=> b!1141807 m!1053199))

(assert (=> b!1141807 m!1053201))

(declare-fun m!1053207 () Bool)

(assert (=> b!1141807 m!1053207))

(assert (=> b!1141807 m!1053201))

(declare-fun m!1053209 () Bool)

(assert (=> bm!51306 m!1053209))

(declare-fun m!1053211 () Bool)

(assert (=> b!1141793 m!1053211))

(declare-fun m!1053213 () Bool)

(assert (=> b!1141802 m!1053213))

(declare-fun m!1053215 () Bool)

(assert (=> b!1141802 m!1053215))

(declare-fun m!1053217 () Bool)

(assert (=> b!1141809 m!1053217))

(declare-fun m!1053219 () Bool)

(assert (=> b!1141790 m!1053219))

(declare-fun m!1053221 () Bool)

(assert (=> b!1141789 m!1053221))

(assert (=> b!1141794 m!1053211))

(declare-fun m!1053223 () Bool)

(assert (=> b!1141795 m!1053223))

(declare-fun m!1053225 () Bool)

(assert (=> b!1141808 m!1053225))

(assert (=> b!1141808 m!1053225))

(declare-fun m!1053227 () Bool)

(assert (=> b!1141808 m!1053227))

(declare-fun m!1053229 () Bool)

(assert (=> b!1141808 m!1053229))

(declare-fun m!1053231 () Bool)

(assert (=> b!1141797 m!1053231))

(declare-fun m!1053233 () Bool)

(assert (=> b!1141797 m!1053233))

(declare-fun m!1053235 () Bool)

(assert (=> b!1141792 m!1053235))

(declare-fun m!1053237 () Bool)

(assert (=> b!1141792 m!1053237))

(declare-fun m!1053239 () Bool)

(assert (=> b!1141792 m!1053239))

(declare-fun m!1053241 () Bool)

(assert (=> b!1141792 m!1053241))

(declare-fun m!1053243 () Bool)

(assert (=> bm!51309 m!1053243))

(declare-fun m!1053245 () Bool)

(assert (=> b!1141804 m!1053245))

(declare-fun m!1053247 () Bool)

(assert (=> b!1141791 m!1053247))

(declare-fun m!1053249 () Bool)

(assert (=> b!1141791 m!1053249))

(declare-fun m!1053251 () Bool)

(assert (=> b!1141791 m!1053251))

(declare-fun m!1053253 () Bool)

(assert (=> b!1141791 m!1053253))

(assert (=> b!1141805 m!1053201))

(declare-fun m!1053255 () Bool)

(assert (=> b!1141805 m!1053255))

(check-sat (not bm!51309) (not bm!51307) (not b!1141805) (not b!1141813) (not bm!51306) (not bm!51308) (not b!1141802) (not b!1141804) (not b_next!24147) (not b!1141791) (not b!1141809) (not b!1141790) (not b!1141795) (not b_lambda!19271) (not mapNonEmpty!44840) (not b!1141807) (not b!1141794) (not b!1141808) (not b!1141793) (not b!1141792) b_and!39159 (not b!1141797) (not bm!51304) (not b!1141798) tp_is_empty!28677 (not start!98578))
(check-sat b_and!39159 (not b_next!24147))
