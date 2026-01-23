; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!239888 () Bool)

(assert start!239888)

(declare-fun b_free!70577 () Bool)

(declare-fun b_next!71281 () Bool)

(assert (=> start!239888 (= b_free!70577 (not b_next!71281))))

(declare-fun tp!783429 () Bool)

(declare-fun b_and!185581 () Bool)

(assert (=> start!239888 (= tp!783429 b_and!185581)))

(declare-fun res!1042755 () Bool)

(declare-fun e!1560644 () Bool)

(assert (=> start!239888 (=> (not res!1042755) (not e!1560644))))

(declare-datatypes ((B!1875 0))(
  ( (B!1876 (val!8567 Int)) )
))
(declare-datatypes ((List!28724 0))(
  ( (Nil!28624) (Cons!28624 (h!34025 B!1875) (t!208709 List!28724)) )
))
(declare-fun l!3055 () List!28724)

(declare-fun p!1945 () Int)

(declare-fun forall!5876 (List!28724 Int) Bool)

(assert (=> start!239888 (= res!1042755 (not (forall!5876 l!3055 p!1945)))))

(assert (=> start!239888 e!1560644))

(declare-fun e!1560643 () Bool)

(assert (=> start!239888 e!1560643))

(assert (=> start!239888 tp!783429))

(declare-fun b!2460697 () Bool)

(declare-fun res!1042757 () Bool)

(assert (=> b!2460697 (=> (not res!1042757) (not e!1560644))))

(assert (=> b!2460697 (= res!1042757 (not (is-Nil!28624 l!3055)))))

(declare-fun b!2460699 () Bool)

(assert (=> b!2460699 (= e!1560644 (forall!5876 (t!208709 l!3055) p!1945))))

(declare-fun b!2460698 () Bool)

(declare-fun res!1042756 () Bool)

(assert (=> b!2460698 (=> (not res!1042756) (not e!1560644))))

(declare-fun dynLambda!12281 (Int B!1875) Bool)

(assert (=> b!2460698 (= res!1042756 (dynLambda!12281 p!1945 (h!34025 l!3055)))))

(declare-fun b!2460700 () Bool)

(declare-fun tp_is_empty!11905 () Bool)

(declare-fun tp!783428 () Bool)

(assert (=> b!2460700 (= e!1560643 (and tp_is_empty!11905 tp!783428))))

(assert (= (and start!239888 res!1042755) b!2460697))

(assert (= (and b!2460697 res!1042757) b!2460698))

(assert (= (and b!2460698 res!1042756) b!2460699))

(assert (= (and start!239888 (is-Cons!28624 l!3055)) b!2460700))

(declare-fun b_lambda!75255 () Bool)

(assert (=> (not b_lambda!75255) (not b!2460698)))

(declare-fun t!208708 () Bool)

(declare-fun tb!138845 () Bool)

(assert (=> (and start!239888 (= p!1945 p!1945) t!208708) tb!138845))

(declare-fun result!171388 () Bool)

(assert (=> tb!138845 (= result!171388 true)))

(assert (=> b!2460698 t!208708))

(declare-fun b_and!185583 () Bool)

(assert (= b_and!185581 (and (=> t!208708 result!171388) b_and!185583)))

(declare-fun m!2830003 () Bool)

(assert (=> start!239888 m!2830003))

(declare-fun m!2830005 () Bool)

(assert (=> b!2460699 m!2830005))

(declare-fun m!2830007 () Bool)

(assert (=> b!2460698 m!2830007))

(push 1)

(assert (not b!2460700))

(assert (not start!239888))

(assert (not b_next!71281))

(assert tp_is_empty!11905)

(assert b_and!185583)

(assert (not b!2460699))

(assert (not b_lambda!75255))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185583)

(assert (not b_next!71281))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!75259 () Bool)

(assert (= b_lambda!75255 (or (and start!239888 b_free!70577) b_lambda!75259)))

(push 1)

(assert (not b_lambda!75259))

(assert (not b!2460700))

(assert (not start!239888))

(assert (not b_next!71281))

(assert tp_is_empty!11905)

(assert b_and!185583)

(assert (not b!2460699))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185583)

(assert (not b_next!71281))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!708334 () Bool)

(declare-fun res!1042771 () Bool)

(declare-fun e!1560655 () Bool)

(assert (=> d!708334 (=> res!1042771 e!1560655)))

(assert (=> d!708334 (= res!1042771 (is-Nil!28624 (t!208709 l!3055)))))

(assert (=> d!708334 (= (forall!5876 (t!208709 l!3055) p!1945) e!1560655)))

(declare-fun b!2460717 () Bool)

(declare-fun e!1560656 () Bool)

(assert (=> b!2460717 (= e!1560655 e!1560656)))

(declare-fun res!1042772 () Bool)

(assert (=> b!2460717 (=> (not res!1042772) (not e!1560656))))

(assert (=> b!2460717 (= res!1042772 (dynLambda!12281 p!1945 (h!34025 (t!208709 l!3055))))))

(declare-fun b!2460718 () Bool)

(assert (=> b!2460718 (= e!1560656 (forall!5876 (t!208709 (t!208709 l!3055)) p!1945))))

(assert (= (and d!708334 (not res!1042771)) b!2460717))

(assert (= (and b!2460717 res!1042772) b!2460718))

(declare-fun b_lambda!75263 () Bool)

(assert (=> (not b_lambda!75263) (not b!2460717)))

(declare-fun t!208714 () Bool)

(declare-fun tb!138849 () Bool)

(assert (=> (and start!239888 (= p!1945 p!1945) t!208714) tb!138849))

(declare-fun result!171392 () Bool)

(assert (=> tb!138849 (= result!171392 true)))

(assert (=> b!2460717 t!208714))

(declare-fun b_and!185589 () Bool)

(assert (= b_and!185583 (and (=> t!208714 result!171392) b_and!185589)))

(declare-fun m!2830015 () Bool)

(assert (=> b!2460717 m!2830015))

(declare-fun m!2830017 () Bool)

(assert (=> b!2460718 m!2830017))

(assert (=> b!2460699 d!708334))

(declare-fun d!708336 () Bool)

(declare-fun res!1042773 () Bool)

(declare-fun e!1560657 () Bool)

(assert (=> d!708336 (=> res!1042773 e!1560657)))

(assert (=> d!708336 (= res!1042773 (is-Nil!28624 l!3055))))

(assert (=> d!708336 (= (forall!5876 l!3055 p!1945) e!1560657)))

(declare-fun b!2460719 () Bool)

(declare-fun e!1560658 () Bool)

(assert (=> b!2460719 (= e!1560657 e!1560658)))

(declare-fun res!1042774 () Bool)

(assert (=> b!2460719 (=> (not res!1042774) (not e!1560658))))

(assert (=> b!2460719 (= res!1042774 (dynLambda!12281 p!1945 (h!34025 l!3055)))))

(declare-fun b!2460720 () Bool)

(assert (=> b!2460720 (= e!1560658 (forall!5876 (t!208709 l!3055) p!1945))))

(assert (= (and d!708336 (not res!1042773)) b!2460719))

(assert (= (and b!2460719 res!1042774) b!2460720))

(declare-fun b_lambda!75265 () Bool)

(assert (=> (not b_lambda!75265) (not b!2460719)))

(assert (=> b!2460719 t!208708))

(declare-fun b_and!185591 () Bool)

(assert (= b_and!185589 (and (=> t!208708 result!171388) b_and!185591)))

(assert (=> b!2460719 m!2830007))

(assert (=> b!2460720 m!2830005))

(assert (=> start!239888 d!708336))

(declare-fun b!2460725 () Bool)

(declare-fun e!1560661 () Bool)

(declare-fun tp!783438 () Bool)

(assert (=> b!2460725 (= e!1560661 (and tp_is_empty!11905 tp!783438))))

(assert (=> b!2460700 (= tp!783428 e!1560661)))

(assert (= (and b!2460700 (is-Cons!28624 (t!208709 l!3055))) b!2460725))

(declare-fun b_lambda!75267 () Bool)

(assert (= b_lambda!75263 (or (and start!239888 b_free!70577) b_lambda!75267)))

(declare-fun b_lambda!75269 () Bool)

(assert (= b_lambda!75265 (or (and start!239888 b_free!70577) b_lambda!75269)))

(push 1)

(assert (not b!2460720))

(assert (not b_lambda!75269))

(assert (not b_next!71281))

(assert (not b!2460718))

(assert tp_is_empty!11905)

(assert b_and!185591)

(assert (not b_lambda!75267))

(assert (not b!2460725))

(assert (not b_lambda!75259))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185591)

(assert (not b_next!71281))

(check-sat)

(pop 1)

