; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!719804 () Bool)

(assert start!719804)

(declare-fun b!7376953 () Bool)

(declare-fun e!4415981 () Bool)

(declare-fun e!4415984 () Bool)

(assert (=> b!7376953 (= e!4415981 e!4415984)))

(declare-fun res!2975907 () Bool)

(assert (=> b!7376953 (=> (not res!2975907) (not e!4415984))))

(declare-datatypes ((C!38888 0))(
  ( (C!38889 (val!29804 Int)) )
))
(declare-datatypes ((Regex!19307 0))(
  ( (ElementMatch!19307 (c!1371127 C!38888)) (Concat!28152 (regOne!39126 Regex!19307) (regTwo!39126 Regex!19307)) (EmptyExpr!19307) (Star!19307 (reg!19636 Regex!19307)) (EmptyLang!19307) (Union!19307 (regOne!39127 Regex!19307) (regTwo!39127 Regex!19307)) )
))
(declare-datatypes ((List!71803 0))(
  ( (Nil!71679) (Cons!71679 (h!78127 Regex!19307) (t!386284 List!71803)) )
))
(declare-datatypes ((Context!16494 0))(
  ( (Context!16495 (exprs!8747 List!71803)) )
))
(declare-fun cWitness!61 () Context!16494)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2616438 () (InoxSet Context!16494))

(assert (=> b!7376953 (= res!2975907 (select lt!2616438 cWitness!61))))

(declare-fun r1!2370 () Regex!19307)

(declare-fun c!10362 () C!38888)

(declare-fun ct1!282 () Context!16494)

(declare-fun derivationStepZipperDown!3133 (Regex!19307 Context!16494 C!38888) (InoxSet Context!16494))

(assert (=> b!7376953 (= lt!2616438 (derivationStepZipperDown!3133 r1!2370 ct1!282 c!10362))))

(declare-fun b!7376954 () Bool)

(declare-fun e!4415977 () Bool)

(declare-fun e!4415982 () Bool)

(assert (=> b!7376954 (= e!4415977 e!4415982)))

(declare-fun res!2975902 () Bool)

(assert (=> b!7376954 (=> (not res!2975902) (not e!4415982))))

(declare-fun lt!2616437 () Context!16494)

(assert (=> b!7376954 (= res!2975902 (= lt!2616438 (derivationStepZipperDown!3133 (regOne!39126 r1!2370) lt!2616437 c!10362)))))

(declare-fun lt!2616441 () List!71803)

(assert (=> b!7376954 (= lt!2616437 (Context!16495 lt!2616441))))

(declare-fun $colon$colon!3289 (List!71803 Regex!19307) List!71803)

(assert (=> b!7376954 (= lt!2616441 ($colon$colon!3289 (exprs!8747 ct1!282) (regTwo!39126 r1!2370)))))

(declare-fun b!7376955 () Bool)

(declare-fun e!4415980 () Bool)

(declare-fun tp!2097731 () Bool)

(assert (=> b!7376955 (= e!4415980 tp!2097731)))

(declare-fun b!7376956 () Bool)

(declare-fun lt!2616436 () Context!16494)

(declare-fun lt!2616433 () (InoxSet Context!16494))

(assert (=> b!7376956 (= e!4415982 (not (select lt!2616433 lt!2616436)))))

(declare-fun ct2!378 () Context!16494)

(declare-fun lambda!458361 () Int)

(declare-datatypes ((Unit!165563 0))(
  ( (Unit!165564) )
))
(declare-fun lt!2616432 () Unit!165563)

(declare-fun lemmaConcatPreservesForall!1980 (List!71803 List!71803 Int) Unit!165563)

(assert (=> b!7376956 (= lt!2616432 (lemmaConcatPreservesForall!1980 (exprs!8747 cWitness!61) (exprs!8747 ct2!378) lambda!458361))))

(declare-fun ++!17123 (List!71803 List!71803) List!71803)

(assert (=> b!7376956 (select (derivationStepZipperDown!3133 (regOne!39126 r1!2370) (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) c!10362) lt!2616436)))

(assert (=> b!7376956 (= lt!2616436 (Context!16495 (++!17123 (exprs!8747 cWitness!61) (exprs!8747 ct2!378))))))

(declare-fun lt!2616439 () Unit!165563)

(assert (=> b!7376956 (= lt!2616439 (lemmaConcatPreservesForall!1980 lt!2616441 (exprs!8747 ct2!378) lambda!458361))))

(declare-fun lt!2616435 () Unit!165563)

(assert (=> b!7376956 (= lt!2616435 (lemmaConcatPreservesForall!1980 (exprs!8747 cWitness!61) (exprs!8747 ct2!378) lambda!458361))))

(declare-fun lt!2616440 () Unit!165563)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!148 (Regex!19307 Context!16494 Context!16494 Context!16494 C!38888) Unit!165563)

(assert (=> b!7376956 (= lt!2616440 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!148 (regOne!39126 r1!2370) lt!2616437 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7376957 () Bool)

(declare-fun e!4415976 () Bool)

(declare-fun tp_is_empty!48859 () Bool)

(assert (=> b!7376957 (= e!4415976 tp_is_empty!48859)))

(declare-fun b!7376958 () Bool)

(declare-fun res!2975903 () Bool)

(assert (=> b!7376958 (=> (not res!2975903) (not e!4415977))))

(declare-fun e!4415979 () Bool)

(assert (=> b!7376958 (= res!2975903 e!4415979)))

(declare-fun res!2975904 () Bool)

(assert (=> b!7376958 (=> res!2975904 e!4415979)))

(get-info :version)

(assert (=> b!7376958 (= res!2975904 (not ((_ is Concat!28152) r1!2370)))))

(declare-fun b!7376959 () Bool)

(declare-fun tp!2097728 () Bool)

(declare-fun tp!2097735 () Bool)

(assert (=> b!7376959 (= e!4415976 (and tp!2097728 tp!2097735))))

(declare-fun b!7376960 () Bool)

(declare-fun tp!2097733 () Bool)

(declare-fun tp!2097732 () Bool)

(assert (=> b!7376960 (= e!4415976 (and tp!2097733 tp!2097732))))

(declare-fun b!7376962 () Bool)

(declare-fun nullable!8383 (Regex!19307) Bool)

(assert (=> b!7376962 (= e!4415979 (not (nullable!8383 (regOne!39126 r1!2370))))))

(declare-fun b!7376963 () Bool)

(declare-fun tp!2097730 () Bool)

(assert (=> b!7376963 (= e!4415976 tp!2097730)))

(declare-fun b!7376964 () Bool)

(declare-fun e!4415978 () Bool)

(declare-fun tp!2097734 () Bool)

(assert (=> b!7376964 (= e!4415978 tp!2097734)))

(declare-fun b!7376965 () Bool)

(declare-fun res!2975906 () Bool)

(assert (=> b!7376965 (=> (not res!2975906) (not e!4415977))))

(assert (=> b!7376965 (= res!2975906 ((_ is Concat!28152) r1!2370))))

(declare-fun b!7376966 () Bool)

(declare-fun res!2975905 () Bool)

(assert (=> b!7376966 (=> (not res!2975905) (not e!4415977))))

(declare-fun validRegex!9903 (Regex!19307) Bool)

(assert (=> b!7376966 (= res!2975905 (validRegex!9903 (regTwo!39126 r1!2370)))))

(declare-fun b!7376967 () Bool)

(assert (=> b!7376967 (= e!4415984 e!4415977)))

(declare-fun res!2975901 () Bool)

(assert (=> b!7376967 (=> (not res!2975901) (not e!4415977))))

(assert (=> b!7376967 (= res!2975901 (and (or (not ((_ is ElementMatch!19307) r1!2370)) (not (= c!10362 (c!1371127 r1!2370)))) (not ((_ is Union!19307) r1!2370))))))

(assert (=> b!7376967 (= lt!2616433 (derivationStepZipperDown!3133 r1!2370 (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) c!10362))))

(declare-fun lt!2616434 () Unit!165563)

(assert (=> b!7376967 (= lt!2616434 (lemmaConcatPreservesForall!1980 (exprs!8747 ct1!282) (exprs!8747 ct2!378) lambda!458361))))

(declare-fun b!7376961 () Bool)

(declare-fun e!4415983 () Bool)

(declare-fun tp!2097729 () Bool)

(assert (=> b!7376961 (= e!4415983 tp!2097729)))

(declare-fun res!2975908 () Bool)

(assert (=> start!719804 (=> (not res!2975908) (not e!4415981))))

(assert (=> start!719804 (= res!2975908 (validRegex!9903 r1!2370))))

(assert (=> start!719804 e!4415981))

(assert (=> start!719804 tp_is_empty!48859))

(declare-fun inv!91607 (Context!16494) Bool)

(assert (=> start!719804 (and (inv!91607 cWitness!61) e!4415983)))

(assert (=> start!719804 (and (inv!91607 ct1!282) e!4415978)))

(assert (=> start!719804 e!4415976))

(assert (=> start!719804 (and (inv!91607 ct2!378) e!4415980)))

(assert (= (and start!719804 res!2975908) b!7376953))

(assert (= (and b!7376953 res!2975907) b!7376967))

(assert (= (and b!7376967 res!2975901) b!7376958))

(assert (= (and b!7376958 (not res!2975904)) b!7376962))

(assert (= (and b!7376958 res!2975903) b!7376965))

(assert (= (and b!7376965 res!2975906) b!7376966))

(assert (= (and b!7376966 res!2975905) b!7376954))

(assert (= (and b!7376954 res!2975902) b!7376956))

(assert (= start!719804 b!7376961))

(assert (= start!719804 b!7376964))

(assert (= (and start!719804 ((_ is ElementMatch!19307) r1!2370)) b!7376957))

(assert (= (and start!719804 ((_ is Concat!28152) r1!2370)) b!7376959))

(assert (= (and start!719804 ((_ is Star!19307) r1!2370)) b!7376963))

(assert (= (and start!719804 ((_ is Union!19307) r1!2370)) b!7376960))

(assert (= start!719804 b!7376955))

(declare-fun m!8028428 () Bool)

(assert (=> b!7376962 m!8028428))

(declare-fun m!8028430 () Bool)

(assert (=> start!719804 m!8028430))

(declare-fun m!8028432 () Bool)

(assert (=> start!719804 m!8028432))

(declare-fun m!8028434 () Bool)

(assert (=> start!719804 m!8028434))

(declare-fun m!8028436 () Bool)

(assert (=> start!719804 m!8028436))

(declare-fun m!8028438 () Bool)

(assert (=> b!7376953 m!8028438))

(declare-fun m!8028440 () Bool)

(assert (=> b!7376953 m!8028440))

(declare-fun m!8028442 () Bool)

(assert (=> b!7376956 m!8028442))

(declare-fun m!8028444 () Bool)

(assert (=> b!7376956 m!8028444))

(declare-fun m!8028446 () Bool)

(assert (=> b!7376956 m!8028446))

(declare-fun m!8028448 () Bool)

(assert (=> b!7376956 m!8028448))

(declare-fun m!8028450 () Bool)

(assert (=> b!7376956 m!8028450))

(declare-fun m!8028452 () Bool)

(assert (=> b!7376956 m!8028452))

(declare-fun m!8028454 () Bool)

(assert (=> b!7376956 m!8028454))

(assert (=> b!7376956 m!8028442))

(declare-fun m!8028456 () Bool)

(assert (=> b!7376956 m!8028456))

(declare-fun m!8028458 () Bool)

(assert (=> b!7376966 m!8028458))

(declare-fun m!8028460 () Bool)

(assert (=> b!7376967 m!8028460))

(declare-fun m!8028462 () Bool)

(assert (=> b!7376967 m!8028462))

(declare-fun m!8028464 () Bool)

(assert (=> b!7376967 m!8028464))

(declare-fun m!8028466 () Bool)

(assert (=> b!7376954 m!8028466))

(declare-fun m!8028468 () Bool)

(assert (=> b!7376954 m!8028468))

(check-sat (not b!7376964) (not b!7376960) (not b!7376967) (not start!719804) (not b!7376963) (not b!7376955) (not b!7376966) (not b!7376954) (not b!7376962) (not b!7376961) (not b!7376959) (not b!7376956) (not b!7376953) tp_is_empty!48859)
(check-sat)
(get-model)

(declare-fun d!2284760 () Bool)

(declare-fun nullableFct!3360 (Regex!19307) Bool)

(assert (=> d!2284760 (= (nullable!8383 (regOne!39126 r1!2370)) (nullableFct!3360 (regOne!39126 r1!2370)))))

(declare-fun bs!1921312 () Bool)

(assert (= bs!1921312 d!2284760))

(declare-fun m!8028470 () Bool)

(assert (=> bs!1921312 m!8028470))

(assert (=> b!7376962 d!2284760))

(declare-fun b!7377030 () Bool)

(declare-fun e!4416023 () Bool)

(declare-fun e!4416025 () Bool)

(assert (=> b!7377030 (= e!4416023 e!4416025)))

(declare-fun res!2975925 () Bool)

(assert (=> b!7377030 (=> (not res!2975925) (not e!4416025))))

(declare-fun call!678286 () Bool)

(assert (=> b!7377030 (= res!2975925 call!678286)))

(declare-fun b!7377031 () Bool)

(declare-fun e!4416029 () Bool)

(declare-fun call!678288 () Bool)

(assert (=> b!7377031 (= e!4416029 call!678288)))

(declare-fun b!7377032 () Bool)

(declare-fun e!4416024 () Bool)

(declare-fun e!4416026 () Bool)

(assert (=> b!7377032 (= e!4416024 e!4416026)))

(declare-fun c!1371152 () Bool)

(assert (=> b!7377032 (= c!1371152 ((_ is Star!19307) (regTwo!39126 r1!2370)))))

(declare-fun b!7377033 () Bool)

(assert (=> b!7377033 (= e!4416026 e!4416029)))

(declare-fun res!2975923 () Bool)

(assert (=> b!7377033 (= res!2975923 (not (nullable!8383 (reg!19636 (regTwo!39126 r1!2370)))))))

(assert (=> b!7377033 (=> (not res!2975923) (not e!4416029))))

(declare-fun bm!678281 () Bool)

(declare-fun c!1371153 () Bool)

(assert (=> bm!678281 (= call!678288 (validRegex!9903 (ite c!1371152 (reg!19636 (regTwo!39126 r1!2370)) (ite c!1371153 (regOne!39127 (regTwo!39126 r1!2370)) (regTwo!39126 (regTwo!39126 r1!2370))))))))

(declare-fun b!7377034 () Bool)

(declare-fun call!678287 () Bool)

(assert (=> b!7377034 (= e!4416025 call!678287)))

(declare-fun b!7377035 () Bool)

(declare-fun res!2975927 () Bool)

(assert (=> b!7377035 (=> res!2975927 e!4416023)))

(assert (=> b!7377035 (= res!2975927 (not ((_ is Concat!28152) (regTwo!39126 r1!2370))))))

(declare-fun e!4416027 () Bool)

(assert (=> b!7377035 (= e!4416027 e!4416023)))

(declare-fun bm!678282 () Bool)

(assert (=> bm!678282 (= call!678286 (validRegex!9903 (ite c!1371153 (regTwo!39127 (regTwo!39126 r1!2370)) (regOne!39126 (regTwo!39126 r1!2370)))))))

(declare-fun b!7377036 () Bool)

(declare-fun res!2975926 () Bool)

(declare-fun e!4416028 () Bool)

(assert (=> b!7377036 (=> (not res!2975926) (not e!4416028))))

(assert (=> b!7377036 (= res!2975926 call!678287)))

(assert (=> b!7377036 (= e!4416027 e!4416028)))

(declare-fun bm!678283 () Bool)

(assert (=> bm!678283 (= call!678287 call!678288)))

(declare-fun d!2284764 () Bool)

(declare-fun res!2975924 () Bool)

(assert (=> d!2284764 (=> res!2975924 e!4416024)))

(assert (=> d!2284764 (= res!2975924 ((_ is ElementMatch!19307) (regTwo!39126 r1!2370)))))

(assert (=> d!2284764 (= (validRegex!9903 (regTwo!39126 r1!2370)) e!4416024)))

(declare-fun b!7377037 () Bool)

(assert (=> b!7377037 (= e!4416028 call!678286)))

(declare-fun b!7377038 () Bool)

(assert (=> b!7377038 (= e!4416026 e!4416027)))

(assert (=> b!7377038 (= c!1371153 ((_ is Union!19307) (regTwo!39126 r1!2370)))))

(assert (= (and d!2284764 (not res!2975924)) b!7377032))

(assert (= (and b!7377032 c!1371152) b!7377033))

(assert (= (and b!7377032 (not c!1371152)) b!7377038))

(assert (= (and b!7377033 res!2975923) b!7377031))

(assert (= (and b!7377038 c!1371153) b!7377036))

(assert (= (and b!7377038 (not c!1371153)) b!7377035))

(assert (= (and b!7377036 res!2975926) b!7377037))

(assert (= (and b!7377035 (not res!2975927)) b!7377030))

(assert (= (and b!7377030 res!2975925) b!7377034))

(assert (= (or b!7377036 b!7377034) bm!678283))

(assert (= (or b!7377037 b!7377030) bm!678282))

(assert (= (or b!7377031 bm!678283) bm!678281))

(declare-fun m!8028490 () Bool)

(assert (=> b!7377033 m!8028490))

(declare-fun m!8028492 () Bool)

(assert (=> bm!678281 m!8028492))

(declare-fun m!8028494 () Bool)

(assert (=> bm!678282 m!8028494))

(assert (=> b!7376966 d!2284764))

(declare-fun b!7377079 () Bool)

(declare-fun res!2975948 () Bool)

(declare-fun e!4416055 () Bool)

(assert (=> b!7377079 (=> (not res!2975948) (not e!4416055))))

(declare-fun lt!2616450 () List!71803)

(declare-fun size!42154 (List!71803) Int)

(assert (=> b!7377079 (= res!2975948 (= (size!42154 lt!2616450) (+ (size!42154 (exprs!8747 cWitness!61)) (size!42154 (exprs!8747 ct2!378)))))))

(declare-fun b!7377077 () Bool)

(declare-fun e!4416054 () List!71803)

(assert (=> b!7377077 (= e!4416054 (exprs!8747 ct2!378))))

(declare-fun d!2284772 () Bool)

(assert (=> d!2284772 e!4416055))

(declare-fun res!2975949 () Bool)

(assert (=> d!2284772 (=> (not res!2975949) (not e!4416055))))

(declare-fun content!15176 (List!71803) (InoxSet Regex!19307))

(assert (=> d!2284772 (= res!2975949 (= (content!15176 lt!2616450) ((_ map or) (content!15176 (exprs!8747 cWitness!61)) (content!15176 (exprs!8747 ct2!378)))))))

(assert (=> d!2284772 (= lt!2616450 e!4416054)))

(declare-fun c!1371163 () Bool)

(assert (=> d!2284772 (= c!1371163 ((_ is Nil!71679) (exprs!8747 cWitness!61)))))

(assert (=> d!2284772 (= (++!17123 (exprs!8747 cWitness!61) (exprs!8747 ct2!378)) lt!2616450)))

(declare-fun b!7377080 () Bool)

(assert (=> b!7377080 (= e!4416055 (or (not (= (exprs!8747 ct2!378) Nil!71679)) (= lt!2616450 (exprs!8747 cWitness!61))))))

(declare-fun b!7377078 () Bool)

(assert (=> b!7377078 (= e!4416054 (Cons!71679 (h!78127 (exprs!8747 cWitness!61)) (++!17123 (t!386284 (exprs!8747 cWitness!61)) (exprs!8747 ct2!378))))))

(assert (= (and d!2284772 c!1371163) b!7377077))

(assert (= (and d!2284772 (not c!1371163)) b!7377078))

(assert (= (and d!2284772 res!2975949) b!7377079))

(assert (= (and b!7377079 res!2975948) b!7377080))

(declare-fun m!8028516 () Bool)

(assert (=> b!7377079 m!8028516))

(declare-fun m!8028522 () Bool)

(assert (=> b!7377079 m!8028522))

(declare-fun m!8028526 () Bool)

(assert (=> b!7377079 m!8028526))

(declare-fun m!8028528 () Bool)

(assert (=> d!2284772 m!8028528))

(declare-fun m!8028530 () Bool)

(assert (=> d!2284772 m!8028530))

(declare-fun m!8028532 () Bool)

(assert (=> d!2284772 m!8028532))

(declare-fun m!8028534 () Bool)

(assert (=> b!7377078 m!8028534))

(assert (=> b!7376956 d!2284772))

(declare-fun d!2284780 () Bool)

(declare-fun forall!18103 (List!71803 Int) Bool)

(assert (=> d!2284780 (forall!18103 (++!17123 (exprs!8747 cWitness!61) (exprs!8747 ct2!378)) lambda!458361)))

(declare-fun lt!2616456 () Unit!165563)

(declare-fun choose!57333 (List!71803 List!71803 Int) Unit!165563)

(assert (=> d!2284780 (= lt!2616456 (choose!57333 (exprs!8747 cWitness!61) (exprs!8747 ct2!378) lambda!458361))))

(assert (=> d!2284780 (forall!18103 (exprs!8747 cWitness!61) lambda!458361)))

(assert (=> d!2284780 (= (lemmaConcatPreservesForall!1980 (exprs!8747 cWitness!61) (exprs!8747 ct2!378) lambda!458361) lt!2616456)))

(declare-fun bs!1921326 () Bool)

(assert (= bs!1921326 d!2284780))

(assert (=> bs!1921326 m!8028452))

(assert (=> bs!1921326 m!8028452))

(declare-fun m!8028564 () Bool)

(assert (=> bs!1921326 m!8028564))

(declare-fun m!8028566 () Bool)

(assert (=> bs!1921326 m!8028566))

(declare-fun m!8028568 () Bool)

(assert (=> bs!1921326 m!8028568))

(assert (=> b!7376956 d!2284780))

(declare-fun b!7377188 () Bool)

(declare-fun e!4416110 () (InoxSet Context!16494))

(declare-fun call!678325 () (InoxSet Context!16494))

(declare-fun call!678330 () (InoxSet Context!16494))

(assert (=> b!7377188 (= e!4416110 ((_ map or) call!678325 call!678330))))

(declare-fun d!2284794 () Bool)

(declare-fun c!1371193 () Bool)

(assert (=> d!2284794 (= c!1371193 (and ((_ is ElementMatch!19307) (regOne!39126 r1!2370)) (= (c!1371127 (regOne!39126 r1!2370)) c!10362)))))

(declare-fun e!4416111 () (InoxSet Context!16494))

(assert (=> d!2284794 (= (derivationStepZipperDown!3133 (regOne!39126 r1!2370) (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) c!10362) e!4416111)))

(declare-fun b!7377189 () Bool)

(declare-fun c!1371194 () Bool)

(declare-fun e!4416112 () Bool)

(assert (=> b!7377189 (= c!1371194 e!4416112)))

(declare-fun res!2975968 () Bool)

(assert (=> b!7377189 (=> (not res!2975968) (not e!4416112))))

(assert (=> b!7377189 (= res!2975968 ((_ is Concat!28152) (regOne!39126 r1!2370)))))

(declare-fun e!4416113 () (InoxSet Context!16494))

(assert (=> b!7377189 (= e!4416113 e!4416110)))

(declare-fun bm!678320 () Bool)

(declare-fun call!678327 () List!71803)

(declare-fun c!1371192 () Bool)

(assert (=> bm!678320 (= call!678327 ($colon$colon!3289 (exprs!8747 (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378)))) (ite (or c!1371194 c!1371192) (regTwo!39126 (regOne!39126 r1!2370)) (regOne!39126 r1!2370))))))

(declare-fun b!7377190 () Bool)

(declare-fun e!4416114 () (InoxSet Context!16494))

(declare-fun call!678326 () (InoxSet Context!16494))

(assert (=> b!7377190 (= e!4416114 call!678326)))

(declare-fun bm!678321 () Bool)

(declare-fun call!678328 () List!71803)

(assert (=> bm!678321 (= call!678328 call!678327)))

(declare-fun b!7377191 () Bool)

(assert (=> b!7377191 (= e!4416112 (nullable!8383 (regOne!39126 (regOne!39126 r1!2370))))))

(declare-fun call!678329 () (InoxSet Context!16494))

(declare-fun bm!678322 () Bool)

(declare-fun c!1371195 () Bool)

(assert (=> bm!678322 (= call!678329 (derivationStepZipperDown!3133 (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370))))) (ite (or c!1371195 c!1371194) (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) (Context!16495 call!678328)) c!10362))))

(declare-fun b!7377192 () Bool)

(declare-fun c!1371191 () Bool)

(assert (=> b!7377192 (= c!1371191 ((_ is Star!19307) (regOne!39126 r1!2370)))))

(declare-fun e!4416115 () (InoxSet Context!16494))

(assert (=> b!7377192 (= e!4416114 e!4416115)))

(declare-fun b!7377193 () Bool)

(assert (=> b!7377193 (= e!4416110 e!4416114)))

(assert (=> b!7377193 (= c!1371192 ((_ is Concat!28152) (regOne!39126 r1!2370)))))

(declare-fun b!7377194 () Bool)

(assert (=> b!7377194 (= e!4416113 ((_ map or) call!678329 call!678325))))

(declare-fun b!7377195 () Bool)

(assert (=> b!7377195 (= e!4416111 e!4416113)))

(assert (=> b!7377195 (= c!1371195 ((_ is Union!19307) (regOne!39126 r1!2370)))))

(declare-fun bm!678323 () Bool)

(assert (=> bm!678323 (= call!678330 call!678329)))

(declare-fun bm!678324 () Bool)

(assert (=> bm!678324 (= call!678325 (derivationStepZipperDown!3133 (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370))) (ite c!1371195 (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) (Context!16495 call!678327)) c!10362))))

(declare-fun b!7377196 () Bool)

(assert (=> b!7377196 (= e!4416115 call!678326)))

(declare-fun bm!678325 () Bool)

(assert (=> bm!678325 (= call!678326 call!678330)))

(declare-fun b!7377197 () Bool)

(assert (=> b!7377197 (= e!4416111 (store ((as const (Array Context!16494 Bool)) false) (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) true))))

(declare-fun b!7377198 () Bool)

(assert (=> b!7377198 (= e!4416115 ((as const (Array Context!16494 Bool)) false))))

(assert (= (and d!2284794 c!1371193) b!7377197))

(assert (= (and d!2284794 (not c!1371193)) b!7377195))

(assert (= (and b!7377195 c!1371195) b!7377194))

(assert (= (and b!7377195 (not c!1371195)) b!7377189))

(assert (= (and b!7377189 res!2975968) b!7377191))

(assert (= (and b!7377189 c!1371194) b!7377188))

(assert (= (and b!7377189 (not c!1371194)) b!7377193))

(assert (= (and b!7377193 c!1371192) b!7377190))

(assert (= (and b!7377193 (not c!1371192)) b!7377192))

(assert (= (and b!7377192 c!1371191) b!7377196))

(assert (= (and b!7377192 (not c!1371191)) b!7377198))

(assert (= (or b!7377190 b!7377196) bm!678321))

(assert (= (or b!7377190 b!7377196) bm!678325))

(assert (= (or b!7377188 bm!678325) bm!678323))

(assert (= (or b!7377188 bm!678321) bm!678320))

(assert (= (or b!7377194 b!7377188) bm!678324))

(assert (= (or b!7377194 bm!678323) bm!678322))

(declare-fun m!8028618 () Bool)

(assert (=> bm!678320 m!8028618))

(declare-fun m!8028620 () Bool)

(assert (=> b!7377197 m!8028620))

(declare-fun m!8028622 () Bool)

(assert (=> b!7377191 m!8028622))

(declare-fun m!8028624 () Bool)

(assert (=> bm!678324 m!8028624))

(declare-fun m!8028626 () Bool)

(assert (=> bm!678322 m!8028626))

(assert (=> b!7376956 d!2284794))

(declare-fun b!7377201 () Bool)

(declare-fun res!2975969 () Bool)

(declare-fun e!4416117 () Bool)

(assert (=> b!7377201 (=> (not res!2975969) (not e!4416117))))

(declare-fun lt!2616467 () List!71803)

(assert (=> b!7377201 (= res!2975969 (= (size!42154 lt!2616467) (+ (size!42154 lt!2616441) (size!42154 (exprs!8747 ct2!378)))))))

(declare-fun b!7377199 () Bool)

(declare-fun e!4416116 () List!71803)

(assert (=> b!7377199 (= e!4416116 (exprs!8747 ct2!378))))

(declare-fun d!2284806 () Bool)

(assert (=> d!2284806 e!4416117))

(declare-fun res!2975970 () Bool)

(assert (=> d!2284806 (=> (not res!2975970) (not e!4416117))))

(assert (=> d!2284806 (= res!2975970 (= (content!15176 lt!2616467) ((_ map or) (content!15176 lt!2616441) (content!15176 (exprs!8747 ct2!378)))))))

(assert (=> d!2284806 (= lt!2616467 e!4416116)))

(declare-fun c!1371196 () Bool)

(assert (=> d!2284806 (= c!1371196 ((_ is Nil!71679) lt!2616441))))

(assert (=> d!2284806 (= (++!17123 lt!2616441 (exprs!8747 ct2!378)) lt!2616467)))

(declare-fun b!7377202 () Bool)

(assert (=> b!7377202 (= e!4416117 (or (not (= (exprs!8747 ct2!378) Nil!71679)) (= lt!2616467 lt!2616441)))))

(declare-fun b!7377200 () Bool)

(assert (=> b!7377200 (= e!4416116 (Cons!71679 (h!78127 lt!2616441) (++!17123 (t!386284 lt!2616441) (exprs!8747 ct2!378))))))

(assert (= (and d!2284806 c!1371196) b!7377199))

(assert (= (and d!2284806 (not c!1371196)) b!7377200))

(assert (= (and d!2284806 res!2975970) b!7377201))

(assert (= (and b!7377201 res!2975969) b!7377202))

(declare-fun m!8028628 () Bool)

(assert (=> b!7377201 m!8028628))

(declare-fun m!8028630 () Bool)

(assert (=> b!7377201 m!8028630))

(assert (=> b!7377201 m!8028526))

(declare-fun m!8028632 () Bool)

(assert (=> d!2284806 m!8028632))

(declare-fun m!8028634 () Bool)

(assert (=> d!2284806 m!8028634))

(assert (=> d!2284806 m!8028532))

(declare-fun m!8028636 () Bool)

(assert (=> b!7377200 m!8028636))

(assert (=> b!7376956 d!2284806))

(declare-fun bs!1921332 () Bool)

(declare-fun d!2284808 () Bool)

(assert (= bs!1921332 (and d!2284808 b!7376967)))

(declare-fun lambda!458376 () Int)

(assert (=> bs!1921332 (= lambda!458376 lambda!458361)))

(assert (=> d!2284808 (select (derivationStepZipperDown!3133 (regOne!39126 r1!2370) (Context!16495 (++!17123 (exprs!8747 lt!2616437) (exprs!8747 ct2!378))) c!10362) (Context!16495 (++!17123 (exprs!8747 cWitness!61) (exprs!8747 ct2!378))))))

(declare-fun lt!2616476 () Unit!165563)

(assert (=> d!2284808 (= lt!2616476 (lemmaConcatPreservesForall!1980 (exprs!8747 lt!2616437) (exprs!8747 ct2!378) lambda!458376))))

(declare-fun lt!2616475 () Unit!165563)

(assert (=> d!2284808 (= lt!2616475 (lemmaConcatPreservesForall!1980 (exprs!8747 cWitness!61) (exprs!8747 ct2!378) lambda!458376))))

(declare-fun lt!2616474 () Unit!165563)

(declare-fun choose!57334 (Regex!19307 Context!16494 Context!16494 Context!16494 C!38888) Unit!165563)

(assert (=> d!2284808 (= lt!2616474 (choose!57334 (regOne!39126 r1!2370) lt!2616437 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2284808 (validRegex!9903 (regOne!39126 r1!2370))))

(assert (=> d!2284808 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!148 (regOne!39126 r1!2370) lt!2616437 ct2!378 cWitness!61 c!10362) lt!2616474)))

(declare-fun bs!1921333 () Bool)

(assert (= bs!1921333 d!2284808))

(declare-fun m!8028638 () Bool)

(assert (=> bs!1921333 m!8028638))

(declare-fun m!8028640 () Bool)

(assert (=> bs!1921333 m!8028640))

(declare-fun m!8028642 () Bool)

(assert (=> bs!1921333 m!8028642))

(declare-fun m!8028644 () Bool)

(assert (=> bs!1921333 m!8028644))

(declare-fun m!8028646 () Bool)

(assert (=> bs!1921333 m!8028646))

(declare-fun m!8028648 () Bool)

(assert (=> bs!1921333 m!8028648))

(assert (=> bs!1921333 m!8028452))

(declare-fun m!8028650 () Bool)

(assert (=> bs!1921333 m!8028650))

(assert (=> b!7376956 d!2284808))

(declare-fun d!2284810 () Bool)

(assert (=> d!2284810 (forall!18103 (++!17123 lt!2616441 (exprs!8747 ct2!378)) lambda!458361)))

(declare-fun lt!2616477 () Unit!165563)

(assert (=> d!2284810 (= lt!2616477 (choose!57333 lt!2616441 (exprs!8747 ct2!378) lambda!458361))))

(assert (=> d!2284810 (forall!18103 lt!2616441 lambda!458361)))

(assert (=> d!2284810 (= (lemmaConcatPreservesForall!1980 lt!2616441 (exprs!8747 ct2!378) lambda!458361) lt!2616477)))

(declare-fun bs!1921334 () Bool)

(assert (= bs!1921334 d!2284810))

(assert (=> bs!1921334 m!8028446))

(assert (=> bs!1921334 m!8028446))

(declare-fun m!8028652 () Bool)

(assert (=> bs!1921334 m!8028652))

(declare-fun m!8028654 () Bool)

(assert (=> bs!1921334 m!8028654))

(declare-fun m!8028656 () Bool)

(assert (=> bs!1921334 m!8028656))

(assert (=> b!7376956 d!2284810))

(declare-fun b!7377203 () Bool)

(declare-fun e!4416118 () (InoxSet Context!16494))

(declare-fun call!678331 () (InoxSet Context!16494))

(declare-fun call!678336 () (InoxSet Context!16494))

(assert (=> b!7377203 (= e!4416118 ((_ map or) call!678331 call!678336))))

(declare-fun d!2284812 () Bool)

(declare-fun c!1371200 () Bool)

(assert (=> d!2284812 (= c!1371200 (and ((_ is ElementMatch!19307) r1!2370) (= (c!1371127 r1!2370) c!10362)))))

(declare-fun e!4416119 () (InoxSet Context!16494))

(assert (=> d!2284812 (= (derivationStepZipperDown!3133 r1!2370 (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) c!10362) e!4416119)))

(declare-fun b!7377204 () Bool)

(declare-fun c!1371201 () Bool)

(declare-fun e!4416120 () Bool)

(assert (=> b!7377204 (= c!1371201 e!4416120)))

(declare-fun res!2975971 () Bool)

(assert (=> b!7377204 (=> (not res!2975971) (not e!4416120))))

(assert (=> b!7377204 (= res!2975971 ((_ is Concat!28152) r1!2370))))

(declare-fun e!4416121 () (InoxSet Context!16494))

(assert (=> b!7377204 (= e!4416121 e!4416118)))

(declare-fun c!1371199 () Bool)

(declare-fun call!678333 () List!71803)

(declare-fun bm!678326 () Bool)

(assert (=> bm!678326 (= call!678333 ($colon$colon!3289 (exprs!8747 (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378)))) (ite (or c!1371201 c!1371199) (regTwo!39126 r1!2370) r1!2370)))))

(declare-fun b!7377205 () Bool)

(declare-fun e!4416122 () (InoxSet Context!16494))

(declare-fun call!678332 () (InoxSet Context!16494))

(assert (=> b!7377205 (= e!4416122 call!678332)))

(declare-fun bm!678327 () Bool)

(declare-fun call!678334 () List!71803)

(assert (=> bm!678327 (= call!678334 call!678333)))

(declare-fun b!7377206 () Bool)

(assert (=> b!7377206 (= e!4416120 (nullable!8383 (regOne!39126 r1!2370)))))

(declare-fun c!1371202 () Bool)

(declare-fun bm!678328 () Bool)

(declare-fun call!678335 () (InoxSet Context!16494))

(assert (=> bm!678328 (= call!678335 (derivationStepZipperDown!3133 (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370)))) (ite (or c!1371202 c!1371201) (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) (Context!16495 call!678334)) c!10362))))

(declare-fun b!7377207 () Bool)

(declare-fun c!1371198 () Bool)

(assert (=> b!7377207 (= c!1371198 ((_ is Star!19307) r1!2370))))

(declare-fun e!4416123 () (InoxSet Context!16494))

(assert (=> b!7377207 (= e!4416122 e!4416123)))

(declare-fun b!7377208 () Bool)

(assert (=> b!7377208 (= e!4416118 e!4416122)))

(assert (=> b!7377208 (= c!1371199 ((_ is Concat!28152) r1!2370))))

(declare-fun b!7377209 () Bool)

(assert (=> b!7377209 (= e!4416121 ((_ map or) call!678335 call!678331))))

(declare-fun b!7377210 () Bool)

(assert (=> b!7377210 (= e!4416119 e!4416121)))

(assert (=> b!7377210 (= c!1371202 ((_ is Union!19307) r1!2370))))

(declare-fun bm!678329 () Bool)

(assert (=> bm!678329 (= call!678336 call!678335)))

(declare-fun bm!678330 () Bool)

(assert (=> bm!678330 (= call!678331 (derivationStepZipperDown!3133 (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)) (ite c!1371202 (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) (Context!16495 call!678333)) c!10362))))

(declare-fun b!7377211 () Bool)

(assert (=> b!7377211 (= e!4416123 call!678332)))

(declare-fun bm!678331 () Bool)

(assert (=> bm!678331 (= call!678332 call!678336)))

(declare-fun b!7377212 () Bool)

(assert (=> b!7377212 (= e!4416119 (store ((as const (Array Context!16494 Bool)) false) (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) true))))

(declare-fun b!7377213 () Bool)

(assert (=> b!7377213 (= e!4416123 ((as const (Array Context!16494 Bool)) false))))

(assert (= (and d!2284812 c!1371200) b!7377212))

(assert (= (and d!2284812 (not c!1371200)) b!7377210))

(assert (= (and b!7377210 c!1371202) b!7377209))

(assert (= (and b!7377210 (not c!1371202)) b!7377204))

(assert (= (and b!7377204 res!2975971) b!7377206))

(assert (= (and b!7377204 c!1371201) b!7377203))

(assert (= (and b!7377204 (not c!1371201)) b!7377208))

(assert (= (and b!7377208 c!1371199) b!7377205))

(assert (= (and b!7377208 (not c!1371199)) b!7377207))

(assert (= (and b!7377207 c!1371198) b!7377211))

(assert (= (and b!7377207 (not c!1371198)) b!7377213))

(assert (= (or b!7377205 b!7377211) bm!678327))

(assert (= (or b!7377205 b!7377211) bm!678331))

(assert (= (or b!7377203 bm!678331) bm!678329))

(assert (= (or b!7377203 bm!678327) bm!678326))

(assert (= (or b!7377209 b!7377203) bm!678330))

(assert (= (or b!7377209 bm!678329) bm!678328))

(declare-fun m!8028658 () Bool)

(assert (=> bm!678326 m!8028658))

(declare-fun m!8028660 () Bool)

(assert (=> b!7377212 m!8028660))

(assert (=> b!7377206 m!8028428))

(declare-fun m!8028662 () Bool)

(assert (=> bm!678330 m!8028662))

(declare-fun m!8028664 () Bool)

(assert (=> bm!678328 m!8028664))

(assert (=> b!7376967 d!2284812))

(declare-fun b!7377216 () Bool)

(declare-fun res!2975972 () Bool)

(declare-fun e!4416125 () Bool)

(assert (=> b!7377216 (=> (not res!2975972) (not e!4416125))))

(declare-fun lt!2616478 () List!71803)

(assert (=> b!7377216 (= res!2975972 (= (size!42154 lt!2616478) (+ (size!42154 (exprs!8747 ct1!282)) (size!42154 (exprs!8747 ct2!378)))))))

(declare-fun b!7377214 () Bool)

(declare-fun e!4416124 () List!71803)

(assert (=> b!7377214 (= e!4416124 (exprs!8747 ct2!378))))

(declare-fun d!2284814 () Bool)

(assert (=> d!2284814 e!4416125))

(declare-fun res!2975973 () Bool)

(assert (=> d!2284814 (=> (not res!2975973) (not e!4416125))))

(assert (=> d!2284814 (= res!2975973 (= (content!15176 lt!2616478) ((_ map or) (content!15176 (exprs!8747 ct1!282)) (content!15176 (exprs!8747 ct2!378)))))))

(assert (=> d!2284814 (= lt!2616478 e!4416124)))

(declare-fun c!1371203 () Bool)

(assert (=> d!2284814 (= c!1371203 ((_ is Nil!71679) (exprs!8747 ct1!282)))))

(assert (=> d!2284814 (= (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378)) lt!2616478)))

(declare-fun b!7377217 () Bool)

(assert (=> b!7377217 (= e!4416125 (or (not (= (exprs!8747 ct2!378) Nil!71679)) (= lt!2616478 (exprs!8747 ct1!282))))))

(declare-fun b!7377215 () Bool)

(assert (=> b!7377215 (= e!4416124 (Cons!71679 (h!78127 (exprs!8747 ct1!282)) (++!17123 (t!386284 (exprs!8747 ct1!282)) (exprs!8747 ct2!378))))))

(assert (= (and d!2284814 c!1371203) b!7377214))

(assert (= (and d!2284814 (not c!1371203)) b!7377215))

(assert (= (and d!2284814 res!2975973) b!7377216))

(assert (= (and b!7377216 res!2975972) b!7377217))

(declare-fun m!8028666 () Bool)

(assert (=> b!7377216 m!8028666))

(declare-fun m!8028668 () Bool)

(assert (=> b!7377216 m!8028668))

(assert (=> b!7377216 m!8028526))

(declare-fun m!8028670 () Bool)

(assert (=> d!2284814 m!8028670))

(declare-fun m!8028672 () Bool)

(assert (=> d!2284814 m!8028672))

(assert (=> d!2284814 m!8028532))

(declare-fun m!8028674 () Bool)

(assert (=> b!7377215 m!8028674))

(assert (=> b!7376967 d!2284814))

(declare-fun d!2284816 () Bool)

(assert (=> d!2284816 (forall!18103 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378)) lambda!458361)))

(declare-fun lt!2616479 () Unit!165563)

(assert (=> d!2284816 (= lt!2616479 (choose!57333 (exprs!8747 ct1!282) (exprs!8747 ct2!378) lambda!458361))))

(assert (=> d!2284816 (forall!18103 (exprs!8747 ct1!282) lambda!458361)))

(assert (=> d!2284816 (= (lemmaConcatPreservesForall!1980 (exprs!8747 ct1!282) (exprs!8747 ct2!378) lambda!458361) lt!2616479)))

(declare-fun bs!1921335 () Bool)

(assert (= bs!1921335 d!2284816))

(assert (=> bs!1921335 m!8028460))

(assert (=> bs!1921335 m!8028460))

(declare-fun m!8028676 () Bool)

(assert (=> bs!1921335 m!8028676))

(declare-fun m!8028678 () Bool)

(assert (=> bs!1921335 m!8028678))

(declare-fun m!8028680 () Bool)

(assert (=> bs!1921335 m!8028680))

(assert (=> b!7376967 d!2284816))

(declare-fun b!7377218 () Bool)

(declare-fun e!4416126 () (InoxSet Context!16494))

(declare-fun call!678337 () (InoxSet Context!16494))

(declare-fun call!678342 () (InoxSet Context!16494))

(assert (=> b!7377218 (= e!4416126 ((_ map or) call!678337 call!678342))))

(declare-fun d!2284818 () Bool)

(declare-fun c!1371206 () Bool)

(assert (=> d!2284818 (= c!1371206 (and ((_ is ElementMatch!19307) (regOne!39126 r1!2370)) (= (c!1371127 (regOne!39126 r1!2370)) c!10362)))))

(declare-fun e!4416127 () (InoxSet Context!16494))

(assert (=> d!2284818 (= (derivationStepZipperDown!3133 (regOne!39126 r1!2370) lt!2616437 c!10362) e!4416127)))

(declare-fun b!7377219 () Bool)

(declare-fun c!1371207 () Bool)

(declare-fun e!4416128 () Bool)

(assert (=> b!7377219 (= c!1371207 e!4416128)))

(declare-fun res!2975974 () Bool)

(assert (=> b!7377219 (=> (not res!2975974) (not e!4416128))))

(assert (=> b!7377219 (= res!2975974 ((_ is Concat!28152) (regOne!39126 r1!2370)))))

(declare-fun e!4416129 () (InoxSet Context!16494))

(assert (=> b!7377219 (= e!4416129 e!4416126)))

(declare-fun call!678339 () List!71803)

(declare-fun c!1371205 () Bool)

(declare-fun bm!678332 () Bool)

(assert (=> bm!678332 (= call!678339 ($colon$colon!3289 (exprs!8747 lt!2616437) (ite (or c!1371207 c!1371205) (regTwo!39126 (regOne!39126 r1!2370)) (regOne!39126 r1!2370))))))

(declare-fun b!7377220 () Bool)

(declare-fun e!4416130 () (InoxSet Context!16494))

(declare-fun call!678338 () (InoxSet Context!16494))

(assert (=> b!7377220 (= e!4416130 call!678338)))

(declare-fun bm!678333 () Bool)

(declare-fun call!678340 () List!71803)

(assert (=> bm!678333 (= call!678340 call!678339)))

(declare-fun b!7377221 () Bool)

(assert (=> b!7377221 (= e!4416128 (nullable!8383 (regOne!39126 (regOne!39126 r1!2370))))))

(declare-fun call!678341 () (InoxSet Context!16494))

(declare-fun bm!678334 () Bool)

(declare-fun c!1371208 () Bool)

(assert (=> bm!678334 (= call!678341 (derivationStepZipperDown!3133 (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370))))) (ite (or c!1371208 c!1371207) lt!2616437 (Context!16495 call!678340)) c!10362))))

(declare-fun b!7377222 () Bool)

(declare-fun c!1371204 () Bool)

(assert (=> b!7377222 (= c!1371204 ((_ is Star!19307) (regOne!39126 r1!2370)))))

(declare-fun e!4416131 () (InoxSet Context!16494))

(assert (=> b!7377222 (= e!4416130 e!4416131)))

(declare-fun b!7377223 () Bool)

(assert (=> b!7377223 (= e!4416126 e!4416130)))

(assert (=> b!7377223 (= c!1371205 ((_ is Concat!28152) (regOne!39126 r1!2370)))))

(declare-fun b!7377224 () Bool)

(assert (=> b!7377224 (= e!4416129 ((_ map or) call!678341 call!678337))))

(declare-fun b!7377225 () Bool)

(assert (=> b!7377225 (= e!4416127 e!4416129)))

(assert (=> b!7377225 (= c!1371208 ((_ is Union!19307) (regOne!39126 r1!2370)))))

(declare-fun bm!678335 () Bool)

(assert (=> bm!678335 (= call!678342 call!678341)))

(declare-fun bm!678336 () Bool)

(assert (=> bm!678336 (= call!678337 (derivationStepZipperDown!3133 (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370))) (ite c!1371208 lt!2616437 (Context!16495 call!678339)) c!10362))))

(declare-fun b!7377226 () Bool)

(assert (=> b!7377226 (= e!4416131 call!678338)))

(declare-fun bm!678337 () Bool)

(assert (=> bm!678337 (= call!678338 call!678342)))

(declare-fun b!7377227 () Bool)

(assert (=> b!7377227 (= e!4416127 (store ((as const (Array Context!16494 Bool)) false) lt!2616437 true))))

(declare-fun b!7377228 () Bool)

(assert (=> b!7377228 (= e!4416131 ((as const (Array Context!16494 Bool)) false))))

(assert (= (and d!2284818 c!1371206) b!7377227))

(assert (= (and d!2284818 (not c!1371206)) b!7377225))

(assert (= (and b!7377225 c!1371208) b!7377224))

(assert (= (and b!7377225 (not c!1371208)) b!7377219))

(assert (= (and b!7377219 res!2975974) b!7377221))

(assert (= (and b!7377219 c!1371207) b!7377218))

(assert (= (and b!7377219 (not c!1371207)) b!7377223))

(assert (= (and b!7377223 c!1371205) b!7377220))

(assert (= (and b!7377223 (not c!1371205)) b!7377222))

(assert (= (and b!7377222 c!1371204) b!7377226))

(assert (= (and b!7377222 (not c!1371204)) b!7377228))

(assert (= (or b!7377220 b!7377226) bm!678333))

(assert (= (or b!7377220 b!7377226) bm!678337))

(assert (= (or b!7377218 bm!678337) bm!678335))

(assert (= (or b!7377218 bm!678333) bm!678332))

(assert (= (or b!7377224 b!7377218) bm!678336))

(assert (= (or b!7377224 bm!678335) bm!678334))

(declare-fun m!8028682 () Bool)

(assert (=> bm!678332 m!8028682))

(declare-fun m!8028684 () Bool)

(assert (=> b!7377227 m!8028684))

(assert (=> b!7377221 m!8028622))

(declare-fun m!8028686 () Bool)

(assert (=> bm!678336 m!8028686))

(declare-fun m!8028688 () Bool)

(assert (=> bm!678334 m!8028688))

(assert (=> b!7376954 d!2284818))

(declare-fun d!2284820 () Bool)

(assert (=> d!2284820 (= ($colon$colon!3289 (exprs!8747 ct1!282) (regTwo!39126 r1!2370)) (Cons!71679 (regTwo!39126 r1!2370) (exprs!8747 ct1!282)))))

(assert (=> b!7376954 d!2284820))

(declare-fun b!7377229 () Bool)

(declare-fun e!4416132 () Bool)

(declare-fun e!4416134 () Bool)

(assert (=> b!7377229 (= e!4416132 e!4416134)))

(declare-fun res!2975977 () Bool)

(assert (=> b!7377229 (=> (not res!2975977) (not e!4416134))))

(declare-fun call!678343 () Bool)

(assert (=> b!7377229 (= res!2975977 call!678343)))

(declare-fun b!7377230 () Bool)

(declare-fun e!4416138 () Bool)

(declare-fun call!678345 () Bool)

(assert (=> b!7377230 (= e!4416138 call!678345)))

(declare-fun b!7377231 () Bool)

(declare-fun e!4416133 () Bool)

(declare-fun e!4416135 () Bool)

(assert (=> b!7377231 (= e!4416133 e!4416135)))

(declare-fun c!1371209 () Bool)

(assert (=> b!7377231 (= c!1371209 ((_ is Star!19307) r1!2370))))

(declare-fun b!7377232 () Bool)

(assert (=> b!7377232 (= e!4416135 e!4416138)))

(declare-fun res!2975975 () Bool)

(assert (=> b!7377232 (= res!2975975 (not (nullable!8383 (reg!19636 r1!2370))))))

(assert (=> b!7377232 (=> (not res!2975975) (not e!4416138))))

(declare-fun bm!678338 () Bool)

(declare-fun c!1371210 () Bool)

(assert (=> bm!678338 (= call!678345 (validRegex!9903 (ite c!1371209 (reg!19636 r1!2370) (ite c!1371210 (regOne!39127 r1!2370) (regTwo!39126 r1!2370)))))))

(declare-fun b!7377233 () Bool)

(declare-fun call!678344 () Bool)

(assert (=> b!7377233 (= e!4416134 call!678344)))

(declare-fun b!7377234 () Bool)

(declare-fun res!2975979 () Bool)

(assert (=> b!7377234 (=> res!2975979 e!4416132)))

(assert (=> b!7377234 (= res!2975979 (not ((_ is Concat!28152) r1!2370)))))

(declare-fun e!4416136 () Bool)

(assert (=> b!7377234 (= e!4416136 e!4416132)))

(declare-fun bm!678339 () Bool)

(assert (=> bm!678339 (= call!678343 (validRegex!9903 (ite c!1371210 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))

(declare-fun b!7377235 () Bool)

(declare-fun res!2975978 () Bool)

(declare-fun e!4416137 () Bool)

(assert (=> b!7377235 (=> (not res!2975978) (not e!4416137))))

(assert (=> b!7377235 (= res!2975978 call!678344)))

(assert (=> b!7377235 (= e!4416136 e!4416137)))

(declare-fun bm!678340 () Bool)

(assert (=> bm!678340 (= call!678344 call!678345)))

(declare-fun d!2284822 () Bool)

(declare-fun res!2975976 () Bool)

(assert (=> d!2284822 (=> res!2975976 e!4416133)))

(assert (=> d!2284822 (= res!2975976 ((_ is ElementMatch!19307) r1!2370))))

(assert (=> d!2284822 (= (validRegex!9903 r1!2370) e!4416133)))

(declare-fun b!7377236 () Bool)

(assert (=> b!7377236 (= e!4416137 call!678343)))

(declare-fun b!7377237 () Bool)

(assert (=> b!7377237 (= e!4416135 e!4416136)))

(assert (=> b!7377237 (= c!1371210 ((_ is Union!19307) r1!2370))))

(assert (= (and d!2284822 (not res!2975976)) b!7377231))

(assert (= (and b!7377231 c!1371209) b!7377232))

(assert (= (and b!7377231 (not c!1371209)) b!7377237))

(assert (= (and b!7377232 res!2975975) b!7377230))

(assert (= (and b!7377237 c!1371210) b!7377235))

(assert (= (and b!7377237 (not c!1371210)) b!7377234))

(assert (= (and b!7377235 res!2975978) b!7377236))

(assert (= (and b!7377234 (not res!2975979)) b!7377229))

(assert (= (and b!7377229 res!2975977) b!7377233))

(assert (= (or b!7377235 b!7377233) bm!678340))

(assert (= (or b!7377236 b!7377229) bm!678339))

(assert (= (or b!7377230 bm!678340) bm!678338))

(declare-fun m!8028690 () Bool)

(assert (=> b!7377232 m!8028690))

(declare-fun m!8028692 () Bool)

(assert (=> bm!678338 m!8028692))

(declare-fun m!8028694 () Bool)

(assert (=> bm!678339 m!8028694))

(assert (=> start!719804 d!2284822))

(declare-fun bs!1921336 () Bool)

(declare-fun d!2284824 () Bool)

(assert (= bs!1921336 (and d!2284824 b!7376967)))

(declare-fun lambda!458379 () Int)

(assert (=> bs!1921336 (= lambda!458379 lambda!458361)))

(declare-fun bs!1921337 () Bool)

(assert (= bs!1921337 (and d!2284824 d!2284808)))

(assert (=> bs!1921337 (= lambda!458379 lambda!458376)))

(assert (=> d!2284824 (= (inv!91607 cWitness!61) (forall!18103 (exprs!8747 cWitness!61) lambda!458379))))

(declare-fun bs!1921338 () Bool)

(assert (= bs!1921338 d!2284824))

(declare-fun m!8028696 () Bool)

(assert (=> bs!1921338 m!8028696))

(assert (=> start!719804 d!2284824))

(declare-fun bs!1921339 () Bool)

(declare-fun d!2284826 () Bool)

(assert (= bs!1921339 (and d!2284826 b!7376967)))

(declare-fun lambda!458380 () Int)

(assert (=> bs!1921339 (= lambda!458380 lambda!458361)))

(declare-fun bs!1921340 () Bool)

(assert (= bs!1921340 (and d!2284826 d!2284808)))

(assert (=> bs!1921340 (= lambda!458380 lambda!458376)))

(declare-fun bs!1921341 () Bool)

(assert (= bs!1921341 (and d!2284826 d!2284824)))

(assert (=> bs!1921341 (= lambda!458380 lambda!458379)))

(assert (=> d!2284826 (= (inv!91607 ct1!282) (forall!18103 (exprs!8747 ct1!282) lambda!458380))))

(declare-fun bs!1921342 () Bool)

(assert (= bs!1921342 d!2284826))

(declare-fun m!8028698 () Bool)

(assert (=> bs!1921342 m!8028698))

(assert (=> start!719804 d!2284826))

(declare-fun bs!1921343 () Bool)

(declare-fun d!2284828 () Bool)

(assert (= bs!1921343 (and d!2284828 b!7376967)))

(declare-fun lambda!458381 () Int)

(assert (=> bs!1921343 (= lambda!458381 lambda!458361)))

(declare-fun bs!1921344 () Bool)

(assert (= bs!1921344 (and d!2284828 d!2284808)))

(assert (=> bs!1921344 (= lambda!458381 lambda!458376)))

(declare-fun bs!1921345 () Bool)

(assert (= bs!1921345 (and d!2284828 d!2284824)))

(assert (=> bs!1921345 (= lambda!458381 lambda!458379)))

(declare-fun bs!1921346 () Bool)

(assert (= bs!1921346 (and d!2284828 d!2284826)))

(assert (=> bs!1921346 (= lambda!458381 lambda!458380)))

(assert (=> d!2284828 (= (inv!91607 ct2!378) (forall!18103 (exprs!8747 ct2!378) lambda!458381))))

(declare-fun bs!1921347 () Bool)

(assert (= bs!1921347 d!2284828))

(declare-fun m!8028700 () Bool)

(assert (=> bs!1921347 m!8028700))

(assert (=> start!719804 d!2284828))

(declare-fun b!7377238 () Bool)

(declare-fun e!4416139 () (InoxSet Context!16494))

(declare-fun call!678346 () (InoxSet Context!16494))

(declare-fun call!678351 () (InoxSet Context!16494))

(assert (=> b!7377238 (= e!4416139 ((_ map or) call!678346 call!678351))))

(declare-fun d!2284830 () Bool)

(declare-fun c!1371213 () Bool)

(assert (=> d!2284830 (= c!1371213 (and ((_ is ElementMatch!19307) r1!2370) (= (c!1371127 r1!2370) c!10362)))))

(declare-fun e!4416140 () (InoxSet Context!16494))

(assert (=> d!2284830 (= (derivationStepZipperDown!3133 r1!2370 ct1!282 c!10362) e!4416140)))

(declare-fun b!7377239 () Bool)

(declare-fun c!1371214 () Bool)

(declare-fun e!4416141 () Bool)

(assert (=> b!7377239 (= c!1371214 e!4416141)))

(declare-fun res!2975980 () Bool)

(assert (=> b!7377239 (=> (not res!2975980) (not e!4416141))))

(assert (=> b!7377239 (= res!2975980 ((_ is Concat!28152) r1!2370))))

(declare-fun e!4416142 () (InoxSet Context!16494))

(assert (=> b!7377239 (= e!4416142 e!4416139)))

(declare-fun bm!678341 () Bool)

(declare-fun call!678348 () List!71803)

(declare-fun c!1371212 () Bool)

(assert (=> bm!678341 (= call!678348 ($colon$colon!3289 (exprs!8747 ct1!282) (ite (or c!1371214 c!1371212) (regTwo!39126 r1!2370) r1!2370)))))

(declare-fun b!7377240 () Bool)

(declare-fun e!4416143 () (InoxSet Context!16494))

(declare-fun call!678347 () (InoxSet Context!16494))

(assert (=> b!7377240 (= e!4416143 call!678347)))

(declare-fun bm!678342 () Bool)

(declare-fun call!678349 () List!71803)

(assert (=> bm!678342 (= call!678349 call!678348)))

(declare-fun b!7377241 () Bool)

(assert (=> b!7377241 (= e!4416141 (nullable!8383 (regOne!39126 r1!2370)))))

(declare-fun bm!678343 () Bool)

(declare-fun c!1371215 () Bool)

(declare-fun call!678350 () (InoxSet Context!16494))

(assert (=> bm!678343 (= call!678350 (derivationStepZipperDown!3133 (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370)))) (ite (or c!1371215 c!1371214) ct1!282 (Context!16495 call!678349)) c!10362))))

(declare-fun b!7377242 () Bool)

(declare-fun c!1371211 () Bool)

(assert (=> b!7377242 (= c!1371211 ((_ is Star!19307) r1!2370))))

(declare-fun e!4416144 () (InoxSet Context!16494))

(assert (=> b!7377242 (= e!4416143 e!4416144)))

(declare-fun b!7377243 () Bool)

(assert (=> b!7377243 (= e!4416139 e!4416143)))

(assert (=> b!7377243 (= c!1371212 ((_ is Concat!28152) r1!2370))))

(declare-fun b!7377244 () Bool)

(assert (=> b!7377244 (= e!4416142 ((_ map or) call!678350 call!678346))))

(declare-fun b!7377245 () Bool)

(assert (=> b!7377245 (= e!4416140 e!4416142)))

(assert (=> b!7377245 (= c!1371215 ((_ is Union!19307) r1!2370))))

(declare-fun bm!678344 () Bool)

(assert (=> bm!678344 (= call!678351 call!678350)))

(declare-fun bm!678345 () Bool)

(assert (=> bm!678345 (= call!678346 (derivationStepZipperDown!3133 (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)) (ite c!1371215 ct1!282 (Context!16495 call!678348)) c!10362))))

(declare-fun b!7377246 () Bool)

(assert (=> b!7377246 (= e!4416144 call!678347)))

(declare-fun bm!678346 () Bool)

(assert (=> bm!678346 (= call!678347 call!678351)))

(declare-fun b!7377247 () Bool)

(assert (=> b!7377247 (= e!4416140 (store ((as const (Array Context!16494 Bool)) false) ct1!282 true))))

(declare-fun b!7377248 () Bool)

(assert (=> b!7377248 (= e!4416144 ((as const (Array Context!16494 Bool)) false))))

(assert (= (and d!2284830 c!1371213) b!7377247))

(assert (= (and d!2284830 (not c!1371213)) b!7377245))

(assert (= (and b!7377245 c!1371215) b!7377244))

(assert (= (and b!7377245 (not c!1371215)) b!7377239))

(assert (= (and b!7377239 res!2975980) b!7377241))

(assert (= (and b!7377239 c!1371214) b!7377238))

(assert (= (and b!7377239 (not c!1371214)) b!7377243))

(assert (= (and b!7377243 c!1371212) b!7377240))

(assert (= (and b!7377243 (not c!1371212)) b!7377242))

(assert (= (and b!7377242 c!1371211) b!7377246))

(assert (= (and b!7377242 (not c!1371211)) b!7377248))

(assert (= (or b!7377240 b!7377246) bm!678342))

(assert (= (or b!7377240 b!7377246) bm!678346))

(assert (= (or b!7377238 bm!678346) bm!678344))

(assert (= (or b!7377238 bm!678342) bm!678341))

(assert (= (or b!7377244 b!7377238) bm!678345))

(assert (= (or b!7377244 bm!678344) bm!678343))

(declare-fun m!8028702 () Bool)

(assert (=> bm!678341 m!8028702))

(declare-fun m!8028704 () Bool)

(assert (=> b!7377247 m!8028704))

(assert (=> b!7377241 m!8028428))

(declare-fun m!8028706 () Bool)

(assert (=> bm!678345 m!8028706))

(declare-fun m!8028708 () Bool)

(assert (=> bm!678343 m!8028708))

(assert (=> b!7376953 d!2284830))

(declare-fun b!7377260 () Bool)

(declare-fun e!4416147 () Bool)

(declare-fun tp!2097794 () Bool)

(declare-fun tp!2097792 () Bool)

(assert (=> b!7377260 (= e!4416147 (and tp!2097794 tp!2097792))))

(assert (=> b!7376963 (= tp!2097730 e!4416147)))

(declare-fun b!7377262 () Bool)

(declare-fun tp!2097795 () Bool)

(declare-fun tp!2097793 () Bool)

(assert (=> b!7377262 (= e!4416147 (and tp!2097795 tp!2097793))))

(declare-fun b!7377261 () Bool)

(declare-fun tp!2097791 () Bool)

(assert (=> b!7377261 (= e!4416147 tp!2097791)))

(declare-fun b!7377259 () Bool)

(assert (=> b!7377259 (= e!4416147 tp_is_empty!48859)))

(assert (= (and b!7376963 ((_ is ElementMatch!19307) (reg!19636 r1!2370))) b!7377259))

(assert (= (and b!7376963 ((_ is Concat!28152) (reg!19636 r1!2370))) b!7377260))

(assert (= (and b!7376963 ((_ is Star!19307) (reg!19636 r1!2370))) b!7377261))

(assert (= (and b!7376963 ((_ is Union!19307) (reg!19636 r1!2370))) b!7377262))

(declare-fun b!7377267 () Bool)

(declare-fun e!4416150 () Bool)

(declare-fun tp!2097800 () Bool)

(declare-fun tp!2097801 () Bool)

(assert (=> b!7377267 (= e!4416150 (and tp!2097800 tp!2097801))))

(assert (=> b!7376961 (= tp!2097729 e!4416150)))

(assert (= (and b!7376961 ((_ is Cons!71679) (exprs!8747 cWitness!61))) b!7377267))

(declare-fun b!7377269 () Bool)

(declare-fun e!4416151 () Bool)

(declare-fun tp!2097805 () Bool)

(declare-fun tp!2097803 () Bool)

(assert (=> b!7377269 (= e!4416151 (and tp!2097805 tp!2097803))))

(assert (=> b!7376960 (= tp!2097733 e!4416151)))

(declare-fun b!7377271 () Bool)

(declare-fun tp!2097806 () Bool)

(declare-fun tp!2097804 () Bool)

(assert (=> b!7377271 (= e!4416151 (and tp!2097806 tp!2097804))))

(declare-fun b!7377270 () Bool)

(declare-fun tp!2097802 () Bool)

(assert (=> b!7377270 (= e!4416151 tp!2097802)))

(declare-fun b!7377268 () Bool)

(assert (=> b!7377268 (= e!4416151 tp_is_empty!48859)))

(assert (= (and b!7376960 ((_ is ElementMatch!19307) (regOne!39127 r1!2370))) b!7377268))

(assert (= (and b!7376960 ((_ is Concat!28152) (regOne!39127 r1!2370))) b!7377269))

(assert (= (and b!7376960 ((_ is Star!19307) (regOne!39127 r1!2370))) b!7377270))

(assert (= (and b!7376960 ((_ is Union!19307) (regOne!39127 r1!2370))) b!7377271))

(declare-fun b!7377273 () Bool)

(declare-fun e!4416152 () Bool)

(declare-fun tp!2097810 () Bool)

(declare-fun tp!2097808 () Bool)

(assert (=> b!7377273 (= e!4416152 (and tp!2097810 tp!2097808))))

(assert (=> b!7376960 (= tp!2097732 e!4416152)))

(declare-fun b!7377275 () Bool)

(declare-fun tp!2097811 () Bool)

(declare-fun tp!2097809 () Bool)

(assert (=> b!7377275 (= e!4416152 (and tp!2097811 tp!2097809))))

(declare-fun b!7377274 () Bool)

(declare-fun tp!2097807 () Bool)

(assert (=> b!7377274 (= e!4416152 tp!2097807)))

(declare-fun b!7377272 () Bool)

(assert (=> b!7377272 (= e!4416152 tp_is_empty!48859)))

(assert (= (and b!7376960 ((_ is ElementMatch!19307) (regTwo!39127 r1!2370))) b!7377272))

(assert (= (and b!7376960 ((_ is Concat!28152) (regTwo!39127 r1!2370))) b!7377273))

(assert (= (and b!7376960 ((_ is Star!19307) (regTwo!39127 r1!2370))) b!7377274))

(assert (= (and b!7376960 ((_ is Union!19307) (regTwo!39127 r1!2370))) b!7377275))

(declare-fun b!7377276 () Bool)

(declare-fun e!4416153 () Bool)

(declare-fun tp!2097812 () Bool)

(declare-fun tp!2097813 () Bool)

(assert (=> b!7377276 (= e!4416153 (and tp!2097812 tp!2097813))))

(assert (=> b!7376955 (= tp!2097731 e!4416153)))

(assert (= (and b!7376955 ((_ is Cons!71679) (exprs!8747 ct2!378))) b!7377276))

(declare-fun b!7377277 () Bool)

(declare-fun e!4416154 () Bool)

(declare-fun tp!2097814 () Bool)

(declare-fun tp!2097815 () Bool)

(assert (=> b!7377277 (= e!4416154 (and tp!2097814 tp!2097815))))

(assert (=> b!7376964 (= tp!2097734 e!4416154)))

(assert (= (and b!7376964 ((_ is Cons!71679) (exprs!8747 ct1!282))) b!7377277))

(declare-fun b!7377279 () Bool)

(declare-fun e!4416155 () Bool)

(declare-fun tp!2097819 () Bool)

(declare-fun tp!2097817 () Bool)

(assert (=> b!7377279 (= e!4416155 (and tp!2097819 tp!2097817))))

(assert (=> b!7376959 (= tp!2097728 e!4416155)))

(declare-fun b!7377281 () Bool)

(declare-fun tp!2097820 () Bool)

(declare-fun tp!2097818 () Bool)

(assert (=> b!7377281 (= e!4416155 (and tp!2097820 tp!2097818))))

(declare-fun b!7377280 () Bool)

(declare-fun tp!2097816 () Bool)

(assert (=> b!7377280 (= e!4416155 tp!2097816)))

(declare-fun b!7377278 () Bool)

(assert (=> b!7377278 (= e!4416155 tp_is_empty!48859)))

(assert (= (and b!7376959 ((_ is ElementMatch!19307) (regOne!39126 r1!2370))) b!7377278))

(assert (= (and b!7376959 ((_ is Concat!28152) (regOne!39126 r1!2370))) b!7377279))

(assert (= (and b!7376959 ((_ is Star!19307) (regOne!39126 r1!2370))) b!7377280))

(assert (= (and b!7376959 ((_ is Union!19307) (regOne!39126 r1!2370))) b!7377281))

(declare-fun b!7377283 () Bool)

(declare-fun e!4416156 () Bool)

(declare-fun tp!2097824 () Bool)

(declare-fun tp!2097822 () Bool)

(assert (=> b!7377283 (= e!4416156 (and tp!2097824 tp!2097822))))

(assert (=> b!7376959 (= tp!2097735 e!4416156)))

(declare-fun b!7377285 () Bool)

(declare-fun tp!2097825 () Bool)

(declare-fun tp!2097823 () Bool)

(assert (=> b!7377285 (= e!4416156 (and tp!2097825 tp!2097823))))

(declare-fun b!7377284 () Bool)

(declare-fun tp!2097821 () Bool)

(assert (=> b!7377284 (= e!4416156 tp!2097821)))

(declare-fun b!7377282 () Bool)

(assert (=> b!7377282 (= e!4416156 tp_is_empty!48859)))

(assert (= (and b!7376959 ((_ is ElementMatch!19307) (regTwo!39126 r1!2370))) b!7377282))

(assert (= (and b!7376959 ((_ is Concat!28152) (regTwo!39126 r1!2370))) b!7377283))

(assert (= (and b!7376959 ((_ is Star!19307) (regTwo!39126 r1!2370))) b!7377284))

(assert (= (and b!7376959 ((_ is Union!19307) (regTwo!39126 r1!2370))) b!7377285))

(check-sat (not bm!678343) (not b!7377285) (not b!7377269) (not bm!678322) (not bm!678336) (not b!7377267) (not bm!678334) (not b!7377191) (not b!7377276) (not d!2284824) tp_is_empty!48859 (not b!7377279) (not b!7377261) (not b!7377221) (not b!7377270) (not bm!678338) (not b!7377284) (not d!2284810) (not b!7377275) (not bm!678282) (not b!7377079) (not d!2284780) (not bm!678341) (not b!7377206) (not b!7377241) (not b!7377078) (not b!7377215) (not bm!678326) (not b!7377201) (not d!2284806) (not d!2284828) (not b!7377260) (not b!7377200) (not b!7377216) (not d!2284808) (not b!7377262) (not b!7377277) (not bm!678332) (not bm!678330) (not b!7377271) (not b!7377274) (not b!7377281) (not bm!678339) (not d!2284760) (not d!2284816) (not d!2284772) (not bm!678281) (not b!7377273) (not bm!678345) (not b!7377283) (not d!2284814) (not d!2284826) (not b!7377232) (not bm!678320) (not b!7377280) (not b!7377033) (not bm!678328) (not bm!678324))
(check-sat)
(get-model)

(assert (=> d!2284808 d!2284772))

(declare-fun b!7377448 () Bool)

(declare-fun e!4416263 () (InoxSet Context!16494))

(declare-fun call!678404 () (InoxSet Context!16494))

(declare-fun call!678409 () (InoxSet Context!16494))

(assert (=> b!7377448 (= e!4416263 ((_ map or) call!678404 call!678409))))

(declare-fun d!2284904 () Bool)

(declare-fun c!1371273 () Bool)

(assert (=> d!2284904 (= c!1371273 (and ((_ is ElementMatch!19307) (regOne!39126 r1!2370)) (= (c!1371127 (regOne!39126 r1!2370)) c!10362)))))

(declare-fun e!4416264 () (InoxSet Context!16494))

(assert (=> d!2284904 (= (derivationStepZipperDown!3133 (regOne!39126 r1!2370) (Context!16495 (++!17123 (exprs!8747 lt!2616437) (exprs!8747 ct2!378))) c!10362) e!4416264)))

(declare-fun b!7377449 () Bool)

(declare-fun c!1371274 () Bool)

(declare-fun e!4416265 () Bool)

(assert (=> b!7377449 (= c!1371274 e!4416265)))

(declare-fun res!2976035 () Bool)

(assert (=> b!7377449 (=> (not res!2976035) (not e!4416265))))

(assert (=> b!7377449 (= res!2976035 ((_ is Concat!28152) (regOne!39126 r1!2370)))))

(declare-fun e!4416266 () (InoxSet Context!16494))

(assert (=> b!7377449 (= e!4416266 e!4416263)))

(declare-fun call!678406 () List!71803)

(declare-fun bm!678399 () Bool)

(declare-fun c!1371272 () Bool)

(assert (=> bm!678399 (= call!678406 ($colon$colon!3289 (exprs!8747 (Context!16495 (++!17123 (exprs!8747 lt!2616437) (exprs!8747 ct2!378)))) (ite (or c!1371274 c!1371272) (regTwo!39126 (regOne!39126 r1!2370)) (regOne!39126 r1!2370))))))

(declare-fun b!7377450 () Bool)

(declare-fun e!4416267 () (InoxSet Context!16494))

(declare-fun call!678405 () (InoxSet Context!16494))

(assert (=> b!7377450 (= e!4416267 call!678405)))

(declare-fun bm!678400 () Bool)

(declare-fun call!678407 () List!71803)

(assert (=> bm!678400 (= call!678407 call!678406)))

(declare-fun b!7377451 () Bool)

(assert (=> b!7377451 (= e!4416265 (nullable!8383 (regOne!39126 (regOne!39126 r1!2370))))))

(declare-fun bm!678401 () Bool)

(declare-fun call!678408 () (InoxSet Context!16494))

(declare-fun c!1371275 () Bool)

(assert (=> bm!678401 (= call!678408 (derivationStepZipperDown!3133 (ite c!1371275 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371274 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371272 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370))))) (ite (or c!1371275 c!1371274) (Context!16495 (++!17123 (exprs!8747 lt!2616437) (exprs!8747 ct2!378))) (Context!16495 call!678407)) c!10362))))

(declare-fun b!7377452 () Bool)

(declare-fun c!1371271 () Bool)

(assert (=> b!7377452 (= c!1371271 ((_ is Star!19307) (regOne!39126 r1!2370)))))

(declare-fun e!4416268 () (InoxSet Context!16494))

(assert (=> b!7377452 (= e!4416267 e!4416268)))

(declare-fun b!7377453 () Bool)

(assert (=> b!7377453 (= e!4416263 e!4416267)))

(assert (=> b!7377453 (= c!1371272 ((_ is Concat!28152) (regOne!39126 r1!2370)))))

(declare-fun b!7377454 () Bool)

(assert (=> b!7377454 (= e!4416266 ((_ map or) call!678408 call!678404))))

(declare-fun b!7377455 () Bool)

(assert (=> b!7377455 (= e!4416264 e!4416266)))

(assert (=> b!7377455 (= c!1371275 ((_ is Union!19307) (regOne!39126 r1!2370)))))

(declare-fun bm!678402 () Bool)

(assert (=> bm!678402 (= call!678409 call!678408)))

(declare-fun bm!678403 () Bool)

(assert (=> bm!678403 (= call!678404 (derivationStepZipperDown!3133 (ite c!1371275 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370))) (ite c!1371275 (Context!16495 (++!17123 (exprs!8747 lt!2616437) (exprs!8747 ct2!378))) (Context!16495 call!678406)) c!10362))))

(declare-fun b!7377456 () Bool)

(assert (=> b!7377456 (= e!4416268 call!678405)))

(declare-fun bm!678404 () Bool)

(assert (=> bm!678404 (= call!678405 call!678409)))

(declare-fun b!7377457 () Bool)

(assert (=> b!7377457 (= e!4416264 (store ((as const (Array Context!16494 Bool)) false) (Context!16495 (++!17123 (exprs!8747 lt!2616437) (exprs!8747 ct2!378))) true))))

(declare-fun b!7377458 () Bool)

(assert (=> b!7377458 (= e!4416268 ((as const (Array Context!16494 Bool)) false))))

(assert (= (and d!2284904 c!1371273) b!7377457))

(assert (= (and d!2284904 (not c!1371273)) b!7377455))

(assert (= (and b!7377455 c!1371275) b!7377454))

(assert (= (and b!7377455 (not c!1371275)) b!7377449))

(assert (= (and b!7377449 res!2976035) b!7377451))

(assert (= (and b!7377449 c!1371274) b!7377448))

(assert (= (and b!7377449 (not c!1371274)) b!7377453))

(assert (= (and b!7377453 c!1371272) b!7377450))

(assert (= (and b!7377453 (not c!1371272)) b!7377452))

(assert (= (and b!7377452 c!1371271) b!7377456))

(assert (= (and b!7377452 (not c!1371271)) b!7377458))

(assert (= (or b!7377450 b!7377456) bm!678400))

(assert (= (or b!7377450 b!7377456) bm!678404))

(assert (= (or b!7377448 bm!678404) bm!678402))

(assert (= (or b!7377448 bm!678400) bm!678399))

(assert (= (or b!7377454 b!7377448) bm!678403))

(assert (= (or b!7377454 bm!678402) bm!678401))

(declare-fun m!8028878 () Bool)

(assert (=> bm!678399 m!8028878))

(declare-fun m!8028880 () Bool)

(assert (=> b!7377457 m!8028880))

(assert (=> b!7377451 m!8028622))

(declare-fun m!8028882 () Bool)

(assert (=> bm!678403 m!8028882))

(declare-fun m!8028886 () Bool)

(assert (=> bm!678401 m!8028886))

(assert (=> d!2284808 d!2284904))

(declare-fun d!2284910 () Bool)

(assert (=> d!2284910 (forall!18103 (++!17123 (exprs!8747 cWitness!61) (exprs!8747 ct2!378)) lambda!458376)))

(declare-fun lt!2616495 () Unit!165563)

(assert (=> d!2284910 (= lt!2616495 (choose!57333 (exprs!8747 cWitness!61) (exprs!8747 ct2!378) lambda!458376))))

(assert (=> d!2284910 (forall!18103 (exprs!8747 cWitness!61) lambda!458376)))

(assert (=> d!2284910 (= (lemmaConcatPreservesForall!1980 (exprs!8747 cWitness!61) (exprs!8747 ct2!378) lambda!458376) lt!2616495)))

(declare-fun bs!1921360 () Bool)

(assert (= bs!1921360 d!2284910))

(assert (=> bs!1921360 m!8028452))

(assert (=> bs!1921360 m!8028452))

(declare-fun m!8028898 () Bool)

(assert (=> bs!1921360 m!8028898))

(declare-fun m!8028904 () Bool)

(assert (=> bs!1921360 m!8028904))

(declare-fun m!8028908 () Bool)

(assert (=> bs!1921360 m!8028908))

(assert (=> d!2284808 d!2284910))

(declare-fun b!7377481 () Bool)

(declare-fun e!4416283 () Bool)

(declare-fun e!4416285 () Bool)

(assert (=> b!7377481 (= e!4416283 e!4416285)))

(declare-fun res!2976046 () Bool)

(assert (=> b!7377481 (=> (not res!2976046) (not e!4416285))))

(declare-fun call!678418 () Bool)

(assert (=> b!7377481 (= res!2976046 call!678418)))

(declare-fun b!7377482 () Bool)

(declare-fun e!4416289 () Bool)

(declare-fun call!678420 () Bool)

(assert (=> b!7377482 (= e!4416289 call!678420)))

(declare-fun b!7377483 () Bool)

(declare-fun e!4416284 () Bool)

(declare-fun e!4416286 () Bool)

(assert (=> b!7377483 (= e!4416284 e!4416286)))

(declare-fun c!1371283 () Bool)

(assert (=> b!7377483 (= c!1371283 ((_ is Star!19307) (regOne!39126 r1!2370)))))

(declare-fun b!7377484 () Bool)

(assert (=> b!7377484 (= e!4416286 e!4416289)))

(declare-fun res!2976044 () Bool)

(assert (=> b!7377484 (= res!2976044 (not (nullable!8383 (reg!19636 (regOne!39126 r1!2370)))))))

(assert (=> b!7377484 (=> (not res!2976044) (not e!4416289))))

(declare-fun c!1371284 () Bool)

(declare-fun bm!678413 () Bool)

(assert (=> bm!678413 (= call!678420 (validRegex!9903 (ite c!1371283 (reg!19636 (regOne!39126 r1!2370)) (ite c!1371284 (regOne!39127 (regOne!39126 r1!2370)) (regTwo!39126 (regOne!39126 r1!2370))))))))

(declare-fun b!7377485 () Bool)

(declare-fun call!678419 () Bool)

(assert (=> b!7377485 (= e!4416285 call!678419)))

(declare-fun b!7377486 () Bool)

(declare-fun res!2976048 () Bool)

(assert (=> b!7377486 (=> res!2976048 e!4416283)))

(assert (=> b!7377486 (= res!2976048 (not ((_ is Concat!28152) (regOne!39126 r1!2370))))))

(declare-fun e!4416287 () Bool)

(assert (=> b!7377486 (= e!4416287 e!4416283)))

(declare-fun bm!678414 () Bool)

(assert (=> bm!678414 (= call!678418 (validRegex!9903 (ite c!1371284 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))))))

(declare-fun b!7377487 () Bool)

(declare-fun res!2976047 () Bool)

(declare-fun e!4416288 () Bool)

(assert (=> b!7377487 (=> (not res!2976047) (not e!4416288))))

(assert (=> b!7377487 (= res!2976047 call!678419)))

(assert (=> b!7377487 (= e!4416287 e!4416288)))

(declare-fun bm!678415 () Bool)

(assert (=> bm!678415 (= call!678419 call!678420)))

(declare-fun d!2284916 () Bool)

(declare-fun res!2976045 () Bool)

(assert (=> d!2284916 (=> res!2976045 e!4416284)))

(assert (=> d!2284916 (= res!2976045 ((_ is ElementMatch!19307) (regOne!39126 r1!2370)))))

(assert (=> d!2284916 (= (validRegex!9903 (regOne!39126 r1!2370)) e!4416284)))

(declare-fun b!7377488 () Bool)

(assert (=> b!7377488 (= e!4416288 call!678418)))

(declare-fun b!7377489 () Bool)

(assert (=> b!7377489 (= e!4416286 e!4416287)))

(assert (=> b!7377489 (= c!1371284 ((_ is Union!19307) (regOne!39126 r1!2370)))))

(assert (= (and d!2284916 (not res!2976045)) b!7377483))

(assert (= (and b!7377483 c!1371283) b!7377484))

(assert (= (and b!7377483 (not c!1371283)) b!7377489))

(assert (= (and b!7377484 res!2976044) b!7377482))

(assert (= (and b!7377489 c!1371284) b!7377487))

(assert (= (and b!7377489 (not c!1371284)) b!7377486))

(assert (= (and b!7377487 res!2976047) b!7377488))

(assert (= (and b!7377486 (not res!2976048)) b!7377481))

(assert (= (and b!7377481 res!2976046) b!7377485))

(assert (= (or b!7377487 b!7377485) bm!678415))

(assert (= (or b!7377488 b!7377481) bm!678414))

(assert (= (or b!7377482 bm!678415) bm!678413))

(declare-fun m!8028910 () Bool)

(assert (=> b!7377484 m!8028910))

(declare-fun m!8028916 () Bool)

(assert (=> bm!678413 m!8028916))

(declare-fun m!8028920 () Bool)

(assert (=> bm!678414 m!8028920))

(assert (=> d!2284808 d!2284916))

(declare-fun d!2284918 () Bool)

(assert (=> d!2284918 (forall!18103 (++!17123 (exprs!8747 lt!2616437) (exprs!8747 ct2!378)) lambda!458376)))

(declare-fun lt!2616497 () Unit!165563)

(assert (=> d!2284918 (= lt!2616497 (choose!57333 (exprs!8747 lt!2616437) (exprs!8747 ct2!378) lambda!458376))))

(assert (=> d!2284918 (forall!18103 (exprs!8747 lt!2616437) lambda!458376)))

(assert (=> d!2284918 (= (lemmaConcatPreservesForall!1980 (exprs!8747 lt!2616437) (exprs!8747 ct2!378) lambda!458376) lt!2616497)))

(declare-fun bs!1921361 () Bool)

(assert (= bs!1921361 d!2284918))

(assert (=> bs!1921361 m!8028638))

(assert (=> bs!1921361 m!8028638))

(declare-fun m!8028930 () Bool)

(assert (=> bs!1921361 m!8028930))

(declare-fun m!8028932 () Bool)

(assert (=> bs!1921361 m!8028932))

(declare-fun m!8028934 () Bool)

(assert (=> bs!1921361 m!8028934))

(assert (=> d!2284808 d!2284918))

(declare-fun bs!1921364 () Bool)

(declare-fun d!2284924 () Bool)

(assert (= bs!1921364 (and d!2284924 d!2284824)))

(declare-fun lambda!458391 () Int)

(assert (=> bs!1921364 (= lambda!458391 lambda!458379)))

(declare-fun bs!1921365 () Bool)

(assert (= bs!1921365 (and d!2284924 d!2284826)))

(assert (=> bs!1921365 (= lambda!458391 lambda!458380)))

(declare-fun bs!1921366 () Bool)

(assert (= bs!1921366 (and d!2284924 b!7376967)))

(assert (=> bs!1921366 (= lambda!458391 lambda!458361)))

(declare-fun bs!1921367 () Bool)

(assert (= bs!1921367 (and d!2284924 d!2284808)))

(assert (=> bs!1921367 (= lambda!458391 lambda!458376)))

(declare-fun bs!1921369 () Bool)

(assert (= bs!1921369 (and d!2284924 d!2284828)))

(assert (=> bs!1921369 (= lambda!458391 lambda!458381)))

(assert (=> d!2284924 (select (derivationStepZipperDown!3133 (regOne!39126 r1!2370) (Context!16495 (++!17123 (exprs!8747 lt!2616437) (exprs!8747 ct2!378))) c!10362) (Context!16495 (++!17123 (exprs!8747 cWitness!61) (exprs!8747 ct2!378))))))

(declare-fun lt!2616508 () Unit!165563)

(assert (=> d!2284924 (= lt!2616508 (lemmaConcatPreservesForall!1980 (exprs!8747 lt!2616437) (exprs!8747 ct2!378) lambda!458391))))

(declare-fun lt!2616507 () Unit!165563)

(assert (=> d!2284924 (= lt!2616507 (lemmaConcatPreservesForall!1980 (exprs!8747 cWitness!61) (exprs!8747 ct2!378) lambda!458391))))

(assert (=> d!2284924 true))

(declare-fun _$59!751 () Unit!165563)

(assert (=> d!2284924 (= (choose!57334 (regOne!39126 r1!2370) lt!2616437 ct2!378 cWitness!61 c!10362) _$59!751)))

(declare-fun bs!1921378 () Bool)

(assert (= bs!1921378 d!2284924))

(declare-fun m!8029000 () Bool)

(assert (=> bs!1921378 m!8029000))

(assert (=> bs!1921378 m!8028644))

(declare-fun m!8029002 () Bool)

(assert (=> bs!1921378 m!8029002))

(assert (=> bs!1921378 m!8028452))

(assert (=> bs!1921378 m!8028638))

(assert (=> bs!1921378 m!8028642))

(assert (=> d!2284808 d!2284924))

(declare-fun b!7377662 () Bool)

(declare-fun res!2976066 () Bool)

(declare-fun e!4416357 () Bool)

(assert (=> b!7377662 (=> (not res!2976066) (not e!4416357))))

(declare-fun lt!2616509 () List!71803)

(assert (=> b!7377662 (= res!2976066 (= (size!42154 lt!2616509) (+ (size!42154 (exprs!8747 lt!2616437)) (size!42154 (exprs!8747 ct2!378)))))))

(declare-fun b!7377660 () Bool)

(declare-fun e!4416356 () List!71803)

(assert (=> b!7377660 (= e!4416356 (exprs!8747 ct2!378))))

(declare-fun d!2284970 () Bool)

(assert (=> d!2284970 e!4416357))

(declare-fun res!2976067 () Bool)

(assert (=> d!2284970 (=> (not res!2976067) (not e!4416357))))

(assert (=> d!2284970 (= res!2976067 (= (content!15176 lt!2616509) ((_ map or) (content!15176 (exprs!8747 lt!2616437)) (content!15176 (exprs!8747 ct2!378)))))))

(assert (=> d!2284970 (= lt!2616509 e!4416356)))

(declare-fun c!1371305 () Bool)

(assert (=> d!2284970 (= c!1371305 ((_ is Nil!71679) (exprs!8747 lt!2616437)))))

(assert (=> d!2284970 (= (++!17123 (exprs!8747 lt!2616437) (exprs!8747 ct2!378)) lt!2616509)))

(declare-fun b!7377663 () Bool)

(assert (=> b!7377663 (= e!4416357 (or (not (= (exprs!8747 ct2!378) Nil!71679)) (= lt!2616509 (exprs!8747 lt!2616437))))))

(declare-fun b!7377661 () Bool)

(assert (=> b!7377661 (= e!4416356 (Cons!71679 (h!78127 (exprs!8747 lt!2616437)) (++!17123 (t!386284 (exprs!8747 lt!2616437)) (exprs!8747 ct2!378))))))

(assert (= (and d!2284970 c!1371305) b!7377660))

(assert (= (and d!2284970 (not c!1371305)) b!7377661))

(assert (= (and d!2284970 res!2976067) b!7377662))

(assert (= (and b!7377662 res!2976066) b!7377663))

(declare-fun m!8029004 () Bool)

(assert (=> b!7377662 m!8029004))

(declare-fun m!8029006 () Bool)

(assert (=> b!7377662 m!8029006))

(assert (=> b!7377662 m!8028526))

(declare-fun m!8029008 () Bool)

(assert (=> d!2284970 m!8029008))

(declare-fun m!8029010 () Bool)

(assert (=> d!2284970 m!8029010))

(assert (=> d!2284970 m!8028532))

(declare-fun m!8029012 () Bool)

(assert (=> b!7377661 m!8029012))

(assert (=> d!2284808 d!2284970))

(declare-fun d!2284972 () Bool)

(assert (=> d!2284972 (= ($colon$colon!3289 (exprs!8747 ct1!282) (ite (or c!1371214 c!1371212) (regTwo!39126 r1!2370) r1!2370)) (Cons!71679 (ite (or c!1371214 c!1371212) (regTwo!39126 r1!2370) r1!2370) (exprs!8747 ct1!282)))))

(assert (=> bm!678341 d!2284972))

(declare-fun d!2284974 () Bool)

(declare-fun c!1371308 () Bool)

(assert (=> d!2284974 (= c!1371308 ((_ is Nil!71679) lt!2616467))))

(declare-fun e!4416360 () (InoxSet Regex!19307))

(assert (=> d!2284974 (= (content!15176 lt!2616467) e!4416360)))

(declare-fun b!7377668 () Bool)

(assert (=> b!7377668 (= e!4416360 ((as const (Array Regex!19307 Bool)) false))))

(declare-fun b!7377669 () Bool)

(assert (=> b!7377669 (= e!4416360 ((_ map or) (store ((as const (Array Regex!19307 Bool)) false) (h!78127 lt!2616467) true) (content!15176 (t!386284 lt!2616467))))))

(assert (= (and d!2284974 c!1371308) b!7377668))

(assert (= (and d!2284974 (not c!1371308)) b!7377669))

(declare-fun m!8029014 () Bool)

(assert (=> b!7377669 m!8029014))

(declare-fun m!8029016 () Bool)

(assert (=> b!7377669 m!8029016))

(assert (=> d!2284806 d!2284974))

(declare-fun d!2284976 () Bool)

(declare-fun c!1371309 () Bool)

(assert (=> d!2284976 (= c!1371309 ((_ is Nil!71679) lt!2616441))))

(declare-fun e!4416361 () (InoxSet Regex!19307))

(assert (=> d!2284976 (= (content!15176 lt!2616441) e!4416361)))

(declare-fun b!7377670 () Bool)

(assert (=> b!7377670 (= e!4416361 ((as const (Array Regex!19307 Bool)) false))))

(declare-fun b!7377671 () Bool)

(assert (=> b!7377671 (= e!4416361 ((_ map or) (store ((as const (Array Regex!19307 Bool)) false) (h!78127 lt!2616441) true) (content!15176 (t!386284 lt!2616441))))))

(assert (= (and d!2284976 c!1371309) b!7377670))

(assert (= (and d!2284976 (not c!1371309)) b!7377671))

(declare-fun m!8029018 () Bool)

(assert (=> b!7377671 m!8029018))

(declare-fun m!8029020 () Bool)

(assert (=> b!7377671 m!8029020))

(assert (=> d!2284806 d!2284976))

(declare-fun d!2284978 () Bool)

(declare-fun c!1371310 () Bool)

(assert (=> d!2284978 (= c!1371310 ((_ is Nil!71679) (exprs!8747 ct2!378)))))

(declare-fun e!4416362 () (InoxSet Regex!19307))

(assert (=> d!2284978 (= (content!15176 (exprs!8747 ct2!378)) e!4416362)))

(declare-fun b!7377672 () Bool)

(assert (=> b!7377672 (= e!4416362 ((as const (Array Regex!19307 Bool)) false))))

(declare-fun b!7377673 () Bool)

(assert (=> b!7377673 (= e!4416362 ((_ map or) (store ((as const (Array Regex!19307 Bool)) false) (h!78127 (exprs!8747 ct2!378)) true) (content!15176 (t!386284 (exprs!8747 ct2!378)))))))

(assert (= (and d!2284978 c!1371310) b!7377672))

(assert (= (and d!2284978 (not c!1371310)) b!7377673))

(declare-fun m!8029022 () Bool)

(assert (=> b!7377673 m!8029022))

(declare-fun m!8029024 () Bool)

(assert (=> b!7377673 m!8029024))

(assert (=> d!2284806 d!2284978))

(declare-fun b!7377674 () Bool)

(declare-fun e!4416363 () Bool)

(declare-fun e!4416365 () Bool)

(assert (=> b!7377674 (= e!4416363 e!4416365)))

(declare-fun res!2976070 () Bool)

(assert (=> b!7377674 (=> (not res!2976070) (not e!4416365))))

(declare-fun call!678436 () Bool)

(assert (=> b!7377674 (= res!2976070 call!678436)))

(declare-fun b!7377675 () Bool)

(declare-fun e!4416369 () Bool)

(declare-fun call!678438 () Bool)

(assert (=> b!7377675 (= e!4416369 call!678438)))

(declare-fun b!7377676 () Bool)

(declare-fun e!4416364 () Bool)

(declare-fun e!4416366 () Bool)

(assert (=> b!7377676 (= e!4416364 e!4416366)))

(declare-fun c!1371311 () Bool)

(assert (=> b!7377676 (= c!1371311 ((_ is Star!19307) (ite c!1371152 (reg!19636 (regTwo!39126 r1!2370)) (ite c!1371153 (regOne!39127 (regTwo!39126 r1!2370)) (regTwo!39126 (regTwo!39126 r1!2370))))))))

(declare-fun b!7377677 () Bool)

(assert (=> b!7377677 (= e!4416366 e!4416369)))

(declare-fun res!2976068 () Bool)

(assert (=> b!7377677 (= res!2976068 (not (nullable!8383 (reg!19636 (ite c!1371152 (reg!19636 (regTwo!39126 r1!2370)) (ite c!1371153 (regOne!39127 (regTwo!39126 r1!2370)) (regTwo!39126 (regTwo!39126 r1!2370))))))))))

(assert (=> b!7377677 (=> (not res!2976068) (not e!4416369))))

(declare-fun bm!678431 () Bool)

(declare-fun c!1371312 () Bool)

(assert (=> bm!678431 (= call!678438 (validRegex!9903 (ite c!1371311 (reg!19636 (ite c!1371152 (reg!19636 (regTwo!39126 r1!2370)) (ite c!1371153 (regOne!39127 (regTwo!39126 r1!2370)) (regTwo!39126 (regTwo!39126 r1!2370))))) (ite c!1371312 (regOne!39127 (ite c!1371152 (reg!19636 (regTwo!39126 r1!2370)) (ite c!1371153 (regOne!39127 (regTwo!39126 r1!2370)) (regTwo!39126 (regTwo!39126 r1!2370))))) (regTwo!39126 (ite c!1371152 (reg!19636 (regTwo!39126 r1!2370)) (ite c!1371153 (regOne!39127 (regTwo!39126 r1!2370)) (regTwo!39126 (regTwo!39126 r1!2370)))))))))))

(declare-fun b!7377678 () Bool)

(declare-fun call!678437 () Bool)

(assert (=> b!7377678 (= e!4416365 call!678437)))

(declare-fun b!7377679 () Bool)

(declare-fun res!2976072 () Bool)

(assert (=> b!7377679 (=> res!2976072 e!4416363)))

(assert (=> b!7377679 (= res!2976072 (not ((_ is Concat!28152) (ite c!1371152 (reg!19636 (regTwo!39126 r1!2370)) (ite c!1371153 (regOne!39127 (regTwo!39126 r1!2370)) (regTwo!39126 (regTwo!39126 r1!2370)))))))))

(declare-fun e!4416367 () Bool)

(assert (=> b!7377679 (= e!4416367 e!4416363)))

(declare-fun bm!678432 () Bool)

(assert (=> bm!678432 (= call!678436 (validRegex!9903 (ite c!1371312 (regTwo!39127 (ite c!1371152 (reg!19636 (regTwo!39126 r1!2370)) (ite c!1371153 (regOne!39127 (regTwo!39126 r1!2370)) (regTwo!39126 (regTwo!39126 r1!2370))))) (regOne!39126 (ite c!1371152 (reg!19636 (regTwo!39126 r1!2370)) (ite c!1371153 (regOne!39127 (regTwo!39126 r1!2370)) (regTwo!39126 (regTwo!39126 r1!2370))))))))))

(declare-fun b!7377680 () Bool)

(declare-fun res!2976071 () Bool)

(declare-fun e!4416368 () Bool)

(assert (=> b!7377680 (=> (not res!2976071) (not e!4416368))))

(assert (=> b!7377680 (= res!2976071 call!678437)))

(assert (=> b!7377680 (= e!4416367 e!4416368)))

(declare-fun bm!678433 () Bool)

(assert (=> bm!678433 (= call!678437 call!678438)))

(declare-fun d!2284980 () Bool)

(declare-fun res!2976069 () Bool)

(assert (=> d!2284980 (=> res!2976069 e!4416364)))

(assert (=> d!2284980 (= res!2976069 ((_ is ElementMatch!19307) (ite c!1371152 (reg!19636 (regTwo!39126 r1!2370)) (ite c!1371153 (regOne!39127 (regTwo!39126 r1!2370)) (regTwo!39126 (regTwo!39126 r1!2370))))))))

(assert (=> d!2284980 (= (validRegex!9903 (ite c!1371152 (reg!19636 (regTwo!39126 r1!2370)) (ite c!1371153 (regOne!39127 (regTwo!39126 r1!2370)) (regTwo!39126 (regTwo!39126 r1!2370))))) e!4416364)))

(declare-fun b!7377681 () Bool)

(assert (=> b!7377681 (= e!4416368 call!678436)))

(declare-fun b!7377682 () Bool)

(assert (=> b!7377682 (= e!4416366 e!4416367)))

(assert (=> b!7377682 (= c!1371312 ((_ is Union!19307) (ite c!1371152 (reg!19636 (regTwo!39126 r1!2370)) (ite c!1371153 (regOne!39127 (regTwo!39126 r1!2370)) (regTwo!39126 (regTwo!39126 r1!2370))))))))

(assert (= (and d!2284980 (not res!2976069)) b!7377676))

(assert (= (and b!7377676 c!1371311) b!7377677))

(assert (= (and b!7377676 (not c!1371311)) b!7377682))

(assert (= (and b!7377677 res!2976068) b!7377675))

(assert (= (and b!7377682 c!1371312) b!7377680))

(assert (= (and b!7377682 (not c!1371312)) b!7377679))

(assert (= (and b!7377680 res!2976071) b!7377681))

(assert (= (and b!7377679 (not res!2976072)) b!7377674))

(assert (= (and b!7377674 res!2976070) b!7377678))

(assert (= (or b!7377680 b!7377678) bm!678433))

(assert (= (or b!7377681 b!7377674) bm!678432))

(assert (= (or b!7377675 bm!678433) bm!678431))

(declare-fun m!8029026 () Bool)

(assert (=> b!7377677 m!8029026))

(declare-fun m!8029028 () Bool)

(assert (=> bm!678431 m!8029028))

(declare-fun m!8029030 () Bool)

(assert (=> bm!678432 m!8029030))

(assert (=> bm!678281 d!2284980))

(declare-fun b!7377683 () Bool)

(declare-fun e!4416370 () (InoxSet Context!16494))

(declare-fun call!678439 () (InoxSet Context!16494))

(declare-fun call!678444 () (InoxSet Context!16494))

(assert (=> b!7377683 (= e!4416370 ((_ map or) call!678439 call!678444))))

(declare-fun c!1371315 () Bool)

(declare-fun d!2284982 () Bool)

(assert (=> d!2284982 (= c!1371315 (and ((_ is ElementMatch!19307) (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) (= (c!1371127 (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) c!10362)))))

(declare-fun e!4416371 () (InoxSet Context!16494))

(assert (=> d!2284982 (= (derivationStepZipperDown!3133 (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370))))) (ite (or c!1371195 c!1371194) (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) (Context!16495 call!678328)) c!10362) e!4416371)))

(declare-fun b!7377684 () Bool)

(declare-fun c!1371316 () Bool)

(declare-fun e!4416372 () Bool)

(assert (=> b!7377684 (= c!1371316 e!4416372)))

(declare-fun res!2976073 () Bool)

(assert (=> b!7377684 (=> (not res!2976073) (not e!4416372))))

(assert (=> b!7377684 (= res!2976073 ((_ is Concat!28152) (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))))))

(declare-fun e!4416373 () (InoxSet Context!16494))

(assert (=> b!7377684 (= e!4416373 e!4416370)))

(declare-fun c!1371314 () Bool)

(declare-fun call!678441 () List!71803)

(declare-fun bm!678434 () Bool)

(assert (=> bm!678434 (= call!678441 ($colon$colon!3289 (exprs!8747 (ite (or c!1371195 c!1371194) (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) (Context!16495 call!678328))) (ite (or c!1371316 c!1371314) (regTwo!39126 (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370))))))))))

(declare-fun b!7377685 () Bool)

(declare-fun e!4416374 () (InoxSet Context!16494))

(declare-fun call!678440 () (InoxSet Context!16494))

(assert (=> b!7377685 (= e!4416374 call!678440)))

(declare-fun bm!678435 () Bool)

(declare-fun call!678442 () List!71803)

(assert (=> bm!678435 (= call!678442 call!678441)))

(declare-fun b!7377686 () Bool)

(assert (=> b!7377686 (= e!4416372 (nullable!8383 (regOne!39126 (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370))))))))))

(declare-fun bm!678436 () Bool)

(declare-fun c!1371317 () Bool)

(declare-fun call!678443 () (InoxSet Context!16494))

(assert (=> bm!678436 (= call!678443 (derivationStepZipperDown!3133 (ite c!1371317 (regOne!39127 (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) (ite c!1371316 (regTwo!39126 (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) (ite c!1371314 (regOne!39126 (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) (reg!19636 (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370))))))))) (ite (or c!1371317 c!1371316) (ite (or c!1371195 c!1371194) (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) (Context!16495 call!678328)) (Context!16495 call!678442)) c!10362))))

(declare-fun c!1371313 () Bool)

(declare-fun b!7377687 () Bool)

(assert (=> b!7377687 (= c!1371313 ((_ is Star!19307) (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))))))

(declare-fun e!4416375 () (InoxSet Context!16494))

(assert (=> b!7377687 (= e!4416374 e!4416375)))

(declare-fun b!7377688 () Bool)

(assert (=> b!7377688 (= e!4416370 e!4416374)))

(assert (=> b!7377688 (= c!1371314 ((_ is Concat!28152) (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))))))

(declare-fun b!7377689 () Bool)

(assert (=> b!7377689 (= e!4416373 ((_ map or) call!678443 call!678439))))

(declare-fun b!7377690 () Bool)

(assert (=> b!7377690 (= e!4416371 e!4416373)))

(assert (=> b!7377690 (= c!1371317 ((_ is Union!19307) (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))))))

(declare-fun bm!678437 () Bool)

(assert (=> bm!678437 (= call!678444 call!678443)))

(declare-fun bm!678438 () Bool)

(assert (=> bm!678438 (= call!678439 (derivationStepZipperDown!3133 (ite c!1371317 (regTwo!39127 (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) (regOne!39126 (ite c!1371195 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371194 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371192 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370))))))) (ite c!1371317 (ite (or c!1371195 c!1371194) (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) (Context!16495 call!678328)) (Context!16495 call!678441)) c!10362))))

(declare-fun b!7377691 () Bool)

(assert (=> b!7377691 (= e!4416375 call!678440)))

(declare-fun bm!678439 () Bool)

(assert (=> bm!678439 (= call!678440 call!678444)))

(declare-fun b!7377692 () Bool)

(assert (=> b!7377692 (= e!4416371 (store ((as const (Array Context!16494 Bool)) false) (ite (or c!1371195 c!1371194) (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) (Context!16495 call!678328)) true))))

(declare-fun b!7377693 () Bool)

(assert (=> b!7377693 (= e!4416375 ((as const (Array Context!16494 Bool)) false))))

(assert (= (and d!2284982 c!1371315) b!7377692))

(assert (= (and d!2284982 (not c!1371315)) b!7377690))

(assert (= (and b!7377690 c!1371317) b!7377689))

(assert (= (and b!7377690 (not c!1371317)) b!7377684))

(assert (= (and b!7377684 res!2976073) b!7377686))

(assert (= (and b!7377684 c!1371316) b!7377683))

(assert (= (and b!7377684 (not c!1371316)) b!7377688))

(assert (= (and b!7377688 c!1371314) b!7377685))

(assert (= (and b!7377688 (not c!1371314)) b!7377687))

(assert (= (and b!7377687 c!1371313) b!7377691))

(assert (= (and b!7377687 (not c!1371313)) b!7377693))

(assert (= (or b!7377685 b!7377691) bm!678435))

(assert (= (or b!7377685 b!7377691) bm!678439))

(assert (= (or b!7377683 bm!678439) bm!678437))

(assert (= (or b!7377683 bm!678435) bm!678434))

(assert (= (or b!7377689 b!7377683) bm!678438))

(assert (= (or b!7377689 bm!678437) bm!678436))

(declare-fun m!8029032 () Bool)

(assert (=> bm!678434 m!8029032))

(declare-fun m!8029034 () Bool)

(assert (=> b!7377692 m!8029034))

(declare-fun m!8029036 () Bool)

(assert (=> b!7377686 m!8029036))

(declare-fun m!8029038 () Bool)

(assert (=> bm!678438 m!8029038))

(declare-fun m!8029040 () Bool)

(assert (=> bm!678436 m!8029040))

(assert (=> bm!678322 d!2284982))

(declare-fun d!2284984 () Bool)

(assert (=> d!2284984 (= (nullable!8383 (reg!19636 (regTwo!39126 r1!2370))) (nullableFct!3360 (reg!19636 (regTwo!39126 r1!2370))))))

(declare-fun bs!1921379 () Bool)

(assert (= bs!1921379 d!2284984))

(declare-fun m!8029042 () Bool)

(assert (=> bs!1921379 m!8029042))

(assert (=> b!7377033 d!2284984))

(declare-fun b!7377694 () Bool)

(declare-fun e!4416376 () (InoxSet Context!16494))

(declare-fun call!678445 () (InoxSet Context!16494))

(declare-fun call!678450 () (InoxSet Context!16494))

(assert (=> b!7377694 (= e!4416376 ((_ map or) call!678445 call!678450))))

(declare-fun c!1371320 () Bool)

(declare-fun d!2284986 () Bool)

(assert (=> d!2284986 (= c!1371320 (and ((_ is ElementMatch!19307) (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) (= (c!1371127 (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) c!10362)))))

(declare-fun e!4416377 () (InoxSet Context!16494))

(assert (=> d!2284986 (= (derivationStepZipperDown!3133 (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370)))) (ite (or c!1371202 c!1371201) (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) (Context!16495 call!678334)) c!10362) e!4416377)))

(declare-fun b!7377695 () Bool)

(declare-fun c!1371321 () Bool)

(declare-fun e!4416378 () Bool)

(assert (=> b!7377695 (= c!1371321 e!4416378)))

(declare-fun res!2976074 () Bool)

(assert (=> b!7377695 (=> (not res!2976074) (not e!4416378))))

(assert (=> b!7377695 (= res!2976074 ((_ is Concat!28152) (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370))))))))

(declare-fun e!4416379 () (InoxSet Context!16494))

(assert (=> b!7377695 (= e!4416379 e!4416376)))

(declare-fun c!1371319 () Bool)

(declare-fun call!678447 () List!71803)

(declare-fun bm!678440 () Bool)

(assert (=> bm!678440 (= call!678447 ($colon$colon!3289 (exprs!8747 (ite (or c!1371202 c!1371201) (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) (Context!16495 call!678334))) (ite (or c!1371321 c!1371319) (regTwo!39126 (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370)))))))))

(declare-fun b!7377696 () Bool)

(declare-fun e!4416380 () (InoxSet Context!16494))

(declare-fun call!678446 () (InoxSet Context!16494))

(assert (=> b!7377696 (= e!4416380 call!678446)))

(declare-fun bm!678441 () Bool)

(declare-fun call!678448 () List!71803)

(assert (=> bm!678441 (= call!678448 call!678447)))

(declare-fun b!7377697 () Bool)

(assert (=> b!7377697 (= e!4416378 (nullable!8383 (regOne!39126 (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370)))))))))

(declare-fun bm!678442 () Bool)

(declare-fun call!678449 () (InoxSet Context!16494))

(declare-fun c!1371322 () Bool)

(assert (=> bm!678442 (= call!678449 (derivationStepZipperDown!3133 (ite c!1371322 (regOne!39127 (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) (ite c!1371321 (regTwo!39126 (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) (ite c!1371319 (regOne!39126 (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) (reg!19636 (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370)))))))) (ite (or c!1371322 c!1371321) (ite (or c!1371202 c!1371201) (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) (Context!16495 call!678334)) (Context!16495 call!678448)) c!10362))))

(declare-fun b!7377698 () Bool)

(declare-fun c!1371318 () Bool)

(assert (=> b!7377698 (= c!1371318 ((_ is Star!19307) (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370))))))))

(declare-fun e!4416381 () (InoxSet Context!16494))

(assert (=> b!7377698 (= e!4416380 e!4416381)))

(declare-fun b!7377699 () Bool)

(assert (=> b!7377699 (= e!4416376 e!4416380)))

(assert (=> b!7377699 (= c!1371319 ((_ is Concat!28152) (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370))))))))

(declare-fun b!7377700 () Bool)

(assert (=> b!7377700 (= e!4416379 ((_ map or) call!678449 call!678445))))

(declare-fun b!7377701 () Bool)

(assert (=> b!7377701 (= e!4416377 e!4416379)))

(assert (=> b!7377701 (= c!1371322 ((_ is Union!19307) (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370))))))))

(declare-fun bm!678443 () Bool)

(assert (=> bm!678443 (= call!678450 call!678449)))

(declare-fun bm!678444 () Bool)

(assert (=> bm!678444 (= call!678445 (derivationStepZipperDown!3133 (ite c!1371322 (regTwo!39127 (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) (regOne!39126 (ite c!1371202 (regOne!39127 r1!2370) (ite c!1371201 (regTwo!39126 r1!2370) (ite c!1371199 (regOne!39126 r1!2370) (reg!19636 r1!2370)))))) (ite c!1371322 (ite (or c!1371202 c!1371201) (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) (Context!16495 call!678334)) (Context!16495 call!678447)) c!10362))))

(declare-fun b!7377702 () Bool)

(assert (=> b!7377702 (= e!4416381 call!678446)))

(declare-fun bm!678445 () Bool)

(assert (=> bm!678445 (= call!678446 call!678450)))

(declare-fun b!7377703 () Bool)

(assert (=> b!7377703 (= e!4416377 (store ((as const (Array Context!16494 Bool)) false) (ite (or c!1371202 c!1371201) (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) (Context!16495 call!678334)) true))))

(declare-fun b!7377704 () Bool)

(assert (=> b!7377704 (= e!4416381 ((as const (Array Context!16494 Bool)) false))))

(assert (= (and d!2284986 c!1371320) b!7377703))

(assert (= (and d!2284986 (not c!1371320)) b!7377701))

(assert (= (and b!7377701 c!1371322) b!7377700))

(assert (= (and b!7377701 (not c!1371322)) b!7377695))

(assert (= (and b!7377695 res!2976074) b!7377697))

(assert (= (and b!7377695 c!1371321) b!7377694))

(assert (= (and b!7377695 (not c!1371321)) b!7377699))

(assert (= (and b!7377699 c!1371319) b!7377696))

(assert (= (and b!7377699 (not c!1371319)) b!7377698))

(assert (= (and b!7377698 c!1371318) b!7377702))

(assert (= (and b!7377698 (not c!1371318)) b!7377704))

(assert (= (or b!7377696 b!7377702) bm!678441))

(assert (= (or b!7377696 b!7377702) bm!678445))

(assert (= (or b!7377694 bm!678445) bm!678443))

(assert (= (or b!7377694 bm!678441) bm!678440))

(assert (= (or b!7377700 b!7377694) bm!678444))

(assert (= (or b!7377700 bm!678443) bm!678442))

(declare-fun m!8029044 () Bool)

(assert (=> bm!678440 m!8029044))

(declare-fun m!8029046 () Bool)

(assert (=> b!7377703 m!8029046))

(declare-fun m!8029048 () Bool)

(assert (=> b!7377697 m!8029048))

(declare-fun m!8029050 () Bool)

(assert (=> bm!678444 m!8029050))

(declare-fun m!8029052 () Bool)

(assert (=> bm!678442 m!8029052))

(assert (=> bm!678328 d!2284986))

(declare-fun b!7377705 () Bool)

(declare-fun e!4416382 () Bool)

(declare-fun e!4416384 () Bool)

(assert (=> b!7377705 (= e!4416382 e!4416384)))

(declare-fun res!2976077 () Bool)

(assert (=> b!7377705 (=> (not res!2976077) (not e!4416384))))

(declare-fun call!678451 () Bool)

(assert (=> b!7377705 (= res!2976077 call!678451)))

(declare-fun b!7377706 () Bool)

(declare-fun e!4416388 () Bool)

(declare-fun call!678453 () Bool)

(assert (=> b!7377706 (= e!4416388 call!678453)))

(declare-fun b!7377707 () Bool)

(declare-fun e!4416383 () Bool)

(declare-fun e!4416385 () Bool)

(assert (=> b!7377707 (= e!4416383 e!4416385)))

(declare-fun c!1371323 () Bool)

(assert (=> b!7377707 (= c!1371323 ((_ is Star!19307) (ite c!1371210 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))

(declare-fun b!7377708 () Bool)

(assert (=> b!7377708 (= e!4416385 e!4416388)))

(declare-fun res!2976075 () Bool)

(assert (=> b!7377708 (= res!2976075 (not (nullable!8383 (reg!19636 (ite c!1371210 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))))

(assert (=> b!7377708 (=> (not res!2976075) (not e!4416388))))

(declare-fun c!1371324 () Bool)

(declare-fun bm!678446 () Bool)

(assert (=> bm!678446 (= call!678453 (validRegex!9903 (ite c!1371323 (reg!19636 (ite c!1371210 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (ite c!1371324 (regOne!39127 (ite c!1371210 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (regTwo!39126 (ite c!1371210 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)))))))))

(declare-fun b!7377709 () Bool)

(declare-fun call!678452 () Bool)

(assert (=> b!7377709 (= e!4416384 call!678452)))

(declare-fun b!7377710 () Bool)

(declare-fun res!2976079 () Bool)

(assert (=> b!7377710 (=> res!2976079 e!4416382)))

(assert (=> b!7377710 (= res!2976079 (not ((_ is Concat!28152) (ite c!1371210 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)))))))

(declare-fun e!4416386 () Bool)

(assert (=> b!7377710 (= e!4416386 e!4416382)))

(declare-fun bm!678447 () Bool)

(assert (=> bm!678447 (= call!678451 (validRegex!9903 (ite c!1371324 (regTwo!39127 (ite c!1371210 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (regOne!39126 (ite c!1371210 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))))

(declare-fun b!7377711 () Bool)

(declare-fun res!2976078 () Bool)

(declare-fun e!4416387 () Bool)

(assert (=> b!7377711 (=> (not res!2976078) (not e!4416387))))

(assert (=> b!7377711 (= res!2976078 call!678452)))

(assert (=> b!7377711 (= e!4416386 e!4416387)))

(declare-fun bm!678448 () Bool)

(assert (=> bm!678448 (= call!678452 call!678453)))

(declare-fun d!2284988 () Bool)

(declare-fun res!2976076 () Bool)

(assert (=> d!2284988 (=> res!2976076 e!4416383)))

(assert (=> d!2284988 (= res!2976076 ((_ is ElementMatch!19307) (ite c!1371210 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))

(assert (=> d!2284988 (= (validRegex!9903 (ite c!1371210 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) e!4416383)))

(declare-fun b!7377712 () Bool)

(assert (=> b!7377712 (= e!4416387 call!678451)))

(declare-fun b!7377713 () Bool)

(assert (=> b!7377713 (= e!4416385 e!4416386)))

(assert (=> b!7377713 (= c!1371324 ((_ is Union!19307) (ite c!1371210 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))

(assert (= (and d!2284988 (not res!2976076)) b!7377707))

(assert (= (and b!7377707 c!1371323) b!7377708))

(assert (= (and b!7377707 (not c!1371323)) b!7377713))

(assert (= (and b!7377708 res!2976075) b!7377706))

(assert (= (and b!7377713 c!1371324) b!7377711))

(assert (= (and b!7377713 (not c!1371324)) b!7377710))

(assert (= (and b!7377711 res!2976078) b!7377712))

(assert (= (and b!7377710 (not res!2976079)) b!7377705))

(assert (= (and b!7377705 res!2976077) b!7377709))

(assert (= (or b!7377711 b!7377709) bm!678448))

(assert (= (or b!7377712 b!7377705) bm!678447))

(assert (= (or b!7377706 bm!678448) bm!678446))

(declare-fun m!8029054 () Bool)

(assert (=> b!7377708 m!8029054))

(declare-fun m!8029056 () Bool)

(assert (=> bm!678446 m!8029056))

(declare-fun m!8029058 () Bool)

(assert (=> bm!678447 m!8029058))

(assert (=> bm!678339 d!2284988))

(declare-fun d!2284990 () Bool)

(assert (=> d!2284990 (= (nullable!8383 (regOne!39126 (regOne!39126 r1!2370))) (nullableFct!3360 (regOne!39126 (regOne!39126 r1!2370))))))

(declare-fun bs!1921380 () Bool)

(assert (= bs!1921380 d!2284990))

(declare-fun m!8029060 () Bool)

(assert (=> bs!1921380 m!8029060))

(assert (=> b!7377191 d!2284990))

(declare-fun d!2284992 () Bool)

(assert (=> d!2284992 (= ($colon$colon!3289 (exprs!8747 lt!2616437) (ite (or c!1371207 c!1371205) (regTwo!39126 (regOne!39126 r1!2370)) (regOne!39126 r1!2370))) (Cons!71679 (ite (or c!1371207 c!1371205) (regTwo!39126 (regOne!39126 r1!2370)) (regOne!39126 r1!2370)) (exprs!8747 lt!2616437)))))

(assert (=> bm!678332 d!2284992))

(declare-fun d!2284994 () Bool)

(declare-fun lt!2616512 () Int)

(assert (=> d!2284994 (>= lt!2616512 0)))

(declare-fun e!4416391 () Int)

(assert (=> d!2284994 (= lt!2616512 e!4416391)))

(declare-fun c!1371327 () Bool)

(assert (=> d!2284994 (= c!1371327 ((_ is Nil!71679) lt!2616450))))

(assert (=> d!2284994 (= (size!42154 lt!2616450) lt!2616512)))

(declare-fun b!7377718 () Bool)

(assert (=> b!7377718 (= e!4416391 0)))

(declare-fun b!7377719 () Bool)

(assert (=> b!7377719 (= e!4416391 (+ 1 (size!42154 (t!386284 lt!2616450))))))

(assert (= (and d!2284994 c!1371327) b!7377718))

(assert (= (and d!2284994 (not c!1371327)) b!7377719))

(declare-fun m!8029062 () Bool)

(assert (=> b!7377719 m!8029062))

(assert (=> b!7377079 d!2284994))

(declare-fun d!2284996 () Bool)

(declare-fun lt!2616513 () Int)

(assert (=> d!2284996 (>= lt!2616513 0)))

(declare-fun e!4416392 () Int)

(assert (=> d!2284996 (= lt!2616513 e!4416392)))

(declare-fun c!1371328 () Bool)

(assert (=> d!2284996 (= c!1371328 ((_ is Nil!71679) (exprs!8747 cWitness!61)))))

(assert (=> d!2284996 (= (size!42154 (exprs!8747 cWitness!61)) lt!2616513)))

(declare-fun b!7377720 () Bool)

(assert (=> b!7377720 (= e!4416392 0)))

(declare-fun b!7377721 () Bool)

(assert (=> b!7377721 (= e!4416392 (+ 1 (size!42154 (t!386284 (exprs!8747 cWitness!61)))))))

(assert (= (and d!2284996 c!1371328) b!7377720))

(assert (= (and d!2284996 (not c!1371328)) b!7377721))

(declare-fun m!8029064 () Bool)

(assert (=> b!7377721 m!8029064))

(assert (=> b!7377079 d!2284996))

(declare-fun d!2284998 () Bool)

(declare-fun lt!2616514 () Int)

(assert (=> d!2284998 (>= lt!2616514 0)))

(declare-fun e!4416393 () Int)

(assert (=> d!2284998 (= lt!2616514 e!4416393)))

(declare-fun c!1371329 () Bool)

(assert (=> d!2284998 (= c!1371329 ((_ is Nil!71679) (exprs!8747 ct2!378)))))

(assert (=> d!2284998 (= (size!42154 (exprs!8747 ct2!378)) lt!2616514)))

(declare-fun b!7377722 () Bool)

(assert (=> b!7377722 (= e!4416393 0)))

(declare-fun b!7377723 () Bool)

(assert (=> b!7377723 (= e!4416393 (+ 1 (size!42154 (t!386284 (exprs!8747 ct2!378)))))))

(assert (= (and d!2284998 c!1371329) b!7377722))

(assert (= (and d!2284998 (not c!1371329)) b!7377723))

(declare-fun m!8029066 () Bool)

(assert (=> b!7377723 m!8029066))

(assert (=> b!7377079 d!2284998))

(declare-fun b!7377724 () Bool)

(declare-fun e!4416394 () (InoxSet Context!16494))

(declare-fun call!678454 () (InoxSet Context!16494))

(declare-fun call!678459 () (InoxSet Context!16494))

(assert (=> b!7377724 (= e!4416394 ((_ map or) call!678454 call!678459))))

(declare-fun d!2285000 () Bool)

(declare-fun c!1371332 () Bool)

(assert (=> d!2285000 (= c!1371332 (and ((_ is ElementMatch!19307) (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (= (c!1371127 (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) c!10362)))))

(declare-fun e!4416395 () (InoxSet Context!16494))

(assert (=> d!2285000 (= (derivationStepZipperDown!3133 (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)) (ite c!1371202 (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) (Context!16495 call!678333)) c!10362) e!4416395)))

(declare-fun b!7377725 () Bool)

(declare-fun c!1371333 () Bool)

(declare-fun e!4416396 () Bool)

(assert (=> b!7377725 (= c!1371333 e!4416396)))

(declare-fun res!2976080 () Bool)

(assert (=> b!7377725 (=> (not res!2976080) (not e!4416396))))

(assert (=> b!7377725 (= res!2976080 ((_ is Concat!28152) (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))

(declare-fun e!4416397 () (InoxSet Context!16494))

(assert (=> b!7377725 (= e!4416397 e!4416394)))

(declare-fun call!678456 () List!71803)

(declare-fun c!1371331 () Bool)

(declare-fun bm!678449 () Bool)

(assert (=> bm!678449 (= call!678456 ($colon$colon!3289 (exprs!8747 (ite c!1371202 (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) (Context!16495 call!678333))) (ite (or c!1371333 c!1371331) (regTwo!39126 (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)))))))

(declare-fun b!7377726 () Bool)

(declare-fun e!4416398 () (InoxSet Context!16494))

(declare-fun call!678455 () (InoxSet Context!16494))

(assert (=> b!7377726 (= e!4416398 call!678455)))

(declare-fun bm!678450 () Bool)

(declare-fun call!678457 () List!71803)

(assert (=> bm!678450 (= call!678457 call!678456)))

(declare-fun b!7377727 () Bool)

(assert (=> b!7377727 (= e!4416396 (nullable!8383 (regOne!39126 (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)))))))

(declare-fun c!1371334 () Bool)

(declare-fun call!678458 () (InoxSet Context!16494))

(declare-fun bm!678451 () Bool)

(assert (=> bm!678451 (= call!678458 (derivationStepZipperDown!3133 (ite c!1371334 (regOne!39127 (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (ite c!1371333 (regTwo!39126 (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (ite c!1371331 (regOne!39126 (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (reg!19636 (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)))))) (ite (or c!1371334 c!1371333) (ite c!1371202 (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) (Context!16495 call!678333)) (Context!16495 call!678457)) c!10362))))

(declare-fun b!7377728 () Bool)

(declare-fun c!1371330 () Bool)

(assert (=> b!7377728 (= c!1371330 ((_ is Star!19307) (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))

(declare-fun e!4416399 () (InoxSet Context!16494))

(assert (=> b!7377728 (= e!4416398 e!4416399)))

(declare-fun b!7377729 () Bool)

(assert (=> b!7377729 (= e!4416394 e!4416398)))

(assert (=> b!7377729 (= c!1371331 ((_ is Concat!28152) (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))

(declare-fun b!7377730 () Bool)

(assert (=> b!7377730 (= e!4416397 ((_ map or) call!678458 call!678454))))

(declare-fun b!7377731 () Bool)

(assert (=> b!7377731 (= e!4416395 e!4416397)))

(assert (=> b!7377731 (= c!1371334 ((_ is Union!19307) (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))

(declare-fun bm!678452 () Bool)

(assert (=> bm!678452 (= call!678459 call!678458)))

(declare-fun bm!678453 () Bool)

(assert (=> bm!678453 (= call!678454 (derivationStepZipperDown!3133 (ite c!1371334 (regTwo!39127 (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (regOne!39126 (ite c!1371202 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)))) (ite c!1371334 (ite c!1371202 (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) (Context!16495 call!678333)) (Context!16495 call!678456)) c!10362))))

(declare-fun b!7377732 () Bool)

(assert (=> b!7377732 (= e!4416399 call!678455)))

(declare-fun bm!678454 () Bool)

(assert (=> bm!678454 (= call!678455 call!678459)))

(declare-fun b!7377733 () Bool)

(assert (=> b!7377733 (= e!4416395 (store ((as const (Array Context!16494 Bool)) false) (ite c!1371202 (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) (Context!16495 call!678333)) true))))

(declare-fun b!7377734 () Bool)

(assert (=> b!7377734 (= e!4416399 ((as const (Array Context!16494 Bool)) false))))

(assert (= (and d!2285000 c!1371332) b!7377733))

(assert (= (and d!2285000 (not c!1371332)) b!7377731))

(assert (= (and b!7377731 c!1371334) b!7377730))

(assert (= (and b!7377731 (not c!1371334)) b!7377725))

(assert (= (and b!7377725 res!2976080) b!7377727))

(assert (= (and b!7377725 c!1371333) b!7377724))

(assert (= (and b!7377725 (not c!1371333)) b!7377729))

(assert (= (and b!7377729 c!1371331) b!7377726))

(assert (= (and b!7377729 (not c!1371331)) b!7377728))

(assert (= (and b!7377728 c!1371330) b!7377732))

(assert (= (and b!7377728 (not c!1371330)) b!7377734))

(assert (= (or b!7377726 b!7377732) bm!678450))

(assert (= (or b!7377726 b!7377732) bm!678454))

(assert (= (or b!7377724 bm!678454) bm!678452))

(assert (= (or b!7377724 bm!678450) bm!678449))

(assert (= (or b!7377730 b!7377724) bm!678453))

(assert (= (or b!7377730 bm!678452) bm!678451))

(declare-fun m!8029068 () Bool)

(assert (=> bm!678449 m!8029068))

(declare-fun m!8029070 () Bool)

(assert (=> b!7377733 m!8029070))

(declare-fun m!8029072 () Bool)

(assert (=> b!7377727 m!8029072))

(declare-fun m!8029074 () Bool)

(assert (=> bm!678453 m!8029074))

(declare-fun m!8029076 () Bool)

(assert (=> bm!678451 m!8029076))

(assert (=> bm!678330 d!2285000))

(assert (=> b!7377241 d!2284760))

(declare-fun d!2285002 () Bool)

(declare-fun res!2976085 () Bool)

(declare-fun e!4416404 () Bool)

(assert (=> d!2285002 (=> res!2976085 e!4416404)))

(assert (=> d!2285002 (= res!2976085 ((_ is Nil!71679) (exprs!8747 ct1!282)))))

(assert (=> d!2285002 (= (forall!18103 (exprs!8747 ct1!282) lambda!458380) e!4416404)))

(declare-fun b!7377739 () Bool)

(declare-fun e!4416405 () Bool)

(assert (=> b!7377739 (= e!4416404 e!4416405)))

(declare-fun res!2976086 () Bool)

(assert (=> b!7377739 (=> (not res!2976086) (not e!4416405))))

(declare-fun dynLambda!29531 (Int Regex!19307) Bool)

(assert (=> b!7377739 (= res!2976086 (dynLambda!29531 lambda!458380 (h!78127 (exprs!8747 ct1!282))))))

(declare-fun b!7377740 () Bool)

(assert (=> b!7377740 (= e!4416405 (forall!18103 (t!386284 (exprs!8747 ct1!282)) lambda!458380))))

(assert (= (and d!2285002 (not res!2976085)) b!7377739))

(assert (= (and b!7377739 res!2976086) b!7377740))

(declare-fun b_lambda!284615 () Bool)

(assert (=> (not b_lambda!284615) (not b!7377739)))

(declare-fun m!8029078 () Bool)

(assert (=> b!7377739 m!8029078))

(declare-fun m!8029080 () Bool)

(assert (=> b!7377740 m!8029080))

(assert (=> d!2284826 d!2285002))

(declare-fun b!7377743 () Bool)

(declare-fun res!2976087 () Bool)

(declare-fun e!4416407 () Bool)

(assert (=> b!7377743 (=> (not res!2976087) (not e!4416407))))

(declare-fun lt!2616515 () List!71803)

(assert (=> b!7377743 (= res!2976087 (= (size!42154 lt!2616515) (+ (size!42154 (t!386284 (exprs!8747 cWitness!61))) (size!42154 (exprs!8747 ct2!378)))))))

(declare-fun b!7377741 () Bool)

(declare-fun e!4416406 () List!71803)

(assert (=> b!7377741 (= e!4416406 (exprs!8747 ct2!378))))

(declare-fun d!2285004 () Bool)

(assert (=> d!2285004 e!4416407))

(declare-fun res!2976088 () Bool)

(assert (=> d!2285004 (=> (not res!2976088) (not e!4416407))))

(assert (=> d!2285004 (= res!2976088 (= (content!15176 lt!2616515) ((_ map or) (content!15176 (t!386284 (exprs!8747 cWitness!61))) (content!15176 (exprs!8747 ct2!378)))))))

(assert (=> d!2285004 (= lt!2616515 e!4416406)))

(declare-fun c!1371335 () Bool)

(assert (=> d!2285004 (= c!1371335 ((_ is Nil!71679) (t!386284 (exprs!8747 cWitness!61))))))

(assert (=> d!2285004 (= (++!17123 (t!386284 (exprs!8747 cWitness!61)) (exprs!8747 ct2!378)) lt!2616515)))

(declare-fun b!7377744 () Bool)

(assert (=> b!7377744 (= e!4416407 (or (not (= (exprs!8747 ct2!378) Nil!71679)) (= lt!2616515 (t!386284 (exprs!8747 cWitness!61)))))))

(declare-fun b!7377742 () Bool)

(assert (=> b!7377742 (= e!4416406 (Cons!71679 (h!78127 (t!386284 (exprs!8747 cWitness!61))) (++!17123 (t!386284 (t!386284 (exprs!8747 cWitness!61))) (exprs!8747 ct2!378))))))

(assert (= (and d!2285004 c!1371335) b!7377741))

(assert (= (and d!2285004 (not c!1371335)) b!7377742))

(assert (= (and d!2285004 res!2976088) b!7377743))

(assert (= (and b!7377743 res!2976087) b!7377744))

(declare-fun m!8029082 () Bool)

(assert (=> b!7377743 m!8029082))

(assert (=> b!7377743 m!8029064))

(assert (=> b!7377743 m!8028526))

(declare-fun m!8029084 () Bool)

(assert (=> d!2285004 m!8029084))

(declare-fun m!8029086 () Bool)

(assert (=> d!2285004 m!8029086))

(assert (=> d!2285004 m!8028532))

(declare-fun m!8029088 () Bool)

(assert (=> b!7377742 m!8029088))

(assert (=> b!7377078 d!2285004))

(declare-fun d!2285006 () Bool)

(declare-fun res!2976089 () Bool)

(declare-fun e!4416408 () Bool)

(assert (=> d!2285006 (=> res!2976089 e!4416408)))

(assert (=> d!2285006 (= res!2976089 ((_ is Nil!71679) (++!17123 lt!2616441 (exprs!8747 ct2!378))))))

(assert (=> d!2285006 (= (forall!18103 (++!17123 lt!2616441 (exprs!8747 ct2!378)) lambda!458361) e!4416408)))

(declare-fun b!7377745 () Bool)

(declare-fun e!4416409 () Bool)

(assert (=> b!7377745 (= e!4416408 e!4416409)))

(declare-fun res!2976090 () Bool)

(assert (=> b!7377745 (=> (not res!2976090) (not e!4416409))))

(assert (=> b!7377745 (= res!2976090 (dynLambda!29531 lambda!458361 (h!78127 (++!17123 lt!2616441 (exprs!8747 ct2!378)))))))

(declare-fun b!7377746 () Bool)

(assert (=> b!7377746 (= e!4416409 (forall!18103 (t!386284 (++!17123 lt!2616441 (exprs!8747 ct2!378))) lambda!458361))))

(assert (= (and d!2285006 (not res!2976089)) b!7377745))

(assert (= (and b!7377745 res!2976090) b!7377746))

(declare-fun b_lambda!284617 () Bool)

(assert (=> (not b_lambda!284617) (not b!7377745)))

(declare-fun m!8029090 () Bool)

(assert (=> b!7377745 m!8029090))

(declare-fun m!8029092 () Bool)

(assert (=> b!7377746 m!8029092))

(assert (=> d!2284810 d!2285006))

(assert (=> d!2284810 d!2284806))

(declare-fun d!2285008 () Bool)

(assert (=> d!2285008 (forall!18103 (++!17123 lt!2616441 (exprs!8747 ct2!378)) lambda!458361)))

(assert (=> d!2285008 true))

(declare-fun _$78!963 () Unit!165563)

(assert (=> d!2285008 (= (choose!57333 lt!2616441 (exprs!8747 ct2!378) lambda!458361) _$78!963)))

(declare-fun bs!1921381 () Bool)

(assert (= bs!1921381 d!2285008))

(assert (=> bs!1921381 m!8028446))

(assert (=> bs!1921381 m!8028446))

(assert (=> bs!1921381 m!8028652))

(assert (=> d!2284810 d!2285008))

(declare-fun d!2285010 () Bool)

(declare-fun res!2976091 () Bool)

(declare-fun e!4416410 () Bool)

(assert (=> d!2285010 (=> res!2976091 e!4416410)))

(assert (=> d!2285010 (= res!2976091 ((_ is Nil!71679) lt!2616441))))

(assert (=> d!2285010 (= (forall!18103 lt!2616441 lambda!458361) e!4416410)))

(declare-fun b!7377747 () Bool)

(declare-fun e!4416411 () Bool)

(assert (=> b!7377747 (= e!4416410 e!4416411)))

(declare-fun res!2976092 () Bool)

(assert (=> b!7377747 (=> (not res!2976092) (not e!4416411))))

(assert (=> b!7377747 (= res!2976092 (dynLambda!29531 lambda!458361 (h!78127 lt!2616441)))))

(declare-fun b!7377748 () Bool)

(assert (=> b!7377748 (= e!4416411 (forall!18103 (t!386284 lt!2616441) lambda!458361))))

(assert (= (and d!2285010 (not res!2976091)) b!7377747))

(assert (= (and b!7377747 res!2976092) b!7377748))

(declare-fun b_lambda!284619 () Bool)

(assert (=> (not b_lambda!284619) (not b!7377747)))

(declare-fun m!8029094 () Bool)

(assert (=> b!7377747 m!8029094))

(declare-fun m!8029096 () Bool)

(assert (=> b!7377748 m!8029096))

(assert (=> d!2284810 d!2285010))

(declare-fun d!2285012 () Bool)

(declare-fun lt!2616516 () Int)

(assert (=> d!2285012 (>= lt!2616516 0)))

(declare-fun e!4416412 () Int)

(assert (=> d!2285012 (= lt!2616516 e!4416412)))

(declare-fun c!1371336 () Bool)

(assert (=> d!2285012 (= c!1371336 ((_ is Nil!71679) lt!2616478))))

(assert (=> d!2285012 (= (size!42154 lt!2616478) lt!2616516)))

(declare-fun b!7377749 () Bool)

(assert (=> b!7377749 (= e!4416412 0)))

(declare-fun b!7377750 () Bool)

(assert (=> b!7377750 (= e!4416412 (+ 1 (size!42154 (t!386284 lt!2616478))))))

(assert (= (and d!2285012 c!1371336) b!7377749))

(assert (= (and d!2285012 (not c!1371336)) b!7377750))

(declare-fun m!8029098 () Bool)

(assert (=> b!7377750 m!8029098))

(assert (=> b!7377216 d!2285012))

(declare-fun d!2285014 () Bool)

(declare-fun lt!2616517 () Int)

(assert (=> d!2285014 (>= lt!2616517 0)))

(declare-fun e!4416413 () Int)

(assert (=> d!2285014 (= lt!2616517 e!4416413)))

(declare-fun c!1371337 () Bool)

(assert (=> d!2285014 (= c!1371337 ((_ is Nil!71679) (exprs!8747 ct1!282)))))

(assert (=> d!2285014 (= (size!42154 (exprs!8747 ct1!282)) lt!2616517)))

(declare-fun b!7377751 () Bool)

(assert (=> b!7377751 (= e!4416413 0)))

(declare-fun b!7377752 () Bool)

(assert (=> b!7377752 (= e!4416413 (+ 1 (size!42154 (t!386284 (exprs!8747 ct1!282)))))))

(assert (= (and d!2285014 c!1371337) b!7377751))

(assert (= (and d!2285014 (not c!1371337)) b!7377752))

(declare-fun m!8029100 () Bool)

(assert (=> b!7377752 m!8029100))

(assert (=> b!7377216 d!2285014))

(assert (=> b!7377216 d!2284998))

(declare-fun b!7377753 () Bool)

(declare-fun e!4416414 () (InoxSet Context!16494))

(declare-fun call!678460 () (InoxSet Context!16494))

(declare-fun call!678465 () (InoxSet Context!16494))

(assert (=> b!7377753 (= e!4416414 ((_ map or) call!678460 call!678465))))

(declare-fun d!2285016 () Bool)

(declare-fun c!1371340 () Bool)

(assert (=> d!2285016 (= c!1371340 (and ((_ is ElementMatch!19307) (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) (= (c!1371127 (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) c!10362)))))

(declare-fun e!4416415 () (InoxSet Context!16494))

(assert (=> d!2285016 (= (derivationStepZipperDown!3133 (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370))) (ite c!1371195 (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) (Context!16495 call!678327)) c!10362) e!4416415)))

(declare-fun b!7377754 () Bool)

(declare-fun c!1371341 () Bool)

(declare-fun e!4416416 () Bool)

(assert (=> b!7377754 (= c!1371341 e!4416416)))

(declare-fun res!2976093 () Bool)

(assert (=> b!7377754 (=> (not res!2976093) (not e!4416416))))

(assert (=> b!7377754 (= res!2976093 ((_ is Concat!28152) (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))))))

(declare-fun e!4416417 () (InoxSet Context!16494))

(assert (=> b!7377754 (= e!4416417 e!4416414)))

(declare-fun c!1371339 () Bool)

(declare-fun bm!678455 () Bool)

(declare-fun call!678462 () List!71803)

(assert (=> bm!678455 (= call!678462 ($colon$colon!3289 (exprs!8747 (ite c!1371195 (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) (Context!16495 call!678327))) (ite (or c!1371341 c!1371339) (regTwo!39126 (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370))))))))

(declare-fun b!7377755 () Bool)

(declare-fun e!4416418 () (InoxSet Context!16494))

(declare-fun call!678461 () (InoxSet Context!16494))

(assert (=> b!7377755 (= e!4416418 call!678461)))

(declare-fun bm!678456 () Bool)

(declare-fun call!678463 () List!71803)

(assert (=> bm!678456 (= call!678463 call!678462)))

(declare-fun b!7377756 () Bool)

(assert (=> b!7377756 (= e!4416416 (nullable!8383 (regOne!39126 (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370))))))))

(declare-fun c!1371342 () Bool)

(declare-fun call!678464 () (InoxSet Context!16494))

(declare-fun bm!678457 () Bool)

(assert (=> bm!678457 (= call!678464 (derivationStepZipperDown!3133 (ite c!1371342 (regOne!39127 (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) (ite c!1371341 (regTwo!39126 (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) (ite c!1371339 (regOne!39126 (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) (reg!19636 (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370))))))) (ite (or c!1371342 c!1371341) (ite c!1371195 (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) (Context!16495 call!678327)) (Context!16495 call!678463)) c!10362))))

(declare-fun b!7377757 () Bool)

(declare-fun c!1371338 () Bool)

(assert (=> b!7377757 (= c!1371338 ((_ is Star!19307) (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))))))

(declare-fun e!4416419 () (InoxSet Context!16494))

(assert (=> b!7377757 (= e!4416418 e!4416419)))

(declare-fun b!7377758 () Bool)

(assert (=> b!7377758 (= e!4416414 e!4416418)))

(assert (=> b!7377758 (= c!1371339 ((_ is Concat!28152) (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))))))

(declare-fun b!7377759 () Bool)

(assert (=> b!7377759 (= e!4416417 ((_ map or) call!678464 call!678460))))

(declare-fun b!7377760 () Bool)

(assert (=> b!7377760 (= e!4416415 e!4416417)))

(assert (=> b!7377760 (= c!1371342 ((_ is Union!19307) (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))))))

(declare-fun bm!678458 () Bool)

(assert (=> bm!678458 (= call!678465 call!678464)))

(declare-fun bm!678459 () Bool)

(assert (=> bm!678459 (= call!678460 (derivationStepZipperDown!3133 (ite c!1371342 (regTwo!39127 (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) (regOne!39126 (ite c!1371195 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370))))) (ite c!1371342 (ite c!1371195 (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) (Context!16495 call!678327)) (Context!16495 call!678462)) c!10362))))

(declare-fun b!7377761 () Bool)

(assert (=> b!7377761 (= e!4416419 call!678461)))

(declare-fun bm!678460 () Bool)

(assert (=> bm!678460 (= call!678461 call!678465)))

(declare-fun b!7377762 () Bool)

(assert (=> b!7377762 (= e!4416415 (store ((as const (Array Context!16494 Bool)) false) (ite c!1371195 (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))) (Context!16495 call!678327)) true))))

(declare-fun b!7377763 () Bool)

(assert (=> b!7377763 (= e!4416419 ((as const (Array Context!16494 Bool)) false))))

(assert (= (and d!2285016 c!1371340) b!7377762))

(assert (= (and d!2285016 (not c!1371340)) b!7377760))

(assert (= (and b!7377760 c!1371342) b!7377759))

(assert (= (and b!7377760 (not c!1371342)) b!7377754))

(assert (= (and b!7377754 res!2976093) b!7377756))

(assert (= (and b!7377754 c!1371341) b!7377753))

(assert (= (and b!7377754 (not c!1371341)) b!7377758))

(assert (= (and b!7377758 c!1371339) b!7377755))

(assert (= (and b!7377758 (not c!1371339)) b!7377757))

(assert (= (and b!7377757 c!1371338) b!7377761))

(assert (= (and b!7377757 (not c!1371338)) b!7377763))

(assert (= (or b!7377755 b!7377761) bm!678456))

(assert (= (or b!7377755 b!7377761) bm!678460))

(assert (= (or b!7377753 bm!678460) bm!678458))

(assert (= (or b!7377753 bm!678456) bm!678455))

(assert (= (or b!7377759 b!7377753) bm!678459))

(assert (= (or b!7377759 bm!678458) bm!678457))

(declare-fun m!8029102 () Bool)

(assert (=> bm!678455 m!8029102))

(declare-fun m!8029104 () Bool)

(assert (=> b!7377762 m!8029104))

(declare-fun m!8029106 () Bool)

(assert (=> b!7377756 m!8029106))

(declare-fun m!8029108 () Bool)

(assert (=> bm!678459 m!8029108))

(declare-fun m!8029110 () Bool)

(assert (=> bm!678457 m!8029110))

(assert (=> bm!678324 d!2285016))

(declare-fun b!7377764 () Bool)

(declare-fun e!4416420 () (InoxSet Context!16494))

(declare-fun call!678466 () (InoxSet Context!16494))

(declare-fun call!678471 () (InoxSet Context!16494))

(assert (=> b!7377764 (= e!4416420 ((_ map or) call!678466 call!678471))))

(declare-fun d!2285018 () Bool)

(declare-fun c!1371345 () Bool)

(assert (=> d!2285018 (= c!1371345 (and ((_ is ElementMatch!19307) (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) (= (c!1371127 (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) c!10362)))))

(declare-fun e!4416421 () (InoxSet Context!16494))

(assert (=> d!2285018 (= (derivationStepZipperDown!3133 (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370)))) (ite (or c!1371215 c!1371214) ct1!282 (Context!16495 call!678349)) c!10362) e!4416421)))

(declare-fun b!7377765 () Bool)

(declare-fun c!1371346 () Bool)

(declare-fun e!4416422 () Bool)

(assert (=> b!7377765 (= c!1371346 e!4416422)))

(declare-fun res!2976094 () Bool)

(assert (=> b!7377765 (=> (not res!2976094) (not e!4416422))))

(assert (=> b!7377765 (= res!2976094 ((_ is Concat!28152) (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370))))))))

(declare-fun e!4416423 () (InoxSet Context!16494))

(assert (=> b!7377765 (= e!4416423 e!4416420)))

(declare-fun c!1371344 () Bool)

(declare-fun call!678468 () List!71803)

(declare-fun bm!678461 () Bool)

(assert (=> bm!678461 (= call!678468 ($colon$colon!3289 (exprs!8747 (ite (or c!1371215 c!1371214) ct1!282 (Context!16495 call!678349))) (ite (or c!1371346 c!1371344) (regTwo!39126 (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370)))))))))

(declare-fun b!7377766 () Bool)

(declare-fun e!4416424 () (InoxSet Context!16494))

(declare-fun call!678467 () (InoxSet Context!16494))

(assert (=> b!7377766 (= e!4416424 call!678467)))

(declare-fun bm!678462 () Bool)

(declare-fun call!678469 () List!71803)

(assert (=> bm!678462 (= call!678469 call!678468)))

(declare-fun b!7377767 () Bool)

(assert (=> b!7377767 (= e!4416422 (nullable!8383 (regOne!39126 (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370)))))))))

(declare-fun c!1371347 () Bool)

(declare-fun call!678470 () (InoxSet Context!16494))

(declare-fun bm!678463 () Bool)

(assert (=> bm!678463 (= call!678470 (derivationStepZipperDown!3133 (ite c!1371347 (regOne!39127 (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) (ite c!1371346 (regTwo!39126 (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) (ite c!1371344 (regOne!39126 (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) (reg!19636 (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370)))))))) (ite (or c!1371347 c!1371346) (ite (or c!1371215 c!1371214) ct1!282 (Context!16495 call!678349)) (Context!16495 call!678469)) c!10362))))

(declare-fun b!7377768 () Bool)

(declare-fun c!1371343 () Bool)

(assert (=> b!7377768 (= c!1371343 ((_ is Star!19307) (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370))))))))

(declare-fun e!4416425 () (InoxSet Context!16494))

(assert (=> b!7377768 (= e!4416424 e!4416425)))

(declare-fun b!7377769 () Bool)

(assert (=> b!7377769 (= e!4416420 e!4416424)))

(assert (=> b!7377769 (= c!1371344 ((_ is Concat!28152) (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370))))))))

(declare-fun b!7377770 () Bool)

(assert (=> b!7377770 (= e!4416423 ((_ map or) call!678470 call!678466))))

(declare-fun b!7377771 () Bool)

(assert (=> b!7377771 (= e!4416421 e!4416423)))

(assert (=> b!7377771 (= c!1371347 ((_ is Union!19307) (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370))))))))

(declare-fun bm!678464 () Bool)

(assert (=> bm!678464 (= call!678471 call!678470)))

(declare-fun bm!678465 () Bool)

(assert (=> bm!678465 (= call!678466 (derivationStepZipperDown!3133 (ite c!1371347 (regTwo!39127 (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370))))) (regOne!39126 (ite c!1371215 (regOne!39127 r1!2370) (ite c!1371214 (regTwo!39126 r1!2370) (ite c!1371212 (regOne!39126 r1!2370) (reg!19636 r1!2370)))))) (ite c!1371347 (ite (or c!1371215 c!1371214) ct1!282 (Context!16495 call!678349)) (Context!16495 call!678468)) c!10362))))

(declare-fun b!7377772 () Bool)

(assert (=> b!7377772 (= e!4416425 call!678467)))

(declare-fun bm!678466 () Bool)

(assert (=> bm!678466 (= call!678467 call!678471)))

(declare-fun b!7377773 () Bool)

(assert (=> b!7377773 (= e!4416421 (store ((as const (Array Context!16494 Bool)) false) (ite (or c!1371215 c!1371214) ct1!282 (Context!16495 call!678349)) true))))

(declare-fun b!7377774 () Bool)

(assert (=> b!7377774 (= e!4416425 ((as const (Array Context!16494 Bool)) false))))

(assert (= (and d!2285018 c!1371345) b!7377773))

(assert (= (and d!2285018 (not c!1371345)) b!7377771))

(assert (= (and b!7377771 c!1371347) b!7377770))

(assert (= (and b!7377771 (not c!1371347)) b!7377765))

(assert (= (and b!7377765 res!2976094) b!7377767))

(assert (= (and b!7377765 c!1371346) b!7377764))

(assert (= (and b!7377765 (not c!1371346)) b!7377769))

(assert (= (and b!7377769 c!1371344) b!7377766))

(assert (= (and b!7377769 (not c!1371344)) b!7377768))

(assert (= (and b!7377768 c!1371343) b!7377772))

(assert (= (and b!7377768 (not c!1371343)) b!7377774))

(assert (= (or b!7377766 b!7377772) bm!678462))

(assert (= (or b!7377766 b!7377772) bm!678466))

(assert (= (or b!7377764 bm!678466) bm!678464))

(assert (= (or b!7377764 bm!678462) bm!678461))

(assert (= (or b!7377770 b!7377764) bm!678465))

(assert (= (or b!7377770 bm!678464) bm!678463))

(declare-fun m!8029112 () Bool)

(assert (=> bm!678461 m!8029112))

(declare-fun m!8029114 () Bool)

(assert (=> b!7377773 m!8029114))

(declare-fun m!8029116 () Bool)

(assert (=> b!7377767 m!8029116))

(declare-fun m!8029118 () Bool)

(assert (=> bm!678465 m!8029118))

(declare-fun m!8029120 () Bool)

(assert (=> bm!678463 m!8029120))

(assert (=> bm!678343 d!2285018))

(declare-fun b!7377775 () Bool)

(declare-fun e!4416426 () Bool)

(declare-fun e!4416428 () Bool)

(assert (=> b!7377775 (= e!4416426 e!4416428)))

(declare-fun res!2976097 () Bool)

(assert (=> b!7377775 (=> (not res!2976097) (not e!4416428))))

(declare-fun call!678472 () Bool)

(assert (=> b!7377775 (= res!2976097 call!678472)))

(declare-fun b!7377776 () Bool)

(declare-fun e!4416432 () Bool)

(declare-fun call!678474 () Bool)

(assert (=> b!7377776 (= e!4416432 call!678474)))

(declare-fun b!7377777 () Bool)

(declare-fun e!4416427 () Bool)

(declare-fun e!4416429 () Bool)

(assert (=> b!7377777 (= e!4416427 e!4416429)))

(declare-fun c!1371348 () Bool)

(assert (=> b!7377777 (= c!1371348 ((_ is Star!19307) (ite c!1371153 (regTwo!39127 (regTwo!39126 r1!2370)) (regOne!39126 (regTwo!39126 r1!2370)))))))

(declare-fun b!7377778 () Bool)

(assert (=> b!7377778 (= e!4416429 e!4416432)))

(declare-fun res!2976095 () Bool)

(assert (=> b!7377778 (= res!2976095 (not (nullable!8383 (reg!19636 (ite c!1371153 (regTwo!39127 (regTwo!39126 r1!2370)) (regOne!39126 (regTwo!39126 r1!2370)))))))))

(assert (=> b!7377778 (=> (not res!2976095) (not e!4416432))))

(declare-fun c!1371349 () Bool)

(declare-fun bm!678467 () Bool)

(assert (=> bm!678467 (= call!678474 (validRegex!9903 (ite c!1371348 (reg!19636 (ite c!1371153 (regTwo!39127 (regTwo!39126 r1!2370)) (regOne!39126 (regTwo!39126 r1!2370)))) (ite c!1371349 (regOne!39127 (ite c!1371153 (regTwo!39127 (regTwo!39126 r1!2370)) (regOne!39126 (regTwo!39126 r1!2370)))) (regTwo!39126 (ite c!1371153 (regTwo!39127 (regTwo!39126 r1!2370)) (regOne!39126 (regTwo!39126 r1!2370))))))))))

(declare-fun b!7377779 () Bool)

(declare-fun call!678473 () Bool)

(assert (=> b!7377779 (= e!4416428 call!678473)))

(declare-fun b!7377780 () Bool)

(declare-fun res!2976099 () Bool)

(assert (=> b!7377780 (=> res!2976099 e!4416426)))

(assert (=> b!7377780 (= res!2976099 (not ((_ is Concat!28152) (ite c!1371153 (regTwo!39127 (regTwo!39126 r1!2370)) (regOne!39126 (regTwo!39126 r1!2370))))))))

(declare-fun e!4416430 () Bool)

(assert (=> b!7377780 (= e!4416430 e!4416426)))

(declare-fun bm!678468 () Bool)

(assert (=> bm!678468 (= call!678472 (validRegex!9903 (ite c!1371349 (regTwo!39127 (ite c!1371153 (regTwo!39127 (regTwo!39126 r1!2370)) (regOne!39126 (regTwo!39126 r1!2370)))) (regOne!39126 (ite c!1371153 (regTwo!39127 (regTwo!39126 r1!2370)) (regOne!39126 (regTwo!39126 r1!2370)))))))))

(declare-fun b!7377781 () Bool)

(declare-fun res!2976098 () Bool)

(declare-fun e!4416431 () Bool)

(assert (=> b!7377781 (=> (not res!2976098) (not e!4416431))))

(assert (=> b!7377781 (= res!2976098 call!678473)))

(assert (=> b!7377781 (= e!4416430 e!4416431)))

(declare-fun bm!678469 () Bool)

(assert (=> bm!678469 (= call!678473 call!678474)))

(declare-fun d!2285020 () Bool)

(declare-fun res!2976096 () Bool)

(assert (=> d!2285020 (=> res!2976096 e!4416427)))

(assert (=> d!2285020 (= res!2976096 ((_ is ElementMatch!19307) (ite c!1371153 (regTwo!39127 (regTwo!39126 r1!2370)) (regOne!39126 (regTwo!39126 r1!2370)))))))

(assert (=> d!2285020 (= (validRegex!9903 (ite c!1371153 (regTwo!39127 (regTwo!39126 r1!2370)) (regOne!39126 (regTwo!39126 r1!2370)))) e!4416427)))

(declare-fun b!7377782 () Bool)

(assert (=> b!7377782 (= e!4416431 call!678472)))

(declare-fun b!7377783 () Bool)

(assert (=> b!7377783 (= e!4416429 e!4416430)))

(assert (=> b!7377783 (= c!1371349 ((_ is Union!19307) (ite c!1371153 (regTwo!39127 (regTwo!39126 r1!2370)) (regOne!39126 (regTwo!39126 r1!2370)))))))

(assert (= (and d!2285020 (not res!2976096)) b!7377777))

(assert (= (and b!7377777 c!1371348) b!7377778))

(assert (= (and b!7377777 (not c!1371348)) b!7377783))

(assert (= (and b!7377778 res!2976095) b!7377776))

(assert (= (and b!7377783 c!1371349) b!7377781))

(assert (= (and b!7377783 (not c!1371349)) b!7377780))

(assert (= (and b!7377781 res!2976098) b!7377782))

(assert (= (and b!7377780 (not res!2976099)) b!7377775))

(assert (= (and b!7377775 res!2976097) b!7377779))

(assert (= (or b!7377781 b!7377779) bm!678469))

(assert (= (or b!7377782 b!7377775) bm!678468))

(assert (= (or b!7377776 bm!678469) bm!678467))

(declare-fun m!8029122 () Bool)

(assert (=> b!7377778 m!8029122))

(declare-fun m!8029124 () Bool)

(assert (=> bm!678467 m!8029124))

(declare-fun m!8029126 () Bool)

(assert (=> bm!678468 m!8029126))

(assert (=> bm!678282 d!2285020))

(declare-fun b!7377786 () Bool)

(declare-fun res!2976100 () Bool)

(declare-fun e!4416434 () Bool)

(assert (=> b!7377786 (=> (not res!2976100) (not e!4416434))))

(declare-fun lt!2616518 () List!71803)

(assert (=> b!7377786 (= res!2976100 (= (size!42154 lt!2616518) (+ (size!42154 (t!386284 (exprs!8747 ct1!282))) (size!42154 (exprs!8747 ct2!378)))))))

(declare-fun b!7377784 () Bool)

(declare-fun e!4416433 () List!71803)

(assert (=> b!7377784 (= e!4416433 (exprs!8747 ct2!378))))

(declare-fun d!2285022 () Bool)

(assert (=> d!2285022 e!4416434))

(declare-fun res!2976101 () Bool)

(assert (=> d!2285022 (=> (not res!2976101) (not e!4416434))))

(assert (=> d!2285022 (= res!2976101 (= (content!15176 lt!2616518) ((_ map or) (content!15176 (t!386284 (exprs!8747 ct1!282))) (content!15176 (exprs!8747 ct2!378)))))))

(assert (=> d!2285022 (= lt!2616518 e!4416433)))

(declare-fun c!1371350 () Bool)

(assert (=> d!2285022 (= c!1371350 ((_ is Nil!71679) (t!386284 (exprs!8747 ct1!282))))))

(assert (=> d!2285022 (= (++!17123 (t!386284 (exprs!8747 ct1!282)) (exprs!8747 ct2!378)) lt!2616518)))

(declare-fun b!7377787 () Bool)

(assert (=> b!7377787 (= e!4416434 (or (not (= (exprs!8747 ct2!378) Nil!71679)) (= lt!2616518 (t!386284 (exprs!8747 ct1!282)))))))

(declare-fun b!7377785 () Bool)

(assert (=> b!7377785 (= e!4416433 (Cons!71679 (h!78127 (t!386284 (exprs!8747 ct1!282))) (++!17123 (t!386284 (t!386284 (exprs!8747 ct1!282))) (exprs!8747 ct2!378))))))

(assert (= (and d!2285022 c!1371350) b!7377784))

(assert (= (and d!2285022 (not c!1371350)) b!7377785))

(assert (= (and d!2285022 res!2976101) b!7377786))

(assert (= (and b!7377786 res!2976100) b!7377787))

(declare-fun m!8029128 () Bool)

(assert (=> b!7377786 m!8029128))

(assert (=> b!7377786 m!8029100))

(assert (=> b!7377786 m!8028526))

(declare-fun m!8029130 () Bool)

(assert (=> d!2285022 m!8029130))

(declare-fun m!8029132 () Bool)

(assert (=> d!2285022 m!8029132))

(assert (=> d!2285022 m!8028532))

(declare-fun m!8029134 () Bool)

(assert (=> b!7377785 m!8029134))

(assert (=> b!7377215 d!2285022))

(declare-fun b!7377802 () Bool)

(declare-fun e!4416452 () Bool)

(declare-fun e!4416451 () Bool)

(assert (=> b!7377802 (= e!4416452 e!4416451)))

(declare-fun res!2976114 () Bool)

(declare-fun call!678480 () Bool)

(assert (=> b!7377802 (= res!2976114 call!678480)))

(assert (=> b!7377802 (=> (not res!2976114) (not e!4416451))))

(declare-fun b!7377803 () Bool)

(declare-fun e!4416450 () Bool)

(assert (=> b!7377803 (= e!4416452 e!4416450)))

(declare-fun res!2976115 () Bool)

(declare-fun call!678479 () Bool)

(assert (=> b!7377803 (= res!2976115 call!678479)))

(assert (=> b!7377803 (=> res!2976115 e!4416450)))

(declare-fun b!7377804 () Bool)

(assert (=> b!7377804 (= e!4416451 call!678479)))

(declare-fun bm!678474 () Bool)

(declare-fun c!1371353 () Bool)

(assert (=> bm!678474 (= call!678479 (nullable!8383 (ite c!1371353 (regOne!39127 (regOne!39126 r1!2370)) (regTwo!39126 (regOne!39126 r1!2370)))))))

(declare-fun d!2285024 () Bool)

(declare-fun res!2976116 () Bool)

(declare-fun e!4416447 () Bool)

(assert (=> d!2285024 (=> res!2976116 e!4416447)))

(assert (=> d!2285024 (= res!2976116 ((_ is EmptyExpr!19307) (regOne!39126 r1!2370)))))

(assert (=> d!2285024 (= (nullableFct!3360 (regOne!39126 r1!2370)) e!4416447)))

(declare-fun b!7377805 () Bool)

(declare-fun e!4416449 () Bool)

(assert (=> b!7377805 (= e!4416449 e!4416452)))

(assert (=> b!7377805 (= c!1371353 ((_ is Union!19307) (regOne!39126 r1!2370)))))

(declare-fun b!7377806 () Bool)

(declare-fun e!4416448 () Bool)

(assert (=> b!7377806 (= e!4416448 e!4416449)))

(declare-fun res!2976113 () Bool)

(assert (=> b!7377806 (=> res!2976113 e!4416449)))

(assert (=> b!7377806 (= res!2976113 ((_ is Star!19307) (regOne!39126 r1!2370)))))

(declare-fun bm!678475 () Bool)

(assert (=> bm!678475 (= call!678480 (nullable!8383 (ite c!1371353 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))))))

(declare-fun b!7377807 () Bool)

(assert (=> b!7377807 (= e!4416447 e!4416448)))

(declare-fun res!2976112 () Bool)

(assert (=> b!7377807 (=> (not res!2976112) (not e!4416448))))

(assert (=> b!7377807 (= res!2976112 (and (not ((_ is EmptyLang!19307) (regOne!39126 r1!2370))) (not ((_ is ElementMatch!19307) (regOne!39126 r1!2370)))))))

(declare-fun b!7377808 () Bool)

(assert (=> b!7377808 (= e!4416450 call!678480)))

(assert (= (and d!2285024 (not res!2976116)) b!7377807))

(assert (= (and b!7377807 res!2976112) b!7377806))

(assert (= (and b!7377806 (not res!2976113)) b!7377805))

(assert (= (and b!7377805 c!1371353) b!7377803))

(assert (= (and b!7377805 (not c!1371353)) b!7377802))

(assert (= (and b!7377803 (not res!2976115)) b!7377808))

(assert (= (and b!7377802 res!2976114) b!7377804))

(assert (= (or b!7377808 b!7377802) bm!678475))

(assert (= (or b!7377803 b!7377804) bm!678474))

(declare-fun m!8029136 () Bool)

(assert (=> bm!678474 m!8029136))

(declare-fun m!8029138 () Bool)

(assert (=> bm!678475 m!8029138))

(assert (=> d!2284760 d!2285024))

(declare-fun d!2285026 () Bool)

(declare-fun res!2976117 () Bool)

(declare-fun e!4416453 () Bool)

(assert (=> d!2285026 (=> res!2976117 e!4416453)))

(assert (=> d!2285026 (= res!2976117 ((_ is Nil!71679) (exprs!8747 ct2!378)))))

(assert (=> d!2285026 (= (forall!18103 (exprs!8747 ct2!378) lambda!458381) e!4416453)))

(declare-fun b!7377809 () Bool)

(declare-fun e!4416454 () Bool)

(assert (=> b!7377809 (= e!4416453 e!4416454)))

(declare-fun res!2976118 () Bool)

(assert (=> b!7377809 (=> (not res!2976118) (not e!4416454))))

(assert (=> b!7377809 (= res!2976118 (dynLambda!29531 lambda!458381 (h!78127 (exprs!8747 ct2!378))))))

(declare-fun b!7377810 () Bool)

(assert (=> b!7377810 (= e!4416454 (forall!18103 (t!386284 (exprs!8747 ct2!378)) lambda!458381))))

(assert (= (and d!2285026 (not res!2976117)) b!7377809))

(assert (= (and b!7377809 res!2976118) b!7377810))

(declare-fun b_lambda!284621 () Bool)

(assert (=> (not b_lambda!284621) (not b!7377809)))

(declare-fun m!8029140 () Bool)

(assert (=> b!7377809 m!8029140))

(declare-fun m!8029142 () Bool)

(assert (=> b!7377810 m!8029142))

(assert (=> d!2284828 d!2285026))

(declare-fun d!2285028 () Bool)

(declare-fun lt!2616519 () Int)

(assert (=> d!2285028 (>= lt!2616519 0)))

(declare-fun e!4416455 () Int)

(assert (=> d!2285028 (= lt!2616519 e!4416455)))

(declare-fun c!1371354 () Bool)

(assert (=> d!2285028 (= c!1371354 ((_ is Nil!71679) lt!2616467))))

(assert (=> d!2285028 (= (size!42154 lt!2616467) lt!2616519)))

(declare-fun b!7377811 () Bool)

(assert (=> b!7377811 (= e!4416455 0)))

(declare-fun b!7377812 () Bool)

(assert (=> b!7377812 (= e!4416455 (+ 1 (size!42154 (t!386284 lt!2616467))))))

(assert (= (and d!2285028 c!1371354) b!7377811))

(assert (= (and d!2285028 (not c!1371354)) b!7377812))

(declare-fun m!8029144 () Bool)

(assert (=> b!7377812 m!8029144))

(assert (=> b!7377201 d!2285028))

(declare-fun d!2285030 () Bool)

(declare-fun lt!2616520 () Int)

(assert (=> d!2285030 (>= lt!2616520 0)))

(declare-fun e!4416456 () Int)

(assert (=> d!2285030 (= lt!2616520 e!4416456)))

(declare-fun c!1371355 () Bool)

(assert (=> d!2285030 (= c!1371355 ((_ is Nil!71679) lt!2616441))))

(assert (=> d!2285030 (= (size!42154 lt!2616441) lt!2616520)))

(declare-fun b!7377813 () Bool)

(assert (=> b!7377813 (= e!4416456 0)))

(declare-fun b!7377814 () Bool)

(assert (=> b!7377814 (= e!4416456 (+ 1 (size!42154 (t!386284 lt!2616441))))))

(assert (= (and d!2285030 c!1371355) b!7377813))

(assert (= (and d!2285030 (not c!1371355)) b!7377814))

(declare-fun m!8029146 () Bool)

(assert (=> b!7377814 m!8029146))

(assert (=> b!7377201 d!2285030))

(assert (=> b!7377201 d!2284998))

(declare-fun b!7377817 () Bool)

(declare-fun res!2976119 () Bool)

(declare-fun e!4416458 () Bool)

(assert (=> b!7377817 (=> (not res!2976119) (not e!4416458))))

(declare-fun lt!2616521 () List!71803)

(assert (=> b!7377817 (= res!2976119 (= (size!42154 lt!2616521) (+ (size!42154 (t!386284 lt!2616441)) (size!42154 (exprs!8747 ct2!378)))))))

(declare-fun b!7377815 () Bool)

(declare-fun e!4416457 () List!71803)

(assert (=> b!7377815 (= e!4416457 (exprs!8747 ct2!378))))

(declare-fun d!2285032 () Bool)

(assert (=> d!2285032 e!4416458))

(declare-fun res!2976120 () Bool)

(assert (=> d!2285032 (=> (not res!2976120) (not e!4416458))))

(assert (=> d!2285032 (= res!2976120 (= (content!15176 lt!2616521) ((_ map or) (content!15176 (t!386284 lt!2616441)) (content!15176 (exprs!8747 ct2!378)))))))

(assert (=> d!2285032 (= lt!2616521 e!4416457)))

(declare-fun c!1371356 () Bool)

(assert (=> d!2285032 (= c!1371356 ((_ is Nil!71679) (t!386284 lt!2616441)))))

(assert (=> d!2285032 (= (++!17123 (t!386284 lt!2616441) (exprs!8747 ct2!378)) lt!2616521)))

(declare-fun b!7377818 () Bool)

(assert (=> b!7377818 (= e!4416458 (or (not (= (exprs!8747 ct2!378) Nil!71679)) (= lt!2616521 (t!386284 lt!2616441))))))

(declare-fun b!7377816 () Bool)

(assert (=> b!7377816 (= e!4416457 (Cons!71679 (h!78127 (t!386284 lt!2616441)) (++!17123 (t!386284 (t!386284 lt!2616441)) (exprs!8747 ct2!378))))))

(assert (= (and d!2285032 c!1371356) b!7377815))

(assert (= (and d!2285032 (not c!1371356)) b!7377816))

(assert (= (and d!2285032 res!2976120) b!7377817))

(assert (= (and b!7377817 res!2976119) b!7377818))

(declare-fun m!8029148 () Bool)

(assert (=> b!7377817 m!8029148))

(assert (=> b!7377817 m!8029146))

(assert (=> b!7377817 m!8028526))

(declare-fun m!8029150 () Bool)

(assert (=> d!2285032 m!8029150))

(assert (=> d!2285032 m!8029020))

(assert (=> d!2285032 m!8028532))

(declare-fun m!8029152 () Bool)

(assert (=> b!7377816 m!8029152))

(assert (=> b!7377200 d!2285032))

(declare-fun b!7377819 () Bool)

(declare-fun e!4416459 () (InoxSet Context!16494))

(declare-fun call!678481 () (InoxSet Context!16494))

(declare-fun call!678486 () (InoxSet Context!16494))

(assert (=> b!7377819 (= e!4416459 ((_ map or) call!678481 call!678486))))

(declare-fun d!2285034 () Bool)

(declare-fun c!1371359 () Bool)

(assert (=> d!2285034 (= c!1371359 (and ((_ is ElementMatch!19307) (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) (= (c!1371127 (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) c!10362)))))

(declare-fun e!4416460 () (InoxSet Context!16494))

(assert (=> d!2285034 (= (derivationStepZipperDown!3133 (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370))))) (ite (or c!1371208 c!1371207) lt!2616437 (Context!16495 call!678340)) c!10362) e!4416460)))

(declare-fun b!7377820 () Bool)

(declare-fun c!1371360 () Bool)

(declare-fun e!4416461 () Bool)

(assert (=> b!7377820 (= c!1371360 e!4416461)))

(declare-fun res!2976121 () Bool)

(assert (=> b!7377820 (=> (not res!2976121) (not e!4416461))))

(assert (=> b!7377820 (= res!2976121 ((_ is Concat!28152) (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))))))

(declare-fun e!4416462 () (InoxSet Context!16494))

(assert (=> b!7377820 (= e!4416462 e!4416459)))

(declare-fun c!1371358 () Bool)

(declare-fun call!678483 () List!71803)

(declare-fun bm!678476 () Bool)

(assert (=> bm!678476 (= call!678483 ($colon$colon!3289 (exprs!8747 (ite (or c!1371208 c!1371207) lt!2616437 (Context!16495 call!678340))) (ite (or c!1371360 c!1371358) (regTwo!39126 (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370))))))))))

(declare-fun b!7377821 () Bool)

(declare-fun e!4416463 () (InoxSet Context!16494))

(declare-fun call!678482 () (InoxSet Context!16494))

(assert (=> b!7377821 (= e!4416463 call!678482)))

(declare-fun bm!678477 () Bool)

(declare-fun call!678484 () List!71803)

(assert (=> bm!678477 (= call!678484 call!678483)))

(declare-fun b!7377822 () Bool)

(assert (=> b!7377822 (= e!4416461 (nullable!8383 (regOne!39126 (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370))))))))))

(declare-fun bm!678478 () Bool)

(declare-fun call!678485 () (InoxSet Context!16494))

(declare-fun c!1371361 () Bool)

(assert (=> bm!678478 (= call!678485 (derivationStepZipperDown!3133 (ite c!1371361 (regOne!39127 (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) (ite c!1371360 (regTwo!39126 (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) (ite c!1371358 (regOne!39126 (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) (reg!19636 (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370))))))))) (ite (or c!1371361 c!1371360) (ite (or c!1371208 c!1371207) lt!2616437 (Context!16495 call!678340)) (Context!16495 call!678484)) c!10362))))

(declare-fun c!1371357 () Bool)

(declare-fun b!7377823 () Bool)

(assert (=> b!7377823 (= c!1371357 ((_ is Star!19307) (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))))))

(declare-fun e!4416464 () (InoxSet Context!16494))

(assert (=> b!7377823 (= e!4416463 e!4416464)))

(declare-fun b!7377824 () Bool)

(assert (=> b!7377824 (= e!4416459 e!4416463)))

(assert (=> b!7377824 (= c!1371358 ((_ is Concat!28152) (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))))))

(declare-fun b!7377825 () Bool)

(assert (=> b!7377825 (= e!4416462 ((_ map or) call!678485 call!678481))))

(declare-fun b!7377826 () Bool)

(assert (=> b!7377826 (= e!4416460 e!4416462)))

(assert (=> b!7377826 (= c!1371361 ((_ is Union!19307) (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))))))

(declare-fun bm!678479 () Bool)

(assert (=> bm!678479 (= call!678486 call!678485)))

(declare-fun bm!678480 () Bool)

(assert (=> bm!678480 (= call!678481 (derivationStepZipperDown!3133 (ite c!1371361 (regTwo!39127 (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370)))))) (regOne!39126 (ite c!1371208 (regOne!39127 (regOne!39126 r1!2370)) (ite c!1371207 (regTwo!39126 (regOne!39126 r1!2370)) (ite c!1371205 (regOne!39126 (regOne!39126 r1!2370)) (reg!19636 (regOne!39126 r1!2370))))))) (ite c!1371361 (ite (or c!1371208 c!1371207) lt!2616437 (Context!16495 call!678340)) (Context!16495 call!678483)) c!10362))))

(declare-fun b!7377827 () Bool)

(assert (=> b!7377827 (= e!4416464 call!678482)))

(declare-fun bm!678481 () Bool)

(assert (=> bm!678481 (= call!678482 call!678486)))

(declare-fun b!7377828 () Bool)

(assert (=> b!7377828 (= e!4416460 (store ((as const (Array Context!16494 Bool)) false) (ite (or c!1371208 c!1371207) lt!2616437 (Context!16495 call!678340)) true))))

(declare-fun b!7377829 () Bool)

(assert (=> b!7377829 (= e!4416464 ((as const (Array Context!16494 Bool)) false))))

(assert (= (and d!2285034 c!1371359) b!7377828))

(assert (= (and d!2285034 (not c!1371359)) b!7377826))

(assert (= (and b!7377826 c!1371361) b!7377825))

(assert (= (and b!7377826 (not c!1371361)) b!7377820))

(assert (= (and b!7377820 res!2976121) b!7377822))

(assert (= (and b!7377820 c!1371360) b!7377819))

(assert (= (and b!7377820 (not c!1371360)) b!7377824))

(assert (= (and b!7377824 c!1371358) b!7377821))

(assert (= (and b!7377824 (not c!1371358)) b!7377823))

(assert (= (and b!7377823 c!1371357) b!7377827))

(assert (= (and b!7377823 (not c!1371357)) b!7377829))

(assert (= (or b!7377821 b!7377827) bm!678477))

(assert (= (or b!7377821 b!7377827) bm!678481))

(assert (= (or b!7377819 bm!678481) bm!678479))

(assert (= (or b!7377819 bm!678477) bm!678476))

(assert (= (or b!7377825 b!7377819) bm!678480))

(assert (= (or b!7377825 bm!678479) bm!678478))

(declare-fun m!8029154 () Bool)

(assert (=> bm!678476 m!8029154))

(declare-fun m!8029156 () Bool)

(assert (=> b!7377828 m!8029156))

(declare-fun m!8029158 () Bool)

(assert (=> b!7377822 m!8029158))

(declare-fun m!8029160 () Bool)

(assert (=> bm!678480 m!8029160))

(declare-fun m!8029162 () Bool)

(assert (=> bm!678478 m!8029162))

(assert (=> bm!678334 d!2285034))

(declare-fun b!7377830 () Bool)

(declare-fun e!4416465 () (InoxSet Context!16494))

(declare-fun call!678487 () (InoxSet Context!16494))

(declare-fun call!678492 () (InoxSet Context!16494))

(assert (=> b!7377830 (= e!4416465 ((_ map or) call!678487 call!678492))))

(declare-fun c!1371364 () Bool)

(declare-fun d!2285036 () Bool)

(assert (=> d!2285036 (= c!1371364 (and ((_ is ElementMatch!19307) (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (= (c!1371127 (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) c!10362)))))

(declare-fun e!4416466 () (InoxSet Context!16494))

(assert (=> d!2285036 (= (derivationStepZipperDown!3133 (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)) (ite c!1371215 ct1!282 (Context!16495 call!678348)) c!10362) e!4416466)))

(declare-fun b!7377831 () Bool)

(declare-fun c!1371365 () Bool)

(declare-fun e!4416467 () Bool)

(assert (=> b!7377831 (= c!1371365 e!4416467)))

(declare-fun res!2976122 () Bool)

(assert (=> b!7377831 (=> (not res!2976122) (not e!4416467))))

(assert (=> b!7377831 (= res!2976122 ((_ is Concat!28152) (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))

(declare-fun e!4416468 () (InoxSet Context!16494))

(assert (=> b!7377831 (= e!4416468 e!4416465)))

(declare-fun c!1371363 () Bool)

(declare-fun bm!678482 () Bool)

(declare-fun call!678489 () List!71803)

(assert (=> bm!678482 (= call!678489 ($colon$colon!3289 (exprs!8747 (ite c!1371215 ct1!282 (Context!16495 call!678348))) (ite (or c!1371365 c!1371363) (regTwo!39126 (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)))))))

(declare-fun b!7377832 () Bool)

(declare-fun e!4416469 () (InoxSet Context!16494))

(declare-fun call!678488 () (InoxSet Context!16494))

(assert (=> b!7377832 (= e!4416469 call!678488)))

(declare-fun bm!678483 () Bool)

(declare-fun call!678490 () List!71803)

(assert (=> bm!678483 (= call!678490 call!678489)))

(declare-fun b!7377833 () Bool)

(assert (=> b!7377833 (= e!4416467 (nullable!8383 (regOne!39126 (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)))))))

(declare-fun call!678491 () (InoxSet Context!16494))

(declare-fun c!1371366 () Bool)

(declare-fun bm!678484 () Bool)

(assert (=> bm!678484 (= call!678491 (derivationStepZipperDown!3133 (ite c!1371366 (regOne!39127 (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (ite c!1371365 (regTwo!39126 (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (ite c!1371363 (regOne!39126 (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (reg!19636 (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)))))) (ite (or c!1371366 c!1371365) (ite c!1371215 ct1!282 (Context!16495 call!678348)) (Context!16495 call!678490)) c!10362))))

(declare-fun b!7377834 () Bool)

(declare-fun c!1371362 () Bool)

(assert (=> b!7377834 (= c!1371362 ((_ is Star!19307) (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))

(declare-fun e!4416470 () (InoxSet Context!16494))

(assert (=> b!7377834 (= e!4416469 e!4416470)))

(declare-fun b!7377835 () Bool)

(assert (=> b!7377835 (= e!4416465 e!4416469)))

(assert (=> b!7377835 (= c!1371363 ((_ is Concat!28152) (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))

(declare-fun b!7377836 () Bool)

(assert (=> b!7377836 (= e!4416468 ((_ map or) call!678491 call!678487))))

(declare-fun b!7377837 () Bool)

(assert (=> b!7377837 (= e!4416466 e!4416468)))

(assert (=> b!7377837 (= c!1371366 ((_ is Union!19307) (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))))))

(declare-fun bm!678485 () Bool)

(assert (=> bm!678485 (= call!678492 call!678491)))

(declare-fun bm!678486 () Bool)

(assert (=> bm!678486 (= call!678487 (derivationStepZipperDown!3133 (ite c!1371366 (regTwo!39127 (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370))) (regOne!39126 (ite c!1371215 (regTwo!39127 r1!2370) (regOne!39126 r1!2370)))) (ite c!1371366 (ite c!1371215 ct1!282 (Context!16495 call!678348)) (Context!16495 call!678489)) c!10362))))

(declare-fun b!7377838 () Bool)

(assert (=> b!7377838 (= e!4416470 call!678488)))

(declare-fun bm!678487 () Bool)

(assert (=> bm!678487 (= call!678488 call!678492)))

(declare-fun b!7377839 () Bool)

(assert (=> b!7377839 (= e!4416466 (store ((as const (Array Context!16494 Bool)) false) (ite c!1371215 ct1!282 (Context!16495 call!678348)) true))))

(declare-fun b!7377840 () Bool)

(assert (=> b!7377840 (= e!4416470 ((as const (Array Context!16494 Bool)) false))))

(assert (= (and d!2285036 c!1371364) b!7377839))

(assert (= (and d!2285036 (not c!1371364)) b!7377837))

(assert (= (and b!7377837 c!1371366) b!7377836))

(assert (= (and b!7377837 (not c!1371366)) b!7377831))

(assert (= (and b!7377831 res!2976122) b!7377833))

(assert (= (and b!7377831 c!1371365) b!7377830))

(assert (= (and b!7377831 (not c!1371365)) b!7377835))

(assert (= (and b!7377835 c!1371363) b!7377832))

(assert (= (and b!7377835 (not c!1371363)) b!7377834))

(assert (= (and b!7377834 c!1371362) b!7377838))

(assert (= (and b!7377834 (not c!1371362)) b!7377840))

(assert (= (or b!7377832 b!7377838) bm!678483))

(assert (= (or b!7377832 b!7377838) bm!678487))

(assert (= (or b!7377830 bm!678487) bm!678485))

(assert (= (or b!7377830 bm!678483) bm!678482))

(assert (= (or b!7377836 b!7377830) bm!678486))

(assert (= (or b!7377836 bm!678485) bm!678484))

(declare-fun m!8029164 () Bool)

(assert (=> bm!678482 m!8029164))

(declare-fun m!8029166 () Bool)

(assert (=> b!7377839 m!8029166))

(declare-fun m!8029168 () Bool)

(assert (=> b!7377833 m!8029168))

(declare-fun m!8029170 () Bool)

(assert (=> bm!678486 m!8029170))

(declare-fun m!8029172 () Bool)

(assert (=> bm!678484 m!8029172))

(assert (=> bm!678345 d!2285036))

(assert (=> b!7377221 d!2284990))

(declare-fun d!2285038 () Bool)

(declare-fun res!2976123 () Bool)

(declare-fun e!4416471 () Bool)

(assert (=> d!2285038 (=> res!2976123 e!4416471)))

(assert (=> d!2285038 (= res!2976123 ((_ is Nil!71679) (exprs!8747 cWitness!61)))))

(assert (=> d!2285038 (= (forall!18103 (exprs!8747 cWitness!61) lambda!458379) e!4416471)))

(declare-fun b!7377841 () Bool)

(declare-fun e!4416472 () Bool)

(assert (=> b!7377841 (= e!4416471 e!4416472)))

(declare-fun res!2976124 () Bool)

(assert (=> b!7377841 (=> (not res!2976124) (not e!4416472))))

(assert (=> b!7377841 (= res!2976124 (dynLambda!29531 lambda!458379 (h!78127 (exprs!8747 cWitness!61))))))

(declare-fun b!7377842 () Bool)

(assert (=> b!7377842 (= e!4416472 (forall!18103 (t!386284 (exprs!8747 cWitness!61)) lambda!458379))))

(assert (= (and d!2285038 (not res!2976123)) b!7377841))

(assert (= (and b!7377841 res!2976124) b!7377842))

(declare-fun b_lambda!284623 () Bool)

(assert (=> (not b_lambda!284623) (not b!7377841)))

(declare-fun m!8029174 () Bool)

(assert (=> b!7377841 m!8029174))

(declare-fun m!8029176 () Bool)

(assert (=> b!7377842 m!8029176))

(assert (=> d!2284824 d!2285038))

(declare-fun b!7377843 () Bool)

(declare-fun e!4416473 () (InoxSet Context!16494))

(declare-fun call!678493 () (InoxSet Context!16494))

(declare-fun call!678498 () (InoxSet Context!16494))

(assert (=> b!7377843 (= e!4416473 ((_ map or) call!678493 call!678498))))

(declare-fun c!1371369 () Bool)

(declare-fun d!2285040 () Bool)

(assert (=> d!2285040 (= c!1371369 (and ((_ is ElementMatch!19307) (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) (= (c!1371127 (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) c!10362)))))

(declare-fun e!4416474 () (InoxSet Context!16494))

(assert (=> d!2285040 (= (derivationStepZipperDown!3133 (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370))) (ite c!1371208 lt!2616437 (Context!16495 call!678339)) c!10362) e!4416474)))

(declare-fun b!7377844 () Bool)

(declare-fun c!1371370 () Bool)

(declare-fun e!4416475 () Bool)

(assert (=> b!7377844 (= c!1371370 e!4416475)))

(declare-fun res!2976125 () Bool)

(assert (=> b!7377844 (=> (not res!2976125) (not e!4416475))))

(assert (=> b!7377844 (= res!2976125 ((_ is Concat!28152) (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))))))

(declare-fun e!4416476 () (InoxSet Context!16494))

(assert (=> b!7377844 (= e!4416476 e!4416473)))

(declare-fun call!678495 () List!71803)

(declare-fun bm!678488 () Bool)

(declare-fun c!1371368 () Bool)

(assert (=> bm!678488 (= call!678495 ($colon$colon!3289 (exprs!8747 (ite c!1371208 lt!2616437 (Context!16495 call!678339))) (ite (or c!1371370 c!1371368) (regTwo!39126 (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370))))))))

(declare-fun b!7377845 () Bool)

(declare-fun e!4416477 () (InoxSet Context!16494))

(declare-fun call!678494 () (InoxSet Context!16494))

(assert (=> b!7377845 (= e!4416477 call!678494)))

(declare-fun bm!678489 () Bool)

(declare-fun call!678496 () List!71803)

(assert (=> bm!678489 (= call!678496 call!678495)))

(declare-fun b!7377846 () Bool)

(assert (=> b!7377846 (= e!4416475 (nullable!8383 (regOne!39126 (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370))))))))

(declare-fun c!1371371 () Bool)

(declare-fun bm!678490 () Bool)

(declare-fun call!678497 () (InoxSet Context!16494))

(assert (=> bm!678490 (= call!678497 (derivationStepZipperDown!3133 (ite c!1371371 (regOne!39127 (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) (ite c!1371370 (regTwo!39126 (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) (ite c!1371368 (regOne!39126 (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) (reg!19636 (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370))))))) (ite (or c!1371371 c!1371370) (ite c!1371208 lt!2616437 (Context!16495 call!678339)) (Context!16495 call!678496)) c!10362))))

(declare-fun b!7377847 () Bool)

(declare-fun c!1371367 () Bool)

(assert (=> b!7377847 (= c!1371367 ((_ is Star!19307) (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))))))

(declare-fun e!4416478 () (InoxSet Context!16494))

(assert (=> b!7377847 (= e!4416477 e!4416478)))

(declare-fun b!7377848 () Bool)

(assert (=> b!7377848 (= e!4416473 e!4416477)))

(assert (=> b!7377848 (= c!1371368 ((_ is Concat!28152) (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))))))

(declare-fun b!7377849 () Bool)

(assert (=> b!7377849 (= e!4416476 ((_ map or) call!678497 call!678493))))

(declare-fun b!7377850 () Bool)

(assert (=> b!7377850 (= e!4416474 e!4416476)))

(assert (=> b!7377850 (= c!1371371 ((_ is Union!19307) (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))))))

(declare-fun bm!678491 () Bool)

(assert (=> bm!678491 (= call!678498 call!678497)))

(declare-fun bm!678492 () Bool)

(assert (=> bm!678492 (= call!678493 (derivationStepZipperDown!3133 (ite c!1371371 (regTwo!39127 (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370)))) (regOne!39126 (ite c!1371208 (regTwo!39127 (regOne!39126 r1!2370)) (regOne!39126 (regOne!39126 r1!2370))))) (ite c!1371371 (ite c!1371208 lt!2616437 (Context!16495 call!678339)) (Context!16495 call!678495)) c!10362))))

(declare-fun b!7377851 () Bool)

(assert (=> b!7377851 (= e!4416478 call!678494)))

(declare-fun bm!678493 () Bool)

(assert (=> bm!678493 (= call!678494 call!678498)))

(declare-fun b!7377852 () Bool)

(assert (=> b!7377852 (= e!4416474 (store ((as const (Array Context!16494 Bool)) false) (ite c!1371208 lt!2616437 (Context!16495 call!678339)) true))))

(declare-fun b!7377853 () Bool)

(assert (=> b!7377853 (= e!4416478 ((as const (Array Context!16494 Bool)) false))))

(assert (= (and d!2285040 c!1371369) b!7377852))

(assert (= (and d!2285040 (not c!1371369)) b!7377850))

(assert (= (and b!7377850 c!1371371) b!7377849))

(assert (= (and b!7377850 (not c!1371371)) b!7377844))

(assert (= (and b!7377844 res!2976125) b!7377846))

(assert (= (and b!7377844 c!1371370) b!7377843))

(assert (= (and b!7377844 (not c!1371370)) b!7377848))

(assert (= (and b!7377848 c!1371368) b!7377845))

(assert (= (and b!7377848 (not c!1371368)) b!7377847))

(assert (= (and b!7377847 c!1371367) b!7377851))

(assert (= (and b!7377847 (not c!1371367)) b!7377853))

(assert (= (or b!7377845 b!7377851) bm!678489))

(assert (= (or b!7377845 b!7377851) bm!678493))

(assert (= (or b!7377843 bm!678493) bm!678491))

(assert (= (or b!7377843 bm!678489) bm!678488))

(assert (= (or b!7377849 b!7377843) bm!678492))

(assert (= (or b!7377849 bm!678491) bm!678490))

(declare-fun m!8029178 () Bool)

(assert (=> bm!678488 m!8029178))

(declare-fun m!8029180 () Bool)

(assert (=> b!7377852 m!8029180))

(declare-fun m!8029182 () Bool)

(assert (=> b!7377846 m!8029182))

(declare-fun m!8029184 () Bool)

(assert (=> bm!678492 m!8029184))

(declare-fun m!8029186 () Bool)

(assert (=> bm!678490 m!8029186))

(assert (=> bm!678336 d!2285040))

(declare-fun d!2285042 () Bool)

(declare-fun res!2976126 () Bool)

(declare-fun e!4416479 () Bool)

(assert (=> d!2285042 (=> res!2976126 e!4416479)))

(assert (=> d!2285042 (= res!2976126 ((_ is Nil!71679) (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))))))

(assert (=> d!2285042 (= (forall!18103 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378)) lambda!458361) e!4416479)))

(declare-fun b!7377854 () Bool)

(declare-fun e!4416480 () Bool)

(assert (=> b!7377854 (= e!4416479 e!4416480)))

(declare-fun res!2976127 () Bool)

(assert (=> b!7377854 (=> (not res!2976127) (not e!4416480))))

(assert (=> b!7377854 (= res!2976127 (dynLambda!29531 lambda!458361 (h!78127 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378)))))))

(declare-fun b!7377855 () Bool)

(assert (=> b!7377855 (= e!4416480 (forall!18103 (t!386284 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))) lambda!458361))))

(assert (= (and d!2285042 (not res!2976126)) b!7377854))

(assert (= (and b!7377854 res!2976127) b!7377855))

(declare-fun b_lambda!284625 () Bool)

(assert (=> (not b_lambda!284625) (not b!7377854)))

(declare-fun m!8029188 () Bool)

(assert (=> b!7377854 m!8029188))

(declare-fun m!8029190 () Bool)

(assert (=> b!7377855 m!8029190))

(assert (=> d!2284816 d!2285042))

(assert (=> d!2284816 d!2284814))

(declare-fun d!2285044 () Bool)

(assert (=> d!2285044 (forall!18103 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378)) lambda!458361)))

(assert (=> d!2285044 true))

(declare-fun _$78!964 () Unit!165563)

(assert (=> d!2285044 (= (choose!57333 (exprs!8747 ct1!282) (exprs!8747 ct2!378) lambda!458361) _$78!964)))

(declare-fun bs!1921382 () Bool)

(assert (= bs!1921382 d!2285044))

(assert (=> bs!1921382 m!8028460))

(assert (=> bs!1921382 m!8028460))

(assert (=> bs!1921382 m!8028676))

(assert (=> d!2284816 d!2285044))

(declare-fun d!2285046 () Bool)

(declare-fun res!2976128 () Bool)

(declare-fun e!4416481 () Bool)

(assert (=> d!2285046 (=> res!2976128 e!4416481)))

(assert (=> d!2285046 (= res!2976128 ((_ is Nil!71679) (exprs!8747 ct1!282)))))

(assert (=> d!2285046 (= (forall!18103 (exprs!8747 ct1!282) lambda!458361) e!4416481)))

(declare-fun b!7377856 () Bool)

(declare-fun e!4416482 () Bool)

(assert (=> b!7377856 (= e!4416481 e!4416482)))

(declare-fun res!2976129 () Bool)

(assert (=> b!7377856 (=> (not res!2976129) (not e!4416482))))

(assert (=> b!7377856 (= res!2976129 (dynLambda!29531 lambda!458361 (h!78127 (exprs!8747 ct1!282))))))

(declare-fun b!7377857 () Bool)

(assert (=> b!7377857 (= e!4416482 (forall!18103 (t!386284 (exprs!8747 ct1!282)) lambda!458361))))

(assert (= (and d!2285046 (not res!2976128)) b!7377856))

(assert (= (and b!7377856 res!2976129) b!7377857))

(declare-fun b_lambda!284627 () Bool)

(assert (=> (not b_lambda!284627) (not b!7377856)))

(declare-fun m!8029192 () Bool)

(assert (=> b!7377856 m!8029192))

(declare-fun m!8029194 () Bool)

(assert (=> b!7377857 m!8029194))

(assert (=> d!2284816 d!2285046))

(assert (=> b!7377206 d!2284760))

(declare-fun d!2285048 () Bool)

(declare-fun c!1371372 () Bool)

(assert (=> d!2285048 (= c!1371372 ((_ is Nil!71679) lt!2616478))))

(declare-fun e!4416483 () (InoxSet Regex!19307))

(assert (=> d!2285048 (= (content!15176 lt!2616478) e!4416483)))

(declare-fun b!7377858 () Bool)

(assert (=> b!7377858 (= e!4416483 ((as const (Array Regex!19307 Bool)) false))))

(declare-fun b!7377859 () Bool)

(assert (=> b!7377859 (= e!4416483 ((_ map or) (store ((as const (Array Regex!19307 Bool)) false) (h!78127 lt!2616478) true) (content!15176 (t!386284 lt!2616478))))))

(assert (= (and d!2285048 c!1371372) b!7377858))

(assert (= (and d!2285048 (not c!1371372)) b!7377859))

(declare-fun m!8029196 () Bool)

(assert (=> b!7377859 m!8029196))

(declare-fun m!8029198 () Bool)

(assert (=> b!7377859 m!8029198))

(assert (=> d!2284814 d!2285048))

(declare-fun d!2285050 () Bool)

(declare-fun c!1371373 () Bool)

(assert (=> d!2285050 (= c!1371373 ((_ is Nil!71679) (exprs!8747 ct1!282)))))

(declare-fun e!4416484 () (InoxSet Regex!19307))

(assert (=> d!2285050 (= (content!15176 (exprs!8747 ct1!282)) e!4416484)))

(declare-fun b!7377860 () Bool)

(assert (=> b!7377860 (= e!4416484 ((as const (Array Regex!19307 Bool)) false))))

(declare-fun b!7377861 () Bool)

(assert (=> b!7377861 (= e!4416484 ((_ map or) (store ((as const (Array Regex!19307 Bool)) false) (h!78127 (exprs!8747 ct1!282)) true) (content!15176 (t!386284 (exprs!8747 ct1!282)))))))

(assert (= (and d!2285050 c!1371373) b!7377860))

(assert (= (and d!2285050 (not c!1371373)) b!7377861))

(declare-fun m!8029200 () Bool)

(assert (=> b!7377861 m!8029200))

(assert (=> b!7377861 m!8029132))

(assert (=> d!2284814 d!2285050))

(assert (=> d!2284814 d!2284978))

(declare-fun d!2285052 () Bool)

(declare-fun res!2976130 () Bool)

(declare-fun e!4416485 () Bool)

(assert (=> d!2285052 (=> res!2976130 e!4416485)))

(assert (=> d!2285052 (= res!2976130 ((_ is Nil!71679) (++!17123 (exprs!8747 cWitness!61) (exprs!8747 ct2!378))))))

(assert (=> d!2285052 (= (forall!18103 (++!17123 (exprs!8747 cWitness!61) (exprs!8747 ct2!378)) lambda!458361) e!4416485)))

(declare-fun b!7377862 () Bool)

(declare-fun e!4416486 () Bool)

(assert (=> b!7377862 (= e!4416485 e!4416486)))

(declare-fun res!2976131 () Bool)

(assert (=> b!7377862 (=> (not res!2976131) (not e!4416486))))

(assert (=> b!7377862 (= res!2976131 (dynLambda!29531 lambda!458361 (h!78127 (++!17123 (exprs!8747 cWitness!61) (exprs!8747 ct2!378)))))))

(declare-fun b!7377863 () Bool)

(assert (=> b!7377863 (= e!4416486 (forall!18103 (t!386284 (++!17123 (exprs!8747 cWitness!61) (exprs!8747 ct2!378))) lambda!458361))))

(assert (= (and d!2285052 (not res!2976130)) b!7377862))

(assert (= (and b!7377862 res!2976131) b!7377863))

(declare-fun b_lambda!284629 () Bool)

(assert (=> (not b_lambda!284629) (not b!7377862)))

(declare-fun m!8029202 () Bool)

(assert (=> b!7377862 m!8029202))

(declare-fun m!8029204 () Bool)

(assert (=> b!7377863 m!8029204))

(assert (=> d!2284780 d!2285052))

(assert (=> d!2284780 d!2284772))

(declare-fun d!2285054 () Bool)

(assert (=> d!2285054 (forall!18103 (++!17123 (exprs!8747 cWitness!61) (exprs!8747 ct2!378)) lambda!458361)))

(assert (=> d!2285054 true))

(declare-fun _$78!965 () Unit!165563)

(assert (=> d!2285054 (= (choose!57333 (exprs!8747 cWitness!61) (exprs!8747 ct2!378) lambda!458361) _$78!965)))

(declare-fun bs!1921383 () Bool)

(assert (= bs!1921383 d!2285054))

(assert (=> bs!1921383 m!8028452))

(assert (=> bs!1921383 m!8028452))

(assert (=> bs!1921383 m!8028564))

(assert (=> d!2284780 d!2285054))

(declare-fun d!2285056 () Bool)

(declare-fun res!2976132 () Bool)

(declare-fun e!4416487 () Bool)

(assert (=> d!2285056 (=> res!2976132 e!4416487)))

(assert (=> d!2285056 (= res!2976132 ((_ is Nil!71679) (exprs!8747 cWitness!61)))))

(assert (=> d!2285056 (= (forall!18103 (exprs!8747 cWitness!61) lambda!458361) e!4416487)))

(declare-fun b!7377864 () Bool)

(declare-fun e!4416488 () Bool)

(assert (=> b!7377864 (= e!4416487 e!4416488)))

(declare-fun res!2976133 () Bool)

(assert (=> b!7377864 (=> (not res!2976133) (not e!4416488))))

(assert (=> b!7377864 (= res!2976133 (dynLambda!29531 lambda!458361 (h!78127 (exprs!8747 cWitness!61))))))

(declare-fun b!7377865 () Bool)

(assert (=> b!7377865 (= e!4416488 (forall!18103 (t!386284 (exprs!8747 cWitness!61)) lambda!458361))))

(assert (= (and d!2285056 (not res!2976132)) b!7377864))

(assert (= (and b!7377864 res!2976133) b!7377865))

(declare-fun b_lambda!284631 () Bool)

(assert (=> (not b_lambda!284631) (not b!7377864)))

(declare-fun m!8029206 () Bool)

(assert (=> b!7377864 m!8029206))

(declare-fun m!8029208 () Bool)

(assert (=> b!7377865 m!8029208))

(assert (=> d!2284780 d!2285056))

(declare-fun d!2285058 () Bool)

(declare-fun c!1371374 () Bool)

(assert (=> d!2285058 (= c!1371374 ((_ is Nil!71679) lt!2616450))))

(declare-fun e!4416489 () (InoxSet Regex!19307))

(assert (=> d!2285058 (= (content!15176 lt!2616450) e!4416489)))

(declare-fun b!7377866 () Bool)

(assert (=> b!7377866 (= e!4416489 ((as const (Array Regex!19307 Bool)) false))))

(declare-fun b!7377867 () Bool)

(assert (=> b!7377867 (= e!4416489 ((_ map or) (store ((as const (Array Regex!19307 Bool)) false) (h!78127 lt!2616450) true) (content!15176 (t!386284 lt!2616450))))))

(assert (= (and d!2285058 c!1371374) b!7377866))

(assert (= (and d!2285058 (not c!1371374)) b!7377867))

(declare-fun m!8029210 () Bool)

(assert (=> b!7377867 m!8029210))

(declare-fun m!8029212 () Bool)

(assert (=> b!7377867 m!8029212))

(assert (=> d!2284772 d!2285058))

(declare-fun d!2285060 () Bool)

(declare-fun c!1371375 () Bool)

(assert (=> d!2285060 (= c!1371375 ((_ is Nil!71679) (exprs!8747 cWitness!61)))))

(declare-fun e!4416490 () (InoxSet Regex!19307))

(assert (=> d!2285060 (= (content!15176 (exprs!8747 cWitness!61)) e!4416490)))

(declare-fun b!7377868 () Bool)

(assert (=> b!7377868 (= e!4416490 ((as const (Array Regex!19307 Bool)) false))))

(declare-fun b!7377869 () Bool)

(assert (=> b!7377869 (= e!4416490 ((_ map or) (store ((as const (Array Regex!19307 Bool)) false) (h!78127 (exprs!8747 cWitness!61)) true) (content!15176 (t!386284 (exprs!8747 cWitness!61)))))))

(assert (= (and d!2285060 c!1371375) b!7377868))

(assert (= (and d!2285060 (not c!1371375)) b!7377869))

(declare-fun m!8029214 () Bool)

(assert (=> b!7377869 m!8029214))

(assert (=> b!7377869 m!8029086))

(assert (=> d!2284772 d!2285060))

(assert (=> d!2284772 d!2284978))

(declare-fun b!7377870 () Bool)

(declare-fun e!4416491 () Bool)

(declare-fun e!4416493 () Bool)

(assert (=> b!7377870 (= e!4416491 e!4416493)))

(declare-fun res!2976136 () Bool)

(assert (=> b!7377870 (=> (not res!2976136) (not e!4416493))))

(declare-fun call!678499 () Bool)

(assert (=> b!7377870 (= res!2976136 call!678499)))

(declare-fun b!7377871 () Bool)

(declare-fun e!4416497 () Bool)

(declare-fun call!678501 () Bool)

(assert (=> b!7377871 (= e!4416497 call!678501)))

(declare-fun b!7377872 () Bool)

(declare-fun e!4416492 () Bool)

(declare-fun e!4416494 () Bool)

(assert (=> b!7377872 (= e!4416492 e!4416494)))

(declare-fun c!1371376 () Bool)

(assert (=> b!7377872 (= c!1371376 ((_ is Star!19307) (ite c!1371209 (reg!19636 r1!2370) (ite c!1371210 (regOne!39127 r1!2370) (regTwo!39126 r1!2370)))))))

(declare-fun b!7377873 () Bool)

(assert (=> b!7377873 (= e!4416494 e!4416497)))

(declare-fun res!2976134 () Bool)

(assert (=> b!7377873 (= res!2976134 (not (nullable!8383 (reg!19636 (ite c!1371209 (reg!19636 r1!2370) (ite c!1371210 (regOne!39127 r1!2370) (regTwo!39126 r1!2370)))))))))

(assert (=> b!7377873 (=> (not res!2976134) (not e!4416497))))

(declare-fun c!1371377 () Bool)

(declare-fun bm!678494 () Bool)

(assert (=> bm!678494 (= call!678501 (validRegex!9903 (ite c!1371376 (reg!19636 (ite c!1371209 (reg!19636 r1!2370) (ite c!1371210 (regOne!39127 r1!2370) (regTwo!39126 r1!2370)))) (ite c!1371377 (regOne!39127 (ite c!1371209 (reg!19636 r1!2370) (ite c!1371210 (regOne!39127 r1!2370) (regTwo!39126 r1!2370)))) (regTwo!39126 (ite c!1371209 (reg!19636 r1!2370) (ite c!1371210 (regOne!39127 r1!2370) (regTwo!39126 r1!2370))))))))))

(declare-fun b!7377874 () Bool)

(declare-fun call!678500 () Bool)

(assert (=> b!7377874 (= e!4416493 call!678500)))

(declare-fun b!7377875 () Bool)

(declare-fun res!2976138 () Bool)

(assert (=> b!7377875 (=> res!2976138 e!4416491)))

(assert (=> b!7377875 (= res!2976138 (not ((_ is Concat!28152) (ite c!1371209 (reg!19636 r1!2370) (ite c!1371210 (regOne!39127 r1!2370) (regTwo!39126 r1!2370))))))))

(declare-fun e!4416495 () Bool)

(assert (=> b!7377875 (= e!4416495 e!4416491)))

(declare-fun bm!678495 () Bool)

(assert (=> bm!678495 (= call!678499 (validRegex!9903 (ite c!1371377 (regTwo!39127 (ite c!1371209 (reg!19636 r1!2370) (ite c!1371210 (regOne!39127 r1!2370) (regTwo!39126 r1!2370)))) (regOne!39126 (ite c!1371209 (reg!19636 r1!2370) (ite c!1371210 (regOne!39127 r1!2370) (regTwo!39126 r1!2370)))))))))

(declare-fun b!7377876 () Bool)

(declare-fun res!2976137 () Bool)

(declare-fun e!4416496 () Bool)

(assert (=> b!7377876 (=> (not res!2976137) (not e!4416496))))

(assert (=> b!7377876 (= res!2976137 call!678500)))

(assert (=> b!7377876 (= e!4416495 e!4416496)))

(declare-fun bm!678496 () Bool)

(assert (=> bm!678496 (= call!678500 call!678501)))

(declare-fun d!2285062 () Bool)

(declare-fun res!2976135 () Bool)

(assert (=> d!2285062 (=> res!2976135 e!4416492)))

(assert (=> d!2285062 (= res!2976135 ((_ is ElementMatch!19307) (ite c!1371209 (reg!19636 r1!2370) (ite c!1371210 (regOne!39127 r1!2370) (regTwo!39126 r1!2370)))))))

(assert (=> d!2285062 (= (validRegex!9903 (ite c!1371209 (reg!19636 r1!2370) (ite c!1371210 (regOne!39127 r1!2370) (regTwo!39126 r1!2370)))) e!4416492)))

(declare-fun b!7377877 () Bool)

(assert (=> b!7377877 (= e!4416496 call!678499)))

(declare-fun b!7377878 () Bool)

(assert (=> b!7377878 (= e!4416494 e!4416495)))

(assert (=> b!7377878 (= c!1371377 ((_ is Union!19307) (ite c!1371209 (reg!19636 r1!2370) (ite c!1371210 (regOne!39127 r1!2370) (regTwo!39126 r1!2370)))))))

(assert (= (and d!2285062 (not res!2976135)) b!7377872))

(assert (= (and b!7377872 c!1371376) b!7377873))

(assert (= (and b!7377872 (not c!1371376)) b!7377878))

(assert (= (and b!7377873 res!2976134) b!7377871))

(assert (= (and b!7377878 c!1371377) b!7377876))

(assert (= (and b!7377878 (not c!1371377)) b!7377875))

(assert (= (and b!7377876 res!2976137) b!7377877))

(assert (= (and b!7377875 (not res!2976138)) b!7377870))

(assert (= (and b!7377870 res!2976136) b!7377874))

(assert (= (or b!7377876 b!7377874) bm!678496))

(assert (= (or b!7377877 b!7377870) bm!678495))

(assert (= (or b!7377871 bm!678496) bm!678494))

(declare-fun m!8029216 () Bool)

(assert (=> b!7377873 m!8029216))

(declare-fun m!8029218 () Bool)

(assert (=> bm!678494 m!8029218))

(declare-fun m!8029220 () Bool)

(assert (=> bm!678495 m!8029220))

(assert (=> bm!678338 d!2285062))

(declare-fun d!2285064 () Bool)

(assert (=> d!2285064 (= ($colon$colon!3289 (exprs!8747 (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378)))) (ite (or c!1371194 c!1371192) (regTwo!39126 (regOne!39126 r1!2370)) (regOne!39126 r1!2370))) (Cons!71679 (ite (or c!1371194 c!1371192) (regTwo!39126 (regOne!39126 r1!2370)) (regOne!39126 r1!2370)) (exprs!8747 (Context!16495 (++!17123 lt!2616441 (exprs!8747 ct2!378))))))))

(assert (=> bm!678320 d!2285064))

(declare-fun d!2285066 () Bool)

(assert (=> d!2285066 (= ($colon$colon!3289 (exprs!8747 (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378)))) (ite (or c!1371201 c!1371199) (regTwo!39126 r1!2370) r1!2370)) (Cons!71679 (ite (or c!1371201 c!1371199) (regTwo!39126 r1!2370) r1!2370) (exprs!8747 (Context!16495 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378))))))))

(assert (=> bm!678326 d!2285066))

(declare-fun d!2285068 () Bool)

(assert (=> d!2285068 (= (nullable!8383 (reg!19636 r1!2370)) (nullableFct!3360 (reg!19636 r1!2370)))))

(declare-fun bs!1921384 () Bool)

(assert (= bs!1921384 d!2285068))

(declare-fun m!8029222 () Bool)

(assert (=> bs!1921384 m!8029222))

(assert (=> b!7377232 d!2285068))

(declare-fun b!7377880 () Bool)

(declare-fun e!4416498 () Bool)

(declare-fun tp!2097975 () Bool)

(declare-fun tp!2097973 () Bool)

(assert (=> b!7377880 (= e!4416498 (and tp!2097975 tp!2097973))))

(assert (=> b!7377270 (= tp!2097802 e!4416498)))

(declare-fun b!7377882 () Bool)

(declare-fun tp!2097976 () Bool)

(declare-fun tp!2097974 () Bool)

(assert (=> b!7377882 (= e!4416498 (and tp!2097976 tp!2097974))))

(declare-fun b!7377881 () Bool)

(declare-fun tp!2097972 () Bool)

(assert (=> b!7377881 (= e!4416498 tp!2097972)))

(declare-fun b!7377879 () Bool)

(assert (=> b!7377879 (= e!4416498 tp_is_empty!48859)))

(assert (= (and b!7377270 ((_ is ElementMatch!19307) (reg!19636 (regOne!39127 r1!2370)))) b!7377879))

(assert (= (and b!7377270 ((_ is Concat!28152) (reg!19636 (regOne!39127 r1!2370)))) b!7377880))

(assert (= (and b!7377270 ((_ is Star!19307) (reg!19636 (regOne!39127 r1!2370)))) b!7377881))

(assert (= (and b!7377270 ((_ is Union!19307) (reg!19636 (regOne!39127 r1!2370)))) b!7377882))

(declare-fun b!7377884 () Bool)

(declare-fun e!4416499 () Bool)

(declare-fun tp!2097980 () Bool)

(declare-fun tp!2097978 () Bool)

(assert (=> b!7377884 (= e!4416499 (and tp!2097980 tp!2097978))))

(assert (=> b!7377274 (= tp!2097807 e!4416499)))

(declare-fun b!7377886 () Bool)

(declare-fun tp!2097981 () Bool)

(declare-fun tp!2097979 () Bool)

(assert (=> b!7377886 (= e!4416499 (and tp!2097981 tp!2097979))))

(declare-fun b!7377885 () Bool)

(declare-fun tp!2097977 () Bool)

(assert (=> b!7377885 (= e!4416499 tp!2097977)))

(declare-fun b!7377883 () Bool)

(assert (=> b!7377883 (= e!4416499 tp_is_empty!48859)))

(assert (= (and b!7377274 ((_ is ElementMatch!19307) (reg!19636 (regTwo!39127 r1!2370)))) b!7377883))

(assert (= (and b!7377274 ((_ is Concat!28152) (reg!19636 (regTwo!39127 r1!2370)))) b!7377884))

(assert (= (and b!7377274 ((_ is Star!19307) (reg!19636 (regTwo!39127 r1!2370)))) b!7377885))

(assert (= (and b!7377274 ((_ is Union!19307) (reg!19636 (regTwo!39127 r1!2370)))) b!7377886))

(declare-fun b!7377888 () Bool)

(declare-fun e!4416500 () Bool)

(declare-fun tp!2097985 () Bool)

(declare-fun tp!2097983 () Bool)

(assert (=> b!7377888 (= e!4416500 (and tp!2097985 tp!2097983))))

(assert (=> b!7377269 (= tp!2097805 e!4416500)))

(declare-fun b!7377890 () Bool)

(declare-fun tp!2097986 () Bool)

(declare-fun tp!2097984 () Bool)

(assert (=> b!7377890 (= e!4416500 (and tp!2097986 tp!2097984))))

(declare-fun b!7377889 () Bool)

(declare-fun tp!2097982 () Bool)

(assert (=> b!7377889 (= e!4416500 tp!2097982)))

(declare-fun b!7377887 () Bool)

(assert (=> b!7377887 (= e!4416500 tp_is_empty!48859)))

(assert (= (and b!7377269 ((_ is ElementMatch!19307) (regOne!39126 (regOne!39127 r1!2370)))) b!7377887))

(assert (= (and b!7377269 ((_ is Concat!28152) (regOne!39126 (regOne!39127 r1!2370)))) b!7377888))

(assert (= (and b!7377269 ((_ is Star!19307) (regOne!39126 (regOne!39127 r1!2370)))) b!7377889))

(assert (= (and b!7377269 ((_ is Union!19307) (regOne!39126 (regOne!39127 r1!2370)))) b!7377890))

(declare-fun b!7377892 () Bool)

(declare-fun e!4416501 () Bool)

(declare-fun tp!2097990 () Bool)

(declare-fun tp!2097988 () Bool)

(assert (=> b!7377892 (= e!4416501 (and tp!2097990 tp!2097988))))

(assert (=> b!7377269 (= tp!2097803 e!4416501)))

(declare-fun b!7377894 () Bool)

(declare-fun tp!2097991 () Bool)

(declare-fun tp!2097989 () Bool)

(assert (=> b!7377894 (= e!4416501 (and tp!2097991 tp!2097989))))

(declare-fun b!7377893 () Bool)

(declare-fun tp!2097987 () Bool)

(assert (=> b!7377893 (= e!4416501 tp!2097987)))

(declare-fun b!7377891 () Bool)

(assert (=> b!7377891 (= e!4416501 tp_is_empty!48859)))

(assert (= (and b!7377269 ((_ is ElementMatch!19307) (regTwo!39126 (regOne!39127 r1!2370)))) b!7377891))

(assert (= (and b!7377269 ((_ is Concat!28152) (regTwo!39126 (regOne!39127 r1!2370)))) b!7377892))

(assert (= (and b!7377269 ((_ is Star!19307) (regTwo!39126 (regOne!39127 r1!2370)))) b!7377893))

(assert (= (and b!7377269 ((_ is Union!19307) (regTwo!39126 (regOne!39127 r1!2370)))) b!7377894))

(declare-fun b!7377896 () Bool)

(declare-fun e!4416502 () Bool)

(declare-fun tp!2097995 () Bool)

(declare-fun tp!2097993 () Bool)

(assert (=> b!7377896 (= e!4416502 (and tp!2097995 tp!2097993))))

(assert (=> b!7377271 (= tp!2097806 e!4416502)))

(declare-fun b!7377898 () Bool)

(declare-fun tp!2097996 () Bool)

(declare-fun tp!2097994 () Bool)

(assert (=> b!7377898 (= e!4416502 (and tp!2097996 tp!2097994))))

(declare-fun b!7377897 () Bool)

(declare-fun tp!2097992 () Bool)

(assert (=> b!7377897 (= e!4416502 tp!2097992)))

(declare-fun b!7377895 () Bool)

(assert (=> b!7377895 (= e!4416502 tp_is_empty!48859)))

(assert (= (and b!7377271 ((_ is ElementMatch!19307) (regOne!39127 (regOne!39127 r1!2370)))) b!7377895))

(assert (= (and b!7377271 ((_ is Concat!28152) (regOne!39127 (regOne!39127 r1!2370)))) b!7377896))

(assert (= (and b!7377271 ((_ is Star!19307) (regOne!39127 (regOne!39127 r1!2370)))) b!7377897))

(assert (= (and b!7377271 ((_ is Union!19307) (regOne!39127 (regOne!39127 r1!2370)))) b!7377898))

(declare-fun b!7377900 () Bool)

(declare-fun e!4416503 () Bool)

(declare-fun tp!2098000 () Bool)

(declare-fun tp!2097998 () Bool)

(assert (=> b!7377900 (= e!4416503 (and tp!2098000 tp!2097998))))

(assert (=> b!7377271 (= tp!2097804 e!4416503)))

(declare-fun b!7377902 () Bool)

(declare-fun tp!2098001 () Bool)

(declare-fun tp!2097999 () Bool)

(assert (=> b!7377902 (= e!4416503 (and tp!2098001 tp!2097999))))

(declare-fun b!7377901 () Bool)

(declare-fun tp!2097997 () Bool)

(assert (=> b!7377901 (= e!4416503 tp!2097997)))

(declare-fun b!7377899 () Bool)

(assert (=> b!7377899 (= e!4416503 tp_is_empty!48859)))

(assert (= (and b!7377271 ((_ is ElementMatch!19307) (regTwo!39127 (regOne!39127 r1!2370)))) b!7377899))

(assert (= (and b!7377271 ((_ is Concat!28152) (regTwo!39127 (regOne!39127 r1!2370)))) b!7377900))

(assert (= (and b!7377271 ((_ is Star!19307) (regTwo!39127 (regOne!39127 r1!2370)))) b!7377901))

(assert (= (and b!7377271 ((_ is Union!19307) (regTwo!39127 (regOne!39127 r1!2370)))) b!7377902))

(declare-fun b!7377904 () Bool)

(declare-fun e!4416504 () Bool)

(declare-fun tp!2098005 () Bool)

(declare-fun tp!2098003 () Bool)

(assert (=> b!7377904 (= e!4416504 (and tp!2098005 tp!2098003))))

(assert (=> b!7377275 (= tp!2097811 e!4416504)))

(declare-fun b!7377906 () Bool)

(declare-fun tp!2098006 () Bool)

(declare-fun tp!2098004 () Bool)

(assert (=> b!7377906 (= e!4416504 (and tp!2098006 tp!2098004))))

(declare-fun b!7377905 () Bool)

(declare-fun tp!2098002 () Bool)

(assert (=> b!7377905 (= e!4416504 tp!2098002)))

(declare-fun b!7377903 () Bool)

(assert (=> b!7377903 (= e!4416504 tp_is_empty!48859)))

(assert (= (and b!7377275 ((_ is ElementMatch!19307) (regOne!39127 (regTwo!39127 r1!2370)))) b!7377903))

(assert (= (and b!7377275 ((_ is Concat!28152) (regOne!39127 (regTwo!39127 r1!2370)))) b!7377904))

(assert (= (and b!7377275 ((_ is Star!19307) (regOne!39127 (regTwo!39127 r1!2370)))) b!7377905))

(assert (= (and b!7377275 ((_ is Union!19307) (regOne!39127 (regTwo!39127 r1!2370)))) b!7377906))

(declare-fun b!7377908 () Bool)

(declare-fun e!4416505 () Bool)

(declare-fun tp!2098010 () Bool)

(declare-fun tp!2098008 () Bool)

(assert (=> b!7377908 (= e!4416505 (and tp!2098010 tp!2098008))))

(assert (=> b!7377275 (= tp!2097809 e!4416505)))

(declare-fun b!7377910 () Bool)

(declare-fun tp!2098011 () Bool)

(declare-fun tp!2098009 () Bool)

(assert (=> b!7377910 (= e!4416505 (and tp!2098011 tp!2098009))))

(declare-fun b!7377909 () Bool)

(declare-fun tp!2098007 () Bool)

(assert (=> b!7377909 (= e!4416505 tp!2098007)))

(declare-fun b!7377907 () Bool)

(assert (=> b!7377907 (= e!4416505 tp_is_empty!48859)))

(assert (= (and b!7377275 ((_ is ElementMatch!19307) (regTwo!39127 (regTwo!39127 r1!2370)))) b!7377907))

(assert (= (and b!7377275 ((_ is Concat!28152) (regTwo!39127 (regTwo!39127 r1!2370)))) b!7377908))

(assert (= (and b!7377275 ((_ is Star!19307) (regTwo!39127 (regTwo!39127 r1!2370)))) b!7377909))

(assert (= (and b!7377275 ((_ is Union!19307) (regTwo!39127 (regTwo!39127 r1!2370)))) b!7377910))

(declare-fun b!7377912 () Bool)

(declare-fun e!4416506 () Bool)

(declare-fun tp!2098015 () Bool)

(declare-fun tp!2098013 () Bool)

(assert (=> b!7377912 (= e!4416506 (and tp!2098015 tp!2098013))))

(assert (=> b!7377281 (= tp!2097820 e!4416506)))

(declare-fun b!7377914 () Bool)

(declare-fun tp!2098016 () Bool)

(declare-fun tp!2098014 () Bool)

(assert (=> b!7377914 (= e!4416506 (and tp!2098016 tp!2098014))))

(declare-fun b!7377913 () Bool)

(declare-fun tp!2098012 () Bool)

(assert (=> b!7377913 (= e!4416506 tp!2098012)))

(declare-fun b!7377911 () Bool)

(assert (=> b!7377911 (= e!4416506 tp_is_empty!48859)))

(assert (= (and b!7377281 ((_ is ElementMatch!19307) (regOne!39127 (regOne!39126 r1!2370)))) b!7377911))

(assert (= (and b!7377281 ((_ is Concat!28152) (regOne!39127 (regOne!39126 r1!2370)))) b!7377912))

(assert (= (and b!7377281 ((_ is Star!19307) (regOne!39127 (regOne!39126 r1!2370)))) b!7377913))

(assert (= (and b!7377281 ((_ is Union!19307) (regOne!39127 (regOne!39126 r1!2370)))) b!7377914))

(declare-fun b!7377916 () Bool)

(declare-fun e!4416507 () Bool)

(declare-fun tp!2098020 () Bool)

(declare-fun tp!2098018 () Bool)

(assert (=> b!7377916 (= e!4416507 (and tp!2098020 tp!2098018))))

(assert (=> b!7377281 (= tp!2097818 e!4416507)))

(declare-fun b!7377918 () Bool)

(declare-fun tp!2098021 () Bool)

(declare-fun tp!2098019 () Bool)

(assert (=> b!7377918 (= e!4416507 (and tp!2098021 tp!2098019))))

(declare-fun b!7377917 () Bool)

(declare-fun tp!2098017 () Bool)

(assert (=> b!7377917 (= e!4416507 tp!2098017)))

(declare-fun b!7377915 () Bool)

(assert (=> b!7377915 (= e!4416507 tp_is_empty!48859)))

(assert (= (and b!7377281 ((_ is ElementMatch!19307) (regTwo!39127 (regOne!39126 r1!2370)))) b!7377915))

(assert (= (and b!7377281 ((_ is Concat!28152) (regTwo!39127 (regOne!39126 r1!2370)))) b!7377916))

(assert (= (and b!7377281 ((_ is Star!19307) (regTwo!39127 (regOne!39126 r1!2370)))) b!7377917))

(assert (= (and b!7377281 ((_ is Union!19307) (regTwo!39127 (regOne!39126 r1!2370)))) b!7377918))

(declare-fun b!7377920 () Bool)

(declare-fun e!4416508 () Bool)

(declare-fun tp!2098025 () Bool)

(declare-fun tp!2098023 () Bool)

(assert (=> b!7377920 (= e!4416508 (and tp!2098025 tp!2098023))))

(assert (=> b!7377285 (= tp!2097825 e!4416508)))

(declare-fun b!7377922 () Bool)

(declare-fun tp!2098026 () Bool)

(declare-fun tp!2098024 () Bool)

(assert (=> b!7377922 (= e!4416508 (and tp!2098026 tp!2098024))))

(declare-fun b!7377921 () Bool)

(declare-fun tp!2098022 () Bool)

(assert (=> b!7377921 (= e!4416508 tp!2098022)))

(declare-fun b!7377919 () Bool)

(assert (=> b!7377919 (= e!4416508 tp_is_empty!48859)))

(assert (= (and b!7377285 ((_ is ElementMatch!19307) (regOne!39127 (regTwo!39126 r1!2370)))) b!7377919))

(assert (= (and b!7377285 ((_ is Concat!28152) (regOne!39127 (regTwo!39126 r1!2370)))) b!7377920))

(assert (= (and b!7377285 ((_ is Star!19307) (regOne!39127 (regTwo!39126 r1!2370)))) b!7377921))

(assert (= (and b!7377285 ((_ is Union!19307) (regOne!39127 (regTwo!39126 r1!2370)))) b!7377922))

(declare-fun b!7377924 () Bool)

(declare-fun e!4416509 () Bool)

(declare-fun tp!2098030 () Bool)

(declare-fun tp!2098028 () Bool)

(assert (=> b!7377924 (= e!4416509 (and tp!2098030 tp!2098028))))

(assert (=> b!7377285 (= tp!2097823 e!4416509)))

(declare-fun b!7377926 () Bool)

(declare-fun tp!2098031 () Bool)

(declare-fun tp!2098029 () Bool)

(assert (=> b!7377926 (= e!4416509 (and tp!2098031 tp!2098029))))

(declare-fun b!7377925 () Bool)

(declare-fun tp!2098027 () Bool)

(assert (=> b!7377925 (= e!4416509 tp!2098027)))

(declare-fun b!7377923 () Bool)

(assert (=> b!7377923 (= e!4416509 tp_is_empty!48859)))

(assert (= (and b!7377285 ((_ is ElementMatch!19307) (regTwo!39127 (regTwo!39126 r1!2370)))) b!7377923))

(assert (= (and b!7377285 ((_ is Concat!28152) (regTwo!39127 (regTwo!39126 r1!2370)))) b!7377924))

(assert (= (and b!7377285 ((_ is Star!19307) (regTwo!39127 (regTwo!39126 r1!2370)))) b!7377925))

(assert (= (and b!7377285 ((_ is Union!19307) (regTwo!39127 (regTwo!39126 r1!2370)))) b!7377926))

(declare-fun b!7377928 () Bool)

(declare-fun e!4416510 () Bool)

(declare-fun tp!2098035 () Bool)

(declare-fun tp!2098033 () Bool)

(assert (=> b!7377928 (= e!4416510 (and tp!2098035 tp!2098033))))

(assert (=> b!7377273 (= tp!2097810 e!4416510)))

(declare-fun b!7377930 () Bool)

(declare-fun tp!2098036 () Bool)

(declare-fun tp!2098034 () Bool)

(assert (=> b!7377930 (= e!4416510 (and tp!2098036 tp!2098034))))

(declare-fun b!7377929 () Bool)

(declare-fun tp!2098032 () Bool)

(assert (=> b!7377929 (= e!4416510 tp!2098032)))

(declare-fun b!7377927 () Bool)

(assert (=> b!7377927 (= e!4416510 tp_is_empty!48859)))

(assert (= (and b!7377273 ((_ is ElementMatch!19307) (regOne!39126 (regTwo!39127 r1!2370)))) b!7377927))

(assert (= (and b!7377273 ((_ is Concat!28152) (regOne!39126 (regTwo!39127 r1!2370)))) b!7377928))

(assert (= (and b!7377273 ((_ is Star!19307) (regOne!39126 (regTwo!39127 r1!2370)))) b!7377929))

(assert (= (and b!7377273 ((_ is Union!19307) (regOne!39126 (regTwo!39127 r1!2370)))) b!7377930))

(declare-fun b!7377932 () Bool)

(declare-fun e!4416511 () Bool)

(declare-fun tp!2098040 () Bool)

(declare-fun tp!2098038 () Bool)

(assert (=> b!7377932 (= e!4416511 (and tp!2098040 tp!2098038))))

(assert (=> b!7377273 (= tp!2097808 e!4416511)))

(declare-fun b!7377934 () Bool)

(declare-fun tp!2098041 () Bool)

(declare-fun tp!2098039 () Bool)

(assert (=> b!7377934 (= e!4416511 (and tp!2098041 tp!2098039))))

(declare-fun b!7377933 () Bool)

(declare-fun tp!2098037 () Bool)

(assert (=> b!7377933 (= e!4416511 tp!2098037)))

(declare-fun b!7377931 () Bool)

(assert (=> b!7377931 (= e!4416511 tp_is_empty!48859)))

(assert (= (and b!7377273 ((_ is ElementMatch!19307) (regTwo!39126 (regTwo!39127 r1!2370)))) b!7377931))

(assert (= (and b!7377273 ((_ is Concat!28152) (regTwo!39126 (regTwo!39127 r1!2370)))) b!7377932))

(assert (= (and b!7377273 ((_ is Star!19307) (regTwo!39126 (regTwo!39127 r1!2370)))) b!7377933))

(assert (= (and b!7377273 ((_ is Union!19307) (regTwo!39126 (regTwo!39127 r1!2370)))) b!7377934))

(declare-fun b!7377936 () Bool)

(declare-fun e!4416512 () Bool)

(declare-fun tp!2098045 () Bool)

(declare-fun tp!2098043 () Bool)

(assert (=> b!7377936 (= e!4416512 (and tp!2098045 tp!2098043))))

(assert (=> b!7377277 (= tp!2097814 e!4416512)))

(declare-fun b!7377938 () Bool)

(declare-fun tp!2098046 () Bool)

(declare-fun tp!2098044 () Bool)

(assert (=> b!7377938 (= e!4416512 (and tp!2098046 tp!2098044))))

(declare-fun b!7377937 () Bool)

(declare-fun tp!2098042 () Bool)

(assert (=> b!7377937 (= e!4416512 tp!2098042)))

(declare-fun b!7377935 () Bool)

(assert (=> b!7377935 (= e!4416512 tp_is_empty!48859)))

(assert (= (and b!7377277 ((_ is ElementMatch!19307) (h!78127 (exprs!8747 ct1!282)))) b!7377935))

(assert (= (and b!7377277 ((_ is Concat!28152) (h!78127 (exprs!8747 ct1!282)))) b!7377936))

(assert (= (and b!7377277 ((_ is Star!19307) (h!78127 (exprs!8747 ct1!282)))) b!7377937))

(assert (= (and b!7377277 ((_ is Union!19307) (h!78127 (exprs!8747 ct1!282)))) b!7377938))

(declare-fun b!7377939 () Bool)

(declare-fun e!4416513 () Bool)

(declare-fun tp!2098047 () Bool)

(declare-fun tp!2098048 () Bool)

(assert (=> b!7377939 (= e!4416513 (and tp!2098047 tp!2098048))))

(assert (=> b!7377277 (= tp!2097815 e!4416513)))

(assert (= (and b!7377277 ((_ is Cons!71679) (t!386284 (exprs!8747 ct1!282)))) b!7377939))

(declare-fun b!7377941 () Bool)

(declare-fun e!4416514 () Bool)

(declare-fun tp!2098052 () Bool)

(declare-fun tp!2098050 () Bool)

(assert (=> b!7377941 (= e!4416514 (and tp!2098052 tp!2098050))))

(assert (=> b!7377283 (= tp!2097824 e!4416514)))

(declare-fun b!7377943 () Bool)

(declare-fun tp!2098053 () Bool)

(declare-fun tp!2098051 () Bool)

(assert (=> b!7377943 (= e!4416514 (and tp!2098053 tp!2098051))))

(declare-fun b!7377942 () Bool)

(declare-fun tp!2098049 () Bool)

(assert (=> b!7377942 (= e!4416514 tp!2098049)))

(declare-fun b!7377940 () Bool)

(assert (=> b!7377940 (= e!4416514 tp_is_empty!48859)))

(assert (= (and b!7377283 ((_ is ElementMatch!19307) (regOne!39126 (regTwo!39126 r1!2370)))) b!7377940))

(assert (= (and b!7377283 ((_ is Concat!28152) (regOne!39126 (regTwo!39126 r1!2370)))) b!7377941))

(assert (= (and b!7377283 ((_ is Star!19307) (regOne!39126 (regTwo!39126 r1!2370)))) b!7377942))

(assert (= (and b!7377283 ((_ is Union!19307) (regOne!39126 (regTwo!39126 r1!2370)))) b!7377943))

(declare-fun b!7377945 () Bool)

(declare-fun e!4416515 () Bool)

(declare-fun tp!2098057 () Bool)

(declare-fun tp!2098055 () Bool)

(assert (=> b!7377945 (= e!4416515 (and tp!2098057 tp!2098055))))

(assert (=> b!7377283 (= tp!2097822 e!4416515)))

(declare-fun b!7377947 () Bool)

(declare-fun tp!2098058 () Bool)

(declare-fun tp!2098056 () Bool)

(assert (=> b!7377947 (= e!4416515 (and tp!2098058 tp!2098056))))

(declare-fun b!7377946 () Bool)

(declare-fun tp!2098054 () Bool)

(assert (=> b!7377946 (= e!4416515 tp!2098054)))

(declare-fun b!7377944 () Bool)

(assert (=> b!7377944 (= e!4416515 tp_is_empty!48859)))

(assert (= (and b!7377283 ((_ is ElementMatch!19307) (regTwo!39126 (regTwo!39126 r1!2370)))) b!7377944))

(assert (= (and b!7377283 ((_ is Concat!28152) (regTwo!39126 (regTwo!39126 r1!2370)))) b!7377945))

(assert (= (and b!7377283 ((_ is Star!19307) (regTwo!39126 (regTwo!39126 r1!2370)))) b!7377946))

(assert (= (and b!7377283 ((_ is Union!19307) (regTwo!39126 (regTwo!39126 r1!2370)))) b!7377947))

(declare-fun b!7377949 () Bool)

(declare-fun e!4416516 () Bool)

(declare-fun tp!2098062 () Bool)

(declare-fun tp!2098060 () Bool)

(assert (=> b!7377949 (= e!4416516 (and tp!2098062 tp!2098060))))

(assert (=> b!7377276 (= tp!2097812 e!4416516)))

(declare-fun b!7377951 () Bool)

(declare-fun tp!2098063 () Bool)

(declare-fun tp!2098061 () Bool)

(assert (=> b!7377951 (= e!4416516 (and tp!2098063 tp!2098061))))

(declare-fun b!7377950 () Bool)

(declare-fun tp!2098059 () Bool)

(assert (=> b!7377950 (= e!4416516 tp!2098059)))

(declare-fun b!7377948 () Bool)

(assert (=> b!7377948 (= e!4416516 tp_is_empty!48859)))

(assert (= (and b!7377276 ((_ is ElementMatch!19307) (h!78127 (exprs!8747 ct2!378)))) b!7377948))

(assert (= (and b!7377276 ((_ is Concat!28152) (h!78127 (exprs!8747 ct2!378)))) b!7377949))

(assert (= (and b!7377276 ((_ is Star!19307) (h!78127 (exprs!8747 ct2!378)))) b!7377950))

(assert (= (and b!7377276 ((_ is Union!19307) (h!78127 (exprs!8747 ct2!378)))) b!7377951))

(declare-fun b!7377952 () Bool)

(declare-fun e!4416517 () Bool)

(declare-fun tp!2098064 () Bool)

(declare-fun tp!2098065 () Bool)

(assert (=> b!7377952 (= e!4416517 (and tp!2098064 tp!2098065))))

(assert (=> b!7377276 (= tp!2097813 e!4416517)))

(assert (= (and b!7377276 ((_ is Cons!71679) (t!386284 (exprs!8747 ct2!378)))) b!7377952))

(declare-fun b!7377954 () Bool)

(declare-fun e!4416518 () Bool)

(declare-fun tp!2098069 () Bool)

(declare-fun tp!2098067 () Bool)

(assert (=> b!7377954 (= e!4416518 (and tp!2098069 tp!2098067))))

(assert (=> b!7377280 (= tp!2097816 e!4416518)))

(declare-fun b!7377956 () Bool)

(declare-fun tp!2098070 () Bool)

(declare-fun tp!2098068 () Bool)

(assert (=> b!7377956 (= e!4416518 (and tp!2098070 tp!2098068))))

(declare-fun b!7377955 () Bool)

(declare-fun tp!2098066 () Bool)

(assert (=> b!7377955 (= e!4416518 tp!2098066)))

(declare-fun b!7377953 () Bool)

(assert (=> b!7377953 (= e!4416518 tp_is_empty!48859)))

(assert (= (and b!7377280 ((_ is ElementMatch!19307) (reg!19636 (regOne!39126 r1!2370)))) b!7377953))

(assert (= (and b!7377280 ((_ is Concat!28152) (reg!19636 (regOne!39126 r1!2370)))) b!7377954))

(assert (= (and b!7377280 ((_ is Star!19307) (reg!19636 (regOne!39126 r1!2370)))) b!7377955))

(assert (= (and b!7377280 ((_ is Union!19307) (reg!19636 (regOne!39126 r1!2370)))) b!7377956))

(declare-fun b!7377958 () Bool)

(declare-fun e!4416519 () Bool)

(declare-fun tp!2098074 () Bool)

(declare-fun tp!2098072 () Bool)

(assert (=> b!7377958 (= e!4416519 (and tp!2098074 tp!2098072))))

(assert (=> b!7377284 (= tp!2097821 e!4416519)))

(declare-fun b!7377960 () Bool)

(declare-fun tp!2098075 () Bool)

(declare-fun tp!2098073 () Bool)

(assert (=> b!7377960 (= e!4416519 (and tp!2098075 tp!2098073))))

(declare-fun b!7377959 () Bool)

(declare-fun tp!2098071 () Bool)

(assert (=> b!7377959 (= e!4416519 tp!2098071)))

(declare-fun b!7377957 () Bool)

(assert (=> b!7377957 (= e!4416519 tp_is_empty!48859)))

(assert (= (and b!7377284 ((_ is ElementMatch!19307) (reg!19636 (regTwo!39126 r1!2370)))) b!7377957))

(assert (= (and b!7377284 ((_ is Concat!28152) (reg!19636 (regTwo!39126 r1!2370)))) b!7377958))

(assert (= (and b!7377284 ((_ is Star!19307) (reg!19636 (regTwo!39126 r1!2370)))) b!7377959))

(assert (= (and b!7377284 ((_ is Union!19307) (reg!19636 (regTwo!39126 r1!2370)))) b!7377960))

(declare-fun b!7377962 () Bool)

(declare-fun e!4416520 () Bool)

(declare-fun tp!2098079 () Bool)

(declare-fun tp!2098077 () Bool)

(assert (=> b!7377962 (= e!4416520 (and tp!2098079 tp!2098077))))

(assert (=> b!7377279 (= tp!2097819 e!4416520)))

(declare-fun b!7377964 () Bool)

(declare-fun tp!2098080 () Bool)

(declare-fun tp!2098078 () Bool)

(assert (=> b!7377964 (= e!4416520 (and tp!2098080 tp!2098078))))

(declare-fun b!7377963 () Bool)

(declare-fun tp!2098076 () Bool)

(assert (=> b!7377963 (= e!4416520 tp!2098076)))

(declare-fun b!7377961 () Bool)

(assert (=> b!7377961 (= e!4416520 tp_is_empty!48859)))

(assert (= (and b!7377279 ((_ is ElementMatch!19307) (regOne!39126 (regOne!39126 r1!2370)))) b!7377961))

(assert (= (and b!7377279 ((_ is Concat!28152) (regOne!39126 (regOne!39126 r1!2370)))) b!7377962))

(assert (= (and b!7377279 ((_ is Star!19307) (regOne!39126 (regOne!39126 r1!2370)))) b!7377963))

(assert (= (and b!7377279 ((_ is Union!19307) (regOne!39126 (regOne!39126 r1!2370)))) b!7377964))

(declare-fun b!7377966 () Bool)

(declare-fun e!4416521 () Bool)

(declare-fun tp!2098084 () Bool)

(declare-fun tp!2098082 () Bool)

(assert (=> b!7377966 (= e!4416521 (and tp!2098084 tp!2098082))))

(assert (=> b!7377279 (= tp!2097817 e!4416521)))

(declare-fun b!7377968 () Bool)

(declare-fun tp!2098085 () Bool)

(declare-fun tp!2098083 () Bool)

(assert (=> b!7377968 (= e!4416521 (and tp!2098085 tp!2098083))))

(declare-fun b!7377967 () Bool)

(declare-fun tp!2098081 () Bool)

(assert (=> b!7377967 (= e!4416521 tp!2098081)))

(declare-fun b!7377965 () Bool)

(assert (=> b!7377965 (= e!4416521 tp_is_empty!48859)))

(assert (= (and b!7377279 ((_ is ElementMatch!19307) (regTwo!39126 (regOne!39126 r1!2370)))) b!7377965))

(assert (= (and b!7377279 ((_ is Concat!28152) (regTwo!39126 (regOne!39126 r1!2370)))) b!7377966))

(assert (= (and b!7377279 ((_ is Star!19307) (regTwo!39126 (regOne!39126 r1!2370)))) b!7377967))

(assert (= (and b!7377279 ((_ is Union!19307) (regTwo!39126 (regOne!39126 r1!2370)))) b!7377968))

(declare-fun b!7377970 () Bool)

(declare-fun e!4416522 () Bool)

(declare-fun tp!2098089 () Bool)

(declare-fun tp!2098087 () Bool)

(assert (=> b!7377970 (= e!4416522 (and tp!2098089 tp!2098087))))

(assert (=> b!7377260 (= tp!2097794 e!4416522)))

(declare-fun b!7377972 () Bool)

(declare-fun tp!2098090 () Bool)

(declare-fun tp!2098088 () Bool)

(assert (=> b!7377972 (= e!4416522 (and tp!2098090 tp!2098088))))

(declare-fun b!7377971 () Bool)

(declare-fun tp!2098086 () Bool)

(assert (=> b!7377971 (= e!4416522 tp!2098086)))

(declare-fun b!7377969 () Bool)

(assert (=> b!7377969 (= e!4416522 tp_is_empty!48859)))

(assert (= (and b!7377260 ((_ is ElementMatch!19307) (regOne!39126 (reg!19636 r1!2370)))) b!7377969))

(assert (= (and b!7377260 ((_ is Concat!28152) (regOne!39126 (reg!19636 r1!2370)))) b!7377970))

(assert (= (and b!7377260 ((_ is Star!19307) (regOne!39126 (reg!19636 r1!2370)))) b!7377971))

(assert (= (and b!7377260 ((_ is Union!19307) (regOne!39126 (reg!19636 r1!2370)))) b!7377972))

(declare-fun b!7377974 () Bool)

(declare-fun e!4416523 () Bool)

(declare-fun tp!2098094 () Bool)

(declare-fun tp!2098092 () Bool)

(assert (=> b!7377974 (= e!4416523 (and tp!2098094 tp!2098092))))

(assert (=> b!7377260 (= tp!2097792 e!4416523)))

(declare-fun b!7377976 () Bool)

(declare-fun tp!2098095 () Bool)

(declare-fun tp!2098093 () Bool)

(assert (=> b!7377976 (= e!4416523 (and tp!2098095 tp!2098093))))

(declare-fun b!7377975 () Bool)

(declare-fun tp!2098091 () Bool)

(assert (=> b!7377975 (= e!4416523 tp!2098091)))

(declare-fun b!7377973 () Bool)

(assert (=> b!7377973 (= e!4416523 tp_is_empty!48859)))

(assert (= (and b!7377260 ((_ is ElementMatch!19307) (regTwo!39126 (reg!19636 r1!2370)))) b!7377973))

(assert (= (and b!7377260 ((_ is Concat!28152) (regTwo!39126 (reg!19636 r1!2370)))) b!7377974))

(assert (= (and b!7377260 ((_ is Star!19307) (regTwo!39126 (reg!19636 r1!2370)))) b!7377975))

(assert (= (and b!7377260 ((_ is Union!19307) (regTwo!39126 (reg!19636 r1!2370)))) b!7377976))

(declare-fun b!7377978 () Bool)

(declare-fun e!4416524 () Bool)

(declare-fun tp!2098099 () Bool)

(declare-fun tp!2098097 () Bool)

(assert (=> b!7377978 (= e!4416524 (and tp!2098099 tp!2098097))))

(assert (=> b!7377267 (= tp!2097800 e!4416524)))

(declare-fun b!7377980 () Bool)

(declare-fun tp!2098100 () Bool)

(declare-fun tp!2098098 () Bool)

(assert (=> b!7377980 (= e!4416524 (and tp!2098100 tp!2098098))))

(declare-fun b!7377979 () Bool)

(declare-fun tp!2098096 () Bool)

(assert (=> b!7377979 (= e!4416524 tp!2098096)))

(declare-fun b!7377977 () Bool)

(assert (=> b!7377977 (= e!4416524 tp_is_empty!48859)))

(assert (= (and b!7377267 ((_ is ElementMatch!19307) (h!78127 (exprs!8747 cWitness!61)))) b!7377977))

(assert (= (and b!7377267 ((_ is Concat!28152) (h!78127 (exprs!8747 cWitness!61)))) b!7377978))

(assert (= (and b!7377267 ((_ is Star!19307) (h!78127 (exprs!8747 cWitness!61)))) b!7377979))

(assert (= (and b!7377267 ((_ is Union!19307) (h!78127 (exprs!8747 cWitness!61)))) b!7377980))

(declare-fun b!7377981 () Bool)

(declare-fun e!4416525 () Bool)

(declare-fun tp!2098101 () Bool)

(declare-fun tp!2098102 () Bool)

(assert (=> b!7377981 (= e!4416525 (and tp!2098101 tp!2098102))))

(assert (=> b!7377267 (= tp!2097801 e!4416525)))

(assert (= (and b!7377267 ((_ is Cons!71679) (t!386284 (exprs!8747 cWitness!61)))) b!7377981))

(declare-fun b!7377983 () Bool)

(declare-fun e!4416526 () Bool)

(declare-fun tp!2098106 () Bool)

(declare-fun tp!2098104 () Bool)

(assert (=> b!7377983 (= e!4416526 (and tp!2098106 tp!2098104))))

(assert (=> b!7377262 (= tp!2097795 e!4416526)))

(declare-fun b!7377985 () Bool)

(declare-fun tp!2098107 () Bool)

(declare-fun tp!2098105 () Bool)

(assert (=> b!7377985 (= e!4416526 (and tp!2098107 tp!2098105))))

(declare-fun b!7377984 () Bool)

(declare-fun tp!2098103 () Bool)

(assert (=> b!7377984 (= e!4416526 tp!2098103)))

(declare-fun b!7377982 () Bool)

(assert (=> b!7377982 (= e!4416526 tp_is_empty!48859)))

(assert (= (and b!7377262 ((_ is ElementMatch!19307) (regOne!39127 (reg!19636 r1!2370)))) b!7377982))

(assert (= (and b!7377262 ((_ is Concat!28152) (regOne!39127 (reg!19636 r1!2370)))) b!7377983))

(assert (= (and b!7377262 ((_ is Star!19307) (regOne!39127 (reg!19636 r1!2370)))) b!7377984))

(assert (= (and b!7377262 ((_ is Union!19307) (regOne!39127 (reg!19636 r1!2370)))) b!7377985))

(declare-fun b!7377987 () Bool)

(declare-fun e!4416527 () Bool)

(declare-fun tp!2098111 () Bool)

(declare-fun tp!2098109 () Bool)

(assert (=> b!7377987 (= e!4416527 (and tp!2098111 tp!2098109))))

(assert (=> b!7377262 (= tp!2097793 e!4416527)))

(declare-fun b!7377989 () Bool)

(declare-fun tp!2098112 () Bool)

(declare-fun tp!2098110 () Bool)

(assert (=> b!7377989 (= e!4416527 (and tp!2098112 tp!2098110))))

(declare-fun b!7377988 () Bool)

(declare-fun tp!2098108 () Bool)

(assert (=> b!7377988 (= e!4416527 tp!2098108)))

(declare-fun b!7377986 () Bool)

(assert (=> b!7377986 (= e!4416527 tp_is_empty!48859)))

(assert (= (and b!7377262 ((_ is ElementMatch!19307) (regTwo!39127 (reg!19636 r1!2370)))) b!7377986))

(assert (= (and b!7377262 ((_ is Concat!28152) (regTwo!39127 (reg!19636 r1!2370)))) b!7377987))

(assert (= (and b!7377262 ((_ is Star!19307) (regTwo!39127 (reg!19636 r1!2370)))) b!7377988))

(assert (= (and b!7377262 ((_ is Union!19307) (regTwo!39127 (reg!19636 r1!2370)))) b!7377989))

(declare-fun b!7377991 () Bool)

(declare-fun e!4416528 () Bool)

(declare-fun tp!2098116 () Bool)

(declare-fun tp!2098114 () Bool)

(assert (=> b!7377991 (= e!4416528 (and tp!2098116 tp!2098114))))

(assert (=> b!7377261 (= tp!2097791 e!4416528)))

(declare-fun b!7377993 () Bool)

(declare-fun tp!2098117 () Bool)

(declare-fun tp!2098115 () Bool)

(assert (=> b!7377993 (= e!4416528 (and tp!2098117 tp!2098115))))

(declare-fun b!7377992 () Bool)

(declare-fun tp!2098113 () Bool)

(assert (=> b!7377992 (= e!4416528 tp!2098113)))

(declare-fun b!7377990 () Bool)

(assert (=> b!7377990 (= e!4416528 tp_is_empty!48859)))

(assert (= (and b!7377261 ((_ is ElementMatch!19307) (reg!19636 (reg!19636 r1!2370)))) b!7377990))

(assert (= (and b!7377261 ((_ is Concat!28152) (reg!19636 (reg!19636 r1!2370)))) b!7377991))

(assert (= (and b!7377261 ((_ is Star!19307) (reg!19636 (reg!19636 r1!2370)))) b!7377992))

(assert (= (and b!7377261 ((_ is Union!19307) (reg!19636 (reg!19636 r1!2370)))) b!7377993))

(declare-fun b_lambda!284633 () Bool)

(assert (= b_lambda!284629 (or b!7376967 b_lambda!284633)))

(declare-fun bs!1921385 () Bool)

(declare-fun d!2285070 () Bool)

(assert (= bs!1921385 (and d!2285070 b!7376967)))

(assert (=> bs!1921385 (= (dynLambda!29531 lambda!458361 (h!78127 (++!17123 (exprs!8747 cWitness!61) (exprs!8747 ct2!378)))) (validRegex!9903 (h!78127 (++!17123 (exprs!8747 cWitness!61) (exprs!8747 ct2!378)))))))

(declare-fun m!8029224 () Bool)

(assert (=> bs!1921385 m!8029224))

(assert (=> b!7377862 d!2285070))

(declare-fun b_lambda!284635 () Bool)

(assert (= b_lambda!284623 (or d!2284824 b_lambda!284635)))

(declare-fun bs!1921386 () Bool)

(declare-fun d!2285072 () Bool)

(assert (= bs!1921386 (and d!2285072 d!2284824)))

(assert (=> bs!1921386 (= (dynLambda!29531 lambda!458379 (h!78127 (exprs!8747 cWitness!61))) (validRegex!9903 (h!78127 (exprs!8747 cWitness!61))))))

(declare-fun m!8029226 () Bool)

(assert (=> bs!1921386 m!8029226))

(assert (=> b!7377841 d!2285072))

(declare-fun b_lambda!284637 () Bool)

(assert (= b_lambda!284625 (or b!7376967 b_lambda!284637)))

(declare-fun bs!1921387 () Bool)

(declare-fun d!2285074 () Bool)

(assert (= bs!1921387 (and d!2285074 b!7376967)))

(assert (=> bs!1921387 (= (dynLambda!29531 lambda!458361 (h!78127 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378)))) (validRegex!9903 (h!78127 (++!17123 (exprs!8747 ct1!282) (exprs!8747 ct2!378)))))))

(declare-fun m!8029228 () Bool)

(assert (=> bs!1921387 m!8029228))

(assert (=> b!7377854 d!2285074))

(declare-fun b_lambda!284639 () Bool)

(assert (= b_lambda!284617 (or b!7376967 b_lambda!284639)))

(declare-fun bs!1921388 () Bool)

(declare-fun d!2285076 () Bool)

(assert (= bs!1921388 (and d!2285076 b!7376967)))

(assert (=> bs!1921388 (= (dynLambda!29531 lambda!458361 (h!78127 (++!17123 lt!2616441 (exprs!8747 ct2!378)))) (validRegex!9903 (h!78127 (++!17123 lt!2616441 (exprs!8747 ct2!378)))))))

(declare-fun m!8029230 () Bool)

(assert (=> bs!1921388 m!8029230))

(assert (=> b!7377745 d!2285076))

(declare-fun b_lambda!284641 () Bool)

(assert (= b_lambda!284631 (or b!7376967 b_lambda!284641)))

(declare-fun bs!1921389 () Bool)

(declare-fun d!2285078 () Bool)

(assert (= bs!1921389 (and d!2285078 b!7376967)))

(assert (=> bs!1921389 (= (dynLambda!29531 lambda!458361 (h!78127 (exprs!8747 cWitness!61))) (validRegex!9903 (h!78127 (exprs!8747 cWitness!61))))))

(assert (=> bs!1921389 m!8029226))

(assert (=> b!7377864 d!2285078))

(declare-fun b_lambda!284643 () Bool)

(assert (= b_lambda!284627 (or b!7376967 b_lambda!284643)))

(declare-fun bs!1921390 () Bool)

(declare-fun d!2285080 () Bool)

(assert (= bs!1921390 (and d!2285080 b!7376967)))

(assert (=> bs!1921390 (= (dynLambda!29531 lambda!458361 (h!78127 (exprs!8747 ct1!282))) (validRegex!9903 (h!78127 (exprs!8747 ct1!282))))))

(declare-fun m!8029232 () Bool)

(assert (=> bs!1921390 m!8029232))

(assert (=> b!7377856 d!2285080))

(declare-fun b_lambda!284645 () Bool)

(assert (= b_lambda!284619 (or b!7376967 b_lambda!284645)))

(declare-fun bs!1921391 () Bool)

(declare-fun d!2285082 () Bool)

(assert (= bs!1921391 (and d!2285082 b!7376967)))

(assert (=> bs!1921391 (= (dynLambda!29531 lambda!458361 (h!78127 lt!2616441)) (validRegex!9903 (h!78127 lt!2616441)))))

(declare-fun m!8029234 () Bool)

(assert (=> bs!1921391 m!8029234))

(assert (=> b!7377747 d!2285082))

(declare-fun b_lambda!284647 () Bool)

(assert (= b_lambda!284621 (or d!2284828 b_lambda!284647)))

(declare-fun bs!1921392 () Bool)

(declare-fun d!2285084 () Bool)

(assert (= bs!1921392 (and d!2285084 d!2284828)))

(assert (=> bs!1921392 (= (dynLambda!29531 lambda!458381 (h!78127 (exprs!8747 ct2!378))) (validRegex!9903 (h!78127 (exprs!8747 ct2!378))))))

(declare-fun m!8029236 () Bool)

(assert (=> bs!1921392 m!8029236))

(assert (=> b!7377809 d!2285084))

(declare-fun b_lambda!284649 () Bool)

(assert (= b_lambda!284615 (or d!2284826 b_lambda!284649)))

(declare-fun bs!1921393 () Bool)

(declare-fun d!2285086 () Bool)

(assert (= bs!1921393 (and d!2285086 d!2284826)))

(assert (=> bs!1921393 (= (dynLambda!29531 lambda!458380 (h!78127 (exprs!8747 ct1!282))) (validRegex!9903 (h!78127 (exprs!8747 ct1!282))))))

(assert (=> bs!1921393 m!8029232))

(assert (=> b!7377739 d!2285086))

(check-sat (not bs!1921391) (not bm!678457) (not b!7377947) (not b!7377956) (not b!7377863) (not b!7377873) (not bm!678446) (not b!7377922) (not b!7377934) (not d!2285044) (not b!7377975) (not b!7377671) (not b!7377987) (not b!7377905) (not bs!1921390) (not bm!678399) (not b!7377846) (not b!7377785) (not b!7377921) (not d!2285008) (not b_lambda!284641) (not b!7377894) (not bm!678480) (not b!7377943) (not bm!678492) (not b!7377812) (not b!7377857) (not b_lambda!284633) (not bm!678447) (not b!7377988) (not bm!678488) (not b_lambda!284649) (not d!2285022) (not b!7377893) (not b!7377916) (not d!2284990) (not bm!678451) (not b!7377970) (not b!7377946) (not b!7377662) (not d!2285054) (not bm!678413) (not b!7377930) (not bm!678484) (not b!7377673) (not bm!678474) (not b!7377924) (not b!7377938) (not b!7377912) (not d!2285004) (not bs!1921393) (not b!7377945) (not b!7377727) (not b!7377920) (not b!7377954) (not b!7377951) (not b!7377661) (not b!7377928) (not bs!1921392) (not b!7377752) (not bm!678475) (not b!7377980) (not b!7377966) (not b!7377884) (not b!7377810) (not b!7377896) (not b!7377979) (not bm!678453) (not b!7377960) (not b!7377984) (not b!7377950) (not bm!678461) (not b!7377822) (not b!7377451) (not b!7377817) (not bm!678495) (not b!7377892) (not b!7377909) (not b!7377890) (not b!7377958) (not bm!678482) (not b!7377750) (not b!7377816) (not bs!1921386) (not b!7377942) (not b!7377917) (not b!7377743) (not b!7377833) (not b!7377910) (not b!7377989) (not b!7377929) (not b!7377978) (not b!7377778) (not d!2284924) (not b!7377918) (not bm!678434) (not bm!678486) (not bm!678431) (not b!7377708) (not b_lambda!284635) (not b!7377964) (not bm!678403) (not bm!678432) (not b!7377933) (not b!7377886) (not bm!678468) (not b!7377983) (not d!2285068) (not bm!678459) (not b!7377686) (not bm!678476) (not b!7377721) (not b!7377976) (not b!7377719) (not bs!1921389) (not b!7377855) (not b!7377941) (not b!7377740) (not b!7377882) (not b_lambda!284645) (not b!7377955) (not b!7377936) (not b!7377967) (not b!7377992) (not b!7377880) (not b!7377861) (not bm!678465) (not b!7377939) (not b_lambda!284639) (not b!7377748) (not b!7377888) (not b!7377974) (not bm!678440) (not b!7377677) (not b!7377697) (not b!7377932) (not b!7377962) (not b!7377937) (not bm!678436) (not bm!678438) (not b!7377993) (not b!7377723) (not bs!1921385) (not b_lambda!284643) (not b!7377484) (not b!7377908) (not b!7377881) (not b!7377925) (not b!7377842) (not b!7377981) (not b!7377972) (not bm!678463) (not b!7377859) (not b!7377746) (not b!7377786) (not b!7377963) (not bm!678449) (not b!7377898) (not b!7377991) (not d!2285032) (not b!7377949) (not bm!678444) (not b!7377968) (not d!2284984) (not b!7377906) (not b!7377959) (not b!7377889) (not b!7377865) (not b!7377904) (not b!7377814) (not b!7377914) (not b!7377971) (not b!7377869) (not bm!678467) (not b!7377742) (not b!7377756) (not b!7377867) (not b!7377902) (not b_lambda!284637) (not bm!678401) (not bm!678478) (not bm!678455) (not d!2284918) (not b!7377885) (not b!7377913) (not bm!678490) (not b!7377767) (not bm!678414) (not d!2284910) (not bm!678494) (not b!7377897) (not b_lambda!284647) (not b!7377900) (not bm!678442) (not bs!1921388) (not d!2284970) (not b!7377901) tp_is_empty!48859 (not b!7377952) (not b!7377926) (not b!7377669) (not b!7377985) (not bs!1921387))
(check-sat)
