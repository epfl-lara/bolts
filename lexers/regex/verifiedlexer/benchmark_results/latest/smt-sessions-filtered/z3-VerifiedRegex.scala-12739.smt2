; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704256 () Bool)

(assert start!704256)

(declare-fun b!7244248 () Bool)

(assert (=> b!7244248 true))

(declare-fun b!7244254 () Bool)

(assert (=> b!7244254 true))

(declare-fun b!7244241 () Bool)

(declare-fun e!4343416 () Bool)

(declare-fun lt!2581829 () Bool)

(assert (=> b!7244241 (= e!4343416 lt!2581829)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37448 0))(
  ( (C!37449 (val!28672 Int)) )
))
(declare-datatypes ((Regex!18587 0))(
  ( (ElementMatch!18587 (c!1345578 C!37448)) (Concat!27432 (regOne!37686 Regex!18587) (regTwo!37686 Regex!18587)) (EmptyExpr!18587) (Star!18587 (reg!18916 Regex!18587)) (EmptyLang!18587) (Union!18587 (regOne!37687 Regex!18587) (regTwo!37687 Regex!18587)) )
))
(declare-datatypes ((List!70358 0))(
  ( (Nil!70234) (Cons!70234 (h!76682 Regex!18587) (t!384409 List!70358)) )
))
(declare-datatypes ((Context!15054 0))(
  ( (Context!15055 (exprs!8027 List!70358)) )
))
(declare-fun lt!2581823 () (InoxSet Context!15054))

(declare-datatypes ((List!70359 0))(
  ( (Nil!70235) (Cons!70235 (h!76683 C!37448) (t!384410 List!70359)) )
))
(declare-fun lt!2581815 () List!70359)

(declare-fun e!4343426 () Bool)

(declare-fun matchZipper!3497 ((InoxSet Context!15054) List!70359) Bool)

(assert (=> b!7244241 (= (matchZipper!3497 lt!2581823 lt!2581815) e!4343426)))

(declare-fun res!2938617 () Bool)

(assert (=> b!7244241 (=> res!2938617 e!4343426)))

(declare-fun lt!2581811 () (InoxSet Context!15054))

(assert (=> b!7244241 (= res!2938617 (matchZipper!3497 lt!2581811 lt!2581815))))

(declare-fun lt!2581832 () (InoxSet Context!15054))

(declare-datatypes ((Unit!163760 0))(
  ( (Unit!163761) )
))
(declare-fun lt!2581827 () Unit!163760)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1706 ((InoxSet Context!15054) (InoxSet Context!15054) List!70359) Unit!163760)

(assert (=> b!7244241 (= lt!2581827 (lemmaZipperConcatMatchesSameAsBothZippers!1706 lt!2581811 lt!2581832 lt!2581815))))

(declare-fun ct1!232 () Context!15054)

(declare-fun lambda!442737 () Int)

(declare-fun lt!2581833 () Unit!163760)

(declare-fun ct2!328 () Context!15054)

(declare-fun lemmaConcatPreservesForall!1396 (List!70358 List!70358 Int) Unit!163760)

(assert (=> b!7244241 (= lt!2581833 (lemmaConcatPreservesForall!1396 (exprs!8027 ct1!232) (exprs!8027 ct2!328) lambda!442737))))

(declare-fun lt!2581828 () Bool)

(assert (=> b!7244241 (= lt!2581828 lt!2581829)))

(declare-fun e!4343428 () Bool)

(assert (=> b!7244241 (= lt!2581829 e!4343428)))

(declare-fun res!2938609 () Bool)

(assert (=> b!7244241 (=> res!2938609 e!4343428)))

(declare-fun lt!2581814 () Bool)

(assert (=> b!7244241 (= res!2938609 lt!2581814)))

(declare-fun lt!2581824 () (InoxSet Context!15054))

(declare-fun s1!1971 () List!70359)

(assert (=> b!7244241 (= lt!2581828 (matchZipper!3497 lt!2581824 (t!384410 s1!1971)))))

(declare-fun lt!2581819 () (InoxSet Context!15054))

(assert (=> b!7244241 (= lt!2581814 (matchZipper!3497 lt!2581819 (t!384410 s1!1971)))))

(declare-fun lt!2581817 () Unit!163760)

(declare-fun lt!2581841 () (InoxSet Context!15054))

(assert (=> b!7244241 (= lt!2581817 (lemmaZipperConcatMatchesSameAsBothZippers!1706 lt!2581819 lt!2581841 (t!384410 s1!1971)))))

(declare-fun b!7244242 () Bool)

(assert (=> b!7244242 (= e!4343428 (matchZipper!3497 lt!2581841 (t!384410 s1!1971)))))

(declare-fun b!7244243 () Bool)

(declare-fun res!2938616 () Bool)

(assert (=> b!7244243 (=> res!2938616 e!4343416)))

(declare-fun lt!2581810 () (InoxSet Context!15054))

(declare-fun lt!2581830 () (InoxSet Context!15054))

(declare-fun derivationStepZipper!3375 ((InoxSet Context!15054) C!37448) (InoxSet Context!15054))

(assert (=> b!7244243 (= res!2938616 (not (= (derivationStepZipper!3375 lt!2581810 (h!76683 s1!1971)) lt!2581830)))))

(declare-fun b!7244244 () Bool)

(declare-fun res!2938615 () Bool)

(declare-fun e!4343429 () Bool)

(assert (=> b!7244244 (=> (not res!2938615) (not e!4343429))))

(declare-fun s2!1849 () List!70359)

(assert (=> b!7244244 (= res!2938615 (matchZipper!3497 (store ((as const (Array Context!15054 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7244245 () Bool)

(assert (=> b!7244245 (= e!4343426 (matchZipper!3497 lt!2581832 lt!2581815))))

(declare-fun b!7244246 () Bool)

(declare-fun e!4343427 () Bool)

(assert (=> b!7244246 (= e!4343429 e!4343427)))

(declare-fun res!2938614 () Bool)

(assert (=> b!7244246 (=> (not res!2938614) (not e!4343427))))

(get-info :version)

(assert (=> b!7244246 (= res!2938614 (and (not ((_ is Nil!70234) (exprs!8027 ct1!232))) ((_ is Cons!70235) s1!1971)))))

(declare-fun lt!2581838 () Context!15054)

(assert (=> b!7244246 (= lt!2581810 (store ((as const (Array Context!15054 Bool)) false) lt!2581838 true))))

(declare-fun lt!2581839 () List!70358)

(assert (=> b!7244246 (= lt!2581838 (Context!15055 lt!2581839))))

(declare-fun ++!16458 (List!70358 List!70358) List!70358)

(assert (=> b!7244246 (= lt!2581839 (++!16458 (exprs!8027 ct1!232) (exprs!8027 ct2!328)))))

(declare-fun lt!2581818 () Unit!163760)

(assert (=> b!7244246 (= lt!2581818 (lemmaConcatPreservesForall!1396 (exprs!8027 ct1!232) (exprs!8027 ct2!328) lambda!442737))))

(declare-fun b!7244247 () Bool)

(declare-fun e!4343421 () Bool)

(declare-fun tp_is_empty!46639 () Bool)

(declare-fun tp!2035971 () Bool)

(assert (=> b!7244247 (= e!4343421 (and tp_is_empty!46639 tp!2035971))))

(declare-fun res!2938608 () Bool)

(assert (=> start!704256 (=> (not res!2938608) (not e!4343429))))

(declare-fun lt!2581825 () (InoxSet Context!15054))

(assert (=> start!704256 (= res!2938608 (matchZipper!3497 lt!2581825 s1!1971))))

(assert (=> start!704256 (= lt!2581825 (store ((as const (Array Context!15054 Bool)) false) ct1!232 true))))

(assert (=> start!704256 e!4343429))

(declare-fun e!4343425 () Bool)

(declare-fun inv!89477 (Context!15054) Bool)

(assert (=> start!704256 (and (inv!89477 ct1!232) e!4343425)))

(assert (=> start!704256 e!4343421))

(declare-fun e!4343420 () Bool)

(assert (=> start!704256 e!4343420))

(declare-fun e!4343424 () Bool)

(assert (=> start!704256 (and (inv!89477 ct2!328) e!4343424)))

(declare-fun e!4343418 () Bool)

(declare-fun e!4343423 () Bool)

(assert (=> b!7244248 (= e!4343418 (not e!4343423))))

(declare-fun res!2938610 () Bool)

(assert (=> b!7244248 (=> res!2938610 e!4343423)))

(declare-fun lt!2581816 () (InoxSet Context!15054))

(declare-fun lambda!442738 () Int)

(declare-fun exists!4293 ((InoxSet Context!15054) Int) Bool)

(assert (=> b!7244248 (= res!2938610 (not (exists!4293 lt!2581816 lambda!442738)))))

(declare-datatypes ((List!70360 0))(
  ( (Nil!70236) (Cons!70236 (h!76684 Context!15054) (t!384411 List!70360)) )
))
(declare-fun lt!2581831 () List!70360)

(declare-fun exists!4294 (List!70360 Int) Bool)

(assert (=> b!7244248 (exists!4294 lt!2581831 lambda!442738)))

(declare-fun lt!2581840 () Unit!163760)

(declare-fun lemmaZipperMatchesExistsMatchingContext!714 (List!70360 List!70359) Unit!163760)

(assert (=> b!7244248 (= lt!2581840 (lemmaZipperMatchesExistsMatchingContext!714 lt!2581831 (t!384410 s1!1971)))))

(declare-fun toList!11433 ((InoxSet Context!15054)) List!70360)

(assert (=> b!7244248 (= lt!2581831 (toList!11433 lt!2581816))))

(declare-fun b!7244249 () Bool)

(declare-fun e!4343430 () Bool)

(assert (=> b!7244249 (= e!4343430 e!4343416)))

(declare-fun res!2938619 () Bool)

(assert (=> b!7244249 (=> res!2938619 e!4343416)))

(assert (=> b!7244249 (= res!2938619 (not (= lt!2581830 lt!2581823)))))

(assert (=> b!7244249 (= lt!2581823 ((_ map or) lt!2581811 lt!2581832))))

(declare-fun lt!2581835 () Context!15054)

(declare-fun derivationStepZipperUp!2441 (Context!15054 C!37448) (InoxSet Context!15054))

(assert (=> b!7244249 (= lt!2581832 (derivationStepZipperUp!2441 lt!2581835 (h!76683 s1!1971)))))

(declare-fun lt!2581826 () Unit!163760)

(assert (=> b!7244249 (= lt!2581826 (lemmaConcatPreservesForall!1396 (exprs!8027 ct1!232) (exprs!8027 ct2!328) lambda!442737))))

(declare-fun b!7244250 () Bool)

(declare-fun e!4343422 () Bool)

(declare-fun e!4343417 () Bool)

(assert (=> b!7244250 (= e!4343422 e!4343417)))

(declare-fun res!2938612 () Bool)

(assert (=> b!7244250 (=> res!2938612 e!4343417)))

(declare-fun isEmpty!40461 (List!70358) Bool)

(assert (=> b!7244250 (= res!2938612 (isEmpty!40461 lt!2581839))))

(declare-fun lt!2581812 () Unit!163760)

(assert (=> b!7244250 (= lt!2581812 (lemmaConcatPreservesForall!1396 (exprs!8027 ct1!232) (exprs!8027 ct2!328) lambda!442737))))

(assert (=> b!7244250 (= lt!2581830 (derivationStepZipperUp!2441 lt!2581838 (h!76683 s1!1971)))))

(declare-fun lt!2581843 () Unit!163760)

(assert (=> b!7244250 (= lt!2581843 (lemmaConcatPreservesForall!1396 (exprs!8027 ct1!232) (exprs!8027 ct2!328) lambda!442737))))

(declare-fun lt!2581837 () Context!15054)

(declare-fun derivationStepZipperDown!2611 (Regex!18587 Context!15054 C!37448) (InoxSet Context!15054))

(assert (=> b!7244250 (= lt!2581819 (derivationStepZipperDown!2611 (h!76682 (exprs!8027 ct1!232)) lt!2581837 (h!76683 s1!1971)))))

(declare-fun tail!14254 (List!70358) List!70358)

(assert (=> b!7244250 (= lt!2581837 (Context!15055 (tail!14254 (exprs!8027 ct1!232))))))

(declare-fun b!7244251 () Bool)

(declare-fun tp!2035972 () Bool)

(assert (=> b!7244251 (= e!4343420 (and tp_is_empty!46639 tp!2035972))))

(declare-fun b!7244252 () Bool)

(declare-fun tp!2035969 () Bool)

(assert (=> b!7244252 (= e!4343424 tp!2035969)))

(declare-fun b!7244253 () Bool)

(assert (=> b!7244253 (= e!4343427 e!4343418)))

(declare-fun res!2938611 () Bool)

(assert (=> b!7244253 (=> (not res!2938611) (not e!4343418))))

(assert (=> b!7244253 (= res!2938611 (matchZipper!3497 lt!2581816 (t!384410 s1!1971)))))

(assert (=> b!7244253 (= lt!2581816 (derivationStepZipper!3375 lt!2581825 (h!76683 s1!1971)))))

(declare-fun e!4343419 () Bool)

(assert (=> b!7244254 (= e!4343417 e!4343419)))

(declare-fun res!2938618 () Bool)

(assert (=> b!7244254 (=> res!2938618 e!4343419)))

(declare-fun nullable!7880 (Regex!18587) Bool)

(assert (=> b!7244254 (= res!2938618 (not (nullable!7880 (h!76682 (exprs!8027 ct1!232)))))))

(declare-fun lambda!442739 () Int)

(declare-fun flatMap!2775 ((InoxSet Context!15054) Int) (InoxSet Context!15054))

(assert (=> b!7244254 (= (flatMap!2775 lt!2581810 lambda!442739) (derivationStepZipperUp!2441 lt!2581838 (h!76683 s1!1971)))))

(declare-fun lt!2581820 () Unit!163760)

(declare-fun lemmaFlatMapOnSingletonSet!2198 ((InoxSet Context!15054) Context!15054 Int) Unit!163760)

(assert (=> b!7244254 (= lt!2581820 (lemmaFlatMapOnSingletonSet!2198 lt!2581810 lt!2581838 lambda!442739))))

(declare-fun lt!2581813 () Unit!163760)

(assert (=> b!7244254 (= lt!2581813 (lemmaConcatPreservesForall!1396 (exprs!8027 ct1!232) (exprs!8027 ct2!328) lambda!442737))))

(assert (=> b!7244254 (= (flatMap!2775 lt!2581825 lambda!442739) (derivationStepZipperUp!2441 ct1!232 (h!76683 s1!1971)))))

(declare-fun lt!2581822 () Unit!163760)

(assert (=> b!7244254 (= lt!2581822 (lemmaFlatMapOnSingletonSet!2198 lt!2581825 ct1!232 lambda!442739))))

(assert (=> b!7244254 (= lt!2581811 (derivationStepZipperDown!2611 (h!76682 (exprs!8027 ct1!232)) lt!2581835 (h!76683 s1!1971)))))

(assert (=> b!7244254 (= lt!2581835 (Context!15055 (tail!14254 lt!2581839)))))

(declare-fun b!7244255 () Bool)

(declare-fun tp!2035970 () Bool)

(assert (=> b!7244255 (= e!4343425 tp!2035970)))

(declare-fun b!7244256 () Bool)

(assert (=> b!7244256 (= e!4343419 e!4343430)))

(declare-fun res!2938620 () Bool)

(assert (=> b!7244256 (=> res!2938620 e!4343430)))

(declare-fun lt!2581844 () (InoxSet Context!15054))

(assert (=> b!7244256 (= res!2938620 (or (not (= lt!2581844 lt!2581824)) (not (= lt!2581816 lt!2581844))))))

(assert (=> b!7244256 (= lt!2581824 ((_ map or) lt!2581819 lt!2581841))))

(assert (=> b!7244256 (= lt!2581841 (derivationStepZipperUp!2441 lt!2581837 (h!76683 s1!1971)))))

(declare-fun b!7244257 () Bool)

(assert (=> b!7244257 (= e!4343423 e!4343422)))

(declare-fun res!2938613 () Bool)

(assert (=> b!7244257 (=> res!2938613 e!4343422)))

(assert (=> b!7244257 (= res!2938613 (isEmpty!40461 (exprs!8027 ct1!232)))))

(assert (=> b!7244257 (= lt!2581844 (derivationStepZipperUp!2441 ct1!232 (h!76683 s1!1971)))))

(declare-fun lt!2581842 () Context!15054)

(declare-fun lt!2581834 () Unit!163760)

(assert (=> b!7244257 (= lt!2581834 (lemmaConcatPreservesForall!1396 (exprs!8027 lt!2581842) (exprs!8027 ct2!328) lambda!442737))))

(declare-fun lt!2581845 () List!70358)

(assert (=> b!7244257 (matchZipper!3497 (store ((as const (Array Context!15054 Bool)) false) (Context!15055 lt!2581845) true) lt!2581815)))

(declare-fun ++!16459 (List!70359 List!70359) List!70359)

(assert (=> b!7244257 (= lt!2581815 (++!16459 (t!384410 s1!1971) s2!1849))))

(assert (=> b!7244257 (= lt!2581845 (++!16458 (exprs!8027 lt!2581842) (exprs!8027 ct2!328)))))

(declare-fun lt!2581821 () Unit!163760)

(assert (=> b!7244257 (= lt!2581821 (lemmaConcatPreservesForall!1396 (exprs!8027 lt!2581842) (exprs!8027 ct2!328) lambda!442737))))

(declare-fun lt!2581836 () Unit!163760)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!360 (Context!15054 Context!15054 List!70359 List!70359) Unit!163760)

(assert (=> b!7244257 (= lt!2581836 (lemmaConcatenateContextMatchesConcatOfStrings!360 lt!2581842 ct2!328 (t!384410 s1!1971) s2!1849))))

(declare-fun getWitness!2138 ((InoxSet Context!15054) Int) Context!15054)

(assert (=> b!7244257 (= lt!2581842 (getWitness!2138 lt!2581816 lambda!442738))))

(assert (= (and start!704256 res!2938608) b!7244244))

(assert (= (and b!7244244 res!2938615) b!7244246))

(assert (= (and b!7244246 res!2938614) b!7244253))

(assert (= (and b!7244253 res!2938611) b!7244248))

(assert (= (and b!7244248 (not res!2938610)) b!7244257))

(assert (= (and b!7244257 (not res!2938613)) b!7244250))

(assert (= (and b!7244250 (not res!2938612)) b!7244254))

(assert (= (and b!7244254 (not res!2938618)) b!7244256))

(assert (= (and b!7244256 (not res!2938620)) b!7244249))

(assert (= (and b!7244249 (not res!2938619)) b!7244243))

(assert (= (and b!7244243 (not res!2938616)) b!7244241))

(assert (= (and b!7244241 (not res!2938609)) b!7244242))

(assert (= (and b!7244241 (not res!2938617)) b!7244245))

(assert (= start!704256 b!7244255))

(assert (= (and start!704256 ((_ is Cons!70235) s1!1971)) b!7244247))

(assert (= (and start!704256 ((_ is Cons!70235) s2!1849)) b!7244251))

(assert (= start!704256 b!7244252))

(declare-fun m!7919984 () Bool)

(assert (=> b!7244246 m!7919984))

(declare-fun m!7919986 () Bool)

(assert (=> b!7244246 m!7919986))

(declare-fun m!7919988 () Bool)

(assert (=> b!7244246 m!7919988))

(declare-fun m!7919990 () Bool)

(assert (=> b!7244253 m!7919990))

(declare-fun m!7919992 () Bool)

(assert (=> b!7244253 m!7919992))

(declare-fun m!7919994 () Bool)

(assert (=> b!7244241 m!7919994))

(declare-fun m!7919996 () Bool)

(assert (=> b!7244241 m!7919996))

(assert (=> b!7244241 m!7919988))

(declare-fun m!7919998 () Bool)

(assert (=> b!7244241 m!7919998))

(declare-fun m!7920000 () Bool)

(assert (=> b!7244241 m!7920000))

(declare-fun m!7920002 () Bool)

(assert (=> b!7244241 m!7920002))

(declare-fun m!7920004 () Bool)

(assert (=> b!7244241 m!7920004))

(declare-fun m!7920006 () Bool)

(assert (=> b!7244243 m!7920006))

(declare-fun m!7920008 () Bool)

(assert (=> b!7244248 m!7920008))

(declare-fun m!7920010 () Bool)

(assert (=> b!7244248 m!7920010))

(declare-fun m!7920012 () Bool)

(assert (=> b!7244248 m!7920012))

(declare-fun m!7920014 () Bool)

(assert (=> b!7244248 m!7920014))

(declare-fun m!7920016 () Bool)

(assert (=> b!7244254 m!7920016))

(declare-fun m!7920018 () Bool)

(assert (=> b!7244254 m!7920018))

(declare-fun m!7920020 () Bool)

(assert (=> b!7244254 m!7920020))

(declare-fun m!7920022 () Bool)

(assert (=> b!7244254 m!7920022))

(declare-fun m!7920024 () Bool)

(assert (=> b!7244254 m!7920024))

(assert (=> b!7244254 m!7919988))

(declare-fun m!7920026 () Bool)

(assert (=> b!7244254 m!7920026))

(declare-fun m!7920028 () Bool)

(assert (=> b!7244254 m!7920028))

(declare-fun m!7920030 () Bool)

(assert (=> b!7244254 m!7920030))

(declare-fun m!7920032 () Bool)

(assert (=> b!7244254 m!7920032))

(declare-fun m!7920034 () Bool)

(assert (=> b!7244244 m!7920034))

(assert (=> b!7244244 m!7920034))

(declare-fun m!7920036 () Bool)

(assert (=> b!7244244 m!7920036))

(declare-fun m!7920038 () Bool)

(assert (=> b!7244256 m!7920038))

(declare-fun m!7920040 () Bool)

(assert (=> b!7244249 m!7920040))

(assert (=> b!7244249 m!7919988))

(declare-fun m!7920042 () Bool)

(assert (=> b!7244257 m!7920042))

(declare-fun m!7920044 () Bool)

(assert (=> b!7244257 m!7920044))

(declare-fun m!7920046 () Bool)

(assert (=> b!7244257 m!7920046))

(declare-fun m!7920048 () Bool)

(assert (=> b!7244257 m!7920048))

(assert (=> b!7244257 m!7920044))

(declare-fun m!7920050 () Bool)

(assert (=> b!7244257 m!7920050))

(assert (=> b!7244257 m!7920022))

(assert (=> b!7244257 m!7920048))

(declare-fun m!7920052 () Bool)

(assert (=> b!7244257 m!7920052))

(declare-fun m!7920054 () Bool)

(assert (=> b!7244257 m!7920054))

(declare-fun m!7920056 () Bool)

(assert (=> b!7244257 m!7920056))

(declare-fun m!7920058 () Bool)

(assert (=> b!7244242 m!7920058))

(declare-fun m!7920060 () Bool)

(assert (=> start!704256 m!7920060))

(declare-fun m!7920062 () Bool)

(assert (=> start!704256 m!7920062))

(declare-fun m!7920064 () Bool)

(assert (=> start!704256 m!7920064))

(declare-fun m!7920066 () Bool)

(assert (=> start!704256 m!7920066))

(declare-fun m!7920068 () Bool)

(assert (=> b!7244245 m!7920068))

(assert (=> b!7244250 m!7919988))

(assert (=> b!7244250 m!7919988))

(declare-fun m!7920070 () Bool)

(assert (=> b!7244250 m!7920070))

(assert (=> b!7244250 m!7920024))

(declare-fun m!7920072 () Bool)

(assert (=> b!7244250 m!7920072))

(declare-fun m!7920074 () Bool)

(assert (=> b!7244250 m!7920074))

(check-sat (not b!7244251) (not b!7244247) (not b!7244249) (not b!7244248) (not b!7244244) (not b!7244255) (not b!7244253) (not b!7244245) (not b!7244246) (not b!7244252) (not b!7244250) (not start!704256) (not b!7244256) (not b!7244254) tp_is_empty!46639 (not b!7244257) (not b!7244241) (not b!7244242) (not b!7244243))
(check-sat)
