; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!706720 () Bool)

(assert start!706720)

(declare-fun b!7256557 () Bool)

(assert (=> b!7256557 true))

(declare-fun b!7256554 () Bool)

(assert (=> b!7256554 true))

(declare-fun b!7256543 () Bool)

(declare-fun e!4351216 () Bool)

(declare-fun tp!2038252 () Bool)

(assert (=> b!7256543 (= e!4351216 tp!2038252)))

(declare-fun b!7256544 () Bool)

(declare-fun e!4351214 () Bool)

(declare-fun e!4351207 () Bool)

(assert (=> b!7256544 (= e!4351214 e!4351207)))

(declare-fun res!2942642 () Bool)

(assert (=> b!7256544 (=> (not res!2942642) (not e!4351207))))

(declare-datatypes ((C!37606 0))(
  ( (C!37607 (val!28751 Int)) )
))
(declare-datatypes ((Regex!18666 0))(
  ( (ElementMatch!18666 (c!1349327 C!37606)) (Concat!27511 (regOne!37844 Regex!18666) (regTwo!37844 Regex!18666)) (EmptyExpr!18666) (Star!18666 (reg!18995 Regex!18666)) (EmptyLang!18666) (Union!18666 (regOne!37845 Regex!18666) (regTwo!37845 Regex!18666)) )
))
(declare-datatypes ((List!70578 0))(
  ( (Nil!70454) (Cons!70454 (h!76902 Regex!18666) (t!384642 List!70578)) )
))
(declare-datatypes ((Context!15212 0))(
  ( (Context!15213 (exprs!8106 List!70578)) )
))
(declare-fun ct1!232 () Context!15212)

(declare-datatypes ((List!70579 0))(
  ( (Nil!70455) (Cons!70455 (h!76903 C!37606) (t!384643 List!70579)) )
))
(declare-fun s1!1971 () List!70579)

(assert (=> b!7256544 (= res!2942642 (and (not (is-Nil!70454 (exprs!8106 ct1!232))) (is-Cons!70455 s1!1971)))))

(declare-fun lt!2587512 () (Set Context!15212))

(declare-fun lt!2587489 () Context!15212)

(assert (=> b!7256544 (= lt!2587512 (set.insert lt!2587489 (as set.empty (Set Context!15212))))))

(declare-fun lt!2587509 () List!70578)

(assert (=> b!7256544 (= lt!2587489 (Context!15213 lt!2587509))))

(declare-fun ct2!328 () Context!15212)

(declare-fun ++!16594 (List!70578 List!70578) List!70578)

(assert (=> b!7256544 (= lt!2587509 (++!16594 (exprs!8106 ct1!232) (exprs!8106 ct2!328)))))

(declare-fun lambda!445248 () Int)

(declare-datatypes ((Unit!163932 0))(
  ( (Unit!163933) )
))
(declare-fun lt!2587487 () Unit!163932)

(declare-fun lemmaConcatPreservesForall!1473 (List!70578 List!70578 Int) Unit!163932)

(assert (=> b!7256544 (= lt!2587487 (lemmaConcatPreservesForall!1473 (exprs!8106 ct1!232) (exprs!8106 ct2!328) lambda!445248))))

(declare-fun b!7256545 () Bool)

(declare-fun e!4351209 () Bool)

(declare-fun lt!2587492 () (Set Context!15212))

(declare-fun matchZipper!3576 ((Set Context!15212) List!70579) Bool)

(assert (=> b!7256545 (= e!4351209 (matchZipper!3576 lt!2587492 (t!384643 s1!1971)))))

(declare-fun b!7256546 () Bool)

(declare-fun e!4351219 () Unit!163932)

(declare-fun Unit!163934 () Unit!163932)

(assert (=> b!7256546 (= e!4351219 Unit!163934)))

(declare-fun b!7256547 () Bool)

(declare-fun e!4351208 () Bool)

(declare-fun e!4351213 () Bool)

(assert (=> b!7256547 (= e!4351208 e!4351213)))

(declare-fun res!2942641 () Bool)

(assert (=> b!7256547 (=> res!2942641 e!4351213)))

(declare-fun isEmpty!40573 (List!70578) Bool)

(assert (=> b!7256547 (= res!2942641 (isEmpty!40573 lt!2587509))))

(declare-fun lt!2587496 () Unit!163932)

(assert (=> b!7256547 (= lt!2587496 (lemmaConcatPreservesForall!1473 (exprs!8106 ct1!232) (exprs!8106 ct2!328) lambda!445248))))

(declare-fun lt!2587517 () (Set Context!15212))

(declare-fun derivationStepZipperUp!2490 (Context!15212 C!37606) (Set Context!15212))

(assert (=> b!7256547 (= lt!2587517 (derivationStepZipperUp!2490 lt!2587489 (h!76903 s1!1971)))))

(declare-fun lt!2587502 () Unit!163932)

(assert (=> b!7256547 (= lt!2587502 (lemmaConcatPreservesForall!1473 (exprs!8106 ct1!232) (exprs!8106 ct2!328) lambda!445248))))

(declare-fun lt!2587484 () Context!15212)

(declare-fun lt!2587488 () (Set Context!15212))

(declare-fun derivationStepZipperDown!2660 (Regex!18666 Context!15212 C!37606) (Set Context!15212))

(assert (=> b!7256547 (= lt!2587488 (derivationStepZipperDown!2660 (h!76902 (exprs!8106 ct1!232)) lt!2587484 (h!76903 s1!1971)))))

(declare-fun tail!14356 (List!70578) List!70578)

(assert (=> b!7256547 (= lt!2587484 (Context!15213 (tail!14356 (exprs!8106 ct1!232))))))

(declare-fun b!7256548 () Bool)

(declare-fun e!4351215 () Bool)

(declare-fun tp!2038253 () Bool)

(assert (=> b!7256548 (= e!4351215 tp!2038253)))

(declare-fun res!2942647 () Bool)

(assert (=> start!706720 (=> (not res!2942647) (not e!4351214))))

(declare-fun lt!2587491 () (Set Context!15212))

(assert (=> start!706720 (= res!2942647 (matchZipper!3576 lt!2587491 s1!1971))))

(assert (=> start!706720 (= lt!2587491 (set.insert ct1!232 (as set.empty (Set Context!15212))))))

(assert (=> start!706720 e!4351214))

(declare-fun inv!89676 (Context!15212) Bool)

(assert (=> start!706720 (and (inv!89676 ct1!232) e!4351215)))

(declare-fun e!4351218 () Bool)

(assert (=> start!706720 e!4351218))

(declare-fun e!4351212 () Bool)

(assert (=> start!706720 e!4351212))

(assert (=> start!706720 (and (inv!89676 ct2!328) e!4351216)))

(declare-fun b!7256549 () Bool)

(declare-fun tp_is_empty!46797 () Bool)

(declare-fun tp!2038251 () Bool)

(assert (=> b!7256549 (= e!4351212 (and tp_is_empty!46797 tp!2038251))))

(declare-fun b!7256550 () Bool)

(declare-fun e!4351211 () Bool)

(declare-fun lt!2587516 () (Set Context!15212))

(declare-fun lt!2587490 () List!70579)

(assert (=> b!7256550 (= e!4351211 (matchZipper!3576 lt!2587516 lt!2587490))))

(declare-fun b!7256551 () Bool)

(declare-fun e!4351217 () Bool)

(assert (=> b!7256551 (= e!4351217 e!4351208)))

(declare-fun res!2942639 () Bool)

(assert (=> b!7256551 (=> res!2942639 e!4351208)))

(assert (=> b!7256551 (= res!2942639 (isEmpty!40573 (exprs!8106 ct1!232)))))

(declare-fun lt!2587485 () (Set Context!15212))

(assert (=> b!7256551 (= lt!2587485 (derivationStepZipperUp!2490 ct1!232 (h!76903 s1!1971)))))

(declare-fun lt!2587494 () Unit!163932)

(declare-fun lt!2587508 () Context!15212)

(assert (=> b!7256551 (= lt!2587494 (lemmaConcatPreservesForall!1473 (exprs!8106 lt!2587508) (exprs!8106 ct2!328) lambda!445248))))

(declare-fun lt!2587513 () Context!15212)

(assert (=> b!7256551 (matchZipper!3576 (set.insert lt!2587513 (as set.empty (Set Context!15212))) lt!2587490)))

(declare-fun s2!1849 () List!70579)

(declare-fun ++!16595 (List!70579 List!70579) List!70579)

(assert (=> b!7256551 (= lt!2587490 (++!16595 (t!384643 s1!1971) s2!1849))))

(assert (=> b!7256551 (= lt!2587513 (Context!15213 (++!16594 (exprs!8106 lt!2587508) (exprs!8106 ct2!328))))))

(declare-fun lt!2587506 () Unit!163932)

(assert (=> b!7256551 (= lt!2587506 (lemmaConcatPreservesForall!1473 (exprs!8106 lt!2587508) (exprs!8106 ct2!328) lambda!445248))))

(declare-fun lt!2587504 () Unit!163932)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!411 (Context!15212 Context!15212 List!70579 List!70579) Unit!163932)

(assert (=> b!7256551 (= lt!2587504 (lemmaConcatenateContextMatchesConcatOfStrings!411 lt!2587508 ct2!328 (t!384643 s1!1971) s2!1849))))

(declare-fun lt!2587497 () (Set Context!15212))

(declare-fun lambda!445249 () Int)

(declare-fun getWitness!2237 ((Set Context!15212) Int) Context!15212)

(assert (=> b!7256551 (= lt!2587508 (getWitness!2237 lt!2587497 lambda!445249))))

(declare-fun b!7256552 () Bool)

(declare-fun Unit!163935 () Unit!163932)

(assert (=> b!7256552 (= e!4351219 Unit!163935)))

(declare-fun lt!2587515 () Unit!163932)

(assert (=> b!7256552 (= lt!2587515 (lemmaConcatPreservesForall!1473 (exprs!8106 ct1!232) (exprs!8106 ct2!328) lambda!445248))))

(assert (=> b!7256552 (= lt!2587492 (derivationStepZipperUp!2490 lt!2587484 (h!76903 s1!1971)))))

(declare-fun lt!2587493 () Unit!163932)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1721 ((Set Context!15212) (Set Context!15212) List!70579) Unit!163932)

(assert (=> b!7256552 (= lt!2587493 (lemmaZipperConcatMatchesSameAsBothZippers!1721 lt!2587488 lt!2587492 (t!384643 s1!1971)))))

(declare-fun res!2942643 () Bool)

(assert (=> b!7256552 (= res!2942643 (matchZipper!3576 lt!2587488 (t!384643 s1!1971)))))

(assert (=> b!7256552 (=> res!2942643 e!4351209)))

(assert (=> b!7256552 (= (matchZipper!3576 (set.union lt!2587488 lt!2587492) (t!384643 s1!1971)) e!4351209)))

(declare-fun lt!2587514 () Unit!163932)

(assert (=> b!7256552 (= lt!2587514 (lemmaConcatPreservesForall!1473 (exprs!8106 ct1!232) (exprs!8106 ct2!328) lambda!445248))))

(declare-fun lt!2587511 () Context!15212)

(assert (=> b!7256552 (= lt!2587516 (derivationStepZipperUp!2490 lt!2587511 (h!76903 s1!1971)))))

(declare-fun lt!2587486 () Unit!163932)

(declare-fun lt!2587495 () (Set Context!15212))

(assert (=> b!7256552 (= lt!2587486 (lemmaZipperConcatMatchesSameAsBothZippers!1721 lt!2587495 lt!2587516 lt!2587490))))

(declare-fun res!2942640 () Bool)

(assert (=> b!7256552 (= res!2942640 (matchZipper!3576 lt!2587495 lt!2587490))))

(assert (=> b!7256552 (=> res!2942640 e!4351211)))

(assert (=> b!7256552 (= (matchZipper!3576 (set.union lt!2587495 lt!2587516) lt!2587490) e!4351211)))

(declare-fun b!7256553 () Bool)

(declare-fun res!2942646 () Bool)

(assert (=> b!7256553 (=> (not res!2942646) (not e!4351214))))

(assert (=> b!7256553 (= res!2942646 (matchZipper!3576 (set.insert ct2!328 (as set.empty (Set Context!15212))) s2!1849))))

(assert (=> b!7256554 (= e!4351213 (inv!89676 lt!2587513))))

(declare-fun lt!2587519 () Unit!163932)

(assert (=> b!7256554 (= lt!2587519 (lemmaConcatPreservesForall!1473 (exprs!8106 lt!2587508) (exprs!8106 ct2!328) lambda!445248))))

(assert (=> b!7256554 (set.member lt!2587513 lt!2587517)))

(declare-fun lt!2587498 () Unit!163932)

(assert (=> b!7256554 (= lt!2587498 (lemmaConcatPreservesForall!1473 (exprs!8106 ct1!232) (exprs!8106 ct2!328) lambda!445248))))

(declare-fun lt!2587500 () Unit!163932)

(assert (=> b!7256554 (= lt!2587500 (lemmaConcatPreservesForall!1473 (exprs!8106 lt!2587508) (exprs!8106 ct2!328) lambda!445248))))

(declare-fun lt!2587501 () Unit!163932)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!21 (Context!15212 Context!15212 Context!15212 C!37606) Unit!163932)

(assert (=> b!7256554 (= lt!2587501 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!21 ct1!232 ct2!328 lt!2587508 (h!76903 s1!1971)))))

(declare-fun tail!14357 (List!70579) List!70579)

(assert (=> b!7256554 (= (tail!14357 (++!16595 s1!1971 s2!1849)) lt!2587490)))

(declare-fun lt!2587507 () Unit!163932)

(assert (=> b!7256554 (= lt!2587507 e!4351219)))

(declare-fun c!1349326 () Bool)

(declare-fun nullable!7926 (Regex!18666) Bool)

(assert (=> b!7256554 (= c!1349326 (nullable!7926 (h!76902 (exprs!8106 ct1!232))))))

(declare-fun lambda!445250 () Int)

(declare-fun flatMap!2831 ((Set Context!15212) Int) (Set Context!15212))

(assert (=> b!7256554 (= (flatMap!2831 lt!2587512 lambda!445250) (derivationStepZipperUp!2490 lt!2587489 (h!76903 s1!1971)))))

(declare-fun lt!2587510 () Unit!163932)

(declare-fun lemmaFlatMapOnSingletonSet!2235 ((Set Context!15212) Context!15212 Int) Unit!163932)

(assert (=> b!7256554 (= lt!2587510 (lemmaFlatMapOnSingletonSet!2235 lt!2587512 lt!2587489 lambda!445250))))

(declare-fun lt!2587518 () Unit!163932)

(assert (=> b!7256554 (= lt!2587518 (lemmaConcatPreservesForall!1473 (exprs!8106 ct1!232) (exprs!8106 ct2!328) lambda!445248))))

(assert (=> b!7256554 (= (flatMap!2831 lt!2587491 lambda!445250) (derivationStepZipperUp!2490 ct1!232 (h!76903 s1!1971)))))

(declare-fun lt!2587505 () Unit!163932)

(assert (=> b!7256554 (= lt!2587505 (lemmaFlatMapOnSingletonSet!2235 lt!2587491 ct1!232 lambda!445250))))

(assert (=> b!7256554 (= lt!2587495 (derivationStepZipperDown!2660 (h!76902 (exprs!8106 ct1!232)) lt!2587511 (h!76903 s1!1971)))))

(assert (=> b!7256554 (= lt!2587511 (Context!15213 (tail!14356 lt!2587509)))))

(declare-fun b!7256555 () Bool)

(declare-fun tp!2038254 () Bool)

(assert (=> b!7256555 (= e!4351218 (and tp_is_empty!46797 tp!2038254))))

(declare-fun b!7256556 () Bool)

(declare-fun e!4351210 () Bool)

(assert (=> b!7256556 (= e!4351207 e!4351210)))

(declare-fun res!2942645 () Bool)

(assert (=> b!7256556 (=> (not res!2942645) (not e!4351210))))

(assert (=> b!7256556 (= res!2942645 (matchZipper!3576 lt!2587497 (t!384643 s1!1971)))))

(declare-fun derivationStepZipper!3444 ((Set Context!15212) C!37606) (Set Context!15212))

(assert (=> b!7256556 (= lt!2587497 (derivationStepZipper!3444 lt!2587491 (h!76903 s1!1971)))))

(assert (=> b!7256557 (= e!4351210 (not e!4351217))))

(declare-fun res!2942644 () Bool)

(assert (=> b!7256557 (=> res!2942644 e!4351217)))

(declare-fun exists!4410 ((Set Context!15212) Int) Bool)

(assert (=> b!7256557 (= res!2942644 (not (exists!4410 lt!2587497 lambda!445249)))))

(declare-datatypes ((List!70580 0))(
  ( (Nil!70456) (Cons!70456 (h!76904 Context!15212) (t!384644 List!70580)) )
))
(declare-fun lt!2587499 () List!70580)

(declare-fun exists!4411 (List!70580 Int) Bool)

(assert (=> b!7256557 (exists!4411 lt!2587499 lambda!445249)))

(declare-fun lt!2587503 () Unit!163932)

(declare-fun lemmaZipperMatchesExistsMatchingContext!769 (List!70580 List!70579) Unit!163932)

(assert (=> b!7256557 (= lt!2587503 (lemmaZipperMatchesExistsMatchingContext!769 lt!2587499 (t!384643 s1!1971)))))

(declare-fun toList!11495 ((Set Context!15212)) List!70580)

(assert (=> b!7256557 (= lt!2587499 (toList!11495 lt!2587497))))

(assert (= (and start!706720 res!2942647) b!7256553))

(assert (= (and b!7256553 res!2942646) b!7256544))

(assert (= (and b!7256544 res!2942642) b!7256556))

(assert (= (and b!7256556 res!2942645) b!7256557))

(assert (= (and b!7256557 (not res!2942644)) b!7256551))

(assert (= (and b!7256551 (not res!2942639)) b!7256547))

(assert (= (and b!7256547 (not res!2942641)) b!7256554))

(assert (= (and b!7256554 c!1349326) b!7256552))

(assert (= (and b!7256554 (not c!1349326)) b!7256546))

(assert (= (and b!7256552 (not res!2942643)) b!7256545))

(assert (= (and b!7256552 (not res!2942640)) b!7256550))

(assert (= start!706720 b!7256548))

(assert (= (and start!706720 (is-Cons!70455 s1!1971)) b!7256555))

(assert (= (and start!706720 (is-Cons!70455 s2!1849)) b!7256549))

(assert (= start!706720 b!7256543))

(declare-fun m!7938088 () Bool)

(assert (=> b!7256550 m!7938088))

(declare-fun m!7938090 () Bool)

(assert (=> b!7256554 m!7938090))

(declare-fun m!7938092 () Bool)

(assert (=> b!7256554 m!7938092))

(declare-fun m!7938094 () Bool)

(assert (=> b!7256554 m!7938094))

(declare-fun m!7938096 () Bool)

(assert (=> b!7256554 m!7938096))

(declare-fun m!7938098 () Bool)

(assert (=> b!7256554 m!7938098))

(declare-fun m!7938100 () Bool)

(assert (=> b!7256554 m!7938100))

(declare-fun m!7938102 () Bool)

(assert (=> b!7256554 m!7938102))

(declare-fun m!7938104 () Bool)

(assert (=> b!7256554 m!7938104))

(declare-fun m!7938106 () Bool)

(assert (=> b!7256554 m!7938106))

(assert (=> b!7256554 m!7938100))

(declare-fun m!7938108 () Bool)

(assert (=> b!7256554 m!7938108))

(declare-fun m!7938110 () Bool)

(assert (=> b!7256554 m!7938110))

(declare-fun m!7938112 () Bool)

(assert (=> b!7256554 m!7938112))

(declare-fun m!7938114 () Bool)

(assert (=> b!7256554 m!7938114))

(declare-fun m!7938116 () Bool)

(assert (=> b!7256554 m!7938116))

(assert (=> b!7256554 m!7938104))

(declare-fun m!7938118 () Bool)

(assert (=> b!7256554 m!7938118))

(declare-fun m!7938120 () Bool)

(assert (=> b!7256554 m!7938120))

(assert (=> b!7256554 m!7938112))

(declare-fun m!7938122 () Bool)

(assert (=> start!706720 m!7938122))

(declare-fun m!7938124 () Bool)

(assert (=> start!706720 m!7938124))

(declare-fun m!7938126 () Bool)

(assert (=> start!706720 m!7938126))

(declare-fun m!7938128 () Bool)

(assert (=> start!706720 m!7938128))

(declare-fun m!7938130 () Bool)

(assert (=> b!7256552 m!7938130))

(declare-fun m!7938132 () Bool)

(assert (=> b!7256552 m!7938132))

(declare-fun m!7938134 () Bool)

(assert (=> b!7256552 m!7938134))

(assert (=> b!7256552 m!7938104))

(assert (=> b!7256552 m!7938104))

(declare-fun m!7938136 () Bool)

(assert (=> b!7256552 m!7938136))

(declare-fun m!7938138 () Bool)

(assert (=> b!7256552 m!7938138))

(declare-fun m!7938140 () Bool)

(assert (=> b!7256552 m!7938140))

(declare-fun m!7938142 () Bool)

(assert (=> b!7256552 m!7938142))

(declare-fun m!7938144 () Bool)

(assert (=> b!7256552 m!7938144))

(declare-fun m!7938146 () Bool)

(assert (=> b!7256557 m!7938146))

(declare-fun m!7938148 () Bool)

(assert (=> b!7256557 m!7938148))

(declare-fun m!7938150 () Bool)

(assert (=> b!7256557 m!7938150))

(declare-fun m!7938152 () Bool)

(assert (=> b!7256557 m!7938152))

(assert (=> b!7256547 m!7938104))

(declare-fun m!7938154 () Bool)

(assert (=> b!7256547 m!7938154))

(declare-fun m!7938156 () Bool)

(assert (=> b!7256547 m!7938156))

(declare-fun m!7938158 () Bool)

(assert (=> b!7256547 m!7938158))

(assert (=> b!7256547 m!7938104))

(assert (=> b!7256547 m!7938096))

(declare-fun m!7938160 () Bool)

(assert (=> b!7256551 m!7938160))

(declare-fun m!7938162 () Bool)

(assert (=> b!7256551 m!7938162))

(assert (=> b!7256551 m!7938160))

(declare-fun m!7938164 () Bool)

(assert (=> b!7256551 m!7938164))

(declare-fun m!7938166 () Bool)

(assert (=> b!7256551 m!7938166))

(assert (=> b!7256551 m!7938100))

(assert (=> b!7256551 m!7938102))

(declare-fun m!7938168 () Bool)

(assert (=> b!7256551 m!7938168))

(declare-fun m!7938170 () Bool)

(assert (=> b!7256551 m!7938170))

(assert (=> b!7256551 m!7938100))

(declare-fun m!7938172 () Bool)

(assert (=> b!7256551 m!7938172))

(declare-fun m!7938174 () Bool)

(assert (=> b!7256544 m!7938174))

(declare-fun m!7938176 () Bool)

(assert (=> b!7256544 m!7938176))

(assert (=> b!7256544 m!7938104))

(declare-fun m!7938178 () Bool)

(assert (=> b!7256556 m!7938178))

(declare-fun m!7938180 () Bool)

(assert (=> b!7256556 m!7938180))

(declare-fun m!7938182 () Bool)

(assert (=> b!7256553 m!7938182))

(assert (=> b!7256553 m!7938182))

(declare-fun m!7938184 () Bool)

(assert (=> b!7256553 m!7938184))

(declare-fun m!7938186 () Bool)

(assert (=> b!7256545 m!7938186))

(push 1)

(assert (not b!7256556))

(assert (not b!7256555))

(assert (not b!7256557))

(assert (not b!7256551))

(assert (not b!7256548))

(assert (not b!7256547))

(assert (not b!7256545))

(assert (not b!7256552))

(assert (not b!7256544))

(assert (not b!7256553))

(assert (not b!7256543))

(assert (not b!7256549))

(assert (not start!706720))

(assert tp_is_empty!46797)

(assert (not b!7256550))

(assert (not b!7256554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1907834 () Bool)

(declare-fun d!2256846 () Bool)

(assert (= bs!1907834 (and d!2256846 b!7256544)))

(declare-fun lambda!445290 () Int)

(assert (=> bs!1907834 (= lambda!445290 lambda!445248)))

(assert (=> d!2256846 (set.member (Context!15213 (++!16594 (exprs!8106 lt!2587508) (exprs!8106 ct2!328))) (derivationStepZipperUp!2490 (Context!15213 (++!16594 (exprs!8106 ct1!232) (exprs!8106 ct2!328))) (h!76903 s1!1971)))))

(declare-fun lt!2587636 () Unit!163932)

(assert (=> d!2256846 (= lt!2587636 (lemmaConcatPreservesForall!1473 (exprs!8106 ct1!232) (exprs!8106 ct2!328) lambda!445290))))

(declare-fun lt!2587635 () Unit!163932)

(assert (=> d!2256846 (= lt!2587635 (lemmaConcatPreservesForall!1473 (exprs!8106 lt!2587508) (exprs!8106 ct2!328) lambda!445290))))

(declare-fun lt!2587634 () Unit!163932)

(declare-fun choose!56114 (Context!15212 Context!15212 Context!15212 C!37606) Unit!163932)

(assert (=> d!2256846 (= lt!2587634 (choose!56114 ct1!232 ct2!328 lt!2587508 (h!76903 s1!1971)))))

(assert (=> d!2256846 (set.member lt!2587508 (derivationStepZipperUp!2490 ct1!232 (h!76903 s1!1971)))))

(assert (=> d!2256846 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!21 ct1!232 ct2!328 lt!2587508 (h!76903 s1!1971)) lt!2587634)))

(declare-fun bs!1907835 () Bool)

(assert (= bs!1907835 d!2256846))

(declare-fun m!7938288 () Bool)

(assert (=> bs!1907835 m!7938288))

(assert (=> bs!1907835 m!7938102))

(declare-fun m!7938290 () Bool)

(assert (=> bs!1907835 m!7938290))

(declare-fun m!7938292 () Bool)

(assert (=> bs!1907835 m!7938292))

(assert (=> bs!1907835 m!7938166))

(declare-fun m!7938294 () Bool)

(assert (=> bs!1907835 m!7938294))

(declare-fun m!7938296 () Bool)

(assert (=> bs!1907835 m!7938296))

(assert (=> bs!1907835 m!7938176))

(declare-fun m!7938298 () Bool)

(assert (=> bs!1907835 m!7938298))

(assert (=> b!7256554 d!2256846))

(declare-fun d!2256848 () Bool)

(assert (=> d!2256848 (= (tail!14356 lt!2587509) (t!384642 lt!2587509))))

(assert (=> b!7256554 d!2256848))

(declare-fun d!2256850 () Bool)

(declare-fun choose!56115 ((Set Context!15212) Int) (Set Context!15212))

(assert (=> d!2256850 (= (flatMap!2831 lt!2587491 lambda!445250) (choose!56115 lt!2587491 lambda!445250))))

(declare-fun bs!1907836 () Bool)

(assert (= bs!1907836 d!2256850))

(declare-fun m!7938300 () Bool)

(assert (=> bs!1907836 m!7938300))

(assert (=> b!7256554 d!2256850))

(declare-fun bs!1907837 () Bool)

(declare-fun d!2256852 () Bool)

(assert (= bs!1907837 (and d!2256852 b!7256544)))

(declare-fun lambda!445293 () Int)

(assert (=> bs!1907837 (= lambda!445293 lambda!445248)))

(declare-fun bs!1907838 () Bool)

(assert (= bs!1907838 (and d!2256852 d!2256846)))

(assert (=> bs!1907838 (= lambda!445293 lambda!445290)))

(declare-fun forall!17519 (List!70578 Int) Bool)

(assert (=> d!2256852 (= (inv!89676 lt!2587513) (forall!17519 (exprs!8106 lt!2587513) lambda!445293))))

(declare-fun bs!1907839 () Bool)

(assert (= bs!1907839 d!2256852))

(declare-fun m!7938302 () Bool)

(assert (=> bs!1907839 m!7938302))

(assert (=> b!7256554 d!2256852))

(declare-fun d!2256854 () Bool)

(assert (=> d!2256854 (= (flatMap!2831 lt!2587512 lambda!445250) (choose!56115 lt!2587512 lambda!445250))))

(declare-fun bs!1907840 () Bool)

(assert (= bs!1907840 d!2256854))

(declare-fun m!7938304 () Bool)

(assert (=> bs!1907840 m!7938304))

(assert (=> b!7256554 d!2256854))

(declare-fun d!2256856 () Bool)

(declare-fun dynLambda!28786 (Int Context!15212) (Set Context!15212))

(assert (=> d!2256856 (= (flatMap!2831 lt!2587512 lambda!445250) (dynLambda!28786 lambda!445250 lt!2587489))))

(declare-fun lt!2587639 () Unit!163932)

(declare-fun choose!56116 ((Set Context!15212) Context!15212 Int) Unit!163932)

(assert (=> d!2256856 (= lt!2587639 (choose!56116 lt!2587512 lt!2587489 lambda!445250))))

(assert (=> d!2256856 (= lt!2587512 (set.insert lt!2587489 (as set.empty (Set Context!15212))))))

(assert (=> d!2256856 (= (lemmaFlatMapOnSingletonSet!2235 lt!2587512 lt!2587489 lambda!445250) lt!2587639)))

(declare-fun b_lambda!279021 () Bool)

(assert (=> (not b_lambda!279021) (not d!2256856)))

(declare-fun bs!1907841 () Bool)

(assert (= bs!1907841 d!2256856))

(assert (=> bs!1907841 m!7938120))

(declare-fun m!7938306 () Bool)

(assert (=> bs!1907841 m!7938306))

(declare-fun m!7938308 () Bool)

(assert (=> bs!1907841 m!7938308))

(assert (=> bs!1907841 m!7938174))

(assert (=> b!7256554 d!2256856))

(declare-fun d!2256858 () Bool)

(declare-fun nullableFct!3115 (Regex!18666) Bool)

(assert (=> d!2256858 (= (nullable!7926 (h!76902 (exprs!8106 ct1!232))) (nullableFct!3115 (h!76902 (exprs!8106 ct1!232))))))

(declare-fun bs!1907842 () Bool)

(assert (= bs!1907842 d!2256858))

(declare-fun m!7938310 () Bool)

(assert (=> bs!1907842 m!7938310))

(assert (=> b!7256554 d!2256858))

(declare-fun lt!2587642 () List!70579)

(declare-fun e!4351264 () Bool)

(declare-fun b!7256622 () Bool)

(assert (=> b!7256622 (= e!4351264 (or (not (= s2!1849 Nil!70455)) (= lt!2587642 s1!1971)))))

(declare-fun b!7256621 () Bool)

(declare-fun res!2942679 () Bool)

(assert (=> b!7256621 (=> (not res!2942679) (not e!4351264))))

(declare-fun size!41742 (List!70579) Int)

(assert (=> b!7256621 (= res!2942679 (= (size!41742 lt!2587642) (+ (size!41742 s1!1971) (size!41742 s2!1849))))))

(declare-fun b!7256619 () Bool)

(declare-fun e!4351263 () List!70579)

(assert (=> b!7256619 (= e!4351263 s2!1849)))

(declare-fun b!7256620 () Bool)

(assert (=> b!7256620 (= e!4351263 (Cons!70455 (h!76903 s1!1971) (++!16595 (t!384643 s1!1971) s2!1849)))))

(declare-fun d!2256860 () Bool)

(assert (=> d!2256860 e!4351264))

(declare-fun res!2942680 () Bool)

(assert (=> d!2256860 (=> (not res!2942680) (not e!4351264))))

(declare-fun content!14648 (List!70579) (Set C!37606))

(assert (=> d!2256860 (= res!2942680 (= (content!14648 lt!2587642) (set.union (content!14648 s1!1971) (content!14648 s2!1849))))))

(assert (=> d!2256860 (= lt!2587642 e!4351263)))

(declare-fun c!1349345 () Bool)

(assert (=> d!2256860 (= c!1349345 (is-Nil!70455 s1!1971))))

(assert (=> d!2256860 (= (++!16595 s1!1971 s2!1849) lt!2587642)))

(assert (= (and d!2256860 c!1349345) b!7256619))

(assert (= (and d!2256860 (not c!1349345)) b!7256620))

(assert (= (and d!2256860 res!2942680) b!7256621))

(assert (= (and b!7256621 res!2942679) b!7256622))

(declare-fun m!7938312 () Bool)

(assert (=> b!7256621 m!7938312))

(declare-fun m!7938314 () Bool)

(assert (=> b!7256621 m!7938314))

(declare-fun m!7938316 () Bool)

(assert (=> b!7256621 m!7938316))

(assert (=> b!7256620 m!7938170))

(declare-fun m!7938318 () Bool)

(assert (=> d!2256860 m!7938318))

(declare-fun m!7938320 () Bool)

(assert (=> d!2256860 m!7938320))

(declare-fun m!7938322 () Bool)

(assert (=> d!2256860 m!7938322))

(assert (=> b!7256554 d!2256860))

(declare-fun d!2256862 () Bool)

(assert (=> d!2256862 (forall!17519 (++!16594 (exprs!8106 ct1!232) (exprs!8106 ct2!328)) lambda!445248)))

(declare-fun lt!2587645 () Unit!163932)

(declare-fun choose!56117 (List!70578 List!70578 Int) Unit!163932)

(assert (=> d!2256862 (= lt!2587645 (choose!56117 (exprs!8106 ct1!232) (exprs!8106 ct2!328) lambda!445248))))

(assert (=> d!2256862 (forall!17519 (exprs!8106 ct1!232) lambda!445248)))

(assert (=> d!2256862 (= (lemmaConcatPreservesForall!1473 (exprs!8106 ct1!232) (exprs!8106 ct2!328) lambda!445248) lt!2587645)))

(declare-fun bs!1907843 () Bool)

(assert (= bs!1907843 d!2256862))

(assert (=> bs!1907843 m!7938176))

(assert (=> bs!1907843 m!7938176))

(declare-fun m!7938324 () Bool)

(assert (=> bs!1907843 m!7938324))

(declare-fun m!7938326 () Bool)

(assert (=> bs!1907843 m!7938326))

(declare-fun m!7938328 () Bool)

(assert (=> bs!1907843 m!7938328))

(assert (=> b!7256554 d!2256862))

(declare-fun b!7256633 () Bool)

(declare-fun e!4351272 () (Set Context!15212))

(declare-fun e!4351271 () (Set Context!15212))

(assert (=> b!7256633 (= e!4351272 e!4351271)))

(declare-fun c!1349350 () Bool)

(assert (=> b!7256633 (= c!1349350 (is-Cons!70454 (exprs!8106 ct1!232)))))

(declare-fun b!7256634 () Bool)

(declare-fun e!4351273 () Bool)

(assert (=> b!7256634 (= e!4351273 (nullable!7926 (h!76902 (exprs!8106 ct1!232))))))

(declare-fun b!7256635 () Bool)

(assert (=> b!7256635 (= e!4351271 (as set.empty (Set Context!15212)))))

(declare-fun call!661292 () (Set Context!15212))

(declare-fun b!7256636 () Bool)

(assert (=> b!7256636 (= e!4351272 (set.union call!661292 (derivationStepZipperUp!2490 (Context!15213 (t!384642 (exprs!8106 ct1!232))) (h!76903 s1!1971))))))

(declare-fun b!7256637 () Bool)

(assert (=> b!7256637 (= e!4351271 call!661292)))

(declare-fun bm!661287 () Bool)

(assert (=> bm!661287 (= call!661292 (derivationStepZipperDown!2660 (h!76902 (exprs!8106 ct1!232)) (Context!15213 (t!384642 (exprs!8106 ct1!232))) (h!76903 s1!1971)))))

(declare-fun d!2256864 () Bool)

(declare-fun c!1349351 () Bool)

(assert (=> d!2256864 (= c!1349351 e!4351273)))

(declare-fun res!2942683 () Bool)

(assert (=> d!2256864 (=> (not res!2942683) (not e!4351273))))

(assert (=> d!2256864 (= res!2942683 (is-Cons!70454 (exprs!8106 ct1!232)))))

(assert (=> d!2256864 (= (derivationStepZipperUp!2490 ct1!232 (h!76903 s1!1971)) e!4351272)))

(assert (= (and d!2256864 res!2942683) b!7256634))

(assert (= (and d!2256864 c!1349351) b!7256636))

(assert (= (and d!2256864 (not c!1349351)) b!7256633))

(assert (= (and b!7256633 c!1349350) b!7256637))

(assert (= (and b!7256633 (not c!1349350)) b!7256635))

(assert (= (or b!7256636 b!7256637) bm!661287))

(assert (=> b!7256634 m!7938110))

(declare-fun m!7938330 () Bool)

(assert (=> b!7256636 m!7938330))

(declare-fun m!7938332 () Bool)

(assert (=> bm!661287 m!7938332))

(assert (=> b!7256554 d!2256864))

(declare-fun d!2256866 () Bool)

(assert (=> d!2256866 (= (tail!14357 (++!16595 s1!1971 s2!1849)) (t!384643 (++!16595 s1!1971 s2!1849)))))

(assert (=> b!7256554 d!2256866))

(declare-fun call!661305 () (Set Context!15212))

(declare-fun c!1349363 () Bool)

(declare-fun bm!661300 () Bool)

(declare-fun call!661306 () List!70578)

(declare-fun c!1349362 () Bool)

(declare-fun c!1349366 () Bool)

(assert (=> bm!661300 (= call!661305 (derivationStepZipperDown!2660 (ite c!1349363 (regOne!37845 (h!76902 (exprs!8106 ct1!232))) (ite c!1349366 (regTwo!37844 (h!76902 (exprs!8106 ct1!232))) (ite c!1349362 (regOne!37844 (h!76902 (exprs!8106 ct1!232))) (reg!18995 (h!76902 (exprs!8106 ct1!232)))))) (ite (or c!1349363 c!1349366) lt!2587511 (Context!15213 call!661306)) (h!76903 s1!1971)))))

(declare-fun b!7256660 () Bool)

(declare-fun e!4351286 () Bool)

(assert (=> b!7256660 (= e!4351286 (nullable!7926 (regOne!37844 (h!76902 (exprs!8106 ct1!232)))))))

(declare-fun b!7256661 () Bool)

(declare-fun c!1349365 () Bool)

(assert (=> b!7256661 (= c!1349365 (is-Star!18666 (h!76902 (exprs!8106 ct1!232))))))

(declare-fun e!4351288 () (Set Context!15212))

(declare-fun e!4351289 () (Set Context!15212))

(assert (=> b!7256661 (= e!4351288 e!4351289)))

(declare-fun b!7256662 () Bool)

(assert (=> b!7256662 (= e!4351289 (as set.empty (Set Context!15212)))))

(declare-fun bm!661301 () Bool)

(declare-fun call!661309 () (Set Context!15212))

(declare-fun call!661308 () (Set Context!15212))

(assert (=> bm!661301 (= call!661309 call!661308)))

(declare-fun b!7256663 () Bool)

(declare-fun e!4351290 () (Set Context!15212))

(declare-fun e!4351291 () (Set Context!15212))

(assert (=> b!7256663 (= e!4351290 e!4351291)))

(assert (=> b!7256663 (= c!1349363 (is-Union!18666 (h!76902 (exprs!8106 ct1!232))))))

(declare-fun b!7256664 () Bool)

(assert (=> b!7256664 (= e!4351290 (set.insert lt!2587511 (as set.empty (Set Context!15212))))))

(declare-fun b!7256665 () Bool)

(assert (=> b!7256665 (= e!4351288 call!661309)))

(declare-fun d!2256868 () Bool)

(declare-fun c!1349364 () Bool)

(assert (=> d!2256868 (= c!1349364 (and (is-ElementMatch!18666 (h!76902 (exprs!8106 ct1!232))) (= (c!1349327 (h!76902 (exprs!8106 ct1!232))) (h!76903 s1!1971))))))

(assert (=> d!2256868 (= (derivationStepZipperDown!2660 (h!76902 (exprs!8106 ct1!232)) lt!2587511 (h!76903 s1!1971)) e!4351290)))

(declare-fun b!7256666 () Bool)

(assert (=> b!7256666 (= c!1349366 e!4351286)))

(declare-fun res!2942686 () Bool)

(assert (=> b!7256666 (=> (not res!2942686) (not e!4351286))))

(assert (=> b!7256666 (= res!2942686 (is-Concat!27511 (h!76902 (exprs!8106 ct1!232))))))

(declare-fun e!4351287 () (Set Context!15212))

(assert (=> b!7256666 (= e!4351291 e!4351287)))

(declare-fun b!7256667 () Bool)

(declare-fun call!661307 () (Set Context!15212))

(assert (=> b!7256667 (= e!4351291 (set.union call!661305 call!661307))))

(declare-fun b!7256668 () Bool)

(assert (=> b!7256668 (= e!4351287 (set.union call!661307 call!661308))))

(declare-fun b!7256669 () Bool)

(assert (=> b!7256669 (= e!4351289 call!661309)))

(declare-fun bm!661302 () Bool)

(assert (=> bm!661302 (= call!661308 call!661305)))

(declare-fun bm!661303 () Bool)

(declare-fun call!661310 () List!70578)

(declare-fun $colon$colon!2930 (List!70578 Regex!18666) List!70578)

(assert (=> bm!661303 (= call!661310 ($colon$colon!2930 (exprs!8106 lt!2587511) (ite (or c!1349366 c!1349362) (regTwo!37844 (h!76902 (exprs!8106 ct1!232))) (h!76902 (exprs!8106 ct1!232)))))))

(declare-fun bm!661304 () Bool)

(assert (=> bm!661304 (= call!661306 call!661310)))

(declare-fun bm!661305 () Bool)

(assert (=> bm!661305 (= call!661307 (derivationStepZipperDown!2660 (ite c!1349363 (regTwo!37845 (h!76902 (exprs!8106 ct1!232))) (regOne!37844 (h!76902 (exprs!8106 ct1!232)))) (ite c!1349363 lt!2587511 (Context!15213 call!661310)) (h!76903 s1!1971)))))

(declare-fun b!7256670 () Bool)

(assert (=> b!7256670 (= e!4351287 e!4351288)))

(assert (=> b!7256670 (= c!1349362 (is-Concat!27511 (h!76902 (exprs!8106 ct1!232))))))

(assert (= (and d!2256868 c!1349364) b!7256664))

(assert (= (and d!2256868 (not c!1349364)) b!7256663))

(assert (= (and b!7256663 c!1349363) b!7256667))

(assert (= (and b!7256663 (not c!1349363)) b!7256666))

(assert (= (and b!7256666 res!2942686) b!7256660))

(assert (= (and b!7256666 c!1349366) b!7256668))

(assert (= (and b!7256666 (not c!1349366)) b!7256670))

(assert (= (and b!7256670 c!1349362) b!7256665))

(assert (= (and b!7256670 (not c!1349362)) b!7256661))

(assert (= (and b!7256661 c!1349365) b!7256669))

(assert (= (and b!7256661 (not c!1349365)) b!7256662))

(assert (= (or b!7256665 b!7256669) bm!661304))

(assert (= (or b!7256665 b!7256669) bm!661301))

(assert (= (or b!7256668 bm!661304) bm!661303))

(assert (= (or b!7256668 bm!661301) bm!661302))

(assert (= (or b!7256667 b!7256668) bm!661305))

(assert (= (or b!7256667 bm!661302) bm!661300))

(declare-fun m!7938334 () Bool)

(assert (=> bm!661305 m!7938334))

(declare-fun m!7938336 () Bool)

(assert (=> bm!661303 m!7938336))

(declare-fun m!7938338 () Bool)

(assert (=> bm!661300 m!7938338))

(declare-fun m!7938340 () Bool)

(assert (=> b!7256664 m!7938340))

(declare-fun m!7938342 () Bool)

(assert (=> b!7256660 m!7938342))

(assert (=> b!7256554 d!2256868))

(declare-fun b!7256671 () Bool)

(declare-fun e!4351293 () (Set Context!15212))

(declare-fun e!4351292 () (Set Context!15212))

(assert (=> b!7256671 (= e!4351293 e!4351292)))

(declare-fun c!1349367 () Bool)

(assert (=> b!7256671 (= c!1349367 (is-Cons!70454 (exprs!8106 lt!2587489)))))

(declare-fun b!7256672 () Bool)

(declare-fun e!4351294 () Bool)

(assert (=> b!7256672 (= e!4351294 (nullable!7926 (h!76902 (exprs!8106 lt!2587489))))))

(declare-fun b!7256673 () Bool)

(assert (=> b!7256673 (= e!4351292 (as set.empty (Set Context!15212)))))

(declare-fun b!7256674 () Bool)

(declare-fun call!661311 () (Set Context!15212))

(assert (=> b!7256674 (= e!4351293 (set.union call!661311 (derivationStepZipperUp!2490 (Context!15213 (t!384642 (exprs!8106 lt!2587489))) (h!76903 s1!1971))))))

(declare-fun b!7256675 () Bool)

(assert (=> b!7256675 (= e!4351292 call!661311)))

(declare-fun bm!661306 () Bool)

(assert (=> bm!661306 (= call!661311 (derivationStepZipperDown!2660 (h!76902 (exprs!8106 lt!2587489)) (Context!15213 (t!384642 (exprs!8106 lt!2587489))) (h!76903 s1!1971)))))

(declare-fun d!2256870 () Bool)

(declare-fun c!1349368 () Bool)

(assert (=> d!2256870 (= c!1349368 e!4351294)))

(declare-fun res!2942687 () Bool)

(assert (=> d!2256870 (=> (not res!2942687) (not e!4351294))))

(assert (=> d!2256870 (= res!2942687 (is-Cons!70454 (exprs!8106 lt!2587489)))))

(assert (=> d!2256870 (= (derivationStepZipperUp!2490 lt!2587489 (h!76903 s1!1971)) e!4351293)))

(assert (= (and d!2256870 res!2942687) b!7256672))

(assert (= (and d!2256870 c!1349368) b!7256674))

(assert (= (and d!2256870 (not c!1349368)) b!7256671))

(assert (= (and b!7256671 c!1349367) b!7256675))

(assert (= (and b!7256671 (not c!1349367)) b!7256673))

(assert (= (or b!7256674 b!7256675) bm!661306))

(declare-fun m!7938344 () Bool)

(assert (=> b!7256672 m!7938344))

(declare-fun m!7938346 () Bool)

(assert (=> b!7256674 m!7938346))

(declare-fun m!7938348 () Bool)

(assert (=> bm!661306 m!7938348))

(assert (=> b!7256554 d!2256870))

(declare-fun d!2256872 () Bool)

(assert (=> d!2256872 (forall!17519 (++!16594 (exprs!8106 lt!2587508) (exprs!8106 ct2!328)) lambda!445248)))

(declare-fun lt!2587646 () Unit!163932)

(assert (=> d!2256872 (= lt!2587646 (choose!56117 (exprs!8106 lt!2587508) (exprs!8106 ct2!328) lambda!445248))))

(assert (=> d!2256872 (forall!17519 (exprs!8106 lt!2587508) lambda!445248)))

(assert (=> d!2256872 (= (lemmaConcatPreservesForall!1473 (exprs!8106 lt!2587508) (exprs!8106 ct2!328) lambda!445248) lt!2587646)))

(declare-fun bs!1907844 () Bool)

(assert (= bs!1907844 d!2256872))

(assert (=> bs!1907844 m!7938166))

(assert (=> bs!1907844 m!7938166))

(declare-fun m!7938350 () Bool)

(assert (=> bs!1907844 m!7938350))

(declare-fun m!7938352 () Bool)

(assert (=> bs!1907844 m!7938352))

(declare-fun m!7938354 () Bool)

(assert (=> bs!1907844 m!7938354))

(assert (=> b!7256554 d!2256872))

(declare-fun d!2256874 () Bool)

(assert (=> d!2256874 (= (flatMap!2831 lt!2587491 lambda!445250) (dynLambda!28786 lambda!445250 ct1!232))))

(declare-fun lt!2587647 () Unit!163932)

(assert (=> d!2256874 (= lt!2587647 (choose!56116 lt!2587491 ct1!232 lambda!445250))))

(assert (=> d!2256874 (= lt!2587491 (set.insert ct1!232 (as set.empty (Set Context!15212))))))

(assert (=> d!2256874 (= (lemmaFlatMapOnSingletonSet!2235 lt!2587491 ct1!232 lambda!445250) lt!2587647)))

(declare-fun b_lambda!279023 () Bool)

(assert (=> (not b_lambda!279023) (not d!2256874)))

(declare-fun bs!1907845 () Bool)

(assert (= bs!1907845 d!2256874))

(assert (=> bs!1907845 m!7938108))

(declare-fun m!7938356 () Bool)

(assert (=> bs!1907845 m!7938356))

(declare-fun m!7938358 () Bool)

(assert (=> bs!1907845 m!7938358))

(assert (=> bs!1907845 m!7938124))

(assert (=> b!7256554 d!2256874))

(declare-fun d!2256876 () Bool)

(assert (=> d!2256876 (= (tail!14356 (exprs!8106 ct1!232)) (t!384642 (exprs!8106 ct1!232)))))

(assert (=> b!7256547 d!2256876))

(declare-fun d!2256878 () Bool)

(assert (=> d!2256878 (= (isEmpty!40573 lt!2587509) (is-Nil!70454 lt!2587509))))

(assert (=> b!7256547 d!2256878))

(declare-fun call!661312 () (Set Context!15212))

(declare-fun c!1349373 () Bool)

(declare-fun bm!661307 () Bool)

(declare-fun c!1349370 () Bool)

(declare-fun call!661313 () List!70578)

(declare-fun c!1349369 () Bool)

(assert (=> bm!661307 (= call!661312 (derivationStepZipperDown!2660 (ite c!1349370 (regOne!37845 (h!76902 (exprs!8106 ct1!232))) (ite c!1349373 (regTwo!37844 (h!76902 (exprs!8106 ct1!232))) (ite c!1349369 (regOne!37844 (h!76902 (exprs!8106 ct1!232))) (reg!18995 (h!76902 (exprs!8106 ct1!232)))))) (ite (or c!1349370 c!1349373) lt!2587484 (Context!15213 call!661313)) (h!76903 s1!1971)))))

(declare-fun b!7256676 () Bool)

(declare-fun e!4351295 () Bool)

(assert (=> b!7256676 (= e!4351295 (nullable!7926 (regOne!37844 (h!76902 (exprs!8106 ct1!232)))))))

(declare-fun b!7256677 () Bool)

(declare-fun c!1349372 () Bool)

(assert (=> b!7256677 (= c!1349372 (is-Star!18666 (h!76902 (exprs!8106 ct1!232))))))

(declare-fun e!4351297 () (Set Context!15212))

(declare-fun e!4351298 () (Set Context!15212))

(assert (=> b!7256677 (= e!4351297 e!4351298)))

(declare-fun b!7256678 () Bool)

(assert (=> b!7256678 (= e!4351298 (as set.empty (Set Context!15212)))))

(declare-fun bm!661308 () Bool)

(declare-fun call!661316 () (Set Context!15212))

(declare-fun call!661315 () (Set Context!15212))

(assert (=> bm!661308 (= call!661316 call!661315)))

(declare-fun b!7256679 () Bool)

(declare-fun e!4351299 () (Set Context!15212))

(declare-fun e!4351300 () (Set Context!15212))

(assert (=> b!7256679 (= e!4351299 e!4351300)))

(assert (=> b!7256679 (= c!1349370 (is-Union!18666 (h!76902 (exprs!8106 ct1!232))))))

(declare-fun b!7256680 () Bool)

(assert (=> b!7256680 (= e!4351299 (set.insert lt!2587484 (as set.empty (Set Context!15212))))))

(declare-fun b!7256681 () Bool)

(assert (=> b!7256681 (= e!4351297 call!661316)))

(declare-fun d!2256880 () Bool)

(declare-fun c!1349371 () Bool)

(assert (=> d!2256880 (= c!1349371 (and (is-ElementMatch!18666 (h!76902 (exprs!8106 ct1!232))) (= (c!1349327 (h!76902 (exprs!8106 ct1!232))) (h!76903 s1!1971))))))

(assert (=> d!2256880 (= (derivationStepZipperDown!2660 (h!76902 (exprs!8106 ct1!232)) lt!2587484 (h!76903 s1!1971)) e!4351299)))

(declare-fun b!7256682 () Bool)

(assert (=> b!7256682 (= c!1349373 e!4351295)))

(declare-fun res!2942688 () Bool)

(assert (=> b!7256682 (=> (not res!2942688) (not e!4351295))))

(assert (=> b!7256682 (= res!2942688 (is-Concat!27511 (h!76902 (exprs!8106 ct1!232))))))

(declare-fun e!4351296 () (Set Context!15212))

(assert (=> b!7256682 (= e!4351300 e!4351296)))

(declare-fun b!7256683 () Bool)

(declare-fun call!661314 () (Set Context!15212))

(assert (=> b!7256683 (= e!4351300 (set.union call!661312 call!661314))))

(declare-fun b!7256684 () Bool)

(assert (=> b!7256684 (= e!4351296 (set.union call!661314 call!661315))))

(declare-fun b!7256685 () Bool)

(assert (=> b!7256685 (= e!4351298 call!661316)))

(declare-fun bm!661309 () Bool)

(assert (=> bm!661309 (= call!661315 call!661312)))

(declare-fun call!661317 () List!70578)

(declare-fun bm!661310 () Bool)

(assert (=> bm!661310 (= call!661317 ($colon$colon!2930 (exprs!8106 lt!2587484) (ite (or c!1349373 c!1349369) (regTwo!37844 (h!76902 (exprs!8106 ct1!232))) (h!76902 (exprs!8106 ct1!232)))))))

(declare-fun bm!661311 () Bool)

(assert (=> bm!661311 (= call!661313 call!661317)))

(declare-fun bm!661312 () Bool)

(assert (=> bm!661312 (= call!661314 (derivationStepZipperDown!2660 (ite c!1349370 (regTwo!37845 (h!76902 (exprs!8106 ct1!232))) (regOne!37844 (h!76902 (exprs!8106 ct1!232)))) (ite c!1349370 lt!2587484 (Context!15213 call!661317)) (h!76903 s1!1971)))))

(declare-fun b!7256686 () Bool)

(assert (=> b!7256686 (= e!4351296 e!4351297)))

(assert (=> b!7256686 (= c!1349369 (is-Concat!27511 (h!76902 (exprs!8106 ct1!232))))))

(assert (= (and d!2256880 c!1349371) b!7256680))

(assert (= (and d!2256880 (not c!1349371)) b!7256679))

(assert (= (and b!7256679 c!1349370) b!7256683))

(assert (= (and b!7256679 (not c!1349370)) b!7256682))

(assert (= (and b!7256682 res!2942688) b!7256676))

(assert (= (and b!7256682 c!1349373) b!7256684))

(assert (= (and b!7256682 (not c!1349373)) b!7256686))

(assert (= (and b!7256686 c!1349369) b!7256681))

(assert (= (and b!7256686 (not c!1349369)) b!7256677))

(assert (= (and b!7256677 c!1349372) b!7256685))

(assert (= (and b!7256677 (not c!1349372)) b!7256678))

(assert (= (or b!7256681 b!7256685) bm!661311))

(assert (= (or b!7256681 b!7256685) bm!661308))

(assert (= (or b!7256684 bm!661311) bm!661310))

(assert (= (or b!7256684 bm!661308) bm!661309))

(assert (= (or b!7256683 b!7256684) bm!661312))

(assert (= (or b!7256683 bm!661309) bm!661307))

(declare-fun m!7938360 () Bool)

(assert (=> bm!661312 m!7938360))

(declare-fun m!7938362 () Bool)

(assert (=> bm!661310 m!7938362))

(declare-fun m!7938364 () Bool)

(assert (=> bm!661307 m!7938364))

(declare-fun m!7938366 () Bool)

(assert (=> b!7256680 m!7938366))

(assert (=> b!7256676 m!7938342))

(assert (=> b!7256547 d!2256880))

(assert (=> b!7256547 d!2256862))

(assert (=> b!7256547 d!2256870))

(declare-fun b!7256687 () Bool)

(declare-fun e!4351302 () (Set Context!15212))

(declare-fun e!4351301 () (Set Context!15212))

(assert (=> b!7256687 (= e!4351302 e!4351301)))

(declare-fun c!1349374 () Bool)

(assert (=> b!7256687 (= c!1349374 (is-Cons!70454 (exprs!8106 lt!2587511)))))

(declare-fun b!7256688 () Bool)

(declare-fun e!4351303 () Bool)

(assert (=> b!7256688 (= e!4351303 (nullable!7926 (h!76902 (exprs!8106 lt!2587511))))))

(declare-fun b!7256689 () Bool)

(assert (=> b!7256689 (= e!4351301 (as set.empty (Set Context!15212)))))

(declare-fun call!661318 () (Set Context!15212))

(declare-fun b!7256690 () Bool)

(assert (=> b!7256690 (= e!4351302 (set.union call!661318 (derivationStepZipperUp!2490 (Context!15213 (t!384642 (exprs!8106 lt!2587511))) (h!76903 s1!1971))))))

(declare-fun b!7256691 () Bool)

(assert (=> b!7256691 (= e!4351301 call!661318)))

(declare-fun bm!661313 () Bool)

(assert (=> bm!661313 (= call!661318 (derivationStepZipperDown!2660 (h!76902 (exprs!8106 lt!2587511)) (Context!15213 (t!384642 (exprs!8106 lt!2587511))) (h!76903 s1!1971)))))

(declare-fun d!2256882 () Bool)

(declare-fun c!1349375 () Bool)

(assert (=> d!2256882 (= c!1349375 e!4351303)))

(declare-fun res!2942689 () Bool)

(assert (=> d!2256882 (=> (not res!2942689) (not e!4351303))))

(assert (=> d!2256882 (= res!2942689 (is-Cons!70454 (exprs!8106 lt!2587511)))))

(assert (=> d!2256882 (= (derivationStepZipperUp!2490 lt!2587511 (h!76903 s1!1971)) e!4351302)))

(assert (= (and d!2256882 res!2942689) b!7256688))

(assert (= (and d!2256882 c!1349375) b!7256690))

(assert (= (and d!2256882 (not c!1349375)) b!7256687))

(assert (= (and b!7256687 c!1349374) b!7256691))

(assert (= (and b!7256687 (not c!1349374)) b!7256689))

(assert (= (or b!7256690 b!7256691) bm!661313))

(declare-fun m!7938368 () Bool)

(assert (=> b!7256688 m!7938368))

(declare-fun m!7938370 () Bool)

(assert (=> b!7256690 m!7938370))

(declare-fun m!7938372 () Bool)

(assert (=> bm!661313 m!7938372))

(assert (=> b!7256552 d!2256882))

(declare-fun b!7256692 () Bool)

(declare-fun e!4351305 () (Set Context!15212))

(declare-fun e!4351304 () (Set Context!15212))

(assert (=> b!7256692 (= e!4351305 e!4351304)))

(declare-fun c!1349376 () Bool)

(assert (=> b!7256692 (= c!1349376 (is-Cons!70454 (exprs!8106 lt!2587484)))))

(declare-fun b!7256693 () Bool)

(declare-fun e!4351306 () Bool)

(assert (=> b!7256693 (= e!4351306 (nullable!7926 (h!76902 (exprs!8106 lt!2587484))))))

(declare-fun b!7256694 () Bool)

(assert (=> b!7256694 (= e!4351304 (as set.empty (Set Context!15212)))))

(declare-fun b!7256695 () Bool)

(declare-fun call!661319 () (Set Context!15212))

(assert (=> b!7256695 (= e!4351305 (set.union call!661319 (derivationStepZipperUp!2490 (Context!15213 (t!384642 (exprs!8106 lt!2587484))) (h!76903 s1!1971))))))

(declare-fun b!7256696 () Bool)

(assert (=> b!7256696 (= e!4351304 call!661319)))

(declare-fun bm!661314 () Bool)

(assert (=> bm!661314 (= call!661319 (derivationStepZipperDown!2660 (h!76902 (exprs!8106 lt!2587484)) (Context!15213 (t!384642 (exprs!8106 lt!2587484))) (h!76903 s1!1971)))))

(declare-fun d!2256884 () Bool)

(declare-fun c!1349377 () Bool)

(assert (=> d!2256884 (= c!1349377 e!4351306)))

(declare-fun res!2942690 () Bool)

(assert (=> d!2256884 (=> (not res!2942690) (not e!4351306))))

(assert (=> d!2256884 (= res!2942690 (is-Cons!70454 (exprs!8106 lt!2587484)))))

(assert (=> d!2256884 (= (derivationStepZipperUp!2490 lt!2587484 (h!76903 s1!1971)) e!4351305)))

(assert (= (and d!2256884 res!2942690) b!7256693))

(assert (= (and d!2256884 c!1349377) b!7256695))

(assert (= (and d!2256884 (not c!1349377)) b!7256692))

(assert (= (and b!7256692 c!1349376) b!7256696))

(assert (= (and b!7256692 (not c!1349376)) b!7256694))

(assert (= (or b!7256695 b!7256696) bm!661314))

(declare-fun m!7938374 () Bool)

(assert (=> b!7256693 m!7938374))

(declare-fun m!7938376 () Bool)

(assert (=> b!7256695 m!7938376))

(declare-fun m!7938378 () Bool)

(assert (=> bm!661314 m!7938378))

(assert (=> b!7256552 d!2256884))

(declare-fun d!2256886 () Bool)

(declare-fun c!1349380 () Bool)

(declare-fun isEmpty!40575 (List!70579) Bool)

(assert (=> d!2256886 (= c!1349380 (isEmpty!40575 (t!384643 s1!1971)))))

(declare-fun e!4351309 () Bool)

(assert (=> d!2256886 (= (matchZipper!3576 lt!2587488 (t!384643 s1!1971)) e!4351309)))

(declare-fun b!7256701 () Bool)

(declare-fun nullableZipper!2927 ((Set Context!15212)) Bool)

(assert (=> b!7256701 (= e!4351309 (nullableZipper!2927 lt!2587488))))

(declare-fun b!7256702 () Bool)

(declare-fun head!14924 (List!70579) C!37606)

(assert (=> b!7256702 (= e!4351309 (matchZipper!3576 (derivationStepZipper!3444 lt!2587488 (head!14924 (t!384643 s1!1971))) (tail!14357 (t!384643 s1!1971))))))

(assert (= (and d!2256886 c!1349380) b!7256701))

(assert (= (and d!2256886 (not c!1349380)) b!7256702))

(declare-fun m!7938380 () Bool)

(assert (=> d!2256886 m!7938380))

(declare-fun m!7938382 () Bool)

(assert (=> b!7256701 m!7938382))

(declare-fun m!7938384 () Bool)

(assert (=> b!7256702 m!7938384))

(assert (=> b!7256702 m!7938384))

(declare-fun m!7938386 () Bool)

(assert (=> b!7256702 m!7938386))

(declare-fun m!7938388 () Bool)

(assert (=> b!7256702 m!7938388))

(assert (=> b!7256702 m!7938386))

(assert (=> b!7256702 m!7938388))

(declare-fun m!7938390 () Bool)

(assert (=> b!7256702 m!7938390))

(assert (=> b!7256552 d!2256886))

(declare-fun d!2256888 () Bool)

(declare-fun c!1349381 () Bool)

(assert (=> d!2256888 (= c!1349381 (isEmpty!40575 lt!2587490))))

(declare-fun e!4351310 () Bool)

(assert (=> d!2256888 (= (matchZipper!3576 (set.union lt!2587495 lt!2587516) lt!2587490) e!4351310)))

(declare-fun b!7256703 () Bool)

(assert (=> b!7256703 (= e!4351310 (nullableZipper!2927 (set.union lt!2587495 lt!2587516)))))

(declare-fun b!7256704 () Bool)

(assert (=> b!7256704 (= e!4351310 (matchZipper!3576 (derivationStepZipper!3444 (set.union lt!2587495 lt!2587516) (head!14924 lt!2587490)) (tail!14357 lt!2587490)))))

(assert (= (and d!2256888 c!1349381) b!7256703))

(assert (= (and d!2256888 (not c!1349381)) b!7256704))

(declare-fun m!7938392 () Bool)

(assert (=> d!2256888 m!7938392))

(declare-fun m!7938394 () Bool)

(assert (=> b!7256703 m!7938394))

(declare-fun m!7938396 () Bool)

(assert (=> b!7256704 m!7938396))

(assert (=> b!7256704 m!7938396))

(declare-fun m!7938398 () Bool)

(assert (=> b!7256704 m!7938398))

(declare-fun m!7938400 () Bool)

(assert (=> b!7256704 m!7938400))

(assert (=> b!7256704 m!7938398))

(assert (=> b!7256704 m!7938400))

(declare-fun m!7938402 () Bool)

(assert (=> b!7256704 m!7938402))

(assert (=> b!7256552 d!2256888))

(declare-fun d!2256890 () Bool)

(declare-fun c!1349382 () Bool)

(assert (=> d!2256890 (= c!1349382 (isEmpty!40575 lt!2587490))))

(declare-fun e!4351311 () Bool)

(assert (=> d!2256890 (= (matchZipper!3576 lt!2587495 lt!2587490) e!4351311)))

(declare-fun b!7256705 () Bool)

(assert (=> b!7256705 (= e!4351311 (nullableZipper!2927 lt!2587495))))

(declare-fun b!7256706 () Bool)

(assert (=> b!7256706 (= e!4351311 (matchZipper!3576 (derivationStepZipper!3444 lt!2587495 (head!14924 lt!2587490)) (tail!14357 lt!2587490)))))

(assert (= (and d!2256890 c!1349382) b!7256705))

(assert (= (and d!2256890 (not c!1349382)) b!7256706))

(assert (=> d!2256890 m!7938392))

(declare-fun m!7938404 () Bool)

(assert (=> b!7256705 m!7938404))

(assert (=> b!7256706 m!7938396))

(assert (=> b!7256706 m!7938396))

(declare-fun m!7938406 () Bool)

(assert (=> b!7256706 m!7938406))

(assert (=> b!7256706 m!7938400))

(assert (=> b!7256706 m!7938406))

(assert (=> b!7256706 m!7938400))

(declare-fun m!7938408 () Bool)

(assert (=> b!7256706 m!7938408))

(assert (=> b!7256552 d!2256890))

(declare-fun e!4351314 () Bool)

(declare-fun d!2256892 () Bool)

(assert (=> d!2256892 (= (matchZipper!3576 (set.union lt!2587495 lt!2587516) lt!2587490) e!4351314)))

(declare-fun res!2942693 () Bool)

(assert (=> d!2256892 (=> res!2942693 e!4351314)))

(assert (=> d!2256892 (= res!2942693 (matchZipper!3576 lt!2587495 lt!2587490))))

(declare-fun lt!2587650 () Unit!163932)

(declare-fun choose!56118 ((Set Context!15212) (Set Context!15212) List!70579) Unit!163932)

(assert (=> d!2256892 (= lt!2587650 (choose!56118 lt!2587495 lt!2587516 lt!2587490))))

(assert (=> d!2256892 (= (lemmaZipperConcatMatchesSameAsBothZippers!1721 lt!2587495 lt!2587516 lt!2587490) lt!2587650)))

(declare-fun b!7256709 () Bool)

(assert (=> b!7256709 (= e!4351314 (matchZipper!3576 lt!2587516 lt!2587490))))

(assert (= (and d!2256892 (not res!2942693)) b!7256709))

(assert (=> d!2256892 m!7938134))

(assert (=> d!2256892 m!7938138))

(declare-fun m!7938410 () Bool)

(assert (=> d!2256892 m!7938410))

(assert (=> b!7256709 m!7938088))

(assert (=> b!7256552 d!2256892))

(declare-fun e!4351315 () Bool)

(declare-fun d!2256894 () Bool)

(assert (=> d!2256894 (= (matchZipper!3576 (set.union lt!2587488 lt!2587492) (t!384643 s1!1971)) e!4351315)))

(declare-fun res!2942694 () Bool)

(assert (=> d!2256894 (=> res!2942694 e!4351315)))

(assert (=> d!2256894 (= res!2942694 (matchZipper!3576 lt!2587488 (t!384643 s1!1971)))))

(declare-fun lt!2587651 () Unit!163932)

(assert (=> d!2256894 (= lt!2587651 (choose!56118 lt!2587488 lt!2587492 (t!384643 s1!1971)))))

(assert (=> d!2256894 (= (lemmaZipperConcatMatchesSameAsBothZippers!1721 lt!2587488 lt!2587492 (t!384643 s1!1971)) lt!2587651)))

(declare-fun b!7256710 () Bool)

(assert (=> b!7256710 (= e!4351315 (matchZipper!3576 lt!2587492 (t!384643 s1!1971)))))

(assert (= (and d!2256894 (not res!2942694)) b!7256710))

(assert (=> d!2256894 m!7938130))

(assert (=> d!2256894 m!7938142))

(declare-fun m!7938412 () Bool)

(assert (=> d!2256894 m!7938412))

(assert (=> b!7256710 m!7938186))

(assert (=> b!7256552 d!2256894))

(declare-fun d!2256896 () Bool)

(declare-fun c!1349383 () Bool)

(assert (=> d!2256896 (= c!1349383 (isEmpty!40575 (t!384643 s1!1971)))))

(declare-fun e!4351316 () Bool)

(assert (=> d!2256896 (= (matchZipper!3576 (set.union lt!2587488 lt!2587492) (t!384643 s1!1971)) e!4351316)))

(declare-fun b!7256711 () Bool)

(assert (=> b!7256711 (= e!4351316 (nullableZipper!2927 (set.union lt!2587488 lt!2587492)))))

(declare-fun b!7256712 () Bool)

(assert (=> b!7256712 (= e!4351316 (matchZipper!3576 (derivationStepZipper!3444 (set.union lt!2587488 lt!2587492) (head!14924 (t!384643 s1!1971))) (tail!14357 (t!384643 s1!1971))))))

(assert (= (and d!2256896 c!1349383) b!7256711))

(assert (= (and d!2256896 (not c!1349383)) b!7256712))

(assert (=> d!2256896 m!7938380))

(declare-fun m!7938414 () Bool)

(assert (=> b!7256711 m!7938414))

(assert (=> b!7256712 m!7938384))

(assert (=> b!7256712 m!7938384))

(declare-fun m!7938416 () Bool)

(assert (=> b!7256712 m!7938416))

(assert (=> b!7256712 m!7938388))

(assert (=> b!7256712 m!7938416))

(assert (=> b!7256712 m!7938388))

(declare-fun m!7938418 () Bool)

(assert (=> b!7256712 m!7938418))

(assert (=> b!7256552 d!2256896))

(assert (=> b!7256552 d!2256862))

(declare-fun d!2256898 () Bool)

(declare-fun c!1349384 () Bool)

(assert (=> d!2256898 (= c!1349384 (isEmpty!40575 s2!1849))))

(declare-fun e!4351317 () Bool)

(assert (=> d!2256898 (= (matchZipper!3576 (set.insert ct2!328 (as set.empty (Set Context!15212))) s2!1849) e!4351317)))

(declare-fun b!7256713 () Bool)

(assert (=> b!7256713 (= e!4351317 (nullableZipper!2927 (set.insert ct2!328 (as set.empty (Set Context!15212)))))))

(declare-fun b!7256714 () Bool)

(assert (=> b!7256714 (= e!4351317 (matchZipper!3576 (derivationStepZipper!3444 (set.insert ct2!328 (as set.empty (Set Context!15212))) (head!14924 s2!1849)) (tail!14357 s2!1849)))))

(assert (= (and d!2256898 c!1349384) b!7256713))

(assert (= (and d!2256898 (not c!1349384)) b!7256714))

(declare-fun m!7938420 () Bool)

(assert (=> d!2256898 m!7938420))

(assert (=> b!7256713 m!7938182))

(declare-fun m!7938422 () Bool)

(assert (=> b!7256713 m!7938422))

(declare-fun m!7938424 () Bool)

(assert (=> b!7256714 m!7938424))

(assert (=> b!7256714 m!7938182))

(assert (=> b!7256714 m!7938424))

(declare-fun m!7938426 () Bool)

(assert (=> b!7256714 m!7938426))

(declare-fun m!7938428 () Bool)

(assert (=> b!7256714 m!7938428))

(assert (=> b!7256714 m!7938426))

(assert (=> b!7256714 m!7938428))

(declare-fun m!7938430 () Bool)

(assert (=> b!7256714 m!7938430))

(assert (=> b!7256553 d!2256898))

(declare-fun d!2256900 () Bool)

(assert (=> d!2256900 (= (isEmpty!40573 (exprs!8106 ct1!232)) (is-Nil!70454 (exprs!8106 ct1!232)))))

(assert (=> b!7256551 d!2256900))

(declare-fun b!7256723 () Bool)

(declare-fun e!4351323 () List!70578)

(assert (=> b!7256723 (= e!4351323 (exprs!8106 ct2!328))))

(declare-fun b!7256725 () Bool)

(declare-fun res!2942700 () Bool)

(declare-fun e!4351322 () Bool)

(assert (=> b!7256725 (=> (not res!2942700) (not e!4351322))))

(declare-fun lt!2587654 () List!70578)

(declare-fun size!41743 (List!70578) Int)

(assert (=> b!7256725 (= res!2942700 (= (size!41743 lt!2587654) (+ (size!41743 (exprs!8106 lt!2587508)) (size!41743 (exprs!8106 ct2!328)))))))

(declare-fun b!7256724 () Bool)

(assert (=> b!7256724 (= e!4351323 (Cons!70454 (h!76902 (exprs!8106 lt!2587508)) (++!16594 (t!384642 (exprs!8106 lt!2587508)) (exprs!8106 ct2!328))))))

(declare-fun b!7256726 () Bool)

(assert (=> b!7256726 (= e!4351322 (or (not (= (exprs!8106 ct2!328) Nil!70454)) (= lt!2587654 (exprs!8106 lt!2587508))))))

(declare-fun d!2256902 () Bool)

(assert (=> d!2256902 e!4351322))

(declare-fun res!2942699 () Bool)

(assert (=> d!2256902 (=> (not res!2942699) (not e!4351322))))

(declare-fun content!14649 (List!70578) (Set Regex!18666))

(assert (=> d!2256902 (= res!2942699 (= (content!14649 lt!2587654) (set.union (content!14649 (exprs!8106 lt!2587508)) (content!14649 (exprs!8106 ct2!328)))))))

(assert (=> d!2256902 (= lt!2587654 e!4351323)))

(declare-fun c!1349387 () Bool)

(assert (=> d!2256902 (= c!1349387 (is-Nil!70454 (exprs!8106 lt!2587508)))))

(assert (=> d!2256902 (= (++!16594 (exprs!8106 lt!2587508) (exprs!8106 ct2!328)) lt!2587654)))

(assert (= (and d!2256902 c!1349387) b!7256723))

(assert (= (and d!2256902 (not c!1349387)) b!7256724))

(assert (= (and d!2256902 res!2942699) b!7256725))

(assert (= (and b!7256725 res!2942700) b!7256726))

(declare-fun m!7938432 () Bool)

(assert (=> b!7256725 m!7938432))

(declare-fun m!7938434 () Bool)

(assert (=> b!7256725 m!7938434))

(declare-fun m!7938436 () Bool)

(assert (=> b!7256725 m!7938436))

(declare-fun m!7938438 () Bool)

(assert (=> b!7256724 m!7938438))

(declare-fun m!7938440 () Bool)

(assert (=> d!2256902 m!7938440))

(declare-fun m!7938442 () Bool)

(assert (=> d!2256902 m!7938442))

(declare-fun m!7938444 () Bool)

(assert (=> d!2256902 m!7938444))

(assert (=> b!7256551 d!2256902))

(assert (=> b!7256551 d!2256872))

(declare-fun bs!1907846 () Bool)

(declare-fun d!2256904 () Bool)

(assert (= bs!1907846 (and d!2256904 b!7256544)))

(declare-fun lambda!445296 () Int)

(assert (=> bs!1907846 (= lambda!445296 lambda!445248)))

(declare-fun bs!1907847 () Bool)

(assert (= bs!1907847 (and d!2256904 d!2256846)))

(assert (=> bs!1907847 (= lambda!445296 lambda!445290)))

(declare-fun bs!1907848 () Bool)

(assert (= bs!1907848 (and d!2256904 d!2256852)))

(assert (=> bs!1907848 (= lambda!445296 lambda!445293)))

(assert (=> d!2256904 (matchZipper!3576 (set.insert (Context!15213 (++!16594 (exprs!8106 lt!2587508) (exprs!8106 ct2!328))) (as set.empty (Set Context!15212))) (++!16595 (t!384643 s1!1971) s2!1849))))

(declare-fun lt!2587660 () Unit!163932)

(assert (=> d!2256904 (= lt!2587660 (lemmaConcatPreservesForall!1473 (exprs!8106 lt!2587508) (exprs!8106 ct2!328) lambda!445296))))

(declare-fun lt!2587659 () Unit!163932)

(declare-fun choose!56119 (Context!15212 Context!15212 List!70579 List!70579) Unit!163932)

(assert (=> d!2256904 (= lt!2587659 (choose!56119 lt!2587508 ct2!328 (t!384643 s1!1971) s2!1849))))

(assert (=> d!2256904 (matchZipper!3576 (set.insert lt!2587508 (as set.empty (Set Context!15212))) (t!384643 s1!1971))))

(assert (=> d!2256904 (= (lemmaConcatenateContextMatchesConcatOfStrings!411 lt!2587508 ct2!328 (t!384643 s1!1971) s2!1849) lt!2587659)))

(declare-fun bs!1907849 () Bool)

(assert (= bs!1907849 d!2256904))

(declare-fun m!7938446 () Bool)

(assert (=> bs!1907849 m!7938446))

(assert (=> bs!1907849 m!7938170))

(declare-fun m!7938448 () Bool)

(assert (=> bs!1907849 m!7938448))

(assert (=> bs!1907849 m!7938170))

(declare-fun m!7938450 () Bool)

(assert (=> bs!1907849 m!7938450))

(assert (=> bs!1907849 m!7938448))

(declare-fun m!7938452 () Bool)

(assert (=> bs!1907849 m!7938452))

(assert (=> bs!1907849 m!7938166))

(declare-fun m!7938454 () Bool)

(assert (=> bs!1907849 m!7938454))

(assert (=> bs!1907849 m!7938452))

(declare-fun m!7938456 () Bool)

(assert (=> bs!1907849 m!7938456))

(assert (=> b!7256551 d!2256904))

(declare-fun lt!2587661 () List!70579)

(declare-fun e!4351325 () Bool)

(declare-fun b!7256730 () Bool)

(assert (=> b!7256730 (= e!4351325 (or (not (= s2!1849 Nil!70455)) (= lt!2587661 (t!384643 s1!1971))))))

(declare-fun b!7256729 () Bool)

(declare-fun res!2942701 () Bool)

(assert (=> b!7256729 (=> (not res!2942701) (not e!4351325))))

(assert (=> b!7256729 (= res!2942701 (= (size!41742 lt!2587661) (+ (size!41742 (t!384643 s1!1971)) (size!41742 s2!1849))))))

(declare-fun b!7256727 () Bool)

(declare-fun e!4351324 () List!70579)

(assert (=> b!7256727 (= e!4351324 s2!1849)))

(declare-fun b!7256728 () Bool)

(assert (=> b!7256728 (= e!4351324 (Cons!70455 (h!76903 (t!384643 s1!1971)) (++!16595 (t!384643 (t!384643 s1!1971)) s2!1849)))))

(declare-fun d!2256906 () Bool)

(assert (=> d!2256906 e!4351325))

(declare-fun res!2942702 () Bool)

(assert (=> d!2256906 (=> (not res!2942702) (not e!4351325))))

(assert (=> d!2256906 (= res!2942702 (= (content!14648 lt!2587661) (set.union (content!14648 (t!384643 s1!1971)) (content!14648 s2!1849))))))

(assert (=> d!2256906 (= lt!2587661 e!4351324)))

(declare-fun c!1349388 () Bool)

(assert (=> d!2256906 (= c!1349388 (is-Nil!70455 (t!384643 s1!1971)))))

(assert (=> d!2256906 (= (++!16595 (t!384643 s1!1971) s2!1849) lt!2587661)))

(assert (= (and d!2256906 c!1349388) b!7256727))

(assert (= (and d!2256906 (not c!1349388)) b!7256728))

(assert (= (and d!2256906 res!2942702) b!7256729))

(assert (= (and b!7256729 res!2942701) b!7256730))

(declare-fun m!7938458 () Bool)

(assert (=> b!7256729 m!7938458))

(declare-fun m!7938460 () Bool)

(assert (=> b!7256729 m!7938460))

(assert (=> b!7256729 m!7938316))

(declare-fun m!7938462 () Bool)

(assert (=> b!7256728 m!7938462))

(declare-fun m!7938464 () Bool)

(assert (=> d!2256906 m!7938464))

(declare-fun m!7938466 () Bool)

(assert (=> d!2256906 m!7938466))

(assert (=> d!2256906 m!7938322))

(assert (=> b!7256551 d!2256906))

(assert (=> b!7256551 d!2256864))

(declare-fun d!2256908 () Bool)

(declare-fun c!1349389 () Bool)

(assert (=> d!2256908 (= c!1349389 (isEmpty!40575 lt!2587490))))

(declare-fun e!4351326 () Bool)

(assert (=> d!2256908 (= (matchZipper!3576 (set.insert lt!2587513 (as set.empty (Set Context!15212))) lt!2587490) e!4351326)))

(declare-fun b!7256731 () Bool)

(assert (=> b!7256731 (= e!4351326 (nullableZipper!2927 (set.insert lt!2587513 (as set.empty (Set Context!15212)))))))

(declare-fun b!7256732 () Bool)

(assert (=> b!7256732 (= e!4351326 (matchZipper!3576 (derivationStepZipper!3444 (set.insert lt!2587513 (as set.empty (Set Context!15212))) (head!14924 lt!2587490)) (tail!14357 lt!2587490)))))

(assert (= (and d!2256908 c!1349389) b!7256731))

(assert (= (and d!2256908 (not c!1349389)) b!7256732))

(assert (=> d!2256908 m!7938392))

(assert (=> b!7256731 m!7938160))

(declare-fun m!7938468 () Bool)

(assert (=> b!7256731 m!7938468))

(assert (=> b!7256732 m!7938396))

(assert (=> b!7256732 m!7938160))

(assert (=> b!7256732 m!7938396))

(declare-fun m!7938470 () Bool)

(assert (=> b!7256732 m!7938470))

(assert (=> b!7256732 m!7938400))

(assert (=> b!7256732 m!7938470))

(assert (=> b!7256732 m!7938400))

(declare-fun m!7938472 () Bool)

(assert (=> b!7256732 m!7938472))

(assert (=> b!7256551 d!2256908))

(declare-fun d!2256910 () Bool)

(declare-fun e!4351329 () Bool)

(assert (=> d!2256910 e!4351329))

(declare-fun res!2942705 () Bool)

(assert (=> d!2256910 (=> (not res!2942705) (not e!4351329))))

(declare-fun lt!2587664 () Context!15212)

(declare-fun dynLambda!28787 (Int Context!15212) Bool)

(assert (=> d!2256910 (= res!2942705 (dynLambda!28787 lambda!445249 lt!2587664))))

(declare-fun getWitness!2239 (List!70580 Int) Context!15212)

(assert (=> d!2256910 (= lt!2587664 (getWitness!2239 (toList!11495 lt!2587497) lambda!445249))))

(assert (=> d!2256910 (exists!4410 lt!2587497 lambda!445249)))

(assert (=> d!2256910 (= (getWitness!2237 lt!2587497 lambda!445249) lt!2587664)))

(declare-fun b!7256735 () Bool)

(assert (=> b!7256735 (= e!4351329 (set.member lt!2587664 lt!2587497))))

(assert (= (and d!2256910 res!2942705) b!7256735))

(declare-fun b_lambda!279025 () Bool)

(assert (=> (not b_lambda!279025) (not d!2256910)))

(declare-fun m!7938474 () Bool)

(assert (=> d!2256910 m!7938474))

(assert (=> d!2256910 m!7938152))

(assert (=> d!2256910 m!7938152))

(declare-fun m!7938476 () Bool)

(assert (=> d!2256910 m!7938476))

(assert (=> d!2256910 m!7938146))

(declare-fun m!7938478 () Bool)

(assert (=> b!7256735 m!7938478))

(assert (=> b!7256551 d!2256910))

(declare-fun d!2256912 () Bool)

(declare-fun c!1349390 () Bool)

(assert (=> d!2256912 (= c!1349390 (isEmpty!40575 (t!384643 s1!1971)))))

(declare-fun e!4351330 () Bool)

(assert (=> d!2256912 (= (matchZipper!3576 lt!2587497 (t!384643 s1!1971)) e!4351330)))

(declare-fun b!7256736 () Bool)

(assert (=> b!7256736 (= e!4351330 (nullableZipper!2927 lt!2587497))))

(declare-fun b!7256737 () Bool)

(assert (=> b!7256737 (= e!4351330 (matchZipper!3576 (derivationStepZipper!3444 lt!2587497 (head!14924 (t!384643 s1!1971))) (tail!14357 (t!384643 s1!1971))))))

(assert (= (and d!2256912 c!1349390) b!7256736))

(assert (= (and d!2256912 (not c!1349390)) b!7256737))

(assert (=> d!2256912 m!7938380))

(declare-fun m!7938480 () Bool)

(assert (=> b!7256736 m!7938480))

(assert (=> b!7256737 m!7938384))

(assert (=> b!7256737 m!7938384))

(declare-fun m!7938482 () Bool)

(assert (=> b!7256737 m!7938482))

(assert (=> b!7256737 m!7938388))

(assert (=> b!7256737 m!7938482))

(assert (=> b!7256737 m!7938388))

(declare-fun m!7938484 () Bool)

(assert (=> b!7256737 m!7938484))

(assert (=> b!7256556 d!2256912))

(declare-fun bs!1907850 () Bool)

(declare-fun d!2256914 () Bool)

(assert (= bs!1907850 (and d!2256914 b!7256554)))

(declare-fun lambda!445299 () Int)

(assert (=> bs!1907850 (= lambda!445299 lambda!445250)))

(assert (=> d!2256914 true))

(assert (=> d!2256914 (= (derivationStepZipper!3444 lt!2587491 (h!76903 s1!1971)) (flatMap!2831 lt!2587491 lambda!445299))))

(declare-fun bs!1907851 () Bool)

(assert (= bs!1907851 d!2256914))

(declare-fun m!7938486 () Bool)

(assert (=> bs!1907851 m!7938486))

(assert (=> b!7256556 d!2256914))

(declare-fun d!2256916 () Bool)

(declare-fun c!1349393 () Bool)

(assert (=> d!2256916 (= c!1349393 (isEmpty!40575 s1!1971))))

(declare-fun e!4351331 () Bool)

(assert (=> d!2256916 (= (matchZipper!3576 lt!2587491 s1!1971) e!4351331)))

(declare-fun b!7256740 () Bool)

(assert (=> b!7256740 (= e!4351331 (nullableZipper!2927 lt!2587491))))

(declare-fun b!7256741 () Bool)

(assert (=> b!7256741 (= e!4351331 (matchZipper!3576 (derivationStepZipper!3444 lt!2587491 (head!14924 s1!1971)) (tail!14357 s1!1971)))))

(assert (= (and d!2256916 c!1349393) b!7256740))

(assert (= (and d!2256916 (not c!1349393)) b!7256741))

(declare-fun m!7938488 () Bool)

(assert (=> d!2256916 m!7938488))

(declare-fun m!7938490 () Bool)

(assert (=> b!7256740 m!7938490))

(declare-fun m!7938492 () Bool)

(assert (=> b!7256741 m!7938492))

(assert (=> b!7256741 m!7938492))

(declare-fun m!7938494 () Bool)

(assert (=> b!7256741 m!7938494))

(declare-fun m!7938496 () Bool)

(assert (=> b!7256741 m!7938496))

(assert (=> b!7256741 m!7938494))

(assert (=> b!7256741 m!7938496))

(declare-fun m!7938498 () Bool)

(assert (=> b!7256741 m!7938498))

(assert (=> start!706720 d!2256916))

(declare-fun bs!1907852 () Bool)

(declare-fun d!2256918 () Bool)

(assert (= bs!1907852 (and d!2256918 b!7256544)))

(declare-fun lambda!445300 () Int)

(assert (=> bs!1907852 (= lambda!445300 lambda!445248)))

(declare-fun bs!1907853 () Bool)

(assert (= bs!1907853 (and d!2256918 d!2256846)))

(assert (=> bs!1907853 (= lambda!445300 lambda!445290)))

(declare-fun bs!1907854 () Bool)

(assert (= bs!1907854 (and d!2256918 d!2256852)))

(assert (=> bs!1907854 (= lambda!445300 lambda!445293)))

(declare-fun bs!1907855 () Bool)

(assert (= bs!1907855 (and d!2256918 d!2256904)))

(assert (=> bs!1907855 (= lambda!445300 lambda!445296)))

(assert (=> d!2256918 (= (inv!89676 ct1!232) (forall!17519 (exprs!8106 ct1!232) lambda!445300))))

(declare-fun bs!1907856 () Bool)

(assert (= bs!1907856 d!2256918))

(declare-fun m!7938500 () Bool)

(assert (=> bs!1907856 m!7938500))

(assert (=> start!706720 d!2256918))

(declare-fun bs!1907857 () Bool)

(declare-fun d!2256920 () Bool)

(assert (= bs!1907857 (and d!2256920 d!2256904)))

(declare-fun lambda!445301 () Int)

(assert (=> bs!1907857 (= lambda!445301 lambda!445296)))

(declare-fun bs!1907858 () Bool)

(assert (= bs!1907858 (and d!2256920 b!7256544)))

(assert (=> bs!1907858 (= lambda!445301 lambda!445248)))

(declare-fun bs!1907859 () Bool)

(assert (= bs!1907859 (and d!2256920 d!2256846)))

(assert (=> bs!1907859 (= lambda!445301 lambda!445290)))

(declare-fun bs!1907860 () Bool)

(assert (= bs!1907860 (and d!2256920 d!2256918)))

(assert (=> bs!1907860 (= lambda!445301 lambda!445300)))

(declare-fun bs!1907861 () Bool)

(assert (= bs!1907861 (and d!2256920 d!2256852)))

(assert (=> bs!1907861 (= lambda!445301 lambda!445293)))

(assert (=> d!2256920 (= (inv!89676 ct2!328) (forall!17519 (exprs!8106 ct2!328) lambda!445301))))

(declare-fun bs!1907862 () Bool)

(assert (= bs!1907862 d!2256920))

(declare-fun m!7938502 () Bool)

(assert (=> bs!1907862 m!7938502))

(assert (=> start!706720 d!2256920))

(declare-fun d!2256922 () Bool)

(declare-fun lt!2587667 () Bool)

(assert (=> d!2256922 (= lt!2587667 (exists!4411 (toList!11495 lt!2587497) lambda!445249))))

(declare-fun choose!56120 ((Set Context!15212) Int) Bool)

(assert (=> d!2256922 (= lt!2587667 (choose!56120 lt!2587497 lambda!445249))))

(assert (=> d!2256922 (= (exists!4410 lt!2587497 lambda!445249) lt!2587667)))

(declare-fun bs!1907863 () Bool)

(assert (= bs!1907863 d!2256922))

(assert (=> bs!1907863 m!7938152))

(assert (=> bs!1907863 m!7938152))

(declare-fun m!7938504 () Bool)

(assert (=> bs!1907863 m!7938504))

(declare-fun m!7938506 () Bool)

(assert (=> bs!1907863 m!7938506))

(assert (=> b!7256557 d!2256922))

(declare-fun bs!1907864 () Bool)

(declare-fun d!2256924 () Bool)

(assert (= bs!1907864 (and d!2256924 b!7256557)))

(declare-fun lambda!445304 () Int)

(assert (=> bs!1907864 (not (= lambda!445304 lambda!445249))))

(assert (=> d!2256924 true))

(declare-fun order!29009 () Int)

(declare-fun dynLambda!28788 (Int Int) Int)

(assert (=> d!2256924 (< (dynLambda!28788 order!29009 lambda!445249) (dynLambda!28788 order!29009 lambda!445304))))

(declare-fun forall!17520 (List!70580 Int) Bool)

(assert (=> d!2256924 (= (exists!4411 lt!2587499 lambda!445249) (not (forall!17520 lt!2587499 lambda!445304)))))

(declare-fun bs!1907865 () Bool)

(assert (= bs!1907865 d!2256924))

(declare-fun m!7938508 () Bool)

(assert (=> bs!1907865 m!7938508))

(assert (=> b!7256557 d!2256924))

(declare-fun bs!1907866 () Bool)

(declare-fun d!2256926 () Bool)

(assert (= bs!1907866 (and d!2256926 b!7256557)))

(declare-fun lambda!445307 () Int)

(assert (=> bs!1907866 (= lambda!445307 lambda!445249)))

(declare-fun bs!1907867 () Bool)

(assert (= bs!1907867 (and d!2256926 d!2256924)))

(assert (=> bs!1907867 (not (= lambda!445307 lambda!445304))))

(assert (=> d!2256926 true))

(assert (=> d!2256926 (exists!4411 lt!2587499 lambda!445307)))

(declare-fun lt!2587670 () Unit!163932)

(declare-fun choose!56121 (List!70580 List!70579) Unit!163932)

(assert (=> d!2256926 (= lt!2587670 (choose!56121 lt!2587499 (t!384643 s1!1971)))))

(declare-fun content!14650 (List!70580) (Set Context!15212))

(assert (=> d!2256926 (matchZipper!3576 (content!14650 lt!2587499) (t!384643 s1!1971))))

(assert (=> d!2256926 (= (lemmaZipperMatchesExistsMatchingContext!769 lt!2587499 (t!384643 s1!1971)) lt!2587670)))

(declare-fun bs!1907868 () Bool)

(assert (= bs!1907868 d!2256926))

(declare-fun m!7938510 () Bool)

(assert (=> bs!1907868 m!7938510))

(declare-fun m!7938512 () Bool)

(assert (=> bs!1907868 m!7938512))

(declare-fun m!7938514 () Bool)

(assert (=> bs!1907868 m!7938514))

(assert (=> bs!1907868 m!7938514))

(declare-fun m!7938516 () Bool)

(assert (=> bs!1907868 m!7938516))

(assert (=> b!7256557 d!2256926))

(declare-fun d!2256928 () Bool)

(declare-fun e!4351334 () Bool)

(assert (=> d!2256928 e!4351334))

(declare-fun res!2942708 () Bool)

(assert (=> d!2256928 (=> (not res!2942708) (not e!4351334))))

(declare-fun lt!2587673 () List!70580)

(declare-fun noDuplicate!3002 (List!70580) Bool)

(assert (=> d!2256928 (= res!2942708 (noDuplicate!3002 lt!2587673))))

(declare-fun choose!56122 ((Set Context!15212)) List!70580)

(assert (=> d!2256928 (= lt!2587673 (choose!56122 lt!2587497))))

(assert (=> d!2256928 (= (toList!11495 lt!2587497) lt!2587673)))

(declare-fun b!7256746 () Bool)

(assert (=> b!7256746 (= e!4351334 (= (content!14650 lt!2587673) lt!2587497))))

(assert (= (and d!2256928 res!2942708) b!7256746))

(declare-fun m!7938518 () Bool)

(assert (=> d!2256928 m!7938518))

(declare-fun m!7938520 () Bool)

(assert (=> d!2256928 m!7938520))

(declare-fun m!7938522 () Bool)

(assert (=> b!7256746 m!7938522))

(assert (=> b!7256557 d!2256928))

(declare-fun b!7256747 () Bool)

(declare-fun e!4351336 () List!70578)

(assert (=> b!7256747 (= e!4351336 (exprs!8106 ct2!328))))

(declare-fun b!7256749 () Bool)

(declare-fun res!2942710 () Bool)

(declare-fun e!4351335 () Bool)

(assert (=> b!7256749 (=> (not res!2942710) (not e!4351335))))

(declare-fun lt!2587674 () List!70578)

(assert (=> b!7256749 (= res!2942710 (= (size!41743 lt!2587674) (+ (size!41743 (exprs!8106 ct1!232)) (size!41743 (exprs!8106 ct2!328)))))))

(declare-fun b!7256748 () Bool)

(assert (=> b!7256748 (= e!4351336 (Cons!70454 (h!76902 (exprs!8106 ct1!232)) (++!16594 (t!384642 (exprs!8106 ct1!232)) (exprs!8106 ct2!328))))))

(declare-fun b!7256750 () Bool)

(assert (=> b!7256750 (= e!4351335 (or (not (= (exprs!8106 ct2!328) Nil!70454)) (= lt!2587674 (exprs!8106 ct1!232))))))

(declare-fun d!2256930 () Bool)

(assert (=> d!2256930 e!4351335))

(declare-fun res!2942709 () Bool)

(assert (=> d!2256930 (=> (not res!2942709) (not e!4351335))))

(assert (=> d!2256930 (= res!2942709 (= (content!14649 lt!2587674) (set.union (content!14649 (exprs!8106 ct1!232)) (content!14649 (exprs!8106 ct2!328)))))))

(assert (=> d!2256930 (= lt!2587674 e!4351336)))

(declare-fun c!1349396 () Bool)

(assert (=> d!2256930 (= c!1349396 (is-Nil!70454 (exprs!8106 ct1!232)))))

(assert (=> d!2256930 (= (++!16594 (exprs!8106 ct1!232) (exprs!8106 ct2!328)) lt!2587674)))

(assert (= (and d!2256930 c!1349396) b!7256747))

(assert (= (and d!2256930 (not c!1349396)) b!7256748))

(assert (= (and d!2256930 res!2942709) b!7256749))

(assert (= (and b!7256749 res!2942710) b!7256750))

(declare-fun m!7938524 () Bool)

(assert (=> b!7256749 m!7938524))

(declare-fun m!7938526 () Bool)

(assert (=> b!7256749 m!7938526))

(assert (=> b!7256749 m!7938436))

(declare-fun m!7938528 () Bool)

(assert (=> b!7256748 m!7938528))

(declare-fun m!7938530 () Bool)

(assert (=> d!2256930 m!7938530))

(declare-fun m!7938532 () Bool)

(assert (=> d!2256930 m!7938532))

(assert (=> d!2256930 m!7938444))

(assert (=> b!7256544 d!2256930))

(assert (=> b!7256544 d!2256862))

(declare-fun d!2256932 () Bool)

(declare-fun c!1349397 () Bool)

(assert (=> d!2256932 (= c!1349397 (isEmpty!40575 (t!384643 s1!1971)))))

(declare-fun e!4351337 () Bool)

(assert (=> d!2256932 (= (matchZipper!3576 lt!2587492 (t!384643 s1!1971)) e!4351337)))

(declare-fun b!7256751 () Bool)

(assert (=> b!7256751 (= e!4351337 (nullableZipper!2927 lt!2587492))))

(declare-fun b!7256752 () Bool)

(assert (=> b!7256752 (= e!4351337 (matchZipper!3576 (derivationStepZipper!3444 lt!2587492 (head!14924 (t!384643 s1!1971))) (tail!14357 (t!384643 s1!1971))))))

(assert (= (and d!2256932 c!1349397) b!7256751))

(assert (= (and d!2256932 (not c!1349397)) b!7256752))

(assert (=> d!2256932 m!7938380))

(declare-fun m!7938534 () Bool)

(assert (=> b!7256751 m!7938534))

(assert (=> b!7256752 m!7938384))

(assert (=> b!7256752 m!7938384))

(declare-fun m!7938536 () Bool)

(assert (=> b!7256752 m!7938536))

(assert (=> b!7256752 m!7938388))

(assert (=> b!7256752 m!7938536))

(assert (=> b!7256752 m!7938388))

(declare-fun m!7938538 () Bool)

(assert (=> b!7256752 m!7938538))

(assert (=> b!7256545 d!2256932))

(declare-fun d!2256934 () Bool)

(declare-fun c!1349398 () Bool)

(assert (=> d!2256934 (= c!1349398 (isEmpty!40575 lt!2587490))))

(declare-fun e!4351338 () Bool)

(assert (=> d!2256934 (= (matchZipper!3576 lt!2587516 lt!2587490) e!4351338)))

(declare-fun b!7256753 () Bool)

(assert (=> b!7256753 (= e!4351338 (nullableZipper!2927 lt!2587516))))

(declare-fun b!7256754 () Bool)

(assert (=> b!7256754 (= e!4351338 (matchZipper!3576 (derivationStepZipper!3444 lt!2587516 (head!14924 lt!2587490)) (tail!14357 lt!2587490)))))

(assert (= (and d!2256934 c!1349398) b!7256753))

(assert (= (and d!2256934 (not c!1349398)) b!7256754))

(assert (=> d!2256934 m!7938392))

(declare-fun m!7938540 () Bool)

(assert (=> b!7256753 m!7938540))

(assert (=> b!7256754 m!7938396))

(assert (=> b!7256754 m!7938396))

(declare-fun m!7938542 () Bool)

(assert (=> b!7256754 m!7938542))

(assert (=> b!7256754 m!7938400))

(assert (=> b!7256754 m!7938542))

(assert (=> b!7256754 m!7938400))

(declare-fun m!7938544 () Bool)

(assert (=> b!7256754 m!7938544))

(assert (=> b!7256550 d!2256934))

(declare-fun b!7256759 () Bool)

(declare-fun e!4351341 () Bool)

(declare-fun tp!2038271 () Bool)

(declare-fun tp!2038272 () Bool)

(assert (=> b!7256759 (= e!4351341 (and tp!2038271 tp!2038272))))

(assert (=> b!7256543 (= tp!2038252 e!4351341)))

(assert (= (and b!7256543 (is-Cons!70454 (exprs!8106 ct2!328))) b!7256759))

(declare-fun b!7256760 () Bool)

(declare-fun e!4351342 () Bool)

(declare-fun tp!2038273 () Bool)

(declare-fun tp!2038274 () Bool)

(assert (=> b!7256760 (= e!4351342 (and tp!2038273 tp!2038274))))

(assert (=> b!7256548 (= tp!2038253 e!4351342)))

(assert (= (and b!7256548 (is-Cons!70454 (exprs!8106 ct1!232))) b!7256760))

(declare-fun b!7256765 () Bool)

(declare-fun e!4351345 () Bool)

(declare-fun tp!2038277 () Bool)

(assert (=> b!7256765 (= e!4351345 (and tp_is_empty!46797 tp!2038277))))

(assert (=> b!7256549 (= tp!2038251 e!4351345)))

(assert (= (and b!7256549 (is-Cons!70455 (t!384643 s2!1849))) b!7256765))

(declare-fun b!7256766 () Bool)

(declare-fun e!4351346 () Bool)

(declare-fun tp!2038278 () Bool)

(assert (=> b!7256766 (= e!4351346 (and tp_is_empty!46797 tp!2038278))))

(assert (=> b!7256555 (= tp!2038254 e!4351346)))

(assert (= (and b!7256555 (is-Cons!70455 (t!384643 s1!1971))) b!7256766))

(declare-fun b_lambda!279027 () Bool)

(assert (= b_lambda!279025 (or b!7256557 b_lambda!279027)))

(declare-fun bs!1907869 () Bool)

(declare-fun d!2256936 () Bool)

(assert (= bs!1907869 (and d!2256936 b!7256557)))

(assert (=> bs!1907869 (= (dynLambda!28787 lambda!445249 lt!2587664) (matchZipper!3576 (set.insert lt!2587664 (as set.empty (Set Context!15212))) (t!384643 s1!1971)))))

(declare-fun m!7938546 () Bool)

(assert (=> bs!1907869 m!7938546))

(assert (=> bs!1907869 m!7938546))

(declare-fun m!7938548 () Bool)

(assert (=> bs!1907869 m!7938548))

(assert (=> d!2256910 d!2256936))

(declare-fun b_lambda!279029 () Bool)

(assert (= b_lambda!279023 (or b!7256554 b_lambda!279029)))

(declare-fun bs!1907870 () Bool)

(declare-fun d!2256938 () Bool)

(assert (= bs!1907870 (and d!2256938 b!7256554)))

(assert (=> bs!1907870 (= (dynLambda!28786 lambda!445250 ct1!232) (derivationStepZipperUp!2490 ct1!232 (h!76903 s1!1971)))))

(assert (=> bs!1907870 m!7938102))

(assert (=> d!2256874 d!2256938))

(declare-fun b_lambda!279031 () Bool)

(assert (= b_lambda!279021 (or b!7256554 b_lambda!279031)))

(declare-fun bs!1907871 () Bool)

(declare-fun d!2256940 () Bool)

(assert (= bs!1907871 (and d!2256940 b!7256554)))

(assert (=> bs!1907871 (= (dynLambda!28786 lambda!445250 lt!2587489) (derivationStepZipperUp!2490 lt!2587489 (h!76903 s1!1971)))))

(assert (=> bs!1907871 m!7938096))

(assert (=> d!2256856 d!2256940))

(push 1)

(assert (not b_lambda!279027))

(assert (not d!2256904))

(assert (not b!7256760))

(assert (not bm!661287))

(assert (not b!7256688))

(assert (not d!2256888))

(assert (not d!2256874))

(assert (not b!7256746))

(assert (not d!2256914))

(assert (not b!7256695))

(assert (not d!2256850))

(assert (not d!2256934))

(assert (not b!7256759))

(assert (not b!7256706))

(assert (not b!7256765))

(assert (not d!2256922))

(assert (not b!7256731))

(assert (not b!7256732))

(assert (not b!7256711))

(assert (not d!2256854))

(assert (not bm!661310))

(assert (not d!2256916))

(assert (not b!7256705))

(assert (not bs!1907869))

(assert (not d!2256858))

(assert (not d!2256912))

(assert (not b!7256712))

(assert (not b!7256704))

(assert (not bm!661300))

(assert (not bm!661306))

(assert (not d!2256918))

(assert (not b!7256660))

(assert (not b!7256728))

(assert (not d!2256902))

(assert (not b!7256741))

(assert (not d!2256890))

(assert (not d!2256926))

(assert (not bm!661314))

(assert (not b!7256725))

(assert (not b_lambda!279031))

(assert (not d!2256886))

(assert (not b!7256693))

(assert (not bm!661307))

(assert (not b!7256674))

(assert (not b!7256672))

(assert (not b!7256709))

(assert (not b!7256703))

(assert (not b!7256749))

(assert (not bm!661305))

(assert (not b!7256724))

(assert (not bs!1907870))

(assert (not b!7256766))

(assert (not b!7256754))

(assert (not d!2256908))

(assert (not d!2256910))

(assert (not d!2256896))

(assert (not d!2256894))

(assert (not d!2256928))

(assert (not bm!661313))

(assert (not d!2256852))

(assert tp_is_empty!46797)

(assert (not b!7256748))

(assert (not b!7256676))

(assert (not b!7256737))

(assert (not b!7256690))

(assert (not d!2256906))

(assert (not d!2256862))

(assert (not d!2256856))

(assert (not d!2256930))

(assert (not d!2256924))

(assert (not d!2256898))

(assert (not bm!661312))

(assert (not d!2256892))

(assert (not b!7256710))

(assert (not b!7256736))

(assert (not b!7256621))

(assert (not d!2256920))

(assert (not b_lambda!279029))

(assert (not b!7256701))

(assert (not b!7256752))

(assert (not b!7256753))

(assert (not d!2256860))

(assert (not b!7256729))

(assert (not b!7256714))

(assert (not b!7256713))

(assert (not b!7256620))

(assert (not b!7256751))

(assert (not b!7256636))

(assert (not d!2256872))

(assert (not b!7256634))

(assert (not d!2256932))

(assert (not b!7256702))

(assert (not bs!1907871))

(assert (not b!7256740))

(assert (not bm!661303))

(assert (not d!2256846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

