; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731218 () Bool)

(assert start!731218)

(declare-fun b!7572191 () Bool)

(declare-fun e!4507826 () Bool)

(declare-fun tp!2206434 () Bool)

(declare-fun tp!2206436 () Bool)

(assert (=> b!7572191 (= e!4507826 (and tp!2206434 tp!2206436))))

(declare-fun b!7572192 () Bool)

(declare-fun tp!2206438 () Bool)

(declare-fun tp!2206439 () Bool)

(assert (=> b!7572192 (= e!4507826 (and tp!2206438 tp!2206439))))

(declare-fun b!7572193 () Bool)

(declare-fun e!4507827 () Bool)

(declare-fun tp_is_empty!50391 () Bool)

(declare-fun tp!2206435 () Bool)

(assert (=> b!7572193 (= e!4507827 (and tp_is_empty!50391 tp!2206435))))

(declare-fun b!7572194 () Bool)

(declare-fun res!3033276 () Bool)

(declare-fun e!4507828 () Bool)

(assert (=> b!7572194 (=> (not res!3033276) (not e!4507828))))

(declare-datatypes ((C!40362 0))(
  ( (C!40363 (val!30621 Int)) )
))
(declare-datatypes ((List!72901 0))(
  ( (Nil!72777) (Cons!72777 (h!79225 C!40362) (t!387636 List!72901)) )
))
(declare-fun s!13436 () List!72901)

(declare-fun isEmpty!41436 (List!72901) Bool)

(assert (=> b!7572194 (= res!3033276 (not (isEmpty!41436 s!13436)))))

(declare-fun b!7572195 () Bool)

(assert (=> b!7572195 (= e!4507828 (not true))))

(declare-datatypes ((Regex!20018 0))(
  ( (ElementMatch!20018 (c!1397039 C!40362)) (Concat!28863 (regOne!40548 Regex!20018) (regTwo!40548 Regex!20018)) (EmptyExpr!20018) (Star!20018 (reg!20347 Regex!20018)) (EmptyLang!20018) (Union!20018 (regOne!40549 Regex!20018) (regTwo!40549 Regex!20018)) )
))
(declare-fun r!22341 () Regex!20018)

(declare-fun matchR!9614 (Regex!20018 List!72901) Bool)

(declare-fun matchRSpec!4337 (Regex!20018 List!72901) Bool)

(assert (=> b!7572195 (= (matchR!9614 r!22341 s!13436) (matchRSpec!4337 r!22341 s!13436))))

(declare-datatypes ((Unit!166992 0))(
  ( (Unit!166993) )
))
(declare-fun lt!2651463 () Unit!166992)

(declare-fun mainMatchTheorem!4331 (Regex!20018 List!72901) Unit!166992)

(assert (=> b!7572195 (= lt!2651463 (mainMatchTheorem!4331 r!22341 s!13436))))

(declare-fun res!3033275 () Bool)

(assert (=> start!731218 (=> (not res!3033275) (not e!4507828))))

(declare-fun validRegex!10446 (Regex!20018) Bool)

(assert (=> start!731218 (= res!3033275 (validRegex!10446 r!22341))))

(assert (=> start!731218 e!4507828))

(assert (=> start!731218 e!4507826))

(assert (=> start!731218 e!4507827))

(declare-fun b!7572190 () Bool)

(declare-fun res!3033277 () Bool)

(assert (=> b!7572190 (=> (not res!3033277) (not e!4507828))))

(declare-fun lostCause!1794 (Regex!20018) Bool)

(assert (=> b!7572190 (= res!3033277 (lostCause!1794 r!22341))))

(declare-fun b!7572196 () Bool)

(assert (=> b!7572196 (= e!4507826 tp_is_empty!50391)))

(declare-fun b!7572197 () Bool)

(declare-fun tp!2206437 () Bool)

(assert (=> b!7572197 (= e!4507826 tp!2206437)))

(assert (= (and start!731218 res!3033275) b!7572190))

(assert (= (and b!7572190 res!3033277) b!7572194))

(assert (= (and b!7572194 res!3033276) b!7572195))

(assert (= (and start!731218 (is-ElementMatch!20018 r!22341)) b!7572196))

(assert (= (and start!731218 (is-Concat!28863 r!22341)) b!7572192))

(assert (= (and start!731218 (is-Star!20018 r!22341)) b!7572197))

(assert (= (and start!731218 (is-Union!20018 r!22341)) b!7572191))

(assert (= (and start!731218 (is-Cons!72777 s!13436)) b!7572193))

(declare-fun m!8132370 () Bool)

(assert (=> b!7572194 m!8132370))

(declare-fun m!8132372 () Bool)

(assert (=> b!7572195 m!8132372))

(declare-fun m!8132374 () Bool)

(assert (=> b!7572195 m!8132374))

(declare-fun m!8132376 () Bool)

(assert (=> b!7572195 m!8132376))

(declare-fun m!8132378 () Bool)

(assert (=> start!731218 m!8132378))

(declare-fun m!8132380 () Bool)

(assert (=> b!7572190 m!8132380))

(push 1)

(assert (not b!7572197))

(assert tp_is_empty!50391)

(assert (not b!7572192))

(assert (not b!7572191))

(assert (not b!7572195))

(assert (not b!7572193))

(assert (not start!731218))

(assert (not b!7572190))

(assert (not b!7572194))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

