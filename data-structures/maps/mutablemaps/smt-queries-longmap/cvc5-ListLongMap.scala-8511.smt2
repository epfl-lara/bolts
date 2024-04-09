; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103830 () Bool)

(assert start!103830)

(declare-datatypes ((B!1892 0))(
  ( (B!1893 (val!15708 Int)) )
))
(declare-fun v1!20 () B!1892)

(declare-fun b!1242602 () Bool)

(declare-fun e!704455 () Bool)

(declare-fun key1!25 () (_ BitVec 64))

(declare-datatypes ((tuple2!20444 0))(
  ( (tuple2!20445 (_1!10232 (_ BitVec 64)) (_2!10232 B!1892)) )
))
(declare-datatypes ((List!27537 0))(
  ( (Nil!27534) (Cons!27533 (h!28742 tuple2!20444) (t!41010 List!27537)) )
))
(declare-fun l!644 () List!27537)

(declare-fun key2!15 () (_ BitVec 64))

(declare-fun insertStrictlySorted!440 (List!27537 (_ BitVec 64) B!1892) List!27537)

(declare-fun removeStrictlySorted!134 (List!27537 (_ BitVec 64)) List!27537)

(assert (=> b!1242602 (= e!704455 (not (= (insertStrictlySorted!440 (removeStrictlySorted!134 l!644 key2!15) key1!25 v1!20) (removeStrictlySorted!134 (insertStrictlySorted!440 l!644 key1!25 v1!20) key2!15))))))

(declare-fun b!1242600 () Bool)

(declare-fun res!828743 () Bool)

(assert (=> b!1242600 (=> (not res!828743) (not e!704455))))

(declare-fun isStrictlySorted!762 (List!27537) Bool)

(assert (=> b!1242600 (= res!828743 (isStrictlySorted!762 l!644))))

(declare-fun b!1242603 () Bool)

(declare-fun e!704456 () Bool)

(declare-fun tp_is_empty!31291 () Bool)

(declare-fun tp!92766 () Bool)

(assert (=> b!1242603 (= e!704456 (and tp_is_empty!31291 tp!92766))))

(declare-fun res!828744 () Bool)

(assert (=> start!103830 (=> (not res!828744) (not e!704455))))

(assert (=> start!103830 (= res!828744 (not (= key1!25 key2!15)))))

(assert (=> start!103830 e!704455))

(assert (=> start!103830 true))

(assert (=> start!103830 e!704456))

(assert (=> start!103830 tp_is_empty!31291))

(declare-fun b!1242601 () Bool)

(declare-fun res!828745 () Bool)

(assert (=> b!1242601 (=> (not res!828745) (not e!704455))))

(assert (=> b!1242601 (= res!828745 (not (is-Cons!27533 l!644)))))

(assert (= (and start!103830 res!828744) b!1242600))

(assert (= (and b!1242600 res!828743) b!1242601))

(assert (= (and b!1242601 res!828745) b!1242602))

(assert (= (and start!103830 (is-Cons!27533 l!644)) b!1242603))

(declare-fun m!1145345 () Bool)

(assert (=> b!1242602 m!1145345))

(assert (=> b!1242602 m!1145345))

(declare-fun m!1145347 () Bool)

(assert (=> b!1242602 m!1145347))

(declare-fun m!1145349 () Bool)

(assert (=> b!1242602 m!1145349))

(assert (=> b!1242602 m!1145349))

(declare-fun m!1145351 () Bool)

(assert (=> b!1242602 m!1145351))

(declare-fun m!1145353 () Bool)

(assert (=> b!1242600 m!1145353))

(push 1)

(assert (not b!1242602))

(assert (not b!1242600))

(assert (not b!1242603))

(assert tp_is_empty!31291)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!704512 () List!27537)

(declare-fun b!1242708 () Bool)

(assert (=> b!1242708 (= e!704512 (insertStrictlySorted!440 (t!41010 (removeStrictlySorted!134 l!644 key2!15)) key1!25 v1!20))))

(declare-fun d!136807 () Bool)

(declare-fun e!704511 () Bool)

(assert (=> d!136807 e!704511))

(declare-fun res!828781 () Bool)

(assert (=> d!136807 (=> (not res!828781) (not e!704511))))

(declare-fun lt!562216 () List!27537)

(assert (=> d!136807 (= res!828781 (isStrictlySorted!762 lt!562216))))

(declare-fun e!704509 () List!27537)

(assert (=> d!136807 (= lt!562216 e!704509)))

(declare-fun c!121660 () Bool)

(assert (=> d!136807 (= c!121660 (and (is-Cons!27533 (removeStrictlySorted!134 l!644 key2!15)) (bvslt (_1!10232 (h!28742 (removeStrictlySorted!134 l!644 key2!15))) key1!25)))))

(assert (=> d!136807 (isStrictlySorted!762 (removeStrictlySorted!134 l!644 key2!15))))

(assert (=> d!136807 (= (insertStrictlySorted!440 (removeStrictlySorted!134 l!644 key2!15) key1!25 v1!20) lt!562216)))

(declare-fun b!1242709 () Bool)

(declare-fun e!704510 () List!27537)

(assert (=> b!1242709 (= e!704509 e!704510)))

(declare-fun c!121662 () Bool)

(assert (=> b!1242709 (= c!121662 (and (is-Cons!27533 (removeStrictlySorted!134 l!644 key2!15)) (= (_1!10232 (h!28742 (removeStrictlySorted!134 l!644 key2!15))) key1!25)))))

(declare-fun b!1242710 () Bool)

(declare-fun call!61375 () List!27537)

(assert (=> b!1242710 (= e!704510 call!61375)))

(declare-fun call!61376 () List!27537)

(declare-fun bm!61372 () Bool)

(declare-fun $colon$colon!632 (List!27537 tuple2!20444) List!27537)

(assert (=> bm!61372 (= call!61376 ($colon$colon!632 e!704512 (ite c!121660 (h!28742 (removeStrictlySorted!134 l!644 key2!15)) (tuple2!20445 key1!25 v1!20))))))

(declare-fun c!121663 () Bool)

(assert (=> bm!61372 (= c!121663 c!121660)))

(declare-fun b!1242711 () Bool)

(declare-fun res!828780 () Bool)

(assert (=> b!1242711 (=> (not res!828780) (not e!704511))))

(declare-fun containsKey!615 (List!27537 (_ BitVec 64)) Bool)

(assert (=> b!1242711 (= res!828780 (containsKey!615 lt!562216 key1!25))))

(declare-fun bm!61373 () Bool)

(declare-fun call!61377 () List!27537)

(assert (=> bm!61373 (= call!61377 call!61375)))

(declare-fun b!1242712 () Bool)

(declare-fun contains!7412 (List!27537 tuple2!20444) Bool)

(assert (=> b!1242712 (= e!704511 (contains!7412 lt!562216 (tuple2!20445 key1!25 v1!20)))))

(declare-fun bm!61374 () Bool)

(assert (=> bm!61374 (= call!61375 call!61376)))

(declare-fun b!1242713 () Bool)

(declare-fun c!121661 () Bool)

(assert (=> b!1242713 (= c!121661 (and (is-Cons!27533 (removeStrictlySorted!134 l!644 key2!15)) (bvsgt (_1!10232 (h!28742 (removeStrictlySorted!134 l!644 key2!15))) key1!25)))))

(declare-fun e!704513 () List!27537)

(assert (=> b!1242713 (= e!704510 e!704513)))

(declare-fun b!1242714 () Bool)

(assert (=> b!1242714 (= e!704513 call!61377)))

(declare-fun b!1242715 () Bool)

(assert (=> b!1242715 (= e!704509 call!61376)))

(declare-fun b!1242716 () Bool)

(assert (=> b!1242716 (= e!704513 call!61377)))

(declare-fun b!1242717 () Bool)

(assert (=> b!1242717 (= e!704512 (ite c!121662 (t!41010 (removeStrictlySorted!134 l!644 key2!15)) (ite c!121661 (Cons!27533 (h!28742 (removeStrictlySorted!134 l!644 key2!15)) (t!41010 (removeStrictlySorted!134 l!644 key2!15))) Nil!27534)))))

(assert (= (and d!136807 c!121660) b!1242715))

(assert (= (and d!136807 (not c!121660)) b!1242709))

(assert (= (and b!1242709 c!121662) b!1242710))

(assert (= (and b!1242709 (not c!121662)) b!1242713))

(assert (= (and b!1242713 c!121661) b!1242716))

(assert (= (and b!1242713 (not c!121661)) b!1242714))

(assert (= (or b!1242716 b!1242714) bm!61373))

(assert (= (or b!1242710 bm!61373) bm!61374))

(assert (= (or b!1242715 bm!61374) bm!61372))

(assert (= (and bm!61372 c!121663) b!1242708))

(assert (= (and bm!61372 (not c!121663)) b!1242717))

(assert (= (and d!136807 res!828781) b!1242711))

(assert (= (and b!1242711 res!828780) b!1242712))

(declare-fun m!1145399 () Bool)

(assert (=> bm!61372 m!1145399))

(declare-fun m!1145401 () Bool)

(assert (=> b!1242708 m!1145401))

(declare-fun m!1145403 () Bool)

(assert (=> d!136807 m!1145403))

(assert (=> d!136807 m!1145345))

(declare-fun m!1145405 () Bool)

(assert (=> d!136807 m!1145405))

(declare-fun m!1145407 () Bool)

(assert (=> b!1242712 m!1145407))

(declare-fun m!1145409 () Bool)

(assert (=> b!1242711 m!1145409))

(assert (=> b!1242602 d!136807))

(declare-fun b!1242758 () Bool)

(declare-fun e!704539 () List!27537)

(assert (=> b!1242758 (= e!704539 Nil!27534)))

(declare-fun d!136813 () Bool)

(declare-fun e!704538 () Bool)

(assert (=> d!136813 e!704538))

(declare-fun res!828790 () Bool)

(assert (=> d!136813 (=> (not res!828790) (not e!704538))))

(declare-fun lt!562225 () List!27537)

(assert (=> d!136813 (= res!828790 (isStrictlySorted!762 lt!562225))))

(declare-fun e!704540 () List!27537)

(assert (=> d!136813 (= lt!562225 e!704540)))

(declare-fun c!121680 () Bool)

(assert (=> d!136813 (= c!121680 (and (is-Cons!27533 l!644) (= (_1!10232 (h!28742 l!644)) key2!15)))))

(assert (=> d!136813 (isStrictlySorted!762 l!644)))

(assert (=> d!136813 (= (removeStrictlySorted!134 l!644 key2!15) lt!562225)))

(declare-fun b!1242759 () Bool)

(assert (=> b!1242759 (= e!704540 (t!41010 l!644))))

(declare-fun b!1242760 () Bool)

(assert (=> b!1242760 (= e!704539 ($colon$colon!632 (removeStrictlySorted!134 (t!41010 l!644) key2!15) (h!28742 l!644)))))

(declare-fun b!1242761 () Bool)

(assert (=> b!1242761 (= e!704538 (not (containsKey!615 lt!562225 key2!15)))))

(declare-fun b!1242762 () Bool)

(assert (=> b!1242762 (= e!704540 e!704539)))

(declare-fun c!121681 () Bool)

(assert (=> b!1242762 (= c!121681 (and (is-Cons!27533 l!644) (not (= (_1!10232 (h!28742 l!644)) key2!15))))))

(assert (= (and d!136813 c!121680) b!1242759))

(assert (= (and d!136813 (not c!121680)) b!1242762))

(assert (= (and b!1242762 c!121681) b!1242760))

(assert (= (and b!1242762 (not c!121681)) b!1242758))

(assert (= (and d!136813 res!828790) b!1242761))

(declare-fun m!1145427 () Bool)

(assert (=> d!136813 m!1145427))

(assert (=> d!136813 m!1145353))

(declare-fun m!1145429 () Bool)

(assert (=> b!1242760 m!1145429))

(assert (=> b!1242760 m!1145429))

(declare-fun m!1145431 () Bool)

(assert (=> b!1242760 m!1145431))

(declare-fun m!1145433 () Bool)

(assert (=> b!1242761 m!1145433))

(assert (=> b!1242602 d!136813))

(declare-fun b!1242773 () Bool)

(declare-fun e!704548 () List!27537)

(assert (=> b!1242773 (= e!704548 Nil!27534)))

(declare-fun d!136819 () Bool)

(declare-fun e!704547 () Bool)

(assert (=> d!136819 e!704547))

(declare-fun res!828793 () Bool)

(assert (=> d!136819 (=> (not res!828793) (not e!704547))))

(declare-fun lt!562228 () List!27537)

(assert (=> d!136819 (= res!828793 (isStrictlySorted!762 lt!562228))))

(declare-fun e!704549 () List!27537)

(assert (=> d!136819 (= lt!562228 e!704549)))

(declare-fun c!121686 () Bool)

(assert (=> d!136819 (= c!121686 (and (is-Cons!27533 (insertStrictlySorted!440 l!644 key1!25 v1!20)) (= (_1!10232 (h!28742 (insertStrictlySorted!440 l!644 key1!25 v1!20))) key2!15)))))

(assert (=> d!136819 (isStrictlySorted!762 (insertStrictlySorted!440 l!644 key1!25 v1!20))))

(assert (=> d!136819 (= (removeStrictlySorted!134 (insertStrictlySorted!440 l!644 key1!25 v1!20) key2!15) lt!562228)))

(declare-fun b!1242774 () Bool)

(assert (=> b!1242774 (= e!704549 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20)))))

(declare-fun b!1242775 () Bool)

(assert (=> b!1242775 (= e!704548 ($colon$colon!632 (removeStrictlySorted!134 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20)) key2!15) (h!28742 (insertStrictlySorted!440 l!644 key1!25 v1!20))))))

(declare-fun b!1242776 () Bool)

(assert (=> b!1242776 (= e!704547 (not (containsKey!615 lt!562228 key2!15)))))

(declare-fun b!1242777 () Bool)

(assert (=> b!1242777 (= e!704549 e!704548)))

(declare-fun c!121687 () Bool)

(assert (=> b!1242777 (= c!121687 (and (is-Cons!27533 (insertStrictlySorted!440 l!644 key1!25 v1!20)) (not (= (_1!10232 (h!28742 (insertStrictlySorted!440 l!644 key1!25 v1!20))) key2!15))))))

(assert (= (and d!136819 c!121686) b!1242774))

(assert (= (and d!136819 (not c!121686)) b!1242777))

(assert (= (and b!1242777 c!121687) b!1242775))

(assert (= (and b!1242777 (not c!121687)) b!1242773))

(assert (= (and d!136819 res!828793) b!1242776))

(declare-fun m!1145455 () Bool)

(assert (=> d!136819 m!1145455))

(assert (=> d!136819 m!1145349))

(declare-fun m!1145457 () Bool)

(assert (=> d!136819 m!1145457))

(declare-fun m!1145459 () Bool)

(assert (=> b!1242775 m!1145459))

(assert (=> b!1242775 m!1145459))

(declare-fun m!1145461 () Bool)

(assert (=> b!1242775 m!1145461))

(declare-fun m!1145463 () Bool)

(assert (=> b!1242776 m!1145463))

(assert (=> b!1242602 d!136819))

(declare-fun b!1242798 () Bool)

(declare-fun e!704563 () List!27537)

(assert (=> b!1242798 (= e!704563 (insertStrictlySorted!440 (t!41010 l!644) key1!25 v1!20))))

(declare-fun d!136825 () Bool)

(declare-fun e!704562 () Bool)

(assert (=> d!136825 e!704562))

(declare-fun res!828799 () Bool)

(assert (=> d!136825 (=> (not res!828799) (not e!704562))))

(declare-fun lt!562231 () List!27537)

(assert (=> d!136825 (= res!828799 (isStrictlySorted!762 lt!562231))))

(declare-fun e!704560 () List!27537)

(assert (=> d!136825 (= lt!562231 e!704560)))

(declare-fun c!121696 () Bool)

(assert (=> d!136825 (= c!121696 (and (is-Cons!27533 l!644) (bvslt (_1!10232 (h!28742 l!644)) key1!25)))))

(assert (=> d!136825 (isStrictlySorted!762 l!644)))

(assert (=> d!136825 (= (insertStrictlySorted!440 l!644 key1!25 v1!20) lt!562231)))

(declare-fun b!1242799 () Bool)

(declare-fun e!704561 () List!27537)

(assert (=> b!1242799 (= e!704560 e!704561)))

(declare-fun c!121698 () Bool)

(assert (=> b!1242799 (= c!121698 (and (is-Cons!27533 l!644) (= (_1!10232 (h!28742 l!644)) key1!25)))))

(declare-fun b!1242800 () Bool)

(declare-fun call!61384 () List!27537)

(assert (=> b!1242800 (= e!704561 call!61384)))

(declare-fun call!61385 () List!27537)

(declare-fun bm!61381 () Bool)

(assert (=> bm!61381 (= call!61385 ($colon$colon!632 e!704563 (ite c!121696 (h!28742 l!644) (tuple2!20445 key1!25 v1!20))))))

(declare-fun c!121699 () Bool)

(assert (=> bm!61381 (= c!121699 c!121696)))

(declare-fun b!1242801 () Bool)

(declare-fun res!828798 () Bool)

(assert (=> b!1242801 (=> (not res!828798) (not e!704562))))

(assert (=> b!1242801 (= res!828798 (containsKey!615 lt!562231 key1!25))))

(declare-fun bm!61382 () Bool)

(declare-fun call!61386 () List!27537)

(assert (=> bm!61382 (= call!61386 call!61384)))

(declare-fun b!1242802 () Bool)

(assert (=> b!1242802 (= e!704562 (contains!7412 lt!562231 (tuple2!20445 key1!25 v1!20)))))

(declare-fun bm!61383 () Bool)

(assert (=> bm!61383 (= call!61384 call!61385)))

(declare-fun b!1242803 () Bool)

(declare-fun c!121697 () Bool)

(assert (=> b!1242803 (= c!121697 (and (is-Cons!27533 l!644) (bvsgt (_1!10232 (h!28742 l!644)) key1!25)))))

(declare-fun e!704564 () List!27537)

(assert (=> b!1242803 (= e!704561 e!704564)))

(declare-fun b!1242804 () Bool)

(assert (=> b!1242804 (= e!704564 call!61386)))

(declare-fun b!1242805 () Bool)

(assert (=> b!1242805 (= e!704560 call!61385)))

(declare-fun b!1242806 () Bool)

(assert (=> b!1242806 (= e!704564 call!61386)))

(declare-fun b!1242807 () Bool)

(assert (=> b!1242807 (= e!704563 (ite c!121698 (t!41010 l!644) (ite c!121697 (Cons!27533 (h!28742 l!644) (t!41010 l!644)) Nil!27534)))))

(assert (= (and d!136825 c!121696) b!1242805))

(assert (= (and d!136825 (not c!121696)) b!1242799))

(assert (= (and b!1242799 c!121698) b!1242800))

(assert (= (and b!1242799 (not c!121698)) b!1242803))

(assert (= (and b!1242803 c!121697) b!1242806))

(assert (= (and b!1242803 (not c!121697)) b!1242804))

(assert (= (or b!1242806 b!1242804) bm!61382))

(assert (= (or b!1242800 bm!61382) bm!61383))

(assert (= (or b!1242805 bm!61383) bm!61381))

(assert (= (and bm!61381 c!121699) b!1242798))

(assert (= (and bm!61381 (not c!121699)) b!1242807))

(assert (= (and d!136825 res!828799) b!1242801))

(assert (= (and b!1242801 res!828798) b!1242802))

(declare-fun m!1145485 () Bool)

(assert (=> bm!61381 m!1145485))

(declare-fun m!1145487 () Bool)

(assert (=> b!1242798 m!1145487))

(declare-fun m!1145489 () Bool)

(assert (=> d!136825 m!1145489))

(assert (=> d!136825 m!1145353))

(declare-fun m!1145491 () Bool)

(assert (=> b!1242802 m!1145491))

(declare-fun m!1145493 () Bool)

(assert (=> b!1242801 m!1145493))

(assert (=> b!1242602 d!136825))

(declare-fun d!136831 () Bool)

(declare-fun res!828816 () Bool)

(declare-fun e!704581 () Bool)

(assert (=> d!136831 (=> res!828816 e!704581)))

(assert (=> d!136831 (= res!828816 (or (is-Nil!27534 l!644) (is-Nil!27534 (t!41010 l!644))))))

(assert (=> d!136831 (= (isStrictlySorted!762 l!644) e!704581)))

(declare-fun b!1242824 () Bool)

(declare-fun e!704582 () Bool)

(assert (=> b!1242824 (= e!704581 e!704582)))

(declare-fun res!828817 () Bool)

(assert (=> b!1242824 (=> (not res!828817) (not e!704582))))

(assert (=> b!1242824 (= res!828817 (bvslt (_1!10232 (h!28742 l!644)) (_1!10232 (h!28742 (t!41010 l!644)))))))

(declare-fun b!1242825 () Bool)

(assert (=> b!1242825 (= e!704582 (isStrictlySorted!762 (t!41010 l!644)))))

(assert (= (and d!136831 (not res!828816)) b!1242824))

(assert (= (and b!1242824 res!828817) b!1242825))

(declare-fun m!1145499 () Bool)

(assert (=> b!1242825 m!1145499))

(assert (=> b!1242600 d!136831))

(declare-fun b!1242840 () Bool)

(declare-fun e!704591 () Bool)

(declare-fun tp!92781 () Bool)

(assert (=> b!1242840 (= e!704591 (and tp_is_empty!31291 tp!92781))))

(assert (=> b!1242603 (= tp!92766 e!704591)))

(assert (= (and b!1242603 (is-Cons!27533 (t!41010 l!644))) b!1242840))

(push 1)

(assert (not b!1242802))

(assert (not b!1242760))

(assert (not b!1242776))

(assert (not b!1242775))

(assert (not d!136825))

(assert (not b!1242798))

(assert (not d!136807))

(assert (not d!136813))

(assert (not d!136819))

(assert tp_is_empty!31291)

(assert (not b!1242761))

(assert (not b!1242711))

(assert (not b!1242840))

(assert (not b!1242825))

(assert (not bm!61372))

(assert (not b!1242801))

(assert (not b!1242708))

(assert (not bm!61381))

(assert (not b!1242712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136873 () Bool)

(declare-fun lt!562242 () Bool)

(declare-fun content!612 (List!27537) (Set tuple2!20444))

(assert (=> d!136873 (= lt!562242 (set.member (tuple2!20445 key1!25 v1!20) (content!612 lt!562216)))))

(declare-fun e!704648 () Bool)

(assert (=> d!136873 (= lt!562242 e!704648)))

(declare-fun res!828862 () Bool)

(assert (=> d!136873 (=> (not res!828862) (not e!704648))))

(assert (=> d!136873 (= res!828862 (is-Cons!27533 lt!562216))))

(assert (=> d!136873 (= (contains!7412 lt!562216 (tuple2!20445 key1!25 v1!20)) lt!562242)))

(declare-fun b!1242910 () Bool)

(declare-fun e!704647 () Bool)

(assert (=> b!1242910 (= e!704648 e!704647)))

(declare-fun res!828863 () Bool)

(assert (=> b!1242910 (=> res!828863 e!704647)))

(assert (=> b!1242910 (= res!828863 (= (h!28742 lt!562216) (tuple2!20445 key1!25 v1!20)))))

(declare-fun b!1242911 () Bool)

(assert (=> b!1242911 (= e!704647 (contains!7412 (t!41010 lt!562216) (tuple2!20445 key1!25 v1!20)))))

(assert (= (and d!136873 res!828862) b!1242910))

(assert (= (and b!1242910 (not res!828863)) b!1242911))

(declare-fun m!1145571 () Bool)

(assert (=> d!136873 m!1145571))

(declare-fun m!1145573 () Bool)

(assert (=> d!136873 m!1145573))

(declare-fun m!1145575 () Bool)

(assert (=> b!1242911 m!1145575))

(assert (=> b!1242712 d!136873))

(declare-fun d!136877 () Bool)

(declare-fun res!828868 () Bool)

(declare-fun e!704653 () Bool)

(assert (=> d!136877 (=> res!828868 e!704653)))

(assert (=> d!136877 (= res!828868 (and (is-Cons!27533 lt!562216) (= (_1!10232 (h!28742 lt!562216)) key1!25)))))

(assert (=> d!136877 (= (containsKey!615 lt!562216 key1!25) e!704653)))

(declare-fun b!1242916 () Bool)

(declare-fun e!704654 () Bool)

(assert (=> b!1242916 (= e!704653 e!704654)))

(declare-fun res!828869 () Bool)

(assert (=> b!1242916 (=> (not res!828869) (not e!704654))))

(assert (=> b!1242916 (= res!828869 (and (or (not (is-Cons!27533 lt!562216)) (bvsle (_1!10232 (h!28742 lt!562216)) key1!25)) (is-Cons!27533 lt!562216) (bvslt (_1!10232 (h!28742 lt!562216)) key1!25)))))

(declare-fun b!1242917 () Bool)

(assert (=> b!1242917 (= e!704654 (containsKey!615 (t!41010 lt!562216) key1!25))))

(assert (= (and d!136877 (not res!828868)) b!1242916))

(assert (= (and b!1242916 res!828869) b!1242917))

(declare-fun m!1145577 () Bool)

(assert (=> b!1242917 m!1145577))

(assert (=> b!1242711 d!136877))

(declare-fun d!136879 () Bool)

(declare-fun res!828870 () Bool)

(declare-fun e!704655 () Bool)

(assert (=> d!136879 (=> res!828870 e!704655)))

(assert (=> d!136879 (= res!828870 (or (is-Nil!27534 lt!562228) (is-Nil!27534 (t!41010 lt!562228))))))

(assert (=> d!136879 (= (isStrictlySorted!762 lt!562228) e!704655)))

(declare-fun b!1242918 () Bool)

(declare-fun e!704656 () Bool)

(assert (=> b!1242918 (= e!704655 e!704656)))

(declare-fun res!828871 () Bool)

(assert (=> b!1242918 (=> (not res!828871) (not e!704656))))

(assert (=> b!1242918 (= res!828871 (bvslt (_1!10232 (h!28742 lt!562228)) (_1!10232 (h!28742 (t!41010 lt!562228)))))))

(declare-fun b!1242919 () Bool)

(assert (=> b!1242919 (= e!704656 (isStrictlySorted!762 (t!41010 lt!562228)))))

(assert (= (and d!136879 (not res!828870)) b!1242918))

(assert (= (and b!1242918 res!828871) b!1242919))

(declare-fun m!1145579 () Bool)

(assert (=> b!1242919 m!1145579))

(assert (=> d!136819 d!136879))

(declare-fun d!136881 () Bool)

(declare-fun res!828872 () Bool)

(declare-fun e!704657 () Bool)

(assert (=> d!136881 (=> res!828872 e!704657)))

(assert (=> d!136881 (= res!828872 (or (is-Nil!27534 (insertStrictlySorted!440 l!644 key1!25 v1!20)) (is-Nil!27534 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20)))))))

(assert (=> d!136881 (= (isStrictlySorted!762 (insertStrictlySorted!440 l!644 key1!25 v1!20)) e!704657)))

(declare-fun b!1242920 () Bool)

(declare-fun e!704658 () Bool)

(assert (=> b!1242920 (= e!704657 e!704658)))

(declare-fun res!828873 () Bool)

(assert (=> b!1242920 (=> (not res!828873) (not e!704658))))

(assert (=> b!1242920 (= res!828873 (bvslt (_1!10232 (h!28742 (insertStrictlySorted!440 l!644 key1!25 v1!20))) (_1!10232 (h!28742 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20))))))))

(declare-fun b!1242921 () Bool)

(assert (=> b!1242921 (= e!704658 (isStrictlySorted!762 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20))))))

(assert (= (and d!136881 (not res!828872)) b!1242920))

(assert (= (and b!1242920 res!828873) b!1242921))

(declare-fun m!1145581 () Bool)

(assert (=> b!1242921 m!1145581))

(assert (=> d!136819 d!136881))

(declare-fun d!136883 () Bool)

(declare-fun res!828874 () Bool)

(declare-fun e!704659 () Bool)

(assert (=> d!136883 (=> res!828874 e!704659)))

(assert (=> d!136883 (= res!828874 (and (is-Cons!27533 lt!562228) (= (_1!10232 (h!28742 lt!562228)) key2!15)))))

(assert (=> d!136883 (= (containsKey!615 lt!562228 key2!15) e!704659)))

(declare-fun b!1242922 () Bool)

(declare-fun e!704660 () Bool)

(assert (=> b!1242922 (= e!704659 e!704660)))

(declare-fun res!828875 () Bool)

(assert (=> b!1242922 (=> (not res!828875) (not e!704660))))

(assert (=> b!1242922 (= res!828875 (and (or (not (is-Cons!27533 lt!562228)) (bvsle (_1!10232 (h!28742 lt!562228)) key2!15)) (is-Cons!27533 lt!562228) (bvslt (_1!10232 (h!28742 lt!562228)) key2!15)))))

(declare-fun b!1242923 () Bool)

(assert (=> b!1242923 (= e!704660 (containsKey!615 (t!41010 lt!562228) key2!15))))

(assert (= (and d!136883 (not res!828874)) b!1242922))

(assert (= (and b!1242922 res!828875) b!1242923))

(declare-fun m!1145583 () Bool)

(assert (=> b!1242923 m!1145583))

(assert (=> b!1242776 d!136883))

(declare-fun d!136885 () Bool)

(declare-fun res!828876 () Bool)

(declare-fun e!704661 () Bool)

(assert (=> d!136885 (=> res!828876 e!704661)))

(assert (=> d!136885 (= res!828876 (or (is-Nil!27534 (t!41010 l!644)) (is-Nil!27534 (t!41010 (t!41010 l!644)))))))

(assert (=> d!136885 (= (isStrictlySorted!762 (t!41010 l!644)) e!704661)))

(declare-fun b!1242924 () Bool)

(declare-fun e!704662 () Bool)

(assert (=> b!1242924 (= e!704661 e!704662)))

(declare-fun res!828877 () Bool)

(assert (=> b!1242924 (=> (not res!828877) (not e!704662))))

(assert (=> b!1242924 (= res!828877 (bvslt (_1!10232 (h!28742 (t!41010 l!644))) (_1!10232 (h!28742 (t!41010 (t!41010 l!644))))))))

(declare-fun b!1242925 () Bool)

(assert (=> b!1242925 (= e!704662 (isStrictlySorted!762 (t!41010 (t!41010 l!644))))))

(assert (= (and d!136885 (not res!828876)) b!1242924))

(assert (= (and b!1242924 res!828877) b!1242925))

(declare-fun m!1145585 () Bool)

(assert (=> b!1242925 m!1145585))

(assert (=> b!1242825 d!136885))

(declare-fun d!136887 () Bool)

(assert (=> d!136887 (= ($colon$colon!632 e!704512 (ite c!121660 (h!28742 (removeStrictlySorted!134 l!644 key2!15)) (tuple2!20445 key1!25 v1!20))) (Cons!27533 (ite c!121660 (h!28742 (removeStrictlySorted!134 l!644 key2!15)) (tuple2!20445 key1!25 v1!20)) e!704512))))

(assert (=> bm!61372 d!136887))

(declare-fun d!136889 () Bool)

(assert (=> d!136889 (= ($colon$colon!632 (removeStrictlySorted!134 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20)) key2!15) (h!28742 (insertStrictlySorted!440 l!644 key1!25 v1!20))) (Cons!27533 (h!28742 (insertStrictlySorted!440 l!644 key1!25 v1!20)) (removeStrictlySorted!134 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20)) key2!15)))))

(assert (=> b!1242775 d!136889))

(declare-fun b!1242926 () Bool)

(declare-fun e!704664 () List!27537)

(assert (=> b!1242926 (= e!704664 Nil!27534)))

(declare-fun d!136891 () Bool)

(declare-fun e!704663 () Bool)

(assert (=> d!136891 e!704663))

(declare-fun res!828878 () Bool)

(assert (=> d!136891 (=> (not res!828878) (not e!704663))))

(declare-fun lt!562243 () List!27537)

(assert (=> d!136891 (= res!828878 (isStrictlySorted!762 lt!562243))))

(declare-fun e!704665 () List!27537)

(assert (=> d!136891 (= lt!562243 e!704665)))

(declare-fun c!121712 () Bool)

(assert (=> d!136891 (= c!121712 (and (is-Cons!27533 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20))) (= (_1!10232 (h!28742 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20)))) key2!15)))))

(assert (=> d!136891 (isStrictlySorted!762 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20)))))

(assert (=> d!136891 (= (removeStrictlySorted!134 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20)) key2!15) lt!562243)))

(declare-fun b!1242927 () Bool)

(assert (=> b!1242927 (= e!704665 (t!41010 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20))))))

(declare-fun b!1242928 () Bool)

(assert (=> b!1242928 (= e!704664 ($colon$colon!632 (removeStrictlySorted!134 (t!41010 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20))) key2!15) (h!28742 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20)))))))

(declare-fun b!1242929 () Bool)

(assert (=> b!1242929 (= e!704663 (not (containsKey!615 lt!562243 key2!15)))))

(declare-fun b!1242930 () Bool)

(assert (=> b!1242930 (= e!704665 e!704664)))

(declare-fun c!121713 () Bool)

(assert (=> b!1242930 (= c!121713 (and (is-Cons!27533 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20))) (not (= (_1!10232 (h!28742 (t!41010 (insertStrictlySorted!440 l!644 key1!25 v1!20)))) key2!15))))))

(assert (= (and d!136891 c!121712) b!1242927))

(assert (= (and d!136891 (not c!121712)) b!1242930))

(assert (= (and b!1242930 c!121713) b!1242928))

(assert (= (and b!1242930 (not c!121713)) b!1242926))

(assert (= (and d!136891 res!828878) b!1242929))

(declare-fun m!1145587 () Bool)

(assert (=> d!136891 m!1145587))

(assert (=> d!136891 m!1145581))

(declare-fun m!1145589 () Bool)

(assert (=> b!1242928 m!1145589))

(assert (=> b!1242928 m!1145589))

(declare-fun m!1145591 () Bool)

(assert (=> b!1242928 m!1145591))

(declare-fun m!1145593 () Bool)

(assert (=> b!1242929 m!1145593))

(assert (=> b!1242775 d!136891))

(declare-fun d!136893 () Bool)

(assert (=> d!136893 (= ($colon$colon!632 (removeStrictlySorted!134 (t!41010 l!644) key2!15) (h!28742 l!644)) (Cons!27533 (h!28742 l!644) (removeStrictlySorted!134 (t!41010 l!644) key2!15)))))

(assert (=> b!1242760 d!136893))

(declare-fun b!1242931 () Bool)

(declare-fun e!704667 () List!27537)

(assert (=> b!1242931 (= e!704667 Nil!27534)))

(declare-fun d!136895 () Bool)

(declare-fun e!704666 () Bool)

(assert (=> d!136895 e!704666))

(declare-fun res!828879 () Bool)

(assert (=> d!136895 (=> (not res!828879) (not e!704666))))

(declare-fun lt!562244 () List!27537)

(assert (=> d!136895 (= res!828879 (isStrictlySorted!762 lt!562244))))

(declare-fun e!704668 () List!27537)

(assert (=> d!136895 (= lt!562244 e!704668)))

(declare-fun c!121714 () Bool)

(assert (=> d!136895 (= c!121714 (and (is-Cons!27533 (t!41010 l!644)) (= (_1!10232 (h!28742 (t!41010 l!644))) key2!15)))))

(assert (=> d!136895 (isStrictlySorted!762 (t!41010 l!644))))

(assert (=> d!136895 (= (removeStrictlySorted!134 (t!41010 l!644) key2!15) lt!562244)))

(declare-fun b!1242932 () Bool)

(assert (=> b!1242932 (= e!704668 (t!41010 (t!41010 l!644)))))

(declare-fun b!1242933 () Bool)

(assert (=> b!1242933 (= e!704667 ($colon$colon!632 (removeStrictlySorted!134 (t!41010 (t!41010 l!644)) key2!15) (h!28742 (t!41010 l!644))))))

(declare-fun b!1242934 () Bool)

(assert (=> b!1242934 (= e!704666 (not (containsKey!615 lt!562244 key2!15)))))

(declare-fun b!1242935 () Bool)

(assert (=> b!1242935 (= e!704668 e!704667)))

(declare-fun c!121715 () Bool)

(assert (=> b!1242935 (= c!121715 (and (is-Cons!27533 (t!41010 l!644)) (not (= (_1!10232 (h!28742 (t!41010 l!644))) key2!15))))))

(assert (= (and d!136895 c!121714) b!1242932))

(assert (= (and d!136895 (not c!121714)) b!1242935))

(assert (= (and b!1242935 c!121715) b!1242933))

(assert (= (and b!1242935 (not c!121715)) b!1242931))

(assert (= (and d!136895 res!828879) b!1242934))

(declare-fun m!1145595 () Bool)

(assert (=> d!136895 m!1145595))

(assert (=> d!136895 m!1145499))

(declare-fun m!1145597 () Bool)

(assert (=> b!1242933 m!1145597))

(assert (=> b!1242933 m!1145597))

(declare-fun m!1145599 () Bool)

(assert (=> b!1242933 m!1145599))

(declare-fun m!1145601 () Bool)

(assert (=> b!1242934 m!1145601))

(assert (=> b!1242760 d!136895))

(declare-fun d!136897 () Bool)

(declare-fun res!828880 () Bool)

(declare-fun e!704669 () Bool)

(assert (=> d!136897 (=> res!828880 e!704669)))

(assert (=> d!136897 (= res!828880 (or (is-Nil!27534 lt!562231) (is-Nil!27534 (t!41010 lt!562231))))))

(assert (=> d!136897 (= (isStrictlySorted!762 lt!562231) e!704669)))

(declare-fun b!1242936 () Bool)

(declare-fun e!704670 () Bool)

(assert (=> b!1242936 (= e!704669 e!704670)))

(declare-fun res!828881 () Bool)

(assert (=> b!1242936 (=> (not res!828881) (not e!704670))))

(assert (=> b!1242936 (= res!828881 (bvslt (_1!10232 (h!28742 lt!562231)) (_1!10232 (h!28742 (t!41010 lt!562231)))))))

(declare-fun b!1242937 () Bool)

(assert (=> b!1242937 (= e!704670 (isStrictlySorted!762 (t!41010 lt!562231)))))

(assert (= (and d!136897 (not res!828880)) b!1242936))

(assert (= (and b!1242936 res!828881) b!1242937))

(declare-fun m!1145603 () Bool)

(assert (=> b!1242937 m!1145603))

(assert (=> d!136825 d!136897))

(assert (=> d!136825 d!136831))

(declare-fun d!136899 () Bool)

(declare-fun lt!562245 () Bool)

(assert (=> d!136899 (= lt!562245 (set.member (tuple2!20445 key1!25 v1!20) (content!612 lt!562231)))))

(declare-fun e!704672 () Bool)

(assert (=> d!136899 (= lt!562245 e!704672)))

(declare-fun res!828882 () Bool)

(assert (=> d!136899 (=> (not res!828882) (not e!704672))))

(assert (=> d!136899 (= res!828882 (is-Cons!27533 lt!562231))))

(assert (=> d!136899 (= (contains!7412 lt!562231 (tuple2!20445 key1!25 v1!20)) lt!562245)))

(declare-fun b!1242938 () Bool)

(declare-fun e!704671 () Bool)

(assert (=> b!1242938 (= e!704672 e!704671)))

(declare-fun res!828883 () Bool)

(assert (=> b!1242938 (=> res!828883 e!704671)))

(assert (=> b!1242938 (= res!828883 (= (h!28742 lt!562231) (tuple2!20445 key1!25 v1!20)))))

(declare-fun b!1242939 () Bool)

(assert (=> b!1242939 (= e!704671 (contains!7412 (t!41010 lt!562231) (tuple2!20445 key1!25 v1!20)))))

(assert (= (and d!136899 res!828882) b!1242938))

(assert (= (and b!1242938 (not res!828883)) b!1242939))

(declare-fun m!1145605 () Bool)

(assert (=> d!136899 m!1145605))

(declare-fun m!1145607 () Bool)

(assert (=> d!136899 m!1145607))

(declare-fun m!1145609 () Bool)

(assert (=> b!1242939 m!1145609))

(assert (=> b!1242802 d!136899))

(declare-fun d!136901 () Bool)

(declare-fun res!828884 () Bool)

(declare-fun e!704673 () Bool)

(assert (=> d!136901 (=> res!828884 e!704673)))

(assert (=> d!136901 (= res!828884 (and (is-Cons!27533 lt!562225) (= (_1!10232 (h!28742 lt!562225)) key2!15)))))

(assert (=> d!136901 (= (containsKey!615 lt!562225 key2!15) e!704673)))

(declare-fun b!1242940 () Bool)

(declare-fun e!704674 () Bool)

(assert (=> b!1242940 (= e!704673 e!704674)))

(declare-fun res!828885 () Bool)

(assert (=> b!1242940 (=> (not res!828885) (not e!704674))))

(assert (=> b!1242940 (= res!828885 (and (or (not (is-Cons!27533 lt!562225)) (bvsle (_1!10232 (h!28742 lt!562225)) key2!15)) (is-Cons!27533 lt!562225) (bvslt (_1!10232 (h!28742 lt!562225)) key2!15)))))

(declare-fun b!1242941 () Bool)

(assert (=> b!1242941 (= e!704674 (containsKey!615 (t!41010 lt!562225) key2!15))))

(assert (= (and d!136901 (not res!828884)) b!1242940))

(assert (= (and b!1242940 res!828885) b!1242941))

(declare-fun m!1145611 () Bool)

(assert (=> b!1242941 m!1145611))

(assert (=> b!1242761 d!136901))

(declare-fun b!1242942 () Bool)

(declare-fun e!704678 () List!27537)

(assert (=> b!1242942 (= e!704678 (insertStrictlySorted!440 (t!41010 (t!41010 (removeStrictlySorted!134 l!644 key2!15))) key1!25 v1!20))))

(declare-fun d!136903 () Bool)

(declare-fun e!704677 () Bool)

(assert (=> d!136903 e!704677))

(declare-fun res!828887 () Bool)

(assert (=> d!136903 (=> (not res!828887) (not e!704677))))

(declare-fun lt!562246 () List!27537)

(assert (=> d!136903 (= res!828887 (isStrictlySorted!762 lt!562246))))

(declare-fun e!704675 () List!27537)

(assert (=> d!136903 (= lt!562246 e!704675)))

(declare-fun c!121716 () Bool)

(assert (=> d!136903 (= c!121716 (and (is-Cons!27533 (t!41010 (removeStrictlySorted!134 l!644 key2!15))) (bvslt (_1!10232 (h!28742 (t!41010 (removeStrictlySorted!134 l!644 key2!15)))) key1!25)))))

(assert (=> d!136903 (isStrictlySorted!762 (t!41010 (removeStrictlySorted!134 l!644 key2!15)))))

(assert (=> d!136903 (= (insertStrictlySorted!440 (t!41010 (removeStrictlySorted!134 l!644 key2!15)) key1!25 v1!20) lt!562246)))

(declare-fun b!1242943 () Bool)

(declare-fun e!704676 () List!27537)

(assert (=> b!1242943 (= e!704675 e!704676)))

(declare-fun c!121718 () Bool)

(assert (=> b!1242943 (= c!121718 (and (is-Cons!27533 (t!41010 (removeStrictlySorted!134 l!644 key2!15))) (= (_1!10232 (h!28742 (t!41010 (removeStrictlySorted!134 l!644 key2!15)))) key1!25)))))

(declare-fun b!1242944 () Bool)

(declare-fun call!61393 () List!27537)

(assert (=> b!1242944 (= e!704676 call!61393)))

(declare-fun bm!61390 () Bool)

(declare-fun call!61394 () List!27537)

(assert (=> bm!61390 (= call!61394 ($colon$colon!632 e!704678 (ite c!121716 (h!28742 (t!41010 (removeStrictlySorted!134 l!644 key2!15))) (tuple2!20445 key1!25 v1!20))))))

(declare-fun c!121719 () Bool)

(assert (=> bm!61390 (= c!121719 c!121716)))

(declare-fun b!1242945 () Bool)

(declare-fun res!828886 () Bool)

(assert (=> b!1242945 (=> (not res!828886) (not e!704677))))

(assert (=> b!1242945 (= res!828886 (containsKey!615 lt!562246 key1!25))))

(declare-fun bm!61391 () Bool)

(declare-fun call!61395 () List!27537)

(assert (=> bm!61391 (= call!61395 call!61393)))

(declare-fun b!1242946 () Bool)

(assert (=> b!1242946 (= e!704677 (contains!7412 lt!562246 (tuple2!20445 key1!25 v1!20)))))

(declare-fun bm!61392 () Bool)

(assert (=> bm!61392 (= call!61393 call!61394)))

(declare-fun b!1242947 () Bool)

(declare-fun c!121717 () Bool)

(assert (=> b!1242947 (= c!121717 (and (is-Cons!27533 (t!41010 (removeStrictlySorted!134 l!644 key2!15))) (bvsgt (_1!10232 (h!28742 (t!41010 (removeStrictlySorted!134 l!644 key2!15)))) key1!25)))))

(declare-fun e!704679 () List!27537)

(assert (=> b!1242947 (= e!704676 e!704679)))

(declare-fun b!1242948 () Bool)

(assert (=> b!1242948 (= e!704679 call!61395)))

(declare-fun b!1242949 () Bool)

(assert (=> b!1242949 (= e!704675 call!61394)))

(declare-fun b!1242950 () Bool)

(assert (=> b!1242950 (= e!704679 call!61395)))

(declare-fun b!1242951 () Bool)

(assert (=> b!1242951 (= e!704678 (ite c!121718 (t!41010 (t!41010 (removeStrictlySorted!134 l!644 key2!15))) (ite c!121717 (Cons!27533 (h!28742 (t!41010 (removeStrictlySorted!134 l!644 key2!15))) (t!41010 (t!41010 (removeStrictlySorted!134 l!644 key2!15)))) Nil!27534)))))

(assert (= (and d!136903 c!121716) b!1242949))

(assert (= (and d!136903 (not c!121716)) b!1242943))

(assert (= (and b!1242943 c!121718) b!1242944))

(assert (= (and b!1242943 (not c!121718)) b!1242947))

(assert (= (and b!1242947 c!121717) b!1242950))

(assert (= (and b!1242947 (not c!121717)) b!1242948))

(assert (= (or b!1242950 b!1242948) bm!61391))

(assert (= (or b!1242944 bm!61391) bm!61392))

(assert (= (or b!1242949 bm!61392) bm!61390))

(assert (= (and bm!61390 c!121719) b!1242942))

(assert (= (and bm!61390 (not c!121719)) b!1242951))

(assert (= (and d!136903 res!828887) b!1242945))

(assert (= (and b!1242945 res!828886) b!1242946))

(declare-fun m!1145613 () Bool)

(assert (=> bm!61390 m!1145613))

(declare-fun m!1145615 () Bool)

(assert (=> b!1242942 m!1145615))

(declare-fun m!1145617 () Bool)

(assert (=> d!136903 m!1145617))

(declare-fun m!1145619 () Bool)

(assert (=> d!136903 m!1145619))

(declare-fun m!1145621 () Bool)

(assert (=> b!1242946 m!1145621))

(declare-fun m!1145623 () Bool)

(assert (=> b!1242945 m!1145623))

(assert (=> b!1242708 d!136903))

(declare-fun d!136905 () Bool)

(declare-fun res!828888 () Bool)

(declare-fun e!704680 () Bool)

(assert (=> d!136905 (=> res!828888 e!704680)))

(assert (=> d!136905 (= res!828888 (and (is-Cons!27533 lt!562231) (= (_1!10232 (h!28742 lt!562231)) key1!25)))))

(assert (=> d!136905 (= (containsKey!615 lt!562231 key1!25) e!704680)))

(declare-fun b!1242952 () Bool)

(declare-fun e!704681 () Bool)

(assert (=> b!1242952 (= e!704680 e!704681)))

(declare-fun res!828889 () Bool)

(assert (=> b!1242952 (=> (not res!828889) (not e!704681))))

(assert (=> b!1242952 (= res!828889 (and (or (not (is-Cons!27533 lt!562231)) (bvsle (_1!10232 (h!28742 lt!562231)) key1!25)) (is-Cons!27533 lt!562231) (bvslt (_1!10232 (h!28742 lt!562231)) key1!25)))))

(declare-fun b!1242953 () Bool)

(assert (=> b!1242953 (= e!704681 (containsKey!615 (t!41010 lt!562231) key1!25))))

(assert (= (and d!136905 (not res!828888)) b!1242952))

(assert (= (and b!1242952 res!828889) b!1242953))

(declare-fun m!1145625 () Bool)

(assert (=> b!1242953 m!1145625))

(assert (=> b!1242801 d!136905))

(declare-fun d!136907 () Bool)

(declare-fun res!828890 () Bool)

(declare-fun e!704682 () Bool)

(assert (=> d!136907 (=> res!828890 e!704682)))

(assert (=> d!136907 (= res!828890 (or (is-Nil!27534 lt!562225) (is-Nil!27534 (t!41010 lt!562225))))))

(assert (=> d!136907 (= (isStrictlySorted!762 lt!562225) e!704682)))

(declare-fun b!1242954 () Bool)

(declare-fun e!704683 () Bool)

(assert (=> b!1242954 (= e!704682 e!704683)))

(declare-fun res!828891 () Bool)

(assert (=> b!1242954 (=> (not res!828891) (not e!704683))))

(assert (=> b!1242954 (= res!828891 (bvslt (_1!10232 (h!28742 lt!562225)) (_1!10232 (h!28742 (t!41010 lt!562225)))))))

(declare-fun b!1242955 () Bool)

(assert (=> b!1242955 (= e!704683 (isStrictlySorted!762 (t!41010 lt!562225)))))

(assert (= (and d!136907 (not res!828890)) b!1242954))

(assert (= (and b!1242954 res!828891) b!1242955))

(declare-fun m!1145627 () Bool)

(assert (=> b!1242955 m!1145627))

(assert (=> d!136813 d!136907))

(assert (=> d!136813 d!136831))

(declare-fun d!136909 () Bool)

(declare-fun res!828892 () Bool)

(declare-fun e!704684 () Bool)

(assert (=> d!136909 (=> res!828892 e!704684)))

(assert (=> d!136909 (= res!828892 (or (is-Nil!27534 lt!562216) (is-Nil!27534 (t!41010 lt!562216))))))

(assert (=> d!136909 (= (isStrictlySorted!762 lt!562216) e!704684)))

(declare-fun b!1242956 () Bool)

(declare-fun e!704685 () Bool)

(assert (=> b!1242956 (= e!704684 e!704685)))

(declare-fun res!828893 () Bool)

(assert (=> b!1242956 (=> (not res!828893) (not e!704685))))

(assert (=> b!1242956 (= res!828893 (bvslt (_1!10232 (h!28742 lt!562216)) (_1!10232 (h!28742 (t!41010 lt!562216)))))))

(declare-fun b!1242957 () Bool)

(assert (=> b!1242957 (= e!704685 (isStrictlySorted!762 (t!41010 lt!562216)))))

(assert (= (and d!136909 (not res!828892)) b!1242956))

(assert (= (and b!1242956 res!828893) b!1242957))

(declare-fun m!1145629 () Bool)

(assert (=> b!1242957 m!1145629))

(assert (=> d!136807 d!136909))

(declare-fun d!136911 () Bool)

(declare-fun res!828894 () Bool)

(declare-fun e!704686 () Bool)

(assert (=> d!136911 (=> res!828894 e!704686)))

(assert (=> d!136911 (= res!828894 (or (is-Nil!27534 (removeStrictlySorted!134 l!644 key2!15)) (is-Nil!27534 (t!41010 (removeStrictlySorted!134 l!644 key2!15)))))))

(assert (=> d!136911 (= (isStrictlySorted!762 (removeStrictlySorted!134 l!644 key2!15)) e!704686)))

(declare-fun b!1242958 () Bool)

(declare-fun e!704687 () Bool)

(assert (=> b!1242958 (= e!704686 e!704687)))

(declare-fun res!828895 () Bool)

(assert (=> b!1242958 (=> (not res!828895) (not e!704687))))

(assert (=> b!1242958 (= res!828895 (bvslt (_1!10232 (h!28742 (removeStrictlySorted!134 l!644 key2!15))) (_1!10232 (h!28742 (t!41010 (removeStrictlySorted!134 l!644 key2!15))))))))

(declare-fun b!1242959 () Bool)

(assert (=> b!1242959 (= e!704687 (isStrictlySorted!762 (t!41010 (removeStrictlySorted!134 l!644 key2!15))))))

(assert (= (and d!136911 (not res!828894)) b!1242958))

(assert (= (and b!1242958 res!828895) b!1242959))

(assert (=> b!1242959 m!1145619))

(assert (=> d!136807 d!136911))

(declare-fun d!136913 () Bool)

(assert (=> d!136913 (= ($colon$colon!632 e!704563 (ite c!121696 (h!28742 l!644) (tuple2!20445 key1!25 v1!20))) (Cons!27533 (ite c!121696 (h!28742 l!644) (tuple2!20445 key1!25 v1!20)) e!704563))))

(assert (=> bm!61381 d!136913))

(declare-fun e!704691 () List!27537)

(declare-fun b!1242960 () Bool)

(assert (=> b!1242960 (= e!704691 (insertStrictlySorted!440 (t!41010 (t!41010 l!644)) key1!25 v1!20))))

(declare-fun d!136915 () Bool)

(declare-fun e!704690 () Bool)

(assert (=> d!136915 e!704690))

(declare-fun res!828897 () Bool)

(assert (=> d!136915 (=> (not res!828897) (not e!704690))))

(declare-fun lt!562247 () List!27537)

(assert (=> d!136915 (= res!828897 (isStrictlySorted!762 lt!562247))))

(declare-fun e!704688 () List!27537)

(assert (=> d!136915 (= lt!562247 e!704688)))

(declare-fun c!121720 () Bool)

(assert (=> d!136915 (= c!121720 (and (is-Cons!27533 (t!41010 l!644)) (bvslt (_1!10232 (h!28742 (t!41010 l!644))) key1!25)))))

(assert (=> d!136915 (isStrictlySorted!762 (t!41010 l!644))))

(assert (=> d!136915 (= (insertStrictlySorted!440 (t!41010 l!644) key1!25 v1!20) lt!562247)))

(declare-fun b!1242961 () Bool)

(declare-fun e!704689 () List!27537)

(assert (=> b!1242961 (= e!704688 e!704689)))

(declare-fun c!121722 () Bool)

(assert (=> b!1242961 (= c!121722 (and (is-Cons!27533 (t!41010 l!644)) (= (_1!10232 (h!28742 (t!41010 l!644))) key1!25)))))

(declare-fun b!1242962 () Bool)

(declare-fun call!61396 () List!27537)

(assert (=> b!1242962 (= e!704689 call!61396)))

(declare-fun call!61397 () List!27537)

(declare-fun bm!61393 () Bool)

(assert (=> bm!61393 (= call!61397 ($colon$colon!632 e!704691 (ite c!121720 (h!28742 (t!41010 l!644)) (tuple2!20445 key1!25 v1!20))))))

(declare-fun c!121723 () Bool)

(assert (=> bm!61393 (= c!121723 c!121720)))

(declare-fun b!1242963 () Bool)

(declare-fun res!828896 () Bool)

(assert (=> b!1242963 (=> (not res!828896) (not e!704690))))

(assert (=> b!1242963 (= res!828896 (containsKey!615 lt!562247 key1!25))))

(declare-fun bm!61394 () Bool)

(declare-fun call!61398 () List!27537)

(assert (=> bm!61394 (= call!61398 call!61396)))

(declare-fun b!1242964 () Bool)

(assert (=> b!1242964 (= e!704690 (contains!7412 lt!562247 (tuple2!20445 key1!25 v1!20)))))

(declare-fun bm!61395 () Bool)

(assert (=> bm!61395 (= call!61396 call!61397)))

(declare-fun b!1242965 () Bool)

(declare-fun c!121721 () Bool)

(assert (=> b!1242965 (= c!121721 (and (is-Cons!27533 (t!41010 l!644)) (bvsgt (_1!10232 (h!28742 (t!41010 l!644))) key1!25)))))

(declare-fun e!704692 () List!27537)

(assert (=> b!1242965 (= e!704689 e!704692)))

(declare-fun b!1242966 () Bool)

(assert (=> b!1242966 (= e!704692 call!61398)))

(declare-fun b!1242967 () Bool)

(assert (=> b!1242967 (= e!704688 call!61397)))

(declare-fun b!1242968 () Bool)

(assert (=> b!1242968 (= e!704692 call!61398)))

(declare-fun b!1242969 () Bool)

(assert (=> b!1242969 (= e!704691 (ite c!121722 (t!41010 (t!41010 l!644)) (ite c!121721 (Cons!27533 (h!28742 (t!41010 l!644)) (t!41010 (t!41010 l!644))) Nil!27534)))))

(assert (= (and d!136915 c!121720) b!1242967))

(assert (= (and d!136915 (not c!121720)) b!1242961))

(assert (= (and b!1242961 c!121722) b!1242962))

(assert (= (and b!1242961 (not c!121722)) b!1242965))

(assert (= (and b!1242965 c!121721) b!1242968))

(assert (= (and b!1242965 (not c!121721)) b!1242966))

(assert (= (or b!1242968 b!1242966) bm!61394))

(assert (= (or b!1242962 bm!61394) bm!61395))

(assert (= (or b!1242967 bm!61395) bm!61393))

(assert (= (and bm!61393 c!121723) b!1242960))

(assert (= (and bm!61393 (not c!121723)) b!1242969))

