; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87320 () Bool)

(assert start!87320)

(declare-fun res!679807 () Bool)

(declare-fun e!569212 () Bool)

(assert (=> start!87320 (=> (not res!679807) (not e!569212))))

(declare-datatypes ((B!1314 0))(
  ( (B!1315 (val!11741 Int)) )
))
(declare-datatypes ((tuple2!15118 0))(
  ( (tuple2!15119 (_1!7569 (_ BitVec 64)) (_2!7569 B!1314)) )
))
(declare-datatypes ((List!21447 0))(
  ( (Nil!21444) (Cons!21443 (h!22641 tuple2!15118) (t!30456 List!21447)) )
))
(declare-fun l!412 () List!21447)

(declare-fun isStrictlySorted!517 (List!21447) Bool)

(assert (=> start!87320 (= res!679807 (isStrictlySorted!517 l!412))))

(assert (=> start!87320 e!569212))

(declare-fun e!569213 () Bool)

(assert (=> start!87320 e!569213))

(declare-fun tp_is_empty!23381 () Bool)

(assert (=> start!87320 tp_is_empty!23381))

(declare-fun b!1011764 () Bool)

(declare-fun res!679806 () Bool)

(assert (=> b!1011764 (=> (not res!679806) (not e!569212))))

(declare-fun value!115 () B!1314)

(assert (=> b!1011764 (= res!679806 (and (is-Cons!21443 l!412) (= (_2!7569 (h!22641 l!412)) value!115)))))

(declare-fun b!1011765 () Bool)

(assert (=> b!1011765 (= e!569212 (not (isStrictlySorted!517 (t!30456 l!412))))))

(declare-fun b!1011766 () Bool)

(declare-fun tp!70218 () Bool)

(assert (=> b!1011766 (= e!569213 (and tp_is_empty!23381 tp!70218))))

(assert (= (and start!87320 res!679807) b!1011764))

(assert (= (and b!1011764 res!679806) b!1011765))

(assert (= (and start!87320 (is-Cons!21443 l!412)) b!1011766))

(declare-fun m!935831 () Bool)

(assert (=> start!87320 m!935831))

(declare-fun m!935833 () Bool)

(assert (=> b!1011765 m!935833))

(push 1)

(assert (not b!1011765))

(assert (not start!87320))

(assert (not b!1011766))

(assert tp_is_empty!23381)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120173 () Bool)

(declare-fun res!679828 () Bool)

(declare-fun e!569240 () Bool)

(assert (=> d!120173 (=> res!679828 e!569240)))

(assert (=> d!120173 (= res!679828 (or (is-Nil!21444 (t!30456 l!412)) (is-Nil!21444 (t!30456 (t!30456 l!412)))))))

(assert (=> d!120173 (= (isStrictlySorted!517 (t!30456 l!412)) e!569240)))

(declare-fun b!1011797 () Bool)

(declare-fun e!569241 () Bool)

(assert (=> b!1011797 (= e!569240 e!569241)))

(declare-fun res!679829 () Bool)

(assert (=> b!1011797 (=> (not res!679829) (not e!569241))))

(assert (=> b!1011797 (= res!679829 (bvslt (_1!7569 (h!22641 (t!30456 l!412))) (_1!7569 (h!22641 (t!30456 (t!30456 l!412))))))))

(declare-fun b!1011798 () Bool)

(assert (=> b!1011798 (= e!569241 (isStrictlySorted!517 (t!30456 (t!30456 l!412))))))

(assert (= (and d!120173 (not res!679828)) b!1011797))

(assert (= (and b!1011797 res!679829) b!1011798))

(declare-fun m!935839 () Bool)

(assert (=> b!1011798 m!935839))

(assert (=> b!1011765 d!120173))

(declare-fun d!120179 () Bool)

(declare-fun res!679830 () Bool)

(declare-fun e!569242 () Bool)

(assert (=> d!120179 (=> res!679830 e!569242)))

(assert (=> d!120179 (= res!679830 (or (is-Nil!21444 l!412) (is-Nil!21444 (t!30456 l!412))))))

(assert (=> d!120179 (= (isStrictlySorted!517 l!412) e!569242)))

(declare-fun b!1011799 () Bool)

(declare-fun e!569243 () Bool)

(assert (=> b!1011799 (= e!569242 e!569243)))

(declare-fun res!679831 () Bool)

(assert (=> b!1011799 (=> (not res!679831) (not e!569243))))

(assert (=> b!1011799 (= res!679831 (bvslt (_1!7569 (h!22641 l!412)) (_1!7569 (h!22641 (t!30456 l!412)))))))

(declare-fun b!1011800 () Bool)

