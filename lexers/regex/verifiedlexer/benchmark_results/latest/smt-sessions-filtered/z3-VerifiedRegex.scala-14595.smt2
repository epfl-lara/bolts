; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755876 () Bool)

(assert start!755876)

(declare-fun res!3174244 () Bool)

(declare-fun e!4728668 () Bool)

(assert (=> start!755876 (=> (not res!3174244) (not e!4728668))))

(declare-datatypes ((B!4377 0))(
  ( (B!4378 (val!32588 Int)) )
))
(declare-datatypes ((List!75104 0))(
  ( (Nil!74978) (Cons!74978 (h!81426 B!4377) (t!390860 List!75104)) )
))
(declare-fun l!2938 () List!75104)

(declare-fun e!9235 () B!4377)

(declare-fun contains!20942 (List!75104 B!4377) Bool)

(assert (=> start!755876 (= res!3174244 (contains!20942 l!2938 e!9235))))

(assert (=> start!755876 e!4728668))

(declare-fun e!4728669 () Bool)

(assert (=> start!755876 e!4728669))

(declare-fun tp_is_empty!54281 () Bool)

(assert (=> start!755876 tp_is_empty!54281))

(declare-fun b!8026737 () Bool)

(declare-fun res!3174245 () Bool)

(assert (=> b!8026737 (=> (not res!3174245) (not e!4728668))))

(get-info :version)

(assert (=> b!8026737 (= res!3174245 (and (or (not ((_ is Cons!74978) l!2938)) (not (= (h!81426 l!2938) e!9235))) (or (not ((_ is Cons!74978) l!2938)) (= (h!81426 l!2938) e!9235)) (not ((_ is Nil!74978) l!2938))))))

(declare-fun b!8026738 () Bool)

(declare-fun err!4713 () Int)

(assert (=> b!8026738 (= e!4728668 (< err!4713 0))))

(assert (=> b!8026738 true))

(declare-fun b!8026739 () Bool)

(declare-fun tp!2402111 () Bool)

(assert (=> b!8026739 (= e!4728669 (and tp_is_empty!54281 tp!2402111))))

(assert (= (and start!755876 res!3174244) b!8026737))

(assert (= (and b!8026737 res!3174245) b!8026738))

(assert (= (and start!755876 ((_ is Cons!74978) l!2938)) b!8026739))

(declare-fun m!8389008 () Bool)

(assert (=> start!755876 m!8389008))

(check-sat (not start!755876) (not b!8026739) tp_is_empty!54281)
(check-sat)
