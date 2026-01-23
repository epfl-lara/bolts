; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252416 () Bool)

(assert start!252416)

(declare-fun res!1094449 () Bool)

(declare-fun e!1640497 () Bool)

(assert (=> start!252416 (=> (not res!1094449) (not e!1640497))))

(declare-datatypes ((B!2309 0))(
  ( (B!2310 (val!9622 Int)) )
))
(declare-datatypes ((List!30055 0))(
  ( (Nil!29955) (Cons!29955 (h!35375 B!2309) (t!213068 List!30055)) )
))
(declare-fun l!3217 () List!30055)

(declare-fun noDuplicate!503 (List!30055) Bool)

(assert (=> start!252416 (= res!1094449 (noDuplicate!503 l!3217))))

(assert (=> start!252416 e!1640497))

(declare-fun e!1640496 () Bool)

(assert (=> start!252416 e!1640496))

(declare-fun tp_is_empty!13589 () Bool)

(assert (=> start!252416 tp_is_empty!13589))

(declare-fun b!2599024 () Bool)

(declare-fun res!1094452 () Bool)

(assert (=> b!2599024 (=> (not res!1094452) (not e!1640497))))

(declare-fun e!9312 () B!2309)

(declare-fun contains!5503 (List!30055 B!2309) Bool)

(assert (=> b!2599024 (= res!1094452 (contains!5503 l!3217 e!9312))))

(declare-fun b!2599025 () Bool)

(declare-fun tp!823594 () Bool)

(assert (=> b!2599025 (= e!1640496 (and tp_is_empty!13589 tp!823594))))

(declare-fun b!2599026 () Bool)

(assert (=> b!2599026 (= e!1640497 false)))

(declare-fun lt!915061 () Bool)

(assert (=> b!2599026 (= lt!915061 (noDuplicate!503 (t!213068 l!3217)))))

(declare-fun b!2599027 () Bool)

(declare-fun res!1094451 () Bool)

(assert (=> b!2599027 (=> (not res!1094451) (not e!1640497))))

(declare-fun head!5900 (List!30055) B!2309)

(assert (=> b!2599027 (= res!1094451 (= (head!5900 l!3217) e!9312))))

(declare-fun b!2599028 () Bool)

(declare-fun res!1094453 () Bool)

(assert (=> b!2599028 (=> (not res!1094453) (not e!1640497))))

(get-info :version)

(assert (=> b!2599028 (= res!1094453 (and ((_ is Cons!29955) l!3217) (= (h!35375 l!3217) e!9312)))))

(declare-fun b!2599029 () Bool)

(declare-fun res!1094450 () Bool)

(assert (=> b!2599029 (=> (not res!1094450) (not e!1640497))))

(assert (=> b!2599029 (= res!1094450 (not (contains!5503 (t!213068 l!3217) e!9312)))))

(assert (= (and start!252416 res!1094449) b!2599024))

(assert (= (and b!2599024 res!1094452) b!2599027))

(assert (= (and b!2599027 res!1094451) b!2599028))

(assert (= (and b!2599028 res!1094453) b!2599029))

(assert (= (and b!2599029 res!1094450) b!2599026))

(assert (= (and start!252416 ((_ is Cons!29955) l!3217)) b!2599025))

(declare-fun m!2934899 () Bool)

(assert (=> start!252416 m!2934899))

(declare-fun m!2934901 () Bool)

(assert (=> b!2599029 m!2934901))

(declare-fun m!2934903 () Bool)

(assert (=> b!2599027 m!2934903))

(declare-fun m!2934905 () Bool)

(assert (=> b!2599026 m!2934905))

(declare-fun m!2934907 () Bool)

(assert (=> b!2599024 m!2934907))

(check-sat tp_is_empty!13589 (not b!2599029) (not b!2599026) (not b!2599027) (not start!252416) (not b!2599024) (not b!2599025))
(check-sat)
