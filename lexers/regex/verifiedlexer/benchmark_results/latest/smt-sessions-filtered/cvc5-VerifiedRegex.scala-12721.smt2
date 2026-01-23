; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!703340 () Bool)

(assert start!703340)

(declare-fun b!7240099 () Bool)

(assert (=> b!7240099 true))

(declare-fun b!7240108 () Bool)

(assert (=> b!7240108 true))

(declare-fun bs!1903950 () Bool)

(assert (= bs!1903950 (and b!7240108 b!7240099)))

(declare-datatypes ((C!37374 0))(
  ( (C!37375 (val!28635 Int)) )
))
(declare-datatypes ((List!70258 0))(
  ( (Nil!70134) (Cons!70134 (h!76582 C!37374) (t!384309 List!70258)) )
))
(declare-fun lt!2579161 () List!70258)

(declare-fun lambda!441632 () Int)

(declare-fun lambda!441630 () Int)

(declare-fun s1!1971 () List!70258)

(assert (=> bs!1903950 (= (= lt!2579161 (t!384309 s1!1971)) (= lambda!441632 lambda!441630))))

(assert (=> b!7240108 true))

(declare-fun b!7240098 () Bool)

(declare-fun e!4340767 () Bool)

(declare-fun tp!2035138 () Bool)

(assert (=> b!7240098 (= e!4340767 tp!2035138)))

(declare-fun e!4340755 () Bool)

(declare-fun e!4340763 () Bool)

(assert (=> b!7240099 (= e!4340755 (not e!4340763))))

(declare-fun res!2937119 () Bool)

(assert (=> b!7240099 (=> res!2937119 e!4340763)))

(declare-datatypes ((Regex!18550 0))(
  ( (ElementMatch!18550 (c!1344362 C!37374)) (Concat!27395 (regOne!37612 Regex!18550) (regTwo!37612 Regex!18550)) (EmptyExpr!18550) (Star!18550 (reg!18879 Regex!18550)) (EmptyLang!18550) (Union!18550 (regOne!37613 Regex!18550) (regTwo!37613 Regex!18550)) )
))
(declare-datatypes ((List!70259 0))(
  ( (Nil!70135) (Cons!70135 (h!76583 Regex!18550) (t!384310 List!70259)) )
))
(declare-datatypes ((Context!14980 0))(
  ( (Context!14981 (exprs!7990 List!70259)) )
))
(declare-fun lt!2579165 () (Set Context!14980))

(declare-fun exists!4243 ((Set Context!14980) Int) Bool)

(assert (=> b!7240099 (= res!2937119 (not (exists!4243 lt!2579165 lambda!441630)))))

(declare-datatypes ((List!70260 0))(
  ( (Nil!70136) (Cons!70136 (h!76584 Context!14980) (t!384311 List!70260)) )
))
(declare-fun lt!2579167 () List!70260)

(declare-fun exists!4244 (List!70260 Int) Bool)

(assert (=> b!7240099 (exists!4244 lt!2579167 lambda!441630)))

(declare-datatypes ((Unit!163674 0))(
  ( (Unit!163675) )
))
(declare-fun lt!2579139 () Unit!163674)

(declare-fun lemmaZipperMatchesExistsMatchingContext!693 (List!70260 List!70258) Unit!163674)

(assert (=> b!7240099 (= lt!2579139 (lemmaZipperMatchesExistsMatchingContext!693 lt!2579167 (t!384309 s1!1971)))))

(declare-fun toList!11407 ((Set Context!14980)) List!70260)

(assert (=> b!7240099 (= lt!2579167 (toList!11407 lt!2579165))))

(declare-fun lt!2579154 () (Set Context!14980))

(declare-fun lt!2579162 () (Set Context!14980))

(declare-fun derivationStepZipper!3342 ((Set Context!14980) C!37374) (Set Context!14980))

(assert (=> b!7240099 (= lt!2579154 (derivationStepZipper!3342 lt!2579162 (h!76582 s1!1971)))))

(declare-fun res!2937120 () Bool)

(declare-fun e!4340762 () Bool)

(assert (=> start!703340 (=> (not res!2937120) (not e!4340762))))

(declare-fun lt!2579173 () (Set Context!14980))

(declare-fun matchZipper!3460 ((Set Context!14980) List!70258) Bool)

(assert (=> start!703340 (= res!2937120 (matchZipper!3460 lt!2579173 s1!1971))))

(declare-fun ct1!232 () Context!14980)

(assert (=> start!703340 (= lt!2579173 (set.insert ct1!232 (as set.empty (Set Context!14980))))))

(assert (=> start!703340 e!4340762))

(declare-fun inv!89386 (Context!14980) Bool)

(assert (=> start!703340 (and (inv!89386 ct1!232) e!4340767)))

(declare-fun e!4340759 () Bool)

(assert (=> start!703340 e!4340759))

(declare-fun e!4340758 () Bool)

(assert (=> start!703340 e!4340758))

(declare-fun ct2!328 () Context!14980)

(declare-fun e!4340764 () Bool)

(assert (=> start!703340 (and (inv!89386 ct2!328) e!4340764)))

(declare-fun b!7240100 () Bool)

(declare-fun e!4340754 () Bool)

(assert (=> b!7240100 (= e!4340754 e!4340755)))

(declare-fun res!2937127 () Bool)

(assert (=> b!7240100 (=> (not res!2937127) (not e!4340755))))

(assert (=> b!7240100 (= res!2937127 (matchZipper!3460 lt!2579165 (t!384309 s1!1971)))))

(assert (=> b!7240100 (= lt!2579165 (derivationStepZipper!3342 lt!2579173 (h!76582 s1!1971)))))

(declare-fun b!7240101 () Bool)

(declare-fun e!4340768 () Bool)

(assert (=> b!7240101 (= e!4340768 (exists!4243 lt!2579154 lambda!441632))))

(declare-fun b!7240102 () Bool)

(declare-fun e!4340761 () Bool)

(declare-fun lambda!441629 () Int)

(declare-fun forall!17387 (List!70259 Int) Bool)

(assert (=> b!7240102 (= e!4340761 (forall!17387 (exprs!7990 ct2!328) lambda!441629))))

(declare-fun b!7240103 () Bool)

(declare-fun e!4340756 () Bool)

(declare-fun lt!2579169 () (Set Context!14980))

(assert (=> b!7240103 (= e!4340756 (matchZipper!3460 lt!2579169 (t!384309 s1!1971)))))

(declare-fun b!7240104 () Bool)

(declare-fun tp_is_empty!46565 () Bool)

(declare-fun tp!2035137 () Bool)

(assert (=> b!7240104 (= e!4340759 (and tp_is_empty!46565 tp!2035137))))

(declare-fun b!7240105 () Bool)

(declare-fun res!2937121 () Bool)

(assert (=> b!7240105 (=> (not res!2937121) (not e!4340762))))

(declare-fun s2!1849 () List!70258)

(assert (=> b!7240105 (= res!2937121 (matchZipper!3460 (set.insert ct2!328 (as set.empty (Set Context!14980))) s2!1849))))

(declare-fun b!7240106 () Bool)

(assert (=> b!7240106 (= e!4340762 e!4340754)))

(declare-fun res!2937129 () Bool)

(assert (=> b!7240106 (=> (not res!2937129) (not e!4340754))))

(assert (=> b!7240106 (= res!2937129 (and (not (is-Nil!70135 (exprs!7990 ct1!232))) (is-Cons!70134 s1!1971)))))

(declare-fun lt!2579174 () Context!14980)

(assert (=> b!7240106 (= lt!2579162 (set.insert lt!2579174 (as set.empty (Set Context!14980))))))

(declare-fun lt!2579146 () List!70259)

(assert (=> b!7240106 (= lt!2579174 (Context!14981 lt!2579146))))

(declare-fun ++!16400 (List!70259 List!70259) List!70259)

(assert (=> b!7240106 (= lt!2579146 (++!16400 (exprs!7990 ct1!232) (exprs!7990 ct2!328)))))

(declare-fun lt!2579170 () Unit!163674)

(declare-fun lemmaConcatPreservesForall!1359 (List!70259 List!70259 Int) Unit!163674)

(assert (=> b!7240106 (= lt!2579170 (lemmaConcatPreservesForall!1359 (exprs!7990 ct1!232) (exprs!7990 ct2!328) lambda!441629))))

(declare-fun b!7240107 () Bool)

(declare-fun tp!2035139 () Bool)

(assert (=> b!7240107 (= e!4340758 (and tp_is_empty!46565 tp!2035139))))

(declare-fun e!4340757 () Bool)

(assert (=> b!7240108 (= e!4340757 e!4340761)))

(declare-fun res!2937122 () Bool)

(assert (=> b!7240108 (=> res!2937122 e!4340761)))

(assert (=> b!7240108 (= res!2937122 (not (forall!17387 (exprs!7990 ct1!232) lambda!441629)))))

(declare-fun e!4340769 () Bool)

(assert (=> b!7240108 e!4340769))

(declare-fun res!2937128 () Bool)

(assert (=> b!7240108 (=> (not res!2937128) (not e!4340769))))

(declare-fun lt!2579147 () List!70260)

(declare-fun content!14476 (List!70260) (Set Context!14980))

(assert (=> b!7240108 (= res!2937128 (matchZipper!3460 (content!14476 lt!2579147) lt!2579161))))

(declare-fun lt!2579144 () Unit!163674)

(declare-fun lemmaExistsMatchingContextThenMatchingString!79 (List!70260 List!70258) Unit!163674)

(assert (=> b!7240108 (= lt!2579144 (lemmaExistsMatchingContextThenMatchingString!79 lt!2579147 lt!2579161))))

(assert (=> b!7240108 (= lt!2579147 (toList!11407 lt!2579154))))

(assert (=> b!7240108 e!4340768))

(declare-fun res!2937124 () Bool)

(assert (=> b!7240108 (=> (not res!2937124) (not e!4340768))))

(assert (=> b!7240108 (= res!2937124 (exists!4243 lt!2579154 lambda!441632))))

(declare-fun lt!2579171 () Unit!163674)

(declare-fun lt!2579157 () Context!14980)

(declare-fun lemmaContainsThenExists!214 ((Set Context!14980) Context!14980 Int) Unit!163674)

(assert (=> b!7240108 (= lt!2579171 (lemmaContainsThenExists!214 lt!2579154 lt!2579157 lambda!441632))))

(declare-fun lt!2579151 () Context!14980)

(declare-fun lt!2579163 () Unit!163674)

(assert (=> b!7240108 (= lt!2579163 (lemmaConcatPreservesForall!1359 (exprs!7990 lt!2579151) (exprs!7990 ct2!328) lambda!441629))))

(assert (=> b!7240108 (set.member lt!2579157 lt!2579154)))

(declare-fun lt!2579168 () Unit!163674)

(assert (=> b!7240108 (= lt!2579168 (lemmaConcatPreservesForall!1359 (exprs!7990 lt!2579151) (exprs!7990 ct2!328) lambda!441629))))

(declare-fun lt!2579141 () (Set Context!14980))

(assert (=> b!7240108 (set.member lt!2579157 lt!2579141)))

(declare-fun lt!2579140 () Unit!163674)

(assert (=> b!7240108 (= lt!2579140 (lemmaConcatPreservesForall!1359 (exprs!7990 ct1!232) (exprs!7990 ct2!328) lambda!441629))))

(declare-fun lt!2579176 () Unit!163674)

(assert (=> b!7240108 (= lt!2579176 (lemmaConcatPreservesForall!1359 (exprs!7990 lt!2579151) (exprs!7990 ct2!328) lambda!441629))))

(declare-fun lt!2579175 () Unit!163674)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!15 (Context!14980 Context!14980 Context!14980 C!37374) Unit!163674)

(assert (=> b!7240108 (= lt!2579175 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!15 ct1!232 ct2!328 lt!2579151 (h!76582 s1!1971)))))

(declare-fun tail!14210 (List!70258) List!70258)

(declare-fun ++!16401 (List!70258 List!70258) List!70258)

(assert (=> b!7240108 (= (tail!14210 (++!16401 s1!1971 s2!1849)) lt!2579161)))

(declare-fun lt!2579152 () Unit!163674)

(declare-fun e!4340766 () Unit!163674)

(assert (=> b!7240108 (= lt!2579152 e!4340766)))

(declare-fun c!1344361 () Bool)

(declare-fun nullable!7863 (Regex!18550) Bool)

(assert (=> b!7240108 (= c!1344361 (nullable!7863 (h!76583 (exprs!7990 ct1!232))))))

(declare-fun lambda!441631 () Int)

(declare-fun flatMap!2754 ((Set Context!14980) Int) (Set Context!14980))

(declare-fun derivationStepZipperUp!2424 (Context!14980 C!37374) (Set Context!14980))

(assert (=> b!7240108 (= (flatMap!2754 lt!2579162 lambda!441631) (derivationStepZipperUp!2424 lt!2579174 (h!76582 s1!1971)))))

(declare-fun lt!2579164 () Unit!163674)

(declare-fun lemmaFlatMapOnSingletonSet!2181 ((Set Context!14980) Context!14980 Int) Unit!163674)

(assert (=> b!7240108 (= lt!2579164 (lemmaFlatMapOnSingletonSet!2181 lt!2579162 lt!2579174 lambda!441631))))

(declare-fun lt!2579148 () Unit!163674)

(assert (=> b!7240108 (= lt!2579148 (lemmaConcatPreservesForall!1359 (exprs!7990 ct1!232) (exprs!7990 ct2!328) lambda!441629))))

(assert (=> b!7240108 (= (flatMap!2754 lt!2579173 lambda!441631) (derivationStepZipperUp!2424 ct1!232 (h!76582 s1!1971)))))

(declare-fun lt!2579179 () Unit!163674)

(assert (=> b!7240108 (= lt!2579179 (lemmaFlatMapOnSingletonSet!2181 lt!2579173 ct1!232 lambda!441631))))

(declare-fun lt!2579155 () Context!14980)

(declare-fun lt!2579158 () (Set Context!14980))

(declare-fun derivationStepZipperDown!2594 (Regex!18550 Context!14980 C!37374) (Set Context!14980))

(assert (=> b!7240108 (= lt!2579158 (derivationStepZipperDown!2594 (h!76583 (exprs!7990 ct1!232)) lt!2579155 (h!76582 s1!1971)))))

(declare-fun tail!14211 (List!70259) List!70259)

(assert (=> b!7240108 (= lt!2579155 (Context!14981 (tail!14211 lt!2579146)))))

(declare-fun b!7240109 () Bool)

(declare-fun e!4340760 () Bool)

(assert (=> b!7240109 (= e!4340760 e!4340757)))

(declare-fun res!2937125 () Bool)

(assert (=> b!7240109 (=> res!2937125 e!4340757)))

(declare-fun isEmpty!40415 (List!70259) Bool)

(assert (=> b!7240109 (= res!2937125 (isEmpty!40415 lt!2579146))))

(declare-fun lt!2579145 () Unit!163674)

(assert (=> b!7240109 (= lt!2579145 (lemmaConcatPreservesForall!1359 (exprs!7990 ct1!232) (exprs!7990 ct2!328) lambda!441629))))

(assert (=> b!7240109 (= lt!2579141 (derivationStepZipperUp!2424 lt!2579174 (h!76582 s1!1971)))))

(declare-fun lt!2579156 () Unit!163674)

(assert (=> b!7240109 (= lt!2579156 (lemmaConcatPreservesForall!1359 (exprs!7990 ct1!232) (exprs!7990 ct2!328) lambda!441629))))

(declare-fun lt!2579143 () (Set Context!14980))

(declare-fun lt!2579172 () Context!14980)

(assert (=> b!7240109 (= lt!2579143 (derivationStepZipperDown!2594 (h!76583 (exprs!7990 ct1!232)) lt!2579172 (h!76582 s1!1971)))))

(assert (=> b!7240109 (= lt!2579172 (Context!14981 (tail!14211 (exprs!7990 ct1!232))))))

(declare-fun b!7240110 () Bool)

(assert (=> b!7240110 (= e!4340769 (matchZipper!3460 lt!2579154 lt!2579161))))

(declare-fun b!7240111 () Bool)

(declare-fun tp!2035140 () Bool)

(assert (=> b!7240111 (= e!4340764 tp!2035140)))

(declare-fun b!7240112 () Bool)

(assert (=> b!7240112 (= e!4340763 e!4340760)))

(declare-fun res!2937123 () Bool)

(assert (=> b!7240112 (=> res!2937123 e!4340760)))

(assert (=> b!7240112 (= res!2937123 (isEmpty!40415 (exprs!7990 ct1!232)))))

(declare-fun lt!2579178 () (Set Context!14980))

(assert (=> b!7240112 (= lt!2579178 (derivationStepZipperUp!2424 ct1!232 (h!76582 s1!1971)))))

(declare-fun lt!2579142 () Unit!163674)

(assert (=> b!7240112 (= lt!2579142 (lemmaConcatPreservesForall!1359 (exprs!7990 lt!2579151) (exprs!7990 ct2!328) lambda!441629))))

(assert (=> b!7240112 (matchZipper!3460 (set.insert lt!2579157 (as set.empty (Set Context!14980))) lt!2579161)))

(assert (=> b!7240112 (= lt!2579161 (++!16401 (t!384309 s1!1971) s2!1849))))

(assert (=> b!7240112 (= lt!2579157 (Context!14981 (++!16400 (exprs!7990 lt!2579151) (exprs!7990 ct2!328))))))

(declare-fun lt!2579160 () Unit!163674)

(assert (=> b!7240112 (= lt!2579160 (lemmaConcatPreservesForall!1359 (exprs!7990 lt!2579151) (exprs!7990 ct2!328) lambda!441629))))

(declare-fun lt!2579149 () Unit!163674)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!341 (Context!14980 Context!14980 List!70258 List!70258) Unit!163674)

(assert (=> b!7240112 (= lt!2579149 (lemmaConcatenateContextMatchesConcatOfStrings!341 lt!2579151 ct2!328 (t!384309 s1!1971) s2!1849))))

(declare-fun getWitness!2098 ((Set Context!14980) Int) Context!14980)

(assert (=> b!7240112 (= lt!2579151 (getWitness!2098 lt!2579165 lambda!441630))))

(declare-fun b!7240113 () Bool)

(declare-fun e!4340765 () Bool)

(declare-fun lt!2579153 () (Set Context!14980))

(assert (=> b!7240113 (= e!4340765 (matchZipper!3460 lt!2579153 lt!2579161))))

(declare-fun b!7240114 () Bool)

(declare-fun Unit!163676 () Unit!163674)

(assert (=> b!7240114 (= e!4340766 Unit!163676)))

(declare-fun b!7240115 () Bool)

(declare-fun Unit!163677 () Unit!163674)

(assert (=> b!7240115 (= e!4340766 Unit!163677)))

(declare-fun lt!2579159 () Unit!163674)

(assert (=> b!7240115 (= lt!2579159 (lemmaConcatPreservesForall!1359 (exprs!7990 ct1!232) (exprs!7990 ct2!328) lambda!441629))))

(assert (=> b!7240115 (= lt!2579169 (derivationStepZipperUp!2424 lt!2579172 (h!76582 s1!1971)))))

(declare-fun lt!2579177 () Unit!163674)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1697 ((Set Context!14980) (Set Context!14980) List!70258) Unit!163674)

(assert (=> b!7240115 (= lt!2579177 (lemmaZipperConcatMatchesSameAsBothZippers!1697 lt!2579143 lt!2579169 (t!384309 s1!1971)))))

(declare-fun res!2937130 () Bool)

(assert (=> b!7240115 (= res!2937130 (matchZipper!3460 lt!2579143 (t!384309 s1!1971)))))

(assert (=> b!7240115 (=> res!2937130 e!4340756)))

(assert (=> b!7240115 (= (matchZipper!3460 (set.union lt!2579143 lt!2579169) (t!384309 s1!1971)) e!4340756)))

(declare-fun lt!2579150 () Unit!163674)

(assert (=> b!7240115 (= lt!2579150 (lemmaConcatPreservesForall!1359 (exprs!7990 ct1!232) (exprs!7990 ct2!328) lambda!441629))))

(assert (=> b!7240115 (= lt!2579153 (derivationStepZipperUp!2424 lt!2579155 (h!76582 s1!1971)))))

(declare-fun lt!2579166 () Unit!163674)

(assert (=> b!7240115 (= lt!2579166 (lemmaZipperConcatMatchesSameAsBothZippers!1697 lt!2579158 lt!2579153 lt!2579161))))

(declare-fun res!2937126 () Bool)

(assert (=> b!7240115 (= res!2937126 (matchZipper!3460 lt!2579158 lt!2579161))))

(assert (=> b!7240115 (=> res!2937126 e!4340765)))

(assert (=> b!7240115 (= (matchZipper!3460 (set.union lt!2579158 lt!2579153) lt!2579161) e!4340765)))

(assert (= (and start!703340 res!2937120) b!7240105))

(assert (= (and b!7240105 res!2937121) b!7240106))

(assert (= (and b!7240106 res!2937129) b!7240100))

(assert (= (and b!7240100 res!2937127) b!7240099))

(assert (= (and b!7240099 (not res!2937119)) b!7240112))

(assert (= (and b!7240112 (not res!2937123)) b!7240109))

(assert (= (and b!7240109 (not res!2937125)) b!7240108))

(assert (= (and b!7240108 c!1344361) b!7240115))

(assert (= (and b!7240108 (not c!1344361)) b!7240114))

(assert (= (and b!7240115 (not res!2937130)) b!7240103))

(assert (= (and b!7240115 (not res!2937126)) b!7240113))

(assert (= (and b!7240108 res!2937124) b!7240101))

(assert (= (and b!7240108 res!2937128) b!7240110))

(assert (= (and b!7240108 (not res!2937122)) b!7240102))

(assert (= start!703340 b!7240098))

(assert (= (and start!703340 (is-Cons!70134 s1!1971)) b!7240104))

(assert (= (and start!703340 (is-Cons!70134 s2!1849)) b!7240107))

(assert (= start!703340 b!7240111))

(declare-fun m!7913436 () Bool)

(assert (=> b!7240106 m!7913436))

(declare-fun m!7913438 () Bool)

(assert (=> b!7240106 m!7913438))

(declare-fun m!7913440 () Bool)

(assert (=> b!7240106 m!7913440))

(declare-fun m!7913442 () Bool)

(assert (=> b!7240105 m!7913442))

(assert (=> b!7240105 m!7913442))

(declare-fun m!7913444 () Bool)

(assert (=> b!7240105 m!7913444))

(declare-fun m!7913446 () Bool)

(assert (=> start!703340 m!7913446))

(declare-fun m!7913448 () Bool)

(assert (=> start!703340 m!7913448))

(declare-fun m!7913450 () Bool)

(assert (=> start!703340 m!7913450))

(declare-fun m!7913452 () Bool)

(assert (=> start!703340 m!7913452))

(declare-fun m!7913454 () Bool)

(assert (=> b!7240108 m!7913454))

(declare-fun m!7913456 () Bool)

(assert (=> b!7240108 m!7913456))

(declare-fun m!7913458 () Bool)

(assert (=> b!7240108 m!7913458))

(declare-fun m!7913460 () Bool)

(assert (=> b!7240108 m!7913460))

(declare-fun m!7913462 () Bool)

(assert (=> b!7240108 m!7913462))

(assert (=> b!7240108 m!7913440))

(declare-fun m!7913464 () Bool)

(assert (=> b!7240108 m!7913464))

(assert (=> b!7240108 m!7913460))

(declare-fun m!7913466 () Bool)

(assert (=> b!7240108 m!7913466))

(declare-fun m!7913468 () Bool)

(assert (=> b!7240108 m!7913468))

(declare-fun m!7913470 () Bool)

(assert (=> b!7240108 m!7913470))

(declare-fun m!7913472 () Bool)

(assert (=> b!7240108 m!7913472))

(declare-fun m!7913474 () Bool)

(assert (=> b!7240108 m!7913474))

(declare-fun m!7913476 () Bool)

(assert (=> b!7240108 m!7913476))

(declare-fun m!7913478 () Bool)

(assert (=> b!7240108 m!7913478))

(declare-fun m!7913480 () Bool)

(assert (=> b!7240108 m!7913480))

(assert (=> b!7240108 m!7913440))

(assert (=> b!7240108 m!7913460))

(declare-fun m!7913482 () Bool)

(assert (=> b!7240108 m!7913482))

(declare-fun m!7913484 () Bool)

(assert (=> b!7240108 m!7913484))

(declare-fun m!7913486 () Bool)

(assert (=> b!7240108 m!7913486))

(assert (=> b!7240108 m!7913468))

(declare-fun m!7913488 () Bool)

(assert (=> b!7240108 m!7913488))

(assert (=> b!7240108 m!7913470))

(declare-fun m!7913490 () Bool)

(assert (=> b!7240108 m!7913490))

(declare-fun m!7913492 () Bool)

(assert (=> b!7240108 m!7913492))

(declare-fun m!7913494 () Bool)

(assert (=> b!7240108 m!7913494))

(declare-fun m!7913496 () Bool)

(assert (=> b!7240108 m!7913496))

(declare-fun m!7913498 () Bool)

(assert (=> b!7240115 m!7913498))

(declare-fun m!7913500 () Bool)

(assert (=> b!7240115 m!7913500))

(declare-fun m!7913502 () Bool)

(assert (=> b!7240115 m!7913502))

(declare-fun m!7913504 () Bool)

(assert (=> b!7240115 m!7913504))

(declare-fun m!7913506 () Bool)

(assert (=> b!7240115 m!7913506))

(declare-fun m!7913508 () Bool)

(assert (=> b!7240115 m!7913508))

(declare-fun m!7913510 () Bool)

(assert (=> b!7240115 m!7913510))

(assert (=> b!7240115 m!7913440))

(declare-fun m!7913512 () Bool)

(assert (=> b!7240115 m!7913512))

(assert (=> b!7240115 m!7913440))

(declare-fun m!7913514 () Bool)

(assert (=> b!7240099 m!7913514))

(declare-fun m!7913516 () Bool)

(assert (=> b!7240099 m!7913516))

(declare-fun m!7913518 () Bool)

(assert (=> b!7240099 m!7913518))

(declare-fun m!7913520 () Bool)

(assert (=> b!7240099 m!7913520))

(declare-fun m!7913522 () Bool)

(assert (=> b!7240099 m!7913522))

(declare-fun m!7913524 () Bool)

(assert (=> b!7240103 m!7913524))

(assert (=> b!7240101 m!7913454))

(declare-fun m!7913526 () Bool)

(assert (=> b!7240100 m!7913526))

(declare-fun m!7913528 () Bool)

(assert (=> b!7240100 m!7913528))

(declare-fun m!7913530 () Bool)

(assert (=> b!7240112 m!7913530))

(declare-fun m!7913532 () Bool)

(assert (=> b!7240112 m!7913532))

(declare-fun m!7913534 () Bool)

(assert (=> b!7240112 m!7913534))

(declare-fun m!7913536 () Bool)

(assert (=> b!7240112 m!7913536))

(assert (=> b!7240112 m!7913466))

(assert (=> b!7240112 m!7913534))

(declare-fun m!7913538 () Bool)

(assert (=> b!7240112 m!7913538))

(declare-fun m!7913540 () Bool)

(assert (=> b!7240112 m!7913540))

(assert (=> b!7240112 m!7913460))

(declare-fun m!7913542 () Bool)

(assert (=> b!7240112 m!7913542))

(assert (=> b!7240112 m!7913460))

(declare-fun m!7913544 () Bool)

(assert (=> b!7240113 m!7913544))

(declare-fun m!7913546 () Bool)

(assert (=> b!7240110 m!7913546))

(declare-fun m!7913548 () Bool)

(assert (=> b!7240102 m!7913548))

(declare-fun m!7913550 () Bool)

(assert (=> b!7240109 m!7913550))

(assert (=> b!7240109 m!7913472))

(assert (=> b!7240109 m!7913440))

(assert (=> b!7240109 m!7913440))

(declare-fun m!7913552 () Bool)

(assert (=> b!7240109 m!7913552))

(declare-fun m!7913554 () Bool)

(assert (=> b!7240109 m!7913554))

(push 1)

(assert (not b!7240103))

(assert (not b!7240102))

(assert (not b!7240104))

(assert (not b!7240115))

(assert tp_is_empty!46565)

(assert (not b!7240109))

(assert (not start!703340))

(assert (not b!7240107))

(assert (not b!7240113))

(assert (not b!7240110))

(assert (not b!7240112))

(assert (not b!7240106))

(assert (not b!7240111))

(assert (not b!7240105))

(assert (not b!7240108))

(assert (not b!7240100))

(assert (not b!7240101))

(assert (not b!7240099))

(assert (not b!7240098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2249212 () Bool)

(declare-fun c!1344384 () Bool)

(declare-fun isEmpty!40417 (List!70258) Bool)

(assert (=> d!2249212 (= c!1344384 (isEmpty!40417 (t!384309 s1!1971)))))

(declare-fun e!4340820 () Bool)

(assert (=> d!2249212 (= (matchZipper!3460 lt!2579165 (t!384309 s1!1971)) e!4340820)))

(declare-fun b!7240182 () Bool)

(declare-fun nullableZipper!2844 ((Set Context!14980)) Bool)

(assert (=> b!7240182 (= e!4340820 (nullableZipper!2844 lt!2579165))))

(declare-fun b!7240183 () Bool)

(declare-fun head!14833 (List!70258) C!37374)

(assert (=> b!7240183 (= e!4340820 (matchZipper!3460 (derivationStepZipper!3342 lt!2579165 (head!14833 (t!384309 s1!1971))) (tail!14210 (t!384309 s1!1971))))))

(assert (= (and d!2249212 c!1344384) b!7240182))

(assert (= (and d!2249212 (not c!1344384)) b!7240183))

(declare-fun m!7913676 () Bool)

(assert (=> d!2249212 m!7913676))

(declare-fun m!7913678 () Bool)

(assert (=> b!7240182 m!7913678))

(declare-fun m!7913680 () Bool)

(assert (=> b!7240183 m!7913680))

(assert (=> b!7240183 m!7913680))

(declare-fun m!7913682 () Bool)

(assert (=> b!7240183 m!7913682))

(declare-fun m!7913684 () Bool)

(assert (=> b!7240183 m!7913684))

(assert (=> b!7240183 m!7913682))

(assert (=> b!7240183 m!7913684))

(declare-fun m!7913686 () Bool)

(assert (=> b!7240183 m!7913686))

(assert (=> b!7240100 d!2249212))

(declare-fun bs!1903952 () Bool)

(declare-fun d!2249214 () Bool)

(assert (= bs!1903952 (and d!2249214 b!7240108)))

(declare-fun lambda!441679 () Int)

(assert (=> bs!1903952 (= lambda!441679 lambda!441631)))

(assert (=> d!2249214 true))

(assert (=> d!2249214 (= (derivationStepZipper!3342 lt!2579173 (h!76582 s1!1971)) (flatMap!2754 lt!2579173 lambda!441679))))

(declare-fun bs!1903953 () Bool)

(assert (= bs!1903953 d!2249214))

(declare-fun m!7913688 () Bool)

(assert (=> bs!1903953 m!7913688))

(assert (=> b!7240100 d!2249214))

(declare-fun d!2249216 () Bool)

(declare-fun c!1344387 () Bool)

(assert (=> d!2249216 (= c!1344387 (isEmpty!40417 lt!2579161))))

(declare-fun e!4340821 () Bool)

(assert (=> d!2249216 (= (matchZipper!3460 lt!2579154 lt!2579161) e!4340821)))

(declare-fun b!7240186 () Bool)

(assert (=> b!7240186 (= e!4340821 (nullableZipper!2844 lt!2579154))))

(declare-fun b!7240187 () Bool)

(assert (=> b!7240187 (= e!4340821 (matchZipper!3460 (derivationStepZipper!3342 lt!2579154 (head!14833 lt!2579161)) (tail!14210 lt!2579161)))))

(assert (= (and d!2249216 c!1344387) b!7240186))

(assert (= (and d!2249216 (not c!1344387)) b!7240187))

(declare-fun m!7913690 () Bool)

(assert (=> d!2249216 m!7913690))

(declare-fun m!7913692 () Bool)

(assert (=> b!7240186 m!7913692))

(declare-fun m!7913694 () Bool)

(assert (=> b!7240187 m!7913694))

(assert (=> b!7240187 m!7913694))

(declare-fun m!7913696 () Bool)

(assert (=> b!7240187 m!7913696))

(declare-fun m!7913698 () Bool)

(assert (=> b!7240187 m!7913698))

(assert (=> b!7240187 m!7913696))

(assert (=> b!7240187 m!7913698))

(declare-fun m!7913700 () Bool)

(assert (=> b!7240187 m!7913700))

(assert (=> b!7240110 d!2249216))

(declare-fun d!2249218 () Bool)

(declare-fun lt!2579305 () Bool)

(assert (=> d!2249218 (= lt!2579305 (exists!4244 (toList!11407 lt!2579165) lambda!441630))))

(declare-fun choose!55740 ((Set Context!14980) Int) Bool)

(assert (=> d!2249218 (= lt!2579305 (choose!55740 lt!2579165 lambda!441630))))

(assert (=> d!2249218 (= (exists!4243 lt!2579165 lambda!441630) lt!2579305)))

(declare-fun bs!1903954 () Bool)

(assert (= bs!1903954 d!2249218))

(assert (=> bs!1903954 m!7913514))

(assert (=> bs!1903954 m!7913514))

(declare-fun m!7913702 () Bool)

(assert (=> bs!1903954 m!7913702))

(declare-fun m!7913704 () Bool)

(assert (=> bs!1903954 m!7913704))

(assert (=> b!7240099 d!2249218))

(declare-fun d!2249220 () Bool)

(declare-fun e!4340824 () Bool)

(assert (=> d!2249220 e!4340824))

(declare-fun res!2937169 () Bool)

(assert (=> d!2249220 (=> (not res!2937169) (not e!4340824))))

(declare-fun lt!2579308 () List!70260)

(declare-fun noDuplicate!2951 (List!70260) Bool)

(assert (=> d!2249220 (= res!2937169 (noDuplicate!2951 lt!2579308))))

(declare-fun choose!55741 ((Set Context!14980)) List!70260)

(assert (=> d!2249220 (= lt!2579308 (choose!55741 lt!2579165))))

(assert (=> d!2249220 (= (toList!11407 lt!2579165) lt!2579308)))

(declare-fun b!7240190 () Bool)

(assert (=> b!7240190 (= e!4340824 (= (content!14476 lt!2579308) lt!2579165))))

(assert (= (and d!2249220 res!2937169) b!7240190))

(declare-fun m!7913706 () Bool)

(assert (=> d!2249220 m!7913706))

(declare-fun m!7913708 () Bool)

(assert (=> d!2249220 m!7913708))

(declare-fun m!7913710 () Bool)

(assert (=> b!7240190 m!7913710))

(assert (=> b!7240099 d!2249220))

(declare-fun bs!1903955 () Bool)

(declare-fun d!2249222 () Bool)

(assert (= bs!1903955 (and d!2249222 b!7240099)))

(declare-fun lambda!441682 () Int)

(assert (=> bs!1903955 (= lambda!441682 lambda!441630)))

(declare-fun bs!1903956 () Bool)

(assert (= bs!1903956 (and d!2249222 b!7240108)))

(assert (=> bs!1903956 (= (= (t!384309 s1!1971) lt!2579161) (= lambda!441682 lambda!441632))))

(assert (=> d!2249222 true))

(assert (=> d!2249222 (exists!4244 lt!2579167 lambda!441682)))

(declare-fun lt!2579311 () Unit!163674)

(declare-fun choose!55742 (List!70260 List!70258) Unit!163674)

(assert (=> d!2249222 (= lt!2579311 (choose!55742 lt!2579167 (t!384309 s1!1971)))))

(assert (=> d!2249222 (matchZipper!3460 (content!14476 lt!2579167) (t!384309 s1!1971))))

(assert (=> d!2249222 (= (lemmaZipperMatchesExistsMatchingContext!693 lt!2579167 (t!384309 s1!1971)) lt!2579311)))

(declare-fun bs!1903957 () Bool)

(assert (= bs!1903957 d!2249222))

(declare-fun m!7913712 () Bool)

(assert (=> bs!1903957 m!7913712))

(declare-fun m!7913714 () Bool)

(assert (=> bs!1903957 m!7913714))

(declare-fun m!7913716 () Bool)

(assert (=> bs!1903957 m!7913716))

(assert (=> bs!1903957 m!7913716))

(declare-fun m!7913718 () Bool)

(assert (=> bs!1903957 m!7913718))

(assert (=> b!7240099 d!2249222))

(declare-fun bs!1903958 () Bool)

(declare-fun d!2249224 () Bool)

(assert (= bs!1903958 (and d!2249224 b!7240099)))

(declare-fun lambda!441685 () Int)

(assert (=> bs!1903958 (not (= lambda!441685 lambda!441630))))

(declare-fun bs!1903959 () Bool)

(assert (= bs!1903959 (and d!2249224 b!7240108)))

(assert (=> bs!1903959 (not (= lambda!441685 lambda!441632))))

(declare-fun bs!1903960 () Bool)

(assert (= bs!1903960 (and d!2249224 d!2249222)))

(assert (=> bs!1903960 (not (= lambda!441685 lambda!441682))))

(assert (=> d!2249224 true))

(declare-fun order!28891 () Int)

(declare-fun dynLambda!28624 (Int Int) Int)

(assert (=> d!2249224 (< (dynLambda!28624 order!28891 lambda!441630) (dynLambda!28624 order!28891 lambda!441685))))

(declare-fun forall!17389 (List!70260 Int) Bool)

(assert (=> d!2249224 (= (exists!4244 lt!2579167 lambda!441630) (not (forall!17389 lt!2579167 lambda!441685)))))

(declare-fun bs!1903961 () Bool)

(assert (= bs!1903961 d!2249224))

(declare-fun m!7913720 () Bool)

(assert (=> bs!1903961 m!7913720))

(assert (=> b!7240099 d!2249224))

(declare-fun bs!1903962 () Bool)

(declare-fun d!2249226 () Bool)

(assert (= bs!1903962 (and d!2249226 b!7240108)))

(declare-fun lambda!441686 () Int)

(assert (=> bs!1903962 (= lambda!441686 lambda!441631)))

(declare-fun bs!1903963 () Bool)

(assert (= bs!1903963 (and d!2249226 d!2249214)))

(assert (=> bs!1903963 (= lambda!441686 lambda!441679)))

(assert (=> d!2249226 true))

(assert (=> d!2249226 (= (derivationStepZipper!3342 lt!2579162 (h!76582 s1!1971)) (flatMap!2754 lt!2579162 lambda!441686))))

(declare-fun bs!1903964 () Bool)

(assert (= bs!1903964 d!2249226))

(declare-fun m!7913722 () Bool)

(assert (=> bs!1903964 m!7913722))

(assert (=> b!7240099 d!2249226))

(declare-fun d!2249228 () Bool)

(assert (=> d!2249228 (= (tail!14211 (exprs!7990 ct1!232)) (t!384310 (exprs!7990 ct1!232)))))

(assert (=> b!7240109 d!2249228))

(declare-fun d!2249230 () Bool)

(assert (=> d!2249230 (forall!17387 (++!16400 (exprs!7990 ct1!232) (exprs!7990 ct2!328)) lambda!441629)))

(declare-fun lt!2579314 () Unit!163674)

(declare-fun choose!55743 (List!70259 List!70259 Int) Unit!163674)

(assert (=> d!2249230 (= lt!2579314 (choose!55743 (exprs!7990 ct1!232) (exprs!7990 ct2!328) lambda!441629))))

(assert (=> d!2249230 (forall!17387 (exprs!7990 ct1!232) lambda!441629)))

(assert (=> d!2249230 (= (lemmaConcatPreservesForall!1359 (exprs!7990 ct1!232) (exprs!7990 ct2!328) lambda!441629) lt!2579314)))

(declare-fun bs!1903965 () Bool)

(assert (= bs!1903965 d!2249230))

(assert (=> bs!1903965 m!7913438))

(assert (=> bs!1903965 m!7913438))

(declare-fun m!7913724 () Bool)

(assert (=> bs!1903965 m!7913724))

(declare-fun m!7913726 () Bool)

(assert (=> bs!1903965 m!7913726))

(assert (=> bs!1903965 m!7913496))

(assert (=> b!7240109 d!2249230))

(declare-fun d!2249232 () Bool)

(assert (=> d!2249232 (= (isEmpty!40415 lt!2579146) (is-Nil!70135 lt!2579146))))

(assert (=> b!7240109 d!2249232))

(declare-fun b!7240215 () Bool)

(declare-fun e!4340840 () (Set Context!14980))

(declare-fun call!659350 () (Set Context!14980))

(declare-fun call!659348 () (Set Context!14980))

(assert (=> b!7240215 (= e!4340840 (set.union call!659350 call!659348))))

(declare-fun bm!659340 () Bool)

(declare-fun call!659346 () (Set Context!14980))

(declare-fun call!659345 () (Set Context!14980))

(assert (=> bm!659340 (= call!659346 call!659345)))

(declare-fun b!7240216 () Bool)

(declare-fun e!4340837 () (Set Context!14980))

(assert (=> b!7240216 (= e!4340837 (as set.empty (Set Context!14980)))))

(declare-fun b!7240217 () Bool)

(declare-fun e!4340838 () (Set Context!14980))

(declare-fun e!4340839 () (Set Context!14980))

(assert (=> b!7240217 (= e!4340838 e!4340839)))

(declare-fun c!1344404 () Bool)

(assert (=> b!7240217 (= c!1344404 (is-Concat!27395 (h!76583 (exprs!7990 ct1!232))))))

(declare-fun call!659349 () List!70259)

(declare-fun c!1344402 () Bool)

(declare-fun bm!659341 () Bool)

(assert (=> bm!659341 (= call!659348 (derivationStepZipperDown!2594 (ite c!1344402 (regTwo!37613 (h!76583 (exprs!7990 ct1!232))) (regOne!37612 (h!76583 (exprs!7990 ct1!232)))) (ite c!1344402 lt!2579172 (Context!14981 call!659349)) (h!76582 s1!1971)))))

(declare-fun c!1344403 () Bool)

(declare-fun bm!659342 () Bool)

(declare-fun call!659347 () List!70259)

(assert (=> bm!659342 (= call!659350 (derivationStepZipperDown!2594 (ite c!1344402 (regOne!37613 (h!76583 (exprs!7990 ct1!232))) (ite c!1344403 (regTwo!37612 (h!76583 (exprs!7990 ct1!232))) (ite c!1344404 (regOne!37612 (h!76583 (exprs!7990 ct1!232))) (reg!18879 (h!76583 (exprs!7990 ct1!232)))))) (ite (or c!1344402 c!1344403) lt!2579172 (Context!14981 call!659347)) (h!76582 s1!1971)))))

(declare-fun bm!659343 () Bool)

(assert (=> bm!659343 (= call!659347 call!659349)))

(declare-fun b!7240218 () Bool)

(declare-fun c!1344401 () Bool)

(assert (=> b!7240218 (= c!1344401 (is-Star!18550 (h!76583 (exprs!7990 ct1!232))))))

(assert (=> b!7240218 (= e!4340839 e!4340837)))

(declare-fun bm!659344 () Bool)

(declare-fun $colon$colon!2890 (List!70259 Regex!18550) List!70259)

(assert (=> bm!659344 (= call!659349 ($colon$colon!2890 (exprs!7990 lt!2579172) (ite (or c!1344403 c!1344404) (regTwo!37612 (h!76583 (exprs!7990 ct1!232))) (h!76583 (exprs!7990 ct1!232)))))))

(declare-fun b!7240219 () Bool)

(declare-fun e!4340841 () Bool)

(assert (=> b!7240219 (= c!1344403 e!4340841)))

(declare-fun res!2937172 () Bool)

(assert (=> b!7240219 (=> (not res!2937172) (not e!4340841))))

(assert (=> b!7240219 (= res!2937172 (is-Concat!27395 (h!76583 (exprs!7990 ct1!232))))))

(assert (=> b!7240219 (= e!4340840 e!4340838)))

(declare-fun b!7240220 () Bool)

(assert (=> b!7240220 (= e!4340841 (nullable!7863 (regOne!37612 (h!76583 (exprs!7990 ct1!232)))))))

(declare-fun d!2249234 () Bool)

(declare-fun c!1344400 () Bool)

(assert (=> d!2249234 (= c!1344400 (and (is-ElementMatch!18550 (h!76583 (exprs!7990 ct1!232))) (= (c!1344362 (h!76583 (exprs!7990 ct1!232))) (h!76582 s1!1971))))))

(declare-fun e!4340842 () (Set Context!14980))

(assert (=> d!2249234 (= (derivationStepZipperDown!2594 (h!76583 (exprs!7990 ct1!232)) lt!2579172 (h!76582 s1!1971)) e!4340842)))

(declare-fun b!7240221 () Bool)

(assert (=> b!7240221 (= e!4340838 (set.union call!659348 call!659345))))

(declare-fun b!7240222 () Bool)

(assert (=> b!7240222 (= e!4340839 call!659346)))

(declare-fun b!7240223 () Bool)

(assert (=> b!7240223 (= e!4340837 call!659346)))

(declare-fun b!7240224 () Bool)

(assert (=> b!7240224 (= e!4340842 (set.insert lt!2579172 (as set.empty (Set Context!14980))))))

(declare-fun b!7240225 () Bool)

(assert (=> b!7240225 (= e!4340842 e!4340840)))

(assert (=> b!7240225 (= c!1344402 (is-Union!18550 (h!76583 (exprs!7990 ct1!232))))))

(declare-fun bm!659345 () Bool)

(assert (=> bm!659345 (= call!659345 call!659350)))

(assert (= (and d!2249234 c!1344400) b!7240224))

(assert (= (and d!2249234 (not c!1344400)) b!7240225))

(assert (= (and b!7240225 c!1344402) b!7240215))

(assert (= (and b!7240225 (not c!1344402)) b!7240219))

(assert (= (and b!7240219 res!2937172) b!7240220))

(assert (= (and b!7240219 c!1344403) b!7240221))

(assert (= (and b!7240219 (not c!1344403)) b!7240217))

(assert (= (and b!7240217 c!1344404) b!7240222))

(assert (= (and b!7240217 (not c!1344404)) b!7240218))

(assert (= (and b!7240218 c!1344401) b!7240223))

(assert (= (and b!7240218 (not c!1344401)) b!7240216))

(assert (= (or b!7240222 b!7240223) bm!659343))

(assert (= (or b!7240222 b!7240223) bm!659340))

(assert (= (or b!7240221 bm!659343) bm!659344))

(assert (= (or b!7240221 bm!659340) bm!659345))

(assert (= (or b!7240215 b!7240221) bm!659341))

(assert (= (or b!7240215 bm!659345) bm!659342))

(declare-fun m!7913728 () Bool)

(assert (=> bm!659344 m!7913728))

(declare-fun m!7913730 () Bool)

(assert (=> bm!659341 m!7913730))

(declare-fun m!7913732 () Bool)

(assert (=> b!7240220 m!7913732))

(declare-fun m!7913734 () Bool)

(assert (=> bm!659342 m!7913734))

(declare-fun m!7913736 () Bool)

(assert (=> b!7240224 m!7913736))

(assert (=> b!7240109 d!2249234))

(declare-fun d!2249236 () Bool)

(declare-fun c!1344409 () Bool)

(declare-fun e!4340850 () Bool)

(assert (=> d!2249236 (= c!1344409 e!4340850)))

(declare-fun res!2937175 () Bool)

(assert (=> d!2249236 (=> (not res!2937175) (not e!4340850))))

(assert (=> d!2249236 (= res!2937175 (is-Cons!70135 (exprs!7990 lt!2579174)))))

(declare-fun e!4340849 () (Set Context!14980))

(assert (=> d!2249236 (= (derivationStepZipperUp!2424 lt!2579174 (h!76582 s1!1971)) e!4340849)))

(declare-fun call!659353 () (Set Context!14980))

(declare-fun b!7240236 () Bool)

(assert (=> b!7240236 (= e!4340849 (set.union call!659353 (derivationStepZipperUp!2424 (Context!14981 (t!384310 (exprs!7990 lt!2579174))) (h!76582 s1!1971))))))

(declare-fun b!7240237 () Bool)

(declare-fun e!4340851 () (Set Context!14980))

(assert (=> b!7240237 (= e!4340851 call!659353)))

(declare-fun bm!659348 () Bool)

(assert (=> bm!659348 (= call!659353 (derivationStepZipperDown!2594 (h!76583 (exprs!7990 lt!2579174)) (Context!14981 (t!384310 (exprs!7990 lt!2579174))) (h!76582 s1!1971)))))

(declare-fun b!7240238 () Bool)

(assert (=> b!7240238 (= e!4340849 e!4340851)))

(declare-fun c!1344410 () Bool)

(assert (=> b!7240238 (= c!1344410 (is-Cons!70135 (exprs!7990 lt!2579174)))))

(declare-fun b!7240239 () Bool)

(assert (=> b!7240239 (= e!4340850 (nullable!7863 (h!76583 (exprs!7990 lt!2579174))))))

(declare-fun b!7240240 () Bool)

(assert (=> b!7240240 (= e!4340851 (as set.empty (Set Context!14980)))))

(assert (= (and d!2249236 res!2937175) b!7240239))

(assert (= (and d!2249236 c!1344409) b!7240236))

(assert (= (and d!2249236 (not c!1344409)) b!7240238))

(assert (= (and b!7240238 c!1344410) b!7240237))

(assert (= (and b!7240238 (not c!1344410)) b!7240240))

(assert (= (or b!7240236 b!7240237) bm!659348))

(declare-fun m!7913738 () Bool)

(assert (=> b!7240236 m!7913738))

(declare-fun m!7913740 () Bool)

(assert (=> bm!659348 m!7913740))

(declare-fun m!7913742 () Bool)

(assert (=> b!7240239 m!7913742))

(assert (=> b!7240109 d!2249236))

(declare-fun d!2249238 () Bool)

(declare-fun res!2937180 () Bool)

(declare-fun e!4340856 () Bool)

(assert (=> d!2249238 (=> res!2937180 e!4340856)))

(assert (=> d!2249238 (= res!2937180 (is-Nil!70135 (exprs!7990 ct1!232)))))

(assert (=> d!2249238 (= (forall!17387 (exprs!7990 ct1!232) lambda!441629) e!4340856)))

(declare-fun b!7240245 () Bool)

(declare-fun e!4340857 () Bool)

(assert (=> b!7240245 (= e!4340856 e!4340857)))

(declare-fun res!2937181 () Bool)

(assert (=> b!7240245 (=> (not res!2937181) (not e!4340857))))

(declare-fun dynLambda!28625 (Int Regex!18550) Bool)

(assert (=> b!7240245 (= res!2937181 (dynLambda!28625 lambda!441629 (h!76583 (exprs!7990 ct1!232))))))

(declare-fun b!7240246 () Bool)

(assert (=> b!7240246 (= e!4340857 (forall!17387 (t!384310 (exprs!7990 ct1!232)) lambda!441629))))

(assert (= (and d!2249238 (not res!2937180)) b!7240245))

(assert (= (and b!7240245 res!2937181) b!7240246))

(declare-fun b_lambda!277719 () Bool)

(assert (=> (not b_lambda!277719) (not b!7240245)))

(declare-fun m!7913744 () Bool)

(assert (=> b!7240245 m!7913744))

(declare-fun m!7913746 () Bool)

(assert (=> b!7240246 m!7913746))

(assert (=> b!7240108 d!2249238))

(declare-fun d!2249240 () Bool)

(declare-fun dynLambda!28626 (Int Context!14980) (Set Context!14980))

(assert (=> d!2249240 (= (flatMap!2754 lt!2579162 lambda!441631) (dynLambda!28626 lambda!441631 lt!2579174))))

(declare-fun lt!2579317 () Unit!163674)

(declare-fun choose!55744 ((Set Context!14980) Context!14980 Int) Unit!163674)

(assert (=> d!2249240 (= lt!2579317 (choose!55744 lt!2579162 lt!2579174 lambda!441631))))

(assert (=> d!2249240 (= lt!2579162 (set.insert lt!2579174 (as set.empty (Set Context!14980))))))

(assert (=> d!2249240 (= (lemmaFlatMapOnSingletonSet!2181 lt!2579162 lt!2579174 lambda!441631) lt!2579317)))

(declare-fun b_lambda!277721 () Bool)

(assert (=> (not b_lambda!277721) (not d!2249240)))

(declare-fun bs!1903966 () Bool)

(assert (= bs!1903966 d!2249240))

(assert (=> bs!1903966 m!7913480))

(declare-fun m!7913748 () Bool)

(assert (=> bs!1903966 m!7913748))

(declare-fun m!7913750 () Bool)

(assert (=> bs!1903966 m!7913750))

(assert (=> bs!1903966 m!7913436))

(assert (=> b!7240108 d!2249240))

(declare-fun d!2249242 () Bool)

(declare-fun lt!2579318 () Bool)

(assert (=> d!2249242 (= lt!2579318 (exists!4244 (toList!11407 lt!2579154) lambda!441632))))

(assert (=> d!2249242 (= lt!2579318 (choose!55740 lt!2579154 lambda!441632))))

(assert (=> d!2249242 (= (exists!4243 lt!2579154 lambda!441632) lt!2579318)))

(declare-fun bs!1903967 () Bool)

(assert (= bs!1903967 d!2249242))

(assert (=> bs!1903967 m!7913492))

(assert (=> bs!1903967 m!7913492))

(declare-fun m!7913752 () Bool)

(assert (=> bs!1903967 m!7913752))

(declare-fun m!7913754 () Bool)

(assert (=> bs!1903967 m!7913754))

(assert (=> b!7240108 d!2249242))

(assert (=> b!7240108 d!2249230))

(declare-fun d!2249244 () Bool)

(assert (=> d!2249244 (exists!4243 lt!2579154 lambda!441632)))

(declare-fun lt!2579321 () Unit!163674)

(declare-fun choose!55745 ((Set Context!14980) Context!14980 Int) Unit!163674)

(assert (=> d!2249244 (= lt!2579321 (choose!55745 lt!2579154 lt!2579157 lambda!441632))))

(assert (=> d!2249244 (set.member lt!2579157 lt!2579154)))

(assert (=> d!2249244 (= (lemmaContainsThenExists!214 lt!2579154 lt!2579157 lambda!441632) lt!2579321)))

(declare-fun bs!1903968 () Bool)

(assert (= bs!1903968 d!2249244))

(assert (=> bs!1903968 m!7913454))

(declare-fun m!7913756 () Bool)

(assert (=> bs!1903968 m!7913756))

(assert (=> bs!1903968 m!7913484))

(assert (=> b!7240108 d!2249244))

(declare-fun d!2249246 () Bool)

(assert (=> d!2249246 (= (flatMap!2754 lt!2579173 lambda!441631) (dynLambda!28626 lambda!441631 ct1!232))))

(declare-fun lt!2579322 () Unit!163674)

(assert (=> d!2249246 (= lt!2579322 (choose!55744 lt!2579173 ct1!232 lambda!441631))))

(assert (=> d!2249246 (= lt!2579173 (set.insert ct1!232 (as set.empty (Set Context!14980))))))

(assert (=> d!2249246 (= (lemmaFlatMapOnSingletonSet!2181 lt!2579173 ct1!232 lambda!441631) lt!2579322)))

(declare-fun b_lambda!277723 () Bool)

(assert (=> (not b_lambda!277723) (not d!2249246)))

(declare-fun bs!1903969 () Bool)

(assert (= bs!1903969 d!2249246))

(assert (=> bs!1903969 m!7913458))

(declare-fun m!7913758 () Bool)

(assert (=> bs!1903969 m!7913758))

(declare-fun m!7913760 () Bool)

(assert (=> bs!1903969 m!7913760))

(assert (=> bs!1903969 m!7913448))

(assert (=> b!7240108 d!2249246))

(declare-fun b!7240255 () Bool)

(declare-fun e!4340864 () List!70258)

(assert (=> b!7240255 (= e!4340864 s2!1849)))

(declare-fun b!7240258 () Bool)

(declare-fun e!4340863 () Bool)

(declare-fun lt!2579325 () List!70258)

(assert (=> b!7240258 (= e!4340863 (or (not (= s2!1849 Nil!70134)) (= lt!2579325 s1!1971)))))

(declare-fun d!2249248 () Bool)

(assert (=> d!2249248 e!4340863))

(declare-fun res!2937187 () Bool)

(assert (=> d!2249248 (=> (not res!2937187) (not e!4340863))))

(declare-fun content!14478 (List!70258) (Set C!37374))

(assert (=> d!2249248 (= res!2937187 (= (content!14478 lt!2579325) (set.union (content!14478 s1!1971) (content!14478 s2!1849))))))

(assert (=> d!2249248 (= lt!2579325 e!4340864)))

(declare-fun c!1344413 () Bool)

(assert (=> d!2249248 (= c!1344413 (is-Nil!70134 s1!1971))))

(assert (=> d!2249248 (= (++!16401 s1!1971 s2!1849) lt!2579325)))

(declare-fun b!7240257 () Bool)

(declare-fun res!2937186 () Bool)

(assert (=> b!7240257 (=> (not res!2937186) (not e!4340863))))

(declare-fun size!41618 (List!70258) Int)

(assert (=> b!7240257 (= res!2937186 (= (size!41618 lt!2579325) (+ (size!41618 s1!1971) (size!41618 s2!1849))))))

(declare-fun b!7240256 () Bool)

(assert (=> b!7240256 (= e!4340864 (Cons!70134 (h!76582 s1!1971) (++!16401 (t!384309 s1!1971) s2!1849)))))

(assert (= (and d!2249248 c!1344413) b!7240255))

(assert (= (and d!2249248 (not c!1344413)) b!7240256))

(assert (= (and d!2249248 res!2937187) b!7240257))

(assert (= (and b!7240257 res!2937186) b!7240258))

(declare-fun m!7913762 () Bool)

(assert (=> d!2249248 m!7913762))

(declare-fun m!7913764 () Bool)

(assert (=> d!2249248 m!7913764))

(declare-fun m!7913766 () Bool)

(assert (=> d!2249248 m!7913766))

(declare-fun m!7913768 () Bool)

(assert (=> b!7240257 m!7913768))

(declare-fun m!7913770 () Bool)

(assert (=> b!7240257 m!7913770))

(declare-fun m!7913772 () Bool)

(assert (=> b!7240257 m!7913772))

(assert (=> b!7240256 m!7913542))

(assert (=> b!7240108 d!2249248))

(declare-fun d!2249250 () Bool)

(declare-fun choose!55746 ((Set Context!14980) Int) (Set Context!14980))

(assert (=> d!2249250 (= (flatMap!2754 lt!2579162 lambda!441631) (choose!55746 lt!2579162 lambda!441631))))

(declare-fun bs!1903970 () Bool)

(assert (= bs!1903970 d!2249250))

(declare-fun m!7913774 () Bool)

(assert (=> bs!1903970 m!7913774))

(assert (=> b!7240108 d!2249250))

(declare-fun bs!1903971 () Bool)

(declare-fun d!2249252 () Bool)

(assert (= bs!1903971 (and d!2249252 b!7240099)))

(declare-fun lambda!441689 () Int)

(assert (=> bs!1903971 (= (= lt!2579161 (t!384309 s1!1971)) (= lambda!441689 lambda!441630))))

(declare-fun bs!1903972 () Bool)

(assert (= bs!1903972 (and d!2249252 b!7240108)))

(assert (=> bs!1903972 (= lambda!441689 lambda!441632)))

(declare-fun bs!1903973 () Bool)

(assert (= bs!1903973 (and d!2249252 d!2249222)))

(assert (=> bs!1903973 (= (= lt!2579161 (t!384309 s1!1971)) (= lambda!441689 lambda!441682))))

(declare-fun bs!1903974 () Bool)

(assert (= bs!1903974 (and d!2249252 d!2249224)))

(assert (=> bs!1903974 (not (= lambda!441689 lambda!441685))))

(assert (=> d!2249252 true))

(assert (=> d!2249252 (matchZipper!3460 (content!14476 lt!2579147) lt!2579161)))

(declare-fun lt!2579328 () Unit!163674)

(declare-fun choose!55747 (List!70260 List!70258) Unit!163674)

(assert (=> d!2249252 (= lt!2579328 (choose!55747 lt!2579147 lt!2579161))))

(assert (=> d!2249252 (exists!4244 lt!2579147 lambda!441689)))

(assert (=> d!2249252 (= (lemmaExistsMatchingContextThenMatchingString!79 lt!2579147 lt!2579161) lt!2579328)))

(declare-fun bs!1903975 () Bool)

(assert (= bs!1903975 d!2249252))

(assert (=> bs!1903975 m!7913470))

(assert (=> bs!1903975 m!7913470))

(assert (=> bs!1903975 m!7913490))

(declare-fun m!7913776 () Bool)

(assert (=> bs!1903975 m!7913776))

(declare-fun m!7913778 () Bool)

(assert (=> bs!1903975 m!7913778))

(assert (=> b!7240108 d!2249252))

(declare-fun d!2249254 () Bool)

(declare-fun e!4340865 () Bool)

(assert (=> d!2249254 e!4340865))

(declare-fun res!2937188 () Bool)

(assert (=> d!2249254 (=> (not res!2937188) (not e!4340865))))

(declare-fun lt!2579329 () List!70260)

(assert (=> d!2249254 (= res!2937188 (noDuplicate!2951 lt!2579329))))

(assert (=> d!2249254 (= lt!2579329 (choose!55741 lt!2579154))))

(assert (=> d!2249254 (= (toList!11407 lt!2579154) lt!2579329)))

(declare-fun b!7240259 () Bool)

(assert (=> b!7240259 (= e!4340865 (= (content!14476 lt!2579329) lt!2579154))))

(assert (= (and d!2249254 res!2937188) b!7240259))

(declare-fun m!7913780 () Bool)

(assert (=> d!2249254 m!7913780))

(declare-fun m!7913782 () Bool)

(assert (=> d!2249254 m!7913782))

(declare-fun m!7913784 () Bool)

(assert (=> b!7240259 m!7913784))

(assert (=> b!7240108 d!2249254))

(declare-fun bs!1903976 () Bool)

(declare-fun d!2249256 () Bool)

(assert (= bs!1903976 (and d!2249256 b!7240106)))

(declare-fun lambda!441694 () Int)

(assert (=> bs!1903976 (= lambda!441694 lambda!441629)))

(assert (=> d!2249256 (set.member (Context!14981 (++!16400 (exprs!7990 lt!2579151) (exprs!7990 ct2!328))) (derivationStepZipperUp!2424 (Context!14981 (++!16400 (exprs!7990 ct1!232) (exprs!7990 ct2!328))) (h!76582 s1!1971)))))

(declare-fun lt!2579338 () Unit!163674)

(assert (=> d!2249256 (= lt!2579338 (lemmaConcatPreservesForall!1359 (exprs!7990 ct1!232) (exprs!7990 ct2!328) lambda!441694))))

(declare-fun lt!2579337 () Unit!163674)

(assert (=> d!2249256 (= lt!2579337 (lemmaConcatPreservesForall!1359 (exprs!7990 lt!2579151) (exprs!7990 ct2!328) lambda!441694))))

(declare-fun lt!2579336 () Unit!163674)

(declare-fun choose!55748 (Context!14980 Context!14980 Context!14980 C!37374) Unit!163674)

(assert (=> d!2249256 (= lt!2579336 (choose!55748 ct1!232 ct2!328 lt!2579151 (h!76582 s1!1971)))))

(assert (=> d!2249256 (set.member lt!2579151 (derivationStepZipperUp!2424 ct1!232 (h!76582 s1!1971)))))

(assert (=> d!2249256 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!15 ct1!232 ct2!328 lt!2579151 (h!76582 s1!1971)) lt!2579336)))

(declare-fun bs!1903977 () Bool)

(assert (= bs!1903977 d!2249256))

(declare-fun m!7913786 () Bool)

(assert (=> bs!1903977 m!7913786))

(declare-fun m!7913788 () Bool)

(assert (=> bs!1903977 m!7913788))

(declare-fun m!7913790 () Bool)

(assert (=> bs!1903977 m!7913790))

(declare-fun m!7913792 () Bool)

(assert (=> bs!1903977 m!7913792))

(assert (=> bs!1903977 m!7913438))

(assert (=> bs!1903977 m!7913466))

(assert (=> bs!1903977 m!7913530))

(declare-fun m!7913794 () Bool)

(assert (=> bs!1903977 m!7913794))

(declare-fun m!7913796 () Bool)

(assert (=> bs!1903977 m!7913796))

(assert (=> b!7240108 d!2249256))

(declare-fun d!2249258 () Bool)

(assert (=> d!2249258 (= (flatMap!2754 lt!2579173 lambda!441631) (choose!55746 lt!2579173 lambda!441631))))

(declare-fun bs!1903978 () Bool)

(assert (= bs!1903978 d!2249258))

(declare-fun m!7913798 () Bool)

(assert (=> bs!1903978 m!7913798))

(assert (=> b!7240108 d!2249258))

(assert (=> b!7240108 d!2249236))

(declare-fun d!2249260 () Bool)

(assert (=> d!2249260 (= (tail!14211 lt!2579146) (t!384310 lt!2579146))))

(assert (=> b!7240108 d!2249260))

(declare-fun d!2249262 () Bool)

(assert (=> d!2249262 (forall!17387 (++!16400 (exprs!7990 lt!2579151) (exprs!7990 ct2!328)) lambda!441629)))

(declare-fun lt!2579339 () Unit!163674)

(assert (=> d!2249262 (= lt!2579339 (choose!55743 (exprs!7990 lt!2579151) (exprs!7990 ct2!328) lambda!441629))))

(assert (=> d!2249262 (forall!17387 (exprs!7990 lt!2579151) lambda!441629)))

(assert (=> d!2249262 (= (lemmaConcatPreservesForall!1359 (exprs!7990 lt!2579151) (exprs!7990 ct2!328) lambda!441629) lt!2579339)))

(declare-fun bs!1903979 () Bool)

(assert (= bs!1903979 d!2249262))

(assert (=> bs!1903979 m!7913530))

(assert (=> bs!1903979 m!7913530))

(declare-fun m!7913800 () Bool)

(assert (=> bs!1903979 m!7913800))

(declare-fun m!7913802 () Bool)

(assert (=> bs!1903979 m!7913802))

(declare-fun m!7913804 () Bool)

(assert (=> bs!1903979 m!7913804))

(assert (=> b!7240108 d!2249262))

(declare-fun d!2249264 () Bool)

(declare-fun nullableFct!3081 (Regex!18550) Bool)

(assert (=> d!2249264 (= (nullable!7863 (h!76583 (exprs!7990 ct1!232))) (nullableFct!3081 (h!76583 (exprs!7990 ct1!232))))))

(declare-fun bs!1903980 () Bool)

(assert (= bs!1903980 d!2249264))

(declare-fun m!7913806 () Bool)

(assert (=> bs!1903980 m!7913806))

(assert (=> b!7240108 d!2249264))

(declare-fun d!2249266 () Bool)

(declare-fun c!1344417 () Bool)

(assert (=> d!2249266 (= c!1344417 (isEmpty!40417 lt!2579161))))

(declare-fun e!4340866 () Bool)

(assert (=> d!2249266 (= (matchZipper!3460 (content!14476 lt!2579147) lt!2579161) e!4340866)))

(declare-fun b!7240260 () Bool)

(assert (=> b!7240260 (= e!4340866 (nullableZipper!2844 (content!14476 lt!2579147)))))

(declare-fun b!7240261 () Bool)

(assert (=> b!7240261 (= e!4340866 (matchZipper!3460 (derivationStepZipper!3342 (content!14476 lt!2579147) (head!14833 lt!2579161)) (tail!14210 lt!2579161)))))

(assert (= (and d!2249266 c!1344417) b!7240260))

(assert (= (and d!2249266 (not c!1344417)) b!7240261))

(assert (=> d!2249266 m!7913690))

(assert (=> b!7240260 m!7913470))

(declare-fun m!7913808 () Bool)

(assert (=> b!7240260 m!7913808))

(assert (=> b!7240261 m!7913694))

(assert (=> b!7240261 m!7913470))

(assert (=> b!7240261 m!7913694))

(declare-fun m!7913810 () Bool)

(assert (=> b!7240261 m!7913810))

(assert (=> b!7240261 m!7913698))

(assert (=> b!7240261 m!7913810))

(assert (=> b!7240261 m!7913698))

(declare-fun m!7913812 () Bool)

(assert (=> b!7240261 m!7913812))

(assert (=> b!7240108 d!2249266))

(declare-fun b!7240262 () Bool)

(declare-fun e!4340870 () (Set Context!14980))

(declare-fun call!659359 () (Set Context!14980))

(declare-fun call!659357 () (Set Context!14980))

(assert (=> b!7240262 (= e!4340870 (set.union call!659359 call!659357))))

(declare-fun bm!659349 () Bool)

(declare-fun call!659355 () (Set Context!14980))

(declare-fun call!659354 () (Set Context!14980))

(assert (=> bm!659349 (= call!659355 call!659354)))

(declare-fun b!7240263 () Bool)

(declare-fun e!4340867 () (Set Context!14980))

(assert (=> b!7240263 (= e!4340867 (as set.empty (Set Context!14980)))))

(declare-fun b!7240264 () Bool)

(declare-fun e!4340868 () (Set Context!14980))

(declare-fun e!4340869 () (Set Context!14980))

(assert (=> b!7240264 (= e!4340868 e!4340869)))

(declare-fun c!1344422 () Bool)

(assert (=> b!7240264 (= c!1344422 (is-Concat!27395 (h!76583 (exprs!7990 ct1!232))))))

(declare-fun c!1344420 () Bool)

(declare-fun bm!659350 () Bool)

(declare-fun call!659358 () List!70259)

(assert (=> bm!659350 (= call!659357 (derivationStepZipperDown!2594 (ite c!1344420 (regTwo!37613 (h!76583 (exprs!7990 ct1!232))) (regOne!37612 (h!76583 (exprs!7990 ct1!232)))) (ite c!1344420 lt!2579155 (Context!14981 call!659358)) (h!76582 s1!1971)))))

(declare-fun call!659356 () List!70259)

(declare-fun bm!659351 () Bool)

(declare-fun c!1344421 () Bool)

(assert (=> bm!659351 (= call!659359 (derivationStepZipperDown!2594 (ite c!1344420 (regOne!37613 (h!76583 (exprs!7990 ct1!232))) (ite c!1344421 (regTwo!37612 (h!76583 (exprs!7990 ct1!232))) (ite c!1344422 (regOne!37612 (h!76583 (exprs!7990 ct1!232))) (reg!18879 (h!76583 (exprs!7990 ct1!232)))))) (ite (or c!1344420 c!1344421) lt!2579155 (Context!14981 call!659356)) (h!76582 s1!1971)))))

(declare-fun bm!659352 () Bool)

(assert (=> bm!659352 (= call!659356 call!659358)))

(declare-fun b!7240265 () Bool)

(declare-fun c!1344419 () Bool)

(assert (=> b!7240265 (= c!1344419 (is-Star!18550 (h!76583 (exprs!7990 ct1!232))))))

(assert (=> b!7240265 (= e!4340869 e!4340867)))

(declare-fun bm!659353 () Bool)

(assert (=> bm!659353 (= call!659358 ($colon$colon!2890 (exprs!7990 lt!2579155) (ite (or c!1344421 c!1344422) (regTwo!37612 (h!76583 (exprs!7990 ct1!232))) (h!76583 (exprs!7990 ct1!232)))))))

(declare-fun b!7240266 () Bool)

(declare-fun e!4340871 () Bool)

(assert (=> b!7240266 (= c!1344421 e!4340871)))

(declare-fun res!2937189 () Bool)

(assert (=> b!7240266 (=> (not res!2937189) (not e!4340871))))

(assert (=> b!7240266 (= res!2937189 (is-Concat!27395 (h!76583 (exprs!7990 ct1!232))))))

(assert (=> b!7240266 (= e!4340870 e!4340868)))

(declare-fun b!7240267 () Bool)

(assert (=> b!7240267 (= e!4340871 (nullable!7863 (regOne!37612 (h!76583 (exprs!7990 ct1!232)))))))

(declare-fun d!2249268 () Bool)

(declare-fun c!1344418 () Bool)

(assert (=> d!2249268 (= c!1344418 (and (is-ElementMatch!18550 (h!76583 (exprs!7990 ct1!232))) (= (c!1344362 (h!76583 (exprs!7990 ct1!232))) (h!76582 s1!1971))))))

(declare-fun e!4340872 () (Set Context!14980))

(assert (=> d!2249268 (= (derivationStepZipperDown!2594 (h!76583 (exprs!7990 ct1!232)) lt!2579155 (h!76582 s1!1971)) e!4340872)))

(declare-fun b!7240268 () Bool)

(assert (=> b!7240268 (= e!4340868 (set.union call!659357 call!659354))))

(declare-fun b!7240269 () Bool)

(assert (=> b!7240269 (= e!4340869 call!659355)))

(declare-fun b!7240270 () Bool)

(assert (=> b!7240270 (= e!4340867 call!659355)))

(declare-fun b!7240271 () Bool)

(assert (=> b!7240271 (= e!4340872 (set.insert lt!2579155 (as set.empty (Set Context!14980))))))

(declare-fun b!7240272 () Bool)

(assert (=> b!7240272 (= e!4340872 e!4340870)))

(assert (=> b!7240272 (= c!1344420 (is-Union!18550 (h!76583 (exprs!7990 ct1!232))))))

(declare-fun bm!659354 () Bool)

(assert (=> bm!659354 (= call!659354 call!659359)))

(assert (= (and d!2249268 c!1344418) b!7240271))

(assert (= (and d!2249268 (not c!1344418)) b!7240272))

(assert (= (and b!7240272 c!1344420) b!7240262))

(assert (= (and b!7240272 (not c!1344420)) b!7240266))

(assert (= (and b!7240266 res!2937189) b!7240267))

(assert (= (and b!7240266 c!1344421) b!7240268))

(assert (= (and b!7240266 (not c!1344421)) b!7240264))

(assert (= (and b!7240264 c!1344422) b!7240269))

(assert (= (and b!7240264 (not c!1344422)) b!7240265))

(assert (= (and b!7240265 c!1344419) b!7240270))

(assert (= (and b!7240265 (not c!1344419)) b!7240263))

(assert (= (or b!7240269 b!7240270) bm!659352))

(assert (= (or b!7240269 b!7240270) bm!659349))

(assert (= (or b!7240268 bm!659352) bm!659353))

(assert (= (or b!7240268 bm!659349) bm!659354))

(assert (= (or b!7240262 b!7240268) bm!659350))

(assert (= (or b!7240262 bm!659354) bm!659351))

(declare-fun m!7913814 () Bool)

(assert (=> bm!659353 m!7913814))

(declare-fun m!7913816 () Bool)

(assert (=> bm!659350 m!7913816))

(assert (=> b!7240267 m!7913732))

(declare-fun m!7913818 () Bool)

(assert (=> bm!659351 m!7913818))

(declare-fun m!7913820 () Bool)

(assert (=> b!7240271 m!7913820))

(assert (=> b!7240108 d!2249268))

(declare-fun d!2249270 () Bool)

(declare-fun c!1344423 () Bool)

(declare-fun e!4340874 () Bool)

(assert (=> d!2249270 (= c!1344423 e!4340874)))

(declare-fun res!2937190 () Bool)

(assert (=> d!2249270 (=> (not res!2937190) (not e!4340874))))

(assert (=> d!2249270 (= res!2937190 (is-Cons!70135 (exprs!7990 ct1!232)))))

(declare-fun e!4340873 () (Set Context!14980))

(assert (=> d!2249270 (= (derivationStepZipperUp!2424 ct1!232 (h!76582 s1!1971)) e!4340873)))

(declare-fun b!7240273 () Bool)

(declare-fun call!659360 () (Set Context!14980))

(assert (=> b!7240273 (= e!4340873 (set.union call!659360 (derivationStepZipperUp!2424 (Context!14981 (t!384310 (exprs!7990 ct1!232))) (h!76582 s1!1971))))))

(declare-fun b!7240274 () Bool)

(declare-fun e!4340875 () (Set Context!14980))

(assert (=> b!7240274 (= e!4340875 call!659360)))

(declare-fun bm!659355 () Bool)

(assert (=> bm!659355 (= call!659360 (derivationStepZipperDown!2594 (h!76583 (exprs!7990 ct1!232)) (Context!14981 (t!384310 (exprs!7990 ct1!232))) (h!76582 s1!1971)))))

(declare-fun b!7240275 () Bool)

(assert (=> b!7240275 (= e!4340873 e!4340875)))

(declare-fun c!1344424 () Bool)

(assert (=> b!7240275 (= c!1344424 (is-Cons!70135 (exprs!7990 ct1!232)))))

(declare-fun b!7240276 () Bool)

(assert (=> b!7240276 (= e!4340874 (nullable!7863 (h!76583 (exprs!7990 ct1!232))))))

(declare-fun b!7240277 () Bool)

(assert (=> b!7240277 (= e!4340875 (as set.empty (Set Context!14980)))))

(assert (= (and d!2249270 res!2937190) b!7240276))

(assert (= (and d!2249270 c!1344423) b!7240273))

(assert (= (and d!2249270 (not c!1344423)) b!7240275))

(assert (= (and b!7240275 c!1344424) b!7240274))

(assert (= (and b!7240275 (not c!1344424)) b!7240277))

(assert (= (or b!7240273 b!7240274) bm!659355))

(declare-fun m!7913822 () Bool)

(assert (=> b!7240273 m!7913822))

(declare-fun m!7913824 () Bool)

(assert (=> bm!659355 m!7913824))

(assert (=> b!7240276 m!7913482))

(assert (=> b!7240108 d!2249270))

(declare-fun d!2249272 () Bool)

(declare-fun c!1344427 () Bool)

(assert (=> d!2249272 (= c!1344427 (is-Nil!70136 lt!2579147))))

(declare-fun e!4340878 () (Set Context!14980))

(assert (=> d!2249272 (= (content!14476 lt!2579147) e!4340878)))

(declare-fun b!7240282 () Bool)

(assert (=> b!7240282 (= e!4340878 (as set.empty (Set Context!14980)))))

(declare-fun b!7240283 () Bool)

(assert (=> b!7240283 (= e!4340878 (set.union (set.insert (h!76584 lt!2579147) (as set.empty (Set Context!14980))) (content!14476 (t!384311 lt!2579147))))))

(assert (= (and d!2249272 c!1344427) b!7240282))

(assert (= (and d!2249272 (not c!1344427)) b!7240283))

(declare-fun m!7913826 () Bool)

(assert (=> b!7240283 m!7913826))

(declare-fun m!7913828 () Bool)

(assert (=> b!7240283 m!7913828))

(assert (=> b!7240108 d!2249272))

(declare-fun d!2249274 () Bool)

(assert (=> d!2249274 (= (tail!14210 (++!16401 s1!1971 s2!1849)) (t!384309 (++!16401 s1!1971 s2!1849)))))

(assert (=> b!7240108 d!2249274))

(declare-fun b!7240293 () Bool)

(declare-fun e!4340884 () List!70259)

(assert (=> b!7240293 (= e!4340884 (Cons!70135 (h!76583 (exprs!7990 ct1!232)) (++!16400 (t!384310 (exprs!7990 ct1!232)) (exprs!7990 ct2!328))))))

(declare-fun d!2249276 () Bool)

(declare-fun e!4340883 () Bool)

(assert (=> d!2249276 e!4340883))

(declare-fun res!2937195 () Bool)

(assert (=> d!2249276 (=> (not res!2937195) (not e!4340883))))

(declare-fun lt!2579342 () List!70259)

(declare-fun content!14479 (List!70259) (Set Regex!18550))

(assert (=> d!2249276 (= res!2937195 (= (content!14479 lt!2579342) (set.union (content!14479 (exprs!7990 ct1!232)) (content!14479 (exprs!7990 ct2!328)))))))

(assert (=> d!2249276 (= lt!2579342 e!4340884)))

(declare-fun c!1344430 () Bool)

(assert (=> d!2249276 (= c!1344430 (is-Nil!70135 (exprs!7990 ct1!232)))))

(assert (=> d!2249276 (= (++!16400 (exprs!7990 ct1!232) (exprs!7990 ct2!328)) lt!2579342)))

(declare-fun b!7240292 () Bool)

(assert (=> b!7240292 (= e!4340884 (exprs!7990 ct2!328))))

(declare-fun b!7240294 () Bool)

(declare-fun res!2937196 () Bool)

(assert (=> b!7240294 (=> (not res!2937196) (not e!4340883))))

(declare-fun size!41619 (List!70259) Int)

(assert (=> b!7240294 (= res!2937196 (= (size!41619 lt!2579342) (+ (size!41619 (exprs!7990 ct1!232)) (size!41619 (exprs!7990 ct2!328)))))))

(declare-fun b!7240295 () Bool)

(assert (=> b!7240295 (= e!4340883 (or (not (= (exprs!7990 ct2!328) Nil!70135)) (= lt!2579342 (exprs!7990 ct1!232))))))

(assert (= (and d!2249276 c!1344430) b!7240292))

(assert (= (and d!2249276 (not c!1344430)) b!7240293))

(assert (= (and d!2249276 res!2937195) b!7240294))

(assert (= (and b!7240294 res!2937196) b!7240295))

(declare-fun m!7913830 () Bool)

(assert (=> b!7240293 m!7913830))

(declare-fun m!7913832 () Bool)

(assert (=> d!2249276 m!7913832))

(declare-fun m!7913834 () Bool)

(assert (=> d!2249276 m!7913834))

(declare-fun m!7913836 () Bool)

(assert (=> d!2249276 m!7913836))

(declare-fun m!7913838 () Bool)

(assert (=> b!7240294 m!7913838))

(declare-fun m!7913840 () Bool)

(assert (=> b!7240294 m!7913840))

(declare-fun m!7913842 () Bool)

(assert (=> b!7240294 m!7913842))

(assert (=> b!7240106 d!2249276))

(assert (=> b!7240106 d!2249230))

(declare-fun d!2249278 () Bool)

(declare-fun c!1344431 () Bool)

(assert (=> d!2249278 (= c!1344431 (isEmpty!40417 s1!1971))))

(declare-fun e!4340885 () Bool)

(assert (=> d!2249278 (= (matchZipper!3460 lt!2579173 s1!1971) e!4340885)))

(declare-fun b!7240296 () Bool)

(assert (=> b!7240296 (= e!4340885 (nullableZipper!2844 lt!2579173))))

(declare-fun b!7240297 () Bool)

(assert (=> b!7240297 (= e!4340885 (matchZipper!3460 (derivationStepZipper!3342 lt!2579173 (head!14833 s1!1971)) (tail!14210 s1!1971)))))

(assert (= (and d!2249278 c!1344431) b!7240296))

(assert (= (and d!2249278 (not c!1344431)) b!7240297))

(declare-fun m!7913844 () Bool)

(assert (=> d!2249278 m!7913844))

(declare-fun m!7913846 () Bool)

(assert (=> b!7240296 m!7913846))

(declare-fun m!7913848 () Bool)

(assert (=> b!7240297 m!7913848))

(assert (=> b!7240297 m!7913848))

(declare-fun m!7913850 () Bool)

(assert (=> b!7240297 m!7913850))

(declare-fun m!7913852 () Bool)

(assert (=> b!7240297 m!7913852))

(assert (=> b!7240297 m!7913850))

(assert (=> b!7240297 m!7913852))

(declare-fun m!7913854 () Bool)

(assert (=> b!7240297 m!7913854))

(assert (=> start!703340 d!2249278))

(declare-fun bs!1903981 () Bool)

(declare-fun d!2249280 () Bool)

(assert (= bs!1903981 (and d!2249280 b!7240106)))

(declare-fun lambda!441697 () Int)

(assert (=> bs!1903981 (= lambda!441697 lambda!441629)))

(declare-fun bs!1903982 () Bool)

(assert (= bs!1903982 (and d!2249280 d!2249256)))

(assert (=> bs!1903982 (= lambda!441697 lambda!441694)))

(assert (=> d!2249280 (= (inv!89386 ct1!232) (forall!17387 (exprs!7990 ct1!232) lambda!441697))))

(declare-fun bs!1903983 () Bool)

(assert (= bs!1903983 d!2249280))

(declare-fun m!7913856 () Bool)

(assert (=> bs!1903983 m!7913856))

(assert (=> start!703340 d!2249280))

(declare-fun bs!1903984 () Bool)

(declare-fun d!2249282 () Bool)

(assert (= bs!1903984 (and d!2249282 b!7240106)))

(declare-fun lambda!441698 () Int)

(assert (=> bs!1903984 (= lambda!441698 lambda!441629)))

(declare-fun bs!1903985 () Bool)

(assert (= bs!1903985 (and d!2249282 d!2249256)))

(assert (=> bs!1903985 (= lambda!441698 lambda!441694)))

(declare-fun bs!1903986 () Bool)

(assert (= bs!1903986 (and d!2249282 d!2249280)))

(assert (=> bs!1903986 (= lambda!441698 lambda!441697)))

(assert (=> d!2249282 (= (inv!89386 ct2!328) (forall!17387 (exprs!7990 ct2!328) lambda!441698))))

(declare-fun bs!1903987 () Bool)

(assert (= bs!1903987 d!2249282))

(declare-fun m!7913858 () Bool)

(assert (=> bs!1903987 m!7913858))

(assert (=> start!703340 d!2249282))

(declare-fun d!2249284 () Bool)

(declare-fun c!1344432 () Bool)

(assert (=> d!2249284 (= c!1344432 (isEmpty!40417 s2!1849))))

(declare-fun e!4340886 () Bool)

(assert (=> d!2249284 (= (matchZipper!3460 (set.insert ct2!328 (as set.empty (Set Context!14980))) s2!1849) e!4340886)))

(declare-fun b!7240298 () Bool)

(assert (=> b!7240298 (= e!4340886 (nullableZipper!2844 (set.insert ct2!328 (as set.empty (Set Context!14980)))))))

(declare-fun b!7240299 () Bool)

(assert (=> b!7240299 (= e!4340886 (matchZipper!3460 (derivationStepZipper!3342 (set.insert ct2!328 (as set.empty (Set Context!14980))) (head!14833 s2!1849)) (tail!14210 s2!1849)))))

(assert (= (and d!2249284 c!1344432) b!7240298))

(assert (= (and d!2249284 (not c!1344432)) b!7240299))

(declare-fun m!7913860 () Bool)

(assert (=> d!2249284 m!7913860))

(assert (=> b!7240298 m!7913442))

(declare-fun m!7913862 () Bool)

(assert (=> b!7240298 m!7913862))

(declare-fun m!7913864 () Bool)

(assert (=> b!7240299 m!7913864))

(assert (=> b!7240299 m!7913442))

(assert (=> b!7240299 m!7913864))

(declare-fun m!7913866 () Bool)

(assert (=> b!7240299 m!7913866))

(declare-fun m!7913868 () Bool)

(assert (=> b!7240299 m!7913868))

(assert (=> b!7240299 m!7913866))

(assert (=> b!7240299 m!7913868))

(declare-fun m!7913870 () Bool)

(assert (=> b!7240299 m!7913870))

(assert (=> b!7240105 d!2249284))

(assert (=> b!7240115 d!2249230))

(declare-fun d!2249286 () Bool)

(declare-fun c!1344433 () Bool)

(assert (=> d!2249286 (= c!1344433 (isEmpty!40417 (t!384309 s1!1971)))))

(declare-fun e!4340887 () Bool)

(assert (=> d!2249286 (= (matchZipper!3460 (set.union lt!2579143 lt!2579169) (t!384309 s1!1971)) e!4340887)))

(declare-fun b!7240300 () Bool)

(assert (=> b!7240300 (= e!4340887 (nullableZipper!2844 (set.union lt!2579143 lt!2579169)))))

(declare-fun b!7240301 () Bool)

(assert (=> b!7240301 (= e!4340887 (matchZipper!3460 (derivationStepZipper!3342 (set.union lt!2579143 lt!2579169) (head!14833 (t!384309 s1!1971))) (tail!14210 (t!384309 s1!1971))))))

(assert (= (and d!2249286 c!1344433) b!7240300))

(assert (= (and d!2249286 (not c!1344433)) b!7240301))

(assert (=> d!2249286 m!7913676))

(declare-fun m!7913872 () Bool)

(assert (=> b!7240300 m!7913872))

(assert (=> b!7240301 m!7913680))

(assert (=> b!7240301 m!7913680))

(declare-fun m!7913874 () Bool)

(assert (=> b!7240301 m!7913874))

(assert (=> b!7240301 m!7913684))

(assert (=> b!7240301 m!7913874))

(assert (=> b!7240301 m!7913684))

(declare-fun m!7913876 () Bool)

(assert (=> b!7240301 m!7913876))

(assert (=> b!7240115 d!2249286))

(declare-fun d!2249288 () Bool)

(declare-fun c!1344434 () Bool)

(declare-fun e!4340889 () Bool)

(assert (=> d!2249288 (= c!1344434 e!4340889)))

(declare-fun res!2937197 () Bool)

(assert (=> d!2249288 (=> (not res!2937197) (not e!4340889))))

(assert (=> d!2249288 (= res!2937197 (is-Cons!70135 (exprs!7990 lt!2579155)))))

(declare-fun e!4340888 () (Set Context!14980))

(assert (=> d!2249288 (= (derivationStepZipperUp!2424 lt!2579155 (h!76582 s1!1971)) e!4340888)))

(declare-fun call!659361 () (Set Context!14980))

(declare-fun b!7240302 () Bool)

(assert (=> b!7240302 (= e!4340888 (set.union call!659361 (derivationStepZipperUp!2424 (Context!14981 (t!384310 (exprs!7990 lt!2579155))) (h!76582 s1!1971))))))

(declare-fun b!7240303 () Bool)

(declare-fun e!4340890 () (Set Context!14980))

(assert (=> b!7240303 (= e!4340890 call!659361)))

(declare-fun bm!659356 () Bool)

(assert (=> bm!659356 (= call!659361 (derivationStepZipperDown!2594 (h!76583 (exprs!7990 lt!2579155)) (Context!14981 (t!384310 (exprs!7990 lt!2579155))) (h!76582 s1!1971)))))

(declare-fun b!7240304 () Bool)

(assert (=> b!7240304 (= e!4340888 e!4340890)))

(declare-fun c!1344435 () Bool)

(assert (=> b!7240304 (= c!1344435 (is-Cons!70135 (exprs!7990 lt!2579155)))))

(declare-fun b!7240305 () Bool)

(assert (=> b!7240305 (= e!4340889 (nullable!7863 (h!76583 (exprs!7990 lt!2579155))))))

(declare-fun b!7240306 () Bool)

(assert (=> b!7240306 (= e!4340890 (as set.empty (Set Context!14980)))))

(assert (= (and d!2249288 res!2937197) b!7240305))

(assert (= (and d!2249288 c!1344434) b!7240302))

(assert (= (and d!2249288 (not c!1344434)) b!7240304))

(assert (= (and b!7240304 c!1344435) b!7240303))

(assert (= (and b!7240304 (not c!1344435)) b!7240306))

(assert (= (or b!7240302 b!7240303) bm!659356))

(declare-fun m!7913878 () Bool)

(assert (=> b!7240302 m!7913878))

(declare-fun m!7913880 () Bool)

(assert (=> bm!659356 m!7913880))

(declare-fun m!7913882 () Bool)

(assert (=> b!7240305 m!7913882))

(assert (=> b!7240115 d!2249288))

(declare-fun d!2249290 () Bool)

(declare-fun c!1344436 () Bool)

(assert (=> d!2249290 (= c!1344436 (isEmpty!40417 (t!384309 s1!1971)))))

(declare-fun e!4340891 () Bool)

(assert (=> d!2249290 (= (matchZipper!3460 lt!2579143 (t!384309 s1!1971)) e!4340891)))

(declare-fun b!7240307 () Bool)

(assert (=> b!7240307 (= e!4340891 (nullableZipper!2844 lt!2579143))))

(declare-fun b!7240308 () Bool)

(assert (=> b!7240308 (= e!4340891 (matchZipper!3460 (derivationStepZipper!3342 lt!2579143 (head!14833 (t!384309 s1!1971))) (tail!14210 (t!384309 s1!1971))))))

(assert (= (and d!2249290 c!1344436) b!7240307))

(assert (= (and d!2249290 (not c!1344436)) b!7240308))

(assert (=> d!2249290 m!7913676))

(declare-fun m!7913884 () Bool)

(assert (=> b!7240307 m!7913884))

(assert (=> b!7240308 m!7913680))

(assert (=> b!7240308 m!7913680))

(declare-fun m!7913886 () Bool)

(assert (=> b!7240308 m!7913886))

(assert (=> b!7240308 m!7913684))

(assert (=> b!7240308 m!7913886))

(assert (=> b!7240308 m!7913684))

(declare-fun m!7913888 () Bool)

(assert (=> b!7240308 m!7913888))

(assert (=> b!7240115 d!2249290))

(declare-fun d!2249292 () Bool)

(declare-fun e!4340894 () Bool)

(assert (=> d!2249292 (= (matchZipper!3460 (set.union lt!2579143 lt!2579169) (t!384309 s1!1971)) e!4340894)))

(declare-fun res!2937200 () Bool)

(assert (=> d!2249292 (=> res!2937200 e!4340894)))

(assert (=> d!2249292 (= res!2937200 (matchZipper!3460 lt!2579143 (t!384309 s1!1971)))))

(declare-fun lt!2579345 () Unit!163674)

(declare-fun choose!55749 ((Set Context!14980) (Set Context!14980) List!70258) Unit!163674)

(assert (=> d!2249292 (= lt!2579345 (choose!55749 lt!2579143 lt!2579169 (t!384309 s1!1971)))))

(assert (=> d!2249292 (= (lemmaZipperConcatMatchesSameAsBothZippers!1697 lt!2579143 lt!2579169 (t!384309 s1!1971)) lt!2579345)))

(declare-fun b!7240311 () Bool)

(assert (=> b!7240311 (= e!4340894 (matchZipper!3460 lt!2579169 (t!384309 s1!1971)))))

(assert (= (and d!2249292 (not res!2937200)) b!7240311))

(assert (=> d!2249292 m!7913506))

(assert (=> d!2249292 m!7913500))

(declare-fun m!7913890 () Bool)

(assert (=> d!2249292 m!7913890))

(assert (=> b!7240311 m!7913524))

(assert (=> b!7240115 d!2249292))

(declare-fun d!2249294 () Bool)

(declare-fun c!1344437 () Bool)

(assert (=> d!2249294 (= c!1344437 (isEmpty!40417 lt!2579161))))

(declare-fun e!4340895 () Bool)

(assert (=> d!2249294 (= (matchZipper!3460 (set.union lt!2579158 lt!2579153) lt!2579161) e!4340895)))

(declare-fun b!7240312 () Bool)

(assert (=> b!7240312 (= e!4340895 (nullableZipper!2844 (set.union lt!2579158 lt!2579153)))))

(declare-fun b!7240313 () Bool)

(assert (=> b!7240313 (= e!4340895 (matchZipper!3460 (derivationStepZipper!3342 (set.union lt!2579158 lt!2579153) (head!14833 lt!2579161)) (tail!14210 lt!2579161)))))

(assert (= (and d!2249294 c!1344437) b!7240312))

(assert (= (and d!2249294 (not c!1344437)) b!7240313))

(assert (=> d!2249294 m!7913690))

(declare-fun m!7913892 () Bool)

(assert (=> b!7240312 m!7913892))

(assert (=> b!7240313 m!7913694))

(assert (=> b!7240313 m!7913694))

(declare-fun m!7913894 () Bool)

(assert (=> b!7240313 m!7913894))

(assert (=> b!7240313 m!7913698))

(assert (=> b!7240313 m!7913894))

(assert (=> b!7240313 m!7913698))

(declare-fun m!7913896 () Bool)

(assert (=> b!7240313 m!7913896))

(assert (=> b!7240115 d!2249294))

(declare-fun d!2249296 () Bool)

(declare-fun c!1344438 () Bool)

(declare-fun e!4340897 () Bool)

(assert (=> d!2249296 (= c!1344438 e!4340897)))

(declare-fun res!2937201 () Bool)

(assert (=> d!2249296 (=> (not res!2937201) (not e!4340897))))

(assert (=> d!2249296 (= res!2937201 (is-Cons!70135 (exprs!7990 lt!2579172)))))

(declare-fun e!4340896 () (Set Context!14980))

(assert (=> d!2249296 (= (derivationStepZipperUp!2424 lt!2579172 (h!76582 s1!1971)) e!4340896)))

(declare-fun b!7240314 () Bool)

(declare-fun call!659362 () (Set Context!14980))

(assert (=> b!7240314 (= e!4340896 (set.union call!659362 (derivationStepZipperUp!2424 (Context!14981 (t!384310 (exprs!7990 lt!2579172))) (h!76582 s1!1971))))))

(declare-fun b!7240315 () Bool)

(declare-fun e!4340898 () (Set Context!14980))

(assert (=> b!7240315 (= e!4340898 call!659362)))

(declare-fun bm!659357 () Bool)

(assert (=> bm!659357 (= call!659362 (derivationStepZipperDown!2594 (h!76583 (exprs!7990 lt!2579172)) (Context!14981 (t!384310 (exprs!7990 lt!2579172))) (h!76582 s1!1971)))))

(declare-fun b!7240316 () Bool)

(assert (=> b!7240316 (= e!4340896 e!4340898)))

(declare-fun c!1344439 () Bool)

(assert (=> b!7240316 (= c!1344439 (is-Cons!70135 (exprs!7990 lt!2579172)))))

(declare-fun b!7240317 () Bool)

(assert (=> b!7240317 (= e!4340897 (nullable!7863 (h!76583 (exprs!7990 lt!2579172))))))

(declare-fun b!7240318 () Bool)

(assert (=> b!7240318 (= e!4340898 (as set.empty (Set Context!14980)))))

(assert (= (and d!2249296 res!2937201) b!7240317))

(assert (= (and d!2249296 c!1344438) b!7240314))

(assert (= (and d!2249296 (not c!1344438)) b!7240316))

(assert (= (and b!7240316 c!1344439) b!7240315))

(assert (= (and b!7240316 (not c!1344439)) b!7240318))

(assert (= (or b!7240314 b!7240315) bm!659357))

(declare-fun m!7913898 () Bool)

(assert (=> b!7240314 m!7913898))

(declare-fun m!7913900 () Bool)

(assert (=> bm!659357 m!7913900))

(declare-fun m!7913902 () Bool)

(assert (=> b!7240317 m!7913902))

(assert (=> b!7240115 d!2249296))

(declare-fun d!2249298 () Bool)

(declare-fun c!1344440 () Bool)

(assert (=> d!2249298 (= c!1344440 (isEmpty!40417 lt!2579161))))

(declare-fun e!4340899 () Bool)

(assert (=> d!2249298 (= (matchZipper!3460 lt!2579158 lt!2579161) e!4340899)))

(declare-fun b!7240319 () Bool)

(assert (=> b!7240319 (= e!4340899 (nullableZipper!2844 lt!2579158))))

(declare-fun b!7240320 () Bool)

(assert (=> b!7240320 (= e!4340899 (matchZipper!3460 (derivationStepZipper!3342 lt!2579158 (head!14833 lt!2579161)) (tail!14210 lt!2579161)))))

(assert (= (and d!2249298 c!1344440) b!7240319))

(assert (= (and d!2249298 (not c!1344440)) b!7240320))

(assert (=> d!2249298 m!7913690))

(declare-fun m!7913904 () Bool)

(assert (=> b!7240319 m!7913904))

(assert (=> b!7240320 m!7913694))

(assert (=> b!7240320 m!7913694))

(declare-fun m!7913906 () Bool)

(assert (=> b!7240320 m!7913906))

(assert (=> b!7240320 m!7913698))

(assert (=> b!7240320 m!7913906))

(assert (=> b!7240320 m!7913698))

(declare-fun m!7913908 () Bool)

(assert (=> b!7240320 m!7913908))

(assert (=> b!7240115 d!2249298))

(declare-fun e!4340900 () Bool)

(declare-fun d!2249300 () Bool)

(assert (=> d!2249300 (= (matchZipper!3460 (set.union lt!2579158 lt!2579153) lt!2579161) e!4340900)))

(declare-fun res!2937202 () Bool)

(assert (=> d!2249300 (=> res!2937202 e!4340900)))

(assert (=> d!2249300 (= res!2937202 (matchZipper!3460 lt!2579158 lt!2579161))))

(declare-fun lt!2579346 () Unit!163674)

(assert (=> d!2249300 (= lt!2579346 (choose!55749 lt!2579158 lt!2579153 lt!2579161))))

(assert (=> d!2249300 (= (lemmaZipperConcatMatchesSameAsBothZippers!1697 lt!2579158 lt!2579153 lt!2579161) lt!2579346)))

(declare-fun b!7240321 () Bool)

(assert (=> b!7240321 (= e!4340900 (matchZipper!3460 lt!2579153 lt!2579161))))

(assert (= (and d!2249300 (not res!2937202)) b!7240321))

(assert (=> d!2249300 m!7913508))

(assert (=> d!2249300 m!7913512))

(declare-fun m!7913910 () Bool)

(assert (=> d!2249300 m!7913910))

(assert (=> b!7240321 m!7913544))

(assert (=> b!7240115 d!2249300))

(declare-fun d!2249302 () Bool)

(declare-fun c!1344441 () Bool)

(assert (=> d!2249302 (= c!1344441 (isEmpty!40417 (t!384309 s1!1971)))))

(declare-fun e!4340901 () Bool)

(assert (=> d!2249302 (= (matchZipper!3460 lt!2579169 (t!384309 s1!1971)) e!4340901)))

(declare-fun b!7240322 () Bool)

(assert (=> b!7240322 (= e!4340901 (nullableZipper!2844 lt!2579169))))

(declare-fun b!7240323 () Bool)

(assert (=> b!7240323 (= e!4340901 (matchZipper!3460 (derivationStepZipper!3342 lt!2579169 (head!14833 (t!384309 s1!1971))) (tail!14210 (t!384309 s1!1971))))))

(assert (= (and d!2249302 c!1344441) b!7240322))

(assert (= (and d!2249302 (not c!1344441)) b!7240323))

(assert (=> d!2249302 m!7913676))

(declare-fun m!7913912 () Bool)

(assert (=> b!7240322 m!7913912))

(assert (=> b!7240323 m!7913680))

(assert (=> b!7240323 m!7913680))

(declare-fun m!7913914 () Bool)

(assert (=> b!7240323 m!7913914))

(assert (=> b!7240323 m!7913684))

(assert (=> b!7240323 m!7913914))

(assert (=> b!7240323 m!7913684))

(declare-fun m!7913916 () Bool)

(assert (=> b!7240323 m!7913916))

(assert (=> b!7240103 d!2249302))

(declare-fun d!2249304 () Bool)

(declare-fun res!2937203 () Bool)

(declare-fun e!4340902 () Bool)

(assert (=> d!2249304 (=> res!2937203 e!4340902)))

(assert (=> d!2249304 (= res!2937203 (is-Nil!70135 (exprs!7990 ct2!328)))))

(assert (=> d!2249304 (= (forall!17387 (exprs!7990 ct2!328) lambda!441629) e!4340902)))

(declare-fun b!7240324 () Bool)

(declare-fun e!4340903 () Bool)

(assert (=> b!7240324 (= e!4340902 e!4340903)))

(declare-fun res!2937204 () Bool)

(assert (=> b!7240324 (=> (not res!2937204) (not e!4340903))))

(assert (=> b!7240324 (= res!2937204 (dynLambda!28625 lambda!441629 (h!76583 (exprs!7990 ct2!328))))))

(declare-fun b!7240325 () Bool)

(assert (=> b!7240325 (= e!4340903 (forall!17387 (t!384310 (exprs!7990 ct2!328)) lambda!441629))))

(assert (= (and d!2249304 (not res!2937203)) b!7240324))

(assert (= (and b!7240324 res!2937204) b!7240325))

(declare-fun b_lambda!277725 () Bool)

(assert (=> (not b_lambda!277725) (not b!7240324)))

(declare-fun m!7913918 () Bool)

(assert (=> b!7240324 m!7913918))

(declare-fun m!7913920 () Bool)

(assert (=> b!7240325 m!7913920))

(assert (=> b!7240102 d!2249304))

(declare-fun d!2249306 () Bool)

(declare-fun c!1344442 () Bool)

(assert (=> d!2249306 (= c!1344442 (isEmpty!40417 lt!2579161))))

(declare-fun e!4340904 () Bool)

(assert (=> d!2249306 (= (matchZipper!3460 lt!2579153 lt!2579161) e!4340904)))

(declare-fun b!7240326 () Bool)

(assert (=> b!7240326 (= e!4340904 (nullableZipper!2844 lt!2579153))))

(declare-fun b!7240327 () Bool)

(assert (=> b!7240327 (= e!4340904 (matchZipper!3460 (derivationStepZipper!3342 lt!2579153 (head!14833 lt!2579161)) (tail!14210 lt!2579161)))))

(assert (= (and d!2249306 c!1344442) b!7240326))

(assert (= (and d!2249306 (not c!1344442)) b!7240327))

(assert (=> d!2249306 m!7913690))

(declare-fun m!7913922 () Bool)

(assert (=> b!7240326 m!7913922))

(assert (=> b!7240327 m!7913694))

(assert (=> b!7240327 m!7913694))

(declare-fun m!7913924 () Bool)

(assert (=> b!7240327 m!7913924))

(assert (=> b!7240327 m!7913698))

(assert (=> b!7240327 m!7913924))

(assert (=> b!7240327 m!7913698))

(declare-fun m!7913926 () Bool)

(assert (=> b!7240327 m!7913926))

(assert (=> b!7240113 d!2249306))

(declare-fun b!7240329 () Bool)

(declare-fun e!4340906 () List!70259)

(assert (=> b!7240329 (= e!4340906 (Cons!70135 (h!76583 (exprs!7990 lt!2579151)) (++!16400 (t!384310 (exprs!7990 lt!2579151)) (exprs!7990 ct2!328))))))

(declare-fun d!2249308 () Bool)

(declare-fun e!4340905 () Bool)

(assert (=> d!2249308 e!4340905))

(declare-fun res!2937205 () Bool)

(assert (=> d!2249308 (=> (not res!2937205) (not e!4340905))))

(declare-fun lt!2579347 () List!70259)

(assert (=> d!2249308 (= res!2937205 (= (content!14479 lt!2579347) (set.union (content!14479 (exprs!7990 lt!2579151)) (content!14479 (exprs!7990 ct2!328)))))))

(assert (=> d!2249308 (= lt!2579347 e!4340906)))

(declare-fun c!1344443 () Bool)

(assert (=> d!2249308 (= c!1344443 (is-Nil!70135 (exprs!7990 lt!2579151)))))

(assert (=> d!2249308 (= (++!16400 (exprs!7990 lt!2579151) (exprs!7990 ct2!328)) lt!2579347)))

(declare-fun b!7240328 () Bool)

(assert (=> b!7240328 (= e!4340906 (exprs!7990 ct2!328))))

(declare-fun b!7240330 () Bool)

(declare-fun res!2937206 () Bool)

(assert (=> b!7240330 (=> (not res!2937206) (not e!4340905))))

(assert (=> b!7240330 (= res!2937206 (= (size!41619 lt!2579347) (+ (size!41619 (exprs!7990 lt!2579151)) (size!41619 (exprs!7990 ct2!328)))))))

(declare-fun b!7240331 () Bool)

(assert (=> b!7240331 (= e!4340905 (or (not (= (exprs!7990 ct2!328) Nil!70135)) (= lt!2579347 (exprs!7990 lt!2579151))))))

(assert (= (and d!2249308 c!1344443) b!7240328))

(assert (= (and d!2249308 (not c!1344443)) b!7240329))

(assert (= (and d!2249308 res!2937205) b!7240330))

(assert (= (and b!7240330 res!2937206) b!7240331))

(declare-fun m!7913928 () Bool)

(assert (=> b!7240329 m!7913928))

(declare-fun m!7913930 () Bool)

(assert (=> d!2249308 m!7913930))

(declare-fun m!7913932 () Bool)

(assert (=> d!2249308 m!7913932))

(assert (=> d!2249308 m!7913836))

(declare-fun m!7913934 () Bool)

(assert (=> b!7240330 m!7913934))

(declare-fun m!7913936 () Bool)

(assert (=> b!7240330 m!7913936))

(assert (=> b!7240330 m!7913842))

(assert (=> b!7240112 d!2249308))

(declare-fun d!2249310 () Bool)

(declare-fun c!1344444 () Bool)

(assert (=> d!2249310 (= c!1344444 (isEmpty!40417 lt!2579161))))

(declare-fun e!4340907 () Bool)

(assert (=> d!2249310 (= (matchZipper!3460 (set.insert lt!2579157 (as set.empty (Set Context!14980))) lt!2579161) e!4340907)))

(declare-fun b!7240332 () Bool)

(assert (=> b!7240332 (= e!4340907 (nullableZipper!2844 (set.insert lt!2579157 (as set.empty (Set Context!14980)))))))

(declare-fun b!7240333 () Bool)

(assert (=> b!7240333 (= e!4340907 (matchZipper!3460 (derivationStepZipper!3342 (set.insert lt!2579157 (as set.empty (Set Context!14980))) (head!14833 lt!2579161)) (tail!14210 lt!2579161)))))

(assert (= (and d!2249310 c!1344444) b!7240332))

(assert (= (and d!2249310 (not c!1344444)) b!7240333))

(assert (=> d!2249310 m!7913690))

(assert (=> b!7240332 m!7913534))

(declare-fun m!7913938 () Bool)

(assert (=> b!7240332 m!7913938))

(assert (=> b!7240333 m!7913694))

(assert (=> b!7240333 m!7913534))

(assert (=> b!7240333 m!7913694))

(declare-fun m!7913940 () Bool)

(assert (=> b!7240333 m!7913940))

(assert (=> b!7240333 m!7913698))

(assert (=> b!7240333 m!7913940))

(assert (=> b!7240333 m!7913698))

(declare-fun m!7913942 () Bool)

(assert (=> b!7240333 m!7913942))

(assert (=> b!7240112 d!2249310))

(declare-fun d!2249312 () Bool)

(declare-fun e!4340910 () Bool)

(assert (=> d!2249312 e!4340910))

(declare-fun res!2937209 () Bool)

(assert (=> d!2249312 (=> (not res!2937209) (not e!4340910))))

(declare-fun lt!2579350 () Context!14980)

(declare-fun dynLambda!28627 (Int Context!14980) Bool)

(assert (=> d!2249312 (= res!2937209 (dynLambda!28627 lambda!441630 lt!2579350))))

(declare-fun getWitness!2100 (List!70260 Int) Context!14980)

(assert (=> d!2249312 (= lt!2579350 (getWitness!2100 (toList!11407 lt!2579165) lambda!441630))))

(assert (=> d!2249312 (exists!4243 lt!2579165 lambda!441630)))

(assert (=> d!2249312 (= (getWitness!2098 lt!2579165 lambda!441630) lt!2579350)))

(declare-fun b!7240336 () Bool)

(assert (=> b!7240336 (= e!4340910 (set.member lt!2579350 lt!2579165))))

(assert (= (and d!2249312 res!2937209) b!7240336))

(declare-fun b_lambda!277727 () Bool)

(assert (=> (not b_lambda!277727) (not d!2249312)))

(declare-fun m!7913944 () Bool)

(assert (=> d!2249312 m!7913944))

(assert (=> d!2249312 m!7913514))

(assert (=> d!2249312 m!7913514))

(declare-fun m!7913946 () Bool)

(assert (=> d!2249312 m!7913946))

(assert (=> d!2249312 m!7913522))

(declare-fun m!7913948 () Bool)

(assert (=> b!7240336 m!7913948))

(assert (=> b!7240112 d!2249312))

(assert (=> b!7240112 d!2249262))

(declare-fun d!2249314 () Bool)

(assert (=> d!2249314 (= (isEmpty!40415 (exprs!7990 ct1!232)) (is-Nil!70135 (exprs!7990 ct1!232)))))

(assert (=> b!7240112 d!2249314))

(declare-fun bs!1903988 () Bool)

(declare-fun d!2249316 () Bool)

(assert (= bs!1903988 (and d!2249316 b!7240106)))

(declare-fun lambda!441701 () Int)

(assert (=> bs!1903988 (= lambda!441701 lambda!441629)))

(declare-fun bs!1903989 () Bool)

(assert (= bs!1903989 (and d!2249316 d!2249256)))

(assert (=> bs!1903989 (= lambda!441701 lambda!441694)))

(declare-fun bs!1903990 () Bool)

(assert (= bs!1903990 (and d!2249316 d!2249280)))

(assert (=> bs!1903990 (= lambda!441701 lambda!441697)))

(declare-fun bs!1903991 () Bool)

(assert (= bs!1903991 (and d!2249316 d!2249282)))

(assert (=> bs!1903991 (= lambda!441701 lambda!441698)))

(assert (=> d!2249316 (matchZipper!3460 (set.insert (Context!14981 (++!16400 (exprs!7990 lt!2579151) (exprs!7990 ct2!328))) (as set.empty (Set Context!14980))) (++!16401 (t!384309 s1!1971) s2!1849))))

(declare-fun lt!2579356 () Unit!163674)

(assert (=> d!2249316 (= lt!2579356 (lemmaConcatPreservesForall!1359 (exprs!7990 lt!2579151) (exprs!7990 ct2!328) lambda!441701))))

(declare-fun lt!2579355 () Unit!163674)

(declare-fun choose!55750 (Context!14980 Context!14980 List!70258 List!70258) Unit!163674)

(assert (=> d!2249316 (= lt!2579355 (choose!55750 lt!2579151 ct2!328 (t!384309 s1!1971) s2!1849))))

(assert (=> d!2249316 (matchZipper!3460 (set.insert lt!2579151 (as set.empty (Set Context!14980))) (t!384309 s1!1971))))

(assert (=> d!2249316 (= (lemmaConcatenateContextMatchesConcatOfStrings!341 lt!2579151 ct2!328 (t!384309 s1!1971) s2!1849) lt!2579355)))

(declare-fun bs!1903992 () Bool)

(assert (= bs!1903992 d!2249316))

(declare-fun m!7913950 () Bool)

(assert (=> bs!1903992 m!7913950))

(assert (=> bs!1903992 m!7913530))

(declare-fun m!7913952 () Bool)

(assert (=> bs!1903992 m!7913952))

(declare-fun m!7913954 () Bool)

(assert (=> bs!1903992 m!7913954))

(assert (=> bs!1903992 m!7913954))

(assert (=> bs!1903992 m!7913542))

(declare-fun m!7913956 () Bool)

(assert (=> bs!1903992 m!7913956))

(assert (=> bs!1903992 m!7913542))

(declare-fun m!7913958 () Bool)

(assert (=> bs!1903992 m!7913958))

(assert (=> bs!1903992 m!7913952))

(declare-fun m!7913960 () Bool)

(assert (=> bs!1903992 m!7913960))

(assert (=> b!7240112 d!2249316))

(declare-fun b!7240337 () Bool)

(declare-fun e!4340912 () List!70258)

(assert (=> b!7240337 (= e!4340912 s2!1849)))

(declare-fun b!7240340 () Bool)

(declare-fun lt!2579357 () List!70258)

(declare-fun e!4340911 () Bool)

(assert (=> b!7240340 (= e!4340911 (or (not (= s2!1849 Nil!70134)) (= lt!2579357 (t!384309 s1!1971))))))

(declare-fun d!2249318 () Bool)

(assert (=> d!2249318 e!4340911))

(declare-fun res!2937211 () Bool)

(assert (=> d!2249318 (=> (not res!2937211) (not e!4340911))))

(assert (=> d!2249318 (= res!2937211 (= (content!14478 lt!2579357) (set.union (content!14478 (t!384309 s1!1971)) (content!14478 s2!1849))))))

(assert (=> d!2249318 (= lt!2579357 e!4340912)))

(declare-fun c!1344445 () Bool)

(assert (=> d!2249318 (= c!1344445 (is-Nil!70134 (t!384309 s1!1971)))))

(assert (=> d!2249318 (= (++!16401 (t!384309 s1!1971) s2!1849) lt!2579357)))

(declare-fun b!7240339 () Bool)

(declare-fun res!2937210 () Bool)

(assert (=> b!7240339 (=> (not res!2937210) (not e!4340911))))

(assert (=> b!7240339 (= res!2937210 (= (size!41618 lt!2579357) (+ (size!41618 (t!384309 s1!1971)) (size!41618 s2!1849))))))

(declare-fun b!7240338 () Bool)

(assert (=> b!7240338 (= e!4340912 (Cons!70134 (h!76582 (t!384309 s1!1971)) (++!16401 (t!384309 (t!384309 s1!1971)) s2!1849)))))

(assert (= (and d!2249318 c!1344445) b!7240337))

(assert (= (and d!2249318 (not c!1344445)) b!7240338))

(assert (= (and d!2249318 res!2937211) b!7240339))

(assert (= (and b!7240339 res!2937210) b!7240340))

(declare-fun m!7913962 () Bool)

(assert (=> d!2249318 m!7913962))

(declare-fun m!7913964 () Bool)

(assert (=> d!2249318 m!7913964))

(assert (=> d!2249318 m!7913766))

(declare-fun m!7913966 () Bool)

(assert (=> b!7240339 m!7913966))

(declare-fun m!7913968 () Bool)

(assert (=> b!7240339 m!7913968))

(assert (=> b!7240339 m!7913772))

(declare-fun m!7913970 () Bool)

(assert (=> b!7240338 m!7913970))

(assert (=> b!7240112 d!2249318))

(assert (=> b!7240112 d!2249270))

(assert (=> b!7240101 d!2249242))

(declare-fun b!7240345 () Bool)

(declare-fun e!4340915 () Bool)

(declare-fun tp!2035157 () Bool)

(declare-fun tp!2035158 () Bool)

(assert (=> b!7240345 (= e!4340915 (and tp!2035157 tp!2035158))))

(assert (=> b!7240111 (= tp!2035140 e!4340915)))

(assert (= (and b!7240111 (is-Cons!70135 (exprs!7990 ct2!328))) b!7240345))

(declare-fun b!7240350 () Bool)

(declare-fun e!4340918 () Bool)

(declare-fun tp!2035161 () Bool)

(assert (=> b!7240350 (= e!4340918 (and tp_is_empty!46565 tp!2035161))))

(assert (=> b!7240104 (= tp!2035137 e!4340918)))

(assert (= (and b!7240104 (is-Cons!70134 (t!384309 s1!1971))) b!7240350))

(declare-fun b!7240351 () Bool)

(declare-fun e!4340919 () Bool)

(declare-fun tp!2035162 () Bool)

(declare-fun tp!2035163 () Bool)

(assert (=> b!7240351 (= e!4340919 (and tp!2035162 tp!2035163))))

(assert (=> b!7240098 (= tp!2035138 e!4340919)))

(assert (= (and b!7240098 (is-Cons!70135 (exprs!7990 ct1!232))) b!7240351))

(declare-fun b!7240352 () Bool)

(declare-fun e!4340920 () Bool)

(declare-fun tp!2035164 () Bool)

(assert (=> b!7240352 (= e!4340920 (and tp_is_empty!46565 tp!2035164))))

(assert (=> b!7240107 (= tp!2035139 e!4340920)))

(assert (= (and b!7240107 (is-Cons!70134 (t!384309 s2!1849))) b!7240352))

(declare-fun b_lambda!277729 () Bool)

(assert (= b_lambda!277725 (or b!7240106 b_lambda!277729)))

(declare-fun bs!1903993 () Bool)

(declare-fun d!2249320 () Bool)

(assert (= bs!1903993 (and d!2249320 b!7240106)))

(declare-fun validRegex!9530 (Regex!18550) Bool)

(assert (=> bs!1903993 (= (dynLambda!28625 lambda!441629 (h!76583 (exprs!7990 ct2!328))) (validRegex!9530 (h!76583 (exprs!7990 ct2!328))))))

(declare-fun m!7913972 () Bool)

(assert (=> bs!1903993 m!7913972))

(assert (=> b!7240324 d!2249320))

(declare-fun b_lambda!277731 () Bool)

(assert (= b_lambda!277727 (or b!7240099 b_lambda!277731)))

(declare-fun bs!1903994 () Bool)

(declare-fun d!2249322 () Bool)

(assert (= bs!1903994 (and d!2249322 b!7240099)))

(assert (=> bs!1903994 (= (dynLambda!28627 lambda!441630 lt!2579350) (matchZipper!3460 (set.insert lt!2579350 (as set.empty (Set Context!14980))) (t!384309 s1!1971)))))

(declare-fun m!7913974 () Bool)

(assert (=> bs!1903994 m!7913974))

(assert (=> bs!1903994 m!7913974))

(declare-fun m!7913976 () Bool)

(assert (=> bs!1903994 m!7913976))

(assert (=> d!2249312 d!2249322))

(declare-fun b_lambda!277733 () Bool)

(assert (= b_lambda!277721 (or b!7240108 b_lambda!277733)))

(declare-fun bs!1903995 () Bool)

(declare-fun d!2249324 () Bool)

(assert (= bs!1903995 (and d!2249324 b!7240108)))

(assert (=> bs!1903995 (= (dynLambda!28626 lambda!441631 lt!2579174) (derivationStepZipperUp!2424 lt!2579174 (h!76582 s1!1971)))))

(assert (=> bs!1903995 m!7913472))

(assert (=> d!2249240 d!2249324))

(declare-fun b_lambda!277735 () Bool)

(assert (= b_lambda!277723 (or b!7240108 b_lambda!277735)))

(declare-fun bs!1903996 () Bool)

(declare-fun d!2249326 () Bool)

(assert (= bs!1903996 (and d!2249326 b!7240108)))

(assert (=> bs!1903996 (= (dynLambda!28626 lambda!441631 ct1!232) (derivationStepZipperUp!2424 ct1!232 (h!76582 s1!1971)))))

(assert (=> bs!1903996 m!7913466))

(assert (=> d!2249246 d!2249326))

(declare-fun b_lambda!277737 () Bool)

(assert (= b_lambda!277719 (or b!7240106 b_lambda!277737)))

(declare-fun bs!1903997 () Bool)

(declare-fun d!2249328 () Bool)

(assert (= bs!1903997 (and d!2249328 b!7240106)))

(assert (=> bs!1903997 (= (dynLambda!28625 lambda!441629 (h!76583 (exprs!7990 ct1!232))) (validRegex!9530 (h!76583 (exprs!7990 ct1!232))))))

(declare-fun m!7913978 () Bool)

(assert (=> bs!1903997 m!7913978))

(assert (=> b!7240245 d!2249328))

(push 1)

(assert (not d!2249246))

(assert (not b!7240283))

(assert (not b!7240276))

(assert (not d!2249258))

(assert (not b_lambda!277731))

(assert (not d!2249252))

(assert (not b!7240350))

(assert (not bm!659348))

(assert (not d!2249244))

(assert (not b_lambda!277735))

(assert (not b!7240333))

(assert (not d!2249298))

(assert (not bs!1903993))

(assert (not d!2249278))

(assert (not d!2249312))

(assert (not d!2249286))

(assert (not b!7240186))

(assert (not b!7240261))

(assert (not bm!659356))

(assert (not b!7240352))

(assert (not b!7240330))

(assert (not d!2249248))

(assert (not b!7240313))

(assert (not b!7240321))

(assert (not b!7240182))

(assert (not b!7240301))

(assert (not d!2249262))

(assert (not b!7240308))

(assert (not d!2249266))

(assert (not bm!659351))

(assert (not b!7240257))

(assert (not bm!659350))

(assert (not d!2249256))

(assert (not b!7240183))

(assert (not d!2249276))

(assert (not b!7240298))

(assert (not d!2249218))

(assert (not b!7240220))

(assert (not bm!659341))

(assert (not b!7240351))

(assert (not b!7240312))

(assert (not bm!659353))

(assert (not b!7240317))

(assert (not d!2249216))

(assert (not b!7240339))

(assert (not b!7240236))

(assert (not b!7240311))

(assert (not d!2249280))

(assert (not b!7240259))

(assert (not b!7240187))

(assert (not b!7240307))

(assert (not bs!1903995))

(assert (not d!2249310))

(assert (not bm!659357))

(assert (not b!7240345))

(assert (not b!7240300))

(assert (not b!7240322))

(assert (not d!2249226))

(assert (not b!7240323))

(assert (not b!7240260))

(assert (not b!7240325))

(assert (not b!7240239))

(assert (not d!2249292))

(assert (not b!7240305))

(assert (not d!2249264))

(assert (not d!2249220))

(assert (not b!7240267))

(assert (not b!7240326))

(assert (not b!7240256))

(assert (not bm!659355))

(assert (not b!7240338))

(assert (not b!7240332))

(assert (not d!2249240))

(assert (not b!7240327))

(assert (not d!2249318))

(assert (not b!7240294))

(assert (not bs!1903994))

(assert (not d!2249300))

(assert (not d!2249302))

(assert (not d!2249316))

(assert (not d!2249242))

(assert tp_is_empty!46565)

(assert (not d!2249230))

(assert (not b_lambda!277737))

(assert (not bs!1903997))

(assert (not b!7240319))

(assert (not d!2249212))

(assert (not d!2249290))

(assert (not b!7240329))

(assert (not bs!1903996))

(assert (not b_lambda!277729))

(assert (not b!7240273))

(assert (not d!2249294))

(assert (not bm!659344))

(assert (not d!2249284))

(assert (not bm!659342))

(assert (not b!7240297))

(assert (not b!7240302))

(assert (not d!2249214))

(assert (not b!7240246))

(assert (not b!7240293))

(assert (not b!7240314))

(assert (not b_lambda!277733))

(assert (not d!2249224))

(assert (not b!7240296))

(assert (not b!7240320))

(assert (not d!2249254))

(assert (not d!2249308))

(assert (not d!2249250))

(assert (not b!7240190))

(assert (not d!2249306))

(assert (not d!2249222))

(assert (not b!7240299))

(assert (not d!2249282))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

