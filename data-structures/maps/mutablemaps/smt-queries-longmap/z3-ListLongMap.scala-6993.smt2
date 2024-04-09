; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88696 () Bool)

(assert start!88696)

(declare-fun res!683097 () Bool)

(declare-fun e!573220 () Bool)

(assert (=> start!88696 (=> (not res!683097) (not e!573220))))

(declare-datatypes ((B!1666 0))(
  ( (B!1667 (val!11917 Int)) )
))
(declare-datatypes ((tuple2!15470 0))(
  ( (tuple2!15471 (_1!7745 (_ BitVec 64)) (_2!7745 B!1666)) )
))
(declare-datatypes ((List!21719 0))(
  ( (Nil!21716) (Cons!21715 (h!22913 tuple2!15470) (t!30731 List!21719)) )
))
(declare-fun l!996 () List!21719)

(declare-fun isStrictlySorted!666 (List!21719) Bool)

(assert (=> start!88696 (= res!683097 (isStrictlySorted!666 l!996))))

(assert (=> start!88696 e!573220))

(declare-fun e!573219 () Bool)

(assert (=> start!88696 e!573219))

(assert (=> start!88696 true))

(declare-fun b!1018625 () Bool)

(declare-fun res!683096 () Bool)

(assert (=> b!1018625 (=> (not res!683096) (not e!573220))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!531 (List!21719 (_ BitVec 64)) Bool)

(assert (=> b!1018625 (= res!683096 (containsKey!531 l!996 key!261))))

(declare-fun b!1018626 () Bool)

(declare-fun ListPrimitiveSize!134 (List!21719) Int)

(assert (=> b!1018626 (= e!573220 (< (ListPrimitiveSize!134 l!996) 0))))

(declare-fun b!1018627 () Bool)

(declare-fun tp_is_empty!23733 () Bool)

(declare-fun tp!71081 () Bool)

(assert (=> b!1018627 (= e!573219 (and tp_is_empty!23733 tp!71081))))

(assert (= (and start!88696 res!683097) b!1018625))

(assert (= (and b!1018625 res!683096) b!1018626))

(get-info :version)

(assert (= (and start!88696 ((_ is Cons!21715) l!996)) b!1018627))

(declare-fun m!939557 () Bool)

(assert (=> start!88696 m!939557))

(declare-fun m!939559 () Bool)

(assert (=> b!1018625 m!939559))

(declare-fun m!939561 () Bool)

(assert (=> b!1018626 m!939561))

(check-sat (not b!1018626) (not b!1018625) (not start!88696) (not b!1018627) tp_is_empty!23733)
(check-sat)
(get-model)

(declare-fun d!121897 () Bool)

(declare-fun res!683116 () Bool)

(declare-fun e!573239 () Bool)

(assert (=> d!121897 (=> res!683116 e!573239)))

(assert (=> d!121897 (= res!683116 (or ((_ is Nil!21716) l!996) ((_ is Nil!21716) (t!30731 l!996))))))

(assert (=> d!121897 (= (isStrictlySorted!666 l!996) e!573239)))

(declare-fun b!1018649 () Bool)

(declare-fun e!573240 () Bool)

(assert (=> b!1018649 (= e!573239 e!573240)))

(declare-fun res!683117 () Bool)

(assert (=> b!1018649 (=> (not res!683117) (not e!573240))))

(assert (=> b!1018649 (= res!683117 (bvslt (_1!7745 (h!22913 l!996)) (_1!7745 (h!22913 (t!30731 l!996)))))))

(declare-fun b!1018650 () Bool)

(assert (=> b!1018650 (= e!573240 (isStrictlySorted!666 (t!30731 l!996)))))

(assert (= (and d!121897 (not res!683116)) b!1018649))

(assert (= (and b!1018649 res!683117) b!1018650))

(declare-fun m!939569 () Bool)

(assert (=> b!1018650 m!939569))

(assert (=> start!88696 d!121897))

(declare-fun d!121903 () Bool)

(declare-fun lt!449567 () Int)

(assert (=> d!121903 (>= lt!449567 0)))

(declare-fun e!573249 () Int)

(assert (=> d!121903 (= lt!449567 e!573249)))

(declare-fun c!103146 () Bool)

(assert (=> d!121903 (= c!103146 ((_ is Nil!21716) l!996))))

(assert (=> d!121903 (= (ListPrimitiveSize!134 l!996) lt!449567)))

(declare-fun b!1018663 () Bool)

(assert (=> b!1018663 (= e!573249 0)))

(declare-fun b!1018664 () Bool)

(assert (=> b!1018664 (= e!573249 (+ 1 (ListPrimitiveSize!134 (t!30731 l!996))))))

(assert (= (and d!121903 c!103146) b!1018663))

(assert (= (and d!121903 (not c!103146)) b!1018664))

(declare-fun m!939575 () Bool)

(assert (=> b!1018664 m!939575))

(assert (=> b!1018626 d!121903))

(declare-fun d!121909 () Bool)

(declare-fun res!683136 () Bool)

(declare-fun e!573267 () Bool)

(assert (=> d!121909 (=> res!683136 e!573267)))

(assert (=> d!121909 (= res!683136 (and ((_ is Cons!21715) l!996) (= (_1!7745 (h!22913 l!996)) key!261)))))

(assert (=> d!121909 (= (containsKey!531 l!996 key!261) e!573267)))

(declare-fun b!1018685 () Bool)

(declare-fun e!573268 () Bool)

(assert (=> b!1018685 (= e!573267 e!573268)))

(declare-fun res!683137 () Bool)

(assert (=> b!1018685 (=> (not res!683137) (not e!573268))))

(assert (=> b!1018685 (= res!683137 (and (or (not ((_ is Cons!21715) l!996)) (bvsle (_1!7745 (h!22913 l!996)) key!261)) ((_ is Cons!21715) l!996) (bvslt (_1!7745 (h!22913 l!996)) key!261)))))

(declare-fun b!1018686 () Bool)

(assert (=> b!1018686 (= e!573268 (containsKey!531 (t!30731 l!996) key!261))))

(assert (= (and d!121909 (not res!683136)) b!1018685))

(assert (= (and b!1018685 res!683137) b!1018686))

(declare-fun m!939581 () Bool)

(assert (=> b!1018686 m!939581))

(assert (=> b!1018625 d!121909))

(declare-fun b!1018695 () Bool)

(declare-fun e!573274 () Bool)

(declare-fun tp!71087 () Bool)

(assert (=> b!1018695 (= e!573274 (and tp_is_empty!23733 tp!71087))))

(assert (=> b!1018627 (= tp!71081 e!573274)))

(assert (= (and b!1018627 ((_ is Cons!21715) (t!30731 l!996))) b!1018695))

(check-sat (not b!1018650) (not b!1018695) tp_is_empty!23733 (not b!1018664) (not b!1018686))
(check-sat)
