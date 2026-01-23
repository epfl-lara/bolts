; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691388 () Bool)

(assert start!691388)

(declare-fun b!7102296 () Bool)

(declare-fun e!4268851 () Bool)

(declare-fun tp!1952698 () Bool)

(assert (=> b!7102296 (= e!4268851 tp!1952698)))

(declare-fun b!7102297 () Bool)

(declare-fun tp!1952695 () Bool)

(declare-fun tp!1952696 () Bool)

(assert (=> b!7102297 (= e!4268851 (and tp!1952695 tp!1952696))))

(declare-fun b!7102298 () Bool)

(declare-fun tp_is_empty!45011 () Bool)

(assert (=> b!7102298 (= e!4268851 tp_is_empty!45011)))

(declare-fun res!2899768 () Bool)

(declare-fun e!4268850 () Bool)

(assert (=> start!691388 (=> (not res!2899768) (not e!4268850))))

(declare-datatypes ((C!36048 0))(
  ( (C!36049 (val!27730 Int)) )
))
(declare-datatypes ((Regex!17889 0))(
  ( (ElementMatch!17889 (c!1325226 C!36048)) (Concat!26734 (regOne!36290 Regex!17889) (regTwo!36290 Regex!17889)) (EmptyExpr!17889) (Star!17889 (reg!18218 Regex!17889)) (EmptyLang!17889) (Union!17889 (regOne!36291 Regex!17889) (regTwo!36291 Regex!17889)) )
))
(declare-fun r!11554 () Regex!17889)

(declare-fun validRegex!9162 (Regex!17889) Bool)

(assert (=> start!691388 (= res!2899768 (validRegex!9162 r!11554))))

(assert (=> start!691388 e!4268850))

(assert (=> start!691388 e!4268851))

(declare-datatypes ((List!68850 0))(
  ( (Nil!68726) (Cons!68726 (h!75174 Regex!17889) (t!382667 List!68850)) )
))
(declare-datatypes ((Context!13766 0))(
  ( (Context!13767 (exprs!7383 List!68850)) )
))
(declare-fun cz!4 () Context!13766)

(declare-fun e!4268849 () Bool)

(declare-fun inv!87585 (Context!13766) Bool)

(assert (=> start!691388 (and (inv!87585 cz!4) e!4268849)))

(declare-fun auxCtx!45 () Context!13766)

(declare-fun e!4268852 () Bool)

(assert (=> start!691388 (and (inv!87585 auxCtx!45) e!4268852)))

(declare-fun b!7102299 () Bool)

(declare-fun ++!16041 (List!68850 List!68850) List!68850)

(assert (=> b!7102299 (= e!4268850 (not (inv!87585 (Context!13767 (++!16041 (exprs!7383 cz!4) (exprs!7383 auxCtx!45))))))))

(declare-datatypes ((Unit!162449 0))(
  ( (Unit!162450) )
))
(declare-fun lt!2558270 () Unit!162449)

(declare-fun lambda!431127 () Int)

(declare-fun lemmaConcatPreservesForall!1174 (List!68850 List!68850 Int) Unit!162449)

(assert (=> b!7102299 (= lt!2558270 (lemmaConcatPreservesForall!1174 (exprs!7383 cz!4) (exprs!7383 auxCtx!45) lambda!431127))))

(declare-fun b!7102300 () Bool)

(declare-fun tp!1952694 () Bool)

(assert (=> b!7102300 (= e!4268849 tp!1952694)))

(declare-fun b!7102301 () Bool)

(declare-fun tp!1952699 () Bool)

(assert (=> b!7102301 (= e!4268852 tp!1952699)))

(declare-fun b!7102302 () Bool)

(declare-fun tp!1952700 () Bool)

(declare-fun tp!1952697 () Bool)

(assert (=> b!7102302 (= e!4268851 (and tp!1952700 tp!1952697))))

(assert (= (and start!691388 res!2899768) b!7102299))

(get-info :version)

(assert (= (and start!691388 ((_ is ElementMatch!17889) r!11554)) b!7102298))

(assert (= (and start!691388 ((_ is Concat!26734) r!11554)) b!7102297))

(assert (= (and start!691388 ((_ is Star!17889) r!11554)) b!7102296))

(assert (= (and start!691388 ((_ is Union!17889) r!11554)) b!7102302))

(assert (= start!691388 b!7102300))

(assert (= start!691388 b!7102301))

(declare-fun m!7827044 () Bool)

(assert (=> start!691388 m!7827044))

(declare-fun m!7827046 () Bool)

(assert (=> start!691388 m!7827046))

(declare-fun m!7827048 () Bool)

(assert (=> start!691388 m!7827048))

(declare-fun m!7827050 () Bool)

(assert (=> b!7102299 m!7827050))

(declare-fun m!7827052 () Bool)

(assert (=> b!7102299 m!7827052))

(declare-fun m!7827054 () Bool)

(assert (=> b!7102299 m!7827054))

(check-sat tp_is_empty!45011 (not start!691388) (not b!7102297) (not b!7102300) (not b!7102296) (not b!7102299) (not b!7102302) (not b!7102301))
(check-sat)
(get-model)

(declare-fun bs!1884361 () Bool)

(declare-fun d!2218758 () Bool)

(assert (= bs!1884361 (and d!2218758 b!7102299)))

(declare-fun lambda!431130 () Int)

(assert (=> bs!1884361 (= lambda!431130 lambda!431127)))

(declare-fun forall!16792 (List!68850 Int) Bool)

(assert (=> d!2218758 (= (inv!87585 (Context!13767 (++!16041 (exprs!7383 cz!4) (exprs!7383 auxCtx!45)))) (forall!16792 (exprs!7383 (Context!13767 (++!16041 (exprs!7383 cz!4) (exprs!7383 auxCtx!45)))) lambda!431130))))

(declare-fun bs!1884362 () Bool)

(assert (= bs!1884362 d!2218758))

(declare-fun m!7827056 () Bool)

(assert (=> bs!1884362 m!7827056))

(assert (=> b!7102299 d!2218758))

(declare-fun d!2218762 () Bool)

(declare-fun e!4268878 () Bool)

(assert (=> d!2218762 e!4268878))

(declare-fun res!2899789 () Bool)

(assert (=> d!2218762 (=> (not res!2899789) (not e!4268878))))

(declare-fun lt!2558273 () List!68850)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13979 (List!68850) (InoxSet Regex!17889))

(assert (=> d!2218762 (= res!2899789 (= (content!13979 lt!2558273) ((_ map or) (content!13979 (exprs!7383 cz!4)) (content!13979 (exprs!7383 auxCtx!45)))))))

(declare-fun e!4268879 () List!68850)

(assert (=> d!2218762 (= lt!2558273 e!4268879)))

(declare-fun c!1325235 () Bool)

(assert (=> d!2218762 (= c!1325235 ((_ is Nil!68726) (exprs!7383 cz!4)))))

(assert (=> d!2218762 (= (++!16041 (exprs!7383 cz!4) (exprs!7383 auxCtx!45)) lt!2558273)))

(declare-fun b!7102338 () Bool)

(assert (=> b!7102338 (= e!4268879 (exprs!7383 auxCtx!45))))

(declare-fun b!7102340 () Bool)

(declare-fun res!2899788 () Bool)

(assert (=> b!7102340 (=> (not res!2899788) (not e!4268878))))

(declare-fun size!41354 (List!68850) Int)

(assert (=> b!7102340 (= res!2899788 (= (size!41354 lt!2558273) (+ (size!41354 (exprs!7383 cz!4)) (size!41354 (exprs!7383 auxCtx!45)))))))

(declare-fun b!7102341 () Bool)

(assert (=> b!7102341 (= e!4268878 (or (not (= (exprs!7383 auxCtx!45) Nil!68726)) (= lt!2558273 (exprs!7383 cz!4))))))

(declare-fun b!7102339 () Bool)

(assert (=> b!7102339 (= e!4268879 (Cons!68726 (h!75174 (exprs!7383 cz!4)) (++!16041 (t!382667 (exprs!7383 cz!4)) (exprs!7383 auxCtx!45))))))

(assert (= (and d!2218762 c!1325235) b!7102338))

(assert (= (and d!2218762 (not c!1325235)) b!7102339))

(assert (= (and d!2218762 res!2899789) b!7102340))

(assert (= (and b!7102340 res!2899788) b!7102341))

(declare-fun m!7827064 () Bool)

(assert (=> d!2218762 m!7827064))

(declare-fun m!7827066 () Bool)

(assert (=> d!2218762 m!7827066))

(declare-fun m!7827068 () Bool)

(assert (=> d!2218762 m!7827068))

(declare-fun m!7827070 () Bool)

(assert (=> b!7102340 m!7827070))

(declare-fun m!7827072 () Bool)

(assert (=> b!7102340 m!7827072))

(declare-fun m!7827074 () Bool)

(assert (=> b!7102340 m!7827074))

(declare-fun m!7827076 () Bool)

(assert (=> b!7102339 m!7827076))

(assert (=> b!7102299 d!2218762))

(declare-fun d!2218766 () Bool)

(assert (=> d!2218766 (forall!16792 (++!16041 (exprs!7383 cz!4) (exprs!7383 auxCtx!45)) lambda!431127)))

(declare-fun lt!2558276 () Unit!162449)

(declare-fun choose!54769 (List!68850 List!68850 Int) Unit!162449)

(assert (=> d!2218766 (= lt!2558276 (choose!54769 (exprs!7383 cz!4) (exprs!7383 auxCtx!45) lambda!431127))))

(assert (=> d!2218766 (forall!16792 (exprs!7383 cz!4) lambda!431127)))

(assert (=> d!2218766 (= (lemmaConcatPreservesForall!1174 (exprs!7383 cz!4) (exprs!7383 auxCtx!45) lambda!431127) lt!2558276)))

(declare-fun bs!1884372 () Bool)

(assert (= bs!1884372 d!2218766))

(assert (=> bs!1884372 m!7827050))

(assert (=> bs!1884372 m!7827050))

(declare-fun m!7827084 () Bool)

(assert (=> bs!1884372 m!7827084))

(declare-fun m!7827086 () Bool)

(assert (=> bs!1884372 m!7827086))

(declare-fun m!7827088 () Bool)

(assert (=> bs!1884372 m!7827088))

(assert (=> b!7102299 d!2218766))

(declare-fun b!7102372 () Bool)

(declare-fun res!2899810 () Bool)

(declare-fun e!4268904 () Bool)

(assert (=> b!7102372 (=> (not res!2899810) (not e!4268904))))

(declare-fun call!646869 () Bool)

(assert (=> b!7102372 (= res!2899810 call!646869)))

(declare-fun e!4268902 () Bool)

(assert (=> b!7102372 (= e!4268902 e!4268904)))

(declare-fun c!1325243 () Bool)

(declare-fun bm!646864 () Bool)

(declare-fun c!1325244 () Bool)

(declare-fun call!646870 () Bool)

(assert (=> bm!646864 (= call!646870 (validRegex!9162 (ite c!1325243 (reg!18218 r!11554) (ite c!1325244 (regOne!36291 r!11554) (regTwo!36290 r!11554)))))))

(declare-fun b!7102373 () Bool)

(declare-fun call!646871 () Bool)

(assert (=> b!7102373 (= e!4268904 call!646871)))

(declare-fun d!2218774 () Bool)

(declare-fun res!2899806 () Bool)

(declare-fun e!4268903 () Bool)

(assert (=> d!2218774 (=> res!2899806 e!4268903)))

(assert (=> d!2218774 (= res!2899806 ((_ is ElementMatch!17889) r!11554))))

(assert (=> d!2218774 (= (validRegex!9162 r!11554) e!4268903)))

(declare-fun b!7102374 () Bool)

(declare-fun e!4268901 () Bool)

(assert (=> b!7102374 (= e!4268901 call!646869)))

(declare-fun b!7102375 () Bool)

(declare-fun res!2899807 () Bool)

(declare-fun e!4268900 () Bool)

(assert (=> b!7102375 (=> res!2899807 e!4268900)))

(assert (=> b!7102375 (= res!2899807 (not ((_ is Concat!26734) r!11554)))))

(assert (=> b!7102375 (= e!4268902 e!4268900)))

(declare-fun b!7102376 () Bool)

(assert (=> b!7102376 (= e!4268900 e!4268901)))

(declare-fun res!2899809 () Bool)

(assert (=> b!7102376 (=> (not res!2899809) (not e!4268901))))

(assert (=> b!7102376 (= res!2899809 call!646871)))

(declare-fun b!7102377 () Bool)

(declare-fun e!4268906 () Bool)

(assert (=> b!7102377 (= e!4268903 e!4268906)))

(assert (=> b!7102377 (= c!1325243 ((_ is Star!17889) r!11554))))

(declare-fun bm!646865 () Bool)

(assert (=> bm!646865 (= call!646871 (validRegex!9162 (ite c!1325244 (regTwo!36291 r!11554) (regOne!36290 r!11554))))))

(declare-fun b!7102378 () Bool)

(declare-fun e!4268905 () Bool)

(assert (=> b!7102378 (= e!4268905 call!646870)))

(declare-fun bm!646866 () Bool)

(assert (=> bm!646866 (= call!646869 call!646870)))

(declare-fun b!7102379 () Bool)

(assert (=> b!7102379 (= e!4268906 e!4268902)))

(assert (=> b!7102379 (= c!1325244 ((_ is Union!17889) r!11554))))

(declare-fun b!7102380 () Bool)

(assert (=> b!7102380 (= e!4268906 e!4268905)))

(declare-fun res!2899808 () Bool)

(declare-fun nullable!7527 (Regex!17889) Bool)

(assert (=> b!7102380 (= res!2899808 (not (nullable!7527 (reg!18218 r!11554))))))

(assert (=> b!7102380 (=> (not res!2899808) (not e!4268905))))

(assert (= (and d!2218774 (not res!2899806)) b!7102377))

(assert (= (and b!7102377 c!1325243) b!7102380))

(assert (= (and b!7102377 (not c!1325243)) b!7102379))

(assert (= (and b!7102380 res!2899808) b!7102378))

(assert (= (and b!7102379 c!1325244) b!7102372))

(assert (= (and b!7102379 (not c!1325244)) b!7102375))

(assert (= (and b!7102372 res!2899810) b!7102373))

(assert (= (and b!7102375 (not res!2899807)) b!7102376))

(assert (= (and b!7102376 res!2899809) b!7102374))

(assert (= (or b!7102372 b!7102374) bm!646866))

(assert (= (or b!7102373 b!7102376) bm!646865))

(assert (= (or b!7102378 bm!646866) bm!646864))

(declare-fun m!7827104 () Bool)

(assert (=> bm!646864 m!7827104))

(declare-fun m!7827106 () Bool)

(assert (=> bm!646865 m!7827106))

(declare-fun m!7827108 () Bool)

(assert (=> b!7102380 m!7827108))

(assert (=> start!691388 d!2218774))

(declare-fun bs!1884374 () Bool)

(declare-fun d!2218778 () Bool)

(assert (= bs!1884374 (and d!2218778 b!7102299)))

(declare-fun lambda!431136 () Int)

(assert (=> bs!1884374 (= lambda!431136 lambda!431127)))

(declare-fun bs!1884375 () Bool)

(assert (= bs!1884375 (and d!2218778 d!2218758)))

(assert (=> bs!1884375 (= lambda!431136 lambda!431130)))

(assert (=> d!2218778 (= (inv!87585 cz!4) (forall!16792 (exprs!7383 cz!4) lambda!431136))))

(declare-fun bs!1884376 () Bool)

(assert (= bs!1884376 d!2218778))

(declare-fun m!7827116 () Bool)

(assert (=> bs!1884376 m!7827116))

(assert (=> start!691388 d!2218778))

(declare-fun bs!1884377 () Bool)

(declare-fun d!2218780 () Bool)

(assert (= bs!1884377 (and d!2218780 b!7102299)))

(declare-fun lambda!431137 () Int)

(assert (=> bs!1884377 (= lambda!431137 lambda!431127)))

(declare-fun bs!1884378 () Bool)

(assert (= bs!1884378 (and d!2218780 d!2218758)))

(assert (=> bs!1884378 (= lambda!431137 lambda!431130)))

(declare-fun bs!1884379 () Bool)

(assert (= bs!1884379 (and d!2218780 d!2218778)))

(assert (=> bs!1884379 (= lambda!431137 lambda!431136)))

(assert (=> d!2218780 (= (inv!87585 auxCtx!45) (forall!16792 (exprs!7383 auxCtx!45) lambda!431137))))

(declare-fun bs!1884380 () Bool)

(assert (= bs!1884380 d!2218780))

(declare-fun m!7827118 () Bool)

(assert (=> bs!1884380 m!7827118))

(assert (=> start!691388 d!2218780))

(declare-fun b!7102395 () Bool)

(declare-fun e!4268911 () Bool)

(declare-fun tp!1952715 () Bool)

(declare-fun tp!1952716 () Bool)

(assert (=> b!7102395 (= e!4268911 (and tp!1952715 tp!1952716))))

(assert (=> b!7102300 (= tp!1952694 e!4268911)))

(assert (= (and b!7102300 ((_ is Cons!68726) (exprs!7383 cz!4))) b!7102395))

(declare-fun b!7102424 () Bool)

(declare-fun e!4268920 () Bool)

(declare-fun tp!1952750 () Bool)

(declare-fun tp!1952748 () Bool)

(assert (=> b!7102424 (= e!4268920 (and tp!1952750 tp!1952748))))

(assert (=> b!7102297 (= tp!1952695 e!4268920)))

(declare-fun b!7102425 () Bool)

(declare-fun tp!1952749 () Bool)

(assert (=> b!7102425 (= e!4268920 tp!1952749)))

(declare-fun b!7102423 () Bool)

(assert (=> b!7102423 (= e!4268920 tp_is_empty!45011)))

(declare-fun b!7102426 () Bool)

(declare-fun tp!1952751 () Bool)

(declare-fun tp!1952752 () Bool)

(assert (=> b!7102426 (= e!4268920 (and tp!1952751 tp!1952752))))

(assert (= (and b!7102297 ((_ is ElementMatch!17889) (regOne!36290 r!11554))) b!7102423))

(assert (= (and b!7102297 ((_ is Concat!26734) (regOne!36290 r!11554))) b!7102424))

(assert (= (and b!7102297 ((_ is Star!17889) (regOne!36290 r!11554))) b!7102425))

(assert (= (and b!7102297 ((_ is Union!17889) (regOne!36290 r!11554))) b!7102426))

(declare-fun b!7102432 () Bool)

(declare-fun e!4268922 () Bool)

(declare-fun tp!1952760 () Bool)

(declare-fun tp!1952758 () Bool)

(assert (=> b!7102432 (= e!4268922 (and tp!1952760 tp!1952758))))

(assert (=> b!7102297 (= tp!1952696 e!4268922)))

(declare-fun b!7102433 () Bool)

(declare-fun tp!1952759 () Bool)

(assert (=> b!7102433 (= e!4268922 tp!1952759)))

(declare-fun b!7102431 () Bool)

(assert (=> b!7102431 (= e!4268922 tp_is_empty!45011)))

(declare-fun b!7102434 () Bool)

(declare-fun tp!1952761 () Bool)

(declare-fun tp!1952762 () Bool)

(assert (=> b!7102434 (= e!4268922 (and tp!1952761 tp!1952762))))

(assert (= (and b!7102297 ((_ is ElementMatch!17889) (regTwo!36290 r!11554))) b!7102431))

(assert (= (and b!7102297 ((_ is Concat!26734) (regTwo!36290 r!11554))) b!7102432))

(assert (= (and b!7102297 ((_ is Star!17889) (regTwo!36290 r!11554))) b!7102433))

(assert (= (and b!7102297 ((_ is Union!17889) (regTwo!36290 r!11554))) b!7102434))

(declare-fun b!7102440 () Bool)

(declare-fun e!4268924 () Bool)

(declare-fun tp!1952770 () Bool)

(declare-fun tp!1952768 () Bool)

(assert (=> b!7102440 (= e!4268924 (and tp!1952770 tp!1952768))))

(assert (=> b!7102302 (= tp!1952700 e!4268924)))

(declare-fun b!7102441 () Bool)

(declare-fun tp!1952769 () Bool)

(assert (=> b!7102441 (= e!4268924 tp!1952769)))

(declare-fun b!7102439 () Bool)

(assert (=> b!7102439 (= e!4268924 tp_is_empty!45011)))

(declare-fun b!7102442 () Bool)

(declare-fun tp!1952771 () Bool)

(declare-fun tp!1952772 () Bool)

(assert (=> b!7102442 (= e!4268924 (and tp!1952771 tp!1952772))))

(assert (= (and b!7102302 ((_ is ElementMatch!17889) (regOne!36291 r!11554))) b!7102439))

(assert (= (and b!7102302 ((_ is Concat!26734) (regOne!36291 r!11554))) b!7102440))

(assert (= (and b!7102302 ((_ is Star!17889) (regOne!36291 r!11554))) b!7102441))

(assert (= (and b!7102302 ((_ is Union!17889) (regOne!36291 r!11554))) b!7102442))

(declare-fun b!7102445 () Bool)

(declare-fun e!4268926 () Bool)

(declare-fun tp!1952777 () Bool)

(declare-fun tp!1952775 () Bool)

(assert (=> b!7102445 (= e!4268926 (and tp!1952777 tp!1952775))))

(assert (=> b!7102302 (= tp!1952697 e!4268926)))

(declare-fun b!7102446 () Bool)

(declare-fun tp!1952776 () Bool)

(assert (=> b!7102446 (= e!4268926 tp!1952776)))

(declare-fun b!7102444 () Bool)

(assert (=> b!7102444 (= e!4268926 tp_is_empty!45011)))

(declare-fun b!7102447 () Bool)

(declare-fun tp!1952778 () Bool)

(declare-fun tp!1952779 () Bool)

(assert (=> b!7102447 (= e!4268926 (and tp!1952778 tp!1952779))))

(assert (= (and b!7102302 ((_ is ElementMatch!17889) (regTwo!36291 r!11554))) b!7102444))

(assert (= (and b!7102302 ((_ is Concat!26734) (regTwo!36291 r!11554))) b!7102445))

(assert (= (and b!7102302 ((_ is Star!17889) (regTwo!36291 r!11554))) b!7102446))

(assert (= (and b!7102302 ((_ is Union!17889) (regTwo!36291 r!11554))) b!7102447))

(declare-fun b!7102448 () Bool)

(declare-fun e!4268927 () Bool)

(declare-fun tp!1952780 () Bool)

(declare-fun tp!1952781 () Bool)

(assert (=> b!7102448 (= e!4268927 (and tp!1952780 tp!1952781))))

(assert (=> b!7102301 (= tp!1952699 e!4268927)))

(assert (= (and b!7102301 ((_ is Cons!68726) (exprs!7383 auxCtx!45))) b!7102448))

(declare-fun b!7102450 () Bool)

(declare-fun e!4268928 () Bool)

(declare-fun tp!1952784 () Bool)

(declare-fun tp!1952782 () Bool)

(assert (=> b!7102450 (= e!4268928 (and tp!1952784 tp!1952782))))

(assert (=> b!7102296 (= tp!1952698 e!4268928)))

(declare-fun b!7102451 () Bool)

(declare-fun tp!1952783 () Bool)

(assert (=> b!7102451 (= e!4268928 tp!1952783)))

(declare-fun b!7102449 () Bool)

(assert (=> b!7102449 (= e!4268928 tp_is_empty!45011)))

(declare-fun b!7102452 () Bool)

(declare-fun tp!1952785 () Bool)

(declare-fun tp!1952786 () Bool)

(assert (=> b!7102452 (= e!4268928 (and tp!1952785 tp!1952786))))

(assert (= (and b!7102296 ((_ is ElementMatch!17889) (reg!18218 r!11554))) b!7102449))

(assert (= (and b!7102296 ((_ is Concat!26734) (reg!18218 r!11554))) b!7102450))

(assert (= (and b!7102296 ((_ is Star!17889) (reg!18218 r!11554))) b!7102451))

(assert (= (and b!7102296 ((_ is Union!17889) (reg!18218 r!11554))) b!7102452))

(check-sat (not d!2218778) (not b!7102440) (not b!7102446) tp_is_empty!45011 (not b!7102448) (not b!7102445) (not b!7102452) (not b!7102425) (not b!7102395) (not b!7102426) (not b!7102441) (not bm!646864) (not b!7102450) (not b!7102434) (not b!7102451) (not d!2218780) (not b!7102447) (not d!2218766) (not b!7102432) (not b!7102442) (not d!2218762) (not b!7102380) (not d!2218758) (not b!7102339) (not b!7102340) (not b!7102424) (not b!7102433) (not bm!646865))
(check-sat)
