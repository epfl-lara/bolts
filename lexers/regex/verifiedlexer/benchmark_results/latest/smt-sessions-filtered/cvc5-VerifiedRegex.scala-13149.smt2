; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718158 () Bool)

(assert start!718158)

(declare-fun b!7354428 () Bool)

(declare-fun e!4403449 () Bool)

(declare-fun tp!2089056 () Bool)

(assert (=> b!7354428 (= e!4403449 tp!2089056)))

(declare-fun b!7354429 () Bool)

(declare-fun e!4403445 () Bool)

(declare-fun tp!2089057 () Bool)

(declare-fun tp!2089060 () Bool)

(assert (=> b!7354429 (= e!4403445 (and tp!2089057 tp!2089060))))

(declare-fun b!7354430 () Bool)

(declare-fun e!4403450 () Bool)

(declare-fun e!4403451 () Bool)

(assert (=> b!7354430 (= e!4403450 e!4403451)))

(declare-fun res!2969776 () Bool)

(assert (=> b!7354430 (=> (not res!2969776) (not e!4403451))))

(declare-datatypes ((C!38646 0))(
  ( (C!38647 (val!29683 Int)) )
))
(declare-datatypes ((Regex!19186 0))(
  ( (ElementMatch!19186 (c!1366388 C!38646)) (Concat!28031 (regOne!38884 Regex!19186) (regTwo!38884 Regex!19186)) (EmptyExpr!19186) (Star!19186 (reg!19515 Regex!19186)) (EmptyLang!19186) (Union!19186 (regOne!38885 Regex!19186) (regTwo!38885 Regex!19186)) )
))
(declare-fun r1!2370 () Regex!19186)

(declare-datatypes ((List!71682 0))(
  ( (Nil!71558) (Cons!71558 (h!78006 Regex!19186) (t!386115 List!71682)) )
))
(declare-datatypes ((Context!16252 0))(
  ( (Context!16253 (exprs!8626 List!71682)) )
))
(declare-fun lt!2612900 () (Set Context!16252))

(declare-fun c!10362 () C!38646)

(declare-fun lt!2612897 () Context!16252)

(declare-fun derivationStepZipperDown!3012 (Regex!19186 Context!16252 C!38646) (Set Context!16252))

(assert (=> b!7354430 (= res!2969776 (= lt!2612900 (derivationStepZipperDown!3012 (reg!19515 r1!2370) lt!2612897 c!10362)))))

(declare-fun lt!2612895 () List!71682)

(assert (=> b!7354430 (= lt!2612897 (Context!16253 lt!2612895))))

(declare-fun ct1!282 () Context!16252)

(declare-fun lt!2612896 () Regex!19186)

(declare-fun $colon$colon!3183 (List!71682 Regex!19186) List!71682)

(assert (=> b!7354430 (= lt!2612895 ($colon$colon!3183 (exprs!8626 ct1!282) lt!2612896))))

(declare-fun b!7354431 () Bool)

(declare-fun e!4403446 () Bool)

(declare-fun e!4403448 () Bool)

(assert (=> b!7354431 (= e!4403446 e!4403448)))

(declare-fun res!2969773 () Bool)

(assert (=> b!7354431 (=> (not res!2969773) (not e!4403448))))

(declare-fun cWitness!61 () Context!16252)

(assert (=> b!7354431 (= res!2969773 (set.member cWitness!61 lt!2612900))))

(assert (=> b!7354431 (= lt!2612900 (derivationStepZipperDown!3012 r1!2370 ct1!282 c!10362))))

(declare-fun b!7354432 () Bool)

(declare-fun e!4403442 () Bool)

(declare-fun tp!2089061 () Bool)

(assert (=> b!7354432 (= e!4403442 tp!2089061)))

(declare-fun b!7354433 () Bool)

(declare-fun e!4403444 () Bool)

(assert (=> b!7354433 (= e!4403451 (not e!4403444))))

(declare-fun res!2969774 () Bool)

(assert (=> b!7354433 (=> res!2969774 e!4403444)))

(declare-fun lambda!456864 () Int)

(declare-fun forall!18006 (List!71682 Int) Bool)

(assert (=> b!7354433 (= res!2969774 (not (forall!18006 (exprs!8626 cWitness!61) lambda!456864)))))

(declare-fun ct2!378 () Context!16252)

(declare-fun ++!17004 (List!71682 List!71682) List!71682)

(assert (=> b!7354433 (set.member (Context!16253 (++!17004 (exprs!8626 cWitness!61) (exprs!8626 ct2!378))) (derivationStepZipperDown!3012 (reg!19515 r1!2370) (Context!16253 (++!17004 lt!2612895 (exprs!8626 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165325 0))(
  ( (Unit!165326) )
))
(declare-fun lt!2612894 () Unit!165325)

(declare-fun lemmaConcatPreservesForall!1861 (List!71682 List!71682 Int) Unit!165325)

(assert (=> b!7354433 (= lt!2612894 (lemmaConcatPreservesForall!1861 lt!2612895 (exprs!8626 ct2!378) lambda!456864))))

(declare-fun lt!2612899 () Unit!165325)

(assert (=> b!7354433 (= lt!2612899 (lemmaConcatPreservesForall!1861 (exprs!8626 cWitness!61) (exprs!8626 ct2!378) lambda!456864))))

(declare-fun lt!2612892 () Unit!165325)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!103 (Regex!19186 Context!16252 Context!16252 Context!16252 C!38646) Unit!165325)

(assert (=> b!7354433 (= lt!2612892 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!103 (reg!19515 r1!2370) lt!2612897 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7354434 () Bool)

(declare-fun e!4403447 () Bool)

(assert (=> b!7354434 (= e!4403448 e!4403447)))

(declare-fun res!2969777 () Bool)

(assert (=> b!7354434 (=> (not res!2969777) (not e!4403447))))

(assert (=> b!7354434 (= res!2969777 (and (or (not (is-ElementMatch!19186 r1!2370)) (not (= c!10362 (c!1366388 r1!2370)))) (not (is-Union!19186 r1!2370))))))

(declare-fun lt!2612893 () (Set Context!16252))

(assert (=> b!7354434 (= lt!2612893 (derivationStepZipperDown!3012 r1!2370 (Context!16253 (++!17004 (exprs!8626 ct1!282) (exprs!8626 ct2!378))) c!10362))))

(declare-fun lt!2612898 () Unit!165325)

(assert (=> b!7354434 (= lt!2612898 (lemmaConcatPreservesForall!1861 (exprs!8626 ct1!282) (exprs!8626 ct2!378) lambda!456864))))

(declare-fun b!7354435 () Bool)

(declare-fun tp!2089059 () Bool)

(declare-fun tp!2089055 () Bool)

(assert (=> b!7354435 (= e!4403445 (and tp!2089059 tp!2089055))))

(declare-fun b!7354436 () Bool)

(declare-fun e!4403443 () Bool)

(declare-fun nullable!8277 (Regex!19186) Bool)

(assert (=> b!7354436 (= e!4403443 (not (nullable!8277 (regOne!38884 r1!2370))))))

(declare-fun b!7354437 () Bool)

(declare-fun res!2969775 () Bool)

(assert (=> b!7354437 (=> (not res!2969775) (not e!4403447))))

(assert (=> b!7354437 (= res!2969775 e!4403443)))

(declare-fun res!2969779 () Bool)

(assert (=> b!7354437 (=> res!2969779 e!4403443)))

(assert (=> b!7354437 (= res!2969779 (not (is-Concat!28031 r1!2370)))))

(declare-fun res!2969772 () Bool)

(assert (=> start!718158 (=> (not res!2969772) (not e!4403446))))

(declare-fun validRegex!9782 (Regex!19186) Bool)

(assert (=> start!718158 (= res!2969772 (validRegex!9782 r1!2370))))

(assert (=> start!718158 e!4403446))

(declare-fun tp_is_empty!48617 () Bool)

(assert (=> start!718158 tp_is_empty!48617))

(declare-fun e!4403441 () Bool)

(declare-fun inv!91306 (Context!16252) Bool)

(assert (=> start!718158 (and (inv!91306 cWitness!61) e!4403441)))

(assert (=> start!718158 (and (inv!91306 ct1!282) e!4403449)))

(assert (=> start!718158 e!4403445))

(assert (=> start!718158 (and (inv!91306 ct2!378) e!4403442)))

(declare-fun b!7354438 () Bool)

(assert (=> b!7354438 (= e!4403447 e!4403450)))

(declare-fun res!2969771 () Bool)

(assert (=> b!7354438 (=> (not res!2969771) (not e!4403450))))

(assert (=> b!7354438 (= res!2969771 (validRegex!9782 lt!2612896))))

(assert (=> b!7354438 (= lt!2612896 (Star!19186 (reg!19515 r1!2370)))))

(declare-fun b!7354439 () Bool)

(declare-fun tp!2089054 () Bool)

(assert (=> b!7354439 (= e!4403445 tp!2089054)))

(declare-fun b!7354440 () Bool)

(declare-fun tp!2089058 () Bool)

(assert (=> b!7354440 (= e!4403441 tp!2089058)))

(declare-fun b!7354441 () Bool)

(assert (=> b!7354441 (= e!4403444 (forall!18006 (exprs!8626 ct2!378) lambda!456864))))

(declare-fun b!7354442 () Bool)

(assert (=> b!7354442 (= e!4403445 tp_is_empty!48617)))

(declare-fun b!7354443 () Bool)

(declare-fun res!2969778 () Bool)

(assert (=> b!7354443 (=> (not res!2969778) (not e!4403447))))

(assert (=> b!7354443 (= res!2969778 (and (not (is-Concat!28031 r1!2370)) (is-Star!19186 r1!2370)))))

(assert (= (and start!718158 res!2969772) b!7354431))

(assert (= (and b!7354431 res!2969773) b!7354434))

(assert (= (and b!7354434 res!2969777) b!7354437))

(assert (= (and b!7354437 (not res!2969779)) b!7354436))

(assert (= (and b!7354437 res!2969775) b!7354443))

(assert (= (and b!7354443 res!2969778) b!7354438))

(assert (= (and b!7354438 res!2969771) b!7354430))

(assert (= (and b!7354430 res!2969776) b!7354433))

(assert (= (and b!7354433 (not res!2969774)) b!7354441))

(assert (= start!718158 b!7354440))

(assert (= start!718158 b!7354428))

(assert (= (and start!718158 (is-ElementMatch!19186 r1!2370)) b!7354442))

(assert (= (and start!718158 (is-Concat!28031 r1!2370)) b!7354435))

(assert (= (and start!718158 (is-Star!19186 r1!2370)) b!7354439))

(assert (= (and start!718158 (is-Union!19186 r1!2370)) b!7354429))

(assert (= start!718158 b!7354432))

(declare-fun m!8014622 () Bool)

(assert (=> b!7354436 m!8014622))

(declare-fun m!8014624 () Bool)

(assert (=> start!718158 m!8014624))

(declare-fun m!8014626 () Bool)

(assert (=> start!718158 m!8014626))

(declare-fun m!8014628 () Bool)

(assert (=> start!718158 m!8014628))

(declare-fun m!8014630 () Bool)

(assert (=> start!718158 m!8014630))

(declare-fun m!8014632 () Bool)

(assert (=> b!7354441 m!8014632))

(declare-fun m!8014634 () Bool)

(assert (=> b!7354430 m!8014634))

(declare-fun m!8014636 () Bool)

(assert (=> b!7354430 m!8014636))

(declare-fun m!8014638 () Bool)

(assert (=> b!7354434 m!8014638))

(declare-fun m!8014640 () Bool)

(assert (=> b!7354434 m!8014640))

(declare-fun m!8014642 () Bool)

(assert (=> b!7354434 m!8014642))

(declare-fun m!8014644 () Bool)

(assert (=> b!7354433 m!8014644))

(declare-fun m!8014646 () Bool)

(assert (=> b!7354433 m!8014646))

(declare-fun m!8014648 () Bool)

(assert (=> b!7354433 m!8014648))

(declare-fun m!8014650 () Bool)

(assert (=> b!7354433 m!8014650))

(declare-fun m!8014652 () Bool)

(assert (=> b!7354433 m!8014652))

(declare-fun m!8014654 () Bool)

(assert (=> b!7354433 m!8014654))

(declare-fun m!8014656 () Bool)

(assert (=> b!7354433 m!8014656))

(declare-fun m!8014658 () Bool)

(assert (=> b!7354433 m!8014658))

(declare-fun m!8014660 () Bool)

(assert (=> b!7354431 m!8014660))

(declare-fun m!8014662 () Bool)

(assert (=> b!7354431 m!8014662))

(declare-fun m!8014664 () Bool)

(assert (=> b!7354438 m!8014664))

(push 1)

(assert (not b!7354429))

(assert (not b!7354440))

(assert (not b!7354435))

(assert (not b!7354436))

(assert (not b!7354441))

(assert (not b!7354433))

(assert tp_is_empty!48617)

(assert (not b!7354439))

(assert (not b!7354431))

(assert (not start!718158))

(assert (not b!7354432))

(assert (not b!7354438))

(assert (not b!7354434))

(assert (not b!7354430))

(assert (not b!7354428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7354508 () Bool)

(declare-fun res!2969818 () Bool)

(declare-fun e!4403495 () Bool)

(assert (=> b!7354508 (=> (not res!2969818) (not e!4403495))))

(declare-fun lt!2612930 () List!71682)

(declare-fun size!42067 (List!71682) Int)

(assert (=> b!7354508 (= res!2969818 (= (size!42067 lt!2612930) (+ (size!42067 lt!2612895) (size!42067 (exprs!8626 ct2!378)))))))

(declare-fun b!7354506 () Bool)

(declare-fun e!4403496 () List!71682)

(assert (=> b!7354506 (= e!4403496 (exprs!8626 ct2!378))))

(declare-fun d!2281158 () Bool)

(assert (=> d!2281158 e!4403495))

(declare-fun res!2969817 () Bool)

(assert (=> d!2281158 (=> (not res!2969817) (not e!4403495))))

(declare-fun content!15089 (List!71682) (Set Regex!19186))

(assert (=> d!2281158 (= res!2969817 (= (content!15089 lt!2612930) (set.union (content!15089 lt!2612895) (content!15089 (exprs!8626 ct2!378)))))))

(assert (=> d!2281158 (= lt!2612930 e!4403496)))

(declare-fun c!1366392 () Bool)

(assert (=> d!2281158 (= c!1366392 (is-Nil!71558 lt!2612895))))

(assert (=> d!2281158 (= (++!17004 lt!2612895 (exprs!8626 ct2!378)) lt!2612930)))

(declare-fun b!7354507 () Bool)

(assert (=> b!7354507 (= e!4403496 (Cons!71558 (h!78006 lt!2612895) (++!17004 (t!386115 lt!2612895) (exprs!8626 ct2!378))))))

(declare-fun b!7354509 () Bool)

(assert (=> b!7354509 (= e!4403495 (or (not (= (exprs!8626 ct2!378) Nil!71558)) (= lt!2612930 lt!2612895)))))

(assert (= (and d!2281158 c!1366392) b!7354506))

(assert (= (and d!2281158 (not c!1366392)) b!7354507))

(assert (= (and d!2281158 res!2969817) b!7354508))

(assert (= (and b!7354508 res!2969818) b!7354509))

(declare-fun m!8014714 () Bool)

(assert (=> b!7354508 m!8014714))

(declare-fun m!8014716 () Bool)

(assert (=> b!7354508 m!8014716))

(declare-fun m!8014718 () Bool)

(assert (=> b!7354508 m!8014718))

(declare-fun m!8014720 () Bool)

(assert (=> d!2281158 m!8014720))

(declare-fun m!8014722 () Bool)

(assert (=> d!2281158 m!8014722))

(declare-fun m!8014724 () Bool)

(assert (=> d!2281158 m!8014724))

(declare-fun m!8014726 () Bool)

(assert (=> b!7354507 m!8014726))

(assert (=> b!7354433 d!2281158))

(declare-fun d!2281162 () Bool)

(declare-fun res!2969823 () Bool)

(declare-fun e!4403501 () Bool)

(assert (=> d!2281162 (=> res!2969823 e!4403501)))

(assert (=> d!2281162 (= res!2969823 (is-Nil!71558 (exprs!8626 cWitness!61)))))

(assert (=> d!2281162 (= (forall!18006 (exprs!8626 cWitness!61) lambda!456864) e!4403501)))

(declare-fun b!7354514 () Bool)

(declare-fun e!4403502 () Bool)

(assert (=> b!7354514 (= e!4403501 e!4403502)))

(declare-fun res!2969824 () Bool)

(assert (=> b!7354514 (=> (not res!2969824) (not e!4403502))))

(declare-fun dynLambda!29505 (Int Regex!19186) Bool)

(assert (=> b!7354514 (= res!2969824 (dynLambda!29505 lambda!456864 (h!78006 (exprs!8626 cWitness!61))))))

(declare-fun b!7354515 () Bool)

(assert (=> b!7354515 (= e!4403502 (forall!18006 (t!386115 (exprs!8626 cWitness!61)) lambda!456864))))

(assert (= (and d!2281162 (not res!2969823)) b!7354514))

(assert (= (and b!7354514 res!2969824) b!7354515))

(declare-fun b_lambda!284205 () Bool)

(assert (=> (not b_lambda!284205) (not b!7354514)))

(declare-fun m!8014728 () Bool)

(assert (=> b!7354514 m!8014728))

(declare-fun m!8014730 () Bool)

(assert (=> b!7354515 m!8014730))

(assert (=> b!7354433 d!2281162))

(declare-fun bs!1919602 () Bool)

(declare-fun d!2281164 () Bool)

(assert (= bs!1919602 (and d!2281164 b!7354434)))

(declare-fun lambda!456878 () Int)

(assert (=> bs!1919602 (= lambda!456878 lambda!456864)))

(assert (=> d!2281164 (set.member (Context!16253 (++!17004 (exprs!8626 cWitness!61) (exprs!8626 ct2!378))) (derivationStepZipperDown!3012 (reg!19515 r1!2370) (Context!16253 (++!17004 (exprs!8626 lt!2612897) (exprs!8626 ct2!378))) c!10362))))

(declare-fun lt!2612939 () Unit!165325)

(assert (=> d!2281164 (= lt!2612939 (lemmaConcatPreservesForall!1861 (exprs!8626 lt!2612897) (exprs!8626 ct2!378) lambda!456878))))

(declare-fun lt!2612938 () Unit!165325)

(assert (=> d!2281164 (= lt!2612938 (lemmaConcatPreservesForall!1861 (exprs!8626 cWitness!61) (exprs!8626 ct2!378) lambda!456878))))

(declare-fun lt!2612937 () Unit!165325)

(declare-fun choose!57208 (Regex!19186 Context!16252 Context!16252 Context!16252 C!38646) Unit!165325)

(assert (=> d!2281164 (= lt!2612937 (choose!57208 (reg!19515 r1!2370) lt!2612897 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2281164 (validRegex!9782 (reg!19515 r1!2370))))

(assert (=> d!2281164 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!103 (reg!19515 r1!2370) lt!2612897 ct2!378 cWitness!61 c!10362) lt!2612937)))

(declare-fun bs!1919603 () Bool)

(assert (= bs!1919603 d!2281164))

(declare-fun m!8014732 () Bool)

(assert (=> bs!1919603 m!8014732))

(declare-fun m!8014734 () Bool)

(assert (=> bs!1919603 m!8014734))

(declare-fun m!8014736 () Bool)

(assert (=> bs!1919603 m!8014736))

(declare-fun m!8014738 () Bool)

(assert (=> bs!1919603 m!8014738))

(declare-fun m!8014740 () Bool)

(assert (=> bs!1919603 m!8014740))

(assert (=> bs!1919603 m!8014656))

(declare-fun m!8014742 () Bool)

(assert (=> bs!1919603 m!8014742))

(declare-fun m!8014744 () Bool)

(assert (=> bs!1919603 m!8014744))

(assert (=> b!7354433 d!2281164))

(declare-fun d!2281166 () Bool)

(assert (=> d!2281166 (forall!18006 (++!17004 (exprs!8626 cWitness!61) (exprs!8626 ct2!378)) lambda!456864)))

(declare-fun lt!2612942 () Unit!165325)

(declare-fun choose!57209 (List!71682 List!71682 Int) Unit!165325)

(assert (=> d!2281166 (= lt!2612942 (choose!57209 (exprs!8626 cWitness!61) (exprs!8626 ct2!378) lambda!456864))))

(assert (=> d!2281166 (forall!18006 (exprs!8626 cWitness!61) lambda!456864)))

(assert (=> d!2281166 (= (lemmaConcatPreservesForall!1861 (exprs!8626 cWitness!61) (exprs!8626 ct2!378) lambda!456864) lt!2612942)))

(declare-fun bs!1919604 () Bool)

(assert (= bs!1919604 d!2281166))

(assert (=> bs!1919604 m!8014656))

(assert (=> bs!1919604 m!8014656))

(declare-fun m!8014752 () Bool)

(assert (=> bs!1919604 m!8014752))

(declare-fun m!8014754 () Bool)

(assert (=> bs!1919604 m!8014754))

(assert (=> bs!1919604 m!8014652))

(assert (=> b!7354433 d!2281166))

(declare-fun b!7354545 () Bool)

(declare-fun res!2969841 () Bool)

(declare-fun e!4403524 () Bool)

(assert (=> b!7354545 (=> (not res!2969841) (not e!4403524))))

(declare-fun lt!2612943 () List!71682)

(assert (=> b!7354545 (= res!2969841 (= (size!42067 lt!2612943) (+ (size!42067 (exprs!8626 cWitness!61)) (size!42067 (exprs!8626 ct2!378)))))))

(declare-fun b!7354543 () Bool)

(declare-fun e!4403525 () List!71682)

(assert (=> b!7354543 (= e!4403525 (exprs!8626 ct2!378))))

(declare-fun d!2281170 () Bool)

(assert (=> d!2281170 e!4403524))

(declare-fun res!2969840 () Bool)

(assert (=> d!2281170 (=> (not res!2969840) (not e!4403524))))

(assert (=> d!2281170 (= res!2969840 (= (content!15089 lt!2612943) (set.union (content!15089 (exprs!8626 cWitness!61)) (content!15089 (exprs!8626 ct2!378)))))))

(assert (=> d!2281170 (= lt!2612943 e!4403525)))

(declare-fun c!1366400 () Bool)

(assert (=> d!2281170 (= c!1366400 (is-Nil!71558 (exprs!8626 cWitness!61)))))

(assert (=> d!2281170 (= (++!17004 (exprs!8626 cWitness!61) (exprs!8626 ct2!378)) lt!2612943)))

(declare-fun b!7354544 () Bool)

(assert (=> b!7354544 (= e!4403525 (Cons!71558 (h!78006 (exprs!8626 cWitness!61)) (++!17004 (t!386115 (exprs!8626 cWitness!61)) (exprs!8626 ct2!378))))))

(declare-fun b!7354546 () Bool)

(assert (=> b!7354546 (= e!4403524 (or (not (= (exprs!8626 ct2!378) Nil!71558)) (= lt!2612943 (exprs!8626 cWitness!61))))))

(assert (= (and d!2281170 c!1366400) b!7354543))

(assert (= (and d!2281170 (not c!1366400)) b!7354544))

(assert (= (and d!2281170 res!2969840) b!7354545))

(assert (= (and b!7354545 res!2969841) b!7354546))

(declare-fun m!8014756 () Bool)

(assert (=> b!7354545 m!8014756))

(declare-fun m!8014758 () Bool)

(assert (=> b!7354545 m!8014758))

(assert (=> b!7354545 m!8014718))

(declare-fun m!8014760 () Bool)

(assert (=> d!2281170 m!8014760))

(declare-fun m!8014762 () Bool)

(assert (=> d!2281170 m!8014762))

(assert (=> d!2281170 m!8014724))

(declare-fun m!8014764 () Bool)

(assert (=> b!7354544 m!8014764))

(assert (=> b!7354433 d!2281170))

(declare-fun d!2281172 () Bool)

(assert (=> d!2281172 (forall!18006 (++!17004 lt!2612895 (exprs!8626 ct2!378)) lambda!456864)))

(declare-fun lt!2612944 () Unit!165325)

(assert (=> d!2281172 (= lt!2612944 (choose!57209 lt!2612895 (exprs!8626 ct2!378) lambda!456864))))

(assert (=> d!2281172 (forall!18006 lt!2612895 lambda!456864)))

(assert (=> d!2281172 (= (lemmaConcatPreservesForall!1861 lt!2612895 (exprs!8626 ct2!378) lambda!456864) lt!2612944)))

(declare-fun bs!1919605 () Bool)

(assert (= bs!1919605 d!2281172))

(assert (=> bs!1919605 m!8014650))

(assert (=> bs!1919605 m!8014650))

(declare-fun m!8014766 () Bool)

(assert (=> bs!1919605 m!8014766))

(declare-fun m!8014768 () Bool)

(assert (=> bs!1919605 m!8014768))

(declare-fun m!8014770 () Bool)

(assert (=> bs!1919605 m!8014770))

(assert (=> b!7354433 d!2281172))

(declare-fun call!673152 () (Set Context!16252))

(declare-fun bm!673144 () Bool)

(declare-fun call!673149 () List!71682)

(declare-fun c!1366412 () Bool)

(assert (=> bm!673144 (= call!673152 (derivationStepZipperDown!3012 (ite c!1366412 (regTwo!38885 (reg!19515 r1!2370)) (regOne!38884 (reg!19515 r1!2370))) (ite c!1366412 (Context!16253 (++!17004 lt!2612895 (exprs!8626 ct2!378))) (Context!16253 call!673149)) c!10362))))

(declare-fun bm!673145 () Bool)

(declare-fun call!673153 () (Set Context!16252))

(declare-fun call!673150 () (Set Context!16252))

(assert (=> bm!673145 (= call!673153 call!673150)))

(declare-fun d!2281174 () Bool)

(declare-fun c!1366415 () Bool)

(assert (=> d!2281174 (= c!1366415 (and (is-ElementMatch!19186 (reg!19515 r1!2370)) (= (c!1366388 (reg!19515 r1!2370)) c!10362)))))

(declare-fun e!4403541 () (Set Context!16252))

(assert (=> d!2281174 (= (derivationStepZipperDown!3012 (reg!19515 r1!2370) (Context!16253 (++!17004 lt!2612895 (exprs!8626 ct2!378))) c!10362) e!4403541)))

(declare-fun bm!673146 () Bool)

(declare-fun call!673151 () List!71682)

(assert (=> bm!673146 (= call!673151 call!673149)))

(declare-fun b!7354569 () Bool)

(declare-fun e!4403543 () (Set Context!16252))

(declare-fun e!4403539 () (Set Context!16252))

(assert (=> b!7354569 (= e!4403543 e!4403539)))

(declare-fun c!1366414 () Bool)

(assert (=> b!7354569 (= c!1366414 (is-Concat!28031 (reg!19515 r1!2370)))))

(declare-fun c!1366413 () Bool)

(declare-fun bm!673147 () Bool)

(assert (=> bm!673147 (= call!673150 (derivationStepZipperDown!3012 (ite c!1366412 (regOne!38885 (reg!19515 r1!2370)) (ite c!1366413 (regTwo!38884 (reg!19515 r1!2370)) (ite c!1366414 (regOne!38884 (reg!19515 r1!2370)) (reg!19515 (reg!19515 r1!2370))))) (ite (or c!1366412 c!1366413) (Context!16253 (++!17004 lt!2612895 (exprs!8626 ct2!378))) (Context!16253 call!673151)) c!10362))))

(declare-fun b!7354570 () Bool)

(declare-fun e!4403542 () (Set Context!16252))

(assert (=> b!7354570 (= e!4403542 (set.union call!673150 call!673152))))

(declare-fun b!7354571 () Bool)

(declare-fun e!4403540 () (Set Context!16252))

(assert (=> b!7354571 (= e!4403540 (as set.empty (Set Context!16252)))))

(declare-fun b!7354572 () Bool)

(assert (=> b!7354572 (= e!4403541 e!4403542)))

(assert (=> b!7354572 (= c!1366412 (is-Union!19186 (reg!19515 r1!2370)))))

(declare-fun b!7354573 () Bool)

(declare-fun call!673154 () (Set Context!16252))

(assert (=> b!7354573 (= e!4403539 call!673154)))

(declare-fun b!7354574 () Bool)

(assert (=> b!7354574 (= e!4403541 (set.insert (Context!16253 (++!17004 lt!2612895 (exprs!8626 ct2!378))) (as set.empty (Set Context!16252))))))

(declare-fun bm!673148 () Bool)

(assert (=> bm!673148 (= call!673154 call!673153)))

(declare-fun b!7354575 () Bool)

(declare-fun c!1366416 () Bool)

(assert (=> b!7354575 (= c!1366416 (is-Star!19186 (reg!19515 r1!2370)))))

(assert (=> b!7354575 (= e!4403539 e!4403540)))

(declare-fun b!7354576 () Bool)

(assert (=> b!7354576 (= e!4403543 (set.union call!673152 call!673153))))

(declare-fun b!7354577 () Bool)

(declare-fun e!4403538 () Bool)

(assert (=> b!7354577 (= c!1366413 e!4403538)))

(declare-fun res!2969844 () Bool)

(assert (=> b!7354577 (=> (not res!2969844) (not e!4403538))))

(assert (=> b!7354577 (= res!2969844 (is-Concat!28031 (reg!19515 r1!2370)))))

(assert (=> b!7354577 (= e!4403542 e!4403543)))

(declare-fun b!7354578 () Bool)

(assert (=> b!7354578 (= e!4403538 (nullable!8277 (regOne!38884 (reg!19515 r1!2370))))))

(declare-fun bm!673149 () Bool)

(assert (=> bm!673149 (= call!673149 ($colon$colon!3183 (exprs!8626 (Context!16253 (++!17004 lt!2612895 (exprs!8626 ct2!378)))) (ite (or c!1366413 c!1366414) (regTwo!38884 (reg!19515 r1!2370)) (reg!19515 r1!2370))))))

(declare-fun b!7354579 () Bool)

(assert (=> b!7354579 (= e!4403540 call!673154)))

(assert (= (and d!2281174 c!1366415) b!7354574))

(assert (= (and d!2281174 (not c!1366415)) b!7354572))

(assert (= (and b!7354572 c!1366412) b!7354570))

(assert (= (and b!7354572 (not c!1366412)) b!7354577))

(assert (= (and b!7354577 res!2969844) b!7354578))

(assert (= (and b!7354577 c!1366413) b!7354576))

(assert (= (and b!7354577 (not c!1366413)) b!7354569))

(assert (= (and b!7354569 c!1366414) b!7354573))

(assert (= (and b!7354569 (not c!1366414)) b!7354575))

(assert (= (and b!7354575 c!1366416) b!7354579))

(assert (= (and b!7354575 (not c!1366416)) b!7354571))

(assert (= (or b!7354573 b!7354579) bm!673146))

(assert (= (or b!7354573 b!7354579) bm!673148))

(assert (= (or b!7354576 bm!673148) bm!673145))

(assert (= (or b!7354576 bm!673146) bm!673149))

(assert (= (or b!7354570 b!7354576) bm!673144))

(assert (= (or b!7354570 bm!673145) bm!673147))

(declare-fun m!8014772 () Bool)

(assert (=> b!7354574 m!8014772))

(declare-fun m!8014774 () Bool)

(assert (=> bm!673147 m!8014774))

(declare-fun m!8014776 () Bool)

(assert (=> bm!673144 m!8014776))

(declare-fun m!8014778 () Bool)

(assert (=> bm!673149 m!8014778))

(declare-fun m!8014780 () Bool)

(assert (=> b!7354578 m!8014780))

(assert (=> b!7354433 d!2281174))

(declare-fun call!673155 () List!71682)

(declare-fun call!673158 () (Set Context!16252))

(declare-fun bm!673150 () Bool)

(declare-fun c!1366417 () Bool)

(assert (=> bm!673150 (= call!673158 (derivationStepZipperDown!3012 (ite c!1366417 (regTwo!38885 r1!2370) (regOne!38884 r1!2370)) (ite c!1366417 (Context!16253 (++!17004 (exprs!8626 ct1!282) (exprs!8626 ct2!378))) (Context!16253 call!673155)) c!10362))))

(declare-fun bm!673151 () Bool)

(declare-fun call!673159 () (Set Context!16252))

(declare-fun call!673156 () (Set Context!16252))

(assert (=> bm!673151 (= call!673159 call!673156)))

(declare-fun d!2281176 () Bool)

(declare-fun c!1366420 () Bool)

(assert (=> d!2281176 (= c!1366420 (and (is-ElementMatch!19186 r1!2370) (= (c!1366388 r1!2370) c!10362)))))

(declare-fun e!4403547 () (Set Context!16252))

(assert (=> d!2281176 (= (derivationStepZipperDown!3012 r1!2370 (Context!16253 (++!17004 (exprs!8626 ct1!282) (exprs!8626 ct2!378))) c!10362) e!4403547)))

(declare-fun bm!673152 () Bool)

(declare-fun call!673157 () List!71682)

(assert (=> bm!673152 (= call!673157 call!673155)))

(declare-fun b!7354580 () Bool)

(declare-fun e!4403549 () (Set Context!16252))

(declare-fun e!4403545 () (Set Context!16252))

(assert (=> b!7354580 (= e!4403549 e!4403545)))

(declare-fun c!1366419 () Bool)

(assert (=> b!7354580 (= c!1366419 (is-Concat!28031 r1!2370))))

(declare-fun c!1366418 () Bool)

(declare-fun bm!673153 () Bool)

(assert (=> bm!673153 (= call!673156 (derivationStepZipperDown!3012 (ite c!1366417 (regOne!38885 r1!2370) (ite c!1366418 (regTwo!38884 r1!2370) (ite c!1366419 (regOne!38884 r1!2370) (reg!19515 r1!2370)))) (ite (or c!1366417 c!1366418) (Context!16253 (++!17004 (exprs!8626 ct1!282) (exprs!8626 ct2!378))) (Context!16253 call!673157)) c!10362))))

(declare-fun b!7354581 () Bool)

(declare-fun e!4403548 () (Set Context!16252))

(assert (=> b!7354581 (= e!4403548 (set.union call!673156 call!673158))))

(declare-fun b!7354582 () Bool)

(declare-fun e!4403546 () (Set Context!16252))

(assert (=> b!7354582 (= e!4403546 (as set.empty (Set Context!16252)))))

(declare-fun b!7354583 () Bool)

(assert (=> b!7354583 (= e!4403547 e!4403548)))

(assert (=> b!7354583 (= c!1366417 (is-Union!19186 r1!2370))))

(declare-fun b!7354584 () Bool)

(declare-fun call!673160 () (Set Context!16252))

(assert (=> b!7354584 (= e!4403545 call!673160)))

(declare-fun b!7354585 () Bool)

(assert (=> b!7354585 (= e!4403547 (set.insert (Context!16253 (++!17004 (exprs!8626 ct1!282) (exprs!8626 ct2!378))) (as set.empty (Set Context!16252))))))

(declare-fun bm!673154 () Bool)

(assert (=> bm!673154 (= call!673160 call!673159)))

(declare-fun b!7354586 () Bool)

(declare-fun c!1366421 () Bool)

(assert (=> b!7354586 (= c!1366421 (is-Star!19186 r1!2370))))

(assert (=> b!7354586 (= e!4403545 e!4403546)))

(declare-fun b!7354587 () Bool)

(assert (=> b!7354587 (= e!4403549 (set.union call!673158 call!673159))))

(declare-fun b!7354588 () Bool)

(declare-fun e!4403544 () Bool)

(assert (=> b!7354588 (= c!1366418 e!4403544)))

(declare-fun res!2969845 () Bool)

(assert (=> b!7354588 (=> (not res!2969845) (not e!4403544))))

(assert (=> b!7354588 (= res!2969845 (is-Concat!28031 r1!2370))))

(assert (=> b!7354588 (= e!4403548 e!4403549)))

(declare-fun b!7354589 () Bool)

(assert (=> b!7354589 (= e!4403544 (nullable!8277 (regOne!38884 r1!2370)))))

(declare-fun bm!673155 () Bool)

(assert (=> bm!673155 (= call!673155 ($colon$colon!3183 (exprs!8626 (Context!16253 (++!17004 (exprs!8626 ct1!282) (exprs!8626 ct2!378)))) (ite (or c!1366418 c!1366419) (regTwo!38884 r1!2370) r1!2370)))))

(declare-fun b!7354590 () Bool)

(assert (=> b!7354590 (= e!4403546 call!673160)))

(assert (= (and d!2281176 c!1366420) b!7354585))

(assert (= (and d!2281176 (not c!1366420)) b!7354583))

(assert (= (and b!7354583 c!1366417) b!7354581))

(assert (= (and b!7354583 (not c!1366417)) b!7354588))

(assert (= (and b!7354588 res!2969845) b!7354589))

(assert (= (and b!7354588 c!1366418) b!7354587))

(assert (= (and b!7354588 (not c!1366418)) b!7354580))

(assert (= (and b!7354580 c!1366419) b!7354584))

(assert (= (and b!7354580 (not c!1366419)) b!7354586))

(assert (= (and b!7354586 c!1366421) b!7354590))

(assert (= (and b!7354586 (not c!1366421)) b!7354582))

(assert (= (or b!7354584 b!7354590) bm!673152))

(assert (= (or b!7354584 b!7354590) bm!673154))

(assert (= (or b!7354587 bm!673154) bm!673151))

(assert (= (or b!7354587 bm!673152) bm!673155))

(assert (= (or b!7354581 b!7354587) bm!673150))

(assert (= (or b!7354581 bm!673151) bm!673153))

(declare-fun m!8014782 () Bool)

(assert (=> b!7354585 m!8014782))

(declare-fun m!8014784 () Bool)

(assert (=> bm!673153 m!8014784))

(declare-fun m!8014786 () Bool)

(assert (=> bm!673150 m!8014786))

(declare-fun m!8014788 () Bool)

(assert (=> bm!673155 m!8014788))

(assert (=> b!7354589 m!8014622))

(assert (=> b!7354434 d!2281176))

(declare-fun b!7354593 () Bool)

(declare-fun res!2969847 () Bool)

(declare-fun e!4403550 () Bool)

(assert (=> b!7354593 (=> (not res!2969847) (not e!4403550))))

(declare-fun lt!2612954 () List!71682)

(assert (=> b!7354593 (= res!2969847 (= (size!42067 lt!2612954) (+ (size!42067 (exprs!8626 ct1!282)) (size!42067 (exprs!8626 ct2!378)))))))

(declare-fun b!7354591 () Bool)

(declare-fun e!4403551 () List!71682)

(assert (=> b!7354591 (= e!4403551 (exprs!8626 ct2!378))))

(declare-fun d!2281178 () Bool)

(assert (=> d!2281178 e!4403550))

(declare-fun res!2969846 () Bool)

(assert (=> d!2281178 (=> (not res!2969846) (not e!4403550))))

(assert (=> d!2281178 (= res!2969846 (= (content!15089 lt!2612954) (set.union (content!15089 (exprs!8626 ct1!282)) (content!15089 (exprs!8626 ct2!378)))))))

(assert (=> d!2281178 (= lt!2612954 e!4403551)))

(declare-fun c!1366422 () Bool)

(assert (=> d!2281178 (= c!1366422 (is-Nil!71558 (exprs!8626 ct1!282)))))

(assert (=> d!2281178 (= (++!17004 (exprs!8626 ct1!282) (exprs!8626 ct2!378)) lt!2612954)))

(declare-fun b!7354592 () Bool)

(assert (=> b!7354592 (= e!4403551 (Cons!71558 (h!78006 (exprs!8626 ct1!282)) (++!17004 (t!386115 (exprs!8626 ct1!282)) (exprs!8626 ct2!378))))))

(declare-fun b!7354594 () Bool)

(assert (=> b!7354594 (= e!4403550 (or (not (= (exprs!8626 ct2!378) Nil!71558)) (= lt!2612954 (exprs!8626 ct1!282))))))

(assert (= (and d!2281178 c!1366422) b!7354591))

(assert (= (and d!2281178 (not c!1366422)) b!7354592))

(assert (= (and d!2281178 res!2969846) b!7354593))

(assert (= (and b!7354593 res!2969847) b!7354594))

(declare-fun m!8014790 () Bool)

(assert (=> b!7354593 m!8014790))

(declare-fun m!8014792 () Bool)

(assert (=> b!7354593 m!8014792))

(assert (=> b!7354593 m!8014718))

(declare-fun m!8014794 () Bool)

(assert (=> d!2281178 m!8014794))

(declare-fun m!8014796 () Bool)

(assert (=> d!2281178 m!8014796))

(assert (=> d!2281178 m!8014724))

(declare-fun m!8014798 () Bool)

(assert (=> b!7354592 m!8014798))

(assert (=> b!7354434 d!2281178))

(declare-fun d!2281180 () Bool)

(assert (=> d!2281180 (forall!18006 (++!17004 (exprs!8626 ct1!282) (exprs!8626 ct2!378)) lambda!456864)))

(declare-fun lt!2612955 () Unit!165325)

(assert (=> d!2281180 (= lt!2612955 (choose!57209 (exprs!8626 ct1!282) (exprs!8626 ct2!378) lambda!456864))))

(assert (=> d!2281180 (forall!18006 (exprs!8626 ct1!282) lambda!456864)))

(assert (=> d!2281180 (= (lemmaConcatPreservesForall!1861 (exprs!8626 ct1!282) (exprs!8626 ct2!378) lambda!456864) lt!2612955)))

(declare-fun bs!1919608 () Bool)

(assert (= bs!1919608 d!2281180))

(assert (=> bs!1919608 m!8014638))

(assert (=> bs!1919608 m!8014638))

(declare-fun m!8014804 () Bool)

(assert (=> bs!1919608 m!8014804))

(declare-fun m!8014806 () Bool)

(assert (=> bs!1919608 m!8014806))

(declare-fun m!8014810 () Bool)

(assert (=> bs!1919608 m!8014810))

(assert (=> b!7354434 d!2281180))

(declare-fun b!7354617 () Bool)

(declare-fun res!2969861 () Bool)

(declare-fun e!4403572 () Bool)

(assert (=> b!7354617 (=> res!2969861 e!4403572)))

(assert (=> b!7354617 (= res!2969861 (not (is-Concat!28031 r1!2370)))))

(declare-fun e!4403573 () Bool)

(assert (=> b!7354617 (= e!4403573 e!4403572)))

(declare-fun b!7354618 () Bool)

(declare-fun e!4403574 () Bool)

(declare-fun call!673169 () Bool)

(assert (=> b!7354618 (= e!4403574 call!673169)))

(declare-fun bm!673162 () Bool)

(declare-fun call!673167 () Bool)

(declare-fun c!1366430 () Bool)

(assert (=> bm!673162 (= call!673167 (validRegex!9782 (ite c!1366430 (regOne!38885 r1!2370) (regTwo!38884 r1!2370))))))

(declare-fun d!2281182 () Bool)

(declare-fun res!2969858 () Bool)

(declare-fun e!4403568 () Bool)

(assert (=> d!2281182 (=> res!2969858 e!4403568)))

(assert (=> d!2281182 (= res!2969858 (is-ElementMatch!19186 r1!2370))))

(assert (=> d!2281182 (= (validRegex!9782 r1!2370) e!4403568)))

(declare-fun b!7354619 () Bool)

(declare-fun e!4403569 () Bool)

(assert (=> b!7354619 (= e!4403568 e!4403569)))

(declare-fun c!1366429 () Bool)

(assert (=> b!7354619 (= c!1366429 (is-Star!19186 r1!2370))))

(declare-fun b!7354620 () Bool)

(assert (=> b!7354620 (= e!4403569 e!4403574)))

(declare-fun res!2969859 () Bool)

(assert (=> b!7354620 (= res!2969859 (not (nullable!8277 (reg!19515 r1!2370))))))

(assert (=> b!7354620 (=> (not res!2969859) (not e!4403574))))

(declare-fun b!7354621 () Bool)

(declare-fun e!4403571 () Bool)

(declare-fun call!673168 () Bool)

(assert (=> b!7354621 (= e!4403571 call!673168)))

(declare-fun b!7354622 () Bool)

(assert (=> b!7354622 (= e!4403569 e!4403573)))

(assert (=> b!7354622 (= c!1366430 (is-Union!19186 r1!2370))))

(declare-fun bm!673163 () Bool)

(assert (=> bm!673163 (= call!673169 (validRegex!9782 (ite c!1366429 (reg!19515 r1!2370) (ite c!1366430 (regTwo!38885 r1!2370) (regOne!38884 r1!2370)))))))

(declare-fun b!7354623 () Bool)

(declare-fun res!2969860 () Bool)

(assert (=> b!7354623 (=> (not res!2969860) (not e!4403571))))

(assert (=> b!7354623 (= res!2969860 call!673167)))

(assert (=> b!7354623 (= e!4403573 e!4403571)))

(declare-fun b!7354624 () Bool)

(declare-fun e!4403570 () Bool)

(assert (=> b!7354624 (= e!4403570 call!673167)))

(declare-fun b!7354625 () Bool)

(assert (=> b!7354625 (= e!4403572 e!4403570)))

(declare-fun res!2969862 () Bool)

(assert (=> b!7354625 (=> (not res!2969862) (not e!4403570))))

(assert (=> b!7354625 (= res!2969862 call!673168)))

(declare-fun bm!673164 () Bool)

(assert (=> bm!673164 (= call!673168 call!673169)))

(assert (= (and d!2281182 (not res!2969858)) b!7354619))

(assert (= (and b!7354619 c!1366429) b!7354620))

(assert (= (and b!7354619 (not c!1366429)) b!7354622))

(assert (= (and b!7354620 res!2969859) b!7354618))

(assert (= (and b!7354622 c!1366430) b!7354623))

(assert (= (and b!7354622 (not c!1366430)) b!7354617))

(assert (= (and b!7354623 res!2969860) b!7354621))

(assert (= (and b!7354617 (not res!2969861)) b!7354625))

(assert (= (and b!7354625 res!2969862) b!7354624))

(assert (= (or b!7354623 b!7354624) bm!673162))

(assert (= (or b!7354621 b!7354625) bm!673164))

(assert (= (or b!7354618 bm!673164) bm!673163))

(declare-fun m!8014820 () Bool)

(assert (=> bm!673162 m!8014820))

(declare-fun m!8014822 () Bool)

(assert (=> b!7354620 m!8014822))

(declare-fun m!8014824 () Bool)

(assert (=> bm!673163 m!8014824))

(assert (=> start!718158 d!2281182))

(declare-fun bs!1919609 () Bool)

(declare-fun d!2281186 () Bool)

(assert (= bs!1919609 (and d!2281186 b!7354434)))

(declare-fun lambda!456886 () Int)

(assert (=> bs!1919609 (= lambda!456886 lambda!456864)))

(declare-fun bs!1919610 () Bool)

(assert (= bs!1919610 (and d!2281186 d!2281164)))

(assert (=> bs!1919610 (= lambda!456886 lambda!456878)))

(assert (=> d!2281186 (= (inv!91306 cWitness!61) (forall!18006 (exprs!8626 cWitness!61) lambda!456886))))

(declare-fun bs!1919611 () Bool)

(assert (= bs!1919611 d!2281186))

(declare-fun m!8014826 () Bool)

(assert (=> bs!1919611 m!8014826))

(assert (=> start!718158 d!2281186))

(declare-fun bs!1919612 () Bool)

(declare-fun d!2281188 () Bool)

(assert (= bs!1919612 (and d!2281188 b!7354434)))

(declare-fun lambda!456887 () Int)

(assert (=> bs!1919612 (= lambda!456887 lambda!456864)))

(declare-fun bs!1919613 () Bool)

(assert (= bs!1919613 (and d!2281188 d!2281164)))

(assert (=> bs!1919613 (= lambda!456887 lambda!456878)))

(declare-fun bs!1919614 () Bool)

(assert (= bs!1919614 (and d!2281188 d!2281186)))

(assert (=> bs!1919614 (= lambda!456887 lambda!456886)))

(assert (=> d!2281188 (= (inv!91306 ct1!282) (forall!18006 (exprs!8626 ct1!282) lambda!456887))))

(declare-fun bs!1919615 () Bool)

(assert (= bs!1919615 d!2281188))

(declare-fun m!8014828 () Bool)

(assert (=> bs!1919615 m!8014828))

(assert (=> start!718158 d!2281188))

(declare-fun bs!1919616 () Bool)

(declare-fun d!2281190 () Bool)

(assert (= bs!1919616 (and d!2281190 b!7354434)))

(declare-fun lambda!456888 () Int)

(assert (=> bs!1919616 (= lambda!456888 lambda!456864)))

(declare-fun bs!1919617 () Bool)

(assert (= bs!1919617 (and d!2281190 d!2281164)))

(assert (=> bs!1919617 (= lambda!456888 lambda!456878)))

(declare-fun bs!1919618 () Bool)

(assert (= bs!1919618 (and d!2281190 d!2281186)))

(assert (=> bs!1919618 (= lambda!456888 lambda!456886)))

(declare-fun bs!1919619 () Bool)

(assert (= bs!1919619 (and d!2281190 d!2281188)))

(assert (=> bs!1919619 (= lambda!456888 lambda!456887)))

(assert (=> d!2281190 (= (inv!91306 ct2!378) (forall!18006 (exprs!8626 ct2!378) lambda!456888))))

(declare-fun bs!1919620 () Bool)

(assert (= bs!1919620 d!2281190))

(declare-fun m!8014830 () Bool)

(assert (=> bs!1919620 m!8014830))

(assert (=> start!718158 d!2281190))

(declare-fun b!7354634 () Bool)

(declare-fun res!2969872 () Bool)

(declare-fun e!4403583 () Bool)

(assert (=> b!7354634 (=> res!2969872 e!4403583)))

(assert (=> b!7354634 (= res!2969872 (not (is-Concat!28031 lt!2612896)))))

(declare-fun e!4403584 () Bool)

(assert (=> b!7354634 (= e!4403584 e!4403583)))

(declare-fun b!7354635 () Bool)

(declare-fun e!4403585 () Bool)

(declare-fun call!673172 () Bool)

(assert (=> b!7354635 (= e!4403585 call!673172)))

(declare-fun bm!673165 () Bool)

(declare-fun call!673170 () Bool)

(declare-fun c!1366433 () Bool)

(assert (=> bm!673165 (= call!673170 (validRegex!9782 (ite c!1366433 (regOne!38885 lt!2612896) (regTwo!38884 lt!2612896))))))

(declare-fun d!2281192 () Bool)

(declare-fun res!2969869 () Bool)

(declare-fun e!4403579 () Bool)

(assert (=> d!2281192 (=> res!2969869 e!4403579)))

(assert (=> d!2281192 (= res!2969869 (is-ElementMatch!19186 lt!2612896))))

(assert (=> d!2281192 (= (validRegex!9782 lt!2612896) e!4403579)))

(declare-fun b!7354636 () Bool)

(declare-fun e!4403580 () Bool)

(assert (=> b!7354636 (= e!4403579 e!4403580)))

(declare-fun c!1366432 () Bool)

(assert (=> b!7354636 (= c!1366432 (is-Star!19186 lt!2612896))))

(declare-fun b!7354637 () Bool)

(assert (=> b!7354637 (= e!4403580 e!4403585)))

(declare-fun res!2969870 () Bool)

(assert (=> b!7354637 (= res!2969870 (not (nullable!8277 (reg!19515 lt!2612896))))))

(assert (=> b!7354637 (=> (not res!2969870) (not e!4403585))))

(declare-fun b!7354638 () Bool)

(declare-fun e!4403582 () Bool)

(declare-fun call!673171 () Bool)

(assert (=> b!7354638 (= e!4403582 call!673171)))

(declare-fun b!7354639 () Bool)

(assert (=> b!7354639 (= e!4403580 e!4403584)))

(assert (=> b!7354639 (= c!1366433 (is-Union!19186 lt!2612896))))

(declare-fun bm!673166 () Bool)

(assert (=> bm!673166 (= call!673172 (validRegex!9782 (ite c!1366432 (reg!19515 lt!2612896) (ite c!1366433 (regTwo!38885 lt!2612896) (regOne!38884 lt!2612896)))))))

(declare-fun b!7354640 () Bool)

(declare-fun res!2969871 () Bool)

(assert (=> b!7354640 (=> (not res!2969871) (not e!4403582))))

(assert (=> b!7354640 (= res!2969871 call!673170)))

(assert (=> b!7354640 (= e!4403584 e!4403582)))

(declare-fun b!7354641 () Bool)

(declare-fun e!4403581 () Bool)

(assert (=> b!7354641 (= e!4403581 call!673170)))

(declare-fun b!7354642 () Bool)

(assert (=> b!7354642 (= e!4403583 e!4403581)))

(declare-fun res!2969873 () Bool)

(assert (=> b!7354642 (=> (not res!2969873) (not e!4403581))))

(assert (=> b!7354642 (= res!2969873 call!673171)))

(declare-fun bm!673167 () Bool)

(assert (=> bm!673167 (= call!673171 call!673172)))

(assert (= (and d!2281192 (not res!2969869)) b!7354636))

(assert (= (and b!7354636 c!1366432) b!7354637))

(assert (= (and b!7354636 (not c!1366432)) b!7354639))

(assert (= (and b!7354637 res!2969870) b!7354635))

(assert (= (and b!7354639 c!1366433) b!7354640))

(assert (= (and b!7354639 (not c!1366433)) b!7354634))

(assert (= (and b!7354640 res!2969871) b!7354638))

(assert (= (and b!7354634 (not res!2969872)) b!7354642))

(assert (= (and b!7354642 res!2969873) b!7354641))

(assert (= (or b!7354640 b!7354641) bm!673165))

(assert (= (or b!7354638 b!7354642) bm!673167))

(assert (= (or b!7354635 bm!673167) bm!673166))

(declare-fun m!8014832 () Bool)

(assert (=> bm!673165 m!8014832))

(declare-fun m!8014834 () Bool)

(assert (=> b!7354637 m!8014834))

(declare-fun m!8014838 () Bool)

(assert (=> bm!673166 m!8014838))

(assert (=> b!7354438 d!2281192))

(declare-fun d!2281194 () Bool)

(declare-fun nullableFct!3305 (Regex!19186) Bool)

(assert (=> d!2281194 (= (nullable!8277 (regOne!38884 r1!2370)) (nullableFct!3305 (regOne!38884 r1!2370)))))

(declare-fun bs!1919621 () Bool)

(assert (= bs!1919621 d!2281194))

(declare-fun m!8014852 () Bool)

(assert (=> bs!1919621 m!8014852))

(assert (=> b!7354436 d!2281194))

(declare-fun d!2281198 () Bool)

(declare-fun res!2969876 () Bool)

(declare-fun e!4403588 () Bool)

(assert (=> d!2281198 (=> res!2969876 e!4403588)))

(assert (=> d!2281198 (= res!2969876 (is-Nil!71558 (exprs!8626 ct2!378)))))

(assert (=> d!2281198 (= (forall!18006 (exprs!8626 ct2!378) lambda!456864) e!4403588)))

(declare-fun b!7354645 () Bool)

(declare-fun e!4403589 () Bool)

(assert (=> b!7354645 (= e!4403588 e!4403589)))

(declare-fun res!2969877 () Bool)

(assert (=> b!7354645 (=> (not res!2969877) (not e!4403589))))

(assert (=> b!7354645 (= res!2969877 (dynLambda!29505 lambda!456864 (h!78006 (exprs!8626 ct2!378))))))

(declare-fun b!7354646 () Bool)

(assert (=> b!7354646 (= e!4403589 (forall!18006 (t!386115 (exprs!8626 ct2!378)) lambda!456864))))

(assert (= (and d!2281198 (not res!2969876)) b!7354645))

(assert (= (and b!7354645 res!2969877) b!7354646))

(declare-fun b_lambda!284209 () Bool)

(assert (=> (not b_lambda!284209) (not b!7354645)))

(declare-fun m!8014856 () Bool)

(assert (=> b!7354645 m!8014856))

(declare-fun m!8014860 () Bool)

(assert (=> b!7354646 m!8014860))

(assert (=> b!7354441 d!2281198))

(declare-fun bm!673168 () Bool)

(declare-fun call!673173 () List!71682)

(declare-fun call!673176 () (Set Context!16252))

(declare-fun c!1366434 () Bool)

(assert (=> bm!673168 (= call!673176 (derivationStepZipperDown!3012 (ite c!1366434 (regTwo!38885 r1!2370) (regOne!38884 r1!2370)) (ite c!1366434 ct1!282 (Context!16253 call!673173)) c!10362))))

(declare-fun bm!673169 () Bool)

(declare-fun call!673177 () (Set Context!16252))

(declare-fun call!673174 () (Set Context!16252))

(assert (=> bm!673169 (= call!673177 call!673174)))

(declare-fun d!2281200 () Bool)

(declare-fun c!1366437 () Bool)

(assert (=> d!2281200 (= c!1366437 (and (is-ElementMatch!19186 r1!2370) (= (c!1366388 r1!2370) c!10362)))))

(declare-fun e!4403593 () (Set Context!16252))

(assert (=> d!2281200 (= (derivationStepZipperDown!3012 r1!2370 ct1!282 c!10362) e!4403593)))

(declare-fun bm!673170 () Bool)

(declare-fun call!673175 () List!71682)

(assert (=> bm!673170 (= call!673175 call!673173)))

(declare-fun b!7354647 () Bool)

(declare-fun e!4403595 () (Set Context!16252))

(declare-fun e!4403591 () (Set Context!16252))

(assert (=> b!7354647 (= e!4403595 e!4403591)))

(declare-fun c!1366436 () Bool)

(assert (=> b!7354647 (= c!1366436 (is-Concat!28031 r1!2370))))

(declare-fun c!1366435 () Bool)

(declare-fun bm!673171 () Bool)

(assert (=> bm!673171 (= call!673174 (derivationStepZipperDown!3012 (ite c!1366434 (regOne!38885 r1!2370) (ite c!1366435 (regTwo!38884 r1!2370) (ite c!1366436 (regOne!38884 r1!2370) (reg!19515 r1!2370)))) (ite (or c!1366434 c!1366435) ct1!282 (Context!16253 call!673175)) c!10362))))

(declare-fun b!7354648 () Bool)

(declare-fun e!4403594 () (Set Context!16252))

(assert (=> b!7354648 (= e!4403594 (set.union call!673174 call!673176))))

(declare-fun b!7354649 () Bool)

(declare-fun e!4403592 () (Set Context!16252))

(assert (=> b!7354649 (= e!4403592 (as set.empty (Set Context!16252)))))

(declare-fun b!7354650 () Bool)

(assert (=> b!7354650 (= e!4403593 e!4403594)))

(assert (=> b!7354650 (= c!1366434 (is-Union!19186 r1!2370))))

(declare-fun b!7354651 () Bool)

(declare-fun call!673178 () (Set Context!16252))

(assert (=> b!7354651 (= e!4403591 call!673178)))

(declare-fun b!7354652 () Bool)

(assert (=> b!7354652 (= e!4403593 (set.insert ct1!282 (as set.empty (Set Context!16252))))))

(declare-fun bm!673172 () Bool)

(assert (=> bm!673172 (= call!673178 call!673177)))

(declare-fun b!7354653 () Bool)

(declare-fun c!1366438 () Bool)

(assert (=> b!7354653 (= c!1366438 (is-Star!19186 r1!2370))))

(assert (=> b!7354653 (= e!4403591 e!4403592)))

(declare-fun b!7354654 () Bool)

(assert (=> b!7354654 (= e!4403595 (set.union call!673176 call!673177))))

(declare-fun b!7354655 () Bool)

(declare-fun e!4403590 () Bool)

(assert (=> b!7354655 (= c!1366435 e!4403590)))

(declare-fun res!2969878 () Bool)

(assert (=> b!7354655 (=> (not res!2969878) (not e!4403590))))

(assert (=> b!7354655 (= res!2969878 (is-Concat!28031 r1!2370))))

(assert (=> b!7354655 (= e!4403594 e!4403595)))

(declare-fun b!7354656 () Bool)

(assert (=> b!7354656 (= e!4403590 (nullable!8277 (regOne!38884 r1!2370)))))

(declare-fun bm!673173 () Bool)

(assert (=> bm!673173 (= call!673173 ($colon$colon!3183 (exprs!8626 ct1!282) (ite (or c!1366435 c!1366436) (regTwo!38884 r1!2370) r1!2370)))))

(declare-fun b!7354657 () Bool)

(assert (=> b!7354657 (= e!4403592 call!673178)))

(assert (= (and d!2281200 c!1366437) b!7354652))

(assert (= (and d!2281200 (not c!1366437)) b!7354650))

(assert (= (and b!7354650 c!1366434) b!7354648))

(assert (= (and b!7354650 (not c!1366434)) b!7354655))

(assert (= (and b!7354655 res!2969878) b!7354656))

(assert (= (and b!7354655 c!1366435) b!7354654))

(assert (= (and b!7354655 (not c!1366435)) b!7354647))

(assert (= (and b!7354647 c!1366436) b!7354651))

(assert (= (and b!7354647 (not c!1366436)) b!7354653))

(assert (= (and b!7354653 c!1366438) b!7354657))

(assert (= (and b!7354653 (not c!1366438)) b!7354649))

(assert (= (or b!7354651 b!7354657) bm!673170))

(assert (= (or b!7354651 b!7354657) bm!673172))

(assert (= (or b!7354654 bm!673172) bm!673169))

(assert (= (or b!7354654 bm!673170) bm!673173))

(assert (= (or b!7354648 b!7354654) bm!673168))

(assert (= (or b!7354648 bm!673169) bm!673171))

(declare-fun m!8014868 () Bool)

(assert (=> b!7354652 m!8014868))

(declare-fun m!8014874 () Bool)

(assert (=> bm!673171 m!8014874))

(declare-fun m!8014876 () Bool)

(assert (=> bm!673168 m!8014876))

(declare-fun m!8014878 () Bool)

(assert (=> bm!673173 m!8014878))

(assert (=> b!7354656 m!8014622))

(assert (=> b!7354431 d!2281200))

(declare-fun call!673179 () List!71682)

(declare-fun c!1366440 () Bool)

(declare-fun bm!673174 () Bool)

(declare-fun call!673182 () (Set Context!16252))

(assert (=> bm!673174 (= call!673182 (derivationStepZipperDown!3012 (ite c!1366440 (regTwo!38885 (reg!19515 r1!2370)) (regOne!38884 (reg!19515 r1!2370))) (ite c!1366440 lt!2612897 (Context!16253 call!673179)) c!10362))))

(declare-fun bm!673175 () Bool)

(declare-fun call!673183 () (Set Context!16252))

(declare-fun call!673180 () (Set Context!16252))

(assert (=> bm!673175 (= call!673183 call!673180)))

(declare-fun d!2281206 () Bool)

(declare-fun c!1366443 () Bool)

(assert (=> d!2281206 (= c!1366443 (and (is-ElementMatch!19186 (reg!19515 r1!2370)) (= (c!1366388 (reg!19515 r1!2370)) c!10362)))))

(declare-fun e!4403601 () (Set Context!16252))

(assert (=> d!2281206 (= (derivationStepZipperDown!3012 (reg!19515 r1!2370) lt!2612897 c!10362) e!4403601)))

(declare-fun bm!673176 () Bool)

(declare-fun call!673181 () List!71682)

(assert (=> bm!673176 (= call!673181 call!673179)))

(declare-fun b!7354662 () Bool)

(declare-fun e!4403603 () (Set Context!16252))

(declare-fun e!4403599 () (Set Context!16252))

(assert (=> b!7354662 (= e!4403603 e!4403599)))

(declare-fun c!1366442 () Bool)

(assert (=> b!7354662 (= c!1366442 (is-Concat!28031 (reg!19515 r1!2370)))))

(declare-fun c!1366441 () Bool)

(declare-fun bm!673177 () Bool)

(assert (=> bm!673177 (= call!673180 (derivationStepZipperDown!3012 (ite c!1366440 (regOne!38885 (reg!19515 r1!2370)) (ite c!1366441 (regTwo!38884 (reg!19515 r1!2370)) (ite c!1366442 (regOne!38884 (reg!19515 r1!2370)) (reg!19515 (reg!19515 r1!2370))))) (ite (or c!1366440 c!1366441) lt!2612897 (Context!16253 call!673181)) c!10362))))

(declare-fun b!7354663 () Bool)

(declare-fun e!4403602 () (Set Context!16252))

(assert (=> b!7354663 (= e!4403602 (set.union call!673180 call!673182))))

(declare-fun b!7354664 () Bool)

(declare-fun e!4403600 () (Set Context!16252))

(assert (=> b!7354664 (= e!4403600 (as set.empty (Set Context!16252)))))

(declare-fun b!7354665 () Bool)

(assert (=> b!7354665 (= e!4403601 e!4403602)))

(assert (=> b!7354665 (= c!1366440 (is-Union!19186 (reg!19515 r1!2370)))))

(declare-fun b!7354666 () Bool)

(declare-fun call!673184 () (Set Context!16252))

(assert (=> b!7354666 (= e!4403599 call!673184)))

(declare-fun b!7354667 () Bool)

(assert (=> b!7354667 (= e!4403601 (set.insert lt!2612897 (as set.empty (Set Context!16252))))))

(declare-fun bm!673178 () Bool)

(assert (=> bm!673178 (= call!673184 call!673183)))

(declare-fun b!7354668 () Bool)

(declare-fun c!1366444 () Bool)

(assert (=> b!7354668 (= c!1366444 (is-Star!19186 (reg!19515 r1!2370)))))

(assert (=> b!7354668 (= e!4403599 e!4403600)))

(declare-fun b!7354669 () Bool)

(assert (=> b!7354669 (= e!4403603 (set.union call!673182 call!673183))))

(declare-fun b!7354670 () Bool)

(declare-fun e!4403598 () Bool)

(assert (=> b!7354670 (= c!1366441 e!4403598)))

(declare-fun res!2969881 () Bool)

(assert (=> b!7354670 (=> (not res!2969881) (not e!4403598))))

(assert (=> b!7354670 (= res!2969881 (is-Concat!28031 (reg!19515 r1!2370)))))

(assert (=> b!7354670 (= e!4403602 e!4403603)))

(declare-fun b!7354671 () Bool)

(assert (=> b!7354671 (= e!4403598 (nullable!8277 (regOne!38884 (reg!19515 r1!2370))))))

(declare-fun bm!673179 () Bool)

(assert (=> bm!673179 (= call!673179 ($colon$colon!3183 (exprs!8626 lt!2612897) (ite (or c!1366441 c!1366442) (regTwo!38884 (reg!19515 r1!2370)) (reg!19515 r1!2370))))))

(declare-fun b!7354672 () Bool)

(assert (=> b!7354672 (= e!4403600 call!673184)))

(assert (= (and d!2281206 c!1366443) b!7354667))

(assert (= (and d!2281206 (not c!1366443)) b!7354665))

(assert (= (and b!7354665 c!1366440) b!7354663))

(assert (= (and b!7354665 (not c!1366440)) b!7354670))

(assert (= (and b!7354670 res!2969881) b!7354671))

(assert (= (and b!7354670 c!1366441) b!7354669))

(assert (= (and b!7354670 (not c!1366441)) b!7354662))

(assert (= (and b!7354662 c!1366442) b!7354666))

(assert (= (and b!7354662 (not c!1366442)) b!7354668))

(assert (= (and b!7354668 c!1366444) b!7354672))

(assert (= (and b!7354668 (not c!1366444)) b!7354664))

(assert (= (or b!7354666 b!7354672) bm!673176))

(assert (= (or b!7354666 b!7354672) bm!673178))

(assert (= (or b!7354669 bm!673178) bm!673175))

(assert (= (or b!7354669 bm!673176) bm!673179))

(assert (= (or b!7354663 b!7354669) bm!673174))

(assert (= (or b!7354663 bm!673175) bm!673177))

(declare-fun m!8014880 () Bool)

(assert (=> b!7354667 m!8014880))

(declare-fun m!8014882 () Bool)

(assert (=> bm!673177 m!8014882))

(declare-fun m!8014884 () Bool)

(assert (=> bm!673174 m!8014884))

(declare-fun m!8014886 () Bool)

(assert (=> bm!673179 m!8014886))

(assert (=> b!7354671 m!8014780))

(assert (=> b!7354430 d!2281206))

(declare-fun d!2281208 () Bool)

(assert (=> d!2281208 (= ($colon$colon!3183 (exprs!8626 ct1!282) lt!2612896) (Cons!71558 lt!2612896 (exprs!8626 ct1!282)))))

(assert (=> b!7354430 d!2281208))

(declare-fun b!7354677 () Bool)

(declare-fun e!4403606 () Bool)

(declare-fun tp!2089090 () Bool)

(declare-fun tp!2089091 () Bool)

(assert (=> b!7354677 (= e!4403606 (and tp!2089090 tp!2089091))))

(assert (=> b!7354428 (= tp!2089056 e!4403606)))

(assert (= (and b!7354428 (is-Cons!71558 (exprs!8626 ct1!282))) b!7354677))

(declare-fun b!7354691 () Bool)

(declare-fun e!4403609 () Bool)

(declare-fun tp!2089103 () Bool)

(declare-fun tp!2089106 () Bool)

(assert (=> b!7354691 (= e!4403609 (and tp!2089103 tp!2089106))))

(assert (=> b!7354439 (= tp!2089054 e!4403609)))

(declare-fun b!7354690 () Bool)

(declare-fun tp!2089102 () Bool)

(assert (=> b!7354690 (= e!4403609 tp!2089102)))

(declare-fun b!7354689 () Bool)

(declare-fun tp!2089104 () Bool)

(declare-fun tp!2089105 () Bool)

(assert (=> b!7354689 (= e!4403609 (and tp!2089104 tp!2089105))))

(declare-fun b!7354688 () Bool)

(assert (=> b!7354688 (= e!4403609 tp_is_empty!48617)))

(assert (= (and b!7354439 (is-ElementMatch!19186 (reg!19515 r1!2370))) b!7354688))

(assert (= (and b!7354439 (is-Concat!28031 (reg!19515 r1!2370))) b!7354689))

(assert (= (and b!7354439 (is-Star!19186 (reg!19515 r1!2370))) b!7354690))

(assert (= (and b!7354439 (is-Union!19186 (reg!19515 r1!2370))) b!7354691))

(declare-fun b!7354692 () Bool)

(declare-fun e!4403610 () Bool)

(declare-fun tp!2089107 () Bool)

(declare-fun tp!2089108 () Bool)

(assert (=> b!7354692 (= e!4403610 (and tp!2089107 tp!2089108))))

(assert (=> b!7354432 (= tp!2089061 e!4403610)))

(assert (= (and b!7354432 (is-Cons!71558 (exprs!8626 ct2!378))) b!7354692))

(declare-fun b!7354693 () Bool)

(declare-fun e!4403611 () Bool)

(declare-fun tp!2089109 () Bool)

(declare-fun tp!2089110 () Bool)

(assert (=> b!7354693 (= e!4403611 (and tp!2089109 tp!2089110))))

(assert (=> b!7354440 (= tp!2089058 e!4403611)))

(assert (= (and b!7354440 (is-Cons!71558 (exprs!8626 cWitness!61))) b!7354693))

(declare-fun b!7354697 () Bool)

(declare-fun e!4403612 () Bool)

(declare-fun tp!2089112 () Bool)

(declare-fun tp!2089115 () Bool)

(assert (=> b!7354697 (= e!4403612 (and tp!2089112 tp!2089115))))

(assert (=> b!7354429 (= tp!2089057 e!4403612)))

(declare-fun b!7354696 () Bool)

(declare-fun tp!2089111 () Bool)

(assert (=> b!7354696 (= e!4403612 tp!2089111)))

(declare-fun b!7354695 () Bool)

(declare-fun tp!2089113 () Bool)

(declare-fun tp!2089114 () Bool)

(assert (=> b!7354695 (= e!4403612 (and tp!2089113 tp!2089114))))

(declare-fun b!7354694 () Bool)

(assert (=> b!7354694 (= e!4403612 tp_is_empty!48617)))

(assert (= (and b!7354429 (is-ElementMatch!19186 (regOne!38885 r1!2370))) b!7354694))

(assert (= (and b!7354429 (is-Concat!28031 (regOne!38885 r1!2370))) b!7354695))

(assert (= (and b!7354429 (is-Star!19186 (regOne!38885 r1!2370))) b!7354696))

(assert (= (and b!7354429 (is-Union!19186 (regOne!38885 r1!2370))) b!7354697))

(declare-fun b!7354701 () Bool)

(declare-fun e!4403613 () Bool)

(declare-fun tp!2089117 () Bool)

(declare-fun tp!2089120 () Bool)

(assert (=> b!7354701 (= e!4403613 (and tp!2089117 tp!2089120))))

(assert (=> b!7354429 (= tp!2089060 e!4403613)))

(declare-fun b!7354700 () Bool)

(declare-fun tp!2089116 () Bool)

(assert (=> b!7354700 (= e!4403613 tp!2089116)))

(declare-fun b!7354699 () Bool)

(declare-fun tp!2089118 () Bool)

(declare-fun tp!2089119 () Bool)

(assert (=> b!7354699 (= e!4403613 (and tp!2089118 tp!2089119))))

(declare-fun b!7354698 () Bool)

(assert (=> b!7354698 (= e!4403613 tp_is_empty!48617)))

(assert (= (and b!7354429 (is-ElementMatch!19186 (regTwo!38885 r1!2370))) b!7354698))

(assert (= (and b!7354429 (is-Concat!28031 (regTwo!38885 r1!2370))) b!7354699))

(assert (= (and b!7354429 (is-Star!19186 (regTwo!38885 r1!2370))) b!7354700))

(assert (= (and b!7354429 (is-Union!19186 (regTwo!38885 r1!2370))) b!7354701))

(declare-fun b!7354705 () Bool)

(declare-fun e!4403614 () Bool)

(declare-fun tp!2089122 () Bool)

(declare-fun tp!2089125 () Bool)

(assert (=> b!7354705 (= e!4403614 (and tp!2089122 tp!2089125))))

(assert (=> b!7354435 (= tp!2089059 e!4403614)))

(declare-fun b!7354704 () Bool)

(declare-fun tp!2089121 () Bool)

(assert (=> b!7354704 (= e!4403614 tp!2089121)))

(declare-fun b!7354703 () Bool)

(declare-fun tp!2089123 () Bool)

(declare-fun tp!2089124 () Bool)

(assert (=> b!7354703 (= e!4403614 (and tp!2089123 tp!2089124))))

(declare-fun b!7354702 () Bool)

(assert (=> b!7354702 (= e!4403614 tp_is_empty!48617)))

(assert (= (and b!7354435 (is-ElementMatch!19186 (regOne!38884 r1!2370))) b!7354702))

(assert (= (and b!7354435 (is-Concat!28031 (regOne!38884 r1!2370))) b!7354703))

(assert (= (and b!7354435 (is-Star!19186 (regOne!38884 r1!2370))) b!7354704))

(assert (= (and b!7354435 (is-Union!19186 (regOne!38884 r1!2370))) b!7354705))

(declare-fun b!7354709 () Bool)

(declare-fun e!4403615 () Bool)

(declare-fun tp!2089127 () Bool)

(declare-fun tp!2089130 () Bool)

(assert (=> b!7354709 (= e!4403615 (and tp!2089127 tp!2089130))))

(assert (=> b!7354435 (= tp!2089055 e!4403615)))

(declare-fun b!7354708 () Bool)

(declare-fun tp!2089126 () Bool)

(assert (=> b!7354708 (= e!4403615 tp!2089126)))

(declare-fun b!7354707 () Bool)

(declare-fun tp!2089128 () Bool)

(declare-fun tp!2089129 () Bool)

(assert (=> b!7354707 (= e!4403615 (and tp!2089128 tp!2089129))))

(declare-fun b!7354706 () Bool)

(assert (=> b!7354706 (= e!4403615 tp_is_empty!48617)))

(assert (= (and b!7354435 (is-ElementMatch!19186 (regTwo!38884 r1!2370))) b!7354706))

(assert (= (and b!7354435 (is-Concat!28031 (regTwo!38884 r1!2370))) b!7354707))

(assert (= (and b!7354435 (is-Star!19186 (regTwo!38884 r1!2370))) b!7354708))

(assert (= (and b!7354435 (is-Union!19186 (regTwo!38884 r1!2370))) b!7354709))

(declare-fun b_lambda!284211 () Bool)

(assert (= b_lambda!284205 (or b!7354434 b_lambda!284211)))

(declare-fun bs!1919623 () Bool)

(declare-fun d!2281210 () Bool)

(assert (= bs!1919623 (and d!2281210 b!7354434)))

(assert (=> bs!1919623 (= (dynLambda!29505 lambda!456864 (h!78006 (exprs!8626 cWitness!61))) (validRegex!9782 (h!78006 (exprs!8626 cWitness!61))))))

(declare-fun m!8014890 () Bool)

(assert (=> bs!1919623 m!8014890))

(assert (=> b!7354514 d!2281210))

(declare-fun b_lambda!284213 () Bool)

(assert (= b_lambda!284209 (or b!7354434 b_lambda!284213)))

(declare-fun bs!1919624 () Bool)

(declare-fun d!2281212 () Bool)

(assert (= bs!1919624 (and d!2281212 b!7354434)))

(assert (=> bs!1919624 (= (dynLambda!29505 lambda!456864 (h!78006 (exprs!8626 ct2!378))) (validRegex!9782 (h!78006 (exprs!8626 ct2!378))))))

(declare-fun m!8014894 () Bool)

(assert (=> bs!1919624 m!8014894))

(assert (=> b!7354645 d!2281212))

(push 1)

(assert (not b!7354637))

(assert (not b!7354578))

(assert (not b!7354696))

(assert (not d!2281164))

(assert (not b_lambda!284213))

(assert (not bm!673149))

(assert (not d!2281170))

(assert (not bm!673168))

(assert (not d!2281180))

(assert (not b!7354701))

(assert (not bm!673147))

(assert (not b!7354697))

(assert (not bm!673153))

(assert (not d!2281190))

(assert (not b!7354656))

(assert (not d!2281172))

(assert (not bm!673171))

(assert (not b!7354695))

(assert (not b!7354690))

(assert (not d!2281166))

(assert (not bm!673165))

(assert (not b!7354693))

(assert (not bm!673155))

(assert (not bm!673144))

(assert (not b!7354709))

(assert (not b!7354646))

(assert (not d!2281186))

(assert (not b!7354507))

(assert (not b!7354620))

(assert (not bm!673150))

(assert (not b!7354691))

(assert (not d!2281178))

(assert (not bm!673177))

(assert (not bm!673179))

(assert (not b!7354593))

(assert (not b!7354689))

(assert (not b_lambda!284211))

(assert (not b!7354703))

(assert (not bs!1919624))

(assert (not b!7354545))

(assert (not d!2281158))

(assert (not d!2281188))

(assert (not b!7354677))

(assert (not b!7354592))

(assert (not b!7354704))

(assert (not b!7354671))

(assert (not b!7354708))

(assert (not b!7354508))

(assert (not b!7354705))

(assert (not b!7354515))

(assert tp_is_empty!48617)

(assert (not b!7354544))

(assert (not bm!673162))

(assert (not b!7354707))

(assert (not bm!673174))

(assert (not d!2281194))

(assert (not bm!673166))

(assert (not b!7354699))

(assert (not b!7354589))

(assert (not bm!673163))

(assert (not b!7354692))

(assert (not bs!1919623))

(assert (not bm!673173))

(assert (not b!7354700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

