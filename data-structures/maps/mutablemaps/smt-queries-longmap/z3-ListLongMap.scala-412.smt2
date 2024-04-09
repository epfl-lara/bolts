; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7728 () Bool)

(assert start!7728)

(declare-fun b!49179 () Bool)

(declare-fun res!28506 () Bool)

(declare-fun e!31590 () Bool)

(assert (=> b!49179 (=> (not res!28506) (not e!31590))))

(declare-datatypes ((B!988 0))(
  ( (B!989 (val!1114 Int)) )
))
(declare-datatypes ((tuple2!1814 0))(
  ( (tuple2!1815 (_1!917 (_ BitVec 64)) (_2!917 B!988)) )
))
(declare-datatypes ((List!1330 0))(
  ( (Nil!1327) (Cons!1326 (h!1906 tuple2!1814) (t!4369 List!1330)) )
))
(declare-fun l!1333 () List!1330)

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!123 (List!1330 (_ BitVec 64)) Bool)

(assert (=> b!49179 (= res!28506 (not (containsKey!123 l!1333 newKey!147)))))

(declare-fun b!49182 () Bool)

(declare-fun e!31591 () Bool)

(declare-fun tp_is_empty!2139 () Bool)

(declare-fun tp!6497 () Bool)

(assert (=> b!49182 (= e!31591 (and tp_is_empty!2139 tp!6497))))

(declare-fun res!28505 () Bool)

(assert (=> start!7728 (=> (not res!28505) (not e!31590))))

(declare-fun isStrictlySorted!271 (List!1330) Bool)

(assert (=> start!7728 (= res!28505 (isStrictlySorted!271 l!1333))))

(assert (=> start!7728 e!31590))

(assert (=> start!7728 e!31591))

(assert (=> start!7728 true))

(assert (=> start!7728 tp_is_empty!2139))

(declare-fun b!49181 () Bool)

(declare-fun newValue!147 () B!988)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!52 (List!1330) (InoxSet tuple2!1814))

(declare-fun insertStrictlySorted!39 (List!1330 (_ BitVec 64) B!988) List!1330)

(assert (=> b!49181 (= e!31590 (not (= ((_ map or) (content!52 l!1333) (store ((as const (Array tuple2!1814 Bool)) false) (tuple2!1815 newKey!147 newValue!147) true)) (content!52 (insertStrictlySorted!39 l!1333 newKey!147 newValue!147)))))))

(declare-datatypes ((Unit!1372 0))(
  ( (Unit!1373) )
))
(declare-fun lt!20733 () Unit!1372)

(declare-fun lemmaInsertStrictlySortedNotContainedContent!8 (List!1330 (_ BitVec 64) B!988) Unit!1372)

(assert (=> b!49181 (= lt!20733 (lemmaInsertStrictlySortedNotContainedContent!8 (t!4369 l!1333) newKey!147 newValue!147))))

(declare-fun b!49180 () Bool)

(declare-fun res!28504 () Bool)

(assert (=> b!49180 (=> (not res!28504) (not e!31590))))

(get-info :version)

(assert (=> b!49180 (= res!28504 (not ((_ is Nil!1327) l!1333)))))

(assert (= (and start!7728 res!28505) b!49179))

(assert (= (and b!49179 res!28506) b!49180))

(assert (= (and b!49180 res!28504) b!49181))

(assert (= (and start!7728 ((_ is Cons!1326) l!1333)) b!49182))

(declare-fun m!42689 () Bool)

(assert (=> b!49179 m!42689))

(declare-fun m!42691 () Bool)

(assert (=> start!7728 m!42691))

(declare-fun m!42693 () Bool)

(assert (=> b!49181 m!42693))

(declare-fun m!42695 () Bool)

(assert (=> b!49181 m!42695))

(declare-fun m!42697 () Bool)

(assert (=> b!49181 m!42697))

(assert (=> b!49181 m!42697))

(declare-fun m!42699 () Bool)

(assert (=> b!49181 m!42699))

(declare-fun m!42701 () Bool)

(assert (=> b!49181 m!42701))

(check-sat (not b!49181) (not b!49179) tp_is_empty!2139 (not start!7728) (not b!49182))
(check-sat)
(get-model)

(declare-fun d!9827 () Bool)

(declare-fun c!6631 () Bool)

(assert (=> d!9827 (= c!6631 ((_ is Nil!1327) l!1333))))

(declare-fun e!31604 () (InoxSet tuple2!1814))

(assert (=> d!9827 (= (content!52 l!1333) e!31604)))

(declare-fun b!49207 () Bool)

(assert (=> b!49207 (= e!31604 ((as const (Array tuple2!1814 Bool)) false))))

(declare-fun b!49208 () Bool)

(assert (=> b!49208 (= e!31604 ((_ map or) (store ((as const (Array tuple2!1814 Bool)) false) (h!1906 l!1333) true) (content!52 (t!4369 l!1333))))))

(assert (= (and d!9827 c!6631) b!49207))

(assert (= (and d!9827 (not c!6631)) b!49208))

(declare-fun m!42725 () Bool)

(assert (=> b!49208 m!42725))

(declare-fun m!42727 () Bool)

(assert (=> b!49208 m!42727))

(assert (=> b!49181 d!9827))

(declare-fun d!9835 () Bool)

(declare-fun c!6632 () Bool)

(assert (=> d!9835 (= c!6632 ((_ is Nil!1327) (insertStrictlySorted!39 l!1333 newKey!147 newValue!147)))))

(declare-fun e!31609 () (InoxSet tuple2!1814))

(assert (=> d!9835 (= (content!52 (insertStrictlySorted!39 l!1333 newKey!147 newValue!147)) e!31609)))

(declare-fun b!49213 () Bool)

(assert (=> b!49213 (= e!31609 ((as const (Array tuple2!1814 Bool)) false))))

(declare-fun b!49214 () Bool)

(assert (=> b!49214 (= e!31609 ((_ map or) (store ((as const (Array tuple2!1814 Bool)) false) (h!1906 (insertStrictlySorted!39 l!1333 newKey!147 newValue!147)) true) (content!52 (t!4369 (insertStrictlySorted!39 l!1333 newKey!147 newValue!147)))))))

(assert (= (and d!9835 c!6632) b!49213))

(assert (= (and d!9835 (not c!6632)) b!49214))

(declare-fun m!42729 () Bool)

(assert (=> b!49214 m!42729))

(declare-fun m!42731 () Bool)

(assert (=> b!49214 m!42731))

(assert (=> b!49181 d!9835))

(declare-fun b!49288 () Bool)

(declare-fun res!28544 () Bool)

(declare-fun e!31656 () Bool)

(assert (=> b!49288 (=> (not res!28544) (not e!31656))))

(declare-fun lt!20745 () List!1330)

(assert (=> b!49288 (= res!28544 (containsKey!123 lt!20745 newKey!147))))

(declare-fun b!49289 () Bool)

(declare-fun e!31657 () List!1330)

(declare-fun call!3828 () List!1330)

(assert (=> b!49289 (= e!31657 call!3828)))

(declare-fun b!49290 () Bool)

(assert (=> b!49290 (= e!31657 call!3828)))

(declare-fun c!6658 () Bool)

(declare-fun bm!3823 () Bool)

(declare-fun call!3827 () List!1330)

(declare-fun e!31655 () List!1330)

(declare-fun $colon$colon!56 (List!1330 tuple2!1814) List!1330)

(assert (=> bm!3823 (= call!3827 ($colon$colon!56 e!31655 (ite c!6658 (h!1906 l!1333) (tuple2!1815 newKey!147 newValue!147))))))

(declare-fun c!6659 () Bool)

(assert (=> bm!3823 (= c!6659 c!6658)))

(declare-fun b!49291 () Bool)

(declare-fun e!31653 () List!1330)

(declare-fun e!31654 () List!1330)

(assert (=> b!49291 (= e!31653 e!31654)))

(declare-fun c!6657 () Bool)

(assert (=> b!49291 (= c!6657 (and ((_ is Cons!1326) l!1333) (= (_1!917 (h!1906 l!1333)) newKey!147)))))

(declare-fun b!49292 () Bool)

(assert (=> b!49292 (= e!31655 (insertStrictlySorted!39 (t!4369 l!1333) newKey!147 newValue!147))))

(declare-fun b!49293 () Bool)

(declare-fun call!3826 () List!1330)

(assert (=> b!49293 (= e!31654 call!3826)))

(declare-fun b!49294 () Bool)

(declare-fun c!6660 () Bool)

(assert (=> b!49294 (= e!31655 (ite c!6657 (t!4369 l!1333) (ite c!6660 (Cons!1326 (h!1906 l!1333) (t!4369 l!1333)) Nil!1327)))))

(declare-fun bm!3824 () Bool)

(assert (=> bm!3824 (= call!3828 call!3826)))

(declare-fun bm!3825 () Bool)

(assert (=> bm!3825 (= call!3826 call!3827)))

(declare-fun b!49295 () Bool)

(assert (=> b!49295 (= e!31653 call!3827)))

(declare-fun b!49296 () Bool)

(assert (=> b!49296 (= c!6660 (and ((_ is Cons!1326) l!1333) (bvsgt (_1!917 (h!1906 l!1333)) newKey!147)))))

(assert (=> b!49296 (= e!31654 e!31657)))

(declare-fun d!9837 () Bool)

(assert (=> d!9837 e!31656))

(declare-fun res!28545 () Bool)

(assert (=> d!9837 (=> (not res!28545) (not e!31656))))

(assert (=> d!9837 (= res!28545 (isStrictlySorted!271 lt!20745))))

(assert (=> d!9837 (= lt!20745 e!31653)))

(assert (=> d!9837 (= c!6658 (and ((_ is Cons!1326) l!1333) (bvslt (_1!917 (h!1906 l!1333)) newKey!147)))))

(assert (=> d!9837 (isStrictlySorted!271 l!1333)))

(assert (=> d!9837 (= (insertStrictlySorted!39 l!1333 newKey!147 newValue!147) lt!20745)))

(declare-fun b!49287 () Bool)

(declare-fun contains!612 (List!1330 tuple2!1814) Bool)

(assert (=> b!49287 (= e!31656 (contains!612 lt!20745 (tuple2!1815 newKey!147 newValue!147)))))

(assert (= (and d!9837 c!6658) b!49295))

(assert (= (and d!9837 (not c!6658)) b!49291))

(assert (= (and b!49291 c!6657) b!49293))

(assert (= (and b!49291 (not c!6657)) b!49296))

(assert (= (and b!49296 c!6660) b!49289))

(assert (= (and b!49296 (not c!6660)) b!49290))

(assert (= (or b!49289 b!49290) bm!3824))

(assert (= (or b!49293 bm!3824) bm!3825))

(assert (= (or b!49295 bm!3825) bm!3823))

(assert (= (and bm!3823 c!6659) b!49292))

(assert (= (and bm!3823 (not c!6659)) b!49294))

(assert (= (and d!9837 res!28545) b!49288))

(assert (= (and b!49288 res!28544) b!49287))

(declare-fun m!42763 () Bool)

(assert (=> d!9837 m!42763))

(assert (=> d!9837 m!42691))

(declare-fun m!42765 () Bool)

(assert (=> b!49292 m!42765))

(declare-fun m!42767 () Bool)

(assert (=> b!49288 m!42767))

(declare-fun m!42769 () Bool)

(assert (=> bm!3823 m!42769))

(declare-fun m!42771 () Bool)

(assert (=> b!49287 m!42771))

(assert (=> b!49181 d!9837))

(declare-fun d!9853 () Bool)

(assert (=> d!9853 (= ((_ map or) (content!52 (t!4369 l!1333)) (store ((as const (Array tuple2!1814 Bool)) false) (tuple2!1815 newKey!147 newValue!147) true)) (content!52 (insertStrictlySorted!39 (t!4369 l!1333) newKey!147 newValue!147)))))

(declare-fun lt!20750 () Unit!1372)

(declare-fun choose!292 (List!1330 (_ BitVec 64) B!988) Unit!1372)

(assert (=> d!9853 (= lt!20750 (choose!292 (t!4369 l!1333) newKey!147 newValue!147))))

(assert (=> d!9853 (isStrictlySorted!271 (t!4369 l!1333))))

(assert (=> d!9853 (= (lemmaInsertStrictlySortedNotContainedContent!8 (t!4369 l!1333) newKey!147 newValue!147) lt!20750)))

(declare-fun bs!2283 () Bool)

(assert (= bs!2283 d!9853))

(assert (=> bs!2283 m!42727))

(assert (=> bs!2283 m!42765))

(declare-fun m!42773 () Bool)

(assert (=> bs!2283 m!42773))

(assert (=> bs!2283 m!42765))

(declare-fun m!42775 () Bool)

(assert (=> bs!2283 m!42775))

(declare-fun m!42777 () Bool)

(assert (=> bs!2283 m!42777))

(assert (=> bs!2283 m!42693))

(assert (=> b!49181 d!9853))

(declare-fun d!9855 () Bool)

(declare-fun res!28562 () Bool)

(declare-fun e!31686 () Bool)

(assert (=> d!9855 (=> res!28562 e!31686)))

(assert (=> d!9855 (= res!28562 (and ((_ is Cons!1326) l!1333) (= (_1!917 (h!1906 l!1333)) newKey!147)))))

(assert (=> d!9855 (= (containsKey!123 l!1333 newKey!147) e!31686)))

(declare-fun b!49342 () Bool)

(declare-fun e!31687 () Bool)

(assert (=> b!49342 (= e!31686 e!31687)))

(declare-fun res!28563 () Bool)

(assert (=> b!49342 (=> (not res!28563) (not e!31687))))

(assert (=> b!49342 (= res!28563 (and (or (not ((_ is Cons!1326) l!1333)) (bvsle (_1!917 (h!1906 l!1333)) newKey!147)) ((_ is Cons!1326) l!1333) (bvslt (_1!917 (h!1906 l!1333)) newKey!147)))))

(declare-fun b!49343 () Bool)

(assert (=> b!49343 (= e!31687 (containsKey!123 (t!4369 l!1333) newKey!147))))

(assert (= (and d!9855 (not res!28562)) b!49342))

(assert (= (and b!49342 res!28563) b!49343))

(declare-fun m!42789 () Bool)

(assert (=> b!49343 m!42789))

(assert (=> b!49179 d!9855))

(declare-fun d!9859 () Bool)

(declare-fun res!28568 () Bool)

(declare-fun e!31692 () Bool)

(assert (=> d!9859 (=> res!28568 e!31692)))

(assert (=> d!9859 (= res!28568 (or ((_ is Nil!1327) l!1333) ((_ is Nil!1327) (t!4369 l!1333))))))

(assert (=> d!9859 (= (isStrictlySorted!271 l!1333) e!31692)))

(declare-fun b!49348 () Bool)

(declare-fun e!31693 () Bool)

(assert (=> b!49348 (= e!31692 e!31693)))

(declare-fun res!28569 () Bool)

(assert (=> b!49348 (=> (not res!28569) (not e!31693))))

(assert (=> b!49348 (= res!28569 (bvslt (_1!917 (h!1906 l!1333)) (_1!917 (h!1906 (t!4369 l!1333)))))))

(declare-fun b!49349 () Bool)

(assert (=> b!49349 (= e!31693 (isStrictlySorted!271 (t!4369 l!1333)))))

(assert (= (and d!9859 (not res!28568)) b!49348))

(assert (= (and b!49348 res!28569) b!49349))

(assert (=> b!49349 m!42775))

(assert (=> start!7728 d!9859))

(declare-fun b!49358 () Bool)

(declare-fun e!31698 () Bool)

(declare-fun tp!6508 () Bool)

(assert (=> b!49358 (= e!31698 (and tp_is_empty!2139 tp!6508))))

(assert (=> b!49182 (= tp!6497 e!31698)))

(assert (= (and b!49182 ((_ is Cons!1326) (t!4369 l!1333))) b!49358))

(check-sat (not b!49287) (not b!49343) (not bm!3823) (not b!49349) (not b!49214) (not d!9853) (not b!49208) (not d!9837) (not b!49288) (not b!49292) (not b!49358) tp_is_empty!2139)
(check-sat)
(get-model)

(declare-fun d!9867 () Bool)

(assert (=> d!9867 (= ($colon$colon!56 e!31655 (ite c!6658 (h!1906 l!1333) (tuple2!1815 newKey!147 newValue!147))) (Cons!1326 (ite c!6658 (h!1906 l!1333) (tuple2!1815 newKey!147 newValue!147)) e!31655))))

(assert (=> bm!3823 d!9867))

(declare-fun d!9869 () Bool)

(declare-fun res!28574 () Bool)

(declare-fun e!31707 () Bool)

(assert (=> d!9869 (=> res!28574 e!31707)))

(assert (=> d!9869 (= res!28574 (and ((_ is Cons!1326) (t!4369 l!1333)) (= (_1!917 (h!1906 (t!4369 l!1333))) newKey!147)))))

(assert (=> d!9869 (= (containsKey!123 (t!4369 l!1333) newKey!147) e!31707)))

(declare-fun b!49372 () Bool)

(declare-fun e!31708 () Bool)

(assert (=> b!49372 (= e!31707 e!31708)))

(declare-fun res!28575 () Bool)

(assert (=> b!49372 (=> (not res!28575) (not e!31708))))

(assert (=> b!49372 (= res!28575 (and (or (not ((_ is Cons!1326) (t!4369 l!1333))) (bvsle (_1!917 (h!1906 (t!4369 l!1333))) newKey!147)) ((_ is Cons!1326) (t!4369 l!1333)) (bvslt (_1!917 (h!1906 (t!4369 l!1333))) newKey!147)))))

(declare-fun b!49373 () Bool)

(assert (=> b!49373 (= e!31708 (containsKey!123 (t!4369 (t!4369 l!1333)) newKey!147))))

(assert (= (and d!9869 (not res!28574)) b!49372))

(assert (= (and b!49372 res!28575) b!49373))

(declare-fun m!42807 () Bool)

(assert (=> b!49373 m!42807))

(assert (=> b!49343 d!9869))

(declare-fun d!9873 () Bool)

(assert (=> d!9873 (= ((_ map or) (content!52 (t!4369 l!1333)) (store ((as const (Array tuple2!1814 Bool)) false) (tuple2!1815 newKey!147 newValue!147) true)) (content!52 (insertStrictlySorted!39 (t!4369 l!1333) newKey!147 newValue!147)))))

(assert (=> d!9873 true))

(declare-fun _$19!26 () Unit!1372)

(assert (=> d!9873 (= (choose!292 (t!4369 l!1333) newKey!147 newValue!147) _$19!26)))

(declare-fun bs!2286 () Bool)

(assert (= bs!2286 d!9873))

(assert (=> bs!2286 m!42727))

(assert (=> bs!2286 m!42693))

(assert (=> bs!2286 m!42765))

(assert (=> bs!2286 m!42765))

(assert (=> bs!2286 m!42773))

(assert (=> d!9853 d!9873))

(declare-fun d!9889 () Bool)

(declare-fun c!6680 () Bool)

(assert (=> d!9889 (= c!6680 ((_ is Nil!1327) (t!4369 l!1333)))))

(declare-fun e!31718 () (InoxSet tuple2!1814))

(assert (=> d!9889 (= (content!52 (t!4369 l!1333)) e!31718)))

(declare-fun b!49386 () Bool)

(assert (=> b!49386 (= e!31718 ((as const (Array tuple2!1814 Bool)) false))))

(declare-fun b!49387 () Bool)

(assert (=> b!49387 (= e!31718 ((_ map or) (store ((as const (Array tuple2!1814 Bool)) false) (h!1906 (t!4369 l!1333)) true) (content!52 (t!4369 (t!4369 l!1333)))))))

(assert (= (and d!9889 c!6680) b!49386))

(assert (= (and d!9889 (not c!6680)) b!49387))

(declare-fun m!42827 () Bool)

(assert (=> b!49387 m!42827))

(declare-fun m!42829 () Bool)

(assert (=> b!49387 m!42829))

(assert (=> d!9853 d!9889))

(declare-fun b!49389 () Bool)

(declare-fun res!28582 () Bool)

(declare-fun e!31722 () Bool)

(assert (=> b!49389 (=> (not res!28582) (not e!31722))))

(declare-fun lt!20756 () List!1330)

(assert (=> b!49389 (= res!28582 (containsKey!123 lt!20756 newKey!147))))

(declare-fun b!49390 () Bool)

(declare-fun e!31723 () List!1330)

(declare-fun call!3843 () List!1330)

(assert (=> b!49390 (= e!31723 call!3843)))

(declare-fun b!49391 () Bool)

(assert (=> b!49391 (= e!31723 call!3843)))

(declare-fun c!6682 () Bool)

(declare-fun call!3842 () List!1330)

(declare-fun e!31721 () List!1330)

(declare-fun bm!3838 () Bool)

(assert (=> bm!3838 (= call!3842 ($colon$colon!56 e!31721 (ite c!6682 (h!1906 (t!4369 l!1333)) (tuple2!1815 newKey!147 newValue!147))))))

(declare-fun c!6683 () Bool)

(assert (=> bm!3838 (= c!6683 c!6682)))

(declare-fun b!49392 () Bool)

(declare-fun e!31719 () List!1330)

(declare-fun e!31720 () List!1330)

(assert (=> b!49392 (= e!31719 e!31720)))

(declare-fun c!6681 () Bool)

(assert (=> b!49392 (= c!6681 (and ((_ is Cons!1326) (t!4369 l!1333)) (= (_1!917 (h!1906 (t!4369 l!1333))) newKey!147)))))

(declare-fun b!49393 () Bool)

(assert (=> b!49393 (= e!31721 (insertStrictlySorted!39 (t!4369 (t!4369 l!1333)) newKey!147 newValue!147))))

(declare-fun b!49394 () Bool)

(declare-fun call!3841 () List!1330)

(assert (=> b!49394 (= e!31720 call!3841)))

(declare-fun c!6684 () Bool)

(declare-fun b!49395 () Bool)

(assert (=> b!49395 (= e!31721 (ite c!6681 (t!4369 (t!4369 l!1333)) (ite c!6684 (Cons!1326 (h!1906 (t!4369 l!1333)) (t!4369 (t!4369 l!1333))) Nil!1327)))))

(declare-fun bm!3839 () Bool)

(assert (=> bm!3839 (= call!3843 call!3841)))

(declare-fun bm!3840 () Bool)

(assert (=> bm!3840 (= call!3841 call!3842)))

(declare-fun b!49396 () Bool)

(assert (=> b!49396 (= e!31719 call!3842)))

(declare-fun b!49397 () Bool)

(assert (=> b!49397 (= c!6684 (and ((_ is Cons!1326) (t!4369 l!1333)) (bvsgt (_1!917 (h!1906 (t!4369 l!1333))) newKey!147)))))

(assert (=> b!49397 (= e!31720 e!31723)))

(declare-fun d!9891 () Bool)

(assert (=> d!9891 e!31722))

(declare-fun res!28583 () Bool)

(assert (=> d!9891 (=> (not res!28583) (not e!31722))))

(assert (=> d!9891 (= res!28583 (isStrictlySorted!271 lt!20756))))

(assert (=> d!9891 (= lt!20756 e!31719)))

(assert (=> d!9891 (= c!6682 (and ((_ is Cons!1326) (t!4369 l!1333)) (bvslt (_1!917 (h!1906 (t!4369 l!1333))) newKey!147)))))

(assert (=> d!9891 (isStrictlySorted!271 (t!4369 l!1333))))

(assert (=> d!9891 (= (insertStrictlySorted!39 (t!4369 l!1333) newKey!147 newValue!147) lt!20756)))

(declare-fun b!49388 () Bool)

(assert (=> b!49388 (= e!31722 (contains!612 lt!20756 (tuple2!1815 newKey!147 newValue!147)))))

(assert (= (and d!9891 c!6682) b!49396))

(assert (= (and d!9891 (not c!6682)) b!49392))

(assert (= (and b!49392 c!6681) b!49394))

(assert (= (and b!49392 (not c!6681)) b!49397))

(assert (= (and b!49397 c!6684) b!49390))

(assert (= (and b!49397 (not c!6684)) b!49391))

(assert (= (or b!49390 b!49391) bm!3839))

(assert (= (or b!49394 bm!3839) bm!3840))

(assert (= (or b!49396 bm!3840) bm!3838))

(assert (= (and bm!3838 c!6683) b!49393))

(assert (= (and bm!3838 (not c!6683)) b!49395))

(assert (= (and d!9891 res!28583) b!49389))

(assert (= (and b!49389 res!28582) b!49388))

(declare-fun m!42831 () Bool)

(assert (=> d!9891 m!42831))

(assert (=> d!9891 m!42775))

(declare-fun m!42833 () Bool)

(assert (=> b!49393 m!42833))

(declare-fun m!42835 () Bool)

(assert (=> b!49389 m!42835))

(declare-fun m!42837 () Bool)

(assert (=> bm!3838 m!42837))

(declare-fun m!42839 () Bool)

(assert (=> b!49388 m!42839))

(assert (=> d!9853 d!9891))

(declare-fun d!9893 () Bool)

(declare-fun c!6685 () Bool)

(assert (=> d!9893 (= c!6685 ((_ is Nil!1327) (insertStrictlySorted!39 (t!4369 l!1333) newKey!147 newValue!147)))))

(declare-fun e!31724 () (InoxSet tuple2!1814))

(assert (=> d!9893 (= (content!52 (insertStrictlySorted!39 (t!4369 l!1333) newKey!147 newValue!147)) e!31724)))

(declare-fun b!49398 () Bool)

(assert (=> b!49398 (= e!31724 ((as const (Array tuple2!1814 Bool)) false))))

(declare-fun b!49399 () Bool)

(assert (=> b!49399 (= e!31724 ((_ map or) (store ((as const (Array tuple2!1814 Bool)) false) (h!1906 (insertStrictlySorted!39 (t!4369 l!1333) newKey!147 newValue!147)) true) (content!52 (t!4369 (insertStrictlySorted!39 (t!4369 l!1333) newKey!147 newValue!147)))))))

(assert (= (and d!9893 c!6685) b!49398))

(assert (= (and d!9893 (not c!6685)) b!49399))

(declare-fun m!42841 () Bool)

(assert (=> b!49399 m!42841))

(declare-fun m!42843 () Bool)

(assert (=> b!49399 m!42843))

(assert (=> d!9853 d!9893))

(declare-fun d!9895 () Bool)

(declare-fun res!28588 () Bool)

(declare-fun e!31729 () Bool)

(assert (=> d!9895 (=> res!28588 e!31729)))

(assert (=> d!9895 (= res!28588 (or ((_ is Nil!1327) (t!4369 l!1333)) ((_ is Nil!1327) (t!4369 (t!4369 l!1333)))))))

(assert (=> d!9895 (= (isStrictlySorted!271 (t!4369 l!1333)) e!31729)))

(declare-fun b!49404 () Bool)

(declare-fun e!31730 () Bool)

(assert (=> b!49404 (= e!31729 e!31730)))

(declare-fun res!28589 () Bool)

(assert (=> b!49404 (=> (not res!28589) (not e!31730))))

(assert (=> b!49404 (= res!28589 (bvslt (_1!917 (h!1906 (t!4369 l!1333))) (_1!917 (h!1906 (t!4369 (t!4369 l!1333))))))))

(declare-fun b!49405 () Bool)

(assert (=> b!49405 (= e!31730 (isStrictlySorted!271 (t!4369 (t!4369 l!1333))))))

(assert (= (and d!9895 (not res!28588)) b!49404))

(assert (= (and b!49404 res!28589) b!49405))

(declare-fun m!42845 () Bool)

(assert (=> b!49405 m!42845))

(assert (=> d!9853 d!9895))

(declare-fun d!9897 () Bool)

(declare-fun lt!20762 () Bool)

(assert (=> d!9897 (= lt!20762 (select (content!52 lt!20745) (tuple2!1815 newKey!147 newValue!147)))))

(declare-fun e!31738 () Bool)

(assert (=> d!9897 (= lt!20762 e!31738)))

(declare-fun res!28596 () Bool)

(assert (=> d!9897 (=> (not res!28596) (not e!31738))))

(assert (=> d!9897 (= res!28596 ((_ is Cons!1326) lt!20745))))

(assert (=> d!9897 (= (contains!612 lt!20745 (tuple2!1815 newKey!147 newValue!147)) lt!20762)))

(declare-fun b!49413 () Bool)

(declare-fun e!31739 () Bool)

(assert (=> b!49413 (= e!31738 e!31739)))

(declare-fun res!28597 () Bool)

(assert (=> b!49413 (=> res!28597 e!31739)))

(assert (=> b!49413 (= res!28597 (= (h!1906 lt!20745) (tuple2!1815 newKey!147 newValue!147)))))

(declare-fun b!49414 () Bool)

(assert (=> b!49414 (= e!31739 (contains!612 (t!4369 lt!20745) (tuple2!1815 newKey!147 newValue!147)))))

(assert (= (and d!9897 res!28596) b!49413))

(assert (= (and b!49413 (not res!28597)) b!49414))

(declare-fun m!42853 () Bool)

(assert (=> d!9897 m!42853))

(declare-fun m!42855 () Bool)

(assert (=> d!9897 m!42855))

(declare-fun m!42857 () Bool)

(assert (=> b!49414 m!42857))

(assert (=> b!49287 d!9897))

(assert (=> b!49208 d!9889))

(assert (=> b!49292 d!9891))

(assert (=> b!49349 d!9895))

(declare-fun c!6686 () Bool)

(declare-fun d!9899 () Bool)

(assert (=> d!9899 (= c!6686 ((_ is Nil!1327) (t!4369 (insertStrictlySorted!39 l!1333 newKey!147 newValue!147))))))

(declare-fun e!31740 () (InoxSet tuple2!1814))

(assert (=> d!9899 (= (content!52 (t!4369 (insertStrictlySorted!39 l!1333 newKey!147 newValue!147))) e!31740)))

(declare-fun b!49415 () Bool)

(assert (=> b!49415 (= e!31740 ((as const (Array tuple2!1814 Bool)) false))))

(declare-fun b!49416 () Bool)

(assert (=> b!49416 (= e!31740 ((_ map or) (store ((as const (Array tuple2!1814 Bool)) false) (h!1906 (t!4369 (insertStrictlySorted!39 l!1333 newKey!147 newValue!147))) true) (content!52 (t!4369 (t!4369 (insertStrictlySorted!39 l!1333 newKey!147 newValue!147))))))))

(assert (= (and d!9899 c!6686) b!49415))

(assert (= (and d!9899 (not c!6686)) b!49416))

(declare-fun m!42859 () Bool)

(assert (=> b!49416 m!42859))

(declare-fun m!42861 () Bool)

(assert (=> b!49416 m!42861))

(assert (=> b!49214 d!9899))

(declare-fun d!9901 () Bool)

(declare-fun res!28598 () Bool)

(declare-fun e!31741 () Bool)

(assert (=> d!9901 (=> res!28598 e!31741)))

(assert (=> d!9901 (= res!28598 (and ((_ is Cons!1326) lt!20745) (= (_1!917 (h!1906 lt!20745)) newKey!147)))))

(assert (=> d!9901 (= (containsKey!123 lt!20745 newKey!147) e!31741)))

(declare-fun b!49417 () Bool)

(declare-fun e!31742 () Bool)

(assert (=> b!49417 (= e!31741 e!31742)))

(declare-fun res!28599 () Bool)

(assert (=> b!49417 (=> (not res!28599) (not e!31742))))

(assert (=> b!49417 (= res!28599 (and (or (not ((_ is Cons!1326) lt!20745)) (bvsle (_1!917 (h!1906 lt!20745)) newKey!147)) ((_ is Cons!1326) lt!20745) (bvslt (_1!917 (h!1906 lt!20745)) newKey!147)))))

(declare-fun b!49418 () Bool)

(assert (=> b!49418 (= e!31742 (containsKey!123 (t!4369 lt!20745) newKey!147))))

(assert (= (and d!9901 (not res!28598)) b!49417))

(assert (= (and b!49417 res!28599) b!49418))

(declare-fun m!42863 () Bool)

(assert (=> b!49418 m!42863))

(assert (=> b!49288 d!9901))

(declare-fun d!9903 () Bool)

(declare-fun res!28600 () Bool)

(declare-fun e!31743 () Bool)

(assert (=> d!9903 (=> res!28600 e!31743)))

(assert (=> d!9903 (= res!28600 (or ((_ is Nil!1327) lt!20745) ((_ is Nil!1327) (t!4369 lt!20745))))))

(assert (=> d!9903 (= (isStrictlySorted!271 lt!20745) e!31743)))

(declare-fun b!49419 () Bool)

(declare-fun e!31744 () Bool)

(assert (=> b!49419 (= e!31743 e!31744)))

(declare-fun res!28601 () Bool)

(assert (=> b!49419 (=> (not res!28601) (not e!31744))))

(assert (=> b!49419 (= res!28601 (bvslt (_1!917 (h!1906 lt!20745)) (_1!917 (h!1906 (t!4369 lt!20745)))))))

(declare-fun b!49420 () Bool)

(assert (=> b!49420 (= e!31744 (isStrictlySorted!271 (t!4369 lt!20745)))))

(assert (= (and d!9903 (not res!28600)) b!49419))

(assert (= (and b!49419 res!28601) b!49420))

(declare-fun m!42865 () Bool)

(assert (=> b!49420 m!42865))

(assert (=> d!9837 d!9903))

(assert (=> d!9837 d!9859))

(declare-fun b!49421 () Bool)

(declare-fun e!31745 () Bool)

(declare-fun tp!6511 () Bool)

(assert (=> b!49421 (= e!31745 (and tp_is_empty!2139 tp!6511))))

(assert (=> b!49358 (= tp!6508 e!31745)))

(assert (= (and b!49358 ((_ is Cons!1326) (t!4369 (t!4369 l!1333)))) b!49421))

(check-sat (not bm!3838) (not b!49389) (not b!49387) (not b!49418) (not b!49393) (not b!49373) (not b!49399) (not b!49420) (not b!49414) (not d!9873) (not d!9897) (not b!49405) (not b!49388) (not b!49421) (not d!9891) (not b!49416) tp_is_empty!2139)
(check-sat)
