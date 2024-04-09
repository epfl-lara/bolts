; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101062 () Bool)

(assert start!101062)

(declare-fun b_free!26025 () Bool)

(declare-fun b_next!26025 () Bool)

(assert (=> start!101062 (= b_free!26025 (not b_next!26025))))

(declare-fun tp!91092 () Bool)

(declare-fun b_and!43141 () Bool)

(assert (=> start!101062 (= tp!91092 b_and!43141)))

(declare-fun b!1210761 () Bool)

(declare-datatypes ((Unit!40056 0))(
  ( (Unit!40057) )
))
(declare-fun e!687651 () Unit!40056)

(declare-fun Unit!40058 () Unit!40056)

(assert (=> b!1210761 (= e!687651 Unit!40058)))

(declare-datatypes ((array!78214 0))(
  ( (array!78215 (arr!37740 (Array (_ BitVec 32) (_ BitVec 64))) (size!38277 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78214)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1210762 () Bool)

(declare-fun e!687656 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!78214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1210762 (= e!687656 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!59737 () Bool)

(declare-datatypes ((V!46099 0))(
  ( (V!46100 (val!15421 Int)) )
))
(declare-datatypes ((tuple2!19940 0))(
  ( (tuple2!19941 (_1!9980 (_ BitVec 64)) (_2!9980 V!46099)) )
))
(declare-datatypes ((List!26759 0))(
  ( (Nil!26756) (Cons!26755 (h!27964 tuple2!19940) (t!39771 List!26759)) )
))
(declare-datatypes ((ListLongMap!17921 0))(
  ( (ListLongMap!17922 (toList!8976 List!26759)) )
))
(declare-fun call!59743 () ListLongMap!17921)

(declare-fun c!119286 () Bool)

(declare-fun lt!549772 () ListLongMap!17921)

(declare-fun call!59740 () Bool)

(declare-fun contains!6989 (ListLongMap!17921 (_ BitVec 64)) Bool)

(assert (=> bm!59737 (= call!59740 (contains!6989 (ite c!119286 lt!549772 call!59743) k0!934))))

(declare-fun b!1210763 () Bool)

(declare-fun e!687645 () Bool)

(declare-fun e!687655 () Bool)

(declare-fun mapRes!47962 () Bool)

(assert (=> b!1210763 (= e!687645 (and e!687655 mapRes!47962))))

(declare-fun condMapEmpty!47962 () Bool)

(declare-datatypes ((ValueCell!14655 0))(
  ( (ValueCellFull!14655 (v!18073 V!46099)) (EmptyCell!14655) )
))
(declare-datatypes ((array!78216 0))(
  ( (array!78217 (arr!37741 (Array (_ BitVec 32) ValueCell!14655)) (size!38278 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78216)

(declare-fun mapDefault!47962 () ValueCell!14655)

(assert (=> b!1210763 (= condMapEmpty!47962 (= (arr!37741 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14655)) mapDefault!47962)))))

(declare-fun b!1210764 () Bool)

(declare-fun call!59742 () Bool)

(assert (=> b!1210764 call!59742))

(declare-fun lt!549777 () Unit!40056)

(declare-fun call!59741 () Unit!40056)

(assert (=> b!1210764 (= lt!549777 call!59741)))

(declare-fun e!687647 () Unit!40056)

(assert (=> b!1210764 (= e!687647 lt!549777)))

(declare-fun b!1210765 () Bool)

(declare-fun Unit!40059 () Unit!40056)

(assert (=> b!1210765 (= e!687647 Unit!40059)))

(declare-fun b!1210766 () Bool)

(declare-fun e!687646 () Bool)

(declare-fun tp_is_empty!30729 () Bool)

(assert (=> b!1210766 (= e!687646 tp_is_empty!30729)))

(declare-fun b!1210767 () Bool)

(declare-fun e!687654 () Bool)

(declare-fun e!687658 () Bool)

(assert (=> b!1210767 (= e!687654 e!687658)))

(declare-fun res!804549 () Bool)

(assert (=> b!1210767 (=> res!804549 e!687658)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1210767 (= res!804549 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46099)

(declare-fun lt!549783 () ListLongMap!17921)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!549784 () array!78214)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!549768 () array!78216)

(declare-fun minValue!944 () V!46099)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5381 (array!78214 array!78216 (_ BitVec 32) (_ BitVec 32) V!46099 V!46099 (_ BitVec 32) Int) ListLongMap!17921)

(assert (=> b!1210767 (= lt!549783 (getCurrentListMapNoExtraKeys!5381 lt!549784 lt!549768 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!549776 () V!46099)

(assert (=> b!1210767 (= lt!549768 (array!78217 (store (arr!37741 _values!996) i!673 (ValueCellFull!14655 lt!549776)) (size!38278 _values!996)))))

(declare-fun dynLambda!3296 (Int (_ BitVec 64)) V!46099)

(assert (=> b!1210767 (= lt!549776 (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!549771 () ListLongMap!17921)

(assert (=> b!1210767 (= lt!549771 (getCurrentListMapNoExtraKeys!5381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1210768 () Bool)

(assert (=> b!1210768 (= e!687655 tp_is_empty!30729)))

(declare-fun b!1210769 () Bool)

(declare-fun res!804550 () Bool)

(declare-fun e!687643 () Bool)

(assert (=> b!1210769 (=> (not res!804550) (not e!687643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1210769 (= res!804550 (validKeyInArray!0 k0!934))))

(declare-fun b!1210770 () Bool)

(declare-fun res!804546 () Bool)

(assert (=> b!1210770 (=> (not res!804546) (not e!687643))))

(assert (=> b!1210770 (= res!804546 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38277 _keys!1208))))))

(declare-fun b!1210771 () Bool)

(declare-fun lt!549781 () ListLongMap!17921)

(declare-fun e!687644 () Bool)

(declare-fun -!1874 (ListLongMap!17921 (_ BitVec 64)) ListLongMap!17921)

(assert (=> b!1210771 (= e!687644 (= (-!1874 lt!549771 k0!934) lt!549781))))

(declare-fun lt!549778 () V!46099)

(declare-fun +!4003 (ListLongMap!17921 tuple2!19940) ListLongMap!17921)

(assert (=> b!1210771 (= (-!1874 (+!4003 lt!549781 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778)) (select (arr!37740 _keys!1208) from!1455)) lt!549781)))

(declare-fun lt!549769 () Unit!40056)

(declare-fun addThenRemoveForNewKeyIsSame!276 (ListLongMap!17921 (_ BitVec 64) V!46099) Unit!40056)

(assert (=> b!1210771 (= lt!549769 (addThenRemoveForNewKeyIsSame!276 lt!549781 (select (arr!37740 _keys!1208) from!1455) lt!549778))))

(declare-fun get!19272 (ValueCell!14655 V!46099) V!46099)

(assert (=> b!1210771 (= lt!549778 (get!19272 (select (arr!37741 _values!996) from!1455) lt!549776))))

(declare-fun lt!549770 () Unit!40056)

(assert (=> b!1210771 (= lt!549770 e!687651)))

(declare-fun c!119283 () Bool)

(assert (=> b!1210771 (= c!119283 (contains!6989 lt!549781 k0!934))))

(assert (=> b!1210771 (= lt!549781 (getCurrentListMapNoExtraKeys!5381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210772 () Bool)

(declare-fun e!687657 () Unit!40056)

(declare-fun lt!549780 () Unit!40056)

(assert (=> b!1210772 (= e!687657 lt!549780)))

(assert (=> b!1210772 (= lt!549780 call!59741)))

(assert (=> b!1210772 call!59742))

(declare-fun mapNonEmpty!47962 () Bool)

(declare-fun tp!91091 () Bool)

(assert (=> mapNonEmpty!47962 (= mapRes!47962 (and tp!91091 e!687646))))

(declare-fun mapRest!47962 () (Array (_ BitVec 32) ValueCell!14655))

(declare-fun mapValue!47962 () ValueCell!14655)

(declare-fun mapKey!47962 () (_ BitVec 32))

(assert (=> mapNonEmpty!47962 (= (arr!37741 _values!996) (store mapRest!47962 mapKey!47962 mapValue!47962))))

(declare-fun b!1210773 () Bool)

(declare-fun c!119284 () Bool)

(declare-fun lt!549775 () Bool)

(assert (=> b!1210773 (= c!119284 (and (not lt!549775) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!687652 () Unit!40056)

(assert (=> b!1210773 (= e!687652 e!687657)))

(declare-fun b!1210774 () Bool)

(declare-fun e!687648 () Bool)

(assert (=> b!1210774 (= e!687648 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1210775 () Bool)

(declare-fun res!804547 () Bool)

(assert (=> b!1210775 (=> (not res!804547) (not e!687643))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1210775 (= res!804547 (validMask!0 mask!1564))))

(declare-fun call!59745 () ListLongMap!17921)

(declare-fun bm!59736 () Bool)

(assert (=> bm!59736 (= call!59745 (getCurrentListMapNoExtraKeys!5381 lt!549784 lt!549768 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!804548 () Bool)

(assert (=> start!101062 (=> (not res!804548) (not e!687643))))

(assert (=> start!101062 (= res!804548 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38277 _keys!1208))))))

(assert (=> start!101062 e!687643))

(assert (=> start!101062 tp_is_empty!30729))

(declare-fun array_inv!28648 (array!78214) Bool)

(assert (=> start!101062 (array_inv!28648 _keys!1208)))

(assert (=> start!101062 true))

(assert (=> start!101062 tp!91092))

(declare-fun array_inv!28649 (array!78216) Bool)

(assert (=> start!101062 (and (array_inv!28649 _values!996) e!687645)))

(declare-fun b!1210776 () Bool)

(declare-fun call!59739 () ListLongMap!17921)

(declare-fun e!687653 () Bool)

(assert (=> b!1210776 (= e!687653 (= call!59745 (-!1874 call!59739 k0!934)))))

(declare-fun call!59744 () Unit!40056)

(declare-fun bm!59738 () Bool)

(declare-fun addStillContains!1065 (ListLongMap!17921 (_ BitVec 64) V!46099 (_ BitVec 64)) Unit!40056)

(assert (=> bm!59738 (= call!59744 (addStillContains!1065 lt!549781 (ite (or c!119286 c!119284) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119286 c!119284) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1210777 () Bool)

(assert (=> b!1210777 (contains!6989 (+!4003 lt!549772 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!549786 () Unit!40056)

(assert (=> b!1210777 (= lt!549786 (addStillContains!1065 lt!549772 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1210777 call!59740))

(declare-fun call!59746 () ListLongMap!17921)

(assert (=> b!1210777 (= lt!549772 call!59746)))

(declare-fun lt!549782 () Unit!40056)

(assert (=> b!1210777 (= lt!549782 call!59744)))

(assert (=> b!1210777 (= e!687652 lt!549786)))

(declare-fun bm!59739 () Bool)

(assert (=> bm!59739 (= call!59743 call!59746)))

(declare-fun b!1210778 () Bool)

(assert (=> b!1210778 (= e!687653 (= call!59745 call!59739))))

(declare-fun b!1210779 () Bool)

(assert (=> b!1210779 (= e!687658 e!687644)))

(declare-fun res!804545 () Bool)

(assert (=> b!1210779 (=> res!804545 e!687644)))

(assert (=> b!1210779 (= res!804545 (not (= (select (arr!37740 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1210779 e!687653))

(declare-fun c!119285 () Bool)

(assert (=> b!1210779 (= c!119285 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!549767 () Unit!40056)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1082 (array!78214 array!78216 (_ BitVec 32) (_ BitVec 32) V!46099 V!46099 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40056)

(assert (=> b!1210779 (= lt!549767 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1082 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59740 () Bool)

(assert (=> bm!59740 (= call!59739 (getCurrentListMapNoExtraKeys!5381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210780 () Bool)

(declare-fun e!687650 () Bool)

(assert (=> b!1210780 (= e!687643 e!687650)))

(declare-fun res!804538 () Bool)

(assert (=> b!1210780 (=> (not res!804538) (not e!687650))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78214 (_ BitVec 32)) Bool)

(assert (=> b!1210780 (= res!804538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!549784 mask!1564))))

(assert (=> b!1210780 (= lt!549784 (array!78215 (store (arr!37740 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38277 _keys!1208)))))

(declare-fun bm!59741 () Bool)

(assert (=> bm!59741 (= call!59741 call!59744)))

(declare-fun b!1210781 () Bool)

(declare-fun res!804542 () Bool)

(assert (=> b!1210781 (=> (not res!804542) (not e!687643))))

(assert (=> b!1210781 (= res!804542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1210782 () Bool)

(assert (=> b!1210782 (= e!687657 e!687647)))

(declare-fun c!119281 () Bool)

(assert (=> b!1210782 (= c!119281 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!549775))))

(declare-fun b!1210783 () Bool)

(declare-fun res!804551 () Bool)

(assert (=> b!1210783 (=> (not res!804551) (not e!687643))))

(declare-datatypes ((List!26760 0))(
  ( (Nil!26757) (Cons!26756 (h!27965 (_ BitVec 64)) (t!39772 List!26760)) )
))
(declare-fun arrayNoDuplicates!0 (array!78214 (_ BitVec 32) List!26760) Bool)

(assert (=> b!1210783 (= res!804551 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26757))))

(declare-fun bm!59742 () Bool)

(assert (=> bm!59742 (= call!59742 call!59740)))

(declare-fun b!1210784 () Bool)

(declare-fun Unit!40060 () Unit!40056)

(assert (=> b!1210784 (= e!687651 Unit!40060)))

(assert (=> b!1210784 (= lt!549775 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1210784 (= c!119286 (and (not lt!549775) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!549773 () Unit!40056)

(assert (=> b!1210784 (= lt!549773 e!687652)))

(declare-fun lt!549766 () Unit!40056)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!602 (array!78214 array!78216 (_ BitVec 32) (_ BitVec 32) V!46099 V!46099 (_ BitVec 64) (_ BitVec 32) Int) Unit!40056)

(assert (=> b!1210784 (= lt!549766 (lemmaListMapContainsThenArrayContainsFrom!602 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119282 () Bool)

(assert (=> b!1210784 (= c!119282 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!804544 () Bool)

(assert (=> b!1210784 (= res!804544 e!687656)))

(assert (=> b!1210784 (=> (not res!804544) (not e!687648))))

(assert (=> b!1210784 e!687648))

(declare-fun lt!549785 () Unit!40056)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78214 (_ BitVec 32) (_ BitVec 32)) Unit!40056)

(assert (=> b!1210784 (= lt!549785 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1210784 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26757)))

(declare-fun lt!549779 () Unit!40056)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78214 (_ BitVec 64) (_ BitVec 32) List!26760) Unit!40056)

(assert (=> b!1210784 (= lt!549779 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26757))))

(assert (=> b!1210784 false))

(declare-fun mapIsEmpty!47962 () Bool)

(assert (=> mapIsEmpty!47962 mapRes!47962))

(declare-fun b!1210785 () Bool)

(assert (=> b!1210785 (= e!687650 (not e!687654))))

(declare-fun res!804541 () Bool)

(assert (=> b!1210785 (=> res!804541 e!687654)))

(assert (=> b!1210785 (= res!804541 (bvsgt from!1455 i!673))))

(assert (=> b!1210785 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!549774 () Unit!40056)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78214 (_ BitVec 64) (_ BitVec 32)) Unit!40056)

(assert (=> b!1210785 (= lt!549774 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!59743 () Bool)

(assert (=> bm!59743 (= call!59746 (+!4003 lt!549781 (ite (or c!119286 c!119284) (tuple2!19941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1210786 () Bool)

(declare-fun res!804539 () Bool)

(assert (=> b!1210786 (=> (not res!804539) (not e!687650))))

(assert (=> b!1210786 (= res!804539 (arrayNoDuplicates!0 lt!549784 #b00000000000000000000000000000000 Nil!26757))))

(declare-fun b!1210787 () Bool)

(declare-fun res!804540 () Bool)

(assert (=> b!1210787 (=> (not res!804540) (not e!687643))))

(assert (=> b!1210787 (= res!804540 (and (= (size!38278 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38277 _keys!1208) (size!38278 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1210788 () Bool)

(assert (=> b!1210788 (= e!687656 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!549775) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1210789 () Bool)

(declare-fun res!804543 () Bool)

(assert (=> b!1210789 (=> (not res!804543) (not e!687643))))

(assert (=> b!1210789 (= res!804543 (= (select (arr!37740 _keys!1208) i!673) k0!934))))

(assert (= (and start!101062 res!804548) b!1210775))

(assert (= (and b!1210775 res!804547) b!1210787))

(assert (= (and b!1210787 res!804540) b!1210781))

(assert (= (and b!1210781 res!804542) b!1210783))

(assert (= (and b!1210783 res!804551) b!1210770))

(assert (= (and b!1210770 res!804546) b!1210769))

(assert (= (and b!1210769 res!804550) b!1210789))

(assert (= (and b!1210789 res!804543) b!1210780))

(assert (= (and b!1210780 res!804538) b!1210786))

(assert (= (and b!1210786 res!804539) b!1210785))

(assert (= (and b!1210785 (not res!804541)) b!1210767))

(assert (= (and b!1210767 (not res!804549)) b!1210779))

(assert (= (and b!1210779 c!119285) b!1210776))

(assert (= (and b!1210779 (not c!119285)) b!1210778))

(assert (= (or b!1210776 b!1210778) bm!59740))

(assert (= (or b!1210776 b!1210778) bm!59736))

(assert (= (and b!1210779 (not res!804545)) b!1210771))

(assert (= (and b!1210771 c!119283) b!1210784))

(assert (= (and b!1210771 (not c!119283)) b!1210761))

(assert (= (and b!1210784 c!119286) b!1210777))

(assert (= (and b!1210784 (not c!119286)) b!1210773))

(assert (= (and b!1210773 c!119284) b!1210772))

(assert (= (and b!1210773 (not c!119284)) b!1210782))

(assert (= (and b!1210782 c!119281) b!1210764))

(assert (= (and b!1210782 (not c!119281)) b!1210765))

(assert (= (or b!1210772 b!1210764) bm!59741))

(assert (= (or b!1210772 b!1210764) bm!59739))

(assert (= (or b!1210772 b!1210764) bm!59742))

(assert (= (or b!1210777 bm!59742) bm!59737))

(assert (= (or b!1210777 bm!59741) bm!59738))

(assert (= (or b!1210777 bm!59739) bm!59743))

(assert (= (and b!1210784 c!119282) b!1210762))

(assert (= (and b!1210784 (not c!119282)) b!1210788))

(assert (= (and b!1210784 res!804544) b!1210774))

(assert (= (and b!1210763 condMapEmpty!47962) mapIsEmpty!47962))

(assert (= (and b!1210763 (not condMapEmpty!47962)) mapNonEmpty!47962))

(get-info :version)

(assert (= (and mapNonEmpty!47962 ((_ is ValueCellFull!14655) mapValue!47962)) b!1210766))

(assert (= (and b!1210763 ((_ is ValueCellFull!14655) mapDefault!47962)) b!1210768))

(assert (= start!101062 b!1210763))

(declare-fun b_lambda!21635 () Bool)

(assert (=> (not b_lambda!21635) (not b!1210767)))

(declare-fun t!39770 () Bool)

(declare-fun tb!10833 () Bool)

(assert (=> (and start!101062 (= defaultEntry!1004 defaultEntry!1004) t!39770) tb!10833))

(declare-fun result!22251 () Bool)

(assert (=> tb!10833 (= result!22251 tp_is_empty!30729)))

(assert (=> b!1210767 t!39770))

(declare-fun b_and!43143 () Bool)

(assert (= b_and!43141 (and (=> t!39770 result!22251) b_and!43143)))

(declare-fun m!1116229 () Bool)

(assert (=> b!1210769 m!1116229))

(declare-fun m!1116231 () Bool)

(assert (=> b!1210776 m!1116231))

(declare-fun m!1116233 () Bool)

(assert (=> b!1210785 m!1116233))

(declare-fun m!1116235 () Bool)

(assert (=> b!1210785 m!1116235))

(declare-fun m!1116237 () Bool)

(assert (=> bm!59737 m!1116237))

(declare-fun m!1116239 () Bool)

(assert (=> b!1210774 m!1116239))

(declare-fun m!1116241 () Bool)

(assert (=> b!1210786 m!1116241))

(declare-fun m!1116243 () Bool)

(assert (=> b!1210781 m!1116243))

(declare-fun m!1116245 () Bool)

(assert (=> bm!59743 m!1116245))

(declare-fun m!1116247 () Bool)

(assert (=> b!1210775 m!1116247))

(declare-fun m!1116249 () Bool)

(assert (=> b!1210784 m!1116249))

(declare-fun m!1116251 () Bool)

(assert (=> b!1210784 m!1116251))

(declare-fun m!1116253 () Bool)

(assert (=> b!1210784 m!1116253))

(declare-fun m!1116255 () Bool)

(assert (=> b!1210784 m!1116255))

(declare-fun m!1116257 () Bool)

(assert (=> b!1210779 m!1116257))

(declare-fun m!1116259 () Bool)

(assert (=> b!1210779 m!1116259))

(declare-fun m!1116261 () Bool)

(assert (=> b!1210777 m!1116261))

(assert (=> b!1210777 m!1116261))

(declare-fun m!1116263 () Bool)

(assert (=> b!1210777 m!1116263))

(declare-fun m!1116265 () Bool)

(assert (=> b!1210777 m!1116265))

(declare-fun m!1116267 () Bool)

(assert (=> b!1210789 m!1116267))

(declare-fun m!1116269 () Bool)

(assert (=> b!1210783 m!1116269))

(declare-fun m!1116271 () Bool)

(assert (=> b!1210771 m!1116271))

(declare-fun m!1116273 () Bool)

(assert (=> b!1210771 m!1116273))

(declare-fun m!1116275 () Bool)

(assert (=> b!1210771 m!1116275))

(declare-fun m!1116277 () Bool)

(assert (=> b!1210771 m!1116277))

(declare-fun m!1116279 () Bool)

(assert (=> b!1210771 m!1116279))

(assert (=> b!1210771 m!1116257))

(declare-fun m!1116281 () Bool)

(assert (=> b!1210771 m!1116281))

(assert (=> b!1210771 m!1116273))

(assert (=> b!1210771 m!1116257))

(declare-fun m!1116283 () Bool)

(assert (=> b!1210771 m!1116283))

(assert (=> b!1210771 m!1116275))

(declare-fun m!1116285 () Bool)

(assert (=> b!1210771 m!1116285))

(assert (=> b!1210771 m!1116257))

(declare-fun m!1116287 () Bool)

(assert (=> b!1210780 m!1116287))

(declare-fun m!1116289 () Bool)

(assert (=> b!1210780 m!1116289))

(declare-fun m!1116291 () Bool)

(assert (=> start!101062 m!1116291))

(declare-fun m!1116293 () Bool)

(assert (=> start!101062 m!1116293))

(declare-fun m!1116295 () Bool)

(assert (=> bm!59738 m!1116295))

(declare-fun m!1116297 () Bool)

(assert (=> mapNonEmpty!47962 m!1116297))

(declare-fun m!1116299 () Bool)

(assert (=> b!1210767 m!1116299))

(declare-fun m!1116301 () Bool)

(assert (=> b!1210767 m!1116301))

(declare-fun m!1116303 () Bool)

(assert (=> b!1210767 m!1116303))

(declare-fun m!1116305 () Bool)

(assert (=> b!1210767 m!1116305))

(assert (=> b!1210762 m!1116239))

(assert (=> bm!59740 m!1116271))

(declare-fun m!1116307 () Bool)

(assert (=> bm!59736 m!1116307))

(check-sat (not b!1210785) (not bm!59737) tp_is_empty!30729 (not b_lambda!21635) (not b!1210769) (not b!1210783) (not b!1210762) (not bm!59736) (not b!1210786) (not bm!59743) (not b!1210767) (not b!1210780) (not b!1210775) (not b!1210774) (not b!1210784) (not b_next!26025) (not b!1210771) (not bm!59738) (not bm!59740) (not start!101062) (not mapNonEmpty!47962) (not b!1210779) (not b!1210776) (not b!1210777) (not b!1210781) b_and!43143)
(check-sat b_and!43143 (not b_next!26025))
(get-model)

(declare-fun b_lambda!21639 () Bool)

(assert (= b_lambda!21635 (or (and start!101062 b_free!26025) b_lambda!21639)))

(check-sat (not b!1210785) (not bm!59737) tp_is_empty!30729 (not b!1210769) (not b!1210783) (not b!1210762) (not bm!59736) (not b!1210786) (not bm!59743) (not b!1210767) (not b!1210780) (not b!1210775) (not b!1210774) (not b!1210784) (not b_next!26025) (not b!1210771) (not bm!59738) (not bm!59740) (not start!101062) (not mapNonEmpty!47962) (not b!1210779) (not b!1210776) (not b!1210777) (not b!1210781) b_and!43143 (not b_lambda!21639))
(check-sat b_and!43143 (not b_next!26025))
(get-model)

(declare-fun b!1210889 () Bool)

(declare-fun e!687713 () Bool)

(declare-fun call!59773 () Bool)

(assert (=> b!1210889 (= e!687713 call!59773)))

(declare-fun b!1210890 () Bool)

(declare-fun e!687715 () Bool)

(assert (=> b!1210890 (= e!687715 e!687713)))

(declare-fun c!119307 () Bool)

(assert (=> b!1210890 (= c!119307 (validKeyInArray!0 (select (arr!37740 lt!549784) #b00000000000000000000000000000000)))))

(declare-fun bm!59770 () Bool)

(assert (=> bm!59770 (= call!59773 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!549784 mask!1564))))

(declare-fun b!1210891 () Bool)

(declare-fun e!687714 () Bool)

(assert (=> b!1210891 (= e!687713 e!687714)))

(declare-fun lt!549857 () (_ BitVec 64))

(assert (=> b!1210891 (= lt!549857 (select (arr!37740 lt!549784) #b00000000000000000000000000000000))))

(declare-fun lt!549858 () Unit!40056)

(assert (=> b!1210891 (= lt!549858 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!549784 lt!549857 #b00000000000000000000000000000000))))

(assert (=> b!1210891 (arrayContainsKey!0 lt!549784 lt!549857 #b00000000000000000000000000000000)))

(declare-fun lt!549856 () Unit!40056)

(assert (=> b!1210891 (= lt!549856 lt!549858)))

(declare-fun res!804598 () Bool)

(declare-datatypes ((SeekEntryResult!9938 0))(
  ( (MissingZero!9938 (index!42122 (_ BitVec 32))) (Found!9938 (index!42123 (_ BitVec 32))) (Intermediate!9938 (undefined!10750 Bool) (index!42124 (_ BitVec 32)) (x!106752 (_ BitVec 32))) (Undefined!9938) (MissingVacant!9938 (index!42125 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78214 (_ BitVec 32)) SeekEntryResult!9938)

(assert (=> b!1210891 (= res!804598 (= (seekEntryOrOpen!0 (select (arr!37740 lt!549784) #b00000000000000000000000000000000) lt!549784 mask!1564) (Found!9938 #b00000000000000000000000000000000)))))

(assert (=> b!1210891 (=> (not res!804598) (not e!687714))))

(declare-fun b!1210892 () Bool)

(assert (=> b!1210892 (= e!687714 call!59773)))

(declare-fun d!133281 () Bool)

(declare-fun res!804599 () Bool)

(assert (=> d!133281 (=> res!804599 e!687715)))

(assert (=> d!133281 (= res!804599 (bvsge #b00000000000000000000000000000000 (size!38277 lt!549784)))))

(assert (=> d!133281 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!549784 mask!1564) e!687715)))

(assert (= (and d!133281 (not res!804599)) b!1210890))

(assert (= (and b!1210890 c!119307) b!1210891))

(assert (= (and b!1210890 (not c!119307)) b!1210889))

(assert (= (and b!1210891 res!804598) b!1210892))

(assert (= (or b!1210892 b!1210889) bm!59770))

(declare-fun m!1116389 () Bool)

(assert (=> b!1210890 m!1116389))

(assert (=> b!1210890 m!1116389))

(declare-fun m!1116391 () Bool)

(assert (=> b!1210890 m!1116391))

(declare-fun m!1116393 () Bool)

(assert (=> bm!59770 m!1116393))

(assert (=> b!1210891 m!1116389))

(declare-fun m!1116395 () Bool)

(assert (=> b!1210891 m!1116395))

(declare-fun m!1116397 () Bool)

(assert (=> b!1210891 m!1116397))

(assert (=> b!1210891 m!1116389))

(declare-fun m!1116399 () Bool)

(assert (=> b!1210891 m!1116399))

(assert (=> b!1210780 d!133281))

(declare-fun b!1210893 () Bool)

(declare-fun e!687716 () Bool)

(declare-fun call!59774 () Bool)

(assert (=> b!1210893 (= e!687716 call!59774)))

(declare-fun b!1210894 () Bool)

(declare-fun e!687718 () Bool)

(assert (=> b!1210894 (= e!687718 e!687716)))

(declare-fun c!119308 () Bool)

(assert (=> b!1210894 (= c!119308 (validKeyInArray!0 (select (arr!37740 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!59771 () Bool)

(assert (=> bm!59771 (= call!59774 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1210895 () Bool)

(declare-fun e!687717 () Bool)

(assert (=> b!1210895 (= e!687716 e!687717)))

(declare-fun lt!549860 () (_ BitVec 64))

(assert (=> b!1210895 (= lt!549860 (select (arr!37740 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!549861 () Unit!40056)

(assert (=> b!1210895 (= lt!549861 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!549860 #b00000000000000000000000000000000))))

(assert (=> b!1210895 (arrayContainsKey!0 _keys!1208 lt!549860 #b00000000000000000000000000000000)))

(declare-fun lt!549859 () Unit!40056)

(assert (=> b!1210895 (= lt!549859 lt!549861)))

(declare-fun res!804600 () Bool)

(assert (=> b!1210895 (= res!804600 (= (seekEntryOrOpen!0 (select (arr!37740 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9938 #b00000000000000000000000000000000)))))

(assert (=> b!1210895 (=> (not res!804600) (not e!687717))))

(declare-fun b!1210896 () Bool)

(assert (=> b!1210896 (= e!687717 call!59774)))

(declare-fun d!133283 () Bool)

(declare-fun res!804601 () Bool)

(assert (=> d!133283 (=> res!804601 e!687718)))

(assert (=> d!133283 (= res!804601 (bvsge #b00000000000000000000000000000000 (size!38277 _keys!1208)))))

(assert (=> d!133283 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!687718)))

(assert (= (and d!133283 (not res!804601)) b!1210894))

(assert (= (and b!1210894 c!119308) b!1210895))

(assert (= (and b!1210894 (not c!119308)) b!1210893))

(assert (= (and b!1210895 res!804600) b!1210896))

(assert (= (or b!1210896 b!1210893) bm!59771))

(declare-fun m!1116401 () Bool)

(assert (=> b!1210894 m!1116401))

(assert (=> b!1210894 m!1116401))

(declare-fun m!1116403 () Bool)

(assert (=> b!1210894 m!1116403))

(declare-fun m!1116405 () Bool)

(assert (=> bm!59771 m!1116405))

(assert (=> b!1210895 m!1116401))

(declare-fun m!1116407 () Bool)

(assert (=> b!1210895 m!1116407))

(declare-fun m!1116409 () Bool)

(assert (=> b!1210895 m!1116409))

(assert (=> b!1210895 m!1116401))

(declare-fun m!1116411 () Bool)

(assert (=> b!1210895 m!1116411))

(assert (=> b!1210781 d!133283))

(declare-fun d!133285 () Bool)

(declare-fun res!804606 () Bool)

(declare-fun e!687723 () Bool)

(assert (=> d!133285 (=> res!804606 e!687723)))

(assert (=> d!133285 (= res!804606 (= (select (arr!37740 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!133285 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!687723)))

(declare-fun b!1210901 () Bool)

(declare-fun e!687724 () Bool)

(assert (=> b!1210901 (= e!687723 e!687724)))

(declare-fun res!804607 () Bool)

(assert (=> b!1210901 (=> (not res!804607) (not e!687724))))

(assert (=> b!1210901 (= res!804607 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38277 _keys!1208)))))

(declare-fun b!1210902 () Bool)

(assert (=> b!1210902 (= e!687724 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!133285 (not res!804606)) b!1210901))

(assert (= (and b!1210901 res!804607) b!1210902))

(declare-fun m!1116413 () Bool)

(assert (=> d!133285 m!1116413))

(declare-fun m!1116415 () Bool)

(assert (=> b!1210902 m!1116415))

(assert (=> b!1210774 d!133285))

(declare-fun bm!59776 () Bool)

(declare-fun call!59780 () ListLongMap!17921)

(assert (=> bm!59776 (= call!59780 (getCurrentListMapNoExtraKeys!5381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!59779 () ListLongMap!17921)

(declare-fun bm!59777 () Bool)

(assert (=> bm!59777 (= call!59779 (getCurrentListMapNoExtraKeys!5381 (array!78215 (store (arr!37740 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38277 _keys!1208)) (array!78217 (store (arr!37741 _values!996) i!673 (ValueCellFull!14655 (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38278 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun d!133287 () Bool)

(declare-fun e!687729 () Bool)

(assert (=> d!133287 e!687729))

(declare-fun res!804610 () Bool)

(assert (=> d!133287 (=> (not res!804610) (not e!687729))))

(assert (=> d!133287 (= res!804610 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38277 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38277 _keys!1208))))))))

(declare-fun lt!549864 () Unit!40056)

(declare-fun choose!1820 (array!78214 array!78216 (_ BitVec 32) (_ BitVec 32) V!46099 V!46099 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40056)

(assert (=> d!133287 (= lt!549864 (choose!1820 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133287 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38277 _keys!1208)))))

(assert (=> d!133287 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1082 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!549864)))

(declare-fun b!1210909 () Bool)

(declare-fun e!687730 () Bool)

(assert (=> b!1210909 (= e!687729 e!687730)))

(declare-fun c!119311 () Bool)

(assert (=> b!1210909 (= c!119311 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun b!1210910 () Bool)

(assert (=> b!1210910 (= e!687730 (= call!59779 (-!1874 call!59780 k0!934)))))

(assert (=> b!1210910 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38278 _values!996)))))

(declare-fun b!1210911 () Bool)

(assert (=> b!1210911 (= e!687730 (= call!59779 call!59780))))

(assert (=> b!1210911 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38278 _values!996)))))

(assert (= (and d!133287 res!804610) b!1210909))

(assert (= (and b!1210909 c!119311) b!1210910))

(assert (= (and b!1210909 (not c!119311)) b!1210911))

(assert (= (or b!1210910 b!1210911) bm!59776))

(assert (= (or b!1210910 b!1210911) bm!59777))

(declare-fun b_lambda!21641 () Bool)

(assert (=> (not b_lambda!21641) (not bm!59777)))

(assert (=> bm!59777 t!39770))

(declare-fun b_and!43149 () Bool)

(assert (= b_and!43143 (and (=> t!39770 result!22251) b_and!43149)))

(assert (=> bm!59776 m!1116271))

(assert (=> bm!59777 m!1116289))

(assert (=> bm!59777 m!1116303))

(declare-fun m!1116417 () Bool)

(assert (=> bm!59777 m!1116417))

(declare-fun m!1116419 () Bool)

(assert (=> bm!59777 m!1116419))

(declare-fun m!1116421 () Bool)

(assert (=> d!133287 m!1116421))

(declare-fun m!1116423 () Bool)

(assert (=> b!1210910 m!1116423))

(assert (=> b!1210779 d!133287))

(declare-fun d!133289 () Bool)

(declare-fun lt!549867 () ListLongMap!17921)

(assert (=> d!133289 (not (contains!6989 lt!549867 (select (arr!37740 _keys!1208) from!1455)))))

(declare-fun removeStrictlySorted!102 (List!26759 (_ BitVec 64)) List!26759)

(assert (=> d!133289 (= lt!549867 (ListLongMap!17922 (removeStrictlySorted!102 (toList!8976 (+!4003 lt!549781 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778))) (select (arr!37740 _keys!1208) from!1455))))))

(assert (=> d!133289 (= (-!1874 (+!4003 lt!549781 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778)) (select (arr!37740 _keys!1208) from!1455)) lt!549867)))

(declare-fun bs!34186 () Bool)

(assert (= bs!34186 d!133289))

(assert (=> bs!34186 m!1116257))

(declare-fun m!1116425 () Bool)

(assert (=> bs!34186 m!1116425))

(assert (=> bs!34186 m!1116257))

(declare-fun m!1116427 () Bool)

(assert (=> bs!34186 m!1116427))

(assert (=> b!1210771 d!133289))

(declare-fun d!133291 () Bool)

(declare-fun lt!549868 () ListLongMap!17921)

(assert (=> d!133291 (not (contains!6989 lt!549868 k0!934))))

(assert (=> d!133291 (= lt!549868 (ListLongMap!17922 (removeStrictlySorted!102 (toList!8976 lt!549771) k0!934)))))

(assert (=> d!133291 (= (-!1874 lt!549771 k0!934) lt!549868)))

(declare-fun bs!34187 () Bool)

(assert (= bs!34187 d!133291))

(declare-fun m!1116429 () Bool)

(assert (=> bs!34187 m!1116429))

(declare-fun m!1116431 () Bool)

(assert (=> bs!34187 m!1116431))

(assert (=> b!1210771 d!133291))

(declare-fun d!133293 () Bool)

(declare-fun c!119314 () Bool)

(assert (=> d!133293 (= c!119314 ((_ is ValueCellFull!14655) (select (arr!37741 _values!996) from!1455)))))

(declare-fun e!687733 () V!46099)

(assert (=> d!133293 (= (get!19272 (select (arr!37741 _values!996) from!1455) lt!549776) e!687733)))

(declare-fun b!1210916 () Bool)

(declare-fun get!19274 (ValueCell!14655 V!46099) V!46099)

(assert (=> b!1210916 (= e!687733 (get!19274 (select (arr!37741 _values!996) from!1455) lt!549776))))

(declare-fun b!1210917 () Bool)

(declare-fun get!19275 (ValueCell!14655 V!46099) V!46099)

(assert (=> b!1210917 (= e!687733 (get!19275 (select (arr!37741 _values!996) from!1455) lt!549776))))

(assert (= (and d!133293 c!119314) b!1210916))

(assert (= (and d!133293 (not c!119314)) b!1210917))

(assert (=> b!1210916 m!1116275))

(declare-fun m!1116433 () Bool)

(assert (=> b!1210916 m!1116433))

(assert (=> b!1210917 m!1116275))

(declare-fun m!1116435 () Bool)

(assert (=> b!1210917 m!1116435))

(assert (=> b!1210771 d!133293))

(declare-fun d!133295 () Bool)

(assert (=> d!133295 (= (-!1874 (+!4003 lt!549781 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778)) (select (arr!37740 _keys!1208) from!1455)) lt!549781)))

(declare-fun lt!549871 () Unit!40056)

(declare-fun choose!1821 (ListLongMap!17921 (_ BitVec 64) V!46099) Unit!40056)

(assert (=> d!133295 (= lt!549871 (choose!1821 lt!549781 (select (arr!37740 _keys!1208) from!1455) lt!549778))))

(assert (=> d!133295 (not (contains!6989 lt!549781 (select (arr!37740 _keys!1208) from!1455)))))

(assert (=> d!133295 (= (addThenRemoveForNewKeyIsSame!276 lt!549781 (select (arr!37740 _keys!1208) from!1455) lt!549778) lt!549871)))

(declare-fun bs!34188 () Bool)

(assert (= bs!34188 d!133295))

(assert (=> bs!34188 m!1116273))

(assert (=> bs!34188 m!1116273))

(assert (=> bs!34188 m!1116257))

(assert (=> bs!34188 m!1116283))

(assert (=> bs!34188 m!1116257))

(declare-fun m!1116437 () Bool)

(assert (=> bs!34188 m!1116437))

(assert (=> bs!34188 m!1116257))

(declare-fun m!1116439 () Bool)

(assert (=> bs!34188 m!1116439))

(assert (=> b!1210771 d!133295))

(declare-fun d!133297 () Bool)

(declare-fun e!687736 () Bool)

(assert (=> d!133297 e!687736))

(declare-fun res!804615 () Bool)

(assert (=> d!133297 (=> (not res!804615) (not e!687736))))

(declare-fun lt!549881 () ListLongMap!17921)

(assert (=> d!133297 (= res!804615 (contains!6989 lt!549881 (_1!9980 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778))))))

(declare-fun lt!549880 () List!26759)

(assert (=> d!133297 (= lt!549881 (ListLongMap!17922 lt!549880))))

(declare-fun lt!549882 () Unit!40056)

(declare-fun lt!549883 () Unit!40056)

(assert (=> d!133297 (= lt!549882 lt!549883)))

(declare-datatypes ((Option!693 0))(
  ( (Some!692 (v!18075 V!46099)) (None!691) )
))
(declare-fun getValueByKey!642 (List!26759 (_ BitVec 64)) Option!693)

(assert (=> d!133297 (= (getValueByKey!642 lt!549880 (_1!9980 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778))) (Some!692 (_2!9980 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778))))))

(declare-fun lemmaContainsTupThenGetReturnValue!317 (List!26759 (_ BitVec 64) V!46099) Unit!40056)

(assert (=> d!133297 (= lt!549883 (lemmaContainsTupThenGetReturnValue!317 lt!549880 (_1!9980 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778)) (_2!9980 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778))))))

(declare-fun insertStrictlySorted!409 (List!26759 (_ BitVec 64) V!46099) List!26759)

(assert (=> d!133297 (= lt!549880 (insertStrictlySorted!409 (toList!8976 lt!549781) (_1!9980 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778)) (_2!9980 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778))))))

(assert (=> d!133297 (= (+!4003 lt!549781 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778)) lt!549881)))

(declare-fun b!1210922 () Bool)

(declare-fun res!804616 () Bool)

(assert (=> b!1210922 (=> (not res!804616) (not e!687736))))

(assert (=> b!1210922 (= res!804616 (= (getValueByKey!642 (toList!8976 lt!549881) (_1!9980 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778))) (Some!692 (_2!9980 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778)))))))

(declare-fun b!1210923 () Bool)

(declare-fun contains!6991 (List!26759 tuple2!19940) Bool)

(assert (=> b!1210923 (= e!687736 (contains!6991 (toList!8976 lt!549881) (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) lt!549778)))))

(assert (= (and d!133297 res!804615) b!1210922))

(assert (= (and b!1210922 res!804616) b!1210923))

(declare-fun m!1116441 () Bool)

(assert (=> d!133297 m!1116441))

(declare-fun m!1116443 () Bool)

(assert (=> d!133297 m!1116443))

(declare-fun m!1116445 () Bool)

(assert (=> d!133297 m!1116445))

(declare-fun m!1116447 () Bool)

(assert (=> d!133297 m!1116447))

(declare-fun m!1116449 () Bool)

(assert (=> b!1210922 m!1116449))

(declare-fun m!1116451 () Bool)

(assert (=> b!1210923 m!1116451))

(assert (=> b!1210771 d!133297))

(declare-fun b!1210948 () Bool)

(declare-fun e!687756 () ListLongMap!17921)

(assert (=> b!1210948 (= e!687756 (ListLongMap!17922 Nil!26756))))

(declare-fun d!133299 () Bool)

(declare-fun e!687752 () Bool)

(assert (=> d!133299 e!687752))

(declare-fun res!804627 () Bool)

(assert (=> d!133299 (=> (not res!804627) (not e!687752))))

(declare-fun lt!549898 () ListLongMap!17921)

(assert (=> d!133299 (= res!804627 (not (contains!6989 lt!549898 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133299 (= lt!549898 e!687756)))

(declare-fun c!119323 () Bool)

(assert (=> d!133299 (= c!119323 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38277 _keys!1208)))))

(assert (=> d!133299 (validMask!0 mask!1564)))

(assert (=> d!133299 (= (getCurrentListMapNoExtraKeys!5381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!549898)))

(declare-fun b!1210949 () Bool)

(declare-fun e!687754 () Bool)

(declare-fun isEmpty!995 (ListLongMap!17921) Bool)

(assert (=> b!1210949 (= e!687754 (isEmpty!995 lt!549898))))

(declare-fun b!1210950 () Bool)

(declare-fun e!687753 () Bool)

(assert (=> b!1210950 (= e!687752 e!687753)))

(declare-fun c!119325 () Bool)

(declare-fun e!687751 () Bool)

(assert (=> b!1210950 (= c!119325 e!687751)))

(declare-fun res!804625 () Bool)

(assert (=> b!1210950 (=> (not res!804625) (not e!687751))))

(assert (=> b!1210950 (= res!804625 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38277 _keys!1208)))))

(declare-fun b!1210951 () Bool)

(declare-fun e!687757 () Bool)

(assert (=> b!1210951 (= e!687753 e!687757)))

(assert (=> b!1210951 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38277 _keys!1208)))))

(declare-fun res!804626 () Bool)

(assert (=> b!1210951 (= res!804626 (contains!6989 lt!549898 (select (arr!37740 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1210951 (=> (not res!804626) (not e!687757))))

(declare-fun b!1210952 () Bool)

(declare-fun res!804628 () Bool)

(assert (=> b!1210952 (=> (not res!804628) (not e!687752))))

(assert (=> b!1210952 (= res!804628 (not (contains!6989 lt!549898 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1210953 () Bool)

(assert (=> b!1210953 (= e!687754 (= lt!549898 (getCurrentListMapNoExtraKeys!5381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun call!59783 () ListLongMap!17921)

(declare-fun bm!59780 () Bool)

(assert (=> bm!59780 (= call!59783 (getCurrentListMapNoExtraKeys!5381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1210954 () Bool)

(assert (=> b!1210954 (= e!687753 e!687754)))

(declare-fun c!119326 () Bool)

(assert (=> b!1210954 (= c!119326 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38277 _keys!1208)))))

(declare-fun b!1210955 () Bool)

(declare-fun e!687755 () ListLongMap!17921)

(assert (=> b!1210955 (= e!687756 e!687755)))

(declare-fun c!119324 () Bool)

(assert (=> b!1210955 (= c!119324 (validKeyInArray!0 (select (arr!37740 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1210956 () Bool)

(declare-fun lt!549903 () Unit!40056)

(declare-fun lt!549899 () Unit!40056)

(assert (=> b!1210956 (= lt!549903 lt!549899)))

(declare-fun lt!549902 () (_ BitVec 64))

(declare-fun lt!549900 () (_ BitVec 64))

(declare-fun lt!549904 () ListLongMap!17921)

(declare-fun lt!549901 () V!46099)

(assert (=> b!1210956 (not (contains!6989 (+!4003 lt!549904 (tuple2!19941 lt!549902 lt!549901)) lt!549900))))

(declare-fun addStillNotContains!298 (ListLongMap!17921 (_ BitVec 64) V!46099 (_ BitVec 64)) Unit!40056)

(assert (=> b!1210956 (= lt!549899 (addStillNotContains!298 lt!549904 lt!549902 lt!549901 lt!549900))))

(assert (=> b!1210956 (= lt!549900 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1210956 (= lt!549901 (get!19272 (select (arr!37741 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1210956 (= lt!549902 (select (arr!37740 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1210956 (= lt!549904 call!59783)))

(assert (=> b!1210956 (= e!687755 (+!4003 call!59783 (tuple2!19941 (select (arr!37740 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19272 (select (arr!37741 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1210957 () Bool)

(assert (=> b!1210957 (= e!687755 call!59783)))

(declare-fun b!1210958 () Bool)

(assert (=> b!1210958 (= e!687751 (validKeyInArray!0 (select (arr!37740 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1210958 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1210959 () Bool)

(assert (=> b!1210959 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38277 _keys!1208)))))

(assert (=> b!1210959 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38278 _values!996)))))

(declare-fun apply!1003 (ListLongMap!17921 (_ BitVec 64)) V!46099)

(assert (=> b!1210959 (= e!687757 (= (apply!1003 lt!549898 (select (arr!37740 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19272 (select (arr!37741 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!133299 c!119323) b!1210948))

(assert (= (and d!133299 (not c!119323)) b!1210955))

(assert (= (and b!1210955 c!119324) b!1210956))

(assert (= (and b!1210955 (not c!119324)) b!1210957))

(assert (= (or b!1210956 b!1210957) bm!59780))

(assert (= (and d!133299 res!804627) b!1210952))

(assert (= (and b!1210952 res!804628) b!1210950))

(assert (= (and b!1210950 res!804625) b!1210958))

(assert (= (and b!1210950 c!119325) b!1210951))

(assert (= (and b!1210950 (not c!119325)) b!1210954))

(assert (= (and b!1210951 res!804626) b!1210959))

(assert (= (and b!1210954 c!119326) b!1210953))

(assert (= (and b!1210954 (not c!119326)) b!1210949))

(declare-fun b_lambda!21643 () Bool)

(assert (=> (not b_lambda!21643) (not b!1210956)))

(assert (=> b!1210956 t!39770))

(declare-fun b_and!43151 () Bool)

(assert (= b_and!43149 (and (=> t!39770 result!22251) b_and!43151)))

(declare-fun b_lambda!21645 () Bool)

(assert (=> (not b_lambda!21645) (not b!1210959)))

(assert (=> b!1210959 t!39770))

(declare-fun b_and!43153 () Bool)

(assert (= b_and!43151 (and (=> t!39770 result!22251) b_and!43153)))

(assert (=> b!1210955 m!1116413))

(assert (=> b!1210955 m!1116413))

(declare-fun m!1116453 () Bool)

(assert (=> b!1210955 m!1116453))

(declare-fun m!1116455 () Bool)

(assert (=> b!1210952 m!1116455))

(declare-fun m!1116457 () Bool)

(assert (=> b!1210953 m!1116457))

(assert (=> b!1210958 m!1116413))

(assert (=> b!1210958 m!1116413))

(assert (=> b!1210958 m!1116453))

(declare-fun m!1116459 () Bool)

(assert (=> d!133299 m!1116459))

(assert (=> d!133299 m!1116247))

(assert (=> bm!59780 m!1116457))

(assert (=> b!1210951 m!1116413))

(assert (=> b!1210951 m!1116413))

(declare-fun m!1116461 () Bool)

(assert (=> b!1210951 m!1116461))

(assert (=> b!1210956 m!1116303))

(declare-fun m!1116463 () Bool)

(assert (=> b!1210956 m!1116463))

(declare-fun m!1116465 () Bool)

(assert (=> b!1210956 m!1116465))

(assert (=> b!1210956 m!1116463))

(declare-fun m!1116467 () Bool)

(assert (=> b!1210956 m!1116467))

(assert (=> b!1210956 m!1116465))

(assert (=> b!1210956 m!1116303))

(declare-fun m!1116469 () Bool)

(assert (=> b!1210956 m!1116469))

(declare-fun m!1116471 () Bool)

(assert (=> b!1210956 m!1116471))

(assert (=> b!1210956 m!1116413))

(declare-fun m!1116473 () Bool)

(assert (=> b!1210956 m!1116473))

(declare-fun m!1116475 () Bool)

(assert (=> b!1210949 m!1116475))

(assert (=> b!1210959 m!1116303))

(assert (=> b!1210959 m!1116465))

(assert (=> b!1210959 m!1116465))

(assert (=> b!1210959 m!1116303))

(assert (=> b!1210959 m!1116469))

(assert (=> b!1210959 m!1116413))

(assert (=> b!1210959 m!1116413))

(declare-fun m!1116477 () Bool)

(assert (=> b!1210959 m!1116477))

(assert (=> b!1210771 d!133299))

(declare-fun d!133301 () Bool)

(declare-fun e!687763 () Bool)

(assert (=> d!133301 e!687763))

(declare-fun res!804631 () Bool)

(assert (=> d!133301 (=> res!804631 e!687763)))

(declare-fun lt!549915 () Bool)

(assert (=> d!133301 (= res!804631 (not lt!549915))))

(declare-fun lt!549914 () Bool)

(assert (=> d!133301 (= lt!549915 lt!549914)))

(declare-fun lt!549916 () Unit!40056)

(declare-fun e!687762 () Unit!40056)

(assert (=> d!133301 (= lt!549916 e!687762)))

(declare-fun c!119329 () Bool)

(assert (=> d!133301 (= c!119329 lt!549914)))

(declare-fun containsKey!596 (List!26759 (_ BitVec 64)) Bool)

(assert (=> d!133301 (= lt!549914 (containsKey!596 (toList!8976 lt!549781) k0!934))))

(assert (=> d!133301 (= (contains!6989 lt!549781 k0!934) lt!549915)))

(declare-fun b!1210966 () Bool)

(declare-fun lt!549913 () Unit!40056)

(assert (=> b!1210966 (= e!687762 lt!549913)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!425 (List!26759 (_ BitVec 64)) Unit!40056)

(assert (=> b!1210966 (= lt!549913 (lemmaContainsKeyImpliesGetValueByKeyDefined!425 (toList!8976 lt!549781) k0!934))))

(declare-fun isDefined!465 (Option!693) Bool)

(assert (=> b!1210966 (isDefined!465 (getValueByKey!642 (toList!8976 lt!549781) k0!934))))

(declare-fun b!1210967 () Bool)

(declare-fun Unit!40064 () Unit!40056)

(assert (=> b!1210967 (= e!687762 Unit!40064)))

(declare-fun b!1210968 () Bool)

(assert (=> b!1210968 (= e!687763 (isDefined!465 (getValueByKey!642 (toList!8976 lt!549781) k0!934)))))

(assert (= (and d!133301 c!119329) b!1210966))

(assert (= (and d!133301 (not c!119329)) b!1210967))

(assert (= (and d!133301 (not res!804631)) b!1210968))

(declare-fun m!1116479 () Bool)

(assert (=> d!133301 m!1116479))

(declare-fun m!1116481 () Bool)

(assert (=> b!1210966 m!1116481))

(declare-fun m!1116483 () Bool)

(assert (=> b!1210966 m!1116483))

(assert (=> b!1210966 m!1116483))

(declare-fun m!1116485 () Bool)

(assert (=> b!1210966 m!1116485))

(assert (=> b!1210968 m!1116483))

(assert (=> b!1210968 m!1116483))

(assert (=> b!1210968 m!1116485))

(assert (=> b!1210771 d!133301))

(assert (=> b!1210762 d!133285))

(declare-fun d!133303 () Bool)

(declare-fun res!804632 () Bool)

(declare-fun e!687764 () Bool)

(assert (=> d!133303 (=> res!804632 e!687764)))

(assert (=> d!133303 (= res!804632 (= (select (arr!37740 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!133303 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!687764)))

(declare-fun b!1210969 () Bool)

(declare-fun e!687765 () Bool)

(assert (=> b!1210969 (= e!687764 e!687765)))

(declare-fun res!804633 () Bool)

(assert (=> b!1210969 (=> (not res!804633) (not e!687765))))

(assert (=> b!1210969 (= res!804633 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38277 _keys!1208)))))

(declare-fun b!1210970 () Bool)

(assert (=> b!1210970 (= e!687765 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133303 (not res!804632)) b!1210969))

(assert (= (and b!1210969 res!804633) b!1210970))

(assert (=> d!133303 m!1116401))

(declare-fun m!1116487 () Bool)

(assert (=> b!1210970 m!1116487))

(assert (=> b!1210785 d!133303))

(declare-fun d!133305 () Bool)

(assert (=> d!133305 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!549919 () Unit!40056)

(declare-fun choose!13 (array!78214 (_ BitVec 64) (_ BitVec 32)) Unit!40056)

(assert (=> d!133305 (= lt!549919 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!133305 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133305 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!549919)))

(declare-fun bs!34189 () Bool)

(assert (= bs!34189 d!133305))

(assert (=> bs!34189 m!1116233))

(declare-fun m!1116489 () Bool)

(assert (=> bs!34189 m!1116489))

(assert (=> b!1210785 d!133305))

(declare-fun d!133307 () Bool)

(declare-fun e!687767 () Bool)

(assert (=> d!133307 e!687767))

(declare-fun res!804634 () Bool)

(assert (=> d!133307 (=> res!804634 e!687767)))

(declare-fun lt!549922 () Bool)

(assert (=> d!133307 (= res!804634 (not lt!549922))))

(declare-fun lt!549921 () Bool)

(assert (=> d!133307 (= lt!549922 lt!549921)))

(declare-fun lt!549923 () Unit!40056)

(declare-fun e!687766 () Unit!40056)

(assert (=> d!133307 (= lt!549923 e!687766)))

(declare-fun c!119330 () Bool)

(assert (=> d!133307 (= c!119330 lt!549921)))

(assert (=> d!133307 (= lt!549921 (containsKey!596 (toList!8976 (ite c!119286 lt!549772 call!59743)) k0!934))))

(assert (=> d!133307 (= (contains!6989 (ite c!119286 lt!549772 call!59743) k0!934) lt!549922)))

(declare-fun b!1210971 () Bool)

(declare-fun lt!549920 () Unit!40056)

(assert (=> b!1210971 (= e!687766 lt!549920)))

(assert (=> b!1210971 (= lt!549920 (lemmaContainsKeyImpliesGetValueByKeyDefined!425 (toList!8976 (ite c!119286 lt!549772 call!59743)) k0!934))))

(assert (=> b!1210971 (isDefined!465 (getValueByKey!642 (toList!8976 (ite c!119286 lt!549772 call!59743)) k0!934))))

(declare-fun b!1210972 () Bool)

(declare-fun Unit!40065 () Unit!40056)

(assert (=> b!1210972 (= e!687766 Unit!40065)))

(declare-fun b!1210973 () Bool)

(assert (=> b!1210973 (= e!687767 (isDefined!465 (getValueByKey!642 (toList!8976 (ite c!119286 lt!549772 call!59743)) k0!934)))))

(assert (= (and d!133307 c!119330) b!1210971))

(assert (= (and d!133307 (not c!119330)) b!1210972))

(assert (= (and d!133307 (not res!804634)) b!1210973))

(declare-fun m!1116491 () Bool)

(assert (=> d!133307 m!1116491))

(declare-fun m!1116493 () Bool)

(assert (=> b!1210971 m!1116493))

(declare-fun m!1116495 () Bool)

(assert (=> b!1210971 m!1116495))

(assert (=> b!1210971 m!1116495))

(declare-fun m!1116497 () Bool)

(assert (=> b!1210971 m!1116497))

(assert (=> b!1210973 m!1116495))

(assert (=> b!1210973 m!1116495))

(assert (=> b!1210973 m!1116497))

(assert (=> bm!59737 d!133307))

(declare-fun bm!59783 () Bool)

(declare-fun call!59786 () Bool)

(declare-fun c!119333 () Bool)

(assert (=> bm!59783 (= call!59786 (arrayNoDuplicates!0 lt!549784 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!119333 (Cons!26756 (select (arr!37740 lt!549784) #b00000000000000000000000000000000) Nil!26757) Nil!26757)))))

(declare-fun d!133309 () Bool)

(declare-fun res!804643 () Bool)

(declare-fun e!687776 () Bool)

(assert (=> d!133309 (=> res!804643 e!687776)))

(assert (=> d!133309 (= res!804643 (bvsge #b00000000000000000000000000000000 (size!38277 lt!549784)))))

(assert (=> d!133309 (= (arrayNoDuplicates!0 lt!549784 #b00000000000000000000000000000000 Nil!26757) e!687776)))

(declare-fun b!1210984 () Bool)

(declare-fun e!687779 () Bool)

(declare-fun e!687777 () Bool)

(assert (=> b!1210984 (= e!687779 e!687777)))

(assert (=> b!1210984 (= c!119333 (validKeyInArray!0 (select (arr!37740 lt!549784) #b00000000000000000000000000000000)))))

(declare-fun b!1210985 () Bool)

(assert (=> b!1210985 (= e!687777 call!59786)))

(declare-fun b!1210986 () Bool)

(assert (=> b!1210986 (= e!687777 call!59786)))

(declare-fun b!1210987 () Bool)

(assert (=> b!1210987 (= e!687776 e!687779)))

(declare-fun res!804641 () Bool)

(assert (=> b!1210987 (=> (not res!804641) (not e!687779))))

(declare-fun e!687778 () Bool)

(assert (=> b!1210987 (= res!804641 (not e!687778))))

(declare-fun res!804642 () Bool)

(assert (=> b!1210987 (=> (not res!804642) (not e!687778))))

(assert (=> b!1210987 (= res!804642 (validKeyInArray!0 (select (arr!37740 lt!549784) #b00000000000000000000000000000000)))))

(declare-fun b!1210988 () Bool)

(declare-fun contains!6992 (List!26760 (_ BitVec 64)) Bool)

(assert (=> b!1210988 (= e!687778 (contains!6992 Nil!26757 (select (arr!37740 lt!549784) #b00000000000000000000000000000000)))))

(assert (= (and d!133309 (not res!804643)) b!1210987))

(assert (= (and b!1210987 res!804642) b!1210988))

(assert (= (and b!1210987 res!804641) b!1210984))

(assert (= (and b!1210984 c!119333) b!1210985))

(assert (= (and b!1210984 (not c!119333)) b!1210986))

(assert (= (or b!1210985 b!1210986) bm!59783))

(assert (=> bm!59783 m!1116389))

(declare-fun m!1116499 () Bool)

(assert (=> bm!59783 m!1116499))

(assert (=> b!1210984 m!1116389))

(assert (=> b!1210984 m!1116389))

(assert (=> b!1210984 m!1116391))

(assert (=> b!1210987 m!1116389))

(assert (=> b!1210987 m!1116389))

(assert (=> b!1210987 m!1116391))

(assert (=> b!1210988 m!1116389))

(assert (=> b!1210988 m!1116389))

(declare-fun m!1116501 () Bool)

(assert (=> b!1210988 m!1116501))

(assert (=> b!1210786 d!133309))

(assert (=> bm!59740 d!133299))

(declare-fun b!1210989 () Bool)

(declare-fun e!687785 () ListLongMap!17921)

(assert (=> b!1210989 (= e!687785 (ListLongMap!17922 Nil!26756))))

(declare-fun d!133311 () Bool)

(declare-fun e!687781 () Bool)

(assert (=> d!133311 e!687781))

(declare-fun res!804646 () Bool)

(assert (=> d!133311 (=> (not res!804646) (not e!687781))))

(declare-fun lt!549924 () ListLongMap!17921)

(assert (=> d!133311 (= res!804646 (not (contains!6989 lt!549924 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133311 (= lt!549924 e!687785)))

(declare-fun c!119334 () Bool)

(assert (=> d!133311 (= c!119334 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38277 lt!549784)))))

(assert (=> d!133311 (validMask!0 mask!1564)))

(assert (=> d!133311 (= (getCurrentListMapNoExtraKeys!5381 lt!549784 lt!549768 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!549924)))

(declare-fun b!1210990 () Bool)

(declare-fun e!687783 () Bool)

(assert (=> b!1210990 (= e!687783 (isEmpty!995 lt!549924))))

(declare-fun b!1210991 () Bool)

(declare-fun e!687782 () Bool)

(assert (=> b!1210991 (= e!687781 e!687782)))

(declare-fun c!119336 () Bool)

(declare-fun e!687780 () Bool)

(assert (=> b!1210991 (= c!119336 e!687780)))

(declare-fun res!804644 () Bool)

(assert (=> b!1210991 (=> (not res!804644) (not e!687780))))

(assert (=> b!1210991 (= res!804644 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38277 lt!549784)))))

(declare-fun b!1210992 () Bool)

(declare-fun e!687786 () Bool)

(assert (=> b!1210992 (= e!687782 e!687786)))

(assert (=> b!1210992 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38277 lt!549784)))))

(declare-fun res!804645 () Bool)

(assert (=> b!1210992 (= res!804645 (contains!6989 lt!549924 (select (arr!37740 lt!549784) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1210992 (=> (not res!804645) (not e!687786))))

(declare-fun b!1210993 () Bool)

(declare-fun res!804647 () Bool)

(assert (=> b!1210993 (=> (not res!804647) (not e!687781))))

(assert (=> b!1210993 (= res!804647 (not (contains!6989 lt!549924 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1210994 () Bool)

(assert (=> b!1210994 (= e!687783 (= lt!549924 (getCurrentListMapNoExtraKeys!5381 lt!549784 lt!549768 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun bm!59784 () Bool)

(declare-fun call!59787 () ListLongMap!17921)

(assert (=> bm!59784 (= call!59787 (getCurrentListMapNoExtraKeys!5381 lt!549784 lt!549768 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1210995 () Bool)

(assert (=> b!1210995 (= e!687782 e!687783)))

(declare-fun c!119337 () Bool)

(assert (=> b!1210995 (= c!119337 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38277 lt!549784)))))

(declare-fun b!1210996 () Bool)

(declare-fun e!687784 () ListLongMap!17921)

(assert (=> b!1210996 (= e!687785 e!687784)))

(declare-fun c!119335 () Bool)

(assert (=> b!1210996 (= c!119335 (validKeyInArray!0 (select (arr!37740 lt!549784) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1210997 () Bool)

(declare-fun lt!549929 () Unit!40056)

(declare-fun lt!549925 () Unit!40056)

(assert (=> b!1210997 (= lt!549929 lt!549925)))

(declare-fun lt!549928 () (_ BitVec 64))

(declare-fun lt!549927 () V!46099)

(declare-fun lt!549930 () ListLongMap!17921)

(declare-fun lt!549926 () (_ BitVec 64))

(assert (=> b!1210997 (not (contains!6989 (+!4003 lt!549930 (tuple2!19941 lt!549928 lt!549927)) lt!549926))))

(assert (=> b!1210997 (= lt!549925 (addStillNotContains!298 lt!549930 lt!549928 lt!549927 lt!549926))))

(assert (=> b!1210997 (= lt!549926 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1210997 (= lt!549927 (get!19272 (select (arr!37741 lt!549768) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1210997 (= lt!549928 (select (arr!37740 lt!549784) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1210997 (= lt!549930 call!59787)))

(assert (=> b!1210997 (= e!687784 (+!4003 call!59787 (tuple2!19941 (select (arr!37740 lt!549784) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19272 (select (arr!37741 lt!549768) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1210998 () Bool)

(assert (=> b!1210998 (= e!687784 call!59787)))

(declare-fun b!1210999 () Bool)

(assert (=> b!1210999 (= e!687780 (validKeyInArray!0 (select (arr!37740 lt!549784) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1210999 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1211000 () Bool)

(assert (=> b!1211000 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38277 lt!549784)))))

(assert (=> b!1211000 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38278 lt!549768)))))

(assert (=> b!1211000 (= e!687786 (= (apply!1003 lt!549924 (select (arr!37740 lt!549784) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19272 (select (arr!37741 lt!549768) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!133311 c!119334) b!1210989))

(assert (= (and d!133311 (not c!119334)) b!1210996))

(assert (= (and b!1210996 c!119335) b!1210997))

(assert (= (and b!1210996 (not c!119335)) b!1210998))

(assert (= (or b!1210997 b!1210998) bm!59784))

(assert (= (and d!133311 res!804646) b!1210993))

(assert (= (and b!1210993 res!804647) b!1210991))

(assert (= (and b!1210991 res!804644) b!1210999))

(assert (= (and b!1210991 c!119336) b!1210992))

(assert (= (and b!1210991 (not c!119336)) b!1210995))

(assert (= (and b!1210992 res!804645) b!1211000))

(assert (= (and b!1210995 c!119337) b!1210994))

(assert (= (and b!1210995 (not c!119337)) b!1210990))

(declare-fun b_lambda!21647 () Bool)

(assert (=> (not b_lambda!21647) (not b!1210997)))

(assert (=> b!1210997 t!39770))

(declare-fun b_and!43155 () Bool)

(assert (= b_and!43153 (and (=> t!39770 result!22251) b_and!43155)))

(declare-fun b_lambda!21649 () Bool)

(assert (=> (not b_lambda!21649) (not b!1211000)))

(assert (=> b!1211000 t!39770))

(declare-fun b_and!43157 () Bool)

(assert (= b_and!43155 (and (=> t!39770 result!22251) b_and!43157)))

(declare-fun m!1116503 () Bool)

(assert (=> b!1210996 m!1116503))

(assert (=> b!1210996 m!1116503))

(declare-fun m!1116505 () Bool)

(assert (=> b!1210996 m!1116505))

(declare-fun m!1116507 () Bool)

(assert (=> b!1210993 m!1116507))

(declare-fun m!1116509 () Bool)

(assert (=> b!1210994 m!1116509))

(assert (=> b!1210999 m!1116503))

(assert (=> b!1210999 m!1116503))

(assert (=> b!1210999 m!1116505))

(declare-fun m!1116511 () Bool)

(assert (=> d!133311 m!1116511))

(assert (=> d!133311 m!1116247))

(assert (=> bm!59784 m!1116509))

(assert (=> b!1210992 m!1116503))

(assert (=> b!1210992 m!1116503))

(declare-fun m!1116513 () Bool)

(assert (=> b!1210992 m!1116513))

(assert (=> b!1210997 m!1116303))

(declare-fun m!1116515 () Bool)

(assert (=> b!1210997 m!1116515))

(declare-fun m!1116517 () Bool)

(assert (=> b!1210997 m!1116517))

(assert (=> b!1210997 m!1116515))

(declare-fun m!1116519 () Bool)

(assert (=> b!1210997 m!1116519))

(assert (=> b!1210997 m!1116517))

(assert (=> b!1210997 m!1116303))

(declare-fun m!1116521 () Bool)

(assert (=> b!1210997 m!1116521))

(declare-fun m!1116523 () Bool)

(assert (=> b!1210997 m!1116523))

(assert (=> b!1210997 m!1116503))

(declare-fun m!1116525 () Bool)

(assert (=> b!1210997 m!1116525))

(declare-fun m!1116527 () Bool)

(assert (=> b!1210990 m!1116527))

(assert (=> b!1211000 m!1116303))

(assert (=> b!1211000 m!1116517))

(assert (=> b!1211000 m!1116517))

(assert (=> b!1211000 m!1116303))

(assert (=> b!1211000 m!1116521))

(assert (=> b!1211000 m!1116503))

(assert (=> b!1211000 m!1116503))

(declare-fun m!1116529 () Bool)

(assert (=> b!1211000 m!1116529))

(assert (=> bm!59736 d!133311))

(declare-fun d!133313 () Bool)

(declare-fun e!687787 () Bool)

(assert (=> d!133313 e!687787))

(declare-fun res!804648 () Bool)

(assert (=> d!133313 (=> (not res!804648) (not e!687787))))

(declare-fun lt!549932 () ListLongMap!17921)

(assert (=> d!133313 (= res!804648 (contains!6989 lt!549932 (_1!9980 (ite (or c!119286 c!119284) (tuple2!19941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lt!549931 () List!26759)

(assert (=> d!133313 (= lt!549932 (ListLongMap!17922 lt!549931))))

(declare-fun lt!549933 () Unit!40056)

(declare-fun lt!549934 () Unit!40056)

(assert (=> d!133313 (= lt!549933 lt!549934)))

(assert (=> d!133313 (= (getValueByKey!642 lt!549931 (_1!9980 (ite (or c!119286 c!119284) (tuple2!19941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!692 (_2!9980 (ite (or c!119286 c!119284) (tuple2!19941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!133313 (= lt!549934 (lemmaContainsTupThenGetReturnValue!317 lt!549931 (_1!9980 (ite (or c!119286 c!119284) (tuple2!19941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9980 (ite (or c!119286 c!119284) (tuple2!19941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!133313 (= lt!549931 (insertStrictlySorted!409 (toList!8976 lt!549781) (_1!9980 (ite (or c!119286 c!119284) (tuple2!19941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9980 (ite (or c!119286 c!119284) (tuple2!19941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!133313 (= (+!4003 lt!549781 (ite (or c!119286 c!119284) (tuple2!19941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!549932)))

(declare-fun b!1211001 () Bool)

(declare-fun res!804649 () Bool)

(assert (=> b!1211001 (=> (not res!804649) (not e!687787))))

(assert (=> b!1211001 (= res!804649 (= (getValueByKey!642 (toList!8976 lt!549932) (_1!9980 (ite (or c!119286 c!119284) (tuple2!19941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!692 (_2!9980 (ite (or c!119286 c!119284) (tuple2!19941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1211002 () Bool)

(assert (=> b!1211002 (= e!687787 (contains!6991 (toList!8976 lt!549932) (ite (or c!119286 c!119284) (tuple2!19941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (= (and d!133313 res!804648) b!1211001))

(assert (= (and b!1211001 res!804649) b!1211002))

(declare-fun m!1116531 () Bool)

(assert (=> d!133313 m!1116531))

(declare-fun m!1116533 () Bool)

(assert (=> d!133313 m!1116533))

(declare-fun m!1116535 () Bool)

(assert (=> d!133313 m!1116535))

(declare-fun m!1116537 () Bool)

(assert (=> d!133313 m!1116537))

(declare-fun m!1116539 () Bool)

(assert (=> b!1211001 m!1116539))

(declare-fun m!1116541 () Bool)

(assert (=> b!1211002 m!1116541))

(assert (=> bm!59743 d!133313))

(declare-fun d!133315 () Bool)

(declare-fun e!687790 () Bool)

(assert (=> d!133315 e!687790))

(declare-fun c!119340 () Bool)

(assert (=> d!133315 (= c!119340 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!549937 () Unit!40056)

(declare-fun choose!1822 (array!78214 array!78216 (_ BitVec 32) (_ BitVec 32) V!46099 V!46099 (_ BitVec 64) (_ BitVec 32) Int) Unit!40056)

(assert (=> d!133315 (= lt!549937 (choose!1822 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133315 (validMask!0 mask!1564)))

(assert (=> d!133315 (= (lemmaListMapContainsThenArrayContainsFrom!602 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!549937)))

(declare-fun b!1211007 () Bool)

(assert (=> b!1211007 (= e!687790 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1211008 () Bool)

(assert (=> b!1211008 (= e!687790 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!133315 c!119340) b!1211007))

(assert (= (and d!133315 (not c!119340)) b!1211008))

(declare-fun m!1116543 () Bool)

(assert (=> d!133315 m!1116543))

(assert (=> d!133315 m!1116247))

(assert (=> b!1211007 m!1116239))

(assert (=> b!1210784 d!133315))

(declare-fun d!133317 () Bool)

(assert (=> d!133317 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26757)))

(declare-fun lt!549940 () Unit!40056)

(declare-fun choose!39 (array!78214 (_ BitVec 32) (_ BitVec 32)) Unit!40056)

(assert (=> d!133317 (= lt!549940 (choose!39 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> d!133317 (bvslt (size!38277 _keys!1208) #b01111111111111111111111111111111)))

(assert (=> d!133317 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455) lt!549940)))

(declare-fun bs!34190 () Bool)

(assert (= bs!34190 d!133317))

(assert (=> bs!34190 m!1116253))

(declare-fun m!1116545 () Bool)

(assert (=> bs!34190 m!1116545))

(assert (=> b!1210784 d!133317))

(declare-fun c!119341 () Bool)

(declare-fun bm!59785 () Bool)

(declare-fun call!59788 () Bool)

(assert (=> bm!59785 (= call!59788 (arrayNoDuplicates!0 _keys!1208 (bvadd from!1455 #b00000000000000000000000000000001) (ite c!119341 (Cons!26756 (select (arr!37740 _keys!1208) from!1455) Nil!26757) Nil!26757)))))

(declare-fun d!133319 () Bool)

(declare-fun res!804652 () Bool)

(declare-fun e!687791 () Bool)

(assert (=> d!133319 (=> res!804652 e!687791)))

(assert (=> d!133319 (= res!804652 (bvsge from!1455 (size!38277 _keys!1208)))))

(assert (=> d!133319 (= (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26757) e!687791)))

(declare-fun b!1211009 () Bool)

(declare-fun e!687794 () Bool)

(declare-fun e!687792 () Bool)

(assert (=> b!1211009 (= e!687794 e!687792)))

(assert (=> b!1211009 (= c!119341 (validKeyInArray!0 (select (arr!37740 _keys!1208) from!1455)))))

(declare-fun b!1211010 () Bool)

(assert (=> b!1211010 (= e!687792 call!59788)))

(declare-fun b!1211011 () Bool)

(assert (=> b!1211011 (= e!687792 call!59788)))

(declare-fun b!1211012 () Bool)

(assert (=> b!1211012 (= e!687791 e!687794)))

(declare-fun res!804650 () Bool)

(assert (=> b!1211012 (=> (not res!804650) (not e!687794))))

(declare-fun e!687793 () Bool)

(assert (=> b!1211012 (= res!804650 (not e!687793))))

(declare-fun res!804651 () Bool)

(assert (=> b!1211012 (=> (not res!804651) (not e!687793))))

(assert (=> b!1211012 (= res!804651 (validKeyInArray!0 (select (arr!37740 _keys!1208) from!1455)))))

(declare-fun b!1211013 () Bool)

(assert (=> b!1211013 (= e!687793 (contains!6992 Nil!26757 (select (arr!37740 _keys!1208) from!1455)))))

(assert (= (and d!133319 (not res!804652)) b!1211012))

(assert (= (and b!1211012 res!804651) b!1211013))

(assert (= (and b!1211012 res!804650) b!1211009))

(assert (= (and b!1211009 c!119341) b!1211010))

(assert (= (and b!1211009 (not c!119341)) b!1211011))

(assert (= (or b!1211010 b!1211011) bm!59785))

(assert (=> bm!59785 m!1116257))

(declare-fun m!1116547 () Bool)

(assert (=> bm!59785 m!1116547))

(assert (=> b!1211009 m!1116257))

(assert (=> b!1211009 m!1116257))

(declare-fun m!1116549 () Bool)

(assert (=> b!1211009 m!1116549))

(assert (=> b!1211012 m!1116257))

(assert (=> b!1211012 m!1116257))

(assert (=> b!1211012 m!1116549))

(assert (=> b!1211013 m!1116257))

(assert (=> b!1211013 m!1116257))

(declare-fun m!1116551 () Bool)

(assert (=> b!1211013 m!1116551))

(assert (=> b!1210784 d!133319))

(declare-fun d!133321 () Bool)

(assert (=> d!133321 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38277 _keys!1208)) (not (= (select (arr!37740 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!549943 () Unit!40056)

(declare-fun choose!21 (array!78214 (_ BitVec 64) (_ BitVec 32) List!26760) Unit!40056)

(assert (=> d!133321 (= lt!549943 (choose!21 _keys!1208 k0!934 from!1455 Nil!26757))))

(assert (=> d!133321 (bvslt (size!38277 _keys!1208) #b01111111111111111111111111111111)))

(assert (=> d!133321 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26757) lt!549943)))

(declare-fun bs!34191 () Bool)

(assert (= bs!34191 d!133321))

(assert (=> bs!34191 m!1116257))

(declare-fun m!1116553 () Bool)

(assert (=> bs!34191 m!1116553))

(assert (=> b!1210784 d!133321))

(declare-fun d!133323 () Bool)

(assert (=> d!133323 (= (array_inv!28648 _keys!1208) (bvsge (size!38277 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!101062 d!133323))

(declare-fun d!133325 () Bool)

(assert (=> d!133325 (= (array_inv!28649 _values!996) (bvsge (size!38278 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!101062 d!133325))

(declare-fun d!133327 () Bool)

(declare-fun e!687796 () Bool)

(assert (=> d!133327 e!687796))

(declare-fun res!804653 () Bool)

(assert (=> d!133327 (=> res!804653 e!687796)))

(declare-fun lt!549946 () Bool)

(assert (=> d!133327 (= res!804653 (not lt!549946))))

(declare-fun lt!549945 () Bool)

(assert (=> d!133327 (= lt!549946 lt!549945)))

(declare-fun lt!549947 () Unit!40056)

(declare-fun e!687795 () Unit!40056)

(assert (=> d!133327 (= lt!549947 e!687795)))

(declare-fun c!119342 () Bool)

(assert (=> d!133327 (= c!119342 lt!549945)))

(assert (=> d!133327 (= lt!549945 (containsKey!596 (toList!8976 (+!4003 lt!549772 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(assert (=> d!133327 (= (contains!6989 (+!4003 lt!549772 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934) lt!549946)))

(declare-fun b!1211014 () Bool)

(declare-fun lt!549944 () Unit!40056)

(assert (=> b!1211014 (= e!687795 lt!549944)))

(assert (=> b!1211014 (= lt!549944 (lemmaContainsKeyImpliesGetValueByKeyDefined!425 (toList!8976 (+!4003 lt!549772 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(assert (=> b!1211014 (isDefined!465 (getValueByKey!642 (toList!8976 (+!4003 lt!549772 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun b!1211015 () Bool)

(declare-fun Unit!40066 () Unit!40056)

(assert (=> b!1211015 (= e!687795 Unit!40066)))

(declare-fun b!1211016 () Bool)

(assert (=> b!1211016 (= e!687796 (isDefined!465 (getValueByKey!642 (toList!8976 (+!4003 lt!549772 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934)))))

(assert (= (and d!133327 c!119342) b!1211014))

(assert (= (and d!133327 (not c!119342)) b!1211015))

(assert (= (and d!133327 (not res!804653)) b!1211016))

(declare-fun m!1116555 () Bool)

(assert (=> d!133327 m!1116555))

(declare-fun m!1116557 () Bool)

(assert (=> b!1211014 m!1116557))

(declare-fun m!1116559 () Bool)

(assert (=> b!1211014 m!1116559))

(assert (=> b!1211014 m!1116559))

(declare-fun m!1116561 () Bool)

(assert (=> b!1211014 m!1116561))

(assert (=> b!1211016 m!1116559))

(assert (=> b!1211016 m!1116559))

(assert (=> b!1211016 m!1116561))

(assert (=> b!1210777 d!133327))

(declare-fun d!133329 () Bool)

(declare-fun e!687797 () Bool)

(assert (=> d!133329 e!687797))

(declare-fun res!804654 () Bool)

(assert (=> d!133329 (=> (not res!804654) (not e!687797))))

(declare-fun lt!549949 () ListLongMap!17921)

(assert (=> d!133329 (= res!804654 (contains!6989 lt!549949 (_1!9980 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lt!549948 () List!26759)

(assert (=> d!133329 (= lt!549949 (ListLongMap!17922 lt!549948))))

(declare-fun lt!549950 () Unit!40056)

(declare-fun lt!549951 () Unit!40056)

(assert (=> d!133329 (= lt!549950 lt!549951)))

(assert (=> d!133329 (= (getValueByKey!642 lt!549948 (_1!9980 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!692 (_2!9980 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!133329 (= lt!549951 (lemmaContainsTupThenGetReturnValue!317 lt!549948 (_1!9980 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9980 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!133329 (= lt!549948 (insertStrictlySorted!409 (toList!8976 lt!549772) (_1!9980 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9980 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!133329 (= (+!4003 lt!549772 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) lt!549949)))

(declare-fun b!1211017 () Bool)

(declare-fun res!804655 () Bool)

(assert (=> b!1211017 (=> (not res!804655) (not e!687797))))

(assert (=> b!1211017 (= res!804655 (= (getValueByKey!642 (toList!8976 lt!549949) (_1!9980 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!692 (_2!9980 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1211018 () Bool)

(assert (=> b!1211018 (= e!687797 (contains!6991 (toList!8976 lt!549949) (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(assert (= (and d!133329 res!804654) b!1211017))

(assert (= (and b!1211017 res!804655) b!1211018))

(declare-fun m!1116563 () Bool)

(assert (=> d!133329 m!1116563))

(declare-fun m!1116565 () Bool)

(assert (=> d!133329 m!1116565))

(declare-fun m!1116567 () Bool)

(assert (=> d!133329 m!1116567))

(declare-fun m!1116569 () Bool)

(assert (=> d!133329 m!1116569))

(declare-fun m!1116571 () Bool)

(assert (=> b!1211017 m!1116571))

(declare-fun m!1116573 () Bool)

(assert (=> b!1211018 m!1116573))

(assert (=> b!1210777 d!133329))

(declare-fun d!133331 () Bool)

(assert (=> d!133331 (contains!6989 (+!4003 lt!549772 (tuple2!19941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!549954 () Unit!40056)

(declare-fun choose!1823 (ListLongMap!17921 (_ BitVec 64) V!46099 (_ BitVec 64)) Unit!40056)

(assert (=> d!133331 (= lt!549954 (choose!1823 lt!549772 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> d!133331 (contains!6989 lt!549772 k0!934)))

(assert (=> d!133331 (= (addStillContains!1065 lt!549772 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934) lt!549954)))

(declare-fun bs!34192 () Bool)

(assert (= bs!34192 d!133331))

(assert (=> bs!34192 m!1116261))

(assert (=> bs!34192 m!1116261))

(assert (=> bs!34192 m!1116263))

(declare-fun m!1116575 () Bool)

(assert (=> bs!34192 m!1116575))

(declare-fun m!1116577 () Bool)

(assert (=> bs!34192 m!1116577))

(assert (=> b!1210777 d!133331))

(declare-fun d!133333 () Bool)

(assert (=> d!133333 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1210769 d!133333))

(declare-fun d!133335 () Bool)

(assert (=> d!133335 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1210775 d!133335))

(declare-fun d!133337 () Bool)

(assert (=> d!133337 (contains!6989 (+!4003 lt!549781 (tuple2!19941 (ite (or c!119286 c!119284) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119286 c!119284) zeroValue!944 minValue!944))) k0!934)))

(declare-fun lt!549955 () Unit!40056)

(assert (=> d!133337 (= lt!549955 (choose!1823 lt!549781 (ite (or c!119286 c!119284) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119286 c!119284) zeroValue!944 minValue!944) k0!934))))

(assert (=> d!133337 (contains!6989 lt!549781 k0!934)))

(assert (=> d!133337 (= (addStillContains!1065 lt!549781 (ite (or c!119286 c!119284) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119286 c!119284) zeroValue!944 minValue!944) k0!934) lt!549955)))

(declare-fun bs!34193 () Bool)

(assert (= bs!34193 d!133337))

(declare-fun m!1116579 () Bool)

(assert (=> bs!34193 m!1116579))

(assert (=> bs!34193 m!1116579))

(declare-fun m!1116581 () Bool)

(assert (=> bs!34193 m!1116581))

(declare-fun m!1116583 () Bool)

(assert (=> bs!34193 m!1116583))

(assert (=> bs!34193 m!1116277))

(assert (=> bm!59738 d!133337))

(declare-fun b!1211020 () Bool)

(declare-fun e!687803 () ListLongMap!17921)

(assert (=> b!1211020 (= e!687803 (ListLongMap!17922 Nil!26756))))

(declare-fun d!133339 () Bool)

(declare-fun e!687799 () Bool)

(assert (=> d!133339 e!687799))

(declare-fun res!804658 () Bool)

(assert (=> d!133339 (=> (not res!804658) (not e!687799))))

(declare-fun lt!549956 () ListLongMap!17921)

(assert (=> d!133339 (= res!804658 (not (contains!6989 lt!549956 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133339 (= lt!549956 e!687803)))

(declare-fun c!119343 () Bool)

(assert (=> d!133339 (= c!119343 (bvsge from!1455 (size!38277 lt!549784)))))

(assert (=> d!133339 (validMask!0 mask!1564)))

(assert (=> d!133339 (= (getCurrentListMapNoExtraKeys!5381 lt!549784 lt!549768 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!549956)))

(declare-fun b!1211021 () Bool)

(declare-fun e!687801 () Bool)

(assert (=> b!1211021 (= e!687801 (isEmpty!995 lt!549956))))

(declare-fun b!1211022 () Bool)

(declare-fun e!687800 () Bool)

(assert (=> b!1211022 (= e!687799 e!687800)))

(declare-fun c!119345 () Bool)

(declare-fun e!687798 () Bool)

(assert (=> b!1211022 (= c!119345 e!687798)))

(declare-fun res!804656 () Bool)

(assert (=> b!1211022 (=> (not res!804656) (not e!687798))))

(assert (=> b!1211022 (= res!804656 (bvslt from!1455 (size!38277 lt!549784)))))

(declare-fun b!1211023 () Bool)

(declare-fun e!687804 () Bool)

(assert (=> b!1211023 (= e!687800 e!687804)))

(assert (=> b!1211023 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38277 lt!549784)))))

(declare-fun res!804657 () Bool)

(assert (=> b!1211023 (= res!804657 (contains!6989 lt!549956 (select (arr!37740 lt!549784) from!1455)))))

(assert (=> b!1211023 (=> (not res!804657) (not e!687804))))

(declare-fun b!1211024 () Bool)

(declare-fun res!804659 () Bool)

(assert (=> b!1211024 (=> (not res!804659) (not e!687799))))

(assert (=> b!1211024 (= res!804659 (not (contains!6989 lt!549956 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1211025 () Bool)

(assert (=> b!1211025 (= e!687801 (= lt!549956 (getCurrentListMapNoExtraKeys!5381 lt!549784 lt!549768 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun call!59789 () ListLongMap!17921)

(declare-fun bm!59786 () Bool)

(assert (=> bm!59786 (= call!59789 (getCurrentListMapNoExtraKeys!5381 lt!549784 lt!549768 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1211026 () Bool)

(assert (=> b!1211026 (= e!687800 e!687801)))

(declare-fun c!119346 () Bool)

(assert (=> b!1211026 (= c!119346 (bvslt from!1455 (size!38277 lt!549784)))))

(declare-fun b!1211027 () Bool)

(declare-fun e!687802 () ListLongMap!17921)

(assert (=> b!1211027 (= e!687803 e!687802)))

(declare-fun c!119344 () Bool)

(assert (=> b!1211027 (= c!119344 (validKeyInArray!0 (select (arr!37740 lt!549784) from!1455)))))

(declare-fun b!1211028 () Bool)

(declare-fun lt!549961 () Unit!40056)

(declare-fun lt!549957 () Unit!40056)

(assert (=> b!1211028 (= lt!549961 lt!549957)))

(declare-fun lt!549960 () (_ BitVec 64))

(declare-fun lt!549962 () ListLongMap!17921)

(declare-fun lt!549958 () (_ BitVec 64))

(declare-fun lt!549959 () V!46099)

(assert (=> b!1211028 (not (contains!6989 (+!4003 lt!549962 (tuple2!19941 lt!549960 lt!549959)) lt!549958))))

(assert (=> b!1211028 (= lt!549957 (addStillNotContains!298 lt!549962 lt!549960 lt!549959 lt!549958))))

(assert (=> b!1211028 (= lt!549958 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1211028 (= lt!549959 (get!19272 (select (arr!37741 lt!549768) from!1455) (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1211028 (= lt!549960 (select (arr!37740 lt!549784) from!1455))))

(assert (=> b!1211028 (= lt!549962 call!59789)))

(assert (=> b!1211028 (= e!687802 (+!4003 call!59789 (tuple2!19941 (select (arr!37740 lt!549784) from!1455) (get!19272 (select (arr!37741 lt!549768) from!1455) (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1211029 () Bool)

(assert (=> b!1211029 (= e!687802 call!59789)))

(declare-fun b!1211030 () Bool)

(assert (=> b!1211030 (= e!687798 (validKeyInArray!0 (select (arr!37740 lt!549784) from!1455)))))

(assert (=> b!1211030 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1211031 () Bool)

(assert (=> b!1211031 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38277 lt!549784)))))

(assert (=> b!1211031 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38278 lt!549768)))))

(assert (=> b!1211031 (= e!687804 (= (apply!1003 lt!549956 (select (arr!37740 lt!549784) from!1455)) (get!19272 (select (arr!37741 lt!549768) from!1455) (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!133339 c!119343) b!1211020))

(assert (= (and d!133339 (not c!119343)) b!1211027))

(assert (= (and b!1211027 c!119344) b!1211028))

(assert (= (and b!1211027 (not c!119344)) b!1211029))

(assert (= (or b!1211028 b!1211029) bm!59786))

(assert (= (and d!133339 res!804658) b!1211024))

(assert (= (and b!1211024 res!804659) b!1211022))

(assert (= (and b!1211022 res!804656) b!1211030))

(assert (= (and b!1211022 c!119345) b!1211023))

(assert (= (and b!1211022 (not c!119345)) b!1211026))

(assert (= (and b!1211023 res!804657) b!1211031))

(assert (= (and b!1211026 c!119346) b!1211025))

(assert (= (and b!1211026 (not c!119346)) b!1211021))

(declare-fun b_lambda!21651 () Bool)

(assert (=> (not b_lambda!21651) (not b!1211028)))

(assert (=> b!1211028 t!39770))

(declare-fun b_and!43159 () Bool)

(assert (= b_and!43157 (and (=> t!39770 result!22251) b_and!43159)))

(declare-fun b_lambda!21653 () Bool)

(assert (=> (not b_lambda!21653) (not b!1211031)))

(assert (=> b!1211031 t!39770))

(declare-fun b_and!43161 () Bool)

(assert (= b_and!43159 (and (=> t!39770 result!22251) b_and!43161)))

(declare-fun m!1116585 () Bool)

(assert (=> b!1211027 m!1116585))

(assert (=> b!1211027 m!1116585))

(declare-fun m!1116587 () Bool)

(assert (=> b!1211027 m!1116587))

(declare-fun m!1116589 () Bool)

(assert (=> b!1211024 m!1116589))

(declare-fun m!1116591 () Bool)

(assert (=> b!1211025 m!1116591))

(assert (=> b!1211030 m!1116585))

(assert (=> b!1211030 m!1116585))

(assert (=> b!1211030 m!1116587))

(declare-fun m!1116593 () Bool)

(assert (=> d!133339 m!1116593))

(assert (=> d!133339 m!1116247))

(assert (=> bm!59786 m!1116591))

(assert (=> b!1211023 m!1116585))

(assert (=> b!1211023 m!1116585))

(declare-fun m!1116595 () Bool)

(assert (=> b!1211023 m!1116595))

(assert (=> b!1211028 m!1116303))

(declare-fun m!1116597 () Bool)

(assert (=> b!1211028 m!1116597))

(declare-fun m!1116599 () Bool)

(assert (=> b!1211028 m!1116599))

(assert (=> b!1211028 m!1116597))

(declare-fun m!1116601 () Bool)

(assert (=> b!1211028 m!1116601))

(assert (=> b!1211028 m!1116599))

(assert (=> b!1211028 m!1116303))

(declare-fun m!1116603 () Bool)

(assert (=> b!1211028 m!1116603))

(declare-fun m!1116605 () Bool)

(assert (=> b!1211028 m!1116605))

(assert (=> b!1211028 m!1116585))

(declare-fun m!1116607 () Bool)

(assert (=> b!1211028 m!1116607))

(declare-fun m!1116609 () Bool)

(assert (=> b!1211021 m!1116609))

(assert (=> b!1211031 m!1116303))

(assert (=> b!1211031 m!1116599))

(assert (=> b!1211031 m!1116599))

(assert (=> b!1211031 m!1116303))

(assert (=> b!1211031 m!1116603))

(assert (=> b!1211031 m!1116585))

(assert (=> b!1211031 m!1116585))

(declare-fun m!1116611 () Bool)

(assert (=> b!1211031 m!1116611))

(assert (=> b!1210767 d!133339))

(declare-fun b!1211032 () Bool)

(declare-fun e!687810 () ListLongMap!17921)

(assert (=> b!1211032 (= e!687810 (ListLongMap!17922 Nil!26756))))

(declare-fun d!133341 () Bool)

(declare-fun e!687806 () Bool)

(assert (=> d!133341 e!687806))

(declare-fun res!804662 () Bool)

(assert (=> d!133341 (=> (not res!804662) (not e!687806))))

(declare-fun lt!549963 () ListLongMap!17921)

(assert (=> d!133341 (= res!804662 (not (contains!6989 lt!549963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133341 (= lt!549963 e!687810)))

(declare-fun c!119347 () Bool)

(assert (=> d!133341 (= c!119347 (bvsge from!1455 (size!38277 _keys!1208)))))

(assert (=> d!133341 (validMask!0 mask!1564)))

(assert (=> d!133341 (= (getCurrentListMapNoExtraKeys!5381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!549963)))

(declare-fun b!1211033 () Bool)

(declare-fun e!687808 () Bool)

(assert (=> b!1211033 (= e!687808 (isEmpty!995 lt!549963))))

(declare-fun b!1211034 () Bool)

(declare-fun e!687807 () Bool)

(assert (=> b!1211034 (= e!687806 e!687807)))

(declare-fun c!119349 () Bool)

(declare-fun e!687805 () Bool)

(assert (=> b!1211034 (= c!119349 e!687805)))

(declare-fun res!804660 () Bool)

(assert (=> b!1211034 (=> (not res!804660) (not e!687805))))

(assert (=> b!1211034 (= res!804660 (bvslt from!1455 (size!38277 _keys!1208)))))

(declare-fun b!1211035 () Bool)

(declare-fun e!687811 () Bool)

(assert (=> b!1211035 (= e!687807 e!687811)))

(assert (=> b!1211035 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38277 _keys!1208)))))

(declare-fun res!804661 () Bool)

(assert (=> b!1211035 (= res!804661 (contains!6989 lt!549963 (select (arr!37740 _keys!1208) from!1455)))))

(assert (=> b!1211035 (=> (not res!804661) (not e!687811))))

(declare-fun b!1211036 () Bool)

(declare-fun res!804663 () Bool)

(assert (=> b!1211036 (=> (not res!804663) (not e!687806))))

(assert (=> b!1211036 (= res!804663 (not (contains!6989 lt!549963 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1211037 () Bool)

(assert (=> b!1211037 (= e!687808 (= lt!549963 (getCurrentListMapNoExtraKeys!5381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun bm!59787 () Bool)

(declare-fun call!59790 () ListLongMap!17921)

(assert (=> bm!59787 (= call!59790 (getCurrentListMapNoExtraKeys!5381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1211038 () Bool)

(assert (=> b!1211038 (= e!687807 e!687808)))

(declare-fun c!119350 () Bool)

(assert (=> b!1211038 (= c!119350 (bvslt from!1455 (size!38277 _keys!1208)))))

(declare-fun b!1211039 () Bool)

(declare-fun e!687809 () ListLongMap!17921)

(assert (=> b!1211039 (= e!687810 e!687809)))

(declare-fun c!119348 () Bool)

(assert (=> b!1211039 (= c!119348 (validKeyInArray!0 (select (arr!37740 _keys!1208) from!1455)))))

(declare-fun b!1211040 () Bool)

(declare-fun lt!549968 () Unit!40056)

(declare-fun lt!549964 () Unit!40056)

(assert (=> b!1211040 (= lt!549968 lt!549964)))

(declare-fun lt!549967 () (_ BitVec 64))

(declare-fun lt!549966 () V!46099)

(declare-fun lt!549965 () (_ BitVec 64))

(declare-fun lt!549969 () ListLongMap!17921)

(assert (=> b!1211040 (not (contains!6989 (+!4003 lt!549969 (tuple2!19941 lt!549967 lt!549966)) lt!549965))))

(assert (=> b!1211040 (= lt!549964 (addStillNotContains!298 lt!549969 lt!549967 lt!549966 lt!549965))))

(assert (=> b!1211040 (= lt!549965 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1211040 (= lt!549966 (get!19272 (select (arr!37741 _values!996) from!1455) (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1211040 (= lt!549967 (select (arr!37740 _keys!1208) from!1455))))

(assert (=> b!1211040 (= lt!549969 call!59790)))

(assert (=> b!1211040 (= e!687809 (+!4003 call!59790 (tuple2!19941 (select (arr!37740 _keys!1208) from!1455) (get!19272 (select (arr!37741 _values!996) from!1455) (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1211041 () Bool)

(assert (=> b!1211041 (= e!687809 call!59790)))

(declare-fun b!1211042 () Bool)

(assert (=> b!1211042 (= e!687805 (validKeyInArray!0 (select (arr!37740 _keys!1208) from!1455)))))

(assert (=> b!1211042 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1211043 () Bool)

(assert (=> b!1211043 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38277 _keys!1208)))))

(assert (=> b!1211043 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38278 _values!996)))))

(assert (=> b!1211043 (= e!687811 (= (apply!1003 lt!549963 (select (arr!37740 _keys!1208) from!1455)) (get!19272 (select (arr!37741 _values!996) from!1455) (dynLambda!3296 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!133341 c!119347) b!1211032))

(assert (= (and d!133341 (not c!119347)) b!1211039))

(assert (= (and b!1211039 c!119348) b!1211040))

(assert (= (and b!1211039 (not c!119348)) b!1211041))

(assert (= (or b!1211040 b!1211041) bm!59787))

(assert (= (and d!133341 res!804662) b!1211036))

(assert (= (and b!1211036 res!804663) b!1211034))

(assert (= (and b!1211034 res!804660) b!1211042))

(assert (= (and b!1211034 c!119349) b!1211035))

(assert (= (and b!1211034 (not c!119349)) b!1211038))

(assert (= (and b!1211035 res!804661) b!1211043))

(assert (= (and b!1211038 c!119350) b!1211037))

(assert (= (and b!1211038 (not c!119350)) b!1211033))

(declare-fun b_lambda!21655 () Bool)

(assert (=> (not b_lambda!21655) (not b!1211040)))

(assert (=> b!1211040 t!39770))

(declare-fun b_and!43163 () Bool)

(assert (= b_and!43161 (and (=> t!39770 result!22251) b_and!43163)))

(declare-fun b_lambda!21657 () Bool)

(assert (=> (not b_lambda!21657) (not b!1211043)))

(assert (=> b!1211043 t!39770))

(declare-fun b_and!43165 () Bool)

(assert (= b_and!43163 (and (=> t!39770 result!22251) b_and!43165)))

(assert (=> b!1211039 m!1116257))

(assert (=> b!1211039 m!1116257))

(assert (=> b!1211039 m!1116549))

(declare-fun m!1116613 () Bool)

(assert (=> b!1211036 m!1116613))

(declare-fun m!1116615 () Bool)

(assert (=> b!1211037 m!1116615))

(assert (=> b!1211042 m!1116257))

(assert (=> b!1211042 m!1116257))

(assert (=> b!1211042 m!1116549))

(declare-fun m!1116617 () Bool)

(assert (=> d!133341 m!1116617))

(assert (=> d!133341 m!1116247))

(assert (=> bm!59787 m!1116615))

(assert (=> b!1211035 m!1116257))

(assert (=> b!1211035 m!1116257))

(declare-fun m!1116619 () Bool)

(assert (=> b!1211035 m!1116619))

(assert (=> b!1211040 m!1116303))

(declare-fun m!1116621 () Bool)

(assert (=> b!1211040 m!1116621))

(assert (=> b!1211040 m!1116275))

(assert (=> b!1211040 m!1116621))

(declare-fun m!1116623 () Bool)

(assert (=> b!1211040 m!1116623))

(assert (=> b!1211040 m!1116275))

(assert (=> b!1211040 m!1116303))

(declare-fun m!1116625 () Bool)

(assert (=> b!1211040 m!1116625))

(declare-fun m!1116627 () Bool)

(assert (=> b!1211040 m!1116627))

(assert (=> b!1211040 m!1116257))

(declare-fun m!1116629 () Bool)

(assert (=> b!1211040 m!1116629))

(declare-fun m!1116631 () Bool)

(assert (=> b!1211033 m!1116631))

(assert (=> b!1211043 m!1116303))

(assert (=> b!1211043 m!1116275))

(assert (=> b!1211043 m!1116275))

(assert (=> b!1211043 m!1116303))

(assert (=> b!1211043 m!1116625))

(assert (=> b!1211043 m!1116257))

(assert (=> b!1211043 m!1116257))

(declare-fun m!1116633 () Bool)

(assert (=> b!1211043 m!1116633))

(assert (=> b!1210767 d!133341))

(declare-fun bm!59788 () Bool)

(declare-fun call!59791 () Bool)

(declare-fun c!119351 () Bool)

(assert (=> bm!59788 (= call!59791 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!119351 (Cons!26756 (select (arr!37740 _keys!1208) #b00000000000000000000000000000000) Nil!26757) Nil!26757)))))

(declare-fun d!133343 () Bool)

(declare-fun res!804666 () Bool)

(declare-fun e!687812 () Bool)

(assert (=> d!133343 (=> res!804666 e!687812)))

(assert (=> d!133343 (= res!804666 (bvsge #b00000000000000000000000000000000 (size!38277 _keys!1208)))))

(assert (=> d!133343 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26757) e!687812)))

(declare-fun b!1211044 () Bool)

(declare-fun e!687815 () Bool)

(declare-fun e!687813 () Bool)

(assert (=> b!1211044 (= e!687815 e!687813)))

(assert (=> b!1211044 (= c!119351 (validKeyInArray!0 (select (arr!37740 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1211045 () Bool)

(assert (=> b!1211045 (= e!687813 call!59791)))

(declare-fun b!1211046 () Bool)

(assert (=> b!1211046 (= e!687813 call!59791)))

(declare-fun b!1211047 () Bool)

(assert (=> b!1211047 (= e!687812 e!687815)))

(declare-fun res!804664 () Bool)

(assert (=> b!1211047 (=> (not res!804664) (not e!687815))))

(declare-fun e!687814 () Bool)

(assert (=> b!1211047 (= res!804664 (not e!687814))))

(declare-fun res!804665 () Bool)

(assert (=> b!1211047 (=> (not res!804665) (not e!687814))))

(assert (=> b!1211047 (= res!804665 (validKeyInArray!0 (select (arr!37740 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1211048 () Bool)

(assert (=> b!1211048 (= e!687814 (contains!6992 Nil!26757 (select (arr!37740 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!133343 (not res!804666)) b!1211047))

(assert (= (and b!1211047 res!804665) b!1211048))

(assert (= (and b!1211047 res!804664) b!1211044))

(assert (= (and b!1211044 c!119351) b!1211045))

(assert (= (and b!1211044 (not c!119351)) b!1211046))

(assert (= (or b!1211045 b!1211046) bm!59788))

(assert (=> bm!59788 m!1116401))

(declare-fun m!1116635 () Bool)

(assert (=> bm!59788 m!1116635))

(assert (=> b!1211044 m!1116401))

(assert (=> b!1211044 m!1116401))

(assert (=> b!1211044 m!1116403))

(assert (=> b!1211047 m!1116401))

(assert (=> b!1211047 m!1116401))

(assert (=> b!1211047 m!1116403))

(assert (=> b!1211048 m!1116401))

(assert (=> b!1211048 m!1116401))

(declare-fun m!1116637 () Bool)

(assert (=> b!1211048 m!1116637))

(assert (=> b!1210783 d!133343))

(declare-fun d!133345 () Bool)

(declare-fun lt!549970 () ListLongMap!17921)

(assert (=> d!133345 (not (contains!6989 lt!549970 k0!934))))

(assert (=> d!133345 (= lt!549970 (ListLongMap!17922 (removeStrictlySorted!102 (toList!8976 call!59739) k0!934)))))

(assert (=> d!133345 (= (-!1874 call!59739 k0!934) lt!549970)))

(declare-fun bs!34194 () Bool)

(assert (= bs!34194 d!133345))

(declare-fun m!1116639 () Bool)

(assert (=> bs!34194 m!1116639))

(declare-fun m!1116641 () Bool)

(assert (=> bs!34194 m!1116641))

(assert (=> b!1210776 d!133345))

(declare-fun b!1211056 () Bool)

(declare-fun e!687821 () Bool)

(assert (=> b!1211056 (= e!687821 tp_is_empty!30729)))

(declare-fun mapNonEmpty!47968 () Bool)

(declare-fun mapRes!47968 () Bool)

(declare-fun tp!91101 () Bool)

(declare-fun e!687820 () Bool)

(assert (=> mapNonEmpty!47968 (= mapRes!47968 (and tp!91101 e!687820))))

(declare-fun mapKey!47968 () (_ BitVec 32))

(declare-fun mapRest!47968 () (Array (_ BitVec 32) ValueCell!14655))

(declare-fun mapValue!47968 () ValueCell!14655)

(assert (=> mapNonEmpty!47968 (= mapRest!47962 (store mapRest!47968 mapKey!47968 mapValue!47968))))

(declare-fun b!1211055 () Bool)

(assert (=> b!1211055 (= e!687820 tp_is_empty!30729)))

(declare-fun condMapEmpty!47968 () Bool)

(declare-fun mapDefault!47968 () ValueCell!14655)

(assert (=> mapNonEmpty!47962 (= condMapEmpty!47968 (= mapRest!47962 ((as const (Array (_ BitVec 32) ValueCell!14655)) mapDefault!47968)))))

(assert (=> mapNonEmpty!47962 (= tp!91091 (and e!687821 mapRes!47968))))

(declare-fun mapIsEmpty!47968 () Bool)

(assert (=> mapIsEmpty!47968 mapRes!47968))

(assert (= (and mapNonEmpty!47962 condMapEmpty!47968) mapIsEmpty!47968))

(assert (= (and mapNonEmpty!47962 (not condMapEmpty!47968)) mapNonEmpty!47968))

(assert (= (and mapNonEmpty!47968 ((_ is ValueCellFull!14655) mapValue!47968)) b!1211055))

(assert (= (and mapNonEmpty!47962 ((_ is ValueCellFull!14655) mapDefault!47968)) b!1211056))

(declare-fun m!1116643 () Bool)

(assert (=> mapNonEmpty!47968 m!1116643))

(declare-fun b_lambda!21659 () Bool)

(assert (= b_lambda!21651 (or (and start!101062 b_free!26025) b_lambda!21659)))

(declare-fun b_lambda!21661 () Bool)

(assert (= b_lambda!21641 (or (and start!101062 b_free!26025) b_lambda!21661)))

(declare-fun b_lambda!21663 () Bool)

(assert (= b_lambda!21655 (or (and start!101062 b_free!26025) b_lambda!21663)))

(declare-fun b_lambda!21665 () Bool)

(assert (= b_lambda!21645 (or (and start!101062 b_free!26025) b_lambda!21665)))

(declare-fun b_lambda!21667 () Bool)

(assert (= b_lambda!21643 (or (and start!101062 b_free!26025) b_lambda!21667)))

(declare-fun b_lambda!21669 () Bool)

(assert (= b_lambda!21647 (or (and start!101062 b_free!26025) b_lambda!21669)))

(declare-fun b_lambda!21671 () Bool)

(assert (= b_lambda!21657 (or (and start!101062 b_free!26025) b_lambda!21671)))

(declare-fun b_lambda!21673 () Bool)

(assert (= b_lambda!21653 (or (and start!101062 b_free!26025) b_lambda!21673)))

(declare-fun b_lambda!21675 () Bool)

(assert (= b_lambda!21649 (or (and start!101062 b_free!26025) b_lambda!21675)))

(check-sat (not b!1210949) (not d!133299) (not b!1211033) (not b!1211047) (not b!1210916) tp_is_empty!30729 (not b!1210966) (not bm!59788) (not d!133321) (not b!1211012) (not b_lambda!21671) (not bm!59780) (not b!1211030) (not b!1210917) (not d!133345) (not b!1210951) (not b!1211044) (not b!1210958) (not b!1211007) (not b!1211002) (not b!1210971) (not d!133339) (not d!133287) (not b!1210992) (not b!1211040) (not bm!59787) (not b!1210984) (not bm!59785) (not mapNonEmpty!47968) (not b!1211027) (not b!1211014) (not b!1211031) (not b!1211037) (not b_lambda!21661) (not b!1210956) (not b_next!26025) (not b!1211000) (not d!133331) (not b!1211017) (not d!133329) (not bm!59771) (not b!1211048) (not d!133341) (not b!1210987) b_and!43165 (not b_lambda!21665) (not b!1210994) (not b!1211035) (not b!1210895) (not b!1210996) (not b!1211024) (not b!1211042) (not b!1210993) (not d!133305) (not d!133327) (not bm!59770) (not b_lambda!21673) (not bm!59777) (not b!1210952) (not bm!59776) (not b!1210968) (not b!1211021) (not d!133291) (not d!133311) (not b!1210999) (not b_lambda!21659) (not b!1210970) (not b!1210955) (not b!1211043) (not b!1210890) (not b!1211039) (not b!1210922) (not bm!59786) (not b!1210990) (not b_lambda!21663) (not b!1210923) (not b_lambda!21675) (not b!1211036) (not bm!59784) (not b!1211016) (not d!133307) (not b!1210988) (not d!133297) (not b!1210953) (not b!1210910) (not b!1211023) (not b_lambda!21669) (not b!1211013) (not d!133301) (not d!133337) (not b!1211028) (not b!1210959) (not b!1210894) (not d!133295) (not b!1210997) (not b!1211001) (not b!1211009) (not bm!59783) (not d!133289) (not b!1210973) (not b_lambda!21667) (not b!1210902) (not d!133317) (not b!1210891) (not b!1211025) (not b_lambda!21639) (not b!1211018) (not d!133313) (not d!133315))
(check-sat b_and!43165 (not b_next!26025))
