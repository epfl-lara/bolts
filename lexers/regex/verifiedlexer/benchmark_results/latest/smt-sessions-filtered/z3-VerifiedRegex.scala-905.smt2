; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47076 () Bool)

(assert start!47076)

(declare-fun b!517615 () Bool)

(declare-fun b_free!13643 () Bool)

(declare-fun b_next!13655 () Bool)

(assert (=> b!517615 (= b_free!13643 (not b_next!13655))))

(declare-fun tp!161481 () Bool)

(declare-fun b_and!51125 () Bool)

(assert (=> b!517615 (= tp!161481 b_and!51125)))

(declare-fun b_free!13645 () Bool)

(declare-fun b_next!13657 () Bool)

(assert (=> start!47076 (= b_free!13645 (not b_next!13657))))

(declare-fun tp!161476 () Bool)

(declare-fun b_and!51127 () Bool)

(assert (=> start!47076 (= tp!161476 b_and!51127)))

(declare-fun b!517609 () Bool)

(declare-fun b_free!13647 () Bool)

(declare-fun b_next!13659 () Bool)

(assert (=> b!517609 (= b_free!13647 (not b_next!13659))))

(declare-fun tp!161482 () Bool)

(declare-fun b_and!51129 () Bool)

(assert (=> b!517609 (= tp!161482 b_and!51129)))

(declare-fun e!309867 () Bool)

(declare-fun tp!161475 () Bool)

(declare-fun tp!161479 () Bool)

(declare-fun e!309863 () Bool)

(declare-datatypes ((V!1540 0))(
  ( (V!1541 (val!1817 Int)) )
))
(declare-datatypes ((K!1442 0))(
  ( (K!1443 (val!1818 Int)) )
))
(declare-datatypes ((tuple2!5872 0))(
  ( (tuple2!5873 (_1!3152 K!1442) (_2!3152 V!1540)) )
))
(declare-datatypes ((List!4756 0))(
  ( (Nil!4746) (Cons!4746 (h!10146 tuple2!5872) (t!73334 List!4756)) )
))
(declare-datatypes ((array!2065 0))(
  ( (array!2066 (arr!946 (Array (_ BitVec 32) List!4756)) (size!3880 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!503 0))(
  ( (HashableExt!502 (__x!3484 Int)) )
))
(declare-datatypes ((array!2067 0))(
  ( (array!2068 (arr!947 (Array (_ BitVec 32) (_ BitVec 64))) (size!3881 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1062 0))(
  ( (LongMapFixedSize!1063 (defaultEntry!882 Int) (mask!1961 (_ BitVec 32)) (extraKeys!777 (_ BitVec 32)) (zeroValue!787 List!4756) (minValue!787 List!4756) (_size!1171 (_ BitVec 32)) (_keys!822 array!2067) (_values!809 array!2065) (_vacant!592 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2065 0))(
  ( (Cell!2066 (v!15800 LongMapFixedSize!1062)) )
))
(declare-datatypes ((MutLongMap!531 0))(
  ( (LongMap!531 (underlying!1241 Cell!2065)) (MutLongMapExt!530 (__x!3485 Int)) )
))
(declare-datatypes ((Cell!2067 0))(
  ( (Cell!2068 (v!15801 MutLongMap!531)) )
))
(declare-datatypes ((MutableMap!503 0))(
  ( (MutableMapExt!502 (__x!3486 Int)) (HashMap!503 (underlying!1242 Cell!2067) (hashF!2400 Hashable!503) (_size!1172 (_ BitVec 32)) (defaultValue!652 Int)) )
))
(declare-fun hm!65 () MutableMap!503)

(declare-fun array_inv!691 (array!2067) Bool)

(declare-fun array_inv!692 (array!2065) Bool)

(assert (=> b!517609 (= e!309867 (and tp!161482 tp!161479 tp!161475 (array_inv!691 (_keys!822 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65)))))) (array_inv!692 (_values!809 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65)))))) e!309863))))

(declare-fun b!517610 () Bool)

(declare-fun e!309859 () Bool)

(declare-fun e!309868 () Bool)

(assert (=> b!517610 (= e!309859 e!309868)))

(declare-fun res!219527 () Bool)

(assert (=> b!517610 (=> (not res!219527) (not e!309868))))

(declare-datatypes ((ListMap!213 0))(
  ( (ListMap!214 (toList!435 List!4756)) )
))
(declare-fun lt!215610 () ListMap!213)

(declare-fun invariantList!83 (List!4756) Bool)

(assert (=> b!517610 (= res!219527 (invariantList!83 (toList!435 lt!215610)))))

(declare-datatypes ((tuple2!5874 0))(
  ( (tuple2!5875 (_1!3153 Bool) (_2!3153 MutableMap!503)) )
))
(declare-fun lt!215608 () tuple2!5874)

(declare-fun map!1062 (MutableMap!503) ListMap!213)

(assert (=> b!517610 (= lt!215610 (map!1062 (_2!3153 lt!215608)))))

(declare-fun b!517611 () Bool)

(declare-fun e!309869 () Bool)

(declare-fun e!309866 () Bool)

(declare-fun lt!215611 () MutLongMap!531)

(get-info :version)

(assert (=> b!517611 (= e!309869 (and e!309866 ((_ is LongMap!531) lt!215611)))))

(assert (=> b!517611 (= lt!215611 (v!15801 (underlying!1242 hm!65)))))

(declare-fun b!517612 () Bool)

(declare-fun tp!161477 () Bool)

(declare-fun mapRes!2059 () Bool)

(assert (=> b!517612 (= e!309863 (and tp!161477 mapRes!2059))))

(declare-fun condMapEmpty!2059 () Bool)

(declare-fun mapDefault!2059 () List!4756)

(assert (=> b!517612 (= condMapEmpty!2059 (= (arr!946 (_values!809 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65)))))) ((as const (Array (_ BitVec 32) List!4756)) mapDefault!2059)))))

(declare-fun b!517613 () Bool)

(declare-fun lt!215609 () ListMap!213)

(declare-fun lt!215607 () ListMap!213)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!837 (List!4756) (InoxSet tuple2!5872))

(assert (=> b!517613 (= e!309868 (not (= ((_ map implies) (content!837 (toList!435 lt!215609)) (content!837 (toList!435 lt!215607))) ((as const (InoxSet tuple2!5872)) true))))))

(declare-fun b!517614 () Bool)

(declare-fun e!309860 () Bool)

(assert (=> b!517614 (= e!309860 e!309867)))

(declare-fun e!309861 () Bool)

(assert (=> b!517615 (= e!309861 (and e!309869 tp!161481))))

(declare-fun b!517616 () Bool)

(declare-fun res!219524 () Bool)

(declare-fun e!309864 () Bool)

(assert (=> b!517616 (=> (not res!219524) (not e!309864))))

(declare-fun valid!501 (MutableMap!503) Bool)

(assert (=> b!517616 (= res!219524 (valid!501 hm!65))))

(declare-fun b!517617 () Bool)

(declare-fun res!219526 () Bool)

(assert (=> b!517617 (=> (not res!219526) (not e!309868))))

(assert (=> b!517617 (= res!219526 (invariantList!83 (toList!435 lt!215609)))))

(declare-fun res!219522 () Bool)

(assert (=> start!47076 (=> (not res!219522) (not e!309864))))

(assert (=> start!47076 (= res!219522 ((_ is HashMap!503) hm!65))))

(assert (=> start!47076 e!309864))

(assert (=> start!47076 e!309861))

(declare-fun tp_is_empty!2657 () Bool)

(assert (=> start!47076 tp_is_empty!2657))

(assert (=> start!47076 tp!161476))

(declare-fun b!517618 () Bool)

(declare-fun res!219523 () Bool)

(assert (=> b!517618 (=> (not res!219523) (not e!309868))))

(declare-fun eq!41 (ListMap!213 ListMap!213) Bool)

(assert (=> b!517618 (= res!219523 (eq!41 lt!215610 lt!215607))))

(declare-fun b!517619 () Bool)

(declare-fun e!309865 () Bool)

(assert (=> b!517619 (= e!309864 e!309865)))

(declare-fun res!219520 () Bool)

(assert (=> b!517619 (=> (not res!219520) (not e!309865))))

(declare-fun p!6060 () Int)

(declare-fun forall!1416 (List!4756 Int) Bool)

(assert (=> b!517619 (= res!219520 (forall!1416 (toList!435 lt!215607) p!6060))))

(assert (=> b!517619 (= lt!215607 (map!1062 hm!65))))

(declare-fun b!517620 () Bool)

(declare-fun res!219528 () Bool)

(assert (=> b!517620 (=> (not res!219528) (not e!309868))))

(assert (=> b!517620 (= res!219528 (invariantList!83 (toList!435 lt!215607)))))

(declare-fun b!517621 () Bool)

(declare-fun res!219521 () Bool)

(assert (=> b!517621 (=> (not res!219521) (not e!309868))))

(assert (=> b!517621 (= res!219521 (not (_1!3153 lt!215608)))))

(declare-fun mapIsEmpty!2059 () Bool)

(assert (=> mapIsEmpty!2059 mapRes!2059))

(declare-fun b!517622 () Bool)

(assert (=> b!517622 (= e!309865 e!309859)))

(declare-fun res!219525 () Bool)

(assert (=> b!517622 (=> (not res!219525) (not e!309859))))

(assert (=> b!517622 (= res!219525 (valid!501 (_2!3153 lt!215608)))))

(declare-fun k0!1740 () K!1442)

(declare-fun remove!48 (MutableMap!503 K!1442) tuple2!5874)

(assert (=> b!517622 (= lt!215608 (remove!48 hm!65 k0!1740))))

(declare-fun -!45 (ListMap!213 K!1442) ListMap!213)

(assert (=> b!517622 (= lt!215609 (-!45 lt!215607 k0!1740))))

(declare-fun b!517623 () Bool)

(assert (=> b!517623 (= e!309866 e!309860)))

(declare-fun mapNonEmpty!2059 () Bool)

(declare-fun tp!161478 () Bool)

(declare-fun tp!161480 () Bool)

(assert (=> mapNonEmpty!2059 (= mapRes!2059 (and tp!161478 tp!161480))))

(declare-fun mapValue!2059 () List!4756)

(declare-fun mapKey!2059 () (_ BitVec 32))

(declare-fun mapRest!2059 () (Array (_ BitVec 32) List!4756))

(assert (=> mapNonEmpty!2059 (= (arr!946 (_values!809 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65)))))) (store mapRest!2059 mapKey!2059 mapValue!2059))))

(assert (= (and start!47076 res!219522) b!517616))

(assert (= (and b!517616 res!219524) b!517619))

(assert (= (and b!517619 res!219520) b!517622))

(assert (= (and b!517622 res!219525) b!517610))

(assert (= (and b!517610 res!219527) b!517621))

(assert (= (and b!517621 res!219521) b!517618))

(assert (= (and b!517618 res!219523) b!517617))

(assert (= (and b!517617 res!219526) b!517620))

(assert (= (and b!517620 res!219528) b!517613))

(assert (= (and b!517612 condMapEmpty!2059) mapIsEmpty!2059))

(assert (= (and b!517612 (not condMapEmpty!2059)) mapNonEmpty!2059))

(assert (= b!517609 b!517612))

(assert (= b!517614 b!517609))

(assert (= b!517623 b!517614))

(assert (= (and b!517611 ((_ is LongMap!531) (v!15801 (underlying!1242 hm!65)))) b!517623))

(assert (= b!517615 b!517611))

(assert (= (and start!47076 ((_ is HashMap!503) hm!65)) b!517615))

(declare-fun m!764415 () Bool)

(assert (=> b!517619 m!764415))

(declare-fun m!764417 () Bool)

(assert (=> b!517619 m!764417))

(declare-fun m!764419 () Bool)

(assert (=> b!517617 m!764419))

(declare-fun m!764421 () Bool)

(assert (=> b!517610 m!764421))

(declare-fun m!764423 () Bool)

(assert (=> b!517610 m!764423))

(declare-fun m!764425 () Bool)

(assert (=> b!517616 m!764425))

(declare-fun m!764427 () Bool)

(assert (=> b!517620 m!764427))

(declare-fun m!764429 () Bool)

(assert (=> b!517622 m!764429))

(declare-fun m!764431 () Bool)

(assert (=> b!517622 m!764431))

(declare-fun m!764433 () Bool)

(assert (=> b!517622 m!764433))

(declare-fun m!764435 () Bool)

(assert (=> b!517618 m!764435))

(declare-fun m!764437 () Bool)

(assert (=> b!517613 m!764437))

(declare-fun m!764439 () Bool)

(assert (=> b!517613 m!764439))

(declare-fun m!764441 () Bool)

(assert (=> mapNonEmpty!2059 m!764441))

(declare-fun m!764443 () Bool)

(assert (=> b!517609 m!764443))

(declare-fun m!764445 () Bool)

(assert (=> b!517609 m!764445))

(check-sat (not b_next!13655) (not b!517610) b_and!51125 (not b!517622) b_and!51129 (not b_next!13657) (not b!517617) (not b_next!13659) (not b!517613) (not b!517618) b_and!51127 (not b!517609) (not b!517616) (not b!517620) (not b!517619) (not b!517612) tp_is_empty!2657 (not mapNonEmpty!2059))
(check-sat (not b_next!13655) b_and!51125 b_and!51127 b_and!51129 (not b_next!13657) (not b_next!13659))
(get-model)

(declare-fun d!185054 () Bool)

(declare-fun c!100219 () Bool)

(assert (=> d!185054 (= c!100219 ((_ is Nil!4746) (toList!435 lt!215609)))))

(declare-fun e!309872 () (InoxSet tuple2!5872))

(assert (=> d!185054 (= (content!837 (toList!435 lt!215609)) e!309872)))

(declare-fun b!517628 () Bool)

(assert (=> b!517628 (= e!309872 ((as const (Array tuple2!5872 Bool)) false))))

(declare-fun b!517629 () Bool)

(assert (=> b!517629 (= e!309872 ((_ map or) (store ((as const (Array tuple2!5872 Bool)) false) (h!10146 (toList!435 lt!215609)) true) (content!837 (t!73334 (toList!435 lt!215609)))))))

(assert (= (and d!185054 c!100219) b!517628))

(assert (= (and d!185054 (not c!100219)) b!517629))

(declare-fun m!764447 () Bool)

(assert (=> b!517629 m!764447))

(declare-fun m!764449 () Bool)

(assert (=> b!517629 m!764449))

(assert (=> b!517613 d!185054))

(declare-fun d!185056 () Bool)

(declare-fun c!100220 () Bool)

(assert (=> d!185056 (= c!100220 ((_ is Nil!4746) (toList!435 lt!215607)))))

(declare-fun e!309873 () (InoxSet tuple2!5872))

(assert (=> d!185056 (= (content!837 (toList!435 lt!215607)) e!309873)))

(declare-fun b!517630 () Bool)

(assert (=> b!517630 (= e!309873 ((as const (Array tuple2!5872 Bool)) false))))

(declare-fun b!517631 () Bool)

(assert (=> b!517631 (= e!309873 ((_ map or) (store ((as const (Array tuple2!5872 Bool)) false) (h!10146 (toList!435 lt!215607)) true) (content!837 (t!73334 (toList!435 lt!215607)))))))

(assert (= (and d!185056 c!100220) b!517630))

(assert (= (and d!185056 (not c!100220)) b!517631))

(declare-fun m!764451 () Bool)

(assert (=> b!517631 m!764451))

(declare-fun m!764453 () Bool)

(assert (=> b!517631 m!764453))

(assert (=> b!517613 d!185056))

(declare-fun d!185058 () Bool)

(assert (=> d!185058 (= (eq!41 lt!215610 lt!215607) (= (content!837 (toList!435 lt!215610)) (content!837 (toList!435 lt!215607))))))

(declare-fun bs!60120 () Bool)

(assert (= bs!60120 d!185058))

(declare-fun m!764455 () Bool)

(assert (=> bs!60120 m!764455))

(assert (=> bs!60120 m!764439))

(assert (=> b!517618 d!185058))

(declare-fun d!185060 () Bool)

(declare-fun res!219533 () Bool)

(declare-fun e!309876 () Bool)

(assert (=> d!185060 (=> (not res!219533) (not e!309876))))

(declare-fun valid!502 (MutLongMap!531) Bool)

(assert (=> d!185060 (= res!219533 (valid!502 (v!15801 (underlying!1242 (_2!3153 lt!215608)))))))

(assert (=> d!185060 (= (valid!501 (_2!3153 lt!215608)) e!309876)))

(declare-fun b!517636 () Bool)

(declare-fun res!219534 () Bool)

(assert (=> b!517636 (=> (not res!219534) (not e!309876))))

(declare-fun lambda!14603 () Int)

(declare-datatypes ((tuple2!5876 0))(
  ( (tuple2!5877 (_1!3154 (_ BitVec 64)) (_2!3154 List!4756)) )
))
(declare-datatypes ((List!4757 0))(
  ( (Nil!4747) (Cons!4747 (h!10147 tuple2!5876) (t!73337 List!4757)) )
))
(declare-fun forall!1417 (List!4757 Int) Bool)

(declare-datatypes ((ListLongMap!89 0))(
  ( (ListLongMap!90 (toList!436 List!4757)) )
))
(declare-fun map!1063 (MutLongMap!531) ListLongMap!89)

(assert (=> b!517636 (= res!219534 (forall!1417 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608))))) lambda!14603))))

(declare-fun b!517637 () Bool)

(declare-fun allKeysSameHashInMap!33 (ListLongMap!89 Hashable!503) Bool)

(assert (=> b!517637 (= e!309876 (allKeysSameHashInMap!33 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608)))) (hashF!2400 (_2!3153 lt!215608))))))

(assert (= (and d!185060 res!219533) b!517636))

(assert (= (and b!517636 res!219534) b!517637))

(declare-fun m!764457 () Bool)

(assert (=> d!185060 m!764457))

(declare-fun m!764459 () Bool)

(assert (=> b!517636 m!764459))

(declare-fun m!764461 () Bool)

(assert (=> b!517636 m!764461))

(assert (=> b!517637 m!764459))

(assert (=> b!517637 m!764459))

(declare-fun m!764463 () Bool)

(assert (=> b!517637 m!764463))

(assert (=> b!517622 d!185060))

(declare-fun bs!60121 () Bool)

(declare-fun b!517663 () Bool)

(assert (= bs!60121 (and b!517663 b!517636)))

(declare-fun lambda!14610 () Int)

(assert (=> bs!60121 (= lambda!14610 lambda!14603)))

(declare-fun b!517660 () Bool)

(declare-fun call!37904 () ListMap!213)

(declare-fun call!37899 () ListMap!213)

(assert (=> b!517660 (eq!41 call!37904 call!37899)))

(declare-datatypes ((Unit!8673 0))(
  ( (Unit!8674) )
))
(declare-fun lt!215674 () Unit!8673)

(declare-fun lt!215696 () Unit!8673)

(assert (=> b!517660 (= lt!215674 lt!215696)))

(declare-fun call!37905 () ListMap!213)

(declare-fun lt!215691 () (_ BitVec 64))

(declare-fun lt!215699 () List!4756)

(declare-fun lt!215677 () ListLongMap!89)

(declare-fun extractMap!26 (List!4757) ListMap!213)

(declare-fun +!29 (ListLongMap!89 tuple2!5876) ListLongMap!89)

(assert (=> b!517660 (eq!41 (extractMap!26 (toList!436 (+!29 lt!215677 (tuple2!5877 lt!215691 lt!215699)))) (-!45 call!37905 k0!1740))))

(declare-datatypes ((tuple2!5878 0))(
  ( (tuple2!5879 (_1!3155 Unit!8673) (_2!3155 MutableMap!503)) )
))
(declare-fun lt!215690 () tuple2!5878)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!18 (ListLongMap!89 (_ BitVec 64) List!4756 K!1442 Hashable!503) Unit!8673)

(assert (=> b!517660 (= lt!215696 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!18 lt!215677 lt!215691 lt!215699 k0!1740 (hashF!2400 (_2!3155 lt!215690))))))

(declare-fun lt!215688 () Unit!8673)

(declare-fun Unit!8675 () Unit!8673)

(assert (=> b!517660 (= lt!215688 Unit!8675)))

(declare-fun lt!215695 () ListMap!213)

(declare-fun contains!1106 (ListMap!213 K!1442) Bool)

(assert (=> b!517660 (contains!1106 lt!215695 k0!1740)))

(declare-fun lt!215680 () Unit!8673)

(declare-fun Unit!8676 () Unit!8673)

(assert (=> b!517660 (= lt!215680 Unit!8676)))

(declare-fun call!37903 () Bool)

(assert (=> b!517660 call!37903))

(declare-fun lt!215685 () Unit!8673)

(declare-fun Unit!8677 () Unit!8673)

(assert (=> b!517660 (= lt!215685 Unit!8677)))

(declare-fun call!37900 () ListLongMap!89)

(assert (=> b!517660 (allKeysSameHashInMap!33 call!37900 (hashF!2400 (_2!3155 lt!215690)))))

(declare-fun lt!215694 () Unit!8673)

(declare-fun Unit!8678 () Unit!8673)

(assert (=> b!517660 (= lt!215694 Unit!8678)))

(assert (=> b!517660 (forall!1417 (toList!436 call!37900) lambda!14610)))

(declare-fun lt!215701 () Unit!8673)

(declare-fun lt!215697 () Unit!8673)

(assert (=> b!517660 (= lt!215701 lt!215697)))

(declare-fun e!309893 () Bool)

(assert (=> b!517660 e!309893))

(declare-fun res!219542 () Bool)

(assert (=> b!517660 (=> (not res!219542) (not e!309893))))

(declare-fun lt!215686 () ListLongMap!89)

(assert (=> b!517660 (= res!219542 (forall!1417 (toList!436 lt!215686) lambda!14610))))

(assert (=> b!517660 (= lt!215686 (+!29 lt!215677 (tuple2!5877 lt!215691 lt!215699)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!20 (ListLongMap!89 (_ BitVec 64) List!4756 Hashable!503) Unit!8673)

(assert (=> b!517660 (= lt!215697 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!20 lt!215677 lt!215691 lt!215699 (hashF!2400 (_2!3155 lt!215690))))))

(declare-fun lt!215689 () Unit!8673)

(declare-fun lt!215675 () Unit!8673)

(assert (=> b!517660 (= lt!215689 lt!215675)))

(declare-fun lt!215679 () List!4756)

(declare-fun allKeysSameHash!21 (List!4756 (_ BitVec 64) Hashable!503) Bool)

(declare-fun removePairForKey!20 (List!4756 K!1442) List!4756)

(assert (=> b!517660 (allKeysSameHash!21 (removePairForKey!20 lt!215679 k0!1740) lt!215691 (hashF!2400 (_2!3155 lt!215690)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!20 (List!4756 K!1442 (_ BitVec 64) Hashable!503) Unit!8673)

(assert (=> b!517660 (= lt!215675 (lemmaRemovePairForKeyPreservesHash!20 lt!215679 k0!1740 lt!215691 (hashF!2400 (_2!3155 lt!215690))))))

(declare-fun lt!215698 () Unit!8673)

(declare-fun lt!215676 () Unit!8673)

(assert (=> b!517660 (= lt!215698 lt!215676)))

(assert (=> b!517660 (allKeysSameHash!21 lt!215679 lt!215691 (hashF!2400 (_2!3155 lt!215690)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!20 (List!4757 (_ BitVec 64) List!4756 Hashable!503) Unit!8673)

(assert (=> b!517660 (= lt!215676 (lemmaInLongMapAllKeySameHashThenForTuple!20 (toList!436 lt!215677) lt!215691 lt!215679 (hashF!2400 (_2!3155 lt!215690))))))

(declare-fun e!309890 () Unit!8673)

(declare-fun Unit!8679 () Unit!8673)

(assert (=> b!517660 (= e!309890 Unit!8679)))

(declare-fun bm!37894 () Bool)

(declare-fun call!37901 () ListMap!213)

(assert (=> bm!37894 (= call!37901 (map!1062 hm!65))))

(declare-fun bm!37895 () Bool)

(declare-fun call!37906 () Bool)

(declare-fun call!37902 () ListMap!213)

(declare-fun e!309889 () ListMap!213)

(assert (=> bm!37895 (= call!37906 (eq!41 call!37902 e!309889))))

(declare-fun c!100232 () Bool)

(declare-fun c!100229 () Bool)

(assert (=> bm!37895 (= c!100232 c!100229)))

(declare-fun c!100230 () Bool)

(declare-fun bm!37896 () Bool)

(assert (=> bm!37896 (= call!37899 (-!45 (ite c!100230 call!37905 lt!215695) k0!1740))))

(declare-fun bm!37897 () Bool)

(declare-fun lt!215693 () tuple2!5874)

(assert (=> bm!37897 (= call!37902 (map!1062 (_2!3153 lt!215693)))))

(declare-fun b!517661 () Bool)

(assert (=> b!517661 (= call!37904 lt!215695)))

(declare-fun lt!215700 () Unit!8673)

(declare-fun Unit!8680 () Unit!8673)

(assert (=> b!517661 (= lt!215700 Unit!8680)))

(assert (=> b!517661 call!37903))

(declare-fun Unit!8681 () Unit!8673)

(assert (=> b!517661 (= e!309890 Unit!8681)))

(declare-fun lt!215692 () ListLongMap!89)

(declare-fun bm!37898 () Bool)

(assert (=> bm!37898 (= call!37905 (extractMap!26 (ite c!100230 (toList!436 lt!215692) (toList!436 lt!215677))))))

(declare-fun b!517662 () Bool)

(declare-fun e!309891 () Bool)

(declare-fun e!309892 () Bool)

(assert (=> b!517662 (= e!309891 e!309892)))

(assert (=> b!517662 (= c!100229 (_1!3153 lt!215693))))

(declare-fun e!309894 () tuple2!5874)

(declare-datatypes ((tuple2!5880 0))(
  ( (tuple2!5881 (_1!3156 Bool) (_2!3156 MutLongMap!531)) )
))
(declare-fun lt!215678 () tuple2!5880)

(assert (=> b!517663 (= e!309894 (tuple2!5875 (_1!3156 lt!215678) (_2!3155 lt!215690)))))

(declare-fun hash!534 (Hashable!503 K!1442) (_ BitVec 64))

(assert (=> b!517663 (= lt!215691 (hash!534 (hashF!2400 hm!65) k0!1740))))

(declare-fun apply!1194 (MutLongMap!531 (_ BitVec 64)) List!4756)

(assert (=> b!517663 (= lt!215679 (apply!1194 (v!15801 (underlying!1242 hm!65)) lt!215691))))

(declare-fun lt!215687 () Unit!8673)

(declare-fun forallContained!451 (List!4757 Int tuple2!5876) Unit!8673)

(assert (=> b!517663 (= lt!215687 (forallContained!451 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))) lambda!14610 (tuple2!5877 lt!215691 (apply!1194 (v!15801 (underlying!1242 hm!65)) lt!215691))))))

(assert (=> b!517663 (= lt!215695 (map!1062 hm!65))))

(assert (=> b!517663 (= lt!215677 (map!1063 (v!15801 (underlying!1242 hm!65))))))

(assert (=> b!517663 (= lt!215699 (removePairForKey!20 lt!215679 k0!1740))))

(declare-fun update!62 (MutLongMap!531 (_ BitVec 64) List!4756) tuple2!5880)

(assert (=> b!517663 (= lt!215678 (update!62 (v!15801 (underlying!1242 hm!65)) lt!215691 lt!215699))))

(declare-fun lt!215673 () Bool)

(declare-fun Unit!8682 () Unit!8673)

(declare-fun Unit!8683 () Unit!8673)

(assert (=> b!517663 (= lt!215690 (ite (and (_1!3156 lt!215678) lt!215673) (tuple2!5879 Unit!8682 (HashMap!503 (Cell!2068 (_2!3156 lt!215678)) (hashF!2400 hm!65) (bvsub (_size!1172 hm!65) #b00000000000000000000000000000001) (defaultValue!652 hm!65))) (tuple2!5879 Unit!8683 (HashMap!503 (Cell!2068 (_2!3156 lt!215678)) (hashF!2400 hm!65) (_size!1172 hm!65) (defaultValue!652 hm!65)))))))

(declare-fun lt!215683 () Unit!8673)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!20 (List!4756 K!1442) Unit!8673)

(assert (=> b!517663 (= lt!215683 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!20 lt!215679 k0!1740))))

(declare-fun noDuplicateKeys!22 (List!4756) Bool)

(assert (=> b!517663 (noDuplicateKeys!22 (removePairForKey!20 lt!215679 k0!1740))))

(declare-fun lt!215682 () Unit!8673)

(assert (=> b!517663 (= lt!215682 lt!215683)))

(declare-fun c!100231 () Bool)

(assert (=> b!517663 (= c!100231 (_1!3156 lt!215678))))

(declare-fun lt!215684 () Unit!8673)

(assert (=> b!517663 (= lt!215684 e!309890)))

(declare-fun b!517664 () Bool)

(assert (=> b!517664 (= e!309892 call!37906)))

(declare-fun b!517665 () Bool)

(declare-fun res!219541 () Bool)

(assert (=> b!517665 (=> (not res!219541) (not e!309891))))

(assert (=> b!517665 (= res!219541 (valid!501 (_2!3153 lt!215693)))))

(declare-fun b!517666 () Bool)

(assert (=> b!517666 (= e!309889 call!37901)))

(declare-fun b!517667 () Bool)

(assert (=> b!517667 (= e!309892 call!37906)))

(declare-fun bm!37899 () Bool)

(assert (=> bm!37899 (= call!37900 (map!1063 (ite c!100230 (v!15801 (underlying!1242 hm!65)) (v!15801 (underlying!1242 (_2!3155 lt!215690))))))))

(declare-fun b!517668 () Bool)

(assert (=> b!517668 (= e!309889 (-!45 call!37901 k0!1740))))

(declare-fun bm!37900 () Bool)

(assert (=> bm!37900 (= call!37903 (valid!501 (_2!3155 lt!215690)))))

(declare-fun b!517669 () Bool)

(assert (=> b!517669 (= e!309894 (tuple2!5875 true hm!65))))

(assert (=> b!517669 (= lt!215692 call!37900)))

(declare-fun lt!215681 () Unit!8673)

(declare-fun lemmaRemoveNotContainedDoesNotChange!18 (ListLongMap!89 K!1442 Hashable!503) Unit!8673)

(assert (=> b!517669 (= lt!215681 (lemmaRemoveNotContainedDoesNotChange!18 lt!215692 k0!1740 (hashF!2400 hm!65)))))

(assert (=> b!517669 (= call!37905 call!37899)))

(declare-fun lt!215672 () Unit!8673)

(assert (=> b!517669 (= lt!215672 lt!215681)))

(declare-fun d!185062 () Bool)

(assert (=> d!185062 e!309891))

(declare-fun res!219543 () Bool)

(assert (=> d!185062 (=> (not res!219543) (not e!309891))))

(assert (=> d!185062 (= res!219543 ((_ is HashMap!503) (_2!3153 lt!215693)))))

(assert (=> d!185062 (= lt!215693 e!309894)))

(assert (=> d!185062 (= c!100230 (not lt!215673))))

(declare-fun contains!1107 (MutableMap!503 K!1442) Bool)

(assert (=> d!185062 (= lt!215673 (contains!1107 hm!65 k0!1740))))

(assert (=> d!185062 (valid!501 hm!65)))

(assert (=> d!185062 (= (remove!48 hm!65 k0!1740) lt!215693)))

(declare-fun b!517670 () Bool)

(assert (=> b!517670 (= e!309893 (allKeysSameHashInMap!33 lt!215686 (hashF!2400 (_2!3155 lt!215690))))))

(declare-fun bm!37901 () Bool)

(assert (=> bm!37901 (= call!37904 (map!1062 (_2!3155 lt!215690)))))

(assert (= (and d!185062 c!100230) b!517669))

(assert (= (and d!185062 (not c!100230)) b!517663))

(assert (= (and b!517663 c!100231) b!517660))

(assert (= (and b!517663 (not c!100231)) b!517661))

(assert (= (and b!517660 res!219542) b!517670))

(assert (= (or b!517660 b!517661) bm!37900))

(assert (= (or b!517660 b!517661) bm!37901))

(assert (= (or b!517669 b!517660) bm!37899))

(assert (= (or b!517669 b!517660) bm!37898))

(assert (= (or b!517669 b!517660) bm!37896))

(assert (= (and d!185062 res!219543) b!517665))

(assert (= (and b!517665 res!219541) b!517662))

(assert (= (and b!517662 c!100229) b!517667))

(assert (= (and b!517662 (not c!100229)) b!517664))

(assert (= (or b!517667 b!517664) bm!37894))

(assert (= (or b!517667 b!517664) bm!37897))

(assert (= (or b!517667 b!517664) bm!37895))

(assert (= (and bm!37895 c!100232) b!517668))

(assert (= (and bm!37895 (not c!100232)) b!517666))

(assert (=> bm!37894 m!764417))

(declare-fun m!764465 () Bool)

(assert (=> b!517663 m!764465))

(declare-fun m!764467 () Bool)

(assert (=> b!517663 m!764467))

(declare-fun m!764469 () Bool)

(assert (=> b!517663 m!764469))

(assert (=> b!517663 m!764467))

(declare-fun m!764471 () Bool)

(assert (=> b!517663 m!764471))

(declare-fun m!764473 () Bool)

(assert (=> b!517663 m!764473))

(declare-fun m!764475 () Bool)

(assert (=> b!517663 m!764475))

(assert (=> b!517663 m!764417))

(declare-fun m!764477 () Bool)

(assert (=> b!517663 m!764477))

(declare-fun m!764479 () Bool)

(assert (=> b!517663 m!764479))

(declare-fun m!764481 () Bool)

(assert (=> bm!37897 m!764481))

(declare-fun m!764483 () Bool)

(assert (=> bm!37899 m!764483))

(declare-fun m!764485 () Bool)

(assert (=> d!185062 m!764485))

(assert (=> d!185062 m!764425))

(declare-fun m!764487 () Bool)

(assert (=> b!517668 m!764487))

(declare-fun m!764489 () Bool)

(assert (=> b!517669 m!764489))

(declare-fun m!764491 () Bool)

(assert (=> bm!37898 m!764491))

(declare-fun m!764493 () Bool)

(assert (=> bm!37901 m!764493))

(declare-fun m!764495 () Bool)

(assert (=> b!517665 m!764495))

(declare-fun m!764497 () Bool)

(assert (=> bm!37895 m!764497))

(declare-fun m!764499 () Bool)

(assert (=> b!517670 m!764499))

(declare-fun m!764501 () Bool)

(assert (=> bm!37900 m!764501))

(declare-fun m!764503 () Bool)

(assert (=> bm!37896 m!764503))

(declare-fun m!764505 () Bool)

(assert (=> b!517660 m!764505))

(declare-fun m!764507 () Bool)

(assert (=> b!517660 m!764507))

(assert (=> b!517660 m!764467))

(declare-fun m!764509 () Bool)

(assert (=> b!517660 m!764509))

(assert (=> b!517660 m!764467))

(declare-fun m!764511 () Bool)

(assert (=> b!517660 m!764511))

(declare-fun m!764513 () Bool)

(assert (=> b!517660 m!764513))

(declare-fun m!764515 () Bool)

(assert (=> b!517660 m!764515))

(assert (=> b!517660 m!764507))

(declare-fun m!764517 () Bool)

(assert (=> b!517660 m!764517))

(declare-fun m!764519 () Bool)

(assert (=> b!517660 m!764519))

(declare-fun m!764521 () Bool)

(assert (=> b!517660 m!764521))

(declare-fun m!764523 () Bool)

(assert (=> b!517660 m!764523))

(declare-fun m!764525 () Bool)

(assert (=> b!517660 m!764525))

(declare-fun m!764527 () Bool)

(assert (=> b!517660 m!764527))

(declare-fun m!764529 () Bool)

(assert (=> b!517660 m!764529))

(declare-fun m!764531 () Bool)

(assert (=> b!517660 m!764531))

(assert (=> b!517660 m!764515))

(declare-fun m!764533 () Bool)

(assert (=> b!517660 m!764533))

(assert (=> b!517622 d!185062))

(declare-fun d!185064 () Bool)

(declare-fun e!309897 () Bool)

(assert (=> d!185064 e!309897))

(declare-fun res!219546 () Bool)

(assert (=> d!185064 (=> (not res!219546) (not e!309897))))

(declare-fun lt!215704 () ListMap!213)

(assert (=> d!185064 (= res!219546 (not (contains!1106 lt!215704 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!18 (List!4756 K!1442) List!4756)

(assert (=> d!185064 (= lt!215704 (ListMap!214 (removePresrvNoDuplicatedKeys!18 (toList!435 lt!215607) k0!1740)))))

(assert (=> d!185064 (= (-!45 lt!215607 k0!1740) lt!215704)))

(declare-fun b!517673 () Bool)

(declare-datatypes ((List!4758 0))(
  ( (Nil!4748) (Cons!4748 (h!10148 K!1442) (t!73338 List!4758)) )
))
(declare-fun content!838 (List!4758) (InoxSet K!1442))

(declare-fun keys!1869 (ListMap!213) List!4758)

(assert (=> b!517673 (= e!309897 (= ((_ map and) (content!838 (keys!1869 lt!215607)) ((_ map not) (store ((as const (Array K!1442 Bool)) false) k0!1740 true))) (content!838 (keys!1869 lt!215704))))))

(assert (= (and d!185064 res!219546) b!517673))

(declare-fun m!764535 () Bool)

(assert (=> d!185064 m!764535))

(declare-fun m!764537 () Bool)

(assert (=> d!185064 m!764537))

(declare-fun m!764539 () Bool)

(assert (=> b!517673 m!764539))

(assert (=> b!517673 m!764539))

(declare-fun m!764541 () Bool)

(assert (=> b!517673 m!764541))

(declare-fun m!764543 () Bool)

(assert (=> b!517673 m!764543))

(declare-fun m!764545 () Bool)

(assert (=> b!517673 m!764545))

(assert (=> b!517673 m!764543))

(declare-fun m!764547 () Bool)

(assert (=> b!517673 m!764547))

(assert (=> b!517622 d!185064))

(declare-fun d!185066 () Bool)

(declare-fun noDuplicatedKeys!21 (List!4756) Bool)

(assert (=> d!185066 (= (invariantList!83 (toList!435 lt!215609)) (noDuplicatedKeys!21 (toList!435 lt!215609)))))

(declare-fun bs!60122 () Bool)

(assert (= bs!60122 d!185066))

(declare-fun m!764549 () Bool)

(assert (=> bs!60122 m!764549))

(assert (=> b!517617 d!185066))

(declare-fun bs!60123 () Bool)

(declare-fun b!517674 () Bool)

(assert (= bs!60123 (and b!517674 b!517636)))

(declare-fun lambda!14611 () Int)

(assert (=> bs!60123 (= lambda!14611 lambda!14603)))

(declare-fun bs!60124 () Bool)

(assert (= bs!60124 (and b!517674 b!517663)))

(assert (=> bs!60124 (= lambda!14611 lambda!14610)))

(declare-fun d!185068 () Bool)

(declare-fun res!219547 () Bool)

(declare-fun e!309898 () Bool)

(assert (=> d!185068 (=> (not res!219547) (not e!309898))))

(assert (=> d!185068 (= res!219547 (valid!502 (v!15801 (underlying!1242 hm!65))))))

(assert (=> d!185068 (= (valid!501 hm!65) e!309898)))

(declare-fun res!219548 () Bool)

(assert (=> b!517674 (=> (not res!219548) (not e!309898))))

(assert (=> b!517674 (= res!219548 (forall!1417 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))) lambda!14611))))

(declare-fun b!517675 () Bool)

(assert (=> b!517675 (= e!309898 (allKeysSameHashInMap!33 (map!1063 (v!15801 (underlying!1242 hm!65))) (hashF!2400 hm!65)))))

(assert (= (and d!185068 res!219547) b!517674))

(assert (= (and b!517674 res!219548) b!517675))

(declare-fun m!764551 () Bool)

(assert (=> d!185068 m!764551))

(assert (=> b!517674 m!764473))

(declare-fun m!764553 () Bool)

(assert (=> b!517674 m!764553))

(assert (=> b!517675 m!764473))

(assert (=> b!517675 m!764473))

(declare-fun m!764555 () Bool)

(assert (=> b!517675 m!764555))

(assert (=> b!517616 d!185068))

(declare-fun d!185070 () Bool)

(assert (=> d!185070 (= (invariantList!83 (toList!435 lt!215610)) (noDuplicatedKeys!21 (toList!435 lt!215610)))))

(declare-fun bs!60125 () Bool)

(assert (= bs!60125 d!185070))

(declare-fun m!764557 () Bool)

(assert (=> bs!60125 m!764557))

(assert (=> b!517610 d!185070))

(declare-fun d!185072 () Bool)

(declare-fun lt!215707 () ListMap!213)

(assert (=> d!185072 (invariantList!83 (toList!435 lt!215707))))

(assert (=> d!185072 (= lt!215707 (extractMap!26 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608)))))))))

(assert (=> d!185072 (valid!501 (_2!3153 lt!215608))))

(assert (=> d!185072 (= (map!1062 (_2!3153 lt!215608)) lt!215707)))

(declare-fun bs!60126 () Bool)

(assert (= bs!60126 d!185072))

(declare-fun m!764559 () Bool)

(assert (=> bs!60126 m!764559))

(assert (=> bs!60126 m!764459))

(declare-fun m!764561 () Bool)

(assert (=> bs!60126 m!764561))

(assert (=> bs!60126 m!764429))

(assert (=> b!517610 d!185072))

(declare-fun d!185074 () Bool)

(assert (=> d!185074 (= (invariantList!83 (toList!435 lt!215607)) (noDuplicatedKeys!21 (toList!435 lt!215607)))))

(declare-fun bs!60127 () Bool)

(assert (= bs!60127 d!185074))

(declare-fun m!764563 () Bool)

(assert (=> bs!60127 m!764563))

(assert (=> b!517620 d!185074))

(declare-fun d!185076 () Bool)

(assert (=> d!185076 (= (array_inv!691 (_keys!822 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65)))))) (bvsge (size!3881 (_keys!822 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!517609 d!185076))

(declare-fun d!185078 () Bool)

(assert (=> d!185078 (= (array_inv!692 (_values!809 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65)))))) (bvsge (size!3880 (_values!809 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!517609 d!185078))

(declare-fun d!185080 () Bool)

(declare-fun res!219553 () Bool)

(declare-fun e!309903 () Bool)

(assert (=> d!185080 (=> res!219553 e!309903)))

(assert (=> d!185080 (= res!219553 ((_ is Nil!4746) (toList!435 lt!215607)))))

(assert (=> d!185080 (= (forall!1416 (toList!435 lt!215607) p!6060) e!309903)))

(declare-fun b!517680 () Bool)

(declare-fun e!309904 () Bool)

(assert (=> b!517680 (= e!309903 e!309904)))

(declare-fun res!219554 () Bool)

(assert (=> b!517680 (=> (not res!219554) (not e!309904))))

(declare-fun dynLambda!2987 (Int tuple2!5872) Bool)

(assert (=> b!517680 (= res!219554 (dynLambda!2987 p!6060 (h!10146 (toList!435 lt!215607))))))

(declare-fun b!517681 () Bool)

(assert (=> b!517681 (= e!309904 (forall!1416 (t!73334 (toList!435 lt!215607)) p!6060))))

(assert (= (and d!185080 (not res!219553)) b!517680))

(assert (= (and b!517680 res!219554) b!517681))

(declare-fun b_lambda!20137 () Bool)

(assert (=> (not b_lambda!20137) (not b!517680)))

(declare-fun t!73336 () Bool)

(declare-fun tb!47177 () Bool)

(assert (=> (and start!47076 (= p!6060 p!6060) t!73336) tb!47177))

(declare-fun result!52258 () Bool)

(assert (=> tb!47177 (= result!52258 true)))

(assert (=> b!517680 t!73336))

(declare-fun b_and!51131 () Bool)

(assert (= b_and!51127 (and (=> t!73336 result!52258) b_and!51131)))

(declare-fun m!764565 () Bool)

(assert (=> b!517680 m!764565))

(declare-fun m!764567 () Bool)

(assert (=> b!517681 m!764567))

(assert (=> b!517619 d!185080))

(declare-fun d!185082 () Bool)

(declare-fun lt!215708 () ListMap!213)

(assert (=> d!185082 (invariantList!83 (toList!435 lt!215708))))

(assert (=> d!185082 (= lt!215708 (extractMap!26 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65))))))))

(assert (=> d!185082 (valid!501 hm!65)))

(assert (=> d!185082 (= (map!1062 hm!65) lt!215708)))

(declare-fun bs!60128 () Bool)

(assert (= bs!60128 d!185082))

(declare-fun m!764569 () Bool)

(assert (=> bs!60128 m!764569))

(assert (=> bs!60128 m!764473))

(declare-fun m!764571 () Bool)

(assert (=> bs!60128 m!764571))

(assert (=> bs!60128 m!764425))

(assert (=> b!517619 d!185082))

(declare-fun tp_is_empty!2659 () Bool)

(declare-fun b!517686 () Bool)

(declare-fun e!309907 () Bool)

(declare-fun tp!161485 () Bool)

(assert (=> b!517686 (= e!309907 (and tp_is_empty!2657 tp_is_empty!2659 tp!161485))))

(assert (=> b!517612 (= tp!161477 e!309907)))

(assert (= (and b!517612 ((_ is Cons!4746) mapDefault!2059)) b!517686))

(declare-fun e!309908 () Bool)

(declare-fun tp!161486 () Bool)

(declare-fun b!517687 () Bool)

(assert (=> b!517687 (= e!309908 (and tp_is_empty!2657 tp_is_empty!2659 tp!161486))))

(assert (=> b!517609 (= tp!161479 e!309908)))

(assert (= (and b!517609 ((_ is Cons!4746) (zeroValue!787 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65))))))) b!517687))

(declare-fun tp!161487 () Bool)

(declare-fun e!309909 () Bool)

(declare-fun b!517688 () Bool)

(assert (=> b!517688 (= e!309909 (and tp_is_empty!2657 tp_is_empty!2659 tp!161487))))

(assert (=> b!517609 (= tp!161475 e!309909)))

(assert (= (and b!517609 ((_ is Cons!4746) (minValue!787 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65))))))) b!517688))

(declare-fun e!309915 () Bool)

(declare-fun b!517695 () Bool)

(declare-fun tp!161496 () Bool)

(assert (=> b!517695 (= e!309915 (and tp_is_empty!2657 tp_is_empty!2659 tp!161496))))

(declare-fun mapNonEmpty!2062 () Bool)

(declare-fun mapRes!2062 () Bool)

(declare-fun tp!161494 () Bool)

(assert (=> mapNonEmpty!2062 (= mapRes!2062 (and tp!161494 e!309915))))

(declare-fun mapRest!2062 () (Array (_ BitVec 32) List!4756))

(declare-fun mapValue!2062 () List!4756)

(declare-fun mapKey!2062 () (_ BitVec 32))

(assert (=> mapNonEmpty!2062 (= mapRest!2059 (store mapRest!2062 mapKey!2062 mapValue!2062))))

(declare-fun condMapEmpty!2062 () Bool)

(declare-fun mapDefault!2062 () List!4756)

(assert (=> mapNonEmpty!2059 (= condMapEmpty!2062 (= mapRest!2059 ((as const (Array (_ BitVec 32) List!4756)) mapDefault!2062)))))

(declare-fun e!309914 () Bool)

(assert (=> mapNonEmpty!2059 (= tp!161478 (and e!309914 mapRes!2062))))

(declare-fun mapIsEmpty!2062 () Bool)

(assert (=> mapIsEmpty!2062 mapRes!2062))

(declare-fun tp!161495 () Bool)

(declare-fun b!517696 () Bool)

(assert (=> b!517696 (= e!309914 (and tp_is_empty!2657 tp_is_empty!2659 tp!161495))))

(assert (= (and mapNonEmpty!2059 condMapEmpty!2062) mapIsEmpty!2062))

(assert (= (and mapNonEmpty!2059 (not condMapEmpty!2062)) mapNonEmpty!2062))

(assert (= (and mapNonEmpty!2062 ((_ is Cons!4746) mapValue!2062)) b!517695))

(assert (= (and mapNonEmpty!2059 ((_ is Cons!4746) mapDefault!2062)) b!517696))

(declare-fun m!764573 () Bool)

(assert (=> mapNonEmpty!2062 m!764573))

(declare-fun e!309916 () Bool)

(declare-fun tp!161497 () Bool)

(declare-fun b!517697 () Bool)

(assert (=> b!517697 (= e!309916 (and tp_is_empty!2657 tp_is_empty!2659 tp!161497))))

(assert (=> mapNonEmpty!2059 (= tp!161480 e!309916)))

(assert (= (and mapNonEmpty!2059 ((_ is Cons!4746) mapValue!2059)) b!517697))

(declare-fun b_lambda!20139 () Bool)

(assert (= b_lambda!20137 (or (and start!47076 b_free!13645) b_lambda!20139)))

(check-sat (not b!517674) (not b_next!13655) (not b!517665) (not bm!37901) (not b!517673) (not bm!37900) (not b!517669) (not d!185062) (not b!517663) (not bm!37898) (not d!185068) (not b!517631) (not b!517660) (not b!517697) (not b!517688) (not b!517637) (not b!517696) (not d!185072) b_and!51125 (not mapNonEmpty!2062) (not b!517636) (not b!517681) (not bm!37896) b_and!51129 (not b!517686) (not b!517687) (not b!517629) (not bm!37897) (not b_next!13657) (not bm!37899) (not d!185082) tp_is_empty!2659 (not bm!37894) (not d!185058) (not b!517668) (not b!517670) b_and!51131 (not d!185064) (not b_next!13659) (not b!517675) (not d!185074) (not bm!37895) (not d!185066) (not b_lambda!20139) (not d!185070) (not d!185060) tp_is_empty!2657 (not b!517695))
(check-sat (not b_next!13655) b_and!51125 b_and!51129 (not b_next!13657) b_and!51131 (not b_next!13659))
(get-model)

(declare-fun bs!60129 () Bool)

(declare-fun b!517698 () Bool)

(assert (= bs!60129 (and b!517698 b!517636)))

(declare-fun lambda!14612 () Int)

(assert (=> bs!60129 (= lambda!14612 lambda!14603)))

(declare-fun bs!60130 () Bool)

(assert (= bs!60130 (and b!517698 b!517663)))

(assert (=> bs!60130 (= lambda!14612 lambda!14610)))

(declare-fun bs!60131 () Bool)

(assert (= bs!60131 (and b!517698 b!517674)))

(assert (=> bs!60131 (= lambda!14612 lambda!14611)))

(declare-fun d!185084 () Bool)

(declare-fun res!219555 () Bool)

(declare-fun e!309917 () Bool)

(assert (=> d!185084 (=> (not res!219555) (not e!309917))))

(assert (=> d!185084 (= res!219555 (valid!502 (v!15801 (underlying!1242 (_2!3155 lt!215690)))))))

(assert (=> d!185084 (= (valid!501 (_2!3155 lt!215690)) e!309917)))

(declare-fun res!219556 () Bool)

(assert (=> b!517698 (=> (not res!219556) (not e!309917))))

(assert (=> b!517698 (= res!219556 (forall!1417 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3155 lt!215690))))) lambda!14612))))

(declare-fun b!517699 () Bool)

(assert (=> b!517699 (= e!309917 (allKeysSameHashInMap!33 (map!1063 (v!15801 (underlying!1242 (_2!3155 lt!215690)))) (hashF!2400 (_2!3155 lt!215690))))))

(assert (= (and d!185084 res!219555) b!517698))

(assert (= (and b!517698 res!219556) b!517699))

(declare-fun m!764575 () Bool)

(assert (=> d!185084 m!764575))

(declare-fun m!764577 () Bool)

(assert (=> b!517698 m!764577))

(declare-fun m!764579 () Bool)

(assert (=> b!517698 m!764579))

(assert (=> b!517699 m!764577))

(assert (=> b!517699 m!764577))

(declare-fun m!764581 () Bool)

(assert (=> b!517699 m!764581))

(assert (=> bm!37900 d!185084))

(declare-fun d!185086 () Bool)

(declare-fun e!309918 () Bool)

(assert (=> d!185086 e!309918))

(declare-fun res!219557 () Bool)

(assert (=> d!185086 (=> (not res!219557) (not e!309918))))

(declare-fun lt!215709 () ListMap!213)

(assert (=> d!185086 (= res!219557 (not (contains!1106 lt!215709 k0!1740)))))

(assert (=> d!185086 (= lt!215709 (ListMap!214 (removePresrvNoDuplicatedKeys!18 (toList!435 call!37901) k0!1740)))))

(assert (=> d!185086 (= (-!45 call!37901 k0!1740) lt!215709)))

(declare-fun b!517700 () Bool)

(assert (=> b!517700 (= e!309918 (= ((_ map and) (content!838 (keys!1869 call!37901)) ((_ map not) (store ((as const (Array K!1442 Bool)) false) k0!1740 true))) (content!838 (keys!1869 lt!215709))))))

(assert (= (and d!185086 res!219557) b!517700))

(declare-fun m!764583 () Bool)

(assert (=> d!185086 m!764583))

(declare-fun m!764585 () Bool)

(assert (=> d!185086 m!764585))

(declare-fun m!764587 () Bool)

(assert (=> b!517700 m!764587))

(assert (=> b!517700 m!764587))

(declare-fun m!764589 () Bool)

(assert (=> b!517700 m!764589))

(declare-fun m!764591 () Bool)

(assert (=> b!517700 m!764591))

(declare-fun m!764593 () Bool)

(assert (=> b!517700 m!764593))

(assert (=> b!517700 m!764591))

(assert (=> b!517700 m!764547))

(assert (=> b!517668 d!185086))

(declare-fun d!185088 () Bool)

(declare-fun c!100233 () Bool)

(assert (=> d!185088 (= c!100233 ((_ is Nil!4746) (t!73334 (toList!435 lt!215607))))))

(declare-fun e!309919 () (InoxSet tuple2!5872))

(assert (=> d!185088 (= (content!837 (t!73334 (toList!435 lt!215607))) e!309919)))

(declare-fun b!517701 () Bool)

(assert (=> b!517701 (= e!309919 ((as const (Array tuple2!5872 Bool)) false))))

(declare-fun b!517702 () Bool)

(assert (=> b!517702 (= e!309919 ((_ map or) (store ((as const (Array tuple2!5872 Bool)) false) (h!10146 (t!73334 (toList!435 lt!215607))) true) (content!837 (t!73334 (t!73334 (toList!435 lt!215607))))))))

(assert (= (and d!185088 c!100233) b!517701))

(assert (= (and d!185088 (not c!100233)) b!517702))

(declare-fun m!764595 () Bool)

(assert (=> b!517702 m!764595))

(declare-fun m!764597 () Bool)

(assert (=> b!517702 m!764597))

(assert (=> b!517631 d!185088))

(declare-fun d!185090 () Bool)

(declare-fun map!1064 (LongMapFixedSize!1062) ListLongMap!89)

(assert (=> d!185090 (= (map!1063 (ite c!100230 (v!15801 (underlying!1242 hm!65)) (v!15801 (underlying!1242 (_2!3155 lt!215690))))) (map!1064 (v!15800 (underlying!1241 (ite c!100230 (v!15801 (underlying!1242 hm!65)) (v!15801 (underlying!1242 (_2!3155 lt!215690))))))))))

(declare-fun bs!60132 () Bool)

(assert (= bs!60132 d!185090))

(declare-fun m!764599 () Bool)

(assert (=> bs!60132 m!764599))

(assert (=> bm!37899 d!185090))

(declare-fun bs!60133 () Bool)

(declare-fun d!185092 () Bool)

(assert (= bs!60133 (and d!185092 b!517636)))

(declare-fun lambda!14615 () Int)

(assert (=> bs!60133 (not (= lambda!14615 lambda!14603))))

(declare-fun bs!60134 () Bool)

(assert (= bs!60134 (and d!185092 b!517663)))

(assert (=> bs!60134 (not (= lambda!14615 lambda!14610))))

(declare-fun bs!60135 () Bool)

(assert (= bs!60135 (and d!185092 b!517674)))

(assert (=> bs!60135 (not (= lambda!14615 lambda!14611))))

(declare-fun bs!60136 () Bool)

(assert (= bs!60136 (and d!185092 b!517698)))

(assert (=> bs!60136 (not (= lambda!14615 lambda!14612))))

(assert (=> d!185092 true))

(assert (=> d!185092 (= (allKeysSameHashInMap!33 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608)))) (hashF!2400 (_2!3153 lt!215608))) (forall!1417 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608))))) lambda!14615))))

(declare-fun bs!60137 () Bool)

(assert (= bs!60137 d!185092))

(declare-fun m!764601 () Bool)

(assert (=> bs!60137 m!764601))

(assert (=> b!517637 d!185092))

(declare-fun d!185094 () Bool)

(assert (=> d!185094 (= (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608)))) (map!1064 (v!15800 (underlying!1241 (v!15801 (underlying!1242 (_2!3153 lt!215608)))))))))

(declare-fun bs!60138 () Bool)

(assert (= bs!60138 d!185094))

(declare-fun m!764603 () Bool)

(assert (=> bs!60138 m!764603))

(assert (=> b!517637 d!185094))

(declare-fun d!185096 () Bool)

(declare-fun res!219558 () Bool)

(declare-fun e!309920 () Bool)

(assert (=> d!185096 (=> res!219558 e!309920)))

(assert (=> d!185096 (= res!219558 ((_ is Nil!4746) (t!73334 (toList!435 lt!215607))))))

(assert (=> d!185096 (= (forall!1416 (t!73334 (toList!435 lt!215607)) p!6060) e!309920)))

(declare-fun b!517705 () Bool)

(declare-fun e!309921 () Bool)

(assert (=> b!517705 (= e!309920 e!309921)))

(declare-fun res!219559 () Bool)

(assert (=> b!517705 (=> (not res!219559) (not e!309921))))

(assert (=> b!517705 (= res!219559 (dynLambda!2987 p!6060 (h!10146 (t!73334 (toList!435 lt!215607)))))))

(declare-fun b!517706 () Bool)

(assert (=> b!517706 (= e!309921 (forall!1416 (t!73334 (t!73334 (toList!435 lt!215607))) p!6060))))

(assert (= (and d!185096 (not res!219558)) b!517705))

(assert (= (and b!517705 res!219559) b!517706))

(declare-fun b_lambda!20141 () Bool)

(assert (=> (not b_lambda!20141) (not b!517705)))

(declare-fun t!73340 () Bool)

(declare-fun tb!47179 () Bool)

(assert (=> (and start!47076 (= p!6060 p!6060) t!73340) tb!47179))

(declare-fun result!52264 () Bool)

(assert (=> tb!47179 (= result!52264 true)))

(assert (=> b!517705 t!73340))

(declare-fun b_and!51133 () Bool)

(assert (= b_and!51131 (and (=> t!73340 result!52264) b_and!51133)))

(declare-fun m!764605 () Bool)

(assert (=> b!517705 m!764605))

(declare-fun m!764607 () Bool)

(assert (=> b!517706 m!764607))

(assert (=> b!517681 d!185096))

(declare-fun d!185098 () Bool)

(declare-fun res!219564 () Bool)

(declare-fun e!309926 () Bool)

(assert (=> d!185098 (=> res!219564 e!309926)))

(assert (=> d!185098 (= res!219564 ((_ is Nil!4747) (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608)))))))))

(assert (=> d!185098 (= (forall!1417 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608))))) lambda!14603) e!309926)))

(declare-fun b!517711 () Bool)

(declare-fun e!309927 () Bool)

(assert (=> b!517711 (= e!309926 e!309927)))

(declare-fun res!219565 () Bool)

(assert (=> b!517711 (=> (not res!219565) (not e!309927))))

(declare-fun dynLambda!2988 (Int tuple2!5876) Bool)

(assert (=> b!517711 (= res!219565 (dynLambda!2988 lambda!14603 (h!10147 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608))))))))))

(declare-fun b!517712 () Bool)

(assert (=> b!517712 (= e!309927 (forall!1417 (t!73337 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608)))))) lambda!14603))))

(assert (= (and d!185098 (not res!219564)) b!517711))

(assert (= (and b!517711 res!219565) b!517712))

(declare-fun b_lambda!20143 () Bool)

(assert (=> (not b_lambda!20143) (not b!517711)))

(declare-fun m!764609 () Bool)

(assert (=> b!517711 m!764609))

(declare-fun m!764611 () Bool)

(assert (=> b!517712 m!764611))

(assert (=> b!517636 d!185098))

(assert (=> b!517636 d!185094))

(declare-fun bs!60139 () Bool)

(declare-fun b!517713 () Bool)

(assert (= bs!60139 (and b!517713 b!517674)))

(declare-fun lambda!14616 () Int)

(assert (=> bs!60139 (= lambda!14616 lambda!14611)))

(declare-fun bs!60140 () Bool)

(assert (= bs!60140 (and b!517713 b!517663)))

(assert (=> bs!60140 (= lambda!14616 lambda!14610)))

(declare-fun bs!60141 () Bool)

(assert (= bs!60141 (and b!517713 b!517636)))

(assert (=> bs!60141 (= lambda!14616 lambda!14603)))

(declare-fun bs!60142 () Bool)

(assert (= bs!60142 (and b!517713 b!517698)))

(assert (=> bs!60142 (= lambda!14616 lambda!14612)))

(declare-fun bs!60143 () Bool)

(assert (= bs!60143 (and b!517713 d!185092)))

(assert (=> bs!60143 (not (= lambda!14616 lambda!14615))))

(declare-fun d!185100 () Bool)

(declare-fun res!219566 () Bool)

(declare-fun e!309928 () Bool)

(assert (=> d!185100 (=> (not res!219566) (not e!309928))))

(assert (=> d!185100 (= res!219566 (valid!502 (v!15801 (underlying!1242 (_2!3153 lt!215693)))))))

(assert (=> d!185100 (= (valid!501 (_2!3153 lt!215693)) e!309928)))

(declare-fun res!219567 () Bool)

(assert (=> b!517713 (=> (not res!219567) (not e!309928))))

(assert (=> b!517713 (= res!219567 (forall!1417 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215693))))) lambda!14616))))

(declare-fun b!517714 () Bool)

(assert (=> b!517714 (= e!309928 (allKeysSameHashInMap!33 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215693)))) (hashF!2400 (_2!3153 lt!215693))))))

(assert (= (and d!185100 res!219566) b!517713))

(assert (= (and b!517713 res!219567) b!517714))

(declare-fun m!764613 () Bool)

(assert (=> d!185100 m!764613))

(declare-fun m!764615 () Bool)

(assert (=> b!517713 m!764615))

(declare-fun m!764617 () Bool)

(assert (=> b!517713 m!764617))

(assert (=> b!517714 m!764615))

(assert (=> b!517714 m!764615))

(declare-fun m!764619 () Bool)

(assert (=> b!517714 m!764619))

(assert (=> b!517665 d!185100))

(declare-fun bs!60144 () Bool)

(declare-fun d!185102 () Bool)

(assert (= bs!60144 (and d!185102 b!517713)))

(declare-fun lambda!14617 () Int)

(assert (=> bs!60144 (not (= lambda!14617 lambda!14616))))

(declare-fun bs!60145 () Bool)

(assert (= bs!60145 (and d!185102 b!517674)))

(assert (=> bs!60145 (not (= lambda!14617 lambda!14611))))

(declare-fun bs!60146 () Bool)

(assert (= bs!60146 (and d!185102 b!517663)))

(assert (=> bs!60146 (not (= lambda!14617 lambda!14610))))

(declare-fun bs!60147 () Bool)

(assert (= bs!60147 (and d!185102 b!517636)))

(assert (=> bs!60147 (not (= lambda!14617 lambda!14603))))

(declare-fun bs!60148 () Bool)

(assert (= bs!60148 (and d!185102 b!517698)))

(assert (=> bs!60148 (not (= lambda!14617 lambda!14612))))

(declare-fun bs!60149 () Bool)

(assert (= bs!60149 (and d!185102 d!185092)))

(assert (=> bs!60149 (= (= (hashF!2400 hm!65) (hashF!2400 (_2!3153 lt!215608))) (= lambda!14617 lambda!14615))))

(assert (=> d!185102 true))

(assert (=> d!185102 (= (allKeysSameHashInMap!33 (map!1063 (v!15801 (underlying!1242 hm!65))) (hashF!2400 hm!65)) (forall!1417 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))) lambda!14617))))

(declare-fun bs!60150 () Bool)

(assert (= bs!60150 d!185102))

(declare-fun m!764621 () Bool)

(assert (=> bs!60150 m!764621))

(assert (=> b!517675 d!185102))

(declare-fun d!185104 () Bool)

(assert (=> d!185104 (= (map!1063 (v!15801 (underlying!1242 hm!65))) (map!1064 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65))))))))

(declare-fun bs!60151 () Bool)

(assert (= bs!60151 d!185104))

(declare-fun m!764623 () Bool)

(assert (=> bs!60151 m!764623))

(assert (=> b!517675 d!185104))

(declare-fun d!185106 () Bool)

(assert (=> d!185106 (noDuplicateKeys!22 (removePairForKey!20 lt!215679 k0!1740))))

(declare-fun lt!215712 () Unit!8673)

(declare-fun choose!3693 (List!4756 K!1442) Unit!8673)

(assert (=> d!185106 (= lt!215712 (choose!3693 lt!215679 k0!1740))))

(assert (=> d!185106 (noDuplicateKeys!22 lt!215679)))

(assert (=> d!185106 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!20 lt!215679 k0!1740) lt!215712)))

(declare-fun bs!60152 () Bool)

(assert (= bs!60152 d!185106))

(assert (=> bs!60152 m!764467))

(assert (=> bs!60152 m!764467))

(assert (=> bs!60152 m!764471))

(declare-fun m!764625 () Bool)

(assert (=> bs!60152 m!764625))

(declare-fun m!764627 () Bool)

(assert (=> bs!60152 m!764627))

(assert (=> b!517663 d!185106))

(declare-fun b!517733 () Bool)

(declare-fun e!309942 () Bool)

(declare-fun call!37911 () ListLongMap!89)

(declare-fun call!37912 () ListLongMap!89)

(assert (=> b!517733 (= e!309942 (= call!37912 (+!29 call!37911 (tuple2!5877 lt!215691 lt!215699))))))

(declare-fun b!517734 () Bool)

(declare-fun e!309941 () Bool)

(declare-fun e!309940 () Bool)

(assert (=> b!517734 (= e!309941 e!309940)))

(declare-fun c!100242 () Bool)

(declare-fun lt!215722 () tuple2!5880)

(assert (=> b!517734 (= c!100242 (_1!3156 lt!215722))))

(declare-fun d!185108 () Bool)

(assert (=> d!185108 e!309941))

(declare-fun res!219576 () Bool)

(assert (=> d!185108 (=> (not res!219576) (not e!309941))))

(assert (=> d!185108 (= res!219576 ((_ is LongMap!531) (_2!3156 lt!215722)))))

(declare-fun e!309943 () tuple2!5880)

(assert (=> d!185108 (= lt!215722 e!309943)))

(declare-fun c!100241 () Bool)

(declare-fun lt!215721 () tuple2!5880)

(assert (=> d!185108 (= c!100241 (_1!3156 lt!215721))))

(declare-fun e!309939 () tuple2!5880)

(assert (=> d!185108 (= lt!215721 e!309939)))

(declare-fun c!100240 () Bool)

(declare-fun imbalanced!7 (MutLongMap!531) Bool)

(assert (=> d!185108 (= c!100240 (imbalanced!7 (v!15801 (underlying!1242 hm!65))))))

(assert (=> d!185108 (valid!502 (v!15801 (underlying!1242 hm!65)))))

(assert (=> d!185108 (= (update!62 (v!15801 (underlying!1242 hm!65)) lt!215691 lt!215699) lt!215722)))

(declare-fun b!517735 () Bool)

(assert (=> b!517735 (= e!309940 (= call!37912 call!37911))))

(declare-fun b!517736 () Bool)

(assert (=> b!517736 (= e!309940 e!309942)))

(declare-fun res!219575 () Bool)

(declare-fun contains!1108 (ListLongMap!89 (_ BitVec 64)) Bool)

(assert (=> b!517736 (= res!219575 (contains!1108 call!37912 lt!215691))))

(assert (=> b!517736 (=> (not res!219575) (not e!309942))))

(declare-fun b!517737 () Bool)

(declare-fun res!219574 () Bool)

(assert (=> b!517737 (=> (not res!219574) (not e!309941))))

(assert (=> b!517737 (= res!219574 (valid!502 (_2!3156 lt!215722)))))

(declare-fun b!517738 () Bool)

(declare-datatypes ((tuple2!5882 0))(
  ( (tuple2!5883 (_1!3157 Bool) (_2!3157 LongMapFixedSize!1062)) )
))
(declare-fun lt!215724 () tuple2!5882)

(assert (=> b!517738 (= e!309943 (tuple2!5881 (_1!3157 lt!215724) (LongMap!531 (Cell!2066 (_2!3157 lt!215724)))))))

(declare-fun update!63 (LongMapFixedSize!1062 (_ BitVec 64) List!4756) tuple2!5882)

(assert (=> b!517738 (= lt!215724 (update!63 (v!15800 (underlying!1241 (_2!3156 lt!215721))) lt!215691 lt!215699))))

(declare-fun b!517739 () Bool)

(assert (=> b!517739 (= e!309943 (tuple2!5881 false (_2!3156 lt!215721)))))

(declare-fun bm!37906 () Bool)

(assert (=> bm!37906 (= call!37912 (map!1063 (_2!3156 lt!215722)))))

(declare-fun b!517740 () Bool)

(assert (=> b!517740 (= e!309939 (tuple2!5881 true (v!15801 (underlying!1242 hm!65))))))

(declare-fun b!517741 () Bool)

(declare-fun lt!215723 () tuple2!5880)

(assert (=> b!517741 (= e!309939 (tuple2!5881 (_1!3156 lt!215723) (_2!3156 lt!215723)))))

(declare-fun repack!11 (MutLongMap!531) tuple2!5880)

(assert (=> b!517741 (= lt!215723 (repack!11 (v!15801 (underlying!1242 hm!65))))))

(declare-fun bm!37907 () Bool)

(assert (=> bm!37907 (= call!37911 (map!1063 (v!15801 (underlying!1242 hm!65))))))

(assert (= (and d!185108 c!100240) b!517741))

(assert (= (and d!185108 (not c!100240)) b!517740))

(assert (= (and d!185108 c!100241) b!517738))

(assert (= (and d!185108 (not c!100241)) b!517739))

(assert (= (and d!185108 res!219576) b!517737))

(assert (= (and b!517737 res!219574) b!517734))

(assert (= (and b!517734 c!100242) b!517736))

(assert (= (and b!517734 (not c!100242)) b!517735))

(assert (= (and b!517736 res!219575) b!517733))

(assert (= (or b!517733 b!517735) bm!37907))

(assert (= (or b!517736 b!517733 b!517735) bm!37906))

(declare-fun m!764629 () Bool)

(assert (=> b!517741 m!764629))

(declare-fun m!764631 () Bool)

(assert (=> b!517733 m!764631))

(declare-fun m!764633 () Bool)

(assert (=> b!517737 m!764633))

(declare-fun m!764635 () Bool)

(assert (=> d!185108 m!764635))

(assert (=> d!185108 m!764551))

(declare-fun m!764637 () Bool)

(assert (=> bm!37906 m!764637))

(declare-fun m!764639 () Bool)

(assert (=> b!517738 m!764639))

(declare-fun m!764641 () Bool)

(assert (=> b!517736 m!764641))

(assert (=> bm!37907 m!764473))

(assert (=> b!517663 d!185108))

(declare-fun d!185110 () Bool)

(declare-fun res!219581 () Bool)

(declare-fun e!309948 () Bool)

(assert (=> d!185110 (=> res!219581 e!309948)))

(assert (=> d!185110 (= res!219581 (not ((_ is Cons!4746) (removePairForKey!20 lt!215679 k0!1740))))))

(assert (=> d!185110 (= (noDuplicateKeys!22 (removePairForKey!20 lt!215679 k0!1740)) e!309948)))

(declare-fun b!517746 () Bool)

(declare-fun e!309949 () Bool)

(assert (=> b!517746 (= e!309948 e!309949)))

(declare-fun res!219582 () Bool)

(assert (=> b!517746 (=> (not res!219582) (not e!309949))))

(declare-fun containsKey!22 (List!4756 K!1442) Bool)

(assert (=> b!517746 (= res!219582 (not (containsKey!22 (t!73334 (removePairForKey!20 lt!215679 k0!1740)) (_1!3152 (h!10146 (removePairForKey!20 lt!215679 k0!1740))))))))

(declare-fun b!517747 () Bool)

(assert (=> b!517747 (= e!309949 (noDuplicateKeys!22 (t!73334 (removePairForKey!20 lt!215679 k0!1740))))))

(assert (= (and d!185110 (not res!219581)) b!517746))

(assert (= (and b!517746 res!219582) b!517747))

(declare-fun m!764643 () Bool)

(assert (=> b!517746 m!764643))

(declare-fun m!764645 () Bool)

(assert (=> b!517747 m!764645))

(assert (=> b!517663 d!185110))

(assert (=> b!517663 d!185082))

(declare-fun d!185112 () Bool)

(declare-fun hash!539 (Hashable!503 K!1442) (_ BitVec 64))

(assert (=> d!185112 (= (hash!534 (hashF!2400 hm!65) k0!1740) (hash!539 (hashF!2400 hm!65) k0!1740))))

(declare-fun bs!60153 () Bool)

(assert (= bs!60153 d!185112))

(declare-fun m!764647 () Bool)

(assert (=> bs!60153 m!764647))

(assert (=> b!517663 d!185112))

(declare-fun d!185114 () Bool)

(declare-fun e!309952 () Bool)

(assert (=> d!185114 e!309952))

(declare-fun c!100245 () Bool)

(declare-fun contains!1109 (MutLongMap!531 (_ BitVec 64)) Bool)

(assert (=> d!185114 (= c!100245 (contains!1109 (v!15801 (underlying!1242 hm!65)) lt!215691))))

(declare-fun lt!215727 () List!4756)

(declare-fun apply!1195 (LongMapFixedSize!1062 (_ BitVec 64)) List!4756)

(assert (=> d!185114 (= lt!215727 (apply!1195 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65)))) lt!215691))))

(assert (=> d!185114 (valid!502 (v!15801 (underlying!1242 hm!65)))))

(assert (=> d!185114 (= (apply!1194 (v!15801 (underlying!1242 hm!65)) lt!215691) lt!215727)))

(declare-fun b!517752 () Bool)

(declare-datatypes ((Option!1239 0))(
  ( (None!1238) (Some!1238 (v!15806 List!4756)) )
))
(declare-fun get!1807 (Option!1239) List!4756)

(declare-fun getValueByKey!22 (List!4757 (_ BitVec 64)) Option!1239)

(assert (=> b!517752 (= e!309952 (= lt!215727 (get!1807 (getValueByKey!22 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))) lt!215691))))))

(declare-fun b!517753 () Bool)

(declare-fun dynLambda!2989 (Int (_ BitVec 64)) List!4756)

(assert (=> b!517753 (= e!309952 (= lt!215727 (dynLambda!2989 (defaultEntry!882 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65))))) lt!215691)))))

(assert (=> b!517753 ((_ is LongMap!531) (v!15801 (underlying!1242 hm!65)))))

(assert (= (and d!185114 c!100245) b!517752))

(assert (= (and d!185114 (not c!100245)) b!517753))

(declare-fun b_lambda!20145 () Bool)

(assert (=> (not b_lambda!20145) (not b!517753)))

(declare-fun t!73342 () Bool)

(declare-fun tb!47181 () Bool)

(assert (=> (and b!517609 (= (defaultEntry!882 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65))))) (defaultEntry!882 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65)))))) t!73342) tb!47181))

(assert (=> b!517753 t!73342))

(declare-fun result!52266 () Bool)

(declare-fun b_and!51135 () Bool)

(assert (= b_and!51129 (and (=> t!73342 result!52266) b_and!51135)))

(declare-fun m!764649 () Bool)

(assert (=> d!185114 m!764649))

(declare-fun m!764651 () Bool)

(assert (=> d!185114 m!764651))

(assert (=> d!185114 m!764551))

(assert (=> b!517752 m!764473))

(declare-fun m!764653 () Bool)

(assert (=> b!517752 m!764653))

(assert (=> b!517752 m!764653))

(declare-fun m!764655 () Bool)

(assert (=> b!517752 m!764655))

(declare-fun m!764657 () Bool)

(assert (=> b!517753 m!764657))

(assert (=> b!517663 d!185114))

(declare-fun b!517762 () Bool)

(declare-fun e!309958 () List!4756)

(assert (=> b!517762 (= e!309958 (t!73334 lt!215679))))

(declare-fun b!517764 () Bool)

(declare-fun e!309957 () List!4756)

(assert (=> b!517764 (= e!309957 (Cons!4746 (h!10146 lt!215679) (removePairForKey!20 (t!73334 lt!215679) k0!1740)))))

(declare-fun b!517763 () Bool)

(assert (=> b!517763 (= e!309958 e!309957)))

(declare-fun c!100250 () Bool)

(assert (=> b!517763 (= c!100250 ((_ is Cons!4746) lt!215679))))

(declare-fun d!185116 () Bool)

(declare-fun lt!215730 () List!4756)

(assert (=> d!185116 (not (containsKey!22 lt!215730 k0!1740))))

(assert (=> d!185116 (= lt!215730 e!309958)))

(declare-fun c!100251 () Bool)

(assert (=> d!185116 (= c!100251 (and ((_ is Cons!4746) lt!215679) (= (_1!3152 (h!10146 lt!215679)) k0!1740)))))

(assert (=> d!185116 (noDuplicateKeys!22 lt!215679)))

(assert (=> d!185116 (= (removePairForKey!20 lt!215679 k0!1740) lt!215730)))

(declare-fun b!517765 () Bool)

(assert (=> b!517765 (= e!309957 Nil!4746)))

(assert (= (and d!185116 c!100251) b!517762))

(assert (= (and d!185116 (not c!100251)) b!517763))

(assert (= (and b!517763 c!100250) b!517764))

(assert (= (and b!517763 (not c!100250)) b!517765))

(declare-fun m!764659 () Bool)

(assert (=> b!517764 m!764659))

(declare-fun m!764661 () Bool)

(assert (=> d!185116 m!764661))

(assert (=> d!185116 m!764627))

(assert (=> b!517663 d!185116))

(declare-fun d!185118 () Bool)

(assert (=> d!185118 (dynLambda!2988 lambda!14610 (tuple2!5877 lt!215691 (apply!1194 (v!15801 (underlying!1242 hm!65)) lt!215691)))))

(declare-fun lt!215733 () Unit!8673)

(declare-fun choose!3694 (List!4757 Int tuple2!5876) Unit!8673)

(assert (=> d!185118 (= lt!215733 (choose!3694 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))) lambda!14610 (tuple2!5877 lt!215691 (apply!1194 (v!15801 (underlying!1242 hm!65)) lt!215691))))))

(declare-fun e!309961 () Bool)

(assert (=> d!185118 e!309961))

(declare-fun res!219585 () Bool)

(assert (=> d!185118 (=> (not res!219585) (not e!309961))))

(assert (=> d!185118 (= res!219585 (forall!1417 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))) lambda!14610))))

(assert (=> d!185118 (= (forallContained!451 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))) lambda!14610 (tuple2!5877 lt!215691 (apply!1194 (v!15801 (underlying!1242 hm!65)) lt!215691))) lt!215733)))

(declare-fun b!517768 () Bool)

(declare-fun contains!1110 (List!4757 tuple2!5876) Bool)

(assert (=> b!517768 (= e!309961 (contains!1110 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))) (tuple2!5877 lt!215691 (apply!1194 (v!15801 (underlying!1242 hm!65)) lt!215691))))))

(assert (= (and d!185118 res!219585) b!517768))

(declare-fun b_lambda!20147 () Bool)

(assert (=> (not b_lambda!20147) (not d!185118)))

(declare-fun m!764663 () Bool)

(assert (=> d!185118 m!764663))

(declare-fun m!764665 () Bool)

(assert (=> d!185118 m!764665))

(declare-fun m!764667 () Bool)

(assert (=> d!185118 m!764667))

(declare-fun m!764669 () Bool)

(assert (=> b!517768 m!764669))

(assert (=> b!517663 d!185118))

(assert (=> b!517663 d!185104))

(declare-fun d!185120 () Bool)

(declare-fun res!219586 () Bool)

(declare-fun e!309962 () Bool)

(assert (=> d!185120 (=> res!219586 e!309962)))

(assert (=> d!185120 (= res!219586 ((_ is Nil!4747) (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65))))))))

(assert (=> d!185120 (= (forall!1417 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))) lambda!14611) e!309962)))

(declare-fun b!517769 () Bool)

(declare-fun e!309963 () Bool)

(assert (=> b!517769 (= e!309962 e!309963)))

(declare-fun res!219587 () Bool)

(assert (=> b!517769 (=> (not res!219587) (not e!309963))))

(assert (=> b!517769 (= res!219587 (dynLambda!2988 lambda!14611 (h!10147 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))))))))

(declare-fun b!517770 () Bool)

(assert (=> b!517770 (= e!309963 (forall!1417 (t!73337 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65))))) lambda!14611))))

(assert (= (and d!185120 (not res!219586)) b!517769))

(assert (= (and b!517769 res!219587) b!517770))

(declare-fun b_lambda!20149 () Bool)

(assert (=> (not b_lambda!20149) (not b!517769)))

(declare-fun m!764671 () Bool)

(assert (=> b!517769 m!764671))

(declare-fun m!764673 () Bool)

(assert (=> b!517770 m!764673))

(assert (=> b!517674 d!185120))

(assert (=> b!517674 d!185104))

(declare-fun d!185122 () Bool)

(declare-fun valid!503 (LongMapFixedSize!1062) Bool)

(assert (=> d!185122 (= (valid!502 (v!15801 (underlying!1242 (_2!3153 lt!215608)))) (valid!503 (v!15800 (underlying!1241 (v!15801 (underlying!1242 (_2!3153 lt!215608)))))))))

(declare-fun bs!60154 () Bool)

(assert (= bs!60154 d!185122))

(declare-fun m!764675 () Bool)

(assert (=> bs!60154 m!764675))

(assert (=> d!185060 d!185122))

(declare-fun b!517789 () Bool)

(declare-fun e!309976 () Bool)

(declare-fun contains!1111 (List!4758 K!1442) Bool)

(assert (=> b!517789 (= e!309976 (not (contains!1111 (keys!1869 lt!215704) k0!1740)))))

(declare-fun b!517790 () Bool)

(declare-fun e!309978 () Unit!8673)

(declare-fun lt!215754 () Unit!8673)

(assert (=> b!517790 (= e!309978 lt!215754)))

(declare-fun lt!215753 () Unit!8673)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!14 (List!4756 K!1442) Unit!8673)

(assert (=> b!517790 (= lt!215753 (lemmaContainsKeyImpliesGetValueByKeyDefined!14 (toList!435 lt!215704) k0!1740))))

(declare-datatypes ((Option!1240 0))(
  ( (None!1239) (Some!1239 (v!15807 V!1540)) )
))
(declare-fun isDefined!1053 (Option!1240) Bool)

(declare-fun getValueByKey!23 (List!4756 K!1442) Option!1240)

(assert (=> b!517790 (isDefined!1053 (getValueByKey!23 (toList!435 lt!215704) k0!1740))))

(declare-fun lt!215755 () Unit!8673)

(assert (=> b!517790 (= lt!215755 lt!215753)))

(declare-fun lemmaInListThenGetKeysListContains!7 (List!4756 K!1442) Unit!8673)

(assert (=> b!517790 (= lt!215754 (lemmaInListThenGetKeysListContains!7 (toList!435 lt!215704) k0!1740))))

(declare-fun call!37915 () Bool)

(assert (=> b!517790 call!37915))

(declare-fun b!517791 () Bool)

(declare-fun e!309981 () Bool)

(declare-fun e!309977 () Bool)

(assert (=> b!517791 (= e!309981 e!309977)))

(declare-fun res!219595 () Bool)

(assert (=> b!517791 (=> (not res!219595) (not e!309977))))

(assert (=> b!517791 (= res!219595 (isDefined!1053 (getValueByKey!23 (toList!435 lt!215704) k0!1740)))))

(declare-fun d!185124 () Bool)

(assert (=> d!185124 e!309981))

(declare-fun res!219596 () Bool)

(assert (=> d!185124 (=> res!219596 e!309981)))

(assert (=> d!185124 (= res!219596 e!309976)))

(declare-fun res!219594 () Bool)

(assert (=> d!185124 (=> (not res!219594) (not e!309976))))

(declare-fun lt!215750 () Bool)

(assert (=> d!185124 (= res!219594 (not lt!215750))))

(declare-fun lt!215757 () Bool)

(assert (=> d!185124 (= lt!215750 lt!215757)))

(declare-fun lt!215752 () Unit!8673)

(assert (=> d!185124 (= lt!215752 e!309978)))

(declare-fun c!100258 () Bool)

(assert (=> d!185124 (= c!100258 lt!215757)))

(declare-fun containsKey!23 (List!4756 K!1442) Bool)

(assert (=> d!185124 (= lt!215757 (containsKey!23 (toList!435 lt!215704) k0!1740))))

(assert (=> d!185124 (= (contains!1106 lt!215704 k0!1740) lt!215750)))

(declare-fun bm!37910 () Bool)

(declare-fun e!309979 () List!4758)

(assert (=> bm!37910 (= call!37915 (contains!1111 e!309979 k0!1740))))

(declare-fun c!100260 () Bool)

(assert (=> bm!37910 (= c!100260 c!100258)))

(declare-fun b!517792 () Bool)

(declare-fun e!309980 () Unit!8673)

(declare-fun Unit!8684 () Unit!8673)

(assert (=> b!517792 (= e!309980 Unit!8684)))

(declare-fun b!517793 () Bool)

(assert (=> b!517793 (= e!309977 (contains!1111 (keys!1869 lt!215704) k0!1740))))

(declare-fun b!517794 () Bool)

(assert (=> b!517794 false))

(declare-fun lt!215751 () Unit!8673)

(declare-fun lt!215756 () Unit!8673)

(assert (=> b!517794 (= lt!215751 lt!215756)))

(assert (=> b!517794 (containsKey!23 (toList!435 lt!215704) k0!1740)))

(declare-fun lemmaInGetKeysListThenContainsKey!7 (List!4756 K!1442) Unit!8673)

(assert (=> b!517794 (= lt!215756 (lemmaInGetKeysListThenContainsKey!7 (toList!435 lt!215704) k0!1740))))

(declare-fun Unit!8685 () Unit!8673)

(assert (=> b!517794 (= e!309980 Unit!8685)))

(declare-fun b!517795 () Bool)

(assert (=> b!517795 (= e!309978 e!309980)))

(declare-fun c!100259 () Bool)

(assert (=> b!517795 (= c!100259 call!37915)))

(declare-fun b!517796 () Bool)

(assert (=> b!517796 (= e!309979 (keys!1869 lt!215704))))

(declare-fun b!517797 () Bool)

(declare-fun getKeysList!8 (List!4756) List!4758)

(assert (=> b!517797 (= e!309979 (getKeysList!8 (toList!435 lt!215704)))))

(assert (= (and d!185124 c!100258) b!517790))

(assert (= (and d!185124 (not c!100258)) b!517795))

(assert (= (and b!517795 c!100259) b!517794))

(assert (= (and b!517795 (not c!100259)) b!517792))

(assert (= (or b!517790 b!517795) bm!37910))

(assert (= (and bm!37910 c!100260) b!517797))

(assert (= (and bm!37910 (not c!100260)) b!517796))

(assert (= (and d!185124 res!219594) b!517789))

(assert (= (and d!185124 (not res!219596)) b!517791))

(assert (= (and b!517791 res!219595) b!517793))

(declare-fun m!764677 () Bool)

(assert (=> b!517791 m!764677))

(assert (=> b!517791 m!764677))

(declare-fun m!764679 () Bool)

(assert (=> b!517791 m!764679))

(declare-fun m!764681 () Bool)

(assert (=> d!185124 m!764681))

(declare-fun m!764683 () Bool)

(assert (=> bm!37910 m!764683))

(assert (=> b!517796 m!764539))

(assert (=> b!517794 m!764681))

(declare-fun m!764685 () Bool)

(assert (=> b!517794 m!764685))

(declare-fun m!764687 () Bool)

(assert (=> b!517797 m!764687))

(declare-fun m!764689 () Bool)

(assert (=> b!517790 m!764689))

(assert (=> b!517790 m!764677))

(assert (=> b!517790 m!764677))

(assert (=> b!517790 m!764679))

(declare-fun m!764691 () Bool)

(assert (=> b!517790 m!764691))

(assert (=> b!517789 m!764539))

(assert (=> b!517789 m!764539))

(declare-fun m!764693 () Bool)

(assert (=> b!517789 m!764693))

(assert (=> b!517793 m!764539))

(assert (=> b!517793 m!764539))

(assert (=> b!517793 m!764693))

(assert (=> d!185064 d!185124))

(declare-fun d!185126 () Bool)

(declare-fun e!310005 () Bool)

(assert (=> d!185126 e!310005))

(declare-fun res!219603 () Bool)

(assert (=> d!185126 (=> (not res!219603) (not e!310005))))

(declare-fun lt!215809 () List!4756)

(assert (=> d!185126 (= res!219603 (invariantList!83 lt!215809))))

(declare-fun e!310007 () List!4756)

(assert (=> d!185126 (= lt!215809 e!310007)))

(declare-fun c!100280 () Bool)

(assert (=> d!185126 (= c!100280 (and ((_ is Cons!4746) (toList!435 lt!215607)) (= (_1!3152 (h!10146 (toList!435 lt!215607))) k0!1740)))))

(assert (=> d!185126 (invariantList!83 (toList!435 lt!215607))))

(assert (=> d!185126 (= (removePresrvNoDuplicatedKeys!18 (toList!435 lt!215607) k0!1740) lt!215809)))

(declare-fun bm!37923 () Bool)

(declare-fun call!37929 () (InoxSet tuple2!5872))

(assert (=> bm!37923 (= call!37929 (content!837 (toList!435 lt!215607)))))

(declare-fun b!517836 () Bool)

(assert (=> b!517836 (= e!310007 (t!73334 (toList!435 lt!215607)))))

(declare-fun c!100282 () Bool)

(declare-fun call!37928 () Bool)

(assert (=> b!517836 (= c!100282 call!37928)))

(declare-fun lt!215801 () Unit!8673)

(declare-fun e!310002 () Unit!8673)

(assert (=> b!517836 (= lt!215801 e!310002)))

(declare-fun b!517837 () Bool)

(declare-fun e!310006 () Bool)

(declare-fun call!37933 () (InoxSet tuple2!5872))

(assert (=> b!517837 (= e!310006 (= call!37933 call!37929))))

(declare-fun bm!37924 () Bool)

(declare-fun call!37930 () (InoxSet tuple2!5872))

(assert (=> bm!37924 (= call!37930 (content!837 (t!73334 (toList!435 lt!215607))))))

(declare-fun b!517838 () Bool)

(declare-fun call!37931 () (InoxSet tuple2!5872))

(assert (=> b!517838 (= call!37930 call!37931)))

(declare-fun Unit!8686 () Unit!8673)

(assert (=> b!517838 (= e!310002 Unit!8686)))

(declare-fun b!517839 () Bool)

(declare-fun res!219605 () Bool)

(assert (=> b!517839 (=> (not res!219605) (not e!310005))))

(assert (=> b!517839 (= res!219605 (= (content!838 (getKeysList!8 lt!215809)) ((_ map and) (content!838 (getKeysList!8 (toList!435 lt!215607))) ((_ map not) (store ((as const (Array K!1442 Bool)) false) k0!1740 true)))))))

(declare-fun b!517840 () Bool)

(declare-fun e!310004 () List!4756)

(assert (=> b!517840 (= e!310007 e!310004)))

(declare-fun c!100277 () Bool)

(assert (=> b!517840 (= c!100277 (and ((_ is Cons!4746) (toList!435 lt!215607)) (not (= (_1!3152 (h!10146 (toList!435 lt!215607))) k0!1740))))))

(declare-fun b!517841 () Bool)

(assert (=> b!517841 (= e!310005 e!310006)))

(declare-fun c!100283 () Bool)

(assert (=> b!517841 (= c!100283 (containsKey!23 (toList!435 lt!215607) k0!1740))))

(declare-fun b!517842 () Bool)

(declare-fun get!1808 (Option!1240) V!1540)

(assert (=> b!517842 (= e!310006 (= call!37933 ((_ map and) call!37929 ((_ map not) (store ((as const (Array tuple2!5872 Bool)) false) (tuple2!5873 k0!1740 (get!1808 (getValueByKey!23 (toList!435 lt!215607) k0!1740))) true)))))))

(assert (=> b!517842 (containsKey!23 (toList!435 lt!215607) k0!1740)))

(declare-fun lt!215797 () Unit!8673)

(assert (=> b!517842 (= lt!215797 (lemmaContainsKeyImpliesGetValueByKeyDefined!14 (toList!435 lt!215607) k0!1740))))

(assert (=> b!517842 (isDefined!1053 (getValueByKey!23 (toList!435 lt!215607) k0!1740))))

(declare-fun lt!215796 () Unit!8673)

(assert (=> b!517842 (= lt!215796 lt!215797)))

(declare-fun b!517843 () Bool)

(declare-fun lt!215810 () Unit!8673)

(declare-fun e!310008 () Unit!8673)

(assert (=> b!517843 (= lt!215810 e!310008)))

(declare-fun c!100281 () Bool)

(declare-fun call!37932 () Bool)

(assert (=> b!517843 (= c!100281 call!37932)))

(declare-fun lt!215807 () Unit!8673)

(declare-fun e!310009 () Unit!8673)

(assert (=> b!517843 (= lt!215807 e!310009)))

(declare-fun c!100279 () Bool)

(assert (=> b!517843 (= c!100279 (contains!1111 (getKeysList!8 (t!73334 (toList!435 lt!215607))) (_1!3152 (h!10146 (toList!435 lt!215607)))))))

(declare-fun lt!215804 () List!4756)

(declare-fun $colon$colon!43 (List!4756 tuple2!5872) List!4756)

(assert (=> b!517843 (= lt!215804 ($colon$colon!43 (removePresrvNoDuplicatedKeys!18 (t!73334 (toList!435 lt!215607)) k0!1740) (h!10146 (toList!435 lt!215607))))))

(assert (=> b!517843 (= e!310004 lt!215804)))

(declare-fun b!517844 () Bool)

(declare-fun Unit!8687 () Unit!8673)

(assert (=> b!517844 (= e!310009 Unit!8687)))

(declare-fun b!517845 () Bool)

(declare-fun res!219604 () Bool)

(assert (=> b!517845 (=> (not res!219604) (not e!310005))))

(assert (=> b!517845 (= res!219604 (not (containsKey!23 lt!215809 k0!1740)))))

(declare-fun bm!37925 () Bool)

(assert (=> bm!37925 (= call!37928 (containsKey!23 (ite c!100280 (toList!435 lt!215607) (t!73334 (toList!435 lt!215607))) (ite c!100280 k0!1740 (_1!3152 (h!10146 (toList!435 lt!215607))))))))

(declare-fun bm!37926 () Bool)

(assert (=> bm!37926 (= call!37933 (content!837 lt!215809))))

(declare-fun b!517846 () Bool)

(declare-fun e!310010 () Unit!8673)

(declare-fun Unit!8688 () Unit!8673)

(assert (=> b!517846 (= e!310010 Unit!8688)))

(declare-fun b!517847 () Bool)

(declare-fun Unit!8689 () Unit!8673)

(assert (=> b!517847 (= e!310008 Unit!8689)))

(declare-fun lt!215808 () List!4756)

(assert (=> b!517847 (= lt!215808 (removePresrvNoDuplicatedKeys!18 (t!73334 (toList!435 lt!215607)) k0!1740))))

(declare-fun lt!215802 () Unit!8673)

(assert (=> b!517847 (= lt!215802 (lemmaInListThenGetKeysListContains!7 lt!215808 (_1!3152 (h!10146 (toList!435 lt!215607)))))))

(assert (=> b!517847 (contains!1111 (getKeysList!8 lt!215808) (_1!3152 (h!10146 (toList!435 lt!215607))))))

(declare-fun lt!215794 () Unit!8673)

(assert (=> b!517847 (= lt!215794 lt!215802)))

(assert (=> b!517847 false))

(declare-fun b!517848 () Bool)

(assert (=> b!517848 (= e!310004 Nil!4746)))

(declare-fun b!517849 () Bool)

(assert (=> b!517849 (= call!37930 ((_ map and) call!37931 ((_ map not) (store ((as const (Array tuple2!5872 Bool)) false) (tuple2!5873 k0!1740 (get!1808 (getValueByKey!23 (toList!435 lt!215607) k0!1740))) true))))))

(declare-fun lt!215803 () Unit!8673)

(assert (=> b!517849 (= lt!215803 e!310010)))

(declare-fun c!100284 () Bool)

(declare-fun contains!1112 (List!4756 tuple2!5872) Bool)

(assert (=> b!517849 (= c!100284 (contains!1112 (t!73334 (toList!435 lt!215607)) (tuple2!5873 k0!1740 (get!1808 (getValueByKey!23 (toList!435 lt!215607) k0!1740)))))))

(declare-fun Unit!8690 () Unit!8673)

(assert (=> b!517849 (= e!310002 Unit!8690)))

(declare-fun b!517850 () Bool)

(declare-fun e!310003 () List!4756)

(assert (=> b!517850 (= e!310003 (t!73334 (toList!435 lt!215607)))))

(declare-fun b!517851 () Bool)

(declare-fun Unit!8691 () Unit!8673)

(assert (=> b!517851 (= e!310010 Unit!8691)))

(declare-fun lt!215795 () V!1540)

(assert (=> b!517851 (= lt!215795 (get!1808 (getValueByKey!23 (toList!435 lt!215607) k0!1740)))))

(declare-fun lt!215800 () K!1442)

(assert (=> b!517851 (= lt!215800 k0!1740)))

(declare-fun lt!215798 () K!1442)

(assert (=> b!517851 (= lt!215798 k0!1740)))

(declare-fun lt!215811 () Unit!8673)

(declare-fun lemmaContainsTupleThenContainsKey!5 (List!4756 K!1442 V!1540) Unit!8673)

(assert (=> b!517851 (= lt!215811 (lemmaContainsTupleThenContainsKey!5 (t!73334 (toList!435 lt!215607)) lt!215800 (get!1808 (getValueByKey!23 (toList!435 lt!215607) k0!1740))))))

(assert (=> b!517851 call!37932))

(declare-fun lt!215805 () Unit!8673)

(assert (=> b!517851 (= lt!215805 lt!215811)))

(assert (=> b!517851 false))

(declare-fun bm!37927 () Bool)

(assert (=> bm!37927 (= call!37931 (content!837 (toList!435 lt!215607)))))

(declare-fun bm!37928 () Bool)

(assert (=> bm!37928 (= call!37932 (containsKey!23 e!310003 (ite c!100280 lt!215800 (_1!3152 (h!10146 (toList!435 lt!215607))))))))

(declare-fun c!100278 () Bool)

(assert (=> bm!37928 (= c!100278 c!100280)))

(declare-fun b!517852 () Bool)

(declare-fun Unit!8692 () Unit!8673)

(assert (=> b!517852 (= e!310009 Unit!8692)))

(declare-fun lt!215799 () Unit!8673)

(assert (=> b!517852 (= lt!215799 (lemmaInGetKeysListThenContainsKey!7 (t!73334 (toList!435 lt!215607)) (_1!3152 (h!10146 (toList!435 lt!215607)))))))

(assert (=> b!517852 call!37928))

(declare-fun lt!215806 () Unit!8673)

(assert (=> b!517852 (= lt!215806 lt!215799)))

(assert (=> b!517852 false))

(declare-fun b!517853 () Bool)

(declare-fun Unit!8693 () Unit!8673)

(assert (=> b!517853 (= e!310008 Unit!8693)))

(declare-fun b!517854 () Bool)

(assert (=> b!517854 (= e!310003 (removePresrvNoDuplicatedKeys!18 (t!73334 (toList!435 lt!215607)) k0!1740))))

(assert (= (and d!185126 c!100280) b!517836))

(assert (= (and d!185126 (not c!100280)) b!517840))

(assert (= (and b!517836 c!100282) b!517849))

(assert (= (and b!517836 (not c!100282)) b!517838))

(assert (= (and b!517849 c!100284) b!517851))

(assert (= (and b!517849 (not c!100284)) b!517846))

(assert (= (or b!517849 b!517838) bm!37927))

(assert (= (or b!517849 b!517838) bm!37924))

(assert (= (and b!517840 c!100277) b!517843))

(assert (= (and b!517840 (not c!100277)) b!517848))

(assert (= (and b!517843 c!100279) b!517852))

(assert (= (and b!517843 (not c!100279)) b!517844))

(assert (= (and b!517843 c!100281) b!517847))

(assert (= (and b!517843 (not c!100281)) b!517853))

(assert (= (or b!517836 b!517852) bm!37925))

(assert (= (or b!517851 b!517843) bm!37928))

(assert (= (and bm!37928 c!100278) b!517850))

(assert (= (and bm!37928 (not c!100278)) b!517854))

(assert (= (and d!185126 res!219603) b!517845))

(assert (= (and b!517845 res!219604) b!517839))

(assert (= (and b!517839 res!219605) b!517841))

(assert (= (and b!517841 c!100283) b!517842))

(assert (= (and b!517841 (not c!100283)) b!517837))

(assert (= (or b!517842 b!517837) bm!37926))

(assert (= (or b!517842 b!517837) bm!37923))

(declare-fun m!764695 () Bool)

(assert (=> b!517849 m!764695))

(assert (=> b!517849 m!764695))

(declare-fun m!764697 () Bool)

(assert (=> b!517849 m!764697))

(declare-fun m!764699 () Bool)

(assert (=> b!517849 m!764699))

(declare-fun m!764701 () Bool)

(assert (=> b!517849 m!764701))

(declare-fun m!764703 () Bool)

(assert (=> b!517841 m!764703))

(assert (=> bm!37923 m!764439))

(declare-fun m!764705 () Bool)

(assert (=> b!517842 m!764705))

(assert (=> b!517842 m!764695))

(assert (=> b!517842 m!764697))

(assert (=> b!517842 m!764703))

(assert (=> b!517842 m!764699))

(assert (=> b!517842 m!764695))

(declare-fun m!764707 () Bool)

(assert (=> b!517842 m!764707))

(assert (=> b!517842 m!764695))

(assert (=> b!517851 m!764695))

(assert (=> b!517851 m!764695))

(assert (=> b!517851 m!764697))

(assert (=> b!517851 m!764697))

(declare-fun m!764709 () Bool)

(assert (=> b!517851 m!764709))

(declare-fun m!764711 () Bool)

(assert (=> b!517845 m!764711))

(assert (=> bm!37927 m!764439))

(assert (=> b!517839 m!764547))

(declare-fun m!764713 () Bool)

(assert (=> b!517839 m!764713))

(declare-fun m!764715 () Bool)

(assert (=> b!517839 m!764715))

(assert (=> b!517839 m!764715))

(declare-fun m!764717 () Bool)

(assert (=> b!517839 m!764717))

(assert (=> b!517839 m!764713))

(declare-fun m!764719 () Bool)

(assert (=> b!517839 m!764719))

(declare-fun m!764721 () Bool)

(assert (=> bm!37928 m!764721))

(declare-fun m!764723 () Bool)

(assert (=> bm!37926 m!764723))

(declare-fun m!764725 () Bool)

(assert (=> b!517854 m!764725))

(declare-fun m!764727 () Bool)

(assert (=> b!517852 m!764727))

(declare-fun m!764729 () Bool)

(assert (=> d!185126 m!764729))

(assert (=> d!185126 m!764427))

(assert (=> bm!37924 m!764453))

(declare-fun m!764731 () Bool)

(assert (=> bm!37925 m!764731))

(assert (=> b!517847 m!764725))

(declare-fun m!764733 () Bool)

(assert (=> b!517847 m!764733))

(declare-fun m!764735 () Bool)

(assert (=> b!517847 m!764735))

(assert (=> b!517847 m!764735))

(declare-fun m!764737 () Bool)

(assert (=> b!517847 m!764737))

(declare-fun m!764739 () Bool)

(assert (=> b!517843 m!764739))

(assert (=> b!517843 m!764739))

(declare-fun m!764741 () Bool)

(assert (=> b!517843 m!764741))

(assert (=> b!517843 m!764725))

(assert (=> b!517843 m!764725))

(declare-fun m!764743 () Bool)

(assert (=> b!517843 m!764743))

(assert (=> d!185064 d!185126))

(declare-fun bs!60155 () Bool)

(declare-fun d!185128 () Bool)

(assert (= bs!60155 (and d!185128 b!517713)))

(declare-fun lambda!14620 () Int)

(assert (=> bs!60155 (= lambda!14620 lambda!14616)))

(declare-fun bs!60156 () Bool)

(assert (= bs!60156 (and d!185128 b!517674)))

(assert (=> bs!60156 (= lambda!14620 lambda!14611)))

(declare-fun bs!60157 () Bool)

(assert (= bs!60157 (and d!185128 b!517663)))

(assert (=> bs!60157 (= lambda!14620 lambda!14610)))

(declare-fun bs!60158 () Bool)

(assert (= bs!60158 (and d!185128 d!185102)))

(assert (=> bs!60158 (not (= lambda!14620 lambda!14617))))

(declare-fun bs!60159 () Bool)

(assert (= bs!60159 (and d!185128 b!517636)))

(assert (=> bs!60159 (= lambda!14620 lambda!14603)))

(declare-fun bs!60160 () Bool)

(assert (= bs!60160 (and d!185128 b!517698)))

(assert (=> bs!60160 (= lambda!14620 lambda!14612)))

(declare-fun bs!60161 () Bool)

(assert (= bs!60161 (and d!185128 d!185092)))

(assert (=> bs!60161 (not (= lambda!14620 lambda!14615))))

(declare-fun lt!215814 () ListMap!213)

(assert (=> d!185128 (invariantList!83 (toList!435 lt!215814))))

(declare-fun e!310013 () ListMap!213)

(assert (=> d!185128 (= lt!215814 e!310013)))

(declare-fun c!100287 () Bool)

(assert (=> d!185128 (= c!100287 ((_ is Cons!4747) (ite c!100230 (toList!436 lt!215692) (toList!436 lt!215677))))))

(assert (=> d!185128 (forall!1417 (ite c!100230 (toList!436 lt!215692) (toList!436 lt!215677)) lambda!14620)))

(assert (=> d!185128 (= (extractMap!26 (ite c!100230 (toList!436 lt!215692) (toList!436 lt!215677))) lt!215814)))

(declare-fun b!517859 () Bool)

(declare-fun addToMapMapFromBucket!6 (List!4756 ListMap!213) ListMap!213)

(assert (=> b!517859 (= e!310013 (addToMapMapFromBucket!6 (_2!3154 (h!10147 (ite c!100230 (toList!436 lt!215692) (toList!436 lt!215677)))) (extractMap!26 (t!73337 (ite c!100230 (toList!436 lt!215692) (toList!436 lt!215677))))))))

(declare-fun b!517860 () Bool)

(assert (=> b!517860 (= e!310013 (ListMap!214 Nil!4746))))

(assert (= (and d!185128 c!100287) b!517859))

(assert (= (and d!185128 (not c!100287)) b!517860))

(declare-fun m!764745 () Bool)

(assert (=> d!185128 m!764745))

(declare-fun m!764747 () Bool)

(assert (=> d!185128 m!764747))

(declare-fun m!764749 () Bool)

(assert (=> b!517859 m!764749))

(assert (=> b!517859 m!764749))

(declare-fun m!764751 () Bool)

(assert (=> b!517859 m!764751))

(assert (=> bm!37898 d!185128))

(declare-fun d!185130 () Bool)

(assert (=> d!185130 (= (invariantList!83 (toList!435 lt!215708)) (noDuplicatedKeys!21 (toList!435 lt!215708)))))

(declare-fun bs!60162 () Bool)

(assert (= bs!60162 d!185130))

(declare-fun m!764753 () Bool)

(assert (=> bs!60162 m!764753))

(assert (=> d!185082 d!185130))

(declare-fun bs!60163 () Bool)

(declare-fun d!185132 () Bool)

(assert (= bs!60163 (and d!185132 b!517713)))

(declare-fun lambda!14621 () Int)

(assert (=> bs!60163 (= lambda!14621 lambda!14616)))

(declare-fun bs!60164 () Bool)

(assert (= bs!60164 (and d!185132 b!517674)))

(assert (=> bs!60164 (= lambda!14621 lambda!14611)))

(declare-fun bs!60165 () Bool)

(assert (= bs!60165 (and d!185132 b!517663)))

(assert (=> bs!60165 (= lambda!14621 lambda!14610)))

(declare-fun bs!60166 () Bool)

(assert (= bs!60166 (and d!185132 d!185102)))

(assert (=> bs!60166 (not (= lambda!14621 lambda!14617))))

(declare-fun bs!60167 () Bool)

(assert (= bs!60167 (and d!185132 b!517636)))

(assert (=> bs!60167 (= lambda!14621 lambda!14603)))

(declare-fun bs!60168 () Bool)

(assert (= bs!60168 (and d!185132 d!185128)))

(assert (=> bs!60168 (= lambda!14621 lambda!14620)))

(declare-fun bs!60169 () Bool)

(assert (= bs!60169 (and d!185132 b!517698)))

(assert (=> bs!60169 (= lambda!14621 lambda!14612)))

(declare-fun bs!60170 () Bool)

(assert (= bs!60170 (and d!185132 d!185092)))

(assert (=> bs!60170 (not (= lambda!14621 lambda!14615))))

(declare-fun lt!215815 () ListMap!213)

(assert (=> d!185132 (invariantList!83 (toList!435 lt!215815))))

(declare-fun e!310014 () ListMap!213)

(assert (=> d!185132 (= lt!215815 e!310014)))

(declare-fun c!100288 () Bool)

(assert (=> d!185132 (= c!100288 ((_ is Cons!4747) (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65))))))))

(assert (=> d!185132 (forall!1417 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))) lambda!14621)))

(assert (=> d!185132 (= (extractMap!26 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65))))) lt!215815)))

(declare-fun b!517861 () Bool)

(assert (=> b!517861 (= e!310014 (addToMapMapFromBucket!6 (_2!3154 (h!10147 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))))) (extractMap!26 (t!73337 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65))))))))))

(declare-fun b!517862 () Bool)

(assert (=> b!517862 (= e!310014 (ListMap!214 Nil!4746))))

(assert (= (and d!185132 c!100288) b!517861))

(assert (= (and d!185132 (not c!100288)) b!517862))

(declare-fun m!764755 () Bool)

(assert (=> d!185132 m!764755))

(declare-fun m!764757 () Bool)

(assert (=> d!185132 m!764757))

(declare-fun m!764759 () Bool)

(assert (=> b!517861 m!764759))

(assert (=> b!517861 m!764759))

(declare-fun m!764761 () Bool)

(assert (=> b!517861 m!764761))

(assert (=> d!185082 d!185132))

(assert (=> d!185082 d!185104))

(assert (=> d!185082 d!185068))

(declare-fun d!185134 () Bool)

(declare-fun lt!215816 () ListMap!213)

(assert (=> d!185134 (invariantList!83 (toList!435 lt!215816))))

(assert (=> d!185134 (= lt!215816 (extractMap!26 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215693)))))))))

(assert (=> d!185134 (valid!501 (_2!3153 lt!215693))))

(assert (=> d!185134 (= (map!1062 (_2!3153 lt!215693)) lt!215816)))

(declare-fun bs!60171 () Bool)

(assert (= bs!60171 d!185134))

(declare-fun m!764763 () Bool)

(assert (=> bs!60171 m!764763))

(assert (=> bs!60171 m!764615))

(declare-fun m!764765 () Bool)

(assert (=> bs!60171 m!764765))

(assert (=> bs!60171 m!764495))

(assert (=> bm!37897 d!185134))

(declare-fun d!185136 () Bool)

(assert (=> d!185136 (= (invariantList!83 (toList!435 lt!215707)) (noDuplicatedKeys!21 (toList!435 lt!215707)))))

(declare-fun bs!60172 () Bool)

(assert (= bs!60172 d!185136))

(declare-fun m!764767 () Bool)

(assert (=> bs!60172 m!764767))

(assert (=> d!185072 d!185136))

(declare-fun bs!60173 () Bool)

(declare-fun d!185138 () Bool)

(assert (= bs!60173 (and d!185138 b!517713)))

(declare-fun lambda!14622 () Int)

(assert (=> bs!60173 (= lambda!14622 lambda!14616)))

(declare-fun bs!60174 () Bool)

(assert (= bs!60174 (and d!185138 b!517674)))

(assert (=> bs!60174 (= lambda!14622 lambda!14611)))

(declare-fun bs!60175 () Bool)

(assert (= bs!60175 (and d!185138 b!517663)))

(assert (=> bs!60175 (= lambda!14622 lambda!14610)))

(declare-fun bs!60176 () Bool)

(assert (= bs!60176 (and d!185138 d!185102)))

(assert (=> bs!60176 (not (= lambda!14622 lambda!14617))))

(declare-fun bs!60177 () Bool)

(assert (= bs!60177 (and d!185138 b!517636)))

(assert (=> bs!60177 (= lambda!14622 lambda!14603)))

(declare-fun bs!60178 () Bool)

(assert (= bs!60178 (and d!185138 d!185132)))

(assert (=> bs!60178 (= lambda!14622 lambda!14621)))

(declare-fun bs!60179 () Bool)

(assert (= bs!60179 (and d!185138 d!185128)))

(assert (=> bs!60179 (= lambda!14622 lambda!14620)))

(declare-fun bs!60180 () Bool)

(assert (= bs!60180 (and d!185138 b!517698)))

(assert (=> bs!60180 (= lambda!14622 lambda!14612)))

(declare-fun bs!60181 () Bool)

(assert (= bs!60181 (and d!185138 d!185092)))

(assert (=> bs!60181 (not (= lambda!14622 lambda!14615))))

(declare-fun lt!215817 () ListMap!213)

(assert (=> d!185138 (invariantList!83 (toList!435 lt!215817))))

(declare-fun e!310015 () ListMap!213)

(assert (=> d!185138 (= lt!215817 e!310015)))

(declare-fun c!100289 () Bool)

(assert (=> d!185138 (= c!100289 ((_ is Cons!4747) (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608)))))))))

(assert (=> d!185138 (forall!1417 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608))))) lambda!14622)))

(assert (=> d!185138 (= (extractMap!26 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608)))))) lt!215817)))

(declare-fun b!517863 () Bool)

(assert (=> b!517863 (= e!310015 (addToMapMapFromBucket!6 (_2!3154 (h!10147 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608))))))) (extractMap!26 (t!73337 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608)))))))))))

(declare-fun b!517864 () Bool)

(assert (=> b!517864 (= e!310015 (ListMap!214 Nil!4746))))

(assert (= (and d!185138 c!100289) b!517863))

(assert (= (and d!185138 (not c!100289)) b!517864))

(declare-fun m!764769 () Bool)

(assert (=> d!185138 m!764769))

(declare-fun m!764771 () Bool)

(assert (=> d!185138 m!764771))

(declare-fun m!764773 () Bool)

(assert (=> b!517863 m!764773))

(assert (=> b!517863 m!764773))

(declare-fun m!764775 () Bool)

(assert (=> b!517863 m!764775))

(assert (=> d!185072 d!185138))

(assert (=> d!185072 d!185094))

(assert (=> d!185072 d!185060))

(declare-fun d!185140 () Bool)

(assert (=> d!185140 (= (valid!502 (v!15801 (underlying!1242 hm!65))) (valid!503 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65))))))))

(declare-fun bs!60182 () Bool)

(assert (= bs!60182 d!185140))

(declare-fun m!764777 () Bool)

(assert (=> bs!60182 m!764777))

(assert (=> d!185068 d!185140))

(declare-fun d!185142 () Bool)

(declare-fun c!100290 () Bool)

(assert (=> d!185142 (= c!100290 ((_ is Nil!4746) (t!73334 (toList!435 lt!215609))))))

(declare-fun e!310016 () (InoxSet tuple2!5872))

(assert (=> d!185142 (= (content!837 (t!73334 (toList!435 lt!215609))) e!310016)))

(declare-fun b!517865 () Bool)

(assert (=> b!517865 (= e!310016 ((as const (Array tuple2!5872 Bool)) false))))

(declare-fun b!517866 () Bool)

(assert (=> b!517866 (= e!310016 ((_ map or) (store ((as const (Array tuple2!5872 Bool)) false) (h!10146 (t!73334 (toList!435 lt!215609))) true) (content!837 (t!73334 (t!73334 (toList!435 lt!215609))))))))

(assert (= (and d!185142 c!100290) b!517865))

(assert (= (and d!185142 (not c!100290)) b!517866))

(declare-fun m!764779 () Bool)

(assert (=> b!517866 m!764779))

(declare-fun m!764781 () Bool)

(assert (=> b!517866 m!764781))

(assert (=> b!517629 d!185142))

(declare-fun d!185144 () Bool)

(declare-fun e!310017 () Bool)

(assert (=> d!185144 e!310017))

(declare-fun res!219606 () Bool)

(assert (=> d!185144 (=> (not res!219606) (not e!310017))))

(declare-fun lt!215818 () ListMap!213)

(assert (=> d!185144 (= res!219606 (not (contains!1106 lt!215818 k0!1740)))))

(assert (=> d!185144 (= lt!215818 (ListMap!214 (removePresrvNoDuplicatedKeys!18 (toList!435 (ite c!100230 call!37905 lt!215695)) k0!1740)))))

(assert (=> d!185144 (= (-!45 (ite c!100230 call!37905 lt!215695) k0!1740) lt!215818)))

(declare-fun b!517867 () Bool)

(assert (=> b!517867 (= e!310017 (= ((_ map and) (content!838 (keys!1869 (ite c!100230 call!37905 lt!215695))) ((_ map not) (store ((as const (Array K!1442 Bool)) false) k0!1740 true))) (content!838 (keys!1869 lt!215818))))))

(assert (= (and d!185144 res!219606) b!517867))

(declare-fun m!764783 () Bool)

(assert (=> d!185144 m!764783))

(declare-fun m!764785 () Bool)

(assert (=> d!185144 m!764785))

(declare-fun m!764787 () Bool)

(assert (=> b!517867 m!764787))

(assert (=> b!517867 m!764787))

(declare-fun m!764789 () Bool)

(assert (=> b!517867 m!764789))

(declare-fun m!764791 () Bool)

(assert (=> b!517867 m!764791))

(declare-fun m!764793 () Bool)

(assert (=> b!517867 m!764793))

(assert (=> b!517867 m!764791))

(assert (=> b!517867 m!764547))

(assert (=> bm!37896 d!185144))

(declare-fun d!185146 () Bool)

(assert (=> d!185146 (= (eq!41 call!37902 e!309889) (= (content!837 (toList!435 call!37902)) (content!837 (toList!435 e!309889))))))

(declare-fun bs!60183 () Bool)

(assert (= bs!60183 d!185146))

(declare-fun m!764795 () Bool)

(assert (=> bs!60183 m!764795))

(declare-fun m!764797 () Bool)

(assert (=> bs!60183 m!764797))

(assert (=> bm!37895 d!185146))

(declare-fun bs!60184 () Bool)

(declare-fun b!517891 () Bool)

(assert (= bs!60184 (and b!517891 b!517713)))

(declare-fun lambda!14625 () Int)

(assert (=> bs!60184 (= lambda!14625 lambda!14616)))

(declare-fun bs!60185 () Bool)

(assert (= bs!60185 (and b!517891 b!517674)))

(assert (=> bs!60185 (= lambda!14625 lambda!14611)))

(declare-fun bs!60186 () Bool)

(assert (= bs!60186 (and b!517891 b!517663)))

(assert (=> bs!60186 (= lambda!14625 lambda!14610)))

(declare-fun bs!60187 () Bool)

(assert (= bs!60187 (and b!517891 d!185102)))

(assert (=> bs!60187 (not (= lambda!14625 lambda!14617))))

(declare-fun bs!60188 () Bool)

(assert (= bs!60188 (and b!517891 d!185138)))

(assert (=> bs!60188 (= lambda!14625 lambda!14622)))

(declare-fun bs!60189 () Bool)

(assert (= bs!60189 (and b!517891 b!517636)))

(assert (=> bs!60189 (= lambda!14625 lambda!14603)))

(declare-fun bs!60190 () Bool)

(assert (= bs!60190 (and b!517891 d!185132)))

(assert (=> bs!60190 (= lambda!14625 lambda!14621)))

(declare-fun bs!60191 () Bool)

(assert (= bs!60191 (and b!517891 d!185128)))

(assert (=> bs!60191 (= lambda!14625 lambda!14620)))

(declare-fun bs!60192 () Bool)

(assert (= bs!60192 (and b!517891 b!517698)))

(assert (=> bs!60192 (= lambda!14625 lambda!14612)))

(declare-fun bs!60193 () Bool)

(assert (= bs!60193 (and b!517891 d!185092)))

(assert (=> bs!60193 (not (= lambda!14625 lambda!14615))))

(declare-fun call!37949 () ListLongMap!89)

(declare-fun call!37950 () (_ BitVec 64))

(declare-fun lt!215861 () ListLongMap!89)

(declare-fun c!100299 () Bool)

(declare-fun call!37946 () Bool)

(declare-fun bm!37941 () Bool)

(assert (=> bm!37941 (= call!37946 (contains!1108 (ite c!100299 lt!215861 call!37949) call!37950))))

(declare-fun b!517890 () Bool)

(declare-fun e!310033 () Unit!8673)

(declare-fun lt!215868 () Unit!8673)

(assert (=> b!517890 (= e!310033 lt!215868)))

(assert (=> b!517890 (= lt!215861 call!37949)))

(declare-fun lemmaInGenericMapThenInLongMap!5 (ListLongMap!89 K!1442 Hashable!503) Unit!8673)

(assert (=> b!517890 (= lt!215868 (lemmaInGenericMapThenInLongMap!5 lt!215861 k0!1740 (hashF!2400 hm!65)))))

(declare-fun res!219615 () Bool)

(assert (=> b!517890 (= res!219615 call!37946)))

(declare-fun e!310038 () Bool)

(assert (=> b!517890 (=> (not res!219615) (not e!310038))))

(assert (=> b!517890 e!310038))

(declare-fun bm!37942 () Bool)

(declare-fun call!37948 () Bool)

(declare-datatypes ((Option!1241 0))(
  ( (None!1240) (Some!1240 (v!15808 tuple2!5872)) )
))
(declare-fun call!37951 () Option!1241)

(declare-fun isDefined!1054 (Option!1241) Bool)

(assert (=> bm!37942 (= call!37948 (isDefined!1054 call!37951))))

(declare-fun e!310035 () Unit!8673)

(declare-fun lt!215866 () (_ BitVec 64))

(assert (=> b!517891 (= e!310035 (forallContained!451 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))) lambda!14625 (tuple2!5877 lt!215866 (apply!1194 (v!15801 (underlying!1242 hm!65)) lt!215866))))))

(declare-fun c!100300 () Bool)

(assert (=> b!517891 (= c!100300 (not (contains!1110 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))) (tuple2!5877 lt!215866 (apply!1194 (v!15801 (underlying!1242 hm!65)) lt!215866)))))))

(declare-fun lt!215865 () Unit!8673)

(declare-fun e!310036 () Unit!8673)

(assert (=> b!517891 (= lt!215865 e!310036)))

(declare-fun b!517892 () Bool)

(declare-fun e!310032 () Unit!8673)

(declare-fun Unit!8694 () Unit!8673)

(assert (=> b!517892 (= e!310032 Unit!8694)))

(declare-fun call!37947 () List!4756)

(declare-fun bm!37943 () Bool)

(declare-fun apply!1196 (ListLongMap!89 (_ BitVec 64)) List!4756)

(assert (=> bm!37943 (= call!37947 (apply!1196 (ite c!100299 lt!215861 call!37949) call!37950))))

(declare-fun b!517893 () Bool)

(assert (=> b!517893 (= e!310038 call!37948)))

(declare-fun b!517894 () Bool)

(assert (=> b!517894 false))

(declare-fun lt!215877 () Unit!8673)

(declare-fun lt!215863 () Unit!8673)

(assert (=> b!517894 (= lt!215877 lt!215863)))

(declare-fun lt!215878 () List!4757)

(declare-fun lt!215864 () List!4756)

(assert (=> b!517894 (contains!1110 lt!215878 (tuple2!5877 lt!215866 lt!215864))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!6 (List!4757 (_ BitVec 64) List!4756) Unit!8673)

(assert (=> b!517894 (= lt!215863 (lemmaGetValueByKeyImpliesContainsTuple!6 lt!215878 lt!215866 lt!215864))))

(assert (=> b!517894 (= lt!215864 (apply!1194 (v!15801 (underlying!1242 hm!65)) lt!215866))))

(assert (=> b!517894 (= lt!215878 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))))))

(declare-fun lt!215859 () Unit!8673)

(declare-fun lt!215873 () Unit!8673)

(assert (=> b!517894 (= lt!215859 lt!215873)))

(declare-fun lt!215869 () List!4757)

(declare-fun isDefined!1055 (Option!1239) Bool)

(assert (=> b!517894 (isDefined!1055 (getValueByKey!22 lt!215869 lt!215866))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!15 (List!4757 (_ BitVec 64)) Unit!8673)

(assert (=> b!517894 (= lt!215873 (lemmaContainsKeyImpliesGetValueByKeyDefined!15 lt!215869 lt!215866))))

(assert (=> b!517894 (= lt!215869 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))))))

(declare-fun lt!215870 () Unit!8673)

(declare-fun lt!215874 () Unit!8673)

(assert (=> b!517894 (= lt!215870 lt!215874)))

(declare-fun lt!215872 () List!4757)

(declare-fun containsKey!24 (List!4757 (_ BitVec 64)) Bool)

(assert (=> b!517894 (containsKey!24 lt!215872 lt!215866)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!6 (List!4757 (_ BitVec 64)) Unit!8673)

(assert (=> b!517894 (= lt!215874 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!6 lt!215872 lt!215866))))

(assert (=> b!517894 (= lt!215872 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))))))

(declare-fun Unit!8695 () Unit!8673)

(assert (=> b!517894 (= e!310036 Unit!8695)))

(declare-fun e!310037 () Bool)

(declare-fun b!517895 () Bool)

(declare-fun getPair!5 (List!4756 K!1442) Option!1241)

(assert (=> b!517895 (= e!310037 (isDefined!1054 (getPair!5 (apply!1194 (v!15801 (underlying!1242 hm!65)) lt!215866) k0!1740)))))

(declare-fun d!185148 () Bool)

(declare-fun lt!215871 () Bool)

(assert (=> d!185148 (= lt!215871 (contains!1106 (map!1062 hm!65) k0!1740))))

(assert (=> d!185148 (= lt!215871 e!310037)))

(declare-fun res!219613 () Bool)

(assert (=> d!185148 (=> (not res!219613) (not e!310037))))

(assert (=> d!185148 (= res!219613 (contains!1109 (v!15801 (underlying!1242 hm!65)) lt!215866))))

(declare-fun lt!215860 () Unit!8673)

(assert (=> d!185148 (= lt!215860 e!310033)))

(assert (=> d!185148 (= c!100299 (contains!1106 (extractMap!26 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65))))) k0!1740))))

(declare-fun lt!215876 () Unit!8673)

(assert (=> d!185148 (= lt!215876 e!310035)))

(declare-fun c!100302 () Bool)

(assert (=> d!185148 (= c!100302 (contains!1109 (v!15801 (underlying!1242 hm!65)) lt!215866))))

(assert (=> d!185148 (= lt!215866 (hash!534 (hashF!2400 hm!65) k0!1740))))

(assert (=> d!185148 (valid!501 hm!65)))

(assert (=> d!185148 (= (contains!1107 hm!65 k0!1740) lt!215871)))

(declare-fun b!517896 () Bool)

(declare-fun e!310034 () Bool)

(assert (=> b!517896 (= e!310034 call!37948)))

(declare-fun bm!37944 () Bool)

(assert (=> bm!37944 (= call!37949 (map!1063 (v!15801 (underlying!1242 hm!65))))))

(declare-fun bm!37945 () Bool)

(assert (=> bm!37945 (= call!37951 (getPair!5 call!37947 k0!1740))))

(declare-fun bm!37946 () Bool)

(assert (=> bm!37946 (= call!37950 (hash!534 (hashF!2400 hm!65) k0!1740))))

(declare-fun b!517897 () Bool)

(declare-fun Unit!8696 () Unit!8673)

(assert (=> b!517897 (= e!310035 Unit!8696)))

(declare-fun b!517898 () Bool)

(assert (=> b!517898 (= e!310033 e!310032)))

(declare-fun res!219614 () Bool)

(assert (=> b!517898 (= res!219614 call!37946)))

(assert (=> b!517898 (=> (not res!219614) (not e!310034))))

(declare-fun c!100301 () Bool)

(assert (=> b!517898 (= c!100301 e!310034)))

(declare-fun b!517899 () Bool)

(declare-fun Unit!8697 () Unit!8673)

(assert (=> b!517899 (= e!310036 Unit!8697)))

(declare-fun b!517900 () Bool)

(assert (=> b!517900 false))

(declare-fun lt!215875 () Unit!8673)

(declare-fun lt!215867 () Unit!8673)

(assert (=> b!517900 (= lt!215875 lt!215867)))

(declare-fun lt!215862 () ListLongMap!89)

(assert (=> b!517900 (contains!1106 (extractMap!26 (toList!436 lt!215862)) k0!1740)))

(declare-fun lemmaInLongMapThenInGenericMap!5 (ListLongMap!89 K!1442 Hashable!503) Unit!8673)

(assert (=> b!517900 (= lt!215867 (lemmaInLongMapThenInGenericMap!5 lt!215862 k0!1740 (hashF!2400 hm!65)))))

(assert (=> b!517900 (= lt!215862 call!37949)))

(declare-fun Unit!8698 () Unit!8673)

(assert (=> b!517900 (= e!310032 Unit!8698)))

(assert (= (and d!185148 c!100302) b!517891))

(assert (= (and d!185148 (not c!100302)) b!517897))

(assert (= (and b!517891 c!100300) b!517894))

(assert (= (and b!517891 (not c!100300)) b!517899))

(assert (= (and d!185148 c!100299) b!517890))

(assert (= (and d!185148 (not c!100299)) b!517898))

(assert (= (and b!517890 res!219615) b!517893))

(assert (= (and b!517898 res!219614) b!517896))

(assert (= (and b!517898 c!100301) b!517900))

(assert (= (and b!517898 (not c!100301)) b!517892))

(assert (= (or b!517890 b!517893 b!517898 b!517896) bm!37946))

(assert (= (or b!517890 b!517898 b!517896 b!517900) bm!37944))

(assert (= (or b!517890 b!517898) bm!37941))

(assert (= (or b!517893 b!517896) bm!37943))

(assert (= (or b!517893 b!517896) bm!37945))

(assert (= (or b!517893 b!517896) bm!37942))

(assert (= (and d!185148 res!219613) b!517895))

(declare-fun m!764799 () Bool)

(assert (=> b!517890 m!764799))

(declare-fun m!764801 () Bool)

(assert (=> bm!37942 m!764801))

(declare-fun m!764803 () Bool)

(assert (=> b!517895 m!764803))

(assert (=> b!517895 m!764803))

(declare-fun m!764805 () Bool)

(assert (=> b!517895 m!764805))

(assert (=> b!517895 m!764805))

(declare-fun m!764807 () Bool)

(assert (=> b!517895 m!764807))

(assert (=> bm!37946 m!764477))

(declare-fun m!764809 () Bool)

(assert (=> bm!37941 m!764809))

(declare-fun m!764811 () Bool)

(assert (=> b!517894 m!764811))

(declare-fun m!764813 () Bool)

(assert (=> b!517894 m!764813))

(assert (=> b!517894 m!764473))

(assert (=> b!517894 m!764803))

(declare-fun m!764815 () Bool)

(assert (=> b!517894 m!764815))

(declare-fun m!764817 () Bool)

(assert (=> b!517894 m!764817))

(assert (=> b!517894 m!764813))

(declare-fun m!764819 () Bool)

(assert (=> b!517894 m!764819))

(declare-fun m!764821 () Bool)

(assert (=> b!517894 m!764821))

(declare-fun m!764823 () Bool)

(assert (=> b!517894 m!764823))

(assert (=> d!185148 m!764477))

(assert (=> d!185148 m!764425))

(assert (=> d!185148 m!764571))

(assert (=> d!185148 m!764473))

(assert (=> d!185148 m!764417))

(declare-fun m!764825 () Bool)

(assert (=> d!185148 m!764825))

(assert (=> d!185148 m!764417))

(assert (=> d!185148 m!764571))

(declare-fun m!764827 () Bool)

(assert (=> d!185148 m!764827))

(declare-fun m!764829 () Bool)

(assert (=> d!185148 m!764829))

(declare-fun m!764831 () Bool)

(assert (=> bm!37945 m!764831))

(declare-fun m!764833 () Bool)

(assert (=> b!517900 m!764833))

(assert (=> b!517900 m!764833))

(declare-fun m!764835 () Bool)

(assert (=> b!517900 m!764835))

(declare-fun m!764837 () Bool)

(assert (=> b!517900 m!764837))

(assert (=> bm!37944 m!764473))

(assert (=> b!517891 m!764473))

(assert (=> b!517891 m!764803))

(declare-fun m!764839 () Bool)

(assert (=> b!517891 m!764839))

(declare-fun m!764841 () Bool)

(assert (=> b!517891 m!764841))

(declare-fun m!764843 () Bool)

(assert (=> bm!37943 m!764843))

(assert (=> d!185062 d!185148))

(assert (=> d!185062 d!185068))

(assert (=> bm!37894 d!185082))

(declare-fun d!185150 () Bool)

(declare-fun c!100305 () Bool)

(assert (=> d!185150 (= c!100305 ((_ is Nil!4748) (keys!1869 lt!215607)))))

(declare-fun e!310041 () (InoxSet K!1442))

(assert (=> d!185150 (= (content!838 (keys!1869 lt!215607)) e!310041)))

(declare-fun b!517905 () Bool)

(assert (=> b!517905 (= e!310041 ((as const (Array K!1442 Bool)) false))))

(declare-fun b!517906 () Bool)

(assert (=> b!517906 (= e!310041 ((_ map or) (store ((as const (Array K!1442 Bool)) false) (h!10148 (keys!1869 lt!215607)) true) (content!838 (t!73338 (keys!1869 lt!215607)))))))

(assert (= (and d!185150 c!100305) b!517905))

(assert (= (and d!185150 (not c!100305)) b!517906))

(declare-fun m!764845 () Bool)

(assert (=> b!517906 m!764845))

(declare-fun m!764847 () Bool)

(assert (=> b!517906 m!764847))

(assert (=> b!517673 d!185150))

(declare-fun b!517914 () Bool)

(assert (=> b!517914 true))

(declare-fun d!185152 () Bool)

(declare-fun e!310044 () Bool)

(assert (=> d!185152 e!310044))

(declare-fun res!219623 () Bool)

(assert (=> d!185152 (=> (not res!219623) (not e!310044))))

(declare-fun lt!215881 () List!4758)

(declare-fun noDuplicate!113 (List!4758) Bool)

(assert (=> d!185152 (= res!219623 (noDuplicate!113 lt!215881))))

(assert (=> d!185152 (= lt!215881 (getKeysList!8 (toList!435 lt!215607)))))

(assert (=> d!185152 (= (keys!1869 lt!215607) lt!215881)))

(declare-fun b!517913 () Bool)

(declare-fun res!219622 () Bool)

(assert (=> b!517913 (=> (not res!219622) (not e!310044))))

(declare-fun length!12 (List!4758) Int)

(declare-fun length!13 (List!4756) Int)

(assert (=> b!517913 (= res!219622 (= (length!12 lt!215881) (length!13 (toList!435 lt!215607))))))

(declare-fun res!219624 () Bool)

(assert (=> b!517914 (=> (not res!219624) (not e!310044))))

(declare-fun lambda!14630 () Int)

(declare-fun forall!1418 (List!4758 Int) Bool)

(assert (=> b!517914 (= res!219624 (forall!1418 lt!215881 lambda!14630))))

(declare-fun b!517915 () Bool)

(declare-fun lambda!14631 () Int)

(declare-fun map!1065 (List!4756 Int) List!4758)

(assert (=> b!517915 (= e!310044 (= (content!838 lt!215881) (content!838 (map!1065 (toList!435 lt!215607) lambda!14631))))))

(assert (= (and d!185152 res!219623) b!517913))

(assert (= (and b!517913 res!219622) b!517914))

(assert (= (and b!517914 res!219624) b!517915))

(declare-fun m!764849 () Bool)

(assert (=> d!185152 m!764849))

(assert (=> d!185152 m!764715))

(declare-fun m!764851 () Bool)

(assert (=> b!517913 m!764851))

(declare-fun m!764853 () Bool)

(assert (=> b!517913 m!764853))

(declare-fun m!764855 () Bool)

(assert (=> b!517914 m!764855))

(declare-fun m!764857 () Bool)

(assert (=> b!517915 m!764857))

(declare-fun m!764859 () Bool)

(assert (=> b!517915 m!764859))

(assert (=> b!517915 m!764859))

(declare-fun m!764861 () Bool)

(assert (=> b!517915 m!764861))

(assert (=> b!517673 d!185152))

(declare-fun d!185154 () Bool)

(declare-fun c!100306 () Bool)

(assert (=> d!185154 (= c!100306 ((_ is Nil!4748) (keys!1869 lt!215704)))))

(declare-fun e!310045 () (InoxSet K!1442))

(assert (=> d!185154 (= (content!838 (keys!1869 lt!215704)) e!310045)))

(declare-fun b!517918 () Bool)

(assert (=> b!517918 (= e!310045 ((as const (Array K!1442 Bool)) false))))

(declare-fun b!517919 () Bool)

(assert (=> b!517919 (= e!310045 ((_ map or) (store ((as const (Array K!1442 Bool)) false) (h!10148 (keys!1869 lt!215704)) true) (content!838 (t!73338 (keys!1869 lt!215704)))))))

(assert (= (and d!185154 c!100306) b!517918))

(assert (= (and d!185154 (not c!100306)) b!517919))

(declare-fun m!764863 () Bool)

(assert (=> b!517919 m!764863))

(declare-fun m!764865 () Bool)

(assert (=> b!517919 m!764865))

(assert (=> b!517673 d!185154))

(declare-fun bs!60194 () Bool)

(declare-fun b!517921 () Bool)

(assert (= bs!60194 (and b!517921 b!517914)))

(declare-fun lambda!14632 () Int)

(assert (=> bs!60194 (= (= (toList!435 lt!215704) (toList!435 lt!215607)) (= lambda!14632 lambda!14630))))

(assert (=> b!517921 true))

(declare-fun bs!60195 () Bool)

(declare-fun b!517922 () Bool)

(assert (= bs!60195 (and b!517922 b!517915)))

(declare-fun lambda!14633 () Int)

(assert (=> bs!60195 (= lambda!14633 lambda!14631)))

(declare-fun d!185156 () Bool)

(declare-fun e!310046 () Bool)

(assert (=> d!185156 e!310046))

(declare-fun res!219626 () Bool)

(assert (=> d!185156 (=> (not res!219626) (not e!310046))))

(declare-fun lt!215882 () List!4758)

(assert (=> d!185156 (= res!219626 (noDuplicate!113 lt!215882))))

(assert (=> d!185156 (= lt!215882 (getKeysList!8 (toList!435 lt!215704)))))

(assert (=> d!185156 (= (keys!1869 lt!215704) lt!215882)))

(declare-fun b!517920 () Bool)

(declare-fun res!219625 () Bool)

(assert (=> b!517920 (=> (not res!219625) (not e!310046))))

(assert (=> b!517920 (= res!219625 (= (length!12 lt!215882) (length!13 (toList!435 lt!215704))))))

(declare-fun res!219627 () Bool)

(assert (=> b!517921 (=> (not res!219627) (not e!310046))))

(assert (=> b!517921 (= res!219627 (forall!1418 lt!215882 lambda!14632))))

(assert (=> b!517922 (= e!310046 (= (content!838 lt!215882) (content!838 (map!1065 (toList!435 lt!215704) lambda!14633))))))

(assert (= (and d!185156 res!219626) b!517920))

(assert (= (and b!517920 res!219625) b!517921))

(assert (= (and b!517921 res!219627) b!517922))

(declare-fun m!764867 () Bool)

(assert (=> d!185156 m!764867))

(assert (=> d!185156 m!764687))

(declare-fun m!764869 () Bool)

(assert (=> b!517920 m!764869))

(declare-fun m!764871 () Bool)

(assert (=> b!517920 m!764871))

(declare-fun m!764873 () Bool)

(assert (=> b!517921 m!764873))

(declare-fun m!764875 () Bool)

(assert (=> b!517922 m!764875))

(declare-fun m!764877 () Bool)

(assert (=> b!517922 m!764877))

(assert (=> b!517922 m!764877))

(declare-fun m!764879 () Bool)

(assert (=> b!517922 m!764879))

(assert (=> b!517673 d!185156))

(declare-fun bs!60196 () Bool)

(declare-fun d!185158 () Bool)

(assert (= bs!60196 (and d!185158 b!517713)))

(declare-fun lambda!14634 () Int)

(assert (=> bs!60196 (not (= lambda!14634 lambda!14616))))

(declare-fun bs!60197 () Bool)

(assert (= bs!60197 (and d!185158 b!517674)))

(assert (=> bs!60197 (not (= lambda!14634 lambda!14611))))

(declare-fun bs!60198 () Bool)

(assert (= bs!60198 (and d!185158 b!517663)))

(assert (=> bs!60198 (not (= lambda!14634 lambda!14610))))

(declare-fun bs!60199 () Bool)

(assert (= bs!60199 (and d!185158 d!185102)))

(assert (=> bs!60199 (= (= (hashF!2400 (_2!3155 lt!215690)) (hashF!2400 hm!65)) (= lambda!14634 lambda!14617))))

(declare-fun bs!60200 () Bool)

(assert (= bs!60200 (and d!185158 d!185138)))

(assert (=> bs!60200 (not (= lambda!14634 lambda!14622))))

(declare-fun bs!60201 () Bool)

(assert (= bs!60201 (and d!185158 b!517636)))

(assert (=> bs!60201 (not (= lambda!14634 lambda!14603))))

(declare-fun bs!60202 () Bool)

(assert (= bs!60202 (and d!185158 d!185132)))

(assert (=> bs!60202 (not (= lambda!14634 lambda!14621))))

(declare-fun bs!60203 () Bool)

(assert (= bs!60203 (and d!185158 d!185128)))

(assert (=> bs!60203 (not (= lambda!14634 lambda!14620))))

(declare-fun bs!60204 () Bool)

(assert (= bs!60204 (and d!185158 b!517891)))

(assert (=> bs!60204 (not (= lambda!14634 lambda!14625))))

(declare-fun bs!60205 () Bool)

(assert (= bs!60205 (and d!185158 b!517698)))

(assert (=> bs!60205 (not (= lambda!14634 lambda!14612))))

(declare-fun bs!60206 () Bool)

(assert (= bs!60206 (and d!185158 d!185092)))

(assert (=> bs!60206 (= (= (hashF!2400 (_2!3155 lt!215690)) (hashF!2400 (_2!3153 lt!215608))) (= lambda!14634 lambda!14615))))

(assert (=> d!185158 true))

(assert (=> d!185158 (= (allKeysSameHashInMap!33 call!37900 (hashF!2400 (_2!3155 lt!215690))) (forall!1417 (toList!436 call!37900) lambda!14634))))

(declare-fun bs!60207 () Bool)

(assert (= bs!60207 d!185158))

(declare-fun m!764881 () Bool)

(assert (=> bs!60207 m!764881))

(assert (=> b!517660 d!185158))

(declare-fun bs!60208 () Bool)

(declare-fun d!185160 () Bool)

(assert (= bs!60208 (and d!185160 b!517713)))

(declare-fun lambda!14637 () Int)

(assert (=> bs!60208 (= lambda!14637 lambda!14616)))

(declare-fun bs!60209 () Bool)

(assert (= bs!60209 (and d!185160 b!517674)))

(assert (=> bs!60209 (= lambda!14637 lambda!14611)))

(declare-fun bs!60210 () Bool)

(assert (= bs!60210 (and d!185160 b!517663)))

(assert (=> bs!60210 (= lambda!14637 lambda!14610)))

(declare-fun bs!60211 () Bool)

(assert (= bs!60211 (and d!185160 d!185102)))

(assert (=> bs!60211 (not (= lambda!14637 lambda!14617))))

(declare-fun bs!60212 () Bool)

(assert (= bs!60212 (and d!185160 d!185138)))

(assert (=> bs!60212 (= lambda!14637 lambda!14622)))

(declare-fun bs!60213 () Bool)

(assert (= bs!60213 (and d!185160 b!517636)))

(assert (=> bs!60213 (= lambda!14637 lambda!14603)))

(declare-fun bs!60214 () Bool)

(assert (= bs!60214 (and d!185160 d!185158)))

(assert (=> bs!60214 (not (= lambda!14637 lambda!14634))))

(declare-fun bs!60215 () Bool)

(assert (= bs!60215 (and d!185160 d!185132)))

(assert (=> bs!60215 (= lambda!14637 lambda!14621)))

(declare-fun bs!60216 () Bool)

(assert (= bs!60216 (and d!185160 d!185128)))

(assert (=> bs!60216 (= lambda!14637 lambda!14620)))

(declare-fun bs!60217 () Bool)

(assert (= bs!60217 (and d!185160 b!517891)))

(assert (=> bs!60217 (= lambda!14637 lambda!14625)))

(declare-fun bs!60218 () Bool)

(assert (= bs!60218 (and d!185160 b!517698)))

(assert (=> bs!60218 (= lambda!14637 lambda!14612)))

(declare-fun bs!60219 () Bool)

(assert (= bs!60219 (and d!185160 d!185092)))

(assert (=> bs!60219 (not (= lambda!14637 lambda!14615))))

(assert (=> d!185160 (eq!41 (extractMap!26 (toList!436 (+!29 lt!215677 (tuple2!5877 lt!215691 lt!215699)))) (-!45 (extractMap!26 (toList!436 lt!215677)) k0!1740))))

(declare-fun lt!215885 () Unit!8673)

(declare-fun choose!3695 (ListLongMap!89 (_ BitVec 64) List!4756 K!1442 Hashable!503) Unit!8673)

(assert (=> d!185160 (= lt!215885 (choose!3695 lt!215677 lt!215691 lt!215699 k0!1740 (hashF!2400 (_2!3155 lt!215690))))))

(assert (=> d!185160 (forall!1417 (toList!436 lt!215677) lambda!14637)))

(assert (=> d!185160 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!18 lt!215677 lt!215691 lt!215699 k0!1740 (hashF!2400 (_2!3155 lt!215690))) lt!215885)))

(declare-fun bs!60220 () Bool)

(assert (= bs!60220 d!185160))

(declare-fun m!764883 () Bool)

(assert (=> bs!60220 m!764883))

(assert (=> bs!60220 m!764519))

(assert (=> bs!60220 m!764515))

(declare-fun m!764885 () Bool)

(assert (=> bs!60220 m!764885))

(assert (=> bs!60220 m!764515))

(declare-fun m!764887 () Bool)

(assert (=> bs!60220 m!764887))

(declare-fun m!764889 () Bool)

(assert (=> bs!60220 m!764889))

(assert (=> bs!60220 m!764883))

(assert (=> bs!60220 m!764887))

(declare-fun m!764891 () Bool)

(assert (=> bs!60220 m!764891))

(assert (=> b!517660 d!185160))

(declare-fun d!185162 () Bool)

(assert (=> d!185162 true))

(assert (=> d!185162 true))

(declare-fun lambda!14640 () Int)

(declare-fun b_next!13661 () Bool)

(assert (=> start!47076 (= b_next!13657 (or (and d!185162 (= lambda!14640 p!6060)) b_next!13661))))

(assert (=> d!185162 (= (allKeysSameHash!21 (removePairForKey!20 lt!215679 k0!1740) lt!215691 (hashF!2400 (_2!3155 lt!215690))) (forall!1416 (removePairForKey!20 lt!215679 k0!1740) lambda!14640))))

(declare-fun bs!60221 () Bool)

(assert (= bs!60221 d!185162))

(assert (=> bs!60221 m!764467))

(declare-fun m!764893 () Bool)

(assert (=> bs!60221 m!764893))

(assert (=> b!517660 d!185162))

(declare-fun bs!60222 () Bool)

(declare-fun d!185164 () Bool)

(assert (= bs!60222 (and d!185164 b!517713)))

(declare-fun lambda!14641 () Int)

(assert (=> bs!60222 (= lambda!14641 lambda!14616)))

(declare-fun bs!60223 () Bool)

(assert (= bs!60223 (and d!185164 b!517674)))

(assert (=> bs!60223 (= lambda!14641 lambda!14611)))

(declare-fun bs!60224 () Bool)

(assert (= bs!60224 (and d!185164 d!185102)))

(assert (=> bs!60224 (not (= lambda!14641 lambda!14617))))

(declare-fun bs!60225 () Bool)

(assert (= bs!60225 (and d!185164 d!185138)))

(assert (=> bs!60225 (= lambda!14641 lambda!14622)))

(declare-fun bs!60226 () Bool)

(assert (= bs!60226 (and d!185164 b!517636)))

(assert (=> bs!60226 (= lambda!14641 lambda!14603)))

(declare-fun bs!60227 () Bool)

(assert (= bs!60227 (and d!185164 d!185158)))

(assert (=> bs!60227 (not (= lambda!14641 lambda!14634))))

(declare-fun bs!60228 () Bool)

(assert (= bs!60228 (and d!185164 d!185132)))

(assert (=> bs!60228 (= lambda!14641 lambda!14621)))

(declare-fun bs!60229 () Bool)

(assert (= bs!60229 (and d!185164 d!185128)))

(assert (=> bs!60229 (= lambda!14641 lambda!14620)))

(declare-fun bs!60230 () Bool)

(assert (= bs!60230 (and d!185164 b!517891)))

(assert (=> bs!60230 (= lambda!14641 lambda!14625)))

(declare-fun bs!60231 () Bool)

(assert (= bs!60231 (and d!185164 b!517663)))

(assert (=> bs!60231 (= lambda!14641 lambda!14610)))

(declare-fun bs!60232 () Bool)

(assert (= bs!60232 (and d!185164 d!185160)))

(assert (=> bs!60232 (= lambda!14641 lambda!14637)))

(declare-fun bs!60233 () Bool)

(assert (= bs!60233 (and d!185164 b!517698)))

(assert (=> bs!60233 (= lambda!14641 lambda!14612)))

(declare-fun bs!60234 () Bool)

(assert (= bs!60234 (and d!185164 d!185092)))

(assert (=> bs!60234 (not (= lambda!14641 lambda!14615))))

(declare-fun lt!215886 () ListMap!213)

(assert (=> d!185164 (invariantList!83 (toList!435 lt!215886))))

(declare-fun e!310047 () ListMap!213)

(assert (=> d!185164 (= lt!215886 e!310047)))

(declare-fun c!100307 () Bool)

(assert (=> d!185164 (= c!100307 ((_ is Cons!4747) (toList!436 (+!29 lt!215677 (tuple2!5877 lt!215691 lt!215699)))))))

(assert (=> d!185164 (forall!1417 (toList!436 (+!29 lt!215677 (tuple2!5877 lt!215691 lt!215699))) lambda!14641)))

(assert (=> d!185164 (= (extractMap!26 (toList!436 (+!29 lt!215677 (tuple2!5877 lt!215691 lt!215699)))) lt!215886)))

(declare-fun b!517927 () Bool)

(assert (=> b!517927 (= e!310047 (addToMapMapFromBucket!6 (_2!3154 (h!10147 (toList!436 (+!29 lt!215677 (tuple2!5877 lt!215691 lt!215699))))) (extractMap!26 (t!73337 (toList!436 (+!29 lt!215677 (tuple2!5877 lt!215691 lt!215699)))))))))

(declare-fun b!517928 () Bool)

(assert (=> b!517928 (= e!310047 (ListMap!214 Nil!4746))))

(assert (= (and d!185164 c!100307) b!517927))

(assert (= (and d!185164 (not c!100307)) b!517928))

(declare-fun m!764895 () Bool)

(assert (=> d!185164 m!764895))

(declare-fun m!764897 () Bool)

(assert (=> d!185164 m!764897))

(declare-fun m!764899 () Bool)

(assert (=> b!517927 m!764899))

(assert (=> b!517927 m!764899))

(declare-fun m!764901 () Bool)

(assert (=> b!517927 m!764901))

(assert (=> b!517660 d!185164))

(declare-fun d!185166 () Bool)

(declare-fun res!219628 () Bool)

(declare-fun e!310048 () Bool)

(assert (=> d!185166 (=> res!219628 e!310048)))

(assert (=> d!185166 (= res!219628 ((_ is Nil!4747) (toList!436 lt!215686)))))

(assert (=> d!185166 (= (forall!1417 (toList!436 lt!215686) lambda!14610) e!310048)))

(declare-fun b!517929 () Bool)

(declare-fun e!310049 () Bool)

(assert (=> b!517929 (= e!310048 e!310049)))

(declare-fun res!219629 () Bool)

(assert (=> b!517929 (=> (not res!219629) (not e!310049))))

(assert (=> b!517929 (= res!219629 (dynLambda!2988 lambda!14610 (h!10147 (toList!436 lt!215686))))))

(declare-fun b!517930 () Bool)

(assert (=> b!517930 (= e!310049 (forall!1417 (t!73337 (toList!436 lt!215686)) lambda!14610))))

(assert (= (and d!185166 (not res!219628)) b!517929))

(assert (= (and b!517929 res!219629) b!517930))

(declare-fun b_lambda!20151 () Bool)

(assert (=> (not b_lambda!20151) (not b!517929)))

(declare-fun m!764903 () Bool)

(assert (=> b!517929 m!764903))

(declare-fun m!764905 () Bool)

(assert (=> b!517930 m!764905))

(assert (=> b!517660 d!185166))

(declare-fun bs!60235 () Bool)

(declare-fun d!185168 () Bool)

(assert (= bs!60235 (and d!185168 b!517713)))

(declare-fun lambda!14646 () Int)

(assert (=> bs!60235 (= lambda!14646 lambda!14616)))

(declare-fun bs!60236 () Bool)

(assert (= bs!60236 (and d!185168 b!517674)))

(assert (=> bs!60236 (= lambda!14646 lambda!14611)))

(declare-fun bs!60237 () Bool)

(assert (= bs!60237 (and d!185168 d!185102)))

(assert (=> bs!60237 (not (= lambda!14646 lambda!14617))))

(declare-fun bs!60238 () Bool)

(assert (= bs!60238 (and d!185168 d!185138)))

(assert (=> bs!60238 (= lambda!14646 lambda!14622)))

(declare-fun bs!60239 () Bool)

(assert (= bs!60239 (and d!185168 b!517636)))

(assert (=> bs!60239 (= lambda!14646 lambda!14603)))

(declare-fun bs!60240 () Bool)

(assert (= bs!60240 (and d!185168 d!185158)))

(assert (=> bs!60240 (not (= lambda!14646 lambda!14634))))

(declare-fun bs!60241 () Bool)

(assert (= bs!60241 (and d!185168 d!185132)))

(assert (=> bs!60241 (= lambda!14646 lambda!14621)))

(declare-fun bs!60242 () Bool)

(assert (= bs!60242 (and d!185168 d!185128)))

(assert (=> bs!60242 (= lambda!14646 lambda!14620)))

(declare-fun bs!60243 () Bool)

(assert (= bs!60243 (and d!185168 b!517891)))

(assert (=> bs!60243 (= lambda!14646 lambda!14625)))

(declare-fun bs!60244 () Bool)

(assert (= bs!60244 (and d!185168 b!517663)))

(assert (=> bs!60244 (= lambda!14646 lambda!14610)))

(declare-fun bs!60245 () Bool)

(assert (= bs!60245 (and d!185168 d!185160)))

(assert (=> bs!60245 (= lambda!14646 lambda!14637)))

(declare-fun bs!60246 () Bool)

(assert (= bs!60246 (and d!185168 b!517698)))

(assert (=> bs!60246 (= lambda!14646 lambda!14612)))

(declare-fun bs!60247 () Bool)

(assert (= bs!60247 (and d!185168 d!185164)))

(assert (=> bs!60247 (= lambda!14646 lambda!14641)))

(declare-fun bs!60248 () Bool)

(assert (= bs!60248 (and d!185168 d!185092)))

(assert (=> bs!60248 (not (= lambda!14646 lambda!14615))))

(declare-fun e!310052 () Bool)

(assert (=> d!185168 e!310052))

(declare-fun res!219632 () Bool)

(assert (=> d!185168 (=> (not res!219632) (not e!310052))))

(declare-fun lt!215892 () ListLongMap!89)

(assert (=> d!185168 (= res!219632 (forall!1417 (toList!436 lt!215892) lambda!14646))))

(assert (=> d!185168 (= lt!215892 (+!29 lt!215677 (tuple2!5877 lt!215691 lt!215699)))))

(declare-fun lt!215891 () Unit!8673)

(declare-fun choose!3696 (ListLongMap!89 (_ BitVec 64) List!4756 Hashable!503) Unit!8673)

(assert (=> d!185168 (= lt!215891 (choose!3696 lt!215677 lt!215691 lt!215699 (hashF!2400 (_2!3155 lt!215690))))))

(assert (=> d!185168 (forall!1417 (toList!436 lt!215677) lambda!14646)))

(assert (=> d!185168 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!20 lt!215677 lt!215691 lt!215699 (hashF!2400 (_2!3155 lt!215690))) lt!215891)))

(declare-fun b!517933 () Bool)

(assert (=> b!517933 (= e!310052 (allKeysSameHashInMap!33 lt!215892 (hashF!2400 (_2!3155 lt!215690))))))

(assert (= (and d!185168 res!219632) b!517933))

(declare-fun m!764907 () Bool)

(assert (=> d!185168 m!764907))

(assert (=> d!185168 m!764519))

(declare-fun m!764909 () Bool)

(assert (=> d!185168 m!764909))

(declare-fun m!764911 () Bool)

(assert (=> d!185168 m!764911))

(declare-fun m!764913 () Bool)

(assert (=> b!517933 m!764913))

(assert (=> b!517660 d!185168))

(declare-fun d!185170 () Bool)

(declare-fun e!310055 () Bool)

(assert (=> d!185170 e!310055))

(declare-fun res!219637 () Bool)

(assert (=> d!185170 (=> (not res!219637) (not e!310055))))

(declare-fun lt!215903 () ListLongMap!89)

(assert (=> d!185170 (= res!219637 (contains!1108 lt!215903 (_1!3154 (tuple2!5877 lt!215691 lt!215699))))))

(declare-fun lt!215902 () List!4757)

(assert (=> d!185170 (= lt!215903 (ListLongMap!90 lt!215902))))

(declare-fun lt!215901 () Unit!8673)

(declare-fun lt!215904 () Unit!8673)

(assert (=> d!185170 (= lt!215901 lt!215904)))

(assert (=> d!185170 (= (getValueByKey!22 lt!215902 (_1!3154 (tuple2!5877 lt!215691 lt!215699))) (Some!1238 (_2!3154 (tuple2!5877 lt!215691 lt!215699))))))

(declare-fun lemmaContainsTupThenGetReturnValue!9 (List!4757 (_ BitVec 64) List!4756) Unit!8673)

(assert (=> d!185170 (= lt!215904 (lemmaContainsTupThenGetReturnValue!9 lt!215902 (_1!3154 (tuple2!5877 lt!215691 lt!215699)) (_2!3154 (tuple2!5877 lt!215691 lt!215699))))))

(declare-fun insertStrictlySorted!5 (List!4757 (_ BitVec 64) List!4756) List!4757)

(assert (=> d!185170 (= lt!215902 (insertStrictlySorted!5 (toList!436 lt!215677) (_1!3154 (tuple2!5877 lt!215691 lt!215699)) (_2!3154 (tuple2!5877 lt!215691 lt!215699))))))

(assert (=> d!185170 (= (+!29 lt!215677 (tuple2!5877 lt!215691 lt!215699)) lt!215903)))

(declare-fun b!517938 () Bool)

(declare-fun res!219638 () Bool)

(assert (=> b!517938 (=> (not res!219638) (not e!310055))))

(assert (=> b!517938 (= res!219638 (= (getValueByKey!22 (toList!436 lt!215903) (_1!3154 (tuple2!5877 lt!215691 lt!215699))) (Some!1238 (_2!3154 (tuple2!5877 lt!215691 lt!215699)))))))

(declare-fun b!517939 () Bool)

(assert (=> b!517939 (= e!310055 (contains!1110 (toList!436 lt!215903) (tuple2!5877 lt!215691 lt!215699)))))

(assert (= (and d!185170 res!219637) b!517938))

(assert (= (and b!517938 res!219638) b!517939))

(declare-fun m!764915 () Bool)

(assert (=> d!185170 m!764915))

(declare-fun m!764917 () Bool)

(assert (=> d!185170 m!764917))

(declare-fun m!764919 () Bool)

(assert (=> d!185170 m!764919))

(declare-fun m!764921 () Bool)

(assert (=> d!185170 m!764921))

(declare-fun m!764923 () Bool)

(assert (=> b!517938 m!764923))

(declare-fun m!764925 () Bool)

(assert (=> b!517939 m!764925))

(assert (=> b!517660 d!185170))

(declare-fun d!185172 () Bool)

(assert (=> d!185172 (= (eq!41 call!37904 call!37899) (= (content!837 (toList!435 call!37904)) (content!837 (toList!435 call!37899))))))

(declare-fun bs!60249 () Bool)

(assert (= bs!60249 d!185172))

(declare-fun m!764927 () Bool)

(assert (=> bs!60249 m!764927))

(declare-fun m!764929 () Bool)

(assert (=> bs!60249 m!764929))

(assert (=> b!517660 d!185172))

(declare-fun d!185174 () Bool)

(declare-fun e!310056 () Bool)

(assert (=> d!185174 e!310056))

(declare-fun res!219639 () Bool)

(assert (=> d!185174 (=> (not res!219639) (not e!310056))))

(declare-fun lt!215905 () ListMap!213)

(assert (=> d!185174 (= res!219639 (not (contains!1106 lt!215905 k0!1740)))))

(assert (=> d!185174 (= lt!215905 (ListMap!214 (removePresrvNoDuplicatedKeys!18 (toList!435 call!37905) k0!1740)))))

(assert (=> d!185174 (= (-!45 call!37905 k0!1740) lt!215905)))

(declare-fun b!517940 () Bool)

(assert (=> b!517940 (= e!310056 (= ((_ map and) (content!838 (keys!1869 call!37905)) ((_ map not) (store ((as const (Array K!1442 Bool)) false) k0!1740 true))) (content!838 (keys!1869 lt!215905))))))

(assert (= (and d!185174 res!219639) b!517940))

(declare-fun m!764931 () Bool)

(assert (=> d!185174 m!764931))

(declare-fun m!764933 () Bool)

(assert (=> d!185174 m!764933))

(declare-fun m!764935 () Bool)

(assert (=> b!517940 m!764935))

(assert (=> b!517940 m!764935))

(declare-fun m!764937 () Bool)

(assert (=> b!517940 m!764937))

(declare-fun m!764939 () Bool)

(assert (=> b!517940 m!764939))

(declare-fun m!764941 () Bool)

(assert (=> b!517940 m!764941))

(assert (=> b!517940 m!764939))

(assert (=> b!517940 m!764547))

(assert (=> b!517660 d!185174))

(declare-fun d!185176 () Bool)

(assert (=> d!185176 (= (eq!41 (extractMap!26 (toList!436 (+!29 lt!215677 (tuple2!5877 lt!215691 lt!215699)))) (-!45 call!37905 k0!1740)) (= (content!837 (toList!435 (extractMap!26 (toList!436 (+!29 lt!215677 (tuple2!5877 lt!215691 lt!215699)))))) (content!837 (toList!435 (-!45 call!37905 k0!1740)))))))

(declare-fun bs!60250 () Bool)

(assert (= bs!60250 d!185176))

(declare-fun m!764943 () Bool)

(assert (=> bs!60250 m!764943))

(declare-fun m!764945 () Bool)

(assert (=> bs!60250 m!764945))

(assert (=> b!517660 d!185176))

(assert (=> b!517660 d!185116))

(declare-fun b!517941 () Bool)

(declare-fun e!310057 () Bool)

(assert (=> b!517941 (= e!310057 (not (contains!1111 (keys!1869 lt!215695) k0!1740)))))

(declare-fun b!517942 () Bool)

(declare-fun e!310059 () Unit!8673)

(declare-fun lt!215910 () Unit!8673)

(assert (=> b!517942 (= e!310059 lt!215910)))

(declare-fun lt!215909 () Unit!8673)

(assert (=> b!517942 (= lt!215909 (lemmaContainsKeyImpliesGetValueByKeyDefined!14 (toList!435 lt!215695) k0!1740))))

(assert (=> b!517942 (isDefined!1053 (getValueByKey!23 (toList!435 lt!215695) k0!1740))))

(declare-fun lt!215911 () Unit!8673)

(assert (=> b!517942 (= lt!215911 lt!215909)))

(assert (=> b!517942 (= lt!215910 (lemmaInListThenGetKeysListContains!7 (toList!435 lt!215695) k0!1740))))

(declare-fun call!37952 () Bool)

(assert (=> b!517942 call!37952))

(declare-fun b!517943 () Bool)

(declare-fun e!310062 () Bool)

(declare-fun e!310058 () Bool)

(assert (=> b!517943 (= e!310062 e!310058)))

(declare-fun res!219641 () Bool)

(assert (=> b!517943 (=> (not res!219641) (not e!310058))))

(assert (=> b!517943 (= res!219641 (isDefined!1053 (getValueByKey!23 (toList!435 lt!215695) k0!1740)))))

(declare-fun d!185178 () Bool)

(assert (=> d!185178 e!310062))

(declare-fun res!219642 () Bool)

(assert (=> d!185178 (=> res!219642 e!310062)))

(assert (=> d!185178 (= res!219642 e!310057)))

(declare-fun res!219640 () Bool)

(assert (=> d!185178 (=> (not res!219640) (not e!310057))))

(declare-fun lt!215906 () Bool)

(assert (=> d!185178 (= res!219640 (not lt!215906))))

(declare-fun lt!215913 () Bool)

(assert (=> d!185178 (= lt!215906 lt!215913)))

(declare-fun lt!215908 () Unit!8673)

(assert (=> d!185178 (= lt!215908 e!310059)))

(declare-fun c!100308 () Bool)

(assert (=> d!185178 (= c!100308 lt!215913)))

(assert (=> d!185178 (= lt!215913 (containsKey!23 (toList!435 lt!215695) k0!1740))))

(assert (=> d!185178 (= (contains!1106 lt!215695 k0!1740) lt!215906)))

(declare-fun bm!37947 () Bool)

(declare-fun e!310060 () List!4758)

(assert (=> bm!37947 (= call!37952 (contains!1111 e!310060 k0!1740))))

(declare-fun c!100310 () Bool)

(assert (=> bm!37947 (= c!100310 c!100308)))

(declare-fun b!517944 () Bool)

(declare-fun e!310061 () Unit!8673)

(declare-fun Unit!8699 () Unit!8673)

(assert (=> b!517944 (= e!310061 Unit!8699)))

(declare-fun b!517945 () Bool)

(assert (=> b!517945 (= e!310058 (contains!1111 (keys!1869 lt!215695) k0!1740))))

(declare-fun b!517946 () Bool)

(assert (=> b!517946 false))

(declare-fun lt!215907 () Unit!8673)

(declare-fun lt!215912 () Unit!8673)

(assert (=> b!517946 (= lt!215907 lt!215912)))

(assert (=> b!517946 (containsKey!23 (toList!435 lt!215695) k0!1740)))

(assert (=> b!517946 (= lt!215912 (lemmaInGetKeysListThenContainsKey!7 (toList!435 lt!215695) k0!1740))))

(declare-fun Unit!8700 () Unit!8673)

(assert (=> b!517946 (= e!310061 Unit!8700)))

(declare-fun b!517947 () Bool)

(assert (=> b!517947 (= e!310059 e!310061)))

(declare-fun c!100309 () Bool)

(assert (=> b!517947 (= c!100309 call!37952)))

(declare-fun b!517948 () Bool)

(assert (=> b!517948 (= e!310060 (keys!1869 lt!215695))))

(declare-fun b!517949 () Bool)

(assert (=> b!517949 (= e!310060 (getKeysList!8 (toList!435 lt!215695)))))

(assert (= (and d!185178 c!100308) b!517942))

(assert (= (and d!185178 (not c!100308)) b!517947))

(assert (= (and b!517947 c!100309) b!517946))

(assert (= (and b!517947 (not c!100309)) b!517944))

(assert (= (or b!517942 b!517947) bm!37947))

(assert (= (and bm!37947 c!100310) b!517949))

(assert (= (and bm!37947 (not c!100310)) b!517948))

(assert (= (and d!185178 res!219640) b!517941))

(assert (= (and d!185178 (not res!219642)) b!517943))

(assert (= (and b!517943 res!219641) b!517945))

(declare-fun m!764947 () Bool)

(assert (=> b!517943 m!764947))

(assert (=> b!517943 m!764947))

(declare-fun m!764949 () Bool)

(assert (=> b!517943 m!764949))

(declare-fun m!764951 () Bool)

(assert (=> d!185178 m!764951))

(declare-fun m!764953 () Bool)

(assert (=> bm!37947 m!764953))

(declare-fun m!764955 () Bool)

(assert (=> b!517948 m!764955))

(assert (=> b!517946 m!764951))

(declare-fun m!764957 () Bool)

(assert (=> b!517946 m!764957))

(declare-fun m!764959 () Bool)

(assert (=> b!517949 m!764959))

(declare-fun m!764961 () Bool)

(assert (=> b!517942 m!764961))

(assert (=> b!517942 m!764947))

(assert (=> b!517942 m!764947))

(assert (=> b!517942 m!764949))

(declare-fun m!764963 () Bool)

(assert (=> b!517942 m!764963))

(assert (=> b!517941 m!764955))

(assert (=> b!517941 m!764955))

(declare-fun m!764965 () Bool)

(assert (=> b!517941 m!764965))

(assert (=> b!517945 m!764955))

(assert (=> b!517945 m!764955))

(assert (=> b!517945 m!764965))

(assert (=> b!517660 d!185178))

(declare-fun bs!60251 () Bool)

(declare-fun d!185180 () Bool)

(assert (= bs!60251 (and d!185180 d!185162)))

(declare-fun lambda!14647 () Int)

(assert (=> bs!60251 (= lambda!14647 lambda!14640)))

(assert (=> d!185180 true))

(assert (=> d!185180 true))

(declare-fun b_next!13663 () Bool)

(assert (=> start!47076 (= b_next!13661 (or (and d!185180 (= lambda!14647 p!6060)) b_next!13663))))

(assert (=> d!185180 (= (allKeysSameHash!21 lt!215679 lt!215691 (hashF!2400 (_2!3155 lt!215690))) (forall!1416 lt!215679 lambda!14647))))

(declare-fun bs!60252 () Bool)

(assert (= bs!60252 d!185180))

(declare-fun m!764967 () Bool)

(assert (=> bs!60252 m!764967))

(assert (=> b!517660 d!185180))

(declare-fun d!185182 () Bool)

(declare-fun res!219643 () Bool)

(declare-fun e!310063 () Bool)

(assert (=> d!185182 (=> res!219643 e!310063)))

(assert (=> d!185182 (= res!219643 ((_ is Nil!4747) (toList!436 call!37900)))))

(assert (=> d!185182 (= (forall!1417 (toList!436 call!37900) lambda!14610) e!310063)))

(declare-fun b!517950 () Bool)

(declare-fun e!310064 () Bool)

(assert (=> b!517950 (= e!310063 e!310064)))

(declare-fun res!219644 () Bool)

(assert (=> b!517950 (=> (not res!219644) (not e!310064))))

(assert (=> b!517950 (= res!219644 (dynLambda!2988 lambda!14610 (h!10147 (toList!436 call!37900))))))

(declare-fun b!517951 () Bool)

(assert (=> b!517951 (= e!310064 (forall!1417 (t!73337 (toList!436 call!37900)) lambda!14610))))

(assert (= (and d!185182 (not res!219643)) b!517950))

(assert (= (and b!517950 res!219644) b!517951))

(declare-fun b_lambda!20153 () Bool)

(assert (=> (not b_lambda!20153) (not b!517950)))

(declare-fun m!764969 () Bool)

(assert (=> b!517950 m!764969))

(declare-fun m!764971 () Bool)

(assert (=> b!517951 m!764971))

(assert (=> b!517660 d!185182))

(declare-fun bs!60253 () Bool)

(declare-fun d!185184 () Bool)

(assert (= bs!60253 (and d!185184 b!517713)))

(declare-fun lambda!14650 () Int)

(assert (=> bs!60253 (not (= lambda!14650 lambda!14616))))

(declare-fun bs!60254 () Bool)

(assert (= bs!60254 (and d!185184 b!517674)))

(assert (=> bs!60254 (not (= lambda!14650 lambda!14611))))

(declare-fun bs!60255 () Bool)

(assert (= bs!60255 (and d!185184 d!185168)))

(assert (=> bs!60255 (not (= lambda!14650 lambda!14646))))

(declare-fun bs!60256 () Bool)

(assert (= bs!60256 (and d!185184 d!185102)))

(assert (=> bs!60256 (= (= (hashF!2400 (_2!3155 lt!215690)) (hashF!2400 hm!65)) (= lambda!14650 lambda!14617))))

(declare-fun bs!60257 () Bool)

(assert (= bs!60257 (and d!185184 d!185138)))

(assert (=> bs!60257 (not (= lambda!14650 lambda!14622))))

(declare-fun bs!60258 () Bool)

(assert (= bs!60258 (and d!185184 b!517636)))

(assert (=> bs!60258 (not (= lambda!14650 lambda!14603))))

(declare-fun bs!60259 () Bool)

(assert (= bs!60259 (and d!185184 d!185158)))

(assert (=> bs!60259 (= lambda!14650 lambda!14634)))

(declare-fun bs!60260 () Bool)

(assert (= bs!60260 (and d!185184 d!185132)))

(assert (=> bs!60260 (not (= lambda!14650 lambda!14621))))

(declare-fun bs!60261 () Bool)

(assert (= bs!60261 (and d!185184 d!185128)))

(assert (=> bs!60261 (not (= lambda!14650 lambda!14620))))

(declare-fun bs!60262 () Bool)

(assert (= bs!60262 (and d!185184 b!517891)))

(assert (=> bs!60262 (not (= lambda!14650 lambda!14625))))

(declare-fun bs!60263 () Bool)

(assert (= bs!60263 (and d!185184 b!517663)))

(assert (=> bs!60263 (not (= lambda!14650 lambda!14610))))

(declare-fun bs!60264 () Bool)

(assert (= bs!60264 (and d!185184 d!185160)))

(assert (=> bs!60264 (not (= lambda!14650 lambda!14637))))

(declare-fun bs!60265 () Bool)

(assert (= bs!60265 (and d!185184 b!517698)))

(assert (=> bs!60265 (not (= lambda!14650 lambda!14612))))

(declare-fun bs!60266 () Bool)

(assert (= bs!60266 (and d!185184 d!185164)))

(assert (=> bs!60266 (not (= lambda!14650 lambda!14641))))

(declare-fun bs!60267 () Bool)

(assert (= bs!60267 (and d!185184 d!185092)))

(assert (=> bs!60267 (= (= (hashF!2400 (_2!3155 lt!215690)) (hashF!2400 (_2!3153 lt!215608))) (= lambda!14650 lambda!14615))))

(assert (=> d!185184 true))

(assert (=> d!185184 (allKeysSameHash!21 lt!215679 lt!215691 (hashF!2400 (_2!3155 lt!215690)))))

(declare-fun lt!215916 () Unit!8673)

(declare-fun choose!3697 (List!4757 (_ BitVec 64) List!4756 Hashable!503) Unit!8673)

(assert (=> d!185184 (= lt!215916 (choose!3697 (toList!436 lt!215677) lt!215691 lt!215679 (hashF!2400 (_2!3155 lt!215690))))))

(assert (=> d!185184 (forall!1417 (toList!436 lt!215677) lambda!14650)))

(assert (=> d!185184 (= (lemmaInLongMapAllKeySameHashThenForTuple!20 (toList!436 lt!215677) lt!215691 lt!215679 (hashF!2400 (_2!3155 lt!215690))) lt!215916)))

(declare-fun bs!60268 () Bool)

(assert (= bs!60268 d!185184))

(assert (=> bs!60268 m!764533))

(declare-fun m!764973 () Bool)

(assert (=> bs!60268 m!764973))

(declare-fun m!764975 () Bool)

(assert (=> bs!60268 m!764975))

(assert (=> b!517660 d!185184))

(declare-fun d!185186 () Bool)

(assert (=> d!185186 (allKeysSameHash!21 (removePairForKey!20 lt!215679 k0!1740) lt!215691 (hashF!2400 (_2!3155 lt!215690)))))

(declare-fun lt!215919 () Unit!8673)

(declare-fun choose!3698 (List!4756 K!1442 (_ BitVec 64) Hashable!503) Unit!8673)

(assert (=> d!185186 (= lt!215919 (choose!3698 lt!215679 k0!1740 lt!215691 (hashF!2400 (_2!3155 lt!215690))))))

(assert (=> d!185186 (noDuplicateKeys!22 lt!215679)))

(assert (=> d!185186 (= (lemmaRemovePairForKeyPreservesHash!20 lt!215679 k0!1740 lt!215691 (hashF!2400 (_2!3155 lt!215690))) lt!215919)))

(declare-fun bs!60269 () Bool)

(assert (= bs!60269 d!185186))

(assert (=> bs!60269 m!764467))

(assert (=> bs!60269 m!764467))

(assert (=> bs!60269 m!764511))

(declare-fun m!764977 () Bool)

(assert (=> bs!60269 m!764977))

(assert (=> bs!60269 m!764627))

(assert (=> b!517660 d!185186))

(declare-fun d!185188 () Bool)

(declare-fun res!219649 () Bool)

(declare-fun e!310069 () Bool)

(assert (=> d!185188 (=> res!219649 e!310069)))

(assert (=> d!185188 (= res!219649 (or ((_ is Nil!4746) (toList!435 lt!215610)) ((_ is Nil!4746) (t!73334 (toList!435 lt!215610)))))))

(assert (=> d!185188 (= (noDuplicatedKeys!21 (toList!435 lt!215610)) e!310069)))

(declare-fun b!517956 () Bool)

(declare-fun e!310070 () Bool)

(assert (=> b!517956 (= e!310069 e!310070)))

(declare-fun res!219650 () Bool)

(assert (=> b!517956 (=> (not res!219650) (not e!310070))))

(assert (=> b!517956 (= res!219650 (not (containsKey!23 (t!73334 (toList!435 lt!215610)) (_1!3152 (h!10146 (toList!435 lt!215610))))))))

(declare-fun b!517957 () Bool)

(assert (=> b!517957 (= e!310070 (noDuplicatedKeys!21 (t!73334 (toList!435 lt!215610))))))

(assert (= (and d!185188 (not res!219649)) b!517956))

(assert (= (and b!517956 res!219650) b!517957))

(declare-fun m!764979 () Bool)

(assert (=> b!517956 m!764979))

(declare-fun m!764981 () Bool)

(assert (=> b!517957 m!764981))

(assert (=> d!185070 d!185188))

(declare-fun d!185190 () Bool)

(declare-fun c!100311 () Bool)

(assert (=> d!185190 (= c!100311 ((_ is Nil!4746) (toList!435 lt!215610)))))

(declare-fun e!310071 () (InoxSet tuple2!5872))

(assert (=> d!185190 (= (content!837 (toList!435 lt!215610)) e!310071)))

(declare-fun b!517958 () Bool)

(assert (=> b!517958 (= e!310071 ((as const (Array tuple2!5872 Bool)) false))))

(declare-fun b!517959 () Bool)

(assert (=> b!517959 (= e!310071 ((_ map or) (store ((as const (Array tuple2!5872 Bool)) false) (h!10146 (toList!435 lt!215610)) true) (content!837 (t!73334 (toList!435 lt!215610)))))))

(assert (= (and d!185190 c!100311) b!517958))

(assert (= (and d!185190 (not c!100311)) b!517959))

(declare-fun m!764983 () Bool)

(assert (=> b!517959 m!764983))

(declare-fun m!764985 () Bool)

(assert (=> b!517959 m!764985))

(assert (=> d!185058 d!185190))

(assert (=> d!185058 d!185056))

(declare-fun d!185192 () Bool)

(declare-fun lt!215920 () ListMap!213)

(assert (=> d!185192 (invariantList!83 (toList!435 lt!215920))))

(assert (=> d!185192 (= lt!215920 (extractMap!26 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3155 lt!215690)))))))))

(assert (=> d!185192 (valid!501 (_2!3155 lt!215690))))

(assert (=> d!185192 (= (map!1062 (_2!3155 lt!215690)) lt!215920)))

(declare-fun bs!60270 () Bool)

(assert (= bs!60270 d!185192))

(declare-fun m!764987 () Bool)

(assert (=> bs!60270 m!764987))

(assert (=> bs!60270 m!764577))

(declare-fun m!764989 () Bool)

(assert (=> bs!60270 m!764989))

(assert (=> bs!60270 m!764501))

(assert (=> bm!37901 d!185192))

(declare-fun bs!60271 () Bool)

(declare-fun d!185194 () Bool)

(assert (= bs!60271 (and d!185194 b!517713)))

(declare-fun lambda!14651 () Int)

(assert (=> bs!60271 (not (= lambda!14651 lambda!14616))))

(declare-fun bs!60272 () Bool)

(assert (= bs!60272 (and d!185194 b!517674)))

(assert (=> bs!60272 (not (= lambda!14651 lambda!14611))))

(declare-fun bs!60273 () Bool)

(assert (= bs!60273 (and d!185194 d!185168)))

(assert (=> bs!60273 (not (= lambda!14651 lambda!14646))))

(declare-fun bs!60274 () Bool)

(assert (= bs!60274 (and d!185194 d!185102)))

(assert (=> bs!60274 (= (= (hashF!2400 (_2!3155 lt!215690)) (hashF!2400 hm!65)) (= lambda!14651 lambda!14617))))

(declare-fun bs!60275 () Bool)

(assert (= bs!60275 (and d!185194 d!185138)))

(assert (=> bs!60275 (not (= lambda!14651 lambda!14622))))

(declare-fun bs!60276 () Bool)

(assert (= bs!60276 (and d!185194 b!517636)))

(assert (=> bs!60276 (not (= lambda!14651 lambda!14603))))

(declare-fun bs!60277 () Bool)

(assert (= bs!60277 (and d!185194 d!185184)))

(assert (=> bs!60277 (= lambda!14651 lambda!14650)))

(declare-fun bs!60278 () Bool)

(assert (= bs!60278 (and d!185194 d!185158)))

(assert (=> bs!60278 (= lambda!14651 lambda!14634)))

(declare-fun bs!60279 () Bool)

(assert (= bs!60279 (and d!185194 d!185132)))

(assert (=> bs!60279 (not (= lambda!14651 lambda!14621))))

(declare-fun bs!60280 () Bool)

(assert (= bs!60280 (and d!185194 d!185128)))

(assert (=> bs!60280 (not (= lambda!14651 lambda!14620))))

(declare-fun bs!60281 () Bool)

(assert (= bs!60281 (and d!185194 b!517891)))

(assert (=> bs!60281 (not (= lambda!14651 lambda!14625))))

(declare-fun bs!60282 () Bool)

(assert (= bs!60282 (and d!185194 b!517663)))

(assert (=> bs!60282 (not (= lambda!14651 lambda!14610))))

(declare-fun bs!60283 () Bool)

(assert (= bs!60283 (and d!185194 d!185160)))

(assert (=> bs!60283 (not (= lambda!14651 lambda!14637))))

(declare-fun bs!60284 () Bool)

(assert (= bs!60284 (and d!185194 b!517698)))

(assert (=> bs!60284 (not (= lambda!14651 lambda!14612))))

(declare-fun bs!60285 () Bool)

(assert (= bs!60285 (and d!185194 d!185164)))

(assert (=> bs!60285 (not (= lambda!14651 lambda!14641))))

(declare-fun bs!60286 () Bool)

(assert (= bs!60286 (and d!185194 d!185092)))

(assert (=> bs!60286 (= (= (hashF!2400 (_2!3155 lt!215690)) (hashF!2400 (_2!3153 lt!215608))) (= lambda!14651 lambda!14615))))

(assert (=> d!185194 true))

(assert (=> d!185194 (= (allKeysSameHashInMap!33 lt!215686 (hashF!2400 (_2!3155 lt!215690))) (forall!1417 (toList!436 lt!215686) lambda!14651))))

(declare-fun bs!60287 () Bool)

(assert (= bs!60287 d!185194))

(declare-fun m!764991 () Bool)

(assert (=> bs!60287 m!764991))

(assert (=> b!517670 d!185194))

(declare-fun d!185196 () Bool)

(declare-fun res!219651 () Bool)

(declare-fun e!310072 () Bool)

(assert (=> d!185196 (=> res!219651 e!310072)))

(assert (=> d!185196 (= res!219651 (or ((_ is Nil!4746) (toList!435 lt!215609)) ((_ is Nil!4746) (t!73334 (toList!435 lt!215609)))))))

(assert (=> d!185196 (= (noDuplicatedKeys!21 (toList!435 lt!215609)) e!310072)))

(declare-fun b!517960 () Bool)

(declare-fun e!310073 () Bool)

(assert (=> b!517960 (= e!310072 e!310073)))

(declare-fun res!219652 () Bool)

(assert (=> b!517960 (=> (not res!219652) (not e!310073))))

(assert (=> b!517960 (= res!219652 (not (containsKey!23 (t!73334 (toList!435 lt!215609)) (_1!3152 (h!10146 (toList!435 lt!215609))))))))

(declare-fun b!517961 () Bool)

(assert (=> b!517961 (= e!310073 (noDuplicatedKeys!21 (t!73334 (toList!435 lt!215609))))))

(assert (= (and d!185196 (not res!219651)) b!517960))

(assert (= (and b!517960 res!219652) b!517961))

(declare-fun m!764993 () Bool)

(assert (=> b!517960 m!764993))

(declare-fun m!764995 () Bool)

(assert (=> b!517961 m!764995))

(assert (=> d!185066 d!185196))

(declare-fun d!185198 () Bool)

(declare-fun res!219653 () Bool)

(declare-fun e!310074 () Bool)

(assert (=> d!185198 (=> res!219653 e!310074)))

(assert (=> d!185198 (= res!219653 (or ((_ is Nil!4746) (toList!435 lt!215607)) ((_ is Nil!4746) (t!73334 (toList!435 lt!215607)))))))

(assert (=> d!185198 (= (noDuplicatedKeys!21 (toList!435 lt!215607)) e!310074)))

(declare-fun b!517962 () Bool)

(declare-fun e!310075 () Bool)

(assert (=> b!517962 (= e!310074 e!310075)))

(declare-fun res!219654 () Bool)

(assert (=> b!517962 (=> (not res!219654) (not e!310075))))

(assert (=> b!517962 (= res!219654 (not (containsKey!23 (t!73334 (toList!435 lt!215607)) (_1!3152 (h!10146 (toList!435 lt!215607))))))))

(declare-fun b!517963 () Bool)

(assert (=> b!517963 (= e!310075 (noDuplicatedKeys!21 (t!73334 (toList!435 lt!215607))))))

(assert (= (and d!185198 (not res!219653)) b!517962))

(assert (= (and b!517962 res!219654) b!517963))

(declare-fun m!764997 () Bool)

(assert (=> b!517962 m!764997))

(declare-fun m!764999 () Bool)

(assert (=> b!517963 m!764999))

(assert (=> d!185074 d!185198))

(declare-fun bs!60288 () Bool)

(declare-fun d!185200 () Bool)

(assert (= bs!60288 (and d!185200 b!517713)))

(declare-fun lambda!14654 () Int)

(assert (=> bs!60288 (= lambda!14654 lambda!14616)))

(declare-fun bs!60289 () Bool)

(assert (= bs!60289 (and d!185200 b!517674)))

(assert (=> bs!60289 (= lambda!14654 lambda!14611)))

(declare-fun bs!60290 () Bool)

(assert (= bs!60290 (and d!185200 d!185168)))

(assert (=> bs!60290 (= lambda!14654 lambda!14646)))

(declare-fun bs!60291 () Bool)

(assert (= bs!60291 (and d!185200 d!185102)))

(assert (=> bs!60291 (not (= lambda!14654 lambda!14617))))

(declare-fun bs!60292 () Bool)

(assert (= bs!60292 (and d!185200 d!185138)))

(assert (=> bs!60292 (= lambda!14654 lambda!14622)))

(declare-fun bs!60293 () Bool)

(assert (= bs!60293 (and d!185200 b!517636)))

(assert (=> bs!60293 (= lambda!14654 lambda!14603)))

(declare-fun bs!60294 () Bool)

(assert (= bs!60294 (and d!185200 d!185184)))

(assert (=> bs!60294 (not (= lambda!14654 lambda!14650))))

(declare-fun bs!60295 () Bool)

(assert (= bs!60295 (and d!185200 d!185132)))

(assert (=> bs!60295 (= lambda!14654 lambda!14621)))

(declare-fun bs!60296 () Bool)

(assert (= bs!60296 (and d!185200 d!185128)))

(assert (=> bs!60296 (= lambda!14654 lambda!14620)))

(declare-fun bs!60297 () Bool)

(assert (= bs!60297 (and d!185200 b!517891)))

(assert (=> bs!60297 (= lambda!14654 lambda!14625)))

(declare-fun bs!60298 () Bool)

(assert (= bs!60298 (and d!185200 b!517663)))

(assert (=> bs!60298 (= lambda!14654 lambda!14610)))

(declare-fun bs!60299 () Bool)

(assert (= bs!60299 (and d!185200 d!185160)))

(assert (=> bs!60299 (= lambda!14654 lambda!14637)))

(declare-fun bs!60300 () Bool)

(assert (= bs!60300 (and d!185200 b!517698)))

(assert (=> bs!60300 (= lambda!14654 lambda!14612)))

(declare-fun bs!60301 () Bool)

(assert (= bs!60301 (and d!185200 d!185164)))

(assert (=> bs!60301 (= lambda!14654 lambda!14641)))

(declare-fun bs!60302 () Bool)

(assert (= bs!60302 (and d!185200 d!185092)))

(assert (=> bs!60302 (not (= lambda!14654 lambda!14615))))

(declare-fun bs!60303 () Bool)

(assert (= bs!60303 (and d!185200 d!185194)))

(assert (=> bs!60303 (not (= lambda!14654 lambda!14651))))

(declare-fun bs!60304 () Bool)

(assert (= bs!60304 (and d!185200 d!185158)))

(assert (=> bs!60304 (not (= lambda!14654 lambda!14634))))

(assert (=> d!185200 (= (extractMap!26 (toList!436 lt!215692)) (-!45 (extractMap!26 (toList!436 lt!215692)) k0!1740))))

(declare-fun lt!215923 () Unit!8673)

(declare-fun choose!3699 (ListLongMap!89 K!1442 Hashable!503) Unit!8673)

(assert (=> d!185200 (= lt!215923 (choose!3699 lt!215692 k0!1740 (hashF!2400 hm!65)))))

(assert (=> d!185200 (forall!1417 (toList!436 lt!215692) lambda!14654)))

(assert (=> d!185200 (= (lemmaRemoveNotContainedDoesNotChange!18 lt!215692 k0!1740 (hashF!2400 hm!65)) lt!215923)))

(declare-fun bs!60305 () Bool)

(assert (= bs!60305 d!185200))

(declare-fun m!765001 () Bool)

(assert (=> bs!60305 m!765001))

(assert (=> bs!60305 m!765001))

(declare-fun m!765003 () Bool)

(assert (=> bs!60305 m!765003))

(declare-fun m!765005 () Bool)

(assert (=> bs!60305 m!765005))

(declare-fun m!765007 () Bool)

(assert (=> bs!60305 m!765007))

(assert (=> b!517669 d!185200))

(declare-fun tp!161498 () Bool)

(declare-fun b!517964 () Bool)

(declare-fun e!310076 () Bool)

(assert (=> b!517964 (= e!310076 (and tp_is_empty!2657 tp_is_empty!2659 tp!161498))))

(assert (=> b!517695 (= tp!161496 e!310076)))

(assert (= (and b!517695 ((_ is Cons!4746) (t!73334 mapValue!2062))) b!517964))

(declare-fun b!517965 () Bool)

(declare-fun tp!161501 () Bool)

(declare-fun e!310078 () Bool)

(assert (=> b!517965 (= e!310078 (and tp_is_empty!2657 tp_is_empty!2659 tp!161501))))

(declare-fun mapNonEmpty!2063 () Bool)

(declare-fun mapRes!2063 () Bool)

(declare-fun tp!161499 () Bool)

(assert (=> mapNonEmpty!2063 (= mapRes!2063 (and tp!161499 e!310078))))

(declare-fun mapKey!2063 () (_ BitVec 32))

(declare-fun mapValue!2063 () List!4756)

(declare-fun mapRest!2063 () (Array (_ BitVec 32) List!4756))

(assert (=> mapNonEmpty!2063 (= mapRest!2062 (store mapRest!2063 mapKey!2063 mapValue!2063))))

(declare-fun condMapEmpty!2063 () Bool)

(declare-fun mapDefault!2063 () List!4756)

(assert (=> mapNonEmpty!2062 (= condMapEmpty!2063 (= mapRest!2062 ((as const (Array (_ BitVec 32) List!4756)) mapDefault!2063)))))

(declare-fun e!310077 () Bool)

(assert (=> mapNonEmpty!2062 (= tp!161494 (and e!310077 mapRes!2063))))

(declare-fun mapIsEmpty!2063 () Bool)

(assert (=> mapIsEmpty!2063 mapRes!2063))

(declare-fun b!517966 () Bool)

(declare-fun tp!161500 () Bool)

(assert (=> b!517966 (= e!310077 (and tp_is_empty!2657 tp_is_empty!2659 tp!161500))))

(assert (= (and mapNonEmpty!2062 condMapEmpty!2063) mapIsEmpty!2063))

(assert (= (and mapNonEmpty!2062 (not condMapEmpty!2063)) mapNonEmpty!2063))

(assert (= (and mapNonEmpty!2063 ((_ is Cons!4746) mapValue!2063)) b!517965))

(assert (= (and mapNonEmpty!2062 ((_ is Cons!4746) mapDefault!2063)) b!517966))

(declare-fun m!765009 () Bool)

(assert (=> mapNonEmpty!2063 m!765009))

(declare-fun e!310079 () Bool)

(declare-fun tp!161502 () Bool)

(declare-fun b!517967 () Bool)

(assert (=> b!517967 (= e!310079 (and tp_is_empty!2657 tp_is_empty!2659 tp!161502))))

(assert (=> b!517688 (= tp!161487 e!310079)))

(assert (= (and b!517688 ((_ is Cons!4746) (t!73334 (minValue!787 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65)))))))) b!517967))

(declare-fun e!310080 () Bool)

(declare-fun b!517968 () Bool)

(declare-fun tp!161503 () Bool)

(assert (=> b!517968 (= e!310080 (and tp_is_empty!2657 tp_is_empty!2659 tp!161503))))

(assert (=> b!517686 (= tp!161485 e!310080)))

(assert (= (and b!517686 ((_ is Cons!4746) (t!73334 mapDefault!2059))) b!517968))

(declare-fun b!517976 () Bool)

(declare-fun e!310086 () Bool)

(declare-fun lt!215926 () MutLongMap!531)

(assert (=> b!517976 (= e!310086 ((_ is LongMap!531) lt!215926))))

(assert (=> b!517976 (= lt!215926 (v!15801 (underlying!1242 (_2!3153 (remove!48 hm!65 k0!1740)))))))

(declare-fun b!517975 () Bool)

(declare-fun e!310085 () Bool)

(assert (=> b!517975 (= e!310085 e!310086)))

(assert (=> d!185062 (= true e!310085)))

(assert (= b!517975 b!517976))

(assert (= (and d!185062 ((_ is HashMap!503) (_2!3153 (remove!48 hm!65 k0!1740)))) b!517975))

(declare-fun tp!161504 () Bool)

(declare-fun b!517977 () Bool)

(declare-fun e!310087 () Bool)

(assert (=> b!517977 (= e!310087 (and tp_is_empty!2657 tp_is_empty!2659 tp!161504))))

(assert (=> b!517696 (= tp!161495 e!310087)))

(assert (= (and b!517696 ((_ is Cons!4746) (t!73334 mapDefault!2062))) b!517977))

(declare-fun b!517978 () Bool)

(declare-fun tp!161505 () Bool)

(declare-fun e!310088 () Bool)

(assert (=> b!517978 (= e!310088 (and tp_is_empty!2657 tp_is_empty!2659 tp!161505))))

(assert (=> b!517687 (= tp!161486 e!310088)))

(assert (= (and b!517687 ((_ is Cons!4746) (t!73334 (zeroValue!787 (v!15800 (underlying!1241 (v!15801 (underlying!1242 hm!65)))))))) b!517978))

(declare-fun e!310089 () Bool)

(declare-fun b!517979 () Bool)

(declare-fun tp!161506 () Bool)

(assert (=> b!517979 (= e!310089 (and tp_is_empty!2657 tp_is_empty!2659 tp!161506))))

(assert (=> b!517697 (= tp!161497 e!310089)))

(assert (= (and b!517697 ((_ is Cons!4746) (t!73334 mapValue!2059))) b!517979))

(declare-fun b_lambda!20155 () Bool)

(assert (= b_lambda!20149 (or b!517674 b_lambda!20155)))

(declare-fun bs!60306 () Bool)

(declare-fun d!185202 () Bool)

(assert (= bs!60306 (and d!185202 b!517674)))

(assert (=> bs!60306 (= (dynLambda!2988 lambda!14611 (h!10147 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65)))))) (noDuplicateKeys!22 (_2!3154 (h!10147 (toList!436 (map!1063 (v!15801 (underlying!1242 hm!65))))))))))

(declare-fun m!765011 () Bool)

(assert (=> bs!60306 m!765011))

(assert (=> b!517769 d!185202))

(declare-fun b_lambda!20157 () Bool)

(assert (= b_lambda!20153 (or b!517663 b_lambda!20157)))

(declare-fun bs!60307 () Bool)

(declare-fun d!185204 () Bool)

(assert (= bs!60307 (and d!185204 b!517663)))

(assert (=> bs!60307 (= (dynLambda!2988 lambda!14610 (h!10147 (toList!436 call!37900))) (noDuplicateKeys!22 (_2!3154 (h!10147 (toList!436 call!37900)))))))

(declare-fun m!765013 () Bool)

(assert (=> bs!60307 m!765013))

(assert (=> b!517950 d!185204))

(declare-fun b_lambda!20159 () Bool)

(assert (= b_lambda!20145 (or (and b!517609 b_free!13647) b_lambda!20159)))

(declare-fun b_lambda!20161 () Bool)

(assert (= b_lambda!20143 (or b!517636 b_lambda!20161)))

(declare-fun bs!60308 () Bool)

(declare-fun d!185206 () Bool)

(assert (= bs!60308 (and d!185206 b!517636)))

(assert (=> bs!60308 (= (dynLambda!2988 lambda!14603 (h!10147 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608))))))) (noDuplicateKeys!22 (_2!3154 (h!10147 (toList!436 (map!1063 (v!15801 (underlying!1242 (_2!3153 lt!215608)))))))))))

(declare-fun m!765015 () Bool)

(assert (=> bs!60308 m!765015))

(assert (=> b!517711 d!185206))

(declare-fun b_lambda!20163 () Bool)

(assert (= b_lambda!20147 (or b!517663 b_lambda!20163)))

(declare-fun bs!60309 () Bool)

(declare-fun d!185208 () Bool)

(assert (= bs!60309 (and d!185208 b!517663)))

(assert (=> bs!60309 (= (dynLambda!2988 lambda!14610 (tuple2!5877 lt!215691 (apply!1194 (v!15801 (underlying!1242 hm!65)) lt!215691))) (noDuplicateKeys!22 (_2!3154 (tuple2!5877 lt!215691 (apply!1194 (v!15801 (underlying!1242 hm!65)) lt!215691)))))))

(declare-fun m!765017 () Bool)

(assert (=> bs!60309 m!765017))

(assert (=> d!185118 d!185208))

(declare-fun b_lambda!20165 () Bool)

(assert (= b_lambda!20151 (or b!517663 b_lambda!20165)))

(declare-fun bs!60310 () Bool)

(declare-fun d!185210 () Bool)

(assert (= bs!60310 (and d!185210 b!517663)))

(assert (=> bs!60310 (= (dynLambda!2988 lambda!14610 (h!10147 (toList!436 lt!215686))) (noDuplicateKeys!22 (_2!3154 (h!10147 (toList!436 lt!215686)))))))

(declare-fun m!765019 () Bool)

(assert (=> bs!60310 m!765019))

(assert (=> b!517929 d!185210))

(declare-fun b_lambda!20167 () Bool)

(assert (= b_lambda!20141 (or (and start!47076 b_free!13645) (and d!185162 (= lambda!14640 p!6060)) (and d!185180 (= lambda!14647 p!6060)) b_lambda!20167)))

(declare-fun bs!60311 () Bool)

(declare-fun d!185212 () Bool)

(assert (= bs!60311 (and d!185212 d!185162)))

(assert (=> bs!60311 (= (dynLambda!2987 lambda!14640 (h!10146 (t!73334 (toList!435 lt!215607)))) (= (hash!534 (hashF!2400 (_2!3155 lt!215690)) (_1!3152 (h!10146 (t!73334 (toList!435 lt!215607))))) lt!215691))))

(declare-fun m!765021 () Bool)

(assert (=> bs!60311 m!765021))

(assert (=> (and d!185162 (= lambda!14640 p!6060) b!517705) d!185212))

(declare-fun bs!60312 () Bool)

(declare-fun d!185214 () Bool)

(assert (= bs!60312 (and d!185214 d!185180)))

(assert (=> bs!60312 (= (dynLambda!2987 lambda!14647 (h!10146 (t!73334 (toList!435 lt!215607)))) (= (hash!534 (hashF!2400 (_2!3155 lt!215690)) (_1!3152 (h!10146 (t!73334 (toList!435 lt!215607))))) lt!215691))))

(assert (=> bs!60312 m!765021))

(assert (=> (and d!185180 (= lambda!14647 p!6060) b!517705) d!185214))

(check-sat (not d!185126) (not b!517930) (not b_lambda!20163) (not b!517796) (not d!185152) (not d!185194) (not b!517956) (not b!517866) (not b!517965) (not b!517913) (not b!517793) (not b!517890) (not b!517927) (not b!517706) (not b!517852) (not d!185128) (not b!517951) (not b!517963) (not d!185146) (not b_lambda!20155) (not b!517842) (not b!517922) (not bm!37945) (not d!185170) (not b!517839) (not b!517966) (not b!517843) (not b!517940) (not bs!60310) (not d!185160) (not b_next!13655) (not d!185180) (not b!517979) (not b!517964) (not d!185118) (not d!185144) (not bm!37907) (not bm!37928) (not bs!60312) (not b!517895) (not b!517791) (not d!185122) (not b!517747) (not d!185084) (not b!517797) (not b!517789) (not b!517738) (not b!517863) (not d!185106) (not b!517699) (not bs!60308) (not bm!37923) (not mapNonEmpty!2063) (not d!185112) (not d!185136) (not b!517938) (not b!517861) (not b!517702) (not b!517713) (not b!517949) (not bm!37927) (not bm!37910) (not bm!37946) b_and!51133 (not b!517906) (not d!185104) (not b!517933) (not b!517845) (not b!517948) (not d!185164) (not b!517764) (not b!517946) (not b!517920) (not bm!37943) b_and!51135 (not b!517919) b_and!51125 (not b!517977) (not b!517746) (not b!517700) (not b!517712) (not b!517942) (not d!185114) (not d!185094) (not d!185092) (not b!517921) (not b!517790) (not d!185086) (not bm!37947) (not b!517854) (not b!517768) (not bm!37941) (not bm!37924) (not b!517939) (not d!185184) (not b!517915) (not b!517849) (not b!517733) (not b!517914) (not d!185134) (not b!517941) (not b_next!13663) (not b!517961) (not b!517851) (not d!185168) (not bs!60306) (not d!185162) (not b_lambda!20161) tp_is_empty!2659 (not bm!37926) (not d!185148) (not d!185158) (not bm!37944) (not b!517960) (not d!185124) (not d!185172) (not d!185156) (not b_lambda!20165) (not b_lambda!20157) (not b_next!13659) (not b!517867) (not b!517894) (not b!517891) (not d!185100) (not b!517962) (not b!517978) (not bs!60307) (not bs!60311) (not b!517957) (not d!185174) (not d!185108) (not b_lambda!20159) (not b!517968) (not b!517859) (not d!185176) (not d!185116) (not b!517943) (not b!517945) (not b_lambda!20139) (not d!185178) (not b!517847) (not b!517741) (not b!517967) (not b!517794) (not bm!37906) (not bs!60309) (not d!185130) (not b!517900) (not bm!37942) (not bm!37925) (not d!185090) (not b!517736) (not b!517714) (not d!185140) (not b!517959) (not d!185102) (not b_lambda!20167) (not d!185138) (not d!185132) (not d!185192) (not d!185186) (not tb!47181) (not b!517752) (not b!517698) tp_is_empty!2657 (not b!517737) (not b!517841) (not d!185200) (not b!517770))
(check-sat (not b_next!13655) b_and!51133 (not b_next!13663) (not b_next!13659) b_and!51135 b_and!51125)
