; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47726 () Bool)

(assert start!47726)

(declare-fun b!520936 () Bool)

(declare-fun e!312240 () Bool)

(declare-fun e!312242 () Bool)

(assert (=> b!520936 (= e!312240 (not e!312242))))

(declare-fun res!221274 () Bool)

(assert (=> b!520936 (=> (not res!221274) (not e!312242))))

(declare-fun lt!217055 () Bool)

(assert (=> b!520936 (= res!221274 (not lt!217055))))

(declare-fun e!312239 () Bool)

(assert (=> b!520936 e!312239))

(declare-fun res!221275 () Bool)

(assert (=> b!520936 (=> (not res!221275) (not e!312239))))

(assert (=> b!520936 (= res!221275 (not lt!217055))))

(declare-datatypes ((B!1177 0))(
  ( (B!1178 (val!1878 Int)) )
))
(declare-datatypes ((List!4826 0))(
  ( (Nil!4816) (Cons!4816 (h!10217 B!1177) (t!73416 List!4826)) )
))
(declare-fun lt!217053 () List!4826)

(declare-fun noDuplicate!167 (List!4826) Bool)

(assert (=> b!520936 (= lt!217055 (not (noDuplicate!167 lt!217053)))))

(declare-fun list!41 () List!4826)

(declare-fun lt!217054 () List!4826)

(declare-fun removeDuplicates!4 (List!4826 List!4826) List!4826)

(assert (=> b!520936 (= lt!217053 (removeDuplicates!4 (t!73416 list!41) lt!217054))))

(declare-fun b!520937 () Bool)

(declare-fun res!221271 () Bool)

(declare-fun e!312238 () Bool)

(assert (=> b!520937 (=> (not res!221271) (not e!312238))))

(declare-fun e!312243 () Bool)

(assert (=> b!520937 (= res!221271 e!312243)))

(declare-fun res!221270 () Bool)

(assert (=> b!520937 (=> res!221270 e!312243)))

(get-info :version)

(assert (=> b!520937 (= res!221270 (not ((_ is Cons!4816) list!41)))))

(declare-fun b!520938 () Bool)

(declare-fun acc!308 () List!4826)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!879 (List!4826) (InoxSet B!1177))

(declare-fun ++!1361 (List!4826 List!4826) List!4826)

(assert (=> b!520938 (= e!312242 (= (content!879 lt!217053) (content!879 (++!1361 list!41 acc!308))))))

(declare-fun b!520939 () Bool)

(declare-fun e!312241 () Bool)

(declare-fun tp_is_empty!2773 () Bool)

(declare-fun tp!162039 () Bool)

(assert (=> b!520939 (= e!312241 (and tp_is_empty!2773 tp!162039))))

(declare-fun res!221269 () Bool)

(assert (=> start!47726 (=> (not res!221269) (not e!312238))))

(assert (=> start!47726 (= res!221269 (noDuplicate!167 acc!308))))

(assert (=> start!47726 e!312238))

(declare-fun e!312244 () Bool)

(assert (=> start!47726 e!312244))

(assert (=> start!47726 e!312241))

(declare-fun b!520940 () Bool)

(assert (=> b!520940 (= e!312238 e!312240)))

(declare-fun res!221273 () Bool)

(assert (=> b!520940 (=> (not res!221273) (not e!312240))))

(assert (=> b!520940 (= res!221273 (noDuplicate!167 lt!217054))))

(assert (=> b!520940 (= lt!217054 (Cons!4816 (h!10217 list!41) acc!308))))

(declare-fun b!520941 () Bool)

(assert (=> b!520941 (= e!312239 (= (content!879 lt!217053) (content!879 (++!1361 (t!73416 list!41) lt!217054))))))

(declare-fun b!520942 () Bool)

(declare-fun res!221272 () Bool)

(assert (=> b!520942 (=> (not res!221272) (not e!312238))))

(assert (=> b!520942 (= res!221272 ((_ is Cons!4816) list!41))))

(declare-fun b!520943 () Bool)

(declare-fun tp!162038 () Bool)

(assert (=> b!520943 (= e!312244 (and tp_is_empty!2773 tp!162038))))

(declare-fun b!520944 () Bool)

(declare-fun contains!1164 (List!4826 B!1177) Bool)

(assert (=> b!520944 (= e!312243 (not (contains!1164 acc!308 (h!10217 list!41))))))

(assert (= (and start!47726 res!221269) b!520937))

(assert (= (and b!520937 (not res!221270)) b!520944))

(assert (= (and b!520937 res!221271) b!520942))

(assert (= (and b!520942 res!221272) b!520940))

(assert (= (and b!520940 res!221273) b!520936))

(assert (= (and b!520936 res!221275) b!520941))

(assert (= (and b!520936 res!221274) b!520938))

(assert (= (and start!47726 ((_ is Cons!4816) acc!308)) b!520943))

(assert (= (and start!47726 ((_ is Cons!4816) list!41)) b!520939))

(declare-fun m!767449 () Bool)

(assert (=> start!47726 m!767449))

(declare-fun m!767451 () Bool)

(assert (=> b!520940 m!767451))

(declare-fun m!767453 () Bool)

(assert (=> b!520938 m!767453))

(declare-fun m!767455 () Bool)

(assert (=> b!520938 m!767455))

(assert (=> b!520938 m!767455))

(declare-fun m!767457 () Bool)

(assert (=> b!520938 m!767457))

(declare-fun m!767459 () Bool)

(assert (=> b!520944 m!767459))

(declare-fun m!767461 () Bool)

(assert (=> b!520936 m!767461))

(declare-fun m!767463 () Bool)

(assert (=> b!520936 m!767463))

(assert (=> b!520941 m!767453))

(declare-fun m!767465 () Bool)

(assert (=> b!520941 m!767465))

(assert (=> b!520941 m!767465))

(declare-fun m!767467 () Bool)

(assert (=> b!520941 m!767467))

(check-sat (not start!47726) (not b!520940) (not b!520938) (not b!520943) tp_is_empty!2773 (not b!520944) (not b!520936) (not b!520939) (not b!520941))
(check-sat)
(get-model)

(declare-fun d!185972 () Bool)

(declare-fun res!221293 () Bool)

(declare-fun e!312266 () Bool)

(assert (=> d!185972 (=> res!221293 e!312266)))

(assert (=> d!185972 (= res!221293 ((_ is Nil!4816) acc!308))))

(assert (=> d!185972 (= (noDuplicate!167 acc!308) e!312266)))

(declare-fun b!520974 () Bool)

(declare-fun e!312267 () Bool)

(assert (=> b!520974 (= e!312266 e!312267)))

(declare-fun res!221294 () Bool)

(assert (=> b!520974 (=> (not res!221294) (not e!312267))))

(assert (=> b!520974 (= res!221294 (not (contains!1164 (t!73416 acc!308) (h!10217 acc!308))))))

(declare-fun b!520975 () Bool)

(assert (=> b!520975 (= e!312267 (noDuplicate!167 (t!73416 acc!308)))))

(assert (= (and d!185972 (not res!221293)) b!520974))

(assert (= (and b!520974 res!221294) b!520975))

(declare-fun m!767487 () Bool)

(assert (=> b!520974 m!767487))

(declare-fun m!767489 () Bool)

(assert (=> b!520975 m!767489))

(assert (=> start!47726 d!185972))

(declare-fun d!185980 () Bool)

(declare-fun c!100656 () Bool)

(assert (=> d!185980 (= c!100656 ((_ is Nil!4816) lt!217053))))

(declare-fun e!312281 () (InoxSet B!1177))

(assert (=> d!185980 (= (content!879 lt!217053) e!312281)))

(declare-fun b!520996 () Bool)

(assert (=> b!520996 (= e!312281 ((as const (Array B!1177 Bool)) false))))

(declare-fun b!520997 () Bool)

(assert (=> b!520997 (= e!312281 ((_ map or) (store ((as const (Array B!1177 Bool)) false) (h!10217 lt!217053) true) (content!879 (t!73416 lt!217053))))))

(assert (= (and d!185980 c!100656) b!520996))

(assert (= (and d!185980 (not c!100656)) b!520997))

(declare-fun m!767529 () Bool)

(assert (=> b!520997 m!767529))

(declare-fun m!767533 () Bool)

(assert (=> b!520997 m!767533))

(assert (=> b!520938 d!185980))

(declare-fun d!185992 () Bool)

(declare-fun c!100657 () Bool)

(assert (=> d!185992 (= c!100657 ((_ is Nil!4816) (++!1361 list!41 acc!308)))))

(declare-fun e!312286 () (InoxSet B!1177))

(assert (=> d!185992 (= (content!879 (++!1361 list!41 acc!308)) e!312286)))

(declare-fun b!521002 () Bool)

(assert (=> b!521002 (= e!312286 ((as const (Array B!1177 Bool)) false))))

(declare-fun b!521003 () Bool)

(assert (=> b!521003 (= e!312286 ((_ map or) (store ((as const (Array B!1177 Bool)) false) (h!10217 (++!1361 list!41 acc!308)) true) (content!879 (t!73416 (++!1361 list!41 acc!308)))))))

(assert (= (and d!185992 c!100657) b!521002))

(assert (= (and d!185992 (not c!100657)) b!521003))

(declare-fun m!767539 () Bool)

(assert (=> b!521003 m!767539))

(declare-fun m!767541 () Bool)

(assert (=> b!521003 m!767541))

(assert (=> b!520938 d!185992))

(declare-fun b!521019 () Bool)

(declare-fun e!312296 () List!4826)

(assert (=> b!521019 (= e!312296 (Cons!4816 (h!10217 list!41) (++!1361 (t!73416 list!41) acc!308)))))

(declare-fun e!312295 () Bool)

(declare-fun lt!217068 () List!4826)

(declare-fun b!521021 () Bool)

(assert (=> b!521021 (= e!312295 (or (not (= acc!308 Nil!4816)) (= lt!217068 list!41)))))

(declare-fun b!521018 () Bool)

(assert (=> b!521018 (= e!312296 acc!308)))

(declare-fun b!521020 () Bool)

(declare-fun res!221314 () Bool)

(assert (=> b!521020 (=> (not res!221314) (not e!312295))))

(declare-fun size!3930 (List!4826) Int)

(assert (=> b!521020 (= res!221314 (= (size!3930 lt!217068) (+ (size!3930 list!41) (size!3930 acc!308))))))

(declare-fun d!185994 () Bool)

(assert (=> d!185994 e!312295))

(declare-fun res!221313 () Bool)

(assert (=> d!185994 (=> (not res!221313) (not e!312295))))

(assert (=> d!185994 (= res!221313 (= (content!879 lt!217068) ((_ map or) (content!879 list!41) (content!879 acc!308))))))

(assert (=> d!185994 (= lt!217068 e!312296)))

(declare-fun c!100660 () Bool)

(assert (=> d!185994 (= c!100660 ((_ is Nil!4816) list!41))))

(assert (=> d!185994 (= (++!1361 list!41 acc!308) lt!217068)))

(assert (= (and d!185994 c!100660) b!521018))

(assert (= (and d!185994 (not c!100660)) b!521019))

(assert (= (and d!185994 res!221313) b!521020))

(assert (= (and b!521020 res!221314) b!521021))

(declare-fun m!767543 () Bool)

(assert (=> b!521019 m!767543))

(declare-fun m!767545 () Bool)

(assert (=> b!521020 m!767545))

(declare-fun m!767547 () Bool)

(assert (=> b!521020 m!767547))

(declare-fun m!767549 () Bool)

(assert (=> b!521020 m!767549))

(declare-fun m!767551 () Bool)

(assert (=> d!185994 m!767551))

(declare-fun m!767553 () Bool)

(assert (=> d!185994 m!767553))

(declare-fun m!767555 () Bool)

(assert (=> d!185994 m!767555))

(assert (=> b!520938 d!185994))

(declare-fun d!185996 () Bool)

(declare-fun lt!217071 () Bool)

(assert (=> d!185996 (= lt!217071 (select (content!879 acc!308) (h!10217 list!41)))))

(declare-fun e!312301 () Bool)

(assert (=> d!185996 (= lt!217071 e!312301)))

(declare-fun res!221320 () Bool)

(assert (=> d!185996 (=> (not res!221320) (not e!312301))))

(assert (=> d!185996 (= res!221320 ((_ is Cons!4816) acc!308))))

(assert (=> d!185996 (= (contains!1164 acc!308 (h!10217 list!41)) lt!217071)))

(declare-fun b!521026 () Bool)

(declare-fun e!312302 () Bool)

(assert (=> b!521026 (= e!312301 e!312302)))

(declare-fun res!221319 () Bool)

(assert (=> b!521026 (=> res!221319 e!312302)))

(assert (=> b!521026 (= res!221319 (= (h!10217 acc!308) (h!10217 list!41)))))

(declare-fun b!521027 () Bool)

(assert (=> b!521027 (= e!312302 (contains!1164 (t!73416 acc!308) (h!10217 list!41)))))

(assert (= (and d!185996 res!221320) b!521026))

(assert (= (and b!521026 (not res!221319)) b!521027))

(assert (=> d!185996 m!767555))

(declare-fun m!767557 () Bool)

(assert (=> d!185996 m!767557))

(declare-fun m!767559 () Bool)

(assert (=> b!521027 m!767559))

(assert (=> b!520944 d!185996))

(declare-fun d!185998 () Bool)

(declare-fun res!221321 () Bool)

(declare-fun e!312303 () Bool)

(assert (=> d!185998 (=> res!221321 e!312303)))

(assert (=> d!185998 (= res!221321 ((_ is Nil!4816) lt!217054))))

(assert (=> d!185998 (= (noDuplicate!167 lt!217054) e!312303)))

(declare-fun b!521028 () Bool)

(declare-fun e!312304 () Bool)

(assert (=> b!521028 (= e!312303 e!312304)))

(declare-fun res!221322 () Bool)

(assert (=> b!521028 (=> (not res!221322) (not e!312304))))

(assert (=> b!521028 (= res!221322 (not (contains!1164 (t!73416 lt!217054) (h!10217 lt!217054))))))

(declare-fun b!521029 () Bool)

(assert (=> b!521029 (= e!312304 (noDuplicate!167 (t!73416 lt!217054)))))

(assert (= (and d!185998 (not res!221321)) b!521028))

(assert (= (and b!521028 res!221322) b!521029))

(declare-fun m!767561 () Bool)

(assert (=> b!521028 m!767561))

(declare-fun m!767563 () Bool)

(assert (=> b!521029 m!767563))

(assert (=> b!520940 d!185998))

(assert (=> b!520941 d!185980))

(declare-fun d!186000 () Bool)

(declare-fun c!100661 () Bool)

(assert (=> d!186000 (= c!100661 ((_ is Nil!4816) (++!1361 (t!73416 list!41) lt!217054)))))

(declare-fun e!312305 () (InoxSet B!1177))

(assert (=> d!186000 (= (content!879 (++!1361 (t!73416 list!41) lt!217054)) e!312305)))

(declare-fun b!521030 () Bool)

(assert (=> b!521030 (= e!312305 ((as const (Array B!1177 Bool)) false))))

(declare-fun b!521031 () Bool)

(assert (=> b!521031 (= e!312305 ((_ map or) (store ((as const (Array B!1177 Bool)) false) (h!10217 (++!1361 (t!73416 list!41) lt!217054)) true) (content!879 (t!73416 (++!1361 (t!73416 list!41) lt!217054)))))))

(assert (= (and d!186000 c!100661) b!521030))

(assert (= (and d!186000 (not c!100661)) b!521031))

(declare-fun m!767565 () Bool)

(assert (=> b!521031 m!767565))

(declare-fun m!767567 () Bool)

(assert (=> b!521031 m!767567))

(assert (=> b!520941 d!186000))

(declare-fun b!521033 () Bool)

(declare-fun e!312307 () List!4826)

(assert (=> b!521033 (= e!312307 (Cons!4816 (h!10217 (t!73416 list!41)) (++!1361 (t!73416 (t!73416 list!41)) lt!217054)))))

(declare-fun b!521035 () Bool)

(declare-fun lt!217072 () List!4826)

(declare-fun e!312306 () Bool)

(assert (=> b!521035 (= e!312306 (or (not (= lt!217054 Nil!4816)) (= lt!217072 (t!73416 list!41))))))

(declare-fun b!521032 () Bool)

(assert (=> b!521032 (= e!312307 lt!217054)))

(declare-fun b!521034 () Bool)

(declare-fun res!221324 () Bool)

(assert (=> b!521034 (=> (not res!221324) (not e!312306))))

(assert (=> b!521034 (= res!221324 (= (size!3930 lt!217072) (+ (size!3930 (t!73416 list!41)) (size!3930 lt!217054))))))

(declare-fun d!186002 () Bool)

(assert (=> d!186002 e!312306))

(declare-fun res!221323 () Bool)

(assert (=> d!186002 (=> (not res!221323) (not e!312306))))

(assert (=> d!186002 (= res!221323 (= (content!879 lt!217072) ((_ map or) (content!879 (t!73416 list!41)) (content!879 lt!217054))))))

(assert (=> d!186002 (= lt!217072 e!312307)))

(declare-fun c!100662 () Bool)

(assert (=> d!186002 (= c!100662 ((_ is Nil!4816) (t!73416 list!41)))))

(assert (=> d!186002 (= (++!1361 (t!73416 list!41) lt!217054) lt!217072)))

(assert (= (and d!186002 c!100662) b!521032))

(assert (= (and d!186002 (not c!100662)) b!521033))

(assert (= (and d!186002 res!221323) b!521034))

(assert (= (and b!521034 res!221324) b!521035))

(declare-fun m!767569 () Bool)

(assert (=> b!521033 m!767569))

(declare-fun m!767571 () Bool)

(assert (=> b!521034 m!767571))

(declare-fun m!767573 () Bool)

(assert (=> b!521034 m!767573))

(declare-fun m!767575 () Bool)

(assert (=> b!521034 m!767575))

(declare-fun m!767577 () Bool)

(assert (=> d!186002 m!767577))

(declare-fun m!767579 () Bool)

(assert (=> d!186002 m!767579))

(declare-fun m!767581 () Bool)

(assert (=> d!186002 m!767581))

(assert (=> b!520941 d!186002))

(declare-fun d!186004 () Bool)

(declare-fun res!221325 () Bool)

(declare-fun e!312308 () Bool)

(assert (=> d!186004 (=> res!221325 e!312308)))

(assert (=> d!186004 (= res!221325 ((_ is Nil!4816) lt!217053))))

(assert (=> d!186004 (= (noDuplicate!167 lt!217053) e!312308)))

(declare-fun b!521036 () Bool)

(declare-fun e!312309 () Bool)

(assert (=> b!521036 (= e!312308 e!312309)))

(declare-fun res!221326 () Bool)

(assert (=> b!521036 (=> (not res!221326) (not e!312309))))

(assert (=> b!521036 (= res!221326 (not (contains!1164 (t!73416 lt!217053) (h!10217 lt!217053))))))

(declare-fun b!521037 () Bool)

(assert (=> b!521037 (= e!312309 (noDuplicate!167 (t!73416 lt!217053)))))

(assert (= (and d!186004 (not res!221325)) b!521036))

(assert (= (and b!521036 res!221326) b!521037))

(declare-fun m!767583 () Bool)

(assert (=> b!521036 m!767583))

(declare-fun m!767585 () Bool)

(assert (=> b!521037 m!767585))

(assert (=> b!520936 d!186004))

(declare-fun d!186006 () Bool)

(declare-fun e!312312 () Bool)

(assert (=> d!186006 e!312312))

(declare-fun res!221329 () Bool)

(assert (=> d!186006 (=> (not res!221329) (not e!312312))))

(declare-fun lt!217075 () List!4826)

(assert (=> d!186006 (= res!221329 (noDuplicate!167 lt!217075))))

(declare-fun choose!3727 (List!4826 List!4826) List!4826)

(assert (=> d!186006 (= lt!217075 (choose!3727 (t!73416 list!41) lt!217054))))

(assert (=> d!186006 (noDuplicate!167 lt!217054)))

(assert (=> d!186006 (= (removeDuplicates!4 (t!73416 list!41) lt!217054) lt!217075)))

(declare-fun b!521040 () Bool)

(assert (=> b!521040 (= e!312312 (= (content!879 lt!217075) (content!879 (++!1361 (t!73416 list!41) lt!217054))))))

(assert (= (and d!186006 res!221329) b!521040))

(declare-fun m!767587 () Bool)

(assert (=> d!186006 m!767587))

(declare-fun m!767589 () Bool)

(assert (=> d!186006 m!767589))

(assert (=> d!186006 m!767451))

(declare-fun m!767591 () Bool)

(assert (=> b!521040 m!767591))

(assert (=> b!521040 m!767465))

(assert (=> b!521040 m!767465))

(assert (=> b!521040 m!767467))

(assert (=> b!520936 d!186006))

(declare-fun b!521045 () Bool)

(declare-fun e!312315 () Bool)

(declare-fun tp!162046 () Bool)

(assert (=> b!521045 (= e!312315 (and tp_is_empty!2773 tp!162046))))

(assert (=> b!520943 (= tp!162038 e!312315)))

(assert (= (and b!520943 ((_ is Cons!4816) (t!73416 acc!308))) b!521045))

(declare-fun b!521046 () Bool)

(declare-fun e!312316 () Bool)

(declare-fun tp!162047 () Bool)

(assert (=> b!521046 (= e!312316 (and tp_is_empty!2773 tp!162047))))

(assert (=> b!520939 (= tp!162039 e!312316)))

(assert (= (and b!520939 ((_ is Cons!4816) (t!73416 list!41))) b!521046))

(check-sat (not b!521003) (not b!520974) (not b!521019) (not b!521034) (not d!185994) (not d!186006) (not b!521028) (not b!521033) tp_is_empty!2773 (not b!521037) (not b!520997) (not b!521046) (not b!521040) (not b!521031) (not b!521027) (not b!521029) (not b!521036) (not b!521020) (not d!186002) (not b!520975) (not b!521045) (not d!185996))
(check-sat)
(get-model)

(declare-fun d!186062 () Bool)

(declare-fun res!221356 () Bool)

(declare-fun e!312363 () Bool)

(assert (=> d!186062 (=> res!221356 e!312363)))

(assert (=> d!186062 (= res!221356 ((_ is Nil!4816) (t!73416 acc!308)))))

(assert (=> d!186062 (= (noDuplicate!167 (t!73416 acc!308)) e!312363)))

(declare-fun b!521115 () Bool)

(declare-fun e!312364 () Bool)

(assert (=> b!521115 (= e!312363 e!312364)))

(declare-fun res!221357 () Bool)

(assert (=> b!521115 (=> (not res!221357) (not e!312364))))

(assert (=> b!521115 (= res!221357 (not (contains!1164 (t!73416 (t!73416 acc!308)) (h!10217 (t!73416 acc!308)))))))

(declare-fun b!521116 () Bool)

(assert (=> b!521116 (= e!312364 (noDuplicate!167 (t!73416 (t!73416 acc!308))))))

(assert (= (and d!186062 (not res!221356)) b!521115))

(assert (= (and b!521115 res!221357) b!521116))

(declare-fun m!767689 () Bool)

(assert (=> b!521115 m!767689))

(declare-fun m!767691 () Bool)

(assert (=> b!521116 m!767691))

(assert (=> b!520975 d!186062))

(declare-fun d!186064 () Bool)

(declare-fun lt!217090 () Bool)

(assert (=> d!186064 (= lt!217090 (select (content!879 (t!73416 acc!308)) (h!10217 list!41)))))

(declare-fun e!312365 () Bool)

(assert (=> d!186064 (= lt!217090 e!312365)))

(declare-fun res!221359 () Bool)

(assert (=> d!186064 (=> (not res!221359) (not e!312365))))

(assert (=> d!186064 (= res!221359 ((_ is Cons!4816) (t!73416 acc!308)))))

(assert (=> d!186064 (= (contains!1164 (t!73416 acc!308) (h!10217 list!41)) lt!217090)))

(declare-fun b!521117 () Bool)

(declare-fun e!312366 () Bool)

(assert (=> b!521117 (= e!312365 e!312366)))

(declare-fun res!221358 () Bool)

(assert (=> b!521117 (=> res!221358 e!312366)))

(assert (=> b!521117 (= res!221358 (= (h!10217 (t!73416 acc!308)) (h!10217 list!41)))))

(declare-fun b!521118 () Bool)

(assert (=> b!521118 (= e!312366 (contains!1164 (t!73416 (t!73416 acc!308)) (h!10217 list!41)))))

(assert (= (and d!186064 res!221359) b!521117))

(assert (= (and b!521117 (not res!221358)) b!521118))

(declare-fun m!767693 () Bool)

(assert (=> d!186064 m!767693))

(declare-fun m!767695 () Bool)

(assert (=> d!186064 m!767695))

(declare-fun m!767697 () Bool)

(assert (=> b!521118 m!767697))

(assert (=> b!521027 d!186064))

(declare-fun d!186066 () Bool)

(declare-fun lt!217091 () Bool)

(assert (=> d!186066 (= lt!217091 (select (content!879 (t!73416 lt!217054)) (h!10217 lt!217054)))))

(declare-fun e!312367 () Bool)

(assert (=> d!186066 (= lt!217091 e!312367)))

(declare-fun res!221361 () Bool)

(assert (=> d!186066 (=> (not res!221361) (not e!312367))))

(assert (=> d!186066 (= res!221361 ((_ is Cons!4816) (t!73416 lt!217054)))))

(assert (=> d!186066 (= (contains!1164 (t!73416 lt!217054) (h!10217 lt!217054)) lt!217091)))

(declare-fun b!521119 () Bool)

(declare-fun e!312368 () Bool)

(assert (=> b!521119 (= e!312367 e!312368)))

(declare-fun res!221360 () Bool)

(assert (=> b!521119 (=> res!221360 e!312368)))

(assert (=> b!521119 (= res!221360 (= (h!10217 (t!73416 lt!217054)) (h!10217 lt!217054)))))

(declare-fun b!521120 () Bool)

(assert (=> b!521120 (= e!312368 (contains!1164 (t!73416 (t!73416 lt!217054)) (h!10217 lt!217054)))))

(assert (= (and d!186066 res!221361) b!521119))

(assert (= (and b!521119 (not res!221360)) b!521120))

(declare-fun m!767699 () Bool)

(assert (=> d!186066 m!767699))

(declare-fun m!767701 () Bool)

(assert (=> d!186066 m!767701))

(declare-fun m!767703 () Bool)

(assert (=> b!521120 m!767703))

(assert (=> b!521028 d!186066))

(declare-fun b!521122 () Bool)

(declare-fun e!312370 () List!4826)

(assert (=> b!521122 (= e!312370 (Cons!4816 (h!10217 (t!73416 list!41)) (++!1361 (t!73416 (t!73416 list!41)) acc!308)))))

(declare-fun e!312369 () Bool)

(declare-fun b!521124 () Bool)

(declare-fun lt!217092 () List!4826)

(assert (=> b!521124 (= e!312369 (or (not (= acc!308 Nil!4816)) (= lt!217092 (t!73416 list!41))))))

(declare-fun b!521121 () Bool)

(assert (=> b!521121 (= e!312370 acc!308)))

(declare-fun b!521123 () Bool)

(declare-fun res!221363 () Bool)

(assert (=> b!521123 (=> (not res!221363) (not e!312369))))

(assert (=> b!521123 (= res!221363 (= (size!3930 lt!217092) (+ (size!3930 (t!73416 list!41)) (size!3930 acc!308))))))

(declare-fun d!186068 () Bool)

(assert (=> d!186068 e!312369))

(declare-fun res!221362 () Bool)

(assert (=> d!186068 (=> (not res!221362) (not e!312369))))

(assert (=> d!186068 (= res!221362 (= (content!879 lt!217092) ((_ map or) (content!879 (t!73416 list!41)) (content!879 acc!308))))))

(assert (=> d!186068 (= lt!217092 e!312370)))

(declare-fun c!100683 () Bool)

(assert (=> d!186068 (= c!100683 ((_ is Nil!4816) (t!73416 list!41)))))

(assert (=> d!186068 (= (++!1361 (t!73416 list!41) acc!308) lt!217092)))

(assert (= (and d!186068 c!100683) b!521121))

(assert (= (and d!186068 (not c!100683)) b!521122))

(assert (= (and d!186068 res!221362) b!521123))

(assert (= (and b!521123 res!221363) b!521124))

(declare-fun m!767705 () Bool)

(assert (=> b!521122 m!767705))

(declare-fun m!767707 () Bool)

(assert (=> b!521123 m!767707))

(assert (=> b!521123 m!767573))

(assert (=> b!521123 m!767549))

(declare-fun m!767709 () Bool)

(assert (=> d!186068 m!767709))

(assert (=> d!186068 m!767579))

(assert (=> d!186068 m!767555))

(assert (=> b!521019 d!186068))

(declare-fun d!186070 () Bool)

(declare-fun c!100684 () Bool)

(assert (=> d!186070 (= c!100684 ((_ is Nil!4816) (t!73416 lt!217053)))))

(declare-fun e!312371 () (InoxSet B!1177))

(assert (=> d!186070 (= (content!879 (t!73416 lt!217053)) e!312371)))

(declare-fun b!521125 () Bool)

(assert (=> b!521125 (= e!312371 ((as const (Array B!1177 Bool)) false))))

(declare-fun b!521126 () Bool)

(assert (=> b!521126 (= e!312371 ((_ map or) (store ((as const (Array B!1177 Bool)) false) (h!10217 (t!73416 lt!217053)) true) (content!879 (t!73416 (t!73416 lt!217053)))))))

(assert (= (and d!186070 c!100684) b!521125))

(assert (= (and d!186070 (not c!100684)) b!521126))

(declare-fun m!767711 () Bool)

(assert (=> b!521126 m!767711))

(declare-fun m!767713 () Bool)

(assert (=> b!521126 m!767713))

(assert (=> b!520997 d!186070))

(declare-fun d!186072 () Bool)

(declare-fun res!221364 () Bool)

(declare-fun e!312372 () Bool)

(assert (=> d!186072 (=> res!221364 e!312372)))

(assert (=> d!186072 (= res!221364 ((_ is Nil!4816) (t!73416 lt!217053)))))

(assert (=> d!186072 (= (noDuplicate!167 (t!73416 lt!217053)) e!312372)))

(declare-fun b!521127 () Bool)

(declare-fun e!312373 () Bool)

(assert (=> b!521127 (= e!312372 e!312373)))

(declare-fun res!221365 () Bool)

(assert (=> b!521127 (=> (not res!221365) (not e!312373))))

(assert (=> b!521127 (= res!221365 (not (contains!1164 (t!73416 (t!73416 lt!217053)) (h!10217 (t!73416 lt!217053)))))))

(declare-fun b!521128 () Bool)

(assert (=> b!521128 (= e!312373 (noDuplicate!167 (t!73416 (t!73416 lt!217053))))))

(assert (= (and d!186072 (not res!221364)) b!521127))

(assert (= (and b!521127 res!221365) b!521128))

(declare-fun m!767715 () Bool)

(assert (=> b!521127 m!767715))

(declare-fun m!767717 () Bool)

(assert (=> b!521128 m!767717))

(assert (=> b!521037 d!186072))

(declare-fun d!186074 () Bool)

(declare-fun c!100685 () Bool)

(assert (=> d!186074 (= c!100685 ((_ is Nil!4816) lt!217072))))

(declare-fun e!312374 () (InoxSet B!1177))

(assert (=> d!186074 (= (content!879 lt!217072) e!312374)))

(declare-fun b!521129 () Bool)

(assert (=> b!521129 (= e!312374 ((as const (Array B!1177 Bool)) false))))

(declare-fun b!521130 () Bool)

(assert (=> b!521130 (= e!312374 ((_ map or) (store ((as const (Array B!1177 Bool)) false) (h!10217 lt!217072) true) (content!879 (t!73416 lt!217072))))))

(assert (= (and d!186074 c!100685) b!521129))

(assert (= (and d!186074 (not c!100685)) b!521130))

(declare-fun m!767719 () Bool)

(assert (=> b!521130 m!767719))

(declare-fun m!767721 () Bool)

(assert (=> b!521130 m!767721))

(assert (=> d!186002 d!186074))

(declare-fun d!186076 () Bool)

(declare-fun c!100686 () Bool)

(assert (=> d!186076 (= c!100686 ((_ is Nil!4816) (t!73416 list!41)))))

(declare-fun e!312375 () (InoxSet B!1177))

(assert (=> d!186076 (= (content!879 (t!73416 list!41)) e!312375)))

(declare-fun b!521131 () Bool)

(assert (=> b!521131 (= e!312375 ((as const (Array B!1177 Bool)) false))))

(declare-fun b!521132 () Bool)

(assert (=> b!521132 (= e!312375 ((_ map or) (store ((as const (Array B!1177 Bool)) false) (h!10217 (t!73416 list!41)) true) (content!879 (t!73416 (t!73416 list!41)))))))

(assert (= (and d!186076 c!100686) b!521131))

(assert (= (and d!186076 (not c!100686)) b!521132))

(declare-fun m!767723 () Bool)

(assert (=> b!521132 m!767723))

(declare-fun m!767725 () Bool)

(assert (=> b!521132 m!767725))

(assert (=> d!186002 d!186076))

(declare-fun d!186078 () Bool)

(declare-fun c!100687 () Bool)

(assert (=> d!186078 (= c!100687 ((_ is Nil!4816) lt!217054))))

(declare-fun e!312376 () (InoxSet B!1177))

(assert (=> d!186078 (= (content!879 lt!217054) e!312376)))

(declare-fun b!521133 () Bool)

(assert (=> b!521133 (= e!312376 ((as const (Array B!1177 Bool)) false))))

(declare-fun b!521134 () Bool)

(assert (=> b!521134 (= e!312376 ((_ map or) (store ((as const (Array B!1177 Bool)) false) (h!10217 lt!217054) true) (content!879 (t!73416 lt!217054))))))

(assert (= (and d!186078 c!100687) b!521133))

(assert (= (and d!186078 (not c!100687)) b!521134))

(declare-fun m!767727 () Bool)

(assert (=> b!521134 m!767727))

(assert (=> b!521134 m!767699))

(assert (=> d!186002 d!186078))

(declare-fun d!186080 () Bool)

(declare-fun c!100688 () Bool)

(assert (=> d!186080 (= c!100688 ((_ is Nil!4816) acc!308))))

(declare-fun e!312377 () (InoxSet B!1177))

(assert (=> d!186080 (= (content!879 acc!308) e!312377)))

(declare-fun b!521135 () Bool)

(assert (=> b!521135 (= e!312377 ((as const (Array B!1177 Bool)) false))))

(declare-fun b!521136 () Bool)

(assert (=> b!521136 (= e!312377 ((_ map or) (store ((as const (Array B!1177 Bool)) false) (h!10217 acc!308) true) (content!879 (t!73416 acc!308))))))

(assert (= (and d!186080 c!100688) b!521135))

(assert (= (and d!186080 (not c!100688)) b!521136))

(declare-fun m!767729 () Bool)

(assert (=> b!521136 m!767729))

(assert (=> b!521136 m!767693))

(assert (=> d!185996 d!186080))

(declare-fun d!186082 () Bool)

(declare-fun lt!217093 () Bool)

(assert (=> d!186082 (= lt!217093 (select (content!879 (t!73416 acc!308)) (h!10217 acc!308)))))

(declare-fun e!312378 () Bool)

(assert (=> d!186082 (= lt!217093 e!312378)))

(declare-fun res!221367 () Bool)

(assert (=> d!186082 (=> (not res!221367) (not e!312378))))

(assert (=> d!186082 (= res!221367 ((_ is Cons!4816) (t!73416 acc!308)))))

(assert (=> d!186082 (= (contains!1164 (t!73416 acc!308) (h!10217 acc!308)) lt!217093)))

(declare-fun b!521137 () Bool)

(declare-fun e!312379 () Bool)

(assert (=> b!521137 (= e!312378 e!312379)))

(declare-fun res!221366 () Bool)

(assert (=> b!521137 (=> res!221366 e!312379)))

(assert (=> b!521137 (= res!221366 (= (h!10217 (t!73416 acc!308)) (h!10217 acc!308)))))

(declare-fun b!521138 () Bool)

(assert (=> b!521138 (= e!312379 (contains!1164 (t!73416 (t!73416 acc!308)) (h!10217 acc!308)))))

(assert (= (and d!186082 res!221367) b!521137))

(assert (= (and b!521137 (not res!221366)) b!521138))

(assert (=> d!186082 m!767693))

(declare-fun m!767731 () Bool)

(assert (=> d!186082 m!767731))

(declare-fun m!767733 () Bool)

(assert (=> b!521138 m!767733))

(assert (=> b!520974 d!186082))

(declare-fun d!186084 () Bool)

(declare-fun c!100689 () Bool)

(assert (=> d!186084 (= c!100689 ((_ is Nil!4816) lt!217075))))

(declare-fun e!312380 () (InoxSet B!1177))

(assert (=> d!186084 (= (content!879 lt!217075) e!312380)))

(declare-fun b!521139 () Bool)

(assert (=> b!521139 (= e!312380 ((as const (Array B!1177 Bool)) false))))

(declare-fun b!521140 () Bool)

(assert (=> b!521140 (= e!312380 ((_ map or) (store ((as const (Array B!1177 Bool)) false) (h!10217 lt!217075) true) (content!879 (t!73416 lt!217075))))))

(assert (= (and d!186084 c!100689) b!521139))

(assert (= (and d!186084 (not c!100689)) b!521140))

(declare-fun m!767735 () Bool)

(assert (=> b!521140 m!767735))

(declare-fun m!767737 () Bool)

(assert (=> b!521140 m!767737))

(assert (=> b!521040 d!186084))

(assert (=> b!521040 d!186000))

(assert (=> b!521040 d!186002))

(declare-fun b!521142 () Bool)

(declare-fun e!312382 () List!4826)

(assert (=> b!521142 (= e!312382 (Cons!4816 (h!10217 (t!73416 (t!73416 list!41))) (++!1361 (t!73416 (t!73416 (t!73416 list!41))) lt!217054)))))

(declare-fun lt!217094 () List!4826)

(declare-fun e!312381 () Bool)

(declare-fun b!521144 () Bool)

(assert (=> b!521144 (= e!312381 (or (not (= lt!217054 Nil!4816)) (= lt!217094 (t!73416 (t!73416 list!41)))))))

(declare-fun b!521141 () Bool)

(assert (=> b!521141 (= e!312382 lt!217054)))

(declare-fun b!521143 () Bool)

(declare-fun res!221369 () Bool)

(assert (=> b!521143 (=> (not res!221369) (not e!312381))))

(assert (=> b!521143 (= res!221369 (= (size!3930 lt!217094) (+ (size!3930 (t!73416 (t!73416 list!41))) (size!3930 lt!217054))))))

(declare-fun d!186086 () Bool)

(assert (=> d!186086 e!312381))

(declare-fun res!221368 () Bool)

(assert (=> d!186086 (=> (not res!221368) (not e!312381))))

(assert (=> d!186086 (= res!221368 (= (content!879 lt!217094) ((_ map or) (content!879 (t!73416 (t!73416 list!41))) (content!879 lt!217054))))))

(assert (=> d!186086 (= lt!217094 e!312382)))

(declare-fun c!100690 () Bool)

(assert (=> d!186086 (= c!100690 ((_ is Nil!4816) (t!73416 (t!73416 list!41))))))

(assert (=> d!186086 (= (++!1361 (t!73416 (t!73416 list!41)) lt!217054) lt!217094)))

(assert (= (and d!186086 c!100690) b!521141))

(assert (= (and d!186086 (not c!100690)) b!521142))

(assert (= (and d!186086 res!221368) b!521143))

(assert (= (and b!521143 res!221369) b!521144))

(declare-fun m!767739 () Bool)

(assert (=> b!521142 m!767739))

(declare-fun m!767741 () Bool)

(assert (=> b!521143 m!767741))

(declare-fun m!767743 () Bool)

(assert (=> b!521143 m!767743))

(assert (=> b!521143 m!767575))

(declare-fun m!767745 () Bool)

(assert (=> d!186086 m!767745))

(assert (=> d!186086 m!767725))

(assert (=> d!186086 m!767581))

(assert (=> b!521033 d!186086))

(declare-fun d!186088 () Bool)

(declare-fun lt!217095 () Bool)

(assert (=> d!186088 (= lt!217095 (select (content!879 (t!73416 lt!217053)) (h!10217 lt!217053)))))

(declare-fun e!312383 () Bool)

(assert (=> d!186088 (= lt!217095 e!312383)))

(declare-fun res!221371 () Bool)

(assert (=> d!186088 (=> (not res!221371) (not e!312383))))

(assert (=> d!186088 (= res!221371 ((_ is Cons!4816) (t!73416 lt!217053)))))

(assert (=> d!186088 (= (contains!1164 (t!73416 lt!217053) (h!10217 lt!217053)) lt!217095)))

(declare-fun b!521145 () Bool)

(declare-fun e!312384 () Bool)

(assert (=> b!521145 (= e!312383 e!312384)))

(declare-fun res!221370 () Bool)

(assert (=> b!521145 (=> res!221370 e!312384)))

(assert (=> b!521145 (= res!221370 (= (h!10217 (t!73416 lt!217053)) (h!10217 lt!217053)))))

(declare-fun b!521146 () Bool)

(assert (=> b!521146 (= e!312384 (contains!1164 (t!73416 (t!73416 lt!217053)) (h!10217 lt!217053)))))

(assert (= (and d!186088 res!221371) b!521145))

(assert (= (and b!521145 (not res!221370)) b!521146))

(assert (=> d!186088 m!767533))

(declare-fun m!767747 () Bool)

(assert (=> d!186088 m!767747))

(declare-fun m!767749 () Bool)

(assert (=> b!521146 m!767749))

(assert (=> b!521036 d!186088))

(declare-fun d!186090 () Bool)

(declare-fun c!100691 () Bool)

(assert (=> d!186090 (= c!100691 ((_ is Nil!4816) (t!73416 (++!1361 list!41 acc!308))))))

(declare-fun e!312385 () (InoxSet B!1177))

(assert (=> d!186090 (= (content!879 (t!73416 (++!1361 list!41 acc!308))) e!312385)))

(declare-fun b!521147 () Bool)

(assert (=> b!521147 (= e!312385 ((as const (Array B!1177 Bool)) false))))

(declare-fun b!521148 () Bool)

(assert (=> b!521148 (= e!312385 ((_ map or) (store ((as const (Array B!1177 Bool)) false) (h!10217 (t!73416 (++!1361 list!41 acc!308))) true) (content!879 (t!73416 (t!73416 (++!1361 list!41 acc!308))))))))

(assert (= (and d!186090 c!100691) b!521147))

(assert (= (and d!186090 (not c!100691)) b!521148))

(declare-fun m!767751 () Bool)

(assert (=> b!521148 m!767751))

(declare-fun m!767753 () Bool)

(assert (=> b!521148 m!767753))

(assert (=> b!521003 d!186090))

(declare-fun d!186092 () Bool)

(declare-fun lt!217098 () Int)

(assert (=> d!186092 (>= lt!217098 0)))

(declare-fun e!312388 () Int)

(assert (=> d!186092 (= lt!217098 e!312388)))

(declare-fun c!100694 () Bool)

(assert (=> d!186092 (= c!100694 ((_ is Nil!4816) lt!217072))))

(assert (=> d!186092 (= (size!3930 lt!217072) lt!217098)))

(declare-fun b!521153 () Bool)

(assert (=> b!521153 (= e!312388 0)))

(declare-fun b!521154 () Bool)

(assert (=> b!521154 (= e!312388 (+ 1 (size!3930 (t!73416 lt!217072))))))

(assert (= (and d!186092 c!100694) b!521153))

(assert (= (and d!186092 (not c!100694)) b!521154))

(declare-fun m!767755 () Bool)

(assert (=> b!521154 m!767755))

(assert (=> b!521034 d!186092))

(declare-fun d!186094 () Bool)

(declare-fun lt!217099 () Int)

(assert (=> d!186094 (>= lt!217099 0)))

(declare-fun e!312389 () Int)

(assert (=> d!186094 (= lt!217099 e!312389)))

(declare-fun c!100695 () Bool)

(assert (=> d!186094 (= c!100695 ((_ is Nil!4816) (t!73416 list!41)))))

(assert (=> d!186094 (= (size!3930 (t!73416 list!41)) lt!217099)))

(declare-fun b!521155 () Bool)

(assert (=> b!521155 (= e!312389 0)))

(declare-fun b!521156 () Bool)

(assert (=> b!521156 (= e!312389 (+ 1 (size!3930 (t!73416 (t!73416 list!41)))))))

(assert (= (and d!186094 c!100695) b!521155))

(assert (= (and d!186094 (not c!100695)) b!521156))

(assert (=> b!521156 m!767743))

(assert (=> b!521034 d!186094))

(declare-fun d!186096 () Bool)

(declare-fun lt!217100 () Int)

(assert (=> d!186096 (>= lt!217100 0)))

(declare-fun e!312390 () Int)

(assert (=> d!186096 (= lt!217100 e!312390)))

(declare-fun c!100696 () Bool)

(assert (=> d!186096 (= c!100696 ((_ is Nil!4816) lt!217054))))

(assert (=> d!186096 (= (size!3930 lt!217054) lt!217100)))

(declare-fun b!521157 () Bool)

(assert (=> b!521157 (= e!312390 0)))

(declare-fun b!521158 () Bool)

(assert (=> b!521158 (= e!312390 (+ 1 (size!3930 (t!73416 lt!217054))))))

(assert (= (and d!186096 c!100696) b!521157))

(assert (= (and d!186096 (not c!100696)) b!521158))

(declare-fun m!767757 () Bool)

(assert (=> b!521158 m!767757))

(assert (=> b!521034 d!186096))

(declare-fun d!186098 () Bool)

(declare-fun res!221372 () Bool)

(declare-fun e!312391 () Bool)

(assert (=> d!186098 (=> res!221372 e!312391)))

(assert (=> d!186098 (= res!221372 ((_ is Nil!4816) (t!73416 lt!217054)))))

(assert (=> d!186098 (= (noDuplicate!167 (t!73416 lt!217054)) e!312391)))

(declare-fun b!521159 () Bool)

(declare-fun e!312392 () Bool)

(assert (=> b!521159 (= e!312391 e!312392)))

(declare-fun res!221373 () Bool)

(assert (=> b!521159 (=> (not res!221373) (not e!312392))))

(assert (=> b!521159 (= res!221373 (not (contains!1164 (t!73416 (t!73416 lt!217054)) (h!10217 (t!73416 lt!217054)))))))

(declare-fun b!521160 () Bool)

(assert (=> b!521160 (= e!312392 (noDuplicate!167 (t!73416 (t!73416 lt!217054))))))

(assert (= (and d!186098 (not res!221372)) b!521159))

(assert (= (and b!521159 res!221373) b!521160))

(declare-fun m!767759 () Bool)

(assert (=> b!521159 m!767759))

(declare-fun m!767761 () Bool)

(assert (=> b!521160 m!767761))

(assert (=> b!521029 d!186098))

(declare-fun d!186100 () Bool)

(declare-fun c!100697 () Bool)

(assert (=> d!186100 (= c!100697 ((_ is Nil!4816) (t!73416 (++!1361 (t!73416 list!41) lt!217054))))))

(declare-fun e!312393 () (InoxSet B!1177))

(assert (=> d!186100 (= (content!879 (t!73416 (++!1361 (t!73416 list!41) lt!217054))) e!312393)))

(declare-fun b!521161 () Bool)

(assert (=> b!521161 (= e!312393 ((as const (Array B!1177 Bool)) false))))

(declare-fun b!521162 () Bool)

(assert (=> b!521162 (= e!312393 ((_ map or) (store ((as const (Array B!1177 Bool)) false) (h!10217 (t!73416 (++!1361 (t!73416 list!41) lt!217054))) true) (content!879 (t!73416 (t!73416 (++!1361 (t!73416 list!41) lt!217054))))))))

(assert (= (and d!186100 c!100697) b!521161))

(assert (= (and d!186100 (not c!100697)) b!521162))

(declare-fun m!767763 () Bool)

(assert (=> b!521162 m!767763))

(declare-fun m!767765 () Bool)

(assert (=> b!521162 m!767765))

(assert (=> b!521031 d!186100))

(declare-fun d!186102 () Bool)

(declare-fun lt!217101 () Int)

(assert (=> d!186102 (>= lt!217101 0)))

(declare-fun e!312394 () Int)

(assert (=> d!186102 (= lt!217101 e!312394)))

(declare-fun c!100698 () Bool)

(assert (=> d!186102 (= c!100698 ((_ is Nil!4816) lt!217068))))

(assert (=> d!186102 (= (size!3930 lt!217068) lt!217101)))

(declare-fun b!521163 () Bool)

(assert (=> b!521163 (= e!312394 0)))

(declare-fun b!521164 () Bool)

(assert (=> b!521164 (= e!312394 (+ 1 (size!3930 (t!73416 lt!217068))))))

(assert (= (and d!186102 c!100698) b!521163))

(assert (= (and d!186102 (not c!100698)) b!521164))

(declare-fun m!767767 () Bool)

(assert (=> b!521164 m!767767))

(assert (=> b!521020 d!186102))

(declare-fun d!186104 () Bool)

(declare-fun lt!217102 () Int)

(assert (=> d!186104 (>= lt!217102 0)))

(declare-fun e!312395 () Int)

(assert (=> d!186104 (= lt!217102 e!312395)))

(declare-fun c!100699 () Bool)

(assert (=> d!186104 (= c!100699 ((_ is Nil!4816) list!41))))

(assert (=> d!186104 (= (size!3930 list!41) lt!217102)))

(declare-fun b!521165 () Bool)

(assert (=> b!521165 (= e!312395 0)))

(declare-fun b!521166 () Bool)

(assert (=> b!521166 (= e!312395 (+ 1 (size!3930 (t!73416 list!41))))))

(assert (= (and d!186104 c!100699) b!521165))

(assert (= (and d!186104 (not c!100699)) b!521166))

(assert (=> b!521166 m!767573))

(assert (=> b!521020 d!186104))

(declare-fun d!186106 () Bool)

(declare-fun lt!217103 () Int)

(assert (=> d!186106 (>= lt!217103 0)))

(declare-fun e!312396 () Int)

(assert (=> d!186106 (= lt!217103 e!312396)))

(declare-fun c!100700 () Bool)

(assert (=> d!186106 (= c!100700 ((_ is Nil!4816) acc!308))))

(assert (=> d!186106 (= (size!3930 acc!308) lt!217103)))

(declare-fun b!521167 () Bool)

(assert (=> b!521167 (= e!312396 0)))

(declare-fun b!521168 () Bool)

(assert (=> b!521168 (= e!312396 (+ 1 (size!3930 (t!73416 acc!308))))))

(assert (= (and d!186106 c!100700) b!521167))

(assert (= (and d!186106 (not c!100700)) b!521168))

(declare-fun m!767769 () Bool)

(assert (=> b!521168 m!767769))

(assert (=> b!521020 d!186106))

(declare-fun d!186108 () Bool)

(declare-fun res!221374 () Bool)

(declare-fun e!312397 () Bool)

(assert (=> d!186108 (=> res!221374 e!312397)))

(assert (=> d!186108 (= res!221374 ((_ is Nil!4816) lt!217075))))

(assert (=> d!186108 (= (noDuplicate!167 lt!217075) e!312397)))

(declare-fun b!521169 () Bool)

(declare-fun e!312398 () Bool)

(assert (=> b!521169 (= e!312397 e!312398)))

(declare-fun res!221375 () Bool)

(assert (=> b!521169 (=> (not res!221375) (not e!312398))))

(assert (=> b!521169 (= res!221375 (not (contains!1164 (t!73416 lt!217075) (h!10217 lt!217075))))))

(declare-fun b!521170 () Bool)

(assert (=> b!521170 (= e!312398 (noDuplicate!167 (t!73416 lt!217075)))))

(assert (= (and d!186108 (not res!221374)) b!521169))

(assert (= (and b!521169 res!221375) b!521170))

(declare-fun m!767771 () Bool)

(assert (=> b!521169 m!767771))

(declare-fun m!767773 () Bool)

(assert (=> b!521170 m!767773))

(assert (=> d!186006 d!186108))

(declare-fun d!186110 () Bool)

(declare-fun e!312403 () Bool)

(assert (=> d!186110 e!312403))

(declare-fun res!221380 () Bool)

(assert (=> d!186110 (=> (not res!221380) (not e!312403))))

(declare-fun res!221381 () List!4826)

(assert (=> d!186110 (= res!221380 (noDuplicate!167 res!221381))))

(declare-fun e!312404 () Bool)

(assert (=> d!186110 e!312404))

(assert (=> d!186110 (= (choose!3727 (t!73416 list!41) lt!217054) res!221381)))

(declare-fun b!521175 () Bool)

(declare-fun tp!162055 () Bool)

(assert (=> b!521175 (= e!312404 (and tp_is_empty!2773 tp!162055))))

(declare-fun b!521176 () Bool)

(assert (=> b!521176 (= e!312403 (= (content!879 res!221381) (content!879 (++!1361 (t!73416 list!41) lt!217054))))))

(assert (= (and d!186110 ((_ is Cons!4816) res!221381)) b!521175))

(assert (= (and d!186110 res!221380) b!521176))

(declare-fun m!767775 () Bool)

(assert (=> d!186110 m!767775))

(declare-fun m!767777 () Bool)

(assert (=> b!521176 m!767777))

(assert (=> b!521176 m!767465))

(assert (=> b!521176 m!767465))

(assert (=> b!521176 m!767467))

(assert (=> d!186006 d!186110))

(assert (=> d!186006 d!185998))

(declare-fun d!186112 () Bool)

(declare-fun c!100701 () Bool)

(assert (=> d!186112 (= c!100701 ((_ is Nil!4816) lt!217068))))

(declare-fun e!312405 () (InoxSet B!1177))

(assert (=> d!186112 (= (content!879 lt!217068) e!312405)))

(declare-fun b!521177 () Bool)

(assert (=> b!521177 (= e!312405 ((as const (Array B!1177 Bool)) false))))

(declare-fun b!521178 () Bool)

(assert (=> b!521178 (= e!312405 ((_ map or) (store ((as const (Array B!1177 Bool)) false) (h!10217 lt!217068) true) (content!879 (t!73416 lt!217068))))))

(assert (= (and d!186112 c!100701) b!521177))

(assert (= (and d!186112 (not c!100701)) b!521178))

(declare-fun m!767779 () Bool)

(assert (=> b!521178 m!767779))

(declare-fun m!767781 () Bool)

(assert (=> b!521178 m!767781))

(assert (=> d!185994 d!186112))

(declare-fun d!186114 () Bool)

(declare-fun c!100702 () Bool)

(assert (=> d!186114 (= c!100702 ((_ is Nil!4816) list!41))))

(declare-fun e!312406 () (InoxSet B!1177))

(assert (=> d!186114 (= (content!879 list!41) e!312406)))

(declare-fun b!521179 () Bool)

(assert (=> b!521179 (= e!312406 ((as const (Array B!1177 Bool)) false))))

(declare-fun b!521180 () Bool)

(assert (=> b!521180 (= e!312406 ((_ map or) (store ((as const (Array B!1177 Bool)) false) (h!10217 list!41) true) (content!879 (t!73416 list!41))))))

(assert (= (and d!186114 c!100702) b!521179))

(assert (= (and d!186114 (not c!100702)) b!521180))

(declare-fun m!767783 () Bool)

(assert (=> b!521180 m!767783))

(assert (=> b!521180 m!767579))

(assert (=> d!185994 d!186114))

(assert (=> d!185994 d!186080))

(declare-fun b!521181 () Bool)

(declare-fun e!312407 () Bool)

(declare-fun tp!162056 () Bool)

(assert (=> b!521181 (= e!312407 (and tp_is_empty!2773 tp!162056))))

(assert (=> b!521046 (= tp!162047 e!312407)))

(assert (= (and b!521046 ((_ is Cons!4816) (t!73416 (t!73416 list!41)))) b!521181))

(declare-fun b!521182 () Bool)

(declare-fun e!312408 () Bool)

(declare-fun tp!162057 () Bool)

(assert (=> b!521182 (= e!312408 (and tp_is_empty!2773 tp!162057))))

(assert (=> b!521045 (= tp!162046 e!312408)))

(assert (= (and b!521045 ((_ is Cons!4816) (t!73416 (t!73416 acc!308)))) b!521182))

(check-sat (not b!521126) (not b!521159) (not b!521140) (not b!521115) (not b!521168) (not b!521176) (not d!186068) (not d!186110) (not b!521123) (not b!521178) (not b!521138) (not d!186088) (not b!521130) (not b!521154) (not d!186066) (not b!521142) (not b!521146) (not b!521166) (not b!521136) (not b!521181) (not b!521122) (not b!521160) (not d!186086) (not b!521180) (not b!521116) (not b!521170) (not b!521162) (not b!521127) (not d!186082) (not b!521175) (not b!521156) (not b!521148) (not b!521164) (not b!521134) (not b!521143) (not d!186064) (not b!521118) (not b!521182) tp_is_empty!2773 (not b!521132) (not b!521128) (not b!521158) (not b!521120) (not b!521169))
(check-sat)
