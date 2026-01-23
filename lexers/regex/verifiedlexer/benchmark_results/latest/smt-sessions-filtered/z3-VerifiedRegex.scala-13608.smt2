; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731112 () Bool)

(assert start!731112)

(declare-fun b!7570394 () Bool)

(declare-fun e!4506998 () Bool)

(declare-fun tp_is_empty!50377 () Bool)

(assert (=> b!7570394 (= e!4506998 tp_is_empty!50377)))

(declare-fun b!7570395 () Bool)

(declare-fun e!4506997 () Bool)

(declare-fun tp!2205517 () Bool)

(assert (=> b!7570395 (= e!4506997 (and tp_is_empty!50377 tp!2205517))))

(declare-fun b!7570396 () Bool)

(declare-fun e!4506996 () Bool)

(declare-fun e!4506994 () Bool)

(assert (=> b!7570396 (= e!4506996 e!4506994)))

(declare-fun res!3032759 () Bool)

(assert (=> b!7570396 (=> (not res!3032759) (not e!4506994))))

(declare-datatypes ((C!40348 0))(
  ( (C!40349 (val!30614 Int)) )
))
(declare-datatypes ((Regex!20011 0))(
  ( (ElementMatch!20011 (c!1396778 C!40348)) (Concat!28856 (regOne!40534 Regex!20011) (regTwo!40534 Regex!20011)) (EmptyExpr!20011) (Star!20011 (reg!20340 Regex!20011)) (EmptyLang!20011) (Union!20011 (regOne!40535 Regex!20011) (regTwo!40535 Regex!20011)) )
))
(declare-fun lt!2651166 () Regex!20011)

(declare-fun r!24129 () Regex!20011)

(assert (=> b!7570396 (= res!3032759 (= lt!2651166 r!24129))))

(declare-fun baseR!100 () Regex!20011)

(declare-datatypes ((List!72894 0))(
  ( (Nil!72770) (Cons!72770 (h!79218 C!40348) (t!387629 List!72894)) )
))
(declare-fun testedP!418 () List!72894)

(declare-fun derivative!537 (Regex!20011 List!72894) Regex!20011)

(assert (=> b!7570396 (= lt!2651166 (derivative!537 baseR!100 testedP!418))))

(declare-fun b!7570397 () Bool)

(declare-fun tp!2205508 () Bool)

(assert (=> b!7570397 (= e!4506998 tp!2205508)))

(declare-fun b!7570398 () Bool)

(declare-fun tp!2205509 () Bool)

(declare-fun tp!2205515 () Bool)

(assert (=> b!7570398 (= e!4506998 (and tp!2205509 tp!2205515))))

(declare-fun b!7570399 () Bool)

(declare-fun e!4506993 () Bool)

(declare-fun tp!2205506 () Bool)

(assert (=> b!7570399 (= e!4506993 (and tp_is_empty!50377 tp!2205506))))

(declare-fun b!7570400 () Bool)

(declare-fun tp!2205510 () Bool)

(declare-fun tp!2205511 () Bool)

(assert (=> b!7570400 (= e!4506998 (and tp!2205510 tp!2205511))))

(declare-fun b!7570401 () Bool)

(declare-fun e!4506999 () Bool)

(assert (=> b!7570401 (= e!4506999 tp_is_empty!50377)))

(declare-fun res!3032757 () Bool)

(assert (=> start!731112 (=> (not res!3032757) (not e!4506996))))

(declare-fun validRegex!10439 (Regex!20011) Bool)

(assert (=> start!731112 (= res!3032757 (validRegex!10439 baseR!100))))

(assert (=> start!731112 e!4506996))

(assert (=> start!731112 e!4506998))

(assert (=> start!731112 e!4506999))

(assert (=> start!731112 e!4506993))

(assert (=> start!731112 e!4506997))

(declare-fun b!7570402 () Bool)

(declare-fun tp!2205516 () Bool)

(declare-fun tp!2205513 () Bool)

(assert (=> b!7570402 (= e!4506999 (and tp!2205516 tp!2205513))))

(declare-fun b!7570403 () Bool)

(declare-fun res!3032758 () Bool)

(assert (=> b!7570403 (=> (not res!3032758) (not e!4506996))))

(declare-fun matchR!9611 (Regex!20011 List!72894) Bool)

(assert (=> b!7570403 (= res!3032758 (matchR!9611 baseR!100 testedP!418))))

(declare-fun b!7570404 () Bool)

(declare-fun tp!2205514 () Bool)

(assert (=> b!7570404 (= e!4506999 tp!2205514)))

(declare-fun b!7570405 () Bool)

(declare-fun res!3032760 () Bool)

(assert (=> b!7570405 (=> (not res!3032760) (not e!4506996))))

(declare-fun input!7855 () List!72894)

(declare-fun isPrefix!6217 (List!72894 List!72894) Bool)

(assert (=> b!7570405 (= res!3032760 (isPrefix!6217 testedP!418 input!7855))))

(declare-fun b!7570406 () Bool)

(declare-fun e!4506995 () Bool)

(declare-fun nullable!8735 (Regex!20011) Bool)

(assert (=> b!7570406 (= e!4506995 (nullable!8735 r!24129))))

(declare-fun b!7570407 () Bool)

(declare-fun tp!2205507 () Bool)

(declare-fun tp!2205512 () Bool)

(assert (=> b!7570407 (= e!4506999 (and tp!2205507 tp!2205512))))

(declare-fun b!7570408 () Bool)

(declare-fun res!3032755 () Bool)

(assert (=> b!7570408 (=> (not res!3032755) (not e!4506996))))

(assert (=> b!7570408 (= res!3032755 (validRegex!10439 r!24129))))

(declare-fun b!7570409 () Bool)

(assert (=> b!7570409 (= e!4506994 (not e!4506995))))

(declare-fun res!3032756 () Bool)

(assert (=> b!7570409 (=> res!3032756 e!4506995)))

(assert (=> b!7570409 (= res!3032756 (not (matchR!9611 r!24129 Nil!72770)))))

(assert (=> b!7570409 (matchR!9611 lt!2651166 Nil!72770)))

(declare-datatypes ((Unit!166974 0))(
  ( (Unit!166975) )
))
(declare-fun lt!2651165 () Unit!166974)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!280 (Regex!20011 List!72894) Unit!166974)

(assert (=> b!7570409 (= lt!2651165 (lemmaMatchRIsSameAsWholeDerivativeAndNil!280 baseR!100 testedP!418))))

(assert (= (and start!731112 res!3032757) b!7570408))

(assert (= (and b!7570408 res!3032755) b!7570405))

(assert (= (and b!7570405 res!3032760) b!7570403))

(assert (= (and b!7570403 res!3032758) b!7570396))

(assert (= (and b!7570396 res!3032759) b!7570409))

(assert (= (and b!7570409 (not res!3032756)) b!7570406))

(get-info :version)

(assert (= (and start!731112 ((_ is ElementMatch!20011) baseR!100)) b!7570394))

(assert (= (and start!731112 ((_ is Concat!28856) baseR!100)) b!7570398))

(assert (= (and start!731112 ((_ is Star!20011) baseR!100)) b!7570397))

(assert (= (and start!731112 ((_ is Union!20011) baseR!100)) b!7570400))

(assert (= (and start!731112 ((_ is ElementMatch!20011) r!24129)) b!7570401))

(assert (= (and start!731112 ((_ is Concat!28856) r!24129)) b!7570402))

(assert (= (and start!731112 ((_ is Star!20011) r!24129)) b!7570404))

(assert (= (and start!731112 ((_ is Union!20011) r!24129)) b!7570407))

(assert (= (and start!731112 ((_ is Cons!72770) testedP!418)) b!7570399))

(assert (= (and start!731112 ((_ is Cons!72770) input!7855)) b!7570395))

(declare-fun m!8131676 () Bool)

(assert (=> b!7570409 m!8131676))

(declare-fun m!8131678 () Bool)

(assert (=> b!7570409 m!8131678))

(declare-fun m!8131680 () Bool)

(assert (=> b!7570409 m!8131680))

(declare-fun m!8131682 () Bool)

(assert (=> start!731112 m!8131682))

(declare-fun m!8131684 () Bool)

(assert (=> b!7570405 m!8131684))

(declare-fun m!8131686 () Bool)

(assert (=> b!7570403 m!8131686))

(declare-fun m!8131688 () Bool)

(assert (=> b!7570396 m!8131688))

(declare-fun m!8131690 () Bool)

(assert (=> b!7570408 m!8131690))

(declare-fun m!8131692 () Bool)

(assert (=> b!7570406 m!8131692))

(check-sat (not b!7570396) (not start!731112) (not b!7570408) (not b!7570409) (not b!7570403) (not b!7570404) (not b!7570398) (not b!7570397) (not b!7570399) (not b!7570407) tp_is_empty!50377 (not b!7570406) (not b!7570405) (not b!7570395) (not b!7570400) (not b!7570402))
(check-sat)
(get-model)

(declare-fun b!7570428 () Bool)

(declare-fun e!4507018 () Bool)

(declare-fun call!694009 () Bool)

(assert (=> b!7570428 (= e!4507018 call!694009)))

(declare-fun b!7570429 () Bool)

(declare-fun e!4507017 () Bool)

(declare-fun call!694010 () Bool)

(assert (=> b!7570429 (= e!4507017 call!694010)))

(declare-fun b!7570430 () Bool)

(declare-fun res!3032775 () Bool)

(declare-fun e!4507020 () Bool)

(assert (=> b!7570430 (=> res!3032775 e!4507020)))

(assert (=> b!7570430 (= res!3032775 (not ((_ is Concat!28856) r!24129)))))

(declare-fun e!4507019 () Bool)

(assert (=> b!7570430 (= e!4507019 e!4507020)))

(declare-fun c!1396783 () Bool)

(declare-fun c!1396784 () Bool)

(declare-fun bm!694004 () Bool)

(assert (=> bm!694004 (= call!694009 (validRegex!10439 (ite c!1396784 (reg!20340 r!24129) (ite c!1396783 (regOne!40535 r!24129) (regTwo!40534 r!24129)))))))

(declare-fun b!7570431 () Bool)

(declare-fun e!4507016 () Bool)

(assert (=> b!7570431 (= e!4507016 e!4507019)))

(assert (=> b!7570431 (= c!1396783 ((_ is Union!20011) r!24129))))

(declare-fun bm!694005 () Bool)

(declare-fun call!694011 () Bool)

(assert (=> bm!694005 (= call!694011 call!694009)))

(declare-fun b!7570432 () Bool)

(declare-fun e!4507014 () Bool)

(assert (=> b!7570432 (= e!4507014 call!694011)))

(declare-fun b!7570433 () Bool)

(assert (=> b!7570433 (= e!4507020 e!4507014)))

(declare-fun res!3032771 () Bool)

(assert (=> b!7570433 (=> (not res!3032771) (not e!4507014))))

(assert (=> b!7570433 (= res!3032771 call!694010)))

(declare-fun b!7570434 () Bool)

(assert (=> b!7570434 (= e!4507016 e!4507018)))

(declare-fun res!3032772 () Bool)

(assert (=> b!7570434 (= res!3032772 (not (nullable!8735 (reg!20340 r!24129))))))

(assert (=> b!7570434 (=> (not res!3032772) (not e!4507018))))

(declare-fun b!7570435 () Bool)

(declare-fun e!4507015 () Bool)

(assert (=> b!7570435 (= e!4507015 e!4507016)))

(assert (=> b!7570435 (= c!1396784 ((_ is Star!20011) r!24129))))

(declare-fun b!7570436 () Bool)

(declare-fun res!3032774 () Bool)

(assert (=> b!7570436 (=> (not res!3032774) (not e!4507017))))

(assert (=> b!7570436 (= res!3032774 call!694011)))

(assert (=> b!7570436 (= e!4507019 e!4507017)))

(declare-fun d!2317373 () Bool)

(declare-fun res!3032773 () Bool)

(assert (=> d!2317373 (=> res!3032773 e!4507015)))

(assert (=> d!2317373 (= res!3032773 ((_ is ElementMatch!20011) r!24129))))

(assert (=> d!2317373 (= (validRegex!10439 r!24129) e!4507015)))

(declare-fun bm!694006 () Bool)

(assert (=> bm!694006 (= call!694010 (validRegex!10439 (ite c!1396783 (regTwo!40535 r!24129) (regOne!40534 r!24129))))))

(assert (= (and d!2317373 (not res!3032773)) b!7570435))

(assert (= (and b!7570435 c!1396784) b!7570434))

(assert (= (and b!7570435 (not c!1396784)) b!7570431))

(assert (= (and b!7570434 res!3032772) b!7570428))

(assert (= (and b!7570431 c!1396783) b!7570436))

(assert (= (and b!7570431 (not c!1396783)) b!7570430))

(assert (= (and b!7570436 res!3032774) b!7570429))

(assert (= (and b!7570430 (not res!3032775)) b!7570433))

(assert (= (and b!7570433 res!3032771) b!7570432))

(assert (= (or b!7570429 b!7570433) bm!694006))

(assert (= (or b!7570436 b!7570432) bm!694005))

(assert (= (or b!7570428 bm!694005) bm!694004))

(declare-fun m!8131694 () Bool)

(assert (=> bm!694004 m!8131694))

(declare-fun m!8131696 () Bool)

(assert (=> b!7570434 m!8131696))

(declare-fun m!8131698 () Bool)

(assert (=> bm!694006 m!8131698))

(assert (=> b!7570408 d!2317373))

(declare-fun d!2317377 () Bool)

(declare-fun lt!2651171 () Regex!20011)

(assert (=> d!2317377 (validRegex!10439 lt!2651171)))

(declare-fun e!4507037 () Regex!20011)

(assert (=> d!2317377 (= lt!2651171 e!4507037)))

(declare-fun c!1396793 () Bool)

(assert (=> d!2317377 (= c!1396793 ((_ is Cons!72770) testedP!418))))

(assert (=> d!2317377 (validRegex!10439 baseR!100)))

(assert (=> d!2317377 (= (derivative!537 baseR!100 testedP!418) lt!2651171)))

(declare-fun b!7570469 () Bool)

(declare-fun derivativeStep!5769 (Regex!20011 C!40348) Regex!20011)

(assert (=> b!7570469 (= e!4507037 (derivative!537 (derivativeStep!5769 baseR!100 (h!79218 testedP!418)) (t!387629 testedP!418)))))

(declare-fun b!7570470 () Bool)

(assert (=> b!7570470 (= e!4507037 baseR!100)))

(assert (= (and d!2317377 c!1396793) b!7570469))

(assert (= (and d!2317377 (not c!1396793)) b!7570470))

(declare-fun m!8131700 () Bool)

(assert (=> d!2317377 m!8131700))

(assert (=> d!2317377 m!8131682))

(declare-fun m!8131702 () Bool)

(assert (=> b!7570469 m!8131702))

(assert (=> b!7570469 m!8131702))

(declare-fun m!8131704 () Bool)

(assert (=> b!7570469 m!8131704))

(assert (=> b!7570396 d!2317377))

(declare-fun b!7570471 () Bool)

(declare-fun e!4507042 () Bool)

(declare-fun call!694014 () Bool)

(assert (=> b!7570471 (= e!4507042 call!694014)))

(declare-fun b!7570472 () Bool)

(declare-fun e!4507041 () Bool)

(declare-fun call!694015 () Bool)

(assert (=> b!7570472 (= e!4507041 call!694015)))

(declare-fun b!7570473 () Bool)

(declare-fun res!3032796 () Bool)

(declare-fun e!4507044 () Bool)

(assert (=> b!7570473 (=> res!3032796 e!4507044)))

(assert (=> b!7570473 (= res!3032796 (not ((_ is Concat!28856) baseR!100)))))

(declare-fun e!4507043 () Bool)

(assert (=> b!7570473 (= e!4507043 e!4507044)))

(declare-fun bm!694009 () Bool)

(declare-fun c!1396795 () Bool)

(declare-fun c!1396794 () Bool)

(assert (=> bm!694009 (= call!694014 (validRegex!10439 (ite c!1396795 (reg!20340 baseR!100) (ite c!1396794 (regOne!40535 baseR!100) (regTwo!40534 baseR!100)))))))

(declare-fun b!7570474 () Bool)

(declare-fun e!4507040 () Bool)

(assert (=> b!7570474 (= e!4507040 e!4507043)))

(assert (=> b!7570474 (= c!1396794 ((_ is Union!20011) baseR!100))))

(declare-fun bm!694010 () Bool)

(declare-fun call!694016 () Bool)

(assert (=> bm!694010 (= call!694016 call!694014)))

(declare-fun b!7570475 () Bool)

(declare-fun e!4507038 () Bool)

(assert (=> b!7570475 (= e!4507038 call!694016)))

(declare-fun b!7570476 () Bool)

(assert (=> b!7570476 (= e!4507044 e!4507038)))

(declare-fun res!3032792 () Bool)

(assert (=> b!7570476 (=> (not res!3032792) (not e!4507038))))

(assert (=> b!7570476 (= res!3032792 call!694015)))

(declare-fun b!7570477 () Bool)

(assert (=> b!7570477 (= e!4507040 e!4507042)))

(declare-fun res!3032793 () Bool)

(assert (=> b!7570477 (= res!3032793 (not (nullable!8735 (reg!20340 baseR!100))))))

(assert (=> b!7570477 (=> (not res!3032793) (not e!4507042))))

(declare-fun b!7570478 () Bool)

(declare-fun e!4507039 () Bool)

(assert (=> b!7570478 (= e!4507039 e!4507040)))

(assert (=> b!7570478 (= c!1396795 ((_ is Star!20011) baseR!100))))

(declare-fun b!7570479 () Bool)

(declare-fun res!3032795 () Bool)

(assert (=> b!7570479 (=> (not res!3032795) (not e!4507041))))

(assert (=> b!7570479 (= res!3032795 call!694016)))

(assert (=> b!7570479 (= e!4507043 e!4507041)))

(declare-fun d!2317379 () Bool)

(declare-fun res!3032794 () Bool)

(assert (=> d!2317379 (=> res!3032794 e!4507039)))

(assert (=> d!2317379 (= res!3032794 ((_ is ElementMatch!20011) baseR!100))))

(assert (=> d!2317379 (= (validRegex!10439 baseR!100) e!4507039)))

(declare-fun bm!694011 () Bool)

(assert (=> bm!694011 (= call!694015 (validRegex!10439 (ite c!1396794 (regTwo!40535 baseR!100) (regOne!40534 baseR!100))))))

(assert (= (and d!2317379 (not res!3032794)) b!7570478))

(assert (= (and b!7570478 c!1396795) b!7570477))

(assert (= (and b!7570478 (not c!1396795)) b!7570474))

(assert (= (and b!7570477 res!3032793) b!7570471))

(assert (= (and b!7570474 c!1396794) b!7570479))

(assert (= (and b!7570474 (not c!1396794)) b!7570473))

(assert (= (and b!7570479 res!3032795) b!7570472))

(assert (= (and b!7570473 (not res!3032796)) b!7570476))

(assert (= (and b!7570476 res!3032792) b!7570475))

(assert (= (or b!7570472 b!7570476) bm!694011))

(assert (= (or b!7570479 b!7570475) bm!694010))

(assert (= (or b!7570471 bm!694010) bm!694009))

(declare-fun m!8131706 () Bool)

(assert (=> bm!694009 m!8131706))

(declare-fun m!8131708 () Bool)

(assert (=> b!7570477 m!8131708))

(declare-fun m!8131710 () Bool)

(assert (=> bm!694011 m!8131710))

(assert (=> start!731112 d!2317379))

(declare-fun d!2317381 () Bool)

(declare-fun nullableFct!3485 (Regex!20011) Bool)

(assert (=> d!2317381 (= (nullable!8735 r!24129) (nullableFct!3485 r!24129))))

(declare-fun bs!1940583 () Bool)

(assert (= bs!1940583 d!2317381))

(declare-fun m!8131712 () Bool)

(assert (=> bs!1940583 m!8131712))

(assert (=> b!7570406 d!2317381))

(declare-fun d!2317383 () Bool)

(declare-fun e!4507074 () Bool)

(assert (=> d!2317383 e!4507074))

(declare-fun res!3032825 () Bool)

(assert (=> d!2317383 (=> res!3032825 e!4507074)))

(declare-fun lt!2651175 () Bool)

(assert (=> d!2317383 (= res!3032825 (not lt!2651175))))

(declare-fun e!4507073 () Bool)

(assert (=> d!2317383 (= lt!2651175 e!4507073)))

(declare-fun res!3032823 () Bool)

(assert (=> d!2317383 (=> res!3032823 e!4507073)))

(assert (=> d!2317383 (= res!3032823 ((_ is Nil!72770) testedP!418))))

(assert (=> d!2317383 (= (isPrefix!6217 testedP!418 input!7855) lt!2651175)))

(declare-fun b!7570522 () Bool)

(declare-fun e!4507072 () Bool)

(declare-fun tail!15109 (List!72894) List!72894)

(assert (=> b!7570522 (= e!4507072 (isPrefix!6217 (tail!15109 testedP!418) (tail!15109 input!7855)))))

(declare-fun b!7570523 () Bool)

(declare-fun size!42492 (List!72894) Int)

(assert (=> b!7570523 (= e!4507074 (>= (size!42492 input!7855) (size!42492 testedP!418)))))

(declare-fun b!7570520 () Bool)

(assert (=> b!7570520 (= e!4507073 e!4507072)))

(declare-fun res!3032824 () Bool)

(assert (=> b!7570520 (=> (not res!3032824) (not e!4507072))))

(assert (=> b!7570520 (= res!3032824 (not ((_ is Nil!72770) input!7855)))))

(declare-fun b!7570521 () Bool)

(declare-fun res!3032826 () Bool)

(assert (=> b!7570521 (=> (not res!3032826) (not e!4507072))))

(declare-fun head!15569 (List!72894) C!40348)

(assert (=> b!7570521 (= res!3032826 (= (head!15569 testedP!418) (head!15569 input!7855)))))

(assert (= (and d!2317383 (not res!3032823)) b!7570520))

(assert (= (and b!7570520 res!3032824) b!7570521))

(assert (= (and b!7570521 res!3032826) b!7570522))

(assert (= (and d!2317383 (not res!3032825)) b!7570523))

(declare-fun m!8131728 () Bool)

(assert (=> b!7570522 m!8131728))

(declare-fun m!8131730 () Bool)

(assert (=> b!7570522 m!8131730))

(assert (=> b!7570522 m!8131728))

(assert (=> b!7570522 m!8131730))

(declare-fun m!8131732 () Bool)

(assert (=> b!7570522 m!8131732))

(declare-fun m!8131734 () Bool)

(assert (=> b!7570523 m!8131734))

(declare-fun m!8131736 () Bool)

(assert (=> b!7570523 m!8131736))

(declare-fun m!8131738 () Bool)

(assert (=> b!7570521 m!8131738))

(declare-fun m!8131740 () Bool)

(assert (=> b!7570521 m!8131740))

(assert (=> b!7570405 d!2317383))

(declare-fun b!7570575 () Bool)

(declare-fun res!3032860 () Bool)

(declare-fun e!4507108 () Bool)

(assert (=> b!7570575 (=> (not res!3032860) (not e!4507108))))

(declare-fun call!694029 () Bool)

(assert (=> b!7570575 (= res!3032860 (not call!694029))))

(declare-fun b!7570576 () Bool)

(declare-fun e!4507109 () Bool)

(assert (=> b!7570576 (= e!4507109 (not (= (head!15569 Nil!72770) (c!1396778 r!24129))))))

(declare-fun b!7570577 () Bool)

(declare-fun res!3032858 () Bool)

(assert (=> b!7570577 (=> (not res!3032858) (not e!4507108))))

(declare-fun isEmpty!41431 (List!72894) Bool)

(assert (=> b!7570577 (= res!3032858 (isEmpty!41431 (tail!15109 Nil!72770)))))

(declare-fun b!7570578 () Bool)

(declare-fun res!3032857 () Bool)

(declare-fun e!4507111 () Bool)

(assert (=> b!7570578 (=> res!3032857 e!4507111)))

(assert (=> b!7570578 (= res!3032857 (not ((_ is ElementMatch!20011) r!24129)))))

(declare-fun e!4507105 () Bool)

(assert (=> b!7570578 (= e!4507105 e!4507111)))

(declare-fun b!7570579 () Bool)

(declare-fun e!4507107 () Bool)

(assert (=> b!7570579 (= e!4507107 (matchR!9611 (derivativeStep!5769 r!24129 (head!15569 Nil!72770)) (tail!15109 Nil!72770)))))

(declare-fun b!7570580 () Bool)

(declare-fun e!4507106 () Bool)

(assert (=> b!7570580 (= e!4507111 e!4507106)))

(declare-fun res!3032861 () Bool)

(assert (=> b!7570580 (=> (not res!3032861) (not e!4507106))))

(declare-fun lt!2651183 () Bool)

(assert (=> b!7570580 (= res!3032861 (not lt!2651183))))

(declare-fun d!2317387 () Bool)

(declare-fun e!4507110 () Bool)

(assert (=> d!2317387 e!4507110))

(declare-fun c!1396815 () Bool)

(assert (=> d!2317387 (= c!1396815 ((_ is EmptyExpr!20011) r!24129))))

(assert (=> d!2317387 (= lt!2651183 e!4507107)))

(declare-fun c!1396816 () Bool)

(assert (=> d!2317387 (= c!1396816 (isEmpty!41431 Nil!72770))))

(assert (=> d!2317387 (validRegex!10439 r!24129)))

(assert (=> d!2317387 (= (matchR!9611 r!24129 Nil!72770) lt!2651183)))

(declare-fun b!7570581 () Bool)

(assert (=> b!7570581 (= e!4507110 e!4507105)))

(declare-fun c!1396814 () Bool)

(assert (=> b!7570581 (= c!1396814 ((_ is EmptyLang!20011) r!24129))))

(declare-fun bm!694024 () Bool)

(assert (=> bm!694024 (= call!694029 (isEmpty!41431 Nil!72770))))

(declare-fun b!7570582 () Bool)

(declare-fun res!3032862 () Bool)

(assert (=> b!7570582 (=> res!3032862 e!4507111)))

(assert (=> b!7570582 (= res!3032862 e!4507108)))

(declare-fun res!3032863 () Bool)

(assert (=> b!7570582 (=> (not res!3032863) (not e!4507108))))

(assert (=> b!7570582 (= res!3032863 lt!2651183)))

(declare-fun b!7570583 () Bool)

(assert (=> b!7570583 (= e!4507106 e!4507109)))

(declare-fun res!3032856 () Bool)

(assert (=> b!7570583 (=> res!3032856 e!4507109)))

(assert (=> b!7570583 (= res!3032856 call!694029)))

(declare-fun b!7570584 () Bool)

(assert (=> b!7570584 (= e!4507108 (= (head!15569 Nil!72770) (c!1396778 r!24129)))))

(declare-fun b!7570585 () Bool)

(declare-fun res!3032859 () Bool)

(assert (=> b!7570585 (=> res!3032859 e!4507109)))

(assert (=> b!7570585 (= res!3032859 (not (isEmpty!41431 (tail!15109 Nil!72770))))))

(declare-fun b!7570586 () Bool)

(assert (=> b!7570586 (= e!4507107 (nullable!8735 r!24129))))

(declare-fun b!7570587 () Bool)

(assert (=> b!7570587 (= e!4507105 (not lt!2651183))))

(declare-fun b!7570588 () Bool)

(assert (=> b!7570588 (= e!4507110 (= lt!2651183 call!694029))))

(assert (= (and d!2317387 c!1396816) b!7570586))

(assert (= (and d!2317387 (not c!1396816)) b!7570579))

(assert (= (and d!2317387 c!1396815) b!7570588))

(assert (= (and d!2317387 (not c!1396815)) b!7570581))

(assert (= (and b!7570581 c!1396814) b!7570587))

(assert (= (and b!7570581 (not c!1396814)) b!7570578))

(assert (= (and b!7570578 (not res!3032857)) b!7570582))

(assert (= (and b!7570582 res!3032863) b!7570575))

(assert (= (and b!7570575 res!3032860) b!7570577))

(assert (= (and b!7570577 res!3032858) b!7570584))

(assert (= (and b!7570582 (not res!3032862)) b!7570580))

(assert (= (and b!7570580 res!3032861) b!7570583))

(assert (= (and b!7570583 (not res!3032856)) b!7570585))

(assert (= (and b!7570585 (not res!3032859)) b!7570576))

(assert (= (or b!7570588 b!7570575 b!7570583) bm!694024))

(declare-fun m!8131764 () Bool)

(assert (=> b!7570585 m!8131764))

(assert (=> b!7570585 m!8131764))

(declare-fun m!8131766 () Bool)

(assert (=> b!7570585 m!8131766))

(declare-fun m!8131768 () Bool)

(assert (=> b!7570579 m!8131768))

(assert (=> b!7570579 m!8131768))

(declare-fun m!8131770 () Bool)

(assert (=> b!7570579 m!8131770))

(assert (=> b!7570579 m!8131764))

(assert (=> b!7570579 m!8131770))

(assert (=> b!7570579 m!8131764))

(declare-fun m!8131772 () Bool)

(assert (=> b!7570579 m!8131772))

(assert (=> b!7570576 m!8131768))

(declare-fun m!8131774 () Bool)

(assert (=> bm!694024 m!8131774))

(assert (=> b!7570586 m!8131692))

(assert (=> d!2317387 m!8131774))

(assert (=> d!2317387 m!8131690))

(assert (=> b!7570584 m!8131768))

(assert (=> b!7570577 m!8131764))

(assert (=> b!7570577 m!8131764))

(assert (=> b!7570577 m!8131766))

(assert (=> b!7570409 d!2317387))

(declare-fun b!7570602 () Bool)

(declare-fun res!3032877 () Bool)

(declare-fun e!4507125 () Bool)

(assert (=> b!7570602 (=> (not res!3032877) (not e!4507125))))

(declare-fun call!694033 () Bool)

(assert (=> b!7570602 (= res!3032877 (not call!694033))))

(declare-fun b!7570603 () Bool)

(declare-fun e!4507126 () Bool)

(assert (=> b!7570603 (= e!4507126 (not (= (head!15569 Nil!72770) (c!1396778 lt!2651166))))))

(declare-fun b!7570604 () Bool)

(declare-fun res!3032875 () Bool)

(assert (=> b!7570604 (=> (not res!3032875) (not e!4507125))))

(assert (=> b!7570604 (= res!3032875 (isEmpty!41431 (tail!15109 Nil!72770)))))

(declare-fun b!7570605 () Bool)

(declare-fun res!3032874 () Bool)

(declare-fun e!4507128 () Bool)

(assert (=> b!7570605 (=> res!3032874 e!4507128)))

(assert (=> b!7570605 (= res!3032874 (not ((_ is ElementMatch!20011) lt!2651166)))))

(declare-fun e!4507122 () Bool)

(assert (=> b!7570605 (= e!4507122 e!4507128)))

(declare-fun b!7570606 () Bool)

(declare-fun e!4507124 () Bool)

(assert (=> b!7570606 (= e!4507124 (matchR!9611 (derivativeStep!5769 lt!2651166 (head!15569 Nil!72770)) (tail!15109 Nil!72770)))))

(declare-fun b!7570607 () Bool)

(declare-fun e!4507123 () Bool)

(assert (=> b!7570607 (= e!4507128 e!4507123)))

(declare-fun res!3032878 () Bool)

(assert (=> b!7570607 (=> (not res!3032878) (not e!4507123))))

(declare-fun lt!2651185 () Bool)

(assert (=> b!7570607 (= res!3032878 (not lt!2651185))))

(declare-fun d!2317395 () Bool)

(declare-fun e!4507127 () Bool)

(assert (=> d!2317395 e!4507127))

(declare-fun c!1396820 () Bool)

(assert (=> d!2317395 (= c!1396820 ((_ is EmptyExpr!20011) lt!2651166))))

(assert (=> d!2317395 (= lt!2651185 e!4507124)))

(declare-fun c!1396821 () Bool)

(assert (=> d!2317395 (= c!1396821 (isEmpty!41431 Nil!72770))))

(assert (=> d!2317395 (validRegex!10439 lt!2651166)))

(assert (=> d!2317395 (= (matchR!9611 lt!2651166 Nil!72770) lt!2651185)))

(declare-fun b!7570608 () Bool)

(assert (=> b!7570608 (= e!4507127 e!4507122)))

(declare-fun c!1396819 () Bool)

(assert (=> b!7570608 (= c!1396819 ((_ is EmptyLang!20011) lt!2651166))))

(declare-fun bm!694028 () Bool)

(assert (=> bm!694028 (= call!694033 (isEmpty!41431 Nil!72770))))

(declare-fun b!7570609 () Bool)

(declare-fun res!3032879 () Bool)

(assert (=> b!7570609 (=> res!3032879 e!4507128)))

(assert (=> b!7570609 (= res!3032879 e!4507125)))

(declare-fun res!3032880 () Bool)

(assert (=> b!7570609 (=> (not res!3032880) (not e!4507125))))

(assert (=> b!7570609 (= res!3032880 lt!2651185)))

(declare-fun b!7570610 () Bool)

(assert (=> b!7570610 (= e!4507123 e!4507126)))

(declare-fun res!3032873 () Bool)

(assert (=> b!7570610 (=> res!3032873 e!4507126)))

(assert (=> b!7570610 (= res!3032873 call!694033)))

(declare-fun b!7570611 () Bool)

(assert (=> b!7570611 (= e!4507125 (= (head!15569 Nil!72770) (c!1396778 lt!2651166)))))

(declare-fun b!7570612 () Bool)

(declare-fun res!3032876 () Bool)

(assert (=> b!7570612 (=> res!3032876 e!4507126)))

(assert (=> b!7570612 (= res!3032876 (not (isEmpty!41431 (tail!15109 Nil!72770))))))

(declare-fun b!7570613 () Bool)

(assert (=> b!7570613 (= e!4507124 (nullable!8735 lt!2651166))))

(declare-fun b!7570614 () Bool)

(assert (=> b!7570614 (= e!4507122 (not lt!2651185))))

(declare-fun b!7570615 () Bool)

(assert (=> b!7570615 (= e!4507127 (= lt!2651185 call!694033))))

(assert (= (and d!2317395 c!1396821) b!7570613))

(assert (= (and d!2317395 (not c!1396821)) b!7570606))

(assert (= (and d!2317395 c!1396820) b!7570615))

(assert (= (and d!2317395 (not c!1396820)) b!7570608))

(assert (= (and b!7570608 c!1396819) b!7570614))

(assert (= (and b!7570608 (not c!1396819)) b!7570605))

(assert (= (and b!7570605 (not res!3032874)) b!7570609))

(assert (= (and b!7570609 res!3032880) b!7570602))

(assert (= (and b!7570602 res!3032877) b!7570604))

(assert (= (and b!7570604 res!3032875) b!7570611))

(assert (= (and b!7570609 (not res!3032879)) b!7570607))

(assert (= (and b!7570607 res!3032878) b!7570610))

(assert (= (and b!7570610 (not res!3032873)) b!7570612))

(assert (= (and b!7570612 (not res!3032876)) b!7570603))

(assert (= (or b!7570615 b!7570602 b!7570610) bm!694028))

(assert (=> b!7570612 m!8131764))

(assert (=> b!7570612 m!8131764))

(assert (=> b!7570612 m!8131766))

(assert (=> b!7570606 m!8131768))

(assert (=> b!7570606 m!8131768))

(declare-fun m!8131782 () Bool)

(assert (=> b!7570606 m!8131782))

(assert (=> b!7570606 m!8131764))

(assert (=> b!7570606 m!8131782))

(assert (=> b!7570606 m!8131764))

(declare-fun m!8131784 () Bool)

(assert (=> b!7570606 m!8131784))

(assert (=> b!7570603 m!8131768))

(assert (=> bm!694028 m!8131774))

(declare-fun m!8131786 () Bool)

(assert (=> b!7570613 m!8131786))

(assert (=> d!2317395 m!8131774))

(declare-fun m!8131788 () Bool)

(assert (=> d!2317395 m!8131788))

(assert (=> b!7570611 m!8131768))

(assert (=> b!7570604 m!8131764))

(assert (=> b!7570604 m!8131764))

(assert (=> b!7570604 m!8131766))

(assert (=> b!7570409 d!2317395))

(declare-fun d!2317399 () Bool)

(assert (=> d!2317399 (= (matchR!9611 baseR!100 testedP!418) (matchR!9611 (derivative!537 baseR!100 testedP!418) Nil!72770))))

(declare-fun lt!2651190 () Unit!166974)

(declare-fun choose!58538 (Regex!20011 List!72894) Unit!166974)

(assert (=> d!2317399 (= lt!2651190 (choose!58538 baseR!100 testedP!418))))

(assert (=> d!2317399 (validRegex!10439 baseR!100)))

(assert (=> d!2317399 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!280 baseR!100 testedP!418) lt!2651190)))

(declare-fun bs!1940584 () Bool)

(assert (= bs!1940584 d!2317399))

(assert (=> bs!1940584 m!8131688))

(declare-fun m!8131810 () Bool)

(assert (=> bs!1940584 m!8131810))

(assert (=> bs!1940584 m!8131688))

(assert (=> bs!1940584 m!8131682))

(assert (=> bs!1940584 m!8131686))

(declare-fun m!8131812 () Bool)

(assert (=> bs!1940584 m!8131812))

(assert (=> b!7570409 d!2317399))

(declare-fun b!7570644 () Bool)

(declare-fun res!3032901 () Bool)

(declare-fun e!4507146 () Bool)

(assert (=> b!7570644 (=> (not res!3032901) (not e!4507146))))

(declare-fun call!694036 () Bool)

(assert (=> b!7570644 (= res!3032901 (not call!694036))))

(declare-fun b!7570645 () Bool)

(declare-fun e!4507147 () Bool)

(assert (=> b!7570645 (= e!4507147 (not (= (head!15569 testedP!418) (c!1396778 baseR!100))))))

(declare-fun b!7570646 () Bool)

(declare-fun res!3032899 () Bool)

(assert (=> b!7570646 (=> (not res!3032899) (not e!4507146))))

(assert (=> b!7570646 (= res!3032899 (isEmpty!41431 (tail!15109 testedP!418)))))

(declare-fun b!7570647 () Bool)

(declare-fun res!3032898 () Bool)

(declare-fun e!4507149 () Bool)

(assert (=> b!7570647 (=> res!3032898 e!4507149)))

(assert (=> b!7570647 (= res!3032898 (not ((_ is ElementMatch!20011) baseR!100)))))

(declare-fun e!4507143 () Bool)

(assert (=> b!7570647 (= e!4507143 e!4507149)))

(declare-fun b!7570648 () Bool)

(declare-fun e!4507145 () Bool)

(assert (=> b!7570648 (= e!4507145 (matchR!9611 (derivativeStep!5769 baseR!100 (head!15569 testedP!418)) (tail!15109 testedP!418)))))

(declare-fun b!7570649 () Bool)

(declare-fun e!4507144 () Bool)

(assert (=> b!7570649 (= e!4507149 e!4507144)))

(declare-fun res!3032902 () Bool)

(assert (=> b!7570649 (=> (not res!3032902) (not e!4507144))))

(declare-fun lt!2651191 () Bool)

(assert (=> b!7570649 (= res!3032902 (not lt!2651191))))

(declare-fun d!2317405 () Bool)

(declare-fun e!4507148 () Bool)

(assert (=> d!2317405 e!4507148))

(declare-fun c!1396829 () Bool)

(assert (=> d!2317405 (= c!1396829 ((_ is EmptyExpr!20011) baseR!100))))

(assert (=> d!2317405 (= lt!2651191 e!4507145)))

(declare-fun c!1396830 () Bool)

(assert (=> d!2317405 (= c!1396830 (isEmpty!41431 testedP!418))))

(assert (=> d!2317405 (validRegex!10439 baseR!100)))

(assert (=> d!2317405 (= (matchR!9611 baseR!100 testedP!418) lt!2651191)))

(declare-fun b!7570650 () Bool)

(assert (=> b!7570650 (= e!4507148 e!4507143)))

(declare-fun c!1396828 () Bool)

(assert (=> b!7570650 (= c!1396828 ((_ is EmptyLang!20011) baseR!100))))

(declare-fun bm!694031 () Bool)

(assert (=> bm!694031 (= call!694036 (isEmpty!41431 testedP!418))))

(declare-fun b!7570651 () Bool)

(declare-fun res!3032903 () Bool)

(assert (=> b!7570651 (=> res!3032903 e!4507149)))

(assert (=> b!7570651 (= res!3032903 e!4507146)))

(declare-fun res!3032904 () Bool)

(assert (=> b!7570651 (=> (not res!3032904) (not e!4507146))))

(assert (=> b!7570651 (= res!3032904 lt!2651191)))

(declare-fun b!7570652 () Bool)

(assert (=> b!7570652 (= e!4507144 e!4507147)))

(declare-fun res!3032897 () Bool)

(assert (=> b!7570652 (=> res!3032897 e!4507147)))

(assert (=> b!7570652 (= res!3032897 call!694036)))

(declare-fun b!7570653 () Bool)

(assert (=> b!7570653 (= e!4507146 (= (head!15569 testedP!418) (c!1396778 baseR!100)))))

(declare-fun b!7570654 () Bool)

(declare-fun res!3032900 () Bool)

(assert (=> b!7570654 (=> res!3032900 e!4507147)))

(assert (=> b!7570654 (= res!3032900 (not (isEmpty!41431 (tail!15109 testedP!418))))))

(declare-fun b!7570655 () Bool)

(assert (=> b!7570655 (= e!4507145 (nullable!8735 baseR!100))))

(declare-fun b!7570656 () Bool)

(assert (=> b!7570656 (= e!4507143 (not lt!2651191))))

(declare-fun b!7570657 () Bool)

(assert (=> b!7570657 (= e!4507148 (= lt!2651191 call!694036))))

(assert (= (and d!2317405 c!1396830) b!7570655))

(assert (= (and d!2317405 (not c!1396830)) b!7570648))

(assert (= (and d!2317405 c!1396829) b!7570657))

(assert (= (and d!2317405 (not c!1396829)) b!7570650))

(assert (= (and b!7570650 c!1396828) b!7570656))

(assert (= (and b!7570650 (not c!1396828)) b!7570647))

(assert (= (and b!7570647 (not res!3032898)) b!7570651))

(assert (= (and b!7570651 res!3032904) b!7570644))

(assert (= (and b!7570644 res!3032901) b!7570646))

(assert (= (and b!7570646 res!3032899) b!7570653))

(assert (= (and b!7570651 (not res!3032903)) b!7570649))

(assert (= (and b!7570649 res!3032902) b!7570652))

(assert (= (and b!7570652 (not res!3032897)) b!7570654))

(assert (= (and b!7570654 (not res!3032900)) b!7570645))

(assert (= (or b!7570657 b!7570644 b!7570652) bm!694031))

(assert (=> b!7570654 m!8131728))

(assert (=> b!7570654 m!8131728))

(declare-fun m!8131814 () Bool)

(assert (=> b!7570654 m!8131814))

(assert (=> b!7570648 m!8131738))

(assert (=> b!7570648 m!8131738))

(declare-fun m!8131816 () Bool)

(assert (=> b!7570648 m!8131816))

(assert (=> b!7570648 m!8131728))

(assert (=> b!7570648 m!8131816))

(assert (=> b!7570648 m!8131728))

(declare-fun m!8131818 () Bool)

(assert (=> b!7570648 m!8131818))

(assert (=> b!7570645 m!8131738))

(declare-fun m!8131820 () Bool)

(assert (=> bm!694031 m!8131820))

(declare-fun m!8131822 () Bool)

(assert (=> b!7570655 m!8131822))

(assert (=> d!2317405 m!8131820))

(assert (=> d!2317405 m!8131682))

(assert (=> b!7570653 m!8131738))

(assert (=> b!7570646 m!8131728))

(assert (=> b!7570646 m!8131728))

(assert (=> b!7570646 m!8131814))

(assert (=> b!7570403 d!2317405))

(declare-fun e!4507154 () Bool)

(assert (=> b!7570397 (= tp!2205508 e!4507154)))

(declare-fun b!7570672 () Bool)

(assert (=> b!7570672 (= e!4507154 tp_is_empty!50377)))

(declare-fun b!7570675 () Bool)

(declare-fun tp!2205530 () Bool)

(declare-fun tp!2205531 () Bool)

(assert (=> b!7570675 (= e!4507154 (and tp!2205530 tp!2205531))))

(declare-fun b!7570673 () Bool)

(declare-fun tp!2205532 () Bool)

(declare-fun tp!2205533 () Bool)

(assert (=> b!7570673 (= e!4507154 (and tp!2205532 tp!2205533))))

(declare-fun b!7570674 () Bool)

(declare-fun tp!2205534 () Bool)

(assert (=> b!7570674 (= e!4507154 tp!2205534)))

(assert (= (and b!7570397 ((_ is ElementMatch!20011) (reg!20340 baseR!100))) b!7570672))

(assert (= (and b!7570397 ((_ is Concat!28856) (reg!20340 baseR!100))) b!7570673))

(assert (= (and b!7570397 ((_ is Star!20011) (reg!20340 baseR!100))) b!7570674))

(assert (= (and b!7570397 ((_ is Union!20011) (reg!20340 baseR!100))) b!7570675))

(declare-fun e!4507156 () Bool)

(assert (=> b!7570407 (= tp!2205507 e!4507156)))

(declare-fun b!7570677 () Bool)

(assert (=> b!7570677 (= e!4507156 tp_is_empty!50377)))

(declare-fun b!7570680 () Bool)

(declare-fun tp!2205536 () Bool)

(declare-fun tp!2205537 () Bool)

(assert (=> b!7570680 (= e!4507156 (and tp!2205536 tp!2205537))))

(declare-fun b!7570678 () Bool)

(declare-fun tp!2205538 () Bool)

(declare-fun tp!2205539 () Bool)

(assert (=> b!7570678 (= e!4507156 (and tp!2205538 tp!2205539))))

(declare-fun b!7570679 () Bool)

(declare-fun tp!2205540 () Bool)

(assert (=> b!7570679 (= e!4507156 tp!2205540)))

(assert (= (and b!7570407 ((_ is ElementMatch!20011) (regOne!40535 r!24129))) b!7570677))

(assert (= (and b!7570407 ((_ is Concat!28856) (regOne!40535 r!24129))) b!7570678))

(assert (= (and b!7570407 ((_ is Star!20011) (regOne!40535 r!24129))) b!7570679))

(assert (= (and b!7570407 ((_ is Union!20011) (regOne!40535 r!24129))) b!7570680))

(declare-fun e!4507159 () Bool)

(assert (=> b!7570407 (= tp!2205512 e!4507159)))

(declare-fun b!7570687 () Bool)

(assert (=> b!7570687 (= e!4507159 tp_is_empty!50377)))

(declare-fun b!7570690 () Bool)

(declare-fun tp!2205543 () Bool)

(declare-fun tp!2205544 () Bool)

(assert (=> b!7570690 (= e!4507159 (and tp!2205543 tp!2205544))))

(declare-fun b!7570688 () Bool)

(declare-fun tp!2205545 () Bool)

(declare-fun tp!2205546 () Bool)

(assert (=> b!7570688 (= e!4507159 (and tp!2205545 tp!2205546))))

(declare-fun b!7570689 () Bool)

(declare-fun tp!2205547 () Bool)

(assert (=> b!7570689 (= e!4507159 tp!2205547)))

(assert (= (and b!7570407 ((_ is ElementMatch!20011) (regTwo!40535 r!24129))) b!7570687))

(assert (= (and b!7570407 ((_ is Concat!28856) (regTwo!40535 r!24129))) b!7570688))

(assert (= (and b!7570407 ((_ is Star!20011) (regTwo!40535 r!24129))) b!7570689))

(assert (= (and b!7570407 ((_ is Union!20011) (regTwo!40535 r!24129))) b!7570690))

(declare-fun e!4507160 () Bool)

(assert (=> b!7570402 (= tp!2205516 e!4507160)))

(declare-fun b!7570695 () Bool)

(assert (=> b!7570695 (= e!4507160 tp_is_empty!50377)))

(declare-fun b!7570698 () Bool)

(declare-fun tp!2205554 () Bool)

(declare-fun tp!2205555 () Bool)

(assert (=> b!7570698 (= e!4507160 (and tp!2205554 tp!2205555))))

(declare-fun b!7570696 () Bool)

(declare-fun tp!2205556 () Bool)

(declare-fun tp!2205557 () Bool)

(assert (=> b!7570696 (= e!4507160 (and tp!2205556 tp!2205557))))

(declare-fun b!7570697 () Bool)

(declare-fun tp!2205558 () Bool)

(assert (=> b!7570697 (= e!4507160 tp!2205558)))

(assert (= (and b!7570402 ((_ is ElementMatch!20011) (regOne!40534 r!24129))) b!7570695))

(assert (= (and b!7570402 ((_ is Concat!28856) (regOne!40534 r!24129))) b!7570696))

(assert (= (and b!7570402 ((_ is Star!20011) (regOne!40534 r!24129))) b!7570697))

(assert (= (and b!7570402 ((_ is Union!20011) (regOne!40534 r!24129))) b!7570698))

(declare-fun e!4507161 () Bool)

(assert (=> b!7570402 (= tp!2205513 e!4507161)))

(declare-fun b!7570699 () Bool)

(assert (=> b!7570699 (= e!4507161 tp_is_empty!50377)))

(declare-fun b!7570702 () Bool)

(declare-fun tp!2205561 () Bool)

(declare-fun tp!2205562 () Bool)

(assert (=> b!7570702 (= e!4507161 (and tp!2205561 tp!2205562))))

(declare-fun b!7570700 () Bool)

(declare-fun tp!2205563 () Bool)

(declare-fun tp!2205564 () Bool)

(assert (=> b!7570700 (= e!4507161 (and tp!2205563 tp!2205564))))

(declare-fun b!7570701 () Bool)

(declare-fun tp!2205565 () Bool)

(assert (=> b!7570701 (= e!4507161 tp!2205565)))

(assert (= (and b!7570402 ((_ is ElementMatch!20011) (regTwo!40534 r!24129))) b!7570699))

(assert (= (and b!7570402 ((_ is Concat!28856) (regTwo!40534 r!24129))) b!7570700))

(assert (= (and b!7570402 ((_ is Star!20011) (regTwo!40534 r!24129))) b!7570701))

(assert (= (and b!7570402 ((_ is Union!20011) (regTwo!40534 r!24129))) b!7570702))

(declare-fun b!7570711 () Bool)

(declare-fun e!4507165 () Bool)

(declare-fun tp!2205573 () Bool)

(assert (=> b!7570711 (= e!4507165 (and tp_is_empty!50377 tp!2205573))))

(assert (=> b!7570395 (= tp!2205517 e!4507165)))

(assert (= (and b!7570395 ((_ is Cons!72770) (t!387629 input!7855))) b!7570711))

(declare-fun e!4507166 () Bool)

(assert (=> b!7570400 (= tp!2205510 e!4507166)))

(declare-fun b!7570712 () Bool)

(assert (=> b!7570712 (= e!4507166 tp_is_empty!50377)))

(declare-fun b!7570715 () Bool)

(declare-fun tp!2205574 () Bool)

(declare-fun tp!2205575 () Bool)

(assert (=> b!7570715 (= e!4507166 (and tp!2205574 tp!2205575))))

(declare-fun b!7570713 () Bool)

(declare-fun tp!2205576 () Bool)

(declare-fun tp!2205577 () Bool)

(assert (=> b!7570713 (= e!4507166 (and tp!2205576 tp!2205577))))

(declare-fun b!7570714 () Bool)

(declare-fun tp!2205578 () Bool)

(assert (=> b!7570714 (= e!4507166 tp!2205578)))

(assert (= (and b!7570400 ((_ is ElementMatch!20011) (regOne!40535 baseR!100))) b!7570712))

(assert (= (and b!7570400 ((_ is Concat!28856) (regOne!40535 baseR!100))) b!7570713))

(assert (= (and b!7570400 ((_ is Star!20011) (regOne!40535 baseR!100))) b!7570714))

(assert (= (and b!7570400 ((_ is Union!20011) (regOne!40535 baseR!100))) b!7570715))

(declare-fun e!4507168 () Bool)

(assert (=> b!7570400 (= tp!2205511 e!4507168)))

(declare-fun b!7570720 () Bool)

(assert (=> b!7570720 (= e!4507168 tp_is_empty!50377)))

(declare-fun b!7570723 () Bool)

(declare-fun tp!2205584 () Bool)

(declare-fun tp!2205585 () Bool)

(assert (=> b!7570723 (= e!4507168 (and tp!2205584 tp!2205585))))

(declare-fun b!7570721 () Bool)

(declare-fun tp!2205586 () Bool)

(declare-fun tp!2205587 () Bool)

(assert (=> b!7570721 (= e!4507168 (and tp!2205586 tp!2205587))))

(declare-fun b!7570722 () Bool)

(declare-fun tp!2205588 () Bool)

(assert (=> b!7570722 (= e!4507168 tp!2205588)))

(assert (= (and b!7570400 ((_ is ElementMatch!20011) (regTwo!40535 baseR!100))) b!7570720))

(assert (= (and b!7570400 ((_ is Concat!28856) (regTwo!40535 baseR!100))) b!7570721))

(assert (= (and b!7570400 ((_ is Star!20011) (regTwo!40535 baseR!100))) b!7570722))

(assert (= (and b!7570400 ((_ is Union!20011) (regTwo!40535 baseR!100))) b!7570723))

(declare-fun b!7570728 () Bool)

(declare-fun e!4507170 () Bool)

(declare-fun tp!2205594 () Bool)

(assert (=> b!7570728 (= e!4507170 (and tp_is_empty!50377 tp!2205594))))

(assert (=> b!7570399 (= tp!2205506 e!4507170)))

(assert (= (and b!7570399 ((_ is Cons!72770) (t!387629 testedP!418))) b!7570728))

(declare-fun e!4507171 () Bool)

(assert (=> b!7570404 (= tp!2205514 e!4507171)))

(declare-fun b!7570729 () Bool)

(assert (=> b!7570729 (= e!4507171 tp_is_empty!50377)))

(declare-fun b!7570732 () Bool)

(declare-fun tp!2205595 () Bool)

(declare-fun tp!2205596 () Bool)

(assert (=> b!7570732 (= e!4507171 (and tp!2205595 tp!2205596))))

(declare-fun b!7570730 () Bool)

(declare-fun tp!2205597 () Bool)

(declare-fun tp!2205598 () Bool)

(assert (=> b!7570730 (= e!4507171 (and tp!2205597 tp!2205598))))

(declare-fun b!7570731 () Bool)

(declare-fun tp!2205599 () Bool)

(assert (=> b!7570731 (= e!4507171 tp!2205599)))

(assert (= (and b!7570404 ((_ is ElementMatch!20011) (reg!20340 r!24129))) b!7570729))

(assert (= (and b!7570404 ((_ is Concat!28856) (reg!20340 r!24129))) b!7570730))

(assert (= (and b!7570404 ((_ is Star!20011) (reg!20340 r!24129))) b!7570731))

(assert (= (and b!7570404 ((_ is Union!20011) (reg!20340 r!24129))) b!7570732))

(declare-fun e!4507173 () Bool)

(assert (=> b!7570398 (= tp!2205509 e!4507173)))

(declare-fun b!7570737 () Bool)

(assert (=> b!7570737 (= e!4507173 tp_is_empty!50377)))

(declare-fun b!7570740 () Bool)

(declare-fun tp!2205605 () Bool)

(declare-fun tp!2205606 () Bool)

(assert (=> b!7570740 (= e!4507173 (and tp!2205605 tp!2205606))))

(declare-fun b!7570738 () Bool)

(declare-fun tp!2205607 () Bool)

(declare-fun tp!2205608 () Bool)

(assert (=> b!7570738 (= e!4507173 (and tp!2205607 tp!2205608))))

(declare-fun b!7570739 () Bool)

(declare-fun tp!2205609 () Bool)

(assert (=> b!7570739 (= e!4507173 tp!2205609)))

(assert (= (and b!7570398 ((_ is ElementMatch!20011) (regOne!40534 baseR!100))) b!7570737))

(assert (= (and b!7570398 ((_ is Concat!28856) (regOne!40534 baseR!100))) b!7570738))

(assert (= (and b!7570398 ((_ is Star!20011) (regOne!40534 baseR!100))) b!7570739))

(assert (= (and b!7570398 ((_ is Union!20011) (regOne!40534 baseR!100))) b!7570740))

(declare-fun e!4507175 () Bool)

(assert (=> b!7570398 (= tp!2205515 e!4507175)))

(declare-fun b!7570745 () Bool)

(assert (=> b!7570745 (= e!4507175 tp_is_empty!50377)))

(declare-fun b!7570748 () Bool)

(declare-fun tp!2205615 () Bool)

(declare-fun tp!2205616 () Bool)

(assert (=> b!7570748 (= e!4507175 (and tp!2205615 tp!2205616))))

(declare-fun b!7570746 () Bool)

(declare-fun tp!2205617 () Bool)

(declare-fun tp!2205618 () Bool)

(assert (=> b!7570746 (= e!4507175 (and tp!2205617 tp!2205618))))

(declare-fun b!7570747 () Bool)

(declare-fun tp!2205619 () Bool)

(assert (=> b!7570747 (= e!4507175 tp!2205619)))

(assert (= (and b!7570398 ((_ is ElementMatch!20011) (regTwo!40534 baseR!100))) b!7570745))

(assert (= (and b!7570398 ((_ is Concat!28856) (regTwo!40534 baseR!100))) b!7570746))

(assert (= (and b!7570398 ((_ is Star!20011) (regTwo!40534 baseR!100))) b!7570747))

(assert (= (and b!7570398 ((_ is Union!20011) (regTwo!40534 baseR!100))) b!7570748))

(check-sat (not b!7570730) (not b!7570477) (not b!7570674) (not b!7570606) (not b!7570723) (not b!7570646) (not b!7570469) (not b!7570690) (not b!7570702) (not b!7570584) (not bm!694009) (not b!7570738) (not bm!694031) (not b!7570701) (not bm!694028) (not d!2317405) (not b!7570611) (not b!7570645) (not b!7570700) (not b!7570713) (not b!7570747) (not b!7570675) tp_is_empty!50377 (not bm!694004) (not b!7570715) (not b!7570697) (not bm!694024) (not b!7570721) (not b!7570711) (not b!7570679) (not b!7570680) (not b!7570678) (not b!7570521) (not b!7570689) (not b!7570577) (not b!7570739) (not d!2317387) (not b!7570579) (not b!7570698) (not b!7570748) (not b!7570654) (not b!7570648) (not d!2317399) (not b!7570673) (not b!7570522) (not b!7570585) (not b!7570728) (not b!7570714) (not b!7570603) (not bm!694011) (not b!7570613) (not b!7570740) (not b!7570586) (not b!7570604) (not b!7570696) (not b!7570746) (not b!7570576) (not b!7570722) (not b!7570731) (not b!7570434) (not b!7570655) (not d!2317381) (not d!2317377) (not b!7570523) (not b!7570688) (not b!7570612) (not bm!694006) (not b!7570653) (not b!7570732) (not d!2317395))
(check-sat)
(get-model)

(declare-fun d!2317409 () Bool)

(assert (not d!2317409))

(assert (=> b!7570579 d!2317409))

(declare-fun d!2317411 () Bool)

(assert (not d!2317411))

(assert (=> b!7570579 d!2317411))

(declare-fun d!2317413 () Bool)

(assert (not d!2317413))

(assert (=> b!7570579 d!2317413))

(declare-fun d!2317415 () Bool)

(assert (not d!2317415))

(assert (=> b!7570579 d!2317415))

(declare-fun b!7570770 () Bool)

(declare-fun e!4507186 () Bool)

(declare-fun call!694037 () Bool)

(assert (=> b!7570770 (= e!4507186 call!694037)))

(declare-fun b!7570771 () Bool)

(declare-fun e!4507185 () Bool)

(declare-fun call!694038 () Bool)

(assert (=> b!7570771 (= e!4507185 call!694038)))

(declare-fun b!7570772 () Bool)

(declare-fun res!3032909 () Bool)

(declare-fun e!4507188 () Bool)

(assert (=> b!7570772 (=> res!3032909 e!4507188)))

(assert (=> b!7570772 (= res!3032909 (not ((_ is Concat!28856) (ite c!1396795 (reg!20340 baseR!100) (ite c!1396794 (regOne!40535 baseR!100) (regTwo!40534 baseR!100))))))))

(declare-fun e!4507187 () Bool)

(assert (=> b!7570772 (= e!4507187 e!4507188)))

(declare-fun bm!694032 () Bool)

(declare-fun c!1396831 () Bool)

(declare-fun c!1396832 () Bool)

(assert (=> bm!694032 (= call!694037 (validRegex!10439 (ite c!1396832 (reg!20340 (ite c!1396795 (reg!20340 baseR!100) (ite c!1396794 (regOne!40535 baseR!100) (regTwo!40534 baseR!100)))) (ite c!1396831 (regOne!40535 (ite c!1396795 (reg!20340 baseR!100) (ite c!1396794 (regOne!40535 baseR!100) (regTwo!40534 baseR!100)))) (regTwo!40534 (ite c!1396795 (reg!20340 baseR!100) (ite c!1396794 (regOne!40535 baseR!100) (regTwo!40534 baseR!100))))))))))

(declare-fun b!7570773 () Bool)

(declare-fun e!4507184 () Bool)

(assert (=> b!7570773 (= e!4507184 e!4507187)))

(assert (=> b!7570773 (= c!1396831 ((_ is Union!20011) (ite c!1396795 (reg!20340 baseR!100) (ite c!1396794 (regOne!40535 baseR!100) (regTwo!40534 baseR!100)))))))

(declare-fun bm!694033 () Bool)

(declare-fun call!694039 () Bool)

(assert (=> bm!694033 (= call!694039 call!694037)))

(declare-fun b!7570774 () Bool)

(declare-fun e!4507182 () Bool)

(assert (=> b!7570774 (= e!4507182 call!694039)))

(declare-fun b!7570775 () Bool)

(assert (=> b!7570775 (= e!4507188 e!4507182)))

(declare-fun res!3032905 () Bool)

(assert (=> b!7570775 (=> (not res!3032905) (not e!4507182))))

(assert (=> b!7570775 (= res!3032905 call!694038)))

(declare-fun b!7570776 () Bool)

(assert (=> b!7570776 (= e!4507184 e!4507186)))

(declare-fun res!3032906 () Bool)

(assert (=> b!7570776 (= res!3032906 (not (nullable!8735 (reg!20340 (ite c!1396795 (reg!20340 baseR!100) (ite c!1396794 (regOne!40535 baseR!100) (regTwo!40534 baseR!100)))))))))

(assert (=> b!7570776 (=> (not res!3032906) (not e!4507186))))

(declare-fun b!7570777 () Bool)

(declare-fun e!4507183 () Bool)

(assert (=> b!7570777 (= e!4507183 e!4507184)))

(assert (=> b!7570777 (= c!1396832 ((_ is Star!20011) (ite c!1396795 (reg!20340 baseR!100) (ite c!1396794 (regOne!40535 baseR!100) (regTwo!40534 baseR!100)))))))

(declare-fun b!7570778 () Bool)

(declare-fun res!3032908 () Bool)

(assert (=> b!7570778 (=> (not res!3032908) (not e!4507185))))

(assert (=> b!7570778 (= res!3032908 call!694039)))

(assert (=> b!7570778 (= e!4507187 e!4507185)))

(declare-fun d!2317417 () Bool)

(declare-fun res!3032907 () Bool)

(assert (=> d!2317417 (=> res!3032907 e!4507183)))

(assert (=> d!2317417 (= res!3032907 ((_ is ElementMatch!20011) (ite c!1396795 (reg!20340 baseR!100) (ite c!1396794 (regOne!40535 baseR!100) (regTwo!40534 baseR!100)))))))

(assert (=> d!2317417 (= (validRegex!10439 (ite c!1396795 (reg!20340 baseR!100) (ite c!1396794 (regOne!40535 baseR!100) (regTwo!40534 baseR!100)))) e!4507183)))

(declare-fun bm!694034 () Bool)

(assert (=> bm!694034 (= call!694038 (validRegex!10439 (ite c!1396831 (regTwo!40535 (ite c!1396795 (reg!20340 baseR!100) (ite c!1396794 (regOne!40535 baseR!100) (regTwo!40534 baseR!100)))) (regOne!40534 (ite c!1396795 (reg!20340 baseR!100) (ite c!1396794 (regOne!40535 baseR!100) (regTwo!40534 baseR!100)))))))))

(assert (= (and d!2317417 (not res!3032907)) b!7570777))

(assert (= (and b!7570777 c!1396832) b!7570776))

(assert (= (and b!7570777 (not c!1396832)) b!7570773))

(assert (= (and b!7570776 res!3032906) b!7570770))

(assert (= (and b!7570773 c!1396831) b!7570778))

(assert (= (and b!7570773 (not c!1396831)) b!7570772))

(assert (= (and b!7570778 res!3032908) b!7570771))

(assert (= (and b!7570772 (not res!3032909)) b!7570775))

(assert (= (and b!7570775 res!3032905) b!7570774))

(assert (= (or b!7570771 b!7570775) bm!694034))

(assert (= (or b!7570778 b!7570774) bm!694033))

(assert (= (or b!7570770 bm!694033) bm!694032))

(declare-fun m!8131830 () Bool)

(assert (=> bm!694032 m!8131830))

(declare-fun m!8131832 () Bool)

(assert (=> b!7570776 m!8131832))

(declare-fun m!8131834 () Bool)

(assert (=> bm!694034 m!8131834))

(assert (=> bm!694009 d!2317417))

(declare-fun b!7570779 () Bool)

(declare-fun e!4507193 () Bool)

(declare-fun call!694040 () Bool)

(assert (=> b!7570779 (= e!4507193 call!694040)))

(declare-fun b!7570780 () Bool)

(declare-fun e!4507192 () Bool)

(declare-fun call!694041 () Bool)

(assert (=> b!7570780 (= e!4507192 call!694041)))

(declare-fun b!7570781 () Bool)

(declare-fun res!3032914 () Bool)

(declare-fun e!4507195 () Bool)

(assert (=> b!7570781 (=> res!3032914 e!4507195)))

(assert (=> b!7570781 (= res!3032914 (not ((_ is Concat!28856) lt!2651171)))))

(declare-fun e!4507194 () Bool)

(assert (=> b!7570781 (= e!4507194 e!4507195)))

(declare-fun c!1396834 () Bool)

(declare-fun c!1396833 () Bool)

(declare-fun bm!694035 () Bool)

(assert (=> bm!694035 (= call!694040 (validRegex!10439 (ite c!1396834 (reg!20340 lt!2651171) (ite c!1396833 (regOne!40535 lt!2651171) (regTwo!40534 lt!2651171)))))))

(declare-fun b!7570782 () Bool)

(declare-fun e!4507191 () Bool)

(assert (=> b!7570782 (= e!4507191 e!4507194)))

(assert (=> b!7570782 (= c!1396833 ((_ is Union!20011) lt!2651171))))

(declare-fun bm!694036 () Bool)

(declare-fun call!694042 () Bool)

(assert (=> bm!694036 (= call!694042 call!694040)))

(declare-fun b!7570783 () Bool)

(declare-fun e!4507189 () Bool)

(assert (=> b!7570783 (= e!4507189 call!694042)))

(declare-fun b!7570784 () Bool)

(assert (=> b!7570784 (= e!4507195 e!4507189)))

(declare-fun res!3032910 () Bool)

(assert (=> b!7570784 (=> (not res!3032910) (not e!4507189))))

(assert (=> b!7570784 (= res!3032910 call!694041)))

(declare-fun b!7570785 () Bool)

(assert (=> b!7570785 (= e!4507191 e!4507193)))

(declare-fun res!3032911 () Bool)

(assert (=> b!7570785 (= res!3032911 (not (nullable!8735 (reg!20340 lt!2651171))))))

(assert (=> b!7570785 (=> (not res!3032911) (not e!4507193))))

(declare-fun b!7570786 () Bool)

(declare-fun e!4507190 () Bool)

(assert (=> b!7570786 (= e!4507190 e!4507191)))

(assert (=> b!7570786 (= c!1396834 ((_ is Star!20011) lt!2651171))))

(declare-fun b!7570787 () Bool)

(declare-fun res!3032913 () Bool)

(assert (=> b!7570787 (=> (not res!3032913) (not e!4507192))))

(assert (=> b!7570787 (= res!3032913 call!694042)))

(assert (=> b!7570787 (= e!4507194 e!4507192)))

(declare-fun d!2317419 () Bool)

(declare-fun res!3032912 () Bool)

(assert (=> d!2317419 (=> res!3032912 e!4507190)))

(assert (=> d!2317419 (= res!3032912 ((_ is ElementMatch!20011) lt!2651171))))

(assert (=> d!2317419 (= (validRegex!10439 lt!2651171) e!4507190)))

(declare-fun bm!694037 () Bool)

(assert (=> bm!694037 (= call!694041 (validRegex!10439 (ite c!1396833 (regTwo!40535 lt!2651171) (regOne!40534 lt!2651171))))))

(assert (= (and d!2317419 (not res!3032912)) b!7570786))

(assert (= (and b!7570786 c!1396834) b!7570785))

(assert (= (and b!7570786 (not c!1396834)) b!7570782))

(assert (= (and b!7570785 res!3032911) b!7570779))

(assert (= (and b!7570782 c!1396833) b!7570787))

(assert (= (and b!7570782 (not c!1396833)) b!7570781))

(assert (= (and b!7570787 res!3032913) b!7570780))

(assert (= (and b!7570781 (not res!3032914)) b!7570784))

(assert (= (and b!7570784 res!3032910) b!7570783))

(assert (= (or b!7570780 b!7570784) bm!694037))

(assert (= (or b!7570787 b!7570783) bm!694036))

(assert (= (or b!7570779 bm!694036) bm!694035))

(declare-fun m!8131836 () Bool)

(assert (=> bm!694035 m!8131836))

(declare-fun m!8131838 () Bool)

(assert (=> b!7570785 m!8131838))

(declare-fun m!8131840 () Bool)

(assert (=> bm!694037 m!8131840))

(assert (=> d!2317377 d!2317419))

(assert (=> d!2317377 d!2317379))

(declare-fun b!7570788 () Bool)

(declare-fun e!4507200 () Bool)

(declare-fun call!694043 () Bool)

(assert (=> b!7570788 (= e!4507200 call!694043)))

(declare-fun b!7570789 () Bool)

(declare-fun e!4507199 () Bool)

(declare-fun call!694044 () Bool)

(assert (=> b!7570789 (= e!4507199 call!694044)))

(declare-fun b!7570790 () Bool)

(declare-fun res!3032919 () Bool)

(declare-fun e!4507202 () Bool)

(assert (=> b!7570790 (=> res!3032919 e!4507202)))

(assert (=> b!7570790 (= res!3032919 (not ((_ is Concat!28856) (ite c!1396783 (regTwo!40535 r!24129) (regOne!40534 r!24129)))))))

(declare-fun e!4507201 () Bool)

(assert (=> b!7570790 (= e!4507201 e!4507202)))

(declare-fun bm!694038 () Bool)

(declare-fun c!1396836 () Bool)

(declare-fun c!1396835 () Bool)

(assert (=> bm!694038 (= call!694043 (validRegex!10439 (ite c!1396836 (reg!20340 (ite c!1396783 (regTwo!40535 r!24129) (regOne!40534 r!24129))) (ite c!1396835 (regOne!40535 (ite c!1396783 (regTwo!40535 r!24129) (regOne!40534 r!24129))) (regTwo!40534 (ite c!1396783 (regTwo!40535 r!24129) (regOne!40534 r!24129)))))))))

(declare-fun b!7570791 () Bool)

(declare-fun e!4507198 () Bool)

(assert (=> b!7570791 (= e!4507198 e!4507201)))

(assert (=> b!7570791 (= c!1396835 ((_ is Union!20011) (ite c!1396783 (regTwo!40535 r!24129) (regOne!40534 r!24129))))))

(declare-fun bm!694039 () Bool)

(declare-fun call!694045 () Bool)

(assert (=> bm!694039 (= call!694045 call!694043)))

(declare-fun b!7570792 () Bool)

(declare-fun e!4507196 () Bool)

(assert (=> b!7570792 (= e!4507196 call!694045)))

(declare-fun b!7570793 () Bool)

(assert (=> b!7570793 (= e!4507202 e!4507196)))

(declare-fun res!3032915 () Bool)

(assert (=> b!7570793 (=> (not res!3032915) (not e!4507196))))

(assert (=> b!7570793 (= res!3032915 call!694044)))

(declare-fun b!7570794 () Bool)

(assert (=> b!7570794 (= e!4507198 e!4507200)))

(declare-fun res!3032916 () Bool)

(assert (=> b!7570794 (= res!3032916 (not (nullable!8735 (reg!20340 (ite c!1396783 (regTwo!40535 r!24129) (regOne!40534 r!24129))))))))

(assert (=> b!7570794 (=> (not res!3032916) (not e!4507200))))

(declare-fun b!7570795 () Bool)

(declare-fun e!4507197 () Bool)

(assert (=> b!7570795 (= e!4507197 e!4507198)))

(assert (=> b!7570795 (= c!1396836 ((_ is Star!20011) (ite c!1396783 (regTwo!40535 r!24129) (regOne!40534 r!24129))))))

(declare-fun b!7570796 () Bool)

(declare-fun res!3032918 () Bool)

(assert (=> b!7570796 (=> (not res!3032918) (not e!4507199))))

(assert (=> b!7570796 (= res!3032918 call!694045)))

(assert (=> b!7570796 (= e!4507201 e!4507199)))

(declare-fun d!2317421 () Bool)

(declare-fun res!3032917 () Bool)

(assert (=> d!2317421 (=> res!3032917 e!4507197)))

(assert (=> d!2317421 (= res!3032917 ((_ is ElementMatch!20011) (ite c!1396783 (regTwo!40535 r!24129) (regOne!40534 r!24129))))))

(assert (=> d!2317421 (= (validRegex!10439 (ite c!1396783 (regTwo!40535 r!24129) (regOne!40534 r!24129))) e!4507197)))

(declare-fun bm!694040 () Bool)

(assert (=> bm!694040 (= call!694044 (validRegex!10439 (ite c!1396835 (regTwo!40535 (ite c!1396783 (regTwo!40535 r!24129) (regOne!40534 r!24129))) (regOne!40534 (ite c!1396783 (regTwo!40535 r!24129) (regOne!40534 r!24129))))))))

(assert (= (and d!2317421 (not res!3032917)) b!7570795))

(assert (= (and b!7570795 c!1396836) b!7570794))

(assert (= (and b!7570795 (not c!1396836)) b!7570791))

(assert (= (and b!7570794 res!3032916) b!7570788))

(assert (= (and b!7570791 c!1396835) b!7570796))

(assert (= (and b!7570791 (not c!1396835)) b!7570790))

(assert (= (and b!7570796 res!3032918) b!7570789))

(assert (= (and b!7570790 (not res!3032919)) b!7570793))

(assert (= (and b!7570793 res!3032915) b!7570792))

(assert (= (or b!7570789 b!7570793) bm!694040))

(assert (= (or b!7570796 b!7570792) bm!694039))

(assert (= (or b!7570788 bm!694039) bm!694038))

(declare-fun m!8131842 () Bool)

(assert (=> bm!694038 m!8131842))

(declare-fun m!8131844 () Bool)

(assert (=> b!7570794 m!8131844))

(declare-fun m!8131846 () Bool)

(assert (=> bm!694040 m!8131846))

(assert (=> bm!694006 d!2317421))

(declare-fun d!2317423 () Bool)

(assert (=> d!2317423 (= (isEmpty!41431 Nil!72770) true)))

(assert (=> bm!694028 d!2317423))

(declare-fun d!2317425 () Bool)

(assert (not d!2317425))

(assert (=> b!7570577 d!2317425))

(assert (=> b!7570577 d!2317415))

(declare-fun d!2317427 () Bool)

(assert (=> d!2317427 (= (nullable!8735 (reg!20340 r!24129)) (nullableFct!3485 (reg!20340 r!24129)))))

(declare-fun bs!1940587 () Bool)

(assert (= bs!1940587 d!2317427))

(declare-fun m!8131848 () Bool)

(assert (=> bs!1940587 m!8131848))

(assert (=> b!7570434 d!2317427))

(assert (=> d!2317387 d!2317423))

(assert (=> d!2317387 d!2317373))

(assert (=> b!7570576 d!2317413))

(declare-fun b!7570812 () Bool)

(declare-fun e!4507218 () Bool)

(declare-fun e!4507219 () Bool)

(assert (=> b!7570812 (= e!4507218 e!4507219)))

(declare-fun res!3032933 () Bool)

(assert (=> b!7570812 (=> (not res!3032933) (not e!4507219))))

(assert (=> b!7570812 (= res!3032933 (and (not ((_ is EmptyLang!20011) r!24129)) (not ((_ is ElementMatch!20011) r!24129))))))

(declare-fun bm!694045 () Bool)

(declare-fun call!694050 () Bool)

(declare-fun c!1396839 () Bool)

(assert (=> bm!694045 (= call!694050 (nullable!8735 (ite c!1396839 (regTwo!40535 r!24129) (regTwo!40534 r!24129))))))

(declare-fun b!7570813 () Bool)

(declare-fun e!4507215 () Bool)

(declare-fun e!4507220 () Bool)

(assert (=> b!7570813 (= e!4507215 e!4507220)))

(declare-fun res!3032930 () Bool)

(declare-fun call!694051 () Bool)

(assert (=> b!7570813 (= res!3032930 call!694051)))

(assert (=> b!7570813 (=> res!3032930 e!4507220)))

(declare-fun b!7570814 () Bool)

(declare-fun e!4507216 () Bool)

(assert (=> b!7570814 (= e!4507216 e!4507215)))

(assert (=> b!7570814 (= c!1396839 ((_ is Union!20011) r!24129))))

(declare-fun b!7570815 () Bool)

(assert (=> b!7570815 (= e!4507220 call!694050)))

(declare-fun b!7570816 () Bool)

(declare-fun e!4507217 () Bool)

(assert (=> b!7570816 (= e!4507215 e!4507217)))

(declare-fun res!3032934 () Bool)

(assert (=> b!7570816 (= res!3032934 call!694051)))

(assert (=> b!7570816 (=> (not res!3032934) (not e!4507217))))

(declare-fun bm!694046 () Bool)

(assert (=> bm!694046 (= call!694051 (nullable!8735 (ite c!1396839 (regOne!40535 r!24129) (regOne!40534 r!24129))))))

(declare-fun b!7570817 () Bool)

(assert (=> b!7570817 (= e!4507217 call!694050)))

(declare-fun b!7570811 () Bool)

(assert (=> b!7570811 (= e!4507219 e!4507216)))

(declare-fun res!3032932 () Bool)

(assert (=> b!7570811 (=> res!3032932 e!4507216)))

(assert (=> b!7570811 (= res!3032932 ((_ is Star!20011) r!24129))))

(declare-fun d!2317429 () Bool)

(declare-fun res!3032931 () Bool)

(assert (=> d!2317429 (=> res!3032931 e!4507218)))

(assert (=> d!2317429 (= res!3032931 ((_ is EmptyExpr!20011) r!24129))))

(assert (=> d!2317429 (= (nullableFct!3485 r!24129) e!4507218)))

(assert (= (and d!2317429 (not res!3032931)) b!7570812))

(assert (= (and b!7570812 res!3032933) b!7570811))

(assert (= (and b!7570811 (not res!3032932)) b!7570814))

(assert (= (and b!7570814 c!1396839) b!7570813))

(assert (= (and b!7570814 (not c!1396839)) b!7570816))

(assert (= (and b!7570813 (not res!3032930)) b!7570815))

(assert (= (and b!7570816 res!3032934) b!7570817))

(assert (= (or b!7570815 b!7570817) bm!694045))

(assert (= (or b!7570813 b!7570816) bm!694046))

(declare-fun m!8131850 () Bool)

(assert (=> bm!694045 m!8131850))

(declare-fun m!8131852 () Bool)

(assert (=> bm!694046 m!8131852))

(assert (=> d!2317381 d!2317429))

(declare-fun d!2317431 () Bool)

(assert (not d!2317431))

(assert (=> b!7570606 d!2317431))

(declare-fun d!2317433 () Bool)

(assert (not d!2317433))

(assert (=> b!7570606 d!2317433))

(assert (=> b!7570606 d!2317413))

(assert (=> b!7570606 d!2317415))

(declare-fun d!2317435 () Bool)

(assert (=> d!2317435 (= (nullable!8735 baseR!100) (nullableFct!3485 baseR!100))))

(declare-fun bs!1940588 () Bool)

(assert (= bs!1940588 d!2317435))

(declare-fun m!8131854 () Bool)

(assert (=> bs!1940588 m!8131854))

(assert (=> b!7570655 d!2317435))

(declare-fun d!2317437 () Bool)

(declare-fun e!4507223 () Bool)

(assert (=> d!2317437 e!4507223))

(declare-fun res!3032937 () Bool)

(assert (=> d!2317437 (=> res!3032937 e!4507223)))

(declare-fun lt!2651195 () Bool)

(assert (=> d!2317437 (= res!3032937 (not lt!2651195))))

(declare-fun e!4507222 () Bool)

(assert (=> d!2317437 (= lt!2651195 e!4507222)))

(declare-fun res!3032935 () Bool)

(assert (=> d!2317437 (=> res!3032935 e!4507222)))

(assert (=> d!2317437 (= res!3032935 ((_ is Nil!72770) (tail!15109 testedP!418)))))

(assert (=> d!2317437 (= (isPrefix!6217 (tail!15109 testedP!418) (tail!15109 input!7855)) lt!2651195)))

(declare-fun b!7570820 () Bool)

(declare-fun e!4507221 () Bool)

(assert (=> b!7570820 (= e!4507221 (isPrefix!6217 (tail!15109 (tail!15109 testedP!418)) (tail!15109 (tail!15109 input!7855))))))

(declare-fun b!7570821 () Bool)

(assert (=> b!7570821 (= e!4507223 (>= (size!42492 (tail!15109 input!7855)) (size!42492 (tail!15109 testedP!418))))))

(declare-fun b!7570818 () Bool)

(assert (=> b!7570818 (= e!4507222 e!4507221)))

(declare-fun res!3032936 () Bool)

(assert (=> b!7570818 (=> (not res!3032936) (not e!4507221))))

(assert (=> b!7570818 (= res!3032936 (not ((_ is Nil!72770) (tail!15109 input!7855))))))

(declare-fun b!7570819 () Bool)

(declare-fun res!3032938 () Bool)

(assert (=> b!7570819 (=> (not res!3032938) (not e!4507221))))

(assert (=> b!7570819 (= res!3032938 (= (head!15569 (tail!15109 testedP!418)) (head!15569 (tail!15109 input!7855))))))

(assert (= (and d!2317437 (not res!3032935)) b!7570818))

(assert (= (and b!7570818 res!3032936) b!7570819))

(assert (= (and b!7570819 res!3032938) b!7570820))

(assert (= (and d!2317437 (not res!3032937)) b!7570821))

(assert (=> b!7570820 m!8131728))

(declare-fun m!8131856 () Bool)

(assert (=> b!7570820 m!8131856))

(assert (=> b!7570820 m!8131730))

(declare-fun m!8131858 () Bool)

(assert (=> b!7570820 m!8131858))

(assert (=> b!7570820 m!8131856))

(assert (=> b!7570820 m!8131858))

(declare-fun m!8131860 () Bool)

(assert (=> b!7570820 m!8131860))

(assert (=> b!7570821 m!8131730))

(declare-fun m!8131862 () Bool)

(assert (=> b!7570821 m!8131862))

(assert (=> b!7570821 m!8131728))

(declare-fun m!8131864 () Bool)

(assert (=> b!7570821 m!8131864))

(assert (=> b!7570819 m!8131728))

(declare-fun m!8131866 () Bool)

(assert (=> b!7570819 m!8131866))

(assert (=> b!7570819 m!8131730))

(declare-fun m!8131868 () Bool)

(assert (=> b!7570819 m!8131868))

(assert (=> b!7570522 d!2317437))

(declare-fun d!2317439 () Bool)

(assert (=> d!2317439 (= (tail!15109 testedP!418) (t!387629 testedP!418))))

(assert (=> b!7570522 d!2317439))

(declare-fun d!2317441 () Bool)

(assert (=> d!2317441 (= (tail!15109 input!7855) (t!387629 input!7855))))

(assert (=> b!7570522 d!2317441))

(assert (=> b!7570604 d!2317425))

(assert (=> b!7570604 d!2317415))

(declare-fun b!7570822 () Bool)

(declare-fun res!3032943 () Bool)

(declare-fun e!4507227 () Bool)

(assert (=> b!7570822 (=> (not res!3032943) (not e!4507227))))

(declare-fun call!694052 () Bool)

(assert (=> b!7570822 (= res!3032943 (not call!694052))))

(declare-fun b!7570823 () Bool)

(declare-fun e!4507228 () Bool)

(assert (=> b!7570823 (= e!4507228 (not (= (head!15569 Nil!72770) (c!1396778 (derivative!537 baseR!100 testedP!418)))))))

(declare-fun b!7570824 () Bool)

(declare-fun res!3032941 () Bool)

(assert (=> b!7570824 (=> (not res!3032941) (not e!4507227))))

(assert (=> b!7570824 (= res!3032941 (isEmpty!41431 (tail!15109 Nil!72770)))))

(declare-fun b!7570825 () Bool)

(declare-fun res!3032940 () Bool)

(declare-fun e!4507230 () Bool)

(assert (=> b!7570825 (=> res!3032940 e!4507230)))

(assert (=> b!7570825 (= res!3032940 (not ((_ is ElementMatch!20011) (derivative!537 baseR!100 testedP!418))))))

(declare-fun e!4507224 () Bool)

(assert (=> b!7570825 (= e!4507224 e!4507230)))

(declare-fun b!7570826 () Bool)

(declare-fun e!4507226 () Bool)

(assert (=> b!7570826 (= e!4507226 (matchR!9611 (derivativeStep!5769 (derivative!537 baseR!100 testedP!418) (head!15569 Nil!72770)) (tail!15109 Nil!72770)))))

(declare-fun b!7570827 () Bool)

(declare-fun e!4507225 () Bool)

(assert (=> b!7570827 (= e!4507230 e!4507225)))

(declare-fun res!3032944 () Bool)

(assert (=> b!7570827 (=> (not res!3032944) (not e!4507225))))

(declare-fun lt!2651196 () Bool)

(assert (=> b!7570827 (= res!3032944 (not lt!2651196))))

(declare-fun d!2317443 () Bool)

(declare-fun e!4507229 () Bool)

(assert (=> d!2317443 e!4507229))

(declare-fun c!1396841 () Bool)

(assert (=> d!2317443 (= c!1396841 ((_ is EmptyExpr!20011) (derivative!537 baseR!100 testedP!418)))))

(assert (=> d!2317443 (= lt!2651196 e!4507226)))

(declare-fun c!1396842 () Bool)

(assert (=> d!2317443 (= c!1396842 (isEmpty!41431 Nil!72770))))

(assert (=> d!2317443 (validRegex!10439 (derivative!537 baseR!100 testedP!418))))

(assert (=> d!2317443 (= (matchR!9611 (derivative!537 baseR!100 testedP!418) Nil!72770) lt!2651196)))

(declare-fun b!7570828 () Bool)

(assert (=> b!7570828 (= e!4507229 e!4507224)))

(declare-fun c!1396840 () Bool)

(assert (=> b!7570828 (= c!1396840 ((_ is EmptyLang!20011) (derivative!537 baseR!100 testedP!418)))))

(declare-fun bm!694047 () Bool)

(assert (=> bm!694047 (= call!694052 (isEmpty!41431 Nil!72770))))

(declare-fun b!7570829 () Bool)

(declare-fun res!3032945 () Bool)

(assert (=> b!7570829 (=> res!3032945 e!4507230)))

(assert (=> b!7570829 (= res!3032945 e!4507227)))

(declare-fun res!3032946 () Bool)

(assert (=> b!7570829 (=> (not res!3032946) (not e!4507227))))

(assert (=> b!7570829 (= res!3032946 lt!2651196)))

(declare-fun b!7570830 () Bool)

(assert (=> b!7570830 (= e!4507225 e!4507228)))

(declare-fun res!3032939 () Bool)

(assert (=> b!7570830 (=> res!3032939 e!4507228)))

(assert (=> b!7570830 (= res!3032939 call!694052)))

(declare-fun b!7570831 () Bool)

(assert (=> b!7570831 (= e!4507227 (= (head!15569 Nil!72770) (c!1396778 (derivative!537 baseR!100 testedP!418))))))

(declare-fun b!7570832 () Bool)

(declare-fun res!3032942 () Bool)

(assert (=> b!7570832 (=> res!3032942 e!4507228)))

(assert (=> b!7570832 (= res!3032942 (not (isEmpty!41431 (tail!15109 Nil!72770))))))

(declare-fun b!7570833 () Bool)

(assert (=> b!7570833 (= e!4507226 (nullable!8735 (derivative!537 baseR!100 testedP!418)))))

(declare-fun b!7570834 () Bool)

(assert (=> b!7570834 (= e!4507224 (not lt!2651196))))

(declare-fun b!7570835 () Bool)

(assert (=> b!7570835 (= e!4507229 (= lt!2651196 call!694052))))

(assert (= (and d!2317443 c!1396842) b!7570833))

(assert (= (and d!2317443 (not c!1396842)) b!7570826))

(assert (= (and d!2317443 c!1396841) b!7570835))

(assert (= (and d!2317443 (not c!1396841)) b!7570828))

(assert (= (and b!7570828 c!1396840) b!7570834))

(assert (= (and b!7570828 (not c!1396840)) b!7570825))

(assert (= (and b!7570825 (not res!3032940)) b!7570829))

(assert (= (and b!7570829 res!3032946) b!7570822))

(assert (= (and b!7570822 res!3032943) b!7570824))

(assert (= (and b!7570824 res!3032941) b!7570831))

(assert (= (and b!7570829 (not res!3032945)) b!7570827))

(assert (= (and b!7570827 res!3032944) b!7570830))

(assert (= (and b!7570830 (not res!3032939)) b!7570832))

(assert (= (and b!7570832 (not res!3032942)) b!7570823))

(assert (= (or b!7570835 b!7570822 b!7570830) bm!694047))

(assert (=> b!7570832 m!8131764))

(assert (=> b!7570832 m!8131764))

(assert (=> b!7570832 m!8131766))

(assert (=> b!7570826 m!8131768))

(assert (=> b!7570826 m!8131688))

(assert (=> b!7570826 m!8131768))

(declare-fun m!8131870 () Bool)

(assert (=> b!7570826 m!8131870))

(assert (=> b!7570826 m!8131764))

(assert (=> b!7570826 m!8131870))

(assert (=> b!7570826 m!8131764))

(declare-fun m!8131872 () Bool)

(assert (=> b!7570826 m!8131872))

(assert (=> b!7570823 m!8131768))

(assert (=> bm!694047 m!8131774))

(assert (=> b!7570833 m!8131688))

(declare-fun m!8131874 () Bool)

(assert (=> b!7570833 m!8131874))

(assert (=> d!2317443 m!8131774))

(assert (=> d!2317443 m!8131688))

(declare-fun m!8131876 () Bool)

(assert (=> d!2317443 m!8131876))

(assert (=> b!7570831 m!8131768))

(assert (=> b!7570824 m!8131764))

(assert (=> b!7570824 m!8131764))

(assert (=> b!7570824 m!8131766))

(assert (=> d!2317399 d!2317443))

(declare-fun d!2317445 () Bool)

(assert (=> d!2317445 (= (matchR!9611 baseR!100 testedP!418) (matchR!9611 (derivative!537 baseR!100 testedP!418) Nil!72770))))

(assert (=> d!2317445 true))

(declare-fun _$108!448 () Unit!166974)

(assert (=> d!2317445 (= (choose!58538 baseR!100 testedP!418) _$108!448)))

(declare-fun bs!1940589 () Bool)

(assert (= bs!1940589 d!2317445))

(assert (=> bs!1940589 m!8131686))

(assert (=> bs!1940589 m!8131688))

(assert (=> bs!1940589 m!8131688))

(assert (=> bs!1940589 m!8131810))

(assert (=> d!2317399 d!2317445))

(assert (=> d!2317399 d!2317379))

(assert (=> d!2317399 d!2317405))

(assert (=> d!2317399 d!2317377))

(declare-fun d!2317447 () Bool)

(declare-fun lt!2651199 () Int)

(assert (=> d!2317447 (>= lt!2651199 0)))

(declare-fun e!4507233 () Int)

(assert (=> d!2317447 (= lt!2651199 e!4507233)))

(declare-fun c!1396845 () Bool)

(assert (=> d!2317447 (= c!1396845 ((_ is Nil!72770) input!7855))))

(assert (=> d!2317447 (= (size!42492 input!7855) lt!2651199)))

(declare-fun b!7570840 () Bool)

(assert (=> b!7570840 (= e!4507233 0)))

(declare-fun b!7570841 () Bool)

(assert (=> b!7570841 (= e!4507233 (+ 1 (size!42492 (t!387629 input!7855))))))

(assert (= (and d!2317447 c!1396845) b!7570840))

(assert (= (and d!2317447 (not c!1396845)) b!7570841))

(declare-fun m!8131878 () Bool)

(assert (=> b!7570841 m!8131878))

(assert (=> b!7570523 d!2317447))

(declare-fun d!2317449 () Bool)

(declare-fun lt!2651200 () Int)

(assert (=> d!2317449 (>= lt!2651200 0)))

(declare-fun e!4507234 () Int)

(assert (=> d!2317449 (= lt!2651200 e!4507234)))

(declare-fun c!1396846 () Bool)

(assert (=> d!2317449 (= c!1396846 ((_ is Nil!72770) testedP!418))))

(assert (=> d!2317449 (= (size!42492 testedP!418) lt!2651200)))

(declare-fun b!7570842 () Bool)

(assert (=> b!7570842 (= e!4507234 0)))

(declare-fun b!7570843 () Bool)

(assert (=> b!7570843 (= e!4507234 (+ 1 (size!42492 (t!387629 testedP!418))))))

(assert (= (and d!2317449 c!1396846) b!7570842))

(assert (= (and d!2317449 (not c!1396846)) b!7570843))

(declare-fun m!8131880 () Bool)

(assert (=> b!7570843 m!8131880))

(assert (=> b!7570523 d!2317449))

(declare-fun d!2317451 () Bool)

(assert (=> d!2317451 (= (head!15569 testedP!418) (h!79218 testedP!418))))

(assert (=> b!7570521 d!2317451))

(declare-fun d!2317453 () Bool)

(assert (=> d!2317453 (= (head!15569 input!7855) (h!79218 input!7855))))

(assert (=> b!7570521 d!2317453))

(assert (=> b!7570603 d!2317413))

(declare-fun d!2317455 () Bool)

(declare-fun lt!2651201 () Regex!20011)

(assert (=> d!2317455 (validRegex!10439 lt!2651201)))

(declare-fun e!4507235 () Regex!20011)

(assert (=> d!2317455 (= lt!2651201 e!4507235)))

(declare-fun c!1396847 () Bool)

(assert (=> d!2317455 (= c!1396847 ((_ is Cons!72770) (t!387629 testedP!418)))))

(assert (=> d!2317455 (validRegex!10439 (derivativeStep!5769 baseR!100 (h!79218 testedP!418)))))

(assert (=> d!2317455 (= (derivative!537 (derivativeStep!5769 baseR!100 (h!79218 testedP!418)) (t!387629 testedP!418)) lt!2651201)))

(declare-fun b!7570844 () Bool)

(assert (=> b!7570844 (= e!4507235 (derivative!537 (derivativeStep!5769 (derivativeStep!5769 baseR!100 (h!79218 testedP!418)) (h!79218 (t!387629 testedP!418))) (t!387629 (t!387629 testedP!418))))))

(declare-fun b!7570845 () Bool)

(assert (=> b!7570845 (= e!4507235 (derivativeStep!5769 baseR!100 (h!79218 testedP!418)))))

(assert (= (and d!2317455 c!1396847) b!7570844))

(assert (= (and d!2317455 (not c!1396847)) b!7570845))

(declare-fun m!8131882 () Bool)

(assert (=> d!2317455 m!8131882))

(assert (=> d!2317455 m!8131702))

(declare-fun m!8131884 () Bool)

(assert (=> d!2317455 m!8131884))

(assert (=> b!7570844 m!8131702))

(declare-fun m!8131886 () Bool)

(assert (=> b!7570844 m!8131886))

(assert (=> b!7570844 m!8131886))

(declare-fun m!8131888 () Bool)

(assert (=> b!7570844 m!8131888))

(assert (=> b!7570469 d!2317455))

(declare-fun b!7570866 () Bool)

(declare-fun e!4507246 () Regex!20011)

(assert (=> b!7570866 (= e!4507246 (ite (= (h!79218 testedP!418) (c!1396778 baseR!100)) EmptyExpr!20011 EmptyLang!20011))))

(declare-fun b!7570867 () Bool)

(declare-fun e!4507249 () Regex!20011)

(declare-fun call!694061 () Regex!20011)

(assert (=> b!7570867 (= e!4507249 (Union!20011 (Concat!28856 call!694061 (regTwo!40534 baseR!100)) EmptyLang!20011))))

(declare-fun bm!694056 () Bool)

(declare-fun c!1396859 () Bool)

(declare-fun call!694062 () Regex!20011)

(assert (=> bm!694056 (= call!694062 (derivativeStep!5769 (ite c!1396859 (regTwo!40535 baseR!100) (regOne!40534 baseR!100)) (h!79218 testedP!418)))))

(declare-fun b!7570868 () Bool)

(declare-fun e!4507248 () Regex!20011)

(assert (=> b!7570868 (= e!4507248 EmptyLang!20011)))

(declare-fun bm!694057 () Bool)

(declare-fun call!694063 () Regex!20011)

(assert (=> bm!694057 (= call!694061 call!694063)))

(declare-fun b!7570869 () Bool)

(assert (=> b!7570869 (= c!1396859 ((_ is Union!20011) baseR!100))))

(declare-fun e!4507250 () Regex!20011)

(assert (=> b!7570869 (= e!4507246 e!4507250)))

(declare-fun c!1396861 () Bool)

(declare-fun call!694064 () Regex!20011)

(declare-fun c!1396860 () Bool)

(declare-fun bm!694058 () Bool)

(assert (=> bm!694058 (= call!694064 (derivativeStep!5769 (ite c!1396859 (regOne!40535 baseR!100) (ite c!1396861 (reg!20340 baseR!100) (ite c!1396860 (regTwo!40534 baseR!100) (regOne!40534 baseR!100)))) (h!79218 testedP!418)))))

(declare-fun d!2317457 () Bool)

(declare-fun lt!2651204 () Regex!20011)

(assert (=> d!2317457 (validRegex!10439 lt!2651204)))

(assert (=> d!2317457 (= lt!2651204 e!4507248)))

(declare-fun c!1396858 () Bool)

(assert (=> d!2317457 (= c!1396858 (or ((_ is EmptyExpr!20011) baseR!100) ((_ is EmptyLang!20011) baseR!100)))))

(assert (=> d!2317457 (validRegex!10439 baseR!100)))

(assert (=> d!2317457 (= (derivativeStep!5769 baseR!100 (h!79218 testedP!418)) lt!2651204)))

(declare-fun b!7570870 () Bool)

(assert (=> b!7570870 (= e!4507248 e!4507246)))

(declare-fun c!1396862 () Bool)

(assert (=> b!7570870 (= c!1396862 ((_ is ElementMatch!20011) baseR!100))))

(declare-fun b!7570871 () Bool)

(assert (=> b!7570871 (= e!4507249 (Union!20011 (Concat!28856 call!694062 (regTwo!40534 baseR!100)) call!694061))))

(declare-fun b!7570872 () Bool)

(assert (=> b!7570872 (= e!4507250 (Union!20011 call!694064 call!694062))))

(declare-fun b!7570873 () Bool)

(assert (=> b!7570873 (= c!1396860 (nullable!8735 (regOne!40534 baseR!100)))))

(declare-fun e!4507247 () Regex!20011)

(assert (=> b!7570873 (= e!4507247 e!4507249)))

(declare-fun b!7570874 () Bool)

(assert (=> b!7570874 (= e!4507247 (Concat!28856 call!694063 baseR!100))))

(declare-fun b!7570875 () Bool)

(assert (=> b!7570875 (= e!4507250 e!4507247)))

(assert (=> b!7570875 (= c!1396861 ((_ is Star!20011) baseR!100))))

(declare-fun bm!694059 () Bool)

(assert (=> bm!694059 (= call!694063 call!694064)))

(assert (= (and d!2317457 c!1396858) b!7570868))

(assert (= (and d!2317457 (not c!1396858)) b!7570870))

(assert (= (and b!7570870 c!1396862) b!7570866))

(assert (= (and b!7570870 (not c!1396862)) b!7570869))

(assert (= (and b!7570869 c!1396859) b!7570872))

(assert (= (and b!7570869 (not c!1396859)) b!7570875))

(assert (= (and b!7570875 c!1396861) b!7570874))

(assert (= (and b!7570875 (not c!1396861)) b!7570873))

(assert (= (and b!7570873 c!1396860) b!7570871))

(assert (= (and b!7570873 (not c!1396860)) b!7570867))

(assert (= (or b!7570871 b!7570867) bm!694057))

(assert (= (or b!7570874 bm!694057) bm!694059))

(assert (= (or b!7570872 bm!694059) bm!694058))

(assert (= (or b!7570872 b!7570871) bm!694056))

(declare-fun m!8131890 () Bool)

(assert (=> bm!694056 m!8131890))

(declare-fun m!8131892 () Bool)

(assert (=> bm!694058 m!8131892))

(declare-fun m!8131894 () Bool)

(assert (=> d!2317457 m!8131894))

(assert (=> d!2317457 m!8131682))

(declare-fun m!8131896 () Bool)

(assert (=> b!7570873 m!8131896))

(assert (=> b!7570469 d!2317457))

(declare-fun d!2317459 () Bool)

(assert (=> d!2317459 (= (isEmpty!41431 (tail!15109 testedP!418)) ((_ is Nil!72770) (tail!15109 testedP!418)))))

(assert (=> b!7570654 d!2317459))

(assert (=> b!7570654 d!2317439))

(assert (=> b!7570653 d!2317451))

(assert (=> d!2317395 d!2317423))

(declare-fun b!7570876 () Bool)

(declare-fun e!4507255 () Bool)

(declare-fun call!694065 () Bool)

(assert (=> b!7570876 (= e!4507255 call!694065)))

(declare-fun b!7570877 () Bool)

(declare-fun e!4507254 () Bool)

(declare-fun call!694066 () Bool)

(assert (=> b!7570877 (= e!4507254 call!694066)))

(declare-fun b!7570878 () Bool)

(declare-fun res!3032951 () Bool)

(declare-fun e!4507257 () Bool)

(assert (=> b!7570878 (=> res!3032951 e!4507257)))

(assert (=> b!7570878 (= res!3032951 (not ((_ is Concat!28856) lt!2651166)))))

(declare-fun e!4507256 () Bool)

(assert (=> b!7570878 (= e!4507256 e!4507257)))

(declare-fun c!1396863 () Bool)

(declare-fun c!1396864 () Bool)

(declare-fun bm!694060 () Bool)

(assert (=> bm!694060 (= call!694065 (validRegex!10439 (ite c!1396864 (reg!20340 lt!2651166) (ite c!1396863 (regOne!40535 lt!2651166) (regTwo!40534 lt!2651166)))))))

(declare-fun b!7570879 () Bool)

(declare-fun e!4507253 () Bool)

(assert (=> b!7570879 (= e!4507253 e!4507256)))

(assert (=> b!7570879 (= c!1396863 ((_ is Union!20011) lt!2651166))))

(declare-fun bm!694061 () Bool)

(declare-fun call!694067 () Bool)

(assert (=> bm!694061 (= call!694067 call!694065)))

(declare-fun b!7570880 () Bool)

(declare-fun e!4507251 () Bool)

(assert (=> b!7570880 (= e!4507251 call!694067)))

(declare-fun b!7570881 () Bool)

(assert (=> b!7570881 (= e!4507257 e!4507251)))

(declare-fun res!3032947 () Bool)

(assert (=> b!7570881 (=> (not res!3032947) (not e!4507251))))

(assert (=> b!7570881 (= res!3032947 call!694066)))

(declare-fun b!7570882 () Bool)

(assert (=> b!7570882 (= e!4507253 e!4507255)))

(declare-fun res!3032948 () Bool)

(assert (=> b!7570882 (= res!3032948 (not (nullable!8735 (reg!20340 lt!2651166))))))

(assert (=> b!7570882 (=> (not res!3032948) (not e!4507255))))

(declare-fun b!7570883 () Bool)

(declare-fun e!4507252 () Bool)

(assert (=> b!7570883 (= e!4507252 e!4507253)))

(assert (=> b!7570883 (= c!1396864 ((_ is Star!20011) lt!2651166))))

(declare-fun b!7570884 () Bool)

(declare-fun res!3032950 () Bool)

(assert (=> b!7570884 (=> (not res!3032950) (not e!4507254))))

(assert (=> b!7570884 (= res!3032950 call!694067)))

(assert (=> b!7570884 (= e!4507256 e!4507254)))

(declare-fun d!2317461 () Bool)

(declare-fun res!3032949 () Bool)

(assert (=> d!2317461 (=> res!3032949 e!4507252)))

(assert (=> d!2317461 (= res!3032949 ((_ is ElementMatch!20011) lt!2651166))))

(assert (=> d!2317461 (= (validRegex!10439 lt!2651166) e!4507252)))

(declare-fun bm!694062 () Bool)

(assert (=> bm!694062 (= call!694066 (validRegex!10439 (ite c!1396863 (regTwo!40535 lt!2651166) (regOne!40534 lt!2651166))))))

(assert (= (and d!2317461 (not res!3032949)) b!7570883))

(assert (= (and b!7570883 c!1396864) b!7570882))

(assert (= (and b!7570883 (not c!1396864)) b!7570879))

(assert (= (and b!7570882 res!3032948) b!7570876))

(assert (= (and b!7570879 c!1396863) b!7570884))

(assert (= (and b!7570879 (not c!1396863)) b!7570878))

(assert (= (and b!7570884 res!3032950) b!7570877))

(assert (= (and b!7570878 (not res!3032951)) b!7570881))

(assert (= (and b!7570881 res!3032947) b!7570880))

(assert (= (or b!7570877 b!7570881) bm!694062))

(assert (= (or b!7570884 b!7570880) bm!694061))

(assert (= (or b!7570876 bm!694061) bm!694060))

(declare-fun m!8131898 () Bool)

(assert (=> bm!694060 m!8131898))

(declare-fun m!8131900 () Bool)

(assert (=> b!7570882 m!8131900))

(declare-fun m!8131902 () Bool)

(assert (=> bm!694062 m!8131902))

(assert (=> d!2317395 d!2317461))

(declare-fun b!7570885 () Bool)

(declare-fun e!4507262 () Bool)

(declare-fun call!694068 () Bool)

(assert (=> b!7570885 (= e!4507262 call!694068)))

(declare-fun b!7570886 () Bool)

(declare-fun e!4507261 () Bool)

(declare-fun call!694069 () Bool)

(assert (=> b!7570886 (= e!4507261 call!694069)))

(declare-fun b!7570887 () Bool)

(declare-fun res!3032956 () Bool)

(declare-fun e!4507264 () Bool)

(assert (=> b!7570887 (=> res!3032956 e!4507264)))

(assert (=> b!7570887 (= res!3032956 (not ((_ is Concat!28856) (ite c!1396784 (reg!20340 r!24129) (ite c!1396783 (regOne!40535 r!24129) (regTwo!40534 r!24129))))))))

(declare-fun e!4507263 () Bool)

(assert (=> b!7570887 (= e!4507263 e!4507264)))

(declare-fun c!1396865 () Bool)

(declare-fun bm!694063 () Bool)

(declare-fun c!1396866 () Bool)

(assert (=> bm!694063 (= call!694068 (validRegex!10439 (ite c!1396866 (reg!20340 (ite c!1396784 (reg!20340 r!24129) (ite c!1396783 (regOne!40535 r!24129) (regTwo!40534 r!24129)))) (ite c!1396865 (regOne!40535 (ite c!1396784 (reg!20340 r!24129) (ite c!1396783 (regOne!40535 r!24129) (regTwo!40534 r!24129)))) (regTwo!40534 (ite c!1396784 (reg!20340 r!24129) (ite c!1396783 (regOne!40535 r!24129) (regTwo!40534 r!24129))))))))))

(declare-fun b!7570888 () Bool)

(declare-fun e!4507260 () Bool)

(assert (=> b!7570888 (= e!4507260 e!4507263)))

(assert (=> b!7570888 (= c!1396865 ((_ is Union!20011) (ite c!1396784 (reg!20340 r!24129) (ite c!1396783 (regOne!40535 r!24129) (regTwo!40534 r!24129)))))))

(declare-fun bm!694064 () Bool)

(declare-fun call!694070 () Bool)

(assert (=> bm!694064 (= call!694070 call!694068)))

(declare-fun b!7570889 () Bool)

(declare-fun e!4507258 () Bool)

(assert (=> b!7570889 (= e!4507258 call!694070)))

(declare-fun b!7570890 () Bool)

(assert (=> b!7570890 (= e!4507264 e!4507258)))

(declare-fun res!3032952 () Bool)

(assert (=> b!7570890 (=> (not res!3032952) (not e!4507258))))

(assert (=> b!7570890 (= res!3032952 call!694069)))

(declare-fun b!7570891 () Bool)

(assert (=> b!7570891 (= e!4507260 e!4507262)))

(declare-fun res!3032953 () Bool)

(assert (=> b!7570891 (= res!3032953 (not (nullable!8735 (reg!20340 (ite c!1396784 (reg!20340 r!24129) (ite c!1396783 (regOne!40535 r!24129) (regTwo!40534 r!24129)))))))))

(assert (=> b!7570891 (=> (not res!3032953) (not e!4507262))))

(declare-fun b!7570892 () Bool)

(declare-fun e!4507259 () Bool)

(assert (=> b!7570892 (= e!4507259 e!4507260)))

(assert (=> b!7570892 (= c!1396866 ((_ is Star!20011) (ite c!1396784 (reg!20340 r!24129) (ite c!1396783 (regOne!40535 r!24129) (regTwo!40534 r!24129)))))))

(declare-fun b!7570893 () Bool)

(declare-fun res!3032955 () Bool)

(assert (=> b!7570893 (=> (not res!3032955) (not e!4507261))))

(assert (=> b!7570893 (= res!3032955 call!694070)))

(assert (=> b!7570893 (= e!4507263 e!4507261)))

(declare-fun d!2317463 () Bool)

(declare-fun res!3032954 () Bool)

(assert (=> d!2317463 (=> res!3032954 e!4507259)))

(assert (=> d!2317463 (= res!3032954 ((_ is ElementMatch!20011) (ite c!1396784 (reg!20340 r!24129) (ite c!1396783 (regOne!40535 r!24129) (regTwo!40534 r!24129)))))))

(assert (=> d!2317463 (= (validRegex!10439 (ite c!1396784 (reg!20340 r!24129) (ite c!1396783 (regOne!40535 r!24129) (regTwo!40534 r!24129)))) e!4507259)))

(declare-fun bm!694065 () Bool)

(assert (=> bm!694065 (= call!694069 (validRegex!10439 (ite c!1396865 (regTwo!40535 (ite c!1396784 (reg!20340 r!24129) (ite c!1396783 (regOne!40535 r!24129) (regTwo!40534 r!24129)))) (regOne!40534 (ite c!1396784 (reg!20340 r!24129) (ite c!1396783 (regOne!40535 r!24129) (regTwo!40534 r!24129)))))))))

(assert (= (and d!2317463 (not res!3032954)) b!7570892))

(assert (= (and b!7570892 c!1396866) b!7570891))

(assert (= (and b!7570892 (not c!1396866)) b!7570888))

(assert (= (and b!7570891 res!3032953) b!7570885))

(assert (= (and b!7570888 c!1396865) b!7570893))

(assert (= (and b!7570888 (not c!1396865)) b!7570887))

(assert (= (and b!7570893 res!3032955) b!7570886))

(assert (= (and b!7570887 (not res!3032956)) b!7570890))

(assert (= (and b!7570890 res!3032952) b!7570889))

(assert (= (or b!7570886 b!7570890) bm!694065))

(assert (= (or b!7570893 b!7570889) bm!694064))

(assert (= (or b!7570885 bm!694064) bm!694063))

(declare-fun m!8131904 () Bool)

(assert (=> bm!694063 m!8131904))

(declare-fun m!8131906 () Bool)

(assert (=> b!7570891 m!8131906))

(declare-fun m!8131908 () Bool)

(assert (=> bm!694065 m!8131908))

(assert (=> bm!694004 d!2317463))

(declare-fun d!2317465 () Bool)

(assert (=> d!2317465 (= (isEmpty!41431 testedP!418) ((_ is Nil!72770) testedP!418))))

(assert (=> bm!694031 d!2317465))

(assert (=> b!7570586 d!2317381))

(declare-fun b!7570894 () Bool)

(declare-fun e!4507269 () Bool)

(declare-fun call!694071 () Bool)

(assert (=> b!7570894 (= e!4507269 call!694071)))

(declare-fun b!7570895 () Bool)

(declare-fun e!4507268 () Bool)

(declare-fun call!694072 () Bool)

(assert (=> b!7570895 (= e!4507268 call!694072)))

(declare-fun b!7570896 () Bool)

(declare-fun res!3032961 () Bool)

(declare-fun e!4507271 () Bool)

(assert (=> b!7570896 (=> res!3032961 e!4507271)))

(assert (=> b!7570896 (= res!3032961 (not ((_ is Concat!28856) (ite c!1396794 (regTwo!40535 baseR!100) (regOne!40534 baseR!100)))))))

(declare-fun e!4507270 () Bool)

(assert (=> b!7570896 (= e!4507270 e!4507271)))

(declare-fun c!1396868 () Bool)

(declare-fun bm!694066 () Bool)

(declare-fun c!1396867 () Bool)

(assert (=> bm!694066 (= call!694071 (validRegex!10439 (ite c!1396868 (reg!20340 (ite c!1396794 (regTwo!40535 baseR!100) (regOne!40534 baseR!100))) (ite c!1396867 (regOne!40535 (ite c!1396794 (regTwo!40535 baseR!100) (regOne!40534 baseR!100))) (regTwo!40534 (ite c!1396794 (regTwo!40535 baseR!100) (regOne!40534 baseR!100)))))))))

(declare-fun b!7570897 () Bool)

(declare-fun e!4507267 () Bool)

(assert (=> b!7570897 (= e!4507267 e!4507270)))

(assert (=> b!7570897 (= c!1396867 ((_ is Union!20011) (ite c!1396794 (regTwo!40535 baseR!100) (regOne!40534 baseR!100))))))

(declare-fun bm!694067 () Bool)

(declare-fun call!694073 () Bool)

(assert (=> bm!694067 (= call!694073 call!694071)))

(declare-fun b!7570898 () Bool)

(declare-fun e!4507265 () Bool)

(assert (=> b!7570898 (= e!4507265 call!694073)))

(declare-fun b!7570899 () Bool)

(assert (=> b!7570899 (= e!4507271 e!4507265)))

(declare-fun res!3032957 () Bool)

(assert (=> b!7570899 (=> (not res!3032957) (not e!4507265))))

(assert (=> b!7570899 (= res!3032957 call!694072)))

(declare-fun b!7570900 () Bool)

(assert (=> b!7570900 (= e!4507267 e!4507269)))

(declare-fun res!3032958 () Bool)

(assert (=> b!7570900 (= res!3032958 (not (nullable!8735 (reg!20340 (ite c!1396794 (regTwo!40535 baseR!100) (regOne!40534 baseR!100))))))))

(assert (=> b!7570900 (=> (not res!3032958) (not e!4507269))))

(declare-fun b!7570901 () Bool)

(declare-fun e!4507266 () Bool)

(assert (=> b!7570901 (= e!4507266 e!4507267)))

(assert (=> b!7570901 (= c!1396868 ((_ is Star!20011) (ite c!1396794 (regTwo!40535 baseR!100) (regOne!40534 baseR!100))))))

(declare-fun b!7570902 () Bool)

(declare-fun res!3032960 () Bool)

(assert (=> b!7570902 (=> (not res!3032960) (not e!4507268))))

(assert (=> b!7570902 (= res!3032960 call!694073)))

(assert (=> b!7570902 (= e!4507270 e!4507268)))

(declare-fun d!2317467 () Bool)

(declare-fun res!3032959 () Bool)

(assert (=> d!2317467 (=> res!3032959 e!4507266)))

(assert (=> d!2317467 (= res!3032959 ((_ is ElementMatch!20011) (ite c!1396794 (regTwo!40535 baseR!100) (regOne!40534 baseR!100))))))

(assert (=> d!2317467 (= (validRegex!10439 (ite c!1396794 (regTwo!40535 baseR!100) (regOne!40534 baseR!100))) e!4507266)))

(declare-fun bm!694068 () Bool)

(assert (=> bm!694068 (= call!694072 (validRegex!10439 (ite c!1396867 (regTwo!40535 (ite c!1396794 (regTwo!40535 baseR!100) (regOne!40534 baseR!100))) (regOne!40534 (ite c!1396794 (regTwo!40535 baseR!100) (regOne!40534 baseR!100))))))))

(assert (= (and d!2317467 (not res!3032959)) b!7570901))

(assert (= (and b!7570901 c!1396868) b!7570900))

(assert (= (and b!7570901 (not c!1396868)) b!7570897))

(assert (= (and b!7570900 res!3032958) b!7570894))

(assert (= (and b!7570897 c!1396867) b!7570902))

(assert (= (and b!7570897 (not c!1396867)) b!7570896))

(assert (= (and b!7570902 res!3032960) b!7570895))

(assert (= (and b!7570896 (not res!3032961)) b!7570899))

(assert (= (and b!7570899 res!3032957) b!7570898))

(assert (= (or b!7570895 b!7570899) bm!694068))

(assert (= (or b!7570902 b!7570898) bm!694067))

(assert (= (or b!7570894 bm!694067) bm!694066))

(declare-fun m!8131910 () Bool)

(assert (=> bm!694066 m!8131910))

(declare-fun m!8131912 () Bool)

(assert (=> b!7570900 m!8131912))

(declare-fun m!8131914 () Bool)

(assert (=> bm!694068 m!8131914))

(assert (=> bm!694011 d!2317467))

(declare-fun b!7570903 () Bool)

(declare-fun res!3032966 () Bool)

(declare-fun e!4507275 () Bool)

(assert (=> b!7570903 (=> (not res!3032966) (not e!4507275))))

(declare-fun call!694074 () Bool)

(assert (=> b!7570903 (= res!3032966 (not call!694074))))

(declare-fun b!7570904 () Bool)

(declare-fun e!4507276 () Bool)

(assert (=> b!7570904 (= e!4507276 (not (= (head!15569 (tail!15109 testedP!418)) (c!1396778 (derivativeStep!5769 baseR!100 (head!15569 testedP!418))))))))

(declare-fun b!7570905 () Bool)

(declare-fun res!3032964 () Bool)

(assert (=> b!7570905 (=> (not res!3032964) (not e!4507275))))

(assert (=> b!7570905 (= res!3032964 (isEmpty!41431 (tail!15109 (tail!15109 testedP!418))))))

(declare-fun b!7570906 () Bool)

(declare-fun res!3032963 () Bool)

(declare-fun e!4507278 () Bool)

(assert (=> b!7570906 (=> res!3032963 e!4507278)))

(assert (=> b!7570906 (= res!3032963 (not ((_ is ElementMatch!20011) (derivativeStep!5769 baseR!100 (head!15569 testedP!418)))))))

(declare-fun e!4507272 () Bool)

(assert (=> b!7570906 (= e!4507272 e!4507278)))

(declare-fun b!7570907 () Bool)

(declare-fun e!4507274 () Bool)

(assert (=> b!7570907 (= e!4507274 (matchR!9611 (derivativeStep!5769 (derivativeStep!5769 baseR!100 (head!15569 testedP!418)) (head!15569 (tail!15109 testedP!418))) (tail!15109 (tail!15109 testedP!418))))))

(declare-fun b!7570908 () Bool)

(declare-fun e!4507273 () Bool)

(assert (=> b!7570908 (= e!4507278 e!4507273)))

(declare-fun res!3032967 () Bool)

(assert (=> b!7570908 (=> (not res!3032967) (not e!4507273))))

(declare-fun lt!2651205 () Bool)

(assert (=> b!7570908 (= res!3032967 (not lt!2651205))))

(declare-fun d!2317469 () Bool)

(declare-fun e!4507277 () Bool)

(assert (=> d!2317469 e!4507277))

(declare-fun c!1396870 () Bool)

(assert (=> d!2317469 (= c!1396870 ((_ is EmptyExpr!20011) (derivativeStep!5769 baseR!100 (head!15569 testedP!418))))))

(assert (=> d!2317469 (= lt!2651205 e!4507274)))

(declare-fun c!1396871 () Bool)

(assert (=> d!2317469 (= c!1396871 (isEmpty!41431 (tail!15109 testedP!418)))))

(assert (=> d!2317469 (validRegex!10439 (derivativeStep!5769 baseR!100 (head!15569 testedP!418)))))

(assert (=> d!2317469 (= (matchR!9611 (derivativeStep!5769 baseR!100 (head!15569 testedP!418)) (tail!15109 testedP!418)) lt!2651205)))

(declare-fun b!7570909 () Bool)

(assert (=> b!7570909 (= e!4507277 e!4507272)))

(declare-fun c!1396869 () Bool)

(assert (=> b!7570909 (= c!1396869 ((_ is EmptyLang!20011) (derivativeStep!5769 baseR!100 (head!15569 testedP!418))))))

(declare-fun bm!694069 () Bool)

(assert (=> bm!694069 (= call!694074 (isEmpty!41431 (tail!15109 testedP!418)))))

(declare-fun b!7570910 () Bool)

(declare-fun res!3032968 () Bool)

(assert (=> b!7570910 (=> res!3032968 e!4507278)))

(assert (=> b!7570910 (= res!3032968 e!4507275)))

(declare-fun res!3032969 () Bool)

(assert (=> b!7570910 (=> (not res!3032969) (not e!4507275))))

(assert (=> b!7570910 (= res!3032969 lt!2651205)))

(declare-fun b!7570911 () Bool)

(assert (=> b!7570911 (= e!4507273 e!4507276)))

(declare-fun res!3032962 () Bool)

(assert (=> b!7570911 (=> res!3032962 e!4507276)))

(assert (=> b!7570911 (= res!3032962 call!694074)))

(declare-fun b!7570912 () Bool)

(assert (=> b!7570912 (= e!4507275 (= (head!15569 (tail!15109 testedP!418)) (c!1396778 (derivativeStep!5769 baseR!100 (head!15569 testedP!418)))))))

(declare-fun b!7570913 () Bool)

(declare-fun res!3032965 () Bool)

(assert (=> b!7570913 (=> res!3032965 e!4507276)))

(assert (=> b!7570913 (= res!3032965 (not (isEmpty!41431 (tail!15109 (tail!15109 testedP!418)))))))

(declare-fun b!7570914 () Bool)

(assert (=> b!7570914 (= e!4507274 (nullable!8735 (derivativeStep!5769 baseR!100 (head!15569 testedP!418))))))

(declare-fun b!7570915 () Bool)

(assert (=> b!7570915 (= e!4507272 (not lt!2651205))))

(declare-fun b!7570916 () Bool)

(assert (=> b!7570916 (= e!4507277 (= lt!2651205 call!694074))))

(assert (= (and d!2317469 c!1396871) b!7570914))

(assert (= (and d!2317469 (not c!1396871)) b!7570907))

(assert (= (and d!2317469 c!1396870) b!7570916))

(assert (= (and d!2317469 (not c!1396870)) b!7570909))

(assert (= (and b!7570909 c!1396869) b!7570915))

(assert (= (and b!7570909 (not c!1396869)) b!7570906))

(assert (= (and b!7570906 (not res!3032963)) b!7570910))

(assert (= (and b!7570910 res!3032969) b!7570903))

(assert (= (and b!7570903 res!3032966) b!7570905))

(assert (= (and b!7570905 res!3032964) b!7570912))

(assert (= (and b!7570910 (not res!3032968)) b!7570908))

(assert (= (and b!7570908 res!3032967) b!7570911))

(assert (= (and b!7570911 (not res!3032962)) b!7570913))

(assert (= (and b!7570913 (not res!3032965)) b!7570904))

(assert (= (or b!7570916 b!7570903 b!7570911) bm!694069))

(assert (=> b!7570913 m!8131728))

(assert (=> b!7570913 m!8131856))

(assert (=> b!7570913 m!8131856))

(declare-fun m!8131916 () Bool)

(assert (=> b!7570913 m!8131916))

(assert (=> b!7570907 m!8131728))

(assert (=> b!7570907 m!8131866))

(assert (=> b!7570907 m!8131816))

(assert (=> b!7570907 m!8131866))

(declare-fun m!8131918 () Bool)

(assert (=> b!7570907 m!8131918))

(assert (=> b!7570907 m!8131728))

(assert (=> b!7570907 m!8131856))

(assert (=> b!7570907 m!8131918))

(assert (=> b!7570907 m!8131856))

(declare-fun m!8131920 () Bool)

(assert (=> b!7570907 m!8131920))

(assert (=> b!7570904 m!8131728))

(assert (=> b!7570904 m!8131866))

(assert (=> bm!694069 m!8131728))

(assert (=> bm!694069 m!8131814))

(assert (=> b!7570914 m!8131816))

(declare-fun m!8131922 () Bool)

(assert (=> b!7570914 m!8131922))

(assert (=> d!2317469 m!8131728))

(assert (=> d!2317469 m!8131814))

(assert (=> d!2317469 m!8131816))

(declare-fun m!8131924 () Bool)

(assert (=> d!2317469 m!8131924))

(assert (=> b!7570912 m!8131728))

(assert (=> b!7570912 m!8131866))

(assert (=> b!7570905 m!8131728))

(assert (=> b!7570905 m!8131856))

(assert (=> b!7570905 m!8131856))

(assert (=> b!7570905 m!8131916))

(assert (=> b!7570648 d!2317469))

(declare-fun b!7570917 () Bool)

(declare-fun e!4507279 () Regex!20011)

(assert (=> b!7570917 (= e!4507279 (ite (= (head!15569 testedP!418) (c!1396778 baseR!100)) EmptyExpr!20011 EmptyLang!20011))))

(declare-fun b!7570918 () Bool)

(declare-fun e!4507282 () Regex!20011)

(declare-fun call!694075 () Regex!20011)

(assert (=> b!7570918 (= e!4507282 (Union!20011 (Concat!28856 call!694075 (regTwo!40534 baseR!100)) EmptyLang!20011))))

(declare-fun c!1396873 () Bool)

(declare-fun call!694076 () Regex!20011)

(declare-fun bm!694070 () Bool)

(assert (=> bm!694070 (= call!694076 (derivativeStep!5769 (ite c!1396873 (regTwo!40535 baseR!100) (regOne!40534 baseR!100)) (head!15569 testedP!418)))))

(declare-fun b!7570919 () Bool)

(declare-fun e!4507281 () Regex!20011)

(assert (=> b!7570919 (= e!4507281 EmptyLang!20011)))

(declare-fun bm!694071 () Bool)

(declare-fun call!694077 () Regex!20011)

(assert (=> bm!694071 (= call!694075 call!694077)))

(declare-fun b!7570920 () Bool)

(assert (=> b!7570920 (= c!1396873 ((_ is Union!20011) baseR!100))))

(declare-fun e!4507283 () Regex!20011)

(assert (=> b!7570920 (= e!4507279 e!4507283)))

(declare-fun bm!694072 () Bool)

(declare-fun call!694078 () Regex!20011)

(declare-fun c!1396875 () Bool)

(declare-fun c!1396874 () Bool)

(assert (=> bm!694072 (= call!694078 (derivativeStep!5769 (ite c!1396873 (regOne!40535 baseR!100) (ite c!1396875 (reg!20340 baseR!100) (ite c!1396874 (regTwo!40534 baseR!100) (regOne!40534 baseR!100)))) (head!15569 testedP!418)))))

(declare-fun d!2317471 () Bool)

(declare-fun lt!2651206 () Regex!20011)

(assert (=> d!2317471 (validRegex!10439 lt!2651206)))

(assert (=> d!2317471 (= lt!2651206 e!4507281)))

(declare-fun c!1396872 () Bool)

(assert (=> d!2317471 (= c!1396872 (or ((_ is EmptyExpr!20011) baseR!100) ((_ is EmptyLang!20011) baseR!100)))))

(assert (=> d!2317471 (validRegex!10439 baseR!100)))

(assert (=> d!2317471 (= (derivativeStep!5769 baseR!100 (head!15569 testedP!418)) lt!2651206)))

(declare-fun b!7570921 () Bool)

(assert (=> b!7570921 (= e!4507281 e!4507279)))

(declare-fun c!1396876 () Bool)

(assert (=> b!7570921 (= c!1396876 ((_ is ElementMatch!20011) baseR!100))))

(declare-fun b!7570922 () Bool)

(assert (=> b!7570922 (= e!4507282 (Union!20011 (Concat!28856 call!694076 (regTwo!40534 baseR!100)) call!694075))))

(declare-fun b!7570923 () Bool)

(assert (=> b!7570923 (= e!4507283 (Union!20011 call!694078 call!694076))))

(declare-fun b!7570924 () Bool)

(assert (=> b!7570924 (= c!1396874 (nullable!8735 (regOne!40534 baseR!100)))))

(declare-fun e!4507280 () Regex!20011)

(assert (=> b!7570924 (= e!4507280 e!4507282)))

(declare-fun b!7570925 () Bool)

(assert (=> b!7570925 (= e!4507280 (Concat!28856 call!694077 baseR!100))))

(declare-fun b!7570926 () Bool)

(assert (=> b!7570926 (= e!4507283 e!4507280)))

(assert (=> b!7570926 (= c!1396875 ((_ is Star!20011) baseR!100))))

(declare-fun bm!694073 () Bool)

(assert (=> bm!694073 (= call!694077 call!694078)))

(assert (= (and d!2317471 c!1396872) b!7570919))

(assert (= (and d!2317471 (not c!1396872)) b!7570921))

(assert (= (and b!7570921 c!1396876) b!7570917))

(assert (= (and b!7570921 (not c!1396876)) b!7570920))

(assert (= (and b!7570920 c!1396873) b!7570923))

(assert (= (and b!7570920 (not c!1396873)) b!7570926))

(assert (= (and b!7570926 c!1396875) b!7570925))

(assert (= (and b!7570926 (not c!1396875)) b!7570924))

(assert (= (and b!7570924 c!1396874) b!7570922))

(assert (= (and b!7570924 (not c!1396874)) b!7570918))

(assert (= (or b!7570922 b!7570918) bm!694071))

(assert (= (or b!7570925 bm!694071) bm!694073))

(assert (= (or b!7570923 bm!694073) bm!694072))

(assert (= (or b!7570923 b!7570922) bm!694070))

(assert (=> bm!694070 m!8131738))

(declare-fun m!8131926 () Bool)

(assert (=> bm!694070 m!8131926))

(assert (=> bm!694072 m!8131738))

(declare-fun m!8131928 () Bool)

(assert (=> bm!694072 m!8131928))

(declare-fun m!8131930 () Bool)

(assert (=> d!2317471 m!8131930))

(assert (=> d!2317471 m!8131682))

(assert (=> b!7570924 m!8131896))

(assert (=> b!7570648 d!2317471))

(assert (=> b!7570648 d!2317451))

(assert (=> b!7570648 d!2317439))

(assert (=> b!7570585 d!2317425))

(assert (=> b!7570585 d!2317415))

(declare-fun d!2317475 () Bool)

(assert (=> d!2317475 (= (nullable!8735 (reg!20340 baseR!100)) (nullableFct!3485 (reg!20340 baseR!100)))))

(declare-fun bs!1940590 () Bool)

(assert (= bs!1940590 d!2317475))

(declare-fun m!8131932 () Bool)

(assert (=> bs!1940590 m!8131932))

(assert (=> b!7570477 d!2317475))

(assert (=> b!7570584 d!2317413))

(assert (=> b!7570645 d!2317451))

(assert (=> b!7570646 d!2317459))

(assert (=> b!7570646 d!2317439))

(assert (=> bm!694024 d!2317423))

(assert (=> d!2317405 d!2317465))

(assert (=> d!2317405 d!2317379))

(declare-fun d!2317477 () Bool)

(assert (=> d!2317477 (= (nullable!8735 lt!2651166) (nullableFct!3485 lt!2651166))))

(declare-fun bs!1940592 () Bool)

(assert (= bs!1940592 d!2317477))

(declare-fun m!8131936 () Bool)

(assert (=> bs!1940592 m!8131936))

(assert (=> b!7570613 d!2317477))

(assert (=> b!7570611 d!2317413))

(assert (=> b!7570612 d!2317425))

(assert (=> b!7570612 d!2317415))

(declare-fun e!4507284 () Bool)

(assert (=> b!7570679 (= tp!2205540 e!4507284)))

(declare-fun b!7570927 () Bool)

(assert (=> b!7570927 (= e!4507284 tp_is_empty!50377)))

(declare-fun b!7570930 () Bool)

(declare-fun tp!2205646 () Bool)

(declare-fun tp!2205647 () Bool)

(assert (=> b!7570930 (= e!4507284 (and tp!2205646 tp!2205647))))

(declare-fun b!7570928 () Bool)

(declare-fun tp!2205648 () Bool)

(declare-fun tp!2205649 () Bool)

(assert (=> b!7570928 (= e!4507284 (and tp!2205648 tp!2205649))))

(declare-fun b!7570929 () Bool)

(declare-fun tp!2205650 () Bool)

(assert (=> b!7570929 (= e!4507284 tp!2205650)))

(assert (= (and b!7570679 ((_ is ElementMatch!20011) (reg!20340 (regOne!40535 r!24129)))) b!7570927))

(assert (= (and b!7570679 ((_ is Concat!28856) (reg!20340 (regOne!40535 r!24129)))) b!7570928))

(assert (= (and b!7570679 ((_ is Star!20011) (reg!20340 (regOne!40535 r!24129)))) b!7570929))

(assert (= (and b!7570679 ((_ is Union!20011) (reg!20340 (regOne!40535 r!24129)))) b!7570930))

(declare-fun e!4507285 () Bool)

(assert (=> b!7570696 (= tp!2205556 e!4507285)))

(declare-fun b!7570931 () Bool)

(assert (=> b!7570931 (= e!4507285 tp_is_empty!50377)))

(declare-fun b!7570934 () Bool)

(declare-fun tp!2205651 () Bool)

(declare-fun tp!2205652 () Bool)

(assert (=> b!7570934 (= e!4507285 (and tp!2205651 tp!2205652))))

(declare-fun b!7570932 () Bool)

(declare-fun tp!2205653 () Bool)

(declare-fun tp!2205654 () Bool)

(assert (=> b!7570932 (= e!4507285 (and tp!2205653 tp!2205654))))

(declare-fun b!7570933 () Bool)

(declare-fun tp!2205655 () Bool)

(assert (=> b!7570933 (= e!4507285 tp!2205655)))

(assert (= (and b!7570696 ((_ is ElementMatch!20011) (regOne!40534 (regOne!40534 r!24129)))) b!7570931))

(assert (= (and b!7570696 ((_ is Concat!28856) (regOne!40534 (regOne!40534 r!24129)))) b!7570932))

(assert (= (and b!7570696 ((_ is Star!20011) (regOne!40534 (regOne!40534 r!24129)))) b!7570933))

(assert (= (and b!7570696 ((_ is Union!20011) (regOne!40534 (regOne!40534 r!24129)))) b!7570934))

(declare-fun e!4507286 () Bool)

(assert (=> b!7570696 (= tp!2205557 e!4507286)))

(declare-fun b!7570935 () Bool)

(assert (=> b!7570935 (= e!4507286 tp_is_empty!50377)))

(declare-fun b!7570938 () Bool)

(declare-fun tp!2205656 () Bool)

(declare-fun tp!2205657 () Bool)

(assert (=> b!7570938 (= e!4507286 (and tp!2205656 tp!2205657))))

(declare-fun b!7570936 () Bool)

(declare-fun tp!2205658 () Bool)

(declare-fun tp!2205659 () Bool)

(assert (=> b!7570936 (= e!4507286 (and tp!2205658 tp!2205659))))

(declare-fun b!7570937 () Bool)

(declare-fun tp!2205660 () Bool)

(assert (=> b!7570937 (= e!4507286 tp!2205660)))

(assert (= (and b!7570696 ((_ is ElementMatch!20011) (regTwo!40534 (regOne!40534 r!24129)))) b!7570935))

(assert (= (and b!7570696 ((_ is Concat!28856) (regTwo!40534 (regOne!40534 r!24129)))) b!7570936))

(assert (= (and b!7570696 ((_ is Star!20011) (regTwo!40534 (regOne!40534 r!24129)))) b!7570937))

(assert (= (and b!7570696 ((_ is Union!20011) (regTwo!40534 (regOne!40534 r!24129)))) b!7570938))

(declare-fun e!4507287 () Bool)

(assert (=> b!7570678 (= tp!2205538 e!4507287)))

(declare-fun b!7570939 () Bool)

(assert (=> b!7570939 (= e!4507287 tp_is_empty!50377)))

(declare-fun b!7570942 () Bool)

(declare-fun tp!2205661 () Bool)

(declare-fun tp!2205662 () Bool)

(assert (=> b!7570942 (= e!4507287 (and tp!2205661 tp!2205662))))

(declare-fun b!7570940 () Bool)

(declare-fun tp!2205663 () Bool)

(declare-fun tp!2205664 () Bool)

(assert (=> b!7570940 (= e!4507287 (and tp!2205663 tp!2205664))))

(declare-fun b!7570941 () Bool)

(declare-fun tp!2205665 () Bool)

(assert (=> b!7570941 (= e!4507287 tp!2205665)))

(assert (= (and b!7570678 ((_ is ElementMatch!20011) (regOne!40534 (regOne!40535 r!24129)))) b!7570939))

(assert (= (and b!7570678 ((_ is Concat!28856) (regOne!40534 (regOne!40535 r!24129)))) b!7570940))

(assert (= (and b!7570678 ((_ is Star!20011) (regOne!40534 (regOne!40535 r!24129)))) b!7570941))

(assert (= (and b!7570678 ((_ is Union!20011) (regOne!40534 (regOne!40535 r!24129)))) b!7570942))

(declare-fun e!4507288 () Bool)

(assert (=> b!7570678 (= tp!2205539 e!4507288)))

(declare-fun b!7570943 () Bool)

(assert (=> b!7570943 (= e!4507288 tp_is_empty!50377)))

(declare-fun b!7570946 () Bool)

(declare-fun tp!2205666 () Bool)

(declare-fun tp!2205667 () Bool)

(assert (=> b!7570946 (= e!4507288 (and tp!2205666 tp!2205667))))

(declare-fun b!7570944 () Bool)

(declare-fun tp!2205668 () Bool)

(declare-fun tp!2205669 () Bool)

(assert (=> b!7570944 (= e!4507288 (and tp!2205668 tp!2205669))))

(declare-fun b!7570945 () Bool)

(declare-fun tp!2205670 () Bool)

(assert (=> b!7570945 (= e!4507288 tp!2205670)))

(assert (= (and b!7570678 ((_ is ElementMatch!20011) (regTwo!40534 (regOne!40535 r!24129)))) b!7570943))

(assert (= (and b!7570678 ((_ is Concat!28856) (regTwo!40534 (regOne!40535 r!24129)))) b!7570944))

(assert (= (and b!7570678 ((_ is Star!20011) (regTwo!40534 (regOne!40535 r!24129)))) b!7570945))

(assert (= (and b!7570678 ((_ is Union!20011) (regTwo!40534 (regOne!40535 r!24129)))) b!7570946))

(declare-fun b!7570947 () Bool)

(declare-fun e!4507289 () Bool)

(declare-fun tp!2205671 () Bool)

(assert (=> b!7570947 (= e!4507289 (and tp_is_empty!50377 tp!2205671))))

(assert (=> b!7570728 (= tp!2205594 e!4507289)))

(assert (= (and b!7570728 ((_ is Cons!72770) (t!387629 (t!387629 testedP!418)))) b!7570947))

(declare-fun b!7570950 () Bool)

(declare-fun e!4507290 () Bool)

(declare-fun tp!2205672 () Bool)

(assert (=> b!7570950 (= e!4507290 (and tp_is_empty!50377 tp!2205672))))

(assert (=> b!7570711 (= tp!2205573 e!4507290)))

(assert (= (and b!7570711 ((_ is Cons!72770) (t!387629 (t!387629 input!7855)))) b!7570950))

(declare-fun e!4507293 () Bool)

(assert (=> b!7570702 (= tp!2205561 e!4507293)))

(declare-fun b!7570953 () Bool)

(assert (=> b!7570953 (= e!4507293 tp_is_empty!50377)))

(declare-fun b!7570956 () Bool)

(declare-fun tp!2205673 () Bool)

(declare-fun tp!2205674 () Bool)

(assert (=> b!7570956 (= e!4507293 (and tp!2205673 tp!2205674))))

(declare-fun b!7570954 () Bool)

(declare-fun tp!2205675 () Bool)

(declare-fun tp!2205676 () Bool)

(assert (=> b!7570954 (= e!4507293 (and tp!2205675 tp!2205676))))

(declare-fun b!7570955 () Bool)

(declare-fun tp!2205677 () Bool)

(assert (=> b!7570955 (= e!4507293 tp!2205677)))

(assert (= (and b!7570702 ((_ is ElementMatch!20011) (regOne!40535 (regTwo!40534 r!24129)))) b!7570953))

(assert (= (and b!7570702 ((_ is Concat!28856) (regOne!40535 (regTwo!40534 r!24129)))) b!7570954))

(assert (= (and b!7570702 ((_ is Star!20011) (regOne!40535 (regTwo!40534 r!24129)))) b!7570955))

(assert (= (and b!7570702 ((_ is Union!20011) (regOne!40535 (regTwo!40534 r!24129)))) b!7570956))

(declare-fun e!4507294 () Bool)

(assert (=> b!7570702 (= tp!2205562 e!4507294)))

(declare-fun b!7570957 () Bool)

(assert (=> b!7570957 (= e!4507294 tp_is_empty!50377)))

(declare-fun b!7570960 () Bool)

(declare-fun tp!2205678 () Bool)

(declare-fun tp!2205679 () Bool)

(assert (=> b!7570960 (= e!4507294 (and tp!2205678 tp!2205679))))

(declare-fun b!7570958 () Bool)

(declare-fun tp!2205680 () Bool)

(declare-fun tp!2205681 () Bool)

(assert (=> b!7570958 (= e!4507294 (and tp!2205680 tp!2205681))))

(declare-fun b!7570959 () Bool)

(declare-fun tp!2205682 () Bool)

(assert (=> b!7570959 (= e!4507294 tp!2205682)))

(assert (= (and b!7570702 ((_ is ElementMatch!20011) (regTwo!40535 (regTwo!40534 r!24129)))) b!7570957))

(assert (= (and b!7570702 ((_ is Concat!28856) (regTwo!40535 (regTwo!40534 r!24129)))) b!7570958))

(assert (= (and b!7570702 ((_ is Star!20011) (regTwo!40535 (regTwo!40534 r!24129)))) b!7570959))

(assert (= (and b!7570702 ((_ is Union!20011) (regTwo!40535 (regTwo!40534 r!24129)))) b!7570960))

(declare-fun e!4507295 () Bool)

(assert (=> b!7570701 (= tp!2205565 e!4507295)))

(declare-fun b!7570961 () Bool)

(assert (=> b!7570961 (= e!4507295 tp_is_empty!50377)))

(declare-fun b!7570964 () Bool)

(declare-fun tp!2205683 () Bool)

(declare-fun tp!2205684 () Bool)

(assert (=> b!7570964 (= e!4507295 (and tp!2205683 tp!2205684))))

(declare-fun b!7570962 () Bool)

(declare-fun tp!2205685 () Bool)

(declare-fun tp!2205686 () Bool)

(assert (=> b!7570962 (= e!4507295 (and tp!2205685 tp!2205686))))

(declare-fun b!7570963 () Bool)

(declare-fun tp!2205687 () Bool)

(assert (=> b!7570963 (= e!4507295 tp!2205687)))

(assert (= (and b!7570701 ((_ is ElementMatch!20011) (reg!20340 (regTwo!40534 r!24129)))) b!7570961))

(assert (= (and b!7570701 ((_ is Concat!28856) (reg!20340 (regTwo!40534 r!24129)))) b!7570962))

(assert (= (and b!7570701 ((_ is Star!20011) (reg!20340 (regTwo!40534 r!24129)))) b!7570963))

(assert (= (and b!7570701 ((_ is Union!20011) (reg!20340 (regTwo!40534 r!24129)))) b!7570964))

(declare-fun e!4507296 () Bool)

(assert (=> b!7570700 (= tp!2205563 e!4507296)))

(declare-fun b!7570965 () Bool)

(assert (=> b!7570965 (= e!4507296 tp_is_empty!50377)))

(declare-fun b!7570968 () Bool)

(declare-fun tp!2205688 () Bool)

(declare-fun tp!2205689 () Bool)

(assert (=> b!7570968 (= e!4507296 (and tp!2205688 tp!2205689))))

(declare-fun b!7570966 () Bool)

(declare-fun tp!2205690 () Bool)

(declare-fun tp!2205691 () Bool)

(assert (=> b!7570966 (= e!4507296 (and tp!2205690 tp!2205691))))

(declare-fun b!7570967 () Bool)

(declare-fun tp!2205692 () Bool)

(assert (=> b!7570967 (= e!4507296 tp!2205692)))

(assert (= (and b!7570700 ((_ is ElementMatch!20011) (regOne!40534 (regTwo!40534 r!24129)))) b!7570965))

(assert (= (and b!7570700 ((_ is Concat!28856) (regOne!40534 (regTwo!40534 r!24129)))) b!7570966))

(assert (= (and b!7570700 ((_ is Star!20011) (regOne!40534 (regTwo!40534 r!24129)))) b!7570967))

(assert (= (and b!7570700 ((_ is Union!20011) (regOne!40534 (regTwo!40534 r!24129)))) b!7570968))

(declare-fun e!4507297 () Bool)

(assert (=> b!7570700 (= tp!2205564 e!4507297)))

(declare-fun b!7570969 () Bool)

(assert (=> b!7570969 (= e!4507297 tp_is_empty!50377)))

(declare-fun b!7570972 () Bool)

(declare-fun tp!2205693 () Bool)

(declare-fun tp!2205694 () Bool)

(assert (=> b!7570972 (= e!4507297 (and tp!2205693 tp!2205694))))

(declare-fun b!7570970 () Bool)

(declare-fun tp!2205695 () Bool)

(declare-fun tp!2205696 () Bool)

(assert (=> b!7570970 (= e!4507297 (and tp!2205695 tp!2205696))))

(declare-fun b!7570971 () Bool)

(declare-fun tp!2205697 () Bool)

(assert (=> b!7570971 (= e!4507297 tp!2205697)))

(assert (= (and b!7570700 ((_ is ElementMatch!20011) (regTwo!40534 (regTwo!40534 r!24129)))) b!7570969))

(assert (= (and b!7570700 ((_ is Concat!28856) (regTwo!40534 (regTwo!40534 r!24129)))) b!7570970))

(assert (= (and b!7570700 ((_ is Star!20011) (regTwo!40534 (regTwo!40534 r!24129)))) b!7570971))

(assert (= (and b!7570700 ((_ is Union!20011) (regTwo!40534 (regTwo!40534 r!24129)))) b!7570972))

(declare-fun e!4507298 () Bool)

(assert (=> b!7570675 (= tp!2205530 e!4507298)))

(declare-fun b!7570973 () Bool)

(assert (=> b!7570973 (= e!4507298 tp_is_empty!50377)))

(declare-fun b!7570976 () Bool)

(declare-fun tp!2205698 () Bool)

(declare-fun tp!2205699 () Bool)

(assert (=> b!7570976 (= e!4507298 (and tp!2205698 tp!2205699))))

(declare-fun b!7570974 () Bool)

(declare-fun tp!2205700 () Bool)

(declare-fun tp!2205701 () Bool)

(assert (=> b!7570974 (= e!4507298 (and tp!2205700 tp!2205701))))

(declare-fun b!7570975 () Bool)

(declare-fun tp!2205702 () Bool)

(assert (=> b!7570975 (= e!4507298 tp!2205702)))

(assert (= (and b!7570675 ((_ is ElementMatch!20011) (regOne!40535 (reg!20340 baseR!100)))) b!7570973))

(assert (= (and b!7570675 ((_ is Concat!28856) (regOne!40535 (reg!20340 baseR!100)))) b!7570974))

(assert (= (and b!7570675 ((_ is Star!20011) (regOne!40535 (reg!20340 baseR!100)))) b!7570975))

(assert (= (and b!7570675 ((_ is Union!20011) (regOne!40535 (reg!20340 baseR!100)))) b!7570976))

(declare-fun e!4507299 () Bool)

(assert (=> b!7570675 (= tp!2205531 e!4507299)))

(declare-fun b!7570977 () Bool)

(assert (=> b!7570977 (= e!4507299 tp_is_empty!50377)))

(declare-fun b!7570980 () Bool)

(declare-fun tp!2205703 () Bool)

(declare-fun tp!2205704 () Bool)

(assert (=> b!7570980 (= e!4507299 (and tp!2205703 tp!2205704))))

(declare-fun b!7570978 () Bool)

(declare-fun tp!2205705 () Bool)

(declare-fun tp!2205706 () Bool)

(assert (=> b!7570978 (= e!4507299 (and tp!2205705 tp!2205706))))

(declare-fun b!7570979 () Bool)

(declare-fun tp!2205707 () Bool)

(assert (=> b!7570979 (= e!4507299 tp!2205707)))

(assert (= (and b!7570675 ((_ is ElementMatch!20011) (regTwo!40535 (reg!20340 baseR!100)))) b!7570977))

(assert (= (and b!7570675 ((_ is Concat!28856) (regTwo!40535 (reg!20340 baseR!100)))) b!7570978))

(assert (= (and b!7570675 ((_ is Star!20011) (regTwo!40535 (reg!20340 baseR!100)))) b!7570979))

(assert (= (and b!7570675 ((_ is Union!20011) (regTwo!40535 (reg!20340 baseR!100)))) b!7570980))

(declare-fun e!4507300 () Bool)

(assert (=> b!7570674 (= tp!2205534 e!4507300)))

(declare-fun b!7570981 () Bool)

(assert (=> b!7570981 (= e!4507300 tp_is_empty!50377)))

(declare-fun b!7570984 () Bool)

(declare-fun tp!2205708 () Bool)

(declare-fun tp!2205709 () Bool)

(assert (=> b!7570984 (= e!4507300 (and tp!2205708 tp!2205709))))

(declare-fun b!7570982 () Bool)

(declare-fun tp!2205710 () Bool)

(declare-fun tp!2205711 () Bool)

(assert (=> b!7570982 (= e!4507300 (and tp!2205710 tp!2205711))))

(declare-fun b!7570983 () Bool)

(declare-fun tp!2205712 () Bool)

(assert (=> b!7570983 (= e!4507300 tp!2205712)))

(assert (= (and b!7570674 ((_ is ElementMatch!20011) (reg!20340 (reg!20340 baseR!100)))) b!7570981))

(assert (= (and b!7570674 ((_ is Concat!28856) (reg!20340 (reg!20340 baseR!100)))) b!7570982))

(assert (= (and b!7570674 ((_ is Star!20011) (reg!20340 (reg!20340 baseR!100)))) b!7570983))

(assert (= (and b!7570674 ((_ is Union!20011) (reg!20340 (reg!20340 baseR!100)))) b!7570984))

(declare-fun e!4507301 () Bool)

(assert (=> b!7570715 (= tp!2205574 e!4507301)))

(declare-fun b!7570985 () Bool)

(assert (=> b!7570985 (= e!4507301 tp_is_empty!50377)))

(declare-fun b!7570988 () Bool)

(declare-fun tp!2205713 () Bool)

(declare-fun tp!2205714 () Bool)

(assert (=> b!7570988 (= e!4507301 (and tp!2205713 tp!2205714))))

(declare-fun b!7570986 () Bool)

(declare-fun tp!2205715 () Bool)

(declare-fun tp!2205716 () Bool)

(assert (=> b!7570986 (= e!4507301 (and tp!2205715 tp!2205716))))

(declare-fun b!7570987 () Bool)

(declare-fun tp!2205717 () Bool)

(assert (=> b!7570987 (= e!4507301 tp!2205717)))

(assert (= (and b!7570715 ((_ is ElementMatch!20011) (regOne!40535 (regOne!40535 baseR!100)))) b!7570985))

(assert (= (and b!7570715 ((_ is Concat!28856) (regOne!40535 (regOne!40535 baseR!100)))) b!7570986))

(assert (= (and b!7570715 ((_ is Star!20011) (regOne!40535 (regOne!40535 baseR!100)))) b!7570987))

(assert (= (and b!7570715 ((_ is Union!20011) (regOne!40535 (regOne!40535 baseR!100)))) b!7570988))

(declare-fun e!4507302 () Bool)

(assert (=> b!7570715 (= tp!2205575 e!4507302)))

(declare-fun b!7570989 () Bool)

(assert (=> b!7570989 (= e!4507302 tp_is_empty!50377)))

(declare-fun b!7570992 () Bool)

(declare-fun tp!2205718 () Bool)

(declare-fun tp!2205719 () Bool)

(assert (=> b!7570992 (= e!4507302 (and tp!2205718 tp!2205719))))

(declare-fun b!7570990 () Bool)

(declare-fun tp!2205720 () Bool)

(declare-fun tp!2205721 () Bool)

(assert (=> b!7570990 (= e!4507302 (and tp!2205720 tp!2205721))))

(declare-fun b!7570991 () Bool)

(declare-fun tp!2205722 () Bool)

(assert (=> b!7570991 (= e!4507302 tp!2205722)))

(assert (= (and b!7570715 ((_ is ElementMatch!20011) (regTwo!40535 (regOne!40535 baseR!100)))) b!7570989))

(assert (= (and b!7570715 ((_ is Concat!28856) (regTwo!40535 (regOne!40535 baseR!100)))) b!7570990))

(assert (= (and b!7570715 ((_ is Star!20011) (regTwo!40535 (regOne!40535 baseR!100)))) b!7570991))

(assert (= (and b!7570715 ((_ is Union!20011) (regTwo!40535 (regOne!40535 baseR!100)))) b!7570992))

(declare-fun e!4507304 () Bool)

(assert (=> b!7570673 (= tp!2205532 e!4507304)))

(declare-fun b!7570995 () Bool)

(assert (=> b!7570995 (= e!4507304 tp_is_empty!50377)))

(declare-fun b!7570998 () Bool)

(declare-fun tp!2205723 () Bool)

(declare-fun tp!2205724 () Bool)

(assert (=> b!7570998 (= e!4507304 (and tp!2205723 tp!2205724))))

(declare-fun b!7570996 () Bool)

(declare-fun tp!2205725 () Bool)

(declare-fun tp!2205726 () Bool)

(assert (=> b!7570996 (= e!4507304 (and tp!2205725 tp!2205726))))

(declare-fun b!7570997 () Bool)

(declare-fun tp!2205727 () Bool)

(assert (=> b!7570997 (= e!4507304 tp!2205727)))

(assert (= (and b!7570673 ((_ is ElementMatch!20011) (regOne!40534 (reg!20340 baseR!100)))) b!7570995))

(assert (= (and b!7570673 ((_ is Concat!28856) (regOne!40534 (reg!20340 baseR!100)))) b!7570996))

(assert (= (and b!7570673 ((_ is Star!20011) (regOne!40534 (reg!20340 baseR!100)))) b!7570997))

(assert (= (and b!7570673 ((_ is Union!20011) (regOne!40534 (reg!20340 baseR!100)))) b!7570998))

(declare-fun e!4507305 () Bool)

(assert (=> b!7570673 (= tp!2205533 e!4507305)))

(declare-fun b!7570999 () Bool)

(assert (=> b!7570999 (= e!4507305 tp_is_empty!50377)))

(declare-fun b!7571002 () Bool)

(declare-fun tp!2205728 () Bool)

(declare-fun tp!2205729 () Bool)

(assert (=> b!7571002 (= e!4507305 (and tp!2205728 tp!2205729))))

(declare-fun b!7571000 () Bool)

(declare-fun tp!2205730 () Bool)

(declare-fun tp!2205731 () Bool)

(assert (=> b!7571000 (= e!4507305 (and tp!2205730 tp!2205731))))

(declare-fun b!7571001 () Bool)

(declare-fun tp!2205732 () Bool)

(assert (=> b!7571001 (= e!4507305 tp!2205732)))

(assert (= (and b!7570673 ((_ is ElementMatch!20011) (regTwo!40534 (reg!20340 baseR!100)))) b!7570999))

(assert (= (and b!7570673 ((_ is Concat!28856) (regTwo!40534 (reg!20340 baseR!100)))) b!7571000))

(assert (= (and b!7570673 ((_ is Star!20011) (regTwo!40534 (reg!20340 baseR!100)))) b!7571001))

(assert (= (and b!7570673 ((_ is Union!20011) (regTwo!40534 (reg!20340 baseR!100)))) b!7571002))

(declare-fun e!4507306 () Bool)

(assert (=> b!7570732 (= tp!2205595 e!4507306)))

(declare-fun b!7571003 () Bool)

(assert (=> b!7571003 (= e!4507306 tp_is_empty!50377)))

(declare-fun b!7571006 () Bool)

(declare-fun tp!2205733 () Bool)

(declare-fun tp!2205734 () Bool)

(assert (=> b!7571006 (= e!4507306 (and tp!2205733 tp!2205734))))

(declare-fun b!7571004 () Bool)

(declare-fun tp!2205735 () Bool)

(declare-fun tp!2205736 () Bool)

(assert (=> b!7571004 (= e!4507306 (and tp!2205735 tp!2205736))))

(declare-fun b!7571005 () Bool)

(declare-fun tp!2205737 () Bool)

(assert (=> b!7571005 (= e!4507306 tp!2205737)))

(assert (= (and b!7570732 ((_ is ElementMatch!20011) (regOne!40535 (reg!20340 r!24129)))) b!7571003))

(assert (= (and b!7570732 ((_ is Concat!28856) (regOne!40535 (reg!20340 r!24129)))) b!7571004))

(assert (= (and b!7570732 ((_ is Star!20011) (regOne!40535 (reg!20340 r!24129)))) b!7571005))

(assert (= (and b!7570732 ((_ is Union!20011) (regOne!40535 (reg!20340 r!24129)))) b!7571006))

(declare-fun e!4507308 () Bool)

(assert (=> b!7570732 (= tp!2205596 e!4507308)))

(declare-fun b!7571009 () Bool)

(assert (=> b!7571009 (= e!4507308 tp_is_empty!50377)))

(declare-fun b!7571012 () Bool)

(declare-fun tp!2205738 () Bool)

(declare-fun tp!2205739 () Bool)

(assert (=> b!7571012 (= e!4507308 (and tp!2205738 tp!2205739))))

(declare-fun b!7571010 () Bool)

(declare-fun tp!2205740 () Bool)

(declare-fun tp!2205741 () Bool)

(assert (=> b!7571010 (= e!4507308 (and tp!2205740 tp!2205741))))

(declare-fun b!7571011 () Bool)

(declare-fun tp!2205742 () Bool)

(assert (=> b!7571011 (= e!4507308 tp!2205742)))

(assert (= (and b!7570732 ((_ is ElementMatch!20011) (regTwo!40535 (reg!20340 r!24129)))) b!7571009))

(assert (= (and b!7570732 ((_ is Concat!28856) (regTwo!40535 (reg!20340 r!24129)))) b!7571010))

(assert (= (and b!7570732 ((_ is Star!20011) (regTwo!40535 (reg!20340 r!24129)))) b!7571011))

(assert (= (and b!7570732 ((_ is Union!20011) (regTwo!40535 (reg!20340 r!24129)))) b!7571012))

(declare-fun e!4507309 () Bool)

(assert (=> b!7570723 (= tp!2205584 e!4507309)))

(declare-fun b!7571013 () Bool)

(assert (=> b!7571013 (= e!4507309 tp_is_empty!50377)))

(declare-fun b!7571016 () Bool)

(declare-fun tp!2205743 () Bool)

(declare-fun tp!2205744 () Bool)

(assert (=> b!7571016 (= e!4507309 (and tp!2205743 tp!2205744))))

(declare-fun b!7571014 () Bool)

(declare-fun tp!2205745 () Bool)

(declare-fun tp!2205746 () Bool)

(assert (=> b!7571014 (= e!4507309 (and tp!2205745 tp!2205746))))

(declare-fun b!7571015 () Bool)

(declare-fun tp!2205747 () Bool)

(assert (=> b!7571015 (= e!4507309 tp!2205747)))

(assert (= (and b!7570723 ((_ is ElementMatch!20011) (regOne!40535 (regTwo!40535 baseR!100)))) b!7571013))

(assert (= (and b!7570723 ((_ is Concat!28856) (regOne!40535 (regTwo!40535 baseR!100)))) b!7571014))

(assert (= (and b!7570723 ((_ is Star!20011) (regOne!40535 (regTwo!40535 baseR!100)))) b!7571015))

(assert (= (and b!7570723 ((_ is Union!20011) (regOne!40535 (regTwo!40535 baseR!100)))) b!7571016))

(declare-fun e!4507310 () Bool)

(assert (=> b!7570723 (= tp!2205585 e!4507310)))

(declare-fun b!7571017 () Bool)

(assert (=> b!7571017 (= e!4507310 tp_is_empty!50377)))

(declare-fun b!7571020 () Bool)

(declare-fun tp!2205748 () Bool)

(declare-fun tp!2205749 () Bool)

(assert (=> b!7571020 (= e!4507310 (and tp!2205748 tp!2205749))))

(declare-fun b!7571018 () Bool)

(declare-fun tp!2205750 () Bool)

(declare-fun tp!2205751 () Bool)

(assert (=> b!7571018 (= e!4507310 (and tp!2205750 tp!2205751))))

(declare-fun b!7571019 () Bool)

(declare-fun tp!2205752 () Bool)

(assert (=> b!7571019 (= e!4507310 tp!2205752)))

(assert (= (and b!7570723 ((_ is ElementMatch!20011) (regTwo!40535 (regTwo!40535 baseR!100)))) b!7571017))

(assert (= (and b!7570723 ((_ is Concat!28856) (regTwo!40535 (regTwo!40535 baseR!100)))) b!7571018))

(assert (= (and b!7570723 ((_ is Star!20011) (regTwo!40535 (regTwo!40535 baseR!100)))) b!7571019))

(assert (= (and b!7570723 ((_ is Union!20011) (regTwo!40535 (regTwo!40535 baseR!100)))) b!7571020))

(declare-fun e!4507311 () Bool)

(assert (=> b!7570730 (= tp!2205597 e!4507311)))

(declare-fun b!7571021 () Bool)

(assert (=> b!7571021 (= e!4507311 tp_is_empty!50377)))

(declare-fun b!7571024 () Bool)

(declare-fun tp!2205753 () Bool)

(declare-fun tp!2205754 () Bool)

(assert (=> b!7571024 (= e!4507311 (and tp!2205753 tp!2205754))))

(declare-fun b!7571022 () Bool)

(declare-fun tp!2205755 () Bool)

(declare-fun tp!2205756 () Bool)

(assert (=> b!7571022 (= e!4507311 (and tp!2205755 tp!2205756))))

(declare-fun b!7571023 () Bool)

(declare-fun tp!2205757 () Bool)

(assert (=> b!7571023 (= e!4507311 tp!2205757)))

(assert (= (and b!7570730 ((_ is ElementMatch!20011) (regOne!40534 (reg!20340 r!24129)))) b!7571021))

(assert (= (and b!7570730 ((_ is Concat!28856) (regOne!40534 (reg!20340 r!24129)))) b!7571022))

(assert (= (and b!7570730 ((_ is Star!20011) (regOne!40534 (reg!20340 r!24129)))) b!7571023))

(assert (= (and b!7570730 ((_ is Union!20011) (regOne!40534 (reg!20340 r!24129)))) b!7571024))

(declare-fun e!4507312 () Bool)

(assert (=> b!7570730 (= tp!2205598 e!4507312)))

(declare-fun b!7571025 () Bool)

(assert (=> b!7571025 (= e!4507312 tp_is_empty!50377)))

(declare-fun b!7571028 () Bool)

(declare-fun tp!2205758 () Bool)

(declare-fun tp!2205759 () Bool)

(assert (=> b!7571028 (= e!4507312 (and tp!2205758 tp!2205759))))

(declare-fun b!7571026 () Bool)

(declare-fun tp!2205760 () Bool)

(declare-fun tp!2205761 () Bool)

(assert (=> b!7571026 (= e!4507312 (and tp!2205760 tp!2205761))))

(declare-fun b!7571027 () Bool)

(declare-fun tp!2205762 () Bool)

(assert (=> b!7571027 (= e!4507312 tp!2205762)))

(assert (= (and b!7570730 ((_ is ElementMatch!20011) (regTwo!40534 (reg!20340 r!24129)))) b!7571025))

(assert (= (and b!7570730 ((_ is Concat!28856) (regTwo!40534 (reg!20340 r!24129)))) b!7571026))

(assert (= (and b!7570730 ((_ is Star!20011) (regTwo!40534 (reg!20340 r!24129)))) b!7571027))

(assert (= (and b!7570730 ((_ is Union!20011) (regTwo!40534 (reg!20340 r!24129)))) b!7571028))

(declare-fun e!4507313 () Bool)

(assert (=> b!7570731 (= tp!2205599 e!4507313)))

(declare-fun b!7571029 () Bool)

(assert (=> b!7571029 (= e!4507313 tp_is_empty!50377)))

(declare-fun b!7571032 () Bool)

(declare-fun tp!2205763 () Bool)

(declare-fun tp!2205764 () Bool)

(assert (=> b!7571032 (= e!4507313 (and tp!2205763 tp!2205764))))

(declare-fun b!7571030 () Bool)

(declare-fun tp!2205765 () Bool)

(declare-fun tp!2205766 () Bool)

(assert (=> b!7571030 (= e!4507313 (and tp!2205765 tp!2205766))))

(declare-fun b!7571031 () Bool)

(declare-fun tp!2205767 () Bool)

(assert (=> b!7571031 (= e!4507313 tp!2205767)))

(assert (= (and b!7570731 ((_ is ElementMatch!20011) (reg!20340 (reg!20340 r!24129)))) b!7571029))

(assert (= (and b!7570731 ((_ is Concat!28856) (reg!20340 (reg!20340 r!24129)))) b!7571030))

(assert (= (and b!7570731 ((_ is Star!20011) (reg!20340 (reg!20340 r!24129)))) b!7571031))

(assert (= (and b!7570731 ((_ is Union!20011) (reg!20340 (reg!20340 r!24129)))) b!7571032))

(declare-fun e!4507314 () Bool)

(assert (=> b!7570740 (= tp!2205605 e!4507314)))

(declare-fun b!7571033 () Bool)

(assert (=> b!7571033 (= e!4507314 tp_is_empty!50377)))

(declare-fun b!7571036 () Bool)

(declare-fun tp!2205768 () Bool)

(declare-fun tp!2205769 () Bool)

(assert (=> b!7571036 (= e!4507314 (and tp!2205768 tp!2205769))))

(declare-fun b!7571034 () Bool)

(declare-fun tp!2205770 () Bool)

(declare-fun tp!2205771 () Bool)

(assert (=> b!7571034 (= e!4507314 (and tp!2205770 tp!2205771))))

(declare-fun b!7571035 () Bool)

(declare-fun tp!2205772 () Bool)

(assert (=> b!7571035 (= e!4507314 tp!2205772)))

(assert (= (and b!7570740 ((_ is ElementMatch!20011) (regOne!40535 (regOne!40534 baseR!100)))) b!7571033))

(assert (= (and b!7570740 ((_ is Concat!28856) (regOne!40535 (regOne!40534 baseR!100)))) b!7571034))

(assert (= (and b!7570740 ((_ is Star!20011) (regOne!40535 (regOne!40534 baseR!100)))) b!7571035))

(assert (= (and b!7570740 ((_ is Union!20011) (regOne!40535 (regOne!40534 baseR!100)))) b!7571036))

(declare-fun e!4507315 () Bool)

(assert (=> b!7570740 (= tp!2205606 e!4507315)))

(declare-fun b!7571037 () Bool)

(assert (=> b!7571037 (= e!4507315 tp_is_empty!50377)))

(declare-fun b!7571040 () Bool)

(declare-fun tp!2205773 () Bool)

(declare-fun tp!2205774 () Bool)

(assert (=> b!7571040 (= e!4507315 (and tp!2205773 tp!2205774))))

(declare-fun b!7571038 () Bool)

(declare-fun tp!2205775 () Bool)

(declare-fun tp!2205776 () Bool)

(assert (=> b!7571038 (= e!4507315 (and tp!2205775 tp!2205776))))

(declare-fun b!7571039 () Bool)

(declare-fun tp!2205777 () Bool)

(assert (=> b!7571039 (= e!4507315 tp!2205777)))

(assert (= (and b!7570740 ((_ is ElementMatch!20011) (regTwo!40535 (regOne!40534 baseR!100)))) b!7571037))

(assert (= (and b!7570740 ((_ is Concat!28856) (regTwo!40535 (regOne!40534 baseR!100)))) b!7571038))

(assert (= (and b!7570740 ((_ is Star!20011) (regTwo!40535 (regOne!40534 baseR!100)))) b!7571039))

(assert (= (and b!7570740 ((_ is Union!20011) (regTwo!40535 (regOne!40534 baseR!100)))) b!7571040))

(declare-fun e!4507316 () Bool)

(assert (=> b!7570714 (= tp!2205578 e!4507316)))

(declare-fun b!7571041 () Bool)

(assert (=> b!7571041 (= e!4507316 tp_is_empty!50377)))

(declare-fun b!7571044 () Bool)

(declare-fun tp!2205778 () Bool)

(declare-fun tp!2205779 () Bool)

(assert (=> b!7571044 (= e!4507316 (and tp!2205778 tp!2205779))))

(declare-fun b!7571042 () Bool)

(declare-fun tp!2205780 () Bool)

(declare-fun tp!2205781 () Bool)

(assert (=> b!7571042 (= e!4507316 (and tp!2205780 tp!2205781))))

(declare-fun b!7571043 () Bool)

(declare-fun tp!2205782 () Bool)

(assert (=> b!7571043 (= e!4507316 tp!2205782)))

(assert (= (and b!7570714 ((_ is ElementMatch!20011) (reg!20340 (regOne!40535 baseR!100)))) b!7571041))

(assert (= (and b!7570714 ((_ is Concat!28856) (reg!20340 (regOne!40535 baseR!100)))) b!7571042))

(assert (= (and b!7570714 ((_ is Star!20011) (reg!20340 (regOne!40535 baseR!100)))) b!7571043))

(assert (= (and b!7570714 ((_ is Union!20011) (reg!20340 (regOne!40535 baseR!100)))) b!7571044))

(declare-fun e!4507317 () Bool)

(assert (=> b!7570690 (= tp!2205543 e!4507317)))

(declare-fun b!7571045 () Bool)

(assert (=> b!7571045 (= e!4507317 tp_is_empty!50377)))

(declare-fun b!7571048 () Bool)

(declare-fun tp!2205783 () Bool)

(declare-fun tp!2205784 () Bool)

(assert (=> b!7571048 (= e!4507317 (and tp!2205783 tp!2205784))))

(declare-fun b!7571046 () Bool)

(declare-fun tp!2205785 () Bool)

(declare-fun tp!2205786 () Bool)

(assert (=> b!7571046 (= e!4507317 (and tp!2205785 tp!2205786))))

(declare-fun b!7571047 () Bool)

(declare-fun tp!2205787 () Bool)

(assert (=> b!7571047 (= e!4507317 tp!2205787)))

(assert (= (and b!7570690 ((_ is ElementMatch!20011) (regOne!40535 (regTwo!40535 r!24129)))) b!7571045))

(assert (= (and b!7570690 ((_ is Concat!28856) (regOne!40535 (regTwo!40535 r!24129)))) b!7571046))

(assert (= (and b!7570690 ((_ is Star!20011) (regOne!40535 (regTwo!40535 r!24129)))) b!7571047))

(assert (= (and b!7570690 ((_ is Union!20011) (regOne!40535 (regTwo!40535 r!24129)))) b!7571048))

(declare-fun e!4507318 () Bool)

(assert (=> b!7570690 (= tp!2205544 e!4507318)))

(declare-fun b!7571049 () Bool)

(assert (=> b!7571049 (= e!4507318 tp_is_empty!50377)))

(declare-fun b!7571052 () Bool)

(declare-fun tp!2205788 () Bool)

(declare-fun tp!2205789 () Bool)

(assert (=> b!7571052 (= e!4507318 (and tp!2205788 tp!2205789))))

(declare-fun b!7571050 () Bool)

(declare-fun tp!2205790 () Bool)

(declare-fun tp!2205791 () Bool)

(assert (=> b!7571050 (= e!4507318 (and tp!2205790 tp!2205791))))

(declare-fun b!7571051 () Bool)

(declare-fun tp!2205792 () Bool)

(assert (=> b!7571051 (= e!4507318 tp!2205792)))

(assert (= (and b!7570690 ((_ is ElementMatch!20011) (regTwo!40535 (regTwo!40535 r!24129)))) b!7571049))

(assert (= (and b!7570690 ((_ is Concat!28856) (regTwo!40535 (regTwo!40535 r!24129)))) b!7571050))

(assert (= (and b!7570690 ((_ is Star!20011) (regTwo!40535 (regTwo!40535 r!24129)))) b!7571051))

(assert (= (and b!7570690 ((_ is Union!20011) (regTwo!40535 (regTwo!40535 r!24129)))) b!7571052))

(declare-fun e!4507319 () Bool)

(assert (=> b!7570738 (= tp!2205607 e!4507319)))

(declare-fun b!7571053 () Bool)

(assert (=> b!7571053 (= e!4507319 tp_is_empty!50377)))

(declare-fun b!7571056 () Bool)

(declare-fun tp!2205793 () Bool)

(declare-fun tp!2205794 () Bool)

(assert (=> b!7571056 (= e!4507319 (and tp!2205793 tp!2205794))))

(declare-fun b!7571054 () Bool)

(declare-fun tp!2205795 () Bool)

(declare-fun tp!2205796 () Bool)

(assert (=> b!7571054 (= e!4507319 (and tp!2205795 tp!2205796))))

(declare-fun b!7571055 () Bool)

(declare-fun tp!2205797 () Bool)

(assert (=> b!7571055 (= e!4507319 tp!2205797)))

(assert (= (and b!7570738 ((_ is ElementMatch!20011) (regOne!40534 (regOne!40534 baseR!100)))) b!7571053))

(assert (= (and b!7570738 ((_ is Concat!28856) (regOne!40534 (regOne!40534 baseR!100)))) b!7571054))

(assert (= (and b!7570738 ((_ is Star!20011) (regOne!40534 (regOne!40534 baseR!100)))) b!7571055))

(assert (= (and b!7570738 ((_ is Union!20011) (regOne!40534 (regOne!40534 baseR!100)))) b!7571056))

(declare-fun e!4507320 () Bool)

(assert (=> b!7570738 (= tp!2205608 e!4507320)))

(declare-fun b!7571057 () Bool)

(assert (=> b!7571057 (= e!4507320 tp_is_empty!50377)))

(declare-fun b!7571060 () Bool)

(declare-fun tp!2205798 () Bool)

(declare-fun tp!2205799 () Bool)

(assert (=> b!7571060 (= e!4507320 (and tp!2205798 tp!2205799))))

(declare-fun b!7571058 () Bool)

(declare-fun tp!2205800 () Bool)

(declare-fun tp!2205801 () Bool)

(assert (=> b!7571058 (= e!4507320 (and tp!2205800 tp!2205801))))

(declare-fun b!7571059 () Bool)

(declare-fun tp!2205802 () Bool)

(assert (=> b!7571059 (= e!4507320 tp!2205802)))

(assert (= (and b!7570738 ((_ is ElementMatch!20011) (regTwo!40534 (regOne!40534 baseR!100)))) b!7571057))

(assert (= (and b!7570738 ((_ is Concat!28856) (regTwo!40534 (regOne!40534 baseR!100)))) b!7571058))

(assert (= (and b!7570738 ((_ is Star!20011) (regTwo!40534 (regOne!40534 baseR!100)))) b!7571059))

(assert (= (and b!7570738 ((_ is Union!20011) (regTwo!40534 (regOne!40534 baseR!100)))) b!7571060))

(declare-fun e!4507321 () Bool)

(assert (=> b!7570739 (= tp!2205609 e!4507321)))

(declare-fun b!7571061 () Bool)

(assert (=> b!7571061 (= e!4507321 tp_is_empty!50377)))

(declare-fun b!7571064 () Bool)

(declare-fun tp!2205803 () Bool)

(declare-fun tp!2205804 () Bool)

(assert (=> b!7571064 (= e!4507321 (and tp!2205803 tp!2205804))))

(declare-fun b!7571062 () Bool)

(declare-fun tp!2205805 () Bool)

(declare-fun tp!2205806 () Bool)

(assert (=> b!7571062 (= e!4507321 (and tp!2205805 tp!2205806))))

(declare-fun b!7571063 () Bool)

(declare-fun tp!2205807 () Bool)

(assert (=> b!7571063 (= e!4507321 tp!2205807)))

(assert (= (and b!7570739 ((_ is ElementMatch!20011) (reg!20340 (regOne!40534 baseR!100)))) b!7571061))

(assert (= (and b!7570739 ((_ is Concat!28856) (reg!20340 (regOne!40534 baseR!100)))) b!7571062))

(assert (= (and b!7570739 ((_ is Star!20011) (reg!20340 (regOne!40534 baseR!100)))) b!7571063))

(assert (= (and b!7570739 ((_ is Union!20011) (reg!20340 (regOne!40534 baseR!100)))) b!7571064))

(declare-fun e!4507322 () Bool)

(assert (=> b!7570713 (= tp!2205576 e!4507322)))

(declare-fun b!7571065 () Bool)

(assert (=> b!7571065 (= e!4507322 tp_is_empty!50377)))

(declare-fun b!7571068 () Bool)

(declare-fun tp!2205808 () Bool)

(declare-fun tp!2205809 () Bool)

(assert (=> b!7571068 (= e!4507322 (and tp!2205808 tp!2205809))))

(declare-fun b!7571066 () Bool)

(declare-fun tp!2205810 () Bool)

(declare-fun tp!2205811 () Bool)

(assert (=> b!7571066 (= e!4507322 (and tp!2205810 tp!2205811))))

(declare-fun b!7571067 () Bool)

(declare-fun tp!2205812 () Bool)

(assert (=> b!7571067 (= e!4507322 tp!2205812)))

(assert (= (and b!7570713 ((_ is ElementMatch!20011) (regOne!40534 (regOne!40535 baseR!100)))) b!7571065))

(assert (= (and b!7570713 ((_ is Concat!28856) (regOne!40534 (regOne!40535 baseR!100)))) b!7571066))

(assert (= (and b!7570713 ((_ is Star!20011) (regOne!40534 (regOne!40535 baseR!100)))) b!7571067))

(assert (= (and b!7570713 ((_ is Union!20011) (regOne!40534 (regOne!40535 baseR!100)))) b!7571068))

(declare-fun e!4507330 () Bool)

(assert (=> b!7570713 (= tp!2205577 e!4507330)))

(declare-fun b!7571076 () Bool)

(assert (=> b!7571076 (= e!4507330 tp_is_empty!50377)))

(declare-fun b!7571081 () Bool)

(declare-fun tp!2205813 () Bool)

(declare-fun tp!2205814 () Bool)

(assert (=> b!7571081 (= e!4507330 (and tp!2205813 tp!2205814))))

(declare-fun b!7571077 () Bool)

(declare-fun tp!2205815 () Bool)

(declare-fun tp!2205816 () Bool)

(assert (=> b!7571077 (= e!4507330 (and tp!2205815 tp!2205816))))

(declare-fun b!7571079 () Bool)

(declare-fun tp!2205817 () Bool)

(assert (=> b!7571079 (= e!4507330 tp!2205817)))

(assert (= (and b!7570713 ((_ is ElementMatch!20011) (regTwo!40534 (regOne!40535 baseR!100)))) b!7571076))

(assert (= (and b!7570713 ((_ is Concat!28856) (regTwo!40534 (regOne!40535 baseR!100)))) b!7571077))

(assert (= (and b!7570713 ((_ is Star!20011) (regTwo!40534 (regOne!40535 baseR!100)))) b!7571079))

(assert (= (and b!7570713 ((_ is Union!20011) (regTwo!40534 (regOne!40535 baseR!100)))) b!7571081))

(declare-fun e!4507331 () Bool)

(assert (=> b!7570722 (= tp!2205588 e!4507331)))

(declare-fun b!7571082 () Bool)

(assert (=> b!7571082 (= e!4507331 tp_is_empty!50377)))

(declare-fun b!7571085 () Bool)

(declare-fun tp!2205818 () Bool)

(declare-fun tp!2205819 () Bool)

(assert (=> b!7571085 (= e!4507331 (and tp!2205818 tp!2205819))))

(declare-fun b!7571083 () Bool)

(declare-fun tp!2205820 () Bool)

(declare-fun tp!2205821 () Bool)

(assert (=> b!7571083 (= e!4507331 (and tp!2205820 tp!2205821))))

(declare-fun b!7571084 () Bool)

(declare-fun tp!2205822 () Bool)

(assert (=> b!7571084 (= e!4507331 tp!2205822)))

(assert (= (and b!7570722 ((_ is ElementMatch!20011) (reg!20340 (regTwo!40535 baseR!100)))) b!7571082))

(assert (= (and b!7570722 ((_ is Concat!28856) (reg!20340 (regTwo!40535 baseR!100)))) b!7571083))

(assert (= (and b!7570722 ((_ is Star!20011) (reg!20340 (regTwo!40535 baseR!100)))) b!7571084))

(assert (= (and b!7570722 ((_ is Union!20011) (reg!20340 (regTwo!40535 baseR!100)))) b!7571085))

(declare-fun e!4507332 () Bool)

(assert (=> b!7570748 (= tp!2205615 e!4507332)))

(declare-fun b!7571086 () Bool)

(assert (=> b!7571086 (= e!4507332 tp_is_empty!50377)))

(declare-fun b!7571089 () Bool)

(declare-fun tp!2205823 () Bool)

(declare-fun tp!2205824 () Bool)

(assert (=> b!7571089 (= e!4507332 (and tp!2205823 tp!2205824))))

(declare-fun b!7571087 () Bool)

(declare-fun tp!2205825 () Bool)

(declare-fun tp!2205826 () Bool)

(assert (=> b!7571087 (= e!4507332 (and tp!2205825 tp!2205826))))

(declare-fun b!7571088 () Bool)

(declare-fun tp!2205827 () Bool)

(assert (=> b!7571088 (= e!4507332 tp!2205827)))

(assert (= (and b!7570748 ((_ is ElementMatch!20011) (regOne!40535 (regTwo!40534 baseR!100)))) b!7571086))

(assert (= (and b!7570748 ((_ is Concat!28856) (regOne!40535 (regTwo!40534 baseR!100)))) b!7571087))

(assert (= (and b!7570748 ((_ is Star!20011) (regOne!40535 (regTwo!40534 baseR!100)))) b!7571088))

(assert (= (and b!7570748 ((_ is Union!20011) (regOne!40535 (regTwo!40534 baseR!100)))) b!7571089))

(declare-fun e!4507333 () Bool)

(assert (=> b!7570748 (= tp!2205616 e!4507333)))

(declare-fun b!7571090 () Bool)

(assert (=> b!7571090 (= e!4507333 tp_is_empty!50377)))

(declare-fun b!7571093 () Bool)

(declare-fun tp!2205828 () Bool)

(declare-fun tp!2205829 () Bool)

(assert (=> b!7571093 (= e!4507333 (and tp!2205828 tp!2205829))))

(declare-fun b!7571091 () Bool)

(declare-fun tp!2205830 () Bool)

(declare-fun tp!2205831 () Bool)

(assert (=> b!7571091 (= e!4507333 (and tp!2205830 tp!2205831))))

(declare-fun b!7571092 () Bool)

(declare-fun tp!2205832 () Bool)

(assert (=> b!7571092 (= e!4507333 tp!2205832)))

(assert (= (and b!7570748 ((_ is ElementMatch!20011) (regTwo!40535 (regTwo!40534 baseR!100)))) b!7571090))

(assert (= (and b!7570748 ((_ is Concat!28856) (regTwo!40535 (regTwo!40534 baseR!100)))) b!7571091))

(assert (= (and b!7570748 ((_ is Star!20011) (regTwo!40535 (regTwo!40534 baseR!100)))) b!7571092))

(assert (= (and b!7570748 ((_ is Union!20011) (regTwo!40535 (regTwo!40534 baseR!100)))) b!7571093))

(declare-fun e!4507334 () Bool)

(assert (=> b!7570689 (= tp!2205547 e!4507334)))

(declare-fun b!7571094 () Bool)

(assert (=> b!7571094 (= e!4507334 tp_is_empty!50377)))

(declare-fun b!7571097 () Bool)

(declare-fun tp!2205833 () Bool)

(declare-fun tp!2205834 () Bool)

(assert (=> b!7571097 (= e!4507334 (and tp!2205833 tp!2205834))))

(declare-fun b!7571095 () Bool)

(declare-fun tp!2205835 () Bool)

(declare-fun tp!2205836 () Bool)

(assert (=> b!7571095 (= e!4507334 (and tp!2205835 tp!2205836))))

(declare-fun b!7571096 () Bool)

(declare-fun tp!2205837 () Bool)

(assert (=> b!7571096 (= e!4507334 tp!2205837)))

(assert (= (and b!7570689 ((_ is ElementMatch!20011) (reg!20340 (regTwo!40535 r!24129)))) b!7571094))

(assert (= (and b!7570689 ((_ is Concat!28856) (reg!20340 (regTwo!40535 r!24129)))) b!7571095))

(assert (= (and b!7570689 ((_ is Star!20011) (reg!20340 (regTwo!40535 r!24129)))) b!7571096))

(assert (= (and b!7570689 ((_ is Union!20011) (reg!20340 (regTwo!40535 r!24129)))) b!7571097))

(declare-fun e!4507335 () Bool)

(assert (=> b!7570746 (= tp!2205617 e!4507335)))

(declare-fun b!7571098 () Bool)

(assert (=> b!7571098 (= e!4507335 tp_is_empty!50377)))

(declare-fun b!7571101 () Bool)

(declare-fun tp!2205838 () Bool)

(declare-fun tp!2205839 () Bool)

(assert (=> b!7571101 (= e!4507335 (and tp!2205838 tp!2205839))))

(declare-fun b!7571099 () Bool)

(declare-fun tp!2205840 () Bool)

(declare-fun tp!2205841 () Bool)

(assert (=> b!7571099 (= e!4507335 (and tp!2205840 tp!2205841))))

(declare-fun b!7571100 () Bool)

(declare-fun tp!2205842 () Bool)

(assert (=> b!7571100 (= e!4507335 tp!2205842)))

(assert (= (and b!7570746 ((_ is ElementMatch!20011) (regOne!40534 (regTwo!40534 baseR!100)))) b!7571098))

(assert (= (and b!7570746 ((_ is Concat!28856) (regOne!40534 (regTwo!40534 baseR!100)))) b!7571099))

(assert (= (and b!7570746 ((_ is Star!20011) (regOne!40534 (regTwo!40534 baseR!100)))) b!7571100))

(assert (= (and b!7570746 ((_ is Union!20011) (regOne!40534 (regTwo!40534 baseR!100)))) b!7571101))

(declare-fun e!4507336 () Bool)

(assert (=> b!7570746 (= tp!2205618 e!4507336)))

(declare-fun b!7571102 () Bool)

(assert (=> b!7571102 (= e!4507336 tp_is_empty!50377)))

(declare-fun b!7571105 () Bool)

(declare-fun tp!2205843 () Bool)

(declare-fun tp!2205844 () Bool)

(assert (=> b!7571105 (= e!4507336 (and tp!2205843 tp!2205844))))

(declare-fun b!7571103 () Bool)

(declare-fun tp!2205845 () Bool)

(declare-fun tp!2205846 () Bool)

(assert (=> b!7571103 (= e!4507336 (and tp!2205845 tp!2205846))))

(declare-fun b!7571104 () Bool)

(declare-fun tp!2205847 () Bool)

(assert (=> b!7571104 (= e!4507336 tp!2205847)))

(assert (= (and b!7570746 ((_ is ElementMatch!20011) (regTwo!40534 (regTwo!40534 baseR!100)))) b!7571102))

(assert (= (and b!7570746 ((_ is Concat!28856) (regTwo!40534 (regTwo!40534 baseR!100)))) b!7571103))

(assert (= (and b!7570746 ((_ is Star!20011) (regTwo!40534 (regTwo!40534 baseR!100)))) b!7571104))

(assert (= (and b!7570746 ((_ is Union!20011) (regTwo!40534 (regTwo!40534 baseR!100)))) b!7571105))

(declare-fun e!4507337 () Bool)

(assert (=> b!7570698 (= tp!2205554 e!4507337)))

(declare-fun b!7571106 () Bool)

(assert (=> b!7571106 (= e!4507337 tp_is_empty!50377)))

(declare-fun b!7571109 () Bool)

(declare-fun tp!2205848 () Bool)

(declare-fun tp!2205849 () Bool)

(assert (=> b!7571109 (= e!4507337 (and tp!2205848 tp!2205849))))

(declare-fun b!7571107 () Bool)

(declare-fun tp!2205850 () Bool)

(declare-fun tp!2205851 () Bool)

(assert (=> b!7571107 (= e!4507337 (and tp!2205850 tp!2205851))))

(declare-fun b!7571108 () Bool)

(declare-fun tp!2205852 () Bool)

(assert (=> b!7571108 (= e!4507337 tp!2205852)))

(assert (= (and b!7570698 ((_ is ElementMatch!20011) (regOne!40535 (regOne!40534 r!24129)))) b!7571106))

(assert (= (and b!7570698 ((_ is Concat!28856) (regOne!40535 (regOne!40534 r!24129)))) b!7571107))

(assert (= (and b!7570698 ((_ is Star!20011) (regOne!40535 (regOne!40534 r!24129)))) b!7571108))

(assert (= (and b!7570698 ((_ is Union!20011) (regOne!40535 (regOne!40534 r!24129)))) b!7571109))

(declare-fun e!4507338 () Bool)

(assert (=> b!7570698 (= tp!2205555 e!4507338)))

(declare-fun b!7571110 () Bool)

(assert (=> b!7571110 (= e!4507338 tp_is_empty!50377)))

(declare-fun b!7571113 () Bool)

(declare-fun tp!2205853 () Bool)

(declare-fun tp!2205854 () Bool)

(assert (=> b!7571113 (= e!4507338 (and tp!2205853 tp!2205854))))

(declare-fun b!7571111 () Bool)

(declare-fun tp!2205855 () Bool)

(declare-fun tp!2205856 () Bool)

(assert (=> b!7571111 (= e!4507338 (and tp!2205855 tp!2205856))))

(declare-fun b!7571112 () Bool)

(declare-fun tp!2205857 () Bool)

(assert (=> b!7571112 (= e!4507338 tp!2205857)))

(assert (= (and b!7570698 ((_ is ElementMatch!20011) (regTwo!40535 (regOne!40534 r!24129)))) b!7571110))

(assert (= (and b!7570698 ((_ is Concat!28856) (regTwo!40535 (regOne!40534 r!24129)))) b!7571111))

(assert (= (and b!7570698 ((_ is Star!20011) (regTwo!40535 (regOne!40534 r!24129)))) b!7571112))

(assert (= (and b!7570698 ((_ is Union!20011) (regTwo!40535 (regOne!40534 r!24129)))) b!7571113))

(declare-fun e!4507341 () Bool)

(assert (=> b!7570721 (= tp!2205586 e!4507341)))

(declare-fun b!7571115 () Bool)

(assert (=> b!7571115 (= e!4507341 tp_is_empty!50377)))

(declare-fun b!7571120 () Bool)

(declare-fun tp!2205858 () Bool)

(declare-fun tp!2205859 () Bool)

(assert (=> b!7571120 (= e!4507341 (and tp!2205858 tp!2205859))))

(declare-fun b!7571116 () Bool)

(declare-fun tp!2205860 () Bool)

(declare-fun tp!2205861 () Bool)

(assert (=> b!7571116 (= e!4507341 (and tp!2205860 tp!2205861))))

(declare-fun b!7571118 () Bool)

(declare-fun tp!2205862 () Bool)

(assert (=> b!7571118 (= e!4507341 tp!2205862)))

(assert (= (and b!7570721 ((_ is ElementMatch!20011) (regOne!40534 (regTwo!40535 baseR!100)))) b!7571115))

(assert (= (and b!7570721 ((_ is Concat!28856) (regOne!40534 (regTwo!40535 baseR!100)))) b!7571116))

(assert (= (and b!7570721 ((_ is Star!20011) (regOne!40534 (regTwo!40535 baseR!100)))) b!7571118))

(assert (= (and b!7570721 ((_ is Union!20011) (regOne!40534 (regTwo!40535 baseR!100)))) b!7571120))

(declare-fun e!4507343 () Bool)

(assert (=> b!7570721 (= tp!2205587 e!4507343)))

(declare-fun b!7571122 () Bool)

(assert (=> b!7571122 (= e!4507343 tp_is_empty!50377)))

(declare-fun b!7571125 () Bool)

(declare-fun tp!2205863 () Bool)

(declare-fun tp!2205864 () Bool)

(assert (=> b!7571125 (= e!4507343 (and tp!2205863 tp!2205864))))

(declare-fun b!7571123 () Bool)

(declare-fun tp!2205865 () Bool)

(declare-fun tp!2205866 () Bool)

(assert (=> b!7571123 (= e!4507343 (and tp!2205865 tp!2205866))))

(declare-fun b!7571124 () Bool)

(declare-fun tp!2205867 () Bool)

(assert (=> b!7571124 (= e!4507343 tp!2205867)))

(assert (= (and b!7570721 ((_ is ElementMatch!20011) (regTwo!40534 (regTwo!40535 baseR!100)))) b!7571122))

(assert (= (and b!7570721 ((_ is Concat!28856) (regTwo!40534 (regTwo!40535 baseR!100)))) b!7571123))

(assert (= (and b!7570721 ((_ is Star!20011) (regTwo!40534 (regTwo!40535 baseR!100)))) b!7571124))

(assert (= (and b!7570721 ((_ is Union!20011) (regTwo!40534 (regTwo!40535 baseR!100)))) b!7571125))

(declare-fun e!4507344 () Bool)

(assert (=> b!7570747 (= tp!2205619 e!4507344)))

(declare-fun b!7571126 () Bool)

(assert (=> b!7571126 (= e!4507344 tp_is_empty!50377)))

(declare-fun b!7571129 () Bool)

(declare-fun tp!2205868 () Bool)

(declare-fun tp!2205869 () Bool)

(assert (=> b!7571129 (= e!4507344 (and tp!2205868 tp!2205869))))

(declare-fun b!7571127 () Bool)

(declare-fun tp!2205870 () Bool)

(declare-fun tp!2205871 () Bool)

(assert (=> b!7571127 (= e!4507344 (and tp!2205870 tp!2205871))))

(declare-fun b!7571128 () Bool)

(declare-fun tp!2205872 () Bool)

(assert (=> b!7571128 (= e!4507344 tp!2205872)))

(assert (= (and b!7570747 ((_ is ElementMatch!20011) (reg!20340 (regTwo!40534 baseR!100)))) b!7571126))

(assert (= (and b!7570747 ((_ is Concat!28856) (reg!20340 (regTwo!40534 baseR!100)))) b!7571127))

(assert (= (and b!7570747 ((_ is Star!20011) (reg!20340 (regTwo!40534 baseR!100)))) b!7571128))

(assert (= (and b!7570747 ((_ is Union!20011) (reg!20340 (regTwo!40534 baseR!100)))) b!7571129))

(declare-fun e!4507345 () Bool)

(assert (=> b!7570697 (= tp!2205558 e!4507345)))

(declare-fun b!7571130 () Bool)

(assert (=> b!7571130 (= e!4507345 tp_is_empty!50377)))

(declare-fun b!7571133 () Bool)

(declare-fun tp!2205873 () Bool)

(declare-fun tp!2205874 () Bool)

(assert (=> b!7571133 (= e!4507345 (and tp!2205873 tp!2205874))))

(declare-fun b!7571131 () Bool)

(declare-fun tp!2205875 () Bool)

(declare-fun tp!2205876 () Bool)

(assert (=> b!7571131 (= e!4507345 (and tp!2205875 tp!2205876))))

(declare-fun b!7571132 () Bool)

(declare-fun tp!2205877 () Bool)

(assert (=> b!7571132 (= e!4507345 tp!2205877)))

(assert (= (and b!7570697 ((_ is ElementMatch!20011) (reg!20340 (regOne!40534 r!24129)))) b!7571130))

(assert (= (and b!7570697 ((_ is Concat!28856) (reg!20340 (regOne!40534 r!24129)))) b!7571131))

(assert (= (and b!7570697 ((_ is Star!20011) (reg!20340 (regOne!40534 r!24129)))) b!7571132))

(assert (= (and b!7570697 ((_ is Union!20011) (reg!20340 (regOne!40534 r!24129)))) b!7571133))

(declare-fun e!4507346 () Bool)

(assert (=> b!7570680 (= tp!2205536 e!4507346)))

(declare-fun b!7571134 () Bool)

(assert (=> b!7571134 (= e!4507346 tp_is_empty!50377)))

(declare-fun b!7571137 () Bool)

(declare-fun tp!2205878 () Bool)

(declare-fun tp!2205879 () Bool)

(assert (=> b!7571137 (= e!4507346 (and tp!2205878 tp!2205879))))

(declare-fun b!7571135 () Bool)

(declare-fun tp!2205880 () Bool)

(declare-fun tp!2205881 () Bool)

(assert (=> b!7571135 (= e!4507346 (and tp!2205880 tp!2205881))))

(declare-fun b!7571136 () Bool)

(declare-fun tp!2205882 () Bool)

(assert (=> b!7571136 (= e!4507346 tp!2205882)))

(assert (= (and b!7570680 ((_ is ElementMatch!20011) (regOne!40535 (regOne!40535 r!24129)))) b!7571134))

(assert (= (and b!7570680 ((_ is Concat!28856) (regOne!40535 (regOne!40535 r!24129)))) b!7571135))

(assert (= (and b!7570680 ((_ is Star!20011) (regOne!40535 (regOne!40535 r!24129)))) b!7571136))

(assert (= (and b!7570680 ((_ is Union!20011) (regOne!40535 (regOne!40535 r!24129)))) b!7571137))

(declare-fun e!4507347 () Bool)

(assert (=> b!7570680 (= tp!2205537 e!4507347)))

(declare-fun b!7571138 () Bool)

(assert (=> b!7571138 (= e!4507347 tp_is_empty!50377)))

(declare-fun b!7571141 () Bool)

(declare-fun tp!2205883 () Bool)

(declare-fun tp!2205884 () Bool)

(assert (=> b!7571141 (= e!4507347 (and tp!2205883 tp!2205884))))

(declare-fun b!7571139 () Bool)

(declare-fun tp!2205885 () Bool)

(declare-fun tp!2205886 () Bool)

(assert (=> b!7571139 (= e!4507347 (and tp!2205885 tp!2205886))))

(declare-fun b!7571140 () Bool)

(declare-fun tp!2205887 () Bool)

(assert (=> b!7571140 (= e!4507347 tp!2205887)))

(assert (= (and b!7570680 ((_ is ElementMatch!20011) (regTwo!40535 (regOne!40535 r!24129)))) b!7571138))

(assert (= (and b!7570680 ((_ is Concat!28856) (regTwo!40535 (regOne!40535 r!24129)))) b!7571139))

(assert (= (and b!7570680 ((_ is Star!20011) (regTwo!40535 (regOne!40535 r!24129)))) b!7571140))

(assert (= (and b!7570680 ((_ is Union!20011) (regTwo!40535 (regOne!40535 r!24129)))) b!7571141))

(declare-fun e!4507348 () Bool)

(assert (=> b!7570688 (= tp!2205545 e!4507348)))

(declare-fun b!7571142 () Bool)

(assert (=> b!7571142 (= e!4507348 tp_is_empty!50377)))

(declare-fun b!7571145 () Bool)

(declare-fun tp!2205888 () Bool)

(declare-fun tp!2205889 () Bool)

(assert (=> b!7571145 (= e!4507348 (and tp!2205888 tp!2205889))))

(declare-fun b!7571143 () Bool)

(declare-fun tp!2205890 () Bool)

(declare-fun tp!2205891 () Bool)

(assert (=> b!7571143 (= e!4507348 (and tp!2205890 tp!2205891))))

(declare-fun b!7571144 () Bool)

(declare-fun tp!2205892 () Bool)

(assert (=> b!7571144 (= e!4507348 tp!2205892)))

(assert (= (and b!7570688 ((_ is ElementMatch!20011) (regOne!40534 (regTwo!40535 r!24129)))) b!7571142))

(assert (= (and b!7570688 ((_ is Concat!28856) (regOne!40534 (regTwo!40535 r!24129)))) b!7571143))

(assert (= (and b!7570688 ((_ is Star!20011) (regOne!40534 (regTwo!40535 r!24129)))) b!7571144))

(assert (= (and b!7570688 ((_ is Union!20011) (regOne!40534 (regTwo!40535 r!24129)))) b!7571145))

(declare-fun e!4507349 () Bool)

(assert (=> b!7570688 (= tp!2205546 e!4507349)))

(declare-fun b!7571146 () Bool)

(assert (=> b!7571146 (= e!4507349 tp_is_empty!50377)))

(declare-fun b!7571149 () Bool)

(declare-fun tp!2205893 () Bool)

(declare-fun tp!2205894 () Bool)

(assert (=> b!7571149 (= e!4507349 (and tp!2205893 tp!2205894))))

(declare-fun b!7571147 () Bool)

(declare-fun tp!2205895 () Bool)

(declare-fun tp!2205896 () Bool)

(assert (=> b!7571147 (= e!4507349 (and tp!2205895 tp!2205896))))

(declare-fun b!7571148 () Bool)

(declare-fun tp!2205897 () Bool)

(assert (=> b!7571148 (= e!4507349 tp!2205897)))

(assert (= (and b!7570688 ((_ is ElementMatch!20011) (regTwo!40534 (regTwo!40535 r!24129)))) b!7571146))

(assert (= (and b!7570688 ((_ is Concat!28856) (regTwo!40534 (regTwo!40535 r!24129)))) b!7571147))

(assert (= (and b!7570688 ((_ is Star!20011) (regTwo!40534 (regTwo!40535 r!24129)))) b!7571148))

(assert (= (and b!7570688 ((_ is Union!20011) (regTwo!40534 (regTwo!40535 r!24129)))) b!7571149))

(check-sat (not b!7571006) (not b!7570832) (not b!7571132) (not bm!694034) (not b!7570824) (not b!7571092) (not b!7570843) (not b!7570967) (not b!7570940) (not b!7570941) (not b!7570944) (not b!7571144) (not b!7571015) (not b!7571063) (not b!7571124) (not b!7571012) (not bm!694068) (not d!2317435) (not b!7571004) (not bm!694070) (not b!7571024) (not b!7570933) (not b!7571035) (not bm!694037) (not b!7570988) (not b!7570958) (not b!7570954) (not b!7570833) (not b!7570960) (not b!7571105) (not d!2317475) (not b!7570946) (not b!7571011) (not b!7571089) (not b!7571066) (not b!7571026) (not b!7571120) (not d!2317427) (not b!7570831) (not b!7571103) (not b!7570983) (not b!7571067) (not b!7570930) (not b!7571046) (not b!7571058) (not b!7571128) (not b!7571047) (not bm!694047) (not b!7571091) (not bm!694046) (not b!7571027) (not b!7571032) (not b!7570932) (not b!7570934) (not b!7570996) (not b!7570987) (not bm!694032) (not b!7571052) (not b!7571001) (not b!7570904) (not b!7571087) (not b!7571141) tp_is_empty!50377 (not b!7570820) (not b!7570913) (not d!2317443) (not b!7570937) (not b!7571099) (not b!7571023) (not b!7571100) (not b!7570982) (not b!7571085) (not b!7571000) (not b!7570907) (not b!7570984) (not b!7570997) (not b!7570794) (not b!7571131) (not b!7570905) (not b!7570912) (not b!7571043) (not b!7570841) (not b!7570873) (not b!7571149) (not b!7571016) (not b!7571143) (not b!7571034) (not d!2317471) (not b!7570970) (not b!7570950) (not b!7571136) (not b!7571133) (not b!7571077) (not b!7570821) (not b!7571038) (not b!7571018) (not b!7571056) (not b!7570942) (not b!7570962) (not b!7571040) (not b!7571147) (not bm!694035) (not b!7570972) (not bm!694063) (not b!7570819) (not b!7570955) (not b!7571084) (not b!7571051) (not b!7570971) (not b!7570964) (not b!7570882) (not b!7570991) (not b!7570998) (not b!7571020) (not b!7570914) (not b!7571137) (not bm!694056) (not b!7571095) (not b!7570947) (not b!7571107) (not b!7571109) (not b!7571123) (not b!7570936) (not b!7571014) (not b!7570844) (not b!7570956) (not b!7570959) (not b!7571081) (not bm!694062) (not b!7571135) (not b!7571096) (not b!7570980) (not b!7571055) (not b!7571005) (not d!2317477) (not b!7571112) (not b!7570776) (not bm!694040) (not d!2317445) (not bm!694045) (not b!7571019) (not b!7571022) (not b!7571042) (not d!2317469) (not b!7570966) (not b!7570979) (not b!7571060) (not b!7571048) (not bm!694072) (not b!7571116) (not b!7571064) (not b!7571068) (not b!7571140) (not b!7571129) (not b!7571054) (not b!7571062) (not b!7570978) (not b!7570938) (not b!7570990) (not b!7571050) (not b!7571145) (not bm!694069) (not b!7571028) (not b!7571111) (not b!7570963) (not b!7571139) (not bm!694065) (not b!7571148) (not b!7571039) (not b!7571030) (not b!7570974) (not d!2317457) (not b!7570928) (not b!7570924) (not b!7570929) (not b!7570823) (not b!7571093) (not b!7570968) (not b!7571101) (not bm!694058) (not b!7570945) (not b!7571079) (not b!7571088) (not b!7571044) (not b!7571104) (not b!7571108) (not b!7570992) (not b!7571125) (not b!7571118) (not b!7571127) (not b!7571010) (not bm!694066) (not b!7571002) (not b!7570900) (not b!7570975) (not b!7570891) (not b!7571097) (not bm!694060) (not b!7571083) (not b!7570986) (not d!2317455) (not bm!694038) (not b!7570976) (not b!7571059) (not b!7571036) (not b!7571031) (not b!7570785) (not b!7571113) (not b!7570826))
(check-sat)
