; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107216 () Bool)

(assert start!107216)

(declare-fun b!1203747 () Bool)

(declare-fun e!772294 () Bool)

(declare-fun e!772292 () Bool)

(assert (=> b!1203747 (= e!772294 e!772292)))

(declare-fun res!542212 () Bool)

(assert (=> b!1203747 (=> (not res!542212) (not e!772292))))

(declare-datatypes ((T!21964 0))(
  ( (T!21965 (val!3914 Int)) )
))
(declare-datatypes ((List!12093 0))(
  ( (Nil!12069) (Cons!12069 (h!17470 T!21964) (t!112509 List!12093)) )
))
(declare-fun r!2028 () List!12093)

(declare-fun until!61 () Int)

(declare-fun lt!411462 () Int)

(declare-fun size!9609 (List!12093) Int)

(assert (=> b!1203747 (= res!542212 (<= until!61 (+ lt!411462 (size!9609 r!2028))))))

(declare-fun l!2744 () List!12093)

(assert (=> b!1203747 (= lt!411462 (size!9609 l!2744))))

(declare-fun res!542211 () Bool)

(assert (=> start!107216 (=> (not res!542211) (not e!772294))))

(declare-fun from!613 () Int)

(assert (=> start!107216 (= res!542211 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107216 e!772294))

(assert (=> start!107216 true))

(declare-fun e!772291 () Bool)

(assert (=> start!107216 e!772291))

(declare-fun e!772293 () Bool)

(assert (=> start!107216 e!772293))

(declare-fun b!1203748 () Bool)

(assert (=> b!1203748 (= e!772292 (and (not (= l!2744 Nil!12069)) (not (= r!2028 Nil!12069)) (= until!61 0) (> lt!411462 from!613) (> until!61 lt!411462) (> from!613 lt!411462)))))

(declare-fun b!1203750 () Bool)

(declare-fun tp_is_empty!6031 () Bool)

(declare-fun tp!341685 () Bool)

(assert (=> b!1203750 (= e!772293 (and tp_is_empty!6031 tp!341685))))

(declare-fun b!1203749 () Bool)

(declare-fun tp!341684 () Bool)

(assert (=> b!1203749 (= e!772291 (and tp_is_empty!6031 tp!341684))))

(assert (= (and start!107216 res!542211) b!1203747))

(assert (= (and b!1203747 res!542212) b!1203748))

(get-info :version)

(assert (= (and start!107216 ((_ is Cons!12069) l!2744)) b!1203749))

(assert (= (and start!107216 ((_ is Cons!12069) r!2028)) b!1203750))

(declare-fun m!1379365 () Bool)

(assert (=> b!1203747 m!1379365))

(declare-fun m!1379367 () Bool)

(assert (=> b!1203747 m!1379367))

(check-sat (not b!1203747) (not b!1203749) (not b!1203750) tp_is_empty!6031)
(check-sat)
