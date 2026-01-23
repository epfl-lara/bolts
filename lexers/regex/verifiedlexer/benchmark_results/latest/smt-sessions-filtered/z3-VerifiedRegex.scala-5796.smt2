; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286036 () Bool)

(assert start!286036)

(declare-fun res!1216615 () Bool)

(declare-fun e!1857171 () Bool)

(assert (=> start!286036 (=> (not res!1216615) (not e!1857171))))

(declare-datatypes ((C!18472 0))(
  ( (C!18473 (val!11272 Int)) )
))
(declare-datatypes ((Regex!9143 0))(
  ( (ElementMatch!9143 (c!482455 C!18472)) (Concat!14464 (regOne!18798 Regex!9143) (regTwo!18798 Regex!9143)) (EmptyExpr!9143) (Star!9143 (reg!9472 Regex!9143)) (EmptyLang!9143) (Union!9143 (regOne!18799 Regex!9143) (regTwo!18799 Regex!9143)) )
))
(declare-fun r!17423 () Regex!9143)

(declare-fun validRegex!3876 (Regex!9143) Bool)

(assert (=> start!286036 (= res!1216615 (validRegex!3876 r!17423))))

(assert (=> start!286036 e!1857171))

(declare-fun e!1857173 () Bool)

(assert (=> start!286036 e!1857173))

(declare-fun e!1857172 () Bool)

(assert (=> start!286036 e!1857172))

(declare-fun b!2948317 () Bool)

(declare-fun res!1216617 () Bool)

(declare-fun e!1857170 () Bool)

(assert (=> b!2948317 (=> res!1216617 e!1857170)))

(declare-fun lt!1031569 () Regex!9143)

(declare-fun isEmptyExpr!346 (Regex!9143) Bool)

(assert (=> b!2948317 (= res!1216617 (isEmptyExpr!346 lt!1031569))))

(declare-fun b!2948318 () Bool)

(declare-fun tp_is_empty!15849 () Bool)

(declare-fun tp!942782 () Bool)

(assert (=> b!2948318 (= e!1857172 (and tp_is_empty!15849 tp!942782))))

(declare-fun b!2948319 () Bool)

(declare-fun e!1857174 () Bool)

(assert (=> b!2948319 (= e!1857171 (not e!1857174))))

(declare-fun res!1216612 () Bool)

(assert (=> b!2948319 (=> res!1216612 e!1857174)))

(declare-fun lt!1031567 () Bool)

(get-info :version)

(assert (=> b!2948319 (= res!1216612 (or lt!1031567 (not ((_ is Concat!14464) r!17423))))))

(declare-datatypes ((List!35008 0))(
  ( (Nil!34884) (Cons!34884 (h!40304 C!18472) (t!234073 List!35008)) )
))
(declare-fun s!11993 () List!35008)

(declare-fun matchRSpec!1280 (Regex!9143 List!35008) Bool)

(assert (=> b!2948319 (= lt!1031567 (matchRSpec!1280 r!17423 s!11993))))

(declare-fun matchR!4025 (Regex!9143 List!35008) Bool)

(assert (=> b!2948319 (= lt!1031567 (matchR!4025 r!17423 s!11993))))

(declare-datatypes ((Unit!48665 0))(
  ( (Unit!48666) )
))
(declare-fun lt!1031568 () Unit!48665)

(declare-fun mainMatchTheorem!1280 (Regex!9143 List!35008) Unit!48665)

(assert (=> b!2948319 (= lt!1031568 (mainMatchTheorem!1280 r!17423 s!11993))))

(declare-fun b!2948320 () Bool)

(assert (=> b!2948320 (= e!1857174 e!1857170)))

(declare-fun res!1216618 () Bool)

(assert (=> b!2948320 (=> res!1216618 e!1857170)))

(declare-fun lt!1031571 () Regex!9143)

(declare-fun isEmptyLang!265 (Regex!9143) Bool)

(assert (=> b!2948320 (= res!1216618 (isEmptyLang!265 lt!1031571))))

(declare-fun simplify!148 (Regex!9143) Regex!9143)

(assert (=> b!2948320 (= lt!1031569 (simplify!148 (regTwo!18798 r!17423)))))

(assert (=> b!2948320 (= lt!1031571 (simplify!148 (regOne!18798 r!17423)))))

(declare-fun b!2948321 () Bool)

(declare-fun e!1857175 () Bool)

(assert (=> b!2948321 (= e!1857175 (validRegex!3876 (regOne!18798 r!17423)))))

(declare-fun lt!1031566 () Regex!9143)

(assert (=> b!2948321 (matchRSpec!1280 lt!1031566 s!11993)))

(declare-fun lt!1031570 () Unit!48665)

(assert (=> b!2948321 (= lt!1031570 (mainMatchTheorem!1280 lt!1031566 s!11993))))

(declare-fun b!2948322 () Bool)

(declare-fun res!1216616 () Bool)

(assert (=> b!2948322 (=> res!1216616 e!1857170)))

(assert (=> b!2948322 (= res!1216616 (isEmptyLang!265 lt!1031569))))

(declare-fun b!2948323 () Bool)

(declare-fun tp!942785 () Bool)

(declare-fun tp!942784 () Bool)

(assert (=> b!2948323 (= e!1857173 (and tp!942785 tp!942784))))

(declare-fun b!2948324 () Bool)

(assert (=> b!2948324 (= e!1857170 e!1857175)))

(declare-fun res!1216614 () Bool)

(assert (=> b!2948324 (=> res!1216614 e!1857175)))

(assert (=> b!2948324 (= res!1216614 (not (matchR!4025 lt!1031566 s!11993)))))

(assert (=> b!2948324 (= lt!1031566 (Concat!14464 lt!1031571 lt!1031569))))

(declare-fun b!2948325 () Bool)

(declare-fun res!1216613 () Bool)

(assert (=> b!2948325 (=> res!1216613 e!1857174)))

(declare-fun isEmpty!19145 (List!35008) Bool)

(assert (=> b!2948325 (= res!1216613 (isEmpty!19145 s!11993))))

(declare-fun b!2948326 () Bool)

(declare-fun tp!942781 () Bool)

(declare-fun tp!942780 () Bool)

(assert (=> b!2948326 (= e!1857173 (and tp!942781 tp!942780))))

(declare-fun b!2948327 () Bool)

(declare-fun tp!942783 () Bool)

(assert (=> b!2948327 (= e!1857173 tp!942783)))

(declare-fun b!2948328 () Bool)

(declare-fun res!1216611 () Bool)

(assert (=> b!2948328 (=> res!1216611 e!1857170)))

(assert (=> b!2948328 (= res!1216611 (isEmptyExpr!346 lt!1031571))))

(declare-fun b!2948329 () Bool)

(assert (=> b!2948329 (= e!1857173 tp_is_empty!15849)))

(assert (= (and start!286036 res!1216615) b!2948319))

(assert (= (and b!2948319 (not res!1216612)) b!2948325))

(assert (= (and b!2948325 (not res!1216613)) b!2948320))

(assert (= (and b!2948320 (not res!1216618)) b!2948322))

(assert (= (and b!2948322 (not res!1216616)) b!2948328))

(assert (= (and b!2948328 (not res!1216611)) b!2948317))

(assert (= (and b!2948317 (not res!1216617)) b!2948324))

(assert (= (and b!2948324 (not res!1216614)) b!2948321))

(assert (= (and start!286036 ((_ is ElementMatch!9143) r!17423)) b!2948329))

(assert (= (and start!286036 ((_ is Concat!14464) r!17423)) b!2948326))

(assert (= (and start!286036 ((_ is Star!9143) r!17423)) b!2948327))

(assert (= (and start!286036 ((_ is Union!9143) r!17423)) b!2948323))

(assert (= (and start!286036 ((_ is Cons!34884) s!11993)) b!2948318))

(declare-fun m!3328599 () Bool)

(assert (=> b!2948320 m!3328599))

(declare-fun m!3328601 () Bool)

(assert (=> b!2948320 m!3328601))

(declare-fun m!3328603 () Bool)

(assert (=> b!2948320 m!3328603))

(declare-fun m!3328605 () Bool)

(assert (=> b!2948328 m!3328605))

(declare-fun m!3328607 () Bool)

(assert (=> b!2948324 m!3328607))

(declare-fun m!3328609 () Bool)

(assert (=> start!286036 m!3328609))

(declare-fun m!3328611 () Bool)

(assert (=> b!2948319 m!3328611))

(declare-fun m!3328613 () Bool)

(assert (=> b!2948319 m!3328613))

(declare-fun m!3328615 () Bool)

(assert (=> b!2948319 m!3328615))

(declare-fun m!3328617 () Bool)

(assert (=> b!2948317 m!3328617))

(declare-fun m!3328619 () Bool)

(assert (=> b!2948322 m!3328619))

(declare-fun m!3328621 () Bool)

(assert (=> b!2948325 m!3328621))

(declare-fun m!3328623 () Bool)

(assert (=> b!2948321 m!3328623))

(declare-fun m!3328625 () Bool)

(assert (=> b!2948321 m!3328625))

(declare-fun m!3328627 () Bool)

(assert (=> b!2948321 m!3328627))

(check-sat (not b!2948326) (not b!2948322) (not start!286036) (not b!2948324) (not b!2948318) (not b!2948323) (not b!2948328) (not b!2948317) (not b!2948321) (not b!2948319) (not b!2948320) (not b!2948327) (not b!2948325) tp_is_empty!15849)
(check-sat)
(get-model)

(declare-fun d!840763 () Bool)

(assert (=> d!840763 (= (isEmptyLang!265 lt!1031571) ((_ is EmptyLang!9143) lt!1031571))))

(assert (=> b!2948320 d!840763))

(declare-fun b!2948438 () Bool)

(declare-fun e!1857247 () Bool)

(declare-fun lt!1031584 () Regex!9143)

(declare-fun nullable!2903 (Regex!9143) Bool)

(assert (=> b!2948438 (= e!1857247 (= (nullable!2903 lt!1031584) (nullable!2903 (regTwo!18798 r!17423))))))

(declare-fun b!2948439 () Bool)

(declare-fun e!1857257 () Regex!9143)

(assert (=> b!2948439 (= e!1857257 EmptyExpr!9143)))

(declare-fun b!2948440 () Bool)

(declare-fun c!482494 () Bool)

(declare-fun e!1857253 () Bool)

(assert (=> b!2948440 (= c!482494 e!1857253)))

(declare-fun res!1216653 () Bool)

(assert (=> b!2948440 (=> res!1216653 e!1857253)))

(declare-fun call!194697 () Bool)

(assert (=> b!2948440 (= res!1216653 call!194697)))

(declare-fun lt!1031586 () Regex!9143)

(declare-fun call!194699 () Regex!9143)

(assert (=> b!2948440 (= lt!1031586 call!194699)))

(declare-fun e!1857254 () Regex!9143)

(assert (=> b!2948440 (= e!1857254 e!1857257)))

(declare-fun b!2948441 () Bool)

(assert (=> b!2948441 (= e!1857257 (Star!9143 lt!1031586))))

(declare-fun b!2948443 () Bool)

(declare-fun e!1857248 () Regex!9143)

(declare-fun e!1857250 () Regex!9143)

(assert (=> b!2948443 (= e!1857248 e!1857250)))

(declare-fun c!482502 () Bool)

(declare-fun call!194700 () Bool)

(assert (=> b!2948443 (= c!482502 call!194700)))

(declare-fun bm!194690 () Bool)

(declare-fun lt!1031589 () Regex!9143)

(declare-fun c!482495 () Bool)

(assert (=> bm!194690 (= call!194700 (isEmptyExpr!346 (ite c!482495 lt!1031586 lt!1031589)))))

(declare-fun bm!194691 () Bool)

(declare-fun call!194701 () Bool)

(assert (=> bm!194691 (= call!194701 call!194697)))

(declare-fun lt!1031587 () Regex!9143)

(declare-fun bm!194692 () Bool)

(declare-fun c!482499 () Bool)

(assert (=> bm!194692 (= call!194697 (isEmptyLang!265 (ite c!482495 lt!1031586 (ite c!482499 lt!1031587 lt!1031589))))))

(declare-fun bm!194693 () Bool)

(declare-fun call!194696 () Regex!9143)

(assert (=> bm!194693 (= call!194696 (simplify!148 (ite c!482499 (regTwo!18799 (regTwo!18798 r!17423)) (regOne!18798 (regTwo!18798 r!17423)))))))

(declare-fun b!2948444 () Bool)

(declare-fun c!482496 () Bool)

(declare-fun lt!1031585 () Regex!9143)

(assert (=> b!2948444 (= c!482496 (isEmptyExpr!346 lt!1031585))))

(declare-fun e!1857249 () Regex!9143)

(assert (=> b!2948444 (= e!1857249 e!1857248)))

(declare-fun b!2948445 () Bool)

(declare-fun e!1857259 () Regex!9143)

(assert (=> b!2948445 (= e!1857259 e!1857249)))

(assert (=> b!2948445 (= lt!1031585 call!194696)))

(declare-fun call!194695 () Regex!9143)

(assert (=> b!2948445 (= lt!1031589 call!194695)))

(declare-fun res!1216652 () Bool)

(declare-fun call!194698 () Bool)

(assert (=> b!2948445 (= res!1216652 call!194698)))

(declare-fun e!1857246 () Bool)

(assert (=> b!2948445 (=> res!1216652 e!1857246)))

(declare-fun c!482500 () Bool)

(assert (=> b!2948445 (= c!482500 e!1857246)))

(declare-fun b!2948446 () Bool)

(declare-fun e!1857258 () Regex!9143)

(assert (=> b!2948446 (= e!1857258 EmptyExpr!9143)))

(declare-fun b!2948447 () Bool)

(assert (=> b!2948447 (= e!1857258 e!1857254)))

(assert (=> b!2948447 (= c!482495 ((_ is Star!9143) (regTwo!18798 r!17423)))))

(declare-fun b!2948448 () Bool)

(declare-fun e!1857251 () Regex!9143)

(declare-fun lt!1031588 () Regex!9143)

(assert (=> b!2948448 (= e!1857251 (Union!9143 lt!1031588 lt!1031587))))

(declare-fun b!2948449 () Bool)

(assert (=> b!2948449 (= e!1857250 lt!1031585)))

(declare-fun b!2948450 () Bool)

(declare-fun e!1857255 () Regex!9143)

(assert (=> b!2948450 (= e!1857255 EmptyLang!9143)))

(declare-fun b!2948451 () Bool)

(assert (=> b!2948451 (= c!482499 ((_ is Union!9143) (regTwo!18798 r!17423)))))

(assert (=> b!2948451 (= e!1857254 e!1857259)))

(declare-fun bm!194694 () Bool)

(assert (=> bm!194694 (= call!194698 (isEmptyLang!265 (ite c!482499 lt!1031588 lt!1031585)))))

(declare-fun b!2948452 () Bool)

(declare-fun e!1857256 () Regex!9143)

(assert (=> b!2948452 (= e!1857256 lt!1031587)))

(declare-fun b!2948453 () Bool)

(assert (=> b!2948453 (= e!1857249 EmptyLang!9143)))

(declare-fun bm!194695 () Bool)

(assert (=> bm!194695 (= call!194695 call!194699)))

(declare-fun b!2948454 () Bool)

(assert (=> b!2948454 (= e!1857246 call!194701)))

(declare-fun b!2948455 () Bool)

(declare-fun c!482497 () Bool)

(assert (=> b!2948455 (= c!482497 ((_ is EmptyExpr!9143) (regTwo!18798 r!17423)))))

(declare-fun e!1857252 () Regex!9143)

(assert (=> b!2948455 (= e!1857252 e!1857258)))

(declare-fun d!840765 () Bool)

(assert (=> d!840765 e!1857247))

(declare-fun res!1216651 () Bool)

(assert (=> d!840765 (=> (not res!1216651) (not e!1857247))))

(assert (=> d!840765 (= res!1216651 (validRegex!3876 lt!1031584))))

(assert (=> d!840765 (= lt!1031584 e!1857255)))

(declare-fun c!482504 () Bool)

(assert (=> d!840765 (= c!482504 ((_ is EmptyLang!9143) (regTwo!18798 r!17423)))))

(assert (=> d!840765 (validRegex!3876 (regTwo!18798 r!17423))))

(assert (=> d!840765 (= (simplify!148 (regTwo!18798 r!17423)) lt!1031584)))

(declare-fun b!2948442 () Bool)

(declare-fun c!482503 () Bool)

(assert (=> b!2948442 (= c!482503 call!194701)))

(assert (=> b!2948442 (= e!1857256 e!1857251)))

(declare-fun b!2948456 () Bool)

(assert (=> b!2948456 (= e!1857255 e!1857252)))

(declare-fun c!482501 () Bool)

(assert (=> b!2948456 (= c!482501 ((_ is ElementMatch!9143) (regTwo!18798 r!17423)))))

(declare-fun bm!194696 () Bool)

(assert (=> bm!194696 (= call!194699 (simplify!148 (ite c!482495 (reg!9472 (regTwo!18798 r!17423)) (ite c!482499 (regOne!18799 (regTwo!18798 r!17423)) (regTwo!18798 (regTwo!18798 r!17423))))))))

(declare-fun b!2948457 () Bool)

(assert (=> b!2948457 (= e!1857248 lt!1031589)))

(declare-fun b!2948458 () Bool)

(assert (=> b!2948458 (= e!1857252 (regTwo!18798 r!17423))))

(declare-fun b!2948459 () Bool)

(assert (=> b!2948459 (= e!1857251 lt!1031588)))

(declare-fun b!2948460 () Bool)

(assert (=> b!2948460 (= e!1857253 call!194700)))

(declare-fun b!2948461 () Bool)

(assert (=> b!2948461 (= e!1857259 e!1857256)))

(assert (=> b!2948461 (= lt!1031588 call!194695)))

(assert (=> b!2948461 (= lt!1031587 call!194696)))

(declare-fun c!482498 () Bool)

(assert (=> b!2948461 (= c!482498 call!194698)))

(declare-fun b!2948462 () Bool)

(assert (=> b!2948462 (= e!1857250 (Concat!14464 lt!1031585 lt!1031589))))

(assert (= (and d!840765 c!482504) b!2948450))

(assert (= (and d!840765 (not c!482504)) b!2948456))

(assert (= (and b!2948456 c!482501) b!2948458))

(assert (= (and b!2948456 (not c!482501)) b!2948455))

(assert (= (and b!2948455 c!482497) b!2948446))

(assert (= (and b!2948455 (not c!482497)) b!2948447))

(assert (= (and b!2948447 c!482495) b!2948440))

(assert (= (and b!2948447 (not c!482495)) b!2948451))

(assert (= (and b!2948440 (not res!1216653)) b!2948460))

(assert (= (and b!2948440 c!482494) b!2948439))

(assert (= (and b!2948440 (not c!482494)) b!2948441))

(assert (= (and b!2948451 c!482499) b!2948461))

(assert (= (and b!2948451 (not c!482499)) b!2948445))

(assert (= (and b!2948461 c!482498) b!2948452))

(assert (= (and b!2948461 (not c!482498)) b!2948442))

(assert (= (and b!2948442 c!482503) b!2948459))

(assert (= (and b!2948442 (not c!482503)) b!2948448))

(assert (= (and b!2948445 (not res!1216652)) b!2948454))

(assert (= (and b!2948445 c!482500) b!2948453))

(assert (= (and b!2948445 (not c!482500)) b!2948444))

(assert (= (and b!2948444 c!482496) b!2948457))

(assert (= (and b!2948444 (not c!482496)) b!2948443))

(assert (= (and b!2948443 c!482502) b!2948449))

(assert (= (and b!2948443 (not c!482502)) b!2948462))

(assert (= (or b!2948461 b!2948445) bm!194695))

(assert (= (or b!2948461 b!2948445) bm!194693))

(assert (= (or b!2948442 b!2948454) bm!194691))

(assert (= (or b!2948461 b!2948445) bm!194694))

(assert (= (or b!2948460 b!2948443) bm!194690))

(assert (= (or b!2948440 bm!194695) bm!194696))

(assert (= (or b!2948440 bm!194691) bm!194692))

(assert (= (and d!840765 res!1216651) b!2948438))

(declare-fun m!3328641 () Bool)

(assert (=> bm!194690 m!3328641))

(declare-fun m!3328643 () Bool)

(assert (=> bm!194693 m!3328643))

(declare-fun m!3328645 () Bool)

(assert (=> d!840765 m!3328645))

(declare-fun m!3328647 () Bool)

(assert (=> d!840765 m!3328647))

(declare-fun m!3328649 () Bool)

(assert (=> b!2948444 m!3328649))

(declare-fun m!3328651 () Bool)

(assert (=> b!2948438 m!3328651))

(declare-fun m!3328653 () Bool)

(assert (=> b!2948438 m!3328653))

(declare-fun m!3328655 () Bool)

(assert (=> bm!194692 m!3328655))

(declare-fun m!3328657 () Bool)

(assert (=> bm!194696 m!3328657))

(declare-fun m!3328659 () Bool)

(assert (=> bm!194694 m!3328659))

(assert (=> b!2948320 d!840765))

(declare-fun b!2948463 () Bool)

(declare-fun e!1857261 () Bool)

(declare-fun lt!1031590 () Regex!9143)

(assert (=> b!2948463 (= e!1857261 (= (nullable!2903 lt!1031590) (nullable!2903 (regOne!18798 r!17423))))))

(declare-fun b!2948464 () Bool)

(declare-fun e!1857271 () Regex!9143)

(assert (=> b!2948464 (= e!1857271 EmptyExpr!9143)))

(declare-fun b!2948465 () Bool)

(declare-fun c!482505 () Bool)

(declare-fun e!1857267 () Bool)

(assert (=> b!2948465 (= c!482505 e!1857267)))

(declare-fun res!1216656 () Bool)

(assert (=> b!2948465 (=> res!1216656 e!1857267)))

(declare-fun call!194704 () Bool)

(assert (=> b!2948465 (= res!1216656 call!194704)))

(declare-fun lt!1031592 () Regex!9143)

(declare-fun call!194706 () Regex!9143)

(assert (=> b!2948465 (= lt!1031592 call!194706)))

(declare-fun e!1857268 () Regex!9143)

(assert (=> b!2948465 (= e!1857268 e!1857271)))

(declare-fun b!2948466 () Bool)

(assert (=> b!2948466 (= e!1857271 (Star!9143 lt!1031592))))

(declare-fun b!2948468 () Bool)

(declare-fun e!1857262 () Regex!9143)

(declare-fun e!1857264 () Regex!9143)

(assert (=> b!2948468 (= e!1857262 e!1857264)))

(declare-fun c!482513 () Bool)

(declare-fun call!194707 () Bool)

(assert (=> b!2948468 (= c!482513 call!194707)))

(declare-fun lt!1031595 () Regex!9143)

(declare-fun bm!194697 () Bool)

(declare-fun c!482506 () Bool)

(assert (=> bm!194697 (= call!194707 (isEmptyExpr!346 (ite c!482506 lt!1031592 lt!1031595)))))

(declare-fun bm!194698 () Bool)

(declare-fun call!194708 () Bool)

(assert (=> bm!194698 (= call!194708 call!194704)))

(declare-fun bm!194699 () Bool)

(declare-fun c!482510 () Bool)

(declare-fun lt!1031593 () Regex!9143)

(assert (=> bm!194699 (= call!194704 (isEmptyLang!265 (ite c!482506 lt!1031592 (ite c!482510 lt!1031593 lt!1031595))))))

(declare-fun bm!194700 () Bool)

(declare-fun call!194703 () Regex!9143)

(assert (=> bm!194700 (= call!194703 (simplify!148 (ite c!482510 (regTwo!18799 (regOne!18798 r!17423)) (regOne!18798 (regOne!18798 r!17423)))))))

(declare-fun b!2948469 () Bool)

(declare-fun c!482507 () Bool)

(declare-fun lt!1031591 () Regex!9143)

(assert (=> b!2948469 (= c!482507 (isEmptyExpr!346 lt!1031591))))

(declare-fun e!1857263 () Regex!9143)

(assert (=> b!2948469 (= e!1857263 e!1857262)))

(declare-fun b!2948470 () Bool)

(declare-fun e!1857273 () Regex!9143)

(assert (=> b!2948470 (= e!1857273 e!1857263)))

(assert (=> b!2948470 (= lt!1031591 call!194703)))

(declare-fun call!194702 () Regex!9143)

(assert (=> b!2948470 (= lt!1031595 call!194702)))

(declare-fun res!1216655 () Bool)

(declare-fun call!194705 () Bool)

(assert (=> b!2948470 (= res!1216655 call!194705)))

(declare-fun e!1857260 () Bool)

(assert (=> b!2948470 (=> res!1216655 e!1857260)))

(declare-fun c!482511 () Bool)

(assert (=> b!2948470 (= c!482511 e!1857260)))

(declare-fun b!2948471 () Bool)

(declare-fun e!1857272 () Regex!9143)

(assert (=> b!2948471 (= e!1857272 EmptyExpr!9143)))

(declare-fun b!2948472 () Bool)

(assert (=> b!2948472 (= e!1857272 e!1857268)))

(assert (=> b!2948472 (= c!482506 ((_ is Star!9143) (regOne!18798 r!17423)))))

(declare-fun b!2948473 () Bool)

(declare-fun e!1857265 () Regex!9143)

(declare-fun lt!1031594 () Regex!9143)

(assert (=> b!2948473 (= e!1857265 (Union!9143 lt!1031594 lt!1031593))))

(declare-fun b!2948474 () Bool)

(assert (=> b!2948474 (= e!1857264 lt!1031591)))

(declare-fun b!2948475 () Bool)

(declare-fun e!1857269 () Regex!9143)

(assert (=> b!2948475 (= e!1857269 EmptyLang!9143)))

(declare-fun b!2948476 () Bool)

(assert (=> b!2948476 (= c!482510 ((_ is Union!9143) (regOne!18798 r!17423)))))

(assert (=> b!2948476 (= e!1857268 e!1857273)))

(declare-fun bm!194701 () Bool)

(assert (=> bm!194701 (= call!194705 (isEmptyLang!265 (ite c!482510 lt!1031594 lt!1031591)))))

(declare-fun b!2948477 () Bool)

(declare-fun e!1857270 () Regex!9143)

(assert (=> b!2948477 (= e!1857270 lt!1031593)))

(declare-fun b!2948478 () Bool)

(assert (=> b!2948478 (= e!1857263 EmptyLang!9143)))

(declare-fun bm!194702 () Bool)

(assert (=> bm!194702 (= call!194702 call!194706)))

(declare-fun b!2948479 () Bool)

(assert (=> b!2948479 (= e!1857260 call!194708)))

(declare-fun b!2948480 () Bool)

(declare-fun c!482508 () Bool)

(assert (=> b!2948480 (= c!482508 ((_ is EmptyExpr!9143) (regOne!18798 r!17423)))))

(declare-fun e!1857266 () Regex!9143)

(assert (=> b!2948480 (= e!1857266 e!1857272)))

(declare-fun d!840771 () Bool)

(assert (=> d!840771 e!1857261))

(declare-fun res!1216654 () Bool)

(assert (=> d!840771 (=> (not res!1216654) (not e!1857261))))

(assert (=> d!840771 (= res!1216654 (validRegex!3876 lt!1031590))))

(assert (=> d!840771 (= lt!1031590 e!1857269)))

(declare-fun c!482515 () Bool)

(assert (=> d!840771 (= c!482515 ((_ is EmptyLang!9143) (regOne!18798 r!17423)))))

(assert (=> d!840771 (validRegex!3876 (regOne!18798 r!17423))))

(assert (=> d!840771 (= (simplify!148 (regOne!18798 r!17423)) lt!1031590)))

(declare-fun b!2948467 () Bool)

(declare-fun c!482514 () Bool)

(assert (=> b!2948467 (= c!482514 call!194708)))

(assert (=> b!2948467 (= e!1857270 e!1857265)))

(declare-fun b!2948481 () Bool)

(assert (=> b!2948481 (= e!1857269 e!1857266)))

(declare-fun c!482512 () Bool)

(assert (=> b!2948481 (= c!482512 ((_ is ElementMatch!9143) (regOne!18798 r!17423)))))

(declare-fun bm!194703 () Bool)

(assert (=> bm!194703 (= call!194706 (simplify!148 (ite c!482506 (reg!9472 (regOne!18798 r!17423)) (ite c!482510 (regOne!18799 (regOne!18798 r!17423)) (regTwo!18798 (regOne!18798 r!17423))))))))

(declare-fun b!2948482 () Bool)

(assert (=> b!2948482 (= e!1857262 lt!1031595)))

(declare-fun b!2948483 () Bool)

(assert (=> b!2948483 (= e!1857266 (regOne!18798 r!17423))))

(declare-fun b!2948484 () Bool)

(assert (=> b!2948484 (= e!1857265 lt!1031594)))

(declare-fun b!2948485 () Bool)

(assert (=> b!2948485 (= e!1857267 call!194707)))

(declare-fun b!2948486 () Bool)

(assert (=> b!2948486 (= e!1857273 e!1857270)))

(assert (=> b!2948486 (= lt!1031594 call!194702)))

(assert (=> b!2948486 (= lt!1031593 call!194703)))

(declare-fun c!482509 () Bool)

(assert (=> b!2948486 (= c!482509 call!194705)))

(declare-fun b!2948487 () Bool)

(assert (=> b!2948487 (= e!1857264 (Concat!14464 lt!1031591 lt!1031595))))

(assert (= (and d!840771 c!482515) b!2948475))

(assert (= (and d!840771 (not c!482515)) b!2948481))

(assert (= (and b!2948481 c!482512) b!2948483))

(assert (= (and b!2948481 (not c!482512)) b!2948480))

(assert (= (and b!2948480 c!482508) b!2948471))

(assert (= (and b!2948480 (not c!482508)) b!2948472))

(assert (= (and b!2948472 c!482506) b!2948465))

(assert (= (and b!2948472 (not c!482506)) b!2948476))

(assert (= (and b!2948465 (not res!1216656)) b!2948485))

(assert (= (and b!2948465 c!482505) b!2948464))

(assert (= (and b!2948465 (not c!482505)) b!2948466))

(assert (= (and b!2948476 c!482510) b!2948486))

(assert (= (and b!2948476 (not c!482510)) b!2948470))

(assert (= (and b!2948486 c!482509) b!2948477))

(assert (= (and b!2948486 (not c!482509)) b!2948467))

(assert (= (and b!2948467 c!482514) b!2948484))

(assert (= (and b!2948467 (not c!482514)) b!2948473))

(assert (= (and b!2948470 (not res!1216655)) b!2948479))

(assert (= (and b!2948470 c!482511) b!2948478))

(assert (= (and b!2948470 (not c!482511)) b!2948469))

(assert (= (and b!2948469 c!482507) b!2948482))

(assert (= (and b!2948469 (not c!482507)) b!2948468))

(assert (= (and b!2948468 c!482513) b!2948474))

(assert (= (and b!2948468 (not c!482513)) b!2948487))

(assert (= (or b!2948486 b!2948470) bm!194702))

(assert (= (or b!2948486 b!2948470) bm!194700))

(assert (= (or b!2948467 b!2948479) bm!194698))

(assert (= (or b!2948486 b!2948470) bm!194701))

(assert (= (or b!2948485 b!2948468) bm!194697))

(assert (= (or b!2948465 bm!194702) bm!194703))

(assert (= (or b!2948465 bm!194698) bm!194699))

(assert (= (and d!840771 res!1216654) b!2948463))

(declare-fun m!3328661 () Bool)

(assert (=> bm!194697 m!3328661))

(declare-fun m!3328663 () Bool)

(assert (=> bm!194700 m!3328663))

(declare-fun m!3328665 () Bool)

(assert (=> d!840771 m!3328665))

(assert (=> d!840771 m!3328623))

(declare-fun m!3328667 () Bool)

(assert (=> b!2948469 m!3328667))

(declare-fun m!3328669 () Bool)

(assert (=> b!2948463 m!3328669))

(declare-fun m!3328671 () Bool)

(assert (=> b!2948463 m!3328671))

(declare-fun m!3328673 () Bool)

(assert (=> bm!194699 m!3328673))

(declare-fun m!3328675 () Bool)

(assert (=> bm!194703 m!3328675))

(declare-fun m!3328677 () Bool)

(assert (=> bm!194701 m!3328677))

(assert (=> b!2948320 d!840771))

(declare-fun d!840773 () Bool)

(assert (=> d!840773 (= (isEmpty!19145 s!11993) ((_ is Nil!34884) s!11993))))

(assert (=> b!2948325 d!840773))

(declare-fun b!2948757 () Bool)

(assert (=> b!2948757 true))

(assert (=> b!2948757 true))

(declare-fun bs!525613 () Bool)

(declare-fun b!2948748 () Bool)

(assert (= bs!525613 (and b!2948748 b!2948757)))

(declare-fun lambda!109678 () Int)

(declare-fun lambda!109677 () Int)

(assert (=> bs!525613 (not (= lambda!109678 lambda!109677))))

(assert (=> b!2948748 true))

(assert (=> b!2948748 true))

(declare-fun bm!194748 () Bool)

(declare-fun call!194754 () Bool)

(assert (=> bm!194748 (= call!194754 (isEmpty!19145 s!11993))))

(declare-fun b!2948747 () Bool)

(declare-fun e!1857404 () Bool)

(declare-fun e!1857405 () Bool)

(assert (=> b!2948747 (= e!1857404 e!1857405)))

(declare-fun c!482590 () Bool)

(assert (=> b!2948747 (= c!482590 ((_ is Star!9143) r!17423))))

(declare-fun call!194753 () Bool)

(assert (=> b!2948748 (= e!1857405 call!194753)))

(declare-fun b!2948749 () Bool)

(declare-fun e!1857408 () Bool)

(assert (=> b!2948749 (= e!1857408 call!194754)))

(declare-fun d!840775 () Bool)

(declare-fun c!482589 () Bool)

(assert (=> d!840775 (= c!482589 ((_ is EmptyExpr!9143) r!17423))))

(assert (=> d!840775 (= (matchRSpec!1280 r!17423 s!11993) e!1857408)))

(declare-fun b!2948750 () Bool)

(declare-fun res!1216735 () Bool)

(declare-fun e!1857407 () Bool)

(assert (=> b!2948750 (=> res!1216735 e!1857407)))

(assert (=> b!2948750 (= res!1216735 call!194754)))

(assert (=> b!2948750 (= e!1857405 e!1857407)))

(declare-fun b!2948751 () Bool)

(declare-fun c!482591 () Bool)

(assert (=> b!2948751 (= c!482591 ((_ is Union!9143) r!17423))))

(declare-fun e!1857409 () Bool)

(assert (=> b!2948751 (= e!1857409 e!1857404)))

(declare-fun b!2948752 () Bool)

(declare-fun e!1857410 () Bool)

(assert (=> b!2948752 (= e!1857410 (matchRSpec!1280 (regTwo!18799 r!17423) s!11993))))

(declare-fun b!2948753 () Bool)

(declare-fun c!482588 () Bool)

(assert (=> b!2948753 (= c!482588 ((_ is ElementMatch!9143) r!17423))))

(declare-fun e!1857406 () Bool)

(assert (=> b!2948753 (= e!1857406 e!1857409)))

(declare-fun b!2948754 () Bool)

(assert (=> b!2948754 (= e!1857409 (= s!11993 (Cons!34884 (c!482455 r!17423) Nil!34884)))))

(declare-fun b!2948755 () Bool)

(assert (=> b!2948755 (= e!1857408 e!1857406)))

(declare-fun res!1216734 () Bool)

(assert (=> b!2948755 (= res!1216734 (not ((_ is EmptyLang!9143) r!17423)))))

(assert (=> b!2948755 (=> (not res!1216734) (not e!1857406))))

(declare-fun b!2948756 () Bool)

(assert (=> b!2948756 (= e!1857404 e!1857410)))

(declare-fun res!1216733 () Bool)

(assert (=> b!2948756 (= res!1216733 (matchRSpec!1280 (regOne!18799 r!17423) s!11993))))

(assert (=> b!2948756 (=> res!1216733 e!1857410)))

(assert (=> b!2948757 (= e!1857407 call!194753)))

(declare-fun bm!194749 () Bool)

(declare-fun Exists!1477 (Int) Bool)

(assert (=> bm!194749 (= call!194753 (Exists!1477 (ite c!482590 lambda!109677 lambda!109678)))))

(assert (= (and d!840775 c!482589) b!2948749))

(assert (= (and d!840775 (not c!482589)) b!2948755))

(assert (= (and b!2948755 res!1216734) b!2948753))

(assert (= (and b!2948753 c!482588) b!2948754))

(assert (= (and b!2948753 (not c!482588)) b!2948751))

(assert (= (and b!2948751 c!482591) b!2948756))

(assert (= (and b!2948751 (not c!482591)) b!2948747))

(assert (= (and b!2948756 (not res!1216733)) b!2948752))

(assert (= (and b!2948747 c!482590) b!2948750))

(assert (= (and b!2948747 (not c!482590)) b!2948748))

(assert (= (and b!2948750 (not res!1216735)) b!2948757))

(assert (= (or b!2948757 b!2948748) bm!194749))

(assert (= (or b!2948749 b!2948750) bm!194748))

(assert (=> bm!194748 m!3328621))

(declare-fun m!3328753 () Bool)

(assert (=> b!2948752 m!3328753))

(declare-fun m!3328755 () Bool)

(assert (=> b!2948756 m!3328755))

(declare-fun m!3328757 () Bool)

(assert (=> bm!194749 m!3328757))

(assert (=> b!2948319 d!840775))

(declare-fun b!2948790 () Bool)

(declare-fun e!1857429 () Bool)

(assert (=> b!2948790 (= e!1857429 (nullable!2903 r!17423))))

(declare-fun b!2948791 () Bool)

(declare-fun res!1216754 () Bool)

(declare-fun e!1857427 () Bool)

(assert (=> b!2948791 (=> (not res!1216754) (not e!1857427))))

(declare-fun call!194757 () Bool)

(assert (=> b!2948791 (= res!1216754 (not call!194757))))

(declare-fun bm!194752 () Bool)

(assert (=> bm!194752 (= call!194757 (isEmpty!19145 s!11993))))

(declare-fun b!2948792 () Bool)

(declare-fun res!1216752 () Bool)

(assert (=> b!2948792 (=> (not res!1216752) (not e!1857427))))

(declare-fun tail!4791 (List!35008) List!35008)

(assert (=> b!2948792 (= res!1216752 (isEmpty!19145 (tail!4791 s!11993)))))

(declare-fun b!2948793 () Bool)

(declare-fun e!1857425 () Bool)

(declare-fun e!1857426 () Bool)

(assert (=> b!2948793 (= e!1857425 e!1857426)))

(declare-fun res!1216753 () Bool)

(assert (=> b!2948793 (=> res!1216753 e!1857426)))

(assert (=> b!2948793 (= res!1216753 call!194757)))

(declare-fun b!2948794 () Bool)

(declare-fun res!1216755 () Bool)

(declare-fun e!1857430 () Bool)

(assert (=> b!2948794 (=> res!1216755 e!1857430)))

(assert (=> b!2948794 (= res!1216755 (not ((_ is ElementMatch!9143) r!17423)))))

(declare-fun e!1857431 () Bool)

(assert (=> b!2948794 (= e!1857431 e!1857430)))

(declare-fun b!2948795 () Bool)

(declare-fun e!1857428 () Bool)

(declare-fun lt!1031630 () Bool)

(assert (=> b!2948795 (= e!1857428 (= lt!1031630 call!194757))))

(declare-fun b!2948796 () Bool)

(declare-fun res!1216756 () Bool)

(assert (=> b!2948796 (=> res!1216756 e!1857426)))

(assert (=> b!2948796 (= res!1216756 (not (isEmpty!19145 (tail!4791 s!11993))))))

(declare-fun b!2948797 () Bool)

(assert (=> b!2948797 (= e!1857428 e!1857431)))

(declare-fun c!482599 () Bool)

(assert (=> b!2948797 (= c!482599 ((_ is EmptyLang!9143) r!17423))))

(declare-fun d!840801 () Bool)

(assert (=> d!840801 e!1857428))

(declare-fun c!482600 () Bool)

(assert (=> d!840801 (= c!482600 ((_ is EmptyExpr!9143) r!17423))))

(assert (=> d!840801 (= lt!1031630 e!1857429)))

(declare-fun c!482598 () Bool)

(assert (=> d!840801 (= c!482598 (isEmpty!19145 s!11993))))

(assert (=> d!840801 (validRegex!3876 r!17423)))

(assert (=> d!840801 (= (matchR!4025 r!17423 s!11993) lt!1031630)))

(declare-fun b!2948798 () Bool)

(declare-fun head!6565 (List!35008) C!18472)

(assert (=> b!2948798 (= e!1857426 (not (= (head!6565 s!11993) (c!482455 r!17423))))))

(declare-fun b!2948799 () Bool)

(assert (=> b!2948799 (= e!1857430 e!1857425)))

(declare-fun res!1216759 () Bool)

(assert (=> b!2948799 (=> (not res!1216759) (not e!1857425))))

(assert (=> b!2948799 (= res!1216759 (not lt!1031630))))

(declare-fun b!2948800 () Bool)

(assert (=> b!2948800 (= e!1857427 (= (head!6565 s!11993) (c!482455 r!17423)))))

(declare-fun b!2948801 () Bool)

(assert (=> b!2948801 (= e!1857431 (not lt!1031630))))

(declare-fun b!2948802 () Bool)

(declare-fun res!1216757 () Bool)

(assert (=> b!2948802 (=> res!1216757 e!1857430)))

(assert (=> b!2948802 (= res!1216757 e!1857427)))

(declare-fun res!1216758 () Bool)

(assert (=> b!2948802 (=> (not res!1216758) (not e!1857427))))

(assert (=> b!2948802 (= res!1216758 lt!1031630)))

(declare-fun b!2948803 () Bool)

(declare-fun derivativeStep!2506 (Regex!9143 C!18472) Regex!9143)

(assert (=> b!2948803 (= e!1857429 (matchR!4025 (derivativeStep!2506 r!17423 (head!6565 s!11993)) (tail!4791 s!11993)))))

(assert (= (and d!840801 c!482598) b!2948790))

(assert (= (and d!840801 (not c!482598)) b!2948803))

(assert (= (and d!840801 c!482600) b!2948795))

(assert (= (and d!840801 (not c!482600)) b!2948797))

(assert (= (and b!2948797 c!482599) b!2948801))

(assert (= (and b!2948797 (not c!482599)) b!2948794))

(assert (= (and b!2948794 (not res!1216755)) b!2948802))

(assert (= (and b!2948802 res!1216758) b!2948791))

(assert (= (and b!2948791 res!1216754) b!2948792))

(assert (= (and b!2948792 res!1216752) b!2948800))

(assert (= (and b!2948802 (not res!1216757)) b!2948799))

(assert (= (and b!2948799 res!1216759) b!2948793))

(assert (= (and b!2948793 (not res!1216753)) b!2948796))

(assert (= (and b!2948796 (not res!1216756)) b!2948798))

(assert (= (or b!2948795 b!2948791 b!2948793) bm!194752))

(declare-fun m!3328759 () Bool)

(assert (=> b!2948803 m!3328759))

(assert (=> b!2948803 m!3328759))

(declare-fun m!3328761 () Bool)

(assert (=> b!2948803 m!3328761))

(declare-fun m!3328763 () Bool)

(assert (=> b!2948803 m!3328763))

(assert (=> b!2948803 m!3328761))

(assert (=> b!2948803 m!3328763))

(declare-fun m!3328765 () Bool)

(assert (=> b!2948803 m!3328765))

(assert (=> b!2948796 m!3328763))

(assert (=> b!2948796 m!3328763))

(declare-fun m!3328767 () Bool)

(assert (=> b!2948796 m!3328767))

(assert (=> b!2948798 m!3328759))

(assert (=> b!2948800 m!3328759))

(declare-fun m!3328769 () Bool)

(assert (=> b!2948790 m!3328769))

(assert (=> bm!194752 m!3328621))

(assert (=> d!840801 m!3328621))

(assert (=> d!840801 m!3328609))

(assert (=> b!2948792 m!3328763))

(assert (=> b!2948792 m!3328763))

(assert (=> b!2948792 m!3328767))

(assert (=> b!2948319 d!840801))

(declare-fun d!840803 () Bool)

(assert (=> d!840803 (= (matchR!4025 r!17423 s!11993) (matchRSpec!1280 r!17423 s!11993))))

(declare-fun lt!1031633 () Unit!48665)

(declare-fun choose!17421 (Regex!9143 List!35008) Unit!48665)

(assert (=> d!840803 (= lt!1031633 (choose!17421 r!17423 s!11993))))

(assert (=> d!840803 (validRegex!3876 r!17423)))

(assert (=> d!840803 (= (mainMatchTheorem!1280 r!17423 s!11993) lt!1031633)))

(declare-fun bs!525614 () Bool)

(assert (= bs!525614 d!840803))

(assert (=> bs!525614 m!3328613))

(assert (=> bs!525614 m!3328611))

(declare-fun m!3328771 () Bool)

(assert (=> bs!525614 m!3328771))

(assert (=> bs!525614 m!3328609))

(assert (=> b!2948319 d!840803))

(declare-fun b!2948804 () Bool)

(declare-fun e!1857436 () Bool)

(assert (=> b!2948804 (= e!1857436 (nullable!2903 lt!1031566))))

(declare-fun b!2948805 () Bool)

(declare-fun res!1216762 () Bool)

(declare-fun e!1857434 () Bool)

(assert (=> b!2948805 (=> (not res!1216762) (not e!1857434))))

(declare-fun call!194758 () Bool)

(assert (=> b!2948805 (= res!1216762 (not call!194758))))

(declare-fun bm!194753 () Bool)

(assert (=> bm!194753 (= call!194758 (isEmpty!19145 s!11993))))

(declare-fun b!2948806 () Bool)

(declare-fun res!1216760 () Bool)

(assert (=> b!2948806 (=> (not res!1216760) (not e!1857434))))

(assert (=> b!2948806 (= res!1216760 (isEmpty!19145 (tail!4791 s!11993)))))

(declare-fun b!2948807 () Bool)

(declare-fun e!1857432 () Bool)

(declare-fun e!1857433 () Bool)

(assert (=> b!2948807 (= e!1857432 e!1857433)))

(declare-fun res!1216761 () Bool)

(assert (=> b!2948807 (=> res!1216761 e!1857433)))

(assert (=> b!2948807 (= res!1216761 call!194758)))

(declare-fun b!2948808 () Bool)

(declare-fun res!1216763 () Bool)

(declare-fun e!1857437 () Bool)

(assert (=> b!2948808 (=> res!1216763 e!1857437)))

(assert (=> b!2948808 (= res!1216763 (not ((_ is ElementMatch!9143) lt!1031566)))))

(declare-fun e!1857438 () Bool)

(assert (=> b!2948808 (= e!1857438 e!1857437)))

(declare-fun b!2948809 () Bool)

(declare-fun e!1857435 () Bool)

(declare-fun lt!1031634 () Bool)

(assert (=> b!2948809 (= e!1857435 (= lt!1031634 call!194758))))

(declare-fun b!2948810 () Bool)

(declare-fun res!1216764 () Bool)

(assert (=> b!2948810 (=> res!1216764 e!1857433)))

(assert (=> b!2948810 (= res!1216764 (not (isEmpty!19145 (tail!4791 s!11993))))))

(declare-fun b!2948811 () Bool)

(assert (=> b!2948811 (= e!1857435 e!1857438)))

(declare-fun c!482602 () Bool)

(assert (=> b!2948811 (= c!482602 ((_ is EmptyLang!9143) lt!1031566))))

(declare-fun d!840805 () Bool)

(assert (=> d!840805 e!1857435))

(declare-fun c!482603 () Bool)

(assert (=> d!840805 (= c!482603 ((_ is EmptyExpr!9143) lt!1031566))))

(assert (=> d!840805 (= lt!1031634 e!1857436)))

(declare-fun c!482601 () Bool)

(assert (=> d!840805 (= c!482601 (isEmpty!19145 s!11993))))

(assert (=> d!840805 (validRegex!3876 lt!1031566)))

(assert (=> d!840805 (= (matchR!4025 lt!1031566 s!11993) lt!1031634)))

(declare-fun b!2948812 () Bool)

(assert (=> b!2948812 (= e!1857433 (not (= (head!6565 s!11993) (c!482455 lt!1031566))))))

(declare-fun b!2948813 () Bool)

(assert (=> b!2948813 (= e!1857437 e!1857432)))

(declare-fun res!1216767 () Bool)

(assert (=> b!2948813 (=> (not res!1216767) (not e!1857432))))

(assert (=> b!2948813 (= res!1216767 (not lt!1031634))))

(declare-fun b!2948814 () Bool)

(assert (=> b!2948814 (= e!1857434 (= (head!6565 s!11993) (c!482455 lt!1031566)))))

(declare-fun b!2948815 () Bool)

(assert (=> b!2948815 (= e!1857438 (not lt!1031634))))

(declare-fun b!2948816 () Bool)

(declare-fun res!1216765 () Bool)

(assert (=> b!2948816 (=> res!1216765 e!1857437)))

(assert (=> b!2948816 (= res!1216765 e!1857434)))

(declare-fun res!1216766 () Bool)

(assert (=> b!2948816 (=> (not res!1216766) (not e!1857434))))

(assert (=> b!2948816 (= res!1216766 lt!1031634)))

(declare-fun b!2948817 () Bool)

(assert (=> b!2948817 (= e!1857436 (matchR!4025 (derivativeStep!2506 lt!1031566 (head!6565 s!11993)) (tail!4791 s!11993)))))

(assert (= (and d!840805 c!482601) b!2948804))

(assert (= (and d!840805 (not c!482601)) b!2948817))

(assert (= (and d!840805 c!482603) b!2948809))

(assert (= (and d!840805 (not c!482603)) b!2948811))

(assert (= (and b!2948811 c!482602) b!2948815))

(assert (= (and b!2948811 (not c!482602)) b!2948808))

(assert (= (and b!2948808 (not res!1216763)) b!2948816))

(assert (= (and b!2948816 res!1216766) b!2948805))

(assert (= (and b!2948805 res!1216762) b!2948806))

(assert (= (and b!2948806 res!1216760) b!2948814))

(assert (= (and b!2948816 (not res!1216765)) b!2948813))

(assert (= (and b!2948813 res!1216767) b!2948807))

(assert (= (and b!2948807 (not res!1216761)) b!2948810))

(assert (= (and b!2948810 (not res!1216764)) b!2948812))

(assert (= (or b!2948809 b!2948805 b!2948807) bm!194753))

(assert (=> b!2948817 m!3328759))

(assert (=> b!2948817 m!3328759))

(declare-fun m!3328773 () Bool)

(assert (=> b!2948817 m!3328773))

(assert (=> b!2948817 m!3328763))

(assert (=> b!2948817 m!3328773))

(assert (=> b!2948817 m!3328763))

(declare-fun m!3328775 () Bool)

(assert (=> b!2948817 m!3328775))

(assert (=> b!2948810 m!3328763))

(assert (=> b!2948810 m!3328763))

(assert (=> b!2948810 m!3328767))

(assert (=> b!2948812 m!3328759))

(assert (=> b!2948814 m!3328759))

(declare-fun m!3328777 () Bool)

(assert (=> b!2948804 m!3328777))

(assert (=> bm!194753 m!3328621))

(assert (=> d!840805 m!3328621))

(declare-fun m!3328779 () Bool)

(assert (=> d!840805 m!3328779))

(assert (=> b!2948806 m!3328763))

(assert (=> b!2948806 m!3328763))

(assert (=> b!2948806 m!3328767))

(assert (=> b!2948324 d!840805))

(declare-fun d!840807 () Bool)

(assert (=> d!840807 (= (isEmptyExpr!346 lt!1031571) ((_ is EmptyExpr!9143) lt!1031571))))

(assert (=> b!2948328 d!840807))

(declare-fun d!840809 () Bool)

(assert (=> d!840809 (= (isEmptyExpr!346 lt!1031569) ((_ is EmptyExpr!9143) lt!1031569))))

(assert (=> b!2948317 d!840809))

(declare-fun bm!194760 () Bool)

(declare-fun call!194766 () Bool)

(declare-fun call!194765 () Bool)

(assert (=> bm!194760 (= call!194766 call!194765)))

(declare-fun b!2948836 () Bool)

(declare-fun e!1857454 () Bool)

(declare-fun e!1857457 () Bool)

(assert (=> b!2948836 (= e!1857454 e!1857457)))

(declare-fun c!482608 () Bool)

(assert (=> b!2948836 (= c!482608 ((_ is Union!9143) r!17423))))

(declare-fun b!2948837 () Bool)

(declare-fun e!1857453 () Bool)

(declare-fun call!194767 () Bool)

(assert (=> b!2948837 (= e!1857453 call!194767)))

(declare-fun c!482609 () Bool)

(declare-fun bm!194761 () Bool)

(assert (=> bm!194761 (= call!194765 (validRegex!3876 (ite c!482609 (reg!9472 r!17423) (ite c!482608 (regTwo!18799 r!17423) (regOne!18798 r!17423)))))))

(declare-fun b!2948838 () Bool)

(declare-fun res!1216781 () Bool)

(declare-fun e!1857459 () Bool)

(assert (=> b!2948838 (=> (not res!1216781) (not e!1857459))))

(assert (=> b!2948838 (= res!1216781 call!194767)))

(assert (=> b!2948838 (= e!1857457 e!1857459)))

(declare-fun d!840811 () Bool)

(declare-fun res!1216779 () Bool)

(declare-fun e!1857455 () Bool)

(assert (=> d!840811 (=> res!1216779 e!1857455)))

(assert (=> d!840811 (= res!1216779 ((_ is ElementMatch!9143) r!17423))))

(assert (=> d!840811 (= (validRegex!3876 r!17423) e!1857455)))

(declare-fun b!2948839 () Bool)

(declare-fun res!1216782 () Bool)

(declare-fun e!1857458 () Bool)

(assert (=> b!2948839 (=> res!1216782 e!1857458)))

(assert (=> b!2948839 (= res!1216782 (not ((_ is Concat!14464) r!17423)))))

(assert (=> b!2948839 (= e!1857457 e!1857458)))

(declare-fun b!2948840 () Bool)

(declare-fun e!1857456 () Bool)

(assert (=> b!2948840 (= e!1857454 e!1857456)))

(declare-fun res!1216778 () Bool)

(assert (=> b!2948840 (= res!1216778 (not (nullable!2903 (reg!9472 r!17423))))))

(assert (=> b!2948840 (=> (not res!1216778) (not e!1857456))))

(declare-fun b!2948841 () Bool)

(assert (=> b!2948841 (= e!1857458 e!1857453)))

(declare-fun res!1216780 () Bool)

(assert (=> b!2948841 (=> (not res!1216780) (not e!1857453))))

(assert (=> b!2948841 (= res!1216780 call!194766)))

(declare-fun bm!194762 () Bool)

(assert (=> bm!194762 (= call!194767 (validRegex!3876 (ite c!482608 (regOne!18799 r!17423) (regTwo!18798 r!17423))))))

(declare-fun b!2948842 () Bool)

(assert (=> b!2948842 (= e!1857456 call!194765)))

(declare-fun b!2948843 () Bool)

(assert (=> b!2948843 (= e!1857455 e!1857454)))

(assert (=> b!2948843 (= c!482609 ((_ is Star!9143) r!17423))))

(declare-fun b!2948844 () Bool)

(assert (=> b!2948844 (= e!1857459 call!194766)))

(assert (= (and d!840811 (not res!1216779)) b!2948843))

(assert (= (and b!2948843 c!482609) b!2948840))

(assert (= (and b!2948843 (not c!482609)) b!2948836))

(assert (= (and b!2948840 res!1216778) b!2948842))

(assert (= (and b!2948836 c!482608) b!2948838))

(assert (= (and b!2948836 (not c!482608)) b!2948839))

(assert (= (and b!2948838 res!1216781) b!2948844))

(assert (= (and b!2948839 (not res!1216782)) b!2948841))

(assert (= (and b!2948841 res!1216780) b!2948837))

(assert (= (or b!2948838 b!2948837) bm!194762))

(assert (= (or b!2948844 b!2948841) bm!194760))

(assert (= (or b!2948842 bm!194760) bm!194761))

(declare-fun m!3328781 () Bool)

(assert (=> bm!194761 m!3328781))

(declare-fun m!3328783 () Bool)

(assert (=> b!2948840 m!3328783))

(declare-fun m!3328785 () Bool)

(assert (=> bm!194762 m!3328785))

(assert (=> start!286036 d!840811))

(declare-fun d!840813 () Bool)

(assert (=> d!840813 (= (isEmptyLang!265 lt!1031569) ((_ is EmptyLang!9143) lt!1031569))))

(assert (=> b!2948322 d!840813))

(declare-fun bm!194763 () Bool)

(declare-fun call!194769 () Bool)

(declare-fun call!194768 () Bool)

(assert (=> bm!194763 (= call!194769 call!194768)))

(declare-fun b!2948845 () Bool)

(declare-fun e!1857461 () Bool)

(declare-fun e!1857464 () Bool)

(assert (=> b!2948845 (= e!1857461 e!1857464)))

(declare-fun c!482610 () Bool)

(assert (=> b!2948845 (= c!482610 ((_ is Union!9143) (regOne!18798 r!17423)))))

(declare-fun b!2948846 () Bool)

(declare-fun e!1857460 () Bool)

(declare-fun call!194770 () Bool)

(assert (=> b!2948846 (= e!1857460 call!194770)))

(declare-fun c!482611 () Bool)

(declare-fun bm!194764 () Bool)

(assert (=> bm!194764 (= call!194768 (validRegex!3876 (ite c!482611 (reg!9472 (regOne!18798 r!17423)) (ite c!482610 (regTwo!18799 (regOne!18798 r!17423)) (regOne!18798 (regOne!18798 r!17423))))))))

(declare-fun b!2948847 () Bool)

(declare-fun res!1216786 () Bool)

(declare-fun e!1857466 () Bool)

(assert (=> b!2948847 (=> (not res!1216786) (not e!1857466))))

(assert (=> b!2948847 (= res!1216786 call!194770)))

(assert (=> b!2948847 (= e!1857464 e!1857466)))

(declare-fun d!840815 () Bool)

(declare-fun res!1216784 () Bool)

(declare-fun e!1857462 () Bool)

(assert (=> d!840815 (=> res!1216784 e!1857462)))

(assert (=> d!840815 (= res!1216784 ((_ is ElementMatch!9143) (regOne!18798 r!17423)))))

(assert (=> d!840815 (= (validRegex!3876 (regOne!18798 r!17423)) e!1857462)))

(declare-fun b!2948848 () Bool)

(declare-fun res!1216787 () Bool)

(declare-fun e!1857465 () Bool)

(assert (=> b!2948848 (=> res!1216787 e!1857465)))

(assert (=> b!2948848 (= res!1216787 (not ((_ is Concat!14464) (regOne!18798 r!17423))))))

(assert (=> b!2948848 (= e!1857464 e!1857465)))

(declare-fun b!2948849 () Bool)

(declare-fun e!1857463 () Bool)

(assert (=> b!2948849 (= e!1857461 e!1857463)))

(declare-fun res!1216783 () Bool)

(assert (=> b!2948849 (= res!1216783 (not (nullable!2903 (reg!9472 (regOne!18798 r!17423)))))))

(assert (=> b!2948849 (=> (not res!1216783) (not e!1857463))))

(declare-fun b!2948850 () Bool)

(assert (=> b!2948850 (= e!1857465 e!1857460)))

(declare-fun res!1216785 () Bool)

(assert (=> b!2948850 (=> (not res!1216785) (not e!1857460))))

(assert (=> b!2948850 (= res!1216785 call!194769)))

(declare-fun bm!194765 () Bool)

(assert (=> bm!194765 (= call!194770 (validRegex!3876 (ite c!482610 (regOne!18799 (regOne!18798 r!17423)) (regTwo!18798 (regOne!18798 r!17423)))))))

(declare-fun b!2948851 () Bool)

(assert (=> b!2948851 (= e!1857463 call!194768)))

(declare-fun b!2948852 () Bool)

(assert (=> b!2948852 (= e!1857462 e!1857461)))

(assert (=> b!2948852 (= c!482611 ((_ is Star!9143) (regOne!18798 r!17423)))))

(declare-fun b!2948853 () Bool)

(assert (=> b!2948853 (= e!1857466 call!194769)))

(assert (= (and d!840815 (not res!1216784)) b!2948852))

(assert (= (and b!2948852 c!482611) b!2948849))

(assert (= (and b!2948852 (not c!482611)) b!2948845))

(assert (= (and b!2948849 res!1216783) b!2948851))

(assert (= (and b!2948845 c!482610) b!2948847))

(assert (= (and b!2948845 (not c!482610)) b!2948848))

(assert (= (and b!2948847 res!1216786) b!2948853))

(assert (= (and b!2948848 (not res!1216787)) b!2948850))

(assert (= (and b!2948850 res!1216785) b!2948846))

(assert (= (or b!2948847 b!2948846) bm!194765))

(assert (= (or b!2948853 b!2948850) bm!194763))

(assert (= (or b!2948851 bm!194763) bm!194764))

(declare-fun m!3328787 () Bool)

(assert (=> bm!194764 m!3328787))

(declare-fun m!3328789 () Bool)

(assert (=> b!2948849 m!3328789))

(declare-fun m!3328791 () Bool)

(assert (=> bm!194765 m!3328791))

(assert (=> b!2948321 d!840815))

(declare-fun bs!525615 () Bool)

(declare-fun b!2948864 () Bool)

(assert (= bs!525615 (and b!2948864 b!2948757)))

(declare-fun lambda!109679 () Int)

(assert (=> bs!525615 (= (and (= (reg!9472 lt!1031566) (reg!9472 r!17423)) (= lt!1031566 r!17423)) (= lambda!109679 lambda!109677))))

(declare-fun bs!525616 () Bool)

(assert (= bs!525616 (and b!2948864 b!2948748)))

(assert (=> bs!525616 (not (= lambda!109679 lambda!109678))))

(assert (=> b!2948864 true))

(assert (=> b!2948864 true))

(declare-fun bs!525617 () Bool)

(declare-fun b!2948855 () Bool)

(assert (= bs!525617 (and b!2948855 b!2948757)))

(declare-fun lambda!109680 () Int)

(assert (=> bs!525617 (not (= lambda!109680 lambda!109677))))

(declare-fun bs!525618 () Bool)

(assert (= bs!525618 (and b!2948855 b!2948748)))

(assert (=> bs!525618 (= (and (= (regOne!18798 lt!1031566) (regOne!18798 r!17423)) (= (regTwo!18798 lt!1031566) (regTwo!18798 r!17423))) (= lambda!109680 lambda!109678))))

(declare-fun bs!525619 () Bool)

(assert (= bs!525619 (and b!2948855 b!2948864)))

(assert (=> bs!525619 (not (= lambda!109680 lambda!109679))))

(assert (=> b!2948855 true))

(assert (=> b!2948855 true))

(declare-fun bm!194766 () Bool)

(declare-fun call!194772 () Bool)

(assert (=> bm!194766 (= call!194772 (isEmpty!19145 s!11993))))

(declare-fun b!2948854 () Bool)

(declare-fun e!1857467 () Bool)

(declare-fun e!1857468 () Bool)

(assert (=> b!2948854 (= e!1857467 e!1857468)))

(declare-fun c!482614 () Bool)

(assert (=> b!2948854 (= c!482614 ((_ is Star!9143) lt!1031566))))

(declare-fun call!194771 () Bool)

(assert (=> b!2948855 (= e!1857468 call!194771)))

(declare-fun b!2948856 () Bool)

(declare-fun e!1857471 () Bool)

(assert (=> b!2948856 (= e!1857471 call!194772)))

(declare-fun d!840817 () Bool)

(declare-fun c!482613 () Bool)

(assert (=> d!840817 (= c!482613 ((_ is EmptyExpr!9143) lt!1031566))))

(assert (=> d!840817 (= (matchRSpec!1280 lt!1031566 s!11993) e!1857471)))

(declare-fun b!2948857 () Bool)

(declare-fun res!1216790 () Bool)

(declare-fun e!1857470 () Bool)

(assert (=> b!2948857 (=> res!1216790 e!1857470)))

(assert (=> b!2948857 (= res!1216790 call!194772)))

(assert (=> b!2948857 (= e!1857468 e!1857470)))

(declare-fun b!2948858 () Bool)

(declare-fun c!482615 () Bool)

(assert (=> b!2948858 (= c!482615 ((_ is Union!9143) lt!1031566))))

(declare-fun e!1857472 () Bool)

(assert (=> b!2948858 (= e!1857472 e!1857467)))

(declare-fun b!2948859 () Bool)

(declare-fun e!1857473 () Bool)

(assert (=> b!2948859 (= e!1857473 (matchRSpec!1280 (regTwo!18799 lt!1031566) s!11993))))

(declare-fun b!2948860 () Bool)

(declare-fun c!482612 () Bool)

(assert (=> b!2948860 (= c!482612 ((_ is ElementMatch!9143) lt!1031566))))

(declare-fun e!1857469 () Bool)

(assert (=> b!2948860 (= e!1857469 e!1857472)))

(declare-fun b!2948861 () Bool)

(assert (=> b!2948861 (= e!1857472 (= s!11993 (Cons!34884 (c!482455 lt!1031566) Nil!34884)))))

(declare-fun b!2948862 () Bool)

(assert (=> b!2948862 (= e!1857471 e!1857469)))

(declare-fun res!1216789 () Bool)

(assert (=> b!2948862 (= res!1216789 (not ((_ is EmptyLang!9143) lt!1031566)))))

(assert (=> b!2948862 (=> (not res!1216789) (not e!1857469))))

(declare-fun b!2948863 () Bool)

(assert (=> b!2948863 (= e!1857467 e!1857473)))

(declare-fun res!1216788 () Bool)

(assert (=> b!2948863 (= res!1216788 (matchRSpec!1280 (regOne!18799 lt!1031566) s!11993))))

(assert (=> b!2948863 (=> res!1216788 e!1857473)))

(assert (=> b!2948864 (= e!1857470 call!194771)))

(declare-fun bm!194767 () Bool)

(assert (=> bm!194767 (= call!194771 (Exists!1477 (ite c!482614 lambda!109679 lambda!109680)))))

(assert (= (and d!840817 c!482613) b!2948856))

(assert (= (and d!840817 (not c!482613)) b!2948862))

(assert (= (and b!2948862 res!1216789) b!2948860))

(assert (= (and b!2948860 c!482612) b!2948861))

(assert (= (and b!2948860 (not c!482612)) b!2948858))

(assert (= (and b!2948858 c!482615) b!2948863))

(assert (= (and b!2948858 (not c!482615)) b!2948854))

(assert (= (and b!2948863 (not res!1216788)) b!2948859))

(assert (= (and b!2948854 c!482614) b!2948857))

(assert (= (and b!2948854 (not c!482614)) b!2948855))

(assert (= (and b!2948857 (not res!1216790)) b!2948864))

(assert (= (or b!2948864 b!2948855) bm!194767))

(assert (= (or b!2948856 b!2948857) bm!194766))

(assert (=> bm!194766 m!3328621))

(declare-fun m!3328793 () Bool)

(assert (=> b!2948859 m!3328793))

(declare-fun m!3328795 () Bool)

(assert (=> b!2948863 m!3328795))

(declare-fun m!3328797 () Bool)

(assert (=> bm!194767 m!3328797))

(assert (=> b!2948321 d!840817))

(declare-fun d!840819 () Bool)

(assert (=> d!840819 (= (matchR!4025 lt!1031566 s!11993) (matchRSpec!1280 lt!1031566 s!11993))))

(declare-fun lt!1031635 () Unit!48665)

(assert (=> d!840819 (= lt!1031635 (choose!17421 lt!1031566 s!11993))))

(assert (=> d!840819 (validRegex!3876 lt!1031566)))

(assert (=> d!840819 (= (mainMatchTheorem!1280 lt!1031566 s!11993) lt!1031635)))

(declare-fun bs!525620 () Bool)

(assert (= bs!525620 d!840819))

(assert (=> bs!525620 m!3328607))

(assert (=> bs!525620 m!3328625))

(declare-fun m!3328799 () Bool)

(assert (=> bs!525620 m!3328799))

(assert (=> bs!525620 m!3328779))

(assert (=> b!2948321 d!840819))

(declare-fun e!1857476 () Bool)

(assert (=> b!2948326 (= tp!942781 e!1857476)))

(declare-fun b!2948875 () Bool)

(assert (=> b!2948875 (= e!1857476 tp_is_empty!15849)))

(declare-fun b!2948876 () Bool)

(declare-fun tp!942837 () Bool)

(declare-fun tp!942836 () Bool)

(assert (=> b!2948876 (= e!1857476 (and tp!942837 tp!942836))))

(declare-fun b!2948878 () Bool)

(declare-fun tp!942834 () Bool)

(declare-fun tp!942838 () Bool)

(assert (=> b!2948878 (= e!1857476 (and tp!942834 tp!942838))))

(declare-fun b!2948877 () Bool)

(declare-fun tp!942835 () Bool)

(assert (=> b!2948877 (= e!1857476 tp!942835)))

(assert (= (and b!2948326 ((_ is ElementMatch!9143) (regOne!18798 r!17423))) b!2948875))

(assert (= (and b!2948326 ((_ is Concat!14464) (regOne!18798 r!17423))) b!2948876))

(assert (= (and b!2948326 ((_ is Star!9143) (regOne!18798 r!17423))) b!2948877))

(assert (= (and b!2948326 ((_ is Union!9143) (regOne!18798 r!17423))) b!2948878))

(declare-fun e!1857477 () Bool)

(assert (=> b!2948326 (= tp!942780 e!1857477)))

(declare-fun b!2948879 () Bool)

(assert (=> b!2948879 (= e!1857477 tp_is_empty!15849)))

(declare-fun b!2948880 () Bool)

(declare-fun tp!942842 () Bool)

(declare-fun tp!942841 () Bool)

(assert (=> b!2948880 (= e!1857477 (and tp!942842 tp!942841))))

(declare-fun b!2948882 () Bool)

(declare-fun tp!942839 () Bool)

(declare-fun tp!942843 () Bool)

(assert (=> b!2948882 (= e!1857477 (and tp!942839 tp!942843))))

(declare-fun b!2948881 () Bool)

(declare-fun tp!942840 () Bool)

(assert (=> b!2948881 (= e!1857477 tp!942840)))

(assert (= (and b!2948326 ((_ is ElementMatch!9143) (regTwo!18798 r!17423))) b!2948879))

(assert (= (and b!2948326 ((_ is Concat!14464) (regTwo!18798 r!17423))) b!2948880))

(assert (= (and b!2948326 ((_ is Star!9143) (regTwo!18798 r!17423))) b!2948881))

(assert (= (and b!2948326 ((_ is Union!9143) (regTwo!18798 r!17423))) b!2948882))

(declare-fun b!2948887 () Bool)

(declare-fun e!1857480 () Bool)

(declare-fun tp!942846 () Bool)

(assert (=> b!2948887 (= e!1857480 (and tp_is_empty!15849 tp!942846))))

(assert (=> b!2948318 (= tp!942782 e!1857480)))

(assert (= (and b!2948318 ((_ is Cons!34884) (t!234073 s!11993))) b!2948887))

(declare-fun e!1857481 () Bool)

(assert (=> b!2948323 (= tp!942785 e!1857481)))

(declare-fun b!2948888 () Bool)

(assert (=> b!2948888 (= e!1857481 tp_is_empty!15849)))

(declare-fun b!2948889 () Bool)

(declare-fun tp!942850 () Bool)

(declare-fun tp!942849 () Bool)

(assert (=> b!2948889 (= e!1857481 (and tp!942850 tp!942849))))

(declare-fun b!2948891 () Bool)

(declare-fun tp!942847 () Bool)

(declare-fun tp!942851 () Bool)

(assert (=> b!2948891 (= e!1857481 (and tp!942847 tp!942851))))

(declare-fun b!2948890 () Bool)

(declare-fun tp!942848 () Bool)

(assert (=> b!2948890 (= e!1857481 tp!942848)))

(assert (= (and b!2948323 ((_ is ElementMatch!9143) (regOne!18799 r!17423))) b!2948888))

(assert (= (and b!2948323 ((_ is Concat!14464) (regOne!18799 r!17423))) b!2948889))

(assert (= (and b!2948323 ((_ is Star!9143) (regOne!18799 r!17423))) b!2948890))

(assert (= (and b!2948323 ((_ is Union!9143) (regOne!18799 r!17423))) b!2948891))

(declare-fun e!1857482 () Bool)

(assert (=> b!2948323 (= tp!942784 e!1857482)))

(declare-fun b!2948892 () Bool)

(assert (=> b!2948892 (= e!1857482 tp_is_empty!15849)))

(declare-fun b!2948893 () Bool)

(declare-fun tp!942855 () Bool)

(declare-fun tp!942854 () Bool)

(assert (=> b!2948893 (= e!1857482 (and tp!942855 tp!942854))))

(declare-fun b!2948895 () Bool)

(declare-fun tp!942852 () Bool)

(declare-fun tp!942856 () Bool)

(assert (=> b!2948895 (= e!1857482 (and tp!942852 tp!942856))))

(declare-fun b!2948894 () Bool)

(declare-fun tp!942853 () Bool)

(assert (=> b!2948894 (= e!1857482 tp!942853)))

(assert (= (and b!2948323 ((_ is ElementMatch!9143) (regTwo!18799 r!17423))) b!2948892))

(assert (= (and b!2948323 ((_ is Concat!14464) (regTwo!18799 r!17423))) b!2948893))

(assert (= (and b!2948323 ((_ is Star!9143) (regTwo!18799 r!17423))) b!2948894))

(assert (= (and b!2948323 ((_ is Union!9143) (regTwo!18799 r!17423))) b!2948895))

(declare-fun e!1857483 () Bool)

(assert (=> b!2948327 (= tp!942783 e!1857483)))

(declare-fun b!2948896 () Bool)

(assert (=> b!2948896 (= e!1857483 tp_is_empty!15849)))

(declare-fun b!2948897 () Bool)

(declare-fun tp!942860 () Bool)

(declare-fun tp!942859 () Bool)

(assert (=> b!2948897 (= e!1857483 (and tp!942860 tp!942859))))

(declare-fun b!2948899 () Bool)

(declare-fun tp!942857 () Bool)

(declare-fun tp!942861 () Bool)

(assert (=> b!2948899 (= e!1857483 (and tp!942857 tp!942861))))

(declare-fun b!2948898 () Bool)

(declare-fun tp!942858 () Bool)

(assert (=> b!2948898 (= e!1857483 tp!942858)))

(assert (= (and b!2948327 ((_ is ElementMatch!9143) (reg!9472 r!17423))) b!2948896))

(assert (= (and b!2948327 ((_ is Concat!14464) (reg!9472 r!17423))) b!2948897))

(assert (= (and b!2948327 ((_ is Star!9143) (reg!9472 r!17423))) b!2948898))

(assert (= (and b!2948327 ((_ is Union!9143) (reg!9472 r!17423))) b!2948899))

(check-sat (not b!2948881) tp_is_empty!15849 (not bm!194696) (not b!2948890) (not bm!194764) (not bm!194752) (not b!2948893) (not b!2948804) (not d!840771) (not b!2948894) (not b!2948863) (not b!2948849) (not b!2948897) (not b!2948880) (not bm!194762) (not b!2948756) (not bm!194690) (not d!840805) (not b!2948469) (not b!2948812) (not bm!194700) (not b!2948891) (not b!2948889) (not b!2948803) (not bm!194753) (not bm!194699) (not bm!194693) (not bm!194748) (not bm!194765) (not b!2948752) (not b!2948840) (not bm!194767) (not b!2948810) (not bm!194694) (not d!840765) (not b!2948792) (not b!2948899) (not bm!194749) (not bm!194761) (not b!2948878) (not b!2948438) (not b!2948887) (not bm!194692) (not b!2948796) (not b!2948882) (not b!2948895) (not b!2948898) (not b!2948817) (not b!2948800) (not bm!194703) (not b!2948463) (not d!840801) (not b!2948806) (not bm!194701) (not b!2948859) (not b!2948798) (not bm!194766) (not b!2948814) (not d!840803) (not bm!194697) (not d!840819) (not b!2948877) (not b!2948790) (not b!2948444) (not b!2948876))
(check-sat)
