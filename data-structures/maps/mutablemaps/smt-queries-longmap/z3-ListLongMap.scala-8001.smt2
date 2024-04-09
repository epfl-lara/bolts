; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98884 () Bool)

(assert start!98884)

(declare-fun b_free!24453 () Bool)

(declare-fun b_next!24453 () Bool)

(assert (=> start!98884 (= b_free!24453 (not b_next!24453))))

(declare-fun tp!86071 () Bool)

(declare-fun b_and!39769 () Bool)

(assert (=> start!98884 (= tp!86071 b_and!39769)))

(declare-datatypes ((array!74760 0))(
  ( (array!74761 (arr!36027 (Array (_ BitVec 32) (_ BitVec 64))) (size!36564 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74760)

(declare-fun e!657343 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1155786 () Bool)

(declare-fun arrayContainsKey!0 (array!74760 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1155786 (= e!657343 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!54974 () Bool)

(declare-datatypes ((V!43771 0))(
  ( (V!43772 (val!14548 Int)) )
))
(declare-datatypes ((tuple2!18572 0))(
  ( (tuple2!18573 (_1!9296 (_ BitVec 64)) (_2!9296 V!43771)) )
))
(declare-datatypes ((List!25355 0))(
  ( (Nil!25352) (Cons!25351 (h!26560 tuple2!18572) (t!36807 List!25355)) )
))
(declare-datatypes ((ListLongMap!16553 0))(
  ( (ListLongMap!16554 (toList!8292 List!25355)) )
))
(declare-fun lt!518642 () ListLongMap!16553)

(declare-fun c!114888 () Bool)

(declare-fun minValue!944 () V!43771)

(declare-fun call!54980 () ListLongMap!16553)

(declare-fun c!114883 () Bool)

(declare-fun zeroValue!944 () V!43771)

(declare-fun +!3623 (ListLongMap!16553 tuple2!18572) ListLongMap!16553)

(assert (=> bm!54974 (= call!54980 (+!3623 lt!518642 (ite (or c!114888 c!114883) (tuple2!18573 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18573 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun mapNonEmpty!45299 () Bool)

(declare-fun mapRes!45299 () Bool)

(declare-fun tp!86070 () Bool)

(declare-fun e!657347 () Bool)

(assert (=> mapNonEmpty!45299 (= mapRes!45299 (and tp!86070 e!657347))))

(declare-datatypes ((ValueCell!13782 0))(
  ( (ValueCellFull!13782 (v!17186 V!43771)) (EmptyCell!13782) )
))
(declare-fun mapValue!45299 () ValueCell!13782)

(declare-datatypes ((array!74762 0))(
  ( (array!74763 (arr!36028 (Array (_ BitVec 32) ValueCell!13782)) (size!36565 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74762)

(declare-fun mapKey!45299 () (_ BitVec 32))

(declare-fun mapRest!45299 () (Array (_ BitVec 32) ValueCell!13782))

(assert (=> mapNonEmpty!45299 (= (arr!36028 _values!996) (store mapRest!45299 mapKey!45299 mapValue!45299))))

(declare-fun res!767907 () Bool)

(declare-fun e!657340 () Bool)

(assert (=> start!98884 (=> (not res!767907) (not e!657340))))

(assert (=> start!98884 (= res!767907 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36564 _keys!1208))))))

(assert (=> start!98884 e!657340))

(declare-fun tp_is_empty!28983 () Bool)

(assert (=> start!98884 tp_is_empty!28983))

(declare-fun array_inv!27448 (array!74760) Bool)

(assert (=> start!98884 (array_inv!27448 _keys!1208)))

(assert (=> start!98884 true))

(assert (=> start!98884 tp!86071))

(declare-fun e!657339 () Bool)

(declare-fun array_inv!27449 (array!74762) Bool)

(assert (=> start!98884 (and (array_inv!27449 _values!996) e!657339)))

(declare-fun b!1155787 () Bool)

(declare-fun e!657350 () Bool)

(declare-fun e!657349 () Bool)

(assert (=> b!1155787 (= e!657350 (not e!657349))))

(declare-fun res!767904 () Bool)

(assert (=> b!1155787 (=> res!767904 e!657349)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1155787 (= res!767904 (bvsgt from!1455 i!673))))

(assert (=> b!1155787 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37959 0))(
  ( (Unit!37960) )
))
(declare-fun lt!518646 () Unit!37959)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74760 (_ BitVec 64) (_ BitVec 32)) Unit!37959)

(assert (=> b!1155787 (= lt!518646 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1155788 () Bool)

(declare-fun e!657348 () Bool)

(assert (=> b!1155788 (= e!657339 (and e!657348 mapRes!45299))))

(declare-fun condMapEmpty!45299 () Bool)

(declare-fun mapDefault!45299 () ValueCell!13782)

(assert (=> b!1155788 (= condMapEmpty!45299 (= (arr!36028 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13782)) mapDefault!45299)))))

(declare-fun bm!54975 () Bool)

(declare-fun call!54979 () Bool)

(declare-fun call!54984 () Bool)

(assert (=> bm!54975 (= call!54979 call!54984)))

(declare-fun b!1155789 () Bool)

(declare-fun res!767915 () Bool)

(assert (=> b!1155789 (=> (not res!767915) (not e!657350))))

(declare-fun lt!518637 () array!74760)

(declare-datatypes ((List!25356 0))(
  ( (Nil!25353) (Cons!25352 (h!26561 (_ BitVec 64)) (t!36808 List!25356)) )
))
(declare-fun arrayNoDuplicates!0 (array!74760 (_ BitVec 32) List!25356) Bool)

(assert (=> b!1155789 (= res!767915 (arrayNoDuplicates!0 lt!518637 #b00000000000000000000000000000000 Nil!25353))))

(declare-fun b!1155790 () Bool)

(declare-fun res!767916 () Bool)

(assert (=> b!1155790 (=> (not res!767916) (not e!657340))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74760 (_ BitVec 32)) Bool)

(assert (=> b!1155790 (= res!767916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1155791 () Bool)

(declare-fun e!657352 () Unit!37959)

(declare-fun Unit!37961 () Unit!37959)

(assert (=> b!1155791 (= e!657352 Unit!37961)))

(declare-fun b!1155792 () Bool)

(declare-fun e!657342 () Bool)

(declare-fun call!54977 () ListLongMap!16553)

(declare-fun call!54982 () ListLongMap!16553)

(assert (=> b!1155792 (= e!657342 (= call!54977 call!54982))))

(declare-fun e!657344 () Bool)

(declare-fun b!1155793 () Bool)

(assert (=> b!1155793 (= e!657344 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!54976 () Bool)

(declare-fun call!54978 () ListLongMap!16553)

(assert (=> bm!54976 (= call!54978 call!54980)))

(declare-fun lt!518636 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1155794 () Bool)

(assert (=> b!1155794 (= e!657343 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!518636) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1155795 () Bool)

(assert (=> b!1155795 (= e!657340 e!657350)))

(declare-fun res!767911 () Bool)

(assert (=> b!1155795 (=> (not res!767911) (not e!657350))))

(assert (=> b!1155795 (= res!767911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!518637 mask!1564))))

(assert (=> b!1155795 (= lt!518637 (array!74761 (store (arr!36027 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36564 _keys!1208)))))

(declare-fun bm!54977 () Bool)

(declare-fun lt!518632 () ListLongMap!16553)

(declare-fun contains!6779 (ListLongMap!16553 (_ BitVec 64)) Bool)

(assert (=> bm!54977 (= call!54984 (contains!6779 (ite c!114888 lt!518632 call!54978) k0!934))))

(declare-fun b!1155796 () Bool)

(declare-fun res!767914 () Bool)

(assert (=> b!1155796 (=> (not res!767914) (not e!657340))))

(assert (=> b!1155796 (= res!767914 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36564 _keys!1208))))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!54978 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4731 (array!74760 array!74762 (_ BitVec 32) (_ BitVec 32) V!43771 V!43771 (_ BitVec 32) Int) ListLongMap!16553)

(assert (=> bm!54978 (= call!54982 (getCurrentListMapNoExtraKeys!4731 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155797 () Bool)

(declare-fun res!767913 () Bool)

(assert (=> b!1155797 (=> (not res!767913) (not e!657340))))

(assert (=> b!1155797 (= res!767913 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25353))))

(declare-fun b!1155798 () Bool)

(assert (=> b!1155798 (= e!657347 tp_is_empty!28983)))

(declare-fun b!1155799 () Bool)

(declare-fun e!657346 () Unit!37959)

(declare-fun Unit!37962 () Unit!37959)

(assert (=> b!1155799 (= e!657346 Unit!37962)))

(assert (=> b!1155799 (= lt!518636 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1155799 (= c!114888 (and (not lt!518636) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!518638 () Unit!37959)

(declare-fun e!657345 () Unit!37959)

(assert (=> b!1155799 (= lt!518638 e!657345)))

(declare-fun lt!518645 () Unit!37959)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!499 (array!74760 array!74762 (_ BitVec 32) (_ BitVec 32) V!43771 V!43771 (_ BitVec 64) (_ BitVec 32) Int) Unit!37959)

(assert (=> b!1155799 (= lt!518645 (lemmaListMapContainsThenArrayContainsFrom!499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114887 () Bool)

(assert (=> b!1155799 (= c!114887 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767917 () Bool)

(assert (=> b!1155799 (= res!767917 e!657343)))

(assert (=> b!1155799 (=> (not res!767917) (not e!657344))))

(assert (=> b!1155799 e!657344))

(declare-fun lt!518643 () Unit!37959)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74760 (_ BitVec 32) (_ BitVec 32)) Unit!37959)

(assert (=> b!1155799 (= lt!518643 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1155799 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25353)))

(declare-fun lt!518633 () Unit!37959)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74760 (_ BitVec 64) (_ BitVec 32) List!25356) Unit!37959)

(assert (=> b!1155799 (= lt!518633 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25353))))

(assert (=> b!1155799 false))

(declare-fun b!1155800 () Bool)

(declare-fun res!767908 () Bool)

(assert (=> b!1155800 (=> (not res!767908) (not e!657340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1155800 (= res!767908 (validMask!0 mask!1564))))

(declare-fun b!1155801 () Bool)

(assert (=> b!1155801 call!54979))

(declare-fun lt!518634 () Unit!37959)

(declare-fun call!54981 () Unit!37959)

(assert (=> b!1155801 (= lt!518634 call!54981)))

(assert (=> b!1155801 (= e!657352 lt!518634)))

(declare-fun b!1155802 () Bool)

(declare-fun -!1369 (ListLongMap!16553 (_ BitVec 64)) ListLongMap!16553)

(assert (=> b!1155802 (= e!657342 (= call!54977 (-!1369 call!54982 k0!934)))))

(declare-fun b!1155803 () Bool)

(declare-fun res!767910 () Bool)

(assert (=> b!1155803 (=> (not res!767910) (not e!657340))))

(assert (=> b!1155803 (= res!767910 (and (= (size!36565 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36564 _keys!1208) (size!36565 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun call!54983 () Unit!37959)

(declare-fun bm!54979 () Bool)

(declare-fun addStillContains!920 (ListLongMap!16553 (_ BitVec 64) V!43771 (_ BitVec 64)) Unit!37959)

(assert (=> bm!54979 (= call!54983 (addStillContains!920 lt!518642 (ite (or c!114888 c!114883) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114888 c!114883) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1155804 () Bool)

(assert (=> b!1155804 (contains!6779 (+!3623 lt!518632 (tuple2!18573 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!518630 () Unit!37959)

(assert (=> b!1155804 (= lt!518630 (addStillContains!920 lt!518632 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1155804 call!54984))

(assert (=> b!1155804 (= lt!518632 call!54980)))

(declare-fun lt!518635 () Unit!37959)

(assert (=> b!1155804 (= lt!518635 call!54983)))

(assert (=> b!1155804 (= e!657345 lt!518630)))

(declare-fun b!1155805 () Bool)

(declare-fun res!767918 () Bool)

(assert (=> b!1155805 (=> (not res!767918) (not e!657340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1155805 (= res!767918 (validKeyInArray!0 k0!934))))

(declare-fun b!1155806 () Bool)

(declare-fun res!767905 () Bool)

(assert (=> b!1155806 (=> (not res!767905) (not e!657340))))

(assert (=> b!1155806 (= res!767905 (= (select (arr!36027 _keys!1208) i!673) k0!934))))

(declare-fun b!1155807 () Bool)

(declare-fun e!657353 () Unit!37959)

(assert (=> b!1155807 (= e!657353 e!657352)))

(declare-fun c!114885 () Bool)

(assert (=> b!1155807 (= c!114885 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!518636))))

(declare-fun bm!54980 () Bool)

(assert (=> bm!54980 (= call!54981 call!54983)))

(declare-fun mapIsEmpty!45299 () Bool)

(assert (=> mapIsEmpty!45299 mapRes!45299))

(declare-fun b!1155808 () Bool)

(declare-fun e!657354 () Bool)

(declare-fun e!657338 () Bool)

(assert (=> b!1155808 (= e!657354 e!657338)))

(declare-fun res!767909 () Bool)

(assert (=> b!1155808 (=> res!767909 e!657338)))

(assert (=> b!1155808 (= res!767909 (not (= (select (arr!36027 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1155808 e!657342))

(declare-fun c!114886 () Bool)

(assert (=> b!1155808 (= c!114886 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!518631 () Unit!37959)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!598 (array!74760 array!74762 (_ BitVec 32) (_ BitVec 32) V!43771 V!43771 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37959)

(assert (=> b!1155808 (= lt!518631 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!598 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155809 () Bool)

(declare-fun lt!518644 () Unit!37959)

(assert (=> b!1155809 (= e!657353 lt!518644)))

(assert (=> b!1155809 (= lt!518644 call!54981)))

(assert (=> b!1155809 call!54979))

(declare-fun b!1155810 () Bool)

(assert (=> b!1155810 (= e!657348 tp_is_empty!28983)))

(declare-fun b!1155811 () Bool)

(assert (=> b!1155811 (= e!657349 e!657354)))

(declare-fun res!767906 () Bool)

(assert (=> b!1155811 (=> res!767906 e!657354)))

(assert (=> b!1155811 (= res!767906 (not (= from!1455 i!673)))))

(declare-fun lt!518628 () ListLongMap!16553)

(declare-fun lt!518647 () array!74762)

(assert (=> b!1155811 (= lt!518628 (getCurrentListMapNoExtraKeys!4731 lt!518637 lt!518647 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!518648 () V!43771)

(assert (=> b!1155811 (= lt!518647 (array!74763 (store (arr!36028 _values!996) i!673 (ValueCellFull!13782 lt!518648)) (size!36565 _values!996)))))

(declare-fun dynLambda!2745 (Int (_ BitVec 64)) V!43771)

(assert (=> b!1155811 (= lt!518648 (dynLambda!2745 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!518629 () ListLongMap!16553)

(assert (=> b!1155811 (= lt!518629 (getCurrentListMapNoExtraKeys!4731 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1155812 () Bool)

(declare-fun Unit!37963 () Unit!37959)

(assert (=> b!1155812 (= e!657346 Unit!37963)))

(declare-fun bm!54981 () Bool)

(assert (=> bm!54981 (= call!54977 (getCurrentListMapNoExtraKeys!4731 lt!518637 lt!518647 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155813 () Bool)

(declare-fun e!657341 () Bool)

(declare-fun lt!518639 () ListLongMap!16553)

(assert (=> b!1155813 (= e!657341 (= lt!518639 (getCurrentListMapNoExtraKeys!4731 lt!518637 lt!518647 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1155814 () Bool)

(assert (=> b!1155814 (= e!657338 true)))

(assert (=> b!1155814 e!657341))

(declare-fun res!767912 () Bool)

(assert (=> b!1155814 (=> (not res!767912) (not e!657341))))

(assert (=> b!1155814 (= res!767912 (= lt!518639 lt!518642))))

(assert (=> b!1155814 (= lt!518639 (-!1369 lt!518629 k0!934))))

(declare-fun lt!518649 () V!43771)

(assert (=> b!1155814 (= (-!1369 (+!3623 lt!518642 (tuple2!18573 (select (arr!36027 _keys!1208) from!1455) lt!518649)) (select (arr!36027 _keys!1208) from!1455)) lt!518642)))

(declare-fun lt!518641 () Unit!37959)

(declare-fun addThenRemoveForNewKeyIsSame!212 (ListLongMap!16553 (_ BitVec 64) V!43771) Unit!37959)

(assert (=> b!1155814 (= lt!518641 (addThenRemoveForNewKeyIsSame!212 lt!518642 (select (arr!36027 _keys!1208) from!1455) lt!518649))))

(declare-fun get!18384 (ValueCell!13782 V!43771) V!43771)

(assert (=> b!1155814 (= lt!518649 (get!18384 (select (arr!36028 _values!996) from!1455) lt!518648))))

(declare-fun lt!518640 () Unit!37959)

(assert (=> b!1155814 (= lt!518640 e!657346)))

(declare-fun c!114884 () Bool)

(assert (=> b!1155814 (= c!114884 (contains!6779 lt!518642 k0!934))))

(assert (=> b!1155814 (= lt!518642 (getCurrentListMapNoExtraKeys!4731 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155815 () Bool)

(assert (=> b!1155815 (= c!114883 (and (not lt!518636) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1155815 (= e!657345 e!657353)))

(assert (= (and start!98884 res!767907) b!1155800))

(assert (= (and b!1155800 res!767908) b!1155803))

(assert (= (and b!1155803 res!767910) b!1155790))

(assert (= (and b!1155790 res!767916) b!1155797))

(assert (= (and b!1155797 res!767913) b!1155796))

(assert (= (and b!1155796 res!767914) b!1155805))

(assert (= (and b!1155805 res!767918) b!1155806))

(assert (= (and b!1155806 res!767905) b!1155795))

(assert (= (and b!1155795 res!767911) b!1155789))

(assert (= (and b!1155789 res!767915) b!1155787))

(assert (= (and b!1155787 (not res!767904)) b!1155811))

(assert (= (and b!1155811 (not res!767906)) b!1155808))

(assert (= (and b!1155808 c!114886) b!1155802))

(assert (= (and b!1155808 (not c!114886)) b!1155792))

(assert (= (or b!1155802 b!1155792) bm!54981))

(assert (= (or b!1155802 b!1155792) bm!54978))

(assert (= (and b!1155808 (not res!767909)) b!1155814))

(assert (= (and b!1155814 c!114884) b!1155799))

(assert (= (and b!1155814 (not c!114884)) b!1155812))

(assert (= (and b!1155799 c!114888) b!1155804))

(assert (= (and b!1155799 (not c!114888)) b!1155815))

(assert (= (and b!1155815 c!114883) b!1155809))

(assert (= (and b!1155815 (not c!114883)) b!1155807))

(assert (= (and b!1155807 c!114885) b!1155801))

(assert (= (and b!1155807 (not c!114885)) b!1155791))

(assert (= (or b!1155809 b!1155801) bm!54980))

(assert (= (or b!1155809 b!1155801) bm!54976))

(assert (= (or b!1155809 b!1155801) bm!54975))

(assert (= (or b!1155804 bm!54975) bm!54977))

(assert (= (or b!1155804 bm!54980) bm!54979))

(assert (= (or b!1155804 bm!54976) bm!54974))

(assert (= (and b!1155799 c!114887) b!1155786))

(assert (= (and b!1155799 (not c!114887)) b!1155794))

(assert (= (and b!1155799 res!767917) b!1155793))

(assert (= (and b!1155814 res!767912) b!1155813))

(assert (= (and b!1155788 condMapEmpty!45299) mapIsEmpty!45299))

(assert (= (and b!1155788 (not condMapEmpty!45299)) mapNonEmpty!45299))

(get-info :version)

(assert (= (and mapNonEmpty!45299 ((_ is ValueCellFull!13782) mapValue!45299)) b!1155798))

(assert (= (and b!1155788 ((_ is ValueCellFull!13782) mapDefault!45299)) b!1155810))

(assert (= start!98884 b!1155788))

(declare-fun b_lambda!19577 () Bool)

(assert (=> (not b_lambda!19577) (not b!1155811)))

(declare-fun t!36806 () Bool)

(declare-fun tb!9273 () Bool)

(assert (=> (and start!98884 (= defaultEntry!1004 defaultEntry!1004) t!36806) tb!9273))

(declare-fun result!19103 () Bool)

(assert (=> tb!9273 (= result!19103 tp_is_empty!28983)))

(assert (=> b!1155811 t!36806))

(declare-fun b_and!39771 () Bool)

(assert (= b_and!39769 (and (=> t!36806 result!19103) b_and!39771)))

(declare-fun m!1065383 () Bool)

(assert (=> start!98884 m!1065383))

(declare-fun m!1065385 () Bool)

(assert (=> start!98884 m!1065385))

(declare-fun m!1065387 () Bool)

(assert (=> b!1155811 m!1065387))

(declare-fun m!1065389 () Bool)

(assert (=> b!1155811 m!1065389))

(declare-fun m!1065391 () Bool)

(assert (=> b!1155811 m!1065391))

(declare-fun m!1065393 () Bool)

(assert (=> b!1155811 m!1065393))

(declare-fun m!1065395 () Bool)

(assert (=> b!1155793 m!1065395))

(declare-fun m!1065397 () Bool)

(assert (=> bm!54981 m!1065397))

(declare-fun m!1065399 () Bool)

(assert (=> b!1155797 m!1065399))

(declare-fun m!1065401 () Bool)

(assert (=> b!1155790 m!1065401))

(declare-fun m!1065403 () Bool)

(assert (=> bm!54978 m!1065403))

(declare-fun m!1065405 () Bool)

(assert (=> b!1155808 m!1065405))

(declare-fun m!1065407 () Bool)

(assert (=> b!1155808 m!1065407))

(declare-fun m!1065409 () Bool)

(assert (=> b!1155800 m!1065409))

(declare-fun m!1065411 () Bool)

(assert (=> b!1155805 m!1065411))

(declare-fun m!1065413 () Bool)

(assert (=> b!1155799 m!1065413))

(declare-fun m!1065415 () Bool)

(assert (=> b!1155799 m!1065415))

(declare-fun m!1065417 () Bool)

(assert (=> b!1155799 m!1065417))

(declare-fun m!1065419 () Bool)

(assert (=> b!1155799 m!1065419))

(declare-fun m!1065421 () Bool)

(assert (=> bm!54979 m!1065421))

(declare-fun m!1065423 () Bool)

(assert (=> b!1155814 m!1065423))

(assert (=> b!1155814 m!1065403))

(declare-fun m!1065425 () Bool)

(assert (=> b!1155814 m!1065425))

(declare-fun m!1065427 () Bool)

(assert (=> b!1155814 m!1065427))

(assert (=> b!1155814 m!1065405))

(declare-fun m!1065429 () Bool)

(assert (=> b!1155814 m!1065429))

(assert (=> b!1155814 m!1065425))

(declare-fun m!1065431 () Bool)

(assert (=> b!1155814 m!1065431))

(assert (=> b!1155814 m!1065405))

(assert (=> b!1155814 m!1065427))

(assert (=> b!1155814 m!1065405))

(declare-fun m!1065433 () Bool)

(assert (=> b!1155814 m!1065433))

(declare-fun m!1065435 () Bool)

(assert (=> b!1155814 m!1065435))

(declare-fun m!1065437 () Bool)

(assert (=> b!1155802 m!1065437))

(declare-fun m!1065439 () Bool)

(assert (=> b!1155804 m!1065439))

(assert (=> b!1155804 m!1065439))

(declare-fun m!1065441 () Bool)

(assert (=> b!1155804 m!1065441))

(declare-fun m!1065443 () Bool)

(assert (=> b!1155804 m!1065443))

(declare-fun m!1065445 () Bool)

(assert (=> mapNonEmpty!45299 m!1065445))

(assert (=> b!1155813 m!1065397))

(declare-fun m!1065447 () Bool)

(assert (=> b!1155787 m!1065447))

(declare-fun m!1065449 () Bool)

(assert (=> b!1155787 m!1065449))

(declare-fun m!1065451 () Bool)

(assert (=> bm!54974 m!1065451))

(declare-fun m!1065453 () Bool)

(assert (=> b!1155789 m!1065453))

(assert (=> b!1155786 m!1065395))

(declare-fun m!1065455 () Bool)

(assert (=> bm!54977 m!1065455))

(declare-fun m!1065457 () Bool)

(assert (=> b!1155806 m!1065457))

(declare-fun m!1065459 () Bool)

(assert (=> b!1155795 m!1065459))

(declare-fun m!1065461 () Bool)

(assert (=> b!1155795 m!1065461))

(check-sat (not b!1155787) (not b!1155808) (not b!1155797) (not b!1155805) (not b!1155814) (not b!1155802) b_and!39771 (not b!1155786) (not bm!54974) (not b!1155793) (not b_next!24453) (not b_lambda!19577) (not b!1155811) (not bm!54977) (not b!1155789) (not bm!54979) (not b!1155800) (not start!98884) (not b!1155804) (not mapNonEmpty!45299) (not b!1155799) (not bm!54981) (not b!1155813) (not bm!54978) (not b!1155790) (not b!1155795) tp_is_empty!28983)
(check-sat b_and!39771 (not b_next!24453))
