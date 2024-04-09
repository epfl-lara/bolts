; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5180 () Bool)

(assert start!5180)

(declare-fun res!22846 () Bool)

(declare-fun e!24032 () Bool)

(assert (=> start!5180 (=> (not res!22846) (not e!24032))))

(declare-datatypes ((B!780 0))(
  ( (B!781 (val!890 Int)) )
))
(declare-fun b!99 () B!780)

(declare-datatypes ((tuple2!1444 0))(
  ( (tuple2!1445 (_1!732 (_ BitVec 64)) (_2!732 B!780)) )
))
(declare-datatypes ((List!1016 0))(
  ( (Nil!1013) (Cons!1012 (h!1580 tuple2!1444) (t!3857 List!1016)) )
))
(declare-datatypes ((ListLongMap!1025 0))(
  ( (ListLongMap!1026 (toList!528 List!1016)) )
))
(declare-fun lm!264 () ListLongMap!1025)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!476 (List!1016 tuple2!1444) Bool)

(assert (=> start!5180 (= res!22846 (contains!476 (toList!528 lm!264) (tuple2!1445 a!526 b!99)))))

(assert (=> start!5180 e!24032))

(declare-fun e!24033 () Bool)

(declare-fun inv!1685 (ListLongMap!1025) Bool)

(assert (=> start!5180 (and (inv!1685 lm!264) e!24033)))

(assert (=> start!5180 true))

(declare-fun tp_is_empty!1703 () Bool)

(assert (=> start!5180 tp_is_empty!1703))

(declare-fun b!37886 () Bool)

(declare-fun isStrictlySorted!192 (List!1016) Bool)

(assert (=> b!37886 (= e!24032 (not (isStrictlySorted!192 (toList!528 lm!264))))))

(declare-fun b!37887 () Bool)

(declare-fun tp!5612 () Bool)

(assert (=> b!37887 (= e!24033 tp!5612)))

(assert (= (and start!5180 res!22846) b!37886))

(assert (= start!5180 b!37887))

(declare-fun m!30629 () Bool)

(assert (=> start!5180 m!30629))

(declare-fun m!30631 () Bool)

(assert (=> start!5180 m!30631))

(declare-fun m!30633 () Bool)

(assert (=> b!37886 m!30633))

(push 1)

(assert (not start!5180))

(assert (not b!37886))

(assert (not b!37887))

(assert tp_is_empty!1703)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6129 () Bool)

(declare-fun lt!13939 () Bool)

(declare-fun content!19 (List!1016) (Set tuple2!1444))

(assert (=> d!6129 (= lt!13939 (member (tuple2!1445 a!526 b!99) (content!19 (toList!528 lm!264))))))

(declare-fun e!24045 () Bool)

(assert (=> d!6129 (= lt!13939 e!24045)))

(declare-fun res!22857 () Bool)

(assert (=> d!6129 (=> (not res!22857) (not e!24045))))

(assert (=> d!6129 (= res!22857 (is-Cons!1012 (toList!528 lm!264)))))

(assert (=> d!6129 (= (contains!476 (toList!528 lm!264) (tuple2!1445 a!526 b!99)) lt!13939)))

(declare-fun b!37898 () Bool)

(declare-fun e!24044 () Bool)

(assert (=> b!37898 (= e!24045 e!24044)))

(declare-fun res!22858 () Bool)

(assert (=> b!37898 (=> res!22858 e!24044)))

(assert (=> b!37898 (= res!22858 (= (h!1580 (toList!528 lm!264)) (tuple2!1445 a!526 b!99)))))

(declare-fun b!37899 () Bool)

(assert (=> b!37899 (= e!24044 (contains!476 (t!3857 (toList!528 lm!264)) (tuple2!1445 a!526 b!99)))))

(assert (= (and d!6129 res!22857) b!37898))

(assert (= (and b!37898 (not res!22858)) b!37899))

(declare-fun m!30637 () Bool)

(assert (=> d!6129 m!30637))

(declare-fun m!30639 () Bool)

(assert (=> d!6129 m!30639))

(declare-fun m!30641 () Bool)

(assert (=> b!37899 m!30641))

(assert (=> start!5180 d!6129))

(declare-fun d!6137 () Bool)

(assert (=> d!6137 (= (inv!1685 lm!264) (isStrictlySorted!192 (toList!528 lm!264)))))

(declare-fun bs!1504 () Bool)

(assert (= bs!1504 d!6137))

(assert (=> bs!1504 m!30633))

(assert (=> start!5180 d!6137))

(declare-fun d!6139 () Bool)

(declare-fun res!22873 () Bool)

(declare-fun e!24060 () Bool)

(assert (=> d!6139 (=> res!22873 e!24060)))

(assert (=> d!6139 (= res!22873 (or (is-Nil!1013 (toList!528 lm!264)) (is-Nil!1013 (t!3857 (toList!528 lm!264)))))))

(assert (=> d!6139 (= (isStrictlySorted!192 (toList!528 lm!264)) e!24060)))

(declare-fun b!37914 () Bool)

(declare-fun e!24061 () Bool)

(assert (=> b!37914 (= e!24060 e!24061)))

(declare-fun res!22874 () Bool)

(assert (=> b!37914 (=> (not res!22874) (not e!24061))))

(assert (=> b!37914 (= res!22874 (bvslt (_1!732 (h!1580 (toList!528 lm!264))) (_1!732 (h!1580 (t!3857 (toList!528 lm!264))))))))

(declare-fun b!37915 () Bool)

(assert (=> b!37915 (= e!24061 (isStrictlySorted!192 (t!3857 (toList!528 lm!264))))))

(assert (= (and d!6139 (not res!22873)) b!37914))

(assert (= (and b!37914 res!22874) b!37915))

(declare-fun m!30649 () Bool)

(assert (=> b!37915 m!30649))

(assert (=> b!37886 d!6139))

(declare-fun b!37925 () Bool)

(declare-fun e!24067 () Bool)

(declare-fun tp!5618 () Bool)

(assert (=> b!37925 (= e!24067 (and tp_is_empty!1703 tp!5618))))

(assert (=> b!37887 (= tp!5612 e!24067)))

(assert (= (and b!37887 (is-Cons!1012 (toList!528 lm!264))) b!37925))

(push 1)

