; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751544 () Bool)

(assert start!751544)

(declare-fun b!7968504 () Bool)

(declare-datatypes ((Unit!170226 0))(
  ( (Unit!170227) )
))
(declare-fun e!4698576 () Unit!170226)

(declare-fun Unit!170228 () Unit!170226)

(assert (=> b!7968504 (= e!4698576 Unit!170228)))

(declare-fun b!7968506 () Bool)

(declare-fun e!4698572 () Bool)

(declare-fun tp!2375342 () Bool)

(declare-fun tp!2375349 () Bool)

(assert (=> b!7968506 (= e!4698572 (and tp!2375342 tp!2375349))))

(declare-fun b!7968507 () Bool)

(declare-fun res!3157252 () Bool)

(declare-fun e!4698570 () Bool)

(assert (=> b!7968507 (=> (not res!3157252) (not e!4698570))))

(declare-datatypes ((C!43376 0))(
  ( (C!43377 (val!32236 Int)) )
))
(declare-datatypes ((List!74748 0))(
  ( (Nil!74624) (Cons!74624 (h!81072 C!43376) (t!390491 List!74748)) )
))
(declare-fun testedP!447 () List!74748)

(declare-fun input!7927 () List!74748)

(assert (=> b!7968507 (= res!3157252 (not (= testedP!447 input!7927)))))

(declare-fun b!7968508 () Bool)

(declare-fun e!4698569 () Bool)

(assert (=> b!7968508 (= e!4698569 e!4698570)))

(declare-fun res!3157254 () Bool)

(assert (=> b!7968508 (=> (not res!3157254) (not e!4698570))))

(declare-fun lt!2706661 () Int)

(declare-fun lt!2706668 () List!74748)

(declare-fun lt!2706670 () Int)

(declare-datatypes ((Regex!21519 0))(
  ( (ElementMatch!21519 (c!1463386 C!43376)) (Concat!30518 (regOne!43550 Regex!21519) (regTwo!43550 Regex!21519)) (EmptyExpr!21519) (Star!21519 (reg!21848 Regex!21519)) (EmptyLang!21519) (Union!21519 (regOne!43551 Regex!21519) (regTwo!43551 Regex!21519)) )
))
(declare-fun r!24602 () Regex!21519)

(declare-fun isEmpty!42925 (List!74748) Bool)

(declare-datatypes ((tuple2!70700 0))(
  ( (tuple2!70701 (_1!38653 List!74748) (_2!38653 List!74748)) )
))
(declare-fun findLongestMatchInner!2300 (Regex!21519 List!74748 Int List!74748 List!74748 Int) tuple2!70700)

(assert (=> b!7968508 (= res!3157254 (not (isEmpty!42925 (_1!38653 (findLongestMatchInner!2300 r!24602 testedP!447 lt!2706670 lt!2706668 input!7927 lt!2706661)))))))

(declare-fun size!43455 (List!74748) Int)

(assert (=> b!7968508 (= lt!2706661 (size!43455 input!7927))))

(declare-fun getSuffix!3822 (List!74748 List!74748) List!74748)

(assert (=> b!7968508 (= lt!2706668 (getSuffix!3822 input!7927 testedP!447))))

(assert (=> b!7968508 (= lt!2706670 (size!43455 testedP!447))))

(declare-fun b!7968509 () Bool)

(declare-fun res!3157258 () Bool)

(assert (=> b!7968509 (=> (not res!3157258) (not e!4698569))))

(declare-fun baseR!116 () Regex!21519)

(declare-fun derivative!705 (Regex!21519 List!74748) Regex!21519)

(assert (=> b!7968509 (= res!3157258 (= (derivative!705 baseR!116 testedP!447) r!24602))))

(declare-fun b!7968510 () Bool)

(declare-fun e!4698577 () Bool)

(declare-fun tp_is_empty!53581 () Bool)

(declare-fun tp!2375343 () Bool)

(assert (=> b!7968510 (= e!4698577 (and tp_is_empty!53581 tp!2375343))))

(declare-fun b!7968511 () Bool)

(declare-fun e!4698574 () Bool)

(declare-fun e!4698571 () Bool)

(assert (=> b!7968511 (= e!4698574 e!4698571)))

(declare-fun res!3157253 () Bool)

(assert (=> b!7968511 (=> res!3157253 e!4698571)))

(declare-fun nullable!9618 (Regex!21519) Bool)

(assert (=> b!7968511 (= res!3157253 (nullable!9618 r!24602))))

(declare-fun lt!2706669 () List!74748)

(declare-fun isPrefix!6619 (List!74748 List!74748) Bool)

(assert (=> b!7968511 (isPrefix!6619 lt!2706669 input!7927)))

(declare-fun lt!2706671 () Unit!170226)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1346 (List!74748 List!74748) Unit!170226)

(assert (=> b!7968511 (= lt!2706671 (lemmaAddHeadSuffixToPrefixStillPrefix!1346 testedP!447 input!7927))))

(declare-fun lt!2706663 () C!43376)

(declare-fun ++!18389 (List!74748 List!74748) List!74748)

(assert (=> b!7968511 (= lt!2706669 (++!18389 testedP!447 (Cons!74624 lt!2706663 Nil!74624)))))

(declare-fun head!16271 (List!74748) C!43376)

(assert (=> b!7968511 (= lt!2706663 (head!16271 lt!2706668))))

(declare-fun b!7968512 () Bool)

(declare-fun tp!2375345 () Bool)

(declare-fun tp!2375346 () Bool)

(assert (=> b!7968512 (= e!4698572 (and tp!2375345 tp!2375346))))

(declare-fun b!7968513 () Bool)

(assert (=> b!7968513 (= e!4698570 (not e!4698574))))

(declare-fun res!3157255 () Bool)

(assert (=> b!7968513 (=> res!3157255 e!4698574)))

(assert (=> b!7968513 (= res!3157255 (>= lt!2706670 lt!2706661))))

(declare-fun lt!2706662 () Unit!170226)

(assert (=> b!7968513 (= lt!2706662 e!4698576)))

(declare-fun c!1463385 () Bool)

(assert (=> b!7968513 (= c!1463385 (= lt!2706670 lt!2706661))))

(assert (=> b!7968513 (<= lt!2706670 lt!2706661)))

(declare-fun lt!2706667 () Unit!170226)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1136 (List!74748 List!74748) Unit!170226)

(assert (=> b!7968513 (= lt!2706667 (lemmaIsPrefixThenSmallerEqSize!1136 testedP!447 input!7927))))

(declare-fun b!7968505 () Bool)

(declare-fun e!4698575 () Bool)

(declare-fun tp!2375340 () Bool)

(assert (=> b!7968505 (= e!4698575 (and tp_is_empty!53581 tp!2375340))))

(declare-fun res!3157256 () Bool)

(assert (=> start!751544 (=> (not res!3157256) (not e!4698569))))

(declare-fun validRegex!11823 (Regex!21519) Bool)

(assert (=> start!751544 (= res!3157256 (validRegex!11823 baseR!116))))

(assert (=> start!751544 e!4698569))

(declare-fun e!4698573 () Bool)

(assert (=> start!751544 e!4698573))

(assert (=> start!751544 e!4698575))

(assert (=> start!751544 e!4698577))

(assert (=> start!751544 e!4698572))

(declare-fun b!7968514 () Bool)

(assert (=> b!7968514 (= e!4698571 (validRegex!11823 r!24602))))

(declare-fun derivativeStep!6545 (Regex!21519 C!43376) Regex!21519)

(assert (=> b!7968514 (= (derivative!705 baseR!116 lt!2706669) (derivativeStep!6545 r!24602 lt!2706663))))

(declare-fun lt!2706666 () Unit!170226)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!227 (Regex!21519 Regex!21519 List!74748 C!43376) Unit!170226)

(assert (=> b!7968514 (= lt!2706666 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!227 baseR!116 r!24602 testedP!447 lt!2706663))))

(declare-fun b!7968515 () Bool)

(declare-fun tp!2375347 () Bool)

(assert (=> b!7968515 (= e!4698573 tp!2375347)))

(declare-fun b!7968516 () Bool)

(declare-fun Unit!170229 () Unit!170226)

(assert (=> b!7968516 (= e!4698576 Unit!170229)))

(declare-fun lt!2706665 () Unit!170226)

(declare-fun lemmaIsPrefixRefl!4087 (List!74748 List!74748) Unit!170226)

(assert (=> b!7968516 (= lt!2706665 (lemmaIsPrefixRefl!4087 input!7927 input!7927))))

(assert (=> b!7968516 (isPrefix!6619 input!7927 input!7927)))

(declare-fun lt!2706664 () Unit!170226)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1667 (List!74748 List!74748 List!74748) Unit!170226)

(assert (=> b!7968516 (= lt!2706664 (lemmaIsPrefixSameLengthThenSameList!1667 input!7927 testedP!447 input!7927))))

(assert (=> b!7968516 false))

(declare-fun b!7968517 () Bool)

(assert (=> b!7968517 (= e!4698572 tp_is_empty!53581)))

(declare-fun b!7968518 () Bool)

(declare-fun tp!2375339 () Bool)

(declare-fun tp!2375341 () Bool)

(assert (=> b!7968518 (= e!4698573 (and tp!2375339 tp!2375341))))

(declare-fun b!7968519 () Bool)

(declare-fun tp!2375348 () Bool)

(declare-fun tp!2375350 () Bool)

(assert (=> b!7968519 (= e!4698573 (and tp!2375348 tp!2375350))))

(declare-fun b!7968520 () Bool)

(declare-fun res!3157257 () Bool)

(assert (=> b!7968520 (=> (not res!3157257) (not e!4698569))))

(assert (=> b!7968520 (= res!3157257 (isPrefix!6619 testedP!447 input!7927))))

(declare-fun b!7968521 () Bool)

(declare-fun tp!2375344 () Bool)

(assert (=> b!7968521 (= e!4698572 tp!2375344)))

(declare-fun b!7968522 () Bool)

(assert (=> b!7968522 (= e!4698573 tp_is_empty!53581)))

(assert (= (and start!751544 res!3157256) b!7968520))

(assert (= (and b!7968520 res!3157257) b!7968509))

(assert (= (and b!7968509 res!3157258) b!7968508))

(assert (= (and b!7968508 res!3157254) b!7968507))

(assert (= (and b!7968507 res!3157252) b!7968513))

(assert (= (and b!7968513 c!1463385) b!7968516))

(assert (= (and b!7968513 (not c!1463385)) b!7968504))

(assert (= (and b!7968513 (not res!3157255)) b!7968511))

(assert (= (and b!7968511 (not res!3157253)) b!7968514))

(get-info :version)

(assert (= (and start!751544 ((_ is ElementMatch!21519) baseR!116)) b!7968522))

(assert (= (and start!751544 ((_ is Concat!30518) baseR!116)) b!7968518))

(assert (= (and start!751544 ((_ is Star!21519) baseR!116)) b!7968515))

(assert (= (and start!751544 ((_ is Union!21519) baseR!116)) b!7968519))

(assert (= (and start!751544 ((_ is Cons!74624) testedP!447)) b!7968505))

(assert (= (and start!751544 ((_ is Cons!74624) input!7927)) b!7968510))

(assert (= (and start!751544 ((_ is ElementMatch!21519) r!24602)) b!7968517))

(assert (= (and start!751544 ((_ is Concat!30518) r!24602)) b!7968506))

(assert (= (and start!751544 ((_ is Star!21519) r!24602)) b!7968521))

(assert (= (and start!751544 ((_ is Union!21519) r!24602)) b!7968512))

(declare-fun m!8347368 () Bool)

(assert (=> b!7968516 m!8347368))

(declare-fun m!8347370 () Bool)

(assert (=> b!7968516 m!8347370))

(declare-fun m!8347372 () Bool)

(assert (=> b!7968516 m!8347372))

(declare-fun m!8347374 () Bool)

(assert (=> b!7968514 m!8347374))

(declare-fun m!8347376 () Bool)

(assert (=> b!7968514 m!8347376))

(declare-fun m!8347378 () Bool)

(assert (=> b!7968514 m!8347378))

(declare-fun m!8347380 () Bool)

(assert (=> b!7968514 m!8347380))

(declare-fun m!8347382 () Bool)

(assert (=> b!7968513 m!8347382))

(declare-fun m!8347384 () Bool)

(assert (=> b!7968520 m!8347384))

(declare-fun m!8347386 () Bool)

(assert (=> start!751544 m!8347386))

(declare-fun m!8347388 () Bool)

(assert (=> b!7968509 m!8347388))

(declare-fun m!8347390 () Bool)

(assert (=> b!7968508 m!8347390))

(declare-fun m!8347392 () Bool)

(assert (=> b!7968508 m!8347392))

(declare-fun m!8347394 () Bool)

(assert (=> b!7968508 m!8347394))

(declare-fun m!8347396 () Bool)

(assert (=> b!7968508 m!8347396))

(declare-fun m!8347398 () Bool)

(assert (=> b!7968508 m!8347398))

(declare-fun m!8347400 () Bool)

(assert (=> b!7968511 m!8347400))

(declare-fun m!8347402 () Bool)

(assert (=> b!7968511 m!8347402))

(declare-fun m!8347404 () Bool)

(assert (=> b!7968511 m!8347404))

(declare-fun m!8347406 () Bool)

(assert (=> b!7968511 m!8347406))

(declare-fun m!8347408 () Bool)

(assert (=> b!7968511 m!8347408))

(check-sat (not b!7968511) (not b!7968505) (not b!7968514) (not b!7968513) (not b!7968518) (not b!7968519) (not b!7968509) (not b!7968520) (not b!7968508) (not b!7968506) (not start!751544) (not b!7968510) (not b!7968516) (not b!7968521) (not b!7968515) (not b!7968512) tp_is_empty!53581)
(check-sat)
(get-model)

(declare-fun d!2379568 () Bool)

(assert (=> d!2379568 (isPrefix!6619 (++!18389 testedP!447 (Cons!74624 (head!16271 (getSuffix!3822 input!7927 testedP!447)) Nil!74624)) input!7927)))

(declare-fun lt!2706674 () Unit!170226)

(declare-fun choose!60077 (List!74748 List!74748) Unit!170226)

(assert (=> d!2379568 (= lt!2706674 (choose!60077 testedP!447 input!7927))))

(assert (=> d!2379568 (isPrefix!6619 testedP!447 input!7927)))

(assert (=> d!2379568 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1346 testedP!447 input!7927) lt!2706674)))

(declare-fun bs!1969923 () Bool)

(assert (= bs!1969923 d!2379568))

(declare-fun m!8347410 () Bool)

(assert (=> bs!1969923 m!8347410))

(assert (=> bs!1969923 m!8347396))

(declare-fun m!8347412 () Bool)

(assert (=> bs!1969923 m!8347412))

(declare-fun m!8347414 () Bool)

(assert (=> bs!1969923 m!8347414))

(assert (=> bs!1969923 m!8347414))

(declare-fun m!8347416 () Bool)

(assert (=> bs!1969923 m!8347416))

(assert (=> bs!1969923 m!8347396))

(assert (=> bs!1969923 m!8347384))

(assert (=> b!7968511 d!2379568))

(declare-fun b!7968546 () Bool)

(declare-fun lt!2706683 () List!74748)

(declare-fun e!4698592 () Bool)

(assert (=> b!7968546 (= e!4698592 (or (not (= (Cons!74624 lt!2706663 Nil!74624) Nil!74624)) (= lt!2706683 testedP!447)))))

(declare-fun b!7968545 () Bool)

(declare-fun res!3157276 () Bool)

(assert (=> b!7968545 (=> (not res!3157276) (not e!4698592))))

(assert (=> b!7968545 (= res!3157276 (= (size!43455 lt!2706683) (+ (size!43455 testedP!447) (size!43455 (Cons!74624 lt!2706663 Nil!74624)))))))

(declare-fun d!2379572 () Bool)

(assert (=> d!2379572 e!4698592))

(declare-fun res!3157275 () Bool)

(assert (=> d!2379572 (=> (not res!3157275) (not e!4698592))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15856 (List!74748) (InoxSet C!43376))

(assert (=> d!2379572 (= res!3157275 (= (content!15856 lt!2706683) ((_ map or) (content!15856 testedP!447) (content!15856 (Cons!74624 lt!2706663 Nil!74624)))))))

(declare-fun e!4698591 () List!74748)

(assert (=> d!2379572 (= lt!2706683 e!4698591)))

(declare-fun c!1463389 () Bool)

(assert (=> d!2379572 (= c!1463389 ((_ is Nil!74624) testedP!447))))

(assert (=> d!2379572 (= (++!18389 testedP!447 (Cons!74624 lt!2706663 Nil!74624)) lt!2706683)))

(declare-fun b!7968543 () Bool)

(assert (=> b!7968543 (= e!4698591 (Cons!74624 lt!2706663 Nil!74624))))

(declare-fun b!7968544 () Bool)

(assert (=> b!7968544 (= e!4698591 (Cons!74624 (h!81072 testedP!447) (++!18389 (t!390491 testedP!447) (Cons!74624 lt!2706663 Nil!74624))))))

(assert (= (and d!2379572 c!1463389) b!7968543))

(assert (= (and d!2379572 (not c!1463389)) b!7968544))

(assert (= (and d!2379572 res!3157275) b!7968545))

(assert (= (and b!7968545 res!3157276) b!7968546))

(declare-fun m!8347426 () Bool)

(assert (=> b!7968545 m!8347426))

(assert (=> b!7968545 m!8347390))

(declare-fun m!8347428 () Bool)

(assert (=> b!7968545 m!8347428))

(declare-fun m!8347430 () Bool)

(assert (=> d!2379572 m!8347430))

(declare-fun m!8347432 () Bool)

(assert (=> d!2379572 m!8347432))

(declare-fun m!8347434 () Bool)

(assert (=> d!2379572 m!8347434))

(declare-fun m!8347436 () Bool)

(assert (=> b!7968544 m!8347436))

(assert (=> b!7968511 d!2379572))

(declare-fun b!7968574 () Bool)

(declare-fun res!3157297 () Bool)

(declare-fun e!4698614 () Bool)

(assert (=> b!7968574 (=> (not res!3157297) (not e!4698614))))

(assert (=> b!7968574 (= res!3157297 (= (head!16271 lt!2706669) (head!16271 input!7927)))))

(declare-fun b!7968576 () Bool)

(declare-fun e!4698613 () Bool)

(assert (=> b!7968576 (= e!4698613 (>= (size!43455 input!7927) (size!43455 lt!2706669)))))

(declare-fun b!7968575 () Bool)

(declare-fun tail!15806 (List!74748) List!74748)

(assert (=> b!7968575 (= e!4698614 (isPrefix!6619 (tail!15806 lt!2706669) (tail!15806 input!7927)))))

(declare-fun b!7968573 () Bool)

(declare-fun e!4698615 () Bool)

(assert (=> b!7968573 (= e!4698615 e!4698614)))

(declare-fun res!3157298 () Bool)

(assert (=> b!7968573 (=> (not res!3157298) (not e!4698614))))

(assert (=> b!7968573 (= res!3157298 (not ((_ is Nil!74624) input!7927)))))

(declare-fun d!2379578 () Bool)

(assert (=> d!2379578 e!4698613))

(declare-fun res!3157296 () Bool)

(assert (=> d!2379578 (=> res!3157296 e!4698613)))

(declare-fun lt!2706689 () Bool)

(assert (=> d!2379578 (= res!3157296 (not lt!2706689))))

(assert (=> d!2379578 (= lt!2706689 e!4698615)))

(declare-fun res!3157295 () Bool)

(assert (=> d!2379578 (=> res!3157295 e!4698615)))

(assert (=> d!2379578 (= res!3157295 ((_ is Nil!74624) lt!2706669))))

(assert (=> d!2379578 (= (isPrefix!6619 lt!2706669 input!7927) lt!2706689)))

(assert (= (and d!2379578 (not res!3157295)) b!7968573))

(assert (= (and b!7968573 res!3157298) b!7968574))

(assert (= (and b!7968574 res!3157297) b!7968575))

(assert (= (and d!2379578 (not res!3157296)) b!7968576))

(declare-fun m!8347440 () Bool)

(assert (=> b!7968574 m!8347440))

(declare-fun m!8347442 () Bool)

(assert (=> b!7968574 m!8347442))

(assert (=> b!7968576 m!8347392))

(declare-fun m!8347444 () Bool)

(assert (=> b!7968576 m!8347444))

(declare-fun m!8347446 () Bool)

(assert (=> b!7968575 m!8347446))

(declare-fun m!8347448 () Bool)

(assert (=> b!7968575 m!8347448))

(assert (=> b!7968575 m!8347446))

(assert (=> b!7968575 m!8347448))

(declare-fun m!8347450 () Bool)

(assert (=> b!7968575 m!8347450))

(assert (=> b!7968511 d!2379578))

(declare-fun d!2379582 () Bool)

(assert (=> d!2379582 (= (head!16271 lt!2706668) (h!81072 lt!2706668))))

(assert (=> b!7968511 d!2379582))

(declare-fun d!2379584 () Bool)

(declare-fun nullableFct!3798 (Regex!21519) Bool)

(assert (=> d!2379584 (= (nullable!9618 r!24602) (nullableFct!3798 r!24602))))

(declare-fun bs!1969926 () Bool)

(assert (= bs!1969926 d!2379584))

(declare-fun m!8347452 () Bool)

(assert (=> bs!1969926 m!8347452))

(assert (=> b!7968511 d!2379584))

(declare-fun d!2379586 () Bool)

(assert (=> d!2379586 (isPrefix!6619 input!7927 input!7927)))

(declare-fun lt!2706692 () Unit!170226)

(declare-fun choose!60078 (List!74748 List!74748) Unit!170226)

(assert (=> d!2379586 (= lt!2706692 (choose!60078 input!7927 input!7927))))

(assert (=> d!2379586 (= (lemmaIsPrefixRefl!4087 input!7927 input!7927) lt!2706692)))

(declare-fun bs!1969927 () Bool)

(assert (= bs!1969927 d!2379586))

(assert (=> bs!1969927 m!8347370))

(declare-fun m!8347460 () Bool)

(assert (=> bs!1969927 m!8347460))

(assert (=> b!7968516 d!2379586))

(declare-fun b!7968587 () Bool)

(declare-fun res!3157306 () Bool)

(declare-fun e!4698624 () Bool)

(assert (=> b!7968587 (=> (not res!3157306) (not e!4698624))))

(assert (=> b!7968587 (= res!3157306 (= (head!16271 input!7927) (head!16271 input!7927)))))

(declare-fun b!7968589 () Bool)

(declare-fun e!4698623 () Bool)

(assert (=> b!7968589 (= e!4698623 (>= (size!43455 input!7927) (size!43455 input!7927)))))

(declare-fun b!7968588 () Bool)

(assert (=> b!7968588 (= e!4698624 (isPrefix!6619 (tail!15806 input!7927) (tail!15806 input!7927)))))

(declare-fun b!7968586 () Bool)

(declare-fun e!4698625 () Bool)

(assert (=> b!7968586 (= e!4698625 e!4698624)))

(declare-fun res!3157307 () Bool)

(assert (=> b!7968586 (=> (not res!3157307) (not e!4698624))))

(assert (=> b!7968586 (= res!3157307 (not ((_ is Nil!74624) input!7927)))))

(declare-fun d!2379590 () Bool)

(assert (=> d!2379590 e!4698623))

(declare-fun res!3157305 () Bool)

(assert (=> d!2379590 (=> res!3157305 e!4698623)))

(declare-fun lt!2706693 () Bool)

(assert (=> d!2379590 (= res!3157305 (not lt!2706693))))

(assert (=> d!2379590 (= lt!2706693 e!4698625)))

(declare-fun res!3157304 () Bool)

(assert (=> d!2379590 (=> res!3157304 e!4698625)))

(assert (=> d!2379590 (= res!3157304 ((_ is Nil!74624) input!7927))))

(assert (=> d!2379590 (= (isPrefix!6619 input!7927 input!7927) lt!2706693)))

(assert (= (and d!2379590 (not res!3157304)) b!7968586))

(assert (= (and b!7968586 res!3157307) b!7968587))

(assert (= (and b!7968587 res!3157306) b!7968588))

(assert (= (and d!2379590 (not res!3157305)) b!7968589))

(assert (=> b!7968587 m!8347442))

(assert (=> b!7968587 m!8347442))

(assert (=> b!7968589 m!8347392))

(assert (=> b!7968589 m!8347392))

(assert (=> b!7968588 m!8347448))

(assert (=> b!7968588 m!8347448))

(assert (=> b!7968588 m!8347448))

(assert (=> b!7968588 m!8347448))

(declare-fun m!8347462 () Bool)

(assert (=> b!7968588 m!8347462))

(assert (=> b!7968516 d!2379590))

(declare-fun d!2379592 () Bool)

(assert (=> d!2379592 (= input!7927 testedP!447)))

(declare-fun lt!2706699 () Unit!170226)

(declare-fun choose!60080 (List!74748 List!74748 List!74748) Unit!170226)

(assert (=> d!2379592 (= lt!2706699 (choose!60080 input!7927 testedP!447 input!7927))))

(assert (=> d!2379592 (isPrefix!6619 input!7927 input!7927)))

(assert (=> d!2379592 (= (lemmaIsPrefixSameLengthThenSameList!1667 input!7927 testedP!447 input!7927) lt!2706699)))

(declare-fun bs!1969929 () Bool)

(assert (= bs!1969929 d!2379592))

(declare-fun m!8347464 () Bool)

(assert (=> bs!1969929 m!8347464))

(assert (=> bs!1969929 m!8347370))

(assert (=> b!7968516 d!2379592))

(declare-fun b!7968637 () Bool)

(declare-fun e!4698659 () Bool)

(declare-fun call!739294 () Bool)

(assert (=> b!7968637 (= e!4698659 call!739294)))

(declare-fun b!7968638 () Bool)

(declare-fun e!4698660 () Bool)

(declare-fun call!739295 () Bool)

(assert (=> b!7968638 (= e!4698660 call!739295)))

(declare-fun bm!739288 () Bool)

(declare-fun call!739293 () Bool)

(assert (=> bm!739288 (= call!739293 call!739294)))

(declare-fun bm!739289 () Bool)

(declare-fun c!1463405 () Bool)

(assert (=> bm!739289 (= call!739295 (validRegex!11823 (ite c!1463405 (regTwo!43551 baseR!116) (regTwo!43550 baseR!116))))))

(declare-fun b!7968639 () Bool)

(declare-fun res!3157337 () Bool)

(declare-fun e!4698662 () Bool)

(assert (=> b!7968639 (=> res!3157337 e!4698662)))

(assert (=> b!7968639 (= res!3157337 (not ((_ is Concat!30518) baseR!116)))))

(declare-fun e!4698664 () Bool)

(assert (=> b!7968639 (= e!4698664 e!4698662)))

(declare-fun d!2379594 () Bool)

(declare-fun res!3157339 () Bool)

(declare-fun e!4698663 () Bool)

(assert (=> d!2379594 (=> res!3157339 e!4698663)))

(assert (=> d!2379594 (= res!3157339 ((_ is ElementMatch!21519) baseR!116))))

(assert (=> d!2379594 (= (validRegex!11823 baseR!116) e!4698663)))

(declare-fun b!7968640 () Bool)

(assert (=> b!7968640 (= e!4698662 e!4698660)))

(declare-fun res!3157341 () Bool)

(assert (=> b!7968640 (=> (not res!3157341) (not e!4698660))))

(assert (=> b!7968640 (= res!3157341 call!739293)))

(declare-fun b!7968641 () Bool)

(declare-fun res!3157340 () Bool)

(declare-fun e!4698661 () Bool)

(assert (=> b!7968641 (=> (not res!3157340) (not e!4698661))))

(assert (=> b!7968641 (= res!3157340 call!739293)))

(assert (=> b!7968641 (= e!4698664 e!4698661)))

(declare-fun b!7968642 () Bool)

(declare-fun e!4698665 () Bool)

(assert (=> b!7968642 (= e!4698665 e!4698659)))

(declare-fun res!3157338 () Bool)

(assert (=> b!7968642 (= res!3157338 (not (nullable!9618 (reg!21848 baseR!116))))))

(assert (=> b!7968642 (=> (not res!3157338) (not e!4698659))))

(declare-fun b!7968643 () Bool)

(assert (=> b!7968643 (= e!4698661 call!739295)))

(declare-fun b!7968644 () Bool)

(assert (=> b!7968644 (= e!4698663 e!4698665)))

(declare-fun c!1463406 () Bool)

(assert (=> b!7968644 (= c!1463406 ((_ is Star!21519) baseR!116))))

(declare-fun b!7968645 () Bool)

(assert (=> b!7968645 (= e!4698665 e!4698664)))

(assert (=> b!7968645 (= c!1463405 ((_ is Union!21519) baseR!116))))

(declare-fun bm!739290 () Bool)

(assert (=> bm!739290 (= call!739294 (validRegex!11823 (ite c!1463406 (reg!21848 baseR!116) (ite c!1463405 (regOne!43551 baseR!116) (regOne!43550 baseR!116)))))))

(assert (= (and d!2379594 (not res!3157339)) b!7968644))

(assert (= (and b!7968644 c!1463406) b!7968642))

(assert (= (and b!7968644 (not c!1463406)) b!7968645))

(assert (= (and b!7968642 res!3157338) b!7968637))

(assert (= (and b!7968645 c!1463405) b!7968641))

(assert (= (and b!7968645 (not c!1463405)) b!7968639))

(assert (= (and b!7968641 res!3157340) b!7968643))

(assert (= (and b!7968639 (not res!3157337)) b!7968640))

(assert (= (and b!7968640 res!3157341) b!7968638))

(assert (= (or b!7968643 b!7968638) bm!739289))

(assert (= (or b!7968641 b!7968640) bm!739288))

(assert (= (or b!7968637 bm!739288) bm!739290))

(declare-fun m!8347508 () Bool)

(assert (=> bm!739289 m!8347508))

(declare-fun m!8347510 () Bool)

(assert (=> b!7968642 m!8347510))

(declare-fun m!8347512 () Bool)

(assert (=> bm!739290 m!8347512))

(assert (=> start!751544 d!2379594))

(declare-fun b!7968646 () Bool)

(declare-fun e!4698666 () Bool)

(declare-fun call!739297 () Bool)

(assert (=> b!7968646 (= e!4698666 call!739297)))

(declare-fun b!7968647 () Bool)

(declare-fun e!4698667 () Bool)

(declare-fun call!739298 () Bool)

(assert (=> b!7968647 (= e!4698667 call!739298)))

(declare-fun bm!739291 () Bool)

(declare-fun call!739296 () Bool)

(assert (=> bm!739291 (= call!739296 call!739297)))

(declare-fun bm!739292 () Bool)

(declare-fun c!1463407 () Bool)

(assert (=> bm!739292 (= call!739298 (validRegex!11823 (ite c!1463407 (regTwo!43551 r!24602) (regTwo!43550 r!24602))))))

(declare-fun b!7968648 () Bool)

(declare-fun res!3157342 () Bool)

(declare-fun e!4698669 () Bool)

(assert (=> b!7968648 (=> res!3157342 e!4698669)))

(assert (=> b!7968648 (= res!3157342 (not ((_ is Concat!30518) r!24602)))))

(declare-fun e!4698671 () Bool)

(assert (=> b!7968648 (= e!4698671 e!4698669)))

(declare-fun d!2379610 () Bool)

(declare-fun res!3157344 () Bool)

(declare-fun e!4698670 () Bool)

(assert (=> d!2379610 (=> res!3157344 e!4698670)))

(assert (=> d!2379610 (= res!3157344 ((_ is ElementMatch!21519) r!24602))))

(assert (=> d!2379610 (= (validRegex!11823 r!24602) e!4698670)))

(declare-fun b!7968649 () Bool)

(assert (=> b!7968649 (= e!4698669 e!4698667)))

(declare-fun res!3157346 () Bool)

(assert (=> b!7968649 (=> (not res!3157346) (not e!4698667))))

(assert (=> b!7968649 (= res!3157346 call!739296)))

(declare-fun b!7968650 () Bool)

(declare-fun res!3157345 () Bool)

(declare-fun e!4698668 () Bool)

(assert (=> b!7968650 (=> (not res!3157345) (not e!4698668))))

(assert (=> b!7968650 (= res!3157345 call!739296)))

(assert (=> b!7968650 (= e!4698671 e!4698668)))

(declare-fun b!7968651 () Bool)

(declare-fun e!4698672 () Bool)

(assert (=> b!7968651 (= e!4698672 e!4698666)))

(declare-fun res!3157343 () Bool)

(assert (=> b!7968651 (= res!3157343 (not (nullable!9618 (reg!21848 r!24602))))))

(assert (=> b!7968651 (=> (not res!3157343) (not e!4698666))))

(declare-fun b!7968652 () Bool)

(assert (=> b!7968652 (= e!4698668 call!739298)))

(declare-fun b!7968653 () Bool)

(assert (=> b!7968653 (= e!4698670 e!4698672)))

(declare-fun c!1463408 () Bool)

(assert (=> b!7968653 (= c!1463408 ((_ is Star!21519) r!24602))))

(declare-fun b!7968654 () Bool)

(assert (=> b!7968654 (= e!4698672 e!4698671)))

(assert (=> b!7968654 (= c!1463407 ((_ is Union!21519) r!24602))))

(declare-fun bm!739293 () Bool)

(assert (=> bm!739293 (= call!739297 (validRegex!11823 (ite c!1463408 (reg!21848 r!24602) (ite c!1463407 (regOne!43551 r!24602) (regOne!43550 r!24602)))))))

(assert (= (and d!2379610 (not res!3157344)) b!7968653))

(assert (= (and b!7968653 c!1463408) b!7968651))

(assert (= (and b!7968653 (not c!1463408)) b!7968654))

(assert (= (and b!7968651 res!3157343) b!7968646))

(assert (= (and b!7968654 c!1463407) b!7968650))

(assert (= (and b!7968654 (not c!1463407)) b!7968648))

(assert (= (and b!7968650 res!3157345) b!7968652))

(assert (= (and b!7968648 (not res!3157342)) b!7968649))

(assert (= (and b!7968649 res!3157346) b!7968647))

(assert (= (or b!7968652 b!7968647) bm!739292))

(assert (= (or b!7968650 b!7968649) bm!739291))

(assert (= (or b!7968646 bm!739291) bm!739293))

(declare-fun m!8347514 () Bool)

(assert (=> bm!739292 m!8347514))

(declare-fun m!8347516 () Bool)

(assert (=> b!7968651 m!8347516))

(declare-fun m!8347518 () Bool)

(assert (=> bm!739293 m!8347518))

(assert (=> b!7968514 d!2379610))

(declare-fun d!2379612 () Bool)

(declare-fun lt!2706710 () Regex!21519)

(assert (=> d!2379612 (validRegex!11823 lt!2706710)))

(declare-fun e!4698678 () Regex!21519)

(assert (=> d!2379612 (= lt!2706710 e!4698678)))

(declare-fun c!1463414 () Bool)

(assert (=> d!2379612 (= c!1463414 ((_ is Cons!74624) lt!2706669))))

(assert (=> d!2379612 (validRegex!11823 baseR!116)))

(assert (=> d!2379612 (= (derivative!705 baseR!116 lt!2706669) lt!2706710)))

(declare-fun b!7968665 () Bool)

(assert (=> b!7968665 (= e!4698678 (derivative!705 (derivativeStep!6545 baseR!116 (h!81072 lt!2706669)) (t!390491 lt!2706669)))))

(declare-fun b!7968666 () Bool)

(assert (=> b!7968666 (= e!4698678 baseR!116)))

(assert (= (and d!2379612 c!1463414) b!7968665))

(assert (= (and d!2379612 (not c!1463414)) b!7968666))

(declare-fun m!8347526 () Bool)

(assert (=> d!2379612 m!8347526))

(assert (=> d!2379612 m!8347386))

(declare-fun m!8347528 () Bool)

(assert (=> b!7968665 m!8347528))

(assert (=> b!7968665 m!8347528))

(declare-fun m!8347530 () Bool)

(assert (=> b!7968665 m!8347530))

(assert (=> b!7968514 d!2379612))

(declare-fun b!7968719 () Bool)

(declare-fun c!1463443 () Bool)

(assert (=> b!7968719 (= c!1463443 (nullable!9618 (regOne!43550 r!24602)))))

(declare-fun e!4698706 () Regex!21519)

(declare-fun e!4698705 () Regex!21519)

(assert (=> b!7968719 (= e!4698706 e!4698705)))

(declare-fun call!739320 () Regex!21519)

(declare-fun call!739322 () Regex!21519)

(declare-fun b!7968720 () Bool)

(assert (=> b!7968720 (= e!4698705 (Union!21519 (Concat!30518 call!739322 (regTwo!43550 r!24602)) call!739320))))

(declare-fun b!7968721 () Bool)

(declare-fun e!4698708 () Regex!21519)

(assert (=> b!7968721 (= e!4698708 EmptyLang!21519)))

(declare-fun c!1463445 () Bool)

(declare-fun c!1463442 () Bool)

(declare-fun bm!739314 () Bool)

(declare-fun call!739321 () Regex!21519)

(assert (=> bm!739314 (= call!739321 (derivativeStep!6545 (ite c!1463442 (regTwo!43551 r!24602) (ite c!1463445 (reg!21848 r!24602) (ite c!1463443 (regTwo!43550 r!24602) (regOne!43550 r!24602)))) lt!2706663))))

(declare-fun bm!739315 () Bool)

(declare-fun call!739319 () Regex!21519)

(assert (=> bm!739315 (= call!739320 call!739319)))

(declare-fun b!7968722 () Bool)

(declare-fun e!4698709 () Regex!21519)

(assert (=> b!7968722 (= e!4698709 (ite (= lt!2706663 (c!1463386 r!24602)) EmptyExpr!21519 EmptyLang!21519))))

(declare-fun b!7968723 () Bool)

(assert (=> b!7968723 (= e!4698708 e!4698709)))

(declare-fun c!1463446 () Bool)

(assert (=> b!7968723 (= c!1463446 ((_ is ElementMatch!21519) r!24602))))

(declare-fun bm!739316 () Bool)

(assert (=> bm!739316 (= call!739322 (derivativeStep!6545 (ite c!1463442 (regOne!43551 r!24602) (regOne!43550 r!24602)) lt!2706663))))

(declare-fun d!2379616 () Bool)

(declare-fun lt!2706723 () Regex!21519)

(assert (=> d!2379616 (validRegex!11823 lt!2706723)))

(assert (=> d!2379616 (= lt!2706723 e!4698708)))

(declare-fun c!1463444 () Bool)

(assert (=> d!2379616 (= c!1463444 (or ((_ is EmptyExpr!21519) r!24602) ((_ is EmptyLang!21519) r!24602)))))

(assert (=> d!2379616 (validRegex!11823 r!24602)))

(assert (=> d!2379616 (= (derivativeStep!6545 r!24602 lt!2706663) lt!2706723)))

(declare-fun b!7968724 () Bool)

(assert (=> b!7968724 (= c!1463442 ((_ is Union!21519) r!24602))))

(declare-fun e!4698707 () Regex!21519)

(assert (=> b!7968724 (= e!4698709 e!4698707)))

(declare-fun b!7968725 () Bool)

(assert (=> b!7968725 (= e!4698705 (Union!21519 (Concat!30518 call!739320 (regTwo!43550 r!24602)) EmptyLang!21519))))

(declare-fun b!7968726 () Bool)

(assert (=> b!7968726 (= e!4698706 (Concat!30518 call!739319 r!24602))))

(declare-fun b!7968727 () Bool)

(assert (=> b!7968727 (= e!4698707 e!4698706)))

(assert (=> b!7968727 (= c!1463445 ((_ is Star!21519) r!24602))))

(declare-fun bm!739317 () Bool)

(assert (=> bm!739317 (= call!739319 call!739321)))

(declare-fun b!7968728 () Bool)

(assert (=> b!7968728 (= e!4698707 (Union!21519 call!739322 call!739321))))

(assert (= (and d!2379616 c!1463444) b!7968721))

(assert (= (and d!2379616 (not c!1463444)) b!7968723))

(assert (= (and b!7968723 c!1463446) b!7968722))

(assert (= (and b!7968723 (not c!1463446)) b!7968724))

(assert (= (and b!7968724 c!1463442) b!7968728))

(assert (= (and b!7968724 (not c!1463442)) b!7968727))

(assert (= (and b!7968727 c!1463445) b!7968726))

(assert (= (and b!7968727 (not c!1463445)) b!7968719))

(assert (= (and b!7968719 c!1463443) b!7968720))

(assert (= (and b!7968719 (not c!1463443)) b!7968725))

(assert (= (or b!7968720 b!7968725) bm!739315))

(assert (= (or b!7968726 bm!739315) bm!739317))

(assert (= (or b!7968728 bm!739317) bm!739314))

(assert (= (or b!7968728 b!7968720) bm!739316))

(declare-fun m!8347554 () Bool)

(assert (=> b!7968719 m!8347554))

(declare-fun m!8347556 () Bool)

(assert (=> bm!739314 m!8347556))

(declare-fun m!8347558 () Bool)

(assert (=> bm!739316 m!8347558))

(declare-fun m!8347560 () Bool)

(assert (=> d!2379616 m!8347560))

(assert (=> d!2379616 m!8347374))

(assert (=> b!7968514 d!2379616))

(declare-fun d!2379628 () Bool)

(assert (=> d!2379628 (= (derivative!705 baseR!116 (++!18389 testedP!447 (Cons!74624 lt!2706663 Nil!74624))) (derivativeStep!6545 r!24602 lt!2706663))))

(declare-fun lt!2706732 () Unit!170226)

(declare-fun choose!60082 (Regex!21519 Regex!21519 List!74748 C!43376) Unit!170226)

(assert (=> d!2379628 (= lt!2706732 (choose!60082 baseR!116 r!24602 testedP!447 lt!2706663))))

(assert (=> d!2379628 (validRegex!11823 baseR!116)))

(assert (=> d!2379628 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!227 baseR!116 r!24602 testedP!447 lt!2706663) lt!2706732)))

(declare-fun bs!1969933 () Bool)

(assert (= bs!1969933 d!2379628))

(assert (=> bs!1969933 m!8347386))

(assert (=> bs!1969933 m!8347406))

(declare-fun m!8347566 () Bool)

(assert (=> bs!1969933 m!8347566))

(declare-fun m!8347568 () Bool)

(assert (=> bs!1969933 m!8347568))

(assert (=> bs!1969933 m!8347406))

(assert (=> bs!1969933 m!8347378))

(assert (=> b!7968514 d!2379628))

(declare-fun d!2379632 () Bool)

(assert (=> d!2379632 (<= (size!43455 testedP!447) (size!43455 input!7927))))

(declare-fun lt!2706735 () Unit!170226)

(declare-fun choose!60083 (List!74748 List!74748) Unit!170226)

(assert (=> d!2379632 (= lt!2706735 (choose!60083 testedP!447 input!7927))))

(assert (=> d!2379632 (isPrefix!6619 testedP!447 input!7927)))

(assert (=> d!2379632 (= (lemmaIsPrefixThenSmallerEqSize!1136 testedP!447 input!7927) lt!2706735)))

(declare-fun bs!1969934 () Bool)

(assert (= bs!1969934 d!2379632))

(assert (=> bs!1969934 m!8347390))

(assert (=> bs!1969934 m!8347392))

(declare-fun m!8347570 () Bool)

(assert (=> bs!1969934 m!8347570))

(assert (=> bs!1969934 m!8347384))

(assert (=> b!7968513 d!2379632))

(declare-fun d!2379634 () Bool)

(declare-fun lt!2706738 () Int)

(assert (=> d!2379634 (>= lt!2706738 0)))

(declare-fun e!4698718 () Int)

(assert (=> d!2379634 (= lt!2706738 e!4698718)))

(declare-fun c!1463456 () Bool)

(assert (=> d!2379634 (= c!1463456 ((_ is Nil!74624) input!7927))))

(assert (=> d!2379634 (= (size!43455 input!7927) lt!2706738)))

(declare-fun b!7968745 () Bool)

(assert (=> b!7968745 (= e!4698718 0)))

(declare-fun b!7968746 () Bool)

(assert (=> b!7968746 (= e!4698718 (+ 1 (size!43455 (t!390491 input!7927))))))

(assert (= (and d!2379634 c!1463456) b!7968745))

(assert (= (and d!2379634 (not c!1463456)) b!7968746))

(declare-fun m!8347572 () Bool)

(assert (=> b!7968746 m!8347572))

(assert (=> b!7968508 d!2379634))

(declare-fun d!2379636 () Bool)

(assert (=> d!2379636 (= (isEmpty!42925 (_1!38653 (findLongestMatchInner!2300 r!24602 testedP!447 lt!2706670 lt!2706668 input!7927 lt!2706661))) ((_ is Nil!74624) (_1!38653 (findLongestMatchInner!2300 r!24602 testedP!447 lt!2706670 lt!2706668 input!7927 lt!2706661))))))

(assert (=> b!7968508 d!2379636))

(declare-fun b!7968875 () Bool)

(declare-fun e!4698778 () tuple2!70700)

(declare-fun call!739364 () tuple2!70700)

(assert (=> b!7968875 (= e!4698778 call!739364)))

(declare-fun b!7968876 () Bool)

(declare-fun c!1463492 () Bool)

(declare-fun call!739363 () Bool)

(assert (=> b!7968876 (= c!1463492 call!739363)))

(declare-fun lt!2706898 () Unit!170226)

(declare-fun lt!2706896 () Unit!170226)

(assert (=> b!7968876 (= lt!2706898 lt!2706896)))

(declare-fun lt!2706907 () C!43376)

(declare-fun lt!2706885 () List!74748)

(assert (=> b!7968876 (= (++!18389 (++!18389 testedP!447 (Cons!74624 lt!2706907 Nil!74624)) lt!2706885) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3544 (List!74748 C!43376 List!74748 List!74748) Unit!170226)

(assert (=> b!7968876 (= lt!2706896 (lemmaMoveElementToOtherListKeepsConcatEq!3544 testedP!447 lt!2706907 lt!2706885 input!7927))))

(assert (=> b!7968876 (= lt!2706885 (tail!15806 lt!2706668))))

(assert (=> b!7968876 (= lt!2706907 (head!16271 lt!2706668))))

(declare-fun lt!2706882 () Unit!170226)

(declare-fun lt!2706897 () Unit!170226)

(assert (=> b!7968876 (= lt!2706882 lt!2706897)))

(assert (=> b!7968876 (isPrefix!6619 (++!18389 testedP!447 (Cons!74624 (head!16271 (getSuffix!3822 input!7927 testedP!447)) Nil!74624)) input!7927)))

(assert (=> b!7968876 (= lt!2706897 (lemmaAddHeadSuffixToPrefixStillPrefix!1346 testedP!447 input!7927))))

(declare-fun lt!2706881 () Unit!170226)

(declare-fun lt!2706893 () Unit!170226)

(assert (=> b!7968876 (= lt!2706881 lt!2706893)))

(assert (=> b!7968876 (= lt!2706893 (lemmaAddHeadSuffixToPrefixStillPrefix!1346 testedP!447 input!7927))))

(declare-fun lt!2706886 () List!74748)

(assert (=> b!7968876 (= lt!2706886 (++!18389 testedP!447 (Cons!74624 (head!16271 lt!2706668) Nil!74624)))))

(declare-fun lt!2706894 () Unit!170226)

(declare-fun e!4698779 () Unit!170226)

(assert (=> b!7968876 (= lt!2706894 e!4698779)))

(declare-fun c!1463491 () Bool)

(assert (=> b!7968876 (= c!1463491 (= (size!43455 testedP!447) (size!43455 input!7927)))))

(declare-fun lt!2706904 () Unit!170226)

(declare-fun lt!2706901 () Unit!170226)

(assert (=> b!7968876 (= lt!2706904 lt!2706901)))

(assert (=> b!7968876 (<= (size!43455 testedP!447) (size!43455 input!7927))))

(assert (=> b!7968876 (= lt!2706901 (lemmaIsPrefixThenSmallerEqSize!1136 testedP!447 input!7927))))

(declare-fun e!4698783 () tuple2!70700)

(assert (=> b!7968876 (= e!4698783 e!4698778)))

(declare-fun b!7968877 () Bool)

(declare-fun e!4698782 () tuple2!70700)

(assert (=> b!7968877 (= e!4698782 (tuple2!70701 Nil!74624 input!7927))))

(declare-fun b!7968878 () Bool)

(declare-fun Unit!170233 () Unit!170226)

(assert (=> b!7968878 (= e!4698779 Unit!170233)))

(declare-fun b!7968879 () Bool)

(assert (=> b!7968879 (= e!4698782 (tuple2!70701 testedP!447 Nil!74624))))

(declare-fun b!7968880 () Bool)

(declare-fun e!4698776 () tuple2!70700)

(declare-fun lt!2706902 () tuple2!70700)

(assert (=> b!7968880 (= e!4698776 lt!2706902)))

(declare-fun b!7968881 () Bool)

(declare-fun Unit!170234 () Unit!170226)

(assert (=> b!7968881 (= e!4698779 Unit!170234)))

(declare-fun lt!2706891 () Unit!170226)

(declare-fun call!739367 () Unit!170226)

(assert (=> b!7968881 (= lt!2706891 call!739367)))

(declare-fun call!739368 () Bool)

(assert (=> b!7968881 call!739368))

(declare-fun lt!2706905 () Unit!170226)

(assert (=> b!7968881 (= lt!2706905 lt!2706891)))

(declare-fun lt!2706900 () Unit!170226)

(declare-fun call!739366 () Unit!170226)

(assert (=> b!7968881 (= lt!2706900 call!739366)))

(assert (=> b!7968881 (= input!7927 testedP!447)))

(declare-fun lt!2706890 () Unit!170226)

(assert (=> b!7968881 (= lt!2706890 lt!2706900)))

(assert (=> b!7968881 false))

(declare-fun b!7968882 () Bool)

(declare-fun c!1463493 () Bool)

(assert (=> b!7968882 (= c!1463493 call!739363)))

(declare-fun lt!2706883 () Unit!170226)

(declare-fun lt!2706899 () Unit!170226)

(assert (=> b!7968882 (= lt!2706883 lt!2706899)))

(assert (=> b!7968882 (= input!7927 testedP!447)))

(assert (=> b!7968882 (= lt!2706899 call!739366)))

(declare-fun lt!2706888 () Unit!170226)

(declare-fun lt!2706884 () Unit!170226)

(assert (=> b!7968882 (= lt!2706888 lt!2706884)))

(assert (=> b!7968882 call!739368))

(assert (=> b!7968882 (= lt!2706884 call!739367)))

(assert (=> b!7968882 (= e!4698783 e!4698782)))

(declare-fun b!7968883 () Bool)

(declare-fun e!4698780 () tuple2!70700)

(assert (=> b!7968883 (= e!4698780 e!4698783)))

(declare-fun c!1463489 () Bool)

(assert (=> b!7968883 (= c!1463489 (= lt!2706670 lt!2706661))))

(declare-fun bm!739358 () Bool)

(assert (=> bm!739358 (= call!739368 (isPrefix!6619 input!7927 input!7927))))

(declare-fun d!2379638 () Bool)

(declare-fun e!4698781 () Bool)

(assert (=> d!2379638 e!4698781))

(declare-fun res!3157357 () Bool)

(assert (=> d!2379638 (=> (not res!3157357) (not e!4698781))))

(declare-fun lt!2706906 () tuple2!70700)

(assert (=> d!2379638 (= res!3157357 (= (++!18389 (_1!38653 lt!2706906) (_2!38653 lt!2706906)) input!7927))))

(assert (=> d!2379638 (= lt!2706906 e!4698780)))

(declare-fun c!1463490 () Bool)

(declare-fun lostCause!1988 (Regex!21519) Bool)

(assert (=> d!2379638 (= c!1463490 (lostCause!1988 r!24602))))

(declare-fun lt!2706880 () Unit!170226)

(declare-fun Unit!170235 () Unit!170226)

(assert (=> d!2379638 (= lt!2706880 Unit!170235)))

(assert (=> d!2379638 (= (getSuffix!3822 input!7927 testedP!447) lt!2706668)))

(declare-fun lt!2706892 () Unit!170226)

(declare-fun lt!2706887 () Unit!170226)

(assert (=> d!2379638 (= lt!2706892 lt!2706887)))

(declare-fun lt!2706903 () List!74748)

(assert (=> d!2379638 (= lt!2706668 lt!2706903)))

(declare-fun lemmaSamePrefixThenSameSuffix!3004 (List!74748 List!74748 List!74748 List!74748 List!74748) Unit!170226)

(assert (=> d!2379638 (= lt!2706887 (lemmaSamePrefixThenSameSuffix!3004 testedP!447 lt!2706668 testedP!447 lt!2706903 input!7927))))

(assert (=> d!2379638 (= lt!2706903 (getSuffix!3822 input!7927 testedP!447))))

(declare-fun lt!2706895 () Unit!170226)

(declare-fun lt!2706889 () Unit!170226)

(assert (=> d!2379638 (= lt!2706895 lt!2706889)))

(assert (=> d!2379638 (isPrefix!6619 testedP!447 (++!18389 testedP!447 lt!2706668))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3866 (List!74748 List!74748) Unit!170226)

(assert (=> d!2379638 (= lt!2706889 (lemmaConcatTwoListThenFirstIsPrefix!3866 testedP!447 lt!2706668))))

(assert (=> d!2379638 (validRegex!11823 r!24602)))

(assert (=> d!2379638 (= (findLongestMatchInner!2300 r!24602 testedP!447 lt!2706670 lt!2706668 input!7927 lt!2706661) lt!2706906)))

(declare-fun bm!739359 () Bool)

(assert (=> bm!739359 (= call!739367 (lemmaIsPrefixRefl!4087 input!7927 input!7927))))

(declare-fun b!7968884 () Bool)

(assert (=> b!7968884 (= e!4698778 e!4698776)))

(assert (=> b!7968884 (= lt!2706902 call!739364)))

(declare-fun c!1463488 () Bool)

(assert (=> b!7968884 (= c!1463488 (isEmpty!42925 (_1!38653 lt!2706902)))))

(declare-fun b!7968885 () Bool)

(declare-fun e!4698777 () Bool)

(assert (=> b!7968885 (= e!4698777 (>= (size!43455 (_1!38653 lt!2706906)) (size!43455 testedP!447)))))

(declare-fun bm!739360 () Bool)

(assert (=> bm!739360 (= call!739366 (lemmaIsPrefixSameLengthThenSameList!1667 input!7927 testedP!447 input!7927))))

(declare-fun b!7968886 () Bool)

(assert (=> b!7968886 (= e!4698776 (tuple2!70701 testedP!447 lt!2706668))))

(declare-fun b!7968887 () Bool)

(assert (=> b!7968887 (= e!4698781 e!4698777)))

(declare-fun res!3157358 () Bool)

(assert (=> b!7968887 (=> res!3157358 e!4698777)))

(assert (=> b!7968887 (= res!3157358 (isEmpty!42925 (_1!38653 lt!2706906)))))

(declare-fun bm!739361 () Bool)

(declare-fun call!739369 () C!43376)

(assert (=> bm!739361 (= call!739369 (head!16271 lt!2706668))))

(declare-fun bm!739362 () Bool)

(declare-fun call!739365 () Regex!21519)

(declare-fun call!739370 () List!74748)

(assert (=> bm!739362 (= call!739364 (findLongestMatchInner!2300 call!739365 lt!2706886 (+ lt!2706670 1) call!739370 input!7927 lt!2706661))))

(declare-fun bm!739363 () Bool)

(assert (=> bm!739363 (= call!739365 (derivativeStep!6545 r!24602 call!739369))))

(declare-fun bm!739364 () Bool)

(assert (=> bm!739364 (= call!739370 (tail!15806 lt!2706668))))

(declare-fun b!7968888 () Bool)

(assert (=> b!7968888 (= e!4698780 (tuple2!70701 Nil!74624 input!7927))))

(declare-fun bm!739365 () Bool)

(assert (=> bm!739365 (= call!739363 (nullable!9618 r!24602))))

(assert (= (and d!2379638 c!1463490) b!7968888))

(assert (= (and d!2379638 (not c!1463490)) b!7968883))

(assert (= (and b!7968883 c!1463489) b!7968882))

(assert (= (and b!7968883 (not c!1463489)) b!7968876))

(assert (= (and b!7968882 c!1463493) b!7968879))

(assert (= (and b!7968882 (not c!1463493)) b!7968877))

(assert (= (and b!7968876 c!1463491) b!7968881))

(assert (= (and b!7968876 (not c!1463491)) b!7968878))

(assert (= (and b!7968876 c!1463492) b!7968884))

(assert (= (and b!7968876 (not c!1463492)) b!7968875))

(assert (= (and b!7968884 c!1463488) b!7968886))

(assert (= (and b!7968884 (not c!1463488)) b!7968880))

(assert (= (or b!7968884 b!7968875) bm!739361))

(assert (= (or b!7968884 b!7968875) bm!739364))

(assert (= (or b!7968884 b!7968875) bm!739363))

(assert (= (or b!7968884 b!7968875) bm!739362))

(assert (= (or b!7968882 b!7968876) bm!739365))

(assert (= (or b!7968882 b!7968881) bm!739360))

(assert (= (or b!7968882 b!7968881) bm!739359))

(assert (= (or b!7968882 b!7968881) bm!739358))

(assert (= (and d!2379638 res!3157357) b!7968887))

(assert (= (and b!7968887 (not res!3157358)) b!7968885))

(assert (=> bm!739359 m!8347368))

(declare-fun m!8347608 () Bool)

(assert (=> bm!739362 m!8347608))

(declare-fun m!8347610 () Bool)

(assert (=> b!7968885 m!8347610))

(assert (=> b!7968885 m!8347390))

(assert (=> bm!739365 m!8347402))

(declare-fun m!8347612 () Bool)

(assert (=> bm!739363 m!8347612))

(assert (=> bm!739358 m!8347370))

(declare-fun m!8347614 () Bool)

(assert (=> b!7968887 m!8347614))

(declare-fun m!8347616 () Bool)

(assert (=> b!7968884 m!8347616))

(assert (=> bm!739361 m!8347400))

(declare-fun m!8347618 () Bool)

(assert (=> bm!739364 m!8347618))

(declare-fun m!8347620 () Bool)

(assert (=> b!7968876 m!8347620))

(assert (=> b!7968876 m!8347396))

(assert (=> b!7968876 m!8347392))

(declare-fun m!8347622 () Bool)

(assert (=> b!7968876 m!8347622))

(assert (=> b!7968876 m!8347408))

(assert (=> b!7968876 m!8347382))

(assert (=> b!7968876 m!8347622))

(declare-fun m!8347624 () Bool)

(assert (=> b!7968876 m!8347624))

(assert (=> b!7968876 m!8347618))

(assert (=> b!7968876 m!8347396))

(assert (=> b!7968876 m!8347412))

(assert (=> b!7968876 m!8347414))

(assert (=> b!7968876 m!8347416))

(assert (=> b!7968876 m!8347414))

(assert (=> b!7968876 m!8347390))

(assert (=> b!7968876 m!8347400))

(declare-fun m!8347626 () Bool)

(assert (=> b!7968876 m!8347626))

(assert (=> bm!739360 m!8347372))

(declare-fun m!8347628 () Bool)

(assert (=> d!2379638 m!8347628))

(assert (=> d!2379638 m!8347396))

(assert (=> d!2379638 m!8347374))

(declare-fun m!8347630 () Bool)

(assert (=> d!2379638 m!8347630))

(declare-fun m!8347632 () Bool)

(assert (=> d!2379638 m!8347632))

(declare-fun m!8347634 () Bool)

(assert (=> d!2379638 m!8347634))

(declare-fun m!8347636 () Bool)

(assert (=> d!2379638 m!8347636))

(assert (=> d!2379638 m!8347634))

(declare-fun m!8347638 () Bool)

(assert (=> d!2379638 m!8347638))

(assert (=> b!7968508 d!2379638))

(declare-fun d!2379644 () Bool)

(declare-fun lt!2706910 () List!74748)

(assert (=> d!2379644 (= (++!18389 testedP!447 lt!2706910) input!7927)))

(declare-fun e!4698786 () List!74748)

(assert (=> d!2379644 (= lt!2706910 e!4698786)))

(declare-fun c!1463496 () Bool)

(assert (=> d!2379644 (= c!1463496 ((_ is Cons!74624) testedP!447))))

(assert (=> d!2379644 (>= (size!43455 input!7927) (size!43455 testedP!447))))

(assert (=> d!2379644 (= (getSuffix!3822 input!7927 testedP!447) lt!2706910)))

(declare-fun b!7968893 () Bool)

(assert (=> b!7968893 (= e!4698786 (getSuffix!3822 (tail!15806 input!7927) (t!390491 testedP!447)))))

(declare-fun b!7968894 () Bool)

(assert (=> b!7968894 (= e!4698786 input!7927)))

(assert (= (and d!2379644 c!1463496) b!7968893))

(assert (= (and d!2379644 (not c!1463496)) b!7968894))

(declare-fun m!8347640 () Bool)

(assert (=> d!2379644 m!8347640))

(assert (=> d!2379644 m!8347392))

(assert (=> d!2379644 m!8347390))

(assert (=> b!7968893 m!8347448))

(assert (=> b!7968893 m!8347448))

(declare-fun m!8347642 () Bool)

(assert (=> b!7968893 m!8347642))

(assert (=> b!7968508 d!2379644))

(declare-fun d!2379646 () Bool)

(declare-fun lt!2706911 () Int)

(assert (=> d!2379646 (>= lt!2706911 0)))

(declare-fun e!4698787 () Int)

(assert (=> d!2379646 (= lt!2706911 e!4698787)))

(declare-fun c!1463497 () Bool)

(assert (=> d!2379646 (= c!1463497 ((_ is Nil!74624) testedP!447))))

(assert (=> d!2379646 (= (size!43455 testedP!447) lt!2706911)))

(declare-fun b!7968895 () Bool)

(assert (=> b!7968895 (= e!4698787 0)))

(declare-fun b!7968896 () Bool)

(assert (=> b!7968896 (= e!4698787 (+ 1 (size!43455 (t!390491 testedP!447))))))

(assert (= (and d!2379646 c!1463497) b!7968895))

(assert (= (and d!2379646 (not c!1463497)) b!7968896))

(declare-fun m!8347644 () Bool)

(assert (=> b!7968896 m!8347644))

(assert (=> b!7968508 d!2379646))

(declare-fun d!2379648 () Bool)

(declare-fun lt!2706912 () Regex!21519)

(assert (=> d!2379648 (validRegex!11823 lt!2706912)))

(declare-fun e!4698788 () Regex!21519)

(assert (=> d!2379648 (= lt!2706912 e!4698788)))

(declare-fun c!1463498 () Bool)

(assert (=> d!2379648 (= c!1463498 ((_ is Cons!74624) testedP!447))))

(assert (=> d!2379648 (validRegex!11823 baseR!116)))

(assert (=> d!2379648 (= (derivative!705 baseR!116 testedP!447) lt!2706912)))

(declare-fun b!7968897 () Bool)

(assert (=> b!7968897 (= e!4698788 (derivative!705 (derivativeStep!6545 baseR!116 (h!81072 testedP!447)) (t!390491 testedP!447)))))

(declare-fun b!7968898 () Bool)

(assert (=> b!7968898 (= e!4698788 baseR!116)))

(assert (= (and d!2379648 c!1463498) b!7968897))

(assert (= (and d!2379648 (not c!1463498)) b!7968898))

(declare-fun m!8347646 () Bool)

(assert (=> d!2379648 m!8347646))

(assert (=> d!2379648 m!8347386))

(declare-fun m!8347648 () Bool)

(assert (=> b!7968897 m!8347648))

(assert (=> b!7968897 m!8347648))

(declare-fun m!8347650 () Bool)

(assert (=> b!7968897 m!8347650))

(assert (=> b!7968509 d!2379648))

(declare-fun b!7968900 () Bool)

(declare-fun res!3157361 () Bool)

(declare-fun e!4698790 () Bool)

(assert (=> b!7968900 (=> (not res!3157361) (not e!4698790))))

(assert (=> b!7968900 (= res!3157361 (= (head!16271 testedP!447) (head!16271 input!7927)))))

(declare-fun b!7968902 () Bool)

(declare-fun e!4698789 () Bool)

(assert (=> b!7968902 (= e!4698789 (>= (size!43455 input!7927) (size!43455 testedP!447)))))

(declare-fun b!7968901 () Bool)

(assert (=> b!7968901 (= e!4698790 (isPrefix!6619 (tail!15806 testedP!447) (tail!15806 input!7927)))))

(declare-fun b!7968899 () Bool)

(declare-fun e!4698791 () Bool)

(assert (=> b!7968899 (= e!4698791 e!4698790)))

(declare-fun res!3157362 () Bool)

(assert (=> b!7968899 (=> (not res!3157362) (not e!4698790))))

(assert (=> b!7968899 (= res!3157362 (not ((_ is Nil!74624) input!7927)))))

(declare-fun d!2379650 () Bool)

(assert (=> d!2379650 e!4698789))

(declare-fun res!3157360 () Bool)

(assert (=> d!2379650 (=> res!3157360 e!4698789)))

(declare-fun lt!2706913 () Bool)

(assert (=> d!2379650 (= res!3157360 (not lt!2706913))))

(assert (=> d!2379650 (= lt!2706913 e!4698791)))

(declare-fun res!3157359 () Bool)

(assert (=> d!2379650 (=> res!3157359 e!4698791)))

(assert (=> d!2379650 (= res!3157359 ((_ is Nil!74624) testedP!447))))

(assert (=> d!2379650 (= (isPrefix!6619 testedP!447 input!7927) lt!2706913)))

(assert (= (and d!2379650 (not res!3157359)) b!7968899))

(assert (= (and b!7968899 res!3157362) b!7968900))

(assert (= (and b!7968900 res!3157361) b!7968901))

(assert (= (and d!2379650 (not res!3157360)) b!7968902))

(declare-fun m!8347652 () Bool)

(assert (=> b!7968900 m!8347652))

(assert (=> b!7968900 m!8347442))

(assert (=> b!7968902 m!8347392))

(assert (=> b!7968902 m!8347390))

(declare-fun m!8347654 () Bool)

(assert (=> b!7968901 m!8347654))

(assert (=> b!7968901 m!8347448))

(assert (=> b!7968901 m!8347654))

(assert (=> b!7968901 m!8347448))

(declare-fun m!8347656 () Bool)

(assert (=> b!7968901 m!8347656))

(assert (=> b!7968520 d!2379650))

(declare-fun b!7968913 () Bool)

(declare-fun e!4698794 () Bool)

(assert (=> b!7968913 (= e!4698794 tp_is_empty!53581)))

(declare-fun b!7968915 () Bool)

(declare-fun tp!2375425 () Bool)

(assert (=> b!7968915 (= e!4698794 tp!2375425)))

(declare-fun b!7968916 () Bool)

(declare-fun tp!2375428 () Bool)

(declare-fun tp!2375429 () Bool)

(assert (=> b!7968916 (= e!4698794 (and tp!2375428 tp!2375429))))

(declare-fun b!7968914 () Bool)

(declare-fun tp!2375426 () Bool)

(declare-fun tp!2375427 () Bool)

(assert (=> b!7968914 (= e!4698794 (and tp!2375426 tp!2375427))))

(assert (=> b!7968506 (= tp!2375342 e!4698794)))

(assert (= (and b!7968506 ((_ is ElementMatch!21519) (regOne!43550 r!24602))) b!7968913))

(assert (= (and b!7968506 ((_ is Concat!30518) (regOne!43550 r!24602))) b!7968914))

(assert (= (and b!7968506 ((_ is Star!21519) (regOne!43550 r!24602))) b!7968915))

(assert (= (and b!7968506 ((_ is Union!21519) (regOne!43550 r!24602))) b!7968916))

(declare-fun b!7968917 () Bool)

(declare-fun e!4698795 () Bool)

(assert (=> b!7968917 (= e!4698795 tp_is_empty!53581)))

(declare-fun b!7968919 () Bool)

(declare-fun tp!2375430 () Bool)

(assert (=> b!7968919 (= e!4698795 tp!2375430)))

(declare-fun b!7968920 () Bool)

(declare-fun tp!2375433 () Bool)

(declare-fun tp!2375434 () Bool)

(assert (=> b!7968920 (= e!4698795 (and tp!2375433 tp!2375434))))

(declare-fun b!7968918 () Bool)

(declare-fun tp!2375431 () Bool)

(declare-fun tp!2375432 () Bool)

(assert (=> b!7968918 (= e!4698795 (and tp!2375431 tp!2375432))))

(assert (=> b!7968506 (= tp!2375349 e!4698795)))

(assert (= (and b!7968506 ((_ is ElementMatch!21519) (regTwo!43550 r!24602))) b!7968917))

(assert (= (and b!7968506 ((_ is Concat!30518) (regTwo!43550 r!24602))) b!7968918))

(assert (= (and b!7968506 ((_ is Star!21519) (regTwo!43550 r!24602))) b!7968919))

(assert (= (and b!7968506 ((_ is Union!21519) (regTwo!43550 r!24602))) b!7968920))

(declare-fun b!7968925 () Bool)

(declare-fun e!4698798 () Bool)

(declare-fun tp!2375437 () Bool)

(assert (=> b!7968925 (= e!4698798 (and tp_is_empty!53581 tp!2375437))))

(assert (=> b!7968505 (= tp!2375340 e!4698798)))

(assert (= (and b!7968505 ((_ is Cons!74624) (t!390491 testedP!447))) b!7968925))

(declare-fun b!7968926 () Bool)

(declare-fun e!4698799 () Bool)

(assert (=> b!7968926 (= e!4698799 tp_is_empty!53581)))

(declare-fun b!7968928 () Bool)

(declare-fun tp!2375438 () Bool)

(assert (=> b!7968928 (= e!4698799 tp!2375438)))

(declare-fun b!7968929 () Bool)

(declare-fun tp!2375441 () Bool)

(declare-fun tp!2375442 () Bool)

(assert (=> b!7968929 (= e!4698799 (and tp!2375441 tp!2375442))))

(declare-fun b!7968927 () Bool)

(declare-fun tp!2375439 () Bool)

(declare-fun tp!2375440 () Bool)

(assert (=> b!7968927 (= e!4698799 (and tp!2375439 tp!2375440))))

(assert (=> b!7968521 (= tp!2375344 e!4698799)))

(assert (= (and b!7968521 ((_ is ElementMatch!21519) (reg!21848 r!24602))) b!7968926))

(assert (= (and b!7968521 ((_ is Concat!30518) (reg!21848 r!24602))) b!7968927))

(assert (= (and b!7968521 ((_ is Star!21519) (reg!21848 r!24602))) b!7968928))

(assert (= (and b!7968521 ((_ is Union!21519) (reg!21848 r!24602))) b!7968929))

(declare-fun b!7968930 () Bool)

(declare-fun e!4698800 () Bool)

(assert (=> b!7968930 (= e!4698800 tp_is_empty!53581)))

(declare-fun b!7968932 () Bool)

(declare-fun tp!2375443 () Bool)

(assert (=> b!7968932 (= e!4698800 tp!2375443)))

(declare-fun b!7968933 () Bool)

(declare-fun tp!2375446 () Bool)

(declare-fun tp!2375447 () Bool)

(assert (=> b!7968933 (= e!4698800 (and tp!2375446 tp!2375447))))

(declare-fun b!7968931 () Bool)

(declare-fun tp!2375444 () Bool)

(declare-fun tp!2375445 () Bool)

(assert (=> b!7968931 (= e!4698800 (and tp!2375444 tp!2375445))))

(assert (=> b!7968518 (= tp!2375339 e!4698800)))

(assert (= (and b!7968518 ((_ is ElementMatch!21519) (regOne!43550 baseR!116))) b!7968930))

(assert (= (and b!7968518 ((_ is Concat!30518) (regOne!43550 baseR!116))) b!7968931))

(assert (= (and b!7968518 ((_ is Star!21519) (regOne!43550 baseR!116))) b!7968932))

(assert (= (and b!7968518 ((_ is Union!21519) (regOne!43550 baseR!116))) b!7968933))

(declare-fun b!7968934 () Bool)

(declare-fun e!4698801 () Bool)

(assert (=> b!7968934 (= e!4698801 tp_is_empty!53581)))

(declare-fun b!7968936 () Bool)

(declare-fun tp!2375448 () Bool)

(assert (=> b!7968936 (= e!4698801 tp!2375448)))

(declare-fun b!7968937 () Bool)

(declare-fun tp!2375451 () Bool)

(declare-fun tp!2375452 () Bool)

(assert (=> b!7968937 (= e!4698801 (and tp!2375451 tp!2375452))))

(declare-fun b!7968935 () Bool)

(declare-fun tp!2375449 () Bool)

(declare-fun tp!2375450 () Bool)

(assert (=> b!7968935 (= e!4698801 (and tp!2375449 tp!2375450))))

(assert (=> b!7968518 (= tp!2375341 e!4698801)))

(assert (= (and b!7968518 ((_ is ElementMatch!21519) (regTwo!43550 baseR!116))) b!7968934))

(assert (= (and b!7968518 ((_ is Concat!30518) (regTwo!43550 baseR!116))) b!7968935))

(assert (= (and b!7968518 ((_ is Star!21519) (regTwo!43550 baseR!116))) b!7968936))

(assert (= (and b!7968518 ((_ is Union!21519) (regTwo!43550 baseR!116))) b!7968937))

(declare-fun b!7968938 () Bool)

(declare-fun e!4698802 () Bool)

(assert (=> b!7968938 (= e!4698802 tp_is_empty!53581)))

(declare-fun b!7968940 () Bool)

(declare-fun tp!2375453 () Bool)

(assert (=> b!7968940 (= e!4698802 tp!2375453)))

(declare-fun b!7968941 () Bool)

(declare-fun tp!2375456 () Bool)

(declare-fun tp!2375457 () Bool)

(assert (=> b!7968941 (= e!4698802 (and tp!2375456 tp!2375457))))

(declare-fun b!7968939 () Bool)

(declare-fun tp!2375454 () Bool)

(declare-fun tp!2375455 () Bool)

(assert (=> b!7968939 (= e!4698802 (and tp!2375454 tp!2375455))))

(assert (=> b!7968512 (= tp!2375345 e!4698802)))

(assert (= (and b!7968512 ((_ is ElementMatch!21519) (regOne!43551 r!24602))) b!7968938))

(assert (= (and b!7968512 ((_ is Concat!30518) (regOne!43551 r!24602))) b!7968939))

(assert (= (and b!7968512 ((_ is Star!21519) (regOne!43551 r!24602))) b!7968940))

(assert (= (and b!7968512 ((_ is Union!21519) (regOne!43551 r!24602))) b!7968941))

(declare-fun b!7968942 () Bool)

(declare-fun e!4698803 () Bool)

(assert (=> b!7968942 (= e!4698803 tp_is_empty!53581)))

(declare-fun b!7968944 () Bool)

(declare-fun tp!2375458 () Bool)

(assert (=> b!7968944 (= e!4698803 tp!2375458)))

(declare-fun b!7968945 () Bool)

(declare-fun tp!2375461 () Bool)

(declare-fun tp!2375462 () Bool)

(assert (=> b!7968945 (= e!4698803 (and tp!2375461 tp!2375462))))

(declare-fun b!7968943 () Bool)

(declare-fun tp!2375459 () Bool)

(declare-fun tp!2375460 () Bool)

(assert (=> b!7968943 (= e!4698803 (and tp!2375459 tp!2375460))))

(assert (=> b!7968512 (= tp!2375346 e!4698803)))

(assert (= (and b!7968512 ((_ is ElementMatch!21519) (regTwo!43551 r!24602))) b!7968942))

(assert (= (and b!7968512 ((_ is Concat!30518) (regTwo!43551 r!24602))) b!7968943))

(assert (= (and b!7968512 ((_ is Star!21519) (regTwo!43551 r!24602))) b!7968944))

(assert (= (and b!7968512 ((_ is Union!21519) (regTwo!43551 r!24602))) b!7968945))

(declare-fun b!7968946 () Bool)

(declare-fun e!4698804 () Bool)

(assert (=> b!7968946 (= e!4698804 tp_is_empty!53581)))

(declare-fun b!7968948 () Bool)

(declare-fun tp!2375463 () Bool)

(assert (=> b!7968948 (= e!4698804 tp!2375463)))

(declare-fun b!7968949 () Bool)

(declare-fun tp!2375466 () Bool)

(declare-fun tp!2375467 () Bool)

(assert (=> b!7968949 (= e!4698804 (and tp!2375466 tp!2375467))))

(declare-fun b!7968947 () Bool)

(declare-fun tp!2375464 () Bool)

(declare-fun tp!2375465 () Bool)

(assert (=> b!7968947 (= e!4698804 (and tp!2375464 tp!2375465))))

(assert (=> b!7968519 (= tp!2375348 e!4698804)))

(assert (= (and b!7968519 ((_ is ElementMatch!21519) (regOne!43551 baseR!116))) b!7968946))

(assert (= (and b!7968519 ((_ is Concat!30518) (regOne!43551 baseR!116))) b!7968947))

(assert (= (and b!7968519 ((_ is Star!21519) (regOne!43551 baseR!116))) b!7968948))

(assert (= (and b!7968519 ((_ is Union!21519) (regOne!43551 baseR!116))) b!7968949))

(declare-fun b!7968950 () Bool)

(declare-fun e!4698805 () Bool)

(assert (=> b!7968950 (= e!4698805 tp_is_empty!53581)))

(declare-fun b!7968952 () Bool)

(declare-fun tp!2375468 () Bool)

(assert (=> b!7968952 (= e!4698805 tp!2375468)))

(declare-fun b!7968953 () Bool)

(declare-fun tp!2375471 () Bool)

(declare-fun tp!2375472 () Bool)

(assert (=> b!7968953 (= e!4698805 (and tp!2375471 tp!2375472))))

(declare-fun b!7968951 () Bool)

(declare-fun tp!2375469 () Bool)

(declare-fun tp!2375470 () Bool)

(assert (=> b!7968951 (= e!4698805 (and tp!2375469 tp!2375470))))

(assert (=> b!7968519 (= tp!2375350 e!4698805)))

(assert (= (and b!7968519 ((_ is ElementMatch!21519) (regTwo!43551 baseR!116))) b!7968950))

(assert (= (and b!7968519 ((_ is Concat!30518) (regTwo!43551 baseR!116))) b!7968951))

(assert (= (and b!7968519 ((_ is Star!21519) (regTwo!43551 baseR!116))) b!7968952))

(assert (= (and b!7968519 ((_ is Union!21519) (regTwo!43551 baseR!116))) b!7968953))

(declare-fun b!7968954 () Bool)

(declare-fun e!4698806 () Bool)

(assert (=> b!7968954 (= e!4698806 tp_is_empty!53581)))

(declare-fun b!7968956 () Bool)

(declare-fun tp!2375473 () Bool)

(assert (=> b!7968956 (= e!4698806 tp!2375473)))

(declare-fun b!7968957 () Bool)

(declare-fun tp!2375476 () Bool)

(declare-fun tp!2375477 () Bool)

(assert (=> b!7968957 (= e!4698806 (and tp!2375476 tp!2375477))))

(declare-fun b!7968955 () Bool)

(declare-fun tp!2375474 () Bool)

(declare-fun tp!2375475 () Bool)

(assert (=> b!7968955 (= e!4698806 (and tp!2375474 tp!2375475))))

(assert (=> b!7968515 (= tp!2375347 e!4698806)))

(assert (= (and b!7968515 ((_ is ElementMatch!21519) (reg!21848 baseR!116))) b!7968954))

(assert (= (and b!7968515 ((_ is Concat!30518) (reg!21848 baseR!116))) b!7968955))

(assert (= (and b!7968515 ((_ is Star!21519) (reg!21848 baseR!116))) b!7968956))

(assert (= (and b!7968515 ((_ is Union!21519) (reg!21848 baseR!116))) b!7968957))

(declare-fun b!7968958 () Bool)

(declare-fun e!4698807 () Bool)

(declare-fun tp!2375478 () Bool)

(assert (=> b!7968958 (= e!4698807 (and tp_is_empty!53581 tp!2375478))))

(assert (=> b!7968510 (= tp!2375343 e!4698807)))

(assert (= (and b!7968510 ((_ is Cons!74624) (t!390491 input!7927))) b!7968958))

(check-sat (not b!7968925) (not b!7968933) (not d!2379572) (not b!7968914) (not b!7968940) (not b!7968939) (not b!7968544) (not bm!739292) (not b!7968949) (not d!2379648) (not b!7968587) (not bm!739293) (not b!7968928) (not b!7968929) (not d!2379592) (not b!7968887) (not bm!739289) (not b!7968952) (not d!2379586) (not b!7968642) (not b!7968943) (not b!7968876) (not b!7968665) (not b!7968927) (not b!7968951) (not bm!739314) (not bm!739363) (not bm!739359) (not b!7968575) (not b!7968941) (not bm!739364) (not b!7968931) (not bm!739365) (not d!2379616) (not b!7968897) (not b!7968957) (not b!7968937) (not d!2379612) (not b!7968902) (not bm!739290) (not bm!739362) (not b!7968893) (not b!7968919) (not b!7968956) (not b!7968545) (not d!2379628) (not b!7968576) (not d!2379632) (not b!7968896) (not bm!739360) (not b!7968953) (not b!7968719) (not b!7968915) (not b!7968945) (not d!2379568) (not b!7968884) (not b!7968944) (not b!7968885) (not b!7968932) (not bm!739361) (not b!7968948) (not b!7968901) (not b!7968588) (not b!7968900) (not b!7968918) (not b!7968651) (not d!2379584) (not d!2379638) (not b!7968746) (not bm!739316) (not b!7968947) (not b!7968935) (not b!7968920) (not b!7968955) (not b!7968958) (not bm!739358) (not b!7968589) (not b!7968574) (not b!7968936) (not d!2379644) (not b!7968916) tp_is_empty!53581)
(check-sat)
