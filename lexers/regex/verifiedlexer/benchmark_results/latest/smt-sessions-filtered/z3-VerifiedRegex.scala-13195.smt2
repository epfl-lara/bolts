; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!719408 () Bool)

(assert start!719408)

(declare-fun b!7371378 () Bool)

(declare-fun e!4412944 () Bool)

(declare-fun tp!2095578 () Bool)

(assert (=> b!7371378 (= e!4412944 tp!2095578)))

(declare-fun b!7371379 () Bool)

(declare-fun tp!2095579 () Bool)

(declare-fun tp!2095572 () Bool)

(assert (=> b!7371379 (= e!4412944 (and tp!2095579 tp!2095572))))

(declare-fun b!7371380 () Bool)

(declare-datatypes ((C!38832 0))(
  ( (C!38833 (val!29776 Int)) )
))
(declare-datatypes ((Regex!19279 0))(
  ( (ElementMatch!19279 (c!1369993 C!38832)) (Concat!28124 (regOne!39070 Regex!19279) (regTwo!39070 Regex!19279)) (EmptyExpr!19279) (Star!19279 (reg!19608 Regex!19279)) (EmptyLang!19279) (Union!19279 (regOne!39071 Regex!19279) (regTwo!39071 Regex!19279)) )
))
(declare-datatypes ((List!71775 0))(
  ( (Nil!71651) (Cons!71651 (h!78099 Regex!19279) (t!386238 List!71775)) )
))
(declare-datatypes ((Context!16438 0))(
  ( (Context!16439 (exprs!8719 List!71775)) )
))
(declare-fun cWitness!61 () Context!16438)

(declare-fun e!4412945 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2615641 () (InoxSet Context!16438))

(declare-fun lt!2615639 () (InoxSet Context!16438))

(declare-fun lt!2615642 () (InoxSet Context!16438))

(assert (=> b!7371380 (= e!4412945 (and (= lt!2615641 ((_ map or) lt!2615639 lt!2615642)) (not (select lt!2615639 cWitness!61)) (not (select lt!2615642 cWitness!61))))))

(declare-fun r1!2370 () Regex!19279)

(declare-fun c!10362 () C!38832)

(declare-fun ct1!282 () Context!16438)

(declare-fun derivationStepZipperDown!3105 (Regex!19279 Context!16438 C!38832) (InoxSet Context!16438))

(assert (=> b!7371380 (= lt!2615642 (derivationStepZipperDown!3105 (regTwo!39070 r1!2370) ct1!282 c!10362))))

(declare-fun $colon$colon!3261 (List!71775 Regex!19279) List!71775)

(assert (=> b!7371380 (= lt!2615639 (derivationStepZipperDown!3105 (regOne!39070 r1!2370) (Context!16439 ($colon$colon!3261 (exprs!8719 ct1!282) (regTwo!39070 r1!2370))) c!10362))))

(declare-fun b!7371381 () Bool)

(declare-fun e!4412947 () Bool)

(declare-fun tp!2095573 () Bool)

(assert (=> b!7371381 (= e!4412947 tp!2095573)))

(declare-fun b!7371382 () Bool)

(declare-fun e!4412942 () Bool)

(declare-fun tp!2095576 () Bool)

(assert (=> b!7371382 (= e!4412942 tp!2095576)))

(declare-fun res!2974314 () Bool)

(declare-fun e!4412948 () Bool)

(assert (=> start!719408 (=> (not res!2974314) (not e!4412948))))

(declare-fun validRegex!9875 (Regex!19279) Bool)

(assert (=> start!719408 (= res!2974314 (validRegex!9875 r1!2370))))

(assert (=> start!719408 e!4412948))

(declare-fun tp_is_empty!48803 () Bool)

(assert (=> start!719408 tp_is_empty!48803))

(declare-fun e!4412943 () Bool)

(declare-fun inv!91537 (Context!16438) Bool)

(assert (=> start!719408 (and (inv!91537 cWitness!61) e!4412943)))

(assert (=> start!719408 (and (inv!91537 ct1!282) e!4412947)))

(assert (=> start!719408 e!4412944))

(declare-fun ct2!378 () Context!16438)

(assert (=> start!719408 (and (inv!91537 ct2!378) e!4412942)))

(declare-fun b!7371383 () Bool)

(declare-fun tp!2095575 () Bool)

(declare-fun tp!2095577 () Bool)

(assert (=> b!7371383 (= e!4412944 (and tp!2095575 tp!2095577))))

(declare-fun b!7371384 () Bool)

(declare-fun tp!2095574 () Bool)

(assert (=> b!7371384 (= e!4412943 tp!2095574)))

(declare-fun b!7371385 () Bool)

(declare-fun res!2974312 () Bool)

(assert (=> b!7371385 (=> (not res!2974312) (not e!4412945))))

(assert (=> b!7371385 (= res!2974312 (validRegex!9875 (regTwo!39070 r1!2370)))))

(declare-fun b!7371386 () Bool)

(assert (=> b!7371386 (= e!4412944 tp_is_empty!48803)))

(declare-fun b!7371387 () Bool)

(declare-fun e!4412946 () Bool)

(assert (=> b!7371387 (= e!4412946 e!4412945)))

(declare-fun res!2974310 () Bool)

(assert (=> b!7371387 (=> (not res!2974310) (not e!4412945))))

(get-info :version)

(assert (=> b!7371387 (= res!2974310 (and (or (not ((_ is ElementMatch!19279) r1!2370)) (not (= c!10362 (c!1369993 r1!2370)))) (not ((_ is Union!19279) r1!2370)) ((_ is Concat!28124) r1!2370)))))

(declare-fun lt!2615643 () (InoxSet Context!16438))

(declare-fun ++!17095 (List!71775 List!71775) List!71775)

(assert (=> b!7371387 (= lt!2615643 (derivationStepZipperDown!3105 r1!2370 (Context!16439 (++!17095 (exprs!8719 ct1!282) (exprs!8719 ct2!378))) c!10362))))

(declare-fun lambda!458039 () Int)

(declare-datatypes ((Unit!165507 0))(
  ( (Unit!165508) )
))
(declare-fun lt!2615640 () Unit!165507)

(declare-fun lemmaConcatPreservesForall!1952 (List!71775 List!71775 Int) Unit!165507)

(assert (=> b!7371387 (= lt!2615640 (lemmaConcatPreservesForall!1952 (exprs!8719 ct1!282) (exprs!8719 ct2!378) lambda!458039))))

(declare-fun b!7371388 () Bool)

(declare-fun res!2974311 () Bool)

(assert (=> b!7371388 (=> (not res!2974311) (not e!4412945))))

(declare-fun nullable!8355 (Regex!19279) Bool)

(assert (=> b!7371388 (= res!2974311 (nullable!8355 (regOne!39070 r1!2370)))))

(declare-fun b!7371389 () Bool)

(assert (=> b!7371389 (= e!4412948 e!4412946)))

(declare-fun res!2974313 () Bool)

(assert (=> b!7371389 (=> (not res!2974313) (not e!4412946))))

(assert (=> b!7371389 (= res!2974313 (select lt!2615641 cWitness!61))))

(assert (=> b!7371389 (= lt!2615641 (derivationStepZipperDown!3105 r1!2370 ct1!282 c!10362))))

(assert (= (and start!719408 res!2974314) b!7371389))

(assert (= (and b!7371389 res!2974313) b!7371387))

(assert (= (and b!7371387 res!2974310) b!7371388))

(assert (= (and b!7371388 res!2974311) b!7371385))

(assert (= (and b!7371385 res!2974312) b!7371380))

(assert (= start!719408 b!7371384))

(assert (= start!719408 b!7371381))

(assert (= (and start!719408 ((_ is ElementMatch!19279) r1!2370)) b!7371386))

(assert (= (and start!719408 ((_ is Concat!28124) r1!2370)) b!7371383))

(assert (= (and start!719408 ((_ is Star!19279) r1!2370)) b!7371378))

(assert (= (and start!719408 ((_ is Union!19279) r1!2370)) b!7371379))

(assert (= start!719408 b!7371382))

(declare-fun m!8025138 () Bool)

(assert (=> b!7371385 m!8025138))

(declare-fun m!8025140 () Bool)

(assert (=> b!7371380 m!8025140))

(declare-fun m!8025142 () Bool)

(assert (=> b!7371380 m!8025142))

(declare-fun m!8025144 () Bool)

(assert (=> b!7371380 m!8025144))

(declare-fun m!8025146 () Bool)

(assert (=> b!7371380 m!8025146))

(declare-fun m!8025148 () Bool)

(assert (=> b!7371380 m!8025148))

(declare-fun m!8025150 () Bool)

(assert (=> b!7371388 m!8025150))

(declare-fun m!8025152 () Bool)

(assert (=> b!7371389 m!8025152))

(declare-fun m!8025154 () Bool)

(assert (=> b!7371389 m!8025154))

(declare-fun m!8025156 () Bool)

(assert (=> b!7371387 m!8025156))

(declare-fun m!8025158 () Bool)

(assert (=> b!7371387 m!8025158))

(declare-fun m!8025160 () Bool)

(assert (=> b!7371387 m!8025160))

(declare-fun m!8025162 () Bool)

(assert (=> start!719408 m!8025162))

(declare-fun m!8025164 () Bool)

(assert (=> start!719408 m!8025164))

(declare-fun m!8025166 () Bool)

(assert (=> start!719408 m!8025166))

(declare-fun m!8025168 () Bool)

(assert (=> start!719408 m!8025168))

(check-sat (not b!7371387) (not b!7371384) (not b!7371381) (not start!719408) (not b!7371379) (not b!7371382) tp_is_empty!48803 (not b!7371385) (not b!7371383) (not b!7371380) (not b!7371378) (not b!7371388) (not b!7371389))
(check-sat)
