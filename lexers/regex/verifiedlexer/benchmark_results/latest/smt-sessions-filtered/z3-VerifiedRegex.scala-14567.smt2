; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755424 () Bool)

(assert start!755424)

(declare-datatypes ((B!4285 0))(
  ( (B!4286 (val!32532 Int)) )
))
(declare-datatypes ((List!75044 0))(
  ( (Nil!74920) (Cons!74920 (h!81368 B!4285) (t!390787 List!75044)) )
))
(declare-fun l1!1007 () List!75044)

(declare-fun l2!976 () List!75044)

(get-info :version)

(assert (=> start!755424 (and (= l1!1007 l2!976) ((_ is Cons!74920) l1!1007) (= l2!976 Nil!74920))))

(declare-fun e!4727186 () Bool)

(assert (=> start!755424 e!4727186))

(declare-fun e!4727187 () Bool)

(assert (=> start!755424 e!4727187))

(declare-fun b!8024484 () Bool)

(declare-fun tp_is_empty!54173 () Bool)

(declare-fun tp!2401478 () Bool)

(assert (=> b!8024484 (= e!4727186 (and tp_is_empty!54173 tp!2401478))))

(declare-fun b!8024485 () Bool)

(declare-fun tp!2401479 () Bool)

(assert (=> b!8024485 (= e!4727187 (and tp_is_empty!54173 tp!2401479))))

(assert (= (and start!755424 ((_ is Cons!74920) l1!1007)) b!8024484))

(assert (= (and start!755424 ((_ is Cons!74920) l2!976)) b!8024485))

(check-sat (not b!8024485) (not b!8024484) tp_is_empty!54173)
(check-sat)
