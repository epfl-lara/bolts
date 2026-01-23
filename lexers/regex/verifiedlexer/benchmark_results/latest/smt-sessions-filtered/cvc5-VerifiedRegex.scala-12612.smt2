; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!698764 () Bool)

(assert start!698764)

(declare-fun b!7170094 () Bool)

(assert (=> b!7170094 true))

(declare-fun b!7170088 () Bool)

(declare-fun res!2922014 () Bool)

(declare-fun e!4306905 () Bool)

(assert (=> b!7170088 (=> (not res!2922014) (not e!4306905))))

(declare-datatypes ((C!36938 0))(
  ( (C!36939 (val!28417 Int)) )
))
(declare-datatypes ((List!69734 0))(
  ( (Nil!69610) (Cons!69610 (h!76058 C!36938) (t!383753 List!69734)) )
))
(declare-fun s!7967 () List!69734)

(declare-fun isEmpty!40194 (List!69734) Bool)

(assert (=> b!7170088 (= res!2922014 (not (isEmpty!40194 s!7967)))))

(declare-fun setIsEmpty!52996 () Bool)

(declare-fun setRes!52996 () Bool)

(assert (=> setIsEmpty!52996 setRes!52996))

(declare-fun b!7170089 () Bool)

(declare-fun e!4306908 () Bool)

(declare-fun tp!1986074 () Bool)

(assert (=> b!7170089 (= e!4306908 tp!1986074)))

(declare-fun b!7170090 () Bool)

(declare-fun res!2922008 () Bool)

(declare-fun e!4306910 () Bool)

(assert (=> b!7170090 (=> (not res!2922008) (not e!4306910))))

(declare-datatypes ((Regex!18332 0))(
  ( (ElementMatch!18332 (c!1335710 C!36938)) (Concat!27177 (regOne!37176 Regex!18332) (regTwo!37176 Regex!18332)) (EmptyExpr!18332) (Star!18332 (reg!18661 Regex!18332)) (EmptyLang!18332) (Union!18332 (regOne!37177 Regex!18332) (regTwo!37177 Regex!18332)) )
))
(declare-datatypes ((List!69735 0))(
  ( (Nil!69611) (Cons!69611 (h!76059 Regex!18332) (t!383754 List!69735)) )
))
(declare-datatypes ((Context!14568 0))(
  ( (Context!14569 (exprs!7784 List!69735)) )
))
(declare-fun z!3530 () (Set Context!14568))

(declare-fun focus!407 (Regex!18332) (Set Context!14568))

(assert (=> b!7170090 (= res!2922008 (not (= z!3530 (focus!407 EmptyExpr!18332))))))

(declare-fun b!7170091 () Bool)

(assert (=> b!7170091 (= e!4306910 e!4306905)))

(declare-fun res!2922009 () Bool)

(assert (=> b!7170091 (=> (not res!2922009) (not e!4306905))))

(declare-fun lt!2570344 () Context!14568)

(assert (=> b!7170091 (= res!2922009 (= z!3530 (set.insert lt!2570344 (as set.empty (Set Context!14568)))))))

(assert (=> b!7170091 (= lt!2570344 (Context!14569 Nil!69611))))

(declare-fun b!7170092 () Bool)

(declare-fun res!2922011 () Bool)

(declare-fun e!4306906 () Bool)

(assert (=> b!7170092 (=> (not res!2922011) (not e!4306906))))

(declare-fun lt!2570342 () (Set Context!14568))

(assert (=> b!7170092 (= res!2922011 (not (= lt!2570342 (as set.empty (Set Context!14568)))))))

(declare-fun b!7170093 () Bool)

(declare-fun e!4306909 () Bool)

(declare-fun tp_is_empty!46237 () Bool)

(declare-fun tp!1986072 () Bool)

(assert (=> b!7170093 (= e!4306909 (and tp_is_empty!46237 tp!1986072))))

(declare-fun b!7170095 () Bool)

(assert (=> b!7170095 (= e!4306905 e!4306906)))

(declare-fun res!2922013 () Bool)

(assert (=> b!7170095 (=> (not res!2922013) (not e!4306906))))

(declare-fun lt!2570341 () C!36938)

(declare-fun derivationStepZipperUp!2318 (Context!14568 C!36938) (Set Context!14568))

(assert (=> b!7170095 (= res!2922013 (= (derivationStepZipperUp!2318 lt!2570344 lt!2570341) (as set.empty (Set Context!14568))))))

(declare-fun derivationStepZipper!3209 ((Set Context!14568) C!36938) (Set Context!14568))

(assert (=> b!7170095 (= lt!2570342 (derivationStepZipper!3209 z!3530 lt!2570341))))

(declare-fun head!14639 (List!69734) C!36938)

(assert (=> b!7170095 (= lt!2570341 (head!14639 s!7967))))

(declare-fun b!7170096 () Bool)

(declare-fun e!4306907 () Bool)

(declare-fun lt!2570343 () Context!14568)

(assert (=> b!7170096 (= e!4306907 (not (set.member lt!2570343 lt!2570342)))))

(declare-fun setElem!52996 () Context!14568)

(declare-fun tp!1986073 () Bool)

(declare-fun setNonEmpty!52996 () Bool)

(declare-fun inv!88853 (Context!14568) Bool)

(assert (=> setNonEmpty!52996 (= setRes!52996 (and tp!1986073 (inv!88853 setElem!52996) e!4306908))))

(declare-fun setRest!52996 () (Set Context!14568))

(assert (=> setNonEmpty!52996 (= z!3530 (set.union (set.insert setElem!52996 (as set.empty (Set Context!14568))) setRest!52996))))

(declare-fun res!2922012 () Bool)

(assert (=> start!698764 (=> (not res!2922012) (not e!4306910))))

(declare-datatypes ((List!69736 0))(
  ( (Nil!69612) (Cons!69612 (h!76060 Context!14568) (t!383755 List!69736)) )
))
(declare-fun unfocusZipper!2592 (List!69736) Regex!18332)

(declare-fun toList!11275 ((Set Context!14568)) List!69736)

(assert (=> start!698764 (= res!2922012 (= (unfocusZipper!2592 (toList!11275 z!3530)) EmptyExpr!18332))))

(assert (=> start!698764 e!4306910))

(declare-fun condSetEmpty!52996 () Bool)

(assert (=> start!698764 (= condSetEmpty!52996 (= z!3530 (as set.empty (Set Context!14568))))))

(assert (=> start!698764 setRes!52996))

(assert (=> start!698764 e!4306909))

(assert (=> b!7170094 (= e!4306906 e!4306907)))

(declare-fun res!2922010 () Bool)

(assert (=> b!7170094 (=> (not res!2922010) (not e!4306907))))

(declare-fun lambda!437147 () Int)

(declare-fun flatMap!2660 ((Set Context!14568) Int) (Set Context!14568))

(assert (=> b!7170094 (= res!2922010 (set.member lt!2570343 (flatMap!2660 z!3530 lambda!437147)))))

(declare-fun head!14640 (List!69736) Context!14568)

(assert (=> b!7170094 (= lt!2570343 (head!14640 (toList!11275 lt!2570342)))))

(assert (= (and start!698764 res!2922012) b!7170090))

(assert (= (and b!7170090 res!2922008) b!7170091))

(assert (= (and b!7170091 res!2922009) b!7170088))

(assert (= (and b!7170088 res!2922014) b!7170095))

(assert (= (and b!7170095 res!2922013) b!7170092))

(assert (= (and b!7170092 res!2922011) b!7170094))

(assert (= (and b!7170094 res!2922010) b!7170096))

(assert (= (and start!698764 condSetEmpty!52996) setIsEmpty!52996))

(assert (= (and start!698764 (not condSetEmpty!52996)) setNonEmpty!52996))

(assert (= setNonEmpty!52996 b!7170089))

(assert (= (and start!698764 (is-Cons!69610 s!7967)) b!7170093))

(declare-fun m!7872316 () Bool)

(assert (=> setNonEmpty!52996 m!7872316))

(declare-fun m!7872318 () Bool)

(assert (=> b!7170096 m!7872318))

(declare-fun m!7872320 () Bool)

(assert (=> b!7170088 m!7872320))

(declare-fun m!7872322 () Bool)

(assert (=> b!7170095 m!7872322))

(declare-fun m!7872324 () Bool)

(assert (=> b!7170095 m!7872324))

(declare-fun m!7872326 () Bool)

(assert (=> b!7170095 m!7872326))

(declare-fun m!7872328 () Bool)

(assert (=> b!7170091 m!7872328))

(declare-fun m!7872330 () Bool)

(assert (=> b!7170090 m!7872330))

(declare-fun m!7872332 () Bool)

(assert (=> start!698764 m!7872332))

(assert (=> start!698764 m!7872332))

(declare-fun m!7872334 () Bool)

(assert (=> start!698764 m!7872334))

(declare-fun m!7872336 () Bool)

(assert (=> b!7170094 m!7872336))

(declare-fun m!7872338 () Bool)

(assert (=> b!7170094 m!7872338))

(declare-fun m!7872340 () Bool)

(assert (=> b!7170094 m!7872340))

(assert (=> b!7170094 m!7872340))

(declare-fun m!7872342 () Bool)

(assert (=> b!7170094 m!7872342))

(push 1)

(assert tp_is_empty!46237)

(assert (not b!7170093))

(assert (not setNonEmpty!52996))

(assert (not start!698764))

(assert (not b!7170094))

(assert (not b!7170088))

(assert (not b!7170089))

(assert (not b!7170095))

(assert (not b!7170090))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2233551 () Bool)

(declare-fun choose!55364 ((Set Context!14568) Int) (Set Context!14568))

(assert (=> d!2233551 (= (flatMap!2660 z!3530 lambda!437147) (choose!55364 z!3530 lambda!437147))))

(declare-fun bs!1893140 () Bool)

(assert (= bs!1893140 d!2233551))

(declare-fun m!7872372 () Bool)

(assert (=> bs!1893140 m!7872372))

(assert (=> b!7170094 d!2233551))

(declare-fun d!2233553 () Bool)

(assert (=> d!2233553 (= (head!14640 (toList!11275 lt!2570342)) (h!76060 (toList!11275 lt!2570342)))))

(assert (=> b!7170094 d!2233553))

(declare-fun d!2233555 () Bool)

(declare-fun e!4306931 () Bool)

(assert (=> d!2233555 e!4306931))

(declare-fun res!2922038 () Bool)

(assert (=> d!2233555 (=> (not res!2922038) (not e!4306931))))

(declare-fun lt!2570359 () List!69736)

(declare-fun noDuplicate!2876 (List!69736) Bool)

(assert (=> d!2233555 (= res!2922038 (noDuplicate!2876 lt!2570359))))

(declare-fun choose!55365 ((Set Context!14568)) List!69736)

(assert (=> d!2233555 (= lt!2570359 (choose!55365 lt!2570342))))

(assert (=> d!2233555 (= (toList!11275 lt!2570342) lt!2570359)))

(declare-fun b!7170130 () Bool)

(declare-fun content!14305 (List!69736) (Set Context!14568))

(assert (=> b!7170130 (= e!4306931 (= (content!14305 lt!2570359) lt!2570342))))

(assert (= (and d!2233555 res!2922038) b!7170130))

(declare-fun m!7872374 () Bool)

(assert (=> d!2233555 m!7872374))

(declare-fun m!7872376 () Bool)

(assert (=> d!2233555 m!7872376))

(declare-fun m!7872378 () Bool)

(assert (=> b!7170130 m!7872378))

(assert (=> b!7170094 d!2233555))

(declare-fun d!2233557 () Bool)

(declare-fun e!4306934 () Bool)

(assert (=> d!2233557 e!4306934))

(declare-fun res!2922042 () Bool)

(assert (=> d!2233557 (=> (not res!2922042) (not e!4306934))))

(declare-fun validRegex!9457 (Regex!18332) Bool)

(assert (=> d!2233557 (= res!2922042 (validRegex!9457 EmptyExpr!18332))))

(assert (=> d!2233557 (= (focus!407 EmptyExpr!18332) (set.insert (Context!14569 (Cons!69611 EmptyExpr!18332 Nil!69611)) (as set.empty (Set Context!14568))))))

(declare-fun b!7170133 () Bool)

(assert (=> b!7170133 (= e!4306934 (= (unfocusZipper!2592 (toList!11275 (set.insert (Context!14569 (Cons!69611 EmptyExpr!18332 Nil!69611)) (as set.empty (Set Context!14568))))) EmptyExpr!18332))))

(assert (= (and d!2233557 res!2922042) b!7170133))

(declare-fun m!7872380 () Bool)

(assert (=> d!2233557 m!7872380))

(declare-fun m!7872382 () Bool)

(assert (=> d!2233557 m!7872382))

(assert (=> b!7170133 m!7872382))

(assert (=> b!7170133 m!7872382))

(declare-fun m!7872384 () Bool)

(assert (=> b!7170133 m!7872384))

(assert (=> b!7170133 m!7872384))

(declare-fun m!7872386 () Bool)

(assert (=> b!7170133 m!7872386))

(assert (=> b!7170090 d!2233557))

(declare-fun bm!653216 () Bool)

(declare-fun call!653221 () (Set Context!14568))

(declare-fun derivationStepZipperDown!2508 (Regex!18332 Context!14568 C!36938) (Set Context!14568))

(assert (=> bm!653216 (= call!653221 (derivationStepZipperDown!2508 (h!76059 (exprs!7784 lt!2570344)) (Context!14569 (t!383754 (exprs!7784 lt!2570344))) lt!2570341))))

(declare-fun b!7170144 () Bool)

(declare-fun e!4306943 () Bool)

(declare-fun nullable!7768 (Regex!18332) Bool)

(assert (=> b!7170144 (= e!4306943 (nullable!7768 (h!76059 (exprs!7784 lt!2570344))))))

(declare-fun b!7170145 () Bool)

(declare-fun e!4306942 () (Set Context!14568))

(assert (=> b!7170145 (= e!4306942 (as set.empty (Set Context!14568)))))

(declare-fun d!2233559 () Bool)

(declare-fun c!1335716 () Bool)

(assert (=> d!2233559 (= c!1335716 e!4306943)))

(declare-fun res!2922045 () Bool)

(assert (=> d!2233559 (=> (not res!2922045) (not e!4306943))))

(assert (=> d!2233559 (= res!2922045 (is-Cons!69611 (exprs!7784 lt!2570344)))))

(declare-fun e!4306941 () (Set Context!14568))

(assert (=> d!2233559 (= (derivationStepZipperUp!2318 lt!2570344 lt!2570341) e!4306941)))

(declare-fun b!7170146 () Bool)

(assert (=> b!7170146 (= e!4306942 call!653221)))

(declare-fun b!7170147 () Bool)

(assert (=> b!7170147 (= e!4306941 (set.union call!653221 (derivationStepZipperUp!2318 (Context!14569 (t!383754 (exprs!7784 lt!2570344))) lt!2570341)))))

(declare-fun b!7170148 () Bool)

(assert (=> b!7170148 (= e!4306941 e!4306942)))

(declare-fun c!1335717 () Bool)

(assert (=> b!7170148 (= c!1335717 (is-Cons!69611 (exprs!7784 lt!2570344)))))

(assert (= (and d!2233559 res!2922045) b!7170144))

(assert (= (and d!2233559 c!1335716) b!7170147))

(assert (= (and d!2233559 (not c!1335716)) b!7170148))

(assert (= (and b!7170148 c!1335717) b!7170146))

(assert (= (and b!7170148 (not c!1335717)) b!7170145))

(assert (= (or b!7170147 b!7170146) bm!653216))

(declare-fun m!7872388 () Bool)

(assert (=> bm!653216 m!7872388))

(declare-fun m!7872390 () Bool)

(assert (=> b!7170144 m!7872390))

(declare-fun m!7872392 () Bool)

(assert (=> b!7170147 m!7872392))

(assert (=> b!7170095 d!2233559))

(declare-fun bs!1893141 () Bool)

(declare-fun d!2233561 () Bool)

(assert (= bs!1893141 (and d!2233561 b!7170094)))

(declare-fun lambda!437153 () Int)

(assert (=> bs!1893141 (= lambda!437153 lambda!437147)))

(assert (=> d!2233561 true))

(assert (=> d!2233561 (= (derivationStepZipper!3209 z!3530 lt!2570341) (flatMap!2660 z!3530 lambda!437153))))

(declare-fun bs!1893142 () Bool)

(assert (= bs!1893142 d!2233561))

(declare-fun m!7872394 () Bool)

(assert (=> bs!1893142 m!7872394))

(assert (=> b!7170095 d!2233561))

(declare-fun d!2233567 () Bool)

(assert (=> d!2233567 (= (head!14639 s!7967) (h!76058 s!7967))))

(assert (=> b!7170095 d!2233567))

(declare-fun d!2233569 () Bool)

(declare-fun lambda!437156 () Int)

(declare-fun forall!17162 (List!69735 Int) Bool)

(assert (=> d!2233569 (= (inv!88853 setElem!52996) (forall!17162 (exprs!7784 setElem!52996) lambda!437156))))

(declare-fun bs!1893144 () Bool)

(assert (= bs!1893144 d!2233569))

(declare-fun m!7872398 () Bool)

(assert (=> bs!1893144 m!7872398))

(assert (=> setNonEmpty!52996 d!2233569))

(declare-fun d!2233573 () Bool)

(declare-fun lt!2570362 () Regex!18332)

(assert (=> d!2233573 (validRegex!9457 lt!2570362)))

(declare-fun generalisedUnion!2760 (List!69735) Regex!18332)

(declare-fun unfocusZipperList!2316 (List!69736) List!69735)

(assert (=> d!2233573 (= lt!2570362 (generalisedUnion!2760 (unfocusZipperList!2316 (toList!11275 z!3530))))))

(assert (=> d!2233573 (= (unfocusZipper!2592 (toList!11275 z!3530)) lt!2570362)))

(declare-fun bs!1893145 () Bool)

(assert (= bs!1893145 d!2233573))

(declare-fun m!7872400 () Bool)

(assert (=> bs!1893145 m!7872400))

(assert (=> bs!1893145 m!7872332))

(declare-fun m!7872402 () Bool)

(assert (=> bs!1893145 m!7872402))

(assert (=> bs!1893145 m!7872402))

(declare-fun m!7872404 () Bool)

(assert (=> bs!1893145 m!7872404))

(assert (=> start!698764 d!2233573))

(declare-fun d!2233577 () Bool)

(declare-fun e!4306944 () Bool)

(assert (=> d!2233577 e!4306944))

(declare-fun res!2922046 () Bool)

(assert (=> d!2233577 (=> (not res!2922046) (not e!4306944))))

(declare-fun lt!2570363 () List!69736)

(assert (=> d!2233577 (= res!2922046 (noDuplicate!2876 lt!2570363))))

(assert (=> d!2233577 (= lt!2570363 (choose!55365 z!3530))))

(assert (=> d!2233577 (= (toList!11275 z!3530) lt!2570363)))

(declare-fun b!7170149 () Bool)

(assert (=> b!7170149 (= e!4306944 (= (content!14305 lt!2570363) z!3530))))

(assert (= (and d!2233577 res!2922046) b!7170149))

(declare-fun m!7872406 () Bool)

(assert (=> d!2233577 m!7872406))

(declare-fun m!7872408 () Bool)

(assert (=> d!2233577 m!7872408))

(declare-fun m!7872410 () Bool)

(assert (=> b!7170149 m!7872410))

(assert (=> start!698764 d!2233577))

(declare-fun d!2233579 () Bool)

(assert (=> d!2233579 (= (isEmpty!40194 s!7967) (is-Nil!69610 s!7967))))

(assert (=> b!7170088 d!2233579))

(declare-fun b!7170154 () Bool)

(declare-fun e!4306947 () Bool)

(declare-fun tp!1986088 () Bool)

(declare-fun tp!1986089 () Bool)

(assert (=> b!7170154 (= e!4306947 (and tp!1986088 tp!1986089))))

(assert (=> b!7170089 (= tp!1986074 e!4306947)))

(assert (= (and b!7170089 (is-Cons!69611 (exprs!7784 setElem!52996))) b!7170154))

(declare-fun condSetEmpty!53002 () Bool)

(assert (=> setNonEmpty!52996 (= condSetEmpty!53002 (= setRest!52996 (as set.empty (Set Context!14568))))))

(declare-fun setRes!53002 () Bool)

(assert (=> setNonEmpty!52996 (= tp!1986073 setRes!53002)))

(declare-fun setIsEmpty!53002 () Bool)

(assert (=> setIsEmpty!53002 setRes!53002))

(declare-fun tp!1986095 () Bool)

(declare-fun e!4306952 () Bool)

(declare-fun setElem!53002 () Context!14568)

(declare-fun setNonEmpty!53002 () Bool)

(assert (=> setNonEmpty!53002 (= setRes!53002 (and tp!1986095 (inv!88853 setElem!53002) e!4306952))))

(declare-fun setRest!53002 () (Set Context!14568))

(assert (=> setNonEmpty!53002 (= setRest!52996 (set.union (set.insert setElem!53002 (as set.empty (Set Context!14568))) setRest!53002))))

(declare-fun b!7170161 () Bool)

(declare-fun tp!1986094 () Bool)

(assert (=> b!7170161 (= e!4306952 tp!1986094)))

(assert (= (and setNonEmpty!52996 condSetEmpty!53002) setIsEmpty!53002))

(assert (= (and setNonEmpty!52996 (not condSetEmpty!53002)) setNonEmpty!53002))

(assert (= setNonEmpty!53002 b!7170161))

(declare-fun m!7872412 () Bool)

(assert (=> setNonEmpty!53002 m!7872412))

(declare-fun b!7170166 () Bool)

(declare-fun e!4306955 () Bool)

(declare-fun tp!1986098 () Bool)

(assert (=> b!7170166 (= e!4306955 (and tp_is_empty!46237 tp!1986098))))

(assert (=> b!7170093 (= tp!1986072 e!4306955)))

(assert (= (and b!7170093 (is-Cons!69610 (t!383753 s!7967))) b!7170166))

(push 1)

(assert tp_is_empty!46237)

(assert (not b!7170166))

(assert (not b!7170147))

(assert (not b!7170161))

(assert (not d!2233561))

(assert (not b!7170154))

(assert (not d!2233551))

(assert (not d!2233577))

(assert (not bm!653216))

(assert (not b!7170130))

(assert (not b!7170144))

(assert (not d!2233557))

(assert (not setNonEmpty!53002))

(assert (not d!2233573))

(assert (not d!2233555))

(assert (not b!7170133))

(assert (not d!2233569))

(assert (not b!7170149))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

