; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99036 () Bool)

(assert start!99036)

(declare-fun b_free!24605 () Bool)

(declare-fun b_next!24605 () Bool)

(assert (=> start!99036 (= b_free!24605 (not b_next!24605))))

(declare-fun tp!86527 () Bool)

(declare-fun b_and!40073 () Bool)

(assert (=> start!99036 (= tp!86527 b_and!40073)))

(declare-datatypes ((array!75060 0))(
  ( (array!75061 (arr!36177 (Array (_ BitVec 32) (_ BitVec 64))) (size!36714 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75060)

(declare-fun b!1162778 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!661227 () Bool)

(declare-fun arrayContainsKey!0 (array!75060 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1162778 (= e!661227 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162779 () Bool)

(declare-fun res!771327 () Bool)

(declare-fun e!661217 () Bool)

(assert (=> b!1162779 (=> (not res!771327) (not e!661217))))

(declare-fun lt!523654 () array!75060)

(declare-datatypes ((List!25494 0))(
  ( (Nil!25491) (Cons!25490 (h!26699 (_ BitVec 64)) (t!37098 List!25494)) )
))
(declare-fun arrayNoDuplicates!0 (array!75060 (_ BitVec 32) List!25494) Bool)

(assert (=> b!1162779 (= res!771327 (arrayNoDuplicates!0 lt!523654 #b00000000000000000000000000000000 Nil!25491))))

(declare-datatypes ((V!43973 0))(
  ( (V!43974 (val!14624 Int)) )
))
(declare-fun zeroValue!944 () V!43973)

(declare-fun c!116255 () Bool)

(declare-fun bm!56798 () Bool)

(declare-datatypes ((tuple2!18718 0))(
  ( (tuple2!18719 (_1!9369 (_ BitVec 64)) (_2!9369 V!43973)) )
))
(declare-datatypes ((List!25495 0))(
  ( (Nil!25492) (Cons!25491 (h!26700 tuple2!18718) (t!37099 List!25495)) )
))
(declare-datatypes ((ListLongMap!16699 0))(
  ( (ListLongMap!16700 (toList!8365 List!25495)) )
))
(declare-fun lt!523658 () ListLongMap!16699)

(declare-fun call!56807 () ListLongMap!16699)

(declare-fun c!116252 () Bool)

(declare-fun minValue!944 () V!43973)

(declare-fun +!3686 (ListLongMap!16699 tuple2!18718) ListLongMap!16699)

(assert (=> bm!56798 (= call!56807 (+!3686 lt!523658 (ite (or c!116252 c!116255) (tuple2!18719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1162780 () Bool)

(declare-fun lt!523655 () ListLongMap!16699)

(declare-fun contains!6843 (ListLongMap!16699 (_ BitVec 64)) Bool)

(assert (=> b!1162780 (contains!6843 (+!3686 lt!523655 (tuple2!18719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!38265 0))(
  ( (Unit!38266) )
))
(declare-fun lt!523663 () Unit!38265)

(declare-fun addStillContains!984 (ListLongMap!16699 (_ BitVec 64) V!43973 (_ BitVec 64)) Unit!38265)

(assert (=> b!1162780 (= lt!523663 (addStillContains!984 lt!523655 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!56806 () Bool)

(assert (=> b!1162780 call!56806))

(assert (=> b!1162780 (= lt!523655 call!56807)))

(declare-fun lt!523656 () Unit!38265)

(declare-fun call!56802 () Unit!38265)

(assert (=> b!1162780 (= lt!523656 call!56802)))

(declare-fun e!661215 () Unit!38265)

(assert (=> b!1162780 (= e!661215 lt!523663)))

(declare-fun mapIsEmpty!45527 () Bool)

(declare-fun mapRes!45527 () Bool)

(assert (=> mapIsEmpty!45527 mapRes!45527))

(declare-fun bm!56799 () Bool)

(declare-fun call!56801 () ListLongMap!16699)

(assert (=> bm!56799 (= call!56801 call!56807)))

(declare-fun b!1162781 () Bool)

(declare-fun e!661220 () Unit!38265)

(declare-fun e!661214 () Unit!38265)

(assert (=> b!1162781 (= e!661220 e!661214)))

(declare-fun c!116253 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!523645 () Bool)

(assert (=> b!1162781 (= c!116253 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523645))))

(declare-fun b!1162782 () Bool)

(declare-fun res!771331 () Bool)

(declare-fun e!661226 () Bool)

(assert (=> b!1162782 (=> (not res!771331) (not e!661226))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1162782 (= res!771331 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36714 _keys!1208))))))

(declare-fun bm!56800 () Bool)

(declare-fun call!56804 () Unit!38265)

(assert (=> bm!56800 (= call!56804 call!56802)))

(declare-fun b!1162783 () Bool)

(assert (=> b!1162783 (= e!661226 e!661217)))

(declare-fun res!771328 () Bool)

(assert (=> b!1162783 (=> (not res!771328) (not e!661217))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75060 (_ BitVec 32)) Bool)

(assert (=> b!1162783 (= res!771328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!523654 mask!1564))))

(assert (=> b!1162783 (= lt!523654 (array!75061 (store (arr!36177 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36714 _keys!1208)))))

(declare-fun res!771326 () Bool)

(assert (=> start!99036 (=> (not res!771326) (not e!661226))))

(assert (=> start!99036 (= res!771326 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36714 _keys!1208))))))

(assert (=> start!99036 e!661226))

(declare-fun tp_is_empty!29135 () Bool)

(assert (=> start!99036 tp_is_empty!29135))

(declare-fun array_inv!27554 (array!75060) Bool)

(assert (=> start!99036 (array_inv!27554 _keys!1208)))

(assert (=> start!99036 true))

(assert (=> start!99036 tp!86527))

(declare-datatypes ((ValueCell!13858 0))(
  ( (ValueCellFull!13858 (v!17262 V!43973)) (EmptyCell!13858) )
))
(declare-datatypes ((array!75062 0))(
  ( (array!75063 (arr!36178 (Array (_ BitVec 32) ValueCell!13858)) (size!36715 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75062)

(declare-fun e!661216 () Bool)

(declare-fun array_inv!27555 (array!75062) Bool)

(assert (=> start!99036 (and (array_inv!27555 _values!996) e!661216)))

(declare-fun bm!56801 () Bool)

(assert (=> bm!56801 (= call!56802 (addStillContains!984 lt!523658 (ite (or c!116252 c!116255) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!116252 c!116255) zeroValue!944 minValue!944) k!934))))

(declare-fun mapNonEmpty!45527 () Bool)

(declare-fun tp!86526 () Bool)

(declare-fun e!661223 () Bool)

(assert (=> mapNonEmpty!45527 (= mapRes!45527 (and tp!86526 e!661223))))

(declare-fun mapRest!45527 () (Array (_ BitVec 32) ValueCell!13858))

(declare-fun mapKey!45527 () (_ BitVec 32))

(declare-fun mapValue!45527 () ValueCell!13858)

(assert (=> mapNonEmpty!45527 (= (arr!36178 _values!996) (store mapRest!45527 mapKey!45527 mapValue!45527))))

(declare-fun bm!56802 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun call!56803 () ListLongMap!16699)

(declare-fun getCurrentListMapNoExtraKeys!4799 (array!75060 array!75062 (_ BitVec 32) (_ BitVec 32) V!43973 V!43973 (_ BitVec 32) Int) ListLongMap!16699)

(assert (=> bm!56802 (= call!56803 (getCurrentListMapNoExtraKeys!4799 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162784 () Bool)

(declare-fun call!56805 () Bool)

(assert (=> b!1162784 call!56805))

(declare-fun lt!523647 () Unit!38265)

(assert (=> b!1162784 (= lt!523647 call!56804)))

(assert (=> b!1162784 (= e!661214 lt!523647)))

(declare-fun b!1162785 () Bool)

(declare-fun e!661218 () Bool)

(declare-fun e!661222 () Bool)

(assert (=> b!1162785 (= e!661218 e!661222)))

(declare-fun res!771337 () Bool)

(assert (=> b!1162785 (=> res!771337 e!661222)))

(assert (=> b!1162785 (= res!771337 (not (= (select (arr!36177 _keys!1208) from!1455) k!934)))))

(declare-fun e!661219 () Bool)

(assert (=> b!1162785 e!661219))

(declare-fun c!116254 () Bool)

(assert (=> b!1162785 (= c!116254 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!523661 () Unit!38265)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!655 (array!75060 array!75062 (_ BitVec 32) (_ BitVec 32) V!43973 V!43973 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38265)

(assert (=> b!1162785 (= lt!523661 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!655 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162786 () Bool)

(assert (=> b!1162786 (= c!116255 (and (not lt!523645) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1162786 (= e!661215 e!661220)))

(declare-fun b!1162787 () Bool)

(declare-fun res!771334 () Bool)

(assert (=> b!1162787 (=> (not res!771334) (not e!661226))))

(assert (=> b!1162787 (= res!771334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1162788 () Bool)

(declare-fun res!771324 () Bool)

(assert (=> b!1162788 (=> (not res!771324) (not e!661226))))

(assert (=> b!1162788 (= res!771324 (= (select (arr!36177 _keys!1208) i!673) k!934))))

(declare-fun b!1162789 () Bool)

(assert (=> b!1162789 (= e!661223 tp_is_empty!29135)))

(declare-fun bm!56803 () Bool)

(assert (=> bm!56803 (= call!56806 (contains!6843 (ite c!116252 lt!523655 call!56801) k!934))))

(declare-fun b!1162790 () Bool)

(declare-fun lt!523646 () Unit!38265)

(assert (=> b!1162790 (= e!661220 lt!523646)))

(assert (=> b!1162790 (= lt!523646 call!56804)))

(assert (=> b!1162790 call!56805))

(declare-fun call!56808 () ListLongMap!16699)

(declare-fun b!1162791 () Bool)

(declare-fun -!1433 (ListLongMap!16699 (_ BitVec 64)) ListLongMap!16699)

(assert (=> b!1162791 (= e!661219 (= call!56808 (-!1433 call!56803 k!934)))))

(declare-fun b!1162792 () Bool)

(declare-fun e!661225 () Bool)

(assert (=> b!1162792 (= e!661225 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162793 () Bool)

(declare-fun e!661230 () Bool)

(assert (=> b!1162793 (= e!661230 e!661218)))

(declare-fun res!771336 () Bool)

(assert (=> b!1162793 (=> res!771336 e!661218)))

(assert (=> b!1162793 (= res!771336 (not (= from!1455 i!673)))))

(declare-fun lt!523651 () ListLongMap!16699)

(declare-fun lt!523660 () array!75062)

(assert (=> b!1162793 (= lt!523651 (getCurrentListMapNoExtraKeys!4799 lt!523654 lt!523660 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!523650 () V!43973)

(assert (=> b!1162793 (= lt!523660 (array!75063 (store (arr!36178 _values!996) i!673 (ValueCellFull!13858 lt!523650)) (size!36715 _values!996)))))

(declare-fun dynLambda!2797 (Int (_ BitVec 64)) V!43973)

(assert (=> b!1162793 (= lt!523650 (dynLambda!2797 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!523659 () ListLongMap!16699)

(assert (=> b!1162793 (= lt!523659 (getCurrentListMapNoExtraKeys!4799 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!56804 () Bool)

(assert (=> bm!56804 (= call!56805 call!56806)))

(declare-fun b!1162794 () Bool)

(declare-fun res!771335 () Bool)

(assert (=> b!1162794 (=> (not res!771335) (not e!661226))))

(assert (=> b!1162794 (= res!771335 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25491))))

(declare-fun b!1162795 () Bool)

(assert (=> b!1162795 (= e!661219 (= call!56808 call!56803))))

(declare-fun b!1162796 () Bool)

(declare-fun res!771338 () Bool)

(assert (=> b!1162796 (=> (not res!771338) (not e!661226))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1162796 (= res!771338 (validKeyInArray!0 k!934))))

(declare-fun e!661229 () Bool)

(declare-fun lt!523652 () ListLongMap!16699)

(declare-fun b!1162797 () Bool)

(assert (=> b!1162797 (= e!661229 (= lt!523652 (getCurrentListMapNoExtraKeys!4799 lt!523654 lt!523660 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1162798 () Bool)

(declare-fun e!661224 () Bool)

(assert (=> b!1162798 (= e!661216 (and e!661224 mapRes!45527))))

(declare-fun condMapEmpty!45527 () Bool)

(declare-fun mapDefault!45527 () ValueCell!13858)

