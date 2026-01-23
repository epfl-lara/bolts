; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!1784 () Bool)

(assert start!1784)

(declare-fun b_free!357 () Bool)

(declare-fun b_next!357 () Bool)

(assert (=> start!1784 (= b_free!357 (not b_next!357))))

(declare-fun tp!23609 () Bool)

(declare-fun b_and!391 () Bool)

(assert (=> start!1784 (= tp!23609 b_and!391)))

(declare-fun setIsEmpty!510 () Bool)

(declare-fun setRes!510 () Bool)

(assert (=> setIsEmpty!510 setRes!510))

(declare-fun res!27617 () Bool)

(declare-fun e!15830 () Bool)

(assert (=> start!1784 (=> (not res!27617) (not e!15830))))

(declare-datatypes ((A!185 0))(
  ( (A!186 (val!200 Int)) )
))
(declare-fun lt!2572 () (Set A!185))

(declare-fun p!1713 () Int)

(declare-fun exists!38 ((Set A!185) Int) Bool)

(assert (=> start!1784 (= res!27617 (not (exists!38 lt!2572 p!1713)))))

(declare-fun s1!478 () (Set A!185))

(declare-fun s2!449 () (Set A!185))

(assert (=> start!1784 (= lt!2572 (set.union s1!478 s2!449))))

(assert (=> start!1784 e!15830))

(declare-fun condSetEmpty!511 () Bool)

(assert (=> start!1784 (= condSetEmpty!511 (= s1!478 (as set.empty (Set A!185))))))

(declare-fun setRes!511 () Bool)

(assert (=> start!1784 setRes!511))

(declare-fun condSetEmpty!510 () Bool)

(assert (=> start!1784 (= condSetEmpty!510 (= s2!449 (as set.empty (Set A!185))))))

(assert (=> start!1784 setRes!510))

(assert (=> start!1784 tp!23609))

(declare-fun b!34312 () Bool)

(declare-fun e!15828 () Bool)

(assert (=> b!34312 (= e!15830 e!15828)))

(declare-fun res!27616 () Bool)

(assert (=> b!34312 (=> (not res!27616) (not e!15828))))

(assert (=> b!34312 (= res!27616 (not (exists!38 s2!449 p!1713)))))

(declare-datatypes ((Unit!173 0))(
  ( (Unit!174) )
))
(declare-fun lt!2574 () Unit!173)

(declare-fun e!15829 () Unit!173)

(assert (=> b!34312 (= lt!2574 e!15829)))

(declare-fun c!15415 () Bool)

(declare-fun lt!2573 () Bool)

(assert (=> b!34312 (= c!15415 lt!2573)))

(assert (=> b!34312 (= lt!2573 (exists!38 s1!478 p!1713))))

(declare-fun b!34313 () Bool)

(declare-fun lt!2571 () Unit!173)

(assert (=> b!34313 (= e!15829 lt!2571)))

(declare-fun lemmaContainsThenExists!14 ((Set A!185) A!185 Int) Unit!173)

(declare-fun getWitness!29 ((Set A!185) Int) A!185)

(assert (=> b!34313 (= lt!2571 (lemmaContainsThenExists!14 lt!2572 (getWitness!29 s1!478 p!1713) p!1713))))

(assert (=> b!34313 false))

(declare-fun b!34314 () Bool)

(declare-fun Unit!175 () Unit!173)

(assert (=> b!34314 (= e!15829 Unit!175)))

(declare-fun b!34315 () Bool)

(assert (=> b!34315 (= e!15828 lt!2573)))

(declare-fun setNonEmpty!510 () Bool)

(declare-fun tp!23608 () Bool)

(declare-fun tp_is_empty!353 () Bool)

(assert (=> setNonEmpty!510 (= setRes!511 (and tp!23608 tp_is_empty!353))))

(declare-fun setElem!510 () A!185)

(declare-fun setRest!511 () (Set A!185))

(assert (=> setNonEmpty!510 (= s1!478 (set.union (set.insert setElem!510 (as set.empty (Set A!185))) setRest!511))))

(declare-fun setIsEmpty!511 () Bool)

(assert (=> setIsEmpty!511 setRes!511))

(declare-fun setNonEmpty!511 () Bool)

(declare-fun tp!23607 () Bool)

(assert (=> setNonEmpty!511 (= setRes!510 (and tp!23607 tp_is_empty!353))))

(declare-fun setElem!511 () A!185)

(declare-fun setRest!510 () (Set A!185))

(assert (=> setNonEmpty!511 (= s2!449 (set.union (set.insert setElem!511 (as set.empty (Set A!185))) setRest!510))))

(assert (= (and start!1784 res!27617) b!34312))

(assert (= (and b!34312 c!15415) b!34313))

(assert (= (and b!34312 (not c!15415)) b!34314))

(assert (= (and b!34312 res!27616) b!34315))

(assert (= (and start!1784 condSetEmpty!511) setIsEmpty!511))

(assert (= (and start!1784 (not condSetEmpty!511)) setNonEmpty!510))

(assert (= (and start!1784 condSetEmpty!510) setIsEmpty!510))

(assert (= (and start!1784 (not condSetEmpty!510)) setNonEmpty!511))

(declare-fun m!10421 () Bool)

(assert (=> start!1784 m!10421))

(declare-fun m!10423 () Bool)

(assert (=> b!34312 m!10423))

(declare-fun m!10425 () Bool)

(assert (=> b!34312 m!10425))

(declare-fun m!10427 () Bool)

(assert (=> b!34313 m!10427))

(assert (=> b!34313 m!10427))

(declare-fun m!10429 () Bool)

(assert (=> b!34313 m!10429))

(push 1)

(assert tp_is_empty!353)

(assert (not b_next!357))

(assert (not start!1784))

(assert (not setNonEmpty!511))

(assert b_and!391)

(assert (not setNonEmpty!510))

(assert (not b!34313))

(assert (not b!34312))

(check-sat)

(pop 1)

(push 1)

(assert b_and!391)

(assert (not b_next!357))

(check-sat)

(pop 1)

