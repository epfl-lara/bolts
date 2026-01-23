; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!576968 () Bool)

(assert start!576968)

(declare-fun b!5528804 () Bool)

(assert (=> b!5528804 true))

(assert (=> b!5528804 true))

(declare-fun lambda!296635 () Int)

(declare-fun lambda!296634 () Int)

(assert (=> b!5528804 (not (= lambda!296635 lambda!296634))))

(assert (=> b!5528804 true))

(assert (=> b!5528804 true))

(declare-fun b!5528779 () Bool)

(assert (=> b!5528779 true))

(declare-fun e!3417835 () Bool)

(declare-fun e!3417828 () Bool)

(assert (=> b!5528779 (= e!3417835 e!3417828)))

(declare-fun res!2354137 () Bool)

(assert (=> b!5528779 (=> res!2354137 e!3417828)))

(declare-datatypes ((C!31298 0))(
  ( (C!31299 (val!25351 Int)) )
))
(declare-datatypes ((Regex!15514 0))(
  ( (ElementMatch!15514 (c!967395 C!31298)) (Concat!24359 (regOne!31540 Regex!15514) (regTwo!31540 Regex!15514)) (EmptyExpr!15514) (Star!15514 (reg!15843 Regex!15514)) (EmptyLang!15514) (Union!15514 (regOne!31541 Regex!15514) (regTwo!31541 Regex!15514)) )
))
(declare-datatypes ((List!62841 0))(
  ( (Nil!62717) (Cons!62717 (h!69165 Regex!15514) (t!376098 List!62841)) )
))
(declare-datatypes ((Context!9796 0))(
  ( (Context!9797 (exprs!5398 List!62841)) )
))
(declare-fun lt!2247916 () (Set Context!9796))

(declare-fun lt!2247913 () (Set Context!9796))

(assert (=> b!5528779 (= res!2354137 (not (= lt!2247916 lt!2247913)))))

(declare-datatypes ((List!62842 0))(
  ( (Nil!62718) (Cons!62718 (h!69166 C!31298) (t!376099 List!62842)) )
))
(declare-fun s!2326 () List!62842)

(declare-fun z!1189 () (Set Context!9796))

(declare-datatypes ((List!62843 0))(
  ( (Nil!62719) (Cons!62719 (h!69167 Context!9796) (t!376100 List!62843)) )
))
(declare-fun zl!343 () List!62843)

(declare-fun lambda!296636 () Int)

(declare-fun flatMap!1127 ((Set Context!9796) Int) (Set Context!9796))

(declare-fun derivationStepZipperUp!782 (Context!9796 C!31298) (Set Context!9796))

(assert (=> b!5528779 (= (flatMap!1127 z!1189 lambda!296636) (derivationStepZipperUp!782 (h!69167 zl!343) (h!69166 s!2326)))))

(declare-datatypes ((Unit!155488 0))(
  ( (Unit!155489) )
))
(declare-fun lt!2247914 () Unit!155488)

(declare-fun lemmaFlatMapOnSingletonSet!659 ((Set Context!9796) Context!9796 Int) Unit!155488)

(assert (=> b!5528779 (= lt!2247914 (lemmaFlatMapOnSingletonSet!659 z!1189 (h!69167 zl!343) lambda!296636))))

(declare-fun b!5528780 () Bool)

(declare-fun e!3417837 () Bool)

(declare-fun tp_is_empty!40281 () Bool)

(declare-fun tp!1521018 () Bool)

(assert (=> b!5528780 (= e!3417837 (and tp_is_empty!40281 tp!1521018))))

(declare-fun b!5528781 () Bool)

(declare-fun res!2354143 () Bool)

(declare-fun e!3417824 () Bool)

(assert (=> b!5528781 (=> res!2354143 e!3417824)))

(declare-fun lt!2247922 () Context!9796)

(declare-fun lt!2247933 () Int)

(declare-fun contextDepth!110 (Context!9796) Int)

(assert (=> b!5528781 (= res!2354143 (>= (contextDepth!110 lt!2247922) lt!2247933))))

(declare-fun b!5528782 () Bool)

(declare-fun e!3417836 () Bool)

(declare-fun tp!1521023 () Bool)

(assert (=> b!5528782 (= e!3417836 tp!1521023)))

(declare-fun b!5528783 () Bool)

(declare-fun res!2354131 () Bool)

(declare-fun e!3417831 () Bool)

(assert (=> b!5528783 (=> res!2354131 e!3417831)))

(assert (=> b!5528783 (= res!2354131 (not (is-Cons!62717 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun b!5528784 () Bool)

(declare-fun e!3417834 () Bool)

(declare-fun e!3417829 () Bool)

(assert (=> b!5528784 (= e!3417834 e!3417829)))

(declare-fun res!2354133 () Bool)

(assert (=> b!5528784 (=> res!2354133 e!3417829)))

(declare-fun lt!2247923 () Bool)

(declare-fun matchZipper!1672 ((Set Context!9796) List!62842) Bool)

(assert (=> b!5528784 (= res!2354133 (not (= lt!2247923 (matchZipper!1672 lt!2247916 (t!376099 s!2326)))))))

(declare-fun lt!2247925 () Bool)

(assert (=> b!5528784 (= lt!2247925 lt!2247923)))

(declare-fun e!3417823 () Bool)

(assert (=> b!5528784 (= lt!2247923 e!3417823)))

(declare-fun res!2354139 () Bool)

(assert (=> b!5528784 (=> res!2354139 e!3417823)))

(declare-fun lt!2247929 () Bool)

(assert (=> b!5528784 (= res!2354139 lt!2247929)))

(declare-fun lt!2247928 () (Set Context!9796))

(assert (=> b!5528784 (= lt!2247925 (matchZipper!1672 lt!2247928 (t!376099 s!2326)))))

(declare-fun lt!2247918 () (Set Context!9796))

(assert (=> b!5528784 (= lt!2247929 (matchZipper!1672 lt!2247918 (t!376099 s!2326)))))

(declare-fun lt!2247921 () Unit!155488)

(declare-fun lt!2247907 () (Set Context!9796))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!561 ((Set Context!9796) (Set Context!9796) List!62842) Unit!155488)

(assert (=> b!5528784 (= lt!2247921 (lemmaZipperConcatMatchesSameAsBothZippers!561 lt!2247918 lt!2247907 (t!376099 s!2326)))))

(declare-fun b!5528785 () Bool)

(declare-fun res!2354136 () Bool)

(assert (=> b!5528785 (=> res!2354136 e!3417831)))

(declare-fun isEmpty!34507 (List!62843) Bool)

(assert (=> b!5528785 (= res!2354136 (not (isEmpty!34507 (t!376100 zl!343))))))

(declare-fun res!2354138 () Bool)

(declare-fun e!3417825 () Bool)

(assert (=> start!576968 (=> (not res!2354138) (not e!3417825))))

(declare-fun r!7292 () Regex!15514)

(declare-fun validRegex!7250 (Regex!15514) Bool)

(assert (=> start!576968 (= res!2354138 (validRegex!7250 r!7292))))

(assert (=> start!576968 e!3417825))

(declare-fun e!3417832 () Bool)

(assert (=> start!576968 e!3417832))

(declare-fun condSetEmpty!36776 () Bool)

(assert (=> start!576968 (= condSetEmpty!36776 (= z!1189 (as set.empty (Set Context!9796))))))

(declare-fun setRes!36776 () Bool)

(assert (=> start!576968 setRes!36776))

(declare-fun e!3417838 () Bool)

(assert (=> start!576968 e!3417838))

(assert (=> start!576968 e!3417837))

(declare-fun b!5528786 () Bool)

(declare-fun res!2354130 () Bool)

(declare-fun e!3417826 () Bool)

(assert (=> b!5528786 (=> res!2354130 e!3417826)))

(declare-fun isEmpty!34508 (List!62841) Bool)

(assert (=> b!5528786 (= res!2354130 (not (isEmpty!34508 (t!376098 (exprs!5398 (h!69167 zl!343))))))))

(declare-fun b!5528787 () Bool)

(declare-fun e!3417827 () Bool)

(assert (=> b!5528787 (= e!3417829 e!3417827)))

(declare-fun res!2354147 () Bool)

(assert (=> b!5528787 (=> res!2354147 e!3417827)))

(declare-fun lt!2247917 () Int)

(assert (=> b!5528787 (= res!2354147 (>= lt!2247917 lt!2247933))))

(declare-fun lt!2247930 () Context!9796)

(assert (=> b!5528787 (= lt!2247933 (contextDepth!110 lt!2247930))))

(declare-fun lt!2247908 () Context!9796)

(assert (=> b!5528787 (= lt!2247917 (contextDepth!110 lt!2247908))))

(declare-fun b!5528788 () Bool)

(declare-fun res!2354141 () Bool)

(assert (=> b!5528788 (=> (not res!2354141) (not e!3417825))))

(declare-fun toList!9298 ((Set Context!9796)) List!62843)

(assert (=> b!5528788 (= res!2354141 (= (toList!9298 z!1189) zl!343))))

(declare-fun b!5528789 () Bool)

(declare-fun tp!1521022 () Bool)

(declare-fun tp!1521024 () Bool)

(assert (=> b!5528789 (= e!3417832 (and tp!1521022 tp!1521024))))

(declare-fun b!5528790 () Bool)

(declare-fun res!2354135 () Bool)

(assert (=> b!5528790 (=> res!2354135 e!3417829)))

(declare-fun lt!2247926 () (Set Context!9796))

(declare-fun derivationStepZipper!1619 ((Set Context!9796) C!31298) (Set Context!9796))

(assert (=> b!5528790 (= res!2354135 (not (= (matchZipper!1672 lt!2247926 s!2326) (matchZipper!1672 (derivationStepZipper!1619 lt!2247926 (h!69166 s!2326)) (t!376099 s!2326)))))))

(declare-fun b!5528791 () Bool)

(declare-fun lt!2247935 () Int)

(declare-fun zipperDepth!197 (List!62843) Int)

(assert (=> b!5528791 (= e!3417824 (< (zipperDepth!197 (Cons!62719 lt!2247922 Nil!62719)) lt!2247935))))

(declare-fun b!5528792 () Bool)

(declare-fun e!3417833 () Bool)

(assert (=> b!5528792 (= e!3417833 e!3417834)))

(declare-fun res!2354149 () Bool)

(assert (=> b!5528792 (=> res!2354149 e!3417834)))

(assert (=> b!5528792 (= res!2354149 (not (= lt!2247916 lt!2247928)))))

(assert (=> b!5528792 (= lt!2247928 (set.union lt!2247918 lt!2247907))))

(declare-fun b!5528793 () Bool)

(declare-fun res!2354134 () Bool)

(assert (=> b!5528793 (=> res!2354134 e!3417831)))

(declare-fun generalisedUnion!1377 (List!62841) Regex!15514)

(declare-fun unfocusZipperList!942 (List!62843) List!62841)

(assert (=> b!5528793 (= res!2354134 (not (= r!7292 (generalisedUnion!1377 (unfocusZipperList!942 zl!343)))))))

(declare-fun b!5528794 () Bool)

(assert (=> b!5528794 (= e!3417823 (matchZipper!1672 lt!2247907 (t!376099 s!2326)))))

(declare-fun setIsEmpty!36776 () Bool)

(assert (=> setIsEmpty!36776 setRes!36776))

(declare-fun b!5528795 () Bool)

(assert (=> b!5528795 (= e!3417825 (not e!3417831))))

(declare-fun res!2354151 () Bool)

(assert (=> b!5528795 (=> res!2354151 e!3417831)))

(assert (=> b!5528795 (= res!2354151 (not (is-Cons!62719 zl!343)))))

(declare-fun lt!2247906 () Bool)

(declare-fun matchRSpec!2617 (Regex!15514 List!62842) Bool)

(assert (=> b!5528795 (= lt!2247906 (matchRSpec!2617 r!7292 s!2326))))

(declare-fun matchR!7699 (Regex!15514 List!62842) Bool)

(assert (=> b!5528795 (= lt!2247906 (matchR!7699 r!7292 s!2326))))

(declare-fun lt!2247911 () Unit!155488)

(declare-fun mainMatchTheorem!2617 (Regex!15514 List!62842) Unit!155488)

(assert (=> b!5528795 (= lt!2247911 (mainMatchTheorem!2617 r!7292 s!2326))))

(declare-fun b!5528796 () Bool)

(assert (=> b!5528796 (= e!3417826 e!3417835)))

(declare-fun res!2354142 () Bool)

(assert (=> b!5528796 (=> res!2354142 e!3417835)))

(declare-fun lt!2247936 () (Set Context!9796))

(assert (=> b!5528796 (= res!2354142 (not (= lt!2247936 lt!2247913)))))

(declare-fun lt!2247927 () Context!9796)

(declare-fun derivationStepZipperDown!856 (Regex!15514 Context!9796 C!31298) (Set Context!9796))

(assert (=> b!5528796 (= lt!2247913 (derivationStepZipperDown!856 r!7292 lt!2247927 (h!69166 s!2326)))))

(assert (=> b!5528796 (= lt!2247927 (Context!9797 Nil!62717))))

(assert (=> b!5528796 (= lt!2247936 (derivationStepZipperUp!782 lt!2247930 (h!69166 s!2326)))))

(assert (=> b!5528796 (= lt!2247930 (Context!9797 (Cons!62717 r!7292 Nil!62717)))))

(assert (=> b!5528796 (= lt!2247916 (derivationStepZipper!1619 z!1189 (h!69166 s!2326)))))

(declare-fun b!5528797 () Bool)

(declare-fun e!3417830 () Bool)

(declare-fun tp!1521025 () Bool)

(declare-fun inv!82033 (Context!9796) Bool)

(assert (=> b!5528797 (= e!3417838 (and (inv!82033 (h!69167 zl!343)) e!3417830 tp!1521025))))

(declare-fun b!5528798 () Bool)

(assert (=> b!5528798 (= e!3417828 e!3417833)))

(declare-fun res!2354150 () Bool)

(assert (=> b!5528798 (=> res!2354150 e!3417833)))

(declare-fun nullable!5548 (Regex!15514) Bool)

(assert (=> b!5528798 (= res!2354150 (not (nullable!5548 (regOne!31540 r!7292))))))

(assert (=> b!5528798 (= lt!2247907 (derivationStepZipperDown!856 (regTwo!31540 r!7292) lt!2247927 (h!69166 s!2326)))))

(assert (=> b!5528798 (= lt!2247918 (derivationStepZipperDown!856 (regOne!31540 r!7292) lt!2247922 (h!69166 s!2326)))))

(declare-fun lt!2247909 () (Set Context!9796))

(assert (=> b!5528798 (= (flatMap!1127 lt!2247909 lambda!296636) (derivationStepZipperUp!782 lt!2247922 (h!69166 s!2326)))))

(declare-fun lt!2247920 () Unit!155488)

(assert (=> b!5528798 (= lt!2247920 (lemmaFlatMapOnSingletonSet!659 lt!2247909 lt!2247922 lambda!296636))))

(assert (=> b!5528798 (= (flatMap!1127 lt!2247926 lambda!296636) (derivationStepZipperUp!782 lt!2247908 (h!69166 s!2326)))))

(declare-fun lt!2247924 () Unit!155488)

(assert (=> b!5528798 (= lt!2247924 (lemmaFlatMapOnSingletonSet!659 lt!2247926 lt!2247908 lambda!296636))))

(declare-fun lt!2247915 () (Set Context!9796))

(assert (=> b!5528798 (= lt!2247915 (derivationStepZipperUp!782 lt!2247922 (h!69166 s!2326)))))

(declare-fun lt!2247934 () (Set Context!9796))

(assert (=> b!5528798 (= lt!2247934 (derivationStepZipperUp!782 lt!2247908 (h!69166 s!2326)))))

(assert (=> b!5528798 (= lt!2247909 (set.insert lt!2247922 (as set.empty (Set Context!9796))))))

(declare-fun lt!2247912 () List!62841)

(assert (=> b!5528798 (= lt!2247922 (Context!9797 lt!2247912))))

(assert (=> b!5528798 (= lt!2247926 (set.insert lt!2247908 (as set.empty (Set Context!9796))))))

(assert (=> b!5528798 (= lt!2247908 (Context!9797 (Cons!62717 (regOne!31540 r!7292) lt!2247912)))))

(assert (=> b!5528798 (= lt!2247912 (Cons!62717 (regTwo!31540 r!7292) Nil!62717))))

(declare-fun tp!1521016 () Bool)

(declare-fun setNonEmpty!36776 () Bool)

(declare-fun setElem!36776 () Context!9796)

(assert (=> setNonEmpty!36776 (= setRes!36776 (and tp!1521016 (inv!82033 setElem!36776) e!3417836))))

(declare-fun setRest!36776 () (Set Context!9796))

(assert (=> setNonEmpty!36776 (= z!1189 (set.union (set.insert setElem!36776 (as set.empty (Set Context!9796))) setRest!36776))))

(declare-fun b!5528799 () Bool)

(assert (=> b!5528799 (= e!3417827 e!3417824)))

(declare-fun res!2354132 () Bool)

(assert (=> b!5528799 (=> res!2354132 e!3417824)))

(declare-fun lt!2247931 () Int)

(assert (=> b!5528799 (= res!2354132 (>= lt!2247931 lt!2247935))))

(assert (=> b!5528799 (= lt!2247935 (zipperDepth!197 (Cons!62719 lt!2247930 Nil!62719)))))

(assert (=> b!5528799 (= lt!2247931 (zipperDepth!197 (Cons!62719 lt!2247908 Nil!62719)))))

(declare-fun b!5528800 () Bool)

(assert (=> b!5528800 (= e!3417832 tp_is_empty!40281)))

(declare-fun b!5528801 () Bool)

(declare-fun tp!1521021 () Bool)

(assert (=> b!5528801 (= e!3417832 tp!1521021)))

(declare-fun b!5528802 () Bool)

(declare-fun res!2354148 () Bool)

(assert (=> b!5528802 (=> res!2354148 e!3417831)))

(assert (=> b!5528802 (= res!2354148 (or (is-EmptyExpr!15514 r!7292) (is-EmptyLang!15514 r!7292) (is-ElementMatch!15514 r!7292) (is-Union!15514 r!7292) (not (is-Concat!24359 r!7292))))))

(declare-fun b!5528803 () Bool)

(declare-fun res!2354129 () Bool)

(assert (=> b!5528803 (=> res!2354129 e!3417829)))

(assert (=> b!5528803 (= res!2354129 (not (= (matchZipper!1672 lt!2247909 s!2326) (matchZipper!1672 (derivationStepZipper!1619 lt!2247909 (h!69166 s!2326)) (t!376099 s!2326)))))))

(assert (=> b!5528804 (= e!3417831 e!3417826)))

(declare-fun res!2354146 () Bool)

(assert (=> b!5528804 (=> res!2354146 e!3417826)))

(declare-fun lt!2247932 () Bool)

(assert (=> b!5528804 (= res!2354146 (or (not (= lt!2247906 lt!2247932)) (is-Nil!62718 s!2326)))))

(declare-fun Exists!2614 (Int) Bool)

(assert (=> b!5528804 (= (Exists!2614 lambda!296634) (Exists!2614 lambda!296635))))

(declare-fun lt!2247919 () Unit!155488)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1243 (Regex!15514 Regex!15514 List!62842) Unit!155488)

(assert (=> b!5528804 (= lt!2247919 (lemmaExistCutMatchRandMatchRSpecEquivalent!1243 (regOne!31540 r!7292) (regTwo!31540 r!7292) s!2326))))

(assert (=> b!5528804 (= lt!2247932 (Exists!2614 lambda!296634))))

(declare-datatypes ((tuple2!65222 0))(
  ( (tuple2!65223 (_1!35914 List!62842) (_2!35914 List!62842)) )
))
(declare-datatypes ((Option!15523 0))(
  ( (None!15522) (Some!15522 (v!51559 tuple2!65222)) )
))
(declare-fun isDefined!12226 (Option!15523) Bool)

(declare-fun findConcatSeparation!1937 (Regex!15514 Regex!15514 List!62842 List!62842 List!62842) Option!15523)

(assert (=> b!5528804 (= lt!2247932 (isDefined!12226 (findConcatSeparation!1937 (regOne!31540 r!7292) (regTwo!31540 r!7292) Nil!62718 s!2326 s!2326)))))

(declare-fun lt!2247910 () Unit!155488)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1701 (Regex!15514 Regex!15514 List!62842) Unit!155488)

(assert (=> b!5528804 (= lt!2247910 (lemmaFindConcatSeparationEquivalentToExists!1701 (regOne!31540 r!7292) (regTwo!31540 r!7292) s!2326))))

(declare-fun b!5528805 () Bool)

(declare-fun res!2354144 () Bool)

(assert (=> b!5528805 (=> res!2354144 e!3417829)))

(assert (=> b!5528805 (= res!2354144 (or (not (= lt!2247934 (set.union lt!2247918 lt!2247915))) (not (= lt!2247934 lt!2247928)) (not (= lt!2247934 lt!2247916))))))

(declare-fun b!5528806 () Bool)

(declare-fun res!2354140 () Bool)

(assert (=> b!5528806 (=> (not res!2354140) (not e!3417825))))

(declare-fun unfocusZipper!1256 (List!62843) Regex!15514)

(assert (=> b!5528806 (= res!2354140 (= r!7292 (unfocusZipper!1256 zl!343)))))

(declare-fun b!5528807 () Bool)

(declare-fun res!2354145 () Bool)

(assert (=> b!5528807 (=> res!2354145 e!3417831)))

(declare-fun generalisedConcat!1129 (List!62841) Regex!15514)

(assert (=> b!5528807 (= res!2354145 (not (= r!7292 (generalisedConcat!1129 (exprs!5398 (h!69167 zl!343))))))))

(declare-fun b!5528808 () Bool)

(declare-fun tp!1521020 () Bool)

(assert (=> b!5528808 (= e!3417830 tp!1521020)))

(declare-fun b!5528809 () Bool)

(declare-fun tp!1521019 () Bool)

(declare-fun tp!1521017 () Bool)

(assert (=> b!5528809 (= e!3417832 (and tp!1521019 tp!1521017))))

(assert (= (and start!576968 res!2354138) b!5528788))

(assert (= (and b!5528788 res!2354141) b!5528806))

(assert (= (and b!5528806 res!2354140) b!5528795))

(assert (= (and b!5528795 (not res!2354151)) b!5528785))

(assert (= (and b!5528785 (not res!2354136)) b!5528807))

(assert (= (and b!5528807 (not res!2354145)) b!5528783))

(assert (= (and b!5528783 (not res!2354131)) b!5528793))

(assert (= (and b!5528793 (not res!2354134)) b!5528802))

(assert (= (and b!5528802 (not res!2354148)) b!5528804))

(assert (= (and b!5528804 (not res!2354146)) b!5528786))

(assert (= (and b!5528786 (not res!2354130)) b!5528796))

(assert (= (and b!5528796 (not res!2354142)) b!5528779))

(assert (= (and b!5528779 (not res!2354137)) b!5528798))

(assert (= (and b!5528798 (not res!2354150)) b!5528792))

(assert (= (and b!5528792 (not res!2354149)) b!5528784))

(assert (= (and b!5528784 (not res!2354139)) b!5528794))

(assert (= (and b!5528784 (not res!2354133)) b!5528805))

(assert (= (and b!5528805 (not res!2354144)) b!5528790))

(assert (= (and b!5528790 (not res!2354135)) b!5528803))

(assert (= (and b!5528803 (not res!2354129)) b!5528787))

(assert (= (and b!5528787 (not res!2354147)) b!5528799))

(assert (= (and b!5528799 (not res!2354132)) b!5528781))

(assert (= (and b!5528781 (not res!2354143)) b!5528791))

(assert (= (and start!576968 (is-ElementMatch!15514 r!7292)) b!5528800))

(assert (= (and start!576968 (is-Concat!24359 r!7292)) b!5528789))

(assert (= (and start!576968 (is-Star!15514 r!7292)) b!5528801))

(assert (= (and start!576968 (is-Union!15514 r!7292)) b!5528809))

(assert (= (and start!576968 condSetEmpty!36776) setIsEmpty!36776))

(assert (= (and start!576968 (not condSetEmpty!36776)) setNonEmpty!36776))

(assert (= setNonEmpty!36776 b!5528782))

(assert (= b!5528797 b!5528808))

(assert (= (and start!576968 (is-Cons!62719 zl!343)) b!5528797))

(assert (= (and start!576968 (is-Cons!62718 s!2326)) b!5528780))

(declare-fun m!6530868 () Bool)

(assert (=> b!5528791 m!6530868))

(declare-fun m!6530870 () Bool)

(assert (=> b!5528786 m!6530870))

(declare-fun m!6530872 () Bool)

(assert (=> b!5528799 m!6530872))

(declare-fun m!6530874 () Bool)

(assert (=> b!5528799 m!6530874))

(declare-fun m!6530876 () Bool)

(assert (=> b!5528806 m!6530876))

(declare-fun m!6530878 () Bool)

(assert (=> b!5528784 m!6530878))

(declare-fun m!6530880 () Bool)

(assert (=> b!5528784 m!6530880))

(declare-fun m!6530882 () Bool)

(assert (=> b!5528784 m!6530882))

(declare-fun m!6530884 () Bool)

(assert (=> b!5528784 m!6530884))

(declare-fun m!6530886 () Bool)

(assert (=> b!5528798 m!6530886))

(declare-fun m!6530888 () Bool)

(assert (=> b!5528798 m!6530888))

(declare-fun m!6530890 () Bool)

(assert (=> b!5528798 m!6530890))

(declare-fun m!6530892 () Bool)

(assert (=> b!5528798 m!6530892))

(declare-fun m!6530894 () Bool)

(assert (=> b!5528798 m!6530894))

(declare-fun m!6530896 () Bool)

(assert (=> b!5528798 m!6530896))

(declare-fun m!6530898 () Bool)

(assert (=> b!5528798 m!6530898))

(declare-fun m!6530900 () Bool)

(assert (=> b!5528798 m!6530900))

(declare-fun m!6530902 () Bool)

(assert (=> b!5528798 m!6530902))

(declare-fun m!6530904 () Bool)

(assert (=> b!5528798 m!6530904))

(declare-fun m!6530906 () Bool)

(assert (=> b!5528798 m!6530906))

(declare-fun m!6530908 () Bool)

(assert (=> b!5528803 m!6530908))

(declare-fun m!6530910 () Bool)

(assert (=> b!5528803 m!6530910))

(assert (=> b!5528803 m!6530910))

(declare-fun m!6530912 () Bool)

(assert (=> b!5528803 m!6530912))

(declare-fun m!6530914 () Bool)

(assert (=> b!5528795 m!6530914))

(declare-fun m!6530916 () Bool)

(assert (=> b!5528795 m!6530916))

(declare-fun m!6530918 () Bool)

(assert (=> b!5528795 m!6530918))

(declare-fun m!6530920 () Bool)

(assert (=> b!5528794 m!6530920))

(declare-fun m!6530922 () Bool)

(assert (=> b!5528804 m!6530922))

(declare-fun m!6530924 () Bool)

(assert (=> b!5528804 m!6530924))

(declare-fun m!6530926 () Bool)

(assert (=> b!5528804 m!6530926))

(declare-fun m!6530928 () Bool)

(assert (=> b!5528804 m!6530928))

(assert (=> b!5528804 m!6530928))

(declare-fun m!6530930 () Bool)

(assert (=> b!5528804 m!6530930))

(assert (=> b!5528804 m!6530924))

(declare-fun m!6530932 () Bool)

(assert (=> b!5528804 m!6530932))

(declare-fun m!6530934 () Bool)

(assert (=> b!5528785 m!6530934))

(declare-fun m!6530936 () Bool)

(assert (=> b!5528788 m!6530936))

(declare-fun m!6530938 () Bool)

(assert (=> b!5528807 m!6530938))

(declare-fun m!6530940 () Bool)

(assert (=> setNonEmpty!36776 m!6530940))

(declare-fun m!6530942 () Bool)

(assert (=> b!5528779 m!6530942))

(declare-fun m!6530944 () Bool)

(assert (=> b!5528779 m!6530944))

(declare-fun m!6530946 () Bool)

(assert (=> b!5528779 m!6530946))

(declare-fun m!6530948 () Bool)

(assert (=> start!576968 m!6530948))

(declare-fun m!6530950 () Bool)

(assert (=> b!5528787 m!6530950))

(declare-fun m!6530952 () Bool)

(assert (=> b!5528787 m!6530952))

(declare-fun m!6530954 () Bool)

(assert (=> b!5528790 m!6530954))

(declare-fun m!6530956 () Bool)

(assert (=> b!5528790 m!6530956))

(assert (=> b!5528790 m!6530956))

(declare-fun m!6530958 () Bool)

(assert (=> b!5528790 m!6530958))

(declare-fun m!6530960 () Bool)

(assert (=> b!5528781 m!6530960))

(declare-fun m!6530962 () Bool)

(assert (=> b!5528793 m!6530962))

(assert (=> b!5528793 m!6530962))

(declare-fun m!6530964 () Bool)

(assert (=> b!5528793 m!6530964))

(declare-fun m!6530966 () Bool)

(assert (=> b!5528796 m!6530966))

(declare-fun m!6530968 () Bool)

(assert (=> b!5528796 m!6530968))

(declare-fun m!6530970 () Bool)

(assert (=> b!5528796 m!6530970))

(declare-fun m!6530972 () Bool)

(assert (=> b!5528797 m!6530972))

(push 1)

(assert (not b!5528784))

(assert (not b!5528807))

(assert (not b!5528787))

(assert tp_is_empty!40281)

(assert (not b!5528797))

(assert (not b!5528786))

(assert (not b!5528801))

(assert (not b!5528785))

(assert (not b!5528789))

(assert (not b!5528795))

(assert (not b!5528798))

(assert (not b!5528780))

(assert (not b!5528809))

(assert (not b!5528794))

(assert (not b!5528803))

(assert (not b!5528806))

(assert (not b!5528782))

(assert (not b!5528804))

(assert (not b!5528799))

(assert (not b!5528779))

(assert (not setNonEmpty!36776))

(assert (not b!5528793))

(assert (not b!5528808))

(assert (not b!5528790))

(assert (not b!5528791))

(assert (not start!576968))

(assert (not b!5528788))

(assert (not b!5528781))

(assert (not b!5528796))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5528947 () Bool)

(declare-fun e!3417907 () Bool)

(declare-fun lt!2248032 () Regex!15514)

(declare-fun isEmptyLang!1097 (Regex!15514) Bool)

(assert (=> b!5528947 (= e!3417907 (isEmptyLang!1097 lt!2248032))))

(declare-fun b!5528948 () Bool)

(declare-fun e!3417910 () Regex!15514)

(assert (=> b!5528948 (= e!3417910 EmptyLang!15514)))

(declare-fun b!5528949 () Bool)

(declare-fun e!3417905 () Bool)

(assert (=> b!5528949 (= e!3417905 (isEmpty!34508 (t!376098 (unfocusZipperList!942 zl!343))))))

(declare-fun d!1752029 () Bool)

(declare-fun e!3417908 () Bool)

(assert (=> d!1752029 e!3417908))

(declare-fun res!2354238 () Bool)

(assert (=> d!1752029 (=> (not res!2354238) (not e!3417908))))

(assert (=> d!1752029 (= res!2354238 (validRegex!7250 lt!2248032))))

(declare-fun e!3417906 () Regex!15514)

(assert (=> d!1752029 (= lt!2248032 e!3417906)))

(declare-fun c!967415 () Bool)

(assert (=> d!1752029 (= c!967415 e!3417905)))

(declare-fun res!2354237 () Bool)

(assert (=> d!1752029 (=> (not res!2354237) (not e!3417905))))

(assert (=> d!1752029 (= res!2354237 (is-Cons!62717 (unfocusZipperList!942 zl!343)))))

(declare-fun lambda!296654 () Int)

(declare-fun forall!14692 (List!62841 Int) Bool)

(assert (=> d!1752029 (forall!14692 (unfocusZipperList!942 zl!343) lambda!296654)))

(assert (=> d!1752029 (= (generalisedUnion!1377 (unfocusZipperList!942 zl!343)) lt!2248032)))

(declare-fun b!5528950 () Bool)

(assert (=> b!5528950 (= e!3417906 e!3417910)))

(declare-fun c!967414 () Bool)

(assert (=> b!5528950 (= c!967414 (is-Cons!62717 (unfocusZipperList!942 zl!343)))))

(declare-fun b!5528951 () Bool)

(declare-fun e!3417909 () Bool)

(assert (=> b!5528951 (= e!3417907 e!3417909)))

(declare-fun c!967412 () Bool)

(declare-fun tail!10926 (List!62841) List!62841)

(assert (=> b!5528951 (= c!967412 (isEmpty!34508 (tail!10926 (unfocusZipperList!942 zl!343))))))

(declare-fun b!5528952 () Bool)

(assert (=> b!5528952 (= e!3417910 (Union!15514 (h!69165 (unfocusZipperList!942 zl!343)) (generalisedUnion!1377 (t!376098 (unfocusZipperList!942 zl!343)))))))

(declare-fun b!5528953 () Bool)

(declare-fun isUnion!527 (Regex!15514) Bool)

(assert (=> b!5528953 (= e!3417909 (isUnion!527 lt!2248032))))

(declare-fun b!5528954 () Bool)

(assert (=> b!5528954 (= e!3417906 (h!69165 (unfocusZipperList!942 zl!343)))))

(declare-fun b!5528955 () Bool)

(declare-fun head!11831 (List!62841) Regex!15514)

(assert (=> b!5528955 (= e!3417909 (= lt!2248032 (head!11831 (unfocusZipperList!942 zl!343))))))

(declare-fun b!5528956 () Bool)

(assert (=> b!5528956 (= e!3417908 e!3417907)))

(declare-fun c!967413 () Bool)

(assert (=> b!5528956 (= c!967413 (isEmpty!34508 (unfocusZipperList!942 zl!343)))))

(assert (= (and d!1752029 res!2354237) b!5528949))

(assert (= (and d!1752029 c!967415) b!5528954))

(assert (= (and d!1752029 (not c!967415)) b!5528950))

(assert (= (and b!5528950 c!967414) b!5528952))

(assert (= (and b!5528950 (not c!967414)) b!5528948))

(assert (= (and d!1752029 res!2354238) b!5528956))

(assert (= (and b!5528956 c!967413) b!5528947))

(assert (= (and b!5528956 (not c!967413)) b!5528951))

(assert (= (and b!5528951 c!967412) b!5528955))

(assert (= (and b!5528951 (not c!967412)) b!5528953))

(declare-fun m!6531080 () Bool)

(assert (=> b!5528947 m!6531080))

(assert (=> b!5528956 m!6530962))

(declare-fun m!6531082 () Bool)

(assert (=> b!5528956 m!6531082))

(declare-fun m!6531084 () Bool)

(assert (=> b!5528949 m!6531084))

(assert (=> b!5528951 m!6530962))

(declare-fun m!6531086 () Bool)

(assert (=> b!5528951 m!6531086))

(assert (=> b!5528951 m!6531086))

(declare-fun m!6531088 () Bool)

(assert (=> b!5528951 m!6531088))

(declare-fun m!6531090 () Bool)

(assert (=> d!1752029 m!6531090))

(assert (=> d!1752029 m!6530962))

(declare-fun m!6531092 () Bool)

(assert (=> d!1752029 m!6531092))

(assert (=> b!5528955 m!6530962))

(declare-fun m!6531094 () Bool)

(assert (=> b!5528955 m!6531094))

(declare-fun m!6531096 () Bool)

(assert (=> b!5528952 m!6531096))

(declare-fun m!6531098 () Bool)

(assert (=> b!5528953 m!6531098))

(assert (=> b!5528793 d!1752029))

(declare-fun bs!1277405 () Bool)

(declare-fun d!1752031 () Bool)

(assert (= bs!1277405 (and d!1752031 d!1752029)))

(declare-fun lambda!296657 () Int)

(assert (=> bs!1277405 (= lambda!296657 lambda!296654)))

(declare-fun lt!2248035 () List!62841)

(assert (=> d!1752031 (forall!14692 lt!2248035 lambda!296657)))

(declare-fun e!3417913 () List!62841)

(assert (=> d!1752031 (= lt!2248035 e!3417913)))

(declare-fun c!967418 () Bool)

(assert (=> d!1752031 (= c!967418 (is-Cons!62719 zl!343))))

(assert (=> d!1752031 (= (unfocusZipperList!942 zl!343) lt!2248035)))

(declare-fun b!5528961 () Bool)

(assert (=> b!5528961 (= e!3417913 (Cons!62717 (generalisedConcat!1129 (exprs!5398 (h!69167 zl!343))) (unfocusZipperList!942 (t!376100 zl!343))))))

(declare-fun b!5528962 () Bool)

(assert (=> b!5528962 (= e!3417913 Nil!62717)))

(assert (= (and d!1752031 c!967418) b!5528961))

(assert (= (and d!1752031 (not c!967418)) b!5528962))

(declare-fun m!6531100 () Bool)

(assert (=> d!1752031 m!6531100))

(assert (=> b!5528961 m!6530938))

(declare-fun m!6531102 () Bool)

(assert (=> b!5528961 m!6531102))

(assert (=> b!5528793 d!1752031))

(declare-fun d!1752033 () Bool)

(declare-fun c!967421 () Bool)

(declare-fun isEmpty!34511 (List!62842) Bool)

(assert (=> d!1752033 (= c!967421 (isEmpty!34511 s!2326))))

(declare-fun e!3417916 () Bool)

(assert (=> d!1752033 (= (matchZipper!1672 lt!2247909 s!2326) e!3417916)))

(declare-fun b!5528967 () Bool)

(declare-fun nullableZipper!1540 ((Set Context!9796)) Bool)

(assert (=> b!5528967 (= e!3417916 (nullableZipper!1540 lt!2247909))))

(declare-fun b!5528968 () Bool)

(declare-fun head!11832 (List!62842) C!31298)

(declare-fun tail!10927 (List!62842) List!62842)

(assert (=> b!5528968 (= e!3417916 (matchZipper!1672 (derivationStepZipper!1619 lt!2247909 (head!11832 s!2326)) (tail!10927 s!2326)))))

(assert (= (and d!1752033 c!967421) b!5528967))

(assert (= (and d!1752033 (not c!967421)) b!5528968))

(declare-fun m!6531104 () Bool)

(assert (=> d!1752033 m!6531104))

(declare-fun m!6531106 () Bool)

(assert (=> b!5528967 m!6531106))

(declare-fun m!6531108 () Bool)

(assert (=> b!5528968 m!6531108))

(assert (=> b!5528968 m!6531108))

(declare-fun m!6531110 () Bool)

(assert (=> b!5528968 m!6531110))

(declare-fun m!6531112 () Bool)

(assert (=> b!5528968 m!6531112))

(assert (=> b!5528968 m!6531110))

(assert (=> b!5528968 m!6531112))

(declare-fun m!6531114 () Bool)

(assert (=> b!5528968 m!6531114))

(assert (=> b!5528803 d!1752033))

(declare-fun d!1752035 () Bool)

(declare-fun c!967422 () Bool)

(assert (=> d!1752035 (= c!967422 (isEmpty!34511 (t!376099 s!2326)))))

(declare-fun e!3417917 () Bool)

(assert (=> d!1752035 (= (matchZipper!1672 (derivationStepZipper!1619 lt!2247909 (h!69166 s!2326)) (t!376099 s!2326)) e!3417917)))

(declare-fun b!5528969 () Bool)

(assert (=> b!5528969 (= e!3417917 (nullableZipper!1540 (derivationStepZipper!1619 lt!2247909 (h!69166 s!2326))))))

(declare-fun b!5528970 () Bool)

(assert (=> b!5528970 (= e!3417917 (matchZipper!1672 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247909 (h!69166 s!2326)) (head!11832 (t!376099 s!2326))) (tail!10927 (t!376099 s!2326))))))

(assert (= (and d!1752035 c!967422) b!5528969))

(assert (= (and d!1752035 (not c!967422)) b!5528970))

(declare-fun m!6531116 () Bool)

(assert (=> d!1752035 m!6531116))

(assert (=> b!5528969 m!6530910))

(declare-fun m!6531118 () Bool)

(assert (=> b!5528969 m!6531118))

(declare-fun m!6531120 () Bool)

(assert (=> b!5528970 m!6531120))

(assert (=> b!5528970 m!6530910))

(assert (=> b!5528970 m!6531120))

(declare-fun m!6531122 () Bool)

(assert (=> b!5528970 m!6531122))

(declare-fun m!6531124 () Bool)

(assert (=> b!5528970 m!6531124))

(assert (=> b!5528970 m!6531122))

(assert (=> b!5528970 m!6531124))

(declare-fun m!6531126 () Bool)

(assert (=> b!5528970 m!6531126))

(assert (=> b!5528803 d!1752035))

(declare-fun bs!1277406 () Bool)

(declare-fun d!1752037 () Bool)

(assert (= bs!1277406 (and d!1752037 b!5528779)))

(declare-fun lambda!296660 () Int)

(assert (=> bs!1277406 (= lambda!296660 lambda!296636)))

(assert (=> d!1752037 true))

(assert (=> d!1752037 (= (derivationStepZipper!1619 lt!2247909 (h!69166 s!2326)) (flatMap!1127 lt!2247909 lambda!296660))))

(declare-fun bs!1277407 () Bool)

(assert (= bs!1277407 d!1752037))

(declare-fun m!6531128 () Bool)

(assert (=> bs!1277407 m!6531128))

(assert (=> b!5528803 d!1752037))

(declare-fun d!1752039 () Bool)

(declare-fun c!967425 () Bool)

(assert (=> d!1752039 (= c!967425 (isEmpty!34511 (t!376099 s!2326)))))

(declare-fun e!3417918 () Bool)

(assert (=> d!1752039 (= (matchZipper!1672 lt!2247907 (t!376099 s!2326)) e!3417918)))

(declare-fun b!5528973 () Bool)

(assert (=> b!5528973 (= e!3417918 (nullableZipper!1540 lt!2247907))))

(declare-fun b!5528974 () Bool)

(assert (=> b!5528974 (= e!3417918 (matchZipper!1672 (derivationStepZipper!1619 lt!2247907 (head!11832 (t!376099 s!2326))) (tail!10927 (t!376099 s!2326))))))

(assert (= (and d!1752039 c!967425) b!5528973))

(assert (= (and d!1752039 (not c!967425)) b!5528974))

(assert (=> d!1752039 m!6531116))

(declare-fun m!6531130 () Bool)

(assert (=> b!5528973 m!6531130))

(assert (=> b!5528974 m!6531120))

(assert (=> b!5528974 m!6531120))

(declare-fun m!6531132 () Bool)

(assert (=> b!5528974 m!6531132))

(assert (=> b!5528974 m!6531124))

(assert (=> b!5528974 m!6531132))

(assert (=> b!5528974 m!6531124))

(declare-fun m!6531134 () Bool)

(assert (=> b!5528974 m!6531134))

(assert (=> b!5528794 d!1752039))

(declare-fun d!1752041 () Bool)

(declare-fun c!967426 () Bool)

(assert (=> d!1752041 (= c!967426 (isEmpty!34511 (t!376099 s!2326)))))

(declare-fun e!3417919 () Bool)

(assert (=> d!1752041 (= (matchZipper!1672 lt!2247916 (t!376099 s!2326)) e!3417919)))

(declare-fun b!5528975 () Bool)

(assert (=> b!5528975 (= e!3417919 (nullableZipper!1540 lt!2247916))))

(declare-fun b!5528976 () Bool)

(assert (=> b!5528976 (= e!3417919 (matchZipper!1672 (derivationStepZipper!1619 lt!2247916 (head!11832 (t!376099 s!2326))) (tail!10927 (t!376099 s!2326))))))

(assert (= (and d!1752041 c!967426) b!5528975))

(assert (= (and d!1752041 (not c!967426)) b!5528976))

(assert (=> d!1752041 m!6531116))

(declare-fun m!6531136 () Bool)

(assert (=> b!5528975 m!6531136))

(assert (=> b!5528976 m!6531120))

(assert (=> b!5528976 m!6531120))

(declare-fun m!6531138 () Bool)

(assert (=> b!5528976 m!6531138))

(assert (=> b!5528976 m!6531124))

(assert (=> b!5528976 m!6531138))

(assert (=> b!5528976 m!6531124))

(declare-fun m!6531140 () Bool)

(assert (=> b!5528976 m!6531140))

(assert (=> b!5528784 d!1752041))

(declare-fun d!1752043 () Bool)

(declare-fun c!967427 () Bool)

(assert (=> d!1752043 (= c!967427 (isEmpty!34511 (t!376099 s!2326)))))

(declare-fun e!3417920 () Bool)

(assert (=> d!1752043 (= (matchZipper!1672 lt!2247928 (t!376099 s!2326)) e!3417920)))

(declare-fun b!5528977 () Bool)

(assert (=> b!5528977 (= e!3417920 (nullableZipper!1540 lt!2247928))))

(declare-fun b!5528978 () Bool)

(assert (=> b!5528978 (= e!3417920 (matchZipper!1672 (derivationStepZipper!1619 lt!2247928 (head!11832 (t!376099 s!2326))) (tail!10927 (t!376099 s!2326))))))

(assert (= (and d!1752043 c!967427) b!5528977))

(assert (= (and d!1752043 (not c!967427)) b!5528978))

(assert (=> d!1752043 m!6531116))

(declare-fun m!6531142 () Bool)

(assert (=> b!5528977 m!6531142))

(assert (=> b!5528978 m!6531120))

(assert (=> b!5528978 m!6531120))

(declare-fun m!6531144 () Bool)

(assert (=> b!5528978 m!6531144))

(assert (=> b!5528978 m!6531124))

(assert (=> b!5528978 m!6531144))

(assert (=> b!5528978 m!6531124))

(declare-fun m!6531146 () Bool)

(assert (=> b!5528978 m!6531146))

(assert (=> b!5528784 d!1752043))

(declare-fun d!1752045 () Bool)

(declare-fun c!967428 () Bool)

(assert (=> d!1752045 (= c!967428 (isEmpty!34511 (t!376099 s!2326)))))

(declare-fun e!3417921 () Bool)

(assert (=> d!1752045 (= (matchZipper!1672 lt!2247918 (t!376099 s!2326)) e!3417921)))

(declare-fun b!5528979 () Bool)

(assert (=> b!5528979 (= e!3417921 (nullableZipper!1540 lt!2247918))))

(declare-fun b!5528980 () Bool)

(assert (=> b!5528980 (= e!3417921 (matchZipper!1672 (derivationStepZipper!1619 lt!2247918 (head!11832 (t!376099 s!2326))) (tail!10927 (t!376099 s!2326))))))

(assert (= (and d!1752045 c!967428) b!5528979))

(assert (= (and d!1752045 (not c!967428)) b!5528980))

(assert (=> d!1752045 m!6531116))

(declare-fun m!6531148 () Bool)

(assert (=> b!5528979 m!6531148))

(assert (=> b!5528980 m!6531120))

(assert (=> b!5528980 m!6531120))

(declare-fun m!6531150 () Bool)

(assert (=> b!5528980 m!6531150))

(assert (=> b!5528980 m!6531124))

(assert (=> b!5528980 m!6531150))

(assert (=> b!5528980 m!6531124))

(declare-fun m!6531152 () Bool)

(assert (=> b!5528980 m!6531152))

(assert (=> b!5528784 d!1752045))

(declare-fun d!1752047 () Bool)

(declare-fun e!3417924 () Bool)

(assert (=> d!1752047 (= (matchZipper!1672 (set.union lt!2247918 lt!2247907) (t!376099 s!2326)) e!3417924)))

(declare-fun res!2354241 () Bool)

(assert (=> d!1752047 (=> res!2354241 e!3417924)))

(assert (=> d!1752047 (= res!2354241 (matchZipper!1672 lt!2247918 (t!376099 s!2326)))))

(declare-fun lt!2248038 () Unit!155488)

(declare-fun choose!42007 ((Set Context!9796) (Set Context!9796) List!62842) Unit!155488)

(assert (=> d!1752047 (= lt!2248038 (choose!42007 lt!2247918 lt!2247907 (t!376099 s!2326)))))

(assert (=> d!1752047 (= (lemmaZipperConcatMatchesSameAsBothZippers!561 lt!2247918 lt!2247907 (t!376099 s!2326)) lt!2248038)))

(declare-fun b!5528983 () Bool)

(assert (=> b!5528983 (= e!3417924 (matchZipper!1672 lt!2247907 (t!376099 s!2326)))))

(assert (= (and d!1752047 (not res!2354241)) b!5528983))

(declare-fun m!6531154 () Bool)

(assert (=> d!1752047 m!6531154))

(assert (=> d!1752047 m!6530882))

(declare-fun m!6531156 () Bool)

(assert (=> d!1752047 m!6531156))

(assert (=> b!5528983 m!6530920))

(assert (=> b!5528784 d!1752047))

(declare-fun d!1752049 () Bool)

(assert (=> d!1752049 (= (isEmpty!34507 (t!376100 zl!343)) (is-Nil!62719 (t!376100 zl!343)))))

(assert (=> b!5528785 d!1752049))

(declare-fun d!1752051 () Bool)

(declare-fun choose!42008 (Int) Bool)

(assert (=> d!1752051 (= (Exists!2614 lambda!296635) (choose!42008 lambda!296635))))

(declare-fun bs!1277408 () Bool)

(assert (= bs!1277408 d!1752051))

(declare-fun m!6531158 () Bool)

(assert (=> bs!1277408 m!6531158))

(assert (=> b!5528804 d!1752051))

(declare-fun b!5529002 () Bool)

(declare-fun e!3417935 () Option!15523)

(declare-fun e!3417939 () Option!15523)

(assert (=> b!5529002 (= e!3417935 e!3417939)))

(declare-fun c!967433 () Bool)

(assert (=> b!5529002 (= c!967433 (is-Nil!62718 s!2326))))

(declare-fun b!5529003 () Bool)

(declare-fun e!3417936 () Bool)

(declare-fun lt!2248045 () Option!15523)

(declare-fun ++!13762 (List!62842 List!62842) List!62842)

(declare-fun get!21587 (Option!15523) tuple2!65222)

(assert (=> b!5529003 (= e!3417936 (= (++!13762 (_1!35914 (get!21587 lt!2248045)) (_2!35914 (get!21587 lt!2248045))) s!2326))))

(declare-fun b!5529004 () Bool)

(declare-fun e!3417937 () Bool)

(assert (=> b!5529004 (= e!3417937 (matchR!7699 (regTwo!31540 r!7292) s!2326))))

(declare-fun b!5529005 () Bool)

(declare-fun lt!2248047 () Unit!155488)

(declare-fun lt!2248046 () Unit!155488)

(assert (=> b!5529005 (= lt!2248047 lt!2248046)))

(assert (=> b!5529005 (= (++!13762 (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718)) (t!376099 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1931 (List!62842 C!31298 List!62842 List!62842) Unit!155488)

(assert (=> b!5529005 (= lt!2248046 (lemmaMoveElementToOtherListKeepsConcatEq!1931 Nil!62718 (h!69166 s!2326) (t!376099 s!2326) s!2326))))

(assert (=> b!5529005 (= e!3417939 (findConcatSeparation!1937 (regOne!31540 r!7292) (regTwo!31540 r!7292) (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718)) (t!376099 s!2326) s!2326))))

(declare-fun d!1752053 () Bool)

(declare-fun e!3417938 () Bool)

(assert (=> d!1752053 e!3417938))

(declare-fun res!2354255 () Bool)

(assert (=> d!1752053 (=> res!2354255 e!3417938)))

(assert (=> d!1752053 (= res!2354255 e!3417936)))

(declare-fun res!2354256 () Bool)

(assert (=> d!1752053 (=> (not res!2354256) (not e!3417936))))

(assert (=> d!1752053 (= res!2354256 (isDefined!12226 lt!2248045))))

(assert (=> d!1752053 (= lt!2248045 e!3417935)))

(declare-fun c!967434 () Bool)

(assert (=> d!1752053 (= c!967434 e!3417937)))

(declare-fun res!2354252 () Bool)

(assert (=> d!1752053 (=> (not res!2354252) (not e!3417937))))

(assert (=> d!1752053 (= res!2354252 (matchR!7699 (regOne!31540 r!7292) Nil!62718))))

(assert (=> d!1752053 (validRegex!7250 (regOne!31540 r!7292))))

(assert (=> d!1752053 (= (findConcatSeparation!1937 (regOne!31540 r!7292) (regTwo!31540 r!7292) Nil!62718 s!2326 s!2326) lt!2248045)))

(declare-fun b!5529006 () Bool)

(assert (=> b!5529006 (= e!3417938 (not (isDefined!12226 lt!2248045)))))

(declare-fun b!5529007 () Bool)

(declare-fun res!2354253 () Bool)

(assert (=> b!5529007 (=> (not res!2354253) (not e!3417936))))

(assert (=> b!5529007 (= res!2354253 (matchR!7699 (regTwo!31540 r!7292) (_2!35914 (get!21587 lt!2248045))))))

(declare-fun b!5529008 () Bool)

(assert (=> b!5529008 (= e!3417939 None!15522)))

(declare-fun b!5529009 () Bool)

(declare-fun res!2354254 () Bool)

(assert (=> b!5529009 (=> (not res!2354254) (not e!3417936))))

(assert (=> b!5529009 (= res!2354254 (matchR!7699 (regOne!31540 r!7292) (_1!35914 (get!21587 lt!2248045))))))

(declare-fun b!5529010 () Bool)

(assert (=> b!5529010 (= e!3417935 (Some!15522 (tuple2!65223 Nil!62718 s!2326)))))

(assert (= (and d!1752053 res!2354252) b!5529004))

(assert (= (and d!1752053 c!967434) b!5529010))

(assert (= (and d!1752053 (not c!967434)) b!5529002))

(assert (= (and b!5529002 c!967433) b!5529008))

(assert (= (and b!5529002 (not c!967433)) b!5529005))

(assert (= (and d!1752053 res!2354256) b!5529009))

(assert (= (and b!5529009 res!2354254) b!5529007))

(assert (= (and b!5529007 res!2354253) b!5529003))

(assert (= (and d!1752053 (not res!2354255)) b!5529006))

(declare-fun m!6531160 () Bool)

(assert (=> b!5529007 m!6531160))

(declare-fun m!6531162 () Bool)

(assert (=> b!5529007 m!6531162))

(declare-fun m!6531164 () Bool)

(assert (=> b!5529004 m!6531164))

(declare-fun m!6531166 () Bool)

(assert (=> b!5529006 m!6531166))

(assert (=> b!5529003 m!6531160))

(declare-fun m!6531168 () Bool)

(assert (=> b!5529003 m!6531168))

(assert (=> d!1752053 m!6531166))

(declare-fun m!6531170 () Bool)

(assert (=> d!1752053 m!6531170))

(declare-fun m!6531172 () Bool)

(assert (=> d!1752053 m!6531172))

(assert (=> b!5529009 m!6531160))

(declare-fun m!6531174 () Bool)

(assert (=> b!5529009 m!6531174))

(declare-fun m!6531176 () Bool)

(assert (=> b!5529005 m!6531176))

(assert (=> b!5529005 m!6531176))

(declare-fun m!6531178 () Bool)

(assert (=> b!5529005 m!6531178))

(declare-fun m!6531180 () Bool)

(assert (=> b!5529005 m!6531180))

(assert (=> b!5529005 m!6531176))

(declare-fun m!6531182 () Bool)

(assert (=> b!5529005 m!6531182))

(assert (=> b!5528804 d!1752053))

(declare-fun d!1752055 () Bool)

(assert (=> d!1752055 (= (Exists!2614 lambda!296634) (choose!42008 lambda!296634))))

(declare-fun bs!1277409 () Bool)

(assert (= bs!1277409 d!1752055))

(declare-fun m!6531184 () Bool)

(assert (=> bs!1277409 m!6531184))

(assert (=> b!5528804 d!1752055))

(declare-fun bs!1277410 () Bool)

(declare-fun d!1752057 () Bool)

(assert (= bs!1277410 (and d!1752057 b!5528804)))

(declare-fun lambda!296663 () Int)

(assert (=> bs!1277410 (= lambda!296663 lambda!296634)))

(assert (=> bs!1277410 (not (= lambda!296663 lambda!296635))))

(assert (=> d!1752057 true))

(assert (=> d!1752057 true))

(assert (=> d!1752057 true))

(assert (=> d!1752057 (= (isDefined!12226 (findConcatSeparation!1937 (regOne!31540 r!7292) (regTwo!31540 r!7292) Nil!62718 s!2326 s!2326)) (Exists!2614 lambda!296663))))

(declare-fun lt!2248050 () Unit!155488)

(declare-fun choose!42009 (Regex!15514 Regex!15514 List!62842) Unit!155488)

(assert (=> d!1752057 (= lt!2248050 (choose!42009 (regOne!31540 r!7292) (regTwo!31540 r!7292) s!2326))))

(assert (=> d!1752057 (validRegex!7250 (regOne!31540 r!7292))))

(assert (=> d!1752057 (= (lemmaFindConcatSeparationEquivalentToExists!1701 (regOne!31540 r!7292) (regTwo!31540 r!7292) s!2326) lt!2248050)))

(declare-fun bs!1277411 () Bool)

(assert (= bs!1277411 d!1752057))

(assert (=> bs!1277411 m!6531172))

(declare-fun m!6531186 () Bool)

(assert (=> bs!1277411 m!6531186))

(assert (=> bs!1277411 m!6530924))

(declare-fun m!6531188 () Bool)

(assert (=> bs!1277411 m!6531188))

(assert (=> bs!1277411 m!6530924))

(assert (=> bs!1277411 m!6530926))

(assert (=> b!5528804 d!1752057))

(declare-fun bs!1277412 () Bool)

(declare-fun d!1752059 () Bool)

(assert (= bs!1277412 (and d!1752059 b!5528804)))

(declare-fun lambda!296668 () Int)

(assert (=> bs!1277412 (= lambda!296668 lambda!296634)))

(assert (=> bs!1277412 (not (= lambda!296668 lambda!296635))))

(declare-fun bs!1277413 () Bool)

(assert (= bs!1277413 (and d!1752059 d!1752057)))

(assert (=> bs!1277413 (= lambda!296668 lambda!296663)))

(assert (=> d!1752059 true))

(assert (=> d!1752059 true))

(assert (=> d!1752059 true))

(declare-fun lambda!296669 () Int)

(assert (=> bs!1277412 (not (= lambda!296669 lambda!296634))))

(assert (=> bs!1277412 (= lambda!296669 lambda!296635)))

(assert (=> bs!1277413 (not (= lambda!296669 lambda!296663))))

(declare-fun bs!1277414 () Bool)

(assert (= bs!1277414 d!1752059))

(assert (=> bs!1277414 (not (= lambda!296669 lambda!296668))))

(assert (=> d!1752059 true))

(assert (=> d!1752059 true))

(assert (=> d!1752059 true))

(assert (=> d!1752059 (= (Exists!2614 lambda!296668) (Exists!2614 lambda!296669))))

(declare-fun lt!2248053 () Unit!155488)

(declare-fun choose!42010 (Regex!15514 Regex!15514 List!62842) Unit!155488)

(assert (=> d!1752059 (= lt!2248053 (choose!42010 (regOne!31540 r!7292) (regTwo!31540 r!7292) s!2326))))

(assert (=> d!1752059 (validRegex!7250 (regOne!31540 r!7292))))

(assert (=> d!1752059 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1243 (regOne!31540 r!7292) (regTwo!31540 r!7292) s!2326) lt!2248053)))

(declare-fun m!6531190 () Bool)

(assert (=> bs!1277414 m!6531190))

(declare-fun m!6531192 () Bool)

(assert (=> bs!1277414 m!6531192))

(declare-fun m!6531194 () Bool)

(assert (=> bs!1277414 m!6531194))

(assert (=> bs!1277414 m!6531172))

(assert (=> b!5528804 d!1752059))

(declare-fun d!1752061 () Bool)

(declare-fun isEmpty!34512 (Option!15523) Bool)

(assert (=> d!1752061 (= (isDefined!12226 (findConcatSeparation!1937 (regOne!31540 r!7292) (regTwo!31540 r!7292) Nil!62718 s!2326 s!2326)) (not (isEmpty!34512 (findConcatSeparation!1937 (regOne!31540 r!7292) (regTwo!31540 r!7292) Nil!62718 s!2326 s!2326))))))

(declare-fun bs!1277415 () Bool)

(assert (= bs!1277415 d!1752061))

(assert (=> bs!1277415 m!6530924))

(declare-fun m!6531196 () Bool)

(assert (=> bs!1277415 m!6531196))

(assert (=> b!5528804 d!1752061))

(declare-fun bs!1277416 () Bool)

(declare-fun b!5529061 () Bool)

(assert (= bs!1277416 (and b!5529061 d!1752059)))

(declare-fun lambda!296674 () Int)

(assert (=> bs!1277416 (not (= lambda!296674 lambda!296669))))

(declare-fun bs!1277417 () Bool)

(assert (= bs!1277417 (and b!5529061 b!5528804)))

(assert (=> bs!1277417 (not (= lambda!296674 lambda!296635))))

(assert (=> bs!1277417 (not (= lambda!296674 lambda!296634))))

(assert (=> bs!1277416 (not (= lambda!296674 lambda!296668))))

(declare-fun bs!1277418 () Bool)

(assert (= bs!1277418 (and b!5529061 d!1752057)))

(assert (=> bs!1277418 (not (= lambda!296674 lambda!296663))))

(assert (=> b!5529061 true))

(assert (=> b!5529061 true))

(declare-fun bs!1277419 () Bool)

(declare-fun b!5529063 () Bool)

(assert (= bs!1277419 (and b!5529063 d!1752059)))

(declare-fun lambda!296675 () Int)

(assert (=> bs!1277419 (= lambda!296675 lambda!296669)))

(declare-fun bs!1277420 () Bool)

(assert (= bs!1277420 (and b!5529063 b!5529061)))

(assert (=> bs!1277420 (not (= lambda!296675 lambda!296674))))

(declare-fun bs!1277421 () Bool)

(assert (= bs!1277421 (and b!5529063 b!5528804)))

(assert (=> bs!1277421 (= lambda!296675 lambda!296635)))

(assert (=> bs!1277421 (not (= lambda!296675 lambda!296634))))

(assert (=> bs!1277419 (not (= lambda!296675 lambda!296668))))

(declare-fun bs!1277422 () Bool)

(assert (= bs!1277422 (and b!5529063 d!1752057)))

(assert (=> bs!1277422 (not (= lambda!296675 lambda!296663))))

(assert (=> b!5529063 true))

(assert (=> b!5529063 true))

(declare-fun b!5529055 () Bool)

(declare-fun e!3417967 () Bool)

(declare-fun e!3417969 () Bool)

(assert (=> b!5529055 (= e!3417967 e!3417969)))

(declare-fun c!967444 () Bool)

(assert (=> b!5529055 (= c!967444 (is-Star!15514 r!7292))))

(declare-fun bm!410375 () Bool)

(declare-fun call!410380 () Bool)

(assert (=> bm!410375 (= call!410380 (isEmpty!34511 s!2326))))

(declare-fun b!5529056 () Bool)

(declare-fun e!3417965 () Bool)

(assert (=> b!5529056 (= e!3417965 (= s!2326 (Cons!62718 (c!967395 r!7292) Nil!62718)))))

(declare-fun d!1752063 () Bool)

(declare-fun c!967443 () Bool)

(assert (=> d!1752063 (= c!967443 (is-EmptyExpr!15514 r!7292))))

(declare-fun e!3417968 () Bool)

(assert (=> d!1752063 (= (matchRSpec!2617 r!7292 s!2326) e!3417968)))

(declare-fun b!5529057 () Bool)

(declare-fun e!3417966 () Bool)

(assert (=> b!5529057 (= e!3417967 e!3417966)))

(declare-fun res!2354286 () Bool)

(assert (=> b!5529057 (= res!2354286 (matchRSpec!2617 (regOne!31541 r!7292) s!2326))))

(assert (=> b!5529057 (=> res!2354286 e!3417966)))

(declare-fun bm!410376 () Bool)

(declare-fun call!410381 () Bool)

(assert (=> bm!410376 (= call!410381 (Exists!2614 (ite c!967444 lambda!296674 lambda!296675)))))

(declare-fun b!5529058 () Bool)

(declare-fun res!2354287 () Bool)

(declare-fun e!3417964 () Bool)

(assert (=> b!5529058 (=> res!2354287 e!3417964)))

(assert (=> b!5529058 (= res!2354287 call!410380)))

(assert (=> b!5529058 (= e!3417969 e!3417964)))

(declare-fun b!5529059 () Bool)

(assert (=> b!5529059 (= e!3417966 (matchRSpec!2617 (regTwo!31541 r!7292) s!2326))))

(declare-fun b!5529060 () Bool)

(declare-fun c!967445 () Bool)

(assert (=> b!5529060 (= c!967445 (is-ElementMatch!15514 r!7292))))

(declare-fun e!3417970 () Bool)

(assert (=> b!5529060 (= e!3417970 e!3417965)))

(assert (=> b!5529061 (= e!3417964 call!410381)))

(declare-fun b!5529062 () Bool)

(declare-fun c!967446 () Bool)

(assert (=> b!5529062 (= c!967446 (is-Union!15514 r!7292))))

(assert (=> b!5529062 (= e!3417965 e!3417967)))

(assert (=> b!5529063 (= e!3417969 call!410381)))

(declare-fun b!5529064 () Bool)

(assert (=> b!5529064 (= e!3417968 call!410380)))

(declare-fun b!5529065 () Bool)

(assert (=> b!5529065 (= e!3417968 e!3417970)))

(declare-fun res!2354285 () Bool)

(assert (=> b!5529065 (= res!2354285 (not (is-EmptyLang!15514 r!7292)))))

(assert (=> b!5529065 (=> (not res!2354285) (not e!3417970))))

(assert (= (and d!1752063 c!967443) b!5529064))

(assert (= (and d!1752063 (not c!967443)) b!5529065))

(assert (= (and b!5529065 res!2354285) b!5529060))

(assert (= (and b!5529060 c!967445) b!5529056))

(assert (= (and b!5529060 (not c!967445)) b!5529062))

(assert (= (and b!5529062 c!967446) b!5529057))

(assert (= (and b!5529062 (not c!967446)) b!5529055))

(assert (= (and b!5529057 (not res!2354286)) b!5529059))

(assert (= (and b!5529055 c!967444) b!5529058))

(assert (= (and b!5529055 (not c!967444)) b!5529063))

(assert (= (and b!5529058 (not res!2354287)) b!5529061))

(assert (= (or b!5529061 b!5529063) bm!410376))

(assert (= (or b!5529064 b!5529058) bm!410375))

(assert (=> bm!410375 m!6531104))

(declare-fun m!6531198 () Bool)

(assert (=> b!5529057 m!6531198))

(declare-fun m!6531200 () Bool)

(assert (=> bm!410376 m!6531200))

(declare-fun m!6531202 () Bool)

(assert (=> b!5529059 m!6531202))

(assert (=> b!5528795 d!1752063))

(declare-fun b!5529094 () Bool)

(declare-fun res!2354310 () Bool)

(declare-fun e!3417985 () Bool)

(assert (=> b!5529094 (=> (not res!2354310) (not e!3417985))))

(assert (=> b!5529094 (= res!2354310 (isEmpty!34511 (tail!10927 s!2326)))))

(declare-fun b!5529095 () Bool)

(declare-fun e!3417991 () Bool)

(declare-fun e!3417987 () Bool)

(assert (=> b!5529095 (= e!3417991 e!3417987)))

(declare-fun res!2354308 () Bool)

(assert (=> b!5529095 (=> (not res!2354308) (not e!3417987))))

(declare-fun lt!2248056 () Bool)

(assert (=> b!5529095 (= res!2354308 (not lt!2248056))))

(declare-fun b!5529096 () Bool)

(declare-fun e!3417990 () Bool)

(declare-fun derivativeStep!4379 (Regex!15514 C!31298) Regex!15514)

(assert (=> b!5529096 (= e!3417990 (matchR!7699 (derivativeStep!4379 r!7292 (head!11832 s!2326)) (tail!10927 s!2326)))))

(declare-fun b!5529097 () Bool)

(declare-fun e!3417988 () Bool)

(assert (=> b!5529097 (= e!3417988 (not (= (head!11832 s!2326) (c!967395 r!7292))))))

(declare-fun bm!410379 () Bool)

(declare-fun call!410384 () Bool)

(assert (=> bm!410379 (= call!410384 (isEmpty!34511 s!2326))))

(declare-fun b!5529098 () Bool)

(declare-fun res!2354304 () Bool)

(assert (=> b!5529098 (=> res!2354304 e!3417991)))

(assert (=> b!5529098 (= res!2354304 e!3417985)))

(declare-fun res!2354311 () Bool)

(assert (=> b!5529098 (=> (not res!2354311) (not e!3417985))))

(assert (=> b!5529098 (= res!2354311 lt!2248056)))

(declare-fun b!5529099 () Bool)

(assert (=> b!5529099 (= e!3417985 (= (head!11832 s!2326) (c!967395 r!7292)))))

(declare-fun b!5529100 () Bool)

(assert (=> b!5529100 (= e!3417987 e!3417988)))

(declare-fun res!2354309 () Bool)

(assert (=> b!5529100 (=> res!2354309 e!3417988)))

(assert (=> b!5529100 (= res!2354309 call!410384)))

(declare-fun d!1752065 () Bool)

(declare-fun e!3417986 () Bool)

(assert (=> d!1752065 e!3417986))

(declare-fun c!967454 () Bool)

(assert (=> d!1752065 (= c!967454 (is-EmptyExpr!15514 r!7292))))

(assert (=> d!1752065 (= lt!2248056 e!3417990)))

(declare-fun c!967455 () Bool)

(assert (=> d!1752065 (= c!967455 (isEmpty!34511 s!2326))))

(assert (=> d!1752065 (validRegex!7250 r!7292)))

(assert (=> d!1752065 (= (matchR!7699 r!7292 s!2326) lt!2248056)))

(declare-fun b!5529101 () Bool)

(declare-fun e!3417989 () Bool)

(assert (=> b!5529101 (= e!3417986 e!3417989)))

(declare-fun c!967453 () Bool)

(assert (=> b!5529101 (= c!967453 (is-EmptyLang!15514 r!7292))))

(declare-fun b!5529102 () Bool)

(declare-fun res!2354305 () Bool)

(assert (=> b!5529102 (=> res!2354305 e!3417988)))

(assert (=> b!5529102 (= res!2354305 (not (isEmpty!34511 (tail!10927 s!2326))))))

(declare-fun b!5529103 () Bool)

(declare-fun res!2354307 () Bool)

(assert (=> b!5529103 (=> (not res!2354307) (not e!3417985))))

(assert (=> b!5529103 (= res!2354307 (not call!410384))))

(declare-fun b!5529104 () Bool)

(assert (=> b!5529104 (= e!3417990 (nullable!5548 r!7292))))

(declare-fun b!5529105 () Bool)

(assert (=> b!5529105 (= e!3417986 (= lt!2248056 call!410384))))

(declare-fun b!5529106 () Bool)

(assert (=> b!5529106 (= e!3417989 (not lt!2248056))))

(declare-fun b!5529107 () Bool)

(declare-fun res!2354306 () Bool)

(assert (=> b!5529107 (=> res!2354306 e!3417991)))

(assert (=> b!5529107 (= res!2354306 (not (is-ElementMatch!15514 r!7292)))))

(assert (=> b!5529107 (= e!3417989 e!3417991)))

(assert (= (and d!1752065 c!967455) b!5529104))

(assert (= (and d!1752065 (not c!967455)) b!5529096))

(assert (= (and d!1752065 c!967454) b!5529105))

(assert (= (and d!1752065 (not c!967454)) b!5529101))

(assert (= (and b!5529101 c!967453) b!5529106))

(assert (= (and b!5529101 (not c!967453)) b!5529107))

(assert (= (and b!5529107 (not res!2354306)) b!5529098))

(assert (= (and b!5529098 res!2354311) b!5529103))

(assert (= (and b!5529103 res!2354307) b!5529094))

(assert (= (and b!5529094 res!2354310) b!5529099))

(assert (= (and b!5529098 (not res!2354304)) b!5529095))

(assert (= (and b!5529095 res!2354308) b!5529100))

(assert (= (and b!5529100 (not res!2354309)) b!5529102))

(assert (= (and b!5529102 (not res!2354305)) b!5529097))

(assert (= (or b!5529105 b!5529103 b!5529100) bm!410379))

(assert (=> b!5529096 m!6531108))

(assert (=> b!5529096 m!6531108))

(declare-fun m!6531204 () Bool)

(assert (=> b!5529096 m!6531204))

(assert (=> b!5529096 m!6531112))

(assert (=> b!5529096 m!6531204))

(assert (=> b!5529096 m!6531112))

(declare-fun m!6531206 () Bool)

(assert (=> b!5529096 m!6531206))

(declare-fun m!6531208 () Bool)

(assert (=> b!5529104 m!6531208))

(assert (=> d!1752065 m!6531104))

(assert (=> d!1752065 m!6530948))

(assert (=> b!5529097 m!6531108))

(assert (=> b!5529099 m!6531108))

(assert (=> b!5529102 m!6531112))

(assert (=> b!5529102 m!6531112))

(declare-fun m!6531210 () Bool)

(assert (=> b!5529102 m!6531210))

(assert (=> bm!410379 m!6531104))

(assert (=> b!5529094 m!6531112))

(assert (=> b!5529094 m!6531112))

(assert (=> b!5529094 m!6531210))

(assert (=> b!5528795 d!1752065))

(declare-fun d!1752067 () Bool)

(assert (=> d!1752067 (= (matchR!7699 r!7292 s!2326) (matchRSpec!2617 r!7292 s!2326))))

(declare-fun lt!2248059 () Unit!155488)

(declare-fun choose!42011 (Regex!15514 List!62842) Unit!155488)

(assert (=> d!1752067 (= lt!2248059 (choose!42011 r!7292 s!2326))))

(assert (=> d!1752067 (validRegex!7250 r!7292)))

(assert (=> d!1752067 (= (mainMatchTheorem!2617 r!7292 s!2326) lt!2248059)))

(declare-fun bs!1277423 () Bool)

(assert (= bs!1277423 d!1752067))

(assert (=> bs!1277423 m!6530916))

(assert (=> bs!1277423 m!6530914))

(declare-fun m!6531212 () Bool)

(assert (=> bs!1277423 m!6531212))

(assert (=> bs!1277423 m!6530948))

(assert (=> b!5528795 d!1752067))

(declare-fun c!967469 () Bool)

(declare-fun call!410399 () List!62841)

(declare-fun bm!410392 () Bool)

(declare-fun c!967466 () Bool)

(declare-fun $colon$colon!1593 (List!62841 Regex!15514) List!62841)

(assert (=> bm!410392 (= call!410399 ($colon$colon!1593 (exprs!5398 lt!2247927) (ite (or c!967466 c!967469) (regTwo!31540 r!7292) r!7292)))))

(declare-fun bm!410393 () Bool)

(declare-fun call!410398 () (Set Context!9796))

(declare-fun call!410402 () (Set Context!9796))

(assert (=> bm!410393 (= call!410398 call!410402)))

(declare-fun b!5529130 () Bool)

(declare-fun e!3418005 () (Set Context!9796))

(assert (=> b!5529130 (= e!3418005 call!410398)))

(declare-fun b!5529131 () Bool)

(declare-fun e!3418008 () (Set Context!9796))

(declare-fun e!3418004 () (Set Context!9796))

(assert (=> b!5529131 (= e!3418008 e!3418004)))

(declare-fun c!967467 () Bool)

(assert (=> b!5529131 (= c!967467 (is-Union!15514 r!7292))))

(declare-fun b!5529132 () Bool)

(assert (=> b!5529132 (= e!3418008 (set.insert lt!2247927 (as set.empty (Set Context!9796))))))

(declare-fun b!5529134 () Bool)

(declare-fun e!3418009 () Bool)

(assert (=> b!5529134 (= e!3418009 (nullable!5548 (regOne!31540 r!7292)))))

(declare-fun b!5529135 () Bool)

(declare-fun call!410397 () (Set Context!9796))

(declare-fun call!410401 () (Set Context!9796))

(assert (=> b!5529135 (= e!3418004 (set.union call!410397 call!410401))))

(declare-fun bm!410394 () Bool)

(declare-fun call!410400 () List!62841)

(assert (=> bm!410394 (= call!410400 call!410399)))

(declare-fun b!5529136 () Bool)

(declare-fun c!967468 () Bool)

(assert (=> b!5529136 (= c!967468 (is-Star!15514 r!7292))))

(declare-fun e!3418007 () (Set Context!9796))

(assert (=> b!5529136 (= e!3418005 e!3418007)))

(declare-fun bm!410395 () Bool)

(assert (=> bm!410395 (= call!410397 (derivationStepZipperDown!856 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292)) (ite c!967467 lt!2247927 (Context!9797 call!410399)) (h!69166 s!2326)))))

(declare-fun b!5529137 () Bool)

(assert (=> b!5529137 (= c!967466 e!3418009)))

(declare-fun res!2354314 () Bool)

(assert (=> b!5529137 (=> (not res!2354314) (not e!3418009))))

(assert (=> b!5529137 (= res!2354314 (is-Concat!24359 r!7292))))

(declare-fun e!3418006 () (Set Context!9796))

(assert (=> b!5529137 (= e!3418004 e!3418006)))

(declare-fun b!5529133 () Bool)

(assert (=> b!5529133 (= e!3418006 e!3418005)))

(assert (=> b!5529133 (= c!967469 (is-Concat!24359 r!7292))))

(declare-fun d!1752069 () Bool)

(declare-fun c!967470 () Bool)

(assert (=> d!1752069 (= c!967470 (and (is-ElementMatch!15514 r!7292) (= (c!967395 r!7292) (h!69166 s!2326))))))

(assert (=> d!1752069 (= (derivationStepZipperDown!856 r!7292 lt!2247927 (h!69166 s!2326)) e!3418008)))

(declare-fun bm!410396 () Bool)

(assert (=> bm!410396 (= call!410401 (derivationStepZipperDown!856 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292)))) (ite (or c!967467 c!967466) lt!2247927 (Context!9797 call!410400)) (h!69166 s!2326)))))

(declare-fun b!5529138 () Bool)

(assert (=> b!5529138 (= e!3418006 (set.union call!410397 call!410402))))

(declare-fun b!5529139 () Bool)

(assert (=> b!5529139 (= e!3418007 call!410398)))

(declare-fun b!5529140 () Bool)

(assert (=> b!5529140 (= e!3418007 (as set.empty (Set Context!9796)))))

(declare-fun bm!410397 () Bool)

(assert (=> bm!410397 (= call!410402 call!410401)))

(assert (= (and d!1752069 c!967470) b!5529132))

(assert (= (and d!1752069 (not c!967470)) b!5529131))

(assert (= (and b!5529131 c!967467) b!5529135))

(assert (= (and b!5529131 (not c!967467)) b!5529137))

(assert (= (and b!5529137 res!2354314) b!5529134))

(assert (= (and b!5529137 c!967466) b!5529138))

(assert (= (and b!5529137 (not c!967466)) b!5529133))

(assert (= (and b!5529133 c!967469) b!5529130))

(assert (= (and b!5529133 (not c!967469)) b!5529136))

(assert (= (and b!5529136 c!967468) b!5529139))

(assert (= (and b!5529136 (not c!967468)) b!5529140))

(assert (= (or b!5529130 b!5529139) bm!410394))

(assert (= (or b!5529130 b!5529139) bm!410393))

(assert (= (or b!5529138 bm!410394) bm!410392))

(assert (= (or b!5529138 bm!410393) bm!410397))

(assert (= (or b!5529135 bm!410397) bm!410396))

(assert (= (or b!5529135 b!5529138) bm!410395))

(declare-fun m!6531214 () Bool)

(assert (=> bm!410392 m!6531214))

(declare-fun m!6531216 () Bool)

(assert (=> bm!410395 m!6531216))

(assert (=> b!5529134 m!6530898))

(declare-fun m!6531218 () Bool)

(assert (=> bm!410396 m!6531218))

(declare-fun m!6531220 () Bool)

(assert (=> b!5529132 m!6531220))

(assert (=> b!5528796 d!1752069))

(declare-fun bm!410400 () Bool)

(declare-fun call!410405 () (Set Context!9796))

(assert (=> bm!410400 (= call!410405 (derivationStepZipperDown!856 (h!69165 (exprs!5398 lt!2247930)) (Context!9797 (t!376098 (exprs!5398 lt!2247930))) (h!69166 s!2326)))))

(declare-fun b!5529151 () Bool)

(declare-fun e!3418017 () Bool)

(assert (=> b!5529151 (= e!3418017 (nullable!5548 (h!69165 (exprs!5398 lt!2247930))))))

(declare-fun e!3418018 () (Set Context!9796))

(declare-fun b!5529152 () Bool)

(assert (=> b!5529152 (= e!3418018 (set.union call!410405 (derivationStepZipperUp!782 (Context!9797 (t!376098 (exprs!5398 lt!2247930))) (h!69166 s!2326))))))

(declare-fun b!5529153 () Bool)

(declare-fun e!3418016 () (Set Context!9796))

(assert (=> b!5529153 (= e!3418016 (as set.empty (Set Context!9796)))))

(declare-fun d!1752071 () Bool)

(declare-fun c!967475 () Bool)

(assert (=> d!1752071 (= c!967475 e!3418017)))

(declare-fun res!2354317 () Bool)

(assert (=> d!1752071 (=> (not res!2354317) (not e!3418017))))

(assert (=> d!1752071 (= res!2354317 (is-Cons!62717 (exprs!5398 lt!2247930)))))

(assert (=> d!1752071 (= (derivationStepZipperUp!782 lt!2247930 (h!69166 s!2326)) e!3418018)))

(declare-fun b!5529154 () Bool)

(assert (=> b!5529154 (= e!3418018 e!3418016)))

(declare-fun c!967476 () Bool)

(assert (=> b!5529154 (= c!967476 (is-Cons!62717 (exprs!5398 lt!2247930)))))

(declare-fun b!5529155 () Bool)

(assert (=> b!5529155 (= e!3418016 call!410405)))

(assert (= (and d!1752071 res!2354317) b!5529151))

(assert (= (and d!1752071 c!967475) b!5529152))

(assert (= (and d!1752071 (not c!967475)) b!5529154))

(assert (= (and b!5529154 c!967476) b!5529155))

(assert (= (and b!5529154 (not c!967476)) b!5529153))

(assert (= (or b!5529152 b!5529155) bm!410400))

(declare-fun m!6531222 () Bool)

(assert (=> bm!410400 m!6531222))

(declare-fun m!6531224 () Bool)

(assert (=> b!5529151 m!6531224))

(declare-fun m!6531226 () Bool)

(assert (=> b!5529152 m!6531226))

(assert (=> b!5528796 d!1752071))

(declare-fun bs!1277424 () Bool)

(declare-fun d!1752073 () Bool)

(assert (= bs!1277424 (and d!1752073 b!5528779)))

(declare-fun lambda!296676 () Int)

(assert (=> bs!1277424 (= lambda!296676 lambda!296636)))

(declare-fun bs!1277425 () Bool)

(assert (= bs!1277425 (and d!1752073 d!1752037)))

(assert (=> bs!1277425 (= lambda!296676 lambda!296660)))

(assert (=> d!1752073 true))

(assert (=> d!1752073 (= (derivationStepZipper!1619 z!1189 (h!69166 s!2326)) (flatMap!1127 z!1189 lambda!296676))))

(declare-fun bs!1277426 () Bool)

(assert (= bs!1277426 d!1752073))

(declare-fun m!6531228 () Bool)

(assert (=> bs!1277426 m!6531228))

(assert (=> b!5528796 d!1752073))

(declare-fun d!1752075 () Bool)

(assert (=> d!1752075 (= (isEmpty!34508 (t!376098 (exprs!5398 (h!69167 zl!343)))) (is-Nil!62717 (t!376098 (exprs!5398 (h!69167 zl!343)))))))

(assert (=> b!5528786 d!1752075))

(declare-fun bs!1277427 () Bool)

(declare-fun b!5529162 () Bool)

(assert (= bs!1277427 (and b!5529162 d!1752029)))

(declare-fun lambda!296681 () Int)

(assert (=> bs!1277427 (not (= lambda!296681 lambda!296654))))

(declare-fun bs!1277428 () Bool)

(assert (= bs!1277428 (and b!5529162 d!1752031)))

(assert (=> bs!1277428 (not (= lambda!296681 lambda!296657))))

(assert (=> b!5529162 true))

(declare-fun bs!1277429 () Bool)

(declare-fun b!5529164 () Bool)

(assert (= bs!1277429 (and b!5529164 d!1752029)))

(declare-fun lambda!296682 () Int)

(assert (=> bs!1277429 (not (= lambda!296682 lambda!296654))))

(declare-fun bs!1277430 () Bool)

(assert (= bs!1277430 (and b!5529164 d!1752031)))

(assert (=> bs!1277430 (not (= lambda!296682 lambda!296657))))

(declare-fun bs!1277431 () Bool)

(assert (= bs!1277431 (and b!5529164 b!5529162)))

(declare-fun lt!2248071 () Int)

(declare-fun lt!2248070 () Int)

(assert (=> bs!1277431 (= (= lt!2248070 lt!2248071) (= lambda!296682 lambda!296681))))

(assert (=> b!5529164 true))

(declare-fun d!1752077 () Bool)

(declare-fun e!3418024 () Bool)

(assert (=> d!1752077 e!3418024))

(declare-fun res!2354320 () Bool)

(assert (=> d!1752077 (=> (not res!2354320) (not e!3418024))))

(assert (=> d!1752077 (= res!2354320 (>= lt!2248070 0))))

(declare-fun e!3418023 () Int)

(assert (=> d!1752077 (= lt!2248070 e!3418023)))

(declare-fun c!967480 () Bool)

(assert (=> d!1752077 (= c!967480 (is-Cons!62717 (exprs!5398 lt!2247930)))))

(assert (=> d!1752077 (= (contextDepth!110 lt!2247930) lt!2248070)))

(assert (=> b!5529162 (= e!3418023 lt!2248071)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun regexDepth!214 (Regex!15514) Int)

(assert (=> b!5529162 (= lt!2248071 (maxBigInt!0 (regexDepth!214 (h!69165 (exprs!5398 lt!2247930))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247930))))))))

(declare-fun lt!2248068 () Unit!155488)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!19 (List!62841 Int Int) Unit!155488)

(assert (=> b!5529162 (= lt!2248068 (lemmaForallRegexDepthBiggerThanTransitive!19 (t!376098 (exprs!5398 lt!2247930)) lt!2248071 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247930))))))))

(assert (=> b!5529162 (forall!14692 (t!376098 (exprs!5398 lt!2247930)) lambda!296681)))

(declare-fun lt!2248069 () Unit!155488)

(assert (=> b!5529162 (= lt!2248069 lt!2248068)))

(declare-fun b!5529163 () Bool)

(assert (=> b!5529163 (= e!3418023 0)))

(assert (=> b!5529164 (= e!3418024 (forall!14692 (exprs!5398 lt!2247930) lambda!296682))))

(assert (= (and d!1752077 c!967480) b!5529162))

(assert (= (and d!1752077 (not c!967480)) b!5529163))

(assert (= (and d!1752077 res!2354320) b!5529164))

(declare-fun m!6531230 () Bool)

(assert (=> b!5529162 m!6531230))

(declare-fun m!6531232 () Bool)

(assert (=> b!5529162 m!6531232))

(declare-fun m!6531234 () Bool)

(assert (=> b!5529162 m!6531234))

(assert (=> b!5529162 m!6531232))

(declare-fun m!6531236 () Bool)

(assert (=> b!5529162 m!6531236))

(assert (=> b!5529162 m!6531232))

(declare-fun m!6531238 () Bool)

(assert (=> b!5529162 m!6531238))

(assert (=> b!5529162 m!6531230))

(declare-fun m!6531240 () Bool)

(assert (=> b!5529164 m!6531240))

(assert (=> b!5528787 d!1752077))

(declare-fun bs!1277432 () Bool)

(declare-fun b!5529167 () Bool)

(assert (= bs!1277432 (and b!5529167 d!1752029)))

(declare-fun lambda!296683 () Int)

(assert (=> bs!1277432 (not (= lambda!296683 lambda!296654))))

(declare-fun bs!1277433 () Bool)

(assert (= bs!1277433 (and b!5529167 d!1752031)))

(assert (=> bs!1277433 (not (= lambda!296683 lambda!296657))))

(declare-fun bs!1277434 () Bool)

(assert (= bs!1277434 (and b!5529167 b!5529162)))

(declare-fun lt!2248075 () Int)

(assert (=> bs!1277434 (= (= lt!2248075 lt!2248071) (= lambda!296683 lambda!296681))))

(declare-fun bs!1277435 () Bool)

(assert (= bs!1277435 (and b!5529167 b!5529164)))

(assert (=> bs!1277435 (= (= lt!2248075 lt!2248070) (= lambda!296683 lambda!296682))))

(assert (=> b!5529167 true))

(declare-fun bs!1277436 () Bool)

(declare-fun b!5529169 () Bool)

(assert (= bs!1277436 (and b!5529169 b!5529167)))

(declare-fun lambda!296684 () Int)

(declare-fun lt!2248074 () Int)

(assert (=> bs!1277436 (= (= lt!2248074 lt!2248075) (= lambda!296684 lambda!296683))))

(declare-fun bs!1277437 () Bool)

(assert (= bs!1277437 (and b!5529169 d!1752031)))

(assert (=> bs!1277437 (not (= lambda!296684 lambda!296657))))

(declare-fun bs!1277438 () Bool)

(assert (= bs!1277438 (and b!5529169 b!5529162)))

(assert (=> bs!1277438 (= (= lt!2248074 lt!2248071) (= lambda!296684 lambda!296681))))

(declare-fun bs!1277439 () Bool)

(assert (= bs!1277439 (and b!5529169 b!5529164)))

(assert (=> bs!1277439 (= (= lt!2248074 lt!2248070) (= lambda!296684 lambda!296682))))

(declare-fun bs!1277440 () Bool)

(assert (= bs!1277440 (and b!5529169 d!1752029)))

(assert (=> bs!1277440 (not (= lambda!296684 lambda!296654))))

(assert (=> b!5529169 true))

(declare-fun d!1752079 () Bool)

(declare-fun e!3418026 () Bool)

(assert (=> d!1752079 e!3418026))

(declare-fun res!2354321 () Bool)

(assert (=> d!1752079 (=> (not res!2354321) (not e!3418026))))

(assert (=> d!1752079 (= res!2354321 (>= lt!2248074 0))))

(declare-fun e!3418025 () Int)

(assert (=> d!1752079 (= lt!2248074 e!3418025)))

(declare-fun c!967481 () Bool)

(assert (=> d!1752079 (= c!967481 (is-Cons!62717 (exprs!5398 lt!2247908)))))

(assert (=> d!1752079 (= (contextDepth!110 lt!2247908) lt!2248074)))

(assert (=> b!5529167 (= e!3418025 lt!2248075)))

(assert (=> b!5529167 (= lt!2248075 (maxBigInt!0 (regexDepth!214 (h!69165 (exprs!5398 lt!2247908))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247908))))))))

(declare-fun lt!2248072 () Unit!155488)

(assert (=> b!5529167 (= lt!2248072 (lemmaForallRegexDepthBiggerThanTransitive!19 (t!376098 (exprs!5398 lt!2247908)) lt!2248075 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247908))))))))

(assert (=> b!5529167 (forall!14692 (t!376098 (exprs!5398 lt!2247908)) lambda!296683)))

(declare-fun lt!2248073 () Unit!155488)

(assert (=> b!5529167 (= lt!2248073 lt!2248072)))

(declare-fun b!5529168 () Bool)

(assert (=> b!5529168 (= e!3418025 0)))

(assert (=> b!5529169 (= e!3418026 (forall!14692 (exprs!5398 lt!2247908) lambda!296684))))

(assert (= (and d!1752079 c!967481) b!5529167))

(assert (= (and d!1752079 (not c!967481)) b!5529168))

(assert (= (and d!1752079 res!2354321) b!5529169))

(declare-fun m!6531242 () Bool)

(assert (=> b!5529167 m!6531242))

(declare-fun m!6531244 () Bool)

(assert (=> b!5529167 m!6531244))

(declare-fun m!6531246 () Bool)

(assert (=> b!5529167 m!6531246))

(assert (=> b!5529167 m!6531244))

(declare-fun m!6531248 () Bool)

(assert (=> b!5529167 m!6531248))

(assert (=> b!5529167 m!6531244))

(declare-fun m!6531250 () Bool)

(assert (=> b!5529167 m!6531250))

(assert (=> b!5529167 m!6531242))

(declare-fun m!6531252 () Bool)

(assert (=> b!5529169 m!6531252))

(assert (=> b!5528787 d!1752079))

(declare-fun d!1752081 () Bool)

(declare-fun lt!2248078 () Regex!15514)

(assert (=> d!1752081 (validRegex!7250 lt!2248078)))

(assert (=> d!1752081 (= lt!2248078 (generalisedUnion!1377 (unfocusZipperList!942 zl!343)))))

(assert (=> d!1752081 (= (unfocusZipper!1256 zl!343) lt!2248078)))

(declare-fun bs!1277441 () Bool)

(assert (= bs!1277441 d!1752081))

(declare-fun m!6531254 () Bool)

(assert (=> bs!1277441 m!6531254))

(assert (=> bs!1277441 m!6530962))

(assert (=> bs!1277441 m!6530962))

(assert (=> bs!1277441 m!6530964))

(assert (=> b!5528806 d!1752081))

(declare-fun bs!1277442 () Bool)

(declare-fun d!1752083 () Bool)

(assert (= bs!1277442 (and d!1752083 b!5529167)))

(declare-fun lambda!296687 () Int)

(assert (=> bs!1277442 (not (= lambda!296687 lambda!296683))))

(declare-fun bs!1277443 () Bool)

(assert (= bs!1277443 (and d!1752083 d!1752031)))

(assert (=> bs!1277443 (= lambda!296687 lambda!296657)))

(declare-fun bs!1277444 () Bool)

(assert (= bs!1277444 (and d!1752083 b!5529162)))

(assert (=> bs!1277444 (not (= lambda!296687 lambda!296681))))

(declare-fun bs!1277445 () Bool)

(assert (= bs!1277445 (and d!1752083 b!5529169)))

(assert (=> bs!1277445 (not (= lambda!296687 lambda!296684))))

(declare-fun bs!1277446 () Bool)

(assert (= bs!1277446 (and d!1752083 b!5529164)))

(assert (=> bs!1277446 (not (= lambda!296687 lambda!296682))))

(declare-fun bs!1277447 () Bool)

(assert (= bs!1277447 (and d!1752083 d!1752029)))

(assert (=> bs!1277447 (= lambda!296687 lambda!296654)))

(declare-fun b!5529190 () Bool)

(declare-fun e!3418041 () Regex!15514)

(assert (=> b!5529190 (= e!3418041 EmptyExpr!15514)))

(declare-fun b!5529191 () Bool)

(declare-fun e!3418039 () Bool)

(declare-fun e!3418043 () Bool)

(assert (=> b!5529191 (= e!3418039 e!3418043)))

(declare-fun c!967491 () Bool)

(assert (=> b!5529191 (= c!967491 (isEmpty!34508 (tail!10926 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun e!3418042 () Bool)

(assert (=> d!1752083 e!3418042))

(declare-fun res!2354327 () Bool)

(assert (=> d!1752083 (=> (not res!2354327) (not e!3418042))))

(declare-fun lt!2248081 () Regex!15514)

(assert (=> d!1752083 (= res!2354327 (validRegex!7250 lt!2248081))))

(declare-fun e!3418040 () Regex!15514)

(assert (=> d!1752083 (= lt!2248081 e!3418040)))

(declare-fun c!967492 () Bool)

(declare-fun e!3418044 () Bool)

(assert (=> d!1752083 (= c!967492 e!3418044)))

(declare-fun res!2354326 () Bool)

(assert (=> d!1752083 (=> (not res!2354326) (not e!3418044))))

(assert (=> d!1752083 (= res!2354326 (is-Cons!62717 (exprs!5398 (h!69167 zl!343))))))

(assert (=> d!1752083 (forall!14692 (exprs!5398 (h!69167 zl!343)) lambda!296687)))

(assert (=> d!1752083 (= (generalisedConcat!1129 (exprs!5398 (h!69167 zl!343))) lt!2248081)))

(declare-fun b!5529192 () Bool)

(assert (=> b!5529192 (= e!3418041 (Concat!24359 (h!69165 (exprs!5398 (h!69167 zl!343))) (generalisedConcat!1129 (t!376098 (exprs!5398 (h!69167 zl!343))))))))

(declare-fun b!5529193 () Bool)

(assert (=> b!5529193 (= e!3418040 (h!69165 (exprs!5398 (h!69167 zl!343))))))

(declare-fun b!5529194 () Bool)

(assert (=> b!5529194 (= e!3418043 (= lt!2248081 (head!11831 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun b!5529195 () Bool)

(assert (=> b!5529195 (= e!3418044 (isEmpty!34508 (t!376098 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun b!5529196 () Bool)

(declare-fun isConcat!609 (Regex!15514) Bool)

(assert (=> b!5529196 (= e!3418043 (isConcat!609 lt!2248081))))

(declare-fun b!5529197 () Bool)

(declare-fun isEmptyExpr!1086 (Regex!15514) Bool)

(assert (=> b!5529197 (= e!3418039 (isEmptyExpr!1086 lt!2248081))))

(declare-fun b!5529198 () Bool)

(assert (=> b!5529198 (= e!3418040 e!3418041)))

(declare-fun c!967493 () Bool)

(assert (=> b!5529198 (= c!967493 (is-Cons!62717 (exprs!5398 (h!69167 zl!343))))))

(declare-fun b!5529199 () Bool)

(assert (=> b!5529199 (= e!3418042 e!3418039)))

(declare-fun c!967490 () Bool)

(assert (=> b!5529199 (= c!967490 (isEmpty!34508 (exprs!5398 (h!69167 zl!343))))))

(assert (= (and d!1752083 res!2354326) b!5529195))

(assert (= (and d!1752083 c!967492) b!5529193))

(assert (= (and d!1752083 (not c!967492)) b!5529198))

(assert (= (and b!5529198 c!967493) b!5529192))

(assert (= (and b!5529198 (not c!967493)) b!5529190))

(assert (= (and d!1752083 res!2354327) b!5529199))

(assert (= (and b!5529199 c!967490) b!5529197))

(assert (= (and b!5529199 (not c!967490)) b!5529191))

(assert (= (and b!5529191 c!967491) b!5529194))

(assert (= (and b!5529191 (not c!967491)) b!5529196))

(declare-fun m!6531256 () Bool)

(assert (=> b!5529196 m!6531256))

(declare-fun m!6531258 () Bool)

(assert (=> d!1752083 m!6531258))

(declare-fun m!6531260 () Bool)

(assert (=> d!1752083 m!6531260))

(declare-fun m!6531262 () Bool)

(assert (=> b!5529197 m!6531262))

(declare-fun m!6531264 () Bool)

(assert (=> b!5529199 m!6531264))

(assert (=> b!5529195 m!6530870))

(declare-fun m!6531266 () Bool)

(assert (=> b!5529192 m!6531266))

(declare-fun m!6531268 () Bool)

(assert (=> b!5529194 m!6531268))

(declare-fun m!6531270 () Bool)

(assert (=> b!5529191 m!6531270))

(assert (=> b!5529191 m!6531270))

(declare-fun m!6531272 () Bool)

(assert (=> b!5529191 m!6531272))

(assert (=> b!5528807 d!1752083))

(declare-fun bs!1277448 () Bool)

(declare-fun d!1752085 () Bool)

(assert (= bs!1277448 (and d!1752085 b!5529167)))

(declare-fun lambda!296690 () Int)

(assert (=> bs!1277448 (not (= lambda!296690 lambda!296683))))

(declare-fun bs!1277449 () Bool)

(assert (= bs!1277449 (and d!1752085 d!1752031)))

(assert (=> bs!1277449 (= lambda!296690 lambda!296657)))

(declare-fun bs!1277450 () Bool)

(assert (= bs!1277450 (and d!1752085 b!5529162)))

(assert (=> bs!1277450 (not (= lambda!296690 lambda!296681))))

(declare-fun bs!1277451 () Bool)

(assert (= bs!1277451 (and d!1752085 b!5529169)))

(assert (=> bs!1277451 (not (= lambda!296690 lambda!296684))))

(declare-fun bs!1277452 () Bool)

(assert (= bs!1277452 (and d!1752085 b!5529164)))

(assert (=> bs!1277452 (not (= lambda!296690 lambda!296682))))

(declare-fun bs!1277453 () Bool)

(assert (= bs!1277453 (and d!1752085 d!1752029)))

(assert (=> bs!1277453 (= lambda!296690 lambda!296654)))

(declare-fun bs!1277454 () Bool)

(assert (= bs!1277454 (and d!1752085 d!1752083)))

(assert (=> bs!1277454 (= lambda!296690 lambda!296687)))

(assert (=> d!1752085 (= (inv!82033 (h!69167 zl!343)) (forall!14692 (exprs!5398 (h!69167 zl!343)) lambda!296690))))

(declare-fun bs!1277455 () Bool)

(assert (= bs!1277455 d!1752085))

(declare-fun m!6531274 () Bool)

(assert (=> bs!1277455 m!6531274))

(assert (=> b!5528797 d!1752085))

(declare-fun b!5529218 () Bool)

(declare-fun e!3418064 () Bool)

(declare-fun call!410412 () Bool)

(assert (=> b!5529218 (= e!3418064 call!410412)))

(declare-fun c!967499 () Bool)

(declare-fun c!967498 () Bool)

(declare-fun call!410413 () Bool)

(declare-fun bm!410407 () Bool)

(assert (=> bm!410407 (= call!410413 (validRegex!7250 (ite c!967499 (reg!15843 r!7292) (ite c!967498 (regTwo!31541 r!7292) (regTwo!31540 r!7292)))))))

(declare-fun b!5529219 () Bool)

(declare-fun e!3418065 () Bool)

(assert (=> b!5529219 (= e!3418065 call!410413)))

(declare-fun d!1752087 () Bool)

(declare-fun res!2354342 () Bool)

(declare-fun e!3418060 () Bool)

(assert (=> d!1752087 (=> res!2354342 e!3418060)))

(assert (=> d!1752087 (= res!2354342 (is-ElementMatch!15514 r!7292))))

(assert (=> d!1752087 (= (validRegex!7250 r!7292) e!3418060)))

(declare-fun b!5529220 () Bool)

(declare-fun e!3418063 () Bool)

(assert (=> b!5529220 (= e!3418060 e!3418063)))

(assert (=> b!5529220 (= c!967499 (is-Star!15514 r!7292))))

(declare-fun b!5529221 () Bool)

(declare-fun e!3418059 () Bool)

(assert (=> b!5529221 (= e!3418059 call!410412)))

(declare-fun b!5529222 () Bool)

(declare-fun e!3418061 () Bool)

(assert (=> b!5529222 (= e!3418063 e!3418061)))

(assert (=> b!5529222 (= c!967498 (is-Union!15514 r!7292))))

(declare-fun b!5529223 () Bool)

(declare-fun res!2354340 () Bool)

(declare-fun e!3418062 () Bool)

(assert (=> b!5529223 (=> res!2354340 e!3418062)))

(assert (=> b!5529223 (= res!2354340 (not (is-Concat!24359 r!7292)))))

(assert (=> b!5529223 (= e!3418061 e!3418062)))

(declare-fun b!5529224 () Bool)

(assert (=> b!5529224 (= e!3418062 e!3418064)))

(declare-fun res!2354339 () Bool)

(assert (=> b!5529224 (=> (not res!2354339) (not e!3418064))))

(declare-fun call!410414 () Bool)

(assert (=> b!5529224 (= res!2354339 call!410414)))

(declare-fun bm!410408 () Bool)

(assert (=> bm!410408 (= call!410414 (validRegex!7250 (ite c!967498 (regOne!31541 r!7292) (regOne!31540 r!7292))))))

(declare-fun b!5529225 () Bool)

(declare-fun res!2354341 () Bool)

(assert (=> b!5529225 (=> (not res!2354341) (not e!3418059))))

(assert (=> b!5529225 (= res!2354341 call!410414)))

(assert (=> b!5529225 (= e!3418061 e!3418059)))

(declare-fun b!5529226 () Bool)

(assert (=> b!5529226 (= e!3418063 e!3418065)))

(declare-fun res!2354338 () Bool)

(assert (=> b!5529226 (= res!2354338 (not (nullable!5548 (reg!15843 r!7292))))))

(assert (=> b!5529226 (=> (not res!2354338) (not e!3418065))))

(declare-fun bm!410409 () Bool)

(assert (=> bm!410409 (= call!410412 call!410413)))

(assert (= (and d!1752087 (not res!2354342)) b!5529220))

(assert (= (and b!5529220 c!967499) b!5529226))

(assert (= (and b!5529220 (not c!967499)) b!5529222))

(assert (= (and b!5529226 res!2354338) b!5529219))

(assert (= (and b!5529222 c!967498) b!5529225))

(assert (= (and b!5529222 (not c!967498)) b!5529223))

(assert (= (and b!5529225 res!2354341) b!5529221))

(assert (= (and b!5529223 (not res!2354340)) b!5529224))

(assert (= (and b!5529224 res!2354339) b!5529218))

(assert (= (or b!5529221 b!5529218) bm!410409))

(assert (= (or b!5529225 b!5529224) bm!410408))

(assert (= (or b!5529219 bm!410409) bm!410407))

(declare-fun m!6531276 () Bool)

(assert (=> bm!410407 m!6531276))

(declare-fun m!6531278 () Bool)

(assert (=> bm!410408 m!6531278))

(declare-fun m!6531280 () Bool)

(assert (=> b!5529226 m!6531280))

(assert (=> start!576968 d!1752087))

(declare-fun c!967503 () Bool)

(declare-fun c!967500 () Bool)

(declare-fun call!410417 () List!62841)

(declare-fun bm!410410 () Bool)

(assert (=> bm!410410 (= call!410417 ($colon$colon!1593 (exprs!5398 lt!2247922) (ite (or c!967500 c!967503) (regTwo!31540 (regOne!31540 r!7292)) (regOne!31540 r!7292))))))

(declare-fun bm!410411 () Bool)

(declare-fun call!410416 () (Set Context!9796))

(declare-fun call!410420 () (Set Context!9796))

(assert (=> bm!410411 (= call!410416 call!410420)))

(declare-fun b!5529227 () Bool)

(declare-fun e!3418067 () (Set Context!9796))

(assert (=> b!5529227 (= e!3418067 call!410416)))

(declare-fun b!5529228 () Bool)

(declare-fun e!3418070 () (Set Context!9796))

(declare-fun e!3418066 () (Set Context!9796))

(assert (=> b!5529228 (= e!3418070 e!3418066)))

(declare-fun c!967501 () Bool)

(assert (=> b!5529228 (= c!967501 (is-Union!15514 (regOne!31540 r!7292)))))

(declare-fun b!5529229 () Bool)

(assert (=> b!5529229 (= e!3418070 (set.insert lt!2247922 (as set.empty (Set Context!9796))))))

(declare-fun b!5529231 () Bool)

(declare-fun e!3418071 () Bool)

(assert (=> b!5529231 (= e!3418071 (nullable!5548 (regOne!31540 (regOne!31540 r!7292))))))

(declare-fun b!5529232 () Bool)

(declare-fun call!410415 () (Set Context!9796))

(declare-fun call!410419 () (Set Context!9796))

(assert (=> b!5529232 (= e!3418066 (set.union call!410415 call!410419))))

(declare-fun bm!410412 () Bool)

(declare-fun call!410418 () List!62841)

(assert (=> bm!410412 (= call!410418 call!410417)))

(declare-fun b!5529233 () Bool)

(declare-fun c!967502 () Bool)

(assert (=> b!5529233 (= c!967502 (is-Star!15514 (regOne!31540 r!7292)))))

(declare-fun e!3418069 () (Set Context!9796))

(assert (=> b!5529233 (= e!3418067 e!3418069)))

(declare-fun bm!410413 () Bool)

(assert (=> bm!410413 (= call!410415 (derivationStepZipperDown!856 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292))) (ite c!967501 lt!2247922 (Context!9797 call!410417)) (h!69166 s!2326)))))

(declare-fun b!5529234 () Bool)

(assert (=> b!5529234 (= c!967500 e!3418071)))

(declare-fun res!2354343 () Bool)

(assert (=> b!5529234 (=> (not res!2354343) (not e!3418071))))

(assert (=> b!5529234 (= res!2354343 (is-Concat!24359 (regOne!31540 r!7292)))))

(declare-fun e!3418068 () (Set Context!9796))

(assert (=> b!5529234 (= e!3418066 e!3418068)))

(declare-fun b!5529230 () Bool)

(assert (=> b!5529230 (= e!3418068 e!3418067)))

(assert (=> b!5529230 (= c!967503 (is-Concat!24359 (regOne!31540 r!7292)))))

(declare-fun d!1752089 () Bool)

(declare-fun c!967504 () Bool)

(assert (=> d!1752089 (= c!967504 (and (is-ElementMatch!15514 (regOne!31540 r!7292)) (= (c!967395 (regOne!31540 r!7292)) (h!69166 s!2326))))))

(assert (=> d!1752089 (= (derivationStepZipperDown!856 (regOne!31540 r!7292) lt!2247922 (h!69166 s!2326)) e!3418070)))

(declare-fun bm!410414 () Bool)

(assert (=> bm!410414 (= call!410419 (derivationStepZipperDown!856 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292))))) (ite (or c!967501 c!967500) lt!2247922 (Context!9797 call!410418)) (h!69166 s!2326)))))

(declare-fun b!5529235 () Bool)

(assert (=> b!5529235 (= e!3418068 (set.union call!410415 call!410420))))

(declare-fun b!5529236 () Bool)

(assert (=> b!5529236 (= e!3418069 call!410416)))

(declare-fun b!5529237 () Bool)

(assert (=> b!5529237 (= e!3418069 (as set.empty (Set Context!9796)))))

(declare-fun bm!410415 () Bool)

(assert (=> bm!410415 (= call!410420 call!410419)))

(assert (= (and d!1752089 c!967504) b!5529229))

(assert (= (and d!1752089 (not c!967504)) b!5529228))

(assert (= (and b!5529228 c!967501) b!5529232))

(assert (= (and b!5529228 (not c!967501)) b!5529234))

(assert (= (and b!5529234 res!2354343) b!5529231))

(assert (= (and b!5529234 c!967500) b!5529235))

(assert (= (and b!5529234 (not c!967500)) b!5529230))

(assert (= (and b!5529230 c!967503) b!5529227))

(assert (= (and b!5529230 (not c!967503)) b!5529233))

(assert (= (and b!5529233 c!967502) b!5529236))

(assert (= (and b!5529233 (not c!967502)) b!5529237))

(assert (= (or b!5529227 b!5529236) bm!410412))

(assert (= (or b!5529227 b!5529236) bm!410411))

(assert (= (or b!5529235 bm!410412) bm!410410))

(assert (= (or b!5529235 bm!410411) bm!410415))

(assert (= (or b!5529232 bm!410415) bm!410414))

(assert (= (or b!5529232 b!5529235) bm!410413))

(declare-fun m!6531282 () Bool)

(assert (=> bm!410410 m!6531282))

(declare-fun m!6531284 () Bool)

(assert (=> bm!410413 m!6531284))

(declare-fun m!6531286 () Bool)

(assert (=> b!5529231 m!6531286))

(declare-fun m!6531288 () Bool)

(assert (=> bm!410414 m!6531288))

(assert (=> b!5529229 m!6530904))

(assert (=> b!5528798 d!1752089))

(declare-fun d!1752091 () Bool)

(declare-fun nullableFct!1672 (Regex!15514) Bool)

(assert (=> d!1752091 (= (nullable!5548 (regOne!31540 r!7292)) (nullableFct!1672 (regOne!31540 r!7292)))))

(declare-fun bs!1277456 () Bool)

(assert (= bs!1277456 d!1752091))

(declare-fun m!6531290 () Bool)

(assert (=> bs!1277456 m!6531290))

(assert (=> b!5528798 d!1752091))

(declare-fun d!1752093 () Bool)

(declare-fun dynLambda!24521 (Int Context!9796) (Set Context!9796))

(assert (=> d!1752093 (= (flatMap!1127 lt!2247909 lambda!296636) (dynLambda!24521 lambda!296636 lt!2247922))))

(declare-fun lt!2248084 () Unit!155488)

(declare-fun choose!42012 ((Set Context!9796) Context!9796 Int) Unit!155488)

(assert (=> d!1752093 (= lt!2248084 (choose!42012 lt!2247909 lt!2247922 lambda!296636))))

(assert (=> d!1752093 (= lt!2247909 (set.insert lt!2247922 (as set.empty (Set Context!9796))))))

(assert (=> d!1752093 (= (lemmaFlatMapOnSingletonSet!659 lt!2247909 lt!2247922 lambda!296636) lt!2248084)))

(declare-fun b_lambda!209827 () Bool)

(assert (=> (not b_lambda!209827) (not d!1752093)))

(declare-fun bs!1277457 () Bool)

(assert (= bs!1277457 d!1752093))

(assert (=> bs!1277457 m!6530890))

(declare-fun m!6531292 () Bool)

(assert (=> bs!1277457 m!6531292))

(declare-fun m!6531294 () Bool)

(assert (=> bs!1277457 m!6531294))

(assert (=> bs!1277457 m!6530904))

(assert (=> b!5528798 d!1752093))

(declare-fun d!1752095 () Bool)

(declare-fun choose!42013 ((Set Context!9796) Int) (Set Context!9796))

(assert (=> d!1752095 (= (flatMap!1127 lt!2247926 lambda!296636) (choose!42013 lt!2247926 lambda!296636))))

(declare-fun bs!1277458 () Bool)

(assert (= bs!1277458 d!1752095))

(declare-fun m!6531296 () Bool)

(assert (=> bs!1277458 m!6531296))

(assert (=> b!5528798 d!1752095))

(declare-fun d!1752097 () Bool)

(assert (=> d!1752097 (= (flatMap!1127 lt!2247909 lambda!296636) (choose!42013 lt!2247909 lambda!296636))))

(declare-fun bs!1277459 () Bool)

(assert (= bs!1277459 d!1752097))

(declare-fun m!6531298 () Bool)

(assert (=> bs!1277459 m!6531298))

(assert (=> b!5528798 d!1752097))

(declare-fun call!410423 () List!62841)

(declare-fun bm!410416 () Bool)

(declare-fun c!967505 () Bool)

(declare-fun c!967508 () Bool)

(assert (=> bm!410416 (= call!410423 ($colon$colon!1593 (exprs!5398 lt!2247927) (ite (or c!967505 c!967508) (regTwo!31540 (regTwo!31540 r!7292)) (regTwo!31540 r!7292))))))

(declare-fun bm!410417 () Bool)

(declare-fun call!410422 () (Set Context!9796))

(declare-fun call!410426 () (Set Context!9796))

(assert (=> bm!410417 (= call!410422 call!410426)))

(declare-fun b!5529238 () Bool)

(declare-fun e!3418073 () (Set Context!9796))

(assert (=> b!5529238 (= e!3418073 call!410422)))

(declare-fun b!5529239 () Bool)

(declare-fun e!3418076 () (Set Context!9796))

(declare-fun e!3418072 () (Set Context!9796))

(assert (=> b!5529239 (= e!3418076 e!3418072)))

(declare-fun c!967506 () Bool)

(assert (=> b!5529239 (= c!967506 (is-Union!15514 (regTwo!31540 r!7292)))))

(declare-fun b!5529240 () Bool)

(assert (=> b!5529240 (= e!3418076 (set.insert lt!2247927 (as set.empty (Set Context!9796))))))

(declare-fun b!5529242 () Bool)

(declare-fun e!3418077 () Bool)

(assert (=> b!5529242 (= e!3418077 (nullable!5548 (regOne!31540 (regTwo!31540 r!7292))))))

(declare-fun b!5529243 () Bool)

(declare-fun call!410421 () (Set Context!9796))

(declare-fun call!410425 () (Set Context!9796))

(assert (=> b!5529243 (= e!3418072 (set.union call!410421 call!410425))))

(declare-fun bm!410418 () Bool)

(declare-fun call!410424 () List!62841)

(assert (=> bm!410418 (= call!410424 call!410423)))

(declare-fun b!5529244 () Bool)

(declare-fun c!967507 () Bool)

(assert (=> b!5529244 (= c!967507 (is-Star!15514 (regTwo!31540 r!7292)))))

(declare-fun e!3418075 () (Set Context!9796))

(assert (=> b!5529244 (= e!3418073 e!3418075)))

(declare-fun bm!410419 () Bool)

(assert (=> bm!410419 (= call!410421 (derivationStepZipperDown!856 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292))) (ite c!967506 lt!2247927 (Context!9797 call!410423)) (h!69166 s!2326)))))

(declare-fun b!5529245 () Bool)

(assert (=> b!5529245 (= c!967505 e!3418077)))

(declare-fun res!2354344 () Bool)

(assert (=> b!5529245 (=> (not res!2354344) (not e!3418077))))

(assert (=> b!5529245 (= res!2354344 (is-Concat!24359 (regTwo!31540 r!7292)))))

(declare-fun e!3418074 () (Set Context!9796))

(assert (=> b!5529245 (= e!3418072 e!3418074)))

(declare-fun b!5529241 () Bool)

(assert (=> b!5529241 (= e!3418074 e!3418073)))

(assert (=> b!5529241 (= c!967508 (is-Concat!24359 (regTwo!31540 r!7292)))))

(declare-fun d!1752099 () Bool)

(declare-fun c!967509 () Bool)

(assert (=> d!1752099 (= c!967509 (and (is-ElementMatch!15514 (regTwo!31540 r!7292)) (= (c!967395 (regTwo!31540 r!7292)) (h!69166 s!2326))))))

(assert (=> d!1752099 (= (derivationStepZipperDown!856 (regTwo!31540 r!7292) lt!2247927 (h!69166 s!2326)) e!3418076)))

(declare-fun bm!410420 () Bool)

(assert (=> bm!410420 (= call!410425 (derivationStepZipperDown!856 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292))))) (ite (or c!967506 c!967505) lt!2247927 (Context!9797 call!410424)) (h!69166 s!2326)))))

(declare-fun b!5529246 () Bool)

(assert (=> b!5529246 (= e!3418074 (set.union call!410421 call!410426))))

(declare-fun b!5529247 () Bool)

(assert (=> b!5529247 (= e!3418075 call!410422)))

(declare-fun b!5529248 () Bool)

(assert (=> b!5529248 (= e!3418075 (as set.empty (Set Context!9796)))))

(declare-fun bm!410421 () Bool)

(assert (=> bm!410421 (= call!410426 call!410425)))

(assert (= (and d!1752099 c!967509) b!5529240))

(assert (= (and d!1752099 (not c!967509)) b!5529239))

(assert (= (and b!5529239 c!967506) b!5529243))

(assert (= (and b!5529239 (not c!967506)) b!5529245))

(assert (= (and b!5529245 res!2354344) b!5529242))

(assert (= (and b!5529245 c!967505) b!5529246))

(assert (= (and b!5529245 (not c!967505)) b!5529241))

(assert (= (and b!5529241 c!967508) b!5529238))

(assert (= (and b!5529241 (not c!967508)) b!5529244))

(assert (= (and b!5529244 c!967507) b!5529247))

(assert (= (and b!5529244 (not c!967507)) b!5529248))

(assert (= (or b!5529238 b!5529247) bm!410418))

(assert (= (or b!5529238 b!5529247) bm!410417))

(assert (= (or b!5529246 bm!410418) bm!410416))

(assert (= (or b!5529246 bm!410417) bm!410421))

(assert (= (or b!5529243 bm!410421) bm!410420))

(assert (= (or b!5529243 b!5529246) bm!410419))

(declare-fun m!6531300 () Bool)

(assert (=> bm!410416 m!6531300))

(declare-fun m!6531302 () Bool)

(assert (=> bm!410419 m!6531302))

(declare-fun m!6531304 () Bool)

(assert (=> b!5529242 m!6531304))

(declare-fun m!6531306 () Bool)

(assert (=> bm!410420 m!6531306))

(assert (=> b!5529240 m!6531220))

(assert (=> b!5528798 d!1752099))

(declare-fun d!1752101 () Bool)

(assert (=> d!1752101 (= (flatMap!1127 lt!2247926 lambda!296636) (dynLambda!24521 lambda!296636 lt!2247908))))

(declare-fun lt!2248085 () Unit!155488)

(assert (=> d!1752101 (= lt!2248085 (choose!42012 lt!2247926 lt!2247908 lambda!296636))))

(assert (=> d!1752101 (= lt!2247926 (set.insert lt!2247908 (as set.empty (Set Context!9796))))))

(assert (=> d!1752101 (= (lemmaFlatMapOnSingletonSet!659 lt!2247926 lt!2247908 lambda!296636) lt!2248085)))

(declare-fun b_lambda!209829 () Bool)

(assert (=> (not b_lambda!209829) (not d!1752101)))

(declare-fun bs!1277460 () Bool)

(assert (= bs!1277460 d!1752101))

(assert (=> bs!1277460 m!6530886))

(declare-fun m!6531308 () Bool)

(assert (=> bs!1277460 m!6531308))

(declare-fun m!6531310 () Bool)

(assert (=> bs!1277460 m!6531310))

(assert (=> bs!1277460 m!6530900))

(assert (=> b!5528798 d!1752101))

(declare-fun bm!410422 () Bool)

(declare-fun call!410427 () (Set Context!9796))

(assert (=> bm!410422 (= call!410427 (derivationStepZipperDown!856 (h!69165 (exprs!5398 lt!2247922)) (Context!9797 (t!376098 (exprs!5398 lt!2247922))) (h!69166 s!2326)))))

(declare-fun b!5529249 () Bool)

(declare-fun e!3418079 () Bool)

(assert (=> b!5529249 (= e!3418079 (nullable!5548 (h!69165 (exprs!5398 lt!2247922))))))

(declare-fun b!5529250 () Bool)

(declare-fun e!3418080 () (Set Context!9796))

(assert (=> b!5529250 (= e!3418080 (set.union call!410427 (derivationStepZipperUp!782 (Context!9797 (t!376098 (exprs!5398 lt!2247922))) (h!69166 s!2326))))))

(declare-fun b!5529251 () Bool)

(declare-fun e!3418078 () (Set Context!9796))

(assert (=> b!5529251 (= e!3418078 (as set.empty (Set Context!9796)))))

(declare-fun d!1752103 () Bool)

(declare-fun c!967510 () Bool)

(assert (=> d!1752103 (= c!967510 e!3418079)))

(declare-fun res!2354345 () Bool)

(assert (=> d!1752103 (=> (not res!2354345) (not e!3418079))))

(assert (=> d!1752103 (= res!2354345 (is-Cons!62717 (exprs!5398 lt!2247922)))))

(assert (=> d!1752103 (= (derivationStepZipperUp!782 lt!2247922 (h!69166 s!2326)) e!3418080)))

(declare-fun b!5529252 () Bool)

(assert (=> b!5529252 (= e!3418080 e!3418078)))

(declare-fun c!967511 () Bool)

(assert (=> b!5529252 (= c!967511 (is-Cons!62717 (exprs!5398 lt!2247922)))))

(declare-fun b!5529253 () Bool)

(assert (=> b!5529253 (= e!3418078 call!410427)))

(assert (= (and d!1752103 res!2354345) b!5529249))

(assert (= (and d!1752103 c!967510) b!5529250))

(assert (= (and d!1752103 (not c!967510)) b!5529252))

(assert (= (and b!5529252 c!967511) b!5529253))

(assert (= (and b!5529252 (not c!967511)) b!5529251))

(assert (= (or b!5529250 b!5529253) bm!410422))

(declare-fun m!6531312 () Bool)

(assert (=> bm!410422 m!6531312))

(declare-fun m!6531314 () Bool)

(assert (=> b!5529249 m!6531314))

(declare-fun m!6531316 () Bool)

(assert (=> b!5529250 m!6531316))

(assert (=> b!5528798 d!1752103))

(declare-fun bm!410423 () Bool)

(declare-fun call!410428 () (Set Context!9796))

(assert (=> bm!410423 (= call!410428 (derivationStepZipperDown!856 (h!69165 (exprs!5398 lt!2247908)) (Context!9797 (t!376098 (exprs!5398 lt!2247908))) (h!69166 s!2326)))))

(declare-fun b!5529254 () Bool)

(declare-fun e!3418082 () Bool)

(assert (=> b!5529254 (= e!3418082 (nullable!5548 (h!69165 (exprs!5398 lt!2247908))))))

(declare-fun e!3418083 () (Set Context!9796))

(declare-fun b!5529255 () Bool)

(assert (=> b!5529255 (= e!3418083 (set.union call!410428 (derivationStepZipperUp!782 (Context!9797 (t!376098 (exprs!5398 lt!2247908))) (h!69166 s!2326))))))

(declare-fun b!5529256 () Bool)

(declare-fun e!3418081 () (Set Context!9796))

(assert (=> b!5529256 (= e!3418081 (as set.empty (Set Context!9796)))))

(declare-fun d!1752105 () Bool)

(declare-fun c!967512 () Bool)

(assert (=> d!1752105 (= c!967512 e!3418082)))

(declare-fun res!2354346 () Bool)

(assert (=> d!1752105 (=> (not res!2354346) (not e!3418082))))

(assert (=> d!1752105 (= res!2354346 (is-Cons!62717 (exprs!5398 lt!2247908)))))

(assert (=> d!1752105 (= (derivationStepZipperUp!782 lt!2247908 (h!69166 s!2326)) e!3418083)))

(declare-fun b!5529257 () Bool)

(assert (=> b!5529257 (= e!3418083 e!3418081)))

(declare-fun c!967513 () Bool)

(assert (=> b!5529257 (= c!967513 (is-Cons!62717 (exprs!5398 lt!2247908)))))

(declare-fun b!5529258 () Bool)

(assert (=> b!5529258 (= e!3418081 call!410428)))

(assert (= (and d!1752105 res!2354346) b!5529254))

(assert (= (and d!1752105 c!967512) b!5529255))

(assert (= (and d!1752105 (not c!967512)) b!5529257))

(assert (= (and b!5529257 c!967513) b!5529258))

(assert (= (and b!5529257 (not c!967513)) b!5529256))

(assert (= (or b!5529255 b!5529258) bm!410423))

(declare-fun m!6531318 () Bool)

(assert (=> bm!410423 m!6531318))

(declare-fun m!6531320 () Bool)

(assert (=> b!5529254 m!6531320))

(declare-fun m!6531322 () Bool)

(assert (=> b!5529255 m!6531322))

(assert (=> b!5528798 d!1752105))

(declare-fun d!1752107 () Bool)

(declare-fun e!3418086 () Bool)

(assert (=> d!1752107 e!3418086))

(declare-fun res!2354349 () Bool)

(assert (=> d!1752107 (=> (not res!2354349) (not e!3418086))))

(declare-fun lt!2248088 () List!62843)

(declare-fun noDuplicate!1507 (List!62843) Bool)

(assert (=> d!1752107 (= res!2354349 (noDuplicate!1507 lt!2248088))))

(declare-fun choose!42014 ((Set Context!9796)) List!62843)

(assert (=> d!1752107 (= lt!2248088 (choose!42014 z!1189))))

(assert (=> d!1752107 (= (toList!9298 z!1189) lt!2248088)))

(declare-fun b!5529261 () Bool)

(declare-fun content!11283 (List!62843) (Set Context!9796))

(assert (=> b!5529261 (= e!3418086 (= (content!11283 lt!2248088) z!1189))))

(assert (= (and d!1752107 res!2354349) b!5529261))

(declare-fun m!6531324 () Bool)

(assert (=> d!1752107 m!6531324))

(declare-fun m!6531326 () Bool)

(assert (=> d!1752107 m!6531326))

(declare-fun m!6531328 () Bool)

(assert (=> b!5529261 m!6531328))

(assert (=> b!5528788 d!1752107))

(declare-fun d!1752109 () Bool)

(assert (=> d!1752109 (= (flatMap!1127 z!1189 lambda!296636) (choose!42013 z!1189 lambda!296636))))

(declare-fun bs!1277461 () Bool)

(assert (= bs!1277461 d!1752109))

(declare-fun m!6531330 () Bool)

(assert (=> bs!1277461 m!6531330))

(assert (=> b!5528779 d!1752109))

(declare-fun bm!410424 () Bool)

(declare-fun call!410429 () (Set Context!9796))

(assert (=> bm!410424 (= call!410429 (derivationStepZipperDown!856 (h!69165 (exprs!5398 (h!69167 zl!343))) (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343)))) (h!69166 s!2326)))))

(declare-fun b!5529262 () Bool)

(declare-fun e!3418088 () Bool)

(assert (=> b!5529262 (= e!3418088 (nullable!5548 (h!69165 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun b!5529263 () Bool)

(declare-fun e!3418089 () (Set Context!9796))

(assert (=> b!5529263 (= e!3418089 (set.union call!410429 (derivationStepZipperUp!782 (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343)))) (h!69166 s!2326))))))

(declare-fun b!5529264 () Bool)

(declare-fun e!3418087 () (Set Context!9796))

(assert (=> b!5529264 (= e!3418087 (as set.empty (Set Context!9796)))))

(declare-fun d!1752111 () Bool)

(declare-fun c!967514 () Bool)

(assert (=> d!1752111 (= c!967514 e!3418088)))

(declare-fun res!2354350 () Bool)

(assert (=> d!1752111 (=> (not res!2354350) (not e!3418088))))

(assert (=> d!1752111 (= res!2354350 (is-Cons!62717 (exprs!5398 (h!69167 zl!343))))))

(assert (=> d!1752111 (= (derivationStepZipperUp!782 (h!69167 zl!343) (h!69166 s!2326)) e!3418089)))

(declare-fun b!5529265 () Bool)

(assert (=> b!5529265 (= e!3418089 e!3418087)))

(declare-fun c!967515 () Bool)

(assert (=> b!5529265 (= c!967515 (is-Cons!62717 (exprs!5398 (h!69167 zl!343))))))

(declare-fun b!5529266 () Bool)

(assert (=> b!5529266 (= e!3418087 call!410429)))

(assert (= (and d!1752111 res!2354350) b!5529262))

(assert (= (and d!1752111 c!967514) b!5529263))

(assert (= (and d!1752111 (not c!967514)) b!5529265))

(assert (= (and b!5529265 c!967515) b!5529266))

(assert (= (and b!5529265 (not c!967515)) b!5529264))

(assert (= (or b!5529263 b!5529266) bm!410424))

(declare-fun m!6531332 () Bool)

(assert (=> bm!410424 m!6531332))

(declare-fun m!6531334 () Bool)

(assert (=> b!5529262 m!6531334))

(declare-fun m!6531336 () Bool)

(assert (=> b!5529263 m!6531336))

(assert (=> b!5528779 d!1752111))

(declare-fun d!1752113 () Bool)

(assert (=> d!1752113 (= (flatMap!1127 z!1189 lambda!296636) (dynLambda!24521 lambda!296636 (h!69167 zl!343)))))

(declare-fun lt!2248089 () Unit!155488)

(assert (=> d!1752113 (= lt!2248089 (choose!42012 z!1189 (h!69167 zl!343) lambda!296636))))

(assert (=> d!1752113 (= z!1189 (set.insert (h!69167 zl!343) (as set.empty (Set Context!9796))))))

(assert (=> d!1752113 (= (lemmaFlatMapOnSingletonSet!659 z!1189 (h!69167 zl!343) lambda!296636) lt!2248089)))

(declare-fun b_lambda!209831 () Bool)

(assert (=> (not b_lambda!209831) (not d!1752113)))

(declare-fun bs!1277462 () Bool)

(assert (= bs!1277462 d!1752113))

(assert (=> bs!1277462 m!6530942))

(declare-fun m!6531338 () Bool)

(assert (=> bs!1277462 m!6531338))

(declare-fun m!6531340 () Bool)

(assert (=> bs!1277462 m!6531340))

(declare-fun m!6531342 () Bool)

(assert (=> bs!1277462 m!6531342))

(assert (=> b!5528779 d!1752113))

(declare-fun bs!1277463 () Bool)

(declare-fun d!1752115 () Bool)

(assert (= bs!1277463 (and d!1752115 b!5529167)))

(declare-fun lambda!296691 () Int)

(assert (=> bs!1277463 (not (= lambda!296691 lambda!296683))))

(declare-fun bs!1277464 () Bool)

(assert (= bs!1277464 (and d!1752115 d!1752031)))

(assert (=> bs!1277464 (= lambda!296691 lambda!296657)))

(declare-fun bs!1277465 () Bool)

(assert (= bs!1277465 (and d!1752115 b!5529162)))

(assert (=> bs!1277465 (not (= lambda!296691 lambda!296681))))

(declare-fun bs!1277466 () Bool)

(assert (= bs!1277466 (and d!1752115 d!1752085)))

(assert (=> bs!1277466 (= lambda!296691 lambda!296690)))

(declare-fun bs!1277467 () Bool)

(assert (= bs!1277467 (and d!1752115 b!5529169)))

(assert (=> bs!1277467 (not (= lambda!296691 lambda!296684))))

(declare-fun bs!1277468 () Bool)

(assert (= bs!1277468 (and d!1752115 b!5529164)))

(assert (=> bs!1277468 (not (= lambda!296691 lambda!296682))))

(declare-fun bs!1277469 () Bool)

(assert (= bs!1277469 (and d!1752115 d!1752029)))

(assert (=> bs!1277469 (= lambda!296691 lambda!296654)))

(declare-fun bs!1277470 () Bool)

(assert (= bs!1277470 (and d!1752115 d!1752083)))

(assert (=> bs!1277470 (= lambda!296691 lambda!296687)))

(assert (=> d!1752115 (= (inv!82033 setElem!36776) (forall!14692 (exprs!5398 setElem!36776) lambda!296691))))

(declare-fun bs!1277471 () Bool)

(assert (= bs!1277471 d!1752115))

(declare-fun m!6531344 () Bool)

(assert (=> bs!1277471 m!6531344))

(assert (=> setNonEmpty!36776 d!1752115))

(declare-fun b!5529273 () Bool)

(assert (=> b!5529273 true))

(declare-fun bs!1277472 () Bool)

(declare-fun b!5529275 () Bool)

(assert (= bs!1277472 (and b!5529275 b!5529273)))

(declare-fun lt!2248099 () Int)

(declare-fun lambda!296699 () Int)

(declare-fun lt!2248101 () Int)

(declare-fun lambda!296700 () Int)

(assert (=> bs!1277472 (= (= lt!2248099 lt!2248101) (= lambda!296700 lambda!296699))))

(assert (=> b!5529275 true))

(declare-fun d!1752117 () Bool)

(declare-fun e!3418094 () Bool)

(assert (=> d!1752117 e!3418094))

(declare-fun res!2354353 () Bool)

(assert (=> d!1752117 (=> (not res!2354353) (not e!3418094))))

(assert (=> d!1752117 (= res!2354353 (>= lt!2248099 0))))

(declare-fun e!3418095 () Int)

(assert (=> d!1752117 (= lt!2248099 e!3418095)))

(declare-fun c!967524 () Bool)

(assert (=> d!1752117 (= c!967524 (is-Cons!62719 (Cons!62719 lt!2247930 Nil!62719)))))

(assert (=> d!1752117 (= (zipperDepth!197 (Cons!62719 lt!2247930 Nil!62719)) lt!2248099)))

(assert (=> b!5529273 (= e!3418095 lt!2248101)))

(assert (=> b!5529273 (= lt!2248101 (maxBigInt!0 (contextDepth!110 (h!69167 (Cons!62719 lt!2247930 Nil!62719))) (zipperDepth!197 (t!376100 (Cons!62719 lt!2247930 Nil!62719)))))))

(declare-fun lt!2248098 () Unit!155488)

(declare-fun lambda!296698 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!102 (List!62843 Int Int Int) Unit!155488)

(assert (=> b!5529273 (= lt!2248098 (lemmaForallContextDepthBiggerThanTransitive!102 (t!376100 (Cons!62719 lt!2247930 Nil!62719)) lt!2248101 (zipperDepth!197 (t!376100 (Cons!62719 lt!2247930 Nil!62719))) lambda!296698))))

(declare-fun forall!14693 (List!62843 Int) Bool)

(assert (=> b!5529273 (forall!14693 (t!376100 (Cons!62719 lt!2247930 Nil!62719)) lambda!296699)))

(declare-fun lt!2248100 () Unit!155488)

(assert (=> b!5529273 (= lt!2248100 lt!2248098)))

(declare-fun b!5529274 () Bool)

(assert (=> b!5529274 (= e!3418095 0)))

(assert (=> b!5529275 (= e!3418094 (forall!14693 (Cons!62719 lt!2247930 Nil!62719) lambda!296700))))

(assert (= (and d!1752117 c!967524) b!5529273))

(assert (= (and d!1752117 (not c!967524)) b!5529274))

(assert (= (and d!1752117 res!2354353) b!5529275))

(declare-fun m!6531346 () Bool)

(assert (=> b!5529273 m!6531346))

(assert (=> b!5529273 m!6531346))

(declare-fun m!6531348 () Bool)

(assert (=> b!5529273 m!6531348))

(declare-fun m!6531350 () Bool)

(assert (=> b!5529273 m!6531350))

(assert (=> b!5529273 m!6531348))

(declare-fun m!6531352 () Bool)

(assert (=> b!5529273 m!6531352))

(assert (=> b!5529273 m!6531348))

(declare-fun m!6531354 () Bool)

(assert (=> b!5529273 m!6531354))

(declare-fun m!6531356 () Bool)

(assert (=> b!5529275 m!6531356))

(assert (=> b!5528799 d!1752117))

(declare-fun bs!1277473 () Bool)

(declare-fun b!5529278 () Bool)

(assert (= bs!1277473 (and b!5529278 b!5529273)))

(declare-fun lambda!296701 () Int)

(assert (=> bs!1277473 (= lambda!296701 lambda!296698)))

(declare-fun lt!2248105 () Int)

(declare-fun lambda!296702 () Int)

(assert (=> bs!1277473 (= (= lt!2248105 lt!2248101) (= lambda!296702 lambda!296699))))

(declare-fun bs!1277474 () Bool)

(assert (= bs!1277474 (and b!5529278 b!5529275)))

(assert (=> bs!1277474 (= (= lt!2248105 lt!2248099) (= lambda!296702 lambda!296700))))

(assert (=> b!5529278 true))

(declare-fun bs!1277475 () Bool)

(declare-fun b!5529280 () Bool)

(assert (= bs!1277475 (and b!5529280 b!5529273)))

(declare-fun lambda!296703 () Int)

(declare-fun lt!2248103 () Int)

(assert (=> bs!1277475 (= (= lt!2248103 lt!2248101) (= lambda!296703 lambda!296699))))

(declare-fun bs!1277476 () Bool)

(assert (= bs!1277476 (and b!5529280 b!5529275)))

(assert (=> bs!1277476 (= (= lt!2248103 lt!2248099) (= lambda!296703 lambda!296700))))

(declare-fun bs!1277477 () Bool)

(assert (= bs!1277477 (and b!5529280 b!5529278)))

(assert (=> bs!1277477 (= (= lt!2248103 lt!2248105) (= lambda!296703 lambda!296702))))

(assert (=> b!5529280 true))

(declare-fun d!1752119 () Bool)

(declare-fun e!3418096 () Bool)

(assert (=> d!1752119 e!3418096))

(declare-fun res!2354354 () Bool)

(assert (=> d!1752119 (=> (not res!2354354) (not e!3418096))))

(assert (=> d!1752119 (= res!2354354 (>= lt!2248103 0))))

(declare-fun e!3418097 () Int)

(assert (=> d!1752119 (= lt!2248103 e!3418097)))

(declare-fun c!967525 () Bool)

(assert (=> d!1752119 (= c!967525 (is-Cons!62719 (Cons!62719 lt!2247908 Nil!62719)))))

(assert (=> d!1752119 (= (zipperDepth!197 (Cons!62719 lt!2247908 Nil!62719)) lt!2248103)))

(assert (=> b!5529278 (= e!3418097 lt!2248105)))

(assert (=> b!5529278 (= lt!2248105 (maxBigInt!0 (contextDepth!110 (h!69167 (Cons!62719 lt!2247908 Nil!62719))) (zipperDepth!197 (t!376100 (Cons!62719 lt!2247908 Nil!62719)))))))

(declare-fun lt!2248102 () Unit!155488)

(assert (=> b!5529278 (= lt!2248102 (lemmaForallContextDepthBiggerThanTransitive!102 (t!376100 (Cons!62719 lt!2247908 Nil!62719)) lt!2248105 (zipperDepth!197 (t!376100 (Cons!62719 lt!2247908 Nil!62719))) lambda!296701))))

(assert (=> b!5529278 (forall!14693 (t!376100 (Cons!62719 lt!2247908 Nil!62719)) lambda!296702)))

(declare-fun lt!2248104 () Unit!155488)

(assert (=> b!5529278 (= lt!2248104 lt!2248102)))

(declare-fun b!5529279 () Bool)

(assert (=> b!5529279 (= e!3418097 0)))

(assert (=> b!5529280 (= e!3418096 (forall!14693 (Cons!62719 lt!2247908 Nil!62719) lambda!296703))))

(assert (= (and d!1752119 c!967525) b!5529278))

(assert (= (and d!1752119 (not c!967525)) b!5529279))

(assert (= (and d!1752119 res!2354354) b!5529280))

(declare-fun m!6531358 () Bool)

(assert (=> b!5529278 m!6531358))

(assert (=> b!5529278 m!6531358))

(declare-fun m!6531360 () Bool)

(assert (=> b!5529278 m!6531360))

(declare-fun m!6531362 () Bool)

(assert (=> b!5529278 m!6531362))

(assert (=> b!5529278 m!6531360))

(declare-fun m!6531364 () Bool)

(assert (=> b!5529278 m!6531364))

(assert (=> b!5529278 m!6531360))

(declare-fun m!6531366 () Bool)

(assert (=> b!5529278 m!6531366))

(declare-fun m!6531368 () Bool)

(assert (=> b!5529280 m!6531368))

(assert (=> b!5528799 d!1752119))

(declare-fun d!1752121 () Bool)

(declare-fun c!967526 () Bool)

(assert (=> d!1752121 (= c!967526 (isEmpty!34511 s!2326))))

(declare-fun e!3418098 () Bool)

(assert (=> d!1752121 (= (matchZipper!1672 lt!2247926 s!2326) e!3418098)))

(declare-fun b!5529281 () Bool)

(assert (=> b!5529281 (= e!3418098 (nullableZipper!1540 lt!2247926))))

(declare-fun b!5529282 () Bool)

(assert (=> b!5529282 (= e!3418098 (matchZipper!1672 (derivationStepZipper!1619 lt!2247926 (head!11832 s!2326)) (tail!10927 s!2326)))))

(assert (= (and d!1752121 c!967526) b!5529281))

(assert (= (and d!1752121 (not c!967526)) b!5529282))

(assert (=> d!1752121 m!6531104))

(declare-fun m!6531370 () Bool)

(assert (=> b!5529281 m!6531370))

(assert (=> b!5529282 m!6531108))

(assert (=> b!5529282 m!6531108))

(declare-fun m!6531372 () Bool)

(assert (=> b!5529282 m!6531372))

(assert (=> b!5529282 m!6531112))

(assert (=> b!5529282 m!6531372))

(assert (=> b!5529282 m!6531112))

(declare-fun m!6531374 () Bool)

(assert (=> b!5529282 m!6531374))

(assert (=> b!5528790 d!1752121))

(declare-fun d!1752123 () Bool)

(declare-fun c!967527 () Bool)

(assert (=> d!1752123 (= c!967527 (isEmpty!34511 (t!376099 s!2326)))))

(declare-fun e!3418099 () Bool)

(assert (=> d!1752123 (= (matchZipper!1672 (derivationStepZipper!1619 lt!2247926 (h!69166 s!2326)) (t!376099 s!2326)) e!3418099)))

(declare-fun b!5529283 () Bool)

(assert (=> b!5529283 (= e!3418099 (nullableZipper!1540 (derivationStepZipper!1619 lt!2247926 (h!69166 s!2326))))))

(declare-fun b!5529284 () Bool)

(assert (=> b!5529284 (= e!3418099 (matchZipper!1672 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247926 (h!69166 s!2326)) (head!11832 (t!376099 s!2326))) (tail!10927 (t!376099 s!2326))))))

(assert (= (and d!1752123 c!967527) b!5529283))

(assert (= (and d!1752123 (not c!967527)) b!5529284))

(assert (=> d!1752123 m!6531116))

(assert (=> b!5529283 m!6530956))

(declare-fun m!6531376 () Bool)

(assert (=> b!5529283 m!6531376))

(assert (=> b!5529284 m!6531120))

(assert (=> b!5529284 m!6530956))

(assert (=> b!5529284 m!6531120))

(declare-fun m!6531378 () Bool)

(assert (=> b!5529284 m!6531378))

(assert (=> b!5529284 m!6531124))

(assert (=> b!5529284 m!6531378))

(assert (=> b!5529284 m!6531124))

(declare-fun m!6531380 () Bool)

(assert (=> b!5529284 m!6531380))

(assert (=> b!5528790 d!1752123))

(declare-fun bs!1277478 () Bool)

(declare-fun d!1752125 () Bool)

(assert (= bs!1277478 (and d!1752125 b!5528779)))

(declare-fun lambda!296704 () Int)

(assert (=> bs!1277478 (= lambda!296704 lambda!296636)))

(declare-fun bs!1277479 () Bool)

(assert (= bs!1277479 (and d!1752125 d!1752037)))

(assert (=> bs!1277479 (= lambda!296704 lambda!296660)))

(declare-fun bs!1277480 () Bool)

(assert (= bs!1277480 (and d!1752125 d!1752073)))

(assert (=> bs!1277480 (= lambda!296704 lambda!296676)))

(assert (=> d!1752125 true))

(assert (=> d!1752125 (= (derivationStepZipper!1619 lt!2247926 (h!69166 s!2326)) (flatMap!1127 lt!2247926 lambda!296704))))

(declare-fun bs!1277481 () Bool)

(assert (= bs!1277481 d!1752125))

(declare-fun m!6531382 () Bool)

(assert (=> bs!1277481 m!6531382))

(assert (=> b!5528790 d!1752125))

(declare-fun bs!1277482 () Bool)

(declare-fun b!5529285 () Bool)

(assert (= bs!1277482 (and b!5529285 b!5529273)))

(declare-fun lambda!296705 () Int)

(assert (=> bs!1277482 (= lambda!296705 lambda!296698)))

(declare-fun bs!1277483 () Bool)

(assert (= bs!1277483 (and b!5529285 b!5529278)))

(assert (=> bs!1277483 (= lambda!296705 lambda!296701)))

(declare-fun lt!2248109 () Int)

(declare-fun lambda!296706 () Int)

(assert (=> bs!1277482 (= (= lt!2248109 lt!2248101) (= lambda!296706 lambda!296699))))

(declare-fun bs!1277484 () Bool)

(assert (= bs!1277484 (and b!5529285 b!5529275)))

(assert (=> bs!1277484 (= (= lt!2248109 lt!2248099) (= lambda!296706 lambda!296700))))

(assert (=> bs!1277483 (= (= lt!2248109 lt!2248105) (= lambda!296706 lambda!296702))))

(declare-fun bs!1277485 () Bool)

(assert (= bs!1277485 (and b!5529285 b!5529280)))

(assert (=> bs!1277485 (= (= lt!2248109 lt!2248103) (= lambda!296706 lambda!296703))))

(assert (=> b!5529285 true))

(declare-fun bs!1277486 () Bool)

(declare-fun b!5529287 () Bool)

(assert (= bs!1277486 (and b!5529287 b!5529278)))

(declare-fun lambda!296707 () Int)

(declare-fun lt!2248107 () Int)

(assert (=> bs!1277486 (= (= lt!2248107 lt!2248105) (= lambda!296707 lambda!296702))))

(declare-fun bs!1277487 () Bool)

(assert (= bs!1277487 (and b!5529287 b!5529285)))

(assert (=> bs!1277487 (= (= lt!2248107 lt!2248109) (= lambda!296707 lambda!296706))))

(declare-fun bs!1277488 () Bool)

(assert (= bs!1277488 (and b!5529287 b!5529273)))

(assert (=> bs!1277488 (= (= lt!2248107 lt!2248101) (= lambda!296707 lambda!296699))))

(declare-fun bs!1277489 () Bool)

(assert (= bs!1277489 (and b!5529287 b!5529280)))

(assert (=> bs!1277489 (= (= lt!2248107 lt!2248103) (= lambda!296707 lambda!296703))))

(declare-fun bs!1277490 () Bool)

(assert (= bs!1277490 (and b!5529287 b!5529275)))

(assert (=> bs!1277490 (= (= lt!2248107 lt!2248099) (= lambda!296707 lambda!296700))))

(assert (=> b!5529287 true))

(declare-fun d!1752127 () Bool)

(declare-fun e!3418100 () Bool)

(assert (=> d!1752127 e!3418100))

(declare-fun res!2354355 () Bool)

(assert (=> d!1752127 (=> (not res!2354355) (not e!3418100))))

(assert (=> d!1752127 (= res!2354355 (>= lt!2248107 0))))

(declare-fun e!3418101 () Int)

(assert (=> d!1752127 (= lt!2248107 e!3418101)))

(declare-fun c!967528 () Bool)

(assert (=> d!1752127 (= c!967528 (is-Cons!62719 (Cons!62719 lt!2247922 Nil!62719)))))

(assert (=> d!1752127 (= (zipperDepth!197 (Cons!62719 lt!2247922 Nil!62719)) lt!2248107)))

(assert (=> b!5529285 (= e!3418101 lt!2248109)))

(assert (=> b!5529285 (= lt!2248109 (maxBigInt!0 (contextDepth!110 (h!69167 (Cons!62719 lt!2247922 Nil!62719))) (zipperDepth!197 (t!376100 (Cons!62719 lt!2247922 Nil!62719)))))))

(declare-fun lt!2248106 () Unit!155488)

(assert (=> b!5529285 (= lt!2248106 (lemmaForallContextDepthBiggerThanTransitive!102 (t!376100 (Cons!62719 lt!2247922 Nil!62719)) lt!2248109 (zipperDepth!197 (t!376100 (Cons!62719 lt!2247922 Nil!62719))) lambda!296705))))

(assert (=> b!5529285 (forall!14693 (t!376100 (Cons!62719 lt!2247922 Nil!62719)) lambda!296706)))

(declare-fun lt!2248108 () Unit!155488)

(assert (=> b!5529285 (= lt!2248108 lt!2248106)))

(declare-fun b!5529286 () Bool)

(assert (=> b!5529286 (= e!3418101 0)))

(assert (=> b!5529287 (= e!3418100 (forall!14693 (Cons!62719 lt!2247922 Nil!62719) lambda!296707))))

(assert (= (and d!1752127 c!967528) b!5529285))

(assert (= (and d!1752127 (not c!967528)) b!5529286))

(assert (= (and d!1752127 res!2354355) b!5529287))

(declare-fun m!6531384 () Bool)

(assert (=> b!5529285 m!6531384))

(assert (=> b!5529285 m!6531384))

(declare-fun m!6531386 () Bool)

(assert (=> b!5529285 m!6531386))

(declare-fun m!6531388 () Bool)

(assert (=> b!5529285 m!6531388))

(assert (=> b!5529285 m!6531386))

(declare-fun m!6531390 () Bool)

(assert (=> b!5529285 m!6531390))

(assert (=> b!5529285 m!6531386))

(declare-fun m!6531392 () Bool)

(assert (=> b!5529285 m!6531392))

(declare-fun m!6531394 () Bool)

(assert (=> b!5529287 m!6531394))

(assert (=> b!5528791 d!1752127))

(declare-fun bs!1277491 () Bool)

(declare-fun b!5529288 () Bool)

(assert (= bs!1277491 (and b!5529288 b!5529167)))

(declare-fun lambda!296708 () Int)

(declare-fun lt!2248113 () Int)

(assert (=> bs!1277491 (= (= lt!2248113 lt!2248075) (= lambda!296708 lambda!296683))))

(declare-fun bs!1277492 () Bool)

(assert (= bs!1277492 (and b!5529288 d!1752031)))

(assert (=> bs!1277492 (not (= lambda!296708 lambda!296657))))

(declare-fun bs!1277493 () Bool)

(assert (= bs!1277493 (and b!5529288 b!5529162)))

(assert (=> bs!1277493 (= (= lt!2248113 lt!2248071) (= lambda!296708 lambda!296681))))

(declare-fun bs!1277494 () Bool)

(assert (= bs!1277494 (and b!5529288 d!1752115)))

(assert (=> bs!1277494 (not (= lambda!296708 lambda!296691))))

(declare-fun bs!1277495 () Bool)

(assert (= bs!1277495 (and b!5529288 d!1752085)))

(assert (=> bs!1277495 (not (= lambda!296708 lambda!296690))))

(declare-fun bs!1277496 () Bool)

(assert (= bs!1277496 (and b!5529288 b!5529169)))

(assert (=> bs!1277496 (= (= lt!2248113 lt!2248074) (= lambda!296708 lambda!296684))))

(declare-fun bs!1277497 () Bool)

(assert (= bs!1277497 (and b!5529288 b!5529164)))

(assert (=> bs!1277497 (= (= lt!2248113 lt!2248070) (= lambda!296708 lambda!296682))))

(declare-fun bs!1277498 () Bool)

(assert (= bs!1277498 (and b!5529288 d!1752029)))

(assert (=> bs!1277498 (not (= lambda!296708 lambda!296654))))

(declare-fun bs!1277499 () Bool)

(assert (= bs!1277499 (and b!5529288 d!1752083)))

(assert (=> bs!1277499 (not (= lambda!296708 lambda!296687))))

(assert (=> b!5529288 true))

(declare-fun bs!1277500 () Bool)

(declare-fun b!5529290 () Bool)

(assert (= bs!1277500 (and b!5529290 b!5529288)))

(declare-fun lt!2248112 () Int)

(declare-fun lambda!296709 () Int)

(assert (=> bs!1277500 (= (= lt!2248112 lt!2248113) (= lambda!296709 lambda!296708))))

(declare-fun bs!1277501 () Bool)

(assert (= bs!1277501 (and b!5529290 b!5529167)))

(assert (=> bs!1277501 (= (= lt!2248112 lt!2248075) (= lambda!296709 lambda!296683))))

(declare-fun bs!1277502 () Bool)

(assert (= bs!1277502 (and b!5529290 d!1752031)))

(assert (=> bs!1277502 (not (= lambda!296709 lambda!296657))))

(declare-fun bs!1277503 () Bool)

(assert (= bs!1277503 (and b!5529290 b!5529162)))

(assert (=> bs!1277503 (= (= lt!2248112 lt!2248071) (= lambda!296709 lambda!296681))))

(declare-fun bs!1277504 () Bool)

(assert (= bs!1277504 (and b!5529290 d!1752115)))

(assert (=> bs!1277504 (not (= lambda!296709 lambda!296691))))

(declare-fun bs!1277505 () Bool)

(assert (= bs!1277505 (and b!5529290 d!1752085)))

(assert (=> bs!1277505 (not (= lambda!296709 lambda!296690))))

(declare-fun bs!1277506 () Bool)

(assert (= bs!1277506 (and b!5529290 b!5529169)))

(assert (=> bs!1277506 (= (= lt!2248112 lt!2248074) (= lambda!296709 lambda!296684))))

(declare-fun bs!1277507 () Bool)

(assert (= bs!1277507 (and b!5529290 b!5529164)))

(assert (=> bs!1277507 (= (= lt!2248112 lt!2248070) (= lambda!296709 lambda!296682))))

(declare-fun bs!1277508 () Bool)

(assert (= bs!1277508 (and b!5529290 d!1752029)))

(assert (=> bs!1277508 (not (= lambda!296709 lambda!296654))))

(declare-fun bs!1277509 () Bool)

(assert (= bs!1277509 (and b!5529290 d!1752083)))

(assert (=> bs!1277509 (not (= lambda!296709 lambda!296687))))

(assert (=> b!5529290 true))

(declare-fun d!1752129 () Bool)

(declare-fun e!3418103 () Bool)

(assert (=> d!1752129 e!3418103))

(declare-fun res!2354356 () Bool)

(assert (=> d!1752129 (=> (not res!2354356) (not e!3418103))))

(assert (=> d!1752129 (= res!2354356 (>= lt!2248112 0))))

(declare-fun e!3418102 () Int)

(assert (=> d!1752129 (= lt!2248112 e!3418102)))

(declare-fun c!967529 () Bool)

(assert (=> d!1752129 (= c!967529 (is-Cons!62717 (exprs!5398 lt!2247922)))))

(assert (=> d!1752129 (= (contextDepth!110 lt!2247922) lt!2248112)))

(assert (=> b!5529288 (= e!3418102 lt!2248113)))

(assert (=> b!5529288 (= lt!2248113 (maxBigInt!0 (regexDepth!214 (h!69165 (exprs!5398 lt!2247922))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247922))))))))

(declare-fun lt!2248110 () Unit!155488)

(assert (=> b!5529288 (= lt!2248110 (lemmaForallRegexDepthBiggerThanTransitive!19 (t!376098 (exprs!5398 lt!2247922)) lt!2248113 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247922))))))))

(assert (=> b!5529288 (forall!14692 (t!376098 (exprs!5398 lt!2247922)) lambda!296708)))

(declare-fun lt!2248111 () Unit!155488)

(assert (=> b!5529288 (= lt!2248111 lt!2248110)))

(declare-fun b!5529289 () Bool)

(assert (=> b!5529289 (= e!3418102 0)))

(assert (=> b!5529290 (= e!3418103 (forall!14692 (exprs!5398 lt!2247922) lambda!296709))))

(assert (= (and d!1752129 c!967529) b!5529288))

(assert (= (and d!1752129 (not c!967529)) b!5529289))

(assert (= (and d!1752129 res!2354356) b!5529290))

(declare-fun m!6531396 () Bool)

(assert (=> b!5529288 m!6531396))

(declare-fun m!6531398 () Bool)

(assert (=> b!5529288 m!6531398))

(declare-fun m!6531400 () Bool)

(assert (=> b!5529288 m!6531400))

(assert (=> b!5529288 m!6531398))

(declare-fun m!6531402 () Bool)

(assert (=> b!5529288 m!6531402))

(assert (=> b!5529288 m!6531398))

(declare-fun m!6531404 () Bool)

(assert (=> b!5529288 m!6531404))

(assert (=> b!5529288 m!6531396))

(declare-fun m!6531406 () Bool)

(assert (=> b!5529290 m!6531406))

(assert (=> b!5528781 d!1752129))

(declare-fun b!5529301 () Bool)

(declare-fun e!3418106 () Bool)

(assert (=> b!5529301 (= e!3418106 tp_is_empty!40281)))

(declare-fun b!5529302 () Bool)

(declare-fun tp!1521070 () Bool)

(declare-fun tp!1521067 () Bool)

(assert (=> b!5529302 (= e!3418106 (and tp!1521070 tp!1521067))))

(declare-fun b!5529304 () Bool)

(declare-fun tp!1521069 () Bool)

(declare-fun tp!1521068 () Bool)

(assert (=> b!5529304 (= e!3418106 (and tp!1521069 tp!1521068))))

(assert (=> b!5528801 (= tp!1521021 e!3418106)))

(declare-fun b!5529303 () Bool)

(declare-fun tp!1521066 () Bool)

(assert (=> b!5529303 (= e!3418106 tp!1521066)))

(assert (= (and b!5528801 (is-ElementMatch!15514 (reg!15843 r!7292))) b!5529301))

(assert (= (and b!5528801 (is-Concat!24359 (reg!15843 r!7292))) b!5529302))

(assert (= (and b!5528801 (is-Star!15514 (reg!15843 r!7292))) b!5529303))

(assert (= (and b!5528801 (is-Union!15514 (reg!15843 r!7292))) b!5529304))

(declare-fun b!5529312 () Bool)

(declare-fun e!3418112 () Bool)

(declare-fun tp!1521075 () Bool)

(assert (=> b!5529312 (= e!3418112 tp!1521075)))

(declare-fun e!3418111 () Bool)

(declare-fun tp!1521076 () Bool)

(declare-fun b!5529311 () Bool)

(assert (=> b!5529311 (= e!3418111 (and (inv!82033 (h!69167 (t!376100 zl!343))) e!3418112 tp!1521076))))

(assert (=> b!5528797 (= tp!1521025 e!3418111)))

(assert (= b!5529311 b!5529312))

(assert (= (and b!5528797 (is-Cons!62719 (t!376100 zl!343))) b!5529311))

(declare-fun m!6531408 () Bool)

(assert (=> b!5529311 m!6531408))

(declare-fun b!5529317 () Bool)

(declare-fun e!3418115 () Bool)

(declare-fun tp!1521081 () Bool)

(declare-fun tp!1521082 () Bool)

(assert (=> b!5529317 (= e!3418115 (and tp!1521081 tp!1521082))))

(assert (=> b!5528782 (= tp!1521023 e!3418115)))

(assert (= (and b!5528782 (is-Cons!62717 (exprs!5398 setElem!36776))) b!5529317))

(declare-fun b!5529318 () Bool)

(declare-fun e!3418116 () Bool)

(assert (=> b!5529318 (= e!3418116 tp_is_empty!40281)))

(declare-fun b!5529319 () Bool)

(declare-fun tp!1521087 () Bool)

(declare-fun tp!1521084 () Bool)

(assert (=> b!5529319 (= e!3418116 (and tp!1521087 tp!1521084))))

(declare-fun b!5529321 () Bool)

(declare-fun tp!1521086 () Bool)

(declare-fun tp!1521085 () Bool)

(assert (=> b!5529321 (= e!3418116 (and tp!1521086 tp!1521085))))

(assert (=> b!5528789 (= tp!1521022 e!3418116)))

(declare-fun b!5529320 () Bool)

(declare-fun tp!1521083 () Bool)

(assert (=> b!5529320 (= e!3418116 tp!1521083)))

(assert (= (and b!5528789 (is-ElementMatch!15514 (regOne!31540 r!7292))) b!5529318))

(assert (= (and b!5528789 (is-Concat!24359 (regOne!31540 r!7292))) b!5529319))

(assert (= (and b!5528789 (is-Star!15514 (regOne!31540 r!7292))) b!5529320))

(assert (= (and b!5528789 (is-Union!15514 (regOne!31540 r!7292))) b!5529321))

(declare-fun b!5529322 () Bool)

(declare-fun e!3418117 () Bool)

(assert (=> b!5529322 (= e!3418117 tp_is_empty!40281)))

(declare-fun b!5529323 () Bool)

(declare-fun tp!1521092 () Bool)

(declare-fun tp!1521089 () Bool)

(assert (=> b!5529323 (= e!3418117 (and tp!1521092 tp!1521089))))

(declare-fun b!5529325 () Bool)

(declare-fun tp!1521091 () Bool)

(declare-fun tp!1521090 () Bool)

(assert (=> b!5529325 (= e!3418117 (and tp!1521091 tp!1521090))))

(assert (=> b!5528789 (= tp!1521024 e!3418117)))

(declare-fun b!5529324 () Bool)

(declare-fun tp!1521088 () Bool)

(assert (=> b!5529324 (= e!3418117 tp!1521088)))

(assert (= (and b!5528789 (is-ElementMatch!15514 (regTwo!31540 r!7292))) b!5529322))

(assert (= (and b!5528789 (is-Concat!24359 (regTwo!31540 r!7292))) b!5529323))

(assert (= (and b!5528789 (is-Star!15514 (regTwo!31540 r!7292))) b!5529324))

(assert (= (and b!5528789 (is-Union!15514 (regTwo!31540 r!7292))) b!5529325))

(declare-fun b!5529326 () Bool)

(declare-fun e!3418118 () Bool)

(declare-fun tp!1521093 () Bool)

(declare-fun tp!1521094 () Bool)

(assert (=> b!5529326 (= e!3418118 (and tp!1521093 tp!1521094))))

(assert (=> b!5528808 (= tp!1521020 e!3418118)))

(assert (= (and b!5528808 (is-Cons!62717 (exprs!5398 (h!69167 zl!343)))) b!5529326))

(declare-fun b!5529327 () Bool)

(declare-fun e!3418119 () Bool)

(assert (=> b!5529327 (= e!3418119 tp_is_empty!40281)))

(declare-fun b!5529328 () Bool)

(declare-fun tp!1521099 () Bool)

(declare-fun tp!1521096 () Bool)

(assert (=> b!5529328 (= e!3418119 (and tp!1521099 tp!1521096))))

(declare-fun b!5529330 () Bool)

(declare-fun tp!1521098 () Bool)

(declare-fun tp!1521097 () Bool)

(assert (=> b!5529330 (= e!3418119 (and tp!1521098 tp!1521097))))

(assert (=> b!5528809 (= tp!1521019 e!3418119)))

(declare-fun b!5529329 () Bool)

(declare-fun tp!1521095 () Bool)

(assert (=> b!5529329 (= e!3418119 tp!1521095)))

(assert (= (and b!5528809 (is-ElementMatch!15514 (regOne!31541 r!7292))) b!5529327))

(assert (= (and b!5528809 (is-Concat!24359 (regOne!31541 r!7292))) b!5529328))

(assert (= (and b!5528809 (is-Star!15514 (regOne!31541 r!7292))) b!5529329))

(assert (= (and b!5528809 (is-Union!15514 (regOne!31541 r!7292))) b!5529330))

(declare-fun b!5529331 () Bool)

(declare-fun e!3418120 () Bool)

(assert (=> b!5529331 (= e!3418120 tp_is_empty!40281)))

(declare-fun b!5529332 () Bool)

(declare-fun tp!1521104 () Bool)

(declare-fun tp!1521101 () Bool)

(assert (=> b!5529332 (= e!3418120 (and tp!1521104 tp!1521101))))

(declare-fun b!5529334 () Bool)

(declare-fun tp!1521103 () Bool)

(declare-fun tp!1521102 () Bool)

(assert (=> b!5529334 (= e!3418120 (and tp!1521103 tp!1521102))))

(assert (=> b!5528809 (= tp!1521017 e!3418120)))

(declare-fun b!5529333 () Bool)

(declare-fun tp!1521100 () Bool)

(assert (=> b!5529333 (= e!3418120 tp!1521100)))

(assert (= (and b!5528809 (is-ElementMatch!15514 (regTwo!31541 r!7292))) b!5529331))

(assert (= (and b!5528809 (is-Concat!24359 (regTwo!31541 r!7292))) b!5529332))

(assert (= (and b!5528809 (is-Star!15514 (regTwo!31541 r!7292))) b!5529333))

(assert (= (and b!5528809 (is-Union!15514 (regTwo!31541 r!7292))) b!5529334))

(declare-fun condSetEmpty!36782 () Bool)

(assert (=> setNonEmpty!36776 (= condSetEmpty!36782 (= setRest!36776 (as set.empty (Set Context!9796))))))

(declare-fun setRes!36782 () Bool)

(assert (=> setNonEmpty!36776 (= tp!1521016 setRes!36782)))

(declare-fun setIsEmpty!36782 () Bool)

(assert (=> setIsEmpty!36782 setRes!36782))

(declare-fun setElem!36782 () Context!9796)

(declare-fun e!3418123 () Bool)

(declare-fun setNonEmpty!36782 () Bool)

(declare-fun tp!1521109 () Bool)

(assert (=> setNonEmpty!36782 (= setRes!36782 (and tp!1521109 (inv!82033 setElem!36782) e!3418123))))

(declare-fun setRest!36782 () (Set Context!9796))

(assert (=> setNonEmpty!36782 (= setRest!36776 (set.union (set.insert setElem!36782 (as set.empty (Set Context!9796))) setRest!36782))))

(declare-fun b!5529339 () Bool)

(declare-fun tp!1521110 () Bool)

(assert (=> b!5529339 (= e!3418123 tp!1521110)))

(assert (= (and setNonEmpty!36776 condSetEmpty!36782) setIsEmpty!36782))

(assert (= (and setNonEmpty!36776 (not condSetEmpty!36782)) setNonEmpty!36782))

(assert (= setNonEmpty!36782 b!5529339))

(declare-fun m!6531410 () Bool)

(assert (=> setNonEmpty!36782 m!6531410))

(declare-fun b!5529344 () Bool)

(declare-fun e!3418126 () Bool)

(declare-fun tp!1521113 () Bool)

(assert (=> b!5529344 (= e!3418126 (and tp_is_empty!40281 tp!1521113))))

(assert (=> b!5528780 (= tp!1521018 e!3418126)))

(assert (= (and b!5528780 (is-Cons!62718 (t!376099 s!2326))) b!5529344))

(declare-fun b_lambda!209833 () Bool)

(assert (= b_lambda!209829 (or b!5528779 b_lambda!209833)))

(declare-fun bs!1277510 () Bool)

(declare-fun d!1752131 () Bool)

(assert (= bs!1277510 (and d!1752131 b!5528779)))

(assert (=> bs!1277510 (= (dynLambda!24521 lambda!296636 lt!2247908) (derivationStepZipperUp!782 lt!2247908 (h!69166 s!2326)))))

(assert (=> bs!1277510 m!6530906))

(assert (=> d!1752101 d!1752131))

(declare-fun b_lambda!209835 () Bool)

(assert (= b_lambda!209831 (or b!5528779 b_lambda!209835)))

(declare-fun bs!1277511 () Bool)

(declare-fun d!1752133 () Bool)

(assert (= bs!1277511 (and d!1752133 b!5528779)))

(assert (=> bs!1277511 (= (dynLambda!24521 lambda!296636 (h!69167 zl!343)) (derivationStepZipperUp!782 (h!69167 zl!343) (h!69166 s!2326)))))

(assert (=> bs!1277511 m!6530944))

(assert (=> d!1752113 d!1752133))

(declare-fun b_lambda!209837 () Bool)

(assert (= b_lambda!209827 (or b!5528779 b_lambda!209837)))

(declare-fun bs!1277512 () Bool)

(declare-fun d!1752135 () Bool)

(assert (= bs!1277512 (and d!1752135 b!5528779)))

(assert (=> bs!1277512 (= (dynLambda!24521 lambda!296636 lt!2247922) (derivationStepZipperUp!782 lt!2247922 (h!69166 s!2326)))))

(assert (=> bs!1277512 m!6530896))

(assert (=> d!1752093 d!1752135))

(push 1)

(assert (not b!5529334))

(assert (not bm!410396))

(assert (not b!5529094))

(assert (not b!5529261))

(assert (not b!5529242))

(assert (not d!1752065))

(assert (not b!5529195))

(assert (not b!5529102))

(assert (not b!5529169))

(assert (not b!5529254))

(assert (not d!1752109))

(assert (not b!5529330))

(assert (not bm!410392))

(assert (not d!1752095))

(assert (not b!5529162))

(assert (not b!5528970))

(assert (not d!1752073))

(assert (not b!5529196))

(assert (not d!1752045))

(assert (not bs!1277510))

(assert (not d!1752035))

(assert (not b!5528974))

(assert (not b!5529290))

(assert (not b!5529287))

(assert (not b!5529250))

(assert (not b!5528978))

(assert (not b!5528961))

(assert (not b!5529283))

(assert (not b!5529005))

(assert (not bm!410422))

(assert (not b!5529097))

(assert (not b!5529311))

(assert (not b!5529007))

(assert (not b!5528949))

(assert (not d!1752093))

(assert (not b!5529304))

(assert (not bm!410407))

(assert (not d!1752033))

(assert (not b!5529302))

(assert (not b!5528956))

(assert (not b!5528980))

(assert (not bm!410419))

(assert (not b!5529281))

(assert (not b_lambda!209833))

(assert (not b!5529096))

(assert (not bm!410395))

(assert (not b!5529164))

(assert (not bm!410424))

(assert (not b!5529328))

(assert (not d!1752055))

(assert (not b!5529326))

(assert (not bm!410414))

(assert (not bm!410423))

(assert (not b!5529273))

(assert (not b!5529191))

(assert (not d!1752067))

(assert (not d!1752083))

(assert tp_is_empty!40281)

(assert (not b!5529317))

(assert (not d!1752051))

(assert (not b!5529152))

(assert (not d!1752061))

(assert (not b!5529192))

(assert (not b!5529006))

(assert (not b!5529134))

(assert (not d!1752043))

(assert (not d!1752039))

(assert (not b!5529057))

(assert (not b!5529003))

(assert (not bm!410416))

(assert (not b!5529324))

(assert (not b!5528975))

(assert (not b!5529333))

(assert (not bm!410408))

(assert (not b!5528968))

(assert (not b!5529151))

(assert (not d!1752085))

(assert (not b!5528955))

(assert (not b!5529323))

(assert (not b!5528967))

(assert (not d!1752031))

(assert (not d!1752059))

(assert (not b!5529321))

(assert (not b!5528969))

(assert (not d!1752057))

(assert (not b!5529339))

(assert (not b!5529099))

(assert (not b!5529275))

(assert (not d!1752091))

(assert (not b!5529312))

(assert (not b!5529303))

(assert (not b!5528979))

(assert (not b!5528951))

(assert (not b!5529226))

(assert (not d!1752115))

(assert (not b_lambda!209837))

(assert (not bm!410420))

(assert (not b!5528983))

(assert (not b_lambda!209835))

(assert (not d!1752125))

(assert (not b!5528977))

(assert (not b!5529285))

(assert (not b!5529197))

(assert (not bm!410376))

(assert (not bm!410413))

(assert (not b!5529104))

(assert (not d!1752053))

(assert (not b!5529009))

(assert (not bm!410379))

(assert (not b!5529282))

(assert (not d!1752029))

(assert (not d!1752047))

(assert (not bs!1277511))

(assert (not d!1752041))

(assert (not b!5529262))

(assert (not d!1752121))

(assert (not b!5529167))

(assert (not d!1752101))

(assert (not b!5529059))

(assert (not d!1752097))

(assert (not b!5529329))

(assert (not bs!1277512))

(assert (not b!5529332))

(assert (not b!5529199))

(assert (not bm!410410))

(assert (not d!1752113))

(assert (not b!5528947))

(assert (not b!5529325))

(assert (not b!5529231))

(assert (not b!5529284))

(assert (not b!5529194))

(assert (not bm!410400))

(assert (not b!5529319))

(assert (not b!5529320))

(assert (not b!5529255))

(assert (not bm!410375))

(assert (not b!5529263))

(assert (not b!5529249))

(assert (not b!5528953))

(assert (not b!5529004))

(assert (not d!1752081))

(assert (not b!5529278))

(assert (not b!5529344))

(assert (not b!5528976))

(assert (not b!5529280))

(assert (not b!5529288))

(assert (not b!5528952))

(assert (not d!1752107))

(assert (not setNonEmpty!36782))

(assert (not b!5528973))

(assert (not d!1752037))

(assert (not d!1752123))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1752245 () Bool)

(assert (=> d!1752245 (= ($colon$colon!1593 (exprs!5398 lt!2247927) (ite (or c!967505 c!967508) (regTwo!31540 (regTwo!31540 r!7292)) (regTwo!31540 r!7292))) (Cons!62717 (ite (or c!967505 c!967508) (regTwo!31540 (regTwo!31540 r!7292)) (regTwo!31540 r!7292)) (exprs!5398 lt!2247927)))))

(assert (=> bm!410416 d!1752245))

(declare-fun d!1752247 () Bool)

(assert (=> d!1752247 (= (isEmpty!34508 (tail!10926 (exprs!5398 (h!69167 zl!343)))) (is-Nil!62717 (tail!10926 (exprs!5398 (h!69167 zl!343)))))))

(assert (=> b!5529191 d!1752247))

(declare-fun d!1752249 () Bool)

(assert (=> d!1752249 (= (tail!10926 (exprs!5398 (h!69167 zl!343))) (t!376098 (exprs!5398 (h!69167 zl!343))))))

(assert (=> b!5529191 d!1752249))

(declare-fun d!1752251 () Bool)

(assert (=> d!1752251 (= (flatMap!1127 lt!2247926 lambda!296704) (choose!42013 lt!2247926 lambda!296704))))

(declare-fun bs!1277621 () Bool)

(assert (= bs!1277621 d!1752251))

(declare-fun m!6531744 () Bool)

(assert (=> bs!1277621 m!6531744))

(assert (=> d!1752125 d!1752251))

(declare-fun c!967659 () Bool)

(declare-fun c!967656 () Bool)

(declare-fun bm!410479 () Bool)

(declare-fun call!410486 () List!62841)

(assert (=> bm!410479 (= call!410486 ($colon$colon!1593 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930)))) (ite (or c!967656 c!967659) (regTwo!31540 (h!69165 (exprs!5398 lt!2247930))) (h!69165 (exprs!5398 lt!2247930)))))))

(declare-fun bm!410480 () Bool)

(declare-fun call!410485 () (Set Context!9796))

(declare-fun call!410489 () (Set Context!9796))

(assert (=> bm!410480 (= call!410485 call!410489)))

(declare-fun b!5529763 () Bool)

(declare-fun e!3418362 () (Set Context!9796))

(assert (=> b!5529763 (= e!3418362 call!410485)))

(declare-fun b!5529764 () Bool)

(declare-fun e!3418365 () (Set Context!9796))

(declare-fun e!3418361 () (Set Context!9796))

(assert (=> b!5529764 (= e!3418365 e!3418361)))

(declare-fun c!967657 () Bool)

(assert (=> b!5529764 (= c!967657 (is-Union!15514 (h!69165 (exprs!5398 lt!2247930))))))

(declare-fun b!5529765 () Bool)

(assert (=> b!5529765 (= e!3418365 (set.insert (Context!9797 (t!376098 (exprs!5398 lt!2247930))) (as set.empty (Set Context!9796))))))

(declare-fun b!5529767 () Bool)

(declare-fun e!3418366 () Bool)

(assert (=> b!5529767 (= e!3418366 (nullable!5548 (regOne!31540 (h!69165 (exprs!5398 lt!2247930)))))))

(declare-fun b!5529768 () Bool)

(declare-fun call!410484 () (Set Context!9796))

(declare-fun call!410488 () (Set Context!9796))

(assert (=> b!5529768 (= e!3418361 (set.union call!410484 call!410488))))

(declare-fun bm!410481 () Bool)

(declare-fun call!410487 () List!62841)

(assert (=> bm!410481 (= call!410487 call!410486)))

(declare-fun b!5529769 () Bool)

(declare-fun c!967658 () Bool)

(assert (=> b!5529769 (= c!967658 (is-Star!15514 (h!69165 (exprs!5398 lt!2247930))))))

(declare-fun e!3418364 () (Set Context!9796))

(assert (=> b!5529769 (= e!3418362 e!3418364)))

(declare-fun bm!410482 () Bool)

(assert (=> bm!410482 (= call!410484 (derivationStepZipperDown!856 (ite c!967657 (regOne!31541 (h!69165 (exprs!5398 lt!2247930))) (regOne!31540 (h!69165 (exprs!5398 lt!2247930)))) (ite c!967657 (Context!9797 (t!376098 (exprs!5398 lt!2247930))) (Context!9797 call!410486)) (h!69166 s!2326)))))

(declare-fun b!5529770 () Bool)

(assert (=> b!5529770 (= c!967656 e!3418366)))

(declare-fun res!2354481 () Bool)

(assert (=> b!5529770 (=> (not res!2354481) (not e!3418366))))

(assert (=> b!5529770 (= res!2354481 (is-Concat!24359 (h!69165 (exprs!5398 lt!2247930))))))

(declare-fun e!3418363 () (Set Context!9796))

(assert (=> b!5529770 (= e!3418361 e!3418363)))

(declare-fun b!5529766 () Bool)

(assert (=> b!5529766 (= e!3418363 e!3418362)))

(assert (=> b!5529766 (= c!967659 (is-Concat!24359 (h!69165 (exprs!5398 lt!2247930))))))

(declare-fun d!1752253 () Bool)

(declare-fun c!967660 () Bool)

(assert (=> d!1752253 (= c!967660 (and (is-ElementMatch!15514 (h!69165 (exprs!5398 lt!2247930))) (= (c!967395 (h!69165 (exprs!5398 lt!2247930))) (h!69166 s!2326))))))

(assert (=> d!1752253 (= (derivationStepZipperDown!856 (h!69165 (exprs!5398 lt!2247930)) (Context!9797 (t!376098 (exprs!5398 lt!2247930))) (h!69166 s!2326)) e!3418365)))

(declare-fun bm!410483 () Bool)

(assert (=> bm!410483 (= call!410488 (derivationStepZipperDown!856 (ite c!967657 (regTwo!31541 (h!69165 (exprs!5398 lt!2247930))) (ite c!967656 (regTwo!31540 (h!69165 (exprs!5398 lt!2247930))) (ite c!967659 (regOne!31540 (h!69165 (exprs!5398 lt!2247930))) (reg!15843 (h!69165 (exprs!5398 lt!2247930)))))) (ite (or c!967657 c!967656) (Context!9797 (t!376098 (exprs!5398 lt!2247930))) (Context!9797 call!410487)) (h!69166 s!2326)))))

(declare-fun b!5529771 () Bool)

(assert (=> b!5529771 (= e!3418363 (set.union call!410484 call!410489))))

(declare-fun b!5529772 () Bool)

(assert (=> b!5529772 (= e!3418364 call!410485)))

(declare-fun b!5529773 () Bool)

(assert (=> b!5529773 (= e!3418364 (as set.empty (Set Context!9796)))))

(declare-fun bm!410484 () Bool)

(assert (=> bm!410484 (= call!410489 call!410488)))

(assert (= (and d!1752253 c!967660) b!5529765))

(assert (= (and d!1752253 (not c!967660)) b!5529764))

(assert (= (and b!5529764 c!967657) b!5529768))

(assert (= (and b!5529764 (not c!967657)) b!5529770))

(assert (= (and b!5529770 res!2354481) b!5529767))

(assert (= (and b!5529770 c!967656) b!5529771))

(assert (= (and b!5529770 (not c!967656)) b!5529766))

(assert (= (and b!5529766 c!967659) b!5529763))

(assert (= (and b!5529766 (not c!967659)) b!5529769))

(assert (= (and b!5529769 c!967658) b!5529772))

(assert (= (and b!5529769 (not c!967658)) b!5529773))

(assert (= (or b!5529763 b!5529772) bm!410481))

(assert (= (or b!5529763 b!5529772) bm!410480))

(assert (= (or b!5529771 bm!410481) bm!410479))

(assert (= (or b!5529771 bm!410480) bm!410484))

(assert (= (or b!5529768 bm!410484) bm!410483))

(assert (= (or b!5529768 b!5529771) bm!410482))

(declare-fun m!6531746 () Bool)

(assert (=> bm!410479 m!6531746))

(declare-fun m!6531748 () Bool)

(assert (=> bm!410482 m!6531748))

(declare-fun m!6531750 () Bool)

(assert (=> b!5529767 m!6531750))

(declare-fun m!6531752 () Bool)

(assert (=> bm!410483 m!6531752))

(declare-fun m!6531754 () Bool)

(assert (=> b!5529765 m!6531754))

(assert (=> bm!410400 d!1752253))

(declare-fun d!1752255 () Bool)

(assert (=> d!1752255 (= (flatMap!1127 lt!2247909 lambda!296660) (choose!42013 lt!2247909 lambda!296660))))

(declare-fun bs!1277622 () Bool)

(assert (= bs!1277622 d!1752255))

(declare-fun m!6531756 () Bool)

(assert (=> bs!1277622 m!6531756))

(assert (=> d!1752037 d!1752255))

(declare-fun bs!1277623 () Bool)

(declare-fun d!1752257 () Bool)

(assert (= bs!1277623 (and d!1752257 b!5529288)))

(declare-fun lambda!296768 () Int)

(assert (=> bs!1277623 (not (= lambda!296768 lambda!296708))))

(declare-fun bs!1277624 () Bool)

(assert (= bs!1277624 (and d!1752257 b!5529167)))

(assert (=> bs!1277624 (not (= lambda!296768 lambda!296683))))

(declare-fun bs!1277625 () Bool)

(assert (= bs!1277625 (and d!1752257 d!1752031)))

(assert (=> bs!1277625 (= lambda!296768 lambda!296657)))

(declare-fun bs!1277626 () Bool)

(assert (= bs!1277626 (and d!1752257 b!5529162)))

(assert (=> bs!1277626 (not (= lambda!296768 lambda!296681))))

(declare-fun bs!1277627 () Bool)

(assert (= bs!1277627 (and d!1752257 d!1752115)))

(assert (=> bs!1277627 (= lambda!296768 lambda!296691)))

(declare-fun bs!1277628 () Bool)

(assert (= bs!1277628 (and d!1752257 d!1752085)))

(assert (=> bs!1277628 (= lambda!296768 lambda!296690)))

(declare-fun bs!1277629 () Bool)

(assert (= bs!1277629 (and d!1752257 b!5529169)))

(assert (=> bs!1277629 (not (= lambda!296768 lambda!296684))))

(declare-fun bs!1277630 () Bool)

(assert (= bs!1277630 (and d!1752257 b!5529164)))

(assert (=> bs!1277630 (not (= lambda!296768 lambda!296682))))

(declare-fun bs!1277631 () Bool)

(assert (= bs!1277631 (and d!1752257 b!5529290)))

(assert (=> bs!1277631 (not (= lambda!296768 lambda!296709))))

(declare-fun bs!1277632 () Bool)

(assert (= bs!1277632 (and d!1752257 d!1752029)))

(assert (=> bs!1277632 (= lambda!296768 lambda!296654)))

(declare-fun bs!1277633 () Bool)

(assert (= bs!1277633 (and d!1752257 d!1752083)))

(assert (=> bs!1277633 (= lambda!296768 lambda!296687)))

(declare-fun b!5529774 () Bool)

(declare-fun e!3418369 () Bool)

(declare-fun lt!2248198 () Regex!15514)

(assert (=> b!5529774 (= e!3418369 (isEmptyLang!1097 lt!2248198))))

(declare-fun b!5529775 () Bool)

(declare-fun e!3418372 () Regex!15514)

(assert (=> b!5529775 (= e!3418372 EmptyLang!15514)))

(declare-fun b!5529776 () Bool)

(declare-fun e!3418367 () Bool)

(assert (=> b!5529776 (= e!3418367 (isEmpty!34508 (t!376098 (t!376098 (unfocusZipperList!942 zl!343)))))))

(declare-fun e!3418370 () Bool)

(assert (=> d!1752257 e!3418370))

(declare-fun res!2354483 () Bool)

(assert (=> d!1752257 (=> (not res!2354483) (not e!3418370))))

(assert (=> d!1752257 (= res!2354483 (validRegex!7250 lt!2248198))))

(declare-fun e!3418368 () Regex!15514)

(assert (=> d!1752257 (= lt!2248198 e!3418368)))

(declare-fun c!967664 () Bool)

(assert (=> d!1752257 (= c!967664 e!3418367)))

(declare-fun res!2354482 () Bool)

(assert (=> d!1752257 (=> (not res!2354482) (not e!3418367))))

(assert (=> d!1752257 (= res!2354482 (is-Cons!62717 (t!376098 (unfocusZipperList!942 zl!343))))))

(assert (=> d!1752257 (forall!14692 (t!376098 (unfocusZipperList!942 zl!343)) lambda!296768)))

(assert (=> d!1752257 (= (generalisedUnion!1377 (t!376098 (unfocusZipperList!942 zl!343))) lt!2248198)))

(declare-fun b!5529777 () Bool)

(assert (=> b!5529777 (= e!3418368 e!3418372)))

(declare-fun c!967663 () Bool)

(assert (=> b!5529777 (= c!967663 (is-Cons!62717 (t!376098 (unfocusZipperList!942 zl!343))))))

(declare-fun b!5529778 () Bool)

(declare-fun e!3418371 () Bool)

(assert (=> b!5529778 (= e!3418369 e!3418371)))

(declare-fun c!967661 () Bool)

(assert (=> b!5529778 (= c!967661 (isEmpty!34508 (tail!10926 (t!376098 (unfocusZipperList!942 zl!343)))))))

(declare-fun b!5529779 () Bool)

(assert (=> b!5529779 (= e!3418372 (Union!15514 (h!69165 (t!376098 (unfocusZipperList!942 zl!343))) (generalisedUnion!1377 (t!376098 (t!376098 (unfocusZipperList!942 zl!343))))))))

(declare-fun b!5529780 () Bool)

(assert (=> b!5529780 (= e!3418371 (isUnion!527 lt!2248198))))

(declare-fun b!5529781 () Bool)

(assert (=> b!5529781 (= e!3418368 (h!69165 (t!376098 (unfocusZipperList!942 zl!343))))))

(declare-fun b!5529782 () Bool)

(assert (=> b!5529782 (= e!3418371 (= lt!2248198 (head!11831 (t!376098 (unfocusZipperList!942 zl!343)))))))

(declare-fun b!5529783 () Bool)

(assert (=> b!5529783 (= e!3418370 e!3418369)))

(declare-fun c!967662 () Bool)

(assert (=> b!5529783 (= c!967662 (isEmpty!34508 (t!376098 (unfocusZipperList!942 zl!343))))))

(assert (= (and d!1752257 res!2354482) b!5529776))

(assert (= (and d!1752257 c!967664) b!5529781))

(assert (= (and d!1752257 (not c!967664)) b!5529777))

(assert (= (and b!5529777 c!967663) b!5529779))

(assert (= (and b!5529777 (not c!967663)) b!5529775))

(assert (= (and d!1752257 res!2354483) b!5529783))

(assert (= (and b!5529783 c!967662) b!5529774))

(assert (= (and b!5529783 (not c!967662)) b!5529778))

(assert (= (and b!5529778 c!967661) b!5529782))

(assert (= (and b!5529778 (not c!967661)) b!5529780))

(declare-fun m!6531758 () Bool)

(assert (=> b!5529774 m!6531758))

(assert (=> b!5529783 m!6531084))

(declare-fun m!6531760 () Bool)

(assert (=> b!5529776 m!6531760))

(declare-fun m!6531762 () Bool)

(assert (=> b!5529778 m!6531762))

(assert (=> b!5529778 m!6531762))

(declare-fun m!6531764 () Bool)

(assert (=> b!5529778 m!6531764))

(declare-fun m!6531766 () Bool)

(assert (=> d!1752257 m!6531766))

(declare-fun m!6531768 () Bool)

(assert (=> d!1752257 m!6531768))

(declare-fun m!6531770 () Bool)

(assert (=> b!5529782 m!6531770))

(declare-fun m!6531772 () Bool)

(assert (=> b!5529779 m!6531772))

(declare-fun m!6531774 () Bool)

(assert (=> b!5529780 m!6531774))

(assert (=> b!5528952 d!1752257))

(assert (=> b!5529195 d!1752075))

(declare-fun bm!410485 () Bool)

(declare-fun call!410490 () (Set Context!9796))

(assert (=> bm!410485 (= call!410490 (derivationStepZipperDown!856 (h!69165 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922))))) (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922)))))) (h!69166 s!2326)))))

(declare-fun b!5529784 () Bool)

(declare-fun e!3418374 () Bool)

(assert (=> b!5529784 (= e!3418374 (nullable!5548 (h!69165 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922)))))))))

(declare-fun b!5529785 () Bool)

(declare-fun e!3418375 () (Set Context!9796))

(assert (=> b!5529785 (= e!3418375 (set.union call!410490 (derivationStepZipperUp!782 (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922)))))) (h!69166 s!2326))))))

(declare-fun b!5529786 () Bool)

(declare-fun e!3418373 () (Set Context!9796))

(assert (=> b!5529786 (= e!3418373 (as set.empty (Set Context!9796)))))

(declare-fun d!1752259 () Bool)

(declare-fun c!967665 () Bool)

(assert (=> d!1752259 (= c!967665 e!3418374)))

(declare-fun res!2354484 () Bool)

(assert (=> d!1752259 (=> (not res!2354484) (not e!3418374))))

(assert (=> d!1752259 (= res!2354484 (is-Cons!62717 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922))))))))

(assert (=> d!1752259 (= (derivationStepZipperUp!782 (Context!9797 (t!376098 (exprs!5398 lt!2247922))) (h!69166 s!2326)) e!3418375)))

(declare-fun b!5529787 () Bool)

(assert (=> b!5529787 (= e!3418375 e!3418373)))

(declare-fun c!967666 () Bool)

(assert (=> b!5529787 (= c!967666 (is-Cons!62717 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922))))))))

(declare-fun b!5529788 () Bool)

(assert (=> b!5529788 (= e!3418373 call!410490)))

(assert (= (and d!1752259 res!2354484) b!5529784))

(assert (= (and d!1752259 c!967665) b!5529785))

(assert (= (and d!1752259 (not c!967665)) b!5529787))

(assert (= (and b!5529787 c!967666) b!5529788))

(assert (= (and b!5529787 (not c!967666)) b!5529786))

(assert (= (or b!5529785 b!5529788) bm!410485))

(declare-fun m!6531776 () Bool)

(assert (=> bm!410485 m!6531776))

(declare-fun m!6531778 () Bool)

(assert (=> b!5529784 m!6531778))

(declare-fun m!6531780 () Bool)

(assert (=> b!5529785 m!6531780))

(assert (=> b!5529250 d!1752259))

(declare-fun bm!410486 () Bool)

(declare-fun call!410491 () (Set Context!9796))

(assert (=> bm!410486 (= call!410491 (derivationStepZipperDown!856 (h!69165 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908))))) (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908)))))) (h!69166 s!2326)))))

(declare-fun b!5529789 () Bool)

(declare-fun e!3418377 () Bool)

(assert (=> b!5529789 (= e!3418377 (nullable!5548 (h!69165 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908)))))))))

(declare-fun b!5529790 () Bool)

(declare-fun e!3418378 () (Set Context!9796))

(assert (=> b!5529790 (= e!3418378 (set.union call!410491 (derivationStepZipperUp!782 (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908)))))) (h!69166 s!2326))))))

(declare-fun b!5529791 () Bool)

(declare-fun e!3418376 () (Set Context!9796))

(assert (=> b!5529791 (= e!3418376 (as set.empty (Set Context!9796)))))

(declare-fun d!1752261 () Bool)

(declare-fun c!967667 () Bool)

(assert (=> d!1752261 (= c!967667 e!3418377)))

(declare-fun res!2354485 () Bool)

(assert (=> d!1752261 (=> (not res!2354485) (not e!3418377))))

(assert (=> d!1752261 (= res!2354485 (is-Cons!62717 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908))))))))

(assert (=> d!1752261 (= (derivationStepZipperUp!782 (Context!9797 (t!376098 (exprs!5398 lt!2247908))) (h!69166 s!2326)) e!3418378)))

(declare-fun b!5529792 () Bool)

(assert (=> b!5529792 (= e!3418378 e!3418376)))

(declare-fun c!967668 () Bool)

(assert (=> b!5529792 (= c!967668 (is-Cons!62717 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908))))))))

(declare-fun b!5529793 () Bool)

(assert (=> b!5529793 (= e!3418376 call!410491)))

(assert (= (and d!1752261 res!2354485) b!5529789))

(assert (= (and d!1752261 c!967667) b!5529790))

(assert (= (and d!1752261 (not c!967667)) b!5529792))

(assert (= (and b!5529792 c!967668) b!5529793))

(assert (= (and b!5529792 (not c!967668)) b!5529791))

(assert (= (or b!5529790 b!5529793) bm!410486))

(declare-fun m!6531782 () Bool)

(assert (=> bm!410486 m!6531782))

(declare-fun m!6531784 () Bool)

(assert (=> b!5529789 m!6531784))

(declare-fun m!6531786 () Bool)

(assert (=> b!5529790 m!6531786))

(assert (=> b!5529255 d!1752261))

(assert (=> bs!1277511 d!1752111))

(declare-fun d!1752263 () Bool)

(declare-fun c!967669 () Bool)

(assert (=> d!1752263 (= c!967669 (isEmpty!34511 (tail!10927 (t!376099 s!2326))))))

(declare-fun e!3418379 () Bool)

(assert (=> d!1752263 (= (matchZipper!1672 (derivationStepZipper!1619 lt!2247916 (head!11832 (t!376099 s!2326))) (tail!10927 (t!376099 s!2326))) e!3418379)))

(declare-fun b!5529794 () Bool)

(assert (=> b!5529794 (= e!3418379 (nullableZipper!1540 (derivationStepZipper!1619 lt!2247916 (head!11832 (t!376099 s!2326)))))))

(declare-fun b!5529795 () Bool)

(assert (=> b!5529795 (= e!3418379 (matchZipper!1672 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247916 (head!11832 (t!376099 s!2326))) (head!11832 (tail!10927 (t!376099 s!2326)))) (tail!10927 (tail!10927 (t!376099 s!2326)))))))

(assert (= (and d!1752263 c!967669) b!5529794))

(assert (= (and d!1752263 (not c!967669)) b!5529795))

(assert (=> d!1752263 m!6531124))

(declare-fun m!6531788 () Bool)

(assert (=> d!1752263 m!6531788))

(assert (=> b!5529794 m!6531138))

(declare-fun m!6531790 () Bool)

(assert (=> b!5529794 m!6531790))

(assert (=> b!5529795 m!6531124))

(declare-fun m!6531792 () Bool)

(assert (=> b!5529795 m!6531792))

(assert (=> b!5529795 m!6531138))

(assert (=> b!5529795 m!6531792))

(declare-fun m!6531794 () Bool)

(assert (=> b!5529795 m!6531794))

(assert (=> b!5529795 m!6531124))

(declare-fun m!6531796 () Bool)

(assert (=> b!5529795 m!6531796))

(assert (=> b!5529795 m!6531794))

(assert (=> b!5529795 m!6531796))

(declare-fun m!6531798 () Bool)

(assert (=> b!5529795 m!6531798))

(assert (=> b!5528976 d!1752263))

(declare-fun bs!1277634 () Bool)

(declare-fun d!1752265 () Bool)

(assert (= bs!1277634 (and d!1752265 b!5528779)))

(declare-fun lambda!296769 () Int)

(assert (=> bs!1277634 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296769 lambda!296636))))

(declare-fun bs!1277635 () Bool)

(assert (= bs!1277635 (and d!1752265 d!1752037)))

(assert (=> bs!1277635 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296769 lambda!296660))))

(declare-fun bs!1277636 () Bool)

(assert (= bs!1277636 (and d!1752265 d!1752073)))

(assert (=> bs!1277636 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296769 lambda!296676))))

(declare-fun bs!1277637 () Bool)

(assert (= bs!1277637 (and d!1752265 d!1752125)))

(assert (=> bs!1277637 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296769 lambda!296704))))

(assert (=> d!1752265 true))

(assert (=> d!1752265 (= (derivationStepZipper!1619 lt!2247916 (head!11832 (t!376099 s!2326))) (flatMap!1127 lt!2247916 lambda!296769))))

(declare-fun bs!1277638 () Bool)

(assert (= bs!1277638 d!1752265))

(declare-fun m!6531800 () Bool)

(assert (=> bs!1277638 m!6531800))

(assert (=> b!5528976 d!1752265))

(declare-fun d!1752267 () Bool)

(assert (=> d!1752267 (= (head!11832 (t!376099 s!2326)) (h!69166 (t!376099 s!2326)))))

(assert (=> b!5528976 d!1752267))

(declare-fun d!1752269 () Bool)

(assert (=> d!1752269 (= (tail!10927 (t!376099 s!2326)) (t!376099 (t!376099 s!2326)))))

(assert (=> b!5528976 d!1752269))

(declare-fun d!1752271 () Bool)

(assert (=> d!1752271 (= (isEmpty!34511 (tail!10927 s!2326)) (is-Nil!62718 (tail!10927 s!2326)))))

(assert (=> b!5529102 d!1752271))

(declare-fun d!1752273 () Bool)

(assert (=> d!1752273 (= (tail!10927 s!2326) (t!376099 s!2326))))

(assert (=> b!5529102 d!1752273))

(declare-fun d!1752275 () Bool)

(assert (=> d!1752275 (= ($colon$colon!1593 (exprs!5398 lt!2247922) (ite (or c!967500 c!967503) (regTwo!31540 (regOne!31540 r!7292)) (regOne!31540 r!7292))) (Cons!62717 (ite (or c!967500 c!967503) (regTwo!31540 (regOne!31540 r!7292)) (regOne!31540 r!7292)) (exprs!5398 lt!2247922)))))

(assert (=> bm!410410 d!1752275))

(declare-fun bs!1277639 () Bool)

(declare-fun d!1752277 () Bool)

(assert (= bs!1277639 (and d!1752277 d!1752257)))

(declare-fun lambda!296770 () Int)

(assert (=> bs!1277639 (= lambda!296770 lambda!296768)))

(declare-fun bs!1277640 () Bool)

(assert (= bs!1277640 (and d!1752277 b!5529288)))

(assert (=> bs!1277640 (not (= lambda!296770 lambda!296708))))

(declare-fun bs!1277641 () Bool)

(assert (= bs!1277641 (and d!1752277 b!5529167)))

(assert (=> bs!1277641 (not (= lambda!296770 lambda!296683))))

(declare-fun bs!1277642 () Bool)

(assert (= bs!1277642 (and d!1752277 d!1752031)))

(assert (=> bs!1277642 (= lambda!296770 lambda!296657)))

(declare-fun bs!1277643 () Bool)

(assert (= bs!1277643 (and d!1752277 b!5529162)))

(assert (=> bs!1277643 (not (= lambda!296770 lambda!296681))))

(declare-fun bs!1277644 () Bool)

(assert (= bs!1277644 (and d!1752277 d!1752115)))

(assert (=> bs!1277644 (= lambda!296770 lambda!296691)))

(declare-fun bs!1277645 () Bool)

(assert (= bs!1277645 (and d!1752277 d!1752085)))

(assert (=> bs!1277645 (= lambda!296770 lambda!296690)))

(declare-fun bs!1277646 () Bool)

(assert (= bs!1277646 (and d!1752277 b!5529169)))

(assert (=> bs!1277646 (not (= lambda!296770 lambda!296684))))

(declare-fun bs!1277647 () Bool)

(assert (= bs!1277647 (and d!1752277 b!5529164)))

(assert (=> bs!1277647 (not (= lambda!296770 lambda!296682))))

(declare-fun bs!1277648 () Bool)

(assert (= bs!1277648 (and d!1752277 b!5529290)))

(assert (=> bs!1277648 (not (= lambda!296770 lambda!296709))))

(declare-fun bs!1277649 () Bool)

(assert (= bs!1277649 (and d!1752277 d!1752029)))

(assert (=> bs!1277649 (= lambda!296770 lambda!296654)))

(declare-fun bs!1277650 () Bool)

(assert (= bs!1277650 (and d!1752277 d!1752083)))

(assert (=> bs!1277650 (= lambda!296770 lambda!296687)))

(assert (=> d!1752277 (= (inv!82033 (h!69167 (t!376100 zl!343))) (forall!14692 (exprs!5398 (h!69167 (t!376100 zl!343))) lambda!296770))))

(declare-fun bs!1277651 () Bool)

(assert (= bs!1277651 d!1752277))

(declare-fun m!6531802 () Bool)

(assert (=> bs!1277651 m!6531802))

(assert (=> b!5529311 d!1752277))

(declare-fun b!5529806 () Bool)

(declare-fun res!2354491 () Bool)

(declare-fun e!3418384 () Bool)

(assert (=> b!5529806 (=> (not res!2354491) (not e!3418384))))

(declare-fun lt!2248201 () List!62842)

(declare-fun size!39943 (List!62842) Int)

(assert (=> b!5529806 (= res!2354491 (= (size!39943 lt!2248201) (+ (size!39943 (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718))) (size!39943 (t!376099 s!2326)))))))

(declare-fun b!5529805 () Bool)

(declare-fun e!3418385 () List!62842)

(assert (=> b!5529805 (= e!3418385 (Cons!62718 (h!69166 (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718))) (++!13762 (t!376099 (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718))) (t!376099 s!2326))))))

(declare-fun b!5529807 () Bool)

(assert (=> b!5529807 (= e!3418384 (or (not (= (t!376099 s!2326) Nil!62718)) (= lt!2248201 (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718)))))))

(declare-fun b!5529804 () Bool)

(assert (=> b!5529804 (= e!3418385 (t!376099 s!2326))))

(declare-fun d!1752279 () Bool)

(assert (=> d!1752279 e!3418384))

(declare-fun res!2354490 () Bool)

(assert (=> d!1752279 (=> (not res!2354490) (not e!3418384))))

(declare-fun content!11285 (List!62842) (Set C!31298))

(assert (=> d!1752279 (= res!2354490 (= (content!11285 lt!2248201) (set.union (content!11285 (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718))) (content!11285 (t!376099 s!2326)))))))

(assert (=> d!1752279 (= lt!2248201 e!3418385)))

(declare-fun c!967672 () Bool)

(assert (=> d!1752279 (= c!967672 (is-Nil!62718 (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718))))))

(assert (=> d!1752279 (= (++!13762 (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718)) (t!376099 s!2326)) lt!2248201)))

(assert (= (and d!1752279 c!967672) b!5529804))

(assert (= (and d!1752279 (not c!967672)) b!5529805))

(assert (= (and d!1752279 res!2354490) b!5529806))

(assert (= (and b!5529806 res!2354491) b!5529807))

(declare-fun m!6531804 () Bool)

(assert (=> b!5529806 m!6531804))

(assert (=> b!5529806 m!6531176))

(declare-fun m!6531806 () Bool)

(assert (=> b!5529806 m!6531806))

(declare-fun m!6531808 () Bool)

(assert (=> b!5529806 m!6531808))

(declare-fun m!6531810 () Bool)

(assert (=> b!5529805 m!6531810))

(declare-fun m!6531812 () Bool)

(assert (=> d!1752279 m!6531812))

(assert (=> d!1752279 m!6531176))

(declare-fun m!6531814 () Bool)

(assert (=> d!1752279 m!6531814))

(declare-fun m!6531816 () Bool)

(assert (=> d!1752279 m!6531816))

(assert (=> b!5529005 d!1752279))

(declare-fun b!5529810 () Bool)

(declare-fun res!2354493 () Bool)

(declare-fun e!3418386 () Bool)

(assert (=> b!5529810 (=> (not res!2354493) (not e!3418386))))

(declare-fun lt!2248202 () List!62842)

(assert (=> b!5529810 (= res!2354493 (= (size!39943 lt!2248202) (+ (size!39943 Nil!62718) (size!39943 (Cons!62718 (h!69166 s!2326) Nil!62718)))))))

(declare-fun b!5529809 () Bool)

(declare-fun e!3418387 () List!62842)

(assert (=> b!5529809 (= e!3418387 (Cons!62718 (h!69166 Nil!62718) (++!13762 (t!376099 Nil!62718) (Cons!62718 (h!69166 s!2326) Nil!62718))))))

(declare-fun b!5529811 () Bool)

(assert (=> b!5529811 (= e!3418386 (or (not (= (Cons!62718 (h!69166 s!2326) Nil!62718) Nil!62718)) (= lt!2248202 Nil!62718)))))

(declare-fun b!5529808 () Bool)

(assert (=> b!5529808 (= e!3418387 (Cons!62718 (h!69166 s!2326) Nil!62718))))

(declare-fun d!1752281 () Bool)

(assert (=> d!1752281 e!3418386))

(declare-fun res!2354492 () Bool)

(assert (=> d!1752281 (=> (not res!2354492) (not e!3418386))))

(assert (=> d!1752281 (= res!2354492 (= (content!11285 lt!2248202) (set.union (content!11285 Nil!62718) (content!11285 (Cons!62718 (h!69166 s!2326) Nil!62718)))))))

(assert (=> d!1752281 (= lt!2248202 e!3418387)))

(declare-fun c!967673 () Bool)

(assert (=> d!1752281 (= c!967673 (is-Nil!62718 Nil!62718))))

(assert (=> d!1752281 (= (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718)) lt!2248202)))

(assert (= (and d!1752281 c!967673) b!5529808))

(assert (= (and d!1752281 (not c!967673)) b!5529809))

(assert (= (and d!1752281 res!2354492) b!5529810))

(assert (= (and b!5529810 res!2354493) b!5529811))

(declare-fun m!6531818 () Bool)

(assert (=> b!5529810 m!6531818))

(declare-fun m!6531820 () Bool)

(assert (=> b!5529810 m!6531820))

(declare-fun m!6531822 () Bool)

(assert (=> b!5529810 m!6531822))

(declare-fun m!6531824 () Bool)

(assert (=> b!5529809 m!6531824))

(declare-fun m!6531826 () Bool)

(assert (=> d!1752281 m!6531826))

(declare-fun m!6531828 () Bool)

(assert (=> d!1752281 m!6531828))

(declare-fun m!6531830 () Bool)

(assert (=> d!1752281 m!6531830))

(assert (=> b!5529005 d!1752281))

(declare-fun d!1752283 () Bool)

(assert (=> d!1752283 (= (++!13762 (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718)) (t!376099 s!2326)) s!2326)))

(declare-fun lt!2248205 () Unit!155488)

(declare-fun choose!42023 (List!62842 C!31298 List!62842 List!62842) Unit!155488)

(assert (=> d!1752283 (= lt!2248205 (choose!42023 Nil!62718 (h!69166 s!2326) (t!376099 s!2326) s!2326))))

(assert (=> d!1752283 (= (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) (t!376099 s!2326))) s!2326)))

(assert (=> d!1752283 (= (lemmaMoveElementToOtherListKeepsConcatEq!1931 Nil!62718 (h!69166 s!2326) (t!376099 s!2326) s!2326) lt!2248205)))

(declare-fun bs!1277652 () Bool)

(assert (= bs!1277652 d!1752283))

(assert (=> bs!1277652 m!6531176))

(assert (=> bs!1277652 m!6531176))

(assert (=> bs!1277652 m!6531178))

(declare-fun m!6531832 () Bool)

(assert (=> bs!1277652 m!6531832))

(declare-fun m!6531834 () Bool)

(assert (=> bs!1277652 m!6531834))

(assert (=> b!5529005 d!1752283))

(declare-fun b!5529812 () Bool)

(declare-fun e!3418388 () Option!15523)

(declare-fun e!3418392 () Option!15523)

(assert (=> b!5529812 (= e!3418388 e!3418392)))

(declare-fun c!967674 () Bool)

(assert (=> b!5529812 (= c!967674 (is-Nil!62718 (t!376099 s!2326)))))

(declare-fun b!5529813 () Bool)

(declare-fun e!3418389 () Bool)

(declare-fun lt!2248206 () Option!15523)

(assert (=> b!5529813 (= e!3418389 (= (++!13762 (_1!35914 (get!21587 lt!2248206)) (_2!35914 (get!21587 lt!2248206))) s!2326))))

(declare-fun b!5529814 () Bool)

(declare-fun e!3418390 () Bool)

(assert (=> b!5529814 (= e!3418390 (matchR!7699 (regTwo!31540 r!7292) (t!376099 s!2326)))))

(declare-fun b!5529815 () Bool)

(declare-fun lt!2248208 () Unit!155488)

(declare-fun lt!2248207 () Unit!155488)

(assert (=> b!5529815 (= lt!2248208 lt!2248207)))

(assert (=> b!5529815 (= (++!13762 (++!13762 (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718)) (Cons!62718 (h!69166 (t!376099 s!2326)) Nil!62718)) (t!376099 (t!376099 s!2326))) s!2326)))

(assert (=> b!5529815 (= lt!2248207 (lemmaMoveElementToOtherListKeepsConcatEq!1931 (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718)) (h!69166 (t!376099 s!2326)) (t!376099 (t!376099 s!2326)) s!2326))))

(assert (=> b!5529815 (= e!3418392 (findConcatSeparation!1937 (regOne!31540 r!7292) (regTwo!31540 r!7292) (++!13762 (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718)) (Cons!62718 (h!69166 (t!376099 s!2326)) Nil!62718)) (t!376099 (t!376099 s!2326)) s!2326))))

(declare-fun d!1752285 () Bool)

(declare-fun e!3418391 () Bool)

(assert (=> d!1752285 e!3418391))

(declare-fun res!2354497 () Bool)

(assert (=> d!1752285 (=> res!2354497 e!3418391)))

(assert (=> d!1752285 (= res!2354497 e!3418389)))

(declare-fun res!2354498 () Bool)

(assert (=> d!1752285 (=> (not res!2354498) (not e!3418389))))

(assert (=> d!1752285 (= res!2354498 (isDefined!12226 lt!2248206))))

(assert (=> d!1752285 (= lt!2248206 e!3418388)))

(declare-fun c!967675 () Bool)

(assert (=> d!1752285 (= c!967675 e!3418390)))

(declare-fun res!2354494 () Bool)

(assert (=> d!1752285 (=> (not res!2354494) (not e!3418390))))

(assert (=> d!1752285 (= res!2354494 (matchR!7699 (regOne!31540 r!7292) (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718))))))

(assert (=> d!1752285 (validRegex!7250 (regOne!31540 r!7292))))

(assert (=> d!1752285 (= (findConcatSeparation!1937 (regOne!31540 r!7292) (regTwo!31540 r!7292) (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718)) (t!376099 s!2326) s!2326) lt!2248206)))

(declare-fun b!5529816 () Bool)

(assert (=> b!5529816 (= e!3418391 (not (isDefined!12226 lt!2248206)))))

(declare-fun b!5529817 () Bool)

(declare-fun res!2354495 () Bool)

(assert (=> b!5529817 (=> (not res!2354495) (not e!3418389))))

(assert (=> b!5529817 (= res!2354495 (matchR!7699 (regTwo!31540 r!7292) (_2!35914 (get!21587 lt!2248206))))))

(declare-fun b!5529818 () Bool)

(assert (=> b!5529818 (= e!3418392 None!15522)))

(declare-fun b!5529819 () Bool)

(declare-fun res!2354496 () Bool)

(assert (=> b!5529819 (=> (not res!2354496) (not e!3418389))))

(assert (=> b!5529819 (= res!2354496 (matchR!7699 (regOne!31540 r!7292) (_1!35914 (get!21587 lt!2248206))))))

(declare-fun b!5529820 () Bool)

(assert (=> b!5529820 (= e!3418388 (Some!15522 (tuple2!65223 (++!13762 Nil!62718 (Cons!62718 (h!69166 s!2326) Nil!62718)) (t!376099 s!2326))))))

(assert (= (and d!1752285 res!2354494) b!5529814))

(assert (= (and d!1752285 c!967675) b!5529820))

(assert (= (and d!1752285 (not c!967675)) b!5529812))

(assert (= (and b!5529812 c!967674) b!5529818))

(assert (= (and b!5529812 (not c!967674)) b!5529815))

(assert (= (and d!1752285 res!2354498) b!5529819))

(assert (= (and b!5529819 res!2354496) b!5529817))

(assert (= (and b!5529817 res!2354495) b!5529813))

(assert (= (and d!1752285 (not res!2354497)) b!5529816))

(declare-fun m!6531836 () Bool)

(assert (=> b!5529817 m!6531836))

(declare-fun m!6531838 () Bool)

(assert (=> b!5529817 m!6531838))

(declare-fun m!6531840 () Bool)

(assert (=> b!5529814 m!6531840))

(declare-fun m!6531842 () Bool)

(assert (=> b!5529816 m!6531842))

(assert (=> b!5529813 m!6531836))

(declare-fun m!6531844 () Bool)

(assert (=> b!5529813 m!6531844))

(assert (=> d!1752285 m!6531842))

(assert (=> d!1752285 m!6531176))

(declare-fun m!6531846 () Bool)

(assert (=> d!1752285 m!6531846))

(assert (=> d!1752285 m!6531172))

(assert (=> b!5529819 m!6531836))

(declare-fun m!6531848 () Bool)

(assert (=> b!5529819 m!6531848))

(assert (=> b!5529815 m!6531176))

(declare-fun m!6531850 () Bool)

(assert (=> b!5529815 m!6531850))

(assert (=> b!5529815 m!6531850))

(declare-fun m!6531852 () Bool)

(assert (=> b!5529815 m!6531852))

(assert (=> b!5529815 m!6531176))

(declare-fun m!6531854 () Bool)

(assert (=> b!5529815 m!6531854))

(assert (=> b!5529815 m!6531850))

(declare-fun m!6531856 () Bool)

(assert (=> b!5529815 m!6531856))

(assert (=> b!5529005 d!1752285))

(declare-fun b!5529821 () Bool)

(declare-fun e!3418398 () Bool)

(declare-fun call!410492 () Bool)

(assert (=> b!5529821 (= e!3418398 call!410492)))

(declare-fun call!410493 () Bool)

(declare-fun c!967677 () Bool)

(declare-fun c!967676 () Bool)

(declare-fun bm!410487 () Bool)

(assert (=> bm!410487 (= call!410493 (validRegex!7250 (ite c!967677 (reg!15843 lt!2248032) (ite c!967676 (regTwo!31541 lt!2248032) (regTwo!31540 lt!2248032)))))))

(declare-fun b!5529822 () Bool)

(declare-fun e!3418399 () Bool)

(assert (=> b!5529822 (= e!3418399 call!410493)))

(declare-fun d!1752287 () Bool)

(declare-fun res!2354503 () Bool)

(declare-fun e!3418394 () Bool)

(assert (=> d!1752287 (=> res!2354503 e!3418394)))

(assert (=> d!1752287 (= res!2354503 (is-ElementMatch!15514 lt!2248032))))

(assert (=> d!1752287 (= (validRegex!7250 lt!2248032) e!3418394)))

(declare-fun b!5529823 () Bool)

(declare-fun e!3418397 () Bool)

(assert (=> b!5529823 (= e!3418394 e!3418397)))

(assert (=> b!5529823 (= c!967677 (is-Star!15514 lt!2248032))))

(declare-fun b!5529824 () Bool)

(declare-fun e!3418393 () Bool)

(assert (=> b!5529824 (= e!3418393 call!410492)))

(declare-fun b!5529825 () Bool)

(declare-fun e!3418395 () Bool)

(assert (=> b!5529825 (= e!3418397 e!3418395)))

(assert (=> b!5529825 (= c!967676 (is-Union!15514 lt!2248032))))

(declare-fun b!5529826 () Bool)

(declare-fun res!2354501 () Bool)

(declare-fun e!3418396 () Bool)

(assert (=> b!5529826 (=> res!2354501 e!3418396)))

(assert (=> b!5529826 (= res!2354501 (not (is-Concat!24359 lt!2248032)))))

(assert (=> b!5529826 (= e!3418395 e!3418396)))

(declare-fun b!5529827 () Bool)

(assert (=> b!5529827 (= e!3418396 e!3418398)))

(declare-fun res!2354500 () Bool)

(assert (=> b!5529827 (=> (not res!2354500) (not e!3418398))))

(declare-fun call!410494 () Bool)

(assert (=> b!5529827 (= res!2354500 call!410494)))

(declare-fun bm!410488 () Bool)

(assert (=> bm!410488 (= call!410494 (validRegex!7250 (ite c!967676 (regOne!31541 lt!2248032) (regOne!31540 lt!2248032))))))

(declare-fun b!5529828 () Bool)

(declare-fun res!2354502 () Bool)

(assert (=> b!5529828 (=> (not res!2354502) (not e!3418393))))

(assert (=> b!5529828 (= res!2354502 call!410494)))

(assert (=> b!5529828 (= e!3418395 e!3418393)))

(declare-fun b!5529829 () Bool)

(assert (=> b!5529829 (= e!3418397 e!3418399)))

(declare-fun res!2354499 () Bool)

(assert (=> b!5529829 (= res!2354499 (not (nullable!5548 (reg!15843 lt!2248032))))))

(assert (=> b!5529829 (=> (not res!2354499) (not e!3418399))))

(declare-fun bm!410489 () Bool)

(assert (=> bm!410489 (= call!410492 call!410493)))

(assert (= (and d!1752287 (not res!2354503)) b!5529823))

(assert (= (and b!5529823 c!967677) b!5529829))

(assert (= (and b!5529823 (not c!967677)) b!5529825))

(assert (= (and b!5529829 res!2354499) b!5529822))

(assert (= (and b!5529825 c!967676) b!5529828))

(assert (= (and b!5529825 (not c!967676)) b!5529826))

(assert (= (and b!5529828 res!2354502) b!5529824))

(assert (= (and b!5529826 (not res!2354501)) b!5529827))

(assert (= (and b!5529827 res!2354500) b!5529821))

(assert (= (or b!5529824 b!5529821) bm!410489))

(assert (= (or b!5529828 b!5529827) bm!410488))

(assert (= (or b!5529822 bm!410489) bm!410487))

(declare-fun m!6531858 () Bool)

(assert (=> bm!410487 m!6531858))

(declare-fun m!6531860 () Bool)

(assert (=> bm!410488 m!6531860))

(declare-fun m!6531862 () Bool)

(assert (=> b!5529829 m!6531862))

(assert (=> d!1752029 d!1752287))

(declare-fun d!1752289 () Bool)

(declare-fun res!2354508 () Bool)

(declare-fun e!3418404 () Bool)

(assert (=> d!1752289 (=> res!2354508 e!3418404)))

(assert (=> d!1752289 (= res!2354508 (is-Nil!62717 (unfocusZipperList!942 zl!343)))))

(assert (=> d!1752289 (= (forall!14692 (unfocusZipperList!942 zl!343) lambda!296654) e!3418404)))

(declare-fun b!5529834 () Bool)

(declare-fun e!3418405 () Bool)

(assert (=> b!5529834 (= e!3418404 e!3418405)))

(declare-fun res!2354509 () Bool)

(assert (=> b!5529834 (=> (not res!2354509) (not e!3418405))))

(declare-fun dynLambda!24523 (Int Regex!15514) Bool)

(assert (=> b!5529834 (= res!2354509 (dynLambda!24523 lambda!296654 (h!69165 (unfocusZipperList!942 zl!343))))))

(declare-fun b!5529835 () Bool)

(assert (=> b!5529835 (= e!3418405 (forall!14692 (t!376098 (unfocusZipperList!942 zl!343)) lambda!296654))))

(assert (= (and d!1752289 (not res!2354508)) b!5529834))

(assert (= (and b!5529834 res!2354509) b!5529835))

(declare-fun b_lambda!209851 () Bool)

(assert (=> (not b_lambda!209851) (not b!5529834)))

(declare-fun m!6531864 () Bool)

(assert (=> b!5529834 m!6531864))

(declare-fun m!6531866 () Bool)

(assert (=> b!5529835 m!6531866))

(assert (=> d!1752029 d!1752289))

(declare-fun d!1752291 () Bool)

(assert (=> d!1752291 (= (isEmpty!34508 (exprs!5398 (h!69167 zl!343))) (is-Nil!62717 (exprs!5398 (h!69167 zl!343))))))

(assert (=> b!5529199 d!1752291))

(declare-fun d!1752293 () Bool)

(assert (=> d!1752293 (= (isEmpty!34511 s!2326) (is-Nil!62718 s!2326))))

(assert (=> d!1752121 d!1752293))

(declare-fun d!1752295 () Bool)

(assert (=> d!1752295 (= (isEmpty!34511 (t!376099 s!2326)) (is-Nil!62718 (t!376099 s!2326)))))

(assert (=> d!1752043 d!1752295))

(declare-fun bs!1277653 () Bool)

(declare-fun d!1752297 () Bool)

(assert (= bs!1277653 (and d!1752297 b!5529278)))

(declare-fun lambda!296773 () Int)

(assert (=> bs!1277653 (not (= lambda!296773 lambda!296702))))

(declare-fun bs!1277654 () Bool)

(assert (= bs!1277654 (and d!1752297 b!5529285)))

(assert (=> bs!1277654 (not (= lambda!296773 lambda!296706))))

(declare-fun bs!1277655 () Bool)

(assert (= bs!1277655 (and d!1752297 b!5529273)))

(assert (=> bs!1277655 (not (= lambda!296773 lambda!296699))))

(declare-fun bs!1277656 () Bool)

(assert (= bs!1277656 (and d!1752297 b!5529280)))

(assert (=> bs!1277656 (not (= lambda!296773 lambda!296703))))

(declare-fun bs!1277657 () Bool)

(assert (= bs!1277657 (and d!1752297 b!5529287)))

(assert (=> bs!1277657 (not (= lambda!296773 lambda!296707))))

(declare-fun bs!1277658 () Bool)

(assert (= bs!1277658 (and d!1752297 b!5529275)))

(assert (=> bs!1277658 (not (= lambda!296773 lambda!296700))))

(declare-fun exists!2148 ((Set Context!9796) Int) Bool)

(assert (=> d!1752297 (= (nullableZipper!1540 lt!2247907) (exists!2148 lt!2247907 lambda!296773))))

(declare-fun bs!1277659 () Bool)

(assert (= bs!1277659 d!1752297))

(declare-fun m!6531868 () Bool)

(assert (=> bs!1277659 m!6531868))

(assert (=> b!5528973 d!1752297))

(declare-fun bs!1277660 () Bool)

(declare-fun d!1752299 () Bool)

(assert (= bs!1277660 (and d!1752299 d!1752257)))

(declare-fun lambda!296774 () Int)

(assert (=> bs!1277660 (= lambda!296774 lambda!296768)))

(declare-fun bs!1277661 () Bool)

(assert (= bs!1277661 (and d!1752299 b!5529288)))

(assert (=> bs!1277661 (not (= lambda!296774 lambda!296708))))

(declare-fun bs!1277662 () Bool)

(assert (= bs!1277662 (and d!1752299 b!5529167)))

(assert (=> bs!1277662 (not (= lambda!296774 lambda!296683))))

(declare-fun bs!1277663 () Bool)

(assert (= bs!1277663 (and d!1752299 d!1752031)))

(assert (=> bs!1277663 (= lambda!296774 lambda!296657)))

(declare-fun bs!1277664 () Bool)

(assert (= bs!1277664 (and d!1752299 b!5529162)))

(assert (=> bs!1277664 (not (= lambda!296774 lambda!296681))))

(declare-fun bs!1277665 () Bool)

(assert (= bs!1277665 (and d!1752299 d!1752277)))

(assert (=> bs!1277665 (= lambda!296774 lambda!296770)))

(declare-fun bs!1277666 () Bool)

(assert (= bs!1277666 (and d!1752299 d!1752115)))

(assert (=> bs!1277666 (= lambda!296774 lambda!296691)))

(declare-fun bs!1277667 () Bool)

(assert (= bs!1277667 (and d!1752299 d!1752085)))

(assert (=> bs!1277667 (= lambda!296774 lambda!296690)))

(declare-fun bs!1277668 () Bool)

(assert (= bs!1277668 (and d!1752299 b!5529169)))

(assert (=> bs!1277668 (not (= lambda!296774 lambda!296684))))

(declare-fun bs!1277669 () Bool)

(assert (= bs!1277669 (and d!1752299 b!5529164)))

(assert (=> bs!1277669 (not (= lambda!296774 lambda!296682))))

(declare-fun bs!1277670 () Bool)

(assert (= bs!1277670 (and d!1752299 b!5529290)))

(assert (=> bs!1277670 (not (= lambda!296774 lambda!296709))))

(declare-fun bs!1277671 () Bool)

(assert (= bs!1277671 (and d!1752299 d!1752029)))

(assert (=> bs!1277671 (= lambda!296774 lambda!296654)))

(declare-fun bs!1277672 () Bool)

(assert (= bs!1277672 (and d!1752299 d!1752083)))

(assert (=> bs!1277672 (= lambda!296774 lambda!296687)))

(assert (=> d!1752299 (= (inv!82033 setElem!36782) (forall!14692 (exprs!5398 setElem!36782) lambda!296774))))

(declare-fun bs!1277673 () Bool)

(assert (= bs!1277673 d!1752299))

(declare-fun m!6531870 () Bool)

(assert (=> bs!1277673 m!6531870))

(assert (=> setNonEmpty!36782 d!1752299))

(assert (=> b!5529094 d!1752271))

(assert (=> b!5529094 d!1752273))

(declare-fun b!5529836 () Bool)

(declare-fun e!3418411 () Bool)

(declare-fun call!410495 () Bool)

(assert (=> b!5529836 (= e!3418411 call!410495)))

(declare-fun c!967681 () Bool)

(declare-fun c!967680 () Bool)

(declare-fun call!410496 () Bool)

(declare-fun bm!410490 () Bool)

(assert (=> bm!410490 (= call!410496 (validRegex!7250 (ite c!967681 (reg!15843 (ite c!967498 (regOne!31541 r!7292) (regOne!31540 r!7292))) (ite c!967680 (regTwo!31541 (ite c!967498 (regOne!31541 r!7292) (regOne!31540 r!7292))) (regTwo!31540 (ite c!967498 (regOne!31541 r!7292) (regOne!31540 r!7292)))))))))

(declare-fun b!5529837 () Bool)

(declare-fun e!3418412 () Bool)

(assert (=> b!5529837 (= e!3418412 call!410496)))

(declare-fun d!1752301 () Bool)

(declare-fun res!2354514 () Bool)

(declare-fun e!3418407 () Bool)

(assert (=> d!1752301 (=> res!2354514 e!3418407)))

(assert (=> d!1752301 (= res!2354514 (is-ElementMatch!15514 (ite c!967498 (regOne!31541 r!7292) (regOne!31540 r!7292))))))

(assert (=> d!1752301 (= (validRegex!7250 (ite c!967498 (regOne!31541 r!7292) (regOne!31540 r!7292))) e!3418407)))

(declare-fun b!5529838 () Bool)

(declare-fun e!3418410 () Bool)

(assert (=> b!5529838 (= e!3418407 e!3418410)))

(assert (=> b!5529838 (= c!967681 (is-Star!15514 (ite c!967498 (regOne!31541 r!7292) (regOne!31540 r!7292))))))

(declare-fun b!5529839 () Bool)

(declare-fun e!3418406 () Bool)

(assert (=> b!5529839 (= e!3418406 call!410495)))

(declare-fun b!5529840 () Bool)

(declare-fun e!3418408 () Bool)

(assert (=> b!5529840 (= e!3418410 e!3418408)))

(assert (=> b!5529840 (= c!967680 (is-Union!15514 (ite c!967498 (regOne!31541 r!7292) (regOne!31540 r!7292))))))

(declare-fun b!5529841 () Bool)

(declare-fun res!2354512 () Bool)

(declare-fun e!3418409 () Bool)

(assert (=> b!5529841 (=> res!2354512 e!3418409)))

(assert (=> b!5529841 (= res!2354512 (not (is-Concat!24359 (ite c!967498 (regOne!31541 r!7292) (regOne!31540 r!7292)))))))

(assert (=> b!5529841 (= e!3418408 e!3418409)))

(declare-fun b!5529842 () Bool)

(assert (=> b!5529842 (= e!3418409 e!3418411)))

(declare-fun res!2354511 () Bool)

(assert (=> b!5529842 (=> (not res!2354511) (not e!3418411))))

(declare-fun call!410497 () Bool)

(assert (=> b!5529842 (= res!2354511 call!410497)))

(declare-fun bm!410491 () Bool)

(assert (=> bm!410491 (= call!410497 (validRegex!7250 (ite c!967680 (regOne!31541 (ite c!967498 (regOne!31541 r!7292) (regOne!31540 r!7292))) (regOne!31540 (ite c!967498 (regOne!31541 r!7292) (regOne!31540 r!7292))))))))

(declare-fun b!5529843 () Bool)

(declare-fun res!2354513 () Bool)

(assert (=> b!5529843 (=> (not res!2354513) (not e!3418406))))

(assert (=> b!5529843 (= res!2354513 call!410497)))

(assert (=> b!5529843 (= e!3418408 e!3418406)))

(declare-fun b!5529844 () Bool)

(assert (=> b!5529844 (= e!3418410 e!3418412)))

(declare-fun res!2354510 () Bool)

(assert (=> b!5529844 (= res!2354510 (not (nullable!5548 (reg!15843 (ite c!967498 (regOne!31541 r!7292) (regOne!31540 r!7292))))))))

(assert (=> b!5529844 (=> (not res!2354510) (not e!3418412))))

(declare-fun bm!410492 () Bool)

(assert (=> bm!410492 (= call!410495 call!410496)))

(assert (= (and d!1752301 (not res!2354514)) b!5529838))

(assert (= (and b!5529838 c!967681) b!5529844))

(assert (= (and b!5529838 (not c!967681)) b!5529840))

(assert (= (and b!5529844 res!2354510) b!5529837))

(assert (= (and b!5529840 c!967680) b!5529843))

(assert (= (and b!5529840 (not c!967680)) b!5529841))

(assert (= (and b!5529843 res!2354513) b!5529839))

(assert (= (and b!5529841 (not res!2354512)) b!5529842))

(assert (= (and b!5529842 res!2354511) b!5529836))

(assert (= (or b!5529839 b!5529836) bm!410492))

(assert (= (or b!5529843 b!5529842) bm!410491))

(assert (= (or b!5529837 bm!410492) bm!410490))

(declare-fun m!6531872 () Bool)

(assert (=> bm!410490 m!6531872))

(declare-fun m!6531874 () Bool)

(assert (=> bm!410491 m!6531874))

(declare-fun m!6531876 () Bool)

(assert (=> b!5529844 m!6531876))

(assert (=> bm!410408 d!1752301))

(declare-fun d!1752303 () Bool)

(assert (=> d!1752303 (= (isEmpty!34508 (unfocusZipperList!942 zl!343)) (is-Nil!62717 (unfocusZipperList!942 zl!343)))))

(assert (=> b!5528956 d!1752303))

(declare-fun c!967682 () Bool)

(declare-fun c!967685 () Bool)

(declare-fun call!410500 () List!62841)

(declare-fun bm!410493 () Bool)

(assert (=> bm!410493 (= call!410500 ($colon$colon!1593 (exprs!5398 (ite (or c!967501 c!967500) lt!2247922 (Context!9797 call!410418))) (ite (or c!967682 c!967685) (regTwo!31540 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292)))))) (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292))))))))))

(declare-fun bm!410494 () Bool)

(declare-fun call!410499 () (Set Context!9796))

(declare-fun call!410503 () (Set Context!9796))

(assert (=> bm!410494 (= call!410499 call!410503)))

(declare-fun b!5529845 () Bool)

(declare-fun e!3418414 () (Set Context!9796))

(assert (=> b!5529845 (= e!3418414 call!410499)))

(declare-fun b!5529846 () Bool)

(declare-fun e!3418417 () (Set Context!9796))

(declare-fun e!3418413 () (Set Context!9796))

(assert (=> b!5529846 (= e!3418417 e!3418413)))

(declare-fun c!967683 () Bool)

(assert (=> b!5529846 (= c!967683 (is-Union!15514 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292)))))))))

(declare-fun b!5529847 () Bool)

(assert (=> b!5529847 (= e!3418417 (set.insert (ite (or c!967501 c!967500) lt!2247922 (Context!9797 call!410418)) (as set.empty (Set Context!9796))))))

(declare-fun b!5529849 () Bool)

(declare-fun e!3418418 () Bool)

(assert (=> b!5529849 (= e!3418418 (nullable!5548 (regOne!31540 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292))))))))))

(declare-fun b!5529850 () Bool)

(declare-fun call!410498 () (Set Context!9796))

(declare-fun call!410502 () (Set Context!9796))

(assert (=> b!5529850 (= e!3418413 (set.union call!410498 call!410502))))

(declare-fun bm!410495 () Bool)

(declare-fun call!410501 () List!62841)

(assert (=> bm!410495 (= call!410501 call!410500)))

(declare-fun c!967684 () Bool)

(declare-fun b!5529851 () Bool)

(assert (=> b!5529851 (= c!967684 (is-Star!15514 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292)))))))))

(declare-fun e!3418416 () (Set Context!9796))

(assert (=> b!5529851 (= e!3418414 e!3418416)))

(declare-fun bm!410496 () Bool)

(assert (=> bm!410496 (= call!410498 (derivationStepZipperDown!856 (ite c!967683 (regOne!31541 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292)))))) (regOne!31540 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292))))))) (ite c!967683 (ite (or c!967501 c!967500) lt!2247922 (Context!9797 call!410418)) (Context!9797 call!410500)) (h!69166 s!2326)))))

(declare-fun b!5529852 () Bool)

(assert (=> b!5529852 (= c!967682 e!3418418)))

(declare-fun res!2354515 () Bool)

(assert (=> b!5529852 (=> (not res!2354515) (not e!3418418))))

(assert (=> b!5529852 (= res!2354515 (is-Concat!24359 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292)))))))))

(declare-fun e!3418415 () (Set Context!9796))

(assert (=> b!5529852 (= e!3418413 e!3418415)))

(declare-fun b!5529848 () Bool)

(assert (=> b!5529848 (= e!3418415 e!3418414)))

(assert (=> b!5529848 (= c!967685 (is-Concat!24359 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292)))))))))

(declare-fun c!967686 () Bool)

(declare-fun d!1752305 () Bool)

(assert (=> d!1752305 (= c!967686 (and (is-ElementMatch!15514 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292)))))) (= (c!967395 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292)))))) (h!69166 s!2326))))))

(assert (=> d!1752305 (= (derivationStepZipperDown!856 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292))))) (ite (or c!967501 c!967500) lt!2247922 (Context!9797 call!410418)) (h!69166 s!2326)) e!3418417)))

(declare-fun bm!410497 () Bool)

(assert (=> bm!410497 (= call!410502 (derivationStepZipperDown!856 (ite c!967683 (regTwo!31541 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292)))))) (ite c!967682 (regTwo!31540 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292)))))) (ite c!967685 (regOne!31540 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292)))))) (reg!15843 (ite c!967501 (regTwo!31541 (regOne!31540 r!7292)) (ite c!967500 (regTwo!31540 (regOne!31540 r!7292)) (ite c!967503 (regOne!31540 (regOne!31540 r!7292)) (reg!15843 (regOne!31540 r!7292))))))))) (ite (or c!967683 c!967682) (ite (or c!967501 c!967500) lt!2247922 (Context!9797 call!410418)) (Context!9797 call!410501)) (h!69166 s!2326)))))

(declare-fun b!5529853 () Bool)

(assert (=> b!5529853 (= e!3418415 (set.union call!410498 call!410503))))

(declare-fun b!5529854 () Bool)

(assert (=> b!5529854 (= e!3418416 call!410499)))

(declare-fun b!5529855 () Bool)

(assert (=> b!5529855 (= e!3418416 (as set.empty (Set Context!9796)))))

(declare-fun bm!410498 () Bool)

(assert (=> bm!410498 (= call!410503 call!410502)))

(assert (= (and d!1752305 c!967686) b!5529847))

(assert (= (and d!1752305 (not c!967686)) b!5529846))

(assert (= (and b!5529846 c!967683) b!5529850))

(assert (= (and b!5529846 (not c!967683)) b!5529852))

(assert (= (and b!5529852 res!2354515) b!5529849))

(assert (= (and b!5529852 c!967682) b!5529853))

(assert (= (and b!5529852 (not c!967682)) b!5529848))

(assert (= (and b!5529848 c!967685) b!5529845))

(assert (= (and b!5529848 (not c!967685)) b!5529851))

(assert (= (and b!5529851 c!967684) b!5529854))

(assert (= (and b!5529851 (not c!967684)) b!5529855))

(assert (= (or b!5529845 b!5529854) bm!410495))

(assert (= (or b!5529845 b!5529854) bm!410494))

(assert (= (or b!5529853 bm!410495) bm!410493))

(assert (= (or b!5529853 bm!410494) bm!410498))

(assert (= (or b!5529850 bm!410498) bm!410497))

(assert (= (or b!5529850 b!5529853) bm!410496))

(declare-fun m!6531878 () Bool)

(assert (=> bm!410493 m!6531878))

(declare-fun m!6531880 () Bool)

(assert (=> bm!410496 m!6531880))

(declare-fun m!6531882 () Bool)

(assert (=> b!5529849 m!6531882))

(declare-fun m!6531884 () Bool)

(assert (=> bm!410497 m!6531884))

(declare-fun m!6531886 () Bool)

(assert (=> b!5529847 m!6531886))

(assert (=> bm!410414 d!1752305))

(declare-fun bs!1277674 () Bool)

(declare-fun b!5529862 () Bool)

(assert (= bs!1277674 (and b!5529862 d!1752059)))

(declare-fun lambda!296775 () Int)

(assert (=> bs!1277674 (not (= lambda!296775 lambda!296669))))

(declare-fun bs!1277675 () Bool)

(assert (= bs!1277675 (and b!5529862 b!5529061)))

(assert (=> bs!1277675 (= (and (= (reg!15843 (regTwo!31541 r!7292)) (reg!15843 r!7292)) (= (regTwo!31541 r!7292) r!7292)) (= lambda!296775 lambda!296674))))

(declare-fun bs!1277676 () Bool)

(assert (= bs!1277676 (and b!5529862 b!5528804)))

(assert (=> bs!1277676 (not (= lambda!296775 lambda!296635))))

(declare-fun bs!1277677 () Bool)

(assert (= bs!1277677 (and b!5529862 b!5529063)))

(assert (=> bs!1277677 (not (= lambda!296775 lambda!296675))))

(assert (=> bs!1277676 (not (= lambda!296775 lambda!296634))))

(assert (=> bs!1277674 (not (= lambda!296775 lambda!296668))))

(declare-fun bs!1277678 () Bool)

(assert (= bs!1277678 (and b!5529862 d!1752057)))

(assert (=> bs!1277678 (not (= lambda!296775 lambda!296663))))

(assert (=> b!5529862 true))

(assert (=> b!5529862 true))

(declare-fun bs!1277679 () Bool)

(declare-fun b!5529864 () Bool)

(assert (= bs!1277679 (and b!5529864 d!1752059)))

(declare-fun lambda!296776 () Int)

(assert (=> bs!1277679 (= (and (= (regOne!31540 (regTwo!31541 r!7292)) (regOne!31540 r!7292)) (= (regTwo!31540 (regTwo!31541 r!7292)) (regTwo!31540 r!7292))) (= lambda!296776 lambda!296669))))

(declare-fun bs!1277680 () Bool)

(assert (= bs!1277680 (and b!5529864 b!5529862)))

(assert (=> bs!1277680 (not (= lambda!296776 lambda!296775))))

(declare-fun bs!1277681 () Bool)

(assert (= bs!1277681 (and b!5529864 b!5529061)))

(assert (=> bs!1277681 (not (= lambda!296776 lambda!296674))))

(declare-fun bs!1277682 () Bool)

(assert (= bs!1277682 (and b!5529864 b!5528804)))

(assert (=> bs!1277682 (= (and (= (regOne!31540 (regTwo!31541 r!7292)) (regOne!31540 r!7292)) (= (regTwo!31540 (regTwo!31541 r!7292)) (regTwo!31540 r!7292))) (= lambda!296776 lambda!296635))))

(declare-fun bs!1277683 () Bool)

(assert (= bs!1277683 (and b!5529864 b!5529063)))

(assert (=> bs!1277683 (= (and (= (regOne!31540 (regTwo!31541 r!7292)) (regOne!31540 r!7292)) (= (regTwo!31540 (regTwo!31541 r!7292)) (regTwo!31540 r!7292))) (= lambda!296776 lambda!296675))))

(assert (=> bs!1277682 (not (= lambda!296776 lambda!296634))))

(assert (=> bs!1277679 (not (= lambda!296776 lambda!296668))))

(declare-fun bs!1277684 () Bool)

(assert (= bs!1277684 (and b!5529864 d!1752057)))

(assert (=> bs!1277684 (not (= lambda!296776 lambda!296663))))

(assert (=> b!5529864 true))

(assert (=> b!5529864 true))

(declare-fun b!5529856 () Bool)

(declare-fun e!3418422 () Bool)

(declare-fun e!3418424 () Bool)

(assert (=> b!5529856 (= e!3418422 e!3418424)))

(declare-fun c!967688 () Bool)

(assert (=> b!5529856 (= c!967688 (is-Star!15514 (regTwo!31541 r!7292)))))

(declare-fun bm!410499 () Bool)

(declare-fun call!410504 () Bool)

(assert (=> bm!410499 (= call!410504 (isEmpty!34511 s!2326))))

(declare-fun b!5529857 () Bool)

(declare-fun e!3418420 () Bool)

(assert (=> b!5529857 (= e!3418420 (= s!2326 (Cons!62718 (c!967395 (regTwo!31541 r!7292)) Nil!62718)))))

(declare-fun d!1752307 () Bool)

(declare-fun c!967687 () Bool)

(assert (=> d!1752307 (= c!967687 (is-EmptyExpr!15514 (regTwo!31541 r!7292)))))

(declare-fun e!3418423 () Bool)

(assert (=> d!1752307 (= (matchRSpec!2617 (regTwo!31541 r!7292) s!2326) e!3418423)))

(declare-fun b!5529858 () Bool)

(declare-fun e!3418421 () Bool)

(assert (=> b!5529858 (= e!3418422 e!3418421)))

(declare-fun res!2354517 () Bool)

(assert (=> b!5529858 (= res!2354517 (matchRSpec!2617 (regOne!31541 (regTwo!31541 r!7292)) s!2326))))

(assert (=> b!5529858 (=> res!2354517 e!3418421)))

(declare-fun bm!410500 () Bool)

(declare-fun call!410505 () Bool)

(assert (=> bm!410500 (= call!410505 (Exists!2614 (ite c!967688 lambda!296775 lambda!296776)))))

(declare-fun b!5529859 () Bool)

(declare-fun res!2354518 () Bool)

(declare-fun e!3418419 () Bool)

(assert (=> b!5529859 (=> res!2354518 e!3418419)))

(assert (=> b!5529859 (= res!2354518 call!410504)))

(assert (=> b!5529859 (= e!3418424 e!3418419)))

(declare-fun b!5529860 () Bool)

(assert (=> b!5529860 (= e!3418421 (matchRSpec!2617 (regTwo!31541 (regTwo!31541 r!7292)) s!2326))))

(declare-fun b!5529861 () Bool)

(declare-fun c!967689 () Bool)

(assert (=> b!5529861 (= c!967689 (is-ElementMatch!15514 (regTwo!31541 r!7292)))))

(declare-fun e!3418425 () Bool)

(assert (=> b!5529861 (= e!3418425 e!3418420)))

(assert (=> b!5529862 (= e!3418419 call!410505)))

(declare-fun b!5529863 () Bool)

(declare-fun c!967690 () Bool)

(assert (=> b!5529863 (= c!967690 (is-Union!15514 (regTwo!31541 r!7292)))))

(assert (=> b!5529863 (= e!3418420 e!3418422)))

(assert (=> b!5529864 (= e!3418424 call!410505)))

(declare-fun b!5529865 () Bool)

(assert (=> b!5529865 (= e!3418423 call!410504)))

(declare-fun b!5529866 () Bool)

(assert (=> b!5529866 (= e!3418423 e!3418425)))

(declare-fun res!2354516 () Bool)

(assert (=> b!5529866 (= res!2354516 (not (is-EmptyLang!15514 (regTwo!31541 r!7292))))))

(assert (=> b!5529866 (=> (not res!2354516) (not e!3418425))))

(assert (= (and d!1752307 c!967687) b!5529865))

(assert (= (and d!1752307 (not c!967687)) b!5529866))

(assert (= (and b!5529866 res!2354516) b!5529861))

(assert (= (and b!5529861 c!967689) b!5529857))

(assert (= (and b!5529861 (not c!967689)) b!5529863))

(assert (= (and b!5529863 c!967690) b!5529858))

(assert (= (and b!5529863 (not c!967690)) b!5529856))

(assert (= (and b!5529858 (not res!2354517)) b!5529860))

(assert (= (and b!5529856 c!967688) b!5529859))

(assert (= (and b!5529856 (not c!967688)) b!5529864))

(assert (= (and b!5529859 (not res!2354518)) b!5529862))

(assert (= (or b!5529862 b!5529864) bm!410500))

(assert (= (or b!5529865 b!5529859) bm!410499))

(assert (=> bm!410499 m!6531104))

(declare-fun m!6531888 () Bool)

(assert (=> b!5529858 m!6531888))

(declare-fun m!6531890 () Bool)

(assert (=> bm!410500 m!6531890))

(declare-fun m!6531892 () Bool)

(assert (=> b!5529860 m!6531892))

(assert (=> b!5529059 d!1752307))

(declare-fun call!410508 () List!62841)

(declare-fun bm!410501 () Bool)

(declare-fun c!967691 () Bool)

(declare-fun c!967694 () Bool)

(assert (=> bm!410501 (= call!410508 ($colon$colon!1593 (exprs!5398 (ite (or c!967506 c!967505) lt!2247927 (Context!9797 call!410424))) (ite (or c!967691 c!967694) (regTwo!31540 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292)))))) (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292))))))))))

(declare-fun bm!410502 () Bool)

(declare-fun call!410507 () (Set Context!9796))

(declare-fun call!410511 () (Set Context!9796))

(assert (=> bm!410502 (= call!410507 call!410511)))

(declare-fun b!5529867 () Bool)

(declare-fun e!3418427 () (Set Context!9796))

(assert (=> b!5529867 (= e!3418427 call!410507)))

(declare-fun b!5529868 () Bool)

(declare-fun e!3418430 () (Set Context!9796))

(declare-fun e!3418426 () (Set Context!9796))

(assert (=> b!5529868 (= e!3418430 e!3418426)))

(declare-fun c!967692 () Bool)

(assert (=> b!5529868 (= c!967692 (is-Union!15514 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292)))))))))

(declare-fun b!5529869 () Bool)

(assert (=> b!5529869 (= e!3418430 (set.insert (ite (or c!967506 c!967505) lt!2247927 (Context!9797 call!410424)) (as set.empty (Set Context!9796))))))

(declare-fun b!5529871 () Bool)

(declare-fun e!3418431 () Bool)

(assert (=> b!5529871 (= e!3418431 (nullable!5548 (regOne!31540 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292))))))))))

(declare-fun b!5529872 () Bool)

(declare-fun call!410506 () (Set Context!9796))

(declare-fun call!410510 () (Set Context!9796))

(assert (=> b!5529872 (= e!3418426 (set.union call!410506 call!410510))))

(declare-fun bm!410503 () Bool)

(declare-fun call!410509 () List!62841)

(assert (=> bm!410503 (= call!410509 call!410508)))

(declare-fun b!5529873 () Bool)

(declare-fun c!967693 () Bool)

(assert (=> b!5529873 (= c!967693 (is-Star!15514 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292)))))))))

(declare-fun e!3418429 () (Set Context!9796))

(assert (=> b!5529873 (= e!3418427 e!3418429)))

(declare-fun bm!410504 () Bool)

(assert (=> bm!410504 (= call!410506 (derivationStepZipperDown!856 (ite c!967692 (regOne!31541 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292)))))) (regOne!31540 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292))))))) (ite c!967692 (ite (or c!967506 c!967505) lt!2247927 (Context!9797 call!410424)) (Context!9797 call!410508)) (h!69166 s!2326)))))

(declare-fun b!5529874 () Bool)

(assert (=> b!5529874 (= c!967691 e!3418431)))

(declare-fun res!2354519 () Bool)

(assert (=> b!5529874 (=> (not res!2354519) (not e!3418431))))

(assert (=> b!5529874 (= res!2354519 (is-Concat!24359 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292)))))))))

(declare-fun e!3418428 () (Set Context!9796))

(assert (=> b!5529874 (= e!3418426 e!3418428)))

(declare-fun b!5529870 () Bool)

(assert (=> b!5529870 (= e!3418428 e!3418427)))

(assert (=> b!5529870 (= c!967694 (is-Concat!24359 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292)))))))))

(declare-fun c!967695 () Bool)

(declare-fun d!1752309 () Bool)

(assert (=> d!1752309 (= c!967695 (and (is-ElementMatch!15514 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292)))))) (= (c!967395 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292)))))) (h!69166 s!2326))))))

(assert (=> d!1752309 (= (derivationStepZipperDown!856 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292))))) (ite (or c!967506 c!967505) lt!2247927 (Context!9797 call!410424)) (h!69166 s!2326)) e!3418430)))

(declare-fun bm!410505 () Bool)

(assert (=> bm!410505 (= call!410510 (derivationStepZipperDown!856 (ite c!967692 (regTwo!31541 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292)))))) (ite c!967691 (regTwo!31540 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292)))))) (ite c!967694 (regOne!31540 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292)))))) (reg!15843 (ite c!967506 (regTwo!31541 (regTwo!31540 r!7292)) (ite c!967505 (regTwo!31540 (regTwo!31540 r!7292)) (ite c!967508 (regOne!31540 (regTwo!31540 r!7292)) (reg!15843 (regTwo!31540 r!7292))))))))) (ite (or c!967692 c!967691) (ite (or c!967506 c!967505) lt!2247927 (Context!9797 call!410424)) (Context!9797 call!410509)) (h!69166 s!2326)))))

(declare-fun b!5529875 () Bool)

(assert (=> b!5529875 (= e!3418428 (set.union call!410506 call!410511))))

(declare-fun b!5529876 () Bool)

(assert (=> b!5529876 (= e!3418429 call!410507)))

(declare-fun b!5529877 () Bool)

(assert (=> b!5529877 (= e!3418429 (as set.empty (Set Context!9796)))))

(declare-fun bm!410506 () Bool)

(assert (=> bm!410506 (= call!410511 call!410510)))

(assert (= (and d!1752309 c!967695) b!5529869))

(assert (= (and d!1752309 (not c!967695)) b!5529868))

(assert (= (and b!5529868 c!967692) b!5529872))

(assert (= (and b!5529868 (not c!967692)) b!5529874))

(assert (= (and b!5529874 res!2354519) b!5529871))

(assert (= (and b!5529874 c!967691) b!5529875))

(assert (= (and b!5529874 (not c!967691)) b!5529870))

(assert (= (and b!5529870 c!967694) b!5529867))

(assert (= (and b!5529870 (not c!967694)) b!5529873))

(assert (= (and b!5529873 c!967693) b!5529876))

(assert (= (and b!5529873 (not c!967693)) b!5529877))

(assert (= (or b!5529867 b!5529876) bm!410503))

(assert (= (or b!5529867 b!5529876) bm!410502))

(assert (= (or b!5529875 bm!410503) bm!410501))

(assert (= (or b!5529875 bm!410502) bm!410506))

(assert (= (or b!5529872 bm!410506) bm!410505))

(assert (= (or b!5529872 b!5529875) bm!410504))

(declare-fun m!6531894 () Bool)

(assert (=> bm!410501 m!6531894))

(declare-fun m!6531896 () Bool)

(assert (=> bm!410504 m!6531896))

(declare-fun m!6531898 () Bool)

(assert (=> b!5529871 m!6531898))

(declare-fun m!6531900 () Bool)

(assert (=> bm!410505 m!6531900))

(declare-fun m!6531902 () Bool)

(assert (=> b!5529869 m!6531902))

(assert (=> bm!410420 d!1752309))

(declare-fun d!1752311 () Bool)

(declare-fun c!967696 () Bool)

(assert (=> d!1752311 (= c!967696 (isEmpty!34511 (tail!10927 (t!376099 s!2326))))))

(declare-fun e!3418432 () Bool)

(assert (=> d!1752311 (= (matchZipper!1672 (derivationStepZipper!1619 lt!2247928 (head!11832 (t!376099 s!2326))) (tail!10927 (t!376099 s!2326))) e!3418432)))

(declare-fun b!5529878 () Bool)

(assert (=> b!5529878 (= e!3418432 (nullableZipper!1540 (derivationStepZipper!1619 lt!2247928 (head!11832 (t!376099 s!2326)))))))

(declare-fun b!5529879 () Bool)

(assert (=> b!5529879 (= e!3418432 (matchZipper!1672 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247928 (head!11832 (t!376099 s!2326))) (head!11832 (tail!10927 (t!376099 s!2326)))) (tail!10927 (tail!10927 (t!376099 s!2326)))))))

(assert (= (and d!1752311 c!967696) b!5529878))

(assert (= (and d!1752311 (not c!967696)) b!5529879))

(assert (=> d!1752311 m!6531124))

(assert (=> d!1752311 m!6531788))

(assert (=> b!5529878 m!6531144))

(declare-fun m!6531904 () Bool)

(assert (=> b!5529878 m!6531904))

(assert (=> b!5529879 m!6531124))

(assert (=> b!5529879 m!6531792))

(assert (=> b!5529879 m!6531144))

(assert (=> b!5529879 m!6531792))

(declare-fun m!6531906 () Bool)

(assert (=> b!5529879 m!6531906))

(assert (=> b!5529879 m!6531124))

(assert (=> b!5529879 m!6531796))

(assert (=> b!5529879 m!6531906))

(assert (=> b!5529879 m!6531796))

(declare-fun m!6531908 () Bool)

(assert (=> b!5529879 m!6531908))

(assert (=> b!5528978 d!1752311))

(declare-fun bs!1277685 () Bool)

(declare-fun d!1752313 () Bool)

(assert (= bs!1277685 (and d!1752313 d!1752265)))

(declare-fun lambda!296777 () Int)

(assert (=> bs!1277685 (= lambda!296777 lambda!296769)))

(declare-fun bs!1277686 () Bool)

(assert (= bs!1277686 (and d!1752313 d!1752037)))

(assert (=> bs!1277686 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296777 lambda!296660))))

(declare-fun bs!1277687 () Bool)

(assert (= bs!1277687 (and d!1752313 d!1752073)))

(assert (=> bs!1277687 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296777 lambda!296676))))

(declare-fun bs!1277688 () Bool)

(assert (= bs!1277688 (and d!1752313 b!5528779)))

(assert (=> bs!1277688 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296777 lambda!296636))))

(declare-fun bs!1277689 () Bool)

(assert (= bs!1277689 (and d!1752313 d!1752125)))

(assert (=> bs!1277689 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296777 lambda!296704))))

(assert (=> d!1752313 true))

(assert (=> d!1752313 (= (derivationStepZipper!1619 lt!2247928 (head!11832 (t!376099 s!2326))) (flatMap!1127 lt!2247928 lambda!296777))))

(declare-fun bs!1277690 () Bool)

(assert (= bs!1277690 d!1752313))

(declare-fun m!6531910 () Bool)

(assert (=> bs!1277690 m!6531910))

(assert (=> b!5528978 d!1752313))

(assert (=> b!5528978 d!1752267))

(assert (=> b!5528978 d!1752269))

(declare-fun bs!1277691 () Bool)

(declare-fun d!1752315 () Bool)

(assert (= bs!1277691 (and d!1752315 b!5529278)))

(declare-fun lambda!296778 () Int)

(assert (=> bs!1277691 (not (= lambda!296778 lambda!296702))))

(declare-fun bs!1277692 () Bool)

(assert (= bs!1277692 (and d!1752315 b!5529285)))

(assert (=> bs!1277692 (not (= lambda!296778 lambda!296706))))

(declare-fun bs!1277693 () Bool)

(assert (= bs!1277693 (and d!1752315 b!5529273)))

(assert (=> bs!1277693 (not (= lambda!296778 lambda!296699))))

(declare-fun bs!1277694 () Bool)

(assert (= bs!1277694 (and d!1752315 d!1752297)))

(assert (=> bs!1277694 (= lambda!296778 lambda!296773)))

(declare-fun bs!1277695 () Bool)

(assert (= bs!1277695 (and d!1752315 b!5529280)))

(assert (=> bs!1277695 (not (= lambda!296778 lambda!296703))))

(declare-fun bs!1277696 () Bool)

(assert (= bs!1277696 (and d!1752315 b!5529287)))

(assert (=> bs!1277696 (not (= lambda!296778 lambda!296707))))

(declare-fun bs!1277697 () Bool)

(assert (= bs!1277697 (and d!1752315 b!5529275)))

(assert (=> bs!1277697 (not (= lambda!296778 lambda!296700))))

(assert (=> d!1752315 (= (nullableZipper!1540 (derivationStepZipper!1619 lt!2247926 (h!69166 s!2326))) (exists!2148 (derivationStepZipper!1619 lt!2247926 (h!69166 s!2326)) lambda!296778))))

(declare-fun bs!1277698 () Bool)

(assert (= bs!1277698 d!1752315))

(assert (=> bs!1277698 m!6530956))

(declare-fun m!6531912 () Bool)

(assert (=> bs!1277698 m!6531912))

(assert (=> b!5529283 d!1752315))

(declare-fun d!1752317 () Bool)

(assert (=> d!1752317 (= (nullable!5548 (h!69165 (exprs!5398 lt!2247930))) (nullableFct!1672 (h!69165 (exprs!5398 lt!2247930))))))

(declare-fun bs!1277699 () Bool)

(assert (= bs!1277699 d!1752317))

(declare-fun m!6531914 () Bool)

(assert (=> bs!1277699 m!6531914))

(assert (=> b!5529151 d!1752317))

(declare-fun d!1752319 () Bool)

(declare-fun res!2354524 () Bool)

(declare-fun e!3418437 () Bool)

(assert (=> d!1752319 (=> res!2354524 e!3418437)))

(assert (=> d!1752319 (= res!2354524 (is-Nil!62719 (Cons!62719 lt!2247922 Nil!62719)))))

(assert (=> d!1752319 (= (forall!14693 (Cons!62719 lt!2247922 Nil!62719) lambda!296707) e!3418437)))

(declare-fun b!5529884 () Bool)

(declare-fun e!3418438 () Bool)

(assert (=> b!5529884 (= e!3418437 e!3418438)))

(declare-fun res!2354525 () Bool)

(assert (=> b!5529884 (=> (not res!2354525) (not e!3418438))))

(declare-fun dynLambda!24524 (Int Context!9796) Bool)

(assert (=> b!5529884 (= res!2354525 (dynLambda!24524 lambda!296707 (h!69167 (Cons!62719 lt!2247922 Nil!62719))))))

(declare-fun b!5529885 () Bool)

(assert (=> b!5529885 (= e!3418438 (forall!14693 (t!376100 (Cons!62719 lt!2247922 Nil!62719)) lambda!296707))))

(assert (= (and d!1752319 (not res!2354524)) b!5529884))

(assert (= (and b!5529884 res!2354525) b!5529885))

(declare-fun b_lambda!209853 () Bool)

(assert (=> (not b_lambda!209853) (not b!5529884)))

(declare-fun m!6531916 () Bool)

(assert (=> b!5529884 m!6531916))

(declare-fun m!6531918 () Bool)

(assert (=> b!5529885 m!6531918))

(assert (=> b!5529287 d!1752319))

(assert (=> bs!1277510 d!1752105))

(declare-fun d!1752321 () Bool)

(assert (=> d!1752321 (= (head!11832 s!2326) (h!69166 s!2326))))

(assert (=> b!5529099 d!1752321))

(declare-fun d!1752323 () Bool)

(assert (=> d!1752323 (= (isEmpty!34508 (t!376098 (unfocusZipperList!942 zl!343))) (is-Nil!62717 (t!376098 (unfocusZipperList!942 zl!343))))))

(assert (=> b!5528949 d!1752323))

(assert (=> d!1752113 d!1752109))

(declare-fun d!1752325 () Bool)

(assert (=> d!1752325 (= (flatMap!1127 z!1189 lambda!296636) (dynLambda!24521 lambda!296636 (h!69167 zl!343)))))

(assert (=> d!1752325 true))

(declare-fun _$13!2097 () Unit!155488)

(assert (=> d!1752325 (= (choose!42012 z!1189 (h!69167 zl!343) lambda!296636) _$13!2097)))

(declare-fun b_lambda!209855 () Bool)

(assert (=> (not b_lambda!209855) (not d!1752325)))

(declare-fun bs!1277700 () Bool)

(assert (= bs!1277700 d!1752325))

(assert (=> bs!1277700 m!6530942))

(assert (=> bs!1277700 m!6531338))

(assert (=> d!1752113 d!1752325))

(declare-fun d!1752327 () Bool)

(assert (=> d!1752327 (= (isDefined!12226 lt!2248045) (not (isEmpty!34512 lt!2248045)))))

(declare-fun bs!1277701 () Bool)

(assert (= bs!1277701 d!1752327))

(declare-fun m!6531920 () Bool)

(assert (=> bs!1277701 m!6531920))

(assert (=> d!1752053 d!1752327))

(declare-fun b!5529886 () Bool)

(declare-fun res!2354532 () Bool)

(declare-fun e!3418439 () Bool)

(assert (=> b!5529886 (=> (not res!2354532) (not e!3418439))))

(assert (=> b!5529886 (= res!2354532 (isEmpty!34511 (tail!10927 Nil!62718)))))

(declare-fun b!5529887 () Bool)

(declare-fun e!3418445 () Bool)

(declare-fun e!3418441 () Bool)

(assert (=> b!5529887 (= e!3418445 e!3418441)))

(declare-fun res!2354530 () Bool)

(assert (=> b!5529887 (=> (not res!2354530) (not e!3418441))))

(declare-fun lt!2248209 () Bool)

(assert (=> b!5529887 (= res!2354530 (not lt!2248209))))

(declare-fun b!5529888 () Bool)

(declare-fun e!3418444 () Bool)

(assert (=> b!5529888 (= e!3418444 (matchR!7699 (derivativeStep!4379 (regOne!31540 r!7292) (head!11832 Nil!62718)) (tail!10927 Nil!62718)))))

(declare-fun b!5529889 () Bool)

(declare-fun e!3418442 () Bool)

(assert (=> b!5529889 (= e!3418442 (not (= (head!11832 Nil!62718) (c!967395 (regOne!31540 r!7292)))))))

(declare-fun bm!410507 () Bool)

(declare-fun call!410512 () Bool)

(assert (=> bm!410507 (= call!410512 (isEmpty!34511 Nil!62718))))

(declare-fun b!5529890 () Bool)

(declare-fun res!2354526 () Bool)

(assert (=> b!5529890 (=> res!2354526 e!3418445)))

(assert (=> b!5529890 (= res!2354526 e!3418439)))

(declare-fun res!2354533 () Bool)

(assert (=> b!5529890 (=> (not res!2354533) (not e!3418439))))

(assert (=> b!5529890 (= res!2354533 lt!2248209)))

(declare-fun b!5529891 () Bool)

(assert (=> b!5529891 (= e!3418439 (= (head!11832 Nil!62718) (c!967395 (regOne!31540 r!7292))))))

(declare-fun b!5529892 () Bool)

(assert (=> b!5529892 (= e!3418441 e!3418442)))

(declare-fun res!2354531 () Bool)

(assert (=> b!5529892 (=> res!2354531 e!3418442)))

(assert (=> b!5529892 (= res!2354531 call!410512)))

(declare-fun d!1752329 () Bool)

(declare-fun e!3418440 () Bool)

(assert (=> d!1752329 e!3418440))

(declare-fun c!967698 () Bool)

(assert (=> d!1752329 (= c!967698 (is-EmptyExpr!15514 (regOne!31540 r!7292)))))

(assert (=> d!1752329 (= lt!2248209 e!3418444)))

(declare-fun c!967699 () Bool)

(assert (=> d!1752329 (= c!967699 (isEmpty!34511 Nil!62718))))

(assert (=> d!1752329 (validRegex!7250 (regOne!31540 r!7292))))

(assert (=> d!1752329 (= (matchR!7699 (regOne!31540 r!7292) Nil!62718) lt!2248209)))

(declare-fun b!5529893 () Bool)

(declare-fun e!3418443 () Bool)

(assert (=> b!5529893 (= e!3418440 e!3418443)))

(declare-fun c!967697 () Bool)

(assert (=> b!5529893 (= c!967697 (is-EmptyLang!15514 (regOne!31540 r!7292)))))

(declare-fun b!5529894 () Bool)

(declare-fun res!2354527 () Bool)

(assert (=> b!5529894 (=> res!2354527 e!3418442)))

(assert (=> b!5529894 (= res!2354527 (not (isEmpty!34511 (tail!10927 Nil!62718))))))

(declare-fun b!5529895 () Bool)

(declare-fun res!2354529 () Bool)

(assert (=> b!5529895 (=> (not res!2354529) (not e!3418439))))

(assert (=> b!5529895 (= res!2354529 (not call!410512))))

(declare-fun b!5529896 () Bool)

(assert (=> b!5529896 (= e!3418444 (nullable!5548 (regOne!31540 r!7292)))))

(declare-fun b!5529897 () Bool)

(assert (=> b!5529897 (= e!3418440 (= lt!2248209 call!410512))))

(declare-fun b!5529898 () Bool)

(assert (=> b!5529898 (= e!3418443 (not lt!2248209))))

(declare-fun b!5529899 () Bool)

(declare-fun res!2354528 () Bool)

(assert (=> b!5529899 (=> res!2354528 e!3418445)))

(assert (=> b!5529899 (= res!2354528 (not (is-ElementMatch!15514 (regOne!31540 r!7292))))))

(assert (=> b!5529899 (= e!3418443 e!3418445)))

(assert (= (and d!1752329 c!967699) b!5529896))

(assert (= (and d!1752329 (not c!967699)) b!5529888))

(assert (= (and d!1752329 c!967698) b!5529897))

(assert (= (and d!1752329 (not c!967698)) b!5529893))

(assert (= (and b!5529893 c!967697) b!5529898))

(assert (= (and b!5529893 (not c!967697)) b!5529899))

(assert (= (and b!5529899 (not res!2354528)) b!5529890))

(assert (= (and b!5529890 res!2354533) b!5529895))

(assert (= (and b!5529895 res!2354529) b!5529886))

(assert (= (and b!5529886 res!2354532) b!5529891))

(assert (= (and b!5529890 (not res!2354526)) b!5529887))

(assert (= (and b!5529887 res!2354530) b!5529892))

(assert (= (and b!5529892 (not res!2354531)) b!5529894))

(assert (= (and b!5529894 (not res!2354527)) b!5529889))

(assert (= (or b!5529897 b!5529895 b!5529892) bm!410507))

(declare-fun m!6531922 () Bool)

(assert (=> b!5529888 m!6531922))

(assert (=> b!5529888 m!6531922))

(declare-fun m!6531924 () Bool)

(assert (=> b!5529888 m!6531924))

(declare-fun m!6531926 () Bool)

(assert (=> b!5529888 m!6531926))

(assert (=> b!5529888 m!6531924))

(assert (=> b!5529888 m!6531926))

(declare-fun m!6531928 () Bool)

(assert (=> b!5529888 m!6531928))

(assert (=> b!5529896 m!6530898))

(declare-fun m!6531930 () Bool)

(assert (=> d!1752329 m!6531930))

(assert (=> d!1752329 m!6531172))

(assert (=> b!5529889 m!6531922))

(assert (=> b!5529891 m!6531922))

(assert (=> b!5529894 m!6531926))

(assert (=> b!5529894 m!6531926))

(declare-fun m!6531932 () Bool)

(assert (=> b!5529894 m!6531932))

(assert (=> bm!410507 m!6531930))

(assert (=> b!5529886 m!6531926))

(assert (=> b!5529886 m!6531926))

(assert (=> b!5529886 m!6531932))

(assert (=> d!1752053 d!1752329))

(declare-fun b!5529900 () Bool)

(declare-fun e!3418451 () Bool)

(declare-fun call!410513 () Bool)

(assert (=> b!5529900 (= e!3418451 call!410513)))

(declare-fun c!967700 () Bool)

(declare-fun bm!410508 () Bool)

(declare-fun call!410514 () Bool)

(declare-fun c!967701 () Bool)

(assert (=> bm!410508 (= call!410514 (validRegex!7250 (ite c!967701 (reg!15843 (regOne!31540 r!7292)) (ite c!967700 (regTwo!31541 (regOne!31540 r!7292)) (regTwo!31540 (regOne!31540 r!7292))))))))

(declare-fun b!5529901 () Bool)

(declare-fun e!3418452 () Bool)

(assert (=> b!5529901 (= e!3418452 call!410514)))

(declare-fun d!1752331 () Bool)

(declare-fun res!2354538 () Bool)

(declare-fun e!3418447 () Bool)

(assert (=> d!1752331 (=> res!2354538 e!3418447)))

(assert (=> d!1752331 (= res!2354538 (is-ElementMatch!15514 (regOne!31540 r!7292)))))

(assert (=> d!1752331 (= (validRegex!7250 (regOne!31540 r!7292)) e!3418447)))

(declare-fun b!5529902 () Bool)

(declare-fun e!3418450 () Bool)

(assert (=> b!5529902 (= e!3418447 e!3418450)))

(assert (=> b!5529902 (= c!967701 (is-Star!15514 (regOne!31540 r!7292)))))

(declare-fun b!5529903 () Bool)

(declare-fun e!3418446 () Bool)

(assert (=> b!5529903 (= e!3418446 call!410513)))

(declare-fun b!5529904 () Bool)

(declare-fun e!3418448 () Bool)

(assert (=> b!5529904 (= e!3418450 e!3418448)))

(assert (=> b!5529904 (= c!967700 (is-Union!15514 (regOne!31540 r!7292)))))

(declare-fun b!5529905 () Bool)

(declare-fun res!2354536 () Bool)

(declare-fun e!3418449 () Bool)

(assert (=> b!5529905 (=> res!2354536 e!3418449)))

(assert (=> b!5529905 (= res!2354536 (not (is-Concat!24359 (regOne!31540 r!7292))))))

(assert (=> b!5529905 (= e!3418448 e!3418449)))

(declare-fun b!5529906 () Bool)

(assert (=> b!5529906 (= e!3418449 e!3418451)))

(declare-fun res!2354535 () Bool)

(assert (=> b!5529906 (=> (not res!2354535) (not e!3418451))))

(declare-fun call!410515 () Bool)

(assert (=> b!5529906 (= res!2354535 call!410515)))

(declare-fun bm!410509 () Bool)

(assert (=> bm!410509 (= call!410515 (validRegex!7250 (ite c!967700 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292)))))))

(declare-fun b!5529907 () Bool)

(declare-fun res!2354537 () Bool)

(assert (=> b!5529907 (=> (not res!2354537) (not e!3418446))))

(assert (=> b!5529907 (= res!2354537 call!410515)))

(assert (=> b!5529907 (= e!3418448 e!3418446)))

(declare-fun b!5529908 () Bool)

(assert (=> b!5529908 (= e!3418450 e!3418452)))

(declare-fun res!2354534 () Bool)

(assert (=> b!5529908 (= res!2354534 (not (nullable!5548 (reg!15843 (regOne!31540 r!7292)))))))

(assert (=> b!5529908 (=> (not res!2354534) (not e!3418452))))

(declare-fun bm!410510 () Bool)

(assert (=> bm!410510 (= call!410513 call!410514)))

(assert (= (and d!1752331 (not res!2354538)) b!5529902))

(assert (= (and b!5529902 c!967701) b!5529908))

(assert (= (and b!5529902 (not c!967701)) b!5529904))

(assert (= (and b!5529908 res!2354534) b!5529901))

(assert (= (and b!5529904 c!967700) b!5529907))

(assert (= (and b!5529904 (not c!967700)) b!5529905))

(assert (= (and b!5529907 res!2354537) b!5529903))

(assert (= (and b!5529905 (not res!2354536)) b!5529906))

(assert (= (and b!5529906 res!2354535) b!5529900))

(assert (= (or b!5529903 b!5529900) bm!410510))

(assert (= (or b!5529907 b!5529906) bm!410509))

(assert (= (or b!5529901 bm!410510) bm!410508))

(declare-fun m!6531934 () Bool)

(assert (=> bm!410508 m!6531934))

(declare-fun m!6531936 () Bool)

(assert (=> bm!410509 m!6531936))

(declare-fun m!6531938 () Bool)

(assert (=> b!5529908 m!6531938))

(assert (=> d!1752053 d!1752331))

(declare-fun d!1752333 () Bool)

(assert (=> d!1752333 true))

(declare-fun setRes!36788 () Bool)

(assert (=> d!1752333 setRes!36788))

(declare-fun condSetEmpty!36788 () Bool)

(declare-fun res!2354541 () (Set Context!9796))

(assert (=> d!1752333 (= condSetEmpty!36788 (= res!2354541 (as set.empty (Set Context!9796))))))

(assert (=> d!1752333 (= (choose!42013 lt!2247909 lambda!296636) res!2354541)))

(declare-fun setIsEmpty!36788 () Bool)

(assert (=> setIsEmpty!36788 setRes!36788))

(declare-fun setNonEmpty!36788 () Bool)

(declare-fun tp!1521177 () Bool)

(declare-fun e!3418455 () Bool)

(declare-fun setElem!36788 () Context!9796)

(assert (=> setNonEmpty!36788 (= setRes!36788 (and tp!1521177 (inv!82033 setElem!36788) e!3418455))))

(declare-fun setRest!36788 () (Set Context!9796))

(assert (=> setNonEmpty!36788 (= res!2354541 (set.union (set.insert setElem!36788 (as set.empty (Set Context!9796))) setRest!36788))))

(declare-fun b!5529911 () Bool)

(declare-fun tp!1521176 () Bool)

(assert (=> b!5529911 (= e!3418455 tp!1521176)))

(assert (= (and d!1752333 condSetEmpty!36788) setIsEmpty!36788))

(assert (= (and d!1752333 (not condSetEmpty!36788)) setNonEmpty!36788))

(assert (= setNonEmpty!36788 b!5529911))

(declare-fun m!6531940 () Bool)

(assert (=> setNonEmpty!36788 m!6531940))

(assert (=> d!1752097 d!1752333))

(declare-fun d!1752335 () Bool)

(declare-fun res!2354542 () Bool)

(declare-fun e!3418456 () Bool)

(assert (=> d!1752335 (=> res!2354542 e!3418456)))

(assert (=> d!1752335 (= res!2354542 (is-Nil!62719 (Cons!62719 lt!2247930 Nil!62719)))))

(assert (=> d!1752335 (= (forall!14693 (Cons!62719 lt!2247930 Nil!62719) lambda!296700) e!3418456)))

(declare-fun b!5529912 () Bool)

(declare-fun e!3418457 () Bool)

(assert (=> b!5529912 (= e!3418456 e!3418457)))

(declare-fun res!2354543 () Bool)

(assert (=> b!5529912 (=> (not res!2354543) (not e!3418457))))

(assert (=> b!5529912 (= res!2354543 (dynLambda!24524 lambda!296700 (h!69167 (Cons!62719 lt!2247930 Nil!62719))))))

(declare-fun b!5529913 () Bool)

(assert (=> b!5529913 (= e!3418457 (forall!14693 (t!376100 (Cons!62719 lt!2247930 Nil!62719)) lambda!296700))))

(assert (= (and d!1752335 (not res!2354542)) b!5529912))

(assert (= (and b!5529912 res!2354543) b!5529913))

(declare-fun b_lambda!209857 () Bool)

(assert (=> (not b_lambda!209857) (not b!5529912)))

(declare-fun m!6531942 () Bool)

(assert (=> b!5529912 m!6531942))

(declare-fun m!6531944 () Bool)

(assert (=> b!5529913 m!6531944))

(assert (=> b!5529275 d!1752335))

(assert (=> d!1752039 d!1752295))

(declare-fun b!5529914 () Bool)

(declare-fun res!2354550 () Bool)

(declare-fun e!3418458 () Bool)

(assert (=> b!5529914 (=> (not res!2354550) (not e!3418458))))

(assert (=> b!5529914 (= res!2354550 (isEmpty!34511 (tail!10927 (tail!10927 s!2326))))))

(declare-fun b!5529915 () Bool)

(declare-fun e!3418464 () Bool)

(declare-fun e!3418460 () Bool)

(assert (=> b!5529915 (= e!3418464 e!3418460)))

(declare-fun res!2354548 () Bool)

(assert (=> b!5529915 (=> (not res!2354548) (not e!3418460))))

(declare-fun lt!2248210 () Bool)

(assert (=> b!5529915 (= res!2354548 (not lt!2248210))))

(declare-fun b!5529916 () Bool)

(declare-fun e!3418463 () Bool)

(assert (=> b!5529916 (= e!3418463 (matchR!7699 (derivativeStep!4379 (derivativeStep!4379 r!7292 (head!11832 s!2326)) (head!11832 (tail!10927 s!2326))) (tail!10927 (tail!10927 s!2326))))))

(declare-fun b!5529917 () Bool)

(declare-fun e!3418461 () Bool)

(assert (=> b!5529917 (= e!3418461 (not (= (head!11832 (tail!10927 s!2326)) (c!967395 (derivativeStep!4379 r!7292 (head!11832 s!2326))))))))

(declare-fun bm!410511 () Bool)

(declare-fun call!410516 () Bool)

(assert (=> bm!410511 (= call!410516 (isEmpty!34511 (tail!10927 s!2326)))))

(declare-fun b!5529918 () Bool)

(declare-fun res!2354544 () Bool)

(assert (=> b!5529918 (=> res!2354544 e!3418464)))

(assert (=> b!5529918 (= res!2354544 e!3418458)))

(declare-fun res!2354551 () Bool)

(assert (=> b!5529918 (=> (not res!2354551) (not e!3418458))))

(assert (=> b!5529918 (= res!2354551 lt!2248210)))

(declare-fun b!5529919 () Bool)

(assert (=> b!5529919 (= e!3418458 (= (head!11832 (tail!10927 s!2326)) (c!967395 (derivativeStep!4379 r!7292 (head!11832 s!2326)))))))

(declare-fun b!5529920 () Bool)

(assert (=> b!5529920 (= e!3418460 e!3418461)))

(declare-fun res!2354549 () Bool)

(assert (=> b!5529920 (=> res!2354549 e!3418461)))

(assert (=> b!5529920 (= res!2354549 call!410516)))

(declare-fun d!1752337 () Bool)

(declare-fun e!3418459 () Bool)

(assert (=> d!1752337 e!3418459))

(declare-fun c!967703 () Bool)

(assert (=> d!1752337 (= c!967703 (is-EmptyExpr!15514 (derivativeStep!4379 r!7292 (head!11832 s!2326))))))

(assert (=> d!1752337 (= lt!2248210 e!3418463)))

(declare-fun c!967704 () Bool)

(assert (=> d!1752337 (= c!967704 (isEmpty!34511 (tail!10927 s!2326)))))

(assert (=> d!1752337 (validRegex!7250 (derivativeStep!4379 r!7292 (head!11832 s!2326)))))

(assert (=> d!1752337 (= (matchR!7699 (derivativeStep!4379 r!7292 (head!11832 s!2326)) (tail!10927 s!2326)) lt!2248210)))

(declare-fun b!5529921 () Bool)

(declare-fun e!3418462 () Bool)

(assert (=> b!5529921 (= e!3418459 e!3418462)))

(declare-fun c!967702 () Bool)

(assert (=> b!5529921 (= c!967702 (is-EmptyLang!15514 (derivativeStep!4379 r!7292 (head!11832 s!2326))))))

(declare-fun b!5529922 () Bool)

(declare-fun res!2354545 () Bool)

(assert (=> b!5529922 (=> res!2354545 e!3418461)))

(assert (=> b!5529922 (= res!2354545 (not (isEmpty!34511 (tail!10927 (tail!10927 s!2326)))))))

(declare-fun b!5529923 () Bool)

(declare-fun res!2354547 () Bool)

(assert (=> b!5529923 (=> (not res!2354547) (not e!3418458))))

(assert (=> b!5529923 (= res!2354547 (not call!410516))))

(declare-fun b!5529924 () Bool)

(assert (=> b!5529924 (= e!3418463 (nullable!5548 (derivativeStep!4379 r!7292 (head!11832 s!2326))))))

(declare-fun b!5529925 () Bool)

(assert (=> b!5529925 (= e!3418459 (= lt!2248210 call!410516))))

(declare-fun b!5529926 () Bool)

(assert (=> b!5529926 (= e!3418462 (not lt!2248210))))

(declare-fun b!5529927 () Bool)

(declare-fun res!2354546 () Bool)

(assert (=> b!5529927 (=> res!2354546 e!3418464)))

(assert (=> b!5529927 (= res!2354546 (not (is-ElementMatch!15514 (derivativeStep!4379 r!7292 (head!11832 s!2326)))))))

(assert (=> b!5529927 (= e!3418462 e!3418464)))

(assert (= (and d!1752337 c!967704) b!5529924))

(assert (= (and d!1752337 (not c!967704)) b!5529916))

(assert (= (and d!1752337 c!967703) b!5529925))

(assert (= (and d!1752337 (not c!967703)) b!5529921))

(assert (= (and b!5529921 c!967702) b!5529926))

(assert (= (and b!5529921 (not c!967702)) b!5529927))

(assert (= (and b!5529927 (not res!2354546)) b!5529918))

(assert (= (and b!5529918 res!2354551) b!5529923))

(assert (= (and b!5529923 res!2354547) b!5529914))

(assert (= (and b!5529914 res!2354550) b!5529919))

(assert (= (and b!5529918 (not res!2354544)) b!5529915))

(assert (= (and b!5529915 res!2354548) b!5529920))

(assert (= (and b!5529920 (not res!2354549)) b!5529922))

(assert (= (and b!5529922 (not res!2354545)) b!5529917))

(assert (= (or b!5529925 b!5529923 b!5529920) bm!410511))

(assert (=> b!5529916 m!6531112))

(declare-fun m!6531946 () Bool)

(assert (=> b!5529916 m!6531946))

(assert (=> b!5529916 m!6531204))

(assert (=> b!5529916 m!6531946))

(declare-fun m!6531948 () Bool)

(assert (=> b!5529916 m!6531948))

(assert (=> b!5529916 m!6531112))

(declare-fun m!6531950 () Bool)

(assert (=> b!5529916 m!6531950))

(assert (=> b!5529916 m!6531948))

(assert (=> b!5529916 m!6531950))

(declare-fun m!6531952 () Bool)

(assert (=> b!5529916 m!6531952))

(assert (=> b!5529924 m!6531204))

(declare-fun m!6531954 () Bool)

(assert (=> b!5529924 m!6531954))

(assert (=> d!1752337 m!6531112))

(assert (=> d!1752337 m!6531210))

(assert (=> d!1752337 m!6531204))

(declare-fun m!6531956 () Bool)

(assert (=> d!1752337 m!6531956))

(assert (=> b!5529917 m!6531112))

(assert (=> b!5529917 m!6531946))

(assert (=> b!5529919 m!6531112))

(assert (=> b!5529919 m!6531946))

(assert (=> b!5529922 m!6531112))

(assert (=> b!5529922 m!6531950))

(assert (=> b!5529922 m!6531950))

(declare-fun m!6531958 () Bool)

(assert (=> b!5529922 m!6531958))

(assert (=> bm!410511 m!6531112))

(assert (=> bm!410511 m!6531210))

(assert (=> b!5529914 m!6531112))

(assert (=> b!5529914 m!6531950))

(assert (=> b!5529914 m!6531950))

(assert (=> b!5529914 m!6531958))

(assert (=> b!5529096 d!1752337))

(declare-fun bm!410520 () Bool)

(declare-fun call!410525 () Regex!15514)

(declare-fun call!410526 () Regex!15514)

(assert (=> bm!410520 (= call!410525 call!410526)))

(declare-fun b!5529948 () Bool)

(declare-fun e!3418479 () Regex!15514)

(declare-fun e!3418475 () Regex!15514)

(assert (=> b!5529948 (= e!3418479 e!3418475)))

(declare-fun c!967716 () Bool)

(assert (=> b!5529948 (= c!967716 (is-ElementMatch!15514 r!7292))))

(declare-fun b!5529949 () Bool)

(assert (=> b!5529949 (= e!3418479 EmptyLang!15514)))

(declare-fun c!967719 () Bool)

(declare-fun bm!410521 () Bool)

(declare-fun call!410527 () Regex!15514)

(assert (=> bm!410521 (= call!410527 (derivativeStep!4379 (ite c!967719 (regOne!31541 r!7292) (regOne!31540 r!7292)) (head!11832 s!2326)))))

(declare-fun b!5529950 () Bool)

(declare-fun c!967718 () Bool)

(assert (=> b!5529950 (= c!967718 (nullable!5548 (regOne!31540 r!7292)))))

(declare-fun e!3418477 () Regex!15514)

(declare-fun e!3418476 () Regex!15514)

(assert (=> b!5529950 (= e!3418477 e!3418476)))

(declare-fun b!5529951 () Bool)

(assert (=> b!5529951 (= e!3418476 (Union!15514 (Concat!24359 call!410527 (regTwo!31540 r!7292)) call!410525))))

(declare-fun d!1752339 () Bool)

(declare-fun lt!2248213 () Regex!15514)

(assert (=> d!1752339 (validRegex!7250 lt!2248213)))

(assert (=> d!1752339 (= lt!2248213 e!3418479)))

(declare-fun c!967715 () Bool)

(assert (=> d!1752339 (= c!967715 (or (is-EmptyExpr!15514 r!7292) (is-EmptyLang!15514 r!7292)))))

(assert (=> d!1752339 (validRegex!7250 r!7292)))

(assert (=> d!1752339 (= (derivativeStep!4379 r!7292 (head!11832 s!2326)) lt!2248213)))

(declare-fun bm!410522 () Bool)

(declare-fun call!410528 () Regex!15514)

(assert (=> bm!410522 (= call!410526 call!410528)))

(declare-fun b!5529952 () Bool)

(assert (=> b!5529952 (= e!3418477 (Concat!24359 call!410526 r!7292))))

(declare-fun c!967717 () Bool)

(declare-fun bm!410523 () Bool)

(assert (=> bm!410523 (= call!410528 (derivativeStep!4379 (ite c!967719 (regTwo!31541 r!7292) (ite c!967717 (reg!15843 r!7292) (ite c!967718 (regTwo!31540 r!7292) (regOne!31540 r!7292)))) (head!11832 s!2326)))))

(declare-fun b!5529953 () Bool)

(declare-fun e!3418478 () Regex!15514)

(assert (=> b!5529953 (= e!3418478 (Union!15514 call!410527 call!410528))))

(declare-fun b!5529954 () Bool)

(assert (=> b!5529954 (= c!967719 (is-Union!15514 r!7292))))

(assert (=> b!5529954 (= e!3418475 e!3418478)))

(declare-fun b!5529955 () Bool)

(assert (=> b!5529955 (= e!3418476 (Union!15514 (Concat!24359 call!410525 (regTwo!31540 r!7292)) EmptyLang!15514))))

(declare-fun b!5529956 () Bool)

(assert (=> b!5529956 (= e!3418475 (ite (= (head!11832 s!2326) (c!967395 r!7292)) EmptyExpr!15514 EmptyLang!15514))))

(declare-fun b!5529957 () Bool)

(assert (=> b!5529957 (= e!3418478 e!3418477)))

(assert (=> b!5529957 (= c!967717 (is-Star!15514 r!7292))))

(assert (= (and d!1752339 c!967715) b!5529949))

(assert (= (and d!1752339 (not c!967715)) b!5529948))

(assert (= (and b!5529948 c!967716) b!5529956))

(assert (= (and b!5529948 (not c!967716)) b!5529954))

(assert (= (and b!5529954 c!967719) b!5529953))

(assert (= (and b!5529954 (not c!967719)) b!5529957))

(assert (= (and b!5529957 c!967717) b!5529952))

(assert (= (and b!5529957 (not c!967717)) b!5529950))

(assert (= (and b!5529950 c!967718) b!5529951))

(assert (= (and b!5529950 (not c!967718)) b!5529955))

(assert (= (or b!5529951 b!5529955) bm!410520))

(assert (= (or b!5529952 bm!410520) bm!410522))

(assert (= (or b!5529953 bm!410522) bm!410523))

(assert (= (or b!5529953 b!5529951) bm!410521))

(assert (=> bm!410521 m!6531108))

(declare-fun m!6531960 () Bool)

(assert (=> bm!410521 m!6531960))

(assert (=> b!5529950 m!6530898))

(declare-fun m!6531962 () Bool)

(assert (=> d!1752339 m!6531962))

(assert (=> d!1752339 m!6530948))

(assert (=> bm!410523 m!6531108))

(declare-fun m!6531964 () Bool)

(assert (=> bm!410523 m!6531964))

(assert (=> b!5529096 d!1752339))

(assert (=> b!5529096 d!1752321))

(assert (=> b!5529096 d!1752273))

(assert (=> b!5529134 d!1752091))

(declare-fun d!1752341 () Bool)

(assert (=> d!1752341 (= (isConcat!609 lt!2248081) (is-Concat!24359 lt!2248081))))

(assert (=> b!5529196 d!1752341))

(assert (=> d!1752101 d!1752095))

(declare-fun d!1752343 () Bool)

(assert (=> d!1752343 (= (flatMap!1127 lt!2247926 lambda!296636) (dynLambda!24521 lambda!296636 lt!2247908))))

(assert (=> d!1752343 true))

(declare-fun _$13!2098 () Unit!155488)

(assert (=> d!1752343 (= (choose!42012 lt!2247926 lt!2247908 lambda!296636) _$13!2098)))

(declare-fun b_lambda!209859 () Bool)

(assert (=> (not b_lambda!209859) (not d!1752343)))

(declare-fun bs!1277702 () Bool)

(assert (= bs!1277702 d!1752343))

(assert (=> bs!1277702 m!6530886))

(assert (=> bs!1277702 m!6531308))

(assert (=> d!1752101 d!1752343))

(declare-fun d!1752345 () Bool)

(declare-fun res!2354552 () Bool)

(declare-fun e!3418480 () Bool)

(assert (=> d!1752345 (=> res!2354552 e!3418480)))

(assert (=> d!1752345 (= res!2354552 (is-Nil!62717 (exprs!5398 lt!2247908)))))

(assert (=> d!1752345 (= (forall!14692 (exprs!5398 lt!2247908) lambda!296684) e!3418480)))

(declare-fun b!5529958 () Bool)

(declare-fun e!3418481 () Bool)

(assert (=> b!5529958 (= e!3418480 e!3418481)))

(declare-fun res!2354553 () Bool)

(assert (=> b!5529958 (=> (not res!2354553) (not e!3418481))))

(assert (=> b!5529958 (= res!2354553 (dynLambda!24523 lambda!296684 (h!69165 (exprs!5398 lt!2247908))))))

(declare-fun b!5529959 () Bool)

(assert (=> b!5529959 (= e!3418481 (forall!14692 (t!376098 (exprs!5398 lt!2247908)) lambda!296684))))

(assert (= (and d!1752345 (not res!2354552)) b!5529958))

(assert (= (and b!5529958 res!2354553) b!5529959))

(declare-fun b_lambda!209861 () Bool)

(assert (=> (not b_lambda!209861) (not b!5529958)))

(declare-fun m!6531966 () Bool)

(assert (=> b!5529958 m!6531966))

(declare-fun m!6531968 () Bool)

(assert (=> b!5529959 m!6531968))

(assert (=> b!5529169 d!1752345))

(declare-fun d!1752347 () Bool)

(assert (=> d!1752347 true))

(assert (=> d!1752347 true))

(declare-fun res!2354556 () Bool)

(assert (=> d!1752347 (= (choose!42008 lambda!296634) res!2354556)))

(assert (=> d!1752055 d!1752347))

(declare-fun bs!1277703 () Bool)

(declare-fun d!1752349 () Bool)

(assert (= bs!1277703 (and d!1752349 d!1752257)))

(declare-fun lambda!296779 () Int)

(assert (=> bs!1277703 (= lambda!296779 lambda!296768)))

(declare-fun bs!1277704 () Bool)

(assert (= bs!1277704 (and d!1752349 b!5529288)))

(assert (=> bs!1277704 (not (= lambda!296779 lambda!296708))))

(declare-fun bs!1277705 () Bool)

(assert (= bs!1277705 (and d!1752349 b!5529167)))

(assert (=> bs!1277705 (not (= lambda!296779 lambda!296683))))

(declare-fun bs!1277706 () Bool)

(assert (= bs!1277706 (and d!1752349 d!1752031)))

(assert (=> bs!1277706 (= lambda!296779 lambda!296657)))

(declare-fun bs!1277707 () Bool)

(assert (= bs!1277707 (and d!1752349 b!5529162)))

(assert (=> bs!1277707 (not (= lambda!296779 lambda!296681))))

(declare-fun bs!1277708 () Bool)

(assert (= bs!1277708 (and d!1752349 d!1752277)))

(assert (=> bs!1277708 (= lambda!296779 lambda!296770)))

(declare-fun bs!1277709 () Bool)

(assert (= bs!1277709 (and d!1752349 d!1752115)))

(assert (=> bs!1277709 (= lambda!296779 lambda!296691)))

(declare-fun bs!1277710 () Bool)

(assert (= bs!1277710 (and d!1752349 d!1752085)))

(assert (=> bs!1277710 (= lambda!296779 lambda!296690)))

(declare-fun bs!1277711 () Bool)

(assert (= bs!1277711 (and d!1752349 b!5529169)))

(assert (=> bs!1277711 (not (= lambda!296779 lambda!296684))))

(declare-fun bs!1277712 () Bool)

(assert (= bs!1277712 (and d!1752349 b!5529164)))

(assert (=> bs!1277712 (not (= lambda!296779 lambda!296682))))

(declare-fun bs!1277713 () Bool)

(assert (= bs!1277713 (and d!1752349 b!5529290)))

(assert (=> bs!1277713 (not (= lambda!296779 lambda!296709))))

(declare-fun bs!1277714 () Bool)

(assert (= bs!1277714 (and d!1752349 d!1752029)))

(assert (=> bs!1277714 (= lambda!296779 lambda!296654)))

(declare-fun bs!1277715 () Bool)

(assert (= bs!1277715 (and d!1752349 d!1752299)))

(assert (=> bs!1277715 (= lambda!296779 lambda!296774)))

(declare-fun bs!1277716 () Bool)

(assert (= bs!1277716 (and d!1752349 d!1752083)))

(assert (=> bs!1277716 (= lambda!296779 lambda!296687)))

(declare-fun b!5529960 () Bool)

(declare-fun e!3418484 () Regex!15514)

(assert (=> b!5529960 (= e!3418484 EmptyExpr!15514)))

(declare-fun b!5529961 () Bool)

(declare-fun e!3418482 () Bool)

(declare-fun e!3418486 () Bool)

(assert (=> b!5529961 (= e!3418482 e!3418486)))

(declare-fun c!967721 () Bool)

(assert (=> b!5529961 (= c!967721 (isEmpty!34508 (tail!10926 (t!376098 (exprs!5398 (h!69167 zl!343))))))))

(declare-fun e!3418485 () Bool)

(assert (=> d!1752349 e!3418485))

(declare-fun res!2354558 () Bool)

(assert (=> d!1752349 (=> (not res!2354558) (not e!3418485))))

(declare-fun lt!2248214 () Regex!15514)

(assert (=> d!1752349 (= res!2354558 (validRegex!7250 lt!2248214))))

(declare-fun e!3418483 () Regex!15514)

(assert (=> d!1752349 (= lt!2248214 e!3418483)))

(declare-fun c!967722 () Bool)

(declare-fun e!3418487 () Bool)

(assert (=> d!1752349 (= c!967722 e!3418487)))

(declare-fun res!2354557 () Bool)

(assert (=> d!1752349 (=> (not res!2354557) (not e!3418487))))

(assert (=> d!1752349 (= res!2354557 (is-Cons!62717 (t!376098 (exprs!5398 (h!69167 zl!343)))))))

(assert (=> d!1752349 (forall!14692 (t!376098 (exprs!5398 (h!69167 zl!343))) lambda!296779)))

(assert (=> d!1752349 (= (generalisedConcat!1129 (t!376098 (exprs!5398 (h!69167 zl!343)))) lt!2248214)))

(declare-fun b!5529962 () Bool)

(assert (=> b!5529962 (= e!3418484 (Concat!24359 (h!69165 (t!376098 (exprs!5398 (h!69167 zl!343)))) (generalisedConcat!1129 (t!376098 (t!376098 (exprs!5398 (h!69167 zl!343)))))))))

(declare-fun b!5529963 () Bool)

(assert (=> b!5529963 (= e!3418483 (h!69165 (t!376098 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun b!5529964 () Bool)

(assert (=> b!5529964 (= e!3418486 (= lt!2248214 (head!11831 (t!376098 (exprs!5398 (h!69167 zl!343))))))))

(declare-fun b!5529965 () Bool)

(assert (=> b!5529965 (= e!3418487 (isEmpty!34508 (t!376098 (t!376098 (exprs!5398 (h!69167 zl!343))))))))

(declare-fun b!5529966 () Bool)

(assert (=> b!5529966 (= e!3418486 (isConcat!609 lt!2248214))))

(declare-fun b!5529967 () Bool)

(assert (=> b!5529967 (= e!3418482 (isEmptyExpr!1086 lt!2248214))))

(declare-fun b!5529968 () Bool)

(assert (=> b!5529968 (= e!3418483 e!3418484)))

(declare-fun c!967723 () Bool)

(assert (=> b!5529968 (= c!967723 (is-Cons!62717 (t!376098 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun b!5529969 () Bool)

(assert (=> b!5529969 (= e!3418485 e!3418482)))

(declare-fun c!967720 () Bool)

(assert (=> b!5529969 (= c!967720 (isEmpty!34508 (t!376098 (exprs!5398 (h!69167 zl!343)))))))

(assert (= (and d!1752349 res!2354557) b!5529965))

(assert (= (and d!1752349 c!967722) b!5529963))

(assert (= (and d!1752349 (not c!967722)) b!5529968))

(assert (= (and b!5529968 c!967723) b!5529962))

(assert (= (and b!5529968 (not c!967723)) b!5529960))

(assert (= (and d!1752349 res!2354558) b!5529969))

(assert (= (and b!5529969 c!967720) b!5529967))

(assert (= (and b!5529969 (not c!967720)) b!5529961))

(assert (= (and b!5529961 c!967721) b!5529964))

(assert (= (and b!5529961 (not c!967721)) b!5529966))

(declare-fun m!6531970 () Bool)

(assert (=> b!5529966 m!6531970))

(declare-fun m!6531972 () Bool)

(assert (=> d!1752349 m!6531972))

(declare-fun m!6531974 () Bool)

(assert (=> d!1752349 m!6531974))

(declare-fun m!6531976 () Bool)

(assert (=> b!5529967 m!6531976))

(assert (=> b!5529969 m!6530870))

(declare-fun m!6531978 () Bool)

(assert (=> b!5529965 m!6531978))

(declare-fun m!6531980 () Bool)

(assert (=> b!5529962 m!6531980))

(declare-fun m!6531982 () Bool)

(assert (=> b!5529964 m!6531982))

(declare-fun m!6531984 () Bool)

(assert (=> b!5529961 m!6531984))

(assert (=> b!5529961 m!6531984))

(declare-fun m!6531986 () Bool)

(assert (=> b!5529961 m!6531986))

(assert (=> b!5529192 d!1752349))

(declare-fun d!1752351 () Bool)

(declare-fun res!2354559 () Bool)

(declare-fun e!3418488 () Bool)

(assert (=> d!1752351 (=> res!2354559 e!3418488)))

(assert (=> d!1752351 (= res!2354559 (is-Nil!62717 (exprs!5398 setElem!36776)))))

(assert (=> d!1752351 (= (forall!14692 (exprs!5398 setElem!36776) lambda!296691) e!3418488)))

(declare-fun b!5529970 () Bool)

(declare-fun e!3418489 () Bool)

(assert (=> b!5529970 (= e!3418488 e!3418489)))

(declare-fun res!2354560 () Bool)

(assert (=> b!5529970 (=> (not res!2354560) (not e!3418489))))

(assert (=> b!5529970 (= res!2354560 (dynLambda!24523 lambda!296691 (h!69165 (exprs!5398 setElem!36776))))))

(declare-fun b!5529971 () Bool)

(assert (=> b!5529971 (= e!3418489 (forall!14692 (t!376098 (exprs!5398 setElem!36776)) lambda!296691))))

(assert (= (and d!1752351 (not res!2354559)) b!5529970))

(assert (= (and b!5529970 res!2354560) b!5529971))

(declare-fun b_lambda!209863 () Bool)

(assert (=> (not b_lambda!209863) (not b!5529970)))

(declare-fun m!6531988 () Bool)

(assert (=> b!5529970 m!6531988))

(declare-fun m!6531990 () Bool)

(assert (=> b!5529971 m!6531990))

(assert (=> d!1752115 d!1752351))

(declare-fun bs!1277717 () Bool)

(declare-fun b!5529978 () Bool)

(assert (= bs!1277717 (and b!5529978 d!1752059)))

(declare-fun lambda!296780 () Int)

(assert (=> bs!1277717 (not (= lambda!296780 lambda!296669))))

(declare-fun bs!1277718 () Bool)

(assert (= bs!1277718 (and b!5529978 b!5529862)))

(assert (=> bs!1277718 (= (and (= (reg!15843 (regOne!31541 r!7292)) (reg!15843 (regTwo!31541 r!7292))) (= (regOne!31541 r!7292) (regTwo!31541 r!7292))) (= lambda!296780 lambda!296775))))

(declare-fun bs!1277719 () Bool)

(assert (= bs!1277719 (and b!5529978 b!5529061)))

(assert (=> bs!1277719 (= (and (= (reg!15843 (regOne!31541 r!7292)) (reg!15843 r!7292)) (= (regOne!31541 r!7292) r!7292)) (= lambda!296780 lambda!296674))))

(declare-fun bs!1277720 () Bool)

(assert (= bs!1277720 (and b!5529978 b!5529864)))

(assert (=> bs!1277720 (not (= lambda!296780 lambda!296776))))

(declare-fun bs!1277721 () Bool)

(assert (= bs!1277721 (and b!5529978 b!5528804)))

(assert (=> bs!1277721 (not (= lambda!296780 lambda!296635))))

(declare-fun bs!1277722 () Bool)

(assert (= bs!1277722 (and b!5529978 b!5529063)))

(assert (=> bs!1277722 (not (= lambda!296780 lambda!296675))))

(assert (=> bs!1277721 (not (= lambda!296780 lambda!296634))))

(assert (=> bs!1277717 (not (= lambda!296780 lambda!296668))))

(declare-fun bs!1277723 () Bool)

(assert (= bs!1277723 (and b!5529978 d!1752057)))

(assert (=> bs!1277723 (not (= lambda!296780 lambda!296663))))

(assert (=> b!5529978 true))

(assert (=> b!5529978 true))

(declare-fun bs!1277724 () Bool)

(declare-fun b!5529980 () Bool)

(assert (= bs!1277724 (and b!5529980 d!1752059)))

(declare-fun lambda!296781 () Int)

(assert (=> bs!1277724 (= (and (= (regOne!31540 (regOne!31541 r!7292)) (regOne!31540 r!7292)) (= (regTwo!31540 (regOne!31541 r!7292)) (regTwo!31540 r!7292))) (= lambda!296781 lambda!296669))))

(declare-fun bs!1277725 () Bool)

(assert (= bs!1277725 (and b!5529980 b!5529862)))

(assert (=> bs!1277725 (not (= lambda!296781 lambda!296775))))

(declare-fun bs!1277726 () Bool)

(assert (= bs!1277726 (and b!5529980 b!5529061)))

(assert (=> bs!1277726 (not (= lambda!296781 lambda!296674))))

(declare-fun bs!1277727 () Bool)

(assert (= bs!1277727 (and b!5529980 b!5529864)))

(assert (=> bs!1277727 (= (and (= (regOne!31540 (regOne!31541 r!7292)) (regOne!31540 (regTwo!31541 r!7292))) (= (regTwo!31540 (regOne!31541 r!7292)) (regTwo!31540 (regTwo!31541 r!7292)))) (= lambda!296781 lambda!296776))))

(declare-fun bs!1277728 () Bool)

(assert (= bs!1277728 (and b!5529980 b!5528804)))

(assert (=> bs!1277728 (= (and (= (regOne!31540 (regOne!31541 r!7292)) (regOne!31540 r!7292)) (= (regTwo!31540 (regOne!31541 r!7292)) (regTwo!31540 r!7292))) (= lambda!296781 lambda!296635))))

(declare-fun bs!1277729 () Bool)

(assert (= bs!1277729 (and b!5529980 b!5529978)))

(assert (=> bs!1277729 (not (= lambda!296781 lambda!296780))))

(declare-fun bs!1277730 () Bool)

(assert (= bs!1277730 (and b!5529980 b!5529063)))

(assert (=> bs!1277730 (= (and (= (regOne!31540 (regOne!31541 r!7292)) (regOne!31540 r!7292)) (= (regTwo!31540 (regOne!31541 r!7292)) (regTwo!31540 r!7292))) (= lambda!296781 lambda!296675))))

(assert (=> bs!1277728 (not (= lambda!296781 lambda!296634))))

(assert (=> bs!1277724 (not (= lambda!296781 lambda!296668))))

(declare-fun bs!1277731 () Bool)

(assert (= bs!1277731 (and b!5529980 d!1752057)))

(assert (=> bs!1277731 (not (= lambda!296781 lambda!296663))))

(assert (=> b!5529980 true))

(assert (=> b!5529980 true))

(declare-fun b!5529972 () Bool)

(declare-fun e!3418493 () Bool)

(declare-fun e!3418495 () Bool)

(assert (=> b!5529972 (= e!3418493 e!3418495)))

(declare-fun c!967725 () Bool)

(assert (=> b!5529972 (= c!967725 (is-Star!15514 (regOne!31541 r!7292)))))

(declare-fun bm!410524 () Bool)

(declare-fun call!410529 () Bool)

(assert (=> bm!410524 (= call!410529 (isEmpty!34511 s!2326))))

(declare-fun b!5529973 () Bool)

(declare-fun e!3418491 () Bool)

(assert (=> b!5529973 (= e!3418491 (= s!2326 (Cons!62718 (c!967395 (regOne!31541 r!7292)) Nil!62718)))))

(declare-fun d!1752353 () Bool)

(declare-fun c!967724 () Bool)

(assert (=> d!1752353 (= c!967724 (is-EmptyExpr!15514 (regOne!31541 r!7292)))))

(declare-fun e!3418494 () Bool)

(assert (=> d!1752353 (= (matchRSpec!2617 (regOne!31541 r!7292) s!2326) e!3418494)))

(declare-fun b!5529974 () Bool)

(declare-fun e!3418492 () Bool)

(assert (=> b!5529974 (= e!3418493 e!3418492)))

(declare-fun res!2354562 () Bool)

(assert (=> b!5529974 (= res!2354562 (matchRSpec!2617 (regOne!31541 (regOne!31541 r!7292)) s!2326))))

(assert (=> b!5529974 (=> res!2354562 e!3418492)))

(declare-fun bm!410525 () Bool)

(declare-fun call!410530 () Bool)

(assert (=> bm!410525 (= call!410530 (Exists!2614 (ite c!967725 lambda!296780 lambda!296781)))))

(declare-fun b!5529975 () Bool)

(declare-fun res!2354563 () Bool)

(declare-fun e!3418490 () Bool)

(assert (=> b!5529975 (=> res!2354563 e!3418490)))

(assert (=> b!5529975 (= res!2354563 call!410529)))

(assert (=> b!5529975 (= e!3418495 e!3418490)))

(declare-fun b!5529976 () Bool)

(assert (=> b!5529976 (= e!3418492 (matchRSpec!2617 (regTwo!31541 (regOne!31541 r!7292)) s!2326))))

(declare-fun b!5529977 () Bool)

(declare-fun c!967726 () Bool)

(assert (=> b!5529977 (= c!967726 (is-ElementMatch!15514 (regOne!31541 r!7292)))))

(declare-fun e!3418496 () Bool)

(assert (=> b!5529977 (= e!3418496 e!3418491)))

(assert (=> b!5529978 (= e!3418490 call!410530)))

(declare-fun b!5529979 () Bool)

(declare-fun c!967727 () Bool)

(assert (=> b!5529979 (= c!967727 (is-Union!15514 (regOne!31541 r!7292)))))

(assert (=> b!5529979 (= e!3418491 e!3418493)))

(assert (=> b!5529980 (= e!3418495 call!410530)))

(declare-fun b!5529981 () Bool)

(assert (=> b!5529981 (= e!3418494 call!410529)))

(declare-fun b!5529982 () Bool)

(assert (=> b!5529982 (= e!3418494 e!3418496)))

(declare-fun res!2354561 () Bool)

(assert (=> b!5529982 (= res!2354561 (not (is-EmptyLang!15514 (regOne!31541 r!7292))))))

(assert (=> b!5529982 (=> (not res!2354561) (not e!3418496))))

(assert (= (and d!1752353 c!967724) b!5529981))

(assert (= (and d!1752353 (not c!967724)) b!5529982))

(assert (= (and b!5529982 res!2354561) b!5529977))

(assert (= (and b!5529977 c!967726) b!5529973))

(assert (= (and b!5529977 (not c!967726)) b!5529979))

(assert (= (and b!5529979 c!967727) b!5529974))

(assert (= (and b!5529979 (not c!967727)) b!5529972))

(assert (= (and b!5529974 (not res!2354562)) b!5529976))

(assert (= (and b!5529972 c!967725) b!5529975))

(assert (= (and b!5529972 (not c!967725)) b!5529980))

(assert (= (and b!5529975 (not res!2354563)) b!5529978))

(assert (= (or b!5529978 b!5529980) bm!410525))

(assert (= (or b!5529981 b!5529975) bm!410524))

(assert (=> bm!410524 m!6531104))

(declare-fun m!6531992 () Bool)

(assert (=> b!5529974 m!6531992))

(declare-fun m!6531994 () Bool)

(assert (=> bm!410525 m!6531994))

(declare-fun m!6531996 () Bool)

(assert (=> b!5529976 m!6531996))

(assert (=> b!5529057 d!1752353))

(declare-fun d!1752355 () Bool)

(assert (=> d!1752355 true))

(declare-fun setRes!36789 () Bool)

(assert (=> d!1752355 setRes!36789))

(declare-fun condSetEmpty!36789 () Bool)

(declare-fun res!2354564 () (Set Context!9796))

(assert (=> d!1752355 (= condSetEmpty!36789 (= res!2354564 (as set.empty (Set Context!9796))))))

(assert (=> d!1752355 (= (choose!42013 lt!2247926 lambda!296636) res!2354564)))

(declare-fun setIsEmpty!36789 () Bool)

(assert (=> setIsEmpty!36789 setRes!36789))

(declare-fun e!3418497 () Bool)

(declare-fun setElem!36789 () Context!9796)

(declare-fun setNonEmpty!36789 () Bool)

(declare-fun tp!1521179 () Bool)

(assert (=> setNonEmpty!36789 (= setRes!36789 (and tp!1521179 (inv!82033 setElem!36789) e!3418497))))

(declare-fun setRest!36789 () (Set Context!9796))

(assert (=> setNonEmpty!36789 (= res!2354564 (set.union (set.insert setElem!36789 (as set.empty (Set Context!9796))) setRest!36789))))

(declare-fun b!5529983 () Bool)

(declare-fun tp!1521178 () Bool)

(assert (=> b!5529983 (= e!3418497 tp!1521178)))

(assert (= (and d!1752355 condSetEmpty!36789) setIsEmpty!36789))

(assert (= (and d!1752355 (not condSetEmpty!36789)) setNonEmpty!36789))

(assert (= setNonEmpty!36789 b!5529983))

(declare-fun m!6531998 () Bool)

(assert (=> setNonEmpty!36789 m!6531998))

(assert (=> d!1752095 d!1752355))

(declare-fun bs!1277732 () Bool)

(declare-fun d!1752357 () Bool)

(assert (= bs!1277732 (and d!1752357 b!5529278)))

(declare-fun lambda!296782 () Int)

(assert (=> bs!1277732 (not (= lambda!296782 lambda!296702))))

(declare-fun bs!1277733 () Bool)

(assert (= bs!1277733 (and d!1752357 b!5529273)))

(assert (=> bs!1277733 (not (= lambda!296782 lambda!296699))))

(declare-fun bs!1277734 () Bool)

(assert (= bs!1277734 (and d!1752357 d!1752297)))

(assert (=> bs!1277734 (= lambda!296782 lambda!296773)))

(declare-fun bs!1277735 () Bool)

(assert (= bs!1277735 (and d!1752357 b!5529280)))

(assert (=> bs!1277735 (not (= lambda!296782 lambda!296703))))

(declare-fun bs!1277736 () Bool)

(assert (= bs!1277736 (and d!1752357 b!5529285)))

(assert (=> bs!1277736 (not (= lambda!296782 lambda!296706))))

(declare-fun bs!1277737 () Bool)

(assert (= bs!1277737 (and d!1752357 d!1752315)))

(assert (=> bs!1277737 (= lambda!296782 lambda!296778)))

(declare-fun bs!1277738 () Bool)

(assert (= bs!1277738 (and d!1752357 b!5529287)))

(assert (=> bs!1277738 (not (= lambda!296782 lambda!296707))))

(declare-fun bs!1277739 () Bool)

(assert (= bs!1277739 (and d!1752357 b!5529275)))

(assert (=> bs!1277739 (not (= lambda!296782 lambda!296700))))

(assert (=> d!1752357 (= (nullableZipper!1540 lt!2247909) (exists!2148 lt!2247909 lambda!296782))))

(declare-fun bs!1277740 () Bool)

(assert (= bs!1277740 d!1752357))

(declare-fun m!6532000 () Bool)

(assert (=> bs!1277740 m!6532000))

(assert (=> b!5528967 d!1752357))

(declare-fun call!410533 () List!62841)

(declare-fun c!967728 () Bool)

(declare-fun c!967731 () Bool)

(declare-fun bm!410526 () Bool)

(assert (=> bm!410526 (= call!410533 ($colon$colon!1593 (exprs!5398 (ite c!967467 lt!2247927 (Context!9797 call!410399))) (ite (or c!967728 c!967731) (regTwo!31540 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292))) (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292)))))))

(declare-fun bm!410527 () Bool)

(declare-fun call!410532 () (Set Context!9796))

(declare-fun call!410536 () (Set Context!9796))

(assert (=> bm!410527 (= call!410532 call!410536)))

(declare-fun b!5529984 () Bool)

(declare-fun e!3418499 () (Set Context!9796))

(assert (=> b!5529984 (= e!3418499 call!410532)))

(declare-fun b!5529985 () Bool)

(declare-fun e!3418502 () (Set Context!9796))

(declare-fun e!3418498 () (Set Context!9796))

(assert (=> b!5529985 (= e!3418502 e!3418498)))

(declare-fun c!967729 () Bool)

(assert (=> b!5529985 (= c!967729 (is-Union!15514 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292))))))

(declare-fun b!5529986 () Bool)

(assert (=> b!5529986 (= e!3418502 (set.insert (ite c!967467 lt!2247927 (Context!9797 call!410399)) (as set.empty (Set Context!9796))))))

(declare-fun b!5529988 () Bool)

(declare-fun e!3418503 () Bool)

(assert (=> b!5529988 (= e!3418503 (nullable!5548 (regOne!31540 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292)))))))

(declare-fun b!5529989 () Bool)

(declare-fun call!410531 () (Set Context!9796))

(declare-fun call!410535 () (Set Context!9796))

(assert (=> b!5529989 (= e!3418498 (set.union call!410531 call!410535))))

(declare-fun bm!410528 () Bool)

(declare-fun call!410534 () List!62841)

(assert (=> bm!410528 (= call!410534 call!410533)))

(declare-fun b!5529990 () Bool)

(declare-fun c!967730 () Bool)

(assert (=> b!5529990 (= c!967730 (is-Star!15514 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292))))))

(declare-fun e!3418501 () (Set Context!9796))

(assert (=> b!5529990 (= e!3418499 e!3418501)))

(declare-fun bm!410529 () Bool)

(assert (=> bm!410529 (= call!410531 (derivationStepZipperDown!856 (ite c!967729 (regOne!31541 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292))) (regOne!31540 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292)))) (ite c!967729 (ite c!967467 lt!2247927 (Context!9797 call!410399)) (Context!9797 call!410533)) (h!69166 s!2326)))))

(declare-fun b!5529991 () Bool)

(assert (=> b!5529991 (= c!967728 e!3418503)))

(declare-fun res!2354565 () Bool)

(assert (=> b!5529991 (=> (not res!2354565) (not e!3418503))))

(assert (=> b!5529991 (= res!2354565 (is-Concat!24359 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292))))))

(declare-fun e!3418500 () (Set Context!9796))

(assert (=> b!5529991 (= e!3418498 e!3418500)))

(declare-fun b!5529987 () Bool)

(assert (=> b!5529987 (= e!3418500 e!3418499)))

(assert (=> b!5529987 (= c!967731 (is-Concat!24359 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292))))))

(declare-fun d!1752359 () Bool)

(declare-fun c!967732 () Bool)

(assert (=> d!1752359 (= c!967732 (and (is-ElementMatch!15514 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292))) (= (c!967395 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292))) (h!69166 s!2326))))))

(assert (=> d!1752359 (= (derivationStepZipperDown!856 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292)) (ite c!967467 lt!2247927 (Context!9797 call!410399)) (h!69166 s!2326)) e!3418502)))

(declare-fun bm!410530 () Bool)

(assert (=> bm!410530 (= call!410535 (derivationStepZipperDown!856 (ite c!967729 (regTwo!31541 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292))) (ite c!967728 (regTwo!31540 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292))) (ite c!967731 (regOne!31540 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292))) (reg!15843 (ite c!967467 (regOne!31541 r!7292) (regOne!31540 r!7292)))))) (ite (or c!967729 c!967728) (ite c!967467 lt!2247927 (Context!9797 call!410399)) (Context!9797 call!410534)) (h!69166 s!2326)))))

(declare-fun b!5529992 () Bool)

(assert (=> b!5529992 (= e!3418500 (set.union call!410531 call!410536))))

(declare-fun b!5529993 () Bool)

(assert (=> b!5529993 (= e!3418501 call!410532)))

(declare-fun b!5529994 () Bool)

(assert (=> b!5529994 (= e!3418501 (as set.empty (Set Context!9796)))))

(declare-fun bm!410531 () Bool)

(assert (=> bm!410531 (= call!410536 call!410535)))

(assert (= (and d!1752359 c!967732) b!5529986))

(assert (= (and d!1752359 (not c!967732)) b!5529985))

(assert (= (and b!5529985 c!967729) b!5529989))

(assert (= (and b!5529985 (not c!967729)) b!5529991))

(assert (= (and b!5529991 res!2354565) b!5529988))

(assert (= (and b!5529991 c!967728) b!5529992))

(assert (= (and b!5529991 (not c!967728)) b!5529987))

(assert (= (and b!5529987 c!967731) b!5529984))

(assert (= (and b!5529987 (not c!967731)) b!5529990))

(assert (= (and b!5529990 c!967730) b!5529993))

(assert (= (and b!5529990 (not c!967730)) b!5529994))

(assert (= (or b!5529984 b!5529993) bm!410528))

(assert (= (or b!5529984 b!5529993) bm!410527))

(assert (= (or b!5529992 bm!410528) bm!410526))

(assert (= (or b!5529992 bm!410527) bm!410531))

(assert (= (or b!5529989 bm!410531) bm!410530))

(assert (= (or b!5529989 b!5529992) bm!410529))

(declare-fun m!6532002 () Bool)

(assert (=> bm!410526 m!6532002))

(declare-fun m!6532004 () Bool)

(assert (=> bm!410529 m!6532004))

(declare-fun m!6532006 () Bool)

(assert (=> b!5529988 m!6532006))

(declare-fun m!6532008 () Bool)

(assert (=> bm!410530 m!6532008))

(declare-fun m!6532010 () Bool)

(assert (=> b!5529986 m!6532010))

(assert (=> bm!410395 d!1752359))

(assert (=> d!1752123 d!1752295))

(assert (=> b!5529006 d!1752327))

(declare-fun c!967733 () Bool)

(declare-fun c!967736 () Bool)

(declare-fun call!410539 () List!62841)

(declare-fun bm!410532 () Bool)

(assert (=> bm!410532 (= call!410539 ($colon$colon!1593 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343))))) (ite (or c!967733 c!967736) (regTwo!31540 (h!69165 (exprs!5398 (h!69167 zl!343)))) (h!69165 (exprs!5398 (h!69167 zl!343))))))))

(declare-fun bm!410533 () Bool)

(declare-fun call!410538 () (Set Context!9796))

(declare-fun call!410542 () (Set Context!9796))

(assert (=> bm!410533 (= call!410538 call!410542)))

(declare-fun b!5529995 () Bool)

(declare-fun e!3418505 () (Set Context!9796))

(assert (=> b!5529995 (= e!3418505 call!410538)))

(declare-fun b!5529996 () Bool)

(declare-fun e!3418508 () (Set Context!9796))

(declare-fun e!3418504 () (Set Context!9796))

(assert (=> b!5529996 (= e!3418508 e!3418504)))

(declare-fun c!967734 () Bool)

(assert (=> b!5529996 (= c!967734 (is-Union!15514 (h!69165 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun b!5529997 () Bool)

(assert (=> b!5529997 (= e!3418508 (set.insert (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343)))) (as set.empty (Set Context!9796))))))

(declare-fun b!5529999 () Bool)

(declare-fun e!3418509 () Bool)

(assert (=> b!5529999 (= e!3418509 (nullable!5548 (regOne!31540 (h!69165 (exprs!5398 (h!69167 zl!343))))))))

(declare-fun b!5530000 () Bool)

(declare-fun call!410537 () (Set Context!9796))

(declare-fun call!410541 () (Set Context!9796))

(assert (=> b!5530000 (= e!3418504 (set.union call!410537 call!410541))))

(declare-fun bm!410534 () Bool)

(declare-fun call!410540 () List!62841)

(assert (=> bm!410534 (= call!410540 call!410539)))

(declare-fun b!5530001 () Bool)

(declare-fun c!967735 () Bool)

(assert (=> b!5530001 (= c!967735 (is-Star!15514 (h!69165 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun e!3418507 () (Set Context!9796))

(assert (=> b!5530001 (= e!3418505 e!3418507)))

(declare-fun bm!410535 () Bool)

(assert (=> bm!410535 (= call!410537 (derivationStepZipperDown!856 (ite c!967734 (regOne!31541 (h!69165 (exprs!5398 (h!69167 zl!343)))) (regOne!31540 (h!69165 (exprs!5398 (h!69167 zl!343))))) (ite c!967734 (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343)))) (Context!9797 call!410539)) (h!69166 s!2326)))))

(declare-fun b!5530002 () Bool)

(assert (=> b!5530002 (= c!967733 e!3418509)))

(declare-fun res!2354566 () Bool)

(assert (=> b!5530002 (=> (not res!2354566) (not e!3418509))))

(assert (=> b!5530002 (= res!2354566 (is-Concat!24359 (h!69165 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun e!3418506 () (Set Context!9796))

(assert (=> b!5530002 (= e!3418504 e!3418506)))

(declare-fun b!5529998 () Bool)

(assert (=> b!5529998 (= e!3418506 e!3418505)))

(assert (=> b!5529998 (= c!967736 (is-Concat!24359 (h!69165 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun d!1752361 () Bool)

(declare-fun c!967737 () Bool)

(assert (=> d!1752361 (= c!967737 (and (is-ElementMatch!15514 (h!69165 (exprs!5398 (h!69167 zl!343)))) (= (c!967395 (h!69165 (exprs!5398 (h!69167 zl!343)))) (h!69166 s!2326))))))

(assert (=> d!1752361 (= (derivationStepZipperDown!856 (h!69165 (exprs!5398 (h!69167 zl!343))) (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343)))) (h!69166 s!2326)) e!3418508)))

(declare-fun bm!410536 () Bool)

(assert (=> bm!410536 (= call!410541 (derivationStepZipperDown!856 (ite c!967734 (regTwo!31541 (h!69165 (exprs!5398 (h!69167 zl!343)))) (ite c!967733 (regTwo!31540 (h!69165 (exprs!5398 (h!69167 zl!343)))) (ite c!967736 (regOne!31540 (h!69165 (exprs!5398 (h!69167 zl!343)))) (reg!15843 (h!69165 (exprs!5398 (h!69167 zl!343))))))) (ite (or c!967734 c!967733) (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343)))) (Context!9797 call!410540)) (h!69166 s!2326)))))

(declare-fun b!5530003 () Bool)

(assert (=> b!5530003 (= e!3418506 (set.union call!410537 call!410542))))

(declare-fun b!5530004 () Bool)

(assert (=> b!5530004 (= e!3418507 call!410538)))

(declare-fun b!5530005 () Bool)

(assert (=> b!5530005 (= e!3418507 (as set.empty (Set Context!9796)))))

(declare-fun bm!410537 () Bool)

(assert (=> bm!410537 (= call!410542 call!410541)))

(assert (= (and d!1752361 c!967737) b!5529997))

(assert (= (and d!1752361 (not c!967737)) b!5529996))

(assert (= (and b!5529996 c!967734) b!5530000))

(assert (= (and b!5529996 (not c!967734)) b!5530002))

(assert (= (and b!5530002 res!2354566) b!5529999))

(assert (= (and b!5530002 c!967733) b!5530003))

(assert (= (and b!5530002 (not c!967733)) b!5529998))

(assert (= (and b!5529998 c!967736) b!5529995))

(assert (= (and b!5529998 (not c!967736)) b!5530001))

(assert (= (and b!5530001 c!967735) b!5530004))

(assert (= (and b!5530001 (not c!967735)) b!5530005))

(assert (= (or b!5529995 b!5530004) bm!410534))

(assert (= (or b!5529995 b!5530004) bm!410533))

(assert (= (or b!5530003 bm!410534) bm!410532))

(assert (= (or b!5530003 bm!410533) bm!410537))

(assert (= (or b!5530000 bm!410537) bm!410536))

(assert (= (or b!5530000 b!5530003) bm!410535))

(declare-fun m!6532012 () Bool)

(assert (=> bm!410532 m!6532012))

(declare-fun m!6532014 () Bool)

(assert (=> bm!410535 m!6532014))

(declare-fun m!6532016 () Bool)

(assert (=> b!5529999 m!6532016))

(declare-fun m!6532018 () Bool)

(assert (=> bm!410536 m!6532018))

(declare-fun m!6532020 () Bool)

(assert (=> b!5529997 m!6532020))

(assert (=> bm!410424 d!1752361))

(declare-fun d!1752363 () Bool)

(declare-fun res!2354567 () Bool)

(declare-fun e!3418510 () Bool)

(assert (=> d!1752363 (=> res!2354567 e!3418510)))

(assert (=> d!1752363 (= res!2354567 (is-Nil!62717 (exprs!5398 lt!2247930)))))

(assert (=> d!1752363 (= (forall!14692 (exprs!5398 lt!2247930) lambda!296682) e!3418510)))

(declare-fun b!5530006 () Bool)

(declare-fun e!3418511 () Bool)

(assert (=> b!5530006 (= e!3418510 e!3418511)))

(declare-fun res!2354568 () Bool)

(assert (=> b!5530006 (=> (not res!2354568) (not e!3418511))))

(assert (=> b!5530006 (= res!2354568 (dynLambda!24523 lambda!296682 (h!69165 (exprs!5398 lt!2247930))))))

(declare-fun b!5530007 () Bool)

(assert (=> b!5530007 (= e!3418511 (forall!14692 (t!376098 (exprs!5398 lt!2247930)) lambda!296682))))

(assert (= (and d!1752363 (not res!2354567)) b!5530006))

(assert (= (and b!5530006 res!2354568) b!5530007))

(declare-fun b_lambda!209865 () Bool)

(assert (=> (not b_lambda!209865) (not b!5530006)))

(declare-fun m!6532022 () Bool)

(assert (=> b!5530006 m!6532022))

(declare-fun m!6532024 () Bool)

(assert (=> b!5530007 m!6532024))

(assert (=> b!5529164 d!1752363))

(declare-fun d!1752365 () Bool)

(declare-fun c!967740 () Bool)

(assert (=> d!1752365 (= c!967740 (is-Nil!62719 lt!2248088))))

(declare-fun e!3418514 () (Set Context!9796))

(assert (=> d!1752365 (= (content!11283 lt!2248088) e!3418514)))

(declare-fun b!5530012 () Bool)

(assert (=> b!5530012 (= e!3418514 (as set.empty (Set Context!9796)))))

(declare-fun b!5530013 () Bool)

(assert (=> b!5530013 (= e!3418514 (set.union (set.insert (h!69167 lt!2248088) (as set.empty (Set Context!9796))) (content!11283 (t!376100 lt!2248088))))))

(assert (= (and d!1752365 c!967740) b!5530012))

(assert (= (and d!1752365 (not c!967740)) b!5530013))

(declare-fun m!6532026 () Bool)

(assert (=> b!5530013 m!6532026))

(declare-fun m!6532028 () Bool)

(assert (=> b!5530013 m!6532028))

(assert (=> b!5529261 d!1752365))

(declare-fun b!5530014 () Bool)

(declare-fun e!3418520 () Bool)

(declare-fun call!410543 () Bool)

(assert (=> b!5530014 (= e!3418520 call!410543)))

(declare-fun c!967742 () Bool)

(declare-fun c!967741 () Bool)

(declare-fun bm!410538 () Bool)

(declare-fun call!410544 () Bool)

(assert (=> bm!410538 (= call!410544 (validRegex!7250 (ite c!967742 (reg!15843 (ite c!967499 (reg!15843 r!7292) (ite c!967498 (regTwo!31541 r!7292) (regTwo!31540 r!7292)))) (ite c!967741 (regTwo!31541 (ite c!967499 (reg!15843 r!7292) (ite c!967498 (regTwo!31541 r!7292) (regTwo!31540 r!7292)))) (regTwo!31540 (ite c!967499 (reg!15843 r!7292) (ite c!967498 (regTwo!31541 r!7292) (regTwo!31540 r!7292))))))))))

(declare-fun b!5530015 () Bool)

(declare-fun e!3418521 () Bool)

(assert (=> b!5530015 (= e!3418521 call!410544)))

(declare-fun d!1752367 () Bool)

(declare-fun res!2354573 () Bool)

(declare-fun e!3418516 () Bool)

(assert (=> d!1752367 (=> res!2354573 e!3418516)))

(assert (=> d!1752367 (= res!2354573 (is-ElementMatch!15514 (ite c!967499 (reg!15843 r!7292) (ite c!967498 (regTwo!31541 r!7292) (regTwo!31540 r!7292)))))))

(assert (=> d!1752367 (= (validRegex!7250 (ite c!967499 (reg!15843 r!7292) (ite c!967498 (regTwo!31541 r!7292) (regTwo!31540 r!7292)))) e!3418516)))

(declare-fun b!5530016 () Bool)

(declare-fun e!3418519 () Bool)

(assert (=> b!5530016 (= e!3418516 e!3418519)))

(assert (=> b!5530016 (= c!967742 (is-Star!15514 (ite c!967499 (reg!15843 r!7292) (ite c!967498 (regTwo!31541 r!7292) (regTwo!31540 r!7292)))))))

(declare-fun b!5530017 () Bool)

(declare-fun e!3418515 () Bool)

(assert (=> b!5530017 (= e!3418515 call!410543)))

(declare-fun b!5530018 () Bool)

(declare-fun e!3418517 () Bool)

(assert (=> b!5530018 (= e!3418519 e!3418517)))

(assert (=> b!5530018 (= c!967741 (is-Union!15514 (ite c!967499 (reg!15843 r!7292) (ite c!967498 (regTwo!31541 r!7292) (regTwo!31540 r!7292)))))))

(declare-fun b!5530019 () Bool)

(declare-fun res!2354571 () Bool)

(declare-fun e!3418518 () Bool)

(assert (=> b!5530019 (=> res!2354571 e!3418518)))

(assert (=> b!5530019 (= res!2354571 (not (is-Concat!24359 (ite c!967499 (reg!15843 r!7292) (ite c!967498 (regTwo!31541 r!7292) (regTwo!31540 r!7292))))))))

(assert (=> b!5530019 (= e!3418517 e!3418518)))

(declare-fun b!5530020 () Bool)

(assert (=> b!5530020 (= e!3418518 e!3418520)))

(declare-fun res!2354570 () Bool)

(assert (=> b!5530020 (=> (not res!2354570) (not e!3418520))))

(declare-fun call!410545 () Bool)

(assert (=> b!5530020 (= res!2354570 call!410545)))

(declare-fun bm!410539 () Bool)

(assert (=> bm!410539 (= call!410545 (validRegex!7250 (ite c!967741 (regOne!31541 (ite c!967499 (reg!15843 r!7292) (ite c!967498 (regTwo!31541 r!7292) (regTwo!31540 r!7292)))) (regOne!31540 (ite c!967499 (reg!15843 r!7292) (ite c!967498 (regTwo!31541 r!7292) (regTwo!31540 r!7292)))))))))

(declare-fun b!5530021 () Bool)

(declare-fun res!2354572 () Bool)

(assert (=> b!5530021 (=> (not res!2354572) (not e!3418515))))

(assert (=> b!5530021 (= res!2354572 call!410545)))

(assert (=> b!5530021 (= e!3418517 e!3418515)))

(declare-fun b!5530022 () Bool)

(assert (=> b!5530022 (= e!3418519 e!3418521)))

(declare-fun res!2354569 () Bool)

(assert (=> b!5530022 (= res!2354569 (not (nullable!5548 (reg!15843 (ite c!967499 (reg!15843 r!7292) (ite c!967498 (regTwo!31541 r!7292) (regTwo!31540 r!7292)))))))))

(assert (=> b!5530022 (=> (not res!2354569) (not e!3418521))))

(declare-fun bm!410540 () Bool)

(assert (=> bm!410540 (= call!410543 call!410544)))

(assert (= (and d!1752367 (not res!2354573)) b!5530016))

(assert (= (and b!5530016 c!967742) b!5530022))

(assert (= (and b!5530016 (not c!967742)) b!5530018))

(assert (= (and b!5530022 res!2354569) b!5530015))

(assert (= (and b!5530018 c!967741) b!5530021))

(assert (= (and b!5530018 (not c!967741)) b!5530019))

(assert (= (and b!5530021 res!2354572) b!5530017))

(assert (= (and b!5530019 (not res!2354571)) b!5530020))

(assert (= (and b!5530020 res!2354570) b!5530014))

(assert (= (or b!5530017 b!5530014) bm!410540))

(assert (= (or b!5530021 b!5530020) bm!410539))

(assert (= (or b!5530015 bm!410540) bm!410538))

(declare-fun m!6532030 () Bool)

(assert (=> bm!410538 m!6532030))

(declare-fun m!6532032 () Bool)

(assert (=> bm!410539 m!6532032))

(declare-fun m!6532034 () Bool)

(assert (=> b!5530022 m!6532034))

(assert (=> bm!410407 d!1752367))

(assert (=> d!1752041 d!1752295))

(declare-fun b!5530023 () Bool)

(declare-fun e!3418527 () Bool)

(declare-fun call!410546 () Bool)

(assert (=> b!5530023 (= e!3418527 call!410546)))

(declare-fun c!967744 () Bool)

(declare-fun call!410547 () Bool)

(declare-fun bm!410541 () Bool)

(declare-fun c!967743 () Bool)

(assert (=> bm!410541 (= call!410547 (validRegex!7250 (ite c!967744 (reg!15843 lt!2248078) (ite c!967743 (regTwo!31541 lt!2248078) (regTwo!31540 lt!2248078)))))))

(declare-fun b!5530024 () Bool)

(declare-fun e!3418528 () Bool)

(assert (=> b!5530024 (= e!3418528 call!410547)))

(declare-fun d!1752369 () Bool)

(declare-fun res!2354578 () Bool)

(declare-fun e!3418523 () Bool)

(assert (=> d!1752369 (=> res!2354578 e!3418523)))

(assert (=> d!1752369 (= res!2354578 (is-ElementMatch!15514 lt!2248078))))

(assert (=> d!1752369 (= (validRegex!7250 lt!2248078) e!3418523)))

(declare-fun b!5530025 () Bool)

(declare-fun e!3418526 () Bool)

(assert (=> b!5530025 (= e!3418523 e!3418526)))

(assert (=> b!5530025 (= c!967744 (is-Star!15514 lt!2248078))))

(declare-fun b!5530026 () Bool)

(declare-fun e!3418522 () Bool)

(assert (=> b!5530026 (= e!3418522 call!410546)))

(declare-fun b!5530027 () Bool)

(declare-fun e!3418524 () Bool)

(assert (=> b!5530027 (= e!3418526 e!3418524)))

(assert (=> b!5530027 (= c!967743 (is-Union!15514 lt!2248078))))

(declare-fun b!5530028 () Bool)

(declare-fun res!2354576 () Bool)

(declare-fun e!3418525 () Bool)

(assert (=> b!5530028 (=> res!2354576 e!3418525)))

(assert (=> b!5530028 (= res!2354576 (not (is-Concat!24359 lt!2248078)))))

(assert (=> b!5530028 (= e!3418524 e!3418525)))

(declare-fun b!5530029 () Bool)

(assert (=> b!5530029 (= e!3418525 e!3418527)))

(declare-fun res!2354575 () Bool)

(assert (=> b!5530029 (=> (not res!2354575) (not e!3418527))))

(declare-fun call!410548 () Bool)

(assert (=> b!5530029 (= res!2354575 call!410548)))

(declare-fun bm!410542 () Bool)

(assert (=> bm!410542 (= call!410548 (validRegex!7250 (ite c!967743 (regOne!31541 lt!2248078) (regOne!31540 lt!2248078))))))

(declare-fun b!5530030 () Bool)

(declare-fun res!2354577 () Bool)

(assert (=> b!5530030 (=> (not res!2354577) (not e!3418522))))

(assert (=> b!5530030 (= res!2354577 call!410548)))

(assert (=> b!5530030 (= e!3418524 e!3418522)))

(declare-fun b!5530031 () Bool)

(assert (=> b!5530031 (= e!3418526 e!3418528)))

(declare-fun res!2354574 () Bool)

(assert (=> b!5530031 (= res!2354574 (not (nullable!5548 (reg!15843 lt!2248078))))))

(assert (=> b!5530031 (=> (not res!2354574) (not e!3418528))))

(declare-fun bm!410543 () Bool)

(assert (=> bm!410543 (= call!410546 call!410547)))

(assert (= (and d!1752369 (not res!2354578)) b!5530025))

(assert (= (and b!5530025 c!967744) b!5530031))

(assert (= (and b!5530025 (not c!967744)) b!5530027))

(assert (= (and b!5530031 res!2354574) b!5530024))

(assert (= (and b!5530027 c!967743) b!5530030))

(assert (= (and b!5530027 (not c!967743)) b!5530028))

(assert (= (and b!5530030 res!2354577) b!5530026))

(assert (= (and b!5530028 (not res!2354576)) b!5530029))

(assert (= (and b!5530029 res!2354575) b!5530023))

(assert (= (or b!5530026 b!5530023) bm!410543))

(assert (= (or b!5530030 b!5530029) bm!410542))

(assert (= (or b!5530024 bm!410543) bm!410541))

(declare-fun m!6532036 () Bool)

(assert (=> bm!410541 m!6532036))

(declare-fun m!6532038 () Bool)

(assert (=> bm!410542 m!6532038))

(declare-fun m!6532040 () Bool)

(assert (=> b!5530031 m!6532040))

(assert (=> d!1752081 d!1752369))

(assert (=> d!1752081 d!1752029))

(assert (=> d!1752081 d!1752031))

(declare-fun b!5530046 () Bool)

(declare-fun e!3418541 () Bool)

(declare-fun e!3418544 () Bool)

(assert (=> b!5530046 (= e!3418541 e!3418544)))

(declare-fun res!2354589 () Bool)

(declare-fun call!410553 () Bool)

(assert (=> b!5530046 (= res!2354589 call!410553)))

(assert (=> b!5530046 (=> (not res!2354589) (not e!3418544))))

(declare-fun b!5530047 () Bool)

(declare-fun e!3418543 () Bool)

(assert (=> b!5530047 (= e!3418543 e!3418541)))

(declare-fun c!967747 () Bool)

(assert (=> b!5530047 (= c!967747 (is-Union!15514 (regOne!31540 r!7292)))))

(declare-fun b!5530048 () Bool)

(declare-fun e!3418546 () Bool)

(assert (=> b!5530048 (= e!3418541 e!3418546)))

(declare-fun res!2354591 () Bool)

(assert (=> b!5530048 (= res!2354591 call!410553)))

(assert (=> b!5530048 (=> res!2354591 e!3418546)))

(declare-fun b!5530049 () Bool)

(declare-fun call!410554 () Bool)

(assert (=> b!5530049 (= e!3418544 call!410554)))

(declare-fun b!5530050 () Bool)

(assert (=> b!5530050 (= e!3418546 call!410554)))

(declare-fun bm!410548 () Bool)

(assert (=> bm!410548 (= call!410553 (nullable!5548 (ite c!967747 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292)))))))

(declare-fun d!1752371 () Bool)

(declare-fun res!2354590 () Bool)

(declare-fun e!3418545 () Bool)

(assert (=> d!1752371 (=> res!2354590 e!3418545)))

(assert (=> d!1752371 (= res!2354590 (is-EmptyExpr!15514 (regOne!31540 r!7292)))))

(assert (=> d!1752371 (= (nullableFct!1672 (regOne!31540 r!7292)) e!3418545)))

(declare-fun bm!410549 () Bool)

(assert (=> bm!410549 (= call!410554 (nullable!5548 (ite c!967747 (regTwo!31541 (regOne!31540 r!7292)) (regTwo!31540 (regOne!31540 r!7292)))))))

(declare-fun b!5530051 () Bool)

(declare-fun e!3418542 () Bool)

(assert (=> b!5530051 (= e!3418542 e!3418543)))

(declare-fun res!2354593 () Bool)

(assert (=> b!5530051 (=> res!2354593 e!3418543)))

(assert (=> b!5530051 (= res!2354593 (is-Star!15514 (regOne!31540 r!7292)))))

(declare-fun b!5530052 () Bool)

(assert (=> b!5530052 (= e!3418545 e!3418542)))

(declare-fun res!2354592 () Bool)

(assert (=> b!5530052 (=> (not res!2354592) (not e!3418542))))

(assert (=> b!5530052 (= res!2354592 (and (not (is-EmptyLang!15514 (regOne!31540 r!7292))) (not (is-ElementMatch!15514 (regOne!31540 r!7292)))))))

(assert (= (and d!1752371 (not res!2354590)) b!5530052))

(assert (= (and b!5530052 res!2354592) b!5530051))

(assert (= (and b!5530051 (not res!2354593)) b!5530047))

(assert (= (and b!5530047 c!967747) b!5530048))

(assert (= (and b!5530047 (not c!967747)) b!5530046))

(assert (= (and b!5530048 (not res!2354591)) b!5530050))

(assert (= (and b!5530046 res!2354589) b!5530049))

(assert (= (or b!5530050 b!5530049) bm!410549))

(assert (= (or b!5530048 b!5530046) bm!410548))

(declare-fun m!6532042 () Bool)

(assert (=> bm!410548 m!6532042))

(declare-fun m!6532044 () Bool)

(assert (=> bm!410549 m!6532044))

(assert (=> d!1752091 d!1752371))

(declare-fun d!1752373 () Bool)

(assert (=> d!1752373 (= (isUnion!527 lt!2248032) (is-Union!15514 lt!2248032))))

(assert (=> b!5528953 d!1752373))

(declare-fun d!1752375 () Bool)

(declare-fun res!2354594 () Bool)

(declare-fun e!3418547 () Bool)

(assert (=> d!1752375 (=> res!2354594 e!3418547)))

(assert (=> d!1752375 (= res!2354594 (is-Nil!62717 (exprs!5398 lt!2247922)))))

(assert (=> d!1752375 (= (forall!14692 (exprs!5398 lt!2247922) lambda!296709) e!3418547)))

(declare-fun b!5530053 () Bool)

(declare-fun e!3418548 () Bool)

(assert (=> b!5530053 (= e!3418547 e!3418548)))

(declare-fun res!2354595 () Bool)

(assert (=> b!5530053 (=> (not res!2354595) (not e!3418548))))

(assert (=> b!5530053 (= res!2354595 (dynLambda!24523 lambda!296709 (h!69165 (exprs!5398 lt!2247922))))))

(declare-fun b!5530054 () Bool)

(assert (=> b!5530054 (= e!3418548 (forall!14692 (t!376098 (exprs!5398 lt!2247922)) lambda!296709))))

(assert (= (and d!1752375 (not res!2354594)) b!5530053))

(assert (= (and b!5530053 res!2354595) b!5530054))

(declare-fun b_lambda!209867 () Bool)

(assert (=> (not b_lambda!209867) (not b!5530053)))

(declare-fun m!6532046 () Bool)

(assert (=> b!5530053 m!6532046))

(declare-fun m!6532048 () Bool)

(assert (=> b!5530054 m!6532048))

(assert (=> b!5529290 d!1752375))

(declare-fun d!1752377 () Bool)

(assert (=> d!1752377 true))

(declare-fun setRes!36790 () Bool)

(assert (=> d!1752377 setRes!36790))

(declare-fun condSetEmpty!36790 () Bool)

(declare-fun res!2354596 () (Set Context!9796))

(assert (=> d!1752377 (= condSetEmpty!36790 (= res!2354596 (as set.empty (Set Context!9796))))))

(assert (=> d!1752377 (= (choose!42013 z!1189 lambda!296636) res!2354596)))

(declare-fun setIsEmpty!36790 () Bool)

(assert (=> setIsEmpty!36790 setRes!36790))

(declare-fun setElem!36790 () Context!9796)

(declare-fun tp!1521181 () Bool)

(declare-fun setNonEmpty!36790 () Bool)

(declare-fun e!3418549 () Bool)

(assert (=> setNonEmpty!36790 (= setRes!36790 (and tp!1521181 (inv!82033 setElem!36790) e!3418549))))

(declare-fun setRest!36790 () (Set Context!9796))

(assert (=> setNonEmpty!36790 (= res!2354596 (set.union (set.insert setElem!36790 (as set.empty (Set Context!9796))) setRest!36790))))

(declare-fun b!5530055 () Bool)

(declare-fun tp!1521180 () Bool)

(assert (=> b!5530055 (= e!3418549 tp!1521180)))

(assert (= (and d!1752377 condSetEmpty!36790) setIsEmpty!36790))

(assert (= (and d!1752377 (not condSetEmpty!36790)) setNonEmpty!36790))

(assert (= setNonEmpty!36790 b!5530055))

(declare-fun m!6532050 () Bool)

(assert (=> setNonEmpty!36790 m!6532050))

(assert (=> d!1752109 d!1752377))

(declare-fun d!1752379 () Bool)

(declare-fun c!967748 () Bool)

(assert (=> d!1752379 (= c!967748 (isEmpty!34511 (tail!10927 (t!376099 s!2326))))))

(declare-fun e!3418550 () Bool)

(assert (=> d!1752379 (= (matchZipper!1672 (derivationStepZipper!1619 lt!2247907 (head!11832 (t!376099 s!2326))) (tail!10927 (t!376099 s!2326))) e!3418550)))

(declare-fun b!5530056 () Bool)

(assert (=> b!5530056 (= e!3418550 (nullableZipper!1540 (derivationStepZipper!1619 lt!2247907 (head!11832 (t!376099 s!2326)))))))

(declare-fun b!5530057 () Bool)

(assert (=> b!5530057 (= e!3418550 (matchZipper!1672 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247907 (head!11832 (t!376099 s!2326))) (head!11832 (tail!10927 (t!376099 s!2326)))) (tail!10927 (tail!10927 (t!376099 s!2326)))))))

(assert (= (and d!1752379 c!967748) b!5530056))

(assert (= (and d!1752379 (not c!967748)) b!5530057))

(assert (=> d!1752379 m!6531124))

(assert (=> d!1752379 m!6531788))

(assert (=> b!5530056 m!6531132))

(declare-fun m!6532052 () Bool)

(assert (=> b!5530056 m!6532052))

(assert (=> b!5530057 m!6531124))

(assert (=> b!5530057 m!6531792))

(assert (=> b!5530057 m!6531132))

(assert (=> b!5530057 m!6531792))

(declare-fun m!6532054 () Bool)

(assert (=> b!5530057 m!6532054))

(assert (=> b!5530057 m!6531124))

(assert (=> b!5530057 m!6531796))

(assert (=> b!5530057 m!6532054))

(assert (=> b!5530057 m!6531796))

(declare-fun m!6532056 () Bool)

(assert (=> b!5530057 m!6532056))

(assert (=> b!5528974 d!1752379))

(declare-fun bs!1277741 () Bool)

(declare-fun d!1752381 () Bool)

(assert (= bs!1277741 (and d!1752381 d!1752265)))

(declare-fun lambda!296783 () Int)

(assert (=> bs!1277741 (= lambda!296783 lambda!296769)))

(declare-fun bs!1277742 () Bool)

(assert (= bs!1277742 (and d!1752381 d!1752037)))

(assert (=> bs!1277742 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296783 lambda!296660))))

(declare-fun bs!1277743 () Bool)

(assert (= bs!1277743 (and d!1752381 d!1752073)))

(assert (=> bs!1277743 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296783 lambda!296676))))

(declare-fun bs!1277744 () Bool)

(assert (= bs!1277744 (and d!1752381 b!5528779)))

(assert (=> bs!1277744 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296783 lambda!296636))))

(declare-fun bs!1277745 () Bool)

(assert (= bs!1277745 (and d!1752381 d!1752313)))

(assert (=> bs!1277745 (= lambda!296783 lambda!296777)))

(declare-fun bs!1277746 () Bool)

(assert (= bs!1277746 (and d!1752381 d!1752125)))

(assert (=> bs!1277746 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296783 lambda!296704))))

(assert (=> d!1752381 true))

(assert (=> d!1752381 (= (derivationStepZipper!1619 lt!2247907 (head!11832 (t!376099 s!2326))) (flatMap!1127 lt!2247907 lambda!296783))))

(declare-fun bs!1277747 () Bool)

(assert (= bs!1277747 d!1752381))

(declare-fun m!6532058 () Bool)

(assert (=> bs!1277747 m!6532058))

(assert (=> b!5528974 d!1752381))

(assert (=> b!5528974 d!1752267))

(assert (=> b!5528974 d!1752269))

(assert (=> d!1752093 d!1752097))

(declare-fun d!1752383 () Bool)

(assert (=> d!1752383 (= (flatMap!1127 lt!2247909 lambda!296636) (dynLambda!24521 lambda!296636 lt!2247922))))

(assert (=> d!1752383 true))

(declare-fun _$13!2099 () Unit!155488)

(assert (=> d!1752383 (= (choose!42012 lt!2247909 lt!2247922 lambda!296636) _$13!2099)))

(declare-fun b_lambda!209869 () Bool)

(assert (=> (not b_lambda!209869) (not d!1752383)))

(declare-fun bs!1277748 () Bool)

(assert (= bs!1277748 d!1752383))

(assert (=> bs!1277748 m!6530890))

(assert (=> bs!1277748 m!6531292))

(assert (=> d!1752093 d!1752383))

(declare-fun d!1752385 () Bool)

(declare-fun res!2354597 () Bool)

(declare-fun e!3418551 () Bool)

(assert (=> d!1752385 (=> res!2354597 e!3418551)))

(assert (=> d!1752385 (= res!2354597 (is-Nil!62719 (Cons!62719 lt!2247908 Nil!62719)))))

(assert (=> d!1752385 (= (forall!14693 (Cons!62719 lt!2247908 Nil!62719) lambda!296703) e!3418551)))

(declare-fun b!5530058 () Bool)

(declare-fun e!3418552 () Bool)

(assert (=> b!5530058 (= e!3418551 e!3418552)))

(declare-fun res!2354598 () Bool)

(assert (=> b!5530058 (=> (not res!2354598) (not e!3418552))))

(assert (=> b!5530058 (= res!2354598 (dynLambda!24524 lambda!296703 (h!69167 (Cons!62719 lt!2247908 Nil!62719))))))

(declare-fun b!5530059 () Bool)

(assert (=> b!5530059 (= e!3418552 (forall!14693 (t!376100 (Cons!62719 lt!2247908 Nil!62719)) lambda!296703))))

(assert (= (and d!1752385 (not res!2354597)) b!5530058))

(assert (= (and b!5530058 res!2354598) b!5530059))

(declare-fun b_lambda!209871 () Bool)

(assert (=> (not b_lambda!209871) (not b!5530058)))

(declare-fun m!6532060 () Bool)

(assert (=> b!5530058 m!6532060))

(declare-fun m!6532062 () Bool)

(assert (=> b!5530059 m!6532062))

(assert (=> b!5529280 d!1752385))

(declare-fun d!1752387 () Bool)

(declare-fun c!967749 () Bool)

(assert (=> d!1752387 (= c!967749 (isEmpty!34511 (tail!10927 (t!376099 s!2326))))))

(declare-fun e!3418553 () Bool)

(assert (=> d!1752387 (= (matchZipper!1672 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247926 (h!69166 s!2326)) (head!11832 (t!376099 s!2326))) (tail!10927 (t!376099 s!2326))) e!3418553)))

(declare-fun b!5530060 () Bool)

(assert (=> b!5530060 (= e!3418553 (nullableZipper!1540 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247926 (h!69166 s!2326)) (head!11832 (t!376099 s!2326)))))))

(declare-fun b!5530061 () Bool)

(assert (=> b!5530061 (= e!3418553 (matchZipper!1672 (derivationStepZipper!1619 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247926 (h!69166 s!2326)) (head!11832 (t!376099 s!2326))) (head!11832 (tail!10927 (t!376099 s!2326)))) (tail!10927 (tail!10927 (t!376099 s!2326)))))))

(assert (= (and d!1752387 c!967749) b!5530060))

(assert (= (and d!1752387 (not c!967749)) b!5530061))

(assert (=> d!1752387 m!6531124))

(assert (=> d!1752387 m!6531788))

(assert (=> b!5530060 m!6531378))

(declare-fun m!6532064 () Bool)

(assert (=> b!5530060 m!6532064))

(assert (=> b!5530061 m!6531124))

(assert (=> b!5530061 m!6531792))

(assert (=> b!5530061 m!6531378))

(assert (=> b!5530061 m!6531792))

(declare-fun m!6532066 () Bool)

(assert (=> b!5530061 m!6532066))

(assert (=> b!5530061 m!6531124))

(assert (=> b!5530061 m!6531796))

(assert (=> b!5530061 m!6532066))

(assert (=> b!5530061 m!6531796))

(declare-fun m!6532068 () Bool)

(assert (=> b!5530061 m!6532068))

(assert (=> b!5529284 d!1752387))

(declare-fun bs!1277749 () Bool)

(declare-fun d!1752389 () Bool)

(assert (= bs!1277749 (and d!1752389 d!1752265)))

(declare-fun lambda!296784 () Int)

(assert (=> bs!1277749 (= lambda!296784 lambda!296769)))

(declare-fun bs!1277750 () Bool)

(assert (= bs!1277750 (and d!1752389 d!1752037)))

(assert (=> bs!1277750 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296784 lambda!296660))))

(declare-fun bs!1277751 () Bool)

(assert (= bs!1277751 (and d!1752389 d!1752073)))

(assert (=> bs!1277751 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296784 lambda!296676))))

(declare-fun bs!1277752 () Bool)

(assert (= bs!1277752 (and d!1752389 b!5528779)))

(assert (=> bs!1277752 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296784 lambda!296636))))

(declare-fun bs!1277753 () Bool)

(assert (= bs!1277753 (and d!1752389 d!1752381)))

(assert (=> bs!1277753 (= lambda!296784 lambda!296783)))

(declare-fun bs!1277754 () Bool)

(assert (= bs!1277754 (and d!1752389 d!1752313)))

(assert (=> bs!1277754 (= lambda!296784 lambda!296777)))

(declare-fun bs!1277755 () Bool)

(assert (= bs!1277755 (and d!1752389 d!1752125)))

(assert (=> bs!1277755 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296784 lambda!296704))))

(assert (=> d!1752389 true))

(assert (=> d!1752389 (= (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247926 (h!69166 s!2326)) (head!11832 (t!376099 s!2326))) (flatMap!1127 (derivationStepZipper!1619 lt!2247926 (h!69166 s!2326)) lambda!296784))))

(declare-fun bs!1277756 () Bool)

(assert (= bs!1277756 d!1752389))

(assert (=> bs!1277756 m!6530956))

(declare-fun m!6532070 () Bool)

(assert (=> bs!1277756 m!6532070))

(assert (=> b!5529284 d!1752389))

(assert (=> b!5529284 d!1752267))

(assert (=> b!5529284 d!1752269))

(declare-fun d!1752391 () Bool)

(assert (=> d!1752391 (= (flatMap!1127 z!1189 lambda!296676) (choose!42013 z!1189 lambda!296676))))

(declare-fun bs!1277757 () Bool)

(assert (= bs!1277757 d!1752391))

(declare-fun m!6532072 () Bool)

(assert (=> bs!1277757 m!6532072))

(assert (=> d!1752073 d!1752391))

(declare-fun d!1752393 () Bool)

(assert (=> d!1752393 (= (Exists!2614 lambda!296668) (choose!42008 lambda!296668))))

(declare-fun bs!1277758 () Bool)

(assert (= bs!1277758 d!1752393))

(declare-fun m!6532074 () Bool)

(assert (=> bs!1277758 m!6532074))

(assert (=> d!1752059 d!1752393))

(declare-fun d!1752395 () Bool)

(assert (=> d!1752395 (= (Exists!2614 lambda!296669) (choose!42008 lambda!296669))))

(declare-fun bs!1277759 () Bool)

(assert (= bs!1277759 d!1752395))

(declare-fun m!6532076 () Bool)

(assert (=> bs!1277759 m!6532076))

(assert (=> d!1752059 d!1752395))

(declare-fun bs!1277760 () Bool)

(declare-fun d!1752397 () Bool)

(assert (= bs!1277760 (and d!1752397 d!1752059)))

(declare-fun lambda!296789 () Int)

(assert (=> bs!1277760 (not (= lambda!296789 lambda!296669))))

(declare-fun bs!1277761 () Bool)

(assert (= bs!1277761 (and d!1752397 b!5529980)))

(assert (=> bs!1277761 (not (= lambda!296789 lambda!296781))))

(declare-fun bs!1277762 () Bool)

(assert (= bs!1277762 (and d!1752397 b!5529862)))

(assert (=> bs!1277762 (not (= lambda!296789 lambda!296775))))

(declare-fun bs!1277763 () Bool)

(assert (= bs!1277763 (and d!1752397 b!5529061)))

(assert (=> bs!1277763 (not (= lambda!296789 lambda!296674))))

(declare-fun bs!1277764 () Bool)

(assert (= bs!1277764 (and d!1752397 b!5529864)))

(assert (=> bs!1277764 (not (= lambda!296789 lambda!296776))))

(declare-fun bs!1277765 () Bool)

(assert (= bs!1277765 (and d!1752397 b!5528804)))

(assert (=> bs!1277765 (not (= lambda!296789 lambda!296635))))

(declare-fun bs!1277766 () Bool)

(assert (= bs!1277766 (and d!1752397 b!5529978)))

(assert (=> bs!1277766 (not (= lambda!296789 lambda!296780))))

(declare-fun bs!1277767 () Bool)

(assert (= bs!1277767 (and d!1752397 b!5529063)))

(assert (=> bs!1277767 (not (= lambda!296789 lambda!296675))))

(assert (=> bs!1277765 (= lambda!296789 lambda!296634)))

(assert (=> bs!1277760 (= lambda!296789 lambda!296668)))

(declare-fun bs!1277768 () Bool)

(assert (= bs!1277768 (and d!1752397 d!1752057)))

(assert (=> bs!1277768 (= lambda!296789 lambda!296663)))

(assert (=> d!1752397 true))

(assert (=> d!1752397 true))

(assert (=> d!1752397 true))

(declare-fun lambda!296790 () Int)

(assert (=> bs!1277760 (= lambda!296790 lambda!296669)))

(assert (=> bs!1277761 (= (and (= (regOne!31540 r!7292) (regOne!31540 (regOne!31541 r!7292))) (= (regTwo!31540 r!7292) (regTwo!31540 (regOne!31541 r!7292)))) (= lambda!296790 lambda!296781))))

(assert (=> bs!1277762 (not (= lambda!296790 lambda!296775))))

(assert (=> bs!1277763 (not (= lambda!296790 lambda!296674))))

(assert (=> bs!1277764 (= (and (= (regOne!31540 r!7292) (regOne!31540 (regTwo!31541 r!7292))) (= (regTwo!31540 r!7292) (regTwo!31540 (regTwo!31541 r!7292)))) (= lambda!296790 lambda!296776))))

(assert (=> bs!1277765 (= lambda!296790 lambda!296635)))

(assert (=> bs!1277766 (not (= lambda!296790 lambda!296780))))

(assert (=> bs!1277767 (= lambda!296790 lambda!296675)))

(assert (=> bs!1277765 (not (= lambda!296790 lambda!296634))))

(assert (=> bs!1277760 (not (= lambda!296790 lambda!296668))))

(assert (=> bs!1277768 (not (= lambda!296790 lambda!296663))))

(declare-fun bs!1277769 () Bool)

(assert (= bs!1277769 d!1752397))

(assert (=> bs!1277769 (not (= lambda!296790 lambda!296789))))

(assert (=> d!1752397 true))

(assert (=> d!1752397 true))

(assert (=> d!1752397 true))

(assert (=> d!1752397 (= (Exists!2614 lambda!296789) (Exists!2614 lambda!296790))))

(assert (=> d!1752397 true))

(declare-fun _$90!1259 () Unit!155488)

(assert (=> d!1752397 (= (choose!42010 (regOne!31540 r!7292) (regTwo!31540 r!7292) s!2326) _$90!1259)))

(declare-fun m!6532078 () Bool)

(assert (=> bs!1277769 m!6532078))

(declare-fun m!6532080 () Bool)

(assert (=> bs!1277769 m!6532080))

(assert (=> d!1752059 d!1752397))

(assert (=> d!1752059 d!1752331))

(declare-fun bs!1277770 () Bool)

(declare-fun d!1752399 () Bool)

(assert (= bs!1277770 (and d!1752399 b!5529278)))

(declare-fun lambda!296791 () Int)

(assert (=> bs!1277770 (not (= lambda!296791 lambda!296702))))

(declare-fun bs!1277771 () Bool)

(assert (= bs!1277771 (and d!1752399 b!5529273)))

(assert (=> bs!1277771 (not (= lambda!296791 lambda!296699))))

(declare-fun bs!1277772 () Bool)

(assert (= bs!1277772 (and d!1752399 d!1752297)))

(assert (=> bs!1277772 (= lambda!296791 lambda!296773)))

(declare-fun bs!1277773 () Bool)

(assert (= bs!1277773 (and d!1752399 d!1752357)))

(assert (=> bs!1277773 (= lambda!296791 lambda!296782)))

(declare-fun bs!1277774 () Bool)

(assert (= bs!1277774 (and d!1752399 b!5529280)))

(assert (=> bs!1277774 (not (= lambda!296791 lambda!296703))))

(declare-fun bs!1277775 () Bool)

(assert (= bs!1277775 (and d!1752399 b!5529285)))

(assert (=> bs!1277775 (not (= lambda!296791 lambda!296706))))

(declare-fun bs!1277776 () Bool)

(assert (= bs!1277776 (and d!1752399 d!1752315)))

(assert (=> bs!1277776 (= lambda!296791 lambda!296778)))

(declare-fun bs!1277777 () Bool)

(assert (= bs!1277777 (and d!1752399 b!5529287)))

(assert (=> bs!1277777 (not (= lambda!296791 lambda!296707))))

(declare-fun bs!1277778 () Bool)

(assert (= bs!1277778 (and d!1752399 b!5529275)))

(assert (=> bs!1277778 (not (= lambda!296791 lambda!296700))))

(assert (=> d!1752399 (= (nullableZipper!1540 lt!2247926) (exists!2148 lt!2247926 lambda!296791))))

(declare-fun bs!1277779 () Bool)

(assert (= bs!1277779 d!1752399))

(declare-fun m!6532082 () Bool)

(assert (=> bs!1277779 m!6532082))

(assert (=> b!5529281 d!1752399))

(assert (=> b!5529097 d!1752321))

(assert (=> d!1752067 d!1752065))

(assert (=> d!1752067 d!1752063))

(declare-fun d!1752401 () Bool)

(assert (=> d!1752401 (= (matchR!7699 r!7292 s!2326) (matchRSpec!2617 r!7292 s!2326))))

(assert (=> d!1752401 true))

(declare-fun _$88!3805 () Unit!155488)

(assert (=> d!1752401 (= (choose!42011 r!7292 s!2326) _$88!3805)))

(declare-fun bs!1277780 () Bool)

(assert (= bs!1277780 d!1752401))

(assert (=> bs!1277780 m!6530916))

(assert (=> bs!1277780 m!6530914))

(assert (=> d!1752067 d!1752401))

(assert (=> d!1752067 d!1752087))

(declare-fun d!1752403 () Bool)

(assert (=> d!1752403 (= (nullable!5548 r!7292) (nullableFct!1672 r!7292))))

(declare-fun bs!1277781 () Bool)

(assert (= bs!1277781 d!1752403))

(declare-fun m!6532084 () Bool)

(assert (=> bs!1277781 m!6532084))

(assert (=> b!5529104 d!1752403))

(assert (=> d!1752033 d!1752293))

(declare-fun call!410557 () List!62841)

(declare-fun c!967753 () Bool)

(declare-fun bm!410550 () Bool)

(declare-fun c!967750 () Bool)

(assert (=> bm!410550 (= call!410557 ($colon$colon!1593 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922)))) (ite (or c!967750 c!967753) (regTwo!31540 (h!69165 (exprs!5398 lt!2247922))) (h!69165 (exprs!5398 lt!2247922)))))))

(declare-fun bm!410551 () Bool)

(declare-fun call!410556 () (Set Context!9796))

(declare-fun call!410560 () (Set Context!9796))

(assert (=> bm!410551 (= call!410556 call!410560)))

(declare-fun b!5530070 () Bool)

(declare-fun e!3418559 () (Set Context!9796))

(assert (=> b!5530070 (= e!3418559 call!410556)))

(declare-fun b!5530071 () Bool)

(declare-fun e!3418562 () (Set Context!9796))

(declare-fun e!3418558 () (Set Context!9796))

(assert (=> b!5530071 (= e!3418562 e!3418558)))

(declare-fun c!967751 () Bool)

(assert (=> b!5530071 (= c!967751 (is-Union!15514 (h!69165 (exprs!5398 lt!2247922))))))

(declare-fun b!5530072 () Bool)

(assert (=> b!5530072 (= e!3418562 (set.insert (Context!9797 (t!376098 (exprs!5398 lt!2247922))) (as set.empty (Set Context!9796))))))

(declare-fun b!5530074 () Bool)

(declare-fun e!3418563 () Bool)

(assert (=> b!5530074 (= e!3418563 (nullable!5548 (regOne!31540 (h!69165 (exprs!5398 lt!2247922)))))))

(declare-fun b!5530075 () Bool)

(declare-fun call!410555 () (Set Context!9796))

(declare-fun call!410559 () (Set Context!9796))

(assert (=> b!5530075 (= e!3418558 (set.union call!410555 call!410559))))

(declare-fun bm!410552 () Bool)

(declare-fun call!410558 () List!62841)

(assert (=> bm!410552 (= call!410558 call!410557)))

(declare-fun b!5530076 () Bool)

(declare-fun c!967752 () Bool)

(assert (=> b!5530076 (= c!967752 (is-Star!15514 (h!69165 (exprs!5398 lt!2247922))))))

(declare-fun e!3418561 () (Set Context!9796))

(assert (=> b!5530076 (= e!3418559 e!3418561)))

(declare-fun bm!410553 () Bool)

(assert (=> bm!410553 (= call!410555 (derivationStepZipperDown!856 (ite c!967751 (regOne!31541 (h!69165 (exprs!5398 lt!2247922))) (regOne!31540 (h!69165 (exprs!5398 lt!2247922)))) (ite c!967751 (Context!9797 (t!376098 (exprs!5398 lt!2247922))) (Context!9797 call!410557)) (h!69166 s!2326)))))

(declare-fun b!5530077 () Bool)

(assert (=> b!5530077 (= c!967750 e!3418563)))

(declare-fun res!2354607 () Bool)

(assert (=> b!5530077 (=> (not res!2354607) (not e!3418563))))

(assert (=> b!5530077 (= res!2354607 (is-Concat!24359 (h!69165 (exprs!5398 lt!2247922))))))

(declare-fun e!3418560 () (Set Context!9796))

(assert (=> b!5530077 (= e!3418558 e!3418560)))

(declare-fun b!5530073 () Bool)

(assert (=> b!5530073 (= e!3418560 e!3418559)))

(assert (=> b!5530073 (= c!967753 (is-Concat!24359 (h!69165 (exprs!5398 lt!2247922))))))

(declare-fun d!1752405 () Bool)

(declare-fun c!967754 () Bool)

(assert (=> d!1752405 (= c!967754 (and (is-ElementMatch!15514 (h!69165 (exprs!5398 lt!2247922))) (= (c!967395 (h!69165 (exprs!5398 lt!2247922))) (h!69166 s!2326))))))

(assert (=> d!1752405 (= (derivationStepZipperDown!856 (h!69165 (exprs!5398 lt!2247922)) (Context!9797 (t!376098 (exprs!5398 lt!2247922))) (h!69166 s!2326)) e!3418562)))

(declare-fun bm!410554 () Bool)

(assert (=> bm!410554 (= call!410559 (derivationStepZipperDown!856 (ite c!967751 (regTwo!31541 (h!69165 (exprs!5398 lt!2247922))) (ite c!967750 (regTwo!31540 (h!69165 (exprs!5398 lt!2247922))) (ite c!967753 (regOne!31540 (h!69165 (exprs!5398 lt!2247922))) (reg!15843 (h!69165 (exprs!5398 lt!2247922)))))) (ite (or c!967751 c!967750) (Context!9797 (t!376098 (exprs!5398 lt!2247922))) (Context!9797 call!410558)) (h!69166 s!2326)))))

(declare-fun b!5530078 () Bool)

(assert (=> b!5530078 (= e!3418560 (set.union call!410555 call!410560))))

(declare-fun b!5530079 () Bool)

(assert (=> b!5530079 (= e!3418561 call!410556)))

(declare-fun b!5530080 () Bool)

(assert (=> b!5530080 (= e!3418561 (as set.empty (Set Context!9796)))))

(declare-fun bm!410555 () Bool)

(assert (=> bm!410555 (= call!410560 call!410559)))

(assert (= (and d!1752405 c!967754) b!5530072))

(assert (= (and d!1752405 (not c!967754)) b!5530071))

(assert (= (and b!5530071 c!967751) b!5530075))

(assert (= (and b!5530071 (not c!967751)) b!5530077))

(assert (= (and b!5530077 res!2354607) b!5530074))

(assert (= (and b!5530077 c!967750) b!5530078))

(assert (= (and b!5530077 (not c!967750)) b!5530073))

(assert (= (and b!5530073 c!967753) b!5530070))

(assert (= (and b!5530073 (not c!967753)) b!5530076))

(assert (= (and b!5530076 c!967752) b!5530079))

(assert (= (and b!5530076 (not c!967752)) b!5530080))

(assert (= (or b!5530070 b!5530079) bm!410552))

(assert (= (or b!5530070 b!5530079) bm!410551))

(assert (= (or b!5530078 bm!410552) bm!410550))

(assert (= (or b!5530078 bm!410551) bm!410555))

(assert (= (or b!5530075 bm!410555) bm!410554))

(assert (= (or b!5530075 b!5530078) bm!410553))

(declare-fun m!6532086 () Bool)

(assert (=> bm!410550 m!6532086))

(declare-fun m!6532088 () Bool)

(assert (=> bm!410553 m!6532088))

(declare-fun m!6532090 () Bool)

(assert (=> b!5530074 m!6532090))

(declare-fun m!6532092 () Bool)

(assert (=> bm!410554 m!6532092))

(declare-fun m!6532094 () Bool)

(assert (=> b!5530072 m!6532094))

(assert (=> bm!410422 d!1752405))

(declare-fun bm!410556 () Bool)

(declare-fun call!410561 () (Set Context!9796))

(assert (=> bm!410556 (= call!410561 (derivationStepZipperDown!856 (h!69165 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930))))) (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930)))))) (h!69166 s!2326)))))

(declare-fun b!5530081 () Bool)

(declare-fun e!3418565 () Bool)

(assert (=> b!5530081 (= e!3418565 (nullable!5548 (h!69165 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930)))))))))

(declare-fun e!3418566 () (Set Context!9796))

(declare-fun b!5530082 () Bool)

(assert (=> b!5530082 (= e!3418566 (set.union call!410561 (derivationStepZipperUp!782 (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930)))))) (h!69166 s!2326))))))

(declare-fun b!5530083 () Bool)

(declare-fun e!3418564 () (Set Context!9796))

(assert (=> b!5530083 (= e!3418564 (as set.empty (Set Context!9796)))))

(declare-fun d!1752407 () Bool)

(declare-fun c!967755 () Bool)

(assert (=> d!1752407 (= c!967755 e!3418565)))

(declare-fun res!2354608 () Bool)

(assert (=> d!1752407 (=> (not res!2354608) (not e!3418565))))

(assert (=> d!1752407 (= res!2354608 (is-Cons!62717 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930))))))))

(assert (=> d!1752407 (= (derivationStepZipperUp!782 (Context!9797 (t!376098 (exprs!5398 lt!2247930))) (h!69166 s!2326)) e!3418566)))

(declare-fun b!5530084 () Bool)

(assert (=> b!5530084 (= e!3418566 e!3418564)))

(declare-fun c!967756 () Bool)

(assert (=> b!5530084 (= c!967756 (is-Cons!62717 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930))))))))

(declare-fun b!5530085 () Bool)

(assert (=> b!5530085 (= e!3418564 call!410561)))

(assert (= (and d!1752407 res!2354608) b!5530081))

(assert (= (and d!1752407 c!967755) b!5530082))

(assert (= (and d!1752407 (not c!967755)) b!5530084))

(assert (= (and b!5530084 c!967756) b!5530085))

(assert (= (and b!5530084 (not c!967756)) b!5530083))

(assert (= (or b!5530082 b!5530085) bm!410556))

(declare-fun m!6532096 () Bool)

(assert (=> bm!410556 m!6532096))

(declare-fun m!6532098 () Bool)

(assert (=> b!5530081 m!6532098))

(declare-fun m!6532100 () Bool)

(assert (=> b!5530082 m!6532100))

(assert (=> b!5529152 d!1752407))

(declare-fun bs!1277782 () Bool)

(declare-fun d!1752409 () Bool)

(assert (= bs!1277782 (and d!1752409 b!5529278)))

(declare-fun lambda!296792 () Int)

(assert (=> bs!1277782 (not (= lambda!296792 lambda!296702))))

(declare-fun bs!1277783 () Bool)

(assert (= bs!1277783 (and d!1752409 b!5529273)))

(assert (=> bs!1277783 (not (= lambda!296792 lambda!296699))))

(declare-fun bs!1277784 () Bool)

(assert (= bs!1277784 (and d!1752409 d!1752297)))

(assert (=> bs!1277784 (= lambda!296792 lambda!296773)))

(declare-fun bs!1277785 () Bool)

(assert (= bs!1277785 (and d!1752409 d!1752357)))

(assert (=> bs!1277785 (= lambda!296792 lambda!296782)))

(declare-fun bs!1277786 () Bool)

(assert (= bs!1277786 (and d!1752409 b!5529280)))

(assert (=> bs!1277786 (not (= lambda!296792 lambda!296703))))

(declare-fun bs!1277787 () Bool)

(assert (= bs!1277787 (and d!1752409 d!1752399)))

(assert (=> bs!1277787 (= lambda!296792 lambda!296791)))

(declare-fun bs!1277788 () Bool)

(assert (= bs!1277788 (and d!1752409 b!5529285)))

(assert (=> bs!1277788 (not (= lambda!296792 lambda!296706))))

(declare-fun bs!1277789 () Bool)

(assert (= bs!1277789 (and d!1752409 d!1752315)))

(assert (=> bs!1277789 (= lambda!296792 lambda!296778)))

(declare-fun bs!1277790 () Bool)

(assert (= bs!1277790 (and d!1752409 b!5529287)))

(assert (=> bs!1277790 (not (= lambda!296792 lambda!296707))))

(declare-fun bs!1277791 () Bool)

(assert (= bs!1277791 (and d!1752409 b!5529275)))

(assert (=> bs!1277791 (not (= lambda!296792 lambda!296700))))

(assert (=> d!1752409 (= (nullableZipper!1540 lt!2247918) (exists!2148 lt!2247918 lambda!296792))))

(declare-fun bs!1277792 () Bool)

(assert (= bs!1277792 d!1752409))

(declare-fun m!6532102 () Bool)

(assert (=> bs!1277792 m!6532102))

(assert (=> b!5528979 d!1752409))

(declare-fun c!967760 () Bool)

(declare-fun c!967757 () Bool)

(declare-fun call!410564 () List!62841)

(declare-fun bm!410557 () Bool)

(assert (=> bm!410557 (= call!410564 ($colon$colon!1593 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908)))) (ite (or c!967757 c!967760) (regTwo!31540 (h!69165 (exprs!5398 lt!2247908))) (h!69165 (exprs!5398 lt!2247908)))))))

(declare-fun bm!410558 () Bool)

(declare-fun call!410563 () (Set Context!9796))

(declare-fun call!410567 () (Set Context!9796))

(assert (=> bm!410558 (= call!410563 call!410567)))

(declare-fun b!5530086 () Bool)

(declare-fun e!3418568 () (Set Context!9796))

(assert (=> b!5530086 (= e!3418568 call!410563)))

(declare-fun b!5530087 () Bool)

(declare-fun e!3418571 () (Set Context!9796))

(declare-fun e!3418567 () (Set Context!9796))

(assert (=> b!5530087 (= e!3418571 e!3418567)))

(declare-fun c!967758 () Bool)

(assert (=> b!5530087 (= c!967758 (is-Union!15514 (h!69165 (exprs!5398 lt!2247908))))))

(declare-fun b!5530088 () Bool)

(assert (=> b!5530088 (= e!3418571 (set.insert (Context!9797 (t!376098 (exprs!5398 lt!2247908))) (as set.empty (Set Context!9796))))))

(declare-fun b!5530090 () Bool)

(declare-fun e!3418572 () Bool)

(assert (=> b!5530090 (= e!3418572 (nullable!5548 (regOne!31540 (h!69165 (exprs!5398 lt!2247908)))))))

(declare-fun b!5530091 () Bool)

(declare-fun call!410562 () (Set Context!9796))

(declare-fun call!410566 () (Set Context!9796))

(assert (=> b!5530091 (= e!3418567 (set.union call!410562 call!410566))))

(declare-fun bm!410559 () Bool)

(declare-fun call!410565 () List!62841)

(assert (=> bm!410559 (= call!410565 call!410564)))

(declare-fun b!5530092 () Bool)

(declare-fun c!967759 () Bool)

(assert (=> b!5530092 (= c!967759 (is-Star!15514 (h!69165 (exprs!5398 lt!2247908))))))

(declare-fun e!3418570 () (Set Context!9796))

(assert (=> b!5530092 (= e!3418568 e!3418570)))

(declare-fun bm!410560 () Bool)

(assert (=> bm!410560 (= call!410562 (derivationStepZipperDown!856 (ite c!967758 (regOne!31541 (h!69165 (exprs!5398 lt!2247908))) (regOne!31540 (h!69165 (exprs!5398 lt!2247908)))) (ite c!967758 (Context!9797 (t!376098 (exprs!5398 lt!2247908))) (Context!9797 call!410564)) (h!69166 s!2326)))))

(declare-fun b!5530093 () Bool)

(assert (=> b!5530093 (= c!967757 e!3418572)))

(declare-fun res!2354609 () Bool)

(assert (=> b!5530093 (=> (not res!2354609) (not e!3418572))))

(assert (=> b!5530093 (= res!2354609 (is-Concat!24359 (h!69165 (exprs!5398 lt!2247908))))))

(declare-fun e!3418569 () (Set Context!9796))

(assert (=> b!5530093 (= e!3418567 e!3418569)))

(declare-fun b!5530089 () Bool)

(assert (=> b!5530089 (= e!3418569 e!3418568)))

(assert (=> b!5530089 (= c!967760 (is-Concat!24359 (h!69165 (exprs!5398 lt!2247908))))))

(declare-fun d!1752411 () Bool)

(declare-fun c!967761 () Bool)

(assert (=> d!1752411 (= c!967761 (and (is-ElementMatch!15514 (h!69165 (exprs!5398 lt!2247908))) (= (c!967395 (h!69165 (exprs!5398 lt!2247908))) (h!69166 s!2326))))))

(assert (=> d!1752411 (= (derivationStepZipperDown!856 (h!69165 (exprs!5398 lt!2247908)) (Context!9797 (t!376098 (exprs!5398 lt!2247908))) (h!69166 s!2326)) e!3418571)))

(declare-fun bm!410561 () Bool)

(assert (=> bm!410561 (= call!410566 (derivationStepZipperDown!856 (ite c!967758 (regTwo!31541 (h!69165 (exprs!5398 lt!2247908))) (ite c!967757 (regTwo!31540 (h!69165 (exprs!5398 lt!2247908))) (ite c!967760 (regOne!31540 (h!69165 (exprs!5398 lt!2247908))) (reg!15843 (h!69165 (exprs!5398 lt!2247908)))))) (ite (or c!967758 c!967757) (Context!9797 (t!376098 (exprs!5398 lt!2247908))) (Context!9797 call!410565)) (h!69166 s!2326)))))

(declare-fun b!5530094 () Bool)

(assert (=> b!5530094 (= e!3418569 (set.union call!410562 call!410567))))

(declare-fun b!5530095 () Bool)

(assert (=> b!5530095 (= e!3418570 call!410563)))

(declare-fun b!5530096 () Bool)

(assert (=> b!5530096 (= e!3418570 (as set.empty (Set Context!9796)))))

(declare-fun bm!410562 () Bool)

(assert (=> bm!410562 (= call!410567 call!410566)))

(assert (= (and d!1752411 c!967761) b!5530088))

(assert (= (and d!1752411 (not c!967761)) b!5530087))

(assert (= (and b!5530087 c!967758) b!5530091))

(assert (= (and b!5530087 (not c!967758)) b!5530093))

(assert (= (and b!5530093 res!2354609) b!5530090))

(assert (= (and b!5530093 c!967757) b!5530094))

(assert (= (and b!5530093 (not c!967757)) b!5530089))

(assert (= (and b!5530089 c!967760) b!5530086))

(assert (= (and b!5530089 (not c!967760)) b!5530092))

(assert (= (and b!5530092 c!967759) b!5530095))

(assert (= (and b!5530092 (not c!967759)) b!5530096))

(assert (= (or b!5530086 b!5530095) bm!410559))

(assert (= (or b!5530086 b!5530095) bm!410558))

(assert (= (or b!5530094 bm!410559) bm!410557))

(assert (= (or b!5530094 bm!410558) bm!410562))

(assert (= (or b!5530091 bm!410562) bm!410561))

(assert (= (or b!5530091 b!5530094) bm!410560))

(declare-fun m!6532104 () Bool)

(assert (=> bm!410557 m!6532104))

(declare-fun m!6532106 () Bool)

(assert (=> bm!410560 m!6532106))

(declare-fun m!6532108 () Bool)

(assert (=> b!5530090 m!6532108))

(declare-fun m!6532110 () Bool)

(assert (=> bm!410561 m!6532110))

(declare-fun m!6532112 () Bool)

(assert (=> b!5530088 m!6532112))

(assert (=> bm!410423 d!1752411))

(declare-fun d!1752413 () Bool)

(assert (=> d!1752413 (= (Exists!2614 (ite c!967444 lambda!296674 lambda!296675)) (choose!42008 (ite c!967444 lambda!296674 lambda!296675)))))

(declare-fun bs!1277793 () Bool)

(assert (= bs!1277793 d!1752413))

(declare-fun m!6532114 () Bool)

(assert (=> bs!1277793 m!6532114))

(assert (=> bm!410376 d!1752413))

(declare-fun bm!410563 () Bool)

(declare-fun c!967762 () Bool)

(declare-fun call!410570 () List!62841)

(declare-fun c!967765 () Bool)

(assert (=> bm!410563 (= call!410570 ($colon$colon!1593 (exprs!5398 (ite c!967506 lt!2247927 (Context!9797 call!410423))) (ite (or c!967762 c!967765) (regTwo!31540 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292)))) (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292))))))))

(declare-fun bm!410564 () Bool)

(declare-fun call!410569 () (Set Context!9796))

(declare-fun call!410573 () (Set Context!9796))

(assert (=> bm!410564 (= call!410569 call!410573)))

(declare-fun b!5530097 () Bool)

(declare-fun e!3418574 () (Set Context!9796))

(assert (=> b!5530097 (= e!3418574 call!410569)))

(declare-fun b!5530098 () Bool)

(declare-fun e!3418577 () (Set Context!9796))

(declare-fun e!3418573 () (Set Context!9796))

(assert (=> b!5530098 (= e!3418577 e!3418573)))

(declare-fun c!967763 () Bool)

(assert (=> b!5530098 (= c!967763 (is-Union!15514 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292)))))))

(declare-fun b!5530099 () Bool)

(assert (=> b!5530099 (= e!3418577 (set.insert (ite c!967506 lt!2247927 (Context!9797 call!410423)) (as set.empty (Set Context!9796))))))

(declare-fun b!5530101 () Bool)

(declare-fun e!3418578 () Bool)

(assert (=> b!5530101 (= e!3418578 (nullable!5548 (regOne!31540 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292))))))))

(declare-fun b!5530102 () Bool)

(declare-fun call!410568 () (Set Context!9796))

(declare-fun call!410572 () (Set Context!9796))

(assert (=> b!5530102 (= e!3418573 (set.union call!410568 call!410572))))

(declare-fun bm!410565 () Bool)

(declare-fun call!410571 () List!62841)

(assert (=> bm!410565 (= call!410571 call!410570)))

(declare-fun b!5530103 () Bool)

(declare-fun c!967764 () Bool)

(assert (=> b!5530103 (= c!967764 (is-Star!15514 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292)))))))

(declare-fun e!3418576 () (Set Context!9796))

(assert (=> b!5530103 (= e!3418574 e!3418576)))

(declare-fun bm!410566 () Bool)

(assert (=> bm!410566 (= call!410568 (derivationStepZipperDown!856 (ite c!967763 (regOne!31541 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292)))) (regOne!31540 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292))))) (ite c!967763 (ite c!967506 lt!2247927 (Context!9797 call!410423)) (Context!9797 call!410570)) (h!69166 s!2326)))))

(declare-fun b!5530104 () Bool)

(assert (=> b!5530104 (= c!967762 e!3418578)))

(declare-fun res!2354610 () Bool)

(assert (=> b!5530104 (=> (not res!2354610) (not e!3418578))))

(assert (=> b!5530104 (= res!2354610 (is-Concat!24359 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292)))))))

(declare-fun e!3418575 () (Set Context!9796))

(assert (=> b!5530104 (= e!3418573 e!3418575)))

(declare-fun b!5530100 () Bool)

(assert (=> b!5530100 (= e!3418575 e!3418574)))

(assert (=> b!5530100 (= c!967765 (is-Concat!24359 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292)))))))

(declare-fun c!967766 () Bool)

(declare-fun d!1752415 () Bool)

(assert (=> d!1752415 (= c!967766 (and (is-ElementMatch!15514 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292)))) (= (c!967395 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292)))) (h!69166 s!2326))))))

(assert (=> d!1752415 (= (derivationStepZipperDown!856 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292))) (ite c!967506 lt!2247927 (Context!9797 call!410423)) (h!69166 s!2326)) e!3418577)))

(declare-fun bm!410567 () Bool)

(assert (=> bm!410567 (= call!410572 (derivationStepZipperDown!856 (ite c!967763 (regTwo!31541 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292)))) (ite c!967762 (regTwo!31540 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292)))) (ite c!967765 (regOne!31540 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292)))) (reg!15843 (ite c!967506 (regOne!31541 (regTwo!31540 r!7292)) (regOne!31540 (regTwo!31540 r!7292))))))) (ite (or c!967763 c!967762) (ite c!967506 lt!2247927 (Context!9797 call!410423)) (Context!9797 call!410571)) (h!69166 s!2326)))))

(declare-fun b!5530105 () Bool)

(assert (=> b!5530105 (= e!3418575 (set.union call!410568 call!410573))))

(declare-fun b!5530106 () Bool)

(assert (=> b!5530106 (= e!3418576 call!410569)))

(declare-fun b!5530107 () Bool)

(assert (=> b!5530107 (= e!3418576 (as set.empty (Set Context!9796)))))

(declare-fun bm!410568 () Bool)

(assert (=> bm!410568 (= call!410573 call!410572)))

(assert (= (and d!1752415 c!967766) b!5530099))

(assert (= (and d!1752415 (not c!967766)) b!5530098))

(assert (= (and b!5530098 c!967763) b!5530102))

(assert (= (and b!5530098 (not c!967763)) b!5530104))

(assert (= (and b!5530104 res!2354610) b!5530101))

(assert (= (and b!5530104 c!967762) b!5530105))

(assert (= (and b!5530104 (not c!967762)) b!5530100))

(assert (= (and b!5530100 c!967765) b!5530097))

(assert (= (and b!5530100 (not c!967765)) b!5530103))

(assert (= (and b!5530103 c!967764) b!5530106))

(assert (= (and b!5530103 (not c!967764)) b!5530107))

(assert (= (or b!5530097 b!5530106) bm!410565))

(assert (= (or b!5530097 b!5530106) bm!410564))

(assert (= (or b!5530105 bm!410565) bm!410563))

(assert (= (or b!5530105 bm!410564) bm!410568))

(assert (= (or b!5530102 bm!410568) bm!410567))

(assert (= (or b!5530102 b!5530105) bm!410566))

(declare-fun m!6532116 () Bool)

(assert (=> bm!410563 m!6532116))

(declare-fun m!6532118 () Bool)

(assert (=> bm!410566 m!6532118))

(declare-fun m!6532120 () Bool)

(assert (=> b!5530101 m!6532120))

(declare-fun m!6532122 () Bool)

(assert (=> bm!410567 m!6532122))

(declare-fun m!6532124 () Bool)

(assert (=> b!5530099 m!6532124))

(assert (=> bm!410419 d!1752415))

(declare-fun d!1752417 () Bool)

(declare-fun c!967767 () Bool)

(assert (=> d!1752417 (= c!967767 (isEmpty!34511 (tail!10927 s!2326)))))

(declare-fun e!3418579 () Bool)

(assert (=> d!1752417 (= (matchZipper!1672 (derivationStepZipper!1619 lt!2247909 (head!11832 s!2326)) (tail!10927 s!2326)) e!3418579)))

(declare-fun b!5530108 () Bool)

(assert (=> b!5530108 (= e!3418579 (nullableZipper!1540 (derivationStepZipper!1619 lt!2247909 (head!11832 s!2326))))))

(declare-fun b!5530109 () Bool)

(assert (=> b!5530109 (= e!3418579 (matchZipper!1672 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247909 (head!11832 s!2326)) (head!11832 (tail!10927 s!2326))) (tail!10927 (tail!10927 s!2326))))))

(assert (= (and d!1752417 c!967767) b!5530108))

(assert (= (and d!1752417 (not c!967767)) b!5530109))

(assert (=> d!1752417 m!6531112))

(assert (=> d!1752417 m!6531210))

(assert (=> b!5530108 m!6531110))

(declare-fun m!6532126 () Bool)

(assert (=> b!5530108 m!6532126))

(assert (=> b!5530109 m!6531112))

(assert (=> b!5530109 m!6531946))

(assert (=> b!5530109 m!6531110))

(assert (=> b!5530109 m!6531946))

(declare-fun m!6532128 () Bool)

(assert (=> b!5530109 m!6532128))

(assert (=> b!5530109 m!6531112))

(assert (=> b!5530109 m!6531950))

(assert (=> b!5530109 m!6532128))

(assert (=> b!5530109 m!6531950))

(declare-fun m!6532130 () Bool)

(assert (=> b!5530109 m!6532130))

(assert (=> b!5528968 d!1752417))

(declare-fun bs!1277794 () Bool)

(declare-fun d!1752419 () Bool)

(assert (= bs!1277794 (and d!1752419 d!1752037)))

(declare-fun lambda!296793 () Int)

(assert (=> bs!1277794 (= (= (head!11832 s!2326) (h!69166 s!2326)) (= lambda!296793 lambda!296660))))

(declare-fun bs!1277795 () Bool)

(assert (= bs!1277795 (and d!1752419 d!1752073)))

(assert (=> bs!1277795 (= (= (head!11832 s!2326) (h!69166 s!2326)) (= lambda!296793 lambda!296676))))

(declare-fun bs!1277796 () Bool)

(assert (= bs!1277796 (and d!1752419 b!5528779)))

(assert (=> bs!1277796 (= (= (head!11832 s!2326) (h!69166 s!2326)) (= lambda!296793 lambda!296636))))

(declare-fun bs!1277797 () Bool)

(assert (= bs!1277797 (and d!1752419 d!1752381)))

(assert (=> bs!1277797 (= (= (head!11832 s!2326) (head!11832 (t!376099 s!2326))) (= lambda!296793 lambda!296783))))

(declare-fun bs!1277798 () Bool)

(assert (= bs!1277798 (and d!1752419 d!1752313)))

(assert (=> bs!1277798 (= (= (head!11832 s!2326) (head!11832 (t!376099 s!2326))) (= lambda!296793 lambda!296777))))

(declare-fun bs!1277799 () Bool)

(assert (= bs!1277799 (and d!1752419 d!1752125)))

(assert (=> bs!1277799 (= (= (head!11832 s!2326) (h!69166 s!2326)) (= lambda!296793 lambda!296704))))

(declare-fun bs!1277800 () Bool)

(assert (= bs!1277800 (and d!1752419 d!1752389)))

(assert (=> bs!1277800 (= (= (head!11832 s!2326) (head!11832 (t!376099 s!2326))) (= lambda!296793 lambda!296784))))

(declare-fun bs!1277801 () Bool)

(assert (= bs!1277801 (and d!1752419 d!1752265)))

(assert (=> bs!1277801 (= (= (head!11832 s!2326) (head!11832 (t!376099 s!2326))) (= lambda!296793 lambda!296769))))

(assert (=> d!1752419 true))

(assert (=> d!1752419 (= (derivationStepZipper!1619 lt!2247909 (head!11832 s!2326)) (flatMap!1127 lt!2247909 lambda!296793))))

(declare-fun bs!1277802 () Bool)

(assert (= bs!1277802 d!1752419))

(declare-fun m!6532132 () Bool)

(assert (=> bs!1277802 m!6532132))

(assert (=> b!5528968 d!1752419))

(assert (=> b!5528968 d!1752321))

(assert (=> b!5528968 d!1752273))

(declare-fun d!1752421 () Bool)

(assert (=> d!1752421 (= (nullable!5548 (h!69165 (exprs!5398 (h!69167 zl!343)))) (nullableFct!1672 (h!69165 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun bs!1277803 () Bool)

(assert (= bs!1277803 d!1752421))

(declare-fun m!6532134 () Bool)

(assert (=> bs!1277803 m!6532134))

(assert (=> b!5529262 d!1752421))

(declare-fun b!5530110 () Bool)

(declare-fun res!2354617 () Bool)

(declare-fun e!3418580 () Bool)

(assert (=> b!5530110 (=> (not res!2354617) (not e!3418580))))

(assert (=> b!5530110 (= res!2354617 (isEmpty!34511 (tail!10927 (_2!35914 (get!21587 lt!2248045)))))))

(declare-fun b!5530111 () Bool)

(declare-fun e!3418586 () Bool)

(declare-fun e!3418582 () Bool)

(assert (=> b!5530111 (= e!3418586 e!3418582)))

(declare-fun res!2354615 () Bool)

(assert (=> b!5530111 (=> (not res!2354615) (not e!3418582))))

(declare-fun lt!2248215 () Bool)

(assert (=> b!5530111 (= res!2354615 (not lt!2248215))))

(declare-fun b!5530112 () Bool)

(declare-fun e!3418585 () Bool)

(assert (=> b!5530112 (= e!3418585 (matchR!7699 (derivativeStep!4379 (regTwo!31540 r!7292) (head!11832 (_2!35914 (get!21587 lt!2248045)))) (tail!10927 (_2!35914 (get!21587 lt!2248045)))))))

(declare-fun b!5530113 () Bool)

(declare-fun e!3418583 () Bool)

(assert (=> b!5530113 (= e!3418583 (not (= (head!11832 (_2!35914 (get!21587 lt!2248045))) (c!967395 (regTwo!31540 r!7292)))))))

(declare-fun bm!410569 () Bool)

(declare-fun call!410574 () Bool)

(assert (=> bm!410569 (= call!410574 (isEmpty!34511 (_2!35914 (get!21587 lt!2248045))))))

(declare-fun b!5530114 () Bool)

(declare-fun res!2354611 () Bool)

(assert (=> b!5530114 (=> res!2354611 e!3418586)))

(assert (=> b!5530114 (= res!2354611 e!3418580)))

(declare-fun res!2354618 () Bool)

(assert (=> b!5530114 (=> (not res!2354618) (not e!3418580))))

(assert (=> b!5530114 (= res!2354618 lt!2248215)))

(declare-fun b!5530115 () Bool)

(assert (=> b!5530115 (= e!3418580 (= (head!11832 (_2!35914 (get!21587 lt!2248045))) (c!967395 (regTwo!31540 r!7292))))))

(declare-fun b!5530116 () Bool)

(assert (=> b!5530116 (= e!3418582 e!3418583)))

(declare-fun res!2354616 () Bool)

(assert (=> b!5530116 (=> res!2354616 e!3418583)))

(assert (=> b!5530116 (= res!2354616 call!410574)))

(declare-fun d!1752423 () Bool)

(declare-fun e!3418581 () Bool)

(assert (=> d!1752423 e!3418581))

(declare-fun c!967769 () Bool)

(assert (=> d!1752423 (= c!967769 (is-EmptyExpr!15514 (regTwo!31540 r!7292)))))

(assert (=> d!1752423 (= lt!2248215 e!3418585)))

(declare-fun c!967770 () Bool)

(assert (=> d!1752423 (= c!967770 (isEmpty!34511 (_2!35914 (get!21587 lt!2248045))))))

(assert (=> d!1752423 (validRegex!7250 (regTwo!31540 r!7292))))

(assert (=> d!1752423 (= (matchR!7699 (regTwo!31540 r!7292) (_2!35914 (get!21587 lt!2248045))) lt!2248215)))

(declare-fun b!5530117 () Bool)

(declare-fun e!3418584 () Bool)

(assert (=> b!5530117 (= e!3418581 e!3418584)))

(declare-fun c!967768 () Bool)

(assert (=> b!5530117 (= c!967768 (is-EmptyLang!15514 (regTwo!31540 r!7292)))))

(declare-fun b!5530118 () Bool)

(declare-fun res!2354612 () Bool)

(assert (=> b!5530118 (=> res!2354612 e!3418583)))

(assert (=> b!5530118 (= res!2354612 (not (isEmpty!34511 (tail!10927 (_2!35914 (get!21587 lt!2248045))))))))

(declare-fun b!5530119 () Bool)

(declare-fun res!2354614 () Bool)

(assert (=> b!5530119 (=> (not res!2354614) (not e!3418580))))

(assert (=> b!5530119 (= res!2354614 (not call!410574))))

(declare-fun b!5530120 () Bool)

(assert (=> b!5530120 (= e!3418585 (nullable!5548 (regTwo!31540 r!7292)))))

(declare-fun b!5530121 () Bool)

(assert (=> b!5530121 (= e!3418581 (= lt!2248215 call!410574))))

(declare-fun b!5530122 () Bool)

(assert (=> b!5530122 (= e!3418584 (not lt!2248215))))

(declare-fun b!5530123 () Bool)

(declare-fun res!2354613 () Bool)

(assert (=> b!5530123 (=> res!2354613 e!3418586)))

(assert (=> b!5530123 (= res!2354613 (not (is-ElementMatch!15514 (regTwo!31540 r!7292))))))

(assert (=> b!5530123 (= e!3418584 e!3418586)))

(assert (= (and d!1752423 c!967770) b!5530120))

(assert (= (and d!1752423 (not c!967770)) b!5530112))

(assert (= (and d!1752423 c!967769) b!5530121))

(assert (= (and d!1752423 (not c!967769)) b!5530117))

(assert (= (and b!5530117 c!967768) b!5530122))

(assert (= (and b!5530117 (not c!967768)) b!5530123))

(assert (= (and b!5530123 (not res!2354613)) b!5530114))

(assert (= (and b!5530114 res!2354618) b!5530119))

(assert (= (and b!5530119 res!2354614) b!5530110))

(assert (= (and b!5530110 res!2354617) b!5530115))

(assert (= (and b!5530114 (not res!2354611)) b!5530111))

(assert (= (and b!5530111 res!2354615) b!5530116))

(assert (= (and b!5530116 (not res!2354616)) b!5530118))

(assert (= (and b!5530118 (not res!2354612)) b!5530113))

(assert (= (or b!5530121 b!5530119 b!5530116) bm!410569))

(declare-fun m!6532136 () Bool)

(assert (=> b!5530112 m!6532136))

(assert (=> b!5530112 m!6532136))

(declare-fun m!6532138 () Bool)

(assert (=> b!5530112 m!6532138))

(declare-fun m!6532140 () Bool)

(assert (=> b!5530112 m!6532140))

(assert (=> b!5530112 m!6532138))

(assert (=> b!5530112 m!6532140))

(declare-fun m!6532142 () Bool)

(assert (=> b!5530112 m!6532142))

(declare-fun m!6532144 () Bool)

(assert (=> b!5530120 m!6532144))

(declare-fun m!6532146 () Bool)

(assert (=> d!1752423 m!6532146))

(declare-fun m!6532148 () Bool)

(assert (=> d!1752423 m!6532148))

(assert (=> b!5530113 m!6532136))

(assert (=> b!5530115 m!6532136))

(assert (=> b!5530118 m!6532140))

(assert (=> b!5530118 m!6532140))

(declare-fun m!6532150 () Bool)

(assert (=> b!5530118 m!6532150))

(assert (=> bm!410569 m!6532146))

(assert (=> b!5530110 m!6532140))

(assert (=> b!5530110 m!6532140))

(assert (=> b!5530110 m!6532150))

(assert (=> b!5529007 d!1752423))

(declare-fun d!1752425 () Bool)

(assert (=> d!1752425 (= (get!21587 lt!2248045) (v!51559 lt!2248045))))

(assert (=> b!5529007 d!1752425))

(declare-fun d!1752427 () Bool)

(assert (=> d!1752427 (= (nullable!5548 (regOne!31540 (regOne!31540 r!7292))) (nullableFct!1672 (regOne!31540 (regOne!31540 r!7292))))))

(declare-fun bs!1277804 () Bool)

(assert (= bs!1277804 d!1752427))

(declare-fun m!6532152 () Bool)

(assert (=> bs!1277804 m!6532152))

(assert (=> b!5529231 d!1752427))

(declare-fun d!1752429 () Bool)

(assert (=> d!1752429 true))

(assert (=> d!1752429 true))

(declare-fun res!2354619 () Bool)

(assert (=> d!1752429 (= (choose!42008 lambda!296635) res!2354619)))

(assert (=> d!1752051 d!1752429))

(declare-fun d!1752431 () Bool)

(assert (=> d!1752431 (= (Exists!2614 lambda!296663) (choose!42008 lambda!296663))))

(declare-fun bs!1277805 () Bool)

(assert (= bs!1277805 d!1752431))

(declare-fun m!6532154 () Bool)

(assert (=> bs!1277805 m!6532154))

(assert (=> d!1752057 d!1752431))

(assert (=> d!1752057 d!1752053))

(assert (=> d!1752057 d!1752331))

(assert (=> d!1752057 d!1752061))

(declare-fun bs!1277806 () Bool)

(declare-fun d!1752433 () Bool)

(assert (= bs!1277806 (and d!1752433 d!1752059)))

(declare-fun lambda!296796 () Int)

(assert (=> bs!1277806 (not (= lambda!296796 lambda!296669))))

(declare-fun bs!1277807 () Bool)

(assert (= bs!1277807 (and d!1752433 b!5529980)))

(assert (=> bs!1277807 (not (= lambda!296796 lambda!296781))))

(declare-fun bs!1277808 () Bool)

(assert (= bs!1277808 (and d!1752433 b!5529862)))

(assert (=> bs!1277808 (not (= lambda!296796 lambda!296775))))

(declare-fun bs!1277809 () Bool)

(assert (= bs!1277809 (and d!1752433 b!5529061)))

(assert (=> bs!1277809 (not (= lambda!296796 lambda!296674))))

(declare-fun bs!1277810 () Bool)

(assert (= bs!1277810 (and d!1752433 b!5529864)))

(assert (=> bs!1277810 (not (= lambda!296796 lambda!296776))))

(declare-fun bs!1277811 () Bool)

(assert (= bs!1277811 (and d!1752433 b!5528804)))

(assert (=> bs!1277811 (not (= lambda!296796 lambda!296635))))

(declare-fun bs!1277812 () Bool)

(assert (= bs!1277812 (and d!1752433 b!5529978)))

(assert (=> bs!1277812 (not (= lambda!296796 lambda!296780))))

(declare-fun bs!1277813 () Bool)

(assert (= bs!1277813 (and d!1752433 b!5529063)))

(assert (=> bs!1277813 (not (= lambda!296796 lambda!296675))))

(assert (=> bs!1277811 (= lambda!296796 lambda!296634)))

(assert (=> bs!1277806 (= lambda!296796 lambda!296668)))

(declare-fun bs!1277814 () Bool)

(assert (= bs!1277814 (and d!1752433 d!1752397)))

(assert (=> bs!1277814 (not (= lambda!296796 lambda!296790))))

(declare-fun bs!1277815 () Bool)

(assert (= bs!1277815 (and d!1752433 d!1752057)))

(assert (=> bs!1277815 (= lambda!296796 lambda!296663)))

(assert (=> bs!1277814 (= lambda!296796 lambda!296789)))

(assert (=> d!1752433 true))

(assert (=> d!1752433 true))

(assert (=> d!1752433 true))

(assert (=> d!1752433 (= (isDefined!12226 (findConcatSeparation!1937 (regOne!31540 r!7292) (regTwo!31540 r!7292) Nil!62718 s!2326 s!2326)) (Exists!2614 lambda!296796))))

(assert (=> d!1752433 true))

(declare-fun _$89!1635 () Unit!155488)

(assert (=> d!1752433 (= (choose!42009 (regOne!31540 r!7292) (regTwo!31540 r!7292) s!2326) _$89!1635)))

(declare-fun bs!1277816 () Bool)

(assert (= bs!1277816 d!1752433))

(assert (=> bs!1277816 m!6530924))

(assert (=> bs!1277816 m!6530924))

(assert (=> bs!1277816 m!6530926))

(declare-fun m!6532156 () Bool)

(assert (=> bs!1277816 m!6532156))

(assert (=> d!1752057 d!1752433))

(declare-fun d!1752435 () Bool)

(assert (=> d!1752435 (= (nullable!5548 (regOne!31540 (regTwo!31540 r!7292))) (nullableFct!1672 (regOne!31540 (regTwo!31540 r!7292))))))

(declare-fun bs!1277817 () Bool)

(assert (= bs!1277817 d!1752435))

(declare-fun m!6532158 () Bool)

(assert (=> bs!1277817 m!6532158))

(assert (=> b!5529242 d!1752435))

(declare-fun d!1752437 () Bool)

(assert (=> d!1752437 (= (isEmptyExpr!1086 lt!2248081) (is-EmptyExpr!15514 lt!2248081))))

(assert (=> b!5529197 d!1752437))

(declare-fun d!1752439 () Bool)

(assert (=> d!1752439 (= (nullable!5548 (reg!15843 r!7292)) (nullableFct!1672 (reg!15843 r!7292)))))

(declare-fun bs!1277818 () Bool)

(assert (= bs!1277818 d!1752439))

(declare-fun m!6532160 () Bool)

(assert (=> bs!1277818 m!6532160))

(assert (=> b!5529226 d!1752439))

(assert (=> d!1752065 d!1752293))

(assert (=> d!1752065 d!1752087))

(declare-fun d!1752441 () Bool)

(declare-fun res!2354624 () Bool)

(declare-fun e!3418589 () Bool)

(assert (=> d!1752441 (=> res!2354624 e!3418589)))

(assert (=> d!1752441 (= res!2354624 (is-Nil!62717 (exprs!5398 (h!69167 zl!343))))))

(assert (=> d!1752441 (= (forall!14692 (exprs!5398 (h!69167 zl!343)) lambda!296690) e!3418589)))

(declare-fun b!5530128 () Bool)

(declare-fun e!3418590 () Bool)

(assert (=> b!5530128 (= e!3418589 e!3418590)))

(declare-fun res!2354625 () Bool)

(assert (=> b!5530128 (=> (not res!2354625) (not e!3418590))))

(assert (=> b!5530128 (= res!2354625 (dynLambda!24523 lambda!296690 (h!69165 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun b!5530129 () Bool)

(assert (=> b!5530129 (= e!3418590 (forall!14692 (t!376098 (exprs!5398 (h!69167 zl!343))) lambda!296690))))

(assert (= (and d!1752441 (not res!2354624)) b!5530128))

(assert (= (and b!5530128 res!2354625) b!5530129))

(declare-fun b_lambda!209873 () Bool)

(assert (=> (not b_lambda!209873) (not b!5530128)))

(declare-fun m!6532162 () Bool)

(assert (=> b!5530128 m!6532162))

(declare-fun m!6532164 () Bool)

(assert (=> b!5530129 m!6532164))

(assert (=> d!1752085 d!1752441))

(declare-fun bs!1277819 () Bool)

(declare-fun d!1752443 () Bool)

(assert (= bs!1277819 (and d!1752443 b!5529278)))

(declare-fun lambda!296797 () Int)

(assert (=> bs!1277819 (not (= lambda!296797 lambda!296702))))

(declare-fun bs!1277820 () Bool)

(assert (= bs!1277820 (and d!1752443 b!5529273)))

(assert (=> bs!1277820 (not (= lambda!296797 lambda!296699))))

(declare-fun bs!1277821 () Bool)

(assert (= bs!1277821 (and d!1752443 d!1752297)))

(assert (=> bs!1277821 (= lambda!296797 lambda!296773)))

(declare-fun bs!1277822 () Bool)

(assert (= bs!1277822 (and d!1752443 b!5529280)))

(assert (=> bs!1277822 (not (= lambda!296797 lambda!296703))))

(declare-fun bs!1277823 () Bool)

(assert (= bs!1277823 (and d!1752443 d!1752399)))

(assert (=> bs!1277823 (= lambda!296797 lambda!296791)))

(declare-fun bs!1277824 () Bool)

(assert (= bs!1277824 (and d!1752443 b!5529285)))

(assert (=> bs!1277824 (not (= lambda!296797 lambda!296706))))

(declare-fun bs!1277825 () Bool)

(assert (= bs!1277825 (and d!1752443 d!1752315)))

(assert (=> bs!1277825 (= lambda!296797 lambda!296778)))

(declare-fun bs!1277826 () Bool)

(assert (= bs!1277826 (and d!1752443 d!1752409)))

(assert (=> bs!1277826 (= lambda!296797 lambda!296792)))

(declare-fun bs!1277827 () Bool)

(assert (= bs!1277827 (and d!1752443 d!1752357)))

(assert (=> bs!1277827 (= lambda!296797 lambda!296782)))

(declare-fun bs!1277828 () Bool)

(assert (= bs!1277828 (and d!1752443 b!5529287)))

(assert (=> bs!1277828 (not (= lambda!296797 lambda!296707))))

(declare-fun bs!1277829 () Bool)

(assert (= bs!1277829 (and d!1752443 b!5529275)))

(assert (=> bs!1277829 (not (= lambda!296797 lambda!296700))))

(assert (=> d!1752443 (= (nullableZipper!1540 (derivationStepZipper!1619 lt!2247909 (h!69166 s!2326))) (exists!2148 (derivationStepZipper!1619 lt!2247909 (h!69166 s!2326)) lambda!296797))))

(declare-fun bs!1277830 () Bool)

(assert (= bs!1277830 d!1752443))

(assert (=> bs!1277830 m!6530910))

(declare-fun m!6532166 () Bool)

(assert (=> bs!1277830 m!6532166))

(assert (=> b!5528969 d!1752443))

(assert (=> b!5528961 d!1752083))

(declare-fun bs!1277831 () Bool)

(declare-fun d!1752445 () Bool)

(assert (= bs!1277831 (and d!1752445 d!1752257)))

(declare-fun lambda!296798 () Int)

(assert (=> bs!1277831 (= lambda!296798 lambda!296768)))

(declare-fun bs!1277832 () Bool)

(assert (= bs!1277832 (and d!1752445 b!5529288)))

(assert (=> bs!1277832 (not (= lambda!296798 lambda!296708))))

(declare-fun bs!1277833 () Bool)

(assert (= bs!1277833 (and d!1752445 b!5529167)))

(assert (=> bs!1277833 (not (= lambda!296798 lambda!296683))))

(declare-fun bs!1277834 () Bool)

(assert (= bs!1277834 (and d!1752445 d!1752031)))

(assert (=> bs!1277834 (= lambda!296798 lambda!296657)))

(declare-fun bs!1277835 () Bool)

(assert (= bs!1277835 (and d!1752445 d!1752349)))

(assert (=> bs!1277835 (= lambda!296798 lambda!296779)))

(declare-fun bs!1277836 () Bool)

(assert (= bs!1277836 (and d!1752445 b!5529162)))

(assert (=> bs!1277836 (not (= lambda!296798 lambda!296681))))

(declare-fun bs!1277837 () Bool)

(assert (= bs!1277837 (and d!1752445 d!1752277)))

(assert (=> bs!1277837 (= lambda!296798 lambda!296770)))

(declare-fun bs!1277838 () Bool)

(assert (= bs!1277838 (and d!1752445 d!1752115)))

(assert (=> bs!1277838 (= lambda!296798 lambda!296691)))

(declare-fun bs!1277839 () Bool)

(assert (= bs!1277839 (and d!1752445 d!1752085)))

(assert (=> bs!1277839 (= lambda!296798 lambda!296690)))

(declare-fun bs!1277840 () Bool)

(assert (= bs!1277840 (and d!1752445 b!5529169)))

(assert (=> bs!1277840 (not (= lambda!296798 lambda!296684))))

(declare-fun bs!1277841 () Bool)

(assert (= bs!1277841 (and d!1752445 b!5529164)))

(assert (=> bs!1277841 (not (= lambda!296798 lambda!296682))))

(declare-fun bs!1277842 () Bool)

(assert (= bs!1277842 (and d!1752445 b!5529290)))

(assert (=> bs!1277842 (not (= lambda!296798 lambda!296709))))

(declare-fun bs!1277843 () Bool)

(assert (= bs!1277843 (and d!1752445 d!1752029)))

(assert (=> bs!1277843 (= lambda!296798 lambda!296654)))

(declare-fun bs!1277844 () Bool)

(assert (= bs!1277844 (and d!1752445 d!1752299)))

(assert (=> bs!1277844 (= lambda!296798 lambda!296774)))

(declare-fun bs!1277845 () Bool)

(assert (= bs!1277845 (and d!1752445 d!1752083)))

(assert (=> bs!1277845 (= lambda!296798 lambda!296687)))

(declare-fun lt!2248216 () List!62841)

(assert (=> d!1752445 (forall!14692 lt!2248216 lambda!296798)))

(declare-fun e!3418591 () List!62841)

(assert (=> d!1752445 (= lt!2248216 e!3418591)))

(declare-fun c!967771 () Bool)

(assert (=> d!1752445 (= c!967771 (is-Cons!62719 (t!376100 zl!343)))))

(assert (=> d!1752445 (= (unfocusZipperList!942 (t!376100 zl!343)) lt!2248216)))

(declare-fun b!5530130 () Bool)

(assert (=> b!5530130 (= e!3418591 (Cons!62717 (generalisedConcat!1129 (exprs!5398 (h!69167 (t!376100 zl!343)))) (unfocusZipperList!942 (t!376100 (t!376100 zl!343)))))))

(declare-fun b!5530131 () Bool)

(assert (=> b!5530131 (= e!3418591 Nil!62717)))

(assert (= (and d!1752445 c!967771) b!5530130))

(assert (= (and d!1752445 (not c!967771)) b!5530131))

(declare-fun m!6532168 () Bool)

(assert (=> d!1752445 m!6532168))

(declare-fun m!6532170 () Bool)

(assert (=> b!5530130 m!6532170))

(declare-fun m!6532172 () Bool)

(assert (=> b!5530130 m!6532172))

(assert (=> b!5528961 d!1752445))

(declare-fun b!5530134 () Bool)

(declare-fun res!2354627 () Bool)

(declare-fun e!3418592 () Bool)

(assert (=> b!5530134 (=> (not res!2354627) (not e!3418592))))

(declare-fun lt!2248217 () List!62842)

(assert (=> b!5530134 (= res!2354627 (= (size!39943 lt!2248217) (+ (size!39943 (_1!35914 (get!21587 lt!2248045))) (size!39943 (_2!35914 (get!21587 lt!2248045))))))))

(declare-fun b!5530133 () Bool)

(declare-fun e!3418593 () List!62842)

(assert (=> b!5530133 (= e!3418593 (Cons!62718 (h!69166 (_1!35914 (get!21587 lt!2248045))) (++!13762 (t!376099 (_1!35914 (get!21587 lt!2248045))) (_2!35914 (get!21587 lt!2248045)))))))

(declare-fun b!5530135 () Bool)

(assert (=> b!5530135 (= e!3418592 (or (not (= (_2!35914 (get!21587 lt!2248045)) Nil!62718)) (= lt!2248217 (_1!35914 (get!21587 lt!2248045)))))))

(declare-fun b!5530132 () Bool)

(assert (=> b!5530132 (= e!3418593 (_2!35914 (get!21587 lt!2248045)))))

(declare-fun d!1752447 () Bool)

(assert (=> d!1752447 e!3418592))

(declare-fun res!2354626 () Bool)

(assert (=> d!1752447 (=> (not res!2354626) (not e!3418592))))

(assert (=> d!1752447 (= res!2354626 (= (content!11285 lt!2248217) (set.union (content!11285 (_1!35914 (get!21587 lt!2248045))) (content!11285 (_2!35914 (get!21587 lt!2248045))))))))

(assert (=> d!1752447 (= lt!2248217 e!3418593)))

(declare-fun c!967772 () Bool)

(assert (=> d!1752447 (= c!967772 (is-Nil!62718 (_1!35914 (get!21587 lt!2248045))))))

(assert (=> d!1752447 (= (++!13762 (_1!35914 (get!21587 lt!2248045)) (_2!35914 (get!21587 lt!2248045))) lt!2248217)))

(assert (= (and d!1752447 c!967772) b!5530132))

(assert (= (and d!1752447 (not c!967772)) b!5530133))

(assert (= (and d!1752447 res!2354626) b!5530134))

(assert (= (and b!5530134 res!2354627) b!5530135))

(declare-fun m!6532174 () Bool)

(assert (=> b!5530134 m!6532174))

(declare-fun m!6532176 () Bool)

(assert (=> b!5530134 m!6532176))

(declare-fun m!6532178 () Bool)

(assert (=> b!5530134 m!6532178))

(declare-fun m!6532180 () Bool)

(assert (=> b!5530133 m!6532180))

(declare-fun m!6532182 () Bool)

(assert (=> d!1752447 m!6532182))

(declare-fun m!6532184 () Bool)

(assert (=> d!1752447 m!6532184))

(declare-fun m!6532186 () Bool)

(assert (=> d!1752447 m!6532186))

(assert (=> b!5529003 d!1752447))

(assert (=> b!5529003 d!1752425))

(declare-fun d!1752449 () Bool)

(declare-fun res!2354628 () Bool)

(declare-fun e!3418594 () Bool)

(assert (=> d!1752449 (=> res!2354628 e!3418594)))

(assert (=> d!1752449 (= res!2354628 (is-Nil!62717 lt!2248035))))

(assert (=> d!1752449 (= (forall!14692 lt!2248035 lambda!296657) e!3418594)))

(declare-fun b!5530136 () Bool)

(declare-fun e!3418595 () Bool)

(assert (=> b!5530136 (= e!3418594 e!3418595)))

(declare-fun res!2354629 () Bool)

(assert (=> b!5530136 (=> (not res!2354629) (not e!3418595))))

(assert (=> b!5530136 (= res!2354629 (dynLambda!24523 lambda!296657 (h!69165 lt!2248035)))))

(declare-fun b!5530137 () Bool)

(assert (=> b!5530137 (= e!3418595 (forall!14692 (t!376098 lt!2248035) lambda!296657))))

(assert (= (and d!1752449 (not res!2354628)) b!5530136))

(assert (= (and b!5530136 res!2354629) b!5530137))

(declare-fun b_lambda!209875 () Bool)

(assert (=> (not b_lambda!209875) (not b!5530136)))

(declare-fun m!6532188 () Bool)

(assert (=> b!5530136 m!6532188))

(declare-fun m!6532190 () Bool)

(assert (=> b!5530137 m!6532190))

(assert (=> d!1752031 d!1752449))

(declare-fun c!967776 () Bool)

(declare-fun bm!410570 () Bool)

(declare-fun c!967773 () Bool)

(declare-fun call!410577 () List!62841)

(assert (=> bm!410570 (= call!410577 ($colon$colon!1593 (exprs!5398 (ite c!967501 lt!2247922 (Context!9797 call!410417))) (ite (or c!967773 c!967776) (regTwo!31540 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292)))) (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292))))))))

(declare-fun bm!410571 () Bool)

(declare-fun call!410576 () (Set Context!9796))

(declare-fun call!410580 () (Set Context!9796))

(assert (=> bm!410571 (= call!410576 call!410580)))

(declare-fun b!5530138 () Bool)

(declare-fun e!3418597 () (Set Context!9796))

(assert (=> b!5530138 (= e!3418597 call!410576)))

(declare-fun b!5530139 () Bool)

(declare-fun e!3418600 () (Set Context!9796))

(declare-fun e!3418596 () (Set Context!9796))

(assert (=> b!5530139 (= e!3418600 e!3418596)))

(declare-fun c!967774 () Bool)

(assert (=> b!5530139 (= c!967774 (is-Union!15514 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292)))))))

(declare-fun b!5530140 () Bool)

(assert (=> b!5530140 (= e!3418600 (set.insert (ite c!967501 lt!2247922 (Context!9797 call!410417)) (as set.empty (Set Context!9796))))))

(declare-fun b!5530142 () Bool)

(declare-fun e!3418601 () Bool)

(assert (=> b!5530142 (= e!3418601 (nullable!5548 (regOne!31540 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292))))))))

(declare-fun b!5530143 () Bool)

(declare-fun call!410575 () (Set Context!9796))

(declare-fun call!410579 () (Set Context!9796))

(assert (=> b!5530143 (= e!3418596 (set.union call!410575 call!410579))))

(declare-fun bm!410572 () Bool)

(declare-fun call!410578 () List!62841)

(assert (=> bm!410572 (= call!410578 call!410577)))

(declare-fun b!5530144 () Bool)

(declare-fun c!967775 () Bool)

(assert (=> b!5530144 (= c!967775 (is-Star!15514 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292)))))))

(declare-fun e!3418599 () (Set Context!9796))

(assert (=> b!5530144 (= e!3418597 e!3418599)))

(declare-fun bm!410573 () Bool)

(assert (=> bm!410573 (= call!410575 (derivationStepZipperDown!856 (ite c!967774 (regOne!31541 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292)))) (regOne!31540 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292))))) (ite c!967774 (ite c!967501 lt!2247922 (Context!9797 call!410417)) (Context!9797 call!410577)) (h!69166 s!2326)))))

(declare-fun b!5530145 () Bool)

(assert (=> b!5530145 (= c!967773 e!3418601)))

(declare-fun res!2354630 () Bool)

(assert (=> b!5530145 (=> (not res!2354630) (not e!3418601))))

(assert (=> b!5530145 (= res!2354630 (is-Concat!24359 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292)))))))

(declare-fun e!3418598 () (Set Context!9796))

(assert (=> b!5530145 (= e!3418596 e!3418598)))

(declare-fun b!5530141 () Bool)

(assert (=> b!5530141 (= e!3418598 e!3418597)))

(assert (=> b!5530141 (= c!967776 (is-Concat!24359 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292)))))))

(declare-fun c!967777 () Bool)

(declare-fun d!1752451 () Bool)

(assert (=> d!1752451 (= c!967777 (and (is-ElementMatch!15514 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292)))) (= (c!967395 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292)))) (h!69166 s!2326))))))

(assert (=> d!1752451 (= (derivationStepZipperDown!856 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292))) (ite c!967501 lt!2247922 (Context!9797 call!410417)) (h!69166 s!2326)) e!3418600)))

(declare-fun bm!410574 () Bool)

(assert (=> bm!410574 (= call!410579 (derivationStepZipperDown!856 (ite c!967774 (regTwo!31541 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292)))) (ite c!967773 (regTwo!31540 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292)))) (ite c!967776 (regOne!31540 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292)))) (reg!15843 (ite c!967501 (regOne!31541 (regOne!31540 r!7292)) (regOne!31540 (regOne!31540 r!7292))))))) (ite (or c!967774 c!967773) (ite c!967501 lt!2247922 (Context!9797 call!410417)) (Context!9797 call!410578)) (h!69166 s!2326)))))

(declare-fun b!5530146 () Bool)

(assert (=> b!5530146 (= e!3418598 (set.union call!410575 call!410580))))

(declare-fun b!5530147 () Bool)

(assert (=> b!5530147 (= e!3418599 call!410576)))

(declare-fun b!5530148 () Bool)

(assert (=> b!5530148 (= e!3418599 (as set.empty (Set Context!9796)))))

(declare-fun bm!410575 () Bool)

(assert (=> bm!410575 (= call!410580 call!410579)))

(assert (= (and d!1752451 c!967777) b!5530140))

(assert (= (and d!1752451 (not c!967777)) b!5530139))

(assert (= (and b!5530139 c!967774) b!5530143))

(assert (= (and b!5530139 (not c!967774)) b!5530145))

(assert (= (and b!5530145 res!2354630) b!5530142))

(assert (= (and b!5530145 c!967773) b!5530146))

(assert (= (and b!5530145 (not c!967773)) b!5530141))

(assert (= (and b!5530141 c!967776) b!5530138))

(assert (= (and b!5530141 (not c!967776)) b!5530144))

(assert (= (and b!5530144 c!967775) b!5530147))

(assert (= (and b!5530144 (not c!967775)) b!5530148))

(assert (= (or b!5530138 b!5530147) bm!410572))

(assert (= (or b!5530138 b!5530147) bm!410571))

(assert (= (or b!5530146 bm!410572) bm!410570))

(assert (= (or b!5530146 bm!410571) bm!410575))

(assert (= (or b!5530143 bm!410575) bm!410574))

(assert (= (or b!5530143 b!5530146) bm!410573))

(declare-fun m!6532192 () Bool)

(assert (=> bm!410570 m!6532192))

(declare-fun m!6532194 () Bool)

(assert (=> bm!410573 m!6532194))

(declare-fun m!6532196 () Bool)

(assert (=> b!5530142 m!6532196))

(declare-fun m!6532198 () Bool)

(assert (=> bm!410574 m!6532198))

(declare-fun m!6532200 () Bool)

(assert (=> b!5530140 m!6532200))

(assert (=> bm!410413 d!1752451))

(declare-fun d!1752453 () Bool)

(declare-fun c!967778 () Bool)

(assert (=> d!1752453 (= c!967778 (isEmpty!34511 (tail!10927 (t!376099 s!2326))))))

(declare-fun e!3418602 () Bool)

(assert (=> d!1752453 (= (matchZipper!1672 (derivationStepZipper!1619 lt!2247918 (head!11832 (t!376099 s!2326))) (tail!10927 (t!376099 s!2326))) e!3418602)))

(declare-fun b!5530149 () Bool)

(assert (=> b!5530149 (= e!3418602 (nullableZipper!1540 (derivationStepZipper!1619 lt!2247918 (head!11832 (t!376099 s!2326)))))))

(declare-fun b!5530150 () Bool)

(assert (=> b!5530150 (= e!3418602 (matchZipper!1672 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247918 (head!11832 (t!376099 s!2326))) (head!11832 (tail!10927 (t!376099 s!2326)))) (tail!10927 (tail!10927 (t!376099 s!2326)))))))

(assert (= (and d!1752453 c!967778) b!5530149))

(assert (= (and d!1752453 (not c!967778)) b!5530150))

(assert (=> d!1752453 m!6531124))

(assert (=> d!1752453 m!6531788))

(assert (=> b!5530149 m!6531150))

(declare-fun m!6532202 () Bool)

(assert (=> b!5530149 m!6532202))

(assert (=> b!5530150 m!6531124))

(assert (=> b!5530150 m!6531792))

(assert (=> b!5530150 m!6531150))

(assert (=> b!5530150 m!6531792))

(declare-fun m!6532204 () Bool)

(assert (=> b!5530150 m!6532204))

(assert (=> b!5530150 m!6531124))

(assert (=> b!5530150 m!6531796))

(assert (=> b!5530150 m!6532204))

(assert (=> b!5530150 m!6531796))

(declare-fun m!6532206 () Bool)

(assert (=> b!5530150 m!6532206))

(assert (=> b!5528980 d!1752453))

(declare-fun bs!1277846 () Bool)

(declare-fun d!1752455 () Bool)

(assert (= bs!1277846 (and d!1752455 d!1752037)))

(declare-fun lambda!296799 () Int)

(assert (=> bs!1277846 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296799 lambda!296660))))

(declare-fun bs!1277847 () Bool)

(assert (= bs!1277847 (and d!1752455 d!1752073)))

(assert (=> bs!1277847 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296799 lambda!296676))))

(declare-fun bs!1277848 () Bool)

(assert (= bs!1277848 (and d!1752455 b!5528779)))

(assert (=> bs!1277848 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296799 lambda!296636))))

(declare-fun bs!1277849 () Bool)

(assert (= bs!1277849 (and d!1752455 d!1752313)))

(assert (=> bs!1277849 (= lambda!296799 lambda!296777)))

(declare-fun bs!1277850 () Bool)

(assert (= bs!1277850 (and d!1752455 d!1752125)))

(assert (=> bs!1277850 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296799 lambda!296704))))

(declare-fun bs!1277851 () Bool)

(assert (= bs!1277851 (and d!1752455 d!1752389)))

(assert (=> bs!1277851 (= lambda!296799 lambda!296784)))

(declare-fun bs!1277852 () Bool)

(assert (= bs!1277852 (and d!1752455 d!1752265)))

(assert (=> bs!1277852 (= lambda!296799 lambda!296769)))

(declare-fun bs!1277853 () Bool)

(assert (= bs!1277853 (and d!1752455 d!1752381)))

(assert (=> bs!1277853 (= lambda!296799 lambda!296783)))

(declare-fun bs!1277854 () Bool)

(assert (= bs!1277854 (and d!1752455 d!1752419)))

(assert (=> bs!1277854 (= (= (head!11832 (t!376099 s!2326)) (head!11832 s!2326)) (= lambda!296799 lambda!296793))))

(assert (=> d!1752455 true))

(assert (=> d!1752455 (= (derivationStepZipper!1619 lt!2247918 (head!11832 (t!376099 s!2326))) (flatMap!1127 lt!2247918 lambda!296799))))

(declare-fun bs!1277855 () Bool)

(assert (= bs!1277855 d!1752455))

(declare-fun m!6532208 () Bool)

(assert (=> bs!1277855 m!6532208))

(assert (=> b!5528980 d!1752455))

(assert (=> b!5528980 d!1752267))

(assert (=> b!5528980 d!1752269))

(declare-fun d!1752457 () Bool)

(assert (=> d!1752457 (= ($colon$colon!1593 (exprs!5398 lt!2247927) (ite (or c!967466 c!967469) (regTwo!31540 r!7292) r!7292)) (Cons!62717 (ite (or c!967466 c!967469) (regTwo!31540 r!7292) r!7292) (exprs!5398 lt!2247927)))))

(assert (=> bm!410392 d!1752457))

(declare-fun d!1752459 () Bool)

(declare-fun c!967779 () Bool)

(assert (=> d!1752459 (= c!967779 (isEmpty!34511 (tail!10927 s!2326)))))

(declare-fun e!3418603 () Bool)

(assert (=> d!1752459 (= (matchZipper!1672 (derivationStepZipper!1619 lt!2247926 (head!11832 s!2326)) (tail!10927 s!2326)) e!3418603)))

(declare-fun b!5530151 () Bool)

(assert (=> b!5530151 (= e!3418603 (nullableZipper!1540 (derivationStepZipper!1619 lt!2247926 (head!11832 s!2326))))))

(declare-fun b!5530152 () Bool)

(assert (=> b!5530152 (= e!3418603 (matchZipper!1672 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247926 (head!11832 s!2326)) (head!11832 (tail!10927 s!2326))) (tail!10927 (tail!10927 s!2326))))))

(assert (= (and d!1752459 c!967779) b!5530151))

(assert (= (and d!1752459 (not c!967779)) b!5530152))

(assert (=> d!1752459 m!6531112))

(assert (=> d!1752459 m!6531210))

(assert (=> b!5530151 m!6531372))

(declare-fun m!6532210 () Bool)

(assert (=> b!5530151 m!6532210))

(assert (=> b!5530152 m!6531112))

(assert (=> b!5530152 m!6531946))

(assert (=> b!5530152 m!6531372))

(assert (=> b!5530152 m!6531946))

(declare-fun m!6532212 () Bool)

(assert (=> b!5530152 m!6532212))

(assert (=> b!5530152 m!6531112))

(assert (=> b!5530152 m!6531950))

(assert (=> b!5530152 m!6532212))

(assert (=> b!5530152 m!6531950))

(declare-fun m!6532214 () Bool)

(assert (=> b!5530152 m!6532214))

(assert (=> b!5529282 d!1752459))

(declare-fun bs!1277856 () Bool)

(declare-fun d!1752461 () Bool)

(assert (= bs!1277856 (and d!1752461 d!1752037)))

(declare-fun lambda!296800 () Int)

(assert (=> bs!1277856 (= (= (head!11832 s!2326) (h!69166 s!2326)) (= lambda!296800 lambda!296660))))

(declare-fun bs!1277857 () Bool)

(assert (= bs!1277857 (and d!1752461 d!1752073)))

(assert (=> bs!1277857 (= (= (head!11832 s!2326) (h!69166 s!2326)) (= lambda!296800 lambda!296676))))

(declare-fun bs!1277858 () Bool)

(assert (= bs!1277858 (and d!1752461 b!5528779)))

(assert (=> bs!1277858 (= (= (head!11832 s!2326) (h!69166 s!2326)) (= lambda!296800 lambda!296636))))

(declare-fun bs!1277859 () Bool)

(assert (= bs!1277859 (and d!1752461 d!1752313)))

(assert (=> bs!1277859 (= (= (head!11832 s!2326) (head!11832 (t!376099 s!2326))) (= lambda!296800 lambda!296777))))

(declare-fun bs!1277860 () Bool)

(assert (= bs!1277860 (and d!1752461 d!1752125)))

(assert (=> bs!1277860 (= (= (head!11832 s!2326) (h!69166 s!2326)) (= lambda!296800 lambda!296704))))

(declare-fun bs!1277861 () Bool)

(assert (= bs!1277861 (and d!1752461 d!1752455)))

(assert (=> bs!1277861 (= (= (head!11832 s!2326) (head!11832 (t!376099 s!2326))) (= lambda!296800 lambda!296799))))

(declare-fun bs!1277862 () Bool)

(assert (= bs!1277862 (and d!1752461 d!1752389)))

(assert (=> bs!1277862 (= (= (head!11832 s!2326) (head!11832 (t!376099 s!2326))) (= lambda!296800 lambda!296784))))

(declare-fun bs!1277863 () Bool)

(assert (= bs!1277863 (and d!1752461 d!1752265)))

(assert (=> bs!1277863 (= (= (head!11832 s!2326) (head!11832 (t!376099 s!2326))) (= lambda!296800 lambda!296769))))

(declare-fun bs!1277864 () Bool)

(assert (= bs!1277864 (and d!1752461 d!1752381)))

(assert (=> bs!1277864 (= (= (head!11832 s!2326) (head!11832 (t!376099 s!2326))) (= lambda!296800 lambda!296783))))

(declare-fun bs!1277865 () Bool)

(assert (= bs!1277865 (and d!1752461 d!1752419)))

(assert (=> bs!1277865 (= lambda!296800 lambda!296793)))

(assert (=> d!1752461 true))

(assert (=> d!1752461 (= (derivationStepZipper!1619 lt!2247926 (head!11832 s!2326)) (flatMap!1127 lt!2247926 lambda!296800))))

(declare-fun bs!1277866 () Bool)

(assert (= bs!1277866 d!1752461))

(declare-fun m!6532216 () Bool)

(assert (=> bs!1277866 m!6532216))

(assert (=> b!5529282 d!1752461))

(assert (=> b!5529282 d!1752321))

(assert (=> b!5529282 d!1752273))

(declare-fun d!1752463 () Bool)

(assert (=> d!1752463 (= (maxBigInt!0 (contextDepth!110 (h!69167 (Cons!62719 lt!2247922 Nil!62719))) (zipperDepth!197 (t!376100 (Cons!62719 lt!2247922 Nil!62719)))) (ite (>= (contextDepth!110 (h!69167 (Cons!62719 lt!2247922 Nil!62719))) (zipperDepth!197 (t!376100 (Cons!62719 lt!2247922 Nil!62719)))) (contextDepth!110 (h!69167 (Cons!62719 lt!2247922 Nil!62719))) (zipperDepth!197 (t!376100 (Cons!62719 lt!2247922 Nil!62719)))))))

(assert (=> b!5529285 d!1752463))

(declare-fun bs!1277867 () Bool)

(declare-fun d!1752465 () Bool)

(assert (= bs!1277867 (and d!1752465 b!5529278)))

(declare-fun lambda!296803 () Int)

(assert (=> bs!1277867 (not (= lambda!296803 lambda!296702))))

(declare-fun bs!1277868 () Bool)

(assert (= bs!1277868 (and d!1752465 b!5529273)))

(assert (=> bs!1277868 (not (= lambda!296803 lambda!296699))))

(declare-fun bs!1277869 () Bool)

(assert (= bs!1277869 (and d!1752465 d!1752297)))

(assert (=> bs!1277869 (not (= lambda!296803 lambda!296773))))

(declare-fun bs!1277870 () Bool)

(assert (= bs!1277870 (and d!1752465 b!5529280)))

(assert (=> bs!1277870 (not (= lambda!296803 lambda!296703))))

(declare-fun bs!1277871 () Bool)

(assert (= bs!1277871 (and d!1752465 b!5529285)))

(assert (=> bs!1277871 (not (= lambda!296803 lambda!296706))))

(declare-fun bs!1277872 () Bool)

(assert (= bs!1277872 (and d!1752465 d!1752315)))

(assert (=> bs!1277872 (not (= lambda!296803 lambda!296778))))

(declare-fun bs!1277873 () Bool)

(assert (= bs!1277873 (and d!1752465 d!1752409)))

(assert (=> bs!1277873 (not (= lambda!296803 lambda!296792))))

(declare-fun bs!1277874 () Bool)

(assert (= bs!1277874 (and d!1752465 d!1752357)))

(assert (=> bs!1277874 (not (= lambda!296803 lambda!296782))))

(declare-fun bs!1277875 () Bool)

(assert (= bs!1277875 (and d!1752465 d!1752443)))

(assert (=> bs!1277875 (not (= lambda!296803 lambda!296797))))

(declare-fun bs!1277876 () Bool)

(assert (= bs!1277876 (and d!1752465 d!1752399)))

(assert (=> bs!1277876 (not (= lambda!296803 lambda!296791))))

(declare-fun bs!1277877 () Bool)

(assert (= bs!1277877 (and d!1752465 b!5529287)))

(assert (=> bs!1277877 (not (= lambda!296803 lambda!296707))))

(declare-fun bs!1277878 () Bool)

(assert (= bs!1277878 (and d!1752465 b!5529275)))

(assert (=> bs!1277878 (not (= lambda!296803 lambda!296700))))

(assert (=> d!1752465 true))

(assert (=> d!1752465 true))

(declare-fun order!27133 () Int)

(declare-fun order!27131 () Int)

(declare-fun dynLambda!24525 (Int Int) Int)

(declare-fun dynLambda!24526 (Int Int) Int)

(assert (=> d!1752465 (< (dynLambda!24525 order!27131 lambda!296705) (dynLambda!24526 order!27133 lambda!296803))))

(assert (=> d!1752465 (forall!14693 (t!376100 (Cons!62719 lt!2247922 Nil!62719)) lambda!296803)))

(declare-fun lt!2248220 () Unit!155488)

(declare-fun choose!42024 (List!62843 Int Int Int) Unit!155488)

(assert (=> d!1752465 (= lt!2248220 (choose!42024 (t!376100 (Cons!62719 lt!2247922 Nil!62719)) lt!2248109 (zipperDepth!197 (t!376100 (Cons!62719 lt!2247922 Nil!62719))) lambda!296705))))

(assert (=> d!1752465 (>= lt!2248109 (zipperDepth!197 (t!376100 (Cons!62719 lt!2247922 Nil!62719))))))

(assert (=> d!1752465 (= (lemmaForallContextDepthBiggerThanTransitive!102 (t!376100 (Cons!62719 lt!2247922 Nil!62719)) lt!2248109 (zipperDepth!197 (t!376100 (Cons!62719 lt!2247922 Nil!62719))) lambda!296705) lt!2248220)))

(declare-fun bs!1277879 () Bool)

(assert (= bs!1277879 d!1752465))

(declare-fun m!6532218 () Bool)

(assert (=> bs!1277879 m!6532218))

(assert (=> bs!1277879 m!6531386))

(declare-fun m!6532220 () Bool)

(assert (=> bs!1277879 m!6532220))

(assert (=> b!5529285 d!1752465))

(declare-fun bs!1277880 () Bool)

(declare-fun b!5530157 () Bool)

(assert (= bs!1277880 (and b!5530157 b!5529273)))

(declare-fun lambda!296804 () Int)

(assert (=> bs!1277880 (= lambda!296804 lambda!296698)))

(declare-fun bs!1277881 () Bool)

(assert (= bs!1277881 (and b!5530157 b!5529278)))

(assert (=> bs!1277881 (= lambda!296804 lambda!296701)))

(declare-fun bs!1277882 () Bool)

(assert (= bs!1277882 (and b!5530157 b!5529285)))

(assert (=> bs!1277882 (= lambda!296804 lambda!296705)))

(declare-fun lambda!296805 () Int)

(declare-fun lt!2248224 () Int)

(assert (=> bs!1277881 (= (= lt!2248224 lt!2248105) (= lambda!296805 lambda!296702))))

(assert (=> bs!1277880 (= (= lt!2248224 lt!2248101) (= lambda!296805 lambda!296699))))

(declare-fun bs!1277883 () Bool)

(assert (= bs!1277883 (and b!5530157 d!1752297)))

(assert (=> bs!1277883 (not (= lambda!296805 lambda!296773))))

(declare-fun bs!1277884 () Bool)

(assert (= bs!1277884 (and b!5530157 b!5529280)))

(assert (=> bs!1277884 (= (= lt!2248224 lt!2248103) (= lambda!296805 lambda!296703))))

(declare-fun bs!1277885 () Bool)

(assert (= bs!1277885 (and b!5530157 d!1752465)))

(assert (=> bs!1277885 (not (= lambda!296805 lambda!296803))))

(assert (=> bs!1277882 (= (= lt!2248224 lt!2248109) (= lambda!296805 lambda!296706))))

(declare-fun bs!1277886 () Bool)

(assert (= bs!1277886 (and b!5530157 d!1752315)))

(assert (=> bs!1277886 (not (= lambda!296805 lambda!296778))))

(declare-fun bs!1277887 () Bool)

(assert (= bs!1277887 (and b!5530157 d!1752409)))

(assert (=> bs!1277887 (not (= lambda!296805 lambda!296792))))

(declare-fun bs!1277888 () Bool)

(assert (= bs!1277888 (and b!5530157 d!1752357)))

(assert (=> bs!1277888 (not (= lambda!296805 lambda!296782))))

(declare-fun bs!1277889 () Bool)

(assert (= bs!1277889 (and b!5530157 d!1752443)))

(assert (=> bs!1277889 (not (= lambda!296805 lambda!296797))))

(declare-fun bs!1277890 () Bool)

(assert (= bs!1277890 (and b!5530157 d!1752399)))

(assert (=> bs!1277890 (not (= lambda!296805 lambda!296791))))

(declare-fun bs!1277891 () Bool)

(assert (= bs!1277891 (and b!5530157 b!5529287)))

(assert (=> bs!1277891 (= (= lt!2248224 lt!2248107) (= lambda!296805 lambda!296707))))

(declare-fun bs!1277892 () Bool)

(assert (= bs!1277892 (and b!5530157 b!5529275)))

(assert (=> bs!1277892 (= (= lt!2248224 lt!2248099) (= lambda!296805 lambda!296700))))

(assert (=> b!5530157 true))

(declare-fun bs!1277893 () Bool)

(declare-fun b!5530159 () Bool)

(assert (= bs!1277893 (and b!5530159 b!5529278)))

(declare-fun lambda!296806 () Int)

(declare-fun lt!2248222 () Int)

(assert (=> bs!1277893 (= (= lt!2248222 lt!2248105) (= lambda!296806 lambda!296702))))

(declare-fun bs!1277894 () Bool)

(assert (= bs!1277894 (and b!5530159 d!1752297)))

(assert (=> bs!1277894 (not (= lambda!296806 lambda!296773))))

(declare-fun bs!1277895 () Bool)

(assert (= bs!1277895 (and b!5530159 b!5529280)))

(assert (=> bs!1277895 (= (= lt!2248222 lt!2248103) (= lambda!296806 lambda!296703))))

(declare-fun bs!1277896 () Bool)

(assert (= bs!1277896 (and b!5530159 d!1752465)))

(assert (=> bs!1277896 (not (= lambda!296806 lambda!296803))))

(declare-fun bs!1277897 () Bool)

(assert (= bs!1277897 (and b!5530159 b!5529285)))

(assert (=> bs!1277897 (= (= lt!2248222 lt!2248109) (= lambda!296806 lambda!296706))))

(declare-fun bs!1277898 () Bool)

(assert (= bs!1277898 (and b!5530159 d!1752315)))

(assert (=> bs!1277898 (not (= lambda!296806 lambda!296778))))

(declare-fun bs!1277899 () Bool)

(assert (= bs!1277899 (and b!5530159 b!5530157)))

(assert (=> bs!1277899 (= (= lt!2248222 lt!2248224) (= lambda!296806 lambda!296805))))

(declare-fun bs!1277900 () Bool)

(assert (= bs!1277900 (and b!5530159 b!5529273)))

(assert (=> bs!1277900 (= (= lt!2248222 lt!2248101) (= lambda!296806 lambda!296699))))

(declare-fun bs!1277901 () Bool)

(assert (= bs!1277901 (and b!5530159 d!1752409)))

(assert (=> bs!1277901 (not (= lambda!296806 lambda!296792))))

(declare-fun bs!1277902 () Bool)

(assert (= bs!1277902 (and b!5530159 d!1752357)))

(assert (=> bs!1277902 (not (= lambda!296806 lambda!296782))))

(declare-fun bs!1277903 () Bool)

(assert (= bs!1277903 (and b!5530159 d!1752443)))

(assert (=> bs!1277903 (not (= lambda!296806 lambda!296797))))

(declare-fun bs!1277904 () Bool)

(assert (= bs!1277904 (and b!5530159 d!1752399)))

(assert (=> bs!1277904 (not (= lambda!296806 lambda!296791))))

(declare-fun bs!1277905 () Bool)

(assert (= bs!1277905 (and b!5530159 b!5529287)))

(assert (=> bs!1277905 (= (= lt!2248222 lt!2248107) (= lambda!296806 lambda!296707))))

(declare-fun bs!1277906 () Bool)

(assert (= bs!1277906 (and b!5530159 b!5529275)))

(assert (=> bs!1277906 (= (= lt!2248222 lt!2248099) (= lambda!296806 lambda!296700))))

(assert (=> b!5530159 true))

(declare-fun d!1752467 () Bool)

(declare-fun e!3418604 () Bool)

(assert (=> d!1752467 e!3418604))

(declare-fun res!2354631 () Bool)

(assert (=> d!1752467 (=> (not res!2354631) (not e!3418604))))

(assert (=> d!1752467 (= res!2354631 (>= lt!2248222 0))))

(declare-fun e!3418605 () Int)

(assert (=> d!1752467 (= lt!2248222 e!3418605)))

(declare-fun c!967782 () Bool)

(assert (=> d!1752467 (= c!967782 (is-Cons!62719 (t!376100 (Cons!62719 lt!2247922 Nil!62719))))))

(assert (=> d!1752467 (= (zipperDepth!197 (t!376100 (Cons!62719 lt!2247922 Nil!62719))) lt!2248222)))

(assert (=> b!5530157 (= e!3418605 lt!2248224)))

(assert (=> b!5530157 (= lt!2248224 (maxBigInt!0 (contextDepth!110 (h!69167 (t!376100 (Cons!62719 lt!2247922 Nil!62719)))) (zipperDepth!197 (t!376100 (t!376100 (Cons!62719 lt!2247922 Nil!62719))))))))

(declare-fun lt!2248221 () Unit!155488)

(assert (=> b!5530157 (= lt!2248221 (lemmaForallContextDepthBiggerThanTransitive!102 (t!376100 (t!376100 (Cons!62719 lt!2247922 Nil!62719))) lt!2248224 (zipperDepth!197 (t!376100 (t!376100 (Cons!62719 lt!2247922 Nil!62719)))) lambda!296804))))

(assert (=> b!5530157 (forall!14693 (t!376100 (t!376100 (Cons!62719 lt!2247922 Nil!62719))) lambda!296805)))

(declare-fun lt!2248223 () Unit!155488)

(assert (=> b!5530157 (= lt!2248223 lt!2248221)))

(declare-fun b!5530158 () Bool)

(assert (=> b!5530158 (= e!3418605 0)))

(assert (=> b!5530159 (= e!3418604 (forall!14693 (t!376100 (Cons!62719 lt!2247922 Nil!62719)) lambda!296806))))

(assert (= (and d!1752467 c!967782) b!5530157))

(assert (= (and d!1752467 (not c!967782)) b!5530158))

(assert (= (and d!1752467 res!2354631) b!5530159))

(declare-fun m!6532222 () Bool)

(assert (=> b!5530157 m!6532222))

(assert (=> b!5530157 m!6532222))

(declare-fun m!6532224 () Bool)

(assert (=> b!5530157 m!6532224))

(declare-fun m!6532226 () Bool)

(assert (=> b!5530157 m!6532226))

(assert (=> b!5530157 m!6532224))

(declare-fun m!6532228 () Bool)

(assert (=> b!5530157 m!6532228))

(assert (=> b!5530157 m!6532224))

(declare-fun m!6532230 () Bool)

(assert (=> b!5530157 m!6532230))

(declare-fun m!6532232 () Bool)

(assert (=> b!5530159 m!6532232))

(assert (=> b!5529285 d!1752467))

(declare-fun bs!1277907 () Bool)

(declare-fun b!5530160 () Bool)

(assert (= bs!1277907 (and b!5530160 d!1752257)))

(declare-fun lambda!296807 () Int)

(assert (=> bs!1277907 (not (= lambda!296807 lambda!296768))))

(declare-fun bs!1277908 () Bool)

(assert (= bs!1277908 (and b!5530160 b!5529167)))

(declare-fun lt!2248228 () Int)

(assert (=> bs!1277908 (= (= lt!2248228 lt!2248075) (= lambda!296807 lambda!296683))))

(declare-fun bs!1277909 () Bool)

(assert (= bs!1277909 (and b!5530160 d!1752031)))

(assert (=> bs!1277909 (not (= lambda!296807 lambda!296657))))

(declare-fun bs!1277910 () Bool)

(assert (= bs!1277910 (and b!5530160 d!1752349)))

(assert (=> bs!1277910 (not (= lambda!296807 lambda!296779))))

(declare-fun bs!1277911 () Bool)

(assert (= bs!1277911 (and b!5530160 b!5529162)))

(assert (=> bs!1277911 (= (= lt!2248228 lt!2248071) (= lambda!296807 lambda!296681))))

(declare-fun bs!1277912 () Bool)

(assert (= bs!1277912 (and b!5530160 d!1752277)))

(assert (=> bs!1277912 (not (= lambda!296807 lambda!296770))))

(declare-fun bs!1277913 () Bool)

(assert (= bs!1277913 (and b!5530160 d!1752115)))

(assert (=> bs!1277913 (not (= lambda!296807 lambda!296691))))

(declare-fun bs!1277914 () Bool)

(assert (= bs!1277914 (and b!5530160 d!1752085)))

(assert (=> bs!1277914 (not (= lambda!296807 lambda!296690))))

(declare-fun bs!1277915 () Bool)

(assert (= bs!1277915 (and b!5530160 b!5529169)))

(assert (=> bs!1277915 (= (= lt!2248228 lt!2248074) (= lambda!296807 lambda!296684))))

(declare-fun bs!1277916 () Bool)

(assert (= bs!1277916 (and b!5530160 b!5529164)))

(assert (=> bs!1277916 (= (= lt!2248228 lt!2248070) (= lambda!296807 lambda!296682))))

(declare-fun bs!1277917 () Bool)

(assert (= bs!1277917 (and b!5530160 b!5529290)))

(assert (=> bs!1277917 (= (= lt!2248228 lt!2248112) (= lambda!296807 lambda!296709))))

(declare-fun bs!1277918 () Bool)

(assert (= bs!1277918 (and b!5530160 d!1752029)))

(assert (=> bs!1277918 (not (= lambda!296807 lambda!296654))))

(declare-fun bs!1277919 () Bool)

(assert (= bs!1277919 (and b!5530160 b!5529288)))

(assert (=> bs!1277919 (= (= lt!2248228 lt!2248113) (= lambda!296807 lambda!296708))))

(declare-fun bs!1277920 () Bool)

(assert (= bs!1277920 (and b!5530160 d!1752445)))

(assert (=> bs!1277920 (not (= lambda!296807 lambda!296798))))

(declare-fun bs!1277921 () Bool)

(assert (= bs!1277921 (and b!5530160 d!1752299)))

(assert (=> bs!1277921 (not (= lambda!296807 lambda!296774))))

(declare-fun bs!1277922 () Bool)

(assert (= bs!1277922 (and b!5530160 d!1752083)))

(assert (=> bs!1277922 (not (= lambda!296807 lambda!296687))))

(assert (=> b!5530160 true))

(declare-fun bs!1277923 () Bool)

(declare-fun b!5530162 () Bool)

(assert (= bs!1277923 (and b!5530162 d!1752257)))

(declare-fun lambda!296808 () Int)

(assert (=> bs!1277923 (not (= lambda!296808 lambda!296768))))

(declare-fun bs!1277924 () Bool)

(assert (= bs!1277924 (and b!5530162 b!5529167)))

(declare-fun lt!2248227 () Int)

(assert (=> bs!1277924 (= (= lt!2248227 lt!2248075) (= lambda!296808 lambda!296683))))

(declare-fun bs!1277925 () Bool)

(assert (= bs!1277925 (and b!5530162 d!1752031)))

(assert (=> bs!1277925 (not (= lambda!296808 lambda!296657))))

(declare-fun bs!1277926 () Bool)

(assert (= bs!1277926 (and b!5530162 d!1752349)))

(assert (=> bs!1277926 (not (= lambda!296808 lambda!296779))))

(declare-fun bs!1277927 () Bool)

(assert (= bs!1277927 (and b!5530162 b!5529162)))

(assert (=> bs!1277927 (= (= lt!2248227 lt!2248071) (= lambda!296808 lambda!296681))))

(declare-fun bs!1277928 () Bool)

(assert (= bs!1277928 (and b!5530162 d!1752277)))

(assert (=> bs!1277928 (not (= lambda!296808 lambda!296770))))

(declare-fun bs!1277929 () Bool)

(assert (= bs!1277929 (and b!5530162 d!1752115)))

(assert (=> bs!1277929 (not (= lambda!296808 lambda!296691))))

(declare-fun bs!1277930 () Bool)

(assert (= bs!1277930 (and b!5530162 d!1752085)))

(assert (=> bs!1277930 (not (= lambda!296808 lambda!296690))))

(declare-fun bs!1277931 () Bool)

(assert (= bs!1277931 (and b!5530162 b!5529164)))

(assert (=> bs!1277931 (= (= lt!2248227 lt!2248070) (= lambda!296808 lambda!296682))))

(declare-fun bs!1277932 () Bool)

(assert (= bs!1277932 (and b!5530162 b!5529290)))

(assert (=> bs!1277932 (= (= lt!2248227 lt!2248112) (= lambda!296808 lambda!296709))))

(declare-fun bs!1277933 () Bool)

(assert (= bs!1277933 (and b!5530162 d!1752029)))

(assert (=> bs!1277933 (not (= lambda!296808 lambda!296654))))

(declare-fun bs!1277934 () Bool)

(assert (= bs!1277934 (and b!5530162 b!5529288)))

(assert (=> bs!1277934 (= (= lt!2248227 lt!2248113) (= lambda!296808 lambda!296708))))

(declare-fun bs!1277935 () Bool)

(assert (= bs!1277935 (and b!5530162 d!1752445)))

(assert (=> bs!1277935 (not (= lambda!296808 lambda!296798))))

(declare-fun bs!1277936 () Bool)

(assert (= bs!1277936 (and b!5530162 b!5530160)))

(assert (=> bs!1277936 (= (= lt!2248227 lt!2248228) (= lambda!296808 lambda!296807))))

(declare-fun bs!1277937 () Bool)

(assert (= bs!1277937 (and b!5530162 b!5529169)))

(assert (=> bs!1277937 (= (= lt!2248227 lt!2248074) (= lambda!296808 lambda!296684))))

(declare-fun bs!1277938 () Bool)

(assert (= bs!1277938 (and b!5530162 d!1752299)))

(assert (=> bs!1277938 (not (= lambda!296808 lambda!296774))))

(declare-fun bs!1277939 () Bool)

(assert (= bs!1277939 (and b!5530162 d!1752083)))

(assert (=> bs!1277939 (not (= lambda!296808 lambda!296687))))

(assert (=> b!5530162 true))

(declare-fun d!1752469 () Bool)

(declare-fun e!3418607 () Bool)

(assert (=> d!1752469 e!3418607))

(declare-fun res!2354632 () Bool)

(assert (=> d!1752469 (=> (not res!2354632) (not e!3418607))))

(assert (=> d!1752469 (= res!2354632 (>= lt!2248227 0))))

(declare-fun e!3418606 () Int)

(assert (=> d!1752469 (= lt!2248227 e!3418606)))

(declare-fun c!967783 () Bool)

(assert (=> d!1752469 (= c!967783 (is-Cons!62717 (exprs!5398 (h!69167 (Cons!62719 lt!2247922 Nil!62719)))))))

(assert (=> d!1752469 (= (contextDepth!110 (h!69167 (Cons!62719 lt!2247922 Nil!62719))) lt!2248227)))

(assert (=> b!5530160 (= e!3418606 lt!2248228)))

(assert (=> b!5530160 (= lt!2248228 (maxBigInt!0 (regexDepth!214 (h!69165 (exprs!5398 (h!69167 (Cons!62719 lt!2247922 Nil!62719))))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 (h!69167 (Cons!62719 lt!2247922 Nil!62719))))))))))

(declare-fun lt!2248225 () Unit!155488)

(assert (=> b!5530160 (= lt!2248225 (lemmaForallRegexDepthBiggerThanTransitive!19 (t!376098 (exprs!5398 (h!69167 (Cons!62719 lt!2247922 Nil!62719)))) lt!2248228 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 (h!69167 (Cons!62719 lt!2247922 Nil!62719))))))))))

(assert (=> b!5530160 (forall!14692 (t!376098 (exprs!5398 (h!69167 (Cons!62719 lt!2247922 Nil!62719)))) lambda!296807)))

(declare-fun lt!2248226 () Unit!155488)

(assert (=> b!5530160 (= lt!2248226 lt!2248225)))

(declare-fun b!5530161 () Bool)

(assert (=> b!5530161 (= e!3418606 0)))

(assert (=> b!5530162 (= e!3418607 (forall!14692 (exprs!5398 (h!69167 (Cons!62719 lt!2247922 Nil!62719))) lambda!296808))))

(assert (= (and d!1752469 c!967783) b!5530160))

(assert (= (and d!1752469 (not c!967783)) b!5530161))

(assert (= (and d!1752469 res!2354632) b!5530162))

(declare-fun m!6532234 () Bool)

(assert (=> b!5530160 m!6532234))

(declare-fun m!6532236 () Bool)

(assert (=> b!5530160 m!6532236))

(declare-fun m!6532238 () Bool)

(assert (=> b!5530160 m!6532238))

(assert (=> b!5530160 m!6532236))

(declare-fun m!6532240 () Bool)

(assert (=> b!5530160 m!6532240))

(assert (=> b!5530160 m!6532236))

(declare-fun m!6532242 () Bool)

(assert (=> b!5530160 m!6532242))

(assert (=> b!5530160 m!6532234))

(declare-fun m!6532244 () Bool)

(assert (=> b!5530162 m!6532244))

(assert (=> b!5529285 d!1752469))

(declare-fun d!1752471 () Bool)

(declare-fun res!2354633 () Bool)

(declare-fun e!3418608 () Bool)

(assert (=> d!1752471 (=> res!2354633 e!3418608)))

(assert (=> d!1752471 (= res!2354633 (is-Nil!62719 (t!376100 (Cons!62719 lt!2247922 Nil!62719))))))

(assert (=> d!1752471 (= (forall!14693 (t!376100 (Cons!62719 lt!2247922 Nil!62719)) lambda!296706) e!3418608)))

(declare-fun b!5530163 () Bool)

(declare-fun e!3418609 () Bool)

(assert (=> b!5530163 (= e!3418608 e!3418609)))

(declare-fun res!2354634 () Bool)

(assert (=> b!5530163 (=> (not res!2354634) (not e!3418609))))

(assert (=> b!5530163 (= res!2354634 (dynLambda!24524 lambda!296706 (h!69167 (t!376100 (Cons!62719 lt!2247922 Nil!62719)))))))

(declare-fun b!5530164 () Bool)

(assert (=> b!5530164 (= e!3418609 (forall!14693 (t!376100 (t!376100 (Cons!62719 lt!2247922 Nil!62719))) lambda!296706))))

(assert (= (and d!1752471 (not res!2354633)) b!5530163))

(assert (= (and b!5530163 res!2354634) b!5530164))

(declare-fun b_lambda!209877 () Bool)

(assert (=> (not b_lambda!209877) (not b!5530163)))

(declare-fun m!6532246 () Bool)

(assert (=> b!5530163 m!6532246))

(declare-fun m!6532248 () Bool)

(assert (=> b!5530164 m!6532248))

(assert (=> b!5529285 d!1752471))

(assert (=> bm!410379 d!1752293))

(declare-fun d!1752473 () Bool)

(assert (=> d!1752473 (= (isEmpty!34508 (tail!10926 (unfocusZipperList!942 zl!343))) (is-Nil!62717 (tail!10926 (unfocusZipperList!942 zl!343))))))

(assert (=> b!5528951 d!1752473))

(declare-fun d!1752475 () Bool)

(assert (=> d!1752475 (= (tail!10926 (unfocusZipperList!942 zl!343)) (t!376098 (unfocusZipperList!942 zl!343)))))

(assert (=> b!5528951 d!1752475))

(assert (=> b!5528983 d!1752039))

(declare-fun b!5530165 () Bool)

(declare-fun e!3418615 () Bool)

(declare-fun call!410581 () Bool)

(assert (=> b!5530165 (= e!3418615 call!410581)))

(declare-fun bm!410576 () Bool)

(declare-fun c!967785 () Bool)

(declare-fun c!967784 () Bool)

(declare-fun call!410582 () Bool)

(assert (=> bm!410576 (= call!410582 (validRegex!7250 (ite c!967785 (reg!15843 lt!2248081) (ite c!967784 (regTwo!31541 lt!2248081) (regTwo!31540 lt!2248081)))))))

(declare-fun b!5530166 () Bool)

(declare-fun e!3418616 () Bool)

(assert (=> b!5530166 (= e!3418616 call!410582)))

(declare-fun d!1752477 () Bool)

(declare-fun res!2354639 () Bool)

(declare-fun e!3418611 () Bool)

(assert (=> d!1752477 (=> res!2354639 e!3418611)))

(assert (=> d!1752477 (= res!2354639 (is-ElementMatch!15514 lt!2248081))))

(assert (=> d!1752477 (= (validRegex!7250 lt!2248081) e!3418611)))

(declare-fun b!5530167 () Bool)

(declare-fun e!3418614 () Bool)

(assert (=> b!5530167 (= e!3418611 e!3418614)))

(assert (=> b!5530167 (= c!967785 (is-Star!15514 lt!2248081))))

(declare-fun b!5530168 () Bool)

(declare-fun e!3418610 () Bool)

(assert (=> b!5530168 (= e!3418610 call!410581)))

(declare-fun b!5530169 () Bool)

(declare-fun e!3418612 () Bool)

(assert (=> b!5530169 (= e!3418614 e!3418612)))

(assert (=> b!5530169 (= c!967784 (is-Union!15514 lt!2248081))))

(declare-fun b!5530170 () Bool)

(declare-fun res!2354637 () Bool)

(declare-fun e!3418613 () Bool)

(assert (=> b!5530170 (=> res!2354637 e!3418613)))

(assert (=> b!5530170 (= res!2354637 (not (is-Concat!24359 lt!2248081)))))

(assert (=> b!5530170 (= e!3418612 e!3418613)))

(declare-fun b!5530171 () Bool)

(assert (=> b!5530171 (= e!3418613 e!3418615)))

(declare-fun res!2354636 () Bool)

(assert (=> b!5530171 (=> (not res!2354636) (not e!3418615))))

(declare-fun call!410583 () Bool)

(assert (=> b!5530171 (= res!2354636 call!410583)))

(declare-fun bm!410577 () Bool)

(assert (=> bm!410577 (= call!410583 (validRegex!7250 (ite c!967784 (regOne!31541 lt!2248081) (regOne!31540 lt!2248081))))))

(declare-fun b!5530172 () Bool)

(declare-fun res!2354638 () Bool)

(assert (=> b!5530172 (=> (not res!2354638) (not e!3418610))))

(assert (=> b!5530172 (= res!2354638 call!410583)))

(assert (=> b!5530172 (= e!3418612 e!3418610)))

(declare-fun b!5530173 () Bool)

(assert (=> b!5530173 (= e!3418614 e!3418616)))

(declare-fun res!2354635 () Bool)

(assert (=> b!5530173 (= res!2354635 (not (nullable!5548 (reg!15843 lt!2248081))))))

(assert (=> b!5530173 (=> (not res!2354635) (not e!3418616))))

(declare-fun bm!410578 () Bool)

(assert (=> bm!410578 (= call!410581 call!410582)))

(assert (= (and d!1752477 (not res!2354639)) b!5530167))

(assert (= (and b!5530167 c!967785) b!5530173))

(assert (= (and b!5530167 (not c!967785)) b!5530169))

(assert (= (and b!5530173 res!2354635) b!5530166))

(assert (= (and b!5530169 c!967784) b!5530172))

(assert (= (and b!5530169 (not c!967784)) b!5530170))

(assert (= (and b!5530172 res!2354638) b!5530168))

(assert (= (and b!5530170 (not res!2354637)) b!5530171))

(assert (= (and b!5530171 res!2354636) b!5530165))

(assert (= (or b!5530168 b!5530165) bm!410578))

(assert (= (or b!5530172 b!5530171) bm!410577))

(assert (= (or b!5530166 bm!410578) bm!410576))

(declare-fun m!6532250 () Bool)

(assert (=> bm!410576 m!6532250))

(declare-fun m!6532252 () Bool)

(assert (=> bm!410577 m!6532252))

(declare-fun m!6532254 () Bool)

(assert (=> b!5530173 m!6532254))

(assert (=> d!1752083 d!1752477))

(declare-fun d!1752479 () Bool)

(declare-fun res!2354640 () Bool)

(declare-fun e!3418617 () Bool)

(assert (=> d!1752479 (=> res!2354640 e!3418617)))

(assert (=> d!1752479 (= res!2354640 (is-Nil!62717 (exprs!5398 (h!69167 zl!343))))))

(assert (=> d!1752479 (= (forall!14692 (exprs!5398 (h!69167 zl!343)) lambda!296687) e!3418617)))

(declare-fun b!5530174 () Bool)

(declare-fun e!3418618 () Bool)

(assert (=> b!5530174 (= e!3418617 e!3418618)))

(declare-fun res!2354641 () Bool)

(assert (=> b!5530174 (=> (not res!2354641) (not e!3418618))))

(assert (=> b!5530174 (= res!2354641 (dynLambda!24523 lambda!296687 (h!69165 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun b!5530175 () Bool)

(assert (=> b!5530175 (= e!3418618 (forall!14692 (t!376098 (exprs!5398 (h!69167 zl!343))) lambda!296687))))

(assert (= (and d!1752479 (not res!2354640)) b!5530174))

(assert (= (and b!5530174 res!2354641) b!5530175))

(declare-fun b_lambda!209879 () Bool)

(assert (=> (not b_lambda!209879) (not b!5530174)))

(declare-fun m!6532256 () Bool)

(assert (=> b!5530174 m!6532256))

(declare-fun m!6532258 () Bool)

(assert (=> b!5530175 m!6532258))

(assert (=> d!1752083 d!1752479))

(declare-fun bs!1277940 () Bool)

(declare-fun b!5530176 () Bool)

(assert (= bs!1277940 (and b!5530176 d!1752257)))

(declare-fun lambda!296809 () Int)

(assert (=> bs!1277940 (not (= lambda!296809 lambda!296768))))

(declare-fun bs!1277941 () Bool)

(assert (= bs!1277941 (and b!5530176 b!5529167)))

(declare-fun lt!2248232 () Int)

(assert (=> bs!1277941 (= (= lt!2248232 lt!2248075) (= lambda!296809 lambda!296683))))

(declare-fun bs!1277942 () Bool)

(assert (= bs!1277942 (and b!5530176 d!1752031)))

(assert (=> bs!1277942 (not (= lambda!296809 lambda!296657))))

(declare-fun bs!1277943 () Bool)

(assert (= bs!1277943 (and b!5530176 d!1752349)))

(assert (=> bs!1277943 (not (= lambda!296809 lambda!296779))))

(declare-fun bs!1277944 () Bool)

(assert (= bs!1277944 (and b!5530176 b!5529162)))

(assert (=> bs!1277944 (= (= lt!2248232 lt!2248071) (= lambda!296809 lambda!296681))))

(declare-fun bs!1277945 () Bool)

(assert (= bs!1277945 (and b!5530176 d!1752277)))

(assert (=> bs!1277945 (not (= lambda!296809 lambda!296770))))

(declare-fun bs!1277946 () Bool)

(assert (= bs!1277946 (and b!5530176 d!1752115)))

(assert (=> bs!1277946 (not (= lambda!296809 lambda!296691))))

(declare-fun bs!1277947 () Bool)

(assert (= bs!1277947 (and b!5530176 d!1752085)))

(assert (=> bs!1277947 (not (= lambda!296809 lambda!296690))))

(declare-fun bs!1277948 () Bool)

(assert (= bs!1277948 (and b!5530176 b!5529164)))

(assert (=> bs!1277948 (= (= lt!2248232 lt!2248070) (= lambda!296809 lambda!296682))))

(declare-fun bs!1277949 () Bool)

(assert (= bs!1277949 (and b!5530176 b!5529290)))

(assert (=> bs!1277949 (= (= lt!2248232 lt!2248112) (= lambda!296809 lambda!296709))))

(declare-fun bs!1277950 () Bool)

(assert (= bs!1277950 (and b!5530176 d!1752029)))

(assert (=> bs!1277950 (not (= lambda!296809 lambda!296654))))

(declare-fun bs!1277951 () Bool)

(assert (= bs!1277951 (and b!5530176 b!5529288)))

(assert (=> bs!1277951 (= (= lt!2248232 lt!2248113) (= lambda!296809 lambda!296708))))

(declare-fun bs!1277952 () Bool)

(assert (= bs!1277952 (and b!5530176 d!1752445)))

(assert (=> bs!1277952 (not (= lambda!296809 lambda!296798))))

(declare-fun bs!1277953 () Bool)

(assert (= bs!1277953 (and b!5530176 b!5530160)))

(assert (=> bs!1277953 (= (= lt!2248232 lt!2248228) (= lambda!296809 lambda!296807))))

(declare-fun bs!1277954 () Bool)

(assert (= bs!1277954 (and b!5530176 b!5529169)))

(assert (=> bs!1277954 (= (= lt!2248232 lt!2248074) (= lambda!296809 lambda!296684))))

(declare-fun bs!1277955 () Bool)

(assert (= bs!1277955 (and b!5530176 b!5530162)))

(assert (=> bs!1277955 (= (= lt!2248232 lt!2248227) (= lambda!296809 lambda!296808))))

(declare-fun bs!1277956 () Bool)

(assert (= bs!1277956 (and b!5530176 d!1752299)))

(assert (=> bs!1277956 (not (= lambda!296809 lambda!296774))))

(declare-fun bs!1277957 () Bool)

(assert (= bs!1277957 (and b!5530176 d!1752083)))

(assert (=> bs!1277957 (not (= lambda!296809 lambda!296687))))

(assert (=> b!5530176 true))

(declare-fun bs!1277958 () Bool)

(declare-fun b!5530178 () Bool)

(assert (= bs!1277958 (and b!5530178 b!5529167)))

(declare-fun lambda!296810 () Int)

(declare-fun lt!2248231 () Int)

(assert (=> bs!1277958 (= (= lt!2248231 lt!2248075) (= lambda!296810 lambda!296683))))

(declare-fun bs!1277959 () Bool)

(assert (= bs!1277959 (and b!5530178 d!1752031)))

(assert (=> bs!1277959 (not (= lambda!296810 lambda!296657))))

(declare-fun bs!1277960 () Bool)

(assert (= bs!1277960 (and b!5530178 d!1752349)))

(assert (=> bs!1277960 (not (= lambda!296810 lambda!296779))))

(declare-fun bs!1277961 () Bool)

(assert (= bs!1277961 (and b!5530178 b!5529162)))

(assert (=> bs!1277961 (= (= lt!2248231 lt!2248071) (= lambda!296810 lambda!296681))))

(declare-fun bs!1277962 () Bool)

(assert (= bs!1277962 (and b!5530178 d!1752277)))

(assert (=> bs!1277962 (not (= lambda!296810 lambda!296770))))

(declare-fun bs!1277963 () Bool)

(assert (= bs!1277963 (and b!5530178 d!1752115)))

(assert (=> bs!1277963 (not (= lambda!296810 lambda!296691))))

(declare-fun bs!1277964 () Bool)

(assert (= bs!1277964 (and b!5530178 d!1752085)))

(assert (=> bs!1277964 (not (= lambda!296810 lambda!296690))))

(declare-fun bs!1277965 () Bool)

(assert (= bs!1277965 (and b!5530178 b!5529164)))

(assert (=> bs!1277965 (= (= lt!2248231 lt!2248070) (= lambda!296810 lambda!296682))))

(declare-fun bs!1277966 () Bool)

(assert (= bs!1277966 (and b!5530178 b!5529290)))

(assert (=> bs!1277966 (= (= lt!2248231 lt!2248112) (= lambda!296810 lambda!296709))))

(declare-fun bs!1277967 () Bool)

(assert (= bs!1277967 (and b!5530178 d!1752029)))

(assert (=> bs!1277967 (not (= lambda!296810 lambda!296654))))

(declare-fun bs!1277968 () Bool)

(assert (= bs!1277968 (and b!5530178 d!1752257)))

(assert (=> bs!1277968 (not (= lambda!296810 lambda!296768))))

(declare-fun bs!1277969 () Bool)

(assert (= bs!1277969 (and b!5530178 b!5530176)))

(assert (=> bs!1277969 (= (= lt!2248231 lt!2248232) (= lambda!296810 lambda!296809))))

(declare-fun bs!1277970 () Bool)

(assert (= bs!1277970 (and b!5530178 b!5529288)))

(assert (=> bs!1277970 (= (= lt!2248231 lt!2248113) (= lambda!296810 lambda!296708))))

(declare-fun bs!1277971 () Bool)

(assert (= bs!1277971 (and b!5530178 d!1752445)))

(assert (=> bs!1277971 (not (= lambda!296810 lambda!296798))))

(declare-fun bs!1277972 () Bool)

(assert (= bs!1277972 (and b!5530178 b!5530160)))

(assert (=> bs!1277972 (= (= lt!2248231 lt!2248228) (= lambda!296810 lambda!296807))))

(declare-fun bs!1277973 () Bool)

(assert (= bs!1277973 (and b!5530178 b!5529169)))

(assert (=> bs!1277973 (= (= lt!2248231 lt!2248074) (= lambda!296810 lambda!296684))))

(declare-fun bs!1277974 () Bool)

(assert (= bs!1277974 (and b!5530178 b!5530162)))

(assert (=> bs!1277974 (= (= lt!2248231 lt!2248227) (= lambda!296810 lambda!296808))))

(declare-fun bs!1277975 () Bool)

(assert (= bs!1277975 (and b!5530178 d!1752299)))

(assert (=> bs!1277975 (not (= lambda!296810 lambda!296774))))

(declare-fun bs!1277976 () Bool)

(assert (= bs!1277976 (and b!5530178 d!1752083)))

(assert (=> bs!1277976 (not (= lambda!296810 lambda!296687))))

(assert (=> b!5530178 true))

(declare-fun d!1752481 () Bool)

(declare-fun e!3418620 () Bool)

(assert (=> d!1752481 e!3418620))

(declare-fun res!2354642 () Bool)

(assert (=> d!1752481 (=> (not res!2354642) (not e!3418620))))

(assert (=> d!1752481 (= res!2354642 (>= lt!2248231 0))))

(declare-fun e!3418619 () Int)

(assert (=> d!1752481 (= lt!2248231 e!3418619)))

(declare-fun c!967786 () Bool)

(assert (=> d!1752481 (= c!967786 (is-Cons!62717 (exprs!5398 (h!69167 (Cons!62719 lt!2247930 Nil!62719)))))))

(assert (=> d!1752481 (= (contextDepth!110 (h!69167 (Cons!62719 lt!2247930 Nil!62719))) lt!2248231)))

(assert (=> b!5530176 (= e!3418619 lt!2248232)))

(assert (=> b!5530176 (= lt!2248232 (maxBigInt!0 (regexDepth!214 (h!69165 (exprs!5398 (h!69167 (Cons!62719 lt!2247930 Nil!62719))))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 (h!69167 (Cons!62719 lt!2247930 Nil!62719))))))))))

(declare-fun lt!2248229 () Unit!155488)

(assert (=> b!5530176 (= lt!2248229 (lemmaForallRegexDepthBiggerThanTransitive!19 (t!376098 (exprs!5398 (h!69167 (Cons!62719 lt!2247930 Nil!62719)))) lt!2248232 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 (h!69167 (Cons!62719 lt!2247930 Nil!62719))))))))))

(assert (=> b!5530176 (forall!14692 (t!376098 (exprs!5398 (h!69167 (Cons!62719 lt!2247930 Nil!62719)))) lambda!296809)))

(declare-fun lt!2248230 () Unit!155488)

(assert (=> b!5530176 (= lt!2248230 lt!2248229)))

(declare-fun b!5530177 () Bool)

(assert (=> b!5530177 (= e!3418619 0)))

(assert (=> b!5530178 (= e!3418620 (forall!14692 (exprs!5398 (h!69167 (Cons!62719 lt!2247930 Nil!62719))) lambda!296810))))

(assert (= (and d!1752481 c!967786) b!5530176))

(assert (= (and d!1752481 (not c!967786)) b!5530177))

(assert (= (and d!1752481 res!2354642) b!5530178))

(declare-fun m!6532260 () Bool)

(assert (=> b!5530176 m!6532260))

(declare-fun m!6532262 () Bool)

(assert (=> b!5530176 m!6532262))

(declare-fun m!6532264 () Bool)

(assert (=> b!5530176 m!6532264))

(assert (=> b!5530176 m!6532262))

(declare-fun m!6532266 () Bool)

(assert (=> b!5530176 m!6532266))

(assert (=> b!5530176 m!6532262))

(declare-fun m!6532268 () Bool)

(assert (=> b!5530176 m!6532268))

(assert (=> b!5530176 m!6532260))

(declare-fun m!6532270 () Bool)

(assert (=> b!5530178 m!6532270))

(assert (=> b!5529273 d!1752481))

(declare-fun bs!1277977 () Bool)

(declare-fun b!5530179 () Bool)

(assert (= bs!1277977 (and b!5530179 b!5529273)))

(declare-fun lambda!296811 () Int)

(assert (=> bs!1277977 (= lambda!296811 lambda!296698)))

(declare-fun bs!1277978 () Bool)

(assert (= bs!1277978 (and b!5530179 b!5529278)))

(assert (=> bs!1277978 (= lambda!296811 lambda!296701)))

(declare-fun bs!1277979 () Bool)

(assert (= bs!1277979 (and b!5530179 b!5529285)))

(assert (=> bs!1277979 (= lambda!296811 lambda!296705)))

(declare-fun bs!1277980 () Bool)

(assert (= bs!1277980 (and b!5530179 b!5530157)))

(assert (=> bs!1277980 (= lambda!296811 lambda!296804)))

(declare-fun lt!2248236 () Int)

(declare-fun lambda!296812 () Int)

(assert (=> bs!1277978 (= (= lt!2248236 lt!2248105) (= lambda!296812 lambda!296702))))

(declare-fun bs!1277981 () Bool)

(assert (= bs!1277981 (and b!5530179 d!1752297)))

(assert (=> bs!1277981 (not (= lambda!296812 lambda!296773))))

(declare-fun bs!1277982 () Bool)

(assert (= bs!1277982 (and b!5530179 b!5530159)))

(assert (=> bs!1277982 (= (= lt!2248236 lt!2248222) (= lambda!296812 lambda!296806))))

(declare-fun bs!1277983 () Bool)

(assert (= bs!1277983 (and b!5530179 b!5529280)))

(assert (=> bs!1277983 (= (= lt!2248236 lt!2248103) (= lambda!296812 lambda!296703))))

(declare-fun bs!1277984 () Bool)

(assert (= bs!1277984 (and b!5530179 d!1752465)))

(assert (=> bs!1277984 (not (= lambda!296812 lambda!296803))))

(assert (=> bs!1277979 (= (= lt!2248236 lt!2248109) (= lambda!296812 lambda!296706))))

(declare-fun bs!1277985 () Bool)

(assert (= bs!1277985 (and b!5530179 d!1752315)))

(assert (=> bs!1277985 (not (= lambda!296812 lambda!296778))))

(assert (=> bs!1277980 (= (= lt!2248236 lt!2248224) (= lambda!296812 lambda!296805))))

(assert (=> bs!1277977 (= (= lt!2248236 lt!2248101) (= lambda!296812 lambda!296699))))

(declare-fun bs!1277986 () Bool)

(assert (= bs!1277986 (and b!5530179 d!1752409)))

(assert (=> bs!1277986 (not (= lambda!296812 lambda!296792))))

(declare-fun bs!1277987 () Bool)

(assert (= bs!1277987 (and b!5530179 d!1752357)))

(assert (=> bs!1277987 (not (= lambda!296812 lambda!296782))))

(declare-fun bs!1277988 () Bool)

(assert (= bs!1277988 (and b!5530179 d!1752443)))

(assert (=> bs!1277988 (not (= lambda!296812 lambda!296797))))

(declare-fun bs!1277989 () Bool)

(assert (= bs!1277989 (and b!5530179 d!1752399)))

(assert (=> bs!1277989 (not (= lambda!296812 lambda!296791))))

(declare-fun bs!1277990 () Bool)

(assert (= bs!1277990 (and b!5530179 b!5529287)))

(assert (=> bs!1277990 (= (= lt!2248236 lt!2248107) (= lambda!296812 lambda!296707))))

(declare-fun bs!1277991 () Bool)

(assert (= bs!1277991 (and b!5530179 b!5529275)))

(assert (=> bs!1277991 (= (= lt!2248236 lt!2248099) (= lambda!296812 lambda!296700))))

(assert (=> b!5530179 true))

(declare-fun bs!1277992 () Bool)

(declare-fun b!5530181 () Bool)

(assert (= bs!1277992 (and b!5530181 b!5529278)))

(declare-fun lambda!296813 () Int)

(declare-fun lt!2248234 () Int)

(assert (=> bs!1277992 (= (= lt!2248234 lt!2248105) (= lambda!296813 lambda!296702))))

(declare-fun bs!1277993 () Bool)

(assert (= bs!1277993 (and b!5530181 d!1752297)))

(assert (=> bs!1277993 (not (= lambda!296813 lambda!296773))))

(declare-fun bs!1277994 () Bool)

(assert (= bs!1277994 (and b!5530181 b!5530179)))

(assert (=> bs!1277994 (= (= lt!2248234 lt!2248236) (= lambda!296813 lambda!296812))))

(declare-fun bs!1277995 () Bool)

(assert (= bs!1277995 (and b!5530181 b!5530159)))

(assert (=> bs!1277995 (= (= lt!2248234 lt!2248222) (= lambda!296813 lambda!296806))))

(declare-fun bs!1277996 () Bool)

(assert (= bs!1277996 (and b!5530181 b!5529280)))

(assert (=> bs!1277996 (= (= lt!2248234 lt!2248103) (= lambda!296813 lambda!296703))))

(declare-fun bs!1277997 () Bool)

(assert (= bs!1277997 (and b!5530181 d!1752465)))

(assert (=> bs!1277997 (not (= lambda!296813 lambda!296803))))

(declare-fun bs!1277998 () Bool)

(assert (= bs!1277998 (and b!5530181 b!5529285)))

(assert (=> bs!1277998 (= (= lt!2248234 lt!2248109) (= lambda!296813 lambda!296706))))

(declare-fun bs!1277999 () Bool)

(assert (= bs!1277999 (and b!5530181 d!1752315)))

(assert (=> bs!1277999 (not (= lambda!296813 lambda!296778))))

(declare-fun bs!1278000 () Bool)

(assert (= bs!1278000 (and b!5530181 b!5530157)))

(assert (=> bs!1278000 (= (= lt!2248234 lt!2248224) (= lambda!296813 lambda!296805))))

(declare-fun bs!1278001 () Bool)

(assert (= bs!1278001 (and b!5530181 b!5529273)))

(assert (=> bs!1278001 (= (= lt!2248234 lt!2248101) (= lambda!296813 lambda!296699))))

(declare-fun bs!1278002 () Bool)

(assert (= bs!1278002 (and b!5530181 d!1752409)))

(assert (=> bs!1278002 (not (= lambda!296813 lambda!296792))))

(declare-fun bs!1278003 () Bool)

(assert (= bs!1278003 (and b!5530181 d!1752357)))

(assert (=> bs!1278003 (not (= lambda!296813 lambda!296782))))

(declare-fun bs!1278004 () Bool)

(assert (= bs!1278004 (and b!5530181 d!1752443)))

(assert (=> bs!1278004 (not (= lambda!296813 lambda!296797))))

(declare-fun bs!1278005 () Bool)

(assert (= bs!1278005 (and b!5530181 d!1752399)))

(assert (=> bs!1278005 (not (= lambda!296813 lambda!296791))))

(declare-fun bs!1278006 () Bool)

(assert (= bs!1278006 (and b!5530181 b!5529287)))

(assert (=> bs!1278006 (= (= lt!2248234 lt!2248107) (= lambda!296813 lambda!296707))))

(declare-fun bs!1278007 () Bool)

(assert (= bs!1278007 (and b!5530181 b!5529275)))

(assert (=> bs!1278007 (= (= lt!2248234 lt!2248099) (= lambda!296813 lambda!296700))))

(assert (=> b!5530181 true))

(declare-fun d!1752483 () Bool)

(declare-fun e!3418621 () Bool)

(assert (=> d!1752483 e!3418621))

(declare-fun res!2354643 () Bool)

(assert (=> d!1752483 (=> (not res!2354643) (not e!3418621))))

(assert (=> d!1752483 (= res!2354643 (>= lt!2248234 0))))

(declare-fun e!3418622 () Int)

(assert (=> d!1752483 (= lt!2248234 e!3418622)))

(declare-fun c!967787 () Bool)

(assert (=> d!1752483 (= c!967787 (is-Cons!62719 (t!376100 (Cons!62719 lt!2247930 Nil!62719))))))

(assert (=> d!1752483 (= (zipperDepth!197 (t!376100 (Cons!62719 lt!2247930 Nil!62719))) lt!2248234)))

(assert (=> b!5530179 (= e!3418622 lt!2248236)))

(assert (=> b!5530179 (= lt!2248236 (maxBigInt!0 (contextDepth!110 (h!69167 (t!376100 (Cons!62719 lt!2247930 Nil!62719)))) (zipperDepth!197 (t!376100 (t!376100 (Cons!62719 lt!2247930 Nil!62719))))))))

(declare-fun lt!2248233 () Unit!155488)

(assert (=> b!5530179 (= lt!2248233 (lemmaForallContextDepthBiggerThanTransitive!102 (t!376100 (t!376100 (Cons!62719 lt!2247930 Nil!62719))) lt!2248236 (zipperDepth!197 (t!376100 (t!376100 (Cons!62719 lt!2247930 Nil!62719)))) lambda!296811))))

(assert (=> b!5530179 (forall!14693 (t!376100 (t!376100 (Cons!62719 lt!2247930 Nil!62719))) lambda!296812)))

(declare-fun lt!2248235 () Unit!155488)

(assert (=> b!5530179 (= lt!2248235 lt!2248233)))

(declare-fun b!5530180 () Bool)

(assert (=> b!5530180 (= e!3418622 0)))

(assert (=> b!5530181 (= e!3418621 (forall!14693 (t!376100 (Cons!62719 lt!2247930 Nil!62719)) lambda!296813))))

(assert (= (and d!1752483 c!967787) b!5530179))

(assert (= (and d!1752483 (not c!967787)) b!5530180))

(assert (= (and d!1752483 res!2354643) b!5530181))

(declare-fun m!6532272 () Bool)

(assert (=> b!5530179 m!6532272))

(assert (=> b!5530179 m!6532272))

(declare-fun m!6532274 () Bool)

(assert (=> b!5530179 m!6532274))

(declare-fun m!6532276 () Bool)

(assert (=> b!5530179 m!6532276))

(assert (=> b!5530179 m!6532274))

(declare-fun m!6532278 () Bool)

(assert (=> b!5530179 m!6532278))

(assert (=> b!5530179 m!6532274))

(declare-fun m!6532280 () Bool)

(assert (=> b!5530179 m!6532280))

(declare-fun m!6532282 () Bool)

(assert (=> b!5530181 m!6532282))

(assert (=> b!5529273 d!1752483))

(declare-fun d!1752485 () Bool)

(assert (=> d!1752485 (= (maxBigInt!0 (contextDepth!110 (h!69167 (Cons!62719 lt!2247930 Nil!62719))) (zipperDepth!197 (t!376100 (Cons!62719 lt!2247930 Nil!62719)))) (ite (>= (contextDepth!110 (h!69167 (Cons!62719 lt!2247930 Nil!62719))) (zipperDepth!197 (t!376100 (Cons!62719 lt!2247930 Nil!62719)))) (contextDepth!110 (h!69167 (Cons!62719 lt!2247930 Nil!62719))) (zipperDepth!197 (t!376100 (Cons!62719 lt!2247930 Nil!62719)))))))

(assert (=> b!5529273 d!1752485))

(declare-fun d!1752487 () Bool)

(declare-fun res!2354644 () Bool)

(declare-fun e!3418623 () Bool)

(assert (=> d!1752487 (=> res!2354644 e!3418623)))

(assert (=> d!1752487 (= res!2354644 (is-Nil!62719 (t!376100 (Cons!62719 lt!2247930 Nil!62719))))))

(assert (=> d!1752487 (= (forall!14693 (t!376100 (Cons!62719 lt!2247930 Nil!62719)) lambda!296699) e!3418623)))

(declare-fun b!5530182 () Bool)

(declare-fun e!3418624 () Bool)

(assert (=> b!5530182 (= e!3418623 e!3418624)))

(declare-fun res!2354645 () Bool)

(assert (=> b!5530182 (=> (not res!2354645) (not e!3418624))))

(assert (=> b!5530182 (= res!2354645 (dynLambda!24524 lambda!296699 (h!69167 (t!376100 (Cons!62719 lt!2247930 Nil!62719)))))))

(declare-fun b!5530183 () Bool)

(assert (=> b!5530183 (= e!3418624 (forall!14693 (t!376100 (t!376100 (Cons!62719 lt!2247930 Nil!62719))) lambda!296699))))

(assert (= (and d!1752487 (not res!2354644)) b!5530182))

(assert (= (and b!5530182 res!2354645) b!5530183))

(declare-fun b_lambda!209881 () Bool)

(assert (=> (not b_lambda!209881) (not b!5530182)))

(declare-fun m!6532284 () Bool)

(assert (=> b!5530182 m!6532284))

(declare-fun m!6532286 () Bool)

(assert (=> b!5530183 m!6532286))

(assert (=> b!5529273 d!1752487))

(declare-fun bs!1278008 () Bool)

(declare-fun d!1752489 () Bool)

(assert (= bs!1278008 (and d!1752489 b!5529278)))

(declare-fun lambda!296814 () Int)

(assert (=> bs!1278008 (not (= lambda!296814 lambda!296702))))

(declare-fun bs!1278009 () Bool)

(assert (= bs!1278009 (and d!1752489 d!1752297)))

(assert (=> bs!1278009 (not (= lambda!296814 lambda!296773))))

(declare-fun bs!1278010 () Bool)

(assert (= bs!1278010 (and d!1752489 b!5530179)))

(assert (=> bs!1278010 (not (= lambda!296814 lambda!296812))))

(declare-fun bs!1278011 () Bool)

(assert (= bs!1278011 (and d!1752489 b!5530159)))

(assert (=> bs!1278011 (not (= lambda!296814 lambda!296806))))

(declare-fun bs!1278012 () Bool)

(assert (= bs!1278012 (and d!1752489 b!5529280)))

(assert (=> bs!1278012 (not (= lambda!296814 lambda!296703))))

(declare-fun bs!1278013 () Bool)

(assert (= bs!1278013 (and d!1752489 d!1752465)))

(assert (=> bs!1278013 (= (and (= lt!2248101 lt!2248109) (= lambda!296698 lambda!296705)) (= lambda!296814 lambda!296803))))

(declare-fun bs!1278014 () Bool)

(assert (= bs!1278014 (and d!1752489 b!5529285)))

(assert (=> bs!1278014 (not (= lambda!296814 lambda!296706))))

(declare-fun bs!1278015 () Bool)

(assert (= bs!1278015 (and d!1752489 d!1752315)))

(assert (=> bs!1278015 (not (= lambda!296814 lambda!296778))))

(declare-fun bs!1278016 () Bool)

(assert (= bs!1278016 (and d!1752489 b!5530181)))

(assert (=> bs!1278016 (not (= lambda!296814 lambda!296813))))

(declare-fun bs!1278017 () Bool)

(assert (= bs!1278017 (and d!1752489 b!5530157)))

(assert (=> bs!1278017 (not (= lambda!296814 lambda!296805))))

(declare-fun bs!1278018 () Bool)

(assert (= bs!1278018 (and d!1752489 b!5529273)))

(assert (=> bs!1278018 (not (= lambda!296814 lambda!296699))))

(declare-fun bs!1278019 () Bool)

(assert (= bs!1278019 (and d!1752489 d!1752409)))

(assert (=> bs!1278019 (not (= lambda!296814 lambda!296792))))

(declare-fun bs!1278020 () Bool)

(assert (= bs!1278020 (and d!1752489 d!1752357)))

(assert (=> bs!1278020 (not (= lambda!296814 lambda!296782))))

(declare-fun bs!1278021 () Bool)

(assert (= bs!1278021 (and d!1752489 d!1752443)))

(assert (=> bs!1278021 (not (= lambda!296814 lambda!296797))))

(declare-fun bs!1278022 () Bool)

(assert (= bs!1278022 (and d!1752489 d!1752399)))

(assert (=> bs!1278022 (not (= lambda!296814 lambda!296791))))

(declare-fun bs!1278023 () Bool)

(assert (= bs!1278023 (and d!1752489 b!5529287)))

(assert (=> bs!1278023 (not (= lambda!296814 lambda!296707))))

(declare-fun bs!1278024 () Bool)

(assert (= bs!1278024 (and d!1752489 b!5529275)))

(assert (=> bs!1278024 (not (= lambda!296814 lambda!296700))))

(assert (=> d!1752489 true))

(assert (=> d!1752489 true))

(assert (=> d!1752489 (< (dynLambda!24525 order!27131 lambda!296698) (dynLambda!24526 order!27133 lambda!296814))))

(assert (=> d!1752489 (forall!14693 (t!376100 (Cons!62719 lt!2247930 Nil!62719)) lambda!296814)))

(declare-fun lt!2248237 () Unit!155488)

(assert (=> d!1752489 (= lt!2248237 (choose!42024 (t!376100 (Cons!62719 lt!2247930 Nil!62719)) lt!2248101 (zipperDepth!197 (t!376100 (Cons!62719 lt!2247930 Nil!62719))) lambda!296698))))

(assert (=> d!1752489 (>= lt!2248101 (zipperDepth!197 (t!376100 (Cons!62719 lt!2247930 Nil!62719))))))

(assert (=> d!1752489 (= (lemmaForallContextDepthBiggerThanTransitive!102 (t!376100 (Cons!62719 lt!2247930 Nil!62719)) lt!2248101 (zipperDepth!197 (t!376100 (Cons!62719 lt!2247930 Nil!62719))) lambda!296698) lt!2248237)))

(declare-fun bs!1278025 () Bool)

(assert (= bs!1278025 d!1752489))

(declare-fun m!6532288 () Bool)

(assert (=> bs!1278025 m!6532288))

(assert (=> bs!1278025 m!6531348))

(declare-fun m!6532290 () Bool)

(assert (=> bs!1278025 m!6532290))

(assert (=> b!5529273 d!1752489))

(declare-fun b!5530184 () Bool)

(declare-fun res!2354652 () Bool)

(declare-fun e!3418625 () Bool)

(assert (=> b!5530184 (=> (not res!2354652) (not e!3418625))))

(assert (=> b!5530184 (= res!2354652 (isEmpty!34511 (tail!10927 (_1!35914 (get!21587 lt!2248045)))))))

(declare-fun b!5530185 () Bool)

(declare-fun e!3418631 () Bool)

(declare-fun e!3418627 () Bool)

(assert (=> b!5530185 (= e!3418631 e!3418627)))

(declare-fun res!2354650 () Bool)

(assert (=> b!5530185 (=> (not res!2354650) (not e!3418627))))

(declare-fun lt!2248238 () Bool)

(assert (=> b!5530185 (= res!2354650 (not lt!2248238))))

(declare-fun b!5530186 () Bool)

(declare-fun e!3418630 () Bool)

(assert (=> b!5530186 (= e!3418630 (matchR!7699 (derivativeStep!4379 (regOne!31540 r!7292) (head!11832 (_1!35914 (get!21587 lt!2248045)))) (tail!10927 (_1!35914 (get!21587 lt!2248045)))))))

(declare-fun b!5530187 () Bool)

(declare-fun e!3418628 () Bool)

(assert (=> b!5530187 (= e!3418628 (not (= (head!11832 (_1!35914 (get!21587 lt!2248045))) (c!967395 (regOne!31540 r!7292)))))))

(declare-fun bm!410579 () Bool)

(declare-fun call!410584 () Bool)

(assert (=> bm!410579 (= call!410584 (isEmpty!34511 (_1!35914 (get!21587 lt!2248045))))))

(declare-fun b!5530188 () Bool)

(declare-fun res!2354646 () Bool)

(assert (=> b!5530188 (=> res!2354646 e!3418631)))

(assert (=> b!5530188 (= res!2354646 e!3418625)))

(declare-fun res!2354653 () Bool)

(assert (=> b!5530188 (=> (not res!2354653) (not e!3418625))))

(assert (=> b!5530188 (= res!2354653 lt!2248238)))

(declare-fun b!5530189 () Bool)

(assert (=> b!5530189 (= e!3418625 (= (head!11832 (_1!35914 (get!21587 lt!2248045))) (c!967395 (regOne!31540 r!7292))))))

(declare-fun b!5530190 () Bool)

(assert (=> b!5530190 (= e!3418627 e!3418628)))

(declare-fun res!2354651 () Bool)

(assert (=> b!5530190 (=> res!2354651 e!3418628)))

(assert (=> b!5530190 (= res!2354651 call!410584)))

(declare-fun d!1752491 () Bool)

(declare-fun e!3418626 () Bool)

(assert (=> d!1752491 e!3418626))

(declare-fun c!967789 () Bool)

(assert (=> d!1752491 (= c!967789 (is-EmptyExpr!15514 (regOne!31540 r!7292)))))

(assert (=> d!1752491 (= lt!2248238 e!3418630)))

(declare-fun c!967790 () Bool)

(assert (=> d!1752491 (= c!967790 (isEmpty!34511 (_1!35914 (get!21587 lt!2248045))))))

(assert (=> d!1752491 (validRegex!7250 (regOne!31540 r!7292))))

(assert (=> d!1752491 (= (matchR!7699 (regOne!31540 r!7292) (_1!35914 (get!21587 lt!2248045))) lt!2248238)))

(declare-fun b!5530191 () Bool)

(declare-fun e!3418629 () Bool)

(assert (=> b!5530191 (= e!3418626 e!3418629)))

(declare-fun c!967788 () Bool)

(assert (=> b!5530191 (= c!967788 (is-EmptyLang!15514 (regOne!31540 r!7292)))))

(declare-fun b!5530192 () Bool)

(declare-fun res!2354647 () Bool)

(assert (=> b!5530192 (=> res!2354647 e!3418628)))

(assert (=> b!5530192 (= res!2354647 (not (isEmpty!34511 (tail!10927 (_1!35914 (get!21587 lt!2248045))))))))

(declare-fun b!5530193 () Bool)

(declare-fun res!2354649 () Bool)

(assert (=> b!5530193 (=> (not res!2354649) (not e!3418625))))

(assert (=> b!5530193 (= res!2354649 (not call!410584))))

(declare-fun b!5530194 () Bool)

(assert (=> b!5530194 (= e!3418630 (nullable!5548 (regOne!31540 r!7292)))))

(declare-fun b!5530195 () Bool)

(assert (=> b!5530195 (= e!3418626 (= lt!2248238 call!410584))))

(declare-fun b!5530196 () Bool)

(assert (=> b!5530196 (= e!3418629 (not lt!2248238))))

(declare-fun b!5530197 () Bool)

(declare-fun res!2354648 () Bool)

(assert (=> b!5530197 (=> res!2354648 e!3418631)))

(assert (=> b!5530197 (= res!2354648 (not (is-ElementMatch!15514 (regOne!31540 r!7292))))))

(assert (=> b!5530197 (= e!3418629 e!3418631)))

(assert (= (and d!1752491 c!967790) b!5530194))

(assert (= (and d!1752491 (not c!967790)) b!5530186))

(assert (= (and d!1752491 c!967789) b!5530195))

(assert (= (and d!1752491 (not c!967789)) b!5530191))

(assert (= (and b!5530191 c!967788) b!5530196))

(assert (= (and b!5530191 (not c!967788)) b!5530197))

(assert (= (and b!5530197 (not res!2354648)) b!5530188))

(assert (= (and b!5530188 res!2354653) b!5530193))

(assert (= (and b!5530193 res!2354649) b!5530184))

(assert (= (and b!5530184 res!2354652) b!5530189))

(assert (= (and b!5530188 (not res!2354646)) b!5530185))

(assert (= (and b!5530185 res!2354650) b!5530190))

(assert (= (and b!5530190 (not res!2354651)) b!5530192))

(assert (= (and b!5530192 (not res!2354647)) b!5530187))

(assert (= (or b!5530195 b!5530193 b!5530190) bm!410579))

(declare-fun m!6532292 () Bool)

(assert (=> b!5530186 m!6532292))

(assert (=> b!5530186 m!6532292))

(declare-fun m!6532294 () Bool)

(assert (=> b!5530186 m!6532294))

(declare-fun m!6532296 () Bool)

(assert (=> b!5530186 m!6532296))

(assert (=> b!5530186 m!6532294))

(assert (=> b!5530186 m!6532296))

(declare-fun m!6532298 () Bool)

(assert (=> b!5530186 m!6532298))

(assert (=> b!5530194 m!6530898))

(declare-fun m!6532300 () Bool)

(assert (=> d!1752491 m!6532300))

(assert (=> d!1752491 m!6531172))

(assert (=> b!5530187 m!6532292))

(assert (=> b!5530189 m!6532292))

(assert (=> b!5530192 m!6532296))

(assert (=> b!5530192 m!6532296))

(declare-fun m!6532302 () Bool)

(assert (=> b!5530192 m!6532302))

(assert (=> bm!410579 m!6532300))

(assert (=> b!5530184 m!6532296))

(assert (=> b!5530184 m!6532296))

(assert (=> b!5530184 m!6532302))

(assert (=> b!5529009 d!1752491))

(assert (=> b!5529009 d!1752425))

(declare-fun bs!1278026 () Bool)

(declare-fun b!5530198 () Bool)

(assert (= bs!1278026 (and b!5530198 b!5529167)))

(declare-fun lt!2248242 () Int)

(declare-fun lambda!296815 () Int)

(assert (=> bs!1278026 (= (= lt!2248242 lt!2248075) (= lambda!296815 lambda!296683))))

(declare-fun bs!1278027 () Bool)

(assert (= bs!1278027 (and b!5530198 d!1752031)))

(assert (=> bs!1278027 (not (= lambda!296815 lambda!296657))))

(declare-fun bs!1278028 () Bool)

(assert (= bs!1278028 (and b!5530198 d!1752349)))

(assert (=> bs!1278028 (not (= lambda!296815 lambda!296779))))

(declare-fun bs!1278029 () Bool)

(assert (= bs!1278029 (and b!5530198 b!5529162)))

(assert (=> bs!1278029 (= (= lt!2248242 lt!2248071) (= lambda!296815 lambda!296681))))

(declare-fun bs!1278030 () Bool)

(assert (= bs!1278030 (and b!5530198 d!1752277)))

(assert (=> bs!1278030 (not (= lambda!296815 lambda!296770))))

(declare-fun bs!1278031 () Bool)

(assert (= bs!1278031 (and b!5530198 d!1752115)))

(assert (=> bs!1278031 (not (= lambda!296815 lambda!296691))))

(declare-fun bs!1278032 () Bool)

(assert (= bs!1278032 (and b!5530198 d!1752085)))

(assert (=> bs!1278032 (not (= lambda!296815 lambda!296690))))

(declare-fun bs!1278033 () Bool)

(assert (= bs!1278033 (and b!5530198 b!5529164)))

(assert (=> bs!1278033 (= (= lt!2248242 lt!2248070) (= lambda!296815 lambda!296682))))

(declare-fun bs!1278034 () Bool)

(assert (= bs!1278034 (and b!5530198 b!5529290)))

(assert (=> bs!1278034 (= (= lt!2248242 lt!2248112) (= lambda!296815 lambda!296709))))

(declare-fun bs!1278035 () Bool)

(assert (= bs!1278035 (and b!5530198 d!1752029)))

(assert (=> bs!1278035 (not (= lambda!296815 lambda!296654))))

(declare-fun bs!1278036 () Bool)

(assert (= bs!1278036 (and b!5530198 d!1752257)))

(assert (=> bs!1278036 (not (= lambda!296815 lambda!296768))))

(declare-fun bs!1278037 () Bool)

(assert (= bs!1278037 (and b!5530198 b!5530176)))

(assert (=> bs!1278037 (= (= lt!2248242 lt!2248232) (= lambda!296815 lambda!296809))))

(declare-fun bs!1278038 () Bool)

(assert (= bs!1278038 (and b!5530198 b!5529288)))

(assert (=> bs!1278038 (= (= lt!2248242 lt!2248113) (= lambda!296815 lambda!296708))))

(declare-fun bs!1278039 () Bool)

(assert (= bs!1278039 (and b!5530198 d!1752445)))

(assert (=> bs!1278039 (not (= lambda!296815 lambda!296798))))

(declare-fun bs!1278040 () Bool)

(assert (= bs!1278040 (and b!5530198 b!5530160)))

(assert (=> bs!1278040 (= (= lt!2248242 lt!2248228) (= lambda!296815 lambda!296807))))

(declare-fun bs!1278041 () Bool)

(assert (= bs!1278041 (and b!5530198 b!5529169)))

(assert (=> bs!1278041 (= (= lt!2248242 lt!2248074) (= lambda!296815 lambda!296684))))

(declare-fun bs!1278042 () Bool)

(assert (= bs!1278042 (and b!5530198 b!5530178)))

(assert (=> bs!1278042 (= (= lt!2248242 lt!2248231) (= lambda!296815 lambda!296810))))

(declare-fun bs!1278043 () Bool)

(assert (= bs!1278043 (and b!5530198 b!5530162)))

(assert (=> bs!1278043 (= (= lt!2248242 lt!2248227) (= lambda!296815 lambda!296808))))

(declare-fun bs!1278044 () Bool)

(assert (= bs!1278044 (and b!5530198 d!1752299)))

(assert (=> bs!1278044 (not (= lambda!296815 lambda!296774))))

(declare-fun bs!1278045 () Bool)

(assert (= bs!1278045 (and b!5530198 d!1752083)))

(assert (=> bs!1278045 (not (= lambda!296815 lambda!296687))))

(assert (=> b!5530198 true))

(declare-fun bs!1278046 () Bool)

(declare-fun b!5530200 () Bool)

(assert (= bs!1278046 (and b!5530200 b!5529167)))

(declare-fun lt!2248241 () Int)

(declare-fun lambda!296816 () Int)

(assert (=> bs!1278046 (= (= lt!2248241 lt!2248075) (= lambda!296816 lambda!296683))))

(declare-fun bs!1278047 () Bool)

(assert (= bs!1278047 (and b!5530200 d!1752031)))

(assert (=> bs!1278047 (not (= lambda!296816 lambda!296657))))

(declare-fun bs!1278048 () Bool)

(assert (= bs!1278048 (and b!5530200 d!1752349)))

(assert (=> bs!1278048 (not (= lambda!296816 lambda!296779))))

(declare-fun bs!1278049 () Bool)

(assert (= bs!1278049 (and b!5530200 b!5529162)))

(assert (=> bs!1278049 (= (= lt!2248241 lt!2248071) (= lambda!296816 lambda!296681))))

(declare-fun bs!1278050 () Bool)

(assert (= bs!1278050 (and b!5530200 d!1752277)))

(assert (=> bs!1278050 (not (= lambda!296816 lambda!296770))))

(declare-fun bs!1278051 () Bool)

(assert (= bs!1278051 (and b!5530200 d!1752115)))

(assert (=> bs!1278051 (not (= lambda!296816 lambda!296691))))

(declare-fun bs!1278052 () Bool)

(assert (= bs!1278052 (and b!5530200 d!1752085)))

(assert (=> bs!1278052 (not (= lambda!296816 lambda!296690))))

(declare-fun bs!1278053 () Bool)

(assert (= bs!1278053 (and b!5530200 b!5529164)))

(assert (=> bs!1278053 (= (= lt!2248241 lt!2248070) (= lambda!296816 lambda!296682))))

(declare-fun bs!1278054 () Bool)

(assert (= bs!1278054 (and b!5530200 b!5529290)))

(assert (=> bs!1278054 (= (= lt!2248241 lt!2248112) (= lambda!296816 lambda!296709))))

(declare-fun bs!1278055 () Bool)

(assert (= bs!1278055 (and b!5530200 b!5530198)))

(assert (=> bs!1278055 (= (= lt!2248241 lt!2248242) (= lambda!296816 lambda!296815))))

(declare-fun bs!1278056 () Bool)

(assert (= bs!1278056 (and b!5530200 d!1752029)))

(assert (=> bs!1278056 (not (= lambda!296816 lambda!296654))))

(declare-fun bs!1278057 () Bool)

(assert (= bs!1278057 (and b!5530200 d!1752257)))

(assert (=> bs!1278057 (not (= lambda!296816 lambda!296768))))

(declare-fun bs!1278058 () Bool)

(assert (= bs!1278058 (and b!5530200 b!5530176)))

(assert (=> bs!1278058 (= (= lt!2248241 lt!2248232) (= lambda!296816 lambda!296809))))

(declare-fun bs!1278059 () Bool)

(assert (= bs!1278059 (and b!5530200 b!5529288)))

(assert (=> bs!1278059 (= (= lt!2248241 lt!2248113) (= lambda!296816 lambda!296708))))

(declare-fun bs!1278060 () Bool)

(assert (= bs!1278060 (and b!5530200 d!1752445)))

(assert (=> bs!1278060 (not (= lambda!296816 lambda!296798))))

(declare-fun bs!1278061 () Bool)

(assert (= bs!1278061 (and b!5530200 b!5530160)))

(assert (=> bs!1278061 (= (= lt!2248241 lt!2248228) (= lambda!296816 lambda!296807))))

(declare-fun bs!1278062 () Bool)

(assert (= bs!1278062 (and b!5530200 b!5529169)))

(assert (=> bs!1278062 (= (= lt!2248241 lt!2248074) (= lambda!296816 lambda!296684))))

(declare-fun bs!1278063 () Bool)

(assert (= bs!1278063 (and b!5530200 b!5530178)))

(assert (=> bs!1278063 (= (= lt!2248241 lt!2248231) (= lambda!296816 lambda!296810))))

(declare-fun bs!1278064 () Bool)

(assert (= bs!1278064 (and b!5530200 b!5530162)))

(assert (=> bs!1278064 (= (= lt!2248241 lt!2248227) (= lambda!296816 lambda!296808))))

(declare-fun bs!1278065 () Bool)

(assert (= bs!1278065 (and b!5530200 d!1752299)))

(assert (=> bs!1278065 (not (= lambda!296816 lambda!296774))))

(declare-fun bs!1278066 () Bool)

(assert (= bs!1278066 (and b!5530200 d!1752083)))

(assert (=> bs!1278066 (not (= lambda!296816 lambda!296687))))

(assert (=> b!5530200 true))

(declare-fun d!1752493 () Bool)

(declare-fun e!3418633 () Bool)

(assert (=> d!1752493 e!3418633))

(declare-fun res!2354654 () Bool)

(assert (=> d!1752493 (=> (not res!2354654) (not e!3418633))))

(assert (=> d!1752493 (= res!2354654 (>= lt!2248241 0))))

(declare-fun e!3418632 () Int)

(assert (=> d!1752493 (= lt!2248241 e!3418632)))

(declare-fun c!967791 () Bool)

(assert (=> d!1752493 (= c!967791 (is-Cons!62717 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930))))))))

(assert (=> d!1752493 (= (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247930)))) lt!2248241)))

(assert (=> b!5530198 (= e!3418632 lt!2248242)))

(assert (=> b!5530198 (= lt!2248242 (maxBigInt!0 (regexDepth!214 (h!69165 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930)))))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930)))))))))))

(declare-fun lt!2248239 () Unit!155488)

(assert (=> b!5530198 (= lt!2248239 (lemmaForallRegexDepthBiggerThanTransitive!19 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930))))) lt!2248242 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930)))))))))))

(assert (=> b!5530198 (forall!14692 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930))))) lambda!296815)))

(declare-fun lt!2248240 () Unit!155488)

(assert (=> b!5530198 (= lt!2248240 lt!2248239)))

(declare-fun b!5530199 () Bool)

(assert (=> b!5530199 (= e!3418632 0)))

(assert (=> b!5530200 (= e!3418633 (forall!14692 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247930)))) lambda!296816))))

(assert (= (and d!1752493 c!967791) b!5530198))

(assert (= (and d!1752493 (not c!967791)) b!5530199))

(assert (= (and d!1752493 res!2354654) b!5530200))

(declare-fun m!6532304 () Bool)

(assert (=> b!5530198 m!6532304))

(declare-fun m!6532306 () Bool)

(assert (=> b!5530198 m!6532306))

(declare-fun m!6532308 () Bool)

(assert (=> b!5530198 m!6532308))

(assert (=> b!5530198 m!6532306))

(declare-fun m!6532310 () Bool)

(assert (=> b!5530198 m!6532310))

(assert (=> b!5530198 m!6532306))

(declare-fun m!6532312 () Bool)

(assert (=> b!5530198 m!6532312))

(assert (=> b!5530198 m!6532304))

(declare-fun m!6532314 () Bool)

(assert (=> b!5530200 m!6532314))

(assert (=> b!5529162 d!1752493))

(declare-fun d!1752495 () Bool)

(declare-fun res!2354655 () Bool)

(declare-fun e!3418634 () Bool)

(assert (=> d!1752495 (=> res!2354655 e!3418634)))

(assert (=> d!1752495 (= res!2354655 (is-Nil!62717 (t!376098 (exprs!5398 lt!2247930))))))

(assert (=> d!1752495 (= (forall!14692 (t!376098 (exprs!5398 lt!2247930)) lambda!296681) e!3418634)))

(declare-fun b!5530201 () Bool)

(declare-fun e!3418635 () Bool)

(assert (=> b!5530201 (= e!3418634 e!3418635)))

(declare-fun res!2354656 () Bool)

(assert (=> b!5530201 (=> (not res!2354656) (not e!3418635))))

(assert (=> b!5530201 (= res!2354656 (dynLambda!24523 lambda!296681 (h!69165 (t!376098 (exprs!5398 lt!2247930)))))))

(declare-fun b!5530202 () Bool)

(assert (=> b!5530202 (= e!3418635 (forall!14692 (t!376098 (t!376098 (exprs!5398 lt!2247930))) lambda!296681))))

(assert (= (and d!1752495 (not res!2354655)) b!5530201))

(assert (= (and b!5530201 res!2354656) b!5530202))

(declare-fun b_lambda!209883 () Bool)

(assert (=> (not b_lambda!209883) (not b!5530201)))

(declare-fun m!6532316 () Bool)

(assert (=> b!5530201 m!6532316))

(declare-fun m!6532318 () Bool)

(assert (=> b!5530202 m!6532318))

(assert (=> b!5529162 d!1752495))

(declare-fun bs!1278067 () Bool)

(declare-fun d!1752497 () Bool)

(assert (= bs!1278067 (and d!1752497 b!5529167)))

(declare-fun lambda!296819 () Int)

(assert (=> bs!1278067 (= (= lt!2248071 lt!2248075) (= lambda!296819 lambda!296683))))

(declare-fun bs!1278068 () Bool)

(assert (= bs!1278068 (and d!1752497 d!1752031)))

(assert (=> bs!1278068 (not (= lambda!296819 lambda!296657))))

(declare-fun bs!1278069 () Bool)

(assert (= bs!1278069 (and d!1752497 b!5530200)))

(assert (=> bs!1278069 (= (= lt!2248071 lt!2248241) (= lambda!296819 lambda!296816))))

(declare-fun bs!1278070 () Bool)

(assert (= bs!1278070 (and d!1752497 d!1752349)))

(assert (=> bs!1278070 (not (= lambda!296819 lambda!296779))))

(declare-fun bs!1278071 () Bool)

(assert (= bs!1278071 (and d!1752497 b!5529162)))

(assert (=> bs!1278071 (= lambda!296819 lambda!296681)))

(declare-fun bs!1278072 () Bool)

(assert (= bs!1278072 (and d!1752497 d!1752277)))

(assert (=> bs!1278072 (not (= lambda!296819 lambda!296770))))

(declare-fun bs!1278073 () Bool)

(assert (= bs!1278073 (and d!1752497 d!1752115)))

(assert (=> bs!1278073 (not (= lambda!296819 lambda!296691))))

(declare-fun bs!1278074 () Bool)

(assert (= bs!1278074 (and d!1752497 d!1752085)))

(assert (=> bs!1278074 (not (= lambda!296819 lambda!296690))))

(declare-fun bs!1278075 () Bool)

(assert (= bs!1278075 (and d!1752497 b!5529164)))

(assert (=> bs!1278075 (= (= lt!2248071 lt!2248070) (= lambda!296819 lambda!296682))))

(declare-fun bs!1278076 () Bool)

(assert (= bs!1278076 (and d!1752497 b!5529290)))

(assert (=> bs!1278076 (= (= lt!2248071 lt!2248112) (= lambda!296819 lambda!296709))))

(declare-fun bs!1278077 () Bool)

(assert (= bs!1278077 (and d!1752497 b!5530198)))

(assert (=> bs!1278077 (= (= lt!2248071 lt!2248242) (= lambda!296819 lambda!296815))))

(declare-fun bs!1278078 () Bool)

(assert (= bs!1278078 (and d!1752497 d!1752029)))

(assert (=> bs!1278078 (not (= lambda!296819 lambda!296654))))

(declare-fun bs!1278079 () Bool)

(assert (= bs!1278079 (and d!1752497 d!1752257)))

(assert (=> bs!1278079 (not (= lambda!296819 lambda!296768))))

(declare-fun bs!1278080 () Bool)

(assert (= bs!1278080 (and d!1752497 b!5530176)))

(assert (=> bs!1278080 (= (= lt!2248071 lt!2248232) (= lambda!296819 lambda!296809))))

(declare-fun bs!1278081 () Bool)

(assert (= bs!1278081 (and d!1752497 b!5529288)))

(assert (=> bs!1278081 (= (= lt!2248071 lt!2248113) (= lambda!296819 lambda!296708))))

(declare-fun bs!1278082 () Bool)

(assert (= bs!1278082 (and d!1752497 d!1752445)))

(assert (=> bs!1278082 (not (= lambda!296819 lambda!296798))))

(declare-fun bs!1278083 () Bool)

(assert (= bs!1278083 (and d!1752497 b!5530160)))

(assert (=> bs!1278083 (= (= lt!2248071 lt!2248228) (= lambda!296819 lambda!296807))))

(declare-fun bs!1278084 () Bool)

(assert (= bs!1278084 (and d!1752497 b!5529169)))

(assert (=> bs!1278084 (= (= lt!2248071 lt!2248074) (= lambda!296819 lambda!296684))))

(declare-fun bs!1278085 () Bool)

(assert (= bs!1278085 (and d!1752497 b!5530178)))

(assert (=> bs!1278085 (= (= lt!2248071 lt!2248231) (= lambda!296819 lambda!296810))))

(declare-fun bs!1278086 () Bool)

(assert (= bs!1278086 (and d!1752497 b!5530162)))

(assert (=> bs!1278086 (= (= lt!2248071 lt!2248227) (= lambda!296819 lambda!296808))))

(declare-fun bs!1278087 () Bool)

(assert (= bs!1278087 (and d!1752497 d!1752299)))

(assert (=> bs!1278087 (not (= lambda!296819 lambda!296774))))

(declare-fun bs!1278088 () Bool)

(assert (= bs!1278088 (and d!1752497 d!1752083)))

(assert (=> bs!1278088 (not (= lambda!296819 lambda!296687))))

(assert (=> d!1752497 true))

(assert (=> d!1752497 (forall!14692 (t!376098 (exprs!5398 lt!2247930)) lambda!296819)))

(declare-fun lt!2248245 () Unit!155488)

(declare-fun choose!42025 (List!62841 Int Int) Unit!155488)

(assert (=> d!1752497 (= lt!2248245 (choose!42025 (t!376098 (exprs!5398 lt!2247930)) lt!2248071 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247930))))))))

(assert (=> d!1752497 (>= lt!2248071 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247930)))))))

(assert (=> d!1752497 (= (lemmaForallRegexDepthBiggerThanTransitive!19 (t!376098 (exprs!5398 lt!2247930)) lt!2248071 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247930))))) lt!2248245)))

(declare-fun bs!1278089 () Bool)

(assert (= bs!1278089 d!1752497))

(declare-fun m!6532320 () Bool)

(assert (=> bs!1278089 m!6532320))

(assert (=> bs!1278089 m!6531232))

(declare-fun m!6532322 () Bool)

(assert (=> bs!1278089 m!6532322))

(assert (=> b!5529162 d!1752497))

(declare-fun b!5530238 () Bool)

(declare-fun e!3418660 () Int)

(declare-fun e!3418665 () Int)

(assert (=> b!5530238 (= e!3418660 e!3418665)))

(declare-fun c!967809 () Bool)

(assert (=> b!5530238 (= c!967809 (is-Star!15514 (h!69165 (exprs!5398 lt!2247930))))))

(declare-fun b!5530239 () Bool)

(declare-fun call!410604 () Int)

(assert (=> b!5530239 (= e!3418665 (+ 1 call!410604))))

(declare-fun b!5530240 () Bool)

(declare-fun e!3418664 () Int)

(declare-fun e!3418662 () Int)

(assert (=> b!5530240 (= e!3418664 e!3418662)))

(declare-fun c!967812 () Bool)

(assert (=> b!5530240 (= c!967812 (is-Concat!24359 (h!69165 (exprs!5398 lt!2247930))))))

(declare-fun b!5530241 () Bool)

(declare-fun e!3418659 () Bool)

(declare-fun e!3418658 () Bool)

(assert (=> b!5530241 (= e!3418659 e!3418658)))

(declare-fun c!967807 () Bool)

(assert (=> b!5530241 (= c!967807 (is-Union!15514 (h!69165 (exprs!5398 lt!2247930))))))

(declare-fun c!967806 () Bool)

(declare-fun call!410599 () Int)

(declare-fun bm!410594 () Bool)

(declare-fun call!410601 () Int)

(declare-fun call!410603 () Int)

(assert (=> bm!410594 (= call!410599 (maxBigInt!0 (ite c!967806 call!410603 call!410601) (ite c!967806 call!410601 call!410603)))))

(declare-fun bm!410595 () Bool)

(assert (=> bm!410595 (= call!410604 (regexDepth!214 (ite c!967809 (reg!15843 (h!69165 (exprs!5398 lt!2247930))) (ite c!967806 (regTwo!31541 (h!69165 (exprs!5398 lt!2247930))) (regOne!31540 (h!69165 (exprs!5398 lt!2247930)))))))))

(declare-fun b!5530242 () Bool)

(assert (=> b!5530242 (= e!3418662 (+ 1 call!410599))))

(declare-fun b!5530243 () Bool)

(assert (=> b!5530243 (= e!3418664 (+ 1 call!410599))))

(declare-fun bm!410596 () Bool)

(declare-fun call!410602 () Int)

(declare-fun call!410600 () Int)

(assert (=> bm!410596 (= call!410602 call!410600)))

(declare-fun bm!410597 () Bool)

(assert (=> bm!410597 (= call!410601 call!410604)))

(declare-fun b!5530244 () Bool)

(assert (=> b!5530244 (= e!3418660 1)))

(declare-fun d!1752499 () Bool)

(assert (=> d!1752499 e!3418659))

(declare-fun res!2354663 () Bool)

(assert (=> d!1752499 (=> (not res!2354663) (not e!3418659))))

(declare-fun lt!2248248 () Int)

(assert (=> d!1752499 (= res!2354663 (> lt!2248248 0))))

(assert (=> d!1752499 (= lt!2248248 e!3418660)))

(declare-fun c!967811 () Bool)

(assert (=> d!1752499 (= c!967811 (is-ElementMatch!15514 (h!69165 (exprs!5398 lt!2247930))))))

(assert (=> d!1752499 (= (regexDepth!214 (h!69165 (exprs!5398 lt!2247930))) lt!2248248)))

(declare-fun b!5530245 () Bool)

(declare-fun c!967810 () Bool)

(assert (=> b!5530245 (= c!967810 (is-Star!15514 (h!69165 (exprs!5398 lt!2247930))))))

(declare-fun e!3418657 () Bool)

(declare-fun e!3418663 () Bool)

(assert (=> b!5530245 (= e!3418657 e!3418663)))

(declare-fun b!5530246 () Bool)

(declare-fun e!3418656 () Bool)

(assert (=> b!5530246 (= e!3418656 (> lt!2248248 call!410600))))

(declare-fun b!5530247 () Bool)

(declare-fun res!2354665 () Bool)

(declare-fun e!3418661 () Bool)

(assert (=> b!5530247 (=> (not res!2354665) (not e!3418661))))

(assert (=> b!5530247 (= res!2354665 (> lt!2248248 call!410602))))

(assert (=> b!5530247 (= e!3418657 e!3418661)))

(declare-fun bm!410598 () Bool)

(declare-fun call!410605 () Int)

(assert (=> bm!410598 (= call!410605 (regexDepth!214 (ite c!967807 (regOne!31541 (h!69165 (exprs!5398 lt!2247930))) (regTwo!31540 (h!69165 (exprs!5398 lt!2247930))))))))

(declare-fun b!5530248 () Bool)

(assert (=> b!5530248 (= e!3418661 (> lt!2248248 call!410605))))

(declare-fun bm!410599 () Bool)

(declare-fun c!967808 () Bool)

(assert (=> bm!410599 (= call!410600 (regexDepth!214 (ite c!967807 (regTwo!31541 (h!69165 (exprs!5398 lt!2247930))) (ite c!967808 (regOne!31540 (h!69165 (exprs!5398 lt!2247930))) (reg!15843 (h!69165 (exprs!5398 lt!2247930)))))))))

(declare-fun b!5530249 () Bool)

(assert (=> b!5530249 (= e!3418662 1)))

(declare-fun bm!410600 () Bool)

(assert (=> bm!410600 (= call!410603 (regexDepth!214 (ite c!967806 (regOne!31541 (h!69165 (exprs!5398 lt!2247930))) (regTwo!31540 (h!69165 (exprs!5398 lt!2247930))))))))

(declare-fun b!5530250 () Bool)

(assert (=> b!5530250 (= e!3418658 e!3418657)))

(assert (=> b!5530250 (= c!967808 (is-Concat!24359 (h!69165 (exprs!5398 lt!2247930))))))

(declare-fun b!5530251 () Bool)

(assert (=> b!5530251 (= e!3418663 (= lt!2248248 1))))

(declare-fun b!5530252 () Bool)

(assert (=> b!5530252 (= e!3418663 (> lt!2248248 call!410602))))

(declare-fun b!5530253 () Bool)

(assert (=> b!5530253 (= c!967806 (is-Union!15514 (h!69165 (exprs!5398 lt!2247930))))))

(assert (=> b!5530253 (= e!3418665 e!3418664)))

(declare-fun b!5530254 () Bool)

(assert (=> b!5530254 (= e!3418658 e!3418656)))

(declare-fun res!2354664 () Bool)

(assert (=> b!5530254 (= res!2354664 (> lt!2248248 call!410605))))

(assert (=> b!5530254 (=> (not res!2354664) (not e!3418656))))

(assert (= (and d!1752499 c!967811) b!5530244))

(assert (= (and d!1752499 (not c!967811)) b!5530238))

(assert (= (and b!5530238 c!967809) b!5530239))

(assert (= (and b!5530238 (not c!967809)) b!5530253))

(assert (= (and b!5530253 c!967806) b!5530243))

(assert (= (and b!5530253 (not c!967806)) b!5530240))

(assert (= (and b!5530240 c!967812) b!5530242))

(assert (= (and b!5530240 (not c!967812)) b!5530249))

(assert (= (or b!5530243 b!5530242) bm!410597))

(assert (= (or b!5530243 b!5530242) bm!410600))

(assert (= (or b!5530243 b!5530242) bm!410594))

(assert (= (or b!5530239 bm!410597) bm!410595))

(assert (= (and d!1752499 res!2354663) b!5530241))

(assert (= (and b!5530241 c!967807) b!5530254))

(assert (= (and b!5530241 (not c!967807)) b!5530250))

(assert (= (and b!5530254 res!2354664) b!5530246))

(assert (= (and b!5530250 c!967808) b!5530247))

(assert (= (and b!5530250 (not c!967808)) b!5530245))

(assert (= (and b!5530247 res!2354665) b!5530248))

(assert (= (and b!5530245 c!967810) b!5530252))

(assert (= (and b!5530245 (not c!967810)) b!5530251))

(assert (= (or b!5530247 b!5530252) bm!410596))

(assert (= (or b!5530246 bm!410596) bm!410599))

(assert (= (or b!5530254 b!5530248) bm!410598))

(declare-fun m!6532324 () Bool)

(assert (=> bm!410594 m!6532324))

(declare-fun m!6532326 () Bool)

(assert (=> bm!410598 m!6532326))

(declare-fun m!6532328 () Bool)

(assert (=> bm!410595 m!6532328))

(declare-fun m!6532330 () Bool)

(assert (=> bm!410600 m!6532330))

(declare-fun m!6532332 () Bool)

(assert (=> bm!410599 m!6532332))

(assert (=> b!5529162 d!1752499))

(declare-fun d!1752501 () Bool)

(assert (=> d!1752501 (= (maxBigInt!0 (regexDepth!214 (h!69165 (exprs!5398 lt!2247930))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247930))))) (ite (>= (regexDepth!214 (h!69165 (exprs!5398 lt!2247930))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247930))))) (regexDepth!214 (h!69165 (exprs!5398 lt!2247930))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247930))))))))

(assert (=> b!5529162 d!1752501))

(assert (=> d!1752045 d!1752295))

(declare-fun bs!1278090 () Bool)

(declare-fun d!1752503 () Bool)

(assert (= bs!1278090 (and d!1752503 b!5529278)))

(declare-fun lambda!296820 () Int)

(assert (=> bs!1278090 (not (= lambda!296820 lambda!296702))))

(declare-fun bs!1278091 () Bool)

(assert (= bs!1278091 (and d!1752503 d!1752297)))

(assert (=> bs!1278091 (= lambda!296820 lambda!296773)))

(declare-fun bs!1278092 () Bool)

(assert (= bs!1278092 (and d!1752503 b!5530179)))

(assert (=> bs!1278092 (not (= lambda!296820 lambda!296812))))

(declare-fun bs!1278093 () Bool)

(assert (= bs!1278093 (and d!1752503 b!5530159)))

(assert (=> bs!1278093 (not (= lambda!296820 lambda!296806))))

(declare-fun bs!1278094 () Bool)

(assert (= bs!1278094 (and d!1752503 b!5529280)))

(assert (=> bs!1278094 (not (= lambda!296820 lambda!296703))))

(declare-fun bs!1278095 () Bool)

(assert (= bs!1278095 (and d!1752503 d!1752465)))

(assert (=> bs!1278095 (not (= lambda!296820 lambda!296803))))

(declare-fun bs!1278096 () Bool)

(assert (= bs!1278096 (and d!1752503 b!5529285)))

(assert (=> bs!1278096 (not (= lambda!296820 lambda!296706))))

(declare-fun bs!1278097 () Bool)

(assert (= bs!1278097 (and d!1752503 d!1752315)))

(assert (=> bs!1278097 (= lambda!296820 lambda!296778)))

(declare-fun bs!1278098 () Bool)

(assert (= bs!1278098 (and d!1752503 b!5530181)))

(assert (=> bs!1278098 (not (= lambda!296820 lambda!296813))))

(declare-fun bs!1278099 () Bool)

(assert (= bs!1278099 (and d!1752503 b!5530157)))

(assert (=> bs!1278099 (not (= lambda!296820 lambda!296805))))

(declare-fun bs!1278100 () Bool)

(assert (= bs!1278100 (and d!1752503 b!5529273)))

(assert (=> bs!1278100 (not (= lambda!296820 lambda!296699))))

(declare-fun bs!1278101 () Bool)

(assert (= bs!1278101 (and d!1752503 d!1752409)))

(assert (=> bs!1278101 (= lambda!296820 lambda!296792)))

(declare-fun bs!1278102 () Bool)

(assert (= bs!1278102 (and d!1752503 d!1752357)))

(assert (=> bs!1278102 (= lambda!296820 lambda!296782)))

(declare-fun bs!1278103 () Bool)

(assert (= bs!1278103 (and d!1752503 d!1752443)))

(assert (=> bs!1278103 (= lambda!296820 lambda!296797)))

(declare-fun bs!1278104 () Bool)

(assert (= bs!1278104 (and d!1752503 d!1752399)))

(assert (=> bs!1278104 (= lambda!296820 lambda!296791)))

(declare-fun bs!1278105 () Bool)

(assert (= bs!1278105 (and d!1752503 b!5529287)))

(assert (=> bs!1278105 (not (= lambda!296820 lambda!296707))))

(declare-fun bs!1278106 () Bool)

(assert (= bs!1278106 (and d!1752503 b!5529275)))

(assert (=> bs!1278106 (not (= lambda!296820 lambda!296700))))

(declare-fun bs!1278107 () Bool)

(assert (= bs!1278107 (and d!1752503 d!1752489)))

(assert (=> bs!1278107 (not (= lambda!296820 lambda!296814))))

(assert (=> d!1752503 (= (nullableZipper!1540 lt!2247916) (exists!2148 lt!2247916 lambda!296820))))

(declare-fun bs!1278108 () Bool)

(assert (= bs!1278108 d!1752503))

(declare-fun m!6532334 () Bool)

(assert (=> bs!1278108 m!6532334))

(assert (=> b!5528975 d!1752503))

(declare-fun d!1752505 () Bool)

(assert (=> d!1752505 (= (head!11831 (exprs!5398 (h!69167 zl!343))) (h!69165 (exprs!5398 (h!69167 zl!343))))))

(assert (=> b!5529194 d!1752505))

(declare-fun d!1752507 () Bool)

(assert (=> d!1752507 (= (nullable!5548 (h!69165 (exprs!5398 lt!2247908))) (nullableFct!1672 (h!69165 (exprs!5398 lt!2247908))))))

(declare-fun bs!1278109 () Bool)

(assert (= bs!1278109 d!1752507))

(declare-fun m!6532336 () Bool)

(assert (=> bs!1278109 m!6532336))

(assert (=> b!5529254 d!1752507))

(declare-fun d!1752509 () Bool)

(assert (=> d!1752509 (= (nullable!5548 (h!69165 (exprs!5398 lt!2247922))) (nullableFct!1672 (h!69165 (exprs!5398 lt!2247922))))))

(declare-fun bs!1278110 () Bool)

(assert (= bs!1278110 d!1752509))

(declare-fun m!6532338 () Bool)

(assert (=> bs!1278110 m!6532338))

(assert (=> b!5529249 d!1752509))

(declare-fun d!1752511 () Bool)

(assert (=> d!1752511 (= (isEmptyLang!1097 lt!2248032) (is-EmptyLang!15514 lt!2248032))))

(assert (=> b!5528947 d!1752511))

(declare-fun d!1752513 () Bool)

(declare-fun res!2354666 () Bool)

(declare-fun e!3418666 () Bool)

(assert (=> d!1752513 (=> res!2354666 e!3418666)))

(assert (=> d!1752513 (= res!2354666 (is-Nil!62717 (t!376098 (exprs!5398 lt!2247908))))))

(assert (=> d!1752513 (= (forall!14692 (t!376098 (exprs!5398 lt!2247908)) lambda!296683) e!3418666)))

(declare-fun b!5530255 () Bool)

(declare-fun e!3418667 () Bool)

(assert (=> b!5530255 (= e!3418666 e!3418667)))

(declare-fun res!2354667 () Bool)

(assert (=> b!5530255 (=> (not res!2354667) (not e!3418667))))

(assert (=> b!5530255 (= res!2354667 (dynLambda!24523 lambda!296683 (h!69165 (t!376098 (exprs!5398 lt!2247908)))))))

(declare-fun b!5530256 () Bool)

(assert (=> b!5530256 (= e!3418667 (forall!14692 (t!376098 (t!376098 (exprs!5398 lt!2247908))) lambda!296683))))

(assert (= (and d!1752513 (not res!2354666)) b!5530255))

(assert (= (and b!5530255 res!2354667) b!5530256))

(declare-fun b_lambda!209885 () Bool)

(assert (=> (not b_lambda!209885) (not b!5530255)))

(declare-fun m!6532340 () Bool)

(assert (=> b!5530255 m!6532340))

(declare-fun m!6532342 () Bool)

(assert (=> b!5530256 m!6532342))

(assert (=> b!5529167 d!1752513))

(declare-fun bs!1278111 () Bool)

(declare-fun b!5530257 () Bool)

(assert (= bs!1278111 (and b!5530257 b!5529167)))

(declare-fun lt!2248252 () Int)

(declare-fun lambda!296821 () Int)

(assert (=> bs!1278111 (= (= lt!2248252 lt!2248075) (= lambda!296821 lambda!296683))))

(declare-fun bs!1278112 () Bool)

(assert (= bs!1278112 (and b!5530257 d!1752031)))

(assert (=> bs!1278112 (not (= lambda!296821 lambda!296657))))

(declare-fun bs!1278113 () Bool)

(assert (= bs!1278113 (and b!5530257 b!5530200)))

(assert (=> bs!1278113 (= (= lt!2248252 lt!2248241) (= lambda!296821 lambda!296816))))

(declare-fun bs!1278114 () Bool)

(assert (= bs!1278114 (and b!5530257 d!1752349)))

(assert (=> bs!1278114 (not (= lambda!296821 lambda!296779))))

(declare-fun bs!1278115 () Bool)

(assert (= bs!1278115 (and b!5530257 b!5529162)))

(assert (=> bs!1278115 (= (= lt!2248252 lt!2248071) (= lambda!296821 lambda!296681))))

(declare-fun bs!1278116 () Bool)

(assert (= bs!1278116 (and b!5530257 d!1752277)))

(assert (=> bs!1278116 (not (= lambda!296821 lambda!296770))))

(declare-fun bs!1278117 () Bool)

(assert (= bs!1278117 (and b!5530257 d!1752115)))

(assert (=> bs!1278117 (not (= lambda!296821 lambda!296691))))

(declare-fun bs!1278118 () Bool)

(assert (= bs!1278118 (and b!5530257 d!1752085)))

(assert (=> bs!1278118 (not (= lambda!296821 lambda!296690))))

(declare-fun bs!1278119 () Bool)

(assert (= bs!1278119 (and b!5530257 b!5529164)))

(assert (=> bs!1278119 (= (= lt!2248252 lt!2248070) (= lambda!296821 lambda!296682))))

(declare-fun bs!1278120 () Bool)

(assert (= bs!1278120 (and b!5530257 b!5529290)))

(assert (=> bs!1278120 (= (= lt!2248252 lt!2248112) (= lambda!296821 lambda!296709))))

(declare-fun bs!1278121 () Bool)

(assert (= bs!1278121 (and b!5530257 b!5530198)))

(assert (=> bs!1278121 (= (= lt!2248252 lt!2248242) (= lambda!296821 lambda!296815))))

(declare-fun bs!1278122 () Bool)

(assert (= bs!1278122 (and b!5530257 d!1752029)))

(assert (=> bs!1278122 (not (= lambda!296821 lambda!296654))))

(declare-fun bs!1278123 () Bool)

(assert (= bs!1278123 (and b!5530257 d!1752257)))

(assert (=> bs!1278123 (not (= lambda!296821 lambda!296768))))

(declare-fun bs!1278124 () Bool)

(assert (= bs!1278124 (and b!5530257 b!5530176)))

(assert (=> bs!1278124 (= (= lt!2248252 lt!2248232) (= lambda!296821 lambda!296809))))

(declare-fun bs!1278125 () Bool)

(assert (= bs!1278125 (and b!5530257 b!5529288)))

(assert (=> bs!1278125 (= (= lt!2248252 lt!2248113) (= lambda!296821 lambda!296708))))

(declare-fun bs!1278126 () Bool)

(assert (= bs!1278126 (and b!5530257 d!1752445)))

(assert (=> bs!1278126 (not (= lambda!296821 lambda!296798))))

(declare-fun bs!1278127 () Bool)

(assert (= bs!1278127 (and b!5530257 b!5530160)))

(assert (=> bs!1278127 (= (= lt!2248252 lt!2248228) (= lambda!296821 lambda!296807))))

(declare-fun bs!1278128 () Bool)

(assert (= bs!1278128 (and b!5530257 d!1752497)))

(assert (=> bs!1278128 (= (= lt!2248252 lt!2248071) (= lambda!296821 lambda!296819))))

(declare-fun bs!1278129 () Bool)

(assert (= bs!1278129 (and b!5530257 b!5529169)))

(assert (=> bs!1278129 (= (= lt!2248252 lt!2248074) (= lambda!296821 lambda!296684))))

(declare-fun bs!1278130 () Bool)

(assert (= bs!1278130 (and b!5530257 b!5530178)))

(assert (=> bs!1278130 (= (= lt!2248252 lt!2248231) (= lambda!296821 lambda!296810))))

(declare-fun bs!1278131 () Bool)

(assert (= bs!1278131 (and b!5530257 b!5530162)))

(assert (=> bs!1278131 (= (= lt!2248252 lt!2248227) (= lambda!296821 lambda!296808))))

(declare-fun bs!1278132 () Bool)

(assert (= bs!1278132 (and b!5530257 d!1752299)))

(assert (=> bs!1278132 (not (= lambda!296821 lambda!296774))))

(declare-fun bs!1278133 () Bool)

(assert (= bs!1278133 (and b!5530257 d!1752083)))

(assert (=> bs!1278133 (not (= lambda!296821 lambda!296687))))

(assert (=> b!5530257 true))

(declare-fun bs!1278134 () Bool)

(declare-fun b!5530259 () Bool)

(assert (= bs!1278134 (and b!5530259 b!5529167)))

(declare-fun lambda!296822 () Int)

(declare-fun lt!2248251 () Int)

(assert (=> bs!1278134 (= (= lt!2248251 lt!2248075) (= lambda!296822 lambda!296683))))

(declare-fun bs!1278135 () Bool)

(assert (= bs!1278135 (and b!5530259 d!1752031)))

(assert (=> bs!1278135 (not (= lambda!296822 lambda!296657))))

(declare-fun bs!1278136 () Bool)

(assert (= bs!1278136 (and b!5530259 b!5530200)))

(assert (=> bs!1278136 (= (= lt!2248251 lt!2248241) (= lambda!296822 lambda!296816))))

(declare-fun bs!1278137 () Bool)

(assert (= bs!1278137 (and b!5530259 d!1752349)))

(assert (=> bs!1278137 (not (= lambda!296822 lambda!296779))))

(declare-fun bs!1278138 () Bool)

(assert (= bs!1278138 (and b!5530259 b!5529162)))

(assert (=> bs!1278138 (= (= lt!2248251 lt!2248071) (= lambda!296822 lambda!296681))))

(declare-fun bs!1278139 () Bool)

(assert (= bs!1278139 (and b!5530259 d!1752277)))

(assert (=> bs!1278139 (not (= lambda!296822 lambda!296770))))

(declare-fun bs!1278140 () Bool)

(assert (= bs!1278140 (and b!5530259 d!1752115)))

(assert (=> bs!1278140 (not (= lambda!296822 lambda!296691))))

(declare-fun bs!1278141 () Bool)

(assert (= bs!1278141 (and b!5530259 d!1752085)))

(assert (=> bs!1278141 (not (= lambda!296822 lambda!296690))))

(declare-fun bs!1278142 () Bool)

(assert (= bs!1278142 (and b!5530259 b!5529164)))

(assert (=> bs!1278142 (= (= lt!2248251 lt!2248070) (= lambda!296822 lambda!296682))))

(declare-fun bs!1278143 () Bool)

(assert (= bs!1278143 (and b!5530259 b!5529290)))

(assert (=> bs!1278143 (= (= lt!2248251 lt!2248112) (= lambda!296822 lambda!296709))))

(declare-fun bs!1278144 () Bool)

(assert (= bs!1278144 (and b!5530259 b!5530198)))

(assert (=> bs!1278144 (= (= lt!2248251 lt!2248242) (= lambda!296822 lambda!296815))))

(declare-fun bs!1278145 () Bool)

(assert (= bs!1278145 (and b!5530259 d!1752029)))

(assert (=> bs!1278145 (not (= lambda!296822 lambda!296654))))

(declare-fun bs!1278146 () Bool)

(assert (= bs!1278146 (and b!5530259 d!1752257)))

(assert (=> bs!1278146 (not (= lambda!296822 lambda!296768))))

(declare-fun bs!1278147 () Bool)

(assert (= bs!1278147 (and b!5530259 b!5530176)))

(assert (=> bs!1278147 (= (= lt!2248251 lt!2248232) (= lambda!296822 lambda!296809))))

(declare-fun bs!1278148 () Bool)

(assert (= bs!1278148 (and b!5530259 b!5529288)))

(assert (=> bs!1278148 (= (= lt!2248251 lt!2248113) (= lambda!296822 lambda!296708))))

(declare-fun bs!1278149 () Bool)

(assert (= bs!1278149 (and b!5530259 d!1752445)))

(assert (=> bs!1278149 (not (= lambda!296822 lambda!296798))))

(declare-fun bs!1278150 () Bool)

(assert (= bs!1278150 (and b!5530259 b!5530257)))

(assert (=> bs!1278150 (= (= lt!2248251 lt!2248252) (= lambda!296822 lambda!296821))))

(declare-fun bs!1278151 () Bool)

(assert (= bs!1278151 (and b!5530259 b!5530160)))

(assert (=> bs!1278151 (= (= lt!2248251 lt!2248228) (= lambda!296822 lambda!296807))))

(declare-fun bs!1278152 () Bool)

(assert (= bs!1278152 (and b!5530259 d!1752497)))

(assert (=> bs!1278152 (= (= lt!2248251 lt!2248071) (= lambda!296822 lambda!296819))))

(declare-fun bs!1278153 () Bool)

(assert (= bs!1278153 (and b!5530259 b!5529169)))

(assert (=> bs!1278153 (= (= lt!2248251 lt!2248074) (= lambda!296822 lambda!296684))))

(declare-fun bs!1278154 () Bool)

(assert (= bs!1278154 (and b!5530259 b!5530178)))

(assert (=> bs!1278154 (= (= lt!2248251 lt!2248231) (= lambda!296822 lambda!296810))))

(declare-fun bs!1278155 () Bool)

(assert (= bs!1278155 (and b!5530259 b!5530162)))

(assert (=> bs!1278155 (= (= lt!2248251 lt!2248227) (= lambda!296822 lambda!296808))))

(declare-fun bs!1278156 () Bool)

(assert (= bs!1278156 (and b!5530259 d!1752299)))

(assert (=> bs!1278156 (not (= lambda!296822 lambda!296774))))

(declare-fun bs!1278157 () Bool)

(assert (= bs!1278157 (and b!5530259 d!1752083)))

(assert (=> bs!1278157 (not (= lambda!296822 lambda!296687))))

(assert (=> b!5530259 true))

(declare-fun d!1752515 () Bool)

(declare-fun e!3418669 () Bool)

(assert (=> d!1752515 e!3418669))

(declare-fun res!2354668 () Bool)

(assert (=> d!1752515 (=> (not res!2354668) (not e!3418669))))

(assert (=> d!1752515 (= res!2354668 (>= lt!2248251 0))))

(declare-fun e!3418668 () Int)

(assert (=> d!1752515 (= lt!2248251 e!3418668)))

(declare-fun c!967813 () Bool)

(assert (=> d!1752515 (= c!967813 (is-Cons!62717 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908))))))))

(assert (=> d!1752515 (= (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247908)))) lt!2248251)))

(assert (=> b!5530257 (= e!3418668 lt!2248252)))

(assert (=> b!5530257 (= lt!2248252 (maxBigInt!0 (regexDepth!214 (h!69165 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908)))))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908)))))))))))

(declare-fun lt!2248249 () Unit!155488)

(assert (=> b!5530257 (= lt!2248249 (lemmaForallRegexDepthBiggerThanTransitive!19 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908))))) lt!2248252 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908)))))))))))

(assert (=> b!5530257 (forall!14692 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908))))) lambda!296821)))

(declare-fun lt!2248250 () Unit!155488)

(assert (=> b!5530257 (= lt!2248250 lt!2248249)))

(declare-fun b!5530258 () Bool)

(assert (=> b!5530258 (= e!3418668 0)))

(assert (=> b!5530259 (= e!3418669 (forall!14692 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247908)))) lambda!296822))))

(assert (= (and d!1752515 c!967813) b!5530257))

(assert (= (and d!1752515 (not c!967813)) b!5530258))

(assert (= (and d!1752515 res!2354668) b!5530259))

(declare-fun m!6532344 () Bool)

(assert (=> b!5530257 m!6532344))

(declare-fun m!6532346 () Bool)

(assert (=> b!5530257 m!6532346))

(declare-fun m!6532348 () Bool)

(assert (=> b!5530257 m!6532348))

(assert (=> b!5530257 m!6532346))

(declare-fun m!6532350 () Bool)

(assert (=> b!5530257 m!6532350))

(assert (=> b!5530257 m!6532346))

(declare-fun m!6532352 () Bool)

(assert (=> b!5530257 m!6532352))

(assert (=> b!5530257 m!6532344))

(declare-fun m!6532354 () Bool)

(assert (=> b!5530259 m!6532354))

(assert (=> b!5529167 d!1752515))

(declare-fun bs!1278158 () Bool)

(declare-fun d!1752517 () Bool)

(assert (= bs!1278158 (and d!1752517 b!5529167)))

(declare-fun lambda!296823 () Int)

(assert (=> bs!1278158 (= lambda!296823 lambda!296683)))

(declare-fun bs!1278159 () Bool)

(assert (= bs!1278159 (and d!1752517 d!1752031)))

(assert (=> bs!1278159 (not (= lambda!296823 lambda!296657))))

(declare-fun bs!1278160 () Bool)

(assert (= bs!1278160 (and d!1752517 b!5530200)))

(assert (=> bs!1278160 (= (= lt!2248075 lt!2248241) (= lambda!296823 lambda!296816))))

(declare-fun bs!1278161 () Bool)

(assert (= bs!1278161 (and d!1752517 d!1752349)))

(assert (=> bs!1278161 (not (= lambda!296823 lambda!296779))))

(declare-fun bs!1278162 () Bool)

(assert (= bs!1278162 (and d!1752517 b!5529162)))

(assert (=> bs!1278162 (= (= lt!2248075 lt!2248071) (= lambda!296823 lambda!296681))))

(declare-fun bs!1278163 () Bool)

(assert (= bs!1278163 (and d!1752517 d!1752277)))

(assert (=> bs!1278163 (not (= lambda!296823 lambda!296770))))

(declare-fun bs!1278164 () Bool)

(assert (= bs!1278164 (and d!1752517 d!1752115)))

(assert (=> bs!1278164 (not (= lambda!296823 lambda!296691))))

(declare-fun bs!1278165 () Bool)

(assert (= bs!1278165 (and d!1752517 d!1752085)))

(assert (=> bs!1278165 (not (= lambda!296823 lambda!296690))))

(declare-fun bs!1278166 () Bool)

(assert (= bs!1278166 (and d!1752517 b!5529164)))

(assert (=> bs!1278166 (= (= lt!2248075 lt!2248070) (= lambda!296823 lambda!296682))))

(declare-fun bs!1278167 () Bool)

(assert (= bs!1278167 (and d!1752517 b!5529290)))

(assert (=> bs!1278167 (= (= lt!2248075 lt!2248112) (= lambda!296823 lambda!296709))))

(declare-fun bs!1278168 () Bool)

(assert (= bs!1278168 (and d!1752517 b!5530198)))

(assert (=> bs!1278168 (= (= lt!2248075 lt!2248242) (= lambda!296823 lambda!296815))))

(declare-fun bs!1278169 () Bool)

(assert (= bs!1278169 (and d!1752517 d!1752029)))

(assert (=> bs!1278169 (not (= lambda!296823 lambda!296654))))

(declare-fun bs!1278170 () Bool)

(assert (= bs!1278170 (and d!1752517 d!1752257)))

(assert (=> bs!1278170 (not (= lambda!296823 lambda!296768))))

(declare-fun bs!1278171 () Bool)

(assert (= bs!1278171 (and d!1752517 b!5530176)))

(assert (=> bs!1278171 (= (= lt!2248075 lt!2248232) (= lambda!296823 lambda!296809))))

(declare-fun bs!1278172 () Bool)

(assert (= bs!1278172 (and d!1752517 b!5529288)))

(assert (=> bs!1278172 (= (= lt!2248075 lt!2248113) (= lambda!296823 lambda!296708))))

(declare-fun bs!1278173 () Bool)

(assert (= bs!1278173 (and d!1752517 d!1752445)))

(assert (=> bs!1278173 (not (= lambda!296823 lambda!296798))))

(declare-fun bs!1278174 () Bool)

(assert (= bs!1278174 (and d!1752517 b!5530257)))

(assert (=> bs!1278174 (= (= lt!2248075 lt!2248252) (= lambda!296823 lambda!296821))))

(declare-fun bs!1278175 () Bool)

(assert (= bs!1278175 (and d!1752517 b!5530259)))

(assert (=> bs!1278175 (= (= lt!2248075 lt!2248251) (= lambda!296823 lambda!296822))))

(declare-fun bs!1278176 () Bool)

(assert (= bs!1278176 (and d!1752517 b!5530160)))

(assert (=> bs!1278176 (= (= lt!2248075 lt!2248228) (= lambda!296823 lambda!296807))))

(declare-fun bs!1278177 () Bool)

(assert (= bs!1278177 (and d!1752517 d!1752497)))

(assert (=> bs!1278177 (= (= lt!2248075 lt!2248071) (= lambda!296823 lambda!296819))))

(declare-fun bs!1278178 () Bool)

(assert (= bs!1278178 (and d!1752517 b!5529169)))

(assert (=> bs!1278178 (= (= lt!2248075 lt!2248074) (= lambda!296823 lambda!296684))))

(declare-fun bs!1278179 () Bool)

(assert (= bs!1278179 (and d!1752517 b!5530178)))

(assert (=> bs!1278179 (= (= lt!2248075 lt!2248231) (= lambda!296823 lambda!296810))))

(declare-fun bs!1278180 () Bool)

(assert (= bs!1278180 (and d!1752517 b!5530162)))

(assert (=> bs!1278180 (= (= lt!2248075 lt!2248227) (= lambda!296823 lambda!296808))))

(declare-fun bs!1278181 () Bool)

(assert (= bs!1278181 (and d!1752517 d!1752299)))

(assert (=> bs!1278181 (not (= lambda!296823 lambda!296774))))

(declare-fun bs!1278182 () Bool)

(assert (= bs!1278182 (and d!1752517 d!1752083)))

(assert (=> bs!1278182 (not (= lambda!296823 lambda!296687))))

(assert (=> d!1752517 true))

(assert (=> d!1752517 (forall!14692 (t!376098 (exprs!5398 lt!2247908)) lambda!296823)))

(declare-fun lt!2248253 () Unit!155488)

(assert (=> d!1752517 (= lt!2248253 (choose!42025 (t!376098 (exprs!5398 lt!2247908)) lt!2248075 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247908))))))))

(assert (=> d!1752517 (>= lt!2248075 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247908)))))))

(assert (=> d!1752517 (= (lemmaForallRegexDepthBiggerThanTransitive!19 (t!376098 (exprs!5398 lt!2247908)) lt!2248075 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247908))))) lt!2248253)))

(declare-fun bs!1278183 () Bool)

(assert (= bs!1278183 d!1752517))

(declare-fun m!6532356 () Bool)

(assert (=> bs!1278183 m!6532356))

(assert (=> bs!1278183 m!6531244))

(declare-fun m!6532358 () Bool)

(assert (=> bs!1278183 m!6532358))

(assert (=> b!5529167 d!1752517))

(declare-fun d!1752519 () Bool)

(assert (=> d!1752519 (= (maxBigInt!0 (regexDepth!214 (h!69165 (exprs!5398 lt!2247908))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247908))))) (ite (>= (regexDepth!214 (h!69165 (exprs!5398 lt!2247908))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247908))))) (regexDepth!214 (h!69165 (exprs!5398 lt!2247908))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247908))))))))

(assert (=> b!5529167 d!1752519))

(declare-fun b!5530260 () Bool)

(declare-fun e!3418674 () Int)

(declare-fun e!3418679 () Int)

(assert (=> b!5530260 (= e!3418674 e!3418679)))

(declare-fun c!967817 () Bool)

(assert (=> b!5530260 (= c!967817 (is-Star!15514 (h!69165 (exprs!5398 lt!2247908))))))

(declare-fun b!5530261 () Bool)

(declare-fun call!410611 () Int)

(assert (=> b!5530261 (= e!3418679 (+ 1 call!410611))))

(declare-fun b!5530262 () Bool)

(declare-fun e!3418678 () Int)

(declare-fun e!3418676 () Int)

(assert (=> b!5530262 (= e!3418678 e!3418676)))

(declare-fun c!967820 () Bool)

(assert (=> b!5530262 (= c!967820 (is-Concat!24359 (h!69165 (exprs!5398 lt!2247908))))))

(declare-fun b!5530263 () Bool)

(declare-fun e!3418673 () Bool)

(declare-fun e!3418672 () Bool)

(assert (=> b!5530263 (= e!3418673 e!3418672)))

(declare-fun c!967815 () Bool)

(assert (=> b!5530263 (= c!967815 (is-Union!15514 (h!69165 (exprs!5398 lt!2247908))))))

(declare-fun bm!410601 () Bool)

(declare-fun call!410608 () Int)

(declare-fun call!410606 () Int)

(declare-fun call!410610 () Int)

(declare-fun c!967814 () Bool)

(assert (=> bm!410601 (= call!410606 (maxBigInt!0 (ite c!967814 call!410610 call!410608) (ite c!967814 call!410608 call!410610)))))

(declare-fun bm!410602 () Bool)

(assert (=> bm!410602 (= call!410611 (regexDepth!214 (ite c!967817 (reg!15843 (h!69165 (exprs!5398 lt!2247908))) (ite c!967814 (regTwo!31541 (h!69165 (exprs!5398 lt!2247908))) (regOne!31540 (h!69165 (exprs!5398 lt!2247908)))))))))

(declare-fun b!5530264 () Bool)

(assert (=> b!5530264 (= e!3418676 (+ 1 call!410606))))

(declare-fun b!5530265 () Bool)

(assert (=> b!5530265 (= e!3418678 (+ 1 call!410606))))

(declare-fun bm!410603 () Bool)

(declare-fun call!410609 () Int)

(declare-fun call!410607 () Int)

(assert (=> bm!410603 (= call!410609 call!410607)))

(declare-fun bm!410604 () Bool)

(assert (=> bm!410604 (= call!410608 call!410611)))

(declare-fun b!5530266 () Bool)

(assert (=> b!5530266 (= e!3418674 1)))

(declare-fun d!1752521 () Bool)

(assert (=> d!1752521 e!3418673))

(declare-fun res!2354669 () Bool)

(assert (=> d!1752521 (=> (not res!2354669) (not e!3418673))))

(declare-fun lt!2248254 () Int)

(assert (=> d!1752521 (= res!2354669 (> lt!2248254 0))))

(assert (=> d!1752521 (= lt!2248254 e!3418674)))

(declare-fun c!967819 () Bool)

(assert (=> d!1752521 (= c!967819 (is-ElementMatch!15514 (h!69165 (exprs!5398 lt!2247908))))))

(assert (=> d!1752521 (= (regexDepth!214 (h!69165 (exprs!5398 lt!2247908))) lt!2248254)))

(declare-fun b!5530267 () Bool)

(declare-fun c!967818 () Bool)

(assert (=> b!5530267 (= c!967818 (is-Star!15514 (h!69165 (exprs!5398 lt!2247908))))))

(declare-fun e!3418671 () Bool)

(declare-fun e!3418677 () Bool)

(assert (=> b!5530267 (= e!3418671 e!3418677)))

(declare-fun b!5530268 () Bool)

(declare-fun e!3418670 () Bool)

(assert (=> b!5530268 (= e!3418670 (> lt!2248254 call!410607))))

(declare-fun b!5530269 () Bool)

(declare-fun res!2354671 () Bool)

(declare-fun e!3418675 () Bool)

(assert (=> b!5530269 (=> (not res!2354671) (not e!3418675))))

(assert (=> b!5530269 (= res!2354671 (> lt!2248254 call!410609))))

(assert (=> b!5530269 (= e!3418671 e!3418675)))

(declare-fun bm!410605 () Bool)

(declare-fun call!410612 () Int)

(assert (=> bm!410605 (= call!410612 (regexDepth!214 (ite c!967815 (regOne!31541 (h!69165 (exprs!5398 lt!2247908))) (regTwo!31540 (h!69165 (exprs!5398 lt!2247908))))))))

(declare-fun b!5530270 () Bool)

(assert (=> b!5530270 (= e!3418675 (> lt!2248254 call!410612))))

(declare-fun bm!410606 () Bool)

(declare-fun c!967816 () Bool)

(assert (=> bm!410606 (= call!410607 (regexDepth!214 (ite c!967815 (regTwo!31541 (h!69165 (exprs!5398 lt!2247908))) (ite c!967816 (regOne!31540 (h!69165 (exprs!5398 lt!2247908))) (reg!15843 (h!69165 (exprs!5398 lt!2247908)))))))))

(declare-fun b!5530271 () Bool)

(assert (=> b!5530271 (= e!3418676 1)))

(declare-fun bm!410607 () Bool)

(assert (=> bm!410607 (= call!410610 (regexDepth!214 (ite c!967814 (regOne!31541 (h!69165 (exprs!5398 lt!2247908))) (regTwo!31540 (h!69165 (exprs!5398 lt!2247908))))))))

(declare-fun b!5530272 () Bool)

(assert (=> b!5530272 (= e!3418672 e!3418671)))

(assert (=> b!5530272 (= c!967816 (is-Concat!24359 (h!69165 (exprs!5398 lt!2247908))))))

(declare-fun b!5530273 () Bool)

(assert (=> b!5530273 (= e!3418677 (= lt!2248254 1))))

(declare-fun b!5530274 () Bool)

(assert (=> b!5530274 (= e!3418677 (> lt!2248254 call!410609))))

(declare-fun b!5530275 () Bool)

(assert (=> b!5530275 (= c!967814 (is-Union!15514 (h!69165 (exprs!5398 lt!2247908))))))

(assert (=> b!5530275 (= e!3418679 e!3418678)))

(declare-fun b!5530276 () Bool)

(assert (=> b!5530276 (= e!3418672 e!3418670)))

(declare-fun res!2354670 () Bool)

(assert (=> b!5530276 (= res!2354670 (> lt!2248254 call!410612))))

(assert (=> b!5530276 (=> (not res!2354670) (not e!3418670))))

(assert (= (and d!1752521 c!967819) b!5530266))

(assert (= (and d!1752521 (not c!967819)) b!5530260))

(assert (= (and b!5530260 c!967817) b!5530261))

(assert (= (and b!5530260 (not c!967817)) b!5530275))

(assert (= (and b!5530275 c!967814) b!5530265))

(assert (= (and b!5530275 (not c!967814)) b!5530262))

(assert (= (and b!5530262 c!967820) b!5530264))

(assert (= (and b!5530262 (not c!967820)) b!5530271))

(assert (= (or b!5530265 b!5530264) bm!410604))

(assert (= (or b!5530265 b!5530264) bm!410607))

(assert (= (or b!5530265 b!5530264) bm!410601))

(assert (= (or b!5530261 bm!410604) bm!410602))

(assert (= (and d!1752521 res!2354669) b!5530263))

(assert (= (and b!5530263 c!967815) b!5530276))

(assert (= (and b!5530263 (not c!967815)) b!5530272))

(assert (= (and b!5530276 res!2354670) b!5530268))

(assert (= (and b!5530272 c!967816) b!5530269))

(assert (= (and b!5530272 (not c!967816)) b!5530267))

(assert (= (and b!5530269 res!2354671) b!5530270))

(assert (= (and b!5530267 c!967818) b!5530274))

(assert (= (and b!5530267 (not c!967818)) b!5530273))

(assert (= (or b!5530269 b!5530274) bm!410603))

(assert (= (or b!5530268 bm!410603) bm!410606))

(assert (= (or b!5530276 b!5530270) bm!410605))

(declare-fun m!6532360 () Bool)

(assert (=> bm!410601 m!6532360))

(declare-fun m!6532362 () Bool)

(assert (=> bm!410605 m!6532362))

(declare-fun m!6532364 () Bool)

(assert (=> bm!410602 m!6532364))

(declare-fun m!6532366 () Bool)

(assert (=> bm!410607 m!6532366))

(declare-fun m!6532368 () Bool)

(assert (=> bm!410606 m!6532368))

(assert (=> b!5529167 d!1752521))

(declare-fun b!5530277 () Bool)

(declare-fun res!2354678 () Bool)

(declare-fun e!3418680 () Bool)

(assert (=> b!5530277 (=> (not res!2354678) (not e!3418680))))

(assert (=> b!5530277 (= res!2354678 (isEmpty!34511 (tail!10927 s!2326)))))

(declare-fun b!5530278 () Bool)

(declare-fun e!3418686 () Bool)

(declare-fun e!3418682 () Bool)

(assert (=> b!5530278 (= e!3418686 e!3418682)))

(declare-fun res!2354676 () Bool)

(assert (=> b!5530278 (=> (not res!2354676) (not e!3418682))))

(declare-fun lt!2248255 () Bool)

(assert (=> b!5530278 (= res!2354676 (not lt!2248255))))

(declare-fun b!5530279 () Bool)

(declare-fun e!3418685 () Bool)

(assert (=> b!5530279 (= e!3418685 (matchR!7699 (derivativeStep!4379 (regTwo!31540 r!7292) (head!11832 s!2326)) (tail!10927 s!2326)))))

(declare-fun b!5530280 () Bool)

(declare-fun e!3418683 () Bool)

(assert (=> b!5530280 (= e!3418683 (not (= (head!11832 s!2326) (c!967395 (regTwo!31540 r!7292)))))))

(declare-fun bm!410608 () Bool)

(declare-fun call!410613 () Bool)

(assert (=> bm!410608 (= call!410613 (isEmpty!34511 s!2326))))

(declare-fun b!5530281 () Bool)

(declare-fun res!2354672 () Bool)

(assert (=> b!5530281 (=> res!2354672 e!3418686)))

(assert (=> b!5530281 (= res!2354672 e!3418680)))

(declare-fun res!2354679 () Bool)

(assert (=> b!5530281 (=> (not res!2354679) (not e!3418680))))

(assert (=> b!5530281 (= res!2354679 lt!2248255)))

(declare-fun b!5530282 () Bool)

(assert (=> b!5530282 (= e!3418680 (= (head!11832 s!2326) (c!967395 (regTwo!31540 r!7292))))))

(declare-fun b!5530283 () Bool)

(assert (=> b!5530283 (= e!3418682 e!3418683)))

(declare-fun res!2354677 () Bool)

(assert (=> b!5530283 (=> res!2354677 e!3418683)))

(assert (=> b!5530283 (= res!2354677 call!410613)))

(declare-fun d!1752523 () Bool)

(declare-fun e!3418681 () Bool)

(assert (=> d!1752523 e!3418681))

(declare-fun c!967822 () Bool)

(assert (=> d!1752523 (= c!967822 (is-EmptyExpr!15514 (regTwo!31540 r!7292)))))

(assert (=> d!1752523 (= lt!2248255 e!3418685)))

(declare-fun c!967823 () Bool)

(assert (=> d!1752523 (= c!967823 (isEmpty!34511 s!2326))))

(assert (=> d!1752523 (validRegex!7250 (regTwo!31540 r!7292))))

(assert (=> d!1752523 (= (matchR!7699 (regTwo!31540 r!7292) s!2326) lt!2248255)))

(declare-fun b!5530284 () Bool)

(declare-fun e!3418684 () Bool)

(assert (=> b!5530284 (= e!3418681 e!3418684)))

(declare-fun c!967821 () Bool)

(assert (=> b!5530284 (= c!967821 (is-EmptyLang!15514 (regTwo!31540 r!7292)))))

(declare-fun b!5530285 () Bool)

(declare-fun res!2354673 () Bool)

(assert (=> b!5530285 (=> res!2354673 e!3418683)))

(assert (=> b!5530285 (= res!2354673 (not (isEmpty!34511 (tail!10927 s!2326))))))

(declare-fun b!5530286 () Bool)

(declare-fun res!2354675 () Bool)

(assert (=> b!5530286 (=> (not res!2354675) (not e!3418680))))

(assert (=> b!5530286 (= res!2354675 (not call!410613))))

(declare-fun b!5530287 () Bool)

(assert (=> b!5530287 (= e!3418685 (nullable!5548 (regTwo!31540 r!7292)))))

(declare-fun b!5530288 () Bool)

(assert (=> b!5530288 (= e!3418681 (= lt!2248255 call!410613))))

(declare-fun b!5530289 () Bool)

(assert (=> b!5530289 (= e!3418684 (not lt!2248255))))

(declare-fun b!5530290 () Bool)

(declare-fun res!2354674 () Bool)

(assert (=> b!5530290 (=> res!2354674 e!3418686)))

(assert (=> b!5530290 (= res!2354674 (not (is-ElementMatch!15514 (regTwo!31540 r!7292))))))

(assert (=> b!5530290 (= e!3418684 e!3418686)))

(assert (= (and d!1752523 c!967823) b!5530287))

(assert (= (and d!1752523 (not c!967823)) b!5530279))

(assert (= (and d!1752523 c!967822) b!5530288))

(assert (= (and d!1752523 (not c!967822)) b!5530284))

(assert (= (and b!5530284 c!967821) b!5530289))

(assert (= (and b!5530284 (not c!967821)) b!5530290))

(assert (= (and b!5530290 (not res!2354674)) b!5530281))

(assert (= (and b!5530281 res!2354679) b!5530286))

(assert (= (and b!5530286 res!2354675) b!5530277))

(assert (= (and b!5530277 res!2354678) b!5530282))

(assert (= (and b!5530281 (not res!2354672)) b!5530278))

(assert (= (and b!5530278 res!2354676) b!5530283))

(assert (= (and b!5530283 (not res!2354677)) b!5530285))

(assert (= (and b!5530285 (not res!2354673)) b!5530280))

(assert (= (or b!5530288 b!5530286 b!5530283) bm!410608))

(assert (=> b!5530279 m!6531108))

(assert (=> b!5530279 m!6531108))

(declare-fun m!6532370 () Bool)

(assert (=> b!5530279 m!6532370))

(assert (=> b!5530279 m!6531112))

(assert (=> b!5530279 m!6532370))

(assert (=> b!5530279 m!6531112))

(declare-fun m!6532372 () Bool)

(assert (=> b!5530279 m!6532372))

(assert (=> b!5530287 m!6532144))

(assert (=> d!1752523 m!6531104))

(assert (=> d!1752523 m!6532148))

(assert (=> b!5530280 m!6531108))

(assert (=> b!5530282 m!6531108))

(assert (=> b!5530285 m!6531112))

(assert (=> b!5530285 m!6531112))

(assert (=> b!5530285 m!6531210))

(assert (=> bm!410608 m!6531104))

(assert (=> b!5530277 m!6531112))

(assert (=> b!5530277 m!6531112))

(assert (=> b!5530277 m!6531210))

(assert (=> b!5529004 d!1752523))

(declare-fun d!1752525 () Bool)

(assert (=> d!1752525 (= (isEmpty!34512 (findConcatSeparation!1937 (regOne!31540 r!7292) (regTwo!31540 r!7292) Nil!62718 s!2326 s!2326)) (not (is-Some!15522 (findConcatSeparation!1937 (regOne!31540 r!7292) (regTwo!31540 r!7292) Nil!62718 s!2326 s!2326))))))

(assert (=> d!1752061 d!1752525))

(declare-fun bm!410609 () Bool)

(declare-fun call!410614 () (Set Context!9796))

(assert (=> bm!410609 (= call!410614 (derivationStepZipperDown!856 (h!69165 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343)))))) (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343))))))) (h!69166 s!2326)))))

(declare-fun b!5530291 () Bool)

(declare-fun e!3418688 () Bool)

(assert (=> b!5530291 (= e!3418688 (nullable!5548 (h!69165 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343))))))))))

(declare-fun b!5530292 () Bool)

(declare-fun e!3418689 () (Set Context!9796))

(assert (=> b!5530292 (= e!3418689 (set.union call!410614 (derivationStepZipperUp!782 (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343))))))) (h!69166 s!2326))))))

(declare-fun b!5530293 () Bool)

(declare-fun e!3418687 () (Set Context!9796))

(assert (=> b!5530293 (= e!3418687 (as set.empty (Set Context!9796)))))

(declare-fun d!1752527 () Bool)

(declare-fun c!967824 () Bool)

(assert (=> d!1752527 (= c!967824 e!3418688)))

(declare-fun res!2354680 () Bool)

(assert (=> d!1752527 (=> (not res!2354680) (not e!3418688))))

(assert (=> d!1752527 (= res!2354680 (is-Cons!62717 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343)))))))))

(assert (=> d!1752527 (= (derivationStepZipperUp!782 (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343)))) (h!69166 s!2326)) e!3418689)))

(declare-fun b!5530294 () Bool)

(assert (=> b!5530294 (= e!3418689 e!3418687)))

(declare-fun c!967825 () Bool)

(assert (=> b!5530294 (= c!967825 (is-Cons!62717 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 (h!69167 zl!343)))))))))

(declare-fun b!5530295 () Bool)

(assert (=> b!5530295 (= e!3418687 call!410614)))

(assert (= (and d!1752527 res!2354680) b!5530291))

(assert (= (and d!1752527 c!967824) b!5530292))

(assert (= (and d!1752527 (not c!967824)) b!5530294))

(assert (= (and b!5530294 c!967825) b!5530295))

(assert (= (and b!5530294 (not c!967825)) b!5530293))

(assert (= (or b!5530292 b!5530295) bm!410609))

(declare-fun m!6532374 () Bool)

(assert (=> bm!410609 m!6532374))

(declare-fun m!6532376 () Bool)

(assert (=> b!5530291 m!6532376))

(declare-fun m!6532378 () Bool)

(assert (=> b!5530292 m!6532378))

(assert (=> b!5529263 d!1752527))

(assert (=> bm!410375 d!1752293))

(assert (=> bs!1277512 d!1752103))

(assert (=> d!1752035 d!1752295))

(declare-fun d!1752529 () Bool)

(assert (=> d!1752529 (= (head!11831 (unfocusZipperList!942 zl!343)) (h!69165 (unfocusZipperList!942 zl!343)))))

(assert (=> b!5528955 d!1752529))

(declare-fun d!1752531 () Bool)

(declare-fun res!2354685 () Bool)

(declare-fun e!3418694 () Bool)

(assert (=> d!1752531 (=> res!2354685 e!3418694)))

(assert (=> d!1752531 (= res!2354685 (is-Nil!62719 lt!2248088))))

(assert (=> d!1752531 (= (noDuplicate!1507 lt!2248088) e!3418694)))

(declare-fun b!5530300 () Bool)

(declare-fun e!3418695 () Bool)

(assert (=> b!5530300 (= e!3418694 e!3418695)))

(declare-fun res!2354686 () Bool)

(assert (=> b!5530300 (=> (not res!2354686) (not e!3418695))))

(declare-fun contains!19790 (List!62843 Context!9796) Bool)

(assert (=> b!5530300 (= res!2354686 (not (contains!19790 (t!376100 lt!2248088) (h!69167 lt!2248088))))))

(declare-fun b!5530301 () Bool)

(assert (=> b!5530301 (= e!3418695 (noDuplicate!1507 (t!376100 lt!2248088)))))

(assert (= (and d!1752531 (not res!2354685)) b!5530300))

(assert (= (and b!5530300 res!2354686) b!5530301))

(declare-fun m!6532380 () Bool)

(assert (=> b!5530300 m!6532380))

(declare-fun m!6532382 () Bool)

(assert (=> b!5530301 m!6532382))

(assert (=> d!1752107 d!1752531))

(declare-fun d!1752533 () Bool)

(declare-fun e!3418704 () Bool)

(assert (=> d!1752533 e!3418704))

(declare-fun res!2354691 () Bool)

(assert (=> d!1752533 (=> (not res!2354691) (not e!3418704))))

(declare-fun res!2354692 () List!62843)

(assert (=> d!1752533 (= res!2354691 (noDuplicate!1507 res!2354692))))

(declare-fun e!3418703 () Bool)

(assert (=> d!1752533 e!3418703))

(assert (=> d!1752533 (= (choose!42014 z!1189) res!2354692)))

(declare-fun b!5530309 () Bool)

(declare-fun e!3418702 () Bool)

(declare-fun tp!1521186 () Bool)

(assert (=> b!5530309 (= e!3418702 tp!1521186)))

(declare-fun tp!1521187 () Bool)

(declare-fun b!5530308 () Bool)

(assert (=> b!5530308 (= e!3418703 (and (inv!82033 (h!69167 res!2354692)) e!3418702 tp!1521187))))

(declare-fun b!5530310 () Bool)

(assert (=> b!5530310 (= e!3418704 (= (content!11283 res!2354692) z!1189))))

(assert (= b!5530308 b!5530309))

(assert (= (and d!1752533 (is-Cons!62719 res!2354692)) b!5530308))

(assert (= (and d!1752533 res!2354691) b!5530310))

(declare-fun m!6532384 () Bool)

(assert (=> d!1752533 m!6532384))

(declare-fun m!6532386 () Bool)

(assert (=> b!5530308 m!6532386))

(declare-fun m!6532388 () Bool)

(assert (=> b!5530310 m!6532388))

(assert (=> d!1752107 d!1752533))

(declare-fun b!5530311 () Bool)

(declare-fun e!3418709 () Int)

(declare-fun e!3418714 () Int)

(assert (=> b!5530311 (= e!3418709 e!3418714)))

(declare-fun c!967829 () Bool)

(assert (=> b!5530311 (= c!967829 (is-Star!15514 (h!69165 (exprs!5398 lt!2247922))))))

(declare-fun b!5530312 () Bool)

(declare-fun call!410620 () Int)

(assert (=> b!5530312 (= e!3418714 (+ 1 call!410620))))

(declare-fun b!5530313 () Bool)

(declare-fun e!3418713 () Int)

(declare-fun e!3418711 () Int)

(assert (=> b!5530313 (= e!3418713 e!3418711)))

(declare-fun c!967832 () Bool)

(assert (=> b!5530313 (= c!967832 (is-Concat!24359 (h!69165 (exprs!5398 lt!2247922))))))

(declare-fun b!5530314 () Bool)

(declare-fun e!3418708 () Bool)

(declare-fun e!3418707 () Bool)

(assert (=> b!5530314 (= e!3418708 e!3418707)))

(declare-fun c!967827 () Bool)

(assert (=> b!5530314 (= c!967827 (is-Union!15514 (h!69165 (exprs!5398 lt!2247922))))))

(declare-fun c!967826 () Bool)

(declare-fun bm!410610 () Bool)

(declare-fun call!410617 () Int)

(declare-fun call!410615 () Int)

(declare-fun call!410619 () Int)

(assert (=> bm!410610 (= call!410615 (maxBigInt!0 (ite c!967826 call!410619 call!410617) (ite c!967826 call!410617 call!410619)))))

(declare-fun bm!410611 () Bool)

(assert (=> bm!410611 (= call!410620 (regexDepth!214 (ite c!967829 (reg!15843 (h!69165 (exprs!5398 lt!2247922))) (ite c!967826 (regTwo!31541 (h!69165 (exprs!5398 lt!2247922))) (regOne!31540 (h!69165 (exprs!5398 lt!2247922)))))))))

(declare-fun b!5530315 () Bool)

(assert (=> b!5530315 (= e!3418711 (+ 1 call!410615))))

(declare-fun b!5530316 () Bool)

(assert (=> b!5530316 (= e!3418713 (+ 1 call!410615))))

(declare-fun bm!410612 () Bool)

(declare-fun call!410618 () Int)

(declare-fun call!410616 () Int)

(assert (=> bm!410612 (= call!410618 call!410616)))

(declare-fun bm!410613 () Bool)

(assert (=> bm!410613 (= call!410617 call!410620)))

(declare-fun b!5530317 () Bool)

(assert (=> b!5530317 (= e!3418709 1)))

(declare-fun d!1752535 () Bool)

(assert (=> d!1752535 e!3418708))

(declare-fun res!2354693 () Bool)

(assert (=> d!1752535 (=> (not res!2354693) (not e!3418708))))

(declare-fun lt!2248256 () Int)

(assert (=> d!1752535 (= res!2354693 (> lt!2248256 0))))

(assert (=> d!1752535 (= lt!2248256 e!3418709)))

(declare-fun c!967831 () Bool)

(assert (=> d!1752535 (= c!967831 (is-ElementMatch!15514 (h!69165 (exprs!5398 lt!2247922))))))

(assert (=> d!1752535 (= (regexDepth!214 (h!69165 (exprs!5398 lt!2247922))) lt!2248256)))

(declare-fun b!5530318 () Bool)

(declare-fun c!967830 () Bool)

(assert (=> b!5530318 (= c!967830 (is-Star!15514 (h!69165 (exprs!5398 lt!2247922))))))

(declare-fun e!3418706 () Bool)

(declare-fun e!3418712 () Bool)

(assert (=> b!5530318 (= e!3418706 e!3418712)))

(declare-fun b!5530319 () Bool)

(declare-fun e!3418705 () Bool)

(assert (=> b!5530319 (= e!3418705 (> lt!2248256 call!410616))))

(declare-fun b!5530320 () Bool)

(declare-fun res!2354695 () Bool)

(declare-fun e!3418710 () Bool)

(assert (=> b!5530320 (=> (not res!2354695) (not e!3418710))))

(assert (=> b!5530320 (= res!2354695 (> lt!2248256 call!410618))))

(assert (=> b!5530320 (= e!3418706 e!3418710)))

(declare-fun bm!410614 () Bool)

(declare-fun call!410621 () Int)

(assert (=> bm!410614 (= call!410621 (regexDepth!214 (ite c!967827 (regOne!31541 (h!69165 (exprs!5398 lt!2247922))) (regTwo!31540 (h!69165 (exprs!5398 lt!2247922))))))))

(declare-fun b!5530321 () Bool)

(assert (=> b!5530321 (= e!3418710 (> lt!2248256 call!410621))))

(declare-fun c!967828 () Bool)

(declare-fun bm!410615 () Bool)

(assert (=> bm!410615 (= call!410616 (regexDepth!214 (ite c!967827 (regTwo!31541 (h!69165 (exprs!5398 lt!2247922))) (ite c!967828 (regOne!31540 (h!69165 (exprs!5398 lt!2247922))) (reg!15843 (h!69165 (exprs!5398 lt!2247922)))))))))

(declare-fun b!5530322 () Bool)

(assert (=> b!5530322 (= e!3418711 1)))

(declare-fun bm!410616 () Bool)

(assert (=> bm!410616 (= call!410619 (regexDepth!214 (ite c!967826 (regOne!31541 (h!69165 (exprs!5398 lt!2247922))) (regTwo!31540 (h!69165 (exprs!5398 lt!2247922))))))))

(declare-fun b!5530323 () Bool)

(assert (=> b!5530323 (= e!3418707 e!3418706)))

(assert (=> b!5530323 (= c!967828 (is-Concat!24359 (h!69165 (exprs!5398 lt!2247922))))))

(declare-fun b!5530324 () Bool)

(assert (=> b!5530324 (= e!3418712 (= lt!2248256 1))))

(declare-fun b!5530325 () Bool)

(assert (=> b!5530325 (= e!3418712 (> lt!2248256 call!410618))))

(declare-fun b!5530326 () Bool)

(assert (=> b!5530326 (= c!967826 (is-Union!15514 (h!69165 (exprs!5398 lt!2247922))))))

(assert (=> b!5530326 (= e!3418714 e!3418713)))

(declare-fun b!5530327 () Bool)

(assert (=> b!5530327 (= e!3418707 e!3418705)))

(declare-fun res!2354694 () Bool)

(assert (=> b!5530327 (= res!2354694 (> lt!2248256 call!410621))))

(assert (=> b!5530327 (=> (not res!2354694) (not e!3418705))))

(assert (= (and d!1752535 c!967831) b!5530317))

(assert (= (and d!1752535 (not c!967831)) b!5530311))

(assert (= (and b!5530311 c!967829) b!5530312))

(assert (= (and b!5530311 (not c!967829)) b!5530326))

(assert (= (and b!5530326 c!967826) b!5530316))

(assert (= (and b!5530326 (not c!967826)) b!5530313))

(assert (= (and b!5530313 c!967832) b!5530315))

(assert (= (and b!5530313 (not c!967832)) b!5530322))

(assert (= (or b!5530316 b!5530315) bm!410613))

(assert (= (or b!5530316 b!5530315) bm!410616))

(assert (= (or b!5530316 b!5530315) bm!410610))

(assert (= (or b!5530312 bm!410613) bm!410611))

(assert (= (and d!1752535 res!2354693) b!5530314))

(assert (= (and b!5530314 c!967827) b!5530327))

(assert (= (and b!5530314 (not c!967827)) b!5530323))

(assert (= (and b!5530327 res!2354694) b!5530319))

(assert (= (and b!5530323 c!967828) b!5530320))

(assert (= (and b!5530323 (not c!967828)) b!5530318))

(assert (= (and b!5530320 res!2354695) b!5530321))

(assert (= (and b!5530318 c!967830) b!5530325))

(assert (= (and b!5530318 (not c!967830)) b!5530324))

(assert (= (or b!5530320 b!5530325) bm!410612))

(assert (= (or b!5530319 bm!410612) bm!410615))

(assert (= (or b!5530327 b!5530321) bm!410614))

(declare-fun m!6532390 () Bool)

(assert (=> bm!410610 m!6532390))

(declare-fun m!6532392 () Bool)

(assert (=> bm!410614 m!6532392))

(declare-fun m!6532394 () Bool)

(assert (=> bm!410611 m!6532394))

(declare-fun m!6532396 () Bool)

(assert (=> bm!410616 m!6532396))

(declare-fun m!6532398 () Bool)

(assert (=> bm!410615 m!6532398))

(assert (=> b!5529288 d!1752535))

(declare-fun d!1752537 () Bool)

(declare-fun res!2354696 () Bool)

(declare-fun e!3418715 () Bool)

(assert (=> d!1752537 (=> res!2354696 e!3418715)))

(assert (=> d!1752537 (= res!2354696 (is-Nil!62717 (t!376098 (exprs!5398 lt!2247922))))))

(assert (=> d!1752537 (= (forall!14692 (t!376098 (exprs!5398 lt!2247922)) lambda!296708) e!3418715)))

(declare-fun b!5530328 () Bool)

(declare-fun e!3418716 () Bool)

(assert (=> b!5530328 (= e!3418715 e!3418716)))

(declare-fun res!2354697 () Bool)

(assert (=> b!5530328 (=> (not res!2354697) (not e!3418716))))

(assert (=> b!5530328 (= res!2354697 (dynLambda!24523 lambda!296708 (h!69165 (t!376098 (exprs!5398 lt!2247922)))))))

(declare-fun b!5530329 () Bool)

(assert (=> b!5530329 (= e!3418716 (forall!14692 (t!376098 (t!376098 (exprs!5398 lt!2247922))) lambda!296708))))

(assert (= (and d!1752537 (not res!2354696)) b!5530328))

(assert (= (and b!5530328 res!2354697) b!5530329))

(declare-fun b_lambda!209887 () Bool)

(assert (=> (not b_lambda!209887) (not b!5530328)))

(declare-fun m!6532400 () Bool)

(assert (=> b!5530328 m!6532400))

(declare-fun m!6532402 () Bool)

(assert (=> b!5530329 m!6532402))

(assert (=> b!5529288 d!1752537))

(declare-fun bs!1278184 () Bool)

(declare-fun d!1752539 () Bool)

(assert (= bs!1278184 (and d!1752539 b!5529167)))

(declare-fun lambda!296824 () Int)

(assert (=> bs!1278184 (= (= lt!2248113 lt!2248075) (= lambda!296824 lambda!296683))))

(declare-fun bs!1278185 () Bool)

(assert (= bs!1278185 (and d!1752539 d!1752031)))

(assert (=> bs!1278185 (not (= lambda!296824 lambda!296657))))

(declare-fun bs!1278186 () Bool)

(assert (= bs!1278186 (and d!1752539 b!5530200)))

(assert (=> bs!1278186 (= (= lt!2248113 lt!2248241) (= lambda!296824 lambda!296816))))

(declare-fun bs!1278187 () Bool)

(assert (= bs!1278187 (and d!1752539 d!1752349)))

(assert (=> bs!1278187 (not (= lambda!296824 lambda!296779))))

(declare-fun bs!1278188 () Bool)

(assert (= bs!1278188 (and d!1752539 b!5529162)))

(assert (=> bs!1278188 (= (= lt!2248113 lt!2248071) (= lambda!296824 lambda!296681))))

(declare-fun bs!1278189 () Bool)

(assert (= bs!1278189 (and d!1752539 d!1752277)))

(assert (=> bs!1278189 (not (= lambda!296824 lambda!296770))))

(declare-fun bs!1278190 () Bool)

(assert (= bs!1278190 (and d!1752539 d!1752115)))

(assert (=> bs!1278190 (not (= lambda!296824 lambda!296691))))

(declare-fun bs!1278191 () Bool)

(assert (= bs!1278191 (and d!1752539 d!1752085)))

(assert (=> bs!1278191 (not (= lambda!296824 lambda!296690))))

(declare-fun bs!1278192 () Bool)

(assert (= bs!1278192 (and d!1752539 b!5529290)))

(assert (=> bs!1278192 (= (= lt!2248113 lt!2248112) (= lambda!296824 lambda!296709))))

(declare-fun bs!1278193 () Bool)

(assert (= bs!1278193 (and d!1752539 b!5530198)))

(assert (=> bs!1278193 (= (= lt!2248113 lt!2248242) (= lambda!296824 lambda!296815))))

(declare-fun bs!1278194 () Bool)

(assert (= bs!1278194 (and d!1752539 d!1752029)))

(assert (=> bs!1278194 (not (= lambda!296824 lambda!296654))))

(declare-fun bs!1278195 () Bool)

(assert (= bs!1278195 (and d!1752539 d!1752257)))

(assert (=> bs!1278195 (not (= lambda!296824 lambda!296768))))

(declare-fun bs!1278196 () Bool)

(assert (= bs!1278196 (and d!1752539 b!5530176)))

(assert (=> bs!1278196 (= (= lt!2248113 lt!2248232) (= lambda!296824 lambda!296809))))

(declare-fun bs!1278197 () Bool)

(assert (= bs!1278197 (and d!1752539 b!5529288)))

(assert (=> bs!1278197 (= lambda!296824 lambda!296708)))

(declare-fun bs!1278198 () Bool)

(assert (= bs!1278198 (and d!1752539 d!1752445)))

(assert (=> bs!1278198 (not (= lambda!296824 lambda!296798))))

(declare-fun bs!1278199 () Bool)

(assert (= bs!1278199 (and d!1752539 b!5530257)))

(assert (=> bs!1278199 (= (= lt!2248113 lt!2248252) (= lambda!296824 lambda!296821))))

(declare-fun bs!1278200 () Bool)

(assert (= bs!1278200 (and d!1752539 b!5530259)))

(assert (=> bs!1278200 (= (= lt!2248113 lt!2248251) (= lambda!296824 lambda!296822))))

(declare-fun bs!1278201 () Bool)

(assert (= bs!1278201 (and d!1752539 b!5530160)))

(assert (=> bs!1278201 (= (= lt!2248113 lt!2248228) (= lambda!296824 lambda!296807))))

(declare-fun bs!1278202 () Bool)

(assert (= bs!1278202 (and d!1752539 d!1752497)))

(assert (=> bs!1278202 (= (= lt!2248113 lt!2248071) (= lambda!296824 lambda!296819))))

(declare-fun bs!1278203 () Bool)

(assert (= bs!1278203 (and d!1752539 b!5529169)))

(assert (=> bs!1278203 (= (= lt!2248113 lt!2248074) (= lambda!296824 lambda!296684))))

(declare-fun bs!1278204 () Bool)

(assert (= bs!1278204 (and d!1752539 b!5530178)))

(assert (=> bs!1278204 (= (= lt!2248113 lt!2248231) (= lambda!296824 lambda!296810))))

(declare-fun bs!1278205 () Bool)

(assert (= bs!1278205 (and d!1752539 b!5530162)))

(assert (=> bs!1278205 (= (= lt!2248113 lt!2248227) (= lambda!296824 lambda!296808))))

(declare-fun bs!1278206 () Bool)

(assert (= bs!1278206 (and d!1752539 d!1752517)))

(assert (=> bs!1278206 (= (= lt!2248113 lt!2248075) (= lambda!296824 lambda!296823))))

(declare-fun bs!1278207 () Bool)

(assert (= bs!1278207 (and d!1752539 b!5529164)))

(assert (=> bs!1278207 (= (= lt!2248113 lt!2248070) (= lambda!296824 lambda!296682))))

(declare-fun bs!1278208 () Bool)

(assert (= bs!1278208 (and d!1752539 d!1752299)))

(assert (=> bs!1278208 (not (= lambda!296824 lambda!296774))))

(declare-fun bs!1278209 () Bool)

(assert (= bs!1278209 (and d!1752539 d!1752083)))

(assert (=> bs!1278209 (not (= lambda!296824 lambda!296687))))

(assert (=> d!1752539 true))

(assert (=> d!1752539 (forall!14692 (t!376098 (exprs!5398 lt!2247922)) lambda!296824)))

(declare-fun lt!2248257 () Unit!155488)

(assert (=> d!1752539 (= lt!2248257 (choose!42025 (t!376098 (exprs!5398 lt!2247922)) lt!2248113 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247922))))))))

(assert (=> d!1752539 (>= lt!2248113 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247922)))))))

(assert (=> d!1752539 (= (lemmaForallRegexDepthBiggerThanTransitive!19 (t!376098 (exprs!5398 lt!2247922)) lt!2248113 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247922))))) lt!2248257)))

(declare-fun bs!1278210 () Bool)

(assert (= bs!1278210 d!1752539))

(declare-fun m!6532404 () Bool)

(assert (=> bs!1278210 m!6532404))

(assert (=> bs!1278210 m!6531398))

(declare-fun m!6532406 () Bool)

(assert (=> bs!1278210 m!6532406))

(assert (=> b!5529288 d!1752539))

(declare-fun d!1752541 () Bool)

(assert (=> d!1752541 (= (maxBigInt!0 (regexDepth!214 (h!69165 (exprs!5398 lt!2247922))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247922))))) (ite (>= (regexDepth!214 (h!69165 (exprs!5398 lt!2247922))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247922))))) (regexDepth!214 (h!69165 (exprs!5398 lt!2247922))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247922))))))))

(assert (=> b!5529288 d!1752541))

(declare-fun bs!1278211 () Bool)

(declare-fun b!5530330 () Bool)

(assert (= bs!1278211 (and b!5530330 b!5529167)))

(declare-fun lt!2248261 () Int)

(declare-fun lambda!296825 () Int)

(assert (=> bs!1278211 (= (= lt!2248261 lt!2248075) (= lambda!296825 lambda!296683))))

(declare-fun bs!1278212 () Bool)

(assert (= bs!1278212 (and b!5530330 d!1752031)))

(assert (=> bs!1278212 (not (= lambda!296825 lambda!296657))))

(declare-fun bs!1278213 () Bool)

(assert (= bs!1278213 (and b!5530330 b!5530200)))

(assert (=> bs!1278213 (= (= lt!2248261 lt!2248241) (= lambda!296825 lambda!296816))))

(declare-fun bs!1278214 () Bool)

(assert (= bs!1278214 (and b!5530330 d!1752349)))

(assert (=> bs!1278214 (not (= lambda!296825 lambda!296779))))

(declare-fun bs!1278215 () Bool)

(assert (= bs!1278215 (and b!5530330 b!5529162)))

(assert (=> bs!1278215 (= (= lt!2248261 lt!2248071) (= lambda!296825 lambda!296681))))

(declare-fun bs!1278216 () Bool)

(assert (= bs!1278216 (and b!5530330 d!1752277)))

(assert (=> bs!1278216 (not (= lambda!296825 lambda!296770))))

(declare-fun bs!1278217 () Bool)

(assert (= bs!1278217 (and b!5530330 d!1752115)))

(assert (=> bs!1278217 (not (= lambda!296825 lambda!296691))))

(declare-fun bs!1278218 () Bool)

(assert (= bs!1278218 (and b!5530330 d!1752085)))

(assert (=> bs!1278218 (not (= lambda!296825 lambda!296690))))

(declare-fun bs!1278219 () Bool)

(assert (= bs!1278219 (and b!5530330 b!5529290)))

(assert (=> bs!1278219 (= (= lt!2248261 lt!2248112) (= lambda!296825 lambda!296709))))

(declare-fun bs!1278220 () Bool)

(assert (= bs!1278220 (and b!5530330 b!5530198)))

(assert (=> bs!1278220 (= (= lt!2248261 lt!2248242) (= lambda!296825 lambda!296815))))

(declare-fun bs!1278221 () Bool)

(assert (= bs!1278221 (and b!5530330 d!1752029)))

(assert (=> bs!1278221 (not (= lambda!296825 lambda!296654))))

(declare-fun bs!1278222 () Bool)

(assert (= bs!1278222 (and b!5530330 d!1752257)))

(assert (=> bs!1278222 (not (= lambda!296825 lambda!296768))))

(declare-fun bs!1278223 () Bool)

(assert (= bs!1278223 (and b!5530330 b!5530176)))

(assert (=> bs!1278223 (= (= lt!2248261 lt!2248232) (= lambda!296825 lambda!296809))))

(declare-fun bs!1278224 () Bool)

(assert (= bs!1278224 (and b!5530330 b!5529288)))

(assert (=> bs!1278224 (= (= lt!2248261 lt!2248113) (= lambda!296825 lambda!296708))))

(declare-fun bs!1278225 () Bool)

(assert (= bs!1278225 (and b!5530330 d!1752445)))

(assert (=> bs!1278225 (not (= lambda!296825 lambda!296798))))

(declare-fun bs!1278226 () Bool)

(assert (= bs!1278226 (and b!5530330 d!1752539)))

(assert (=> bs!1278226 (= (= lt!2248261 lt!2248113) (= lambda!296825 lambda!296824))))

(declare-fun bs!1278227 () Bool)

(assert (= bs!1278227 (and b!5530330 b!5530257)))

(assert (=> bs!1278227 (= (= lt!2248261 lt!2248252) (= lambda!296825 lambda!296821))))

(declare-fun bs!1278228 () Bool)

(assert (= bs!1278228 (and b!5530330 b!5530259)))

(assert (=> bs!1278228 (= (= lt!2248261 lt!2248251) (= lambda!296825 lambda!296822))))

(declare-fun bs!1278229 () Bool)

(assert (= bs!1278229 (and b!5530330 b!5530160)))

(assert (=> bs!1278229 (= (= lt!2248261 lt!2248228) (= lambda!296825 lambda!296807))))

(declare-fun bs!1278230 () Bool)

(assert (= bs!1278230 (and b!5530330 d!1752497)))

(assert (=> bs!1278230 (= (= lt!2248261 lt!2248071) (= lambda!296825 lambda!296819))))

(declare-fun bs!1278231 () Bool)

(assert (= bs!1278231 (and b!5530330 b!5529169)))

(assert (=> bs!1278231 (= (= lt!2248261 lt!2248074) (= lambda!296825 lambda!296684))))

(declare-fun bs!1278232 () Bool)

(assert (= bs!1278232 (and b!5530330 b!5530178)))

(assert (=> bs!1278232 (= (= lt!2248261 lt!2248231) (= lambda!296825 lambda!296810))))

(declare-fun bs!1278233 () Bool)

(assert (= bs!1278233 (and b!5530330 b!5530162)))

(assert (=> bs!1278233 (= (= lt!2248261 lt!2248227) (= lambda!296825 lambda!296808))))

(declare-fun bs!1278234 () Bool)

(assert (= bs!1278234 (and b!5530330 d!1752517)))

(assert (=> bs!1278234 (= (= lt!2248261 lt!2248075) (= lambda!296825 lambda!296823))))

(declare-fun bs!1278235 () Bool)

(assert (= bs!1278235 (and b!5530330 b!5529164)))

(assert (=> bs!1278235 (= (= lt!2248261 lt!2248070) (= lambda!296825 lambda!296682))))

(declare-fun bs!1278236 () Bool)

(assert (= bs!1278236 (and b!5530330 d!1752299)))

(assert (=> bs!1278236 (not (= lambda!296825 lambda!296774))))

(declare-fun bs!1278237 () Bool)

(assert (= bs!1278237 (and b!5530330 d!1752083)))

(assert (=> bs!1278237 (not (= lambda!296825 lambda!296687))))

(assert (=> b!5530330 true))

(declare-fun bs!1278238 () Bool)

(declare-fun b!5530332 () Bool)

(assert (= bs!1278238 (and b!5530332 b!5529167)))

(declare-fun lambda!296826 () Int)

(declare-fun lt!2248260 () Int)

(assert (=> bs!1278238 (= (= lt!2248260 lt!2248075) (= lambda!296826 lambda!296683))))

(declare-fun bs!1278239 () Bool)

(assert (= bs!1278239 (and b!5530332 d!1752031)))

(assert (=> bs!1278239 (not (= lambda!296826 lambda!296657))))

(declare-fun bs!1278240 () Bool)

(assert (= bs!1278240 (and b!5530332 b!5530330)))

(assert (=> bs!1278240 (= (= lt!2248260 lt!2248261) (= lambda!296826 lambda!296825))))

(declare-fun bs!1278241 () Bool)

(assert (= bs!1278241 (and b!5530332 b!5530200)))

(assert (=> bs!1278241 (= (= lt!2248260 lt!2248241) (= lambda!296826 lambda!296816))))

(declare-fun bs!1278242 () Bool)

(assert (= bs!1278242 (and b!5530332 d!1752349)))

(assert (=> bs!1278242 (not (= lambda!296826 lambda!296779))))

(declare-fun bs!1278243 () Bool)

(assert (= bs!1278243 (and b!5530332 b!5529162)))

(assert (=> bs!1278243 (= (= lt!2248260 lt!2248071) (= lambda!296826 lambda!296681))))

(declare-fun bs!1278244 () Bool)

(assert (= bs!1278244 (and b!5530332 d!1752277)))

(assert (=> bs!1278244 (not (= lambda!296826 lambda!296770))))

(declare-fun bs!1278245 () Bool)

(assert (= bs!1278245 (and b!5530332 d!1752115)))

(assert (=> bs!1278245 (not (= lambda!296826 lambda!296691))))

(declare-fun bs!1278246 () Bool)

(assert (= bs!1278246 (and b!5530332 d!1752085)))

(assert (=> bs!1278246 (not (= lambda!296826 lambda!296690))))

(declare-fun bs!1278247 () Bool)

(assert (= bs!1278247 (and b!5530332 b!5529290)))

(assert (=> bs!1278247 (= (= lt!2248260 lt!2248112) (= lambda!296826 lambda!296709))))

(declare-fun bs!1278248 () Bool)

(assert (= bs!1278248 (and b!5530332 b!5530198)))

(assert (=> bs!1278248 (= (= lt!2248260 lt!2248242) (= lambda!296826 lambda!296815))))

(declare-fun bs!1278249 () Bool)

(assert (= bs!1278249 (and b!5530332 d!1752029)))

(assert (=> bs!1278249 (not (= lambda!296826 lambda!296654))))

(declare-fun bs!1278250 () Bool)

(assert (= bs!1278250 (and b!5530332 d!1752257)))

(assert (=> bs!1278250 (not (= lambda!296826 lambda!296768))))

(declare-fun bs!1278251 () Bool)

(assert (= bs!1278251 (and b!5530332 b!5530176)))

(assert (=> bs!1278251 (= (= lt!2248260 lt!2248232) (= lambda!296826 lambda!296809))))

(declare-fun bs!1278252 () Bool)

(assert (= bs!1278252 (and b!5530332 b!5529288)))

(assert (=> bs!1278252 (= (= lt!2248260 lt!2248113) (= lambda!296826 lambda!296708))))

(declare-fun bs!1278253 () Bool)

(assert (= bs!1278253 (and b!5530332 d!1752445)))

(assert (=> bs!1278253 (not (= lambda!296826 lambda!296798))))

(declare-fun bs!1278254 () Bool)

(assert (= bs!1278254 (and b!5530332 d!1752539)))

(assert (=> bs!1278254 (= (= lt!2248260 lt!2248113) (= lambda!296826 lambda!296824))))

(declare-fun bs!1278255 () Bool)

(assert (= bs!1278255 (and b!5530332 b!5530257)))

(assert (=> bs!1278255 (= (= lt!2248260 lt!2248252) (= lambda!296826 lambda!296821))))

(declare-fun bs!1278256 () Bool)

(assert (= bs!1278256 (and b!5530332 b!5530259)))

(assert (=> bs!1278256 (= (= lt!2248260 lt!2248251) (= lambda!296826 lambda!296822))))

(declare-fun bs!1278257 () Bool)

(assert (= bs!1278257 (and b!5530332 b!5530160)))

(assert (=> bs!1278257 (= (= lt!2248260 lt!2248228) (= lambda!296826 lambda!296807))))

(declare-fun bs!1278258 () Bool)

(assert (= bs!1278258 (and b!5530332 d!1752497)))

(assert (=> bs!1278258 (= (= lt!2248260 lt!2248071) (= lambda!296826 lambda!296819))))

(declare-fun bs!1278259 () Bool)

(assert (= bs!1278259 (and b!5530332 b!5529169)))

(assert (=> bs!1278259 (= (= lt!2248260 lt!2248074) (= lambda!296826 lambda!296684))))

(declare-fun bs!1278260 () Bool)

(assert (= bs!1278260 (and b!5530332 b!5530178)))

(assert (=> bs!1278260 (= (= lt!2248260 lt!2248231) (= lambda!296826 lambda!296810))))

(declare-fun bs!1278261 () Bool)

(assert (= bs!1278261 (and b!5530332 b!5530162)))

(assert (=> bs!1278261 (= (= lt!2248260 lt!2248227) (= lambda!296826 lambda!296808))))

(declare-fun bs!1278262 () Bool)

(assert (= bs!1278262 (and b!5530332 d!1752517)))

(assert (=> bs!1278262 (= (= lt!2248260 lt!2248075) (= lambda!296826 lambda!296823))))

(declare-fun bs!1278263 () Bool)

(assert (= bs!1278263 (and b!5530332 b!5529164)))

(assert (=> bs!1278263 (= (= lt!2248260 lt!2248070) (= lambda!296826 lambda!296682))))

(declare-fun bs!1278264 () Bool)

(assert (= bs!1278264 (and b!5530332 d!1752299)))

(assert (=> bs!1278264 (not (= lambda!296826 lambda!296774))))

(declare-fun bs!1278265 () Bool)

(assert (= bs!1278265 (and b!5530332 d!1752083)))

(assert (=> bs!1278265 (not (= lambda!296826 lambda!296687))))

(assert (=> b!5530332 true))

(declare-fun d!1752543 () Bool)

(declare-fun e!3418718 () Bool)

(assert (=> d!1752543 e!3418718))

(declare-fun res!2354698 () Bool)

(assert (=> d!1752543 (=> (not res!2354698) (not e!3418718))))

(assert (=> d!1752543 (= res!2354698 (>= lt!2248260 0))))

(declare-fun e!3418717 () Int)

(assert (=> d!1752543 (= lt!2248260 e!3418717)))

(declare-fun c!967833 () Bool)

(assert (=> d!1752543 (= c!967833 (is-Cons!62717 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922))))))))

(assert (=> d!1752543 (= (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 lt!2247922)))) lt!2248260)))

(assert (=> b!5530330 (= e!3418717 lt!2248261)))

(assert (=> b!5530330 (= lt!2248261 (maxBigInt!0 (regexDepth!214 (h!69165 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922)))))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922)))))))))))

(declare-fun lt!2248258 () Unit!155488)

(assert (=> b!5530330 (= lt!2248258 (lemmaForallRegexDepthBiggerThanTransitive!19 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922))))) lt!2248261 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922)))))))))))

(assert (=> b!5530330 (forall!14692 (t!376098 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922))))) lambda!296825)))

(declare-fun lt!2248259 () Unit!155488)

(assert (=> b!5530330 (= lt!2248259 lt!2248258)))

(declare-fun b!5530331 () Bool)

(assert (=> b!5530331 (= e!3418717 0)))

(assert (=> b!5530332 (= e!3418718 (forall!14692 (exprs!5398 (Context!9797 (t!376098 (exprs!5398 lt!2247922)))) lambda!296826))))

(assert (= (and d!1752543 c!967833) b!5530330))

(assert (= (and d!1752543 (not c!967833)) b!5530331))

(assert (= (and d!1752543 res!2354698) b!5530332))

(declare-fun m!6532408 () Bool)

(assert (=> b!5530330 m!6532408))

(declare-fun m!6532410 () Bool)

(assert (=> b!5530330 m!6532410))

(declare-fun m!6532412 () Bool)

(assert (=> b!5530330 m!6532412))

(assert (=> b!5530330 m!6532410))

(declare-fun m!6532414 () Bool)

(assert (=> b!5530330 m!6532414))

(assert (=> b!5530330 m!6532410))

(declare-fun m!6532416 () Bool)

(assert (=> b!5530330 m!6532416))

(assert (=> b!5530330 m!6532408))

(declare-fun m!6532418 () Bool)

(assert (=> b!5530332 m!6532418))

(assert (=> b!5529288 d!1752543))

(declare-fun d!1752545 () Bool)

(declare-fun c!967834 () Bool)

(assert (=> d!1752545 (= c!967834 (isEmpty!34511 (t!376099 s!2326)))))

(declare-fun e!3418719 () Bool)

(assert (=> d!1752545 (= (matchZipper!1672 (set.union lt!2247918 lt!2247907) (t!376099 s!2326)) e!3418719)))

(declare-fun b!5530333 () Bool)

(assert (=> b!5530333 (= e!3418719 (nullableZipper!1540 (set.union lt!2247918 lt!2247907)))))

(declare-fun b!5530334 () Bool)

(assert (=> b!5530334 (= e!3418719 (matchZipper!1672 (derivationStepZipper!1619 (set.union lt!2247918 lt!2247907) (head!11832 (t!376099 s!2326))) (tail!10927 (t!376099 s!2326))))))

(assert (= (and d!1752545 c!967834) b!5530333))

(assert (= (and d!1752545 (not c!967834)) b!5530334))

(assert (=> d!1752545 m!6531116))

(declare-fun m!6532420 () Bool)

(assert (=> b!5530333 m!6532420))

(assert (=> b!5530334 m!6531120))

(assert (=> b!5530334 m!6531120))

(declare-fun m!6532422 () Bool)

(assert (=> b!5530334 m!6532422))

(assert (=> b!5530334 m!6531124))

(assert (=> b!5530334 m!6532422))

(assert (=> b!5530334 m!6531124))

(declare-fun m!6532424 () Bool)

(assert (=> b!5530334 m!6532424))

(assert (=> d!1752047 d!1752545))

(assert (=> d!1752047 d!1752045))

(declare-fun e!3418722 () Bool)

(declare-fun d!1752547 () Bool)

(assert (=> d!1752547 (= (matchZipper!1672 (set.union lt!2247918 lt!2247907) (t!376099 s!2326)) e!3418722)))

(declare-fun res!2354701 () Bool)

(assert (=> d!1752547 (=> res!2354701 e!3418722)))

(assert (=> d!1752547 (= res!2354701 (matchZipper!1672 lt!2247918 (t!376099 s!2326)))))

(assert (=> d!1752547 true))

(declare-fun _$48!1105 () Unit!155488)

(assert (=> d!1752547 (= (choose!42007 lt!2247918 lt!2247907 (t!376099 s!2326)) _$48!1105)))

(declare-fun b!5530337 () Bool)

(assert (=> b!5530337 (= e!3418722 (matchZipper!1672 lt!2247907 (t!376099 s!2326)))))

(assert (= (and d!1752547 (not res!2354701)) b!5530337))

(assert (=> d!1752547 m!6531154))

(assert (=> d!1752547 m!6530882))

(assert (=> b!5530337 m!6530920))

(assert (=> d!1752047 d!1752547))

(declare-fun bs!1278266 () Bool)

(declare-fun d!1752549 () Bool)

(assert (= bs!1278266 (and d!1752549 b!5529278)))

(declare-fun lambda!296827 () Int)

(assert (=> bs!1278266 (not (= lambda!296827 lambda!296702))))

(declare-fun bs!1278267 () Bool)

(assert (= bs!1278267 (and d!1752549 d!1752297)))

(assert (=> bs!1278267 (= lambda!296827 lambda!296773)))

(declare-fun bs!1278268 () Bool)

(assert (= bs!1278268 (and d!1752549 b!5530179)))

(assert (=> bs!1278268 (not (= lambda!296827 lambda!296812))))

(declare-fun bs!1278269 () Bool)

(assert (= bs!1278269 (and d!1752549 b!5530159)))

(assert (=> bs!1278269 (not (= lambda!296827 lambda!296806))))

(declare-fun bs!1278270 () Bool)

(assert (= bs!1278270 (and d!1752549 d!1752465)))

(assert (=> bs!1278270 (not (= lambda!296827 lambda!296803))))

(declare-fun bs!1278271 () Bool)

(assert (= bs!1278271 (and d!1752549 b!5529285)))

(assert (=> bs!1278271 (not (= lambda!296827 lambda!296706))))

(declare-fun bs!1278272 () Bool)

(assert (= bs!1278272 (and d!1752549 d!1752315)))

(assert (=> bs!1278272 (= lambda!296827 lambda!296778)))

(declare-fun bs!1278273 () Bool)

(assert (= bs!1278273 (and d!1752549 b!5530181)))

(assert (=> bs!1278273 (not (= lambda!296827 lambda!296813))))

(declare-fun bs!1278274 () Bool)

(assert (= bs!1278274 (and d!1752549 b!5530157)))

(assert (=> bs!1278274 (not (= lambda!296827 lambda!296805))))

(declare-fun bs!1278275 () Bool)

(assert (= bs!1278275 (and d!1752549 b!5529273)))

(assert (=> bs!1278275 (not (= lambda!296827 lambda!296699))))

(declare-fun bs!1278276 () Bool)

(assert (= bs!1278276 (and d!1752549 d!1752409)))

(assert (=> bs!1278276 (= lambda!296827 lambda!296792)))

(declare-fun bs!1278277 () Bool)

(assert (= bs!1278277 (and d!1752549 d!1752357)))

(assert (=> bs!1278277 (= lambda!296827 lambda!296782)))

(declare-fun bs!1278278 () Bool)

(assert (= bs!1278278 (and d!1752549 b!5529280)))

(assert (=> bs!1278278 (not (= lambda!296827 lambda!296703))))

(declare-fun bs!1278279 () Bool)

(assert (= bs!1278279 (and d!1752549 d!1752503)))

(assert (=> bs!1278279 (= lambda!296827 lambda!296820)))

(declare-fun bs!1278280 () Bool)

(assert (= bs!1278280 (and d!1752549 d!1752443)))

(assert (=> bs!1278280 (= lambda!296827 lambda!296797)))

(declare-fun bs!1278281 () Bool)

(assert (= bs!1278281 (and d!1752549 d!1752399)))

(assert (=> bs!1278281 (= lambda!296827 lambda!296791)))

(declare-fun bs!1278282 () Bool)

(assert (= bs!1278282 (and d!1752549 b!5529287)))

(assert (=> bs!1278282 (not (= lambda!296827 lambda!296707))))

(declare-fun bs!1278283 () Bool)

(assert (= bs!1278283 (and d!1752549 b!5529275)))

(assert (=> bs!1278283 (not (= lambda!296827 lambda!296700))))

(declare-fun bs!1278284 () Bool)

(assert (= bs!1278284 (and d!1752549 d!1752489)))

(assert (=> bs!1278284 (not (= lambda!296827 lambda!296814))))

(assert (=> d!1752549 (= (nullableZipper!1540 lt!2247928) (exists!2148 lt!2247928 lambda!296827))))

(declare-fun bs!1278285 () Bool)

(assert (= bs!1278285 d!1752549))

(declare-fun m!6532426 () Bool)

(assert (=> bs!1278285 m!6532426))

(assert (=> b!5528977 d!1752549))

(declare-fun d!1752551 () Bool)

(declare-fun c!967835 () Bool)

(assert (=> d!1752551 (= c!967835 (isEmpty!34511 (tail!10927 (t!376099 s!2326))))))

(declare-fun e!3418723 () Bool)

(assert (=> d!1752551 (= (matchZipper!1672 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247909 (h!69166 s!2326)) (head!11832 (t!376099 s!2326))) (tail!10927 (t!376099 s!2326))) e!3418723)))

(declare-fun b!5530338 () Bool)

(assert (=> b!5530338 (= e!3418723 (nullableZipper!1540 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247909 (h!69166 s!2326)) (head!11832 (t!376099 s!2326)))))))

(declare-fun b!5530339 () Bool)

(assert (=> b!5530339 (= e!3418723 (matchZipper!1672 (derivationStepZipper!1619 (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247909 (h!69166 s!2326)) (head!11832 (t!376099 s!2326))) (head!11832 (tail!10927 (t!376099 s!2326)))) (tail!10927 (tail!10927 (t!376099 s!2326)))))))

(assert (= (and d!1752551 c!967835) b!5530338))

(assert (= (and d!1752551 (not c!967835)) b!5530339))

(assert (=> d!1752551 m!6531124))

(assert (=> d!1752551 m!6531788))

(assert (=> b!5530338 m!6531122))

(declare-fun m!6532428 () Bool)

(assert (=> b!5530338 m!6532428))

(assert (=> b!5530339 m!6531124))

(assert (=> b!5530339 m!6531792))

(assert (=> b!5530339 m!6531122))

(assert (=> b!5530339 m!6531792))

(declare-fun m!6532430 () Bool)

(assert (=> b!5530339 m!6532430))

(assert (=> b!5530339 m!6531124))

(assert (=> b!5530339 m!6531796))

(assert (=> b!5530339 m!6532430))

(assert (=> b!5530339 m!6531796))

(declare-fun m!6532432 () Bool)

(assert (=> b!5530339 m!6532432))

(assert (=> b!5528970 d!1752551))

(declare-fun bs!1278286 () Bool)

(declare-fun d!1752553 () Bool)

(assert (= bs!1278286 (and d!1752553 d!1752073)))

(declare-fun lambda!296828 () Int)

(assert (=> bs!1278286 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296828 lambda!296676))))

(declare-fun bs!1278287 () Bool)

(assert (= bs!1278287 (and d!1752553 b!5528779)))

(assert (=> bs!1278287 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296828 lambda!296636))))

(declare-fun bs!1278288 () Bool)

(assert (= bs!1278288 (and d!1752553 d!1752313)))

(assert (=> bs!1278288 (= lambda!296828 lambda!296777)))

(declare-fun bs!1278289 () Bool)

(assert (= bs!1278289 (and d!1752553 d!1752125)))

(assert (=> bs!1278289 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296828 lambda!296704))))

(declare-fun bs!1278290 () Bool)

(assert (= bs!1278290 (and d!1752553 d!1752455)))

(assert (=> bs!1278290 (= lambda!296828 lambda!296799)))

(declare-fun bs!1278291 () Bool)

(assert (= bs!1278291 (and d!1752553 d!1752389)))

(assert (=> bs!1278291 (= lambda!296828 lambda!296784)))

(declare-fun bs!1278292 () Bool)

(assert (= bs!1278292 (and d!1752553 d!1752265)))

(assert (=> bs!1278292 (= lambda!296828 lambda!296769)))

(declare-fun bs!1278293 () Bool)

(assert (= bs!1278293 (and d!1752553 d!1752461)))

(assert (=> bs!1278293 (= (= (head!11832 (t!376099 s!2326)) (head!11832 s!2326)) (= lambda!296828 lambda!296800))))

(declare-fun bs!1278294 () Bool)

(assert (= bs!1278294 (and d!1752553 d!1752037)))

(assert (=> bs!1278294 (= (= (head!11832 (t!376099 s!2326)) (h!69166 s!2326)) (= lambda!296828 lambda!296660))))

(declare-fun bs!1278295 () Bool)

(assert (= bs!1278295 (and d!1752553 d!1752381)))

(assert (=> bs!1278295 (= lambda!296828 lambda!296783)))

(declare-fun bs!1278296 () Bool)

(assert (= bs!1278296 (and d!1752553 d!1752419)))

(assert (=> bs!1278296 (= (= (head!11832 (t!376099 s!2326)) (head!11832 s!2326)) (= lambda!296828 lambda!296793))))

(assert (=> d!1752553 true))

(assert (=> d!1752553 (= (derivationStepZipper!1619 (derivationStepZipper!1619 lt!2247909 (h!69166 s!2326)) (head!11832 (t!376099 s!2326))) (flatMap!1127 (derivationStepZipper!1619 lt!2247909 (h!69166 s!2326)) lambda!296828))))

(declare-fun bs!1278297 () Bool)

(assert (= bs!1278297 d!1752553))

(assert (=> bs!1278297 m!6530910))

(declare-fun m!6532434 () Bool)

(assert (=> bs!1278297 m!6532434))

(assert (=> b!5528970 d!1752553))

(assert (=> b!5528970 d!1752267))

(assert (=> b!5528970 d!1752269))

(declare-fun bs!1278298 () Bool)

(declare-fun b!5530340 () Bool)

(assert (= bs!1278298 (and b!5530340 b!5530157)))

(declare-fun lambda!296829 () Int)

(assert (=> bs!1278298 (= lambda!296829 lambda!296804)))

(declare-fun bs!1278299 () Bool)

(assert (= bs!1278299 (and b!5530340 b!5530179)))

(assert (=> bs!1278299 (= lambda!296829 lambda!296811)))

(declare-fun bs!1278300 () Bool)

(assert (= bs!1278300 (and b!5530340 b!5529285)))

(assert (=> bs!1278300 (= lambda!296829 lambda!296705)))

(declare-fun bs!1278301 () Bool)

(assert (= bs!1278301 (and b!5530340 b!5529273)))

(assert (=> bs!1278301 (= lambda!296829 lambda!296698)))

(declare-fun bs!1278302 () Bool)

(assert (= bs!1278302 (and b!5530340 b!5529278)))

(assert (=> bs!1278302 (= lambda!296829 lambda!296701)))

(declare-fun bs!1278303 () Bool)

(assert (= bs!1278303 (and b!5530340 d!1752549)))

(declare-fun lambda!296830 () Int)

(assert (=> bs!1278303 (not (= lambda!296830 lambda!296827))))

(declare-fun lt!2248265 () Int)

(assert (=> bs!1278302 (= (= lt!2248265 lt!2248105) (= lambda!296830 lambda!296702))))

(declare-fun bs!1278304 () Bool)

(assert (= bs!1278304 (and b!5530340 d!1752297)))

(assert (=> bs!1278304 (not (= lambda!296830 lambda!296773))))

(assert (=> bs!1278299 (= (= lt!2248265 lt!2248236) (= lambda!296830 lambda!296812))))

(declare-fun bs!1278305 () Bool)

(assert (= bs!1278305 (and b!5530340 b!5530159)))

(assert (=> bs!1278305 (= (= lt!2248265 lt!2248222) (= lambda!296830 lambda!296806))))

(declare-fun bs!1278306 () Bool)

(assert (= bs!1278306 (and b!5530340 d!1752465)))

(assert (=> bs!1278306 (not (= lambda!296830 lambda!296803))))

(assert (=> bs!1278300 (= (= lt!2248265 lt!2248109) (= lambda!296830 lambda!296706))))

(declare-fun bs!1278307 () Bool)

(assert (= bs!1278307 (and b!5530340 d!1752315)))

(assert (=> bs!1278307 (not (= lambda!296830 lambda!296778))))

(declare-fun bs!1278308 () Bool)

(assert (= bs!1278308 (and b!5530340 b!5530181)))

(assert (=> bs!1278308 (= (= lt!2248265 lt!2248234) (= lambda!296830 lambda!296813))))

(assert (=> bs!1278298 (= (= lt!2248265 lt!2248224) (= lambda!296830 lambda!296805))))

(assert (=> bs!1278301 (= (= lt!2248265 lt!2248101) (= lambda!296830 lambda!296699))))

(declare-fun bs!1278309 () Bool)

(assert (= bs!1278309 (and b!5530340 d!1752409)))

(assert (=> bs!1278309 (not (= lambda!296830 lambda!296792))))

(declare-fun bs!1278310 () Bool)

(assert (= bs!1278310 (and b!5530340 d!1752357)))

(assert (=> bs!1278310 (not (= lambda!296830 lambda!296782))))

(declare-fun bs!1278311 () Bool)

(assert (= bs!1278311 (and b!5530340 b!5529280)))

(assert (=> bs!1278311 (= (= lt!2248265 lt!2248103) (= lambda!296830 lambda!296703))))

(declare-fun bs!1278312 () Bool)

(assert (= bs!1278312 (and b!5530340 d!1752503)))

(assert (=> bs!1278312 (not (= lambda!296830 lambda!296820))))

(declare-fun bs!1278313 () Bool)

(assert (= bs!1278313 (and b!5530340 d!1752443)))

(assert (=> bs!1278313 (not (= lambda!296830 lambda!296797))))

(declare-fun bs!1278314 () Bool)

(assert (= bs!1278314 (and b!5530340 d!1752399)))

(assert (=> bs!1278314 (not (= lambda!296830 lambda!296791))))

(declare-fun bs!1278315 () Bool)

(assert (= bs!1278315 (and b!5530340 b!5529287)))

(assert (=> bs!1278315 (= (= lt!2248265 lt!2248107) (= lambda!296830 lambda!296707))))

(declare-fun bs!1278316 () Bool)

(assert (= bs!1278316 (and b!5530340 b!5529275)))

(assert (=> bs!1278316 (= (= lt!2248265 lt!2248099) (= lambda!296830 lambda!296700))))

(declare-fun bs!1278317 () Bool)

(assert (= bs!1278317 (and b!5530340 d!1752489)))

(assert (=> bs!1278317 (not (= lambda!296830 lambda!296814))))

(assert (=> b!5530340 true))

(declare-fun bs!1278318 () Bool)

(declare-fun b!5530342 () Bool)

(assert (= bs!1278318 (and b!5530342 d!1752549)))

(declare-fun lambda!296831 () Int)

(assert (=> bs!1278318 (not (= lambda!296831 lambda!296827))))

(declare-fun bs!1278319 () Bool)

(assert (= bs!1278319 (and b!5530342 b!5529278)))

(declare-fun lt!2248263 () Int)

(assert (=> bs!1278319 (= (= lt!2248263 lt!2248105) (= lambda!296831 lambda!296702))))

(declare-fun bs!1278320 () Bool)

(assert (= bs!1278320 (and b!5530342 d!1752297)))

(assert (=> bs!1278320 (not (= lambda!296831 lambda!296773))))

(declare-fun bs!1278321 () Bool)

(assert (= bs!1278321 (and b!5530342 b!5530179)))

(assert (=> bs!1278321 (= (= lt!2248263 lt!2248236) (= lambda!296831 lambda!296812))))

(declare-fun bs!1278322 () Bool)

(assert (= bs!1278322 (and b!5530342 b!5530159)))

(assert (=> bs!1278322 (= (= lt!2248263 lt!2248222) (= lambda!296831 lambda!296806))))

(declare-fun bs!1278323 () Bool)

(assert (= bs!1278323 (and b!5530342 b!5530340)))

(assert (=> bs!1278323 (= (= lt!2248263 lt!2248265) (= lambda!296831 lambda!296830))))

(declare-fun bs!1278324 () Bool)

(assert (= bs!1278324 (and b!5530342 d!1752465)))

(assert (=> bs!1278324 (not (= lambda!296831 lambda!296803))))

(declare-fun bs!1278325 () Bool)

(assert (= bs!1278325 (and b!5530342 b!5529285)))

(assert (=> bs!1278325 (= (= lt!2248263 lt!2248109) (= lambda!296831 lambda!296706))))

(declare-fun bs!1278326 () Bool)

(assert (= bs!1278326 (and b!5530342 d!1752315)))

(assert (=> bs!1278326 (not (= lambda!296831 lambda!296778))))

(declare-fun bs!1278327 () Bool)

(assert (= bs!1278327 (and b!5530342 b!5530181)))

(assert (=> bs!1278327 (= (= lt!2248263 lt!2248234) (= lambda!296831 lambda!296813))))

(declare-fun bs!1278328 () Bool)

(assert (= bs!1278328 (and b!5530342 b!5530157)))

(assert (=> bs!1278328 (= (= lt!2248263 lt!2248224) (= lambda!296831 lambda!296805))))

(declare-fun bs!1278329 () Bool)

(assert (= bs!1278329 (and b!5530342 b!5529273)))

(assert (=> bs!1278329 (= (= lt!2248263 lt!2248101) (= lambda!296831 lambda!296699))))

(declare-fun bs!1278330 () Bool)

(assert (= bs!1278330 (and b!5530342 d!1752409)))

(assert (=> bs!1278330 (not (= lambda!296831 lambda!296792))))

(declare-fun bs!1278331 () Bool)

(assert (= bs!1278331 (and b!5530342 d!1752357)))

(assert (=> bs!1278331 (not (= lambda!296831 lambda!296782))))

(declare-fun bs!1278332 () Bool)

(assert (= bs!1278332 (and b!5530342 b!5529280)))

(assert (=> bs!1278332 (= (= lt!2248263 lt!2248103) (= lambda!296831 lambda!296703))))

(declare-fun bs!1278333 () Bool)

(assert (= bs!1278333 (and b!5530342 d!1752503)))

(assert (=> bs!1278333 (not (= lambda!296831 lambda!296820))))

(declare-fun bs!1278334 () Bool)

(assert (= bs!1278334 (and b!5530342 d!1752443)))

(assert (=> bs!1278334 (not (= lambda!296831 lambda!296797))))

(declare-fun bs!1278335 () Bool)

(assert (= bs!1278335 (and b!5530342 d!1752399)))

(assert (=> bs!1278335 (not (= lambda!296831 lambda!296791))))

(declare-fun bs!1278336 () Bool)

(assert (= bs!1278336 (and b!5530342 b!5529287)))

(assert (=> bs!1278336 (= (= lt!2248263 lt!2248107) (= lambda!296831 lambda!296707))))

(declare-fun bs!1278337 () Bool)

(assert (= bs!1278337 (and b!5530342 b!5529275)))

(assert (=> bs!1278337 (= (= lt!2248263 lt!2248099) (= lambda!296831 lambda!296700))))

(declare-fun bs!1278338 () Bool)

(assert (= bs!1278338 (and b!5530342 d!1752489)))

(assert (=> bs!1278338 (not (= lambda!296831 lambda!296814))))

(assert (=> b!5530342 true))

(declare-fun d!1752555 () Bool)

(declare-fun e!3418724 () Bool)

(assert (=> d!1752555 e!3418724))

(declare-fun res!2354702 () Bool)

(assert (=> d!1752555 (=> (not res!2354702) (not e!3418724))))

(assert (=> d!1752555 (= res!2354702 (>= lt!2248263 0))))

(declare-fun e!3418725 () Int)

(assert (=> d!1752555 (= lt!2248263 e!3418725)))

(declare-fun c!967836 () Bool)

(assert (=> d!1752555 (= c!967836 (is-Cons!62719 (t!376100 (Cons!62719 lt!2247908 Nil!62719))))))

(assert (=> d!1752555 (= (zipperDepth!197 (t!376100 (Cons!62719 lt!2247908 Nil!62719))) lt!2248263)))

(assert (=> b!5530340 (= e!3418725 lt!2248265)))

(assert (=> b!5530340 (= lt!2248265 (maxBigInt!0 (contextDepth!110 (h!69167 (t!376100 (Cons!62719 lt!2247908 Nil!62719)))) (zipperDepth!197 (t!376100 (t!376100 (Cons!62719 lt!2247908 Nil!62719))))))))

(declare-fun lt!2248262 () Unit!155488)

(assert (=> b!5530340 (= lt!2248262 (lemmaForallContextDepthBiggerThanTransitive!102 (t!376100 (t!376100 (Cons!62719 lt!2247908 Nil!62719))) lt!2248265 (zipperDepth!197 (t!376100 (t!376100 (Cons!62719 lt!2247908 Nil!62719)))) lambda!296829))))

(assert (=> b!5530340 (forall!14693 (t!376100 (t!376100 (Cons!62719 lt!2247908 Nil!62719))) lambda!296830)))

(declare-fun lt!2248264 () Unit!155488)

(assert (=> b!5530340 (= lt!2248264 lt!2248262)))

(declare-fun b!5530341 () Bool)

(assert (=> b!5530341 (= e!3418725 0)))

(assert (=> b!5530342 (= e!3418724 (forall!14693 (t!376100 (Cons!62719 lt!2247908 Nil!62719)) lambda!296831))))

(assert (= (and d!1752555 c!967836) b!5530340))

(assert (= (and d!1752555 (not c!967836)) b!5530341))

(assert (= (and d!1752555 res!2354702) b!5530342))

(declare-fun m!6532436 () Bool)

(assert (=> b!5530340 m!6532436))

(assert (=> b!5530340 m!6532436))

(declare-fun m!6532438 () Bool)

(assert (=> b!5530340 m!6532438))

(declare-fun m!6532440 () Bool)

(assert (=> b!5530340 m!6532440))

(assert (=> b!5530340 m!6532438))

(declare-fun m!6532442 () Bool)

(assert (=> b!5530340 m!6532442))

(assert (=> b!5530340 m!6532438))

(declare-fun m!6532444 () Bool)

(assert (=> b!5530340 m!6532444))

(declare-fun m!6532446 () Bool)

(assert (=> b!5530342 m!6532446))

(assert (=> b!5529278 d!1752555))

(declare-fun d!1752557 () Bool)

(declare-fun res!2354703 () Bool)

(declare-fun e!3418726 () Bool)

(assert (=> d!1752557 (=> res!2354703 e!3418726)))

(assert (=> d!1752557 (= res!2354703 (is-Nil!62719 (t!376100 (Cons!62719 lt!2247908 Nil!62719))))))

(assert (=> d!1752557 (= (forall!14693 (t!376100 (Cons!62719 lt!2247908 Nil!62719)) lambda!296702) e!3418726)))

(declare-fun b!5530343 () Bool)

(declare-fun e!3418727 () Bool)

(assert (=> b!5530343 (= e!3418726 e!3418727)))

(declare-fun res!2354704 () Bool)

(assert (=> b!5530343 (=> (not res!2354704) (not e!3418727))))

(assert (=> b!5530343 (= res!2354704 (dynLambda!24524 lambda!296702 (h!69167 (t!376100 (Cons!62719 lt!2247908 Nil!62719)))))))

(declare-fun b!5530344 () Bool)

(assert (=> b!5530344 (= e!3418727 (forall!14693 (t!376100 (t!376100 (Cons!62719 lt!2247908 Nil!62719))) lambda!296702))))

(assert (= (and d!1752557 (not res!2354703)) b!5530343))

(assert (= (and b!5530343 res!2354704) b!5530344))

(declare-fun b_lambda!209889 () Bool)

(assert (=> (not b_lambda!209889) (not b!5530343)))

(declare-fun m!6532448 () Bool)

(assert (=> b!5530343 m!6532448))

(declare-fun m!6532450 () Bool)

(assert (=> b!5530344 m!6532450))

(assert (=> b!5529278 d!1752557))

(declare-fun d!1752559 () Bool)

(assert (=> d!1752559 (= (maxBigInt!0 (contextDepth!110 (h!69167 (Cons!62719 lt!2247908 Nil!62719))) (zipperDepth!197 (t!376100 (Cons!62719 lt!2247908 Nil!62719)))) (ite (>= (contextDepth!110 (h!69167 (Cons!62719 lt!2247908 Nil!62719))) (zipperDepth!197 (t!376100 (Cons!62719 lt!2247908 Nil!62719)))) (contextDepth!110 (h!69167 (Cons!62719 lt!2247908 Nil!62719))) (zipperDepth!197 (t!376100 (Cons!62719 lt!2247908 Nil!62719)))))))

(assert (=> b!5529278 d!1752559))

(declare-fun bs!1278339 () Bool)

(declare-fun d!1752561 () Bool)

(assert (= bs!1278339 (and d!1752561 d!1752549)))

(declare-fun lambda!296832 () Int)

(assert (=> bs!1278339 (not (= lambda!296832 lambda!296827))))

(declare-fun bs!1278340 () Bool)

(assert (= bs!1278340 (and d!1752561 b!5529278)))

(assert (=> bs!1278340 (not (= lambda!296832 lambda!296702))))

(declare-fun bs!1278341 () Bool)

(assert (= bs!1278341 (and d!1752561 d!1752297)))

(assert (=> bs!1278341 (not (= lambda!296832 lambda!296773))))

(declare-fun bs!1278342 () Bool)

(assert (= bs!1278342 (and d!1752561 b!5530179)))

(assert (=> bs!1278342 (not (= lambda!296832 lambda!296812))))

(declare-fun bs!1278343 () Bool)

(assert (= bs!1278343 (and d!1752561 b!5530159)))

(assert (=> bs!1278343 (not (= lambda!296832 lambda!296806))))

(declare-fun bs!1278344 () Bool)

(assert (= bs!1278344 (and d!1752561 b!5530340)))

(assert (=> bs!1278344 (not (= lambda!296832 lambda!296830))))

(declare-fun bs!1278345 () Bool)

(assert (= bs!1278345 (and d!1752561 d!1752465)))

(assert (=> bs!1278345 (= (and (= lt!2248105 lt!2248109) (= lambda!296701 lambda!296705)) (= lambda!296832 lambda!296803))))

(declare-fun bs!1278346 () Bool)

(assert (= bs!1278346 (and d!1752561 b!5530342)))

(assert (=> bs!1278346 (not (= lambda!296832 lambda!296831))))

(declare-fun bs!1278347 () Bool)

(assert (= bs!1278347 (and d!1752561 b!5529285)))

(assert (=> bs!1278347 (not (= lambda!296832 lambda!296706))))

(declare-fun bs!1278348 () Bool)

(assert (= bs!1278348 (and d!1752561 d!1752315)))

(assert (=> bs!1278348 (not (= lambda!296832 lambda!296778))))

(declare-fun bs!1278349 () Bool)

(assert (= bs!1278349 (and d!1752561 b!5530181)))

(assert (=> bs!1278349 (not (= lambda!296832 lambda!296813))))

(declare-fun bs!1278350 () Bool)

(assert (= bs!1278350 (and d!1752561 b!5530157)))

(assert (=> bs!1278350 (not (= lambda!296832 lambda!296805))))

(declare-fun bs!1278351 () Bool)

(assert (= bs!1278351 (and d!1752561 b!5529273)))

(assert (=> bs!1278351 (not (= lambda!296832 lambda!296699))))

(declare-fun bs!1278352 () Bool)

(assert (= bs!1278352 (and d!1752561 d!1752409)))

(assert (=> bs!1278352 (not (= lambda!296832 lambda!296792))))

(declare-fun bs!1278353 () Bool)

(assert (= bs!1278353 (and d!1752561 d!1752357)))

(assert (=> bs!1278353 (not (= lambda!296832 lambda!296782))))

(declare-fun bs!1278354 () Bool)

(assert (= bs!1278354 (and d!1752561 b!5529280)))

(assert (=> bs!1278354 (not (= lambda!296832 lambda!296703))))

(declare-fun bs!1278355 () Bool)

(assert (= bs!1278355 (and d!1752561 d!1752503)))

(assert (=> bs!1278355 (not (= lambda!296832 lambda!296820))))

(declare-fun bs!1278356 () Bool)

(assert (= bs!1278356 (and d!1752561 d!1752443)))

(assert (=> bs!1278356 (not (= lambda!296832 lambda!296797))))

(declare-fun bs!1278357 () Bool)

(assert (= bs!1278357 (and d!1752561 d!1752399)))

(assert (=> bs!1278357 (not (= lambda!296832 lambda!296791))))

(declare-fun bs!1278358 () Bool)

(assert (= bs!1278358 (and d!1752561 b!5529287)))

(assert (=> bs!1278358 (not (= lambda!296832 lambda!296707))))

(declare-fun bs!1278359 () Bool)

(assert (= bs!1278359 (and d!1752561 b!5529275)))

(assert (=> bs!1278359 (not (= lambda!296832 lambda!296700))))

(declare-fun bs!1278360 () Bool)

(assert (= bs!1278360 (and d!1752561 d!1752489)))

(assert (=> bs!1278360 (= (and (= lt!2248105 lt!2248101) (= lambda!296701 lambda!296698)) (= lambda!296832 lambda!296814))))

(assert (=> d!1752561 true))

(assert (=> d!1752561 true))

(assert (=> d!1752561 (< (dynLambda!24525 order!27131 lambda!296701) (dynLambda!24526 order!27133 lambda!296832))))

(assert (=> d!1752561 (forall!14693 (t!376100 (Cons!62719 lt!2247908 Nil!62719)) lambda!296832)))

(declare-fun lt!2248266 () Unit!155488)

(assert (=> d!1752561 (= lt!2248266 (choose!42024 (t!376100 (Cons!62719 lt!2247908 Nil!62719)) lt!2248105 (zipperDepth!197 (t!376100 (Cons!62719 lt!2247908 Nil!62719))) lambda!296701))))

(assert (=> d!1752561 (>= lt!2248105 (zipperDepth!197 (t!376100 (Cons!62719 lt!2247908 Nil!62719))))))

(assert (=> d!1752561 (= (lemmaForallContextDepthBiggerThanTransitive!102 (t!376100 (Cons!62719 lt!2247908 Nil!62719)) lt!2248105 (zipperDepth!197 (t!376100 (Cons!62719 lt!2247908 Nil!62719))) lambda!296701) lt!2248266)))

(declare-fun bs!1278361 () Bool)

(assert (= bs!1278361 d!1752561))

(declare-fun m!6532452 () Bool)

(assert (=> bs!1278361 m!6532452))

(assert (=> bs!1278361 m!6531360))

(declare-fun m!6532454 () Bool)

(assert (=> bs!1278361 m!6532454))

(assert (=> b!5529278 d!1752561))

(declare-fun bs!1278362 () Bool)

(declare-fun b!5530345 () Bool)

(assert (= bs!1278362 (and b!5530345 b!5529167)))

(declare-fun lt!2248270 () Int)

(declare-fun lambda!296833 () Int)

(assert (=> bs!1278362 (= (= lt!2248270 lt!2248075) (= lambda!296833 lambda!296683))))

(declare-fun bs!1278363 () Bool)

(assert (= bs!1278363 (and b!5530345 d!1752031)))

(assert (=> bs!1278363 (not (= lambda!296833 lambda!296657))))

(declare-fun bs!1278364 () Bool)

(assert (= bs!1278364 (and b!5530345 b!5530330)))

(assert (=> bs!1278364 (= (= lt!2248270 lt!2248261) (= lambda!296833 lambda!296825))))

(declare-fun bs!1278365 () Bool)

(assert (= bs!1278365 (and b!5530345 b!5530200)))

(assert (=> bs!1278365 (= (= lt!2248270 lt!2248241) (= lambda!296833 lambda!296816))))

(declare-fun bs!1278366 () Bool)

(assert (= bs!1278366 (and b!5530345 d!1752349)))

(assert (=> bs!1278366 (not (= lambda!296833 lambda!296779))))

(declare-fun bs!1278367 () Bool)

(assert (= bs!1278367 (and b!5530345 b!5529162)))

(assert (=> bs!1278367 (= (= lt!2248270 lt!2248071) (= lambda!296833 lambda!296681))))

(declare-fun bs!1278368 () Bool)

(assert (= bs!1278368 (and b!5530345 d!1752277)))

(assert (=> bs!1278368 (not (= lambda!296833 lambda!296770))))

(declare-fun bs!1278369 () Bool)

(assert (= bs!1278369 (and b!5530345 d!1752115)))

(assert (=> bs!1278369 (not (= lambda!296833 lambda!296691))))

(declare-fun bs!1278370 () Bool)

(assert (= bs!1278370 (and b!5530345 d!1752085)))

(assert (=> bs!1278370 (not (= lambda!296833 lambda!296690))))

(declare-fun bs!1278371 () Bool)

(assert (= bs!1278371 (and b!5530345 b!5529290)))

(assert (=> bs!1278371 (= (= lt!2248270 lt!2248112) (= lambda!296833 lambda!296709))))

(declare-fun bs!1278372 () Bool)

(assert (= bs!1278372 (and b!5530345 b!5530198)))

(assert (=> bs!1278372 (= (= lt!2248270 lt!2248242) (= lambda!296833 lambda!296815))))

(declare-fun bs!1278373 () Bool)

(assert (= bs!1278373 (and b!5530345 d!1752029)))

(assert (=> bs!1278373 (not (= lambda!296833 lambda!296654))))

(declare-fun bs!1278374 () Bool)

(assert (= bs!1278374 (and b!5530345 d!1752257)))

(assert (=> bs!1278374 (not (= lambda!296833 lambda!296768))))

(declare-fun bs!1278375 () Bool)

(assert (= bs!1278375 (and b!5530345 b!5530176)))

(assert (=> bs!1278375 (= (= lt!2248270 lt!2248232) (= lambda!296833 lambda!296809))))

(declare-fun bs!1278376 () Bool)

(assert (= bs!1278376 (and b!5530345 b!5529288)))

(assert (=> bs!1278376 (= (= lt!2248270 lt!2248113) (= lambda!296833 lambda!296708))))

(declare-fun bs!1278377 () Bool)

(assert (= bs!1278377 (and b!5530345 d!1752445)))

(assert (=> bs!1278377 (not (= lambda!296833 lambda!296798))))

(declare-fun bs!1278378 () Bool)

(assert (= bs!1278378 (and b!5530345 d!1752539)))

(assert (=> bs!1278378 (= (= lt!2248270 lt!2248113) (= lambda!296833 lambda!296824))))

(declare-fun bs!1278379 () Bool)

(assert (= bs!1278379 (and b!5530345 b!5530257)))

(assert (=> bs!1278379 (= (= lt!2248270 lt!2248252) (= lambda!296833 lambda!296821))))

(declare-fun bs!1278380 () Bool)

(assert (= bs!1278380 (and b!5530345 b!5530332)))

(assert (=> bs!1278380 (= (= lt!2248270 lt!2248260) (= lambda!296833 lambda!296826))))

(declare-fun bs!1278381 () Bool)

(assert (= bs!1278381 (and b!5530345 b!5530259)))

(assert (=> bs!1278381 (= (= lt!2248270 lt!2248251) (= lambda!296833 lambda!296822))))

(declare-fun bs!1278382 () Bool)

(assert (= bs!1278382 (and b!5530345 b!5530160)))

(assert (=> bs!1278382 (= (= lt!2248270 lt!2248228) (= lambda!296833 lambda!296807))))

(declare-fun bs!1278383 () Bool)

(assert (= bs!1278383 (and b!5530345 d!1752497)))

(assert (=> bs!1278383 (= (= lt!2248270 lt!2248071) (= lambda!296833 lambda!296819))))

(declare-fun bs!1278384 () Bool)

(assert (= bs!1278384 (and b!5530345 b!5529169)))

(assert (=> bs!1278384 (= (= lt!2248270 lt!2248074) (= lambda!296833 lambda!296684))))

(declare-fun bs!1278385 () Bool)

(assert (= bs!1278385 (and b!5530345 b!5530178)))

(assert (=> bs!1278385 (= (= lt!2248270 lt!2248231) (= lambda!296833 lambda!296810))))

(declare-fun bs!1278386 () Bool)

(assert (= bs!1278386 (and b!5530345 b!5530162)))

(assert (=> bs!1278386 (= (= lt!2248270 lt!2248227) (= lambda!296833 lambda!296808))))

(declare-fun bs!1278387 () Bool)

(assert (= bs!1278387 (and b!5530345 d!1752517)))

(assert (=> bs!1278387 (= (= lt!2248270 lt!2248075) (= lambda!296833 lambda!296823))))

(declare-fun bs!1278388 () Bool)

(assert (= bs!1278388 (and b!5530345 b!5529164)))

(assert (=> bs!1278388 (= (= lt!2248270 lt!2248070) (= lambda!296833 lambda!296682))))

(declare-fun bs!1278389 () Bool)

(assert (= bs!1278389 (and b!5530345 d!1752299)))

(assert (=> bs!1278389 (not (= lambda!296833 lambda!296774))))

(declare-fun bs!1278390 () Bool)

(assert (= bs!1278390 (and b!5530345 d!1752083)))

(assert (=> bs!1278390 (not (= lambda!296833 lambda!296687))))

(assert (=> b!5530345 true))

(declare-fun bs!1278391 () Bool)

(declare-fun b!5530347 () Bool)

(assert (= bs!1278391 (and b!5530347 b!5529167)))

(declare-fun lt!2248269 () Int)

(declare-fun lambda!296834 () Int)

(assert (=> bs!1278391 (= (= lt!2248269 lt!2248075) (= lambda!296834 lambda!296683))))

(declare-fun bs!1278392 () Bool)

(assert (= bs!1278392 (and b!5530347 d!1752031)))

(assert (=> bs!1278392 (not (= lambda!296834 lambda!296657))))

(declare-fun bs!1278393 () Bool)

(assert (= bs!1278393 (and b!5530347 b!5530330)))

(assert (=> bs!1278393 (= (= lt!2248269 lt!2248261) (= lambda!296834 lambda!296825))))

(declare-fun bs!1278394 () Bool)

(assert (= bs!1278394 (and b!5530347 b!5530200)))

(assert (=> bs!1278394 (= (= lt!2248269 lt!2248241) (= lambda!296834 lambda!296816))))

(declare-fun bs!1278395 () Bool)

(assert (= bs!1278395 (and b!5530347 d!1752349)))

(assert (=> bs!1278395 (not (= lambda!296834 lambda!296779))))

(declare-fun bs!1278396 () Bool)

(assert (= bs!1278396 (and b!5530347 b!5529162)))

(assert (=> bs!1278396 (= (= lt!2248269 lt!2248071) (= lambda!296834 lambda!296681))))

(declare-fun bs!1278397 () Bool)

(assert (= bs!1278397 (and b!5530347 d!1752115)))

(assert (=> bs!1278397 (not (= lambda!296834 lambda!296691))))

(declare-fun bs!1278398 () Bool)

(assert (= bs!1278398 (and b!5530347 d!1752085)))

(assert (=> bs!1278398 (not (= lambda!296834 lambda!296690))))

(declare-fun bs!1278399 () Bool)

(assert (= bs!1278399 (and b!5530347 b!5529290)))

(assert (=> bs!1278399 (= (= lt!2248269 lt!2248112) (= lambda!296834 lambda!296709))))

(declare-fun bs!1278400 () Bool)

(assert (= bs!1278400 (and b!5530347 b!5530198)))

(assert (=> bs!1278400 (= (= lt!2248269 lt!2248242) (= lambda!296834 lambda!296815))))

(declare-fun bs!1278401 () Bool)

(assert (= bs!1278401 (and b!5530347 d!1752029)))

(assert (=> bs!1278401 (not (= lambda!296834 lambda!296654))))

(declare-fun bs!1278402 () Bool)

(assert (= bs!1278402 (and b!5530347 d!1752257)))

(assert (=> bs!1278402 (not (= lambda!296834 lambda!296768))))

(declare-fun bs!1278403 () Bool)

(assert (= bs!1278403 (and b!5530347 b!5530176)))

(assert (=> bs!1278403 (= (= lt!2248269 lt!2248232) (= lambda!296834 lambda!296809))))

(declare-fun bs!1278404 () Bool)

(assert (= bs!1278404 (and b!5530347 b!5529288)))

(assert (=> bs!1278404 (= (= lt!2248269 lt!2248113) (= lambda!296834 lambda!296708))))

(declare-fun bs!1278405 () Bool)

(assert (= bs!1278405 (and b!5530347 d!1752445)))

(assert (=> bs!1278405 (not (= lambda!296834 lambda!296798))))

(declare-fun bs!1278406 () Bool)

(assert (= bs!1278406 (and b!5530347 d!1752539)))

(assert (=> bs!1278406 (= (= lt!2248269 lt!2248113) (= lambda!296834 lambda!296824))))

(declare-fun bs!1278407 () Bool)

(assert (= bs!1278407 (and b!5530347 b!5530257)))

(assert (=> bs!1278407 (= (= lt!2248269 lt!2248252) (= lambda!296834 lambda!296821))))

(declare-fun bs!1278408 () Bool)

(assert (= bs!1278408 (and b!5530347 d!1752277)))

(assert (=> bs!1278408 (not (= lambda!296834 lambda!296770))))

(declare-fun bs!1278409 () Bool)

(assert (= bs!1278409 (and b!5530347 b!5530345)))

(assert (=> bs!1278409 (= (= lt!2248269 lt!2248270) (= lambda!296834 lambda!296833))))

(declare-fun bs!1278410 () Bool)

(assert (= bs!1278410 (and b!5530347 b!5530332)))

(assert (=> bs!1278410 (= (= lt!2248269 lt!2248260) (= lambda!296834 lambda!296826))))

(declare-fun bs!1278411 () Bool)

(assert (= bs!1278411 (and b!5530347 b!5530259)))

(assert (=> bs!1278411 (= (= lt!2248269 lt!2248251) (= lambda!296834 lambda!296822))))

(declare-fun bs!1278412 () Bool)

(assert (= bs!1278412 (and b!5530347 b!5530160)))

(assert (=> bs!1278412 (= (= lt!2248269 lt!2248228) (= lambda!296834 lambda!296807))))

(declare-fun bs!1278413 () Bool)

(assert (= bs!1278413 (and b!5530347 d!1752497)))

(assert (=> bs!1278413 (= (= lt!2248269 lt!2248071) (= lambda!296834 lambda!296819))))

(declare-fun bs!1278414 () Bool)

(assert (= bs!1278414 (and b!5530347 b!5529169)))

(assert (=> bs!1278414 (= (= lt!2248269 lt!2248074) (= lambda!296834 lambda!296684))))

(declare-fun bs!1278415 () Bool)

(assert (= bs!1278415 (and b!5530347 b!5530178)))

(assert (=> bs!1278415 (= (= lt!2248269 lt!2248231) (= lambda!296834 lambda!296810))))

(declare-fun bs!1278416 () Bool)

(assert (= bs!1278416 (and b!5530347 b!5530162)))

(assert (=> bs!1278416 (= (= lt!2248269 lt!2248227) (= lambda!296834 lambda!296808))))

(declare-fun bs!1278417 () Bool)

(assert (= bs!1278417 (and b!5530347 d!1752517)))

(assert (=> bs!1278417 (= (= lt!2248269 lt!2248075) (= lambda!296834 lambda!296823))))

(declare-fun bs!1278418 () Bool)

(assert (= bs!1278418 (and b!5530347 b!5529164)))

(assert (=> bs!1278418 (= (= lt!2248269 lt!2248070) (= lambda!296834 lambda!296682))))

(declare-fun bs!1278419 () Bool)

(assert (= bs!1278419 (and b!5530347 d!1752299)))

(assert (=> bs!1278419 (not (= lambda!296834 lambda!296774))))

(declare-fun bs!1278420 () Bool)

(assert (= bs!1278420 (and b!5530347 d!1752083)))

(assert (=> bs!1278420 (not (= lambda!296834 lambda!296687))))

(assert (=> b!5530347 true))

(declare-fun d!1752563 () Bool)

(declare-fun e!3418729 () Bool)

(assert (=> d!1752563 e!3418729))

(declare-fun res!2354705 () Bool)

(assert (=> d!1752563 (=> (not res!2354705) (not e!3418729))))

(assert (=> d!1752563 (= res!2354705 (>= lt!2248269 0))))

(declare-fun e!3418728 () Int)

(assert (=> d!1752563 (= lt!2248269 e!3418728)))

(declare-fun c!967837 () Bool)

(assert (=> d!1752563 (= c!967837 (is-Cons!62717 (exprs!5398 (h!69167 (Cons!62719 lt!2247908 Nil!62719)))))))

(assert (=> d!1752563 (= (contextDepth!110 (h!69167 (Cons!62719 lt!2247908 Nil!62719))) lt!2248269)))

(assert (=> b!5530345 (= e!3418728 lt!2248270)))

(assert (=> b!5530345 (= lt!2248270 (maxBigInt!0 (regexDepth!214 (h!69165 (exprs!5398 (h!69167 (Cons!62719 lt!2247908 Nil!62719))))) (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 (h!69167 (Cons!62719 lt!2247908 Nil!62719))))))))))

(declare-fun lt!2248267 () Unit!155488)

(assert (=> b!5530345 (= lt!2248267 (lemmaForallRegexDepthBiggerThanTransitive!19 (t!376098 (exprs!5398 (h!69167 (Cons!62719 lt!2247908 Nil!62719)))) lt!2248270 (contextDepth!110 (Context!9797 (t!376098 (exprs!5398 (h!69167 (Cons!62719 lt!2247908 Nil!62719))))))))))

(assert (=> b!5530345 (forall!14692 (t!376098 (exprs!5398 (h!69167 (Cons!62719 lt!2247908 Nil!62719)))) lambda!296833)))

(declare-fun lt!2248268 () Unit!155488)

(assert (=> b!5530345 (= lt!2248268 lt!2248267)))

(declare-fun b!5530346 () Bool)

(assert (=> b!5530346 (= e!3418728 0)))

(assert (=> b!5530347 (= e!3418729 (forall!14692 (exprs!5398 (h!69167 (Cons!62719 lt!2247908 Nil!62719))) lambda!296834))))

(assert (= (and d!1752563 c!967837) b!5530345))

(assert (= (and d!1752563 (not c!967837)) b!5530346))

(assert (= (and d!1752563 res!2354705) b!5530347))

(declare-fun m!6532456 () Bool)

(assert (=> b!5530345 m!6532456))

(declare-fun m!6532458 () Bool)

(assert (=> b!5530345 m!6532458))

(declare-fun m!6532460 () Bool)

(assert (=> b!5530345 m!6532460))

(assert (=> b!5530345 m!6532458))

(declare-fun m!6532462 () Bool)

(assert (=> b!5530345 m!6532462))

(assert (=> b!5530345 m!6532458))

(declare-fun m!6532464 () Bool)

(assert (=> b!5530345 m!6532464))

(assert (=> b!5530345 m!6532456))

(declare-fun m!6532466 () Bool)

(assert (=> b!5530347 m!6532466))

(assert (=> b!5529278 d!1752563))

(declare-fun c!967841 () Bool)

(declare-fun call!410624 () List!62841)

(declare-fun c!967838 () Bool)

(declare-fun bm!410617 () Bool)

(assert (=> bm!410617 (= call!410624 ($colon$colon!1593 (exprs!5398 (ite (or c!967467 c!967466) lt!2247927 (Context!9797 call!410400))) (ite (or c!967838 c!967841) (regTwo!31540 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292))))) (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292)))))))))

(declare-fun bm!410618 () Bool)

(declare-fun call!410623 () (Set Context!9796))

(declare-fun call!410627 () (Set Context!9796))

(assert (=> bm!410618 (= call!410623 call!410627)))

(declare-fun b!5530348 () Bool)

(declare-fun e!3418731 () (Set Context!9796))

(assert (=> b!5530348 (= e!3418731 call!410623)))

(declare-fun b!5530349 () Bool)

(declare-fun e!3418734 () (Set Context!9796))

(declare-fun e!3418730 () (Set Context!9796))

(assert (=> b!5530349 (= e!3418734 e!3418730)))

(declare-fun c!967839 () Bool)

(assert (=> b!5530349 (= c!967839 (is-Union!15514 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292))))))))

(declare-fun b!5530350 () Bool)

(assert (=> b!5530350 (= e!3418734 (set.insert (ite (or c!967467 c!967466) lt!2247927 (Context!9797 call!410400)) (as set.empty (Set Context!9796))))))

(declare-fun b!5530352 () Bool)

(declare-fun e!3418735 () Bool)

(assert (=> b!5530352 (= e!3418735 (nullable!5548 (regOne!31540 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292)))))))))

(declare-fun b!5530353 () Bool)

(declare-fun call!410622 () (Set Context!9796))

(declare-fun call!410626 () (Set Context!9796))

(assert (=> b!5530353 (= e!3418730 (set.union call!410622 call!410626))))

(declare-fun bm!410619 () Bool)

(declare-fun call!410625 () List!62841)

(assert (=> bm!410619 (= call!410625 call!410624)))

(declare-fun c!967840 () Bool)

(declare-fun b!5530354 () Bool)

(assert (=> b!5530354 (= c!967840 (is-Star!15514 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292))))))))

(declare-fun e!3418733 () (Set Context!9796))

(assert (=> b!5530354 (= e!3418731 e!3418733)))

(declare-fun bm!410620 () Bool)

(assert (=> bm!410620 (= call!410622 (derivationStepZipperDown!856 (ite c!967839 (regOne!31541 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292))))) (regOne!31540 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292)))))) (ite c!967839 (ite (or c!967467 c!967466) lt!2247927 (Context!9797 call!410400)) (Context!9797 call!410624)) (h!69166 s!2326)))))

(declare-fun b!5530355 () Bool)

(assert (=> b!5530355 (= c!967838 e!3418735)))

(declare-fun res!2354706 () Bool)

(assert (=> b!5530355 (=> (not res!2354706) (not e!3418735))))

(assert (=> b!5530355 (= res!2354706 (is-Concat!24359 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292))))))))

(declare-fun e!3418732 () (Set Context!9796))

(assert (=> b!5530355 (= e!3418730 e!3418732)))

(declare-fun b!5530351 () Bool)

(assert (=> b!5530351 (= e!3418732 e!3418731)))

(assert (=> b!5530351 (= c!967841 (is-Concat!24359 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292))))))))

(declare-fun c!967842 () Bool)

(declare-fun d!1752565 () Bool)

(assert (=> d!1752565 (= c!967842 (and (is-ElementMatch!15514 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292))))) (= (c!967395 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292))))) (h!69166 s!2326))))))

(assert (=> d!1752565 (= (derivationStepZipperDown!856 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292)))) (ite (or c!967467 c!967466) lt!2247927 (Context!9797 call!410400)) (h!69166 s!2326)) e!3418734)))

(declare-fun bm!410621 () Bool)

(assert (=> bm!410621 (= call!410626 (derivationStepZipperDown!856 (ite c!967839 (regTwo!31541 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292))))) (ite c!967838 (regTwo!31540 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292))))) (ite c!967841 (regOne!31540 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292))))) (reg!15843 (ite c!967467 (regTwo!31541 r!7292) (ite c!967466 (regTwo!31540 r!7292) (ite c!967469 (regOne!31540 r!7292) (reg!15843 r!7292)))))))) (ite (or c!967839 c!967838) (ite (or c!967467 c!967466) lt!2247927 (Context!9797 call!410400)) (Context!9797 call!410625)) (h!69166 s!2326)))))

(declare-fun b!5530356 () Bool)

(assert (=> b!5530356 (= e!3418732 (set.union call!410622 call!410627))))

(declare-fun b!5530357 () Bool)

(assert (=> b!5530357 (= e!3418733 call!410623)))

(declare-fun b!5530358 () Bool)

(assert (=> b!5530358 (= e!3418733 (as set.empty (Set Context!9796)))))

(declare-fun bm!410622 () Bool)

(assert (=> bm!410622 (= call!410627 call!410626)))

(assert (= (and d!1752565 c!967842) b!5530350))

(assert (= (and d!1752565 (not c!967842)) b!5530349))

(assert (= (and b!5530349 c!967839) b!5530353))

(assert (= (and b!5530349 (not c!967839)) b!5530355))

(assert (= (and b!5530355 res!2354706) b!5530352))

(assert (= (and b!5530355 c!967838) b!5530356))

(assert (= (and b!5530355 (not c!967838)) b!5530351))

(assert (= (and b!5530351 c!967841) b!5530348))

(assert (= (and b!5530351 (not c!967841)) b!5530354))

(assert (= (and b!5530354 c!967840) b!5530357))

(assert (= (and b!5530354 (not c!967840)) b!5530358))

(assert (= (or b!5530348 b!5530357) bm!410619))

(assert (= (or b!5530348 b!5530357) bm!410618))

(assert (= (or b!5530356 bm!410619) bm!410617))

(assert (= (or b!5530356 bm!410618) bm!410622))

(assert (= (or b!5530353 bm!410622) bm!410621))

(assert (= (or b!5530353 b!5530356) bm!410620))

(declare-fun m!6532468 () Bool)

(assert (=> bm!410617 m!6532468))

(declare-fun m!6532470 () Bool)

(assert (=> bm!410620 m!6532470))

(declare-fun m!6532472 () Bool)

(assert (=> b!5530352 m!6532472))

(declare-fun m!6532474 () Bool)

(assert (=> bm!410621 m!6532474))

(declare-fun m!6532476 () Bool)

(assert (=> b!5530350 m!6532476))

(assert (=> bm!410396 d!1752565))

(declare-fun b!5530359 () Bool)

(declare-fun e!3418736 () Bool)

(assert (=> b!5530359 (= e!3418736 tp_is_empty!40281)))

(declare-fun b!5530360 () Bool)

(declare-fun tp!1521192 () Bool)

(declare-fun tp!1521189 () Bool)

(assert (=> b!5530360 (= e!3418736 (and tp!1521192 tp!1521189))))

(declare-fun b!5530362 () Bool)

(declare-fun tp!1521191 () Bool)

(declare-fun tp!1521190 () Bool)

(assert (=> b!5530362 (= e!3418736 (and tp!1521191 tp!1521190))))

(assert (=> b!5529332 (= tp!1521104 e!3418736)))

(declare-fun b!5530361 () Bool)

(declare-fun tp!1521188 () Bool)

(assert (=> b!5530361 (= e!3418736 tp!1521188)))

(assert (= (and b!5529332 (is-ElementMatch!15514 (regOne!31540 (regTwo!31541 r!7292)))) b!5530359))

(assert (= (and b!5529332 (is-Concat!24359 (regOne!31540 (regTwo!31541 r!7292)))) b!5530360))

(assert (= (and b!5529332 (is-Star!15514 (regOne!31540 (regTwo!31541 r!7292)))) b!5530361))

(assert (= (and b!5529332 (is-Union!15514 (regOne!31540 (regTwo!31541 r!7292)))) b!5530362))

(declare-fun b!5530363 () Bool)

(declare-fun e!3418737 () Bool)

(assert (=> b!5530363 (= e!3418737 tp_is_empty!40281)))

(declare-fun b!5530364 () Bool)

(declare-fun tp!1521197 () Bool)

(declare-fun tp!1521194 () Bool)

(assert (=> b!5530364 (= e!3418737 (and tp!1521197 tp!1521194))))

(declare-fun b!5530366 () Bool)

(declare-fun tp!1521196 () Bool)

(declare-fun tp!1521195 () Bool)

(assert (=> b!5530366 (= e!3418737 (and tp!1521196 tp!1521195))))

(assert (=> b!5529332 (= tp!1521101 e!3418737)))

(declare-fun b!5530365 () Bool)

(declare-fun tp!1521193 () Bool)

(assert (=> b!5530365 (= e!3418737 tp!1521193)))

(assert (= (and b!5529332 (is-ElementMatch!15514 (regTwo!31540 (regTwo!31541 r!7292)))) b!5530363))

(assert (= (and b!5529332 (is-Concat!24359 (regTwo!31540 (regTwo!31541 r!7292)))) b!5530364))

(assert (= (and b!5529332 (is-Star!15514 (regTwo!31540 (regTwo!31541 r!7292)))) b!5530365))

(assert (= (and b!5529332 (is-Union!15514 (regTwo!31540 (regTwo!31541 r!7292)))) b!5530366))

(declare-fun b!5530367 () Bool)

(declare-fun e!3418738 () Bool)

(assert (=> b!5530367 (= e!3418738 tp_is_empty!40281)))

(declare-fun b!5530368 () Bool)

(declare-fun tp!1521202 () Bool)

(declare-fun tp!1521199 () Bool)

(assert (=> b!5530368 (= e!3418738 (and tp!1521202 tp!1521199))))

(declare-fun b!5530370 () Bool)

(declare-fun tp!1521201 () Bool)

(declare-fun tp!1521200 () Bool)

(assert (=> b!5530370 (= e!3418738 (and tp!1521201 tp!1521200))))

(assert (=> b!5529325 (= tp!1521091 e!3418738)))

(declare-fun b!5530369 () Bool)

(declare-fun tp!1521198 () Bool)

(assert (=> b!5530369 (= e!3418738 tp!1521198)))

(assert (= (and b!5529325 (is-ElementMatch!15514 (regOne!31541 (regTwo!31540 r!7292)))) b!5530367))

(assert (= (and b!5529325 (is-Concat!24359 (regOne!31541 (regTwo!31540 r!7292)))) b!5530368))

(assert (= (and b!5529325 (is-Star!15514 (regOne!31541 (regTwo!31540 r!7292)))) b!5530369))

(assert (= (and b!5529325 (is-Union!15514 (regOne!31541 (regTwo!31540 r!7292)))) b!5530370))

(declare-fun b!5530371 () Bool)

(declare-fun e!3418739 () Bool)

(assert (=> b!5530371 (= e!3418739 tp_is_empty!40281)))

(declare-fun b!5530372 () Bool)

(declare-fun tp!1521207 () Bool)

(declare-fun tp!1521204 () Bool)

(assert (=> b!5530372 (= e!3418739 (and tp!1521207 tp!1521204))))

(declare-fun b!5530374 () Bool)

(declare-fun tp!1521206 () Bool)

(declare-fun tp!1521205 () Bool)

(assert (=> b!5530374 (= e!3418739 (and tp!1521206 tp!1521205))))

(assert (=> b!5529325 (= tp!1521090 e!3418739)))

(declare-fun b!5530373 () Bool)

(declare-fun tp!1521203 () Bool)

(assert (=> b!5530373 (= e!3418739 tp!1521203)))

(assert (= (and b!5529325 (is-ElementMatch!15514 (regTwo!31541 (regTwo!31540 r!7292)))) b!5530371))

(assert (= (and b!5529325 (is-Concat!24359 (regTwo!31541 (regTwo!31540 r!7292)))) b!5530372))

(assert (= (and b!5529325 (is-Star!15514 (regTwo!31541 (regTwo!31540 r!7292)))) b!5530373))

(assert (= (and b!5529325 (is-Union!15514 (regTwo!31541 (regTwo!31540 r!7292)))) b!5530374))

(declare-fun b!5530375 () Bool)

(declare-fun e!3418740 () Bool)

(assert (=> b!5530375 (= e!3418740 tp_is_empty!40281)))

(declare-fun b!5530376 () Bool)

(declare-fun tp!1521212 () Bool)

(declare-fun tp!1521209 () Bool)

(assert (=> b!5530376 (= e!3418740 (and tp!1521212 tp!1521209))))

(declare-fun b!5530378 () Bool)

(declare-fun tp!1521211 () Bool)

(declare-fun tp!1521210 () Bool)

(assert (=> b!5530378 (= e!3418740 (and tp!1521211 tp!1521210))))

(assert (=> b!5529304 (= tp!1521069 e!3418740)))

(declare-fun b!5530377 () Bool)

(declare-fun tp!1521208 () Bool)

(assert (=> b!5530377 (= e!3418740 tp!1521208)))

(assert (= (and b!5529304 (is-ElementMatch!15514 (regOne!31541 (reg!15843 r!7292)))) b!5530375))

(assert (= (and b!5529304 (is-Concat!24359 (regOne!31541 (reg!15843 r!7292)))) b!5530376))

(assert (= (and b!5529304 (is-Star!15514 (regOne!31541 (reg!15843 r!7292)))) b!5530377))

(assert (= (and b!5529304 (is-Union!15514 (regOne!31541 (reg!15843 r!7292)))) b!5530378))

(declare-fun b!5530379 () Bool)

(declare-fun e!3418741 () Bool)

(assert (=> b!5530379 (= e!3418741 tp_is_empty!40281)))

(declare-fun b!5530380 () Bool)

(declare-fun tp!1521217 () Bool)

(declare-fun tp!1521214 () Bool)

(assert (=> b!5530380 (= e!3418741 (and tp!1521217 tp!1521214))))

(declare-fun b!5530382 () Bool)

(declare-fun tp!1521216 () Bool)

(declare-fun tp!1521215 () Bool)

(assert (=> b!5530382 (= e!3418741 (and tp!1521216 tp!1521215))))

(assert (=> b!5529304 (= tp!1521068 e!3418741)))

(declare-fun b!5530381 () Bool)

(declare-fun tp!1521213 () Bool)

(assert (=> b!5530381 (= e!3418741 tp!1521213)))

(assert (= (and b!5529304 (is-ElementMatch!15514 (regTwo!31541 (reg!15843 r!7292)))) b!5530379))

(assert (= (and b!5529304 (is-Concat!24359 (regTwo!31541 (reg!15843 r!7292)))) b!5530380))

(assert (= (and b!5529304 (is-Star!15514 (regTwo!31541 (reg!15843 r!7292)))) b!5530381))

(assert (= (and b!5529304 (is-Union!15514 (regTwo!31541 (reg!15843 r!7292)))) b!5530382))

(declare-fun b!5530383 () Bool)

(declare-fun e!3418742 () Bool)

(assert (=> b!5530383 (= e!3418742 tp_is_empty!40281)))

(declare-fun b!5530384 () Bool)

(declare-fun tp!1521222 () Bool)

(declare-fun tp!1521219 () Bool)

(assert (=> b!5530384 (= e!3418742 (and tp!1521222 tp!1521219))))

(declare-fun b!5530386 () Bool)

(declare-fun tp!1521221 () Bool)

(declare-fun tp!1521220 () Bool)

(assert (=> b!5530386 (= e!3418742 (and tp!1521221 tp!1521220))))

(assert (=> b!5529324 (= tp!1521088 e!3418742)))

(declare-fun b!5530385 () Bool)

(declare-fun tp!1521218 () Bool)

(assert (=> b!5530385 (= e!3418742 tp!1521218)))

(assert (= (and b!5529324 (is-ElementMatch!15514 (reg!15843 (regTwo!31540 r!7292)))) b!5530383))

(assert (= (and b!5529324 (is-Concat!24359 (reg!15843 (regTwo!31540 r!7292)))) b!5530384))

(assert (= (and b!5529324 (is-Star!15514 (reg!15843 (regTwo!31540 r!7292)))) b!5530385))

(assert (= (and b!5529324 (is-Union!15514 (reg!15843 (regTwo!31540 r!7292)))) b!5530386))

(declare-fun b!5530387 () Bool)

(declare-fun e!3418743 () Bool)

(assert (=> b!5530387 (= e!3418743 tp_is_empty!40281)))

(declare-fun b!5530388 () Bool)

(declare-fun tp!1521227 () Bool)

(declare-fun tp!1521224 () Bool)

(assert (=> b!5530388 (= e!3418743 (and tp!1521227 tp!1521224))))

(declare-fun b!5530390 () Bool)

(declare-fun tp!1521226 () Bool)

(declare-fun tp!1521225 () Bool)

(assert (=> b!5530390 (= e!3418743 (and tp!1521226 tp!1521225))))

(assert (=> b!5529303 (= tp!1521066 e!3418743)))

(declare-fun b!5530389 () Bool)

(declare-fun tp!1521223 () Bool)

(assert (=> b!5530389 (= e!3418743 tp!1521223)))

(assert (= (and b!5529303 (is-ElementMatch!15514 (reg!15843 (reg!15843 r!7292)))) b!5530387))

(assert (= (and b!5529303 (is-Concat!24359 (reg!15843 (reg!15843 r!7292)))) b!5530388))

(assert (= (and b!5529303 (is-Star!15514 (reg!15843 (reg!15843 r!7292)))) b!5530389))

(assert (= (and b!5529303 (is-Union!15514 (reg!15843 (reg!15843 r!7292)))) b!5530390))

(declare-fun b!5530391 () Bool)

(declare-fun e!3418744 () Bool)

(assert (=> b!5530391 (= e!3418744 tp_is_empty!40281)))

(declare-fun b!5530392 () Bool)

(declare-fun tp!1521232 () Bool)

(declare-fun tp!1521229 () Bool)

(assert (=> b!5530392 (= e!3418744 (and tp!1521232 tp!1521229))))

(declare-fun b!5530394 () Bool)

(declare-fun tp!1521231 () Bool)

(declare-fun tp!1521230 () Bool)

(assert (=> b!5530394 (= e!3418744 (and tp!1521231 tp!1521230))))

(assert (=> b!5529323 (= tp!1521092 e!3418744)))

(declare-fun b!5530393 () Bool)

(declare-fun tp!1521228 () Bool)

(assert (=> b!5530393 (= e!3418744 tp!1521228)))

(assert (= (and b!5529323 (is-ElementMatch!15514 (regOne!31540 (regTwo!31540 r!7292)))) b!5530391))

(assert (= (and b!5529323 (is-Concat!24359 (regOne!31540 (regTwo!31540 r!7292)))) b!5530392))

(assert (= (and b!5529323 (is-Star!15514 (regOne!31540 (regTwo!31540 r!7292)))) b!5530393))

(assert (= (and b!5529323 (is-Union!15514 (regOne!31540 (regTwo!31540 r!7292)))) b!5530394))

(declare-fun b!5530395 () Bool)

(declare-fun e!3418745 () Bool)

(assert (=> b!5530395 (= e!3418745 tp_is_empty!40281)))

(declare-fun b!5530396 () Bool)

(declare-fun tp!1521237 () Bool)

(declare-fun tp!1521234 () Bool)

(assert (=> b!5530396 (= e!3418745 (and tp!1521237 tp!1521234))))

(declare-fun b!5530398 () Bool)

(declare-fun tp!1521236 () Bool)

(declare-fun tp!1521235 () Bool)

(assert (=> b!5530398 (= e!3418745 (and tp!1521236 tp!1521235))))

(assert (=> b!5529323 (= tp!1521089 e!3418745)))

(declare-fun b!5530397 () Bool)

(declare-fun tp!1521233 () Bool)

(assert (=> b!5530397 (= e!3418745 tp!1521233)))

(assert (= (and b!5529323 (is-ElementMatch!15514 (regTwo!31540 (regTwo!31540 r!7292)))) b!5530395))

(assert (= (and b!5529323 (is-Concat!24359 (regTwo!31540 (regTwo!31540 r!7292)))) b!5530396))

(assert (= (and b!5529323 (is-Star!15514 (regTwo!31540 (regTwo!31540 r!7292)))) b!5530397))

(assert (= (and b!5529323 (is-Union!15514 (regTwo!31540 (regTwo!31540 r!7292)))) b!5530398))

(declare-fun b!5530399 () Bool)

(declare-fun e!3418746 () Bool)

(assert (=> b!5530399 (= e!3418746 tp_is_empty!40281)))

(declare-fun b!5530400 () Bool)

(declare-fun tp!1521242 () Bool)

(declare-fun tp!1521239 () Bool)

(assert (=> b!5530400 (= e!3418746 (and tp!1521242 tp!1521239))))

(declare-fun b!5530402 () Bool)

(declare-fun tp!1521241 () Bool)

(declare-fun tp!1521240 () Bool)

(assert (=> b!5530402 (= e!3418746 (and tp!1521241 tp!1521240))))

(assert (=> b!5529302 (= tp!1521070 e!3418746)))

(declare-fun b!5530401 () Bool)

(declare-fun tp!1521238 () Bool)

(assert (=> b!5530401 (= e!3418746 tp!1521238)))

(assert (= (and b!5529302 (is-ElementMatch!15514 (regOne!31540 (reg!15843 r!7292)))) b!5530399))

(assert (= (and b!5529302 (is-Concat!24359 (regOne!31540 (reg!15843 r!7292)))) b!5530400))

(assert (= (and b!5529302 (is-Star!15514 (regOne!31540 (reg!15843 r!7292)))) b!5530401))

(assert (= (and b!5529302 (is-Union!15514 (regOne!31540 (reg!15843 r!7292)))) b!5530402))

(declare-fun b!5530403 () Bool)

(declare-fun e!3418747 () Bool)

(assert (=> b!5530403 (= e!3418747 tp_is_empty!40281)))

(declare-fun b!5530404 () Bool)

(declare-fun tp!1521247 () Bool)

(declare-fun tp!1521244 () Bool)

(assert (=> b!5530404 (= e!3418747 (and tp!1521247 tp!1521244))))

(declare-fun b!5530406 () Bool)

(declare-fun tp!1521246 () Bool)

(declare-fun tp!1521245 () Bool)

(assert (=> b!5530406 (= e!3418747 (and tp!1521246 tp!1521245))))

(assert (=> b!5529302 (= tp!1521067 e!3418747)))

(declare-fun b!5530405 () Bool)

(declare-fun tp!1521243 () Bool)

(assert (=> b!5530405 (= e!3418747 tp!1521243)))

(assert (= (and b!5529302 (is-ElementMatch!15514 (regTwo!31540 (reg!15843 r!7292)))) b!5530403))

(assert (= (and b!5529302 (is-Concat!24359 (regTwo!31540 (reg!15843 r!7292)))) b!5530404))

(assert (= (and b!5529302 (is-Star!15514 (regTwo!31540 (reg!15843 r!7292)))) b!5530405))

(assert (= (and b!5529302 (is-Union!15514 (regTwo!31540 (reg!15843 r!7292)))) b!5530406))

(declare-fun b!5530407 () Bool)

(declare-fun e!3418748 () Bool)

(declare-fun tp!1521248 () Bool)

(declare-fun tp!1521249 () Bool)

(assert (=> b!5530407 (= e!3418748 (and tp!1521248 tp!1521249))))

(assert (=> b!5529339 (= tp!1521110 e!3418748)))

(assert (= (and b!5529339 (is-Cons!62717 (exprs!5398 setElem!36782))) b!5530407))

(declare-fun b!5530408 () Bool)

(declare-fun e!3418749 () Bool)

(assert (=> b!5530408 (= e!3418749 tp_is_empty!40281)))

(declare-fun b!5530409 () Bool)

(declare-fun tp!1521254 () Bool)

(declare-fun tp!1521251 () Bool)

(assert (=> b!5530409 (= e!3418749 (and tp!1521254 tp!1521251))))

(declare-fun b!5530411 () Bool)

(declare-fun tp!1521253 () Bool)

(declare-fun tp!1521252 () Bool)

(assert (=> b!5530411 (= e!3418749 (and tp!1521253 tp!1521252))))

(assert (=> b!5529326 (= tp!1521093 e!3418749)))

(declare-fun b!5530410 () Bool)

(declare-fun tp!1521250 () Bool)

(assert (=> b!5530410 (= e!3418749 tp!1521250)))

(assert (= (and b!5529326 (is-ElementMatch!15514 (h!69165 (exprs!5398 (h!69167 zl!343))))) b!5530408))

(assert (= (and b!5529326 (is-Concat!24359 (h!69165 (exprs!5398 (h!69167 zl!343))))) b!5530409))

(assert (= (and b!5529326 (is-Star!15514 (h!69165 (exprs!5398 (h!69167 zl!343))))) b!5530410))

(assert (= (and b!5529326 (is-Union!15514 (h!69165 (exprs!5398 (h!69167 zl!343))))) b!5530411))

(declare-fun b!5530412 () Bool)

(declare-fun e!3418750 () Bool)

(declare-fun tp!1521255 () Bool)

(declare-fun tp!1521256 () Bool)

(assert (=> b!5530412 (= e!3418750 (and tp!1521255 tp!1521256))))

(assert (=> b!5529326 (= tp!1521094 e!3418750)))

(assert (= (and b!5529326 (is-Cons!62717 (t!376098 (exprs!5398 (h!69167 zl!343))))) b!5530412))

(declare-fun b!5530413 () Bool)

(declare-fun e!3418751 () Bool)

(declare-fun tp!1521257 () Bool)

(declare-fun tp!1521258 () Bool)

(assert (=> b!5530413 (= e!3418751 (and tp!1521257 tp!1521258))))

(assert (=> b!5529312 (= tp!1521075 e!3418751)))

(assert (= (and b!5529312 (is-Cons!62717 (exprs!5398 (h!69167 (t!376100 zl!343))))) b!5530413))

(declare-fun b!5530414 () Bool)

(declare-fun e!3418752 () Bool)

(assert (=> b!5530414 (= e!3418752 tp_is_empty!40281)))

(declare-fun b!5530415 () Bool)

(declare-fun tp!1521263 () Bool)

(declare-fun tp!1521260 () Bool)

(assert (=> b!5530415 (= e!3418752 (and tp!1521263 tp!1521260))))

(declare-fun b!5530417 () Bool)

(declare-fun tp!1521262 () Bool)

(declare-fun tp!1521261 () Bool)

(assert (=> b!5530417 (= e!3418752 (and tp!1521262 tp!1521261))))

(assert (=> b!5529334 (= tp!1521103 e!3418752)))

(declare-fun b!5530416 () Bool)

(declare-fun tp!1521259 () Bool)

(assert (=> b!5530416 (= e!3418752 tp!1521259)))

(assert (= (and b!5529334 (is-ElementMatch!15514 (regOne!31541 (regTwo!31541 r!7292)))) b!5530414))

(assert (= (and b!5529334 (is-Concat!24359 (regOne!31541 (regTwo!31541 r!7292)))) b!5530415))

(assert (= (and b!5529334 (is-Star!15514 (regOne!31541 (regTwo!31541 r!7292)))) b!5530416))

(assert (= (and b!5529334 (is-Union!15514 (regOne!31541 (regTwo!31541 r!7292)))) b!5530417))

(declare-fun b!5530418 () Bool)

(declare-fun e!3418753 () Bool)

(assert (=> b!5530418 (= e!3418753 tp_is_empty!40281)))

(declare-fun b!5530419 () Bool)

(declare-fun tp!1521268 () Bool)

(declare-fun tp!1521265 () Bool)

(assert (=> b!5530419 (= e!3418753 (and tp!1521268 tp!1521265))))

(declare-fun b!5530421 () Bool)

(declare-fun tp!1521267 () Bool)

(declare-fun tp!1521266 () Bool)

(assert (=> b!5530421 (= e!3418753 (and tp!1521267 tp!1521266))))

(assert (=> b!5529334 (= tp!1521102 e!3418753)))

(declare-fun b!5530420 () Bool)

(declare-fun tp!1521264 () Bool)

(assert (=> b!5530420 (= e!3418753 tp!1521264)))

(assert (= (and b!5529334 (is-ElementMatch!15514 (regTwo!31541 (regTwo!31541 r!7292)))) b!5530418))

(assert (= (and b!5529334 (is-Concat!24359 (regTwo!31541 (regTwo!31541 r!7292)))) b!5530419))

(assert (= (and b!5529334 (is-Star!15514 (regTwo!31541 (regTwo!31541 r!7292)))) b!5530420))

(assert (= (and b!5529334 (is-Union!15514 (regTwo!31541 (regTwo!31541 r!7292)))) b!5530421))

(declare-fun b!5530422 () Bool)

(declare-fun e!3418754 () Bool)

(assert (=> b!5530422 (= e!3418754 tp_is_empty!40281)))

(declare-fun b!5530423 () Bool)

(declare-fun tp!1521273 () Bool)

(declare-fun tp!1521270 () Bool)

(assert (=> b!5530423 (= e!3418754 (and tp!1521273 tp!1521270))))

(declare-fun b!5530425 () Bool)

(declare-fun tp!1521272 () Bool)

(declare-fun tp!1521271 () Bool)

(assert (=> b!5530425 (= e!3418754 (and tp!1521272 tp!1521271))))

(assert (=> b!5529317 (= tp!1521081 e!3418754)))

(declare-fun b!5530424 () Bool)

(declare-fun tp!1521269 () Bool)

(assert (=> b!5530424 (= e!3418754 tp!1521269)))

(assert (= (and b!5529317 (is-ElementMatch!15514 (h!69165 (exprs!5398 setElem!36776)))) b!5530422))

(assert (= (and b!5529317 (is-Concat!24359 (h!69165 (exprs!5398 setElem!36776)))) b!5530423))

(assert (= (and b!5529317 (is-Star!15514 (h!69165 (exprs!5398 setElem!36776)))) b!5530424))

(assert (= (and b!5529317 (is-Union!15514 (h!69165 (exprs!5398 setElem!36776)))) b!5530425))

(declare-fun b!5530426 () Bool)

(declare-fun e!3418755 () Bool)

(declare-fun tp!1521274 () Bool)

(declare-fun tp!1521275 () Bool)

(assert (=> b!5530426 (= e!3418755 (and tp!1521274 tp!1521275))))

(assert (=> b!5529317 (= tp!1521082 e!3418755)))

(assert (= (and b!5529317 (is-Cons!62717 (t!376098 (exprs!5398 setElem!36776)))) b!5530426))

(declare-fun b!5530428 () Bool)

(declare-fun e!3418757 () Bool)

(declare-fun tp!1521276 () Bool)

(assert (=> b!5530428 (= e!3418757 tp!1521276)))

(declare-fun tp!1521277 () Bool)

(declare-fun e!3418756 () Bool)

(declare-fun b!5530427 () Bool)

(assert (=> b!5530427 (= e!3418756 (and (inv!82033 (h!69167 (t!376100 (t!376100 zl!343)))) e!3418757 tp!1521277))))

(assert (=> b!5529311 (= tp!1521076 e!3418756)))

(assert (= b!5530427 b!5530428))

(assert (= (and b!5529311 (is-Cons!62719 (t!376100 (t!376100 zl!343)))) b!5530427))

(declare-fun m!6532478 () Bool)

(assert (=> b!5530427 m!6532478))

(declare-fun b!5530429 () Bool)

(declare-fun e!3418758 () Bool)

(assert (=> b!5530429 (= e!3418758 tp_is_empty!40281)))

(declare-fun b!5530430 () Bool)

(declare-fun tp!1521282 () Bool)

(declare-fun tp!1521279 () Bool)

(assert (=> b!5530430 (= e!3418758 (and tp!1521282 tp!1521279))))

(declare-fun b!5530432 () Bool)

(declare-fun tp!1521281 () Bool)

(declare-fun tp!1521280 () Bool)

(assert (=> b!5530432 (= e!3418758 (and tp!1521281 tp!1521280))))

(assert (=> b!5529333 (= tp!1521100 e!3418758)))

(declare-fun b!5530431 () Bool)

(declare-fun tp!1521278 () Bool)

(assert (=> b!5530431 (= e!3418758 tp!1521278)))

(assert (= (and b!5529333 (is-ElementMatch!15514 (reg!15843 (regTwo!31541 r!7292)))) b!5530429))

(assert (= (and b!5529333 (is-Concat!24359 (reg!15843 (regTwo!31541 r!7292)))) b!5530430))

(assert (= (and b!5529333 (is-Star!15514 (reg!15843 (regTwo!31541 r!7292)))) b!5530431))

(assert (= (and b!5529333 (is-Union!15514 (reg!15843 (regTwo!31541 r!7292)))) b!5530432))

(declare-fun b!5530433 () Bool)

(declare-fun e!3418759 () Bool)

(assert (=> b!5530433 (= e!3418759 tp_is_empty!40281)))

(declare-fun b!5530434 () Bool)

(declare-fun tp!1521287 () Bool)

(declare-fun tp!1521284 () Bool)

(assert (=> b!5530434 (= e!3418759 (and tp!1521287 tp!1521284))))

(declare-fun b!5530436 () Bool)

(declare-fun tp!1521286 () Bool)

(declare-fun tp!1521285 () Bool)

(assert (=> b!5530436 (= e!3418759 (and tp!1521286 tp!1521285))))

(assert (=> b!5529321 (= tp!1521086 e!3418759)))

(declare-fun b!5530435 () Bool)

(declare-fun tp!1521283 () Bool)

(assert (=> b!5530435 (= e!3418759 tp!1521283)))

(assert (= (and b!5529321 (is-ElementMatch!15514 (regOne!31541 (regOne!31540 r!7292)))) b!5530433))

(assert (= (and b!5529321 (is-Concat!24359 (regOne!31541 (regOne!31540 r!7292)))) b!5530434))

(assert (= (and b!5529321 (is-Star!15514 (regOne!31541 (regOne!31540 r!7292)))) b!5530435))

(assert (= (and b!5529321 (is-Union!15514 (regOne!31541 (regOne!31540 r!7292)))) b!5530436))

(declare-fun b!5530437 () Bool)

(declare-fun e!3418760 () Bool)

(assert (=> b!5530437 (= e!3418760 tp_is_empty!40281)))

(declare-fun b!5530438 () Bool)

(declare-fun tp!1521292 () Bool)

(declare-fun tp!1521289 () Bool)

(assert (=> b!5530438 (= e!3418760 (and tp!1521292 tp!1521289))))

(declare-fun b!5530440 () Bool)

(declare-fun tp!1521291 () Bool)

(declare-fun tp!1521290 () Bool)

(assert (=> b!5530440 (= e!3418760 (and tp!1521291 tp!1521290))))

(assert (=> b!5529321 (= tp!1521085 e!3418760)))

(declare-fun b!5530439 () Bool)

(declare-fun tp!1521288 () Bool)

(assert (=> b!5530439 (= e!3418760 tp!1521288)))

(assert (= (and b!5529321 (is-ElementMatch!15514 (regTwo!31541 (regOne!31540 r!7292)))) b!5530437))

(assert (= (and b!5529321 (is-Concat!24359 (regTwo!31541 (regOne!31540 r!7292)))) b!5530438))

(assert (= (and b!5529321 (is-Star!15514 (regTwo!31541 (regOne!31540 r!7292)))) b!5530439))

(assert (= (and b!5529321 (is-Union!15514 (regTwo!31541 (regOne!31540 r!7292)))) b!5530440))

(declare-fun b!5530441 () Bool)

(declare-fun e!3418761 () Bool)

(assert (=> b!5530441 (= e!3418761 tp_is_empty!40281)))

(declare-fun b!5530442 () Bool)

(declare-fun tp!1521297 () Bool)

(declare-fun tp!1521294 () Bool)

(assert (=> b!5530442 (= e!3418761 (and tp!1521297 tp!1521294))))

(declare-fun b!5530444 () Bool)

(declare-fun tp!1521296 () Bool)

(declare-fun tp!1521295 () Bool)

(assert (=> b!5530444 (= e!3418761 (and tp!1521296 tp!1521295))))

(assert (=> b!5529320 (= tp!1521083 e!3418761)))

(declare-fun b!5530443 () Bool)

(declare-fun tp!1521293 () Bool)

(assert (=> b!5530443 (= e!3418761 tp!1521293)))

(assert (= (and b!5529320 (is-ElementMatch!15514 (reg!15843 (regOne!31540 r!7292)))) b!5530441))

(assert (= (and b!5529320 (is-Concat!24359 (reg!15843 (regOne!31540 r!7292)))) b!5530442))

(assert (= (and b!5529320 (is-Star!15514 (reg!15843 (regOne!31540 r!7292)))) b!5530443))

(assert (= (and b!5529320 (is-Union!15514 (reg!15843 (regOne!31540 r!7292)))) b!5530444))

(declare-fun b!5530445 () Bool)

(declare-fun e!3418762 () Bool)

(assert (=> b!5530445 (= e!3418762 tp_is_empty!40281)))

(declare-fun b!5530446 () Bool)

(declare-fun tp!1521302 () Bool)

(declare-fun tp!1521299 () Bool)

(assert (=> b!5530446 (= e!3418762 (and tp!1521302 tp!1521299))))

(declare-fun b!5530448 () Bool)

(declare-fun tp!1521301 () Bool)

(declare-fun tp!1521300 () Bool)

(assert (=> b!5530448 (= e!3418762 (and tp!1521301 tp!1521300))))

(assert (=> b!5529319 (= tp!1521087 e!3418762)))

(declare-fun b!5530447 () Bool)

(declare-fun tp!1521298 () Bool)

(assert (=> b!5530447 (= e!3418762 tp!1521298)))

(assert (= (and b!5529319 (is-ElementMatch!15514 (regOne!31540 (regOne!31540 r!7292)))) b!5530445))

(assert (= (and b!5529319 (is-Concat!24359 (regOne!31540 (regOne!31540 r!7292)))) b!5530446))

(assert (= (and b!5529319 (is-Star!15514 (regOne!31540 (regOne!31540 r!7292)))) b!5530447))

(assert (= (and b!5529319 (is-Union!15514 (regOne!31540 (regOne!31540 r!7292)))) b!5530448))

(declare-fun b!5530449 () Bool)

(declare-fun e!3418763 () Bool)

(assert (=> b!5530449 (= e!3418763 tp_is_empty!40281)))

(declare-fun b!5530450 () Bool)

(declare-fun tp!1521307 () Bool)

(declare-fun tp!1521304 () Bool)

(assert (=> b!5530450 (= e!3418763 (and tp!1521307 tp!1521304))))

(declare-fun b!5530452 () Bool)

(declare-fun tp!1521306 () Bool)

(declare-fun tp!1521305 () Bool)

(assert (=> b!5530452 (= e!3418763 (and tp!1521306 tp!1521305))))

(assert (=> b!5529319 (= tp!1521084 e!3418763)))

(declare-fun b!5530451 () Bool)

(declare-fun tp!1521303 () Bool)

(assert (=> b!5530451 (= e!3418763 tp!1521303)))

(assert (= (and b!5529319 (is-ElementMatch!15514 (regTwo!31540 (regOne!31540 r!7292)))) b!5530449))

(assert (= (and b!5529319 (is-Concat!24359 (regTwo!31540 (regOne!31540 r!7292)))) b!5530450))

(assert (= (and b!5529319 (is-Star!15514 (regTwo!31540 (regOne!31540 r!7292)))) b!5530451))

(assert (= (and b!5529319 (is-Union!15514 (regTwo!31540 (regOne!31540 r!7292)))) b!5530452))

(declare-fun condSetEmpty!36791 () Bool)

(assert (=> setNonEmpty!36782 (= condSetEmpty!36791 (= setRest!36782 (as set.empty (Set Context!9796))))))

(declare-fun setRes!36791 () Bool)

(assert (=> setNonEmpty!36782 (= tp!1521109 setRes!36791)))

(declare-fun setIsEmpty!36791 () Bool)

(assert (=> setIsEmpty!36791 setRes!36791))

(declare-fun setElem!36791 () Context!9796)

(declare-fun e!3418764 () Bool)

(declare-fun tp!1521308 () Bool)

(declare-fun setNonEmpty!36791 () Bool)

(assert (=> setNonEmpty!36791 (= setRes!36791 (and tp!1521308 (inv!82033 setElem!36791) e!3418764))))

(declare-fun setRest!36791 () (Set Context!9796))

(assert (=> setNonEmpty!36791 (= setRest!36782 (set.union (set.insert setElem!36791 (as set.empty (Set Context!9796))) setRest!36791))))

(declare-fun b!5530453 () Bool)

(declare-fun tp!1521309 () Bool)

(assert (=> b!5530453 (= e!3418764 tp!1521309)))

(assert (= (and setNonEmpty!36782 condSetEmpty!36791) setIsEmpty!36791))

(assert (= (and setNonEmpty!36782 (not condSetEmpty!36791)) setNonEmpty!36791))

(assert (= setNonEmpty!36791 b!5530453))

(declare-fun m!6532480 () Bool)

(assert (=> setNonEmpty!36791 m!6532480))

(declare-fun b!5530454 () Bool)

(declare-fun e!3418765 () Bool)

(assert (=> b!5530454 (= e!3418765 tp_is_empty!40281)))

(declare-fun b!5530455 () Bool)

(declare-fun tp!1521314 () Bool)

(declare-fun tp!1521311 () Bool)

(assert (=> b!5530455 (= e!3418765 (and tp!1521314 tp!1521311))))

(declare-fun b!5530457 () Bool)

(declare-fun tp!1521313 () Bool)

(declare-fun tp!1521312 () Bool)

(assert (=> b!5530457 (= e!3418765 (and tp!1521313 tp!1521312))))

(assert (=> b!5529330 (= tp!1521098 e!3418765)))

(declare-fun b!5530456 () Bool)

(declare-fun tp!1521310 () Bool)

(assert (=> b!5530456 (= e!3418765 tp!1521310)))

(assert (= (and b!5529330 (is-ElementMatch!15514 (regOne!31541 (regOne!31541 r!7292)))) b!5530454))

(assert (= (and b!5529330 (is-Concat!24359 (regOne!31541 (regOne!31541 r!7292)))) b!5530455))

(assert (= (and b!5529330 (is-Star!15514 (regOne!31541 (regOne!31541 r!7292)))) b!5530456))

(assert (= (and b!5529330 (is-Union!15514 (regOne!31541 (regOne!31541 r!7292)))) b!5530457))

(declare-fun b!5530458 () Bool)

(declare-fun e!3418766 () Bool)

(assert (=> b!5530458 (= e!3418766 tp_is_empty!40281)))

(declare-fun b!5530459 () Bool)

(declare-fun tp!1521319 () Bool)

(declare-fun tp!1521316 () Bool)

(assert (=> b!5530459 (= e!3418766 (and tp!1521319 tp!1521316))))

(declare-fun b!5530461 () Bool)

(declare-fun tp!1521318 () Bool)

(declare-fun tp!1521317 () Bool)

(assert (=> b!5530461 (= e!3418766 (and tp!1521318 tp!1521317))))

(assert (=> b!5529330 (= tp!1521097 e!3418766)))

(declare-fun b!5530460 () Bool)

(declare-fun tp!1521315 () Bool)

(assert (=> b!5530460 (= e!3418766 tp!1521315)))

(assert (= (and b!5529330 (is-ElementMatch!15514 (regTwo!31541 (regOne!31541 r!7292)))) b!5530458))

(assert (= (and b!5529330 (is-Concat!24359 (regTwo!31541 (regOne!31541 r!7292)))) b!5530459))

(assert (= (and b!5529330 (is-Star!15514 (regTwo!31541 (regOne!31541 r!7292)))) b!5530460))

(assert (= (and b!5529330 (is-Union!15514 (regTwo!31541 (regOne!31541 r!7292)))) b!5530461))

(declare-fun b!5530462 () Bool)

(declare-fun e!3418767 () Bool)

(assert (=> b!5530462 (= e!3418767 tp_is_empty!40281)))

(declare-fun b!5530463 () Bool)

(declare-fun tp!1521324 () Bool)

(declare-fun tp!1521321 () Bool)

(assert (=> b!5530463 (= e!3418767 (and tp!1521324 tp!1521321))))

(declare-fun b!5530465 () Bool)

(declare-fun tp!1521323 () Bool)

(declare-fun tp!1521322 () Bool)

(assert (=> b!5530465 (= e!3418767 (and tp!1521323 tp!1521322))))

(assert (=> b!5529329 (= tp!1521095 e!3418767)))

(declare-fun b!5530464 () Bool)

(declare-fun tp!1521320 () Bool)

(assert (=> b!5530464 (= e!3418767 tp!1521320)))

(assert (= (and b!5529329 (is-ElementMatch!15514 (reg!15843 (regOne!31541 r!7292)))) b!5530462))

(assert (= (and b!5529329 (is-Concat!24359 (reg!15843 (regOne!31541 r!7292)))) b!5530463))

(assert (= (and b!5529329 (is-Star!15514 (reg!15843 (regOne!31541 r!7292)))) b!5530464))

(assert (= (and b!5529329 (is-Union!15514 (reg!15843 (regOne!31541 r!7292)))) b!5530465))

(declare-fun b!5530466 () Bool)

(declare-fun e!3418768 () Bool)

(declare-fun tp!1521325 () Bool)

(assert (=> b!5530466 (= e!3418768 (and tp_is_empty!40281 tp!1521325))))

(assert (=> b!5529344 (= tp!1521113 e!3418768)))

(assert (= (and b!5529344 (is-Cons!62718 (t!376099 (t!376099 s!2326)))) b!5530466))

(declare-fun b!5530467 () Bool)

(declare-fun e!3418769 () Bool)

(assert (=> b!5530467 (= e!3418769 tp_is_empty!40281)))

(declare-fun b!5530468 () Bool)

(declare-fun tp!1521330 () Bool)

(declare-fun tp!1521327 () Bool)

(assert (=> b!5530468 (= e!3418769 (and tp!1521330 tp!1521327))))

(declare-fun b!5530470 () Bool)

(declare-fun tp!1521329 () Bool)

(declare-fun tp!1521328 () Bool)

(assert (=> b!5530470 (= e!3418769 (and tp!1521329 tp!1521328))))

(assert (=> b!5529328 (= tp!1521099 e!3418769)))

(declare-fun b!5530469 () Bool)

(declare-fun tp!1521326 () Bool)

(assert (=> b!5530469 (= e!3418769 tp!1521326)))

(assert (= (and b!5529328 (is-ElementMatch!15514 (regOne!31540 (regOne!31541 r!7292)))) b!5530467))

(assert (= (and b!5529328 (is-Concat!24359 (regOne!31540 (regOne!31541 r!7292)))) b!5530468))

(assert (= (and b!5529328 (is-Star!15514 (regOne!31540 (regOne!31541 r!7292)))) b!5530469))

(assert (= (and b!5529328 (is-Union!15514 (regOne!31540 (regOne!31541 r!7292)))) b!5530470))

(declare-fun b!5530471 () Bool)

(declare-fun e!3418770 () Bool)

(assert (=> b!5530471 (= e!3418770 tp_is_empty!40281)))

(declare-fun b!5530472 () Bool)

(declare-fun tp!1521335 () Bool)

(declare-fun tp!1521332 () Bool)

(assert (=> b!5530472 (= e!3418770 (and tp!1521335 tp!1521332))))

(declare-fun b!5530474 () Bool)

(declare-fun tp!1521334 () Bool)

(declare-fun tp!1521333 () Bool)

(assert (=> b!5530474 (= e!3418770 (and tp!1521334 tp!1521333))))

(assert (=> b!5529328 (= tp!1521096 e!3418770)))

(declare-fun b!5530473 () Bool)

(declare-fun tp!1521331 () Bool)

(assert (=> b!5530473 (= e!3418770 tp!1521331)))

(assert (= (and b!5529328 (is-ElementMatch!15514 (regTwo!31540 (regOne!31541 r!7292)))) b!5530471))

(assert (= (and b!5529328 (is-Concat!24359 (regTwo!31540 (regOne!31541 r!7292)))) b!5530472))

(assert (= (and b!5529328 (is-Star!15514 (regTwo!31540 (regOne!31541 r!7292)))) b!5530473))

(assert (= (and b!5529328 (is-Union!15514 (regTwo!31540 (regOne!31541 r!7292)))) b!5530474))

(declare-fun b_lambda!209891 () Bool)

(assert (= b_lambda!209881 (or b!5529273 b_lambda!209891)))

(declare-fun bs!1278421 () Bool)

(declare-fun d!1752567 () Bool)

(assert (= bs!1278421 (and d!1752567 b!5529273)))

(assert (=> bs!1278421 (= (dynLambda!24524 lambda!296699 (h!69167 (t!376100 (Cons!62719 lt!2247930 Nil!62719)))) (>= lt!2248101 (contextDepth!110 (h!69167 (t!376100 (Cons!62719 lt!2247930 Nil!62719))))))))

(assert (=> bs!1278421 m!6532272))

(assert (=> b!5530182 d!1752567))

(declare-fun b_lambda!209893 () Bool)

(assert (= b_lambda!209871 (or b!5529280 b_lambda!209893)))

(declare-fun bs!1278422 () Bool)

(declare-fun d!1752569 () Bool)

(assert (= bs!1278422 (and d!1752569 b!5529280)))

(assert (=> bs!1278422 (= (dynLambda!24524 lambda!296703 (h!69167 (Cons!62719 lt!2247908 Nil!62719))) (>= lt!2248103 (contextDepth!110 (h!69167 (Cons!62719 lt!2247908 Nil!62719)))))))

(assert (=> bs!1278422 m!6531358))

(assert (=> b!5530058 d!1752569))

(declare-fun b_lambda!209895 () Bool)

(assert (= b_lambda!209853 (or b!5529287 b_lambda!209895)))

(declare-fun bs!1278423 () Bool)

(declare-fun d!1752571 () Bool)

(assert (= bs!1278423 (and d!1752571 b!5529287)))

(assert (=> bs!1278423 (= (dynLambda!24524 lambda!296707 (h!69167 (Cons!62719 lt!2247922 Nil!62719))) (>= lt!2248107 (contextDepth!110 (h!69167 (Cons!62719 lt!2247922 Nil!62719)))))))

(assert (=> bs!1278423 m!6531384))

(assert (=> b!5529884 d!1752571))

(declare-fun b_lambda!209897 () Bool)

(assert (= b_lambda!209879 (or d!1752083 b_lambda!209897)))

(declare-fun bs!1278424 () Bool)

(declare-fun d!1752573 () Bool)

(assert (= bs!1278424 (and d!1752573 d!1752083)))

(assert (=> bs!1278424 (= (dynLambda!24523 lambda!296687 (h!69165 (exprs!5398 (h!69167 zl!343)))) (validRegex!7250 (h!69165 (exprs!5398 (h!69167 zl!343)))))))

(declare-fun m!6532482 () Bool)

(assert (=> bs!1278424 m!6532482))

(assert (=> b!5530174 d!1752573))

(declare-fun b_lambda!209899 () Bool)

(assert (= b_lambda!209885 (or b!5529167 b_lambda!209899)))

(declare-fun bs!1278425 () Bool)

(declare-fun d!1752575 () Bool)

(assert (= bs!1278425 (and d!1752575 b!5529167)))

(assert (=> bs!1278425 (= (dynLambda!24523 lambda!296683 (h!69165 (t!376098 (exprs!5398 lt!2247908)))) (>= lt!2248075 (regexDepth!214 (h!69165 (t!376098 (exprs!5398 lt!2247908))))))))

(declare-fun m!6532484 () Bool)

(assert (=> bs!1278425 m!6532484))

(assert (=> b!5530255 d!1752575))

(declare-fun b_lambda!209901 () Bool)

(assert (= b_lambda!209877 (or b!5529285 b_lambda!209901)))

(declare-fun bs!1278426 () Bool)

(declare-fun d!1752577 () Bool)

(assert (= bs!1278426 (and d!1752577 b!5529285)))

(assert (=> bs!1278426 (= (dynLambda!24524 lambda!296706 (h!69167 (t!376100 (Cons!62719 lt!2247922 Nil!62719)))) (>= lt!2248109 (contextDepth!110 (h!69167 (t!376100 (Cons!62719 lt!2247922 Nil!62719))))))))

(assert (=> bs!1278426 m!6532222))

(assert (=> b!5530163 d!1752577))

(declare-fun b_lambda!209903 () Bool)

(assert (= b_lambda!209857 (or b!5529275 b_lambda!209903)))

(declare-fun bs!1278427 () Bool)

(declare-fun d!1752579 () Bool)

(assert (= bs!1278427 (and d!1752579 b!5529275)))

(assert (=> bs!1278427 (= (dynLambda!24524 lambda!296700 (h!69167 (Cons!62719 lt!2247930 Nil!62719))) (>= lt!2248099 (contextDepth!110 (h!69167 (Cons!62719 lt!2247930 Nil!62719)))))))

(assert (=> bs!1278427 m!6531346))

(assert (=> b!5529912 d!1752579))

(declare-fun b_lambda!209905 () Bool)

(assert (= b_lambda!209861 (or b!5529169 b_lambda!209905)))

(declare-fun bs!1278428 () Bool)

(declare-fun d!1752581 () Bool)

(assert (= bs!1278428 (and d!1752581 b!5529169)))

(assert (=> bs!1278428 (= (dynLambda!24523 lambda!296684 (h!69165 (exprs!5398 lt!2247908))) (>= lt!2248074 (regexDepth!214 (h!69165 (exprs!5398 lt!2247908)))))))

(assert (=> bs!1278428 m!6531242))

(assert (=> b!5529958 d!1752581))

(declare-fun b_lambda!209907 () Bool)

(assert (= b_lambda!209863 (or d!1752115 b_lambda!209907)))

(declare-fun bs!1278429 () Bool)

(declare-fun d!1752583 () Bool)

(assert (= bs!1278429 (and d!1752583 d!1752115)))

(assert (=> bs!1278429 (= (dynLambda!24523 lambda!296691 (h!69165 (exprs!5398 setElem!36776))) (validRegex!7250 (h!69165 (exprs!5398 setElem!36776))))))

(declare-fun m!6532486 () Bool)

(assert (=> bs!1278429 m!6532486))

(assert (=> b!5529970 d!1752583))

(declare-fun b_lambda!209909 () Bool)

(assert (= b_lambda!209875 (or d!1752031 b_lambda!209909)))

(declare-fun bs!1278430 () Bool)

(declare-fun d!1752585 () Bool)

(assert (= bs!1278430 (and d!1752585 d!1752031)))

(assert (=> bs!1278430 (= (dynLambda!24523 lambda!296657 (h!69165 lt!2248035)) (validRegex!7250 (h!69165 lt!2248035)))))

(declare-fun m!6532488 () Bool)

(assert (=> bs!1278430 m!6532488))

(assert (=> b!5530136 d!1752585))

(declare-fun b_lambda!209911 () Bool)

(assert (= b_lambda!209867 (or b!5529290 b_lambda!209911)))

(declare-fun bs!1278431 () Bool)

(declare-fun d!1752587 () Bool)

(assert (= bs!1278431 (and d!1752587 b!5529290)))

(assert (=> bs!1278431 (= (dynLambda!24523 lambda!296709 (h!69165 (exprs!5398 lt!2247922))) (>= lt!2248112 (regexDepth!214 (h!69165 (exprs!5398 lt!2247922)))))))

(assert (=> bs!1278431 m!6531396))

(assert (=> b!5530053 d!1752587))

(declare-fun b_lambda!209913 () Bool)

(assert (= b_lambda!209851 (or d!1752029 b_lambda!209913)))

(declare-fun bs!1278432 () Bool)

(declare-fun d!1752589 () Bool)

(assert (= bs!1278432 (and d!1752589 d!1752029)))

(assert (=> bs!1278432 (= (dynLambda!24523 lambda!296654 (h!69165 (unfocusZipperList!942 zl!343))) (validRegex!7250 (h!69165 (unfocusZipperList!942 zl!343))))))

(declare-fun m!6532490 () Bool)

(assert (=> bs!1278432 m!6532490))

(assert (=> b!5529834 d!1752589))

(declare-fun b_lambda!209915 () Bool)

(assert (= b_lambda!209883 (or b!5529162 b_lambda!209915)))

(declare-fun bs!1278433 () Bool)

(declare-fun d!1752591 () Bool)

(assert (= bs!1278433 (and d!1752591 b!5529162)))

(assert (=> bs!1278433 (= (dynLambda!24523 lambda!296681 (h!69165 (t!376098 (exprs!5398 lt!2247930)))) (>= lt!2248071 (regexDepth!214 (h!69165 (t!376098 (exprs!5398 lt!2247930))))))))

(declare-fun m!6532492 () Bool)

(assert (=> bs!1278433 m!6532492))

(assert (=> b!5530201 d!1752591))

(declare-fun b_lambda!209917 () Bool)

(assert (= b_lambda!209873 (or d!1752085 b_lambda!209917)))

(declare-fun bs!1278434 () Bool)

(declare-fun d!1752593 () Bool)

(assert (= bs!1278434 (and d!1752593 d!1752085)))

(assert (=> bs!1278434 (= (dynLambda!24523 lambda!296690 (h!69165 (exprs!5398 (h!69167 zl!343)))) (validRegex!7250 (h!69165 (exprs!5398 (h!69167 zl!343)))))))

(assert (=> bs!1278434 m!6532482))

(assert (=> b!5530128 d!1752593))

(declare-fun b_lambda!209919 () Bool)

(assert (= b_lambda!209869 (or b!5528779 b_lambda!209919)))

(assert (=> d!1752383 d!1752135))

(declare-fun b_lambda!209921 () Bool)

(assert (= b_lambda!209855 (or b!5528779 b_lambda!209921)))

(assert (=> d!1752325 d!1752133))

(declare-fun b_lambda!209923 () Bool)

(assert (= b_lambda!209859 (or b!5528779 b_lambda!209923)))

(assert (=> d!1752343 d!1752131))

(declare-fun b_lambda!209925 () Bool)

(assert (= b_lambda!209865 (or b!5529164 b_lambda!209925)))

(declare-fun bs!1278435 () Bool)

(declare-fun d!1752595 () Bool)

(assert (= bs!1278435 (and d!1752595 b!5529164)))

(assert (=> bs!1278435 (= (dynLambda!24523 lambda!296682 (h!69165 (exprs!5398 lt!2247930))) (>= lt!2248070 (regexDepth!214 (h!69165 (exprs!5398 lt!2247930)))))))

(assert (=> bs!1278435 m!6531230))

(assert (=> b!5530006 d!1752595))

(declare-fun b_lambda!209927 () Bool)

(assert (= b_lambda!209889 (or b!5529278 b_lambda!209927)))

(declare-fun bs!1278436 () Bool)

(declare-fun d!1752597 () Bool)

(assert (= bs!1278436 (and d!1752597 b!5529278)))

(assert (=> bs!1278436 (= (dynLambda!24524 lambda!296702 (h!69167 (t!376100 (Cons!62719 lt!2247908 Nil!62719)))) (>= lt!2248105 (contextDepth!110 (h!69167 (t!376100 (Cons!62719 lt!2247908 Nil!62719))))))))

(assert (=> bs!1278436 m!6532436))

(assert (=> b!5530343 d!1752597))

(declare-fun b_lambda!209929 () Bool)

(assert (= b_lambda!209887 (or b!5529288 b_lambda!209929)))

(declare-fun bs!1278437 () Bool)

(declare-fun d!1752599 () Bool)

(assert (= bs!1278437 (and d!1752599 b!5529288)))

(assert (=> bs!1278437 (= (dynLambda!24523 lambda!296708 (h!69165 (t!376098 (exprs!5398 lt!2247922)))) (>= lt!2248113 (regexDepth!214 (h!69165 (t!376098 (exprs!5398 lt!2247922))))))))

(declare-fun m!6532494 () Bool)

(assert (=> bs!1278437 m!6532494))

(assert (=> b!5530328 d!1752599))

(push 1)

(assert (not d!1752379))

(assert (not b!5530189))

(assert (not bm!410486))

(assert (not b!5530412))

(assert (not bm!410610))

(assert (not d!1752343))

(assert (not b!5530176))

(assert (not b!5530460))

(assert (not b_lambda!209909))

(assert (not b!5530308))

(assert (not d!1752423))

(assert (not d!1752539))

(assert (not bm!410617))

(assert (not d!1752317))

(assert (not b!5530152))

(assert (not b!5529806))

(assert (not b!5530179))

(assert (not b!5530456))

(assert (not b!5530473))

(assert (not b!5530108))

(assert (not bm!410560))

(assert (not b_lambda!209911))

(assert (not b!5529959))

(assert (not b!5529813))

(assert (not b!5529889))

(assert (not b!5529914))

(assert (not b!5530410))

(assert (not d!1752327))

(assert (not b!5530074))

(assert (not b!5530173))

(assert (not d!1752395))

(assert (not bm!410496))

(assert (not bm!410615))

(assert (not d!1752357))

(assert (not b!5530056))

(assert (not b!5530376))

(assert (not d!1752257))

(assert (not d!1752549))

(assert (not b!5529809))

(assert (not bm!410505))

(assert (not bm!410594))

(assert (not b!5530402))

(assert (not b!5530365))

(assert (not d!1752551))

(assert (not b!5529983))

(assert (not b!5529971))

(assert (not d!1752383))

(assert (not bm!410491))

(assert (not d!1752523))

(assert (not b!5530388))

(assert (not bm!410595))

(assert (not b!5529967))

(assert (not d!1752277))

(assert (not b!5530200))

(assert (not bm!410536))

(assert (not b!5529819))

(assert (not d!1752329))

(assert (not b!5530380))

(assert (not d!1752453))

(assert (not bm!410550))

(assert (not bm!410611))

(assert (not bm!410548))

(assert (not b!5530406))

(assert (not b!5530334))

(assert (not b!5530386))

(assert (not bm!410614))

(assert (not b!5530160))

(assert (not b!5530332))

(assert (not bm!410509))

(assert (not b!5530393))

(assert (not d!1752389))

(assert (not b!5530022))

(assert (not b!5530360))

(assert (not bm!410577))

(assert (not d!1752279))

(assert (not b!5530411))

(assert (not b!5529816))

(assert (not d!1752461))

(assert (not b!5530382))

(assert (not b!5530054))

(assert (not b!5529779))

(assert (not b!5529844))

(assert (not bs!1278430))

(assert (not bm!410620))

(assert (not b!5530130))

(assert (not b!5530202))

(assert (not b!5530368))

(assert (not b!5530450))

(assert (not b!5530142))

(assert (not bm!410485))

(assert (not b!5529961))

(assert (not bs!1278424))

(assert (not b!5530421))

(assert (not b_lambda!209915))

(assert (not d!1752297))

(assert (not d!1752447))

(assert (not b!5530381))

(assert (not bm!410526))

(assert (not d!1752561))

(assert (not b!5530285))

(assert (not bs!1278422))

(assert (not b!5530118))

(assert (not b_lambda!209833))

(assert (not b!5530344))

(assert (not b!5530470))

(assert (not b!5530434))

(assert (not b!5530133))

(assert (not b!5529999))

(assert (not b!5530194))

(assert (not d!1752459))

(assert (not d!1752285))

(assert (not bm!410570))

(assert (not b_lambda!209925))

(assert (not b_lambda!209913))

(assert (not bs!1278432))

(assert (not b!5530401))

(assert (not b!5530405))

(assert (not b!5530404))

(assert (not b!5530059))

(assert (not bm!410539))

(assert (not b!5530101))

(assert (not b!5530384))

(assert (not b!5530277))

(assert (not b!5530282))

(assert (not bm!410567))

(assert (not b!5529879))

(assert (not bm!410609))

(assert (not setNonEmpty!36791))

(assert (not b!5530157))

(assert (not bm!410600))

(assert (not b!5529778))

(assert (not d!1752325))

(assert (not d!1752315))

(assert (not bs!1278434))

(assert (not b!5530339))

(assert (not b!5529858))

(assert (not b!5530428))

(assert (not b!5530113))

(assert tp_is_empty!40281)

(assert (not bm!410521))

(assert (not d!1752263))

(assert (not d!1752401))

(assert (not d!1752443))

(assert (not b!5530394))

(assert (not d!1752517))

(assert (not b!5529913))

(assert (not b!5530436))

(assert (not d!1752403))

(assert (not b!5530377))

(assert (not b!5530149))

(assert (not bs!1278433))

(assert (not b!5529871))

(assert (not bm!410563))

(assert (not b!5530455))

(assert (not d!1752445))

(assert (not b!5530448))

(assert (not b!5530198))

(assert (not b!5530279))

(assert (not d!1752417))

(assert (not b!5529814))

(assert (not d!1752397))

(assert (not d!1752421))

(assert (not bs!1278431))

(assert (not b!5530423))

(assert (not b!5530329))

(assert (not b!5530464))

(assert (not b!5529849))

(assert (not bm!410549))

(assert (not b!5529829))

(assert (not b!5530175))

(assert (not b!5530438))

(assert (not bm!410542))

(assert (not b!5530310))

(assert (not d!1752255))

(assert (not b!5530446))

(assert (not bm!410504))

(assert (not d!1752427))

(assert (not d!1752265))

(assert (not b!5530162))

(assert (not b!5530115))

(assert (not b!5530164))

(assert (not b!5530109))

(assert (not bm!410608))

(assert (not b!5529783))

(assert (not b!5530370))

(assert (not b_lambda!209923))

(assert (not b!5530374))

(assert (not bm!410566))

(assert (not b!5530378))

(assert (not b!5529815))

(assert (not b!5530309))

(assert (not b!5530426))

(assert (not b!5530186))

(assert (not bm!410530))

(assert (not bs!1278425))

(assert (not b!5530352))

(assert (not b!5530452))

(assert (not b!5529794))

(assert (not b!5530137))

(assert (not bm!410487))

(assert (not b!5530427))

(assert (not b!5530181))

(assert (not bm!410529))

(assert (not b!5529774))

(assert (not d!1752283))

(assert (not b!5529917))

(assert (not b!5530440))

(assert (not b!5529782))

(assert (not b!5530257))

(assert (not b!5529891))

(assert (not b!5530424))

(assert (not b!5530300))

(assert (not b!5529785))

(assert (not b!5530120))

(assert (not b_lambda!209893))

(assert (not d!1752489))

(assert (not bm!410616))

(assert (not b!5529885))

(assert (not b!5530439))

(assert (not b!5530366))

(assert (not b!5529789))

(assert (not b!5530465))

(assert (not bm!410561))

(assert (not bm!410576))

(assert (not d!1752349))

(assert (not b!5530463))

(assert (not d!1752313))

(assert (not b!5529908))

(assert (not setNonEmpty!36788))

(assert (not bm!410524))

(assert (not bs!1278421))

(assert (not b!5530301))

(assert (not b!5530150))

(assert (not b_lambda!209837))

(assert (not bm!410483))

(assert (not b!5530347))

(assert (not d!1752507))

(assert (not b!5530151))

(assert (not b!5530435))

(assert (not b_lambda!209835))

(assert (not b!5530256))

(assert (not b!5530060))

(assert (not d!1752433))

(assert (not b_lambda!209905))

(assert (not setNonEmpty!36790))

(assert (not b!5530396))

(assert (not b!5530159))

(assert (not b!5530338))

(assert (not b!5530110))

(assert (not b_lambda!209921))

(assert (not bs!1278437))

(assert (not b!5530082))

(assert (not b!5529817))

(assert (not b!5530129))

(assert (not b!5529805))

(assert (not d!1752409))

(assert (not bm!410557))

(assert (not b!5530007))

(assert (not b!5529888))

(assert (not d!1752455))

(assert (not b_lambda!209891))

(assert (not b!5530259))

(assert (not bm!410479))

(assert (not d!1752251))

(assert (not b!5530372))

(assert (not bm!410602))

(assert (not d!1752439))

(assert (not b!5530442))

(assert (not b!5530415))

(assert (not b!5530192))

(assert (not d!1752337))

(assert (not b!5530419))

(assert (not bm!410621))

(assert (not bm!410482))

(assert (not setNonEmpty!36789))

(assert (not bm!410490))

(assert (not b!5529950))

(assert (not d!1752465))

(assert (not b!5530373))

(assert (not d!1752339))

(assert (not bs!1278429))

(assert (not b!5530413))

(assert (not bm!410488))

(assert (not b!5529767))

(assert (not b!5529922))

(assert (not b!5529916))

(assert (not b!5530342))

(assert (not b!5530409))

(assert (not bm!410525))

(assert (not b!5530369))

(assert (not bm!410607))

(assert (not bm!410579))

(assert (not d!1752431))

(assert (not b!5530417))

(assert (not bm!410535))

(assert (not d!1752391))

(assert (not b!5529896))

(assert (not b!5529784))

(assert (not b_lambda!209927))

(assert (not b!5530361))

(assert (not d!1752399))

(assert (not b!5529966))

(assert (not b!5530425))

(assert (not b!5530057))

(assert (not b!5530459))

(assert (not b!5530443))

(assert (not d!1752299))

(assert (not b!5529835))

(assert (not b!5530184))

(assert (not b!5529886))

(assert (not b!5530431))

(assert (not b!5530061))

(assert (not b!5529776))

(assert (not b!5530013))

(assert (not b!5529860))

(assert (not d!1752393))

(assert (not bm!410556))

(assert (not b!5530337))

(assert (not b!5529976))

(assert (not b!5530389))

(assert (not b!5529790))

(assert (not bm!410598))

(assert (not b!5529894))

(assert (not bm!410569))

(assert (not b!5529974))

(assert (not bm!410523))

(assert (not bs!1278427))

(assert (not b!5530432))

(assert (not b!5529780))

(assert (not bm!410606))

(assert (not b!5529795))

(assert (not b!5530469))

(assert (not b!5529919))

(assert (not bs!1278426))

(assert (not b!5530187))

(assert (not b!5530291))

(assert (not bm!410511))

(assert (not d!1752545))

(assert (not b!5529969))

(assert (not bm!410599))

(assert (not bs!1278436))

(assert (not bm!410601))

(assert (not b!5530280))

(assert (not b_lambda!209907))

(assert (not bm!410493))

(assert (not b_lambda!209895))

(assert (not b!5530330))

(assert (not d!1752533))

(assert (not b!5530466))

(assert (not d!1752281))

(assert (not d!1752311))

(assert (not d!1752509))

(assert (not b!5530112))

(assert (not b!5530407))

(assert (not b!5530345))

(assert (not b!5530400))

(assert (not bm!410501))

(assert (not bm!410508))

(assert (not bm!410499))

(assert (not d!1752435))

(assert (not b!5530362))

(assert (not b!5530420))

(assert (not b_lambda!209917))

(assert (not b!5530390))

(assert (not b!5530392))

(assert (not d!1752553))

(assert (not bm!410507))

(assert (not b!5530461))

(assert (not b!5530183))

(assert (not d!1752381))

(assert (not b!5530457))

(assert (not d!1752547))

(assert (not bs!1278423))

(assert (not b!5530397))

(assert (not b!5530451))

(assert (not b!5530472))

(assert (not b!5530416))

(assert (not b!5529988))

(assert (not d!1752503))

(assert (not b!5530090))

(assert (not b!5530081))

(assert (not bm!410605))

(assert (not b!5529924))

(assert (not b!5530055))

(assert (not b_lambda!209919))

(assert (not b!5530340))

(assert (not b!5530292))

(assert (not bm!410500))

(assert (not b_lambda!209903))

(assert (not b!5530287))

(assert (not b!5530444))

(assert (not bm!410497))

(assert (not b!5529911))

(assert (not b!5529878))

(assert (not b!5530447))

(assert (not b_lambda!209899))

(assert (not d!1752491))

(assert (not d!1752413))

(assert (not b!5530385))

(assert (not bm!410541))

(assert (not b_lambda!209929))

(assert (not b_lambda!209897))

(assert (not b!5530134))

(assert (not bm!410538))

(assert (not d!1752419))

(assert (not b!5529962))

(assert (not bm!410574))

(assert (not b!5530031))

(assert (not bm!410553))

(assert (not b!5530178))

(assert (not bm!410554))

(assert (not b!5529810))

(assert (not b!5530398))

(assert (not d!1752497))

(assert (not b!5530468))

(assert (not b!5530364))

(assert (not bs!1278435))

(assert (not bm!410573))

(assert (not b!5530333))

(assert (not b_lambda!209901))

(assert (not b!5529964))

(assert (not b!5529965))

(assert (not bs!1278428))

(assert (not b!5530430))

(assert (not bm!410532))

(assert (not b!5530474))

(assert (not b!5530453))

(assert (not d!1752387))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

