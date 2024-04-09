; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88460 () Bool)

(assert start!88460)

(declare-fun res!682512 () Bool)

(declare-fun e!572476 () Bool)

(assert (=> start!88460 (=> (not res!682512) (not e!572476))))

(declare-datatypes ((B!1586 0))(
  ( (B!1587 (val!11877 Int)) )
))
(declare-datatypes ((tuple2!15390 0))(
  ( (tuple2!15391 (_1!7705 (_ BitVec 64)) (_2!7705 B!1586)) )
))
(declare-datatypes ((List!21679 0))(
  ( (Nil!21676) (Cons!21675 (h!22873 tuple2!15390) (t!30688 List!21679)) )
))
(declare-fun l!1036 () List!21679)

(declare-fun isStrictlySorted!632 (List!21679) Bool)

(assert (=> start!88460 (= res!682512 (isStrictlySorted!632 l!1036))))

(assert (=> start!88460 e!572476))

(declare-fun e!572475 () Bool)

(assert (=> start!88460 e!572475))

(assert (=> start!88460 true))

(declare-fun b!1017458 () Bool)

(declare-fun res!682511 () Bool)

(assert (=> b!1017458 (=> (not res!682511) (not e!572476))))

(declare-fun key!271 () (_ BitVec 64))

(declare-datatypes ((Option!623 0))(
  ( (Some!622 (v!14471 B!1586)) (None!621) )
))
(declare-fun isDefined!417 (Option!623) Bool)

(declare-fun getValueByKey!572 (List!21679 (_ BitVec 64)) Option!623)

(assert (=> b!1017458 (= res!682511 (isDefined!417 (getValueByKey!572 l!1036 key!271)))))

(declare-fun b!1017459 () Bool)

(declare-fun ListPrimitiveSize!127 (List!21679) Int)

(assert (=> b!1017459 (= e!572476 (< (ListPrimitiveSize!127 l!1036) 0))))

(declare-fun b!1017460 () Bool)

(declare-fun tp_is_empty!23653 () Bool)

(declare-fun tp!70901 () Bool)

(assert (=> b!1017460 (= e!572475 (and tp_is_empty!23653 tp!70901))))

(assert (= (and start!88460 res!682512) b!1017458))

(assert (= (and b!1017458 res!682511) b!1017459))

(assert (= (and start!88460 (is-Cons!21675 l!1036)) b!1017460))

(declare-fun m!938951 () Bool)

(assert (=> start!88460 m!938951))

(declare-fun m!938953 () Bool)

(assert (=> b!1017458 m!938953))

(assert (=> b!1017458 m!938953))

(declare-fun m!938955 () Bool)

(assert (=> b!1017458 m!938955))

(declare-fun m!938957 () Bool)

(assert (=> b!1017459 m!938957))

(push 1)

(assert (not start!88460))

(assert tp_is_empty!23653)

(assert (not b!1017459))

(assert (not b!1017458))

(assert (not b!1017460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121603 () Bool)

(declare-fun lt!449442 () Int)

(assert (=> d!121603 (>= lt!449442 0)))

(declare-fun e!572491 () Int)

(assert (=> d!121603 (= lt!449442 e!572491)))

(declare-fun c!102961 () Bool)

(assert (=> d!121603 (= c!102961 (is-Nil!21676 l!1036))))

(assert (=> d!121603 (= (ListPrimitiveSize!127 l!1036) lt!449442)))

(declare-fun b!1017485 () Bool)

(assert (=> b!1017485 (= e!572491 0)))

(declare-fun b!1017486 () Bool)

(assert (=> b!1017486 (= e!572491 (+ 1 (ListPrimitiveSize!127 (t!30688 l!1036))))))

(assert (= (and d!121603 c!102961) b!1017485))

(assert (= (and d!121603 (not c!102961)) b!1017486))

(declare-fun m!938977 () Bool)

(assert (=> b!1017486 m!938977))

(assert (=> b!1017459 d!121603))

(declare-fun d!121609 () Bool)

(declare-fun res!682529 () Bool)

(declare-fun e!572505 () Bool)

(assert (=> d!121609 (=> res!682529 e!572505)))

(assert (=> d!121609 (= res!682529 (or (is-Nil!21676 l!1036) (is-Nil!21676 (t!30688 l!1036))))))

(assert (=> d!121609 (= (isStrictlySorted!632 l!1036) e!572505)))

(declare-fun b!1017507 () Bool)

(declare-fun e!572506 () Bool)

(assert (=> b!1017507 (= e!572505 e!572506)))

(declare-fun res!682530 () Bool)

(assert (=> b!1017507 (=> (not res!682530) (not e!572506))))

(assert (=> b!1017507 (= res!682530 (bvslt (_1!7705 (h!22873 l!1036)) (_1!7705 (h!22873 (t!30688 l!1036)))))))

(declare-fun b!1017508 () Bool)

(assert (=> b!1017508 (= e!572506 (isStrictlySorted!632 (t!30688 l!1036)))))

(assert (= (and d!121609 (not res!682529)) b!1017507))

(assert (= (and b!1017507 res!682530) b!1017508))

(declare-fun m!938983 () Bool)

(assert (=> b!1017508 m!938983))

(assert (=> start!88460 d!121609))

(declare-fun d!121615 () Bool)

(declare-fun isEmpty!911 (Option!623) Bool)

(assert (=> d!121615 (= (isDefined!417 (getValueByKey!572 l!1036 key!271)) (not (isEmpty!911 (getValueByKey!572 l!1036 key!271))))))

(declare-fun bs!29609 () Bool)

(assert (= bs!29609 d!121615))

(assert (=> bs!29609 m!938953))

(declare-fun m!938985 () Bool)

(assert (=> bs!29609 m!938985))

(assert (=> b!1017458 d!121615))

(declare-fun b!1017543 () Bool)

(declare-fun e!572529 () Option!623)

(assert (=> b!1017543 (= e!572529 (getValueByKey!572 (t!30688 l!1036) key!271))))

(declare-fun b!1017542 () Bool)

(declare-fun e!572528 () Option!623)

(assert (=> b!1017542 (= e!572528 e!572529)))

(declare-fun c!102983 () Bool)

(assert (=> b!1017542 (= c!102983 (and (is-Cons!21675 l!1036) (not (= (_1!7705 (h!22873 l!1036)) key!271))))))

(declare-fun d!121617 () Bool)

(declare-fun c!102982 () Bool)

(assert (=> d!121617 (= c!102982 (and (is-Cons!21675 l!1036) (= (_1!7705 (h!22873 l!1036)) key!271)))))

(assert (=> d!121617 (= (getValueByKey!572 l!1036 key!271) e!572528)))

(declare-fun b!1017541 () Bool)

(assert (=> b!1017541 (= e!572528 (Some!622 (_2!7705 (h!22873 l!1036))))))

(declare-fun b!1017544 () Bool)

(assert (=> b!1017544 (= e!572529 None!621)))

(assert (= (and d!121617 c!102982) b!1017541))

(assert (= (and d!121617 (not c!102982)) b!1017542))

(assert (= (and b!1017542 c!102983) b!1017543))

(assert (= (and b!1017542 (not c!102983)) b!1017544))

(declare-fun m!938995 () Bool)

(assert (=> b!1017543 m!938995))

(assert (=> b!1017458 d!121617))

(declare-fun b!1017556 () Bool)

(declare-fun e!572537 () Bool)

(declare-fun tp!70913 () Bool)

(assert (=> b!1017556 (= e!572537 (and tp_is_empty!23653 tp!70913))))

(assert (=> b!1017460 (= tp!70901 e!572537)))

(assert (= (and b!1017460 (is-Cons!21675 (t!30688 l!1036))) b!1017556))

(push 1)

(assert (not b!1017556))

(assert (not d!121615))

