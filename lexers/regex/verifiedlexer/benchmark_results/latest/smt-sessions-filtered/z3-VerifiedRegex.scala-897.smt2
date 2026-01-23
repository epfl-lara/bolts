; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46738 () Bool)

(assert start!46738)

(declare-fun b!515552 () Bool)

(declare-fun b_free!13547 () Bool)

(declare-fun b_next!13547 () Bool)

(assert (=> b!515552 (= b_free!13547 (not b_next!13547))))

(declare-fun tp!160949 () Bool)

(declare-fun b_and!50997 () Bool)

(assert (=> b!515552 (= tp!160949 b_and!50997)))

(declare-fun b!515560 () Bool)

(declare-fun b_free!13549 () Bool)

(declare-fun b_next!13549 () Bool)

(assert (=> b!515560 (= b_free!13549 (not b_next!13549))))

(declare-fun tp!160944 () Bool)

(declare-fun b_and!50999 () Bool)

(assert (=> b!515560 (= tp!160944 b_and!50999)))

(declare-fun b_free!13551 () Bool)

(declare-fun b_next!13551 () Bool)

(assert (=> start!46738 (= b_free!13551 (not b_next!13551))))

(declare-fun tp!160947 () Bool)

(declare-fun b_and!51001 () Bool)

(assert (=> start!46738 (= tp!160947 b_and!51001)))

(declare-fun e!308458 () Bool)

(declare-fun e!308462 () Bool)

(assert (=> b!515552 (= e!308458 (and e!308462 tp!160949))))

(declare-fun b!515553 () Bool)

(declare-fun e!308454 () Bool)

(declare-fun e!308457 () Bool)

(assert (=> b!515553 (= e!308454 e!308457)))

(declare-fun b!515554 () Bool)

(declare-fun e!308461 () Bool)

(declare-fun e!308459 () Bool)

(assert (=> b!515554 (= e!308461 e!308459)))

(declare-fun res!218639 () Bool)

(assert (=> b!515554 (=> (not res!218639) (not e!308459))))

(declare-datatypes ((K!1402 0))(
  ( (K!1403 (val!1785 Int)) )
))
(declare-datatypes ((V!1500 0))(
  ( (V!1501 (val!1786 Int)) )
))
(declare-datatypes ((tuple2!5758 0))(
  ( (tuple2!5759 (_1!3095 K!1402) (_2!3095 V!1500)) )
))
(declare-datatypes ((List!4724 0))(
  ( (Nil!4714) (Cons!4714 (h!10111 tuple2!5758) (t!73270 List!4724)) )
))
(declare-datatypes ((ListMap!181 0))(
  ( (ListMap!182 (toList!411 List!4724)) )
))
(declare-fun lt!213921 () ListMap!181)

(declare-fun p!6060 () Int)

(declare-fun forall!1394 (List!4724 Int) Bool)

(assert (=> b!515554 (= res!218639 (forall!1394 (toList!411 lt!213921) p!6060))))

(declare-datatypes ((array!1985 0))(
  ( (array!1986 (arr!914 (Array (_ BitVec 32) List!4724)) (size!3848 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!487 0))(
  ( (HashableExt!486 (__x!3436 Int)) )
))
(declare-datatypes ((array!1987 0))(
  ( (array!1988 (arr!915 (Array (_ BitVec 32) (_ BitVec 64))) (size!3849 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1030 0))(
  ( (LongMapFixedSize!1031 (defaultEntry!866 Int) (mask!1937 (_ BitVec 32)) (extraKeys!761 (_ BitVec 32)) (zeroValue!771 List!4724) (minValue!771 List!4724) (_size!1139 (_ BitVec 32)) (_keys!806 array!1987) (_values!793 array!1985) (_vacant!576 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2001 0))(
  ( (Cell!2002 (v!15747 LongMapFixedSize!1030)) )
))
(declare-datatypes ((MutLongMap!515 0))(
  ( (LongMap!515 (underlying!1209 Cell!2001)) (MutLongMapExt!514 (__x!3437 Int)) )
))
(declare-datatypes ((Cell!2003 0))(
  ( (Cell!2004 (v!15748 MutLongMap!515)) )
))
(declare-datatypes ((MutableMap!487 0))(
  ( (MutableMapExt!486 (__x!3438 Int)) (HashMap!487 (underlying!1210 Cell!2003) (hashF!2363 Hashable!487) (_size!1140 (_ BitVec 32)) (defaultValue!636 Int)) )
))
(declare-fun hm!65 () MutableMap!487)

(declare-fun map!1027 (MutableMap!487) ListMap!181)

(assert (=> b!515554 (= lt!213921 (map!1027 hm!65))))

(declare-fun b!515555 () Bool)

(declare-fun e!308453 () Bool)

(declare-fun e!308455 () Bool)

(assert (=> b!515555 (= e!308453 e!308455)))

(declare-fun res!218642 () Bool)

(assert (=> b!515555 (=> (not res!218642) (not e!308455))))

(declare-fun lt!213923 () ListMap!181)

(declare-fun invariantList!68 (List!4724) Bool)

(assert (=> b!515555 (= res!218642 (invariantList!68 (toList!411 lt!213923)))))

(declare-datatypes ((tuple2!5760 0))(
  ( (tuple2!5761 (_1!3096 Bool) (_2!3096 MutableMap!487)) )
))
(declare-fun lt!213920 () tuple2!5760)

(assert (=> b!515555 (= lt!213923 (map!1027 (_2!3096 lt!213920)))))

(declare-fun b!515556 () Bool)

(declare-fun e!308460 () Bool)

(declare-fun tp!160948 () Bool)

(declare-fun mapRes!1984 () Bool)

(assert (=> b!515556 (= e!308460 (and tp!160948 mapRes!1984))))

(declare-fun condMapEmpty!1984 () Bool)

(declare-fun mapDefault!1984 () List!4724)

(assert (=> b!515556 (= condMapEmpty!1984 (= (arr!914 (_values!793 (v!15747 (underlying!1209 (v!15748 (underlying!1210 hm!65)))))) ((as const (Array (_ BitVec 32) List!4724)) mapDefault!1984)))))

(declare-fun res!218637 () Bool)

(assert (=> start!46738 (=> (not res!218637) (not e!308461))))

(get-info :version)

(assert (=> start!46738 (= res!218637 ((_ is HashMap!487) hm!65))))

(assert (=> start!46738 e!308461))

(assert (=> start!46738 e!308458))

(assert (=> start!46738 tp!160947))

(declare-fun tp_is_empty!2609 () Bool)

(assert (=> start!46738 tp_is_empty!2609))

(declare-fun b!515557 () Bool)

(declare-fun e!308456 () Bool)

(assert (=> b!515557 (= e!308457 e!308456)))

(declare-fun b!515558 () Bool)

(assert (=> b!515558 (= e!308459 e!308453)))

(declare-fun res!218641 () Bool)

(assert (=> b!515558 (=> (not res!218641) (not e!308453))))

(declare-fun valid!475 (MutableMap!487) Bool)

(assert (=> b!515558 (= res!218641 (valid!475 (_2!3096 lt!213920)))))

(declare-fun k0!1740 () K!1402)

(declare-fun remove!34 (MutableMap!487 K!1402) tuple2!5760)

(assert (=> b!515558 (= lt!213920 (remove!34 hm!65 k0!1740))))

(declare-fun lt!213922 () ListMap!181)

(declare-fun -!31 (ListMap!181 K!1402) ListMap!181)

(assert (=> b!515558 (= lt!213922 (-!31 lt!213921 k0!1740))))

(declare-fun mapIsEmpty!1984 () Bool)

(assert (=> mapIsEmpty!1984 mapRes!1984))

(declare-fun mapNonEmpty!1984 () Bool)

(declare-fun tp!160951 () Bool)

(declare-fun tp!160945 () Bool)

(assert (=> mapNonEmpty!1984 (= mapRes!1984 (and tp!160951 tp!160945))))

(declare-fun mapRest!1984 () (Array (_ BitVec 32) List!4724))

(declare-fun mapKey!1984 () (_ BitVec 32))

(declare-fun mapValue!1984 () List!4724)

(assert (=> mapNonEmpty!1984 (= (arr!914 (_values!793 (v!15747 (underlying!1209 (v!15748 (underlying!1210 hm!65)))))) (store mapRest!1984 mapKey!1984 mapValue!1984))))

(declare-fun b!515559 () Bool)

(declare-fun eq!28 (ListMap!181 ListMap!181) Bool)

(assert (=> b!515559 (= e!308455 (not (eq!28 lt!213923 lt!213921)))))

(declare-fun tp!160946 () Bool)

(declare-fun tp!160950 () Bool)

(declare-fun array_inv!667 (array!1987) Bool)

(declare-fun array_inv!668 (array!1985) Bool)

(assert (=> b!515560 (= e!308456 (and tp!160944 tp!160950 tp!160946 (array_inv!667 (_keys!806 (v!15747 (underlying!1209 (v!15748 (underlying!1210 hm!65)))))) (array_inv!668 (_values!793 (v!15747 (underlying!1209 (v!15748 (underlying!1210 hm!65)))))) e!308460))))

(declare-fun b!515561 () Bool)

(declare-fun lt!213919 () MutLongMap!515)

(assert (=> b!515561 (= e!308462 (and e!308454 ((_ is LongMap!515) lt!213919)))))

(assert (=> b!515561 (= lt!213919 (v!15748 (underlying!1210 hm!65)))))

(declare-fun b!515562 () Bool)

(declare-fun res!218638 () Bool)

(assert (=> b!515562 (=> (not res!218638) (not e!308455))))

(assert (=> b!515562 (= res!218638 (not (_1!3096 lt!213920)))))

(declare-fun b!515563 () Bool)

(declare-fun res!218640 () Bool)

(assert (=> b!515563 (=> (not res!218640) (not e!308461))))

(assert (=> b!515563 (= res!218640 (valid!475 hm!65))))

(assert (= (and start!46738 res!218637) b!515563))

(assert (= (and b!515563 res!218640) b!515554))

(assert (= (and b!515554 res!218639) b!515558))

(assert (= (and b!515558 res!218641) b!515555))

(assert (= (and b!515555 res!218642) b!515562))

(assert (= (and b!515562 res!218638) b!515559))

(assert (= (and b!515556 condMapEmpty!1984) mapIsEmpty!1984))

(assert (= (and b!515556 (not condMapEmpty!1984)) mapNonEmpty!1984))

(assert (= b!515560 b!515556))

(assert (= b!515557 b!515560))

(assert (= b!515553 b!515557))

(assert (= (and b!515561 ((_ is LongMap!515) (v!15748 (underlying!1210 hm!65)))) b!515553))

(assert (= b!515552 b!515561))

(assert (= (and start!46738 ((_ is HashMap!487) hm!65)) b!515552))

(declare-fun m!761629 () Bool)

(assert (=> b!515558 m!761629))

(declare-fun m!761631 () Bool)

(assert (=> b!515558 m!761631))

(declare-fun m!761633 () Bool)

(assert (=> b!515558 m!761633))

(declare-fun m!761635 () Bool)

(assert (=> b!515554 m!761635))

(declare-fun m!761637 () Bool)

(assert (=> b!515554 m!761637))

(declare-fun m!761639 () Bool)

(assert (=> b!515559 m!761639))

(declare-fun m!761641 () Bool)

(assert (=> b!515555 m!761641))

(declare-fun m!761643 () Bool)

(assert (=> b!515555 m!761643))

(declare-fun m!761645 () Bool)

(assert (=> b!515560 m!761645))

(declare-fun m!761647 () Bool)

(assert (=> b!515560 m!761647))

(declare-fun m!761649 () Bool)

(assert (=> mapNonEmpty!1984 m!761649))

(declare-fun m!761651 () Bool)

(assert (=> b!515563 m!761651))

(check-sat b_and!50999 (not b_next!13551) (not b!515555) (not mapNonEmpty!1984) (not b!515556) (not b!515554) (not b_next!13549) (not b!515563) (not b!515559) tp_is_empty!2609 (not b_next!13547) b_and!51001 (not b!515560) b_and!50997 (not b!515558))
(check-sat b_and!50999 (not b_next!13551) (not b_next!13549) b_and!50997 (not b_next!13547) b_and!51001)
(get-model)

(declare-fun d!184446 () Bool)

(declare-fun noDuplicatedKeys!13 (List!4724) Bool)

(assert (=> d!184446 (= (invariantList!68 (toList!411 lt!213923)) (noDuplicatedKeys!13 (toList!411 lt!213923)))))

(declare-fun bs!59484 () Bool)

(assert (= bs!59484 d!184446))

(declare-fun m!761653 () Bool)

(assert (=> bs!59484 m!761653))

(assert (=> b!515555 d!184446))

(declare-fun d!184448 () Bool)

(declare-fun lt!213926 () ListMap!181)

(assert (=> d!184448 (invariantList!68 (toList!411 lt!213926))))

(declare-datatypes ((tuple2!5762 0))(
  ( (tuple2!5763 (_1!3097 (_ BitVec 64)) (_2!3097 List!4724)) )
))
(declare-datatypes ((List!4725 0))(
  ( (Nil!4715) (Cons!4715 (h!10112 tuple2!5762) (t!73273 List!4725)) )
))
(declare-fun extractMap!18 (List!4725) ListMap!181)

(declare-datatypes ((ListLongMap!73 0))(
  ( (ListLongMap!74 (toList!412 List!4725)) )
))
(declare-fun map!1028 (MutLongMap!515) ListLongMap!73)

(assert (=> d!184448 (= lt!213926 (extractMap!18 (toList!412 (map!1028 (v!15748 (underlying!1210 (_2!3096 lt!213920)))))))))

(assert (=> d!184448 (valid!475 (_2!3096 lt!213920))))

(assert (=> d!184448 (= (map!1027 (_2!3096 lt!213920)) lt!213926)))

(declare-fun bs!59485 () Bool)

(assert (= bs!59485 d!184448))

(declare-fun m!761655 () Bool)

(assert (=> bs!59485 m!761655))

(declare-fun m!761657 () Bool)

(assert (=> bs!59485 m!761657))

(declare-fun m!761659 () Bool)

(assert (=> bs!59485 m!761659))

(assert (=> bs!59485 m!761629))

(assert (=> b!515555 d!184448))

(declare-fun d!184450 () Bool)

(declare-fun res!218647 () Bool)

(declare-fun e!308465 () Bool)

(assert (=> d!184450 (=> (not res!218647) (not e!308465))))

(declare-fun valid!476 (MutLongMap!515) Bool)

(assert (=> d!184450 (= res!218647 (valid!476 (v!15748 (underlying!1210 hm!65))))))

(assert (=> d!184450 (= (valid!475 hm!65) e!308465)))

(declare-fun b!515568 () Bool)

(declare-fun res!218648 () Bool)

(assert (=> b!515568 (=> (not res!218648) (not e!308465))))

(declare-fun lambda!14386 () Int)

(declare-fun forall!1395 (List!4725 Int) Bool)

(assert (=> b!515568 (= res!218648 (forall!1395 (toList!412 (map!1028 (v!15748 (underlying!1210 hm!65)))) lambda!14386))))

(declare-fun b!515569 () Bool)

(declare-fun allKeysSameHashInMap!25 (ListLongMap!73 Hashable!487) Bool)

(assert (=> b!515569 (= e!308465 (allKeysSameHashInMap!25 (map!1028 (v!15748 (underlying!1210 hm!65))) (hashF!2363 hm!65)))))

(assert (= (and d!184450 res!218647) b!515568))

(assert (= (and b!515568 res!218648) b!515569))

(declare-fun m!761661 () Bool)

(assert (=> d!184450 m!761661))

(declare-fun m!761663 () Bool)

(assert (=> b!515568 m!761663))

(declare-fun m!761665 () Bool)

(assert (=> b!515568 m!761665))

(assert (=> b!515569 m!761663))

(assert (=> b!515569 m!761663))

(declare-fun m!761667 () Bool)

(assert (=> b!515569 m!761667))

(assert (=> b!515563 d!184450))

(declare-fun d!184452 () Bool)

(declare-fun res!218653 () Bool)

(declare-fun e!308470 () Bool)

(assert (=> d!184452 (=> res!218653 e!308470)))

(assert (=> d!184452 (= res!218653 ((_ is Nil!4714) (toList!411 lt!213921)))))

(assert (=> d!184452 (= (forall!1394 (toList!411 lt!213921) p!6060) e!308470)))

(declare-fun b!515574 () Bool)

(declare-fun e!308471 () Bool)

(assert (=> b!515574 (= e!308470 e!308471)))

(declare-fun res!218654 () Bool)

(assert (=> b!515574 (=> (not res!218654) (not e!308471))))

(declare-fun dynLambda!2973 (Int tuple2!5758) Bool)

(assert (=> b!515574 (= res!218654 (dynLambda!2973 p!6060 (h!10111 (toList!411 lt!213921))))))

(declare-fun b!515575 () Bool)

(assert (=> b!515575 (= e!308471 (forall!1394 (t!73270 (toList!411 lt!213921)) p!6060))))

(assert (= (and d!184452 (not res!218653)) b!515574))

(assert (= (and b!515574 res!218654) b!515575))

(declare-fun b_lambda!20013 () Bool)

(assert (=> (not b_lambda!20013) (not b!515574)))

(declare-fun t!73272 () Bool)

(declare-fun tb!47145 () Bool)

(assert (=> (and start!46738 (= p!6060 p!6060) t!73272) tb!47145))

(declare-fun result!52188 () Bool)

(assert (=> tb!47145 (= result!52188 true)))

(assert (=> b!515574 t!73272))

(declare-fun b_and!51003 () Bool)

(assert (= b_and!51001 (and (=> t!73272 result!52188) b_and!51003)))

(declare-fun m!761669 () Bool)

(assert (=> b!515574 m!761669))

(declare-fun m!761671 () Bool)

(assert (=> b!515575 m!761671))

(assert (=> b!515554 d!184452))

(declare-fun d!184454 () Bool)

(declare-fun lt!213927 () ListMap!181)

(assert (=> d!184454 (invariantList!68 (toList!411 lt!213927))))

(assert (=> d!184454 (= lt!213927 (extractMap!18 (toList!412 (map!1028 (v!15748 (underlying!1210 hm!65))))))))

(assert (=> d!184454 (valid!475 hm!65)))

(assert (=> d!184454 (= (map!1027 hm!65) lt!213927)))

(declare-fun bs!59486 () Bool)

(assert (= bs!59486 d!184454))

(declare-fun m!761673 () Bool)

(assert (=> bs!59486 m!761673))

(assert (=> bs!59486 m!761663))

(declare-fun m!761675 () Bool)

(assert (=> bs!59486 m!761675))

(assert (=> bs!59486 m!761651))

(assert (=> b!515554 d!184454))

(declare-fun bs!59487 () Bool)

(declare-fun b!515576 () Bool)

(assert (= bs!59487 (and b!515576 b!515568)))

(declare-fun lambda!14387 () Int)

(assert (=> bs!59487 (= lambda!14387 lambda!14386)))

(declare-fun d!184456 () Bool)

(declare-fun res!218655 () Bool)

(declare-fun e!308472 () Bool)

(assert (=> d!184456 (=> (not res!218655) (not e!308472))))

(assert (=> d!184456 (= res!218655 (valid!476 (v!15748 (underlying!1210 (_2!3096 lt!213920)))))))

(assert (=> d!184456 (= (valid!475 (_2!3096 lt!213920)) e!308472)))

(declare-fun res!218656 () Bool)

(assert (=> b!515576 (=> (not res!218656) (not e!308472))))

(assert (=> b!515576 (= res!218656 (forall!1395 (toList!412 (map!1028 (v!15748 (underlying!1210 (_2!3096 lt!213920))))) lambda!14387))))

(declare-fun b!515577 () Bool)

(assert (=> b!515577 (= e!308472 (allKeysSameHashInMap!25 (map!1028 (v!15748 (underlying!1210 (_2!3096 lt!213920)))) (hashF!2363 (_2!3096 lt!213920))))))

(assert (= (and d!184456 res!218655) b!515576))

(assert (= (and b!515576 res!218656) b!515577))

(declare-fun m!761677 () Bool)

(assert (=> d!184456 m!761677))

(assert (=> b!515576 m!761657))

(declare-fun m!761679 () Bool)

(assert (=> b!515576 m!761679))

(assert (=> b!515577 m!761657))

(assert (=> b!515577 m!761657))

(declare-fun m!761681 () Bool)

(assert (=> b!515577 m!761681))

(assert (=> b!515558 d!184456))

(declare-fun bs!59488 () Bool)

(declare-fun b!515605 () Bool)

(assert (= bs!59488 (and b!515605 b!515568)))

(declare-fun lambda!14394 () Int)

(assert (=> bs!59488 (= lambda!14394 lambda!14386)))

(declare-fun bs!59489 () Bool)

(assert (= bs!59489 (and b!515605 b!515576)))

(assert (=> bs!59489 (= lambda!14394 lambda!14387)))

(declare-fun b!515600 () Bool)

(declare-fun e!308486 () ListMap!181)

(declare-fun call!37576 () ListMap!181)

(assert (=> b!515600 (= e!308486 call!37576)))

(declare-fun b!515601 () Bool)

(declare-fun e!308485 () Bool)

(declare-fun call!37575 () Bool)

(assert (=> b!515601 (= e!308485 call!37575)))

(declare-fun bm!37564 () Bool)

(declare-fun call!37574 () ListLongMap!73)

(assert (=> bm!37564 (= call!37574 (map!1028 (v!15748 (underlying!1210 hm!65))))))

(declare-fun bm!37565 () Bool)

(declare-fun call!37572 () ListMap!181)

(declare-fun lt!214012 () ListMap!181)

(declare-fun c!99884 () Bool)

(declare-fun call!37569 () ListMap!181)

(assert (=> bm!37565 (= call!37569 (-!31 (ite c!99884 call!37572 lt!214012) k0!1740))))

(declare-fun b!515602 () Bool)

(declare-fun e!308490 () tuple2!5760)

(assert (=> b!515602 (= e!308490 (tuple2!5761 true hm!65))))

(declare-fun lt!213990 () ListLongMap!73)

(assert (=> b!515602 (= lt!213990 call!37574)))

(declare-datatypes ((Unit!8530 0))(
  ( (Unit!8531) )
))
(declare-fun lt!214010 () Unit!8530)

(declare-fun lemmaRemoveNotContainedDoesNotChange!10 (ListLongMap!73 K!1402 Hashable!487) Unit!8530)

(assert (=> b!515602 (= lt!214010 (lemmaRemoveNotContainedDoesNotChange!10 lt!213990 k0!1740 (hashF!2363 hm!65)))))

(assert (=> b!515602 (= call!37572 call!37569)))

(declare-fun lt!213996 () Unit!8530)

(assert (=> b!515602 (= lt!213996 lt!214010)))

(declare-fun b!515603 () Bool)

(assert (=> b!515603 (= e!308485 call!37575)))

(declare-fun bm!37566 () Bool)

(declare-fun call!37573 () ListMap!181)

(assert (=> bm!37566 (= call!37575 (eq!28 call!37573 e!308486))))

(declare-fun c!99882 () Bool)

(declare-fun c!99883 () Bool)

(assert (=> bm!37566 (= c!99882 c!99883)))

(declare-fun b!515604 () Bool)

(declare-fun res!218665 () Bool)

(declare-fun e!308489 () Bool)

(assert (=> b!515604 (=> (not res!218665) (not e!308489))))

(declare-fun lt!214006 () tuple2!5760)

(assert (=> b!515604 (= res!218665 (valid!475 (_2!3096 lt!214006)))))

(declare-fun d!184458 () Bool)

(assert (=> d!184458 e!308489))

(declare-fun res!218664 () Bool)

(assert (=> d!184458 (=> (not res!218664) (not e!308489))))

(assert (=> d!184458 (= res!218664 ((_ is HashMap!487) (_2!3096 lt!214006)))))

(assert (=> d!184458 (= lt!214006 e!308490)))

(declare-fun lt!213992 () Bool)

(assert (=> d!184458 (= c!99884 (not lt!213992))))

(declare-fun contains!1075 (MutableMap!487 K!1402) Bool)

(assert (=> d!184458 (= lt!213992 (contains!1075 hm!65 k0!1740))))

(assert (=> d!184458 (valid!475 hm!65)))

(assert (=> d!184458 (= (remove!34 hm!65 k0!1740) lt!214006)))

(declare-datatypes ((tuple2!5764 0))(
  ( (tuple2!5765 (_1!3098 Bool) (_2!3098 MutLongMap!515)) )
))
(declare-fun lt!214009 () tuple2!5764)

(declare-datatypes ((tuple2!5766 0))(
  ( (tuple2!5767 (_1!3099 Unit!8530) (_2!3099 MutableMap!487)) )
))
(declare-fun lt!213998 () tuple2!5766)

(assert (=> b!515605 (= e!308490 (tuple2!5761 (_1!3098 lt!214009) (_2!3099 lt!213998)))))

(declare-fun lt!213994 () (_ BitVec 64))

(declare-fun hash!511 (Hashable!487 K!1402) (_ BitVec 64))

(assert (=> b!515605 (= lt!213994 (hash!511 (hashF!2363 hm!65) k0!1740))))

(declare-fun lt!214016 () List!4724)

(declare-fun apply!1180 (MutLongMap!515 (_ BitVec 64)) List!4724)

(assert (=> b!515605 (= lt!214016 (apply!1180 (v!15748 (underlying!1210 hm!65)) lt!213994))))

(declare-fun lt!214011 () Unit!8530)

(declare-fun forallContained!443 (List!4725 Int tuple2!5762) Unit!8530)

(assert (=> b!515605 (= lt!214011 (forallContained!443 (toList!412 call!37574) lambda!14394 (tuple2!5763 lt!213994 (apply!1180 (v!15748 (underlying!1210 hm!65)) lt!213994))))))

(assert (=> b!515605 (= lt!214012 (map!1027 hm!65))))

(declare-fun lt!214002 () ListLongMap!73)

(assert (=> b!515605 (= lt!214002 call!37574)))

(declare-fun lt!213995 () List!4724)

(declare-fun removePairForKey!12 (List!4724 K!1402) List!4724)

(assert (=> b!515605 (= lt!213995 (removePairForKey!12 lt!214016 k0!1740))))

(declare-fun update!51 (MutLongMap!515 (_ BitVec 64) List!4724) tuple2!5764)

(assert (=> b!515605 (= lt!214009 (update!51 (v!15748 (underlying!1210 hm!65)) lt!213994 lt!213995))))

(declare-fun Unit!8532 () Unit!8530)

(declare-fun Unit!8533 () Unit!8530)

(assert (=> b!515605 (= lt!213998 (ite (and (_1!3098 lt!214009) lt!213992) (tuple2!5767 Unit!8532 (HashMap!487 (Cell!2004 (_2!3098 lt!214009)) (hashF!2363 hm!65) (bvsub (_size!1140 hm!65) #b00000000000000000000000000000001) (defaultValue!636 hm!65))) (tuple2!5767 Unit!8533 (HashMap!487 (Cell!2004 (_2!3098 lt!214009)) (hashF!2363 hm!65) (_size!1140 hm!65) (defaultValue!636 hm!65)))))))

(declare-fun lt!214003 () Unit!8530)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!12 (List!4724 K!1402) Unit!8530)

(assert (=> b!515605 (= lt!214003 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!12 lt!214016 k0!1740))))

(declare-fun noDuplicateKeys!14 (List!4724) Bool)

(assert (=> b!515605 (noDuplicateKeys!14 (removePairForKey!12 lt!214016 k0!1740))))

(declare-fun lt!214001 () Unit!8530)

(assert (=> b!515605 (= lt!214001 lt!214003)))

(declare-fun c!99885 () Bool)

(assert (=> b!515605 (= c!99885 (_1!3098 lt!214009))))

(declare-fun lt!214013 () Unit!8530)

(declare-fun e!308487 () Unit!8530)

(assert (=> b!515605 (= lt!214013 e!308487)))

(declare-fun b!515606 () Bool)

(assert (=> b!515606 (= e!308489 e!308485)))

(assert (=> b!515606 (= c!99883 (_1!3096 lt!214006))))

(declare-fun b!515607 () Bool)

(assert (=> b!515607 (= e!308486 (-!31 call!37576 k0!1740))))

(declare-fun b!515608 () Bool)

(declare-fun e!308488 () Bool)

(declare-fun lt!214007 () ListLongMap!73)

(assert (=> b!515608 (= e!308488 (allKeysSameHashInMap!25 lt!214007 (hashF!2363 (_2!3099 lt!213998))))))

(declare-fun bm!37567 () Bool)

(declare-fun call!37570 () Bool)

(assert (=> bm!37567 (= call!37570 (valid!475 (_2!3099 lt!213998)))))

(declare-fun b!515609 () Bool)

(declare-fun call!37571 () ListMap!181)

(assert (=> b!515609 (= call!37571 lt!214012)))

(declare-fun lt!213988 () Unit!8530)

(declare-fun Unit!8534 () Unit!8530)

(assert (=> b!515609 (= lt!213988 Unit!8534)))

(assert (=> b!515609 call!37570))

(declare-fun Unit!8535 () Unit!8530)

(assert (=> b!515609 (= e!308487 Unit!8535)))

(declare-fun bm!37568 () Bool)

(assert (=> bm!37568 (= call!37572 (extractMap!18 (ite c!99884 (toList!412 lt!213990) (toList!412 lt!214002))))))

(declare-fun bm!37569 () Bool)

(assert (=> bm!37569 (= call!37576 (map!1027 hm!65))))

(declare-fun bm!37570 () Bool)

(assert (=> bm!37570 (= call!37573 (map!1027 (_2!3096 lt!214006)))))

(declare-fun bm!37571 () Bool)

(assert (=> bm!37571 (= call!37571 (map!1027 (_2!3099 lt!213998)))))

(declare-fun b!515610 () Bool)

(assert (=> b!515610 (eq!28 call!37571 call!37569)))

(declare-fun lt!213997 () Unit!8530)

(declare-fun lt!214015 () Unit!8530)

(assert (=> b!515610 (= lt!213997 lt!214015)))

(declare-fun +!21 (ListLongMap!73 tuple2!5762) ListLongMap!73)

(assert (=> b!515610 (eq!28 (extractMap!18 (toList!412 (+!21 lt!214002 (tuple2!5763 lt!213994 lt!213995)))) (-!31 call!37572 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!10 (ListLongMap!73 (_ BitVec 64) List!4724 K!1402 Hashable!487) Unit!8530)

(assert (=> b!515610 (= lt!214015 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!10 lt!214002 lt!213994 lt!213995 k0!1740 (hashF!2363 (_2!3099 lt!213998))))))

(declare-fun lt!214000 () Unit!8530)

(declare-fun Unit!8536 () Unit!8530)

(assert (=> b!515610 (= lt!214000 Unit!8536)))

(declare-fun contains!1076 (ListMap!181 K!1402) Bool)

(assert (=> b!515610 (contains!1076 lt!214012 k0!1740)))

(declare-fun lt!213993 () Unit!8530)

(declare-fun Unit!8537 () Unit!8530)

(assert (=> b!515610 (= lt!213993 Unit!8537)))

(assert (=> b!515610 call!37570))

(declare-fun lt!214005 () Unit!8530)

(declare-fun Unit!8538 () Unit!8530)

(assert (=> b!515610 (= lt!214005 Unit!8538)))

(assert (=> b!515610 (allKeysSameHashInMap!25 (map!1028 (v!15748 (underlying!1210 (_2!3099 lt!213998)))) (hashF!2363 (_2!3099 lt!213998)))))

(declare-fun lt!213989 () Unit!8530)

(declare-fun Unit!8539 () Unit!8530)

(assert (=> b!515610 (= lt!213989 Unit!8539)))

(assert (=> b!515610 (forall!1395 (toList!412 (map!1028 (v!15748 (underlying!1210 (_2!3099 lt!213998))))) lambda!14394)))

(declare-fun lt!213999 () Unit!8530)

(declare-fun lt!214008 () Unit!8530)

(assert (=> b!515610 (= lt!213999 lt!214008)))

(assert (=> b!515610 e!308488))

(declare-fun res!218663 () Bool)

(assert (=> b!515610 (=> (not res!218663) (not e!308488))))

(assert (=> b!515610 (= res!218663 (forall!1395 (toList!412 lt!214007) lambda!14394))))

(assert (=> b!515610 (= lt!214007 (+!21 lt!214002 (tuple2!5763 lt!213994 lt!213995)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!12 (ListLongMap!73 (_ BitVec 64) List!4724 Hashable!487) Unit!8530)

(assert (=> b!515610 (= lt!214008 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!12 lt!214002 lt!213994 lt!213995 (hashF!2363 (_2!3099 lt!213998))))))

(declare-fun lt!213991 () Unit!8530)

(declare-fun lt!214017 () Unit!8530)

(assert (=> b!515610 (= lt!213991 lt!214017)))

(declare-fun allKeysSameHash!13 (List!4724 (_ BitVec 64) Hashable!487) Bool)

(assert (=> b!515610 (allKeysSameHash!13 (removePairForKey!12 lt!214016 k0!1740) lt!213994 (hashF!2363 (_2!3099 lt!213998)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!12 (List!4724 K!1402 (_ BitVec 64) Hashable!487) Unit!8530)

(assert (=> b!515610 (= lt!214017 (lemmaRemovePairForKeyPreservesHash!12 lt!214016 k0!1740 lt!213994 (hashF!2363 (_2!3099 lt!213998))))))

(declare-fun lt!214014 () Unit!8530)

(declare-fun lt!214004 () Unit!8530)

(assert (=> b!515610 (= lt!214014 lt!214004)))

(assert (=> b!515610 (allKeysSameHash!13 lt!214016 lt!213994 (hashF!2363 (_2!3099 lt!213998)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!12 (List!4725 (_ BitVec 64) List!4724 Hashable!487) Unit!8530)

(assert (=> b!515610 (= lt!214004 (lemmaInLongMapAllKeySameHashThenForTuple!12 (toList!412 lt!214002) lt!213994 lt!214016 (hashF!2363 (_2!3099 lt!213998))))))

(declare-fun Unit!8540 () Unit!8530)

(assert (=> b!515610 (= e!308487 Unit!8540)))

(assert (= (and d!184458 c!99884) b!515602))

(assert (= (and d!184458 (not c!99884)) b!515605))

(assert (= (and b!515605 c!99885) b!515610))

(assert (= (and b!515605 (not c!99885)) b!515609))

(assert (= (and b!515610 res!218663) b!515608))

(assert (= (or b!515610 b!515609) bm!37567))

(assert (= (or b!515610 b!515609) bm!37571))

(assert (= (or b!515602 b!515605) bm!37564))

(assert (= (or b!515602 b!515610) bm!37568))

(assert (= (or b!515602 b!515610) bm!37565))

(assert (= (and d!184458 res!218664) b!515604))

(assert (= (and b!515604 res!218665) b!515606))

(assert (= (and b!515606 c!99883) b!515603))

(assert (= (and b!515606 (not c!99883)) b!515601))

(assert (= (or b!515603 b!515601) bm!37569))

(assert (= (or b!515603 b!515601) bm!37570))

(assert (= (or b!515603 b!515601) bm!37566))

(assert (= (and bm!37566 c!99882) b!515607))

(assert (= (and bm!37566 (not c!99882)) b!515600))

(declare-fun m!761683 () Bool)

(assert (=> bm!37566 m!761683))

(assert (=> bm!37564 m!761663))

(declare-fun m!761685 () Bool)

(assert (=> bm!37571 m!761685))

(declare-fun m!761687 () Bool)

(assert (=> bm!37570 m!761687))

(declare-fun m!761689 () Bool)

(assert (=> b!515605 m!761689))

(declare-fun m!761691 () Bool)

(assert (=> b!515605 m!761691))

(assert (=> b!515605 m!761689))

(declare-fun m!761693 () Bool)

(assert (=> b!515605 m!761693))

(declare-fun m!761695 () Bool)

(assert (=> b!515605 m!761695))

(declare-fun m!761697 () Bool)

(assert (=> b!515605 m!761697))

(declare-fun m!761699 () Bool)

(assert (=> b!515605 m!761699))

(declare-fun m!761701 () Bool)

(assert (=> b!515605 m!761701))

(assert (=> b!515605 m!761637))

(declare-fun m!761703 () Bool)

(assert (=> bm!37567 m!761703))

(declare-fun m!761705 () Bool)

(assert (=> bm!37568 m!761705))

(declare-fun m!761707 () Bool)

(assert (=> d!184458 m!761707))

(assert (=> d!184458 m!761651))

(declare-fun m!761709 () Bool)

(assert (=> b!515608 m!761709))

(assert (=> bm!37569 m!761637))

(declare-fun m!761711 () Bool)

(assert (=> b!515604 m!761711))

(declare-fun m!761713 () Bool)

(assert (=> bm!37565 m!761713))

(declare-fun m!761715 () Bool)

(assert (=> b!515602 m!761715))

(declare-fun m!761717 () Bool)

(assert (=> b!515607 m!761717))

(declare-fun m!761719 () Bool)

(assert (=> b!515610 m!761719))

(declare-fun m!761721 () Bool)

(assert (=> b!515610 m!761721))

(declare-fun m!761723 () Bool)

(assert (=> b!515610 m!761723))

(declare-fun m!761725 () Bool)

(assert (=> b!515610 m!761725))

(declare-fun m!761727 () Bool)

(assert (=> b!515610 m!761727))

(declare-fun m!761729 () Bool)

(assert (=> b!515610 m!761729))

(assert (=> b!515610 m!761689))

(declare-fun m!761731 () Bool)

(assert (=> b!515610 m!761731))

(declare-fun m!761733 () Bool)

(assert (=> b!515610 m!761733))

(declare-fun m!761735 () Bool)

(assert (=> b!515610 m!761735))

(declare-fun m!761737 () Bool)

(assert (=> b!515610 m!761737))

(declare-fun m!761739 () Bool)

(assert (=> b!515610 m!761739))

(assert (=> b!515610 m!761735))

(declare-fun m!761741 () Bool)

(assert (=> b!515610 m!761741))

(assert (=> b!515610 m!761731))

(assert (=> b!515610 m!761737))

(declare-fun m!761743 () Bool)

(assert (=> b!515610 m!761743))

(assert (=> b!515610 m!761689))

(declare-fun m!761745 () Bool)

(assert (=> b!515610 m!761745))

(declare-fun m!761747 () Bool)

(assert (=> b!515610 m!761747))

(declare-fun m!761749 () Bool)

(assert (=> b!515610 m!761749))

(assert (=> b!515558 d!184458))

(declare-fun d!184460 () Bool)

(declare-fun e!308493 () Bool)

(assert (=> d!184460 e!308493))

(declare-fun res!218668 () Bool)

(assert (=> d!184460 (=> (not res!218668) (not e!308493))))

(declare-fun lt!214020 () ListMap!181)

(assert (=> d!184460 (= res!218668 (not (contains!1076 lt!214020 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!10 (List!4724 K!1402) List!4724)

(assert (=> d!184460 (= lt!214020 (ListMap!182 (removePresrvNoDuplicatedKeys!10 (toList!411 lt!213921) k0!1740)))))

(assert (=> d!184460 (= (-!31 lt!213921 k0!1740) lt!214020)))

(declare-fun b!515613 () Bool)

(declare-datatypes ((List!4726 0))(
  ( (Nil!4716) (Cons!4716 (h!10113 K!1402) (t!73274 List!4726)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!819 (List!4726) (InoxSet K!1402))

(declare-fun keys!1845 (ListMap!181) List!4726)

(assert (=> b!515613 (= e!308493 (= ((_ map and) (content!819 (keys!1845 lt!213921)) ((_ map not) (store ((as const (Array K!1402 Bool)) false) k0!1740 true))) (content!819 (keys!1845 lt!214020))))))

(assert (= (and d!184460 res!218668) b!515613))

(declare-fun m!761751 () Bool)

(assert (=> d!184460 m!761751))

(declare-fun m!761753 () Bool)

(assert (=> d!184460 m!761753))

(declare-fun m!761755 () Bool)

(assert (=> b!515613 m!761755))

(declare-fun m!761757 () Bool)

(assert (=> b!515613 m!761757))

(assert (=> b!515613 m!761755))

(declare-fun m!761759 () Bool)

(assert (=> b!515613 m!761759))

(declare-fun m!761761 () Bool)

(assert (=> b!515613 m!761761))

(assert (=> b!515613 m!761757))

(declare-fun m!761763 () Bool)

(assert (=> b!515613 m!761763))

(assert (=> b!515558 d!184460))

(declare-fun d!184462 () Bool)

(assert (=> d!184462 (= (array_inv!667 (_keys!806 (v!15747 (underlying!1209 (v!15748 (underlying!1210 hm!65)))))) (bvsge (size!3849 (_keys!806 (v!15747 (underlying!1209 (v!15748 (underlying!1210 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!515560 d!184462))

(declare-fun d!184464 () Bool)

(assert (=> d!184464 (= (array_inv!668 (_values!793 (v!15747 (underlying!1209 (v!15748 (underlying!1210 hm!65)))))) (bvsge (size!3848 (_values!793 (v!15747 (underlying!1209 (v!15748 (underlying!1210 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!515560 d!184464))

(declare-fun d!184466 () Bool)

(declare-fun content!820 (List!4724) (InoxSet tuple2!5758))

(assert (=> d!184466 (= (eq!28 lt!213923 lt!213921) (= (content!820 (toList!411 lt!213923)) (content!820 (toList!411 lt!213921))))))

(declare-fun bs!59490 () Bool)

(assert (= bs!59490 d!184466))

(declare-fun m!761765 () Bool)

(assert (=> bs!59490 m!761765))

(declare-fun m!761767 () Bool)

(assert (=> bs!59490 m!761767))

(assert (=> b!515559 d!184466))

(declare-fun mapNonEmpty!1987 () Bool)

(declare-fun mapRes!1987 () Bool)

(declare-fun tp!160960 () Bool)

(declare-fun e!308498 () Bool)

(assert (=> mapNonEmpty!1987 (= mapRes!1987 (and tp!160960 e!308498))))

(declare-fun mapKey!1987 () (_ BitVec 32))

(declare-fun mapRest!1987 () (Array (_ BitVec 32) List!4724))

(declare-fun mapValue!1987 () List!4724)

(assert (=> mapNonEmpty!1987 (= mapRest!1984 (store mapRest!1987 mapKey!1987 mapValue!1987))))

(declare-fun tp!160959 () Bool)

(declare-fun e!308499 () Bool)

(declare-fun tp_is_empty!2611 () Bool)

(declare-fun b!515621 () Bool)

(assert (=> b!515621 (= e!308499 (and tp_is_empty!2609 tp_is_empty!2611 tp!160959))))

(declare-fun b!515620 () Bool)

(declare-fun tp!160958 () Bool)

(assert (=> b!515620 (= e!308498 (and tp_is_empty!2609 tp_is_empty!2611 tp!160958))))

(declare-fun condMapEmpty!1987 () Bool)

(declare-fun mapDefault!1987 () List!4724)

(assert (=> mapNonEmpty!1984 (= condMapEmpty!1987 (= mapRest!1984 ((as const (Array (_ BitVec 32) List!4724)) mapDefault!1987)))))

(assert (=> mapNonEmpty!1984 (= tp!160951 (and e!308499 mapRes!1987))))

(declare-fun mapIsEmpty!1987 () Bool)

(assert (=> mapIsEmpty!1987 mapRes!1987))

(assert (= (and mapNonEmpty!1984 condMapEmpty!1987) mapIsEmpty!1987))

(assert (= (and mapNonEmpty!1984 (not condMapEmpty!1987)) mapNonEmpty!1987))

(assert (= (and mapNonEmpty!1987 ((_ is Cons!4714) mapValue!1987)) b!515620))

(assert (= (and mapNonEmpty!1984 ((_ is Cons!4714) mapDefault!1987)) b!515621))

(declare-fun m!761769 () Bool)

(assert (=> mapNonEmpty!1987 m!761769))

(declare-fun b!515626 () Bool)

(declare-fun e!308502 () Bool)

(declare-fun tp!160963 () Bool)

(assert (=> b!515626 (= e!308502 (and tp_is_empty!2609 tp_is_empty!2611 tp!160963))))

(assert (=> mapNonEmpty!1984 (= tp!160945 e!308502)))

(assert (= (and mapNonEmpty!1984 ((_ is Cons!4714) mapValue!1984)) b!515626))

(declare-fun tp!160964 () Bool)

(declare-fun b!515627 () Bool)

(declare-fun e!308503 () Bool)

(assert (=> b!515627 (= e!308503 (and tp_is_empty!2609 tp_is_empty!2611 tp!160964))))

(assert (=> b!515560 (= tp!160950 e!308503)))

(assert (= (and b!515560 ((_ is Cons!4714) (zeroValue!771 (v!15747 (underlying!1209 (v!15748 (underlying!1210 hm!65))))))) b!515627))

(declare-fun b!515628 () Bool)

(declare-fun tp!160965 () Bool)

(declare-fun e!308504 () Bool)

(assert (=> b!515628 (= e!308504 (and tp_is_empty!2609 tp_is_empty!2611 tp!160965))))

(assert (=> b!515560 (= tp!160946 e!308504)))

(assert (= (and b!515560 ((_ is Cons!4714) (minValue!771 (v!15747 (underlying!1209 (v!15748 (underlying!1210 hm!65))))))) b!515628))

(declare-fun tp!160966 () Bool)

(declare-fun e!308505 () Bool)

(declare-fun b!515629 () Bool)

(assert (=> b!515629 (= e!308505 (and tp_is_empty!2609 tp_is_empty!2611 tp!160966))))

(assert (=> b!515556 (= tp!160948 e!308505)))

(assert (= (and b!515556 ((_ is Cons!4714) mapDefault!1984)) b!515629))

(declare-fun b_lambda!20015 () Bool)

(assert (= b_lambda!20013 (or (and start!46738 b_free!13551) b_lambda!20015)))

(check-sat (not b_next!13551) (not b!515626) (not b!515604) (not d!184446) (not b!515620) (not bm!37571) (not b!515568) (not b!515575) (not bm!37565) tp_is_empty!2609 b_and!51003 (not bm!37567) (not d!184460) (not b!515621) (not bm!37570) b_and!50999 (not bm!37568) (not b!515613) (not d!184456) (not b!515577) (not bm!37569) (not bm!37564) (not b!515629) (not b_next!13549) (not d!184448) b_and!50997 (not mapNonEmpty!1987) (not d!184458) (not b_next!13547) (not b!515569) (not b!515607) (not d!184466) (not b!515576) tp_is_empty!2611 (not b!515610) (not b!515627) (not b!515602) (not d!184454) (not b!515608) (not bm!37566) (not b_lambda!20015) (not b!515605) (not d!184450) (not b!515628))
(check-sat b_and!50999 (not b_next!13551) (not b_next!13549) b_and!50997 (not b_next!13547) b_and!51003)
