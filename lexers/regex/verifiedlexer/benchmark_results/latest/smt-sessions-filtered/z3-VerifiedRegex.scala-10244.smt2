; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534042 () Bool)

(assert start!534042)

(declare-fun b!5049234 () Bool)

(declare-fun e!3152539 () Bool)

(declare-fun tp_is_empty!36883 () Bool)

(declare-fun tp!1412025 () Bool)

(assert (=> b!5049234 (= e!3152539 (and tp_is_empty!36883 tp!1412025))))

(declare-fun b!5049235 () Bool)

(declare-datatypes ((T!104530 0))(
  ( (T!104531 (val!23564 Int)) )
))
(declare-datatypes ((List!58474 0))(
  ( (Nil!58350) (Cons!58350 (h!64798 T!104530) (t!371113 List!58474)) )
))
(declare-fun l!2763 () List!58474)

(declare-fun lt!2086264 () Int)

(declare-fun e!3152538 () Bool)

(declare-fun lt!2086263 () List!58474)

(assert (=> b!5049235 (= e!3152538 (not (or (not (= l!2763 lt!2086263)) (<= 0 lt!2086264))))))

(assert (=> b!5049235 (= lt!2086263 l!2763)))

(declare-datatypes ((Unit!149547 0))(
  ( (Unit!149548) )
))
(declare-fun lt!2086262 () Unit!149547)

(declare-fun takeFullLemma!16 (List!58474) Unit!149547)

(assert (=> b!5049235 (= lt!2086262 (takeFullLemma!16 l!2763))))

(declare-fun b!5049236 () Bool)

(declare-fun e!3152542 () Bool)

(declare-fun e!3152541 () Bool)

(assert (=> b!5049236 (= e!3152542 e!3152541)))

(declare-fun res!2150470 () Bool)

(assert (=> b!5049236 (=> (not res!2150470) (not e!3152541))))

(declare-fun i!658 () Int)

(get-info :version)

(assert (=> b!5049236 (= res!2150470 (and (<= i!658 lt!2086264) (not ((_ is Nil!58350) l!2763)) (= i!658 0)))))

(declare-fun size!38975 (List!58474) Int)

(assert (=> b!5049236 (= lt!2086264 (size!38975 l!2763))))

(declare-fun b!5049237 () Bool)

(declare-fun res!2150467 () Bool)

(assert (=> b!5049237 (=> (not res!2150467) (not e!3152541))))

(declare-fun drop!2674 (List!58474 Int) List!58474)

(assert (=> b!5049237 (= res!2150467 (= (drop!2674 l!2763 i!658) l!2763))))

(declare-fun b!5049238 () Bool)

(declare-fun e!3152540 () Bool)

(assert (=> b!5049238 (= e!3152541 e!3152540)))

(declare-fun res!2150471 () Bool)

(assert (=> b!5049238 (=> (not res!2150471) (not e!3152540))))

(declare-fun lt!2086265 () List!58474)

(declare-fun lt!2086261 () List!58474)

(declare-fun take!861 (List!58474 Int) List!58474)

(assert (=> b!5049238 (= res!2150471 (= lt!2086265 (take!861 lt!2086261 lt!2086264)))))

(declare-fun slice!891 (List!58474 Int Int) List!58474)

(assert (=> b!5049238 (= lt!2086265 (slice!891 l!2763 0 lt!2086264))))

(assert (=> b!5049238 (= lt!2086261 (drop!2674 l!2763 0))))

(declare-fun res!2150469 () Bool)

(assert (=> start!534042 (=> (not res!2150469) (not e!3152542))))

(assert (=> start!534042 (= res!2150469 (<= 0 i!658))))

(assert (=> start!534042 e!3152542))

(assert (=> start!534042 true))

(assert (=> start!534042 e!3152539))

(declare-fun b!5049239 () Bool)

(assert (=> b!5049239 (= e!3152540 e!3152538)))

(declare-fun res!2150468 () Bool)

(assert (=> b!5049239 (=> (not res!2150468) (not e!3152538))))

(assert (=> b!5049239 (= res!2150468 (= lt!2086265 lt!2086263))))

(assert (=> b!5049239 (= lt!2086263 (take!861 l!2763 lt!2086264))))

(assert (= (and start!534042 res!2150469) b!5049236))

(assert (= (and b!5049236 res!2150470) b!5049237))

(assert (= (and b!5049237 res!2150467) b!5049238))

(assert (= (and b!5049238 res!2150471) b!5049239))

(assert (= (and b!5049239 res!2150468) b!5049235))

(assert (= (and start!534042 ((_ is Cons!58350) l!2763)) b!5049234))

(declare-fun m!6084124 () Bool)

(assert (=> b!5049235 m!6084124))

(declare-fun m!6084126 () Bool)

(assert (=> b!5049237 m!6084126))

(declare-fun m!6084128 () Bool)

(assert (=> b!5049238 m!6084128))

(declare-fun m!6084130 () Bool)

(assert (=> b!5049238 m!6084130))

(declare-fun m!6084132 () Bool)

(assert (=> b!5049238 m!6084132))

(declare-fun m!6084134 () Bool)

(assert (=> b!5049239 m!6084134))

(declare-fun m!6084136 () Bool)

(assert (=> b!5049236 m!6084136))

(check-sat (not b!5049238) (not b!5049236) tp_is_empty!36883 (not b!5049235) (not b!5049237) (not b!5049234) (not b!5049239))
(check-sat)
