; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353128 () Bool)

(assert start!353128)

(declare-fun res!1522984 () Bool)

(declare-fun e!2326183 () Bool)

(assert (=> start!353128 (=> res!1522984 e!2326183)))

(declare-datatypes ((B!2561 0))(
  ( (B!2562 (val!13212 Int)) )
))
(declare-datatypes ((List!40227 0))(
  ( (Nil!40103) (Cons!40103 (h!45523 B!2561) (t!303876 List!40227)) )
))
(declare-fun l!3461 () List!40227)

(get-info :version)

(assert (=> start!353128 (= res!1522984 ((_ is Cons!40103) l!3461))))

(declare-fun isPrefix!3295 (List!40227 List!40227) Bool)

(assert (=> start!353128 (isPrefix!3295 l!3461 l!3461)))

(declare-datatypes ((Unit!57822 0))(
  ( (Unit!57823) )
))
(declare-fun lt!1301781 () Unit!57822)

(declare-fun lemmaIsPrefixRefl!2080 (List!40227 List!40227) Unit!57822)

(assert (=> start!353128 (= lt!1301781 (lemmaIsPrefixRefl!2080 l!3461 l!3461))))

(assert (=> start!353128 (not e!2326183)))

(declare-fun e!2326184 () Bool)

(assert (=> start!353128 e!2326184))

(declare-fun b!3761097 () Bool)

(assert (=> b!3761097 (= e!2326183 true)))

(declare-fun lt!1301780 () Int)

(declare-fun size!30182 (List!40227) Int)

(assert (=> b!3761097 (= lt!1301780 (size!30182 l!3461))))

(declare-fun b!3761098 () Bool)

(declare-fun tp_is_empty!19105 () Bool)

(declare-fun tp!1149364 () Bool)

(assert (=> b!3761098 (= e!2326184 (and tp_is_empty!19105 tp!1149364))))

(assert (= (and start!353128 (not res!1522984)) b!3761097))

(assert (= (and start!353128 ((_ is Cons!40103) l!3461)) b!3761098))

(declare-fun m!4255135 () Bool)

(assert (=> start!353128 m!4255135))

(declare-fun m!4255137 () Bool)

(assert (=> start!353128 m!4255137))

(declare-fun m!4255139 () Bool)

(assert (=> b!3761097 m!4255139))

(check-sat (not b!3761097) (not start!353128) (not b!3761098) tp_is_empty!19105)
(check-sat)
