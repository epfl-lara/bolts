; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7730 () Bool)

(assert start!7730)

(declare-fun b!49191 () Bool)

(declare-fun res!28515 () Bool)

(declare-fun e!31596 () Bool)

(assert (=> b!49191 (=> (not res!28515) (not e!31596))))

(declare-datatypes ((B!990 0))(
  ( (B!991 (val!1115 Int)) )
))
(declare-datatypes ((tuple2!1816 0))(
  ( (tuple2!1817 (_1!918 (_ BitVec 64)) (_2!918 B!990)) )
))
(declare-datatypes ((List!1331 0))(
  ( (Nil!1328) (Cons!1327 (h!1907 tuple2!1816) (t!4370 List!1331)) )
))
(declare-fun l!1333 () List!1331)

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!124 (List!1331 (_ BitVec 64)) Bool)

(assert (=> b!49191 (= res!28515 (not (containsKey!124 l!1333 newKey!147)))))

(declare-fun b!49194 () Bool)

(declare-fun e!31597 () Bool)

(declare-fun tp_is_empty!2141 () Bool)

(declare-fun tp!6500 () Bool)

(assert (=> b!49194 (= e!31597 (and tp_is_empty!2141 tp!6500))))

(declare-fun b!49192 () Bool)

(declare-fun res!28514 () Bool)

(assert (=> b!49192 (=> (not res!28514) (not e!31596))))

(assert (=> b!49192 (= res!28514 (not (is-Nil!1328 l!1333)))))

(declare-fun res!28513 () Bool)

(assert (=> start!7730 (=> (not res!28513) (not e!31596))))

(declare-fun isStrictlySorted!272 (List!1331) Bool)

(assert (=> start!7730 (= res!28513 (isStrictlySorted!272 l!1333))))

(assert (=> start!7730 e!31596))

(assert (=> start!7730 e!31597))

(assert (=> start!7730 true))

(assert (=> start!7730 tp_is_empty!2141))

(declare-fun newValue!147 () B!990)

(declare-fun b!49193 () Bool)

(declare-fun content!53 (List!1331) (Set tuple2!1816))

(declare-fun insertStrictlySorted!40 (List!1331 (_ BitVec 64) B!990) List!1331)

(assert (=> b!49193 (= e!31596 (not (= (union (content!53 l!1333) (insert (tuple2!1817 newKey!147 newValue!147) (as emptyset (Set tuple2!1816)))) (content!53 (insertStrictlySorted!40 l!1333 newKey!147 newValue!147)))))))

(declare-datatypes ((Unit!1374 0))(
  ( (Unit!1375) )
))
(declare-fun lt!20736 () Unit!1374)

(declare-fun lemmaInsertStrictlySortedNotContainedContent!9 (List!1331 (_ BitVec 64) B!990) Unit!1374)

(assert (=> b!49193 (= lt!20736 (lemmaInsertStrictlySortedNotContainedContent!9 (t!4370 l!1333) newKey!147 newValue!147))))

(assert (= (and start!7730 res!28513) b!49191))

(assert (= (and b!49191 res!28515) b!49192))

(assert (= (and b!49192 res!28514) b!49193))

(assert (= (and start!7730 (is-Cons!1327 l!1333)) b!49194))

(declare-fun m!42703 () Bool)

(assert (=> b!49191 m!42703))

(declare-fun m!42705 () Bool)

(assert (=> start!7730 m!42705))

(declare-fun m!42707 () Bool)

(assert (=> b!49193 m!42707))

(declare-fun m!42709 () Bool)

(assert (=> b!49193 m!42709))

(declare-fun m!42711 () Bool)

(assert (=> b!49193 m!42711))

(assert (=> b!49193 m!42711))

(declare-fun m!42713 () Bool)

(assert (=> b!49193 m!42713))

(declare-fun m!42715 () Bool)

(assert (=> b!49193 m!42715))

(push 1)

(assert (not b!49194))

(assert (not b!49191))

(assert (not b!49193))

(assert tp_is_empty!2141)

(assert (not start!7730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9829 () Bool)

(declare-fun res!28520 () Bool)

(declare-fun e!31610 () Bool)

(assert (=> d!9829 (=> res!28520 e!31610)))

(assert (=> d!9829 (= res!28520 (and (is-Cons!1327 l!1333) (= (_1!918 (h!1907 l!1333)) newKey!147)))))

(assert (=> d!9829 (= (containsKey!124 l!1333 newKey!147) e!31610)))

(declare-fun b!49215 () Bool)

(declare-fun e!31611 () Bool)

(assert (=> b!49215 (= e!31610 e!31611)))

(declare-fun res!28521 () Bool)

(assert (=> b!49215 (=> (not res!28521) (not e!31611))))

(assert (=> b!49215 (= res!28521 (and (or (not (is-Cons!1327 l!1333)) (bvsle (_1!918 (h!1907 l!1333)) newKey!147)) (is-Cons!1327 l!1333) (bvslt (_1!918 (h!1907 l!1333)) newKey!147)))))

(declare-fun b!49216 () Bool)

(assert (=> b!49216 (= e!31611 (containsKey!124 (t!4370 l!1333) newKey!147))))

(assert (= (and d!9829 (not res!28520)) b!49215))

(assert (= (and b!49215 res!28521) b!49216))

(declare-fun m!42733 () Bool)

(assert (=> b!49216 m!42733))

(assert (=> b!49191 d!9829))

(declare-fun d!9839 () Bool)

(declare-fun res!28526 () Bool)

(declare-fun e!31616 () Bool)

(assert (=> d!9839 (=> res!28526 e!31616)))

(assert (=> d!9839 (= res!28526 (or (is-Nil!1328 l!1333) (is-Nil!1328 (t!4370 l!1333))))))

(assert (=> d!9839 (= (isStrictlySorted!272 l!1333) e!31616)))

(declare-fun b!49221 () Bool)

(declare-fun e!31617 () Bool)

(assert (=> b!49221 (= e!31616 e!31617)))

(declare-fun res!28527 () Bool)

(assert (=> b!49221 (=> (not res!28527) (not e!31617))))

(assert (=> b!49221 (= res!28527 (bvslt (_1!918 (h!1907 l!1333)) (_1!918 (h!1907 (t!4370 l!1333)))))))

(declare-fun b!49222 () Bool)

(assert (=> b!49222 (= e!31617 (isStrictlySorted!272 (t!4370 l!1333)))))

(assert (= (and d!9839 (not res!28526)) b!49221))

(assert (= (and b!49221 res!28527) b!49222))

(declare-fun m!42735 () Bool)

(assert (=> b!49222 m!42735))

(assert (=> start!7730 d!9839))

(declare-fun d!9841 () Bool)

(declare-fun c!6643 () Bool)

(assert (=> d!9841 (= c!6643 (is-Nil!1328 l!1333))))

(declare-fun e!31630 () (Set tuple2!1816))

(assert (=> d!9841 (= (content!53 l!1333) e!31630)))

(declare-fun b!49247 () Bool)

(assert (=> b!49247 (= e!31630 (as emptyset (Set tuple2!1816)))))

(declare-fun b!49248 () Bool)

(assert (=> b!49248 (= e!31630 (union (insert (h!1907 l!1333) (as emptyset (Set tuple2!1816))) (content!53 (t!4370 l!1333))))))

(assert (= (and d!9841 c!6643) b!49247))

(assert (= (and d!9841 (not c!6643)) b!49248))

(declare-fun m!42737 () Bool)

(assert (=> b!49248 m!42737))

(declare-fun m!42739 () Bool)

(assert (=> b!49248 m!42739))

(assert (=> b!49193 d!9841))

(declare-fun c!6644 () Bool)

(declare-fun d!9843 () Bool)

(assert (=> d!9843 (= c!6644 (is-Nil!1328 (insertStrictlySorted!40 l!1333 newKey!147 newValue!147)))))

(declare-fun e!31631 () (Set tuple2!1816))

(assert (=> d!9843 (= (content!53 (insertStrictlySorted!40 l!1333 newKey!147 newValue!147)) e!31631)))

(declare-fun b!49249 () Bool)

(assert (=> b!49249 (= e!31631 (as emptyset (Set tuple2!1816)))))

(declare-fun b!49250 () Bool)

(assert (=> b!49250 (= e!31631 (union (insert (h!1907 (insertStrictlySorted!40 l!1333 newKey!147 newValue!147)) (as emptyset (Set tuple2!1816))) (content!53 (t!4370 (insertStrictlySorted!40 l!1333 newKey!147 newValue!147)))))))

(assert (= (and d!9843 c!6644) b!49249))

(assert (= (and d!9843 (not c!6644)) b!49250))

(declare-fun m!42741 () Bool)

(assert (=> b!49250 m!42741))

(declare-fun m!42743 () Bool)

(assert (=> b!49250 m!42743))

(assert (=> b!49193 d!9843))

(declare-fun b!49328 () Bool)

(declare-fun e!31678 () List!1331)

(declare-fun call!3835 () List!1331)

(assert (=> b!49328 (= e!31678 call!3835)))

(declare-fun b!49329 () Bool)

(declare-fun c!6671 () Bool)

(assert (=> b!49329 (= c!6671 (and (is-Cons!1327 l!1333) (bvsgt (_1!918 (h!1907 l!1333)) newKey!147)))))

(declare-fun e!31677 () List!1331)

(assert (=> b!49329 (= e!31677 e!31678)))

(declare-fun b!49330 () Bool)

(assert (=> b!49330 (= e!31678 call!3835)))

(declare-fun e!31679 () List!1331)

(declare-fun c!6670 () Bool)

(declare-fun b!49331 () Bool)

(assert (=> b!49331 (= e!31679 (ite c!6670 (t!4370 l!1333) (ite c!6671 (Cons!1327 (h!1907 l!1333) (t!4370 l!1333)) Nil!1328)))))

(declare-fun bm!3832 () Bool)

(declare-fun call!3837 () List!1331)

(assert (=> bm!3832 (= call!3835 call!3837)))

(declare-fun b!49332 () Bool)

(declare-fun e!31680 () List!1331)

(assert (=> b!49332 (= e!31680 e!31677)))

(assert (=> b!49332 (= c!6670 (and (is-Cons!1327 l!1333) (= (_1!918 (h!1907 l!1333)) newKey!147)))))

(declare-fun b!49334 () Bool)

(declare-fun call!3836 () List!1331)

(assert (=> b!49334 (= e!31680 call!3836)))

(declare-fun b!49335 () Bool)

(assert (=> b!49335 (= e!31677 call!3837)))

(declare-fun bm!3833 () Bool)

(assert (=> bm!3833 (= call!3837 call!3836)))

(declare-fun bm!3834 () Bool)

(declare-fun c!6669 () Bool)

(declare-fun $colon$colon!57 (List!1331 tuple2!1816) List!1331)

(assert (=> bm!3834 (= call!3836 ($colon$colon!57 e!31679 (ite c!6669 (h!1907 l!1333) (tuple2!1817 newKey!147 newValue!147))))))

(declare-fun c!6672 () Bool)

(assert (=> bm!3834 (= c!6672 c!6669)))

(declare-fun d!9845 () Bool)

(declare-fun e!31681 () Bool)

(assert (=> d!9845 e!31681))

(declare-fun res!28556 () Bool)

(assert (=> d!9845 (=> (not res!28556) (not e!31681))))

(declare-fun lt!20751 () List!1331)

(assert (=> d!9845 (= res!28556 (isStrictlySorted!272 lt!20751))))

(assert (=> d!9845 (= lt!20751 e!31680)))

(assert (=> d!9845 (= c!6669 (and (is-Cons!1327 l!1333) (bvslt (_1!918 (h!1907 l!1333)) newKey!147)))))

(assert (=> d!9845 (isStrictlySorted!272 l!1333)))

(assert (=> d!9845 (= (insertStrictlySorted!40 l!1333 newKey!147 newValue!147) lt!20751)))

(declare-fun b!49333 () Bool)

(declare-fun contains!613 (List!1331 tuple2!1816) Bool)

(assert (=> b!49333 (= e!31681 (contains!613 lt!20751 (tuple2!1817 newKey!147 newValue!147)))))

(declare-fun b!49336 () Bool)

(declare-fun res!28557 () Bool)

(assert (=> b!49336 (=> (not res!28557) (not e!31681))))

(assert (=> b!49336 (= res!28557 (containsKey!124 lt!20751 newKey!147))))

(declare-fun b!49337 () Bool)

(assert (=> b!49337 (= e!31679 (insertStrictlySorted!40 (t!4370 l!1333) newKey!147 newValue!147))))

(assert (= (and d!9845 c!6669) b!49334))

(assert (= (and d!9845 (not c!6669)) b!49332))

(assert (= (and b!49332 c!6670) b!49335))

(assert (= (and b!49332 (not c!6670)) b!49329))

(assert (= (and b!49329 c!6671) b!49328))

(assert (= (and b!49329 (not c!6671)) b!49330))

(assert (= (or b!49328 b!49330) bm!3832))

(assert (= (or b!49335 bm!3832) bm!3833))

(assert (= (or b!49334 bm!3833) bm!3834))

(assert (= (and bm!3834 c!6672) b!49337))

(assert (= (and bm!3834 (not c!6672)) b!49331))

(assert (= (and d!9845 res!28556) b!49336))

(assert (= (and b!49336 res!28557) b!49333))

(declare-fun m!42779 () Bool)

(assert (=> b!49333 m!42779))

(declare-fun m!42781 () Bool)

(assert (=> b!49336 m!42781))

(declare-fun m!42783 () Bool)

(assert (=> b!49337 m!42783))

(declare-fun m!42785 () Bool)

(assert (=> d!9845 m!42785))

(assert (=> d!9845 m!42705))

(declare-fun m!42787 () Bool)

(assert (=> bm!3834 m!42787))

(assert (=> b!49193 d!9845))

(declare-fun d!9857 () Bool)

(assert (=> d!9857 (= (union (content!53 (t!4370 l!1333)) (insert (tuple2!1817 newKey!147 newValue!147) (as emptyset (Set tuple2!1816)))) (content!53 (insertStrictlySorted!40 (t!4370 l!1333) newKey!147 newValue!147)))))

(declare-fun lt!20754 () Unit!1374)

(declare-fun choose!293 (List!1331 (_ BitVec 64) B!990) Unit!1374)

(assert (=> d!9857 (= lt!20754 (choose!293 (t!4370 l!1333) newKey!147 newValue!147))))

(assert (=> d!9857 (isStrictlySorted!272 (t!4370 l!1333))))

(assert (=> d!9857 (= (lemmaInsertStrictlySortedNotContainedContent!9 (t!4370 l!1333) newKey!147 newValue!147) lt!20754)))

(declare-fun bs!2284 () Bool)

(assert (= bs!2284 d!9857))

(assert (=> bs!2284 m!42783))

(assert (=> bs!2284 m!42783))

(declare-fun m!42791 () Bool)

(assert (=> bs!2284 m!42791))

(assert (=> bs!2284 m!42707))

(assert (=> bs!2284 m!42739))

(declare-fun m!42793 () Bool)

(assert (=> bs!2284 m!42793))

(assert (=> bs!2284 m!42735))

(assert (=> b!49193 d!9857))

(declare-fun b!49359 () Bool)

(declare-fun e!31699 () Bool)

(declare-fun tp!6509 () Bool)

(assert (=> b!49359 (= e!31699 (and tp_is_empty!2141 tp!6509))))

(assert (=> b!49194 (= tp!6500 e!31699)))

(assert (= (and b!49194 (is-Cons!1327 (t!4370 l!1333))) b!49359))

(push 1)

(assert (not bm!3834))

(assert (not b!49222))

(assert (not b!49359))

(assert (not d!9857))

(assert (not b!49337))

(assert (not b!49248))

(assert tp_is_empty!2141)

(assert (not d!9845))

(assert (not b!49336))

(assert (not b!49250))

(assert (not b!49333))

(assert (not b!49216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9905 () Bool)

(assert (=> d!9905 (= ($colon$colon!57 e!31679 (ite c!6669 (h!1907 l!1333) (tuple2!1817 newKey!147 newValue!147))) (Cons!1327 (ite c!6669 (h!1907 l!1333) (tuple2!1817 newKey!147 newValue!147)) e!31679))))

(assert (=> bm!3834 d!9905))

(declare-fun c!6687 () Bool)

(declare-fun d!9907 () Bool)

(assert (=> d!9907 (= c!6687 (is-Nil!1328 (t!4370 (insertStrictlySorted!40 l!1333 newKey!147 newValue!147))))))

(declare-fun e!31746 () (Set tuple2!1816))

(assert (=> d!9907 (= (content!53 (t!4370 (insertStrictlySorted!40 l!1333 newKey!147 newValue!147))) e!31746)))

(declare-fun b!49422 () Bool)

(assert (=> b!49422 (= e!31746 (as emptyset (Set tuple2!1816)))))

(declare-fun b!49423 () Bool)

(assert (=> b!49423 (= e!31746 (union (insert (h!1907 (t!4370 (insertStrictlySorted!40 l!1333 newKey!147 newValue!147))) (as emptyset (Set tuple2!1816))) (content!53 (t!4370 (t!4370 (insertStrictlySorted!40 l!1333 newKey!147 newValue!147))))))))

(assert (= (and d!9907 c!6687) b!49422))

(assert (= (and d!9907 (not c!6687)) b!49423))

(declare-fun m!42867 () Bool)

(assert (=> b!49423 m!42867))

(declare-fun m!42869 () Bool)

(assert (=> b!49423 m!42869))

(assert (=> b!49250 d!9907))

(declare-fun d!9909 () Bool)

(declare-fun lt!20765 () Bool)

(assert (=> d!9909 (= lt!20765 (member (tuple2!1817 newKey!147 newValue!147) (content!53 lt!20751)))))

(declare-fun e!31751 () Bool)

(assert (=> d!9909 (= lt!20765 e!31751)))

(declare-fun res!28607 () Bool)

(assert (=> d!9909 (=> (not res!28607) (not e!31751))))

(assert (=> d!9909 (= res!28607 (is-Cons!1327 lt!20751))))

(assert (=> d!9909 (= (contains!613 lt!20751 (tuple2!1817 newKey!147 newValue!147)) lt!20765)))

(declare-fun b!49428 () Bool)

(declare-fun e!31752 () Bool)

(assert (=> b!49428 (= e!31751 e!31752)))

(declare-fun res!28606 () Bool)

(assert (=> b!49428 (=> res!28606 e!31752)))

(assert (=> b!49428 (= res!28606 (= (h!1907 lt!20751) (tuple2!1817 newKey!147 newValue!147)))))

(declare-fun b!49429 () Bool)

(assert (=> b!49429 (= e!31752 (contains!613 (t!4370 lt!20751) (tuple2!1817 newKey!147 newValue!147)))))

(assert (= (and d!9909 res!28607) b!49428))

(assert (= (and b!49428 (not res!28606)) b!49429))

(declare-fun m!42871 () Bool)

(assert (=> d!9909 m!42871))

(declare-fun m!42873 () Bool)

(assert (=> d!9909 m!42873))

(declare-fun m!42875 () Bool)

(assert (=> b!49429 m!42875))

(assert (=> b!49333 d!9909))

(declare-fun d!9911 () Bool)

(declare-fun res!28608 () Bool)

(declare-fun e!31753 () Bool)

(assert (=> d!9911 (=> res!28608 e!31753)))

(assert (=> d!9911 (= res!28608 (or (is-Nil!1328 lt!20751) (is-Nil!1328 (t!4370 lt!20751))))))

(assert (=> d!9911 (= (isStrictlySorted!272 lt!20751) e!31753)))

(declare-fun b!49430 () Bool)

(declare-fun e!31754 () Bool)

(assert (=> b!49430 (= e!31753 e!31754)))

(declare-fun res!28609 () Bool)

(assert (=> b!49430 (=> (not res!28609) (not e!31754))))

(assert (=> b!49430 (= res!28609 (bvslt (_1!918 (h!1907 lt!20751)) (_1!918 (h!1907 (t!4370 lt!20751)))))))

(declare-fun b!49431 () Bool)

(assert (=> b!49431 (= e!31754 (isStrictlySorted!272 (t!4370 lt!20751)))))

(assert (= (and d!9911 (not res!28608)) b!49430))

(assert (= (and b!49430 res!28609) b!49431))

(declare-fun m!42877 () Bool)

(assert (=> b!49431 m!42877))

(assert (=> d!9845 d!9911))

(assert (=> d!9845 d!9839))

(declare-fun d!9913 () Bool)

(declare-fun c!6688 () Bool)

(assert (=> d!9913 (= c!6688 (is-Nil!1328 (t!4370 l!1333)))))

(declare-fun e!31755 () (Set tuple2!1816))

(assert (=> d!9913 (= (content!53 (t!4370 l!1333)) e!31755)))

(declare-fun b!49432 () Bool)

(assert (=> b!49432 (= e!31755 (as emptyset (Set tuple2!1816)))))

(declare-fun b!49433 () Bool)

(assert (=> b!49433 (= e!31755 (union (insert (h!1907 (t!4370 l!1333)) (as emptyset (Set tuple2!1816))) (content!53 (t!4370 (t!4370 l!1333)))))))

(assert (= (and d!9913 c!6688) b!49432))

(assert (= (and d!9913 (not c!6688)) b!49433))

(declare-fun m!42879 () Bool)

(assert (=> b!49433 m!42879))

(declare-fun m!42881 () Bool)

(assert (=> b!49433 m!42881))

(assert (=> b!49248 d!9913))

(declare-fun d!9915 () Bool)

(declare-fun res!28610 () Bool)

(declare-fun e!31756 () Bool)

(assert (=> d!9915 (=> res!28610 e!31756)))

(assert (=> d!9915 (= res!28610 (and (is-Cons!1327 lt!20751) (= (_1!918 (h!1907 lt!20751)) newKey!147)))))

(assert (=> d!9915 (= (containsKey!124 lt!20751 newKey!147) e!31756)))

(declare-fun b!49434 () Bool)

(declare-fun e!31757 () Bool)

(assert (=> b!49434 (= e!31756 e!31757)))

(declare-fun res!28611 () Bool)

(assert (=> b!49434 (=> (not res!28611) (not e!31757))))

(assert (=> b!49434 (= res!28611 (and (or (not (is-Cons!1327 lt!20751)) (bvsle (_1!918 (h!1907 lt!20751)) newKey!147)) (is-Cons!1327 lt!20751) (bvslt (_1!918 (h!1907 lt!20751)) newKey!147)))))

(declare-fun b!49435 () Bool)

(assert (=> b!49435 (= e!31757 (containsKey!124 (t!4370 lt!20751) newKey!147))))

(assert (= (and d!9915 (not res!28610)) b!49434))

(assert (= (and b!49434 res!28611) b!49435))

(declare-fun m!42883 () Bool)

(assert (=> b!49435 m!42883))

(assert (=> b!49336 d!9915))

(declare-fun b!49436 () Bool)

(declare-fun e!31759 () List!1331)

(declare-fun call!3844 () List!1331)

(assert (=> b!49436 (= e!31759 call!3844)))

(declare-fun b!49437 () Bool)

(declare-fun c!6691 () Bool)

(assert (=> b!49437 (= c!6691 (and (is-Cons!1327 (t!4370 l!1333)) (bvsgt (_1!918 (h!1907 (t!4370 l!1333))) newKey!147)))))

(declare-fun e!31758 () List!1331)

(assert (=> b!49437 (= e!31758 e!31759)))

(declare-fun b!49438 () Bool)

(assert (=> b!49438 (= e!31759 call!3844)))

(declare-fun b!49439 () Bool)

(declare-fun e!31760 () List!1331)

(declare-fun c!6690 () Bool)

(assert (=> b!49439 (= e!31760 (ite c!6690 (t!4370 (t!4370 l!1333)) (ite c!6691 (Cons!1327 (h!1907 (t!4370 l!1333)) (t!4370 (t!4370 l!1333))) Nil!1328)))))

(declare-fun bm!3841 () Bool)

(declare-fun call!3846 () List!1331)

(assert (=> bm!3841 (= call!3844 call!3846)))

(declare-fun b!49440 () Bool)

(declare-fun e!31761 () List!1331)

(assert (=> b!49440 (= e!31761 e!31758)))

(assert (=> b!49440 (= c!6690 (and (is-Cons!1327 (t!4370 l!1333)) (= (_1!918 (h!1907 (t!4370 l!1333))) newKey!147)))))

(declare-fun b!49442 () Bool)

(declare-fun call!3845 () List!1331)

(assert (=> b!49442 (= e!31761 call!3845)))

(declare-fun b!49443 () Bool)

(assert (=> b!49443 (= e!31758 call!3846)))

(declare-fun bm!3842 () Bool)

(assert (=> bm!3842 (= call!3846 call!3845)))

(declare-fun c!6689 () Bool)

(declare-fun bm!3843 () Bool)

(assert (=> bm!3843 (= call!3845 ($colon$colon!57 e!31760 (ite c!6689 (h!1907 (t!4370 l!1333)) (tuple2!1817 newKey!147 newValue!147))))))

(declare-fun c!6692 () Bool)

(assert (=> bm!3843 (= c!6692 c!6689)))

(declare-fun d!9917 () Bool)

(declare-fun e!31762 () Bool)

(assert (=> d!9917 e!31762))

(declare-fun res!28612 () Bool)

(assert (=> d!9917 (=> (not res!28612) (not e!31762))))

(declare-fun lt!20766 () List!1331)

(assert (=> d!9917 (= res!28612 (isStrictlySorted!272 lt!20766))))

(assert (=> d!9917 (= lt!20766 e!31761)))

(assert (=> d!9917 (= c!6689 (and (is-Cons!1327 (t!4370 l!1333)) (bvslt (_1!918 (h!1907 (t!4370 l!1333))) newKey!147)))))

(assert (=> d!9917 (isStrictlySorted!272 (t!4370 l!1333))))

(assert (=> d!9917 (= (insertStrictlySorted!40 (t!4370 l!1333) newKey!147 newValue!147) lt!20766)))

(declare-fun b!49441 () Bool)

(assert (=> b!49441 (= e!31762 (contains!613 lt!20766 (tuple2!1817 newKey!147 newValue!147)))))

(declare-fun b!49444 () Bool)

(declare-fun res!28613 () Bool)

(assert (=> b!49444 (=> (not res!28613) (not e!31762))))

(assert (=> b!49444 (= res!28613 (containsKey!124 lt!20766 newKey!147))))

(declare-fun b!49445 () Bool)

(assert (=> b!49445 (= e!31760 (insertStrictlySorted!40 (t!4370 (t!4370 l!1333)) newKey!147 newValue!147))))

(assert (= (and d!9917 c!6689) b!49442))

(assert (= (and d!9917 (not c!6689)) b!49440))

(assert (= (and b!49440 c!6690) b!49443))

(assert (= (and b!49440 (not c!6690)) b!49437))

(assert (= (and b!49437 c!6691) b!49436))

(assert (= (and b!49437 (not c!6691)) b!49438))

(assert (= (or b!49436 b!49438) bm!3841))

(assert (= (or b!49443 bm!3841) bm!3842))

(assert (= (or b!49442 bm!3842) bm!3843))

(assert (= (and bm!3843 c!6692) b!49445))

(assert (= (and bm!3843 (not c!6692)) b!49439))

(assert (= (and d!9917 res!28612) b!49444))

(assert (= (and b!49444 res!28613) b!49441))

(declare-fun m!42885 () Bool)

(assert (=> b!49441 m!42885))

(declare-fun m!42887 () Bool)

(assert (=> b!49444 m!42887))

(declare-fun m!42889 () Bool)

(assert (=> b!49445 m!42889))

(declare-fun m!42891 () Bool)

(assert (=> d!9917 m!42891))

(assert (=> d!9917 m!42735))

(declare-fun m!42893 () Bool)

(assert (=> bm!3843 m!42893))

(assert (=> b!49337 d!9917))

(declare-fun d!9919 () Bool)

(declare-fun res!28614 () Bool)

(declare-fun e!31763 () Bool)

(assert (=> d!9919 (=> res!28614 e!31763)))

(assert (=> d!9919 (= res!28614 (or (is-Nil!1328 (t!4370 l!1333)) (is-Nil!1328 (t!4370 (t!4370 l!1333)))))))

(assert (=> d!9919 (= (isStrictlySorted!272 (t!4370 l!1333)) e!31763)))

(declare-fun b!49446 () Bool)

(declare-fun e!31764 () Bool)

(assert (=> b!49446 (= e!31763 e!31764)))

(declare-fun res!28615 () Bool)

(assert (=> b!49446 (=> (not res!28615) (not e!31764))))

(assert (=> b!49446 (= res!28615 (bvslt (_1!918 (h!1907 (t!4370 l!1333))) (_1!918 (h!1907 (t!4370 (t!4370 l!1333))))))))

(declare-fun b!49447 () Bool)

(assert (=> b!49447 (= e!31764 (isStrictlySorted!272 (t!4370 (t!4370 l!1333))))))

(assert (= (and d!9919 (not res!28614)) b!49446))

(assert (= (and b!49446 res!28615) b!49447))

(declare-fun m!42895 () Bool)

(assert (=> b!49447 m!42895))

(assert (=> b!49222 d!9919))

(declare-fun d!9921 () Bool)

(assert (=> d!9921 (= (union (content!53 (t!4370 l!1333)) (insert (tuple2!1817 newKey!147 newValue!147) (as emptyset (Set tuple2!1816)))) (content!53 (insertStrictlySorted!40 (t!4370 l!1333) newKey!147 newValue!147)))))

(assert (=> d!9921 true))

(declare-fun _$19!29 () Unit!1374)

(assert (=> d!9921 (= (choose!293 (t!4370 l!1333) newKey!147 newValue!147) _$19!29)))

(declare-fun bs!2287 () Bool)

(assert (= bs!2287 d!9921))

(assert (=> bs!2287 m!42739))

(assert (=> bs!2287 m!42707))

(assert (=> bs!2287 m!42783))

(assert (=> bs!2287 m!42783))

(assert (=> bs!2287 m!42791))

(assert (=> d!9857 d!9921))

(assert (=> d!9857 d!9913))

(assert (=> d!9857 d!9917))

(declare-fun c!6693 () Bool)

(declare-fun d!9923 () Bool)

(assert (=> d!9923 (= c!6693 (is-Nil!1328 (insertStrictlySorted!40 (t!4370 l!1333) newKey!147 newValue!147)))))

(declare-fun e!31765 () (Set tuple2!1816))

(assert (=> d!9923 (= (content!53 (insertStrictlySorted!40 (t!4370 l!1333) newKey!147 newValue!147)) e!31765)))

(declare-fun b!49448 () Bool)

(assert (=> b!49448 (= e!31765 (as emptyset (Set tuple2!1816)))))

(declare-fun b!49449 () Bool)

(assert (=> b!49449 (= e!31765 (union (insert (h!1907 (insertStrictlySorted!40 (t!4370 l!1333) newKey!147 newValue!147)) (as emptyset (Set tuple2!1816))) (content!53 (t!4370 (insertStrictlySorted!40 (t!4370 l!1333) newKey!147 newValue!147)))))))

(assert (= (and d!9923 c!6693) b!49448))

(assert (= (and d!9923 (not c!6693)) b!49449))

(declare-fun m!42897 () Bool)

(assert (=> b!49449 m!42897))

(declare-fun m!42899 () Bool)

(assert (=> b!49449 m!42899))

(assert (=> d!9857 d!9923))

(assert (=> d!9857 d!9919))

(declare-fun d!9925 () Bool)

(declare-fun res!28616 () Bool)

(declare-fun e!31766 () Bool)

(assert (=> d!9925 (=> res!28616 e!31766)))

(assert (=> d!9925 (= res!28616 (and (is-Cons!1327 (t!4370 l!1333)) (= (_1!918 (h!1907 (t!4370 l!1333))) newKey!147)))))

(assert (=> d!9925 (= (containsKey!124 (t!4370 l!1333) newKey!147) e!31766)))

(declare-fun b!49450 () Bool)

(declare-fun e!31767 () Bool)

(assert (=> b!49450 (= e!31766 e!31767)))

(declare-fun res!28617 () Bool)

(assert (=> b!49450 (=> (not res!28617) (not e!31767))))

(assert (=> b!49450 (= res!28617 (and (or (not (is-Cons!1327 (t!4370 l!1333))) (bvsle (_1!918 (h!1907 (t!4370 l!1333))) newKey!147)) (is-Cons!1327 (t!4370 l!1333)) (bvslt (_1!918 (h!1907 (t!4370 l!1333))) newKey!147)))))

(declare-fun b!49451 () Bool)

(assert (=> b!49451 (= e!31767 (containsKey!124 (t!4370 (t!4370 l!1333)) newKey!147))))

(assert (= (and d!9925 (not res!28616)) b!49450))

(assert (= (and b!49450 res!28617) b!49451))

(declare-fun m!42901 () Bool)

(assert (=> b!49451 m!42901))

(assert (=> b!49216 d!9925))

(declare-fun b!49452 () Bool)

(declare-fun e!31768 () Bool)

(declare-fun tp!6512 () Bool)

(assert (=> b!49452 (= e!31768 (and tp_is_empty!2141 tp!6512))))

(assert (=> b!49359 (= tp!6509 e!31768)))

(assert (= (and b!49359 (is-Cons!1327 (t!4370 (t!4370 l!1333)))) b!49452))

(push 1)

(assert (not b!49447))

(assert (not d!9921))

(assert (not b!49429))

(assert (not b!49435))

(assert (not bm!3843))

(assert (not b!49445))

(assert (not b!49451))

(assert (not b!49433))

(assert (not b!49441))

(assert (not b!49452))

(assert (not b!49431))

(assert tp_is_empty!2141)

(assert (not d!9909))

(assert (not b!49423))

(assert (not d!9917))

(assert (not b!49449))

(assert (not b!49444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

