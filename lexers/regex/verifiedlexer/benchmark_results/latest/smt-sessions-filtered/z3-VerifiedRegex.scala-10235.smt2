; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533962 () Bool)

(assert start!533962)

(declare-fun res!2150225 () Bool)

(declare-fun e!3152134 () Bool)

(assert (=> start!533962 (=> (not res!2150225) (not e!3152134))))

(declare-fun i!658 () Int)

(assert (=> start!533962 (= res!2150225 (<= 0 i!658))))

(assert (=> start!533962 e!3152134))

(assert (=> start!533962 true))

(declare-fun e!3152133 () Bool)

(assert (=> start!533962 e!3152133))

(declare-fun b!5048595 () Bool)

(declare-fun e!3152136 () Bool)

(declare-fun e!3152135 () Bool)

(assert (=> b!5048595 (= e!3152136 (not e!3152135))))

(declare-fun res!2150226 () Bool)

(assert (=> b!5048595 (=> res!2150226 e!3152135)))

(declare-datatypes ((T!104404 0))(
  ( (T!104405 (val!23546 Int)) )
))
(declare-datatypes ((List!58456 0))(
  ( (Nil!58332) (Cons!58332 (h!64780 T!104404) (t!371095 List!58456)) )
))
(declare-fun l!2763 () List!58456)

(declare-fun lt!2086060 () List!58456)

(assert (=> b!5048595 (= res!2150226 (not (= l!2763 lt!2086060)))))

(assert (=> b!5048595 (= lt!2086060 l!2763)))

(declare-datatypes ((Unit!149531 0))(
  ( (Unit!149532) )
))
(declare-fun lt!2086063 () Unit!149531)

(declare-fun takeFullLemma!10 (List!58456) Unit!149531)

(assert (=> b!5048595 (= lt!2086063 (takeFullLemma!10 l!2763))))

(declare-fun b!5048596 () Bool)

(declare-fun tp_is_empty!36847 () Bool)

(declare-fun tp!1411951 () Bool)

(assert (=> b!5048596 (= e!3152133 (and tp_is_empty!36847 tp!1411951))))

(declare-fun b!5048597 () Bool)

(declare-fun res!2150227 () Bool)

(declare-fun e!3152131 () Bool)

(assert (=> b!5048597 (=> (not res!2150227) (not e!3152131))))

(declare-fun drop!2658 (List!58456 Int) List!58456)

(assert (=> b!5048597 (= res!2150227 (= (drop!2658 l!2763 i!658) l!2763))))

(declare-fun b!5048598 () Bool)

(assert (=> b!5048598 (= e!3152134 e!3152131)))

(declare-fun res!2150222 () Bool)

(assert (=> b!5048598 (=> (not res!2150222) (not e!3152131))))

(declare-fun lt!2086065 () Int)

(get-info :version)

(assert (=> b!5048598 (= res!2150222 (and (<= i!658 lt!2086065) (not ((_ is Nil!58332) l!2763)) (= i!658 0)))))

(declare-fun size!38957 (List!58456) Int)

(assert (=> b!5048598 (= lt!2086065 (size!38957 l!2763))))

(declare-fun b!5048599 () Bool)

(declare-fun e!3152132 () Bool)

(assert (=> b!5048599 (= e!3152132 e!3152136)))

(declare-fun res!2150223 () Bool)

(assert (=> b!5048599 (=> (not res!2150223) (not e!3152136))))

(declare-fun lt!2086062 () List!58456)

(assert (=> b!5048599 (= res!2150223 (= lt!2086062 lt!2086060))))

(declare-fun take!849 (List!58456 Int) List!58456)

(assert (=> b!5048599 (= lt!2086060 (take!849 l!2763 lt!2086065))))

(declare-fun b!5048600 () Bool)

(assert (=> b!5048600 (= e!3152135 true)))

(assert (=> b!5048600 (= lt!2086060 lt!2086062)))

(declare-fun lt!2086064 () Unit!149531)

(declare-fun takeSliceLemma!4 (List!58456 Int) Unit!149531)

(assert (=> b!5048600 (= lt!2086064 (takeSliceLemma!4 l!2763 lt!2086065))))

(declare-fun b!5048601 () Bool)

(assert (=> b!5048601 (= e!3152131 e!3152132)))

(declare-fun res!2150224 () Bool)

(assert (=> b!5048601 (=> (not res!2150224) (not e!3152132))))

(declare-fun lt!2086061 () List!58456)

(assert (=> b!5048601 (= res!2150224 (= lt!2086062 (take!849 lt!2086061 lt!2086065)))))

(declare-fun slice!877 (List!58456 Int Int) List!58456)

(assert (=> b!5048601 (= lt!2086062 (slice!877 l!2763 0 lt!2086065))))

(assert (=> b!5048601 (= lt!2086061 (drop!2658 l!2763 0))))

(assert (= (and start!533962 res!2150225) b!5048598))

(assert (= (and b!5048598 res!2150222) b!5048597))

(assert (= (and b!5048597 res!2150227) b!5048601))

(assert (= (and b!5048601 res!2150224) b!5048599))

(assert (= (and b!5048599 res!2150223) b!5048595))

(assert (= (and b!5048595 (not res!2150226)) b!5048600))

(assert (= (and start!533962 ((_ is Cons!58332) l!2763)) b!5048596))

(declare-fun m!6083786 () Bool)

(assert (=> b!5048600 m!6083786))

(declare-fun m!6083788 () Bool)

(assert (=> b!5048599 m!6083788))

(declare-fun m!6083790 () Bool)

(assert (=> b!5048597 m!6083790))

(declare-fun m!6083792 () Bool)

(assert (=> b!5048598 m!6083792))

(declare-fun m!6083794 () Bool)

(assert (=> b!5048595 m!6083794))

(declare-fun m!6083796 () Bool)

(assert (=> b!5048601 m!6083796))

(declare-fun m!6083798 () Bool)

(assert (=> b!5048601 m!6083798))

(declare-fun m!6083800 () Bool)

(assert (=> b!5048601 m!6083800))

(check-sat tp_is_empty!36847 (not b!5048596) (not b!5048599) (not b!5048601) (not b!5048600) (not b!5048595) (not b!5048598) (not b!5048597))
(check-sat)
