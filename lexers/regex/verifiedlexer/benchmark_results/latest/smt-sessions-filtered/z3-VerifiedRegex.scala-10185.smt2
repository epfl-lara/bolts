; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532048 () Bool)

(assert start!532048)

(declare-fun b!5030525 () Bool)

(declare-fun e!3142544 () Bool)

(declare-fun e!3142545 () Bool)

(assert (=> b!5030525 (= e!3142544 e!3142545)))

(declare-fun res!2144010 () Bool)

(assert (=> b!5030525 (=> (not res!2144010) (not e!3142545))))

(declare-fun i!879 () Int)

(declare-fun j!102 () Int)

(declare-fun lt!2081906 () Int)

(assert (=> b!5030525 (= res!2144010 (and (< i!879 lt!2081906) (>= j!102 0) (<= j!102 (- (- lt!2081906 i!879) 1)) (not (= i!879 0))))))

(declare-datatypes ((B!3069 0))(
  ( (B!3070 (val!23446 Int)) )
))
(declare-datatypes ((List!58349 0))(
  ( (Nil!58225) (Cons!58225 (h!64673 B!3069) (t!370765 List!58349)) )
))
(declare-fun l!2999 () List!58349)

(declare-fun size!38764 (List!58349) Int)

(assert (=> b!5030525 (= lt!2081906 (size!38764 l!2999))))

(declare-fun b!5030526 () Bool)

(declare-fun e!3142543 () Bool)

(assert (=> b!5030526 (= e!3142543 (not (<= 0 i!879)))))

(declare-fun lt!2081905 () List!58349)

(declare-fun apply!14210 (List!58349 Int) B!3069)

(declare-fun take!786 (List!58349 Int) List!58349)

(declare-fun drop!2586 (List!58349 Int) List!58349)

(assert (=> b!5030526 (= (Cons!58225 (apply!14210 lt!2081905 (- i!879 1)) (take!786 (drop!2586 lt!2081905 (+ 1 (- i!879 1))) j!102)) (take!786 (drop!2586 lt!2081905 (- i!879 1)) (+ 1 j!102)))))

(declare-datatypes ((Unit!149425 0))(
  ( (Unit!149426) )
))
(declare-fun lt!2081907 () Unit!149425)

(declare-fun lemmaDropTakeAddOneLeft!102 (List!58349 Int Int) Unit!149425)

(assert (=> b!5030526 (= lt!2081907 (lemmaDropTakeAddOneLeft!102 lt!2081905 (- i!879 1) j!102))))

(declare-fun b!5030524 () Bool)

(declare-fun e!3142547 () Bool)

(assert (=> b!5030524 (= e!3142547 e!3142543)))

(declare-fun res!2144012 () Bool)

(assert (=> b!5030524 (=> (not res!2144012) (not e!3142543))))

(declare-fun lt!2081904 () Int)

(assert (=> b!5030524 (= res!2144012 (and (< (- i!879 1) lt!2081904) (<= j!102 (- (- lt!2081904 (- i!879 1)) 1))))))

(assert (=> b!5030524 (= lt!2081904 (size!38764 lt!2081905))))

(declare-fun res!2144011 () Bool)

(assert (=> start!532048 (=> (not res!2144011) (not e!3142544))))

(assert (=> start!532048 (= res!2144011 (>= i!879 0))))

(assert (=> start!532048 e!3142544))

(assert (=> start!532048 true))

(declare-fun e!3142546 () Bool)

(assert (=> start!532048 e!3142546))

(declare-fun b!5030527 () Bool)

(declare-fun tp_is_empty!36691 () Bool)

(declare-fun tp!1409452 () Bool)

(assert (=> b!5030527 (= e!3142546 (and tp_is_empty!36691 tp!1409452))))

(declare-fun b!5030528 () Bool)

(assert (=> b!5030528 (= e!3142545 e!3142547)))

(declare-fun res!2144013 () Bool)

(assert (=> b!5030528 (=> (not res!2144013) (not e!3142547))))

(assert (=> b!5030528 (= res!2144013 (>= (- i!879 1) 0))))

(declare-fun tail!9928 (List!58349) List!58349)

(assert (=> b!5030528 (= lt!2081905 (tail!9928 l!2999))))

(assert (= (and start!532048 res!2144011) b!5030525))

(assert (= (and b!5030525 res!2144010) b!5030528))

(assert (= (and b!5030528 res!2144013) b!5030524))

(assert (= (and b!5030524 res!2144012) b!5030526))

(get-info :version)

(assert (= (and start!532048 ((_ is Cons!58225) l!2999)) b!5030527))

(declare-fun m!6065828 () Bool)

(assert (=> b!5030525 m!6065828))

(declare-fun m!6065830 () Bool)

(assert (=> b!5030526 m!6065830))

(declare-fun m!6065832 () Bool)

(assert (=> b!5030526 m!6065832))

(assert (=> b!5030526 m!6065832))

(declare-fun m!6065834 () Bool)

(assert (=> b!5030526 m!6065834))

(declare-fun m!6065836 () Bool)

(assert (=> b!5030526 m!6065836))

(declare-fun m!6065838 () Bool)

(assert (=> b!5030526 m!6065838))

(assert (=> b!5030526 m!6065830))

(declare-fun m!6065840 () Bool)

(assert (=> b!5030526 m!6065840))

(declare-fun m!6065842 () Bool)

(assert (=> b!5030524 m!6065842))

(declare-fun m!6065844 () Bool)

(assert (=> b!5030528 m!6065844))

(check-sat (not b!5030525) (not b!5030524) (not b!5030526) tp_is_empty!36691 (not b!5030528) (not b!5030527))
(check-sat)
