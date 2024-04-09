; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88518 () Bool)

(assert start!88518)

(declare-fun b!1017747 () Bool)

(declare-fun res!682645 () Bool)

(declare-fun e!572644 () Bool)

(assert (=> b!1017747 (=> (not res!682645) (not e!572644))))

(declare-datatypes ((B!1602 0))(
  ( (B!1603 (val!11885 Int)) )
))
(declare-datatypes ((tuple2!15406 0))(
  ( (tuple2!15407 (_1!7713 (_ BitVec 64)) (_2!7713 B!1602)) )
))
(declare-datatypes ((List!21687 0))(
  ( (Nil!21684) (Cons!21683 (h!22881 tuple2!15406) (t!30696 List!21687)) )
))
(declare-fun l!1036 () List!21687)

(declare-fun key!271 () (_ BitVec 64))

(declare-datatypes ((Option!631 0))(
  ( (Some!630 (v!14479 B!1602)) (None!629) )
))
(declare-fun isDefined!425 (Option!631) Bool)

(declare-fun getValueByKey!580 (List!21687 (_ BitVec 64)) Option!631)

(assert (=> b!1017747 (= res!682645 (isDefined!425 (getValueByKey!580 l!1036 key!271)))))

(declare-fun b!1017748 () Bool)

(declare-fun res!682646 () Bool)

(assert (=> b!1017748 (=> (not res!682646) (not e!572644))))

(assert (=> b!1017748 (= res!682646 (and (is-Cons!21683 l!1036) (not (= (_1!7713 (h!22881 l!1036)) key!271))))))

(declare-fun b!1017749 () Bool)

(declare-fun res!682644 () Bool)

(assert (=> b!1017749 (=> (not res!682644) (not e!572644))))

(assert (=> b!1017749 (= res!682644 (isDefined!425 (getValueByKey!580 (t!30696 l!1036) key!271)))))

(declare-fun b!1017750 () Bool)

(declare-fun res!682647 () Bool)

(assert (=> b!1017750 (=> (not res!682647) (not e!572644))))

(declare-fun isStrictlySorted!640 (List!21687) Bool)

(assert (=> b!1017750 (= res!682647 (isStrictlySorted!640 (t!30696 l!1036)))))

(declare-fun b!1017751 () Bool)

(declare-fun ListPrimitiveSize!132 (List!21687) Int)

(assert (=> b!1017751 (= e!572644 (>= (ListPrimitiveSize!132 (t!30696 l!1036)) (ListPrimitiveSize!132 l!1036)))))

(declare-fun res!682643 () Bool)

(assert (=> start!88518 (=> (not res!682643) (not e!572644))))

(assert (=> start!88518 (= res!682643 (isStrictlySorted!640 l!1036))))

(assert (=> start!88518 e!572644))

(declare-fun e!572643 () Bool)

(assert (=> start!88518 e!572643))

(assert (=> start!88518 true))

(declare-fun b!1017746 () Bool)

(declare-fun tp_is_empty!23669 () Bool)

(declare-fun tp!70943 () Bool)

(assert (=> b!1017746 (= e!572643 (and tp_is_empty!23669 tp!70943))))

(assert (= (and start!88518 res!682643) b!1017747))

(assert (= (and b!1017747 res!682645) b!1017748))

(assert (= (and b!1017748 res!682646) b!1017750))

(assert (= (and b!1017750 res!682647) b!1017749))

(assert (= (and b!1017749 res!682644) b!1017751))

(assert (= (and start!88518 (is-Cons!21683 l!1036)) b!1017746))

(declare-fun m!939091 () Bool)

(assert (=> b!1017750 m!939091))

(declare-fun m!939093 () Bool)

(assert (=> b!1017747 m!939093))

(assert (=> b!1017747 m!939093))

(declare-fun m!939095 () Bool)

(assert (=> b!1017747 m!939095))

(declare-fun m!939097 () Bool)

(assert (=> start!88518 m!939097))

(declare-fun m!939099 () Bool)

(assert (=> b!1017749 m!939099))

(assert (=> b!1017749 m!939099))

(declare-fun m!939101 () Bool)

(assert (=> b!1017749 m!939101))

(declare-fun m!939103 () Bool)

(assert (=> b!1017751 m!939103))

(declare-fun m!939105 () Bool)

(assert (=> b!1017751 m!939105))

(push 1)

(assert (not b!1017751))

(assert tp_is_empty!23669)

(assert (not b!1017750))

(assert (not start!88518))

(assert (not b!1017749))

(assert (not b!1017746))

(assert (not b!1017747))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121665 () Bool)

(declare-fun isEmpty!916 (Option!631) Bool)

(assert (=> d!121665 (= (isDefined!425 (getValueByKey!580 (t!30696 l!1036) key!271)) (not (isEmpty!916 (getValueByKey!580 (t!30696 l!1036) key!271))))))

(declare-fun bs!29623 () Bool)

(assert (= bs!29623 d!121665))

(assert (=> bs!29623 m!939099))

(declare-fun m!939107 () Bool)

(assert (=> bs!29623 m!939107))

(assert (=> b!1017749 d!121665))

(declare-fun b!1017770 () Bool)

(declare-fun e!572653 () Option!631)

(assert (=> b!1017770 (= e!572653 (Some!630 (_2!7713 (h!22881 (t!30696 l!1036)))))))

(declare-fun b!1017771 () Bool)

(declare-fun e!572654 () Option!631)

(assert (=> b!1017771 (= e!572653 e!572654)))

(declare-fun c!103019 () Bool)

(assert (=> b!1017771 (= c!103019 (and (is-Cons!21683 (t!30696 l!1036)) (not (= (_1!7713 (h!22881 (t!30696 l!1036))) key!271))))))

(declare-fun b!1017773 () Bool)

(assert (=> b!1017773 (= e!572654 None!629)))

(declare-fun b!1017772 () Bool)

(assert (=> b!1017772 (= e!572654 (getValueByKey!580 (t!30696 (t!30696 l!1036)) key!271))))

(declare-fun d!121669 () Bool)

(declare-fun c!103018 () Bool)

(assert (=> d!121669 (= c!103018 (and (is-Cons!21683 (t!30696 l!1036)) (= (_1!7713 (h!22881 (t!30696 l!1036))) key!271)))))

(assert (=> d!121669 (= (getValueByKey!580 (t!30696 l!1036) key!271) e!572653)))

(assert (= (and d!121669 c!103018) b!1017770))

(assert (= (and d!121669 (not c!103018)) b!1017771))

(assert (= (and b!1017771 c!103019) b!1017772))

(assert (= (and b!1017771 (not c!103019)) b!1017773))

(declare-fun m!939111 () Bool)

(assert (=> b!1017772 m!939111))

(assert (=> b!1017749 d!121669))

(declare-fun d!121677 () Bool)

(declare-fun res!682658 () Bool)

(declare-fun e!572669 () Bool)

(assert (=> d!121677 (=> res!682658 e!572669)))

(assert (=> d!121677 (= res!682658 (or (is-Nil!21684 (t!30696 l!1036)) (is-Nil!21684 (t!30696 (t!30696 l!1036)))))))

(assert (=> d!121677 (= (isStrictlySorted!640 (t!30696 l!1036)) e!572669)))

(declare-fun b!1017790 () Bool)

(declare-fun e!572670 () Bool)

(assert (=> b!1017790 (= e!572669 e!572670)))

(declare-fun res!682659 () Bool)

(assert (=> b!1017790 (=> (not res!682659) (not e!572670))))

(assert (=> b!1017790 (= res!682659 (bvslt (_1!7713 (h!22881 (t!30696 l!1036))) (_1!7713 (h!22881 (t!30696 (t!30696 l!1036))))))))

(declare-fun b!1017791 () Bool)

(assert (=> b!1017791 (= e!572670 (isStrictlySorted!640 (t!30696 (t!30696 l!1036))))))

(assert (= (and d!121677 (not res!682658)) b!1017790))

(assert (= (and b!1017790 res!682659) b!1017791))

(declare-fun m!939119 () Bool)

(assert (=> b!1017791 m!939119))

(assert (=> b!1017750 d!121677))

(declare-fun d!121689 () Bool)

(declare-fun res!682660 () Bool)

(declare-fun e!572671 () Bool)

(assert (=> d!121689 (=> res!682660 e!572671)))

(assert (=> d!121689 (= res!682660 (or (is-Nil!21684 l!1036) (is-Nil!21684 (t!30696 l!1036))))))

(assert (=> d!121689 (= (isStrictlySorted!640 l!1036) e!572671)))

(declare-fun b!1017792 () Bool)

(declare-fun e!572672 () Bool)

(assert (=> b!1017792 (= e!572671 e!572672)))

(declare-fun res!682661 () Bool)

(assert (=> b!1017792 (=> (not res!682661) (not e!572672))))

(assert (=> b!1017792 (= res!682661 (bvslt (_1!7713 (h!22881 l!1036)) (_1!7713 (h!22881 (t!30696 l!1036)))))))

(declare-fun b!1017793 () Bool)

(assert (=> b!1017793 (= e!572672 (isStrictlySorted!640 (t!30696 l!1036)))))

(assert (= (and d!121689 (not res!682660)) b!1017792))

(assert (= (and b!1017792 res!682661) b!1017793))

(assert (=> b!1017793 m!939091))

(assert (=> start!88518 d!121689))

(declare-fun d!121691 () Bool)

(declare-fun lt!449459 () Int)

(assert (=> d!121691 (>= lt!449459 0)))

(declare-fun e!572683 () Int)

(assert (=> d!121691 (= lt!449459 e!572683)))

(declare-fun c!103034 () Bool)

(assert (=> d!121691 (= c!103034 (is-Nil!21684 (t!30696 l!1036)))))

(assert (=> d!121691 (= (ListPrimitiveSize!132 (t!30696 l!1036)) lt!449459)))

(declare-fun b!1017814 () Bool)

(assert (=> b!1017814 (= e!572683 0)))

(declare-fun b!1017815 () Bool)

(assert (=> b!1017815 (= e!572683 (+ 1 (ListPrimitiveSize!132 (t!30696 (t!30696 l!1036)))))))

(assert (= (and d!121691 c!103034) b!1017814))

(assert (= (and d!121691 (not c!103034)) b!1017815))

(declare-fun m!939121 () Bool)

(assert (=> b!1017815 m!939121))

(assert (=> b!1017751 d!121691))

(declare-fun d!121693 () Bool)

(declare-fun lt!449460 () Int)

(assert (=> d!121693 (>= lt!449460 0)))

(declare-fun e!572686 () Int)

(assert (=> d!121693 (= lt!449460 e!572686)))

(declare-fun c!103037 () Bool)

(assert (=> d!121693 (= c!103037 (is-Nil!21684 l!1036))))

(assert (=> d!121693 (= (ListPrimitiveSize!132 l!1036) lt!449460)))

(declare-fun b!1017820 () Bool)

(assert (=> b!1017820 (= e!572686 0)))

(declare-fun b!1017821 () Bool)

(assert (=> b!1017821 (= e!572686 (+ 1 (ListPrimitiveSize!132 (t!30696 l!1036))))))

(assert (= (and d!121693 c!103037) b!1017820))

(assert (= (and d!121693 (not c!103037)) b!1017821))

(assert (=> b!1017821 m!939103))

(assert (=> b!1017751 d!121693))

(declare-fun d!121697 () Bool)

(assert (=> d!121697 (= (isDefined!425 (getValueByKey!580 l!1036 key!271)) (not (isEmpty!916 (getValueByKey!580 l!1036 key!271))))))

(declare-fun bs!29626 () Bool)

(assert (= bs!29626 d!121697))

(assert (=> bs!29626 m!939093))

(declare-fun m!939123 () Bool)

(assert (=> bs!29626 m!939123))

(assert (=> b!1017747 d!121697))

(declare-fun b!1017826 () Bool)

(declare-fun e!572689 () Option!631)

(assert (=> b!1017826 (= e!572689 (Some!630 (_2!7713 (h!22881 l!1036))))))

(declare-fun b!1017827 () Bool)

(declare-fun e!572690 () Option!631)

(assert (=> b!1017827 (= e!572689 e!572690)))

(declare-fun c!103041 () Bool)

(assert (=> b!1017827 (= c!103041 (and (is-Cons!21683 l!1036) (not (= (_1!7713 (h!22881 l!1036)) key!271))))))

(declare-fun b!1017829 () Bool)

(assert (=> b!1017829 (= e!572690 None!629)))

(declare-fun b!1017828 () Bool)

(assert (=> b!1017828 (= e!572690 (getValueByKey!580 (t!30696 l!1036) key!271))))

(declare-fun d!121699 () Bool)

(declare-fun c!103040 () Bool)

(assert (=> d!121699 (= c!103040 (and (is-Cons!21683 l!1036) (= (_1!7713 (h!22881 l!1036)) key!271)))))

(assert (=> d!121699 (= (getValueByKey!580 l!1036 key!271) e!572689)))

(assert (= (and d!121699 c!103040) b!1017826))

(assert (= (and d!121699 (not c!103040)) b!1017827))

(assert (= (and b!1017827 c!103041) b!1017828))

(assert (= (and b!1017827 (not c!103041)) b!1017829))

(assert (=> b!1017828 m!939099))

(assert (=> b!1017747 d!121699))

(declare-fun b!1017844 () Bool)

(declare-fun e!572699 () Bool)

(declare-fun tp!70946 () Bool)

(assert (=> b!1017844 (= e!572699 (and tp_is_empty!23669 tp!70946))))

(assert (=> b!1017746 (= tp!70943 e!572699)))

(assert (= (and b!1017746 (is-Cons!21683 (t!30696 l!1036))) b!1017844))

(push 1)

