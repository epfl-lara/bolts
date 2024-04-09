; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100594 () Bool)

(assert start!100594)

(declare-fun b_free!25881 () Bool)

(declare-fun b_next!25881 () Bool)

(assert (=> start!100594 (= b_free!25881 (not b_next!25881))))

(declare-fun tp!90634 () Bool)

(declare-fun b_and!42663 () Bool)

(assert (=> start!100594 (= tp!90634 b_and!42663)))

(declare-fun b!1202459 () Bool)

(declare-fun res!800413 () Bool)

(declare-fun e!682859 () Bool)

(assert (=> b!1202459 (=> (not res!800413) (not e!682859))))

(declare-datatypes ((array!77920 0))(
  ( (array!77921 (arr!37601 (Array (_ BitVec 32) (_ BitVec 64))) (size!38138 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77920)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45907 0))(
  ( (V!45908 (val!15349 Int)) )
))
(declare-datatypes ((ValueCell!14583 0))(
  ( (ValueCellFull!14583 (v!17988 V!45907)) (EmptyCell!14583) )
))
(declare-datatypes ((array!77922 0))(
  ( (array!77923 (arr!37602 (Array (_ BitVec 32) ValueCell!14583)) (size!38139 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77922)

(assert (=> b!1202459 (= res!800413 (and (= (size!38139 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38138 _keys!1208) (size!38139 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1202460 () Bool)

(declare-fun e!682864 () Bool)

(declare-fun e!682855 () Bool)

(assert (=> b!1202460 (= e!682864 (not e!682855))))

(declare-fun res!800418 () Bool)

(assert (=> b!1202460 (=> res!800418 e!682855)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1202460 (= res!800418 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1202460 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39788 0))(
  ( (Unit!39789) )
))
(declare-fun lt!545000 () Unit!39788)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77920 (_ BitVec 64) (_ BitVec 32)) Unit!39788)

(assert (=> b!1202460 (= lt!545000 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun zeroValue!944 () V!45907)

(declare-fun lt!545001 () array!77920)

(declare-fun lt!544992 () array!77922)

(declare-datatypes ((tuple2!19806 0))(
  ( (tuple2!19807 (_1!9913 (_ BitVec 64)) (_2!9913 V!45907)) )
))
(declare-datatypes ((List!26635 0))(
  ( (Nil!26632) (Cons!26631 (h!27840 tuple2!19806) (t!39503 List!26635)) )
))
(declare-datatypes ((ListLongMap!17787 0))(
  ( (ListLongMap!17788 (toList!8909 List!26635)) )
))
(declare-fun call!57777 () ListLongMap!17787)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45907)

(declare-fun bm!57768 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5320 (array!77920 array!77922 (_ BitVec 32) (_ BitVec 32) V!45907 V!45907 (_ BitVec 32) Int) ListLongMap!17787)

(assert (=> bm!57768 (= call!57777 (getCurrentListMapNoExtraKeys!5320 lt!545001 lt!544992 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202461 () Bool)

(declare-fun e!682851 () Bool)

(assert (=> b!1202461 (= e!682855 e!682851)))

(declare-fun res!800410 () Bool)

(assert (=> b!1202461 (=> res!800410 e!682851)))

(assert (=> b!1202461 (= res!800410 (not (= from!1455 i!673)))))

(declare-fun lt!544996 () ListLongMap!17787)

(assert (=> b!1202461 (= lt!544996 (getCurrentListMapNoExtraKeys!5320 lt!545001 lt!544992 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3244 (Int (_ BitVec 64)) V!45907)

(assert (=> b!1202461 (= lt!544992 (array!77923 (store (arr!37602 _values!996) i!673 (ValueCellFull!14583 (dynLambda!3244 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38139 _values!996)))))

(declare-fun lt!544994 () ListLongMap!17787)

(assert (=> b!1202461 (= lt!544994 (getCurrentListMapNoExtraKeys!5320 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1202462 () Bool)

(declare-fun call!57778 () ListLongMap!17787)

(declare-fun e!682860 () Bool)

(declare-fun -!1826 (ListLongMap!17787 (_ BitVec 64)) ListLongMap!17787)

(assert (=> b!1202462 (= e!682860 (= call!57777 (-!1826 call!57778 k0!934)))))

(declare-fun b!1202463 () Bool)

(declare-fun e!682854 () Unit!39788)

(declare-fun e!682863 () Unit!39788)

(assert (=> b!1202463 (= e!682854 e!682863)))

(declare-fun c!117631 () Bool)

(declare-fun lt!544991 () Bool)

(assert (=> b!1202463 (= c!117631 (and (not lt!544991) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!544999 () ListLongMap!17787)

(declare-fun c!117633 () Bool)

(declare-fun bm!57769 () Bool)

(declare-fun call!57771 () Unit!39788)

(declare-fun addStillContains!1009 (ListLongMap!17787 (_ BitVec 64) V!45907 (_ BitVec 64)) Unit!39788)

(assert (=> bm!57769 (= call!57771 (addStillContains!1009 lt!544999 (ite (or c!117633 c!117631) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117633 c!117631) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1202464 () Bool)

(declare-fun res!800419 () Bool)

(assert (=> b!1202464 (=> (not res!800419) (not e!682859))))

(assert (=> b!1202464 (= res!800419 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38138 _keys!1208))))))

(declare-fun call!57776 () ListLongMap!17787)

(declare-fun lt!544998 () ListLongMap!17787)

(declare-fun bm!57770 () Bool)

(declare-fun call!57772 () Bool)

(declare-fun contains!6909 (ListLongMap!17787 (_ BitVec 64)) Bool)

(assert (=> bm!57770 (= call!57772 (contains!6909 (ite c!117633 lt!544998 call!57776) k0!934))))

(declare-fun mapIsEmpty!47720 () Bool)

(declare-fun mapRes!47720 () Bool)

(assert (=> mapIsEmpty!47720 mapRes!47720))

(declare-fun bm!57771 () Bool)

(assert (=> bm!57771 (= call!57778 (getCurrentListMapNoExtraKeys!5320 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202465 () Bool)

(declare-fun e!682858 () Bool)

(declare-fun e!682857 () Bool)

(assert (=> b!1202465 (= e!682858 e!682857)))

(declare-fun res!800409 () Bool)

(assert (=> b!1202465 (=> res!800409 e!682857)))

(assert (=> b!1202465 (= res!800409 (not (contains!6909 lt!544999 k0!934)))))

(assert (=> b!1202465 (= lt!544999 (getCurrentListMapNoExtraKeys!5320 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202466 () Bool)

(declare-fun e!682861 () Bool)

(declare-fun tp_is_empty!30585 () Bool)

(assert (=> b!1202466 (= e!682861 tp_is_empty!30585)))

(declare-fun bm!57772 () Bool)

(declare-fun call!57775 () Unit!39788)

(assert (=> bm!57772 (= call!57775 call!57771)))

(declare-fun b!1202467 () Bool)

(declare-fun e!682862 () Unit!39788)

(declare-fun lt!544995 () Unit!39788)

(assert (=> b!1202467 (= e!682862 lt!544995)))

(assert (=> b!1202467 (= lt!544995 call!57775)))

(declare-fun call!57773 () Bool)

(assert (=> b!1202467 call!57773))

(declare-fun b!1202468 () Bool)

(declare-fun res!800414 () Bool)

(assert (=> b!1202468 (=> (not res!800414) (not e!682859))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1202468 (= res!800414 (validMask!0 mask!1564))))

(declare-fun b!1202469 () Bool)

(declare-fun res!800411 () Bool)

(assert (=> b!1202469 (=> (not res!800411) (not e!682859))))

(declare-datatypes ((List!26636 0))(
  ( (Nil!26633) (Cons!26632 (h!27841 (_ BitVec 64)) (t!39504 List!26636)) )
))
(declare-fun arrayNoDuplicates!0 (array!77920 (_ BitVec 32) List!26636) Bool)

(assert (=> b!1202469 (= res!800411 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26633))))

(declare-fun b!1202470 () Bool)

(assert (=> b!1202470 (= e!682851 e!682858)))

(declare-fun res!800415 () Bool)

(assert (=> b!1202470 (=> res!800415 e!682858)))

(assert (=> b!1202470 (= res!800415 (not (= (select (arr!37601 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1202470 e!682860))

(declare-fun c!117632 () Bool)

(assert (=> b!1202470 (= c!117632 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!544997 () Unit!39788)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1031 (array!77920 array!77922 (_ BitVec 32) (_ BitVec 32) V!45907 V!45907 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39788)

(assert (=> b!1202470 (= lt!544997 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1031 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202471 () Bool)

(declare-fun e!682853 () Bool)

(assert (=> b!1202471 (= e!682853 (and e!682861 mapRes!47720))))

(declare-fun condMapEmpty!47720 () Bool)

(declare-fun mapDefault!47720 () ValueCell!14583)

(assert (=> b!1202471 (= condMapEmpty!47720 (= (arr!37602 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14583)) mapDefault!47720)))))

(declare-fun b!1202472 () Bool)

(assert (=> b!1202472 (= e!682860 (= call!57777 call!57778))))

(declare-fun bm!57774 () Bool)

(declare-fun call!57774 () ListLongMap!17787)

(assert (=> bm!57774 (= call!57776 call!57774)))

(declare-fun b!1202473 () Bool)

(declare-fun c!117634 () Bool)

(assert (=> b!1202473 (= c!117634 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!544991))))

(assert (=> b!1202473 (= e!682863 e!682862)))

(declare-fun b!1202474 () Bool)

(declare-fun Unit!39790 () Unit!39788)

(assert (=> b!1202474 (= e!682862 Unit!39790)))

(declare-fun b!1202475 () Bool)

(declare-fun e!682856 () Bool)

(assert (=> b!1202475 (= e!682856 tp_is_empty!30585)))

(declare-fun b!1202476 () Bool)

(declare-fun res!800416 () Bool)

(assert (=> b!1202476 (=> (not res!800416) (not e!682859))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1202476 (= res!800416 (validKeyInArray!0 k0!934))))

(declare-fun b!1202477 () Bool)

(assert (=> b!1202477 call!57773))

(declare-fun lt!544993 () Unit!39788)

(assert (=> b!1202477 (= lt!544993 call!57775)))

(assert (=> b!1202477 (= e!682863 lt!544993)))

(declare-fun b!1202478 () Bool)

(declare-fun res!800420 () Bool)

(assert (=> b!1202478 (=> (not res!800420) (not e!682859))))

(assert (=> b!1202478 (= res!800420 (= (select (arr!37601 _keys!1208) i!673) k0!934))))

(declare-fun b!1202479 () Bool)

(declare-fun res!800417 () Bool)

(assert (=> b!1202479 (=> (not res!800417) (not e!682859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77920 (_ BitVec 32)) Bool)

(assert (=> b!1202479 (= res!800417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!57775 () Bool)

(assert (=> bm!57775 (= call!57773 call!57772)))

(declare-fun b!1202480 () Bool)

(declare-fun lt!544990 () Unit!39788)

(assert (=> b!1202480 (= e!682854 lt!544990)))

(declare-fun lt!544989 () Unit!39788)

(assert (=> b!1202480 (= lt!544989 call!57771)))

(declare-fun +!3946 (ListLongMap!17787 tuple2!19806) ListLongMap!17787)

(assert (=> b!1202480 (= lt!544998 (+!3946 lt!544999 (tuple2!19807 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1202480 call!57772))

(assert (=> b!1202480 (= lt!544990 (addStillContains!1009 lt!544998 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1202480 (contains!6909 call!57774 k0!934)))

(declare-fun b!1202481 () Bool)

(declare-fun res!800412 () Bool)

(assert (=> b!1202481 (=> (not res!800412) (not e!682864))))

(assert (=> b!1202481 (= res!800412 (arrayNoDuplicates!0 lt!545001 #b00000000000000000000000000000000 Nil!26633))))

(declare-fun mapNonEmpty!47720 () Bool)

(declare-fun tp!90633 () Bool)

(assert (=> mapNonEmpty!47720 (= mapRes!47720 (and tp!90633 e!682856))))

(declare-fun mapValue!47720 () ValueCell!14583)

(declare-fun mapRest!47720 () (Array (_ BitVec 32) ValueCell!14583))

(declare-fun mapKey!47720 () (_ BitVec 32))

(assert (=> mapNonEmpty!47720 (= (arr!37602 _values!996) (store mapRest!47720 mapKey!47720 mapValue!47720))))

(declare-fun b!1202482 () Bool)

(assert (=> b!1202482 (= e!682859 e!682864)))

(declare-fun res!800408 () Bool)

(assert (=> b!1202482 (=> (not res!800408) (not e!682864))))

(assert (=> b!1202482 (= res!800408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545001 mask!1564))))

(assert (=> b!1202482 (= lt!545001 (array!77921 (store (arr!37601 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38138 _keys!1208)))))

(declare-fun b!1202483 () Bool)

(assert (=> b!1202483 (= e!682857 true)))

(declare-fun lt!545002 () Unit!39788)

(assert (=> b!1202483 (= lt!545002 e!682854)))

(assert (=> b!1202483 (= c!117633 (and (not lt!544991) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1202483 (= lt!544991 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!57773 () Bool)

(assert (=> bm!57773 (= call!57774 (+!3946 (ite c!117633 lt!544998 lt!544999) (ite c!117633 (tuple2!19807 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117631 (tuple2!19807 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19807 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun res!800421 () Bool)

(assert (=> start!100594 (=> (not res!800421) (not e!682859))))

(assert (=> start!100594 (= res!800421 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38138 _keys!1208))))))

(assert (=> start!100594 e!682859))

(assert (=> start!100594 tp_is_empty!30585))

(declare-fun array_inv!28544 (array!77920) Bool)

(assert (=> start!100594 (array_inv!28544 _keys!1208)))

(assert (=> start!100594 true))

(assert (=> start!100594 tp!90634))

(declare-fun array_inv!28545 (array!77922) Bool)

(assert (=> start!100594 (and (array_inv!28545 _values!996) e!682853)))

(assert (= (and start!100594 res!800421) b!1202468))

(assert (= (and b!1202468 res!800414) b!1202459))

(assert (= (and b!1202459 res!800413) b!1202479))

(assert (= (and b!1202479 res!800417) b!1202469))

(assert (= (and b!1202469 res!800411) b!1202464))

(assert (= (and b!1202464 res!800419) b!1202476))

(assert (= (and b!1202476 res!800416) b!1202478))

(assert (= (and b!1202478 res!800420) b!1202482))

(assert (= (and b!1202482 res!800408) b!1202481))

(assert (= (and b!1202481 res!800412) b!1202460))

(assert (= (and b!1202460 (not res!800418)) b!1202461))

(assert (= (and b!1202461 (not res!800410)) b!1202470))

(assert (= (and b!1202470 c!117632) b!1202462))

(assert (= (and b!1202470 (not c!117632)) b!1202472))

(assert (= (or b!1202462 b!1202472) bm!57768))

(assert (= (or b!1202462 b!1202472) bm!57771))

(assert (= (and b!1202470 (not res!800415)) b!1202465))

(assert (= (and b!1202465 (not res!800409)) b!1202483))

(assert (= (and b!1202483 c!117633) b!1202480))

(assert (= (and b!1202483 (not c!117633)) b!1202463))

(assert (= (and b!1202463 c!117631) b!1202477))

(assert (= (and b!1202463 (not c!117631)) b!1202473))

(assert (= (and b!1202473 c!117634) b!1202467))

(assert (= (and b!1202473 (not c!117634)) b!1202474))

(assert (= (or b!1202477 b!1202467) bm!57772))

(assert (= (or b!1202477 b!1202467) bm!57774))

(assert (= (or b!1202477 b!1202467) bm!57775))

(assert (= (or b!1202480 bm!57775) bm!57770))

(assert (= (or b!1202480 bm!57772) bm!57769))

(assert (= (or b!1202480 bm!57774) bm!57773))

(assert (= (and b!1202471 condMapEmpty!47720) mapIsEmpty!47720))

(assert (= (and b!1202471 (not condMapEmpty!47720)) mapNonEmpty!47720))

(get-info :version)

(assert (= (and mapNonEmpty!47720 ((_ is ValueCellFull!14583) mapValue!47720)) b!1202475))

(assert (= (and b!1202471 ((_ is ValueCellFull!14583) mapDefault!47720)) b!1202466))

(assert (= start!100594 b!1202471))

(declare-fun b_lambda!21095 () Bool)

(assert (=> (not b_lambda!21095) (not b!1202461)))

(declare-fun t!39502 () Bool)

(declare-fun tb!10689 () Bool)

(assert (=> (and start!100594 (= defaultEntry!1004 defaultEntry!1004) t!39502) tb!10689))

(declare-fun result!21947 () Bool)

(assert (=> tb!10689 (= result!21947 tp_is_empty!30585)))

(assert (=> b!1202461 t!39502))

(declare-fun b_and!42665 () Bool)

(assert (= b_and!42663 (and (=> t!39502 result!21947) b_and!42665)))

(declare-fun m!1108351 () Bool)

(assert (=> bm!57769 m!1108351))

(declare-fun m!1108353 () Bool)

(assert (=> b!1202462 m!1108353))

(declare-fun m!1108355 () Bool)

(assert (=> b!1202482 m!1108355))

(declare-fun m!1108357 () Bool)

(assert (=> b!1202482 m!1108357))

(declare-fun m!1108359 () Bool)

(assert (=> b!1202469 m!1108359))

(declare-fun m!1108361 () Bool)

(assert (=> start!100594 m!1108361))

(declare-fun m!1108363 () Bool)

(assert (=> start!100594 m!1108363))

(declare-fun m!1108365 () Bool)

(assert (=> bm!57771 m!1108365))

(declare-fun m!1108367 () Bool)

(assert (=> b!1202481 m!1108367))

(declare-fun m!1108369 () Bool)

(assert (=> b!1202479 m!1108369))

(declare-fun m!1108371 () Bool)

(assert (=> b!1202476 m!1108371))

(declare-fun m!1108373 () Bool)

(assert (=> b!1202478 m!1108373))

(declare-fun m!1108375 () Bool)

(assert (=> b!1202470 m!1108375))

(declare-fun m!1108377 () Bool)

(assert (=> b!1202470 m!1108377))

(declare-fun m!1108379 () Bool)

(assert (=> b!1202465 m!1108379))

(assert (=> b!1202465 m!1108365))

(declare-fun m!1108381 () Bool)

(assert (=> b!1202480 m!1108381))

(declare-fun m!1108383 () Bool)

(assert (=> b!1202480 m!1108383))

(declare-fun m!1108385 () Bool)

(assert (=> b!1202480 m!1108385))

(declare-fun m!1108387 () Bool)

(assert (=> mapNonEmpty!47720 m!1108387))

(declare-fun m!1108389 () Bool)

(assert (=> bm!57768 m!1108389))

(declare-fun m!1108391 () Bool)

(assert (=> b!1202468 m!1108391))

(declare-fun m!1108393 () Bool)

(assert (=> bm!57770 m!1108393))

(declare-fun m!1108395 () Bool)

(assert (=> b!1202461 m!1108395))

(declare-fun m!1108397 () Bool)

(assert (=> b!1202461 m!1108397))

(declare-fun m!1108399 () Bool)

(assert (=> b!1202461 m!1108399))

(declare-fun m!1108401 () Bool)

(assert (=> b!1202461 m!1108401))

(declare-fun m!1108403 () Bool)

(assert (=> b!1202460 m!1108403))

(declare-fun m!1108405 () Bool)

(assert (=> b!1202460 m!1108405))

(declare-fun m!1108407 () Bool)

(assert (=> bm!57773 m!1108407))

(check-sat (not bm!57770) (not mapNonEmpty!47720) (not b!1202465) (not b!1202470) (not bm!57768) (not bm!57769) (not b!1202479) (not b!1202476) (not b_next!25881) (not start!100594) (not bm!57773) (not b!1202482) (not b!1202461) (not b!1202481) (not b!1202460) (not b!1202468) (not b!1202480) (not bm!57771) (not b_lambda!21095) (not b!1202462) tp_is_empty!30585 b_and!42665 (not b!1202469))
(check-sat b_and!42665 (not b_next!25881))
