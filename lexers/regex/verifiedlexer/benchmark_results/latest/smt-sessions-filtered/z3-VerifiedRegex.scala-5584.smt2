; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279892 () Bool)

(assert start!279892)

(declare-fun res!1190353 () Bool)

(declare-fun e!1815306 () Bool)

(assert (=> start!279892 (=> (not res!1190353) (not e!1815306))))

(declare-datatypes ((C!17628 0))(
  ( (C!17629 (val!10848 Int)) )
))
(declare-datatypes ((Regex!8723 0))(
  ( (ElementMatch!8723 (c!463270 C!17628)) (Concat!14044 (regOne!17958 Regex!8723) (regTwo!17958 Regex!8723)) (EmptyExpr!8723) (Star!8723 (reg!9052 Regex!8723)) (EmptyLang!8723) (Union!8723 (regOne!17959 Regex!8723) (regTwo!17959 Regex!8723)) )
))
(declare-datatypes ((List!34473 0))(
  ( (Nil!34349) (Cons!34349 (h!39769 Regex!8723) (t!233516 List!34473)) )
))
(declare-datatypes ((Context!5366 0))(
  ( (Context!5367 (exprs!3183 List!34473)) )
))
(declare-fun c!7184 () Context!5366)

(declare-fun lostCause!815 (Context!5366) Bool)

(assert (=> start!279892 (= res!1190353 (not (lostCause!815 c!7184)))))

(assert (=> start!279892 e!1815306))

(declare-fun e!1815307 () Bool)

(declare-fun inv!46394 (Context!5366) Bool)

(assert (=> start!279892 (and (inv!46394 c!7184) e!1815307)))

(declare-fun b!2867644 () Bool)

(assert (=> b!2867644 (= e!1815306 (not (inv!46394 (Context!5367 (t!233516 (exprs!3183 c!7184))))))))

(declare-fun b!2867645 () Bool)

(declare-fun tp!923076 () Bool)

(assert (=> b!2867645 (= e!1815307 tp!923076)))

(declare-fun b!2867642 () Bool)

(declare-fun res!1190354 () Bool)

(assert (=> b!2867642 (=> (not res!1190354) (not e!1815306))))

(get-info :version)

(assert (=> b!2867642 (= res!1190354 ((_ is Cons!34349) (exprs!3183 c!7184)))))

(declare-fun b!2867643 () Bool)

(declare-fun res!1190355 () Bool)

(assert (=> b!2867643 (=> (not res!1190355) (not e!1815306))))

(declare-datatypes ((List!34474 0))(
  ( (Nil!34350) (Cons!34350 (h!39770 C!17628) (t!233517 List!34474)) )
))
(declare-datatypes ((Option!6398 0))(
  ( (None!6397) (Some!6397 (v!34519 List!34474)) )
))
(declare-fun getLanguageWitness!398 (Regex!8723) Option!6398)

(assert (=> b!2867643 (= res!1190355 ((_ is Some!6397) (getLanguageWitness!398 (h!39769 (exprs!3183 c!7184)))))))

(assert (= (and start!279892 res!1190353) b!2867642))

(assert (= (and b!2867642 res!1190354) b!2867643))

(assert (= (and b!2867643 res!1190355) b!2867644))

(assert (= start!279892 b!2867645))

(declare-fun m!3287647 () Bool)

(assert (=> start!279892 m!3287647))

(declare-fun m!3287649 () Bool)

(assert (=> start!279892 m!3287649))

(declare-fun m!3287651 () Bool)

(assert (=> b!2867644 m!3287651))

(declare-fun m!3287653 () Bool)

(assert (=> b!2867643 m!3287653))

(check-sat (not start!279892) (not b!2867643) (not b!2867644) (not b!2867645))
(check-sat)
(get-model)

(declare-fun d!828973 () Bool)

(declare-fun lambda!106899 () Int)

(declare-fun exists!1141 (List!34473 Int) Bool)

(assert (=> d!828973 (= (lostCause!815 c!7184) (exists!1141 (exprs!3183 c!7184) lambda!106899))))

(declare-fun bs!521702 () Bool)

(assert (= bs!521702 d!828973))

(declare-fun m!3287655 () Bool)

(assert (=> bs!521702 m!3287655))

(assert (=> start!279892 d!828973))

(declare-fun bs!521703 () Bool)

(declare-fun d!828977 () Bool)

(assert (= bs!521703 (and d!828977 d!828973)))

(declare-fun lambda!106904 () Int)

(assert (=> bs!521703 (not (= lambda!106904 lambda!106899))))

(declare-fun forall!7067 (List!34473 Int) Bool)

(assert (=> d!828977 (= (inv!46394 c!7184) (forall!7067 (exprs!3183 c!7184) lambda!106904))))

(declare-fun bs!521704 () Bool)

(assert (= bs!521704 d!828977))

(declare-fun m!3287657 () Bool)

(assert (=> bs!521704 m!3287657))

(assert (=> start!279892 d!828977))

(declare-fun b!2867710 () Bool)

(declare-fun e!1815346 () Option!6398)

(declare-fun lt!1017366 () Option!6398)

(assert (=> b!2867710 (= e!1815346 lt!1017366)))

(declare-fun b!2867711 () Bool)

(declare-fun e!1815344 () Option!6398)

(declare-fun lt!1017368 () Option!6398)

(declare-fun lt!1017367 () Option!6398)

(declare-fun ++!8159 (List!34474 List!34474) List!34474)

(assert (=> b!2867711 (= e!1815344 (Some!6397 (++!8159 (v!34519 lt!1017368) (v!34519 lt!1017367))))))

(declare-fun b!2867712 () Bool)

(declare-fun e!1815343 () Option!6398)

(declare-fun e!1815340 () Option!6398)

(assert (=> b!2867712 (= e!1815343 e!1815340)))

(declare-fun c!463307 () Bool)

(assert (=> b!2867712 (= c!463307 ((_ is EmptyLang!8723) (h!39769 (exprs!3183 c!7184))))))

(declare-fun b!2867713 () Bool)

(declare-fun e!1815345 () Option!6398)

(declare-fun e!1815347 () Option!6398)

(assert (=> b!2867713 (= e!1815345 e!1815347)))

(declare-fun c!463303 () Bool)

(assert (=> b!2867713 (= c!463303 ((_ is Star!8723) (h!39769 (exprs!3183 c!7184))))))

(declare-fun bm!184998 () Bool)

(declare-fun call!185003 () Option!6398)

(declare-fun c!463308 () Bool)

(assert (=> bm!184998 (= call!185003 (getLanguageWitness!398 (ite c!463308 (regOne!17959 (h!39769 (exprs!3183 c!7184))) (regOne!17958 (h!39769 (exprs!3183 c!7184))))))))

(declare-fun b!2867714 () Bool)

(assert (=> b!2867714 (= e!1815343 (Some!6397 Nil!34350))))

(declare-fun bm!184999 () Bool)

(declare-fun call!185004 () Option!6398)

(assert (=> bm!184999 (= call!185004 (getLanguageWitness!398 (ite c!463308 (regTwo!17959 (h!39769 (exprs!3183 c!7184))) (regTwo!17958 (h!39769 (exprs!3183 c!7184))))))))

(declare-fun b!2867715 () Bool)

(assert (=> b!2867715 (= e!1815345 (Some!6397 (Cons!34350 (c!463270 (h!39769 (exprs!3183 c!7184))) Nil!34350)))))

(declare-fun d!828979 () Bool)

(declare-fun c!463310 () Bool)

(assert (=> d!828979 (= c!463310 ((_ is EmptyExpr!8723) (h!39769 (exprs!3183 c!7184))))))

(assert (=> d!828979 (= (getLanguageWitness!398 (h!39769 (exprs!3183 c!7184))) e!1815343)))

(declare-fun b!2867716 () Bool)

(declare-fun c!463309 () Bool)

(assert (=> b!2867716 (= c!463309 ((_ is Some!6397) lt!1017367))))

(assert (=> b!2867716 (= lt!1017367 call!185004)))

(declare-fun e!1815341 () Option!6398)

(assert (=> b!2867716 (= e!1815341 e!1815344)))

(declare-fun b!2867717 () Bool)

(assert (=> b!2867717 (= c!463308 ((_ is Union!8723) (h!39769 (exprs!3183 c!7184))))))

(declare-fun e!1815342 () Option!6398)

(assert (=> b!2867717 (= e!1815347 e!1815342)))

(declare-fun b!2867718 () Bool)

(assert (=> b!2867718 (= e!1815342 e!1815346)))

(assert (=> b!2867718 (= lt!1017366 call!185003)))

(declare-fun c!463305 () Bool)

(assert (=> b!2867718 (= c!463305 ((_ is Some!6397) lt!1017366))))

(declare-fun b!2867719 () Bool)

(assert (=> b!2867719 (= e!1815342 e!1815341)))

(assert (=> b!2867719 (= lt!1017368 call!185003)))

(declare-fun c!463304 () Bool)

(assert (=> b!2867719 (= c!463304 ((_ is Some!6397) lt!1017368))))

(declare-fun b!2867720 () Bool)

(assert (=> b!2867720 (= e!1815347 (Some!6397 Nil!34350))))

(declare-fun b!2867721 () Bool)

(assert (=> b!2867721 (= e!1815341 None!6397)))

(declare-fun b!2867722 () Bool)

(assert (=> b!2867722 (= e!1815346 call!185004)))

(declare-fun b!2867723 () Bool)

(assert (=> b!2867723 (= e!1815340 None!6397)))

(declare-fun b!2867724 () Bool)

(declare-fun c!463306 () Bool)

(assert (=> b!2867724 (= c!463306 ((_ is ElementMatch!8723) (h!39769 (exprs!3183 c!7184))))))

(assert (=> b!2867724 (= e!1815340 e!1815345)))

(declare-fun b!2867725 () Bool)

(assert (=> b!2867725 (= e!1815344 None!6397)))

(assert (= (and d!828979 c!463310) b!2867714))

(assert (= (and d!828979 (not c!463310)) b!2867712))

(assert (= (and b!2867712 c!463307) b!2867723))

(assert (= (and b!2867712 (not c!463307)) b!2867724))

(assert (= (and b!2867724 c!463306) b!2867715))

(assert (= (and b!2867724 (not c!463306)) b!2867713))

(assert (= (and b!2867713 c!463303) b!2867720))

(assert (= (and b!2867713 (not c!463303)) b!2867717))

(assert (= (and b!2867717 c!463308) b!2867718))

(assert (= (and b!2867717 (not c!463308)) b!2867719))

(assert (= (and b!2867718 c!463305) b!2867710))

(assert (= (and b!2867718 (not c!463305)) b!2867722))

(assert (= (and b!2867719 c!463304) b!2867716))

(assert (= (and b!2867719 (not c!463304)) b!2867721))

(assert (= (and b!2867716 c!463309) b!2867711))

(assert (= (and b!2867716 (not c!463309)) b!2867725))

(assert (= (or b!2867722 b!2867716) bm!184999))

(assert (= (or b!2867718 b!2867719) bm!184998))

(declare-fun m!3287663 () Bool)

(assert (=> b!2867711 m!3287663))

(declare-fun m!3287665 () Bool)

(assert (=> bm!184998 m!3287665))

(declare-fun m!3287667 () Bool)

(assert (=> bm!184999 m!3287667))

(assert (=> b!2867643 d!828979))

(declare-fun bs!521708 () Bool)

(declare-fun d!828985 () Bool)

(assert (= bs!521708 (and d!828985 d!828973)))

(declare-fun lambda!106909 () Int)

(assert (=> bs!521708 (not (= lambda!106909 lambda!106899))))

(declare-fun bs!521709 () Bool)

(assert (= bs!521709 (and d!828985 d!828977)))

(assert (=> bs!521709 (= lambda!106909 lambda!106904)))

(assert (=> d!828985 (= (inv!46394 (Context!5367 (t!233516 (exprs!3183 c!7184)))) (forall!7067 (exprs!3183 (Context!5367 (t!233516 (exprs!3183 c!7184)))) lambda!106909))))

(declare-fun bs!521710 () Bool)

(assert (= bs!521710 d!828985))

(declare-fun m!3287669 () Bool)

(assert (=> bs!521710 m!3287669))

(assert (=> b!2867644 d!828985))

(declare-fun b!2867730 () Bool)

(declare-fun e!1815350 () Bool)

(declare-fun tp!923081 () Bool)

(declare-fun tp!923082 () Bool)

(assert (=> b!2867730 (= e!1815350 (and tp!923081 tp!923082))))

(assert (=> b!2867645 (= tp!923076 e!1815350)))

(assert (= (and b!2867645 ((_ is Cons!34349) (exprs!3183 c!7184))) b!2867730))

(check-sat (not bm!184998) (not b!2867711) (not d!828985) (not bm!184999) (not b!2867730) (not d!828977) (not d!828973))
(check-sat)
(get-model)

(declare-fun d!828989 () Bool)

(declare-fun res!1190360 () Bool)

(declare-fun e!1815366 () Bool)

(assert (=> d!828989 (=> res!1190360 e!1815366)))

(assert (=> d!828989 (= res!1190360 ((_ is Nil!34349) (exprs!3183 c!7184)))))

(assert (=> d!828989 (= (forall!7067 (exprs!3183 c!7184) lambda!106904) e!1815366)))

(declare-fun b!2867756 () Bool)

(declare-fun e!1815367 () Bool)

(assert (=> b!2867756 (= e!1815366 e!1815367)))

(declare-fun res!1190361 () Bool)

(assert (=> b!2867756 (=> (not res!1190361) (not e!1815367))))

(declare-fun dynLambda!14287 (Int Regex!8723) Bool)

(assert (=> b!2867756 (= res!1190361 (dynLambda!14287 lambda!106904 (h!39769 (exprs!3183 c!7184))))))

(declare-fun b!2867757 () Bool)

(assert (=> b!2867757 (= e!1815367 (forall!7067 (t!233516 (exprs!3183 c!7184)) lambda!106904))))

(assert (= (and d!828989 (not res!1190360)) b!2867756))

(assert (= (and b!2867756 res!1190361) b!2867757))

(declare-fun b_lambda!85939 () Bool)

(assert (=> (not b_lambda!85939) (not b!2867756)))

(declare-fun m!3287679 () Bool)

(assert (=> b!2867756 m!3287679))

(declare-fun m!3287681 () Bool)

(assert (=> b!2867757 m!3287681))

(assert (=> d!828977 d!828989))

(declare-fun b!2867758 () Bool)

(declare-fun e!1815374 () Option!6398)

(declare-fun lt!1017372 () Option!6398)

(assert (=> b!2867758 (= e!1815374 lt!1017372)))

(declare-fun b!2867759 () Bool)

(declare-fun e!1815372 () Option!6398)

(declare-fun lt!1017374 () Option!6398)

(declare-fun lt!1017373 () Option!6398)

(assert (=> b!2867759 (= e!1815372 (Some!6397 (++!8159 (v!34519 lt!1017374) (v!34519 lt!1017373))))))

(declare-fun b!2867760 () Bool)

(declare-fun e!1815371 () Option!6398)

(declare-fun e!1815368 () Option!6398)

(assert (=> b!2867760 (= e!1815371 e!1815368)))

(declare-fun c!463323 () Bool)

(assert (=> b!2867760 (= c!463323 ((_ is EmptyLang!8723) (ite c!463308 (regOne!17959 (h!39769 (exprs!3183 c!7184))) (regOne!17958 (h!39769 (exprs!3183 c!7184))))))))

(declare-fun b!2867761 () Bool)

(declare-fun e!1815373 () Option!6398)

(declare-fun e!1815375 () Option!6398)

(assert (=> b!2867761 (= e!1815373 e!1815375)))

(declare-fun c!463319 () Bool)

(assert (=> b!2867761 (= c!463319 ((_ is Star!8723) (ite c!463308 (regOne!17959 (h!39769 (exprs!3183 c!7184))) (regOne!17958 (h!39769 (exprs!3183 c!7184))))))))

(declare-fun call!185011 () Option!6398)

(declare-fun c!463324 () Bool)

(declare-fun bm!185006 () Bool)

(assert (=> bm!185006 (= call!185011 (getLanguageWitness!398 (ite c!463324 (regOne!17959 (ite c!463308 (regOne!17959 (h!39769 (exprs!3183 c!7184))) (regOne!17958 (h!39769 (exprs!3183 c!7184))))) (regOne!17958 (ite c!463308 (regOne!17959 (h!39769 (exprs!3183 c!7184))) (regOne!17958 (h!39769 (exprs!3183 c!7184))))))))))

(declare-fun b!2867762 () Bool)

(assert (=> b!2867762 (= e!1815371 (Some!6397 Nil!34350))))

(declare-fun bm!185007 () Bool)

(declare-fun call!185012 () Option!6398)

(assert (=> bm!185007 (= call!185012 (getLanguageWitness!398 (ite c!463324 (regTwo!17959 (ite c!463308 (regOne!17959 (h!39769 (exprs!3183 c!7184))) (regOne!17958 (h!39769 (exprs!3183 c!7184))))) (regTwo!17958 (ite c!463308 (regOne!17959 (h!39769 (exprs!3183 c!7184))) (regOne!17958 (h!39769 (exprs!3183 c!7184))))))))))

(declare-fun b!2867763 () Bool)

(assert (=> b!2867763 (= e!1815373 (Some!6397 (Cons!34350 (c!463270 (ite c!463308 (regOne!17959 (h!39769 (exprs!3183 c!7184))) (regOne!17958 (h!39769 (exprs!3183 c!7184))))) Nil!34350)))))

(declare-fun d!828991 () Bool)

(declare-fun c!463326 () Bool)

(assert (=> d!828991 (= c!463326 ((_ is EmptyExpr!8723) (ite c!463308 (regOne!17959 (h!39769 (exprs!3183 c!7184))) (regOne!17958 (h!39769 (exprs!3183 c!7184))))))))

(assert (=> d!828991 (= (getLanguageWitness!398 (ite c!463308 (regOne!17959 (h!39769 (exprs!3183 c!7184))) (regOne!17958 (h!39769 (exprs!3183 c!7184))))) e!1815371)))

(declare-fun b!2867764 () Bool)

(declare-fun c!463325 () Bool)

(assert (=> b!2867764 (= c!463325 ((_ is Some!6397) lt!1017373))))

(assert (=> b!2867764 (= lt!1017373 call!185012)))

(declare-fun e!1815369 () Option!6398)

(assert (=> b!2867764 (= e!1815369 e!1815372)))

(declare-fun b!2867765 () Bool)

(assert (=> b!2867765 (= c!463324 ((_ is Union!8723) (ite c!463308 (regOne!17959 (h!39769 (exprs!3183 c!7184))) (regOne!17958 (h!39769 (exprs!3183 c!7184))))))))

(declare-fun e!1815370 () Option!6398)

(assert (=> b!2867765 (= e!1815375 e!1815370)))

(declare-fun b!2867766 () Bool)

(assert (=> b!2867766 (= e!1815370 e!1815374)))

(assert (=> b!2867766 (= lt!1017372 call!185011)))

(declare-fun c!463321 () Bool)

(assert (=> b!2867766 (= c!463321 ((_ is Some!6397) lt!1017372))))

(declare-fun b!2867767 () Bool)

(assert (=> b!2867767 (= e!1815370 e!1815369)))

(assert (=> b!2867767 (= lt!1017374 call!185011)))

(declare-fun c!463320 () Bool)

(assert (=> b!2867767 (= c!463320 ((_ is Some!6397) lt!1017374))))

(declare-fun b!2867768 () Bool)

(assert (=> b!2867768 (= e!1815375 (Some!6397 Nil!34350))))

(declare-fun b!2867769 () Bool)

(assert (=> b!2867769 (= e!1815369 None!6397)))

(declare-fun b!2867770 () Bool)

(assert (=> b!2867770 (= e!1815374 call!185012)))

(declare-fun b!2867771 () Bool)

(assert (=> b!2867771 (= e!1815368 None!6397)))

(declare-fun b!2867772 () Bool)

(declare-fun c!463322 () Bool)

(assert (=> b!2867772 (= c!463322 ((_ is ElementMatch!8723) (ite c!463308 (regOne!17959 (h!39769 (exprs!3183 c!7184))) (regOne!17958 (h!39769 (exprs!3183 c!7184))))))))

(assert (=> b!2867772 (= e!1815368 e!1815373)))

(declare-fun b!2867773 () Bool)

(assert (=> b!2867773 (= e!1815372 None!6397)))

(assert (= (and d!828991 c!463326) b!2867762))

(assert (= (and d!828991 (not c!463326)) b!2867760))

(assert (= (and b!2867760 c!463323) b!2867771))

(assert (= (and b!2867760 (not c!463323)) b!2867772))

(assert (= (and b!2867772 c!463322) b!2867763))

(assert (= (and b!2867772 (not c!463322)) b!2867761))

(assert (= (and b!2867761 c!463319) b!2867768))

(assert (= (and b!2867761 (not c!463319)) b!2867765))

(assert (= (and b!2867765 c!463324) b!2867766))

(assert (= (and b!2867765 (not c!463324)) b!2867767))

(assert (= (and b!2867766 c!463321) b!2867758))

(assert (= (and b!2867766 (not c!463321)) b!2867770))

(assert (= (and b!2867767 c!463320) b!2867764))

(assert (= (and b!2867767 (not c!463320)) b!2867769))

(assert (= (and b!2867764 c!463325) b!2867759))

(assert (= (and b!2867764 (not c!463325)) b!2867773))

(assert (= (or b!2867770 b!2867764) bm!185007))

(assert (= (or b!2867766 b!2867767) bm!185006))

(declare-fun m!3287683 () Bool)

(assert (=> b!2867759 m!3287683))

(declare-fun m!3287685 () Bool)

(assert (=> bm!185006 m!3287685))

(declare-fun m!3287687 () Bool)

(assert (=> bm!185007 m!3287687))

(assert (=> bm!184998 d!828991))

(declare-fun bs!521714 () Bool)

(declare-fun d!828993 () Bool)

(assert (= bs!521714 (and d!828993 d!828973)))

(declare-fun lambda!106913 () Int)

(assert (=> bs!521714 (not (= lambda!106913 lambda!106899))))

(declare-fun bs!521715 () Bool)

(assert (= bs!521715 (and d!828993 d!828977)))

(assert (=> bs!521715 (not (= lambda!106913 lambda!106904))))

(declare-fun bs!521716 () Bool)

(assert (= bs!521716 (and d!828993 d!828985)))

(assert (=> bs!521716 (not (= lambda!106913 lambda!106909))))

(assert (=> d!828993 true))

(declare-fun order!18105 () Int)

(declare-fun dynLambda!14288 (Int Int) Int)

(assert (=> d!828993 (< (dynLambda!14288 order!18105 lambda!106899) (dynLambda!14288 order!18105 lambda!106913))))

(assert (=> d!828993 (= (exists!1141 (exprs!3183 c!7184) lambda!106899) (not (forall!7067 (exprs!3183 c!7184) lambda!106913)))))

(declare-fun bs!521717 () Bool)

(assert (= bs!521717 d!828993))

(declare-fun m!3287689 () Bool)

(assert (=> bs!521717 m!3287689))

(assert (=> d!828973 d!828993))

(declare-fun b!2867776 () Bool)

(declare-fun e!1815382 () Option!6398)

(declare-fun lt!1017375 () Option!6398)

(assert (=> b!2867776 (= e!1815382 lt!1017375)))

(declare-fun b!2867777 () Bool)

(declare-fun e!1815380 () Option!6398)

(declare-fun lt!1017377 () Option!6398)

(declare-fun lt!1017376 () Option!6398)

(assert (=> b!2867777 (= e!1815380 (Some!6397 (++!8159 (v!34519 lt!1017377) (v!34519 lt!1017376))))))

(declare-fun b!2867778 () Bool)

(declare-fun e!1815379 () Option!6398)

(declare-fun e!1815376 () Option!6398)

(assert (=> b!2867778 (= e!1815379 e!1815376)))

(declare-fun c!463331 () Bool)

(assert (=> b!2867778 (= c!463331 ((_ is EmptyLang!8723) (ite c!463308 (regTwo!17959 (h!39769 (exprs!3183 c!7184))) (regTwo!17958 (h!39769 (exprs!3183 c!7184))))))))

(declare-fun b!2867779 () Bool)

(declare-fun e!1815381 () Option!6398)

(declare-fun e!1815383 () Option!6398)

(assert (=> b!2867779 (= e!1815381 e!1815383)))

(declare-fun c!463327 () Bool)

(assert (=> b!2867779 (= c!463327 ((_ is Star!8723) (ite c!463308 (regTwo!17959 (h!39769 (exprs!3183 c!7184))) (regTwo!17958 (h!39769 (exprs!3183 c!7184))))))))

(declare-fun c!463332 () Bool)

(declare-fun bm!185008 () Bool)

(declare-fun call!185013 () Option!6398)

(assert (=> bm!185008 (= call!185013 (getLanguageWitness!398 (ite c!463332 (regOne!17959 (ite c!463308 (regTwo!17959 (h!39769 (exprs!3183 c!7184))) (regTwo!17958 (h!39769 (exprs!3183 c!7184))))) (regOne!17958 (ite c!463308 (regTwo!17959 (h!39769 (exprs!3183 c!7184))) (regTwo!17958 (h!39769 (exprs!3183 c!7184))))))))))

(declare-fun b!2867780 () Bool)

(assert (=> b!2867780 (= e!1815379 (Some!6397 Nil!34350))))

(declare-fun call!185014 () Option!6398)

(declare-fun bm!185009 () Bool)

(assert (=> bm!185009 (= call!185014 (getLanguageWitness!398 (ite c!463332 (regTwo!17959 (ite c!463308 (regTwo!17959 (h!39769 (exprs!3183 c!7184))) (regTwo!17958 (h!39769 (exprs!3183 c!7184))))) (regTwo!17958 (ite c!463308 (regTwo!17959 (h!39769 (exprs!3183 c!7184))) (regTwo!17958 (h!39769 (exprs!3183 c!7184))))))))))

(declare-fun b!2867781 () Bool)

(assert (=> b!2867781 (= e!1815381 (Some!6397 (Cons!34350 (c!463270 (ite c!463308 (regTwo!17959 (h!39769 (exprs!3183 c!7184))) (regTwo!17958 (h!39769 (exprs!3183 c!7184))))) Nil!34350)))))

(declare-fun d!828995 () Bool)

(declare-fun c!463334 () Bool)

(assert (=> d!828995 (= c!463334 ((_ is EmptyExpr!8723) (ite c!463308 (regTwo!17959 (h!39769 (exprs!3183 c!7184))) (regTwo!17958 (h!39769 (exprs!3183 c!7184))))))))

(assert (=> d!828995 (= (getLanguageWitness!398 (ite c!463308 (regTwo!17959 (h!39769 (exprs!3183 c!7184))) (regTwo!17958 (h!39769 (exprs!3183 c!7184))))) e!1815379)))

(declare-fun b!2867782 () Bool)

(declare-fun c!463333 () Bool)

(assert (=> b!2867782 (= c!463333 ((_ is Some!6397) lt!1017376))))

(assert (=> b!2867782 (= lt!1017376 call!185014)))

(declare-fun e!1815377 () Option!6398)

(assert (=> b!2867782 (= e!1815377 e!1815380)))

(declare-fun b!2867783 () Bool)

(assert (=> b!2867783 (= c!463332 ((_ is Union!8723) (ite c!463308 (regTwo!17959 (h!39769 (exprs!3183 c!7184))) (regTwo!17958 (h!39769 (exprs!3183 c!7184))))))))

(declare-fun e!1815378 () Option!6398)

(assert (=> b!2867783 (= e!1815383 e!1815378)))

(declare-fun b!2867784 () Bool)

(assert (=> b!2867784 (= e!1815378 e!1815382)))

(assert (=> b!2867784 (= lt!1017375 call!185013)))

(declare-fun c!463329 () Bool)

(assert (=> b!2867784 (= c!463329 ((_ is Some!6397) lt!1017375))))

(declare-fun b!2867785 () Bool)

(assert (=> b!2867785 (= e!1815378 e!1815377)))

(assert (=> b!2867785 (= lt!1017377 call!185013)))

(declare-fun c!463328 () Bool)

(assert (=> b!2867785 (= c!463328 ((_ is Some!6397) lt!1017377))))

(declare-fun b!2867786 () Bool)

(assert (=> b!2867786 (= e!1815383 (Some!6397 Nil!34350))))

(declare-fun b!2867787 () Bool)

(assert (=> b!2867787 (= e!1815377 None!6397)))

(declare-fun b!2867788 () Bool)

(assert (=> b!2867788 (= e!1815382 call!185014)))

(declare-fun b!2867789 () Bool)

(assert (=> b!2867789 (= e!1815376 None!6397)))

(declare-fun b!2867790 () Bool)

(declare-fun c!463330 () Bool)

(assert (=> b!2867790 (= c!463330 ((_ is ElementMatch!8723) (ite c!463308 (regTwo!17959 (h!39769 (exprs!3183 c!7184))) (regTwo!17958 (h!39769 (exprs!3183 c!7184))))))))

(assert (=> b!2867790 (= e!1815376 e!1815381)))

(declare-fun b!2867791 () Bool)

(assert (=> b!2867791 (= e!1815380 None!6397)))

(assert (= (and d!828995 c!463334) b!2867780))

(assert (= (and d!828995 (not c!463334)) b!2867778))

(assert (= (and b!2867778 c!463331) b!2867789))

(assert (= (and b!2867778 (not c!463331)) b!2867790))

(assert (= (and b!2867790 c!463330) b!2867781))

(assert (= (and b!2867790 (not c!463330)) b!2867779))

(assert (= (and b!2867779 c!463327) b!2867786))

(assert (= (and b!2867779 (not c!463327)) b!2867783))

(assert (= (and b!2867783 c!463332) b!2867784))

(assert (= (and b!2867783 (not c!463332)) b!2867785))

(assert (= (and b!2867784 c!463329) b!2867776))

(assert (= (and b!2867784 (not c!463329)) b!2867788))

(assert (= (and b!2867785 c!463328) b!2867782))

(assert (= (and b!2867785 (not c!463328)) b!2867787))

(assert (= (and b!2867782 c!463333) b!2867777))

(assert (= (and b!2867782 (not c!463333)) b!2867791))

(assert (= (or b!2867788 b!2867782) bm!185009))

(assert (= (or b!2867784 b!2867785) bm!185008))

(declare-fun m!3287691 () Bool)

(assert (=> b!2867777 m!3287691))

(declare-fun m!3287693 () Bool)

(assert (=> bm!185008 m!3287693))

(declare-fun m!3287695 () Bool)

(assert (=> bm!185009 m!3287695))

(assert (=> bm!184999 d!828995))

(declare-fun d!828997 () Bool)

(declare-fun res!1190362 () Bool)

(declare-fun e!1815384 () Bool)

(assert (=> d!828997 (=> res!1190362 e!1815384)))

(assert (=> d!828997 (= res!1190362 ((_ is Nil!34349) (exprs!3183 (Context!5367 (t!233516 (exprs!3183 c!7184))))))))

(assert (=> d!828997 (= (forall!7067 (exprs!3183 (Context!5367 (t!233516 (exprs!3183 c!7184)))) lambda!106909) e!1815384)))

(declare-fun b!2867792 () Bool)

(declare-fun e!1815385 () Bool)

(assert (=> b!2867792 (= e!1815384 e!1815385)))

(declare-fun res!1190363 () Bool)

(assert (=> b!2867792 (=> (not res!1190363) (not e!1815385))))

(assert (=> b!2867792 (= res!1190363 (dynLambda!14287 lambda!106909 (h!39769 (exprs!3183 (Context!5367 (t!233516 (exprs!3183 c!7184)))))))))

(declare-fun b!2867793 () Bool)

(assert (=> b!2867793 (= e!1815385 (forall!7067 (t!233516 (exprs!3183 (Context!5367 (t!233516 (exprs!3183 c!7184))))) lambda!106909))))

(assert (= (and d!828997 (not res!1190362)) b!2867792))

(assert (= (and b!2867792 res!1190363) b!2867793))

(declare-fun b_lambda!85941 () Bool)

(assert (=> (not b_lambda!85941) (not b!2867792)))

(declare-fun m!3287697 () Bool)

(assert (=> b!2867792 m!3287697))

(declare-fun m!3287699 () Bool)

(assert (=> b!2867793 m!3287699))

(assert (=> d!828985 d!828997))

(declare-fun d!828999 () Bool)

(declare-fun e!1815391 () Bool)

(assert (=> d!828999 e!1815391))

(declare-fun res!1190369 () Bool)

(assert (=> d!828999 (=> (not res!1190369) (not e!1815391))))

(declare-fun lt!1017380 () List!34474)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4687 (List!34474) (InoxSet C!17628))

(assert (=> d!828999 (= res!1190369 (= (content!4687 lt!1017380) ((_ map or) (content!4687 (v!34519 lt!1017368)) (content!4687 (v!34519 lt!1017367)))))))

(declare-fun e!1815390 () List!34474)

(assert (=> d!828999 (= lt!1017380 e!1815390)))

(declare-fun c!463337 () Bool)

(assert (=> d!828999 (= c!463337 ((_ is Nil!34350) (v!34519 lt!1017368)))))

(assert (=> d!828999 (= (++!8159 (v!34519 lt!1017368) (v!34519 lt!1017367)) lt!1017380)))

(declare-fun b!2867802 () Bool)

(assert (=> b!2867802 (= e!1815390 (v!34519 lt!1017367))))

(declare-fun b!2867803 () Bool)

(assert (=> b!2867803 (= e!1815390 (Cons!34350 (h!39770 (v!34519 lt!1017368)) (++!8159 (t!233517 (v!34519 lt!1017368)) (v!34519 lt!1017367))))))

(declare-fun b!2867805 () Bool)

(assert (=> b!2867805 (= e!1815391 (or (not (= (v!34519 lt!1017367) Nil!34350)) (= lt!1017380 (v!34519 lt!1017368))))))

(declare-fun b!2867804 () Bool)

(declare-fun res!1190368 () Bool)

(assert (=> b!2867804 (=> (not res!1190368) (not e!1815391))))

(declare-fun size!26308 (List!34474) Int)

(assert (=> b!2867804 (= res!1190368 (= (size!26308 lt!1017380) (+ (size!26308 (v!34519 lt!1017368)) (size!26308 (v!34519 lt!1017367)))))))

(assert (= (and d!828999 c!463337) b!2867802))

(assert (= (and d!828999 (not c!463337)) b!2867803))

(assert (= (and d!828999 res!1190369) b!2867804))

(assert (= (and b!2867804 res!1190368) b!2867805))

(declare-fun m!3287701 () Bool)

(assert (=> d!828999 m!3287701))

(declare-fun m!3287703 () Bool)

(assert (=> d!828999 m!3287703))

(declare-fun m!3287705 () Bool)

(assert (=> d!828999 m!3287705))

(declare-fun m!3287707 () Bool)

(assert (=> b!2867803 m!3287707))

(declare-fun m!3287709 () Bool)

(assert (=> b!2867804 m!3287709))

(declare-fun m!3287711 () Bool)

(assert (=> b!2867804 m!3287711))

(declare-fun m!3287713 () Bool)

(assert (=> b!2867804 m!3287713))

(assert (=> b!2867711 d!828999))

(declare-fun b!2867817 () Bool)

(declare-fun e!1815394 () Bool)

(declare-fun tp!923100 () Bool)

(declare-fun tp!923099 () Bool)

(assert (=> b!2867817 (= e!1815394 (and tp!923100 tp!923099))))

(declare-fun b!2867819 () Bool)

(declare-fun tp!923102 () Bool)

(declare-fun tp!923101 () Bool)

(assert (=> b!2867819 (= e!1815394 (and tp!923102 tp!923101))))

(declare-fun b!2867816 () Bool)

(declare-fun tp_is_empty!15049 () Bool)

(assert (=> b!2867816 (= e!1815394 tp_is_empty!15049)))

(declare-fun b!2867818 () Bool)

(declare-fun tp!923103 () Bool)

(assert (=> b!2867818 (= e!1815394 tp!923103)))

(assert (=> b!2867730 (= tp!923081 e!1815394)))

(assert (= (and b!2867730 ((_ is ElementMatch!8723) (h!39769 (exprs!3183 c!7184)))) b!2867816))

(assert (= (and b!2867730 ((_ is Concat!14044) (h!39769 (exprs!3183 c!7184)))) b!2867817))

(assert (= (and b!2867730 ((_ is Star!8723) (h!39769 (exprs!3183 c!7184)))) b!2867818))

(assert (= (and b!2867730 ((_ is Union!8723) (h!39769 (exprs!3183 c!7184)))) b!2867819))

(declare-fun b!2867820 () Bool)

(declare-fun e!1815395 () Bool)

(declare-fun tp!923104 () Bool)

(declare-fun tp!923105 () Bool)

(assert (=> b!2867820 (= e!1815395 (and tp!923104 tp!923105))))

(assert (=> b!2867730 (= tp!923082 e!1815395)))

(assert (= (and b!2867730 ((_ is Cons!34349) (t!233516 (exprs!3183 c!7184)))) b!2867820))

(declare-fun b_lambda!85943 () Bool)

(assert (= b_lambda!85939 (or d!828977 b_lambda!85943)))

(declare-fun bs!521718 () Bool)

(declare-fun d!829001 () Bool)

(assert (= bs!521718 (and d!829001 d!828977)))

(declare-fun validRegex!3501 (Regex!8723) Bool)

(assert (=> bs!521718 (= (dynLambda!14287 lambda!106904 (h!39769 (exprs!3183 c!7184))) (validRegex!3501 (h!39769 (exprs!3183 c!7184))))))

(declare-fun m!3287715 () Bool)

(assert (=> bs!521718 m!3287715))

(assert (=> b!2867756 d!829001))

(declare-fun b_lambda!85945 () Bool)

(assert (= b_lambda!85941 (or d!828985 b_lambda!85945)))

(declare-fun bs!521719 () Bool)

(declare-fun d!829003 () Bool)

(assert (= bs!521719 (and d!829003 d!828985)))

(assert (=> bs!521719 (= (dynLambda!14287 lambda!106909 (h!39769 (exprs!3183 (Context!5367 (t!233516 (exprs!3183 c!7184)))))) (validRegex!3501 (h!39769 (exprs!3183 (Context!5367 (t!233516 (exprs!3183 c!7184)))))))))

(declare-fun m!3287717 () Bool)

(assert (=> bs!521719 m!3287717))

(assert (=> b!2867792 d!829003))

(check-sat (not bs!521718) (not b_lambda!85943) (not bm!185006) (not b!2867818) (not bm!185009) (not bs!521719) (not b!2867777) (not b!2867820) (not bm!185007) (not d!828993) (not b!2867819) (not b!2867817) (not b!2867803) (not b!2867793) (not b!2867804) (not d!828999) (not b_lambda!85945) (not b!2867757) (not bm!185008) tp_is_empty!15049 (not b!2867759))
(check-sat)
