; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7726 () Bool)

(assert start!7726)

(declare-fun b!49170 () Bool)

(declare-fun e!31584 () Bool)

(declare-fun tp_is_empty!2137 () Bool)

(declare-fun tp!6494 () Bool)

(assert (=> b!49170 (= e!31584 (and tp_is_empty!2137 tp!6494))))

(declare-fun res!28496 () Bool)

(declare-fun e!31585 () Bool)

(assert (=> start!7726 (=> (not res!28496) (not e!31585))))

(declare-datatypes ((B!986 0))(
  ( (B!987 (val!1113 Int)) )
))
(declare-datatypes ((tuple2!1812 0))(
  ( (tuple2!1813 (_1!916 (_ BitVec 64)) (_2!916 B!986)) )
))
(declare-datatypes ((List!1329 0))(
  ( (Nil!1326) (Cons!1325 (h!1905 tuple2!1812) (t!4368 List!1329)) )
))
(declare-fun l!1333 () List!1329)

(declare-fun isStrictlySorted!270 (List!1329) Bool)

(assert (=> start!7726 (= res!28496 (isStrictlySorted!270 l!1333))))

(assert (=> start!7726 e!31585))

(assert (=> start!7726 e!31584))

(assert (=> start!7726 true))

(assert (=> start!7726 tp_is_empty!2137))

(declare-fun b!49168 () Bool)

(declare-fun res!28497 () Bool)

(assert (=> b!49168 (=> (not res!28497) (not e!31585))))

(assert (=> b!49168 (= res!28497 (not (is-Nil!1326 l!1333)))))

(declare-fun b!49169 () Bool)

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun newValue!147 () B!986)

(declare-fun content!51 (List!1329) (Set tuple2!1812))

(declare-fun insertStrictlySorted!38 (List!1329 (_ BitVec 64) B!986) List!1329)

(assert (=> b!49169 (= e!31585 (not (= (set.union (content!51 l!1333) (set.insert (tuple2!1813 newKey!147 newValue!147) (as set.empty (Set tuple2!1812)))) (content!51 (insertStrictlySorted!38 l!1333 newKey!147 newValue!147)))))))

(declare-datatypes ((Unit!1370 0))(
  ( (Unit!1371) )
))
(declare-fun lt!20730 () Unit!1370)

(declare-fun lemmaInsertStrictlySortedNotContainedContent!7 (List!1329 (_ BitVec 64) B!986) Unit!1370)

(assert (=> b!49169 (= lt!20730 (lemmaInsertStrictlySortedNotContainedContent!7 (t!4368 l!1333) newKey!147 newValue!147))))

(declare-fun b!49167 () Bool)

(declare-fun res!28495 () Bool)

(assert (=> b!49167 (=> (not res!28495) (not e!31585))))

(declare-fun containsKey!122 (List!1329 (_ BitVec 64)) Bool)

(assert (=> b!49167 (= res!28495 (not (containsKey!122 l!1333 newKey!147)))))

(assert (= (and start!7726 res!28496) b!49167))

(assert (= (and b!49167 res!28495) b!49168))

(assert (= (and b!49168 res!28497) b!49169))

(assert (= (and start!7726 (is-Cons!1325 l!1333)) b!49170))

(declare-fun m!42675 () Bool)

(assert (=> start!7726 m!42675))

(declare-fun m!42677 () Bool)

(assert (=> b!49169 m!42677))

(declare-fun m!42679 () Bool)

(assert (=> b!49169 m!42679))

(declare-fun m!42681 () Bool)

(assert (=> b!49169 m!42681))

(assert (=> b!49169 m!42681))

(declare-fun m!42683 () Bool)

(assert (=> b!49169 m!42683))

(declare-fun m!42685 () Bool)

(assert (=> b!49169 m!42685))

(declare-fun m!42687 () Bool)

(assert (=> b!49167 m!42687))

(push 1)

(assert (not b!49170))

(assert (not start!7726))

(assert (not b!49167))

(assert tp_is_empty!2137)

(assert (not b!49169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9825 () Bool)

(declare-fun c!6629 () Bool)

(assert (=> d!9825 (= c!6629 (is-Nil!1326 l!1333))))

(declare-fun e!31602 () (Set tuple2!1812))

(assert (=> d!9825 (= (content!51 l!1333) e!31602)))

(declare-fun b!49203 () Bool)

(assert (=> b!49203 (= e!31602 (as set.empty (Set tuple2!1812)))))

(declare-fun b!49204 () Bool)

(assert (=> b!49204 (= e!31602 (set.union (set.insert (h!1905 l!1333) (as set.empty (Set tuple2!1812))) (content!51 (t!4368 l!1333))))))

(assert (= (and d!9825 c!6629) b!49203))

(assert (= (and d!9825 (not c!6629)) b!49204))

(declare-fun m!42717 () Bool)

(assert (=> b!49204 m!42717))

(declare-fun m!42719 () Bool)

(assert (=> b!49204 m!42719))

(assert (=> b!49169 d!9825))

(declare-fun c!6630 () Bool)

(declare-fun d!9831 () Bool)

(assert (=> d!9831 (= c!6630 (is-Nil!1326 (insertStrictlySorted!38 l!1333 newKey!147 newValue!147)))))

(declare-fun e!31603 () (Set tuple2!1812))

(assert (=> d!9831 (= (content!51 (insertStrictlySorted!38 l!1333 newKey!147 newValue!147)) e!31603)))

(declare-fun b!49205 () Bool)

(assert (=> b!49205 (= e!31603 (as set.empty (Set tuple2!1812)))))

(declare-fun b!49206 () Bool)

(assert (=> b!49206 (= e!31603 (set.union (set.insert (h!1905 (insertStrictlySorted!38 l!1333 newKey!147 newValue!147)) (as set.empty (Set tuple2!1812))) (content!51 (t!4368 (insertStrictlySorted!38 l!1333 newKey!147 newValue!147)))))))

(assert (= (and d!9831 c!6630) b!49205))

(assert (= (and d!9831 (not c!6630)) b!49206))

(declare-fun m!42721 () Bool)

(assert (=> b!49206 m!42721))

(declare-fun m!42723 () Bool)

(assert (=> b!49206 m!42723))

(assert (=> b!49169 d!9831))

(declare-fun b!49255 () Bool)

(declare-fun res!28533 () Bool)

(declare-fun e!31635 () Bool)

(assert (=> b!49255 (=> (not res!28533) (not e!31635))))

(declare-fun lt!20741 () List!1329)

(assert (=> b!49255 (= res!28533 (containsKey!122 lt!20741 newKey!147))))

(declare-fun b!49256 () Bool)

(declare-fun e!31633 () List!1329)

(declare-fun call!3818 () List!1329)

(assert (=> b!49256 (= e!31633 call!3818)))

(declare-fun b!49257 () Bool)

(declare-fun e!31634 () List!1329)

(declare-fun call!3817 () List!1329)

(assert (=> b!49257 (= e!31634 call!3817)))

(declare-fun b!49258 () Bool)

(declare-fun e!31638 () List!1329)

(assert (=> b!49258 (= e!31638 e!31633)))

(declare-fun c!6650 () Bool)

(assert (=> b!49258 (= c!6650 (and (is-Cons!1325 l!1333) (= (_1!916 (h!1905 l!1333)) newKey!147)))))

(declare-fun b!49259 () Bool)

(declare-fun contains!611 (List!1329 tuple2!1812) Bool)

(assert (=> b!49259 (= e!31635 (contains!611 lt!20741 (tuple2!1813 newKey!147 newValue!147)))))

(declare-fun b!49260 () Bool)

(declare-fun e!31637 () List!1329)

(assert (=> b!49260 (= e!31637 (insertStrictlySorted!38 (t!4368 l!1333) newKey!147 newValue!147))))

(declare-fun b!49261 () Bool)

(declare-fun c!6649 () Bool)

(assert (=> b!49261 (= c!6649 (and (is-Cons!1325 l!1333) (bvsgt (_1!916 (h!1905 l!1333)) newKey!147)))))

(assert (=> b!49261 (= e!31633 e!31634)))

(declare-fun b!49262 () Bool)

(assert (=> b!49262 (= e!31637 (ite c!6650 (t!4368 l!1333) (ite c!6649 (Cons!1325 (h!1905 l!1333) (t!4368 l!1333)) Nil!1326)))))

(declare-fun bm!3814 () Bool)

(assert (=> bm!3814 (= call!3817 call!3818)))

(declare-fun call!3819 () List!1329)

(declare-fun c!6648 () Bool)

(declare-fun bm!3815 () Bool)

(declare-fun $colon$colon!55 (List!1329 tuple2!1812) List!1329)

(assert (=> bm!3815 (= call!3819 ($colon$colon!55 e!31637 (ite c!6648 (h!1905 l!1333) (tuple2!1813 newKey!147 newValue!147))))))

(declare-fun c!6646 () Bool)

(assert (=> bm!3815 (= c!6646 c!6648)))

(declare-fun d!9833 () Bool)

(assert (=> d!9833 e!31635))

(declare-fun res!28532 () Bool)

(assert (=> d!9833 (=> (not res!28532) (not e!31635))))

(assert (=> d!9833 (= res!28532 (isStrictlySorted!270 lt!20741))))

(assert (=> d!9833 (= lt!20741 e!31638)))

(assert (=> d!9833 (= c!6648 (and (is-Cons!1325 l!1333) (bvslt (_1!916 (h!1905 l!1333)) newKey!147)))))

(assert (=> d!9833 (isStrictlySorted!270 l!1333)))

(assert (=> d!9833 (= (insertStrictlySorted!38 l!1333 newKey!147 newValue!147) lt!20741)))

(declare-fun b!49263 () Bool)

(assert (=> b!49263 (= e!31634 call!3817)))

(declare-fun b!49264 () Bool)

(assert (=> b!49264 (= e!31638 call!3819)))

(declare-fun bm!3816 () Bool)

(assert (=> bm!3816 (= call!3818 call!3819)))

(assert (= (and d!9833 c!6648) b!49264))

(assert (= (and d!9833 (not c!6648)) b!49258))

(assert (= (and b!49258 c!6650) b!49256))

(assert (= (and b!49258 (not c!6650)) b!49261))

(assert (= (and b!49261 c!6649) b!49257))

(assert (= (and b!49261 (not c!6649)) b!49263))

(assert (= (or b!49257 b!49263) bm!3814))

(assert (= (or b!49256 bm!3814) bm!3816))

(assert (= (or b!49264 bm!3816) bm!3815))

(assert (= (and bm!3815 c!6646) b!49260))

(assert (= (and bm!3815 (not c!6646)) b!49262))

(assert (= (and d!9833 res!28532) b!49255))

(assert (= (and b!49255 res!28533) b!49259))

(declare-fun m!42745 () Bool)

(assert (=> b!49255 m!42745))

(declare-fun m!42747 () Bool)

(assert (=> bm!3815 m!42747))

(declare-fun m!42749 () Bool)

(assert (=> b!49260 m!42749))

(declare-fun m!42751 () Bool)

(assert (=> b!49259 m!42751))

(declare-fun m!42753 () Bool)

(assert (=> d!9833 m!42753))

(assert (=> d!9833 m!42675))

(assert (=> b!49169 d!9833))

(declare-fun d!9847 () Bool)

(assert (=> d!9847 (= (set.union (content!51 (t!4368 l!1333)) (set.insert (tuple2!1813 newKey!147 newValue!147) (as set.empty (Set tuple2!1812)))) (content!51 (insertStrictlySorted!38 (t!4368 l!1333) newKey!147 newValue!147)))))

(declare-fun lt!20744 () Unit!1370)

(declare-fun choose!291 (List!1329 (_ BitVec 64) B!986) Unit!1370)

(assert (=> d!9847 (= lt!20744 (choose!291 (t!4368 l!1333) newKey!147 newValue!147))))

(assert (=> d!9847 (isStrictlySorted!270 (t!4368 l!1333))))

(assert (=> d!9847 (= (lemmaInsertStrictlySortedNotContainedContent!7 (t!4368 l!1333) newKey!147 newValue!147) lt!20744)))

(declare-fun bs!2282 () Bool)

(assert (= bs!2282 d!9847))

(assert (=> bs!2282 m!42677))

(declare-fun m!42755 () Bool)

(assert (=> bs!2282 m!42755))

(assert (=> bs!2282 m!42749))

(assert (=> bs!2282 m!42719))

(declare-fun m!42757 () Bool)

(assert (=> bs!2282 m!42757))

(assert (=> bs!2282 m!42749))

(declare-fun m!42759 () Bool)

(assert (=> bs!2282 m!42759))

(assert (=> b!49169 d!9847))

(declare-fun d!9849 () Bool)

(declare-fun res!28542 () Bool)

(declare-fun e!31651 () Bool)

(assert (=> d!9849 (=> res!28542 e!31651)))

(assert (=> d!9849 (= res!28542 (and (is-Cons!1325 l!1333) (= (_1!916 (h!1905 l!1333)) newKey!147)))))

(assert (=> d!9849 (= (containsKey!122 l!1333 newKey!147) e!31651)))

(declare-fun b!49285 () Bool)

(declare-fun e!31652 () Bool)

(assert (=> b!49285 (= e!31651 e!31652)))

(declare-fun res!28543 () Bool)

(assert (=> b!49285 (=> (not res!28543) (not e!31652))))

(assert (=> b!49285 (= res!28543 (and (or (not (is-Cons!1325 l!1333)) (bvsle (_1!916 (h!1905 l!1333)) newKey!147)) (is-Cons!1325 l!1333) (bvslt (_1!916 (h!1905 l!1333)) newKey!147)))))

(declare-fun b!49286 () Bool)

(assert (=> b!49286 (= e!31652 (containsKey!122 (t!4368 l!1333) newKey!147))))

(assert (= (and d!9849 (not res!28542)) b!49285))

(assert (= (and b!49285 res!28543) b!49286))

(declare-fun m!42761 () Bool)

(assert (=> b!49286 m!42761))

(assert (=> b!49167 d!9849))

(declare-fun d!9851 () Bool)

(declare-fun res!28550 () Bool)

(declare-fun e!31668 () Bool)

(assert (=> d!9851 (=> res!28550 e!31668)))

(assert (=> d!9851 (= res!28550 (or (is-Nil!1326 l!1333) (is-Nil!1326 (t!4368 l!1333))))))

(assert (=> d!9851 (= (isStrictlySorted!270 l!1333) e!31668)))

(declare-fun b!49313 () Bool)

(declare-fun e!31669 () Bool)

(assert (=> b!49313 (= e!31668 e!31669)))

(declare-fun res!28551 () Bool)

(assert (=> b!49313 (=> (not res!28551) (not e!31669))))

(assert (=> b!49313 (= res!28551 (bvslt (_1!916 (h!1905 l!1333)) (_1!916 (h!1905 (t!4368 l!1333)))))))

(declare-fun b!49314 () Bool)

(assert (=> b!49314 (= e!31669 (isStrictlySorted!270 (t!4368 l!1333)))))

(assert (= (and d!9851 (not res!28550)) b!49313))

(assert (= (and b!49313 res!28551) b!49314))

(assert (=> b!49314 m!42757))

(assert (=> start!7726 d!9851))

(declare-fun b!49319 () Bool)

(declare-fun e!31672 () Bool)

(declare-fun tp!6503 () Bool)

(assert (=> b!49319 (= e!31672 (and tp_is_empty!2137 tp!6503))))

(assert (=> b!49170 (= tp!6494 e!31672)))

(assert (= (and b!49170 (is-Cons!1325 (t!4368 l!1333))) b!49319))

(push 1)

(assert (not b!49260))

(assert (not b!49319))

(assert tp_is_empty!2137)

(assert (not b!49259))

(assert (not b!49255))

(assert (not b!49314))

(assert (not b!49204))

(assert (not b!49206))

(assert (not bm!3815))

(assert (not d!9847))

(assert (not b!49286))

(assert (not d!9833))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!49360 () Bool)

(declare-fun res!28571 () Bool)

(declare-fun e!31702 () Bool)

(assert (=> b!49360 (=> (not res!28571) (not e!31702))))

(declare-fun lt!20755 () List!1329)

(assert (=> b!49360 (= res!28571 (containsKey!122 lt!20755 newKey!147))))

(declare-fun b!49361 () Bool)

(declare-fun e!31700 () List!1329)

(declare-fun call!3839 () List!1329)

(assert (=> b!49361 (= e!31700 call!3839)))

(declare-fun b!49362 () Bool)

(declare-fun e!31701 () List!1329)

(declare-fun call!3838 () List!1329)

(assert (=> b!49362 (= e!31701 call!3838)))

(declare-fun b!49363 () Bool)

(declare-fun e!31704 () List!1329)

(assert (=> b!49363 (= e!31704 e!31700)))

(declare-fun c!6676 () Bool)

(assert (=> b!49363 (= c!6676 (and (is-Cons!1325 (t!4368 l!1333)) (= (_1!916 (h!1905 (t!4368 l!1333))) newKey!147)))))

(declare-fun b!49364 () Bool)

(assert (=> b!49364 (= e!31702 (contains!611 lt!20755 (tuple2!1813 newKey!147 newValue!147)))))

(declare-fun e!31703 () List!1329)

(declare-fun b!49365 () Bool)

(assert (=> b!49365 (= e!31703 (insertStrictlySorted!38 (t!4368 (t!4368 l!1333)) newKey!147 newValue!147))))

(declare-fun b!49366 () Bool)

(declare-fun c!6675 () Bool)

(assert (=> b!49366 (= c!6675 (and (is-Cons!1325 (t!4368 l!1333)) (bvsgt (_1!916 (h!1905 (t!4368 l!1333))) newKey!147)))))

(assert (=> b!49366 (= e!31700 e!31701)))

(declare-fun b!49367 () Bool)

(assert (=> b!49367 (= e!31703 (ite c!6676 (t!4368 (t!4368 l!1333)) (ite c!6675 (Cons!1325 (h!1905 (t!4368 l!1333)) (t!4368 (t!4368 l!1333))) Nil!1326)))))

(declare-fun bm!3835 () Bool)

(assert (=> bm!3835 (= call!3838 call!3839)))

(declare-fun bm!3836 () Bool)

(declare-fun c!6674 () Bool)

(declare-fun call!3840 () List!1329)

(assert (=> bm!3836 (= call!3840 ($colon$colon!55 e!31703 (ite c!6674 (h!1905 (t!4368 l!1333)) (tuple2!1813 newKey!147 newValue!147))))))

(declare-fun c!6673 () Bool)

(assert (=> bm!3836 (= c!6673 c!6674)))

(declare-fun d!9861 () Bool)

(assert (=> d!9861 e!31702))

(declare-fun res!28570 () Bool)

(assert (=> d!9861 (=> (not res!28570) (not e!31702))))

(assert (=> d!9861 (= res!28570 (isStrictlySorted!270 lt!20755))))

(assert (=> d!9861 (= lt!20755 e!31704)))

(assert (=> d!9861 (= c!6674 (and (is-Cons!1325 (t!4368 l!1333)) (bvslt (_1!916 (h!1905 (t!4368 l!1333))) newKey!147)))))

(assert (=> d!9861 (isStrictlySorted!270 (t!4368 l!1333))))

(assert (=> d!9861 (= (insertStrictlySorted!38 (t!4368 l!1333) newKey!147 newValue!147) lt!20755)))

(declare-fun b!49368 () Bool)

(assert (=> b!49368 (= e!31701 call!3838)))

(declare-fun b!49369 () Bool)

(assert (=> b!49369 (= e!31704 call!3840)))

(declare-fun bm!3837 () Bool)

(assert (=> bm!3837 (= call!3839 call!3840)))

(assert (= (and d!9861 c!6674) b!49369))

(assert (= (and d!9861 (not c!6674)) b!49363))

(assert (= (and b!49363 c!6676) b!49361))

(assert (= (and b!49363 (not c!6676)) b!49366))

(assert (= (and b!49366 c!6675) b!49362))

(assert (= (and b!49366 (not c!6675)) b!49368))

(assert (= (or b!49362 b!49368) bm!3835))

(assert (= (or b!49361 bm!3835) bm!3837))

(assert (= (or b!49369 bm!3837) bm!3836))

(assert (= (and bm!3836 c!6673) b!49365))

(assert (= (and bm!3836 (not c!6673)) b!49367))

(assert (= (and d!9861 res!28570) b!49360))

(assert (= (and b!49360 res!28571) b!49364))

(declare-fun m!42795 () Bool)

(assert (=> b!49360 m!42795))

(declare-fun m!42797 () Bool)

(assert (=> bm!3836 m!42797))

(declare-fun m!42799 () Bool)

(assert (=> b!49365 m!42799))

(declare-fun m!42801 () Bool)

(assert (=> b!49364 m!42801))

(declare-fun m!42803 () Bool)

(assert (=> d!9861 m!42803))

(assert (=> d!9861 m!42757))

(assert (=> b!49260 d!9861))

(declare-fun d!9863 () Bool)

(declare-fun res!28572 () Bool)

(declare-fun e!31705 () Bool)

(assert (=> d!9863 (=> res!28572 e!31705)))

(assert (=> d!9863 (= res!28572 (and (is-Cons!1325 lt!20741) (= (_1!916 (h!1905 lt!20741)) newKey!147)))))

(assert (=> d!9863 (= (containsKey!122 lt!20741 newKey!147) e!31705)))

(declare-fun b!49370 () Bool)

(declare-fun e!31706 () Bool)

(assert (=> b!49370 (= e!31705 e!31706)))

(declare-fun res!28573 () Bool)

(assert (=> b!49370 (=> (not res!28573) (not e!31706))))

(assert (=> b!49370 (= res!28573 (and (or (not (is-Cons!1325 lt!20741)) (bvsle (_1!916 (h!1905 lt!20741)) newKey!147)) (is-Cons!1325 lt!20741) (bvslt (_1!916 (h!1905 lt!20741)) newKey!147)))))

(declare-fun b!49371 () Bool)

(assert (=> b!49371 (= e!31706 (containsKey!122 (t!4368 lt!20741) newKey!147))))

(assert (= (and d!9863 (not res!28572)) b!49370))

(assert (= (and b!49370 res!28573) b!49371))

(declare-fun m!42805 () Bool)

(assert (=> b!49371 m!42805))

(assert (=> b!49255 d!9863))

(declare-fun d!9865 () Bool)

(assert (=> d!9865 (= (set.union (content!51 (t!4368 l!1333)) (set.insert (tuple2!1813 newKey!147 newValue!147) (as set.empty (Set tuple2!1812)))) (content!51 (insertStrictlySorted!38 (t!4368 l!1333) newKey!147 newValue!147)))))

(assert (=> d!9865 true))

(declare-fun _$19!23 () Unit!1370)

(assert (=> d!9865 (= (choose!291 (t!4368 l!1333) newKey!147 newValue!147) _$19!23)))

(declare-fun bs!2285 () Bool)

(assert (= bs!2285 d!9865))

(assert (=> bs!2285 m!42719))

(assert (=> bs!2285 m!42677))

(assert (=> bs!2285 m!42749))

(assert (=> bs!2285 m!42749))

(assert (=> bs!2285 m!42759))

(assert (=> d!9847 d!9865))

(declare-fun d!9871 () Bool)

(declare-fun c!6677 () Bool)

(assert (=> d!9871 (= c!6677 (is-Nil!1326 (t!4368 l!1333)))))

(declare-fun e!31709 () (Set tuple2!1812))

(assert (=> d!9871 (= (content!51 (t!4368 l!1333)) e!31709)))

(declare-fun b!49374 () Bool)

(assert (=> b!49374 (= e!31709 (as set.empty (Set tuple2!1812)))))

(declare-fun b!49375 () Bool)

(assert (=> b!49375 (= e!31709 (set.union (set.insert (h!1905 (t!4368 l!1333)) (as set.empty (Set tuple2!1812))) (content!51 (t!4368 (t!4368 l!1333)))))))

(assert (= (and d!9871 c!6677) b!49374))

(assert (= (and d!9871 (not c!6677)) b!49375))

(declare-fun m!42809 () Bool)

(assert (=> b!49375 m!42809))

(declare-fun m!42811 () Bool)

(assert (=> b!49375 m!42811))

(assert (=> d!9847 d!9871))

(assert (=> d!9847 d!9861))

(declare-fun d!9875 () Bool)

(declare-fun c!6678 () Bool)

(assert (=> d!9875 (= c!6678 (is-Nil!1326 (insertStrictlySorted!38 (t!4368 l!1333) newKey!147 newValue!147)))))

(declare-fun e!31710 () (Set tuple2!1812))

(assert (=> d!9875 (= (content!51 (insertStrictlySorted!38 (t!4368 l!1333) newKey!147 newValue!147)) e!31710)))

(declare-fun b!49376 () Bool)

(assert (=> b!49376 (= e!31710 (as set.empty (Set tuple2!1812)))))

(declare-fun b!49377 () Bool)

(assert (=> b!49377 (= e!31710 (set.union (set.insert (h!1905 (insertStrictlySorted!38 (t!4368 l!1333) newKey!147 newValue!147)) (as set.empty (Set tuple2!1812))) (content!51 (t!4368 (insertStrictlySorted!38 (t!4368 l!1333) newKey!147 newValue!147)))))))

(assert (= (and d!9875 c!6678) b!49376))

(assert (= (and d!9875 (not c!6678)) b!49377))

(declare-fun m!42813 () Bool)

(assert (=> b!49377 m!42813))

(declare-fun m!42815 () Bool)

(assert (=> b!49377 m!42815))

(assert (=> d!9847 d!9875))

(declare-fun d!9877 () Bool)

(declare-fun res!28576 () Bool)

(declare-fun e!31711 () Bool)

(assert (=> d!9877 (=> res!28576 e!31711)))

(assert (=> d!9877 (= res!28576 (or (is-Nil!1326 (t!4368 l!1333)) (is-Nil!1326 (t!4368 (t!4368 l!1333)))))))

(assert (=> d!9877 (= (isStrictlySorted!270 (t!4368 l!1333)) e!31711)))

(declare-fun b!49378 () Bool)

(declare-fun e!31712 () Bool)

(assert (=> b!49378 (= e!31711 e!31712)))

(declare-fun res!28577 () Bool)

(assert (=> b!49378 (=> (not res!28577) (not e!31712))))

(assert (=> b!49378 (= res!28577 (bvslt (_1!916 (h!1905 (t!4368 l!1333))) (_1!916 (h!1905 (t!4368 (t!4368 l!1333))))))))

(declare-fun b!49379 () Bool)

(assert (=> b!49379 (= e!31712 (isStrictlySorted!270 (t!4368 (t!4368 l!1333))))))

(assert (= (and d!9877 (not res!28576)) b!49378))

(assert (= (and b!49378 res!28577) b!49379))

(declare-fun m!42817 () Bool)

(assert (=> b!49379 m!42817))

(assert (=> d!9847 d!9877))

(declare-fun d!9879 () Bool)

(declare-fun res!28578 () Bool)

(declare-fun e!31713 () Bool)

(assert (=> d!9879 (=> res!28578 e!31713)))

(assert (=> d!9879 (= res!28578 (and (is-Cons!1325 (t!4368 l!1333)) (= (_1!916 (h!1905 (t!4368 l!1333))) newKey!147)))))

(assert (=> d!9879 (= (containsKey!122 (t!4368 l!1333) newKey!147) e!31713)))

(declare-fun b!49380 () Bool)

(declare-fun e!31714 () Bool)

(assert (=> b!49380 (= e!31713 e!31714)))

(declare-fun res!28579 () Bool)

(assert (=> b!49380 (=> (not res!28579) (not e!31714))))

(assert (=> b!49380 (= res!28579 (and (or (not (is-Cons!1325 (t!4368 l!1333))) (bvsle (_1!916 (h!1905 (t!4368 l!1333))) newKey!147)) (is-Cons!1325 (t!4368 l!1333)) (bvslt (_1!916 (h!1905 (t!4368 l!1333))) newKey!147)))))

(declare-fun b!49381 () Bool)

(assert (=> b!49381 (= e!31714 (containsKey!122 (t!4368 (t!4368 l!1333)) newKey!147))))

(assert (= (and d!9879 (not res!28578)) b!49380))

(assert (= (and b!49380 res!28579) b!49381))

(declare-fun m!42819 () Bool)

(assert (=> b!49381 m!42819))

(assert (=> b!49286 d!9879))

(assert (=> b!49314 d!9877))

(declare-fun c!6679 () Bool)

(declare-fun d!9881 () Bool)

(assert (=> d!9881 (= c!6679 (is-Nil!1326 (t!4368 (insertStrictlySorted!38 l!1333 newKey!147 newValue!147))))))

(declare-fun e!31715 () (Set tuple2!1812))

(assert (=> d!9881 (= (content!51 (t!4368 (insertStrictlySorted!38 l!1333 newKey!147 newValue!147))) e!31715)))

(declare-fun b!49382 () Bool)

(assert (=> b!49382 (= e!31715 (as set.empty (Set tuple2!1812)))))

(declare-fun b!49383 () Bool)

(assert (=> b!49383 (= e!31715 (set.union (set.insert (h!1905 (t!4368 (insertStrictlySorted!38 l!1333 newKey!147 newValue!147))) (as set.empty (Set tuple2!1812))) (content!51 (t!4368 (t!4368 (insertStrictlySorted!38 l!1333 newKey!147 newValue!147))))))))

(assert (= (and d!9881 c!6679) b!49382))

(assert (= (and d!9881 (not c!6679)) b!49383))

(declare-fun m!42821 () Bool)

(assert (=> b!49383 m!42821))

(declare-fun m!42823 () Bool)

(assert (=> b!49383 m!42823))

(assert (=> b!49206 d!9881))

(declare-fun d!9883 () Bool)

(assert (=> d!9883 (= ($colon$colon!55 e!31637 (ite c!6648 (h!1905 l!1333) (tuple2!1813 newKey!147 newValue!147))) (Cons!1325 (ite c!6648 (h!1905 l!1333) (tuple2!1813 newKey!147 newValue!147)) e!31637))))

(assert (=> bm!3815 d!9883))

(assert (=> b!49204 d!9871))

(declare-fun d!9885 () Bool)

(declare-fun res!28580 () Bool)

(declare-fun e!31716 () Bool)

(assert (=> d!9885 (=> res!28580 e!31716)))

(assert (=> d!9885 (= res!28580 (or (is-Nil!1326 lt!20741) (is-Nil!1326 (t!4368 lt!20741))))))

(assert (=> d!9885 (= (isStrictlySorted!270 lt!20741) e!31716)))

(declare-fun b!49384 () Bool)

(declare-fun e!31717 () Bool)

(assert (=> b!49384 (= e!31716 e!31717)))

(declare-fun res!28581 () Bool)

(assert (=> b!49384 (=> (not res!28581) (not e!31717))))

(assert (=> b!49384 (= res!28581 (bvslt (_1!916 (h!1905 lt!20741)) (_1!916 (h!1905 (t!4368 lt!20741)))))))

(declare-fun b!49385 () Bool)

(assert (=> b!49385 (= e!31717 (isStrictlySorted!270 (t!4368 lt!20741)))))

(assert (= (and d!9885 (not res!28580)) b!49384))

(assert (= (and b!49384 res!28581) b!49385))

(declare-fun m!42825 () Bool)

(assert (=> b!49385 m!42825))

(assert (=> d!9833 d!9885))

(assert (=> d!9833 d!9851))

(declare-fun d!9887 () Bool)

(declare-fun lt!20759 () Bool)

(assert (=> d!9887 (= lt!20759 (set.member (tuple2!1813 newKey!147 newValue!147) (content!51 lt!20741)))))

(declare-fun e!31731 () Bool)

(assert (=> d!9887 (= lt!20759 e!31731)))

(declare-fun res!28590 () Bool)

(assert (=> d!9887 (=> (not res!28590) (not e!31731))))

(assert (=> d!9887 (= res!28590 (is-Cons!1325 lt!20741))))

(assert (=> d!9887 (= (contains!611 lt!20741 (tuple2!1813 newKey!147 newValue!147)) lt!20759)))

(declare-fun b!49406 () Bool)

(declare-fun e!31732 () Bool)

(assert (=> b!49406 (= e!31731 e!31732)))

(declare-fun res!28591 () Bool)

(assert (=> b!49406 (=> res!28591 e!31732)))

(assert (=> b!49406 (= res!28591 (= (h!1905 lt!20741) (tuple2!1813 newKey!147 newValue!147)))))

(declare-fun b!49407 () Bool)

(assert (=> b!49407 (= e!31732 (contains!611 (t!4368 lt!20741) (tuple2!1813 newKey!147 newValue!147)))))

(assert (= (and d!9887 res!28590) b!49406))

(assert (= (and b!49406 (not res!28591)) b!49407))

(declare-fun m!42847 () Bool)

(assert (=> d!9887 m!42847))

(declare-fun m!42849 () Bool)

(assert (=> d!9887 m!42849))

(declare-fun m!42851 () Bool)

(assert (=> b!49407 m!42851))

(assert (=> b!49259 d!9887))

(declare-fun b!49408 () Bool)

(declare-fun e!31733 () Bool)

(declare-fun tp!6510 () Bool)

(assert (=> b!49408 (= e!31733 (and tp_is_empty!2137 tp!6510))))

(assert (=> b!49319 (= tp!6503 e!31733)))

(assert (= (and b!49319 (is-Cons!1325 (t!4368 (t!4368 l!1333)))) b!49408))

(push 1)

(assert (not b!49381))

(assert (not b!49383))

(assert (not d!9865))

(assert (not bm!3836))

(assert (not b!49408))

(assert (not b!49377))

(assert (not b!49371))

(assert (not b!49360))

(assert (not b!49375))

(assert (not b!49407))

(assert (not d!9887))

(assert (not b!49385))

(assert (not b!49379))

(assert (not b!49365))

(assert tp_is_empty!2137)

(assert (not d!9861))

(assert (not b!49364))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

