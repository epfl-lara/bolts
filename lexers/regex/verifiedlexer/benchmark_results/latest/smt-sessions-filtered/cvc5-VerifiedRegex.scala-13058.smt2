; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715292 () Bool)

(assert start!715292)

(declare-fun b!7327386 () Bool)

(declare-fun e!4387487 () Bool)

(declare-fun tp!2080736 () Bool)

(assert (=> b!7327386 (= e!4387487 tp!2080736)))

(declare-fun b!7327387 () Bool)

(declare-fun e!4387491 () Bool)

(declare-fun e!4387488 () Bool)

(assert (=> b!7327387 (= e!4387491 e!4387488)))

(declare-fun res!2961556 () Bool)

(assert (=> b!7327387 (=> (not res!2961556) (not e!4387488))))

(declare-datatypes ((C!38282 0))(
  ( (C!38283 (val!29501 Int)) )
))
(declare-datatypes ((Regex!19004 0))(
  ( (ElementMatch!19004 (c!1360203 C!38282)) (Concat!27849 (regOne!38520 Regex!19004) (regTwo!38520 Regex!19004)) (EmptyExpr!19004) (Star!19004 (reg!19333 Regex!19004)) (EmptyLang!19004) (Union!19004 (regOne!38521 Regex!19004) (regTwo!38521 Regex!19004)) )
))
(declare-datatypes ((List!71500 0))(
  ( (Nil!71376) (Cons!71376 (h!77824 Regex!19004) (t!385887 List!71500)) )
))
(declare-datatypes ((Context!15888 0))(
  ( (Context!15889 (exprs!8444 List!71500)) )
))
(declare-fun ct1!256 () Context!15888)

(declare-fun nullable!8108 (Regex!19004) Bool)

(assert (=> b!7327387 (= res!2961556 (not (nullable!8108 (h!77824 (exprs!8444 ct1!256)))))))

(declare-fun lt!2606494 () (Set Context!15888))

(declare-fun c!10305 () C!38282)

(declare-fun derivationStepZipperDown!2835 (Regex!19004 Context!15888 C!38282) (Set Context!15888))

(declare-fun tail!14693 (List!71500) List!71500)

(assert (=> b!7327387 (= lt!2606494 (derivationStepZipperDown!2835 (h!77824 (exprs!8444 ct1!256)) (Context!15889 (tail!14693 (exprs!8444 ct1!256))) c!10305))))

(declare-fun b!7327388 () Bool)

(declare-fun res!2961552 () Bool)

(assert (=> b!7327388 (=> (not res!2961552) (not e!4387491))))

(declare-fun isEmpty!40922 (List!71500) Bool)

(assert (=> b!7327388 (= res!2961552 (not (isEmpty!40922 (exprs!8444 ct1!256))))))

(declare-fun b!7327389 () Bool)

(declare-fun e!4387490 () Bool)

(assert (=> b!7327389 (= e!4387490 e!4387491)))

(declare-fun res!2961553 () Bool)

(assert (=> b!7327389 (=> (not res!2961553) (not e!4387491))))

(assert (=> b!7327389 (= res!2961553 (is-Cons!71376 (exprs!8444 ct1!256)))))

(declare-fun lt!2606496 () List!71500)

(declare-fun ct2!352 () Context!15888)

(declare-fun ++!16828 (List!71500 List!71500) List!71500)

(assert (=> b!7327389 (= lt!2606496 (++!16828 (exprs!8444 ct1!256) (exprs!8444 ct2!352)))))

(declare-datatypes ((Unit!164973 0))(
  ( (Unit!164974) )
))
(declare-fun lt!2606497 () Unit!164973)

(declare-fun lambda!454193 () Int)

(declare-fun lemmaConcatPreservesForall!1685 (List!71500 List!71500 Int) Unit!164973)

(assert (=> b!7327389 (= lt!2606497 (lemmaConcatPreservesForall!1685 (exprs!8444 ct1!256) (exprs!8444 ct2!352) lambda!454193))))

(declare-fun b!7327390 () Bool)

(declare-fun e!4387489 () Bool)

(declare-fun tp!2080738 () Bool)

(assert (=> b!7327390 (= e!4387489 tp!2080738)))

(declare-fun res!2961555 () Bool)

(assert (=> start!715292 (=> (not res!2961555) (not e!4387490))))

(declare-fun cWitness!35 () Context!15888)

(declare-fun lt!2606493 () (Set Context!15888))

(assert (=> start!715292 (= res!2961555 (set.member cWitness!35 lt!2606493))))

(declare-fun derivationStepZipperUp!2684 (Context!15888 C!38282) (Set Context!15888))

(assert (=> start!715292 (= lt!2606493 (derivationStepZipperUp!2684 ct1!256 c!10305))))

(assert (=> start!715292 e!4387490))

(declare-fun tp_is_empty!48253 () Bool)

(assert (=> start!715292 tp_is_empty!48253))

(declare-fun inv!90851 (Context!15888) Bool)

(assert (=> start!715292 (and (inv!90851 cWitness!35) e!4387487)))

(declare-fun e!4387486 () Bool)

(assert (=> start!715292 (and (inv!90851 ct1!256) e!4387486)))

(assert (=> start!715292 (and (inv!90851 ct2!352) e!4387489)))

(declare-fun b!7327391 () Bool)

(declare-fun res!2961554 () Bool)

(assert (=> b!7327391 (=> (not res!2961554) (not e!4387488))))

(assert (=> b!7327391 (= res!2961554 (and (= lt!2606493 lt!2606494) (set.member cWitness!35 lt!2606494)))))

(declare-fun b!7327392 () Bool)

(declare-fun res!2961551 () Bool)

(assert (=> b!7327392 (=> (not res!2961551) (not e!4387488))))

(assert (=> b!7327392 (= res!2961551 (not (isEmpty!40922 lt!2606496)))))

(declare-fun b!7327393 () Bool)

(assert (=> b!7327393 (= e!4387488 false)))

(declare-fun lt!2606495 () (Set Context!15888))

(assert (=> b!7327393 (= lt!2606495 (derivationStepZipperDown!2835 (h!77824 (exprs!8444 ct1!256)) (Context!15889 (tail!14693 lt!2606496)) c!10305))))

(declare-fun b!7327394 () Bool)

(declare-fun tp!2080737 () Bool)

(assert (=> b!7327394 (= e!4387486 tp!2080737)))

(assert (= (and start!715292 res!2961555) b!7327389))

(assert (= (and b!7327389 res!2961553) b!7327388))

(assert (= (and b!7327388 res!2961552) b!7327387))

(assert (= (and b!7327387 res!2961556) b!7327391))

(assert (= (and b!7327391 res!2961554) b!7327392))

(assert (= (and b!7327392 res!2961551) b!7327393))

(assert (= start!715292 b!7327386))

(assert (= start!715292 b!7327394))

(assert (= start!715292 b!7327390))

(declare-fun m!7993164 () Bool)

(assert (=> start!715292 m!7993164))

(declare-fun m!7993166 () Bool)

(assert (=> start!715292 m!7993166))

(declare-fun m!7993168 () Bool)

(assert (=> start!715292 m!7993168))

(declare-fun m!7993170 () Bool)

(assert (=> start!715292 m!7993170))

(declare-fun m!7993172 () Bool)

(assert (=> start!715292 m!7993172))

(declare-fun m!7993174 () Bool)

(assert (=> b!7327387 m!7993174))

(declare-fun m!7993176 () Bool)

(assert (=> b!7327387 m!7993176))

(declare-fun m!7993178 () Bool)

(assert (=> b!7327387 m!7993178))

(declare-fun m!7993180 () Bool)

(assert (=> b!7327391 m!7993180))

(declare-fun m!7993182 () Bool)

(assert (=> b!7327392 m!7993182))

(declare-fun m!7993184 () Bool)

(assert (=> b!7327389 m!7993184))

(declare-fun m!7993186 () Bool)

(assert (=> b!7327389 m!7993186))

(declare-fun m!7993188 () Bool)

(assert (=> b!7327388 m!7993188))

(declare-fun m!7993190 () Bool)

(assert (=> b!7327393 m!7993190))

(declare-fun m!7993192 () Bool)

(assert (=> b!7327393 m!7993192))

(push 1)

(assert (not b!7327388))

(assert (not b!7327394))

(assert (not start!715292))

(assert (not b!7327389))

(assert tp_is_empty!48253)

(assert (not b!7327392))

(assert (not b!7327386))

(assert (not b!7327393))

(assert (not b!7327390))

(assert (not b!7327387))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

