; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72042 () Bool)

(assert start!72042)

(declare-fun res!569049 () Bool)

(declare-fun e!466577 () Bool)

(assert (=> start!72042 (=> (not res!569049) (not e!466577))))

(declare-datatypes ((B!1192 0))(
  ( (B!1193 (val!7678 Int)) )
))
(declare-datatypes ((tuple2!10234 0))(
  ( (tuple2!10235 (_1!5127 (_ BitVec 64)) (_2!5127 B!1192)) )
))
(declare-datatypes ((List!16037 0))(
  ( (Nil!16034) (Cons!16033 (h!17164 tuple2!10234) (t!22416 List!16037)) )
))
(declare-fun l!390 () List!16037)

(declare-fun isStrictlySorted!449 (List!16037) Bool)

(assert (=> start!72042 (= res!569049 (isStrictlySorted!449 l!390))))

(assert (=> start!72042 e!466577))

(declare-fun e!466576 () Bool)

(assert (=> start!72042 e!466576))

(declare-fun b!836241 () Bool)

(declare-fun res!569050 () Bool)

(assert (=> b!836241 (=> (not res!569050) (not e!466577))))

(get-info :version)

(assert (=> b!836241 (= res!569050 ((_ is Cons!16033) l!390))))

(declare-fun b!836242 () Bool)

(declare-fun ListPrimitiveSize!71 (List!16037) Int)

(assert (=> b!836242 (= e!466577 (>= (ListPrimitiveSize!71 (t!22416 l!390)) (ListPrimitiveSize!71 l!390)))))

(declare-fun b!836243 () Bool)

(declare-fun tp_is_empty!15261 () Bool)

(declare-fun tp!47444 () Bool)

(assert (=> b!836243 (= e!466576 (and tp_is_empty!15261 tp!47444))))

(assert (= (and start!72042 res!569049) b!836241))

(assert (= (and b!836241 res!569050) b!836242))

(assert (= (and start!72042 ((_ is Cons!16033) l!390)) b!836243))

(declare-fun m!781639 () Bool)

(assert (=> start!72042 m!781639))

(declare-fun m!781641 () Bool)

(assert (=> b!836242 m!781641))

(declare-fun m!781643 () Bool)

(assert (=> b!836242 m!781643))

(check-sat (not start!72042) (not b!836242) (not b!836243) tp_is_empty!15261)
(check-sat)
(get-model)

(declare-fun d!107496 () Bool)

(declare-fun res!569065 () Bool)

(declare-fun e!466592 () Bool)

(assert (=> d!107496 (=> res!569065 e!466592)))

(assert (=> d!107496 (= res!569065 (or ((_ is Nil!16034) l!390) ((_ is Nil!16034) (t!22416 l!390))))))

(assert (=> d!107496 (= (isStrictlySorted!449 l!390) e!466592)))

(declare-fun b!836261 () Bool)

(declare-fun e!466593 () Bool)

(assert (=> b!836261 (= e!466592 e!466593)))

(declare-fun res!569066 () Bool)

(assert (=> b!836261 (=> (not res!569066) (not e!466593))))

(assert (=> b!836261 (= res!569066 (bvslt (_1!5127 (h!17164 l!390)) (_1!5127 (h!17164 (t!22416 l!390)))))))

(declare-fun b!836262 () Bool)

(assert (=> b!836262 (= e!466593 (isStrictlySorted!449 (t!22416 l!390)))))

(assert (= (and d!107496 (not res!569065)) b!836261))

(assert (= (and b!836261 res!569066) b!836262))

(declare-fun m!781651 () Bool)

(assert (=> b!836262 m!781651))

(assert (=> start!72042 d!107496))

(declare-fun d!107501 () Bool)

(declare-fun lt!380340 () Int)

(assert (=> d!107501 (>= lt!380340 0)))

(declare-fun e!466604 () Int)

(assert (=> d!107501 (= lt!380340 e!466604)))

(declare-fun c!90955 () Bool)

(assert (=> d!107501 (= c!90955 ((_ is Nil!16034) (t!22416 l!390)))))

(assert (=> d!107501 (= (ListPrimitiveSize!71 (t!22416 l!390)) lt!380340)))

(declare-fun b!836275 () Bool)

(assert (=> b!836275 (= e!466604 0)))

(declare-fun b!836276 () Bool)

(assert (=> b!836276 (= e!466604 (+ 1 (ListPrimitiveSize!71 (t!22416 (t!22416 l!390)))))))

(assert (= (and d!107501 c!90955) b!836275))

(assert (= (and d!107501 (not c!90955)) b!836276))

(declare-fun m!781657 () Bool)

(assert (=> b!836276 m!781657))

(assert (=> b!836242 d!107501))

(declare-fun d!107507 () Bool)

(declare-fun lt!380341 () Int)

(assert (=> d!107507 (>= lt!380341 0)))

(declare-fun e!466605 () Int)

(assert (=> d!107507 (= lt!380341 e!466605)))

(declare-fun c!90956 () Bool)

(assert (=> d!107507 (= c!90956 ((_ is Nil!16034) l!390))))

(assert (=> d!107507 (= (ListPrimitiveSize!71 l!390) lt!380341)))

(declare-fun b!836277 () Bool)

(assert (=> b!836277 (= e!466605 0)))

(declare-fun b!836278 () Bool)

(assert (=> b!836278 (= e!466605 (+ 1 (ListPrimitiveSize!71 (t!22416 l!390))))))

(assert (= (and d!107507 c!90956) b!836277))

(assert (= (and d!107507 (not c!90956)) b!836278))

(assert (=> b!836278 m!781641))

(assert (=> b!836242 d!107507))

(declare-fun b!836287 () Bool)

(declare-fun e!466610 () Bool)

(declare-fun tp!47450 () Bool)

(assert (=> b!836287 (= e!466610 (and tp_is_empty!15261 tp!47450))))

(assert (=> b!836243 (= tp!47444 e!466610)))

(assert (= (and b!836243 ((_ is Cons!16033) (t!22416 l!390))) b!836287))

(check-sat (not b!836287) tp_is_empty!15261 (not b!836276) (not b!836278) (not b!836262))
(check-sat)
