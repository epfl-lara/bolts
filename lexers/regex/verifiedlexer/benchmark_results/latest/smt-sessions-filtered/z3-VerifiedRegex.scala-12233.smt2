; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689284 () Bool)

(assert start!689284)

(declare-fun b!7082941 () Bool)

(assert (=> b!7082941 true))

(declare-fun bs!1882560 () Bool)

(declare-fun b!7082942 () Bool)

(assert (= bs!1882560 (and b!7082942 b!7082941)))

(declare-fun lambda!428557 () Int)

(declare-fun lambda!428556 () Int)

(assert (=> bs!1882560 (not (= lambda!428557 lambda!428556))))

(declare-fun b!7082936 () Bool)

(declare-fun res!2893489 () Bool)

(declare-fun e!4258234 () Bool)

(assert (=> b!7082936 (=> (not res!2893489) (not e!4258234))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35696 0))(
  ( (C!35697 (val!27550 Int)) )
))
(declare-datatypes ((Regex!17713 0))(
  ( (ElementMatch!17713 (c!1322090 C!35696)) (Concat!26558 (regOne!35938 Regex!17713) (regTwo!35938 Regex!17713)) (EmptyExpr!17713) (Star!17713 (reg!18042 Regex!17713)) (EmptyLang!17713) (Union!17713 (regOne!35939 Regex!17713) (regTwo!35939 Regex!17713)) )
))
(declare-datatypes ((List!68662 0))(
  ( (Nil!68538) (Cons!68538 (h!74986 Regex!17713) (t!382447 List!68662)) )
))
(declare-datatypes ((Context!13418 0))(
  ( (Context!13419 (exprs!7209 List!68662)) )
))
(declare-fun lt!2553844 () (InoxSet Context!13418))

(declare-fun lambda!428554 () Int)

(declare-fun exists!3812 ((InoxSet Context!13418) Int) Bool)

(assert (=> b!7082936 (= res!2893489 (exists!3812 lt!2553844 lambda!428554))))

(declare-fun b!7082937 () Bool)

(declare-fun e!4258231 () Bool)

(assert (=> b!7082937 (= e!4258231 true)))

(declare-fun lt!2553854 () Bool)

(declare-fun lt!2553848 () (InoxSet Context!13418))

(declare-datatypes ((List!68663 0))(
  ( (Nil!68539) (Cons!68539 (h!74987 C!35696) (t!382448 List!68663)) )
))
(declare-fun matchZipper!3253 ((InoxSet Context!13418) List!68663) Bool)

(assert (=> b!7082937 (= lt!2553854 (matchZipper!3253 lt!2553848 Nil!68539))))

(declare-fun b!7082938 () Bool)

(declare-fun e!4258236 () Bool)

(declare-fun tp_is_empty!44651 () Bool)

(declare-fun tp!1944024 () Bool)

(assert (=> b!7082938 (= e!4258236 (and tp_is_empty!44651 tp!1944024))))

(declare-fun b!7082939 () Bool)

(declare-fun e!4258238 () Bool)

(declare-fun tp!1944022 () Bool)

(assert (=> b!7082939 (= e!4258238 tp!1944022)))

(declare-fun b!7082940 () Bool)

(declare-fun e!4258237 () Bool)

(assert (=> b!7082940 (= e!4258234 e!4258237)))

(declare-fun res!2893488 () Bool)

(assert (=> b!7082940 (=> (not res!2893488) (not e!4258237))))

(declare-fun lt!2553849 () Context!13418)

(declare-fun nullableContext!124 (Context!13418) Bool)

(assert (=> b!7082940 (= res!2893488 (nullableContext!124 lt!2553849))))

(declare-fun getWitness!1854 ((InoxSet Context!13418) Int) Context!13418)

(assert (=> b!7082940 (= lt!2553849 (getWitness!1854 lt!2553844 lambda!428554))))

(declare-fun e!4258233 () Bool)

(assert (=> b!7082941 (= e!4258237 e!4258233)))

(declare-fun res!2893487 () Bool)

(assert (=> b!7082941 (=> (not res!2893487) (not e!4258233))))

(declare-fun lt!2553852 () List!68662)

(assert (=> b!7082941 (= res!2893487 (= (Context!13419 lt!2553852) lt!2553849))))

(declare-fun lt!2553851 () Context!13418)

(declare-fun ct2!306 () Context!13418)

(declare-fun ++!15884 (List!68662 List!68662) List!68662)

(assert (=> b!7082941 (= lt!2553852 (++!15884 (exprs!7209 lt!2553851) (exprs!7209 ct2!306)))))

(declare-datatypes ((Unit!162137 0))(
  ( (Unit!162138) )
))
(declare-fun lt!2553847 () Unit!162137)

(declare-fun lemmaConcatPreservesForall!1024 (List!68662 List!68662 Int) Unit!162137)

(assert (=> b!7082941 (= lt!2553847 (lemmaConcatPreservesForall!1024 (exprs!7209 lt!2553851) (exprs!7209 ct2!306) lambda!428556))))

(declare-fun z1!570 () (InoxSet Context!13418))

(declare-fun lambda!428555 () Int)

(declare-fun mapPost2!540 ((InoxSet Context!13418) Int Context!13418) Context!13418)

(assert (=> b!7082941 (= lt!2553851 (mapPost2!540 z1!570 lambda!428555 lt!2553849))))

(declare-fun setRes!50611 () Bool)

(declare-fun e!4258232 () Bool)

(declare-fun setElem!50611 () Context!13418)

(declare-fun setNonEmpty!50611 () Bool)

(declare-fun tp!1944023 () Bool)

(declare-fun inv!87141 (Context!13418) Bool)

(assert (=> setNonEmpty!50611 (= setRes!50611 (and tp!1944023 (inv!87141 setElem!50611) e!4258232))))

(declare-fun setRest!50611 () (InoxSet Context!13418))

(assert (=> setNonEmpty!50611 (= z1!570 ((_ map or) (store ((as const (Array Context!13418 Bool)) false) setElem!50611 true) setRest!50611))))

(declare-fun e!4258235 () Bool)

(assert (=> b!7082942 (= e!4258233 (not e!4258235))))

(declare-fun res!2893486 () Bool)

(assert (=> b!7082942 (=> res!2893486 e!4258235)))

(assert (=> b!7082942 (= res!2893486 (not (nullableContext!124 lt!2553851)))))

(declare-fun lt!2553850 () Unit!162137)

(declare-fun lemmaContentSubsetPreservesForall!358 (List!68662 List!68662 Int) Unit!162137)

(assert (=> b!7082942 (= lt!2553850 (lemmaContentSubsetPreservesForall!358 lt!2553852 (exprs!7209 ct2!306) lambda!428557))))

(declare-fun lt!2553845 () Unit!162137)

(assert (=> b!7082942 (= lt!2553845 (lemmaContentSubsetPreservesForall!358 lt!2553852 (exprs!7209 lt!2553851) lambda!428557))))

(declare-fun subseq!707 (List!68662 List!68662) Bool)

(assert (=> b!7082942 (subseq!707 (exprs!7209 ct2!306) lt!2553852)))

(declare-fun lt!2553842 () Unit!162137)

(declare-fun lemmaConcatThenSecondSubseqOfTot!28 (List!68662 List!68662) Unit!162137)

(assert (=> b!7082942 (= lt!2553842 (lemmaConcatThenSecondSubseqOfTot!28 (exprs!7209 lt!2553851) (exprs!7209 ct2!306)))))

(assert (=> b!7082942 (subseq!707 (exprs!7209 lt!2553851) lt!2553852)))

(declare-fun lt!2553853 () Unit!162137)

(declare-fun lemmaConcatThenFirstSubseqOfTot!28 (List!68662 List!68662) Unit!162137)

(assert (=> b!7082942 (= lt!2553853 (lemmaConcatThenFirstSubseqOfTot!28 (exprs!7209 lt!2553851) (exprs!7209 ct2!306)))))

(declare-fun b!7082943 () Bool)

(declare-fun tp!1944021 () Bool)

(assert (=> b!7082943 (= e!4258232 tp!1944021)))

(declare-fun b!7082935 () Bool)

(declare-fun res!2893491 () Bool)

(assert (=> b!7082935 (=> (not res!2893491) (not e!4258234))))

(declare-fun s!7408 () List!68663)

(get-info :version)

(assert (=> b!7082935 (= res!2893491 (not ((_ is Cons!68539) s!7408)))))

(declare-fun res!2893492 () Bool)

(assert (=> start!689284 (=> (not res!2893492) (not e!4258234))))

(assert (=> start!689284 (= res!2893492 (matchZipper!3253 lt!2553844 s!7408))))

(declare-fun appendTo!834 ((InoxSet Context!13418) Context!13418) (InoxSet Context!13418))

(assert (=> start!689284 (= lt!2553844 (appendTo!834 z1!570 ct2!306))))

(assert (=> start!689284 e!4258234))

(declare-fun condSetEmpty!50611 () Bool)

(assert (=> start!689284 (= condSetEmpty!50611 (= z1!570 ((as const (Array Context!13418 Bool)) false)))))

(assert (=> start!689284 setRes!50611))

(assert (=> start!689284 (and (inv!87141 ct2!306) e!4258238)))

(assert (=> start!689284 e!4258236))

(declare-fun b!7082944 () Bool)

(assert (=> b!7082944 (= e!4258235 e!4258231)))

(declare-fun res!2893490 () Bool)

(assert (=> b!7082944 (=> res!2893490 e!4258231)))

(assert (=> b!7082944 (= res!2893490 (not (matchZipper!3253 z1!570 Nil!68539)))))

(assert (=> b!7082944 (exists!3812 lt!2553848 lambda!428554)))

(declare-fun lt!2553843 () Unit!162137)

(declare-fun lemmaContainsThenExists!189 ((InoxSet Context!13418) Context!13418 Int) Unit!162137)

(assert (=> b!7082944 (= lt!2553843 (lemmaContainsThenExists!189 lt!2553848 ct2!306 lambda!428554))))

(assert (=> b!7082944 (= lt!2553848 (store ((as const (Array Context!13418 Bool)) false) ct2!306 true))))

(assert (=> b!7082944 (exists!3812 z1!570 lambda!428554)))

(declare-fun lt!2553846 () Unit!162137)

(assert (=> b!7082944 (= lt!2553846 (lemmaContainsThenExists!189 z1!570 lt!2553851 lambda!428554))))

(declare-fun b!7082945 () Bool)

(declare-fun res!2893484 () Bool)

(assert (=> b!7082945 (=> (not res!2893484) (not e!4258234))))

(declare-fun nullableZipper!2744 ((InoxSet Context!13418)) Bool)

(assert (=> b!7082945 (= res!2893484 (nullableZipper!2744 lt!2553844))))

(declare-fun setIsEmpty!50611 () Bool)

(assert (=> setIsEmpty!50611 setRes!50611))

(declare-fun b!7082946 () Bool)

(declare-fun res!2893485 () Bool)

(assert (=> b!7082946 (=> res!2893485 e!4258235)))

(assert (=> b!7082946 (= res!2893485 (not (nullableContext!124 ct2!306)))))

(assert (= (and start!689284 res!2893492) b!7082935))

(assert (= (and b!7082935 res!2893491) b!7082945))

(assert (= (and b!7082945 res!2893484) b!7082936))

(assert (= (and b!7082936 res!2893489) b!7082940))

(assert (= (and b!7082940 res!2893488) b!7082941))

(assert (= (and b!7082941 res!2893487) b!7082942))

(assert (= (and b!7082942 (not res!2893486)) b!7082946))

(assert (= (and b!7082946 (not res!2893485)) b!7082944))

(assert (= (and b!7082944 (not res!2893490)) b!7082937))

(assert (= (and start!689284 condSetEmpty!50611) setIsEmpty!50611))

(assert (= (and start!689284 (not condSetEmpty!50611)) setNonEmpty!50611))

(assert (= setNonEmpty!50611 b!7082943))

(assert (= start!689284 b!7082939))

(assert (= (and start!689284 ((_ is Cons!68539) s!7408)) b!7082938))

(declare-fun m!7814728 () Bool)

(assert (=> b!7082941 m!7814728))

(declare-fun m!7814730 () Bool)

(assert (=> b!7082941 m!7814730))

(declare-fun m!7814732 () Bool)

(assert (=> b!7082941 m!7814732))

(declare-fun m!7814734 () Bool)

(assert (=> b!7082945 m!7814734))

(declare-fun m!7814736 () Bool)

(assert (=> b!7082940 m!7814736))

(declare-fun m!7814738 () Bool)

(assert (=> b!7082940 m!7814738))

(declare-fun m!7814740 () Bool)

(assert (=> b!7082944 m!7814740))

(declare-fun m!7814742 () Bool)

(assert (=> b!7082944 m!7814742))

(declare-fun m!7814744 () Bool)

(assert (=> b!7082944 m!7814744))

(declare-fun m!7814746 () Bool)

(assert (=> b!7082944 m!7814746))

(declare-fun m!7814748 () Bool)

(assert (=> b!7082944 m!7814748))

(declare-fun m!7814750 () Bool)

(assert (=> b!7082944 m!7814750))

(declare-fun m!7814752 () Bool)

(assert (=> b!7082936 m!7814752))

(declare-fun m!7814754 () Bool)

(assert (=> b!7082946 m!7814754))

(declare-fun m!7814756 () Bool)

(assert (=> b!7082937 m!7814756))

(declare-fun m!7814758 () Bool)

(assert (=> start!689284 m!7814758))

(declare-fun m!7814760 () Bool)

(assert (=> start!689284 m!7814760))

(declare-fun m!7814762 () Bool)

(assert (=> start!689284 m!7814762))

(declare-fun m!7814764 () Bool)

(assert (=> b!7082942 m!7814764))

(declare-fun m!7814766 () Bool)

(assert (=> b!7082942 m!7814766))

(declare-fun m!7814768 () Bool)

(assert (=> b!7082942 m!7814768))

(declare-fun m!7814770 () Bool)

(assert (=> b!7082942 m!7814770))

(declare-fun m!7814772 () Bool)

(assert (=> b!7082942 m!7814772))

(declare-fun m!7814774 () Bool)

(assert (=> b!7082942 m!7814774))

(declare-fun m!7814776 () Bool)

(assert (=> b!7082942 m!7814776))

(declare-fun m!7814778 () Bool)

(assert (=> setNonEmpty!50611 m!7814778))

(check-sat (not b!7082937) (not b!7082945) tp_is_empty!44651 (not b!7082938) (not start!689284) (not b!7082946) (not b!7082944) (not setNonEmpty!50611) (not b!7082941) (not b!7082940) (not b!7082943) (not b!7082939) (not b!7082942) (not b!7082936))
(check-sat)
