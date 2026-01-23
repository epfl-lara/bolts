; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755272 () Bool)

(assert start!755272)

(declare-fun b!8023533 () Bool)

(declare-fun res!3172956 () Bool)

(declare-fun e!4726572 () Bool)

(assert (=> b!8023533 (=> (not res!3172956) (not e!4726572))))

(declare-datatypes ((B!4245 0))(
  ( (B!4246 (val!32512 Int)) )
))
(declare-datatypes ((List!75024 0))(
  ( (Nil!74900) (Cons!74900 (h!81348 B!4245) (t!390767 List!75024)) )
))
(declare-fun p1!179 () List!75024)

(declare-fun s1!490 () List!75024)

(declare-fun l!3411 () List!75024)

(declare-fun ++!18568 (List!75024 List!75024) List!75024)

(assert (=> b!8023533 (= res!3172956 (= (++!18568 p1!179 s1!490) l!3411))))

(declare-fun p2!179 () List!75024)

(declare-fun s2!455 () List!75024)

(declare-fun b!8023534 () Bool)

(get-info :version)

(assert (=> b!8023534 (= e!4726572 (and (= p1!179 p2!179) (not ((_ is Cons!74900) p1!179)) (not (= s1!490 s2!455))))))

(declare-fun b!8023535 () Bool)

(declare-fun e!4726577 () Bool)

(declare-fun tp_is_empty!54133 () Bool)

(declare-fun tp!2401259 () Bool)

(assert (=> b!8023535 (= e!4726577 (and tp_is_empty!54133 tp!2401259))))

(declare-fun b!8023536 () Bool)

(declare-fun e!4726576 () Bool)

(declare-fun tp!2401261 () Bool)

(assert (=> b!8023536 (= e!4726576 (and tp_is_empty!54133 tp!2401261))))

(declare-fun b!8023537 () Bool)

(declare-fun res!3172953 () Bool)

(assert (=> b!8023537 (=> (not res!3172953) (not e!4726572))))

(declare-fun isPrefix!6831 (List!75024 List!75024) Bool)

(assert (=> b!8023537 (= res!3172953 (isPrefix!6831 p2!179 l!3411))))

(declare-fun b!8023538 () Bool)

(declare-fun res!3172955 () Bool)

(assert (=> b!8023538 (=> (not res!3172955) (not e!4726572))))

(assert (=> b!8023538 (= res!3172955 (= (++!18568 p2!179 s2!455) l!3411))))

(declare-fun b!8023539 () Bool)

(declare-fun e!4726573 () Bool)

(declare-fun tp!2401262 () Bool)

(assert (=> b!8023539 (= e!4726573 (and tp_is_empty!54133 tp!2401262))))

(declare-fun b!8023540 () Bool)

(declare-fun e!4726575 () Bool)

(declare-fun tp!2401263 () Bool)

(assert (=> b!8023540 (= e!4726575 (and tp_is_empty!54133 tp!2401263))))

(declare-fun res!3172954 () Bool)

(assert (=> start!755272 (=> (not res!3172954) (not e!4726572))))

(assert (=> start!755272 (= res!3172954 (isPrefix!6831 p1!179 l!3411))))

(assert (=> start!755272 e!4726572))

(assert (=> start!755272 e!4726577))

(declare-fun e!4726574 () Bool)

(assert (=> start!755272 e!4726574))

(assert (=> start!755272 e!4726573))

(assert (=> start!755272 e!4726576))

(assert (=> start!755272 e!4726575))

(declare-fun b!8023541 () Bool)

(declare-fun tp!2401260 () Bool)

(assert (=> b!8023541 (= e!4726574 (and tp_is_empty!54133 tp!2401260))))

(assert (= (and start!755272 res!3172954) b!8023537))

(assert (= (and b!8023537 res!3172953) b!8023533))

(assert (= (and b!8023533 res!3172956) b!8023538))

(assert (= (and b!8023538 res!3172955) b!8023534))

(assert (= (and start!755272 ((_ is Cons!74900) p2!179)) b!8023535))

(assert (= (and start!755272 ((_ is Cons!74900) s2!455)) b!8023541))

(assert (= (and start!755272 ((_ is Cons!74900) l!3411)) b!8023539))

(assert (= (and start!755272 ((_ is Cons!74900) p1!179)) b!8023536))

(assert (= (and start!755272 ((_ is Cons!74900) s1!490)) b!8023540))

(declare-fun m!8386186 () Bool)

(assert (=> b!8023533 m!8386186))

(declare-fun m!8386188 () Bool)

(assert (=> b!8023537 m!8386188))

(declare-fun m!8386190 () Bool)

(assert (=> b!8023538 m!8386190))

(declare-fun m!8386192 () Bool)

(assert (=> start!755272 m!8386192))

(check-sat (not b!8023536) (not b!8023539) tp_is_empty!54133 (not b!8023541) (not start!755272) (not b!8023535) (not b!8023538) (not b!8023533) (not b!8023537) (not b!8023540))
(check-sat)
(get-model)

(declare-fun b!8023558 () Bool)

(declare-fun e!4726587 () List!75024)

(assert (=> b!8023558 (= e!4726587 s2!455)))

(declare-fun d!2392488 () Bool)

(declare-fun e!4726586 () Bool)

(assert (=> d!2392488 e!4726586))

(declare-fun res!3172966 () Bool)

(assert (=> d!2392488 (=> (not res!3172966) (not e!4726586))))

(declare-fun lt!2720429 () List!75024)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15955 (List!75024) (InoxSet B!4245))

(assert (=> d!2392488 (= res!3172966 (= (content!15955 lt!2720429) ((_ map or) (content!15955 p2!179) (content!15955 s2!455))))))

(assert (=> d!2392488 (= lt!2720429 e!4726587)))

(declare-fun c!1472306 () Bool)

(assert (=> d!2392488 (= c!1472306 ((_ is Nil!74900) p2!179))))

(assert (=> d!2392488 (= (++!18568 p2!179 s2!455) lt!2720429)))

(declare-fun b!8023560 () Bool)

(declare-fun res!3172965 () Bool)

(assert (=> b!8023560 (=> (not res!3172965) (not e!4726586))))

(declare-fun size!43678 (List!75024) Int)

(assert (=> b!8023560 (= res!3172965 (= (size!43678 lt!2720429) (+ (size!43678 p2!179) (size!43678 s2!455))))))

(declare-fun b!8023559 () Bool)

(assert (=> b!8023559 (= e!4726587 (Cons!74900 (h!81348 p2!179) (++!18568 (t!390767 p2!179) s2!455)))))

(declare-fun b!8023561 () Bool)

(assert (=> b!8023561 (= e!4726586 (or (not (= s2!455 Nil!74900)) (= lt!2720429 p2!179)))))

(assert (= (and d!2392488 c!1472306) b!8023558))

(assert (= (and d!2392488 (not c!1472306)) b!8023559))

(assert (= (and d!2392488 res!3172966) b!8023560))

(assert (= (and b!8023560 res!3172965) b!8023561))

(declare-fun m!8386194 () Bool)

(assert (=> d!2392488 m!8386194))

(declare-fun m!8386196 () Bool)

(assert (=> d!2392488 m!8386196))

(declare-fun m!8386198 () Bool)

(assert (=> d!2392488 m!8386198))

(declare-fun m!8386200 () Bool)

(assert (=> b!8023560 m!8386200))

(declare-fun m!8386202 () Bool)

(assert (=> b!8023560 m!8386202))

(declare-fun m!8386204 () Bool)

(assert (=> b!8023560 m!8386204))

(declare-fun m!8386206 () Bool)

(assert (=> b!8023559 m!8386206))

(assert (=> b!8023538 d!2392488))

(declare-fun d!2392492 () Bool)

(declare-fun e!4726604 () Bool)

(assert (=> d!2392492 e!4726604))

(declare-fun res!3172989 () Bool)

(assert (=> d!2392492 (=> res!3172989 e!4726604)))

(declare-fun lt!2720436 () Bool)

(assert (=> d!2392492 (= res!3172989 (not lt!2720436))))

(declare-fun e!4726606 () Bool)

(assert (=> d!2392492 (= lt!2720436 e!4726606)))

(declare-fun res!3172988 () Bool)

(assert (=> d!2392492 (=> res!3172988 e!4726606)))

(assert (=> d!2392492 (= res!3172988 ((_ is Nil!74900) p2!179))))

(assert (=> d!2392492 (= (isPrefix!6831 p2!179 l!3411) lt!2720436)))

(declare-fun b!8023586 () Bool)

(declare-fun e!4726605 () Bool)

(assert (=> b!8023586 (= e!4726606 e!4726605)))

(declare-fun res!3172987 () Bool)

(assert (=> b!8023586 (=> (not res!3172987) (not e!4726605))))

(assert (=> b!8023586 (= res!3172987 (not ((_ is Nil!74900) l!3411)))))

(declare-fun b!8023589 () Bool)

(assert (=> b!8023589 (= e!4726604 (>= (size!43678 l!3411) (size!43678 p2!179)))))

(declare-fun b!8023587 () Bool)

(declare-fun res!3172990 () Bool)

(assert (=> b!8023587 (=> (not res!3172990) (not e!4726605))))

(declare-fun head!16429 (List!75024) B!4245)

(assert (=> b!8023587 (= res!3172990 (= (head!16429 p2!179) (head!16429 l!3411)))))

(declare-fun b!8023588 () Bool)

(declare-fun tail!15968 (List!75024) List!75024)

(assert (=> b!8023588 (= e!4726605 (isPrefix!6831 (tail!15968 p2!179) (tail!15968 l!3411)))))

(assert (= (and d!2392492 (not res!3172988)) b!8023586))

(assert (= (and b!8023586 res!3172987) b!8023587))

(assert (= (and b!8023587 res!3172990) b!8023588))

(assert (= (and d!2392492 (not res!3172989)) b!8023589))

(declare-fun m!8386236 () Bool)

(assert (=> b!8023589 m!8386236))

(assert (=> b!8023589 m!8386202))

(declare-fun m!8386238 () Bool)

(assert (=> b!8023587 m!8386238))

(declare-fun m!8386240 () Bool)

(assert (=> b!8023587 m!8386240))

(declare-fun m!8386242 () Bool)

(assert (=> b!8023588 m!8386242))

(declare-fun m!8386244 () Bool)

(assert (=> b!8023588 m!8386244))

(assert (=> b!8023588 m!8386242))

(assert (=> b!8023588 m!8386244))

(declare-fun m!8386246 () Bool)

(assert (=> b!8023588 m!8386246))

(assert (=> b!8023537 d!2392492))

(declare-fun b!8023590 () Bool)

(declare-fun e!4726608 () List!75024)

(assert (=> b!8023590 (= e!4726608 s1!490)))

(declare-fun d!2392498 () Bool)

(declare-fun e!4726607 () Bool)

(assert (=> d!2392498 e!4726607))

(declare-fun res!3172992 () Bool)

(assert (=> d!2392498 (=> (not res!3172992) (not e!4726607))))

(declare-fun lt!2720437 () List!75024)

(assert (=> d!2392498 (= res!3172992 (= (content!15955 lt!2720437) ((_ map or) (content!15955 p1!179) (content!15955 s1!490))))))

(assert (=> d!2392498 (= lt!2720437 e!4726608)))

(declare-fun c!1472309 () Bool)

(assert (=> d!2392498 (= c!1472309 ((_ is Nil!74900) p1!179))))

(assert (=> d!2392498 (= (++!18568 p1!179 s1!490) lt!2720437)))

(declare-fun b!8023592 () Bool)

(declare-fun res!3172991 () Bool)

(assert (=> b!8023592 (=> (not res!3172991) (not e!4726607))))

(assert (=> b!8023592 (= res!3172991 (= (size!43678 lt!2720437) (+ (size!43678 p1!179) (size!43678 s1!490))))))

(declare-fun b!8023591 () Bool)

(assert (=> b!8023591 (= e!4726608 (Cons!74900 (h!81348 p1!179) (++!18568 (t!390767 p1!179) s1!490)))))

(declare-fun b!8023593 () Bool)

(assert (=> b!8023593 (= e!4726607 (or (not (= s1!490 Nil!74900)) (= lt!2720437 p1!179)))))

(assert (= (and d!2392498 c!1472309) b!8023590))

(assert (= (and d!2392498 (not c!1472309)) b!8023591))

(assert (= (and d!2392498 res!3172992) b!8023592))

(assert (= (and b!8023592 res!3172991) b!8023593))

(declare-fun m!8386248 () Bool)

(assert (=> d!2392498 m!8386248))

(declare-fun m!8386250 () Bool)

(assert (=> d!2392498 m!8386250))

(declare-fun m!8386252 () Bool)

(assert (=> d!2392498 m!8386252))

(declare-fun m!8386254 () Bool)

(assert (=> b!8023592 m!8386254))

(declare-fun m!8386256 () Bool)

(assert (=> b!8023592 m!8386256))

(declare-fun m!8386258 () Bool)

(assert (=> b!8023592 m!8386258))

(declare-fun m!8386260 () Bool)

(assert (=> b!8023591 m!8386260))

(assert (=> b!8023533 d!2392498))

(declare-fun d!2392500 () Bool)

(declare-fun e!4726612 () Bool)

(assert (=> d!2392500 e!4726612))

(declare-fun res!3172999 () Bool)

(assert (=> d!2392500 (=> res!3172999 e!4726612)))

(declare-fun lt!2720439 () Bool)

(assert (=> d!2392500 (= res!3172999 (not lt!2720439))))

(declare-fun e!4726614 () Bool)

(assert (=> d!2392500 (= lt!2720439 e!4726614)))

(declare-fun res!3172998 () Bool)

(assert (=> d!2392500 (=> res!3172998 e!4726614)))

(assert (=> d!2392500 (= res!3172998 ((_ is Nil!74900) p1!179))))

(assert (=> d!2392500 (= (isPrefix!6831 p1!179 l!3411) lt!2720439)))

(declare-fun b!8023598 () Bool)

(declare-fun e!4726613 () Bool)

(assert (=> b!8023598 (= e!4726614 e!4726613)))

(declare-fun res!3172997 () Bool)

(assert (=> b!8023598 (=> (not res!3172997) (not e!4726613))))

(assert (=> b!8023598 (= res!3172997 (not ((_ is Nil!74900) l!3411)))))

(declare-fun b!8023601 () Bool)

(assert (=> b!8023601 (= e!4726612 (>= (size!43678 l!3411) (size!43678 p1!179)))))

(declare-fun b!8023599 () Bool)

(declare-fun res!3173000 () Bool)

(assert (=> b!8023599 (=> (not res!3173000) (not e!4726613))))

(assert (=> b!8023599 (= res!3173000 (= (head!16429 p1!179) (head!16429 l!3411)))))

(declare-fun b!8023600 () Bool)

(assert (=> b!8023600 (= e!4726613 (isPrefix!6831 (tail!15968 p1!179) (tail!15968 l!3411)))))

(assert (= (and d!2392500 (not res!3172998)) b!8023598))

(assert (= (and b!8023598 res!3172997) b!8023599))

(assert (= (and b!8023599 res!3173000) b!8023600))

(assert (= (and d!2392500 (not res!3172999)) b!8023601))

(assert (=> b!8023601 m!8386236))

(assert (=> b!8023601 m!8386256))

(declare-fun m!8386274 () Bool)

(assert (=> b!8023599 m!8386274))

(assert (=> b!8023599 m!8386240))

(declare-fun m!8386276 () Bool)

(assert (=> b!8023600 m!8386276))

(assert (=> b!8023600 m!8386244))

(assert (=> b!8023600 m!8386276))

(assert (=> b!8023600 m!8386244))

(declare-fun m!8386278 () Bool)

(assert (=> b!8023600 m!8386278))

(assert (=> start!755272 d!2392500))

(declare-fun b!8023614 () Bool)

(declare-fun e!4726622 () Bool)

(declare-fun tp!2401268 () Bool)

(assert (=> b!8023614 (= e!4726622 (and tp_is_empty!54133 tp!2401268))))

(assert (=> b!8023539 (= tp!2401262 e!4726622)))

(assert (= (and b!8023539 ((_ is Cons!74900) (t!390767 l!3411))) b!8023614))

(declare-fun b!8023615 () Bool)

(declare-fun e!4726623 () Bool)

(declare-fun tp!2401269 () Bool)

(assert (=> b!8023615 (= e!4726623 (and tp_is_empty!54133 tp!2401269))))

(assert (=> b!8023535 (= tp!2401259 e!4726623)))

(assert (= (and b!8023535 ((_ is Cons!74900) (t!390767 p2!179))) b!8023615))

(declare-fun b!8023616 () Bool)

(declare-fun e!4726624 () Bool)

(declare-fun tp!2401270 () Bool)

(assert (=> b!8023616 (= e!4726624 (and tp_is_empty!54133 tp!2401270))))

(assert (=> b!8023540 (= tp!2401263 e!4726624)))

(assert (= (and b!8023540 ((_ is Cons!74900) (t!390767 s1!490))) b!8023616))

(declare-fun b!8023617 () Bool)

(declare-fun e!4726625 () Bool)

(declare-fun tp!2401271 () Bool)

(assert (=> b!8023617 (= e!4726625 (and tp_is_empty!54133 tp!2401271))))

(assert (=> b!8023536 (= tp!2401261 e!4726625)))

(assert (= (and b!8023536 ((_ is Cons!74900) (t!390767 p1!179))) b!8023617))

(declare-fun b!8023619 () Bool)

(declare-fun e!4726627 () Bool)

(declare-fun tp!2401273 () Bool)

(assert (=> b!8023619 (= e!4726627 (and tp_is_empty!54133 tp!2401273))))

(assert (=> b!8023541 (= tp!2401260 e!4726627)))

(assert (= (and b!8023541 ((_ is Cons!74900) (t!390767 s2!455))) b!8023619))

(check-sat (not d!2392488) (not b!8023587) (not b!8023588) (not b!8023615) (not b!8023592) (not b!8023616) tp_is_empty!54133 (not b!8023619) (not b!8023599) (not b!8023589) (not b!8023617) (not b!8023601) (not b!8023559) (not b!8023600) (not b!8023560) (not b!8023591) (not b!8023614) (not d!2392498))
(check-sat)
