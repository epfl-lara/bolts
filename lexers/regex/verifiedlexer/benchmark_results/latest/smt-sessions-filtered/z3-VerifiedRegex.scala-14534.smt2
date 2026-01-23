; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754940 () Bool)

(assert start!754940)

(declare-datatypes ((B!4153 0))(
  ( (B!4154 (val!32466 Int)) )
))
(declare-datatypes ((List!74978 0))(
  ( (Nil!74854) (Cons!74854 (h!81302 B!4153) (t!390721 List!74978)) )
))
(declare-fun tl2!39 () List!74978)

(declare-fun lt!2719787 () List!74978)

(declare-fun hd2!39 () B!4153)

(declare-fun s1!496 () List!74978)

(declare-fun ++!18544 (List!74978 List!74978) List!74978)

(assert (=> start!754940 (= lt!2719787 (++!18544 s1!496 (Cons!74854 hd2!39 tl2!39)))))

(assert (=> start!754940 false))

(declare-fun e!4724588 () Bool)

(assert (=> start!754940 e!4724588))

(declare-fun tp_is_empty!54041 () Bool)

(assert (=> start!754940 tp_is_empty!54041))

(declare-fun e!4724589 () Bool)

(assert (=> start!754940 e!4724589))

(declare-fun b!8020359 () Bool)

(declare-fun tp!2400466 () Bool)

(assert (=> b!8020359 (= e!4724588 (and tp_is_empty!54041 tp!2400466))))

(declare-fun b!8020360 () Bool)

(declare-fun tp!2400465 () Bool)

(assert (=> b!8020360 (= e!4724589 (and tp_is_empty!54041 tp!2400465))))

(get-info :version)

(assert (= (and start!754940 ((_ is Cons!74854) s1!496)) b!8020359))

(assert (= (and start!754940 ((_ is Cons!74854) tl2!39)) b!8020360))

(declare-fun m!8383380 () Bool)

(assert (=> start!754940 m!8383380))

(check-sat (not start!754940) (not b!8020360) (not b!8020359) tp_is_empty!54041)
(check-sat)
