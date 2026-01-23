; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189080 () Bool)

(assert start!189080)

(declare-fun b!1888483 () Bool)

(declare-fun e!1205180 () Bool)

(declare-fun tp_is_empty!9017 () Bool)

(declare-fun tp!538381 () Bool)

(assert (=> b!1888483 (= e!1205180 (and tp_is_empty!9017 tp!538381))))

(declare-fun b!1888484 () Bool)

(declare-fun e!1205177 () Bool)

(declare-fun tp!538382 () Bool)

(assert (=> b!1888484 (= e!1205177 (and tp_is_empty!9017 tp!538382))))

(declare-fun b!1888485 () Bool)

(declare-fun res!843336 () Bool)

(declare-fun e!1205179 () Bool)

(assert (=> b!1888485 (=> (not res!843336) (not e!1205179))))

(declare-datatypes ((B!1761 0))(
  ( (B!1762 (val!6166 Int)) )
))
(declare-datatypes ((List!21159 0))(
  ( (Nil!21077) (Cons!21077 (h!26478 B!1761) (t!175158 List!21159)) )
))
(declare-fun l3!256 () List!21159)

(declare-fun l2!1298 () List!21159)

(declare-fun l1!1329 () List!21159)

(get-info :version)

(assert (=> b!1888485 (= res!843336 (and (or (not ((_ is Cons!21077) l1!1329)) (not ((_ is Cons!21077) l2!1298)) (not ((_ is Cons!21077) l3!256)) (= (h!26478 l2!1298) (h!26478 l3!256))) ((_ is Cons!21077) l1!1329) ((_ is Cons!21077) l2!1298) ((_ is Cons!21077) l3!256) (= (h!26478 l2!1298) (h!26478 l3!256))))))

(declare-fun b!1888486 () Bool)

(declare-fun res!843337 () Bool)

(assert (=> b!1888486 (=> (not res!843337) (not e!1205179))))

(declare-fun subseq!425 (List!21159 List!21159) Bool)

(assert (=> b!1888486 (= res!843337 (subseq!425 l2!1298 (t!175158 l3!256)))))

(declare-fun res!843335 () Bool)

(assert (=> start!189080 (=> (not res!843335) (not e!1205179))))

(assert (=> start!189080 (= res!843335 (subseq!425 l1!1329 l2!1298))))

(assert (=> start!189080 e!1205179))

(assert (=> start!189080 e!1205177))

(assert (=> start!189080 e!1205180))

(declare-fun e!1205178 () Bool)

(assert (=> start!189080 e!1205178))

(declare-fun b!1888487 () Bool)

(declare-fun res!843332 () Bool)

(assert (=> b!1888487 (=> (not res!843332) (not e!1205179))))

(assert (=> b!1888487 (= res!843332 (= (h!26478 l1!1329) (h!26478 l2!1298)))))

(declare-fun b!1888488 () Bool)

(declare-fun res!843338 () Bool)

(assert (=> b!1888488 (=> (not res!843338) (not e!1205179))))

(assert (=> b!1888488 (= res!843338 (not (subseq!425 (t!175158 l2!1298) (t!175158 l3!256))))))

(declare-fun b!1888489 () Bool)

(declare-fun res!843334 () Bool)

(assert (=> b!1888489 (=> (not res!843334) (not e!1205179))))

(assert (=> b!1888489 (= res!843334 (subseq!425 l2!1298 l3!256))))

(declare-fun b!1888490 () Bool)

(declare-fun res!843333 () Bool)

(assert (=> b!1888490 (=> (not res!843333) (not e!1205179))))

(assert (=> b!1888490 (= res!843333 (not (subseq!425 (t!175158 l1!1329) l2!1298)))))

(declare-fun b!1888491 () Bool)

(assert (=> b!1888491 (= e!1205179 (not (subseq!425 l1!1329 l3!256)))))

(assert (=> b!1888491 (subseq!425 l1!1329 (t!175158 l3!256))))

(declare-datatypes ((Unit!35498 0))(
  ( (Unit!35499) )
))
(declare-fun lt!723810 () Unit!35498)

(declare-fun lemmaSubSeqTransitive!12 (List!21159 List!21159 List!21159) Unit!35498)

(assert (=> b!1888491 (= lt!723810 (lemmaSubSeqTransitive!12 l1!1329 l2!1298 (t!175158 l3!256)))))

(declare-fun b!1888492 () Bool)

(declare-fun tp!538380 () Bool)

(assert (=> b!1888492 (= e!1205178 (and tp_is_empty!9017 tp!538380))))

(assert (= (and start!189080 res!843335) b!1888489))

(assert (= (and b!1888489 res!843334) b!1888485))

(assert (= (and b!1888485 res!843336) b!1888488))

(assert (= (and b!1888488 res!843338) b!1888487))

(assert (= (and b!1888487 res!843332) b!1888490))

(assert (= (and b!1888490 res!843333) b!1888486))

(assert (= (and b!1888486 res!843337) b!1888491))

(assert (= (and start!189080 ((_ is Cons!21077) l1!1329)) b!1888484))

(assert (= (and start!189080 ((_ is Cons!21077) l2!1298)) b!1888483))

(assert (= (and start!189080 ((_ is Cons!21077) l3!256)) b!1888492))

(declare-fun m!2319875 () Bool)

(assert (=> b!1888488 m!2319875))

(declare-fun m!2319877 () Bool)

(assert (=> b!1888489 m!2319877))

(declare-fun m!2319879 () Bool)

(assert (=> b!1888486 m!2319879))

(declare-fun m!2319881 () Bool)

(assert (=> b!1888491 m!2319881))

(declare-fun m!2319883 () Bool)

(assert (=> b!1888491 m!2319883))

(declare-fun m!2319885 () Bool)

(assert (=> b!1888491 m!2319885))

(declare-fun m!2319887 () Bool)

(assert (=> b!1888490 m!2319887))

(declare-fun m!2319889 () Bool)

(assert (=> start!189080 m!2319889))

(check-sat (not b!1888490) (not b!1888488) (not b!1888491) (not start!189080) (not b!1888484) (not b!1888486) (not b!1888483) tp_is_empty!9017 (not b!1888489) (not b!1888492))
(check-sat)
(get-model)

(declare-fun b!1888516 () Bool)

(declare-fun e!1205202 () Bool)

(assert (=> b!1888516 (= e!1205202 (subseq!425 (t!175158 l2!1298) (t!175158 (t!175158 l3!256))))))

(declare-fun b!1888515 () Bool)

(declare-fun e!1205201 () Bool)

(assert (=> b!1888515 (= e!1205201 (subseq!425 (t!175158 (t!175158 l2!1298)) (t!175158 (t!175158 l3!256))))))

(declare-fun b!1888513 () Bool)

(declare-fun e!1205203 () Bool)

(declare-fun e!1205204 () Bool)

(assert (=> b!1888513 (= e!1205203 e!1205204)))

(declare-fun res!843359 () Bool)

(assert (=> b!1888513 (=> (not res!843359) (not e!1205204))))

(assert (=> b!1888513 (= res!843359 ((_ is Cons!21077) (t!175158 l3!256)))))

(declare-fun b!1888514 () Bool)

(assert (=> b!1888514 (= e!1205204 e!1205202)))

(declare-fun res!843361 () Bool)

(assert (=> b!1888514 (=> res!843361 e!1205202)))

(assert (=> b!1888514 (= res!843361 e!1205201)))

(declare-fun res!843362 () Bool)

(assert (=> b!1888514 (=> (not res!843362) (not e!1205201))))

(assert (=> b!1888514 (= res!843362 (= (h!26478 (t!175158 l2!1298)) (h!26478 (t!175158 l3!256))))))

(declare-fun d!578427 () Bool)

(declare-fun res!843360 () Bool)

(assert (=> d!578427 (=> res!843360 e!1205203)))

(assert (=> d!578427 (= res!843360 ((_ is Nil!21077) (t!175158 l2!1298)))))

(assert (=> d!578427 (= (subseq!425 (t!175158 l2!1298) (t!175158 l3!256)) e!1205203)))

(assert (= (and d!578427 (not res!843360)) b!1888513))

(assert (= (and b!1888513 res!843359) b!1888514))

(assert (= (and b!1888514 res!843362) b!1888515))

(assert (= (and b!1888514 (not res!843361)) b!1888516))

(declare-fun m!2319897 () Bool)

(assert (=> b!1888516 m!2319897))

(declare-fun m!2319899 () Bool)

(assert (=> b!1888515 m!2319899))

(assert (=> b!1888488 d!578427))

(declare-fun b!1888524 () Bool)

(declare-fun e!1205210 () Bool)

(assert (=> b!1888524 (= e!1205210 (subseq!425 l1!1329 (t!175158 l3!256)))))

(declare-fun b!1888523 () Bool)

(declare-fun e!1205209 () Bool)

(assert (=> b!1888523 (= e!1205209 (subseq!425 (t!175158 l1!1329) (t!175158 l3!256)))))

(declare-fun b!1888521 () Bool)

(declare-fun e!1205211 () Bool)

(declare-fun e!1205212 () Bool)

(assert (=> b!1888521 (= e!1205211 e!1205212)))

(declare-fun res!843367 () Bool)

(assert (=> b!1888521 (=> (not res!843367) (not e!1205212))))

(assert (=> b!1888521 (= res!843367 ((_ is Cons!21077) l3!256))))

(declare-fun b!1888522 () Bool)

(assert (=> b!1888522 (= e!1205212 e!1205210)))

(declare-fun res!843369 () Bool)

(assert (=> b!1888522 (=> res!843369 e!1205210)))

(assert (=> b!1888522 (= res!843369 e!1205209)))

(declare-fun res!843370 () Bool)

(assert (=> b!1888522 (=> (not res!843370) (not e!1205209))))

(assert (=> b!1888522 (= res!843370 (= (h!26478 l1!1329) (h!26478 l3!256)))))

(declare-fun d!578433 () Bool)

(declare-fun res!843368 () Bool)

(assert (=> d!578433 (=> res!843368 e!1205211)))

(assert (=> d!578433 (= res!843368 ((_ is Nil!21077) l1!1329))))

(assert (=> d!578433 (= (subseq!425 l1!1329 l3!256) e!1205211)))

(assert (= (and d!578433 (not res!843368)) b!1888521))

(assert (= (and b!1888521 res!843367) b!1888522))

(assert (= (and b!1888522 res!843370) b!1888523))

(assert (= (and b!1888522 (not res!843369)) b!1888524))

(assert (=> b!1888524 m!2319883))

(declare-fun m!2319901 () Bool)

(assert (=> b!1888523 m!2319901))

(assert (=> b!1888491 d!578433))

(declare-fun b!1888528 () Bool)

(declare-fun e!1205214 () Bool)

(assert (=> b!1888528 (= e!1205214 (subseq!425 l1!1329 (t!175158 (t!175158 l3!256))))))

(declare-fun b!1888527 () Bool)

(declare-fun e!1205213 () Bool)

(assert (=> b!1888527 (= e!1205213 (subseq!425 (t!175158 l1!1329) (t!175158 (t!175158 l3!256))))))

(declare-fun b!1888525 () Bool)

(declare-fun e!1205215 () Bool)

(declare-fun e!1205216 () Bool)

(assert (=> b!1888525 (= e!1205215 e!1205216)))

(declare-fun res!843371 () Bool)

(assert (=> b!1888525 (=> (not res!843371) (not e!1205216))))

(assert (=> b!1888525 (= res!843371 ((_ is Cons!21077) (t!175158 l3!256)))))

(declare-fun b!1888526 () Bool)

(assert (=> b!1888526 (= e!1205216 e!1205214)))

(declare-fun res!843373 () Bool)

(assert (=> b!1888526 (=> res!843373 e!1205214)))

(assert (=> b!1888526 (= res!843373 e!1205213)))

(declare-fun res!843374 () Bool)

(assert (=> b!1888526 (=> (not res!843374) (not e!1205213))))

(assert (=> b!1888526 (= res!843374 (= (h!26478 l1!1329) (h!26478 (t!175158 l3!256))))))

(declare-fun d!578435 () Bool)

(declare-fun res!843372 () Bool)

(assert (=> d!578435 (=> res!843372 e!1205215)))

(assert (=> d!578435 (= res!843372 ((_ is Nil!21077) l1!1329))))

(assert (=> d!578435 (= (subseq!425 l1!1329 (t!175158 l3!256)) e!1205215)))

(assert (= (and d!578435 (not res!843372)) b!1888525))

(assert (= (and b!1888525 res!843371) b!1888526))

(assert (= (and b!1888526 res!843374) b!1888527))

(assert (= (and b!1888526 (not res!843373)) b!1888528))

(declare-fun m!2319903 () Bool)

(assert (=> b!1888528 m!2319903))

(declare-fun m!2319905 () Bool)

(assert (=> b!1888527 m!2319905))

(assert (=> b!1888491 d!578435))

(declare-fun d!578437 () Bool)

(assert (=> d!578437 (subseq!425 l1!1329 (t!175158 l3!256))))

(declare-fun lt!723816 () Unit!35498)

(declare-fun choose!11818 (List!21159 List!21159 List!21159) Unit!35498)

(assert (=> d!578437 (= lt!723816 (choose!11818 l1!1329 l2!1298 (t!175158 l3!256)))))

(assert (=> d!578437 (subseq!425 l1!1329 l2!1298)))

(assert (=> d!578437 (= (lemmaSubSeqTransitive!12 l1!1329 l2!1298 (t!175158 l3!256)) lt!723816)))

(declare-fun bs!413012 () Bool)

(assert (= bs!413012 d!578437))

(assert (=> bs!413012 m!2319883))

(declare-fun m!2319915 () Bool)

(assert (=> bs!413012 m!2319915))

(assert (=> bs!413012 m!2319889))

(assert (=> b!1888491 d!578437))

(declare-fun b!1888544 () Bool)

(declare-fun e!1205230 () Bool)

(assert (=> b!1888544 (= e!1205230 (subseq!425 l2!1298 (t!175158 (t!175158 l3!256))))))

(declare-fun b!1888543 () Bool)

(declare-fun e!1205229 () Bool)

(assert (=> b!1888543 (= e!1205229 (subseq!425 (t!175158 l2!1298) (t!175158 (t!175158 l3!256))))))

(declare-fun b!1888541 () Bool)

(declare-fun e!1205231 () Bool)

(declare-fun e!1205232 () Bool)

(assert (=> b!1888541 (= e!1205231 e!1205232)))

(declare-fun res!843387 () Bool)

(assert (=> b!1888541 (=> (not res!843387) (not e!1205232))))

(assert (=> b!1888541 (= res!843387 ((_ is Cons!21077) (t!175158 l3!256)))))

(declare-fun b!1888542 () Bool)

(assert (=> b!1888542 (= e!1205232 e!1205230)))

(declare-fun res!843389 () Bool)

(assert (=> b!1888542 (=> res!843389 e!1205230)))

(assert (=> b!1888542 (= res!843389 e!1205229)))

(declare-fun res!843390 () Bool)

(assert (=> b!1888542 (=> (not res!843390) (not e!1205229))))

(assert (=> b!1888542 (= res!843390 (= (h!26478 l2!1298) (h!26478 (t!175158 l3!256))))))

(declare-fun d!578445 () Bool)

(declare-fun res!843388 () Bool)

(assert (=> d!578445 (=> res!843388 e!1205231)))

(assert (=> d!578445 (= res!843388 ((_ is Nil!21077) l2!1298))))

(assert (=> d!578445 (= (subseq!425 l2!1298 (t!175158 l3!256)) e!1205231)))

(assert (= (and d!578445 (not res!843388)) b!1888541))

(assert (= (and b!1888541 res!843387) b!1888542))

(assert (= (and b!1888542 res!843390) b!1888543))

(assert (= (and b!1888542 (not res!843389)) b!1888544))

(declare-fun m!2319917 () Bool)

(assert (=> b!1888544 m!2319917))

(assert (=> b!1888543 m!2319897))

(assert (=> b!1888486 d!578445))

(declare-fun b!1888552 () Bool)

(declare-fun e!1205238 () Bool)

(assert (=> b!1888552 (= e!1205238 (subseq!425 l1!1329 (t!175158 l2!1298)))))

(declare-fun b!1888551 () Bool)

(declare-fun e!1205237 () Bool)

(assert (=> b!1888551 (= e!1205237 (subseq!425 (t!175158 l1!1329) (t!175158 l2!1298)))))

(declare-fun b!1888549 () Bool)

(declare-fun e!1205239 () Bool)

(declare-fun e!1205240 () Bool)

(assert (=> b!1888549 (= e!1205239 e!1205240)))

(declare-fun res!843395 () Bool)

(assert (=> b!1888549 (=> (not res!843395) (not e!1205240))))

(assert (=> b!1888549 (= res!843395 ((_ is Cons!21077) l2!1298))))

(declare-fun b!1888550 () Bool)

(assert (=> b!1888550 (= e!1205240 e!1205238)))

(declare-fun res!843397 () Bool)

(assert (=> b!1888550 (=> res!843397 e!1205238)))

(assert (=> b!1888550 (= res!843397 e!1205237)))

(declare-fun res!843398 () Bool)

(assert (=> b!1888550 (=> (not res!843398) (not e!1205237))))

(assert (=> b!1888550 (= res!843398 (= (h!26478 l1!1329) (h!26478 l2!1298)))))

(declare-fun d!578449 () Bool)

(declare-fun res!843396 () Bool)

(assert (=> d!578449 (=> res!843396 e!1205239)))

(assert (=> d!578449 (= res!843396 ((_ is Nil!21077) l1!1329))))

(assert (=> d!578449 (= (subseq!425 l1!1329 l2!1298) e!1205239)))

(assert (= (and d!578449 (not res!843396)) b!1888549))

(assert (= (and b!1888549 res!843395) b!1888550))

(assert (= (and b!1888550 res!843398) b!1888551))

(assert (= (and b!1888550 (not res!843397)) b!1888552))

(declare-fun m!2319923 () Bool)

(assert (=> b!1888552 m!2319923))

(declare-fun m!2319925 () Bool)

(assert (=> b!1888551 m!2319925))

(assert (=> start!189080 d!578449))

(declare-fun b!1888560 () Bool)

(declare-fun e!1205246 () Bool)

(assert (=> b!1888560 (= e!1205246 (subseq!425 (t!175158 l1!1329) (t!175158 l2!1298)))))

(declare-fun b!1888559 () Bool)

(declare-fun e!1205245 () Bool)

(assert (=> b!1888559 (= e!1205245 (subseq!425 (t!175158 (t!175158 l1!1329)) (t!175158 l2!1298)))))

(declare-fun b!1888557 () Bool)

(declare-fun e!1205247 () Bool)

(declare-fun e!1205248 () Bool)

(assert (=> b!1888557 (= e!1205247 e!1205248)))

(declare-fun res!843403 () Bool)

(assert (=> b!1888557 (=> (not res!843403) (not e!1205248))))

(assert (=> b!1888557 (= res!843403 ((_ is Cons!21077) l2!1298))))

(declare-fun b!1888558 () Bool)

(assert (=> b!1888558 (= e!1205248 e!1205246)))

(declare-fun res!843405 () Bool)

(assert (=> b!1888558 (=> res!843405 e!1205246)))

(assert (=> b!1888558 (= res!843405 e!1205245)))

(declare-fun res!843406 () Bool)

(assert (=> b!1888558 (=> (not res!843406) (not e!1205245))))

(assert (=> b!1888558 (= res!843406 (= (h!26478 (t!175158 l1!1329)) (h!26478 l2!1298)))))

(declare-fun d!578453 () Bool)

(declare-fun res!843404 () Bool)

(assert (=> d!578453 (=> res!843404 e!1205247)))

(assert (=> d!578453 (= res!843404 ((_ is Nil!21077) (t!175158 l1!1329)))))

(assert (=> d!578453 (= (subseq!425 (t!175158 l1!1329) l2!1298) e!1205247)))

(assert (= (and d!578453 (not res!843404)) b!1888557))

(assert (= (and b!1888557 res!843403) b!1888558))

(assert (= (and b!1888558 res!843406) b!1888559))

(assert (= (and b!1888558 (not res!843405)) b!1888560))

(assert (=> b!1888560 m!2319925))

(declare-fun m!2319929 () Bool)

(assert (=> b!1888559 m!2319929))

(assert (=> b!1888490 d!578453))

(declare-fun b!1888568 () Bool)

(declare-fun e!1205252 () Bool)

(assert (=> b!1888568 (= e!1205252 (subseq!425 l2!1298 (t!175158 l3!256)))))

(declare-fun b!1888567 () Bool)

(declare-fun e!1205251 () Bool)

(assert (=> b!1888567 (= e!1205251 (subseq!425 (t!175158 l2!1298) (t!175158 l3!256)))))

(declare-fun b!1888565 () Bool)

(declare-fun e!1205253 () Bool)

(declare-fun e!1205254 () Bool)

(assert (=> b!1888565 (= e!1205253 e!1205254)))

(declare-fun res!843407 () Bool)

(assert (=> b!1888565 (=> (not res!843407) (not e!1205254))))

(assert (=> b!1888565 (= res!843407 ((_ is Cons!21077) l3!256))))

(declare-fun b!1888566 () Bool)

(assert (=> b!1888566 (= e!1205254 e!1205252)))

(declare-fun res!843409 () Bool)

(assert (=> b!1888566 (=> res!843409 e!1205252)))

(assert (=> b!1888566 (= res!843409 e!1205251)))

(declare-fun res!843410 () Bool)

(assert (=> b!1888566 (=> (not res!843410) (not e!1205251))))

(assert (=> b!1888566 (= res!843410 (= (h!26478 l2!1298) (h!26478 l3!256)))))

(declare-fun d!578455 () Bool)

(declare-fun res!843408 () Bool)

(assert (=> d!578455 (=> res!843408 e!1205253)))

(assert (=> d!578455 (= res!843408 ((_ is Nil!21077) l2!1298))))

(assert (=> d!578455 (= (subseq!425 l2!1298 l3!256) e!1205253)))

(assert (= (and d!578455 (not res!843408)) b!1888565))

(assert (= (and b!1888565 res!843407) b!1888566))

(assert (= (and b!1888566 res!843410) b!1888567))

(assert (= (and b!1888566 (not res!843409)) b!1888568))

(assert (=> b!1888568 m!2319879))

(assert (=> b!1888567 m!2319875))

(assert (=> b!1888489 d!578455))

(declare-fun b!1888576 () Bool)

(declare-fun e!1205260 () Bool)

(declare-fun tp!538390 () Bool)

(assert (=> b!1888576 (= e!1205260 (and tp_is_empty!9017 tp!538390))))

(assert (=> b!1888483 (= tp!538381 e!1205260)))

(assert (= (and b!1888483 ((_ is Cons!21077) (t!175158 l2!1298))) b!1888576))

(declare-fun b!1888577 () Bool)

(declare-fun e!1205261 () Bool)

(declare-fun tp!538391 () Bool)

(assert (=> b!1888577 (= e!1205261 (and tp_is_empty!9017 tp!538391))))

(assert (=> b!1888492 (= tp!538380 e!1205261)))

(assert (= (and b!1888492 ((_ is Cons!21077) (t!175158 l3!256))) b!1888577))

(declare-fun b!1888578 () Bool)

(declare-fun e!1205262 () Bool)

(declare-fun tp!538392 () Bool)

(assert (=> b!1888578 (= e!1205262 (and tp_is_empty!9017 tp!538392))))

(assert (=> b!1888484 (= tp!538382 e!1205262)))

(assert (= (and b!1888484 ((_ is Cons!21077) (t!175158 l1!1329))) b!1888578))

(check-sat (not b!1888516) (not b!1888577) (not b!1888559) (not b!1888515) (not b!1888552) (not b!1888551) (not b!1888527) (not b!1888524) (not b!1888567) (not b!1888578) (not b!1888543) (not d!578437) (not b!1888523) (not b!1888544) (not b!1888568) (not b!1888560) tp_is_empty!9017 (not b!1888576) (not b!1888528))
(check-sat)
