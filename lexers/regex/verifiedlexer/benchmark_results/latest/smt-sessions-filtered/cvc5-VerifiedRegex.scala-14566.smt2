; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755418 () Bool)

(assert start!755418)

(declare-fun res!3173377 () Bool)

(declare-fun e!4727164 () Bool)

(assert (=> start!755418 (=> (not res!3173377) (not e!4727164))))

(declare-datatypes ((B!4279 0))(
  ( (B!4280 (val!32529 Int)) )
))
(declare-datatypes ((List!75041 0))(
  ( (Nil!74917) (Cons!74917 (h!81365 B!4279) (t!390784 List!75041)) )
))
(declare-fun l!2932 () List!75041)

(declare-fun p!1838 () List!75041)

(declare-fun size!43694 (List!75041) Int)

(assert (=> start!755418 (= res!3173377 (>= (size!43694 l!2932) (size!43694 p!1838)))))

(assert (=> start!755418 e!4727164))

(declare-fun e!4727165 () Bool)

(assert (=> start!755418 e!4727165))

(declare-fun e!4727166 () Bool)

(assert (=> start!755418 e!4727166))

(declare-fun b!8024462 () Bool)

(assert (=> b!8024462 (= e!4727164 false)))

(declare-fun lt!2720623 () Bool)

(declare-fun isPrefix!6848 (List!75041 List!75041) Bool)

(assert (=> b!8024462 (= lt!2720623 (isPrefix!6848 p!1838 l!2932))))

(declare-fun b!8024463 () Bool)

(declare-fun tp_is_empty!54167 () Bool)

(declare-fun tp!2401461 () Bool)

(assert (=> b!8024463 (= e!4727165 (and tp_is_empty!54167 tp!2401461))))

(declare-fun b!8024464 () Bool)

(declare-fun tp!2401460 () Bool)

(assert (=> b!8024464 (= e!4727166 (and tp_is_empty!54167 tp!2401460))))

(assert (= (and start!755418 res!3173377) b!8024462))

(assert (= (and start!755418 (is-Cons!74917 l!2932)) b!8024463))

(assert (= (and start!755418 (is-Cons!74917 p!1838)) b!8024464))

(declare-fun m!8386906 () Bool)

(assert (=> start!755418 m!8386906))

(declare-fun m!8386908 () Bool)

(assert (=> start!755418 m!8386908))

(declare-fun m!8386910 () Bool)

(assert (=> b!8024462 m!8386910))

(push 1)

(assert (not start!755418))

(assert (not b!8024462))

(assert tp_is_empty!54167)

(assert (not b!8024464))

(assert (not b!8024463))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

