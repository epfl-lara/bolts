; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47636 () Bool)

(assert start!47636)

(declare-fun b!520392 () Bool)

(declare-fun e!311840 () Bool)

(declare-fun tp_is_empty!2743 () Bool)

(declare-fun tp!161908 () Bool)

(assert (=> b!520392 (= e!311840 (and tp_is_empty!2743 tp!161908))))

(declare-fun b!520390 () Bool)

(declare-fun e!311839 () Bool)

(assert (=> b!520390 (= e!311839 false)))

(declare-fun lt!216956 () Bool)

(declare-datatypes ((B!1147 0))(
  ( (B!1148 (val!1863 Int)) )
))
(declare-datatypes ((List!4811 0))(
  ( (Nil!4801) (Cons!4801 (h!10202 B!1147) (t!73401 List!4811)) )
))
(declare-fun acc!308 () List!4811)

(declare-fun list!41 () List!4811)

(declare-fun contains!1149 (List!4811 B!1147) Bool)

(assert (=> b!520390 (= lt!216956 (contains!1149 acc!308 (h!10202 list!41)))))

(declare-fun b!520391 () Bool)

(declare-fun e!311841 () Bool)

(declare-fun tp!161909 () Bool)

(assert (=> b!520391 (= e!311841 (and tp_is_empty!2743 tp!161909))))

(declare-fun b!520389 () Bool)

(declare-fun res!220952 () Bool)

(assert (=> b!520389 (=> (not res!220952) (not e!311839))))

(assert (=> b!520389 (= res!220952 (is-Cons!4801 list!41))))

(declare-fun res!220953 () Bool)

(assert (=> start!47636 (=> (not res!220953) (not e!311839))))

(declare-fun noDuplicate!152 (List!4811) Bool)

(assert (=> start!47636 (= res!220953 (noDuplicate!152 acc!308))))

(assert (=> start!47636 e!311839))

(assert (=> start!47636 e!311841))

(assert (=> start!47636 e!311840))

(assert (= (and start!47636 res!220953) b!520389))

(assert (= (and b!520389 res!220952) b!520390))

(assert (= (and start!47636 (is-Cons!4801 acc!308)) b!520391))

(assert (= (and start!47636 (is-Cons!4801 list!41)) b!520392))

(declare-fun m!767117 () Bool)

(assert (=> b!520390 m!767117))

(declare-fun m!767119 () Bool)

(assert (=> start!47636 m!767119))

(push 1)

(assert (not b!520392))

(assert (not b!520390))

(assert (not start!47636))

(assert (not b!520391))

(assert tp_is_empty!2743)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

