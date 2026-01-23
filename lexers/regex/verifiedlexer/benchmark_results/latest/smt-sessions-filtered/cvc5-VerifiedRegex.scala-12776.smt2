; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!706418 () Bool)

(assert start!706418)

(declare-fun b!7254998 () Bool)

(assert (=> b!7254998 true))

(declare-fun b!7254985 () Bool)

(assert (=> b!7254985 true))

(declare-fun b!7254983 () Bool)

(declare-fun e!4350235 () Bool)

(declare-fun e!4350244 () Bool)

(assert (=> b!7254983 (= e!4350235 e!4350244)))

(declare-fun res!2942172 () Bool)

(assert (=> b!7254983 (=> res!2942172 e!4350244)))

(declare-fun lt!2586675 () Bool)

(assert (=> b!7254983 (= res!2942172 lt!2586675)))

(declare-datatypes ((C!37594 0))(
  ( (C!37595 (val!28745 Int)) )
))
(declare-datatypes ((Regex!18660 0))(
  ( (ElementMatch!18660 (c!1348806 C!37594)) (Concat!27505 (regOne!37832 Regex!18660) (regTwo!37832 Regex!18660)) (EmptyExpr!18660) (Star!18660 (reg!18989 Regex!18660)) (EmptyLang!18660) (Union!18660 (regOne!37833 Regex!18660) (regTwo!37833 Regex!18660)) )
))
(declare-datatypes ((List!70560 0))(
  ( (Nil!70436) (Cons!70436 (h!76884 Regex!18660) (t!384622 List!70560)) )
))
(declare-datatypes ((Context!15200 0))(
  ( (Context!15201 (exprs!8100 List!70560)) )
))
(declare-fun lt!2586671 () (Set Context!15200))

(declare-datatypes ((List!70561 0))(
  ( (Nil!70437) (Cons!70437 (h!76885 C!37594) (t!384623 List!70561)) )
))
(declare-fun lt!2586673 () List!70561)

(declare-fun e!4350238 () Bool)

(declare-fun matchZipper!3570 ((Set Context!15200) List!70561) Bool)

(assert (=> b!7254983 (= (matchZipper!3570 lt!2586671 lt!2586673) e!4350238)))

(declare-fun res!2942163 () Bool)

(assert (=> b!7254983 (=> res!2942163 e!4350238)))

(declare-fun lt!2586658 () (Set Context!15200))

(assert (=> b!7254983 (= res!2942163 (matchZipper!3570 lt!2586658 lt!2586673))))

(declare-fun lt!2586669 () (Set Context!15200))

(declare-datatypes ((Unit!163911 0))(
  ( (Unit!163912) )
))
(declare-fun lt!2586650 () Unit!163911)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1715 ((Set Context!15200) (Set Context!15200) List!70561) Unit!163911)

(assert (=> b!7254983 (= lt!2586650 (lemmaZipperConcatMatchesSameAsBothZippers!1715 lt!2586658 lt!2586669 lt!2586673))))

(declare-fun ct1!232 () Context!15200)

(declare-fun lambda!444935 () Int)

(declare-fun ct2!328 () Context!15200)

(declare-fun lt!2586672 () Unit!163911)

(declare-fun lemmaConcatPreservesForall!1467 (List!70560 List!70560 Int) Unit!163911)

(assert (=> b!7254983 (= lt!2586672 (lemmaConcatPreservesForall!1467 (exprs!8100 ct1!232) (exprs!8100 ct2!328) lambda!444935))))

(declare-fun lt!2586676 () (Set Context!15200))

(declare-fun s1!1971 () List!70561)

(declare-fun e!4350240 () Bool)

(assert (=> b!7254983 (= (matchZipper!3570 lt!2586676 (t!384623 s1!1971)) e!4350240)))

(declare-fun res!2942165 () Bool)

(assert (=> b!7254983 (=> res!2942165 e!4350240)))

(assert (=> b!7254983 (= res!2942165 lt!2586675)))

(declare-fun lt!2586666 () (Set Context!15200))

(assert (=> b!7254983 (= lt!2586675 (matchZipper!3570 lt!2586666 (t!384623 s1!1971)))))

(declare-fun lt!2586657 () Unit!163911)

(declare-fun lt!2586670 () (Set Context!15200))

(assert (=> b!7254983 (= lt!2586657 (lemmaZipperConcatMatchesSameAsBothZippers!1715 lt!2586666 lt!2586670 (t!384623 s1!1971)))))

(declare-fun b!7254984 () Bool)

(assert (=> b!7254984 (= e!4350238 (matchZipper!3570 lt!2586669 lt!2586673))))

(declare-fun res!2942162 () Bool)

(declare-fun e!4350243 () Bool)

(assert (=> start!706418 (=> (not res!2942162) (not e!4350243))))

(declare-fun lt!2586661 () (Set Context!15200))

(assert (=> start!706418 (= res!2942162 (matchZipper!3570 lt!2586661 s1!1971))))

(assert (=> start!706418 (= lt!2586661 (set.insert ct1!232 (as set.empty (Set Context!15200))))))

(assert (=> start!706418 e!4350243))

(declare-fun e!4350234 () Bool)

(declare-fun inv!89661 (Context!15200) Bool)

(assert (=> start!706418 (and (inv!89661 ct1!232) e!4350234)))

(declare-fun e!4350237 () Bool)

(assert (=> start!706418 e!4350237))

(declare-fun e!4350248 () Bool)

(assert (=> start!706418 e!4350248))

(declare-fun e!4350247 () Bool)

(assert (=> start!706418 (and (inv!89661 ct2!328) e!4350247)))

(declare-fun e!4350245 () Bool)

(declare-fun e!4350242 () Bool)

(assert (=> b!7254985 (= e!4350245 e!4350242)))

(declare-fun res!2942166 () Bool)

(assert (=> b!7254985 (=> res!2942166 e!4350242)))

(declare-fun nullable!7920 (Regex!18660) Bool)

(assert (=> b!7254985 (= res!2942166 (not (nullable!7920 (h!76884 (exprs!8100 ct1!232)))))))

(declare-fun lambda!444937 () Int)

(declare-fun lt!2586677 () Context!15200)

(declare-fun lt!2586655 () (Set Context!15200))

(declare-fun flatMap!2825 ((Set Context!15200) Int) (Set Context!15200))

(declare-fun derivationStepZipperUp!2484 (Context!15200 C!37594) (Set Context!15200))

(assert (=> b!7254985 (= (flatMap!2825 lt!2586655 lambda!444937) (derivationStepZipperUp!2484 lt!2586677 (h!76885 s1!1971)))))

(declare-fun lt!2586665 () Unit!163911)

(declare-fun lemmaFlatMapOnSingletonSet!2229 ((Set Context!15200) Context!15200 Int) Unit!163911)

(assert (=> b!7254985 (= lt!2586665 (lemmaFlatMapOnSingletonSet!2229 lt!2586655 lt!2586677 lambda!444937))))

(declare-fun lt!2586663 () Unit!163911)

(assert (=> b!7254985 (= lt!2586663 (lemmaConcatPreservesForall!1467 (exprs!8100 ct1!232) (exprs!8100 ct2!328) lambda!444935))))

(assert (=> b!7254985 (= (flatMap!2825 lt!2586661 lambda!444937) (derivationStepZipperUp!2484 ct1!232 (h!76885 s1!1971)))))

(declare-fun lt!2586679 () Unit!163911)

(assert (=> b!7254985 (= lt!2586679 (lemmaFlatMapOnSingletonSet!2229 lt!2586661 ct1!232 lambda!444937))))

(declare-fun lt!2586678 () Context!15200)

(declare-fun derivationStepZipperDown!2654 (Regex!18660 Context!15200 C!37594) (Set Context!15200))

(assert (=> b!7254985 (= lt!2586658 (derivationStepZipperDown!2654 (h!76884 (exprs!8100 ct1!232)) lt!2586678 (h!76885 s1!1971)))))

(declare-fun lt!2586683 () List!70560)

(declare-fun tail!14344 (List!70560) List!70560)

(assert (=> b!7254985 (= lt!2586678 (Context!15201 (tail!14344 lt!2586683)))))

(declare-fun b!7254986 () Bool)

(declare-fun tp!2038035 () Bool)

(assert (=> b!7254986 (= e!4350247 tp!2038035)))

(declare-fun b!7254987 () Bool)

(declare-fun e!4350246 () Bool)

(declare-fun e!4350236 () Bool)

(assert (=> b!7254987 (= e!4350246 e!4350236)))

(declare-fun res!2942171 () Bool)

(assert (=> b!7254987 (=> res!2942171 e!4350236)))

(declare-fun isEmpty!40562 (List!70560) Bool)

(assert (=> b!7254987 (= res!2942171 (isEmpty!40562 (exprs!8100 ct1!232)))))

(declare-fun lt!2586674 () (Set Context!15200))

(assert (=> b!7254987 (= lt!2586674 (derivationStepZipperUp!2484 ct1!232 (h!76885 s1!1971)))))

(declare-fun lt!2586664 () Context!15200)

(declare-fun lt!2586656 () Unit!163911)

(assert (=> b!7254987 (= lt!2586656 (lemmaConcatPreservesForall!1467 (exprs!8100 lt!2586664) (exprs!8100 ct2!328) lambda!444935))))

(declare-fun lt!2586652 () List!70560)

(assert (=> b!7254987 (matchZipper!3570 (set.insert (Context!15201 lt!2586652) (as set.empty (Set Context!15200))) lt!2586673)))

(declare-fun s2!1849 () List!70561)

(declare-fun ++!16582 (List!70561 List!70561) List!70561)

(assert (=> b!7254987 (= lt!2586673 (++!16582 (t!384623 s1!1971) s2!1849))))

(declare-fun ++!16583 (List!70560 List!70560) List!70560)

(assert (=> b!7254987 (= lt!2586652 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328)))))

(declare-fun lt!2586660 () Unit!163911)

(assert (=> b!7254987 (= lt!2586660 (lemmaConcatPreservesForall!1467 (exprs!8100 lt!2586664) (exprs!8100 ct2!328) lambda!444935))))

(declare-fun lt!2586662 () Unit!163911)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!405 (Context!15200 Context!15200 List!70561 List!70561) Unit!163911)

(assert (=> b!7254987 (= lt!2586662 (lemmaConcatenateContextMatchesConcatOfStrings!405 lt!2586664 ct2!328 (t!384623 s1!1971) s2!1849))))

(declare-fun lt!2586681 () (Set Context!15200))

(declare-fun lambda!444936 () Int)

(declare-fun getWitness!2227 ((Set Context!15200) Int) Context!15200)

(assert (=> b!7254987 (= lt!2586664 (getWitness!2227 lt!2586681 lambda!444936))))

(declare-fun b!7254988 () Bool)

(declare-fun e!4350233 () Bool)

(declare-fun e!4350239 () Bool)

(assert (=> b!7254988 (= e!4350233 e!4350239)))

(declare-fun res!2942161 () Bool)

(assert (=> b!7254988 (=> (not res!2942161) (not e!4350239))))

(assert (=> b!7254988 (= res!2942161 (matchZipper!3570 lt!2586681 (t!384623 s1!1971)))))

(declare-fun derivationStepZipper!3438 ((Set Context!15200) C!37594) (Set Context!15200))

(assert (=> b!7254988 (= lt!2586681 (derivationStepZipper!3438 lt!2586661 (h!76885 s1!1971)))))

(declare-fun b!7254989 () Bool)

(declare-fun res!2942174 () Bool)

(assert (=> b!7254989 (=> res!2942174 e!4350235)))

(declare-fun lt!2586653 () (Set Context!15200))

(assert (=> b!7254989 (= res!2942174 (not (= (derivationStepZipper!3438 lt!2586655 (h!76885 s1!1971)) lt!2586653)))))

(declare-fun b!7254990 () Bool)

(declare-fun lt!2586651 () Context!15200)

(assert (=> b!7254990 (= e!4350244 (inv!89661 lt!2586651))))

(declare-fun b!7254991 () Bool)

(declare-fun res!2942169 () Bool)

(assert (=> b!7254991 (=> (not res!2942169) (not e!4350243))))

(assert (=> b!7254991 (= res!2942169 (matchZipper!3570 (set.insert ct2!328 (as set.empty (Set Context!15200))) s2!1849))))

(declare-fun b!7254992 () Bool)

(declare-fun e!4350241 () Bool)

(assert (=> b!7254992 (= e!4350241 e!4350235)))

(declare-fun res!2942164 () Bool)

(assert (=> b!7254992 (=> res!2942164 e!4350235)))

(assert (=> b!7254992 (= res!2942164 (not (= lt!2586653 lt!2586671)))))

(assert (=> b!7254992 (= lt!2586671 (set.union lt!2586658 lt!2586669))))

(assert (=> b!7254992 (= lt!2586669 (derivationStepZipperUp!2484 lt!2586678 (h!76885 s1!1971)))))

(declare-fun lt!2586654 () Unit!163911)

(assert (=> b!7254992 (= lt!2586654 (lemmaConcatPreservesForall!1467 (exprs!8100 ct1!232) (exprs!8100 ct2!328) lambda!444935))))

(declare-fun b!7254993 () Bool)

(assert (=> b!7254993 (= e!4350242 e!4350241)))

(declare-fun res!2942167 () Bool)

(assert (=> b!7254993 (=> res!2942167 e!4350241)))

(assert (=> b!7254993 (= res!2942167 (or (not (= lt!2586674 lt!2586676)) (not (= lt!2586681 lt!2586674))))))

(assert (=> b!7254993 (= lt!2586676 (set.union lt!2586666 lt!2586670))))

(assert (=> b!7254993 (= lt!2586670 (derivationStepZipperUp!2484 lt!2586651 (h!76885 s1!1971)))))

(declare-fun b!7254994 () Bool)

(declare-fun tp!2038036 () Bool)

(assert (=> b!7254994 (= e!4350234 tp!2038036)))

(declare-fun b!7254995 () Bool)

(assert (=> b!7254995 (= e!4350243 e!4350233)))

(declare-fun res!2942168 () Bool)

(assert (=> b!7254995 (=> (not res!2942168) (not e!4350233))))

(assert (=> b!7254995 (= res!2942168 (and (not (is-Nil!70436 (exprs!8100 ct1!232))) (is-Cons!70437 s1!1971)))))

(assert (=> b!7254995 (= lt!2586655 (set.insert lt!2586677 (as set.empty (Set Context!15200))))))

(assert (=> b!7254995 (= lt!2586677 (Context!15201 lt!2586683))))

(assert (=> b!7254995 (= lt!2586683 (++!16583 (exprs!8100 ct1!232) (exprs!8100 ct2!328)))))

(declare-fun lt!2586680 () Unit!163911)

(assert (=> b!7254995 (= lt!2586680 (lemmaConcatPreservesForall!1467 (exprs!8100 ct1!232) (exprs!8100 ct2!328) lambda!444935))))

(declare-fun b!7254996 () Bool)

(declare-fun tp_is_empty!46785 () Bool)

(declare-fun tp!2038037 () Bool)

(assert (=> b!7254996 (= e!4350248 (and tp_is_empty!46785 tp!2038037))))

(declare-fun b!7254997 () Bool)

(assert (=> b!7254997 (= e!4350236 e!4350245)))

(declare-fun res!2942170 () Bool)

(assert (=> b!7254997 (=> res!2942170 e!4350245)))

(assert (=> b!7254997 (= res!2942170 (isEmpty!40562 lt!2586683))))

(declare-fun lt!2586682 () Unit!163911)

(assert (=> b!7254997 (= lt!2586682 (lemmaConcatPreservesForall!1467 (exprs!8100 ct1!232) (exprs!8100 ct2!328) lambda!444935))))

(assert (=> b!7254997 (= lt!2586653 (derivationStepZipperUp!2484 lt!2586677 (h!76885 s1!1971)))))

(declare-fun lt!2586668 () Unit!163911)

(assert (=> b!7254997 (= lt!2586668 (lemmaConcatPreservesForall!1467 (exprs!8100 ct1!232) (exprs!8100 ct2!328) lambda!444935))))

(assert (=> b!7254997 (= lt!2586666 (derivationStepZipperDown!2654 (h!76884 (exprs!8100 ct1!232)) lt!2586651 (h!76885 s1!1971)))))

(assert (=> b!7254997 (= lt!2586651 (Context!15201 (tail!14344 (exprs!8100 ct1!232))))))

(assert (=> b!7254998 (= e!4350239 (not e!4350246))))

(declare-fun res!2942173 () Bool)

(assert (=> b!7254998 (=> res!2942173 e!4350246)))

(declare-fun exists!4398 ((Set Context!15200) Int) Bool)

(assert (=> b!7254998 (= res!2942173 (not (exists!4398 lt!2586681 lambda!444936)))))

(declare-datatypes ((List!70562 0))(
  ( (Nil!70438) (Cons!70438 (h!76886 Context!15200) (t!384624 List!70562)) )
))
(declare-fun lt!2586667 () List!70562)

(declare-fun exists!4399 (List!70562 Int) Bool)

(assert (=> b!7254998 (exists!4399 lt!2586667 lambda!444936)))

(declare-fun lt!2586659 () Unit!163911)

(declare-fun lemmaZipperMatchesExistsMatchingContext!763 (List!70562 List!70561) Unit!163911)

(assert (=> b!7254998 (= lt!2586659 (lemmaZipperMatchesExistsMatchingContext!763 lt!2586667 (t!384623 s1!1971)))))

(declare-fun toList!11489 ((Set Context!15200)) List!70562)

(assert (=> b!7254998 (= lt!2586667 (toList!11489 lt!2586681))))

(declare-fun b!7254999 () Bool)

(declare-fun tp!2038038 () Bool)

(assert (=> b!7254999 (= e!4350237 (and tp_is_empty!46785 tp!2038038))))

(declare-fun b!7255000 () Bool)

(assert (=> b!7255000 (= e!4350240 (matchZipper!3570 lt!2586670 (t!384623 s1!1971)))))

(assert (= (and start!706418 res!2942162) b!7254991))

(assert (= (and b!7254991 res!2942169) b!7254995))

(assert (= (and b!7254995 res!2942168) b!7254988))

(assert (= (and b!7254988 res!2942161) b!7254998))

(assert (= (and b!7254998 (not res!2942173)) b!7254987))

(assert (= (and b!7254987 (not res!2942171)) b!7254997))

(assert (= (and b!7254997 (not res!2942170)) b!7254985))

(assert (= (and b!7254985 (not res!2942166)) b!7254993))

(assert (= (and b!7254993 (not res!2942167)) b!7254992))

(assert (= (and b!7254992 (not res!2942164)) b!7254989))

(assert (= (and b!7254989 (not res!2942174)) b!7254983))

(assert (= (and b!7254983 (not res!2942165)) b!7255000))

(assert (= (and b!7254983 (not res!2942163)) b!7254984))

(assert (= (and b!7254983 (not res!2942172)) b!7254990))

(assert (= start!706418 b!7254994))

(assert (= (and start!706418 (is-Cons!70437 s1!1971)) b!7254999))

(assert (= (and start!706418 (is-Cons!70437 s2!1849)) b!7254996))

(assert (= start!706418 b!7254986))

(declare-fun m!7935590 () Bool)

(assert (=> b!7254983 m!7935590))

(declare-fun m!7935592 () Bool)

(assert (=> b!7254983 m!7935592))

(declare-fun m!7935594 () Bool)

(assert (=> b!7254983 m!7935594))

(declare-fun m!7935596 () Bool)

(assert (=> b!7254983 m!7935596))

(declare-fun m!7935598 () Bool)

(assert (=> b!7254983 m!7935598))

(declare-fun m!7935600 () Bool)

(assert (=> b!7254983 m!7935600))

(declare-fun m!7935602 () Bool)

(assert (=> b!7254983 m!7935602))

(declare-fun m!7935604 () Bool)

(assert (=> b!7254993 m!7935604))

(declare-fun m!7935606 () Bool)

(assert (=> b!7255000 m!7935606))

(declare-fun m!7935608 () Bool)

(assert (=> b!7254995 m!7935608))

(declare-fun m!7935610 () Bool)

(assert (=> b!7254995 m!7935610))

(assert (=> b!7254995 m!7935600))

(declare-fun m!7935612 () Bool)

(assert (=> b!7254988 m!7935612))

(declare-fun m!7935614 () Bool)

(assert (=> b!7254988 m!7935614))

(declare-fun m!7935616 () Bool)

(assert (=> b!7254992 m!7935616))

(assert (=> b!7254992 m!7935600))

(declare-fun m!7935618 () Bool)

(assert (=> b!7254984 m!7935618))

(declare-fun m!7935620 () Bool)

(assert (=> b!7254998 m!7935620))

(declare-fun m!7935622 () Bool)

(assert (=> b!7254998 m!7935622))

(declare-fun m!7935624 () Bool)

(assert (=> b!7254998 m!7935624))

(declare-fun m!7935626 () Bool)

(assert (=> b!7254998 m!7935626))

(declare-fun m!7935628 () Bool)

(assert (=> start!706418 m!7935628))

(declare-fun m!7935630 () Bool)

(assert (=> start!706418 m!7935630))

(declare-fun m!7935632 () Bool)

(assert (=> start!706418 m!7935632))

(declare-fun m!7935634 () Bool)

(assert (=> start!706418 m!7935634))

(declare-fun m!7935636 () Bool)

(assert (=> b!7254985 m!7935636))

(declare-fun m!7935638 () Bool)

(assert (=> b!7254985 m!7935638))

(declare-fun m!7935640 () Bool)

(assert (=> b!7254985 m!7935640))

(declare-fun m!7935642 () Bool)

(assert (=> b!7254985 m!7935642))

(declare-fun m!7935644 () Bool)

(assert (=> b!7254985 m!7935644))

(declare-fun m!7935646 () Bool)

(assert (=> b!7254985 m!7935646))

(declare-fun m!7935648 () Bool)

(assert (=> b!7254985 m!7935648))

(assert (=> b!7254985 m!7935600))

(declare-fun m!7935650 () Bool)

(assert (=> b!7254985 m!7935650))

(declare-fun m!7935652 () Bool)

(assert (=> b!7254985 m!7935652))

(declare-fun m!7935654 () Bool)

(assert (=> b!7254989 m!7935654))

(declare-fun m!7935656 () Bool)

(assert (=> b!7254997 m!7935656))

(assert (=> b!7254997 m!7935600))

(declare-fun m!7935658 () Bool)

(assert (=> b!7254997 m!7935658))

(declare-fun m!7935660 () Bool)

(assert (=> b!7254997 m!7935660))

(assert (=> b!7254997 m!7935600))

(assert (=> b!7254997 m!7935652))

(declare-fun m!7935662 () Bool)

(assert (=> b!7254991 m!7935662))

(assert (=> b!7254991 m!7935662))

(declare-fun m!7935664 () Bool)

(assert (=> b!7254991 m!7935664))

(declare-fun m!7935666 () Bool)

(assert (=> b!7254990 m!7935666))

(declare-fun m!7935668 () Bool)

(assert (=> b!7254987 m!7935668))

(declare-fun m!7935670 () Bool)

(assert (=> b!7254987 m!7935670))

(declare-fun m!7935672 () Bool)

(assert (=> b!7254987 m!7935672))

(declare-fun m!7935674 () Bool)

(assert (=> b!7254987 m!7935674))

(declare-fun m!7935676 () Bool)

(assert (=> b!7254987 m!7935676))

(assert (=> b!7254987 m!7935648))

(declare-fun m!7935678 () Bool)

(assert (=> b!7254987 m!7935678))

(assert (=> b!7254987 m!7935676))

(declare-fun m!7935680 () Bool)

(assert (=> b!7254987 m!7935680))

(assert (=> b!7254987 m!7935668))

(declare-fun m!7935682 () Bool)

(assert (=> b!7254987 m!7935682))

(push 1)

(assert (not b!7254998))

(assert (not b!7254997))

(assert tp_is_empty!46785)

(assert (not b!7254994))

(assert (not b!7254992))

(assert (not start!706418))

(assert (not b!7254989))

(assert (not b!7254996))

(assert (not b!7254983))

(assert (not b!7254986))

(assert (not b!7254995))

(assert (not b!7254991))

(assert (not b!7254987))

(assert (not b!7254984))

(assert (not b!7254985))

(assert (not b!7254988))

(assert (not b!7254993))

(assert (not b!7255000))

(assert (not b!7254990))

(assert (not b!7254999))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1907376 () Bool)

(declare-fun d!2256025 () Bool)

(assert (= bs!1907376 (and d!2256025 b!7254995)))

(declare-fun lambda!444969 () Int)

(assert (=> bs!1907376 (= lambda!444969 lambda!444935)))

(declare-fun forall!17510 (List!70560 Int) Bool)

(assert (=> d!2256025 (= (inv!89661 lt!2586651) (forall!17510 (exprs!8100 lt!2586651) lambda!444969))))

(declare-fun bs!1907377 () Bool)

(assert (= bs!1907377 d!2256025))

(declare-fun m!7935778 () Bool)

(assert (=> bs!1907377 m!7935778))

(assert (=> b!7254990 d!2256025))

(declare-fun d!2256027 () Bool)

(declare-fun c!1348820 () Bool)

(declare-fun isEmpty!40564 (List!70561) Bool)

(assert (=> d!2256027 (= c!1348820 (isEmpty!40564 s2!1849))))

(declare-fun e!4350299 () Bool)

(assert (=> d!2256027 (= (matchZipper!3570 (set.insert ct2!328 (as set.empty (Set Context!15200))) s2!1849) e!4350299)))

(declare-fun b!7255067 () Bool)

(declare-fun nullableZipper!2922 ((Set Context!15200)) Bool)

(assert (=> b!7255067 (= e!4350299 (nullableZipper!2922 (set.insert ct2!328 (as set.empty (Set Context!15200)))))))

(declare-fun b!7255068 () Bool)

(declare-fun head!14918 (List!70561) C!37594)

(declare-fun tail!14346 (List!70561) List!70561)

(assert (=> b!7255068 (= e!4350299 (matchZipper!3570 (derivationStepZipper!3438 (set.insert ct2!328 (as set.empty (Set Context!15200))) (head!14918 s2!1849)) (tail!14346 s2!1849)))))

(assert (= (and d!2256027 c!1348820) b!7255067))

(assert (= (and d!2256027 (not c!1348820)) b!7255068))

(declare-fun m!7935780 () Bool)

(assert (=> d!2256027 m!7935780))

(assert (=> b!7255067 m!7935662))

(declare-fun m!7935782 () Bool)

(assert (=> b!7255067 m!7935782))

(declare-fun m!7935784 () Bool)

(assert (=> b!7255068 m!7935784))

(assert (=> b!7255068 m!7935662))

(assert (=> b!7255068 m!7935784))

(declare-fun m!7935786 () Bool)

(assert (=> b!7255068 m!7935786))

(declare-fun m!7935788 () Bool)

(assert (=> b!7255068 m!7935788))

(assert (=> b!7255068 m!7935786))

(assert (=> b!7255068 m!7935788))

(declare-fun m!7935790 () Bool)

(assert (=> b!7255068 m!7935790))

(assert (=> b!7254991 d!2256027))

(declare-fun bm!661062 () Bool)

(declare-fun call!661067 () (Set Context!15200))

(assert (=> bm!661062 (= call!661067 (derivationStepZipperDown!2654 (h!76884 (exprs!8100 lt!2586678)) (Context!15201 (t!384622 (exprs!8100 lt!2586678))) (h!76885 s1!1971)))))

(declare-fun b!7255079 () Bool)

(declare-fun e!4350307 () (Set Context!15200))

(assert (=> b!7255079 (= e!4350307 (as set.empty (Set Context!15200)))))

(declare-fun b!7255080 () Bool)

(declare-fun e!4350306 () Bool)

(assert (=> b!7255080 (= e!4350306 (nullable!7920 (h!76884 (exprs!8100 lt!2586678))))))

(declare-fun d!2256029 () Bool)

(declare-fun c!1348826 () Bool)

(assert (=> d!2256029 (= c!1348826 e!4350306)))

(declare-fun res!2942219 () Bool)

(assert (=> d!2256029 (=> (not res!2942219) (not e!4350306))))

(assert (=> d!2256029 (= res!2942219 (is-Cons!70436 (exprs!8100 lt!2586678)))))

(declare-fun e!4350308 () (Set Context!15200))

(assert (=> d!2256029 (= (derivationStepZipperUp!2484 lt!2586678 (h!76885 s1!1971)) e!4350308)))

(declare-fun b!7255081 () Bool)

(assert (=> b!7255081 (= e!4350308 e!4350307)))

(declare-fun c!1348825 () Bool)

(assert (=> b!7255081 (= c!1348825 (is-Cons!70436 (exprs!8100 lt!2586678)))))

(declare-fun b!7255082 () Bool)

(assert (=> b!7255082 (= e!4350308 (set.union call!661067 (derivationStepZipperUp!2484 (Context!15201 (t!384622 (exprs!8100 lt!2586678))) (h!76885 s1!1971))))))

(declare-fun b!7255083 () Bool)

(assert (=> b!7255083 (= e!4350307 call!661067)))

(assert (= (and d!2256029 res!2942219) b!7255080))

(assert (= (and d!2256029 c!1348826) b!7255082))

(assert (= (and d!2256029 (not c!1348826)) b!7255081))

(assert (= (and b!7255081 c!1348825) b!7255083))

(assert (= (and b!7255081 (not c!1348825)) b!7255079))

(assert (= (or b!7255082 b!7255083) bm!661062))

(declare-fun m!7935792 () Bool)

(assert (=> bm!661062 m!7935792))

(declare-fun m!7935794 () Bool)

(assert (=> b!7255080 m!7935794))

(declare-fun m!7935796 () Bool)

(assert (=> b!7255082 m!7935796))

(assert (=> b!7254992 d!2256029))

(declare-fun d!2256031 () Bool)

(assert (=> d!2256031 (forall!17510 (++!16583 (exprs!8100 ct1!232) (exprs!8100 ct2!328)) lambda!444935)))

(declare-fun lt!2586788 () Unit!163911)

(declare-fun choose!56080 (List!70560 List!70560 Int) Unit!163911)

(assert (=> d!2256031 (= lt!2586788 (choose!56080 (exprs!8100 ct1!232) (exprs!8100 ct2!328) lambda!444935))))

(assert (=> d!2256031 (forall!17510 (exprs!8100 ct1!232) lambda!444935)))

(assert (=> d!2256031 (= (lemmaConcatPreservesForall!1467 (exprs!8100 ct1!232) (exprs!8100 ct2!328) lambda!444935) lt!2586788)))

(declare-fun bs!1907378 () Bool)

(assert (= bs!1907378 d!2256031))

(assert (=> bs!1907378 m!7935610))

(assert (=> bs!1907378 m!7935610))

(declare-fun m!7935798 () Bool)

(assert (=> bs!1907378 m!7935798))

(declare-fun m!7935800 () Bool)

(assert (=> bs!1907378 m!7935800))

(declare-fun m!7935802 () Bool)

(assert (=> bs!1907378 m!7935802))

(assert (=> b!7254992 d!2256031))

(declare-fun d!2256033 () Bool)

(assert (=> d!2256033 (= (isEmpty!40562 (exprs!8100 ct1!232)) (is-Nil!70436 (exprs!8100 ct1!232)))))

(assert (=> b!7254987 d!2256033))

(declare-fun d!2256035 () Bool)

(declare-fun c!1348827 () Bool)

(assert (=> d!2256035 (= c!1348827 (isEmpty!40564 lt!2586673))))

(declare-fun e!4350309 () Bool)

(assert (=> d!2256035 (= (matchZipper!3570 (set.insert (Context!15201 lt!2586652) (as set.empty (Set Context!15200))) lt!2586673) e!4350309)))

(declare-fun b!7255084 () Bool)

(assert (=> b!7255084 (= e!4350309 (nullableZipper!2922 (set.insert (Context!15201 lt!2586652) (as set.empty (Set Context!15200)))))))

(declare-fun b!7255085 () Bool)

(assert (=> b!7255085 (= e!4350309 (matchZipper!3570 (derivationStepZipper!3438 (set.insert (Context!15201 lt!2586652) (as set.empty (Set Context!15200))) (head!14918 lt!2586673)) (tail!14346 lt!2586673)))))

(assert (= (and d!2256035 c!1348827) b!7255084))

(assert (= (and d!2256035 (not c!1348827)) b!7255085))

(declare-fun m!7935804 () Bool)

(assert (=> d!2256035 m!7935804))

(assert (=> b!7255084 m!7935668))

(declare-fun m!7935806 () Bool)

(assert (=> b!7255084 m!7935806))

(declare-fun m!7935808 () Bool)

(assert (=> b!7255085 m!7935808))

(assert (=> b!7255085 m!7935668))

(assert (=> b!7255085 m!7935808))

(declare-fun m!7935810 () Bool)

(assert (=> b!7255085 m!7935810))

(declare-fun m!7935812 () Bool)

(assert (=> b!7255085 m!7935812))

(assert (=> b!7255085 m!7935810))

(assert (=> b!7255085 m!7935812))

(declare-fun m!7935814 () Bool)

(assert (=> b!7255085 m!7935814))

(assert (=> b!7254987 d!2256035))

(declare-fun b!7255095 () Bool)

(declare-fun e!4350314 () List!70561)

(assert (=> b!7255095 (= e!4350314 (Cons!70437 (h!76885 (t!384623 s1!1971)) (++!16582 (t!384623 (t!384623 s1!1971)) s2!1849)))))

(declare-fun b!7255094 () Bool)

(assert (=> b!7255094 (= e!4350314 s2!1849)))

(declare-fun b!7255096 () Bool)

(declare-fun res!2942224 () Bool)

(declare-fun e!4350315 () Bool)

(assert (=> b!7255096 (=> (not res!2942224) (not e!4350315))))

(declare-fun lt!2586791 () List!70561)

(declare-fun size!41733 (List!70561) Int)

(assert (=> b!7255096 (= res!2942224 (= (size!41733 lt!2586791) (+ (size!41733 (t!384623 s1!1971)) (size!41733 s2!1849))))))

(declare-fun b!7255097 () Bool)

(assert (=> b!7255097 (= e!4350315 (or (not (= s2!1849 Nil!70437)) (= lt!2586791 (t!384623 s1!1971))))))

(declare-fun d!2256037 () Bool)

(assert (=> d!2256037 e!4350315))

(declare-fun res!2942225 () Bool)

(assert (=> d!2256037 (=> (not res!2942225) (not e!4350315))))

(declare-fun content!14635 (List!70561) (Set C!37594))

(assert (=> d!2256037 (= res!2942225 (= (content!14635 lt!2586791) (set.union (content!14635 (t!384623 s1!1971)) (content!14635 s2!1849))))))

(assert (=> d!2256037 (= lt!2586791 e!4350314)))

(declare-fun c!1348830 () Bool)

(assert (=> d!2256037 (= c!1348830 (is-Nil!70437 (t!384623 s1!1971)))))

(assert (=> d!2256037 (= (++!16582 (t!384623 s1!1971) s2!1849) lt!2586791)))

(assert (= (and d!2256037 c!1348830) b!7255094))

(assert (= (and d!2256037 (not c!1348830)) b!7255095))

(assert (= (and d!2256037 res!2942225) b!7255096))

(assert (= (and b!7255096 res!2942224) b!7255097))

(declare-fun m!7935816 () Bool)

(assert (=> b!7255095 m!7935816))

(declare-fun m!7935818 () Bool)

(assert (=> b!7255096 m!7935818))

(declare-fun m!7935820 () Bool)

(assert (=> b!7255096 m!7935820))

(declare-fun m!7935822 () Bool)

(assert (=> b!7255096 m!7935822))

(declare-fun m!7935824 () Bool)

(assert (=> d!2256037 m!7935824))

(declare-fun m!7935826 () Bool)

(assert (=> d!2256037 m!7935826))

(declare-fun m!7935828 () Bool)

(assert (=> d!2256037 m!7935828))

(assert (=> b!7254987 d!2256037))

(declare-fun d!2256039 () Bool)

(assert (=> d!2256039 (forall!17510 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328)) lambda!444935)))

(declare-fun lt!2586792 () Unit!163911)

(assert (=> d!2256039 (= lt!2586792 (choose!56080 (exprs!8100 lt!2586664) (exprs!8100 ct2!328) lambda!444935))))

(assert (=> d!2256039 (forall!17510 (exprs!8100 lt!2586664) lambda!444935)))

(assert (=> d!2256039 (= (lemmaConcatPreservesForall!1467 (exprs!8100 lt!2586664) (exprs!8100 ct2!328) lambda!444935) lt!2586792)))

(declare-fun bs!1907379 () Bool)

(assert (= bs!1907379 d!2256039))

(assert (=> bs!1907379 m!7935672))

(assert (=> bs!1907379 m!7935672))

(declare-fun m!7935830 () Bool)

(assert (=> bs!1907379 m!7935830))

(declare-fun m!7935832 () Bool)

(assert (=> bs!1907379 m!7935832))

(declare-fun m!7935834 () Bool)

(assert (=> bs!1907379 m!7935834))

(assert (=> b!7254987 d!2256039))

(declare-fun d!2256041 () Bool)

(declare-fun e!4350318 () Bool)

(assert (=> d!2256041 e!4350318))

(declare-fun res!2942228 () Bool)

(assert (=> d!2256041 (=> (not res!2942228) (not e!4350318))))

(declare-fun lt!2586795 () Context!15200)

(declare-fun dynLambda!28773 (Int Context!15200) Bool)

(assert (=> d!2256041 (= res!2942228 (dynLambda!28773 lambda!444936 lt!2586795))))

(declare-fun getWitness!2229 (List!70562 Int) Context!15200)

(assert (=> d!2256041 (= lt!2586795 (getWitness!2229 (toList!11489 lt!2586681) lambda!444936))))

(assert (=> d!2256041 (exists!4398 lt!2586681 lambda!444936)))

(assert (=> d!2256041 (= (getWitness!2227 lt!2586681 lambda!444936) lt!2586795)))

(declare-fun b!7255100 () Bool)

(assert (=> b!7255100 (= e!4350318 (set.member lt!2586795 lt!2586681))))

(assert (= (and d!2256041 res!2942228) b!7255100))

(declare-fun b_lambda!278895 () Bool)

(assert (=> (not b_lambda!278895) (not d!2256041)))

(declare-fun m!7935836 () Bool)

(assert (=> d!2256041 m!7935836))

(assert (=> d!2256041 m!7935626))

(assert (=> d!2256041 m!7935626))

(declare-fun m!7935838 () Bool)

(assert (=> d!2256041 m!7935838))

(assert (=> d!2256041 m!7935620))

(declare-fun m!7935840 () Bool)

(assert (=> b!7255100 m!7935840))

(assert (=> b!7254987 d!2256041))

(declare-fun bs!1907380 () Bool)

(declare-fun d!2256043 () Bool)

(assert (= bs!1907380 (and d!2256043 b!7254995)))

(declare-fun lambda!444972 () Int)

(assert (=> bs!1907380 (= lambda!444972 lambda!444935)))

(declare-fun bs!1907381 () Bool)

(assert (= bs!1907381 (and d!2256043 d!2256025)))

(assert (=> bs!1907381 (= lambda!444972 lambda!444969)))

(assert (=> d!2256043 (matchZipper!3570 (set.insert (Context!15201 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328))) (as set.empty (Set Context!15200))) (++!16582 (t!384623 s1!1971) s2!1849))))

(declare-fun lt!2586801 () Unit!163911)

(assert (=> d!2256043 (= lt!2586801 (lemmaConcatPreservesForall!1467 (exprs!8100 lt!2586664) (exprs!8100 ct2!328) lambda!444972))))

(declare-fun lt!2586800 () Unit!163911)

(declare-fun choose!56081 (Context!15200 Context!15200 List!70561 List!70561) Unit!163911)

(assert (=> d!2256043 (= lt!2586800 (choose!56081 lt!2586664 ct2!328 (t!384623 s1!1971) s2!1849))))

(assert (=> d!2256043 (matchZipper!3570 (set.insert lt!2586664 (as set.empty (Set Context!15200))) (t!384623 s1!1971))))

(assert (=> d!2256043 (= (lemmaConcatenateContextMatchesConcatOfStrings!405 lt!2586664 ct2!328 (t!384623 s1!1971) s2!1849) lt!2586800)))

(declare-fun bs!1907382 () Bool)

(assert (= bs!1907382 d!2256043))

(declare-fun m!7935842 () Bool)

(assert (=> bs!1907382 m!7935842))

(declare-fun m!7935844 () Bool)

(assert (=> bs!1907382 m!7935844))

(assert (=> bs!1907382 m!7935672))

(declare-fun m!7935846 () Bool)

(assert (=> bs!1907382 m!7935846))

(assert (=> bs!1907382 m!7935678))

(declare-fun m!7935848 () Bool)

(assert (=> bs!1907382 m!7935848))

(assert (=> bs!1907382 m!7935846))

(assert (=> bs!1907382 m!7935678))

(declare-fun m!7935850 () Bool)

(assert (=> bs!1907382 m!7935850))

(assert (=> bs!1907382 m!7935842))

(declare-fun m!7935852 () Bool)

(assert (=> bs!1907382 m!7935852))

(assert (=> b!7254987 d!2256043))

(declare-fun bm!661063 () Bool)

(declare-fun call!661068 () (Set Context!15200))

(assert (=> bm!661063 (= call!661068 (derivationStepZipperDown!2654 (h!76884 (exprs!8100 ct1!232)) (Context!15201 (t!384622 (exprs!8100 ct1!232))) (h!76885 s1!1971)))))

(declare-fun b!7255101 () Bool)

(declare-fun e!4350320 () (Set Context!15200))

(assert (=> b!7255101 (= e!4350320 (as set.empty (Set Context!15200)))))

(declare-fun b!7255102 () Bool)

(declare-fun e!4350319 () Bool)

(assert (=> b!7255102 (= e!4350319 (nullable!7920 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun d!2256045 () Bool)

(declare-fun c!1348832 () Bool)

(assert (=> d!2256045 (= c!1348832 e!4350319)))

(declare-fun res!2942229 () Bool)

(assert (=> d!2256045 (=> (not res!2942229) (not e!4350319))))

(assert (=> d!2256045 (= res!2942229 (is-Cons!70436 (exprs!8100 ct1!232)))))

(declare-fun e!4350321 () (Set Context!15200))

(assert (=> d!2256045 (= (derivationStepZipperUp!2484 ct1!232 (h!76885 s1!1971)) e!4350321)))

(declare-fun b!7255103 () Bool)

(assert (=> b!7255103 (= e!4350321 e!4350320)))

(declare-fun c!1348831 () Bool)

(assert (=> b!7255103 (= c!1348831 (is-Cons!70436 (exprs!8100 ct1!232)))))

(declare-fun b!7255104 () Bool)

(assert (=> b!7255104 (= e!4350321 (set.union call!661068 (derivationStepZipperUp!2484 (Context!15201 (t!384622 (exprs!8100 ct1!232))) (h!76885 s1!1971))))))

(declare-fun b!7255105 () Bool)

(assert (=> b!7255105 (= e!4350320 call!661068)))

(assert (= (and d!2256045 res!2942229) b!7255102))

(assert (= (and d!2256045 c!1348832) b!7255104))

(assert (= (and d!2256045 (not c!1348832)) b!7255103))

(assert (= (and b!7255103 c!1348831) b!7255105))

(assert (= (and b!7255103 (not c!1348831)) b!7255101))

(assert (= (or b!7255104 b!7255105) bm!661063))

(declare-fun m!7935854 () Bool)

(assert (=> bm!661063 m!7935854))

(assert (=> b!7255102 m!7935638))

(declare-fun m!7935856 () Bool)

(assert (=> b!7255104 m!7935856))

(assert (=> b!7254987 d!2256045))

(declare-fun b!7255117 () Bool)

(declare-fun lt!2586804 () List!70560)

(declare-fun e!4350327 () Bool)

(assert (=> b!7255117 (= e!4350327 (or (not (= (exprs!8100 ct2!328) Nil!70436)) (= lt!2586804 (exprs!8100 lt!2586664))))))

(declare-fun d!2256047 () Bool)

(assert (=> d!2256047 e!4350327))

(declare-fun res!2942234 () Bool)

(assert (=> d!2256047 (=> (not res!2942234) (not e!4350327))))

(declare-fun content!14636 (List!70560) (Set Regex!18660))

(assert (=> d!2256047 (= res!2942234 (= (content!14636 lt!2586804) (set.union (content!14636 (exprs!8100 lt!2586664)) (content!14636 (exprs!8100 ct2!328)))))))

(declare-fun e!4350326 () List!70560)

(assert (=> d!2256047 (= lt!2586804 e!4350326)))

(declare-fun c!1348835 () Bool)

(assert (=> d!2256047 (= c!1348835 (is-Nil!70436 (exprs!8100 lt!2586664)))))

(assert (=> d!2256047 (= (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328)) lt!2586804)))

(declare-fun b!7255116 () Bool)

(declare-fun res!2942235 () Bool)

(assert (=> b!7255116 (=> (not res!2942235) (not e!4350327))))

(declare-fun size!41734 (List!70560) Int)

(assert (=> b!7255116 (= res!2942235 (= (size!41734 lt!2586804) (+ (size!41734 (exprs!8100 lt!2586664)) (size!41734 (exprs!8100 ct2!328)))))))

(declare-fun b!7255114 () Bool)

(assert (=> b!7255114 (= e!4350326 (exprs!8100 ct2!328))))

(declare-fun b!7255115 () Bool)

(assert (=> b!7255115 (= e!4350326 (Cons!70436 (h!76884 (exprs!8100 lt!2586664)) (++!16583 (t!384622 (exprs!8100 lt!2586664)) (exprs!8100 ct2!328))))))

(assert (= (and d!2256047 c!1348835) b!7255114))

(assert (= (and d!2256047 (not c!1348835)) b!7255115))

(assert (= (and d!2256047 res!2942234) b!7255116))

(assert (= (and b!7255116 res!2942235) b!7255117))

(declare-fun m!7935858 () Bool)

(assert (=> d!2256047 m!7935858))

(declare-fun m!7935860 () Bool)

(assert (=> d!2256047 m!7935860))

(declare-fun m!7935862 () Bool)

(assert (=> d!2256047 m!7935862))

(declare-fun m!7935864 () Bool)

(assert (=> b!7255116 m!7935864))

(declare-fun m!7935866 () Bool)

(assert (=> b!7255116 m!7935866))

(declare-fun m!7935868 () Bool)

(assert (=> b!7255116 m!7935868))

(declare-fun m!7935870 () Bool)

(assert (=> b!7255115 m!7935870))

(assert (=> b!7254987 d!2256047))

(declare-fun d!2256049 () Bool)

(declare-fun lt!2586807 () Bool)

(assert (=> d!2256049 (= lt!2586807 (exists!4399 (toList!11489 lt!2586681) lambda!444936))))

(declare-fun choose!56082 ((Set Context!15200) Int) Bool)

(assert (=> d!2256049 (= lt!2586807 (choose!56082 lt!2586681 lambda!444936))))

(assert (=> d!2256049 (= (exists!4398 lt!2586681 lambda!444936) lt!2586807)))

(declare-fun bs!1907383 () Bool)

(assert (= bs!1907383 d!2256049))

(assert (=> bs!1907383 m!7935626))

(assert (=> bs!1907383 m!7935626))

(declare-fun m!7935872 () Bool)

(assert (=> bs!1907383 m!7935872))

(declare-fun m!7935874 () Bool)

(assert (=> bs!1907383 m!7935874))

(assert (=> b!7254998 d!2256049))

(declare-fun bs!1907384 () Bool)

(declare-fun d!2256051 () Bool)

(assert (= bs!1907384 (and d!2256051 b!7254998)))

(declare-fun lambda!444975 () Int)

(assert (=> bs!1907384 (not (= lambda!444975 lambda!444936))))

(assert (=> d!2256051 true))

(declare-fun order!28999 () Int)

(declare-fun dynLambda!28774 (Int Int) Int)

(assert (=> d!2256051 (< (dynLambda!28774 order!28999 lambda!444936) (dynLambda!28774 order!28999 lambda!444975))))

(declare-fun forall!17511 (List!70562 Int) Bool)

(assert (=> d!2256051 (= (exists!4399 lt!2586667 lambda!444936) (not (forall!17511 lt!2586667 lambda!444975)))))

(declare-fun bs!1907385 () Bool)

(assert (= bs!1907385 d!2256051))

(declare-fun m!7935876 () Bool)

(assert (=> bs!1907385 m!7935876))

(assert (=> b!7254998 d!2256051))

(declare-fun bs!1907386 () Bool)

(declare-fun d!2256053 () Bool)

(assert (= bs!1907386 (and d!2256053 b!7254998)))

(declare-fun lambda!444978 () Int)

(assert (=> bs!1907386 (= lambda!444978 lambda!444936)))

(declare-fun bs!1907387 () Bool)

(assert (= bs!1907387 (and d!2256053 d!2256051)))

(assert (=> bs!1907387 (not (= lambda!444978 lambda!444975))))

(assert (=> d!2256053 true))

(assert (=> d!2256053 (exists!4399 lt!2586667 lambda!444978)))

(declare-fun lt!2586810 () Unit!163911)

(declare-fun choose!56083 (List!70562 List!70561) Unit!163911)

(assert (=> d!2256053 (= lt!2586810 (choose!56083 lt!2586667 (t!384623 s1!1971)))))

(declare-fun content!14637 (List!70562) (Set Context!15200))

(assert (=> d!2256053 (matchZipper!3570 (content!14637 lt!2586667) (t!384623 s1!1971))))

(assert (=> d!2256053 (= (lemmaZipperMatchesExistsMatchingContext!763 lt!2586667 (t!384623 s1!1971)) lt!2586810)))

(declare-fun bs!1907388 () Bool)

(assert (= bs!1907388 d!2256053))

(declare-fun m!7935878 () Bool)

(assert (=> bs!1907388 m!7935878))

(declare-fun m!7935880 () Bool)

(assert (=> bs!1907388 m!7935880))

(declare-fun m!7935882 () Bool)

(assert (=> bs!1907388 m!7935882))

(assert (=> bs!1907388 m!7935882))

(declare-fun m!7935884 () Bool)

(assert (=> bs!1907388 m!7935884))

(assert (=> b!7254998 d!2256053))

(declare-fun d!2256055 () Bool)

(declare-fun e!4350330 () Bool)

(assert (=> d!2256055 e!4350330))

(declare-fun res!2942238 () Bool)

(assert (=> d!2256055 (=> (not res!2942238) (not e!4350330))))

(declare-fun lt!2586813 () List!70562)

(declare-fun noDuplicate!2998 (List!70562) Bool)

(assert (=> d!2256055 (= res!2942238 (noDuplicate!2998 lt!2586813))))

(declare-fun choose!56084 ((Set Context!15200)) List!70562)

(assert (=> d!2256055 (= lt!2586813 (choose!56084 lt!2586681))))

(assert (=> d!2256055 (= (toList!11489 lt!2586681) lt!2586813)))

(declare-fun b!7255122 () Bool)

(assert (=> b!7255122 (= e!4350330 (= (content!14637 lt!2586813) lt!2586681))))

(assert (= (and d!2256055 res!2942238) b!7255122))

(declare-fun m!7935886 () Bool)

(assert (=> d!2256055 m!7935886))

(declare-fun m!7935888 () Bool)

(assert (=> d!2256055 m!7935888))

(declare-fun m!7935890 () Bool)

(assert (=> b!7255122 m!7935890))

(assert (=> b!7254998 d!2256055))

(declare-fun d!2256057 () Bool)

(declare-fun c!1348838 () Bool)

(assert (=> d!2256057 (= c!1348838 (isEmpty!40564 (t!384623 s1!1971)))))

(declare-fun e!4350331 () Bool)

(assert (=> d!2256057 (= (matchZipper!3570 lt!2586681 (t!384623 s1!1971)) e!4350331)))

(declare-fun b!7255123 () Bool)

(assert (=> b!7255123 (= e!4350331 (nullableZipper!2922 lt!2586681))))

(declare-fun b!7255124 () Bool)

(assert (=> b!7255124 (= e!4350331 (matchZipper!3570 (derivationStepZipper!3438 lt!2586681 (head!14918 (t!384623 s1!1971))) (tail!14346 (t!384623 s1!1971))))))

(assert (= (and d!2256057 c!1348838) b!7255123))

(assert (= (and d!2256057 (not c!1348838)) b!7255124))

(declare-fun m!7935892 () Bool)

(assert (=> d!2256057 m!7935892))

(declare-fun m!7935894 () Bool)

(assert (=> b!7255123 m!7935894))

(declare-fun m!7935896 () Bool)

(assert (=> b!7255124 m!7935896))

(assert (=> b!7255124 m!7935896))

(declare-fun m!7935898 () Bool)

(assert (=> b!7255124 m!7935898))

(declare-fun m!7935900 () Bool)

(assert (=> b!7255124 m!7935900))

(assert (=> b!7255124 m!7935898))

(assert (=> b!7255124 m!7935900))

(declare-fun m!7935902 () Bool)

(assert (=> b!7255124 m!7935902))

(assert (=> b!7254988 d!2256057))

(declare-fun bs!1907389 () Bool)

(declare-fun d!2256059 () Bool)

(assert (= bs!1907389 (and d!2256059 b!7254985)))

(declare-fun lambda!444981 () Int)

(assert (=> bs!1907389 (= lambda!444981 lambda!444937)))

(assert (=> d!2256059 true))

(assert (=> d!2256059 (= (derivationStepZipper!3438 lt!2586661 (h!76885 s1!1971)) (flatMap!2825 lt!2586661 lambda!444981))))

(declare-fun bs!1907390 () Bool)

(assert (= bs!1907390 d!2256059))

(declare-fun m!7935904 () Bool)

(assert (=> bs!1907390 m!7935904))

(assert (=> b!7254988 d!2256059))

(declare-fun d!2256061 () Bool)

(declare-fun c!1348841 () Bool)

(assert (=> d!2256061 (= c!1348841 (isEmpty!40564 s1!1971))))

(declare-fun e!4350332 () Bool)

(assert (=> d!2256061 (= (matchZipper!3570 lt!2586661 s1!1971) e!4350332)))

(declare-fun b!7255127 () Bool)

(assert (=> b!7255127 (= e!4350332 (nullableZipper!2922 lt!2586661))))

(declare-fun b!7255128 () Bool)

(assert (=> b!7255128 (= e!4350332 (matchZipper!3570 (derivationStepZipper!3438 lt!2586661 (head!14918 s1!1971)) (tail!14346 s1!1971)))))

(assert (= (and d!2256061 c!1348841) b!7255127))

(assert (= (and d!2256061 (not c!1348841)) b!7255128))

(declare-fun m!7935906 () Bool)

(assert (=> d!2256061 m!7935906))

(declare-fun m!7935908 () Bool)

(assert (=> b!7255127 m!7935908))

(declare-fun m!7935910 () Bool)

(assert (=> b!7255128 m!7935910))

(assert (=> b!7255128 m!7935910))

(declare-fun m!7935912 () Bool)

(assert (=> b!7255128 m!7935912))

(declare-fun m!7935914 () Bool)

(assert (=> b!7255128 m!7935914))

(assert (=> b!7255128 m!7935912))

(assert (=> b!7255128 m!7935914))

(declare-fun m!7935916 () Bool)

(assert (=> b!7255128 m!7935916))

(assert (=> start!706418 d!2256061))

(declare-fun bs!1907391 () Bool)

(declare-fun d!2256063 () Bool)

(assert (= bs!1907391 (and d!2256063 b!7254995)))

(declare-fun lambda!444982 () Int)

(assert (=> bs!1907391 (= lambda!444982 lambda!444935)))

(declare-fun bs!1907392 () Bool)

(assert (= bs!1907392 (and d!2256063 d!2256025)))

(assert (=> bs!1907392 (= lambda!444982 lambda!444969)))

(declare-fun bs!1907393 () Bool)

(assert (= bs!1907393 (and d!2256063 d!2256043)))

(assert (=> bs!1907393 (= lambda!444982 lambda!444972)))

(assert (=> d!2256063 (= (inv!89661 ct1!232) (forall!17510 (exprs!8100 ct1!232) lambda!444982))))

(declare-fun bs!1907394 () Bool)

(assert (= bs!1907394 d!2256063))

(declare-fun m!7935918 () Bool)

(assert (=> bs!1907394 m!7935918))

(assert (=> start!706418 d!2256063))

(declare-fun bs!1907395 () Bool)

(declare-fun d!2256065 () Bool)

(assert (= bs!1907395 (and d!2256065 b!7254995)))

(declare-fun lambda!444983 () Int)

(assert (=> bs!1907395 (= lambda!444983 lambda!444935)))

(declare-fun bs!1907396 () Bool)

(assert (= bs!1907396 (and d!2256065 d!2256025)))

(assert (=> bs!1907396 (= lambda!444983 lambda!444969)))

(declare-fun bs!1907397 () Bool)

(assert (= bs!1907397 (and d!2256065 d!2256043)))

(assert (=> bs!1907397 (= lambda!444983 lambda!444972)))

(declare-fun bs!1907398 () Bool)

(assert (= bs!1907398 (and d!2256065 d!2256063)))

(assert (=> bs!1907398 (= lambda!444983 lambda!444982)))

(assert (=> d!2256065 (= (inv!89661 ct2!328) (forall!17510 (exprs!8100 ct2!328) lambda!444983))))

(declare-fun bs!1907399 () Bool)

(assert (= bs!1907399 d!2256065))

(declare-fun m!7935920 () Bool)

(assert (=> bs!1907399 m!7935920))

(assert (=> start!706418 d!2256065))

(declare-fun bs!1907400 () Bool)

(declare-fun d!2256067 () Bool)

(assert (= bs!1907400 (and d!2256067 b!7254985)))

(declare-fun lambda!444984 () Int)

(assert (=> bs!1907400 (= lambda!444984 lambda!444937)))

(declare-fun bs!1907401 () Bool)

(assert (= bs!1907401 (and d!2256067 d!2256059)))

(assert (=> bs!1907401 (= lambda!444984 lambda!444981)))

(assert (=> d!2256067 true))

(assert (=> d!2256067 (= (derivationStepZipper!3438 lt!2586655 (h!76885 s1!1971)) (flatMap!2825 lt!2586655 lambda!444984))))

(declare-fun bs!1907402 () Bool)

(assert (= bs!1907402 d!2256067))

(declare-fun m!7935922 () Bool)

(assert (=> bs!1907402 m!7935922))

(assert (=> b!7254989 d!2256067))

(declare-fun d!2256069 () Bool)

(declare-fun c!1348842 () Bool)

(assert (=> d!2256069 (= c!1348842 (isEmpty!40564 (t!384623 s1!1971)))))

(declare-fun e!4350333 () Bool)

(assert (=> d!2256069 (= (matchZipper!3570 lt!2586670 (t!384623 s1!1971)) e!4350333)))

(declare-fun b!7255129 () Bool)

(assert (=> b!7255129 (= e!4350333 (nullableZipper!2922 lt!2586670))))

(declare-fun b!7255130 () Bool)

(assert (=> b!7255130 (= e!4350333 (matchZipper!3570 (derivationStepZipper!3438 lt!2586670 (head!14918 (t!384623 s1!1971))) (tail!14346 (t!384623 s1!1971))))))

(assert (= (and d!2256069 c!1348842) b!7255129))

(assert (= (and d!2256069 (not c!1348842)) b!7255130))

(assert (=> d!2256069 m!7935892))

(declare-fun m!7935924 () Bool)

(assert (=> b!7255129 m!7935924))

(assert (=> b!7255130 m!7935896))

(assert (=> b!7255130 m!7935896))

(declare-fun m!7935926 () Bool)

(assert (=> b!7255130 m!7935926))

(assert (=> b!7255130 m!7935900))

(assert (=> b!7255130 m!7935926))

(assert (=> b!7255130 m!7935900))

(declare-fun m!7935928 () Bool)

(assert (=> b!7255130 m!7935928))

(assert (=> b!7255000 d!2256069))

(declare-fun b!7255134 () Bool)

(declare-fun lt!2586814 () List!70560)

(declare-fun e!4350335 () Bool)

(assert (=> b!7255134 (= e!4350335 (or (not (= (exprs!8100 ct2!328) Nil!70436)) (= lt!2586814 (exprs!8100 ct1!232))))))

(declare-fun d!2256071 () Bool)

(assert (=> d!2256071 e!4350335))

(declare-fun res!2942239 () Bool)

(assert (=> d!2256071 (=> (not res!2942239) (not e!4350335))))

(assert (=> d!2256071 (= res!2942239 (= (content!14636 lt!2586814) (set.union (content!14636 (exprs!8100 ct1!232)) (content!14636 (exprs!8100 ct2!328)))))))

(declare-fun e!4350334 () List!70560)

(assert (=> d!2256071 (= lt!2586814 e!4350334)))

(declare-fun c!1348843 () Bool)

(assert (=> d!2256071 (= c!1348843 (is-Nil!70436 (exprs!8100 ct1!232)))))

(assert (=> d!2256071 (= (++!16583 (exprs!8100 ct1!232) (exprs!8100 ct2!328)) lt!2586814)))

(declare-fun b!7255133 () Bool)

(declare-fun res!2942240 () Bool)

(assert (=> b!7255133 (=> (not res!2942240) (not e!4350335))))

(assert (=> b!7255133 (= res!2942240 (= (size!41734 lt!2586814) (+ (size!41734 (exprs!8100 ct1!232)) (size!41734 (exprs!8100 ct2!328)))))))

(declare-fun b!7255131 () Bool)

(assert (=> b!7255131 (= e!4350334 (exprs!8100 ct2!328))))

(declare-fun b!7255132 () Bool)

(assert (=> b!7255132 (= e!4350334 (Cons!70436 (h!76884 (exprs!8100 ct1!232)) (++!16583 (t!384622 (exprs!8100 ct1!232)) (exprs!8100 ct2!328))))))

(assert (= (and d!2256071 c!1348843) b!7255131))

(assert (= (and d!2256071 (not c!1348843)) b!7255132))

(assert (= (and d!2256071 res!2942239) b!7255133))

(assert (= (and b!7255133 res!2942240) b!7255134))

(declare-fun m!7935930 () Bool)

(assert (=> d!2256071 m!7935930))

(declare-fun m!7935932 () Bool)

(assert (=> d!2256071 m!7935932))

(assert (=> d!2256071 m!7935862))

(declare-fun m!7935934 () Bool)

(assert (=> b!7255133 m!7935934))

(declare-fun m!7935936 () Bool)

(assert (=> b!7255133 m!7935936))

(assert (=> b!7255133 m!7935868))

(declare-fun m!7935938 () Bool)

(assert (=> b!7255132 m!7935938))

(assert (=> b!7254995 d!2256071))

(assert (=> b!7254995 d!2256031))

(declare-fun d!2256073 () Bool)

(declare-fun dynLambda!28775 (Int Context!15200) (Set Context!15200))

(assert (=> d!2256073 (= (flatMap!2825 lt!2586655 lambda!444937) (dynLambda!28775 lambda!444937 lt!2586677))))

(declare-fun lt!2586817 () Unit!163911)

(declare-fun choose!56085 ((Set Context!15200) Context!15200 Int) Unit!163911)

(assert (=> d!2256073 (= lt!2586817 (choose!56085 lt!2586655 lt!2586677 lambda!444937))))

(assert (=> d!2256073 (= lt!2586655 (set.insert lt!2586677 (as set.empty (Set Context!15200))))))

(assert (=> d!2256073 (= (lemmaFlatMapOnSingletonSet!2229 lt!2586655 lt!2586677 lambda!444937) lt!2586817)))

(declare-fun b_lambda!278897 () Bool)

(assert (=> (not b_lambda!278897) (not d!2256073)))

(declare-fun bs!1907403 () Bool)

(assert (= bs!1907403 d!2256073))

(assert (=> bs!1907403 m!7935650))

(declare-fun m!7935940 () Bool)

(assert (=> bs!1907403 m!7935940))

(declare-fun m!7935942 () Bool)

(assert (=> bs!1907403 m!7935942))

(assert (=> bs!1907403 m!7935608))

(assert (=> b!7254985 d!2256073))

(assert (=> b!7254985 d!2256031))

(declare-fun d!2256075 () Bool)

(declare-fun choose!56086 ((Set Context!15200) Int) (Set Context!15200))

(assert (=> d!2256075 (= (flatMap!2825 lt!2586655 lambda!444937) (choose!56086 lt!2586655 lambda!444937))))

(declare-fun bs!1907404 () Bool)

(assert (= bs!1907404 d!2256075))

(declare-fun m!7935944 () Bool)

(assert (=> bs!1907404 m!7935944))

(assert (=> b!7254985 d!2256075))

(declare-fun b!7255157 () Bool)

(declare-fun c!1348857 () Bool)

(declare-fun e!4350353 () Bool)

(assert (=> b!7255157 (= c!1348857 e!4350353)))

(declare-fun res!2942243 () Bool)

(assert (=> b!7255157 (=> (not res!2942243) (not e!4350353))))

(assert (=> b!7255157 (= res!2942243 (is-Concat!27505 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun e!4350349 () (Set Context!15200))

(declare-fun e!4350350 () (Set Context!15200))

(assert (=> b!7255157 (= e!4350349 e!4350350)))

(declare-fun b!7255158 () Bool)

(declare-fun c!1348855 () Bool)

(assert (=> b!7255158 (= c!1348855 (is-Star!18660 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun e!4350348 () (Set Context!15200))

(declare-fun e!4350352 () (Set Context!15200))

(assert (=> b!7255158 (= e!4350348 e!4350352)))

(declare-fun c!1348856 () Bool)

(declare-fun bm!661076 () Bool)

(declare-fun call!661081 () List!70560)

(declare-fun $colon$colon!2926 (List!70560 Regex!18660) List!70560)

(assert (=> bm!661076 (= call!661081 ($colon$colon!2926 (exprs!8100 lt!2586678) (ite (or c!1348857 c!1348856) (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (h!76884 (exprs!8100 ct1!232)))))))

(declare-fun b!7255159 () Bool)

(declare-fun call!661086 () (Set Context!15200))

(assert (=> b!7255159 (= e!4350352 call!661086)))

(declare-fun b!7255161 () Bool)

(declare-fun e!4350351 () (Set Context!15200))

(assert (=> b!7255161 (= e!4350351 (set.insert lt!2586678 (as set.empty (Set Context!15200))))))

(declare-fun bm!661077 () Bool)

(declare-fun c!1348854 () Bool)

(declare-fun call!661085 () (Set Context!15200))

(assert (=> bm!661077 (= call!661085 (derivationStepZipperDown!2654 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232)))) (ite c!1348854 lt!2586678 (Context!15201 call!661081)) (h!76885 s1!1971)))))

(declare-fun b!7255162 () Bool)

(assert (=> b!7255162 (= e!4350353 (nullable!7920 (regOne!37832 (h!76884 (exprs!8100 ct1!232)))))))

(declare-fun b!7255163 () Bool)

(assert (=> b!7255163 (= e!4350350 e!4350348)))

(assert (=> b!7255163 (= c!1348856 (is-Concat!27505 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun b!7255164 () Bool)

(declare-fun call!661082 () (Set Context!15200))

(assert (=> b!7255164 (= e!4350350 (set.union call!661085 call!661082))))

(declare-fun d!2256077 () Bool)

(declare-fun c!1348858 () Bool)

(assert (=> d!2256077 (= c!1348858 (and (is-ElementMatch!18660 (h!76884 (exprs!8100 ct1!232))) (= (c!1348806 (h!76884 (exprs!8100 ct1!232))) (h!76885 s1!1971))))))

(assert (=> d!2256077 (= (derivationStepZipperDown!2654 (h!76884 (exprs!8100 ct1!232)) lt!2586678 (h!76885 s1!1971)) e!4350351)))

(declare-fun b!7255160 () Bool)

(declare-fun call!661084 () (Set Context!15200))

(assert (=> b!7255160 (= e!4350349 (set.union call!661085 call!661084))))

(declare-fun bm!661078 () Bool)

(declare-fun call!661083 () List!70560)

(assert (=> bm!661078 (= call!661083 call!661081)))

(declare-fun bm!661079 () Bool)

(assert (=> bm!661079 (= call!661086 call!661082)))

(declare-fun b!7255165 () Bool)

(assert (=> b!7255165 (= e!4350351 e!4350349)))

(assert (=> b!7255165 (= c!1348854 (is-Union!18660 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun bm!661080 () Bool)

(assert (=> bm!661080 (= call!661084 (derivationStepZipperDown!2654 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232)))))) (ite (or c!1348854 c!1348857) lt!2586678 (Context!15201 call!661083)) (h!76885 s1!1971)))))

(declare-fun b!7255166 () Bool)

(assert (=> b!7255166 (= e!4350348 call!661086)))

(declare-fun b!7255167 () Bool)

(assert (=> b!7255167 (= e!4350352 (as set.empty (Set Context!15200)))))

(declare-fun bm!661081 () Bool)

(assert (=> bm!661081 (= call!661082 call!661084)))

(assert (= (and d!2256077 c!1348858) b!7255161))

(assert (= (and d!2256077 (not c!1348858)) b!7255165))

(assert (= (and b!7255165 c!1348854) b!7255160))

(assert (= (and b!7255165 (not c!1348854)) b!7255157))

(assert (= (and b!7255157 res!2942243) b!7255162))

(assert (= (and b!7255157 c!1348857) b!7255164))

(assert (= (and b!7255157 (not c!1348857)) b!7255163))

(assert (= (and b!7255163 c!1348856) b!7255166))

(assert (= (and b!7255163 (not c!1348856)) b!7255158))

(assert (= (and b!7255158 c!1348855) b!7255159))

(assert (= (and b!7255158 (not c!1348855)) b!7255167))

(assert (= (or b!7255166 b!7255159) bm!661078))

(assert (= (or b!7255166 b!7255159) bm!661079))

(assert (= (or b!7255164 bm!661078) bm!661076))

(assert (= (or b!7255164 bm!661079) bm!661081))

(assert (= (or b!7255160 bm!661081) bm!661080))

(assert (= (or b!7255160 b!7255164) bm!661077))

(declare-fun m!7935946 () Bool)

(assert (=> bm!661080 m!7935946))

(declare-fun m!7935948 () Bool)

(assert (=> bm!661077 m!7935948))

(declare-fun m!7935950 () Bool)

(assert (=> b!7255161 m!7935950))

(declare-fun m!7935952 () Bool)

(assert (=> bm!661076 m!7935952))

(declare-fun m!7935954 () Bool)

(assert (=> b!7255162 m!7935954))

(assert (=> b!7254985 d!2256077))

(declare-fun d!2256079 () Bool)

(declare-fun nullableFct!3111 (Regex!18660) Bool)

(assert (=> d!2256079 (= (nullable!7920 (h!76884 (exprs!8100 ct1!232))) (nullableFct!3111 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun bs!1907405 () Bool)

(assert (= bs!1907405 d!2256079))

(declare-fun m!7935956 () Bool)

(assert (=> bs!1907405 m!7935956))

(assert (=> b!7254985 d!2256079))

(declare-fun d!2256081 () Bool)

(assert (=> d!2256081 (= (tail!14344 lt!2586683) (t!384622 lt!2586683))))

(assert (=> b!7254985 d!2256081))

(declare-fun d!2256083 () Bool)

(assert (=> d!2256083 (= (flatMap!2825 lt!2586661 lambda!444937) (dynLambda!28775 lambda!444937 ct1!232))))

(declare-fun lt!2586818 () Unit!163911)

(assert (=> d!2256083 (= lt!2586818 (choose!56085 lt!2586661 ct1!232 lambda!444937))))

(assert (=> d!2256083 (= lt!2586661 (set.insert ct1!232 (as set.empty (Set Context!15200))))))

(assert (=> d!2256083 (= (lemmaFlatMapOnSingletonSet!2229 lt!2586661 ct1!232 lambda!444937) lt!2586818)))

(declare-fun b_lambda!278899 () Bool)

(assert (=> (not b_lambda!278899) (not d!2256083)))

(declare-fun bs!1907406 () Bool)

(assert (= bs!1907406 d!2256083))

(assert (=> bs!1907406 m!7935636))

(declare-fun m!7935958 () Bool)

(assert (=> bs!1907406 m!7935958))

(declare-fun m!7935960 () Bool)

(assert (=> bs!1907406 m!7935960))

(assert (=> bs!1907406 m!7935630))

(assert (=> b!7254985 d!2256083))

(assert (=> b!7254985 d!2256045))

(declare-fun d!2256085 () Bool)

(assert (=> d!2256085 (= (flatMap!2825 lt!2586661 lambda!444937) (choose!56086 lt!2586661 lambda!444937))))

(declare-fun bs!1907407 () Bool)

(assert (= bs!1907407 d!2256085))

(declare-fun m!7935962 () Bool)

(assert (=> bs!1907407 m!7935962))

(assert (=> b!7254985 d!2256085))

(declare-fun bm!661082 () Bool)

(declare-fun call!661087 () (Set Context!15200))

(assert (=> bm!661082 (= call!661087 (derivationStepZipperDown!2654 (h!76884 (exprs!8100 lt!2586677)) (Context!15201 (t!384622 (exprs!8100 lt!2586677))) (h!76885 s1!1971)))))

(declare-fun b!7255168 () Bool)

(declare-fun e!4350355 () (Set Context!15200))

(assert (=> b!7255168 (= e!4350355 (as set.empty (Set Context!15200)))))

(declare-fun b!7255169 () Bool)

(declare-fun e!4350354 () Bool)

(assert (=> b!7255169 (= e!4350354 (nullable!7920 (h!76884 (exprs!8100 lt!2586677))))))

(declare-fun d!2256087 () Bool)

(declare-fun c!1348860 () Bool)

(assert (=> d!2256087 (= c!1348860 e!4350354)))

(declare-fun res!2942244 () Bool)

(assert (=> d!2256087 (=> (not res!2942244) (not e!4350354))))

(assert (=> d!2256087 (= res!2942244 (is-Cons!70436 (exprs!8100 lt!2586677)))))

(declare-fun e!4350356 () (Set Context!15200))

(assert (=> d!2256087 (= (derivationStepZipperUp!2484 lt!2586677 (h!76885 s1!1971)) e!4350356)))

(declare-fun b!7255170 () Bool)

(assert (=> b!7255170 (= e!4350356 e!4350355)))

(declare-fun c!1348859 () Bool)

(assert (=> b!7255170 (= c!1348859 (is-Cons!70436 (exprs!8100 lt!2586677)))))

(declare-fun b!7255171 () Bool)

(assert (=> b!7255171 (= e!4350356 (set.union call!661087 (derivationStepZipperUp!2484 (Context!15201 (t!384622 (exprs!8100 lt!2586677))) (h!76885 s1!1971))))))

(declare-fun b!7255172 () Bool)

(assert (=> b!7255172 (= e!4350355 call!661087)))

(assert (= (and d!2256087 res!2942244) b!7255169))

(assert (= (and d!2256087 c!1348860) b!7255171))

(assert (= (and d!2256087 (not c!1348860)) b!7255170))

(assert (= (and b!7255170 c!1348859) b!7255172))

(assert (= (and b!7255170 (not c!1348859)) b!7255168))

(assert (= (or b!7255171 b!7255172) bm!661082))

(declare-fun m!7935964 () Bool)

(assert (=> bm!661082 m!7935964))

(declare-fun m!7935966 () Bool)

(assert (=> b!7255169 m!7935966))

(declare-fun m!7935968 () Bool)

(assert (=> b!7255171 m!7935968))

(assert (=> b!7254985 d!2256087))

(declare-fun d!2256089 () Bool)

(assert (=> d!2256089 (= (tail!14344 (exprs!8100 ct1!232)) (t!384622 (exprs!8100 ct1!232)))))

(assert (=> b!7254997 d!2256089))

(assert (=> b!7254997 d!2256031))

(declare-fun d!2256091 () Bool)

(assert (=> d!2256091 (= (isEmpty!40562 lt!2586683) (is-Nil!70436 lt!2586683))))

(assert (=> b!7254997 d!2256091))

(assert (=> b!7254997 d!2256087))

(declare-fun b!7255173 () Bool)

(declare-fun c!1348864 () Bool)

(declare-fun e!4350362 () Bool)

(assert (=> b!7255173 (= c!1348864 e!4350362)))

(declare-fun res!2942245 () Bool)

(assert (=> b!7255173 (=> (not res!2942245) (not e!4350362))))

(assert (=> b!7255173 (= res!2942245 (is-Concat!27505 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun e!4350358 () (Set Context!15200))

(declare-fun e!4350359 () (Set Context!15200))

(assert (=> b!7255173 (= e!4350358 e!4350359)))

(declare-fun b!7255174 () Bool)

(declare-fun c!1348862 () Bool)

(assert (=> b!7255174 (= c!1348862 (is-Star!18660 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun e!4350357 () (Set Context!15200))

(declare-fun e!4350361 () (Set Context!15200))

(assert (=> b!7255174 (= e!4350357 e!4350361)))

(declare-fun c!1348863 () Bool)

(declare-fun call!661088 () List!70560)

(declare-fun bm!661083 () Bool)

(assert (=> bm!661083 (= call!661088 ($colon$colon!2926 (exprs!8100 lt!2586651) (ite (or c!1348864 c!1348863) (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (h!76884 (exprs!8100 ct1!232)))))))

(declare-fun b!7255175 () Bool)

(declare-fun call!661093 () (Set Context!15200))

(assert (=> b!7255175 (= e!4350361 call!661093)))

(declare-fun b!7255177 () Bool)

(declare-fun e!4350360 () (Set Context!15200))

(assert (=> b!7255177 (= e!4350360 (set.insert lt!2586651 (as set.empty (Set Context!15200))))))

(declare-fun bm!661084 () Bool)

(declare-fun c!1348861 () Bool)

(declare-fun call!661092 () (Set Context!15200))

(assert (=> bm!661084 (= call!661092 (derivationStepZipperDown!2654 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232)))) (ite c!1348861 lt!2586651 (Context!15201 call!661088)) (h!76885 s1!1971)))))

(declare-fun b!7255178 () Bool)

(assert (=> b!7255178 (= e!4350362 (nullable!7920 (regOne!37832 (h!76884 (exprs!8100 ct1!232)))))))

(declare-fun b!7255179 () Bool)

(assert (=> b!7255179 (= e!4350359 e!4350357)))

(assert (=> b!7255179 (= c!1348863 (is-Concat!27505 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun b!7255180 () Bool)

(declare-fun call!661089 () (Set Context!15200))

(assert (=> b!7255180 (= e!4350359 (set.union call!661092 call!661089))))

(declare-fun d!2256093 () Bool)

(declare-fun c!1348865 () Bool)

(assert (=> d!2256093 (= c!1348865 (and (is-ElementMatch!18660 (h!76884 (exprs!8100 ct1!232))) (= (c!1348806 (h!76884 (exprs!8100 ct1!232))) (h!76885 s1!1971))))))

(assert (=> d!2256093 (= (derivationStepZipperDown!2654 (h!76884 (exprs!8100 ct1!232)) lt!2586651 (h!76885 s1!1971)) e!4350360)))

(declare-fun b!7255176 () Bool)

(declare-fun call!661091 () (Set Context!15200))

(assert (=> b!7255176 (= e!4350358 (set.union call!661092 call!661091))))

(declare-fun bm!661085 () Bool)

(declare-fun call!661090 () List!70560)

(assert (=> bm!661085 (= call!661090 call!661088)))

(declare-fun bm!661086 () Bool)

(assert (=> bm!661086 (= call!661093 call!661089)))

(declare-fun b!7255181 () Bool)

(assert (=> b!7255181 (= e!4350360 e!4350358)))

(assert (=> b!7255181 (= c!1348861 (is-Union!18660 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun bm!661087 () Bool)

(assert (=> bm!661087 (= call!661091 (derivationStepZipperDown!2654 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232)))))) (ite (or c!1348861 c!1348864) lt!2586651 (Context!15201 call!661090)) (h!76885 s1!1971)))))

(declare-fun b!7255182 () Bool)

(assert (=> b!7255182 (= e!4350357 call!661093)))

(declare-fun b!7255183 () Bool)

(assert (=> b!7255183 (= e!4350361 (as set.empty (Set Context!15200)))))

(declare-fun bm!661088 () Bool)

(assert (=> bm!661088 (= call!661089 call!661091)))

(assert (= (and d!2256093 c!1348865) b!7255177))

(assert (= (and d!2256093 (not c!1348865)) b!7255181))

(assert (= (and b!7255181 c!1348861) b!7255176))

(assert (= (and b!7255181 (not c!1348861)) b!7255173))

(assert (= (and b!7255173 res!2942245) b!7255178))

(assert (= (and b!7255173 c!1348864) b!7255180))

(assert (= (and b!7255173 (not c!1348864)) b!7255179))

(assert (= (and b!7255179 c!1348863) b!7255182))

(assert (= (and b!7255179 (not c!1348863)) b!7255174))

(assert (= (and b!7255174 c!1348862) b!7255175))

(assert (= (and b!7255174 (not c!1348862)) b!7255183))

(assert (= (or b!7255182 b!7255175) bm!661085))

(assert (= (or b!7255182 b!7255175) bm!661086))

(assert (= (or b!7255180 bm!661085) bm!661083))

(assert (= (or b!7255180 bm!661086) bm!661088))

(assert (= (or b!7255176 bm!661088) bm!661087))

(assert (= (or b!7255176 b!7255180) bm!661084))

(declare-fun m!7935970 () Bool)

(assert (=> bm!661087 m!7935970))

(declare-fun m!7935972 () Bool)

(assert (=> bm!661084 m!7935972))

(declare-fun m!7935974 () Bool)

(assert (=> b!7255177 m!7935974))

(declare-fun m!7935976 () Bool)

(assert (=> bm!661083 m!7935976))

(assert (=> b!7255178 m!7935954))

(assert (=> b!7254997 d!2256093))

(declare-fun bm!661089 () Bool)

(declare-fun call!661094 () (Set Context!15200))

(assert (=> bm!661089 (= call!661094 (derivationStepZipperDown!2654 (h!76884 (exprs!8100 lt!2586651)) (Context!15201 (t!384622 (exprs!8100 lt!2586651))) (h!76885 s1!1971)))))

(declare-fun b!7255184 () Bool)

(declare-fun e!4350364 () (Set Context!15200))

(assert (=> b!7255184 (= e!4350364 (as set.empty (Set Context!15200)))))

(declare-fun b!7255185 () Bool)

(declare-fun e!4350363 () Bool)

(assert (=> b!7255185 (= e!4350363 (nullable!7920 (h!76884 (exprs!8100 lt!2586651))))))

(declare-fun d!2256095 () Bool)

(declare-fun c!1348867 () Bool)

(assert (=> d!2256095 (= c!1348867 e!4350363)))

(declare-fun res!2942246 () Bool)

(assert (=> d!2256095 (=> (not res!2942246) (not e!4350363))))

(assert (=> d!2256095 (= res!2942246 (is-Cons!70436 (exprs!8100 lt!2586651)))))

(declare-fun e!4350365 () (Set Context!15200))

(assert (=> d!2256095 (= (derivationStepZipperUp!2484 lt!2586651 (h!76885 s1!1971)) e!4350365)))

(declare-fun b!7255186 () Bool)

(assert (=> b!7255186 (= e!4350365 e!4350364)))

(declare-fun c!1348866 () Bool)

(assert (=> b!7255186 (= c!1348866 (is-Cons!70436 (exprs!8100 lt!2586651)))))

(declare-fun b!7255187 () Bool)

(assert (=> b!7255187 (= e!4350365 (set.union call!661094 (derivationStepZipperUp!2484 (Context!15201 (t!384622 (exprs!8100 lt!2586651))) (h!76885 s1!1971))))))

(declare-fun b!7255188 () Bool)

(assert (=> b!7255188 (= e!4350364 call!661094)))

(assert (= (and d!2256095 res!2942246) b!7255185))

(assert (= (and d!2256095 c!1348867) b!7255187))

(assert (= (and d!2256095 (not c!1348867)) b!7255186))

(assert (= (and b!7255186 c!1348866) b!7255188))

(assert (= (and b!7255186 (not c!1348866)) b!7255184))

(assert (= (or b!7255187 b!7255188) bm!661089))

(declare-fun m!7935978 () Bool)

(assert (=> bm!661089 m!7935978))

(declare-fun m!7935980 () Bool)

(assert (=> b!7255185 m!7935980))

(declare-fun m!7935982 () Bool)

(assert (=> b!7255187 m!7935982))

(assert (=> b!7254993 d!2256095))

(declare-fun e!4350368 () Bool)

(declare-fun d!2256097 () Bool)

(assert (=> d!2256097 (= (matchZipper!3570 (set.union lt!2586666 lt!2586670) (t!384623 s1!1971)) e!4350368)))

(declare-fun res!2942249 () Bool)

(assert (=> d!2256097 (=> res!2942249 e!4350368)))

(assert (=> d!2256097 (= res!2942249 (matchZipper!3570 lt!2586666 (t!384623 s1!1971)))))

(declare-fun lt!2586821 () Unit!163911)

(declare-fun choose!56087 ((Set Context!15200) (Set Context!15200) List!70561) Unit!163911)

(assert (=> d!2256097 (= lt!2586821 (choose!56087 lt!2586666 lt!2586670 (t!384623 s1!1971)))))

(assert (=> d!2256097 (= (lemmaZipperConcatMatchesSameAsBothZippers!1715 lt!2586666 lt!2586670 (t!384623 s1!1971)) lt!2586821)))

(declare-fun b!7255191 () Bool)

(assert (=> b!7255191 (= e!4350368 (matchZipper!3570 lt!2586670 (t!384623 s1!1971)))))

(assert (= (and d!2256097 (not res!2942249)) b!7255191))

(declare-fun m!7935984 () Bool)

(assert (=> d!2256097 m!7935984))

(assert (=> d!2256097 m!7935590))

(declare-fun m!7935986 () Bool)

(assert (=> d!2256097 m!7935986))

(assert (=> b!7255191 m!7935606))

(assert (=> b!7254983 d!2256097))

(assert (=> b!7254983 d!2256031))

(declare-fun d!2256099 () Bool)

(declare-fun c!1348868 () Bool)

(assert (=> d!2256099 (= c!1348868 (isEmpty!40564 (t!384623 s1!1971)))))

(declare-fun e!4350369 () Bool)

(assert (=> d!2256099 (= (matchZipper!3570 lt!2586666 (t!384623 s1!1971)) e!4350369)))

(declare-fun b!7255192 () Bool)

(assert (=> b!7255192 (= e!4350369 (nullableZipper!2922 lt!2586666))))

(declare-fun b!7255193 () Bool)

(assert (=> b!7255193 (= e!4350369 (matchZipper!3570 (derivationStepZipper!3438 lt!2586666 (head!14918 (t!384623 s1!1971))) (tail!14346 (t!384623 s1!1971))))))

(assert (= (and d!2256099 c!1348868) b!7255192))

(assert (= (and d!2256099 (not c!1348868)) b!7255193))

(assert (=> d!2256099 m!7935892))

(declare-fun m!7935988 () Bool)

(assert (=> b!7255192 m!7935988))

(assert (=> b!7255193 m!7935896))

(assert (=> b!7255193 m!7935896))

(declare-fun m!7935990 () Bool)

(assert (=> b!7255193 m!7935990))

(assert (=> b!7255193 m!7935900))

(assert (=> b!7255193 m!7935990))

(assert (=> b!7255193 m!7935900))

(declare-fun m!7935992 () Bool)

(assert (=> b!7255193 m!7935992))

(assert (=> b!7254983 d!2256099))

(declare-fun d!2256101 () Bool)

(declare-fun e!4350370 () Bool)

(assert (=> d!2256101 (= (matchZipper!3570 (set.union lt!2586658 lt!2586669) lt!2586673) e!4350370)))

(declare-fun res!2942250 () Bool)

(assert (=> d!2256101 (=> res!2942250 e!4350370)))

(assert (=> d!2256101 (= res!2942250 (matchZipper!3570 lt!2586658 lt!2586673))))

(declare-fun lt!2586822 () Unit!163911)

(assert (=> d!2256101 (= lt!2586822 (choose!56087 lt!2586658 lt!2586669 lt!2586673))))

(assert (=> d!2256101 (= (lemmaZipperConcatMatchesSameAsBothZippers!1715 lt!2586658 lt!2586669 lt!2586673) lt!2586822)))

(declare-fun b!7255194 () Bool)

(assert (=> b!7255194 (= e!4350370 (matchZipper!3570 lt!2586669 lt!2586673))))

(assert (= (and d!2256101 (not res!2942250)) b!7255194))

(declare-fun m!7935994 () Bool)

(assert (=> d!2256101 m!7935994))

(assert (=> d!2256101 m!7935596))

(declare-fun m!7935996 () Bool)

(assert (=> d!2256101 m!7935996))

(assert (=> b!7255194 m!7935618))

(assert (=> b!7254983 d!2256101))

(declare-fun d!2256103 () Bool)

(declare-fun c!1348869 () Bool)

(assert (=> d!2256103 (= c!1348869 (isEmpty!40564 lt!2586673))))

(declare-fun e!4350371 () Bool)

(assert (=> d!2256103 (= (matchZipper!3570 lt!2586671 lt!2586673) e!4350371)))

(declare-fun b!7255195 () Bool)

(assert (=> b!7255195 (= e!4350371 (nullableZipper!2922 lt!2586671))))

(declare-fun b!7255196 () Bool)

(assert (=> b!7255196 (= e!4350371 (matchZipper!3570 (derivationStepZipper!3438 lt!2586671 (head!14918 lt!2586673)) (tail!14346 lt!2586673)))))

(assert (= (and d!2256103 c!1348869) b!7255195))

(assert (= (and d!2256103 (not c!1348869)) b!7255196))

(assert (=> d!2256103 m!7935804))

(declare-fun m!7935998 () Bool)

(assert (=> b!7255195 m!7935998))

(assert (=> b!7255196 m!7935808))

(assert (=> b!7255196 m!7935808))

(declare-fun m!7936000 () Bool)

(assert (=> b!7255196 m!7936000))

(assert (=> b!7255196 m!7935812))

(assert (=> b!7255196 m!7936000))

(assert (=> b!7255196 m!7935812))

(declare-fun m!7936002 () Bool)

(assert (=> b!7255196 m!7936002))

(assert (=> b!7254983 d!2256103))

(declare-fun d!2256105 () Bool)

(declare-fun c!1348870 () Bool)

(assert (=> d!2256105 (= c!1348870 (isEmpty!40564 (t!384623 s1!1971)))))

(declare-fun e!4350372 () Bool)

(assert (=> d!2256105 (= (matchZipper!3570 lt!2586676 (t!384623 s1!1971)) e!4350372)))

(declare-fun b!7255197 () Bool)

(assert (=> b!7255197 (= e!4350372 (nullableZipper!2922 lt!2586676))))

(declare-fun b!7255198 () Bool)

(assert (=> b!7255198 (= e!4350372 (matchZipper!3570 (derivationStepZipper!3438 lt!2586676 (head!14918 (t!384623 s1!1971))) (tail!14346 (t!384623 s1!1971))))))

(assert (= (and d!2256105 c!1348870) b!7255197))

(assert (= (and d!2256105 (not c!1348870)) b!7255198))

(assert (=> d!2256105 m!7935892))

(declare-fun m!7936004 () Bool)

(assert (=> b!7255197 m!7936004))

(assert (=> b!7255198 m!7935896))

(assert (=> b!7255198 m!7935896))

(declare-fun m!7936006 () Bool)

(assert (=> b!7255198 m!7936006))

(assert (=> b!7255198 m!7935900))

(assert (=> b!7255198 m!7936006))

(assert (=> b!7255198 m!7935900))

(declare-fun m!7936008 () Bool)

(assert (=> b!7255198 m!7936008))

(assert (=> b!7254983 d!2256105))

(declare-fun d!2256107 () Bool)

(declare-fun c!1348871 () Bool)

(assert (=> d!2256107 (= c!1348871 (isEmpty!40564 lt!2586673))))

(declare-fun e!4350373 () Bool)

(assert (=> d!2256107 (= (matchZipper!3570 lt!2586658 lt!2586673) e!4350373)))

(declare-fun b!7255199 () Bool)

(assert (=> b!7255199 (= e!4350373 (nullableZipper!2922 lt!2586658))))

(declare-fun b!7255200 () Bool)

(assert (=> b!7255200 (= e!4350373 (matchZipper!3570 (derivationStepZipper!3438 lt!2586658 (head!14918 lt!2586673)) (tail!14346 lt!2586673)))))

(assert (= (and d!2256107 c!1348871) b!7255199))

(assert (= (and d!2256107 (not c!1348871)) b!7255200))

(assert (=> d!2256107 m!7935804))

(declare-fun m!7936010 () Bool)

(assert (=> b!7255199 m!7936010))

(assert (=> b!7255200 m!7935808))

(assert (=> b!7255200 m!7935808))

(declare-fun m!7936012 () Bool)

(assert (=> b!7255200 m!7936012))

(assert (=> b!7255200 m!7935812))

(assert (=> b!7255200 m!7936012))

(assert (=> b!7255200 m!7935812))

(declare-fun m!7936014 () Bool)

(assert (=> b!7255200 m!7936014))

(assert (=> b!7254983 d!2256107))

(declare-fun d!2256109 () Bool)

(declare-fun c!1348872 () Bool)

(assert (=> d!2256109 (= c!1348872 (isEmpty!40564 lt!2586673))))

(declare-fun e!4350374 () Bool)

(assert (=> d!2256109 (= (matchZipper!3570 lt!2586669 lt!2586673) e!4350374)))

(declare-fun b!7255201 () Bool)

(assert (=> b!7255201 (= e!4350374 (nullableZipper!2922 lt!2586669))))

(declare-fun b!7255202 () Bool)

(assert (=> b!7255202 (= e!4350374 (matchZipper!3570 (derivationStepZipper!3438 lt!2586669 (head!14918 lt!2586673)) (tail!14346 lt!2586673)))))

(assert (= (and d!2256109 c!1348872) b!7255201))

(assert (= (and d!2256109 (not c!1348872)) b!7255202))

(assert (=> d!2256109 m!7935804))

(declare-fun m!7936016 () Bool)

(assert (=> b!7255201 m!7936016))

(assert (=> b!7255202 m!7935808))

(assert (=> b!7255202 m!7935808))

(declare-fun m!7936018 () Bool)

(assert (=> b!7255202 m!7936018))

(assert (=> b!7255202 m!7935812))

(assert (=> b!7255202 m!7936018))

(assert (=> b!7255202 m!7935812))

(declare-fun m!7936020 () Bool)

(assert (=> b!7255202 m!7936020))

(assert (=> b!7254984 d!2256109))

(declare-fun b!7255207 () Bool)

(declare-fun e!4350377 () Bool)

(declare-fun tp!2038053 () Bool)

(assert (=> b!7255207 (= e!4350377 (and tp_is_empty!46785 tp!2038053))))

(assert (=> b!7254996 (= tp!2038037 e!4350377)))

(assert (= (and b!7254996 (is-Cons!70437 (t!384623 s2!1849))) b!7255207))

(declare-fun b!7255212 () Bool)

(declare-fun e!4350380 () Bool)

(declare-fun tp!2038058 () Bool)

(declare-fun tp!2038059 () Bool)

(assert (=> b!7255212 (= e!4350380 (and tp!2038058 tp!2038059))))

(assert (=> b!7254986 (= tp!2038035 e!4350380)))

(assert (= (and b!7254986 (is-Cons!70436 (exprs!8100 ct2!328))) b!7255212))

(declare-fun b!7255213 () Bool)

(declare-fun e!4350381 () Bool)

(declare-fun tp!2038060 () Bool)

(assert (=> b!7255213 (= e!4350381 (and tp_is_empty!46785 tp!2038060))))

(assert (=> b!7254999 (= tp!2038038 e!4350381)))

(assert (= (and b!7254999 (is-Cons!70437 (t!384623 s1!1971))) b!7255213))

(declare-fun b!7255214 () Bool)

(declare-fun e!4350382 () Bool)

(declare-fun tp!2038061 () Bool)

(declare-fun tp!2038062 () Bool)

(assert (=> b!7255214 (= e!4350382 (and tp!2038061 tp!2038062))))

(assert (=> b!7254994 (= tp!2038036 e!4350382)))

(assert (= (and b!7254994 (is-Cons!70436 (exprs!8100 ct1!232))) b!7255214))

(declare-fun b_lambda!278901 () Bool)

(assert (= b_lambda!278899 (or b!7254985 b_lambda!278901)))

(declare-fun bs!1907408 () Bool)

(declare-fun d!2256111 () Bool)

(assert (= bs!1907408 (and d!2256111 b!7254985)))

(assert (=> bs!1907408 (= (dynLambda!28775 lambda!444937 ct1!232) (derivationStepZipperUp!2484 ct1!232 (h!76885 s1!1971)))))

(assert (=> bs!1907408 m!7935648))

(assert (=> d!2256083 d!2256111))

(declare-fun b_lambda!278903 () Bool)

(assert (= b_lambda!278895 (or b!7254998 b_lambda!278903)))

(declare-fun bs!1907409 () Bool)

(declare-fun d!2256113 () Bool)

(assert (= bs!1907409 (and d!2256113 b!7254998)))

(assert (=> bs!1907409 (= (dynLambda!28773 lambda!444936 lt!2586795) (matchZipper!3570 (set.insert lt!2586795 (as set.empty (Set Context!15200))) (t!384623 s1!1971)))))

(declare-fun m!7936022 () Bool)

(assert (=> bs!1907409 m!7936022))

(assert (=> bs!1907409 m!7936022))

(declare-fun m!7936024 () Bool)

(assert (=> bs!1907409 m!7936024))

(assert (=> d!2256041 d!2256113))

(declare-fun b_lambda!278905 () Bool)

(assert (= b_lambda!278897 (or b!7254985 b_lambda!278905)))

(declare-fun bs!1907410 () Bool)

(declare-fun d!2256115 () Bool)

(assert (= bs!1907410 (and d!2256115 b!7254985)))

(assert (=> bs!1907410 (= (dynLambda!28775 lambda!444937 lt!2586677) (derivationStepZipperUp!2484 lt!2586677 (h!76885 s1!1971)))))

(assert (=> bs!1907410 m!7935652))

(assert (=> d!2256073 d!2256115))

(push 1)

(assert (not b_lambda!278901))

(assert (not d!2256101))

(assert (not b!7255193))

(assert (not d!2256047))

(assert (not b!7255084))

(assert (not b!7255202))

(assert (not d!2256027))

(assert (not d!2256035))

(assert (not d!2256105))

(assert (not b!7255082))

(assert (not b!7255212))

(assert (not b!7255123))

(assert (not b_lambda!278903))

(assert (not d!2256053))

(assert (not b!7255102))

(assert (not d!2256041))

(assert tp_is_empty!46785)

(assert (not bm!661084))

(assert (not d!2256061))

(assert (not b!7255178))

(assert (not d!2256059))

(assert (not b!7255095))

(assert (not d!2256097))

(assert (not b_lambda!278905))

(assert (not b!7255185))

(assert (not b!7255196))

(assert (not b!7255124))

(assert (not bs!1907408))

(assert (not b!7255191))

(assert (not b!7255067))

(assert (not b!7255115))

(assert (not d!2256031))

(assert (not bm!661083))

(assert (not b!7255187))

(assert (not bm!661087))

(assert (not b!7255080))

(assert (not bm!661080))

(assert (not d!2256051))

(assert (not d!2256071))

(assert (not bm!661076))

(assert (not d!2256055))

(assert (not b!7255195))

(assert (not d!2256049))

(assert (not b!7255127))

(assert (not d!2256073))

(assert (not b!7255104))

(assert (not bm!661089))

(assert (not b!7255128))

(assert (not d!2256037))

(assert (not d!2256069))

(assert (not d!2256107))

(assert (not b!7255197))

(assert (not b!7255116))

(assert (not b!7255132))

(assert (not b!7255192))

(assert (not b!7255169))

(assert (not b!7255122))

(assert (not d!2256043))

(assert (not d!2256025))

(assert (not b!7255199))

(assert (not b!7255162))

(assert (not b!7255171))

(assert (not b!7255133))

(assert (not b!7255201))

(assert (not d!2256099))

(assert (not d!2256085))

(assert (not d!2256083))

(assert (not d!2256079))

(assert (not d!2256075))

(assert (not b!7255130))

(assert (not b!7255200))

(assert (not b!7255129))

(assert (not bs!1907409))

(assert (not bm!661062))

(assert (not b!7255214))

(assert (not bm!661063))

(assert (not d!2256057))

(assert (not b!7255068))

(assert (not d!2256067))

(assert (not d!2256063))

(assert (not b!7255085))

(assert (not b!7255213))

(assert (not d!2256039))

(assert (not b!7255194))

(assert (not d!2256109))

(assert (not bm!661077))

(assert (not bs!1907410))

(assert (not bm!661082))

(assert (not b!7255096))

(assert (not d!2256103))

(assert (not b!7255198))

(assert (not d!2256065))

(assert (not b!7255207))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1907446 () Bool)

(declare-fun d!2256209 () Bool)

(assert (= bs!1907446 (and d!2256209 b!7254998)))

(declare-fun lambda!445003 () Int)

(assert (=> bs!1907446 (not (= lambda!445003 lambda!444936))))

(declare-fun bs!1907447 () Bool)

(assert (= bs!1907447 (and d!2256209 d!2256051)))

(assert (=> bs!1907447 (= (= lambda!444978 lambda!444936) (= lambda!445003 lambda!444975))))

(declare-fun bs!1907448 () Bool)

(assert (= bs!1907448 (and d!2256209 d!2256053)))

(assert (=> bs!1907448 (not (= lambda!445003 lambda!444978))))

(assert (=> d!2256209 true))

(assert (=> d!2256209 (< (dynLambda!28774 order!28999 lambda!444978) (dynLambda!28774 order!28999 lambda!445003))))

(assert (=> d!2256209 (= (exists!4399 lt!2586667 lambda!444978) (not (forall!17511 lt!2586667 lambda!445003)))))

(declare-fun bs!1907449 () Bool)

(assert (= bs!1907449 d!2256209))

(declare-fun m!7936274 () Bool)

(assert (=> bs!1907449 m!7936274))

(assert (=> d!2256053 d!2256209))

(declare-fun bs!1907450 () Bool)

(declare-fun d!2256211 () Bool)

(assert (= bs!1907450 (and d!2256211 b!7254998)))

(declare-fun lambda!445006 () Int)

(assert (=> bs!1907450 (= lambda!445006 lambda!444936)))

(declare-fun bs!1907451 () Bool)

(assert (= bs!1907451 (and d!2256211 d!2256051)))

(assert (=> bs!1907451 (not (= lambda!445006 lambda!444975))))

(declare-fun bs!1907452 () Bool)

(assert (= bs!1907452 (and d!2256211 d!2256053)))

(assert (=> bs!1907452 (= lambda!445006 lambda!444978)))

(declare-fun bs!1907453 () Bool)

(assert (= bs!1907453 (and d!2256211 d!2256209)))

(assert (=> bs!1907453 (not (= lambda!445006 lambda!445003))))

(assert (=> d!2256211 true))

(assert (=> d!2256211 (exists!4399 lt!2586667 lambda!445006)))

(assert (=> d!2256211 true))

(declare-fun _$60!1246 () Unit!163911)

(assert (=> d!2256211 (= (choose!56083 lt!2586667 (t!384623 s1!1971)) _$60!1246)))

(declare-fun bs!1907454 () Bool)

(assert (= bs!1907454 d!2256211))

(declare-fun m!7936276 () Bool)

(assert (=> bs!1907454 m!7936276))

(assert (=> d!2256053 d!2256211))

(declare-fun d!2256213 () Bool)

(declare-fun c!1348930 () Bool)

(assert (=> d!2256213 (= c!1348930 (isEmpty!40564 (t!384623 s1!1971)))))

(declare-fun e!4350469 () Bool)

(assert (=> d!2256213 (= (matchZipper!3570 (content!14637 lt!2586667) (t!384623 s1!1971)) e!4350469)))

(declare-fun b!7255367 () Bool)

(assert (=> b!7255367 (= e!4350469 (nullableZipper!2922 (content!14637 lt!2586667)))))

(declare-fun b!7255368 () Bool)

(assert (=> b!7255368 (= e!4350469 (matchZipper!3570 (derivationStepZipper!3438 (content!14637 lt!2586667) (head!14918 (t!384623 s1!1971))) (tail!14346 (t!384623 s1!1971))))))

(assert (= (and d!2256213 c!1348930) b!7255367))

(assert (= (and d!2256213 (not c!1348930)) b!7255368))

(assert (=> d!2256213 m!7935892))

(assert (=> b!7255367 m!7935882))

(declare-fun m!7936278 () Bool)

(assert (=> b!7255367 m!7936278))

(assert (=> b!7255368 m!7935896))

(assert (=> b!7255368 m!7935882))

(assert (=> b!7255368 m!7935896))

(declare-fun m!7936280 () Bool)

(assert (=> b!7255368 m!7936280))

(assert (=> b!7255368 m!7935900))

(assert (=> b!7255368 m!7936280))

(assert (=> b!7255368 m!7935900))

(declare-fun m!7936282 () Bool)

(assert (=> b!7255368 m!7936282))

(assert (=> d!2256053 d!2256213))

(declare-fun d!2256215 () Bool)

(declare-fun c!1348933 () Bool)

(assert (=> d!2256215 (= c!1348933 (is-Nil!70438 lt!2586667))))

(declare-fun e!4350472 () (Set Context!15200))

(assert (=> d!2256215 (= (content!14637 lt!2586667) e!4350472)))

(declare-fun b!7255373 () Bool)

(assert (=> b!7255373 (= e!4350472 (as set.empty (Set Context!15200)))))

(declare-fun b!7255374 () Bool)

(assert (=> b!7255374 (= e!4350472 (set.union (set.insert (h!76886 lt!2586667) (as set.empty (Set Context!15200))) (content!14637 (t!384624 lt!2586667))))))

(assert (= (and d!2256215 c!1348933) b!7255373))

(assert (= (and d!2256215 (not c!1348933)) b!7255374))

(declare-fun m!7936284 () Bool)

(assert (=> b!7255374 m!7936284))

(declare-fun m!7936286 () Bool)

(assert (=> b!7255374 m!7936286))

(assert (=> d!2256053 d!2256215))

(declare-fun bs!1907455 () Bool)

(declare-fun d!2256217 () Bool)

(assert (= bs!1907455 (and d!2256217 d!2256053)))

(declare-fun lambda!445009 () Int)

(assert (=> bs!1907455 (not (= lambda!445009 lambda!444978))))

(declare-fun bs!1907456 () Bool)

(assert (= bs!1907456 (and d!2256217 d!2256051)))

(assert (=> bs!1907456 (not (= lambda!445009 lambda!444975))))

(declare-fun bs!1907457 () Bool)

(assert (= bs!1907457 (and d!2256217 d!2256209)))

(assert (=> bs!1907457 (not (= lambda!445009 lambda!445003))))

(declare-fun bs!1907458 () Bool)

(assert (= bs!1907458 (and d!2256217 d!2256211)))

(assert (=> bs!1907458 (not (= lambda!445009 lambda!445006))))

(declare-fun bs!1907459 () Bool)

(assert (= bs!1907459 (and d!2256217 b!7254998)))

(assert (=> bs!1907459 (not (= lambda!445009 lambda!444936))))

(assert (=> d!2256217 (= (nullableZipper!2922 lt!2586658) (exists!4398 lt!2586658 lambda!445009))))

(declare-fun bs!1907460 () Bool)

(assert (= bs!1907460 d!2256217))

(declare-fun m!7936288 () Bool)

(assert (=> bs!1907460 m!7936288))

(assert (=> b!7255199 d!2256217))

(declare-fun d!2256219 () Bool)

(declare-fun c!1348936 () Bool)

(assert (=> d!2256219 (= c!1348936 (is-Nil!70438 lt!2586813))))

(declare-fun e!4350473 () (Set Context!15200))

(assert (=> d!2256219 (= (content!14637 lt!2586813) e!4350473)))

(declare-fun b!7255375 () Bool)

(assert (=> b!7255375 (= e!4350473 (as set.empty (Set Context!15200)))))

(declare-fun b!7255376 () Bool)

(assert (=> b!7255376 (= e!4350473 (set.union (set.insert (h!76886 lt!2586813) (as set.empty (Set Context!15200))) (content!14637 (t!384624 lt!2586813))))))

(assert (= (and d!2256219 c!1348936) b!7255375))

(assert (= (and d!2256219 (not c!1348936)) b!7255376))

(declare-fun m!7936290 () Bool)

(assert (=> b!7255376 m!7936290))

(declare-fun m!7936292 () Bool)

(assert (=> b!7255376 m!7936292))

(assert (=> b!7255122 d!2256219))

(declare-fun bm!661120 () Bool)

(declare-fun call!661125 () (Set Context!15200))

(assert (=> bm!661120 (= call!661125 (derivationStepZipperDown!2654 (h!76884 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586677))))) (Context!15201 (t!384622 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586677)))))) (h!76885 s1!1971)))))

(declare-fun b!7255377 () Bool)

(declare-fun e!4350475 () (Set Context!15200))

(assert (=> b!7255377 (= e!4350475 (as set.empty (Set Context!15200)))))

(declare-fun b!7255378 () Bool)

(declare-fun e!4350474 () Bool)

(assert (=> b!7255378 (= e!4350474 (nullable!7920 (h!76884 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586677)))))))))

(declare-fun d!2256221 () Bool)

(declare-fun c!1348938 () Bool)

(assert (=> d!2256221 (= c!1348938 e!4350474)))

(declare-fun res!2942285 () Bool)

(assert (=> d!2256221 (=> (not res!2942285) (not e!4350474))))

(assert (=> d!2256221 (= res!2942285 (is-Cons!70436 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586677))))))))

(declare-fun e!4350476 () (Set Context!15200))

(assert (=> d!2256221 (= (derivationStepZipperUp!2484 (Context!15201 (t!384622 (exprs!8100 lt!2586677))) (h!76885 s1!1971)) e!4350476)))

(declare-fun b!7255379 () Bool)

(assert (=> b!7255379 (= e!4350476 e!4350475)))

(declare-fun c!1348937 () Bool)

(assert (=> b!7255379 (= c!1348937 (is-Cons!70436 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586677))))))))

(declare-fun b!7255380 () Bool)

(assert (=> b!7255380 (= e!4350476 (set.union call!661125 (derivationStepZipperUp!2484 (Context!15201 (t!384622 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586677)))))) (h!76885 s1!1971))))))

(declare-fun b!7255381 () Bool)

(assert (=> b!7255381 (= e!4350475 call!661125)))

(assert (= (and d!2256221 res!2942285) b!7255378))

(assert (= (and d!2256221 c!1348938) b!7255380))

(assert (= (and d!2256221 (not c!1348938)) b!7255379))

(assert (= (and b!7255379 c!1348937) b!7255381))

(assert (= (and b!7255379 (not c!1348937)) b!7255377))

(assert (= (or b!7255380 b!7255381) bm!661120))

(declare-fun m!7936294 () Bool)

(assert (=> bm!661120 m!7936294))

(declare-fun m!7936296 () Bool)

(assert (=> b!7255378 m!7936296))

(declare-fun m!7936298 () Bool)

(assert (=> b!7255380 m!7936298))

(assert (=> b!7255171 d!2256221))

(declare-fun d!2256223 () Bool)

(declare-fun c!1348939 () Bool)

(assert (=> d!2256223 (= c!1348939 (isEmpty!40564 (tail!14346 lt!2586673)))))

(declare-fun e!4350477 () Bool)

(assert (=> d!2256223 (= (matchZipper!3570 (derivationStepZipper!3438 lt!2586671 (head!14918 lt!2586673)) (tail!14346 lt!2586673)) e!4350477)))

(declare-fun b!7255382 () Bool)

(assert (=> b!7255382 (= e!4350477 (nullableZipper!2922 (derivationStepZipper!3438 lt!2586671 (head!14918 lt!2586673))))))

(declare-fun b!7255383 () Bool)

(assert (=> b!7255383 (= e!4350477 (matchZipper!3570 (derivationStepZipper!3438 (derivationStepZipper!3438 lt!2586671 (head!14918 lt!2586673)) (head!14918 (tail!14346 lt!2586673))) (tail!14346 (tail!14346 lt!2586673))))))

(assert (= (and d!2256223 c!1348939) b!7255382))

(assert (= (and d!2256223 (not c!1348939)) b!7255383))

(assert (=> d!2256223 m!7935812))

(declare-fun m!7936300 () Bool)

(assert (=> d!2256223 m!7936300))

(assert (=> b!7255382 m!7936000))

(declare-fun m!7936302 () Bool)

(assert (=> b!7255382 m!7936302))

(assert (=> b!7255383 m!7935812))

(declare-fun m!7936304 () Bool)

(assert (=> b!7255383 m!7936304))

(assert (=> b!7255383 m!7936000))

(assert (=> b!7255383 m!7936304))

(declare-fun m!7936306 () Bool)

(assert (=> b!7255383 m!7936306))

(assert (=> b!7255383 m!7935812))

(declare-fun m!7936308 () Bool)

(assert (=> b!7255383 m!7936308))

(assert (=> b!7255383 m!7936306))

(assert (=> b!7255383 m!7936308))

(declare-fun m!7936310 () Bool)

(assert (=> b!7255383 m!7936310))

(assert (=> b!7255196 d!2256223))

(declare-fun bs!1907461 () Bool)

(declare-fun d!2256225 () Bool)

(assert (= bs!1907461 (and d!2256225 b!7254985)))

(declare-fun lambda!445010 () Int)

(assert (=> bs!1907461 (= (= (head!14918 lt!2586673) (h!76885 s1!1971)) (= lambda!445010 lambda!444937))))

(declare-fun bs!1907462 () Bool)

(assert (= bs!1907462 (and d!2256225 d!2256059)))

(assert (=> bs!1907462 (= (= (head!14918 lt!2586673) (h!76885 s1!1971)) (= lambda!445010 lambda!444981))))

(declare-fun bs!1907463 () Bool)

(assert (= bs!1907463 (and d!2256225 d!2256067)))

(assert (=> bs!1907463 (= (= (head!14918 lt!2586673) (h!76885 s1!1971)) (= lambda!445010 lambda!444984))))

(assert (=> d!2256225 true))

(assert (=> d!2256225 (= (derivationStepZipper!3438 lt!2586671 (head!14918 lt!2586673)) (flatMap!2825 lt!2586671 lambda!445010))))

(declare-fun bs!1907464 () Bool)

(assert (= bs!1907464 d!2256225))

(declare-fun m!7936312 () Bool)

(assert (=> bs!1907464 m!7936312))

(assert (=> b!7255196 d!2256225))

(declare-fun d!2256227 () Bool)

(assert (=> d!2256227 (= (head!14918 lt!2586673) (h!76885 lt!2586673))))

(assert (=> b!7255196 d!2256227))

(declare-fun d!2256229 () Bool)

(assert (=> d!2256229 (= (tail!14346 lt!2586673) (t!384623 lt!2586673))))

(assert (=> b!7255196 d!2256229))

(declare-fun bs!1907465 () Bool)

(declare-fun d!2256231 () Bool)

(assert (= bs!1907465 (and d!2256231 d!2256053)))

(declare-fun lambda!445011 () Int)

(assert (=> bs!1907465 (not (= lambda!445011 lambda!444978))))

(declare-fun bs!1907466 () Bool)

(assert (= bs!1907466 (and d!2256231 d!2256217)))

(assert (=> bs!1907466 (not (= lambda!445011 lambda!445009))))

(declare-fun bs!1907467 () Bool)

(assert (= bs!1907467 (and d!2256231 d!2256051)))

(assert (=> bs!1907467 (= lambda!445011 lambda!444975)))

(declare-fun bs!1907468 () Bool)

(assert (= bs!1907468 (and d!2256231 d!2256209)))

(assert (=> bs!1907468 (= (= lambda!444936 lambda!444978) (= lambda!445011 lambda!445003))))

(declare-fun bs!1907469 () Bool)

(assert (= bs!1907469 (and d!2256231 d!2256211)))

(assert (=> bs!1907469 (not (= lambda!445011 lambda!445006))))

(declare-fun bs!1907470 () Bool)

(assert (= bs!1907470 (and d!2256231 b!7254998)))

(assert (=> bs!1907470 (not (= lambda!445011 lambda!444936))))

(assert (=> d!2256231 true))

(assert (=> d!2256231 (< (dynLambda!28774 order!28999 lambda!444936) (dynLambda!28774 order!28999 lambda!445011))))

(assert (=> d!2256231 (= (exists!4399 (toList!11489 lt!2586681) lambda!444936) (not (forall!17511 (toList!11489 lt!2586681) lambda!445011)))))

(declare-fun bs!1907471 () Bool)

(assert (= bs!1907471 d!2256231))

(assert (=> bs!1907471 m!7935626))

(declare-fun m!7936314 () Bool)

(assert (=> bs!1907471 m!7936314))

(assert (=> d!2256049 d!2256231))

(assert (=> d!2256049 d!2256055))

(declare-fun d!2256233 () Bool)

(declare-fun res!2942288 () Bool)

(assert (=> d!2256233 (= res!2942288 (exists!4399 (toList!11489 lt!2586681) lambda!444936))))

(assert (=> d!2256233 true))

(assert (=> d!2256233 (= (choose!56082 lt!2586681 lambda!444936) res!2942288)))

(declare-fun bs!1907472 () Bool)

(assert (= bs!1907472 d!2256233))

(assert (=> bs!1907472 m!7935626))

(assert (=> bs!1907472 m!7935626))

(assert (=> bs!1907472 m!7935872))

(assert (=> d!2256049 d!2256233))

(declare-fun d!2256235 () Bool)

(assert (=> d!2256235 true))

(declare-fun setRes!53599 () Bool)

(assert (=> d!2256235 setRes!53599))

(declare-fun condSetEmpty!53599 () Bool)

(declare-fun res!2942291 () (Set Context!15200))

(assert (=> d!2256235 (= condSetEmpty!53599 (= res!2942291 (as set.empty (Set Context!15200))))))

(assert (=> d!2256235 (= (choose!56086 lt!2586661 lambda!444937) res!2942291)))

(declare-fun setIsEmpty!53599 () Bool)

(assert (=> setIsEmpty!53599 setRes!53599))

(declare-fun e!4350480 () Bool)

(declare-fun setElem!53599 () Context!15200)

(declare-fun setNonEmpty!53599 () Bool)

(declare-fun tp!2038079 () Bool)

(assert (=> setNonEmpty!53599 (= setRes!53599 (and tp!2038079 (inv!89661 setElem!53599) e!4350480))))

(declare-fun setRest!53599 () (Set Context!15200))

(assert (=> setNonEmpty!53599 (= res!2942291 (set.union (set.insert setElem!53599 (as set.empty (Set Context!15200))) setRest!53599))))

(declare-fun b!7255386 () Bool)

(declare-fun tp!2038080 () Bool)

(assert (=> b!7255386 (= e!4350480 tp!2038080)))

(assert (= (and d!2256235 condSetEmpty!53599) setIsEmpty!53599))

(assert (= (and d!2256235 (not condSetEmpty!53599)) setNonEmpty!53599))

(assert (= setNonEmpty!53599 b!7255386))

(declare-fun m!7936316 () Bool)

(assert (=> setNonEmpty!53599 m!7936316))

(assert (=> d!2256085 d!2256235))

(declare-fun b!7255401 () Bool)

(declare-fun e!4350497 () Bool)

(declare-fun e!4350495 () Bool)

(assert (=> b!7255401 (= e!4350497 e!4350495)))

(declare-fun c!1348942 () Bool)

(assert (=> b!7255401 (= c!1348942 (is-Union!18660 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun bm!661125 () Bool)

(declare-fun call!661130 () Bool)

(assert (=> bm!661125 (= call!661130 (nullable!7920 (ite c!1348942 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))))))

(declare-fun b!7255402 () Bool)

(declare-fun e!4350498 () Bool)

(declare-fun call!661131 () Bool)

(assert (=> b!7255402 (= e!4350498 call!661131)))

(declare-fun d!2256237 () Bool)

(declare-fun res!2942305 () Bool)

(declare-fun e!4350494 () Bool)

(assert (=> d!2256237 (=> res!2942305 e!4350494)))

(assert (=> d!2256237 (= res!2942305 (is-EmptyExpr!18660 (h!76884 (exprs!8100 ct1!232))))))

(assert (=> d!2256237 (= (nullableFct!3111 (h!76884 (exprs!8100 ct1!232))) e!4350494)))

(declare-fun b!7255403 () Bool)

(declare-fun e!4350496 () Bool)

(assert (=> b!7255403 (= e!4350495 e!4350496)))

(declare-fun res!2942302 () Bool)

(assert (=> b!7255403 (= res!2942302 call!661130)))

(assert (=> b!7255403 (=> res!2942302 e!4350496)))

(declare-fun b!7255404 () Bool)

(declare-fun e!4350493 () Bool)

(assert (=> b!7255404 (= e!4350494 e!4350493)))

(declare-fun res!2942304 () Bool)

(assert (=> b!7255404 (=> (not res!2942304) (not e!4350493))))

(assert (=> b!7255404 (= res!2942304 (and (not (is-EmptyLang!18660 (h!76884 (exprs!8100 ct1!232)))) (not (is-ElementMatch!18660 (h!76884 (exprs!8100 ct1!232))))))))

(declare-fun b!7255405 () Bool)

(assert (=> b!7255405 (= e!4350495 e!4350498)))

(declare-fun res!2942303 () Bool)

(assert (=> b!7255405 (= res!2942303 call!661130)))

(assert (=> b!7255405 (=> (not res!2942303) (not e!4350498))))

(declare-fun b!7255406 () Bool)

(assert (=> b!7255406 (= e!4350493 e!4350497)))

(declare-fun res!2942306 () Bool)

(assert (=> b!7255406 (=> res!2942306 e!4350497)))

(assert (=> b!7255406 (= res!2942306 (is-Star!18660 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun b!7255407 () Bool)

(assert (=> b!7255407 (= e!4350496 call!661131)))

(declare-fun bm!661126 () Bool)

(assert (=> bm!661126 (= call!661131 (nullable!7920 (ite c!1348942 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (regTwo!37832 (h!76884 (exprs!8100 ct1!232))))))))

(assert (= (and d!2256237 (not res!2942305)) b!7255404))

(assert (= (and b!7255404 res!2942304) b!7255406))

(assert (= (and b!7255406 (not res!2942306)) b!7255401))

(assert (= (and b!7255401 c!1348942) b!7255403))

(assert (= (and b!7255401 (not c!1348942)) b!7255405))

(assert (= (and b!7255403 (not res!2942302)) b!7255407))

(assert (= (and b!7255405 res!2942303) b!7255402))

(assert (= (or b!7255407 b!7255402) bm!661126))

(assert (= (or b!7255403 b!7255405) bm!661125))

(declare-fun m!7936318 () Bool)

(assert (=> bm!661125 m!7936318))

(declare-fun m!7936320 () Bool)

(assert (=> bm!661126 m!7936320))

(assert (=> d!2256079 d!2256237))

(declare-fun d!2256239 () Bool)

(assert (=> d!2256239 (= (nullable!7920 (regOne!37832 (h!76884 (exprs!8100 ct1!232)))) (nullableFct!3111 (regOne!37832 (h!76884 (exprs!8100 ct1!232)))))))

(declare-fun bs!1907473 () Bool)

(assert (= bs!1907473 d!2256239))

(declare-fun m!7936322 () Bool)

(assert (=> bs!1907473 m!7936322))

(assert (=> b!7255162 d!2256239))

(declare-fun d!2256241 () Bool)

(declare-fun c!1348945 () Bool)

(assert (=> d!2256241 (= c!1348945 (is-Nil!70436 lt!2586804))))

(declare-fun e!4350501 () (Set Regex!18660))

(assert (=> d!2256241 (= (content!14636 lt!2586804) e!4350501)))

(declare-fun b!7255412 () Bool)

(assert (=> b!7255412 (= e!4350501 (as set.empty (Set Regex!18660)))))

(declare-fun b!7255413 () Bool)

(assert (=> b!7255413 (= e!4350501 (set.union (set.insert (h!76884 lt!2586804) (as set.empty (Set Regex!18660))) (content!14636 (t!384622 lt!2586804))))))

(assert (= (and d!2256241 c!1348945) b!7255412))

(assert (= (and d!2256241 (not c!1348945)) b!7255413))

(declare-fun m!7936324 () Bool)

(assert (=> b!7255413 m!7936324))

(declare-fun m!7936326 () Bool)

(assert (=> b!7255413 m!7936326))

(assert (=> d!2256047 d!2256241))

(declare-fun d!2256243 () Bool)

(declare-fun c!1348946 () Bool)

(assert (=> d!2256243 (= c!1348946 (is-Nil!70436 (exprs!8100 lt!2586664)))))

(declare-fun e!4350502 () (Set Regex!18660))

(assert (=> d!2256243 (= (content!14636 (exprs!8100 lt!2586664)) e!4350502)))

(declare-fun b!7255414 () Bool)

(assert (=> b!7255414 (= e!4350502 (as set.empty (Set Regex!18660)))))

(declare-fun b!7255415 () Bool)

(assert (=> b!7255415 (= e!4350502 (set.union (set.insert (h!76884 (exprs!8100 lt!2586664)) (as set.empty (Set Regex!18660))) (content!14636 (t!384622 (exprs!8100 lt!2586664)))))))

(assert (= (and d!2256243 c!1348946) b!7255414))

(assert (= (and d!2256243 (not c!1348946)) b!7255415))

(declare-fun m!7936328 () Bool)

(assert (=> b!7255415 m!7936328))

(declare-fun m!7936330 () Bool)

(assert (=> b!7255415 m!7936330))

(assert (=> d!2256047 d!2256243))

(declare-fun d!2256245 () Bool)

(declare-fun c!1348947 () Bool)

(assert (=> d!2256245 (= c!1348947 (is-Nil!70436 (exprs!8100 ct2!328)))))

(declare-fun e!4350503 () (Set Regex!18660))

(assert (=> d!2256245 (= (content!14636 (exprs!8100 ct2!328)) e!4350503)))

(declare-fun b!7255416 () Bool)

(assert (=> b!7255416 (= e!4350503 (as set.empty (Set Regex!18660)))))

(declare-fun b!7255417 () Bool)

(assert (=> b!7255417 (= e!4350503 (set.union (set.insert (h!76884 (exprs!8100 ct2!328)) (as set.empty (Set Regex!18660))) (content!14636 (t!384622 (exprs!8100 ct2!328)))))))

(assert (= (and d!2256245 c!1348947) b!7255416))

(assert (= (and d!2256245 (not c!1348947)) b!7255417))

(declare-fun m!7936332 () Bool)

(assert (=> b!7255417 m!7936332))

(declare-fun m!7936334 () Bool)

(assert (=> b!7255417 m!7936334))

(assert (=> d!2256047 d!2256245))

(declare-fun b!7255419 () Bool)

(declare-fun e!4350504 () List!70561)

(assert (=> b!7255419 (= e!4350504 (Cons!70437 (h!76885 (t!384623 (t!384623 s1!1971))) (++!16582 (t!384623 (t!384623 (t!384623 s1!1971))) s2!1849)))))

(declare-fun b!7255418 () Bool)

(assert (=> b!7255418 (= e!4350504 s2!1849)))

(declare-fun b!7255420 () Bool)

(declare-fun res!2942307 () Bool)

(declare-fun e!4350505 () Bool)

(assert (=> b!7255420 (=> (not res!2942307) (not e!4350505))))

(declare-fun lt!2586860 () List!70561)

(assert (=> b!7255420 (= res!2942307 (= (size!41733 lt!2586860) (+ (size!41733 (t!384623 (t!384623 s1!1971))) (size!41733 s2!1849))))))

(declare-fun b!7255421 () Bool)

(assert (=> b!7255421 (= e!4350505 (or (not (= s2!1849 Nil!70437)) (= lt!2586860 (t!384623 (t!384623 s1!1971)))))))

(declare-fun d!2256247 () Bool)

(assert (=> d!2256247 e!4350505))

(declare-fun res!2942308 () Bool)

(assert (=> d!2256247 (=> (not res!2942308) (not e!4350505))))

(assert (=> d!2256247 (= res!2942308 (= (content!14635 lt!2586860) (set.union (content!14635 (t!384623 (t!384623 s1!1971))) (content!14635 s2!1849))))))

(assert (=> d!2256247 (= lt!2586860 e!4350504)))

(declare-fun c!1348948 () Bool)

(assert (=> d!2256247 (= c!1348948 (is-Nil!70437 (t!384623 (t!384623 s1!1971))))))

(assert (=> d!2256247 (= (++!16582 (t!384623 (t!384623 s1!1971)) s2!1849) lt!2586860)))

(assert (= (and d!2256247 c!1348948) b!7255418))

(assert (= (and d!2256247 (not c!1348948)) b!7255419))

(assert (= (and d!2256247 res!2942308) b!7255420))

(assert (= (and b!7255420 res!2942307) b!7255421))

(declare-fun m!7936336 () Bool)

(assert (=> b!7255419 m!7936336))

(declare-fun m!7936338 () Bool)

(assert (=> b!7255420 m!7936338))

(declare-fun m!7936340 () Bool)

(assert (=> b!7255420 m!7936340))

(assert (=> b!7255420 m!7935822))

(declare-fun m!7936342 () Bool)

(assert (=> d!2256247 m!7936342))

(declare-fun m!7936344 () Bool)

(assert (=> d!2256247 m!7936344))

(assert (=> d!2256247 m!7935828))

(assert (=> b!7255095 d!2256247))

(declare-fun b!7255422 () Bool)

(declare-fun c!1348952 () Bool)

(declare-fun e!4350511 () Bool)

(assert (=> b!7255422 (= c!1348952 e!4350511)))

(declare-fun res!2942309 () Bool)

(assert (=> b!7255422 (=> (not res!2942309) (not e!4350511))))

(assert (=> b!7255422 (= res!2942309 (is-Concat!27505 (h!76884 (exprs!8100 lt!2586677))))))

(declare-fun e!4350507 () (Set Context!15200))

(declare-fun e!4350508 () (Set Context!15200))

(assert (=> b!7255422 (= e!4350507 e!4350508)))

(declare-fun b!7255423 () Bool)

(declare-fun c!1348950 () Bool)

(assert (=> b!7255423 (= c!1348950 (is-Star!18660 (h!76884 (exprs!8100 lt!2586677))))))

(declare-fun e!4350506 () (Set Context!15200))

(declare-fun e!4350510 () (Set Context!15200))

(assert (=> b!7255423 (= e!4350506 e!4350510)))

(declare-fun c!1348951 () Bool)

(declare-fun bm!661127 () Bool)

(declare-fun call!661132 () List!70560)

(assert (=> bm!661127 (= call!661132 ($colon$colon!2926 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586677)))) (ite (or c!1348952 c!1348951) (regTwo!37832 (h!76884 (exprs!8100 lt!2586677))) (h!76884 (exprs!8100 lt!2586677)))))))

(declare-fun b!7255424 () Bool)

(declare-fun call!661137 () (Set Context!15200))

(assert (=> b!7255424 (= e!4350510 call!661137)))

(declare-fun b!7255426 () Bool)

(declare-fun e!4350509 () (Set Context!15200))

(assert (=> b!7255426 (= e!4350509 (set.insert (Context!15201 (t!384622 (exprs!8100 lt!2586677))) (as set.empty (Set Context!15200))))))

(declare-fun c!1348949 () Bool)

(declare-fun bm!661128 () Bool)

(declare-fun call!661136 () (Set Context!15200))

(assert (=> bm!661128 (= call!661136 (derivationStepZipperDown!2654 (ite c!1348949 (regOne!37833 (h!76884 (exprs!8100 lt!2586677))) (regOne!37832 (h!76884 (exprs!8100 lt!2586677)))) (ite c!1348949 (Context!15201 (t!384622 (exprs!8100 lt!2586677))) (Context!15201 call!661132)) (h!76885 s1!1971)))))

(declare-fun b!7255427 () Bool)

(assert (=> b!7255427 (= e!4350511 (nullable!7920 (regOne!37832 (h!76884 (exprs!8100 lt!2586677)))))))

(declare-fun b!7255428 () Bool)

(assert (=> b!7255428 (= e!4350508 e!4350506)))

(assert (=> b!7255428 (= c!1348951 (is-Concat!27505 (h!76884 (exprs!8100 lt!2586677))))))

(declare-fun b!7255429 () Bool)

(declare-fun call!661133 () (Set Context!15200))

(assert (=> b!7255429 (= e!4350508 (set.union call!661136 call!661133))))

(declare-fun d!2256249 () Bool)

(declare-fun c!1348953 () Bool)

(assert (=> d!2256249 (= c!1348953 (and (is-ElementMatch!18660 (h!76884 (exprs!8100 lt!2586677))) (= (c!1348806 (h!76884 (exprs!8100 lt!2586677))) (h!76885 s1!1971))))))

(assert (=> d!2256249 (= (derivationStepZipperDown!2654 (h!76884 (exprs!8100 lt!2586677)) (Context!15201 (t!384622 (exprs!8100 lt!2586677))) (h!76885 s1!1971)) e!4350509)))

(declare-fun b!7255425 () Bool)

(declare-fun call!661135 () (Set Context!15200))

(assert (=> b!7255425 (= e!4350507 (set.union call!661136 call!661135))))

(declare-fun bm!661129 () Bool)

(declare-fun call!661134 () List!70560)

(assert (=> bm!661129 (= call!661134 call!661132)))

(declare-fun bm!661130 () Bool)

(assert (=> bm!661130 (= call!661137 call!661133)))

(declare-fun b!7255430 () Bool)

(assert (=> b!7255430 (= e!4350509 e!4350507)))

(assert (=> b!7255430 (= c!1348949 (is-Union!18660 (h!76884 (exprs!8100 lt!2586677))))))

(declare-fun bm!661131 () Bool)

(assert (=> bm!661131 (= call!661135 (derivationStepZipperDown!2654 (ite c!1348949 (regTwo!37833 (h!76884 (exprs!8100 lt!2586677))) (ite c!1348952 (regTwo!37832 (h!76884 (exprs!8100 lt!2586677))) (ite c!1348951 (regOne!37832 (h!76884 (exprs!8100 lt!2586677))) (reg!18989 (h!76884 (exprs!8100 lt!2586677)))))) (ite (or c!1348949 c!1348952) (Context!15201 (t!384622 (exprs!8100 lt!2586677))) (Context!15201 call!661134)) (h!76885 s1!1971)))))

(declare-fun b!7255431 () Bool)

(assert (=> b!7255431 (= e!4350506 call!661137)))

(declare-fun b!7255432 () Bool)

(assert (=> b!7255432 (= e!4350510 (as set.empty (Set Context!15200)))))

(declare-fun bm!661132 () Bool)

(assert (=> bm!661132 (= call!661133 call!661135)))

(assert (= (and d!2256249 c!1348953) b!7255426))

(assert (= (and d!2256249 (not c!1348953)) b!7255430))

(assert (= (and b!7255430 c!1348949) b!7255425))

(assert (= (and b!7255430 (not c!1348949)) b!7255422))

(assert (= (and b!7255422 res!2942309) b!7255427))

(assert (= (and b!7255422 c!1348952) b!7255429))

(assert (= (and b!7255422 (not c!1348952)) b!7255428))

(assert (= (and b!7255428 c!1348951) b!7255431))

(assert (= (and b!7255428 (not c!1348951)) b!7255423))

(assert (= (and b!7255423 c!1348950) b!7255424))

(assert (= (and b!7255423 (not c!1348950)) b!7255432))

(assert (= (or b!7255431 b!7255424) bm!661129))

(assert (= (or b!7255431 b!7255424) bm!661130))

(assert (= (or b!7255429 bm!661129) bm!661127))

(assert (= (or b!7255429 bm!661130) bm!661132))

(assert (= (or b!7255425 bm!661132) bm!661131))

(assert (= (or b!7255425 b!7255429) bm!661128))

(declare-fun m!7936346 () Bool)

(assert (=> bm!661131 m!7936346))

(declare-fun m!7936348 () Bool)

(assert (=> bm!661128 m!7936348))

(declare-fun m!7936350 () Bool)

(assert (=> b!7255426 m!7936350))

(declare-fun m!7936352 () Bool)

(assert (=> bm!661127 m!7936352))

(declare-fun m!7936354 () Bool)

(assert (=> b!7255427 m!7936354))

(assert (=> bm!661082 d!2256249))

(declare-fun d!2256251 () Bool)

(assert (=> d!2256251 (= (isEmpty!40564 lt!2586673) (is-Nil!70437 lt!2586673))))

(assert (=> d!2256103 d!2256251))

(declare-fun b!7255433 () Bool)

(declare-fun c!1348957 () Bool)

(declare-fun e!4350517 () Bool)

(assert (=> b!7255433 (= c!1348957 e!4350517)))

(declare-fun res!2942310 () Bool)

(assert (=> b!7255433 (=> (not res!2942310) (not e!4350517))))

(assert (=> b!7255433 (= res!2942310 (is-Concat!27505 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))))))

(declare-fun e!4350513 () (Set Context!15200))

(declare-fun e!4350514 () (Set Context!15200))

(assert (=> b!7255433 (= e!4350513 e!4350514)))

(declare-fun b!7255434 () Bool)

(declare-fun c!1348955 () Bool)

(assert (=> b!7255434 (= c!1348955 (is-Star!18660 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))))))

(declare-fun e!4350512 () (Set Context!15200))

(declare-fun e!4350516 () (Set Context!15200))

(assert (=> b!7255434 (= e!4350512 e!4350516)))

(declare-fun call!661138 () List!70560)

(declare-fun c!1348956 () Bool)

(declare-fun bm!661133 () Bool)

(assert (=> bm!661133 (= call!661138 ($colon$colon!2926 (exprs!8100 (ite c!1348861 lt!2586651 (Context!15201 call!661088))) (ite (or c!1348957 c!1348956) (regTwo!37832 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232)))))))))

(declare-fun b!7255435 () Bool)

(declare-fun call!661143 () (Set Context!15200))

(assert (=> b!7255435 (= e!4350516 call!661143)))

(declare-fun b!7255437 () Bool)

(declare-fun e!4350515 () (Set Context!15200))

(assert (=> b!7255437 (= e!4350515 (set.insert (ite c!1348861 lt!2586651 (Context!15201 call!661088)) (as set.empty (Set Context!15200))))))

(declare-fun bm!661134 () Bool)

(declare-fun call!661142 () (Set Context!15200))

(declare-fun c!1348954 () Bool)

(assert (=> bm!661134 (= call!661142 (derivationStepZipperDown!2654 (ite c!1348954 (regOne!37833 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (regOne!37832 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232)))))) (ite c!1348954 (ite c!1348861 lt!2586651 (Context!15201 call!661088)) (Context!15201 call!661138)) (h!76885 s1!1971)))))

(declare-fun b!7255438 () Bool)

(assert (=> b!7255438 (= e!4350517 (nullable!7920 (regOne!37832 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232)))))))))

(declare-fun b!7255439 () Bool)

(assert (=> b!7255439 (= e!4350514 e!4350512)))

(assert (=> b!7255439 (= c!1348956 (is-Concat!27505 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))))))

(declare-fun b!7255440 () Bool)

(declare-fun call!661139 () (Set Context!15200))

(assert (=> b!7255440 (= e!4350514 (set.union call!661142 call!661139))))

(declare-fun d!2256253 () Bool)

(declare-fun c!1348958 () Bool)

(assert (=> d!2256253 (= c!1348958 (and (is-ElementMatch!18660 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (= (c!1348806 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (h!76885 s1!1971))))))

(assert (=> d!2256253 (= (derivationStepZipperDown!2654 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232)))) (ite c!1348861 lt!2586651 (Context!15201 call!661088)) (h!76885 s1!1971)) e!4350515)))

(declare-fun b!7255436 () Bool)

(declare-fun call!661141 () (Set Context!15200))

(assert (=> b!7255436 (= e!4350513 (set.union call!661142 call!661141))))

(declare-fun bm!661135 () Bool)

(declare-fun call!661140 () List!70560)

(assert (=> bm!661135 (= call!661140 call!661138)))

(declare-fun bm!661136 () Bool)

(assert (=> bm!661136 (= call!661143 call!661139)))

(declare-fun b!7255441 () Bool)

(assert (=> b!7255441 (= e!4350515 e!4350513)))

(assert (=> b!7255441 (= c!1348954 (is-Union!18660 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))))))

(declare-fun bm!661137 () Bool)

(assert (=> bm!661137 (= call!661141 (derivationStepZipperDown!2654 (ite c!1348954 (regTwo!37833 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (ite c!1348957 (regTwo!37832 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (ite c!1348956 (regOne!37832 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (reg!18989 (ite c!1348861 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232)))))))) (ite (or c!1348954 c!1348957) (ite c!1348861 lt!2586651 (Context!15201 call!661088)) (Context!15201 call!661140)) (h!76885 s1!1971)))))

(declare-fun b!7255442 () Bool)

(assert (=> b!7255442 (= e!4350512 call!661143)))

(declare-fun b!7255443 () Bool)

(assert (=> b!7255443 (= e!4350516 (as set.empty (Set Context!15200)))))

(declare-fun bm!661138 () Bool)

(assert (=> bm!661138 (= call!661139 call!661141)))

(assert (= (and d!2256253 c!1348958) b!7255437))

(assert (= (and d!2256253 (not c!1348958)) b!7255441))

(assert (= (and b!7255441 c!1348954) b!7255436))

(assert (= (and b!7255441 (not c!1348954)) b!7255433))

(assert (= (and b!7255433 res!2942310) b!7255438))

(assert (= (and b!7255433 c!1348957) b!7255440))

(assert (= (and b!7255433 (not c!1348957)) b!7255439))

(assert (= (and b!7255439 c!1348956) b!7255442))

(assert (= (and b!7255439 (not c!1348956)) b!7255434))

(assert (= (and b!7255434 c!1348955) b!7255435))

(assert (= (and b!7255434 (not c!1348955)) b!7255443))

(assert (= (or b!7255442 b!7255435) bm!661135))

(assert (= (or b!7255442 b!7255435) bm!661136))

(assert (= (or b!7255440 bm!661135) bm!661133))

(assert (= (or b!7255440 bm!661136) bm!661138))

(assert (= (or b!7255436 bm!661138) bm!661137))

(assert (= (or b!7255436 b!7255440) bm!661134))

(declare-fun m!7936356 () Bool)

(assert (=> bm!661137 m!7936356))

(declare-fun m!7936358 () Bool)

(assert (=> bm!661134 m!7936358))

(declare-fun m!7936360 () Bool)

(assert (=> b!7255437 m!7936360))

(declare-fun m!7936362 () Bool)

(assert (=> bm!661133 m!7936362))

(declare-fun m!7936364 () Bool)

(assert (=> b!7255438 m!7936364))

(assert (=> bm!661084 d!2256253))

(declare-fun d!2256255 () Bool)

(declare-fun c!1348959 () Bool)

(assert (=> d!2256255 (= c!1348959 (is-Nil!70436 lt!2586814))))

(declare-fun e!4350518 () (Set Regex!18660))

(assert (=> d!2256255 (= (content!14636 lt!2586814) e!4350518)))

(declare-fun b!7255444 () Bool)

(assert (=> b!7255444 (= e!4350518 (as set.empty (Set Regex!18660)))))

(declare-fun b!7255445 () Bool)

(assert (=> b!7255445 (= e!4350518 (set.union (set.insert (h!76884 lt!2586814) (as set.empty (Set Regex!18660))) (content!14636 (t!384622 lt!2586814))))))

(assert (= (and d!2256255 c!1348959) b!7255444))

(assert (= (and d!2256255 (not c!1348959)) b!7255445))

(declare-fun m!7936366 () Bool)

(assert (=> b!7255445 m!7936366))

(declare-fun m!7936368 () Bool)

(assert (=> b!7255445 m!7936368))

(assert (=> d!2256071 d!2256255))

(declare-fun d!2256257 () Bool)

(declare-fun c!1348960 () Bool)

(assert (=> d!2256257 (= c!1348960 (is-Nil!70436 (exprs!8100 ct1!232)))))

(declare-fun e!4350519 () (Set Regex!18660))

(assert (=> d!2256257 (= (content!14636 (exprs!8100 ct1!232)) e!4350519)))

(declare-fun b!7255446 () Bool)

(assert (=> b!7255446 (= e!4350519 (as set.empty (Set Regex!18660)))))

(declare-fun b!7255447 () Bool)

(assert (=> b!7255447 (= e!4350519 (set.union (set.insert (h!76884 (exprs!8100 ct1!232)) (as set.empty (Set Regex!18660))) (content!14636 (t!384622 (exprs!8100 ct1!232)))))))

(assert (= (and d!2256257 c!1348960) b!7255446))

(assert (= (and d!2256257 (not c!1348960)) b!7255447))

(declare-fun m!7936370 () Bool)

(assert (=> b!7255447 m!7936370))

(declare-fun m!7936372 () Bool)

(assert (=> b!7255447 m!7936372))

(assert (=> d!2256071 d!2256257))

(assert (=> d!2256071 d!2256245))

(declare-fun d!2256259 () Bool)

(declare-fun res!2942315 () Bool)

(declare-fun e!4350524 () Bool)

(assert (=> d!2256259 (=> res!2942315 e!4350524)))

(assert (=> d!2256259 (= res!2942315 (is-Nil!70436 (exprs!8100 lt!2586651)))))

(assert (=> d!2256259 (= (forall!17510 (exprs!8100 lt!2586651) lambda!444969) e!4350524)))

(declare-fun b!7255452 () Bool)

(declare-fun e!4350525 () Bool)

(assert (=> b!7255452 (= e!4350524 e!4350525)))

(declare-fun res!2942316 () Bool)

(assert (=> b!7255452 (=> (not res!2942316) (not e!4350525))))

(declare-fun dynLambda!28779 (Int Regex!18660) Bool)

(assert (=> b!7255452 (= res!2942316 (dynLambda!28779 lambda!444969 (h!76884 (exprs!8100 lt!2586651))))))

(declare-fun b!7255453 () Bool)

(assert (=> b!7255453 (= e!4350525 (forall!17510 (t!384622 (exprs!8100 lt!2586651)) lambda!444969))))

(assert (= (and d!2256259 (not res!2942315)) b!7255452))

(assert (= (and b!7255452 res!2942316) b!7255453))

(declare-fun b_lambda!278919 () Bool)

(assert (=> (not b_lambda!278919) (not b!7255452)))

(declare-fun m!7936374 () Bool)

(assert (=> b!7255452 m!7936374))

(declare-fun m!7936376 () Bool)

(assert (=> b!7255453 m!7936376))

(assert (=> d!2256025 d!2256259))

(declare-fun d!2256261 () Bool)

(assert (=> d!2256261 (= (nullable!7920 (h!76884 (exprs!8100 lt!2586677))) (nullableFct!3111 (h!76884 (exprs!8100 lt!2586677))))))

(declare-fun bs!1907474 () Bool)

(assert (= bs!1907474 d!2256261))

(declare-fun m!7936378 () Bool)

(assert (=> bs!1907474 m!7936378))

(assert (=> b!7255169 d!2256261))

(declare-fun bs!1907475 () Bool)

(declare-fun d!2256263 () Bool)

(assert (= bs!1907475 (and d!2256263 d!2256053)))

(declare-fun lambda!445012 () Int)

(assert (=> bs!1907475 (not (= lambda!445012 lambda!444978))))

(declare-fun bs!1907476 () Bool)

(assert (= bs!1907476 (and d!2256263 d!2256217)))

(assert (=> bs!1907476 (= lambda!445012 lambda!445009)))

(declare-fun bs!1907477 () Bool)

(assert (= bs!1907477 (and d!2256263 d!2256051)))

(assert (=> bs!1907477 (not (= lambda!445012 lambda!444975))))

(declare-fun bs!1907478 () Bool)

(assert (= bs!1907478 (and d!2256263 d!2256209)))

(assert (=> bs!1907478 (not (= lambda!445012 lambda!445003))))

(declare-fun bs!1907479 () Bool)

(assert (= bs!1907479 (and d!2256263 d!2256231)))

(assert (=> bs!1907479 (not (= lambda!445012 lambda!445011))))

(declare-fun bs!1907480 () Bool)

(assert (= bs!1907480 (and d!2256263 d!2256211)))

(assert (=> bs!1907480 (not (= lambda!445012 lambda!445006))))

(declare-fun bs!1907481 () Bool)

(assert (= bs!1907481 (and d!2256263 b!7254998)))

(assert (=> bs!1907481 (not (= lambda!445012 lambda!444936))))

(assert (=> d!2256263 (= (nullableZipper!2922 lt!2586666) (exists!4398 lt!2586666 lambda!445012))))

(declare-fun bs!1907482 () Bool)

(assert (= bs!1907482 d!2256263))

(declare-fun m!7936380 () Bool)

(assert (=> bs!1907482 m!7936380))

(assert (=> b!7255192 d!2256263))

(declare-fun d!2256265 () Bool)

(declare-fun c!1348961 () Bool)

(assert (=> d!2256265 (= c!1348961 (isEmpty!40564 (tail!14346 (t!384623 s1!1971))))))

(declare-fun e!4350526 () Bool)

(assert (=> d!2256265 (= (matchZipper!3570 (derivationStepZipper!3438 lt!2586681 (head!14918 (t!384623 s1!1971))) (tail!14346 (t!384623 s1!1971))) e!4350526)))

(declare-fun b!7255454 () Bool)

(assert (=> b!7255454 (= e!4350526 (nullableZipper!2922 (derivationStepZipper!3438 lt!2586681 (head!14918 (t!384623 s1!1971)))))))

(declare-fun b!7255455 () Bool)

(assert (=> b!7255455 (= e!4350526 (matchZipper!3570 (derivationStepZipper!3438 (derivationStepZipper!3438 lt!2586681 (head!14918 (t!384623 s1!1971))) (head!14918 (tail!14346 (t!384623 s1!1971)))) (tail!14346 (tail!14346 (t!384623 s1!1971)))))))

(assert (= (and d!2256265 c!1348961) b!7255454))

(assert (= (and d!2256265 (not c!1348961)) b!7255455))

(assert (=> d!2256265 m!7935900))

(declare-fun m!7936382 () Bool)

(assert (=> d!2256265 m!7936382))

(assert (=> b!7255454 m!7935898))

(declare-fun m!7936384 () Bool)

(assert (=> b!7255454 m!7936384))

(assert (=> b!7255455 m!7935900))

(declare-fun m!7936386 () Bool)

(assert (=> b!7255455 m!7936386))

(assert (=> b!7255455 m!7935898))

(assert (=> b!7255455 m!7936386))

(declare-fun m!7936388 () Bool)

(assert (=> b!7255455 m!7936388))

(assert (=> b!7255455 m!7935900))

(declare-fun m!7936390 () Bool)

(assert (=> b!7255455 m!7936390))

(assert (=> b!7255455 m!7936388))

(assert (=> b!7255455 m!7936390))

(declare-fun m!7936392 () Bool)

(assert (=> b!7255455 m!7936392))

(assert (=> b!7255124 d!2256265))

(declare-fun bs!1907483 () Bool)

(declare-fun d!2256267 () Bool)

(assert (= bs!1907483 (and d!2256267 b!7254985)))

(declare-fun lambda!445013 () Int)

(assert (=> bs!1907483 (= (= (head!14918 (t!384623 s1!1971)) (h!76885 s1!1971)) (= lambda!445013 lambda!444937))))

(declare-fun bs!1907484 () Bool)

(assert (= bs!1907484 (and d!2256267 d!2256059)))

(assert (=> bs!1907484 (= (= (head!14918 (t!384623 s1!1971)) (h!76885 s1!1971)) (= lambda!445013 lambda!444981))))

(declare-fun bs!1907485 () Bool)

(assert (= bs!1907485 (and d!2256267 d!2256067)))

(assert (=> bs!1907485 (= (= (head!14918 (t!384623 s1!1971)) (h!76885 s1!1971)) (= lambda!445013 lambda!444984))))

(declare-fun bs!1907486 () Bool)

(assert (= bs!1907486 (and d!2256267 d!2256225)))

(assert (=> bs!1907486 (= (= (head!14918 (t!384623 s1!1971)) (head!14918 lt!2586673)) (= lambda!445013 lambda!445010))))

(assert (=> d!2256267 true))

(assert (=> d!2256267 (= (derivationStepZipper!3438 lt!2586681 (head!14918 (t!384623 s1!1971))) (flatMap!2825 lt!2586681 lambda!445013))))

(declare-fun bs!1907487 () Bool)

(assert (= bs!1907487 d!2256267))

(declare-fun m!7936394 () Bool)

(assert (=> bs!1907487 m!7936394))

(assert (=> b!7255124 d!2256267))

(declare-fun d!2256269 () Bool)

(assert (=> d!2256269 (= (head!14918 (t!384623 s1!1971)) (h!76885 (t!384623 s1!1971)))))

(assert (=> b!7255124 d!2256269))

(declare-fun d!2256271 () Bool)

(assert (=> d!2256271 (= (tail!14346 (t!384623 s1!1971)) (t!384623 (t!384623 s1!1971)))))

(assert (=> b!7255124 d!2256271))

(declare-fun d!2256273 () Bool)

(declare-fun c!1348962 () Bool)

(assert (=> d!2256273 (= c!1348962 (isEmpty!40564 (tail!14346 (t!384623 s1!1971))))))

(declare-fun e!4350527 () Bool)

(assert (=> d!2256273 (= (matchZipper!3570 (derivationStepZipper!3438 lt!2586676 (head!14918 (t!384623 s1!1971))) (tail!14346 (t!384623 s1!1971))) e!4350527)))

(declare-fun b!7255456 () Bool)

(assert (=> b!7255456 (= e!4350527 (nullableZipper!2922 (derivationStepZipper!3438 lt!2586676 (head!14918 (t!384623 s1!1971)))))))

(declare-fun b!7255457 () Bool)

(assert (=> b!7255457 (= e!4350527 (matchZipper!3570 (derivationStepZipper!3438 (derivationStepZipper!3438 lt!2586676 (head!14918 (t!384623 s1!1971))) (head!14918 (tail!14346 (t!384623 s1!1971)))) (tail!14346 (tail!14346 (t!384623 s1!1971)))))))

(assert (= (and d!2256273 c!1348962) b!7255456))

(assert (= (and d!2256273 (not c!1348962)) b!7255457))

(assert (=> d!2256273 m!7935900))

(assert (=> d!2256273 m!7936382))

(assert (=> b!7255456 m!7936006))

(declare-fun m!7936396 () Bool)

(assert (=> b!7255456 m!7936396))

(assert (=> b!7255457 m!7935900))

(assert (=> b!7255457 m!7936386))

(assert (=> b!7255457 m!7936006))

(assert (=> b!7255457 m!7936386))

(declare-fun m!7936398 () Bool)

(assert (=> b!7255457 m!7936398))

(assert (=> b!7255457 m!7935900))

(assert (=> b!7255457 m!7936390))

(assert (=> b!7255457 m!7936398))

(assert (=> b!7255457 m!7936390))

(declare-fun m!7936400 () Bool)

(assert (=> b!7255457 m!7936400))

(assert (=> b!7255198 d!2256273))

(declare-fun bs!1907488 () Bool)

(declare-fun d!2256275 () Bool)

(assert (= bs!1907488 (and d!2256275 d!2256225)))

(declare-fun lambda!445014 () Int)

(assert (=> bs!1907488 (= (= (head!14918 (t!384623 s1!1971)) (head!14918 lt!2586673)) (= lambda!445014 lambda!445010))))

(declare-fun bs!1907489 () Bool)

(assert (= bs!1907489 (and d!2256275 b!7254985)))

(assert (=> bs!1907489 (= (= (head!14918 (t!384623 s1!1971)) (h!76885 s1!1971)) (= lambda!445014 lambda!444937))))

(declare-fun bs!1907490 () Bool)

(assert (= bs!1907490 (and d!2256275 d!2256067)))

(assert (=> bs!1907490 (= (= (head!14918 (t!384623 s1!1971)) (h!76885 s1!1971)) (= lambda!445014 lambda!444984))))

(declare-fun bs!1907491 () Bool)

(assert (= bs!1907491 (and d!2256275 d!2256059)))

(assert (=> bs!1907491 (= (= (head!14918 (t!384623 s1!1971)) (h!76885 s1!1971)) (= lambda!445014 lambda!444981))))

(declare-fun bs!1907492 () Bool)

(assert (= bs!1907492 (and d!2256275 d!2256267)))

(assert (=> bs!1907492 (= lambda!445014 lambda!445013)))

(assert (=> d!2256275 true))

(assert (=> d!2256275 (= (derivationStepZipper!3438 lt!2586676 (head!14918 (t!384623 s1!1971))) (flatMap!2825 lt!2586676 lambda!445014))))

(declare-fun bs!1907493 () Bool)

(assert (= bs!1907493 d!2256275))

(declare-fun m!7936402 () Bool)

(assert (=> bs!1907493 m!7936402))

(assert (=> b!7255198 d!2256275))

(assert (=> b!7255198 d!2256269))

(assert (=> b!7255198 d!2256271))

(declare-fun d!2256277 () Bool)

(declare-fun res!2942317 () Bool)

(declare-fun e!4350528 () Bool)

(assert (=> d!2256277 (=> res!2942317 e!4350528)))

(assert (=> d!2256277 (= res!2942317 (is-Nil!70436 (exprs!8100 ct2!328)))))

(assert (=> d!2256277 (= (forall!17510 (exprs!8100 ct2!328) lambda!444983) e!4350528)))

(declare-fun b!7255458 () Bool)

(declare-fun e!4350529 () Bool)

(assert (=> b!7255458 (= e!4350528 e!4350529)))

(declare-fun res!2942318 () Bool)

(assert (=> b!7255458 (=> (not res!2942318) (not e!4350529))))

(assert (=> b!7255458 (= res!2942318 (dynLambda!28779 lambda!444983 (h!76884 (exprs!8100 ct2!328))))))

(declare-fun b!7255459 () Bool)

(assert (=> b!7255459 (= e!4350529 (forall!17510 (t!384622 (exprs!8100 ct2!328)) lambda!444983))))

(assert (= (and d!2256277 (not res!2942317)) b!7255458))

(assert (= (and b!7255458 res!2942318) b!7255459))

(declare-fun b_lambda!278921 () Bool)

(assert (=> (not b_lambda!278921) (not b!7255458)))

(declare-fun m!7936404 () Bool)

(assert (=> b!7255458 m!7936404))

(declare-fun m!7936406 () Bool)

(assert (=> b!7255459 m!7936406))

(assert (=> d!2256065 d!2256277))

(declare-fun bs!1907494 () Bool)

(declare-fun d!2256279 () Bool)

(assert (= bs!1907494 (and d!2256279 d!2256053)))

(declare-fun lambda!445015 () Int)

(assert (=> bs!1907494 (not (= lambda!445015 lambda!444978))))

(declare-fun bs!1907495 () Bool)

(assert (= bs!1907495 (and d!2256279 d!2256217)))

(assert (=> bs!1907495 (= lambda!445015 lambda!445009)))

(declare-fun bs!1907496 () Bool)

(assert (= bs!1907496 (and d!2256279 d!2256209)))

(assert (=> bs!1907496 (not (= lambda!445015 lambda!445003))))

(declare-fun bs!1907497 () Bool)

(assert (= bs!1907497 (and d!2256279 d!2256231)))

(assert (=> bs!1907497 (not (= lambda!445015 lambda!445011))))

(declare-fun bs!1907498 () Bool)

(assert (= bs!1907498 (and d!2256279 d!2256263)))

(assert (=> bs!1907498 (= lambda!445015 lambda!445012)))

(declare-fun bs!1907499 () Bool)

(assert (= bs!1907499 (and d!2256279 d!2256051)))

(assert (=> bs!1907499 (not (= lambda!445015 lambda!444975))))

(declare-fun bs!1907500 () Bool)

(assert (= bs!1907500 (and d!2256279 d!2256211)))

(assert (=> bs!1907500 (not (= lambda!445015 lambda!445006))))

(declare-fun bs!1907501 () Bool)

(assert (= bs!1907501 (and d!2256279 b!7254998)))

(assert (=> bs!1907501 (not (= lambda!445015 lambda!444936))))

(assert (=> d!2256279 (= (nullableZipper!2922 lt!2586670) (exists!4398 lt!2586670 lambda!445015))))

(declare-fun bs!1907502 () Bool)

(assert (= bs!1907502 d!2256279))

(declare-fun m!7936408 () Bool)

(assert (=> bs!1907502 m!7936408))

(assert (=> b!7255129 d!2256279))

(declare-fun bm!661139 () Bool)

(declare-fun call!661144 () (Set Context!15200))

(assert (=> bm!661139 (= call!661144 (derivationStepZipperDown!2654 (h!76884 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 ct1!232))))) (Context!15201 (t!384622 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 ct1!232)))))) (h!76885 s1!1971)))))

(declare-fun b!7255460 () Bool)

(declare-fun e!4350531 () (Set Context!15200))

(assert (=> b!7255460 (= e!4350531 (as set.empty (Set Context!15200)))))

(declare-fun b!7255461 () Bool)

(declare-fun e!4350530 () Bool)

(assert (=> b!7255461 (= e!4350530 (nullable!7920 (h!76884 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 ct1!232)))))))))

(declare-fun d!2256281 () Bool)

(declare-fun c!1348964 () Bool)

(assert (=> d!2256281 (= c!1348964 e!4350530)))

(declare-fun res!2942319 () Bool)

(assert (=> d!2256281 (=> (not res!2942319) (not e!4350530))))

(assert (=> d!2256281 (= res!2942319 (is-Cons!70436 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 ct1!232))))))))

(declare-fun e!4350532 () (Set Context!15200))

(assert (=> d!2256281 (= (derivationStepZipperUp!2484 (Context!15201 (t!384622 (exprs!8100 ct1!232))) (h!76885 s1!1971)) e!4350532)))

(declare-fun b!7255462 () Bool)

(assert (=> b!7255462 (= e!4350532 e!4350531)))

(declare-fun c!1348963 () Bool)

(assert (=> b!7255462 (= c!1348963 (is-Cons!70436 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 ct1!232))))))))

(declare-fun b!7255463 () Bool)

(assert (=> b!7255463 (= e!4350532 (set.union call!661144 (derivationStepZipperUp!2484 (Context!15201 (t!384622 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 ct1!232)))))) (h!76885 s1!1971))))))

(declare-fun b!7255464 () Bool)

(assert (=> b!7255464 (= e!4350531 call!661144)))

(assert (= (and d!2256281 res!2942319) b!7255461))

(assert (= (and d!2256281 c!1348964) b!7255463))

(assert (= (and d!2256281 (not c!1348964)) b!7255462))

(assert (= (and b!7255462 c!1348963) b!7255464))

(assert (= (and b!7255462 (not c!1348963)) b!7255460))

(assert (= (or b!7255463 b!7255464) bm!661139))

(declare-fun m!7936410 () Bool)

(assert (=> bm!661139 m!7936410))

(declare-fun m!7936412 () Bool)

(assert (=> b!7255461 m!7936412))

(declare-fun m!7936414 () Bool)

(assert (=> b!7255463 m!7936414))

(assert (=> b!7255104 d!2256281))

(assert (=> b!7255191 d!2256069))

(declare-fun d!2256283 () Bool)

(declare-fun res!2942320 () Bool)

(declare-fun e!4350533 () Bool)

(assert (=> d!2256283 (=> res!2942320 e!4350533)))

(assert (=> d!2256283 (= res!2942320 (is-Nil!70436 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328))))))

(assert (=> d!2256283 (= (forall!17510 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328)) lambda!444935) e!4350533)))

(declare-fun b!7255465 () Bool)

(declare-fun e!4350534 () Bool)

(assert (=> b!7255465 (= e!4350533 e!4350534)))

(declare-fun res!2942321 () Bool)

(assert (=> b!7255465 (=> (not res!2942321) (not e!4350534))))

(assert (=> b!7255465 (= res!2942321 (dynLambda!28779 lambda!444935 (h!76884 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328)))))))

(declare-fun b!7255466 () Bool)

(assert (=> b!7255466 (= e!4350534 (forall!17510 (t!384622 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328))) lambda!444935))))

(assert (= (and d!2256283 (not res!2942320)) b!7255465))

(assert (= (and b!7255465 res!2942321) b!7255466))

(declare-fun b_lambda!278923 () Bool)

(assert (=> (not b_lambda!278923) (not b!7255465)))

(declare-fun m!7936416 () Bool)

(assert (=> b!7255465 m!7936416))

(declare-fun m!7936418 () Bool)

(assert (=> b!7255466 m!7936418))

(assert (=> d!2256039 d!2256283))

(assert (=> d!2256039 d!2256047))

(declare-fun d!2256285 () Bool)

(assert (=> d!2256285 (forall!17510 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328)) lambda!444935)))

(assert (=> d!2256285 true))

(declare-fun _$78!792 () Unit!163911)

(assert (=> d!2256285 (= (choose!56080 (exprs!8100 lt!2586664) (exprs!8100 ct2!328) lambda!444935) _$78!792)))

(declare-fun bs!1907503 () Bool)

(assert (= bs!1907503 d!2256285))

(assert (=> bs!1907503 m!7935672))

(assert (=> bs!1907503 m!7935672))

(assert (=> bs!1907503 m!7935830))

(assert (=> d!2256039 d!2256285))

(declare-fun d!2256287 () Bool)

(declare-fun res!2942322 () Bool)

(declare-fun e!4350535 () Bool)

(assert (=> d!2256287 (=> res!2942322 e!4350535)))

(assert (=> d!2256287 (= res!2942322 (is-Nil!70436 (exprs!8100 lt!2586664)))))

(assert (=> d!2256287 (= (forall!17510 (exprs!8100 lt!2586664) lambda!444935) e!4350535)))

(declare-fun b!7255467 () Bool)

(declare-fun e!4350536 () Bool)

(assert (=> b!7255467 (= e!4350535 e!4350536)))

(declare-fun res!2942323 () Bool)

(assert (=> b!7255467 (=> (not res!2942323) (not e!4350536))))

(assert (=> b!7255467 (= res!2942323 (dynLambda!28779 lambda!444935 (h!76884 (exprs!8100 lt!2586664))))))

(declare-fun b!7255468 () Bool)

(assert (=> b!7255468 (= e!4350536 (forall!17510 (t!384622 (exprs!8100 lt!2586664)) lambda!444935))))

(assert (= (and d!2256287 (not res!2942322)) b!7255467))

(assert (= (and b!7255467 res!2942323) b!7255468))

(declare-fun b_lambda!278925 () Bool)

(assert (=> (not b_lambda!278925) (not b!7255467)))

(declare-fun m!7936420 () Bool)

(assert (=> b!7255467 m!7936420))

(declare-fun m!7936422 () Bool)

(assert (=> b!7255468 m!7936422))

(assert (=> d!2256039 d!2256287))

(declare-fun d!2256289 () Bool)

(declare-fun c!1348965 () Bool)

(assert (=> d!2256289 (= c!1348965 (isEmpty!40564 (t!384623 s1!1971)))))

(declare-fun e!4350537 () Bool)

(assert (=> d!2256289 (= (matchZipper!3570 (set.union lt!2586666 lt!2586670) (t!384623 s1!1971)) e!4350537)))

(declare-fun b!7255469 () Bool)

(assert (=> b!7255469 (= e!4350537 (nullableZipper!2922 (set.union lt!2586666 lt!2586670)))))

(declare-fun b!7255470 () Bool)

(assert (=> b!7255470 (= e!4350537 (matchZipper!3570 (derivationStepZipper!3438 (set.union lt!2586666 lt!2586670) (head!14918 (t!384623 s1!1971))) (tail!14346 (t!384623 s1!1971))))))

(assert (= (and d!2256289 c!1348965) b!7255469))

(assert (= (and d!2256289 (not c!1348965)) b!7255470))

(assert (=> d!2256289 m!7935892))

(declare-fun m!7936424 () Bool)

(assert (=> b!7255469 m!7936424))

(assert (=> b!7255470 m!7935896))

(assert (=> b!7255470 m!7935896))

(declare-fun m!7936426 () Bool)

(assert (=> b!7255470 m!7936426))

(assert (=> b!7255470 m!7935900))

(assert (=> b!7255470 m!7936426))

(assert (=> b!7255470 m!7935900))

(declare-fun m!7936428 () Bool)

(assert (=> b!7255470 m!7936428))

(assert (=> d!2256097 d!2256289))

(assert (=> d!2256097 d!2256099))

(declare-fun d!2256291 () Bool)

(declare-fun e!4350540 () Bool)

(assert (=> d!2256291 (= (matchZipper!3570 (set.union lt!2586666 lt!2586670) (t!384623 s1!1971)) e!4350540)))

(declare-fun res!2942326 () Bool)

(assert (=> d!2256291 (=> res!2942326 e!4350540)))

(assert (=> d!2256291 (= res!2942326 (matchZipper!3570 lt!2586666 (t!384623 s1!1971)))))

(assert (=> d!2256291 true))

(declare-fun _$48!2543 () Unit!163911)

(assert (=> d!2256291 (= (choose!56087 lt!2586666 lt!2586670 (t!384623 s1!1971)) _$48!2543)))

(declare-fun b!7255473 () Bool)

(assert (=> b!7255473 (= e!4350540 (matchZipper!3570 lt!2586670 (t!384623 s1!1971)))))

(assert (= (and d!2256291 (not res!2942326)) b!7255473))

(assert (=> d!2256291 m!7935984))

(assert (=> d!2256291 m!7935590))

(assert (=> b!7255473 m!7935606))

(assert (=> d!2256097 d!2256291))

(declare-fun bs!1907504 () Bool)

(declare-fun d!2256293 () Bool)

(assert (= bs!1907504 (and d!2256293 d!2256053)))

(declare-fun lambda!445016 () Int)

(assert (=> bs!1907504 (not (= lambda!445016 lambda!444978))))

(declare-fun bs!1907505 () Bool)

(assert (= bs!1907505 (and d!2256293 d!2256217)))

(assert (=> bs!1907505 (= lambda!445016 lambda!445009)))

(declare-fun bs!1907506 () Bool)

(assert (= bs!1907506 (and d!2256293 d!2256279)))

(assert (=> bs!1907506 (= lambda!445016 lambda!445015)))

(declare-fun bs!1907507 () Bool)

(assert (= bs!1907507 (and d!2256293 d!2256209)))

(assert (=> bs!1907507 (not (= lambda!445016 lambda!445003))))

(declare-fun bs!1907508 () Bool)

(assert (= bs!1907508 (and d!2256293 d!2256231)))

(assert (=> bs!1907508 (not (= lambda!445016 lambda!445011))))

(declare-fun bs!1907509 () Bool)

(assert (= bs!1907509 (and d!2256293 d!2256263)))

(assert (=> bs!1907509 (= lambda!445016 lambda!445012)))

(declare-fun bs!1907510 () Bool)

(assert (= bs!1907510 (and d!2256293 d!2256051)))

(assert (=> bs!1907510 (not (= lambda!445016 lambda!444975))))

(declare-fun bs!1907511 () Bool)

(assert (= bs!1907511 (and d!2256293 d!2256211)))

(assert (=> bs!1907511 (not (= lambda!445016 lambda!445006))))

(declare-fun bs!1907512 () Bool)

(assert (= bs!1907512 (and d!2256293 b!7254998)))

(assert (=> bs!1907512 (not (= lambda!445016 lambda!444936))))

(assert (=> d!2256293 (= (nullableZipper!2922 (set.insert (Context!15201 lt!2586652) (as set.empty (Set Context!15200)))) (exists!4398 (set.insert (Context!15201 lt!2586652) (as set.empty (Set Context!15200))) lambda!445016))))

(declare-fun bs!1907513 () Bool)

(assert (= bs!1907513 d!2256293))

(assert (=> bs!1907513 m!7935668))

(declare-fun m!7936430 () Bool)

(assert (=> bs!1907513 m!7936430))

(assert (=> b!7255084 d!2256293))

(declare-fun d!2256295 () Bool)

(assert (=> d!2256295 (= (isEmpty!40564 s2!1849) (is-Nil!70437 s2!1849))))

(assert (=> d!2256027 d!2256295))

(declare-fun bs!1907514 () Bool)

(declare-fun d!2256297 () Bool)

(assert (= bs!1907514 (and d!2256297 d!2256293)))

(declare-fun lambda!445017 () Int)

(assert (=> bs!1907514 (= lambda!445017 lambda!445016)))

(declare-fun bs!1907515 () Bool)

(assert (= bs!1907515 (and d!2256297 d!2256053)))

(assert (=> bs!1907515 (not (= lambda!445017 lambda!444978))))

(declare-fun bs!1907516 () Bool)

(assert (= bs!1907516 (and d!2256297 d!2256217)))

(assert (=> bs!1907516 (= lambda!445017 lambda!445009)))

(declare-fun bs!1907517 () Bool)

(assert (= bs!1907517 (and d!2256297 d!2256279)))

(assert (=> bs!1907517 (= lambda!445017 lambda!445015)))

(declare-fun bs!1907518 () Bool)

(assert (= bs!1907518 (and d!2256297 d!2256209)))

(assert (=> bs!1907518 (not (= lambda!445017 lambda!445003))))

(declare-fun bs!1907519 () Bool)

(assert (= bs!1907519 (and d!2256297 d!2256231)))

(assert (=> bs!1907519 (not (= lambda!445017 lambda!445011))))

(declare-fun bs!1907520 () Bool)

(assert (= bs!1907520 (and d!2256297 d!2256263)))

(assert (=> bs!1907520 (= lambda!445017 lambda!445012)))

(declare-fun bs!1907521 () Bool)

(assert (= bs!1907521 (and d!2256297 d!2256051)))

(assert (=> bs!1907521 (not (= lambda!445017 lambda!444975))))

(declare-fun bs!1907522 () Bool)

(assert (= bs!1907522 (and d!2256297 d!2256211)))

(assert (=> bs!1907522 (not (= lambda!445017 lambda!445006))))

(declare-fun bs!1907523 () Bool)

(assert (= bs!1907523 (and d!2256297 b!7254998)))

(assert (=> bs!1907523 (not (= lambda!445017 lambda!444936))))

(assert (=> d!2256297 (= (nullableZipper!2922 lt!2586669) (exists!4398 lt!2586669 lambda!445017))))

(declare-fun bs!1907524 () Bool)

(assert (= bs!1907524 d!2256297))

(declare-fun m!7936432 () Bool)

(assert (=> bs!1907524 m!7936432))

(assert (=> b!7255201 d!2256297))

(declare-fun d!2256299 () Bool)

(declare-fun c!1348968 () Bool)

(assert (=> d!2256299 (= c!1348968 (is-Nil!70437 lt!2586791))))

(declare-fun e!4350543 () (Set C!37594))

(assert (=> d!2256299 (= (content!14635 lt!2586791) e!4350543)))

(declare-fun b!7255478 () Bool)

(assert (=> b!7255478 (= e!4350543 (as set.empty (Set C!37594)))))

(declare-fun b!7255479 () Bool)

(assert (=> b!7255479 (= e!4350543 (set.union (set.insert (h!76885 lt!2586791) (as set.empty (Set C!37594))) (content!14635 (t!384623 lt!2586791))))))

(assert (= (and d!2256299 c!1348968) b!7255478))

(assert (= (and d!2256299 (not c!1348968)) b!7255479))

(declare-fun m!7936434 () Bool)

(assert (=> b!7255479 m!7936434))

(declare-fun m!7936436 () Bool)

(assert (=> b!7255479 m!7936436))

(assert (=> d!2256037 d!2256299))

(declare-fun d!2256301 () Bool)

(declare-fun c!1348969 () Bool)

(assert (=> d!2256301 (= c!1348969 (is-Nil!70437 (t!384623 s1!1971)))))

(declare-fun e!4350544 () (Set C!37594))

(assert (=> d!2256301 (= (content!14635 (t!384623 s1!1971)) e!4350544)))

(declare-fun b!7255480 () Bool)

(assert (=> b!7255480 (= e!4350544 (as set.empty (Set C!37594)))))

(declare-fun b!7255481 () Bool)

(assert (=> b!7255481 (= e!4350544 (set.union (set.insert (h!76885 (t!384623 s1!1971)) (as set.empty (Set C!37594))) (content!14635 (t!384623 (t!384623 s1!1971)))))))

(assert (= (and d!2256301 c!1348969) b!7255480))

(assert (= (and d!2256301 (not c!1348969)) b!7255481))

(declare-fun m!7936438 () Bool)

(assert (=> b!7255481 m!7936438))

(assert (=> b!7255481 m!7936344))

(assert (=> d!2256037 d!2256301))

(declare-fun d!2256303 () Bool)

(declare-fun c!1348970 () Bool)

(assert (=> d!2256303 (= c!1348970 (is-Nil!70437 s2!1849))))

(declare-fun e!4350545 () (Set C!37594))

(assert (=> d!2256303 (= (content!14635 s2!1849) e!4350545)))

(declare-fun b!7255482 () Bool)

(assert (=> b!7255482 (= e!4350545 (as set.empty (Set C!37594)))))

(declare-fun b!7255483 () Bool)

(assert (=> b!7255483 (= e!4350545 (set.union (set.insert (h!76885 s2!1849) (as set.empty (Set C!37594))) (content!14635 (t!384623 s2!1849))))))

(assert (= (and d!2256303 c!1348970) b!7255482))

(assert (= (and d!2256303 (not c!1348970)) b!7255483))

(declare-fun m!7936440 () Bool)

(assert (=> b!7255483 m!7936440))

(declare-fun m!7936442 () Bool)

(assert (=> b!7255483 m!7936442))

(assert (=> d!2256037 d!2256303))

(declare-fun b!7255484 () Bool)

(declare-fun c!1348974 () Bool)

(declare-fun e!4350551 () Bool)

(assert (=> b!7255484 (= c!1348974 e!4350551)))

(declare-fun res!2942327 () Bool)

(assert (=> b!7255484 (=> (not res!2942327) (not e!4350551))))

(assert (=> b!7255484 (= res!2942327 (is-Concat!27505 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun e!4350547 () (Set Context!15200))

(declare-fun e!4350548 () (Set Context!15200))

(assert (=> b!7255484 (= e!4350547 e!4350548)))

(declare-fun b!7255485 () Bool)

(declare-fun c!1348972 () Bool)

(assert (=> b!7255485 (= c!1348972 (is-Star!18660 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun e!4350546 () (Set Context!15200))

(declare-fun e!4350550 () (Set Context!15200))

(assert (=> b!7255485 (= e!4350546 e!4350550)))

(declare-fun call!661145 () List!70560)

(declare-fun bm!661140 () Bool)

(declare-fun c!1348973 () Bool)

(assert (=> bm!661140 (= call!661145 ($colon$colon!2926 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 ct1!232)))) (ite (or c!1348974 c!1348973) (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (h!76884 (exprs!8100 ct1!232)))))))

(declare-fun b!7255486 () Bool)

(declare-fun call!661150 () (Set Context!15200))

(assert (=> b!7255486 (= e!4350550 call!661150)))

(declare-fun b!7255488 () Bool)

(declare-fun e!4350549 () (Set Context!15200))

(assert (=> b!7255488 (= e!4350549 (set.insert (Context!15201 (t!384622 (exprs!8100 ct1!232))) (as set.empty (Set Context!15200))))))

(declare-fun c!1348971 () Bool)

(declare-fun bm!661141 () Bool)

(declare-fun call!661149 () (Set Context!15200))

(assert (=> bm!661141 (= call!661149 (derivationStepZipperDown!2654 (ite c!1348971 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232)))) (ite c!1348971 (Context!15201 (t!384622 (exprs!8100 ct1!232))) (Context!15201 call!661145)) (h!76885 s1!1971)))))

(declare-fun b!7255489 () Bool)

(assert (=> b!7255489 (= e!4350551 (nullable!7920 (regOne!37832 (h!76884 (exprs!8100 ct1!232)))))))

(declare-fun b!7255490 () Bool)

(assert (=> b!7255490 (= e!4350548 e!4350546)))

(assert (=> b!7255490 (= c!1348973 (is-Concat!27505 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun b!7255491 () Bool)

(declare-fun call!661146 () (Set Context!15200))

(assert (=> b!7255491 (= e!4350548 (set.union call!661149 call!661146))))

(declare-fun d!2256305 () Bool)

(declare-fun c!1348975 () Bool)

(assert (=> d!2256305 (= c!1348975 (and (is-ElementMatch!18660 (h!76884 (exprs!8100 ct1!232))) (= (c!1348806 (h!76884 (exprs!8100 ct1!232))) (h!76885 s1!1971))))))

(assert (=> d!2256305 (= (derivationStepZipperDown!2654 (h!76884 (exprs!8100 ct1!232)) (Context!15201 (t!384622 (exprs!8100 ct1!232))) (h!76885 s1!1971)) e!4350549)))

(declare-fun b!7255487 () Bool)

(declare-fun call!661148 () (Set Context!15200))

(assert (=> b!7255487 (= e!4350547 (set.union call!661149 call!661148))))

(declare-fun bm!661142 () Bool)

(declare-fun call!661147 () List!70560)

(assert (=> bm!661142 (= call!661147 call!661145)))

(declare-fun bm!661143 () Bool)

(assert (=> bm!661143 (= call!661150 call!661146)))

(declare-fun b!7255492 () Bool)

(assert (=> b!7255492 (= e!4350549 e!4350547)))

(assert (=> b!7255492 (= c!1348971 (is-Union!18660 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun bm!661144 () Bool)

(assert (=> bm!661144 (= call!661148 (derivationStepZipperDown!2654 (ite c!1348971 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348974 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348973 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232)))))) (ite (or c!1348971 c!1348974) (Context!15201 (t!384622 (exprs!8100 ct1!232))) (Context!15201 call!661147)) (h!76885 s1!1971)))))

(declare-fun b!7255493 () Bool)

(assert (=> b!7255493 (= e!4350546 call!661150)))

(declare-fun b!7255494 () Bool)

(assert (=> b!7255494 (= e!4350550 (as set.empty (Set Context!15200)))))

(declare-fun bm!661145 () Bool)

(assert (=> bm!661145 (= call!661146 call!661148)))

(assert (= (and d!2256305 c!1348975) b!7255488))

(assert (= (and d!2256305 (not c!1348975)) b!7255492))

(assert (= (and b!7255492 c!1348971) b!7255487))

(assert (= (and b!7255492 (not c!1348971)) b!7255484))

(assert (= (and b!7255484 res!2942327) b!7255489))

(assert (= (and b!7255484 c!1348974) b!7255491))

(assert (= (and b!7255484 (not c!1348974)) b!7255490))

(assert (= (and b!7255490 c!1348973) b!7255493))

(assert (= (and b!7255490 (not c!1348973)) b!7255485))

(assert (= (and b!7255485 c!1348972) b!7255486))

(assert (= (and b!7255485 (not c!1348972)) b!7255494))

(assert (= (or b!7255493 b!7255486) bm!661142))

(assert (= (or b!7255493 b!7255486) bm!661143))

(assert (= (or b!7255491 bm!661142) bm!661140))

(assert (= (or b!7255491 bm!661143) bm!661145))

(assert (= (or b!7255487 bm!661145) bm!661144))

(assert (= (or b!7255487 b!7255491) bm!661141))

(declare-fun m!7936444 () Bool)

(assert (=> bm!661144 m!7936444))

(declare-fun m!7936446 () Bool)

(assert (=> bm!661141 m!7936446))

(declare-fun m!7936448 () Bool)

(assert (=> b!7255488 m!7936448))

(declare-fun m!7936450 () Bool)

(assert (=> bm!661140 m!7936450))

(assert (=> b!7255489 m!7935954))

(assert (=> bm!661063 d!2256305))

(declare-fun d!2256307 () Bool)

(declare-fun res!2942332 () Bool)

(declare-fun e!4350556 () Bool)

(assert (=> d!2256307 (=> res!2942332 e!4350556)))

(assert (=> d!2256307 (= res!2942332 (is-Nil!70438 lt!2586813))))

(assert (=> d!2256307 (= (noDuplicate!2998 lt!2586813) e!4350556)))

(declare-fun b!7255499 () Bool)

(declare-fun e!4350557 () Bool)

(assert (=> b!7255499 (= e!4350556 e!4350557)))

(declare-fun res!2942333 () Bool)

(assert (=> b!7255499 (=> (not res!2942333) (not e!4350557))))

(declare-fun contains!20748 (List!70562 Context!15200) Bool)

(assert (=> b!7255499 (= res!2942333 (not (contains!20748 (t!384624 lt!2586813) (h!76886 lt!2586813))))))

(declare-fun b!7255500 () Bool)

(assert (=> b!7255500 (= e!4350557 (noDuplicate!2998 (t!384624 lt!2586813)))))

(assert (= (and d!2256307 (not res!2942332)) b!7255499))

(assert (= (and b!7255499 res!2942333) b!7255500))

(declare-fun m!7936452 () Bool)

(assert (=> b!7255499 m!7936452))

(declare-fun m!7936454 () Bool)

(assert (=> b!7255500 m!7936454))

(assert (=> d!2256055 d!2256307))

(declare-fun d!2256309 () Bool)

(declare-fun e!4350565 () Bool)

(assert (=> d!2256309 e!4350565))

(declare-fun res!2942339 () Bool)

(assert (=> d!2256309 (=> (not res!2942339) (not e!4350565))))

(declare-fun res!2942338 () List!70562)

(assert (=> d!2256309 (= res!2942339 (noDuplicate!2998 res!2942338))))

(declare-fun e!4350564 () Bool)

(assert (=> d!2256309 e!4350564))

(assert (=> d!2256309 (= (choose!56084 lt!2586681) res!2942338)))

(declare-fun b!7255508 () Bool)

(declare-fun e!4350566 () Bool)

(declare-fun tp!2038086 () Bool)

(assert (=> b!7255508 (= e!4350566 tp!2038086)))

(declare-fun tp!2038085 () Bool)

(declare-fun b!7255507 () Bool)

(assert (=> b!7255507 (= e!4350564 (and (inv!89661 (h!76886 res!2942338)) e!4350566 tp!2038085))))

(declare-fun b!7255509 () Bool)

(assert (=> b!7255509 (= e!4350565 (= (content!14637 res!2942338) lt!2586681))))

(assert (= b!7255507 b!7255508))

(assert (= (and d!2256309 (is-Cons!70438 res!2942338)) b!7255507))

(assert (= (and d!2256309 res!2942339) b!7255509))

(declare-fun m!7936456 () Bool)

(assert (=> d!2256309 m!7936456))

(declare-fun m!7936458 () Bool)

(assert (=> b!7255507 m!7936458))

(declare-fun m!7936460 () Bool)

(assert (=> b!7255509 m!7936460))

(assert (=> d!2256055 d!2256309))

(declare-fun e!4350568 () Bool)

(declare-fun b!7255513 () Bool)

(declare-fun lt!2586861 () List!70560)

(assert (=> b!7255513 (= e!4350568 (or (not (= (exprs!8100 ct2!328) Nil!70436)) (= lt!2586861 (t!384622 (exprs!8100 ct1!232)))))))

(declare-fun d!2256311 () Bool)

(assert (=> d!2256311 e!4350568))

(declare-fun res!2942340 () Bool)

(assert (=> d!2256311 (=> (not res!2942340) (not e!4350568))))

(assert (=> d!2256311 (= res!2942340 (= (content!14636 lt!2586861) (set.union (content!14636 (t!384622 (exprs!8100 ct1!232))) (content!14636 (exprs!8100 ct2!328)))))))

(declare-fun e!4350567 () List!70560)

(assert (=> d!2256311 (= lt!2586861 e!4350567)))

(declare-fun c!1348976 () Bool)

(assert (=> d!2256311 (= c!1348976 (is-Nil!70436 (t!384622 (exprs!8100 ct1!232))))))

(assert (=> d!2256311 (= (++!16583 (t!384622 (exprs!8100 ct1!232)) (exprs!8100 ct2!328)) lt!2586861)))

(declare-fun b!7255512 () Bool)

(declare-fun res!2942341 () Bool)

(assert (=> b!7255512 (=> (not res!2942341) (not e!4350568))))

(assert (=> b!7255512 (= res!2942341 (= (size!41734 lt!2586861) (+ (size!41734 (t!384622 (exprs!8100 ct1!232))) (size!41734 (exprs!8100 ct2!328)))))))

(declare-fun b!7255510 () Bool)

(assert (=> b!7255510 (= e!4350567 (exprs!8100 ct2!328))))

(declare-fun b!7255511 () Bool)

(assert (=> b!7255511 (= e!4350567 (Cons!70436 (h!76884 (t!384622 (exprs!8100 ct1!232))) (++!16583 (t!384622 (t!384622 (exprs!8100 ct1!232))) (exprs!8100 ct2!328))))))

(assert (= (and d!2256311 c!1348976) b!7255510))

(assert (= (and d!2256311 (not c!1348976)) b!7255511))

(assert (= (and d!2256311 res!2942340) b!7255512))

(assert (= (and b!7255512 res!2942341) b!7255513))

(declare-fun m!7936462 () Bool)

(assert (=> d!2256311 m!7936462))

(assert (=> d!2256311 m!7936372))

(assert (=> d!2256311 m!7935862))

(declare-fun m!7936464 () Bool)

(assert (=> b!7255512 m!7936464))

(declare-fun m!7936466 () Bool)

(assert (=> b!7255512 m!7936466))

(assert (=> b!7255512 m!7935868))

(declare-fun m!7936468 () Bool)

(assert (=> b!7255511 m!7936468))

(assert (=> b!7255132 d!2256311))

(declare-fun d!2256313 () Bool)

(assert (=> d!2256313 (= (isEmpty!40564 s1!1971) (is-Nil!70437 s1!1971))))

(assert (=> d!2256061 d!2256313))

(declare-fun d!2256315 () Bool)

(declare-fun c!1348977 () Bool)

(assert (=> d!2256315 (= c!1348977 (isEmpty!40564 (tail!14346 s1!1971)))))

(declare-fun e!4350569 () Bool)

(assert (=> d!2256315 (= (matchZipper!3570 (derivationStepZipper!3438 lt!2586661 (head!14918 s1!1971)) (tail!14346 s1!1971)) e!4350569)))

(declare-fun b!7255514 () Bool)

(assert (=> b!7255514 (= e!4350569 (nullableZipper!2922 (derivationStepZipper!3438 lt!2586661 (head!14918 s1!1971))))))

(declare-fun b!7255515 () Bool)

(assert (=> b!7255515 (= e!4350569 (matchZipper!3570 (derivationStepZipper!3438 (derivationStepZipper!3438 lt!2586661 (head!14918 s1!1971)) (head!14918 (tail!14346 s1!1971))) (tail!14346 (tail!14346 s1!1971))))))

(assert (= (and d!2256315 c!1348977) b!7255514))

(assert (= (and d!2256315 (not c!1348977)) b!7255515))

(assert (=> d!2256315 m!7935914))

(declare-fun m!7936470 () Bool)

(assert (=> d!2256315 m!7936470))

(assert (=> b!7255514 m!7935912))

(declare-fun m!7936472 () Bool)

(assert (=> b!7255514 m!7936472))

(assert (=> b!7255515 m!7935914))

(declare-fun m!7936474 () Bool)

(assert (=> b!7255515 m!7936474))

(assert (=> b!7255515 m!7935912))

(assert (=> b!7255515 m!7936474))

(declare-fun m!7936476 () Bool)

(assert (=> b!7255515 m!7936476))

(assert (=> b!7255515 m!7935914))

(declare-fun m!7936478 () Bool)

(assert (=> b!7255515 m!7936478))

(assert (=> b!7255515 m!7936476))

(assert (=> b!7255515 m!7936478))

(declare-fun m!7936480 () Bool)

(assert (=> b!7255515 m!7936480))

(assert (=> b!7255128 d!2256315))

(declare-fun bs!1907525 () Bool)

(declare-fun d!2256317 () Bool)

(assert (= bs!1907525 (and d!2256317 d!2256275)))

(declare-fun lambda!445018 () Int)

(assert (=> bs!1907525 (= (= (head!14918 s1!1971) (head!14918 (t!384623 s1!1971))) (= lambda!445018 lambda!445014))))

(declare-fun bs!1907526 () Bool)

(assert (= bs!1907526 (and d!2256317 d!2256225)))

(assert (=> bs!1907526 (= (= (head!14918 s1!1971) (head!14918 lt!2586673)) (= lambda!445018 lambda!445010))))

(declare-fun bs!1907527 () Bool)

(assert (= bs!1907527 (and d!2256317 b!7254985)))

(assert (=> bs!1907527 (= (= (head!14918 s1!1971) (h!76885 s1!1971)) (= lambda!445018 lambda!444937))))

(declare-fun bs!1907528 () Bool)

(assert (= bs!1907528 (and d!2256317 d!2256067)))

(assert (=> bs!1907528 (= (= (head!14918 s1!1971) (h!76885 s1!1971)) (= lambda!445018 lambda!444984))))

(declare-fun bs!1907529 () Bool)

(assert (= bs!1907529 (and d!2256317 d!2256059)))

(assert (=> bs!1907529 (= (= (head!14918 s1!1971) (h!76885 s1!1971)) (= lambda!445018 lambda!444981))))

(declare-fun bs!1907530 () Bool)

(assert (= bs!1907530 (and d!2256317 d!2256267)))

(assert (=> bs!1907530 (= (= (head!14918 s1!1971) (head!14918 (t!384623 s1!1971))) (= lambda!445018 lambda!445013))))

(assert (=> d!2256317 true))

(assert (=> d!2256317 (= (derivationStepZipper!3438 lt!2586661 (head!14918 s1!1971)) (flatMap!2825 lt!2586661 lambda!445018))))

(declare-fun bs!1907531 () Bool)

(assert (= bs!1907531 d!2256317))

(declare-fun m!7936482 () Bool)

(assert (=> bs!1907531 m!7936482))

(assert (=> b!7255128 d!2256317))

(declare-fun d!2256319 () Bool)

(assert (=> d!2256319 (= (head!14918 s1!1971) (h!76885 s1!1971))))

(assert (=> b!7255128 d!2256319))

(declare-fun d!2256321 () Bool)

(assert (=> d!2256321 (= (tail!14346 s1!1971) (t!384623 s1!1971))))

(assert (=> b!7255128 d!2256321))

(declare-fun d!2256323 () Bool)

(declare-fun res!2942342 () Bool)

(declare-fun e!4350570 () Bool)

(assert (=> d!2256323 (=> res!2942342 e!4350570)))

(assert (=> d!2256323 (= res!2942342 (is-Nil!70436 (++!16583 (exprs!8100 ct1!232) (exprs!8100 ct2!328))))))

(assert (=> d!2256323 (= (forall!17510 (++!16583 (exprs!8100 ct1!232) (exprs!8100 ct2!328)) lambda!444935) e!4350570)))

(declare-fun b!7255516 () Bool)

(declare-fun e!4350571 () Bool)

(assert (=> b!7255516 (= e!4350570 e!4350571)))

(declare-fun res!2942343 () Bool)

(assert (=> b!7255516 (=> (not res!2942343) (not e!4350571))))

(assert (=> b!7255516 (= res!2942343 (dynLambda!28779 lambda!444935 (h!76884 (++!16583 (exprs!8100 ct1!232) (exprs!8100 ct2!328)))))))

(declare-fun b!7255517 () Bool)

(assert (=> b!7255517 (= e!4350571 (forall!17510 (t!384622 (++!16583 (exprs!8100 ct1!232) (exprs!8100 ct2!328))) lambda!444935))))

(assert (= (and d!2256323 (not res!2942342)) b!7255516))

(assert (= (and b!7255516 res!2942343) b!7255517))

(declare-fun b_lambda!278927 () Bool)

(assert (=> (not b_lambda!278927) (not b!7255516)))

(declare-fun m!7936484 () Bool)

(assert (=> b!7255516 m!7936484))

(declare-fun m!7936486 () Bool)

(assert (=> b!7255517 m!7936486))

(assert (=> d!2256031 d!2256323))

(assert (=> d!2256031 d!2256071))

(declare-fun d!2256325 () Bool)

(assert (=> d!2256325 (forall!17510 (++!16583 (exprs!8100 ct1!232) (exprs!8100 ct2!328)) lambda!444935)))

(assert (=> d!2256325 true))

(declare-fun _$78!793 () Unit!163911)

(assert (=> d!2256325 (= (choose!56080 (exprs!8100 ct1!232) (exprs!8100 ct2!328) lambda!444935) _$78!793)))

(declare-fun bs!1907532 () Bool)

(assert (= bs!1907532 d!2256325))

(assert (=> bs!1907532 m!7935610))

(assert (=> bs!1907532 m!7935610))

(assert (=> bs!1907532 m!7935798))

(assert (=> d!2256031 d!2256325))

(declare-fun d!2256327 () Bool)

(declare-fun res!2942344 () Bool)

(declare-fun e!4350572 () Bool)

(assert (=> d!2256327 (=> res!2942344 e!4350572)))

(assert (=> d!2256327 (= res!2942344 (is-Nil!70436 (exprs!8100 ct1!232)))))

(assert (=> d!2256327 (= (forall!17510 (exprs!8100 ct1!232) lambda!444935) e!4350572)))

(declare-fun b!7255518 () Bool)

(declare-fun e!4350573 () Bool)

(assert (=> b!7255518 (= e!4350572 e!4350573)))

(declare-fun res!2942345 () Bool)

(assert (=> b!7255518 (=> (not res!2942345) (not e!4350573))))

(assert (=> b!7255518 (= res!2942345 (dynLambda!28779 lambda!444935 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun b!7255519 () Bool)

(assert (=> b!7255519 (= e!4350573 (forall!17510 (t!384622 (exprs!8100 ct1!232)) lambda!444935))))

(assert (= (and d!2256327 (not res!2942344)) b!7255518))

(assert (= (and b!7255518 res!2942345) b!7255519))

(declare-fun b_lambda!278929 () Bool)

(assert (=> (not b_lambda!278929) (not b!7255518)))

(declare-fun m!7936488 () Bool)

(assert (=> b!7255518 m!7936488))

(declare-fun m!7936490 () Bool)

(assert (=> b!7255519 m!7936490))

(assert (=> d!2256031 d!2256327))

(assert (=> b!7255102 d!2256079))

(declare-fun d!2256329 () Bool)

(assert (=> d!2256329 (= (isEmpty!40564 (t!384623 s1!1971)) (is-Nil!70437 (t!384623 s1!1971)))))

(assert (=> d!2256057 d!2256329))

(declare-fun d!2256331 () Bool)

(declare-fun c!1348978 () Bool)

(assert (=> d!2256331 (= c!1348978 (isEmpty!40564 (tail!14346 s2!1849)))))

(declare-fun e!4350574 () Bool)

(assert (=> d!2256331 (= (matchZipper!3570 (derivationStepZipper!3438 (set.insert ct2!328 (as set.empty (Set Context!15200))) (head!14918 s2!1849)) (tail!14346 s2!1849)) e!4350574)))

(declare-fun b!7255520 () Bool)

(assert (=> b!7255520 (= e!4350574 (nullableZipper!2922 (derivationStepZipper!3438 (set.insert ct2!328 (as set.empty (Set Context!15200))) (head!14918 s2!1849))))))

(declare-fun b!7255521 () Bool)

(assert (=> b!7255521 (= e!4350574 (matchZipper!3570 (derivationStepZipper!3438 (derivationStepZipper!3438 (set.insert ct2!328 (as set.empty (Set Context!15200))) (head!14918 s2!1849)) (head!14918 (tail!14346 s2!1849))) (tail!14346 (tail!14346 s2!1849))))))

(assert (= (and d!2256331 c!1348978) b!7255520))

(assert (= (and d!2256331 (not c!1348978)) b!7255521))

(assert (=> d!2256331 m!7935788))

(declare-fun m!7936492 () Bool)

(assert (=> d!2256331 m!7936492))

(assert (=> b!7255520 m!7935786))

(declare-fun m!7936494 () Bool)

(assert (=> b!7255520 m!7936494))

(assert (=> b!7255521 m!7935788))

(declare-fun m!7936496 () Bool)

(assert (=> b!7255521 m!7936496))

(assert (=> b!7255521 m!7935786))

(assert (=> b!7255521 m!7936496))

(declare-fun m!7936498 () Bool)

(assert (=> b!7255521 m!7936498))

(assert (=> b!7255521 m!7935788))

(declare-fun m!7936500 () Bool)

(assert (=> b!7255521 m!7936500))

(assert (=> b!7255521 m!7936498))

(assert (=> b!7255521 m!7936500))

(declare-fun m!7936502 () Bool)

(assert (=> b!7255521 m!7936502))

(assert (=> b!7255068 d!2256331))

(declare-fun bs!1907533 () Bool)

(declare-fun d!2256333 () Bool)

(assert (= bs!1907533 (and d!2256333 d!2256275)))

(declare-fun lambda!445019 () Int)

(assert (=> bs!1907533 (= (= (head!14918 s2!1849) (head!14918 (t!384623 s1!1971))) (= lambda!445019 lambda!445014))))

(declare-fun bs!1907534 () Bool)

(assert (= bs!1907534 (and d!2256333 d!2256317)))

(assert (=> bs!1907534 (= (= (head!14918 s2!1849) (head!14918 s1!1971)) (= lambda!445019 lambda!445018))))

(declare-fun bs!1907535 () Bool)

(assert (= bs!1907535 (and d!2256333 d!2256225)))

(assert (=> bs!1907535 (= (= (head!14918 s2!1849) (head!14918 lt!2586673)) (= lambda!445019 lambda!445010))))

(declare-fun bs!1907536 () Bool)

(assert (= bs!1907536 (and d!2256333 b!7254985)))

(assert (=> bs!1907536 (= (= (head!14918 s2!1849) (h!76885 s1!1971)) (= lambda!445019 lambda!444937))))

(declare-fun bs!1907537 () Bool)

(assert (= bs!1907537 (and d!2256333 d!2256067)))

(assert (=> bs!1907537 (= (= (head!14918 s2!1849) (h!76885 s1!1971)) (= lambda!445019 lambda!444984))))

(declare-fun bs!1907538 () Bool)

(assert (= bs!1907538 (and d!2256333 d!2256059)))

(assert (=> bs!1907538 (= (= (head!14918 s2!1849) (h!76885 s1!1971)) (= lambda!445019 lambda!444981))))

(declare-fun bs!1907539 () Bool)

(assert (= bs!1907539 (and d!2256333 d!2256267)))

(assert (=> bs!1907539 (= (= (head!14918 s2!1849) (head!14918 (t!384623 s1!1971))) (= lambda!445019 lambda!445013))))

(assert (=> d!2256333 true))

(assert (=> d!2256333 (= (derivationStepZipper!3438 (set.insert ct2!328 (as set.empty (Set Context!15200))) (head!14918 s2!1849)) (flatMap!2825 (set.insert ct2!328 (as set.empty (Set Context!15200))) lambda!445019))))

(declare-fun bs!1907540 () Bool)

(assert (= bs!1907540 d!2256333))

(assert (=> bs!1907540 m!7935662))

(declare-fun m!7936504 () Bool)

(assert (=> bs!1907540 m!7936504))

(assert (=> b!7255068 d!2256333))

(declare-fun d!2256335 () Bool)

(assert (=> d!2256335 (= (head!14918 s2!1849) (h!76885 s2!1849))))

(assert (=> b!7255068 d!2256335))

(declare-fun d!2256337 () Bool)

(assert (=> d!2256337 (= (tail!14346 s2!1849) (t!384623 s2!1849))))

(assert (=> b!7255068 d!2256337))

(declare-fun d!2256339 () Bool)

(declare-fun c!1348979 () Bool)

(assert (=> d!2256339 (= c!1348979 (isEmpty!40564 (t!384623 s1!1971)))))

(declare-fun e!4350575 () Bool)

(assert (=> d!2256339 (= (matchZipper!3570 (set.insert lt!2586795 (as set.empty (Set Context!15200))) (t!384623 s1!1971)) e!4350575)))

(declare-fun b!7255522 () Bool)

(assert (=> b!7255522 (= e!4350575 (nullableZipper!2922 (set.insert lt!2586795 (as set.empty (Set Context!15200)))))))

(declare-fun b!7255523 () Bool)

(assert (=> b!7255523 (= e!4350575 (matchZipper!3570 (derivationStepZipper!3438 (set.insert lt!2586795 (as set.empty (Set Context!15200))) (head!14918 (t!384623 s1!1971))) (tail!14346 (t!384623 s1!1971))))))

(assert (= (and d!2256339 c!1348979) b!7255522))

(assert (= (and d!2256339 (not c!1348979)) b!7255523))

(assert (=> d!2256339 m!7935892))

(assert (=> b!7255522 m!7936022))

(declare-fun m!7936506 () Bool)

(assert (=> b!7255522 m!7936506))

(assert (=> b!7255523 m!7935896))

(assert (=> b!7255523 m!7936022))

(assert (=> b!7255523 m!7935896))

(declare-fun m!7936508 () Bool)

(assert (=> b!7255523 m!7936508))

(assert (=> b!7255523 m!7935900))

(assert (=> b!7255523 m!7936508))

(assert (=> b!7255523 m!7935900))

(declare-fun m!7936510 () Bool)

(assert (=> b!7255523 m!7936510))

(assert (=> bs!1907409 d!2256339))

(declare-fun d!2256341 () Bool)

(declare-fun lt!2586864 () Int)

(assert (=> d!2256341 (>= lt!2586864 0)))

(declare-fun e!4350578 () Int)

(assert (=> d!2256341 (= lt!2586864 e!4350578)))

(declare-fun c!1348982 () Bool)

(assert (=> d!2256341 (= c!1348982 (is-Nil!70436 lt!2586804))))

(assert (=> d!2256341 (= (size!41734 lt!2586804) lt!2586864)))

(declare-fun b!7255528 () Bool)

(assert (=> b!7255528 (= e!4350578 0)))

(declare-fun b!7255529 () Bool)

(assert (=> b!7255529 (= e!4350578 (+ 1 (size!41734 (t!384622 lt!2586804))))))

(assert (= (and d!2256341 c!1348982) b!7255528))

(assert (= (and d!2256341 (not c!1348982)) b!7255529))

(declare-fun m!7936512 () Bool)

(assert (=> b!7255529 m!7936512))

(assert (=> b!7255116 d!2256341))

(declare-fun d!2256343 () Bool)

(declare-fun lt!2586865 () Int)

(assert (=> d!2256343 (>= lt!2586865 0)))

(declare-fun e!4350579 () Int)

(assert (=> d!2256343 (= lt!2586865 e!4350579)))

(declare-fun c!1348983 () Bool)

(assert (=> d!2256343 (= c!1348983 (is-Nil!70436 (exprs!8100 lt!2586664)))))

(assert (=> d!2256343 (= (size!41734 (exprs!8100 lt!2586664)) lt!2586865)))

(declare-fun b!7255530 () Bool)

(assert (=> b!7255530 (= e!4350579 0)))

(declare-fun b!7255531 () Bool)

(assert (=> b!7255531 (= e!4350579 (+ 1 (size!41734 (t!384622 (exprs!8100 lt!2586664)))))))

(assert (= (and d!2256343 c!1348983) b!7255530))

(assert (= (and d!2256343 (not c!1348983)) b!7255531))

(declare-fun m!7936514 () Bool)

(assert (=> b!7255531 m!7936514))

(assert (=> b!7255116 d!2256343))

(declare-fun d!2256345 () Bool)

(declare-fun lt!2586866 () Int)

(assert (=> d!2256345 (>= lt!2586866 0)))

(declare-fun e!4350580 () Int)

(assert (=> d!2256345 (= lt!2586866 e!4350580)))

(declare-fun c!1348984 () Bool)

(assert (=> d!2256345 (= c!1348984 (is-Nil!70436 (exprs!8100 ct2!328)))))

(assert (=> d!2256345 (= (size!41734 (exprs!8100 ct2!328)) lt!2586866)))

(declare-fun b!7255532 () Bool)

(assert (=> b!7255532 (= e!4350580 0)))

(declare-fun b!7255533 () Bool)

(assert (=> b!7255533 (= e!4350580 (+ 1 (size!41734 (t!384622 (exprs!8100 ct2!328)))))))

(assert (= (and d!2256345 c!1348984) b!7255532))

(assert (= (and d!2256345 (not c!1348984)) b!7255533))

(declare-fun m!7936516 () Bool)

(assert (=> b!7255533 m!7936516))

(assert (=> b!7255116 d!2256345))

(declare-fun b!7255534 () Bool)

(declare-fun c!1348988 () Bool)

(declare-fun e!4350586 () Bool)

(assert (=> b!7255534 (= c!1348988 e!4350586)))

(declare-fun res!2942346 () Bool)

(assert (=> b!7255534 (=> (not res!2942346) (not e!4350586))))

(assert (=> b!7255534 (= res!2942346 (is-Concat!27505 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))))))

(declare-fun e!4350582 () (Set Context!15200))

(declare-fun e!4350583 () (Set Context!15200))

(assert (=> b!7255534 (= e!4350582 e!4350583)))

(declare-fun b!7255535 () Bool)

(declare-fun c!1348986 () Bool)

(assert (=> b!7255535 (= c!1348986 (is-Star!18660 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))))))

(declare-fun e!4350581 () (Set Context!15200))

(declare-fun e!4350585 () (Set Context!15200))

(assert (=> b!7255535 (= e!4350581 e!4350585)))

(declare-fun c!1348987 () Bool)

(declare-fun bm!661146 () Bool)

(declare-fun call!661151 () List!70560)

(assert (=> bm!661146 (= call!661151 ($colon$colon!2926 (exprs!8100 (ite (or c!1348854 c!1348857) lt!2586678 (Context!15201 call!661083))) (ite (or c!1348988 c!1348987) (regTwo!37832 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232)))))))))))

(declare-fun b!7255536 () Bool)

(declare-fun call!661156 () (Set Context!15200))

(assert (=> b!7255536 (= e!4350585 call!661156)))

(declare-fun e!4350584 () (Set Context!15200))

(declare-fun b!7255538 () Bool)

(assert (=> b!7255538 (= e!4350584 (set.insert (ite (or c!1348854 c!1348857) lt!2586678 (Context!15201 call!661083)) (as set.empty (Set Context!15200))))))

(declare-fun call!661155 () (Set Context!15200))

(declare-fun c!1348985 () Bool)

(declare-fun bm!661147 () Bool)

(assert (=> bm!661147 (= call!661155 (derivationStepZipperDown!2654 (ite c!1348985 (regOne!37833 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (regOne!37832 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232)))))))) (ite c!1348985 (ite (or c!1348854 c!1348857) lt!2586678 (Context!15201 call!661083)) (Context!15201 call!661151)) (h!76885 s1!1971)))))

(declare-fun b!7255539 () Bool)

(assert (=> b!7255539 (= e!4350586 (nullable!7920 (regOne!37832 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232)))))))))))

(declare-fun b!7255540 () Bool)

(assert (=> b!7255540 (= e!4350583 e!4350581)))

(assert (=> b!7255540 (= c!1348987 (is-Concat!27505 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))))))

(declare-fun b!7255541 () Bool)

(declare-fun call!661152 () (Set Context!15200))

(assert (=> b!7255541 (= e!4350583 (set.union call!661155 call!661152))))

(declare-fun c!1348989 () Bool)

(declare-fun d!2256347 () Bool)

(assert (=> d!2256347 (= c!1348989 (and (is-ElementMatch!18660 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (= (c!1348806 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (h!76885 s1!1971))))))

(assert (=> d!2256347 (= (derivationStepZipperDown!2654 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232)))))) (ite (or c!1348854 c!1348857) lt!2586678 (Context!15201 call!661083)) (h!76885 s1!1971)) e!4350584)))

(declare-fun b!7255537 () Bool)

(declare-fun call!661154 () (Set Context!15200))

(assert (=> b!7255537 (= e!4350582 (set.union call!661155 call!661154))))

(declare-fun bm!661148 () Bool)

(declare-fun call!661153 () List!70560)

(assert (=> bm!661148 (= call!661153 call!661151)))

(declare-fun bm!661149 () Bool)

(assert (=> bm!661149 (= call!661156 call!661152)))

(declare-fun b!7255542 () Bool)

(assert (=> b!7255542 (= e!4350584 e!4350582)))

(assert (=> b!7255542 (= c!1348985 (is-Union!18660 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))))))

(declare-fun bm!661150 () Bool)

(assert (=> bm!661150 (= call!661154 (derivationStepZipperDown!2654 (ite c!1348985 (regTwo!37833 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (ite c!1348988 (regTwo!37832 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (ite c!1348987 (regOne!37832 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (reg!18989 (ite c!1348854 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348857 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348856 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232)))))))))) (ite (or c!1348985 c!1348988) (ite (or c!1348854 c!1348857) lt!2586678 (Context!15201 call!661083)) (Context!15201 call!661153)) (h!76885 s1!1971)))))

(declare-fun b!7255543 () Bool)

(assert (=> b!7255543 (= e!4350581 call!661156)))

(declare-fun b!7255544 () Bool)

(assert (=> b!7255544 (= e!4350585 (as set.empty (Set Context!15200)))))

(declare-fun bm!661151 () Bool)

(assert (=> bm!661151 (= call!661152 call!661154)))

(assert (= (and d!2256347 c!1348989) b!7255538))

(assert (= (and d!2256347 (not c!1348989)) b!7255542))

(assert (= (and b!7255542 c!1348985) b!7255537))

(assert (= (and b!7255542 (not c!1348985)) b!7255534))

(assert (= (and b!7255534 res!2942346) b!7255539))

(assert (= (and b!7255534 c!1348988) b!7255541))

(assert (= (and b!7255534 (not c!1348988)) b!7255540))

(assert (= (and b!7255540 c!1348987) b!7255543))

(assert (= (and b!7255540 (not c!1348987)) b!7255535))

(assert (= (and b!7255535 c!1348986) b!7255536))

(assert (= (and b!7255535 (not c!1348986)) b!7255544))

(assert (= (or b!7255543 b!7255536) bm!661148))

(assert (= (or b!7255543 b!7255536) bm!661149))

(assert (= (or b!7255541 bm!661148) bm!661146))

(assert (= (or b!7255541 bm!661149) bm!661151))

(assert (= (or b!7255537 bm!661151) bm!661150))

(assert (= (or b!7255537 b!7255541) bm!661147))

(declare-fun m!7936518 () Bool)

(assert (=> bm!661150 m!7936518))

(declare-fun m!7936520 () Bool)

(assert (=> bm!661147 m!7936520))

(declare-fun m!7936522 () Bool)

(assert (=> b!7255538 m!7936522))

(declare-fun m!7936524 () Bool)

(assert (=> bm!661146 m!7936524))

(declare-fun m!7936526 () Bool)

(assert (=> b!7255539 m!7936526))

(assert (=> bm!661080 d!2256347))

(assert (=> d!2256105 d!2256329))

(declare-fun d!2256349 () Bool)

(declare-fun c!1348990 () Bool)

(assert (=> d!2256349 (= c!1348990 (isEmpty!40564 (++!16582 (t!384623 s1!1971) s2!1849)))))

(declare-fun e!4350587 () Bool)

(assert (=> d!2256349 (= (matchZipper!3570 (set.insert (Context!15201 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328))) (as set.empty (Set Context!15200))) (++!16582 (t!384623 s1!1971) s2!1849)) e!4350587)))

(declare-fun b!7255545 () Bool)

(assert (=> b!7255545 (= e!4350587 (nullableZipper!2922 (set.insert (Context!15201 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328))) (as set.empty (Set Context!15200)))))))

(declare-fun b!7255546 () Bool)

(assert (=> b!7255546 (= e!4350587 (matchZipper!3570 (derivationStepZipper!3438 (set.insert (Context!15201 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328))) (as set.empty (Set Context!15200))) (head!14918 (++!16582 (t!384623 s1!1971) s2!1849))) (tail!14346 (++!16582 (t!384623 s1!1971) s2!1849))))))

(assert (= (and d!2256349 c!1348990) b!7255545))

(assert (= (and d!2256349 (not c!1348990)) b!7255546))

(assert (=> d!2256349 m!7935678))

(declare-fun m!7936528 () Bool)

(assert (=> d!2256349 m!7936528))

(assert (=> b!7255545 m!7935846))

(declare-fun m!7936530 () Bool)

(assert (=> b!7255545 m!7936530))

(assert (=> b!7255546 m!7935678))

(declare-fun m!7936532 () Bool)

(assert (=> b!7255546 m!7936532))

(assert (=> b!7255546 m!7935846))

(assert (=> b!7255546 m!7936532))

(declare-fun m!7936534 () Bool)

(assert (=> b!7255546 m!7936534))

(assert (=> b!7255546 m!7935678))

(declare-fun m!7936536 () Bool)

(assert (=> b!7255546 m!7936536))

(assert (=> b!7255546 m!7936534))

(assert (=> b!7255546 m!7936536))

(declare-fun m!7936538 () Bool)

(assert (=> b!7255546 m!7936538))

(assert (=> d!2256043 d!2256349))

(declare-fun d!2256351 () Bool)

(declare-fun c!1348991 () Bool)

(assert (=> d!2256351 (= c!1348991 (isEmpty!40564 (t!384623 s1!1971)))))

(declare-fun e!4350588 () Bool)

(assert (=> d!2256351 (= (matchZipper!3570 (set.insert lt!2586664 (as set.empty (Set Context!15200))) (t!384623 s1!1971)) e!4350588)))

(declare-fun b!7255547 () Bool)

(assert (=> b!7255547 (= e!4350588 (nullableZipper!2922 (set.insert lt!2586664 (as set.empty (Set Context!15200)))))))

(declare-fun b!7255548 () Bool)

(assert (=> b!7255548 (= e!4350588 (matchZipper!3570 (derivationStepZipper!3438 (set.insert lt!2586664 (as set.empty (Set Context!15200))) (head!14918 (t!384623 s1!1971))) (tail!14346 (t!384623 s1!1971))))))

(assert (= (and d!2256351 c!1348991) b!7255547))

(assert (= (and d!2256351 (not c!1348991)) b!7255548))

(assert (=> d!2256351 m!7935892))

(assert (=> b!7255547 m!7935842))

(declare-fun m!7936540 () Bool)

(assert (=> b!7255547 m!7936540))

(assert (=> b!7255548 m!7935896))

(assert (=> b!7255548 m!7935842))

(assert (=> b!7255548 m!7935896))

(declare-fun m!7936542 () Bool)

(assert (=> b!7255548 m!7936542))

(assert (=> b!7255548 m!7935900))

(assert (=> b!7255548 m!7936542))

(assert (=> b!7255548 m!7935900))

(declare-fun m!7936544 () Bool)

(assert (=> b!7255548 m!7936544))

(assert (=> d!2256043 d!2256351))

(assert (=> d!2256043 d!2256037))

(assert (=> d!2256043 d!2256047))

(declare-fun d!2256353 () Bool)

(assert (=> d!2256353 (forall!17510 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328)) lambda!444972)))

(declare-fun lt!2586867 () Unit!163911)

(assert (=> d!2256353 (= lt!2586867 (choose!56080 (exprs!8100 lt!2586664) (exprs!8100 ct2!328) lambda!444972))))

(assert (=> d!2256353 (forall!17510 (exprs!8100 lt!2586664) lambda!444972)))

(assert (=> d!2256353 (= (lemmaConcatPreservesForall!1467 (exprs!8100 lt!2586664) (exprs!8100 ct2!328) lambda!444972) lt!2586867)))

(declare-fun bs!1907541 () Bool)

(assert (= bs!1907541 d!2256353))

(assert (=> bs!1907541 m!7935672))

(assert (=> bs!1907541 m!7935672))

(declare-fun m!7936546 () Bool)

(assert (=> bs!1907541 m!7936546))

(declare-fun m!7936548 () Bool)

(assert (=> bs!1907541 m!7936548))

(declare-fun m!7936550 () Bool)

(assert (=> bs!1907541 m!7936550))

(assert (=> d!2256043 d!2256353))

(declare-fun bs!1907542 () Bool)

(declare-fun d!2256355 () Bool)

(assert (= bs!1907542 (and d!2256355 d!2256043)))

(declare-fun lambda!445022 () Int)

(assert (=> bs!1907542 (= lambda!445022 lambda!444972)))

(declare-fun bs!1907543 () Bool)

(assert (= bs!1907543 (and d!2256355 d!2256025)))

(assert (=> bs!1907543 (= lambda!445022 lambda!444969)))

(declare-fun bs!1907544 () Bool)

(assert (= bs!1907544 (and d!2256355 b!7254995)))

(assert (=> bs!1907544 (= lambda!445022 lambda!444935)))

(declare-fun bs!1907545 () Bool)

(assert (= bs!1907545 (and d!2256355 d!2256065)))

(assert (=> bs!1907545 (= lambda!445022 lambda!444983)))

(declare-fun bs!1907546 () Bool)

(assert (= bs!1907546 (and d!2256355 d!2256063)))

(assert (=> bs!1907546 (= lambda!445022 lambda!444982)))

(assert (=> d!2256355 (matchZipper!3570 (set.insert (Context!15201 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328))) (as set.empty (Set Context!15200))) (++!16582 (t!384623 s1!1971) s2!1849))))

(declare-fun lt!2586870 () Unit!163911)

(assert (=> d!2256355 (= lt!2586870 (lemmaConcatPreservesForall!1467 (exprs!8100 lt!2586664) (exprs!8100 ct2!328) lambda!445022))))

(assert (=> d!2256355 true))

(declare-fun _$56!530 () Unit!163911)

(assert (=> d!2256355 (= (choose!56081 lt!2586664 ct2!328 (t!384623 s1!1971) s2!1849) _$56!530)))

(declare-fun bs!1907547 () Bool)

(assert (= bs!1907547 d!2256355))

(assert (=> bs!1907547 m!7935672))

(assert (=> bs!1907547 m!7935678))

(assert (=> bs!1907547 m!7935846))

(assert (=> bs!1907547 m!7935846))

(assert (=> bs!1907547 m!7935678))

(assert (=> bs!1907547 m!7935850))

(declare-fun m!7936552 () Bool)

(assert (=> bs!1907547 m!7936552))

(assert (=> d!2256043 d!2256355))

(declare-fun b!7255549 () Bool)

(declare-fun c!1348995 () Bool)

(declare-fun e!4350594 () Bool)

(assert (=> b!7255549 (= c!1348995 e!4350594)))

(declare-fun res!2942347 () Bool)

(assert (=> b!7255549 (=> (not res!2942347) (not e!4350594))))

(assert (=> b!7255549 (= res!2942347 (is-Concat!27505 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))))))

(declare-fun e!4350590 () (Set Context!15200))

(declare-fun e!4350591 () (Set Context!15200))

(assert (=> b!7255549 (= e!4350590 e!4350591)))

(declare-fun b!7255550 () Bool)

(declare-fun c!1348993 () Bool)

(assert (=> b!7255550 (= c!1348993 (is-Star!18660 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))))))

(declare-fun e!4350589 () (Set Context!15200))

(declare-fun e!4350593 () (Set Context!15200))

(assert (=> b!7255550 (= e!4350589 e!4350593)))

(declare-fun call!661157 () List!70560)

(declare-fun bm!661152 () Bool)

(declare-fun c!1348994 () Bool)

(assert (=> bm!661152 (= call!661157 ($colon$colon!2926 (exprs!8100 (ite c!1348854 lt!2586678 (Context!15201 call!661081))) (ite (or c!1348995 c!1348994) (regTwo!37832 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232)))))))))

(declare-fun b!7255551 () Bool)

(declare-fun call!661162 () (Set Context!15200))

(assert (=> b!7255551 (= e!4350593 call!661162)))

(declare-fun b!7255553 () Bool)

(declare-fun e!4350592 () (Set Context!15200))

(assert (=> b!7255553 (= e!4350592 (set.insert (ite c!1348854 lt!2586678 (Context!15201 call!661081)) (as set.empty (Set Context!15200))))))

(declare-fun bm!661153 () Bool)

(declare-fun call!661161 () (Set Context!15200))

(declare-fun c!1348992 () Bool)

(assert (=> bm!661153 (= call!661161 (derivationStepZipperDown!2654 (ite c!1348992 (regOne!37833 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (regOne!37832 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232)))))) (ite c!1348992 (ite c!1348854 lt!2586678 (Context!15201 call!661081)) (Context!15201 call!661157)) (h!76885 s1!1971)))))

(declare-fun b!7255554 () Bool)

(assert (=> b!7255554 (= e!4350594 (nullable!7920 (regOne!37832 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232)))))))))

(declare-fun b!7255555 () Bool)

(assert (=> b!7255555 (= e!4350591 e!4350589)))

(assert (=> b!7255555 (= c!1348994 (is-Concat!27505 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))))))

(declare-fun b!7255556 () Bool)

(declare-fun call!661158 () (Set Context!15200))

(assert (=> b!7255556 (= e!4350591 (set.union call!661161 call!661158))))

(declare-fun c!1348996 () Bool)

(declare-fun d!2256357 () Bool)

(assert (=> d!2256357 (= c!1348996 (and (is-ElementMatch!18660 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (= (c!1348806 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (h!76885 s1!1971))))))

(assert (=> d!2256357 (= (derivationStepZipperDown!2654 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232)))) (ite c!1348854 lt!2586678 (Context!15201 call!661081)) (h!76885 s1!1971)) e!4350592)))

(declare-fun b!7255552 () Bool)

(declare-fun call!661160 () (Set Context!15200))

(assert (=> b!7255552 (= e!4350590 (set.union call!661161 call!661160))))

(declare-fun bm!661154 () Bool)

(declare-fun call!661159 () List!70560)

(assert (=> bm!661154 (= call!661159 call!661157)))

(declare-fun bm!661155 () Bool)

(assert (=> bm!661155 (= call!661162 call!661158)))

(declare-fun b!7255557 () Bool)

(assert (=> b!7255557 (= e!4350592 e!4350590)))

(assert (=> b!7255557 (= c!1348992 (is-Union!18660 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))))))

(declare-fun bm!661156 () Bool)

(assert (=> bm!661156 (= call!661160 (derivationStepZipperDown!2654 (ite c!1348992 (regTwo!37833 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (ite c!1348995 (regTwo!37832 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (ite c!1348994 (regOne!37832 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232))))) (reg!18989 (ite c!1348854 (regOne!37833 (h!76884 (exprs!8100 ct1!232))) (regOne!37832 (h!76884 (exprs!8100 ct1!232)))))))) (ite (or c!1348992 c!1348995) (ite c!1348854 lt!2586678 (Context!15201 call!661081)) (Context!15201 call!661159)) (h!76885 s1!1971)))))

(declare-fun b!7255558 () Bool)

(assert (=> b!7255558 (= e!4350589 call!661162)))

(declare-fun b!7255559 () Bool)

(assert (=> b!7255559 (= e!4350593 (as set.empty (Set Context!15200)))))

(declare-fun bm!661157 () Bool)

(assert (=> bm!661157 (= call!661158 call!661160)))

(assert (= (and d!2256357 c!1348996) b!7255553))

(assert (= (and d!2256357 (not c!1348996)) b!7255557))

(assert (= (and b!7255557 c!1348992) b!7255552))

(assert (= (and b!7255557 (not c!1348992)) b!7255549))

(assert (= (and b!7255549 res!2942347) b!7255554))

(assert (= (and b!7255549 c!1348995) b!7255556))

(assert (= (and b!7255549 (not c!1348995)) b!7255555))

(assert (= (and b!7255555 c!1348994) b!7255558))

(assert (= (and b!7255555 (not c!1348994)) b!7255550))

(assert (= (and b!7255550 c!1348993) b!7255551))

(assert (= (and b!7255550 (not c!1348993)) b!7255559))

(assert (= (or b!7255558 b!7255551) bm!661154))

(assert (= (or b!7255558 b!7255551) bm!661155))

(assert (= (or b!7255556 bm!661154) bm!661152))

(assert (= (or b!7255556 bm!661155) bm!661157))

(assert (= (or b!7255552 bm!661157) bm!661156))

(assert (= (or b!7255552 b!7255556) bm!661153))

(declare-fun m!7936554 () Bool)

(assert (=> bm!661156 m!7936554))

(declare-fun m!7936556 () Bool)

(assert (=> bm!661153 m!7936556))

(declare-fun m!7936558 () Bool)

(assert (=> b!7255553 m!7936558))

(declare-fun m!7936560 () Bool)

(assert (=> bm!661152 m!7936560))

(declare-fun m!7936562 () Bool)

(assert (=> b!7255554 m!7936562))

(assert (=> bm!661077 d!2256357))

(declare-fun b!7255560 () Bool)

(declare-fun c!1349000 () Bool)

(declare-fun e!4350600 () Bool)

(assert (=> b!7255560 (= c!1349000 e!4350600)))

(declare-fun res!2942348 () Bool)

(assert (=> b!7255560 (=> (not res!2942348) (not e!4350600))))

(assert (=> b!7255560 (= res!2942348 (is-Concat!27505 (h!76884 (exprs!8100 lt!2586651))))))

(declare-fun e!4350596 () (Set Context!15200))

(declare-fun e!4350597 () (Set Context!15200))

(assert (=> b!7255560 (= e!4350596 e!4350597)))

(declare-fun b!7255561 () Bool)

(declare-fun c!1348998 () Bool)

(assert (=> b!7255561 (= c!1348998 (is-Star!18660 (h!76884 (exprs!8100 lt!2586651))))))

(declare-fun e!4350595 () (Set Context!15200))

(declare-fun e!4350599 () (Set Context!15200))

(assert (=> b!7255561 (= e!4350595 e!4350599)))

(declare-fun call!661163 () List!70560)

(declare-fun c!1348999 () Bool)

(declare-fun bm!661158 () Bool)

(assert (=> bm!661158 (= call!661163 ($colon$colon!2926 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586651)))) (ite (or c!1349000 c!1348999) (regTwo!37832 (h!76884 (exprs!8100 lt!2586651))) (h!76884 (exprs!8100 lt!2586651)))))))

(declare-fun b!7255562 () Bool)

(declare-fun call!661168 () (Set Context!15200))

(assert (=> b!7255562 (= e!4350599 call!661168)))

(declare-fun b!7255564 () Bool)

(declare-fun e!4350598 () (Set Context!15200))

(assert (=> b!7255564 (= e!4350598 (set.insert (Context!15201 (t!384622 (exprs!8100 lt!2586651))) (as set.empty (Set Context!15200))))))

(declare-fun bm!661159 () Bool)

(declare-fun c!1348997 () Bool)

(declare-fun call!661167 () (Set Context!15200))

(assert (=> bm!661159 (= call!661167 (derivationStepZipperDown!2654 (ite c!1348997 (regOne!37833 (h!76884 (exprs!8100 lt!2586651))) (regOne!37832 (h!76884 (exprs!8100 lt!2586651)))) (ite c!1348997 (Context!15201 (t!384622 (exprs!8100 lt!2586651))) (Context!15201 call!661163)) (h!76885 s1!1971)))))

(declare-fun b!7255565 () Bool)

(assert (=> b!7255565 (= e!4350600 (nullable!7920 (regOne!37832 (h!76884 (exprs!8100 lt!2586651)))))))

(declare-fun b!7255566 () Bool)

(assert (=> b!7255566 (= e!4350597 e!4350595)))

(assert (=> b!7255566 (= c!1348999 (is-Concat!27505 (h!76884 (exprs!8100 lt!2586651))))))

(declare-fun b!7255567 () Bool)

(declare-fun call!661164 () (Set Context!15200))

(assert (=> b!7255567 (= e!4350597 (set.union call!661167 call!661164))))

(declare-fun d!2256359 () Bool)

(declare-fun c!1349001 () Bool)

(assert (=> d!2256359 (= c!1349001 (and (is-ElementMatch!18660 (h!76884 (exprs!8100 lt!2586651))) (= (c!1348806 (h!76884 (exprs!8100 lt!2586651))) (h!76885 s1!1971))))))

(assert (=> d!2256359 (= (derivationStepZipperDown!2654 (h!76884 (exprs!8100 lt!2586651)) (Context!15201 (t!384622 (exprs!8100 lt!2586651))) (h!76885 s1!1971)) e!4350598)))

(declare-fun b!7255563 () Bool)

(declare-fun call!661166 () (Set Context!15200))

(assert (=> b!7255563 (= e!4350596 (set.union call!661167 call!661166))))

(declare-fun bm!661160 () Bool)

(declare-fun call!661165 () List!70560)

(assert (=> bm!661160 (= call!661165 call!661163)))

(declare-fun bm!661161 () Bool)

(assert (=> bm!661161 (= call!661168 call!661164)))

(declare-fun b!7255568 () Bool)

(assert (=> b!7255568 (= e!4350598 e!4350596)))

(assert (=> b!7255568 (= c!1348997 (is-Union!18660 (h!76884 (exprs!8100 lt!2586651))))))

(declare-fun bm!661162 () Bool)

(assert (=> bm!661162 (= call!661166 (derivationStepZipperDown!2654 (ite c!1348997 (regTwo!37833 (h!76884 (exprs!8100 lt!2586651))) (ite c!1349000 (regTwo!37832 (h!76884 (exprs!8100 lt!2586651))) (ite c!1348999 (regOne!37832 (h!76884 (exprs!8100 lt!2586651))) (reg!18989 (h!76884 (exprs!8100 lt!2586651)))))) (ite (or c!1348997 c!1349000) (Context!15201 (t!384622 (exprs!8100 lt!2586651))) (Context!15201 call!661165)) (h!76885 s1!1971)))))

(declare-fun b!7255569 () Bool)

(assert (=> b!7255569 (= e!4350595 call!661168)))

(declare-fun b!7255570 () Bool)

(assert (=> b!7255570 (= e!4350599 (as set.empty (Set Context!15200)))))

(declare-fun bm!661163 () Bool)

(assert (=> bm!661163 (= call!661164 call!661166)))

(assert (= (and d!2256359 c!1349001) b!7255564))

(assert (= (and d!2256359 (not c!1349001)) b!7255568))

(assert (= (and b!7255568 c!1348997) b!7255563))

(assert (= (and b!7255568 (not c!1348997)) b!7255560))

(assert (= (and b!7255560 res!2942348) b!7255565))

(assert (= (and b!7255560 c!1349000) b!7255567))

(assert (= (and b!7255560 (not c!1349000)) b!7255566))

(assert (= (and b!7255566 c!1348999) b!7255569))

(assert (= (and b!7255566 (not c!1348999)) b!7255561))

(assert (= (and b!7255561 c!1348998) b!7255562))

(assert (= (and b!7255561 (not c!1348998)) b!7255570))

(assert (= (or b!7255569 b!7255562) bm!661160))

(assert (= (or b!7255569 b!7255562) bm!661161))

(assert (= (or b!7255567 bm!661160) bm!661158))

(assert (= (or b!7255567 bm!661161) bm!661163))

(assert (= (or b!7255563 bm!661163) bm!661162))

(assert (= (or b!7255563 b!7255567) bm!661159))

(declare-fun m!7936564 () Bool)

(assert (=> bm!661162 m!7936564))

(declare-fun m!7936566 () Bool)

(assert (=> bm!661159 m!7936566))

(declare-fun m!7936568 () Bool)

(assert (=> b!7255564 m!7936568))

(declare-fun m!7936570 () Bool)

(assert (=> bm!661158 m!7936570))

(declare-fun m!7936572 () Bool)

(assert (=> b!7255565 m!7936572))

(assert (=> bm!661089 d!2256359))

(declare-fun b!7255571 () Bool)

(declare-fun c!1349005 () Bool)

(declare-fun e!4350606 () Bool)

(assert (=> b!7255571 (= c!1349005 e!4350606)))

(declare-fun res!2942349 () Bool)

(assert (=> b!7255571 (=> (not res!2942349) (not e!4350606))))

(assert (=> b!7255571 (= res!2942349 (is-Concat!27505 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))))))

(declare-fun e!4350602 () (Set Context!15200))

(declare-fun e!4350603 () (Set Context!15200))

(assert (=> b!7255571 (= e!4350602 e!4350603)))

(declare-fun c!1349003 () Bool)

(declare-fun b!7255572 () Bool)

(assert (=> b!7255572 (= c!1349003 (is-Star!18660 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))))))

(declare-fun e!4350601 () (Set Context!15200))

(declare-fun e!4350605 () (Set Context!15200))

(assert (=> b!7255572 (= e!4350601 e!4350605)))

(declare-fun c!1349004 () Bool)

(declare-fun call!661169 () List!70560)

(declare-fun bm!661164 () Bool)

(assert (=> bm!661164 (= call!661169 ($colon$colon!2926 (exprs!8100 (ite (or c!1348861 c!1348864) lt!2586651 (Context!15201 call!661090))) (ite (or c!1349005 c!1349004) (regTwo!37832 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232)))))))))))

(declare-fun b!7255573 () Bool)

(declare-fun call!661174 () (Set Context!15200))

(assert (=> b!7255573 (= e!4350605 call!661174)))

(declare-fun e!4350604 () (Set Context!15200))

(declare-fun b!7255575 () Bool)

(assert (=> b!7255575 (= e!4350604 (set.insert (ite (or c!1348861 c!1348864) lt!2586651 (Context!15201 call!661090)) (as set.empty (Set Context!15200))))))

(declare-fun call!661173 () (Set Context!15200))

(declare-fun c!1349002 () Bool)

(declare-fun bm!661165 () Bool)

(assert (=> bm!661165 (= call!661173 (derivationStepZipperDown!2654 (ite c!1349002 (regOne!37833 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (regOne!37832 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232)))))))) (ite c!1349002 (ite (or c!1348861 c!1348864) lt!2586651 (Context!15201 call!661090)) (Context!15201 call!661169)) (h!76885 s1!1971)))))

(declare-fun b!7255576 () Bool)

(assert (=> b!7255576 (= e!4350606 (nullable!7920 (regOne!37832 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232)))))))))))

(declare-fun b!7255577 () Bool)

(assert (=> b!7255577 (= e!4350603 e!4350601)))

(assert (=> b!7255577 (= c!1349004 (is-Concat!27505 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))))))

(declare-fun b!7255578 () Bool)

(declare-fun call!661170 () (Set Context!15200))

(assert (=> b!7255578 (= e!4350603 (set.union call!661173 call!661170))))

(declare-fun d!2256361 () Bool)

(declare-fun c!1349006 () Bool)

(assert (=> d!2256361 (= c!1349006 (and (is-ElementMatch!18660 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (= (c!1348806 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (h!76885 s1!1971))))))

(assert (=> d!2256361 (= (derivationStepZipperDown!2654 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232)))))) (ite (or c!1348861 c!1348864) lt!2586651 (Context!15201 call!661090)) (h!76885 s1!1971)) e!4350604)))

(declare-fun b!7255574 () Bool)

(declare-fun call!661172 () (Set Context!15200))

(assert (=> b!7255574 (= e!4350602 (set.union call!661173 call!661172))))

(declare-fun bm!661166 () Bool)

(declare-fun call!661171 () List!70560)

(assert (=> bm!661166 (= call!661171 call!661169)))

(declare-fun bm!661167 () Bool)

(assert (=> bm!661167 (= call!661174 call!661170)))

(declare-fun b!7255579 () Bool)

(assert (=> b!7255579 (= e!4350604 e!4350602)))

(assert (=> b!7255579 (= c!1349002 (is-Union!18660 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))))))

(declare-fun bm!661168 () Bool)

(assert (=> bm!661168 (= call!661172 (derivationStepZipperDown!2654 (ite c!1349002 (regTwo!37833 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (ite c!1349005 (regTwo!37832 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (ite c!1349004 (regOne!37832 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232))))))) (reg!18989 (ite c!1348861 (regTwo!37833 (h!76884 (exprs!8100 ct1!232))) (ite c!1348864 (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (ite c!1348863 (regOne!37832 (h!76884 (exprs!8100 ct1!232))) (reg!18989 (h!76884 (exprs!8100 ct1!232)))))))))) (ite (or c!1349002 c!1349005) (ite (or c!1348861 c!1348864) lt!2586651 (Context!15201 call!661090)) (Context!15201 call!661171)) (h!76885 s1!1971)))))

(declare-fun b!7255580 () Bool)

(assert (=> b!7255580 (= e!4350601 call!661174)))

(declare-fun b!7255581 () Bool)

(assert (=> b!7255581 (= e!4350605 (as set.empty (Set Context!15200)))))

(declare-fun bm!661169 () Bool)

(assert (=> bm!661169 (= call!661170 call!661172)))

(assert (= (and d!2256361 c!1349006) b!7255575))

(assert (= (and d!2256361 (not c!1349006)) b!7255579))

(assert (= (and b!7255579 c!1349002) b!7255574))

(assert (= (and b!7255579 (not c!1349002)) b!7255571))

(assert (= (and b!7255571 res!2942349) b!7255576))

(assert (= (and b!7255571 c!1349005) b!7255578))

(assert (= (and b!7255571 (not c!1349005)) b!7255577))

(assert (= (and b!7255577 c!1349004) b!7255580))

(assert (= (and b!7255577 (not c!1349004)) b!7255572))

(assert (= (and b!7255572 c!1349003) b!7255573))

(assert (= (and b!7255572 (not c!1349003)) b!7255581))

(assert (= (or b!7255580 b!7255573) bm!661166))

(assert (= (or b!7255580 b!7255573) bm!661167))

(assert (= (or b!7255578 bm!661166) bm!661164))

(assert (= (or b!7255578 bm!661167) bm!661169))

(assert (= (or b!7255574 bm!661169) bm!661168))

(assert (= (or b!7255574 b!7255578) bm!661165))

(declare-fun m!7936574 () Bool)

(assert (=> bm!661168 m!7936574))

(declare-fun m!7936576 () Bool)

(assert (=> bm!661165 m!7936576))

(declare-fun m!7936578 () Bool)

(assert (=> b!7255575 m!7936578))

(declare-fun m!7936580 () Bool)

(assert (=> bm!661164 m!7936580))

(declare-fun m!7936582 () Bool)

(assert (=> b!7255576 m!7936582))

(assert (=> bm!661087 d!2256361))

(declare-fun bm!661170 () Bool)

(declare-fun call!661175 () (Set Context!15200))

(assert (=> bm!661170 (= call!661175 (derivationStepZipperDown!2654 (h!76884 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586678))))) (Context!15201 (t!384622 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586678)))))) (h!76885 s1!1971)))))

(declare-fun b!7255582 () Bool)

(declare-fun e!4350608 () (Set Context!15200))

(assert (=> b!7255582 (= e!4350608 (as set.empty (Set Context!15200)))))

(declare-fun b!7255583 () Bool)

(declare-fun e!4350607 () Bool)

(assert (=> b!7255583 (= e!4350607 (nullable!7920 (h!76884 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586678)))))))))

(declare-fun d!2256363 () Bool)

(declare-fun c!1349008 () Bool)

(assert (=> d!2256363 (= c!1349008 e!4350607)))

(declare-fun res!2942350 () Bool)

(assert (=> d!2256363 (=> (not res!2942350) (not e!4350607))))

(assert (=> d!2256363 (= res!2942350 (is-Cons!70436 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586678))))))))

(declare-fun e!4350609 () (Set Context!15200))

(assert (=> d!2256363 (= (derivationStepZipperUp!2484 (Context!15201 (t!384622 (exprs!8100 lt!2586678))) (h!76885 s1!1971)) e!4350609)))

(declare-fun b!7255584 () Bool)

(assert (=> b!7255584 (= e!4350609 e!4350608)))

(declare-fun c!1349007 () Bool)

(assert (=> b!7255584 (= c!1349007 (is-Cons!70436 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586678))))))))

(declare-fun b!7255585 () Bool)

(assert (=> b!7255585 (= e!4350609 (set.union call!661175 (derivationStepZipperUp!2484 (Context!15201 (t!384622 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586678)))))) (h!76885 s1!1971))))))

(declare-fun b!7255586 () Bool)

(assert (=> b!7255586 (= e!4350608 call!661175)))

(assert (= (and d!2256363 res!2942350) b!7255583))

(assert (= (and d!2256363 c!1349008) b!7255585))

(assert (= (and d!2256363 (not c!1349008)) b!7255584))

(assert (= (and b!7255584 c!1349007) b!7255586))

(assert (= (and b!7255584 (not c!1349007)) b!7255582))

(assert (= (or b!7255585 b!7255586) bm!661170))

(declare-fun m!7936584 () Bool)

(assert (=> bm!661170 m!7936584))

(declare-fun m!7936586 () Bool)

(assert (=> b!7255583 m!7936586))

(declare-fun m!7936588 () Bool)

(assert (=> b!7255585 m!7936588))

(assert (=> b!7255082 d!2256363))

(declare-fun d!2256365 () Bool)

(assert (=> d!2256365 (= (flatMap!2825 lt!2586655 lambda!444984) (choose!56086 lt!2586655 lambda!444984))))

(declare-fun bs!1907548 () Bool)

(assert (= bs!1907548 d!2256365))

(declare-fun m!7936590 () Bool)

(assert (=> bs!1907548 m!7936590))

(assert (=> d!2256067 d!2256365))

(assert (=> d!2256073 d!2256075))

(declare-fun d!2256367 () Bool)

(assert (=> d!2256367 (= (flatMap!2825 lt!2586655 lambda!444937) (dynLambda!28775 lambda!444937 lt!2586677))))

(assert (=> d!2256367 true))

(declare-fun _$13!4600 () Unit!163911)

(assert (=> d!2256367 (= (choose!56085 lt!2586655 lt!2586677 lambda!444937) _$13!4600)))

(declare-fun b_lambda!278931 () Bool)

(assert (=> (not b_lambda!278931) (not d!2256367)))

(declare-fun bs!1907549 () Bool)

(assert (= bs!1907549 d!2256367))

(assert (=> bs!1907549 m!7935650))

(assert (=> bs!1907549 m!7935940))

(assert (=> d!2256073 d!2256367))

(declare-fun d!2256369 () Bool)

(assert (=> d!2256369 (= (nullable!7920 (h!76884 (exprs!8100 lt!2586651))) (nullableFct!3111 (h!76884 (exprs!8100 lt!2586651))))))

(declare-fun bs!1907550 () Bool)

(assert (= bs!1907550 d!2256369))

(declare-fun m!7936592 () Bool)

(assert (=> bs!1907550 m!7936592))

(assert (=> b!7255185 d!2256369))

(declare-fun b!7255599 () Bool)

(declare-fun e!4350620 () Context!15200)

(declare-fun e!4350618 () Context!15200)

(assert (=> b!7255599 (= e!4350620 e!4350618)))

(declare-fun c!1349013 () Bool)

(assert (=> b!7255599 (= c!1349013 (is-Cons!70438 (toList!11489 lt!2586681)))))

(declare-fun b!7255600 () Bool)

(declare-fun e!4350619 () Bool)

(declare-fun lt!2586876 () Context!15200)

(assert (=> b!7255600 (= e!4350619 (contains!20748 (toList!11489 lt!2586681) lt!2586876))))

(declare-fun b!7255601 () Bool)

(declare-fun e!4350621 () Bool)

(assert (=> b!7255601 (= e!4350621 (dynLambda!28773 lambda!444936 (h!76886 (toList!11489 lt!2586681))))))

(declare-fun b!7255602 () Bool)

(declare-fun lt!2586875 () Unit!163911)

(declare-fun Unit!163915 () Unit!163911)

(assert (=> b!7255602 (= lt!2586875 Unit!163915)))

(assert (=> b!7255602 false))

(declare-fun head!14920 (List!70562) Context!15200)

(assert (=> b!7255602 (= e!4350618 (head!14920 (toList!11489 lt!2586681)))))

(declare-fun d!2256371 () Bool)

(assert (=> d!2256371 e!4350619))

(declare-fun res!2942356 () Bool)

(assert (=> d!2256371 (=> (not res!2942356) (not e!4350619))))

(assert (=> d!2256371 (= res!2942356 (dynLambda!28773 lambda!444936 lt!2586876))))

(assert (=> d!2256371 (= lt!2586876 e!4350620)))

(declare-fun c!1349014 () Bool)

(assert (=> d!2256371 (= c!1349014 e!4350621)))

(declare-fun res!2942355 () Bool)

(assert (=> d!2256371 (=> (not res!2942355) (not e!4350621))))

(assert (=> d!2256371 (= res!2942355 (is-Cons!70438 (toList!11489 lt!2586681)))))

(assert (=> d!2256371 (exists!4399 (toList!11489 lt!2586681) lambda!444936)))

(assert (=> d!2256371 (= (getWitness!2229 (toList!11489 lt!2586681) lambda!444936) lt!2586876)))

(declare-fun b!7255603 () Bool)

(assert (=> b!7255603 (= e!4350618 (getWitness!2229 (t!384624 (toList!11489 lt!2586681)) lambda!444936))))

(declare-fun b!7255604 () Bool)

(assert (=> b!7255604 (= e!4350620 (h!76886 (toList!11489 lt!2586681)))))

(assert (= (and d!2256371 res!2942355) b!7255601))

(assert (= (and d!2256371 c!1349014) b!7255604))

(assert (= (and d!2256371 (not c!1349014)) b!7255599))

(assert (= (and b!7255599 c!1349013) b!7255603))

(assert (= (and b!7255599 (not c!1349013)) b!7255602))

(assert (= (and d!2256371 res!2942356) b!7255600))

(declare-fun b_lambda!278933 () Bool)

(assert (=> (not b_lambda!278933) (not b!7255601)))

(declare-fun b_lambda!278935 () Bool)

(assert (=> (not b_lambda!278935) (not d!2256371)))

(declare-fun m!7936594 () Bool)

(assert (=> b!7255601 m!7936594))

(declare-fun m!7936596 () Bool)

(assert (=> b!7255603 m!7936596))

(assert (=> b!7255602 m!7935626))

(declare-fun m!7936598 () Bool)

(assert (=> b!7255602 m!7936598))

(declare-fun m!7936600 () Bool)

(assert (=> d!2256371 m!7936600))

(assert (=> d!2256371 m!7935626))

(assert (=> d!2256371 m!7935872))

(assert (=> b!7255600 m!7935626))

(declare-fun m!7936602 () Bool)

(assert (=> b!7255600 m!7936602))

(assert (=> d!2256041 d!2256371))

(assert (=> d!2256041 d!2256055))

(assert (=> d!2256041 d!2256049))

(declare-fun d!2256373 () Bool)

(declare-fun res!2942357 () Bool)

(declare-fun e!4350622 () Bool)

(assert (=> d!2256373 (=> res!2942357 e!4350622)))

(assert (=> d!2256373 (= res!2942357 (is-Nil!70436 (exprs!8100 ct1!232)))))

(assert (=> d!2256373 (= (forall!17510 (exprs!8100 ct1!232) lambda!444982) e!4350622)))

(declare-fun b!7255605 () Bool)

(declare-fun e!4350623 () Bool)

(assert (=> b!7255605 (= e!4350622 e!4350623)))

(declare-fun res!2942358 () Bool)

(assert (=> b!7255605 (=> (not res!2942358) (not e!4350623))))

(assert (=> b!7255605 (= res!2942358 (dynLambda!28779 lambda!444982 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun b!7255606 () Bool)

(assert (=> b!7255606 (= e!4350623 (forall!17510 (t!384622 (exprs!8100 ct1!232)) lambda!444982))))

(assert (= (and d!2256373 (not res!2942357)) b!7255605))

(assert (= (and b!7255605 res!2942358) b!7255606))

(declare-fun b_lambda!278937 () Bool)

(assert (=> (not b_lambda!278937) (not b!7255605)))

(declare-fun m!7936604 () Bool)

(assert (=> b!7255605 m!7936604))

(declare-fun m!7936606 () Bool)

(assert (=> b!7255606 m!7936606))

(assert (=> d!2256063 d!2256373))

(declare-fun d!2256375 () Bool)

(declare-fun c!1349015 () Bool)

(assert (=> d!2256375 (= c!1349015 (isEmpty!40564 (tail!14346 lt!2586673)))))

(declare-fun e!4350624 () Bool)

(assert (=> d!2256375 (= (matchZipper!3570 (derivationStepZipper!3438 lt!2586658 (head!14918 lt!2586673)) (tail!14346 lt!2586673)) e!4350624)))

(declare-fun b!7255607 () Bool)

(assert (=> b!7255607 (= e!4350624 (nullableZipper!2922 (derivationStepZipper!3438 lt!2586658 (head!14918 lt!2586673))))))

(declare-fun b!7255608 () Bool)

(assert (=> b!7255608 (= e!4350624 (matchZipper!3570 (derivationStepZipper!3438 (derivationStepZipper!3438 lt!2586658 (head!14918 lt!2586673)) (head!14918 (tail!14346 lt!2586673))) (tail!14346 (tail!14346 lt!2586673))))))

(assert (= (and d!2256375 c!1349015) b!7255607))

(assert (= (and d!2256375 (not c!1349015)) b!7255608))

(assert (=> d!2256375 m!7935812))

(assert (=> d!2256375 m!7936300))

(assert (=> b!7255607 m!7936012))

(declare-fun m!7936608 () Bool)

(assert (=> b!7255607 m!7936608))

(assert (=> b!7255608 m!7935812))

(assert (=> b!7255608 m!7936304))

(assert (=> b!7255608 m!7936012))

(assert (=> b!7255608 m!7936304))

(declare-fun m!7936610 () Bool)

(assert (=> b!7255608 m!7936610))

(assert (=> b!7255608 m!7935812))

(assert (=> b!7255608 m!7936308))

(assert (=> b!7255608 m!7936610))

(assert (=> b!7255608 m!7936308))

(declare-fun m!7936612 () Bool)

(assert (=> b!7255608 m!7936612))

(assert (=> b!7255200 d!2256375))

(declare-fun bs!1907551 () Bool)

(declare-fun d!2256377 () Bool)

(assert (= bs!1907551 (and d!2256377 d!2256275)))

(declare-fun lambda!445023 () Int)

(assert (=> bs!1907551 (= (= (head!14918 lt!2586673) (head!14918 (t!384623 s1!1971))) (= lambda!445023 lambda!445014))))

(declare-fun bs!1907552 () Bool)

(assert (= bs!1907552 (and d!2256377 d!2256317)))

(assert (=> bs!1907552 (= (= (head!14918 lt!2586673) (head!14918 s1!1971)) (= lambda!445023 lambda!445018))))

(declare-fun bs!1907553 () Bool)

(assert (= bs!1907553 (and d!2256377 d!2256225)))

(assert (=> bs!1907553 (= lambda!445023 lambda!445010)))

(declare-fun bs!1907554 () Bool)

(assert (= bs!1907554 (and d!2256377 b!7254985)))

(assert (=> bs!1907554 (= (= (head!14918 lt!2586673) (h!76885 s1!1971)) (= lambda!445023 lambda!444937))))

(declare-fun bs!1907555 () Bool)

(assert (= bs!1907555 (and d!2256377 d!2256067)))

(assert (=> bs!1907555 (= (= (head!14918 lt!2586673) (h!76885 s1!1971)) (= lambda!445023 lambda!444984))))

(declare-fun bs!1907556 () Bool)

(assert (= bs!1907556 (and d!2256377 d!2256267)))

(assert (=> bs!1907556 (= (= (head!14918 lt!2586673) (head!14918 (t!384623 s1!1971))) (= lambda!445023 lambda!445013))))

(declare-fun bs!1907557 () Bool)

(assert (= bs!1907557 (and d!2256377 d!2256333)))

(assert (=> bs!1907557 (= (= (head!14918 lt!2586673) (head!14918 s2!1849)) (= lambda!445023 lambda!445019))))

(declare-fun bs!1907558 () Bool)

(assert (= bs!1907558 (and d!2256377 d!2256059)))

(assert (=> bs!1907558 (= (= (head!14918 lt!2586673) (h!76885 s1!1971)) (= lambda!445023 lambda!444981))))

(assert (=> d!2256377 true))

(assert (=> d!2256377 (= (derivationStepZipper!3438 lt!2586658 (head!14918 lt!2586673)) (flatMap!2825 lt!2586658 lambda!445023))))

(declare-fun bs!1907559 () Bool)

(assert (= bs!1907559 d!2256377))

(declare-fun m!7936614 () Bool)

(assert (=> bs!1907559 m!7936614))

(assert (=> b!7255200 d!2256377))

(assert (=> b!7255200 d!2256227))

(assert (=> b!7255200 d!2256229))

(declare-fun b!7255609 () Bool)

(declare-fun c!1349019 () Bool)

(declare-fun e!4350630 () Bool)

(assert (=> b!7255609 (= c!1349019 e!4350630)))

(declare-fun res!2942359 () Bool)

(assert (=> b!7255609 (=> (not res!2942359) (not e!4350630))))

(assert (=> b!7255609 (= res!2942359 (is-Concat!27505 (h!76884 (exprs!8100 lt!2586678))))))

(declare-fun e!4350626 () (Set Context!15200))

(declare-fun e!4350627 () (Set Context!15200))

(assert (=> b!7255609 (= e!4350626 e!4350627)))

(declare-fun b!7255610 () Bool)

(declare-fun c!1349017 () Bool)

(assert (=> b!7255610 (= c!1349017 (is-Star!18660 (h!76884 (exprs!8100 lt!2586678))))))

(declare-fun e!4350625 () (Set Context!15200))

(declare-fun e!4350629 () (Set Context!15200))

(assert (=> b!7255610 (= e!4350625 e!4350629)))

(declare-fun call!661176 () List!70560)

(declare-fun c!1349018 () Bool)

(declare-fun bm!661171 () Bool)

(assert (=> bm!661171 (= call!661176 ($colon$colon!2926 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586678)))) (ite (or c!1349019 c!1349018) (regTwo!37832 (h!76884 (exprs!8100 lt!2586678))) (h!76884 (exprs!8100 lt!2586678)))))))

(declare-fun b!7255611 () Bool)

(declare-fun call!661181 () (Set Context!15200))

(assert (=> b!7255611 (= e!4350629 call!661181)))

(declare-fun b!7255613 () Bool)

(declare-fun e!4350628 () (Set Context!15200))

(assert (=> b!7255613 (= e!4350628 (set.insert (Context!15201 (t!384622 (exprs!8100 lt!2586678))) (as set.empty (Set Context!15200))))))

(declare-fun bm!661172 () Bool)

(declare-fun c!1349016 () Bool)

(declare-fun call!661180 () (Set Context!15200))

(assert (=> bm!661172 (= call!661180 (derivationStepZipperDown!2654 (ite c!1349016 (regOne!37833 (h!76884 (exprs!8100 lt!2586678))) (regOne!37832 (h!76884 (exprs!8100 lt!2586678)))) (ite c!1349016 (Context!15201 (t!384622 (exprs!8100 lt!2586678))) (Context!15201 call!661176)) (h!76885 s1!1971)))))

(declare-fun b!7255614 () Bool)

(assert (=> b!7255614 (= e!4350630 (nullable!7920 (regOne!37832 (h!76884 (exprs!8100 lt!2586678)))))))

(declare-fun b!7255615 () Bool)

(assert (=> b!7255615 (= e!4350627 e!4350625)))

(assert (=> b!7255615 (= c!1349018 (is-Concat!27505 (h!76884 (exprs!8100 lt!2586678))))))

(declare-fun b!7255616 () Bool)

(declare-fun call!661177 () (Set Context!15200))

(assert (=> b!7255616 (= e!4350627 (set.union call!661180 call!661177))))

(declare-fun d!2256379 () Bool)

(declare-fun c!1349020 () Bool)

(assert (=> d!2256379 (= c!1349020 (and (is-ElementMatch!18660 (h!76884 (exprs!8100 lt!2586678))) (= (c!1348806 (h!76884 (exprs!8100 lt!2586678))) (h!76885 s1!1971))))))

(assert (=> d!2256379 (= (derivationStepZipperDown!2654 (h!76884 (exprs!8100 lt!2586678)) (Context!15201 (t!384622 (exprs!8100 lt!2586678))) (h!76885 s1!1971)) e!4350628)))

(declare-fun b!7255612 () Bool)

(declare-fun call!661179 () (Set Context!15200))

(assert (=> b!7255612 (= e!4350626 (set.union call!661180 call!661179))))

(declare-fun bm!661173 () Bool)

(declare-fun call!661178 () List!70560)

(assert (=> bm!661173 (= call!661178 call!661176)))

(declare-fun bm!661174 () Bool)

(assert (=> bm!661174 (= call!661181 call!661177)))

(declare-fun b!7255617 () Bool)

(assert (=> b!7255617 (= e!4350628 e!4350626)))

(assert (=> b!7255617 (= c!1349016 (is-Union!18660 (h!76884 (exprs!8100 lt!2586678))))))

(declare-fun bm!661175 () Bool)

(assert (=> bm!661175 (= call!661179 (derivationStepZipperDown!2654 (ite c!1349016 (regTwo!37833 (h!76884 (exprs!8100 lt!2586678))) (ite c!1349019 (regTwo!37832 (h!76884 (exprs!8100 lt!2586678))) (ite c!1349018 (regOne!37832 (h!76884 (exprs!8100 lt!2586678))) (reg!18989 (h!76884 (exprs!8100 lt!2586678)))))) (ite (or c!1349016 c!1349019) (Context!15201 (t!384622 (exprs!8100 lt!2586678))) (Context!15201 call!661178)) (h!76885 s1!1971)))))

(declare-fun b!7255618 () Bool)

(assert (=> b!7255618 (= e!4350625 call!661181)))

(declare-fun b!7255619 () Bool)

(assert (=> b!7255619 (= e!4350629 (as set.empty (Set Context!15200)))))

(declare-fun bm!661176 () Bool)

(assert (=> bm!661176 (= call!661177 call!661179)))

(assert (= (and d!2256379 c!1349020) b!7255613))

(assert (= (and d!2256379 (not c!1349020)) b!7255617))

(assert (= (and b!7255617 c!1349016) b!7255612))

(assert (= (and b!7255617 (not c!1349016)) b!7255609))

(assert (= (and b!7255609 res!2942359) b!7255614))

(assert (= (and b!7255609 c!1349019) b!7255616))

(assert (= (and b!7255609 (not c!1349019)) b!7255615))

(assert (= (and b!7255615 c!1349018) b!7255618))

(assert (= (and b!7255615 (not c!1349018)) b!7255610))

(assert (= (and b!7255610 c!1349017) b!7255611))

(assert (= (and b!7255610 (not c!1349017)) b!7255619))

(assert (= (or b!7255618 b!7255611) bm!661173))

(assert (= (or b!7255618 b!7255611) bm!661174))

(assert (= (or b!7255616 bm!661173) bm!661171))

(assert (= (or b!7255616 bm!661174) bm!661176))

(assert (= (or b!7255612 bm!661176) bm!661175))

(assert (= (or b!7255612 b!7255616) bm!661172))

(declare-fun m!7936616 () Bool)

(assert (=> bm!661175 m!7936616))

(declare-fun m!7936618 () Bool)

(assert (=> bm!661172 m!7936618))

(declare-fun m!7936620 () Bool)

(assert (=> b!7255613 m!7936620))

(declare-fun m!7936622 () Bool)

(assert (=> bm!661171 m!7936622))

(declare-fun m!7936624 () Bool)

(assert (=> b!7255614 m!7936624))

(assert (=> bm!661062 d!2256379))

(declare-fun d!2256381 () Bool)

(declare-fun res!2942364 () Bool)

(declare-fun e!4350635 () Bool)

(assert (=> d!2256381 (=> res!2942364 e!4350635)))

(assert (=> d!2256381 (= res!2942364 (is-Nil!70438 lt!2586667))))

(assert (=> d!2256381 (= (forall!17511 lt!2586667 lambda!444975) e!4350635)))

(declare-fun b!7255624 () Bool)

(declare-fun e!4350636 () Bool)

(assert (=> b!7255624 (= e!4350635 e!4350636)))

(declare-fun res!2942365 () Bool)

(assert (=> b!7255624 (=> (not res!2942365) (not e!4350636))))

(assert (=> b!7255624 (= res!2942365 (dynLambda!28773 lambda!444975 (h!76886 lt!2586667)))))

(declare-fun b!7255625 () Bool)

(assert (=> b!7255625 (= e!4350636 (forall!17511 (t!384624 lt!2586667) lambda!444975))))

(assert (= (and d!2256381 (not res!2942364)) b!7255624))

(assert (= (and b!7255624 res!2942365) b!7255625))

(declare-fun b_lambda!278939 () Bool)

(assert (=> (not b_lambda!278939) (not b!7255624)))

(declare-fun m!7936626 () Bool)

(assert (=> b!7255624 m!7936626))

(declare-fun m!7936628 () Bool)

(assert (=> b!7255625 m!7936628))

(assert (=> d!2256051 d!2256381))

(assert (=> b!7255178 d!2256239))

(declare-fun d!2256383 () Bool)

(assert (=> d!2256383 true))

(declare-fun setRes!53600 () Bool)

(assert (=> d!2256383 setRes!53600))

(declare-fun condSetEmpty!53600 () Bool)

(declare-fun res!2942366 () (Set Context!15200))

(assert (=> d!2256383 (= condSetEmpty!53600 (= res!2942366 (as set.empty (Set Context!15200))))))

(assert (=> d!2256383 (= (choose!56086 lt!2586655 lambda!444937) res!2942366)))

(declare-fun setIsEmpty!53600 () Bool)

(assert (=> setIsEmpty!53600 setRes!53600))

(declare-fun setElem!53600 () Context!15200)

(declare-fun tp!2038087 () Bool)

(declare-fun setNonEmpty!53600 () Bool)

(declare-fun e!4350637 () Bool)

(assert (=> setNonEmpty!53600 (= setRes!53600 (and tp!2038087 (inv!89661 setElem!53600) e!4350637))))

(declare-fun setRest!53600 () (Set Context!15200))

(assert (=> setNonEmpty!53600 (= res!2942366 (set.union (set.insert setElem!53600 (as set.empty (Set Context!15200))) setRest!53600))))

(declare-fun b!7255626 () Bool)

(declare-fun tp!2038088 () Bool)

(assert (=> b!7255626 (= e!4350637 tp!2038088)))

(assert (= (and d!2256383 condSetEmpty!53600) setIsEmpty!53600))

(assert (= (and d!2256383 (not condSetEmpty!53600)) setNonEmpty!53600))

(assert (= setNonEmpty!53600 b!7255626))

(declare-fun m!7936630 () Bool)

(assert (=> setNonEmpty!53600 m!7936630))

(assert (=> d!2256075 d!2256383))

(assert (=> d!2256099 d!2256329))

(declare-fun d!2256385 () Bool)

(declare-fun c!1349021 () Bool)

(assert (=> d!2256385 (= c!1349021 (isEmpty!40564 (tail!14346 (t!384623 s1!1971))))))

(declare-fun e!4350638 () Bool)

(assert (=> d!2256385 (= (matchZipper!3570 (derivationStepZipper!3438 lt!2586666 (head!14918 (t!384623 s1!1971))) (tail!14346 (t!384623 s1!1971))) e!4350638)))

(declare-fun b!7255627 () Bool)

(assert (=> b!7255627 (= e!4350638 (nullableZipper!2922 (derivationStepZipper!3438 lt!2586666 (head!14918 (t!384623 s1!1971)))))))

(declare-fun b!7255628 () Bool)

(assert (=> b!7255628 (= e!4350638 (matchZipper!3570 (derivationStepZipper!3438 (derivationStepZipper!3438 lt!2586666 (head!14918 (t!384623 s1!1971))) (head!14918 (tail!14346 (t!384623 s1!1971)))) (tail!14346 (tail!14346 (t!384623 s1!1971)))))))

(assert (= (and d!2256385 c!1349021) b!7255627))

(assert (= (and d!2256385 (not c!1349021)) b!7255628))

(assert (=> d!2256385 m!7935900))

(assert (=> d!2256385 m!7936382))

(assert (=> b!7255627 m!7935990))

(declare-fun m!7936632 () Bool)

(assert (=> b!7255627 m!7936632))

(assert (=> b!7255628 m!7935900))

(assert (=> b!7255628 m!7936386))

(assert (=> b!7255628 m!7935990))

(assert (=> b!7255628 m!7936386))

(declare-fun m!7936634 () Bool)

(assert (=> b!7255628 m!7936634))

(assert (=> b!7255628 m!7935900))

(assert (=> b!7255628 m!7936390))

(assert (=> b!7255628 m!7936634))

(assert (=> b!7255628 m!7936390))

(declare-fun m!7936636 () Bool)

(assert (=> b!7255628 m!7936636))

(assert (=> b!7255193 d!2256385))

(declare-fun bs!1907560 () Bool)

(declare-fun d!2256387 () Bool)

(assert (= bs!1907560 (and d!2256387 d!2256275)))

(declare-fun lambda!445024 () Int)

(assert (=> bs!1907560 (= lambda!445024 lambda!445014)))

(declare-fun bs!1907561 () Bool)

(assert (= bs!1907561 (and d!2256387 d!2256317)))

(assert (=> bs!1907561 (= (= (head!14918 (t!384623 s1!1971)) (head!14918 s1!1971)) (= lambda!445024 lambda!445018))))

(declare-fun bs!1907562 () Bool)

(assert (= bs!1907562 (and d!2256387 d!2256225)))

(assert (=> bs!1907562 (= (= (head!14918 (t!384623 s1!1971)) (head!14918 lt!2586673)) (= lambda!445024 lambda!445010))))

(declare-fun bs!1907563 () Bool)

(assert (= bs!1907563 (and d!2256387 b!7254985)))

(assert (=> bs!1907563 (= (= (head!14918 (t!384623 s1!1971)) (h!76885 s1!1971)) (= lambda!445024 lambda!444937))))

(declare-fun bs!1907564 () Bool)

(assert (= bs!1907564 (and d!2256387 d!2256067)))

(assert (=> bs!1907564 (= (= (head!14918 (t!384623 s1!1971)) (h!76885 s1!1971)) (= lambda!445024 lambda!444984))))

(declare-fun bs!1907565 () Bool)

(assert (= bs!1907565 (and d!2256387 d!2256267)))

(assert (=> bs!1907565 (= lambda!445024 lambda!445013)))

(declare-fun bs!1907566 () Bool)

(assert (= bs!1907566 (and d!2256387 d!2256377)))

(assert (=> bs!1907566 (= (= (head!14918 (t!384623 s1!1971)) (head!14918 lt!2586673)) (= lambda!445024 lambda!445023))))

(declare-fun bs!1907567 () Bool)

(assert (= bs!1907567 (and d!2256387 d!2256333)))

(assert (=> bs!1907567 (= (= (head!14918 (t!384623 s1!1971)) (head!14918 s2!1849)) (= lambda!445024 lambda!445019))))

(declare-fun bs!1907568 () Bool)

(assert (= bs!1907568 (and d!2256387 d!2256059)))

(assert (=> bs!1907568 (= (= (head!14918 (t!384623 s1!1971)) (h!76885 s1!1971)) (= lambda!445024 lambda!444981))))

(assert (=> d!2256387 true))

(assert (=> d!2256387 (= (derivationStepZipper!3438 lt!2586666 (head!14918 (t!384623 s1!1971))) (flatMap!2825 lt!2586666 lambda!445024))))

(declare-fun bs!1907569 () Bool)

(assert (= bs!1907569 d!2256387))

(declare-fun m!7936638 () Bool)

(assert (=> bs!1907569 m!7936638))

(assert (=> b!7255193 d!2256387))

(assert (=> b!7255193 d!2256269))

(assert (=> b!7255193 d!2256271))

(declare-fun d!2256389 () Bool)

(assert (=> d!2256389 (= (nullable!7920 (h!76884 (exprs!8100 lt!2586678))) (nullableFct!3111 (h!76884 (exprs!8100 lt!2586678))))))

(declare-fun bs!1907570 () Bool)

(assert (= bs!1907570 d!2256389))

(declare-fun m!7936640 () Bool)

(assert (=> bs!1907570 m!7936640))

(assert (=> b!7255080 d!2256389))

(assert (=> d!2256107 d!2256251))

(declare-fun bs!1907571 () Bool)

(declare-fun d!2256391 () Bool)

(assert (= bs!1907571 (and d!2256391 d!2256293)))

(declare-fun lambda!445025 () Int)

(assert (=> bs!1907571 (= lambda!445025 lambda!445016)))

(declare-fun bs!1907572 () Bool)

(assert (= bs!1907572 (and d!2256391 d!2256053)))

(assert (=> bs!1907572 (not (= lambda!445025 lambda!444978))))

(declare-fun bs!1907573 () Bool)

(assert (= bs!1907573 (and d!2256391 d!2256217)))

(assert (=> bs!1907573 (= lambda!445025 lambda!445009)))

(declare-fun bs!1907574 () Bool)

(assert (= bs!1907574 (and d!2256391 d!2256279)))

(assert (=> bs!1907574 (= lambda!445025 lambda!445015)))

(declare-fun bs!1907575 () Bool)

(assert (= bs!1907575 (and d!2256391 d!2256209)))

(assert (=> bs!1907575 (not (= lambda!445025 lambda!445003))))

(declare-fun bs!1907576 () Bool)

(assert (= bs!1907576 (and d!2256391 d!2256297)))

(assert (=> bs!1907576 (= lambda!445025 lambda!445017)))

(declare-fun bs!1907577 () Bool)

(assert (= bs!1907577 (and d!2256391 d!2256231)))

(assert (=> bs!1907577 (not (= lambda!445025 lambda!445011))))

(declare-fun bs!1907578 () Bool)

(assert (= bs!1907578 (and d!2256391 d!2256263)))

(assert (=> bs!1907578 (= lambda!445025 lambda!445012)))

(declare-fun bs!1907579 () Bool)

(assert (= bs!1907579 (and d!2256391 d!2256051)))

(assert (=> bs!1907579 (not (= lambda!445025 lambda!444975))))

(declare-fun bs!1907580 () Bool)

(assert (= bs!1907580 (and d!2256391 d!2256211)))

(assert (=> bs!1907580 (not (= lambda!445025 lambda!445006))))

(declare-fun bs!1907581 () Bool)

(assert (= bs!1907581 (and d!2256391 b!7254998)))

(assert (=> bs!1907581 (not (= lambda!445025 lambda!444936))))

(assert (=> d!2256391 (= (nullableZipper!2922 lt!2586671) (exists!4398 lt!2586671 lambda!445025))))

(declare-fun bs!1907582 () Bool)

(assert (= bs!1907582 d!2256391))

(declare-fun m!7936642 () Bool)

(assert (=> bs!1907582 m!7936642))

(assert (=> b!7255195 d!2256391))

(declare-fun d!2256393 () Bool)

(assert (=> d!2256393 (= ($colon$colon!2926 (exprs!8100 lt!2586678) (ite (or c!1348857 c!1348856) (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (h!76884 (exprs!8100 ct1!232)))) (Cons!70436 (ite (or c!1348857 c!1348856) (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (h!76884 (exprs!8100 ct1!232))) (exprs!8100 lt!2586678)))))

(assert (=> bm!661076 d!2256393))

(declare-fun d!2256395 () Bool)

(declare-fun lt!2586879 () Int)

(assert (=> d!2256395 (>= lt!2586879 0)))

(declare-fun e!4350641 () Int)

(assert (=> d!2256395 (= lt!2586879 e!4350641)))

(declare-fun c!1349024 () Bool)

(assert (=> d!2256395 (= c!1349024 (is-Nil!70437 lt!2586791))))

(assert (=> d!2256395 (= (size!41733 lt!2586791) lt!2586879)))

(declare-fun b!7255633 () Bool)

(assert (=> b!7255633 (= e!4350641 0)))

(declare-fun b!7255634 () Bool)

(assert (=> b!7255634 (= e!4350641 (+ 1 (size!41733 (t!384623 lt!2586791))))))

(assert (= (and d!2256395 c!1349024) b!7255633))

(assert (= (and d!2256395 (not c!1349024)) b!7255634))

(declare-fun m!7936644 () Bool)

(assert (=> b!7255634 m!7936644))

(assert (=> b!7255096 d!2256395))

(declare-fun d!2256397 () Bool)

(declare-fun lt!2586880 () Int)

(assert (=> d!2256397 (>= lt!2586880 0)))

(declare-fun e!4350642 () Int)

(assert (=> d!2256397 (= lt!2586880 e!4350642)))

(declare-fun c!1349025 () Bool)

(assert (=> d!2256397 (= c!1349025 (is-Nil!70437 (t!384623 s1!1971)))))

(assert (=> d!2256397 (= (size!41733 (t!384623 s1!1971)) lt!2586880)))

(declare-fun b!7255635 () Bool)

(assert (=> b!7255635 (= e!4350642 0)))

(declare-fun b!7255636 () Bool)

(assert (=> b!7255636 (= e!4350642 (+ 1 (size!41733 (t!384623 (t!384623 s1!1971)))))))

(assert (= (and d!2256397 c!1349025) b!7255635))

(assert (= (and d!2256397 (not c!1349025)) b!7255636))

(assert (=> b!7255636 m!7936340))

(assert (=> b!7255096 d!2256397))

(declare-fun d!2256399 () Bool)

(declare-fun lt!2586881 () Int)

(assert (=> d!2256399 (>= lt!2586881 0)))

(declare-fun e!4350643 () Int)

(assert (=> d!2256399 (= lt!2586881 e!4350643)))

(declare-fun c!1349026 () Bool)

(assert (=> d!2256399 (= c!1349026 (is-Nil!70437 s2!1849))))

(assert (=> d!2256399 (= (size!41733 s2!1849) lt!2586881)))

(declare-fun b!7255637 () Bool)

(assert (=> b!7255637 (= e!4350643 0)))

(declare-fun b!7255638 () Bool)

(assert (=> b!7255638 (= e!4350643 (+ 1 (size!41733 (t!384623 s2!1849))))))

(assert (= (and d!2256399 c!1349026) b!7255637))

(assert (= (and d!2256399 (not c!1349026)) b!7255638))

(declare-fun m!7936646 () Bool)

(assert (=> b!7255638 m!7936646))

(assert (=> b!7255096 d!2256399))

(declare-fun d!2256401 () Bool)

(assert (=> d!2256401 (= ($colon$colon!2926 (exprs!8100 lt!2586651) (ite (or c!1348864 c!1348863) (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (h!76884 (exprs!8100 ct1!232)))) (Cons!70436 (ite (or c!1348864 c!1348863) (regTwo!37832 (h!76884 (exprs!8100 ct1!232))) (h!76884 (exprs!8100 ct1!232))) (exprs!8100 lt!2586651)))))

(assert (=> bm!661083 d!2256401))

(declare-fun d!2256403 () Bool)

(declare-fun c!1349027 () Bool)

(assert (=> d!2256403 (= c!1349027 (isEmpty!40564 (tail!14346 (t!384623 s1!1971))))))

(declare-fun e!4350644 () Bool)

(assert (=> d!2256403 (= (matchZipper!3570 (derivationStepZipper!3438 lt!2586670 (head!14918 (t!384623 s1!1971))) (tail!14346 (t!384623 s1!1971))) e!4350644)))

(declare-fun b!7255639 () Bool)

(assert (=> b!7255639 (= e!4350644 (nullableZipper!2922 (derivationStepZipper!3438 lt!2586670 (head!14918 (t!384623 s1!1971)))))))

(declare-fun b!7255640 () Bool)

(assert (=> b!7255640 (= e!4350644 (matchZipper!3570 (derivationStepZipper!3438 (derivationStepZipper!3438 lt!2586670 (head!14918 (t!384623 s1!1971))) (head!14918 (tail!14346 (t!384623 s1!1971)))) (tail!14346 (tail!14346 (t!384623 s1!1971)))))))

(assert (= (and d!2256403 c!1349027) b!7255639))

(assert (= (and d!2256403 (not c!1349027)) b!7255640))

(assert (=> d!2256403 m!7935900))

(assert (=> d!2256403 m!7936382))

(assert (=> b!7255639 m!7935926))

(declare-fun m!7936648 () Bool)

(assert (=> b!7255639 m!7936648))

(assert (=> b!7255640 m!7935900))

(assert (=> b!7255640 m!7936386))

(assert (=> b!7255640 m!7935926))

(assert (=> b!7255640 m!7936386))

(declare-fun m!7936650 () Bool)

(assert (=> b!7255640 m!7936650))

(assert (=> b!7255640 m!7935900))

(assert (=> b!7255640 m!7936390))

(assert (=> b!7255640 m!7936650))

(assert (=> b!7255640 m!7936390))

(declare-fun m!7936652 () Bool)

(assert (=> b!7255640 m!7936652))

(assert (=> b!7255130 d!2256403))

(declare-fun bs!1907583 () Bool)

(declare-fun d!2256405 () Bool)

(assert (= bs!1907583 (and d!2256405 d!2256275)))

(declare-fun lambda!445026 () Int)

(assert (=> bs!1907583 (= lambda!445026 lambda!445014)))

(declare-fun bs!1907584 () Bool)

(assert (= bs!1907584 (and d!2256405 d!2256317)))

(assert (=> bs!1907584 (= (= (head!14918 (t!384623 s1!1971)) (head!14918 s1!1971)) (= lambda!445026 lambda!445018))))

(declare-fun bs!1907585 () Bool)

(assert (= bs!1907585 (and d!2256405 d!2256225)))

(assert (=> bs!1907585 (= (= (head!14918 (t!384623 s1!1971)) (head!14918 lt!2586673)) (= lambda!445026 lambda!445010))))

(declare-fun bs!1907586 () Bool)

(assert (= bs!1907586 (and d!2256405 b!7254985)))

(assert (=> bs!1907586 (= (= (head!14918 (t!384623 s1!1971)) (h!76885 s1!1971)) (= lambda!445026 lambda!444937))))

(declare-fun bs!1907587 () Bool)

(assert (= bs!1907587 (and d!2256405 d!2256067)))

(assert (=> bs!1907587 (= (= (head!14918 (t!384623 s1!1971)) (h!76885 s1!1971)) (= lambda!445026 lambda!444984))))

(declare-fun bs!1907588 () Bool)

(assert (= bs!1907588 (and d!2256405 d!2256387)))

(assert (=> bs!1907588 (= lambda!445026 lambda!445024)))

(declare-fun bs!1907589 () Bool)

(assert (= bs!1907589 (and d!2256405 d!2256267)))

(assert (=> bs!1907589 (= lambda!445026 lambda!445013)))

(declare-fun bs!1907590 () Bool)

(assert (= bs!1907590 (and d!2256405 d!2256377)))

(assert (=> bs!1907590 (= (= (head!14918 (t!384623 s1!1971)) (head!14918 lt!2586673)) (= lambda!445026 lambda!445023))))

(declare-fun bs!1907591 () Bool)

(assert (= bs!1907591 (and d!2256405 d!2256333)))

(assert (=> bs!1907591 (= (= (head!14918 (t!384623 s1!1971)) (head!14918 s2!1849)) (= lambda!445026 lambda!445019))))

(declare-fun bs!1907592 () Bool)

(assert (= bs!1907592 (and d!2256405 d!2256059)))

(assert (=> bs!1907592 (= (= (head!14918 (t!384623 s1!1971)) (h!76885 s1!1971)) (= lambda!445026 lambda!444981))))

(assert (=> d!2256405 true))

(assert (=> d!2256405 (= (derivationStepZipper!3438 lt!2586670 (head!14918 (t!384623 s1!1971))) (flatMap!2825 lt!2586670 lambda!445026))))

(declare-fun bs!1907593 () Bool)

(assert (= bs!1907593 d!2256405))

(declare-fun m!7936654 () Bool)

(assert (=> bs!1907593 m!7936654))

(assert (=> b!7255130 d!2256405))

(assert (=> b!7255130 d!2256269))

(assert (=> b!7255130 d!2256271))

(declare-fun bs!1907594 () Bool)

(declare-fun d!2256407 () Bool)

(assert (= bs!1907594 (and d!2256407 d!2256293)))

(declare-fun lambda!445027 () Int)

(assert (=> bs!1907594 (= lambda!445027 lambda!445016)))

(declare-fun bs!1907595 () Bool)

(assert (= bs!1907595 (and d!2256407 d!2256053)))

(assert (=> bs!1907595 (not (= lambda!445027 lambda!444978))))

(declare-fun bs!1907596 () Bool)

(assert (= bs!1907596 (and d!2256407 d!2256217)))

(assert (=> bs!1907596 (= lambda!445027 lambda!445009)))

(declare-fun bs!1907597 () Bool)

(assert (= bs!1907597 (and d!2256407 d!2256279)))

(assert (=> bs!1907597 (= lambda!445027 lambda!445015)))

(declare-fun bs!1907598 () Bool)

(assert (= bs!1907598 (and d!2256407 d!2256297)))

(assert (=> bs!1907598 (= lambda!445027 lambda!445017)))

(declare-fun bs!1907599 () Bool)

(assert (= bs!1907599 (and d!2256407 d!2256231)))

(assert (=> bs!1907599 (not (= lambda!445027 lambda!445011))))

(declare-fun bs!1907600 () Bool)

(assert (= bs!1907600 (and d!2256407 d!2256263)))

(assert (=> bs!1907600 (= lambda!445027 lambda!445012)))

(declare-fun bs!1907601 () Bool)

(assert (= bs!1907601 (and d!2256407 d!2256051)))

(assert (=> bs!1907601 (not (= lambda!445027 lambda!444975))))

(declare-fun bs!1907602 () Bool)

(assert (= bs!1907602 (and d!2256407 d!2256209)))

(assert (=> bs!1907602 (not (= lambda!445027 lambda!445003))))

(declare-fun bs!1907603 () Bool)

(assert (= bs!1907603 (and d!2256407 d!2256391)))

(assert (=> bs!1907603 (= lambda!445027 lambda!445025)))

(declare-fun bs!1907604 () Bool)

(assert (= bs!1907604 (and d!2256407 d!2256211)))

(assert (=> bs!1907604 (not (= lambda!445027 lambda!445006))))

(declare-fun bs!1907605 () Bool)

(assert (= bs!1907605 (and d!2256407 b!7254998)))

(assert (=> bs!1907605 (not (= lambda!445027 lambda!444936))))

(assert (=> d!2256407 (= (nullableZipper!2922 lt!2586681) (exists!4398 lt!2586681 lambda!445027))))

(declare-fun bs!1907606 () Bool)

(assert (= bs!1907606 d!2256407))

(declare-fun m!7936656 () Bool)

(assert (=> bs!1907606 m!7936656))

(assert (=> b!7255123 d!2256407))

(assert (=> b!7255194 d!2256109))

(assert (=> d!2256109 d!2256251))

(assert (=> d!2256035 d!2256251))

(declare-fun bs!1907607 () Bool)

(declare-fun d!2256409 () Bool)

(assert (= bs!1907607 (and d!2256409 d!2256293)))

(declare-fun lambda!445028 () Int)

(assert (=> bs!1907607 (= lambda!445028 lambda!445016)))

(declare-fun bs!1907608 () Bool)

(assert (= bs!1907608 (and d!2256409 d!2256053)))

(assert (=> bs!1907608 (not (= lambda!445028 lambda!444978))))

(declare-fun bs!1907609 () Bool)

(assert (= bs!1907609 (and d!2256409 d!2256217)))

(assert (=> bs!1907609 (= lambda!445028 lambda!445009)))

(declare-fun bs!1907610 () Bool)

(assert (= bs!1907610 (and d!2256409 d!2256279)))

(assert (=> bs!1907610 (= lambda!445028 lambda!445015)))

(declare-fun bs!1907611 () Bool)

(assert (= bs!1907611 (and d!2256409 d!2256297)))

(assert (=> bs!1907611 (= lambda!445028 lambda!445017)))

(declare-fun bs!1907612 () Bool)

(assert (= bs!1907612 (and d!2256409 d!2256407)))

(assert (=> bs!1907612 (= lambda!445028 lambda!445027)))

(declare-fun bs!1907613 () Bool)

(assert (= bs!1907613 (and d!2256409 d!2256231)))

(assert (=> bs!1907613 (not (= lambda!445028 lambda!445011))))

(declare-fun bs!1907614 () Bool)

(assert (= bs!1907614 (and d!2256409 d!2256263)))

(assert (=> bs!1907614 (= lambda!445028 lambda!445012)))

(declare-fun bs!1907615 () Bool)

(assert (= bs!1907615 (and d!2256409 d!2256051)))

(assert (=> bs!1907615 (not (= lambda!445028 lambda!444975))))

(declare-fun bs!1907616 () Bool)

(assert (= bs!1907616 (and d!2256409 d!2256209)))

(assert (=> bs!1907616 (not (= lambda!445028 lambda!445003))))

(declare-fun bs!1907617 () Bool)

(assert (= bs!1907617 (and d!2256409 d!2256391)))

(assert (=> bs!1907617 (= lambda!445028 lambda!445025)))

(declare-fun bs!1907618 () Bool)

(assert (= bs!1907618 (and d!2256409 d!2256211)))

(assert (=> bs!1907618 (not (= lambda!445028 lambda!445006))))

(declare-fun bs!1907619 () Bool)

(assert (= bs!1907619 (and d!2256409 b!7254998)))

(assert (=> bs!1907619 (not (= lambda!445028 lambda!444936))))

(assert (=> d!2256409 (= (nullableZipper!2922 lt!2586676) (exists!4398 lt!2586676 lambda!445028))))

(declare-fun bs!1907620 () Bool)

(assert (= bs!1907620 d!2256409))

(declare-fun m!7936658 () Bool)

(assert (=> bs!1907620 m!7936658))

(assert (=> b!7255197 d!2256409))

(assert (=> d!2256083 d!2256085))

(declare-fun d!2256411 () Bool)

(assert (=> d!2256411 (= (flatMap!2825 lt!2586661 lambda!444937) (dynLambda!28775 lambda!444937 ct1!232))))

(assert (=> d!2256411 true))

(declare-fun _$13!4601 () Unit!163911)

(assert (=> d!2256411 (= (choose!56085 lt!2586661 ct1!232 lambda!444937) _$13!4601)))

(declare-fun b_lambda!278941 () Bool)

(assert (=> (not b_lambda!278941) (not d!2256411)))

(declare-fun bs!1907621 () Bool)

(assert (= bs!1907621 d!2256411))

(assert (=> bs!1907621 m!7935636))

(assert (=> bs!1907621 m!7935958))

(assert (=> d!2256083 d!2256411))

(assert (=> bs!1907410 d!2256087))

(declare-fun d!2256413 () Bool)

(declare-fun c!1349028 () Bool)

(assert (=> d!2256413 (= c!1349028 (isEmpty!40564 (tail!14346 lt!2586673)))))

(declare-fun e!4350645 () Bool)

(assert (=> d!2256413 (= (matchZipper!3570 (derivationStepZipper!3438 lt!2586669 (head!14918 lt!2586673)) (tail!14346 lt!2586673)) e!4350645)))

(declare-fun b!7255641 () Bool)

(assert (=> b!7255641 (= e!4350645 (nullableZipper!2922 (derivationStepZipper!3438 lt!2586669 (head!14918 lt!2586673))))))

(declare-fun b!7255642 () Bool)

(assert (=> b!7255642 (= e!4350645 (matchZipper!3570 (derivationStepZipper!3438 (derivationStepZipper!3438 lt!2586669 (head!14918 lt!2586673)) (head!14918 (tail!14346 lt!2586673))) (tail!14346 (tail!14346 lt!2586673))))))

(assert (= (and d!2256413 c!1349028) b!7255641))

(assert (= (and d!2256413 (not c!1349028)) b!7255642))

(assert (=> d!2256413 m!7935812))

(assert (=> d!2256413 m!7936300))

(assert (=> b!7255641 m!7936018))

(declare-fun m!7936660 () Bool)

(assert (=> b!7255641 m!7936660))

(assert (=> b!7255642 m!7935812))

(assert (=> b!7255642 m!7936304))

(assert (=> b!7255642 m!7936018))

(assert (=> b!7255642 m!7936304))

(declare-fun m!7936662 () Bool)

(assert (=> b!7255642 m!7936662))

(assert (=> b!7255642 m!7935812))

(assert (=> b!7255642 m!7936308))

(assert (=> b!7255642 m!7936662))

(assert (=> b!7255642 m!7936308))

(declare-fun m!7936664 () Bool)

(assert (=> b!7255642 m!7936664))

(assert (=> b!7255202 d!2256413))

(declare-fun bs!1907622 () Bool)

(declare-fun d!2256415 () Bool)

(assert (= bs!1907622 (and d!2256415 d!2256405)))

(declare-fun lambda!445029 () Int)

(assert (=> bs!1907622 (= (= (head!14918 lt!2586673) (head!14918 (t!384623 s1!1971))) (= lambda!445029 lambda!445026))))

(declare-fun bs!1907623 () Bool)

(assert (= bs!1907623 (and d!2256415 d!2256275)))

(assert (=> bs!1907623 (= (= (head!14918 lt!2586673) (head!14918 (t!384623 s1!1971))) (= lambda!445029 lambda!445014))))

(declare-fun bs!1907624 () Bool)

(assert (= bs!1907624 (and d!2256415 d!2256317)))

(assert (=> bs!1907624 (= (= (head!14918 lt!2586673) (head!14918 s1!1971)) (= lambda!445029 lambda!445018))))

(declare-fun bs!1907625 () Bool)

(assert (= bs!1907625 (and d!2256415 d!2256225)))

(assert (=> bs!1907625 (= lambda!445029 lambda!445010)))

(declare-fun bs!1907626 () Bool)

(assert (= bs!1907626 (and d!2256415 b!7254985)))

(assert (=> bs!1907626 (= (= (head!14918 lt!2586673) (h!76885 s1!1971)) (= lambda!445029 lambda!444937))))

(declare-fun bs!1907627 () Bool)

(assert (= bs!1907627 (and d!2256415 d!2256067)))

(assert (=> bs!1907627 (= (= (head!14918 lt!2586673) (h!76885 s1!1971)) (= lambda!445029 lambda!444984))))

(declare-fun bs!1907628 () Bool)

(assert (= bs!1907628 (and d!2256415 d!2256387)))

(assert (=> bs!1907628 (= (= (head!14918 lt!2586673) (head!14918 (t!384623 s1!1971))) (= lambda!445029 lambda!445024))))

(declare-fun bs!1907629 () Bool)

(assert (= bs!1907629 (and d!2256415 d!2256267)))

(assert (=> bs!1907629 (= (= (head!14918 lt!2586673) (head!14918 (t!384623 s1!1971))) (= lambda!445029 lambda!445013))))

(declare-fun bs!1907630 () Bool)

(assert (= bs!1907630 (and d!2256415 d!2256377)))

(assert (=> bs!1907630 (= lambda!445029 lambda!445023)))

(declare-fun bs!1907631 () Bool)

(assert (= bs!1907631 (and d!2256415 d!2256333)))

(assert (=> bs!1907631 (= (= (head!14918 lt!2586673) (head!14918 s2!1849)) (= lambda!445029 lambda!445019))))

(declare-fun bs!1907632 () Bool)

(assert (= bs!1907632 (and d!2256415 d!2256059)))

(assert (=> bs!1907632 (= (= (head!14918 lt!2586673) (h!76885 s1!1971)) (= lambda!445029 lambda!444981))))

(assert (=> d!2256415 true))

(assert (=> d!2256415 (= (derivationStepZipper!3438 lt!2586669 (head!14918 lt!2586673)) (flatMap!2825 lt!2586669 lambda!445029))))

(declare-fun bs!1907633 () Bool)

(assert (= bs!1907633 d!2256415))

(declare-fun m!7936666 () Bool)

(assert (=> bs!1907633 m!7936666))

(assert (=> b!7255202 d!2256415))

(assert (=> b!7255202 d!2256227))

(assert (=> b!7255202 d!2256229))

(declare-fun d!2256417 () Bool)

(declare-fun c!1349029 () Bool)

(assert (=> d!2256417 (= c!1349029 (isEmpty!40564 (tail!14346 lt!2586673)))))

(declare-fun e!4350646 () Bool)

(assert (=> d!2256417 (= (matchZipper!3570 (derivationStepZipper!3438 (set.insert (Context!15201 lt!2586652) (as set.empty (Set Context!15200))) (head!14918 lt!2586673)) (tail!14346 lt!2586673)) e!4350646)))

(declare-fun b!7255643 () Bool)

(assert (=> b!7255643 (= e!4350646 (nullableZipper!2922 (derivationStepZipper!3438 (set.insert (Context!15201 lt!2586652) (as set.empty (Set Context!15200))) (head!14918 lt!2586673))))))

(declare-fun b!7255644 () Bool)

(assert (=> b!7255644 (= e!4350646 (matchZipper!3570 (derivationStepZipper!3438 (derivationStepZipper!3438 (set.insert (Context!15201 lt!2586652) (as set.empty (Set Context!15200))) (head!14918 lt!2586673)) (head!14918 (tail!14346 lt!2586673))) (tail!14346 (tail!14346 lt!2586673))))))

(assert (= (and d!2256417 c!1349029) b!7255643))

(assert (= (and d!2256417 (not c!1349029)) b!7255644))

(assert (=> d!2256417 m!7935812))

(assert (=> d!2256417 m!7936300))

(assert (=> b!7255643 m!7935810))

(declare-fun m!7936668 () Bool)

(assert (=> b!7255643 m!7936668))

(assert (=> b!7255644 m!7935812))

(assert (=> b!7255644 m!7936304))

(assert (=> b!7255644 m!7935810))

(assert (=> b!7255644 m!7936304))

(declare-fun m!7936670 () Bool)

(assert (=> b!7255644 m!7936670))

(assert (=> b!7255644 m!7935812))

(assert (=> b!7255644 m!7936308))

(assert (=> b!7255644 m!7936670))

(assert (=> b!7255644 m!7936308))

(declare-fun m!7936672 () Bool)

(assert (=> b!7255644 m!7936672))

(assert (=> b!7255085 d!2256417))

(declare-fun bs!1907634 () Bool)

(declare-fun d!2256419 () Bool)

(assert (= bs!1907634 (and d!2256419 d!2256405)))

(declare-fun lambda!445030 () Int)

(assert (=> bs!1907634 (= (= (head!14918 lt!2586673) (head!14918 (t!384623 s1!1971))) (= lambda!445030 lambda!445026))))

(declare-fun bs!1907635 () Bool)

(assert (= bs!1907635 (and d!2256419 d!2256275)))

(assert (=> bs!1907635 (= (= (head!14918 lt!2586673) (head!14918 (t!384623 s1!1971))) (= lambda!445030 lambda!445014))))

(declare-fun bs!1907636 () Bool)

(assert (= bs!1907636 (and d!2256419 d!2256317)))

(assert (=> bs!1907636 (= (= (head!14918 lt!2586673) (head!14918 s1!1971)) (= lambda!445030 lambda!445018))))

(declare-fun bs!1907637 () Bool)

(assert (= bs!1907637 (and d!2256419 d!2256225)))

(assert (=> bs!1907637 (= lambda!445030 lambda!445010)))

(declare-fun bs!1907638 () Bool)

(assert (= bs!1907638 (and d!2256419 b!7254985)))

(assert (=> bs!1907638 (= (= (head!14918 lt!2586673) (h!76885 s1!1971)) (= lambda!445030 lambda!444937))))

(declare-fun bs!1907639 () Bool)

(assert (= bs!1907639 (and d!2256419 d!2256387)))

(assert (=> bs!1907639 (= (= (head!14918 lt!2586673) (head!14918 (t!384623 s1!1971))) (= lambda!445030 lambda!445024))))

(declare-fun bs!1907640 () Bool)

(assert (= bs!1907640 (and d!2256419 d!2256267)))

(assert (=> bs!1907640 (= (= (head!14918 lt!2586673) (head!14918 (t!384623 s1!1971))) (= lambda!445030 lambda!445013))))

(declare-fun bs!1907641 () Bool)

(assert (= bs!1907641 (and d!2256419 d!2256377)))

(assert (=> bs!1907641 (= lambda!445030 lambda!445023)))

(declare-fun bs!1907642 () Bool)

(assert (= bs!1907642 (and d!2256419 d!2256415)))

(assert (=> bs!1907642 (= lambda!445030 lambda!445029)))

(declare-fun bs!1907643 () Bool)

(assert (= bs!1907643 (and d!2256419 d!2256067)))

(assert (=> bs!1907643 (= (= (head!14918 lt!2586673) (h!76885 s1!1971)) (= lambda!445030 lambda!444984))))

(declare-fun bs!1907644 () Bool)

(assert (= bs!1907644 (and d!2256419 d!2256333)))

(assert (=> bs!1907644 (= (= (head!14918 lt!2586673) (head!14918 s2!1849)) (= lambda!445030 lambda!445019))))

(declare-fun bs!1907645 () Bool)

(assert (= bs!1907645 (and d!2256419 d!2256059)))

(assert (=> bs!1907645 (= (= (head!14918 lt!2586673) (h!76885 s1!1971)) (= lambda!445030 lambda!444981))))

(assert (=> d!2256419 true))

(assert (=> d!2256419 (= (derivationStepZipper!3438 (set.insert (Context!15201 lt!2586652) (as set.empty (Set Context!15200))) (head!14918 lt!2586673)) (flatMap!2825 (set.insert (Context!15201 lt!2586652) (as set.empty (Set Context!15200))) lambda!445030))))

(declare-fun bs!1907646 () Bool)

(assert (= bs!1907646 d!2256419))

(assert (=> bs!1907646 m!7935668))

(declare-fun m!7936674 () Bool)

(assert (=> bs!1907646 m!7936674))

(assert (=> b!7255085 d!2256419))

(assert (=> b!7255085 d!2256227))

(assert (=> b!7255085 d!2256229))

(declare-fun e!4350648 () Bool)

(declare-fun lt!2586882 () List!70560)

(declare-fun b!7255648 () Bool)

(assert (=> b!7255648 (= e!4350648 (or (not (= (exprs!8100 ct2!328) Nil!70436)) (= lt!2586882 (t!384622 (exprs!8100 lt!2586664)))))))

(declare-fun d!2256421 () Bool)

(assert (=> d!2256421 e!4350648))

(declare-fun res!2942367 () Bool)

(assert (=> d!2256421 (=> (not res!2942367) (not e!4350648))))

(assert (=> d!2256421 (= res!2942367 (= (content!14636 lt!2586882) (set.union (content!14636 (t!384622 (exprs!8100 lt!2586664))) (content!14636 (exprs!8100 ct2!328)))))))

(declare-fun e!4350647 () List!70560)

(assert (=> d!2256421 (= lt!2586882 e!4350647)))

(declare-fun c!1349030 () Bool)

(assert (=> d!2256421 (= c!1349030 (is-Nil!70436 (t!384622 (exprs!8100 lt!2586664))))))

(assert (=> d!2256421 (= (++!16583 (t!384622 (exprs!8100 lt!2586664)) (exprs!8100 ct2!328)) lt!2586882)))

(declare-fun b!7255647 () Bool)

(declare-fun res!2942368 () Bool)

(assert (=> b!7255647 (=> (not res!2942368) (not e!4350648))))

(assert (=> b!7255647 (= res!2942368 (= (size!41734 lt!2586882) (+ (size!41734 (t!384622 (exprs!8100 lt!2586664))) (size!41734 (exprs!8100 ct2!328)))))))

(declare-fun b!7255645 () Bool)

(assert (=> b!7255645 (= e!4350647 (exprs!8100 ct2!328))))

(declare-fun b!7255646 () Bool)

(assert (=> b!7255646 (= e!4350647 (Cons!70436 (h!76884 (t!384622 (exprs!8100 lt!2586664))) (++!16583 (t!384622 (t!384622 (exprs!8100 lt!2586664))) (exprs!8100 ct2!328))))))

(assert (= (and d!2256421 c!1349030) b!7255645))

(assert (= (and d!2256421 (not c!1349030)) b!7255646))

(assert (= (and d!2256421 res!2942367) b!7255647))

(assert (= (and b!7255647 res!2942368) b!7255648))

(declare-fun m!7936676 () Bool)

(assert (=> d!2256421 m!7936676))

(assert (=> d!2256421 m!7936330))

(assert (=> d!2256421 m!7935862))

(declare-fun m!7936678 () Bool)

(assert (=> b!7255647 m!7936678))

(assert (=> b!7255647 m!7936514))

(assert (=> b!7255647 m!7935868))

(declare-fun m!7936680 () Bool)

(assert (=> b!7255646 m!7936680))

(assert (=> b!7255115 d!2256421))

(declare-fun d!2256423 () Bool)

(declare-fun c!1349031 () Bool)

(assert (=> d!2256423 (= c!1349031 (isEmpty!40564 lt!2586673))))

(declare-fun e!4350649 () Bool)

(assert (=> d!2256423 (= (matchZipper!3570 (set.union lt!2586658 lt!2586669) lt!2586673) e!4350649)))

(declare-fun b!7255649 () Bool)

(assert (=> b!7255649 (= e!4350649 (nullableZipper!2922 (set.union lt!2586658 lt!2586669)))))

(declare-fun b!7255650 () Bool)

(assert (=> b!7255650 (= e!4350649 (matchZipper!3570 (derivationStepZipper!3438 (set.union lt!2586658 lt!2586669) (head!14918 lt!2586673)) (tail!14346 lt!2586673)))))

(assert (= (and d!2256423 c!1349031) b!7255649))

(assert (= (and d!2256423 (not c!1349031)) b!7255650))

(assert (=> d!2256423 m!7935804))

(declare-fun m!7936682 () Bool)

(assert (=> b!7255649 m!7936682))

(assert (=> b!7255650 m!7935808))

(assert (=> b!7255650 m!7935808))

(declare-fun m!7936684 () Bool)

(assert (=> b!7255650 m!7936684))

(assert (=> b!7255650 m!7935812))

(assert (=> b!7255650 m!7936684))

(assert (=> b!7255650 m!7935812))

(declare-fun m!7936686 () Bool)

(assert (=> b!7255650 m!7936686))

(assert (=> d!2256101 d!2256423))

(assert (=> d!2256101 d!2256107))

(declare-fun e!4350650 () Bool)

(declare-fun d!2256425 () Bool)

(assert (=> d!2256425 (= (matchZipper!3570 (set.union lt!2586658 lt!2586669) lt!2586673) e!4350650)))

(declare-fun res!2942369 () Bool)

(assert (=> d!2256425 (=> res!2942369 e!4350650)))

(assert (=> d!2256425 (= res!2942369 (matchZipper!3570 lt!2586658 lt!2586673))))

(assert (=> d!2256425 true))

(declare-fun _$48!2544 () Unit!163911)

(assert (=> d!2256425 (= (choose!56087 lt!2586658 lt!2586669 lt!2586673) _$48!2544)))

(declare-fun b!7255651 () Bool)

(assert (=> b!7255651 (= e!4350650 (matchZipper!3570 lt!2586669 lt!2586673))))

(assert (= (and d!2256425 (not res!2942369)) b!7255651))

(assert (=> d!2256425 m!7935994))

(assert (=> d!2256425 m!7935596))

(assert (=> b!7255651 m!7935618))

(assert (=> d!2256101 d!2256425))

(declare-fun bm!661177 () Bool)

(declare-fun call!661182 () (Set Context!15200))

(assert (=> bm!661177 (= call!661182 (derivationStepZipperDown!2654 (h!76884 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586651))))) (Context!15201 (t!384622 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586651)))))) (h!76885 s1!1971)))))

(declare-fun b!7255652 () Bool)

(declare-fun e!4350652 () (Set Context!15200))

(assert (=> b!7255652 (= e!4350652 (as set.empty (Set Context!15200)))))

(declare-fun b!7255653 () Bool)

(declare-fun e!4350651 () Bool)

(assert (=> b!7255653 (= e!4350651 (nullable!7920 (h!76884 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586651)))))))))

(declare-fun d!2256427 () Bool)

(declare-fun c!1349033 () Bool)

(assert (=> d!2256427 (= c!1349033 e!4350651)))

(declare-fun res!2942370 () Bool)

(assert (=> d!2256427 (=> (not res!2942370) (not e!4350651))))

(assert (=> d!2256427 (= res!2942370 (is-Cons!70436 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586651))))))))

(declare-fun e!4350653 () (Set Context!15200))

(assert (=> d!2256427 (= (derivationStepZipperUp!2484 (Context!15201 (t!384622 (exprs!8100 lt!2586651))) (h!76885 s1!1971)) e!4350653)))

(declare-fun b!7255654 () Bool)

(assert (=> b!7255654 (= e!4350653 e!4350652)))

(declare-fun c!1349032 () Bool)

(assert (=> b!7255654 (= c!1349032 (is-Cons!70436 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586651))))))))

(declare-fun b!7255655 () Bool)

(assert (=> b!7255655 (= e!4350653 (set.union call!661182 (derivationStepZipperUp!2484 (Context!15201 (t!384622 (exprs!8100 (Context!15201 (t!384622 (exprs!8100 lt!2586651)))))) (h!76885 s1!1971))))))

(declare-fun b!7255656 () Bool)

(assert (=> b!7255656 (= e!4350652 call!661182)))

(assert (= (and d!2256427 res!2942370) b!7255653))

(assert (= (and d!2256427 c!1349033) b!7255655))

(assert (= (and d!2256427 (not c!1349033)) b!7255654))

(assert (= (and b!7255654 c!1349032) b!7255656))

(assert (= (and b!7255654 (not c!1349032)) b!7255652))

(assert (= (or b!7255655 b!7255656) bm!661177))

(declare-fun m!7936688 () Bool)

(assert (=> bm!661177 m!7936688))

(declare-fun m!7936690 () Bool)

(assert (=> b!7255653 m!7936690))

(declare-fun m!7936692 () Bool)

(assert (=> b!7255655 m!7936692))

(assert (=> b!7255187 d!2256427))

(declare-fun d!2256429 () Bool)

(assert (=> d!2256429 (= (flatMap!2825 lt!2586661 lambda!444981) (choose!56086 lt!2586661 lambda!444981))))

(declare-fun bs!1907647 () Bool)

(assert (= bs!1907647 d!2256429))

(declare-fun m!7936694 () Bool)

(assert (=> bs!1907647 m!7936694))

(assert (=> d!2256059 d!2256429))

(assert (=> bs!1907408 d!2256045))

(declare-fun bs!1907648 () Bool)

(declare-fun d!2256431 () Bool)

(assert (= bs!1907648 (and d!2256431 d!2256293)))

(declare-fun lambda!445031 () Int)

(assert (=> bs!1907648 (= lambda!445031 lambda!445016)))

(declare-fun bs!1907649 () Bool)

(assert (= bs!1907649 (and d!2256431 d!2256409)))

(assert (=> bs!1907649 (= lambda!445031 lambda!445028)))

(declare-fun bs!1907650 () Bool)

(assert (= bs!1907650 (and d!2256431 d!2256053)))

(assert (=> bs!1907650 (not (= lambda!445031 lambda!444978))))

(declare-fun bs!1907651 () Bool)

(assert (= bs!1907651 (and d!2256431 d!2256217)))

(assert (=> bs!1907651 (= lambda!445031 lambda!445009)))

(declare-fun bs!1907652 () Bool)

(assert (= bs!1907652 (and d!2256431 d!2256279)))

(assert (=> bs!1907652 (= lambda!445031 lambda!445015)))

(declare-fun bs!1907653 () Bool)

(assert (= bs!1907653 (and d!2256431 d!2256297)))

(assert (=> bs!1907653 (= lambda!445031 lambda!445017)))

(declare-fun bs!1907654 () Bool)

(assert (= bs!1907654 (and d!2256431 d!2256407)))

(assert (=> bs!1907654 (= lambda!445031 lambda!445027)))

(declare-fun bs!1907655 () Bool)

(assert (= bs!1907655 (and d!2256431 d!2256231)))

(assert (=> bs!1907655 (not (= lambda!445031 lambda!445011))))

(declare-fun bs!1907656 () Bool)

(assert (= bs!1907656 (and d!2256431 d!2256263)))

(assert (=> bs!1907656 (= lambda!445031 lambda!445012)))

(declare-fun bs!1907657 () Bool)

(assert (= bs!1907657 (and d!2256431 d!2256051)))

(assert (=> bs!1907657 (not (= lambda!445031 lambda!444975))))

(declare-fun bs!1907658 () Bool)

(assert (= bs!1907658 (and d!2256431 d!2256209)))

(assert (=> bs!1907658 (not (= lambda!445031 lambda!445003))))

(declare-fun bs!1907659 () Bool)

(assert (= bs!1907659 (and d!2256431 d!2256391)))

(assert (=> bs!1907659 (= lambda!445031 lambda!445025)))

(declare-fun bs!1907660 () Bool)

(assert (= bs!1907660 (and d!2256431 d!2256211)))

(assert (=> bs!1907660 (not (= lambda!445031 lambda!445006))))

(declare-fun bs!1907661 () Bool)

(assert (= bs!1907661 (and d!2256431 b!7254998)))

(assert (=> bs!1907661 (not (= lambda!445031 lambda!444936))))

(assert (=> d!2256431 (= (nullableZipper!2922 lt!2586661) (exists!4398 lt!2586661 lambda!445031))))

(declare-fun bs!1907662 () Bool)

(assert (= bs!1907662 d!2256431))

(declare-fun m!7936696 () Bool)

(assert (=> bs!1907662 m!7936696))

(assert (=> b!7255127 d!2256431))

(assert (=> d!2256069 d!2256329))

(declare-fun d!2256433 () Bool)

(declare-fun lt!2586883 () Int)

(assert (=> d!2256433 (>= lt!2586883 0)))

(declare-fun e!4350654 () Int)

(assert (=> d!2256433 (= lt!2586883 e!4350654)))

(declare-fun c!1349034 () Bool)

(assert (=> d!2256433 (= c!1349034 (is-Nil!70436 lt!2586814))))

(assert (=> d!2256433 (= (size!41734 lt!2586814) lt!2586883)))

(declare-fun b!7255657 () Bool)

(assert (=> b!7255657 (= e!4350654 0)))

(declare-fun b!7255658 () Bool)

(assert (=> b!7255658 (= e!4350654 (+ 1 (size!41734 (t!384622 lt!2586814))))))

(assert (= (and d!2256433 c!1349034) b!7255657))

(assert (= (and d!2256433 (not c!1349034)) b!7255658))

(declare-fun m!7936698 () Bool)

(assert (=> b!7255658 m!7936698))

(assert (=> b!7255133 d!2256433))

(declare-fun d!2256435 () Bool)

(declare-fun lt!2586884 () Int)

(assert (=> d!2256435 (>= lt!2586884 0)))

(declare-fun e!4350655 () Int)

(assert (=> d!2256435 (= lt!2586884 e!4350655)))

(declare-fun c!1349035 () Bool)

(assert (=> d!2256435 (= c!1349035 (is-Nil!70436 (exprs!8100 ct1!232)))))

(assert (=> d!2256435 (= (size!41734 (exprs!8100 ct1!232)) lt!2586884)))

(declare-fun b!7255659 () Bool)

(assert (=> b!7255659 (= e!4350655 0)))

(declare-fun b!7255660 () Bool)

(assert (=> b!7255660 (= e!4350655 (+ 1 (size!41734 (t!384622 (exprs!8100 ct1!232)))))))

(assert (= (and d!2256435 c!1349035) b!7255659))

(assert (= (and d!2256435 (not c!1349035)) b!7255660))

(assert (=> b!7255660 m!7936466))

(assert (=> b!7255133 d!2256435))

(assert (=> b!7255133 d!2256345))

(declare-fun bs!1907663 () Bool)

(declare-fun d!2256437 () Bool)

(assert (= bs!1907663 (and d!2256437 d!2256293)))

(declare-fun lambda!445032 () Int)

(assert (=> bs!1907663 (= lambda!445032 lambda!445016)))

(declare-fun bs!1907664 () Bool)

(assert (= bs!1907664 (and d!2256437 d!2256409)))

(assert (=> bs!1907664 (= lambda!445032 lambda!445028)))

(declare-fun bs!1907665 () Bool)

(assert (= bs!1907665 (and d!2256437 d!2256053)))

(assert (=> bs!1907665 (not (= lambda!445032 lambda!444978))))

(declare-fun bs!1907666 () Bool)

(assert (= bs!1907666 (and d!2256437 d!2256217)))

(assert (=> bs!1907666 (= lambda!445032 lambda!445009)))

(declare-fun bs!1907667 () Bool)

(assert (= bs!1907667 (and d!2256437 d!2256279)))

(assert (=> bs!1907667 (= lambda!445032 lambda!445015)))

(declare-fun bs!1907668 () Bool)

(assert (= bs!1907668 (and d!2256437 d!2256407)))

(assert (=> bs!1907668 (= lambda!445032 lambda!445027)))

(declare-fun bs!1907669 () Bool)

(assert (= bs!1907669 (and d!2256437 d!2256231)))

(assert (=> bs!1907669 (not (= lambda!445032 lambda!445011))))

(declare-fun bs!1907670 () Bool)

(assert (= bs!1907670 (and d!2256437 d!2256263)))

(assert (=> bs!1907670 (= lambda!445032 lambda!445012)))

(declare-fun bs!1907671 () Bool)

(assert (= bs!1907671 (and d!2256437 d!2256051)))

(assert (=> bs!1907671 (not (= lambda!445032 lambda!444975))))

(declare-fun bs!1907672 () Bool)

(assert (= bs!1907672 (and d!2256437 d!2256209)))

(assert (=> bs!1907672 (not (= lambda!445032 lambda!445003))))

(declare-fun bs!1907673 () Bool)

(assert (= bs!1907673 (and d!2256437 d!2256391)))

(assert (=> bs!1907673 (= lambda!445032 lambda!445025)))

(declare-fun bs!1907674 () Bool)

(assert (= bs!1907674 (and d!2256437 d!2256297)))

(assert (=> bs!1907674 (= lambda!445032 lambda!445017)))

(declare-fun bs!1907675 () Bool)

(assert (= bs!1907675 (and d!2256437 d!2256431)))

(assert (=> bs!1907675 (= lambda!445032 lambda!445031)))

(declare-fun bs!1907676 () Bool)

(assert (= bs!1907676 (and d!2256437 d!2256211)))

(assert (=> bs!1907676 (not (= lambda!445032 lambda!445006))))

(declare-fun bs!1907677 () Bool)

(assert (= bs!1907677 (and d!2256437 b!7254998)))

(assert (=> bs!1907677 (not (= lambda!445032 lambda!444936))))

(assert (=> d!2256437 (= (nullableZipper!2922 (set.insert ct2!328 (as set.empty (Set Context!15200)))) (exists!4398 (set.insert ct2!328 (as set.empty (Set Context!15200))) lambda!445032))))

(declare-fun bs!1907678 () Bool)

(assert (= bs!1907678 d!2256437))

(assert (=> bs!1907678 m!7935662))

(declare-fun m!7936700 () Bool)

(assert (=> bs!1907678 m!7936700))

(assert (=> b!7255067 d!2256437))

(declare-fun b!7255672 () Bool)

(declare-fun e!4350658 () Bool)

(declare-fun tp!2038103 () Bool)

(declare-fun tp!2038100 () Bool)

(assert (=> b!7255672 (= e!4350658 (and tp!2038103 tp!2038100))))

(declare-fun b!7255673 () Bool)

(declare-fun tp!2038099 () Bool)

(assert (=> b!7255673 (= e!4350658 tp!2038099)))

(declare-fun b!7255671 () Bool)

(assert (=> b!7255671 (= e!4350658 tp_is_empty!46785)))

(assert (=> b!7255214 (= tp!2038061 e!4350658)))

(declare-fun b!7255674 () Bool)

(declare-fun tp!2038102 () Bool)

(declare-fun tp!2038101 () Bool)

(assert (=> b!7255674 (= e!4350658 (and tp!2038102 tp!2038101))))

(assert (= (and b!7255214 (is-ElementMatch!18660 (h!76884 (exprs!8100 ct1!232)))) b!7255671))

(assert (= (and b!7255214 (is-Concat!27505 (h!76884 (exprs!8100 ct1!232)))) b!7255672))

(assert (= (and b!7255214 (is-Star!18660 (h!76884 (exprs!8100 ct1!232)))) b!7255673))

(assert (= (and b!7255214 (is-Union!18660 (h!76884 (exprs!8100 ct1!232)))) b!7255674))

(declare-fun b!7255675 () Bool)

(declare-fun e!4350659 () Bool)

(declare-fun tp!2038104 () Bool)

(declare-fun tp!2038105 () Bool)

(assert (=> b!7255675 (= e!4350659 (and tp!2038104 tp!2038105))))

(assert (=> b!7255214 (= tp!2038062 e!4350659)))

(assert (= (and b!7255214 (is-Cons!70436 (t!384622 (exprs!8100 ct1!232)))) b!7255675))

(declare-fun b!7255677 () Bool)

(declare-fun e!4350660 () Bool)

(declare-fun tp!2038110 () Bool)

(declare-fun tp!2038107 () Bool)

(assert (=> b!7255677 (= e!4350660 (and tp!2038110 tp!2038107))))

(declare-fun b!7255678 () Bool)

(declare-fun tp!2038106 () Bool)

(assert (=> b!7255678 (= e!4350660 tp!2038106)))

(declare-fun b!7255676 () Bool)

(assert (=> b!7255676 (= e!4350660 tp_is_empty!46785)))

(assert (=> b!7255212 (= tp!2038058 e!4350660)))

(declare-fun b!7255679 () Bool)

(declare-fun tp!2038109 () Bool)

(declare-fun tp!2038108 () Bool)

(assert (=> b!7255679 (= e!4350660 (and tp!2038109 tp!2038108))))

(assert (= (and b!7255212 (is-ElementMatch!18660 (h!76884 (exprs!8100 ct2!328)))) b!7255676))

(assert (= (and b!7255212 (is-Concat!27505 (h!76884 (exprs!8100 ct2!328)))) b!7255677))

(assert (= (and b!7255212 (is-Star!18660 (h!76884 (exprs!8100 ct2!328)))) b!7255678))

(assert (= (and b!7255212 (is-Union!18660 (h!76884 (exprs!8100 ct2!328)))) b!7255679))

(declare-fun b!7255680 () Bool)

(declare-fun e!4350661 () Bool)

(declare-fun tp!2038111 () Bool)

(declare-fun tp!2038112 () Bool)

(assert (=> b!7255680 (= e!4350661 (and tp!2038111 tp!2038112))))

(assert (=> b!7255212 (= tp!2038059 e!4350661)))

(assert (= (and b!7255212 (is-Cons!70436 (t!384622 (exprs!8100 ct2!328)))) b!7255680))

(declare-fun b!7255681 () Bool)

(declare-fun e!4350662 () Bool)

(declare-fun tp!2038113 () Bool)

(assert (=> b!7255681 (= e!4350662 (and tp_is_empty!46785 tp!2038113))))

(assert (=> b!7255213 (= tp!2038060 e!4350662)))

(assert (= (and b!7255213 (is-Cons!70437 (t!384623 (t!384623 s1!1971)))) b!7255681))

(declare-fun b!7255682 () Bool)

(declare-fun e!4350663 () Bool)

(declare-fun tp!2038114 () Bool)

(assert (=> b!7255682 (= e!4350663 (and tp_is_empty!46785 tp!2038114))))

(assert (=> b!7255207 (= tp!2038053 e!4350663)))

(assert (= (and b!7255207 (is-Cons!70437 (t!384623 (t!384623 s2!1849)))) b!7255682))

(declare-fun b_lambda!278943 () Bool)

(assert (= b_lambda!278921 (or d!2256065 b_lambda!278943)))

(declare-fun bs!1907679 () Bool)

(declare-fun d!2256439 () Bool)

(assert (= bs!1907679 (and d!2256439 d!2256065)))

(declare-fun validRegex!9547 (Regex!18660) Bool)

(assert (=> bs!1907679 (= (dynLambda!28779 lambda!444983 (h!76884 (exprs!8100 ct2!328))) (validRegex!9547 (h!76884 (exprs!8100 ct2!328))))))

(declare-fun m!7936702 () Bool)

(assert (=> bs!1907679 m!7936702))

(assert (=> b!7255458 d!2256439))

(declare-fun b_lambda!278945 () Bool)

(assert (= b_lambda!278919 (or d!2256025 b_lambda!278945)))

(declare-fun bs!1907680 () Bool)

(declare-fun d!2256441 () Bool)

(assert (= bs!1907680 (and d!2256441 d!2256025)))

(assert (=> bs!1907680 (= (dynLambda!28779 lambda!444969 (h!76884 (exprs!8100 lt!2586651))) (validRegex!9547 (h!76884 (exprs!8100 lt!2586651))))))

(declare-fun m!7936704 () Bool)

(assert (=> bs!1907680 m!7936704))

(assert (=> b!7255452 d!2256441))

(declare-fun b_lambda!278947 () Bool)

(assert (= b_lambda!278927 (or b!7254995 b_lambda!278947)))

(declare-fun bs!1907681 () Bool)

(declare-fun d!2256443 () Bool)

(assert (= bs!1907681 (and d!2256443 b!7254995)))

(assert (=> bs!1907681 (= (dynLambda!28779 lambda!444935 (h!76884 (++!16583 (exprs!8100 ct1!232) (exprs!8100 ct2!328)))) (validRegex!9547 (h!76884 (++!16583 (exprs!8100 ct1!232) (exprs!8100 ct2!328)))))))

(declare-fun m!7936706 () Bool)

(assert (=> bs!1907681 m!7936706))

(assert (=> b!7255516 d!2256443))

(declare-fun b_lambda!278949 () Bool)

(assert (= b_lambda!278929 (or b!7254995 b_lambda!278949)))

(declare-fun bs!1907682 () Bool)

(declare-fun d!2256445 () Bool)

(assert (= bs!1907682 (and d!2256445 b!7254995)))

(assert (=> bs!1907682 (= (dynLambda!28779 lambda!444935 (h!76884 (exprs!8100 ct1!232))) (validRegex!9547 (h!76884 (exprs!8100 ct1!232))))))

(declare-fun m!7936708 () Bool)

(assert (=> bs!1907682 m!7936708))

(assert (=> b!7255518 d!2256445))

(declare-fun b_lambda!278951 () Bool)

(assert (= b_lambda!278931 (or b!7254985 b_lambda!278951)))

(assert (=> d!2256367 d!2256115))

(declare-fun b_lambda!278953 () Bool)

(assert (= b_lambda!278935 (or b!7254998 b_lambda!278953)))

(declare-fun bs!1907683 () Bool)

(declare-fun d!2256447 () Bool)

(assert (= bs!1907683 (and d!2256447 b!7254998)))

(assert (=> bs!1907683 (= (dynLambda!28773 lambda!444936 lt!2586876) (matchZipper!3570 (set.insert lt!2586876 (as set.empty (Set Context!15200))) (t!384623 s1!1971)))))

(declare-fun m!7936710 () Bool)

(assert (=> bs!1907683 m!7936710))

(assert (=> bs!1907683 m!7936710))

(declare-fun m!7936712 () Bool)

(assert (=> bs!1907683 m!7936712))

(assert (=> d!2256371 d!2256447))

(declare-fun b_lambda!278955 () Bool)

(assert (= b_lambda!278923 (or b!7254995 b_lambda!278955)))

(declare-fun bs!1907684 () Bool)

(declare-fun d!2256449 () Bool)

(assert (= bs!1907684 (and d!2256449 b!7254995)))

(assert (=> bs!1907684 (= (dynLambda!28779 lambda!444935 (h!76884 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328)))) (validRegex!9547 (h!76884 (++!16583 (exprs!8100 lt!2586664) (exprs!8100 ct2!328)))))))

(declare-fun m!7936714 () Bool)

(assert (=> bs!1907684 m!7936714))

(assert (=> b!7255465 d!2256449))

(declare-fun b_lambda!278957 () Bool)

(assert (= b_lambda!278941 (or b!7254985 b_lambda!278957)))

(assert (=> d!2256411 d!2256111))

(declare-fun b_lambda!278959 () Bool)

(assert (= b_lambda!278933 (or b!7254998 b_lambda!278959)))

(declare-fun bs!1907685 () Bool)

(declare-fun d!2256451 () Bool)

(assert (= bs!1907685 (and d!2256451 b!7254998)))

(assert (=> bs!1907685 (= (dynLambda!28773 lambda!444936 (h!76886 (toList!11489 lt!2586681))) (matchZipper!3570 (set.insert (h!76886 (toList!11489 lt!2586681)) (as set.empty (Set Context!15200))) (t!384623 s1!1971)))))

(declare-fun m!7936716 () Bool)

(assert (=> bs!1907685 m!7936716))

(assert (=> bs!1907685 m!7936716))

(declare-fun m!7936718 () Bool)

(assert (=> bs!1907685 m!7936718))

(assert (=> b!7255601 d!2256451))

(declare-fun b_lambda!278961 () Bool)

(assert (= b_lambda!278939 (or d!2256051 b_lambda!278961)))

(declare-fun bs!1907686 () Bool)

(declare-fun d!2256453 () Bool)

(assert (= bs!1907686 (and d!2256453 d!2256051)))

(assert (=> bs!1907686 (= (dynLambda!28773 lambda!444975 (h!76886 lt!2586667)) (not (dynLambda!28773 lambda!444936 (h!76886 lt!2586667))))))

(declare-fun b_lambda!278967 () Bool)

(assert (=> (not b_lambda!278967) (not bs!1907686)))

(declare-fun m!7936720 () Bool)

(assert (=> bs!1907686 m!7936720))

(assert (=> b!7255624 d!2256453))

(declare-fun b_lambda!278963 () Bool)

(assert (= b_lambda!278925 (or b!7254995 b_lambda!278963)))

(declare-fun bs!1907687 () Bool)

(declare-fun d!2256455 () Bool)

(assert (= bs!1907687 (and d!2256455 b!7254995)))

(assert (=> bs!1907687 (= (dynLambda!28779 lambda!444935 (h!76884 (exprs!8100 lt!2586664))) (validRegex!9547 (h!76884 (exprs!8100 lt!2586664))))))

(declare-fun m!7936722 () Bool)

(assert (=> bs!1907687 m!7936722))

(assert (=> b!7255467 d!2256455))

(declare-fun b_lambda!278965 () Bool)

(assert (= b_lambda!278937 (or d!2256063 b_lambda!278965)))

(declare-fun bs!1907688 () Bool)

(declare-fun d!2256457 () Bool)

(assert (= bs!1907688 (and d!2256457 d!2256063)))

(assert (=> bs!1907688 (= (dynLambda!28779 lambda!444982 (h!76884 (exprs!8100 ct1!232))) (validRegex!9547 (h!76884 (exprs!8100 ct1!232))))))

(assert (=> bs!1907688 m!7936708))

(assert (=> b!7255605 d!2256457))

(push 1)

(assert (not bs!1907683))

(assert (not b!7255653))

(assert (not b!7255680))

(assert (not b!7255643))

(assert (not b!7255585))

(assert (not d!2256403))

(assert (not d!2256419))

(assert (not bm!661150))

(assert (not b!7255468))

(assert (not b!7255522))

(assert (not d!2256333))

(assert (not b!7255420))

(assert (not bs!1907685))

(assert (not b!7255508))

(assert (not b!7255658))

(assert (not b!7255626))

(assert (not b_lambda!278953))

(assert (not b_lambda!278901))

(assert (not b_lambda!278961))

(assert (not d!2256211))

(assert (not b!7255539))

(assert (not b!7255455))

(assert (not d!2256233))

(assert (not b!7255565))

(assert (not b!7255651))

(assert (not b!7255639))

(assert (not b_lambda!278903))

(assert (not d!2256415))

(assert (not b!7255674))

(assert (not b!7255638))

(assert (not bm!661156))

(assert tp_is_empty!46785)

(assert (not d!2256377))

(assert (not b!7255481))

(assert (not bm!661127))

(assert (not b!7255514))

(assert (not bm!661164))

(assert (not b!7255603))

(assert (not d!2256423))

(assert (not b_lambda!278951))

(assert (not d!2256285))

(assert (not d!2256369))

(assert (not b!7255646))

(assert (not bm!661171))

(assert (not d!2256391))

(assert (not d!2256353))

(assert (not d!2256351))

(assert (not bm!661144))

(assert (not b!7255647))

(assert (not b!7255673))

(assert (not b!7255415))

(assert (not b_lambda!278905))

(assert (not b!7255548))

(assert (not b!7255417))

(assert (not b!7255456))

(assert (not b!7255545))

(assert (not d!2256407))

(assert (not bm!661131))

(assert (not d!2256405))

(assert (not d!2256247))

(assert (not bs!1907681))

(assert (not d!2256213))

(assert (not b!7255625))

(assert (not b!7255677))

(assert (not b!7255627))

(assert (not bm!661139))

(assert (not b!7255519))

(assert (not bm!661128))

(assert (not b!7255512))

(assert (not d!2256317))

(assert (not b_lambda!278943))

(assert (not b!7255454))

(assert (not b!7255614))

(assert (not bm!661134))

(assert (not bm!661137))

(assert (not b!7255547))

(assert (not b_lambda!278945))

(assert (not d!2256325))

(assert (not b!7255463))

(assert (not b!7255509))

(assert (not b!7255554))

(assert (not b!7255469))

(assert (not d!2256297))

(assert (not d!2256413))

(assert (not d!2256267))

(assert (not b!7255378))

(assert (not b!7255376))

(assert (not bm!661177))

(assert (not bm!661159))

(assert (not d!2256339))

(assert (not b!7255459))

(assert (not bm!661146))

(assert (not b!7255523))

(assert (not b!7255470))

(assert (not bm!661120))

(assert (not b_lambda!278955))

(assert (not b!7255607))

(assert (not b!7255520))

(assert (not d!2256279))

(assert (not bm!661162))

(assert (not b!7255681))

(assert (not b!7255445))

(assert (not d!2256331))

(assert (not b!7255489))

(assert (not d!2256417))

(assert (not b!7255521))

(assert (not d!2256223))

(assert (not d!2256315))

(assert (not d!2256385))

(assert (not b!7255479))

(assert (not b!7255447))

(assert (not d!2256349))

(assert (not bm!661165))

(assert (not b!7255383))

(assert (not b!7255650))

(assert (not b!7255374))

(assert (not b_lambda!278967))

(assert (not b!7255515))

(assert (not d!2256375))

(assert (not bm!661126))

(assert (not b!7255678))

(assert (not d!2256275))

(assert (not bm!661153))

(assert (not b!7255660))

(assert (not bs!1907688))

(assert (not d!2256239))

(assert (not d!2256365))

(assert (not b!7255641))

(assert (not b!7255499))

(assert (not d!2256265))

(assert (not d!2256387))

(assert (not b!7255634))

(assert (not b!7255380))

(assert (not d!2256355))

(assert (not bs!1907684))

(assert (not b!7255386))

(assert (not b!7255583))

(assert (not b_lambda!278963))

(assert (not b!7255636))

(assert (not d!2256225))

(assert (not d!2256289))

(assert (not b!7255546))

(assert (not b!7255427))

(assert (not bm!661125))

(assert (not d!2256437))

(assert (not d!2256429))

(assert (not b!7255413))

(assert (not setNonEmpty!53599))

(assert (not b!7255517))

(assert (not b!7255644))

(assert (not b!7255649))

(assert (not bs!1907687))

(assert (not bm!661158))

(assert (not b!7255672))

(assert (not b!7255655))

(assert (not b!7255642))

(assert (not b!7255679))

(assert (not bm!661140))

(assert (not bs!1907680))

(assert (not b!7255473))

(assert (not b!7255531))

(assert (not d!2256389))

(assert (not bs!1907682))

(assert (not bm!661172))

(assert (not d!2256411))

(assert (not b!7255533))

(assert (not bm!661133))

(assert (not b!7255483))

(assert (not b!7255438))

(assert (not d!2256371))

(assert (not b!7255457))

(assert (not b!7255507))

(assert (not d!2256293))

(assert (not b!7255640))

(assert (not b!7255367))

(assert (not bm!661141))

(assert (not bm!661152))

(assert (not b!7255600))

(assert (not d!2256209))

(assert (not b!7255368))

(assert (not b!7255461))

(assert (not d!2256231))

(assert (not d!2256263))

(assert (not bs!1907679))

(assert (not b!7255500))

(assert (not b!7255606))

(assert (not b!7255682))

(assert (not b!7255453))

(assert (not d!2256425))

(assert (not d!2256261))

(assert (not b!7255466))

(assert (not b_lambda!278965))

(assert (not b!7255576))

(assert (not bm!661175))

(assert (not bm!661168))

(assert (not b!7255608))

(assert (not d!2256309))

(assert (not d!2256431))

(assert (not b!7255529))

(assert (not b!7255511))

(assert (not b!7255628))

(assert (not d!2256311))

(assert (not d!2256291))

(assert (not b!7255419))

(assert (not b!7255382))

(assert (not d!2256409))

(assert (not b_lambda!278957))

(assert (not setNonEmpty!53600))

(assert (not bm!661170))

(assert (not d!2256421))

(assert (not d!2256367))

(assert (not d!2256217))

(assert (not b!7255602))

(assert (not b_lambda!278947))

(assert (not b_lambda!278959))

(assert (not d!2256273))

(assert (not bm!661147))

(assert (not b_lambda!278949))

(assert (not b!7255675))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

