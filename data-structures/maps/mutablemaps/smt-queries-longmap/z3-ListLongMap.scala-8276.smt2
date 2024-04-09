; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100794 () Bool)

(assert start!100794)

(declare-fun b_free!25929 () Bool)

(declare-fun b_next!25929 () Bool)

(assert (=> start!100794 (= b_free!25929 (not b_next!25929))))

(declare-fun tp!90791 () Bool)

(declare-fun b_and!42855 () Bool)

(assert (=> start!100794 (= tp!90791 b_and!42855)))

(declare-fun b!1205457 () Bool)

(declare-fun res!801887 () Bool)

(declare-fun e!684609 () Bool)

(assert (=> b!1205457 (=> (not res!801887) (not e!684609))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1205457 (= res!801887 (validKeyInArray!0 k0!934))))

(declare-fun bm!58472 () Bool)

(declare-fun call!58475 () Bool)

(declare-fun call!58478 () Bool)

(assert (=> bm!58472 (= call!58475 call!58478)))

(declare-datatypes ((V!45971 0))(
  ( (V!45972 (val!15373 Int)) )
))
(declare-datatypes ((tuple2!19852 0))(
  ( (tuple2!19853 (_1!9936 (_ BitVec 64)) (_2!9936 V!45971)) )
))
(declare-datatypes ((List!26678 0))(
  ( (Nil!26675) (Cons!26674 (h!27883 tuple2!19852) (t!39594 List!26678)) )
))
(declare-datatypes ((ListLongMap!17833 0))(
  ( (ListLongMap!17834 (toList!8932 List!26678)) )
))
(declare-fun call!58476 () ListLongMap!17833)

(declare-fun call!58479 () ListLongMap!17833)

(declare-fun e!684603 () Bool)

(declare-fun b!1205458 () Bool)

(declare-fun -!1845 (ListLongMap!17833 (_ BitVec 64)) ListLongMap!17833)

(assert (=> b!1205458 (= e!684603 (= call!58479 (-!1845 call!58476 k0!934)))))

(declare-fun lt!546736 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1205459 () Bool)

(declare-fun e!684605 () Bool)

(assert (=> b!1205459 (= e!684605 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!546736) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1205460 () Bool)

(declare-fun c!118246 () Bool)

(assert (=> b!1205460 (= c!118246 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!546736))))

(declare-datatypes ((Unit!39887 0))(
  ( (Unit!39888) )
))
(declare-fun e!684616 () Unit!39887)

(declare-fun e!684610 () Unit!39887)

(assert (=> b!1205460 (= e!684616 e!684610)))

(declare-fun b!1205461 () Bool)

(declare-fun e!684608 () Bool)

(declare-fun tp_is_empty!30633 () Bool)

(assert (=> b!1205461 (= e!684608 tp_is_empty!30633)))

(declare-fun b!1205462 () Bool)

(assert (=> b!1205462 (= e!684603 (= call!58479 call!58476))))

(declare-fun b!1205463 () Bool)

(declare-fun res!801883 () Bool)

(assert (=> b!1205463 (=> (not res!801883) (not e!684609))))

(declare-datatypes ((array!78022 0))(
  ( (array!78023 (arr!37648 (Array (_ BitVec 32) (_ BitVec 64))) (size!38185 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78022)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78022 (_ BitVec 32)) Bool)

(assert (=> b!1205463 (= res!801883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1205464 () Bool)

(declare-fun lt!546739 () Unit!39887)

(assert (=> b!1205464 (= e!684610 lt!546739)))

(declare-fun call!58477 () Unit!39887)

(assert (=> b!1205464 (= lt!546739 call!58477)))

(assert (=> b!1205464 call!58475))

(declare-fun e!684615 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1205465 () Bool)

(declare-fun arrayContainsKey!0 (array!78022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1205465 (= e!684615 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205466 () Bool)

(declare-fun e!684607 () Bool)

(declare-fun e!684602 () Bool)

(assert (=> b!1205466 (= e!684607 e!684602)))

(declare-fun res!801886 () Bool)

(assert (=> b!1205466 (=> res!801886 e!684602)))

(declare-fun lt!546740 () ListLongMap!17833)

(declare-fun contains!6937 (ListLongMap!17833 (_ BitVec 64)) Bool)

(assert (=> b!1205466 (= res!801886 (not (contains!6937 lt!546740 k0!934)))))

(declare-fun zeroValue!944 () V!45971)

(declare-datatypes ((ValueCell!14607 0))(
  ( (ValueCellFull!14607 (v!18018 V!45971)) (EmptyCell!14607) )
))
(declare-datatypes ((array!78024 0))(
  ( (array!78025 (arr!37649 (Array (_ BitVec 32) ValueCell!14607)) (size!38186 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78024)

(declare-fun minValue!944 () V!45971)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5340 (array!78022 array!78024 (_ BitVec 32) (_ BitVec 32) V!45971 V!45971 (_ BitVec 32) Int) ListLongMap!17833)

(assert (=> b!1205466 (= lt!546740 (getCurrentListMapNoExtraKeys!5340 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205468 () Bool)

(declare-fun res!801890 () Bool)

(assert (=> b!1205468 (=> (not res!801890) (not e!684609))))

(declare-datatypes ((List!26679 0))(
  ( (Nil!26676) (Cons!26675 (h!27884 (_ BitVec 64)) (t!39595 List!26679)) )
))
(declare-fun arrayNoDuplicates!0 (array!78022 (_ BitVec 32) List!26679) Bool)

(assert (=> b!1205468 (= res!801890 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26676))))

(declare-fun b!1205469 () Bool)

(declare-fun e!684613 () Unit!39887)

(assert (=> b!1205469 (= e!684613 e!684616)))

(declare-fun c!118243 () Bool)

(assert (=> b!1205469 (= c!118243 (and (not lt!546736) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!58473 () Bool)

(assert (=> bm!58473 (= call!58476 (getCurrentListMapNoExtraKeys!5340 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205470 () Bool)

(declare-fun e!684617 () Bool)

(assert (=> b!1205470 (= e!684617 tp_is_empty!30633)))

(declare-fun bm!58474 () Bool)

(declare-fun call!58481 () Unit!39887)

(assert (=> bm!58474 (= call!58477 call!58481)))

(declare-fun b!1205471 () Bool)

(declare-fun res!801885 () Bool)

(assert (=> b!1205471 (=> (not res!801885) (not e!684609))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1205471 (= res!801885 (= (select (arr!37648 _keys!1208) i!673) k0!934))))

(declare-fun b!1205472 () Bool)

(declare-fun res!801889 () Bool)

(assert (=> b!1205472 (=> (not res!801889) (not e!684609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1205472 (= res!801889 (validMask!0 mask!1564))))

(declare-fun bm!58475 () Bool)

(declare-fun c!118245 () Bool)

(declare-fun call!58480 () ListLongMap!17833)

(declare-fun lt!546743 () ListLongMap!17833)

(declare-fun +!3964 (ListLongMap!17833 tuple2!19852) ListLongMap!17833)

(assert (=> bm!58475 (= call!58480 (+!3964 (ite c!118245 lt!546743 lt!546740) (ite c!118245 (tuple2!19853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118243 (tuple2!19853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun mapNonEmpty!47805 () Bool)

(declare-fun mapRes!47805 () Bool)

(declare-fun tp!90790 () Bool)

(assert (=> mapNonEmpty!47805 (= mapRes!47805 (and tp!90790 e!684608))))

(declare-fun mapValue!47805 () ValueCell!14607)

(declare-fun mapKey!47805 () (_ BitVec 32))

(declare-fun mapRest!47805 () (Array (_ BitVec 32) ValueCell!14607))

(assert (=> mapNonEmpty!47805 (= (arr!37649 _values!996) (store mapRest!47805 mapKey!47805 mapValue!47805))))

(declare-fun mapIsEmpty!47805 () Bool)

(assert (=> mapIsEmpty!47805 mapRes!47805))

(declare-fun b!1205473 () Bool)

(declare-fun res!801878 () Bool)

(assert (=> b!1205473 (=> (not res!801878) (not e!684609))))

(assert (=> b!1205473 (= res!801878 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38185 _keys!1208))))))

(declare-fun bm!58476 () Bool)

(declare-fun call!58482 () ListLongMap!17833)

(assert (=> bm!58476 (= call!58482 call!58480)))

(declare-fun bm!58477 () Bool)

(declare-fun addStillContains!1029 (ListLongMap!17833 (_ BitVec 64) V!45971 (_ BitVec 64)) Unit!39887)

(assert (=> bm!58477 (= call!58481 (addStillContains!1029 lt!546740 (ite (or c!118245 c!118243) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118245 c!118243) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!58478 () Bool)

(assert (=> bm!58478 (= call!58478 (contains!6937 (ite c!118245 lt!546743 call!58482) k0!934))))

(declare-fun b!1205474 () Bool)

(declare-fun lt!546741 () Unit!39887)

(assert (=> b!1205474 (= e!684613 lt!546741)))

(declare-fun lt!546733 () Unit!39887)

(assert (=> b!1205474 (= lt!546733 call!58481)))

(assert (=> b!1205474 (= lt!546743 (+!3964 lt!546740 (tuple2!19853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1205474 call!58478))

(assert (=> b!1205474 (= lt!546741 (addStillContains!1029 lt!546743 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1205474 (contains!6937 call!58480 k0!934)))

(declare-fun lt!546742 () array!78024)

(declare-fun bm!58479 () Bool)

(declare-fun lt!546734 () array!78022)

(assert (=> bm!58479 (= call!58479 (getCurrentListMapNoExtraKeys!5340 lt!546734 lt!546742 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205475 () Bool)

(declare-fun e!684614 () Bool)

(declare-fun e!684604 () Bool)

(assert (=> b!1205475 (= e!684614 e!684604)))

(declare-fun res!801888 () Bool)

(assert (=> b!1205475 (=> res!801888 e!684604)))

(assert (=> b!1205475 (= res!801888 (not (= from!1455 i!673)))))

(declare-fun lt!546732 () ListLongMap!17833)

(assert (=> b!1205475 (= lt!546732 (getCurrentListMapNoExtraKeys!5340 lt!546734 lt!546742 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3262 (Int (_ BitVec 64)) V!45971)

(assert (=> b!1205475 (= lt!546742 (array!78025 (store (arr!37649 _values!996) i!673 (ValueCellFull!14607 (dynLambda!3262 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38186 _values!996)))))

(declare-fun lt!546735 () ListLongMap!17833)

(assert (=> b!1205475 (= lt!546735 (getCurrentListMapNoExtraKeys!5340 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1205476 () Bool)

(assert (=> b!1205476 call!58475))

(declare-fun lt!546731 () Unit!39887)

(assert (=> b!1205476 (= lt!546731 call!58477)))

(assert (=> b!1205476 (= e!684616 lt!546731)))

(declare-fun b!1205477 () Bool)

(assert (=> b!1205477 (= e!684605 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205478 () Bool)

(declare-fun e!684612 () Bool)

(assert (=> b!1205478 (= e!684612 (and e!684617 mapRes!47805))))

(declare-fun condMapEmpty!47805 () Bool)

(declare-fun mapDefault!47805 () ValueCell!14607)

(assert (=> b!1205478 (= condMapEmpty!47805 (= (arr!37649 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14607)) mapDefault!47805)))))

(declare-fun b!1205479 () Bool)

(declare-fun res!801879 () Bool)

(declare-fun e!684611 () Bool)

(assert (=> b!1205479 (=> (not res!801879) (not e!684611))))

(assert (=> b!1205479 (= res!801879 (arrayNoDuplicates!0 lt!546734 #b00000000000000000000000000000000 Nil!26676))))

(declare-fun b!1205480 () Bool)

(assert (=> b!1205480 (= e!684604 e!684607)))

(declare-fun res!801882 () Bool)

(assert (=> b!1205480 (=> res!801882 e!684607)))

(assert (=> b!1205480 (= res!801882 (not (= (select (arr!37648 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1205480 e!684603))

(declare-fun c!118247 () Bool)

(assert (=> b!1205480 (= c!118247 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!546737 () Unit!39887)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1050 (array!78022 array!78024 (_ BitVec 32) (_ BitVec 32) V!45971 V!45971 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39887)

(assert (=> b!1205480 (= lt!546737 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1050 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205481 () Bool)

(declare-fun Unit!39889 () Unit!39887)

(assert (=> b!1205481 (= e!684610 Unit!39889)))

(declare-fun b!1205482 () Bool)

(assert (=> b!1205482 (= e!684609 e!684611)))

(declare-fun res!801892 () Bool)

(assert (=> b!1205482 (=> (not res!801892) (not e!684611))))

(assert (=> b!1205482 (= res!801892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!546734 mask!1564))))

(assert (=> b!1205482 (= lt!546734 (array!78023 (store (arr!37648 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38185 _keys!1208)))))

(declare-fun b!1205483 () Bool)

(assert (=> b!1205483 (= e!684602 (or (bvsge (size!38185 _keys!1208) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!38185 _keys!1208))))))

(assert (=> b!1205483 e!684615))

(declare-fun res!801881 () Bool)

(assert (=> b!1205483 (=> (not res!801881) (not e!684615))))

(assert (=> b!1205483 (= res!801881 e!684605)))

(declare-fun c!118244 () Bool)

(assert (=> b!1205483 (= c!118244 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!546738 () Unit!39887)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!569 (array!78022 array!78024 (_ BitVec 32) (_ BitVec 32) V!45971 V!45971 (_ BitVec 64) (_ BitVec 32) Int) Unit!39887)

(assert (=> b!1205483 (= lt!546738 (lemmaListMapContainsThenArrayContainsFrom!569 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!546745 () Unit!39887)

(assert (=> b!1205483 (= lt!546745 e!684613)))

(assert (=> b!1205483 (= c!118245 (and (not lt!546736) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1205483 (= lt!546736 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1205484 () Bool)

(assert (=> b!1205484 (= e!684611 (not e!684614))))

(declare-fun res!801891 () Bool)

(assert (=> b!1205484 (=> res!801891 e!684614)))

(assert (=> b!1205484 (= res!801891 (bvsgt from!1455 i!673))))

(assert (=> b!1205484 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!546744 () Unit!39887)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78022 (_ BitVec 64) (_ BitVec 32)) Unit!39887)

(assert (=> b!1205484 (= lt!546744 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1205467 () Bool)

(declare-fun res!801884 () Bool)

(assert (=> b!1205467 (=> (not res!801884) (not e!684609))))

(assert (=> b!1205467 (= res!801884 (and (= (size!38186 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38185 _keys!1208) (size!38186 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!801880 () Bool)

(assert (=> start!100794 (=> (not res!801880) (not e!684609))))

(assert (=> start!100794 (= res!801880 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38185 _keys!1208))))))

(assert (=> start!100794 e!684609))

(assert (=> start!100794 tp_is_empty!30633))

(declare-fun array_inv!28582 (array!78022) Bool)

(assert (=> start!100794 (array_inv!28582 _keys!1208)))

(assert (=> start!100794 true))

(assert (=> start!100794 tp!90791))

(declare-fun array_inv!28583 (array!78024) Bool)

(assert (=> start!100794 (and (array_inv!28583 _values!996) e!684612)))

(assert (= (and start!100794 res!801880) b!1205472))

(assert (= (and b!1205472 res!801889) b!1205467))

(assert (= (and b!1205467 res!801884) b!1205463))

(assert (= (and b!1205463 res!801883) b!1205468))

(assert (= (and b!1205468 res!801890) b!1205473))

(assert (= (and b!1205473 res!801878) b!1205457))

(assert (= (and b!1205457 res!801887) b!1205471))

(assert (= (and b!1205471 res!801885) b!1205482))

(assert (= (and b!1205482 res!801892) b!1205479))

(assert (= (and b!1205479 res!801879) b!1205484))

(assert (= (and b!1205484 (not res!801891)) b!1205475))

(assert (= (and b!1205475 (not res!801888)) b!1205480))

(assert (= (and b!1205480 c!118247) b!1205458))

(assert (= (and b!1205480 (not c!118247)) b!1205462))

(assert (= (or b!1205458 b!1205462) bm!58479))

(assert (= (or b!1205458 b!1205462) bm!58473))

(assert (= (and b!1205480 (not res!801882)) b!1205466))

(assert (= (and b!1205466 (not res!801886)) b!1205483))

(assert (= (and b!1205483 c!118245) b!1205474))

(assert (= (and b!1205483 (not c!118245)) b!1205469))

(assert (= (and b!1205469 c!118243) b!1205476))

(assert (= (and b!1205469 (not c!118243)) b!1205460))

(assert (= (and b!1205460 c!118246) b!1205464))

(assert (= (and b!1205460 (not c!118246)) b!1205481))

(assert (= (or b!1205476 b!1205464) bm!58474))

(assert (= (or b!1205476 b!1205464) bm!58476))

(assert (= (or b!1205476 b!1205464) bm!58472))

(assert (= (or b!1205474 bm!58472) bm!58478))

(assert (= (or b!1205474 bm!58474) bm!58477))

(assert (= (or b!1205474 bm!58476) bm!58475))

(assert (= (and b!1205483 c!118244) b!1205477))

(assert (= (and b!1205483 (not c!118244)) b!1205459))

(assert (= (and b!1205483 res!801881) b!1205465))

(assert (= (and b!1205478 condMapEmpty!47805) mapIsEmpty!47805))

(assert (= (and b!1205478 (not condMapEmpty!47805)) mapNonEmpty!47805))

(get-info :version)

(assert (= (and mapNonEmpty!47805 ((_ is ValueCellFull!14607) mapValue!47805)) b!1205461))

(assert (= (and b!1205478 ((_ is ValueCellFull!14607) mapDefault!47805)) b!1205470))

(assert (= start!100794 b!1205478))

(declare-fun b_lambda!21343 () Bool)

(assert (=> (not b_lambda!21343) (not b!1205475)))

(declare-fun t!39593 () Bool)

(declare-fun tb!10737 () Bool)

(assert (=> (and start!100794 (= defaultEntry!1004 defaultEntry!1004) t!39593) tb!10737))

(declare-fun result!22051 () Bool)

(assert (=> tb!10737 (= result!22051 tp_is_empty!30633)))

(assert (=> b!1205475 t!39593))

(declare-fun b_and!42857 () Bool)

(assert (= b_and!42855 (and (=> t!39593 result!22051) b_and!42857)))

(declare-fun m!1111399 () Bool)

(assert (=> b!1205466 m!1111399))

(declare-fun m!1111401 () Bool)

(assert (=> b!1205466 m!1111401))

(declare-fun m!1111403 () Bool)

(assert (=> b!1205471 m!1111403))

(declare-fun m!1111405 () Bool)

(assert (=> b!1205468 m!1111405))

(declare-fun m!1111407 () Bool)

(assert (=> b!1205457 m!1111407))

(declare-fun m!1111409 () Bool)

(assert (=> b!1205474 m!1111409))

(declare-fun m!1111411 () Bool)

(assert (=> b!1205474 m!1111411))

(declare-fun m!1111413 () Bool)

(assert (=> b!1205474 m!1111413))

(declare-fun m!1111415 () Bool)

(assert (=> b!1205479 m!1111415))

(declare-fun m!1111417 () Bool)

(assert (=> bm!58479 m!1111417))

(declare-fun m!1111419 () Bool)

(assert (=> b!1205458 m!1111419))

(declare-fun m!1111421 () Bool)

(assert (=> start!100794 m!1111421))

(declare-fun m!1111423 () Bool)

(assert (=> start!100794 m!1111423))

(declare-fun m!1111425 () Bool)

(assert (=> mapNonEmpty!47805 m!1111425))

(declare-fun m!1111427 () Bool)

(assert (=> b!1205482 m!1111427))

(declare-fun m!1111429 () Bool)

(assert (=> b!1205482 m!1111429))

(declare-fun m!1111431 () Bool)

(assert (=> b!1205483 m!1111431))

(declare-fun m!1111433 () Bool)

(assert (=> b!1205463 m!1111433))

(declare-fun m!1111435 () Bool)

(assert (=> b!1205472 m!1111435))

(declare-fun m!1111437 () Bool)

(assert (=> b!1205484 m!1111437))

(declare-fun m!1111439 () Bool)

(assert (=> b!1205484 m!1111439))

(declare-fun m!1111441 () Bool)

(assert (=> b!1205475 m!1111441))

(declare-fun m!1111443 () Bool)

(assert (=> b!1205475 m!1111443))

(declare-fun m!1111445 () Bool)

(assert (=> b!1205475 m!1111445))

(declare-fun m!1111447 () Bool)

(assert (=> b!1205475 m!1111447))

(declare-fun m!1111449 () Bool)

(assert (=> bm!58477 m!1111449))

(declare-fun m!1111451 () Bool)

(assert (=> b!1205477 m!1111451))

(declare-fun m!1111453 () Bool)

(assert (=> bm!58475 m!1111453))

(assert (=> b!1205465 m!1111451))

(declare-fun m!1111455 () Bool)

(assert (=> bm!58478 m!1111455))

(assert (=> bm!58473 m!1111401))

(declare-fun m!1111457 () Bool)

(assert (=> b!1205480 m!1111457))

(declare-fun m!1111459 () Bool)

(assert (=> b!1205480 m!1111459))

(check-sat (not b!1205480) (not bm!58477) (not b!1205458) b_and!42857 (not b!1205477) (not bm!58473) (not b!1205475) (not b!1205463) tp_is_empty!30633 (not b!1205483) (not bm!58478) (not b_next!25929) (not b!1205484) (not b!1205466) (not start!100794) (not bm!58479) (not b!1205482) (not b_lambda!21343) (not b!1205457) (not b!1205479) (not b!1205465) (not mapNonEmpty!47805) (not b!1205472) (not bm!58475) (not b!1205468) (not b!1205474))
(check-sat b_and!42857 (not b_next!25929))
