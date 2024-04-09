; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88490 () Bool)

(assert start!88490)

(declare-fun b!1017576 () Bool)

(declare-fun res!682554 () Bool)

(declare-fun e!572549 () Bool)

(assert (=> b!1017576 (=> (not res!682554) (not e!572549))))

(declare-datatypes ((B!1592 0))(
  ( (B!1593 (val!11880 Int)) )
))
(declare-datatypes ((tuple2!15396 0))(
  ( (tuple2!15397 (_1!7708 (_ BitVec 64)) (_2!7708 B!1592)) )
))
(declare-datatypes ((List!21682 0))(
  ( (Nil!21679) (Cons!21678 (h!22876 tuple2!15396) (t!30691 List!21682)) )
))
(declare-fun l!1036 () List!21682)

(declare-fun key!271 () (_ BitVec 64))

(assert (=> b!1017576 (= res!682554 (and (is-Cons!21678 l!1036) (not (= (_1!7708 (h!22876 l!1036)) key!271))))))

(declare-fun b!1017577 () Bool)

(declare-fun e!572550 () Bool)

(declare-fun tp_is_empty!23659 () Bool)

(declare-fun tp!70919 () Bool)

(assert (=> b!1017577 (= e!572550 (and tp_is_empty!23659 tp!70919))))

(declare-fun b!1017578 () Bool)

(declare-fun e!572551 () Bool)

(assert (=> b!1017578 (= e!572549 e!572551)))

(declare-fun res!682551 () Bool)

(assert (=> b!1017578 (=> res!682551 e!572551)))

(declare-fun isStrictlySorted!635 (List!21682) Bool)

(assert (=> b!1017578 (= res!682551 (not (isStrictlySorted!635 (t!30691 l!1036))))))

(declare-fun b!1017579 () Bool)

(declare-fun res!682552 () Bool)

(assert (=> b!1017579 (=> (not res!682552) (not e!572549))))

(declare-datatypes ((Option!626 0))(
  ( (Some!625 (v!14474 B!1592)) (None!624) )
))
(declare-fun isDefined!420 (Option!626) Bool)

(declare-fun getValueByKey!575 (List!21682 (_ BitVec 64)) Option!626)

(assert (=> b!1017579 (= res!682552 (isDefined!420 (getValueByKey!575 l!1036 key!271)))))

(declare-fun res!682553 () Bool)

(assert (=> start!88490 (=> (not res!682553) (not e!572549))))

(assert (=> start!88490 (= res!682553 (isStrictlySorted!635 l!1036))))

(assert (=> start!88490 e!572549))

(assert (=> start!88490 e!572550))

(assert (=> start!88490 true))

(declare-fun b!1017580 () Bool)

(assert (=> b!1017580 (= e!572551 (not (isDefined!420 (getValueByKey!575 (t!30691 l!1036) key!271))))))

(assert (= (and start!88490 res!682553) b!1017579))

(assert (= (and b!1017579 res!682552) b!1017576))

(assert (= (and b!1017576 res!682554) b!1017578))

(assert (= (and b!1017578 (not res!682551)) b!1017580))

(assert (= (and start!88490 (is-Cons!21678 l!1036)) b!1017577))

(declare-fun m!938999 () Bool)

(assert (=> b!1017578 m!938999))

(declare-fun m!939001 () Bool)

(assert (=> b!1017579 m!939001))

(assert (=> b!1017579 m!939001))

(declare-fun m!939003 () Bool)

(assert (=> b!1017579 m!939003))

(declare-fun m!939005 () Bool)

(assert (=> start!88490 m!939005))

(declare-fun m!939007 () Bool)

(assert (=> b!1017580 m!939007))

(assert (=> b!1017580 m!939007))

(declare-fun m!939009 () Bool)

(assert (=> b!1017580 m!939009))

(push 1)

(assert (not b!1017577))

(assert tp_is_empty!23659)

(assert (not start!88490))

(assert (not b!1017578))

(assert (not b!1017580))

(assert (not b!1017579))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121631 () Bool)

(declare-fun isEmpty!914 (Option!626) Bool)

(assert (=> d!121631 (= (isDefined!420 (getValueByKey!575 l!1036 key!271)) (not (isEmpty!914 (getValueByKey!575 l!1036 key!271))))))

(declare-fun bs!29615 () Bool)

(assert (= bs!29615 d!121631))

(assert (=> bs!29615 m!939001))

(declare-fun m!939037 () Bool)

(assert (=> bs!29615 m!939037))

(assert (=> b!1017579 d!121631))

(declare-fun b!1017643 () Bool)

(declare-fun e!572589 () Option!626)

(assert (=> b!1017643 (= e!572589 (getValueByKey!575 (t!30691 l!1036) key!271))))

(declare-fun d!121635 () Bool)

(declare-fun c!102998 () Bool)

(assert (=> d!121635 (= c!102998 (and (is-Cons!21678 l!1036) (= (_1!7708 (h!22876 l!1036)) key!271)))))

(declare-fun e!572588 () Option!626)

(assert (=> d!121635 (= (getValueByKey!575 l!1036 key!271) e!572588)))

(declare-fun b!1017642 () Bool)

(assert (=> b!1017642 (= e!572588 e!572589)))

(declare-fun c!102999 () Bool)

(assert (=> b!1017642 (= c!102999 (and (is-Cons!21678 l!1036) (not (= (_1!7708 (h!22876 l!1036)) key!271))))))

(declare-fun b!1017644 () Bool)

(assert (=> b!1017644 (= e!572589 None!624)))

(declare-fun b!1017641 () Bool)

(assert (=> b!1017641 (= e!572588 (Some!625 (_2!7708 (h!22876 l!1036))))))

(assert (= (and d!121635 c!102998) b!1017641))

(assert (= (and d!121635 (not c!102998)) b!1017642))

(assert (= (and b!1017642 c!102999) b!1017643))

(assert (= (and b!1017642 (not c!102999)) b!1017644))

(assert (=> b!1017643 m!939007))

(assert (=> b!1017579 d!121635))

(declare-fun d!121647 () Bool)

(assert (=> d!121647 (= (isDefined!420 (getValueByKey!575 (t!30691 l!1036) key!271)) (not (isEmpty!914 (getValueByKey!575 (t!30691 l!1036) key!271))))))

(declare-fun bs!29618 () Bool)

(assert (= bs!29618 d!121647))

(assert (=> bs!29618 m!939007))

(declare-fun m!939045 () Bool)

(assert (=> bs!29618 m!939045))

(assert (=> b!1017580 d!121647))

(declare-fun b!1017649 () Bool)

(declare-fun e!572593 () Option!626)

(assert (=> b!1017649 (= e!572593 (getValueByKey!575 (t!30691 (t!30691 l!1036)) key!271))))

(declare-fun d!121649 () Bool)

(declare-fun c!103000 () Bool)

(assert (=> d!121649 (= c!103000 (and (is-Cons!21678 (t!30691 l!1036)) (= (_1!7708 (h!22876 (t!30691 l!1036))) key!271)))))

(declare-fun e!572592 () Option!626)

(assert (=> d!121649 (= (getValueByKey!575 (t!30691 l!1036) key!271) e!572592)))

(declare-fun b!1017648 () Bool)

(assert (=> b!1017648 (= e!572592 e!572593)))

(declare-fun c!103001 () Bool)

(assert (=> b!1017648 (= c!103001 (and (is-Cons!21678 (t!30691 l!1036)) (not (= (_1!7708 (h!22876 (t!30691 l!1036))) key!271))))))

(declare-fun b!1017650 () Bool)

(assert (=> b!1017650 (= e!572593 None!624)))

(declare-fun b!1017647 () Bool)

(assert (=> b!1017647 (= e!572592 (Some!625 (_2!7708 (h!22876 (t!30691 l!1036)))))))

(assert (= (and d!121649 c!103000) b!1017647))

(assert (= (and d!121649 (not c!103000)) b!1017648))

(assert (= (and b!1017648 c!103001) b!1017649))

(assert (= (and b!1017648 (not c!103001)) b!1017650))

(declare-fun m!939047 () Bool)

(assert (=> b!1017649 m!939047))

(assert (=> b!1017580 d!121649))

(declare-fun d!121651 () Bool)

(declare-fun res!682597 () Bool)

(declare-fun e!572613 () Bool)

(assert (=> d!121651 (=> res!682597 e!572613)))

(assert (=> d!121651 (= res!682597 (or (is-Nil!21679 l!1036) (is-Nil!21679 (t!30691 l!1036))))))

(assert (=> d!121651 (= (isStrictlySorted!635 l!1036) e!572613)))

(declare-fun b!1017678 () Bool)

(declare-fun e!572614 () Bool)

(assert (=> b!1017678 (= e!572613 e!572614)))

(declare-fun res!682598 () Bool)

(assert (=> b!1017678 (=> (not res!682598) (not e!572614))))

(assert (=> b!1017678 (= res!682598 (bvslt (_1!7708 (h!22876 l!1036)) (_1!7708 (h!22876 (t!30691 l!1036)))))))

(declare-fun b!1017679 () Bool)

(assert (=> b!1017679 (= e!572614 (isStrictlySorted!635 (t!30691 l!1036)))))

(assert (= (and d!121651 (not res!682597)) b!1017678))

(assert (= (and b!1017678 res!682598) b!1017679))

(assert (=> b!1017679 m!938999))

(assert (=> start!88490 d!121651))

(declare-fun d!121659 () Bool)

(declare-fun res!682599 () Bool)

(declare-fun e!572617 () Bool)

(assert (=> d!121659 (=> res!682599 e!572617)))

(assert (=> d!121659 (= res!682599 (or (is-Nil!21679 (t!30691 l!1036)) (is-Nil!21679 (t!30691 (t!30691 l!1036)))))))

(assert (=> d!121659 (= (isStrictlySorted!635 (t!30691 l!1036)) e!572617)))

(declare-fun b!1017684 () Bool)

(declare-fun e!572618 () Bool)

(assert (=> b!1017684 (= e!572617 e!572618)))

(declare-fun res!682600 () Bool)

(assert (=> b!1017684 (=> (not res!682600) (not e!572618))))

(assert (=> b!1017684 (= res!682600 (bvslt (_1!7708 (h!22876 (t!30691 l!1036))) (_1!7708 (h!22876 (t!30691 (t!30691 l!1036))))))))

(declare-fun b!1017685 () Bool)

(assert (=> b!1017685 (= e!572618 (isStrictlySorted!635 (t!30691 (t!30691 l!1036))))))

(assert (= (and d!121659 (not res!682599)) b!1017684))

(assert (= (and b!1017684 res!682600) b!1017685))

(declare-fun m!939055 () Bool)

(assert (=> b!1017685 m!939055))

(assert (=> b!1017578 d!121659))

(declare-fun b!1017696 () Bool)

(declare-fun e!572625 () Bool)

(declare-fun tp!70933 () Bool)

(assert (=> b!1017696 (= e!572625 (and tp_is_empty!23659 tp!70933))))

(assert (=> b!1017577 (= tp!70919 e!572625)))

(assert (= (and b!1017577 (is-Cons!21678 (t!30691 l!1036))) b!1017696))

(push 1)

