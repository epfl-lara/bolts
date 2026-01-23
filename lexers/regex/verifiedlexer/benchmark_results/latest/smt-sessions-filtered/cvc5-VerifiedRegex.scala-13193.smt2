; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719366 () Bool)

(assert start!719366)

(declare-fun b!7370829 () Bool)

(declare-fun res!2974131 () Bool)

(declare-fun e!4412637 () Bool)

(assert (=> b!7370829 (=> (not res!2974131) (not e!4412637))))

(declare-datatypes ((C!38822 0))(
  ( (C!38823 (val!29771 Int)) )
))
(declare-datatypes ((Regex!19274 0))(
  ( (ElementMatch!19274 (c!1369890 C!38822)) (Concat!28119 (regOne!39060 Regex!19274) (regTwo!39060 Regex!19274)) (EmptyExpr!19274) (Star!19274 (reg!19603 Regex!19274)) (EmptyLang!19274) (Union!19274 (regOne!39061 Regex!19274) (regTwo!39061 Regex!19274)) )
))
(declare-datatypes ((List!71770 0))(
  ( (Nil!71646) (Cons!71646 (h!78094 Regex!19274) (t!386231 List!71770)) )
))
(declare-datatypes ((Context!16428 0))(
  ( (Context!16429 (exprs!8714 List!71770)) )
))
(declare-fun cWitness!61 () Context!16428)

(declare-fun lt!2615458 () (Set Context!16428))

(assert (=> b!7370829 (= res!2974131 (set.member cWitness!61 lt!2615458))))

(declare-fun b!7370830 () Bool)

(declare-fun e!4412639 () Bool)

(declare-fun tp_is_empty!48793 () Bool)

(assert (=> b!7370830 (= e!4412639 tp_is_empty!48793)))

(declare-fun b!7370831 () Bool)

(declare-fun e!4412633 () Bool)

(declare-fun tp!2095365 () Bool)

(assert (=> b!7370831 (= e!4412633 tp!2095365)))

(declare-fun b!7370832 () Bool)

(declare-fun res!2974136 () Bool)

(declare-fun e!4412638 () Bool)

(assert (=> b!7370832 (=> (not res!2974136) (not e!4412638))))

(declare-fun r1!2370 () Regex!19274)

(declare-fun validRegex!9870 (Regex!19274) Bool)

(assert (=> b!7370832 (= res!2974136 (validRegex!9870 (regTwo!39060 r1!2370)))))

(declare-fun b!7370833 () Bool)

(declare-fun res!2974133 () Bool)

(assert (=> b!7370833 (=> (not res!2974133) (not e!4412638))))

(declare-fun nullable!8350 (Regex!19274) Bool)

(assert (=> b!7370833 (= res!2974133 (nullable!8350 (regOne!39060 r1!2370)))))

(declare-fun res!2974135 () Bool)

(declare-fun e!4412635 () Bool)

(assert (=> start!719366 (=> (not res!2974135) (not e!4412635))))

(assert (=> start!719366 (= res!2974135 (validRegex!9870 r1!2370))))

(assert (=> start!719366 e!4412635))

(assert (=> start!719366 tp_is_empty!48793))

(declare-fun e!4412636 () Bool)

(declare-fun inv!91526 (Context!16428) Bool)

(assert (=> start!719366 (and (inv!91526 cWitness!61) e!4412636)))

(declare-fun ct1!282 () Context!16428)

(declare-fun e!4412634 () Bool)

(assert (=> start!719366 (and (inv!91526 ct1!282) e!4412634)))

(assert (=> start!719366 e!4412639))

(declare-fun ct2!378 () Context!16428)

(assert (=> start!719366 (and (inv!91526 ct2!378) e!4412633)))

(declare-fun b!7370828 () Bool)

(declare-fun tp!2095364 () Bool)

(declare-fun tp!2095362 () Bool)

(assert (=> b!7370828 (= e!4412639 (and tp!2095364 tp!2095362))))

(declare-fun b!7370834 () Bool)

(declare-fun tp!2095367 () Bool)

(assert (=> b!7370834 (= e!4412634 tp!2095367)))

(declare-fun b!7370835 () Bool)

(assert (=> b!7370835 (= e!4412638 e!4412637)))

(declare-fun res!2974134 () Bool)

(assert (=> b!7370835 (=> (not res!2974134) (not e!4412637))))

(declare-fun c!10362 () C!38822)

(declare-fun lt!2615455 () (Set Context!16428))

(declare-fun derivationStepZipperDown!3100 (Regex!19274 Context!16428 C!38822) (Set Context!16428))

(assert (=> b!7370835 (= res!2974134 (= lt!2615455 (set.union lt!2615458 (derivationStepZipperDown!3100 (regTwo!39060 r1!2370) ct1!282 c!10362))))))

(declare-fun lt!2615452 () Context!16428)

(assert (=> b!7370835 (= lt!2615458 (derivationStepZipperDown!3100 (regOne!39060 r1!2370) lt!2615452 c!10362))))

(declare-fun lt!2615449 () List!71770)

(assert (=> b!7370835 (= lt!2615452 (Context!16429 lt!2615449))))

(declare-fun $colon$colon!3256 (List!71770 Regex!19274) List!71770)

(assert (=> b!7370835 (= lt!2615449 ($colon$colon!3256 (exprs!8714 ct1!282) (regTwo!39060 r1!2370)))))

(declare-fun b!7370836 () Bool)

(declare-fun tp!2095369 () Bool)

(assert (=> b!7370836 (= e!4412639 tp!2095369)))

(declare-fun b!7370837 () Bool)

(declare-fun tp!2095368 () Bool)

(declare-fun tp!2095363 () Bool)

(assert (=> b!7370837 (= e!4412639 (and tp!2095368 tp!2095363))))

(declare-fun b!7370838 () Bool)

(declare-fun e!4412641 () Bool)

(assert (=> b!7370838 (= e!4412635 e!4412641)))

(declare-fun res!2974138 () Bool)

(assert (=> b!7370838 (=> (not res!2974138) (not e!4412641))))

(assert (=> b!7370838 (= res!2974138 (set.member cWitness!61 lt!2615455))))

(assert (=> b!7370838 (= lt!2615455 (derivationStepZipperDown!3100 r1!2370 ct1!282 c!10362))))

(declare-fun b!7370839 () Bool)

(declare-fun e!4412640 () Bool)

(assert (=> b!7370839 (= e!4412637 (not e!4412640))))

(declare-fun res!2974137 () Bool)

(assert (=> b!7370839 (=> res!2974137 e!4412640)))

(declare-fun lt!2615451 () Context!16428)

(declare-fun lt!2615457 () (Set Context!16428))

(assert (=> b!7370839 (= res!2974137 (not (set.member lt!2615451 lt!2615457)))))

(declare-datatypes ((Unit!165497 0))(
  ( (Unit!165498) )
))
(declare-fun lt!2615447 () Unit!165497)

(declare-fun lambda!457972 () Int)

(declare-fun lemmaConcatPreservesForall!1947 (List!71770 List!71770 Int) Unit!165497)

(assert (=> b!7370839 (= lt!2615447 (lemmaConcatPreservesForall!1947 (exprs!8714 cWitness!61) (exprs!8714 ct2!378) lambda!457972))))

(declare-fun ++!17090 (List!71770 List!71770) List!71770)

(assert (=> b!7370839 (set.member lt!2615451 (derivationStepZipperDown!3100 (regOne!39060 r1!2370) (Context!16429 (++!17090 lt!2615449 (exprs!8714 ct2!378))) c!10362))))

(assert (=> b!7370839 (= lt!2615451 (Context!16429 (++!17090 (exprs!8714 cWitness!61) (exprs!8714 ct2!378))))))

(declare-fun lt!2615454 () Unit!165497)

(assert (=> b!7370839 (= lt!2615454 (lemmaConcatPreservesForall!1947 lt!2615449 (exprs!8714 ct2!378) lambda!457972))))

(declare-fun lt!2615450 () Unit!165497)

(assert (=> b!7370839 (= lt!2615450 (lemmaConcatPreservesForall!1947 (exprs!8714 cWitness!61) (exprs!8714 ct2!378) lambda!457972))))

(declare-fun lt!2615446 () Unit!165497)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!133 (Regex!19274 Context!16428 Context!16428 Context!16428 C!38822) Unit!165497)

(assert (=> b!7370839 (= lt!2615446 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!133 (regOne!39060 r1!2370) lt!2615452 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7370840 () Bool)

(declare-fun tp!2095366 () Bool)

(assert (=> b!7370840 (= e!4412636 tp!2095366)))

(declare-fun b!7370841 () Bool)

(assert (=> b!7370841 (= e!4412641 e!4412638)))

(declare-fun res!2974132 () Bool)

(assert (=> b!7370841 (=> (not res!2974132) (not e!4412638))))

(assert (=> b!7370841 (= res!2974132 (and (or (not (is-ElementMatch!19274 r1!2370)) (not (= c!10362 (c!1369890 r1!2370)))) (not (is-Union!19274 r1!2370)) (is-Concat!28119 r1!2370)))))

(assert (=> b!7370841 (= lt!2615457 (derivationStepZipperDown!3100 r1!2370 (Context!16429 (++!17090 (exprs!8714 ct1!282) (exprs!8714 ct2!378))) c!10362))))

(declare-fun lt!2615448 () Unit!165497)

(assert (=> b!7370841 (= lt!2615448 (lemmaConcatPreservesForall!1947 (exprs!8714 ct1!282) (exprs!8714 ct2!378) lambda!457972))))

(declare-fun b!7370842 () Bool)

(assert (=> b!7370842 (= e!4412640 (inv!91526 lt!2615451))))

(declare-fun lt!2615456 () Unit!165497)

(assert (=> b!7370842 (= lt!2615456 (lemmaConcatPreservesForall!1947 (exprs!8714 ct1!282) (exprs!8714 ct2!378) lambda!457972))))

(declare-fun lt!2615453 () Unit!165497)

(assert (=> b!7370842 (= lt!2615453 (lemmaConcatPreservesForall!1947 (exprs!8714 cWitness!61) (exprs!8714 ct2!378) lambda!457972))))

(assert (= (and start!719366 res!2974135) b!7370838))

(assert (= (and b!7370838 res!2974138) b!7370841))

(assert (= (and b!7370841 res!2974132) b!7370833))

(assert (= (and b!7370833 res!2974133) b!7370832))

(assert (= (and b!7370832 res!2974136) b!7370835))

(assert (= (and b!7370835 res!2974134) b!7370829))

(assert (= (and b!7370829 res!2974131) b!7370839))

(assert (= (and b!7370839 (not res!2974137)) b!7370842))

(assert (= start!719366 b!7370840))

(assert (= start!719366 b!7370834))

(assert (= (and start!719366 (is-ElementMatch!19274 r1!2370)) b!7370830))

(assert (= (and start!719366 (is-Concat!28119 r1!2370)) b!7370837))

(assert (= (and start!719366 (is-Star!19274 r1!2370)) b!7370836))

(assert (= (and start!719366 (is-Union!19274 r1!2370)) b!7370828))

(assert (= start!719366 b!7370831))

(declare-fun m!8024658 () Bool)

(assert (=> b!7370829 m!8024658))

(declare-fun m!8024660 () Bool)

(assert (=> b!7370832 m!8024660))

(declare-fun m!8024662 () Bool)

(assert (=> start!719366 m!8024662))

(declare-fun m!8024664 () Bool)

(assert (=> start!719366 m!8024664))

(declare-fun m!8024666 () Bool)

(assert (=> start!719366 m!8024666))

(declare-fun m!8024668 () Bool)

(assert (=> start!719366 m!8024668))

(declare-fun m!8024670 () Bool)

(assert (=> b!7370841 m!8024670))

(declare-fun m!8024672 () Bool)

(assert (=> b!7370841 m!8024672))

(declare-fun m!8024674 () Bool)

(assert (=> b!7370841 m!8024674))

(declare-fun m!8024676 () Bool)

(assert (=> b!7370835 m!8024676))

(declare-fun m!8024678 () Bool)

(assert (=> b!7370835 m!8024678))

(declare-fun m!8024680 () Bool)

(assert (=> b!7370835 m!8024680))

(declare-fun m!8024682 () Bool)

(assert (=> b!7370838 m!8024682))

(declare-fun m!8024684 () Bool)

(assert (=> b!7370838 m!8024684))

(declare-fun m!8024686 () Bool)

(assert (=> b!7370833 m!8024686))

(declare-fun m!8024688 () Bool)

(assert (=> b!7370842 m!8024688))

(assert (=> b!7370842 m!8024674))

(declare-fun m!8024690 () Bool)

(assert (=> b!7370842 m!8024690))

(declare-fun m!8024692 () Bool)

(assert (=> b!7370839 m!8024692))

(declare-fun m!8024694 () Bool)

(assert (=> b!7370839 m!8024694))

(assert (=> b!7370839 m!8024690))

(assert (=> b!7370839 m!8024690))

(declare-fun m!8024696 () Bool)

(assert (=> b!7370839 m!8024696))

(declare-fun m!8024698 () Bool)

(assert (=> b!7370839 m!8024698))

(declare-fun m!8024700 () Bool)

(assert (=> b!7370839 m!8024700))

(declare-fun m!8024702 () Bool)

(assert (=> b!7370839 m!8024702))

(declare-fun m!8024704 () Bool)

(assert (=> b!7370839 m!8024704))

(push 1)

(assert (not b!7370836))

(assert tp_is_empty!48793)

(assert (not b!7370831))

(assert (not b!7370837))

(assert (not b!7370833))

(assert (not b!7370828))

(assert (not b!7370839))

(assert (not b!7370832))

(assert (not b!7370841))

(assert (not b!7370838))

(assert (not b!7370840))

(assert (not start!719366))

(assert (not b!7370835))

(assert (not b!7370842))

(assert (not b!7370834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!676927 () Bool)

(declare-fun c!1369904 () Bool)

(declare-fun call!676932 () List!71770)

(declare-fun c!1369905 () Bool)

(assert (=> bm!676927 (= call!676932 ($colon$colon!3256 (exprs!8714 (Context!16429 (++!17090 (exprs!8714 ct1!282) (exprs!8714 ct2!378)))) (ite (or c!1369905 c!1369904) (regTwo!39060 r1!2370) r1!2370)))))

(declare-fun bm!676928 () Bool)

(declare-fun call!676933 () (Set Context!16428))

(declare-fun call!676934 () (Set Context!16428))

(assert (=> bm!676928 (= call!676933 call!676934)))

(declare-fun b!7370910 () Bool)

(declare-fun e!4412681 () (Set Context!16428))

(declare-fun call!676936 () (Set Context!16428))

(assert (=> b!7370910 (= e!4412681 call!676936)))

(declare-fun b!7370911 () Bool)

(declare-fun e!4412682 () (Set Context!16428))

(declare-fun call!676937 () (Set Context!16428))

(assert (=> b!7370911 (= e!4412682 (set.union call!676934 call!676937))))

(declare-fun bm!676929 () Bool)

(declare-fun call!676935 () List!71770)

(assert (=> bm!676929 (= call!676935 call!676932)))

(declare-fun b!7370912 () Bool)

(declare-fun c!1369902 () Bool)

(assert (=> b!7370912 (= c!1369902 (is-Star!19274 r1!2370))))

(declare-fun e!4412685 () (Set Context!16428))

(assert (=> b!7370912 (= e!4412681 e!4412685)))

(declare-fun bm!676930 () Bool)

(assert (=> bm!676930 (= call!676936 call!676933)))

(declare-fun bm!676931 () Bool)

(declare-fun c!1369903 () Bool)

(assert (=> bm!676931 (= call!676934 (derivationStepZipperDown!3100 (ite c!1369903 (regOne!39061 r1!2370) (ite c!1369905 (regTwo!39060 r1!2370) (ite c!1369904 (regOne!39060 r1!2370) (reg!19603 r1!2370)))) (ite (or c!1369903 c!1369905) (Context!16429 (++!17090 (exprs!8714 ct1!282) (exprs!8714 ct2!378))) (Context!16429 call!676935)) c!10362))))

(declare-fun b!7370913 () Bool)

(declare-fun e!4412684 () (Set Context!16428))

(assert (=> b!7370913 (= e!4412684 e!4412682)))

(assert (=> b!7370913 (= c!1369903 (is-Union!19274 r1!2370))))

(declare-fun b!7370914 () Bool)

(declare-fun e!4412683 () Bool)

(assert (=> b!7370914 (= c!1369905 e!4412683)))

(declare-fun res!2974165 () Bool)

(assert (=> b!7370914 (=> (not res!2974165) (not e!4412683))))

(assert (=> b!7370914 (= res!2974165 (is-Concat!28119 r1!2370))))

(declare-fun e!4412686 () (Set Context!16428))

(assert (=> b!7370914 (= e!4412682 e!4412686)))

(declare-fun b!7370915 () Bool)

(assert (=> b!7370915 (= e!4412685 call!676936)))

(declare-fun b!7370916 () Bool)

(assert (=> b!7370916 (= e!4412685 (as set.empty (Set Context!16428)))))

(declare-fun d!2283784 () Bool)

(declare-fun c!1369906 () Bool)

(assert (=> d!2283784 (= c!1369906 (and (is-ElementMatch!19274 r1!2370) (= (c!1369890 r1!2370) c!10362)))))

(assert (=> d!2283784 (= (derivationStepZipperDown!3100 r1!2370 (Context!16429 (++!17090 (exprs!8714 ct1!282) (exprs!8714 ct2!378))) c!10362) e!4412684)))

(declare-fun bm!676932 () Bool)

(assert (=> bm!676932 (= call!676937 (derivationStepZipperDown!3100 (ite c!1369903 (regTwo!39061 r1!2370) (regOne!39060 r1!2370)) (ite c!1369903 (Context!16429 (++!17090 (exprs!8714 ct1!282) (exprs!8714 ct2!378))) (Context!16429 call!676932)) c!10362))))

(declare-fun b!7370917 () Bool)

(assert (=> b!7370917 (= e!4412686 (set.union call!676937 call!676933))))

(declare-fun b!7370918 () Bool)

(assert (=> b!7370918 (= e!4412683 (nullable!8350 (regOne!39060 r1!2370)))))

(declare-fun b!7370919 () Bool)

(assert (=> b!7370919 (= e!4412684 (set.insert (Context!16429 (++!17090 (exprs!8714 ct1!282) (exprs!8714 ct2!378))) (as set.empty (Set Context!16428))))))

(declare-fun b!7370920 () Bool)

(assert (=> b!7370920 (= e!4412686 e!4412681)))

(assert (=> b!7370920 (= c!1369904 (is-Concat!28119 r1!2370))))

(assert (= (and d!2283784 c!1369906) b!7370919))

(assert (= (and d!2283784 (not c!1369906)) b!7370913))

(assert (= (and b!7370913 c!1369903) b!7370911))

(assert (= (and b!7370913 (not c!1369903)) b!7370914))

(assert (= (and b!7370914 res!2974165) b!7370918))

(assert (= (and b!7370914 c!1369905) b!7370917))

(assert (= (and b!7370914 (not c!1369905)) b!7370920))

(assert (= (and b!7370920 c!1369904) b!7370910))

(assert (= (and b!7370920 (not c!1369904)) b!7370912))

(assert (= (and b!7370912 c!1369902) b!7370915))

(assert (= (and b!7370912 (not c!1369902)) b!7370916))

(assert (= (or b!7370910 b!7370915) bm!676929))

(assert (= (or b!7370910 b!7370915) bm!676930))

(assert (= (or b!7370917 bm!676930) bm!676928))

(assert (= (or b!7370917 bm!676929) bm!676927))

(assert (= (or b!7370911 b!7370917) bm!676932))

(assert (= (or b!7370911 bm!676928) bm!676931))

(declare-fun m!8024756 () Bool)

(assert (=> b!7370919 m!8024756))

(assert (=> b!7370918 m!8024686))

(declare-fun m!8024758 () Bool)

(assert (=> bm!676927 m!8024758))

(declare-fun m!8024760 () Bool)

(assert (=> bm!676932 m!8024760))

(declare-fun m!8024762 () Bool)

(assert (=> bm!676931 m!8024762))

(assert (=> b!7370841 d!2283784))

(declare-fun d!2283790 () Bool)

(declare-fun e!4412692 () Bool)

(assert (=> d!2283790 e!4412692))

(declare-fun res!2974171 () Bool)

(assert (=> d!2283790 (=> (not res!2974171) (not e!4412692))))

(declare-fun lt!2615500 () List!71770)

(declare-fun content!15154 (List!71770) (Set Regex!19274))

(assert (=> d!2283790 (= res!2974171 (= (content!15154 lt!2615500) (set.union (content!15154 (exprs!8714 ct1!282)) (content!15154 (exprs!8714 ct2!378)))))))

(declare-fun e!4412691 () List!71770)

(assert (=> d!2283790 (= lt!2615500 e!4412691)))

(declare-fun c!1369909 () Bool)

(assert (=> d!2283790 (= c!1369909 (is-Nil!71646 (exprs!8714 ct1!282)))))

(assert (=> d!2283790 (= (++!17090 (exprs!8714 ct1!282) (exprs!8714 ct2!378)) lt!2615500)))

(declare-fun b!7370930 () Bool)

(assert (=> b!7370930 (= e!4412691 (Cons!71646 (h!78094 (exprs!8714 ct1!282)) (++!17090 (t!386231 (exprs!8714 ct1!282)) (exprs!8714 ct2!378))))))

(declare-fun b!7370932 () Bool)

(assert (=> b!7370932 (= e!4412692 (or (not (= (exprs!8714 ct2!378) Nil!71646)) (= lt!2615500 (exprs!8714 ct1!282))))))

(declare-fun b!7370931 () Bool)

(declare-fun res!2974170 () Bool)

(assert (=> b!7370931 (=> (not res!2974170) (not e!4412692))))

(declare-fun size!42132 (List!71770) Int)

(assert (=> b!7370931 (= res!2974170 (= (size!42132 lt!2615500) (+ (size!42132 (exprs!8714 ct1!282)) (size!42132 (exprs!8714 ct2!378)))))))

(declare-fun b!7370929 () Bool)

(assert (=> b!7370929 (= e!4412691 (exprs!8714 ct2!378))))

(assert (= (and d!2283790 c!1369909) b!7370929))

(assert (= (and d!2283790 (not c!1369909)) b!7370930))

(assert (= (and d!2283790 res!2974171) b!7370931))

(assert (= (and b!7370931 res!2974170) b!7370932))

(declare-fun m!8024764 () Bool)

(assert (=> d!2283790 m!8024764))

(declare-fun m!8024766 () Bool)

(assert (=> d!2283790 m!8024766))

(declare-fun m!8024768 () Bool)

(assert (=> d!2283790 m!8024768))

(declare-fun m!8024770 () Bool)

(assert (=> b!7370930 m!8024770))

(declare-fun m!8024772 () Bool)

(assert (=> b!7370931 m!8024772))

(declare-fun m!8024774 () Bool)

(assert (=> b!7370931 m!8024774))

(declare-fun m!8024776 () Bool)

(assert (=> b!7370931 m!8024776))

(assert (=> b!7370841 d!2283790))

(declare-fun d!2283792 () Bool)

(declare-fun forall!18080 (List!71770 Int) Bool)

(assert (=> d!2283792 (forall!18080 (++!17090 (exprs!8714 ct1!282) (exprs!8714 ct2!378)) lambda!457972)))

(declare-fun lt!2615503 () Unit!165497)

(declare-fun choose!57301 (List!71770 List!71770 Int) Unit!165497)

(assert (=> d!2283792 (= lt!2615503 (choose!57301 (exprs!8714 ct1!282) (exprs!8714 ct2!378) lambda!457972))))

(assert (=> d!2283792 (forall!18080 (exprs!8714 ct1!282) lambda!457972)))

(assert (=> d!2283792 (= (lemmaConcatPreservesForall!1947 (exprs!8714 ct1!282) (exprs!8714 ct2!378) lambda!457972) lt!2615503)))

(declare-fun bs!1920869 () Bool)

(assert (= bs!1920869 d!2283792))

(assert (=> bs!1920869 m!8024670))

(assert (=> bs!1920869 m!8024670))

(declare-fun m!8024778 () Bool)

(assert (=> bs!1920869 m!8024778))

(declare-fun m!8024780 () Bool)

(assert (=> bs!1920869 m!8024780))

(declare-fun m!8024782 () Bool)

(assert (=> bs!1920869 m!8024782))

(assert (=> b!7370841 d!2283792))

(declare-fun bm!676933 () Bool)

(declare-fun c!1369923 () Bool)

(declare-fun c!1369922 () Bool)

(declare-fun call!676938 () List!71770)

(assert (=> bm!676933 (= call!676938 ($colon$colon!3256 (exprs!8714 ct1!282) (ite (or c!1369923 c!1369922) (regTwo!39060 (regTwo!39060 r1!2370)) (regTwo!39060 r1!2370))))))

(declare-fun bm!676934 () Bool)

(declare-fun call!676939 () (Set Context!16428))

(declare-fun call!676940 () (Set Context!16428))

(assert (=> bm!676934 (= call!676939 call!676940)))

(declare-fun b!7370955 () Bool)

(declare-fun e!4412705 () (Set Context!16428))

(declare-fun call!676942 () (Set Context!16428))

(assert (=> b!7370955 (= e!4412705 call!676942)))

(declare-fun b!7370956 () Bool)

(declare-fun e!4412706 () (Set Context!16428))

(declare-fun call!676943 () (Set Context!16428))

(assert (=> b!7370956 (= e!4412706 (set.union call!676940 call!676943))))

(declare-fun bm!676935 () Bool)

(declare-fun call!676941 () List!71770)

(assert (=> bm!676935 (= call!676941 call!676938)))

(declare-fun b!7370957 () Bool)

(declare-fun c!1369920 () Bool)

(assert (=> b!7370957 (= c!1369920 (is-Star!19274 (regTwo!39060 r1!2370)))))

(declare-fun e!4412709 () (Set Context!16428))

(assert (=> b!7370957 (= e!4412705 e!4412709)))

(declare-fun bm!676936 () Bool)

(assert (=> bm!676936 (= call!676942 call!676939)))

(declare-fun c!1369921 () Bool)

(declare-fun bm!676937 () Bool)

(assert (=> bm!676937 (= call!676940 (derivationStepZipperDown!3100 (ite c!1369921 (regOne!39061 (regTwo!39060 r1!2370)) (ite c!1369923 (regTwo!39060 (regTwo!39060 r1!2370)) (ite c!1369922 (regOne!39060 (regTwo!39060 r1!2370)) (reg!19603 (regTwo!39060 r1!2370))))) (ite (or c!1369921 c!1369923) ct1!282 (Context!16429 call!676941)) c!10362))))

(declare-fun b!7370958 () Bool)

(declare-fun e!4412708 () (Set Context!16428))

(assert (=> b!7370958 (= e!4412708 e!4412706)))

(assert (=> b!7370958 (= c!1369921 (is-Union!19274 (regTwo!39060 r1!2370)))))

(declare-fun b!7370959 () Bool)

(declare-fun e!4412707 () Bool)

(assert (=> b!7370959 (= c!1369923 e!4412707)))

(declare-fun res!2974174 () Bool)

(assert (=> b!7370959 (=> (not res!2974174) (not e!4412707))))

(assert (=> b!7370959 (= res!2974174 (is-Concat!28119 (regTwo!39060 r1!2370)))))

(declare-fun e!4412710 () (Set Context!16428))

(assert (=> b!7370959 (= e!4412706 e!4412710)))

(declare-fun b!7370960 () Bool)

(assert (=> b!7370960 (= e!4412709 call!676942)))

(declare-fun b!7370961 () Bool)

(assert (=> b!7370961 (= e!4412709 (as set.empty (Set Context!16428)))))

(declare-fun d!2283794 () Bool)

(declare-fun c!1369924 () Bool)

(assert (=> d!2283794 (= c!1369924 (and (is-ElementMatch!19274 (regTwo!39060 r1!2370)) (= (c!1369890 (regTwo!39060 r1!2370)) c!10362)))))

(assert (=> d!2283794 (= (derivationStepZipperDown!3100 (regTwo!39060 r1!2370) ct1!282 c!10362) e!4412708)))

(declare-fun bm!676938 () Bool)

(assert (=> bm!676938 (= call!676943 (derivationStepZipperDown!3100 (ite c!1369921 (regTwo!39061 (regTwo!39060 r1!2370)) (regOne!39060 (regTwo!39060 r1!2370))) (ite c!1369921 ct1!282 (Context!16429 call!676938)) c!10362))))

(declare-fun b!7370962 () Bool)

(assert (=> b!7370962 (= e!4412710 (set.union call!676943 call!676939))))

(declare-fun b!7370963 () Bool)

(assert (=> b!7370963 (= e!4412707 (nullable!8350 (regOne!39060 (regTwo!39060 r1!2370))))))

(declare-fun b!7370964 () Bool)

(assert (=> b!7370964 (= e!4412708 (set.insert ct1!282 (as set.empty (Set Context!16428))))))

(declare-fun b!7370965 () Bool)

(assert (=> b!7370965 (= e!4412710 e!4412705)))

(assert (=> b!7370965 (= c!1369922 (is-Concat!28119 (regTwo!39060 r1!2370)))))

(assert (= (and d!2283794 c!1369924) b!7370964))

(assert (= (and d!2283794 (not c!1369924)) b!7370958))

(assert (= (and b!7370958 c!1369921) b!7370956))

(assert (= (and b!7370958 (not c!1369921)) b!7370959))

(assert (= (and b!7370959 res!2974174) b!7370963))

(assert (= (and b!7370959 c!1369923) b!7370962))

(assert (= (and b!7370959 (not c!1369923)) b!7370965))

(assert (= (and b!7370965 c!1369922) b!7370955))

(assert (= (and b!7370965 (not c!1369922)) b!7370957))

(assert (= (and b!7370957 c!1369920) b!7370960))

(assert (= (and b!7370957 (not c!1369920)) b!7370961))

(assert (= (or b!7370955 b!7370960) bm!676935))

(assert (= (or b!7370955 b!7370960) bm!676936))

(assert (= (or b!7370962 bm!676936) bm!676934))

(assert (= (or b!7370962 bm!676935) bm!676933))

(assert (= (or b!7370956 b!7370962) bm!676938))

(assert (= (or b!7370956 bm!676934) bm!676937))

(declare-fun m!8024784 () Bool)

(assert (=> b!7370964 m!8024784))

(declare-fun m!8024786 () Bool)

(assert (=> b!7370963 m!8024786))

(declare-fun m!8024788 () Bool)

(assert (=> bm!676933 m!8024788))

(declare-fun m!8024790 () Bool)

(assert (=> bm!676938 m!8024790))

(declare-fun m!8024792 () Bool)

(assert (=> bm!676937 m!8024792))

(assert (=> b!7370835 d!2283794))

(declare-fun c!1369928 () Bool)

(declare-fun call!676946 () List!71770)

(declare-fun bm!676941 () Bool)

(declare-fun c!1369927 () Bool)

(assert (=> bm!676941 (= call!676946 ($colon$colon!3256 (exprs!8714 lt!2615452) (ite (or c!1369928 c!1369927) (regTwo!39060 (regOne!39060 r1!2370)) (regOne!39060 r1!2370))))))

(declare-fun bm!676942 () Bool)

(declare-fun call!676947 () (Set Context!16428))

(declare-fun call!676948 () (Set Context!16428))

(assert (=> bm!676942 (= call!676947 call!676948)))

(declare-fun b!7370966 () Bool)

(declare-fun e!4412711 () (Set Context!16428))

(declare-fun call!676950 () (Set Context!16428))

(assert (=> b!7370966 (= e!4412711 call!676950)))

(declare-fun b!7370967 () Bool)

(declare-fun e!4412712 () (Set Context!16428))

(declare-fun call!676951 () (Set Context!16428))

(assert (=> b!7370967 (= e!4412712 (set.union call!676948 call!676951))))

(declare-fun bm!676943 () Bool)

(declare-fun call!676949 () List!71770)

(assert (=> bm!676943 (= call!676949 call!676946)))

(declare-fun b!7370968 () Bool)

(declare-fun c!1369925 () Bool)

(assert (=> b!7370968 (= c!1369925 (is-Star!19274 (regOne!39060 r1!2370)))))

(declare-fun e!4412715 () (Set Context!16428))

(assert (=> b!7370968 (= e!4412711 e!4412715)))

(declare-fun bm!676944 () Bool)

(assert (=> bm!676944 (= call!676950 call!676947)))

(declare-fun c!1369926 () Bool)

(declare-fun bm!676945 () Bool)

(assert (=> bm!676945 (= call!676948 (derivationStepZipperDown!3100 (ite c!1369926 (regOne!39061 (regOne!39060 r1!2370)) (ite c!1369928 (regTwo!39060 (regOne!39060 r1!2370)) (ite c!1369927 (regOne!39060 (regOne!39060 r1!2370)) (reg!19603 (regOne!39060 r1!2370))))) (ite (or c!1369926 c!1369928) lt!2615452 (Context!16429 call!676949)) c!10362))))

(declare-fun b!7370969 () Bool)

(declare-fun e!4412714 () (Set Context!16428))

(assert (=> b!7370969 (= e!4412714 e!4412712)))

(assert (=> b!7370969 (= c!1369926 (is-Union!19274 (regOne!39060 r1!2370)))))

(declare-fun b!7370970 () Bool)

(declare-fun e!4412713 () Bool)

(assert (=> b!7370970 (= c!1369928 e!4412713)))

(declare-fun res!2974175 () Bool)

(assert (=> b!7370970 (=> (not res!2974175) (not e!4412713))))

(assert (=> b!7370970 (= res!2974175 (is-Concat!28119 (regOne!39060 r1!2370)))))

(declare-fun e!4412716 () (Set Context!16428))

(assert (=> b!7370970 (= e!4412712 e!4412716)))

(declare-fun b!7370971 () Bool)

(assert (=> b!7370971 (= e!4412715 call!676950)))

(declare-fun b!7370972 () Bool)

(assert (=> b!7370972 (= e!4412715 (as set.empty (Set Context!16428)))))

(declare-fun d!2283796 () Bool)

(declare-fun c!1369929 () Bool)

(assert (=> d!2283796 (= c!1369929 (and (is-ElementMatch!19274 (regOne!39060 r1!2370)) (= (c!1369890 (regOne!39060 r1!2370)) c!10362)))))

(assert (=> d!2283796 (= (derivationStepZipperDown!3100 (regOne!39060 r1!2370) lt!2615452 c!10362) e!4412714)))

(declare-fun bm!676946 () Bool)

(assert (=> bm!676946 (= call!676951 (derivationStepZipperDown!3100 (ite c!1369926 (regTwo!39061 (regOne!39060 r1!2370)) (regOne!39060 (regOne!39060 r1!2370))) (ite c!1369926 lt!2615452 (Context!16429 call!676946)) c!10362))))

(declare-fun b!7370973 () Bool)

(assert (=> b!7370973 (= e!4412716 (set.union call!676951 call!676947))))

(declare-fun b!7370974 () Bool)

(assert (=> b!7370974 (= e!4412713 (nullable!8350 (regOne!39060 (regOne!39060 r1!2370))))))

(declare-fun b!7370975 () Bool)

(assert (=> b!7370975 (= e!4412714 (set.insert lt!2615452 (as set.empty (Set Context!16428))))))

(declare-fun b!7370976 () Bool)

(assert (=> b!7370976 (= e!4412716 e!4412711)))

(assert (=> b!7370976 (= c!1369927 (is-Concat!28119 (regOne!39060 r1!2370)))))

(assert (= (and d!2283796 c!1369929) b!7370975))

(assert (= (and d!2283796 (not c!1369929)) b!7370969))

(assert (= (and b!7370969 c!1369926) b!7370967))

(assert (= (and b!7370969 (not c!1369926)) b!7370970))

(assert (= (and b!7370970 res!2974175) b!7370974))

(assert (= (and b!7370970 c!1369928) b!7370973))

(assert (= (and b!7370970 (not c!1369928)) b!7370976))

(assert (= (and b!7370976 c!1369927) b!7370966))

(assert (= (and b!7370976 (not c!1369927)) b!7370968))

(assert (= (and b!7370968 c!1369925) b!7370971))

(assert (= (and b!7370968 (not c!1369925)) b!7370972))

(assert (= (or b!7370966 b!7370971) bm!676943))

(assert (= (or b!7370966 b!7370971) bm!676944))

(assert (= (or b!7370973 bm!676944) bm!676942))

(assert (= (or b!7370973 bm!676943) bm!676941))

(assert (= (or b!7370967 b!7370973) bm!676946))

(assert (= (or b!7370967 bm!676942) bm!676945))

(declare-fun m!8024794 () Bool)

(assert (=> b!7370975 m!8024794))

(declare-fun m!8024796 () Bool)

(assert (=> b!7370974 m!8024796))

(declare-fun m!8024798 () Bool)

(assert (=> bm!676941 m!8024798))

(declare-fun m!8024800 () Bool)

(assert (=> bm!676946 m!8024800))

(declare-fun m!8024802 () Bool)

(assert (=> bm!676945 m!8024802))

(assert (=> b!7370835 d!2283796))

(declare-fun d!2283798 () Bool)

(assert (=> d!2283798 (= ($colon$colon!3256 (exprs!8714 ct1!282) (regTwo!39060 r1!2370)) (Cons!71646 (regTwo!39060 r1!2370) (exprs!8714 ct1!282)))))

(assert (=> b!7370835 d!2283798))

(declare-fun b!7370995 () Bool)

(declare-fun e!4412734 () Bool)

(declare-fun e!4412735 () Bool)

(assert (=> b!7370995 (= e!4412734 e!4412735)))

(declare-fun c!1369934 () Bool)

(assert (=> b!7370995 (= c!1369934 (is-Union!19274 r1!2370))))

(declare-fun b!7370996 () Bool)

(declare-fun e!4412736 () Bool)

(assert (=> b!7370996 (= e!4412736 e!4412734)))

(declare-fun c!1369935 () Bool)

(assert (=> b!7370996 (= c!1369935 (is-Star!19274 r1!2370))))

(declare-fun bm!676963 () Bool)

(declare-fun call!676969 () Bool)

(declare-fun call!676968 () Bool)

(assert (=> bm!676963 (= call!676969 call!676968)))

(declare-fun b!7370997 () Bool)

(declare-fun res!2974188 () Bool)

(declare-fun e!4412731 () Bool)

(assert (=> b!7370997 (=> res!2974188 e!4412731)))

(assert (=> b!7370997 (= res!2974188 (not (is-Concat!28119 r1!2370)))))

(assert (=> b!7370997 (= e!4412735 e!4412731)))

(declare-fun bm!676964 () Bool)

(declare-fun call!676970 () Bool)

(assert (=> bm!676964 (= call!676970 (validRegex!9870 (ite c!1369934 (regOne!39061 r1!2370) (regTwo!39060 r1!2370))))))

(declare-fun bm!676965 () Bool)

(assert (=> bm!676965 (= call!676968 (validRegex!9870 (ite c!1369935 (reg!19603 r1!2370) (ite c!1369934 (regTwo!39061 r1!2370) (regOne!39060 r1!2370)))))))

(declare-fun b!7370998 () Bool)

(declare-fun res!2974189 () Bool)

(declare-fun e!4412737 () Bool)

(assert (=> b!7370998 (=> (not res!2974189) (not e!4412737))))

(assert (=> b!7370998 (= res!2974189 call!676970)))

(assert (=> b!7370998 (= e!4412735 e!4412737)))

(declare-fun b!7370999 () Bool)

(declare-fun e!4412732 () Bool)

(assert (=> b!7370999 (= e!4412731 e!4412732)))

(declare-fun res!2974186 () Bool)

(assert (=> b!7370999 (=> (not res!2974186) (not e!4412732))))

(assert (=> b!7370999 (= res!2974186 call!676969)))

(declare-fun b!7371000 () Bool)

(assert (=> b!7371000 (= e!4412732 call!676970)))

(declare-fun b!7371002 () Bool)

(declare-fun e!4412733 () Bool)

(assert (=> b!7371002 (= e!4412734 e!4412733)))

(declare-fun res!2974187 () Bool)

(assert (=> b!7371002 (= res!2974187 (not (nullable!8350 (reg!19603 r1!2370))))))

(assert (=> b!7371002 (=> (not res!2974187) (not e!4412733))))

(declare-fun b!7371003 () Bool)

(assert (=> b!7371003 (= e!4412737 call!676969)))

(declare-fun b!7371001 () Bool)

(assert (=> b!7371001 (= e!4412733 call!676968)))

(declare-fun d!2283800 () Bool)

(declare-fun res!2974190 () Bool)

(assert (=> d!2283800 (=> res!2974190 e!4412736)))

(assert (=> d!2283800 (= res!2974190 (is-ElementMatch!19274 r1!2370))))

(assert (=> d!2283800 (= (validRegex!9870 r1!2370) e!4412736)))

(assert (= (and d!2283800 (not res!2974190)) b!7370996))

(assert (= (and b!7370996 c!1369935) b!7371002))

(assert (= (and b!7370996 (not c!1369935)) b!7370995))

(assert (= (and b!7371002 res!2974187) b!7371001))

(assert (= (and b!7370995 c!1369934) b!7370998))

(assert (= (and b!7370995 (not c!1369934)) b!7370997))

(assert (= (and b!7370998 res!2974189) b!7371003))

(assert (= (and b!7370997 (not res!2974188)) b!7370999))

(assert (= (and b!7370999 res!2974186) b!7371000))

(assert (= (or b!7370998 b!7371000) bm!676964))

(assert (= (or b!7371003 b!7370999) bm!676963))

(assert (= (or b!7371001 bm!676963) bm!676965))

(declare-fun m!8024804 () Bool)

(assert (=> bm!676964 m!8024804))

(declare-fun m!8024806 () Bool)

(assert (=> bm!676965 m!8024806))

(declare-fun m!8024808 () Bool)

(assert (=> b!7371002 m!8024808))

(assert (=> start!719366 d!2283800))

(declare-fun bs!1920870 () Bool)

(declare-fun d!2283802 () Bool)

(assert (= bs!1920870 (and d!2283802 b!7370841)))

(declare-fun lambda!457988 () Int)

(assert (=> bs!1920870 (= lambda!457988 lambda!457972)))

(assert (=> d!2283802 (= (inv!91526 cWitness!61) (forall!18080 (exprs!8714 cWitness!61) lambda!457988))))

(declare-fun bs!1920871 () Bool)

(assert (= bs!1920871 d!2283802))

(declare-fun m!8024810 () Bool)

(assert (=> bs!1920871 m!8024810))

(assert (=> start!719366 d!2283802))

(declare-fun bs!1920872 () Bool)

(declare-fun d!2283804 () Bool)

(assert (= bs!1920872 (and d!2283804 b!7370841)))

(declare-fun lambda!457989 () Int)

(assert (=> bs!1920872 (= lambda!457989 lambda!457972)))

(declare-fun bs!1920873 () Bool)

(assert (= bs!1920873 (and d!2283804 d!2283802)))

(assert (=> bs!1920873 (= lambda!457989 lambda!457988)))

(assert (=> d!2283804 (= (inv!91526 ct1!282) (forall!18080 (exprs!8714 ct1!282) lambda!457989))))

(declare-fun bs!1920874 () Bool)

(assert (= bs!1920874 d!2283804))

(declare-fun m!8024812 () Bool)

(assert (=> bs!1920874 m!8024812))

(assert (=> start!719366 d!2283804))

(declare-fun bs!1920875 () Bool)

(declare-fun d!2283806 () Bool)

(assert (= bs!1920875 (and d!2283806 b!7370841)))

(declare-fun lambda!457990 () Int)

(assert (=> bs!1920875 (= lambda!457990 lambda!457972)))

(declare-fun bs!1920876 () Bool)

(assert (= bs!1920876 (and d!2283806 d!2283802)))

(assert (=> bs!1920876 (= lambda!457990 lambda!457988)))

(declare-fun bs!1920877 () Bool)

(assert (= bs!1920877 (and d!2283806 d!2283804)))

(assert (=> bs!1920877 (= lambda!457990 lambda!457989)))

(assert (=> d!2283806 (= (inv!91526 ct2!378) (forall!18080 (exprs!8714 ct2!378) lambda!457990))))

(declare-fun bs!1920878 () Bool)

(assert (= bs!1920878 d!2283806))

(declare-fun m!8024814 () Bool)

(assert (=> bs!1920878 m!8024814))

(assert (=> start!719366 d!2283806))

(declare-fun d!2283808 () Bool)

(assert (=> d!2283808 (forall!18080 (++!17090 (exprs!8714 cWitness!61) (exprs!8714 ct2!378)) lambda!457972)))

(declare-fun lt!2615504 () Unit!165497)

(assert (=> d!2283808 (= lt!2615504 (choose!57301 (exprs!8714 cWitness!61) (exprs!8714 ct2!378) lambda!457972))))

(assert (=> d!2283808 (forall!18080 (exprs!8714 cWitness!61) lambda!457972)))

(assert (=> d!2283808 (= (lemmaConcatPreservesForall!1947 (exprs!8714 cWitness!61) (exprs!8714 ct2!378) lambda!457972) lt!2615504)))

(declare-fun bs!1920879 () Bool)

(assert (= bs!1920879 d!2283808))

(assert (=> bs!1920879 m!8024704))

(assert (=> bs!1920879 m!8024704))

(declare-fun m!8024816 () Bool)

(assert (=> bs!1920879 m!8024816))

(declare-fun m!8024818 () Bool)

(assert (=> bs!1920879 m!8024818))

(declare-fun m!8024820 () Bool)

(assert (=> bs!1920879 m!8024820))

(assert (=> b!7370839 d!2283808))

(declare-fun d!2283810 () Bool)

(declare-fun e!4412739 () Bool)

(assert (=> d!2283810 e!4412739))

(declare-fun res!2974192 () Bool)

(assert (=> d!2283810 (=> (not res!2974192) (not e!4412739))))

(declare-fun lt!2615505 () List!71770)

(assert (=> d!2283810 (= res!2974192 (= (content!15154 lt!2615505) (set.union (content!15154 (exprs!8714 cWitness!61)) (content!15154 (exprs!8714 ct2!378)))))))

(declare-fun e!4412738 () List!71770)

(assert (=> d!2283810 (= lt!2615505 e!4412738)))

(declare-fun c!1369936 () Bool)

(assert (=> d!2283810 (= c!1369936 (is-Nil!71646 (exprs!8714 cWitness!61)))))

(assert (=> d!2283810 (= (++!17090 (exprs!8714 cWitness!61) (exprs!8714 ct2!378)) lt!2615505)))

(declare-fun b!7371005 () Bool)

(assert (=> b!7371005 (= e!4412738 (Cons!71646 (h!78094 (exprs!8714 cWitness!61)) (++!17090 (t!386231 (exprs!8714 cWitness!61)) (exprs!8714 ct2!378))))))

(declare-fun b!7371007 () Bool)

(assert (=> b!7371007 (= e!4412739 (or (not (= (exprs!8714 ct2!378) Nil!71646)) (= lt!2615505 (exprs!8714 cWitness!61))))))

(declare-fun b!7371006 () Bool)

(declare-fun res!2974191 () Bool)

(assert (=> b!7371006 (=> (not res!2974191) (not e!4412739))))

(assert (=> b!7371006 (= res!2974191 (= (size!42132 lt!2615505) (+ (size!42132 (exprs!8714 cWitness!61)) (size!42132 (exprs!8714 ct2!378)))))))

(declare-fun b!7371004 () Bool)

(assert (=> b!7371004 (= e!4412738 (exprs!8714 ct2!378))))

(assert (= (and d!2283810 c!1369936) b!7371004))

(assert (= (and d!2283810 (not c!1369936)) b!7371005))

(assert (= (and d!2283810 res!2974192) b!7371006))

(assert (= (and b!7371006 res!2974191) b!7371007))

(declare-fun m!8024822 () Bool)

(assert (=> d!2283810 m!8024822))

(declare-fun m!8024824 () Bool)

(assert (=> d!2283810 m!8024824))

(assert (=> d!2283810 m!8024768))

(declare-fun m!8024826 () Bool)

(assert (=> b!7371005 m!8024826))

(declare-fun m!8024828 () Bool)

(assert (=> b!7371006 m!8024828))

(declare-fun m!8024830 () Bool)

(assert (=> b!7371006 m!8024830))

(assert (=> b!7371006 m!8024776))

(assert (=> b!7370839 d!2283810))

(declare-fun bs!1920880 () Bool)

(declare-fun d!2283812 () Bool)

(assert (= bs!1920880 (and d!2283812 b!7370841)))

(declare-fun lambda!457995 () Int)

(assert (=> bs!1920880 (= lambda!457995 lambda!457972)))

(declare-fun bs!1920881 () Bool)

(assert (= bs!1920881 (and d!2283812 d!2283802)))

(assert (=> bs!1920881 (= lambda!457995 lambda!457988)))

(declare-fun bs!1920882 () Bool)

(assert (= bs!1920882 (and d!2283812 d!2283804)))

(assert (=> bs!1920882 (= lambda!457995 lambda!457989)))

(declare-fun bs!1920883 () Bool)

(assert (= bs!1920883 (and d!2283812 d!2283806)))

(assert (=> bs!1920883 (= lambda!457995 lambda!457990)))

(assert (=> d!2283812 (set.member (Context!16429 (++!17090 (exprs!8714 cWitness!61) (exprs!8714 ct2!378))) (derivationStepZipperDown!3100 (regOne!39060 r1!2370) (Context!16429 (++!17090 (exprs!8714 lt!2615452) (exprs!8714 ct2!378))) c!10362))))

(declare-fun lt!2615514 () Unit!165497)

(assert (=> d!2283812 (= lt!2615514 (lemmaConcatPreservesForall!1947 (exprs!8714 lt!2615452) (exprs!8714 ct2!378) lambda!457995))))

(declare-fun lt!2615513 () Unit!165497)

(assert (=> d!2283812 (= lt!2615513 (lemmaConcatPreservesForall!1947 (exprs!8714 cWitness!61) (exprs!8714 ct2!378) lambda!457995))))

(declare-fun lt!2615512 () Unit!165497)

(declare-fun choose!57302 (Regex!19274 Context!16428 Context!16428 Context!16428 C!38822) Unit!165497)

(assert (=> d!2283812 (= lt!2615512 (choose!57302 (regOne!39060 r1!2370) lt!2615452 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2283812 (validRegex!9870 (regOne!39060 r1!2370))))

(assert (=> d!2283812 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!133 (regOne!39060 r1!2370) lt!2615452 ct2!378 cWitness!61 c!10362) lt!2615512)))

(declare-fun bs!1920884 () Bool)

(assert (= bs!1920884 d!2283812))

(declare-fun m!8024836 () Bool)

(assert (=> bs!1920884 m!8024836))

(declare-fun m!8024840 () Bool)

(assert (=> bs!1920884 m!8024840))

(declare-fun m!8024842 () Bool)

(assert (=> bs!1920884 m!8024842))

(declare-fun m!8024844 () Bool)

(assert (=> bs!1920884 m!8024844))

(declare-fun m!8024848 () Bool)

(assert (=> bs!1920884 m!8024848))

(declare-fun m!8024850 () Bool)

(assert (=> bs!1920884 m!8024850))

(declare-fun m!8024852 () Bool)

(assert (=> bs!1920884 m!8024852))

(assert (=> bs!1920884 m!8024704))

(assert (=> b!7370839 d!2283812))

(declare-fun c!1369946 () Bool)

(declare-fun call!676977 () List!71770)

(declare-fun bm!676972 () Bool)

(declare-fun c!1369945 () Bool)

(assert (=> bm!676972 (= call!676977 ($colon$colon!3256 (exprs!8714 (Context!16429 (++!17090 lt!2615449 (exprs!8714 ct2!378)))) (ite (or c!1369946 c!1369945) (regTwo!39060 (regOne!39060 r1!2370)) (regOne!39060 r1!2370))))))

(declare-fun bm!676973 () Bool)

(declare-fun call!676978 () (Set Context!16428))

(declare-fun call!676979 () (Set Context!16428))

(assert (=> bm!676973 (= call!676978 call!676979)))

(declare-fun b!7371019 () Bool)

(declare-fun e!4412746 () (Set Context!16428))

(declare-fun call!676981 () (Set Context!16428))

(assert (=> b!7371019 (= e!4412746 call!676981)))

(declare-fun b!7371020 () Bool)

(declare-fun e!4412747 () (Set Context!16428))

(declare-fun call!676982 () (Set Context!16428))

(assert (=> b!7371020 (= e!4412747 (set.union call!676979 call!676982))))

(declare-fun bm!676974 () Bool)

(declare-fun call!676980 () List!71770)

(assert (=> bm!676974 (= call!676980 call!676977)))

(declare-fun b!7371021 () Bool)

(declare-fun c!1369943 () Bool)

(assert (=> b!7371021 (= c!1369943 (is-Star!19274 (regOne!39060 r1!2370)))))

(declare-fun e!4412750 () (Set Context!16428))

(assert (=> b!7371021 (= e!4412746 e!4412750)))

(declare-fun bm!676975 () Bool)

(assert (=> bm!676975 (= call!676981 call!676978)))

(declare-fun c!1369944 () Bool)

(declare-fun bm!676976 () Bool)

(assert (=> bm!676976 (= call!676979 (derivationStepZipperDown!3100 (ite c!1369944 (regOne!39061 (regOne!39060 r1!2370)) (ite c!1369946 (regTwo!39060 (regOne!39060 r1!2370)) (ite c!1369945 (regOne!39060 (regOne!39060 r1!2370)) (reg!19603 (regOne!39060 r1!2370))))) (ite (or c!1369944 c!1369946) (Context!16429 (++!17090 lt!2615449 (exprs!8714 ct2!378))) (Context!16429 call!676980)) c!10362))))

(declare-fun b!7371022 () Bool)

(declare-fun e!4412749 () (Set Context!16428))

(assert (=> b!7371022 (= e!4412749 e!4412747)))

(assert (=> b!7371022 (= c!1369944 (is-Union!19274 (regOne!39060 r1!2370)))))

(declare-fun b!7371023 () Bool)

(declare-fun e!4412748 () Bool)

(assert (=> b!7371023 (= c!1369946 e!4412748)))

(declare-fun res!2974194 () Bool)

(assert (=> b!7371023 (=> (not res!2974194) (not e!4412748))))

(assert (=> b!7371023 (= res!2974194 (is-Concat!28119 (regOne!39060 r1!2370)))))

(declare-fun e!4412751 () (Set Context!16428))

(assert (=> b!7371023 (= e!4412747 e!4412751)))

(declare-fun b!7371024 () Bool)

(assert (=> b!7371024 (= e!4412750 call!676981)))

(declare-fun b!7371025 () Bool)

(assert (=> b!7371025 (= e!4412750 (as set.empty (Set Context!16428)))))

(declare-fun d!2283814 () Bool)

(declare-fun c!1369947 () Bool)

(assert (=> d!2283814 (= c!1369947 (and (is-ElementMatch!19274 (regOne!39060 r1!2370)) (= (c!1369890 (regOne!39060 r1!2370)) c!10362)))))

(assert (=> d!2283814 (= (derivationStepZipperDown!3100 (regOne!39060 r1!2370) (Context!16429 (++!17090 lt!2615449 (exprs!8714 ct2!378))) c!10362) e!4412749)))

(declare-fun bm!676977 () Bool)

(assert (=> bm!676977 (= call!676982 (derivationStepZipperDown!3100 (ite c!1369944 (regTwo!39061 (regOne!39060 r1!2370)) (regOne!39060 (regOne!39060 r1!2370))) (ite c!1369944 (Context!16429 (++!17090 lt!2615449 (exprs!8714 ct2!378))) (Context!16429 call!676977)) c!10362))))

(declare-fun b!7371026 () Bool)

(assert (=> b!7371026 (= e!4412751 (set.union call!676982 call!676978))))

(declare-fun b!7371027 () Bool)

(assert (=> b!7371027 (= e!4412748 (nullable!8350 (regOne!39060 (regOne!39060 r1!2370))))))

(declare-fun b!7371028 () Bool)

(assert (=> b!7371028 (= e!4412749 (set.insert (Context!16429 (++!17090 lt!2615449 (exprs!8714 ct2!378))) (as set.empty (Set Context!16428))))))

(declare-fun b!7371029 () Bool)

(assert (=> b!7371029 (= e!4412751 e!4412746)))

(assert (=> b!7371029 (= c!1369945 (is-Concat!28119 (regOne!39060 r1!2370)))))

(assert (= (and d!2283814 c!1369947) b!7371028))

(assert (= (and d!2283814 (not c!1369947)) b!7371022))

(assert (= (and b!7371022 c!1369944) b!7371020))

(assert (= (and b!7371022 (not c!1369944)) b!7371023))

(assert (= (and b!7371023 res!2974194) b!7371027))

(assert (= (and b!7371023 c!1369946) b!7371026))

(assert (= (and b!7371023 (not c!1369946)) b!7371029))

(assert (= (and b!7371029 c!1369945) b!7371019))

(assert (= (and b!7371029 (not c!1369945)) b!7371021))

(assert (= (and b!7371021 c!1369943) b!7371024))

(assert (= (and b!7371021 (not c!1369943)) b!7371025))

(assert (= (or b!7371019 b!7371024) bm!676974))

(assert (= (or b!7371019 b!7371024) bm!676975))

(assert (= (or b!7371026 bm!676975) bm!676973))

(assert (= (or b!7371026 bm!676974) bm!676972))

(assert (= (or b!7371020 b!7371026) bm!676977))

(assert (= (or b!7371020 bm!676973) bm!676976))

(declare-fun m!8024856 () Bool)

(assert (=> b!7371028 m!8024856))

(assert (=> b!7371027 m!8024796))

(declare-fun m!8024858 () Bool)

(assert (=> bm!676972 m!8024858))

(declare-fun m!8024860 () Bool)

(assert (=> bm!676977 m!8024860))

(declare-fun m!8024862 () Bool)

(assert (=> bm!676976 m!8024862))

(assert (=> b!7370839 d!2283814))

(declare-fun d!2283818 () Bool)

(assert (=> d!2283818 (forall!18080 (++!17090 lt!2615449 (exprs!8714 ct2!378)) lambda!457972)))

(declare-fun lt!2615515 () Unit!165497)

(assert (=> d!2283818 (= lt!2615515 (choose!57301 lt!2615449 (exprs!8714 ct2!378) lambda!457972))))

(assert (=> d!2283818 (forall!18080 lt!2615449 lambda!457972)))

(assert (=> d!2283818 (= (lemmaConcatPreservesForall!1947 lt!2615449 (exprs!8714 ct2!378) lambda!457972) lt!2615515)))

(declare-fun bs!1920885 () Bool)

(assert (= bs!1920885 d!2283818))

(assert (=> bs!1920885 m!8024694))

(assert (=> bs!1920885 m!8024694))

(declare-fun m!8024864 () Bool)

(assert (=> bs!1920885 m!8024864))

(declare-fun m!8024866 () Bool)

(assert (=> bs!1920885 m!8024866))

(declare-fun m!8024868 () Bool)

(assert (=> bs!1920885 m!8024868))

(assert (=> b!7370839 d!2283818))

(declare-fun d!2283820 () Bool)

(declare-fun e!4412759 () Bool)

(assert (=> d!2283820 e!4412759))

(declare-fun res!2974197 () Bool)

(assert (=> d!2283820 (=> (not res!2974197) (not e!4412759))))

(declare-fun lt!2615516 () List!71770)

(assert (=> d!2283820 (= res!2974197 (= (content!15154 lt!2615516) (set.union (content!15154 lt!2615449) (content!15154 (exprs!8714 ct2!378)))))))

(declare-fun e!4412758 () List!71770)

(assert (=> d!2283820 (= lt!2615516 e!4412758)))

(declare-fun c!1369953 () Bool)

(assert (=> d!2283820 (= c!1369953 (is-Nil!71646 lt!2615449))))

(assert (=> d!2283820 (= (++!17090 lt!2615449 (exprs!8714 ct2!378)) lt!2615516)))

(declare-fun b!7371042 () Bool)

(assert (=> b!7371042 (= e!4412758 (Cons!71646 (h!78094 lt!2615449) (++!17090 (t!386231 lt!2615449) (exprs!8714 ct2!378))))))

(declare-fun b!7371044 () Bool)

(assert (=> b!7371044 (= e!4412759 (or (not (= (exprs!8714 ct2!378) Nil!71646)) (= lt!2615516 lt!2615449)))))

(declare-fun b!7371043 () Bool)

(declare-fun res!2974196 () Bool)

(assert (=> b!7371043 (=> (not res!2974196) (not e!4412759))))

(assert (=> b!7371043 (= res!2974196 (= (size!42132 lt!2615516) (+ (size!42132 lt!2615449) (size!42132 (exprs!8714 ct2!378)))))))

(declare-fun b!7371041 () Bool)

(assert (=> b!7371041 (= e!4412758 (exprs!8714 ct2!378))))

(assert (= (and d!2283820 c!1369953) b!7371041))

(assert (= (and d!2283820 (not c!1369953)) b!7371042))

(assert (= (and d!2283820 res!2974197) b!7371043))

(assert (= (and b!7371043 res!2974196) b!7371044))

(declare-fun m!8024870 () Bool)

(assert (=> d!2283820 m!8024870))

(declare-fun m!8024872 () Bool)

(assert (=> d!2283820 m!8024872))

(assert (=> d!2283820 m!8024768))

(declare-fun m!8024874 () Bool)

(assert (=> b!7371042 m!8024874))

(declare-fun m!8024876 () Bool)

(assert (=> b!7371043 m!8024876))

(declare-fun m!8024880 () Bool)

(assert (=> b!7371043 m!8024880))

(assert (=> b!7371043 m!8024776))

(assert (=> b!7370839 d!2283820))

(declare-fun c!1369956 () Bool)

(declare-fun call!676989 () List!71770)

(declare-fun bm!676984 () Bool)

(declare-fun c!1369957 () Bool)

(assert (=> bm!676984 (= call!676989 ($colon$colon!3256 (exprs!8714 ct1!282) (ite (or c!1369957 c!1369956) (regTwo!39060 r1!2370) r1!2370)))))

(declare-fun bm!676985 () Bool)

(declare-fun call!676990 () (Set Context!16428))

(declare-fun call!676991 () (Set Context!16428))

(assert (=> bm!676985 (= call!676990 call!676991)))

(declare-fun b!7371045 () Bool)

(declare-fun e!4412760 () (Set Context!16428))

(declare-fun call!676993 () (Set Context!16428))

(assert (=> b!7371045 (= e!4412760 call!676993)))

(declare-fun b!7371046 () Bool)

(declare-fun e!4412761 () (Set Context!16428))

(declare-fun call!676994 () (Set Context!16428))

(assert (=> b!7371046 (= e!4412761 (set.union call!676991 call!676994))))

(declare-fun bm!676986 () Bool)

(declare-fun call!676992 () List!71770)

(assert (=> bm!676986 (= call!676992 call!676989)))

(declare-fun b!7371047 () Bool)

(declare-fun c!1369954 () Bool)

(assert (=> b!7371047 (= c!1369954 (is-Star!19274 r1!2370))))

(declare-fun e!4412764 () (Set Context!16428))

(assert (=> b!7371047 (= e!4412760 e!4412764)))

(declare-fun bm!676987 () Bool)

(assert (=> bm!676987 (= call!676993 call!676990)))

(declare-fun bm!676988 () Bool)

(declare-fun c!1369955 () Bool)

(assert (=> bm!676988 (= call!676991 (derivationStepZipperDown!3100 (ite c!1369955 (regOne!39061 r1!2370) (ite c!1369957 (regTwo!39060 r1!2370) (ite c!1369956 (regOne!39060 r1!2370) (reg!19603 r1!2370)))) (ite (or c!1369955 c!1369957) ct1!282 (Context!16429 call!676992)) c!10362))))

(declare-fun b!7371048 () Bool)

(declare-fun e!4412763 () (Set Context!16428))

(assert (=> b!7371048 (= e!4412763 e!4412761)))

(assert (=> b!7371048 (= c!1369955 (is-Union!19274 r1!2370))))

(declare-fun b!7371049 () Bool)

(declare-fun e!4412762 () Bool)

(assert (=> b!7371049 (= c!1369957 e!4412762)))

(declare-fun res!2974198 () Bool)

(assert (=> b!7371049 (=> (not res!2974198) (not e!4412762))))

(assert (=> b!7371049 (= res!2974198 (is-Concat!28119 r1!2370))))

(declare-fun e!4412765 () (Set Context!16428))

(assert (=> b!7371049 (= e!4412761 e!4412765)))

(declare-fun b!7371050 () Bool)

(assert (=> b!7371050 (= e!4412764 call!676993)))

(declare-fun b!7371051 () Bool)

(assert (=> b!7371051 (= e!4412764 (as set.empty (Set Context!16428)))))

(declare-fun d!2283822 () Bool)

(declare-fun c!1369958 () Bool)

(assert (=> d!2283822 (= c!1369958 (and (is-ElementMatch!19274 r1!2370) (= (c!1369890 r1!2370) c!10362)))))

(assert (=> d!2283822 (= (derivationStepZipperDown!3100 r1!2370 ct1!282 c!10362) e!4412763)))

(declare-fun bm!676989 () Bool)

(assert (=> bm!676989 (= call!676994 (derivationStepZipperDown!3100 (ite c!1369955 (regTwo!39061 r1!2370) (regOne!39060 r1!2370)) (ite c!1369955 ct1!282 (Context!16429 call!676989)) c!10362))))

(declare-fun b!7371052 () Bool)

(assert (=> b!7371052 (= e!4412765 (set.union call!676994 call!676990))))

(declare-fun b!7371053 () Bool)

(assert (=> b!7371053 (= e!4412762 (nullable!8350 (regOne!39060 r1!2370)))))

(declare-fun b!7371054 () Bool)

(assert (=> b!7371054 (= e!4412763 (set.insert ct1!282 (as set.empty (Set Context!16428))))))

(declare-fun b!7371055 () Bool)

(assert (=> b!7371055 (= e!4412765 e!4412760)))

(assert (=> b!7371055 (= c!1369956 (is-Concat!28119 r1!2370))))

(assert (= (and d!2283822 c!1369958) b!7371054))

(assert (= (and d!2283822 (not c!1369958)) b!7371048))

(assert (= (and b!7371048 c!1369955) b!7371046))

(assert (= (and b!7371048 (not c!1369955)) b!7371049))

(assert (= (and b!7371049 res!2974198) b!7371053))

(assert (= (and b!7371049 c!1369957) b!7371052))

(assert (= (and b!7371049 (not c!1369957)) b!7371055))

(assert (= (and b!7371055 c!1369956) b!7371045))

(assert (= (and b!7371055 (not c!1369956)) b!7371047))

(assert (= (and b!7371047 c!1369954) b!7371050))

(assert (= (and b!7371047 (not c!1369954)) b!7371051))

(assert (= (or b!7371045 b!7371050) bm!676986))

(assert (= (or b!7371045 b!7371050) bm!676987))

(assert (= (or b!7371052 bm!676987) bm!676985))

(assert (= (or b!7371052 bm!676986) bm!676984))

(assert (= (or b!7371046 b!7371052) bm!676989))

(assert (= (or b!7371046 bm!676985) bm!676988))

(assert (=> b!7371054 m!8024784))

(assert (=> b!7371053 m!8024686))

(declare-fun m!8024890 () Bool)

(assert (=> bm!676984 m!8024890))

(declare-fun m!8024892 () Bool)

(assert (=> bm!676989 m!8024892))

(declare-fun m!8024894 () Bool)

(assert (=> bm!676988 m!8024894))

(assert (=> b!7370838 d!2283822))

(declare-fun d!2283826 () Bool)

(declare-fun nullableFct!3340 (Regex!19274) Bool)

(assert (=> d!2283826 (= (nullable!8350 (regOne!39060 r1!2370)) (nullableFct!3340 (regOne!39060 r1!2370)))))

(declare-fun bs!1920886 () Bool)

(assert (= bs!1920886 d!2283826))

(declare-fun m!8024896 () Bool)

(assert (=> bs!1920886 m!8024896))

(assert (=> b!7370833 d!2283826))

(declare-fun b!7371056 () Bool)

(declare-fun e!4412769 () Bool)

(declare-fun e!4412770 () Bool)

(assert (=> b!7371056 (= e!4412769 e!4412770)))

(declare-fun c!1369959 () Bool)

(assert (=> b!7371056 (= c!1369959 (is-Union!19274 (regTwo!39060 r1!2370)))))

(declare-fun b!7371057 () Bool)

(declare-fun e!4412771 () Bool)

(assert (=> b!7371057 (= e!4412771 e!4412769)))

(declare-fun c!1369960 () Bool)

(assert (=> b!7371057 (= c!1369960 (is-Star!19274 (regTwo!39060 r1!2370)))))

(declare-fun bm!676990 () Bool)

(declare-fun call!676996 () Bool)

(declare-fun call!676995 () Bool)

(assert (=> bm!676990 (= call!676996 call!676995)))

(declare-fun b!7371058 () Bool)

(declare-fun res!2974201 () Bool)

(declare-fun e!4412766 () Bool)

(assert (=> b!7371058 (=> res!2974201 e!4412766)))

(assert (=> b!7371058 (= res!2974201 (not (is-Concat!28119 (regTwo!39060 r1!2370))))))

(assert (=> b!7371058 (= e!4412770 e!4412766)))

(declare-fun bm!676991 () Bool)

(declare-fun call!676997 () Bool)

(assert (=> bm!676991 (= call!676997 (validRegex!9870 (ite c!1369959 (regOne!39061 (regTwo!39060 r1!2370)) (regTwo!39060 (regTwo!39060 r1!2370)))))))

(declare-fun bm!676992 () Bool)

(assert (=> bm!676992 (= call!676995 (validRegex!9870 (ite c!1369960 (reg!19603 (regTwo!39060 r1!2370)) (ite c!1369959 (regTwo!39061 (regTwo!39060 r1!2370)) (regOne!39060 (regTwo!39060 r1!2370))))))))

(declare-fun b!7371059 () Bool)

(declare-fun res!2974202 () Bool)

(declare-fun e!4412772 () Bool)

(assert (=> b!7371059 (=> (not res!2974202) (not e!4412772))))

(assert (=> b!7371059 (= res!2974202 call!676997)))

(assert (=> b!7371059 (= e!4412770 e!4412772)))

(declare-fun b!7371060 () Bool)

(declare-fun e!4412767 () Bool)

(assert (=> b!7371060 (= e!4412766 e!4412767)))

(declare-fun res!2974199 () Bool)

(assert (=> b!7371060 (=> (not res!2974199) (not e!4412767))))

(assert (=> b!7371060 (= res!2974199 call!676996)))

(declare-fun b!7371061 () Bool)

(assert (=> b!7371061 (= e!4412767 call!676997)))

(declare-fun b!7371063 () Bool)

(declare-fun e!4412768 () Bool)

(assert (=> b!7371063 (= e!4412769 e!4412768)))

(declare-fun res!2974200 () Bool)

(assert (=> b!7371063 (= res!2974200 (not (nullable!8350 (reg!19603 (regTwo!39060 r1!2370)))))))

(assert (=> b!7371063 (=> (not res!2974200) (not e!4412768))))

(declare-fun b!7371064 () Bool)

(assert (=> b!7371064 (= e!4412772 call!676996)))

(declare-fun b!7371062 () Bool)

(assert (=> b!7371062 (= e!4412768 call!676995)))

(declare-fun d!2283828 () Bool)

(declare-fun res!2974203 () Bool)

(assert (=> d!2283828 (=> res!2974203 e!4412771)))

(assert (=> d!2283828 (= res!2974203 (is-ElementMatch!19274 (regTwo!39060 r1!2370)))))

(assert (=> d!2283828 (= (validRegex!9870 (regTwo!39060 r1!2370)) e!4412771)))

(assert (= (and d!2283828 (not res!2974203)) b!7371057))

(assert (= (and b!7371057 c!1369960) b!7371063))

(assert (= (and b!7371057 (not c!1369960)) b!7371056))

(assert (= (and b!7371063 res!2974200) b!7371062))

(assert (= (and b!7371056 c!1369959) b!7371059))

(assert (= (and b!7371056 (not c!1369959)) b!7371058))

(assert (= (and b!7371059 res!2974202) b!7371064))

(assert (= (and b!7371058 (not res!2974201)) b!7371060))

(assert (= (and b!7371060 res!2974199) b!7371061))

(assert (= (or b!7371059 b!7371061) bm!676991))

(assert (= (or b!7371064 b!7371060) bm!676990))

(assert (= (or b!7371062 bm!676990) bm!676992))

(declare-fun m!8024898 () Bool)

(assert (=> bm!676991 m!8024898))

(declare-fun m!8024900 () Bool)

(assert (=> bm!676992 m!8024900))

(declare-fun m!8024902 () Bool)

(assert (=> b!7371063 m!8024902))

(assert (=> b!7370832 d!2283828))

(declare-fun bs!1920887 () Bool)

(declare-fun d!2283832 () Bool)

(assert (= bs!1920887 (and d!2283832 d!2283806)))

(declare-fun lambda!457996 () Int)

(assert (=> bs!1920887 (= lambda!457996 lambda!457990)))

(declare-fun bs!1920888 () Bool)

(assert (= bs!1920888 (and d!2283832 b!7370841)))

(assert (=> bs!1920888 (= lambda!457996 lambda!457972)))

(declare-fun bs!1920889 () Bool)

(assert (= bs!1920889 (and d!2283832 d!2283802)))

(assert (=> bs!1920889 (= lambda!457996 lambda!457988)))

(declare-fun bs!1920890 () Bool)

(assert (= bs!1920890 (and d!2283832 d!2283812)))

(assert (=> bs!1920890 (= lambda!457996 lambda!457995)))

(declare-fun bs!1920891 () Bool)

(assert (= bs!1920891 (and d!2283832 d!2283804)))

(assert (=> bs!1920891 (= lambda!457996 lambda!457989)))

(assert (=> d!2283832 (= (inv!91526 lt!2615451) (forall!18080 (exprs!8714 lt!2615451) lambda!457996))))

(declare-fun bs!1920892 () Bool)

(assert (= bs!1920892 d!2283832))

(declare-fun m!8024904 () Bool)

(assert (=> bs!1920892 m!8024904))

(assert (=> b!7370842 d!2283832))

(assert (=> b!7370842 d!2283792))

(assert (=> b!7370842 d!2283808))

(declare-fun b!7371069 () Bool)

(declare-fun e!4412775 () Bool)

(declare-fun tp!2095398 () Bool)

(declare-fun tp!2095399 () Bool)

(assert (=> b!7371069 (= e!4412775 (and tp!2095398 tp!2095399))))

(assert (=> b!7370840 (= tp!2095366 e!4412775)))

(assert (= (and b!7370840 (is-Cons!71646 (exprs!8714 cWitness!61))) b!7371069))

(declare-fun b!7371070 () Bool)

(declare-fun e!4412776 () Bool)

(declare-fun tp!2095400 () Bool)

(declare-fun tp!2095401 () Bool)

(assert (=> b!7371070 (= e!4412776 (and tp!2095400 tp!2095401))))

(assert (=> b!7370834 (= tp!2095367 e!4412776)))

(assert (= (and b!7370834 (is-Cons!71646 (exprs!8714 ct1!282))) b!7371070))

(declare-fun b!7371084 () Bool)

(declare-fun e!4412779 () Bool)

(declare-fun tp!2095413 () Bool)

(declare-fun tp!2095414 () Bool)

(assert (=> b!7371084 (= e!4412779 (and tp!2095413 tp!2095414))))

(assert (=> b!7370828 (= tp!2095364 e!4412779)))

(declare-fun b!7371083 () Bool)

(declare-fun tp!2095412 () Bool)

(assert (=> b!7371083 (= e!4412779 tp!2095412)))

(declare-fun b!7371082 () Bool)

(declare-fun tp!2095415 () Bool)

(declare-fun tp!2095416 () Bool)

(assert (=> b!7371082 (= e!4412779 (and tp!2095415 tp!2095416))))

(declare-fun b!7371081 () Bool)

(assert (=> b!7371081 (= e!4412779 tp_is_empty!48793)))

(assert (= (and b!7370828 (is-ElementMatch!19274 (regOne!39061 r1!2370))) b!7371081))

(assert (= (and b!7370828 (is-Concat!28119 (regOne!39061 r1!2370))) b!7371082))

(assert (= (and b!7370828 (is-Star!19274 (regOne!39061 r1!2370))) b!7371083))

(assert (= (and b!7370828 (is-Union!19274 (regOne!39061 r1!2370))) b!7371084))

(declare-fun b!7371088 () Bool)

(declare-fun e!4412780 () Bool)

(declare-fun tp!2095418 () Bool)

(declare-fun tp!2095419 () Bool)

(assert (=> b!7371088 (= e!4412780 (and tp!2095418 tp!2095419))))

(assert (=> b!7370828 (= tp!2095362 e!4412780)))

(declare-fun b!7371087 () Bool)

(declare-fun tp!2095417 () Bool)

(assert (=> b!7371087 (= e!4412780 tp!2095417)))

(declare-fun b!7371086 () Bool)

(declare-fun tp!2095420 () Bool)

(declare-fun tp!2095421 () Bool)

(assert (=> b!7371086 (= e!4412780 (and tp!2095420 tp!2095421))))

(declare-fun b!7371085 () Bool)

(assert (=> b!7371085 (= e!4412780 tp_is_empty!48793)))

(assert (= (and b!7370828 (is-ElementMatch!19274 (regTwo!39061 r1!2370))) b!7371085))

(assert (= (and b!7370828 (is-Concat!28119 (regTwo!39061 r1!2370))) b!7371086))

(assert (= (and b!7370828 (is-Star!19274 (regTwo!39061 r1!2370))) b!7371087))

(assert (= (and b!7370828 (is-Union!19274 (regTwo!39061 r1!2370))) b!7371088))

(declare-fun b!7371092 () Bool)

(declare-fun e!4412781 () Bool)

(declare-fun tp!2095423 () Bool)

(declare-fun tp!2095424 () Bool)

(assert (=> b!7371092 (= e!4412781 (and tp!2095423 tp!2095424))))

(assert (=> b!7370837 (= tp!2095368 e!4412781)))

(declare-fun b!7371091 () Bool)

(declare-fun tp!2095422 () Bool)

(assert (=> b!7371091 (= e!4412781 tp!2095422)))

(declare-fun b!7371090 () Bool)

(declare-fun tp!2095425 () Bool)

(declare-fun tp!2095426 () Bool)

(assert (=> b!7371090 (= e!4412781 (and tp!2095425 tp!2095426))))

(declare-fun b!7371089 () Bool)

(assert (=> b!7371089 (= e!4412781 tp_is_empty!48793)))

(assert (= (and b!7370837 (is-ElementMatch!19274 (regOne!39060 r1!2370))) b!7371089))

(assert (= (and b!7370837 (is-Concat!28119 (regOne!39060 r1!2370))) b!7371090))

(assert (= (and b!7370837 (is-Star!19274 (regOne!39060 r1!2370))) b!7371091))

(assert (= (and b!7370837 (is-Union!19274 (regOne!39060 r1!2370))) b!7371092))

(declare-fun b!7371096 () Bool)

(declare-fun e!4412782 () Bool)

(declare-fun tp!2095428 () Bool)

(declare-fun tp!2095429 () Bool)

(assert (=> b!7371096 (= e!4412782 (and tp!2095428 tp!2095429))))

(assert (=> b!7370837 (= tp!2095363 e!4412782)))

(declare-fun b!7371095 () Bool)

(declare-fun tp!2095427 () Bool)

(assert (=> b!7371095 (= e!4412782 tp!2095427)))

(declare-fun b!7371094 () Bool)

(declare-fun tp!2095430 () Bool)

(declare-fun tp!2095431 () Bool)

(assert (=> b!7371094 (= e!4412782 (and tp!2095430 tp!2095431))))

(declare-fun b!7371093 () Bool)

(assert (=> b!7371093 (= e!4412782 tp_is_empty!48793)))

(assert (= (and b!7370837 (is-ElementMatch!19274 (regTwo!39060 r1!2370))) b!7371093))

(assert (= (and b!7370837 (is-Concat!28119 (regTwo!39060 r1!2370))) b!7371094))

(assert (= (and b!7370837 (is-Star!19274 (regTwo!39060 r1!2370))) b!7371095))

(assert (= (and b!7370837 (is-Union!19274 (regTwo!39060 r1!2370))) b!7371096))

(declare-fun b!7371100 () Bool)

(declare-fun e!4412783 () Bool)

(declare-fun tp!2095433 () Bool)

(declare-fun tp!2095434 () Bool)

(assert (=> b!7371100 (= e!4412783 (and tp!2095433 tp!2095434))))

(assert (=> b!7370836 (= tp!2095369 e!4412783)))

(declare-fun b!7371099 () Bool)

(declare-fun tp!2095432 () Bool)

(assert (=> b!7371099 (= e!4412783 tp!2095432)))

(declare-fun b!7371098 () Bool)

(declare-fun tp!2095435 () Bool)

(declare-fun tp!2095436 () Bool)

(assert (=> b!7371098 (= e!4412783 (and tp!2095435 tp!2095436))))

(declare-fun b!7371097 () Bool)

(assert (=> b!7371097 (= e!4412783 tp_is_empty!48793)))

(assert (= (and b!7370836 (is-ElementMatch!19274 (reg!19603 r1!2370))) b!7371097))

(assert (= (and b!7370836 (is-Concat!28119 (reg!19603 r1!2370))) b!7371098))

(assert (= (and b!7370836 (is-Star!19274 (reg!19603 r1!2370))) b!7371099))

(assert (= (and b!7370836 (is-Union!19274 (reg!19603 r1!2370))) b!7371100))

(declare-fun b!7371101 () Bool)

(declare-fun e!4412784 () Bool)

(declare-fun tp!2095437 () Bool)

(declare-fun tp!2095438 () Bool)

(assert (=> b!7371101 (= e!4412784 (and tp!2095437 tp!2095438))))

(assert (=> b!7370831 (= tp!2095365 e!4412784)))

(assert (= (and b!7370831 (is-Cons!71646 (exprs!8714 ct2!378))) b!7371101))

(push 1)

(assert (not bm!676945))

(assert (not b!7371094))

(assert (not b!7371063))

(assert (not b!7371084))

(assert (not bm!676991))

(assert (not d!2283818))

(assert (not b!7371098))

(assert (not b!7370918))

(assert (not b!7371027))

(assert (not d!2283808))

(assert (not d!2283802))

(assert (not bm!676992))

(assert (not d!2283804))

(assert (not bm!676972))

(assert (not d!2283820))

(assert (not b!7371100))

(assert (not bm!676941))

(assert (not d!2283806))

(assert (not b!7371099))

(assert (not b!7371090))

(assert (not b!7370931))

(assert (not bm!676931))

(assert (not bm!676984))

(assert (not b!7371083))

(assert (not b!7371088))

(assert (not d!2283812))

(assert (not bm!676977))

(assert (not b!7370963))

(assert (not d!2283832))

(assert (not b!7371043))

(assert (not bm!676989))

(assert (not b!7371095))

(assert tp_is_empty!48793)

(assert (not d!2283792))

(assert (not b!7371091))

(assert (not bm!676933))

(assert (not b!7371092))

(assert (not bm!676976))

(assert (not bm!676937))

(assert (not bm!676932))

(assert (not b!7371070))

(assert (not bm!676938))

(assert (not b!7371082))

(assert (not b!7371086))

(assert (not bm!676988))

(assert (not d!2283810))

(assert (not b!7371005))

(assert (not b!7371042))

(assert (not b!7371069))

(assert (not b!7371053))

(assert (not bm!676965))

(assert (not b!7370930))

(assert (not bm!676927))

(assert (not b!7371002))

(assert (not b!7371006))

(assert (not d!2283790))

(assert (not b!7371096))

(assert (not bm!676946))

(assert (not d!2283826))

(assert (not b!7371101))

(assert (not b!7370974))

(assert (not b!7371087))

(assert (not bm!676964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

