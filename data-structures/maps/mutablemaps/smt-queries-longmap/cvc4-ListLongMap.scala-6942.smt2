; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87458 () Bool)

(assert start!87458)

(declare-fun b!1012792 () Bool)

(assert (=> b!1012792 true))

(assert (=> b!1012792 true))

(declare-fun b!1012790 () Bool)

(declare-fun e!569762 () Bool)

(declare-fun tp_is_empty!23429 () Bool)

(declare-fun tp!70344 () Bool)

(assert (=> b!1012790 (= e!569762 (and tp_is_empty!23429 tp!70344))))

(declare-fun b!1012791 () Bool)

(declare-fun res!680246 () Bool)

(declare-fun e!569761 () Bool)

(assert (=> b!1012791 (=> (not res!680246) (not e!569761))))

(declare-datatypes ((B!1362 0))(
  ( (B!1363 (val!11765 Int)) )
))
(declare-datatypes ((tuple2!15166 0))(
  ( (tuple2!15167 (_1!7593 (_ BitVec 64)) (_2!7593 B!1362)) )
))
(declare-datatypes ((List!21491 0))(
  ( (Nil!21488) (Cons!21487 (h!22685 tuple2!15166) (t!30500 List!21491)) )
))
(declare-fun l!412 () List!21491)

(declare-fun isStrictlySorted!541 (List!21491) Bool)

(assert (=> b!1012791 (= res!680246 (isStrictlySorted!541 (t!30500 l!412)))))

(declare-fun res!680247 () Bool)

(declare-fun e!569760 () Bool)

(assert (=> start!87458 (=> (not res!680247) (not e!569760))))

(assert (=> start!87458 (= res!680247 (isStrictlySorted!541 l!412))))

(assert (=> start!87458 e!569760))

(assert (=> start!87458 e!569762))

(assert (=> start!87458 tp_is_empty!23429))

(declare-fun res!680242 () Bool)

(assert (=> b!1012792 (=> (not res!680242) (not e!569761))))

(declare-datatypes ((List!21492 0))(
  ( (Nil!21489) (Cons!21488 (h!22686 (_ BitVec 64)) (t!30501 List!21492)) )
))
(declare-fun lt!447684 () List!21492)

(declare-fun lambda!416 () Int)

(declare-fun forall!223 (List!21492 Int) Bool)

(assert (=> b!1012792 (= res!680242 (forall!223 lt!447684 lambda!416))))

(declare-fun b!1012793 () Bool)

(assert (=> b!1012793 (= e!569760 e!569761)))

(declare-fun res!680248 () Bool)

(assert (=> b!1012793 (=> (not res!680248) (not e!569761))))

(declare-fun isEmpty!806 (List!21492) Bool)

(assert (=> b!1012793 (= res!680248 (not (isEmpty!806 lt!447684)))))

(declare-fun value!115 () B!1362)

(declare-fun getKeysOf!27 (List!21491 B!1362) List!21492)

(assert (=> b!1012793 (= lt!447684 (getKeysOf!27 (t!30500 l!412) value!115))))

(declare-fun b!1012794 () Bool)

(declare-fun res!680243 () Bool)

(assert (=> b!1012794 (=> (not res!680243) (not e!569761))))

(declare-fun head!927 (List!21491) tuple2!15166)

(assert (=> b!1012794 (= res!680243 (bvslt (_1!7593 (h!22685 l!412)) (_1!7593 (head!927 (t!30500 l!412)))))))

(declare-fun b!1012795 () Bool)

(declare-fun res!680245 () Bool)

(assert (=> b!1012795 (=> (not res!680245) (not e!569760))))

(assert (=> b!1012795 (= res!680245 (and (not (= (_2!7593 (h!22685 l!412)) value!115)) (is-Cons!21487 l!412)))))

(declare-fun b!1012796 () Bool)

(declare-fun res!680244 () Bool)

(assert (=> b!1012796 (=> (not res!680244) (not e!569761))))

(declare-fun isEmpty!807 (List!21491) Bool)

(assert (=> b!1012796 (= res!680244 (not (isEmpty!807 (t!30500 l!412))))))

(declare-fun b!1012797 () Bool)

(assert (=> b!1012797 (= e!569761 (not (forall!223 lt!447684 lambda!416)))))

(assert (= (and start!87458 res!680247) b!1012795))

(assert (= (and b!1012795 res!680245) b!1012793))

(assert (= (and b!1012793 res!680248) b!1012791))

(assert (= (and b!1012791 res!680246) b!1012796))

(assert (= (and b!1012796 res!680244) b!1012792))

(assert (= (and b!1012792 res!680242) b!1012794))

(assert (= (and b!1012794 res!680243) b!1012797))

(assert (= (and start!87458 (is-Cons!21487 l!412)) b!1012790))

(declare-fun m!936253 () Bool)

(assert (=> b!1012793 m!936253))

(declare-fun m!936255 () Bool)

(assert (=> b!1012793 m!936255))

(declare-fun m!936257 () Bool)

(assert (=> start!87458 m!936257))

(declare-fun m!936259 () Bool)

(assert (=> b!1012797 m!936259))

(declare-fun m!936261 () Bool)

(assert (=> b!1012794 m!936261))

(assert (=> b!1012792 m!936259))

(declare-fun m!936263 () Bool)

(assert (=> b!1012796 m!936263))

(declare-fun m!936265 () Bool)

(assert (=> b!1012791 m!936265))

(push 1)

(assert (not b!1012790))

