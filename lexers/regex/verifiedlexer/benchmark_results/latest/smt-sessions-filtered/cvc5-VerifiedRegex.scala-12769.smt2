; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!705810 () Bool)

(assert start!705810)

(declare-fun b!7251415 () Bool)

(assert (=> b!7251415 true))

(declare-fun b!7251417 () Bool)

(assert (=> b!7251417 true))

(declare-fun e!4347996 () Bool)

(declare-fun e!4347992 () Bool)

(assert (=> b!7251415 (= e!4347996 (not e!4347992))))

(declare-fun res!2940942 () Bool)

(assert (=> b!7251415 (=> res!2940942 e!4347992)))

(declare-datatypes ((C!37566 0))(
  ( (C!37567 (val!28731 Int)) )
))
(declare-datatypes ((Regex!18646 0))(
  ( (ElementMatch!18646 (c!1347664 C!37566)) (Concat!27491 (regOne!37804 Regex!18646) (regTwo!37804 Regex!18646)) (EmptyExpr!18646) (Star!18646 (reg!18975 Regex!18646)) (EmptyLang!18646) (Union!18646 (regOne!37805 Regex!18646) (regTwo!37805 Regex!18646)) )
))
(declare-datatypes ((List!70518 0))(
  ( (Nil!70394) (Cons!70394 (h!76842 Regex!18646) (t!384574 List!70518)) )
))
(declare-datatypes ((Context!15172 0))(
  ( (Context!15173 (exprs!8086 List!70518)) )
))
(declare-fun lt!2585132 () (Set Context!15172))

(declare-fun lambda!444282 () Int)

(declare-fun exists!4370 ((Set Context!15172) Int) Bool)

(assert (=> b!7251415 (= res!2940942 (not (exists!4370 lt!2585132 lambda!444282)))))

(declare-datatypes ((List!70519 0))(
  ( (Nil!70395) (Cons!70395 (h!76843 Context!15172) (t!384575 List!70519)) )
))
(declare-fun lt!2585122 () List!70519)

(declare-fun exists!4371 (List!70519 Int) Bool)

(assert (=> b!7251415 (exists!4371 lt!2585122 lambda!444282)))

(declare-datatypes ((Unit!163878 0))(
  ( (Unit!163879) )
))
(declare-fun lt!2585131 () Unit!163878)

(declare-datatypes ((List!70520 0))(
  ( (Nil!70396) (Cons!70396 (h!76844 C!37566) (t!384576 List!70520)) )
))
(declare-fun s1!1971 () List!70520)

(declare-fun lemmaZipperMatchesExistsMatchingContext!749 (List!70519 List!70520) Unit!163878)

(assert (=> b!7251415 (= lt!2585131 (lemmaZipperMatchesExistsMatchingContext!749 lt!2585122 (t!384576 s1!1971)))))

(declare-fun toList!11475 ((Set Context!15172)) List!70519)

(assert (=> b!7251415 (= lt!2585122 (toList!11475 lt!2585132))))

(declare-fun b!7251416 () Bool)

(declare-fun res!2940947 () Bool)

(declare-fun e!4347991 () Bool)

(assert (=> b!7251416 (=> res!2940947 e!4347991)))

(declare-fun lt!2585136 () (Set Context!15172))

(assert (=> b!7251416 (= res!2940947 (not (= lt!2585132 lt!2585136)))))

(declare-fun e!4347997 () Bool)

(assert (=> b!7251417 (= e!4347997 e!4347991)))

(declare-fun res!2940945 () Bool)

(assert (=> b!7251417 (=> res!2940945 e!4347991)))

(declare-fun ct1!232 () Context!15172)

(declare-fun nullable!7906 (Regex!18646) Bool)

(assert (=> b!7251417 (= res!2940945 (not (nullable!7906 (h!76842 (exprs!8086 ct1!232)))))))

(declare-fun lt!2585123 () Context!15172)

(declare-fun lambda!444283 () Int)

(declare-fun lt!2585130 () (Set Context!15172))

(declare-fun flatMap!2811 ((Set Context!15172) Int) (Set Context!15172))

(declare-fun derivationStepZipperUp!2470 (Context!15172 C!37566) (Set Context!15172))

(assert (=> b!7251417 (= (flatMap!2811 lt!2585130 lambda!444283) (derivationStepZipperUp!2470 lt!2585123 (h!76844 s1!1971)))))

(declare-fun lt!2585135 () Unit!163878)

(declare-fun lemmaFlatMapOnSingletonSet!2215 ((Set Context!15172) Context!15172 Int) Unit!163878)

(assert (=> b!7251417 (= lt!2585135 (lemmaFlatMapOnSingletonSet!2215 lt!2585130 lt!2585123 lambda!444283))))

(declare-fun lt!2585139 () Unit!163878)

(declare-fun lambda!444281 () Int)

(declare-fun ct2!328 () Context!15172)

(declare-fun lemmaConcatPreservesForall!1453 (List!70518 List!70518 Int) Unit!163878)

(assert (=> b!7251417 (= lt!2585139 (lemmaConcatPreservesForall!1453 (exprs!8086 ct1!232) (exprs!8086 ct2!328) lambda!444281))))

(declare-fun lt!2585126 () (Set Context!15172))

(assert (=> b!7251417 (= (flatMap!2811 lt!2585126 lambda!444283) (derivationStepZipperUp!2470 ct1!232 (h!76844 s1!1971)))))

(declare-fun lt!2585144 () Unit!163878)

(assert (=> b!7251417 (= lt!2585144 (lemmaFlatMapOnSingletonSet!2215 lt!2585126 ct1!232 lambda!444283))))

(declare-fun lt!2585142 () (Set Context!15172))

(declare-fun lt!2585134 () List!70518)

(declare-fun derivationStepZipperDown!2640 (Regex!18646 Context!15172 C!37566) (Set Context!15172))

(declare-fun tail!14322 (List!70518) List!70518)

(assert (=> b!7251417 (= lt!2585142 (derivationStepZipperDown!2640 (h!76842 (exprs!8086 ct1!232)) (Context!15173 (tail!14322 lt!2585134)) (h!76844 s1!1971)))))

(declare-fun b!7251418 () Bool)

(declare-fun e!4347993 () Bool)

(declare-fun e!4347990 () Bool)

(assert (=> b!7251418 (= e!4347993 e!4347990)))

(declare-fun res!2940950 () Bool)

(assert (=> b!7251418 (=> (not res!2940950) (not e!4347990))))

(assert (=> b!7251418 (= res!2940950 (and (not (is-Nil!70394 (exprs!8086 ct1!232))) (is-Cons!70396 s1!1971)))))

(assert (=> b!7251418 (= lt!2585130 (set.insert lt!2585123 (as set.empty (Set Context!15172))))))

(assert (=> b!7251418 (= lt!2585123 (Context!15173 lt!2585134))))

(declare-fun ++!16554 (List!70518 List!70518) List!70518)

(assert (=> b!7251418 (= lt!2585134 (++!16554 (exprs!8086 ct1!232) (exprs!8086 ct2!328)))))

(declare-fun lt!2585141 () Unit!163878)

(assert (=> b!7251418 (= lt!2585141 (lemmaConcatPreservesForall!1453 (exprs!8086 ct1!232) (exprs!8086 ct2!328) lambda!444281))))

(declare-fun b!7251419 () Bool)

(declare-fun e!4347995 () Bool)

(declare-fun tp_is_empty!46757 () Bool)

(declare-fun tp!2037531 () Bool)

(assert (=> b!7251419 (= e!4347995 (and tp_is_empty!46757 tp!2037531))))

(declare-fun b!7251420 () Bool)

(declare-fun e!4347987 () Bool)

(declare-fun tp!2037533 () Bool)

(assert (=> b!7251420 (= e!4347987 (and tp_is_empty!46757 tp!2037533))))

(declare-fun b!7251421 () Bool)

(assert (=> b!7251421 (= e!4347990 e!4347996)))

(declare-fun res!2940946 () Bool)

(assert (=> b!7251421 (=> (not res!2940946) (not e!4347996))))

(declare-fun matchZipper!3556 ((Set Context!15172) List!70520) Bool)

(assert (=> b!7251421 (= res!2940946 (matchZipper!3556 lt!2585132 (t!384576 s1!1971)))))

(declare-fun derivationStepZipper!3424 ((Set Context!15172) C!37566) (Set Context!15172))

(assert (=> b!7251421 (= lt!2585132 (derivationStepZipper!3424 lt!2585126 (h!76844 s1!1971)))))

(declare-fun b!7251422 () Bool)

(declare-fun res!2940943 () Bool)

(assert (=> b!7251422 (=> (not res!2940943) (not e!4347993))))

(declare-fun s2!1849 () List!70520)

(assert (=> b!7251422 (= res!2940943 (matchZipper!3556 (set.insert ct2!328 (as set.empty (Set Context!15172))) s2!1849))))

(declare-fun b!7251423 () Bool)

(assert (=> b!7251423 (= e!4347991 true)))

(declare-fun lt!2585129 () Unit!163878)

(assert (=> b!7251423 (= lt!2585129 (lemmaConcatPreservesForall!1453 (exprs!8086 ct1!232) (exprs!8086 ct2!328) lambda!444281))))

(declare-fun b!7251424 () Bool)

(declare-fun e!4347989 () Bool)

(assert (=> b!7251424 (= e!4347989 e!4347997)))

(declare-fun res!2940941 () Bool)

(assert (=> b!7251424 (=> res!2940941 e!4347997)))

(declare-fun isEmpty!40540 (List!70518) Bool)

(assert (=> b!7251424 (= res!2940941 (isEmpty!40540 lt!2585134))))

(declare-fun lt!2585127 () Unit!163878)

(assert (=> b!7251424 (= lt!2585127 (lemmaConcatPreservesForall!1453 (exprs!8086 ct1!232) (exprs!8086 ct2!328) lambda!444281))))

(declare-fun lt!2585138 () (Set Context!15172))

(assert (=> b!7251424 (= lt!2585138 (derivationStepZipperUp!2470 lt!2585123 (h!76844 s1!1971)))))

(declare-fun lt!2585140 () Unit!163878)

(assert (=> b!7251424 (= lt!2585140 (lemmaConcatPreservesForall!1453 (exprs!8086 ct1!232) (exprs!8086 ct2!328) lambda!444281))))

(declare-fun lt!2585133 () (Set Context!15172))

(declare-fun lt!2585143 () Context!15172)

(assert (=> b!7251424 (= lt!2585133 (derivationStepZipperDown!2640 (h!76842 (exprs!8086 ct1!232)) lt!2585143 (h!76844 s1!1971)))))

(assert (=> b!7251424 (= lt!2585143 (Context!15173 (tail!14322 (exprs!8086 ct1!232))))))

(declare-fun res!2940944 () Bool)

(assert (=> start!705810 (=> (not res!2940944) (not e!4347993))))

(assert (=> start!705810 (= res!2940944 (matchZipper!3556 lt!2585126 s1!1971))))

(assert (=> start!705810 (= lt!2585126 (set.insert ct1!232 (as set.empty (Set Context!15172))))))

(assert (=> start!705810 e!4347993))

(declare-fun e!4347994 () Bool)

(declare-fun inv!89626 (Context!15172) Bool)

(assert (=> start!705810 (and (inv!89626 ct1!232) e!4347994)))

(assert (=> start!705810 e!4347995))

(assert (=> start!705810 e!4347987))

(declare-fun e!4347988 () Bool)

(assert (=> start!705810 (and (inv!89626 ct2!328) e!4347988)))

(declare-fun b!7251425 () Bool)

(declare-fun res!2940949 () Bool)

(assert (=> b!7251425 (=> res!2940949 e!4347991)))

(assert (=> b!7251425 (= res!2940949 (not (= lt!2585136 (set.union lt!2585133 (derivationStepZipperUp!2470 lt!2585143 (h!76844 s1!1971))))))))

(declare-fun b!7251426 () Bool)

(assert (=> b!7251426 (= e!4347992 e!4347989)))

(declare-fun res!2940948 () Bool)

(assert (=> b!7251426 (=> res!2940948 e!4347989)))

(assert (=> b!7251426 (= res!2940948 (isEmpty!40540 (exprs!8086 ct1!232)))))

(assert (=> b!7251426 (= lt!2585136 (derivationStepZipperUp!2470 ct1!232 (h!76844 s1!1971)))))

(declare-fun lt!2585125 () Unit!163878)

(declare-fun lt!2585137 () Context!15172)

(assert (=> b!7251426 (= lt!2585125 (lemmaConcatPreservesForall!1453 (exprs!8086 lt!2585137) (exprs!8086 ct2!328) lambda!444281))))

(declare-fun ++!16555 (List!70520 List!70520) List!70520)

(assert (=> b!7251426 (matchZipper!3556 (set.insert (Context!15173 (++!16554 (exprs!8086 lt!2585137) (exprs!8086 ct2!328))) (as set.empty (Set Context!15172))) (++!16555 (t!384576 s1!1971) s2!1849))))

(declare-fun lt!2585124 () Unit!163878)

(assert (=> b!7251426 (= lt!2585124 (lemmaConcatPreservesForall!1453 (exprs!8086 lt!2585137) (exprs!8086 ct2!328) lambda!444281))))

(declare-fun lt!2585128 () Unit!163878)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!391 (Context!15172 Context!15172 List!70520 List!70520) Unit!163878)

(assert (=> b!7251426 (= lt!2585128 (lemmaConcatenateContextMatchesConcatOfStrings!391 lt!2585137 ct2!328 (t!384576 s1!1971) s2!1849))))

(declare-fun getWitness!2206 ((Set Context!15172) Int) Context!15172)

(assert (=> b!7251426 (= lt!2585137 (getWitness!2206 lt!2585132 lambda!444282))))

(declare-fun b!7251427 () Bool)

(declare-fun tp!2037532 () Bool)

(assert (=> b!7251427 (= e!4347988 tp!2037532)))

(declare-fun b!7251428 () Bool)

(declare-fun tp!2037534 () Bool)

(assert (=> b!7251428 (= e!4347994 tp!2037534)))

(assert (= (and start!705810 res!2940944) b!7251422))

(assert (= (and b!7251422 res!2940943) b!7251418))

(assert (= (and b!7251418 res!2940950) b!7251421))

(assert (= (and b!7251421 res!2940946) b!7251415))

(assert (= (and b!7251415 (not res!2940942)) b!7251426))

(assert (= (and b!7251426 (not res!2940948)) b!7251424))

(assert (= (and b!7251424 (not res!2940941)) b!7251417))

(assert (= (and b!7251417 (not res!2940945)) b!7251425))

(assert (= (and b!7251425 (not res!2940949)) b!7251416))

(assert (= (and b!7251416 (not res!2940947)) b!7251423))

(assert (= start!705810 b!7251428))

(assert (= (and start!705810 (is-Cons!70396 s1!1971)) b!7251419))

(assert (= (and start!705810 (is-Cons!70396 s2!1849)) b!7251420))

(assert (= start!705810 b!7251427))

(declare-fun m!7930582 () Bool)

(assert (=> start!705810 m!7930582))

(declare-fun m!7930584 () Bool)

(assert (=> start!705810 m!7930584))

(declare-fun m!7930586 () Bool)

(assert (=> start!705810 m!7930586))

(declare-fun m!7930588 () Bool)

(assert (=> start!705810 m!7930588))

(declare-fun m!7930590 () Bool)

(assert (=> b!7251418 m!7930590))

(declare-fun m!7930592 () Bool)

(assert (=> b!7251418 m!7930592))

(declare-fun m!7930594 () Bool)

(assert (=> b!7251418 m!7930594))

(declare-fun m!7930596 () Bool)

(assert (=> b!7251417 m!7930596))

(declare-fun m!7930598 () Bool)

(assert (=> b!7251417 m!7930598))

(declare-fun m!7930600 () Bool)

(assert (=> b!7251417 m!7930600))

(declare-fun m!7930602 () Bool)

(assert (=> b!7251417 m!7930602))

(declare-fun m!7930604 () Bool)

(assert (=> b!7251417 m!7930604))

(declare-fun m!7930606 () Bool)

(assert (=> b!7251417 m!7930606))

(declare-fun m!7930608 () Bool)

(assert (=> b!7251417 m!7930608))

(assert (=> b!7251417 m!7930594))

(declare-fun m!7930610 () Bool)

(assert (=> b!7251417 m!7930610))

(declare-fun m!7930612 () Bool)

(assert (=> b!7251417 m!7930612))

(declare-fun m!7930614 () Bool)

(assert (=> b!7251426 m!7930614))

(declare-fun m!7930616 () Bool)

(assert (=> b!7251426 m!7930616))

(declare-fun m!7930618 () Bool)

(assert (=> b!7251426 m!7930618))

(assert (=> b!7251426 m!7930606))

(declare-fun m!7930620 () Bool)

(assert (=> b!7251426 m!7930620))

(declare-fun m!7930622 () Bool)

(assert (=> b!7251426 m!7930622))

(declare-fun m!7930624 () Bool)

(assert (=> b!7251426 m!7930624))

(assert (=> b!7251426 m!7930622))

(declare-fun m!7930626 () Bool)

(assert (=> b!7251426 m!7930626))

(assert (=> b!7251426 m!7930616))

(declare-fun m!7930628 () Bool)

(assert (=> b!7251426 m!7930628))

(assert (=> b!7251426 m!7930624))

(declare-fun m!7930630 () Bool)

(assert (=> b!7251422 m!7930630))

(assert (=> b!7251422 m!7930630))

(declare-fun m!7930632 () Bool)

(assert (=> b!7251422 m!7930632))

(assert (=> b!7251424 m!7930596))

(declare-fun m!7930634 () Bool)

(assert (=> b!7251424 m!7930634))

(declare-fun m!7930636 () Bool)

(assert (=> b!7251424 m!7930636))

(declare-fun m!7930638 () Bool)

(assert (=> b!7251424 m!7930638))

(assert (=> b!7251424 m!7930594))

(assert (=> b!7251424 m!7930594))

(declare-fun m!7930640 () Bool)

(assert (=> b!7251425 m!7930640))

(declare-fun m!7930642 () Bool)

(assert (=> b!7251415 m!7930642))

(declare-fun m!7930644 () Bool)

(assert (=> b!7251415 m!7930644))

(declare-fun m!7930646 () Bool)

(assert (=> b!7251415 m!7930646))

(declare-fun m!7930648 () Bool)

(assert (=> b!7251415 m!7930648))

(declare-fun m!7930650 () Bool)

(assert (=> b!7251421 m!7930650))

(declare-fun m!7930652 () Bool)

(assert (=> b!7251421 m!7930652))

(assert (=> b!7251423 m!7930594))

(push 1)

(assert (not b!7251419))

(assert (not b!7251417))

(assert (not b!7251415))

(assert (not b!7251422))

(assert (not b!7251423))

(assert tp_is_empty!46757)

(assert (not b!7251421))

(assert (not b!7251424))

(assert (not start!705810))

(assert (not b!7251418))

(assert (not b!7251428))

(assert (not b!7251426))

(assert (not b!7251427))

(assert (not b!7251425))

(assert (not b!7251420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

