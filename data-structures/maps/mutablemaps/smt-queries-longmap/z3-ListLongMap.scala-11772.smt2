; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138252 () Bool)

(assert start!138252)

(declare-fun res!1082756 () Bool)

(declare-fun e!885059 () Bool)

(assert (=> start!138252 (=> (not res!1082756) (not e!885059))))

(declare-datatypes ((B!2974 0))(
  ( (B!2975 (val!19849 Int)) )
))
(declare-datatypes ((tuple2!26030 0))(
  ( (tuple2!26031 (_1!13025 (_ BitVec 64)) (_2!13025 B!2974)) )
))
(declare-datatypes ((List!37130 0))(
  ( (Nil!37127) (Cons!37126 (h!38670 tuple2!26030) (t!52057 List!37130)) )
))
(declare-fun l!556 () List!37130)

(declare-fun isStrictlySorted!1189 (List!37130) Bool)

(assert (=> start!138252 (= res!1082756 (isStrictlySorted!1189 l!556))))

(assert (=> start!138252 e!885059))

(declare-fun e!885060 () Bool)

(assert (=> start!138252 e!885060))

(declare-fun b!1585201 () Bool)

(declare-fun ListPrimitiveSize!224 (List!37130) Int)

(assert (=> b!1585201 (= e!885059 (< (ListPrimitiveSize!224 l!556) 0))))

(declare-fun b!1585202 () Bool)

(declare-fun tp_is_empty!39507 () Bool)

(declare-fun tp!115231 () Bool)

(assert (=> b!1585202 (= e!885060 (and tp_is_empty!39507 tp!115231))))

(assert (= (and start!138252 res!1082756) b!1585201))

(get-info :version)

(assert (= (and start!138252 ((_ is Cons!37126) l!556)) b!1585202))

(declare-fun m!1454173 () Bool)

(assert (=> start!138252 m!1454173))

(declare-fun m!1454175 () Bool)

(assert (=> b!1585201 m!1454175))

(check-sat (not start!138252) (not b!1585201) (not b!1585202) tp_is_empty!39507)
(check-sat)
(get-model)

(declare-fun d!167627 () Bool)

(declare-fun res!1082764 () Bool)

(declare-fun e!885076 () Bool)

(assert (=> d!167627 (=> res!1082764 e!885076)))

(assert (=> d!167627 (= res!1082764 (or ((_ is Nil!37127) l!556) ((_ is Nil!37127) (t!52057 l!556))))))

(assert (=> d!167627 (= (isStrictlySorted!1189 l!556) e!885076)))

(declare-fun b!1585223 () Bool)

(declare-fun e!885077 () Bool)

(assert (=> b!1585223 (= e!885076 e!885077)))

(declare-fun res!1082765 () Bool)

(assert (=> b!1585223 (=> (not res!1082765) (not e!885077))))

(assert (=> b!1585223 (= res!1082765 (bvslt (_1!13025 (h!38670 l!556)) (_1!13025 (h!38670 (t!52057 l!556)))))))

(declare-fun b!1585224 () Bool)

(assert (=> b!1585224 (= e!885077 (isStrictlySorted!1189 (t!52057 l!556)))))

(assert (= (and d!167627 (not res!1082764)) b!1585223))

(assert (= (and b!1585223 res!1082765) b!1585224))

(declare-fun m!1454183 () Bool)

(assert (=> b!1585224 m!1454183))

(assert (=> start!138252 d!167627))

(declare-fun d!167635 () Bool)

(declare-fun lt!677290 () Int)

(assert (=> d!167635 (>= lt!677290 0)))

(declare-fun e!885089 () Int)

(assert (=> d!167635 (= lt!677290 e!885089)))

(declare-fun c!146913 () Bool)

(assert (=> d!167635 (= c!146913 ((_ is Nil!37127) l!556))))

(assert (=> d!167635 (= (ListPrimitiveSize!224 l!556) lt!677290)))

(declare-fun b!1585239 () Bool)

(assert (=> b!1585239 (= e!885089 0)))

(declare-fun b!1585240 () Bool)

(assert (=> b!1585240 (= e!885089 (+ 1 (ListPrimitiveSize!224 (t!52057 l!556))))))

(assert (= (and d!167635 c!146913) b!1585239))

(assert (= (and d!167635 (not c!146913)) b!1585240))

(declare-fun m!1454187 () Bool)

(assert (=> b!1585240 m!1454187))

(assert (=> b!1585201 d!167635))

(declare-fun b!1585253 () Bool)

(declare-fun e!885098 () Bool)

(declare-fun tp!115239 () Bool)

(assert (=> b!1585253 (= e!885098 (and tp_is_empty!39507 tp!115239))))

(assert (=> b!1585202 (= tp!115231 e!885098)))

(assert (= (and b!1585202 ((_ is Cons!37126) (t!52057 l!556))) b!1585253))

(check-sat (not b!1585224) (not b!1585240) (not b!1585253) tp_is_empty!39507)
(check-sat)
