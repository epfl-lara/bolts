; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100752 () Bool)

(assert start!100752)

(declare-fun b_free!25917 () Bool)

(declare-fun b_next!25917 () Bool)

(assert (=> start!100752 (= b_free!25917 (not b_next!25917))))

(declare-fun tp!90751 () Bool)

(declare-fun b_and!42813 () Bool)

(assert (=> start!100752 (= tp!90751 b_and!42813)))

(declare-fun b!1204778 () Bool)

(declare-fun e!684209 () Bool)

(declare-fun e!684221 () Bool)

(assert (=> b!1204778 (= e!684209 e!684221)))

(declare-fun res!801551 () Bool)

(assert (=> b!1204778 (=> res!801551 e!684221)))

(declare-datatypes ((array!77998 0))(
  ( (array!77999 (arr!37637 (Array (_ BitVec 32) (_ BitVec 64))) (size!38174 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77998)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1204778 (= res!801551 (not (= (select (arr!37637 _keys!1208) from!1455) k0!934)))))

(declare-fun e!684208 () Bool)

(assert (=> b!1204778 e!684208))

(declare-fun c!118113 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1204778 (= c!118113 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!45955 0))(
  ( (V!45956 (val!15367 Int)) )
))
(declare-fun zeroValue!944 () V!45955)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14601 0))(
  ( (ValueCellFull!14601 (v!18011 V!45955)) (EmptyCell!14601) )
))
(declare-datatypes ((array!78000 0))(
  ( (array!78001 (arr!37638 (Array (_ BitVec 32) ValueCell!14601)) (size!38175 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78000)

(declare-fun minValue!944 () V!45955)

(declare-datatypes ((Unit!39870 0))(
  ( (Unit!39871) )
))
(declare-fun lt!546364 () Unit!39870)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1046 (array!77998 array!78000 (_ BitVec 32) (_ BitVec 32) V!45955 V!45955 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39870)

(assert (=> b!1204778 (= lt!546364 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1046 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204779 () Bool)

(declare-fun e!684217 () Unit!39870)

(declare-fun lt!546366 () Unit!39870)

(assert (=> b!1204779 (= e!684217 lt!546366)))

(declare-fun lt!546361 () Unit!39870)

(declare-datatypes ((tuple2!19842 0))(
  ( (tuple2!19843 (_1!9931 (_ BitVec 64)) (_2!9931 V!45955)) )
))
(declare-datatypes ((List!26669 0))(
  ( (Nil!26666) (Cons!26665 (h!27874 tuple2!19842) (t!39573 List!26669)) )
))
(declare-datatypes ((ListLongMap!17823 0))(
  ( (ListLongMap!17824 (toList!8927 List!26669)) )
))
(declare-fun lt!546359 () ListLongMap!17823)

(declare-fun addStillContains!1025 (ListLongMap!17823 (_ BitVec 64) V!45955 (_ BitVec 64)) Unit!39870)

(assert (=> b!1204779 (= lt!546361 (addStillContains!1025 lt!546359 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun lt!546365 () ListLongMap!17823)

(declare-fun +!3961 (ListLongMap!17823 tuple2!19842) ListLongMap!17823)

(assert (=> b!1204779 (= lt!546365 (+!3961 lt!546359 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!58314 () Bool)

(assert (=> b!1204779 call!58314))

(declare-fun call!58313 () Unit!39870)

(assert (=> b!1204779 (= lt!546366 call!58313)))

(declare-fun call!58317 () ListLongMap!17823)

(declare-fun contains!6931 (ListLongMap!17823 (_ BitVec 64)) Bool)

(assert (=> b!1204779 (contains!6931 call!58317 k0!934)))

(declare-fun b!1204780 () Bool)

(declare-fun res!801543 () Bool)

(declare-fun e!684220 () Bool)

(assert (=> b!1204780 (=> (not res!801543) (not e!684220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1204780 (= res!801543 (validKeyInArray!0 k0!934))))

(declare-fun call!58318 () ListLongMap!17823)

(declare-fun call!58312 () ListLongMap!17823)

(declare-fun b!1204781 () Bool)

(declare-fun -!1842 (ListLongMap!17823 (_ BitVec 64)) ListLongMap!17823)

(assert (=> b!1204781 (= e!684208 (= call!58318 (-!1842 call!58312 k0!934)))))

(declare-fun b!1204782 () Bool)

(declare-fun res!801553 () Bool)

(declare-fun e!684213 () Bool)

(assert (=> b!1204782 (=> (not res!801553) (not e!684213))))

(declare-fun lt!546358 () array!77998)

(declare-datatypes ((List!26670 0))(
  ( (Nil!26667) (Cons!26666 (h!27875 (_ BitVec 64)) (t!39574 List!26670)) )
))
(declare-fun arrayNoDuplicates!0 (array!77998 (_ BitVec 32) List!26670) Bool)

(assert (=> b!1204782 (= res!801553 (arrayNoDuplicates!0 lt!546358 #b00000000000000000000000000000000 Nil!26667))))

(declare-fun b!1204783 () Bool)

(assert (=> b!1204783 (= e!684220 e!684213)))

(declare-fun res!801540 () Bool)

(assert (=> b!1204783 (=> (not res!801540) (not e!684213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77998 (_ BitVec 32)) Bool)

(assert (=> b!1204783 (= res!801540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!546358 mask!1564))))

(assert (=> b!1204783 (= lt!546358 (array!77999 (store (arr!37637 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38174 _keys!1208)))))

(declare-fun b!1204784 () Bool)

(assert (=> b!1204784 (= e!684208 (= call!58318 call!58312))))

(declare-fun res!801544 () Bool)

(assert (=> start!100752 (=> (not res!801544) (not e!684220))))

(assert (=> start!100752 (= res!801544 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38174 _keys!1208))))))

(assert (=> start!100752 e!684220))

(declare-fun tp_is_empty!30621 () Bool)

(assert (=> start!100752 tp_is_empty!30621))

(declare-fun array_inv!28578 (array!77998) Bool)

(assert (=> start!100752 (array_inv!28578 _keys!1208)))

(assert (=> start!100752 true))

(assert (=> start!100752 tp!90751))

(declare-fun e!684210 () Bool)

(declare-fun array_inv!28579 (array!78000) Bool)

(assert (=> start!100752 (and (array_inv!28579 _values!996) e!684210)))

(declare-fun b!1204785 () Bool)

(declare-fun e!684219 () Unit!39870)

(assert (=> b!1204785 (= e!684217 e!684219)))

(declare-fun c!118110 () Bool)

(declare-fun lt!546356 () Bool)

(assert (=> b!1204785 (= c!118110 (and (not lt!546356) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1204786 () Bool)

(declare-fun e!684218 () Bool)

(assert (=> b!1204786 (= e!684218 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!546356) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1204787 () Bool)

(declare-fun e!684214 () Bool)

(declare-fun mapRes!47784 () Bool)

(assert (=> b!1204787 (= e!684210 (and e!684214 mapRes!47784))))

(declare-fun condMapEmpty!47784 () Bool)

(declare-fun mapDefault!47784 () ValueCell!14601)

(assert (=> b!1204787 (= condMapEmpty!47784 (= (arr!37638 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14601)) mapDefault!47784)))))

(declare-fun b!1204788 () Bool)

(declare-fun res!801552 () Bool)

(assert (=> b!1204788 (=> (not res!801552) (not e!684220))))

(assert (=> b!1204788 (= res!801552 (= (select (arr!37637 _keys!1208) i!673) k0!934))))

(declare-fun b!1204789 () Bool)

(declare-fun e!684215 () Bool)

(assert (=> b!1204789 (= e!684213 (not e!684215))))

(declare-fun res!801550 () Bool)

(assert (=> b!1204789 (=> res!801550 e!684215)))

(assert (=> b!1204789 (= res!801550 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77998 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1204789 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!546362 () Unit!39870)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77998 (_ BitVec 64) (_ BitVec 32)) Unit!39870)

(assert (=> b!1204789 (= lt!546362 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1204790 () Bool)

(declare-fun e!684207 () Unit!39870)

(declare-fun Unit!39872 () Unit!39870)

(assert (=> b!1204790 (= e!684207 Unit!39872)))

(declare-fun b!1204791 () Bool)

(declare-fun res!801545 () Bool)

(assert (=> b!1204791 (=> (not res!801545) (not e!684220))))

(assert (=> b!1204791 (= res!801545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1204792 () Bool)

(declare-fun call!58316 () Bool)

(assert (=> b!1204792 call!58316))

(declare-fun lt!546363 () Unit!39870)

(declare-fun call!58311 () Unit!39870)

(assert (=> b!1204792 (= lt!546363 call!58311)))

(assert (=> b!1204792 (= e!684219 lt!546363)))

(declare-fun b!1204793 () Bool)

(declare-fun res!801554 () Bool)

(assert (=> b!1204793 (=> (not res!801554) (not e!684220))))

(assert (=> b!1204793 (= res!801554 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26667))))

(declare-fun bm!58308 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5336 (array!77998 array!78000 (_ BitVec 32) (_ BitVec 32) V!45955 V!45955 (_ BitVec 32) Int) ListLongMap!17823)

(assert (=> bm!58308 (= call!58312 (getCurrentListMapNoExtraKeys!5336 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204794 () Bool)

(assert (=> b!1204794 (= e!684218 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1204795 () Bool)

(declare-fun e!684212 () Bool)

(assert (=> b!1204795 (= e!684221 e!684212)))

(declare-fun res!801549 () Bool)

(assert (=> b!1204795 (=> res!801549 e!684212)))

(assert (=> b!1204795 (= res!801549 (not (contains!6931 lt!546359 k0!934)))))

(assert (=> b!1204795 (= lt!546359 (getCurrentListMapNoExtraKeys!5336 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204796 () Bool)

(assert (=> b!1204796 (= e!684214 tp_is_empty!30621)))

(declare-fun c!118114 () Bool)

(declare-fun call!58315 () ListLongMap!17823)

(declare-fun bm!58309 () Bool)

(assert (=> bm!58309 (= call!58314 (contains!6931 (ite c!118114 lt!546365 call!58315) k0!934))))

(declare-fun b!1204797 () Bool)

(declare-fun res!801542 () Bool)

(assert (=> b!1204797 (=> (not res!801542) (not e!684220))))

(assert (=> b!1204797 (= res!801542 (and (= (size!38175 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38174 _keys!1208) (size!38175 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!47784 () Bool)

(assert (=> mapIsEmpty!47784 mapRes!47784))

(declare-fun bm!58310 () Bool)

(assert (=> bm!58310 (= call!58317 (+!3961 (ite c!118114 lt!546365 lt!546359) (ite c!118114 (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118110 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1204798 () Bool)

(declare-fun c!118112 () Bool)

(assert (=> b!1204798 (= c!118112 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!546356))))

(assert (=> b!1204798 (= e!684219 e!684207)))

(declare-fun b!1204799 () Bool)

(declare-fun lt!546367 () Unit!39870)

(assert (=> b!1204799 (= e!684207 lt!546367)))

(assert (=> b!1204799 (= lt!546367 call!58311)))

(assert (=> b!1204799 call!58316))

(declare-fun bm!58311 () Bool)

(assert (=> bm!58311 (= call!58311 call!58313)))

(declare-fun bm!58312 () Bool)

(assert (=> bm!58312 (= call!58316 call!58314)))

(declare-fun bm!58313 () Bool)

(declare-fun lt!546357 () array!78000)

(assert (=> bm!58313 (= call!58318 (getCurrentListMapNoExtraKeys!5336 lt!546358 lt!546357 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58314 () Bool)

(assert (=> bm!58314 (= call!58315 call!58317)))

(declare-fun b!1204800 () Bool)

(assert (=> b!1204800 (= e!684215 e!684209)))

(declare-fun res!801541 () Bool)

(assert (=> b!1204800 (=> res!801541 e!684209)))

(assert (=> b!1204800 (= res!801541 (not (= from!1455 i!673)))))

(declare-fun lt!546368 () ListLongMap!17823)

(assert (=> b!1204800 (= lt!546368 (getCurrentListMapNoExtraKeys!5336 lt!546358 lt!546357 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3258 (Int (_ BitVec 64)) V!45955)

(assert (=> b!1204800 (= lt!546357 (array!78001 (store (arr!37638 _values!996) i!673 (ValueCellFull!14601 (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38175 _values!996)))))

(declare-fun lt!546369 () ListLongMap!17823)

(assert (=> b!1204800 (= lt!546369 (getCurrentListMapNoExtraKeys!5336 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1204801 () Bool)

(declare-fun e!684211 () Bool)

(assert (=> b!1204801 (= e!684211 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!47784 () Bool)

(declare-fun tp!90752 () Bool)

(declare-fun e!684216 () Bool)

(assert (=> mapNonEmpty!47784 (= mapRes!47784 (and tp!90752 e!684216))))

(declare-fun mapValue!47784 () ValueCell!14601)

(declare-fun mapRest!47784 () (Array (_ BitVec 32) ValueCell!14601))

(declare-fun mapKey!47784 () (_ BitVec 32))

(assert (=> mapNonEmpty!47784 (= (arr!37638 _values!996) (store mapRest!47784 mapKey!47784 mapValue!47784))))

(declare-fun b!1204802 () Bool)

(assert (=> b!1204802 (= e!684216 tp_is_empty!30621)))

(declare-fun bm!58315 () Bool)

(assert (=> bm!58315 (= call!58313 (addStillContains!1025 (ite c!118114 lt!546365 lt!546359) (ite c!118114 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118110 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118114 minValue!944 (ite c!118110 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1204803 () Bool)

(declare-fun res!801546 () Bool)

(assert (=> b!1204803 (=> (not res!801546) (not e!684220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1204803 (= res!801546 (validMask!0 mask!1564))))

(declare-fun b!1204804 () Bool)

(declare-fun res!801548 () Bool)

(assert (=> b!1204804 (=> (not res!801548) (not e!684220))))

(assert (=> b!1204804 (= res!801548 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38174 _keys!1208))))))

(declare-fun b!1204805 () Bool)

(assert (=> b!1204805 (= e!684212 (bvslt (size!38174 _keys!1208) #b01111111111111111111111111111111))))

(assert (=> b!1204805 e!684211))

(declare-fun res!801547 () Bool)

(assert (=> b!1204805 (=> (not res!801547) (not e!684211))))

(assert (=> b!1204805 (= res!801547 e!684218)))

(declare-fun c!118111 () Bool)

(assert (=> b!1204805 (= c!118111 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!546360 () Unit!39870)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!565 (array!77998 array!78000 (_ BitVec 32) (_ BitVec 32) V!45955 V!45955 (_ BitVec 64) (_ BitVec 32) Int) Unit!39870)

(assert (=> b!1204805 (= lt!546360 (lemmaListMapContainsThenArrayContainsFrom!565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!546355 () Unit!39870)

(assert (=> b!1204805 (= lt!546355 e!684217)))

(assert (=> b!1204805 (= c!118114 (and (not lt!546356) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1204805 (= lt!546356 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (= (and start!100752 res!801544) b!1204803))

(assert (= (and b!1204803 res!801546) b!1204797))

(assert (= (and b!1204797 res!801542) b!1204791))

(assert (= (and b!1204791 res!801545) b!1204793))

(assert (= (and b!1204793 res!801554) b!1204804))

(assert (= (and b!1204804 res!801548) b!1204780))

(assert (= (and b!1204780 res!801543) b!1204788))

(assert (= (and b!1204788 res!801552) b!1204783))

(assert (= (and b!1204783 res!801540) b!1204782))

(assert (= (and b!1204782 res!801553) b!1204789))

(assert (= (and b!1204789 (not res!801550)) b!1204800))

(assert (= (and b!1204800 (not res!801541)) b!1204778))

(assert (= (and b!1204778 c!118113) b!1204781))

(assert (= (and b!1204778 (not c!118113)) b!1204784))

(assert (= (or b!1204781 b!1204784) bm!58313))

(assert (= (or b!1204781 b!1204784) bm!58308))

(assert (= (and b!1204778 (not res!801551)) b!1204795))

(assert (= (and b!1204795 (not res!801549)) b!1204805))

(assert (= (and b!1204805 c!118114) b!1204779))

(assert (= (and b!1204805 (not c!118114)) b!1204785))

(assert (= (and b!1204785 c!118110) b!1204792))

(assert (= (and b!1204785 (not c!118110)) b!1204798))

(assert (= (and b!1204798 c!118112) b!1204799))

(assert (= (and b!1204798 (not c!118112)) b!1204790))

(assert (= (or b!1204792 b!1204799) bm!58311))

(assert (= (or b!1204792 b!1204799) bm!58314))

(assert (= (or b!1204792 b!1204799) bm!58312))

(assert (= (or b!1204779 bm!58312) bm!58309))

(assert (= (or b!1204779 bm!58311) bm!58315))

(assert (= (or b!1204779 bm!58314) bm!58310))

(assert (= (and b!1204805 c!118111) b!1204794))

(assert (= (and b!1204805 (not c!118111)) b!1204786))

(assert (= (and b!1204805 res!801547) b!1204801))

(assert (= (and b!1204787 condMapEmpty!47784) mapIsEmpty!47784))

(assert (= (and b!1204787 (not condMapEmpty!47784)) mapNonEmpty!47784))

(get-info :version)

(assert (= (and mapNonEmpty!47784 ((_ is ValueCellFull!14601) mapValue!47784)) b!1204802))

(assert (= (and b!1204787 ((_ is ValueCellFull!14601) mapDefault!47784)) b!1204796))

(assert (= start!100752 b!1204787))

(declare-fun b_lambda!21293 () Bool)

(assert (=> (not b_lambda!21293) (not b!1204800)))

(declare-fun t!39572 () Bool)

(declare-fun tb!10725 () Bool)

(assert (=> (and start!100752 (= defaultEntry!1004 defaultEntry!1004) t!39572) tb!10725))

(declare-fun result!22025 () Bool)

(assert (=> tb!10725 (= result!22025 tp_is_empty!30621)))

(assert (=> b!1204800 t!39572))

(declare-fun b_and!42815 () Bool)

(assert (= b_and!42813 (and (=> t!39572 result!22025) b_and!42815)))

(declare-fun m!1110805 () Bool)

(assert (=> b!1204795 m!1110805))

(declare-fun m!1110807 () Bool)

(assert (=> b!1204795 m!1110807))

(declare-fun m!1110809 () Bool)

(assert (=> bm!58315 m!1110809))

(declare-fun m!1110811 () Bool)

(assert (=> b!1204794 m!1110811))

(declare-fun m!1110813 () Bool)

(assert (=> mapNonEmpty!47784 m!1110813))

(declare-fun m!1110815 () Bool)

(assert (=> b!1204791 m!1110815))

(declare-fun m!1110817 () Bool)

(assert (=> b!1204780 m!1110817))

(declare-fun m!1110819 () Bool)

(assert (=> b!1204783 m!1110819))

(declare-fun m!1110821 () Bool)

(assert (=> b!1204783 m!1110821))

(declare-fun m!1110823 () Bool)

(assert (=> b!1204793 m!1110823))

(assert (=> bm!58308 m!1110807))

(declare-fun m!1110825 () Bool)

(assert (=> b!1204803 m!1110825))

(declare-fun m!1110827 () Bool)

(assert (=> b!1204778 m!1110827))

(declare-fun m!1110829 () Bool)

(assert (=> b!1204778 m!1110829))

(declare-fun m!1110831 () Bool)

(assert (=> bm!58309 m!1110831))

(declare-fun m!1110833 () Bool)

(assert (=> start!100752 m!1110833))

(declare-fun m!1110835 () Bool)

(assert (=> start!100752 m!1110835))

(declare-fun m!1110837 () Bool)

(assert (=> b!1204800 m!1110837))

(declare-fun m!1110839 () Bool)

(assert (=> b!1204800 m!1110839))

(declare-fun m!1110841 () Bool)

(assert (=> b!1204800 m!1110841))

(declare-fun m!1110843 () Bool)

(assert (=> b!1204800 m!1110843))

(declare-fun m!1110845 () Bool)

(assert (=> b!1204788 m!1110845))

(declare-fun m!1110847 () Bool)

(assert (=> b!1204781 m!1110847))

(declare-fun m!1110849 () Bool)

(assert (=> b!1204789 m!1110849))

(declare-fun m!1110851 () Bool)

(assert (=> b!1204789 m!1110851))

(declare-fun m!1110853 () Bool)

(assert (=> b!1204782 m!1110853))

(declare-fun m!1110855 () Bool)

(assert (=> b!1204779 m!1110855))

(declare-fun m!1110857 () Bool)

(assert (=> b!1204779 m!1110857))

(declare-fun m!1110859 () Bool)

(assert (=> b!1204779 m!1110859))

(declare-fun m!1110861 () Bool)

(assert (=> b!1204805 m!1110861))

(declare-fun m!1110863 () Bool)

(assert (=> bm!58310 m!1110863))

(declare-fun m!1110865 () Bool)

(assert (=> bm!58313 m!1110865))

(assert (=> b!1204801 m!1110811))

(check-sat (not b!1204791) (not b!1204800) (not b!1204789) (not b!1204780) (not start!100752) (not b!1204778) (not bm!58310) b_and!42815 (not b!1204803) tp_is_empty!30621 (not bm!58309) (not b!1204782) (not bm!58308) (not bm!58315) (not b!1204801) (not bm!58313) (not b_lambda!21293) (not b!1204779) (not b!1204793) (not b_next!25917) (not b!1204795) (not b!1204783) (not b!1204781) (not b!1204805) (not mapNonEmpty!47784) (not b!1204794))
(check-sat b_and!42815 (not b_next!25917))
(get-model)

(declare-fun b_lambda!21297 () Bool)

(assert (= b_lambda!21293 (or (and start!100752 b_free!25917) b_lambda!21297)))

(check-sat (not b!1204791) (not b!1204800) (not b!1204789) (not b!1204780) (not start!100752) (not b!1204779) (not b!1204778) (not bm!58310) b_and!42815 (not b!1204803) tp_is_empty!30621 (not bm!58309) (not bm!58308) (not bm!58315) (not b!1204801) (not bm!58313) (not b!1204793) (not b_next!25917) (not b!1204795) (not b!1204783) (not b!1204781) (not b!1204805) (not mapNonEmpty!47784) (not b!1204794) (not b_lambda!21297) (not b!1204782))
(check-sat b_and!42815 (not b_next!25917))
(get-model)

(declare-fun d!132765 () Bool)

(declare-fun res!801604 () Bool)

(declare-fun e!684275 () Bool)

(assert (=> d!132765 (=> res!801604 e!684275)))

(assert (=> d!132765 (= res!801604 (= (select (arr!37637 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!132765 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!684275)))

(declare-fun b!1204898 () Bool)

(declare-fun e!684276 () Bool)

(assert (=> b!1204898 (= e!684275 e!684276)))

(declare-fun res!801605 () Bool)

(assert (=> b!1204898 (=> (not res!801605) (not e!684276))))

(assert (=> b!1204898 (= res!801605 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38174 _keys!1208)))))

(declare-fun b!1204899 () Bool)

(assert (=> b!1204899 (= e!684276 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!132765 (not res!801604)) b!1204898))

(assert (= (and b!1204898 res!801605) b!1204899))

(declare-fun m!1110929 () Bool)

(assert (=> d!132765 m!1110929))

(declare-fun m!1110931 () Bool)

(assert (=> b!1204899 m!1110931))

(assert (=> b!1204789 d!132765))

(declare-fun d!132767 () Bool)

(assert (=> d!132767 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!546417 () Unit!39870)

(declare-fun choose!13 (array!77998 (_ BitVec 64) (_ BitVec 32)) Unit!39870)

(assert (=> d!132767 (= lt!546417 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!132767 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!132767 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!546417)))

(declare-fun bs!34090 () Bool)

(assert (= bs!34090 d!132767))

(assert (=> bs!34090 m!1110849))

(declare-fun m!1110933 () Bool)

(assert (=> bs!34090 m!1110933))

(assert (=> b!1204789 d!132767))

(declare-fun d!132769 () Bool)

(assert (=> d!132769 (contains!6931 (+!3961 lt!546359 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!546420 () Unit!39870)

(declare-fun choose!1802 (ListLongMap!17823 (_ BitVec 64) V!45955 (_ BitVec 64)) Unit!39870)

(assert (=> d!132769 (= lt!546420 (choose!1802 lt!546359 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> d!132769 (contains!6931 lt!546359 k0!934)))

(assert (=> d!132769 (= (addStillContains!1025 lt!546359 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934) lt!546420)))

(declare-fun bs!34091 () Bool)

(assert (= bs!34091 d!132769))

(assert (=> bs!34091 m!1110857))

(assert (=> bs!34091 m!1110857))

(declare-fun m!1110935 () Bool)

(assert (=> bs!34091 m!1110935))

(declare-fun m!1110937 () Bool)

(assert (=> bs!34091 m!1110937))

(assert (=> bs!34091 m!1110805))

(assert (=> b!1204779 d!132769))

(declare-fun d!132771 () Bool)

(declare-fun e!684279 () Bool)

(assert (=> d!132771 e!684279))

(declare-fun res!801610 () Bool)

(assert (=> d!132771 (=> (not res!801610) (not e!684279))))

(declare-fun lt!546429 () ListLongMap!17823)

(assert (=> d!132771 (= res!801610 (contains!6931 lt!546429 (_1!9931 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun lt!546432 () List!26669)

(assert (=> d!132771 (= lt!546429 (ListLongMap!17824 lt!546432))))

(declare-fun lt!546431 () Unit!39870)

(declare-fun lt!546430 () Unit!39870)

(assert (=> d!132771 (= lt!546431 lt!546430)))

(declare-datatypes ((Option!688 0))(
  ( (Some!687 (v!18013 V!45955)) (None!686) )
))
(declare-fun getValueByKey!637 (List!26669 (_ BitVec 64)) Option!688)

(assert (=> d!132771 (= (getValueByKey!637 lt!546432 (_1!9931 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) (Some!687 (_2!9931 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun lemmaContainsTupThenGetReturnValue!312 (List!26669 (_ BitVec 64) V!45955) Unit!39870)

(assert (=> d!132771 (= lt!546430 (lemmaContainsTupThenGetReturnValue!312 lt!546432 (_1!9931 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9931 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun insertStrictlySorted!404 (List!26669 (_ BitVec 64) V!45955) List!26669)

(assert (=> d!132771 (= lt!546432 (insertStrictlySorted!404 (toList!8927 lt!546359) (_1!9931 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9931 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!132771 (= (+!3961 lt!546359 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) lt!546429)))

(declare-fun b!1204905 () Bool)

(declare-fun res!801611 () Bool)

(assert (=> b!1204905 (=> (not res!801611) (not e!684279))))

(assert (=> b!1204905 (= res!801611 (= (getValueByKey!637 (toList!8927 lt!546429) (_1!9931 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) (Some!687 (_2!9931 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(declare-fun b!1204906 () Bool)

(declare-fun contains!6932 (List!26669 tuple2!19842) Bool)

(assert (=> b!1204906 (= e!684279 (contains!6932 (toList!8927 lt!546429) (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (= (and d!132771 res!801610) b!1204905))

(assert (= (and b!1204905 res!801611) b!1204906))

(declare-fun m!1110939 () Bool)

(assert (=> d!132771 m!1110939))

(declare-fun m!1110941 () Bool)

(assert (=> d!132771 m!1110941))

(declare-fun m!1110943 () Bool)

(assert (=> d!132771 m!1110943))

(declare-fun m!1110945 () Bool)

(assert (=> d!132771 m!1110945))

(declare-fun m!1110947 () Bool)

(assert (=> b!1204905 m!1110947))

(declare-fun m!1110949 () Bool)

(assert (=> b!1204906 m!1110949))

(assert (=> b!1204779 d!132771))

(declare-fun d!132773 () Bool)

(declare-fun e!684285 () Bool)

(assert (=> d!132773 e!684285))

(declare-fun res!801614 () Bool)

(assert (=> d!132773 (=> res!801614 e!684285)))

(declare-fun lt!546442 () Bool)

(assert (=> d!132773 (= res!801614 (not lt!546442))))

(declare-fun lt!546443 () Bool)

(assert (=> d!132773 (= lt!546442 lt!546443)))

(declare-fun lt!546444 () Unit!39870)

(declare-fun e!684284 () Unit!39870)

(assert (=> d!132773 (= lt!546444 e!684284)))

(declare-fun c!118132 () Bool)

(assert (=> d!132773 (= c!118132 lt!546443)))

(declare-fun containsKey!591 (List!26669 (_ BitVec 64)) Bool)

(assert (=> d!132773 (= lt!546443 (containsKey!591 (toList!8927 call!58317) k0!934))))

(assert (=> d!132773 (= (contains!6931 call!58317 k0!934) lt!546442)))

(declare-fun b!1204913 () Bool)

(declare-fun lt!546441 () Unit!39870)

(assert (=> b!1204913 (= e!684284 lt!546441)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!420 (List!26669 (_ BitVec 64)) Unit!39870)

(assert (=> b!1204913 (= lt!546441 (lemmaContainsKeyImpliesGetValueByKeyDefined!420 (toList!8927 call!58317) k0!934))))

(declare-fun isDefined!460 (Option!688) Bool)

(assert (=> b!1204913 (isDefined!460 (getValueByKey!637 (toList!8927 call!58317) k0!934))))

(declare-fun b!1204914 () Bool)

(declare-fun Unit!39875 () Unit!39870)

(assert (=> b!1204914 (= e!684284 Unit!39875)))

(declare-fun b!1204915 () Bool)

(assert (=> b!1204915 (= e!684285 (isDefined!460 (getValueByKey!637 (toList!8927 call!58317) k0!934)))))

(assert (= (and d!132773 c!118132) b!1204913))

(assert (= (and d!132773 (not c!118132)) b!1204914))

(assert (= (and d!132773 (not res!801614)) b!1204915))

(declare-fun m!1110951 () Bool)

(assert (=> d!132773 m!1110951))

(declare-fun m!1110953 () Bool)

(assert (=> b!1204913 m!1110953))

(declare-fun m!1110955 () Bool)

(assert (=> b!1204913 m!1110955))

(assert (=> b!1204913 m!1110955))

(declare-fun m!1110957 () Bool)

(assert (=> b!1204913 m!1110957))

(assert (=> b!1204915 m!1110955))

(assert (=> b!1204915 m!1110955))

(assert (=> b!1204915 m!1110957))

(assert (=> b!1204779 d!132773))

(declare-fun d!132775 () Bool)

(declare-fun res!801615 () Bool)

(declare-fun e!684286 () Bool)

(assert (=> d!132775 (=> res!801615 e!684286)))

(assert (=> d!132775 (= res!801615 (= (select (arr!37637 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!132775 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!684286)))

(declare-fun b!1204916 () Bool)

(declare-fun e!684287 () Bool)

(assert (=> b!1204916 (= e!684286 e!684287)))

(declare-fun res!801616 () Bool)

(assert (=> b!1204916 (=> (not res!801616) (not e!684287))))

(assert (=> b!1204916 (= res!801616 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38174 _keys!1208)))))

(declare-fun b!1204917 () Bool)

(assert (=> b!1204917 (= e!684287 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!132775 (not res!801615)) b!1204916))

(assert (= (and b!1204916 res!801616) b!1204917))

(declare-fun m!1110959 () Bool)

(assert (=> d!132775 m!1110959))

(declare-fun m!1110961 () Bool)

(assert (=> b!1204917 m!1110961))

(assert (=> b!1204801 d!132775))

(declare-fun bm!58344 () Bool)

(declare-fun call!58348 () ListLongMap!17823)

(assert (=> bm!58344 (= call!58348 (getCurrentListMapNoExtraKeys!5336 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!58347 () ListLongMap!17823)

(declare-fun bm!58345 () Bool)

(assert (=> bm!58345 (= call!58347 (getCurrentListMapNoExtraKeys!5336 (array!77999 (store (arr!37637 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38174 _keys!1208)) (array!78001 (store (arr!37638 _values!996) i!673 (ValueCellFull!14601 (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38175 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun d!132777 () Bool)

(declare-fun e!684292 () Bool)

(assert (=> d!132777 e!684292))

(declare-fun res!801619 () Bool)

(assert (=> d!132777 (=> (not res!801619) (not e!684292))))

(assert (=> d!132777 (= res!801619 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38174 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38174 _keys!1208))))))))

(declare-fun lt!546447 () Unit!39870)

(declare-fun choose!1803 (array!77998 array!78000 (_ BitVec 32) (_ BitVec 32) V!45955 V!45955 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39870)

(assert (=> d!132777 (= lt!546447 (choose!1803 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!132777 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38174 _keys!1208)))))

(assert (=> d!132777 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1046 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!546447)))

(declare-fun b!1204924 () Bool)

(declare-fun e!684293 () Bool)

(assert (=> b!1204924 (= e!684293 (= call!58347 call!58348))))

(assert (=> b!1204924 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38175 _values!996)))))

(declare-fun b!1204925 () Bool)

(assert (=> b!1204925 (= e!684292 e!684293)))

(declare-fun c!118135 () Bool)

(assert (=> b!1204925 (= c!118135 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun b!1204926 () Bool)

(assert (=> b!1204926 (= e!684293 (= call!58347 (-!1842 call!58348 k0!934)))))

(assert (=> b!1204926 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38175 _values!996)))))

(assert (= (and d!132777 res!801619) b!1204925))

(assert (= (and b!1204925 c!118135) b!1204926))

(assert (= (and b!1204925 (not c!118135)) b!1204924))

(assert (= (or b!1204926 b!1204924) bm!58344))

(assert (= (or b!1204926 b!1204924) bm!58345))

(declare-fun b_lambda!21299 () Bool)

(assert (=> (not b_lambda!21299) (not bm!58345)))

(assert (=> bm!58345 t!39572))

(declare-fun b_and!42821 () Bool)

(assert (= b_and!42815 (and (=> t!39572 result!22025) b_and!42821)))

(assert (=> bm!58344 m!1110807))

(assert (=> bm!58345 m!1110821))

(assert (=> bm!58345 m!1110839))

(assert (=> bm!58345 m!1110841))

(declare-fun m!1110963 () Bool)

(assert (=> bm!58345 m!1110963))

(declare-fun m!1110965 () Bool)

(assert (=> d!132777 m!1110965))

(declare-fun m!1110967 () Bool)

(assert (=> b!1204926 m!1110967))

(assert (=> b!1204778 d!132777))

(declare-fun b!1204951 () Bool)

(declare-fun e!684314 () Bool)

(declare-fun e!684313 () Bool)

(assert (=> b!1204951 (= e!684314 e!684313)))

(assert (=> b!1204951 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38174 lt!546358)))))

(declare-fun lt!546467 () ListLongMap!17823)

(declare-fun res!801631 () Bool)

(assert (=> b!1204951 (= res!801631 (contains!6931 lt!546467 (select (arr!37637 lt!546358) from!1455)))))

(assert (=> b!1204951 (=> (not res!801631) (not e!684313))))

(declare-fun b!1204952 () Bool)

(declare-fun e!684310 () Bool)

(assert (=> b!1204952 (= e!684310 e!684314)))

(declare-fun c!118147 () Bool)

(declare-fun e!684309 () Bool)

(assert (=> b!1204952 (= c!118147 e!684309)))

(declare-fun res!801628 () Bool)

(assert (=> b!1204952 (=> (not res!801628) (not e!684309))))

(assert (=> b!1204952 (= res!801628 (bvslt from!1455 (size!38174 lt!546358)))))

(declare-fun b!1204953 () Bool)

(declare-fun e!684311 () ListLongMap!17823)

(declare-fun call!58351 () ListLongMap!17823)

(assert (=> b!1204953 (= e!684311 call!58351)))

(declare-fun b!1204954 () Bool)

(declare-fun e!684312 () ListLongMap!17823)

(assert (=> b!1204954 (= e!684312 e!684311)))

(declare-fun c!118145 () Bool)

(assert (=> b!1204954 (= c!118145 (validKeyInArray!0 (select (arr!37637 lt!546358) from!1455)))))

(declare-fun b!1204955 () Bool)

(declare-fun e!684308 () Bool)

(declare-fun isEmpty!988 (ListLongMap!17823) Bool)

(assert (=> b!1204955 (= e!684308 (isEmpty!988 lt!546467))))

(declare-fun d!132779 () Bool)

(assert (=> d!132779 e!684310))

(declare-fun res!801629 () Bool)

(assert (=> d!132779 (=> (not res!801629) (not e!684310))))

(assert (=> d!132779 (= res!801629 (not (contains!6931 lt!546467 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132779 (= lt!546467 e!684312)))

(declare-fun c!118144 () Bool)

(assert (=> d!132779 (= c!118144 (bvsge from!1455 (size!38174 lt!546358)))))

(assert (=> d!132779 (validMask!0 mask!1564)))

(assert (=> d!132779 (= (getCurrentListMapNoExtraKeys!5336 lt!546358 lt!546357 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!546467)))

(declare-fun b!1204956 () Bool)

(assert (=> b!1204956 (= e!684314 e!684308)))

(declare-fun c!118146 () Bool)

(assert (=> b!1204956 (= c!118146 (bvslt from!1455 (size!38174 lt!546358)))))

(declare-fun bm!58348 () Bool)

(assert (=> bm!58348 (= call!58351 (getCurrentListMapNoExtraKeys!5336 lt!546358 lt!546357 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1204957 () Bool)

(declare-fun lt!546464 () Unit!39870)

(declare-fun lt!546466 () Unit!39870)

(assert (=> b!1204957 (= lt!546464 lt!546466)))

(declare-fun lt!546465 () V!45955)

(declare-fun lt!546463 () ListLongMap!17823)

(declare-fun lt!546468 () (_ BitVec 64))

(declare-fun lt!546462 () (_ BitVec 64))

(assert (=> b!1204957 (not (contains!6931 (+!3961 lt!546463 (tuple2!19843 lt!546462 lt!546465)) lt!546468))))

(declare-fun addStillNotContains!293 (ListLongMap!17823 (_ BitVec 64) V!45955 (_ BitVec 64)) Unit!39870)

(assert (=> b!1204957 (= lt!546466 (addStillNotContains!293 lt!546463 lt!546462 lt!546465 lt!546468))))

(assert (=> b!1204957 (= lt!546468 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!19227 (ValueCell!14601 V!45955) V!45955)

(assert (=> b!1204957 (= lt!546465 (get!19227 (select (arr!37638 lt!546357) from!1455) (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1204957 (= lt!546462 (select (arr!37637 lt!546358) from!1455))))

(assert (=> b!1204957 (= lt!546463 call!58351)))

(assert (=> b!1204957 (= e!684311 (+!3961 call!58351 (tuple2!19843 (select (arr!37637 lt!546358) from!1455) (get!19227 (select (arr!37638 lt!546357) from!1455) (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1204958 () Bool)

(assert (=> b!1204958 (= e!684309 (validKeyInArray!0 (select (arr!37637 lt!546358) from!1455)))))

(assert (=> b!1204958 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1204959 () Bool)

(assert (=> b!1204959 (= e!684312 (ListLongMap!17824 Nil!26666))))

(declare-fun b!1204960 () Bool)

(assert (=> b!1204960 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38174 lt!546358)))))

(assert (=> b!1204960 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38175 lt!546357)))))

(declare-fun apply!998 (ListLongMap!17823 (_ BitVec 64)) V!45955)

(assert (=> b!1204960 (= e!684313 (= (apply!998 lt!546467 (select (arr!37637 lt!546358) from!1455)) (get!19227 (select (arr!37638 lt!546357) from!1455) (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1204961 () Bool)

(assert (=> b!1204961 (= e!684308 (= lt!546467 (getCurrentListMapNoExtraKeys!5336 lt!546358 lt!546357 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1204962 () Bool)

(declare-fun res!801630 () Bool)

(assert (=> b!1204962 (=> (not res!801630) (not e!684310))))

(assert (=> b!1204962 (= res!801630 (not (contains!6931 lt!546467 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132779 c!118144) b!1204959))

(assert (= (and d!132779 (not c!118144)) b!1204954))

(assert (= (and b!1204954 c!118145) b!1204957))

(assert (= (and b!1204954 (not c!118145)) b!1204953))

(assert (= (or b!1204957 b!1204953) bm!58348))

(assert (= (and d!132779 res!801629) b!1204962))

(assert (= (and b!1204962 res!801630) b!1204952))

(assert (= (and b!1204952 res!801628) b!1204958))

(assert (= (and b!1204952 c!118147) b!1204951))

(assert (= (and b!1204952 (not c!118147)) b!1204956))

(assert (= (and b!1204951 res!801631) b!1204960))

(assert (= (and b!1204956 c!118146) b!1204961))

(assert (= (and b!1204956 (not c!118146)) b!1204955))

(declare-fun b_lambda!21301 () Bool)

(assert (=> (not b_lambda!21301) (not b!1204957)))

(assert (=> b!1204957 t!39572))

(declare-fun b_and!42823 () Bool)

(assert (= b_and!42821 (and (=> t!39572 result!22025) b_and!42823)))

(declare-fun b_lambda!21303 () Bool)

(assert (=> (not b_lambda!21303) (not b!1204960)))

(assert (=> b!1204960 t!39572))

(declare-fun b_and!42825 () Bool)

(assert (= b_and!42823 (and (=> t!39572 result!22025) b_and!42825)))

(declare-fun m!1110969 () Bool)

(assert (=> b!1204962 m!1110969))

(declare-fun m!1110971 () Bool)

(assert (=> b!1204954 m!1110971))

(assert (=> b!1204954 m!1110971))

(declare-fun m!1110973 () Bool)

(assert (=> b!1204954 m!1110973))

(assert (=> b!1204960 m!1110839))

(assert (=> b!1204960 m!1110971))

(assert (=> b!1204960 m!1110971))

(declare-fun m!1110975 () Bool)

(assert (=> b!1204960 m!1110975))

(declare-fun m!1110977 () Bool)

(assert (=> b!1204960 m!1110977))

(assert (=> b!1204960 m!1110839))

(declare-fun m!1110979 () Bool)

(assert (=> b!1204960 m!1110979))

(assert (=> b!1204960 m!1110977))

(declare-fun m!1110981 () Bool)

(assert (=> b!1204957 m!1110981))

(assert (=> b!1204957 m!1110839))

(assert (=> b!1204957 m!1110971))

(declare-fun m!1110983 () Bool)

(assert (=> b!1204957 m!1110983))

(assert (=> b!1204957 m!1110977))

(assert (=> b!1204957 m!1110839))

(assert (=> b!1204957 m!1110979))

(assert (=> b!1204957 m!1110977))

(assert (=> b!1204957 m!1110981))

(declare-fun m!1110985 () Bool)

(assert (=> b!1204957 m!1110985))

(declare-fun m!1110987 () Bool)

(assert (=> b!1204957 m!1110987))

(declare-fun m!1110989 () Bool)

(assert (=> b!1204961 m!1110989))

(assert (=> b!1204958 m!1110971))

(assert (=> b!1204958 m!1110971))

(assert (=> b!1204958 m!1110973))

(assert (=> b!1204951 m!1110971))

(assert (=> b!1204951 m!1110971))

(declare-fun m!1110991 () Bool)

(assert (=> b!1204951 m!1110991))

(declare-fun m!1110993 () Bool)

(assert (=> d!132779 m!1110993))

(assert (=> d!132779 m!1110825))

(declare-fun m!1110995 () Bool)

(assert (=> b!1204955 m!1110995))

(assert (=> bm!58348 m!1110989))

(assert (=> b!1204800 d!132779))

(declare-fun b!1204963 () Bool)

(declare-fun e!684321 () Bool)

(declare-fun e!684320 () Bool)

(assert (=> b!1204963 (= e!684321 e!684320)))

(assert (=> b!1204963 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38174 _keys!1208)))))

(declare-fun lt!546474 () ListLongMap!17823)

(declare-fun res!801635 () Bool)

(assert (=> b!1204963 (= res!801635 (contains!6931 lt!546474 (select (arr!37637 _keys!1208) from!1455)))))

(assert (=> b!1204963 (=> (not res!801635) (not e!684320))))

(declare-fun b!1204964 () Bool)

(declare-fun e!684317 () Bool)

(assert (=> b!1204964 (= e!684317 e!684321)))

(declare-fun c!118151 () Bool)

(declare-fun e!684316 () Bool)

(assert (=> b!1204964 (= c!118151 e!684316)))

(declare-fun res!801632 () Bool)

(assert (=> b!1204964 (=> (not res!801632) (not e!684316))))

(assert (=> b!1204964 (= res!801632 (bvslt from!1455 (size!38174 _keys!1208)))))

(declare-fun b!1204965 () Bool)

(declare-fun e!684318 () ListLongMap!17823)

(declare-fun call!58352 () ListLongMap!17823)

(assert (=> b!1204965 (= e!684318 call!58352)))

(declare-fun b!1204966 () Bool)

(declare-fun e!684319 () ListLongMap!17823)

(assert (=> b!1204966 (= e!684319 e!684318)))

(declare-fun c!118149 () Bool)

(assert (=> b!1204966 (= c!118149 (validKeyInArray!0 (select (arr!37637 _keys!1208) from!1455)))))

(declare-fun b!1204967 () Bool)

(declare-fun e!684315 () Bool)

(assert (=> b!1204967 (= e!684315 (isEmpty!988 lt!546474))))

(declare-fun d!132781 () Bool)

(assert (=> d!132781 e!684317))

(declare-fun res!801633 () Bool)

(assert (=> d!132781 (=> (not res!801633) (not e!684317))))

(assert (=> d!132781 (= res!801633 (not (contains!6931 lt!546474 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132781 (= lt!546474 e!684319)))

(declare-fun c!118148 () Bool)

(assert (=> d!132781 (= c!118148 (bvsge from!1455 (size!38174 _keys!1208)))))

(assert (=> d!132781 (validMask!0 mask!1564)))

(assert (=> d!132781 (= (getCurrentListMapNoExtraKeys!5336 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!546474)))

(declare-fun b!1204968 () Bool)

(assert (=> b!1204968 (= e!684321 e!684315)))

(declare-fun c!118150 () Bool)

(assert (=> b!1204968 (= c!118150 (bvslt from!1455 (size!38174 _keys!1208)))))

(declare-fun bm!58349 () Bool)

(assert (=> bm!58349 (= call!58352 (getCurrentListMapNoExtraKeys!5336 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1204969 () Bool)

(declare-fun lt!546471 () Unit!39870)

(declare-fun lt!546473 () Unit!39870)

(assert (=> b!1204969 (= lt!546471 lt!546473)))

(declare-fun lt!546475 () (_ BitVec 64))

(declare-fun lt!546472 () V!45955)

(declare-fun lt!546470 () ListLongMap!17823)

(declare-fun lt!546469 () (_ BitVec 64))

(assert (=> b!1204969 (not (contains!6931 (+!3961 lt!546470 (tuple2!19843 lt!546469 lt!546472)) lt!546475))))

(assert (=> b!1204969 (= lt!546473 (addStillNotContains!293 lt!546470 lt!546469 lt!546472 lt!546475))))

(assert (=> b!1204969 (= lt!546475 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1204969 (= lt!546472 (get!19227 (select (arr!37638 _values!996) from!1455) (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1204969 (= lt!546469 (select (arr!37637 _keys!1208) from!1455))))

(assert (=> b!1204969 (= lt!546470 call!58352)))

(assert (=> b!1204969 (= e!684318 (+!3961 call!58352 (tuple2!19843 (select (arr!37637 _keys!1208) from!1455) (get!19227 (select (arr!37638 _values!996) from!1455) (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1204970 () Bool)

(assert (=> b!1204970 (= e!684316 (validKeyInArray!0 (select (arr!37637 _keys!1208) from!1455)))))

(assert (=> b!1204970 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1204971 () Bool)

(assert (=> b!1204971 (= e!684319 (ListLongMap!17824 Nil!26666))))

(declare-fun b!1204972 () Bool)

(assert (=> b!1204972 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38174 _keys!1208)))))

(assert (=> b!1204972 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38175 _values!996)))))

(assert (=> b!1204972 (= e!684320 (= (apply!998 lt!546474 (select (arr!37637 _keys!1208) from!1455)) (get!19227 (select (arr!37638 _values!996) from!1455) (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1204973 () Bool)

(assert (=> b!1204973 (= e!684315 (= lt!546474 (getCurrentListMapNoExtraKeys!5336 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1204974 () Bool)

(declare-fun res!801634 () Bool)

(assert (=> b!1204974 (=> (not res!801634) (not e!684317))))

(assert (=> b!1204974 (= res!801634 (not (contains!6931 lt!546474 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132781 c!118148) b!1204971))

(assert (= (and d!132781 (not c!118148)) b!1204966))

(assert (= (and b!1204966 c!118149) b!1204969))

(assert (= (and b!1204966 (not c!118149)) b!1204965))

(assert (= (or b!1204969 b!1204965) bm!58349))

(assert (= (and d!132781 res!801633) b!1204974))

(assert (= (and b!1204974 res!801634) b!1204964))

(assert (= (and b!1204964 res!801632) b!1204970))

(assert (= (and b!1204964 c!118151) b!1204963))

(assert (= (and b!1204964 (not c!118151)) b!1204968))

(assert (= (and b!1204963 res!801635) b!1204972))

(assert (= (and b!1204968 c!118150) b!1204973))

(assert (= (and b!1204968 (not c!118150)) b!1204967))

(declare-fun b_lambda!21305 () Bool)

(assert (=> (not b_lambda!21305) (not b!1204969)))

(assert (=> b!1204969 t!39572))

(declare-fun b_and!42827 () Bool)

(assert (= b_and!42825 (and (=> t!39572 result!22025) b_and!42827)))

(declare-fun b_lambda!21307 () Bool)

(assert (=> (not b_lambda!21307) (not b!1204972)))

(assert (=> b!1204972 t!39572))

(declare-fun b_and!42829 () Bool)

(assert (= b_and!42827 (and (=> t!39572 result!22025) b_and!42829)))

(declare-fun m!1110997 () Bool)

(assert (=> b!1204974 m!1110997))

(assert (=> b!1204966 m!1110827))

(assert (=> b!1204966 m!1110827))

(declare-fun m!1110999 () Bool)

(assert (=> b!1204966 m!1110999))

(assert (=> b!1204972 m!1110839))

(assert (=> b!1204972 m!1110827))

(assert (=> b!1204972 m!1110827))

(declare-fun m!1111001 () Bool)

(assert (=> b!1204972 m!1111001))

(declare-fun m!1111003 () Bool)

(assert (=> b!1204972 m!1111003))

(assert (=> b!1204972 m!1110839))

(declare-fun m!1111005 () Bool)

(assert (=> b!1204972 m!1111005))

(assert (=> b!1204972 m!1111003))

(declare-fun m!1111007 () Bool)

(assert (=> b!1204969 m!1111007))

(assert (=> b!1204969 m!1110839))

(assert (=> b!1204969 m!1110827))

(declare-fun m!1111009 () Bool)

(assert (=> b!1204969 m!1111009))

(assert (=> b!1204969 m!1111003))

(assert (=> b!1204969 m!1110839))

(assert (=> b!1204969 m!1111005))

(assert (=> b!1204969 m!1111003))

(assert (=> b!1204969 m!1111007))

(declare-fun m!1111011 () Bool)

(assert (=> b!1204969 m!1111011))

(declare-fun m!1111013 () Bool)

(assert (=> b!1204969 m!1111013))

(declare-fun m!1111015 () Bool)

(assert (=> b!1204973 m!1111015))

(assert (=> b!1204970 m!1110827))

(assert (=> b!1204970 m!1110827))

(assert (=> b!1204970 m!1110999))

(assert (=> b!1204963 m!1110827))

(assert (=> b!1204963 m!1110827))

(declare-fun m!1111017 () Bool)

(assert (=> b!1204963 m!1111017))

(declare-fun m!1111019 () Bool)

(assert (=> d!132781 m!1111019))

(assert (=> d!132781 m!1110825))

(declare-fun m!1111021 () Bool)

(assert (=> b!1204967 m!1111021))

(assert (=> bm!58349 m!1111015))

(assert (=> b!1204800 d!132781))

(declare-fun d!132783 () Bool)

(declare-fun e!684323 () Bool)

(assert (=> d!132783 e!684323))

(declare-fun res!801636 () Bool)

(assert (=> d!132783 (=> res!801636 e!684323)))

(declare-fun lt!546477 () Bool)

(assert (=> d!132783 (= res!801636 (not lt!546477))))

(declare-fun lt!546478 () Bool)

(assert (=> d!132783 (= lt!546477 lt!546478)))

(declare-fun lt!546479 () Unit!39870)

(declare-fun e!684322 () Unit!39870)

(assert (=> d!132783 (= lt!546479 e!684322)))

(declare-fun c!118152 () Bool)

(assert (=> d!132783 (= c!118152 lt!546478)))

(assert (=> d!132783 (= lt!546478 (containsKey!591 (toList!8927 (ite c!118114 lt!546365 call!58315)) k0!934))))

(assert (=> d!132783 (= (contains!6931 (ite c!118114 lt!546365 call!58315) k0!934) lt!546477)))

(declare-fun b!1204975 () Bool)

(declare-fun lt!546476 () Unit!39870)

(assert (=> b!1204975 (= e!684322 lt!546476)))

(assert (=> b!1204975 (= lt!546476 (lemmaContainsKeyImpliesGetValueByKeyDefined!420 (toList!8927 (ite c!118114 lt!546365 call!58315)) k0!934))))

(assert (=> b!1204975 (isDefined!460 (getValueByKey!637 (toList!8927 (ite c!118114 lt!546365 call!58315)) k0!934))))

(declare-fun b!1204976 () Bool)

(declare-fun Unit!39876 () Unit!39870)

(assert (=> b!1204976 (= e!684322 Unit!39876)))

(declare-fun b!1204977 () Bool)

(assert (=> b!1204977 (= e!684323 (isDefined!460 (getValueByKey!637 (toList!8927 (ite c!118114 lt!546365 call!58315)) k0!934)))))

(assert (= (and d!132783 c!118152) b!1204975))

(assert (= (and d!132783 (not c!118152)) b!1204976))

(assert (= (and d!132783 (not res!801636)) b!1204977))

(declare-fun m!1111023 () Bool)

(assert (=> d!132783 m!1111023))

(declare-fun m!1111025 () Bool)

(assert (=> b!1204975 m!1111025))

(declare-fun m!1111027 () Bool)

(assert (=> b!1204975 m!1111027))

(assert (=> b!1204975 m!1111027))

(declare-fun m!1111029 () Bool)

(assert (=> b!1204975 m!1111029))

(assert (=> b!1204977 m!1111027))

(assert (=> b!1204977 m!1111027))

(assert (=> b!1204977 m!1111029))

(assert (=> bm!58309 d!132783))

(declare-fun d!132785 () Bool)

(declare-fun e!684325 () Bool)

(assert (=> d!132785 e!684325))

(declare-fun res!801637 () Bool)

(assert (=> d!132785 (=> res!801637 e!684325)))

(declare-fun lt!546481 () Bool)

(assert (=> d!132785 (= res!801637 (not lt!546481))))

(declare-fun lt!546482 () Bool)

(assert (=> d!132785 (= lt!546481 lt!546482)))

(declare-fun lt!546483 () Unit!39870)

(declare-fun e!684324 () Unit!39870)

(assert (=> d!132785 (= lt!546483 e!684324)))

(declare-fun c!118153 () Bool)

(assert (=> d!132785 (= c!118153 lt!546482)))

(assert (=> d!132785 (= lt!546482 (containsKey!591 (toList!8927 lt!546359) k0!934))))

(assert (=> d!132785 (= (contains!6931 lt!546359 k0!934) lt!546481)))

(declare-fun b!1204978 () Bool)

(declare-fun lt!546480 () Unit!39870)

(assert (=> b!1204978 (= e!684324 lt!546480)))

(assert (=> b!1204978 (= lt!546480 (lemmaContainsKeyImpliesGetValueByKeyDefined!420 (toList!8927 lt!546359) k0!934))))

(assert (=> b!1204978 (isDefined!460 (getValueByKey!637 (toList!8927 lt!546359) k0!934))))

(declare-fun b!1204979 () Bool)

(declare-fun Unit!39877 () Unit!39870)

(assert (=> b!1204979 (= e!684324 Unit!39877)))

(declare-fun b!1204980 () Bool)

(assert (=> b!1204980 (= e!684325 (isDefined!460 (getValueByKey!637 (toList!8927 lt!546359) k0!934)))))

(assert (= (and d!132785 c!118153) b!1204978))

(assert (= (and d!132785 (not c!118153)) b!1204979))

(assert (= (and d!132785 (not res!801637)) b!1204980))

(declare-fun m!1111031 () Bool)

(assert (=> d!132785 m!1111031))

(declare-fun m!1111033 () Bool)

(assert (=> b!1204978 m!1111033))

(declare-fun m!1111035 () Bool)

(assert (=> b!1204978 m!1111035))

(assert (=> b!1204978 m!1111035))

(declare-fun m!1111037 () Bool)

(assert (=> b!1204978 m!1111037))

(assert (=> b!1204980 m!1111035))

(assert (=> b!1204980 m!1111035))

(assert (=> b!1204980 m!1111037))

(assert (=> b!1204795 d!132785))

(declare-fun b!1204981 () Bool)

(declare-fun e!684332 () Bool)

(declare-fun e!684331 () Bool)

(assert (=> b!1204981 (= e!684332 e!684331)))

(assert (=> b!1204981 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38174 _keys!1208)))))

(declare-fun lt!546489 () ListLongMap!17823)

(declare-fun res!801641 () Bool)

(assert (=> b!1204981 (= res!801641 (contains!6931 lt!546489 (select (arr!37637 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1204981 (=> (not res!801641) (not e!684331))))

(declare-fun b!1204982 () Bool)

(declare-fun e!684328 () Bool)

(assert (=> b!1204982 (= e!684328 e!684332)))

(declare-fun c!118157 () Bool)

(declare-fun e!684327 () Bool)

(assert (=> b!1204982 (= c!118157 e!684327)))

(declare-fun res!801638 () Bool)

(assert (=> b!1204982 (=> (not res!801638) (not e!684327))))

(assert (=> b!1204982 (= res!801638 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38174 _keys!1208)))))

(declare-fun b!1204983 () Bool)

(declare-fun e!684329 () ListLongMap!17823)

(declare-fun call!58353 () ListLongMap!17823)

(assert (=> b!1204983 (= e!684329 call!58353)))

(declare-fun b!1204984 () Bool)

(declare-fun e!684330 () ListLongMap!17823)

(assert (=> b!1204984 (= e!684330 e!684329)))

(declare-fun c!118155 () Bool)

(assert (=> b!1204984 (= c!118155 (validKeyInArray!0 (select (arr!37637 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1204985 () Bool)

(declare-fun e!684326 () Bool)

(assert (=> b!1204985 (= e!684326 (isEmpty!988 lt!546489))))

(declare-fun d!132787 () Bool)

(assert (=> d!132787 e!684328))

(declare-fun res!801639 () Bool)

(assert (=> d!132787 (=> (not res!801639) (not e!684328))))

(assert (=> d!132787 (= res!801639 (not (contains!6931 lt!546489 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132787 (= lt!546489 e!684330)))

(declare-fun c!118154 () Bool)

(assert (=> d!132787 (= c!118154 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38174 _keys!1208)))))

(assert (=> d!132787 (validMask!0 mask!1564)))

(assert (=> d!132787 (= (getCurrentListMapNoExtraKeys!5336 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!546489)))

(declare-fun b!1204986 () Bool)

(assert (=> b!1204986 (= e!684332 e!684326)))

(declare-fun c!118156 () Bool)

(assert (=> b!1204986 (= c!118156 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38174 _keys!1208)))))

(declare-fun bm!58350 () Bool)

(assert (=> bm!58350 (= call!58353 (getCurrentListMapNoExtraKeys!5336 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1204987 () Bool)

(declare-fun lt!546486 () Unit!39870)

(declare-fun lt!546488 () Unit!39870)

(assert (=> b!1204987 (= lt!546486 lt!546488)))

(declare-fun lt!546487 () V!45955)

(declare-fun lt!546485 () ListLongMap!17823)

(declare-fun lt!546490 () (_ BitVec 64))

(declare-fun lt!546484 () (_ BitVec 64))

(assert (=> b!1204987 (not (contains!6931 (+!3961 lt!546485 (tuple2!19843 lt!546484 lt!546487)) lt!546490))))

(assert (=> b!1204987 (= lt!546488 (addStillNotContains!293 lt!546485 lt!546484 lt!546487 lt!546490))))

(assert (=> b!1204987 (= lt!546490 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1204987 (= lt!546487 (get!19227 (select (arr!37638 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1204987 (= lt!546484 (select (arr!37637 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1204987 (= lt!546485 call!58353)))

(assert (=> b!1204987 (= e!684329 (+!3961 call!58353 (tuple2!19843 (select (arr!37637 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19227 (select (arr!37638 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1204988 () Bool)

(assert (=> b!1204988 (= e!684327 (validKeyInArray!0 (select (arr!37637 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1204988 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1204989 () Bool)

(assert (=> b!1204989 (= e!684330 (ListLongMap!17824 Nil!26666))))

(declare-fun b!1204990 () Bool)

(assert (=> b!1204990 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38174 _keys!1208)))))

(assert (=> b!1204990 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38175 _values!996)))))

(assert (=> b!1204990 (= e!684331 (= (apply!998 lt!546489 (select (arr!37637 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19227 (select (arr!37638 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1204991 () Bool)

(assert (=> b!1204991 (= e!684326 (= lt!546489 (getCurrentListMapNoExtraKeys!5336 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1204992 () Bool)

(declare-fun res!801640 () Bool)

(assert (=> b!1204992 (=> (not res!801640) (not e!684328))))

(assert (=> b!1204992 (= res!801640 (not (contains!6931 lt!546489 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132787 c!118154) b!1204989))

(assert (= (and d!132787 (not c!118154)) b!1204984))

(assert (= (and b!1204984 c!118155) b!1204987))

(assert (= (and b!1204984 (not c!118155)) b!1204983))

(assert (= (or b!1204987 b!1204983) bm!58350))

(assert (= (and d!132787 res!801639) b!1204992))

(assert (= (and b!1204992 res!801640) b!1204982))

(assert (= (and b!1204982 res!801638) b!1204988))

(assert (= (and b!1204982 c!118157) b!1204981))

(assert (= (and b!1204982 (not c!118157)) b!1204986))

(assert (= (and b!1204981 res!801641) b!1204990))

(assert (= (and b!1204986 c!118156) b!1204991))

(assert (= (and b!1204986 (not c!118156)) b!1204985))

(declare-fun b_lambda!21309 () Bool)

(assert (=> (not b_lambda!21309) (not b!1204987)))

(assert (=> b!1204987 t!39572))

(declare-fun b_and!42831 () Bool)

(assert (= b_and!42829 (and (=> t!39572 result!22025) b_and!42831)))

(declare-fun b_lambda!21311 () Bool)

(assert (=> (not b_lambda!21311) (not b!1204990)))

(assert (=> b!1204990 t!39572))

(declare-fun b_and!42833 () Bool)

(assert (= b_and!42831 (and (=> t!39572 result!22025) b_and!42833)))

(declare-fun m!1111039 () Bool)

(assert (=> b!1204992 m!1111039))

(assert (=> b!1204984 m!1110959))

(assert (=> b!1204984 m!1110959))

(declare-fun m!1111041 () Bool)

(assert (=> b!1204984 m!1111041))

(assert (=> b!1204990 m!1110839))

(assert (=> b!1204990 m!1110959))

(assert (=> b!1204990 m!1110959))

(declare-fun m!1111043 () Bool)

(assert (=> b!1204990 m!1111043))

(declare-fun m!1111045 () Bool)

(assert (=> b!1204990 m!1111045))

(assert (=> b!1204990 m!1110839))

(declare-fun m!1111047 () Bool)

(assert (=> b!1204990 m!1111047))

(assert (=> b!1204990 m!1111045))

(declare-fun m!1111049 () Bool)

(assert (=> b!1204987 m!1111049))

(assert (=> b!1204987 m!1110839))

(assert (=> b!1204987 m!1110959))

(declare-fun m!1111051 () Bool)

(assert (=> b!1204987 m!1111051))

(assert (=> b!1204987 m!1111045))

(assert (=> b!1204987 m!1110839))

(assert (=> b!1204987 m!1111047))

(assert (=> b!1204987 m!1111045))

(assert (=> b!1204987 m!1111049))

(declare-fun m!1111053 () Bool)

(assert (=> b!1204987 m!1111053))

(declare-fun m!1111055 () Bool)

(assert (=> b!1204987 m!1111055))

(declare-fun m!1111057 () Bool)

(assert (=> b!1204991 m!1111057))

(assert (=> b!1204988 m!1110959))

(assert (=> b!1204988 m!1110959))

(assert (=> b!1204988 m!1111041))

(assert (=> b!1204981 m!1110959))

(assert (=> b!1204981 m!1110959))

(declare-fun m!1111059 () Bool)

(assert (=> b!1204981 m!1111059))

(declare-fun m!1111061 () Bool)

(assert (=> d!132787 m!1111061))

(assert (=> d!132787 m!1110825))

(declare-fun m!1111063 () Bool)

(assert (=> b!1204985 m!1111063))

(assert (=> bm!58350 m!1111057))

(assert (=> b!1204795 d!132787))

(declare-fun d!132789 () Bool)

(assert (=> d!132789 (= (array_inv!28578 _keys!1208) (bvsge (size!38174 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!100752 d!132789))

(declare-fun d!132791 () Bool)

(assert (=> d!132791 (= (array_inv!28579 _values!996) (bvsge (size!38175 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!100752 d!132791))

(assert (=> b!1204794 d!132775))

(declare-fun b!1204993 () Bool)

(declare-fun e!684339 () Bool)

(declare-fun e!684338 () Bool)

(assert (=> b!1204993 (= e!684339 e!684338)))

(assert (=> b!1204993 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38174 lt!546358)))))

(declare-fun lt!546496 () ListLongMap!17823)

(declare-fun res!801645 () Bool)

(assert (=> b!1204993 (= res!801645 (contains!6931 lt!546496 (select (arr!37637 lt!546358) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1204993 (=> (not res!801645) (not e!684338))))

(declare-fun b!1204994 () Bool)

(declare-fun e!684335 () Bool)

(assert (=> b!1204994 (= e!684335 e!684339)))

(declare-fun c!118161 () Bool)

(declare-fun e!684334 () Bool)

(assert (=> b!1204994 (= c!118161 e!684334)))

(declare-fun res!801642 () Bool)

(assert (=> b!1204994 (=> (not res!801642) (not e!684334))))

(assert (=> b!1204994 (= res!801642 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38174 lt!546358)))))

(declare-fun b!1204995 () Bool)

(declare-fun e!684336 () ListLongMap!17823)

(declare-fun call!58354 () ListLongMap!17823)

(assert (=> b!1204995 (= e!684336 call!58354)))

(declare-fun b!1204996 () Bool)

(declare-fun e!684337 () ListLongMap!17823)

(assert (=> b!1204996 (= e!684337 e!684336)))

(declare-fun c!118159 () Bool)

(assert (=> b!1204996 (= c!118159 (validKeyInArray!0 (select (arr!37637 lt!546358) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1204997 () Bool)

(declare-fun e!684333 () Bool)

(assert (=> b!1204997 (= e!684333 (isEmpty!988 lt!546496))))

(declare-fun d!132793 () Bool)

(assert (=> d!132793 e!684335))

(declare-fun res!801643 () Bool)

(assert (=> d!132793 (=> (not res!801643) (not e!684335))))

(assert (=> d!132793 (= res!801643 (not (contains!6931 lt!546496 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132793 (= lt!546496 e!684337)))

(declare-fun c!118158 () Bool)

(assert (=> d!132793 (= c!118158 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38174 lt!546358)))))

(assert (=> d!132793 (validMask!0 mask!1564)))

(assert (=> d!132793 (= (getCurrentListMapNoExtraKeys!5336 lt!546358 lt!546357 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!546496)))

(declare-fun b!1204998 () Bool)

(assert (=> b!1204998 (= e!684339 e!684333)))

(declare-fun c!118160 () Bool)

(assert (=> b!1204998 (= c!118160 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38174 lt!546358)))))

(declare-fun bm!58351 () Bool)

(assert (=> bm!58351 (= call!58354 (getCurrentListMapNoExtraKeys!5336 lt!546358 lt!546357 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1204999 () Bool)

(declare-fun lt!546493 () Unit!39870)

(declare-fun lt!546495 () Unit!39870)

(assert (=> b!1204999 (= lt!546493 lt!546495)))

(declare-fun lt!546494 () V!45955)

(declare-fun lt!546492 () ListLongMap!17823)

(declare-fun lt!546491 () (_ BitVec 64))

(declare-fun lt!546497 () (_ BitVec 64))

(assert (=> b!1204999 (not (contains!6931 (+!3961 lt!546492 (tuple2!19843 lt!546491 lt!546494)) lt!546497))))

(assert (=> b!1204999 (= lt!546495 (addStillNotContains!293 lt!546492 lt!546491 lt!546494 lt!546497))))

(assert (=> b!1204999 (= lt!546497 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1204999 (= lt!546494 (get!19227 (select (arr!37638 lt!546357) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1204999 (= lt!546491 (select (arr!37637 lt!546358) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1204999 (= lt!546492 call!58354)))

(assert (=> b!1204999 (= e!684336 (+!3961 call!58354 (tuple2!19843 (select (arr!37637 lt!546358) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19227 (select (arr!37638 lt!546357) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1205000 () Bool)

(assert (=> b!1205000 (= e!684334 (validKeyInArray!0 (select (arr!37637 lt!546358) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1205000 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1205001 () Bool)

(assert (=> b!1205001 (= e!684337 (ListLongMap!17824 Nil!26666))))

(declare-fun b!1205002 () Bool)

(assert (=> b!1205002 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38174 lt!546358)))))

(assert (=> b!1205002 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38175 lt!546357)))))

(assert (=> b!1205002 (= e!684338 (= (apply!998 lt!546496 (select (arr!37637 lt!546358) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19227 (select (arr!37638 lt!546357) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3258 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1205003 () Bool)

(assert (=> b!1205003 (= e!684333 (= lt!546496 (getCurrentListMapNoExtraKeys!5336 lt!546358 lt!546357 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1205004 () Bool)

(declare-fun res!801644 () Bool)

(assert (=> b!1205004 (=> (not res!801644) (not e!684335))))

(assert (=> b!1205004 (= res!801644 (not (contains!6931 lt!546496 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132793 c!118158) b!1205001))

(assert (= (and d!132793 (not c!118158)) b!1204996))

(assert (= (and b!1204996 c!118159) b!1204999))

(assert (= (and b!1204996 (not c!118159)) b!1204995))

(assert (= (or b!1204999 b!1204995) bm!58351))

(assert (= (and d!132793 res!801643) b!1205004))

(assert (= (and b!1205004 res!801644) b!1204994))

(assert (= (and b!1204994 res!801642) b!1205000))

(assert (= (and b!1204994 c!118161) b!1204993))

(assert (= (and b!1204994 (not c!118161)) b!1204998))

(assert (= (and b!1204993 res!801645) b!1205002))

(assert (= (and b!1204998 c!118160) b!1205003))

(assert (= (and b!1204998 (not c!118160)) b!1204997))

(declare-fun b_lambda!21313 () Bool)

(assert (=> (not b_lambda!21313) (not b!1204999)))

(assert (=> b!1204999 t!39572))

(declare-fun b_and!42835 () Bool)

(assert (= b_and!42833 (and (=> t!39572 result!22025) b_and!42835)))

(declare-fun b_lambda!21315 () Bool)

(assert (=> (not b_lambda!21315) (not b!1205002)))

(assert (=> b!1205002 t!39572))

(declare-fun b_and!42837 () Bool)

(assert (= b_and!42835 (and (=> t!39572 result!22025) b_and!42837)))

(declare-fun m!1111065 () Bool)

(assert (=> b!1205004 m!1111065))

(declare-fun m!1111067 () Bool)

(assert (=> b!1204996 m!1111067))

(assert (=> b!1204996 m!1111067))

(declare-fun m!1111069 () Bool)

(assert (=> b!1204996 m!1111069))

(assert (=> b!1205002 m!1110839))

(assert (=> b!1205002 m!1111067))

(assert (=> b!1205002 m!1111067))

(declare-fun m!1111071 () Bool)

(assert (=> b!1205002 m!1111071))

(declare-fun m!1111073 () Bool)

(assert (=> b!1205002 m!1111073))

(assert (=> b!1205002 m!1110839))

(declare-fun m!1111075 () Bool)

(assert (=> b!1205002 m!1111075))

(assert (=> b!1205002 m!1111073))

(declare-fun m!1111077 () Bool)

(assert (=> b!1204999 m!1111077))

(assert (=> b!1204999 m!1110839))

(assert (=> b!1204999 m!1111067))

(declare-fun m!1111079 () Bool)

(assert (=> b!1204999 m!1111079))

(assert (=> b!1204999 m!1111073))

(assert (=> b!1204999 m!1110839))

(assert (=> b!1204999 m!1111075))

(assert (=> b!1204999 m!1111073))

(assert (=> b!1204999 m!1111077))

(declare-fun m!1111081 () Bool)

(assert (=> b!1204999 m!1111081))

(declare-fun m!1111083 () Bool)

(assert (=> b!1204999 m!1111083))

(declare-fun m!1111085 () Bool)

(assert (=> b!1205003 m!1111085))

(assert (=> b!1205000 m!1111067))

(assert (=> b!1205000 m!1111067))

(assert (=> b!1205000 m!1111069))

(assert (=> b!1204993 m!1111067))

(assert (=> b!1204993 m!1111067))

(declare-fun m!1111087 () Bool)

(assert (=> b!1204993 m!1111087))

(declare-fun m!1111089 () Bool)

(assert (=> d!132793 m!1111089))

(assert (=> d!132793 m!1110825))

(declare-fun m!1111091 () Bool)

(assert (=> b!1204997 m!1111091))

(assert (=> bm!58351 m!1111085))

(assert (=> bm!58313 d!132793))

(declare-fun b!1205016 () Bool)

(declare-fun e!684351 () Bool)

(declare-fun call!58357 () Bool)

(assert (=> b!1205016 (= e!684351 call!58357)))

(declare-fun bm!58354 () Bool)

(declare-fun c!118164 () Bool)

(assert (=> bm!58354 (= call!58357 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118164 (Cons!26666 (select (arr!37637 _keys!1208) #b00000000000000000000000000000000) Nil!26667) Nil!26667)))))

(declare-fun b!1205017 () Bool)

(declare-fun e!684348 () Bool)

(declare-fun e!684350 () Bool)

(assert (=> b!1205017 (= e!684348 e!684350)))

(declare-fun res!801653 () Bool)

(assert (=> b!1205017 (=> (not res!801653) (not e!684350))))

(declare-fun e!684349 () Bool)

(assert (=> b!1205017 (= res!801653 (not e!684349))))

(declare-fun res!801654 () Bool)

(assert (=> b!1205017 (=> (not res!801654) (not e!684349))))

(assert (=> b!1205017 (= res!801654 (validKeyInArray!0 (select (arr!37637 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1205015 () Bool)

(assert (=> b!1205015 (= e!684351 call!58357)))

(declare-fun d!132795 () Bool)

(declare-fun res!801652 () Bool)

(assert (=> d!132795 (=> res!801652 e!684348)))

(assert (=> d!132795 (= res!801652 (bvsge #b00000000000000000000000000000000 (size!38174 _keys!1208)))))

(assert (=> d!132795 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26667) e!684348)))

(declare-fun b!1205018 () Bool)

(assert (=> b!1205018 (= e!684350 e!684351)))

(assert (=> b!1205018 (= c!118164 (validKeyInArray!0 (select (arr!37637 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1205019 () Bool)

(declare-fun contains!6933 (List!26670 (_ BitVec 64)) Bool)

(assert (=> b!1205019 (= e!684349 (contains!6933 Nil!26667 (select (arr!37637 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!132795 (not res!801652)) b!1205017))

(assert (= (and b!1205017 res!801654) b!1205019))

(assert (= (and b!1205017 res!801653) b!1205018))

(assert (= (and b!1205018 c!118164) b!1205015))

(assert (= (and b!1205018 (not c!118164)) b!1205016))

(assert (= (or b!1205015 b!1205016) bm!58354))

(assert (=> bm!58354 m!1110929))

(declare-fun m!1111093 () Bool)

(assert (=> bm!58354 m!1111093))

(assert (=> b!1205017 m!1110929))

(assert (=> b!1205017 m!1110929))

(declare-fun m!1111095 () Bool)

(assert (=> b!1205017 m!1111095))

(assert (=> b!1205018 m!1110929))

(assert (=> b!1205018 m!1110929))

(assert (=> b!1205018 m!1111095))

(assert (=> b!1205019 m!1110929))

(assert (=> b!1205019 m!1110929))

(declare-fun m!1111097 () Bool)

(assert (=> b!1205019 m!1111097))

(assert (=> b!1204793 d!132795))

(declare-fun b!1205028 () Bool)

(declare-fun e!684358 () Bool)

(declare-fun e!684360 () Bool)

(assert (=> b!1205028 (= e!684358 e!684360)))

(declare-fun lt!546504 () (_ BitVec 64))

(assert (=> b!1205028 (= lt!546504 (select (arr!37637 lt!546358) #b00000000000000000000000000000000))))

(declare-fun lt!546505 () Unit!39870)

(assert (=> b!1205028 (= lt!546505 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!546358 lt!546504 #b00000000000000000000000000000000))))

(assert (=> b!1205028 (arrayContainsKey!0 lt!546358 lt!546504 #b00000000000000000000000000000000)))

(declare-fun lt!546506 () Unit!39870)

(assert (=> b!1205028 (= lt!546506 lt!546505)))

(declare-fun res!801659 () Bool)

(declare-datatypes ((SeekEntryResult!9933 0))(
  ( (MissingZero!9933 (index!42102 (_ BitVec 32))) (Found!9933 (index!42103 (_ BitVec 32))) (Intermediate!9933 (undefined!10745 Bool) (index!42104 (_ BitVec 32)) (x!106436 (_ BitVec 32))) (Undefined!9933) (MissingVacant!9933 (index!42105 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!77998 (_ BitVec 32)) SeekEntryResult!9933)

(assert (=> b!1205028 (= res!801659 (= (seekEntryOrOpen!0 (select (arr!37637 lt!546358) #b00000000000000000000000000000000) lt!546358 mask!1564) (Found!9933 #b00000000000000000000000000000000)))))

(assert (=> b!1205028 (=> (not res!801659) (not e!684360))))

(declare-fun b!1205029 () Bool)

(declare-fun call!58360 () Bool)

(assert (=> b!1205029 (= e!684360 call!58360)))

(declare-fun bm!58357 () Bool)

(assert (=> bm!58357 (= call!58360 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!546358 mask!1564))))

(declare-fun b!1205030 () Bool)

(assert (=> b!1205030 (= e!684358 call!58360)))

(declare-fun d!132797 () Bool)

(declare-fun res!801660 () Bool)

(declare-fun e!684359 () Bool)

(assert (=> d!132797 (=> res!801660 e!684359)))

(assert (=> d!132797 (= res!801660 (bvsge #b00000000000000000000000000000000 (size!38174 lt!546358)))))

(assert (=> d!132797 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!546358 mask!1564) e!684359)))

(declare-fun b!1205031 () Bool)

(assert (=> b!1205031 (= e!684359 e!684358)))

(declare-fun c!118167 () Bool)

(assert (=> b!1205031 (= c!118167 (validKeyInArray!0 (select (arr!37637 lt!546358) #b00000000000000000000000000000000)))))

(assert (= (and d!132797 (not res!801660)) b!1205031))

(assert (= (and b!1205031 c!118167) b!1205028))

(assert (= (and b!1205031 (not c!118167)) b!1205030))

(assert (= (and b!1205028 res!801659) b!1205029))

(assert (= (or b!1205029 b!1205030) bm!58357))

(declare-fun m!1111099 () Bool)

(assert (=> b!1205028 m!1111099))

(declare-fun m!1111101 () Bool)

(assert (=> b!1205028 m!1111101))

(declare-fun m!1111103 () Bool)

(assert (=> b!1205028 m!1111103))

(assert (=> b!1205028 m!1111099))

(declare-fun m!1111105 () Bool)

(assert (=> b!1205028 m!1111105))

(declare-fun m!1111107 () Bool)

(assert (=> bm!58357 m!1111107))

(assert (=> b!1205031 m!1111099))

(assert (=> b!1205031 m!1111099))

(declare-fun m!1111109 () Bool)

(assert (=> b!1205031 m!1111109))

(assert (=> b!1204783 d!132797))

(declare-fun d!132799 () Bool)

(declare-fun e!684363 () Bool)

(assert (=> d!132799 e!684363))

(declare-fun c!118170 () Bool)

(assert (=> d!132799 (= c!118170 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!546509 () Unit!39870)

(declare-fun choose!1804 (array!77998 array!78000 (_ BitVec 32) (_ BitVec 32) V!45955 V!45955 (_ BitVec 64) (_ BitVec 32) Int) Unit!39870)

(assert (=> d!132799 (= lt!546509 (choose!1804 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!132799 (validMask!0 mask!1564)))

(assert (=> d!132799 (= (lemmaListMapContainsThenArrayContainsFrom!565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!546509)))

(declare-fun b!1205036 () Bool)

(assert (=> b!1205036 (= e!684363 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205037 () Bool)

(assert (=> b!1205037 (= e!684363 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!132799 c!118170) b!1205036))

(assert (= (and d!132799 (not c!118170)) b!1205037))

(declare-fun m!1111111 () Bool)

(assert (=> d!132799 m!1111111))

(assert (=> d!132799 m!1110825))

(assert (=> b!1205036 m!1110811))

(assert (=> b!1204805 d!132799))

(assert (=> bm!58308 d!132787))

(declare-fun d!132801 () Bool)

(declare-fun lt!546512 () ListLongMap!17823)

(assert (=> d!132801 (not (contains!6931 lt!546512 k0!934))))

(declare-fun removeStrictlySorted!97 (List!26669 (_ BitVec 64)) List!26669)

(assert (=> d!132801 (= lt!546512 (ListLongMap!17824 (removeStrictlySorted!97 (toList!8927 call!58312) k0!934)))))

(assert (=> d!132801 (= (-!1842 call!58312 k0!934) lt!546512)))

(declare-fun bs!34092 () Bool)

(assert (= bs!34092 d!132801))

(declare-fun m!1111113 () Bool)

(assert (=> bs!34092 m!1111113))

(declare-fun m!1111115 () Bool)

(assert (=> bs!34092 m!1111115))

(assert (=> b!1204781 d!132801))

(declare-fun d!132803 () Bool)

(assert (=> d!132803 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1204803 d!132803))

(declare-fun b!1205039 () Bool)

(declare-fun e!684367 () Bool)

(declare-fun call!58361 () Bool)

(assert (=> b!1205039 (= e!684367 call!58361)))

(declare-fun bm!58358 () Bool)

(declare-fun c!118171 () Bool)

(assert (=> bm!58358 (= call!58361 (arrayNoDuplicates!0 lt!546358 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118171 (Cons!26666 (select (arr!37637 lt!546358) #b00000000000000000000000000000000) Nil!26667) Nil!26667)))))

(declare-fun b!1205040 () Bool)

(declare-fun e!684364 () Bool)

(declare-fun e!684366 () Bool)

(assert (=> b!1205040 (= e!684364 e!684366)))

(declare-fun res!801662 () Bool)

(assert (=> b!1205040 (=> (not res!801662) (not e!684366))))

(declare-fun e!684365 () Bool)

(assert (=> b!1205040 (= res!801662 (not e!684365))))

(declare-fun res!801663 () Bool)

(assert (=> b!1205040 (=> (not res!801663) (not e!684365))))

(assert (=> b!1205040 (= res!801663 (validKeyInArray!0 (select (arr!37637 lt!546358) #b00000000000000000000000000000000)))))

(declare-fun b!1205038 () Bool)

(assert (=> b!1205038 (= e!684367 call!58361)))

(declare-fun d!132805 () Bool)

(declare-fun res!801661 () Bool)

(assert (=> d!132805 (=> res!801661 e!684364)))

(assert (=> d!132805 (= res!801661 (bvsge #b00000000000000000000000000000000 (size!38174 lt!546358)))))

(assert (=> d!132805 (= (arrayNoDuplicates!0 lt!546358 #b00000000000000000000000000000000 Nil!26667) e!684364)))

(declare-fun b!1205041 () Bool)

(assert (=> b!1205041 (= e!684366 e!684367)))

(assert (=> b!1205041 (= c!118171 (validKeyInArray!0 (select (arr!37637 lt!546358) #b00000000000000000000000000000000)))))

(declare-fun b!1205042 () Bool)

(assert (=> b!1205042 (= e!684365 (contains!6933 Nil!26667 (select (arr!37637 lt!546358) #b00000000000000000000000000000000)))))

(assert (= (and d!132805 (not res!801661)) b!1205040))

(assert (= (and b!1205040 res!801663) b!1205042))

(assert (= (and b!1205040 res!801662) b!1205041))

(assert (= (and b!1205041 c!118171) b!1205038))

(assert (= (and b!1205041 (not c!118171)) b!1205039))

(assert (= (or b!1205038 b!1205039) bm!58358))

(assert (=> bm!58358 m!1111099))

(declare-fun m!1111117 () Bool)

(assert (=> bm!58358 m!1111117))

(assert (=> b!1205040 m!1111099))

(assert (=> b!1205040 m!1111099))

(assert (=> b!1205040 m!1111109))

(assert (=> b!1205041 m!1111099))

(assert (=> b!1205041 m!1111099))

(assert (=> b!1205041 m!1111109))

(assert (=> b!1205042 m!1111099))

(assert (=> b!1205042 m!1111099))

(declare-fun m!1111119 () Bool)

(assert (=> b!1205042 m!1111119))

(assert (=> b!1204782 d!132805))

(declare-fun d!132807 () Bool)

(declare-fun e!684368 () Bool)

(assert (=> d!132807 e!684368))

(declare-fun res!801664 () Bool)

(assert (=> d!132807 (=> (not res!801664) (not e!684368))))

(declare-fun lt!546513 () ListLongMap!17823)

(assert (=> d!132807 (= res!801664 (contains!6931 lt!546513 (_1!9931 (ite c!118114 (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118110 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun lt!546516 () List!26669)

(assert (=> d!132807 (= lt!546513 (ListLongMap!17824 lt!546516))))

(declare-fun lt!546515 () Unit!39870)

(declare-fun lt!546514 () Unit!39870)

(assert (=> d!132807 (= lt!546515 lt!546514)))

(assert (=> d!132807 (= (getValueByKey!637 lt!546516 (_1!9931 (ite c!118114 (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118110 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) (Some!687 (_2!9931 (ite c!118114 (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118110 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!132807 (= lt!546514 (lemmaContainsTupThenGetReturnValue!312 lt!546516 (_1!9931 (ite c!118114 (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118110 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9931 (ite c!118114 (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118110 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!132807 (= lt!546516 (insertStrictlySorted!404 (toList!8927 (ite c!118114 lt!546365 lt!546359)) (_1!9931 (ite c!118114 (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118110 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9931 (ite c!118114 (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118110 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!132807 (= (+!3961 (ite c!118114 lt!546365 lt!546359) (ite c!118114 (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118110 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) lt!546513)))

(declare-fun b!1205043 () Bool)

(declare-fun res!801665 () Bool)

(assert (=> b!1205043 (=> (not res!801665) (not e!684368))))

(assert (=> b!1205043 (= res!801665 (= (getValueByKey!637 (toList!8927 lt!546513) (_1!9931 (ite c!118114 (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118110 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) (Some!687 (_2!9931 (ite c!118114 (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118110 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun b!1205044 () Bool)

(assert (=> b!1205044 (= e!684368 (contains!6932 (toList!8927 lt!546513) (ite c!118114 (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118110 (tuple2!19843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19843 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and d!132807 res!801664) b!1205043))

(assert (= (and b!1205043 res!801665) b!1205044))

(declare-fun m!1111121 () Bool)

(assert (=> d!132807 m!1111121))

(declare-fun m!1111123 () Bool)

(assert (=> d!132807 m!1111123))

(declare-fun m!1111125 () Bool)

(assert (=> d!132807 m!1111125))

(declare-fun m!1111127 () Bool)

(assert (=> d!132807 m!1111127))

(declare-fun m!1111129 () Bool)

(assert (=> b!1205043 m!1111129))

(declare-fun m!1111131 () Bool)

(assert (=> b!1205044 m!1111131))

(assert (=> bm!58310 d!132807))

(declare-fun d!132809 () Bool)

(assert (=> d!132809 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1204780 d!132809))

(declare-fun d!132811 () Bool)

(assert (=> d!132811 (contains!6931 (+!3961 (ite c!118114 lt!546365 lt!546359) (tuple2!19843 (ite c!118114 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118110 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118114 minValue!944 (ite c!118110 zeroValue!944 minValue!944)))) k0!934)))

(declare-fun lt!546517 () Unit!39870)

(assert (=> d!132811 (= lt!546517 (choose!1802 (ite c!118114 lt!546365 lt!546359) (ite c!118114 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118110 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118114 minValue!944 (ite c!118110 zeroValue!944 minValue!944)) k0!934))))

(assert (=> d!132811 (contains!6931 (ite c!118114 lt!546365 lt!546359) k0!934)))

(assert (=> d!132811 (= (addStillContains!1025 (ite c!118114 lt!546365 lt!546359) (ite c!118114 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118110 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118114 minValue!944 (ite c!118110 zeroValue!944 minValue!944)) k0!934) lt!546517)))

(declare-fun bs!34093 () Bool)

(assert (= bs!34093 d!132811))

(declare-fun m!1111133 () Bool)

(assert (=> bs!34093 m!1111133))

(assert (=> bs!34093 m!1111133))

(declare-fun m!1111135 () Bool)

(assert (=> bs!34093 m!1111135))

(declare-fun m!1111137 () Bool)

(assert (=> bs!34093 m!1111137))

(declare-fun m!1111139 () Bool)

(assert (=> bs!34093 m!1111139))

(assert (=> bm!58315 d!132811))

(declare-fun b!1205045 () Bool)

(declare-fun e!684369 () Bool)

(declare-fun e!684371 () Bool)

(assert (=> b!1205045 (= e!684369 e!684371)))

(declare-fun lt!546518 () (_ BitVec 64))

(assert (=> b!1205045 (= lt!546518 (select (arr!37637 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!546519 () Unit!39870)

(assert (=> b!1205045 (= lt!546519 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!546518 #b00000000000000000000000000000000))))

(assert (=> b!1205045 (arrayContainsKey!0 _keys!1208 lt!546518 #b00000000000000000000000000000000)))

(declare-fun lt!546520 () Unit!39870)

(assert (=> b!1205045 (= lt!546520 lt!546519)))

(declare-fun res!801666 () Bool)

(assert (=> b!1205045 (= res!801666 (= (seekEntryOrOpen!0 (select (arr!37637 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9933 #b00000000000000000000000000000000)))))

(assert (=> b!1205045 (=> (not res!801666) (not e!684371))))

(declare-fun b!1205046 () Bool)

(declare-fun call!58362 () Bool)

(assert (=> b!1205046 (= e!684371 call!58362)))

(declare-fun bm!58359 () Bool)

(assert (=> bm!58359 (= call!58362 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1205047 () Bool)

(assert (=> b!1205047 (= e!684369 call!58362)))

(declare-fun d!132813 () Bool)

(declare-fun res!801667 () Bool)

(declare-fun e!684370 () Bool)

(assert (=> d!132813 (=> res!801667 e!684370)))

(assert (=> d!132813 (= res!801667 (bvsge #b00000000000000000000000000000000 (size!38174 _keys!1208)))))

(assert (=> d!132813 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!684370)))

(declare-fun b!1205048 () Bool)

(assert (=> b!1205048 (= e!684370 e!684369)))

(declare-fun c!118172 () Bool)

(assert (=> b!1205048 (= c!118172 (validKeyInArray!0 (select (arr!37637 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!132813 (not res!801667)) b!1205048))

(assert (= (and b!1205048 c!118172) b!1205045))

(assert (= (and b!1205048 (not c!118172)) b!1205047))

(assert (= (and b!1205045 res!801666) b!1205046))

(assert (= (or b!1205046 b!1205047) bm!58359))

(assert (=> b!1205045 m!1110929))

(declare-fun m!1111141 () Bool)

(assert (=> b!1205045 m!1111141))

(declare-fun m!1111143 () Bool)

(assert (=> b!1205045 m!1111143))

(assert (=> b!1205045 m!1110929))

(declare-fun m!1111145 () Bool)

(assert (=> b!1205045 m!1111145))

(declare-fun m!1111147 () Bool)

(assert (=> bm!58359 m!1111147))

(assert (=> b!1205048 m!1110929))

(assert (=> b!1205048 m!1110929))

(assert (=> b!1205048 m!1111095))

(assert (=> b!1204791 d!132813))

(declare-fun b!1205055 () Bool)

(declare-fun e!684377 () Bool)

(assert (=> b!1205055 (= e!684377 tp_is_empty!30621)))

(declare-fun mapIsEmpty!47790 () Bool)

(declare-fun mapRes!47790 () Bool)

(assert (=> mapIsEmpty!47790 mapRes!47790))

(declare-fun mapNonEmpty!47790 () Bool)

(declare-fun tp!90761 () Bool)

(assert (=> mapNonEmpty!47790 (= mapRes!47790 (and tp!90761 e!684377))))

(declare-fun mapKey!47790 () (_ BitVec 32))

(declare-fun mapRest!47790 () (Array (_ BitVec 32) ValueCell!14601))

(declare-fun mapValue!47790 () ValueCell!14601)

(assert (=> mapNonEmpty!47790 (= mapRest!47784 (store mapRest!47790 mapKey!47790 mapValue!47790))))

(declare-fun b!1205056 () Bool)

(declare-fun e!684376 () Bool)

(assert (=> b!1205056 (= e!684376 tp_is_empty!30621)))

(declare-fun condMapEmpty!47790 () Bool)

(declare-fun mapDefault!47790 () ValueCell!14601)

(assert (=> mapNonEmpty!47784 (= condMapEmpty!47790 (= mapRest!47784 ((as const (Array (_ BitVec 32) ValueCell!14601)) mapDefault!47790)))))

(assert (=> mapNonEmpty!47784 (= tp!90752 (and e!684376 mapRes!47790))))

(assert (= (and mapNonEmpty!47784 condMapEmpty!47790) mapIsEmpty!47790))

(assert (= (and mapNonEmpty!47784 (not condMapEmpty!47790)) mapNonEmpty!47790))

(assert (= (and mapNonEmpty!47790 ((_ is ValueCellFull!14601) mapValue!47790)) b!1205055))

(assert (= (and mapNonEmpty!47784 ((_ is ValueCellFull!14601) mapDefault!47790)) b!1205056))

(declare-fun m!1111149 () Bool)

(assert (=> mapNonEmpty!47790 m!1111149))

(declare-fun b_lambda!21317 () Bool)

(assert (= b_lambda!21311 (or (and start!100752 b_free!25917) b_lambda!21317)))

(declare-fun b_lambda!21319 () Bool)

(assert (= b_lambda!21303 (or (and start!100752 b_free!25917) b_lambda!21319)))

(declare-fun b_lambda!21321 () Bool)

(assert (= b_lambda!21313 (or (and start!100752 b_free!25917) b_lambda!21321)))

(declare-fun b_lambda!21323 () Bool)

(assert (= b_lambda!21301 (or (and start!100752 b_free!25917) b_lambda!21323)))

(declare-fun b_lambda!21325 () Bool)

(assert (= b_lambda!21307 (or (and start!100752 b_free!25917) b_lambda!21325)))

(declare-fun b_lambda!21327 () Bool)

(assert (= b_lambda!21305 (or (and start!100752 b_free!25917) b_lambda!21327)))

(declare-fun b_lambda!21329 () Bool)

(assert (= b_lambda!21299 (or (and start!100752 b_free!25917) b_lambda!21329)))

(declare-fun b_lambda!21331 () Bool)

(assert (= b_lambda!21309 (or (and start!100752 b_free!25917) b_lambda!21331)))

(declare-fun b_lambda!21333 () Bool)

(assert (= b_lambda!21315 (or (and start!100752 b_free!25917) b_lambda!21333)))

(check-sat (not b_next!25917) (not d!132793) (not b_lambda!21329) (not b!1204906) (not b!1204905) (not b!1204993) (not b!1204997) (not b!1205002) (not b!1204984) (not b!1204985) (not d!132773) (not b!1204999) (not b_lambda!21331) (not b!1204913) (not b_lambda!21321) (not mapNonEmpty!47790) (not b!1204990) (not d!132807) (not b_lambda!21317) (not b!1204899) (not bm!58344) (not bm!58345) (not b!1204963) (not b!1204917) (not b!1204991) (not b!1204970) (not b_lambda!21333) (not bm!58348) (not d!132781) (not d!132771) (not b_lambda!21323) (not b!1204977) (not b!1204967) (not b!1205042) (not b!1205018) (not d!132801) (not bm!58349) (not b!1204966) (not b!1205017) (not b!1204961) (not bm!58359) (not b!1204955) (not b!1205031) (not b!1204992) (not b!1204954) (not b!1205028) (not b!1204980) (not b!1204975) (not b!1204969) (not b!1204978) (not bm!58350) (not bm!58354) (not b!1205043) (not b!1205045) (not d!132783) (not b!1204951) (not b!1205000) (not d!132811) (not d!132777) (not b!1205036) (not b!1205004) (not b!1205040) (not b_lambda!21325) b_and!42837 (not b!1205019) (not d!132787) (not b_lambda!21319) (not d!132799) (not b!1204981) (not b!1204957) tp_is_empty!30621 (not b!1204915) (not d!132779) (not b!1205044) (not bm!58357) (not b!1205048) (not b!1204988) (not b!1204974) (not d!132767) (not b_lambda!21297) (not b_lambda!21327) (not b!1204973) (not b!1204987) (not b!1205041) (not b!1204926) (not b!1204958) (not d!132769) (not b!1205003) (not b!1204962) (not d!132785) (not b!1204960) (not b!1204972) (not b!1204996) (not bm!58351) (not bm!58358))
(check-sat b_and!42837 (not b_next!25917))
