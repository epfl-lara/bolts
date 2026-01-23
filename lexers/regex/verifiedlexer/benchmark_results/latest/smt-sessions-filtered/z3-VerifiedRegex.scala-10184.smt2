; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532044 () Bool)

(assert start!532044)

(declare-fun res!2143989 () Bool)

(declare-fun e!3142517 () Bool)

(assert (=> start!532044 (=> (not res!2143989) (not e!3142517))))

(declare-fun i!879 () Int)

(assert (=> start!532044 (= res!2143989 (>= i!879 0))))

(assert (=> start!532044 e!3142517))

(assert (=> start!532044 true))

(declare-fun e!3142515 () Bool)

(assert (=> start!532044 e!3142515))

(declare-fun b!5030496 () Bool)

(declare-fun e!3142516 () Bool)

(assert (=> b!5030496 (= e!3142517 e!3142516)))

(declare-fun res!2143988 () Bool)

(assert (=> b!5030496 (=> (not res!2143988) (not e!3142516))))

(declare-fun lt!2081883 () Int)

(declare-fun j!102 () Int)

(assert (=> b!5030496 (= res!2143988 (and (< i!879 lt!2081883) (>= j!102 0) (<= j!102 (- (- lt!2081883 i!879) 1)) (not (= i!879 0)) (>= (- i!879 1) 0)))))

(declare-datatypes ((B!3065 0))(
  ( (B!3066 (val!23444 Int)) )
))
(declare-datatypes ((List!58347 0))(
  ( (Nil!58223) (Cons!58223 (h!64671 B!3065) (t!370763 List!58347)) )
))
(declare-fun l!2999 () List!58347)

(declare-fun size!38762 (List!58347) Int)

(assert (=> b!5030496 (= lt!2081883 (size!38762 l!2999))))

(declare-fun b!5030497 () Bool)

(assert (=> b!5030497 (= e!3142516 false)))

(declare-fun lt!2081882 () Int)

(declare-fun tail!9926 (List!58347) List!58347)

(assert (=> b!5030497 (= lt!2081882 (size!38762 (tail!9926 l!2999)))))

(declare-fun b!5030498 () Bool)

(declare-fun tp_is_empty!36687 () Bool)

(declare-fun tp!1409446 () Bool)

(assert (=> b!5030498 (= e!3142515 (and tp_is_empty!36687 tp!1409446))))

(assert (= (and start!532044 res!2143989) b!5030496))

(assert (= (and b!5030496 res!2143988) b!5030497))

(get-info :version)

(assert (= (and start!532044 ((_ is Cons!58223) l!2999)) b!5030498))

(declare-fun m!6065804 () Bool)

(assert (=> b!5030496 m!6065804))

(declare-fun m!6065806 () Bool)

(assert (=> b!5030497 m!6065806))

(assert (=> b!5030497 m!6065806))

(declare-fun m!6065808 () Bool)

(assert (=> b!5030497 m!6065808))

(check-sat (not b!5030497) (not b!5030496) (not b!5030498) tp_is_empty!36687)
(check-sat)
