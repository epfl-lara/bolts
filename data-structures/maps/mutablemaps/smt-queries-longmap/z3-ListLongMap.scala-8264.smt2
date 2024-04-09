; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100570 () Bool)

(assert start!100570)

(declare-fun b_free!25857 () Bool)

(declare-fun b_next!25857 () Bool)

(assert (=> start!100570 (= b_free!25857 (not b_next!25857))))

(declare-fun tp!90562 () Bool)

(declare-fun b_and!42615 () Bool)

(assert (=> start!100570 (= tp!90562 b_and!42615)))

(declare-fun b!1201535 () Bool)

(declare-fun res!799905 () Bool)

(declare-fun e!682355 () Bool)

(assert (=> b!1201535 (=> (not res!799905) (not e!682355))))

(declare-datatypes ((array!77872 0))(
  ( (array!77873 (arr!37577 (Array (_ BitVec 32) (_ BitVec 64))) (size!38114 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77872)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45875 0))(
  ( (V!45876 (val!15337 Int)) )
))
(declare-datatypes ((ValueCell!14571 0))(
  ( (ValueCellFull!14571 (v!17976 V!45875)) (EmptyCell!14571) )
))
(declare-datatypes ((array!77874 0))(
  ( (array!77875 (arr!37578 (Array (_ BitVec 32) ValueCell!14571)) (size!38115 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77874)

(assert (=> b!1201535 (= res!799905 (and (= (size!38115 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38114 _keys!1208) (size!38115 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1201536 () Bool)

(declare-datatypes ((Unit!39755 0))(
  ( (Unit!39756) )
))
(declare-fun e!682353 () Unit!39755)

(declare-fun e!682347 () Unit!39755)

(assert (=> b!1201536 (= e!682353 e!682347)))

(declare-fun c!117487 () Bool)

(declare-fun lt!544496 () Bool)

(assert (=> b!1201536 (= c!117487 (and (not lt!544496) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!944 () V!45875)

(declare-datatypes ((tuple2!19782 0))(
  ( (tuple2!19783 (_1!9901 (_ BitVec 64)) (_2!9901 V!45875)) )
))
(declare-datatypes ((List!26614 0))(
  ( (Nil!26611) (Cons!26610 (h!27819 tuple2!19782) (t!39458 List!26614)) )
))
(declare-datatypes ((ListLongMap!17763 0))(
  ( (ListLongMap!17764 (toList!8897 List!26614)) )
))
(declare-fun call!57484 () ListLongMap!17763)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!57480 () Bool)

(declare-fun lt!544489 () array!77872)

(declare-fun minValue!944 () V!45875)

(declare-fun lt!544492 () array!77874)

(declare-fun getCurrentListMapNoExtraKeys!5309 (array!77872 array!77874 (_ BitVec 32) (_ BitVec 32) V!45875 V!45875 (_ BitVec 32) Int) ListLongMap!17763)

(assert (=> bm!57480 (= call!57484 (getCurrentListMapNoExtraKeys!5309 lt!544489 lt!544492 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201537 () Bool)

(declare-fun call!57489 () Bool)

(assert (=> b!1201537 call!57489))

(declare-fun lt!544490 () Unit!39755)

(declare-fun call!57483 () Unit!39755)

(assert (=> b!1201537 (= lt!544490 call!57483)))

(assert (=> b!1201537 (= e!682347 lt!544490)))

(declare-fun b!1201538 () Bool)

(declare-fun e!682354 () Bool)

(declare-fun e!682358 () Bool)

(assert (=> b!1201538 (= e!682354 e!682358)))

(declare-fun res!799913 () Bool)

(assert (=> b!1201538 (=> res!799913 e!682358)))

(declare-fun lt!544491 () ListLongMap!17763)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6898 (ListLongMap!17763 (_ BitVec 64)) Bool)

(assert (=> b!1201538 (= res!799913 (not (contains!6898 lt!544491 k0!934)))))

(assert (=> b!1201538 (= lt!544491 (getCurrentListMapNoExtraKeys!5309 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201539 () Bool)

(declare-fun e!682356 () Bool)

(declare-fun tp_is_empty!30561 () Bool)

(assert (=> b!1201539 (= e!682356 tp_is_empty!30561)))

(declare-fun b!1201541 () Bool)

(declare-fun lt!544498 () Unit!39755)

(assert (=> b!1201541 (= e!682353 lt!544498)))

(declare-fun lt!544486 () Unit!39755)

(declare-fun addStillContains!998 (ListLongMap!17763 (_ BitVec 64) V!45875 (_ BitVec 64)) Unit!39755)

(assert (=> b!1201541 (= lt!544486 (addStillContains!998 lt!544491 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun lt!544487 () ListLongMap!17763)

(declare-fun +!3938 (ListLongMap!17763 tuple2!19782) ListLongMap!17763)

(assert (=> b!1201541 (= lt!544487 (+!3938 lt!544491 (tuple2!19783 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!57485 () Bool)

(assert (=> b!1201541 call!57485))

(declare-fun call!57487 () Unit!39755)

(assert (=> b!1201541 (= lt!544498 call!57487)))

(declare-fun call!57488 () ListLongMap!17763)

(assert (=> b!1201541 (contains!6898 call!57488 k0!934)))

(declare-fun bm!57481 () Bool)

(declare-fun c!117489 () Bool)

(assert (=> bm!57481 (= call!57488 (+!3938 (ite c!117489 lt!544487 lt!544491) (ite c!117489 (tuple2!19783 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117487 (tuple2!19783 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19783 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!57482 () Bool)

(assert (=> bm!57482 (= call!57489 call!57485)))

(declare-fun b!1201542 () Bool)

(declare-fun res!799915 () Bool)

(declare-fun e!682349 () Bool)

(assert (=> b!1201542 (=> (not res!799915) (not e!682349))))

(declare-datatypes ((List!26615 0))(
  ( (Nil!26612) (Cons!26611 (h!27820 (_ BitVec 64)) (t!39459 List!26615)) )
))
(declare-fun arrayNoDuplicates!0 (array!77872 (_ BitVec 32) List!26615) Bool)

(assert (=> b!1201542 (= res!799915 (arrayNoDuplicates!0 lt!544489 #b00000000000000000000000000000000 Nil!26612))))

(declare-fun b!1201543 () Bool)

(assert (=> b!1201543 (= e!682358 true)))

(declare-fun lt!544488 () Unit!39755)

(assert (=> b!1201543 (= lt!544488 e!682353)))

(assert (=> b!1201543 (= c!117489 (and (not lt!544496) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1201543 (= lt!544496 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!57483 () Bool)

(declare-fun call!57486 () ListLongMap!17763)

(assert (=> bm!57483 (= call!57485 (contains!6898 (ite c!117489 lt!544487 call!57486) k0!934))))

(declare-fun b!1201544 () Bool)

(declare-fun res!799908 () Bool)

(assert (=> b!1201544 (=> (not res!799908) (not e!682355))))

(assert (=> b!1201544 (= res!799908 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26612))))

(declare-fun b!1201545 () Bool)

(declare-fun e!682348 () Bool)

(declare-fun call!57490 () ListLongMap!17763)

(assert (=> b!1201545 (= e!682348 (= call!57484 call!57490))))

(declare-fun b!1201546 () Bool)

(declare-fun e!682360 () Bool)

(assert (=> b!1201546 (= e!682349 (not e!682360))))

(declare-fun res!799917 () Bool)

(assert (=> b!1201546 (=> res!799917 e!682360)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1201546 (= res!799917 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77872 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1201546 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!544495 () Unit!39755)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77872 (_ BitVec 64) (_ BitVec 32)) Unit!39755)

(assert (=> b!1201546 (= lt!544495 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1201547 () Bool)

(declare-fun res!799916 () Bool)

(assert (=> b!1201547 (=> (not res!799916) (not e!682355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1201547 (= res!799916 (validMask!0 mask!1564))))

(declare-fun b!1201548 () Bool)

(declare-fun e!682351 () Unit!39755)

(declare-fun Unit!39757 () Unit!39755)

(assert (=> b!1201548 (= e!682351 Unit!39757)))

(declare-fun bm!57484 () Bool)

(assert (=> bm!57484 (= call!57487 (addStillContains!998 (ite c!117489 lt!544487 lt!544491) (ite c!117489 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117487 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117489 minValue!944 (ite c!117487 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1201549 () Bool)

(declare-fun e!682350 () Bool)

(assert (=> b!1201549 (= e!682350 tp_is_empty!30561)))

(declare-fun res!799914 () Bool)

(assert (=> start!100570 (=> (not res!799914) (not e!682355))))

(assert (=> start!100570 (= res!799914 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38114 _keys!1208))))))

(assert (=> start!100570 e!682355))

(assert (=> start!100570 tp_is_empty!30561))

(declare-fun array_inv!28526 (array!77872) Bool)

(assert (=> start!100570 (array_inv!28526 _keys!1208)))

(assert (=> start!100570 true))

(assert (=> start!100570 tp!90562))

(declare-fun e!682357 () Bool)

(declare-fun array_inv!28527 (array!77874) Bool)

(assert (=> start!100570 (and (array_inv!28527 _values!996) e!682357)))

(declare-fun b!1201540 () Bool)

(declare-fun res!799904 () Bool)

(assert (=> b!1201540 (=> (not res!799904) (not e!682355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77872 (_ BitVec 32)) Bool)

(assert (=> b!1201540 (= res!799904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1201550 () Bool)

(declare-fun e!682352 () Bool)

(assert (=> b!1201550 (= e!682352 e!682354)))

(declare-fun res!799910 () Bool)

(assert (=> b!1201550 (=> res!799910 e!682354)))

(assert (=> b!1201550 (= res!799910 (not (= (select (arr!37577 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1201550 e!682348))

(declare-fun c!117488 () Bool)

(assert (=> b!1201550 (= c!117488 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!544493 () Unit!39755)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1023 (array!77872 array!77874 (_ BitVec 32) (_ BitVec 32) V!45875 V!45875 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39755)

(assert (=> b!1201550 (= lt!544493 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1023 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201551 () Bool)

(assert (=> b!1201551 (= e!682360 e!682352)))

(declare-fun res!799911 () Bool)

(assert (=> b!1201551 (=> res!799911 e!682352)))

(assert (=> b!1201551 (= res!799911 (not (= from!1455 i!673)))))

(declare-fun lt!544485 () ListLongMap!17763)

(assert (=> b!1201551 (= lt!544485 (getCurrentListMapNoExtraKeys!5309 lt!544489 lt!544492 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3237 (Int (_ BitVec 64)) V!45875)

(assert (=> b!1201551 (= lt!544492 (array!77875 (store (arr!37578 _values!996) i!673 (ValueCellFull!14571 (dynLambda!3237 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38115 _values!996)))))

(declare-fun lt!544494 () ListLongMap!17763)

(assert (=> b!1201551 (= lt!544494 (getCurrentListMapNoExtraKeys!5309 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1201552 () Bool)

(declare-fun res!799906 () Bool)

(assert (=> b!1201552 (=> (not res!799906) (not e!682355))))

(assert (=> b!1201552 (= res!799906 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38114 _keys!1208))))))

(declare-fun b!1201553 () Bool)

(declare-fun lt!544497 () Unit!39755)

(assert (=> b!1201553 (= e!682351 lt!544497)))

(assert (=> b!1201553 (= lt!544497 call!57483)))

(assert (=> b!1201553 call!57489))

(declare-fun b!1201554 () Bool)

(assert (=> b!1201554 (= e!682355 e!682349)))

(declare-fun res!799909 () Bool)

(assert (=> b!1201554 (=> (not res!799909) (not e!682349))))

(assert (=> b!1201554 (= res!799909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544489 mask!1564))))

(assert (=> b!1201554 (= lt!544489 (array!77873 (store (arr!37577 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38114 _keys!1208)))))

(declare-fun b!1201555 () Bool)

(declare-fun res!799907 () Bool)

(assert (=> b!1201555 (=> (not res!799907) (not e!682355))))

(assert (=> b!1201555 (= res!799907 (= (select (arr!37577 _keys!1208) i!673) k0!934))))

(declare-fun b!1201556 () Bool)

(declare-fun c!117490 () Bool)

(assert (=> b!1201556 (= c!117490 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!544496))))

(assert (=> b!1201556 (= e!682347 e!682351)))

(declare-fun bm!57485 () Bool)

(assert (=> bm!57485 (= call!57483 call!57487)))

(declare-fun b!1201557 () Bool)

(declare-fun mapRes!47684 () Bool)

(assert (=> b!1201557 (= e!682357 (and e!682356 mapRes!47684))))

(declare-fun condMapEmpty!47684 () Bool)

(declare-fun mapDefault!47684 () ValueCell!14571)

(assert (=> b!1201557 (= condMapEmpty!47684 (= (arr!37578 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14571)) mapDefault!47684)))))

(declare-fun b!1201558 () Bool)

(declare-fun -!1819 (ListLongMap!17763 (_ BitVec 64)) ListLongMap!17763)

(assert (=> b!1201558 (= e!682348 (= call!57484 (-!1819 call!57490 k0!934)))))

(declare-fun mapNonEmpty!47684 () Bool)

(declare-fun tp!90561 () Bool)

(assert (=> mapNonEmpty!47684 (= mapRes!47684 (and tp!90561 e!682350))))

(declare-fun mapValue!47684 () ValueCell!14571)

(declare-fun mapRest!47684 () (Array (_ BitVec 32) ValueCell!14571))

(declare-fun mapKey!47684 () (_ BitVec 32))

(assert (=> mapNonEmpty!47684 (= (arr!37578 _values!996) (store mapRest!47684 mapKey!47684 mapValue!47684))))

(declare-fun b!1201559 () Bool)

(declare-fun res!799912 () Bool)

(assert (=> b!1201559 (=> (not res!799912) (not e!682355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1201559 (= res!799912 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!47684 () Bool)

(assert (=> mapIsEmpty!47684 mapRes!47684))

(declare-fun bm!57486 () Bool)

(assert (=> bm!57486 (= call!57490 (getCurrentListMapNoExtraKeys!5309 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57487 () Bool)

(assert (=> bm!57487 (= call!57486 call!57488)))

(assert (= (and start!100570 res!799914) b!1201547))

(assert (= (and b!1201547 res!799916) b!1201535))

(assert (= (and b!1201535 res!799905) b!1201540))

(assert (= (and b!1201540 res!799904) b!1201544))

(assert (= (and b!1201544 res!799908) b!1201552))

(assert (= (and b!1201552 res!799906) b!1201559))

(assert (= (and b!1201559 res!799912) b!1201555))

(assert (= (and b!1201555 res!799907) b!1201554))

(assert (= (and b!1201554 res!799909) b!1201542))

(assert (= (and b!1201542 res!799915) b!1201546))

(assert (= (and b!1201546 (not res!799917)) b!1201551))

(assert (= (and b!1201551 (not res!799911)) b!1201550))

(assert (= (and b!1201550 c!117488) b!1201558))

(assert (= (and b!1201550 (not c!117488)) b!1201545))

(assert (= (or b!1201558 b!1201545) bm!57480))

(assert (= (or b!1201558 b!1201545) bm!57486))

(assert (= (and b!1201550 (not res!799910)) b!1201538))

(assert (= (and b!1201538 (not res!799913)) b!1201543))

(assert (= (and b!1201543 c!117489) b!1201541))

(assert (= (and b!1201543 (not c!117489)) b!1201536))

(assert (= (and b!1201536 c!117487) b!1201537))

(assert (= (and b!1201536 (not c!117487)) b!1201556))

(assert (= (and b!1201556 c!117490) b!1201553))

(assert (= (and b!1201556 (not c!117490)) b!1201548))

(assert (= (or b!1201537 b!1201553) bm!57485))

(assert (= (or b!1201537 b!1201553) bm!57487))

(assert (= (or b!1201537 b!1201553) bm!57482))

(assert (= (or b!1201541 bm!57482) bm!57483))

(assert (= (or b!1201541 bm!57485) bm!57484))

(assert (= (or b!1201541 bm!57487) bm!57481))

(assert (= (and b!1201557 condMapEmpty!47684) mapIsEmpty!47684))

(assert (= (and b!1201557 (not condMapEmpty!47684)) mapNonEmpty!47684))

(get-info :version)

(assert (= (and mapNonEmpty!47684 ((_ is ValueCellFull!14571) mapValue!47684)) b!1201549))

(assert (= (and b!1201557 ((_ is ValueCellFull!14571) mapDefault!47684)) b!1201539))

(assert (= start!100570 b!1201557))

(declare-fun b_lambda!21071 () Bool)

(assert (=> (not b_lambda!21071) (not b!1201551)))

(declare-fun t!39457 () Bool)

(declare-fun tb!10665 () Bool)

(assert (=> (and start!100570 (= defaultEntry!1004 defaultEntry!1004) t!39457) tb!10665))

(declare-fun result!21899 () Bool)

(assert (=> tb!10665 (= result!21899 tp_is_empty!30561)))

(assert (=> b!1201551 t!39457))

(declare-fun b_and!42617 () Bool)

(assert (= b_and!42615 (and (=> t!39457 result!21899) b_and!42617)))

(declare-fun m!1107653 () Bool)

(assert (=> bm!57483 m!1107653))

(declare-fun m!1107655 () Bool)

(assert (=> b!1201540 m!1107655))

(declare-fun m!1107657 () Bool)

(assert (=> mapNonEmpty!47684 m!1107657))

(declare-fun m!1107659 () Bool)

(assert (=> bm!57486 m!1107659))

(declare-fun m!1107661 () Bool)

(assert (=> b!1201550 m!1107661))

(declare-fun m!1107663 () Bool)

(assert (=> b!1201550 m!1107663))

(declare-fun m!1107665 () Bool)

(assert (=> bm!57484 m!1107665))

(declare-fun m!1107667 () Bool)

(assert (=> b!1201551 m!1107667))

(declare-fun m!1107669 () Bool)

(assert (=> b!1201551 m!1107669))

(declare-fun m!1107671 () Bool)

(assert (=> b!1201551 m!1107671))

(declare-fun m!1107673 () Bool)

(assert (=> b!1201551 m!1107673))

(declare-fun m!1107675 () Bool)

(assert (=> bm!57480 m!1107675))

(declare-fun m!1107677 () Bool)

(assert (=> b!1201541 m!1107677))

(declare-fun m!1107679 () Bool)

(assert (=> b!1201541 m!1107679))

(declare-fun m!1107681 () Bool)

(assert (=> b!1201541 m!1107681))

(declare-fun m!1107683 () Bool)

(assert (=> b!1201542 m!1107683))

(declare-fun m!1107685 () Bool)

(assert (=> bm!57481 m!1107685))

(declare-fun m!1107687 () Bool)

(assert (=> b!1201538 m!1107687))

(assert (=> b!1201538 m!1107659))

(declare-fun m!1107689 () Bool)

(assert (=> b!1201546 m!1107689))

(declare-fun m!1107691 () Bool)

(assert (=> b!1201546 m!1107691))

(declare-fun m!1107693 () Bool)

(assert (=> b!1201559 m!1107693))

(declare-fun m!1107695 () Bool)

(assert (=> b!1201558 m!1107695))

(declare-fun m!1107697 () Bool)

(assert (=> b!1201555 m!1107697))

(declare-fun m!1107699 () Bool)

(assert (=> b!1201547 m!1107699))

(declare-fun m!1107701 () Bool)

(assert (=> b!1201544 m!1107701))

(declare-fun m!1107703 () Bool)

(assert (=> start!100570 m!1107703))

(declare-fun m!1107705 () Bool)

(assert (=> start!100570 m!1107705))

(declare-fun m!1107707 () Bool)

(assert (=> b!1201554 m!1107707))

(declare-fun m!1107709 () Bool)

(assert (=> b!1201554 m!1107709))

(check-sat (not bm!57480) (not b!1201544) (not b!1201551) (not bm!57481) (not bm!57483) (not b_next!25857) tp_is_empty!30561 (not b!1201540) (not b!1201546) (not mapNonEmpty!47684) (not b!1201554) (not b!1201538) (not b!1201542) (not b!1201547) (not bm!57484) (not b_lambda!21071) (not b!1201559) (not b!1201558) (not b!1201550) (not start!100570) (not bm!57486) b_and!42617 (not b!1201541))
(check-sat b_and!42617 (not b_next!25857))
