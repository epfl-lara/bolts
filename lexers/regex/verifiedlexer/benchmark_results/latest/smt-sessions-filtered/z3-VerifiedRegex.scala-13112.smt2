; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!717004 () Bool)

(assert start!717004)

(declare-fun b!7340988 () Bool)

(declare-fun e!4395773 () Bool)

(declare-fun e!4395779 () Bool)

(assert (=> b!7340988 (= e!4395773 e!4395779)))

(declare-fun res!2965663 () Bool)

(assert (=> b!7340988 (=> res!2965663 e!4395779)))

(declare-datatypes ((C!38500 0))(
  ( (C!38501 (val!29610 Int)) )
))
(declare-datatypes ((Regex!19113 0))(
  ( (ElementMatch!19113 (c!1363509 C!38500)) (Concat!27958 (regOne!38738 Regex!19113) (regTwo!38738 Regex!19113)) (EmptyExpr!19113) (Star!19113 (reg!19442 Regex!19113)) (EmptyLang!19113) (Union!19113 (regOne!38739 Regex!19113) (regTwo!38739 Regex!19113)) )
))
(declare-datatypes ((List!71609 0))(
  ( (Nil!71485) (Cons!71485 (h!77933 Regex!19113) (t!386004 List!71609)) )
))
(declare-datatypes ((Context!16106 0))(
  ( (Context!16107 (exprs!8553 List!71609)) )
))
(declare-fun cWitness!61 () Context!16106)

(declare-fun lambda!455613 () Int)

(declare-fun forall!17945 (List!71609 Int) Bool)

(assert (=> b!7340988 (= res!2965663 (not (forall!17945 (exprs!8553 cWitness!61) lambda!455613)))))

(declare-fun b!7340989 () Bool)

(declare-fun res!2965664 () Bool)

(declare-fun e!4395775 () Bool)

(assert (=> b!7340989 (=> (not res!2965664) (not e!4395775))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2610065 () (InoxSet Context!16106))

(assert (=> b!7340989 (= res!2965664 (select lt!2610065 cWitness!61))))

(declare-fun b!7340990 () Bool)

(declare-fun e!4395774 () Bool)

(declare-fun e!4395772 () Bool)

(assert (=> b!7340990 (= e!4395774 e!4395772)))

(declare-fun res!2965658 () Bool)

(assert (=> b!7340990 (=> (not res!2965658) (not e!4395772))))

(declare-fun r1!2370 () Regex!19113)

(declare-fun c!10362 () C!38500)

(get-info :version)

(assert (=> b!7340990 (= res!2965658 (and (or (not ((_ is ElementMatch!19113) r1!2370)) (not (= c!10362 (c!1363509 r1!2370)))) ((_ is Union!19113) r1!2370)))))

(declare-fun lt!2610066 () (InoxSet Context!16106))

(declare-fun lt!2610062 () Context!16106)

(declare-fun derivationStepZipperDown!2939 (Regex!19113 Context!16106 C!38500) (InoxSet Context!16106))

(assert (=> b!7340990 (= lt!2610066 (derivationStepZipperDown!2939 r1!2370 lt!2610062 c!10362))))

(declare-fun ct1!282 () Context!16106)

(declare-fun ct2!378 () Context!16106)

(declare-fun ++!16931 (List!71609 List!71609) List!71609)

(assert (=> b!7340990 (= lt!2610062 (Context!16107 (++!16931 (exprs!8553 ct1!282) (exprs!8553 ct2!378))))))

(declare-datatypes ((Unit!165179 0))(
  ( (Unit!165180) )
))
(declare-fun lt!2610060 () Unit!165179)

(declare-fun lemmaConcatPreservesForall!1788 (List!71609 List!71609 Int) Unit!165179)

(assert (=> b!7340990 (= lt!2610060 (lemmaConcatPreservesForall!1788 (exprs!8553 ct1!282) (exprs!8553 ct2!378) lambda!455613))))

(declare-fun b!7340991 () Bool)

(declare-fun e!4395777 () Bool)

(declare-fun tp!2084516 () Bool)

(assert (=> b!7340991 (= e!4395777 tp!2084516)))

(declare-fun b!7340992 () Bool)

(declare-fun e!4395778 () Bool)

(declare-fun tp!2084518 () Bool)

(assert (=> b!7340992 (= e!4395778 tp!2084518)))

(declare-fun b!7340993 () Bool)

(assert (=> b!7340993 (= e!4395772 e!4395775)))

(declare-fun res!2965661 () Bool)

(assert (=> b!7340993 (=> (not res!2965661) (not e!4395775))))

(declare-fun lt!2610063 () (InoxSet Context!16106))

(assert (=> b!7340993 (= res!2965661 (= lt!2610063 ((_ map or) lt!2610065 (derivationStepZipperDown!2939 (regTwo!38739 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7340993 (= lt!2610065 (derivationStepZipperDown!2939 (regOne!38739 r1!2370) ct1!282 c!10362))))

(declare-fun b!7340994 () Bool)

(declare-fun tp_is_empty!48471 () Bool)

(assert (=> b!7340994 (= e!4395777 tp_is_empty!48471)))

(declare-fun b!7340996 () Bool)

(declare-fun tp!2084513 () Bool)

(declare-fun tp!2084515 () Bool)

(assert (=> b!7340996 (= e!4395777 (and tp!2084513 tp!2084515))))

(declare-fun b!7340997 () Bool)

(declare-fun e!4395776 () Bool)

(declare-fun tp!2084519 () Bool)

(assert (=> b!7340997 (= e!4395776 tp!2084519)))

(declare-fun b!7340998 () Bool)

(declare-fun e!4395780 () Bool)

(assert (=> b!7340998 (= e!4395780 e!4395774)))

(declare-fun res!2965660 () Bool)

(assert (=> b!7340998 (=> (not res!2965660) (not e!4395774))))

(assert (=> b!7340998 (= res!2965660 (select lt!2610063 cWitness!61))))

(assert (=> b!7340998 (= lt!2610063 (derivationStepZipperDown!2939 r1!2370 ct1!282 c!10362))))

(declare-fun b!7340999 () Bool)

(declare-fun tp!2084514 () Bool)

(declare-fun tp!2084512 () Bool)

(assert (=> b!7340999 (= e!4395777 (and tp!2084514 tp!2084512))))

(declare-fun res!2965659 () Bool)

(assert (=> start!717004 (=> (not res!2965659) (not e!4395780))))

(declare-fun validRegex!9709 (Regex!19113) Bool)

(assert (=> start!717004 (= res!2965659 (validRegex!9709 r1!2370))))

(assert (=> start!717004 e!4395780))

(assert (=> start!717004 tp_is_empty!48471))

(declare-fun e!4395771 () Bool)

(declare-fun inv!91122 (Context!16106) Bool)

(assert (=> start!717004 (and (inv!91122 cWitness!61) e!4395771)))

(assert (=> start!717004 (and (inv!91122 ct1!282) e!4395778)))

(assert (=> start!717004 e!4395777))

(assert (=> start!717004 (and (inv!91122 ct2!378) e!4395776)))

(declare-fun b!7340995 () Bool)

(assert (=> b!7340995 (= e!4395775 (not e!4395773))))

(declare-fun res!2965662 () Bool)

(assert (=> b!7340995 (=> res!2965662 e!4395773)))

(declare-fun lt!2610068 () Context!16106)

(assert (=> b!7340995 (= res!2965662 (not (select lt!2610066 lt!2610068)))))

(declare-fun lt!2610064 () Unit!165179)

(assert (=> b!7340995 (= lt!2610064 (lemmaConcatPreservesForall!1788 (exprs!8553 cWitness!61) (exprs!8553 ct2!378) lambda!455613))))

(assert (=> b!7340995 (select (derivationStepZipperDown!2939 (regOne!38739 r1!2370) lt!2610062 c!10362) lt!2610068)))

(assert (=> b!7340995 (= lt!2610068 (Context!16107 (++!16931 (exprs!8553 cWitness!61) (exprs!8553 ct2!378))))))

(declare-fun lt!2610061 () Unit!165179)

(assert (=> b!7340995 (= lt!2610061 (lemmaConcatPreservesForall!1788 (exprs!8553 ct1!282) (exprs!8553 ct2!378) lambda!455613))))

(declare-fun lt!2610067 () Unit!165179)

(assert (=> b!7340995 (= lt!2610067 (lemmaConcatPreservesForall!1788 (exprs!8553 cWitness!61) (exprs!8553 ct2!378) lambda!455613))))

(declare-fun lt!2610069 () Unit!165179)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!48 (Regex!19113 Context!16106 Context!16106 Context!16106 C!38500) Unit!165179)

(assert (=> b!7340995 (= lt!2610069 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!48 (regOne!38739 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7341000 () Bool)

(assert (=> b!7341000 (= e!4395779 (forall!17945 (exprs!8553 ct2!378) lambda!455613))))

(declare-fun b!7341001 () Bool)

(declare-fun tp!2084517 () Bool)

(assert (=> b!7341001 (= e!4395771 tp!2084517)))

(assert (= (and start!717004 res!2965659) b!7340998))

(assert (= (and b!7340998 res!2965660) b!7340990))

(assert (= (and b!7340990 res!2965658) b!7340993))

(assert (= (and b!7340993 res!2965661) b!7340989))

(assert (= (and b!7340989 res!2965664) b!7340995))

(assert (= (and b!7340995 (not res!2965662)) b!7340988))

(assert (= (and b!7340988 (not res!2965663)) b!7341000))

(assert (= start!717004 b!7341001))

(assert (= start!717004 b!7340992))

(assert (= (and start!717004 ((_ is ElementMatch!19113) r1!2370)) b!7340994))

(assert (= (and start!717004 ((_ is Concat!27958) r1!2370)) b!7340996))

(assert (= (and start!717004 ((_ is Star!19113) r1!2370)) b!7340991))

(assert (= (and start!717004 ((_ is Union!19113) r1!2370)) b!7340999))

(assert (= start!717004 b!7340997))

(declare-fun m!8004746 () Bool)

(assert (=> start!717004 m!8004746))

(declare-fun m!8004748 () Bool)

(assert (=> start!717004 m!8004748))

(declare-fun m!8004750 () Bool)

(assert (=> start!717004 m!8004750))

(declare-fun m!8004752 () Bool)

(assert (=> start!717004 m!8004752))

(declare-fun m!8004754 () Bool)

(assert (=> b!7340988 m!8004754))

(declare-fun m!8004756 () Bool)

(assert (=> b!7341000 m!8004756))

(declare-fun m!8004758 () Bool)

(assert (=> b!7340995 m!8004758))

(declare-fun m!8004760 () Bool)

(assert (=> b!7340995 m!8004760))

(declare-fun m!8004762 () Bool)

(assert (=> b!7340995 m!8004762))

(declare-fun m!8004764 () Bool)

(assert (=> b!7340995 m!8004764))

(declare-fun m!8004766 () Bool)

(assert (=> b!7340995 m!8004766))

(assert (=> b!7340995 m!8004760))

(declare-fun m!8004768 () Bool)

(assert (=> b!7340995 m!8004768))

(declare-fun m!8004770 () Bool)

(assert (=> b!7340995 m!8004770))

(declare-fun m!8004772 () Bool)

(assert (=> b!7340989 m!8004772))

(declare-fun m!8004774 () Bool)

(assert (=> b!7340990 m!8004774))

(declare-fun m!8004776 () Bool)

(assert (=> b!7340990 m!8004776))

(assert (=> b!7340990 m!8004768))

(declare-fun m!8004778 () Bool)

(assert (=> b!7340993 m!8004778))

(declare-fun m!8004780 () Bool)

(assert (=> b!7340993 m!8004780))

(declare-fun m!8004782 () Bool)

(assert (=> b!7340998 m!8004782))

(declare-fun m!8004784 () Bool)

(assert (=> b!7340998 m!8004784))

(check-sat (not start!717004) tp_is_empty!48471 (not b!7341001) (not b!7340998) (not b!7340993) (not b!7340992) (not b!7340996) (not b!7340990) (not b!7341000) (not b!7340999) (not b!7340995) (not b!7340991) (not b!7340988) (not b!7340997))
(check-sat)
(get-model)

(declare-fun d!2278779 () Bool)

(declare-fun res!2965669 () Bool)

(declare-fun e!4395785 () Bool)

(assert (=> d!2278779 (=> res!2965669 e!4395785)))

(assert (=> d!2278779 (= res!2965669 ((_ is Nil!71485) (exprs!8553 ct2!378)))))

(assert (=> d!2278779 (= (forall!17945 (exprs!8553 ct2!378) lambda!455613) e!4395785)))

(declare-fun b!7341006 () Bool)

(declare-fun e!4395786 () Bool)

(assert (=> b!7341006 (= e!4395785 e!4395786)))

(declare-fun res!2965670 () Bool)

(assert (=> b!7341006 (=> (not res!2965670) (not e!4395786))))

(declare-fun dynLambda!29451 (Int Regex!19113) Bool)

(assert (=> b!7341006 (= res!2965670 (dynLambda!29451 lambda!455613 (h!77933 (exprs!8553 ct2!378))))))

(declare-fun b!7341007 () Bool)

(assert (=> b!7341007 (= e!4395786 (forall!17945 (t!386004 (exprs!8553 ct2!378)) lambda!455613))))

(assert (= (and d!2278779 (not res!2965669)) b!7341006))

(assert (= (and b!7341006 res!2965670) b!7341007))

(declare-fun b_lambda!283867 () Bool)

(assert (=> (not b_lambda!283867) (not b!7341006)))

(declare-fun m!8004786 () Bool)

(assert (=> b!7341006 m!8004786))

(declare-fun m!8004788 () Bool)

(assert (=> b!7341007 m!8004788))

(assert (=> b!7341000 d!2278779))

(declare-fun bs!1918418 () Bool)

(declare-fun d!2278781 () Bool)

(assert (= bs!1918418 (and d!2278781 b!7340990)))

(declare-fun lambda!455618 () Int)

(assert (=> bs!1918418 (= lambda!455618 lambda!455613)))

(assert (=> d!2278781 (select (derivationStepZipperDown!2939 (regOne!38739 r1!2370) (Context!16107 (++!16931 (exprs!8553 ct1!282) (exprs!8553 ct2!378))) c!10362) (Context!16107 (++!16931 (exprs!8553 cWitness!61) (exprs!8553 ct2!378))))))

(declare-fun lt!2610078 () Unit!165179)

(assert (=> d!2278781 (= lt!2610078 (lemmaConcatPreservesForall!1788 (exprs!8553 ct1!282) (exprs!8553 ct2!378) lambda!455618))))

(declare-fun lt!2610077 () Unit!165179)

(assert (=> d!2278781 (= lt!2610077 (lemmaConcatPreservesForall!1788 (exprs!8553 cWitness!61) (exprs!8553 ct2!378) lambda!455618))))

(declare-fun lt!2610076 () Unit!165179)

(declare-fun choose!57097 (Regex!19113 Context!16106 Context!16106 Context!16106 C!38500) Unit!165179)

(assert (=> d!2278781 (= lt!2610076 (choose!57097 (regOne!38739 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2278781 (validRegex!9709 (regOne!38739 r1!2370))))

(assert (=> d!2278781 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!48 (regOne!38739 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2610076)))

(declare-fun bs!1918419 () Bool)

(assert (= bs!1918419 d!2278781))

(declare-fun m!8004790 () Bool)

(assert (=> bs!1918419 m!8004790))

(declare-fun m!8004792 () Bool)

(assert (=> bs!1918419 m!8004792))

(declare-fun m!8004794 () Bool)

(assert (=> bs!1918419 m!8004794))

(declare-fun m!8004796 () Bool)

(assert (=> bs!1918419 m!8004796))

(declare-fun m!8004798 () Bool)

(assert (=> bs!1918419 m!8004798))

(declare-fun m!8004800 () Bool)

(assert (=> bs!1918419 m!8004800))

(assert (=> bs!1918419 m!8004776))

(assert (=> bs!1918419 m!8004770))

(assert (=> b!7340995 d!2278781))

(declare-fun b!7341065 () Bool)

(declare-fun c!1363529 () Bool)

(assert (=> b!7341065 (= c!1363529 ((_ is Star!19113) (regOne!38739 r1!2370)))))

(declare-fun e!4395833 () (InoxSet Context!16106))

(declare-fun e!4395829 () (InoxSet Context!16106))

(assert (=> b!7341065 (= e!4395833 e!4395829)))

(declare-fun b!7341066 () Bool)

(declare-fun e!4395832 () (InoxSet Context!16106))

(declare-fun call!670029 () (InoxSet Context!16106))

(declare-fun call!670034 () (InoxSet Context!16106))

(assert (=> b!7341066 (= e!4395832 ((_ map or) call!670029 call!670034))))

(declare-fun b!7341067 () Bool)

(declare-fun e!4395831 () (InoxSet Context!16106))

(declare-fun e!4395830 () (InoxSet Context!16106))

(assert (=> b!7341067 (= e!4395831 e!4395830)))

(declare-fun c!1363530 () Bool)

(assert (=> b!7341067 (= c!1363530 ((_ is Union!19113) (regOne!38739 r1!2370)))))

(declare-fun b!7341068 () Bool)

(declare-fun e!4395828 () Bool)

(declare-fun nullable!8207 (Regex!19113) Bool)

(assert (=> b!7341068 (= e!4395828 (nullable!8207 (regOne!38738 (regOne!38739 r1!2370))))))

(declare-fun d!2278785 () Bool)

(declare-fun c!1363531 () Bool)

(assert (=> d!2278785 (= c!1363531 (and ((_ is ElementMatch!19113) (regOne!38739 r1!2370)) (= (c!1363509 (regOne!38739 r1!2370)) c!10362)))))

(assert (=> d!2278785 (= (derivationStepZipperDown!2939 (regOne!38739 r1!2370) lt!2610062 c!10362) e!4395831)))

(declare-fun b!7341069 () Bool)

(declare-fun call!670033 () (InoxSet Context!16106))

(assert (=> b!7341069 (= e!4395830 ((_ map or) call!670033 call!670029))))

(declare-fun bm!670024 () Bool)

(declare-fun call!670031 () List!71609)

(assert (=> bm!670024 (= call!670029 (derivationStepZipperDown!2939 (ite c!1363530 (regTwo!38739 (regOne!38739 r1!2370)) (regOne!38738 (regOne!38739 r1!2370))) (ite c!1363530 lt!2610062 (Context!16107 call!670031)) c!10362))))

(declare-fun bm!670025 () Bool)

(declare-fun call!670030 () List!71609)

(assert (=> bm!670025 (= call!670030 call!670031)))

(declare-fun b!7341070 () Bool)

(declare-fun c!1363528 () Bool)

(assert (=> b!7341070 (= c!1363528 e!4395828)))

(declare-fun res!2965696 () Bool)

(assert (=> b!7341070 (=> (not res!2965696) (not e!4395828))))

(assert (=> b!7341070 (= res!2965696 ((_ is Concat!27958) (regOne!38739 r1!2370)))))

(assert (=> b!7341070 (= e!4395830 e!4395832)))

(declare-fun bm!670026 () Bool)

(declare-fun call!670032 () (InoxSet Context!16106))

(assert (=> bm!670026 (= call!670032 call!670034)))

(declare-fun b!7341071 () Bool)

(assert (=> b!7341071 (= e!4395831 (store ((as const (Array Context!16106 Bool)) false) lt!2610062 true))))

(declare-fun c!1363527 () Bool)

(declare-fun bm!670027 () Bool)

(assert (=> bm!670027 (= call!670033 (derivationStepZipperDown!2939 (ite c!1363530 (regOne!38739 (regOne!38739 r1!2370)) (ite c!1363528 (regTwo!38738 (regOne!38739 r1!2370)) (ite c!1363527 (regOne!38738 (regOne!38739 r1!2370)) (reg!19442 (regOne!38739 r1!2370))))) (ite (or c!1363530 c!1363528) lt!2610062 (Context!16107 call!670030)) c!10362))))

(declare-fun b!7341072 () Bool)

(assert (=> b!7341072 (= e!4395832 e!4395833)))

(assert (=> b!7341072 (= c!1363527 ((_ is Concat!27958) (regOne!38739 r1!2370)))))

(declare-fun b!7341073 () Bool)

(assert (=> b!7341073 (= e!4395829 call!670032)))

(declare-fun b!7341074 () Bool)

(assert (=> b!7341074 (= e!4395829 ((as const (Array Context!16106 Bool)) false))))

(declare-fun bm!670028 () Bool)

(declare-fun $colon$colon!3114 (List!71609 Regex!19113) List!71609)

(assert (=> bm!670028 (= call!670031 ($colon$colon!3114 (exprs!8553 lt!2610062) (ite (or c!1363528 c!1363527) (regTwo!38738 (regOne!38739 r1!2370)) (regOne!38739 r1!2370))))))

(declare-fun bm!670029 () Bool)

(assert (=> bm!670029 (= call!670034 call!670033)))

(declare-fun b!7341075 () Bool)

(assert (=> b!7341075 (= e!4395833 call!670032)))

(assert (= (and d!2278785 c!1363531) b!7341071))

(assert (= (and d!2278785 (not c!1363531)) b!7341067))

(assert (= (and b!7341067 c!1363530) b!7341069))

(assert (= (and b!7341067 (not c!1363530)) b!7341070))

(assert (= (and b!7341070 res!2965696) b!7341068))

(assert (= (and b!7341070 c!1363528) b!7341066))

(assert (= (and b!7341070 (not c!1363528)) b!7341072))

(assert (= (and b!7341072 c!1363527) b!7341075))

(assert (= (and b!7341072 (not c!1363527)) b!7341065))

(assert (= (and b!7341065 c!1363529) b!7341073))

(assert (= (and b!7341065 (not c!1363529)) b!7341074))

(assert (= (or b!7341075 b!7341073) bm!670025))

(assert (= (or b!7341075 b!7341073) bm!670026))

(assert (= (or b!7341066 bm!670026) bm!670029))

(assert (= (or b!7341066 bm!670025) bm!670028))

(assert (= (or b!7341069 b!7341066) bm!670024))

(assert (= (or b!7341069 bm!670029) bm!670027))

(declare-fun m!8004822 () Bool)

(assert (=> bm!670028 m!8004822))

(declare-fun m!8004824 () Bool)

(assert (=> bm!670027 m!8004824))

(declare-fun m!8004826 () Bool)

(assert (=> b!7341071 m!8004826))

(declare-fun m!8004828 () Bool)

(assert (=> bm!670024 m!8004828))

(declare-fun m!8004830 () Bool)

(assert (=> b!7341068 m!8004830))

(assert (=> b!7340995 d!2278785))

(declare-fun d!2278799 () Bool)

(assert (=> d!2278799 (forall!17945 (++!16931 (exprs!8553 cWitness!61) (exprs!8553 ct2!378)) lambda!455613)))

(declare-fun lt!2610081 () Unit!165179)

(declare-fun choose!57098 (List!71609 List!71609 Int) Unit!165179)

(assert (=> d!2278799 (= lt!2610081 (choose!57098 (exprs!8553 cWitness!61) (exprs!8553 ct2!378) lambda!455613))))

(assert (=> d!2278799 (forall!17945 (exprs!8553 cWitness!61) lambda!455613)))

(assert (=> d!2278799 (= (lemmaConcatPreservesForall!1788 (exprs!8553 cWitness!61) (exprs!8553 ct2!378) lambda!455613) lt!2610081)))

(declare-fun bs!1918429 () Bool)

(assert (= bs!1918429 d!2278799))

(assert (=> bs!1918429 m!8004770))

(assert (=> bs!1918429 m!8004770))

(declare-fun m!8004832 () Bool)

(assert (=> bs!1918429 m!8004832))

(declare-fun m!8004834 () Bool)

(assert (=> bs!1918429 m!8004834))

(assert (=> bs!1918429 m!8004754))

(assert (=> b!7340995 d!2278799))

(declare-fun b!7341109 () Bool)

(declare-fun lt!2610084 () List!71609)

(declare-fun e!4395851 () Bool)

(assert (=> b!7341109 (= e!4395851 (or (not (= (exprs!8553 ct2!378) Nil!71485)) (= lt!2610084 (exprs!8553 cWitness!61))))))

(declare-fun b!7341106 () Bool)

(declare-fun e!4395850 () List!71609)

(assert (=> b!7341106 (= e!4395850 (exprs!8553 ct2!378))))

(declare-fun b!7341107 () Bool)

(assert (=> b!7341107 (= e!4395850 (Cons!71485 (h!77933 (exprs!8553 cWitness!61)) (++!16931 (t!386004 (exprs!8553 cWitness!61)) (exprs!8553 ct2!378))))))

(declare-fun b!7341108 () Bool)

(declare-fun res!2965704 () Bool)

(assert (=> b!7341108 (=> (not res!2965704) (not e!4395851))))

(declare-fun size!42008 (List!71609) Int)

(assert (=> b!7341108 (= res!2965704 (= (size!42008 lt!2610084) (+ (size!42008 (exprs!8553 cWitness!61)) (size!42008 (exprs!8553 ct2!378)))))))

(declare-fun d!2278801 () Bool)

(assert (=> d!2278801 e!4395851))

(declare-fun res!2965703 () Bool)

(assert (=> d!2278801 (=> (not res!2965703) (not e!4395851))))

(declare-fun content!15029 (List!71609) (InoxSet Regex!19113))

(assert (=> d!2278801 (= res!2965703 (= (content!15029 lt!2610084) ((_ map or) (content!15029 (exprs!8553 cWitness!61)) (content!15029 (exprs!8553 ct2!378)))))))

(assert (=> d!2278801 (= lt!2610084 e!4395850)))

(declare-fun c!1363544 () Bool)

(assert (=> d!2278801 (= c!1363544 ((_ is Nil!71485) (exprs!8553 cWitness!61)))))

(assert (=> d!2278801 (= (++!16931 (exprs!8553 cWitness!61) (exprs!8553 ct2!378)) lt!2610084)))

(assert (= (and d!2278801 c!1363544) b!7341106))

(assert (= (and d!2278801 (not c!1363544)) b!7341107))

(assert (= (and d!2278801 res!2965703) b!7341108))

(assert (= (and b!7341108 res!2965704) b!7341109))

(declare-fun m!8004836 () Bool)

(assert (=> b!7341107 m!8004836))

(declare-fun m!8004838 () Bool)

(assert (=> b!7341108 m!8004838))

(declare-fun m!8004840 () Bool)

(assert (=> b!7341108 m!8004840))

(declare-fun m!8004842 () Bool)

(assert (=> b!7341108 m!8004842))

(declare-fun m!8004844 () Bool)

(assert (=> d!2278801 m!8004844))

(declare-fun m!8004846 () Bool)

(assert (=> d!2278801 m!8004846))

(declare-fun m!8004848 () Bool)

(assert (=> d!2278801 m!8004848))

(assert (=> b!7340995 d!2278801))

(declare-fun d!2278803 () Bool)

(assert (=> d!2278803 (forall!17945 (++!16931 (exprs!8553 ct1!282) (exprs!8553 ct2!378)) lambda!455613)))

(declare-fun lt!2610085 () Unit!165179)

(assert (=> d!2278803 (= lt!2610085 (choose!57098 (exprs!8553 ct1!282) (exprs!8553 ct2!378) lambda!455613))))

(assert (=> d!2278803 (forall!17945 (exprs!8553 ct1!282) lambda!455613)))

(assert (=> d!2278803 (= (lemmaConcatPreservesForall!1788 (exprs!8553 ct1!282) (exprs!8553 ct2!378) lambda!455613) lt!2610085)))

(declare-fun bs!1918430 () Bool)

(assert (= bs!1918430 d!2278803))

(assert (=> bs!1918430 m!8004776))

(assert (=> bs!1918430 m!8004776))

(declare-fun m!8004850 () Bool)

(assert (=> bs!1918430 m!8004850))

(declare-fun m!8004852 () Bool)

(assert (=> bs!1918430 m!8004852))

(declare-fun m!8004854 () Bool)

(assert (=> bs!1918430 m!8004854))

(assert (=> b!7340995 d!2278803))

(declare-fun b!7341110 () Bool)

(declare-fun c!1363547 () Bool)

(assert (=> b!7341110 (= c!1363547 ((_ is Star!19113) r1!2370))))

(declare-fun e!4395857 () (InoxSet Context!16106))

(declare-fun e!4395853 () (InoxSet Context!16106))

(assert (=> b!7341110 (= e!4395857 e!4395853)))

(declare-fun b!7341111 () Bool)

(declare-fun e!4395856 () (InoxSet Context!16106))

(declare-fun call!670047 () (InoxSet Context!16106))

(declare-fun call!670052 () (InoxSet Context!16106))

(assert (=> b!7341111 (= e!4395856 ((_ map or) call!670047 call!670052))))

(declare-fun b!7341112 () Bool)

(declare-fun e!4395855 () (InoxSet Context!16106))

(declare-fun e!4395854 () (InoxSet Context!16106))

(assert (=> b!7341112 (= e!4395855 e!4395854)))

(declare-fun c!1363548 () Bool)

(assert (=> b!7341112 (= c!1363548 ((_ is Union!19113) r1!2370))))

(declare-fun b!7341113 () Bool)

(declare-fun e!4395852 () Bool)

(assert (=> b!7341113 (= e!4395852 (nullable!8207 (regOne!38738 r1!2370)))))

(declare-fun d!2278805 () Bool)

(declare-fun c!1363549 () Bool)

(assert (=> d!2278805 (= c!1363549 (and ((_ is ElementMatch!19113) r1!2370) (= (c!1363509 r1!2370) c!10362)))))

(assert (=> d!2278805 (= (derivationStepZipperDown!2939 r1!2370 ct1!282 c!10362) e!4395855)))

(declare-fun b!7341114 () Bool)

(declare-fun call!670051 () (InoxSet Context!16106))

(assert (=> b!7341114 (= e!4395854 ((_ map or) call!670051 call!670047))))

(declare-fun bm!670042 () Bool)

(declare-fun call!670049 () List!71609)

(assert (=> bm!670042 (= call!670047 (derivationStepZipperDown!2939 (ite c!1363548 (regTwo!38739 r1!2370) (regOne!38738 r1!2370)) (ite c!1363548 ct1!282 (Context!16107 call!670049)) c!10362))))

(declare-fun bm!670043 () Bool)

(declare-fun call!670048 () List!71609)

(assert (=> bm!670043 (= call!670048 call!670049)))

(declare-fun b!7341115 () Bool)

(declare-fun c!1363546 () Bool)

(assert (=> b!7341115 (= c!1363546 e!4395852)))

(declare-fun res!2965705 () Bool)

(assert (=> b!7341115 (=> (not res!2965705) (not e!4395852))))

(assert (=> b!7341115 (= res!2965705 ((_ is Concat!27958) r1!2370))))

(assert (=> b!7341115 (= e!4395854 e!4395856)))

(declare-fun bm!670044 () Bool)

(declare-fun call!670050 () (InoxSet Context!16106))

(assert (=> bm!670044 (= call!670050 call!670052)))

(declare-fun b!7341116 () Bool)

(assert (=> b!7341116 (= e!4395855 (store ((as const (Array Context!16106 Bool)) false) ct1!282 true))))

(declare-fun bm!670045 () Bool)

(declare-fun c!1363545 () Bool)

(assert (=> bm!670045 (= call!670051 (derivationStepZipperDown!2939 (ite c!1363548 (regOne!38739 r1!2370) (ite c!1363546 (regTwo!38738 r1!2370) (ite c!1363545 (regOne!38738 r1!2370) (reg!19442 r1!2370)))) (ite (or c!1363548 c!1363546) ct1!282 (Context!16107 call!670048)) c!10362))))

(declare-fun b!7341117 () Bool)

(assert (=> b!7341117 (= e!4395856 e!4395857)))

(assert (=> b!7341117 (= c!1363545 ((_ is Concat!27958) r1!2370))))

(declare-fun b!7341118 () Bool)

(assert (=> b!7341118 (= e!4395853 call!670050)))

(declare-fun b!7341119 () Bool)

(assert (=> b!7341119 (= e!4395853 ((as const (Array Context!16106 Bool)) false))))

(declare-fun bm!670046 () Bool)

(assert (=> bm!670046 (= call!670049 ($colon$colon!3114 (exprs!8553 ct1!282) (ite (or c!1363546 c!1363545) (regTwo!38738 r1!2370) r1!2370)))))

(declare-fun bm!670047 () Bool)

(assert (=> bm!670047 (= call!670052 call!670051)))

(declare-fun b!7341120 () Bool)

(assert (=> b!7341120 (= e!4395857 call!670050)))

(assert (= (and d!2278805 c!1363549) b!7341116))

(assert (= (and d!2278805 (not c!1363549)) b!7341112))

(assert (= (and b!7341112 c!1363548) b!7341114))

(assert (= (and b!7341112 (not c!1363548)) b!7341115))

(assert (= (and b!7341115 res!2965705) b!7341113))

(assert (= (and b!7341115 c!1363546) b!7341111))

(assert (= (and b!7341115 (not c!1363546)) b!7341117))

(assert (= (and b!7341117 c!1363545) b!7341120))

(assert (= (and b!7341117 (not c!1363545)) b!7341110))

(assert (= (and b!7341110 c!1363547) b!7341118))

(assert (= (and b!7341110 (not c!1363547)) b!7341119))

(assert (= (or b!7341120 b!7341118) bm!670043))

(assert (= (or b!7341120 b!7341118) bm!670044))

(assert (= (or b!7341111 bm!670044) bm!670047))

(assert (= (or b!7341111 bm!670043) bm!670046))

(assert (= (or b!7341114 b!7341111) bm!670042))

(assert (= (or b!7341114 bm!670047) bm!670045))

(declare-fun m!8004856 () Bool)

(assert (=> bm!670046 m!8004856))

(declare-fun m!8004858 () Bool)

(assert (=> bm!670045 m!8004858))

(declare-fun m!8004860 () Bool)

(assert (=> b!7341116 m!8004860))

(declare-fun m!8004862 () Bool)

(assert (=> bm!670042 m!8004862))

(declare-fun m!8004864 () Bool)

(assert (=> b!7341113 m!8004864))

(assert (=> b!7340998 d!2278805))

(declare-fun b!7341121 () Bool)

(declare-fun c!1363552 () Bool)

(assert (=> b!7341121 (= c!1363552 ((_ is Star!19113) (regTwo!38739 r1!2370)))))

(declare-fun e!4395863 () (InoxSet Context!16106))

(declare-fun e!4395859 () (InoxSet Context!16106))

(assert (=> b!7341121 (= e!4395863 e!4395859)))

(declare-fun b!7341122 () Bool)

(declare-fun e!4395862 () (InoxSet Context!16106))

(declare-fun call!670053 () (InoxSet Context!16106))

(declare-fun call!670058 () (InoxSet Context!16106))

(assert (=> b!7341122 (= e!4395862 ((_ map or) call!670053 call!670058))))

(declare-fun b!7341123 () Bool)

(declare-fun e!4395861 () (InoxSet Context!16106))

(declare-fun e!4395860 () (InoxSet Context!16106))

(assert (=> b!7341123 (= e!4395861 e!4395860)))

(declare-fun c!1363553 () Bool)

(assert (=> b!7341123 (= c!1363553 ((_ is Union!19113) (regTwo!38739 r1!2370)))))

(declare-fun b!7341124 () Bool)

(declare-fun e!4395858 () Bool)

(assert (=> b!7341124 (= e!4395858 (nullable!8207 (regOne!38738 (regTwo!38739 r1!2370))))))

(declare-fun d!2278807 () Bool)

(declare-fun c!1363554 () Bool)

(assert (=> d!2278807 (= c!1363554 (and ((_ is ElementMatch!19113) (regTwo!38739 r1!2370)) (= (c!1363509 (regTwo!38739 r1!2370)) c!10362)))))

(assert (=> d!2278807 (= (derivationStepZipperDown!2939 (regTwo!38739 r1!2370) ct1!282 c!10362) e!4395861)))

(declare-fun b!7341125 () Bool)

(declare-fun call!670057 () (InoxSet Context!16106))

(assert (=> b!7341125 (= e!4395860 ((_ map or) call!670057 call!670053))))

(declare-fun call!670055 () List!71609)

(declare-fun bm!670048 () Bool)

(assert (=> bm!670048 (= call!670053 (derivationStepZipperDown!2939 (ite c!1363553 (regTwo!38739 (regTwo!38739 r1!2370)) (regOne!38738 (regTwo!38739 r1!2370))) (ite c!1363553 ct1!282 (Context!16107 call!670055)) c!10362))))

(declare-fun bm!670049 () Bool)

(declare-fun call!670054 () List!71609)

(assert (=> bm!670049 (= call!670054 call!670055)))

(declare-fun b!7341126 () Bool)

(declare-fun c!1363551 () Bool)

(assert (=> b!7341126 (= c!1363551 e!4395858)))

(declare-fun res!2965706 () Bool)

(assert (=> b!7341126 (=> (not res!2965706) (not e!4395858))))

(assert (=> b!7341126 (= res!2965706 ((_ is Concat!27958) (regTwo!38739 r1!2370)))))

(assert (=> b!7341126 (= e!4395860 e!4395862)))

(declare-fun bm!670050 () Bool)

(declare-fun call!670056 () (InoxSet Context!16106))

(assert (=> bm!670050 (= call!670056 call!670058)))

(declare-fun b!7341127 () Bool)

(assert (=> b!7341127 (= e!4395861 (store ((as const (Array Context!16106 Bool)) false) ct1!282 true))))

(declare-fun c!1363550 () Bool)

(declare-fun bm!670051 () Bool)

(assert (=> bm!670051 (= call!670057 (derivationStepZipperDown!2939 (ite c!1363553 (regOne!38739 (regTwo!38739 r1!2370)) (ite c!1363551 (regTwo!38738 (regTwo!38739 r1!2370)) (ite c!1363550 (regOne!38738 (regTwo!38739 r1!2370)) (reg!19442 (regTwo!38739 r1!2370))))) (ite (or c!1363553 c!1363551) ct1!282 (Context!16107 call!670054)) c!10362))))

(declare-fun b!7341128 () Bool)

(assert (=> b!7341128 (= e!4395862 e!4395863)))

(assert (=> b!7341128 (= c!1363550 ((_ is Concat!27958) (regTwo!38739 r1!2370)))))

(declare-fun b!7341129 () Bool)

(assert (=> b!7341129 (= e!4395859 call!670056)))

(declare-fun b!7341130 () Bool)

(assert (=> b!7341130 (= e!4395859 ((as const (Array Context!16106 Bool)) false))))

(declare-fun bm!670052 () Bool)

(assert (=> bm!670052 (= call!670055 ($colon$colon!3114 (exprs!8553 ct1!282) (ite (or c!1363551 c!1363550) (regTwo!38738 (regTwo!38739 r1!2370)) (regTwo!38739 r1!2370))))))

(declare-fun bm!670053 () Bool)

(assert (=> bm!670053 (= call!670058 call!670057)))

(declare-fun b!7341131 () Bool)

(assert (=> b!7341131 (= e!4395863 call!670056)))

(assert (= (and d!2278807 c!1363554) b!7341127))

(assert (= (and d!2278807 (not c!1363554)) b!7341123))

(assert (= (and b!7341123 c!1363553) b!7341125))

(assert (= (and b!7341123 (not c!1363553)) b!7341126))

(assert (= (and b!7341126 res!2965706) b!7341124))

(assert (= (and b!7341126 c!1363551) b!7341122))

(assert (= (and b!7341126 (not c!1363551)) b!7341128))

(assert (= (and b!7341128 c!1363550) b!7341131))

(assert (= (and b!7341128 (not c!1363550)) b!7341121))

(assert (= (and b!7341121 c!1363552) b!7341129))

(assert (= (and b!7341121 (not c!1363552)) b!7341130))

(assert (= (or b!7341131 b!7341129) bm!670049))

(assert (= (or b!7341131 b!7341129) bm!670050))

(assert (= (or b!7341122 bm!670050) bm!670053))

(assert (= (or b!7341122 bm!670049) bm!670052))

(assert (= (or b!7341125 b!7341122) bm!670048))

(assert (= (or b!7341125 bm!670053) bm!670051))

(declare-fun m!8004866 () Bool)

(assert (=> bm!670052 m!8004866))

(declare-fun m!8004868 () Bool)

(assert (=> bm!670051 m!8004868))

(assert (=> b!7341127 m!8004860))

(declare-fun m!8004870 () Bool)

(assert (=> bm!670048 m!8004870))

(declare-fun m!8004872 () Bool)

(assert (=> b!7341124 m!8004872))

(assert (=> b!7340993 d!2278807))

(declare-fun b!7341143 () Bool)

(declare-fun c!1363562 () Bool)

(assert (=> b!7341143 (= c!1363562 ((_ is Star!19113) (regOne!38739 r1!2370)))))

(declare-fun e!4395875 () (InoxSet Context!16106))

(declare-fun e!4395871 () (InoxSet Context!16106))

(assert (=> b!7341143 (= e!4395875 e!4395871)))

(declare-fun b!7341144 () Bool)

(declare-fun e!4395874 () (InoxSet Context!16106))

(declare-fun call!670065 () (InoxSet Context!16106))

(declare-fun call!670070 () (InoxSet Context!16106))

(assert (=> b!7341144 (= e!4395874 ((_ map or) call!670065 call!670070))))

(declare-fun b!7341145 () Bool)

(declare-fun e!4395873 () (InoxSet Context!16106))

(declare-fun e!4395872 () (InoxSet Context!16106))

(assert (=> b!7341145 (= e!4395873 e!4395872)))

(declare-fun c!1363563 () Bool)

(assert (=> b!7341145 (= c!1363563 ((_ is Union!19113) (regOne!38739 r1!2370)))))

(declare-fun b!7341146 () Bool)

(declare-fun e!4395870 () Bool)

(assert (=> b!7341146 (= e!4395870 (nullable!8207 (regOne!38738 (regOne!38739 r1!2370))))))

(declare-fun d!2278809 () Bool)

(declare-fun c!1363564 () Bool)

(assert (=> d!2278809 (= c!1363564 (and ((_ is ElementMatch!19113) (regOne!38739 r1!2370)) (= (c!1363509 (regOne!38739 r1!2370)) c!10362)))))

(assert (=> d!2278809 (= (derivationStepZipperDown!2939 (regOne!38739 r1!2370) ct1!282 c!10362) e!4395873)))

(declare-fun b!7341147 () Bool)

(declare-fun call!670069 () (InoxSet Context!16106))

(assert (=> b!7341147 (= e!4395872 ((_ map or) call!670069 call!670065))))

(declare-fun call!670067 () List!71609)

(declare-fun bm!670060 () Bool)

(assert (=> bm!670060 (= call!670065 (derivationStepZipperDown!2939 (ite c!1363563 (regTwo!38739 (regOne!38739 r1!2370)) (regOne!38738 (regOne!38739 r1!2370))) (ite c!1363563 ct1!282 (Context!16107 call!670067)) c!10362))))

(declare-fun bm!670061 () Bool)

(declare-fun call!670066 () List!71609)

(assert (=> bm!670061 (= call!670066 call!670067)))

(declare-fun b!7341148 () Bool)

(declare-fun c!1363561 () Bool)

(assert (=> b!7341148 (= c!1363561 e!4395870)))

(declare-fun res!2965708 () Bool)

(assert (=> b!7341148 (=> (not res!2965708) (not e!4395870))))

(assert (=> b!7341148 (= res!2965708 ((_ is Concat!27958) (regOne!38739 r1!2370)))))

(assert (=> b!7341148 (= e!4395872 e!4395874)))

(declare-fun bm!670062 () Bool)

(declare-fun call!670068 () (InoxSet Context!16106))

(assert (=> bm!670062 (= call!670068 call!670070)))

(declare-fun b!7341149 () Bool)

(assert (=> b!7341149 (= e!4395873 (store ((as const (Array Context!16106 Bool)) false) ct1!282 true))))

(declare-fun c!1363560 () Bool)

(declare-fun bm!670063 () Bool)

(assert (=> bm!670063 (= call!670069 (derivationStepZipperDown!2939 (ite c!1363563 (regOne!38739 (regOne!38739 r1!2370)) (ite c!1363561 (regTwo!38738 (regOne!38739 r1!2370)) (ite c!1363560 (regOne!38738 (regOne!38739 r1!2370)) (reg!19442 (regOne!38739 r1!2370))))) (ite (or c!1363563 c!1363561) ct1!282 (Context!16107 call!670066)) c!10362))))

(declare-fun b!7341150 () Bool)

(assert (=> b!7341150 (= e!4395874 e!4395875)))

(assert (=> b!7341150 (= c!1363560 ((_ is Concat!27958) (regOne!38739 r1!2370)))))

(declare-fun b!7341151 () Bool)

(assert (=> b!7341151 (= e!4395871 call!670068)))

(declare-fun b!7341152 () Bool)

(assert (=> b!7341152 (= e!4395871 ((as const (Array Context!16106 Bool)) false))))

(declare-fun bm!670064 () Bool)

(assert (=> bm!670064 (= call!670067 ($colon$colon!3114 (exprs!8553 ct1!282) (ite (or c!1363561 c!1363560) (regTwo!38738 (regOne!38739 r1!2370)) (regOne!38739 r1!2370))))))

(declare-fun bm!670065 () Bool)

(assert (=> bm!670065 (= call!670070 call!670069)))

(declare-fun b!7341153 () Bool)

(assert (=> b!7341153 (= e!4395875 call!670068)))

(assert (= (and d!2278809 c!1363564) b!7341149))

(assert (= (and d!2278809 (not c!1363564)) b!7341145))

(assert (= (and b!7341145 c!1363563) b!7341147))

(assert (= (and b!7341145 (not c!1363563)) b!7341148))

(assert (= (and b!7341148 res!2965708) b!7341146))

(assert (= (and b!7341148 c!1363561) b!7341144))

(assert (= (and b!7341148 (not c!1363561)) b!7341150))

(assert (= (and b!7341150 c!1363560) b!7341153))

(assert (= (and b!7341150 (not c!1363560)) b!7341143))

(assert (= (and b!7341143 c!1363562) b!7341151))

(assert (= (and b!7341143 (not c!1363562)) b!7341152))

(assert (= (or b!7341153 b!7341151) bm!670061))

(assert (= (or b!7341153 b!7341151) bm!670062))

(assert (= (or b!7341144 bm!670062) bm!670065))

(assert (= (or b!7341144 bm!670061) bm!670064))

(assert (= (or b!7341147 b!7341144) bm!670060))

(assert (= (or b!7341147 bm!670065) bm!670063))

(declare-fun m!8004884 () Bool)

(assert (=> bm!670064 m!8004884))

(declare-fun m!8004886 () Bool)

(assert (=> bm!670063 m!8004886))

(assert (=> b!7341149 m!8004860))

(declare-fun m!8004888 () Bool)

(assert (=> bm!670060 m!8004888))

(assert (=> b!7341146 m!8004830))

(assert (=> b!7340993 d!2278809))

(declare-fun b!7341194 () Bool)

(declare-fun res!2965724 () Bool)

(declare-fun e!4395903 () Bool)

(assert (=> b!7341194 (=> (not res!2965724) (not e!4395903))))

(declare-fun call!670089 () Bool)

(assert (=> b!7341194 (= res!2965724 call!670089)))

(declare-fun e!4395905 () Bool)

(assert (=> b!7341194 (= e!4395905 e!4395903)))

(declare-fun b!7341195 () Bool)

(declare-fun res!2965722 () Bool)

(declare-fun e!4395902 () Bool)

(assert (=> b!7341195 (=> res!2965722 e!4395902)))

(assert (=> b!7341195 (= res!2965722 (not ((_ is Concat!27958) r1!2370)))))

(assert (=> b!7341195 (= e!4395905 e!4395902)))

(declare-fun bm!670084 () Bool)

(declare-fun call!670091 () Bool)

(declare-fun call!670090 () Bool)

(assert (=> bm!670084 (= call!670091 call!670090)))

(declare-fun b!7341196 () Bool)

(declare-fun e!4395907 () Bool)

(assert (=> b!7341196 (= e!4395907 call!670089)))

(declare-fun c!1363579 () Bool)

(declare-fun c!1363580 () Bool)

(declare-fun bm!670085 () Bool)

(assert (=> bm!670085 (= call!670090 (validRegex!9709 (ite c!1363580 (reg!19442 r1!2370) (ite c!1363579 (regTwo!38739 r1!2370) (regOne!38738 r1!2370)))))))

(declare-fun b!7341198 () Bool)

(declare-fun e!4395908 () Bool)

(declare-fun e!4395906 () Bool)

(assert (=> b!7341198 (= e!4395908 e!4395906)))

(assert (=> b!7341198 (= c!1363580 ((_ is Star!19113) r1!2370))))

(declare-fun b!7341199 () Bool)

(declare-fun e!4395904 () Bool)

(assert (=> b!7341199 (= e!4395904 call!670090)))

(declare-fun b!7341200 () Bool)

(assert (=> b!7341200 (= e!4395906 e!4395905)))

(assert (=> b!7341200 (= c!1363579 ((_ is Union!19113) r1!2370))))

(declare-fun b!7341201 () Bool)

(assert (=> b!7341201 (= e!4395902 e!4395907)))

(declare-fun res!2965723 () Bool)

(assert (=> b!7341201 (=> (not res!2965723) (not e!4395907))))

(assert (=> b!7341201 (= res!2965723 call!670091)))

(declare-fun bm!670086 () Bool)

(assert (=> bm!670086 (= call!670089 (validRegex!9709 (ite c!1363579 (regOne!38739 r1!2370) (regTwo!38738 r1!2370))))))

(declare-fun b!7341202 () Bool)

(assert (=> b!7341202 (= e!4395906 e!4395904)))

(declare-fun res!2965721 () Bool)

(assert (=> b!7341202 (= res!2965721 (not (nullable!8207 (reg!19442 r1!2370))))))

(assert (=> b!7341202 (=> (not res!2965721) (not e!4395904))))

(declare-fun d!2278813 () Bool)

(declare-fun res!2965725 () Bool)

(assert (=> d!2278813 (=> res!2965725 e!4395908)))

(assert (=> d!2278813 (= res!2965725 ((_ is ElementMatch!19113) r1!2370))))

(assert (=> d!2278813 (= (validRegex!9709 r1!2370) e!4395908)))

(declare-fun b!7341197 () Bool)

(assert (=> b!7341197 (= e!4395903 call!670091)))

(assert (= (and d!2278813 (not res!2965725)) b!7341198))

(assert (= (and b!7341198 c!1363580) b!7341202))

(assert (= (and b!7341198 (not c!1363580)) b!7341200))

(assert (= (and b!7341202 res!2965721) b!7341199))

(assert (= (and b!7341200 c!1363579) b!7341194))

(assert (= (and b!7341200 (not c!1363579)) b!7341195))

(assert (= (and b!7341194 res!2965724) b!7341197))

(assert (= (and b!7341195 (not res!2965722)) b!7341201))

(assert (= (and b!7341201 res!2965723) b!7341196))

(assert (= (or b!7341194 b!7341196) bm!670086))

(assert (= (or b!7341197 b!7341201) bm!670084))

(assert (= (or b!7341199 bm!670084) bm!670085))

(declare-fun m!8004906 () Bool)

(assert (=> bm!670085 m!8004906))

(declare-fun m!8004908 () Bool)

(assert (=> bm!670086 m!8004908))

(declare-fun m!8004910 () Bool)

(assert (=> b!7341202 m!8004910))

(assert (=> start!717004 d!2278813))

(declare-fun bs!1918431 () Bool)

(declare-fun d!2278819 () Bool)

(assert (= bs!1918431 (and d!2278819 b!7340990)))

(declare-fun lambda!455630 () Int)

(assert (=> bs!1918431 (= lambda!455630 lambda!455613)))

(declare-fun bs!1918432 () Bool)

(assert (= bs!1918432 (and d!2278819 d!2278781)))

(assert (=> bs!1918432 (= lambda!455630 lambda!455618)))

(assert (=> d!2278819 (= (inv!91122 cWitness!61) (forall!17945 (exprs!8553 cWitness!61) lambda!455630))))

(declare-fun bs!1918433 () Bool)

(assert (= bs!1918433 d!2278819))

(declare-fun m!8004912 () Bool)

(assert (=> bs!1918433 m!8004912))

(assert (=> start!717004 d!2278819))

(declare-fun bs!1918434 () Bool)

(declare-fun d!2278821 () Bool)

(assert (= bs!1918434 (and d!2278821 b!7340990)))

(declare-fun lambda!455631 () Int)

(assert (=> bs!1918434 (= lambda!455631 lambda!455613)))

(declare-fun bs!1918435 () Bool)

(assert (= bs!1918435 (and d!2278821 d!2278781)))

(assert (=> bs!1918435 (= lambda!455631 lambda!455618)))

(declare-fun bs!1918436 () Bool)

(assert (= bs!1918436 (and d!2278821 d!2278819)))

(assert (=> bs!1918436 (= lambda!455631 lambda!455630)))

(assert (=> d!2278821 (= (inv!91122 ct1!282) (forall!17945 (exprs!8553 ct1!282) lambda!455631))))

(declare-fun bs!1918437 () Bool)

(assert (= bs!1918437 d!2278821))

(declare-fun m!8004914 () Bool)

(assert (=> bs!1918437 m!8004914))

(assert (=> start!717004 d!2278821))

(declare-fun bs!1918438 () Bool)

(declare-fun d!2278823 () Bool)

(assert (= bs!1918438 (and d!2278823 b!7340990)))

(declare-fun lambda!455632 () Int)

(assert (=> bs!1918438 (= lambda!455632 lambda!455613)))

(declare-fun bs!1918439 () Bool)

(assert (= bs!1918439 (and d!2278823 d!2278781)))

(assert (=> bs!1918439 (= lambda!455632 lambda!455618)))

(declare-fun bs!1918440 () Bool)

(assert (= bs!1918440 (and d!2278823 d!2278819)))

(assert (=> bs!1918440 (= lambda!455632 lambda!455630)))

(declare-fun bs!1918441 () Bool)

(assert (= bs!1918441 (and d!2278823 d!2278821)))

(assert (=> bs!1918441 (= lambda!455632 lambda!455631)))

(assert (=> d!2278823 (= (inv!91122 ct2!378) (forall!17945 (exprs!8553 ct2!378) lambda!455632))))

(declare-fun bs!1918442 () Bool)

(assert (= bs!1918442 d!2278823))

(declare-fun m!8004916 () Bool)

(assert (=> bs!1918442 m!8004916))

(assert (=> start!717004 d!2278823))

(declare-fun d!2278825 () Bool)

(declare-fun res!2965726 () Bool)

(declare-fun e!4395909 () Bool)

(assert (=> d!2278825 (=> res!2965726 e!4395909)))

(assert (=> d!2278825 (= res!2965726 ((_ is Nil!71485) (exprs!8553 cWitness!61)))))

(assert (=> d!2278825 (= (forall!17945 (exprs!8553 cWitness!61) lambda!455613) e!4395909)))

(declare-fun b!7341203 () Bool)

(declare-fun e!4395910 () Bool)

(assert (=> b!7341203 (= e!4395909 e!4395910)))

(declare-fun res!2965727 () Bool)

(assert (=> b!7341203 (=> (not res!2965727) (not e!4395910))))

(assert (=> b!7341203 (= res!2965727 (dynLambda!29451 lambda!455613 (h!77933 (exprs!8553 cWitness!61))))))

(declare-fun b!7341204 () Bool)

(assert (=> b!7341204 (= e!4395910 (forall!17945 (t!386004 (exprs!8553 cWitness!61)) lambda!455613))))

(assert (= (and d!2278825 (not res!2965726)) b!7341203))

(assert (= (and b!7341203 res!2965727) b!7341204))

(declare-fun b_lambda!283873 () Bool)

(assert (=> (not b_lambda!283873) (not b!7341203)))

(declare-fun m!8004918 () Bool)

(assert (=> b!7341203 m!8004918))

(declare-fun m!8004920 () Bool)

(assert (=> b!7341204 m!8004920))

(assert (=> b!7340988 d!2278825))

(declare-fun b!7341205 () Bool)

(declare-fun c!1363584 () Bool)

(assert (=> b!7341205 (= c!1363584 ((_ is Star!19113) r1!2370))))

(declare-fun e!4395916 () (InoxSet Context!16106))

(declare-fun e!4395912 () (InoxSet Context!16106))

(assert (=> b!7341205 (= e!4395916 e!4395912)))

(declare-fun b!7341206 () Bool)

(declare-fun e!4395915 () (InoxSet Context!16106))

(declare-fun call!670092 () (InoxSet Context!16106))

(declare-fun call!670097 () (InoxSet Context!16106))

(assert (=> b!7341206 (= e!4395915 ((_ map or) call!670092 call!670097))))

(declare-fun b!7341207 () Bool)

(declare-fun e!4395914 () (InoxSet Context!16106))

(declare-fun e!4395913 () (InoxSet Context!16106))

(assert (=> b!7341207 (= e!4395914 e!4395913)))

(declare-fun c!1363585 () Bool)

(assert (=> b!7341207 (= c!1363585 ((_ is Union!19113) r1!2370))))

(declare-fun b!7341208 () Bool)

(declare-fun e!4395911 () Bool)

(assert (=> b!7341208 (= e!4395911 (nullable!8207 (regOne!38738 r1!2370)))))

(declare-fun d!2278827 () Bool)

(declare-fun c!1363586 () Bool)

(assert (=> d!2278827 (= c!1363586 (and ((_ is ElementMatch!19113) r1!2370) (= (c!1363509 r1!2370) c!10362)))))

(assert (=> d!2278827 (= (derivationStepZipperDown!2939 r1!2370 lt!2610062 c!10362) e!4395914)))

(declare-fun b!7341209 () Bool)

(declare-fun call!670096 () (InoxSet Context!16106))

(assert (=> b!7341209 (= e!4395913 ((_ map or) call!670096 call!670092))))

(declare-fun call!670094 () List!71609)

(declare-fun bm!670087 () Bool)

(assert (=> bm!670087 (= call!670092 (derivationStepZipperDown!2939 (ite c!1363585 (regTwo!38739 r1!2370) (regOne!38738 r1!2370)) (ite c!1363585 lt!2610062 (Context!16107 call!670094)) c!10362))))

(declare-fun bm!670088 () Bool)

(declare-fun call!670093 () List!71609)

(assert (=> bm!670088 (= call!670093 call!670094)))

(declare-fun b!7341210 () Bool)

(declare-fun c!1363583 () Bool)

(assert (=> b!7341210 (= c!1363583 e!4395911)))

(declare-fun res!2965728 () Bool)

(assert (=> b!7341210 (=> (not res!2965728) (not e!4395911))))

(assert (=> b!7341210 (= res!2965728 ((_ is Concat!27958) r1!2370))))

(assert (=> b!7341210 (= e!4395913 e!4395915)))

(declare-fun bm!670089 () Bool)

(declare-fun call!670095 () (InoxSet Context!16106))

(assert (=> bm!670089 (= call!670095 call!670097)))

(declare-fun b!7341211 () Bool)

(assert (=> b!7341211 (= e!4395914 (store ((as const (Array Context!16106 Bool)) false) lt!2610062 true))))

(declare-fun c!1363582 () Bool)

(declare-fun bm!670090 () Bool)

(assert (=> bm!670090 (= call!670096 (derivationStepZipperDown!2939 (ite c!1363585 (regOne!38739 r1!2370) (ite c!1363583 (regTwo!38738 r1!2370) (ite c!1363582 (regOne!38738 r1!2370) (reg!19442 r1!2370)))) (ite (or c!1363585 c!1363583) lt!2610062 (Context!16107 call!670093)) c!10362))))

(declare-fun b!7341212 () Bool)

(assert (=> b!7341212 (= e!4395915 e!4395916)))

(assert (=> b!7341212 (= c!1363582 ((_ is Concat!27958) r1!2370))))

(declare-fun b!7341213 () Bool)

(assert (=> b!7341213 (= e!4395912 call!670095)))

(declare-fun b!7341214 () Bool)

(assert (=> b!7341214 (= e!4395912 ((as const (Array Context!16106 Bool)) false))))

(declare-fun bm!670091 () Bool)

(assert (=> bm!670091 (= call!670094 ($colon$colon!3114 (exprs!8553 lt!2610062) (ite (or c!1363583 c!1363582) (regTwo!38738 r1!2370) r1!2370)))))

(declare-fun bm!670092 () Bool)

(assert (=> bm!670092 (= call!670097 call!670096)))

(declare-fun b!7341215 () Bool)

(assert (=> b!7341215 (= e!4395916 call!670095)))

(assert (= (and d!2278827 c!1363586) b!7341211))

(assert (= (and d!2278827 (not c!1363586)) b!7341207))

(assert (= (and b!7341207 c!1363585) b!7341209))

(assert (= (and b!7341207 (not c!1363585)) b!7341210))

(assert (= (and b!7341210 res!2965728) b!7341208))

(assert (= (and b!7341210 c!1363583) b!7341206))

(assert (= (and b!7341210 (not c!1363583)) b!7341212))

(assert (= (and b!7341212 c!1363582) b!7341215))

(assert (= (and b!7341212 (not c!1363582)) b!7341205))

(assert (= (and b!7341205 c!1363584) b!7341213))

(assert (= (and b!7341205 (not c!1363584)) b!7341214))

(assert (= (or b!7341215 b!7341213) bm!670088))

(assert (= (or b!7341215 b!7341213) bm!670089))

(assert (= (or b!7341206 bm!670089) bm!670092))

(assert (= (or b!7341206 bm!670088) bm!670091))

(assert (= (or b!7341209 b!7341206) bm!670087))

(assert (= (or b!7341209 bm!670092) bm!670090))

(declare-fun m!8004934 () Bool)

(assert (=> bm!670091 m!8004934))

(declare-fun m!8004936 () Bool)

(assert (=> bm!670090 m!8004936))

(assert (=> b!7341211 m!8004826))

(declare-fun m!8004938 () Bool)

(assert (=> bm!670087 m!8004938))

(assert (=> b!7341208 m!8004864))

(assert (=> b!7340990 d!2278827))

(declare-fun b!7341219 () Bool)

(declare-fun e!4395918 () Bool)

(declare-fun lt!2610095 () List!71609)

(assert (=> b!7341219 (= e!4395918 (or (not (= (exprs!8553 ct2!378) Nil!71485)) (= lt!2610095 (exprs!8553 ct1!282))))))

(declare-fun b!7341216 () Bool)

(declare-fun e!4395917 () List!71609)

(assert (=> b!7341216 (= e!4395917 (exprs!8553 ct2!378))))

(declare-fun b!7341217 () Bool)

(assert (=> b!7341217 (= e!4395917 (Cons!71485 (h!77933 (exprs!8553 ct1!282)) (++!16931 (t!386004 (exprs!8553 ct1!282)) (exprs!8553 ct2!378))))))

(declare-fun b!7341218 () Bool)

(declare-fun res!2965730 () Bool)

(assert (=> b!7341218 (=> (not res!2965730) (not e!4395918))))

(assert (=> b!7341218 (= res!2965730 (= (size!42008 lt!2610095) (+ (size!42008 (exprs!8553 ct1!282)) (size!42008 (exprs!8553 ct2!378)))))))

(declare-fun d!2278831 () Bool)

(assert (=> d!2278831 e!4395918))

(declare-fun res!2965729 () Bool)

(assert (=> d!2278831 (=> (not res!2965729) (not e!4395918))))

(assert (=> d!2278831 (= res!2965729 (= (content!15029 lt!2610095) ((_ map or) (content!15029 (exprs!8553 ct1!282)) (content!15029 (exprs!8553 ct2!378)))))))

(assert (=> d!2278831 (= lt!2610095 e!4395917)))

(declare-fun c!1363587 () Bool)

(assert (=> d!2278831 (= c!1363587 ((_ is Nil!71485) (exprs!8553 ct1!282)))))

(assert (=> d!2278831 (= (++!16931 (exprs!8553 ct1!282) (exprs!8553 ct2!378)) lt!2610095)))

(assert (= (and d!2278831 c!1363587) b!7341216))

(assert (= (and d!2278831 (not c!1363587)) b!7341217))

(assert (= (and d!2278831 res!2965729) b!7341218))

(assert (= (and b!7341218 res!2965730) b!7341219))

(declare-fun m!8004940 () Bool)

(assert (=> b!7341217 m!8004940))

(declare-fun m!8004942 () Bool)

(assert (=> b!7341218 m!8004942))

(declare-fun m!8004944 () Bool)

(assert (=> b!7341218 m!8004944))

(assert (=> b!7341218 m!8004842))

(declare-fun m!8004946 () Bool)

(assert (=> d!2278831 m!8004946))

(declare-fun m!8004948 () Bool)

(assert (=> d!2278831 m!8004948))

(assert (=> d!2278831 m!8004848))

(assert (=> b!7340990 d!2278831))

(assert (=> b!7340990 d!2278803))

(declare-fun b!7341233 () Bool)

(declare-fun e!4395921 () Bool)

(declare-fun tp!2084530 () Bool)

(declare-fun tp!2084533 () Bool)

(assert (=> b!7341233 (= e!4395921 (and tp!2084530 tp!2084533))))

(declare-fun b!7341230 () Bool)

(assert (=> b!7341230 (= e!4395921 tp_is_empty!48471)))

(assert (=> b!7340999 (= tp!2084514 e!4395921)))

(declare-fun b!7341232 () Bool)

(declare-fun tp!2084531 () Bool)

(assert (=> b!7341232 (= e!4395921 tp!2084531)))

(declare-fun b!7341231 () Bool)

(declare-fun tp!2084532 () Bool)

(declare-fun tp!2084534 () Bool)

(assert (=> b!7341231 (= e!4395921 (and tp!2084532 tp!2084534))))

(assert (= (and b!7340999 ((_ is ElementMatch!19113) (regOne!38739 r1!2370))) b!7341230))

(assert (= (and b!7340999 ((_ is Concat!27958) (regOne!38739 r1!2370))) b!7341231))

(assert (= (and b!7340999 ((_ is Star!19113) (regOne!38739 r1!2370))) b!7341232))

(assert (= (and b!7340999 ((_ is Union!19113) (regOne!38739 r1!2370))) b!7341233))

(declare-fun b!7341237 () Bool)

(declare-fun e!4395922 () Bool)

(declare-fun tp!2084535 () Bool)

(declare-fun tp!2084538 () Bool)

(assert (=> b!7341237 (= e!4395922 (and tp!2084535 tp!2084538))))

(declare-fun b!7341234 () Bool)

(assert (=> b!7341234 (= e!4395922 tp_is_empty!48471)))

(assert (=> b!7340999 (= tp!2084512 e!4395922)))

(declare-fun b!7341236 () Bool)

(declare-fun tp!2084536 () Bool)

(assert (=> b!7341236 (= e!4395922 tp!2084536)))

(declare-fun b!7341235 () Bool)

(declare-fun tp!2084537 () Bool)

(declare-fun tp!2084539 () Bool)

(assert (=> b!7341235 (= e!4395922 (and tp!2084537 tp!2084539))))

(assert (= (and b!7340999 ((_ is ElementMatch!19113) (regTwo!38739 r1!2370))) b!7341234))

(assert (= (and b!7340999 ((_ is Concat!27958) (regTwo!38739 r1!2370))) b!7341235))

(assert (= (and b!7340999 ((_ is Star!19113) (regTwo!38739 r1!2370))) b!7341236))

(assert (= (and b!7340999 ((_ is Union!19113) (regTwo!38739 r1!2370))) b!7341237))

(declare-fun b!7341253 () Bool)

(declare-fun e!4395931 () Bool)

(declare-fun tp!2084544 () Bool)

(declare-fun tp!2084545 () Bool)

(assert (=> b!7341253 (= e!4395931 (and tp!2084544 tp!2084545))))

(assert (=> b!7340997 (= tp!2084519 e!4395931)))

(assert (= (and b!7340997 ((_ is Cons!71485) (exprs!8553 ct2!378))) b!7341253))

(declare-fun b!7341254 () Bool)

(declare-fun e!4395932 () Bool)

(declare-fun tp!2084546 () Bool)

(declare-fun tp!2084547 () Bool)

(assert (=> b!7341254 (= e!4395932 (and tp!2084546 tp!2084547))))

(assert (=> b!7340992 (= tp!2084518 e!4395932)))

(assert (= (and b!7340992 ((_ is Cons!71485) (exprs!8553 ct1!282))) b!7341254))

(declare-fun b!7341255 () Bool)

(declare-fun e!4395933 () Bool)

(declare-fun tp!2084548 () Bool)

(declare-fun tp!2084549 () Bool)

(assert (=> b!7341255 (= e!4395933 (and tp!2084548 tp!2084549))))

(assert (=> b!7341001 (= tp!2084517 e!4395933)))

(assert (= (and b!7341001 ((_ is Cons!71485) (exprs!8553 cWitness!61))) b!7341255))

(declare-fun b!7341259 () Bool)

(declare-fun e!4395934 () Bool)

(declare-fun tp!2084550 () Bool)

(declare-fun tp!2084553 () Bool)

(assert (=> b!7341259 (= e!4395934 (and tp!2084550 tp!2084553))))

(declare-fun b!7341256 () Bool)

(assert (=> b!7341256 (= e!4395934 tp_is_empty!48471)))

(assert (=> b!7340996 (= tp!2084513 e!4395934)))

(declare-fun b!7341258 () Bool)

(declare-fun tp!2084551 () Bool)

(assert (=> b!7341258 (= e!4395934 tp!2084551)))

(declare-fun b!7341257 () Bool)

(declare-fun tp!2084552 () Bool)

(declare-fun tp!2084554 () Bool)

(assert (=> b!7341257 (= e!4395934 (and tp!2084552 tp!2084554))))

(assert (= (and b!7340996 ((_ is ElementMatch!19113) (regOne!38738 r1!2370))) b!7341256))

(assert (= (and b!7340996 ((_ is Concat!27958) (regOne!38738 r1!2370))) b!7341257))

(assert (= (and b!7340996 ((_ is Star!19113) (regOne!38738 r1!2370))) b!7341258))

(assert (= (and b!7340996 ((_ is Union!19113) (regOne!38738 r1!2370))) b!7341259))

(declare-fun b!7341263 () Bool)

(declare-fun e!4395935 () Bool)

(declare-fun tp!2084555 () Bool)

(declare-fun tp!2084558 () Bool)

(assert (=> b!7341263 (= e!4395935 (and tp!2084555 tp!2084558))))

(declare-fun b!7341260 () Bool)

(assert (=> b!7341260 (= e!4395935 tp_is_empty!48471)))

(assert (=> b!7340996 (= tp!2084515 e!4395935)))

(declare-fun b!7341262 () Bool)

(declare-fun tp!2084556 () Bool)

(assert (=> b!7341262 (= e!4395935 tp!2084556)))

(declare-fun b!7341261 () Bool)

(declare-fun tp!2084557 () Bool)

(declare-fun tp!2084559 () Bool)

(assert (=> b!7341261 (= e!4395935 (and tp!2084557 tp!2084559))))

(assert (= (and b!7340996 ((_ is ElementMatch!19113) (regTwo!38738 r1!2370))) b!7341260))

(assert (= (and b!7340996 ((_ is Concat!27958) (regTwo!38738 r1!2370))) b!7341261))

(assert (= (and b!7340996 ((_ is Star!19113) (regTwo!38738 r1!2370))) b!7341262))

(assert (= (and b!7340996 ((_ is Union!19113) (regTwo!38738 r1!2370))) b!7341263))

(declare-fun b!7341267 () Bool)

(declare-fun e!4395936 () Bool)

(declare-fun tp!2084560 () Bool)

(declare-fun tp!2084563 () Bool)

(assert (=> b!7341267 (= e!4395936 (and tp!2084560 tp!2084563))))

(declare-fun b!7341264 () Bool)

(assert (=> b!7341264 (= e!4395936 tp_is_empty!48471)))

(assert (=> b!7340991 (= tp!2084516 e!4395936)))

(declare-fun b!7341266 () Bool)

(declare-fun tp!2084561 () Bool)

(assert (=> b!7341266 (= e!4395936 tp!2084561)))

(declare-fun b!7341265 () Bool)

(declare-fun tp!2084562 () Bool)

(declare-fun tp!2084564 () Bool)

(assert (=> b!7341265 (= e!4395936 (and tp!2084562 tp!2084564))))

(assert (= (and b!7340991 ((_ is ElementMatch!19113) (reg!19442 r1!2370))) b!7341264))

(assert (= (and b!7340991 ((_ is Concat!27958) (reg!19442 r1!2370))) b!7341265))

(assert (= (and b!7340991 ((_ is Star!19113) (reg!19442 r1!2370))) b!7341266))

(assert (= (and b!7340991 ((_ is Union!19113) (reg!19442 r1!2370))) b!7341267))

(declare-fun b_lambda!283875 () Bool)

(assert (= b_lambda!283867 (or b!7340990 b_lambda!283875)))

(declare-fun bs!1918449 () Bool)

(declare-fun d!2278837 () Bool)

(assert (= bs!1918449 (and d!2278837 b!7340990)))

(assert (=> bs!1918449 (= (dynLambda!29451 lambda!455613 (h!77933 (exprs!8553 ct2!378))) (validRegex!9709 (h!77933 (exprs!8553 ct2!378))))))

(declare-fun m!8004964 () Bool)

(assert (=> bs!1918449 m!8004964))

(assert (=> b!7341006 d!2278837))

(declare-fun b_lambda!283877 () Bool)

(assert (= b_lambda!283873 (or b!7340990 b_lambda!283877)))

(declare-fun bs!1918450 () Bool)

(declare-fun d!2278839 () Bool)

(assert (= bs!1918450 (and d!2278839 b!7340990)))

(assert (=> bs!1918450 (= (dynLambda!29451 lambda!455613 (h!77933 (exprs!8553 cWitness!61))) (validRegex!9709 (h!77933 (exprs!8553 cWitness!61))))))

(declare-fun m!8004966 () Bool)

(assert (=> bs!1918450 m!8004966))

(assert (=> b!7341203 d!2278839))

(check-sat (not bm!670091) (not b_lambda!283875) (not bm!670046) (not b!7341258) (not d!2278801) (not bm!670051) (not b!7341208) (not b!7341255) (not d!2278799) (not bm!670048) (not b!7341217) (not d!2278819) (not b!7341236) (not bm!670042) (not b!7341261) (not bs!1918449) (not d!2278803) (not b!7341146) (not b!7341108) (not b!7341262) (not b!7341257) (not b!7341266) (not bm!670052) tp_is_empty!48471 (not b!7341233) (not bm!670086) (not d!2278781) (not bm!670024) (not b_lambda!283877) (not b!7341237) (not b!7341068) (not bm!670085) (not b!7341204) (not bm!670064) (not b!7341232) (not d!2278823) (not b!7341267) (not b!7341235) (not b!7341231) (not bs!1918450) (not bm!670045) (not b!7341253) (not d!2278831) (not b!7341254) (not b!7341263) (not b!7341007) (not b!7341124) (not bm!670063) (not bm!670087) (not b!7341265) (not bm!670060) (not b!7341113) (not bm!670090) (not b!7341202) (not b!7341218) (not bm!670027) (not bm!670028) (not b!7341107) (not b!7341259) (not d!2278821))
(check-sat)
