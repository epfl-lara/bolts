; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731310 () Bool)

(assert start!731310)

(declare-fun b!7573446 () Bool)

(declare-fun e!4508448 () Bool)

(declare-fun tp_is_empty!50427 () Bool)

(declare-fun tp!2206915 () Bool)

(assert (=> b!7573446 (= e!4508448 (and tp_is_empty!50427 tp!2206915))))

(declare-fun res!3033825 () Bool)

(declare-fun e!4508446 () Bool)

(assert (=> start!731310 (=> (not res!3033825) (not e!4508446))))

(declare-datatypes ((C!40398 0))(
  ( (C!40399 (val!30639 Int)) )
))
(declare-datatypes ((Regex!20036 0))(
  ( (ElementMatch!20036 (c!1397197 C!40398)) (Concat!28881 (regOne!40584 Regex!20036) (regTwo!40584 Regex!20036)) (EmptyExpr!20036) (Star!20036 (reg!20365 Regex!20036)) (EmptyLang!20036) (Union!20036 (regOne!40585 Regex!20036) (regTwo!40585 Regex!20036)) )
))
(declare-fun r!22341 () Regex!20036)

(declare-fun validRegex!10464 (Regex!20036) Bool)

(assert (=> start!731310 (= res!3033825 (validRegex!10464 r!22341))))

(assert (=> start!731310 e!4508446))

(declare-fun e!4508447 () Bool)

(assert (=> start!731310 e!4508447))

(assert (=> start!731310 e!4508448))

(declare-fun b!7573447 () Bool)

(assert (=> b!7573447 (= e!4508446 (not true))))

(declare-datatypes ((List!72919 0))(
  ( (Nil!72795) (Cons!72795 (h!79243 C!40398) (t!387654 List!72919)) )
))
(declare-fun s!13436 () List!72919)

(declare-fun matchR!9632 (Regex!20036 List!72919) Bool)

(declare-fun matchRSpec!4355 (Regex!20036 List!72919) Bool)

(assert (=> b!7573447 (= (matchR!9632 r!22341 s!13436) (matchRSpec!4355 r!22341 s!13436))))

(declare-datatypes ((Unit!167028 0))(
  ( (Unit!167029) )
))
(declare-fun lt!2651667 () Unit!167028)

(declare-fun mainMatchTheorem!4349 (Regex!20036 List!72919) Unit!167028)

(assert (=> b!7573447 (= lt!2651667 (mainMatchTheorem!4349 r!22341 s!13436))))

(declare-fun b!7573448 () Bool)

(declare-fun res!3033826 () Bool)

(assert (=> b!7573448 (=> (not res!3033826) (not e!4508446))))

(declare-fun lostCause!1812 (Regex!20036) Bool)

(assert (=> b!7573448 (= res!3033826 (lostCause!1812 r!22341))))

(declare-fun b!7573449 () Bool)

(declare-fun tp!2206911 () Bool)

(declare-fun tp!2206914 () Bool)

(assert (=> b!7573449 (= e!4508447 (and tp!2206911 tp!2206914))))

(declare-fun b!7573450 () Bool)

(assert (=> b!7573450 (= e!4508447 tp_is_empty!50427)))

(declare-fun b!7573451 () Bool)

(declare-fun tp!2206913 () Bool)

(assert (=> b!7573451 (= e!4508447 tp!2206913)))

(declare-fun b!7573452 () Bool)

(declare-fun res!3033827 () Bool)

(assert (=> b!7573452 (=> (not res!3033827) (not e!4508446))))

(declare-fun isEmpty!41454 (List!72919) Bool)

(assert (=> b!7573452 (= res!3033827 (not (isEmpty!41454 s!13436)))))

(declare-fun b!7573453 () Bool)

(declare-fun tp!2206910 () Bool)

(declare-fun tp!2206912 () Bool)

(assert (=> b!7573453 (= e!4508447 (and tp!2206910 tp!2206912))))

(assert (= (and start!731310 res!3033825) b!7573448))

(assert (= (and b!7573448 res!3033826) b!7573452))

(assert (= (and b!7573452 res!3033827) b!7573447))

(assert (= (and start!731310 (is-ElementMatch!20036 r!22341)) b!7573450))

(assert (= (and start!731310 (is-Concat!28881 r!22341)) b!7573449))

(assert (= (and start!731310 (is-Star!20036 r!22341)) b!7573451))

(assert (= (and start!731310 (is-Union!20036 r!22341)) b!7573453))

(assert (= (and start!731310 (is-Cons!72795 s!13436)) b!7573446))

(declare-fun m!8132942 () Bool)

(assert (=> start!731310 m!8132942))

(declare-fun m!8132944 () Bool)

(assert (=> b!7573447 m!8132944))

(declare-fun m!8132946 () Bool)

(assert (=> b!7573447 m!8132946))

(declare-fun m!8132948 () Bool)

(assert (=> b!7573447 m!8132948))

(declare-fun m!8132950 () Bool)

(assert (=> b!7573448 m!8132950))

(declare-fun m!8132952 () Bool)

(assert (=> b!7573452 m!8132952))

(push 1)

(assert (not b!7573448))

(assert (not b!7573446))

(assert (not start!731310))

(assert tp_is_empty!50427)

(assert (not b!7573451))

(assert (not b!7573452))

(assert (not b!7573449))

(assert (not b!7573447))

(assert (not b!7573453))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

