; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138390 () Bool)

(assert start!138390)

(declare-fun b!1585912 () Bool)

(declare-fun e!885578 () Bool)

(declare-fun tp_is_empty!39537 () Bool)

(declare-fun tp!115324 () Bool)

(assert (=> b!1585912 (= e!885578 (and tp_is_empty!39537 tp!115324))))

(declare-fun b!1585913 () Bool)

(declare-fun res!1083191 () Bool)

(declare-fun e!885579 () Bool)

(assert (=> b!1585913 (=> res!1083191 e!885579)))

(declare-datatypes ((B!3004 0))(
  ( (B!3005 (val!19864 Int)) )
))
(declare-datatypes ((tuple2!26060 0))(
  ( (tuple2!26061 (_1!13040 (_ BitVec 64)) (_2!13040 B!3004)) )
))
(declare-datatypes ((List!37145 0))(
  ( (Nil!37142) (Cons!37141 (h!38685 tuple2!26060) (t!52081 List!37145)) )
))
(declare-fun lt!677403 () List!37145)

(declare-fun newKey!21 () (_ BitVec 64))

(declare-fun containsKey!1017 (List!37145 (_ BitVec 64)) Bool)

(assert (=> b!1585913 (= res!1083191 (not (containsKey!1017 lt!677403 newKey!21)))))

(declare-fun b!1585914 () Bool)

(declare-fun res!1083190 () Bool)

(declare-fun e!885577 () Bool)

(assert (=> b!1585914 (=> (not res!1083190) (not e!885577))))

(declare-fun l!556 () List!37145)

(get-info :version)

(assert (=> b!1585914 (= res!1083190 (and (or (not ((_ is Cons!37141) l!556)) (bvsge (_1!13040 (h!38685 l!556)) newKey!21)) (or (not ((_ is Cons!37141) l!556)) (not (= (_1!13040 (h!38685 l!556)) newKey!21))) (or (not ((_ is Cons!37141) l!556)) (bvsle (_1!13040 (h!38685 l!556)) newKey!21)) ((_ is Nil!37142) l!556)))))

(declare-fun res!1083189 () Bool)

(assert (=> start!138390 (=> (not res!1083189) (not e!885577))))

(declare-fun isStrictlySorted!1204 (List!37145) Bool)

(assert (=> start!138390 (= res!1083189 (isStrictlySorted!1204 l!556))))

(assert (=> start!138390 e!885577))

(assert (=> start!138390 e!885578))

(assert (=> start!138390 true))

(assert (=> start!138390 tp_is_empty!39537))

(declare-fun b!1585915 () Bool)

(assert (=> b!1585915 (= e!885577 e!885579)))

(declare-fun res!1083188 () Bool)

(assert (=> b!1585915 (=> res!1083188 e!885579)))

(assert (=> b!1585915 (= res!1083188 (not (isStrictlySorted!1204 lt!677403)))))

(declare-fun lt!677404 () tuple2!26060)

(declare-fun $colon$colon!1050 (List!37145 tuple2!26060) List!37145)

(assert (=> b!1585915 (= lt!677403 ($colon$colon!1050 Nil!37142 lt!677404))))

(declare-fun newValue!21 () B!3004)

(assert (=> b!1585915 (= lt!677404 (tuple2!26061 newKey!21 newValue!21))))

(declare-fun b!1585916 () Bool)

(declare-fun contains!10559 (List!37145 tuple2!26060) Bool)

(assert (=> b!1585916 (= e!885579 (not (contains!10559 lt!677403 lt!677404)))))

(assert (= (and start!138390 res!1083189) b!1585914))

(assert (= (and b!1585914 res!1083190) b!1585915))

(assert (= (and b!1585915 (not res!1083188)) b!1585913))

(assert (= (and b!1585913 (not res!1083191)) b!1585916))

(assert (= (and start!138390 ((_ is Cons!37141) l!556)) b!1585912))

(declare-fun m!1454569 () Bool)

(assert (=> b!1585913 m!1454569))

(declare-fun m!1454571 () Bool)

(assert (=> start!138390 m!1454571))

(declare-fun m!1454573 () Bool)

(assert (=> b!1585915 m!1454573))

(declare-fun m!1454575 () Bool)

(assert (=> b!1585915 m!1454575))

(declare-fun m!1454577 () Bool)

(assert (=> b!1585916 m!1454577))

(check-sat tp_is_empty!39537 (not b!1585912) (not b!1585916) (not b!1585913) (not b!1585915) (not start!138390))
(check-sat)
(get-model)

(declare-fun d!167823 () Bool)

(declare-fun lt!677413 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!877 (List!37145) (InoxSet tuple2!26060))

(assert (=> d!167823 (= lt!677413 (select (content!877 lt!677403) lt!677404))))

(declare-fun e!885602 () Bool)

(assert (=> d!167823 (= lt!677413 e!885602)))

(declare-fun res!1083217 () Bool)

(assert (=> d!167823 (=> (not res!1083217) (not e!885602))))

(assert (=> d!167823 (= res!1083217 ((_ is Cons!37141) lt!677403))))

(assert (=> d!167823 (= (contains!10559 lt!677403 lt!677404) lt!677413)))

(declare-fun b!1585944 () Bool)

(declare-fun e!885601 () Bool)

(assert (=> b!1585944 (= e!885602 e!885601)))

(declare-fun res!1083216 () Bool)

(assert (=> b!1585944 (=> res!1083216 e!885601)))

(assert (=> b!1585944 (= res!1083216 (= (h!38685 lt!677403) lt!677404))))

(declare-fun b!1585945 () Bool)

(assert (=> b!1585945 (= e!885601 (contains!10559 (t!52081 lt!677403) lt!677404))))

(assert (= (and d!167823 res!1083217) b!1585944))

(assert (= (and b!1585944 (not res!1083216)) b!1585945))

(declare-fun m!1454589 () Bool)

(assert (=> d!167823 m!1454589))

(declare-fun m!1454591 () Bool)

(assert (=> d!167823 m!1454591))

(declare-fun m!1454593 () Bool)

(assert (=> b!1585945 m!1454593))

(assert (=> b!1585916 d!167823))

(declare-fun d!167829 () Bool)

(declare-fun res!1083232 () Bool)

(declare-fun e!885617 () Bool)

(assert (=> d!167829 (=> res!1083232 e!885617)))

(assert (=> d!167829 (= res!1083232 (or ((_ is Nil!37142) lt!677403) ((_ is Nil!37142) (t!52081 lt!677403))))))

(assert (=> d!167829 (= (isStrictlySorted!1204 lt!677403) e!885617)))

(declare-fun b!1585960 () Bool)

(declare-fun e!885618 () Bool)

(assert (=> b!1585960 (= e!885617 e!885618)))

(declare-fun res!1083233 () Bool)

(assert (=> b!1585960 (=> (not res!1083233) (not e!885618))))

(assert (=> b!1585960 (= res!1083233 (bvslt (_1!13040 (h!38685 lt!677403)) (_1!13040 (h!38685 (t!52081 lt!677403)))))))

(declare-fun b!1585961 () Bool)

(assert (=> b!1585961 (= e!885618 (isStrictlySorted!1204 (t!52081 lt!677403)))))

(assert (= (and d!167829 (not res!1083232)) b!1585960))

(assert (= (and b!1585960 res!1083233) b!1585961))

(declare-fun m!1454601 () Bool)

(assert (=> b!1585961 m!1454601))

(assert (=> b!1585915 d!167829))

(declare-fun d!167839 () Bool)

(assert (=> d!167839 (= ($colon$colon!1050 Nil!37142 lt!677404) (Cons!37141 lt!677404 Nil!37142))))

(assert (=> b!1585915 d!167839))

(declare-fun d!167843 () Bool)

(declare-fun res!1083242 () Bool)

(declare-fun e!885627 () Bool)

(assert (=> d!167843 (=> res!1083242 e!885627)))

(assert (=> d!167843 (= res!1083242 (or ((_ is Nil!37142) l!556) ((_ is Nil!37142) (t!52081 l!556))))))

(assert (=> d!167843 (= (isStrictlySorted!1204 l!556) e!885627)))

(declare-fun b!1585968 () Bool)

(declare-fun e!885628 () Bool)

(assert (=> b!1585968 (= e!885627 e!885628)))

(declare-fun res!1083243 () Bool)

(assert (=> b!1585968 (=> (not res!1083243) (not e!885628))))

(assert (=> b!1585968 (= res!1083243 (bvslt (_1!13040 (h!38685 l!556)) (_1!13040 (h!38685 (t!52081 l!556)))))))

(declare-fun b!1585969 () Bool)

(assert (=> b!1585969 (= e!885628 (isStrictlySorted!1204 (t!52081 l!556)))))

(assert (= (and d!167843 (not res!1083242)) b!1585968))

(assert (= (and b!1585968 res!1083243) b!1585969))

(declare-fun m!1454607 () Bool)

(assert (=> b!1585969 m!1454607))

(assert (=> start!138390 d!167843))

(declare-fun d!167847 () Bool)

(declare-fun res!1083254 () Bool)

(declare-fun e!885639 () Bool)

(assert (=> d!167847 (=> res!1083254 e!885639)))

(assert (=> d!167847 (= res!1083254 (and ((_ is Cons!37141) lt!677403) (= (_1!13040 (h!38685 lt!677403)) newKey!21)))))

(assert (=> d!167847 (= (containsKey!1017 lt!677403 newKey!21) e!885639)))

(declare-fun b!1585982 () Bool)

(declare-fun e!885640 () Bool)

(assert (=> b!1585982 (= e!885639 e!885640)))

(declare-fun res!1083255 () Bool)

(assert (=> b!1585982 (=> (not res!1083255) (not e!885640))))

(assert (=> b!1585982 (= res!1083255 (and (or (not ((_ is Cons!37141) lt!677403)) (bvsle (_1!13040 (h!38685 lt!677403)) newKey!21)) ((_ is Cons!37141) lt!677403) (bvslt (_1!13040 (h!38685 lt!677403)) newKey!21)))))

(declare-fun b!1585983 () Bool)

(assert (=> b!1585983 (= e!885640 (containsKey!1017 (t!52081 lt!677403) newKey!21))))

(assert (= (and d!167847 (not res!1083254)) b!1585982))

(assert (= (and b!1585982 res!1083255) b!1585983))

(declare-fun m!1454611 () Bool)

(assert (=> b!1585983 m!1454611))

(assert (=> b!1585913 d!167847))

(declare-fun b!1585994 () Bool)

(declare-fun e!885649 () Bool)

(declare-fun tp!115330 () Bool)

(assert (=> b!1585994 (= e!885649 (and tp_is_empty!39537 tp!115330))))

(assert (=> b!1585912 (= tp!115324 e!885649)))

(assert (= (and b!1585912 ((_ is Cons!37141) (t!52081 l!556))) b!1585994))

(check-sat tp_is_empty!39537 (not b!1585994) (not b!1585969) (not b!1585945) (not d!167823) (not b!1585961) (not b!1585983))
(check-sat)
