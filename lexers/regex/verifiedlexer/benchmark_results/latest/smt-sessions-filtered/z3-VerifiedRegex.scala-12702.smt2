; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!702312 () Bool)

(assert start!702312)

(declare-fun b!7234828 () Bool)

(assert (=> b!7234828 true))

(declare-fun b!7234825 () Bool)

(assert (=> b!7234825 true))

(declare-fun b!7234823 () Bool)

(declare-fun e!4337322 () Bool)

(declare-fun tp!2034407 () Bool)

(assert (=> b!7234823 (= e!4337322 tp!2034407)))

(declare-fun b!7234824 () Bool)

(declare-fun res!2935118 () Bool)

(declare-fun e!4337316 () Bool)

(assert (=> b!7234824 (=> (not res!2935118) (not e!4337316))))

(declare-datatypes ((C!37300 0))(
  ( (C!37301 (val!28598 Int)) )
))
(declare-datatypes ((Regex!18513 0))(
  ( (ElementMatch!18513 (c!1342671 C!37300)) (Concat!27358 (regOne!37538 Regex!18513) (regTwo!37538 Regex!18513)) (EmptyExpr!18513) (Star!18513 (reg!18842 Regex!18513)) (EmptyLang!18513) (Union!18513 (regOne!37539 Regex!18513) (regTwo!37539 Regex!18513)) )
))
(declare-datatypes ((List!70147 0))(
  ( (Nil!70023) (Cons!70023 (h!76471 Regex!18513) (t!384198 List!70147)) )
))
(declare-datatypes ((Context!14906 0))(
  ( (Context!14907 (exprs!7953 List!70147)) )
))
(declare-fun ct2!328 () Context!14906)

(declare-datatypes ((List!70148 0))(
  ( (Nil!70024) (Cons!70024 (h!76472 C!37300) (t!384199 List!70148)) )
))
(declare-fun s2!1849 () List!70148)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3423 ((InoxSet Context!14906) List!70148) Bool)

(assert (=> b!7234824 (= res!2935118 (matchZipper!3423 (store ((as const (Array Context!14906 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun e!4337315 () Bool)

(assert (=> b!7234825 (= e!4337315 true)))

(declare-datatypes ((Unit!163564 0))(
  ( (Unit!163565) )
))
(declare-fun lt!2574865 () Unit!163564)

(declare-fun lambda!440029 () Int)

(declare-fun ct1!232 () Context!14906)

(declare-fun lemmaConcatPreservesForall!1322 (List!70147 List!70147 Int) Unit!163564)

(assert (=> b!7234825 (= lt!2574865 (lemmaConcatPreservesForall!1322 (exprs!7953 ct1!232) (exprs!7953 ct2!328) lambda!440029))))

(declare-fun lt!2574858 () (InoxSet Context!14906))

(declare-fun s1!1971 () List!70148)

(declare-fun lambda!440031 () Int)

(declare-fun flatMap!2717 ((InoxSet Context!14906) Int) (InoxSet Context!14906))

(declare-fun derivationStepZipperUp!2387 (Context!14906 C!37300) (InoxSet Context!14906))

(assert (=> b!7234825 (= (flatMap!2717 lt!2574858 lambda!440031) (derivationStepZipperUp!2387 ct1!232 (h!76472 s1!1971)))))

(declare-fun lt!2574862 () Unit!163564)

(declare-fun lemmaFlatMapOnSingletonSet!2144 ((InoxSet Context!14906) Context!14906 Int) Unit!163564)

(assert (=> b!7234825 (= lt!2574862 (lemmaFlatMapOnSingletonSet!2144 lt!2574858 ct1!232 lambda!440031))))

(declare-fun lt!2574867 () (InoxSet Context!14906))

(declare-fun lt!2574856 () List!70147)

(declare-fun derivationStepZipperDown!2557 (Regex!18513 Context!14906 C!37300) (InoxSet Context!14906))

(declare-fun tail!14144 (List!70147) List!70147)

(assert (=> b!7234825 (= lt!2574867 (derivationStepZipperDown!2557 (h!76471 (exprs!7953 ct1!232)) (Context!14907 (tail!14144 lt!2574856)) (h!76472 s1!1971)))))

(declare-fun b!7234826 () Bool)

(declare-fun e!4337320 () Bool)

(declare-fun e!4337313 () Bool)

(assert (=> b!7234826 (= e!4337320 e!4337313)))

(declare-fun res!2935116 () Bool)

(assert (=> b!7234826 (=> (not res!2935116) (not e!4337313))))

(declare-fun lt!2574855 () (InoxSet Context!14906))

(assert (=> b!7234826 (= res!2935116 (matchZipper!3423 lt!2574855 (t!384199 s1!1971)))))

(declare-fun derivationStepZipper!3305 ((InoxSet Context!14906) C!37300) (InoxSet Context!14906))

(assert (=> b!7234826 (= lt!2574855 (derivationStepZipper!3305 lt!2574858 (h!76472 s1!1971)))))

(declare-fun b!7234827 () Bool)

(declare-fun e!4337321 () Bool)

(declare-fun e!4337314 () Bool)

(assert (=> b!7234827 (= e!4337321 e!4337314)))

(declare-fun res!2935113 () Bool)

(assert (=> b!7234827 (=> res!2935113 e!4337314)))

(declare-fun isEmpty!40358 (List!70147) Bool)

(assert (=> b!7234827 (= res!2935113 (isEmpty!40358 (exprs!7953 ct1!232)))))

(declare-fun lt!2574863 () (InoxSet Context!14906))

(assert (=> b!7234827 (= lt!2574863 (derivationStepZipperUp!2387 ct1!232 (h!76472 s1!1971)))))

(declare-fun lt!2574852 () Unit!163564)

(declare-fun lt!2574869 () Context!14906)

(assert (=> b!7234827 (= lt!2574852 (lemmaConcatPreservesForall!1322 (exprs!7953 lt!2574869) (exprs!7953 ct2!328) lambda!440029))))

(declare-fun ++!16326 (List!70147 List!70147) List!70147)

(declare-fun ++!16327 (List!70148 List!70148) List!70148)

(assert (=> b!7234827 (matchZipper!3423 (store ((as const (Array Context!14906 Bool)) false) (Context!14907 (++!16326 (exprs!7953 lt!2574869) (exprs!7953 ct2!328))) true) (++!16327 (t!384199 s1!1971) s2!1849))))

(declare-fun lt!2574861 () Unit!163564)

(assert (=> b!7234827 (= lt!2574861 (lemmaConcatPreservesForall!1322 (exprs!7953 lt!2574869) (exprs!7953 ct2!328) lambda!440029))))

(declare-fun lt!2574853 () Unit!163564)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!304 (Context!14906 Context!14906 List!70148 List!70148) Unit!163564)

(assert (=> b!7234827 (= lt!2574853 (lemmaConcatenateContextMatchesConcatOfStrings!304 lt!2574869 ct2!328 (t!384199 s1!1971) s2!1849))))

(declare-fun lambda!440030 () Int)

(declare-fun getWitness!2042 ((InoxSet Context!14906) Int) Context!14906)

(assert (=> b!7234827 (= lt!2574869 (getWitness!2042 lt!2574855 lambda!440030))))

(assert (=> b!7234828 (= e!4337313 (not e!4337321))))

(declare-fun res!2935115 () Bool)

(assert (=> b!7234828 (=> res!2935115 e!4337321)))

(declare-fun exists!4169 ((InoxSet Context!14906) Int) Bool)

(assert (=> b!7234828 (= res!2935115 (not (exists!4169 lt!2574855 lambda!440030)))))

(declare-datatypes ((List!70149 0))(
  ( (Nil!70025) (Cons!70025 (h!76473 Context!14906) (t!384200 List!70149)) )
))
(declare-fun lt!2574864 () List!70149)

(declare-fun exists!4170 (List!70149 Int) Bool)

(assert (=> b!7234828 (exists!4170 lt!2574864 lambda!440030)))

(declare-fun lt!2574866 () Unit!163564)

(declare-fun lemmaZipperMatchesExistsMatchingContext!656 (List!70149 List!70148) Unit!163564)

(assert (=> b!7234828 (= lt!2574866 (lemmaZipperMatchesExistsMatchingContext!656 lt!2574864 (t!384199 s1!1971)))))

(declare-fun toList!11370 ((InoxSet Context!14906)) List!70149)

(assert (=> b!7234828 (= lt!2574864 (toList!11370 lt!2574855))))

(declare-fun b!7234829 () Bool)

(declare-fun e!4337318 () Bool)

(declare-fun tp_is_empty!46491 () Bool)

(declare-fun tp!2034406 () Bool)

(assert (=> b!7234829 (= e!4337318 (and tp_is_empty!46491 tp!2034406))))

(declare-fun b!7234830 () Bool)

(declare-fun e!4337319 () Bool)

(declare-fun tp!2034405 () Bool)

(assert (=> b!7234830 (= e!4337319 tp!2034405)))

(declare-fun b!7234831 () Bool)

(assert (=> b!7234831 (= e!4337316 e!4337320)))

(declare-fun res!2935112 () Bool)

(assert (=> b!7234831 (=> (not res!2935112) (not e!4337320))))

(get-info :version)

(assert (=> b!7234831 (= res!2935112 (and (not ((_ is Nil!70023) (exprs!7953 ct1!232))) ((_ is Cons!70024) s1!1971)))))

(assert (=> b!7234831 (= lt!2574856 (++!16326 (exprs!7953 ct1!232) (exprs!7953 ct2!328)))))

(declare-fun lt!2574859 () Unit!163564)

(assert (=> b!7234831 (= lt!2574859 (lemmaConcatPreservesForall!1322 (exprs!7953 ct1!232) (exprs!7953 ct2!328) lambda!440029))))

(declare-fun b!7234832 () Bool)

(declare-fun e!4337317 () Bool)

(declare-fun tp!2034408 () Bool)

(assert (=> b!7234832 (= e!4337317 (and tp_is_empty!46491 tp!2034408))))

(declare-fun res!2935114 () Bool)

(assert (=> start!702312 (=> (not res!2935114) (not e!4337316))))

(assert (=> start!702312 (= res!2935114 (matchZipper!3423 lt!2574858 s1!1971))))

(assert (=> start!702312 (= lt!2574858 (store ((as const (Array Context!14906 Bool)) false) ct1!232 true))))

(assert (=> start!702312 e!4337316))

(declare-fun inv!89292 (Context!14906) Bool)

(assert (=> start!702312 (and (inv!89292 ct1!232) e!4337319)))

(assert (=> start!702312 e!4337318))

(assert (=> start!702312 e!4337317))

(assert (=> start!702312 (and (inv!89292 ct2!328) e!4337322)))

(declare-fun b!7234833 () Bool)

(assert (=> b!7234833 (= e!4337314 e!4337315)))

(declare-fun res!2935117 () Bool)

(assert (=> b!7234833 (=> res!2935117 e!4337315)))

(assert (=> b!7234833 (= res!2935117 (isEmpty!40358 lt!2574856))))

(declare-fun lt!2574868 () Unit!163564)

(assert (=> b!7234833 (= lt!2574868 (lemmaConcatPreservesForall!1322 (exprs!7953 ct1!232) (exprs!7953 ct2!328) lambda!440029))))

(declare-fun lt!2574854 () (InoxSet Context!14906))

(assert (=> b!7234833 (= lt!2574854 (derivationStepZipperUp!2387 (Context!14907 lt!2574856) (h!76472 s1!1971)))))

(declare-fun lt!2574860 () Unit!163564)

(assert (=> b!7234833 (= lt!2574860 (lemmaConcatPreservesForall!1322 (exprs!7953 ct1!232) (exprs!7953 ct2!328) lambda!440029))))

(declare-fun lt!2574857 () (InoxSet Context!14906))

(assert (=> b!7234833 (= lt!2574857 (derivationStepZipperDown!2557 (h!76471 (exprs!7953 ct1!232)) (Context!14907 (tail!14144 (exprs!7953 ct1!232))) (h!76472 s1!1971)))))

(assert (= (and start!702312 res!2935114) b!7234824))

(assert (= (and b!7234824 res!2935118) b!7234831))

(assert (= (and b!7234831 res!2935112) b!7234826))

(assert (= (and b!7234826 res!2935116) b!7234828))

(assert (= (and b!7234828 (not res!2935115)) b!7234827))

(assert (= (and b!7234827 (not res!2935113)) b!7234833))

(assert (= (and b!7234833 (not res!2935117)) b!7234825))

(assert (= start!702312 b!7234830))

(assert (= (and start!702312 ((_ is Cons!70024) s1!1971)) b!7234829))

(assert (= (and start!702312 ((_ is Cons!70024) s2!1849)) b!7234832))

(assert (= start!702312 b!7234823))

(declare-fun m!7905050 () Bool)

(assert (=> b!7234827 m!7905050))

(declare-fun m!7905052 () Bool)

(assert (=> b!7234827 m!7905052))

(declare-fun m!7905054 () Bool)

(assert (=> b!7234827 m!7905054))

(declare-fun m!7905056 () Bool)

(assert (=> b!7234827 m!7905056))

(declare-fun m!7905058 () Bool)

(assert (=> b!7234827 m!7905058))

(declare-fun m!7905060 () Bool)

(assert (=> b!7234827 m!7905060))

(declare-fun m!7905062 () Bool)

(assert (=> b!7234827 m!7905062))

(declare-fun m!7905064 () Bool)

(assert (=> b!7234827 m!7905064))

(assert (=> b!7234827 m!7905052))

(declare-fun m!7905066 () Bool)

(assert (=> b!7234827 m!7905066))

(assert (=> b!7234827 m!7905050))

(assert (=> b!7234827 m!7905056))

(declare-fun m!7905068 () Bool)

(assert (=> b!7234831 m!7905068))

(declare-fun m!7905070 () Bool)

(assert (=> b!7234831 m!7905070))

(declare-fun m!7905072 () Bool)

(assert (=> b!7234828 m!7905072))

(declare-fun m!7905074 () Bool)

(assert (=> b!7234828 m!7905074))

(declare-fun m!7905076 () Bool)

(assert (=> b!7234828 m!7905076))

(declare-fun m!7905078 () Bool)

(assert (=> b!7234828 m!7905078))

(declare-fun m!7905080 () Bool)

(assert (=> b!7234824 m!7905080))

(assert (=> b!7234824 m!7905080))

(declare-fun m!7905082 () Bool)

(assert (=> b!7234824 m!7905082))

(declare-fun m!7905084 () Bool)

(assert (=> b!7234826 m!7905084))

(declare-fun m!7905086 () Bool)

(assert (=> b!7234826 m!7905086))

(declare-fun m!7905088 () Bool)

(assert (=> b!7234825 m!7905088))

(assert (=> b!7234825 m!7905070))

(declare-fun m!7905090 () Bool)

(assert (=> b!7234825 m!7905090))

(assert (=> b!7234825 m!7905064))

(declare-fun m!7905092 () Bool)

(assert (=> b!7234825 m!7905092))

(declare-fun m!7905094 () Bool)

(assert (=> b!7234825 m!7905094))

(declare-fun m!7905096 () Bool)

(assert (=> b!7234833 m!7905096))

(declare-fun m!7905098 () Bool)

(assert (=> b!7234833 m!7905098))

(declare-fun m!7905100 () Bool)

(assert (=> b!7234833 m!7905100))

(declare-fun m!7905102 () Bool)

(assert (=> b!7234833 m!7905102))

(assert (=> b!7234833 m!7905070))

(assert (=> b!7234833 m!7905070))

(declare-fun m!7905104 () Bool)

(assert (=> start!702312 m!7905104))

(declare-fun m!7905106 () Bool)

(assert (=> start!702312 m!7905106))

(declare-fun m!7905108 () Bool)

(assert (=> start!702312 m!7905108))

(declare-fun m!7905110 () Bool)

(assert (=> start!702312 m!7905110))

(check-sat (not b!7234825) (not b!7234833) (not b!7234823) (not b!7234832) (not b!7234829) (not b!7234827) (not b!7234824) (not start!702312) (not b!7234831) (not b!7234830) (not b!7234826) tp_is_empty!46491 (not b!7234828))
(check-sat)
