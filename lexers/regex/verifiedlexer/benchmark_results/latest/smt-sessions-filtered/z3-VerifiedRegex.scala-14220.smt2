; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744546 () Bool)

(assert start!744546)

(declare-fun b!7891135 () Bool)

(declare-fun e!4658474 () Bool)

(declare-fun tp!2348503 () Bool)

(declare-fun tp!2348499 () Bool)

(assert (=> b!7891135 (= e!4658474 (and tp!2348503 tp!2348499))))

(declare-fun b!7891136 () Bool)

(declare-fun e!4658475 () Bool)

(declare-fun tp_is_empty!52825 () Bool)

(declare-fun tp!2348504 () Bool)

(assert (=> b!7891136 (= e!4658475 (and tp_is_empty!52825 tp!2348504))))

(declare-fun b!7891137 () Bool)

(declare-fun tp!2348500 () Bool)

(assert (=> b!7891137 (= e!4658474 tp!2348500)))

(declare-fun b!7891138 () Bool)

(declare-fun tp!2348506 () Bool)

(declare-fun tp!2348502 () Bool)

(assert (=> b!7891138 (= e!4658474 (and tp!2348506 tp!2348502))))

(declare-fun b!7891139 () Bool)

(declare-fun res!3131665 () Bool)

(declare-fun e!4658473 () Bool)

(assert (=> b!7891139 (=> (not res!3131665) (not e!4658473))))

(declare-datatypes ((C!42752 0))(
  ( (C!42753 (val!31838 Int)) )
))
(declare-datatypes ((List!74070 0))(
  ( (Nil!73946) (Cons!73946 (h!80394 C!42752) (t!388805 List!74070)) )
))
(declare-datatypes ((tuple2!70064 0))(
  ( (tuple2!70065 (_1!38335 List!74070) (_2!38335 List!74070)) )
))
(declare-fun cut!3 () tuple2!70064)

(declare-fun s!9586 () List!74070)

(declare-fun ++!18117 (List!74070 List!74070) List!74070)

(assert (=> b!7891139 (= res!3131665 (= (++!18117 (_1!38335 cut!3) (_2!38335 cut!3)) s!9586))))

(declare-fun b!7891140 () Bool)

(declare-fun e!4658472 () Bool)

(declare-fun tp!2348505 () Bool)

(assert (=> b!7891140 (= e!4658472 (and tp_is_empty!52825 tp!2348505))))

(declare-fun b!7891141 () Bool)

(declare-fun e!4658471 () Bool)

(declare-fun tp!2348501 () Bool)

(assert (=> b!7891141 (= e!4658471 (and tp_is_empty!52825 tp!2348501))))

(declare-fun res!3131664 () Bool)

(assert (=> start!744546 (=> (not res!3131664) (not e!4658473))))

(declare-datatypes ((Regex!21213 0))(
  ( (ElementMatch!21213 (c!1448675 C!42752)) (Concat!30058 (regOne!42938 Regex!21213) (regTwo!42938 Regex!21213)) (EmptyExpr!21213) (Star!21213 (reg!21542 Regex!21213)) (EmptyLang!21213) (Union!21213 (regOne!42939 Regex!21213) (regTwo!42939 Regex!21213)) )
))
(declare-fun r!14100 () Regex!21213)

(declare-fun validRegex!11623 (Regex!21213) Bool)

(assert (=> start!744546 (= res!3131664 (validRegex!11623 r!14100))))

(assert (=> start!744546 e!4658473))

(assert (=> start!744546 e!4658474))

(assert (=> start!744546 (and e!4658471 e!4658472)))

(assert (=> start!744546 e!4658475))

(declare-fun b!7891142 () Bool)

(declare-fun size!42854 (List!74070) Int)

(declare-fun regexDepth!517 (Regex!21213) Int)

(assert (=> b!7891142 (= e!4658473 (>= (+ (size!42854 (_1!38335 cut!3)) (regexDepth!517 (regOne!42938 r!14100))) (+ (size!42854 s!9586) (regexDepth!517 r!14100))))))

(declare-fun b!7891143 () Bool)

(assert (=> b!7891143 (= e!4658474 tp_is_empty!52825)))

(declare-fun b!7891144 () Bool)

(declare-fun res!3131666 () Bool)

(assert (=> b!7891144 (=> (not res!3131666) (not e!4658473))))

(get-info :version)

(assert (=> b!7891144 (= res!3131666 (and (not ((_ is EmptyExpr!21213) r!14100)) (not ((_ is EmptyLang!21213) r!14100)) (not ((_ is ElementMatch!21213) r!14100)) (not ((_ is Union!21213) r!14100)) (not ((_ is Star!21213) r!14100))))))

(assert (= (and start!744546 res!3131664) b!7891144))

(assert (= (and b!7891144 res!3131666) b!7891139))

(assert (= (and b!7891139 res!3131665) b!7891142))

(assert (= (and start!744546 ((_ is ElementMatch!21213) r!14100)) b!7891143))

(assert (= (and start!744546 ((_ is Concat!30058) r!14100)) b!7891138))

(assert (= (and start!744546 ((_ is Star!21213) r!14100)) b!7891137))

(assert (= (and start!744546 ((_ is Union!21213) r!14100)) b!7891135))

(assert (= (and start!744546 ((_ is Cons!73946) (_1!38335 cut!3))) b!7891141))

(assert (= (and start!744546 ((_ is Cons!73946) (_2!38335 cut!3))) b!7891140))

(assert (= (and start!744546 ((_ is Cons!73946) s!9586)) b!7891136))

(declare-fun m!8270692 () Bool)

(assert (=> b!7891139 m!8270692))

(declare-fun m!8270694 () Bool)

(assert (=> start!744546 m!8270694))

(declare-fun m!8270696 () Bool)

(assert (=> b!7891142 m!8270696))

(declare-fun m!8270698 () Bool)

(assert (=> b!7891142 m!8270698))

(declare-fun m!8270700 () Bool)

(assert (=> b!7891142 m!8270700))

(declare-fun m!8270702 () Bool)

(assert (=> b!7891142 m!8270702))

(check-sat (not b!7891136) (not b!7891139) (not b!7891137) tp_is_empty!52825 (not b!7891140) (not b!7891142) (not b!7891141) (not b!7891135) (not start!744546) (not b!7891138))
(check-sat)
(get-model)

(declare-fun b!7891153 () Bool)

(declare-fun e!4658480 () List!74070)

(assert (=> b!7891153 (= e!4658480 (_2!38335 cut!3))))

(declare-fun d!2356961 () Bool)

(declare-fun e!4658481 () Bool)

(assert (=> d!2356961 e!4658481))

(declare-fun res!3131671 () Bool)

(assert (=> d!2356961 (=> (not res!3131671) (not e!4658481))))

(declare-fun lt!2681554 () List!74070)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15696 (List!74070) (InoxSet C!42752))

(assert (=> d!2356961 (= res!3131671 (= (content!15696 lt!2681554) ((_ map or) (content!15696 (_1!38335 cut!3)) (content!15696 (_2!38335 cut!3)))))))

(assert (=> d!2356961 (= lt!2681554 e!4658480)))

(declare-fun c!1448678 () Bool)

(assert (=> d!2356961 (= c!1448678 ((_ is Nil!73946) (_1!38335 cut!3)))))

(assert (=> d!2356961 (= (++!18117 (_1!38335 cut!3) (_2!38335 cut!3)) lt!2681554)))

(declare-fun b!7891155 () Bool)

(declare-fun res!3131672 () Bool)

(assert (=> b!7891155 (=> (not res!3131672) (not e!4658481))))

(assert (=> b!7891155 (= res!3131672 (= (size!42854 lt!2681554) (+ (size!42854 (_1!38335 cut!3)) (size!42854 (_2!38335 cut!3)))))))

(declare-fun b!7891154 () Bool)

(assert (=> b!7891154 (= e!4658480 (Cons!73946 (h!80394 (_1!38335 cut!3)) (++!18117 (t!388805 (_1!38335 cut!3)) (_2!38335 cut!3))))))

(declare-fun b!7891156 () Bool)

(assert (=> b!7891156 (= e!4658481 (or (not (= (_2!38335 cut!3) Nil!73946)) (= lt!2681554 (_1!38335 cut!3))))))

(assert (= (and d!2356961 c!1448678) b!7891153))

(assert (= (and d!2356961 (not c!1448678)) b!7891154))

(assert (= (and d!2356961 res!3131671) b!7891155))

(assert (= (and b!7891155 res!3131672) b!7891156))

(declare-fun m!8270704 () Bool)

(assert (=> d!2356961 m!8270704))

(declare-fun m!8270706 () Bool)

(assert (=> d!2356961 m!8270706))

(declare-fun m!8270708 () Bool)

(assert (=> d!2356961 m!8270708))

(declare-fun m!8270710 () Bool)

(assert (=> b!7891155 m!8270710))

(assert (=> b!7891155 m!8270696))

(declare-fun m!8270712 () Bool)

(assert (=> b!7891155 m!8270712))

(declare-fun m!8270714 () Bool)

(assert (=> b!7891154 m!8270714))

(assert (=> b!7891139 d!2356961))

(declare-fun b!7891207 () Bool)

(declare-fun res!3131701 () Bool)

(declare-fun e!4658520 () Bool)

(assert (=> b!7891207 (=> res!3131701 e!4658520)))

(assert (=> b!7891207 (= res!3131701 (not ((_ is Concat!30058) r!14100)))))

(declare-fun e!4658521 () Bool)

(assert (=> b!7891207 (= e!4658521 e!4658520)))

(declare-fun b!7891208 () Bool)

(declare-fun e!4658525 () Bool)

(declare-fun call!732370 () Bool)

(assert (=> b!7891208 (= e!4658525 call!732370)))

(declare-fun b!7891209 () Bool)

(declare-fun e!4658523 () Bool)

(declare-fun call!732372 () Bool)

(assert (=> b!7891209 (= e!4658523 call!732372)))

(declare-fun b!7891210 () Bool)

(declare-fun res!3131700 () Bool)

(declare-fun e!4658519 () Bool)

(assert (=> b!7891210 (=> (not res!3131700) (not e!4658519))))

(assert (=> b!7891210 (= res!3131700 call!732370)))

(assert (=> b!7891210 (= e!4658521 e!4658519)))

(declare-fun b!7891211 () Bool)

(declare-fun call!732371 () Bool)

(assert (=> b!7891211 (= e!4658519 call!732371)))

(declare-fun b!7891212 () Bool)

(declare-fun e!4658522 () Bool)

(assert (=> b!7891212 (= e!4658522 e!4658521)))

(declare-fun c!1448692 () Bool)

(assert (=> b!7891212 (= c!1448692 ((_ is Union!21213) r!14100))))

(declare-fun bm!732365 () Bool)

(assert (=> bm!732365 (= call!732371 call!732372)))

(declare-fun c!1448691 () Bool)

(declare-fun bm!732366 () Bool)

(assert (=> bm!732366 (= call!732372 (validRegex!11623 (ite c!1448691 (reg!21542 r!14100) (ite c!1448692 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))

(declare-fun b!7891213 () Bool)

(assert (=> b!7891213 (= e!4658520 e!4658525)))

(declare-fun res!3131699 () Bool)

(assert (=> b!7891213 (=> (not res!3131699) (not e!4658525))))

(assert (=> b!7891213 (= res!3131699 call!732371)))

(declare-fun b!7891206 () Bool)

(assert (=> b!7891206 (= e!4658522 e!4658523)))

(declare-fun res!3131702 () Bool)

(declare-fun nullable!9468 (Regex!21213) Bool)

(assert (=> b!7891206 (= res!3131702 (not (nullable!9468 (reg!21542 r!14100))))))

(assert (=> b!7891206 (=> (not res!3131702) (not e!4658523))))

(declare-fun d!2356965 () Bool)

(declare-fun res!3131698 () Bool)

(declare-fun e!4658524 () Bool)

(assert (=> d!2356965 (=> res!3131698 e!4658524)))

(assert (=> d!2356965 (= res!3131698 ((_ is ElementMatch!21213) r!14100))))

(assert (=> d!2356965 (= (validRegex!11623 r!14100) e!4658524)))

(declare-fun bm!732367 () Bool)

(assert (=> bm!732367 (= call!732370 (validRegex!11623 (ite c!1448692 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))

(declare-fun b!7891214 () Bool)

(assert (=> b!7891214 (= e!4658524 e!4658522)))

(assert (=> b!7891214 (= c!1448691 ((_ is Star!21213) r!14100))))

(assert (= (and d!2356965 (not res!3131698)) b!7891214))

(assert (= (and b!7891214 c!1448691) b!7891206))

(assert (= (and b!7891214 (not c!1448691)) b!7891212))

(assert (= (and b!7891206 res!3131702) b!7891209))

(assert (= (and b!7891212 c!1448692) b!7891210))

(assert (= (and b!7891212 (not c!1448692)) b!7891207))

(assert (= (and b!7891210 res!3131700) b!7891211))

(assert (= (and b!7891207 (not res!3131701)) b!7891213))

(assert (= (and b!7891213 res!3131699) b!7891208))

(assert (= (or b!7891211 b!7891213) bm!732365))

(assert (= (or b!7891210 b!7891208) bm!732367))

(assert (= (or b!7891209 bm!732365) bm!732366))

(declare-fun m!8270722 () Bool)

(assert (=> bm!732366 m!8270722))

(declare-fun m!8270724 () Bool)

(assert (=> b!7891206 m!8270724))

(declare-fun m!8270726 () Bool)

(assert (=> bm!732367 m!8270726))

(assert (=> start!744546 d!2356965))

(declare-fun d!2356969 () Bool)

(declare-fun lt!2681560 () Int)

(assert (=> d!2356969 (>= lt!2681560 0)))

(declare-fun e!4658529 () Int)

(assert (=> d!2356969 (= lt!2681560 e!4658529)))

(declare-fun c!1448696 () Bool)

(assert (=> d!2356969 (= c!1448696 ((_ is Nil!73946) (_1!38335 cut!3)))))

(assert (=> d!2356969 (= (size!42854 (_1!38335 cut!3)) lt!2681560)))

(declare-fun b!7891221 () Bool)

(assert (=> b!7891221 (= e!4658529 0)))

(declare-fun b!7891222 () Bool)

(assert (=> b!7891222 (= e!4658529 (+ 1 (size!42854 (t!388805 (_1!38335 cut!3)))))))

(assert (= (and d!2356969 c!1448696) b!7891221))

(assert (= (and d!2356969 (not c!1448696)) b!7891222))

(declare-fun m!8270730 () Bool)

(assert (=> b!7891222 m!8270730))

(assert (=> b!7891142 d!2356969))

(declare-fun b!7891327 () Bool)

(declare-fun e!4658592 () Bool)

(declare-fun lt!2681568 () Int)

(declare-fun call!732417 () Int)

(assert (=> b!7891327 (= e!4658592 (> lt!2681568 call!732417))))

(declare-fun b!7891328 () Bool)

(declare-fun e!4658598 () Int)

(declare-fun e!4658593 () Int)

(assert (=> b!7891328 (= e!4658598 e!4658593)))

(declare-fun c!1448742 () Bool)

(assert (=> b!7891328 (= c!1448742 ((_ is Star!21213) (regOne!42938 r!14100)))))

(declare-fun b!7891329 () Bool)

(declare-fun call!732415 () Int)

(assert (=> b!7891329 (= e!4658593 (+ 1 call!732415))))

(declare-fun b!7891330 () Bool)

(declare-fun e!4658599 () Bool)

(declare-fun call!732421 () Int)

(assert (=> b!7891330 (= e!4658599 (> lt!2681568 call!732421))))

(declare-fun d!2356973 () Bool)

(declare-fun e!4658597 () Bool)

(assert (=> d!2356973 e!4658597))

(declare-fun res!3131722 () Bool)

(assert (=> d!2356973 (=> (not res!3131722) (not e!4658597))))

(assert (=> d!2356973 (= res!3131722 (> lt!2681568 0))))

(assert (=> d!2356973 (= lt!2681568 e!4658598)))

(declare-fun c!1448745 () Bool)

(assert (=> d!2356973 (= c!1448745 ((_ is ElementMatch!21213) (regOne!42938 r!14100)))))

(assert (=> d!2356973 (= (regexDepth!517 (regOne!42938 r!14100)) lt!2681568)))

(declare-fun b!7891331 () Bool)

(declare-fun e!4658595 () Bool)

(assert (=> b!7891331 (= e!4658595 e!4658592)))

(declare-fun res!3131723 () Bool)

(declare-fun call!732419 () Int)

(assert (=> b!7891331 (= res!3131723 (> lt!2681568 call!732419))))

(assert (=> b!7891331 (=> (not res!3131723) (not e!4658592))))

(declare-fun b!7891332 () Bool)

(declare-fun e!4658594 () Int)

(declare-fun call!732416 () Int)

(assert (=> b!7891332 (= e!4658594 (+ 1 call!732416))))

(declare-fun b!7891333 () Bool)

(assert (=> b!7891333 (= e!4658599 (= lt!2681568 1))))

(declare-fun call!732418 () Int)

(declare-fun bm!732410 () Bool)

(declare-fun call!732420 () Int)

(declare-fun c!1448746 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!732410 (= call!732416 (maxBigInt!0 (ite c!1448746 call!732420 call!732418) (ite c!1448746 call!732418 call!732420)))))

(declare-fun bm!732411 () Bool)

(declare-fun c!1448743 () Bool)

(declare-fun c!1448744 () Bool)

(assert (=> bm!732411 (= call!732419 (regexDepth!517 (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))))))

(declare-fun b!7891334 () Bool)

(assert (=> b!7891334 (= e!4658598 1)))

(declare-fun bm!732412 () Bool)

(assert (=> bm!732412 (= call!732418 call!732415)))

(declare-fun bm!732413 () Bool)

(assert (=> bm!732413 (= call!732421 call!732419)))

(declare-fun bm!732414 () Bool)

(assert (=> bm!732414 (= call!732415 (regexDepth!517 (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))))))

(declare-fun b!7891335 () Bool)

(assert (=> b!7891335 (= e!4658597 e!4658595)))

(assert (=> b!7891335 (= c!1448743 ((_ is Union!21213) (regOne!42938 r!14100)))))

(declare-fun bm!732415 () Bool)

(assert (=> bm!732415 (= call!732417 (regexDepth!517 (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))))))

(declare-fun b!7891336 () Bool)

(declare-fun res!3131721 () Bool)

(declare-fun e!4658596 () Bool)

(assert (=> b!7891336 (=> (not res!3131721) (not e!4658596))))

(assert (=> b!7891336 (= res!3131721 (> lt!2681568 call!732417))))

(declare-fun e!4658600 () Bool)

(assert (=> b!7891336 (= e!4658600 e!4658596)))

(declare-fun b!7891337 () Bool)

(assert (=> b!7891337 (= c!1448746 ((_ is Union!21213) (regOne!42938 r!14100)))))

(declare-fun e!4658591 () Int)

(assert (=> b!7891337 (= e!4658593 e!4658591)))

(declare-fun b!7891338 () Bool)

(assert (=> b!7891338 (= e!4658594 1)))

(declare-fun b!7891339 () Bool)

(assert (=> b!7891339 (= e!4658596 (> lt!2681568 call!732421))))

(declare-fun b!7891340 () Bool)

(assert (=> b!7891340 (= e!4658591 (+ 1 call!732416))))

(declare-fun b!7891341 () Bool)

(declare-fun c!1448741 () Bool)

(assert (=> b!7891341 (= c!1448741 ((_ is Star!21213) (regOne!42938 r!14100)))))

(assert (=> b!7891341 (= e!4658600 e!4658599)))

(declare-fun b!7891342 () Bool)

(assert (=> b!7891342 (= e!4658591 e!4658594)))

(declare-fun c!1448740 () Bool)

(assert (=> b!7891342 (= c!1448740 ((_ is Concat!30058) (regOne!42938 r!14100)))))

(declare-fun b!7891343 () Bool)

(assert (=> b!7891343 (= e!4658595 e!4658600)))

(assert (=> b!7891343 (= c!1448744 ((_ is Concat!30058) (regOne!42938 r!14100)))))

(declare-fun bm!732416 () Bool)

(assert (=> bm!732416 (= call!732420 (regexDepth!517 (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))))))

(assert (= (and d!2356973 c!1448745) b!7891334))

(assert (= (and d!2356973 (not c!1448745)) b!7891328))

(assert (= (and b!7891328 c!1448742) b!7891329))

(assert (= (and b!7891328 (not c!1448742)) b!7891337))

(assert (= (and b!7891337 c!1448746) b!7891340))

(assert (= (and b!7891337 (not c!1448746)) b!7891342))

(assert (= (and b!7891342 c!1448740) b!7891332))

(assert (= (and b!7891342 (not c!1448740)) b!7891338))

(assert (= (or b!7891340 b!7891332) bm!732416))

(assert (= (or b!7891340 b!7891332) bm!732412))

(assert (= (or b!7891340 b!7891332) bm!732410))

(assert (= (or b!7891329 bm!732412) bm!732414))

(assert (= (and d!2356973 res!3131722) b!7891335))

(assert (= (and b!7891335 c!1448743) b!7891331))

(assert (= (and b!7891335 (not c!1448743)) b!7891343))

(assert (= (and b!7891331 res!3131723) b!7891327))

(assert (= (and b!7891343 c!1448744) b!7891336))

(assert (= (and b!7891343 (not c!1448744)) b!7891341))

(assert (= (and b!7891336 res!3131721) b!7891339))

(assert (= (and b!7891341 c!1448741) b!7891330))

(assert (= (and b!7891341 (not c!1448741)) b!7891333))

(assert (= (or b!7891339 b!7891330) bm!732413))

(assert (= (or b!7891331 bm!732413) bm!732411))

(assert (= (or b!7891327 b!7891336) bm!732415))

(declare-fun m!8270754 () Bool)

(assert (=> bm!732410 m!8270754))

(declare-fun m!8270756 () Bool)

(assert (=> bm!732415 m!8270756))

(declare-fun m!8270758 () Bool)

(assert (=> bm!732416 m!8270758))

(declare-fun m!8270760 () Bool)

(assert (=> bm!732414 m!8270760))

(declare-fun m!8270762 () Bool)

(assert (=> bm!732411 m!8270762))

(assert (=> b!7891142 d!2356973))

(declare-fun d!2356981 () Bool)

(declare-fun lt!2681569 () Int)

(assert (=> d!2356981 (>= lt!2681569 0)))

(declare-fun e!4658601 () Int)

(assert (=> d!2356981 (= lt!2681569 e!4658601)))

(declare-fun c!1448747 () Bool)

(assert (=> d!2356981 (= c!1448747 ((_ is Nil!73946) s!9586))))

(assert (=> d!2356981 (= (size!42854 s!9586) lt!2681569)))

(declare-fun b!7891344 () Bool)

(assert (=> b!7891344 (= e!4658601 0)))

(declare-fun b!7891345 () Bool)

(assert (=> b!7891345 (= e!4658601 (+ 1 (size!42854 (t!388805 s!9586))))))

(assert (= (and d!2356981 c!1448747) b!7891344))

(assert (= (and d!2356981 (not c!1448747)) b!7891345))

(declare-fun m!8270764 () Bool)

(assert (=> b!7891345 m!8270764))

(assert (=> b!7891142 d!2356981))

(declare-fun b!7891346 () Bool)

(declare-fun e!4658603 () Bool)

(declare-fun lt!2681570 () Int)

(declare-fun call!732424 () Int)

(assert (=> b!7891346 (= e!4658603 (> lt!2681570 call!732424))))

(declare-fun b!7891347 () Bool)

(declare-fun e!4658609 () Int)

(declare-fun e!4658604 () Int)

(assert (=> b!7891347 (= e!4658609 e!4658604)))

(declare-fun c!1448750 () Bool)

(assert (=> b!7891347 (= c!1448750 ((_ is Star!21213) r!14100))))

(declare-fun b!7891348 () Bool)

(declare-fun call!732422 () Int)

(assert (=> b!7891348 (= e!4658604 (+ 1 call!732422))))

(declare-fun b!7891349 () Bool)

(declare-fun e!4658610 () Bool)

(declare-fun call!732428 () Int)

(assert (=> b!7891349 (= e!4658610 (> lt!2681570 call!732428))))

(declare-fun d!2356983 () Bool)

(declare-fun e!4658608 () Bool)

(assert (=> d!2356983 e!4658608))

(declare-fun res!3131725 () Bool)

(assert (=> d!2356983 (=> (not res!3131725) (not e!4658608))))

(assert (=> d!2356983 (= res!3131725 (> lt!2681570 0))))

(assert (=> d!2356983 (= lt!2681570 e!4658609)))

(declare-fun c!1448753 () Bool)

(assert (=> d!2356983 (= c!1448753 ((_ is ElementMatch!21213) r!14100))))

(assert (=> d!2356983 (= (regexDepth!517 r!14100) lt!2681570)))

(declare-fun b!7891350 () Bool)

(declare-fun e!4658606 () Bool)

(assert (=> b!7891350 (= e!4658606 e!4658603)))

(declare-fun res!3131726 () Bool)

(declare-fun call!732426 () Int)

(assert (=> b!7891350 (= res!3131726 (> lt!2681570 call!732426))))

(assert (=> b!7891350 (=> (not res!3131726) (not e!4658603))))

(declare-fun b!7891351 () Bool)

(declare-fun e!4658605 () Int)

(declare-fun call!732423 () Int)

(assert (=> b!7891351 (= e!4658605 (+ 1 call!732423))))

(declare-fun b!7891352 () Bool)

(assert (=> b!7891352 (= e!4658610 (= lt!2681570 1))))

(declare-fun call!732427 () Int)

(declare-fun call!732425 () Int)

(declare-fun c!1448754 () Bool)

(declare-fun bm!732417 () Bool)

(assert (=> bm!732417 (= call!732423 (maxBigInt!0 (ite c!1448754 call!732427 call!732425) (ite c!1448754 call!732425 call!732427)))))

(declare-fun c!1448751 () Bool)

(declare-fun bm!732418 () Bool)

(declare-fun c!1448752 () Bool)

(assert (=> bm!732418 (= call!732426 (regexDepth!517 (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))))))

(declare-fun b!7891353 () Bool)

(assert (=> b!7891353 (= e!4658609 1)))

(declare-fun bm!732419 () Bool)

(assert (=> bm!732419 (= call!732425 call!732422)))

(declare-fun bm!732420 () Bool)

(assert (=> bm!732420 (= call!732428 call!732426)))

(declare-fun bm!732421 () Bool)

(assert (=> bm!732421 (= call!732422 (regexDepth!517 (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))

(declare-fun b!7891354 () Bool)

(assert (=> b!7891354 (= e!4658608 e!4658606)))

(assert (=> b!7891354 (= c!1448751 ((_ is Union!21213) r!14100))))

(declare-fun bm!732422 () Bool)

(assert (=> bm!732422 (= call!732424 (regexDepth!517 (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))

(declare-fun b!7891355 () Bool)

(declare-fun res!3131724 () Bool)

(declare-fun e!4658607 () Bool)

(assert (=> b!7891355 (=> (not res!3131724) (not e!4658607))))

(assert (=> b!7891355 (= res!3131724 (> lt!2681570 call!732424))))

(declare-fun e!4658611 () Bool)

(assert (=> b!7891355 (= e!4658611 e!4658607)))

(declare-fun b!7891356 () Bool)

(assert (=> b!7891356 (= c!1448754 ((_ is Union!21213) r!14100))))

(declare-fun e!4658602 () Int)

(assert (=> b!7891356 (= e!4658604 e!4658602)))

(declare-fun b!7891357 () Bool)

(assert (=> b!7891357 (= e!4658605 1)))

(declare-fun b!7891358 () Bool)

(assert (=> b!7891358 (= e!4658607 (> lt!2681570 call!732428))))

(declare-fun b!7891359 () Bool)

(assert (=> b!7891359 (= e!4658602 (+ 1 call!732423))))

(declare-fun b!7891360 () Bool)

(declare-fun c!1448749 () Bool)

(assert (=> b!7891360 (= c!1448749 ((_ is Star!21213) r!14100))))

(assert (=> b!7891360 (= e!4658611 e!4658610)))

(declare-fun b!7891361 () Bool)

(assert (=> b!7891361 (= e!4658602 e!4658605)))

(declare-fun c!1448748 () Bool)

(assert (=> b!7891361 (= c!1448748 ((_ is Concat!30058) r!14100))))

(declare-fun b!7891362 () Bool)

(assert (=> b!7891362 (= e!4658606 e!4658611)))

(assert (=> b!7891362 (= c!1448752 ((_ is Concat!30058) r!14100))))

(declare-fun bm!732423 () Bool)

(assert (=> bm!732423 (= call!732427 (regexDepth!517 (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))

(assert (= (and d!2356983 c!1448753) b!7891353))

(assert (= (and d!2356983 (not c!1448753)) b!7891347))

(assert (= (and b!7891347 c!1448750) b!7891348))

(assert (= (and b!7891347 (not c!1448750)) b!7891356))

(assert (= (and b!7891356 c!1448754) b!7891359))

(assert (= (and b!7891356 (not c!1448754)) b!7891361))

(assert (= (and b!7891361 c!1448748) b!7891351))

(assert (= (and b!7891361 (not c!1448748)) b!7891357))

(assert (= (or b!7891359 b!7891351) bm!732423))

(assert (= (or b!7891359 b!7891351) bm!732419))

(assert (= (or b!7891359 b!7891351) bm!732417))

(assert (= (or b!7891348 bm!732419) bm!732421))

(assert (= (and d!2356983 res!3131725) b!7891354))

(assert (= (and b!7891354 c!1448751) b!7891350))

(assert (= (and b!7891354 (not c!1448751)) b!7891362))

(assert (= (and b!7891350 res!3131726) b!7891346))

(assert (= (and b!7891362 c!1448752) b!7891355))

(assert (= (and b!7891362 (not c!1448752)) b!7891360))

(assert (= (and b!7891355 res!3131724) b!7891358))

(assert (= (and b!7891360 c!1448749) b!7891349))

(assert (= (and b!7891360 (not c!1448749)) b!7891352))

(assert (= (or b!7891358 b!7891349) bm!732420))

(assert (= (or b!7891350 bm!732420) bm!732418))

(assert (= (or b!7891346 b!7891355) bm!732422))

(declare-fun m!8270766 () Bool)

(assert (=> bm!732417 m!8270766))

(declare-fun m!8270768 () Bool)

(assert (=> bm!732422 m!8270768))

(declare-fun m!8270770 () Bool)

(assert (=> bm!732423 m!8270770))

(declare-fun m!8270772 () Bool)

(assert (=> bm!732421 m!8270772))

(declare-fun m!8270774 () Bool)

(assert (=> bm!732418 m!8270774))

(assert (=> b!7891142 d!2356983))

(declare-fun b!7891377 () Bool)

(declare-fun e!4658616 () Bool)

(assert (=> b!7891377 (= e!4658616 tp_is_empty!52825)))

(declare-fun b!7891380 () Bool)

(declare-fun tp!2348518 () Bool)

(declare-fun tp!2348521 () Bool)

(assert (=> b!7891380 (= e!4658616 (and tp!2348518 tp!2348521))))

(declare-fun b!7891379 () Bool)

(declare-fun tp!2348519 () Bool)

(assert (=> b!7891379 (= e!4658616 tp!2348519)))

(declare-fun b!7891378 () Bool)

(declare-fun tp!2348520 () Bool)

(declare-fun tp!2348517 () Bool)

(assert (=> b!7891378 (= e!4658616 (and tp!2348520 tp!2348517))))

(assert (=> b!7891138 (= tp!2348506 e!4658616)))

(assert (= (and b!7891138 ((_ is ElementMatch!21213) (regOne!42938 r!14100))) b!7891377))

(assert (= (and b!7891138 ((_ is Concat!30058) (regOne!42938 r!14100))) b!7891378))

(assert (= (and b!7891138 ((_ is Star!21213) (regOne!42938 r!14100))) b!7891379))

(assert (= (and b!7891138 ((_ is Union!21213) (regOne!42938 r!14100))) b!7891380))

(declare-fun b!7891385 () Bool)

(declare-fun e!4658619 () Bool)

(assert (=> b!7891385 (= e!4658619 tp_is_empty!52825)))

(declare-fun b!7891388 () Bool)

(declare-fun tp!2348523 () Bool)

(declare-fun tp!2348526 () Bool)

(assert (=> b!7891388 (= e!4658619 (and tp!2348523 tp!2348526))))

(declare-fun b!7891387 () Bool)

(declare-fun tp!2348524 () Bool)

(assert (=> b!7891387 (= e!4658619 tp!2348524)))

(declare-fun b!7891386 () Bool)

(declare-fun tp!2348525 () Bool)

(declare-fun tp!2348522 () Bool)

(assert (=> b!7891386 (= e!4658619 (and tp!2348525 tp!2348522))))

(assert (=> b!7891138 (= tp!2348502 e!4658619)))

(assert (= (and b!7891138 ((_ is ElementMatch!21213) (regTwo!42938 r!14100))) b!7891385))

(assert (= (and b!7891138 ((_ is Concat!30058) (regTwo!42938 r!14100))) b!7891386))

(assert (= (and b!7891138 ((_ is Star!21213) (regTwo!42938 r!14100))) b!7891387))

(assert (= (and b!7891138 ((_ is Union!21213) (regTwo!42938 r!14100))) b!7891388))

(declare-fun b!7891389 () Bool)

(declare-fun e!4658620 () Bool)

(assert (=> b!7891389 (= e!4658620 tp_is_empty!52825)))

(declare-fun b!7891392 () Bool)

(declare-fun tp!2348528 () Bool)

(declare-fun tp!2348531 () Bool)

(assert (=> b!7891392 (= e!4658620 (and tp!2348528 tp!2348531))))

(declare-fun b!7891391 () Bool)

(declare-fun tp!2348529 () Bool)

(assert (=> b!7891391 (= e!4658620 tp!2348529)))

(declare-fun b!7891390 () Bool)

(declare-fun tp!2348530 () Bool)

(declare-fun tp!2348527 () Bool)

(assert (=> b!7891390 (= e!4658620 (and tp!2348530 tp!2348527))))

(assert (=> b!7891137 (= tp!2348500 e!4658620)))

(assert (= (and b!7891137 ((_ is ElementMatch!21213) (reg!21542 r!14100))) b!7891389))

(assert (= (and b!7891137 ((_ is Concat!30058) (reg!21542 r!14100))) b!7891390))

(assert (= (and b!7891137 ((_ is Star!21213) (reg!21542 r!14100))) b!7891391))

(assert (= (and b!7891137 ((_ is Union!21213) (reg!21542 r!14100))) b!7891392))

(declare-fun b!7891397 () Bool)

(declare-fun e!4658623 () Bool)

(declare-fun tp!2348534 () Bool)

(assert (=> b!7891397 (= e!4658623 (and tp_is_empty!52825 tp!2348534))))

(assert (=> b!7891136 (= tp!2348504 e!4658623)))

(assert (= (and b!7891136 ((_ is Cons!73946) (t!388805 s!9586))) b!7891397))

(declare-fun b!7891398 () Bool)

(declare-fun e!4658624 () Bool)

(declare-fun tp!2348535 () Bool)

(assert (=> b!7891398 (= e!4658624 (and tp_is_empty!52825 tp!2348535))))

(assert (=> b!7891141 (= tp!2348501 e!4658624)))

(assert (= (and b!7891141 ((_ is Cons!73946) (t!388805 (_1!38335 cut!3)))) b!7891398))

(declare-fun b!7891399 () Bool)

(declare-fun e!4658625 () Bool)

(assert (=> b!7891399 (= e!4658625 tp_is_empty!52825)))

(declare-fun b!7891402 () Bool)

(declare-fun tp!2348537 () Bool)

(declare-fun tp!2348540 () Bool)

(assert (=> b!7891402 (= e!4658625 (and tp!2348537 tp!2348540))))

(declare-fun b!7891401 () Bool)

(declare-fun tp!2348538 () Bool)

(assert (=> b!7891401 (= e!4658625 tp!2348538)))

(declare-fun b!7891400 () Bool)

(declare-fun tp!2348539 () Bool)

(declare-fun tp!2348536 () Bool)

(assert (=> b!7891400 (= e!4658625 (and tp!2348539 tp!2348536))))

(assert (=> b!7891135 (= tp!2348503 e!4658625)))

(assert (= (and b!7891135 ((_ is ElementMatch!21213) (regOne!42939 r!14100))) b!7891399))

(assert (= (and b!7891135 ((_ is Concat!30058) (regOne!42939 r!14100))) b!7891400))

(assert (= (and b!7891135 ((_ is Star!21213) (regOne!42939 r!14100))) b!7891401))

(assert (= (and b!7891135 ((_ is Union!21213) (regOne!42939 r!14100))) b!7891402))

(declare-fun b!7891403 () Bool)

(declare-fun e!4658626 () Bool)

(assert (=> b!7891403 (= e!4658626 tp_is_empty!52825)))

(declare-fun b!7891406 () Bool)

(declare-fun tp!2348542 () Bool)

(declare-fun tp!2348545 () Bool)

(assert (=> b!7891406 (= e!4658626 (and tp!2348542 tp!2348545))))

(declare-fun b!7891405 () Bool)

(declare-fun tp!2348543 () Bool)

(assert (=> b!7891405 (= e!4658626 tp!2348543)))

(declare-fun b!7891404 () Bool)

(declare-fun tp!2348544 () Bool)

(declare-fun tp!2348541 () Bool)

(assert (=> b!7891404 (= e!4658626 (and tp!2348544 tp!2348541))))

(assert (=> b!7891135 (= tp!2348499 e!4658626)))

(assert (= (and b!7891135 ((_ is ElementMatch!21213) (regTwo!42939 r!14100))) b!7891403))

(assert (= (and b!7891135 ((_ is Concat!30058) (regTwo!42939 r!14100))) b!7891404))

(assert (= (and b!7891135 ((_ is Star!21213) (regTwo!42939 r!14100))) b!7891405))

(assert (= (and b!7891135 ((_ is Union!21213) (regTwo!42939 r!14100))) b!7891406))

(declare-fun b!7891407 () Bool)

(declare-fun e!4658627 () Bool)

(declare-fun tp!2348546 () Bool)

(assert (=> b!7891407 (= e!4658627 (and tp_is_empty!52825 tp!2348546))))

(assert (=> b!7891140 (= tp!2348505 e!4658627)))

(assert (= (and b!7891140 ((_ is Cons!73946) (t!388805 (_2!38335 cut!3)))) b!7891407))

(check-sat (not b!7891379) (not bm!732416) (not b!7891388) (not bm!732415) (not bm!732423) (not bm!732366) (not bm!732410) (not b!7891405) (not b!7891392) (not b!7891401) (not bm!732418) (not bm!732367) (not b!7891206) (not b!7891402) (not d!2356961) (not b!7891400) (not b!7891387) (not b!7891378) (not b!7891386) (not b!7891155) (not bm!732414) (not b!7891391) (not b!7891222) (not bm!732411) (not b!7891380) (not b!7891390) (not b!7891154) tp_is_empty!52825 (not b!7891398) (not b!7891397) (not b!7891407) (not b!7891406) (not bm!732417) (not b!7891404) (not bm!732422) (not b!7891345) (not bm!732421))
(check-sat)
(get-model)

(declare-fun b!7891449 () Bool)

(declare-fun e!4658643 () Bool)

(declare-fun lt!2681574 () Int)

(declare-fun call!732431 () Int)

(assert (=> b!7891449 (= e!4658643 (> lt!2681574 call!732431))))

(declare-fun b!7891450 () Bool)

(declare-fun e!4658649 () Int)

(declare-fun e!4658644 () Int)

(assert (=> b!7891450 (= e!4658649 e!4658644)))

(declare-fun c!1448760 () Bool)

(assert (=> b!7891450 (= c!1448760 ((_ is Star!21213) (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))))))

(declare-fun b!7891451 () Bool)

(declare-fun call!732429 () Int)

(assert (=> b!7891451 (= e!4658644 (+ 1 call!732429))))

(declare-fun b!7891452 () Bool)

(declare-fun e!4658650 () Bool)

(declare-fun call!732435 () Int)

(assert (=> b!7891452 (= e!4658650 (> lt!2681574 call!732435))))

(declare-fun d!2356985 () Bool)

(declare-fun e!4658648 () Bool)

(assert (=> d!2356985 e!4658648))

(declare-fun res!3131734 () Bool)

(assert (=> d!2356985 (=> (not res!3131734) (not e!4658648))))

(assert (=> d!2356985 (= res!3131734 (> lt!2681574 0))))

(assert (=> d!2356985 (= lt!2681574 e!4658649)))

(declare-fun c!1448763 () Bool)

(assert (=> d!2356985 (= c!1448763 ((_ is ElementMatch!21213) (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))))))

(assert (=> d!2356985 (= (regexDepth!517 (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))) lt!2681574)))

(declare-fun b!7891453 () Bool)

(declare-fun e!4658646 () Bool)

(assert (=> b!7891453 (= e!4658646 e!4658643)))

(declare-fun res!3131735 () Bool)

(declare-fun call!732433 () Int)

(assert (=> b!7891453 (= res!3131735 (> lt!2681574 call!732433))))

(assert (=> b!7891453 (=> (not res!3131735) (not e!4658643))))

(declare-fun b!7891454 () Bool)

(declare-fun e!4658645 () Int)

(declare-fun call!732430 () Int)

(assert (=> b!7891454 (= e!4658645 (+ 1 call!732430))))

(declare-fun b!7891455 () Bool)

(assert (=> b!7891455 (= e!4658650 (= lt!2681574 1))))

(declare-fun bm!732424 () Bool)

(declare-fun call!732434 () Int)

(declare-fun call!732432 () Int)

(declare-fun c!1448764 () Bool)

(assert (=> bm!732424 (= call!732430 (maxBigInt!0 (ite c!1448764 call!732434 call!732432) (ite c!1448764 call!732432 call!732434)))))

(declare-fun c!1448761 () Bool)

(declare-fun bm!732425 () Bool)

(declare-fun c!1448762 () Bool)

(assert (=> bm!732425 (= call!732433 (regexDepth!517 (ite c!1448761 (regOne!42939 (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))) (ite c!1448762 (regTwo!42938 (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))) (reg!21542 (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))))))))

(declare-fun b!7891456 () Bool)

(assert (=> b!7891456 (= e!4658649 1)))

(declare-fun bm!732426 () Bool)

(assert (=> bm!732426 (= call!732432 call!732429)))

(declare-fun bm!732427 () Bool)

(assert (=> bm!732427 (= call!732435 call!732433)))

(declare-fun bm!732428 () Bool)

(assert (=> bm!732428 (= call!732429 (regexDepth!517 (ite c!1448760 (reg!21542 (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))) (ite c!1448764 (regTwo!42939 (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))) (regOne!42938 (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))))))))

(declare-fun b!7891457 () Bool)

(assert (=> b!7891457 (= e!4658648 e!4658646)))

(assert (=> b!7891457 (= c!1448761 ((_ is Union!21213) (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))))))

(declare-fun bm!732429 () Bool)

(assert (=> bm!732429 (= call!732431 (regexDepth!517 (ite c!1448761 (regTwo!42939 (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))) (regOne!42938 (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))))))))

(declare-fun b!7891458 () Bool)

(declare-fun res!3131733 () Bool)

(declare-fun e!4658647 () Bool)

(assert (=> b!7891458 (=> (not res!3131733) (not e!4658647))))

(assert (=> b!7891458 (= res!3131733 (> lt!2681574 call!732431))))

(declare-fun e!4658651 () Bool)

(assert (=> b!7891458 (= e!4658651 e!4658647)))

(declare-fun b!7891459 () Bool)

(assert (=> b!7891459 (= c!1448764 ((_ is Union!21213) (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))))))

(declare-fun e!4658642 () Int)

(assert (=> b!7891459 (= e!4658644 e!4658642)))

(declare-fun b!7891460 () Bool)

(assert (=> b!7891460 (= e!4658645 1)))

(declare-fun b!7891461 () Bool)

(assert (=> b!7891461 (= e!4658647 (> lt!2681574 call!732435))))

(declare-fun b!7891462 () Bool)

(assert (=> b!7891462 (= e!4658642 (+ 1 call!732430))))

(declare-fun b!7891463 () Bool)

(declare-fun c!1448759 () Bool)

(assert (=> b!7891463 (= c!1448759 ((_ is Star!21213) (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))))))

(assert (=> b!7891463 (= e!4658651 e!4658650)))

(declare-fun b!7891464 () Bool)

(assert (=> b!7891464 (= e!4658642 e!4658645)))

(declare-fun c!1448758 () Bool)

(assert (=> b!7891464 (= c!1448758 ((_ is Concat!30058) (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))))))

(declare-fun b!7891465 () Bool)

(assert (=> b!7891465 (= e!4658646 e!4658651)))

(assert (=> b!7891465 (= c!1448762 ((_ is Concat!30058) (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))))))

(declare-fun bm!732430 () Bool)

(assert (=> bm!732430 (= call!732434 (regexDepth!517 (ite c!1448764 (regOne!42939 (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))) (regTwo!42938 (ite c!1448743 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))))))))

(assert (= (and d!2356985 c!1448763) b!7891456))

(assert (= (and d!2356985 (not c!1448763)) b!7891450))

(assert (= (and b!7891450 c!1448760) b!7891451))

(assert (= (and b!7891450 (not c!1448760)) b!7891459))

(assert (= (and b!7891459 c!1448764) b!7891462))

(assert (= (and b!7891459 (not c!1448764)) b!7891464))

(assert (= (and b!7891464 c!1448758) b!7891454))

(assert (= (and b!7891464 (not c!1448758)) b!7891460))

(assert (= (or b!7891462 b!7891454) bm!732430))

(assert (= (or b!7891462 b!7891454) bm!732426))

(assert (= (or b!7891462 b!7891454) bm!732424))

(assert (= (or b!7891451 bm!732426) bm!732428))

(assert (= (and d!2356985 res!3131734) b!7891457))

(assert (= (and b!7891457 c!1448761) b!7891453))

(assert (= (and b!7891457 (not c!1448761)) b!7891465))

(assert (= (and b!7891453 res!3131735) b!7891449))

(assert (= (and b!7891465 c!1448762) b!7891458))

(assert (= (and b!7891465 (not c!1448762)) b!7891463))

(assert (= (and b!7891458 res!3131733) b!7891461))

(assert (= (and b!7891463 c!1448759) b!7891452))

(assert (= (and b!7891463 (not c!1448759)) b!7891455))

(assert (= (or b!7891461 b!7891452) bm!732427))

(assert (= (or b!7891453 bm!732427) bm!732425))

(assert (= (or b!7891449 b!7891458) bm!732429))

(declare-fun m!8270788 () Bool)

(assert (=> bm!732424 m!8270788))

(declare-fun m!8270790 () Bool)

(assert (=> bm!732429 m!8270790))

(declare-fun m!8270792 () Bool)

(assert (=> bm!732430 m!8270792))

(declare-fun m!8270794 () Bool)

(assert (=> bm!732428 m!8270794))

(declare-fun m!8270796 () Bool)

(assert (=> bm!732425 m!8270796))

(assert (=> bm!732415 d!2356985))

(declare-fun d!2356987 () Bool)

(declare-fun c!1448767 () Bool)

(assert (=> d!2356987 (= c!1448767 ((_ is Nil!73946) lt!2681554))))

(declare-fun e!4658654 () (InoxSet C!42752))

(assert (=> d!2356987 (= (content!15696 lt!2681554) e!4658654)))

(declare-fun b!7891470 () Bool)

(assert (=> b!7891470 (= e!4658654 ((as const (Array C!42752 Bool)) false))))

(declare-fun b!7891471 () Bool)

(assert (=> b!7891471 (= e!4658654 ((_ map or) (store ((as const (Array C!42752 Bool)) false) (h!80394 lt!2681554) true) (content!15696 (t!388805 lt!2681554))))))

(assert (= (and d!2356987 c!1448767) b!7891470))

(assert (= (and d!2356987 (not c!1448767)) b!7891471))

(declare-fun m!8270798 () Bool)

(assert (=> b!7891471 m!8270798))

(declare-fun m!8270800 () Bool)

(assert (=> b!7891471 m!8270800))

(assert (=> d!2356961 d!2356987))

(declare-fun d!2356989 () Bool)

(declare-fun c!1448768 () Bool)

(assert (=> d!2356989 (= c!1448768 ((_ is Nil!73946) (_1!38335 cut!3)))))

(declare-fun e!4658655 () (InoxSet C!42752))

(assert (=> d!2356989 (= (content!15696 (_1!38335 cut!3)) e!4658655)))

(declare-fun b!7891472 () Bool)

(assert (=> b!7891472 (= e!4658655 ((as const (Array C!42752 Bool)) false))))

(declare-fun b!7891473 () Bool)

(assert (=> b!7891473 (= e!4658655 ((_ map or) (store ((as const (Array C!42752 Bool)) false) (h!80394 (_1!38335 cut!3)) true) (content!15696 (t!388805 (_1!38335 cut!3)))))))

(assert (= (and d!2356989 c!1448768) b!7891472))

(assert (= (and d!2356989 (not c!1448768)) b!7891473))

(declare-fun m!8270802 () Bool)

(assert (=> b!7891473 m!8270802))

(declare-fun m!8270804 () Bool)

(assert (=> b!7891473 m!8270804))

(assert (=> d!2356961 d!2356989))

(declare-fun d!2356991 () Bool)

(declare-fun c!1448769 () Bool)

(assert (=> d!2356991 (= c!1448769 ((_ is Nil!73946) (_2!38335 cut!3)))))

(declare-fun e!4658656 () (InoxSet C!42752))

(assert (=> d!2356991 (= (content!15696 (_2!38335 cut!3)) e!4658656)))

(declare-fun b!7891474 () Bool)

(assert (=> b!7891474 (= e!4658656 ((as const (Array C!42752 Bool)) false))))

(declare-fun b!7891475 () Bool)

(assert (=> b!7891475 (= e!4658656 ((_ map or) (store ((as const (Array C!42752 Bool)) false) (h!80394 (_2!38335 cut!3)) true) (content!15696 (t!388805 (_2!38335 cut!3)))))))

(assert (= (and d!2356991 c!1448769) b!7891474))

(assert (= (and d!2356991 (not c!1448769)) b!7891475))

(declare-fun m!8270806 () Bool)

(assert (=> b!7891475 m!8270806))

(declare-fun m!8270808 () Bool)

(assert (=> b!7891475 m!8270808))

(assert (=> d!2356961 d!2356991))

(declare-fun b!7891476 () Bool)

(declare-fun e!4658658 () Bool)

(declare-fun lt!2681575 () Int)

(declare-fun call!732438 () Int)

(assert (=> b!7891476 (= e!4658658 (> lt!2681575 call!732438))))

(declare-fun b!7891477 () Bool)

(declare-fun e!4658664 () Int)

(declare-fun e!4658659 () Int)

(assert (=> b!7891477 (= e!4658664 e!4658659)))

(declare-fun c!1448772 () Bool)

(assert (=> b!7891477 (= c!1448772 ((_ is Star!21213) (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))

(declare-fun b!7891478 () Bool)

(declare-fun call!732436 () Int)

(assert (=> b!7891478 (= e!4658659 (+ 1 call!732436))))

(declare-fun b!7891479 () Bool)

(declare-fun e!4658665 () Bool)

(declare-fun call!732442 () Int)

(assert (=> b!7891479 (= e!4658665 (> lt!2681575 call!732442))))

(declare-fun d!2356993 () Bool)

(declare-fun e!4658663 () Bool)

(assert (=> d!2356993 e!4658663))

(declare-fun res!3131737 () Bool)

(assert (=> d!2356993 (=> (not res!3131737) (not e!4658663))))

(assert (=> d!2356993 (= res!3131737 (> lt!2681575 0))))

(assert (=> d!2356993 (= lt!2681575 e!4658664)))

(declare-fun c!1448775 () Bool)

(assert (=> d!2356993 (= c!1448775 ((_ is ElementMatch!21213) (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))

(assert (=> d!2356993 (= (regexDepth!517 (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))) lt!2681575)))

(declare-fun b!7891480 () Bool)

(declare-fun e!4658661 () Bool)

(assert (=> b!7891480 (= e!4658661 e!4658658)))

(declare-fun res!3131738 () Bool)

(declare-fun call!732440 () Int)

(assert (=> b!7891480 (= res!3131738 (> lt!2681575 call!732440))))

(assert (=> b!7891480 (=> (not res!3131738) (not e!4658658))))

(declare-fun b!7891481 () Bool)

(declare-fun e!4658660 () Int)

(declare-fun call!732437 () Int)

(assert (=> b!7891481 (= e!4658660 (+ 1 call!732437))))

(declare-fun b!7891482 () Bool)

(assert (=> b!7891482 (= e!4658665 (= lt!2681575 1))))

(declare-fun call!732439 () Int)

(declare-fun call!732441 () Int)

(declare-fun bm!732431 () Bool)

(declare-fun c!1448776 () Bool)

(assert (=> bm!732431 (= call!732437 (maxBigInt!0 (ite c!1448776 call!732441 call!732439) (ite c!1448776 call!732439 call!732441)))))

(declare-fun c!1448774 () Bool)

(declare-fun c!1448773 () Bool)

(declare-fun bm!732432 () Bool)

(assert (=> bm!732432 (= call!732440 (regexDepth!517 (ite c!1448773 (regOne!42939 (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))) (ite c!1448774 (regTwo!42938 (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))) (reg!21542 (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))))

(declare-fun b!7891483 () Bool)

(assert (=> b!7891483 (= e!4658664 1)))

(declare-fun bm!732433 () Bool)

(assert (=> bm!732433 (= call!732439 call!732436)))

(declare-fun bm!732434 () Bool)

(assert (=> bm!732434 (= call!732442 call!732440)))

(declare-fun bm!732435 () Bool)

(assert (=> bm!732435 (= call!732436 (regexDepth!517 (ite c!1448772 (reg!21542 (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))) (ite c!1448776 (regTwo!42939 (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))) (regOne!42938 (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))))

(declare-fun b!7891484 () Bool)

(assert (=> b!7891484 (= e!4658663 e!4658661)))

(assert (=> b!7891484 (= c!1448773 ((_ is Union!21213) (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))

(declare-fun bm!732436 () Bool)

(assert (=> bm!732436 (= call!732438 (regexDepth!517 (ite c!1448773 (regTwo!42939 (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))) (regOne!42938 (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))))

(declare-fun b!7891485 () Bool)

(declare-fun res!3131736 () Bool)

(declare-fun e!4658662 () Bool)

(assert (=> b!7891485 (=> (not res!3131736) (not e!4658662))))

(assert (=> b!7891485 (= res!3131736 (> lt!2681575 call!732438))))

(declare-fun e!4658666 () Bool)

(assert (=> b!7891485 (= e!4658666 e!4658662)))

(declare-fun b!7891486 () Bool)

(assert (=> b!7891486 (= c!1448776 ((_ is Union!21213) (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))

(declare-fun e!4658657 () Int)

(assert (=> b!7891486 (= e!4658659 e!4658657)))

(declare-fun b!7891487 () Bool)

(assert (=> b!7891487 (= e!4658660 1)))

(declare-fun b!7891488 () Bool)

(assert (=> b!7891488 (= e!4658662 (> lt!2681575 call!732442))))

(declare-fun b!7891489 () Bool)

(assert (=> b!7891489 (= e!4658657 (+ 1 call!732437))))

(declare-fun b!7891490 () Bool)

(declare-fun c!1448771 () Bool)

(assert (=> b!7891490 (= c!1448771 ((_ is Star!21213) (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))

(assert (=> b!7891490 (= e!4658666 e!4658665)))

(declare-fun b!7891491 () Bool)

(assert (=> b!7891491 (= e!4658657 e!4658660)))

(declare-fun c!1448770 () Bool)

(assert (=> b!7891491 (= c!1448770 ((_ is Concat!30058) (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))

(declare-fun b!7891492 () Bool)

(assert (=> b!7891492 (= e!4658661 e!4658666)))

(assert (=> b!7891492 (= c!1448774 ((_ is Concat!30058) (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))

(declare-fun bm!732437 () Bool)

(assert (=> bm!732437 (= call!732441 (regexDepth!517 (ite c!1448776 (regOne!42939 (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))) (regTwo!42938 (ite c!1448751 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))))

(assert (= (and d!2356993 c!1448775) b!7891483))

(assert (= (and d!2356993 (not c!1448775)) b!7891477))

(assert (= (and b!7891477 c!1448772) b!7891478))

(assert (= (and b!7891477 (not c!1448772)) b!7891486))

(assert (= (and b!7891486 c!1448776) b!7891489))

(assert (= (and b!7891486 (not c!1448776)) b!7891491))

(assert (= (and b!7891491 c!1448770) b!7891481))

(assert (= (and b!7891491 (not c!1448770)) b!7891487))

(assert (= (or b!7891489 b!7891481) bm!732437))

(assert (= (or b!7891489 b!7891481) bm!732433))

(assert (= (or b!7891489 b!7891481) bm!732431))

(assert (= (or b!7891478 bm!732433) bm!732435))

(assert (= (and d!2356993 res!3131737) b!7891484))

(assert (= (and b!7891484 c!1448773) b!7891480))

(assert (= (and b!7891484 (not c!1448773)) b!7891492))

(assert (= (and b!7891480 res!3131738) b!7891476))

(assert (= (and b!7891492 c!1448774) b!7891485))

(assert (= (and b!7891492 (not c!1448774)) b!7891490))

(assert (= (and b!7891485 res!3131736) b!7891488))

(assert (= (and b!7891490 c!1448771) b!7891479))

(assert (= (and b!7891490 (not c!1448771)) b!7891482))

(assert (= (or b!7891488 b!7891479) bm!732434))

(assert (= (or b!7891480 bm!732434) bm!732432))

(assert (= (or b!7891476 b!7891485) bm!732436))

(declare-fun m!8270810 () Bool)

(assert (=> bm!732431 m!8270810))

(declare-fun m!8270812 () Bool)

(assert (=> bm!732436 m!8270812))

(declare-fun m!8270814 () Bool)

(assert (=> bm!732437 m!8270814))

(declare-fun m!8270816 () Bool)

(assert (=> bm!732435 m!8270816))

(declare-fun m!8270818 () Bool)

(assert (=> bm!732432 m!8270818))

(assert (=> bm!732422 d!2356993))

(declare-fun b!7891493 () Bool)

(declare-fun e!4658668 () Bool)

(declare-fun lt!2681576 () Int)

(declare-fun call!732445 () Int)

(assert (=> b!7891493 (= e!4658668 (> lt!2681576 call!732445))))

(declare-fun b!7891494 () Bool)

(declare-fun e!4658674 () Int)

(declare-fun e!4658669 () Int)

(assert (=> b!7891494 (= e!4658674 e!4658669)))

(declare-fun c!1448779 () Bool)

(assert (=> b!7891494 (= c!1448779 ((_ is Star!21213) (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))

(declare-fun b!7891495 () Bool)

(declare-fun call!732443 () Int)

(assert (=> b!7891495 (= e!4658669 (+ 1 call!732443))))

(declare-fun b!7891496 () Bool)

(declare-fun e!4658675 () Bool)

(declare-fun call!732449 () Int)

(assert (=> b!7891496 (= e!4658675 (> lt!2681576 call!732449))))

(declare-fun d!2356995 () Bool)

(declare-fun e!4658673 () Bool)

(assert (=> d!2356995 e!4658673))

(declare-fun res!3131740 () Bool)

(assert (=> d!2356995 (=> (not res!3131740) (not e!4658673))))

(assert (=> d!2356995 (= res!3131740 (> lt!2681576 0))))

(assert (=> d!2356995 (= lt!2681576 e!4658674)))

(declare-fun c!1448782 () Bool)

(assert (=> d!2356995 (= c!1448782 ((_ is ElementMatch!21213) (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))

(assert (=> d!2356995 (= (regexDepth!517 (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))) lt!2681576)))

(declare-fun b!7891497 () Bool)

(declare-fun e!4658671 () Bool)

(assert (=> b!7891497 (= e!4658671 e!4658668)))

(declare-fun res!3131741 () Bool)

(declare-fun call!732447 () Int)

(assert (=> b!7891497 (= res!3131741 (> lt!2681576 call!732447))))

(assert (=> b!7891497 (=> (not res!3131741) (not e!4658668))))

(declare-fun b!7891498 () Bool)

(declare-fun e!4658670 () Int)

(declare-fun call!732444 () Int)

(assert (=> b!7891498 (= e!4658670 (+ 1 call!732444))))

(declare-fun b!7891499 () Bool)

(assert (=> b!7891499 (= e!4658675 (= lt!2681576 1))))

(declare-fun call!732448 () Int)

(declare-fun bm!732438 () Bool)

(declare-fun call!732446 () Int)

(declare-fun c!1448783 () Bool)

(assert (=> bm!732438 (= call!732444 (maxBigInt!0 (ite c!1448783 call!732448 call!732446) (ite c!1448783 call!732446 call!732448)))))

(declare-fun c!1448780 () Bool)

(declare-fun bm!732439 () Bool)

(declare-fun c!1448781 () Bool)

(assert (=> bm!732439 (= call!732447 (regexDepth!517 (ite c!1448780 (regOne!42939 (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))) (ite c!1448781 (regTwo!42938 (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))) (reg!21542 (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100)))))))))

(declare-fun b!7891500 () Bool)

(assert (=> b!7891500 (= e!4658674 1)))

(declare-fun bm!732440 () Bool)

(assert (=> bm!732440 (= call!732446 call!732443)))

(declare-fun bm!732441 () Bool)

(assert (=> bm!732441 (= call!732449 call!732447)))

(declare-fun bm!732442 () Bool)

(assert (=> bm!732442 (= call!732443 (regexDepth!517 (ite c!1448779 (reg!21542 (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))) (ite c!1448783 (regTwo!42939 (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))) (regOne!42938 (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100)))))))))

(declare-fun b!7891501 () Bool)

(assert (=> b!7891501 (= e!4658673 e!4658671)))

(assert (=> b!7891501 (= c!1448780 ((_ is Union!21213) (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))

(declare-fun bm!732443 () Bool)

(assert (=> bm!732443 (= call!732445 (regexDepth!517 (ite c!1448780 (regTwo!42939 (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))) (regOne!42938 (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))))

(declare-fun b!7891502 () Bool)

(declare-fun res!3131739 () Bool)

(declare-fun e!4658672 () Bool)

(assert (=> b!7891502 (=> (not res!3131739) (not e!4658672))))

(assert (=> b!7891502 (= res!3131739 (> lt!2681576 call!732445))))

(declare-fun e!4658676 () Bool)

(assert (=> b!7891502 (= e!4658676 e!4658672)))

(declare-fun b!7891503 () Bool)

(assert (=> b!7891503 (= c!1448783 ((_ is Union!21213) (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))

(declare-fun e!4658667 () Int)

(assert (=> b!7891503 (= e!4658669 e!4658667)))

(declare-fun b!7891504 () Bool)

(assert (=> b!7891504 (= e!4658670 1)))

(declare-fun b!7891505 () Bool)

(assert (=> b!7891505 (= e!4658672 (> lt!2681576 call!732449))))

(declare-fun b!7891506 () Bool)

(assert (=> b!7891506 (= e!4658667 (+ 1 call!732444))))

(declare-fun b!7891507 () Bool)

(declare-fun c!1448778 () Bool)

(assert (=> b!7891507 (= c!1448778 ((_ is Star!21213) (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))

(assert (=> b!7891507 (= e!4658676 e!4658675)))

(declare-fun b!7891508 () Bool)

(assert (=> b!7891508 (= e!4658667 e!4658670)))

(declare-fun c!1448777 () Bool)

(assert (=> b!7891508 (= c!1448777 ((_ is Concat!30058) (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))

(declare-fun b!7891509 () Bool)

(assert (=> b!7891509 (= e!4658671 e!4658676)))

(assert (=> b!7891509 (= c!1448781 ((_ is Concat!30058) (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))

(declare-fun bm!732444 () Bool)

(assert (=> bm!732444 (= call!732448 (regexDepth!517 (ite c!1448783 (regOne!42939 (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))) (regTwo!42938 (ite c!1448754 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))))

(assert (= (and d!2356995 c!1448782) b!7891500))

(assert (= (and d!2356995 (not c!1448782)) b!7891494))

(assert (= (and b!7891494 c!1448779) b!7891495))

(assert (= (and b!7891494 (not c!1448779)) b!7891503))

(assert (= (and b!7891503 c!1448783) b!7891506))

(assert (= (and b!7891503 (not c!1448783)) b!7891508))

(assert (= (and b!7891508 c!1448777) b!7891498))

(assert (= (and b!7891508 (not c!1448777)) b!7891504))

(assert (= (or b!7891506 b!7891498) bm!732444))

(assert (= (or b!7891506 b!7891498) bm!732440))

(assert (= (or b!7891506 b!7891498) bm!732438))

(assert (= (or b!7891495 bm!732440) bm!732442))

(assert (= (and d!2356995 res!3131740) b!7891501))

(assert (= (and b!7891501 c!1448780) b!7891497))

(assert (= (and b!7891501 (not c!1448780)) b!7891509))

(assert (= (and b!7891497 res!3131741) b!7891493))

(assert (= (and b!7891509 c!1448781) b!7891502))

(assert (= (and b!7891509 (not c!1448781)) b!7891507))

(assert (= (and b!7891502 res!3131739) b!7891505))

(assert (= (and b!7891507 c!1448778) b!7891496))

(assert (= (and b!7891507 (not c!1448778)) b!7891499))

(assert (= (or b!7891505 b!7891496) bm!732441))

(assert (= (or b!7891497 bm!732441) bm!732439))

(assert (= (or b!7891493 b!7891502) bm!732443))

(declare-fun m!8270820 () Bool)

(assert (=> bm!732438 m!8270820))

(declare-fun m!8270822 () Bool)

(assert (=> bm!732443 m!8270822))

(declare-fun m!8270824 () Bool)

(assert (=> bm!732444 m!8270824))

(declare-fun m!8270826 () Bool)

(assert (=> bm!732442 m!8270826))

(declare-fun m!8270828 () Bool)

(assert (=> bm!732439 m!8270828))

(assert (=> bm!732423 d!2356995))

(declare-fun b!7891510 () Bool)

(declare-fun e!4658678 () Bool)

(declare-fun lt!2681577 () Int)

(declare-fun call!732452 () Int)

(assert (=> b!7891510 (= e!4658678 (> lt!2681577 call!732452))))

(declare-fun b!7891511 () Bool)

(declare-fun e!4658684 () Int)

(declare-fun e!4658679 () Int)

(assert (=> b!7891511 (= e!4658684 e!4658679)))

(declare-fun c!1448786 () Bool)

(assert (=> b!7891511 (= c!1448786 ((_ is Star!21213) (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))))))

(declare-fun b!7891512 () Bool)

(declare-fun call!732450 () Int)

(assert (=> b!7891512 (= e!4658679 (+ 1 call!732450))))

(declare-fun b!7891513 () Bool)

(declare-fun e!4658685 () Bool)

(declare-fun call!732456 () Int)

(assert (=> b!7891513 (= e!4658685 (> lt!2681577 call!732456))))

(declare-fun d!2356997 () Bool)

(declare-fun e!4658683 () Bool)

(assert (=> d!2356997 e!4658683))

(declare-fun res!3131743 () Bool)

(assert (=> d!2356997 (=> (not res!3131743) (not e!4658683))))

(assert (=> d!2356997 (= res!3131743 (> lt!2681577 0))))

(assert (=> d!2356997 (= lt!2681577 e!4658684)))

(declare-fun c!1448789 () Bool)

(assert (=> d!2356997 (= c!1448789 ((_ is ElementMatch!21213) (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))))))

(assert (=> d!2356997 (= (regexDepth!517 (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))) lt!2681577)))

(declare-fun b!7891514 () Bool)

(declare-fun e!4658681 () Bool)

(assert (=> b!7891514 (= e!4658681 e!4658678)))

(declare-fun res!3131744 () Bool)

(declare-fun call!732454 () Int)

(assert (=> b!7891514 (= res!3131744 (> lt!2681577 call!732454))))

(assert (=> b!7891514 (=> (not res!3131744) (not e!4658678))))

(declare-fun b!7891515 () Bool)

(declare-fun e!4658680 () Int)

(declare-fun call!732451 () Int)

(assert (=> b!7891515 (= e!4658680 (+ 1 call!732451))))

(declare-fun b!7891516 () Bool)

(assert (=> b!7891516 (= e!4658685 (= lt!2681577 1))))

(declare-fun call!732455 () Int)

(declare-fun c!1448790 () Bool)

(declare-fun call!732453 () Int)

(declare-fun bm!732445 () Bool)

(assert (=> bm!732445 (= call!732451 (maxBigInt!0 (ite c!1448790 call!732455 call!732453) (ite c!1448790 call!732453 call!732455)))))

(declare-fun c!1448787 () Bool)

(declare-fun bm!732446 () Bool)

(declare-fun c!1448788 () Bool)

(assert (=> bm!732446 (= call!732454 (regexDepth!517 (ite c!1448787 (regOne!42939 (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))) (ite c!1448788 (regTwo!42938 (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))) (reg!21542 (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))))))))))

(declare-fun b!7891517 () Bool)

(assert (=> b!7891517 (= e!4658684 1)))

(declare-fun bm!732447 () Bool)

(assert (=> bm!732447 (= call!732453 call!732450)))

(declare-fun bm!732448 () Bool)

(assert (=> bm!732448 (= call!732456 call!732454)))

(declare-fun bm!732449 () Bool)

(assert (=> bm!732449 (= call!732450 (regexDepth!517 (ite c!1448786 (reg!21542 (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))) (ite c!1448790 (regTwo!42939 (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))) (regOne!42938 (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100)))))))))))

(declare-fun b!7891518 () Bool)

(assert (=> b!7891518 (= e!4658683 e!4658681)))

(assert (=> b!7891518 (= c!1448787 ((_ is Union!21213) (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))))))

(declare-fun bm!732450 () Bool)

(assert (=> bm!732450 (= call!732452 (regexDepth!517 (ite c!1448787 (regTwo!42939 (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))) (regOne!42938 (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))))))))

(declare-fun b!7891519 () Bool)

(declare-fun res!3131742 () Bool)

(declare-fun e!4658682 () Bool)

(assert (=> b!7891519 (=> (not res!3131742) (not e!4658682))))

(assert (=> b!7891519 (= res!3131742 (> lt!2681577 call!732452))))

(declare-fun e!4658686 () Bool)

(assert (=> b!7891519 (= e!4658686 e!4658682)))

(declare-fun b!7891520 () Bool)

(assert (=> b!7891520 (= c!1448790 ((_ is Union!21213) (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))))))

(declare-fun e!4658677 () Int)

(assert (=> b!7891520 (= e!4658679 e!4658677)))

(declare-fun b!7891521 () Bool)

(assert (=> b!7891521 (= e!4658680 1)))

(declare-fun b!7891522 () Bool)

(assert (=> b!7891522 (= e!4658682 (> lt!2681577 call!732456))))

(declare-fun b!7891523 () Bool)

(assert (=> b!7891523 (= e!4658677 (+ 1 call!732451))))

(declare-fun c!1448785 () Bool)

(declare-fun b!7891524 () Bool)

(assert (=> b!7891524 (= c!1448785 ((_ is Star!21213) (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))))))

(assert (=> b!7891524 (= e!4658686 e!4658685)))

(declare-fun b!7891525 () Bool)

(assert (=> b!7891525 (= e!4658677 e!4658680)))

(declare-fun c!1448784 () Bool)

(assert (=> b!7891525 (= c!1448784 ((_ is Concat!30058) (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))))))

(declare-fun b!7891526 () Bool)

(assert (=> b!7891526 (= e!4658681 e!4658686)))

(assert (=> b!7891526 (= c!1448788 ((_ is Concat!30058) (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))))))

(declare-fun bm!732451 () Bool)

(assert (=> bm!732451 (= call!732455 (regexDepth!517 (ite c!1448790 (regOne!42939 (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))) (regTwo!42938 (ite c!1448742 (reg!21542 (regOne!42938 r!14100)) (ite c!1448746 (regTwo!42939 (regOne!42938 r!14100)) (regOne!42938 (regOne!42938 r!14100))))))))))

(assert (= (and d!2356997 c!1448789) b!7891517))

(assert (= (and d!2356997 (not c!1448789)) b!7891511))

(assert (= (and b!7891511 c!1448786) b!7891512))

(assert (= (and b!7891511 (not c!1448786)) b!7891520))

(assert (= (and b!7891520 c!1448790) b!7891523))

(assert (= (and b!7891520 (not c!1448790)) b!7891525))

(assert (= (and b!7891525 c!1448784) b!7891515))

(assert (= (and b!7891525 (not c!1448784)) b!7891521))

(assert (= (or b!7891523 b!7891515) bm!732451))

(assert (= (or b!7891523 b!7891515) bm!732447))

(assert (= (or b!7891523 b!7891515) bm!732445))

(assert (= (or b!7891512 bm!732447) bm!732449))

(assert (= (and d!2356997 res!3131743) b!7891518))

(assert (= (and b!7891518 c!1448787) b!7891514))

(assert (= (and b!7891518 (not c!1448787)) b!7891526))

(assert (= (and b!7891514 res!3131744) b!7891510))

(assert (= (and b!7891526 c!1448788) b!7891519))

(assert (= (and b!7891526 (not c!1448788)) b!7891524))

(assert (= (and b!7891519 res!3131742) b!7891522))

(assert (= (and b!7891524 c!1448785) b!7891513))

(assert (= (and b!7891524 (not c!1448785)) b!7891516))

(assert (= (or b!7891522 b!7891513) bm!732448))

(assert (= (or b!7891514 bm!732448) bm!732446))

(assert (= (or b!7891510 b!7891519) bm!732450))

(declare-fun m!8270830 () Bool)

(assert (=> bm!732445 m!8270830))

(declare-fun m!8270832 () Bool)

(assert (=> bm!732450 m!8270832))

(declare-fun m!8270834 () Bool)

(assert (=> bm!732451 m!8270834))

(declare-fun m!8270836 () Bool)

(assert (=> bm!732449 m!8270836))

(declare-fun m!8270838 () Bool)

(assert (=> bm!732446 m!8270838))

(assert (=> bm!732414 d!2356997))

(declare-fun d!2356999 () Bool)

(declare-fun lt!2681578 () Int)

(assert (=> d!2356999 (>= lt!2681578 0)))

(declare-fun e!4658687 () Int)

(assert (=> d!2356999 (= lt!2681578 e!4658687)))

(declare-fun c!1448791 () Bool)

(assert (=> d!2356999 (= c!1448791 ((_ is Nil!73946) (t!388805 (_1!38335 cut!3))))))

(assert (=> d!2356999 (= (size!42854 (t!388805 (_1!38335 cut!3))) lt!2681578)))

(declare-fun b!7891527 () Bool)

(assert (=> b!7891527 (= e!4658687 0)))

(declare-fun b!7891528 () Bool)

(assert (=> b!7891528 (= e!4658687 (+ 1 (size!42854 (t!388805 (t!388805 (_1!38335 cut!3))))))))

(assert (= (and d!2356999 c!1448791) b!7891527))

(assert (= (and d!2356999 (not c!1448791)) b!7891528))

(declare-fun m!8270840 () Bool)

(assert (=> b!7891528 m!8270840))

(assert (=> b!7891222 d!2356999))

(declare-fun b!7891529 () Bool)

(declare-fun e!4658689 () Bool)

(declare-fun lt!2681579 () Int)

(declare-fun call!732459 () Int)

(assert (=> b!7891529 (= e!4658689 (> lt!2681579 call!732459))))

(declare-fun b!7891530 () Bool)

(declare-fun e!4658695 () Int)

(declare-fun e!4658690 () Int)

(assert (=> b!7891530 (= e!4658695 e!4658690)))

(declare-fun c!1448794 () Bool)

(assert (=> b!7891530 (= c!1448794 ((_ is Star!21213) (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))))))

(declare-fun b!7891531 () Bool)

(declare-fun call!732457 () Int)

(assert (=> b!7891531 (= e!4658690 (+ 1 call!732457))))

(declare-fun b!7891532 () Bool)

(declare-fun e!4658696 () Bool)

(declare-fun call!732463 () Int)

(assert (=> b!7891532 (= e!4658696 (> lt!2681579 call!732463))))

(declare-fun d!2357001 () Bool)

(declare-fun e!4658694 () Bool)

(assert (=> d!2357001 e!4658694))

(declare-fun res!3131746 () Bool)

(assert (=> d!2357001 (=> (not res!3131746) (not e!4658694))))

(assert (=> d!2357001 (= res!3131746 (> lt!2681579 0))))

(assert (=> d!2357001 (= lt!2681579 e!4658695)))

(declare-fun c!1448797 () Bool)

(assert (=> d!2357001 (= c!1448797 ((_ is ElementMatch!21213) (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))))))

(assert (=> d!2357001 (= (regexDepth!517 (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))) lt!2681579)))

(declare-fun b!7891533 () Bool)

(declare-fun e!4658692 () Bool)

(assert (=> b!7891533 (= e!4658692 e!4658689)))

(declare-fun res!3131747 () Bool)

(declare-fun call!732461 () Int)

(assert (=> b!7891533 (= res!3131747 (> lt!2681579 call!732461))))

(assert (=> b!7891533 (=> (not res!3131747) (not e!4658689))))

(declare-fun b!7891534 () Bool)

(declare-fun e!4658691 () Int)

(declare-fun call!732458 () Int)

(assert (=> b!7891534 (= e!4658691 (+ 1 call!732458))))

(declare-fun b!7891535 () Bool)

(assert (=> b!7891535 (= e!4658696 (= lt!2681579 1))))

(declare-fun bm!732452 () Bool)

(declare-fun call!732462 () Int)

(declare-fun call!732460 () Int)

(declare-fun c!1448798 () Bool)

(assert (=> bm!732452 (= call!732458 (maxBigInt!0 (ite c!1448798 call!732462 call!732460) (ite c!1448798 call!732460 call!732462)))))

(declare-fun c!1448796 () Bool)

(declare-fun c!1448795 () Bool)

(declare-fun bm!732453 () Bool)

(assert (=> bm!732453 (= call!732461 (regexDepth!517 (ite c!1448795 (regOne!42939 (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))) (ite c!1448796 (regTwo!42938 (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))) (reg!21542 (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100))))))))))

(declare-fun b!7891536 () Bool)

(assert (=> b!7891536 (= e!4658695 1)))

(declare-fun bm!732454 () Bool)

(assert (=> bm!732454 (= call!732460 call!732457)))

(declare-fun bm!732455 () Bool)

(assert (=> bm!732455 (= call!732463 call!732461)))

(declare-fun bm!732456 () Bool)

(assert (=> bm!732456 (= call!732457 (regexDepth!517 (ite c!1448794 (reg!21542 (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))) (ite c!1448798 (regTwo!42939 (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))) (regOne!42938 (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100))))))))))

(declare-fun b!7891537 () Bool)

(assert (=> b!7891537 (= e!4658694 e!4658692)))

(assert (=> b!7891537 (= c!1448795 ((_ is Union!21213) (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))))))

(declare-fun bm!732457 () Bool)

(assert (=> bm!732457 (= call!732459 (regexDepth!517 (ite c!1448795 (regTwo!42939 (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))) (regOne!42938 (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))))))))

(declare-fun b!7891538 () Bool)

(declare-fun res!3131745 () Bool)

(declare-fun e!4658693 () Bool)

(assert (=> b!7891538 (=> (not res!3131745) (not e!4658693))))

(assert (=> b!7891538 (= res!3131745 (> lt!2681579 call!732459))))

(declare-fun e!4658697 () Bool)

(assert (=> b!7891538 (= e!4658697 e!4658693)))

(declare-fun b!7891539 () Bool)

(assert (=> b!7891539 (= c!1448798 ((_ is Union!21213) (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))))))

(declare-fun e!4658688 () Int)

(assert (=> b!7891539 (= e!4658690 e!4658688)))

(declare-fun b!7891540 () Bool)

(assert (=> b!7891540 (= e!4658691 1)))

(declare-fun b!7891541 () Bool)

(assert (=> b!7891541 (= e!4658693 (> lt!2681579 call!732463))))

(declare-fun b!7891542 () Bool)

(assert (=> b!7891542 (= e!4658688 (+ 1 call!732458))))

(declare-fun b!7891543 () Bool)

(declare-fun c!1448793 () Bool)

(assert (=> b!7891543 (= c!1448793 ((_ is Star!21213) (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))))))

(assert (=> b!7891543 (= e!4658697 e!4658696)))

(declare-fun b!7891544 () Bool)

(assert (=> b!7891544 (= e!4658688 e!4658691)))

(declare-fun c!1448792 () Bool)

(assert (=> b!7891544 (= c!1448792 ((_ is Concat!30058) (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))))))

(declare-fun b!7891545 () Bool)

(assert (=> b!7891545 (= e!4658692 e!4658697)))

(assert (=> b!7891545 (= c!1448796 ((_ is Concat!30058) (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))))))

(declare-fun bm!732458 () Bool)

(assert (=> bm!732458 (= call!732462 (regexDepth!517 (ite c!1448798 (regOne!42939 (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))) (regTwo!42938 (ite c!1448746 (regOne!42939 (regOne!42938 r!14100)) (regTwo!42938 (regOne!42938 r!14100)))))))))

(assert (= (and d!2357001 c!1448797) b!7891536))

(assert (= (and d!2357001 (not c!1448797)) b!7891530))

(assert (= (and b!7891530 c!1448794) b!7891531))

(assert (= (and b!7891530 (not c!1448794)) b!7891539))

(assert (= (and b!7891539 c!1448798) b!7891542))

(assert (= (and b!7891539 (not c!1448798)) b!7891544))

(assert (= (and b!7891544 c!1448792) b!7891534))

(assert (= (and b!7891544 (not c!1448792)) b!7891540))

(assert (= (or b!7891542 b!7891534) bm!732458))

(assert (= (or b!7891542 b!7891534) bm!732454))

(assert (= (or b!7891542 b!7891534) bm!732452))

(assert (= (or b!7891531 bm!732454) bm!732456))

(assert (= (and d!2357001 res!3131746) b!7891537))

(assert (= (and b!7891537 c!1448795) b!7891533))

(assert (= (and b!7891537 (not c!1448795)) b!7891545))

(assert (= (and b!7891533 res!3131747) b!7891529))

(assert (= (and b!7891545 c!1448796) b!7891538))

(assert (= (and b!7891545 (not c!1448796)) b!7891543))

(assert (= (and b!7891538 res!3131745) b!7891541))

(assert (= (and b!7891543 c!1448793) b!7891532))

(assert (= (and b!7891543 (not c!1448793)) b!7891535))

(assert (= (or b!7891541 b!7891532) bm!732455))

(assert (= (or b!7891533 bm!732455) bm!732453))

(assert (= (or b!7891529 b!7891538) bm!732457))

(declare-fun m!8270842 () Bool)

(assert (=> bm!732452 m!8270842))

(declare-fun m!8270844 () Bool)

(assert (=> bm!732457 m!8270844))

(declare-fun m!8270846 () Bool)

(assert (=> bm!732458 m!8270846))

(declare-fun m!8270848 () Bool)

(assert (=> bm!732456 m!8270848))

(declare-fun m!8270850 () Bool)

(assert (=> bm!732453 m!8270850))

(assert (=> bm!732416 d!2357001))

(declare-fun d!2357003 () Bool)

(declare-fun lt!2681580 () Int)

(assert (=> d!2357003 (>= lt!2681580 0)))

(declare-fun e!4658698 () Int)

(assert (=> d!2357003 (= lt!2681580 e!4658698)))

(declare-fun c!1448799 () Bool)

(assert (=> d!2357003 (= c!1448799 ((_ is Nil!73946) lt!2681554))))

(assert (=> d!2357003 (= (size!42854 lt!2681554) lt!2681580)))

(declare-fun b!7891546 () Bool)

(assert (=> b!7891546 (= e!4658698 0)))

(declare-fun b!7891547 () Bool)

(assert (=> b!7891547 (= e!4658698 (+ 1 (size!42854 (t!388805 lt!2681554))))))

(assert (= (and d!2357003 c!1448799) b!7891546))

(assert (= (and d!2357003 (not c!1448799)) b!7891547))

(declare-fun m!8270852 () Bool)

(assert (=> b!7891547 m!8270852))

(assert (=> b!7891155 d!2357003))

(assert (=> b!7891155 d!2356969))

(declare-fun d!2357005 () Bool)

(declare-fun lt!2681581 () Int)

(assert (=> d!2357005 (>= lt!2681581 0)))

(declare-fun e!4658699 () Int)

(assert (=> d!2357005 (= lt!2681581 e!4658699)))

(declare-fun c!1448800 () Bool)

(assert (=> d!2357005 (= c!1448800 ((_ is Nil!73946) (_2!38335 cut!3)))))

(assert (=> d!2357005 (= (size!42854 (_2!38335 cut!3)) lt!2681581)))

(declare-fun b!7891548 () Bool)

(assert (=> b!7891548 (= e!4658699 0)))

(declare-fun b!7891549 () Bool)

(assert (=> b!7891549 (= e!4658699 (+ 1 (size!42854 (t!388805 (_2!38335 cut!3)))))))

(assert (= (and d!2357005 c!1448800) b!7891548))

(assert (= (and d!2357005 (not c!1448800)) b!7891549))

(declare-fun m!8270854 () Bool)

(assert (=> b!7891549 m!8270854))

(assert (=> b!7891155 d!2357005))

(declare-fun b!7891551 () Bool)

(declare-fun res!3131751 () Bool)

(declare-fun e!4658701 () Bool)

(assert (=> b!7891551 (=> res!3131751 e!4658701)))

(assert (=> b!7891551 (= res!3131751 (not ((_ is Concat!30058) (ite c!1448691 (reg!21542 r!14100) (ite c!1448692 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))))

(declare-fun e!4658702 () Bool)

(assert (=> b!7891551 (= e!4658702 e!4658701)))

(declare-fun b!7891552 () Bool)

(declare-fun e!4658706 () Bool)

(declare-fun call!732464 () Bool)

(assert (=> b!7891552 (= e!4658706 call!732464)))

(declare-fun b!7891553 () Bool)

(declare-fun e!4658704 () Bool)

(declare-fun call!732466 () Bool)

(assert (=> b!7891553 (= e!4658704 call!732466)))

(declare-fun b!7891554 () Bool)

(declare-fun res!3131750 () Bool)

(declare-fun e!4658700 () Bool)

(assert (=> b!7891554 (=> (not res!3131750) (not e!4658700))))

(assert (=> b!7891554 (= res!3131750 call!732464)))

(assert (=> b!7891554 (= e!4658702 e!4658700)))

(declare-fun b!7891555 () Bool)

(declare-fun call!732465 () Bool)

(assert (=> b!7891555 (= e!4658700 call!732465)))

(declare-fun b!7891556 () Bool)

(declare-fun e!4658703 () Bool)

(assert (=> b!7891556 (= e!4658703 e!4658702)))

(declare-fun c!1448802 () Bool)

(assert (=> b!7891556 (= c!1448802 ((_ is Union!21213) (ite c!1448691 (reg!21542 r!14100) (ite c!1448692 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))

(declare-fun bm!732459 () Bool)

(assert (=> bm!732459 (= call!732465 call!732466)))

(declare-fun bm!732460 () Bool)

(declare-fun c!1448801 () Bool)

(assert (=> bm!732460 (= call!732466 (validRegex!11623 (ite c!1448801 (reg!21542 (ite c!1448691 (reg!21542 r!14100) (ite c!1448692 (regTwo!42939 r!14100) (regOne!42938 r!14100)))) (ite c!1448802 (regTwo!42939 (ite c!1448691 (reg!21542 r!14100) (ite c!1448692 (regTwo!42939 r!14100) (regOne!42938 r!14100)))) (regOne!42938 (ite c!1448691 (reg!21542 r!14100) (ite c!1448692 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))))))

(declare-fun b!7891557 () Bool)

(assert (=> b!7891557 (= e!4658701 e!4658706)))

(declare-fun res!3131749 () Bool)

(assert (=> b!7891557 (=> (not res!3131749) (not e!4658706))))

(assert (=> b!7891557 (= res!3131749 call!732465)))

(declare-fun b!7891550 () Bool)

(assert (=> b!7891550 (= e!4658703 e!4658704)))

(declare-fun res!3131752 () Bool)

(assert (=> b!7891550 (= res!3131752 (not (nullable!9468 (reg!21542 (ite c!1448691 (reg!21542 r!14100) (ite c!1448692 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))))

(assert (=> b!7891550 (=> (not res!3131752) (not e!4658704))))

(declare-fun d!2357007 () Bool)

(declare-fun res!3131748 () Bool)

(declare-fun e!4658705 () Bool)

(assert (=> d!2357007 (=> res!3131748 e!4658705)))

(assert (=> d!2357007 (= res!3131748 ((_ is ElementMatch!21213) (ite c!1448691 (reg!21542 r!14100) (ite c!1448692 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))

(assert (=> d!2357007 (= (validRegex!11623 (ite c!1448691 (reg!21542 r!14100) (ite c!1448692 (regTwo!42939 r!14100) (regOne!42938 r!14100)))) e!4658705)))

(declare-fun bm!732461 () Bool)

(assert (=> bm!732461 (= call!732464 (validRegex!11623 (ite c!1448802 (regOne!42939 (ite c!1448691 (reg!21542 r!14100) (ite c!1448692 (regTwo!42939 r!14100) (regOne!42938 r!14100)))) (regTwo!42938 (ite c!1448691 (reg!21542 r!14100) (ite c!1448692 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))))

(declare-fun b!7891558 () Bool)

(assert (=> b!7891558 (= e!4658705 e!4658703)))

(assert (=> b!7891558 (= c!1448801 ((_ is Star!21213) (ite c!1448691 (reg!21542 r!14100) (ite c!1448692 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))

(assert (= (and d!2357007 (not res!3131748)) b!7891558))

(assert (= (and b!7891558 c!1448801) b!7891550))

(assert (= (and b!7891558 (not c!1448801)) b!7891556))

(assert (= (and b!7891550 res!3131752) b!7891553))

(assert (= (and b!7891556 c!1448802) b!7891554))

(assert (= (and b!7891556 (not c!1448802)) b!7891551))

(assert (= (and b!7891554 res!3131750) b!7891555))

(assert (= (and b!7891551 (not res!3131751)) b!7891557))

(assert (= (and b!7891557 res!3131749) b!7891552))

(assert (= (or b!7891555 b!7891557) bm!732459))

(assert (= (or b!7891554 b!7891552) bm!732461))

(assert (= (or b!7891553 bm!732459) bm!732460))

(declare-fun m!8270856 () Bool)

(assert (=> bm!732460 m!8270856))

(declare-fun m!8270858 () Bool)

(assert (=> b!7891550 m!8270858))

(declare-fun m!8270860 () Bool)

(assert (=> bm!732461 m!8270860))

(assert (=> bm!732366 d!2357007))

(declare-fun b!7891559 () Bool)

(declare-fun e!4658707 () List!74070)

(assert (=> b!7891559 (= e!4658707 (_2!38335 cut!3))))

(declare-fun d!2357009 () Bool)

(declare-fun e!4658708 () Bool)

(assert (=> d!2357009 e!4658708))

(declare-fun res!3131753 () Bool)

(assert (=> d!2357009 (=> (not res!3131753) (not e!4658708))))

(declare-fun lt!2681582 () List!74070)

(assert (=> d!2357009 (= res!3131753 (= (content!15696 lt!2681582) ((_ map or) (content!15696 (t!388805 (_1!38335 cut!3))) (content!15696 (_2!38335 cut!3)))))))

(assert (=> d!2357009 (= lt!2681582 e!4658707)))

(declare-fun c!1448803 () Bool)

(assert (=> d!2357009 (= c!1448803 ((_ is Nil!73946) (t!388805 (_1!38335 cut!3))))))

(assert (=> d!2357009 (= (++!18117 (t!388805 (_1!38335 cut!3)) (_2!38335 cut!3)) lt!2681582)))

(declare-fun b!7891561 () Bool)

(declare-fun res!3131754 () Bool)

(assert (=> b!7891561 (=> (not res!3131754) (not e!4658708))))

(assert (=> b!7891561 (= res!3131754 (= (size!42854 lt!2681582) (+ (size!42854 (t!388805 (_1!38335 cut!3))) (size!42854 (_2!38335 cut!3)))))))

(declare-fun b!7891560 () Bool)

(assert (=> b!7891560 (= e!4658707 (Cons!73946 (h!80394 (t!388805 (_1!38335 cut!3))) (++!18117 (t!388805 (t!388805 (_1!38335 cut!3))) (_2!38335 cut!3))))))

(declare-fun b!7891562 () Bool)

(assert (=> b!7891562 (= e!4658708 (or (not (= (_2!38335 cut!3) Nil!73946)) (= lt!2681582 (t!388805 (_1!38335 cut!3)))))))

(assert (= (and d!2357009 c!1448803) b!7891559))

(assert (= (and d!2357009 (not c!1448803)) b!7891560))

(assert (= (and d!2357009 res!3131753) b!7891561))

(assert (= (and b!7891561 res!3131754) b!7891562))

(declare-fun m!8270862 () Bool)

(assert (=> d!2357009 m!8270862))

(assert (=> d!2357009 m!8270804))

(assert (=> d!2357009 m!8270708))

(declare-fun m!8270864 () Bool)

(assert (=> b!7891561 m!8270864))

(assert (=> b!7891561 m!8270730))

(assert (=> b!7891561 m!8270712))

(declare-fun m!8270866 () Bool)

(assert (=> b!7891560 m!8270866))

(assert (=> b!7891154 d!2357009))

(declare-fun d!2357011 () Bool)

(declare-fun nullableFct!3738 (Regex!21213) Bool)

(assert (=> d!2357011 (= (nullable!9468 (reg!21542 r!14100)) (nullableFct!3738 (reg!21542 r!14100)))))

(declare-fun bs!1967645 () Bool)

(assert (= bs!1967645 d!2357011))

(declare-fun m!8270868 () Bool)

(assert (=> bs!1967645 m!8270868))

(assert (=> b!7891206 d!2357011))

(declare-fun b!7891563 () Bool)

(declare-fun e!4658710 () Bool)

(declare-fun lt!2681583 () Int)

(declare-fun call!732469 () Int)

(assert (=> b!7891563 (= e!4658710 (> lt!2681583 call!732469))))

(declare-fun b!7891564 () Bool)

(declare-fun e!4658716 () Int)

(declare-fun e!4658711 () Int)

(assert (=> b!7891564 (= e!4658716 e!4658711)))

(declare-fun c!1448806 () Bool)

(assert (=> b!7891564 (= c!1448806 ((_ is Star!21213) (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))))))

(declare-fun b!7891565 () Bool)

(declare-fun call!732467 () Int)

(assert (=> b!7891565 (= e!4658711 (+ 1 call!732467))))

(declare-fun b!7891566 () Bool)

(declare-fun e!4658717 () Bool)

(declare-fun call!732473 () Int)

(assert (=> b!7891566 (= e!4658717 (> lt!2681583 call!732473))))

(declare-fun d!2357013 () Bool)

(declare-fun e!4658715 () Bool)

(assert (=> d!2357013 e!4658715))

(declare-fun res!3131756 () Bool)

(assert (=> d!2357013 (=> (not res!3131756) (not e!4658715))))

(assert (=> d!2357013 (= res!3131756 (> lt!2681583 0))))

(assert (=> d!2357013 (= lt!2681583 e!4658716)))

(declare-fun c!1448809 () Bool)

(assert (=> d!2357013 (= c!1448809 ((_ is ElementMatch!21213) (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))))))

(assert (=> d!2357013 (= (regexDepth!517 (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))) lt!2681583)))

(declare-fun b!7891567 () Bool)

(declare-fun e!4658713 () Bool)

(assert (=> b!7891567 (= e!4658713 e!4658710)))

(declare-fun res!3131757 () Bool)

(declare-fun call!732471 () Int)

(assert (=> b!7891567 (= res!3131757 (> lt!2681583 call!732471))))

(assert (=> b!7891567 (=> (not res!3131757) (not e!4658710))))

(declare-fun b!7891568 () Bool)

(declare-fun e!4658712 () Int)

(declare-fun call!732468 () Int)

(assert (=> b!7891568 (= e!4658712 (+ 1 call!732468))))

(declare-fun b!7891569 () Bool)

(assert (=> b!7891569 (= e!4658717 (= lt!2681583 1))))

(declare-fun c!1448810 () Bool)

(declare-fun call!732470 () Int)

(declare-fun bm!732462 () Bool)

(declare-fun call!732472 () Int)

(assert (=> bm!732462 (= call!732468 (maxBigInt!0 (ite c!1448810 call!732472 call!732470) (ite c!1448810 call!732470 call!732472)))))

(declare-fun c!1448807 () Bool)

(declare-fun bm!732463 () Bool)

(declare-fun c!1448808 () Bool)

(assert (=> bm!732463 (= call!732471 (regexDepth!517 (ite c!1448807 (regOne!42939 (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))) (ite c!1448808 (regTwo!42938 (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))) (reg!21542 (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100)))))))))))

(declare-fun b!7891570 () Bool)

(assert (=> b!7891570 (= e!4658716 1)))

(declare-fun bm!732464 () Bool)

(assert (=> bm!732464 (= call!732470 call!732467)))

(declare-fun bm!732465 () Bool)

(assert (=> bm!732465 (= call!732473 call!732471)))

(declare-fun bm!732466 () Bool)

(assert (=> bm!732466 (= call!732467 (regexDepth!517 (ite c!1448806 (reg!21542 (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))) (ite c!1448810 (regTwo!42939 (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))) (regOne!42938 (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100)))))))))))

(declare-fun b!7891571 () Bool)

(assert (=> b!7891571 (= e!4658715 e!4658713)))

(assert (=> b!7891571 (= c!1448807 ((_ is Union!21213) (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))))))

(declare-fun bm!732467 () Bool)

(assert (=> bm!732467 (= call!732469 (regexDepth!517 (ite c!1448807 (regTwo!42939 (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))) (regOne!42938 (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))))))))

(declare-fun b!7891572 () Bool)

(declare-fun res!3131755 () Bool)

(declare-fun e!4658714 () Bool)

(assert (=> b!7891572 (=> (not res!3131755) (not e!4658714))))

(assert (=> b!7891572 (= res!3131755 (> lt!2681583 call!732469))))

(declare-fun e!4658718 () Bool)

(assert (=> b!7891572 (= e!4658718 e!4658714)))

(declare-fun b!7891573 () Bool)

(assert (=> b!7891573 (= c!1448810 ((_ is Union!21213) (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))))))

(declare-fun e!4658709 () Int)

(assert (=> b!7891573 (= e!4658711 e!4658709)))

(declare-fun b!7891574 () Bool)

(assert (=> b!7891574 (= e!4658712 1)))

(declare-fun b!7891575 () Bool)

(assert (=> b!7891575 (= e!4658714 (> lt!2681583 call!732473))))

(declare-fun b!7891576 () Bool)

(assert (=> b!7891576 (= e!4658709 (+ 1 call!732468))))

(declare-fun b!7891577 () Bool)

(declare-fun c!1448805 () Bool)

(assert (=> b!7891577 (= c!1448805 ((_ is Star!21213) (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))))))

(assert (=> b!7891577 (= e!4658718 e!4658717)))

(declare-fun b!7891578 () Bool)

(assert (=> b!7891578 (= e!4658709 e!4658712)))

(declare-fun c!1448804 () Bool)

(assert (=> b!7891578 (= c!1448804 ((_ is Concat!30058) (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))))))

(declare-fun b!7891579 () Bool)

(assert (=> b!7891579 (= e!4658713 e!4658718)))

(assert (=> b!7891579 (= c!1448808 ((_ is Concat!30058) (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))))))

(declare-fun bm!732468 () Bool)

(assert (=> bm!732468 (= call!732472 (regexDepth!517 (ite c!1448810 (regOne!42939 (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))) (regTwo!42938 (ite c!1448743 (regOne!42939 (regOne!42938 r!14100)) (ite c!1448744 (regTwo!42938 (regOne!42938 r!14100)) (reg!21542 (regOne!42938 r!14100))))))))))

(assert (= (and d!2357013 c!1448809) b!7891570))

(assert (= (and d!2357013 (not c!1448809)) b!7891564))

(assert (= (and b!7891564 c!1448806) b!7891565))

(assert (= (and b!7891564 (not c!1448806)) b!7891573))

(assert (= (and b!7891573 c!1448810) b!7891576))

(assert (= (and b!7891573 (not c!1448810)) b!7891578))

(assert (= (and b!7891578 c!1448804) b!7891568))

(assert (= (and b!7891578 (not c!1448804)) b!7891574))

(assert (= (or b!7891576 b!7891568) bm!732468))

(assert (= (or b!7891576 b!7891568) bm!732464))

(assert (= (or b!7891576 b!7891568) bm!732462))

(assert (= (or b!7891565 bm!732464) bm!732466))

(assert (= (and d!2357013 res!3131756) b!7891571))

(assert (= (and b!7891571 c!1448807) b!7891567))

(assert (= (and b!7891571 (not c!1448807)) b!7891579))

(assert (= (and b!7891567 res!3131757) b!7891563))

(assert (= (and b!7891579 c!1448808) b!7891572))

(assert (= (and b!7891579 (not c!1448808)) b!7891577))

(assert (= (and b!7891572 res!3131755) b!7891575))

(assert (= (and b!7891577 c!1448805) b!7891566))

(assert (= (and b!7891577 (not c!1448805)) b!7891569))

(assert (= (or b!7891575 b!7891566) bm!732465))

(assert (= (or b!7891567 bm!732465) bm!732463))

(assert (= (or b!7891563 b!7891572) bm!732467))

(declare-fun m!8270870 () Bool)

(assert (=> bm!732462 m!8270870))

(declare-fun m!8270872 () Bool)

(assert (=> bm!732467 m!8270872))

(declare-fun m!8270874 () Bool)

(assert (=> bm!732468 m!8270874))

(declare-fun m!8270876 () Bool)

(assert (=> bm!732466 m!8270876))

(declare-fun m!8270878 () Bool)

(assert (=> bm!732463 m!8270878))

(assert (=> bm!732411 d!2357013))

(declare-fun b!7891581 () Bool)

(declare-fun res!3131761 () Bool)

(declare-fun e!4658720 () Bool)

(assert (=> b!7891581 (=> res!3131761 e!4658720)))

(assert (=> b!7891581 (= res!3131761 (not ((_ is Concat!30058) (ite c!1448692 (regOne!42939 r!14100) (regTwo!42938 r!14100)))))))

(declare-fun e!4658721 () Bool)

(assert (=> b!7891581 (= e!4658721 e!4658720)))

(declare-fun b!7891582 () Bool)

(declare-fun e!4658725 () Bool)

(declare-fun call!732474 () Bool)

(assert (=> b!7891582 (= e!4658725 call!732474)))

(declare-fun b!7891583 () Bool)

(declare-fun e!4658723 () Bool)

(declare-fun call!732476 () Bool)

(assert (=> b!7891583 (= e!4658723 call!732476)))

(declare-fun b!7891584 () Bool)

(declare-fun res!3131760 () Bool)

(declare-fun e!4658719 () Bool)

(assert (=> b!7891584 (=> (not res!3131760) (not e!4658719))))

(assert (=> b!7891584 (= res!3131760 call!732474)))

(assert (=> b!7891584 (= e!4658721 e!4658719)))

(declare-fun b!7891585 () Bool)

(declare-fun call!732475 () Bool)

(assert (=> b!7891585 (= e!4658719 call!732475)))

(declare-fun b!7891586 () Bool)

(declare-fun e!4658722 () Bool)

(assert (=> b!7891586 (= e!4658722 e!4658721)))

(declare-fun c!1448812 () Bool)

(assert (=> b!7891586 (= c!1448812 ((_ is Union!21213) (ite c!1448692 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))

(declare-fun bm!732469 () Bool)

(assert (=> bm!732469 (= call!732475 call!732476)))

(declare-fun bm!732470 () Bool)

(declare-fun c!1448811 () Bool)

(assert (=> bm!732470 (= call!732476 (validRegex!11623 (ite c!1448811 (reg!21542 (ite c!1448692 (regOne!42939 r!14100) (regTwo!42938 r!14100))) (ite c!1448812 (regTwo!42939 (ite c!1448692 (regOne!42939 r!14100) (regTwo!42938 r!14100))) (regOne!42938 (ite c!1448692 (regOne!42939 r!14100) (regTwo!42938 r!14100)))))))))

(declare-fun b!7891587 () Bool)

(assert (=> b!7891587 (= e!4658720 e!4658725)))

(declare-fun res!3131759 () Bool)

(assert (=> b!7891587 (=> (not res!3131759) (not e!4658725))))

(assert (=> b!7891587 (= res!3131759 call!732475)))

(declare-fun b!7891580 () Bool)

(assert (=> b!7891580 (= e!4658722 e!4658723)))

(declare-fun res!3131762 () Bool)

(assert (=> b!7891580 (= res!3131762 (not (nullable!9468 (reg!21542 (ite c!1448692 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))))

(assert (=> b!7891580 (=> (not res!3131762) (not e!4658723))))

(declare-fun d!2357015 () Bool)

(declare-fun res!3131758 () Bool)

(declare-fun e!4658724 () Bool)

(assert (=> d!2357015 (=> res!3131758 e!4658724)))

(assert (=> d!2357015 (= res!3131758 ((_ is ElementMatch!21213) (ite c!1448692 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))

(assert (=> d!2357015 (= (validRegex!11623 (ite c!1448692 (regOne!42939 r!14100) (regTwo!42938 r!14100))) e!4658724)))

(declare-fun bm!732471 () Bool)

(assert (=> bm!732471 (= call!732474 (validRegex!11623 (ite c!1448812 (regOne!42939 (ite c!1448692 (regOne!42939 r!14100) (regTwo!42938 r!14100))) (regTwo!42938 (ite c!1448692 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))))

(declare-fun b!7891588 () Bool)

(assert (=> b!7891588 (= e!4658724 e!4658722)))

(assert (=> b!7891588 (= c!1448811 ((_ is Star!21213) (ite c!1448692 (regOne!42939 r!14100) (regTwo!42938 r!14100))))))

(assert (= (and d!2357015 (not res!3131758)) b!7891588))

(assert (= (and b!7891588 c!1448811) b!7891580))

(assert (= (and b!7891588 (not c!1448811)) b!7891586))

(assert (= (and b!7891580 res!3131762) b!7891583))

(assert (= (and b!7891586 c!1448812) b!7891584))

(assert (= (and b!7891586 (not c!1448812)) b!7891581))

(assert (= (and b!7891584 res!3131760) b!7891585))

(assert (= (and b!7891581 (not res!3131761)) b!7891587))

(assert (= (and b!7891587 res!3131759) b!7891582))

(assert (= (or b!7891585 b!7891587) bm!732469))

(assert (= (or b!7891584 b!7891582) bm!732471))

(assert (= (or b!7891583 bm!732469) bm!732470))

(declare-fun m!8270880 () Bool)

(assert (=> bm!732470 m!8270880))

(declare-fun m!8270882 () Bool)

(assert (=> b!7891580 m!8270882))

(declare-fun m!8270884 () Bool)

(assert (=> bm!732471 m!8270884))

(assert (=> bm!732367 d!2357015))

(declare-fun b!7891589 () Bool)

(declare-fun e!4658727 () Bool)

(declare-fun lt!2681584 () Int)

(declare-fun call!732479 () Int)

(assert (=> b!7891589 (= e!4658727 (> lt!2681584 call!732479))))

(declare-fun b!7891590 () Bool)

(declare-fun e!4658733 () Int)

(declare-fun e!4658728 () Int)

(assert (=> b!7891590 (= e!4658733 e!4658728)))

(declare-fun c!1448815 () Bool)

(assert (=> b!7891590 (= c!1448815 ((_ is Star!21213) (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))))))

(declare-fun b!7891591 () Bool)

(declare-fun call!732477 () Int)

(assert (=> b!7891591 (= e!4658728 (+ 1 call!732477))))

(declare-fun b!7891592 () Bool)

(declare-fun e!4658734 () Bool)

(declare-fun call!732483 () Int)

(assert (=> b!7891592 (= e!4658734 (> lt!2681584 call!732483))))

(declare-fun d!2357017 () Bool)

(declare-fun e!4658732 () Bool)

(assert (=> d!2357017 e!4658732))

(declare-fun res!3131764 () Bool)

(assert (=> d!2357017 (=> (not res!3131764) (not e!4658732))))

(assert (=> d!2357017 (= res!3131764 (> lt!2681584 0))))

(assert (=> d!2357017 (= lt!2681584 e!4658733)))

(declare-fun c!1448818 () Bool)

(assert (=> d!2357017 (= c!1448818 ((_ is ElementMatch!21213) (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))))))

(assert (=> d!2357017 (= (regexDepth!517 (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))) lt!2681584)))

(declare-fun b!7891593 () Bool)

(declare-fun e!4658730 () Bool)

(assert (=> b!7891593 (= e!4658730 e!4658727)))

(declare-fun res!3131765 () Bool)

(declare-fun call!732481 () Int)

(assert (=> b!7891593 (= res!3131765 (> lt!2681584 call!732481))))

(assert (=> b!7891593 (=> (not res!3131765) (not e!4658727))))

(declare-fun b!7891594 () Bool)

(declare-fun e!4658729 () Int)

(declare-fun call!732478 () Int)

(assert (=> b!7891594 (= e!4658729 (+ 1 call!732478))))

(declare-fun b!7891595 () Bool)

(assert (=> b!7891595 (= e!4658734 (= lt!2681584 1))))

(declare-fun call!732480 () Int)

(declare-fun bm!732472 () Bool)

(declare-fun call!732482 () Int)

(declare-fun c!1448819 () Bool)

(assert (=> bm!732472 (= call!732478 (maxBigInt!0 (ite c!1448819 call!732482 call!732480) (ite c!1448819 call!732480 call!732482)))))

(declare-fun c!1448816 () Bool)

(declare-fun bm!732473 () Bool)

(declare-fun c!1448817 () Bool)

(assert (=> bm!732473 (= call!732481 (regexDepth!517 (ite c!1448816 (regOne!42939 (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))) (ite c!1448817 (regTwo!42938 (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))) (reg!21542 (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100))))))))))

(declare-fun b!7891596 () Bool)

(assert (=> b!7891596 (= e!4658733 1)))

(declare-fun bm!732474 () Bool)

(assert (=> bm!732474 (= call!732480 call!732477)))

(declare-fun bm!732475 () Bool)

(assert (=> bm!732475 (= call!732483 call!732481)))

(declare-fun bm!732476 () Bool)

(assert (=> bm!732476 (= call!732477 (regexDepth!517 (ite c!1448815 (reg!21542 (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))) (ite c!1448819 (regTwo!42939 (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))) (regOne!42938 (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100))))))))))

(declare-fun b!7891597 () Bool)

(assert (=> b!7891597 (= e!4658732 e!4658730)))

(assert (=> b!7891597 (= c!1448816 ((_ is Union!21213) (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))))))

(declare-fun bm!732477 () Bool)

(assert (=> bm!732477 (= call!732479 (regexDepth!517 (ite c!1448816 (regTwo!42939 (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))) (regOne!42938 (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))))))))

(declare-fun b!7891598 () Bool)

(declare-fun res!3131763 () Bool)

(declare-fun e!4658731 () Bool)

(assert (=> b!7891598 (=> (not res!3131763) (not e!4658731))))

(assert (=> b!7891598 (= res!3131763 (> lt!2681584 call!732479))))

(declare-fun e!4658735 () Bool)

(assert (=> b!7891598 (= e!4658735 e!4658731)))

(declare-fun b!7891599 () Bool)

(assert (=> b!7891599 (= c!1448819 ((_ is Union!21213) (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))))))

(declare-fun e!4658726 () Int)

(assert (=> b!7891599 (= e!4658728 e!4658726)))

(declare-fun b!7891600 () Bool)

(assert (=> b!7891600 (= e!4658729 1)))

(declare-fun b!7891601 () Bool)

(assert (=> b!7891601 (= e!4658731 (> lt!2681584 call!732483))))

(declare-fun b!7891602 () Bool)

(assert (=> b!7891602 (= e!4658726 (+ 1 call!732478))))

(declare-fun c!1448814 () Bool)

(declare-fun b!7891603 () Bool)

(assert (=> b!7891603 (= c!1448814 ((_ is Star!21213) (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))))))

(assert (=> b!7891603 (= e!4658735 e!4658734)))

(declare-fun b!7891604 () Bool)

(assert (=> b!7891604 (= e!4658726 e!4658729)))

(declare-fun c!1448813 () Bool)

(assert (=> b!7891604 (= c!1448813 ((_ is Concat!30058) (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))))))

(declare-fun b!7891605 () Bool)

(assert (=> b!7891605 (= e!4658730 e!4658735)))

(assert (=> b!7891605 (= c!1448817 ((_ is Concat!30058) (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))))))

(declare-fun bm!732478 () Bool)

(assert (=> bm!732478 (= call!732482 (regexDepth!517 (ite c!1448819 (regOne!42939 (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))) (regTwo!42938 (ite c!1448751 (regOne!42939 r!14100) (ite c!1448752 (regTwo!42938 r!14100) (reg!21542 r!14100)))))))))

(assert (= (and d!2357017 c!1448818) b!7891596))

(assert (= (and d!2357017 (not c!1448818)) b!7891590))

(assert (= (and b!7891590 c!1448815) b!7891591))

(assert (= (and b!7891590 (not c!1448815)) b!7891599))

(assert (= (and b!7891599 c!1448819) b!7891602))

(assert (= (and b!7891599 (not c!1448819)) b!7891604))

(assert (= (and b!7891604 c!1448813) b!7891594))

(assert (= (and b!7891604 (not c!1448813)) b!7891600))

(assert (= (or b!7891602 b!7891594) bm!732478))

(assert (= (or b!7891602 b!7891594) bm!732474))

(assert (= (or b!7891602 b!7891594) bm!732472))

(assert (= (or b!7891591 bm!732474) bm!732476))

(assert (= (and d!2357017 res!3131764) b!7891597))

(assert (= (and b!7891597 c!1448816) b!7891593))

(assert (= (and b!7891597 (not c!1448816)) b!7891605))

(assert (= (and b!7891593 res!3131765) b!7891589))

(assert (= (and b!7891605 c!1448817) b!7891598))

(assert (= (and b!7891605 (not c!1448817)) b!7891603))

(assert (= (and b!7891598 res!3131763) b!7891601))

(assert (= (and b!7891603 c!1448814) b!7891592))

(assert (= (and b!7891603 (not c!1448814)) b!7891595))

(assert (= (or b!7891601 b!7891592) bm!732475))

(assert (= (or b!7891593 bm!732475) bm!732473))

(assert (= (or b!7891589 b!7891598) bm!732477))

(declare-fun m!8270886 () Bool)

(assert (=> bm!732472 m!8270886))

(declare-fun m!8270888 () Bool)

(assert (=> bm!732477 m!8270888))

(declare-fun m!8270890 () Bool)

(assert (=> bm!732478 m!8270890))

(declare-fun m!8270892 () Bool)

(assert (=> bm!732476 m!8270892))

(declare-fun m!8270894 () Bool)

(assert (=> bm!732473 m!8270894))

(assert (=> bm!732418 d!2357017))

(declare-fun d!2357019 () Bool)

(assert (=> d!2357019 (= (maxBigInt!0 (ite c!1448754 call!732427 call!732425) (ite c!1448754 call!732425 call!732427)) (ite (>= (ite c!1448754 call!732427 call!732425) (ite c!1448754 call!732425 call!732427)) (ite c!1448754 call!732427 call!732425) (ite c!1448754 call!732425 call!732427)))))

(assert (=> bm!732417 d!2357019))

(declare-fun d!2357021 () Bool)

(assert (=> d!2357021 (= (maxBigInt!0 (ite c!1448746 call!732420 call!732418) (ite c!1448746 call!732418 call!732420)) (ite (>= (ite c!1448746 call!732420 call!732418) (ite c!1448746 call!732418 call!732420)) (ite c!1448746 call!732420 call!732418) (ite c!1448746 call!732418 call!732420)))))

(assert (=> bm!732410 d!2357021))

(declare-fun b!7891607 () Bool)

(declare-fun e!4658737 () Bool)

(declare-fun lt!2681585 () Int)

(declare-fun call!732486 () Int)

(assert (=> b!7891607 (= e!4658737 (> lt!2681585 call!732486))))

(declare-fun b!7891608 () Bool)

(declare-fun e!4658743 () Int)

(declare-fun e!4658738 () Int)

(assert (=> b!7891608 (= e!4658743 e!4658738)))

(declare-fun c!1448822 () Bool)

(assert (=> b!7891608 (= c!1448822 ((_ is Star!21213) (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))

(declare-fun b!7891609 () Bool)

(declare-fun call!732484 () Int)

(assert (=> b!7891609 (= e!4658738 (+ 1 call!732484))))

(declare-fun b!7891610 () Bool)

(declare-fun e!4658744 () Bool)

(declare-fun call!732490 () Int)

(assert (=> b!7891610 (= e!4658744 (> lt!2681585 call!732490))))

(declare-fun d!2357023 () Bool)

(declare-fun e!4658742 () Bool)

(assert (=> d!2357023 e!4658742))

(declare-fun res!3131767 () Bool)

(assert (=> d!2357023 (=> (not res!3131767) (not e!4658742))))

(assert (=> d!2357023 (= res!3131767 (> lt!2681585 0))))

(assert (=> d!2357023 (= lt!2681585 e!4658743)))

(declare-fun c!1448825 () Bool)

(assert (=> d!2357023 (= c!1448825 ((_ is ElementMatch!21213) (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))

(assert (=> d!2357023 (= (regexDepth!517 (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))) lt!2681585)))

(declare-fun b!7891611 () Bool)

(declare-fun e!4658740 () Bool)

(assert (=> b!7891611 (= e!4658740 e!4658737)))

(declare-fun res!3131768 () Bool)

(declare-fun call!732488 () Int)

(assert (=> b!7891611 (= res!3131768 (> lt!2681585 call!732488))))

(assert (=> b!7891611 (=> (not res!3131768) (not e!4658737))))

(declare-fun b!7891612 () Bool)

(declare-fun e!4658739 () Int)

(declare-fun call!732485 () Int)

(assert (=> b!7891612 (= e!4658739 (+ 1 call!732485))))

(declare-fun b!7891613 () Bool)

(assert (=> b!7891613 (= e!4658744 (= lt!2681585 1))))

(declare-fun bm!732479 () Bool)

(declare-fun call!732489 () Int)

(declare-fun call!732487 () Int)

(declare-fun c!1448826 () Bool)

(assert (=> bm!732479 (= call!732485 (maxBigInt!0 (ite c!1448826 call!732489 call!732487) (ite c!1448826 call!732487 call!732489)))))

(declare-fun bm!732480 () Bool)

(declare-fun c!1448823 () Bool)

(declare-fun c!1448824 () Bool)

(assert (=> bm!732480 (= call!732488 (regexDepth!517 (ite c!1448823 (regOne!42939 (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))) (ite c!1448824 (regTwo!42938 (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))) (reg!21542 (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))))))

(declare-fun b!7891614 () Bool)

(assert (=> b!7891614 (= e!4658743 1)))

(declare-fun bm!732481 () Bool)

(assert (=> bm!732481 (= call!732487 call!732484)))

(declare-fun bm!732482 () Bool)

(assert (=> bm!732482 (= call!732490 call!732488)))

(declare-fun bm!732483 () Bool)

(assert (=> bm!732483 (= call!732484 (regexDepth!517 (ite c!1448822 (reg!21542 (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))) (ite c!1448826 (regTwo!42939 (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))) (regOne!42938 (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100))))))))))

(declare-fun b!7891615 () Bool)

(assert (=> b!7891615 (= e!4658742 e!4658740)))

(assert (=> b!7891615 (= c!1448823 ((_ is Union!21213) (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))

(declare-fun bm!732484 () Bool)

(assert (=> bm!732484 (= call!732486 (regexDepth!517 (ite c!1448823 (regTwo!42939 (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))) (regOne!42938 (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))))

(declare-fun b!7891616 () Bool)

(declare-fun res!3131766 () Bool)

(declare-fun e!4658741 () Bool)

(assert (=> b!7891616 (=> (not res!3131766) (not e!4658741))))

(assert (=> b!7891616 (= res!3131766 (> lt!2681585 call!732486))))

(declare-fun e!4658745 () Bool)

(assert (=> b!7891616 (= e!4658745 e!4658741)))

(declare-fun b!7891617 () Bool)

(assert (=> b!7891617 (= c!1448826 ((_ is Union!21213) (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))

(declare-fun e!4658736 () Int)

(assert (=> b!7891617 (= e!4658738 e!4658736)))

(declare-fun b!7891618 () Bool)

(assert (=> b!7891618 (= e!4658739 1)))

(declare-fun b!7891619 () Bool)

(assert (=> b!7891619 (= e!4658741 (> lt!2681585 call!732490))))

(declare-fun b!7891620 () Bool)

(assert (=> b!7891620 (= e!4658736 (+ 1 call!732485))))

(declare-fun b!7891621 () Bool)

(declare-fun c!1448821 () Bool)

(assert (=> b!7891621 (= c!1448821 ((_ is Star!21213) (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))

(assert (=> b!7891621 (= e!4658745 e!4658744)))

(declare-fun b!7891622 () Bool)

(assert (=> b!7891622 (= e!4658736 e!4658739)))

(declare-fun c!1448820 () Bool)

(assert (=> b!7891622 (= c!1448820 ((_ is Concat!30058) (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))

(declare-fun b!7891623 () Bool)

(assert (=> b!7891623 (= e!4658740 e!4658745)))

(assert (=> b!7891623 (= c!1448824 ((_ is Concat!30058) (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))

(declare-fun bm!732485 () Bool)

(assert (=> bm!732485 (= call!732489 (regexDepth!517 (ite c!1448826 (regOne!42939 (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))) (regTwo!42938 (ite c!1448750 (reg!21542 r!14100) (ite c!1448754 (regTwo!42939 r!14100) (regOne!42938 r!14100)))))))))

(assert (= (and d!2357023 c!1448825) b!7891614))

(assert (= (and d!2357023 (not c!1448825)) b!7891608))

(assert (= (and b!7891608 c!1448822) b!7891609))

(assert (= (and b!7891608 (not c!1448822)) b!7891617))

(assert (= (and b!7891617 c!1448826) b!7891620))

(assert (= (and b!7891617 (not c!1448826)) b!7891622))

(assert (= (and b!7891622 c!1448820) b!7891612))

(assert (= (and b!7891622 (not c!1448820)) b!7891618))

(assert (= (or b!7891620 b!7891612) bm!732485))

(assert (= (or b!7891620 b!7891612) bm!732481))

(assert (= (or b!7891620 b!7891612) bm!732479))

(assert (= (or b!7891609 bm!732481) bm!732483))

(assert (= (and d!2357023 res!3131767) b!7891615))

(assert (= (and b!7891615 c!1448823) b!7891611))

(assert (= (and b!7891615 (not c!1448823)) b!7891623))

(assert (= (and b!7891611 res!3131768) b!7891607))

(assert (= (and b!7891623 c!1448824) b!7891616))

(assert (= (and b!7891623 (not c!1448824)) b!7891621))

(assert (= (and b!7891616 res!3131766) b!7891619))

(assert (= (and b!7891621 c!1448821) b!7891610))

(assert (= (and b!7891621 (not c!1448821)) b!7891613))

(assert (= (or b!7891619 b!7891610) bm!732482))

(assert (= (or b!7891611 bm!732482) bm!732480))

(assert (= (or b!7891607 b!7891616) bm!732484))

(declare-fun m!8270896 () Bool)

(assert (=> bm!732479 m!8270896))

(declare-fun m!8270898 () Bool)

(assert (=> bm!732484 m!8270898))

(declare-fun m!8270900 () Bool)

(assert (=> bm!732485 m!8270900))

(declare-fun m!8270902 () Bool)

(assert (=> bm!732483 m!8270902))

(declare-fun m!8270904 () Bool)

(assert (=> bm!732480 m!8270904))

(assert (=> bm!732421 d!2357023))

(declare-fun d!2357025 () Bool)

(declare-fun lt!2681586 () Int)

(assert (=> d!2357025 (>= lt!2681586 0)))

(declare-fun e!4658746 () Int)

(assert (=> d!2357025 (= lt!2681586 e!4658746)))

(declare-fun c!1448827 () Bool)

(assert (=> d!2357025 (= c!1448827 ((_ is Nil!73946) (t!388805 s!9586)))))

(assert (=> d!2357025 (= (size!42854 (t!388805 s!9586)) lt!2681586)))

(declare-fun b!7891624 () Bool)

(assert (=> b!7891624 (= e!4658746 0)))

(declare-fun b!7891625 () Bool)

(assert (=> b!7891625 (= e!4658746 (+ 1 (size!42854 (t!388805 (t!388805 s!9586)))))))

(assert (= (and d!2357025 c!1448827) b!7891624))

(assert (= (and d!2357025 (not c!1448827)) b!7891625))

(declare-fun m!8270906 () Bool)

(assert (=> b!7891625 m!8270906))

(assert (=> b!7891345 d!2357025))

(declare-fun b!7891626 () Bool)

(declare-fun e!4658747 () Bool)

(declare-fun tp!2348587 () Bool)

(assert (=> b!7891626 (= e!4658747 (and tp_is_empty!52825 tp!2348587))))

(assert (=> b!7891398 (= tp!2348535 e!4658747)))

(assert (= (and b!7891398 ((_ is Cons!73946) (t!388805 (t!388805 (_1!38335 cut!3))))) b!7891626))

(declare-fun b!7891627 () Bool)

(declare-fun e!4658748 () Bool)

(assert (=> b!7891627 (= e!4658748 tp_is_empty!52825)))

(declare-fun b!7891630 () Bool)

(declare-fun tp!2348589 () Bool)

(declare-fun tp!2348592 () Bool)

(assert (=> b!7891630 (= e!4658748 (and tp!2348589 tp!2348592))))

(declare-fun b!7891629 () Bool)

(declare-fun tp!2348590 () Bool)

(assert (=> b!7891629 (= e!4658748 tp!2348590)))

(declare-fun b!7891628 () Bool)

(declare-fun tp!2348591 () Bool)

(declare-fun tp!2348588 () Bool)

(assert (=> b!7891628 (= e!4658748 (and tp!2348591 tp!2348588))))

(assert (=> b!7891402 (= tp!2348537 e!4658748)))

(assert (= (and b!7891402 ((_ is ElementMatch!21213) (regOne!42939 (regOne!42939 r!14100)))) b!7891627))

(assert (= (and b!7891402 ((_ is Concat!30058) (regOne!42939 (regOne!42939 r!14100)))) b!7891628))

(assert (= (and b!7891402 ((_ is Star!21213) (regOne!42939 (regOne!42939 r!14100)))) b!7891629))

(assert (= (and b!7891402 ((_ is Union!21213) (regOne!42939 (regOne!42939 r!14100)))) b!7891630))

(declare-fun b!7891631 () Bool)

(declare-fun e!4658749 () Bool)

(assert (=> b!7891631 (= e!4658749 tp_is_empty!52825)))

(declare-fun b!7891634 () Bool)

(declare-fun tp!2348594 () Bool)

(declare-fun tp!2348597 () Bool)

(assert (=> b!7891634 (= e!4658749 (and tp!2348594 tp!2348597))))

(declare-fun b!7891633 () Bool)

(declare-fun tp!2348595 () Bool)

(assert (=> b!7891633 (= e!4658749 tp!2348595)))

(declare-fun b!7891632 () Bool)

(declare-fun tp!2348596 () Bool)

(declare-fun tp!2348593 () Bool)

(assert (=> b!7891632 (= e!4658749 (and tp!2348596 tp!2348593))))

(assert (=> b!7891402 (= tp!2348540 e!4658749)))

(assert (= (and b!7891402 ((_ is ElementMatch!21213) (regTwo!42939 (regOne!42939 r!14100)))) b!7891631))

(assert (= (and b!7891402 ((_ is Concat!30058) (regTwo!42939 (regOne!42939 r!14100)))) b!7891632))

(assert (= (and b!7891402 ((_ is Star!21213) (regTwo!42939 (regOne!42939 r!14100)))) b!7891633))

(assert (= (and b!7891402 ((_ is Union!21213) (regTwo!42939 (regOne!42939 r!14100)))) b!7891634))

(declare-fun b!7891635 () Bool)

(declare-fun e!4658750 () Bool)

(assert (=> b!7891635 (= e!4658750 tp_is_empty!52825)))

(declare-fun b!7891638 () Bool)

(declare-fun tp!2348599 () Bool)

(declare-fun tp!2348602 () Bool)

(assert (=> b!7891638 (= e!4658750 (and tp!2348599 tp!2348602))))

(declare-fun b!7891637 () Bool)

(declare-fun tp!2348600 () Bool)

(assert (=> b!7891637 (= e!4658750 tp!2348600)))

(declare-fun b!7891636 () Bool)

(declare-fun tp!2348601 () Bool)

(declare-fun tp!2348598 () Bool)

(assert (=> b!7891636 (= e!4658750 (and tp!2348601 tp!2348598))))

(assert (=> b!7891406 (= tp!2348542 e!4658750)))

(assert (= (and b!7891406 ((_ is ElementMatch!21213) (regOne!42939 (regTwo!42939 r!14100)))) b!7891635))

(assert (= (and b!7891406 ((_ is Concat!30058) (regOne!42939 (regTwo!42939 r!14100)))) b!7891636))

(assert (= (and b!7891406 ((_ is Star!21213) (regOne!42939 (regTwo!42939 r!14100)))) b!7891637))

(assert (= (and b!7891406 ((_ is Union!21213) (regOne!42939 (regTwo!42939 r!14100)))) b!7891638))

(declare-fun b!7891639 () Bool)

(declare-fun e!4658751 () Bool)

(assert (=> b!7891639 (= e!4658751 tp_is_empty!52825)))

(declare-fun b!7891642 () Bool)

(declare-fun tp!2348604 () Bool)

(declare-fun tp!2348607 () Bool)

(assert (=> b!7891642 (= e!4658751 (and tp!2348604 tp!2348607))))

(declare-fun b!7891641 () Bool)

(declare-fun tp!2348605 () Bool)

(assert (=> b!7891641 (= e!4658751 tp!2348605)))

(declare-fun b!7891640 () Bool)

(declare-fun tp!2348606 () Bool)

(declare-fun tp!2348603 () Bool)

(assert (=> b!7891640 (= e!4658751 (and tp!2348606 tp!2348603))))

(assert (=> b!7891406 (= tp!2348545 e!4658751)))

(assert (= (and b!7891406 ((_ is ElementMatch!21213) (regTwo!42939 (regTwo!42939 r!14100)))) b!7891639))

(assert (= (and b!7891406 ((_ is Concat!30058) (regTwo!42939 (regTwo!42939 r!14100)))) b!7891640))

(assert (= (and b!7891406 ((_ is Star!21213) (regTwo!42939 (regTwo!42939 r!14100)))) b!7891641))

(assert (= (and b!7891406 ((_ is Union!21213) (regTwo!42939 (regTwo!42939 r!14100)))) b!7891642))

(declare-fun b!7891643 () Bool)

(declare-fun e!4658752 () Bool)

(assert (=> b!7891643 (= e!4658752 tp_is_empty!52825)))

(declare-fun b!7891646 () Bool)

(declare-fun tp!2348609 () Bool)

(declare-fun tp!2348612 () Bool)

(assert (=> b!7891646 (= e!4658752 (and tp!2348609 tp!2348612))))

(declare-fun b!7891645 () Bool)

(declare-fun tp!2348610 () Bool)

(assert (=> b!7891645 (= e!4658752 tp!2348610)))

(declare-fun b!7891644 () Bool)

(declare-fun tp!2348611 () Bool)

(declare-fun tp!2348608 () Bool)

(assert (=> b!7891644 (= e!4658752 (and tp!2348611 tp!2348608))))

(assert (=> b!7891392 (= tp!2348528 e!4658752)))

(assert (= (and b!7891392 ((_ is ElementMatch!21213) (regOne!42939 (reg!21542 r!14100)))) b!7891643))

(assert (= (and b!7891392 ((_ is Concat!30058) (regOne!42939 (reg!21542 r!14100)))) b!7891644))

(assert (= (and b!7891392 ((_ is Star!21213) (regOne!42939 (reg!21542 r!14100)))) b!7891645))

(assert (= (and b!7891392 ((_ is Union!21213) (regOne!42939 (reg!21542 r!14100)))) b!7891646))

(declare-fun b!7891647 () Bool)

(declare-fun e!4658753 () Bool)

(assert (=> b!7891647 (= e!4658753 tp_is_empty!52825)))

(declare-fun b!7891650 () Bool)

(declare-fun tp!2348614 () Bool)

(declare-fun tp!2348617 () Bool)

(assert (=> b!7891650 (= e!4658753 (and tp!2348614 tp!2348617))))

(declare-fun b!7891649 () Bool)

(declare-fun tp!2348615 () Bool)

(assert (=> b!7891649 (= e!4658753 tp!2348615)))

(declare-fun b!7891648 () Bool)

(declare-fun tp!2348616 () Bool)

(declare-fun tp!2348613 () Bool)

(assert (=> b!7891648 (= e!4658753 (and tp!2348616 tp!2348613))))

(assert (=> b!7891392 (= tp!2348531 e!4658753)))

(assert (= (and b!7891392 ((_ is ElementMatch!21213) (regTwo!42939 (reg!21542 r!14100)))) b!7891647))

(assert (= (and b!7891392 ((_ is Concat!30058) (regTwo!42939 (reg!21542 r!14100)))) b!7891648))

(assert (= (and b!7891392 ((_ is Star!21213) (regTwo!42939 (reg!21542 r!14100)))) b!7891649))

(assert (= (and b!7891392 ((_ is Union!21213) (regTwo!42939 (reg!21542 r!14100)))) b!7891650))

(declare-fun b!7891651 () Bool)

(declare-fun e!4658754 () Bool)

(assert (=> b!7891651 (= e!4658754 tp_is_empty!52825)))

(declare-fun b!7891654 () Bool)

(declare-fun tp!2348619 () Bool)

(declare-fun tp!2348622 () Bool)

(assert (=> b!7891654 (= e!4658754 (and tp!2348619 tp!2348622))))

(declare-fun b!7891653 () Bool)

(declare-fun tp!2348620 () Bool)

(assert (=> b!7891653 (= e!4658754 tp!2348620)))

(declare-fun b!7891652 () Bool)

(declare-fun tp!2348621 () Bool)

(declare-fun tp!2348618 () Bool)

(assert (=> b!7891652 (= e!4658754 (and tp!2348621 tp!2348618))))

(assert (=> b!7891378 (= tp!2348520 e!4658754)))

(assert (= (and b!7891378 ((_ is ElementMatch!21213) (regOne!42938 (regOne!42938 r!14100)))) b!7891651))

(assert (= (and b!7891378 ((_ is Concat!30058) (regOne!42938 (regOne!42938 r!14100)))) b!7891652))

(assert (= (and b!7891378 ((_ is Star!21213) (regOne!42938 (regOne!42938 r!14100)))) b!7891653))

(assert (= (and b!7891378 ((_ is Union!21213) (regOne!42938 (regOne!42938 r!14100)))) b!7891654))

(declare-fun b!7891655 () Bool)

(declare-fun e!4658755 () Bool)

(assert (=> b!7891655 (= e!4658755 tp_is_empty!52825)))

(declare-fun b!7891658 () Bool)

(declare-fun tp!2348624 () Bool)

(declare-fun tp!2348627 () Bool)

(assert (=> b!7891658 (= e!4658755 (and tp!2348624 tp!2348627))))

(declare-fun b!7891657 () Bool)

(declare-fun tp!2348625 () Bool)

(assert (=> b!7891657 (= e!4658755 tp!2348625)))

(declare-fun b!7891656 () Bool)

(declare-fun tp!2348626 () Bool)

(declare-fun tp!2348623 () Bool)

(assert (=> b!7891656 (= e!4658755 (and tp!2348626 tp!2348623))))

(assert (=> b!7891378 (= tp!2348517 e!4658755)))

(assert (= (and b!7891378 ((_ is ElementMatch!21213) (regTwo!42938 (regOne!42938 r!14100)))) b!7891655))

(assert (= (and b!7891378 ((_ is Concat!30058) (regTwo!42938 (regOne!42938 r!14100)))) b!7891656))

(assert (= (and b!7891378 ((_ is Star!21213) (regTwo!42938 (regOne!42938 r!14100)))) b!7891657))

(assert (= (and b!7891378 ((_ is Union!21213) (regTwo!42938 (regOne!42938 r!14100)))) b!7891658))

(declare-fun b!7891659 () Bool)

(declare-fun e!4658756 () Bool)

(assert (=> b!7891659 (= e!4658756 tp_is_empty!52825)))

(declare-fun b!7891662 () Bool)

(declare-fun tp!2348629 () Bool)

(declare-fun tp!2348632 () Bool)

(assert (=> b!7891662 (= e!4658756 (and tp!2348629 tp!2348632))))

(declare-fun b!7891661 () Bool)

(declare-fun tp!2348630 () Bool)

(assert (=> b!7891661 (= e!4658756 tp!2348630)))

(declare-fun b!7891660 () Bool)

(declare-fun tp!2348631 () Bool)

(declare-fun tp!2348628 () Bool)

(assert (=> b!7891660 (= e!4658756 (and tp!2348631 tp!2348628))))

(assert (=> b!7891387 (= tp!2348524 e!4658756)))

(assert (= (and b!7891387 ((_ is ElementMatch!21213) (reg!21542 (regTwo!42938 r!14100)))) b!7891659))

(assert (= (and b!7891387 ((_ is Concat!30058) (reg!21542 (regTwo!42938 r!14100)))) b!7891660))

(assert (= (and b!7891387 ((_ is Star!21213) (reg!21542 (regTwo!42938 r!14100)))) b!7891661))

(assert (= (and b!7891387 ((_ is Union!21213) (reg!21542 (regTwo!42938 r!14100)))) b!7891662))

(declare-fun b!7891663 () Bool)

(declare-fun e!4658757 () Bool)

(assert (=> b!7891663 (= e!4658757 tp_is_empty!52825)))

(declare-fun b!7891666 () Bool)

(declare-fun tp!2348634 () Bool)

(declare-fun tp!2348637 () Bool)

(assert (=> b!7891666 (= e!4658757 (and tp!2348634 tp!2348637))))

(declare-fun b!7891665 () Bool)

(declare-fun tp!2348635 () Bool)

(assert (=> b!7891665 (= e!4658757 tp!2348635)))

(declare-fun b!7891664 () Bool)

(declare-fun tp!2348636 () Bool)

(declare-fun tp!2348633 () Bool)

(assert (=> b!7891664 (= e!4658757 (and tp!2348636 tp!2348633))))

(assert (=> b!7891386 (= tp!2348525 e!4658757)))

(assert (= (and b!7891386 ((_ is ElementMatch!21213) (regOne!42938 (regTwo!42938 r!14100)))) b!7891663))

(assert (= (and b!7891386 ((_ is Concat!30058) (regOne!42938 (regTwo!42938 r!14100)))) b!7891664))

(assert (= (and b!7891386 ((_ is Star!21213) (regOne!42938 (regTwo!42938 r!14100)))) b!7891665))

(assert (= (and b!7891386 ((_ is Union!21213) (regOne!42938 (regTwo!42938 r!14100)))) b!7891666))

(declare-fun b!7891667 () Bool)

(declare-fun e!4658758 () Bool)

(assert (=> b!7891667 (= e!4658758 tp_is_empty!52825)))

(declare-fun b!7891670 () Bool)

(declare-fun tp!2348639 () Bool)

(declare-fun tp!2348642 () Bool)

(assert (=> b!7891670 (= e!4658758 (and tp!2348639 tp!2348642))))

(declare-fun b!7891669 () Bool)

(declare-fun tp!2348640 () Bool)

(assert (=> b!7891669 (= e!4658758 tp!2348640)))

(declare-fun b!7891668 () Bool)

(declare-fun tp!2348641 () Bool)

(declare-fun tp!2348638 () Bool)

(assert (=> b!7891668 (= e!4658758 (and tp!2348641 tp!2348638))))

(assert (=> b!7891386 (= tp!2348522 e!4658758)))

(assert (= (and b!7891386 ((_ is ElementMatch!21213) (regTwo!42938 (regTwo!42938 r!14100)))) b!7891667))

(assert (= (and b!7891386 ((_ is Concat!30058) (regTwo!42938 (regTwo!42938 r!14100)))) b!7891668))

(assert (= (and b!7891386 ((_ is Star!21213) (regTwo!42938 (regTwo!42938 r!14100)))) b!7891669))

(assert (= (and b!7891386 ((_ is Union!21213) (regTwo!42938 (regTwo!42938 r!14100)))) b!7891670))

(declare-fun b!7891671 () Bool)

(declare-fun e!4658759 () Bool)

(assert (=> b!7891671 (= e!4658759 tp_is_empty!52825)))

(declare-fun b!7891674 () Bool)

(declare-fun tp!2348644 () Bool)

(declare-fun tp!2348647 () Bool)

(assert (=> b!7891674 (= e!4658759 (and tp!2348644 tp!2348647))))

(declare-fun b!7891673 () Bool)

(declare-fun tp!2348645 () Bool)

(assert (=> b!7891673 (= e!4658759 tp!2348645)))

(declare-fun b!7891672 () Bool)

(declare-fun tp!2348646 () Bool)

(declare-fun tp!2348643 () Bool)

(assert (=> b!7891672 (= e!4658759 (and tp!2348646 tp!2348643))))

(assert (=> b!7891391 (= tp!2348529 e!4658759)))

(assert (= (and b!7891391 ((_ is ElementMatch!21213) (reg!21542 (reg!21542 r!14100)))) b!7891671))

(assert (= (and b!7891391 ((_ is Concat!30058) (reg!21542 (reg!21542 r!14100)))) b!7891672))

(assert (= (and b!7891391 ((_ is Star!21213) (reg!21542 (reg!21542 r!14100)))) b!7891673))

(assert (= (and b!7891391 ((_ is Union!21213) (reg!21542 (reg!21542 r!14100)))) b!7891674))

(declare-fun b!7891675 () Bool)

(declare-fun e!4658760 () Bool)

(assert (=> b!7891675 (= e!4658760 tp_is_empty!52825)))

(declare-fun b!7891678 () Bool)

(declare-fun tp!2348649 () Bool)

(declare-fun tp!2348652 () Bool)

(assert (=> b!7891678 (= e!4658760 (and tp!2348649 tp!2348652))))

(declare-fun b!7891677 () Bool)

(declare-fun tp!2348650 () Bool)

(assert (=> b!7891677 (= e!4658760 tp!2348650)))

(declare-fun b!7891676 () Bool)

(declare-fun tp!2348651 () Bool)

(declare-fun tp!2348648 () Bool)

(assert (=> b!7891676 (= e!4658760 (and tp!2348651 tp!2348648))))

(assert (=> b!7891390 (= tp!2348530 e!4658760)))

(assert (= (and b!7891390 ((_ is ElementMatch!21213) (regOne!42938 (reg!21542 r!14100)))) b!7891675))

(assert (= (and b!7891390 ((_ is Concat!30058) (regOne!42938 (reg!21542 r!14100)))) b!7891676))

(assert (= (and b!7891390 ((_ is Star!21213) (regOne!42938 (reg!21542 r!14100)))) b!7891677))

(assert (= (and b!7891390 ((_ is Union!21213) (regOne!42938 (reg!21542 r!14100)))) b!7891678))

(declare-fun b!7891679 () Bool)

(declare-fun e!4658761 () Bool)

(assert (=> b!7891679 (= e!4658761 tp_is_empty!52825)))

(declare-fun b!7891682 () Bool)

(declare-fun tp!2348654 () Bool)

(declare-fun tp!2348657 () Bool)

(assert (=> b!7891682 (= e!4658761 (and tp!2348654 tp!2348657))))

(declare-fun b!7891681 () Bool)

(declare-fun tp!2348655 () Bool)

(assert (=> b!7891681 (= e!4658761 tp!2348655)))

(declare-fun b!7891680 () Bool)

(declare-fun tp!2348656 () Bool)

(declare-fun tp!2348653 () Bool)

(assert (=> b!7891680 (= e!4658761 (and tp!2348656 tp!2348653))))

(assert (=> b!7891390 (= tp!2348527 e!4658761)))

(assert (= (and b!7891390 ((_ is ElementMatch!21213) (regTwo!42938 (reg!21542 r!14100)))) b!7891679))

(assert (= (and b!7891390 ((_ is Concat!30058) (regTwo!42938 (reg!21542 r!14100)))) b!7891680))

(assert (= (and b!7891390 ((_ is Star!21213) (regTwo!42938 (reg!21542 r!14100)))) b!7891681))

(assert (= (and b!7891390 ((_ is Union!21213) (regTwo!42938 (reg!21542 r!14100)))) b!7891682))

(declare-fun b!7891683 () Bool)

(declare-fun e!4658762 () Bool)

(declare-fun tp!2348658 () Bool)

(assert (=> b!7891683 (= e!4658762 (and tp_is_empty!52825 tp!2348658))))

(assert (=> b!7891407 (= tp!2348546 e!4658762)))

(assert (= (and b!7891407 ((_ is Cons!73946) (t!388805 (t!388805 (_2!38335 cut!3))))) b!7891683))

(declare-fun b!7891684 () Bool)

(declare-fun e!4658763 () Bool)

(assert (=> b!7891684 (= e!4658763 tp_is_empty!52825)))

(declare-fun b!7891687 () Bool)

(declare-fun tp!2348660 () Bool)

(declare-fun tp!2348663 () Bool)

(assert (=> b!7891687 (= e!4658763 (and tp!2348660 tp!2348663))))

(declare-fun b!7891686 () Bool)

(declare-fun tp!2348661 () Bool)

(assert (=> b!7891686 (= e!4658763 tp!2348661)))

(declare-fun b!7891685 () Bool)

(declare-fun tp!2348662 () Bool)

(declare-fun tp!2348659 () Bool)

(assert (=> b!7891685 (= e!4658763 (and tp!2348662 tp!2348659))))

(assert (=> b!7891380 (= tp!2348518 e!4658763)))

(assert (= (and b!7891380 ((_ is ElementMatch!21213) (regOne!42939 (regOne!42938 r!14100)))) b!7891684))

(assert (= (and b!7891380 ((_ is Concat!30058) (regOne!42939 (regOne!42938 r!14100)))) b!7891685))

(assert (= (and b!7891380 ((_ is Star!21213) (regOne!42939 (regOne!42938 r!14100)))) b!7891686))

(assert (= (and b!7891380 ((_ is Union!21213) (regOne!42939 (regOne!42938 r!14100)))) b!7891687))

(declare-fun b!7891688 () Bool)

(declare-fun e!4658764 () Bool)

(assert (=> b!7891688 (= e!4658764 tp_is_empty!52825)))

(declare-fun b!7891691 () Bool)

(declare-fun tp!2348665 () Bool)

(declare-fun tp!2348668 () Bool)

(assert (=> b!7891691 (= e!4658764 (and tp!2348665 tp!2348668))))

(declare-fun b!7891690 () Bool)

(declare-fun tp!2348666 () Bool)

(assert (=> b!7891690 (= e!4658764 tp!2348666)))

(declare-fun b!7891689 () Bool)

(declare-fun tp!2348667 () Bool)

(declare-fun tp!2348664 () Bool)

(assert (=> b!7891689 (= e!4658764 (and tp!2348667 tp!2348664))))

(assert (=> b!7891380 (= tp!2348521 e!4658764)))

(assert (= (and b!7891380 ((_ is ElementMatch!21213) (regTwo!42939 (regOne!42938 r!14100)))) b!7891688))

(assert (= (and b!7891380 ((_ is Concat!30058) (regTwo!42939 (regOne!42938 r!14100)))) b!7891689))

(assert (= (and b!7891380 ((_ is Star!21213) (regTwo!42939 (regOne!42938 r!14100)))) b!7891690))

(assert (= (and b!7891380 ((_ is Union!21213) (regTwo!42939 (regOne!42938 r!14100)))) b!7891691))

(declare-fun b!7891692 () Bool)

(declare-fun e!4658765 () Bool)

(assert (=> b!7891692 (= e!4658765 tp_is_empty!52825)))

(declare-fun b!7891695 () Bool)

(declare-fun tp!2348670 () Bool)

(declare-fun tp!2348673 () Bool)

(assert (=> b!7891695 (= e!4658765 (and tp!2348670 tp!2348673))))

(declare-fun b!7891694 () Bool)

(declare-fun tp!2348671 () Bool)

(assert (=> b!7891694 (= e!4658765 tp!2348671)))

(declare-fun b!7891693 () Bool)

(declare-fun tp!2348672 () Bool)

(declare-fun tp!2348669 () Bool)

(assert (=> b!7891693 (= e!4658765 (and tp!2348672 tp!2348669))))

(assert (=> b!7891388 (= tp!2348523 e!4658765)))

(assert (= (and b!7891388 ((_ is ElementMatch!21213) (regOne!42939 (regTwo!42938 r!14100)))) b!7891692))

(assert (= (and b!7891388 ((_ is Concat!30058) (regOne!42939 (regTwo!42938 r!14100)))) b!7891693))

(assert (= (and b!7891388 ((_ is Star!21213) (regOne!42939 (regTwo!42938 r!14100)))) b!7891694))

(assert (= (and b!7891388 ((_ is Union!21213) (regOne!42939 (regTwo!42938 r!14100)))) b!7891695))

(declare-fun b!7891696 () Bool)

(declare-fun e!4658766 () Bool)

(assert (=> b!7891696 (= e!4658766 tp_is_empty!52825)))

(declare-fun b!7891699 () Bool)

(declare-fun tp!2348675 () Bool)

(declare-fun tp!2348678 () Bool)

(assert (=> b!7891699 (= e!4658766 (and tp!2348675 tp!2348678))))

(declare-fun b!7891698 () Bool)

(declare-fun tp!2348676 () Bool)

(assert (=> b!7891698 (= e!4658766 tp!2348676)))

(declare-fun b!7891697 () Bool)

(declare-fun tp!2348677 () Bool)

(declare-fun tp!2348674 () Bool)

(assert (=> b!7891697 (= e!4658766 (and tp!2348677 tp!2348674))))

(assert (=> b!7891388 (= tp!2348526 e!4658766)))

(assert (= (and b!7891388 ((_ is ElementMatch!21213) (regTwo!42939 (regTwo!42938 r!14100)))) b!7891696))

(assert (= (and b!7891388 ((_ is Concat!30058) (regTwo!42939 (regTwo!42938 r!14100)))) b!7891697))

(assert (= (and b!7891388 ((_ is Star!21213) (regTwo!42939 (regTwo!42938 r!14100)))) b!7891698))

(assert (= (and b!7891388 ((_ is Union!21213) (regTwo!42939 (regTwo!42938 r!14100)))) b!7891699))

(declare-fun b!7891700 () Bool)

(declare-fun e!4658767 () Bool)

(assert (=> b!7891700 (= e!4658767 tp_is_empty!52825)))

(declare-fun b!7891703 () Bool)

(declare-fun tp!2348680 () Bool)

(declare-fun tp!2348683 () Bool)

(assert (=> b!7891703 (= e!4658767 (and tp!2348680 tp!2348683))))

(declare-fun b!7891702 () Bool)

(declare-fun tp!2348681 () Bool)

(assert (=> b!7891702 (= e!4658767 tp!2348681)))

(declare-fun b!7891701 () Bool)

(declare-fun tp!2348682 () Bool)

(declare-fun tp!2348679 () Bool)

(assert (=> b!7891701 (= e!4658767 (and tp!2348682 tp!2348679))))

(assert (=> b!7891379 (= tp!2348519 e!4658767)))

(assert (= (and b!7891379 ((_ is ElementMatch!21213) (reg!21542 (regOne!42938 r!14100)))) b!7891700))

(assert (= (and b!7891379 ((_ is Concat!30058) (reg!21542 (regOne!42938 r!14100)))) b!7891701))

(assert (= (and b!7891379 ((_ is Star!21213) (reg!21542 (regOne!42938 r!14100)))) b!7891702))

(assert (= (and b!7891379 ((_ is Union!21213) (reg!21542 (regOne!42938 r!14100)))) b!7891703))

(declare-fun b!7891704 () Bool)

(declare-fun e!4658768 () Bool)

(assert (=> b!7891704 (= e!4658768 tp_is_empty!52825)))

(declare-fun b!7891707 () Bool)

(declare-fun tp!2348685 () Bool)

(declare-fun tp!2348688 () Bool)

(assert (=> b!7891707 (= e!4658768 (and tp!2348685 tp!2348688))))

(declare-fun b!7891706 () Bool)

(declare-fun tp!2348686 () Bool)

(assert (=> b!7891706 (= e!4658768 tp!2348686)))

(declare-fun b!7891705 () Bool)

(declare-fun tp!2348687 () Bool)

(declare-fun tp!2348684 () Bool)

(assert (=> b!7891705 (= e!4658768 (and tp!2348687 tp!2348684))))

(assert (=> b!7891401 (= tp!2348538 e!4658768)))

(assert (= (and b!7891401 ((_ is ElementMatch!21213) (reg!21542 (regOne!42939 r!14100)))) b!7891704))

(assert (= (and b!7891401 ((_ is Concat!30058) (reg!21542 (regOne!42939 r!14100)))) b!7891705))

(assert (= (and b!7891401 ((_ is Star!21213) (reg!21542 (regOne!42939 r!14100)))) b!7891706))

(assert (= (and b!7891401 ((_ is Union!21213) (reg!21542 (regOne!42939 r!14100)))) b!7891707))

(declare-fun b!7891708 () Bool)

(declare-fun e!4658769 () Bool)

(assert (=> b!7891708 (= e!4658769 tp_is_empty!52825)))

(declare-fun b!7891711 () Bool)

(declare-fun tp!2348690 () Bool)

(declare-fun tp!2348693 () Bool)

(assert (=> b!7891711 (= e!4658769 (and tp!2348690 tp!2348693))))

(declare-fun b!7891710 () Bool)

(declare-fun tp!2348691 () Bool)

(assert (=> b!7891710 (= e!4658769 tp!2348691)))

(declare-fun b!7891709 () Bool)

(declare-fun tp!2348692 () Bool)

(declare-fun tp!2348689 () Bool)

(assert (=> b!7891709 (= e!4658769 (and tp!2348692 tp!2348689))))

(assert (=> b!7891400 (= tp!2348539 e!4658769)))

(assert (= (and b!7891400 ((_ is ElementMatch!21213) (regOne!42938 (regOne!42939 r!14100)))) b!7891708))

(assert (= (and b!7891400 ((_ is Concat!30058) (regOne!42938 (regOne!42939 r!14100)))) b!7891709))

(assert (= (and b!7891400 ((_ is Star!21213) (regOne!42938 (regOne!42939 r!14100)))) b!7891710))

(assert (= (and b!7891400 ((_ is Union!21213) (regOne!42938 (regOne!42939 r!14100)))) b!7891711))

(declare-fun b!7891712 () Bool)

(declare-fun e!4658770 () Bool)

(assert (=> b!7891712 (= e!4658770 tp_is_empty!52825)))

(declare-fun b!7891715 () Bool)

(declare-fun tp!2348695 () Bool)

(declare-fun tp!2348698 () Bool)

(assert (=> b!7891715 (= e!4658770 (and tp!2348695 tp!2348698))))

(declare-fun b!7891714 () Bool)

(declare-fun tp!2348696 () Bool)

(assert (=> b!7891714 (= e!4658770 tp!2348696)))

(declare-fun b!7891713 () Bool)

(declare-fun tp!2348697 () Bool)

(declare-fun tp!2348694 () Bool)

(assert (=> b!7891713 (= e!4658770 (and tp!2348697 tp!2348694))))

(assert (=> b!7891400 (= tp!2348536 e!4658770)))

(assert (= (and b!7891400 ((_ is ElementMatch!21213) (regTwo!42938 (regOne!42939 r!14100)))) b!7891712))

(assert (= (and b!7891400 ((_ is Concat!30058) (regTwo!42938 (regOne!42939 r!14100)))) b!7891713))

(assert (= (and b!7891400 ((_ is Star!21213) (regTwo!42938 (regOne!42939 r!14100)))) b!7891714))

(assert (= (and b!7891400 ((_ is Union!21213) (regTwo!42938 (regOne!42939 r!14100)))) b!7891715))

(declare-fun b!7891716 () Bool)

(declare-fun e!4658771 () Bool)

(assert (=> b!7891716 (= e!4658771 tp_is_empty!52825)))

(declare-fun b!7891719 () Bool)

(declare-fun tp!2348700 () Bool)

(declare-fun tp!2348703 () Bool)

(assert (=> b!7891719 (= e!4658771 (and tp!2348700 tp!2348703))))

(declare-fun b!7891718 () Bool)

(declare-fun tp!2348701 () Bool)

(assert (=> b!7891718 (= e!4658771 tp!2348701)))

(declare-fun b!7891717 () Bool)

(declare-fun tp!2348702 () Bool)

(declare-fun tp!2348699 () Bool)

(assert (=> b!7891717 (= e!4658771 (and tp!2348702 tp!2348699))))

(assert (=> b!7891405 (= tp!2348543 e!4658771)))

(assert (= (and b!7891405 ((_ is ElementMatch!21213) (reg!21542 (regTwo!42939 r!14100)))) b!7891716))

(assert (= (and b!7891405 ((_ is Concat!30058) (reg!21542 (regTwo!42939 r!14100)))) b!7891717))

(assert (= (and b!7891405 ((_ is Star!21213) (reg!21542 (regTwo!42939 r!14100)))) b!7891718))

(assert (= (and b!7891405 ((_ is Union!21213) (reg!21542 (regTwo!42939 r!14100)))) b!7891719))

(declare-fun b!7891720 () Bool)

(declare-fun e!4658772 () Bool)

(assert (=> b!7891720 (= e!4658772 tp_is_empty!52825)))

(declare-fun b!7891723 () Bool)

(declare-fun tp!2348705 () Bool)

(declare-fun tp!2348708 () Bool)

(assert (=> b!7891723 (= e!4658772 (and tp!2348705 tp!2348708))))

(declare-fun b!7891722 () Bool)

(declare-fun tp!2348706 () Bool)

(assert (=> b!7891722 (= e!4658772 tp!2348706)))

(declare-fun b!7891721 () Bool)

(declare-fun tp!2348707 () Bool)

(declare-fun tp!2348704 () Bool)

(assert (=> b!7891721 (= e!4658772 (and tp!2348707 tp!2348704))))

(assert (=> b!7891404 (= tp!2348544 e!4658772)))

(assert (= (and b!7891404 ((_ is ElementMatch!21213) (regOne!42938 (regTwo!42939 r!14100)))) b!7891720))

(assert (= (and b!7891404 ((_ is Concat!30058) (regOne!42938 (regTwo!42939 r!14100)))) b!7891721))

(assert (= (and b!7891404 ((_ is Star!21213) (regOne!42938 (regTwo!42939 r!14100)))) b!7891722))

(assert (= (and b!7891404 ((_ is Union!21213) (regOne!42938 (regTwo!42939 r!14100)))) b!7891723))

(declare-fun b!7891724 () Bool)

(declare-fun e!4658773 () Bool)

(assert (=> b!7891724 (= e!4658773 tp_is_empty!52825)))

(declare-fun b!7891727 () Bool)

(declare-fun tp!2348710 () Bool)

(declare-fun tp!2348713 () Bool)

(assert (=> b!7891727 (= e!4658773 (and tp!2348710 tp!2348713))))

(declare-fun b!7891726 () Bool)

(declare-fun tp!2348711 () Bool)

(assert (=> b!7891726 (= e!4658773 tp!2348711)))

(declare-fun b!7891725 () Bool)

(declare-fun tp!2348712 () Bool)

(declare-fun tp!2348709 () Bool)

(assert (=> b!7891725 (= e!4658773 (and tp!2348712 tp!2348709))))

(assert (=> b!7891404 (= tp!2348541 e!4658773)))

(assert (= (and b!7891404 ((_ is ElementMatch!21213) (regTwo!42938 (regTwo!42939 r!14100)))) b!7891724))

(assert (= (and b!7891404 ((_ is Concat!30058) (regTwo!42938 (regTwo!42939 r!14100)))) b!7891725))

(assert (= (and b!7891404 ((_ is Star!21213) (regTwo!42938 (regTwo!42939 r!14100)))) b!7891726))

(assert (= (and b!7891404 ((_ is Union!21213) (regTwo!42938 (regTwo!42939 r!14100)))) b!7891727))

(declare-fun b!7891728 () Bool)

(declare-fun e!4658774 () Bool)

(declare-fun tp!2348714 () Bool)

(assert (=> b!7891728 (= e!4658774 (and tp_is_empty!52825 tp!2348714))))

(assert (=> b!7891397 (= tp!2348534 e!4658774)))

(assert (= (and b!7891397 ((_ is Cons!73946) (t!388805 (t!388805 s!9586)))) b!7891728))

(check-sat (not d!2357009) (not b!7891695) (not b!7891693) (not b!7891701) (not b!7891705) (not b!7891653) (not bm!732431) (not bm!732424) (not b!7891681) (not b!7891652) (not b!7891642) (not b!7891561) (not b!7891710) (not bm!732435) (not bm!732472) (not bm!732483) (not b!7891629) (not b!7891673) (not bm!732484) (not b!7891475) (not b!7891703) (not b!7891660) (not b!7891638) (not bm!732480) (not b!7891668) (not bm!732457) (not bm!732450) (not b!7891685) (not bm!732453) (not b!7891728) (not bm!732430) (not bm!732467) (not b!7891694) (not b!7891680) (not b!7891662) (not bm!732442) (not b!7891549) (not bm!732468) (not bm!732462) (not bm!732444) (not b!7891665) (not b!7891726) (not d!2357011) (not b!7891678) (not b!7891717) (not bm!732438) (not b!7891702) (not bm!732432) (not b!7891473) (not bm!732463) (not b!7891648) (not b!7891547) (not b!7891697) (not b!7891725) (not bm!732477) (not bm!732458) (not b!7891644) (not b!7891654) (not bm!732473) (not bm!732485) (not b!7891677) (not bm!732443) (not bm!732437) (not bm!732446) (not b!7891641) (not bm!732460) (not bm!732439) (not b!7891707) (not b!7891722) (not bm!732479) (not b!7891580) (not b!7891683) (not b!7891727) (not b!7891715) (not b!7891711) (not b!7891686) (not b!7891709) (not b!7891713) (not b!7891721) (not b!7891646) (not b!7891649) (not b!7891682) (not b!7891626) (not b!7891706) (not b!7891634) (not bm!732466) (not bm!732478) (not b!7891714) (not b!7891676) (not b!7891636) (not b!7891550) (not bm!732461) (not b!7891718) (not bm!732436) (not bm!732456) (not b!7891560) (not b!7891628) (not bm!732425) (not b!7891640) (not b!7891690) (not b!7891658) (not b!7891471) (not b!7891672) (not b!7891666) (not b!7891657) (not b!7891674) tp_is_empty!52825 (not bm!732476) (not b!7891699) (not bm!732471) (not b!7891670) (not b!7891691) (not bm!732452) (not b!7891719) (not b!7891698) (not b!7891664) (not b!7891689) (not b!7891723) (not b!7891669) (not b!7891528) (not bm!732449) (not b!7891637) (not b!7891645) (not b!7891632) (not b!7891625) (not bm!732429) (not bm!732428) (not b!7891656) (not b!7891661) (not b!7891650) (not b!7891687) (not b!7891633) (not b!7891630) (not bm!732470) (not bm!732445) (not bm!732451))
(check-sat)
