; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!727952 () Bool)

(assert start!727952)

(declare-fun b_free!134441 () Bool)

(declare-fun b_next!135231 () Bool)

(assert (=> start!727952 (= b_free!134441 (not b_next!135231))))

(declare-fun tp!2184294 () Bool)

(declare-fun b_and!352289 () Bool)

(assert (=> start!727952 (= tp!2184294 b_and!352289)))

(declare-fun b!7520342 () Bool)

(assert (=> b!7520342 true))

(declare-fun order!29759 () Int)

(declare-fun p!2194 () Int)

(declare-fun lambda!466391 () Int)

(declare-fun dynLambda!29883 (Int Int) Int)

(assert (=> b!7520342 (< (dynLambda!29883 order!29759 p!2194) (dynLambda!29883 order!29759 lambda!466391))))

(declare-fun b!7520339 () Bool)

(declare-fun res!3014479 () Bool)

(declare-fun e!4483033 () Bool)

(assert (=> b!7520339 (=> (not res!3014479) (not e!4483033))))

(declare-fun e!4483035 () Bool)

(assert (=> b!7520339 (= res!3014479 e!4483035)))

(declare-fun res!3014480 () Bool)

(assert (=> b!7520339 (=> res!3014480 e!4483035)))

(declare-datatypes ((B!3977 0))(
  ( (B!3978 (val!30364 Int)) )
))
(declare-datatypes ((List!72672 0))(
  ( (Nil!72548) (Cons!72548 (h!78996 B!3977) (t!387373 List!72672)) )
))
(declare-fun l!3837 () List!72672)

(get-info :version)

(assert (=> b!7520339 (= res!3014480 (not ((_ is Cons!72548) l!3837)))))

(declare-fun b!7520340 () Bool)

(declare-fun res!3014476 () Bool)

(assert (=> b!7520340 (=> (not res!3014476) (not e!4483033))))

(assert (=> b!7520340 (= res!3014476 (not ((_ is Nil!72548) l!3837)))))

(declare-fun b!7520341 () Bool)

(declare-fun dynLambda!29884 (Int B!3977) Bool)

(assert (=> b!7520341 (= e!4483035 (dynLambda!29884 p!2194 (h!78996 l!3837)))))

(declare-fun exists!4951 (List!72672 Int) Bool)

(assert (=> b!7520342 (= e!4483033 (not (exists!4951 l!3837 lambda!466391)))))

(declare-fun res!3014478 () Bool)

(assert (=> start!727952 (=> (not res!3014478) (not e!4483033))))

(declare-fun forall!18402 (List!72672 Int) Bool)

(assert (=> start!727952 (= res!3014478 (not (forall!18402 l!3837 p!2194)))))

(assert (=> start!727952 e!4483033))

(declare-fun e!4483034 () Bool)

(assert (=> start!727952 e!4483034))

(assert (=> start!727952 tp!2184294))

(declare-fun b!7520343 () Bool)

(declare-fun e!4483032 () Bool)

(assert (=> b!7520343 (= e!4483032 (not (dynLambda!29884 p!2194 (h!78996 l!3837))))))

(declare-fun b!7520344 () Bool)

(declare-fun tp_is_empty!49887 () Bool)

(declare-fun tp!2184293 () Bool)

(assert (=> b!7520344 (= e!4483034 (and tp_is_empty!49887 tp!2184293))))

(declare-fun b!7520345 () Bool)

(declare-fun res!3014481 () Bool)

(assert (=> b!7520345 (=> (not res!3014481) (not e!4483033))))

(assert (=> b!7520345 (= res!3014481 e!4483032)))

(declare-fun res!3014477 () Bool)

(assert (=> b!7520345 (=> res!3014477 e!4483032)))

(assert (=> b!7520345 (= res!3014477 (not ((_ is Cons!72548) l!3837)))))

(assert (= (and start!727952 res!3014478) b!7520339))

(assert (= (and b!7520339 (not res!3014480)) b!7520341))

(assert (= (and b!7520339 res!3014479) b!7520345))

(assert (= (and b!7520345 (not res!3014477)) b!7520343))

(assert (= (and b!7520345 res!3014481) b!7520340))

(assert (= (and b!7520340 res!3014476) b!7520342))

(assert (= (and start!727952 ((_ is Cons!72548) l!3837)) b!7520344))

(declare-fun b_lambda!288811 () Bool)

(assert (=> (not b_lambda!288811) (not b!7520341)))

(declare-fun t!387372 () Bool)

(declare-fun tb!262581 () Bool)

(assert (=> (and start!727952 (= p!2194 p!2194) t!387372) tb!262581))

(declare-fun result!356442 () Bool)

(assert (=> tb!262581 (= result!356442 true)))

(assert (=> b!7520341 t!387372))

(declare-fun b_and!352291 () Bool)

(assert (= b_and!352289 (and (=> t!387372 result!356442) b_and!352291)))

(declare-fun b_lambda!288813 () Bool)

(assert (=> (not b_lambda!288813) (not b!7520343)))

(assert (=> b!7520343 t!387372))

(declare-fun b_and!352293 () Bool)

(assert (= b_and!352291 (and (=> t!387372 result!356442) b_and!352293)))

(declare-fun m!8100000 () Bool)

(assert (=> b!7520341 m!8100000))

(declare-fun m!8100002 () Bool)

(assert (=> b!7520342 m!8100002))

(declare-fun m!8100004 () Bool)

(assert (=> start!727952 m!8100004))

(assert (=> b!7520343 m!8100000))

(check-sat (not b_lambda!288811) (not b!7520342) tp_is_empty!49887 (not start!727952) (not b_lambda!288813) b_and!352293 (not b!7520344) (not b_next!135231))
(check-sat b_and!352293 (not b_next!135231))
