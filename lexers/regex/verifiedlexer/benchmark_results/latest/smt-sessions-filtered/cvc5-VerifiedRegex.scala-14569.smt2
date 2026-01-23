; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755434 () Bool)

(assert start!755434)

(declare-fun res!3173389 () Bool)

(declare-fun e!4727227 () Bool)

(assert (=> start!755434 (=> (not res!3173389) (not e!4727227))))

(declare-datatypes ((B!4291 0))(
  ( (B!4292 (val!32535 Int)) )
))
(declare-datatypes ((List!75047 0))(
  ( (Nil!74923) (Cons!74923 (h!81371 B!4291) (t!390790 List!75047)) )
))
(declare-fun l1!1007 () List!75047)

(declare-fun l2!976 () List!75047)

(assert (=> start!755434 (= res!3173389 (and (= l1!1007 l2!976) (is-Cons!74923 l1!1007)))))

(assert (=> start!755434 e!4727227))

(declare-fun e!4727228 () Bool)

(assert (=> start!755434 e!4727228))

(declare-fun e!4727226 () Bool)

(assert (=> start!755434 e!4727226))

(declare-fun b!8024534 () Bool)

(declare-fun tail!15984 (List!75047) List!75047)

(assert (=> b!8024534 (= e!4727227 (not (= (t!390790 l1!1007) (tail!15984 l2!976))))))

(declare-fun b!8024535 () Bool)

(declare-fun tp_is_empty!54179 () Bool)

(declare-fun tp!2401504 () Bool)

(assert (=> b!8024535 (= e!4727228 (and tp_is_empty!54179 tp!2401504))))

(declare-fun b!8024536 () Bool)

(declare-fun tp!2401505 () Bool)

(assert (=> b!8024536 (= e!4727226 (and tp_is_empty!54179 tp!2401505))))

(assert (= (and start!755434 res!3173389) b!8024534))

(assert (= (and start!755434 (is-Cons!74923 l1!1007)) b!8024535))

(assert (= (and start!755434 (is-Cons!74923 l2!976)) b!8024536))

(declare-fun m!8386926 () Bool)

(assert (=> b!8024534 m!8386926))

(push 1)

(assert (not b!8024534))

(assert (not b!8024536))

(assert (not b!8024535))

(assert tp_is_empty!54179)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2392776 () Bool)

(assert (=> d!2392776 (= (tail!15984 l2!976) (t!390790 l2!976))))

(assert (=> b!8024534 d!2392776))

(declare-fun b!8024550 () Bool)

(declare-fun e!4727240 () Bool)

(declare-fun tp!2401514 () Bool)

(assert (=> b!8024550 (= e!4727240 (and tp_is_empty!54179 tp!2401514))))

(assert (=> b!8024536 (= tp!2401505 e!4727240)))

(assert (= (and b!8024536 (is-Cons!74923 (t!390790 l2!976))) b!8024550))

(declare-fun b!8024551 () Bool)

(declare-fun e!4727241 () Bool)

(declare-fun tp!2401515 () Bool)

(assert (=> b!8024551 (= e!4727241 (and tp_is_empty!54179 tp!2401515))))

(assert (=> b!8024535 (= tp!2401504 e!4727241)))

(assert (= (and b!8024535 (is-Cons!74923 (t!390790 l1!1007))) b!8024551))

(push 1)

(assert (not b!8024550))

(assert (not b!8024551))

(assert tp_is_empty!54179)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

