; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107792 () Bool)

(assert start!107792)

(declare-fun setNonEmpty!7870 () Bool)

(declare-fun setRes!7870 () Bool)

(declare-fun tp!342785 () Bool)

(declare-fun tp_is_empty!6171 () Bool)

(assert (=> setNonEmpty!7870 (= setRes!7870 (and tp!342785 tp_is_empty!6171))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!1313 0))(
  ( (B!1314 (val!4014 Int)) )
))
(declare-fun s!1510 () (InoxSet B!1313))

(declare-fun setElem!7870 () B!1313)

(declare-fun setRest!7870 () (InoxSet B!1313))

(assert (=> setNonEmpty!7870 (= s!1510 ((_ map or) (store ((as const (Array B!1313 Bool)) false) setElem!7870 true) setRest!7870))))

(declare-fun b!1210110 () Bool)

(declare-fun e!776281 () Bool)

(declare-datatypes ((List!12261 0))(
  ( (Nil!12203) (Cons!12203 (h!17604 B!1313) (t!112645 List!12261)) )
))
(declare-fun lt!414117 () List!12261)

(assert (=> b!1210110 (= e!776281 (not (= lt!414117 (Cons!12203 (h!17604 lt!414117) (t!112645 lt!414117)))))))

(declare-fun -!78 (List!12261 B!1313) List!12261)

(declare-fun tail!1768 (List!12261) List!12261)

(assert (=> b!1210110 (= (-!78 lt!414117 (h!17604 lt!414117)) (tail!1768 lt!414117))))

(declare-datatypes ((Unit!18580 0))(
  ( (Unit!18581) )
))
(declare-fun lt!414115 () Unit!18580)

(declare-fun lemmaNoDuplicateMinusHeadSameAsTail!6 (List!12261 B!1313) Unit!18580)

(assert (=> b!1210110 (= lt!414115 (lemmaNoDuplicateMinusHeadSameAsTail!6 lt!414117 (h!17604 lt!414117)))))

(declare-fun b!1210111 () Bool)

(declare-fun e!776283 () Bool)

(declare-fun isEmpty!7287 (List!12261) Bool)

(assert (=> b!1210111 (= e!776283 (not (isEmpty!7287 (t!112645 lt!414117))))))

(declare-fun res!544128 () Bool)

(declare-fun e!776282 () Bool)

(assert (=> start!107792 (=> (not res!544128) (not e!776282))))

(assert (=> start!107792 (= res!544128 (not (= s!1510 ((as const (Array B!1313 Bool)) false))))))

(assert (=> start!107792 e!776282))

(declare-fun condSetEmpty!7870 () Bool)

(assert (=> start!107792 (= condSetEmpty!7870 (= s!1510 ((as const (Array B!1313 Bool)) false)))))

(assert (=> start!107792 setRes!7870))

(declare-fun setIsEmpty!7870 () Bool)

(assert (=> setIsEmpty!7870 setRes!7870))

(declare-fun b!1210112 () Bool)

(declare-fun res!544130 () Bool)

(assert (=> b!1210112 (=> (not res!544130) (not e!776281))))

(declare-fun lt!414116 () Bool)

(assert (=> b!1210112 (= res!544130 (not lt!414116))))

(declare-fun b!1210113 () Bool)

(assert (=> b!1210113 (= e!776282 e!776281)))

(declare-fun res!544131 () Bool)

(assert (=> b!1210113 (=> (not res!544131) (not e!776281))))

(assert (=> b!1210113 (= res!544131 e!776283)))

(declare-fun res!544129 () Bool)

(assert (=> b!1210113 (=> res!544129 e!776283)))

(assert (=> b!1210113 (= res!544129 lt!414116)))

(get-info :version)

(assert (=> b!1210113 (= lt!414116 (not ((_ is Cons!12203) lt!414117)))))

(declare-fun toList!675 ((InoxSet B!1313)) List!12261)

(assert (=> b!1210113 (= lt!414117 (toList!675 s!1510))))

(assert (= (and start!107792 res!544128) b!1210113))

(assert (= (and b!1210113 (not res!544129)) b!1210111))

(assert (= (and b!1210113 res!544131) b!1210112))

(assert (= (and b!1210112 res!544130) b!1210110))

(assert (= (and start!107792 condSetEmpty!7870) setIsEmpty!7870))

(assert (= (and start!107792 (not condSetEmpty!7870)) setNonEmpty!7870))

(declare-fun m!1386089 () Bool)

(assert (=> b!1210110 m!1386089))

(declare-fun m!1386091 () Bool)

(assert (=> b!1210110 m!1386091))

(declare-fun m!1386093 () Bool)

(assert (=> b!1210110 m!1386093))

(declare-fun m!1386095 () Bool)

(assert (=> b!1210111 m!1386095))

(declare-fun m!1386097 () Bool)

(assert (=> b!1210113 m!1386097))

(check-sat (not b!1210111) (not b!1210110) (not b!1210113) (not setNonEmpty!7870) tp_is_empty!6171)
(check-sat)
