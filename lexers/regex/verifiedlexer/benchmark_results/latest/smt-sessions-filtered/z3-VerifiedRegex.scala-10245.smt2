; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534046 () Bool)

(assert start!534046)

(declare-fun b!5049280 () Bool)

(declare-fun e!3152585 () Bool)

(declare-fun e!3152590 () Bool)

(assert (=> b!5049280 (= e!3152585 e!3152590)))

(declare-fun res!2150513 () Bool)

(assert (=> b!5049280 (=> (not res!2150513) (not e!3152590))))

(declare-datatypes ((T!104544 0))(
  ( (T!104545 (val!23566 Int)) )
))
(declare-datatypes ((List!58476 0))(
  ( (Nil!58352) (Cons!58352 (h!64800 T!104544) (t!371115 List!58476)) )
))
(declare-fun lt!2086303 () List!58476)

(declare-fun l!2763 () List!58476)

(assert (=> b!5049280 (= res!2150513 (= lt!2086303 l!2763))))

(declare-fun i!658 () Int)

(declare-fun drop!2676 (List!58476 Int) List!58476)

(assert (=> b!5049280 (= lt!2086303 (drop!2676 l!2763 i!658))))

(declare-fun b!5049281 () Bool)

(declare-fun e!3152583 () Bool)

(declare-fun e!3152586 () Bool)

(assert (=> b!5049281 (= e!3152583 e!3152586)))

(declare-fun res!2150508 () Bool)

(assert (=> b!5049281 (=> (not res!2150508) (not e!3152586))))

(declare-fun lt!2086306 () List!58476)

(declare-fun lt!2086301 () List!58476)

(assert (=> b!5049281 (= res!2150508 (= lt!2086306 lt!2086301))))

(declare-fun lt!2086302 () Int)

(declare-fun take!863 (List!58476 Int) List!58476)

(assert (=> b!5049281 (= lt!2086301 (take!863 l!2763 lt!2086302))))

(declare-fun b!5049283 () Bool)

(assert (=> b!5049283 (= e!3152590 e!3152583)))

(declare-fun res!2150507 () Bool)

(assert (=> b!5049283 (=> (not res!2150507) (not e!3152583))))

(declare-fun lt!2086305 () List!58476)

(assert (=> b!5049283 (= res!2150507 (= lt!2086306 (take!863 lt!2086305 lt!2086302)))))

(declare-fun slice!893 (List!58476 Int Int) List!58476)

(assert (=> b!5049283 (= lt!2086306 (slice!893 l!2763 0 lt!2086302))))

(assert (=> b!5049283 (= lt!2086305 (drop!2676 l!2763 0))))

(declare-fun b!5049284 () Bool)

(declare-fun e!3152589 () Bool)

(assert (=> b!5049284 (= e!3152586 (not e!3152589))))

(declare-fun res!2150510 () Bool)

(assert (=> b!5049284 (=> res!2150510 e!3152589)))

(assert (=> b!5049284 (= res!2150510 (not (= l!2763 lt!2086301)))))

(assert (=> b!5049284 (= lt!2086301 l!2763)))

(declare-datatypes ((Unit!149551 0))(
  ( (Unit!149552) )
))
(declare-fun lt!2086304 () Unit!149551)

(declare-fun takeFullLemma!18 (List!58476) Unit!149551)

(assert (=> b!5049284 (= lt!2086304 (takeFullLemma!18 l!2763))))

(declare-fun b!5049285 () Bool)

(declare-fun e!3152584 () Bool)

(declare-fun tp_is_empty!36887 () Bool)

(declare-fun tp!1412031 () Bool)

(assert (=> b!5049285 (= e!3152584 (and tp_is_empty!36887 tp!1412031))))

(declare-fun b!5049286 () Bool)

(declare-fun e!3152587 () Bool)

(assert (=> b!5049286 (= e!3152587 (= lt!2086303 (slice!893 l!2763 i!658 lt!2086302)))))

(declare-fun b!5049287 () Bool)

(declare-fun e!3152588 () Bool)

(assert (=> b!5049287 (= e!3152588 e!3152585)))

(declare-fun res!2150512 () Bool)

(assert (=> b!5049287 (=> (not res!2150512) (not e!3152585))))

(get-info :version)

(assert (=> b!5049287 (= res!2150512 (and (<= i!658 lt!2086302) (not ((_ is Nil!58352) l!2763)) (= i!658 0)))))

(declare-fun size!38977 (List!58476) Int)

(assert (=> b!5049287 (= lt!2086302 (size!38977 l!2763))))

(declare-fun b!5049282 () Bool)

(assert (=> b!5049282 (= e!3152589 e!3152587)))

(declare-fun res!2150511 () Bool)

(assert (=> b!5049282 (=> res!2150511 e!3152587)))

(assert (=> b!5049282 (= res!2150511 (not (= lt!2086306 l!2763)))))

(assert (=> b!5049282 (= lt!2086301 lt!2086306)))

(declare-fun lt!2086307 () Unit!149551)

(declare-fun takeSliceLemma!8 (List!58476 Int) Unit!149551)

(assert (=> b!5049282 (= lt!2086307 (takeSliceLemma!8 l!2763 lt!2086302))))

(declare-fun res!2150509 () Bool)

(assert (=> start!534046 (=> (not res!2150509) (not e!3152588))))

(assert (=> start!534046 (= res!2150509 (<= 0 i!658))))

(assert (=> start!534046 e!3152588))

(assert (=> start!534046 true))

(assert (=> start!534046 e!3152584))

(assert (= (and start!534046 res!2150509) b!5049287))

(assert (= (and b!5049287 res!2150512) b!5049280))

(assert (= (and b!5049280 res!2150513) b!5049283))

(assert (= (and b!5049283 res!2150507) b!5049281))

(assert (= (and b!5049281 res!2150508) b!5049284))

(assert (= (and b!5049284 (not res!2150510)) b!5049282))

(assert (= (and b!5049282 (not res!2150511)) b!5049286))

(assert (= (and start!534046 ((_ is Cons!58352) l!2763)) b!5049285))

(declare-fun m!6084156 () Bool)

(assert (=> b!5049284 m!6084156))

(declare-fun m!6084158 () Bool)

(assert (=> b!5049287 m!6084158))

(declare-fun m!6084160 () Bool)

(assert (=> b!5049283 m!6084160))

(declare-fun m!6084162 () Bool)

(assert (=> b!5049283 m!6084162))

(declare-fun m!6084164 () Bool)

(assert (=> b!5049283 m!6084164))

(declare-fun m!6084166 () Bool)

(assert (=> b!5049282 m!6084166))

(declare-fun m!6084168 () Bool)

(assert (=> b!5049280 m!6084168))

(declare-fun m!6084170 () Bool)

(assert (=> b!5049281 m!6084170))

(declare-fun m!6084172 () Bool)

(assert (=> b!5049286 m!6084172))

(check-sat (not b!5049287) (not b!5049286) (not b!5049283) (not b!5049284) tp_is_empty!36887 (not b!5049285) (not b!5049280) (not b!5049281) (not b!5049282))
(check-sat)
