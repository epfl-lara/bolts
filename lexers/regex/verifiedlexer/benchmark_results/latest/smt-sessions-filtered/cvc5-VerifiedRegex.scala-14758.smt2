; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759104 () Bool)

(assert start!759104)

(declare-fun b!8057295 () Bool)

(assert (=> b!8057295 true))

(declare-fun b!8057294 () Bool)

(declare-fun res!3187244 () Bool)

(declare-fun e!4748196 () Bool)

(assert (=> b!8057294 (=> (not res!3187244) (not e!4748196))))

(declare-datatypes ((K!22921 0))(
  ( (K!22922 (val!33009 Int)) )
))
(declare-datatypes ((V!23175 0))(
  ( (V!23176 (val!33010 Int)) )
))
(declare-datatypes ((tuple2!70974 0))(
  ( (tuple2!70975 (_1!38790 K!22921) (_2!38790 V!23175)) )
))
(declare-datatypes ((List!75735 0))(
  ( (Nil!75609) (Cons!75609 (h!82057 tuple2!70974) (t!391507 List!75735)) )
))
(declare-fun l!10976 () List!75735)

(assert (=> b!8057294 (= res!3187244 (is-Nil!75609 l!10976))))

(declare-fun res!3187245 () Bool)

(assert (=> start!759104 (=> (not res!3187245) (not e!4748196))))

(declare-fun noDuplicateKeys!2733 (List!75735) Bool)

(assert (=> start!759104 (= res!3187245 (noDuplicateKeys!2733 l!10976))))

(assert (=> start!759104 e!4748196))

(declare-fun e!4748197 () Bool)

(assert (=> start!759104 e!4748197))

(declare-datatypes ((ListMap!7345 0))(
  ( (ListMap!7346 (toList!11947 List!75735)) )
))
(declare-fun acc!836 () ListMap!7345)

(declare-fun e!4748195 () Bool)

(declare-fun inv!97395 (ListMap!7345) Bool)

(assert (=> start!759104 (and (inv!97395 acc!836) e!4748195)))

(declare-fun b!8057297 () Bool)

(declare-fun tp!2414079 () Bool)

(assert (=> b!8057297 (= e!4748195 tp!2414079)))

(declare-fun b!8057296 () Bool)

(declare-fun tp!2414078 () Bool)

(declare-fun tp_is_empty!55073 () Bool)

(declare-fun tp_is_empty!55071 () Bool)

(assert (=> b!8057296 (= e!4748197 (and tp_is_empty!55071 tp_is_empty!55073 tp!2414078))))

(declare-fun lambda!474547 () Int)

(declare-fun forall!18529 (List!75735 Int) Bool)

(assert (=> b!8057295 (= e!4748196 (not (forall!18529 (toList!11947 acc!836) lambda!474547)))))

(assert (=> b!8057295 (forall!18529 (toList!11947 acc!836) lambda!474547)))

(declare-datatypes ((Unit!172577 0))(
  ( (Unit!172578) )
))
(declare-fun lt!2730966 () Unit!172577)

(declare-fun lemmaContainsAllItsOwnKeys!1110 (ListMap!7345) Unit!172577)

(assert (=> b!8057295 (= lt!2730966 (lemmaContainsAllItsOwnKeys!1110 acc!836))))

(assert (= (and start!759104 res!3187245) b!8057294))

(assert (= (and b!8057294 res!3187244) b!8057295))

(assert (= (and start!759104 (is-Cons!75609 l!10976)) b!8057296))

(assert (= start!759104 b!8057297))

(declare-fun m!8410432 () Bool)

(assert (=> start!759104 m!8410432))

(declare-fun m!8410434 () Bool)

(assert (=> start!759104 m!8410434))

(declare-fun m!8410436 () Bool)

(assert (=> b!8057295 m!8410436))

(assert (=> b!8057295 m!8410436))

(declare-fun m!8410438 () Bool)

(assert (=> b!8057295 m!8410438))

(push 1)

(assert (not start!759104))

(assert tp_is_empty!55073)

(assert (not b!8057297))

(assert (not b!8057296))

(assert (not b!8057295))

(assert tp_is_empty!55071)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

