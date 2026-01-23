; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47454 () Bool)

(assert start!47454)

(assert (=> start!47454 true))

(declare-fun bs!60463 () Bool)

(declare-fun b!519722 () Bool)

(assert (= bs!60463 (and b!519722 start!47454)))

(declare-datatypes ((B!1131 0))(
  ( (B!1132 (val!1853 Int)) )
))
(declare-datatypes ((List!4793 0))(
  ( (Nil!4783) (Cons!4783 (h!10184 B!1131) (t!73383 List!4793)) )
))
(declare-fun lt!216618 () List!4793)

(declare-fun lambda!14877 () Int)

(declare-fun lambda!14876 () Int)

(declare-fun l!3695 () List!4793)

(assert (=> bs!60463 (= (= lt!216618 l!3695) (= lambda!14877 lambda!14876))))

(assert (=> b!519722 true))

(declare-fun b!519716 () Bool)

(declare-fun res!220605 () Bool)

(declare-fun e!311366 () Bool)

(assert (=> b!519716 (=> (not res!220605) (not e!311366))))

(declare-fun lIn!3 () List!4793)

(declare-fun noDuplicate!144 (List!4793) Bool)

(assert (=> b!519716 (= res!220605 (noDuplicate!144 lIn!3))))

(declare-fun b!519717 () Bool)

(declare-fun e!311363 () Bool)

(assert (=> b!519717 (= e!311366 e!311363)))

(declare-fun res!220606 () Bool)

(assert (=> b!519717 (=> (not res!220606) (not e!311363))))

(declare-fun lt!216619 () (Set B!1131))

(declare-fun content!866 (List!4793) (Set B!1131))

(assert (=> b!519717 (= res!220606 (set.subset (content!866 lIn!3) lt!216619))))

(assert (=> b!519717 (= lt!216619 (content!866 l!3695))))

(declare-datatypes ((Unit!8766 0))(
  ( (Unit!8767) )
))
(declare-fun lt!216616 () Unit!8766)

(declare-fun forallContainsSubset!27 (List!4793 List!4793) Unit!8766)

(assert (=> b!519717 (= lt!216616 (forallContainsSubset!27 lIn!3 l!3695))))

(declare-fun b!519719 () Bool)

(declare-fun res!220603 () Bool)

(assert (=> b!519719 (=> (not res!220603) (not e!311366))))

(assert (=> b!519719 (= res!220603 (is-Cons!4783 lIn!3))))

(declare-fun b!519720 () Bool)

(declare-fun res!220601 () Bool)

(assert (=> b!519720 (=> (not res!220601) (not e!311363))))

(declare-fun contains!1143 (List!4793 B!1131) Bool)

(assert (=> b!519720 (= res!220601 (not (contains!1143 (t!73383 lIn!3) (h!10184 lIn!3))))))

(declare-fun b!519721 () Bool)

(declare-fun e!311367 () Bool)

(assert (=> b!519721 (= e!311363 e!311367)))

(declare-fun res!220602 () Bool)

(assert (=> b!519721 (=> (not res!220602) (not e!311367))))

(assert (=> b!519721 (= res!220602 (= (content!866 lt!216618) (set.minus lt!216619 (set.insert (h!10184 lIn!3) (as set.empty (Set B!1131))))))))

(declare-fun -!69 (List!4793 B!1131) List!4793)

(assert (=> b!519721 (= lt!216618 (-!69 l!3695 (h!10184 lIn!3)))))

(declare-fun e!311365 () Bool)

(assert (=> b!519722 (= e!311367 e!311365)))

(declare-fun res!220600 () Bool)

(assert (=> b!519722 (=> (not res!220600) (not e!311365))))

(declare-fun forall!1452 (List!4793 Int) Bool)

(assert (=> b!519722 (= res!220600 (forall!1452 (t!73383 lIn!3) lambda!14877))))

(declare-fun lt!216617 () Unit!8766)

(declare-fun subsetContains!19 (List!4793 List!4793) Unit!8766)

(assert (=> b!519722 (= lt!216617 (subsetContains!19 (t!73383 lIn!3) lt!216618))))

(declare-fun b!519723 () Bool)

(declare-fun res!220599 () Bool)

(assert (=> b!519723 (=> (not res!220599) (not e!311365))))

(assert (=> b!519723 (= res!220599 (noDuplicate!144 (t!73383 lIn!3)))))

(declare-fun b!519724 () Bool)

(declare-fun size!3904 (List!4793) Int)

(assert (=> b!519724 (= e!311365 (>= (size!3904 (t!73383 lIn!3)) (size!3904 lIn!3)))))

(declare-fun b!519725 () Bool)

(declare-fun e!311368 () Bool)

(declare-fun tp_is_empty!2727 () Bool)

(declare-fun tp!161826 () Bool)

(assert (=> b!519725 (= e!311368 (and tp_is_empty!2727 tp!161826))))

(declare-fun res!220604 () Bool)

(assert (=> start!47454 (=> (not res!220604) (not e!311366))))

(assert (=> start!47454 (= res!220604 (forall!1452 lIn!3 lambda!14876))))

(assert (=> start!47454 e!311366))

(assert (=> start!47454 e!311368))

(declare-fun e!311364 () Bool)

(assert (=> start!47454 e!311364))

(declare-fun b!519718 () Bool)

(declare-fun tp!161827 () Bool)

(assert (=> b!519718 (= e!311364 (and tp_is_empty!2727 tp!161827))))

(assert (= (and start!47454 res!220604) b!519716))

(assert (= (and b!519716 res!220605) b!519719))

(assert (= (and b!519719 res!220603) b!519717))

(assert (= (and b!519717 res!220606) b!519720))

(assert (= (and b!519720 res!220601) b!519721))

(assert (= (and b!519721 res!220602) b!519722))

(assert (= (and b!519722 res!220600) b!519723))

(assert (= (and b!519723 res!220599) b!519724))

(assert (= (and start!47454 (is-Cons!4783 lIn!3)) b!519725))

(assert (= (and start!47454 (is-Cons!4783 l!3695)) b!519718))

(declare-fun m!766461 () Bool)

(assert (=> b!519716 m!766461))

(declare-fun m!766463 () Bool)

(assert (=> b!519722 m!766463))

(declare-fun m!766465 () Bool)

(assert (=> b!519722 m!766465))

(declare-fun m!766467 () Bool)

(assert (=> b!519717 m!766467))

(declare-fun m!766469 () Bool)

(assert (=> b!519717 m!766469))

(declare-fun m!766471 () Bool)

(assert (=> b!519717 m!766471))

(declare-fun m!766473 () Bool)

(assert (=> b!519724 m!766473))

(declare-fun m!766475 () Bool)

(assert (=> b!519724 m!766475))

(declare-fun m!766477 () Bool)

(assert (=> b!519721 m!766477))

(declare-fun m!766479 () Bool)

(assert (=> b!519721 m!766479))

(declare-fun m!766481 () Bool)

(assert (=> b!519721 m!766481))

(declare-fun m!766483 () Bool)

(assert (=> start!47454 m!766483))

(declare-fun m!766485 () Bool)

(assert (=> b!519723 m!766485))

(declare-fun m!766487 () Bool)

(assert (=> b!519720 m!766487))

(push 1)

(assert (not b!519720))

(assert (not b!519721))

(assert (not b!519718))

(assert tp_is_empty!2727)

(assert (not start!47454))

(assert (not b!519724))

(assert (not b!519723))

(assert (not b!519725))

(assert (not b!519722))

(assert (not b!519716))

(assert (not b!519717))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!185617 () Bool)

(declare-fun c!100508 () Bool)

(assert (=> d!185617 (= c!100508 (is-Nil!4783 lt!216618))))

(declare-fun e!311393 () (Set B!1131))

(assert (=> d!185617 (= (content!866 lt!216618) e!311393)))

(declare-fun b!519764 () Bool)

(assert (=> b!519764 (= e!311393 (as set.empty (Set B!1131)))))

(declare-fun b!519765 () Bool)

(assert (=> b!519765 (= e!311393 (set.union (set.insert (h!10184 lt!216618) (as set.empty (Set B!1131))) (content!866 (t!73383 lt!216618))))))

(assert (= (and d!185617 c!100508) b!519764))

(assert (= (and d!185617 (not c!100508)) b!519765))

(declare-fun m!766517 () Bool)

(assert (=> b!519765 m!766517))

(declare-fun m!766519 () Bool)

(assert (=> b!519765 m!766519))

(assert (=> b!519721 d!185617))

(declare-fun bm!38022 () Bool)

(declare-fun call!38027 () List!4793)

(assert (=> bm!38022 (= call!38027 (-!69 (t!73383 l!3695) (h!10184 lIn!3)))))

(declare-fun b!519776 () Bool)

(declare-fun e!311401 () List!4793)

(declare-fun e!311403 () List!4793)

(assert (=> b!519776 (= e!311401 e!311403)))

(declare-fun c!100513 () Bool)

(assert (=> b!519776 (= c!100513 (= (h!10184 lIn!3) (h!10184 l!3695)))))

(declare-fun b!519777 () Bool)

(declare-fun e!311402 () Bool)

(declare-fun lt!216634 () List!4793)

(assert (=> b!519777 (= e!311402 (= (content!866 lt!216634) (set.minus (content!866 l!3695) (set.insert (h!10184 lIn!3) (as set.empty (Set B!1131))))))))

(declare-fun b!519778 () Bool)

(assert (=> b!519778 (= e!311403 (Cons!4783 (h!10184 l!3695) call!38027))))

(declare-fun d!185619 () Bool)

(assert (=> d!185619 e!311402))

(declare-fun res!220633 () Bool)

(assert (=> d!185619 (=> (not res!220633) (not e!311402))))

(assert (=> d!185619 (= res!220633 (<= (size!3904 lt!216634) (size!3904 l!3695)))))

(assert (=> d!185619 (= lt!216634 e!311401)))

(declare-fun c!100514 () Bool)

(assert (=> d!185619 (= c!100514 (is-Cons!4783 l!3695))))

(assert (=> d!185619 (= (-!69 l!3695 (h!10184 lIn!3)) lt!216634)))

(declare-fun b!519779 () Bool)

(assert (=> b!519779 (= e!311403 call!38027)))

(declare-fun b!519780 () Bool)

(assert (=> b!519780 (= e!311401 Nil!4783)))

(assert (= (and d!185619 c!100514) b!519776))

(assert (= (and d!185619 (not c!100514)) b!519780))

(assert (= (and b!519776 c!100513) b!519779))

(assert (= (and b!519776 (not c!100513)) b!519778))

(assert (= (or b!519779 b!519778) bm!38022))

(assert (= (and d!185619 res!220633) b!519777))

(declare-fun m!766521 () Bool)

(assert (=> bm!38022 m!766521))

(declare-fun m!766523 () Bool)

(assert (=> b!519777 m!766523))

(assert (=> b!519777 m!766469))

(assert (=> b!519777 m!766479))

(declare-fun m!766525 () Bool)

(assert (=> d!185619 m!766525))

(declare-fun m!766527 () Bool)

(assert (=> d!185619 m!766527))

(assert (=> b!519721 d!185619))

(declare-fun d!185623 () Bool)

(declare-fun lt!216637 () Bool)

(assert (=> d!185623 (= lt!216637 (set.member (h!10184 lIn!3) (content!866 (t!73383 lIn!3))))))

(declare-fun e!311410 () Bool)

(assert (=> d!185623 (= lt!216637 e!311410)))

(declare-fun res!220639 () Bool)

(assert (=> d!185623 (=> (not res!220639) (not e!311410))))

(assert (=> d!185623 (= res!220639 (is-Cons!4783 (t!73383 lIn!3)))))

(assert (=> d!185623 (= (contains!1143 (t!73383 lIn!3) (h!10184 lIn!3)) lt!216637)))

(declare-fun b!519789 () Bool)

(declare-fun e!311411 () Bool)

(assert (=> b!519789 (= e!311410 e!311411)))

(declare-fun res!220638 () Bool)

(assert (=> b!519789 (=> res!220638 e!311411)))

(assert (=> b!519789 (= res!220638 (= (h!10184 (t!73383 lIn!3)) (h!10184 lIn!3)))))

(declare-fun b!519790 () Bool)

(assert (=> b!519790 (= e!311411 (contains!1143 (t!73383 (t!73383 lIn!3)) (h!10184 lIn!3)))))

(assert (= (and d!185623 res!220639) b!519789))

(assert (= (and b!519789 (not res!220638)) b!519790))

(declare-fun m!766529 () Bool)

(assert (=> d!185623 m!766529))

(declare-fun m!766531 () Bool)

(assert (=> d!185623 m!766531))

(declare-fun m!766533 () Bool)

(assert (=> b!519790 m!766533))

(assert (=> b!519720 d!185623))

(declare-fun d!185625 () Bool)

(declare-fun res!220644 () Bool)

(declare-fun e!311417 () Bool)

(assert (=> d!185625 (=> res!220644 e!311417)))

(assert (=> d!185625 (= res!220644 (is-Nil!4783 lIn!3))))

(assert (=> d!185625 (= (forall!1452 lIn!3 lambda!14876) e!311417)))

(declare-fun b!519797 () Bool)

(declare-fun e!311418 () Bool)

(assert (=> b!519797 (= e!311417 e!311418)))

(declare-fun res!220645 () Bool)

(assert (=> b!519797 (=> (not res!220645) (not e!311418))))

(declare-fun dynLambda!3005 (Int B!1131) Bool)

(assert (=> b!519797 (= res!220645 (dynLambda!3005 lambda!14876 (h!10184 lIn!3)))))

(declare-fun b!519798 () Bool)

(assert (=> b!519798 (= e!311418 (forall!1452 (t!73383 lIn!3) lambda!14876))))

(assert (= (and d!185625 (not res!220644)) b!519797))

(assert (= (and b!519797 res!220645) b!519798))

(declare-fun b_lambda!20269 () Bool)

(assert (=> (not b_lambda!20269) (not b!519797)))

(declare-fun m!766539 () Bool)

(assert (=> b!519797 m!766539))

(declare-fun m!766541 () Bool)

(assert (=> b!519798 m!766541))

(assert (=> start!47454 d!185625))

(declare-fun d!185629 () Bool)

(declare-fun res!220646 () Bool)

(declare-fun e!311419 () Bool)

(assert (=> d!185629 (=> res!220646 e!311419)))

(assert (=> d!185629 (= res!220646 (is-Nil!4783 (t!73383 lIn!3)))))

(assert (=> d!185629 (= (forall!1452 (t!73383 lIn!3) lambda!14877) e!311419)))

(declare-fun b!519799 () Bool)

(declare-fun e!311420 () Bool)

(assert (=> b!519799 (= e!311419 e!311420)))

(declare-fun res!220647 () Bool)

(assert (=> b!519799 (=> (not res!220647) (not e!311420))))

(assert (=> b!519799 (= res!220647 (dynLambda!3005 lambda!14877 (h!10184 (t!73383 lIn!3))))))

(declare-fun b!519800 () Bool)

(assert (=> b!519800 (= e!311420 (forall!1452 (t!73383 (t!73383 lIn!3)) lambda!14877))))

(assert (= (and d!185629 (not res!220646)) b!519799))

(assert (= (and b!519799 res!220647) b!519800))

(declare-fun b_lambda!20271 () Bool)

(assert (=> (not b_lambda!20271) (not b!519799)))

(declare-fun m!766543 () Bool)

(assert (=> b!519799 m!766543))

(declare-fun m!766545 () Bool)

(assert (=> b!519800 m!766545))

(assert (=> b!519722 d!185629))

(declare-fun bs!60465 () Bool)

(declare-fun d!185631 () Bool)

(assert (= bs!60465 (and d!185631 start!47454)))

(declare-fun lambda!14886 () Int)

(assert (=> bs!60465 (= (= lt!216618 l!3695) (= lambda!14886 lambda!14876))))

(declare-fun bs!60466 () Bool)

(assert (= bs!60466 (and d!185631 b!519722)))

(assert (=> bs!60466 (= lambda!14886 lambda!14877)))

(assert (=> d!185631 true))

(assert (=> d!185631 (forall!1452 (t!73383 lIn!3) lambda!14886)))

(declare-fun lt!216640 () Unit!8766)

(declare-fun choose!3721 (List!4793 List!4793) Unit!8766)

(assert (=> d!185631 (= lt!216640 (choose!3721 (t!73383 lIn!3) lt!216618))))

(assert (=> d!185631 (set.subset (content!866 (t!73383 lIn!3)) (content!866 lt!216618))))

(assert (=> d!185631 (= (subsetContains!19 (t!73383 lIn!3) lt!216618) lt!216640)))

(declare-fun bs!60467 () Bool)

(assert (= bs!60467 d!185631))

(declare-fun m!766547 () Bool)

(assert (=> bs!60467 m!766547))

(declare-fun m!766549 () Bool)

(assert (=> bs!60467 m!766549))

(assert (=> bs!60467 m!766529))

(assert (=> bs!60467 m!766477))

(assert (=> b!519722 d!185631))

(declare-fun d!185633 () Bool)

(declare-fun c!100518 () Bool)

(assert (=> d!185633 (= c!100518 (is-Nil!4783 lIn!3))))

(declare-fun e!311421 () (Set B!1131))

(assert (=> d!185633 (= (content!866 lIn!3) e!311421)))

(declare-fun b!519801 () Bool)

(assert (=> b!519801 (= e!311421 (as set.empty (Set B!1131)))))

(declare-fun b!519802 () Bool)

(assert (=> b!519802 (= e!311421 (set.union (set.insert (h!10184 lIn!3) (as set.empty (Set B!1131))) (content!866 (t!73383 lIn!3))))))

(assert (= (and d!185633 c!100518) b!519801))

(assert (= (and d!185633 (not c!100518)) b!519802))

(assert (=> b!519802 m!766479))

(assert (=> b!519802 m!766529))

(assert (=> b!519717 d!185633))

(declare-fun d!185635 () Bool)

(declare-fun c!100519 () Bool)

(assert (=> d!185635 (= c!100519 (is-Nil!4783 l!3695))))

(declare-fun e!311422 () (Set B!1131))

(assert (=> d!185635 (= (content!866 l!3695) e!311422)))

(declare-fun b!519803 () Bool)

(assert (=> b!519803 (= e!311422 (as set.empty (Set B!1131)))))

(declare-fun b!519804 () Bool)

(assert (=> b!519804 (= e!311422 (set.union (set.insert (h!10184 l!3695) (as set.empty (Set B!1131))) (content!866 (t!73383 l!3695))))))

(assert (= (and d!185635 c!100519) b!519803))

(assert (= (and d!185635 (not c!100519)) b!519804))

(declare-fun m!766551 () Bool)

(assert (=> b!519804 m!766551))

(declare-fun m!766553 () Bool)

(assert (=> b!519804 m!766553))

(assert (=> b!519717 d!185635))

(declare-fun bs!60468 () Bool)

(declare-fun d!185637 () Bool)

(assert (= bs!60468 (and d!185637 start!47454)))

(declare-fun lambda!14889 () Int)

(assert (=> bs!60468 (= lambda!14889 lambda!14876)))

(declare-fun bs!60469 () Bool)

(assert (= bs!60469 (and d!185637 b!519722)))

(assert (=> bs!60469 (= (= l!3695 lt!216618) (= lambda!14889 lambda!14877))))

(declare-fun bs!60470 () Bool)

(assert (= bs!60470 (and d!185637 d!185631)))

(assert (=> bs!60470 (= (= l!3695 lt!216618) (= lambda!14889 lambda!14886))))

(assert (=> d!185637 true))

(assert (=> d!185637 (set.subset (content!866 lIn!3) (content!866 l!3695))))

(declare-fun lt!216645 () Unit!8766)

(declare-fun choose!3722 (List!4793 List!4793) Unit!8766)

(assert (=> d!185637 (= lt!216645 (choose!3722 lIn!3 l!3695))))

(assert (=> d!185637 (forall!1452 lIn!3 lambda!14889)))

(assert (=> d!185637 (= (forallContainsSubset!27 lIn!3 l!3695) lt!216645)))

(declare-fun bs!60471 () Bool)

(assert (= bs!60471 d!185637))

(assert (=> bs!60471 m!766467))

(assert (=> bs!60471 m!766469))

(declare-fun m!766555 () Bool)

(assert (=> bs!60471 m!766555))

(declare-fun m!766557 () Bool)

(assert (=> bs!60471 m!766557))

(assert (=> b!519717 d!185637))

(declare-fun d!185639 () Bool)

(declare-fun res!220654 () Bool)

(declare-fun e!311434 () Bool)

(assert (=> d!185639 (=> res!220654 e!311434)))

(assert (=> d!185639 (= res!220654 (is-Nil!4783 lIn!3))))

(assert (=> d!185639 (= (noDuplicate!144 lIn!3) e!311434)))

(declare-fun b!519819 () Bool)

(declare-fun e!311435 () Bool)

(assert (=> b!519819 (= e!311434 e!311435)))

(declare-fun res!220655 () Bool)

(assert (=> b!519819 (=> (not res!220655) (not e!311435))))

(assert (=> b!519819 (= res!220655 (not (contains!1143 (t!73383 lIn!3) (h!10184 lIn!3))))))

(declare-fun b!519820 () Bool)

(assert (=> b!519820 (= e!311435 (noDuplicate!144 (t!73383 lIn!3)))))

(assert (= (and d!185639 (not res!220654)) b!519819))

(assert (= (and b!519819 res!220655) b!519820))

(assert (=> b!519819 m!766487))

(assert (=> b!519820 m!766485))

(assert (=> b!519716 d!185639))

(declare-fun d!185641 () Bool)

(declare-fun res!220656 () Bool)

(declare-fun e!311436 () Bool)

(assert (=> d!185641 (=> res!220656 e!311436)))

(assert (=> d!185641 (= res!220656 (is-Nil!4783 (t!73383 lIn!3)))))

(assert (=> d!185641 (= (noDuplicate!144 (t!73383 lIn!3)) e!311436)))

(declare-fun b!519821 () Bool)

(declare-fun e!311437 () Bool)

(assert (=> b!519821 (= e!311436 e!311437)))

(declare-fun res!220657 () Bool)

(assert (=> b!519821 (=> (not res!220657) (not e!311437))))

(assert (=> b!519821 (= res!220657 (not (contains!1143 (t!73383 (t!73383 lIn!3)) (h!10184 (t!73383 lIn!3)))))))

(declare-fun b!519822 () Bool)

(assert (=> b!519822 (= e!311437 (noDuplicate!144 (t!73383 (t!73383 lIn!3))))))

(assert (= (and d!185641 (not res!220656)) b!519821))

(assert (= (and b!519821 res!220657) b!519822))

(declare-fun m!766559 () Bool)

(assert (=> b!519821 m!766559))

(declare-fun m!766561 () Bool)

(assert (=> b!519822 m!766561))

(assert (=> b!519723 d!185641))

(declare-fun d!185643 () Bool)

(declare-fun lt!216649 () Int)

(assert (=> d!185643 (>= lt!216649 0)))

(declare-fun e!311443 () Int)

(assert (=> d!185643 (= lt!216649 e!311443)))

(declare-fun c!100528 () Bool)

(assert (=> d!185643 (= c!100528 (is-Nil!4783 (t!73383 lIn!3)))))

(assert (=> d!185643 (= (size!3904 (t!73383 lIn!3)) lt!216649)))

(declare-fun b!519832 () Bool)

(assert (=> b!519832 (= e!311443 0)))

(declare-fun b!519833 () Bool)

(assert (=> b!519833 (= e!311443 (+ 1 (size!3904 (t!73383 (t!73383 lIn!3)))))))

(assert (= (and d!185643 c!100528) b!519832))

(assert (= (and d!185643 (not c!100528)) b!519833))

(declare-fun m!766563 () Bool)

(assert (=> b!519833 m!766563))

(assert (=> b!519724 d!185643))

(declare-fun d!185645 () Bool)

(declare-fun lt!216650 () Int)

(assert (=> d!185645 (>= lt!216650 0)))

(declare-fun e!311444 () Int)

(assert (=> d!185645 (= lt!216650 e!311444)))

(declare-fun c!100529 () Bool)

(assert (=> d!185645 (= c!100529 (is-Nil!4783 lIn!3))))

(assert (=> d!185645 (= (size!3904 lIn!3) lt!216650)))

(declare-fun b!519834 () Bool)

(assert (=> b!519834 (= e!311444 0)))

(declare-fun b!519835 () Bool)

(assert (=> b!519835 (= e!311444 (+ 1 (size!3904 (t!73383 lIn!3))))))

(assert (= (and d!185645 c!100529) b!519834))

(assert (= (and d!185645 (not c!100529)) b!519835))

(assert (=> b!519835 m!766473))

(assert (=> b!519724 d!185645))

(declare-fun b!519840 () Bool)

(declare-fun e!311447 () Bool)

(declare-fun tp!161836 () Bool)

(assert (=> b!519840 (= e!311447 (and tp_is_empty!2727 tp!161836))))

(assert (=> b!519718 (= tp!161827 e!311447)))

(assert (= (and b!519718 (is-Cons!4783 (t!73383 l!3695))) b!519840))

(declare-fun b!519841 () Bool)

(declare-fun e!311448 () Bool)

(declare-fun tp!161837 () Bool)

(assert (=> b!519841 (= e!311448 (and tp_is_empty!2727 tp!161837))))

(assert (=> b!519725 (= tp!161826 e!311448)))

(assert (= (and b!519725 (is-Cons!4783 (t!73383 lIn!3))) b!519841))

(declare-fun b_lambda!20273 () Bool)

(assert (= b_lambda!20271 (or b!519722 b_lambda!20273)))

(declare-fun bs!60472 () Bool)

(declare-fun d!185649 () Bool)

(assert (= bs!60472 (and d!185649 b!519722)))

(assert (=> bs!60472 (= (dynLambda!3005 lambda!14877 (h!10184 (t!73383 lIn!3))) (contains!1143 lt!216618 (h!10184 (t!73383 lIn!3))))))

(declare-fun m!766573 () Bool)

(assert (=> bs!60472 m!766573))

(assert (=> b!519799 d!185649))

(declare-fun b_lambda!20275 () Bool)

(assert (= b_lambda!20269 (or start!47454 b_lambda!20275)))

(declare-fun bs!60473 () Bool)

(declare-fun d!185651 () Bool)

(assert (= bs!60473 (and d!185651 start!47454)))

(assert (=> bs!60473 (= (dynLambda!3005 lambda!14876 (h!10184 lIn!3)) (contains!1143 l!3695 (h!10184 lIn!3)))))

(declare-fun m!766575 () Bool)

(assert (=> bs!60473 m!766575))

(assert (=> b!519797 d!185651))

(push 1)

(assert (not b!519802))

(assert (not b!519790))

(assert (not b!519820))

(assert (not b_lambda!20273))

(assert (not b!519765))

(assert (not b!519800))

(assert (not b!519841))

(assert (not b!519777))

(assert (not d!185637))

(assert (not b!519821))

(assert (not b!519804))

(assert (not d!185619))

(assert (not bs!60472))

(assert (not b!519840))

(assert (not b_lambda!20275))

(assert (not bs!60473))

(assert (not d!185631))

(assert (not bm!38022))

(assert (not d!185623))

(assert (not b!519835))

(assert (not b!519819))

(assert (not b!519833))

(assert (not b!519822))

(assert (not b!519798))

(assert tp_is_empty!2727)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

