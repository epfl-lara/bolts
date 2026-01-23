; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715600 () Bool)

(assert start!715600)

(declare-fun b!7329260 () Bool)

(declare-fun e!4388655 () Bool)

(declare-fun tp!2081038 () Bool)

(assert (=> b!7329260 (= e!4388655 tp!2081038)))

(declare-fun res!2962197 () Bool)

(declare-fun e!4388654 () Bool)

(assert (=> start!715600 (=> (not res!2962197) (not e!4388654))))

(declare-datatypes ((C!38318 0))(
  ( (C!38319 (val!29519 Int)) )
))
(declare-datatypes ((Regex!19022 0))(
  ( (ElementMatch!19022 (c!1360717 C!38318)) (Concat!27867 (regOne!38556 Regex!19022) (regTwo!38556 Regex!19022)) (EmptyExpr!19022) (Star!19022 (reg!19351 Regex!19022)) (EmptyLang!19022) (Union!19022 (regOne!38557 Regex!19022) (regTwo!38557 Regex!19022)) )
))
(declare-datatypes ((List!71518 0))(
  ( (Nil!71394) (Cons!71394 (h!77842 Regex!19022) (t!385905 List!71518)) )
))
(declare-datatypes ((Context!15924 0))(
  ( (Context!15925 (exprs!8462 List!71518)) )
))
(declare-fun cWitness!35 () Context!15924)

(declare-fun lt!2607231 () (Set Context!15924))

(assert (=> start!715600 (= res!2962197 (set.member cWitness!35 lt!2607231))))

(declare-fun ct1!256 () Context!15924)

(declare-fun c!10305 () C!38318)

(declare-fun derivationStepZipperUp!2702 (Context!15924 C!38318) (Set Context!15924))

(assert (=> start!715600 (= lt!2607231 (derivationStepZipperUp!2702 ct1!256 c!10305))))

(assert (=> start!715600 e!4388654))

(declare-fun tp_is_empty!48289 () Bool)

(assert (=> start!715600 tp_is_empty!48289))

(declare-fun e!4388658 () Bool)

(declare-fun inv!90896 (Context!15924) Bool)

(assert (=> start!715600 (and (inv!90896 cWitness!35) e!4388658)))

(declare-fun e!4388659 () Bool)

(assert (=> start!715600 (and (inv!90896 ct1!256) e!4388659)))

(declare-fun ct2!352 () Context!15924)

(assert (=> start!715600 (and (inv!90896 ct2!352) e!4388655)))

(declare-fun b!7329261 () Bool)

(declare-fun tp!2081039 () Bool)

(assert (=> b!7329261 (= e!4388659 tp!2081039)))

(declare-fun b!7329262 () Bool)

(declare-fun e!4388657 () Bool)

(assert (=> b!7329262 (= e!4388654 e!4388657)))

(declare-fun res!2962200 () Bool)

(assert (=> b!7329262 (=> (not res!2962200) (not e!4388657))))

(assert (=> b!7329262 (= res!2962200 (is-Cons!71394 (exprs!8462 ct1!256)))))

(declare-fun lt!2607227 () List!71518)

(declare-fun ++!16846 (List!71518 List!71518) List!71518)

(assert (=> b!7329262 (= lt!2607227 (++!16846 (exprs!8462 ct1!256) (exprs!8462 ct2!352)))))

(declare-fun lambda!454473 () Int)

(declare-datatypes ((Unit!165009 0))(
  ( (Unit!165010) )
))
(declare-fun lt!2607229 () Unit!165009)

(declare-fun lemmaConcatPreservesForall!1703 (List!71518 List!71518 Int) Unit!165009)

(assert (=> b!7329262 (= lt!2607229 (lemmaConcatPreservesForall!1703 (exprs!8462 ct1!256) (exprs!8462 ct2!352) lambda!454473))))

(declare-fun b!7329263 () Bool)

(declare-fun tp!2081040 () Bool)

(assert (=> b!7329263 (= e!4388658 tp!2081040)))

(declare-fun b!7329264 () Bool)

(declare-fun e!4388656 () Bool)

(assert (=> b!7329264 (= e!4388657 e!4388656)))

(declare-fun res!2962198 () Bool)

(assert (=> b!7329264 (=> (not res!2962198) (not e!4388656))))

(declare-fun nullable!8124 (Regex!19022) Bool)

(assert (=> b!7329264 (= res!2962198 (nullable!8124 (h!77842 (exprs!8462 ct1!256))))))

(declare-fun lt!2607232 () (Set Context!15924))

(declare-fun lt!2607230 () Context!15924)

(declare-fun derivationStepZipperDown!2851 (Regex!19022 Context!15924 C!38318) (Set Context!15924))

(assert (=> b!7329264 (= lt!2607232 (derivationStepZipperDown!2851 (h!77842 (exprs!8462 ct1!256)) lt!2607230 c!10305))))

(declare-fun tail!14709 (List!71518) List!71518)

(assert (=> b!7329264 (= lt!2607230 (Context!15925 (tail!14709 (exprs!8462 ct1!256))))))

(declare-fun lt!2607228 () (Set Context!15924))

(declare-fun b!7329265 () Bool)

(assert (=> b!7329265 (= e!4388656 (and (= lt!2607231 (set.union lt!2607232 lt!2607228)) (not (set.member cWitness!35 lt!2607232)) (not (set.member cWitness!35 lt!2607228))))))

(assert (=> b!7329265 (= lt!2607228 (derivationStepZipperUp!2702 lt!2607230 c!10305))))

(declare-fun b!7329266 () Bool)

(declare-fun res!2962199 () Bool)

(assert (=> b!7329266 (=> (not res!2962199) (not e!4388657))))

(declare-fun isEmpty!40938 (List!71518) Bool)

(assert (=> b!7329266 (= res!2962199 (not (isEmpty!40938 (exprs!8462 ct1!256))))))

(assert (= (and start!715600 res!2962197) b!7329262))

(assert (= (and b!7329262 res!2962200) b!7329266))

(assert (= (and b!7329266 res!2962199) b!7329264))

(assert (= (and b!7329264 res!2962198) b!7329265))

(assert (= start!715600 b!7329263))

(assert (= start!715600 b!7329261))

(assert (= start!715600 b!7329260))

(declare-fun m!7995300 () Bool)

(assert (=> b!7329262 m!7995300))

(declare-fun m!7995302 () Bool)

(assert (=> b!7329262 m!7995302))

(declare-fun m!7995304 () Bool)

(assert (=> b!7329266 m!7995304))

(declare-fun m!7995306 () Bool)

(assert (=> start!715600 m!7995306))

(declare-fun m!7995308 () Bool)

(assert (=> start!715600 m!7995308))

(declare-fun m!7995310 () Bool)

(assert (=> start!715600 m!7995310))

(declare-fun m!7995312 () Bool)

(assert (=> start!715600 m!7995312))

(declare-fun m!7995314 () Bool)

(assert (=> start!715600 m!7995314))

(declare-fun m!7995316 () Bool)

(assert (=> b!7329265 m!7995316))

(declare-fun m!7995318 () Bool)

(assert (=> b!7329265 m!7995318))

(declare-fun m!7995320 () Bool)

(assert (=> b!7329265 m!7995320))

(declare-fun m!7995322 () Bool)

(assert (=> b!7329264 m!7995322))

(declare-fun m!7995324 () Bool)

(assert (=> b!7329264 m!7995324))

(declare-fun m!7995326 () Bool)

(assert (=> b!7329264 m!7995326))

(push 1)

(assert (not b!7329263))

(assert tp_is_empty!48289)

(assert (not b!7329264))

(assert (not b!7329260))

(assert (not b!7329265))

(assert (not start!715600))

(assert (not b!7329261))

(assert (not b!7329266))

(assert (not b!7329262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

