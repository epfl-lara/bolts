; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87986 () Bool)

(assert start!87986)

(declare-fun b!1015651 () Bool)

(assert (=> b!1015651 true))

(assert (=> b!1015651 true))

(declare-fun res!681346 () Bool)

(declare-fun e!571408 () Bool)

(assert (=> b!1015651 (=> (not res!681346) (not e!571408))))

(declare-datatypes ((List!21605 0))(
  ( (Nil!21602) (Cons!21601 (h!22799 (_ BitVec 64)) (t!30614 List!21605)) )
))
(declare-fun keys!40 () List!21605)

(declare-fun lambda!926 () Int)

(declare-fun forall!267 (List!21605 Int) Bool)

(assert (=> b!1015651 (= res!681346 (forall!267 keys!40 lambda!926))))

(declare-fun b!1015652 () Bool)

(declare-fun res!681344 () Bool)

(assert (=> b!1015652 (=> (not res!681344) (not e!571408))))

(declare-datatypes ((B!1500 0))(
  ( (B!1501 (val!11834 Int)) )
))
(declare-datatypes ((tuple2!15304 0))(
  ( (tuple2!15305 (_1!7662 (_ BitVec 64)) (_2!7662 B!1500)) )
))
(declare-datatypes ((List!21606 0))(
  ( (Nil!21603) (Cons!21602 (h!22800 tuple2!15304) (t!30615 List!21606)) )
))
(declare-fun l!1114 () List!21606)

(declare-fun isEmpty!866 (List!21606) Bool)

(assert (=> b!1015652 (= res!681344 (not (isEmpty!866 l!1114)))))

(declare-fun res!681345 () Bool)

(assert (=> start!87986 (=> (not res!681345) (not e!571408))))

(declare-fun isStrictlySorted!598 (List!21606) Bool)

(assert (=> start!87986 (= res!681345 (isStrictlySorted!598 l!1114))))

(assert (=> start!87986 e!571408))

(declare-fun e!571409 () Bool)

(assert (=> start!87986 e!571409))

(assert (=> start!87986 true))

(declare-fun tp_is_empty!23567 () Bool)

(assert (=> start!87986 tp_is_empty!23567))

(declare-fun b!1015653 () Bool)

(declare-fun res!681343 () Bool)

(assert (=> b!1015653 (=> (not res!681343) (not e!571408))))

(declare-fun newHead!31 () tuple2!15304)

(declare-fun head!949 (List!21606) tuple2!15304)

(assert (=> b!1015653 (= res!681343 (bvslt (_1!7662 newHead!31) (_1!7662 (head!949 l!1114))))))

(declare-fun b!1015654 () Bool)

(declare-fun res!681342 () Bool)

(assert (=> b!1015654 (=> (not res!681342) (not e!571408))))

(assert (=> b!1015654 (= res!681342 (is-Cons!21601 keys!40))))

(declare-fun b!1015655 () Bool)

(assert (=> b!1015655 (= e!571408 (not true))))

(declare-fun containsKey!484 (List!21606 (_ BitVec 64)) Bool)

(assert (=> b!1015655 (containsKey!484 l!1114 (h!22799 keys!40))))

(declare-datatypes ((Unit!33196 0))(
  ( (Unit!33197) )
))
(declare-fun lt!449139 () Unit!33196)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!3 (List!21606 (_ BitVec 64)) Unit!33196)

(assert (=> b!1015655 (= lt!449139 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!3 l!1114 (h!22799 keys!40)))))

(declare-fun b!1015656 () Bool)

(declare-fun tp!70689 () Bool)

(assert (=> b!1015656 (= e!571409 (and tp_is_empty!23567 tp!70689))))

(assert (= (and start!87986 res!681345) b!1015652))

(assert (= (and b!1015652 res!681344) b!1015651))

(assert (= (and b!1015651 res!681346) b!1015653))

(assert (= (and b!1015653 res!681343) b!1015654))

(assert (= (and b!1015654 res!681342) b!1015655))

(assert (= (and start!87986 (is-Cons!21602 l!1114)) b!1015656))

(declare-fun m!937743 () Bool)

(assert (=> b!1015655 m!937743))

(declare-fun m!937745 () Bool)

(assert (=> b!1015655 m!937745))

(declare-fun m!937747 () Bool)

(assert (=> start!87986 m!937747))

(declare-fun m!937749 () Bool)

(assert (=> b!1015653 m!937749))

(declare-fun m!937751 () Bool)

(assert (=> b!1015652 m!937751))

(declare-fun m!937753 () Bool)

(assert (=> b!1015651 m!937753))

(push 1)

(assert tp_is_empty!23567)

(assert (not b!1015653))

(assert (not b!1015652))

(assert (not b!1015656))

(assert (not b!1015651))

(assert (not start!87986))

(assert (not b!1015655))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

