; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714504 () Bool)

(assert start!714504)

(declare-fun b!7322232 () Bool)

(declare-fun res!2959755 () Bool)

(declare-fun e!4384165 () Bool)

(assert (=> b!7322232 (=> (not res!2959755) (not e!4384165))))

(declare-datatypes ((C!38202 0))(
  ( (C!38203 (val!29461 Int)) )
))
(declare-datatypes ((Regex!18964 0))(
  ( (ElementMatch!18964 (c!1358835 C!38202)) (Concat!27809 (regOne!38440 Regex!18964) (regTwo!38440 Regex!18964)) (EmptyExpr!18964) (Star!18964 (reg!19293 Regex!18964)) (EmptyLang!18964) (Union!18964 (regOne!38441 Regex!18964) (regTwo!38441 Regex!18964)) )
))
(declare-datatypes ((List!71460 0))(
  ( (Nil!71336) (Cons!71336 (h!77784 Regex!18964) (t!385843 List!71460)) )
))
(declare-datatypes ((Context!15808 0))(
  ( (Context!15809 (exprs!8404 List!71460)) )
))
(declare-fun ct1!256 () Context!15808)

(declare-fun isEmpty!40882 (List!71460) Bool)

(assert (=> b!7322232 (= res!2959755 (not (isEmpty!40882 (exprs!8404 ct1!256))))))

(declare-fun b!7322233 () Bool)

(declare-fun e!4384166 () Bool)

(declare-fun tp!2079851 () Bool)

(assert (=> b!7322233 (= e!4384166 tp!2079851)))

(declare-fun b!7322234 () Bool)

(declare-fun e!4384168 () Bool)

(declare-fun tp!2079850 () Bool)

(assert (=> b!7322234 (= e!4384168 tp!2079850)))

(declare-fun res!2959753 () Bool)

(declare-fun e!4384167 () Bool)

(assert (=> start!714504 (=> (not res!2959753) (not e!4384167))))

(declare-fun c!10305 () C!38202)

(declare-fun cWitness!35 () Context!15808)

(declare-fun derivationStepZipperUp!2644 (Context!15808 C!38202) (Set Context!15808))

(assert (=> start!714504 (= res!2959753 (set.member cWitness!35 (derivationStepZipperUp!2644 ct1!256 c!10305)))))

(assert (=> start!714504 e!4384167))

(declare-fun e!4384164 () Bool)

(declare-fun inv!90751 (Context!15808) Bool)

(assert (=> start!714504 (and (inv!90751 cWitness!35) e!4384164)))

(assert (=> start!714504 (and (inv!90751 ct1!256) e!4384166)))

(declare-fun tp_is_empty!48173 () Bool)

(assert (=> start!714504 tp_is_empty!48173))

(declare-fun ct2!352 () Context!15808)

(assert (=> start!714504 (and (inv!90751 ct2!352) e!4384168)))

(declare-fun b!7322235 () Bool)

(assert (=> b!7322235 (= e!4384167 e!4384165)))

(declare-fun res!2959754 () Bool)

(assert (=> b!7322235 (=> (not res!2959754) (not e!4384165))))

(assert (=> b!7322235 (= res!2959754 (is-Cons!71336 (exprs!8404 ct1!256)))))

(declare-fun lt!2604844 () List!71460)

(declare-fun ++!16788 (List!71460 List!71460) List!71460)

(assert (=> b!7322235 (= lt!2604844 (++!16788 (exprs!8404 ct1!256) (exprs!8404 ct2!352)))))

(declare-datatypes ((Unit!164893 0))(
  ( (Unit!164894) )
))
(declare-fun lt!2604843 () Unit!164893)

(declare-fun lambda!453591 () Int)

(declare-fun lemmaConcatPreservesForall!1645 (List!71460 List!71460 Int) Unit!164893)

(assert (=> b!7322235 (= lt!2604843 (lemmaConcatPreservesForall!1645 (exprs!8404 ct1!256) (exprs!8404 ct2!352) lambda!453591))))

(declare-fun b!7322236 () Bool)

(declare-fun tp!2079852 () Bool)

(assert (=> b!7322236 (= e!4384164 tp!2079852)))

(declare-fun b!7322237 () Bool)

(assert (=> b!7322237 (= e!4384165 (= (exprs!8404 ct1!256) Nil!71336))))

(assert (= (and start!714504 res!2959753) b!7322235))

(assert (= (and b!7322235 res!2959754) b!7322232))

(assert (= (and b!7322232 res!2959755) b!7322237))

(assert (= start!714504 b!7322236))

(assert (= start!714504 b!7322233))

(assert (= start!714504 b!7322234))

(declare-fun m!7987768 () Bool)

(assert (=> b!7322232 m!7987768))

(declare-fun m!7987770 () Bool)

(assert (=> start!714504 m!7987770))

(declare-fun m!7987772 () Bool)

(assert (=> start!714504 m!7987772))

(declare-fun m!7987774 () Bool)

(assert (=> start!714504 m!7987774))

(declare-fun m!7987776 () Bool)

(assert (=> start!714504 m!7987776))

(declare-fun m!7987778 () Bool)

(assert (=> start!714504 m!7987778))

(declare-fun m!7987780 () Bool)

(assert (=> b!7322235 m!7987780))

(declare-fun m!7987782 () Bool)

(assert (=> b!7322235 m!7987782))

(push 1)

(assert (not b!7322235))

(assert (not b!7322234))

(assert (not b!7322233))

(assert (not b!7322236))

(assert tp_is_empty!48173)

(assert (not start!714504))

(assert (not b!7322232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

