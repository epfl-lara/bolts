; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!702834 () Bool)

(assert start!702834)

(declare-fun b!7237487 () Bool)

(assert (=> b!7237487 true))

(declare-fun b!7237481 () Bool)

(assert (=> b!7237481 true))

(declare-fun b!7237474 () Bool)

(declare-fun e!4339032 () Bool)

(declare-fun tp!2034777 () Bool)

(assert (=> b!7237474 (= e!4339032 tp!2034777)))

(declare-fun b!7237475 () Bool)

(declare-datatypes ((Unit!163602 0))(
  ( (Unit!163603) )
))
(declare-fun e!4339037 () Unit!163602)

(declare-fun Unit!163604 () Unit!163602)

(assert (=> b!7237475 (= e!4339037 Unit!163604)))

(declare-fun b!7237476 () Bool)

(declare-fun e!4339028 () Bool)

(declare-fun tp_is_empty!46529 () Bool)

(declare-fun tp!2034780 () Bool)

(assert (=> b!7237476 (= e!4339028 (and tp_is_empty!46529 tp!2034780))))

(declare-fun b!7237477 () Bool)

(declare-fun e!4339033 () Bool)

(declare-fun e!4339034 () Bool)

(assert (=> b!7237477 (= e!4339033 e!4339034)))

(declare-fun res!2936177 () Bool)

(assert (=> b!7237477 (=> res!2936177 e!4339034)))

(declare-datatypes ((C!37338 0))(
  ( (C!37339 (val!28617 Int)) )
))
(declare-datatypes ((Regex!18532 0))(
  ( (ElementMatch!18532 (c!1343477 C!37338)) (Concat!27377 (regOne!37576 Regex!18532) (regTwo!37576 Regex!18532)) (EmptyExpr!18532) (Star!18532 (reg!18861 Regex!18532)) (EmptyLang!18532) (Union!18532 (regOne!37577 Regex!18532) (regTwo!37577 Regex!18532)) )
))
(declare-datatypes ((List!70204 0))(
  ( (Nil!70080) (Cons!70080 (h!76528 Regex!18532) (t!384255 List!70204)) )
))
(declare-fun lt!2576726 () List!70204)

(declare-fun isEmpty!40389 (List!70204) Bool)

(assert (=> b!7237477 (= res!2936177 (isEmpty!40389 lt!2576726))))

(declare-fun lambda!440754 () Int)

(declare-datatypes ((Context!14944 0))(
  ( (Context!14945 (exprs!7972 List!70204)) )
))
(declare-fun ct1!232 () Context!14944)

(declare-fun lt!2576738 () Unit!163602)

(declare-fun ct2!328 () Context!14944)

(declare-fun lemmaConcatPreservesForall!1341 (List!70204 List!70204 Int) Unit!163602)

(assert (=> b!7237477 (= lt!2576738 (lemmaConcatPreservesForall!1341 (exprs!7972 ct1!232) (exprs!7972 ct2!328) lambda!440754))))

(declare-fun lt!2576721 () (Set Context!14944))

(declare-fun lt!2576747 () Context!14944)

(declare-datatypes ((List!70205 0))(
  ( (Nil!70081) (Cons!70081 (h!76529 C!37338) (t!384256 List!70205)) )
))
(declare-fun s1!1971 () List!70205)

(declare-fun derivationStepZipperUp!2406 (Context!14944 C!37338) (Set Context!14944))

(assert (=> b!7237477 (= lt!2576721 (derivationStepZipperUp!2406 lt!2576747 (h!76529 s1!1971)))))

(declare-fun lt!2576720 () Unit!163602)

(assert (=> b!7237477 (= lt!2576720 (lemmaConcatPreservesForall!1341 (exprs!7972 ct1!232) (exprs!7972 ct2!328) lambda!440754))))

(declare-fun lt!2576739 () (Set Context!14944))

(declare-fun lt!2576745 () Context!14944)

(declare-fun derivationStepZipperDown!2576 (Regex!18532 Context!14944 C!37338) (Set Context!14944))

(assert (=> b!7237477 (= lt!2576739 (derivationStepZipperDown!2576 (h!76528 (exprs!7972 ct1!232)) lt!2576745 (h!76529 s1!1971)))))

(declare-fun tail!14175 (List!70204) List!70204)

(assert (=> b!7237477 (= lt!2576745 (Context!14945 (tail!14175 (exprs!7972 ct1!232))))))

(declare-fun b!7237478 () Bool)

(declare-fun res!2936176 () Bool)

(declare-fun e!4339025 () Bool)

(assert (=> b!7237478 (=> (not res!2936176) (not e!4339025))))

(declare-fun s2!1849 () List!70205)

(declare-fun matchZipper!3442 ((Set Context!14944) List!70205) Bool)

(assert (=> b!7237478 (= res!2936176 (matchZipper!3442 (set.insert ct2!328 (as set.empty (Set Context!14944))) s2!1849))))

(declare-fun b!7237479 () Bool)

(declare-fun e!4339036 () Bool)

(declare-fun tp!2034779 () Bool)

(assert (=> b!7237479 (= e!4339036 (and tp_is_empty!46529 tp!2034779))))

(declare-fun b!7237480 () Bool)

(declare-fun Unit!163605 () Unit!163602)

(assert (=> b!7237480 (= e!4339037 Unit!163605)))

(declare-fun lt!2576730 () Unit!163602)

(assert (=> b!7237480 (= lt!2576730 (lemmaConcatPreservesForall!1341 (exprs!7972 ct1!232) (exprs!7972 ct2!328) lambda!440754))))

(declare-fun lt!2576723 () (Set Context!14944))

(assert (=> b!7237480 (= lt!2576723 (derivationStepZipperUp!2406 lt!2576745 (h!76529 s1!1971)))))

(declare-fun lt!2576740 () Unit!163602)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1679 ((Set Context!14944) (Set Context!14944) List!70205) Unit!163602)

(assert (=> b!7237480 (= lt!2576740 (lemmaZipperConcatMatchesSameAsBothZippers!1679 lt!2576739 lt!2576723 (t!384256 s1!1971)))))

(declare-fun res!2936172 () Bool)

(assert (=> b!7237480 (= res!2936172 (matchZipper!3442 lt!2576739 (t!384256 s1!1971)))))

(declare-fun e!4339027 () Bool)

(assert (=> b!7237480 (=> res!2936172 e!4339027)))

(assert (=> b!7237480 (= (matchZipper!3442 (set.union lt!2576739 lt!2576723) (t!384256 s1!1971)) e!4339027)))

(declare-fun lt!2576736 () Unit!163602)

(assert (=> b!7237480 (= lt!2576736 (lemmaConcatPreservesForall!1341 (exprs!7972 ct1!232) (exprs!7972 ct2!328) lambda!440754))))

(declare-fun lt!2576728 () (Set Context!14944))

(declare-fun lt!2576719 () Context!14944)

(assert (=> b!7237480 (= lt!2576728 (derivationStepZipperUp!2406 lt!2576719 (h!76529 s1!1971)))))

(declare-fun lt!2576744 () List!70205)

(declare-fun lt!2576734 () (Set Context!14944))

(declare-fun lt!2576718 () Unit!163602)

(assert (=> b!7237480 (= lt!2576718 (lemmaZipperConcatMatchesSameAsBothZippers!1679 lt!2576734 lt!2576728 lt!2576744))))

(declare-fun res!2936179 () Bool)

(assert (=> b!7237480 (= res!2936179 (matchZipper!3442 lt!2576734 lt!2576744))))

(declare-fun e!4339029 () Bool)

(assert (=> b!7237480 (=> res!2936179 e!4339029)))

(assert (=> b!7237480 (= (matchZipper!3442 (set.union lt!2576734 lt!2576728) lt!2576744) e!4339029)))

(declare-fun ++!16364 (List!70205 List!70205) List!70205)

(assert (=> b!7237481 (= e!4339034 (not (= (++!16364 s1!1971 s2!1849) Nil!70081)))))

(declare-fun lt!2576741 () Unit!163602)

(assert (=> b!7237481 (= lt!2576741 e!4339037)))

(declare-fun c!1343476 () Bool)

(declare-fun nullable!7845 (Regex!18532) Bool)

(assert (=> b!7237481 (= c!1343476 (nullable!7845 (h!76528 (exprs!7972 ct1!232))))))

(declare-fun lambda!440756 () Int)

(declare-fun lt!2576731 () (Set Context!14944))

(declare-fun flatMap!2736 ((Set Context!14944) Int) (Set Context!14944))

(assert (=> b!7237481 (= (flatMap!2736 lt!2576731 lambda!440756) (derivationStepZipperUp!2406 lt!2576747 (h!76529 s1!1971)))))

(declare-fun lt!2576746 () Unit!163602)

(declare-fun lemmaFlatMapOnSingletonSet!2163 ((Set Context!14944) Context!14944 Int) Unit!163602)

(assert (=> b!7237481 (= lt!2576746 (lemmaFlatMapOnSingletonSet!2163 lt!2576731 lt!2576747 lambda!440756))))

(declare-fun lt!2576727 () Unit!163602)

(assert (=> b!7237481 (= lt!2576727 (lemmaConcatPreservesForall!1341 (exprs!7972 ct1!232) (exprs!7972 ct2!328) lambda!440754))))

(declare-fun lt!2576716 () (Set Context!14944))

(assert (=> b!7237481 (= (flatMap!2736 lt!2576716 lambda!440756) (derivationStepZipperUp!2406 ct1!232 (h!76529 s1!1971)))))

(declare-fun lt!2576743 () Unit!163602)

(assert (=> b!7237481 (= lt!2576743 (lemmaFlatMapOnSingletonSet!2163 lt!2576716 ct1!232 lambda!440756))))

(assert (=> b!7237481 (= lt!2576734 (derivationStepZipperDown!2576 (h!76528 (exprs!7972 ct1!232)) lt!2576719 (h!76529 s1!1971)))))

(assert (=> b!7237481 (= lt!2576719 (Context!14945 (tail!14175 lt!2576726)))))

(declare-fun b!7237483 () Bool)

(declare-fun e!4339026 () Bool)

(declare-fun e!4339031 () Bool)

(assert (=> b!7237483 (= e!4339026 e!4339031)))

(declare-fun res!2936174 () Bool)

(assert (=> b!7237483 (=> (not res!2936174) (not e!4339031))))

(declare-fun lt!2576742 () (Set Context!14944))

(assert (=> b!7237483 (= res!2936174 (matchZipper!3442 lt!2576742 (t!384256 s1!1971)))))

(declare-fun derivationStepZipper!3324 ((Set Context!14944) C!37338) (Set Context!14944))

(assert (=> b!7237483 (= lt!2576742 (derivationStepZipper!3324 lt!2576716 (h!76529 s1!1971)))))

(declare-fun b!7237484 () Bool)

(assert (=> b!7237484 (= e!4339027 (matchZipper!3442 lt!2576723 (t!384256 s1!1971)))))

(declare-fun b!7237485 () Bool)

(assert (=> b!7237485 (= e!4339025 e!4339026)))

(declare-fun res!2936175 () Bool)

(assert (=> b!7237485 (=> (not res!2936175) (not e!4339026))))

(assert (=> b!7237485 (= res!2936175 (and (not (is-Nil!70080 (exprs!7972 ct1!232))) (is-Cons!70081 s1!1971)))))

(assert (=> b!7237485 (= lt!2576731 (set.insert lt!2576747 (as set.empty (Set Context!14944))))))

(assert (=> b!7237485 (= lt!2576747 (Context!14945 lt!2576726))))

(declare-fun ++!16365 (List!70204 List!70204) List!70204)

(assert (=> b!7237485 (= lt!2576726 (++!16365 (exprs!7972 ct1!232) (exprs!7972 ct2!328)))))

(declare-fun lt!2576729 () Unit!163602)

(assert (=> b!7237485 (= lt!2576729 (lemmaConcatPreservesForall!1341 (exprs!7972 ct1!232) (exprs!7972 ct2!328) lambda!440754))))

(declare-fun b!7237486 () Bool)

(declare-fun e!4339030 () Bool)

(assert (=> b!7237486 (= e!4339030 e!4339033)))

(declare-fun res!2936171 () Bool)

(assert (=> b!7237486 (=> res!2936171 e!4339033)))

(assert (=> b!7237486 (= res!2936171 (isEmpty!40389 (exprs!7972 ct1!232)))))

(declare-fun lt!2576724 () (Set Context!14944))

(assert (=> b!7237486 (= lt!2576724 (derivationStepZipperUp!2406 ct1!232 (h!76529 s1!1971)))))

(declare-fun lt!2576733 () Unit!163602)

(declare-fun lt!2576722 () Context!14944)

(assert (=> b!7237486 (= lt!2576733 (lemmaConcatPreservesForall!1341 (exprs!7972 lt!2576722) (exprs!7972 ct2!328) lambda!440754))))

(declare-fun lt!2576725 () List!70204)

(assert (=> b!7237486 (matchZipper!3442 (set.insert (Context!14945 lt!2576725) (as set.empty (Set Context!14944))) lt!2576744)))

(assert (=> b!7237486 (= lt!2576744 (++!16364 (t!384256 s1!1971) s2!1849))))

(assert (=> b!7237486 (= lt!2576725 (++!16365 (exprs!7972 lt!2576722) (exprs!7972 ct2!328)))))

(declare-fun lt!2576732 () Unit!163602)

(assert (=> b!7237486 (= lt!2576732 (lemmaConcatPreservesForall!1341 (exprs!7972 lt!2576722) (exprs!7972 ct2!328) lambda!440754))))

(declare-fun lt!2576735 () Unit!163602)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!323 (Context!14944 Context!14944 List!70205 List!70205) Unit!163602)

(assert (=> b!7237486 (= lt!2576735 (lemmaConcatenateContextMatchesConcatOfStrings!323 lt!2576722 ct2!328 (t!384256 s1!1971) s2!1849))))

(declare-fun lambda!440755 () Int)

(declare-fun getWitness!2073 ((Set Context!14944) Int) Context!14944)

(assert (=> b!7237486 (= lt!2576722 (getWitness!2073 lt!2576742 lambda!440755))))

(assert (=> b!7237487 (= e!4339031 (not e!4339030))))

(declare-fun res!2936173 () Bool)

(assert (=> b!7237487 (=> res!2936173 e!4339030)))

(declare-fun exists!4207 ((Set Context!14944) Int) Bool)

(assert (=> b!7237487 (= res!2936173 (not (exists!4207 lt!2576742 lambda!440755)))))

(declare-datatypes ((List!70206 0))(
  ( (Nil!70082) (Cons!70082 (h!76530 Context!14944) (t!384257 List!70206)) )
))
(declare-fun lt!2576717 () List!70206)

(declare-fun exists!4208 (List!70206 Int) Bool)

(assert (=> b!7237487 (exists!4208 lt!2576717 lambda!440755)))

(declare-fun lt!2576737 () Unit!163602)

(declare-fun lemmaZipperMatchesExistsMatchingContext!675 (List!70206 List!70205) Unit!163602)

(assert (=> b!7237487 (= lt!2576737 (lemmaZipperMatchesExistsMatchingContext!675 lt!2576717 (t!384256 s1!1971)))))

(declare-fun toList!11389 ((Set Context!14944)) List!70206)

(assert (=> b!7237487 (= lt!2576717 (toList!11389 lt!2576742))))

(declare-fun b!7237488 () Bool)

(declare-fun e!4339035 () Bool)

(declare-fun tp!2034778 () Bool)

(assert (=> b!7237488 (= e!4339035 tp!2034778)))

(declare-fun res!2936178 () Bool)

(assert (=> start!702834 (=> (not res!2936178) (not e!4339025))))

(assert (=> start!702834 (= res!2936178 (matchZipper!3442 lt!2576716 s1!1971))))

(assert (=> start!702834 (= lt!2576716 (set.insert ct1!232 (as set.empty (Set Context!14944))))))

(assert (=> start!702834 e!4339025))

(declare-fun inv!89341 (Context!14944) Bool)

(assert (=> start!702834 (and (inv!89341 ct1!232) e!4339032)))

(assert (=> start!702834 e!4339036))

(assert (=> start!702834 e!4339028))

(assert (=> start!702834 (and (inv!89341 ct2!328) e!4339035)))

(declare-fun b!7237482 () Bool)

(assert (=> b!7237482 (= e!4339029 (matchZipper!3442 lt!2576728 lt!2576744))))

(assert (= (and start!702834 res!2936178) b!7237478))

(assert (= (and b!7237478 res!2936176) b!7237485))

(assert (= (and b!7237485 res!2936175) b!7237483))

(assert (= (and b!7237483 res!2936174) b!7237487))

(assert (= (and b!7237487 (not res!2936173)) b!7237486))

(assert (= (and b!7237486 (not res!2936171)) b!7237477))

(assert (= (and b!7237477 (not res!2936177)) b!7237481))

(assert (= (and b!7237481 c!1343476) b!7237480))

(assert (= (and b!7237481 (not c!1343476)) b!7237475))

(assert (= (and b!7237480 (not res!2936172)) b!7237484))

(assert (= (and b!7237480 (not res!2936179)) b!7237482))

(assert (= start!702834 b!7237474))

(assert (= (and start!702834 (is-Cons!70081 s1!1971)) b!7237479))

(assert (= (and start!702834 (is-Cons!70081 s2!1849)) b!7237476))

(assert (= start!702834 b!7237488))

(declare-fun m!7909064 () Bool)

(assert (=> b!7237487 m!7909064))

(declare-fun m!7909066 () Bool)

(assert (=> b!7237487 m!7909066))

(declare-fun m!7909068 () Bool)

(assert (=> b!7237487 m!7909068))

(declare-fun m!7909070 () Bool)

(assert (=> b!7237487 m!7909070))

(declare-fun m!7909072 () Bool)

(assert (=> b!7237484 m!7909072))

(declare-fun m!7909074 () Bool)

(assert (=> b!7237486 m!7909074))

(declare-fun m!7909076 () Bool)

(assert (=> b!7237486 m!7909076))

(declare-fun m!7909078 () Bool)

(assert (=> b!7237486 m!7909078))

(declare-fun m!7909080 () Bool)

(assert (=> b!7237486 m!7909080))

(declare-fun m!7909082 () Bool)

(assert (=> b!7237486 m!7909082))

(declare-fun m!7909084 () Bool)

(assert (=> b!7237486 m!7909084))

(declare-fun m!7909086 () Bool)

(assert (=> b!7237486 m!7909086))

(assert (=> b!7237486 m!7909074))

(declare-fun m!7909088 () Bool)

(assert (=> b!7237486 m!7909088))

(declare-fun m!7909090 () Bool)

(assert (=> b!7237486 m!7909090))

(assert (=> b!7237486 m!7909084))

(declare-fun m!7909092 () Bool)

(assert (=> b!7237485 m!7909092))

(declare-fun m!7909094 () Bool)

(assert (=> b!7237485 m!7909094))

(declare-fun m!7909096 () Bool)

(assert (=> b!7237485 m!7909096))

(declare-fun m!7909098 () Bool)

(assert (=> b!7237477 m!7909098))

(declare-fun m!7909100 () Bool)

(assert (=> b!7237477 m!7909100))

(declare-fun m!7909102 () Bool)

(assert (=> b!7237477 m!7909102))

(assert (=> b!7237477 m!7909096))

(assert (=> b!7237477 m!7909096))

(declare-fun m!7909104 () Bool)

(assert (=> b!7237477 m!7909104))

(declare-fun m!7909106 () Bool)

(assert (=> b!7237480 m!7909106))

(declare-fun m!7909108 () Bool)

(assert (=> b!7237480 m!7909108))

(declare-fun m!7909110 () Bool)

(assert (=> b!7237480 m!7909110))

(declare-fun m!7909112 () Bool)

(assert (=> b!7237480 m!7909112))

(declare-fun m!7909114 () Bool)

(assert (=> b!7237480 m!7909114))

(declare-fun m!7909116 () Bool)

(assert (=> b!7237480 m!7909116))

(declare-fun m!7909118 () Bool)

(assert (=> b!7237480 m!7909118))

(declare-fun m!7909120 () Bool)

(assert (=> b!7237480 m!7909120))

(assert (=> b!7237480 m!7909096))

(assert (=> b!7237480 m!7909096))

(declare-fun m!7909122 () Bool)

(assert (=> b!7237482 m!7909122))

(declare-fun m!7909124 () Bool)

(assert (=> b!7237483 m!7909124))

(declare-fun m!7909126 () Bool)

(assert (=> b!7237483 m!7909126))

(declare-fun m!7909128 () Bool)

(assert (=> start!702834 m!7909128))

(declare-fun m!7909130 () Bool)

(assert (=> start!702834 m!7909130))

(declare-fun m!7909132 () Bool)

(assert (=> start!702834 m!7909132))

(declare-fun m!7909134 () Bool)

(assert (=> start!702834 m!7909134))

(assert (=> b!7237481 m!7909100))

(assert (=> b!7237481 m!7909096))

(declare-fun m!7909136 () Bool)

(assert (=> b!7237481 m!7909136))

(declare-fun m!7909138 () Bool)

(assert (=> b!7237481 m!7909138))

(declare-fun m!7909140 () Bool)

(assert (=> b!7237481 m!7909140))

(declare-fun m!7909142 () Bool)

(assert (=> b!7237481 m!7909142))

(assert (=> b!7237481 m!7909086))

(declare-fun m!7909144 () Bool)

(assert (=> b!7237481 m!7909144))

(declare-fun m!7909146 () Bool)

(assert (=> b!7237481 m!7909146))

(declare-fun m!7909148 () Bool)

(assert (=> b!7237481 m!7909148))

(declare-fun m!7909150 () Bool)

(assert (=> b!7237481 m!7909150))

(declare-fun m!7909152 () Bool)

(assert (=> b!7237478 m!7909152))

(assert (=> b!7237478 m!7909152))

(declare-fun m!7909154 () Bool)

(assert (=> b!7237478 m!7909154))

(push 1)

(assert tp_is_empty!46529)

(assert (not b!7237479))

(assert (not b!7237477))

(assert (not b!7237486))

(assert (not b!7237487))

(assert (not b!7237481))

(assert (not b!7237478))

(assert (not b!7237474))

(assert (not start!702834))

(assert (not b!7237483))

(assert (not b!7237485))

(assert (not b!7237482))

(assert (not b!7237480))

(assert (not b!7237488))

(assert (not b!7237484))

(assert (not b!7237476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!658998 () Bool)

(declare-fun call!659003 () (Set Context!14944))

(assert (=> bm!658998 (= call!659003 (derivationStepZipperDown!2576 (h!76528 (exprs!7972 lt!2576747)) (Context!14945 (t!384255 (exprs!7972 lt!2576747))) (h!76529 s1!1971)))))

(declare-fun b!7237552 () Bool)

(declare-fun e!4339083 () (Set Context!14944))

(declare-fun e!4339084 () (Set Context!14944))

(assert (=> b!7237552 (= e!4339083 e!4339084)))

(declare-fun c!1343497 () Bool)

(assert (=> b!7237552 (= c!1343497 (is-Cons!70080 (exprs!7972 lt!2576747)))))

(declare-fun d!2248247 () Bool)

(declare-fun c!1343496 () Bool)

(declare-fun e!4339085 () Bool)

(assert (=> d!2248247 (= c!1343496 e!4339085)))

(declare-fun res!2936209 () Bool)

(assert (=> d!2248247 (=> (not res!2936209) (not e!4339085))))

(assert (=> d!2248247 (= res!2936209 (is-Cons!70080 (exprs!7972 lt!2576747)))))

(assert (=> d!2248247 (= (derivationStepZipperUp!2406 lt!2576747 (h!76529 s1!1971)) e!4339083)))

(declare-fun b!7237553 () Bool)

(assert (=> b!7237553 (= e!4339084 (as set.empty (Set Context!14944)))))

(declare-fun b!7237554 () Bool)

(assert (=> b!7237554 (= e!4339085 (nullable!7845 (h!76528 (exprs!7972 lt!2576747))))))

(declare-fun b!7237555 () Bool)

(assert (=> b!7237555 (= e!4339084 call!659003)))

(declare-fun b!7237556 () Bool)

(assert (=> b!7237556 (= e!4339083 (set.union call!659003 (derivationStepZipperUp!2406 (Context!14945 (t!384255 (exprs!7972 lt!2576747))) (h!76529 s1!1971))))))

(assert (= (and d!2248247 res!2936209) b!7237554))

(assert (= (and d!2248247 c!1343496) b!7237556))

(assert (= (and d!2248247 (not c!1343496)) b!7237552))

(assert (= (and b!7237552 c!1343497) b!7237555))

(assert (= (and b!7237552 (not c!1343497)) b!7237553))

(assert (= (or b!7237556 b!7237555) bm!658998))

(declare-fun m!7909248 () Bool)

(assert (=> bm!658998 m!7909248))

(declare-fun m!7909250 () Bool)

(assert (=> b!7237554 m!7909250))

(declare-fun m!7909252 () Bool)

(assert (=> b!7237556 m!7909252))

(assert (=> b!7237481 d!2248247))

(declare-fun d!2248249 () Bool)

(declare-fun dynLambda!28600 (Int Context!14944) (Set Context!14944))

(assert (=> d!2248249 (= (flatMap!2736 lt!2576731 lambda!440756) (dynLambda!28600 lambda!440756 lt!2576747))))

(declare-fun lt!2576846 () Unit!163602)

(declare-fun choose!55681 ((Set Context!14944) Context!14944 Int) Unit!163602)

(assert (=> d!2248249 (= lt!2576846 (choose!55681 lt!2576731 lt!2576747 lambda!440756))))

(assert (=> d!2248249 (= lt!2576731 (set.insert lt!2576747 (as set.empty (Set Context!14944))))))

(assert (=> d!2248249 (= (lemmaFlatMapOnSingletonSet!2163 lt!2576731 lt!2576747 lambda!440756) lt!2576846)))

(declare-fun b_lambda!277563 () Bool)

(assert (=> (not b_lambda!277563) (not d!2248249)))

(declare-fun bs!1903601 () Bool)

(assert (= bs!1903601 d!2248249))

(assert (=> bs!1903601 m!7909136))

(declare-fun m!7909254 () Bool)

(assert (=> bs!1903601 m!7909254))

(declare-fun m!7909256 () Bool)

(assert (=> bs!1903601 m!7909256))

(assert (=> bs!1903601 m!7909092))

(assert (=> b!7237481 d!2248249))

(declare-fun d!2248251 () Bool)

(declare-fun nullableFct!3075 (Regex!18532) Bool)

(assert (=> d!2248251 (= (nullable!7845 (h!76528 (exprs!7972 ct1!232))) (nullableFct!3075 (h!76528 (exprs!7972 ct1!232))))))

(declare-fun bs!1903602 () Bool)

(assert (= bs!1903602 d!2248251))

(declare-fun m!7909258 () Bool)

(assert (=> bs!1903602 m!7909258))

(assert (=> b!7237481 d!2248251))

(declare-fun d!2248253 () Bool)

(assert (=> d!2248253 (= (flatMap!2736 lt!2576716 lambda!440756) (dynLambda!28600 lambda!440756 ct1!232))))

(declare-fun lt!2576847 () Unit!163602)

(assert (=> d!2248253 (= lt!2576847 (choose!55681 lt!2576716 ct1!232 lambda!440756))))

(assert (=> d!2248253 (= lt!2576716 (set.insert ct1!232 (as set.empty (Set Context!14944))))))

(assert (=> d!2248253 (= (lemmaFlatMapOnSingletonSet!2163 lt!2576716 ct1!232 lambda!440756) lt!2576847)))

(declare-fun b_lambda!277565 () Bool)

(assert (=> (not b_lambda!277565) (not d!2248253)))

(declare-fun bs!1903603 () Bool)

(assert (= bs!1903603 d!2248253))

(assert (=> bs!1903603 m!7909150))

(declare-fun m!7909260 () Bool)

(assert (=> bs!1903603 m!7909260))

(declare-fun m!7909262 () Bool)

(assert (=> bs!1903603 m!7909262))

(assert (=> bs!1903603 m!7909130))

(assert (=> b!7237481 d!2248253))

(declare-fun bm!658999 () Bool)

(declare-fun call!659004 () (Set Context!14944))

(assert (=> bm!658999 (= call!659004 (derivationStepZipperDown!2576 (h!76528 (exprs!7972 ct1!232)) (Context!14945 (t!384255 (exprs!7972 ct1!232))) (h!76529 s1!1971)))))

(declare-fun b!7237557 () Bool)

(declare-fun e!4339086 () (Set Context!14944))

(declare-fun e!4339087 () (Set Context!14944))

(assert (=> b!7237557 (= e!4339086 e!4339087)))

(declare-fun c!1343499 () Bool)

(assert (=> b!7237557 (= c!1343499 (is-Cons!70080 (exprs!7972 ct1!232)))))

(declare-fun d!2248255 () Bool)

(declare-fun c!1343498 () Bool)

(declare-fun e!4339088 () Bool)

(assert (=> d!2248255 (= c!1343498 e!4339088)))

(declare-fun res!2936210 () Bool)

(assert (=> d!2248255 (=> (not res!2936210) (not e!4339088))))

(assert (=> d!2248255 (= res!2936210 (is-Cons!70080 (exprs!7972 ct1!232)))))

(assert (=> d!2248255 (= (derivationStepZipperUp!2406 ct1!232 (h!76529 s1!1971)) e!4339086)))

(declare-fun b!7237558 () Bool)

(assert (=> b!7237558 (= e!4339087 (as set.empty (Set Context!14944)))))

(declare-fun b!7237559 () Bool)

(assert (=> b!7237559 (= e!4339088 (nullable!7845 (h!76528 (exprs!7972 ct1!232))))))

(declare-fun b!7237560 () Bool)

(assert (=> b!7237560 (= e!4339087 call!659004)))

(declare-fun b!7237561 () Bool)

(assert (=> b!7237561 (= e!4339086 (set.union call!659004 (derivationStepZipperUp!2406 (Context!14945 (t!384255 (exprs!7972 ct1!232))) (h!76529 s1!1971))))))

(assert (= (and d!2248255 res!2936210) b!7237559))

(assert (= (and d!2248255 c!1343498) b!7237561))

(assert (= (and d!2248255 (not c!1343498)) b!7237557))

(assert (= (and b!7237557 c!1343499) b!7237560))

(assert (= (and b!7237557 (not c!1343499)) b!7237558))

(assert (= (or b!7237561 b!7237560) bm!658999))

(declare-fun m!7909264 () Bool)

(assert (=> bm!658999 m!7909264))

(assert (=> b!7237559 m!7909140))

(declare-fun m!7909266 () Bool)

(assert (=> b!7237561 m!7909266))

(assert (=> b!7237481 d!2248255))

(declare-fun d!2248257 () Bool)

(assert (=> d!2248257 (= (tail!14175 lt!2576726) (t!384255 lt!2576726))))

(assert (=> b!7237481 d!2248257))

(declare-fun bm!659012 () Bool)

(declare-fun call!659017 () (Set Context!14944))

(declare-fun call!659020 () (Set Context!14944))

(assert (=> bm!659012 (= call!659017 call!659020)))

(declare-fun b!7237584 () Bool)

(declare-fun e!4339101 () (Set Context!14944))

(declare-fun e!4339104 () (Set Context!14944))

(assert (=> b!7237584 (= e!4339101 e!4339104)))

(declare-fun c!1343514 () Bool)

(assert (=> b!7237584 (= c!1343514 (is-Concat!27377 (h!76528 (exprs!7972 ct1!232))))))

(declare-fun b!7237585 () Bool)

(declare-fun c!1343513 () Bool)

(declare-fun e!4339105 () Bool)

(assert (=> b!7237585 (= c!1343513 e!4339105)))

(declare-fun res!2936213 () Bool)

(assert (=> b!7237585 (=> (not res!2936213) (not e!4339105))))

(assert (=> b!7237585 (= res!2936213 (is-Concat!27377 (h!76528 (exprs!7972 ct1!232))))))

(declare-fun e!4339103 () (Set Context!14944))

(assert (=> b!7237585 (= e!4339103 e!4339101)))

(declare-fun call!659022 () List!70204)

(declare-fun bm!659013 () Bool)

(declare-fun $colon$colon!2883 (List!70204 Regex!18532) List!70204)

(assert (=> bm!659013 (= call!659022 ($colon$colon!2883 (exprs!7972 lt!2576719) (ite (or c!1343513 c!1343514) (regTwo!37576 (h!76528 (exprs!7972 ct1!232))) (h!76528 (exprs!7972 ct1!232)))))))

(declare-fun c!1343511 () Bool)

(declare-fun call!659021 () (Set Context!14944))

(declare-fun bm!659014 () Bool)

(assert (=> bm!659014 (= call!659021 (derivationStepZipperDown!2576 (ite c!1343511 (regTwo!37577 (h!76528 (exprs!7972 ct1!232))) (regOne!37576 (h!76528 (exprs!7972 ct1!232)))) (ite c!1343511 lt!2576719 (Context!14945 call!659022)) (h!76529 s1!1971)))))

(declare-fun b!7237587 () Bool)

(assert (=> b!7237587 (= e!4339104 call!659017)))

(declare-fun b!7237588 () Bool)

(declare-fun e!4339102 () (Set Context!14944))

(assert (=> b!7237588 (= e!4339102 e!4339103)))

(assert (=> b!7237588 (= c!1343511 (is-Union!18532 (h!76528 (exprs!7972 ct1!232))))))

(declare-fun b!7237589 () Bool)

(assert (=> b!7237589 (= e!4339105 (nullable!7845 (regOne!37576 (h!76528 (exprs!7972 ct1!232)))))))

(declare-fun b!7237590 () Bool)

(declare-fun e!4339106 () (Set Context!14944))

(assert (=> b!7237590 (= e!4339106 call!659017)))

(declare-fun bm!659015 () Bool)

(declare-fun call!659018 () List!70204)

(declare-fun call!659019 () (Set Context!14944))

(assert (=> bm!659015 (= call!659019 (derivationStepZipperDown!2576 (ite c!1343511 (regOne!37577 (h!76528 (exprs!7972 ct1!232))) (ite c!1343513 (regTwo!37576 (h!76528 (exprs!7972 ct1!232))) (ite c!1343514 (regOne!37576 (h!76528 (exprs!7972 ct1!232))) (reg!18861 (h!76528 (exprs!7972 ct1!232)))))) (ite (or c!1343511 c!1343513) lt!2576719 (Context!14945 call!659018)) (h!76529 s1!1971)))))

(declare-fun b!7237591 () Bool)

(declare-fun c!1343510 () Bool)

(assert (=> b!7237591 (= c!1343510 (is-Star!18532 (h!76528 (exprs!7972 ct1!232))))))

(assert (=> b!7237591 (= e!4339104 e!4339106)))

(declare-fun b!7237592 () Bool)

(assert (=> b!7237592 (= e!4339103 (set.union call!659019 call!659021))))

(declare-fun b!7237593 () Bool)

(assert (=> b!7237593 (= e!4339101 (set.union call!659021 call!659020))))

(declare-fun bm!659016 () Bool)

(assert (=> bm!659016 (= call!659020 call!659019)))

(declare-fun b!7237594 () Bool)

(assert (=> b!7237594 (= e!4339102 (set.insert lt!2576719 (as set.empty (Set Context!14944))))))

(declare-fun bm!659017 () Bool)

(assert (=> bm!659017 (= call!659018 call!659022)))

(declare-fun d!2248259 () Bool)

(declare-fun c!1343512 () Bool)

(assert (=> d!2248259 (= c!1343512 (and (is-ElementMatch!18532 (h!76528 (exprs!7972 ct1!232))) (= (c!1343477 (h!76528 (exprs!7972 ct1!232))) (h!76529 s1!1971))))))

(assert (=> d!2248259 (= (derivationStepZipperDown!2576 (h!76528 (exprs!7972 ct1!232)) lt!2576719 (h!76529 s1!1971)) e!4339102)))

(declare-fun b!7237586 () Bool)

(assert (=> b!7237586 (= e!4339106 (as set.empty (Set Context!14944)))))

(assert (= (and d!2248259 c!1343512) b!7237594))

(assert (= (and d!2248259 (not c!1343512)) b!7237588))

(assert (= (and b!7237588 c!1343511) b!7237592))

(assert (= (and b!7237588 (not c!1343511)) b!7237585))

(assert (= (and b!7237585 res!2936213) b!7237589))

(assert (= (and b!7237585 c!1343513) b!7237593))

(assert (= (and b!7237585 (not c!1343513)) b!7237584))

(assert (= (and b!7237584 c!1343514) b!7237587))

(assert (= (and b!7237584 (not c!1343514)) b!7237591))

(assert (= (and b!7237591 c!1343510) b!7237590))

(assert (= (and b!7237591 (not c!1343510)) b!7237586))

(assert (= (or b!7237587 b!7237590) bm!659017))

(assert (= (or b!7237587 b!7237590) bm!659012))

(assert (= (or b!7237593 bm!659017) bm!659013))

(assert (= (or b!7237593 bm!659012) bm!659016))

(assert (= (or b!7237592 b!7237593) bm!659014))

(assert (= (or b!7237592 bm!659016) bm!659015))

(declare-fun m!7909268 () Bool)

(assert (=> bm!659013 m!7909268))

(declare-fun m!7909270 () Bool)

(assert (=> b!7237594 m!7909270))

(declare-fun m!7909272 () Bool)

(assert (=> bm!659014 m!7909272))

(declare-fun m!7909274 () Bool)

(assert (=> b!7237589 m!7909274))

(declare-fun m!7909276 () Bool)

(assert (=> bm!659015 m!7909276))

(assert (=> b!7237481 d!2248259))

(declare-fun b!7237603 () Bool)

(declare-fun e!4339111 () List!70205)

(assert (=> b!7237603 (= e!4339111 s2!1849)))

(declare-fun d!2248261 () Bool)

(declare-fun e!4339112 () Bool)

(assert (=> d!2248261 e!4339112))

(declare-fun res!2936219 () Bool)

(assert (=> d!2248261 (=> (not res!2936219) (not e!4339112))))

(declare-fun lt!2576850 () List!70205)

(declare-fun content!14455 (List!70205) (Set C!37338))

(assert (=> d!2248261 (= res!2936219 (= (content!14455 lt!2576850) (set.union (content!14455 s1!1971) (content!14455 s2!1849))))))

(assert (=> d!2248261 (= lt!2576850 e!4339111)))

(declare-fun c!1343517 () Bool)

(assert (=> d!2248261 (= c!1343517 (is-Nil!70081 s1!1971))))

(assert (=> d!2248261 (= (++!16364 s1!1971 s2!1849) lt!2576850)))

(declare-fun b!7237604 () Bool)

(assert (=> b!7237604 (= e!4339111 (Cons!70081 (h!76529 s1!1971) (++!16364 (t!384256 s1!1971) s2!1849)))))

(declare-fun b!7237606 () Bool)

(assert (=> b!7237606 (= e!4339112 (or (not (= s2!1849 Nil!70081)) (= lt!2576850 s1!1971)))))

(declare-fun b!7237605 () Bool)

(declare-fun res!2936218 () Bool)

(assert (=> b!7237605 (=> (not res!2936218) (not e!4339112))))

(declare-fun size!41604 (List!70205) Int)

(assert (=> b!7237605 (= res!2936218 (= (size!41604 lt!2576850) (+ (size!41604 s1!1971) (size!41604 s2!1849))))))

(assert (= (and d!2248261 c!1343517) b!7237603))

(assert (= (and d!2248261 (not c!1343517)) b!7237604))

(assert (= (and d!2248261 res!2936219) b!7237605))

(assert (= (and b!7237605 res!2936218) b!7237606))

(declare-fun m!7909278 () Bool)

(assert (=> d!2248261 m!7909278))

(declare-fun m!7909280 () Bool)

(assert (=> d!2248261 m!7909280))

(declare-fun m!7909282 () Bool)

(assert (=> d!2248261 m!7909282))

(assert (=> b!7237604 m!7909090))

(declare-fun m!7909284 () Bool)

(assert (=> b!7237605 m!7909284))

(declare-fun m!7909286 () Bool)

(assert (=> b!7237605 m!7909286))

(declare-fun m!7909288 () Bool)

(assert (=> b!7237605 m!7909288))

(assert (=> b!7237481 d!2248261))

(declare-fun d!2248263 () Bool)

(declare-fun choose!55682 ((Set Context!14944) Int) (Set Context!14944))

(assert (=> d!2248263 (= (flatMap!2736 lt!2576731 lambda!440756) (choose!55682 lt!2576731 lambda!440756))))

(declare-fun bs!1903604 () Bool)

(assert (= bs!1903604 d!2248263))

(declare-fun m!7909290 () Bool)

(assert (=> bs!1903604 m!7909290))

(assert (=> b!7237481 d!2248263))

(declare-fun d!2248265 () Bool)

(declare-fun forall!17370 (List!70204 Int) Bool)

(assert (=> d!2248265 (forall!17370 (++!16365 (exprs!7972 ct1!232) (exprs!7972 ct2!328)) lambda!440754)))

(declare-fun lt!2576853 () Unit!163602)

(declare-fun choose!55683 (List!70204 List!70204 Int) Unit!163602)

(assert (=> d!2248265 (= lt!2576853 (choose!55683 (exprs!7972 ct1!232) (exprs!7972 ct2!328) lambda!440754))))

(assert (=> d!2248265 (forall!17370 (exprs!7972 ct1!232) lambda!440754)))

(assert (=> d!2248265 (= (lemmaConcatPreservesForall!1341 (exprs!7972 ct1!232) (exprs!7972 ct2!328) lambda!440754) lt!2576853)))

(declare-fun bs!1903605 () Bool)

(assert (= bs!1903605 d!2248265))

(assert (=> bs!1903605 m!7909094))

(assert (=> bs!1903605 m!7909094))

(declare-fun m!7909292 () Bool)

(assert (=> bs!1903605 m!7909292))

(declare-fun m!7909294 () Bool)

(assert (=> bs!1903605 m!7909294))

(declare-fun m!7909296 () Bool)

(assert (=> bs!1903605 m!7909296))

(assert (=> b!7237481 d!2248265))

(declare-fun d!2248267 () Bool)

(assert (=> d!2248267 (= (flatMap!2736 lt!2576716 lambda!440756) (choose!55682 lt!2576716 lambda!440756))))

(declare-fun bs!1903606 () Bool)

(assert (= bs!1903606 d!2248267))

(declare-fun m!7909298 () Bool)

(assert (=> bs!1903606 m!7909298))

(assert (=> b!7237481 d!2248267))

(declare-fun d!2248269 () Bool)

(assert (=> d!2248269 (forall!17370 (++!16365 (exprs!7972 lt!2576722) (exprs!7972 ct2!328)) lambda!440754)))

(declare-fun lt!2576854 () Unit!163602)

(assert (=> d!2248269 (= lt!2576854 (choose!55683 (exprs!7972 lt!2576722) (exprs!7972 ct2!328) lambda!440754))))

(assert (=> d!2248269 (forall!17370 (exprs!7972 lt!2576722) lambda!440754)))

(assert (=> d!2248269 (= (lemmaConcatPreservesForall!1341 (exprs!7972 lt!2576722) (exprs!7972 ct2!328) lambda!440754) lt!2576854)))

(declare-fun bs!1903607 () Bool)

(assert (= bs!1903607 d!2248269))

(assert (=> bs!1903607 m!7909078))

(assert (=> bs!1903607 m!7909078))

(declare-fun m!7909300 () Bool)

(assert (=> bs!1903607 m!7909300))

(declare-fun m!7909302 () Bool)

(assert (=> bs!1903607 m!7909302))

(declare-fun m!7909304 () Bool)

(assert (=> bs!1903607 m!7909304))

(assert (=> b!7237486 d!2248269))

(declare-fun d!2248271 () Bool)

(assert (=> d!2248271 (= (isEmpty!40389 (exprs!7972 ct1!232)) (is-Nil!70080 (exprs!7972 ct1!232)))))

(assert (=> b!7237486 d!2248271))

(declare-fun d!2248273 () Bool)

(declare-fun e!4339115 () Bool)

(assert (=> d!2248273 e!4339115))

(declare-fun res!2936222 () Bool)

(assert (=> d!2248273 (=> (not res!2936222) (not e!4339115))))

(declare-fun lt!2576857 () Context!14944)

(declare-fun dynLambda!28601 (Int Context!14944) Bool)

(assert (=> d!2248273 (= res!2936222 (dynLambda!28601 lambda!440755 lt!2576857))))

(declare-fun getWitness!2075 (List!70206 Int) Context!14944)

(assert (=> d!2248273 (= lt!2576857 (getWitness!2075 (toList!11389 lt!2576742) lambda!440755))))

(assert (=> d!2248273 (exists!4207 lt!2576742 lambda!440755)))

(assert (=> d!2248273 (= (getWitness!2073 lt!2576742 lambda!440755) lt!2576857)))

(declare-fun b!7237609 () Bool)

(assert (=> b!7237609 (= e!4339115 (set.member lt!2576857 lt!2576742))))

(assert (= (and d!2248273 res!2936222) b!7237609))

(declare-fun b_lambda!277567 () Bool)

(assert (=> (not b_lambda!277567) (not d!2248273)))

(declare-fun m!7909306 () Bool)

(assert (=> d!2248273 m!7909306))

(assert (=> d!2248273 m!7909070))

(assert (=> d!2248273 m!7909070))

(declare-fun m!7909308 () Bool)

(assert (=> d!2248273 m!7909308))

(assert (=> d!2248273 m!7909064))

(declare-fun m!7909310 () Bool)

(assert (=> b!7237609 m!7909310))

(assert (=> b!7237486 d!2248273))

(declare-fun b!7237610 () Bool)

(declare-fun e!4339116 () List!70205)

(assert (=> b!7237610 (= e!4339116 s2!1849)))

(declare-fun d!2248275 () Bool)

(declare-fun e!4339117 () Bool)

(assert (=> d!2248275 e!4339117))

(declare-fun res!2936224 () Bool)

(assert (=> d!2248275 (=> (not res!2936224) (not e!4339117))))

(declare-fun lt!2576858 () List!70205)

(assert (=> d!2248275 (= res!2936224 (= (content!14455 lt!2576858) (set.union (content!14455 (t!384256 s1!1971)) (content!14455 s2!1849))))))

(assert (=> d!2248275 (= lt!2576858 e!4339116)))

(declare-fun c!1343518 () Bool)

(assert (=> d!2248275 (= c!1343518 (is-Nil!70081 (t!384256 s1!1971)))))

(assert (=> d!2248275 (= (++!16364 (t!384256 s1!1971) s2!1849) lt!2576858)))

(declare-fun b!7237611 () Bool)

(assert (=> b!7237611 (= e!4339116 (Cons!70081 (h!76529 (t!384256 s1!1971)) (++!16364 (t!384256 (t!384256 s1!1971)) s2!1849)))))

(declare-fun b!7237613 () Bool)

(assert (=> b!7237613 (= e!4339117 (or (not (= s2!1849 Nil!70081)) (= lt!2576858 (t!384256 s1!1971))))))

(declare-fun b!7237612 () Bool)

(declare-fun res!2936223 () Bool)

(assert (=> b!7237612 (=> (not res!2936223) (not e!4339117))))

(assert (=> b!7237612 (= res!2936223 (= (size!41604 lt!2576858) (+ (size!41604 (t!384256 s1!1971)) (size!41604 s2!1849))))))

(assert (= (and d!2248275 c!1343518) b!7237610))

(assert (= (and d!2248275 (not c!1343518)) b!7237611))

(assert (= (and d!2248275 res!2936224) b!7237612))

(assert (= (and b!7237612 res!2936223) b!7237613))

(declare-fun m!7909312 () Bool)

(assert (=> d!2248275 m!7909312))

(declare-fun m!7909314 () Bool)

(assert (=> d!2248275 m!7909314))

(assert (=> d!2248275 m!7909282))

(declare-fun m!7909316 () Bool)

(assert (=> b!7237611 m!7909316))

(declare-fun m!7909318 () Bool)

(assert (=> b!7237612 m!7909318))

(declare-fun m!7909320 () Bool)

(assert (=> b!7237612 m!7909320))

(assert (=> b!7237612 m!7909288))

(assert (=> b!7237486 d!2248275))

(assert (=> b!7237486 d!2248255))

(declare-fun bs!1903608 () Bool)

(declare-fun d!2248277 () Bool)

(assert (= bs!1903608 (and d!2248277 b!7237485)))

(declare-fun lambda!440788 () Int)

(assert (=> bs!1903608 (= lambda!440788 lambda!440754)))

(assert (=> d!2248277 (matchZipper!3442 (set.insert (Context!14945 (++!16365 (exprs!7972 lt!2576722) (exprs!7972 ct2!328))) (as set.empty (Set Context!14944))) (++!16364 (t!384256 s1!1971) s2!1849))))

(declare-fun lt!2576864 () Unit!163602)

(assert (=> d!2248277 (= lt!2576864 (lemmaConcatPreservesForall!1341 (exprs!7972 lt!2576722) (exprs!7972 ct2!328) lambda!440788))))

(declare-fun lt!2576863 () Unit!163602)

(declare-fun choose!55684 (Context!14944 Context!14944 List!70205 List!70205) Unit!163602)

(assert (=> d!2248277 (= lt!2576863 (choose!55684 lt!2576722 ct2!328 (t!384256 s1!1971) s2!1849))))

(assert (=> d!2248277 (matchZipper!3442 (set.insert lt!2576722 (as set.empty (Set Context!14944))) (t!384256 s1!1971))))

(assert (=> d!2248277 (= (lemmaConcatenateContextMatchesConcatOfStrings!323 lt!2576722 ct2!328 (t!384256 s1!1971) s2!1849) lt!2576863)))

(declare-fun bs!1903609 () Bool)

(assert (= bs!1903609 d!2248277))

(assert (=> bs!1903609 m!7909090))

(declare-fun m!7909322 () Bool)

(assert (=> bs!1903609 m!7909322))

(declare-fun m!7909324 () Bool)

(assert (=> bs!1903609 m!7909324))

(declare-fun m!7909326 () Bool)

(assert (=> bs!1903609 m!7909326))

(assert (=> bs!1903609 m!7909078))

(declare-fun m!7909328 () Bool)

(assert (=> bs!1903609 m!7909328))

(declare-fun m!7909330 () Bool)

(assert (=> bs!1903609 m!7909330))

(assert (=> bs!1903609 m!7909324))

(assert (=> bs!1903609 m!7909090))

(declare-fun m!7909332 () Bool)

(assert (=> bs!1903609 m!7909332))

(assert (=> bs!1903609 m!7909328))

(assert (=> b!7237486 d!2248277))

(declare-fun b!7237625 () Bool)

(declare-fun e!4339123 () Bool)

(declare-fun lt!2576867 () List!70204)

(assert (=> b!7237625 (= e!4339123 (or (not (= (exprs!7972 ct2!328) Nil!70080)) (= lt!2576867 (exprs!7972 lt!2576722))))))

(declare-fun b!7237624 () Bool)

(declare-fun res!2936230 () Bool)

(assert (=> b!7237624 (=> (not res!2936230) (not e!4339123))))

(declare-fun size!41605 (List!70204) Int)

(assert (=> b!7237624 (= res!2936230 (= (size!41605 lt!2576867) (+ (size!41605 (exprs!7972 lt!2576722)) (size!41605 (exprs!7972 ct2!328)))))))

(declare-fun b!7237622 () Bool)

(declare-fun e!4339122 () List!70204)

(assert (=> b!7237622 (= e!4339122 (exprs!7972 ct2!328))))

(declare-fun b!7237623 () Bool)

(assert (=> b!7237623 (= e!4339122 (Cons!70080 (h!76528 (exprs!7972 lt!2576722)) (++!16365 (t!384255 (exprs!7972 lt!2576722)) (exprs!7972 ct2!328))))))

(declare-fun d!2248279 () Bool)

(assert (=> d!2248279 e!4339123))

(declare-fun res!2936229 () Bool)

(assert (=> d!2248279 (=> (not res!2936229) (not e!4339123))))

(declare-fun content!14456 (List!70204) (Set Regex!18532))

(assert (=> d!2248279 (= res!2936229 (= (content!14456 lt!2576867) (set.union (content!14456 (exprs!7972 lt!2576722)) (content!14456 (exprs!7972 ct2!328)))))))

(assert (=> d!2248279 (= lt!2576867 e!4339122)))

(declare-fun c!1343521 () Bool)

(assert (=> d!2248279 (= c!1343521 (is-Nil!70080 (exprs!7972 lt!2576722)))))

(assert (=> d!2248279 (= (++!16365 (exprs!7972 lt!2576722) (exprs!7972 ct2!328)) lt!2576867)))

(assert (= (and d!2248279 c!1343521) b!7237622))

(assert (= (and d!2248279 (not c!1343521)) b!7237623))

(assert (= (and d!2248279 res!2936229) b!7237624))

(assert (= (and b!7237624 res!2936230) b!7237625))

(declare-fun m!7909334 () Bool)

(assert (=> b!7237624 m!7909334))

(declare-fun m!7909336 () Bool)

(assert (=> b!7237624 m!7909336))

(declare-fun m!7909338 () Bool)

(assert (=> b!7237624 m!7909338))

(declare-fun m!7909340 () Bool)

(assert (=> b!7237623 m!7909340))

(declare-fun m!7909342 () Bool)

(assert (=> d!2248279 m!7909342))

(declare-fun m!7909344 () Bool)

(assert (=> d!2248279 m!7909344))

(declare-fun m!7909346 () Bool)

(assert (=> d!2248279 m!7909346))

(assert (=> b!7237486 d!2248279))

(declare-fun d!2248281 () Bool)

(declare-fun c!1343524 () Bool)

(declare-fun isEmpty!40391 (List!70205) Bool)

(assert (=> d!2248281 (= c!1343524 (isEmpty!40391 lt!2576744))))

(declare-fun e!4339126 () Bool)

(assert (=> d!2248281 (= (matchZipper!3442 (set.insert (Context!14945 lt!2576725) (as set.empty (Set Context!14944))) lt!2576744) e!4339126)))

(declare-fun b!7237630 () Bool)

(declare-fun nullableZipper!2836 ((Set Context!14944)) Bool)

(assert (=> b!7237630 (= e!4339126 (nullableZipper!2836 (set.insert (Context!14945 lt!2576725) (as set.empty (Set Context!14944)))))))

(declare-fun b!7237631 () Bool)

(declare-fun head!14825 (List!70205) C!37338)

(declare-fun tail!14177 (List!70205) List!70205)

(assert (=> b!7237631 (= e!4339126 (matchZipper!3442 (derivationStepZipper!3324 (set.insert (Context!14945 lt!2576725) (as set.empty (Set Context!14944))) (head!14825 lt!2576744)) (tail!14177 lt!2576744)))))

(assert (= (and d!2248281 c!1343524) b!7237630))

(assert (= (and d!2248281 (not c!1343524)) b!7237631))

(declare-fun m!7909348 () Bool)

(assert (=> d!2248281 m!7909348))

(assert (=> b!7237630 m!7909074))

(declare-fun m!7909350 () Bool)

(assert (=> b!7237630 m!7909350))

(declare-fun m!7909352 () Bool)

(assert (=> b!7237631 m!7909352))

(assert (=> b!7237631 m!7909074))

(assert (=> b!7237631 m!7909352))

(declare-fun m!7909354 () Bool)

(assert (=> b!7237631 m!7909354))

(declare-fun m!7909356 () Bool)

(assert (=> b!7237631 m!7909356))

(assert (=> b!7237631 m!7909354))

(assert (=> b!7237631 m!7909356))

(declare-fun m!7909358 () Bool)

(assert (=> b!7237631 m!7909358))

(assert (=> b!7237486 d!2248281))

(declare-fun d!2248283 () Bool)

(assert (=> d!2248283 (= (tail!14175 (exprs!7972 ct1!232)) (t!384255 (exprs!7972 ct1!232)))))

(assert (=> b!7237477 d!2248283))

(assert (=> b!7237477 d!2248247))

(declare-fun bm!659018 () Bool)

(declare-fun call!659023 () (Set Context!14944))

(declare-fun call!659026 () (Set Context!14944))

(assert (=> bm!659018 (= call!659023 call!659026)))

(declare-fun b!7237632 () Bool)

(declare-fun e!4339127 () (Set Context!14944))

(declare-fun e!4339130 () (Set Context!14944))

(assert (=> b!7237632 (= e!4339127 e!4339130)))

(declare-fun c!1343529 () Bool)

(assert (=> b!7237632 (= c!1343529 (is-Concat!27377 (h!76528 (exprs!7972 ct1!232))))))

(declare-fun b!7237633 () Bool)

(declare-fun c!1343528 () Bool)

(declare-fun e!4339131 () Bool)

(assert (=> b!7237633 (= c!1343528 e!4339131)))

(declare-fun res!2936231 () Bool)

(assert (=> b!7237633 (=> (not res!2936231) (not e!4339131))))

(assert (=> b!7237633 (= res!2936231 (is-Concat!27377 (h!76528 (exprs!7972 ct1!232))))))

(declare-fun e!4339129 () (Set Context!14944))

(assert (=> b!7237633 (= e!4339129 e!4339127)))

(declare-fun call!659028 () List!70204)

(declare-fun bm!659019 () Bool)

(assert (=> bm!659019 (= call!659028 ($colon$colon!2883 (exprs!7972 lt!2576745) (ite (or c!1343528 c!1343529) (regTwo!37576 (h!76528 (exprs!7972 ct1!232))) (h!76528 (exprs!7972 ct1!232)))))))

(declare-fun call!659027 () (Set Context!14944))

(declare-fun bm!659020 () Bool)

(declare-fun c!1343526 () Bool)

(assert (=> bm!659020 (= call!659027 (derivationStepZipperDown!2576 (ite c!1343526 (regTwo!37577 (h!76528 (exprs!7972 ct1!232))) (regOne!37576 (h!76528 (exprs!7972 ct1!232)))) (ite c!1343526 lt!2576745 (Context!14945 call!659028)) (h!76529 s1!1971)))))

(declare-fun b!7237635 () Bool)

(assert (=> b!7237635 (= e!4339130 call!659023)))

(declare-fun b!7237636 () Bool)

(declare-fun e!4339128 () (Set Context!14944))

(assert (=> b!7237636 (= e!4339128 e!4339129)))

(assert (=> b!7237636 (= c!1343526 (is-Union!18532 (h!76528 (exprs!7972 ct1!232))))))

(declare-fun b!7237637 () Bool)

(assert (=> b!7237637 (= e!4339131 (nullable!7845 (regOne!37576 (h!76528 (exprs!7972 ct1!232)))))))

(declare-fun b!7237638 () Bool)

(declare-fun e!4339132 () (Set Context!14944))

(assert (=> b!7237638 (= e!4339132 call!659023)))

(declare-fun call!659025 () (Set Context!14944))

(declare-fun call!659024 () List!70204)

(declare-fun bm!659021 () Bool)

(assert (=> bm!659021 (= call!659025 (derivationStepZipperDown!2576 (ite c!1343526 (regOne!37577 (h!76528 (exprs!7972 ct1!232))) (ite c!1343528 (regTwo!37576 (h!76528 (exprs!7972 ct1!232))) (ite c!1343529 (regOne!37576 (h!76528 (exprs!7972 ct1!232))) (reg!18861 (h!76528 (exprs!7972 ct1!232)))))) (ite (or c!1343526 c!1343528) lt!2576745 (Context!14945 call!659024)) (h!76529 s1!1971)))))

(declare-fun b!7237639 () Bool)

(declare-fun c!1343525 () Bool)

(assert (=> b!7237639 (= c!1343525 (is-Star!18532 (h!76528 (exprs!7972 ct1!232))))))

(assert (=> b!7237639 (= e!4339130 e!4339132)))

(declare-fun b!7237640 () Bool)

(assert (=> b!7237640 (= e!4339129 (set.union call!659025 call!659027))))

(declare-fun b!7237641 () Bool)

(assert (=> b!7237641 (= e!4339127 (set.union call!659027 call!659026))))

(declare-fun bm!659022 () Bool)

(assert (=> bm!659022 (= call!659026 call!659025)))

(declare-fun b!7237642 () Bool)

(assert (=> b!7237642 (= e!4339128 (set.insert lt!2576745 (as set.empty (Set Context!14944))))))

(declare-fun bm!659023 () Bool)

(assert (=> bm!659023 (= call!659024 call!659028)))

(declare-fun d!2248285 () Bool)

(declare-fun c!1343527 () Bool)

(assert (=> d!2248285 (= c!1343527 (and (is-ElementMatch!18532 (h!76528 (exprs!7972 ct1!232))) (= (c!1343477 (h!76528 (exprs!7972 ct1!232))) (h!76529 s1!1971))))))

(assert (=> d!2248285 (= (derivationStepZipperDown!2576 (h!76528 (exprs!7972 ct1!232)) lt!2576745 (h!76529 s1!1971)) e!4339128)))

(declare-fun b!7237634 () Bool)

(assert (=> b!7237634 (= e!4339132 (as set.empty (Set Context!14944)))))

(assert (= (and d!2248285 c!1343527) b!7237642))

(assert (= (and d!2248285 (not c!1343527)) b!7237636))

(assert (= (and b!7237636 c!1343526) b!7237640))

(assert (= (and b!7237636 (not c!1343526)) b!7237633))

(assert (= (and b!7237633 res!2936231) b!7237637))

(assert (= (and b!7237633 c!1343528) b!7237641))

(assert (= (and b!7237633 (not c!1343528)) b!7237632))

(assert (= (and b!7237632 c!1343529) b!7237635))

(assert (= (and b!7237632 (not c!1343529)) b!7237639))

(assert (= (and b!7237639 c!1343525) b!7237638))

(assert (= (and b!7237639 (not c!1343525)) b!7237634))

(assert (= (or b!7237635 b!7237638) bm!659023))

(assert (= (or b!7237635 b!7237638) bm!659018))

(assert (= (or b!7237641 bm!659023) bm!659019))

(assert (= (or b!7237641 bm!659018) bm!659022))

(assert (= (or b!7237640 b!7237641) bm!659020))

(assert (= (or b!7237640 bm!659022) bm!659021))

(declare-fun m!7909360 () Bool)

(assert (=> bm!659019 m!7909360))

(declare-fun m!7909362 () Bool)

(assert (=> b!7237642 m!7909362))

(declare-fun m!7909364 () Bool)

(assert (=> bm!659020 m!7909364))

(assert (=> b!7237637 m!7909274))

(declare-fun m!7909366 () Bool)

(assert (=> bm!659021 m!7909366))

(assert (=> b!7237477 d!2248285))

(assert (=> b!7237477 d!2248265))

(declare-fun d!2248287 () Bool)

(assert (=> d!2248287 (= (isEmpty!40389 lt!2576726) (is-Nil!70080 lt!2576726))))

(assert (=> b!7237477 d!2248287))

(declare-fun d!2248289 () Bool)

(declare-fun lt!2576870 () Bool)

(assert (=> d!2248289 (= lt!2576870 (exists!4208 (toList!11389 lt!2576742) lambda!440755))))

(declare-fun choose!55685 ((Set Context!14944) Int) Bool)

(assert (=> d!2248289 (= lt!2576870 (choose!55685 lt!2576742 lambda!440755))))

(assert (=> d!2248289 (= (exists!4207 lt!2576742 lambda!440755) lt!2576870)))

(declare-fun bs!1903610 () Bool)

(assert (= bs!1903610 d!2248289))

(assert (=> bs!1903610 m!7909070))

(assert (=> bs!1903610 m!7909070))

(declare-fun m!7909368 () Bool)

(assert (=> bs!1903610 m!7909368))

(declare-fun m!7909370 () Bool)

(assert (=> bs!1903610 m!7909370))

(assert (=> b!7237487 d!2248289))

(declare-fun bs!1903611 () Bool)

(declare-fun d!2248291 () Bool)

(assert (= bs!1903611 (and d!2248291 b!7237487)))

(declare-fun lambda!440791 () Int)

(assert (=> bs!1903611 (not (= lambda!440791 lambda!440755))))

(assert (=> d!2248291 true))

(declare-fun order!28871 () Int)

(declare-fun dynLambda!28602 (Int Int) Int)

(assert (=> d!2248291 (< (dynLambda!28602 order!28871 lambda!440755) (dynLambda!28602 order!28871 lambda!440791))))

(declare-fun forall!17371 (List!70206 Int) Bool)

(assert (=> d!2248291 (= (exists!4208 lt!2576717 lambda!440755) (not (forall!17371 lt!2576717 lambda!440791)))))

(declare-fun bs!1903612 () Bool)

(assert (= bs!1903612 d!2248291))

(declare-fun m!7909372 () Bool)

(assert (=> bs!1903612 m!7909372))

(assert (=> b!7237487 d!2248291))

(declare-fun bs!1903613 () Bool)

(declare-fun d!2248293 () Bool)

(assert (= bs!1903613 (and d!2248293 b!7237487)))

(declare-fun lambda!440794 () Int)

(assert (=> bs!1903613 (= lambda!440794 lambda!440755)))

(declare-fun bs!1903614 () Bool)

(assert (= bs!1903614 (and d!2248293 d!2248291)))

(assert (=> bs!1903614 (not (= lambda!440794 lambda!440791))))

(assert (=> d!2248293 true))

(assert (=> d!2248293 (exists!4208 lt!2576717 lambda!440794)))

(declare-fun lt!2576873 () Unit!163602)

(declare-fun choose!55686 (List!70206 List!70205) Unit!163602)

(assert (=> d!2248293 (= lt!2576873 (choose!55686 lt!2576717 (t!384256 s1!1971)))))

(declare-fun content!14457 (List!70206) (Set Context!14944))

(assert (=> d!2248293 (matchZipper!3442 (content!14457 lt!2576717) (t!384256 s1!1971))))

(assert (=> d!2248293 (= (lemmaZipperMatchesExistsMatchingContext!675 lt!2576717 (t!384256 s1!1971)) lt!2576873)))

(declare-fun bs!1903615 () Bool)

(assert (= bs!1903615 d!2248293))

(declare-fun m!7909374 () Bool)

(assert (=> bs!1903615 m!7909374))

(declare-fun m!7909376 () Bool)

(assert (=> bs!1903615 m!7909376))

(declare-fun m!7909378 () Bool)

(assert (=> bs!1903615 m!7909378))

(assert (=> bs!1903615 m!7909378))

(declare-fun m!7909380 () Bool)

(assert (=> bs!1903615 m!7909380))

(assert (=> b!7237487 d!2248293))

(declare-fun d!2248295 () Bool)

(declare-fun e!4339135 () Bool)

(assert (=> d!2248295 e!4339135))

(declare-fun res!2936234 () Bool)

(assert (=> d!2248295 (=> (not res!2936234) (not e!4339135))))

(declare-fun lt!2576876 () List!70206)

(declare-fun noDuplicate!2945 (List!70206) Bool)

(assert (=> d!2248295 (= res!2936234 (noDuplicate!2945 lt!2576876))))

(declare-fun choose!55687 ((Set Context!14944)) List!70206)

(assert (=> d!2248295 (= lt!2576876 (choose!55687 lt!2576742))))

(assert (=> d!2248295 (= (toList!11389 lt!2576742) lt!2576876)))

(declare-fun b!7237647 () Bool)

(assert (=> b!7237647 (= e!4339135 (= (content!14457 lt!2576876) lt!2576742))))

(assert (= (and d!2248295 res!2936234) b!7237647))

(declare-fun m!7909382 () Bool)

(assert (=> d!2248295 m!7909382))

(declare-fun m!7909384 () Bool)

(assert (=> d!2248295 m!7909384))

(declare-fun m!7909386 () Bool)

(assert (=> b!7237647 m!7909386))

(assert (=> b!7237487 d!2248295))

(declare-fun d!2248297 () Bool)

(declare-fun c!1343532 () Bool)

(assert (=> d!2248297 (= c!1343532 (isEmpty!40391 lt!2576744))))

(declare-fun e!4339136 () Bool)

(assert (=> d!2248297 (= (matchZipper!3442 lt!2576728 lt!2576744) e!4339136)))

(declare-fun b!7237648 () Bool)

(assert (=> b!7237648 (= e!4339136 (nullableZipper!2836 lt!2576728))))

(declare-fun b!7237649 () Bool)

(assert (=> b!7237649 (= e!4339136 (matchZipper!3442 (derivationStepZipper!3324 lt!2576728 (head!14825 lt!2576744)) (tail!14177 lt!2576744)))))

(assert (= (and d!2248297 c!1343532) b!7237648))

(assert (= (and d!2248297 (not c!1343532)) b!7237649))

(assert (=> d!2248297 m!7909348))

(declare-fun m!7909388 () Bool)

(assert (=> b!7237648 m!7909388))

(assert (=> b!7237649 m!7909352))

(assert (=> b!7237649 m!7909352))

(declare-fun m!7909390 () Bool)

(assert (=> b!7237649 m!7909390))

(assert (=> b!7237649 m!7909356))

(assert (=> b!7237649 m!7909390))

(assert (=> b!7237649 m!7909356))

(declare-fun m!7909392 () Bool)

(assert (=> b!7237649 m!7909392))

(assert (=> b!7237482 d!2248297))

(declare-fun d!2248299 () Bool)

(declare-fun c!1343533 () Bool)

(assert (=> d!2248299 (= c!1343533 (isEmpty!40391 (t!384256 s1!1971)))))

(declare-fun e!4339137 () Bool)

(assert (=> d!2248299 (= (matchZipper!3442 lt!2576723 (t!384256 s1!1971)) e!4339137)))

(declare-fun b!7237650 () Bool)

(assert (=> b!7237650 (= e!4339137 (nullableZipper!2836 lt!2576723))))

(declare-fun b!7237651 () Bool)

(assert (=> b!7237651 (= e!4339137 (matchZipper!3442 (derivationStepZipper!3324 lt!2576723 (head!14825 (t!384256 s1!1971))) (tail!14177 (t!384256 s1!1971))))))

(assert (= (and d!2248299 c!1343533) b!7237650))

(assert (= (and d!2248299 (not c!1343533)) b!7237651))

(declare-fun m!7909394 () Bool)

(assert (=> d!2248299 m!7909394))

(declare-fun m!7909396 () Bool)

(assert (=> b!7237650 m!7909396))

(declare-fun m!7909398 () Bool)

(assert (=> b!7237651 m!7909398))

(assert (=> b!7237651 m!7909398))

(declare-fun m!7909400 () Bool)

(assert (=> b!7237651 m!7909400))

(declare-fun m!7909402 () Bool)

(assert (=> b!7237651 m!7909402))

(assert (=> b!7237651 m!7909400))

(assert (=> b!7237651 m!7909402))

(declare-fun m!7909404 () Bool)

(assert (=> b!7237651 m!7909404))

(assert (=> b!7237484 d!2248299))

(declare-fun d!2248301 () Bool)

(declare-fun c!1343534 () Bool)

(assert (=> d!2248301 (= c!1343534 (isEmpty!40391 (t!384256 s1!1971)))))

(declare-fun e!4339138 () Bool)

(assert (=> d!2248301 (= (matchZipper!3442 lt!2576742 (t!384256 s1!1971)) e!4339138)))

(declare-fun b!7237652 () Bool)

(assert (=> b!7237652 (= e!4339138 (nullableZipper!2836 lt!2576742))))

(declare-fun b!7237653 () Bool)

(assert (=> b!7237653 (= e!4339138 (matchZipper!3442 (derivationStepZipper!3324 lt!2576742 (head!14825 (t!384256 s1!1971))) (tail!14177 (t!384256 s1!1971))))))

(assert (= (and d!2248301 c!1343534) b!7237652))

(assert (= (and d!2248301 (not c!1343534)) b!7237653))

(assert (=> d!2248301 m!7909394))

(declare-fun m!7909406 () Bool)

(assert (=> b!7237652 m!7909406))

(assert (=> b!7237653 m!7909398))

(assert (=> b!7237653 m!7909398))

(declare-fun m!7909408 () Bool)

(assert (=> b!7237653 m!7909408))

(assert (=> b!7237653 m!7909402))

(assert (=> b!7237653 m!7909408))

(assert (=> b!7237653 m!7909402))

(declare-fun m!7909410 () Bool)

(assert (=> b!7237653 m!7909410))

(assert (=> b!7237483 d!2248301))

(declare-fun bs!1903616 () Bool)

(declare-fun d!2248303 () Bool)

(assert (= bs!1903616 (and d!2248303 b!7237481)))

(declare-fun lambda!440797 () Int)

(assert (=> bs!1903616 (= lambda!440797 lambda!440756)))

(assert (=> d!2248303 true))

(assert (=> d!2248303 (= (derivationStepZipper!3324 lt!2576716 (h!76529 s1!1971)) (flatMap!2736 lt!2576716 lambda!440797))))

(declare-fun bs!1903617 () Bool)

(assert (= bs!1903617 d!2248303))

(declare-fun m!7909412 () Bool)

(assert (=> bs!1903617 m!7909412))

(assert (=> b!7237483 d!2248303))

(declare-fun d!2248305 () Bool)

(declare-fun c!1343537 () Bool)

(assert (=> d!2248305 (= c!1343537 (isEmpty!40391 s2!1849))))

(declare-fun e!4339139 () Bool)

(assert (=> d!2248305 (= (matchZipper!3442 (set.insert ct2!328 (as set.empty (Set Context!14944))) s2!1849) e!4339139)))

(declare-fun b!7237656 () Bool)

(assert (=> b!7237656 (= e!4339139 (nullableZipper!2836 (set.insert ct2!328 (as set.empty (Set Context!14944)))))))

(declare-fun b!7237657 () Bool)

(assert (=> b!7237657 (= e!4339139 (matchZipper!3442 (derivationStepZipper!3324 (set.insert ct2!328 (as set.empty (Set Context!14944))) (head!14825 s2!1849)) (tail!14177 s2!1849)))))

(assert (= (and d!2248305 c!1343537) b!7237656))

(assert (= (and d!2248305 (not c!1343537)) b!7237657))

(declare-fun m!7909414 () Bool)

(assert (=> d!2248305 m!7909414))

(assert (=> b!7237656 m!7909152))

(declare-fun m!7909416 () Bool)

(assert (=> b!7237656 m!7909416))

(declare-fun m!7909418 () Bool)

(assert (=> b!7237657 m!7909418))

(assert (=> b!7237657 m!7909152))

(assert (=> b!7237657 m!7909418))

(declare-fun m!7909420 () Bool)

(assert (=> b!7237657 m!7909420))

(declare-fun m!7909422 () Bool)

(assert (=> b!7237657 m!7909422))

(assert (=> b!7237657 m!7909420))

(assert (=> b!7237657 m!7909422))

(declare-fun m!7909424 () Bool)

(assert (=> b!7237657 m!7909424))

(assert (=> b!7237478 d!2248305))

(declare-fun e!4339141 () Bool)

(declare-fun b!7237661 () Bool)

(declare-fun lt!2576877 () List!70204)

(assert (=> b!7237661 (= e!4339141 (or (not (= (exprs!7972 ct2!328) Nil!70080)) (= lt!2576877 (exprs!7972 ct1!232))))))

(declare-fun b!7237660 () Bool)

(declare-fun res!2936236 () Bool)

(assert (=> b!7237660 (=> (not res!2936236) (not e!4339141))))

(assert (=> b!7237660 (= res!2936236 (= (size!41605 lt!2576877) (+ (size!41605 (exprs!7972 ct1!232)) (size!41605 (exprs!7972 ct2!328)))))))

(declare-fun b!7237658 () Bool)

(declare-fun e!4339140 () List!70204)

(assert (=> b!7237658 (= e!4339140 (exprs!7972 ct2!328))))

(declare-fun b!7237659 () Bool)

(assert (=> b!7237659 (= e!4339140 (Cons!70080 (h!76528 (exprs!7972 ct1!232)) (++!16365 (t!384255 (exprs!7972 ct1!232)) (exprs!7972 ct2!328))))))

(declare-fun d!2248307 () Bool)

(assert (=> d!2248307 e!4339141))

(declare-fun res!2936235 () Bool)

(assert (=> d!2248307 (=> (not res!2936235) (not e!4339141))))

(assert (=> d!2248307 (= res!2936235 (= (content!14456 lt!2576877) (set.union (content!14456 (exprs!7972 ct1!232)) (content!14456 (exprs!7972 ct2!328)))))))

(assert (=> d!2248307 (= lt!2576877 e!4339140)))

(declare-fun c!1343538 () Bool)

(assert (=> d!2248307 (= c!1343538 (is-Nil!70080 (exprs!7972 ct1!232)))))

(assert (=> d!2248307 (= (++!16365 (exprs!7972 ct1!232) (exprs!7972 ct2!328)) lt!2576877)))

(assert (= (and d!2248307 c!1343538) b!7237658))

(assert (= (and d!2248307 (not c!1343538)) b!7237659))

(assert (= (and d!2248307 res!2936235) b!7237660))

(assert (= (and b!7237660 res!2936236) b!7237661))

(declare-fun m!7909426 () Bool)

(assert (=> b!7237660 m!7909426))

(declare-fun m!7909428 () Bool)

(assert (=> b!7237660 m!7909428))

(assert (=> b!7237660 m!7909338))

(declare-fun m!7909430 () Bool)

(assert (=> b!7237659 m!7909430))

(declare-fun m!7909432 () Bool)

(assert (=> d!2248307 m!7909432))

(declare-fun m!7909434 () Bool)

(assert (=> d!2248307 m!7909434))

(assert (=> d!2248307 m!7909346))

(assert (=> b!7237485 d!2248307))

(assert (=> b!7237485 d!2248265))

(declare-fun e!4339144 () Bool)

(declare-fun d!2248309 () Bool)

(assert (=> d!2248309 (= (matchZipper!3442 (set.union lt!2576739 lt!2576723) (t!384256 s1!1971)) e!4339144)))

(declare-fun res!2936239 () Bool)

(assert (=> d!2248309 (=> res!2936239 e!4339144)))

(assert (=> d!2248309 (= res!2936239 (matchZipper!3442 lt!2576739 (t!384256 s1!1971)))))

(declare-fun lt!2576880 () Unit!163602)

(declare-fun choose!55688 ((Set Context!14944) (Set Context!14944) List!70205) Unit!163602)

(assert (=> d!2248309 (= lt!2576880 (choose!55688 lt!2576739 lt!2576723 (t!384256 s1!1971)))))

(assert (=> d!2248309 (= (lemmaZipperConcatMatchesSameAsBothZippers!1679 lt!2576739 lt!2576723 (t!384256 s1!1971)) lt!2576880)))

(declare-fun b!7237664 () Bool)

(assert (=> b!7237664 (= e!4339144 (matchZipper!3442 lt!2576723 (t!384256 s1!1971)))))

(assert (= (and d!2248309 (not res!2936239)) b!7237664))

(assert (=> d!2248309 m!7909114))

(assert (=> d!2248309 m!7909118))

(declare-fun m!7909436 () Bool)

(assert (=> d!2248309 m!7909436))

(assert (=> b!7237664 m!7909072))

(assert (=> b!7237480 d!2248309))

(declare-fun d!2248311 () Bool)

(declare-fun c!1343539 () Bool)

(assert (=> d!2248311 (= c!1343539 (isEmpty!40391 lt!2576744))))

(declare-fun e!4339145 () Bool)

(assert (=> d!2248311 (= (matchZipper!3442 lt!2576734 lt!2576744) e!4339145)))

(declare-fun b!7237665 () Bool)

(assert (=> b!7237665 (= e!4339145 (nullableZipper!2836 lt!2576734))))

(declare-fun b!7237666 () Bool)

(assert (=> b!7237666 (= e!4339145 (matchZipper!3442 (derivationStepZipper!3324 lt!2576734 (head!14825 lt!2576744)) (tail!14177 lt!2576744)))))

(assert (= (and d!2248311 c!1343539) b!7237665))

(assert (= (and d!2248311 (not c!1343539)) b!7237666))

(assert (=> d!2248311 m!7909348))

(declare-fun m!7909438 () Bool)

(assert (=> b!7237665 m!7909438))

(assert (=> b!7237666 m!7909352))

(assert (=> b!7237666 m!7909352))

(declare-fun m!7909440 () Bool)

(assert (=> b!7237666 m!7909440))

(assert (=> b!7237666 m!7909356))

(assert (=> b!7237666 m!7909440))

(assert (=> b!7237666 m!7909356))

(declare-fun m!7909442 () Bool)

(assert (=> b!7237666 m!7909442))

(assert (=> b!7237480 d!2248311))

(declare-fun d!2248313 () Bool)

(declare-fun c!1343540 () Bool)

(assert (=> d!2248313 (= c!1343540 (isEmpty!40391 (t!384256 s1!1971)))))

(declare-fun e!4339146 () Bool)

(assert (=> d!2248313 (= (matchZipper!3442 (set.union lt!2576739 lt!2576723) (t!384256 s1!1971)) e!4339146)))

(declare-fun b!7237667 () Bool)

(assert (=> b!7237667 (= e!4339146 (nullableZipper!2836 (set.union lt!2576739 lt!2576723)))))

(declare-fun b!7237668 () Bool)

(assert (=> b!7237668 (= e!4339146 (matchZipper!3442 (derivationStepZipper!3324 (set.union lt!2576739 lt!2576723) (head!14825 (t!384256 s1!1971))) (tail!14177 (t!384256 s1!1971))))))

(assert (= (and d!2248313 c!1343540) b!7237667))

(assert (= (and d!2248313 (not c!1343540)) b!7237668))

(assert (=> d!2248313 m!7909394))

(declare-fun m!7909444 () Bool)

(assert (=> b!7237667 m!7909444))

(assert (=> b!7237668 m!7909398))

(assert (=> b!7237668 m!7909398))

(declare-fun m!7909446 () Bool)

(assert (=> b!7237668 m!7909446))

(assert (=> b!7237668 m!7909402))

(assert (=> b!7237668 m!7909446))

(assert (=> b!7237668 m!7909402))

(declare-fun m!7909448 () Bool)

(assert (=> b!7237668 m!7909448))

(assert (=> b!7237480 d!2248313))

(declare-fun bm!659024 () Bool)

(declare-fun call!659029 () (Set Context!14944))

(assert (=> bm!659024 (= call!659029 (derivationStepZipperDown!2576 (h!76528 (exprs!7972 lt!2576745)) (Context!14945 (t!384255 (exprs!7972 lt!2576745))) (h!76529 s1!1971)))))

(declare-fun b!7237669 () Bool)

(declare-fun e!4339147 () (Set Context!14944))

(declare-fun e!4339148 () (Set Context!14944))

(assert (=> b!7237669 (= e!4339147 e!4339148)))

(declare-fun c!1343542 () Bool)

(assert (=> b!7237669 (= c!1343542 (is-Cons!70080 (exprs!7972 lt!2576745)))))

(declare-fun d!2248315 () Bool)

(declare-fun c!1343541 () Bool)

(declare-fun e!4339149 () Bool)

(assert (=> d!2248315 (= c!1343541 e!4339149)))

(declare-fun res!2936240 () Bool)

(assert (=> d!2248315 (=> (not res!2936240) (not e!4339149))))

(assert (=> d!2248315 (= res!2936240 (is-Cons!70080 (exprs!7972 lt!2576745)))))

(assert (=> d!2248315 (= (derivationStepZipperUp!2406 lt!2576745 (h!76529 s1!1971)) e!4339147)))

(declare-fun b!7237670 () Bool)

(assert (=> b!7237670 (= e!4339148 (as set.empty (Set Context!14944)))))

(declare-fun b!7237671 () Bool)

(assert (=> b!7237671 (= e!4339149 (nullable!7845 (h!76528 (exprs!7972 lt!2576745))))))

(declare-fun b!7237672 () Bool)

(assert (=> b!7237672 (= e!4339148 call!659029)))

(declare-fun b!7237673 () Bool)

(assert (=> b!7237673 (= e!4339147 (set.union call!659029 (derivationStepZipperUp!2406 (Context!14945 (t!384255 (exprs!7972 lt!2576745))) (h!76529 s1!1971))))))

(assert (= (and d!2248315 res!2936240) b!7237671))

(assert (= (and d!2248315 c!1343541) b!7237673))

(assert (= (and d!2248315 (not c!1343541)) b!7237669))

(assert (= (and b!7237669 c!1343542) b!7237672))

(assert (= (and b!7237669 (not c!1343542)) b!7237670))

(assert (= (or b!7237673 b!7237672) bm!659024))

(declare-fun m!7909450 () Bool)

(assert (=> bm!659024 m!7909450))

(declare-fun m!7909452 () Bool)

(assert (=> b!7237671 m!7909452))

(declare-fun m!7909454 () Bool)

(assert (=> b!7237673 m!7909454))

(assert (=> b!7237480 d!2248315))

(declare-fun d!2248317 () Bool)

(declare-fun c!1343543 () Bool)

(assert (=> d!2248317 (= c!1343543 (isEmpty!40391 (t!384256 s1!1971)))))

(declare-fun e!4339150 () Bool)

(assert (=> d!2248317 (= (matchZipper!3442 lt!2576739 (t!384256 s1!1971)) e!4339150)))

(declare-fun b!7237674 () Bool)

(assert (=> b!7237674 (= e!4339150 (nullableZipper!2836 lt!2576739))))

(declare-fun b!7237675 () Bool)

(assert (=> b!7237675 (= e!4339150 (matchZipper!3442 (derivationStepZipper!3324 lt!2576739 (head!14825 (t!384256 s1!1971))) (tail!14177 (t!384256 s1!1971))))))

(assert (= (and d!2248317 c!1343543) b!7237674))

(assert (= (and d!2248317 (not c!1343543)) b!7237675))

(assert (=> d!2248317 m!7909394))

(declare-fun m!7909456 () Bool)

(assert (=> b!7237674 m!7909456))

(assert (=> b!7237675 m!7909398))

(assert (=> b!7237675 m!7909398))

(declare-fun m!7909458 () Bool)

(assert (=> b!7237675 m!7909458))

(assert (=> b!7237675 m!7909402))

(assert (=> b!7237675 m!7909458))

(assert (=> b!7237675 m!7909402))

(declare-fun m!7909460 () Bool)

(assert (=> b!7237675 m!7909460))

(assert (=> b!7237480 d!2248317))

(declare-fun bm!659025 () Bool)

(declare-fun call!659030 () (Set Context!14944))

(assert (=> bm!659025 (= call!659030 (derivationStepZipperDown!2576 (h!76528 (exprs!7972 lt!2576719)) (Context!14945 (t!384255 (exprs!7972 lt!2576719))) (h!76529 s1!1971)))))

(declare-fun b!7237676 () Bool)

(declare-fun e!4339151 () (Set Context!14944))

(declare-fun e!4339152 () (Set Context!14944))

(assert (=> b!7237676 (= e!4339151 e!4339152)))

(declare-fun c!1343545 () Bool)

(assert (=> b!7237676 (= c!1343545 (is-Cons!70080 (exprs!7972 lt!2576719)))))

(declare-fun d!2248319 () Bool)

(declare-fun c!1343544 () Bool)

(declare-fun e!4339153 () Bool)

(assert (=> d!2248319 (= c!1343544 e!4339153)))

(declare-fun res!2936241 () Bool)

(assert (=> d!2248319 (=> (not res!2936241) (not e!4339153))))

(assert (=> d!2248319 (= res!2936241 (is-Cons!70080 (exprs!7972 lt!2576719)))))

(assert (=> d!2248319 (= (derivationStepZipperUp!2406 lt!2576719 (h!76529 s1!1971)) e!4339151)))

(declare-fun b!7237677 () Bool)

(assert (=> b!7237677 (= e!4339152 (as set.empty (Set Context!14944)))))

(declare-fun b!7237678 () Bool)

(assert (=> b!7237678 (= e!4339153 (nullable!7845 (h!76528 (exprs!7972 lt!2576719))))))

(declare-fun b!7237679 () Bool)

(assert (=> b!7237679 (= e!4339152 call!659030)))

(declare-fun b!7237680 () Bool)

(assert (=> b!7237680 (= e!4339151 (set.union call!659030 (derivationStepZipperUp!2406 (Context!14945 (t!384255 (exprs!7972 lt!2576719))) (h!76529 s1!1971))))))

(assert (= (and d!2248319 res!2936241) b!7237678))

(assert (= (and d!2248319 c!1343544) b!7237680))

(assert (= (and d!2248319 (not c!1343544)) b!7237676))

(assert (= (and b!7237676 c!1343545) b!7237679))

(assert (= (and b!7237676 (not c!1343545)) b!7237677))

(assert (= (or b!7237680 b!7237679) bm!659025))

(declare-fun m!7909462 () Bool)

(assert (=> bm!659025 m!7909462))

(declare-fun m!7909464 () Bool)

(assert (=> b!7237678 m!7909464))

(declare-fun m!7909466 () Bool)

(assert (=> b!7237680 m!7909466))

(assert (=> b!7237480 d!2248319))

(assert (=> b!7237480 d!2248265))

(declare-fun d!2248321 () Bool)

(declare-fun e!4339154 () Bool)

(assert (=> d!2248321 (= (matchZipper!3442 (set.union lt!2576734 lt!2576728) lt!2576744) e!4339154)))

(declare-fun res!2936242 () Bool)

(assert (=> d!2248321 (=> res!2936242 e!4339154)))

(assert (=> d!2248321 (= res!2936242 (matchZipper!3442 lt!2576734 lt!2576744))))

(declare-fun lt!2576881 () Unit!163602)

(assert (=> d!2248321 (= lt!2576881 (choose!55688 lt!2576734 lt!2576728 lt!2576744))))

(assert (=> d!2248321 (= (lemmaZipperConcatMatchesSameAsBothZippers!1679 lt!2576734 lt!2576728 lt!2576744) lt!2576881)))

(declare-fun b!7237681 () Bool)

(assert (=> b!7237681 (= e!4339154 (matchZipper!3442 lt!2576728 lt!2576744))))

(assert (= (and d!2248321 (not res!2936242)) b!7237681))

(assert (=> d!2248321 m!7909106))

(assert (=> d!2248321 m!7909112))

(declare-fun m!7909468 () Bool)

(assert (=> d!2248321 m!7909468))

(assert (=> b!7237681 m!7909122))

(assert (=> b!7237480 d!2248321))

(declare-fun d!2248323 () Bool)

(declare-fun c!1343546 () Bool)

(assert (=> d!2248323 (= c!1343546 (isEmpty!40391 lt!2576744))))

(declare-fun e!4339155 () Bool)

(assert (=> d!2248323 (= (matchZipper!3442 (set.union lt!2576734 lt!2576728) lt!2576744) e!4339155)))

(declare-fun b!7237682 () Bool)

(assert (=> b!7237682 (= e!4339155 (nullableZipper!2836 (set.union lt!2576734 lt!2576728)))))

(declare-fun b!7237683 () Bool)

(assert (=> b!7237683 (= e!4339155 (matchZipper!3442 (derivationStepZipper!3324 (set.union lt!2576734 lt!2576728) (head!14825 lt!2576744)) (tail!14177 lt!2576744)))))

(assert (= (and d!2248323 c!1343546) b!7237682))

(assert (= (and d!2248323 (not c!1343546)) b!7237683))

(assert (=> d!2248323 m!7909348))

(declare-fun m!7909470 () Bool)

(assert (=> b!7237682 m!7909470))

(assert (=> b!7237683 m!7909352))

(assert (=> b!7237683 m!7909352))

(declare-fun m!7909472 () Bool)

(assert (=> b!7237683 m!7909472))

(assert (=> b!7237683 m!7909356))

(assert (=> b!7237683 m!7909472))

(assert (=> b!7237683 m!7909356))

(declare-fun m!7909474 () Bool)

(assert (=> b!7237683 m!7909474))

(assert (=> b!7237480 d!2248323))

(declare-fun d!2248325 () Bool)

(declare-fun c!1343547 () Bool)

(assert (=> d!2248325 (= c!1343547 (isEmpty!40391 s1!1971))))

(declare-fun e!4339156 () Bool)

(assert (=> d!2248325 (= (matchZipper!3442 lt!2576716 s1!1971) e!4339156)))

(declare-fun b!7237684 () Bool)

(assert (=> b!7237684 (= e!4339156 (nullableZipper!2836 lt!2576716))))

(declare-fun b!7237685 () Bool)

(assert (=> b!7237685 (= e!4339156 (matchZipper!3442 (derivationStepZipper!3324 lt!2576716 (head!14825 s1!1971)) (tail!14177 s1!1971)))))

(assert (= (and d!2248325 c!1343547) b!7237684))

(assert (= (and d!2248325 (not c!1343547)) b!7237685))

(declare-fun m!7909476 () Bool)

(assert (=> d!2248325 m!7909476))

(declare-fun m!7909478 () Bool)

(assert (=> b!7237684 m!7909478))

(declare-fun m!7909480 () Bool)

(assert (=> b!7237685 m!7909480))

(assert (=> b!7237685 m!7909480))

(declare-fun m!7909482 () Bool)

(assert (=> b!7237685 m!7909482))

(declare-fun m!7909484 () Bool)

(assert (=> b!7237685 m!7909484))

(assert (=> b!7237685 m!7909482))

(assert (=> b!7237685 m!7909484))

(declare-fun m!7909486 () Bool)

(assert (=> b!7237685 m!7909486))

(assert (=> start!702834 d!2248325))

(declare-fun bs!1903618 () Bool)

(declare-fun d!2248327 () Bool)

(assert (= bs!1903618 (and d!2248327 b!7237485)))

(declare-fun lambda!440800 () Int)

(assert (=> bs!1903618 (= lambda!440800 lambda!440754)))

(declare-fun bs!1903619 () Bool)

(assert (= bs!1903619 (and d!2248327 d!2248277)))

(assert (=> bs!1903619 (= lambda!440800 lambda!440788)))

(assert (=> d!2248327 (= (inv!89341 ct1!232) (forall!17370 (exprs!7972 ct1!232) lambda!440800))))

(declare-fun bs!1903620 () Bool)

(assert (= bs!1903620 d!2248327))

(declare-fun m!7909488 () Bool)

(assert (=> bs!1903620 m!7909488))

(assert (=> start!702834 d!2248327))

(declare-fun bs!1903621 () Bool)

(declare-fun d!2248329 () Bool)

(assert (= bs!1903621 (and d!2248329 b!7237485)))

(declare-fun lambda!440801 () Int)

(assert (=> bs!1903621 (= lambda!440801 lambda!440754)))

(declare-fun bs!1903622 () Bool)

(assert (= bs!1903622 (and d!2248329 d!2248277)))

(assert (=> bs!1903622 (= lambda!440801 lambda!440788)))

(declare-fun bs!1903623 () Bool)

(assert (= bs!1903623 (and d!2248329 d!2248327)))

(assert (=> bs!1903623 (= lambda!440801 lambda!440800)))

(assert (=> d!2248329 (= (inv!89341 ct2!328) (forall!17370 (exprs!7972 ct2!328) lambda!440801))))

(declare-fun bs!1903624 () Bool)

(assert (= bs!1903624 d!2248329))

(declare-fun m!7909490 () Bool)

(assert (=> bs!1903624 m!7909490))

(assert (=> start!702834 d!2248329))

(declare-fun b!7237690 () Bool)

(declare-fun e!4339159 () Bool)

(declare-fun tp!2034795 () Bool)

(assert (=> b!7237690 (= e!4339159 (and tp_is_empty!46529 tp!2034795))))

(assert (=> b!7237476 (= tp!2034780 e!4339159)))

(assert (= (and b!7237476 (is-Cons!70081 (t!384256 s2!1849))) b!7237690))

(declare-fun b!7237695 () Bool)

(declare-fun e!4339162 () Bool)

(declare-fun tp!2034800 () Bool)

(declare-fun tp!2034801 () Bool)

(assert (=> b!7237695 (= e!4339162 (and tp!2034800 tp!2034801))))

(assert (=> b!7237488 (= tp!2034778 e!4339162)))

(assert (= (and b!7237488 (is-Cons!70080 (exprs!7972 ct2!328))) b!7237695))

(declare-fun b!7237696 () Bool)

(declare-fun e!4339163 () Bool)

(declare-fun tp!2034802 () Bool)

(assert (=> b!7237696 (= e!4339163 (and tp_is_empty!46529 tp!2034802))))

(assert (=> b!7237479 (= tp!2034779 e!4339163)))

(assert (= (and b!7237479 (is-Cons!70081 (t!384256 s1!1971))) b!7237696))

(declare-fun b!7237697 () Bool)

(declare-fun e!4339164 () Bool)

(declare-fun tp!2034803 () Bool)

(declare-fun tp!2034804 () Bool)

(assert (=> b!7237697 (= e!4339164 (and tp!2034803 tp!2034804))))

(assert (=> b!7237474 (= tp!2034777 e!4339164)))

(assert (= (and b!7237474 (is-Cons!70080 (exprs!7972 ct1!232))) b!7237697))

(declare-fun b_lambda!277569 () Bool)

(assert (= b_lambda!277567 (or b!7237487 b_lambda!277569)))

(declare-fun bs!1903625 () Bool)

(declare-fun d!2248331 () Bool)

(assert (= bs!1903625 (and d!2248331 b!7237487)))

(assert (=> bs!1903625 (= (dynLambda!28601 lambda!440755 lt!2576857) (matchZipper!3442 (set.insert lt!2576857 (as set.empty (Set Context!14944))) (t!384256 s1!1971)))))

(declare-fun m!7909492 () Bool)

(assert (=> bs!1903625 m!7909492))

(assert (=> bs!1903625 m!7909492))

(declare-fun m!7909494 () Bool)

(assert (=> bs!1903625 m!7909494))

(assert (=> d!2248273 d!2248331))

(declare-fun b_lambda!277571 () Bool)

(assert (= b_lambda!277565 (or b!7237481 b_lambda!277571)))

(declare-fun bs!1903626 () Bool)

(declare-fun d!2248333 () Bool)

(assert (= bs!1903626 (and d!2248333 b!7237481)))

(assert (=> bs!1903626 (= (dynLambda!28600 lambda!440756 ct1!232) (derivationStepZipperUp!2406 ct1!232 (h!76529 s1!1971)))))

(assert (=> bs!1903626 m!7909086))

(assert (=> d!2248253 d!2248333))

(declare-fun b_lambda!277573 () Bool)

(assert (= b_lambda!277563 (or b!7237481 b_lambda!277573)))

(declare-fun bs!1903627 () Bool)

(declare-fun d!2248335 () Bool)

(assert (= bs!1903627 (and d!2248335 b!7237481)))

(assert (=> bs!1903627 (= (dynLambda!28600 lambda!440756 lt!2576747) (derivationStepZipperUp!2406 lt!2576747 (h!76529 s1!1971)))))

(assert (=> bs!1903627 m!7909100))

(assert (=> d!2248249 d!2248335))

(push 1)

(assert (not b!7237668))

(assert (not b!7237561))

(assert (not b!7237660))

(assert (not b!7237559))

(assert (not bm!659013))

(assert (not d!2248295))

(assert (not d!2248321))

(assert (not b!7237659))

(assert (not b!7237675))

(assert (not b_lambda!277573))

(assert (not b!7237673))

(assert (not d!2248249))

(assert (not b!7237623))

(assert (not d!2248275))

(assert (not b!7237605))

(assert tp_is_empty!46529)

(assert (not d!2248253))

(assert (not d!2248307))

(assert (not d!2248297))

(assert (not bm!659024))

(assert (not d!2248289))

(assert (not b!7237652))

(assert (not b!7237649))

(assert (not b!7237648))

(assert (not b!7237666))

(assert (not b!7237667))

(assert (not d!2248269))

(assert (not d!2248267))

(assert (not d!2248277))

(assert (not b!7237685))

(assert (not b!7237630))

(assert (not b!7237624))

(assert (not b_lambda!277569))

(assert (not b!7237556))

(assert (not bm!659015))

(assert (not d!2248323))

(assert (not b!7237651))

(assert (not b!7237656))

(assert (not d!2248265))

(assert (not d!2248291))

(assert (not bs!1903626))

(assert (not d!2248303))

(assert (not b!7237650))

(assert (not bm!658998))

(assert (not b!7237604))

(assert (not b!7237684))

(assert (not d!2248263))

(assert (not b!7237612))

(assert (not d!2248309))

(assert (not bs!1903627))

(assert (not bm!659020))

(assert (not b!7237682))

(assert (not b!7237665))

(assert (not d!2248305))

(assert (not b!7237631))

(assert (not d!2248325))

(assert (not b!7237690))

(assert (not d!2248273))

(assert (not bm!659019))

(assert (not d!2248251))

(assert (not d!2248301))

(assert (not b_lambda!277571))

(assert (not b!7237678))

(assert (not b!7237554))

(assert (not b!7237683))

(assert (not b!7237674))

(assert (not b!7237695))

(assert (not bm!659025))

(assert (not b!7237589))

(assert (not b!7237681))

(assert (not b!7237680))

(assert (not bm!659014))

(assert (not d!2248293))

(assert (not b!7237657))

(assert (not bm!658999))

(assert (not b!7237697))

(assert (not d!2248279))

(assert (not d!2248281))

(assert (not b!7237696))

(assert (not d!2248313))

(assert (not d!2248299))

(assert (not d!2248327))

(assert (not d!2248329))

(assert (not d!2248311))

(assert (not bs!1903625))

(assert (not b!7237653))

(assert (not d!2248261))

(assert (not bm!659021))

(assert (not b!7237647))

(assert (not b!7237611))

(assert (not b!7237637))

(assert (not d!2248317))

(assert (not b!7237664))

(assert (not b!7237671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

