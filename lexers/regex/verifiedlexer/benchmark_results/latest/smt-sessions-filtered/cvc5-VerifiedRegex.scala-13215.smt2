; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719962 () Bool)

(assert start!719962)

(declare-fun b!7379518 () Bool)

(declare-fun e!4417359 () Bool)

(declare-fun tp!2098852 () Bool)

(declare-fun tp!2098851 () Bool)

(assert (=> b!7379518 (= e!4417359 (and tp!2098852 tp!2098851))))

(declare-fun b!7379519 () Bool)

(declare-fun tp!2098850 () Bool)

(declare-fun tp!2098847 () Bool)

(assert (=> b!7379519 (= e!4417359 (and tp!2098850 tp!2098847))))

(declare-fun b!7379520 () Bool)

(declare-fun e!4417355 () Bool)

(declare-datatypes ((C!38910 0))(
  ( (C!38911 (val!29815 Int)) )
))
(declare-datatypes ((Regex!19318 0))(
  ( (ElementMatch!19318 (c!1371622 C!38910)) (Concat!28163 (regOne!39148 Regex!19318) (regTwo!39148 Regex!19318)) (EmptyExpr!19318) (Star!19318 (reg!19647 Regex!19318)) (EmptyLang!19318) (Union!19318 (regOne!39149 Regex!19318) (regTwo!39149 Regex!19318)) )
))
(declare-fun r1!2370 () Regex!19318)

(declare-fun nullable!8392 (Regex!19318) Bool)

(assert (=> b!7379520 (= e!4417355 (not (nullable!8392 (regOne!39148 r1!2370))))))

(declare-fun b!7379521 () Bool)

(declare-fun e!4417360 () Bool)

(declare-fun tp!2098849 () Bool)

(assert (=> b!7379521 (= e!4417360 tp!2098849)))

(declare-fun b!7379522 () Bool)

(declare-fun res!2976601 () Bool)

(declare-fun e!4417356 () Bool)

(assert (=> b!7379522 (=> (not res!2976601) (not e!4417356))))

(assert (=> b!7379522 (= res!2976601 e!4417355)))

(declare-fun res!2976598 () Bool)

(assert (=> b!7379522 (=> res!2976598 e!4417355)))

(assert (=> b!7379522 (= res!2976598 (not (is-Concat!28163 r1!2370)))))

(declare-fun b!7379523 () Bool)

(declare-fun e!4417358 () Bool)

(declare-fun tp!2098848 () Bool)

(assert (=> b!7379523 (= e!4417358 tp!2098848)))

(declare-fun b!7379525 () Bool)

(declare-fun e!4417361 () Bool)

(assert (=> b!7379525 (= e!4417361 e!4417356)))

(declare-fun res!2976602 () Bool)

(assert (=> b!7379525 (=> (not res!2976602) (not e!4417356))))

(declare-fun c!10362 () C!38910)

(assert (=> b!7379525 (= res!2976602 (and (or (not (is-ElementMatch!19318 r1!2370)) (not (= c!10362 (c!1371622 r1!2370)))) (not (is-Union!19318 r1!2370))))))

(declare-datatypes ((List!71814 0))(
  ( (Nil!71690) (Cons!71690 (h!78138 Regex!19318) (t!386301 List!71814)) )
))
(declare-datatypes ((Context!16516 0))(
  ( (Context!16517 (exprs!8758 List!71814)) )
))
(declare-fun ct2!378 () Context!16516)

(declare-fun lt!2616779 () (Set Context!16516))

(declare-fun ct1!282 () Context!16516)

(declare-fun derivationStepZipperDown!3144 (Regex!19318 Context!16516 C!38910) (Set Context!16516))

(declare-fun ++!17134 (List!71814 List!71814) List!71814)

(assert (=> b!7379525 (= lt!2616779 (derivationStepZipperDown!3144 r1!2370 (Context!16517 (++!17134 (exprs!8758 ct1!282) (exprs!8758 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165585 0))(
  ( (Unit!165586) )
))
(declare-fun lt!2616778 () Unit!165585)

(declare-fun lambda!458498 () Int)

(declare-fun lemmaConcatPreservesForall!1991 (List!71814 List!71814 Int) Unit!165585)

(assert (=> b!7379525 (= lt!2616778 (lemmaConcatPreservesForall!1991 (exprs!8758 ct1!282) (exprs!8758 ct2!378) lambda!458498))))

(declare-fun b!7379526 () Bool)

(declare-fun e!4417357 () Bool)

(assert (=> b!7379526 (= e!4417357 false)))

(declare-fun lt!2616781 () (Set Context!16516))

(declare-fun lt!2616780 () Regex!19318)

(declare-fun $colon$colon!3296 (List!71814 Regex!19318) List!71814)

(assert (=> b!7379526 (= lt!2616781 (derivationStepZipperDown!3144 (reg!19647 r1!2370) (Context!16517 ($colon$colon!3296 (exprs!8758 ct1!282) lt!2616780)) c!10362))))

(declare-fun b!7379527 () Bool)

(assert (=> b!7379527 (= e!4417356 e!4417357)))

(declare-fun res!2976600 () Bool)

(assert (=> b!7379527 (=> (not res!2976600) (not e!4417357))))

(declare-fun validRegex!9914 (Regex!19318) Bool)

(assert (=> b!7379527 (= res!2976600 (validRegex!9914 lt!2616780))))

(assert (=> b!7379527 (= lt!2616780 (Star!19318 (reg!19647 r1!2370)))))

(declare-fun b!7379528 () Bool)

(declare-fun tp_is_empty!48881 () Bool)

(assert (=> b!7379528 (= e!4417359 tp_is_empty!48881)))

(declare-fun b!7379529 () Bool)

(declare-fun res!2976597 () Bool)

(assert (=> b!7379529 (=> (not res!2976597) (not e!4417356))))

(assert (=> b!7379529 (= res!2976597 (and (not (is-Concat!28163 r1!2370)) (is-Star!19318 r1!2370)))))

(declare-fun b!7379524 () Bool)

(declare-fun e!4417362 () Bool)

(declare-fun tp!2098846 () Bool)

(assert (=> b!7379524 (= e!4417362 tp!2098846)))

(declare-fun res!2976599 () Bool)

(assert (=> start!719962 (=> (not res!2976599) (not e!4417361))))

(assert (=> start!719962 (= res!2976599 (validRegex!9914 r1!2370))))

(assert (=> start!719962 e!4417361))

(assert (=> start!719962 tp_is_empty!48881))

(declare-fun cWitness!61 () Context!16516)

(declare-fun inv!91636 (Context!16516) Bool)

(assert (=> start!719962 (and (inv!91636 cWitness!61) e!4417362)))

(assert (=> start!719962 (and (inv!91636 ct1!282) e!4417358)))

(assert (=> start!719962 e!4417359))

(assert (=> start!719962 (and (inv!91636 ct2!378) e!4417360)))

(declare-fun b!7379530 () Bool)

(declare-fun tp!2098853 () Bool)

(assert (=> b!7379530 (= e!4417359 tp!2098853)))

(declare-fun b!7379531 () Bool)

(declare-fun res!2976603 () Bool)

(assert (=> b!7379531 (=> (not res!2976603) (not e!4417361))))

(assert (=> b!7379531 (= res!2976603 (set.member cWitness!61 (derivationStepZipperDown!3144 r1!2370 ct1!282 c!10362)))))

(assert (= (and start!719962 res!2976599) b!7379531))

(assert (= (and b!7379531 res!2976603) b!7379525))

(assert (= (and b!7379525 res!2976602) b!7379522))

(assert (= (and b!7379522 (not res!2976598)) b!7379520))

(assert (= (and b!7379522 res!2976601) b!7379529))

(assert (= (and b!7379529 res!2976597) b!7379527))

(assert (= (and b!7379527 res!2976600) b!7379526))

(assert (= start!719962 b!7379524))

(assert (= start!719962 b!7379523))

(assert (= (and start!719962 (is-ElementMatch!19318 r1!2370)) b!7379528))

(assert (= (and start!719962 (is-Concat!28163 r1!2370)) b!7379518))

(assert (= (and start!719962 (is-Star!19318 r1!2370)) b!7379530))

(assert (= (and start!719962 (is-Union!19318 r1!2370)) b!7379519))

(assert (= start!719962 b!7379521))

(declare-fun m!8030162 () Bool)

(assert (=> b!7379531 m!8030162))

(declare-fun m!8030164 () Bool)

(assert (=> b!7379531 m!8030164))

(declare-fun m!8030166 () Bool)

(assert (=> start!719962 m!8030166))

(declare-fun m!8030168 () Bool)

(assert (=> start!719962 m!8030168))

(declare-fun m!8030170 () Bool)

(assert (=> start!719962 m!8030170))

(declare-fun m!8030172 () Bool)

(assert (=> start!719962 m!8030172))

(declare-fun m!8030174 () Bool)

(assert (=> b!7379520 m!8030174))

(declare-fun m!8030176 () Bool)

(assert (=> b!7379527 m!8030176))

(declare-fun m!8030178 () Bool)

(assert (=> b!7379526 m!8030178))

(declare-fun m!8030180 () Bool)

(assert (=> b!7379526 m!8030180))

(declare-fun m!8030182 () Bool)

(assert (=> b!7379525 m!8030182))

(declare-fun m!8030184 () Bool)

(assert (=> b!7379525 m!8030184))

(declare-fun m!8030186 () Bool)

(assert (=> b!7379525 m!8030186))

(push 1)

(assert (not start!719962))

(assert (not b!7379518))

(assert (not b!7379519))

(assert (not b!7379527))

(assert (not b!7379521))

(assert (not b!7379525))

(assert (not b!7379531))

(assert tp_is_empty!48881)

(assert (not b!7379530))

(assert (not b!7379526))

(assert (not b!7379520))

(assert (not b!7379523))

(assert (not b!7379524))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

