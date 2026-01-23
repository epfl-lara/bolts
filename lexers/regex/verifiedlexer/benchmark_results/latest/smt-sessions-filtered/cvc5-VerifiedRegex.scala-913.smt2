; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47234 () Bool)

(assert start!47234)

(assert (=> start!47234 true))

(declare-fun res!220001 () Bool)

(declare-fun e!310546 () Bool)

(assert (=> start!47234 (=> (not res!220001) (not e!310546))))

(declare-datatypes ((B!1095 0))(
  ( (B!1096 (val!1835 Int)) )
))
(declare-datatypes ((List!4775 0))(
  ( (Nil!4765) (Cons!4765 (h!10166 B!1095) (t!73365 List!4775)) )
))
(declare-fun lIn!3 () List!4775)

(declare-fun lambda!14736 () Int)

(declare-fun forall!1434 (List!4775 Int) Bool)

(assert (=> start!47234 (= res!220001 (forall!1434 lIn!3 lambda!14736))))

(assert (=> start!47234 e!310546))

(declare-fun e!310547 () Bool)

(assert (=> start!47234 e!310547))

(declare-fun e!310545 () Bool)

(assert (=> start!47234 e!310545))

(declare-fun b!518600 () Bool)

(declare-fun tp_is_empty!2691 () Bool)

(declare-fun tp!161662 () Bool)

(assert (=> b!518600 (= e!310547 (and tp_is_empty!2691 tp!161662))))

(declare-fun b!518601 () Bool)

(declare-fun res!220002 () Bool)

(assert (=> b!518601 (=> (not res!220002) (not e!310546))))

(declare-fun noDuplicate!126 (List!4775) Bool)

(assert (=> b!518601 (= res!220002 (noDuplicate!126 lIn!3))))

(declare-fun b!518602 () Bool)

(declare-fun e!310548 () Bool)

(declare-fun contains!1125 (List!4775 B!1095) Bool)

(assert (=> b!518602 (= e!310548 (contains!1125 (t!73365 lIn!3) (h!10166 lIn!3)))))

(declare-fun b!518603 () Bool)

(declare-fun res!219999 () Bool)

(assert (=> b!518603 (=> (not res!219999) (not e!310546))))

(assert (=> b!518603 (= res!219999 (is-Cons!4765 lIn!3))))

(declare-fun b!518604 () Bool)

(assert (=> b!518604 (= e!310546 e!310548)))

(declare-fun res!220000 () Bool)

(assert (=> b!518604 (=> (not res!220000) (not e!310548))))

(declare-fun l!3695 () List!4775)

(declare-fun content!850 (List!4775) (Set B!1095))

(assert (=> b!518604 (= res!220000 (set.subset (content!850 lIn!3) (content!850 l!3695)))))

(declare-datatypes ((Unit!8734 0))(
  ( (Unit!8735) )
))
(declare-fun lt!216222 () Unit!8734)

(declare-fun forallContainsSubset!11 (List!4775 List!4775) Unit!8734)

(assert (=> b!518604 (= lt!216222 (forallContainsSubset!11 lIn!3 l!3695))))

(declare-fun b!518605 () Bool)

(declare-fun tp!161663 () Bool)

(assert (=> b!518605 (= e!310545 (and tp_is_empty!2691 tp!161663))))

(assert (= (and start!47234 res!220001) b!518601))

(assert (= (and b!518601 res!220002) b!518603))

(assert (= (and b!518603 res!219999) b!518604))

(assert (= (and b!518604 res!220000) b!518602))

(assert (= (and start!47234 (is-Cons!4765 lIn!3)) b!518600))

(assert (= (and start!47234 (is-Cons!4765 l!3695)) b!518605))

(declare-fun m!765557 () Bool)

(assert (=> start!47234 m!765557))

(declare-fun m!765559 () Bool)

(assert (=> b!518601 m!765559))

(declare-fun m!765561 () Bool)

(assert (=> b!518602 m!765561))

(declare-fun m!765563 () Bool)

(assert (=> b!518604 m!765563))

(declare-fun m!765565 () Bool)

(assert (=> b!518604 m!765565))

(declare-fun m!765567 () Bool)

(assert (=> b!518604 m!765567))

(push 1)

(assert (not start!47234))

(assert (not b!518600))

(assert (not b!518605))

(assert (not b!518601))

(assert tp_is_empty!2691)

(assert (not b!518602))

(assert (not b!518604))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!185316 () Bool)

(declare-fun c!100364 () Bool)

(assert (=> d!185316 (= c!100364 (is-Nil!4765 lIn!3))))

(declare-fun e!310565 () (Set B!1095))

(assert (=> d!185316 (= (content!850 lIn!3) e!310565)))

(declare-fun b!518632 () Bool)

(assert (=> b!518632 (= e!310565 (as set.empty (Set B!1095)))))

(declare-fun b!518633 () Bool)

(assert (=> b!518633 (= e!310565 (set.union (set.insert (h!10166 lIn!3) (as set.empty (Set B!1095))) (content!850 (t!73365 lIn!3))))))

(assert (= (and d!185316 c!100364) b!518632))

(assert (= (and d!185316 (not c!100364)) b!518633))

(declare-fun m!765581 () Bool)

(assert (=> b!518633 m!765581))

(declare-fun m!765583 () Bool)

(assert (=> b!518633 m!765583))

(assert (=> b!518604 d!185316))

(declare-fun d!185318 () Bool)

(declare-fun c!100365 () Bool)

(assert (=> d!185318 (= c!100365 (is-Nil!4765 l!3695))))

(declare-fun e!310566 () (Set B!1095))

(assert (=> d!185318 (= (content!850 l!3695) e!310566)))

(declare-fun b!518634 () Bool)

(assert (=> b!518634 (= e!310566 (as set.empty (Set B!1095)))))

(declare-fun b!518635 () Bool)

(assert (=> b!518635 (= e!310566 (set.union (set.insert (h!10166 l!3695) (as set.empty (Set B!1095))) (content!850 (t!73365 l!3695))))))

(assert (= (and d!185318 c!100365) b!518634))

(assert (= (and d!185318 (not c!100365)) b!518635))

(declare-fun m!765585 () Bool)

(assert (=> b!518635 m!765585))

(declare-fun m!765587 () Bool)

(assert (=> b!518635 m!765587))

(assert (=> b!518604 d!185318))

(declare-fun bs!60353 () Bool)

(declare-fun d!185320 () Bool)

(assert (= bs!60353 (and d!185320 start!47234)))

(declare-fun lambda!14742 () Int)

(assert (=> bs!60353 (= lambda!14742 lambda!14736)))

(assert (=> d!185320 true))

(assert (=> d!185320 (set.subset (content!850 lIn!3) (content!850 l!3695))))

(declare-fun lt!216228 () Unit!8734)

(declare-fun choose!3704 (List!4775 List!4775) Unit!8734)

(assert (=> d!185320 (= lt!216228 (choose!3704 lIn!3 l!3695))))

(assert (=> d!185320 (forall!1434 lIn!3 lambda!14742)))

(assert (=> d!185320 (= (forallContainsSubset!11 lIn!3 l!3695) lt!216228)))

(declare-fun bs!60354 () Bool)

(assert (= bs!60354 d!185320))

(assert (=> bs!60354 m!765563))

(assert (=> bs!60354 m!765565))

(declare-fun m!765589 () Bool)

(assert (=> bs!60354 m!765589))

(declare-fun m!765591 () Bool)

(assert (=> bs!60354 m!765591))

(assert (=> b!518604 d!185320))

(declare-fun d!185322 () Bool)

(declare-fun res!220019 () Bool)

(declare-fun e!310571 () Bool)

(assert (=> d!185322 (=> res!220019 e!310571)))

(assert (=> d!185322 (= res!220019 (is-Nil!4765 lIn!3))))

(assert (=> d!185322 (= (noDuplicate!126 lIn!3) e!310571)))

(declare-fun b!518640 () Bool)

(declare-fun e!310572 () Bool)

(assert (=> b!518640 (= e!310571 e!310572)))

(declare-fun res!220020 () Bool)

(assert (=> b!518640 (=> (not res!220020) (not e!310572))))

(assert (=> b!518640 (= res!220020 (not (contains!1125 (t!73365 lIn!3) (h!10166 lIn!3))))))

(declare-fun b!518641 () Bool)

(assert (=> b!518641 (= e!310572 (noDuplicate!126 (t!73365 lIn!3)))))

(assert (= (and d!185322 (not res!220019)) b!518640))

(assert (= (and b!518640 res!220020) b!518641))

(assert (=> b!518640 m!765561))

(declare-fun m!765593 () Bool)

(assert (=> b!518641 m!765593))

(assert (=> b!518601 d!185322))

(declare-fun d!185326 () Bool)

(declare-fun res!220025 () Bool)

(declare-fun e!310577 () Bool)

(assert (=> d!185326 (=> res!220025 e!310577)))

(assert (=> d!185326 (= res!220025 (is-Nil!4765 lIn!3))))

(assert (=> d!185326 (= (forall!1434 lIn!3 lambda!14736) e!310577)))

(declare-fun b!518646 () Bool)

(declare-fun e!310578 () Bool)

(assert (=> b!518646 (= e!310577 e!310578)))

(declare-fun res!220026 () Bool)

(assert (=> b!518646 (=> (not res!220026) (not e!310578))))

(declare-fun dynLambda!2994 (Int B!1095) Bool)

(assert (=> b!518646 (= res!220026 (dynLambda!2994 lambda!14736 (h!10166 lIn!3)))))

(declare-fun b!518647 () Bool)

(assert (=> b!518647 (= e!310578 (forall!1434 (t!73365 lIn!3) lambda!14736))))

(assert (= (and d!185326 (not res!220025)) b!518646))

(assert (= (and b!518646 res!220026) b!518647))

(declare-fun b_lambda!20197 () Bool)

(assert (=> (not b_lambda!20197) (not b!518646)))

(declare-fun m!765595 () Bool)

(assert (=> b!518646 m!765595))

(declare-fun m!765597 () Bool)

(assert (=> b!518647 m!765597))

(assert (=> start!47234 d!185326))

(declare-fun d!185328 () Bool)

(declare-fun lt!216231 () Bool)

(assert (=> d!185328 (= lt!216231 (set.member (h!10166 lIn!3) (content!850 (t!73365 lIn!3))))))

(declare-fun e!310588 () Bool)

(assert (=> d!185328 (= lt!216231 e!310588)))

(declare-fun res!220035 () Bool)

(assert (=> d!185328 (=> (not res!220035) (not e!310588))))

(assert (=> d!185328 (= res!220035 (is-Cons!4765 (t!73365 lIn!3)))))

(assert (=> d!185328 (= (contains!1125 (t!73365 lIn!3) (h!10166 lIn!3)) lt!216231)))

(declare-fun b!518656 () Bool)

(declare-fun e!310587 () Bool)

(assert (=> b!518656 (= e!310588 e!310587)))

(declare-fun res!220036 () Bool)

(assert (=> b!518656 (=> res!220036 e!310587)))

(assert (=> b!518656 (= res!220036 (= (h!10166 (t!73365 lIn!3)) (h!10166 lIn!3)))))

(declare-fun b!518657 () Bool)

(assert (=> b!518657 (= e!310587 (contains!1125 (t!73365 (t!73365 lIn!3)) (h!10166 lIn!3)))))

(assert (= (and d!185328 res!220035) b!518656))

(assert (= (and b!518656 (not res!220036)) b!518657))

(assert (=> d!185328 m!765583))

(declare-fun m!765599 () Bool)

(assert (=> d!185328 m!765599))

(declare-fun m!765601 () Bool)

(assert (=> b!518657 m!765601))

(assert (=> b!518602 d!185328))

(declare-fun b!518664 () Bool)

(declare-fun e!310593 () Bool)

(declare-fun tp!161672 () Bool)

(assert (=> b!518664 (= e!310593 (and tp_is_empty!2691 tp!161672))))

(assert (=> b!518605 (= tp!161663 e!310593)))

(assert (= (and b!518605 (is-Cons!4765 (t!73365 l!3695))) b!518664))

(declare-fun b!518665 () Bool)

(declare-fun e!310594 () Bool)

(declare-fun tp!161673 () Bool)

(assert (=> b!518665 (= e!310594 (and tp_is_empty!2691 tp!161673))))

(assert (=> b!518600 (= tp!161662 e!310594)))

(assert (= (and b!518600 (is-Cons!4765 (t!73365 lIn!3))) b!518665))

(declare-fun b_lambda!20199 () Bool)

(assert (= b_lambda!20197 (or start!47234 b_lambda!20199)))

(declare-fun bs!60355 () Bool)

(declare-fun d!185330 () Bool)

(assert (= bs!60355 (and d!185330 start!47234)))

(assert (=> bs!60355 (= (dynLambda!2994 lambda!14736 (h!10166 lIn!3)) (contains!1125 l!3695 (h!10166 lIn!3)))))

(declare-fun m!765605 () Bool)

(assert (=> bs!60355 m!765605))

(assert (=> b!518646 d!185330))

(push 1)

(assert (not b_lambda!20199))

(assert tp_is_empty!2691)

(assert (not b!518664))

(assert (not bs!60355))

(assert (not d!185320))

(assert (not b!518633))

(assert (not d!185328))

(assert (not b!518641))

(assert (not b!518647))

(assert (not b!518665))

(assert (not b!518640))

(assert (not b!518657))

(assert (not b!518635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

