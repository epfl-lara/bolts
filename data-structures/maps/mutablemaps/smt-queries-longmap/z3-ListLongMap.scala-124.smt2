; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2130 () Bool)

(assert start!2130)

(declare-fun res!11124 () Bool)

(declare-fun e!8592 () Bool)

(assert (=> start!2130 (=> (not res!11124) (not e!8592))))

(declare-datatypes ((B!544 0))(
  ( (B!545 (val!370 Int)) )
))
(declare-datatypes ((tuple2!522 0))(
  ( (tuple2!523 (_1!261 (_ BitVec 64)) (_2!261 B!544)) )
))
(declare-datatypes ((List!420 0))(
  ( (Nil!417) (Cons!416 (h!982 tuple2!522) (t!2819 List!420)) )
))
(declare-fun l!522 () List!420)

(declare-fun isStrictlySorted!111 (List!420) Bool)

(assert (=> start!2130 (= res!11124 (isStrictlySorted!111 l!522))))

(assert (=> start!2130 e!8592))

(declare-fun e!8593 () Bool)

(assert (=> start!2130 e!8593))

(declare-fun tp_is_empty!723 () Bool)

(assert (=> start!2130 tp_is_empty!723))

(declare-fun b!14355 () Bool)

(declare-fun res!11125 () Bool)

(assert (=> b!14355 (=> (not res!11125) (not e!8592))))

(declare-fun value!159 () B!544)

(get-info :version)

(assert (=> b!14355 (= res!11125 (and (not (= (_2!261 (h!982 l!522)) value!159)) ((_ is Cons!416) l!522)))))

(declare-fun b!14356 () Bool)

(declare-fun ListPrimitiveSize!26 (List!420) Int)

(assert (=> b!14356 (= e!8592 (>= (ListPrimitiveSize!26 (t!2819 l!522)) (ListPrimitiveSize!26 l!522)))))

(declare-fun b!14357 () Bool)

(declare-fun tp!2327 () Bool)

(assert (=> b!14357 (= e!8593 (and tp_is_empty!723 tp!2327))))

(assert (= (and start!2130 res!11124) b!14355))

(assert (= (and b!14355 res!11125) b!14356))

(assert (= (and start!2130 ((_ is Cons!416) l!522)) b!14357))

(declare-fun m!9607 () Bool)

(assert (=> start!2130 m!9607))

(declare-fun m!9609 () Bool)

(assert (=> b!14356 m!9609))

(declare-fun m!9611 () Bool)

(assert (=> b!14356 m!9611))

(check-sat (not start!2130) (not b!14356) (not b!14357) tp_is_empty!723)
(check-sat)
(get-model)

(declare-fun d!2241 () Bool)

(declare-fun res!11148 () Bool)

(declare-fun e!8620 () Bool)

(assert (=> d!2241 (=> res!11148 e!8620)))

(assert (=> d!2241 (= res!11148 (or ((_ is Nil!417) l!522) ((_ is Nil!417) (t!2819 l!522))))))

(assert (=> d!2241 (= (isStrictlySorted!111 l!522) e!8620)))

(declare-fun b!14391 () Bool)

(declare-fun e!8621 () Bool)

(assert (=> b!14391 (= e!8620 e!8621)))

(declare-fun res!11149 () Bool)

(assert (=> b!14391 (=> (not res!11149) (not e!8621))))

(assert (=> b!14391 (= res!11149 (bvslt (_1!261 (h!982 l!522)) (_1!261 (h!982 (t!2819 l!522)))))))

(declare-fun b!14392 () Bool)

(assert (=> b!14392 (= e!8621 (isStrictlySorted!111 (t!2819 l!522)))))

(assert (= (and d!2241 (not res!11148)) b!14391))

(assert (= (and b!14391 res!11149) b!14392))

(declare-fun m!9623 () Bool)

(assert (=> b!14392 m!9623))

(assert (=> start!2130 d!2241))

(declare-fun d!2247 () Bool)

(declare-fun lt!3605 () Int)

(assert (=> d!2247 (>= lt!3605 0)))

(declare-fun e!8634 () Int)

(assert (=> d!2247 (= lt!3605 e!8634)))

(declare-fun c!1345 () Bool)

(assert (=> d!2247 (= c!1345 ((_ is Nil!417) (t!2819 l!522)))))

(assert (=> d!2247 (= (ListPrimitiveSize!26 (t!2819 l!522)) lt!3605)))

(declare-fun b!14415 () Bool)

(assert (=> b!14415 (= e!8634 0)))

(declare-fun b!14416 () Bool)

(assert (=> b!14416 (= e!8634 (+ 1 (ListPrimitiveSize!26 (t!2819 (t!2819 l!522)))))))

(assert (= (and d!2247 c!1345) b!14415))

(assert (= (and d!2247 (not c!1345)) b!14416))

(declare-fun m!9629 () Bool)

(assert (=> b!14416 m!9629))

(assert (=> b!14356 d!2247))

(declare-fun d!2253 () Bool)

(declare-fun lt!3606 () Int)

(assert (=> d!2253 (>= lt!3606 0)))

(declare-fun e!8635 () Int)

(assert (=> d!2253 (= lt!3606 e!8635)))

(declare-fun c!1346 () Bool)

(assert (=> d!2253 (= c!1346 ((_ is Nil!417) l!522))))

(assert (=> d!2253 (= (ListPrimitiveSize!26 l!522) lt!3606)))

(declare-fun b!14417 () Bool)

(assert (=> b!14417 (= e!8635 0)))

(declare-fun b!14418 () Bool)

(assert (=> b!14418 (= e!8635 (+ 1 (ListPrimitiveSize!26 (t!2819 l!522))))))

(assert (= (and d!2253 c!1346) b!14417))

(assert (= (and d!2253 (not c!1346)) b!14418))

(assert (=> b!14418 m!9609))

(assert (=> b!14356 d!2253))

(declare-fun b!14423 () Bool)

(declare-fun e!8638 () Bool)

(declare-fun tp!2339 () Bool)

(assert (=> b!14423 (= e!8638 (and tp_is_empty!723 tp!2339))))

(assert (=> b!14357 (= tp!2327 e!8638)))

(assert (= (and b!14357 ((_ is Cons!416) (t!2819 l!522))) b!14423))

(check-sat tp_is_empty!723 (not b!14418) (not b!14416) (not b!14392) (not b!14423))
(check-sat)
