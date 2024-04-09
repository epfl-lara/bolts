; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98786 () Bool)

(assert start!98786)

(declare-fun b_free!24355 () Bool)

(declare-fun b_next!24355 () Bool)

(assert (=> start!98786 (= b_free!24355 (not b_next!24355))))

(declare-fun tp!85777 () Bool)

(declare-fun b_and!39573 () Bool)

(assert (=> start!98786 (= tp!85777 b_and!39573)))

(declare-fun b!1151278 () Bool)

(declare-fun res!765706 () Bool)

(declare-fun e!654854 () Bool)

(assert (=> b!1151278 (=> (not res!765706) (not e!654854))))

(declare-datatypes ((array!74574 0))(
  ( (array!74575 (arr!35934 (Array (_ BitVec 32) (_ BitVec 64))) (size!36471 (_ BitVec 32))) )
))
(declare-fun lt!515415 () array!74574)

(declare-datatypes ((List!25277 0))(
  ( (Nil!25274) (Cons!25273 (h!26482 (_ BitVec 64)) (t!36631 List!25277)) )
))
(declare-fun arrayNoDuplicates!0 (array!74574 (_ BitVec 32) List!25277) Bool)

(assert (=> b!1151278 (= res!765706 (arrayNoDuplicates!0 lt!515415 #b00000000000000000000000000000000 Nil!25274))))

(declare-fun b!1151279 () Bool)

(declare-fun res!765707 () Bool)

(declare-fun e!654851 () Bool)

(assert (=> b!1151279 (=> (not res!765707) (not e!654851))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1151279 (= res!765707 (validMask!0 mask!1564))))

(declare-fun b!1151280 () Bool)

(declare-datatypes ((V!43641 0))(
  ( (V!43642 (val!14499 Int)) )
))
(declare-datatypes ((tuple2!18488 0))(
  ( (tuple2!18489 (_1!9254 (_ BitVec 64)) (_2!9254 V!43641)) )
))
(declare-datatypes ((List!25278 0))(
  ( (Nil!25275) (Cons!25274 (h!26483 tuple2!18488) (t!36632 List!25278)) )
))
(declare-datatypes ((ListLongMap!16469 0))(
  ( (ListLongMap!16470 (toList!8250 List!25278)) )
))
(declare-fun lt!515411 () ListLongMap!16469)

(declare-fun minValue!944 () V!43641)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6743 (ListLongMap!16469 (_ BitVec 64)) Bool)

(declare-fun +!3585 (ListLongMap!16469 tuple2!18488) ListLongMap!16469)

(assert (=> b!1151280 (contains!6743 (+!3585 lt!515411 (tuple2!18489 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!37787 0))(
  ( (Unit!37788) )
))
(declare-fun lt!515405 () Unit!37787)

(declare-fun addStillContains!885 (ListLongMap!16469 (_ BitVec 64) V!43641 (_ BitVec 64)) Unit!37787)

(assert (=> b!1151280 (= lt!515405 (addStillContains!885 lt!515411 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!53803 () Bool)

(assert (=> b!1151280 call!53803))

(declare-fun call!53804 () ListLongMap!16469)

(assert (=> b!1151280 (= lt!515411 call!53804)))

(declare-fun lt!515406 () Unit!37787)

(declare-fun call!53808 () Unit!37787)

(assert (=> b!1151280 (= lt!515406 call!53808)))

(declare-fun e!654845 () Unit!37787)

(assert (=> b!1151280 (= e!654845 lt!515405)))

(declare-fun b!1151281 () Bool)

(declare-fun e!654848 () Bool)

(assert (=> b!1151281 (= e!654854 (not e!654848))))

(declare-fun res!765702 () Bool)

(assert (=> b!1151281 (=> res!765702 e!654848)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1151281 (= res!765702 (bvsgt from!1455 i!673))))

(declare-fun _keys!1208 () array!74574)

(declare-fun arrayContainsKey!0 (array!74574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1151281 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!515403 () Unit!37787)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74574 (_ BitVec 64) (_ BitVec 32)) Unit!37787)

(assert (=> b!1151281 (= lt!515403 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun c!114004 () Bool)

(declare-fun call!53805 () ListLongMap!16469)

(declare-fun bm!53798 () Bool)

(assert (=> bm!53798 (= call!53803 (contains!6743 (ite c!114004 lt!515411 call!53805) k!934))))

(declare-fun b!1151282 () Bool)

(declare-fun e!654840 () Bool)

(declare-fun e!654842 () Bool)

(assert (=> b!1151282 (= e!654840 e!654842)))

(declare-fun res!765704 () Bool)

(assert (=> b!1151282 (=> res!765704 e!654842)))

(assert (=> b!1151282 (= res!765704 (not (= (select (arr!35934 _keys!1208) from!1455) k!934)))))

(declare-fun e!654849 () Bool)

(assert (=> b!1151282 e!654849))

(declare-fun c!114002 () Bool)

(assert (=> b!1151282 (= c!114002 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43641)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13733 0))(
  ( (ValueCellFull!13733 (v!17137 V!43641)) (EmptyCell!13733) )
))
(declare-datatypes ((array!74576 0))(
  ( (array!74577 (arr!35935 (Array (_ BitVec 32) ValueCell!13733)) (size!36472 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74576)

(declare-fun lt!515410 () Unit!37787)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!571 (array!74574 array!74576 (_ BitVec 32) (_ BitVec 32) V!43641 V!43641 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37787)

(assert (=> b!1151282 (= lt!515410 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!571 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53799 () Bool)

(declare-fun call!53806 () Bool)

(assert (=> bm!53799 (= call!53806 call!53803)))

(declare-fun b!1151283 () Bool)

(declare-fun e!654847 () Unit!37787)

(declare-fun Unit!37789 () Unit!37787)

(assert (=> b!1151283 (= e!654847 Unit!37789)))

(declare-fun b!1151284 () Bool)

(assert (=> b!1151284 call!53806))

(declare-fun lt!515400 () Unit!37787)

(declare-fun call!53802 () Unit!37787)

(assert (=> b!1151284 (= lt!515400 call!53802)))

(assert (=> b!1151284 (= e!654847 lt!515400)))

(declare-fun e!654852 () Bool)

(declare-fun b!1151285 () Bool)

(assert (=> b!1151285 (= e!654852 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!515407 () array!74576)

(declare-fun bm!53800 () Bool)

(declare-fun call!53807 () ListLongMap!16469)

(declare-fun getCurrentListMapNoExtraKeys!4690 (array!74574 array!74576 (_ BitVec 32) (_ BitVec 32) V!43641 V!43641 (_ BitVec 32) Int) ListLongMap!16469)

(assert (=> bm!53800 (= call!53807 (getCurrentListMapNoExtraKeys!4690 lt!515415 lt!515407 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151286 () Bool)

(declare-fun res!765701 () Bool)

(assert (=> b!1151286 (=> (not res!765701) (not e!654851))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74574 (_ BitVec 32)) Bool)

(assert (=> b!1151286 (= res!765701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1151287 () Bool)

(assert (=> b!1151287 (= e!654851 e!654854)))

(declare-fun res!765703 () Bool)

(assert (=> b!1151287 (=> (not res!765703) (not e!654854))))

(assert (=> b!1151287 (= res!765703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!515415 mask!1564))))

(assert (=> b!1151287 (= lt!515415 (array!74575 (store (arr!35934 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36471 _keys!1208)))))

(declare-fun b!1151288 () Bool)

(declare-fun e!654855 () Bool)

(declare-fun tp_is_empty!28885 () Bool)

(assert (=> b!1151288 (= e!654855 tp_is_empty!28885)))

(declare-fun c!114005 () Bool)

(declare-fun bm!53801 () Bool)

(declare-fun lt!515413 () ListLongMap!16469)

(assert (=> bm!53801 (= call!53804 (+!3585 lt!515413 (ite (or c!114004 c!114005) (tuple2!18489 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18489 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1151289 () Bool)

(declare-fun res!765700 () Bool)

(assert (=> b!1151289 (=> (not res!765700) (not e!654851))))

(assert (=> b!1151289 (= res!765700 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36471 _keys!1208))))))

(declare-fun mapNonEmpty!45152 () Bool)

(declare-fun mapRes!45152 () Bool)

(declare-fun tp!85776 () Bool)

(declare-fun e!654843 () Bool)

(assert (=> mapNonEmpty!45152 (= mapRes!45152 (and tp!85776 e!654843))))

(declare-fun mapValue!45152 () ValueCell!13733)

(declare-fun mapRest!45152 () (Array (_ BitVec 32) ValueCell!13733))

(declare-fun mapKey!45152 () (_ BitVec 32))

(assert (=> mapNonEmpty!45152 (= (arr!35935 _values!996) (store mapRest!45152 mapKey!45152 mapValue!45152))))

(declare-fun b!1151290 () Bool)

(declare-fun e!654846 () Unit!37787)

(declare-fun Unit!37790 () Unit!37787)

(assert (=> b!1151290 (= e!654846 Unit!37790)))

(declare-fun lt!515414 () Bool)

(assert (=> b!1151290 (= lt!515414 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1151290 (= c!114004 (and (not lt!515414) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!515408 () Unit!37787)

(assert (=> b!1151290 (= lt!515408 e!654845)))

(declare-fun lt!515401 () Unit!37787)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!469 (array!74574 array!74576 (_ BitVec 32) (_ BitVec 32) V!43641 V!43641 (_ BitVec 64) (_ BitVec 32) Int) Unit!37787)

(assert (=> b!1151290 (= lt!515401 (lemmaListMapContainsThenArrayContainsFrom!469 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114001 () Bool)

(assert (=> b!1151290 (= c!114001 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765711 () Bool)

(assert (=> b!1151290 (= res!765711 e!654852)))

(declare-fun e!654839 () Bool)

(assert (=> b!1151290 (=> (not res!765711) (not e!654839))))

(assert (=> b!1151290 e!654839))

(declare-fun lt!515402 () Unit!37787)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74574 (_ BitVec 32) (_ BitVec 32)) Unit!37787)

(assert (=> b!1151290 (= lt!515402 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1151290 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25274)))

(declare-fun lt!515404 () Unit!37787)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74574 (_ BitVec 64) (_ BitVec 32) List!25277) Unit!37787)

(assert (=> b!1151290 (= lt!515404 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25274))))

(assert (=> b!1151290 false))

(declare-fun b!1151291 () Bool)

(declare-fun call!53801 () ListLongMap!16469)

(declare-fun -!1335 (ListLongMap!16469 (_ BitVec 64)) ListLongMap!16469)

(assert (=> b!1151291 (= e!654849 (= call!53807 (-!1335 call!53801 k!934)))))

(declare-fun b!1151292 () Bool)

(declare-fun lt!515412 () ListLongMap!16469)

(declare-fun e!654841 () Bool)

(assert (=> b!1151292 (= e!654841 (= lt!515412 (getCurrentListMapNoExtraKeys!4690 lt!515415 lt!515407 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun bm!53802 () Bool)

(assert (=> bm!53802 (= call!53808 (addStillContains!885 lt!515413 (ite (or c!114004 c!114005) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114004 c!114005) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1151293 () Bool)

(declare-fun res!765699 () Bool)

(assert (=> b!1151293 (=> (not res!765699) (not e!654851))))

(assert (=> b!1151293 (= res!765699 (= (select (arr!35934 _keys!1208) i!673) k!934))))

(declare-fun b!1151294 () Bool)

(assert (=> b!1151294 (= e!654852 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!515414) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1151295 () Bool)

(assert (=> b!1151295 (= e!654843 tp_is_empty!28885)))

(declare-fun bm!53803 () Bool)

(assert (=> bm!53803 (= call!53802 call!53808)))

(declare-fun bm!53804 () Bool)

(assert (=> bm!53804 (= call!53801 (getCurrentListMapNoExtraKeys!4690 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151296 () Bool)

(declare-fun e!654853 () Bool)

(assert (=> b!1151296 (= e!654853 (and e!654855 mapRes!45152))))

(declare-fun condMapEmpty!45152 () Bool)

(declare-fun mapDefault!45152 () ValueCell!13733)

