; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504610 () Bool)

(assert start!504610)

(declare-fun b!4845404 () Bool)

(declare-fun e!3028431 () Bool)

(declare-datatypes ((K!17237 0))(
  ( (K!17238 (val!22095 Int)) )
))
(declare-datatypes ((V!17483 0))(
  ( (V!17484 (val!22096 Int)) )
))
(declare-datatypes ((tuple2!59062 0))(
  ( (tuple2!59063 (_1!32825 K!17237) (_2!32825 V!17483)) )
))
(declare-datatypes ((List!55588 0))(
  ( (Nil!55464) (Cons!55464 (h!61901 tuple2!59062) (t!363084 List!55588)) )
))
(declare-datatypes ((tuple2!59064 0))(
  ( (tuple2!59065 (_1!32826 (_ BitVec 64)) (_2!32826 List!55588)) )
))
(declare-datatypes ((List!55589 0))(
  ( (Nil!55465) (Cons!55465 (h!61902 tuple2!59064) (t!363085 List!55589)) )
))
(declare-fun l!11108 () List!55589)

(declare-fun k!1656 () K!17237)

(declare-fun containsKey!4640 (List!55588 K!17237) Bool)

(assert (=> b!4845404 (= e!3028431 (not (containsKey!4640 (_2!32826 (h!61902 l!11108)) k!1656)))))

(declare-fun b!4845405 () Bool)

(declare-fun res!2066761 () Bool)

(declare-fun e!3028429 () Bool)

(assert (=> b!4845405 (=> (not res!2066761) (not e!3028429))))

(assert (=> b!4845405 (= res!2066761 (is-Cons!55465 l!11108))))

(declare-fun b!4845406 () Bool)

(declare-fun containsKeyBiggerList!751 (List!55589 K!17237) Bool)

(assert (=> b!4845406 (= e!3028429 (not (containsKeyBiggerList!751 (t!363085 l!11108) k!1656)))))

(declare-fun res!2066762 () Bool)

(assert (=> start!504610 (=> (not res!2066762) (not e!3028429))))

(assert (=> start!504610 (= res!2066762 (containsKeyBiggerList!751 l!11108 k!1656))))

(assert (=> start!504610 e!3028429))

(declare-fun e!3028430 () Bool)

(assert (=> start!504610 e!3028430))

(declare-fun tp_is_empty!35061 () Bool)

(assert (=> start!504610 tp_is_empty!35061))

(declare-fun b!4845407 () Bool)

(declare-fun tp!1364249 () Bool)

(declare-fun tp!1364250 () Bool)

(assert (=> b!4845407 (= e!3028430 (and tp!1364249 tp!1364250))))

(declare-fun b!4845408 () Bool)

(declare-fun res!2066760 () Bool)

(assert (=> b!4845408 (=> (not res!2066760) (not e!3028429))))

(declare-fun lambda!242221 () Int)

(declare-fun forall!12906 (List!55589 Int) Bool)

(assert (=> b!4845408 (= res!2066760 (forall!12906 l!11108 lambda!242221))))

(declare-fun b!4845409 () Bool)

(declare-fun res!2066758 () Bool)

(assert (=> b!4845409 (=> (not res!2066758) (not e!3028429))))

(assert (=> b!4845409 (= res!2066758 e!3028431)))

(declare-fun res!2066759 () Bool)

(assert (=> b!4845409 (=> res!2066759 e!3028431)))

(assert (=> b!4845409 (= res!2066759 (not (is-Cons!55465 l!11108)))))

(assert (= (and start!504610 res!2066762) b!4845408))

(assert (= (and b!4845408 res!2066760) b!4845409))

(assert (= (and b!4845409 (not res!2066759)) b!4845404))

(assert (= (and b!4845409 res!2066758) b!4845405))

(assert (= (and b!4845405 res!2066761) b!4845406))

(assert (= (and start!504610 (is-Cons!55465 l!11108)) b!4845407))

(declare-fun m!5843696 () Bool)

(assert (=> b!4845404 m!5843696))

(declare-fun m!5843698 () Bool)

(assert (=> b!4845406 m!5843698))

(declare-fun m!5843700 () Bool)

(assert (=> start!504610 m!5843700))

(declare-fun m!5843702 () Bool)

(assert (=> b!4845408 m!5843702))

(push 1)

(assert (not b!4845407))

(assert (not b!4845408))

(assert (not start!504610))

(assert tp_is_empty!35061)

(assert (not b!4845404))

(assert (not b!4845406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554473 () Bool)

(declare-fun res!2066786 () Bool)

(declare-fun e!3028449 () Bool)

(assert (=> d!1554473 (=> res!2066786 e!3028449)))

(declare-fun e!3028447 () Bool)

(assert (=> d!1554473 (= res!2066786 e!3028447)))

(declare-fun res!2066785 () Bool)

(assert (=> d!1554473 (=> (not res!2066785) (not e!3028447))))

(assert (=> d!1554473 (= res!2066785 (is-Cons!55465 l!11108))))

(assert (=> d!1554473 (= (containsKeyBiggerList!751 l!11108 k!1656) e!3028449)))

(declare-fun b!4845434 () Bool)

(assert (=> b!4845434 (= e!3028447 (containsKey!4640 (_2!32826 (h!61902 l!11108)) k!1656))))

(declare-fun b!4845435 () Bool)

(declare-fun e!3028448 () Bool)

(assert (=> b!4845435 (= e!3028449 e!3028448)))

(declare-fun res!2066784 () Bool)

(assert (=> b!4845435 (=> (not res!2066784) (not e!3028448))))

(assert (=> b!4845435 (= res!2066784 (is-Cons!55465 l!11108))))

(declare-fun b!4845436 () Bool)

(assert (=> b!4845436 (= e!3028448 (containsKeyBiggerList!751 (t!363085 l!11108) k!1656))))

(assert (= (and d!1554473 res!2066785) b!4845434))

(assert (= (and d!1554473 (not res!2066786)) b!4845435))

(assert (= (and b!4845435 res!2066784) b!4845436))

(assert (=> b!4845434 m!5843696))

(assert (=> b!4845436 m!5843698))

(assert (=> start!504610 d!1554473))

(declare-fun d!1554475 () Bool)

(declare-fun res!2066791 () Bool)

(declare-fun e!3028454 () Bool)

(assert (=> d!1554475 (=> res!2066791 e!3028454)))

(assert (=> d!1554475 (= res!2066791 (and (is-Cons!55464 (_2!32826 (h!61902 l!11108))) (= (_1!32825 (h!61901 (_2!32826 (h!61902 l!11108)))) k!1656)))))

(assert (=> d!1554475 (= (containsKey!4640 (_2!32826 (h!61902 l!11108)) k!1656) e!3028454)))

(declare-fun b!4845441 () Bool)

(declare-fun e!3028455 () Bool)

(assert (=> b!4845441 (= e!3028454 e!3028455)))

(declare-fun res!2066792 () Bool)

(assert (=> b!4845441 (=> (not res!2066792) (not e!3028455))))

(assert (=> b!4845441 (= res!2066792 (is-Cons!55464 (_2!32826 (h!61902 l!11108))))))

(declare-fun b!4845442 () Bool)

(assert (=> b!4845442 (= e!3028455 (containsKey!4640 (t!363084 (_2!32826 (h!61902 l!11108))) k!1656))))

(assert (= (and d!1554475 (not res!2066791)) b!4845441))

(assert (= (and b!4845441 res!2066792) b!4845442))

(declare-fun m!5843712 () Bool)

(assert (=> b!4845442 m!5843712))

(assert (=> b!4845404 d!1554475))

(declare-fun d!1554477 () Bool)

(declare-fun res!2066797 () Bool)

(declare-fun e!3028460 () Bool)

(assert (=> d!1554477 (=> res!2066797 e!3028460)))

(assert (=> d!1554477 (= res!2066797 (is-Nil!55465 l!11108))))

(assert (=> d!1554477 (= (forall!12906 l!11108 lambda!242221) e!3028460)))

(declare-fun b!4845447 () Bool)

(declare-fun e!3028461 () Bool)

(assert (=> b!4845447 (= e!3028460 e!3028461)))

(declare-fun res!2066798 () Bool)

(assert (=> b!4845447 (=> (not res!2066798) (not e!3028461))))

(declare-fun dynLambda!22331 (Int tuple2!59064) Bool)

(assert (=> b!4845447 (= res!2066798 (dynLambda!22331 lambda!242221 (h!61902 l!11108)))))

(declare-fun b!4845448 () Bool)

(assert (=> b!4845448 (= e!3028461 (forall!12906 (t!363085 l!11108) lambda!242221))))

(assert (= (and d!1554477 (not res!2066797)) b!4845447))

(assert (= (and b!4845447 res!2066798) b!4845448))

(declare-fun b_lambda!192291 () Bool)

(assert (=> (not b_lambda!192291) (not b!4845447)))

(declare-fun m!5843714 () Bool)

(assert (=> b!4845447 m!5843714))

(declare-fun m!5843716 () Bool)

(assert (=> b!4845448 m!5843716))

(assert (=> b!4845408 d!1554477))

(declare-fun d!1554479 () Bool)

(declare-fun res!2066801 () Bool)

(declare-fun e!3028464 () Bool)

(assert (=> d!1554479 (=> res!2066801 e!3028464)))

(declare-fun e!3028462 () Bool)

(assert (=> d!1554479 (= res!2066801 e!3028462)))

(declare-fun res!2066800 () Bool)

(assert (=> d!1554479 (=> (not res!2066800) (not e!3028462))))

(assert (=> d!1554479 (= res!2066800 (is-Cons!55465 (t!363085 l!11108)))))

(assert (=> d!1554479 (= (containsKeyBiggerList!751 (t!363085 l!11108) k!1656) e!3028464)))

(declare-fun b!4845449 () Bool)

(assert (=> b!4845449 (= e!3028462 (containsKey!4640 (_2!32826 (h!61902 (t!363085 l!11108))) k!1656))))

(declare-fun b!4845450 () Bool)

(declare-fun e!3028463 () Bool)

(assert (=> b!4845450 (= e!3028464 e!3028463)))

(declare-fun res!2066799 () Bool)

(assert (=> b!4845450 (=> (not res!2066799) (not e!3028463))))

(assert (=> b!4845450 (= res!2066799 (is-Cons!55465 (t!363085 l!11108)))))

(declare-fun b!4845451 () Bool)

(assert (=> b!4845451 (= e!3028463 (containsKeyBiggerList!751 (t!363085 (t!363085 l!11108)) k!1656))))

(assert (= (and d!1554479 res!2066800) b!4845449))

(assert (= (and d!1554479 (not res!2066801)) b!4845450))

(assert (= (and b!4845450 res!2066799) b!4845451))

(declare-fun m!5843718 () Bool)

(assert (=> b!4845449 m!5843718))

(declare-fun m!5843720 () Bool)

(assert (=> b!4845451 m!5843720))

(assert (=> b!4845406 d!1554479))

(declare-fun b!4845456 () Bool)

(declare-fun e!3028467 () Bool)

(declare-fun tp_is_empty!35065 () Bool)

(declare-fun tp!1364259 () Bool)

(assert (=> b!4845456 (= e!3028467 (and tp_is_empty!35061 tp_is_empty!35065 tp!1364259))))

(assert (=> b!4845407 (= tp!1364249 e!3028467)))

(assert (= (and b!4845407 (is-Cons!55464 (_2!32826 (h!61902 l!11108)))) b!4845456))

(declare-fun b!4845461 () Bool)

(declare-fun e!3028470 () Bool)

(declare-fun tp!1364264 () Bool)

(declare-fun tp!1364265 () Bool)

(assert (=> b!4845461 (= e!3028470 (and tp!1364264 tp!1364265))))

(assert (=> b!4845407 (= tp!1364250 e!3028470)))

(assert (= (and b!4845407 (is-Cons!55465 (t!363085 l!11108))) b!4845461))

(declare-fun b_lambda!192293 () Bool)

(assert (= b_lambda!192291 (or b!4845408 b_lambda!192293)))

(declare-fun bs!1172265 () Bool)

(declare-fun d!1554481 () Bool)

(assert (= bs!1172265 (and d!1554481 b!4845408)))

(declare-fun noDuplicateKeys!2567 (List!55588) Bool)

(assert (=> bs!1172265 (= (dynLambda!22331 lambda!242221 (h!61902 l!11108)) (noDuplicateKeys!2567 (_2!32826 (h!61902 l!11108))))))

(declare-fun m!5843722 () Bool)

(assert (=> bs!1172265 m!5843722))

(assert (=> b!4845447 d!1554481))

(push 1)

(assert (not b_lambda!192293))

(assert (not bs!1172265))

(assert (not b!4845461))

(assert (not b!4845448))

(assert tp_is_empty!35065)

(assert (not b!4845442))

(assert (not b!4845451))

(assert (not b!4845449))

(assert (not b!4845456))

(assert tp_is_empty!35061)

(assert (not b!4845434))

(assert (not b!4845436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

