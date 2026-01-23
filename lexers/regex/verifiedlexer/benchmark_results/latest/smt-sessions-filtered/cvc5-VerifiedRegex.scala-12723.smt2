; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!703556 () Bool)

(assert start!703556)

(declare-fun b!7241045 () Bool)

(assert (=> b!7241045 true))

(declare-fun b!7241034 () Bool)

(assert (=> b!7241034 true))

(declare-fun bs!1904140 () Bool)

(assert (= bs!1904140 (and b!7241034 b!7241045)))

(declare-fun lambda!441912 () Int)

(declare-datatypes ((C!37382 0))(
  ( (C!37383 (val!28639 Int)) )
))
(declare-datatypes ((List!70270 0))(
  ( (Nil!70146) (Cons!70146 (h!76594 C!37382) (t!384321 List!70270)) )
))
(declare-fun lt!2579900 () List!70270)

(declare-fun lambda!441914 () Int)

(declare-fun s1!1971 () List!70270)

(assert (=> bs!1904140 (= (= lt!2579900 (t!384321 s1!1971)) (= lambda!441914 lambda!441912))))

(assert (=> b!7241034 true))

(declare-fun b!7241032 () Bool)

(declare-fun e!4341363 () Bool)

(declare-fun tp!2035236 () Bool)

(assert (=> b!7241032 (= e!4341363 tp!2035236)))

(declare-fun e!4341368 () Bool)

(declare-fun e!4341372 () Bool)

(assert (=> b!7241034 (= e!4341368 e!4341372)))

(declare-fun res!2937445 () Bool)

(assert (=> b!7241034 (=> res!2937445 e!4341372)))

(declare-datatypes ((Regex!18554 0))(
  ( (ElementMatch!18554 (c!1344696 C!37382)) (Concat!27399 (regOne!37620 Regex!18554) (regTwo!37620 Regex!18554)) (EmptyExpr!18554) (Star!18554 (reg!18883 Regex!18554)) (EmptyLang!18554) (Union!18554 (regOne!37621 Regex!18554) (regTwo!37621 Regex!18554)) )
))
(declare-datatypes ((List!70271 0))(
  ( (Nil!70147) (Cons!70147 (h!76595 Regex!18554) (t!384322 List!70271)) )
))
(declare-datatypes ((Context!14988 0))(
  ( (Context!14989 (exprs!7994 List!70271)) )
))
(declare-fun lt!2579872 () (Set Context!14988))

(declare-fun lt!2579888 () List!70270)

(declare-fun matchZipper!3464 ((Set Context!14988) List!70270) Bool)

(assert (=> b!7241034 (= res!2937445 (not (matchZipper!3464 lt!2579872 lt!2579888)))))

(declare-fun ct1!232 () Context!14988)

(declare-fun lambda!441911 () Int)

(declare-datatypes ((Unit!163690 0))(
  ( (Unit!163691) )
))
(declare-fun lt!2579874 () Unit!163690)

(declare-fun ct2!328 () Context!14988)

(declare-fun lemmaConcatPreservesForall!1363 (List!70271 List!70271 Int) Unit!163690)

(assert (=> b!7241034 (= lt!2579874 (lemmaConcatPreservesForall!1363 (exprs!7994 ct1!232) (exprs!7994 ct2!328) lambda!441911))))

(declare-fun e!4341365 () Bool)

(assert (=> b!7241034 e!4341365))

(declare-fun res!2937441 () Bool)

(assert (=> b!7241034 (=> (not res!2937441) (not e!4341365))))

(declare-datatypes ((List!70272 0))(
  ( (Nil!70148) (Cons!70148 (h!76596 Context!14988) (t!384323 List!70272)) )
))
(declare-fun lt!2579876 () List!70272)

(declare-fun content!14486 (List!70272) (Set Context!14988))

(assert (=> b!7241034 (= res!2937441 (matchZipper!3464 (content!14486 lt!2579876) lt!2579900))))

(declare-fun lt!2579892 () Unit!163690)

(declare-fun lemmaExistsMatchingContextThenMatchingString!83 (List!70272 List!70270) Unit!163690)

(assert (=> b!7241034 (= lt!2579892 (lemmaExistsMatchingContextThenMatchingString!83 lt!2579876 lt!2579900))))

(declare-fun lt!2579902 () (Set Context!14988))

(declare-fun toList!11411 ((Set Context!14988)) List!70272)

(assert (=> b!7241034 (= lt!2579876 (toList!11411 lt!2579902))))

(declare-fun e!4341374 () Bool)

(assert (=> b!7241034 e!4341374))

(declare-fun res!2937444 () Bool)

(assert (=> b!7241034 (=> (not res!2937444) (not e!4341374))))

(declare-fun exists!4251 ((Set Context!14988) Int) Bool)

(assert (=> b!7241034 (= res!2937444 (exists!4251 lt!2579902 lambda!441914))))

(declare-fun lt!2579889 () Context!14988)

(declare-fun lt!2579893 () Unit!163690)

(declare-fun lemmaContainsThenExists!218 ((Set Context!14988) Context!14988 Int) Unit!163690)

(assert (=> b!7241034 (= lt!2579893 (lemmaContainsThenExists!218 lt!2579902 lt!2579889 lambda!441914))))

(declare-fun lt!2579895 () Context!14988)

(declare-fun lt!2579873 () Unit!163690)

(assert (=> b!7241034 (= lt!2579873 (lemmaConcatPreservesForall!1363 (exprs!7994 lt!2579895) (exprs!7994 ct2!328) lambda!441911))))

(assert (=> b!7241034 (set.member lt!2579889 lt!2579902)))

(declare-fun lt!2579903 () Unit!163690)

(assert (=> b!7241034 (= lt!2579903 (lemmaConcatPreservesForall!1363 (exprs!7994 lt!2579895) (exprs!7994 ct2!328) lambda!441911))))

(declare-fun lt!2579905 () (Set Context!14988))

(assert (=> b!7241034 (set.member lt!2579889 lt!2579905)))

(declare-fun lt!2579891 () Unit!163690)

(assert (=> b!7241034 (= lt!2579891 (lemmaConcatPreservesForall!1363 (exprs!7994 ct1!232) (exprs!7994 ct2!328) lambda!441911))))

(declare-fun lt!2579904 () Unit!163690)

(assert (=> b!7241034 (= lt!2579904 (lemmaConcatPreservesForall!1363 (exprs!7994 lt!2579895) (exprs!7994 ct2!328) lambda!441911))))

(declare-fun lt!2579877 () Unit!163690)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!19 (Context!14988 Context!14988 Context!14988 C!37382) Unit!163690)

(assert (=> b!7241034 (= lt!2579877 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!19 ct1!232 ct2!328 lt!2579895 (h!76594 s1!1971)))))

(declare-fun tail!14218 (List!70270) List!70270)

(assert (=> b!7241034 (= (tail!14218 lt!2579888) lt!2579900)))

(declare-fun s2!1849 () List!70270)

(declare-fun ++!16408 (List!70270 List!70270) List!70270)

(assert (=> b!7241034 (= lt!2579888 (++!16408 s1!1971 s2!1849))))

(declare-fun lt!2579898 () Unit!163690)

(declare-fun e!4341373 () Unit!163690)

(assert (=> b!7241034 (= lt!2579898 e!4341373)))

(declare-fun c!1344695 () Bool)

(declare-fun nullable!7867 (Regex!18554) Bool)

(assert (=> b!7241034 (= c!1344695 (nullable!7867 (h!76595 (exprs!7994 ct1!232))))))

(declare-fun lt!2579879 () Context!14988)

(declare-fun lambda!441913 () Int)

(declare-fun flatMap!2758 ((Set Context!14988) Int) (Set Context!14988))

(declare-fun derivationStepZipperUp!2428 (Context!14988 C!37382) (Set Context!14988))

(assert (=> b!7241034 (= (flatMap!2758 lt!2579872 lambda!441913) (derivationStepZipperUp!2428 lt!2579879 (h!76594 s1!1971)))))

(declare-fun lt!2579884 () Unit!163690)

(declare-fun lemmaFlatMapOnSingletonSet!2185 ((Set Context!14988) Context!14988 Int) Unit!163690)

(assert (=> b!7241034 (= lt!2579884 (lemmaFlatMapOnSingletonSet!2185 lt!2579872 lt!2579879 lambda!441913))))

(declare-fun lt!2579882 () Unit!163690)

(assert (=> b!7241034 (= lt!2579882 (lemmaConcatPreservesForall!1363 (exprs!7994 ct1!232) (exprs!7994 ct2!328) lambda!441911))))

(declare-fun lt!2579875 () (Set Context!14988))

(assert (=> b!7241034 (= (flatMap!2758 lt!2579875 lambda!441913) (derivationStepZipperUp!2428 ct1!232 (h!76594 s1!1971)))))

(declare-fun lt!2579899 () Unit!163690)

(assert (=> b!7241034 (= lt!2579899 (lemmaFlatMapOnSingletonSet!2185 lt!2579875 ct1!232 lambda!441913))))

(declare-fun lt!2579869 () (Set Context!14988))

(declare-fun lt!2579896 () Context!14988)

(declare-fun derivationStepZipperDown!2598 (Regex!18554 Context!14988 C!37382) (Set Context!14988))

(assert (=> b!7241034 (= lt!2579869 (derivationStepZipperDown!2598 (h!76595 (exprs!7994 ct1!232)) lt!2579896 (h!76594 s1!1971)))))

(declare-fun lt!2579868 () List!70271)

(declare-fun tail!14219 (List!70271) List!70271)

(assert (=> b!7241034 (= lt!2579896 (Context!14989 (tail!14219 lt!2579868)))))

(declare-fun b!7241035 () Bool)

(declare-fun e!4341370 () Bool)

(declare-fun e!4341364 () Bool)

(assert (=> b!7241035 (= e!4341370 e!4341364)))

(declare-fun res!2937442 () Bool)

(assert (=> b!7241035 (=> (not res!2937442) (not e!4341364))))

(declare-fun lt!2579907 () (Set Context!14988))

(assert (=> b!7241035 (= res!2937442 (matchZipper!3464 lt!2579907 (t!384321 s1!1971)))))

(declare-fun derivationStepZipper!3346 ((Set Context!14988) C!37382) (Set Context!14988))

(assert (=> b!7241035 (= lt!2579907 (derivationStepZipper!3346 lt!2579875 (h!76594 s1!1971)))))

(declare-fun b!7241036 () Bool)

(declare-fun e!4341367 () Bool)

(assert (=> b!7241036 (= e!4341367 e!4341370)))

(declare-fun res!2937450 () Bool)

(assert (=> b!7241036 (=> (not res!2937450) (not e!4341370))))

(assert (=> b!7241036 (= res!2937450 (and (not (is-Nil!70147 (exprs!7994 ct1!232))) (is-Cons!70146 s1!1971)))))

(assert (=> b!7241036 (= lt!2579872 (set.insert lt!2579879 (as set.empty (Set Context!14988))))))

(assert (=> b!7241036 (= lt!2579879 (Context!14989 lt!2579868))))

(declare-fun ++!16409 (List!70271 List!70271) List!70271)

(assert (=> b!7241036 (= lt!2579868 (++!16409 (exprs!7994 ct1!232) (exprs!7994 ct2!328)))))

(declare-fun lt!2579894 () Unit!163690)

(assert (=> b!7241036 (= lt!2579894 (lemmaConcatPreservesForall!1363 (exprs!7994 ct1!232) (exprs!7994 ct2!328) lambda!441911))))

(declare-fun b!7241037 () Bool)

(declare-fun e!4341359 () Bool)

(declare-fun e!4341371 () Bool)

(assert (=> b!7241037 (= e!4341359 e!4341371)))

(declare-fun res!2937452 () Bool)

(assert (=> b!7241037 (=> res!2937452 e!4341371)))

(declare-fun isEmpty!40423 (List!70271) Bool)

(assert (=> b!7241037 (= res!2937452 (isEmpty!40423 (exprs!7994 ct1!232)))))

(declare-fun lt!2579908 () (Set Context!14988))

(assert (=> b!7241037 (= lt!2579908 (derivationStepZipperUp!2428 ct1!232 (h!76594 s1!1971)))))

(declare-fun lt!2579886 () Unit!163690)

(assert (=> b!7241037 (= lt!2579886 (lemmaConcatPreservesForall!1363 (exprs!7994 lt!2579895) (exprs!7994 ct2!328) lambda!441911))))

(assert (=> b!7241037 (matchZipper!3464 (set.insert lt!2579889 (as set.empty (Set Context!14988))) lt!2579900)))

(assert (=> b!7241037 (= lt!2579900 (++!16408 (t!384321 s1!1971) s2!1849))))

(assert (=> b!7241037 (= lt!2579889 (Context!14989 (++!16409 (exprs!7994 lt!2579895) (exprs!7994 ct2!328))))))

(declare-fun lt!2579909 () Unit!163690)

(assert (=> b!7241037 (= lt!2579909 (lemmaConcatPreservesForall!1363 (exprs!7994 lt!2579895) (exprs!7994 ct2!328) lambda!441911))))

(declare-fun lt!2579897 () Unit!163690)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!345 (Context!14988 Context!14988 List!70270 List!70270) Unit!163690)

(assert (=> b!7241037 (= lt!2579897 (lemmaConcatenateContextMatchesConcatOfStrings!345 lt!2579895 ct2!328 (t!384321 s1!1971) s2!1849))))

(declare-fun getWitness!2105 ((Set Context!14988) Int) Context!14988)

(assert (=> b!7241037 (= lt!2579895 (getWitness!2105 lt!2579907 lambda!441912))))

(declare-fun b!7241038 () Bool)

(declare-fun e!4341361 () Bool)

(declare-fun lt!2579881 () (Set Context!14988))

(assert (=> b!7241038 (= e!4341361 (matchZipper!3464 lt!2579881 lt!2579900))))

(declare-fun b!7241039 () Bool)

(declare-fun e!4341369 () Bool)

(assert (=> b!7241039 (= e!4341372 e!4341369)))

(declare-fun res!2937447 () Bool)

(assert (=> b!7241039 (=> res!2937447 e!4341369)))

(declare-fun forall!17395 (List!70271 Int) Bool)

(assert (=> b!7241039 (= res!2937447 (not (forall!17395 (exprs!7994 ct1!232) lambda!441911)))))

(declare-fun b!7241040 () Bool)

(assert (=> b!7241040 (= e!4341369 (forall!17395 (exprs!7994 ct2!328) lambda!441911))))

(declare-fun b!7241041 () Bool)

(declare-fun e!4341360 () Bool)

(declare-fun tp!2035233 () Bool)

(assert (=> b!7241041 (= e!4341360 tp!2035233)))

(declare-fun b!7241042 () Bool)

(declare-fun e!4341358 () Bool)

(declare-fun lt!2579885 () (Set Context!14988))

(assert (=> b!7241042 (= e!4341358 (matchZipper!3464 lt!2579885 (t!384321 s1!1971)))))

(declare-fun res!2937453 () Bool)

(assert (=> start!703556 (=> (not res!2937453) (not e!4341367))))

(assert (=> start!703556 (= res!2937453 (matchZipper!3464 lt!2579875 s1!1971))))

(assert (=> start!703556 (= lt!2579875 (set.insert ct1!232 (as set.empty (Set Context!14988))))))

(assert (=> start!703556 e!4341367))

(declare-fun inv!89396 (Context!14988) Bool)

(assert (=> start!703556 (and (inv!89396 ct1!232) e!4341360)))

(declare-fun e!4341366 () Bool)

(assert (=> start!703556 e!4341366))

(declare-fun e!4341362 () Bool)

(assert (=> start!703556 e!4341362))

(assert (=> start!703556 (and (inv!89396 ct2!328) e!4341363)))

(declare-fun b!7241033 () Bool)

(declare-fun res!2937443 () Bool)

(assert (=> b!7241033 (=> (not res!2937443) (not e!4341367))))

(assert (=> b!7241033 (= res!2937443 (matchZipper!3464 (set.insert ct2!328 (as set.empty (Set Context!14988))) s2!1849))))

(declare-fun b!7241043 () Bool)

(assert (=> b!7241043 (= e!4341365 (matchZipper!3464 lt!2579902 lt!2579900))))

(declare-fun b!7241044 () Bool)

(assert (=> b!7241044 (= e!4341371 e!4341368)))

(declare-fun res!2937451 () Bool)

(assert (=> b!7241044 (=> res!2937451 e!4341368)))

(assert (=> b!7241044 (= res!2937451 (isEmpty!40423 lt!2579868))))

(declare-fun lt!2579871 () Unit!163690)

(assert (=> b!7241044 (= lt!2579871 (lemmaConcatPreservesForall!1363 (exprs!7994 ct1!232) (exprs!7994 ct2!328) lambda!441911))))

(assert (=> b!7241044 (= lt!2579905 (derivationStepZipperUp!2428 lt!2579879 (h!76594 s1!1971)))))

(declare-fun lt!2579887 () Unit!163690)

(assert (=> b!7241044 (= lt!2579887 (lemmaConcatPreservesForall!1363 (exprs!7994 ct1!232) (exprs!7994 ct2!328) lambda!441911))))

(declare-fun lt!2579883 () (Set Context!14988))

(declare-fun lt!2579880 () Context!14988)

(assert (=> b!7241044 (= lt!2579883 (derivationStepZipperDown!2598 (h!76595 (exprs!7994 ct1!232)) lt!2579880 (h!76594 s1!1971)))))

(assert (=> b!7241044 (= lt!2579880 (Context!14989 (tail!14219 (exprs!7994 ct1!232))))))

(assert (=> b!7241045 (= e!4341364 (not e!4341359))))

(declare-fun res!2937448 () Bool)

(assert (=> b!7241045 (=> res!2937448 e!4341359)))

(assert (=> b!7241045 (= res!2937448 (not (exists!4251 lt!2579907 lambda!441912)))))

(declare-fun lt!2579901 () List!70272)

(declare-fun exists!4252 (List!70272 Int) Bool)

(assert (=> b!7241045 (exists!4252 lt!2579901 lambda!441912)))

(declare-fun lt!2579870 () Unit!163690)

(declare-fun lemmaZipperMatchesExistsMatchingContext!697 (List!70272 List!70270) Unit!163690)

(assert (=> b!7241045 (= lt!2579870 (lemmaZipperMatchesExistsMatchingContext!697 lt!2579901 (t!384321 s1!1971)))))

(assert (=> b!7241045 (= lt!2579901 (toList!11411 lt!2579907))))

(assert (=> b!7241045 (= lt!2579902 (derivationStepZipper!3346 lt!2579872 (h!76594 s1!1971)))))

(declare-fun b!7241046 () Bool)

(assert (=> b!7241046 (= e!4341374 (exists!4251 lt!2579902 lambda!441914))))

(declare-fun b!7241047 () Bool)

(declare-fun tp_is_empty!46573 () Bool)

(declare-fun tp!2035235 () Bool)

(assert (=> b!7241047 (= e!4341362 (and tp_is_empty!46573 tp!2035235))))

(declare-fun b!7241048 () Bool)

(declare-fun Unit!163692 () Unit!163690)

(assert (=> b!7241048 (= e!4341373 Unit!163692)))

(declare-fun lt!2579878 () Unit!163690)

(assert (=> b!7241048 (= lt!2579878 (lemmaConcatPreservesForall!1363 (exprs!7994 ct1!232) (exprs!7994 ct2!328) lambda!441911))))

(assert (=> b!7241048 (= lt!2579885 (derivationStepZipperUp!2428 lt!2579880 (h!76594 s1!1971)))))

(declare-fun lt!2579906 () Unit!163690)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1701 ((Set Context!14988) (Set Context!14988) List!70270) Unit!163690)

(assert (=> b!7241048 (= lt!2579906 (lemmaZipperConcatMatchesSameAsBothZippers!1701 lt!2579883 lt!2579885 (t!384321 s1!1971)))))

(declare-fun res!2937449 () Bool)

(assert (=> b!7241048 (= res!2937449 (matchZipper!3464 lt!2579883 (t!384321 s1!1971)))))

(assert (=> b!7241048 (=> res!2937449 e!4341358)))

(assert (=> b!7241048 (= (matchZipper!3464 (set.union lt!2579883 lt!2579885) (t!384321 s1!1971)) e!4341358)))

(declare-fun lt!2579890 () Unit!163690)

(assert (=> b!7241048 (= lt!2579890 (lemmaConcatPreservesForall!1363 (exprs!7994 ct1!232) (exprs!7994 ct2!328) lambda!441911))))

(assert (=> b!7241048 (= lt!2579881 (derivationStepZipperUp!2428 lt!2579896 (h!76594 s1!1971)))))

(declare-fun lt!2579867 () Unit!163690)

(assert (=> b!7241048 (= lt!2579867 (lemmaZipperConcatMatchesSameAsBothZippers!1701 lt!2579869 lt!2579881 lt!2579900))))

(declare-fun res!2937446 () Bool)

(assert (=> b!7241048 (= res!2937446 (matchZipper!3464 lt!2579869 lt!2579900))))

(assert (=> b!7241048 (=> res!2937446 e!4341361)))

(assert (=> b!7241048 (= (matchZipper!3464 (set.union lt!2579869 lt!2579881) lt!2579900) e!4341361)))

(declare-fun b!7241049 () Bool)

(declare-fun Unit!163693 () Unit!163690)

(assert (=> b!7241049 (= e!4341373 Unit!163693)))

(declare-fun b!7241050 () Bool)

(declare-fun tp!2035234 () Bool)

(assert (=> b!7241050 (= e!4341366 (and tp_is_empty!46573 tp!2035234))))

(assert (= (and start!703556 res!2937453) b!7241033))

(assert (= (and b!7241033 res!2937443) b!7241036))

(assert (= (and b!7241036 res!2937450) b!7241035))

(assert (= (and b!7241035 res!2937442) b!7241045))

(assert (= (and b!7241045 (not res!2937448)) b!7241037))

(assert (= (and b!7241037 (not res!2937452)) b!7241044))

(assert (= (and b!7241044 (not res!2937451)) b!7241034))

(assert (= (and b!7241034 c!1344695) b!7241048))

(assert (= (and b!7241034 (not c!1344695)) b!7241049))

(assert (= (and b!7241048 (not res!2937449)) b!7241042))

(assert (= (and b!7241048 (not res!2937446)) b!7241038))

(assert (= (and b!7241034 res!2937444) b!7241046))

(assert (= (and b!7241034 res!2937441) b!7241043))

(assert (= (and b!7241034 (not res!2937445)) b!7241039))

(assert (= (and b!7241039 (not res!2937447)) b!7241040))

(assert (= start!703556 b!7241041))

(assert (= (and start!703556 (is-Cons!70146 s1!1971)) b!7241050))

(assert (= (and start!703556 (is-Cons!70146 s2!1849)) b!7241047))

(assert (= start!703556 b!7241032))

(declare-fun m!7915140 () Bool)

(assert (=> b!7241037 m!7915140))

(declare-fun m!7915142 () Bool)

(assert (=> b!7241037 m!7915142))

(declare-fun m!7915144 () Bool)

(assert (=> b!7241037 m!7915144))

(declare-fun m!7915146 () Bool)

(assert (=> b!7241037 m!7915146))

(declare-fun m!7915148 () Bool)

(assert (=> b!7241037 m!7915148))

(declare-fun m!7915150 () Bool)

(assert (=> b!7241037 m!7915150))

(declare-fun m!7915152 () Bool)

(assert (=> b!7241037 m!7915152))

(assert (=> b!7241037 m!7915140))

(declare-fun m!7915154 () Bool)

(assert (=> b!7241037 m!7915154))

(assert (=> b!7241037 m!7915144))

(declare-fun m!7915156 () Bool)

(assert (=> b!7241037 m!7915156))

(declare-fun m!7915158 () Bool)

(assert (=> b!7241044 m!7915158))

(declare-fun m!7915160 () Bool)

(assert (=> b!7241044 m!7915160))

(declare-fun m!7915162 () Bool)

(assert (=> b!7241044 m!7915162))

(declare-fun m!7915164 () Bool)

(assert (=> b!7241044 m!7915164))

(declare-fun m!7915166 () Bool)

(assert (=> b!7241044 m!7915166))

(assert (=> b!7241044 m!7915166))

(declare-fun m!7915168 () Bool)

(assert (=> b!7241042 m!7915168))

(declare-fun m!7915170 () Bool)

(assert (=> b!7241039 m!7915170))

(declare-fun m!7915172 () Bool)

(assert (=> start!703556 m!7915172))

(declare-fun m!7915174 () Bool)

(assert (=> start!703556 m!7915174))

(declare-fun m!7915176 () Bool)

(assert (=> start!703556 m!7915176))

(declare-fun m!7915178 () Bool)

(assert (=> start!703556 m!7915178))

(declare-fun m!7915180 () Bool)

(assert (=> b!7241034 m!7915180))

(declare-fun m!7915182 () Bool)

(assert (=> b!7241034 m!7915182))

(assert (=> b!7241034 m!7915166))

(declare-fun m!7915184 () Bool)

(assert (=> b!7241034 m!7915184))

(assert (=> b!7241034 m!7915180))

(assert (=> b!7241034 m!7915140))

(declare-fun m!7915186 () Bool)

(assert (=> b!7241034 m!7915186))

(assert (=> b!7241034 m!7915140))

(declare-fun m!7915188 () Bool)

(assert (=> b!7241034 m!7915188))

(assert (=> b!7241034 m!7915164))

(assert (=> b!7241034 m!7915166))

(declare-fun m!7915190 () Bool)

(assert (=> b!7241034 m!7915190))

(declare-fun m!7915192 () Bool)

(assert (=> b!7241034 m!7915192))

(assert (=> b!7241034 m!7915140))

(declare-fun m!7915194 () Bool)

(assert (=> b!7241034 m!7915194))

(declare-fun m!7915196 () Bool)

(assert (=> b!7241034 m!7915196))

(declare-fun m!7915198 () Bool)

(assert (=> b!7241034 m!7915198))

(assert (=> b!7241034 m!7915166))

(declare-fun m!7915200 () Bool)

(assert (=> b!7241034 m!7915200))

(declare-fun m!7915202 () Bool)

(assert (=> b!7241034 m!7915202))

(assert (=> b!7241034 m!7915154))

(declare-fun m!7915204 () Bool)

(assert (=> b!7241034 m!7915204))

(declare-fun m!7915206 () Bool)

(assert (=> b!7241034 m!7915206))

(declare-fun m!7915208 () Bool)

(assert (=> b!7241034 m!7915208))

(declare-fun m!7915210 () Bool)

(assert (=> b!7241034 m!7915210))

(declare-fun m!7915212 () Bool)

(assert (=> b!7241034 m!7915212))

(declare-fun m!7915214 () Bool)

(assert (=> b!7241034 m!7915214))

(declare-fun m!7915216 () Bool)

(assert (=> b!7241034 m!7915216))

(declare-fun m!7915218 () Bool)

(assert (=> b!7241045 m!7915218))

(declare-fun m!7915220 () Bool)

(assert (=> b!7241045 m!7915220))

(declare-fun m!7915222 () Bool)

(assert (=> b!7241045 m!7915222))

(declare-fun m!7915224 () Bool)

(assert (=> b!7241045 m!7915224))

(declare-fun m!7915226 () Bool)

(assert (=> b!7241045 m!7915226))

(declare-fun m!7915228 () Bool)

(assert (=> b!7241048 m!7915228))

(declare-fun m!7915230 () Bool)

(assert (=> b!7241048 m!7915230))

(declare-fun m!7915232 () Bool)

(assert (=> b!7241048 m!7915232))

(declare-fun m!7915234 () Bool)

(assert (=> b!7241048 m!7915234))

(assert (=> b!7241048 m!7915166))

(assert (=> b!7241048 m!7915166))

(declare-fun m!7915236 () Bool)

(assert (=> b!7241048 m!7915236))

(declare-fun m!7915238 () Bool)

(assert (=> b!7241048 m!7915238))

(declare-fun m!7915240 () Bool)

(assert (=> b!7241048 m!7915240))

(declare-fun m!7915242 () Bool)

(assert (=> b!7241048 m!7915242))

(assert (=> b!7241046 m!7915204))

(declare-fun m!7915244 () Bool)

(assert (=> b!7241033 m!7915244))

(assert (=> b!7241033 m!7915244))

(declare-fun m!7915246 () Bool)

(assert (=> b!7241033 m!7915246))

(declare-fun m!7915248 () Bool)

(assert (=> b!7241038 m!7915248))

(declare-fun m!7915250 () Bool)

(assert (=> b!7241035 m!7915250))

(declare-fun m!7915252 () Bool)

(assert (=> b!7241035 m!7915252))

(declare-fun m!7915254 () Bool)

(assert (=> b!7241036 m!7915254))

(declare-fun m!7915256 () Bool)

(assert (=> b!7241036 m!7915256))

(assert (=> b!7241036 m!7915166))

(declare-fun m!7915258 () Bool)

(assert (=> b!7241043 m!7915258))

(declare-fun m!7915260 () Bool)

(assert (=> b!7241040 m!7915260))

(push 1)

(assert (not b!7241036))

(assert (not b!7241043))

(assert (not b!7241040))

(assert (not b!7241039))

(assert (not b!7241047))

(assert (not b!7241038))

(assert (not b!7241035))

(assert (not b!7241044))

(assert tp_is_empty!46573)

(assert (not b!7241050))

(assert (not start!703556))

(assert (not b!7241033))

(assert (not b!7241046))

(assert (not b!7241045))

(assert (not b!7241042))

(assert (not b!7241032))

(assert (not b!7241034))

(assert (not b!7241037))

(assert (not b!7241041))

(assert (not b!7241048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2249682 () Bool)

(declare-fun c!1344718 () Bool)

(declare-fun isEmpty!40425 (List!70270) Bool)

(assert (=> d!2249682 (= c!1344718 (isEmpty!40425 lt!2579900))))

(declare-fun e!4341428 () Bool)

(assert (=> d!2249682 (= (matchZipper!3464 lt!2579902 lt!2579900) e!4341428)))

(declare-fun b!7241120 () Bool)

(declare-fun nullableZipper!2848 ((Set Context!14988)) Bool)

(assert (=> b!7241120 (= e!4341428 (nullableZipper!2848 lt!2579902))))

(declare-fun b!7241121 () Bool)

(declare-fun head!14837 (List!70270) C!37382)

(assert (=> b!7241121 (= e!4341428 (matchZipper!3464 (derivationStepZipper!3346 lt!2579902 (head!14837 lt!2579900)) (tail!14218 lt!2579900)))))

(assert (= (and d!2249682 c!1344718) b!7241120))

(assert (= (and d!2249682 (not c!1344718)) b!7241121))

(declare-fun m!7915384 () Bool)

(assert (=> d!2249682 m!7915384))

(declare-fun m!7915386 () Bool)

(assert (=> b!7241120 m!7915386))

(declare-fun m!7915388 () Bool)

(assert (=> b!7241121 m!7915388))

(assert (=> b!7241121 m!7915388))

(declare-fun m!7915390 () Bool)

(assert (=> b!7241121 m!7915390))

(declare-fun m!7915392 () Bool)

(assert (=> b!7241121 m!7915392))

(assert (=> b!7241121 m!7915390))

(assert (=> b!7241121 m!7915392))

(declare-fun m!7915394 () Bool)

(assert (=> b!7241121 m!7915394))

(assert (=> b!7241043 d!2249682))

(declare-fun d!2249684 () Bool)

(declare-fun c!1344719 () Bool)

(assert (=> d!2249684 (= c!1344719 (isEmpty!40425 s1!1971))))

(declare-fun e!4341429 () Bool)

(assert (=> d!2249684 (= (matchZipper!3464 lt!2579875 s1!1971) e!4341429)))

(declare-fun b!7241122 () Bool)

(assert (=> b!7241122 (= e!4341429 (nullableZipper!2848 lt!2579875))))

(declare-fun b!7241123 () Bool)

(assert (=> b!7241123 (= e!4341429 (matchZipper!3464 (derivationStepZipper!3346 lt!2579875 (head!14837 s1!1971)) (tail!14218 s1!1971)))))

(assert (= (and d!2249684 c!1344719) b!7241122))

(assert (= (and d!2249684 (not c!1344719)) b!7241123))

(declare-fun m!7915396 () Bool)

(assert (=> d!2249684 m!7915396))

(declare-fun m!7915398 () Bool)

(assert (=> b!7241122 m!7915398))

(declare-fun m!7915400 () Bool)

(assert (=> b!7241123 m!7915400))

(assert (=> b!7241123 m!7915400))

(declare-fun m!7915402 () Bool)

(assert (=> b!7241123 m!7915402))

(declare-fun m!7915404 () Bool)

(assert (=> b!7241123 m!7915404))

(assert (=> b!7241123 m!7915402))

(assert (=> b!7241123 m!7915404))

(declare-fun m!7915406 () Bool)

(assert (=> b!7241123 m!7915406))

(assert (=> start!703556 d!2249684))

(declare-fun bs!1904142 () Bool)

(declare-fun d!2249686 () Bool)

(assert (= bs!1904142 (and d!2249686 b!7241036)))

(declare-fun lambda!441963 () Int)

(assert (=> bs!1904142 (= lambda!441963 lambda!441911)))

(assert (=> d!2249686 (= (inv!89396 ct1!232) (forall!17395 (exprs!7994 ct1!232) lambda!441963))))

(declare-fun bs!1904143 () Bool)

(assert (= bs!1904143 d!2249686))

(declare-fun m!7915408 () Bool)

(assert (=> bs!1904143 m!7915408))

(assert (=> start!703556 d!2249686))

(declare-fun bs!1904144 () Bool)

(declare-fun d!2249688 () Bool)

(assert (= bs!1904144 (and d!2249688 b!7241036)))

(declare-fun lambda!441964 () Int)

(assert (=> bs!1904144 (= lambda!441964 lambda!441911)))

(declare-fun bs!1904145 () Bool)

(assert (= bs!1904145 (and d!2249688 d!2249686)))

(assert (=> bs!1904145 (= lambda!441964 lambda!441963)))

(assert (=> d!2249688 (= (inv!89396 ct2!328) (forall!17395 (exprs!7994 ct2!328) lambda!441964))))

(declare-fun bs!1904146 () Bool)

(assert (= bs!1904146 d!2249688))

(declare-fun m!7915410 () Bool)

(assert (=> bs!1904146 m!7915410))

(assert (=> start!703556 d!2249688))

(declare-fun d!2249690 () Bool)

(declare-fun c!1344720 () Bool)

(assert (=> d!2249690 (= c!1344720 (isEmpty!40425 (t!384321 s1!1971)))))

(declare-fun e!4341430 () Bool)

(assert (=> d!2249690 (= (matchZipper!3464 lt!2579885 (t!384321 s1!1971)) e!4341430)))

(declare-fun b!7241124 () Bool)

(assert (=> b!7241124 (= e!4341430 (nullableZipper!2848 lt!2579885))))

(declare-fun b!7241125 () Bool)

(assert (=> b!7241125 (= e!4341430 (matchZipper!3464 (derivationStepZipper!3346 lt!2579885 (head!14837 (t!384321 s1!1971))) (tail!14218 (t!384321 s1!1971))))))

(assert (= (and d!2249690 c!1344720) b!7241124))

(assert (= (and d!2249690 (not c!1344720)) b!7241125))

(declare-fun m!7915412 () Bool)

(assert (=> d!2249690 m!7915412))

(declare-fun m!7915414 () Bool)

(assert (=> b!7241124 m!7915414))

(declare-fun m!7915416 () Bool)

(assert (=> b!7241125 m!7915416))

(assert (=> b!7241125 m!7915416))

(declare-fun m!7915418 () Bool)

(assert (=> b!7241125 m!7915418))

(declare-fun m!7915420 () Bool)

(assert (=> b!7241125 m!7915420))

(assert (=> b!7241125 m!7915418))

(assert (=> b!7241125 m!7915420))

(declare-fun m!7915422 () Bool)

(assert (=> b!7241125 m!7915422))

(assert (=> b!7241042 d!2249690))

(declare-fun d!2249692 () Bool)

(declare-fun c!1344721 () Bool)

(assert (=> d!2249692 (= c!1344721 (isEmpty!40425 (t!384321 s1!1971)))))

(declare-fun e!4341431 () Bool)

(assert (=> d!2249692 (= (matchZipper!3464 lt!2579907 (t!384321 s1!1971)) e!4341431)))

(declare-fun b!7241126 () Bool)

(assert (=> b!7241126 (= e!4341431 (nullableZipper!2848 lt!2579907))))

(declare-fun b!7241127 () Bool)

(assert (=> b!7241127 (= e!4341431 (matchZipper!3464 (derivationStepZipper!3346 lt!2579907 (head!14837 (t!384321 s1!1971))) (tail!14218 (t!384321 s1!1971))))))

(assert (= (and d!2249692 c!1344721) b!7241126))

(assert (= (and d!2249692 (not c!1344721)) b!7241127))

(assert (=> d!2249692 m!7915412))

(declare-fun m!7915424 () Bool)

(assert (=> b!7241126 m!7915424))

(assert (=> b!7241127 m!7915416))

(assert (=> b!7241127 m!7915416))

(declare-fun m!7915426 () Bool)

(assert (=> b!7241127 m!7915426))

(assert (=> b!7241127 m!7915420))

(assert (=> b!7241127 m!7915426))

(assert (=> b!7241127 m!7915420))

(declare-fun m!7915428 () Bool)

(assert (=> b!7241127 m!7915428))

(assert (=> b!7241035 d!2249692))

(declare-fun bs!1904147 () Bool)

(declare-fun d!2249694 () Bool)

(assert (= bs!1904147 (and d!2249694 b!7241034)))

(declare-fun lambda!441967 () Int)

(assert (=> bs!1904147 (= lambda!441967 lambda!441913)))

(assert (=> d!2249694 true))

(assert (=> d!2249694 (= (derivationStepZipper!3346 lt!2579875 (h!76594 s1!1971)) (flatMap!2758 lt!2579875 lambda!441967))))

(declare-fun bs!1904148 () Bool)

(assert (= bs!1904148 d!2249694))

(declare-fun m!7915430 () Bool)

(assert (=> bs!1904148 m!7915430))

(assert (=> b!7241035 d!2249694))

(declare-fun d!2249696 () Bool)

(declare-fun e!4341434 () Bool)

(assert (=> d!2249696 e!4341434))

(declare-fun res!2937495 () Bool)

(assert (=> d!2249696 (=> (not res!2937495) (not e!4341434))))

(declare-fun lt!2580041 () List!70272)

(declare-fun noDuplicate!2955 (List!70272) Bool)

(assert (=> d!2249696 (= res!2937495 (noDuplicate!2955 lt!2580041))))

(declare-fun choose!55772 ((Set Context!14988)) List!70272)

(assert (=> d!2249696 (= lt!2580041 (choose!55772 lt!2579907))))

(assert (=> d!2249696 (= (toList!11411 lt!2579907) lt!2580041)))

(declare-fun b!7241132 () Bool)

(assert (=> b!7241132 (= e!4341434 (= (content!14486 lt!2580041) lt!2579907))))

(assert (= (and d!2249696 res!2937495) b!7241132))

(declare-fun m!7915432 () Bool)

(assert (=> d!2249696 m!7915432))

(declare-fun m!7915434 () Bool)

(assert (=> d!2249696 m!7915434))

(declare-fun m!7915436 () Bool)

(assert (=> b!7241132 m!7915436))

(assert (=> b!7241045 d!2249696))

(declare-fun bs!1904149 () Bool)

(declare-fun d!2249698 () Bool)

(assert (= bs!1904149 (and d!2249698 b!7241034)))

(declare-fun lambda!441968 () Int)

(assert (=> bs!1904149 (= lambda!441968 lambda!441913)))

(declare-fun bs!1904150 () Bool)

(assert (= bs!1904150 (and d!2249698 d!2249694)))

(assert (=> bs!1904150 (= lambda!441968 lambda!441967)))

(assert (=> d!2249698 true))

(assert (=> d!2249698 (= (derivationStepZipper!3346 lt!2579872 (h!76594 s1!1971)) (flatMap!2758 lt!2579872 lambda!441968))))

(declare-fun bs!1904151 () Bool)

(assert (= bs!1904151 d!2249698))

(declare-fun m!7915438 () Bool)

(assert (=> bs!1904151 m!7915438))

(assert (=> b!7241045 d!2249698))

(declare-fun d!2249700 () Bool)

(declare-fun lt!2580044 () Bool)

(assert (=> d!2249700 (= lt!2580044 (exists!4252 (toList!11411 lt!2579907) lambda!441912))))

(declare-fun choose!55773 ((Set Context!14988) Int) Bool)

(assert (=> d!2249700 (= lt!2580044 (choose!55773 lt!2579907 lambda!441912))))

(assert (=> d!2249700 (= (exists!4251 lt!2579907 lambda!441912) lt!2580044)))

(declare-fun bs!1904152 () Bool)

(assert (= bs!1904152 d!2249700))

(assert (=> bs!1904152 m!7915220))

(assert (=> bs!1904152 m!7915220))

(declare-fun m!7915440 () Bool)

(assert (=> bs!1904152 m!7915440))

(declare-fun m!7915442 () Bool)

(assert (=> bs!1904152 m!7915442))

(assert (=> b!7241045 d!2249700))

(declare-fun bs!1904153 () Bool)

(declare-fun d!2249702 () Bool)

(assert (= bs!1904153 (and d!2249702 b!7241045)))

(declare-fun lambda!441971 () Int)

(assert (=> bs!1904153 (not (= lambda!441971 lambda!441912))))

(declare-fun bs!1904154 () Bool)

(assert (= bs!1904154 (and d!2249702 b!7241034)))

(assert (=> bs!1904154 (not (= lambda!441971 lambda!441914))))

(assert (=> d!2249702 true))

(declare-fun order!28899 () Int)

(declare-fun dynLambda!28636 (Int Int) Int)

(assert (=> d!2249702 (< (dynLambda!28636 order!28899 lambda!441912) (dynLambda!28636 order!28899 lambda!441971))))

(declare-fun forall!17397 (List!70272 Int) Bool)

(assert (=> d!2249702 (= (exists!4252 lt!2579901 lambda!441912) (not (forall!17397 lt!2579901 lambda!441971)))))

(declare-fun bs!1904155 () Bool)

(assert (= bs!1904155 d!2249702))

(declare-fun m!7915444 () Bool)

(assert (=> bs!1904155 m!7915444))

(assert (=> b!7241045 d!2249702))

(declare-fun bs!1904156 () Bool)

(declare-fun d!2249704 () Bool)

(assert (= bs!1904156 (and d!2249704 b!7241045)))

(declare-fun lambda!441974 () Int)

(assert (=> bs!1904156 (= lambda!441974 lambda!441912)))

(declare-fun bs!1904157 () Bool)

(assert (= bs!1904157 (and d!2249704 b!7241034)))

(assert (=> bs!1904157 (= (= (t!384321 s1!1971) lt!2579900) (= lambda!441974 lambda!441914))))

(declare-fun bs!1904158 () Bool)

(assert (= bs!1904158 (and d!2249704 d!2249702)))

(assert (=> bs!1904158 (not (= lambda!441974 lambda!441971))))

(assert (=> d!2249704 true))

(assert (=> d!2249704 (exists!4252 lt!2579901 lambda!441974)))

(declare-fun lt!2580047 () Unit!163690)

(declare-fun choose!55774 (List!70272 List!70270) Unit!163690)

(assert (=> d!2249704 (= lt!2580047 (choose!55774 lt!2579901 (t!384321 s1!1971)))))

(assert (=> d!2249704 (matchZipper!3464 (content!14486 lt!2579901) (t!384321 s1!1971))))

(assert (=> d!2249704 (= (lemmaZipperMatchesExistsMatchingContext!697 lt!2579901 (t!384321 s1!1971)) lt!2580047)))

(declare-fun bs!1904159 () Bool)

(assert (= bs!1904159 d!2249704))

(declare-fun m!7915446 () Bool)

(assert (=> bs!1904159 m!7915446))

(declare-fun m!7915448 () Bool)

(assert (=> bs!1904159 m!7915448))

(declare-fun m!7915450 () Bool)

(assert (=> bs!1904159 m!7915450))

(assert (=> bs!1904159 m!7915450))

(declare-fun m!7915452 () Bool)

(assert (=> bs!1904159 m!7915452))

(assert (=> b!7241045 d!2249704))

(declare-fun d!2249706 () Bool)

(declare-fun lt!2580048 () Bool)

(assert (=> d!2249706 (= lt!2580048 (exists!4252 (toList!11411 lt!2579902) lambda!441914))))

(assert (=> d!2249706 (= lt!2580048 (choose!55773 lt!2579902 lambda!441914))))

(assert (=> d!2249706 (= (exists!4251 lt!2579902 lambda!441914) lt!2580048)))

(declare-fun bs!1904160 () Bool)

(assert (= bs!1904160 d!2249706))

(assert (=> bs!1904160 m!7915202))

(assert (=> bs!1904160 m!7915202))

(declare-fun m!7915454 () Bool)

(assert (=> bs!1904160 m!7915454))

(declare-fun m!7915456 () Bool)

(assert (=> bs!1904160 m!7915456))

(assert (=> b!7241034 d!2249706))

(declare-fun d!2249708 () Bool)

(declare-fun dynLambda!28637 (Int Context!14988) (Set Context!14988))

(assert (=> d!2249708 (= (flatMap!2758 lt!2579872 lambda!441913) (dynLambda!28637 lambda!441913 lt!2579879))))

(declare-fun lt!2580051 () Unit!163690)

(declare-fun choose!55775 ((Set Context!14988) Context!14988 Int) Unit!163690)

(assert (=> d!2249708 (= lt!2580051 (choose!55775 lt!2579872 lt!2579879 lambda!441913))))

(assert (=> d!2249708 (= lt!2579872 (set.insert lt!2579879 (as set.empty (Set Context!14988))))))

(assert (=> d!2249708 (= (lemmaFlatMapOnSingletonSet!2185 lt!2579872 lt!2579879 lambda!441913) lt!2580051)))

(declare-fun b_lambda!277791 () Bool)

(assert (=> (not b_lambda!277791) (not d!2249708)))

(declare-fun bs!1904161 () Bool)

(assert (= bs!1904161 d!2249708))

(assert (=> bs!1904161 m!7915210))

(declare-fun m!7915458 () Bool)

(assert (=> bs!1904161 m!7915458))

(declare-fun m!7915460 () Bool)

(assert (=> bs!1904161 m!7915460))

(assert (=> bs!1904161 m!7915254))

(assert (=> b!7241034 d!2249708))

(declare-fun bs!1904162 () Bool)

(declare-fun d!2249710 () Bool)

(assert (= bs!1904162 (and d!2249710 b!7241036)))

(declare-fun lambda!441979 () Int)

(assert (=> bs!1904162 (= lambda!441979 lambda!441911)))

(declare-fun bs!1904163 () Bool)

(assert (= bs!1904163 (and d!2249710 d!2249686)))

(assert (=> bs!1904163 (= lambda!441979 lambda!441963)))

(declare-fun bs!1904164 () Bool)

(assert (= bs!1904164 (and d!2249710 d!2249688)))

(assert (=> bs!1904164 (= lambda!441979 lambda!441964)))

(assert (=> d!2249710 (set.member (Context!14989 (++!16409 (exprs!7994 lt!2579895) (exprs!7994 ct2!328))) (derivationStepZipperUp!2428 (Context!14989 (++!16409 (exprs!7994 ct1!232) (exprs!7994 ct2!328))) (h!76594 s1!1971)))))

(declare-fun lt!2580060 () Unit!163690)

(assert (=> d!2249710 (= lt!2580060 (lemmaConcatPreservesForall!1363 (exprs!7994 ct1!232) (exprs!7994 ct2!328) lambda!441979))))

(declare-fun lt!2580059 () Unit!163690)

(assert (=> d!2249710 (= lt!2580059 (lemmaConcatPreservesForall!1363 (exprs!7994 lt!2579895) (exprs!7994 ct2!328) lambda!441979))))

(declare-fun lt!2580058 () Unit!163690)

(declare-fun choose!55776 (Context!14988 Context!14988 Context!14988 C!37382) Unit!163690)

(assert (=> d!2249710 (= lt!2580058 (choose!55776 ct1!232 ct2!328 lt!2579895 (h!76594 s1!1971)))))

(assert (=> d!2249710 (set.member lt!2579895 (derivationStepZipperUp!2428 ct1!232 (h!76594 s1!1971)))))

(assert (=> d!2249710 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!19 ct1!232 ct2!328 lt!2579895 (h!76594 s1!1971)) lt!2580058)))

(declare-fun bs!1904165 () Bool)

(assert (= bs!1904165 d!2249710))

(declare-fun m!7915462 () Bool)

(assert (=> bs!1904165 m!7915462))

(declare-fun m!7915464 () Bool)

(assert (=> bs!1904165 m!7915464))

(assert (=> bs!1904165 m!7915154))

(declare-fun m!7915466 () Bool)

(assert (=> bs!1904165 m!7915466))

(declare-fun m!7915468 () Bool)

(assert (=> bs!1904165 m!7915468))

(assert (=> bs!1904165 m!7915152))

(declare-fun m!7915470 () Bool)

(assert (=> bs!1904165 m!7915470))

(declare-fun m!7915472 () Bool)

(assert (=> bs!1904165 m!7915472))

(assert (=> bs!1904165 m!7915256))

(assert (=> b!7241034 d!2249710))

(declare-fun d!2249712 () Bool)

(declare-fun c!1344727 () Bool)

(assert (=> d!2249712 (= c!1344727 (isEmpty!40425 lt!2579888))))

(declare-fun e!4341435 () Bool)

(assert (=> d!2249712 (= (matchZipper!3464 lt!2579872 lt!2579888) e!4341435)))

(declare-fun b!7241135 () Bool)

(assert (=> b!7241135 (= e!4341435 (nullableZipper!2848 lt!2579872))))

(declare-fun b!7241136 () Bool)

(assert (=> b!7241136 (= e!4341435 (matchZipper!3464 (derivationStepZipper!3346 lt!2579872 (head!14837 lt!2579888)) (tail!14218 lt!2579888)))))

(assert (= (and d!2249712 c!1344727) b!7241135))

(assert (= (and d!2249712 (not c!1344727)) b!7241136))

(declare-fun m!7915474 () Bool)

(assert (=> d!2249712 m!7915474))

(declare-fun m!7915476 () Bool)

(assert (=> b!7241135 m!7915476))

(declare-fun m!7915478 () Bool)

(assert (=> b!7241136 m!7915478))

(assert (=> b!7241136 m!7915478))

(declare-fun m!7915480 () Bool)

(assert (=> b!7241136 m!7915480))

(assert (=> b!7241136 m!7915190))

(assert (=> b!7241136 m!7915480))

(assert (=> b!7241136 m!7915190))

(declare-fun m!7915482 () Bool)

(assert (=> b!7241136 m!7915482))

(assert (=> b!7241034 d!2249712))

(declare-fun d!2249714 () Bool)

(declare-fun c!1344728 () Bool)

(assert (=> d!2249714 (= c!1344728 (isEmpty!40425 lt!2579900))))

(declare-fun e!4341436 () Bool)

(assert (=> d!2249714 (= (matchZipper!3464 (content!14486 lt!2579876) lt!2579900) e!4341436)))

(declare-fun b!7241137 () Bool)

(assert (=> b!7241137 (= e!4341436 (nullableZipper!2848 (content!14486 lt!2579876)))))

(declare-fun b!7241138 () Bool)

(assert (=> b!7241138 (= e!4341436 (matchZipper!3464 (derivationStepZipper!3346 (content!14486 lt!2579876) (head!14837 lt!2579900)) (tail!14218 lt!2579900)))))

(assert (= (and d!2249714 c!1344728) b!7241137))

(assert (= (and d!2249714 (not c!1344728)) b!7241138))

(assert (=> d!2249714 m!7915384))

(assert (=> b!7241137 m!7915180))

(declare-fun m!7915484 () Bool)

(assert (=> b!7241137 m!7915484))

(assert (=> b!7241138 m!7915388))

(assert (=> b!7241138 m!7915180))

(assert (=> b!7241138 m!7915388))

(declare-fun m!7915486 () Bool)

(assert (=> b!7241138 m!7915486))

(assert (=> b!7241138 m!7915392))

(assert (=> b!7241138 m!7915486))

(assert (=> b!7241138 m!7915392))

(declare-fun m!7915488 () Bool)

(assert (=> b!7241138 m!7915488))

(assert (=> b!7241034 d!2249714))

(declare-fun bs!1904166 () Bool)

(declare-fun d!2249716 () Bool)

(assert (= bs!1904166 (and d!2249716 b!7241045)))

(declare-fun lambda!441982 () Int)

(assert (=> bs!1904166 (= (= lt!2579900 (t!384321 s1!1971)) (= lambda!441982 lambda!441912))))

(declare-fun bs!1904167 () Bool)

(assert (= bs!1904167 (and d!2249716 b!7241034)))

(assert (=> bs!1904167 (= lambda!441982 lambda!441914)))

(declare-fun bs!1904168 () Bool)

(assert (= bs!1904168 (and d!2249716 d!2249702)))

(assert (=> bs!1904168 (not (= lambda!441982 lambda!441971))))

(declare-fun bs!1904169 () Bool)

(assert (= bs!1904169 (and d!2249716 d!2249704)))

(assert (=> bs!1904169 (= (= lt!2579900 (t!384321 s1!1971)) (= lambda!441982 lambda!441974))))

(assert (=> d!2249716 true))

(assert (=> d!2249716 (matchZipper!3464 (content!14486 lt!2579876) lt!2579900)))

(declare-fun lt!2580063 () Unit!163690)

(declare-fun choose!55777 (List!70272 List!70270) Unit!163690)

(assert (=> d!2249716 (= lt!2580063 (choose!55777 lt!2579876 lt!2579900))))

(assert (=> d!2249716 (exists!4252 lt!2579876 lambda!441982)))

(assert (=> d!2249716 (= (lemmaExistsMatchingContextThenMatchingString!83 lt!2579876 lt!2579900) lt!2580063)))

(declare-fun bs!1904170 () Bool)

(assert (= bs!1904170 d!2249716))

(assert (=> bs!1904170 m!7915180))

(assert (=> bs!1904170 m!7915180))

(assert (=> bs!1904170 m!7915182))

(declare-fun m!7915490 () Bool)

(assert (=> bs!1904170 m!7915490))

(declare-fun m!7915492 () Bool)

(assert (=> bs!1904170 m!7915492))

(assert (=> b!7241034 d!2249716))

(declare-fun d!2249718 () Bool)

(declare-fun nullableFct!3083 (Regex!18554) Bool)

(assert (=> d!2249718 (= (nullable!7867 (h!76595 (exprs!7994 ct1!232))) (nullableFct!3083 (h!76595 (exprs!7994 ct1!232))))))

(declare-fun bs!1904171 () Bool)

(assert (= bs!1904171 d!2249718))

(declare-fun m!7915494 () Bool)

(assert (=> bs!1904171 m!7915494))

(assert (=> b!7241034 d!2249718))

(declare-fun d!2249720 () Bool)

(assert (=> d!2249720 (= (flatMap!2758 lt!2579875 lambda!441913) (dynLambda!28637 lambda!441913 ct1!232))))

(declare-fun lt!2580064 () Unit!163690)

(assert (=> d!2249720 (= lt!2580064 (choose!55775 lt!2579875 ct1!232 lambda!441913))))

(assert (=> d!2249720 (= lt!2579875 (set.insert ct1!232 (as set.empty (Set Context!14988))))))

(assert (=> d!2249720 (= (lemmaFlatMapOnSingletonSet!2185 lt!2579875 ct1!232 lambda!441913) lt!2580064)))

(declare-fun b_lambda!277793 () Bool)

(assert (=> (not b_lambda!277793) (not d!2249720)))

(declare-fun bs!1904172 () Bool)

(assert (= bs!1904172 d!2249720))

(assert (=> bs!1904172 m!7915196))

(declare-fun m!7915496 () Bool)

(assert (=> bs!1904172 m!7915496))

(declare-fun m!7915498 () Bool)

(assert (=> bs!1904172 m!7915498))

(assert (=> bs!1904172 m!7915174))

(assert (=> b!7241034 d!2249720))

(declare-fun d!2249722 () Bool)

(declare-fun c!1344736 () Bool)

(declare-fun e!4341445 () Bool)

(assert (=> d!2249722 (= c!1344736 e!4341445)))

(declare-fun res!2937498 () Bool)

(assert (=> d!2249722 (=> (not res!2937498) (not e!4341445))))

(assert (=> d!2249722 (= res!2937498 (is-Cons!70147 (exprs!7994 lt!2579879)))))

(declare-fun e!4341444 () (Set Context!14988))

(assert (=> d!2249722 (= (derivationStepZipperUp!2428 lt!2579879 (h!76594 s1!1971)) e!4341444)))

(declare-fun b!7241149 () Bool)

(assert (=> b!7241149 (= e!4341445 (nullable!7867 (h!76595 (exprs!7994 lt!2579879))))))

(declare-fun b!7241150 () Bool)

(declare-fun e!4341443 () (Set Context!14988))

(declare-fun call!659455 () (Set Context!14988))

(assert (=> b!7241150 (= e!4341443 call!659455)))

(declare-fun bm!659450 () Bool)

(assert (=> bm!659450 (= call!659455 (derivationStepZipperDown!2598 (h!76595 (exprs!7994 lt!2579879)) (Context!14989 (t!384322 (exprs!7994 lt!2579879))) (h!76594 s1!1971)))))

(declare-fun b!7241151 () Bool)

(assert (=> b!7241151 (= e!4341444 (set.union call!659455 (derivationStepZipperUp!2428 (Context!14989 (t!384322 (exprs!7994 lt!2579879))) (h!76594 s1!1971))))))

(declare-fun b!7241152 () Bool)

(assert (=> b!7241152 (= e!4341444 e!4341443)))

(declare-fun c!1344735 () Bool)

(assert (=> b!7241152 (= c!1344735 (is-Cons!70147 (exprs!7994 lt!2579879)))))

(declare-fun b!7241153 () Bool)

(assert (=> b!7241153 (= e!4341443 (as set.empty (Set Context!14988)))))

(assert (= (and d!2249722 res!2937498) b!7241149))

(assert (= (and d!2249722 c!1344736) b!7241151))

(assert (= (and d!2249722 (not c!1344736)) b!7241152))

(assert (= (and b!7241152 c!1344735) b!7241150))

(assert (= (and b!7241152 (not c!1344735)) b!7241153))

(assert (= (or b!7241151 b!7241150) bm!659450))

(declare-fun m!7915500 () Bool)

(assert (=> b!7241149 m!7915500))

(declare-fun m!7915502 () Bool)

(assert (=> bm!659450 m!7915502))

(declare-fun m!7915504 () Bool)

(assert (=> b!7241151 m!7915504))

(assert (=> b!7241034 d!2249722))

(declare-fun d!2249724 () Bool)

(assert (=> d!2249724 (exists!4251 lt!2579902 lambda!441914)))

(declare-fun lt!2580067 () Unit!163690)

(declare-fun choose!55778 ((Set Context!14988) Context!14988 Int) Unit!163690)

(assert (=> d!2249724 (= lt!2580067 (choose!55778 lt!2579902 lt!2579889 lambda!441914))))

(assert (=> d!2249724 (set.member lt!2579889 lt!2579902)))

(assert (=> d!2249724 (= (lemmaContainsThenExists!218 lt!2579902 lt!2579889 lambda!441914) lt!2580067)))

(declare-fun bs!1904173 () Bool)

(assert (= bs!1904173 d!2249724))

(assert (=> bs!1904173 m!7915204))

(declare-fun m!7915506 () Bool)

(assert (=> bs!1904173 m!7915506))

(assert (=> bs!1904173 m!7915184))

(assert (=> b!7241034 d!2249724))

(declare-fun b!7241176 () Bool)

(declare-fun e!4341464 () (Set Context!14988))

(assert (=> b!7241176 (= e!4341464 (as set.empty (Set Context!14988)))))

(declare-fun bm!659463 () Bool)

(declare-fun call!659473 () List!70271)

(declare-fun call!659470 () List!70271)

(assert (=> bm!659463 (= call!659473 call!659470)))

(declare-fun b!7241177 () Bool)

(declare-fun e!4341461 () (Set Context!14988))

(declare-fun call!659469 () (Set Context!14988))

(declare-fun call!659471 () (Set Context!14988))

(assert (=> b!7241177 (= e!4341461 (set.union call!659469 call!659471))))

(declare-fun b!7241178 () Bool)

(declare-fun e!4341462 () Bool)

(assert (=> b!7241178 (= e!4341462 (nullable!7867 (regOne!37620 (h!76595 (exprs!7994 ct1!232)))))))

(declare-fun d!2249726 () Bool)

(declare-fun c!1344750 () Bool)

(assert (=> d!2249726 (= c!1344750 (and (is-ElementMatch!18554 (h!76595 (exprs!7994 ct1!232))) (= (c!1344696 (h!76595 (exprs!7994 ct1!232))) (h!76594 s1!1971))))))

(declare-fun e!4341460 () (Set Context!14988))

(assert (=> d!2249726 (= (derivationStepZipperDown!2598 (h!76595 (exprs!7994 ct1!232)) lt!2579896 (h!76594 s1!1971)) e!4341460)))

(declare-fun b!7241179 () Bool)

(declare-fun c!1344751 () Bool)

(assert (=> b!7241179 (= c!1344751 (is-Star!18554 (h!76595 (exprs!7994 ct1!232))))))

(declare-fun e!4341459 () (Set Context!14988))

(assert (=> b!7241179 (= e!4341459 e!4341464)))

(declare-fun b!7241180 () Bool)

(assert (=> b!7241180 (= e!4341461 e!4341459)))

(declare-fun c!1344749 () Bool)

(assert (=> b!7241180 (= c!1344749 (is-Concat!27399 (h!76595 (exprs!7994 ct1!232))))))

(declare-fun b!7241181 () Bool)

(declare-fun e!4341463 () (Set Context!14988))

(declare-fun call!659468 () (Set Context!14988))

(assert (=> b!7241181 (= e!4341463 (set.union call!659469 call!659468))))

(declare-fun b!7241182 () Bool)

(declare-fun call!659472 () (Set Context!14988))

(assert (=> b!7241182 (= e!4341464 call!659472)))

(declare-fun bm!659464 () Bool)

(assert (=> bm!659464 (= call!659472 call!659471)))

(declare-fun bm!659465 () Bool)

(assert (=> bm!659465 (= call!659471 call!659468)))

(declare-fun c!1344747 () Bool)

(declare-fun bm!659466 () Bool)

(assert (=> bm!659466 (= call!659469 (derivationStepZipperDown!2598 (ite c!1344747 (regOne!37621 (h!76595 (exprs!7994 ct1!232))) (regOne!37620 (h!76595 (exprs!7994 ct1!232)))) (ite c!1344747 lt!2579896 (Context!14989 call!659470)) (h!76594 s1!1971)))))

(declare-fun c!1344748 () Bool)

(declare-fun bm!659467 () Bool)

(assert (=> bm!659467 (= call!659468 (derivationStepZipperDown!2598 (ite c!1344747 (regTwo!37621 (h!76595 (exprs!7994 ct1!232))) (ite c!1344748 (regTwo!37620 (h!76595 (exprs!7994 ct1!232))) (ite c!1344749 (regOne!37620 (h!76595 (exprs!7994 ct1!232))) (reg!18883 (h!76595 (exprs!7994 ct1!232)))))) (ite (or c!1344747 c!1344748) lt!2579896 (Context!14989 call!659473)) (h!76594 s1!1971)))))

(declare-fun bm!659468 () Bool)

(declare-fun $colon$colon!2892 (List!70271 Regex!18554) List!70271)

(assert (=> bm!659468 (= call!659470 ($colon$colon!2892 (exprs!7994 lt!2579896) (ite (or c!1344748 c!1344749) (regTwo!37620 (h!76595 (exprs!7994 ct1!232))) (h!76595 (exprs!7994 ct1!232)))))))

(declare-fun b!7241183 () Bool)

(assert (=> b!7241183 (= e!4341459 call!659472)))

(declare-fun b!7241184 () Bool)

(assert (=> b!7241184 (= e!4341460 e!4341463)))

(assert (=> b!7241184 (= c!1344747 (is-Union!18554 (h!76595 (exprs!7994 ct1!232))))))

(declare-fun b!7241185 () Bool)

(assert (=> b!7241185 (= e!4341460 (set.insert lt!2579896 (as set.empty (Set Context!14988))))))

(declare-fun b!7241186 () Bool)

(assert (=> b!7241186 (= c!1344748 e!4341462)))

(declare-fun res!2937501 () Bool)

(assert (=> b!7241186 (=> (not res!2937501) (not e!4341462))))

(assert (=> b!7241186 (= res!2937501 (is-Concat!27399 (h!76595 (exprs!7994 ct1!232))))))

(assert (=> b!7241186 (= e!4341463 e!4341461)))

(assert (= (and d!2249726 c!1344750) b!7241185))

(assert (= (and d!2249726 (not c!1344750)) b!7241184))

(assert (= (and b!7241184 c!1344747) b!7241181))

(assert (= (and b!7241184 (not c!1344747)) b!7241186))

(assert (= (and b!7241186 res!2937501) b!7241178))

(assert (= (and b!7241186 c!1344748) b!7241177))

(assert (= (and b!7241186 (not c!1344748)) b!7241180))

(assert (= (and b!7241180 c!1344749) b!7241183))

(assert (= (and b!7241180 (not c!1344749)) b!7241179))

(assert (= (and b!7241179 c!1344751) b!7241182))

(assert (= (and b!7241179 (not c!1344751)) b!7241176))

(assert (= (or b!7241183 b!7241182) bm!659463))

(assert (= (or b!7241183 b!7241182) bm!659464))

(assert (= (or b!7241177 bm!659463) bm!659468))

(assert (= (or b!7241177 bm!659464) bm!659465))

(assert (= (or b!7241181 bm!659465) bm!659467))

(assert (= (or b!7241181 b!7241177) bm!659466))

(declare-fun m!7915508 () Bool)

(assert (=> b!7241185 m!7915508))

(declare-fun m!7915510 () Bool)

(assert (=> bm!659468 m!7915510))

(declare-fun m!7915512 () Bool)

(assert (=> bm!659466 m!7915512))

(declare-fun m!7915514 () Bool)

(assert (=> b!7241178 m!7915514))

(declare-fun m!7915516 () Bool)

(assert (=> bm!659467 m!7915516))

(assert (=> b!7241034 d!2249726))

(declare-fun d!2249728 () Bool)

(declare-fun c!1344754 () Bool)

(assert (=> d!2249728 (= c!1344754 (is-Nil!70148 lt!2579876))))

(declare-fun e!4341467 () (Set Context!14988))

(assert (=> d!2249728 (= (content!14486 lt!2579876) e!4341467)))

(declare-fun b!7241191 () Bool)

(assert (=> b!7241191 (= e!4341467 (as set.empty (Set Context!14988)))))

(declare-fun b!7241192 () Bool)

(assert (=> b!7241192 (= e!4341467 (set.union (set.insert (h!76596 lt!2579876) (as set.empty (Set Context!14988))) (content!14486 (t!384323 lt!2579876))))))

(assert (= (and d!2249728 c!1344754) b!7241191))

(assert (= (and d!2249728 (not c!1344754)) b!7241192))

(declare-fun m!7915518 () Bool)

(assert (=> b!7241192 m!7915518))

(declare-fun m!7915520 () Bool)

(assert (=> b!7241192 m!7915520))

(assert (=> b!7241034 d!2249728))

(declare-fun d!2249730 () Bool)

(declare-fun e!4341468 () Bool)

(assert (=> d!2249730 e!4341468))

(declare-fun res!2937502 () Bool)

(assert (=> d!2249730 (=> (not res!2937502) (not e!4341468))))

(declare-fun lt!2580068 () List!70272)

(assert (=> d!2249730 (= res!2937502 (noDuplicate!2955 lt!2580068))))

(assert (=> d!2249730 (= lt!2580068 (choose!55772 lt!2579902))))

(assert (=> d!2249730 (= (toList!11411 lt!2579902) lt!2580068)))

(declare-fun b!7241193 () Bool)

(assert (=> b!7241193 (= e!4341468 (= (content!14486 lt!2580068) lt!2579902))))

(assert (= (and d!2249730 res!2937502) b!7241193))

(declare-fun m!7915522 () Bool)

(assert (=> d!2249730 m!7915522))

(declare-fun m!7915524 () Bool)

(assert (=> d!2249730 m!7915524))

(declare-fun m!7915526 () Bool)

(assert (=> b!7241193 m!7915526))

(assert (=> b!7241034 d!2249730))

(declare-fun d!2249732 () Bool)

(declare-fun choose!55779 ((Set Context!14988) Int) (Set Context!14988))

(assert (=> d!2249732 (= (flatMap!2758 lt!2579875 lambda!441913) (choose!55779 lt!2579875 lambda!441913))))

(declare-fun bs!1904174 () Bool)

(assert (= bs!1904174 d!2249732))

(declare-fun m!7915528 () Bool)

(assert (=> bs!1904174 m!7915528))

(assert (=> b!7241034 d!2249732))

(declare-fun d!2249734 () Bool)

(assert (=> d!2249734 (= (flatMap!2758 lt!2579872 lambda!441913) (choose!55779 lt!2579872 lambda!441913))))

(declare-fun bs!1904175 () Bool)

(assert (= bs!1904175 d!2249734))

(declare-fun m!7915530 () Bool)

(assert (=> bs!1904175 m!7915530))

(assert (=> b!7241034 d!2249734))

(declare-fun b!7241204 () Bool)

(declare-fun res!2937508 () Bool)

(declare-fun e!4341473 () Bool)

(assert (=> b!7241204 (=> (not res!2937508) (not e!4341473))))

(declare-fun lt!2580071 () List!70270)

(declare-fun size!41624 (List!70270) Int)

(assert (=> b!7241204 (= res!2937508 (= (size!41624 lt!2580071) (+ (size!41624 s1!1971) (size!41624 s2!1849))))))

(declare-fun b!7241203 () Bool)

(declare-fun e!4341474 () List!70270)

(assert (=> b!7241203 (= e!4341474 (Cons!70146 (h!76594 s1!1971) (++!16408 (t!384321 s1!1971) s2!1849)))))

(declare-fun b!7241205 () Bool)

(assert (=> b!7241205 (= e!4341473 (or (not (= s2!1849 Nil!70146)) (= lt!2580071 s1!1971)))))

(declare-fun d!2249736 () Bool)

(assert (=> d!2249736 e!4341473))

(declare-fun res!2937507 () Bool)

(assert (=> d!2249736 (=> (not res!2937507) (not e!4341473))))

(declare-fun content!14488 (List!70270) (Set C!37382))

(assert (=> d!2249736 (= res!2937507 (= (content!14488 lt!2580071) (set.union (content!14488 s1!1971) (content!14488 s2!1849))))))

(assert (=> d!2249736 (= lt!2580071 e!4341474)))

(declare-fun c!1344757 () Bool)

(assert (=> d!2249736 (= c!1344757 (is-Nil!70146 s1!1971))))

(assert (=> d!2249736 (= (++!16408 s1!1971 s2!1849) lt!2580071)))

(declare-fun b!7241202 () Bool)

(assert (=> b!7241202 (= e!4341474 s2!1849)))

(assert (= (and d!2249736 c!1344757) b!7241202))

(assert (= (and d!2249736 (not c!1344757)) b!7241203))

(assert (= (and d!2249736 res!2937507) b!7241204))

(assert (= (and b!7241204 res!2937508) b!7241205))

(declare-fun m!7915532 () Bool)

(assert (=> b!7241204 m!7915532))

(declare-fun m!7915534 () Bool)

(assert (=> b!7241204 m!7915534))

(declare-fun m!7915536 () Bool)

(assert (=> b!7241204 m!7915536))

(assert (=> b!7241203 m!7915142))

(declare-fun m!7915538 () Bool)

(assert (=> d!2249736 m!7915538))

(declare-fun m!7915540 () Bool)

(assert (=> d!2249736 m!7915540))

(declare-fun m!7915542 () Bool)

(assert (=> d!2249736 m!7915542))

(assert (=> b!7241034 d!2249736))

(declare-fun d!2249738 () Bool)

(assert (=> d!2249738 (forall!17395 (++!16409 (exprs!7994 lt!2579895) (exprs!7994 ct2!328)) lambda!441911)))

(declare-fun lt!2580074 () Unit!163690)

(declare-fun choose!55780 (List!70271 List!70271 Int) Unit!163690)

(assert (=> d!2249738 (= lt!2580074 (choose!55780 (exprs!7994 lt!2579895) (exprs!7994 ct2!328) lambda!441911))))

(assert (=> d!2249738 (forall!17395 (exprs!7994 lt!2579895) lambda!441911)))

(assert (=> d!2249738 (= (lemmaConcatPreservesForall!1363 (exprs!7994 lt!2579895) (exprs!7994 ct2!328) lambda!441911) lt!2580074)))

(declare-fun bs!1904176 () Bool)

(assert (= bs!1904176 d!2249738))

(assert (=> bs!1904176 m!7915152))

(assert (=> bs!1904176 m!7915152))

(declare-fun m!7915544 () Bool)

(assert (=> bs!1904176 m!7915544))

(declare-fun m!7915546 () Bool)

(assert (=> bs!1904176 m!7915546))

(declare-fun m!7915548 () Bool)

(assert (=> bs!1904176 m!7915548))

(assert (=> b!7241034 d!2249738))

(declare-fun d!2249740 () Bool)

(assert (=> d!2249740 (= (tail!14219 lt!2579868) (t!384322 lt!2579868))))

(assert (=> b!7241034 d!2249740))

(declare-fun d!2249742 () Bool)

(assert (=> d!2249742 (forall!17395 (++!16409 (exprs!7994 ct1!232) (exprs!7994 ct2!328)) lambda!441911)))

(declare-fun lt!2580075 () Unit!163690)

(assert (=> d!2249742 (= lt!2580075 (choose!55780 (exprs!7994 ct1!232) (exprs!7994 ct2!328) lambda!441911))))

(assert (=> d!2249742 (forall!17395 (exprs!7994 ct1!232) lambda!441911)))

(assert (=> d!2249742 (= (lemmaConcatPreservesForall!1363 (exprs!7994 ct1!232) (exprs!7994 ct2!328) lambda!441911) lt!2580075)))

(declare-fun bs!1904177 () Bool)

(assert (= bs!1904177 d!2249742))

(assert (=> bs!1904177 m!7915256))

(assert (=> bs!1904177 m!7915256))

(declare-fun m!7915550 () Bool)

(assert (=> bs!1904177 m!7915550))

(declare-fun m!7915552 () Bool)

(assert (=> bs!1904177 m!7915552))

(assert (=> bs!1904177 m!7915170))

(assert (=> b!7241034 d!2249742))

(declare-fun d!2249744 () Bool)

(declare-fun c!1344759 () Bool)

(declare-fun e!4341477 () Bool)

(assert (=> d!2249744 (= c!1344759 e!4341477)))

(declare-fun res!2937509 () Bool)

(assert (=> d!2249744 (=> (not res!2937509) (not e!4341477))))

(assert (=> d!2249744 (= res!2937509 (is-Cons!70147 (exprs!7994 ct1!232)))))

(declare-fun e!4341476 () (Set Context!14988))

(assert (=> d!2249744 (= (derivationStepZipperUp!2428 ct1!232 (h!76594 s1!1971)) e!4341476)))

(declare-fun b!7241206 () Bool)

(assert (=> b!7241206 (= e!4341477 (nullable!7867 (h!76595 (exprs!7994 ct1!232))))))

(declare-fun b!7241207 () Bool)

(declare-fun e!4341475 () (Set Context!14988))

(declare-fun call!659474 () (Set Context!14988))

(assert (=> b!7241207 (= e!4341475 call!659474)))

(declare-fun bm!659469 () Bool)

(assert (=> bm!659469 (= call!659474 (derivationStepZipperDown!2598 (h!76595 (exprs!7994 ct1!232)) (Context!14989 (t!384322 (exprs!7994 ct1!232))) (h!76594 s1!1971)))))

(declare-fun b!7241208 () Bool)

(assert (=> b!7241208 (= e!4341476 (set.union call!659474 (derivationStepZipperUp!2428 (Context!14989 (t!384322 (exprs!7994 ct1!232))) (h!76594 s1!1971))))))

(declare-fun b!7241209 () Bool)

(assert (=> b!7241209 (= e!4341476 e!4341475)))

(declare-fun c!1344758 () Bool)

(assert (=> b!7241209 (= c!1344758 (is-Cons!70147 (exprs!7994 ct1!232)))))

(declare-fun b!7241210 () Bool)

(assert (=> b!7241210 (= e!4341475 (as set.empty (Set Context!14988)))))

(assert (= (and d!2249744 res!2937509) b!7241206))

(assert (= (and d!2249744 c!1344759) b!7241208))

(assert (= (and d!2249744 (not c!1344759)) b!7241209))

(assert (= (and b!7241209 c!1344758) b!7241207))

(assert (= (and b!7241209 (not c!1344758)) b!7241210))

(assert (= (or b!7241208 b!7241207) bm!659469))

(assert (=> b!7241206 m!7915200))

(declare-fun m!7915554 () Bool)

(assert (=> bm!659469 m!7915554))

(declare-fun m!7915556 () Bool)

(assert (=> b!7241208 m!7915556))

(assert (=> b!7241034 d!2249744))

(declare-fun d!2249746 () Bool)

(assert (=> d!2249746 (= (tail!14218 lt!2579888) (t!384321 lt!2579888))))

(assert (=> b!7241034 d!2249746))

(declare-fun d!2249748 () Bool)

(assert (=> d!2249748 (= (tail!14219 (exprs!7994 ct1!232)) (t!384322 (exprs!7994 ct1!232)))))

(assert (=> b!7241044 d!2249748))

(declare-fun d!2249750 () Bool)

(assert (=> d!2249750 (= (isEmpty!40423 lt!2579868) (is-Nil!70147 lt!2579868))))

(assert (=> b!7241044 d!2249750))

(assert (=> b!7241044 d!2249722))

(assert (=> b!7241044 d!2249742))

(declare-fun b!7241211 () Bool)

(declare-fun e!4341483 () (Set Context!14988))

(assert (=> b!7241211 (= e!4341483 (as set.empty (Set Context!14988)))))

(declare-fun bm!659470 () Bool)

(declare-fun call!659480 () List!70271)

(declare-fun call!659477 () List!70271)

(assert (=> bm!659470 (= call!659480 call!659477)))

(declare-fun b!7241212 () Bool)

(declare-fun e!4341480 () (Set Context!14988))

(declare-fun call!659476 () (Set Context!14988))

(declare-fun call!659478 () (Set Context!14988))

(assert (=> b!7241212 (= e!4341480 (set.union call!659476 call!659478))))

(declare-fun b!7241213 () Bool)

(declare-fun e!4341481 () Bool)

(assert (=> b!7241213 (= e!4341481 (nullable!7867 (regOne!37620 (h!76595 (exprs!7994 ct1!232)))))))

(declare-fun d!2249752 () Bool)

(declare-fun c!1344763 () Bool)

(assert (=> d!2249752 (= c!1344763 (and (is-ElementMatch!18554 (h!76595 (exprs!7994 ct1!232))) (= (c!1344696 (h!76595 (exprs!7994 ct1!232))) (h!76594 s1!1971))))))

(declare-fun e!4341479 () (Set Context!14988))

(assert (=> d!2249752 (= (derivationStepZipperDown!2598 (h!76595 (exprs!7994 ct1!232)) lt!2579880 (h!76594 s1!1971)) e!4341479)))

(declare-fun b!7241214 () Bool)

(declare-fun c!1344764 () Bool)

(assert (=> b!7241214 (= c!1344764 (is-Star!18554 (h!76595 (exprs!7994 ct1!232))))))

(declare-fun e!4341478 () (Set Context!14988))

(assert (=> b!7241214 (= e!4341478 e!4341483)))

(declare-fun b!7241215 () Bool)

(assert (=> b!7241215 (= e!4341480 e!4341478)))

(declare-fun c!1344762 () Bool)

(assert (=> b!7241215 (= c!1344762 (is-Concat!27399 (h!76595 (exprs!7994 ct1!232))))))

(declare-fun b!7241216 () Bool)

(declare-fun e!4341482 () (Set Context!14988))

(declare-fun call!659475 () (Set Context!14988))

(assert (=> b!7241216 (= e!4341482 (set.union call!659476 call!659475))))

(declare-fun b!7241217 () Bool)

(declare-fun call!659479 () (Set Context!14988))

(assert (=> b!7241217 (= e!4341483 call!659479)))

(declare-fun bm!659471 () Bool)

(assert (=> bm!659471 (= call!659479 call!659478)))

(declare-fun bm!659472 () Bool)

(assert (=> bm!659472 (= call!659478 call!659475)))

(declare-fun c!1344760 () Bool)

(declare-fun bm!659473 () Bool)

(assert (=> bm!659473 (= call!659476 (derivationStepZipperDown!2598 (ite c!1344760 (regOne!37621 (h!76595 (exprs!7994 ct1!232))) (regOne!37620 (h!76595 (exprs!7994 ct1!232)))) (ite c!1344760 lt!2579880 (Context!14989 call!659477)) (h!76594 s1!1971)))))

(declare-fun c!1344761 () Bool)

(declare-fun bm!659474 () Bool)

(assert (=> bm!659474 (= call!659475 (derivationStepZipperDown!2598 (ite c!1344760 (regTwo!37621 (h!76595 (exprs!7994 ct1!232))) (ite c!1344761 (regTwo!37620 (h!76595 (exprs!7994 ct1!232))) (ite c!1344762 (regOne!37620 (h!76595 (exprs!7994 ct1!232))) (reg!18883 (h!76595 (exprs!7994 ct1!232)))))) (ite (or c!1344760 c!1344761) lt!2579880 (Context!14989 call!659480)) (h!76594 s1!1971)))))

(declare-fun bm!659475 () Bool)

(assert (=> bm!659475 (= call!659477 ($colon$colon!2892 (exprs!7994 lt!2579880) (ite (or c!1344761 c!1344762) (regTwo!37620 (h!76595 (exprs!7994 ct1!232))) (h!76595 (exprs!7994 ct1!232)))))))

(declare-fun b!7241218 () Bool)

(assert (=> b!7241218 (= e!4341478 call!659479)))

(declare-fun b!7241219 () Bool)

(assert (=> b!7241219 (= e!4341479 e!4341482)))

(assert (=> b!7241219 (= c!1344760 (is-Union!18554 (h!76595 (exprs!7994 ct1!232))))))

(declare-fun b!7241220 () Bool)

(assert (=> b!7241220 (= e!4341479 (set.insert lt!2579880 (as set.empty (Set Context!14988))))))

(declare-fun b!7241221 () Bool)

(assert (=> b!7241221 (= c!1344761 e!4341481)))

(declare-fun res!2937510 () Bool)

(assert (=> b!7241221 (=> (not res!2937510) (not e!4341481))))

(assert (=> b!7241221 (= res!2937510 (is-Concat!27399 (h!76595 (exprs!7994 ct1!232))))))

(assert (=> b!7241221 (= e!4341482 e!4341480)))

(assert (= (and d!2249752 c!1344763) b!7241220))

(assert (= (and d!2249752 (not c!1344763)) b!7241219))

(assert (= (and b!7241219 c!1344760) b!7241216))

(assert (= (and b!7241219 (not c!1344760)) b!7241221))

(assert (= (and b!7241221 res!2937510) b!7241213))

(assert (= (and b!7241221 c!1344761) b!7241212))

(assert (= (and b!7241221 (not c!1344761)) b!7241215))

(assert (= (and b!7241215 c!1344762) b!7241218))

(assert (= (and b!7241215 (not c!1344762)) b!7241214))

(assert (= (and b!7241214 c!1344764) b!7241217))

(assert (= (and b!7241214 (not c!1344764)) b!7241211))

(assert (= (or b!7241218 b!7241217) bm!659470))

(assert (= (or b!7241218 b!7241217) bm!659471))

(assert (= (or b!7241212 bm!659470) bm!659475))

(assert (= (or b!7241212 bm!659471) bm!659472))

(assert (= (or b!7241216 bm!659472) bm!659474))

(assert (= (or b!7241216 b!7241212) bm!659473))

(declare-fun m!7915558 () Bool)

(assert (=> b!7241220 m!7915558))

(declare-fun m!7915560 () Bool)

(assert (=> bm!659475 m!7915560))

(declare-fun m!7915562 () Bool)

(assert (=> bm!659473 m!7915562))

(assert (=> b!7241213 m!7915514))

(declare-fun m!7915564 () Bool)

(assert (=> bm!659474 m!7915564))

(assert (=> b!7241044 d!2249752))

(declare-fun d!2249754 () Bool)

(declare-fun c!1344765 () Bool)

(assert (=> d!2249754 (= c!1344765 (isEmpty!40425 s2!1849))))

(declare-fun e!4341484 () Bool)

(assert (=> d!2249754 (= (matchZipper!3464 (set.insert ct2!328 (as set.empty (Set Context!14988))) s2!1849) e!4341484)))

(declare-fun b!7241222 () Bool)

(assert (=> b!7241222 (= e!4341484 (nullableZipper!2848 (set.insert ct2!328 (as set.empty (Set Context!14988)))))))

(declare-fun b!7241223 () Bool)

(assert (=> b!7241223 (= e!4341484 (matchZipper!3464 (derivationStepZipper!3346 (set.insert ct2!328 (as set.empty (Set Context!14988))) (head!14837 s2!1849)) (tail!14218 s2!1849)))))

(assert (= (and d!2249754 c!1344765) b!7241222))

(assert (= (and d!2249754 (not c!1344765)) b!7241223))

(declare-fun m!7915566 () Bool)

(assert (=> d!2249754 m!7915566))

(assert (=> b!7241222 m!7915244))

(declare-fun m!7915568 () Bool)

(assert (=> b!7241222 m!7915568))

(declare-fun m!7915570 () Bool)

(assert (=> b!7241223 m!7915570))

(assert (=> b!7241223 m!7915244))

(assert (=> b!7241223 m!7915570))

(declare-fun m!7915572 () Bool)

(assert (=> b!7241223 m!7915572))

(declare-fun m!7915574 () Bool)

(assert (=> b!7241223 m!7915574))

(assert (=> b!7241223 m!7915572))

(assert (=> b!7241223 m!7915574))

(declare-fun m!7915576 () Bool)

(assert (=> b!7241223 m!7915576))

(assert (=> b!7241033 d!2249754))

(declare-fun d!2249756 () Bool)

(declare-fun e!4341487 () Bool)

(assert (=> d!2249756 (= (matchZipper!3464 (set.union lt!2579869 lt!2579881) lt!2579900) e!4341487)))

(declare-fun res!2937513 () Bool)

(assert (=> d!2249756 (=> res!2937513 e!4341487)))

(assert (=> d!2249756 (= res!2937513 (matchZipper!3464 lt!2579869 lt!2579900))))

(declare-fun lt!2580078 () Unit!163690)

(declare-fun choose!55781 ((Set Context!14988) (Set Context!14988) List!70270) Unit!163690)

(assert (=> d!2249756 (= lt!2580078 (choose!55781 lt!2579869 lt!2579881 lt!2579900))))

(assert (=> d!2249756 (= (lemmaZipperConcatMatchesSameAsBothZippers!1701 lt!2579869 lt!2579881 lt!2579900) lt!2580078)))

(declare-fun b!7241226 () Bool)

(assert (=> b!7241226 (= e!4341487 (matchZipper!3464 lt!2579881 lt!2579900))))

(assert (= (and d!2249756 (not res!2937513)) b!7241226))

(assert (=> d!2249756 m!7915242))

(assert (=> d!2249756 m!7915228))

(declare-fun m!7915578 () Bool)

(assert (=> d!2249756 m!7915578))

(assert (=> b!7241226 m!7915248))

(assert (=> b!7241048 d!2249756))

(declare-fun d!2249758 () Bool)

(declare-fun c!1344766 () Bool)

(assert (=> d!2249758 (= c!1344766 (isEmpty!40425 lt!2579900))))

(declare-fun e!4341488 () Bool)

(assert (=> d!2249758 (= (matchZipper!3464 (set.union lt!2579869 lt!2579881) lt!2579900) e!4341488)))

(declare-fun b!7241227 () Bool)

(assert (=> b!7241227 (= e!4341488 (nullableZipper!2848 (set.union lt!2579869 lt!2579881)))))

(declare-fun b!7241228 () Bool)

(assert (=> b!7241228 (= e!4341488 (matchZipper!3464 (derivationStepZipper!3346 (set.union lt!2579869 lt!2579881) (head!14837 lt!2579900)) (tail!14218 lt!2579900)))))

(assert (= (and d!2249758 c!1344766) b!7241227))

(assert (= (and d!2249758 (not c!1344766)) b!7241228))

(assert (=> d!2249758 m!7915384))

(declare-fun m!7915580 () Bool)

(assert (=> b!7241227 m!7915580))

(assert (=> b!7241228 m!7915388))

(assert (=> b!7241228 m!7915388))

(declare-fun m!7915582 () Bool)

(assert (=> b!7241228 m!7915582))

(assert (=> b!7241228 m!7915392))

(assert (=> b!7241228 m!7915582))

(assert (=> b!7241228 m!7915392))

(declare-fun m!7915584 () Bool)

(assert (=> b!7241228 m!7915584))

(assert (=> b!7241048 d!2249758))

(declare-fun d!2249760 () Bool)

(declare-fun c!1344767 () Bool)

(assert (=> d!2249760 (= c!1344767 (isEmpty!40425 (t!384321 s1!1971)))))

(declare-fun e!4341489 () Bool)

(assert (=> d!2249760 (= (matchZipper!3464 lt!2579883 (t!384321 s1!1971)) e!4341489)))

(declare-fun b!7241229 () Bool)

(assert (=> b!7241229 (= e!4341489 (nullableZipper!2848 lt!2579883))))

(declare-fun b!7241230 () Bool)

(assert (=> b!7241230 (= e!4341489 (matchZipper!3464 (derivationStepZipper!3346 lt!2579883 (head!14837 (t!384321 s1!1971))) (tail!14218 (t!384321 s1!1971))))))

(assert (= (and d!2249760 c!1344767) b!7241229))

(assert (= (and d!2249760 (not c!1344767)) b!7241230))

(assert (=> d!2249760 m!7915412))

(declare-fun m!7915586 () Bool)

(assert (=> b!7241229 m!7915586))

(assert (=> b!7241230 m!7915416))

(assert (=> b!7241230 m!7915416))

(declare-fun m!7915588 () Bool)

(assert (=> b!7241230 m!7915588))

(assert (=> b!7241230 m!7915420))

(assert (=> b!7241230 m!7915588))

(assert (=> b!7241230 m!7915420))

(declare-fun m!7915590 () Bool)

(assert (=> b!7241230 m!7915590))

(assert (=> b!7241048 d!2249760))

(declare-fun d!2249762 () Bool)

(declare-fun c!1344768 () Bool)

(assert (=> d!2249762 (= c!1344768 (isEmpty!40425 (t!384321 s1!1971)))))

(declare-fun e!4341490 () Bool)

(assert (=> d!2249762 (= (matchZipper!3464 (set.union lt!2579883 lt!2579885) (t!384321 s1!1971)) e!4341490)))

(declare-fun b!7241231 () Bool)

(assert (=> b!7241231 (= e!4341490 (nullableZipper!2848 (set.union lt!2579883 lt!2579885)))))

(declare-fun b!7241232 () Bool)

(assert (=> b!7241232 (= e!4341490 (matchZipper!3464 (derivationStepZipper!3346 (set.union lt!2579883 lt!2579885) (head!14837 (t!384321 s1!1971))) (tail!14218 (t!384321 s1!1971))))))

(assert (= (and d!2249762 c!1344768) b!7241231))

(assert (= (and d!2249762 (not c!1344768)) b!7241232))

(assert (=> d!2249762 m!7915412))

(declare-fun m!7915592 () Bool)

(assert (=> b!7241231 m!7915592))

(assert (=> b!7241232 m!7915416))

(assert (=> b!7241232 m!7915416))

(declare-fun m!7915594 () Bool)

(assert (=> b!7241232 m!7915594))

(assert (=> b!7241232 m!7915420))

(assert (=> b!7241232 m!7915594))

(assert (=> b!7241232 m!7915420))

(declare-fun m!7915596 () Bool)

(assert (=> b!7241232 m!7915596))

(assert (=> b!7241048 d!2249762))

(assert (=> b!7241048 d!2249742))

(declare-fun e!4341491 () Bool)

(declare-fun d!2249764 () Bool)

(assert (=> d!2249764 (= (matchZipper!3464 (set.union lt!2579883 lt!2579885) (t!384321 s1!1971)) e!4341491)))

(declare-fun res!2937514 () Bool)

(assert (=> d!2249764 (=> res!2937514 e!4341491)))

(assert (=> d!2249764 (= res!2937514 (matchZipper!3464 lt!2579883 (t!384321 s1!1971)))))

(declare-fun lt!2580079 () Unit!163690)

(assert (=> d!2249764 (= lt!2580079 (choose!55781 lt!2579883 lt!2579885 (t!384321 s1!1971)))))

(assert (=> d!2249764 (= (lemmaZipperConcatMatchesSameAsBothZippers!1701 lt!2579883 lt!2579885 (t!384321 s1!1971)) lt!2580079)))

(declare-fun b!7241233 () Bool)

(assert (=> b!7241233 (= e!4341491 (matchZipper!3464 lt!2579885 (t!384321 s1!1971)))))

(assert (= (and d!2249764 (not res!2937514)) b!7241233))

(assert (=> d!2249764 m!7915234))

(assert (=> d!2249764 m!7915238))

(declare-fun m!7915598 () Bool)

(assert (=> d!2249764 m!7915598))

(assert (=> b!7241233 m!7915168))

(assert (=> b!7241048 d!2249764))

(declare-fun d!2249766 () Bool)

(declare-fun c!1344769 () Bool)

(assert (=> d!2249766 (= c!1344769 (isEmpty!40425 lt!2579900))))

(declare-fun e!4341492 () Bool)

(assert (=> d!2249766 (= (matchZipper!3464 lt!2579869 lt!2579900) e!4341492)))

(declare-fun b!7241234 () Bool)

(assert (=> b!7241234 (= e!4341492 (nullableZipper!2848 lt!2579869))))

(declare-fun b!7241235 () Bool)

(assert (=> b!7241235 (= e!4341492 (matchZipper!3464 (derivationStepZipper!3346 lt!2579869 (head!14837 lt!2579900)) (tail!14218 lt!2579900)))))

(assert (= (and d!2249766 c!1344769) b!7241234))

(assert (= (and d!2249766 (not c!1344769)) b!7241235))

(assert (=> d!2249766 m!7915384))

(declare-fun m!7915600 () Bool)

(assert (=> b!7241234 m!7915600))

(assert (=> b!7241235 m!7915388))

(assert (=> b!7241235 m!7915388))

(declare-fun m!7915602 () Bool)

(assert (=> b!7241235 m!7915602))

(assert (=> b!7241235 m!7915392))

(assert (=> b!7241235 m!7915602))

(assert (=> b!7241235 m!7915392))

(declare-fun m!7915604 () Bool)

(assert (=> b!7241235 m!7915604))

(assert (=> b!7241048 d!2249766))

(declare-fun d!2249768 () Bool)

(declare-fun c!1344771 () Bool)

(declare-fun e!4341495 () Bool)

(assert (=> d!2249768 (= c!1344771 e!4341495)))

(declare-fun res!2937515 () Bool)

(assert (=> d!2249768 (=> (not res!2937515) (not e!4341495))))

(assert (=> d!2249768 (= res!2937515 (is-Cons!70147 (exprs!7994 lt!2579896)))))

(declare-fun e!4341494 () (Set Context!14988))

(assert (=> d!2249768 (= (derivationStepZipperUp!2428 lt!2579896 (h!76594 s1!1971)) e!4341494)))

(declare-fun b!7241236 () Bool)

(assert (=> b!7241236 (= e!4341495 (nullable!7867 (h!76595 (exprs!7994 lt!2579896))))))

(declare-fun b!7241237 () Bool)

(declare-fun e!4341493 () (Set Context!14988))

(declare-fun call!659481 () (Set Context!14988))

(assert (=> b!7241237 (= e!4341493 call!659481)))

(declare-fun bm!659476 () Bool)

(assert (=> bm!659476 (= call!659481 (derivationStepZipperDown!2598 (h!76595 (exprs!7994 lt!2579896)) (Context!14989 (t!384322 (exprs!7994 lt!2579896))) (h!76594 s1!1971)))))

(declare-fun b!7241238 () Bool)

(assert (=> b!7241238 (= e!4341494 (set.union call!659481 (derivationStepZipperUp!2428 (Context!14989 (t!384322 (exprs!7994 lt!2579896))) (h!76594 s1!1971))))))

(declare-fun b!7241239 () Bool)

(assert (=> b!7241239 (= e!4341494 e!4341493)))

(declare-fun c!1344770 () Bool)

(assert (=> b!7241239 (= c!1344770 (is-Cons!70147 (exprs!7994 lt!2579896)))))

(declare-fun b!7241240 () Bool)

(assert (=> b!7241240 (= e!4341493 (as set.empty (Set Context!14988)))))

(assert (= (and d!2249768 res!2937515) b!7241236))

(assert (= (and d!2249768 c!1344771) b!7241238))

(assert (= (and d!2249768 (not c!1344771)) b!7241239))

(assert (= (and b!7241239 c!1344770) b!7241237))

(assert (= (and b!7241239 (not c!1344770)) b!7241240))

(assert (= (or b!7241238 b!7241237) bm!659476))

(declare-fun m!7915606 () Bool)

(assert (=> b!7241236 m!7915606))

(declare-fun m!7915608 () Bool)

(assert (=> bm!659476 m!7915608))

(declare-fun m!7915610 () Bool)

(assert (=> b!7241238 m!7915610))

(assert (=> b!7241048 d!2249768))

(declare-fun d!2249770 () Bool)

(declare-fun c!1344773 () Bool)

(declare-fun e!4341498 () Bool)

(assert (=> d!2249770 (= c!1344773 e!4341498)))

(declare-fun res!2937516 () Bool)

(assert (=> d!2249770 (=> (not res!2937516) (not e!4341498))))

(assert (=> d!2249770 (= res!2937516 (is-Cons!70147 (exprs!7994 lt!2579880)))))

(declare-fun e!4341497 () (Set Context!14988))

(assert (=> d!2249770 (= (derivationStepZipperUp!2428 lt!2579880 (h!76594 s1!1971)) e!4341497)))

(declare-fun b!7241241 () Bool)

(assert (=> b!7241241 (= e!4341498 (nullable!7867 (h!76595 (exprs!7994 lt!2579880))))))

(declare-fun b!7241242 () Bool)

(declare-fun e!4341496 () (Set Context!14988))

(declare-fun call!659482 () (Set Context!14988))

(assert (=> b!7241242 (= e!4341496 call!659482)))

(declare-fun bm!659477 () Bool)

(assert (=> bm!659477 (= call!659482 (derivationStepZipperDown!2598 (h!76595 (exprs!7994 lt!2579880)) (Context!14989 (t!384322 (exprs!7994 lt!2579880))) (h!76594 s1!1971)))))

(declare-fun b!7241243 () Bool)

(assert (=> b!7241243 (= e!4341497 (set.union call!659482 (derivationStepZipperUp!2428 (Context!14989 (t!384322 (exprs!7994 lt!2579880))) (h!76594 s1!1971))))))

(declare-fun b!7241244 () Bool)

(assert (=> b!7241244 (= e!4341497 e!4341496)))

(declare-fun c!1344772 () Bool)

(assert (=> b!7241244 (= c!1344772 (is-Cons!70147 (exprs!7994 lt!2579880)))))

(declare-fun b!7241245 () Bool)

(assert (=> b!7241245 (= e!4341496 (as set.empty (Set Context!14988)))))

(assert (= (and d!2249770 res!2937516) b!7241241))

(assert (= (and d!2249770 c!1344773) b!7241243))

(assert (= (and d!2249770 (not c!1344773)) b!7241244))

(assert (= (and b!7241244 c!1344772) b!7241242))

(assert (= (and b!7241244 (not c!1344772)) b!7241245))

(assert (= (or b!7241243 b!7241242) bm!659477))

(declare-fun m!7915612 () Bool)

(assert (=> b!7241241 m!7915612))

(declare-fun m!7915614 () Bool)

(assert (=> bm!659477 m!7915614))

(declare-fun m!7915616 () Bool)

(assert (=> b!7241243 m!7915616))

(assert (=> b!7241048 d!2249770))

(assert (=> b!7241037 d!2249738))

(declare-fun d!2249772 () Bool)

(declare-fun e!4341501 () Bool)

(assert (=> d!2249772 e!4341501))

(declare-fun res!2937519 () Bool)

(assert (=> d!2249772 (=> (not res!2937519) (not e!4341501))))

(declare-fun lt!2580082 () Context!14988)

(declare-fun dynLambda!28638 (Int Context!14988) Bool)

(assert (=> d!2249772 (= res!2937519 (dynLambda!28638 lambda!441912 lt!2580082))))

(declare-fun getWitness!2107 (List!70272 Int) Context!14988)

(assert (=> d!2249772 (= lt!2580082 (getWitness!2107 (toList!11411 lt!2579907) lambda!441912))))

(assert (=> d!2249772 (exists!4251 lt!2579907 lambda!441912)))

(assert (=> d!2249772 (= (getWitness!2105 lt!2579907 lambda!441912) lt!2580082)))

(declare-fun b!7241248 () Bool)

(assert (=> b!7241248 (= e!4341501 (set.member lt!2580082 lt!2579907))))

(assert (= (and d!2249772 res!2937519) b!7241248))

(declare-fun b_lambda!277795 () Bool)

(assert (=> (not b_lambda!277795) (not d!2249772)))

(declare-fun m!7915618 () Bool)

(assert (=> d!2249772 m!7915618))

(assert (=> d!2249772 m!7915220))

(assert (=> d!2249772 m!7915220))

(declare-fun m!7915620 () Bool)

(assert (=> d!2249772 m!7915620))

(assert (=> d!2249772 m!7915222))

(declare-fun m!7915622 () Bool)

(assert (=> b!7241248 m!7915622))

(assert (=> b!7241037 d!2249772))

(declare-fun d!2249774 () Bool)

(declare-fun c!1344774 () Bool)

(assert (=> d!2249774 (= c!1344774 (isEmpty!40425 lt!2579900))))

(declare-fun e!4341502 () Bool)

(assert (=> d!2249774 (= (matchZipper!3464 (set.insert lt!2579889 (as set.empty (Set Context!14988))) lt!2579900) e!4341502)))

(declare-fun b!7241249 () Bool)

(assert (=> b!7241249 (= e!4341502 (nullableZipper!2848 (set.insert lt!2579889 (as set.empty (Set Context!14988)))))))

(declare-fun b!7241250 () Bool)

(assert (=> b!7241250 (= e!4341502 (matchZipper!3464 (derivationStepZipper!3346 (set.insert lt!2579889 (as set.empty (Set Context!14988))) (head!14837 lt!2579900)) (tail!14218 lt!2579900)))))

(assert (= (and d!2249774 c!1344774) b!7241249))

(assert (= (and d!2249774 (not c!1344774)) b!7241250))

(assert (=> d!2249774 m!7915384))

(assert (=> b!7241249 m!7915144))

(declare-fun m!7915624 () Bool)

(assert (=> b!7241249 m!7915624))

(assert (=> b!7241250 m!7915388))

(assert (=> b!7241250 m!7915144))

(assert (=> b!7241250 m!7915388))

(declare-fun m!7915626 () Bool)

(assert (=> b!7241250 m!7915626))

(assert (=> b!7241250 m!7915392))

(assert (=> b!7241250 m!7915626))

(assert (=> b!7241250 m!7915392))

(declare-fun m!7915628 () Bool)

(assert (=> b!7241250 m!7915628))

(assert (=> b!7241037 d!2249774))

(declare-fun d!2249776 () Bool)

(assert (=> d!2249776 (= (isEmpty!40423 (exprs!7994 ct1!232)) (is-Nil!70147 (exprs!7994 ct1!232)))))

(assert (=> b!7241037 d!2249776))

(declare-fun b!7241253 () Bool)

(declare-fun res!2937521 () Bool)

(declare-fun e!4341503 () Bool)

(assert (=> b!7241253 (=> (not res!2937521) (not e!4341503))))

(declare-fun lt!2580083 () List!70270)

(assert (=> b!7241253 (= res!2937521 (= (size!41624 lt!2580083) (+ (size!41624 (t!384321 s1!1971)) (size!41624 s2!1849))))))

(declare-fun b!7241252 () Bool)

(declare-fun e!4341504 () List!70270)

(assert (=> b!7241252 (= e!4341504 (Cons!70146 (h!76594 (t!384321 s1!1971)) (++!16408 (t!384321 (t!384321 s1!1971)) s2!1849)))))

(declare-fun b!7241254 () Bool)

(assert (=> b!7241254 (= e!4341503 (or (not (= s2!1849 Nil!70146)) (= lt!2580083 (t!384321 s1!1971))))))

(declare-fun d!2249778 () Bool)

(assert (=> d!2249778 e!4341503))

(declare-fun res!2937520 () Bool)

(assert (=> d!2249778 (=> (not res!2937520) (not e!4341503))))

(assert (=> d!2249778 (= res!2937520 (= (content!14488 lt!2580083) (set.union (content!14488 (t!384321 s1!1971)) (content!14488 s2!1849))))))

(assert (=> d!2249778 (= lt!2580083 e!4341504)))

(declare-fun c!1344775 () Bool)

(assert (=> d!2249778 (= c!1344775 (is-Nil!70146 (t!384321 s1!1971)))))

(assert (=> d!2249778 (= (++!16408 (t!384321 s1!1971) s2!1849) lt!2580083)))

(declare-fun b!7241251 () Bool)

(assert (=> b!7241251 (= e!4341504 s2!1849)))

(assert (= (and d!2249778 c!1344775) b!7241251))

(assert (= (and d!2249778 (not c!1344775)) b!7241252))

(assert (= (and d!2249778 res!2937520) b!7241253))

(assert (= (and b!7241253 res!2937521) b!7241254))

(declare-fun m!7915630 () Bool)

(assert (=> b!7241253 m!7915630))

(declare-fun m!7915632 () Bool)

(assert (=> b!7241253 m!7915632))

(assert (=> b!7241253 m!7915536))

(declare-fun m!7915634 () Bool)

(assert (=> b!7241252 m!7915634))

(declare-fun m!7915636 () Bool)

(assert (=> d!2249778 m!7915636))

(declare-fun m!7915638 () Bool)

(assert (=> d!2249778 m!7915638))

(assert (=> d!2249778 m!7915542))

(assert (=> b!7241037 d!2249778))

(declare-fun bs!1904178 () Bool)

(declare-fun d!2249780 () Bool)

(assert (= bs!1904178 (and d!2249780 b!7241036)))

(declare-fun lambda!441985 () Int)

(assert (=> bs!1904178 (= lambda!441985 lambda!441911)))

(declare-fun bs!1904179 () Bool)

(assert (= bs!1904179 (and d!2249780 d!2249686)))

(assert (=> bs!1904179 (= lambda!441985 lambda!441963)))

(declare-fun bs!1904180 () Bool)

(assert (= bs!1904180 (and d!2249780 d!2249688)))

(assert (=> bs!1904180 (= lambda!441985 lambda!441964)))

(declare-fun bs!1904181 () Bool)

(assert (= bs!1904181 (and d!2249780 d!2249710)))

(assert (=> bs!1904181 (= lambda!441985 lambda!441979)))

(assert (=> d!2249780 (matchZipper!3464 (set.insert (Context!14989 (++!16409 (exprs!7994 lt!2579895) (exprs!7994 ct2!328))) (as set.empty (Set Context!14988))) (++!16408 (t!384321 s1!1971) s2!1849))))

(declare-fun lt!2580089 () Unit!163690)

(assert (=> d!2249780 (= lt!2580089 (lemmaConcatPreservesForall!1363 (exprs!7994 lt!2579895) (exprs!7994 ct2!328) lambda!441985))))

(declare-fun lt!2580088 () Unit!163690)

(declare-fun choose!55782 (Context!14988 Context!14988 List!70270 List!70270) Unit!163690)

(assert (=> d!2249780 (= lt!2580088 (choose!55782 lt!2579895 ct2!328 (t!384321 s1!1971) s2!1849))))

(assert (=> d!2249780 (matchZipper!3464 (set.insert lt!2579895 (as set.empty (Set Context!14988))) (t!384321 s1!1971))))

(assert (=> d!2249780 (= (lemmaConcatenateContextMatchesConcatOfStrings!345 lt!2579895 ct2!328 (t!384321 s1!1971) s2!1849) lt!2580088)))

(declare-fun bs!1904182 () Bool)

(assert (= bs!1904182 d!2249780))

(assert (=> bs!1904182 m!7915152))

(declare-fun m!7915640 () Bool)

(assert (=> bs!1904182 m!7915640))

(declare-fun m!7915642 () Bool)

(assert (=> bs!1904182 m!7915642))

(declare-fun m!7915644 () Bool)

(assert (=> bs!1904182 m!7915644))

(assert (=> bs!1904182 m!7915642))

(assert (=> bs!1904182 m!7915142))

(declare-fun m!7915646 () Bool)

(assert (=> bs!1904182 m!7915646))

(assert (=> bs!1904182 m!7915640))

(assert (=> bs!1904182 m!7915142))

(declare-fun m!7915648 () Bool)

(assert (=> bs!1904182 m!7915648))

(declare-fun m!7915650 () Bool)

(assert (=> bs!1904182 m!7915650))

(assert (=> b!7241037 d!2249780))

(declare-fun e!4341509 () Bool)

(declare-fun b!7241266 () Bool)

(declare-fun lt!2580092 () List!70271)

(assert (=> b!7241266 (= e!4341509 (or (not (= (exprs!7994 ct2!328) Nil!70147)) (= lt!2580092 (exprs!7994 lt!2579895))))))

(declare-fun b!7241265 () Bool)

(declare-fun res!2937527 () Bool)

(assert (=> b!7241265 (=> (not res!2937527) (not e!4341509))))

(declare-fun size!41625 (List!70271) Int)

(assert (=> b!7241265 (= res!2937527 (= (size!41625 lt!2580092) (+ (size!41625 (exprs!7994 lt!2579895)) (size!41625 (exprs!7994 ct2!328)))))))

(declare-fun b!7241263 () Bool)

(declare-fun e!4341510 () List!70271)

(assert (=> b!7241263 (= e!4341510 (exprs!7994 ct2!328))))

(declare-fun b!7241264 () Bool)

(assert (=> b!7241264 (= e!4341510 (Cons!70147 (h!76595 (exprs!7994 lt!2579895)) (++!16409 (t!384322 (exprs!7994 lt!2579895)) (exprs!7994 ct2!328))))))

(declare-fun d!2249782 () Bool)

(assert (=> d!2249782 e!4341509))

(declare-fun res!2937526 () Bool)

(assert (=> d!2249782 (=> (not res!2937526) (not e!4341509))))

(declare-fun content!14489 (List!70271) (Set Regex!18554))

(assert (=> d!2249782 (= res!2937526 (= (content!14489 lt!2580092) (set.union (content!14489 (exprs!7994 lt!2579895)) (content!14489 (exprs!7994 ct2!328)))))))

(assert (=> d!2249782 (= lt!2580092 e!4341510)))

(declare-fun c!1344778 () Bool)

(assert (=> d!2249782 (= c!1344778 (is-Nil!70147 (exprs!7994 lt!2579895)))))

(assert (=> d!2249782 (= (++!16409 (exprs!7994 lt!2579895) (exprs!7994 ct2!328)) lt!2580092)))

(assert (= (and d!2249782 c!1344778) b!7241263))

(assert (= (and d!2249782 (not c!1344778)) b!7241264))

(assert (= (and d!2249782 res!2937526) b!7241265))

(assert (= (and b!7241265 res!2937527) b!7241266))

(declare-fun m!7915652 () Bool)

(assert (=> b!7241265 m!7915652))

(declare-fun m!7915654 () Bool)

(assert (=> b!7241265 m!7915654))

(declare-fun m!7915656 () Bool)

(assert (=> b!7241265 m!7915656))

(declare-fun m!7915658 () Bool)

(assert (=> b!7241264 m!7915658))

(declare-fun m!7915660 () Bool)

(assert (=> d!2249782 m!7915660))

(declare-fun m!7915662 () Bool)

(assert (=> d!2249782 m!7915662))

(declare-fun m!7915664 () Bool)

(assert (=> d!2249782 m!7915664))

(assert (=> b!7241037 d!2249782))

(assert (=> b!7241037 d!2249744))

(declare-fun e!4341511 () Bool)

(declare-fun b!7241270 () Bool)

(declare-fun lt!2580093 () List!70271)

(assert (=> b!7241270 (= e!4341511 (or (not (= (exprs!7994 ct2!328) Nil!70147)) (= lt!2580093 (exprs!7994 ct1!232))))))

(declare-fun b!7241269 () Bool)

(declare-fun res!2937529 () Bool)

(assert (=> b!7241269 (=> (not res!2937529) (not e!4341511))))

(assert (=> b!7241269 (= res!2937529 (= (size!41625 lt!2580093) (+ (size!41625 (exprs!7994 ct1!232)) (size!41625 (exprs!7994 ct2!328)))))))

(declare-fun b!7241267 () Bool)

(declare-fun e!4341512 () List!70271)

(assert (=> b!7241267 (= e!4341512 (exprs!7994 ct2!328))))

(declare-fun b!7241268 () Bool)

(assert (=> b!7241268 (= e!4341512 (Cons!70147 (h!76595 (exprs!7994 ct1!232)) (++!16409 (t!384322 (exprs!7994 ct1!232)) (exprs!7994 ct2!328))))))

(declare-fun d!2249784 () Bool)

(assert (=> d!2249784 e!4341511))

(declare-fun res!2937528 () Bool)

(assert (=> d!2249784 (=> (not res!2937528) (not e!4341511))))

(assert (=> d!2249784 (= res!2937528 (= (content!14489 lt!2580093) (set.union (content!14489 (exprs!7994 ct1!232)) (content!14489 (exprs!7994 ct2!328)))))))

(assert (=> d!2249784 (= lt!2580093 e!4341512)))

(declare-fun c!1344779 () Bool)

(assert (=> d!2249784 (= c!1344779 (is-Nil!70147 (exprs!7994 ct1!232)))))

(assert (=> d!2249784 (= (++!16409 (exprs!7994 ct1!232) (exprs!7994 ct2!328)) lt!2580093)))

(assert (= (and d!2249784 c!1344779) b!7241267))

(assert (= (and d!2249784 (not c!1344779)) b!7241268))

(assert (= (and d!2249784 res!2937528) b!7241269))

(assert (= (and b!7241269 res!2937529) b!7241270))

(declare-fun m!7915666 () Bool)

(assert (=> b!7241269 m!7915666))

(declare-fun m!7915668 () Bool)

(assert (=> b!7241269 m!7915668))

(assert (=> b!7241269 m!7915656))

(declare-fun m!7915670 () Bool)

(assert (=> b!7241268 m!7915670))

(declare-fun m!7915672 () Bool)

(assert (=> d!2249784 m!7915672))

(declare-fun m!7915674 () Bool)

(assert (=> d!2249784 m!7915674))

(assert (=> d!2249784 m!7915664))

(assert (=> b!7241036 d!2249784))

(assert (=> b!7241036 d!2249742))

(assert (=> b!7241046 d!2249706))

(declare-fun d!2249786 () Bool)

(declare-fun res!2937534 () Bool)

(declare-fun e!4341517 () Bool)

(assert (=> d!2249786 (=> res!2937534 e!4341517)))

(assert (=> d!2249786 (= res!2937534 (is-Nil!70147 (exprs!7994 ct2!328)))))

(assert (=> d!2249786 (= (forall!17395 (exprs!7994 ct2!328) lambda!441911) e!4341517)))

(declare-fun b!7241275 () Bool)

(declare-fun e!4341518 () Bool)

(assert (=> b!7241275 (= e!4341517 e!4341518)))

(declare-fun res!2937535 () Bool)

(assert (=> b!7241275 (=> (not res!2937535) (not e!4341518))))

(declare-fun dynLambda!28639 (Int Regex!18554) Bool)

(assert (=> b!7241275 (= res!2937535 (dynLambda!28639 lambda!441911 (h!76595 (exprs!7994 ct2!328))))))

(declare-fun b!7241276 () Bool)

(assert (=> b!7241276 (= e!4341518 (forall!17395 (t!384322 (exprs!7994 ct2!328)) lambda!441911))))

(assert (= (and d!2249786 (not res!2937534)) b!7241275))

(assert (= (and b!7241275 res!2937535) b!7241276))

(declare-fun b_lambda!277797 () Bool)

(assert (=> (not b_lambda!277797) (not b!7241275)))

(declare-fun m!7915676 () Bool)

(assert (=> b!7241275 m!7915676))

(declare-fun m!7915678 () Bool)

(assert (=> b!7241276 m!7915678))

(assert (=> b!7241040 d!2249786))

(declare-fun d!2249788 () Bool)

(declare-fun res!2937536 () Bool)

(declare-fun e!4341519 () Bool)

(assert (=> d!2249788 (=> res!2937536 e!4341519)))

(assert (=> d!2249788 (= res!2937536 (is-Nil!70147 (exprs!7994 ct1!232)))))

(assert (=> d!2249788 (= (forall!17395 (exprs!7994 ct1!232) lambda!441911) e!4341519)))

(declare-fun b!7241277 () Bool)

(declare-fun e!4341520 () Bool)

(assert (=> b!7241277 (= e!4341519 e!4341520)))

(declare-fun res!2937537 () Bool)

(assert (=> b!7241277 (=> (not res!2937537) (not e!4341520))))

(assert (=> b!7241277 (= res!2937537 (dynLambda!28639 lambda!441911 (h!76595 (exprs!7994 ct1!232))))))

(declare-fun b!7241278 () Bool)

(assert (=> b!7241278 (= e!4341520 (forall!17395 (t!384322 (exprs!7994 ct1!232)) lambda!441911))))

(assert (= (and d!2249788 (not res!2937536)) b!7241277))

(assert (= (and b!7241277 res!2937537) b!7241278))

(declare-fun b_lambda!277799 () Bool)

(assert (=> (not b_lambda!277799) (not b!7241277)))

(declare-fun m!7915680 () Bool)

(assert (=> b!7241277 m!7915680))

(declare-fun m!7915682 () Bool)

(assert (=> b!7241278 m!7915682))

(assert (=> b!7241039 d!2249788))

(declare-fun d!2249790 () Bool)

(declare-fun c!1344780 () Bool)

(assert (=> d!2249790 (= c!1344780 (isEmpty!40425 lt!2579900))))

(declare-fun e!4341521 () Bool)

(assert (=> d!2249790 (= (matchZipper!3464 lt!2579881 lt!2579900) e!4341521)))

(declare-fun b!7241279 () Bool)

(assert (=> b!7241279 (= e!4341521 (nullableZipper!2848 lt!2579881))))

(declare-fun b!7241280 () Bool)

(assert (=> b!7241280 (= e!4341521 (matchZipper!3464 (derivationStepZipper!3346 lt!2579881 (head!14837 lt!2579900)) (tail!14218 lt!2579900)))))

(assert (= (and d!2249790 c!1344780) b!7241279))

(assert (= (and d!2249790 (not c!1344780)) b!7241280))

(assert (=> d!2249790 m!7915384))

(declare-fun m!7915684 () Bool)

(assert (=> b!7241279 m!7915684))

(assert (=> b!7241280 m!7915388))

(assert (=> b!7241280 m!7915388))

(declare-fun m!7915686 () Bool)

(assert (=> b!7241280 m!7915686))

(assert (=> b!7241280 m!7915392))

(assert (=> b!7241280 m!7915686))

(assert (=> b!7241280 m!7915392))

(declare-fun m!7915688 () Bool)

(assert (=> b!7241280 m!7915688))

(assert (=> b!7241038 d!2249790))

(declare-fun b!7241285 () Bool)

(declare-fun e!4341524 () Bool)

(declare-fun tp!2035253 () Bool)

(declare-fun tp!2035254 () Bool)

(assert (=> b!7241285 (= e!4341524 (and tp!2035253 tp!2035254))))

(assert (=> b!7241032 (= tp!2035236 e!4341524)))

(assert (= (and b!7241032 (is-Cons!70147 (exprs!7994 ct2!328))) b!7241285))

(declare-fun b!7241290 () Bool)

(declare-fun e!4341527 () Bool)

(declare-fun tp!2035257 () Bool)

(assert (=> b!7241290 (= e!4341527 (and tp_is_empty!46573 tp!2035257))))

(assert (=> b!7241047 (= tp!2035235 e!4341527)))

(assert (= (and b!7241047 (is-Cons!70146 (t!384321 s2!1849))) b!7241290))

(declare-fun b!7241291 () Bool)

(declare-fun e!4341528 () Bool)

(declare-fun tp!2035258 () Bool)

(declare-fun tp!2035259 () Bool)

(assert (=> b!7241291 (= e!4341528 (and tp!2035258 tp!2035259))))

(assert (=> b!7241041 (= tp!2035233 e!4341528)))

(assert (= (and b!7241041 (is-Cons!70147 (exprs!7994 ct1!232))) b!7241291))

(declare-fun b!7241292 () Bool)

(declare-fun e!4341529 () Bool)

(declare-fun tp!2035260 () Bool)

(assert (=> b!7241292 (= e!4341529 (and tp_is_empty!46573 tp!2035260))))

(assert (=> b!7241050 (= tp!2035234 e!4341529)))

(assert (= (and b!7241050 (is-Cons!70146 (t!384321 s1!1971))) b!7241292))

(declare-fun b_lambda!277801 () Bool)

(assert (= b_lambda!277795 (or b!7241045 b_lambda!277801)))

(declare-fun bs!1904183 () Bool)

(declare-fun d!2249792 () Bool)

(assert (= bs!1904183 (and d!2249792 b!7241045)))

(assert (=> bs!1904183 (= (dynLambda!28638 lambda!441912 lt!2580082) (matchZipper!3464 (set.insert lt!2580082 (as set.empty (Set Context!14988))) (t!384321 s1!1971)))))

(declare-fun m!7915690 () Bool)

(assert (=> bs!1904183 m!7915690))

(assert (=> bs!1904183 m!7915690))

(declare-fun m!7915692 () Bool)

(assert (=> bs!1904183 m!7915692))

(assert (=> d!2249772 d!2249792))

(declare-fun b_lambda!277803 () Bool)

(assert (= b_lambda!277799 (or b!7241036 b_lambda!277803)))

(declare-fun bs!1904184 () Bool)

(declare-fun d!2249794 () Bool)

(assert (= bs!1904184 (and d!2249794 b!7241036)))

(declare-fun validRegex!9532 (Regex!18554) Bool)

(assert (=> bs!1904184 (= (dynLambda!28639 lambda!441911 (h!76595 (exprs!7994 ct1!232))) (validRegex!9532 (h!76595 (exprs!7994 ct1!232))))))

(declare-fun m!7915694 () Bool)

(assert (=> bs!1904184 m!7915694))

(assert (=> b!7241277 d!2249794))

(declare-fun b_lambda!277805 () Bool)

(assert (= b_lambda!277791 (or b!7241034 b_lambda!277805)))

(declare-fun bs!1904185 () Bool)

(declare-fun d!2249796 () Bool)

(assert (= bs!1904185 (and d!2249796 b!7241034)))

(assert (=> bs!1904185 (= (dynLambda!28637 lambda!441913 lt!2579879) (derivationStepZipperUp!2428 lt!2579879 (h!76594 s1!1971)))))

(assert (=> bs!1904185 m!7915164))

(assert (=> d!2249708 d!2249796))

(declare-fun b_lambda!277807 () Bool)

(assert (= b_lambda!277797 (or b!7241036 b_lambda!277807)))

(declare-fun bs!1904186 () Bool)

(declare-fun d!2249798 () Bool)

(assert (= bs!1904186 (and d!2249798 b!7241036)))

(assert (=> bs!1904186 (= (dynLambda!28639 lambda!441911 (h!76595 (exprs!7994 ct2!328))) (validRegex!9532 (h!76595 (exprs!7994 ct2!328))))))

(declare-fun m!7915696 () Bool)

(assert (=> bs!1904186 m!7915696))

(assert (=> b!7241275 d!2249798))

(declare-fun b_lambda!277809 () Bool)

(assert (= b_lambda!277793 (or b!7241034 b_lambda!277809)))

(declare-fun bs!1904187 () Bool)

(declare-fun d!2249800 () Bool)

(assert (= bs!1904187 (and d!2249800 b!7241034)))

(assert (=> bs!1904187 (= (dynLambda!28637 lambda!441913 ct1!232) (derivationStepZipperUp!2428 ct1!232 (h!76594 s1!1971)))))

(assert (=> bs!1904187 m!7915154))

(assert (=> d!2249720 d!2249800))

(push 1)

(assert (not d!2249700))

(assert (not b!7241233))

(assert (not bs!1904184))

(assert (not b!7241121))

(assert (not b!7241203))

(assert (not d!2249764))

(assert (not b!7241238))

(assert (not d!2249714))

(assert (not b!7241208))

(assert (not b!7241125))

(assert (not d!2249698))

(assert (not b!7241241))

(assert (not b!7241280))

(assert (not d!2249742))

(assert (not b!7241290))

(assert (not d!2249724))

(assert (not b!7241192))

(assert (not b!7241193))

(assert (not bs!1904185))

(assert (not d!2249712))

(assert (not d!2249778))

(assert (not bs!1904186))

(assert (not b!7241137))

(assert (not b!7241250))

(assert (not b!7241252))

(assert (not b!7241278))

(assert (not d!2249720))

(assert (not b!7241135))

(assert (not b!7241291))

(assert (not d!2249772))

(assert (not b!7241124))

(assert (not bm!659466))

(assert (not b!7241265))

(assert (not b!7241230))

(assert (not d!2249784))

(assert (not b_lambda!277805))

(assert (not b!7241138))

(assert (not b!7241126))

(assert (not d!2249684))

(assert (not b!7241269))

(assert (not b_lambda!277807))

(assert (not b!7241236))

(assert (not b_lambda!277801))

(assert (not bm!659476))

(assert (not b!7241279))

(assert (not b!7241204))

(assert (not b!7241226))

(assert (not d!2249718))

(assert (not b!7241222))

(assert (not b!7241243))

(assert (not d!2249710))

(assert (not d!2249702))

(assert (not d!2249730))

(assert (not d!2249758))

(assert (not b_lambda!277803))

(assert (not bm!659473))

(assert (not d!2249756))

(assert (not b!7241227))

(assert (not d!2249760))

(assert (not d!2249706))

(assert (not d!2249738))

(assert (not d!2249762))

(assert (not bm!659450))

(assert (not b!7241231))

(assert (not bm!659467))

(assert (not b!7241132))

(assert (not d!2249766))

(assert (not b!7241123))

(assert (not b!7241122))

(assert (not d!2249736))

(assert (not b!7241178))

(assert (not d!2249774))

(assert (not b!7241232))

(assert (not b!7241120))

(assert (not d!2249754))

(assert (not b!7241228))

(assert (not bm!659469))

(assert (not bm!659477))

(assert (not bs!1904183))

(assert (not d!2249682))

(assert (not b!7241249))

(assert (not d!2249732))

(assert (not b!7241253))

(assert (not b!7241292))

(assert (not bm!659468))

(assert (not b!7241149))

(assert (not b!7241234))

(assert (not d!2249734))

(assert (not b!7241268))

(assert (not d!2249790))

(assert (not d!2249694))

(assert tp_is_empty!46573)

(assert (not b!7241136))

(assert (not b!7241235))

(assert (not b!7241276))

(assert (not d!2249696))

(assert (not b!7241213))

(assert (not b!7241264))

(assert (not d!2249688))

(assert (not d!2249704))

(assert (not b_lambda!277809))

(assert (not d!2249692))

(assert (not d!2249716))

(assert (not b!7241151))

(assert (not bm!659474))

(assert (not b!7241206))

(assert (not bs!1904187))

(assert (not d!2249708))

(assert (not b!7241229))

(assert (not d!2249690))

(assert (not d!2249686))

(assert (not b!7241223))

(assert (not bm!659475))

(assert (not b!7241127))

(assert (not d!2249782))

(assert (not b!7241285))

(assert (not d!2249780))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

