; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72012 () Bool)

(assert start!72012)

(declare-fun res!568981 () Bool)

(declare-fun e!466472 () Bool)

(assert (=> start!72012 (=> (not res!568981) (not e!466472))))

(declare-datatypes ((B!1180 0))(
  ( (B!1181 (val!7672 Int)) )
))
(declare-datatypes ((tuple2!10222 0))(
  ( (tuple2!10223 (_1!5121 (_ BitVec 64)) (_2!5121 B!1180)) )
))
(declare-datatypes ((List!16031 0))(
  ( (Nil!16028) (Cons!16027 (h!17158 tuple2!10222) (t!22410 List!16031)) )
))
(declare-fun l!390 () List!16031)

(declare-fun isStrictlySorted!443 (List!16031) Bool)

(assert (=> start!72012 (= res!568981 (isStrictlySorted!443 l!390))))

(assert (=> start!72012 e!466472))

(declare-fun e!466471 () Bool)

(assert (=> start!72012 e!466471))

(declare-fun b!836106 () Bool)

(declare-fun res!568980 () Bool)

(assert (=> b!836106 (=> (not res!568980) (not e!466472))))

(get-info :version)

(assert (=> b!836106 (= res!568980 ((_ is Cons!16027) l!390))))

(declare-fun b!836107 () Bool)

(assert (=> b!836107 (= e!466472 (not (isStrictlySorted!443 (t!22410 l!390))))))

(declare-fun b!836108 () Bool)

(declare-fun tp_is_empty!15249 () Bool)

(declare-fun tp!47408 () Bool)

(assert (=> b!836108 (= e!466471 (and tp_is_empty!15249 tp!47408))))

(assert (= (and start!72012 res!568981) b!836106))

(assert (= (and b!836106 res!568980) b!836107))

(assert (= (and start!72012 ((_ is Cons!16027) l!390)) b!836108))

(declare-fun m!781595 () Bool)

(assert (=> start!72012 m!781595))

(declare-fun m!781597 () Bool)

(assert (=> b!836107 m!781597))

(check-sat (not start!72012) (not b!836107) (not b!836108) tp_is_empty!15249)
(check-sat)
(get-model)

(declare-fun d!107471 () Bool)

(declare-fun res!569004 () Bool)

(declare-fun e!466495 () Bool)

(assert (=> d!107471 (=> res!569004 e!466495)))

(assert (=> d!107471 (= res!569004 (or ((_ is Nil!16028) l!390) ((_ is Nil!16028) (t!22410 l!390))))))

(assert (=> d!107471 (= (isStrictlySorted!443 l!390) e!466495)))

(declare-fun b!836134 () Bool)

(declare-fun e!466496 () Bool)

(assert (=> b!836134 (= e!466495 e!466496)))

(declare-fun res!569005 () Bool)

(assert (=> b!836134 (=> (not res!569005) (not e!466496))))

(assert (=> b!836134 (= res!569005 (bvslt (_1!5121 (h!17158 l!390)) (_1!5121 (h!17158 (t!22410 l!390)))))))

(declare-fun b!836135 () Bool)

(assert (=> b!836135 (= e!466496 (isStrictlySorted!443 (t!22410 l!390)))))

(assert (= (and d!107471 (not res!569004)) b!836134))

(assert (= (and b!836134 res!569005) b!836135))

(assert (=> b!836135 m!781597))

(assert (=> start!72012 d!107471))

(declare-fun d!107477 () Bool)

(declare-fun res!569010 () Bool)

(declare-fun e!466501 () Bool)

(assert (=> d!107477 (=> res!569010 e!466501)))

(assert (=> d!107477 (= res!569010 (or ((_ is Nil!16028) (t!22410 l!390)) ((_ is Nil!16028) (t!22410 (t!22410 l!390)))))))

(assert (=> d!107477 (= (isStrictlySorted!443 (t!22410 l!390)) e!466501)))

(declare-fun b!836140 () Bool)

(declare-fun e!466502 () Bool)

(assert (=> b!836140 (= e!466501 e!466502)))

(declare-fun res!569011 () Bool)

(assert (=> b!836140 (=> (not res!569011) (not e!466502))))

(assert (=> b!836140 (= res!569011 (bvslt (_1!5121 (h!17158 (t!22410 l!390))) (_1!5121 (h!17158 (t!22410 (t!22410 l!390))))))))

(declare-fun b!836141 () Bool)

(assert (=> b!836141 (= e!466502 (isStrictlySorted!443 (t!22410 (t!22410 l!390))))))

(assert (= (and d!107477 (not res!569010)) b!836140))

(assert (= (and b!836140 res!569011) b!836141))

(declare-fun m!781607 () Bool)

(assert (=> b!836141 m!781607))

(assert (=> b!836107 d!107477))

(declare-fun b!836156 () Bool)

(declare-fun e!466511 () Bool)

(declare-fun tp!47420 () Bool)

(assert (=> b!836156 (= e!466511 (and tp_is_empty!15249 tp!47420))))

(assert (=> b!836108 (= tp!47408 e!466511)))

(assert (= (and b!836108 ((_ is Cons!16027) (t!22410 l!390))) b!836156))

(check-sat (not b!836141) (not b!836135) (not b!836156) tp_is_empty!15249)
(check-sat)
