; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187386 () Bool)

(assert start!187386)

(declare-fun res!837768 () Bool)

(declare-fun e!1193859 () Bool)

(assert (=> start!187386 (=> (not res!837768) (not e!1193859))))

(declare-fun lt!719409 () Int)

(declare-datatypes ((T!33452 0))(
  ( (T!33453 (val!5990 Int)) )
))
(declare-datatypes ((List!20807 0))(
  ( (Nil!20725) (Cons!20725 (h!26126 T!33452) (t!173024 List!20807)) )
))
(declare-fun l!2791 () List!20807)

(get-info :version)

(assert (=> start!187386 (= res!837768 (and (> lt!719409 0) (not ((_ is Nil!20725) l!2791))))))

(declare-fun size!16458 (List!20807) Int)

(assert (=> start!187386 (= lt!719409 (size!16458 l!2791))))

(assert (=> start!187386 e!1193859))

(declare-fun e!1193858 () Bool)

(assert (=> start!187386 e!1193858))

(declare-fun b!1871310 () Bool)

(declare-fun res!837769 () Bool)

(assert (=> b!1871310 (=> (not res!837769) (not e!1193859))))

(declare-fun tail!2863 (List!20807) List!20807)

(assert (=> b!1871310 (= res!837769 (= (tail!2863 l!2791) (t!173024 l!2791)))))

(declare-fun b!1871311 () Bool)

(declare-fun slice!601 (List!20807 Int Int) List!20807)

(assert (=> b!1871311 (= e!1193859 (not (= (slice!601 l!2791 1 lt!719409) (slice!601 (t!173024 l!2791) 0 (size!16458 (t!173024 l!2791))))))))

(declare-fun b!1871312 () Bool)

(declare-fun tp_is_empty!8759 () Bool)

(declare-fun tp!532355 () Bool)

(assert (=> b!1871312 (= e!1193858 (and tp_is_empty!8759 tp!532355))))

(assert (= (and start!187386 res!837768) b!1871310))

(assert (= (and b!1871310 res!837769) b!1871311))

(assert (= (and start!187386 ((_ is Cons!20725) l!2791)) b!1871312))

(declare-fun m!2297335 () Bool)

(assert (=> start!187386 m!2297335))

(declare-fun m!2297337 () Bool)

(assert (=> b!1871310 m!2297337))

(declare-fun m!2297339 () Bool)

(assert (=> b!1871311 m!2297339))

(declare-fun m!2297341 () Bool)

(assert (=> b!1871311 m!2297341))

(assert (=> b!1871311 m!2297341))

(declare-fun m!2297343 () Bool)

(assert (=> b!1871311 m!2297343))

(check-sat (not b!1871310) (not b!1871311) (not b!1871312) tp_is_empty!8759 (not start!187386))
(check-sat)
(get-model)

(declare-fun d!572076 () Bool)

(declare-fun take!167 (List!20807 Int) List!20807)

(declare-fun drop!994 (List!20807 Int) List!20807)

(assert (=> d!572076 (= (slice!601 l!2791 1 lt!719409) (take!167 (drop!994 l!2791 1) (- lt!719409 1)))))

(declare-fun bs!412006 () Bool)

(assert (= bs!412006 d!572076))

(declare-fun m!2297345 () Bool)

(assert (=> bs!412006 m!2297345))

(assert (=> bs!412006 m!2297345))

(declare-fun m!2297347 () Bool)

(assert (=> bs!412006 m!2297347))

(assert (=> b!1871311 d!572076))

(declare-fun d!572082 () Bool)

(assert (=> d!572082 (= (slice!601 (t!173024 l!2791) 0 (size!16458 (t!173024 l!2791))) (take!167 (drop!994 (t!173024 l!2791) 0) (- (size!16458 (t!173024 l!2791)) 0)))))

(declare-fun bs!412007 () Bool)

(assert (= bs!412007 d!572082))

(declare-fun m!2297349 () Bool)

(assert (=> bs!412007 m!2297349))

(assert (=> bs!412007 m!2297349))

(declare-fun m!2297351 () Bool)

(assert (=> bs!412007 m!2297351))

(assert (=> b!1871311 d!572082))

(declare-fun d!572084 () Bool)

(declare-fun lt!719416 () Int)

(assert (=> d!572084 (>= lt!719416 0)))

(declare-fun e!1193869 () Int)

(assert (=> d!572084 (= lt!719416 e!1193869)))

(declare-fun c!304910 () Bool)

(assert (=> d!572084 (= c!304910 ((_ is Nil!20725) (t!173024 l!2791)))))

(assert (=> d!572084 (= (size!16458 (t!173024 l!2791)) lt!719416)))

(declare-fun b!1871330 () Bool)

(assert (=> b!1871330 (= e!1193869 0)))

(declare-fun b!1871331 () Bool)

(assert (=> b!1871331 (= e!1193869 (+ 1 (size!16458 (t!173024 (t!173024 l!2791)))))))

(assert (= (and d!572084 c!304910) b!1871330))

(assert (= (and d!572084 (not c!304910)) b!1871331))

(declare-fun m!2297363 () Bool)

(assert (=> b!1871331 m!2297363))

(assert (=> b!1871311 d!572084))

(declare-fun d!572090 () Bool)

(declare-fun lt!719417 () Int)

(assert (=> d!572090 (>= lt!719417 0)))

(declare-fun e!1193870 () Int)

(assert (=> d!572090 (= lt!719417 e!1193870)))

(declare-fun c!304911 () Bool)

(assert (=> d!572090 (= c!304911 ((_ is Nil!20725) l!2791))))

(assert (=> d!572090 (= (size!16458 l!2791) lt!719417)))

(declare-fun b!1871332 () Bool)

(assert (=> b!1871332 (= e!1193870 0)))

(declare-fun b!1871333 () Bool)

(assert (=> b!1871333 (= e!1193870 (+ 1 (size!16458 (t!173024 l!2791))))))

(assert (= (and d!572090 c!304911) b!1871332))

(assert (= (and d!572090 (not c!304911)) b!1871333))

(assert (=> b!1871333 m!2297341))

(assert (=> start!187386 d!572090))

(declare-fun d!572092 () Bool)

(assert (=> d!572092 (= (tail!2863 l!2791) (t!173024 l!2791))))

(assert (=> b!1871310 d!572092))

(declare-fun b!1871338 () Bool)

(declare-fun e!1193873 () Bool)

(declare-fun tp!532361 () Bool)

(assert (=> b!1871338 (= e!1193873 (and tp_is_empty!8759 tp!532361))))

(assert (=> b!1871312 (= tp!532355 e!1193873)))

(assert (= (and b!1871312 ((_ is Cons!20725) (t!173024 l!2791))) b!1871338))

(check-sat (not b!1871338) tp_is_empty!8759 (not b!1871331) (not b!1871333) (not d!572082) (not d!572076))
(check-sat)
(get-model)

(assert (=> b!1871333 d!572084))

(declare-fun b!1871376 () Bool)

(declare-fun e!1193898 () Int)

(assert (=> b!1871376 (= e!1193898 (size!16458 (drop!994 (t!173024 l!2791) 0)))))

(declare-fun b!1871377 () Bool)

(declare-fun e!1193895 () List!20807)

(assert (=> b!1871377 (= e!1193895 Nil!20725)))

(declare-fun b!1871378 () Bool)

(assert (=> b!1871378 (= e!1193895 (Cons!20725 (h!26126 (drop!994 (t!173024 l!2791) 0)) (take!167 (t!173024 (drop!994 (t!173024 l!2791) 0)) (- (- (size!16458 (t!173024 l!2791)) 0) 1))))))

(declare-fun b!1871379 () Bool)

(assert (=> b!1871379 (= e!1193898 (- (size!16458 (t!173024 l!2791)) 0))))

(declare-fun b!1871381 () Bool)

(declare-fun e!1193896 () Int)

(assert (=> b!1871381 (= e!1193896 e!1193898)))

(declare-fun c!304930 () Bool)

(assert (=> b!1871381 (= c!304930 (>= (- (size!16458 (t!173024 l!2791)) 0) (size!16458 (drop!994 (t!173024 l!2791) 0))))))

(declare-fun b!1871382 () Bool)

(declare-fun e!1193897 () Bool)

(declare-fun lt!719424 () List!20807)

(assert (=> b!1871382 (= e!1193897 (= (size!16458 lt!719424) e!1193896))))

(declare-fun c!304928 () Bool)

(assert (=> b!1871382 (= c!304928 (<= (- (size!16458 (t!173024 l!2791)) 0) 0))))

(declare-fun d!572098 () Bool)

(assert (=> d!572098 e!1193897))

(declare-fun res!837775 () Bool)

(assert (=> d!572098 (=> (not res!837775) (not e!1193897))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3089 (List!20807) (InoxSet T!33452))

(assert (=> d!572098 (= res!837775 (= ((_ map implies) (content!3089 lt!719424) (content!3089 (drop!994 (t!173024 l!2791) 0))) ((as const (InoxSet T!33452)) true)))))

(assert (=> d!572098 (= lt!719424 e!1193895)))

(declare-fun c!304929 () Bool)

(assert (=> d!572098 (= c!304929 (or ((_ is Nil!20725) (drop!994 (t!173024 l!2791) 0)) (<= (- (size!16458 (t!173024 l!2791)) 0) 0)))))

(assert (=> d!572098 (= (take!167 (drop!994 (t!173024 l!2791) 0) (- (size!16458 (t!173024 l!2791)) 0)) lt!719424)))

(declare-fun b!1871380 () Bool)

(assert (=> b!1871380 (= e!1193896 0)))

(assert (= (and d!572098 c!304929) b!1871377))

(assert (= (and d!572098 (not c!304929)) b!1871378))

(assert (= (and d!572098 res!837775) b!1871382))

(assert (= (and b!1871382 c!304928) b!1871380))

(assert (= (and b!1871382 (not c!304928)) b!1871381))

(assert (= (and b!1871381 c!304930) b!1871376))

(assert (= (and b!1871381 (not c!304930)) b!1871379))

(declare-fun m!2297377 () Bool)

(assert (=> b!1871382 m!2297377))

(assert (=> b!1871376 m!2297349))

(declare-fun m!2297379 () Bool)

(assert (=> b!1871376 m!2297379))

(declare-fun m!2297381 () Bool)

(assert (=> d!572098 m!2297381))

(assert (=> d!572098 m!2297349))

(declare-fun m!2297383 () Bool)

(assert (=> d!572098 m!2297383))

(declare-fun m!2297385 () Bool)

(assert (=> b!1871378 m!2297385))

(assert (=> b!1871381 m!2297349))

(assert (=> b!1871381 m!2297379))

(assert (=> d!572082 d!572098))

(declare-fun b!1871435 () Bool)

(declare-fun e!1193931 () Bool)

(declare-fun lt!719431 () List!20807)

(declare-fun e!1193929 () Int)

(assert (=> b!1871435 (= e!1193931 (= (size!16458 lt!719431) e!1193929))))

(declare-fun c!304955 () Bool)

(assert (=> b!1871435 (= c!304955 (<= 0 0))))

(declare-fun b!1871436 () Bool)

(declare-fun e!1193932 () List!20807)

(assert (=> b!1871436 (= e!1193932 Nil!20725)))

(declare-fun b!1871437 () Bool)

(declare-fun e!1193930 () Int)

(assert (=> b!1871437 (= e!1193929 e!1193930)))

(declare-fun c!304954 () Bool)

(declare-fun call!116063 () Int)

(assert (=> b!1871437 (= c!304954 (>= 0 call!116063))))

(declare-fun b!1871438 () Bool)

(declare-fun e!1193928 () List!20807)

(assert (=> b!1871438 (= e!1193928 (drop!994 (t!173024 (t!173024 l!2791)) (- 0 1)))))

(declare-fun d!572102 () Bool)

(assert (=> d!572102 e!1193931))

(declare-fun res!837782 () Bool)

(assert (=> d!572102 (=> (not res!837782) (not e!1193931))))

(assert (=> d!572102 (= res!837782 (= ((_ map implies) (content!3089 lt!719431) (content!3089 (t!173024 l!2791))) ((as const (InoxSet T!33452)) true)))))

(assert (=> d!572102 (= lt!719431 e!1193932)))

(declare-fun c!304956 () Bool)

(assert (=> d!572102 (= c!304956 ((_ is Nil!20725) (t!173024 l!2791)))))

(assert (=> d!572102 (= (drop!994 (t!173024 l!2791) 0) lt!719431)))

(declare-fun b!1871439 () Bool)

(assert (=> b!1871439 (= e!1193930 0)))

(declare-fun b!1871440 () Bool)

(assert (=> b!1871440 (= e!1193929 call!116063)))

(declare-fun b!1871441 () Bool)

(assert (=> b!1871441 (= e!1193928 (t!173024 l!2791))))

(declare-fun b!1871442 () Bool)

(assert (=> b!1871442 (= e!1193932 e!1193928)))

(declare-fun c!304957 () Bool)

(assert (=> b!1871442 (= c!304957 (<= 0 0))))

(declare-fun bm!116058 () Bool)

(assert (=> bm!116058 (= call!116063 (size!16458 (t!173024 l!2791)))))

(declare-fun b!1871443 () Bool)

(assert (=> b!1871443 (= e!1193930 (- call!116063 0))))

(assert (= (and d!572102 c!304956) b!1871436))

(assert (= (and d!572102 (not c!304956)) b!1871442))

(assert (= (and b!1871442 c!304957) b!1871441))

(assert (= (and b!1871442 (not c!304957)) b!1871438))

(assert (= (and d!572102 res!837782) b!1871435))

(assert (= (and b!1871435 c!304955) b!1871440))

(assert (= (and b!1871435 (not c!304955)) b!1871437))

(assert (= (and b!1871437 c!304954) b!1871439))

(assert (= (and b!1871437 (not c!304954)) b!1871443))

(assert (= (or b!1871440 b!1871437 b!1871443) bm!116058))

(declare-fun m!2297405 () Bool)

(assert (=> b!1871435 m!2297405))

(declare-fun m!2297407 () Bool)

(assert (=> b!1871438 m!2297407))

(declare-fun m!2297409 () Bool)

(assert (=> d!572102 m!2297409))

(declare-fun m!2297411 () Bool)

(assert (=> d!572102 m!2297411))

(assert (=> bm!116058 m!2297341))

(assert (=> d!572082 d!572102))

(declare-fun b!1871453 () Bool)

(declare-fun e!1193941 () Int)

(assert (=> b!1871453 (= e!1193941 (size!16458 (drop!994 l!2791 1)))))

(declare-fun b!1871454 () Bool)

(declare-fun e!1193938 () List!20807)

(assert (=> b!1871454 (= e!1193938 Nil!20725)))

(declare-fun b!1871455 () Bool)

(assert (=> b!1871455 (= e!1193938 (Cons!20725 (h!26126 (drop!994 l!2791 1)) (take!167 (t!173024 (drop!994 l!2791 1)) (- (- lt!719409 1) 1))))))

(declare-fun b!1871456 () Bool)

(assert (=> b!1871456 (= e!1193941 (- lt!719409 1))))

(declare-fun b!1871458 () Bool)

(declare-fun e!1193939 () Int)

(assert (=> b!1871458 (= e!1193939 e!1193941)))

(declare-fun c!304964 () Bool)

(assert (=> b!1871458 (= c!304964 (>= (- lt!719409 1) (size!16458 (drop!994 l!2791 1))))))

(declare-fun b!1871459 () Bool)

(declare-fun e!1193940 () Bool)

(declare-fun lt!719433 () List!20807)

(assert (=> b!1871459 (= e!1193940 (= (size!16458 lt!719433) e!1193939))))

(declare-fun c!304962 () Bool)

(assert (=> b!1871459 (= c!304962 (<= (- lt!719409 1) 0))))

(declare-fun d!572108 () Bool)

(assert (=> d!572108 e!1193940))

(declare-fun res!837784 () Bool)

(assert (=> d!572108 (=> (not res!837784) (not e!1193940))))

(assert (=> d!572108 (= res!837784 (= ((_ map implies) (content!3089 lt!719433) (content!3089 (drop!994 l!2791 1))) ((as const (InoxSet T!33452)) true)))))

(assert (=> d!572108 (= lt!719433 e!1193938)))

(declare-fun c!304963 () Bool)

(assert (=> d!572108 (= c!304963 (or ((_ is Nil!20725) (drop!994 l!2791 1)) (<= (- lt!719409 1) 0)))))

(assert (=> d!572108 (= (take!167 (drop!994 l!2791 1) (- lt!719409 1)) lt!719433)))

(declare-fun b!1871457 () Bool)

(assert (=> b!1871457 (= e!1193939 0)))

(assert (= (and d!572108 c!304963) b!1871454))

(assert (= (and d!572108 (not c!304963)) b!1871455))

(assert (= (and d!572108 res!837784) b!1871459))

(assert (= (and b!1871459 c!304962) b!1871457))

(assert (= (and b!1871459 (not c!304962)) b!1871458))

(assert (= (and b!1871458 c!304964) b!1871453))

(assert (= (and b!1871458 (not c!304964)) b!1871456))

(declare-fun m!2297421 () Bool)

(assert (=> b!1871459 m!2297421))

(assert (=> b!1871453 m!2297345))

(declare-fun m!2297423 () Bool)

(assert (=> b!1871453 m!2297423))

(declare-fun m!2297425 () Bool)

(assert (=> d!572108 m!2297425))

(assert (=> d!572108 m!2297345))

(declare-fun m!2297427 () Bool)

(assert (=> d!572108 m!2297427))

(declare-fun m!2297429 () Bool)

(assert (=> b!1871455 m!2297429))

(assert (=> b!1871458 m!2297345))

(assert (=> b!1871458 m!2297423))

(assert (=> d!572076 d!572108))

(declare-fun b!1871461 () Bool)

(declare-fun e!1193946 () Bool)

(declare-fun lt!719434 () List!20807)

(declare-fun e!1193944 () Int)

(assert (=> b!1871461 (= e!1193946 (= (size!16458 lt!719434) e!1193944))))

(declare-fun c!304966 () Bool)

(assert (=> b!1871461 (= c!304966 (<= 1 0))))

(declare-fun b!1871462 () Bool)

(declare-fun e!1193947 () List!20807)

(assert (=> b!1871462 (= e!1193947 Nil!20725)))

(declare-fun b!1871463 () Bool)

(declare-fun e!1193945 () Int)

(assert (=> b!1871463 (= e!1193944 e!1193945)))

(declare-fun c!304965 () Bool)

(declare-fun call!116065 () Int)

(assert (=> b!1871463 (= c!304965 (>= 1 call!116065))))

(declare-fun b!1871464 () Bool)

(declare-fun e!1193943 () List!20807)

(assert (=> b!1871464 (= e!1193943 (drop!994 (t!173024 l!2791) (- 1 1)))))

(declare-fun d!572110 () Bool)

(assert (=> d!572110 e!1193946))

(declare-fun res!837785 () Bool)

(assert (=> d!572110 (=> (not res!837785) (not e!1193946))))

(assert (=> d!572110 (= res!837785 (= ((_ map implies) (content!3089 lt!719434) (content!3089 l!2791)) ((as const (InoxSet T!33452)) true)))))

(assert (=> d!572110 (= lt!719434 e!1193947)))

(declare-fun c!304967 () Bool)

(assert (=> d!572110 (= c!304967 ((_ is Nil!20725) l!2791))))

(assert (=> d!572110 (= (drop!994 l!2791 1) lt!719434)))

(declare-fun b!1871465 () Bool)

(assert (=> b!1871465 (= e!1193945 0)))

(declare-fun b!1871466 () Bool)

(assert (=> b!1871466 (= e!1193944 call!116065)))

(declare-fun b!1871467 () Bool)

(assert (=> b!1871467 (= e!1193943 l!2791)))

(declare-fun b!1871468 () Bool)

(assert (=> b!1871468 (= e!1193947 e!1193943)))

(declare-fun c!304968 () Bool)

(assert (=> b!1871468 (= c!304968 (<= 1 0))))

(declare-fun bm!116060 () Bool)

(assert (=> bm!116060 (= call!116065 (size!16458 l!2791))))

(declare-fun b!1871469 () Bool)

(assert (=> b!1871469 (= e!1193945 (- call!116065 1))))

(assert (= (and d!572110 c!304967) b!1871462))

(assert (= (and d!572110 (not c!304967)) b!1871468))

(assert (= (and b!1871468 c!304968) b!1871467))

(assert (= (and b!1871468 (not c!304968)) b!1871464))

(assert (= (and d!572110 res!837785) b!1871461))

(assert (= (and b!1871461 c!304966) b!1871466))

(assert (= (and b!1871461 (not c!304966)) b!1871463))

(assert (= (and b!1871463 c!304965) b!1871465))

(assert (= (and b!1871463 (not c!304965)) b!1871469))

(assert (= (or b!1871466 b!1871463 b!1871469) bm!116060))

(declare-fun m!2297431 () Bool)

(assert (=> b!1871461 m!2297431))

(declare-fun m!2297433 () Bool)

(assert (=> b!1871464 m!2297433))

(declare-fun m!2297435 () Bool)

(assert (=> d!572110 m!2297435))

(declare-fun m!2297437 () Bool)

(assert (=> d!572110 m!2297437))

(assert (=> bm!116060 m!2297335))

(assert (=> d!572076 d!572110))

(declare-fun d!572112 () Bool)

(declare-fun lt!719435 () Int)

(assert (=> d!572112 (>= lt!719435 0)))

(declare-fun e!1193948 () Int)

(assert (=> d!572112 (= lt!719435 e!1193948)))

(declare-fun c!304969 () Bool)

(assert (=> d!572112 (= c!304969 ((_ is Nil!20725) (t!173024 (t!173024 l!2791))))))

(assert (=> d!572112 (= (size!16458 (t!173024 (t!173024 l!2791))) lt!719435)))

(declare-fun b!1871470 () Bool)

(assert (=> b!1871470 (= e!1193948 0)))

(declare-fun b!1871471 () Bool)

(assert (=> b!1871471 (= e!1193948 (+ 1 (size!16458 (t!173024 (t!173024 (t!173024 l!2791))))))))

(assert (= (and d!572112 c!304969) b!1871470))

(assert (= (and d!572112 (not c!304969)) b!1871471))

(declare-fun m!2297439 () Bool)

(assert (=> b!1871471 m!2297439))

(assert (=> b!1871331 d!572112))

(declare-fun b!1871472 () Bool)

(declare-fun e!1193949 () Bool)

(declare-fun tp!532363 () Bool)

(assert (=> b!1871472 (= e!1193949 (and tp_is_empty!8759 tp!532363))))

(assert (=> b!1871338 (= tp!532361 e!1193949)))

(assert (= (and b!1871338 ((_ is Cons!20725) (t!173024 (t!173024 l!2791)))) b!1871472))

(check-sat (not d!572102) (not b!1871376) (not b!1871471) (not b!1871464) (not bm!116058) (not d!572110) (not b!1871453) (not b!1871472) (not b!1871435) (not b!1871458) (not d!572108) tp_is_empty!8759 (not b!1871461) (not b!1871459) (not b!1871455) (not d!572098) (not b!1871381) (not b!1871382) (not b!1871438) (not bm!116060) (not b!1871378))
(check-sat)
