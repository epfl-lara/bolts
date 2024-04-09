; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7664 () Bool)

(assert start!7664)

(declare-fun b!48794 () Bool)

(declare-fun e!31336 () Bool)

(declare-fun newKey!147 () (_ BitVec 64))

(declare-datatypes ((B!978 0))(
  ( (B!979 (val!1109 Int)) )
))
(declare-fun newValue!147 () B!978)

(declare-datatypes ((tuple2!1804 0))(
  ( (tuple2!1805 (_1!912 (_ BitVec 64)) (_2!912 B!978)) )
))
(declare-datatypes ((List!1325 0))(
  ( (Nil!1322) (Cons!1321 (h!1901 tuple2!1804) (t!4361 List!1325)) )
))
(declare-fun l!1333 () List!1325)

(declare-fun content!50 (List!1325) (Set tuple2!1804))

(declare-fun insertStrictlySorted!37 (List!1325 (_ BitVec 64) B!978) List!1325)

(assert (=> b!48794 (= e!31336 (not (= (union (content!50 l!1333) (insert (tuple2!1805 newKey!147 newValue!147) (as emptyset (Set tuple2!1804)))) (content!50 (insertStrictlySorted!37 l!1333 newKey!147 newValue!147)))))))

(declare-fun b!48792 () Bool)

(declare-fun res!28323 () Bool)

(assert (=> b!48792 (=> (not res!28323) (not e!31336))))

(declare-fun containsKey!118 (List!1325 (_ BitVec 64)) Bool)

(assert (=> b!48792 (= res!28323 (not (containsKey!118 l!1333 newKey!147)))))

(declare-fun b!48793 () Bool)

(declare-fun res!28322 () Bool)

(assert (=> b!48793 (=> (not res!28322) (not e!31336))))

(assert (=> b!48793 (= res!28322 (is-Nil!1322 l!1333))))

(declare-fun res!28321 () Bool)

(assert (=> start!7664 (=> (not res!28321) (not e!31336))))

(declare-fun isStrictlySorted!266 (List!1325) Bool)

(assert (=> start!7664 (= res!28321 (isStrictlySorted!266 l!1333))))

(assert (=> start!7664 e!31336))

(declare-fun e!31335 () Bool)

(assert (=> start!7664 e!31335))

(assert (=> start!7664 true))

(declare-fun tp_is_empty!2129 () Bool)

(assert (=> start!7664 tp_is_empty!2129))

(declare-fun b!48795 () Bool)

(declare-fun tp!6461 () Bool)

(assert (=> b!48795 (= e!31335 (and tp_is_empty!2129 tp!6461))))

(assert (= (and start!7664 res!28321) b!48792))

(assert (= (and b!48792 res!28323) b!48793))

(assert (= (and b!48793 res!28322) b!48794))

(assert (= (and start!7664 (is-Cons!1321 l!1333)) b!48795))

(declare-fun m!42459 () Bool)

(assert (=> b!48794 m!42459))

(declare-fun m!42461 () Bool)

(assert (=> b!48794 m!42461))

(declare-fun m!42463 () Bool)

(assert (=> b!48794 m!42463))

(assert (=> b!48794 m!42463))

(declare-fun m!42465 () Bool)

(assert (=> b!48794 m!42465))

(declare-fun m!42467 () Bool)

(assert (=> b!48792 m!42467))

(declare-fun m!42469 () Bool)

(assert (=> start!7664 m!42469))

(push 1)

(assert tp_is_empty!2129)

(assert (not b!48794))

(assert (not b!48792))

(assert (not b!48795))

(assert (not start!7664))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9717 () Bool)

(declare-fun c!6549 () Bool)

(assert (=> d!9717 (= c!6549 (is-Nil!1322 l!1333))))

(declare-fun e!31349 () (Set tuple2!1804))

(assert (=> d!9717 (= (content!50 l!1333) e!31349)))

(declare-fun b!48810 () Bool)

(assert (=> b!48810 (= e!31349 (as emptyset (Set tuple2!1804)))))

(declare-fun b!48811 () Bool)

(assert (=> b!48811 (= e!31349 (union (insert (h!1901 l!1333) (as emptyset (Set tuple2!1804))) (content!50 (t!4361 l!1333))))))

(assert (= (and d!9717 c!6549) b!48810))

(assert (= (and d!9717 (not c!6549)) b!48811))

(declare-fun m!42473 () Bool)

(assert (=> b!48811 m!42473))

(declare-fun m!42477 () Bool)

(assert (=> b!48811 m!42477))

(assert (=> b!48794 d!9717))

(declare-fun c!6550 () Bool)

(declare-fun d!9723 () Bool)

(assert (=> d!9723 (= c!6550 (is-Nil!1322 (insertStrictlySorted!37 l!1333 newKey!147 newValue!147)))))

(declare-fun e!31352 () (Set tuple2!1804))

(assert (=> d!9723 (= (content!50 (insertStrictlySorted!37 l!1333 newKey!147 newValue!147)) e!31352)))

(declare-fun b!48814 () Bool)

(assert (=> b!48814 (= e!31352 (as emptyset (Set tuple2!1804)))))

(declare-fun b!48815 () Bool)

(assert (=> b!48815 (= e!31352 (union (insert (h!1901 (insertStrictlySorted!37 l!1333 newKey!147 newValue!147)) (as emptyset (Set tuple2!1804))) (content!50 (t!4361 (insertStrictlySorted!37 l!1333 newKey!147 newValue!147)))))))

(assert (= (and d!9723 c!6550) b!48814))

(assert (= (and d!9723 (not c!6550)) b!48815))

(declare-fun m!42479 () Bool)

(assert (=> b!48815 m!42479))

(declare-fun m!42481 () Bool)

(assert (=> b!48815 m!42481))

(assert (=> b!48794 d!9723))

(declare-fun b!48888 () Bool)

(declare-fun c!6580 () Bool)

(declare-fun c!6581 () Bool)

(declare-fun e!31396 () List!1325)

(assert (=> b!48888 (= e!31396 (ite c!6580 (t!4361 l!1333) (ite c!6581 (Cons!1321 (h!1901 l!1333) (t!4361 l!1333)) Nil!1322)))))

(declare-fun d!9725 () Bool)

(declare-fun e!31395 () Bool)

(assert (=> d!9725 e!31395))

(declare-fun res!28353 () Bool)

(assert (=> d!9725 (=> (not res!28353) (not e!31395))))

(declare-fun lt!20701 () List!1325)

(assert (=> d!9725 (= res!28353 (isStrictlySorted!266 lt!20701))))

(declare-fun e!31399 () List!1325)

(assert (=> d!9725 (= lt!20701 e!31399)))

(declare-fun c!6582 () Bool)

(assert (=> d!9725 (= c!6582 (and (is-Cons!1321 l!1333) (bvslt (_1!912 (h!1901 l!1333)) newKey!147)))))

(assert (=> d!9725 (isStrictlySorted!266 l!1333)))

(assert (=> d!9725 (= (insertStrictlySorted!37 l!1333 newKey!147 newValue!147) lt!20701)))

(declare-fun b!48889 () Bool)

(assert (=> b!48889 (= c!6581 (and (is-Cons!1321 l!1333) (bvsgt (_1!912 (h!1901 l!1333)) newKey!147)))))

(declare-fun e!31398 () List!1325)

(declare-fun e!31397 () List!1325)

(assert (=> b!48889 (= e!31398 e!31397)))

(declare-fun b!48890 () Bool)

(declare-fun contains!608 (List!1325 tuple2!1804) Bool)

(assert (=> b!48890 (= e!31395 (contains!608 lt!20701 (tuple2!1805 newKey!147 newValue!147)))))

(declare-fun bm!3780 () Bool)

(declare-fun call!3785 () List!1325)

(declare-fun call!3783 () List!1325)

(assert (=> bm!3780 (= call!3785 call!3783)))

(declare-fun b!48891 () Bool)

(assert (=> b!48891 (= e!31397 call!3785)))

(declare-fun b!48892 () Bool)

(assert (=> b!48892 (= e!31399 e!31398)))

(assert (=> b!48892 (= c!6580 (and (is-Cons!1321 l!1333) (= (_1!912 (h!1901 l!1333)) newKey!147)))))

(declare-fun b!48893 () Bool)

(assert (=> b!48893 (= e!31396 (insertStrictlySorted!37 (t!4361 l!1333) newKey!147 newValue!147))))

(declare-fun b!48894 () Bool)

(declare-fun res!28352 () Bool)

(assert (=> b!48894 (=> (not res!28352) (not e!31395))))

(assert (=> b!48894 (= res!28352 (containsKey!118 lt!20701 newKey!147))))

(declare-fun b!48895 () Bool)

(declare-fun call!3784 () List!1325)

(assert (=> b!48895 (= e!31399 call!3784)))

(declare-fun b!48896 () Bool)

(assert (=> b!48896 (= e!31397 call!3785)))

(declare-fun bm!3781 () Bool)

(declare-fun $colon$colon!54 (List!1325 tuple2!1804) List!1325)

(assert (=> bm!3781 (= call!3784 ($colon$colon!54 e!31396 (ite c!6582 (h!1901 l!1333) (tuple2!1805 newKey!147 newValue!147))))))

(declare-fun c!6579 () Bool)

(assert (=> bm!3781 (= c!6579 c!6582)))

(declare-fun b!48897 () Bool)

(assert (=> b!48897 (= e!31398 call!3783)))

(declare-fun bm!3782 () Bool)

(assert (=> bm!3782 (= call!3783 call!3784)))

(assert (= (and d!9725 c!6582) b!48895))

(assert (= (and d!9725 (not c!6582)) b!48892))

(assert (= (and b!48892 c!6580) b!48897))

(assert (= (and b!48892 (not c!6580)) b!48889))

(assert (= (and b!48889 c!6581) b!48896))

(assert (= (and b!48889 (not c!6581)) b!48891))

(assert (= (or b!48896 b!48891) bm!3780))

(assert (= (or b!48897 bm!3780) bm!3782))

(assert (= (or b!48895 bm!3782) bm!3781))

(assert (= (and bm!3781 c!6579) b!48893))

(assert (= (and bm!3781 (not c!6579)) b!48888))

(assert (= (and d!9725 res!28353) b!48894))

(assert (= (and b!48894 res!28352) b!48890))

(declare-fun m!42503 () Bool)

(assert (=> bm!3781 m!42503))

(declare-fun m!42505 () Bool)

(assert (=> d!9725 m!42505))

(assert (=> d!9725 m!42469))

(declare-fun m!42507 () Bool)

(assert (=> b!48894 m!42507))

(declare-fun m!42509 () Bool)

(assert (=> b!48893 m!42509))

(declare-fun m!42511 () Bool)

(assert (=> b!48890 m!42511))

(assert (=> b!48794 d!9725))

(declare-fun d!9739 () Bool)

(declare-fun res!28366 () Bool)

(declare-fun e!31412 () Bool)

(assert (=> d!9739 (=> res!28366 e!31412)))

(assert (=> d!9739 (= res!28366 (or (is-Nil!1322 l!1333) (is-Nil!1322 (t!4361 l!1333))))))

(assert (=> d!9739 (= (isStrictlySorted!266 l!1333) e!31412)))

(declare-fun b!48918 () Bool)

(declare-fun e!31413 () Bool)

(assert (=> b!48918 (= e!31412 e!31413)))

(declare-fun res!28367 () Bool)

(assert (=> b!48918 (=> (not res!28367) (not e!31413))))

(assert (=> b!48918 (= res!28367 (bvslt (_1!912 (h!1901 l!1333)) (_1!912 (h!1901 (t!4361 l!1333)))))))

(declare-fun b!48919 () Bool)

(assert (=> b!48919 (= e!31413 (isStrictlySorted!266 (t!4361 l!1333)))))

(assert (= (and d!9739 (not res!28366)) b!48918))

(assert (= (and b!48918 res!28367) b!48919))

(declare-fun m!42513 () Bool)

(assert (=> b!48919 m!42513))

(assert (=> start!7664 d!9739))

(declare-fun d!9741 () Bool)

(declare-fun res!28376 () Bool)

(declare-fun e!31432 () Bool)

(assert (=> d!9741 (=> res!28376 e!31432)))

(assert (=> d!9741 (= res!28376 (and (is-Cons!1321 l!1333) (= (_1!912 (h!1901 l!1333)) newKey!147)))))

(assert (=> d!9741 (= (containsKey!118 l!1333 newKey!147) e!31432)))

(declare-fun b!48952 () Bool)

(declare-fun e!31433 () Bool)

(assert (=> b!48952 (= e!31432 e!31433)))

(declare-fun res!28377 () Bool)

(assert (=> b!48952 (=> (not res!28377) (not e!31433))))

(assert (=> b!48952 (= res!28377 (and (or (not (is-Cons!1321 l!1333)) (bvsle (_1!912 (h!1901 l!1333)) newKey!147)) (is-Cons!1321 l!1333) (bvslt (_1!912 (h!1901 l!1333)) newKey!147)))))

(declare-fun b!48953 () Bool)

(assert (=> b!48953 (= e!31433 (containsKey!118 (t!4361 l!1333) newKey!147))))

(assert (= (and d!9741 (not res!28376)) b!48952))

(assert (= (and b!48952 res!28377) b!48953))

(declare-fun m!42535 () Bool)

(assert (=> b!48953 m!42535))

(assert (=> b!48792 d!9741))

(declare-fun b!48960 () Bool)

(declare-fun e!31438 () Bool)

(declare-fun tp!6470 () Bool)

(assert (=> b!48960 (= e!31438 (and tp_is_empty!2129 tp!6470))))

(assert (=> b!48795 (= tp!6461 e!31438)))

(assert (= (and b!48795 (is-Cons!1321 (t!4361 l!1333))) b!48960))

(push 1)

(assert (not b!48894))

(assert (not b!48893))

(assert tp_is_empty!2129)

(assert (not b!48890))

(assert (not b!48815))

(assert (not b!48953))

(assert (not b!48919))

(assert (not b!48960))

(assert (not d!9725))

(assert (not b!48811))

(assert (not bm!3781))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!31480 () List!1325)

(declare-fun b!49015 () Bool)

(declare-fun c!6609 () Bool)

(declare-fun c!6608 () Bool)

(assert (=> b!49015 (= e!31480 (ite c!6608 (t!4361 (t!4361 l!1333)) (ite c!6609 (Cons!1321 (h!1901 (t!4361 l!1333)) (t!4361 (t!4361 l!1333))) Nil!1322)))))

(declare-fun d!9779 () Bool)

(declare-fun e!31479 () Bool)

(assert (=> d!9779 e!31479))

(declare-fun res!28409 () Bool)

(assert (=> d!9779 (=> (not res!28409) (not e!31479))))

(declare-fun lt!20711 () List!1325)

(assert (=> d!9779 (= res!28409 (isStrictlySorted!266 lt!20711))))

(declare-fun e!31483 () List!1325)

(assert (=> d!9779 (= lt!20711 e!31483)))

(declare-fun c!6610 () Bool)

(assert (=> d!9779 (= c!6610 (and (is-Cons!1321 (t!4361 l!1333)) (bvslt (_1!912 (h!1901 (t!4361 l!1333))) newKey!147)))))

(assert (=> d!9779 (isStrictlySorted!266 (t!4361 l!1333))))

(assert (=> d!9779 (= (insertStrictlySorted!37 (t!4361 l!1333) newKey!147 newValue!147) lt!20711)))

(declare-fun b!49016 () Bool)

(assert (=> b!49016 (= c!6609 (and (is-Cons!1321 (t!4361 l!1333)) (bvsgt (_1!912 (h!1901 (t!4361 l!1333))) newKey!147)))))

(declare-fun e!31482 () List!1325)

(declare-fun e!31481 () List!1325)

(assert (=> b!49016 (= e!31482 e!31481)))

(declare-fun b!49017 () Bool)

(assert (=> b!49017 (= e!31479 (contains!608 lt!20711 (tuple2!1805 newKey!147 newValue!147)))))

(declare-fun bm!3805 () Bool)

(declare-fun call!3810 () List!1325)

(declare-fun call!3808 () List!1325)

(assert (=> bm!3805 (= call!3810 call!3808)))

(declare-fun b!49018 () Bool)

(assert (=> b!49018 (= e!31481 call!3810)))

(declare-fun b!49019 () Bool)

(assert (=> b!49019 (= e!31483 e!31482)))

(assert (=> b!49019 (= c!6608 (and (is-Cons!1321 (t!4361 l!1333)) (= (_1!912 (h!1901 (t!4361 l!1333))) newKey!147)))))

(declare-fun b!49020 () Bool)

(assert (=> b!49020 (= e!31480 (insertStrictlySorted!37 (t!4361 (t!4361 l!1333)) newKey!147 newValue!147))))

(declare-fun b!49021 () Bool)

(declare-fun res!28408 () Bool)

(assert (=> b!49021 (=> (not res!28408) (not e!31479))))

(assert (=> b!49021 (= res!28408 (containsKey!118 lt!20711 newKey!147))))

(declare-fun b!49022 () Bool)

(declare-fun call!3809 () List!1325)

(assert (=> b!49022 (= e!31483 call!3809)))

(declare-fun b!49023 () Bool)

(assert (=> b!49023 (= e!31481 call!3810)))

(declare-fun bm!3806 () Bool)

(assert (=> bm!3806 (= call!3809 ($colon$colon!54 e!31480 (ite c!6610 (h!1901 (t!4361 l!1333)) (tuple2!1805 newKey!147 newValue!147))))))

(declare-fun c!6607 () Bool)

(assert (=> bm!3806 (= c!6607 c!6610)))

(declare-fun b!49024 () Bool)

(assert (=> b!49024 (= e!31482 call!3808)))

(declare-fun bm!3807 () Bool)

(assert (=> bm!3807 (= call!3808 call!3809)))

(assert (= (and d!9779 c!6610) b!49022))

(assert (= (and d!9779 (not c!6610)) b!49019))

(assert (= (and b!49019 c!6608) b!49024))

(assert (= (and b!49019 (not c!6608)) b!49016))

(assert (= (and b!49016 c!6609) b!49023))

(assert (= (and b!49016 (not c!6609)) b!49018))

(assert (= (or b!49023 b!49018) bm!3805))

(assert (= (or b!49024 bm!3805) bm!3807))

(assert (= (or b!49022 bm!3807) bm!3806))

(assert (= (and bm!3806 c!6607) b!49020))

(assert (= (and bm!3806 (not c!6607)) b!49015))

(assert (= (and d!9779 res!28409) b!49021))

(assert (= (and b!49021 res!28408) b!49017))

(declare-fun m!42601 () Bool)

(assert (=> bm!3806 m!42601))

(declare-fun m!42603 () Bool)

(assert (=> d!9779 m!42603))

(assert (=> d!9779 m!42513))

(declare-fun m!42605 () Bool)

(assert (=> b!49021 m!42605))

(declare-fun m!42607 () Bool)

(assert (=> b!49020 m!42607))

(declare-fun m!42609 () Bool)

(assert (=> b!49017 m!42609))

(assert (=> b!48893 d!9779))

(declare-fun d!9781 () Bool)

(declare-fun res!28412 () Bool)

(declare-fun e!31488 () Bool)

(assert (=> d!9781 (=> res!28412 e!31488)))

(assert (=> d!9781 (= res!28412 (or (is-Nil!1322 lt!20701) (is-Nil!1322 (t!4361 lt!20701))))))

(assert (=> d!9781 (= (isStrictlySorted!266 lt!20701) e!31488)))

(declare-fun b!49029 () Bool)

(declare-fun e!31489 () Bool)

(assert (=> b!49029 (= e!31488 e!31489)))

(declare-fun res!28413 () Bool)

(assert (=> b!49029 (=> (not res!28413) (not e!31489))))

(assert (=> b!49029 (= res!28413 (bvslt (_1!912 (h!1901 lt!20701)) (_1!912 (h!1901 (t!4361 lt!20701)))))))

(declare-fun b!49030 () Bool)

(assert (=> b!49030 (= e!31489 (isStrictlySorted!266 (t!4361 lt!20701)))))

(assert (= (and d!9781 (not res!28412)) b!49029))

(assert (= (and b!49029 res!28413) b!49030))

(declare-fun m!42611 () Bool)

(assert (=> b!49030 m!42611))

(assert (=> d!9725 d!9781))

(assert (=> d!9725 d!9739))

(declare-fun d!9783 () Bool)

(declare-fun res!28414 () Bool)

(declare-fun e!31490 () Bool)

(assert (=> d!9783 (=> res!28414 e!31490)))

(assert (=> d!9783 (= res!28414 (or (is-Nil!1322 (t!4361 l!1333)) (is-Nil!1322 (t!4361 (t!4361 l!1333)))))))

(assert (=> d!9783 (= (isStrictlySorted!266 (t!4361 l!1333)) e!31490)))

(declare-fun b!49031 () Bool)

(declare-fun e!31491 () Bool)

(assert (=> b!49031 (= e!31490 e!31491)))

(declare-fun res!28415 () Bool)

(assert (=> b!49031 (=> (not res!28415) (not e!31491))))

(assert (=> b!49031 (= res!28415 (bvslt (_1!912 (h!1901 (t!4361 l!1333))) (_1!912 (h!1901 (t!4361 (t!4361 l!1333))))))))

(declare-fun b!49032 () Bool)

(assert (=> b!49032 (= e!31491 (isStrictlySorted!266 (t!4361 (t!4361 l!1333))))))

(assert (= (and d!9783 (not res!28414)) b!49031))

(assert (= (and b!49031 res!28415) b!49032))

(declare-fun m!42613 () Bool)

(assert (=> b!49032 m!42613))

(assert (=> b!48919 d!9783))

(declare-fun d!9785 () Bool)

(declare-fun c!6611 () Bool)

(assert (=> d!9785 (= c!6611 (is-Nil!1322 (t!4361 l!1333)))))

(declare-fun e!31492 () (Set tuple2!1804))

(assert (=> d!9785 (= (content!50 (t!4361 l!1333)) e!31492)))

(declare-fun b!49033 () Bool)

(assert (=> b!49033 (= e!31492 (as emptyset (Set tuple2!1804)))))

(declare-fun b!49034 () Bool)

(assert (=> b!49034 (= e!31492 (union (insert (h!1901 (t!4361 l!1333)) (as emptyset (Set tuple2!1804))) (content!50 (t!4361 (t!4361 l!1333)))))))

(assert (= (and d!9785 c!6611) b!49033))

(assert (= (and d!9785 (not c!6611)) b!49034))

(declare-fun m!42615 () Bool)

(assert (=> b!49034 m!42615))

(declare-fun m!42617 () Bool)

(assert (=> b!49034 m!42617))

(assert (=> b!48811 d!9785))

(declare-fun d!9787 () Bool)

(declare-fun lt!20715 () Bool)

(assert (=> d!9787 (= lt!20715 (member (tuple2!1805 newKey!147 newValue!147) (content!50 lt!20701)))))

(declare-fun e!31498 () Bool)

(assert (=> d!9787 (= lt!20715 e!31498)))

(declare-fun res!28421 () Bool)

(assert (=> d!9787 (=> (not res!28421) (not e!31498))))

(assert (=> d!9787 (= res!28421 (is-Cons!1321 lt!20701))))

(assert (=> d!9787 (= (contains!608 lt!20701 (tuple2!1805 newKey!147 newValue!147)) lt!20715)))

(declare-fun b!49039 () Bool)

(declare-fun e!31497 () Bool)

(assert (=> b!49039 (= e!31498 e!31497)))

(declare-fun res!28420 () Bool)

(assert (=> b!49039 (=> res!28420 e!31497)))

(assert (=> b!49039 (= res!28420 (= (h!1901 lt!20701) (tuple2!1805 newKey!147 newValue!147)))))

(declare-fun b!49040 () Bool)

(assert (=> b!49040 (= e!31497 (contains!608 (t!4361 lt!20701) (tuple2!1805 newKey!147 newValue!147)))))

(assert (= (and d!9787 res!28421) b!49039))

(assert (= (and b!49039 (not res!28420)) b!49040))

(declare-fun m!42619 () Bool)

(assert (=> d!9787 m!42619))

(declare-fun m!42621 () Bool)

(assert (=> d!9787 m!42621))

(declare-fun m!42623 () Bool)

(assert (=> b!49040 m!42623))

(assert (=> b!48890 d!9787))

(declare-fun d!9789 () Bool)

(declare-fun res!28422 () Bool)

(declare-fun e!31499 () Bool)

(assert (=> d!9789 (=> res!28422 e!31499)))

(assert (=> d!9789 (= res!28422 (and (is-Cons!1321 lt!20701) (= (_1!912 (h!1901 lt!20701)) newKey!147)))))

(assert (=> d!9789 (= (containsKey!118 lt!20701 newKey!147) e!31499)))

(declare-fun b!49041 () Bool)

(declare-fun e!31500 () Bool)

(assert (=> b!49041 (= e!31499 e!31500)))

(declare-fun res!28423 () Bool)

(assert (=> b!49041 (=> (not res!28423) (not e!31500))))

(assert (=> b!49041 (= res!28423 (and (or (not (is-Cons!1321 lt!20701)) (bvsle (_1!912 (h!1901 lt!20701)) newKey!147)) (is-Cons!1321 lt!20701) (bvslt (_1!912 (h!1901 lt!20701)) newKey!147)))))

