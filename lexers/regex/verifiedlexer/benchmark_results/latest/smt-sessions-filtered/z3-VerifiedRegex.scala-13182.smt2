; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718984 () Bool)

(assert start!718984)

(declare-fun b!7364914 () Bool)

(declare-fun e!4409438 () Bool)

(declare-fun tp!2093084 () Bool)

(assert (=> b!7364914 (= e!4409438 tp!2093084)))

(declare-fun b!7364915 () Bool)

(declare-fun e!4409435 () Bool)

(declare-fun e!4409434 () Bool)

(assert (=> b!7364915 (= e!4409435 e!4409434)))

(declare-fun res!2972660 () Bool)

(assert (=> b!7364915 (=> (not res!2972660) (not e!4409434))))

(declare-datatypes ((C!38780 0))(
  ( (C!38781 (val!29750 Int)) )
))
(declare-datatypes ((Regex!19253 0))(
  ( (ElementMatch!19253 (c!1368573 C!38780)) (Concat!28098 (regOne!39018 Regex!19253) (regTwo!39018 Regex!19253)) (EmptyExpr!19253) (Star!19253 (reg!19582 Regex!19253)) (EmptyLang!19253) (Union!19253 (regOne!39019 Regex!19253) (regTwo!39019 Regex!19253)) )
))
(declare-fun r1!2370 () Regex!19253)

(declare-fun c!10362 () C!38780)

(get-info :version)

(assert (=> b!7364915 (= res!2972660 (and (or (not ((_ is ElementMatch!19253) r1!2370)) (not (= c!10362 (c!1368573 r1!2370)))) ((_ is Union!19253) r1!2370)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!71749 0))(
  ( (Nil!71625) (Cons!71625 (h!78073 Regex!19253) (t!386198 List!71749)) )
))
(declare-datatypes ((Context!16386 0))(
  ( (Context!16387 (exprs!8693 List!71749)) )
))
(declare-fun lt!2614669 () (InoxSet Context!16386))

(declare-fun lt!2614667 () Context!16386)

(declare-fun derivationStepZipperDown!3079 (Regex!19253 Context!16386 C!38780) (InoxSet Context!16386))

(assert (=> b!7364915 (= lt!2614669 (derivationStepZipperDown!3079 r1!2370 lt!2614667 c!10362))))

(declare-fun ct1!282 () Context!16386)

(declare-fun ct2!378 () Context!16386)

(declare-fun ++!17069 (List!71749 List!71749) List!71749)

(assert (=> b!7364915 (= lt!2614667 (Context!16387 (++!17069 (exprs!8693 ct1!282) (exprs!8693 ct2!378))))))

(declare-fun lambda!457653 () Int)

(declare-datatypes ((Unit!165455 0))(
  ( (Unit!165456) )
))
(declare-fun lt!2614668 () Unit!165455)

(declare-fun lemmaConcatPreservesForall!1926 (List!71749 List!71749 Int) Unit!165455)

(assert (=> b!7364915 (= lt!2614668 (lemmaConcatPreservesForall!1926 (exprs!8693 ct1!282) (exprs!8693 ct2!378) lambda!457653))))

(declare-fun b!7364916 () Bool)

(declare-fun res!2972657 () Bool)

(declare-fun e!4409437 () Bool)

(assert (=> b!7364916 (=> (not res!2972657) (not e!4409437))))

(declare-fun cWitness!61 () Context!16386)

(declare-fun lt!2614660 () (InoxSet Context!16386))

(assert (=> b!7364916 (= res!2972657 (not (select lt!2614660 cWitness!61)))))

(declare-fun b!7364917 () Bool)

(declare-fun lt!2614664 () Context!16386)

(declare-fun inv!91472 (Context!16386) Bool)

(assert (=> b!7364917 (= e!4409437 (not (inv!91472 lt!2614664)))))

(declare-fun lt!2614662 () Unit!165455)

(assert (=> b!7364917 (= lt!2614662 (lemmaConcatPreservesForall!1926 (exprs!8693 cWitness!61) (exprs!8693 ct2!378) lambda!457653))))

(assert (=> b!7364917 (select (derivationStepZipperDown!3079 (regTwo!39019 r1!2370) lt!2614667 c!10362) lt!2614664)))

(assert (=> b!7364917 (= lt!2614664 (Context!16387 (++!17069 (exprs!8693 cWitness!61) (exprs!8693 ct2!378))))))

(declare-fun lt!2614663 () Unit!165455)

(assert (=> b!7364917 (= lt!2614663 (lemmaConcatPreservesForall!1926 (exprs!8693 ct1!282) (exprs!8693 ct2!378) lambda!457653))))

(declare-fun lt!2614666 () Unit!165455)

(assert (=> b!7364917 (= lt!2614666 (lemmaConcatPreservesForall!1926 (exprs!8693 cWitness!61) (exprs!8693 ct2!378) lambda!457653))))

(declare-fun lt!2614661 () Unit!165455)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!122 (Regex!19253 Context!16386 Context!16386 Context!16386 C!38780) Unit!165455)

(assert (=> b!7364917 (= lt!2614661 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!122 (regTwo!39019 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun res!2972658 () Bool)

(declare-fun e!4409436 () Bool)

(assert (=> start!718984 (=> (not res!2972658) (not e!4409436))))

(declare-fun validRegex!9849 (Regex!19253) Bool)

(assert (=> start!718984 (= res!2972658 (validRegex!9849 r1!2370))))

(assert (=> start!718984 e!4409436))

(declare-fun tp_is_empty!48751 () Bool)

(assert (=> start!718984 tp_is_empty!48751))

(declare-fun e!4409439 () Bool)

(assert (=> start!718984 (and (inv!91472 cWitness!61) e!4409439)))

(declare-fun e!4409433 () Bool)

(assert (=> start!718984 (and (inv!91472 ct1!282) e!4409433)))

(assert (=> start!718984 e!4409438))

(declare-fun e!4409440 () Bool)

(assert (=> start!718984 (and (inv!91472 ct2!378) e!4409440)))

(declare-fun b!7364918 () Bool)

(declare-fun tp!2093085 () Bool)

(declare-fun tp!2093088 () Bool)

(assert (=> b!7364918 (= e!4409438 (and tp!2093085 tp!2093088))))

(declare-fun b!7364919 () Bool)

(declare-fun tp!2093082 () Bool)

(assert (=> b!7364919 (= e!4409433 tp!2093082)))

(declare-fun b!7364920 () Bool)

(declare-fun tp!2093089 () Bool)

(assert (=> b!7364920 (= e!4409440 tp!2093089)))

(declare-fun b!7364921 () Bool)

(declare-fun tp!2093083 () Bool)

(assert (=> b!7364921 (= e!4409439 tp!2093083)))

(declare-fun b!7364922 () Bool)

(assert (=> b!7364922 (= e!4409436 e!4409435)))

(declare-fun res!2972659 () Bool)

(assert (=> b!7364922 (=> (not res!2972659) (not e!4409435))))

(declare-fun lt!2614665 () (InoxSet Context!16386))

(assert (=> b!7364922 (= res!2972659 (select lt!2614665 cWitness!61))))

(assert (=> b!7364922 (= lt!2614665 (derivationStepZipperDown!3079 r1!2370 ct1!282 c!10362))))

(declare-fun b!7364923 () Bool)

(assert (=> b!7364923 (= e!4409434 e!4409437)))

(declare-fun res!2972656 () Bool)

(assert (=> b!7364923 (=> (not res!2972656) (not e!4409437))))

(assert (=> b!7364923 (= res!2972656 (= lt!2614665 ((_ map or) lt!2614660 (derivationStepZipperDown!3079 (regTwo!39019 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7364923 (= lt!2614660 (derivationStepZipperDown!3079 (regOne!39019 r1!2370) ct1!282 c!10362))))

(declare-fun b!7364924 () Bool)

(declare-fun tp!2093087 () Bool)

(declare-fun tp!2093086 () Bool)

(assert (=> b!7364924 (= e!4409438 (and tp!2093087 tp!2093086))))

(declare-fun b!7364925 () Bool)

(assert (=> b!7364925 (= e!4409438 tp_is_empty!48751)))

(assert (= (and start!718984 res!2972658) b!7364922))

(assert (= (and b!7364922 res!2972659) b!7364915))

(assert (= (and b!7364915 res!2972660) b!7364923))

(assert (= (and b!7364923 res!2972656) b!7364916))

(assert (= (and b!7364916 res!2972657) b!7364917))

(assert (= start!718984 b!7364921))

(assert (= start!718984 b!7364919))

(assert (= (and start!718984 ((_ is ElementMatch!19253) r1!2370)) b!7364925))

(assert (= (and start!718984 ((_ is Concat!28098) r1!2370)) b!7364918))

(assert (= (and start!718984 ((_ is Star!19253) r1!2370)) b!7364914))

(assert (= (and start!718984 ((_ is Union!19253) r1!2370)) b!7364924))

(assert (= start!718984 b!7364920))

(declare-fun m!8020878 () Bool)

(assert (=> b!7364916 m!8020878))

(declare-fun m!8020880 () Bool)

(assert (=> b!7364917 m!8020880))

(declare-fun m!8020882 () Bool)

(assert (=> b!7364917 m!8020882))

(declare-fun m!8020884 () Bool)

(assert (=> b!7364917 m!8020884))

(declare-fun m!8020886 () Bool)

(assert (=> b!7364917 m!8020886))

(declare-fun m!8020888 () Bool)

(assert (=> b!7364917 m!8020888))

(declare-fun m!8020890 () Bool)

(assert (=> b!7364917 m!8020890))

(declare-fun m!8020892 () Bool)

(assert (=> b!7364917 m!8020892))

(assert (=> b!7364917 m!8020892))

(declare-fun m!8020894 () Bool)

(assert (=> b!7364923 m!8020894))

(declare-fun m!8020896 () Bool)

(assert (=> b!7364923 m!8020896))

(declare-fun m!8020898 () Bool)

(assert (=> b!7364915 m!8020898))

(declare-fun m!8020900 () Bool)

(assert (=> b!7364915 m!8020900))

(assert (=> b!7364915 m!8020884))

(declare-fun m!8020902 () Bool)

(assert (=> b!7364922 m!8020902))

(declare-fun m!8020904 () Bool)

(assert (=> b!7364922 m!8020904))

(declare-fun m!8020906 () Bool)

(assert (=> start!718984 m!8020906))

(declare-fun m!8020908 () Bool)

(assert (=> start!718984 m!8020908))

(declare-fun m!8020910 () Bool)

(assert (=> start!718984 m!8020910))

(declare-fun m!8020912 () Bool)

(assert (=> start!718984 m!8020912))

(check-sat (not start!718984) (not b!7364915) (not b!7364917) (not b!7364920) tp_is_empty!48751 (not b!7364924) (not b!7364919) (not b!7364922) (not b!7364918) (not b!7364923) (not b!7364914) (not b!7364921))
(check-sat)
(get-model)

(declare-fun b!7364970 () Bool)

(declare-fun e!4409470 () (InoxSet Context!16386))

(declare-fun call!675537 () (InoxSet Context!16386))

(assert (=> b!7364970 (= e!4409470 call!675537)))

(declare-fun b!7364971 () Bool)

(declare-fun e!4409468 () Bool)

(declare-fun nullable!8330 (Regex!19253) Bool)

(assert (=> b!7364971 (= e!4409468 (nullable!8330 (regOne!39018 r1!2370)))))

(declare-fun call!675534 () List!71749)

(declare-fun bm!675527 () Bool)

(declare-fun c!1368595 () Bool)

(declare-fun call!675535 () (InoxSet Context!16386))

(assert (=> bm!675527 (= call!675535 (derivationStepZipperDown!3079 (ite c!1368595 (regTwo!39019 r1!2370) (regOne!39018 r1!2370)) (ite c!1368595 lt!2614667 (Context!16387 call!675534)) c!10362))))

(declare-fun b!7364972 () Bool)

(declare-fun c!1368596 () Bool)

(assert (=> b!7364972 (= c!1368596 e!4409468)))

(declare-fun res!2972665 () Bool)

(assert (=> b!7364972 (=> (not res!2972665) (not e!4409468))))

(assert (=> b!7364972 (= res!2972665 ((_ is Concat!28098) r1!2370))))

(declare-fun e!4409467 () (InoxSet Context!16386))

(declare-fun e!4409465 () (InoxSet Context!16386))

(assert (=> b!7364972 (= e!4409467 e!4409465)))

(declare-fun b!7364973 () Bool)

(declare-fun e!4409466 () (InoxSet Context!16386))

(assert (=> b!7364973 (= e!4409466 call!675537)))

(declare-fun b!7364974 () Bool)

(assert (=> b!7364974 (= e!4409465 e!4409470)))

(declare-fun c!1368597 () Bool)

(assert (=> b!7364974 (= c!1368597 ((_ is Concat!28098) r1!2370))))

(declare-fun d!2282609 () Bool)

(declare-fun c!1368598 () Bool)

(assert (=> d!2282609 (= c!1368598 (and ((_ is ElementMatch!19253) r1!2370) (= (c!1368573 r1!2370) c!10362)))))

(declare-fun e!4409469 () (InoxSet Context!16386))

(assert (=> d!2282609 (= (derivationStepZipperDown!3079 r1!2370 lt!2614667 c!10362) e!4409469)))

(declare-fun bm!675528 () Bool)

(declare-fun call!675533 () (InoxSet Context!16386))

(assert (=> bm!675528 (= call!675537 call!675533)))

(declare-fun b!7364975 () Bool)

(declare-fun call!675532 () (InoxSet Context!16386))

(assert (=> b!7364975 (= e!4409467 ((_ map or) call!675532 call!675535))))

(declare-fun b!7364976 () Bool)

(assert (=> b!7364976 (= e!4409466 ((as const (Array Context!16386 Bool)) false))))

(declare-fun bm!675529 () Bool)

(declare-fun call!675536 () List!71749)

(assert (=> bm!675529 (= call!675536 call!675534)))

(declare-fun b!7364977 () Bool)

(declare-fun c!1368594 () Bool)

(assert (=> b!7364977 (= c!1368594 ((_ is Star!19253) r1!2370))))

(assert (=> b!7364977 (= e!4409470 e!4409466)))

(declare-fun bm!675530 () Bool)

(declare-fun $colon$colon!3236 (List!71749 Regex!19253) List!71749)

(assert (=> bm!675530 (= call!675534 ($colon$colon!3236 (exprs!8693 lt!2614667) (ite (or c!1368596 c!1368597) (regTwo!39018 r1!2370) r1!2370)))))

(declare-fun b!7364978 () Bool)

(assert (=> b!7364978 (= e!4409469 (store ((as const (Array Context!16386 Bool)) false) lt!2614667 true))))

(declare-fun bm!675531 () Bool)

(assert (=> bm!675531 (= call!675533 call!675532)))

(declare-fun bm!675532 () Bool)

(assert (=> bm!675532 (= call!675532 (derivationStepZipperDown!3079 (ite c!1368595 (regOne!39019 r1!2370) (ite c!1368596 (regTwo!39018 r1!2370) (ite c!1368597 (regOne!39018 r1!2370) (reg!19582 r1!2370)))) (ite (or c!1368595 c!1368596) lt!2614667 (Context!16387 call!675536)) c!10362))))

(declare-fun b!7364979 () Bool)

(assert (=> b!7364979 (= e!4409469 e!4409467)))

(assert (=> b!7364979 (= c!1368595 ((_ is Union!19253) r1!2370))))

(declare-fun b!7364980 () Bool)

(assert (=> b!7364980 (= e!4409465 ((_ map or) call!675535 call!675533))))

(assert (= (and d!2282609 c!1368598) b!7364978))

(assert (= (and d!2282609 (not c!1368598)) b!7364979))

(assert (= (and b!7364979 c!1368595) b!7364975))

(assert (= (and b!7364979 (not c!1368595)) b!7364972))

(assert (= (and b!7364972 res!2972665) b!7364971))

(assert (= (and b!7364972 c!1368596) b!7364980))

(assert (= (and b!7364972 (not c!1368596)) b!7364974))

(assert (= (and b!7364974 c!1368597) b!7364970))

(assert (= (and b!7364974 (not c!1368597)) b!7364977))

(assert (= (and b!7364977 c!1368594) b!7364973))

(assert (= (and b!7364977 (not c!1368594)) b!7364976))

(assert (= (or b!7364970 b!7364973) bm!675529))

(assert (= (or b!7364970 b!7364973) bm!675528))

(assert (= (or b!7364980 bm!675528) bm!675531))

(assert (= (or b!7364980 bm!675529) bm!675530))

(assert (= (or b!7364975 b!7364980) bm!675527))

(assert (= (or b!7364975 bm!675531) bm!675532))

(declare-fun m!8020914 () Bool)

(assert (=> bm!675532 m!8020914))

(declare-fun m!8020916 () Bool)

(assert (=> b!7364971 m!8020916))

(declare-fun m!8020918 () Bool)

(assert (=> b!7364978 m!8020918))

(declare-fun m!8020920 () Bool)

(assert (=> bm!675527 m!8020920))

(declare-fun m!8020922 () Bool)

(assert (=> bm!675530 m!8020922))

(assert (=> b!7364915 d!2282609))

(declare-fun b!7365018 () Bool)

(declare-fun e!4409495 () List!71749)

(assert (=> b!7365018 (= e!4409495 (exprs!8693 ct2!378))))

(declare-fun d!2282613 () Bool)

(declare-fun e!4409496 () Bool)

(assert (=> d!2282613 e!4409496))

(declare-fun res!2972682 () Bool)

(assert (=> d!2282613 (=> (not res!2972682) (not e!4409496))))

(declare-fun lt!2614672 () List!71749)

(declare-fun content!15136 (List!71749) (InoxSet Regex!19253))

(assert (=> d!2282613 (= res!2972682 (= (content!15136 lt!2614672) ((_ map or) (content!15136 (exprs!8693 ct1!282)) (content!15136 (exprs!8693 ct2!378)))))))

(assert (=> d!2282613 (= lt!2614672 e!4409495)))

(declare-fun c!1368610 () Bool)

(assert (=> d!2282613 (= c!1368610 ((_ is Nil!71625) (exprs!8693 ct1!282)))))

(assert (=> d!2282613 (= (++!17069 (exprs!8693 ct1!282) (exprs!8693 ct2!378)) lt!2614672)))

(declare-fun b!7365021 () Bool)

(assert (=> b!7365021 (= e!4409496 (or (not (= (exprs!8693 ct2!378) Nil!71625)) (= lt!2614672 (exprs!8693 ct1!282))))))

(declare-fun b!7365020 () Bool)

(declare-fun res!2972681 () Bool)

(assert (=> b!7365020 (=> (not res!2972681) (not e!4409496))))

(declare-fun size!42114 (List!71749) Int)

(assert (=> b!7365020 (= res!2972681 (= (size!42114 lt!2614672) (+ (size!42114 (exprs!8693 ct1!282)) (size!42114 (exprs!8693 ct2!378)))))))

(declare-fun b!7365019 () Bool)

(assert (=> b!7365019 (= e!4409495 (Cons!71625 (h!78073 (exprs!8693 ct1!282)) (++!17069 (t!386198 (exprs!8693 ct1!282)) (exprs!8693 ct2!378))))))

(assert (= (and d!2282613 c!1368610) b!7365018))

(assert (= (and d!2282613 (not c!1368610)) b!7365019))

(assert (= (and d!2282613 res!2972682) b!7365020))

(assert (= (and b!7365020 res!2972681) b!7365021))

(declare-fun m!8020934 () Bool)

(assert (=> d!2282613 m!8020934))

(declare-fun m!8020936 () Bool)

(assert (=> d!2282613 m!8020936))

(declare-fun m!8020938 () Bool)

(assert (=> d!2282613 m!8020938))

(declare-fun m!8020940 () Bool)

(assert (=> b!7365020 m!8020940))

(declare-fun m!8020942 () Bool)

(assert (=> b!7365020 m!8020942))

(declare-fun m!8020944 () Bool)

(assert (=> b!7365020 m!8020944))

(declare-fun m!8020946 () Bool)

(assert (=> b!7365019 m!8020946))

(assert (=> b!7364915 d!2282613))

(declare-fun d!2282617 () Bool)

(declare-fun forall!18060 (List!71749 Int) Bool)

(assert (=> d!2282617 (forall!18060 (++!17069 (exprs!8693 ct1!282) (exprs!8693 ct2!378)) lambda!457653)))

(declare-fun lt!2614675 () Unit!165455)

(declare-fun choose!57273 (List!71749 List!71749 Int) Unit!165455)

(assert (=> d!2282617 (= lt!2614675 (choose!57273 (exprs!8693 ct1!282) (exprs!8693 ct2!378) lambda!457653))))

(assert (=> d!2282617 (forall!18060 (exprs!8693 ct1!282) lambda!457653)))

(assert (=> d!2282617 (= (lemmaConcatPreservesForall!1926 (exprs!8693 ct1!282) (exprs!8693 ct2!378) lambda!457653) lt!2614675)))

(declare-fun bs!1920424 () Bool)

(assert (= bs!1920424 d!2282617))

(assert (=> bs!1920424 m!8020900))

(assert (=> bs!1920424 m!8020900))

(declare-fun m!8020948 () Bool)

(assert (=> bs!1920424 m!8020948))

(declare-fun m!8020950 () Bool)

(assert (=> bs!1920424 m!8020950))

(declare-fun m!8020952 () Bool)

(assert (=> bs!1920424 m!8020952))

(assert (=> b!7364915 d!2282617))

(declare-fun b!7365060 () Bool)

(declare-fun e!4409530 () Bool)

(declare-fun call!675567 () Bool)

(assert (=> b!7365060 (= e!4409530 call!675567)))

(declare-fun c!1368623 () Bool)

(declare-fun bm!675560 () Bool)

(declare-fun call!675566 () Bool)

(declare-fun c!1368622 () Bool)

(assert (=> bm!675560 (= call!675566 (validRegex!9849 (ite c!1368622 (reg!19582 r1!2370) (ite c!1368623 (regOne!39019 r1!2370) (regTwo!39018 r1!2370)))))))

(declare-fun bm!675561 () Bool)

(assert (=> bm!675561 (= call!675567 call!675566)))

(declare-fun bm!675562 () Bool)

(declare-fun call!675565 () Bool)

(assert (=> bm!675562 (= call!675565 (validRegex!9849 (ite c!1368623 (regTwo!39019 r1!2370) (regOne!39018 r1!2370))))))

(declare-fun b!7365061 () Bool)

(declare-fun e!4409524 () Bool)

(assert (=> b!7365061 (= e!4409524 e!4409530)))

(declare-fun res!2972700 () Bool)

(assert (=> b!7365061 (=> (not res!2972700) (not e!4409530))))

(assert (=> b!7365061 (= res!2972700 call!675565)))

(declare-fun b!7365062 () Bool)

(declare-fun e!4409529 () Bool)

(assert (=> b!7365062 (= e!4409529 call!675565)))

(declare-fun b!7365063 () Bool)

(declare-fun e!4409527 () Bool)

(assert (=> b!7365063 (= e!4409527 call!675566)))

(declare-fun b!7365064 () Bool)

(declare-fun res!2972701 () Bool)

(assert (=> b!7365064 (=> (not res!2972701) (not e!4409529))))

(assert (=> b!7365064 (= res!2972701 call!675567)))

(declare-fun e!4409526 () Bool)

(assert (=> b!7365064 (= e!4409526 e!4409529)))

(declare-fun b!7365065 () Bool)

(declare-fun e!4409525 () Bool)

(assert (=> b!7365065 (= e!4409525 e!4409527)))

(declare-fun res!2972702 () Bool)

(assert (=> b!7365065 (= res!2972702 (not (nullable!8330 (reg!19582 r1!2370))))))

(assert (=> b!7365065 (=> (not res!2972702) (not e!4409527))))

(declare-fun b!7365066 () Bool)

(declare-fun e!4409528 () Bool)

(assert (=> b!7365066 (= e!4409528 e!4409525)))

(assert (=> b!7365066 (= c!1368622 ((_ is Star!19253) r1!2370))))

(declare-fun b!7365068 () Bool)

(assert (=> b!7365068 (= e!4409525 e!4409526)))

(assert (=> b!7365068 (= c!1368623 ((_ is Union!19253) r1!2370))))

(declare-fun d!2282619 () Bool)

(declare-fun res!2972699 () Bool)

(assert (=> d!2282619 (=> res!2972699 e!4409528)))

(assert (=> d!2282619 (= res!2972699 ((_ is ElementMatch!19253) r1!2370))))

(assert (=> d!2282619 (= (validRegex!9849 r1!2370) e!4409528)))

(declare-fun b!7365067 () Bool)

(declare-fun res!2972703 () Bool)

(assert (=> b!7365067 (=> res!2972703 e!4409524)))

(assert (=> b!7365067 (= res!2972703 (not ((_ is Concat!28098) r1!2370)))))

(assert (=> b!7365067 (= e!4409526 e!4409524)))

(assert (= (and d!2282619 (not res!2972699)) b!7365066))

(assert (= (and b!7365066 c!1368622) b!7365065))

(assert (= (and b!7365066 (not c!1368622)) b!7365068))

(assert (= (and b!7365065 res!2972702) b!7365063))

(assert (= (and b!7365068 c!1368623) b!7365064))

(assert (= (and b!7365068 (not c!1368623)) b!7365067))

(assert (= (and b!7365064 res!2972701) b!7365062))

(assert (= (and b!7365067 (not res!2972703)) b!7365061))

(assert (= (and b!7365061 res!2972700) b!7365060))

(assert (= (or b!7365064 b!7365060) bm!675561))

(assert (= (or b!7365062 b!7365061) bm!675562))

(assert (= (or b!7365063 bm!675561) bm!675560))

(declare-fun m!8020974 () Bool)

(assert (=> bm!675560 m!8020974))

(declare-fun m!8020976 () Bool)

(assert (=> bm!675562 m!8020976))

(declare-fun m!8020978 () Bool)

(assert (=> b!7365065 m!8020978))

(assert (=> start!718984 d!2282619))

(declare-fun bs!1920434 () Bool)

(declare-fun d!2282631 () Bool)

(assert (= bs!1920434 (and d!2282631 b!7364915)))

(declare-fun lambda!457661 () Int)

(assert (=> bs!1920434 (= lambda!457661 lambda!457653)))

(assert (=> d!2282631 (= (inv!91472 cWitness!61) (forall!18060 (exprs!8693 cWitness!61) lambda!457661))))

(declare-fun bs!1920435 () Bool)

(assert (= bs!1920435 d!2282631))

(declare-fun m!8020980 () Bool)

(assert (=> bs!1920435 m!8020980))

(assert (=> start!718984 d!2282631))

(declare-fun bs!1920436 () Bool)

(declare-fun d!2282633 () Bool)

(assert (= bs!1920436 (and d!2282633 b!7364915)))

(declare-fun lambda!457662 () Int)

(assert (=> bs!1920436 (= lambda!457662 lambda!457653)))

(declare-fun bs!1920437 () Bool)

(assert (= bs!1920437 (and d!2282633 d!2282631)))

(assert (=> bs!1920437 (= lambda!457662 lambda!457661)))

(assert (=> d!2282633 (= (inv!91472 ct1!282) (forall!18060 (exprs!8693 ct1!282) lambda!457662))))

(declare-fun bs!1920438 () Bool)

(assert (= bs!1920438 d!2282633))

(declare-fun m!8020982 () Bool)

(assert (=> bs!1920438 m!8020982))

(assert (=> start!718984 d!2282633))

(declare-fun bs!1920439 () Bool)

(declare-fun d!2282635 () Bool)

(assert (= bs!1920439 (and d!2282635 b!7364915)))

(declare-fun lambda!457663 () Int)

(assert (=> bs!1920439 (= lambda!457663 lambda!457653)))

(declare-fun bs!1920440 () Bool)

(assert (= bs!1920440 (and d!2282635 d!2282631)))

(assert (=> bs!1920440 (= lambda!457663 lambda!457661)))

(declare-fun bs!1920441 () Bool)

(assert (= bs!1920441 (and d!2282635 d!2282633)))

(assert (=> bs!1920441 (= lambda!457663 lambda!457662)))

(assert (=> d!2282635 (= (inv!91472 ct2!378) (forall!18060 (exprs!8693 ct2!378) lambda!457663))))

(declare-fun bs!1920442 () Bool)

(assert (= bs!1920442 d!2282635))

(declare-fun m!8020984 () Bool)

(assert (=> bs!1920442 m!8020984))

(assert (=> start!718984 d!2282635))

(declare-fun b!7365081 () Bool)

(declare-fun e!4409542 () (InoxSet Context!16386))

(declare-fun call!675573 () (InoxSet Context!16386))

(assert (=> b!7365081 (= e!4409542 call!675573)))

(declare-fun b!7365082 () Bool)

(declare-fun e!4409540 () Bool)

(assert (=> b!7365082 (= e!4409540 (nullable!8330 (regOne!39018 (regTwo!39019 r1!2370))))))

(declare-fun call!675570 () List!71749)

(declare-fun call!675571 () (InoxSet Context!16386))

(declare-fun bm!675563 () Bool)

(declare-fun c!1368628 () Bool)

(assert (=> bm!675563 (= call!675571 (derivationStepZipperDown!3079 (ite c!1368628 (regTwo!39019 (regTwo!39019 r1!2370)) (regOne!39018 (regTwo!39019 r1!2370))) (ite c!1368628 ct1!282 (Context!16387 call!675570)) c!10362))))

(declare-fun b!7365083 () Bool)

(declare-fun c!1368629 () Bool)

(assert (=> b!7365083 (= c!1368629 e!4409540)))

(declare-fun res!2972710 () Bool)

(assert (=> b!7365083 (=> (not res!2972710) (not e!4409540))))

(assert (=> b!7365083 (= res!2972710 ((_ is Concat!28098) (regTwo!39019 r1!2370)))))

(declare-fun e!4409539 () (InoxSet Context!16386))

(declare-fun e!4409537 () (InoxSet Context!16386))

(assert (=> b!7365083 (= e!4409539 e!4409537)))

(declare-fun b!7365084 () Bool)

(declare-fun e!4409538 () (InoxSet Context!16386))

(assert (=> b!7365084 (= e!4409538 call!675573)))

(declare-fun b!7365085 () Bool)

(assert (=> b!7365085 (= e!4409537 e!4409542)))

(declare-fun c!1368630 () Bool)

(assert (=> b!7365085 (= c!1368630 ((_ is Concat!28098) (regTwo!39019 r1!2370)))))

(declare-fun d!2282637 () Bool)

(declare-fun c!1368631 () Bool)

(assert (=> d!2282637 (= c!1368631 (and ((_ is ElementMatch!19253) (regTwo!39019 r1!2370)) (= (c!1368573 (regTwo!39019 r1!2370)) c!10362)))))

(declare-fun e!4409541 () (InoxSet Context!16386))

(assert (=> d!2282637 (= (derivationStepZipperDown!3079 (regTwo!39019 r1!2370) ct1!282 c!10362) e!4409541)))

(declare-fun bm!675564 () Bool)

(declare-fun call!675569 () (InoxSet Context!16386))

(assert (=> bm!675564 (= call!675573 call!675569)))

(declare-fun b!7365086 () Bool)

(declare-fun call!675568 () (InoxSet Context!16386))

(assert (=> b!7365086 (= e!4409539 ((_ map or) call!675568 call!675571))))

(declare-fun b!7365087 () Bool)

(assert (=> b!7365087 (= e!4409538 ((as const (Array Context!16386 Bool)) false))))

(declare-fun bm!675565 () Bool)

(declare-fun call!675572 () List!71749)

(assert (=> bm!675565 (= call!675572 call!675570)))

(declare-fun b!7365088 () Bool)

(declare-fun c!1368627 () Bool)

(assert (=> b!7365088 (= c!1368627 ((_ is Star!19253) (regTwo!39019 r1!2370)))))

(assert (=> b!7365088 (= e!4409542 e!4409538)))

(declare-fun bm!675566 () Bool)

(assert (=> bm!675566 (= call!675570 ($colon$colon!3236 (exprs!8693 ct1!282) (ite (or c!1368629 c!1368630) (regTwo!39018 (regTwo!39019 r1!2370)) (regTwo!39019 r1!2370))))))

(declare-fun b!7365089 () Bool)

(assert (=> b!7365089 (= e!4409541 (store ((as const (Array Context!16386 Bool)) false) ct1!282 true))))

(declare-fun bm!675567 () Bool)

(assert (=> bm!675567 (= call!675569 call!675568)))

(declare-fun bm!675568 () Bool)

(assert (=> bm!675568 (= call!675568 (derivationStepZipperDown!3079 (ite c!1368628 (regOne!39019 (regTwo!39019 r1!2370)) (ite c!1368629 (regTwo!39018 (regTwo!39019 r1!2370)) (ite c!1368630 (regOne!39018 (regTwo!39019 r1!2370)) (reg!19582 (regTwo!39019 r1!2370))))) (ite (or c!1368628 c!1368629) ct1!282 (Context!16387 call!675572)) c!10362))))

(declare-fun b!7365090 () Bool)

(assert (=> b!7365090 (= e!4409541 e!4409539)))

(assert (=> b!7365090 (= c!1368628 ((_ is Union!19253) (regTwo!39019 r1!2370)))))

(declare-fun b!7365091 () Bool)

(assert (=> b!7365091 (= e!4409537 ((_ map or) call!675571 call!675569))))

(assert (= (and d!2282637 c!1368631) b!7365089))

(assert (= (and d!2282637 (not c!1368631)) b!7365090))

(assert (= (and b!7365090 c!1368628) b!7365086))

(assert (= (and b!7365090 (not c!1368628)) b!7365083))

(assert (= (and b!7365083 res!2972710) b!7365082))

(assert (= (and b!7365083 c!1368629) b!7365091))

(assert (= (and b!7365083 (not c!1368629)) b!7365085))

(assert (= (and b!7365085 c!1368630) b!7365081))

(assert (= (and b!7365085 (not c!1368630)) b!7365088))

(assert (= (and b!7365088 c!1368627) b!7365084))

(assert (= (and b!7365088 (not c!1368627)) b!7365087))

(assert (= (or b!7365081 b!7365084) bm!675565))

(assert (= (or b!7365081 b!7365084) bm!675564))

(assert (= (or b!7365091 bm!675564) bm!675567))

(assert (= (or b!7365091 bm!675565) bm!675566))

(assert (= (or b!7365086 b!7365091) bm!675563))

(assert (= (or b!7365086 bm!675567) bm!675568))

(declare-fun m!8021000 () Bool)

(assert (=> bm!675568 m!8021000))

(declare-fun m!8021002 () Bool)

(assert (=> b!7365082 m!8021002))

(declare-fun m!8021004 () Bool)

(assert (=> b!7365089 m!8021004))

(declare-fun m!8021006 () Bool)

(assert (=> bm!675563 m!8021006))

(declare-fun m!8021008 () Bool)

(assert (=> bm!675566 m!8021008))

(assert (=> b!7364923 d!2282637))

(declare-fun b!7365092 () Bool)

(declare-fun e!4409548 () (InoxSet Context!16386))

(declare-fun call!675579 () (InoxSet Context!16386))

(assert (=> b!7365092 (= e!4409548 call!675579)))

(declare-fun b!7365093 () Bool)

(declare-fun e!4409546 () Bool)

(assert (=> b!7365093 (= e!4409546 (nullable!8330 (regOne!39018 (regOne!39019 r1!2370))))))

(declare-fun call!675576 () List!71749)

(declare-fun bm!675569 () Bool)

(declare-fun c!1368633 () Bool)

(declare-fun call!675577 () (InoxSet Context!16386))

(assert (=> bm!675569 (= call!675577 (derivationStepZipperDown!3079 (ite c!1368633 (regTwo!39019 (regOne!39019 r1!2370)) (regOne!39018 (regOne!39019 r1!2370))) (ite c!1368633 ct1!282 (Context!16387 call!675576)) c!10362))))

(declare-fun b!7365094 () Bool)

(declare-fun c!1368634 () Bool)

(assert (=> b!7365094 (= c!1368634 e!4409546)))

(declare-fun res!2972711 () Bool)

(assert (=> b!7365094 (=> (not res!2972711) (not e!4409546))))

(assert (=> b!7365094 (= res!2972711 ((_ is Concat!28098) (regOne!39019 r1!2370)))))

(declare-fun e!4409545 () (InoxSet Context!16386))

(declare-fun e!4409543 () (InoxSet Context!16386))

(assert (=> b!7365094 (= e!4409545 e!4409543)))

(declare-fun b!7365095 () Bool)

(declare-fun e!4409544 () (InoxSet Context!16386))

(assert (=> b!7365095 (= e!4409544 call!675579)))

(declare-fun b!7365096 () Bool)

(assert (=> b!7365096 (= e!4409543 e!4409548)))

(declare-fun c!1368635 () Bool)

(assert (=> b!7365096 (= c!1368635 ((_ is Concat!28098) (regOne!39019 r1!2370)))))

(declare-fun d!2282641 () Bool)

(declare-fun c!1368636 () Bool)

(assert (=> d!2282641 (= c!1368636 (and ((_ is ElementMatch!19253) (regOne!39019 r1!2370)) (= (c!1368573 (regOne!39019 r1!2370)) c!10362)))))

(declare-fun e!4409547 () (InoxSet Context!16386))

(assert (=> d!2282641 (= (derivationStepZipperDown!3079 (regOne!39019 r1!2370) ct1!282 c!10362) e!4409547)))

(declare-fun bm!675570 () Bool)

(declare-fun call!675575 () (InoxSet Context!16386))

(assert (=> bm!675570 (= call!675579 call!675575)))

(declare-fun b!7365097 () Bool)

(declare-fun call!675574 () (InoxSet Context!16386))

(assert (=> b!7365097 (= e!4409545 ((_ map or) call!675574 call!675577))))

(declare-fun b!7365098 () Bool)

(assert (=> b!7365098 (= e!4409544 ((as const (Array Context!16386 Bool)) false))))

(declare-fun bm!675571 () Bool)

(declare-fun call!675578 () List!71749)

(assert (=> bm!675571 (= call!675578 call!675576)))

(declare-fun b!7365099 () Bool)

(declare-fun c!1368632 () Bool)

(assert (=> b!7365099 (= c!1368632 ((_ is Star!19253) (regOne!39019 r1!2370)))))

(assert (=> b!7365099 (= e!4409548 e!4409544)))

(declare-fun bm!675572 () Bool)

(assert (=> bm!675572 (= call!675576 ($colon$colon!3236 (exprs!8693 ct1!282) (ite (or c!1368634 c!1368635) (regTwo!39018 (regOne!39019 r1!2370)) (regOne!39019 r1!2370))))))

(declare-fun b!7365100 () Bool)

(assert (=> b!7365100 (= e!4409547 (store ((as const (Array Context!16386 Bool)) false) ct1!282 true))))

(declare-fun bm!675573 () Bool)

(assert (=> bm!675573 (= call!675575 call!675574)))

(declare-fun bm!675574 () Bool)

(assert (=> bm!675574 (= call!675574 (derivationStepZipperDown!3079 (ite c!1368633 (regOne!39019 (regOne!39019 r1!2370)) (ite c!1368634 (regTwo!39018 (regOne!39019 r1!2370)) (ite c!1368635 (regOne!39018 (regOne!39019 r1!2370)) (reg!19582 (regOne!39019 r1!2370))))) (ite (or c!1368633 c!1368634) ct1!282 (Context!16387 call!675578)) c!10362))))

(declare-fun b!7365101 () Bool)

(assert (=> b!7365101 (= e!4409547 e!4409545)))

(assert (=> b!7365101 (= c!1368633 ((_ is Union!19253) (regOne!39019 r1!2370)))))

(declare-fun b!7365102 () Bool)

(assert (=> b!7365102 (= e!4409543 ((_ map or) call!675577 call!675575))))

(assert (= (and d!2282641 c!1368636) b!7365100))

(assert (= (and d!2282641 (not c!1368636)) b!7365101))

(assert (= (and b!7365101 c!1368633) b!7365097))

(assert (= (and b!7365101 (not c!1368633)) b!7365094))

(assert (= (and b!7365094 res!2972711) b!7365093))

(assert (= (and b!7365094 c!1368634) b!7365102))

(assert (= (and b!7365094 (not c!1368634)) b!7365096))

(assert (= (and b!7365096 c!1368635) b!7365092))

(assert (= (and b!7365096 (not c!1368635)) b!7365099))

(assert (= (and b!7365099 c!1368632) b!7365095))

(assert (= (and b!7365099 (not c!1368632)) b!7365098))

(assert (= (or b!7365092 b!7365095) bm!675571))

(assert (= (or b!7365092 b!7365095) bm!675570))

(assert (= (or b!7365102 bm!675570) bm!675573))

(assert (= (or b!7365102 bm!675571) bm!675572))

(assert (= (or b!7365097 b!7365102) bm!675569))

(assert (= (or b!7365097 bm!675573) bm!675574))

(declare-fun m!8021010 () Bool)

(assert (=> bm!675574 m!8021010))

(declare-fun m!8021012 () Bool)

(assert (=> b!7365093 m!8021012))

(assert (=> b!7365100 m!8021004))

(declare-fun m!8021014 () Bool)

(assert (=> bm!675569 m!8021014))

(declare-fun m!8021016 () Bool)

(assert (=> bm!675572 m!8021016))

(assert (=> b!7364923 d!2282641))

(assert (=> b!7364917 d!2282617))

(declare-fun b!7365103 () Bool)

(declare-fun e!4409554 () (InoxSet Context!16386))

(declare-fun call!675585 () (InoxSet Context!16386))

(assert (=> b!7365103 (= e!4409554 call!675585)))

(declare-fun b!7365104 () Bool)

(declare-fun e!4409552 () Bool)

(assert (=> b!7365104 (= e!4409552 (nullable!8330 (regOne!39018 (regTwo!39019 r1!2370))))))

(declare-fun c!1368638 () Bool)

(declare-fun call!675582 () List!71749)

(declare-fun call!675583 () (InoxSet Context!16386))

(declare-fun bm!675575 () Bool)

(assert (=> bm!675575 (= call!675583 (derivationStepZipperDown!3079 (ite c!1368638 (regTwo!39019 (regTwo!39019 r1!2370)) (regOne!39018 (regTwo!39019 r1!2370))) (ite c!1368638 lt!2614667 (Context!16387 call!675582)) c!10362))))

(declare-fun b!7365105 () Bool)

(declare-fun c!1368639 () Bool)

(assert (=> b!7365105 (= c!1368639 e!4409552)))

(declare-fun res!2972712 () Bool)

(assert (=> b!7365105 (=> (not res!2972712) (not e!4409552))))

(assert (=> b!7365105 (= res!2972712 ((_ is Concat!28098) (regTwo!39019 r1!2370)))))

(declare-fun e!4409551 () (InoxSet Context!16386))

(declare-fun e!4409549 () (InoxSet Context!16386))

(assert (=> b!7365105 (= e!4409551 e!4409549)))

(declare-fun b!7365106 () Bool)

(declare-fun e!4409550 () (InoxSet Context!16386))

(assert (=> b!7365106 (= e!4409550 call!675585)))

(declare-fun b!7365107 () Bool)

(assert (=> b!7365107 (= e!4409549 e!4409554)))

(declare-fun c!1368640 () Bool)

(assert (=> b!7365107 (= c!1368640 ((_ is Concat!28098) (regTwo!39019 r1!2370)))))

(declare-fun d!2282643 () Bool)

(declare-fun c!1368641 () Bool)

(assert (=> d!2282643 (= c!1368641 (and ((_ is ElementMatch!19253) (regTwo!39019 r1!2370)) (= (c!1368573 (regTwo!39019 r1!2370)) c!10362)))))

(declare-fun e!4409553 () (InoxSet Context!16386))

(assert (=> d!2282643 (= (derivationStepZipperDown!3079 (regTwo!39019 r1!2370) lt!2614667 c!10362) e!4409553)))

(declare-fun bm!675576 () Bool)

(declare-fun call!675581 () (InoxSet Context!16386))

(assert (=> bm!675576 (= call!675585 call!675581)))

(declare-fun b!7365108 () Bool)

(declare-fun call!675580 () (InoxSet Context!16386))

(assert (=> b!7365108 (= e!4409551 ((_ map or) call!675580 call!675583))))

(declare-fun b!7365109 () Bool)

(assert (=> b!7365109 (= e!4409550 ((as const (Array Context!16386 Bool)) false))))

(declare-fun bm!675577 () Bool)

(declare-fun call!675584 () List!71749)

(assert (=> bm!675577 (= call!675584 call!675582)))

(declare-fun b!7365110 () Bool)

(declare-fun c!1368637 () Bool)

(assert (=> b!7365110 (= c!1368637 ((_ is Star!19253) (regTwo!39019 r1!2370)))))

(assert (=> b!7365110 (= e!4409554 e!4409550)))

(declare-fun bm!675578 () Bool)

(assert (=> bm!675578 (= call!675582 ($colon$colon!3236 (exprs!8693 lt!2614667) (ite (or c!1368639 c!1368640) (regTwo!39018 (regTwo!39019 r1!2370)) (regTwo!39019 r1!2370))))))

(declare-fun b!7365111 () Bool)

(assert (=> b!7365111 (= e!4409553 (store ((as const (Array Context!16386 Bool)) false) lt!2614667 true))))

(declare-fun bm!675579 () Bool)

(assert (=> bm!675579 (= call!675581 call!675580)))

(declare-fun bm!675580 () Bool)

(assert (=> bm!675580 (= call!675580 (derivationStepZipperDown!3079 (ite c!1368638 (regOne!39019 (regTwo!39019 r1!2370)) (ite c!1368639 (regTwo!39018 (regTwo!39019 r1!2370)) (ite c!1368640 (regOne!39018 (regTwo!39019 r1!2370)) (reg!19582 (regTwo!39019 r1!2370))))) (ite (or c!1368638 c!1368639) lt!2614667 (Context!16387 call!675584)) c!10362))))

(declare-fun b!7365112 () Bool)

(assert (=> b!7365112 (= e!4409553 e!4409551)))

(assert (=> b!7365112 (= c!1368638 ((_ is Union!19253) (regTwo!39019 r1!2370)))))

(declare-fun b!7365113 () Bool)

(assert (=> b!7365113 (= e!4409549 ((_ map or) call!675583 call!675581))))

(assert (= (and d!2282643 c!1368641) b!7365111))

(assert (= (and d!2282643 (not c!1368641)) b!7365112))

(assert (= (and b!7365112 c!1368638) b!7365108))

(assert (= (and b!7365112 (not c!1368638)) b!7365105))

(assert (= (and b!7365105 res!2972712) b!7365104))

(assert (= (and b!7365105 c!1368639) b!7365113))

(assert (= (and b!7365105 (not c!1368639)) b!7365107))

(assert (= (and b!7365107 c!1368640) b!7365103))

(assert (= (and b!7365107 (not c!1368640)) b!7365110))

(assert (= (and b!7365110 c!1368637) b!7365106))

(assert (= (and b!7365110 (not c!1368637)) b!7365109))

(assert (= (or b!7365103 b!7365106) bm!675577))

(assert (= (or b!7365103 b!7365106) bm!675576))

(assert (= (or b!7365113 bm!675576) bm!675579))

(assert (= (or b!7365113 bm!675577) bm!675578))

(assert (= (or b!7365108 b!7365113) bm!675575))

(assert (= (or b!7365108 bm!675579) bm!675580))

(declare-fun m!8021024 () Bool)

(assert (=> bm!675580 m!8021024))

(assert (=> b!7365104 m!8021002))

(assert (=> b!7365111 m!8020918))

(declare-fun m!8021026 () Bool)

(assert (=> bm!675575 m!8021026))

(declare-fun m!8021028 () Bool)

(assert (=> bm!675578 m!8021028))

(assert (=> b!7364917 d!2282643))

(declare-fun bs!1920449 () Bool)

(declare-fun d!2282647 () Bool)

(assert (= bs!1920449 (and d!2282647 b!7364915)))

(declare-fun lambda!457673 () Int)

(assert (=> bs!1920449 (= lambda!457673 lambda!457653)))

(declare-fun bs!1920450 () Bool)

(assert (= bs!1920450 (and d!2282647 d!2282631)))

(assert (=> bs!1920450 (= lambda!457673 lambda!457661)))

(declare-fun bs!1920451 () Bool)

(assert (= bs!1920451 (and d!2282647 d!2282633)))

(assert (=> bs!1920451 (= lambda!457673 lambda!457662)))

(declare-fun bs!1920452 () Bool)

(assert (= bs!1920452 (and d!2282647 d!2282635)))

(assert (=> bs!1920452 (= lambda!457673 lambda!457663)))

(assert (=> d!2282647 (select (derivationStepZipperDown!3079 (regTwo!39019 r1!2370) (Context!16387 (++!17069 (exprs!8693 ct1!282) (exprs!8693 ct2!378))) c!10362) (Context!16387 (++!17069 (exprs!8693 cWitness!61) (exprs!8693 ct2!378))))))

(declare-fun lt!2614699 () Unit!165455)

(assert (=> d!2282647 (= lt!2614699 (lemmaConcatPreservesForall!1926 (exprs!8693 ct1!282) (exprs!8693 ct2!378) lambda!457673))))

(declare-fun lt!2614698 () Unit!165455)

(assert (=> d!2282647 (= lt!2614698 (lemmaConcatPreservesForall!1926 (exprs!8693 cWitness!61) (exprs!8693 ct2!378) lambda!457673))))

(declare-fun lt!2614697 () Unit!165455)

(declare-fun choose!57276 (Regex!19253 Context!16386 Context!16386 Context!16386 C!38780) Unit!165455)

(assert (=> d!2282647 (= lt!2614697 (choose!57276 (regTwo!39019 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2282647 (validRegex!9849 (regTwo!39019 r1!2370))))

(assert (=> d!2282647 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!122 (regTwo!39019 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2614697)))

(declare-fun bs!1920453 () Bool)

(assert (= bs!1920453 d!2282647))

(declare-fun m!8021042 () Bool)

(assert (=> bs!1920453 m!8021042))

(declare-fun m!8021044 () Bool)

(assert (=> bs!1920453 m!8021044))

(declare-fun m!8021046 () Bool)

(assert (=> bs!1920453 m!8021046))

(assert (=> bs!1920453 m!8020900))

(declare-fun m!8021048 () Bool)

(assert (=> bs!1920453 m!8021048))

(assert (=> bs!1920453 m!8020886))

(declare-fun m!8021050 () Bool)

(assert (=> bs!1920453 m!8021050))

(declare-fun m!8021054 () Bool)

(assert (=> bs!1920453 m!8021054))

(assert (=> b!7364917 d!2282647))

(declare-fun b!7365125 () Bool)

(declare-fun e!4409561 () List!71749)

(assert (=> b!7365125 (= e!4409561 (exprs!8693 ct2!378))))

(declare-fun d!2282651 () Bool)

(declare-fun e!4409562 () Bool)

(assert (=> d!2282651 e!4409562))

(declare-fun res!2972715 () Bool)

(assert (=> d!2282651 (=> (not res!2972715) (not e!4409562))))

(declare-fun lt!2614700 () List!71749)

(assert (=> d!2282651 (= res!2972715 (= (content!15136 lt!2614700) ((_ map or) (content!15136 (exprs!8693 cWitness!61)) (content!15136 (exprs!8693 ct2!378)))))))

(assert (=> d!2282651 (= lt!2614700 e!4409561)))

(declare-fun c!1368649 () Bool)

(assert (=> d!2282651 (= c!1368649 ((_ is Nil!71625) (exprs!8693 cWitness!61)))))

(assert (=> d!2282651 (= (++!17069 (exprs!8693 cWitness!61) (exprs!8693 ct2!378)) lt!2614700)))

(declare-fun b!7365128 () Bool)

(assert (=> b!7365128 (= e!4409562 (or (not (= (exprs!8693 ct2!378) Nil!71625)) (= lt!2614700 (exprs!8693 cWitness!61))))))

(declare-fun b!7365127 () Bool)

(declare-fun res!2972714 () Bool)

(assert (=> b!7365127 (=> (not res!2972714) (not e!4409562))))

(assert (=> b!7365127 (= res!2972714 (= (size!42114 lt!2614700) (+ (size!42114 (exprs!8693 cWitness!61)) (size!42114 (exprs!8693 ct2!378)))))))

(declare-fun b!7365126 () Bool)

(assert (=> b!7365126 (= e!4409561 (Cons!71625 (h!78073 (exprs!8693 cWitness!61)) (++!17069 (t!386198 (exprs!8693 cWitness!61)) (exprs!8693 ct2!378))))))

(assert (= (and d!2282651 c!1368649) b!7365125))

(assert (= (and d!2282651 (not c!1368649)) b!7365126))

(assert (= (and d!2282651 res!2972715) b!7365127))

(assert (= (and b!7365127 res!2972714) b!7365128))

(declare-fun m!8021062 () Bool)

(assert (=> d!2282651 m!8021062))

(declare-fun m!8021064 () Bool)

(assert (=> d!2282651 m!8021064))

(assert (=> d!2282651 m!8020938))

(declare-fun m!8021066 () Bool)

(assert (=> b!7365127 m!8021066))

(declare-fun m!8021068 () Bool)

(assert (=> b!7365127 m!8021068))

(assert (=> b!7365127 m!8020944))

(declare-fun m!8021072 () Bool)

(assert (=> b!7365126 m!8021072))

(assert (=> b!7364917 d!2282651))

(declare-fun bs!1920454 () Bool)

(declare-fun d!2282655 () Bool)

(assert (= bs!1920454 (and d!2282655 d!2282633)))

(declare-fun lambda!457674 () Int)

(assert (=> bs!1920454 (= lambda!457674 lambda!457662)))

(declare-fun bs!1920455 () Bool)

(assert (= bs!1920455 (and d!2282655 d!2282635)))

(assert (=> bs!1920455 (= lambda!457674 lambda!457663)))

(declare-fun bs!1920456 () Bool)

(assert (= bs!1920456 (and d!2282655 d!2282631)))

(assert (=> bs!1920456 (= lambda!457674 lambda!457661)))

(declare-fun bs!1920458 () Bool)

(assert (= bs!1920458 (and d!2282655 b!7364915)))

(assert (=> bs!1920458 (= lambda!457674 lambda!457653)))

(declare-fun bs!1920459 () Bool)

(assert (= bs!1920459 (and d!2282655 d!2282647)))

(assert (=> bs!1920459 (= lambda!457674 lambda!457673)))

(assert (=> d!2282655 (= (inv!91472 lt!2614664) (forall!18060 (exprs!8693 lt!2614664) lambda!457674))))

(declare-fun bs!1920460 () Bool)

(assert (= bs!1920460 d!2282655))

(declare-fun m!8021088 () Bool)

(assert (=> bs!1920460 m!8021088))

(assert (=> b!7364917 d!2282655))

(declare-fun d!2282661 () Bool)

(assert (=> d!2282661 (forall!18060 (++!17069 (exprs!8693 cWitness!61) (exprs!8693 ct2!378)) lambda!457653)))

(declare-fun lt!2614703 () Unit!165455)

(assert (=> d!2282661 (= lt!2614703 (choose!57273 (exprs!8693 cWitness!61) (exprs!8693 ct2!378) lambda!457653))))

(assert (=> d!2282661 (forall!18060 (exprs!8693 cWitness!61) lambda!457653)))

(assert (=> d!2282661 (= (lemmaConcatPreservesForall!1926 (exprs!8693 cWitness!61) (exprs!8693 ct2!378) lambda!457653) lt!2614703)))

(declare-fun bs!1920464 () Bool)

(assert (= bs!1920464 d!2282661))

(assert (=> bs!1920464 m!8020886))

(assert (=> bs!1920464 m!8020886))

(declare-fun m!8021090 () Bool)

(assert (=> bs!1920464 m!8021090))

(declare-fun m!8021092 () Bool)

(assert (=> bs!1920464 m!8021092))

(declare-fun m!8021094 () Bool)

(assert (=> bs!1920464 m!8021094))

(assert (=> b!7364917 d!2282661))

(declare-fun b!7365133 () Bool)

(declare-fun e!4409570 () (InoxSet Context!16386))

(declare-fun call!675597 () (InoxSet Context!16386))

(assert (=> b!7365133 (= e!4409570 call!675597)))

(declare-fun b!7365134 () Bool)

(declare-fun e!4409568 () Bool)

(assert (=> b!7365134 (= e!4409568 (nullable!8330 (regOne!39018 r1!2370)))))

(declare-fun c!1368652 () Bool)

(declare-fun call!675595 () (InoxSet Context!16386))

(declare-fun bm!675587 () Bool)

(declare-fun call!675594 () List!71749)

(assert (=> bm!675587 (= call!675595 (derivationStepZipperDown!3079 (ite c!1368652 (regTwo!39019 r1!2370) (regOne!39018 r1!2370)) (ite c!1368652 ct1!282 (Context!16387 call!675594)) c!10362))))

(declare-fun b!7365135 () Bool)

(declare-fun c!1368653 () Bool)

(assert (=> b!7365135 (= c!1368653 e!4409568)))

(declare-fun res!2972718 () Bool)

(assert (=> b!7365135 (=> (not res!2972718) (not e!4409568))))

(assert (=> b!7365135 (= res!2972718 ((_ is Concat!28098) r1!2370))))

(declare-fun e!4409567 () (InoxSet Context!16386))

(declare-fun e!4409565 () (InoxSet Context!16386))

(assert (=> b!7365135 (= e!4409567 e!4409565)))

(declare-fun b!7365136 () Bool)

(declare-fun e!4409566 () (InoxSet Context!16386))

(assert (=> b!7365136 (= e!4409566 call!675597)))

(declare-fun b!7365137 () Bool)

(assert (=> b!7365137 (= e!4409565 e!4409570)))

(declare-fun c!1368654 () Bool)

(assert (=> b!7365137 (= c!1368654 ((_ is Concat!28098) r1!2370))))

(declare-fun d!2282663 () Bool)

(declare-fun c!1368655 () Bool)

(assert (=> d!2282663 (= c!1368655 (and ((_ is ElementMatch!19253) r1!2370) (= (c!1368573 r1!2370) c!10362)))))

(declare-fun e!4409569 () (InoxSet Context!16386))

(assert (=> d!2282663 (= (derivationStepZipperDown!3079 r1!2370 ct1!282 c!10362) e!4409569)))

(declare-fun bm!675588 () Bool)

(declare-fun call!675593 () (InoxSet Context!16386))

(assert (=> bm!675588 (= call!675597 call!675593)))

(declare-fun b!7365138 () Bool)

(declare-fun call!675592 () (InoxSet Context!16386))

(assert (=> b!7365138 (= e!4409567 ((_ map or) call!675592 call!675595))))

(declare-fun b!7365139 () Bool)

(assert (=> b!7365139 (= e!4409566 ((as const (Array Context!16386 Bool)) false))))

(declare-fun bm!675589 () Bool)

(declare-fun call!675596 () List!71749)

(assert (=> bm!675589 (= call!675596 call!675594)))

(declare-fun b!7365140 () Bool)

(declare-fun c!1368651 () Bool)

(assert (=> b!7365140 (= c!1368651 ((_ is Star!19253) r1!2370))))

(assert (=> b!7365140 (= e!4409570 e!4409566)))

(declare-fun bm!675590 () Bool)

(assert (=> bm!675590 (= call!675594 ($colon$colon!3236 (exprs!8693 ct1!282) (ite (or c!1368653 c!1368654) (regTwo!39018 r1!2370) r1!2370)))))

(declare-fun b!7365141 () Bool)

(assert (=> b!7365141 (= e!4409569 (store ((as const (Array Context!16386 Bool)) false) ct1!282 true))))

(declare-fun bm!675591 () Bool)

(assert (=> bm!675591 (= call!675593 call!675592)))

(declare-fun bm!675592 () Bool)

(assert (=> bm!675592 (= call!675592 (derivationStepZipperDown!3079 (ite c!1368652 (regOne!39019 r1!2370) (ite c!1368653 (regTwo!39018 r1!2370) (ite c!1368654 (regOne!39018 r1!2370) (reg!19582 r1!2370)))) (ite (or c!1368652 c!1368653) ct1!282 (Context!16387 call!675596)) c!10362))))

(declare-fun b!7365142 () Bool)

(assert (=> b!7365142 (= e!4409569 e!4409567)))

(assert (=> b!7365142 (= c!1368652 ((_ is Union!19253) r1!2370))))

(declare-fun b!7365143 () Bool)

(assert (=> b!7365143 (= e!4409565 ((_ map or) call!675595 call!675593))))

(assert (= (and d!2282663 c!1368655) b!7365141))

(assert (= (and d!2282663 (not c!1368655)) b!7365142))

(assert (= (and b!7365142 c!1368652) b!7365138))

(assert (= (and b!7365142 (not c!1368652)) b!7365135))

(assert (= (and b!7365135 res!2972718) b!7365134))

(assert (= (and b!7365135 c!1368653) b!7365143))

(assert (= (and b!7365135 (not c!1368653)) b!7365137))

(assert (= (and b!7365137 c!1368654) b!7365133))

(assert (= (and b!7365137 (not c!1368654)) b!7365140))

(assert (= (and b!7365140 c!1368651) b!7365136))

(assert (= (and b!7365140 (not c!1368651)) b!7365139))

(assert (= (or b!7365133 b!7365136) bm!675589))

(assert (= (or b!7365133 b!7365136) bm!675588))

(assert (= (or b!7365143 bm!675588) bm!675591))

(assert (= (or b!7365143 bm!675589) bm!675590))

(assert (= (or b!7365138 b!7365143) bm!675587))

(assert (= (or b!7365138 bm!675591) bm!675592))

(declare-fun m!8021098 () Bool)

(assert (=> bm!675592 m!8021098))

(assert (=> b!7365134 m!8020916))

(assert (=> b!7365141 m!8021004))

(declare-fun m!8021100 () Bool)

(assert (=> bm!675587 m!8021100))

(declare-fun m!8021104 () Bool)

(assert (=> bm!675590 m!8021104))

(assert (=> b!7364922 d!2282663))

(declare-fun b!7365170 () Bool)

(declare-fun e!4409585 () Bool)

(declare-fun tp!2093094 () Bool)

(declare-fun tp!2093095 () Bool)

(assert (=> b!7365170 (= e!4409585 (and tp!2093094 tp!2093095))))

(assert (=> b!7364921 (= tp!2093083 e!4409585)))

(assert (= (and b!7364921 ((_ is Cons!71625) (exprs!8693 cWitness!61))) b!7365170))

(declare-fun b!7365171 () Bool)

(declare-fun e!4409586 () Bool)

(declare-fun tp!2093096 () Bool)

(declare-fun tp!2093097 () Bool)

(assert (=> b!7365171 (= e!4409586 (and tp!2093096 tp!2093097))))

(assert (=> b!7364920 (= tp!2093089 e!4409586)))

(assert (= (and b!7364920 ((_ is Cons!71625) (exprs!8693 ct2!378))) b!7365171))

(declare-fun e!4409591 () Bool)

(assert (=> b!7364914 (= tp!2093084 e!4409591)))

(declare-fun b!7365186 () Bool)

(assert (=> b!7365186 (= e!4409591 tp_is_empty!48751)))

(declare-fun b!7365187 () Bool)

(declare-fun tp!2093113 () Bool)

(declare-fun tp!2093115 () Bool)

(assert (=> b!7365187 (= e!4409591 (and tp!2093113 tp!2093115))))

(declare-fun b!7365189 () Bool)

(declare-fun tp!2093116 () Bool)

(declare-fun tp!2093112 () Bool)

(assert (=> b!7365189 (= e!4409591 (and tp!2093116 tp!2093112))))

(declare-fun b!7365188 () Bool)

(declare-fun tp!2093114 () Bool)

(assert (=> b!7365188 (= e!4409591 tp!2093114)))

(assert (= (and b!7364914 ((_ is ElementMatch!19253) (reg!19582 r1!2370))) b!7365186))

(assert (= (and b!7364914 ((_ is Concat!28098) (reg!19582 r1!2370))) b!7365187))

(assert (= (and b!7364914 ((_ is Star!19253) (reg!19582 r1!2370))) b!7365188))

(assert (= (and b!7364914 ((_ is Union!19253) (reg!19582 r1!2370))) b!7365189))

(declare-fun b!7365193 () Bool)

(declare-fun e!4409593 () Bool)

(declare-fun tp!2093119 () Bool)

(declare-fun tp!2093120 () Bool)

(assert (=> b!7365193 (= e!4409593 (and tp!2093119 tp!2093120))))

(assert (=> b!7364919 (= tp!2093082 e!4409593)))

(assert (= (and b!7364919 ((_ is Cons!71625) (exprs!8693 ct1!282))) b!7365193))

(declare-fun e!4409596 () Bool)

(assert (=> b!7364924 (= tp!2093087 e!4409596)))

(declare-fun b!7365198 () Bool)

(assert (=> b!7365198 (= e!4409596 tp_is_empty!48751)))

(declare-fun b!7365199 () Bool)

(declare-fun tp!2093126 () Bool)

(declare-fun tp!2093128 () Bool)

(assert (=> b!7365199 (= e!4409596 (and tp!2093126 tp!2093128))))

(declare-fun b!7365201 () Bool)

(declare-fun tp!2093129 () Bool)

(declare-fun tp!2093125 () Bool)

(assert (=> b!7365201 (= e!4409596 (and tp!2093129 tp!2093125))))

(declare-fun b!7365200 () Bool)

(declare-fun tp!2093127 () Bool)

(assert (=> b!7365200 (= e!4409596 tp!2093127)))

(assert (= (and b!7364924 ((_ is ElementMatch!19253) (regOne!39019 r1!2370))) b!7365198))

(assert (= (and b!7364924 ((_ is Concat!28098) (regOne!39019 r1!2370))) b!7365199))

(assert (= (and b!7364924 ((_ is Star!19253) (regOne!39019 r1!2370))) b!7365200))

(assert (= (and b!7364924 ((_ is Union!19253) (regOne!39019 r1!2370))) b!7365201))

(declare-fun e!4409597 () Bool)

(assert (=> b!7364924 (= tp!2093086 e!4409597)))

(declare-fun b!7365206 () Bool)

(assert (=> b!7365206 (= e!4409597 tp_is_empty!48751)))

(declare-fun b!7365207 () Bool)

(declare-fun tp!2093137 () Bool)

(declare-fun tp!2093139 () Bool)

(assert (=> b!7365207 (= e!4409597 (and tp!2093137 tp!2093139))))

(declare-fun b!7365209 () Bool)

(declare-fun tp!2093140 () Bool)

(declare-fun tp!2093136 () Bool)

(assert (=> b!7365209 (= e!4409597 (and tp!2093140 tp!2093136))))

(declare-fun b!7365208 () Bool)

(declare-fun tp!2093138 () Bool)

(assert (=> b!7365208 (= e!4409597 tp!2093138)))

(assert (= (and b!7364924 ((_ is ElementMatch!19253) (regTwo!39019 r1!2370))) b!7365206))

(assert (= (and b!7364924 ((_ is Concat!28098) (regTwo!39019 r1!2370))) b!7365207))

(assert (= (and b!7364924 ((_ is Star!19253) (regTwo!39019 r1!2370))) b!7365208))

(assert (= (and b!7364924 ((_ is Union!19253) (regTwo!39019 r1!2370))) b!7365209))

(declare-fun e!4409598 () Bool)

(assert (=> b!7364918 (= tp!2093085 e!4409598)))

(declare-fun b!7365210 () Bool)

(assert (=> b!7365210 (= e!4409598 tp_is_empty!48751)))

(declare-fun b!7365211 () Bool)

(declare-fun tp!2093142 () Bool)

(declare-fun tp!2093144 () Bool)

(assert (=> b!7365211 (= e!4409598 (and tp!2093142 tp!2093144))))

(declare-fun b!7365213 () Bool)

(declare-fun tp!2093145 () Bool)

(declare-fun tp!2093141 () Bool)

(assert (=> b!7365213 (= e!4409598 (and tp!2093145 tp!2093141))))

(declare-fun b!7365212 () Bool)

(declare-fun tp!2093143 () Bool)

(assert (=> b!7365212 (= e!4409598 tp!2093143)))

(assert (= (and b!7364918 ((_ is ElementMatch!19253) (regOne!39018 r1!2370))) b!7365210))

(assert (= (and b!7364918 ((_ is Concat!28098) (regOne!39018 r1!2370))) b!7365211))

(assert (= (and b!7364918 ((_ is Star!19253) (regOne!39018 r1!2370))) b!7365212))

(assert (= (and b!7364918 ((_ is Union!19253) (regOne!39018 r1!2370))) b!7365213))

(declare-fun e!4409599 () Bool)

(assert (=> b!7364918 (= tp!2093088 e!4409599)))

(declare-fun b!7365214 () Bool)

(assert (=> b!7365214 (= e!4409599 tp_is_empty!48751)))

(declare-fun b!7365215 () Bool)

(declare-fun tp!2093147 () Bool)

(declare-fun tp!2093149 () Bool)

(assert (=> b!7365215 (= e!4409599 (and tp!2093147 tp!2093149))))

(declare-fun b!7365217 () Bool)

(declare-fun tp!2093150 () Bool)

(declare-fun tp!2093146 () Bool)

(assert (=> b!7365217 (= e!4409599 (and tp!2093150 tp!2093146))))

(declare-fun b!7365216 () Bool)

(declare-fun tp!2093148 () Bool)

(assert (=> b!7365216 (= e!4409599 tp!2093148)))

(assert (= (and b!7364918 ((_ is ElementMatch!19253) (regTwo!39018 r1!2370))) b!7365214))

(assert (= (and b!7364918 ((_ is Concat!28098) (regTwo!39018 r1!2370))) b!7365215))

(assert (= (and b!7364918 ((_ is Star!19253) (regTwo!39018 r1!2370))) b!7365216))

(assert (= (and b!7364918 ((_ is Union!19253) (regTwo!39018 r1!2370))) b!7365217))

(check-sat (not bm!675590) (not b!7365199) (not b!7365217) (not bm!675580) (not bm!675530) (not b!7365189) (not b!7365201) (not b!7365134) (not b!7365188) (not d!2282651) (not bm!675592) (not b!7365200) (not b!7365171) (not b!7364971) (not bm!675569) (not b!7365065) (not bm!675574) (not b!7365187) (not b!7365215) (not b!7365216) (not d!2282633) (not b!7365213) (not d!2282635) (not b!7365126) (not bm!675572) (not d!2282631) (not b!7365193) (not bm!675566) (not bm!675532) (not bm!675563) (not b!7365093) (not b!7365019) (not d!2282661) (not b!7365127) (not d!2282613) (not b!7365212) (not b!7365020) (not b!7365104) tp_is_empty!48751 (not d!2282617) (not bm!675568) (not b!7365170) (not bm!675587) (not bm!675527) (not b!7365208) (not bm!675578) (not b!7365082) (not bm!675562) (not d!2282655) (not bm!675560) (not b!7365211) (not d!2282647) (not bm!675575) (not b!7365209) (not b!7365207))
(check-sat)
