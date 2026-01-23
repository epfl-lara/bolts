; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216098 () Bool)

(assert start!216098)

(declare-fun res!952601 () Bool)

(declare-fun e!1416515 () Bool)

(assert (=> start!216098 (=> (not res!952601) (not e!1416515))))

(declare-datatypes ((B!1797 0))(
  ( (B!1798 (val!7424 Int)) )
))
(declare-datatypes ((List!26052 0))(
  ( (Nil!25968) (Cons!25968 (h!31369 B!1797) (t!199368 List!26052)) )
))
(declare-fun l!3389 () List!26052)

(declare-fun isEmpty!14846 (List!26052) Bool)

(assert (=> start!216098 (= res!952601 (not (isEmpty!14846 l!3389)))))

(assert (=> start!216098 e!1416515))

(declare-fun e!1416516 () Bool)

(assert (=> start!216098 e!1416516))

(declare-fun b!2218112 () Bool)

(declare-fun res!952602 () Bool)

(assert (=> b!2218112 (=> (not res!952602) (not e!1416515))))

(get-info :version)

(assert (=> b!2218112 (= res!952602 (and (or (not ((_ is Cons!25968) l!3389)) (not ((_ is Nil!25968) (t!199368 l!3389)))) ((_ is Cons!25968) l!3389)))))

(declare-fun b!2218113 () Bool)

(assert (=> b!2218113 (= e!1416515 (isEmpty!14846 (t!199368 l!3389)))))

(declare-fun b!2218114 () Bool)

(declare-fun tp_is_empty!9845 () Bool)

(declare-fun tp!691060 () Bool)

(assert (=> b!2218114 (= e!1416516 (and tp_is_empty!9845 tp!691060))))

(assert (= (and start!216098 res!952601) b!2218112))

(assert (= (and b!2218112 res!952602) b!2218113))

(assert (= (and start!216098 ((_ is Cons!25968) l!3389)) b!2218114))

(declare-fun m!2658943 () Bool)

(assert (=> start!216098 m!2658943))

(declare-fun m!2658945 () Bool)

(assert (=> b!2218113 m!2658945))

(check-sat (not start!216098) (not b!2218113) (not b!2218114) tp_is_empty!9845)
(check-sat)
(get-model)

(declare-fun d!662988 () Bool)

(assert (=> d!662988 (= (isEmpty!14846 l!3389) ((_ is Nil!25968) l!3389))))

(assert (=> start!216098 d!662988))

(declare-fun d!662992 () Bool)

(assert (=> d!662992 (= (isEmpty!14846 (t!199368 l!3389)) ((_ is Nil!25968) (t!199368 l!3389)))))

(assert (=> b!2218113 d!662992))

(declare-fun b!2218119 () Bool)

(declare-fun e!1416519 () Bool)

(declare-fun tp!691063 () Bool)

(assert (=> b!2218119 (= e!1416519 (and tp_is_empty!9845 tp!691063))))

(assert (=> b!2218114 (= tp!691060 e!1416519)))

(assert (= (and b!2218114 ((_ is Cons!25968) (t!199368 l!3389))) b!2218119))

(check-sat (not b!2218119) tp_is_empty!9845)
(check-sat)
