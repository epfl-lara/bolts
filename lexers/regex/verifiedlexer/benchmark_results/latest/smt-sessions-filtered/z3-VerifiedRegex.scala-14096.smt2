; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742314 () Bool)

(assert start!742314)

(declare-fun b!7835433 () Bool)

(declare-fun e!4633370 () Bool)

(declare-fun e!4633367 () Bool)

(assert (=> b!7835433 (= e!4633370 e!4633367)))

(declare-fun res!3116528 () Bool)

(assert (=> b!7835433 (=> (not res!3116528) (not e!4633367))))

(declare-datatypes ((C!42300 0))(
  ( (C!42301 (val!31590 Int)) )
))
(declare-datatypes ((List!73824 0))(
  ( (Nil!73700) (Cons!73700 (h!80148 C!42300) (t!388559 List!73824)) )
))
(declare-fun lt!2677704 () List!73824)

(declare-fun s!14274 () List!73824)

(assert (=> b!7835433 (= res!3116528 (= lt!2677704 s!14274))))

(declare-fun s1!4101 () List!73824)

(declare-fun s2!3721 () List!73824)

(declare-fun ++!18021 (List!73824 List!73824) List!73824)

(assert (=> b!7835433 (= lt!2677704 (++!18021 s1!4101 s2!3721))))

(declare-fun b!7835434 () Bool)

(declare-datatypes ((Unit!168784 0))(
  ( (Unit!168785) )
))
(declare-fun e!4633364 () Unit!168784)

(declare-fun Unit!168786 () Unit!168784)

(assert (=> b!7835434 (= e!4633364 Unit!168786)))

(declare-fun b!7835435 () Bool)

(declare-fun e!4633366 () Bool)

(assert (=> b!7835435 (= e!4633367 e!4633366)))

(declare-fun res!3116533 () Bool)

(assert (=> b!7835435 (=> (not res!3116533) (not e!4633366))))

(declare-fun lt!2677694 () List!73824)

(assert (=> b!7835435 (= res!3116533 (= lt!2677694 s!14274))))

(declare-fun s1Rec!453 () List!73824)

(declare-fun s2Rec!453 () List!73824)

(assert (=> b!7835435 (= lt!2677694 (++!18021 s1Rec!453 s2Rec!453))))

(declare-fun b!7835436 () Bool)

(declare-fun e!4633365 () Bool)

(declare-fun tp_is_empty!52329 () Bool)

(declare-fun tp!2317921 () Bool)

(assert (=> b!7835436 (= e!4633365 (and tp_is_empty!52329 tp!2317921))))

(declare-fun b!7835437 () Bool)

(declare-fun res!3116529 () Bool)

(assert (=> b!7835437 (=> (not res!3116529) (not e!4633366))))

(get-info :version)

(assert (=> b!7835437 (= res!3116529 (not ((_ is Nil!73700) s2Rec!453)))))

(declare-fun b!7835438 () Bool)

(declare-fun e!4633359 () Bool)

(declare-fun tp!2317915 () Bool)

(assert (=> b!7835438 (= e!4633359 tp!2317915)))

(declare-fun b!7835439 () Bool)

(declare-fun e!4633361 () Bool)

(declare-fun lt!2677701 () List!73824)

(declare-fun lt!2677705 () Int)

(declare-fun size!42777 (List!73824) Int)

(assert (=> b!7835439 (= e!4633361 (<= (size!42777 lt!2677701) lt!2677705))))

(declare-fun b!7835441 () Bool)

(declare-fun e!4633368 () Bool)

(assert (=> b!7835441 (= e!4633368 tp_is_empty!52329)))

(declare-fun b!7835442 () Bool)

(declare-fun res!3116527 () Bool)

(assert (=> b!7835442 (=> (not res!3116527) (not e!4633366))))

(declare-datatypes ((Regex!20987 0))(
  ( (ElementMatch!20987 (c!1440938 C!42300)) (Concat!29832 (regOne!42486 Regex!20987) (regTwo!42486 Regex!20987)) (EmptyExpr!20987) (Star!20987 (reg!21316 Regex!20987)) (EmptyLang!20987) (Union!20987 (regOne!42487 Regex!20987) (regTwo!42487 Regex!20987)) )
))
(declare-fun r1!6261 () Regex!20987)

(declare-fun matchR!10443 (Regex!20987 List!73824) Bool)

(assert (=> b!7835442 (= res!3116527 (matchR!10443 r1!6261 s1!4101))))

(declare-fun b!7835443 () Bool)

(declare-fun tp!2317912 () Bool)

(declare-fun tp!2317908 () Bool)

(assert (=> b!7835443 (= e!4633368 (and tp!2317912 tp!2317908))))

(declare-fun b!7835444 () Bool)

(declare-fun res!3116534 () Bool)

(assert (=> b!7835444 (=> (not res!3116534) (not e!4633366))))

(declare-fun r2!6199 () Regex!20987)

(assert (=> b!7835444 (= res!3116534 (matchR!10443 r2!6199 s2!3721))))

(declare-fun b!7835445 () Bool)

(declare-fun tp!2317913 () Bool)

(assert (=> b!7835445 (= e!4633368 tp!2317913)))

(declare-fun b!7835446 () Bool)

(declare-fun e!4633360 () Unit!168784)

(declare-fun Unit!168787 () Unit!168784)

(assert (=> b!7835446 (= e!4633360 Unit!168787)))

(declare-fun b!7835447 () Bool)

(declare-fun e!4633363 () Bool)

(declare-fun tp!2317920 () Bool)

(assert (=> b!7835447 (= e!4633363 (and tp_is_empty!52329 tp!2317920))))

(declare-fun b!7835448 () Bool)

(declare-fun res!3116530 () Bool)

(assert (=> b!7835448 (=> res!3116530 e!4633361)))

(declare-fun isPrefix!6337 (List!73824 List!73824) Bool)

(assert (=> b!7835448 (= res!3116530 (not (isPrefix!6337 lt!2677701 s!14274)))))

(declare-fun b!7835449 () Bool)

(declare-fun res!3116532 () Bool)

(assert (=> b!7835449 (=> (not res!3116532) (not e!4633366))))

(declare-fun e!4633369 () Bool)

(assert (=> b!7835449 (= res!3116532 e!4633369)))

(declare-fun res!3116536 () Bool)

(assert (=> b!7835449 (=> res!3116536 e!4633369)))

(assert (=> b!7835449 (= res!3116536 (not (matchR!10443 r1!6261 s1Rec!453)))))

(declare-fun b!7835450 () Bool)

(declare-fun res!3116537 () Bool)

(assert (=> b!7835450 (=> (not res!3116537) (not e!4633370))))

(declare-fun validRegex!11401 (Regex!20987) Bool)

(assert (=> b!7835450 (= res!3116537 (validRegex!11401 r2!6199))))

(declare-fun b!7835451 () Bool)

(declare-fun e!4633362 () Bool)

(declare-fun tp!2317914 () Bool)

(assert (=> b!7835451 (= e!4633362 (and tp_is_empty!52329 tp!2317914))))

(declare-fun b!7835452 () Bool)

(declare-fun res!3116535 () Bool)

(assert (=> b!7835452 (=> (not res!3116535) (not e!4633367))))

(assert (=> b!7835452 (= res!3116535 (isPrefix!6337 s1Rec!453 s1!4101))))

(declare-fun b!7835453 () Bool)

(declare-fun tp!2317917 () Bool)

(declare-fun tp!2317919 () Bool)

(assert (=> b!7835453 (= e!4633359 (and tp!2317917 tp!2317919))))

(declare-fun b!7835454 () Bool)

(assert (=> b!7835454 (= e!4633366 (not e!4633361))))

(declare-fun res!3116538 () Bool)

(assert (=> b!7835454 (=> res!3116538 e!4633361)))

(assert (=> b!7835454 (= res!3116538 (not (isPrefix!6337 s1!4101 s!14274)))))

(declare-fun lt!2677693 () Unit!168784)

(assert (=> b!7835454 (= lt!2677693 e!4633364)))

(declare-fun c!1440936 () Bool)

(declare-fun lt!2677699 () Int)

(assert (=> b!7835454 (= c!1440936 (= lt!2677699 lt!2677705))))

(assert (=> b!7835454 (= lt!2677705 (size!42777 s1!4101))))

(assert (=> b!7835454 (= lt!2677699 (size!42777 s1Rec!453))))

(declare-fun lt!2677695 () List!73824)

(assert (=> b!7835454 (isPrefix!6337 lt!2677701 lt!2677695)))

(declare-fun lt!2677702 () Unit!168784)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3783 (List!73824 List!73824) Unit!168784)

(assert (=> b!7835454 (= lt!2677702 (lemmaConcatTwoListThenFirstIsPrefix!3783 lt!2677701 (t!388559 s2Rec!453)))))

(assert (=> b!7835454 (= lt!2677695 s!14274)))

(assert (=> b!7835454 (= lt!2677695 (++!18021 lt!2677701 (t!388559 s2Rec!453)))))

(assert (=> b!7835454 (= lt!2677701 (++!18021 s1Rec!453 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)))))

(declare-fun lt!2677703 () Unit!168784)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3448 (List!73824 C!42300 List!73824 List!73824) Unit!168784)

(assert (=> b!7835454 (= lt!2677703 (lemmaMoveElementToOtherListKeepsConcatEq!3448 s1Rec!453 (h!80148 s2Rec!453) (t!388559 s2Rec!453) s!14274))))

(declare-fun lt!2677706 () Unit!168784)

(assert (=> b!7835454 (= lt!2677706 e!4633360)))

(declare-fun c!1440937 () Bool)

(assert (=> b!7835454 (= c!1440937 (= s1Rec!453 s1!4101))))

(assert (=> b!7835454 (isPrefix!6337 s1Rec!453 lt!2677694)))

(declare-fun lt!2677697 () Unit!168784)

(assert (=> b!7835454 (= lt!2677697 (lemmaConcatTwoListThenFirstIsPrefix!3783 s1Rec!453 s2Rec!453))))

(assert (=> b!7835454 (isPrefix!6337 s1!4101 lt!2677704)))

(declare-fun lt!2677696 () Unit!168784)

(assert (=> b!7835454 (= lt!2677696 (lemmaConcatTwoListThenFirstIsPrefix!3783 s1!4101 s2!3721))))

(declare-fun b!7835455 () Bool)

(assert (=> b!7835455 (= e!4633359 tp_is_empty!52329)))

(declare-fun b!7835456 () Bool)

(declare-fun tp!2317910 () Bool)

(declare-fun tp!2317909 () Bool)

(assert (=> b!7835456 (= e!4633368 (and tp!2317910 tp!2317909))))

(declare-fun b!7835457 () Bool)

(declare-fun Unit!168788 () Unit!168784)

(assert (=> b!7835457 (= e!4633360 Unit!168788)))

(declare-fun lt!2677698 () Unit!168784)

(declare-fun lemmaSamePrefixThenSameSuffix!2921 (List!73824 List!73824 List!73824 List!73824 List!73824) Unit!168784)

(assert (=> b!7835457 (= lt!2677698 (lemmaSamePrefixThenSameSuffix!2921 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7835457 false))

(declare-fun b!7835458 () Bool)

(declare-fun Unit!168789 () Unit!168784)

(assert (=> b!7835458 (= e!4633364 Unit!168789)))

(declare-fun lt!2677700 () Unit!168784)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1553 (List!73824 List!73824 List!73824) Unit!168784)

(assert (=> b!7835458 (= lt!2677700 (lemmaIsPrefixSameLengthThenSameList!1553 s1!4101 s1Rec!453 s!14274))))

(assert (=> b!7835458 false))

(declare-fun b!7835459 () Bool)

(declare-fun e!4633358 () Bool)

(declare-fun tp!2317918 () Bool)

(assert (=> b!7835459 (= e!4633358 (and tp_is_empty!52329 tp!2317918))))

(declare-fun res!3116531 () Bool)

(assert (=> start!742314 (=> (not res!3116531) (not e!4633370))))

(assert (=> start!742314 (= res!3116531 (validRegex!11401 r1!6261))))

(assert (=> start!742314 e!4633370))

(assert (=> start!742314 e!4633359))

(assert (=> start!742314 e!4633362))

(assert (=> start!742314 e!4633365))

(assert (=> start!742314 e!4633363))

(assert (=> start!742314 e!4633358))

(assert (=> start!742314 e!4633368))

(declare-fun e!4633371 () Bool)

(assert (=> start!742314 e!4633371))

(declare-fun b!7835440 () Bool)

(assert (=> b!7835440 (= e!4633369 (not (matchR!10443 r2!6199 s2Rec!453)))))

(declare-fun b!7835460 () Bool)

(declare-fun tp!2317911 () Bool)

(assert (=> b!7835460 (= e!4633371 (and tp_is_empty!52329 tp!2317911))))

(declare-fun b!7835461 () Bool)

(declare-fun tp!2317907 () Bool)

(declare-fun tp!2317916 () Bool)

(assert (=> b!7835461 (= e!4633359 (and tp!2317907 tp!2317916))))

(assert (= (and start!742314 res!3116531) b!7835450))

(assert (= (and b!7835450 res!3116537) b!7835433))

(assert (= (and b!7835433 res!3116528) b!7835452))

(assert (= (and b!7835452 res!3116535) b!7835435))

(assert (= (and b!7835435 res!3116533) b!7835442))

(assert (= (and b!7835442 res!3116527) b!7835444))

(assert (= (and b!7835444 res!3116534) b!7835449))

(assert (= (and b!7835449 (not res!3116536)) b!7835440))

(assert (= (and b!7835449 res!3116532) b!7835437))

(assert (= (and b!7835437 res!3116529) b!7835454))

(assert (= (and b!7835454 c!1440937) b!7835457))

(assert (= (and b!7835454 (not c!1440937)) b!7835446))

(assert (= (and b!7835454 c!1440936) b!7835458))

(assert (= (and b!7835454 (not c!1440936)) b!7835434))

(assert (= (and b!7835454 (not res!3116538)) b!7835448))

(assert (= (and b!7835448 (not res!3116530)) b!7835439))

(assert (= (and start!742314 ((_ is ElementMatch!20987) r2!6199)) b!7835455))

(assert (= (and start!742314 ((_ is Concat!29832) r2!6199)) b!7835461))

(assert (= (and start!742314 ((_ is Star!20987) r2!6199)) b!7835438))

(assert (= (and start!742314 ((_ is Union!20987) r2!6199)) b!7835453))

(assert (= (and start!742314 ((_ is Cons!73700) s1!4101)) b!7835451))

(assert (= (and start!742314 ((_ is Cons!73700) s2!3721)) b!7835436))

(assert (= (and start!742314 ((_ is Cons!73700) s2Rec!453)) b!7835447))

(assert (= (and start!742314 ((_ is Cons!73700) s!14274)) b!7835459))

(assert (= (and start!742314 ((_ is ElementMatch!20987) r1!6261)) b!7835441))

(assert (= (and start!742314 ((_ is Concat!29832) r1!6261)) b!7835456))

(assert (= (and start!742314 ((_ is Star!20987) r1!6261)) b!7835445))

(assert (= (and start!742314 ((_ is Union!20987) r1!6261)) b!7835443))

(assert (= (and start!742314 ((_ is Cons!73700) s1Rec!453)) b!7835460))

(declare-fun m!8250604 () Bool)

(assert (=> b!7835449 m!8250604))

(declare-fun m!8250606 () Bool)

(assert (=> b!7835433 m!8250606))

(declare-fun m!8250608 () Bool)

(assert (=> b!7835440 m!8250608))

(declare-fun m!8250610 () Bool)

(assert (=> b!7835439 m!8250610))

(declare-fun m!8250612 () Bool)

(assert (=> b!7835452 m!8250612))

(declare-fun m!8250614 () Bool)

(assert (=> b!7835450 m!8250614))

(declare-fun m!8250616 () Bool)

(assert (=> b!7835444 m!8250616))

(declare-fun m!8250618 () Bool)

(assert (=> b!7835454 m!8250618))

(declare-fun m!8250620 () Bool)

(assert (=> b!7835454 m!8250620))

(declare-fun m!8250622 () Bool)

(assert (=> b!7835454 m!8250622))

(declare-fun m!8250624 () Bool)

(assert (=> b!7835454 m!8250624))

(declare-fun m!8250626 () Bool)

(assert (=> b!7835454 m!8250626))

(declare-fun m!8250628 () Bool)

(assert (=> b!7835454 m!8250628))

(declare-fun m!8250630 () Bool)

(assert (=> b!7835454 m!8250630))

(declare-fun m!8250632 () Bool)

(assert (=> b!7835454 m!8250632))

(declare-fun m!8250634 () Bool)

(assert (=> b!7835454 m!8250634))

(declare-fun m!8250636 () Bool)

(assert (=> b!7835454 m!8250636))

(declare-fun m!8250638 () Bool)

(assert (=> b!7835454 m!8250638))

(declare-fun m!8250640 () Bool)

(assert (=> b!7835454 m!8250640))

(declare-fun m!8250642 () Bool)

(assert (=> b!7835458 m!8250642))

(declare-fun m!8250644 () Bool)

(assert (=> b!7835442 m!8250644))

(declare-fun m!8250646 () Bool)

(assert (=> start!742314 m!8250646))

(declare-fun m!8250648 () Bool)

(assert (=> b!7835435 m!8250648))

(declare-fun m!8250650 () Bool)

(assert (=> b!7835457 m!8250650))

(declare-fun m!8250652 () Bool)

(assert (=> b!7835448 m!8250652))

(check-sat (not b!7835456) (not b!7835442) (not b!7835454) (not b!7835451) (not b!7835460) (not b!7835453) (not b!7835449) (not b!7835458) (not b!7835439) (not b!7835447) (not b!7835438) tp_is_empty!52329 (not b!7835457) (not start!742314) (not b!7835433) (not b!7835444) (not b!7835452) (not b!7835435) (not b!7835461) (not b!7835450) (not b!7835445) (not b!7835436) (not b!7835448) (not b!7835443) (not b!7835440) (not b!7835459))
(check-sat)
(get-model)

(declare-fun b!7835484 () Bool)

(declare-fun e!4633386 () Bool)

(declare-fun tail!15535 (List!73824) List!73824)

(assert (=> b!7835484 (= e!4633386 (isPrefix!6337 (tail!15535 s1Rec!453) (tail!15535 s1!4101)))))

(declare-fun b!7835483 () Bool)

(declare-fun res!3116555 () Bool)

(assert (=> b!7835483 (=> (not res!3116555) (not e!4633386))))

(declare-fun head!15994 (List!73824) C!42300)

(assert (=> b!7835483 (= res!3116555 (= (head!15994 s1Rec!453) (head!15994 s1!4101)))))

(declare-fun b!7835482 () Bool)

(declare-fun e!4633384 () Bool)

(assert (=> b!7835482 (= e!4633384 e!4633386)))

(declare-fun res!3116556 () Bool)

(assert (=> b!7835482 (=> (not res!3116556) (not e!4633386))))

(assert (=> b!7835482 (= res!3116556 (not ((_ is Nil!73700) s1!4101)))))

(declare-fun d!2351275 () Bool)

(declare-fun e!4633385 () Bool)

(assert (=> d!2351275 e!4633385))

(declare-fun res!3116553 () Bool)

(assert (=> d!2351275 (=> res!3116553 e!4633385)))

(declare-fun lt!2677712 () Bool)

(assert (=> d!2351275 (= res!3116553 (not lt!2677712))))

(assert (=> d!2351275 (= lt!2677712 e!4633384)))

(declare-fun res!3116554 () Bool)

(assert (=> d!2351275 (=> res!3116554 e!4633384)))

(assert (=> d!2351275 (= res!3116554 ((_ is Nil!73700) s1Rec!453))))

(assert (=> d!2351275 (= (isPrefix!6337 s1Rec!453 s1!4101) lt!2677712)))

(declare-fun b!7835485 () Bool)

(assert (=> b!7835485 (= e!4633385 (>= (size!42777 s1!4101) (size!42777 s1Rec!453)))))

(assert (= (and d!2351275 (not res!3116554)) b!7835482))

(assert (= (and b!7835482 res!3116556) b!7835483))

(assert (= (and b!7835483 res!3116555) b!7835484))

(assert (= (and d!2351275 (not res!3116553)) b!7835485))

(declare-fun m!8250666 () Bool)

(assert (=> b!7835484 m!8250666))

(declare-fun m!8250668 () Bool)

(assert (=> b!7835484 m!8250668))

(assert (=> b!7835484 m!8250666))

(assert (=> b!7835484 m!8250668))

(declare-fun m!8250670 () Bool)

(assert (=> b!7835484 m!8250670))

(declare-fun m!8250672 () Bool)

(assert (=> b!7835483 m!8250672))

(declare-fun m!8250674 () Bool)

(assert (=> b!7835483 m!8250674))

(assert (=> b!7835485 m!8250630))

(assert (=> b!7835485 m!8250634))

(assert (=> b!7835452 d!2351275))

(declare-fun b!7835562 () Bool)

(declare-fun e!4633429 () Bool)

(assert (=> b!7835562 (= e!4633429 (= (head!15994 s1!4101) (c!1440938 r1!6261)))))

(declare-fun bm!726419 () Bool)

(declare-fun call!726424 () Bool)

(declare-fun isEmpty!42295 (List!73824) Bool)

(assert (=> bm!726419 (= call!726424 (isEmpty!42295 s1!4101))))

(declare-fun d!2351279 () Bool)

(declare-fun e!4633427 () Bool)

(assert (=> d!2351279 e!4633427))

(declare-fun c!1440960 () Bool)

(assert (=> d!2351279 (= c!1440960 ((_ is EmptyExpr!20987) r1!6261))))

(declare-fun lt!2677721 () Bool)

(declare-fun e!4633425 () Bool)

(assert (=> d!2351279 (= lt!2677721 e!4633425)))

(declare-fun c!1440962 () Bool)

(assert (=> d!2351279 (= c!1440962 (isEmpty!42295 s1!4101))))

(assert (=> d!2351279 (validRegex!11401 r1!6261)))

(assert (=> d!2351279 (= (matchR!10443 r1!6261 s1!4101) lt!2677721)))

(declare-fun b!7835563 () Bool)

(declare-fun res!3116600 () Bool)

(declare-fun e!4633428 () Bool)

(assert (=> b!7835563 (=> res!3116600 e!4633428)))

(assert (=> b!7835563 (= res!3116600 (not ((_ is ElementMatch!20987) r1!6261)))))

(declare-fun e!4633431 () Bool)

(assert (=> b!7835563 (= e!4633431 e!4633428)))

(declare-fun b!7835564 () Bool)

(declare-fun e!4633426 () Bool)

(assert (=> b!7835564 (= e!4633428 e!4633426)))

(declare-fun res!3116598 () Bool)

(assert (=> b!7835564 (=> (not res!3116598) (not e!4633426))))

(assert (=> b!7835564 (= res!3116598 (not lt!2677721))))

(declare-fun b!7835565 () Bool)

(declare-fun nullable!9305 (Regex!20987) Bool)

(assert (=> b!7835565 (= e!4633425 (nullable!9305 r1!6261))))

(declare-fun b!7835566 () Bool)

(declare-fun e!4633430 () Bool)

(assert (=> b!7835566 (= e!4633430 (not (= (head!15994 s1!4101) (c!1440938 r1!6261))))))

(declare-fun b!7835567 () Bool)

(declare-fun res!3116597 () Bool)

(assert (=> b!7835567 (=> (not res!3116597) (not e!4633429))))

(assert (=> b!7835567 (= res!3116597 (not call!726424))))

(declare-fun b!7835568 () Bool)

(declare-fun res!3116599 () Bool)

(assert (=> b!7835568 (=> (not res!3116599) (not e!4633429))))

(assert (=> b!7835568 (= res!3116599 (isEmpty!42295 (tail!15535 s1!4101)))))

(declare-fun b!7835569 () Bool)

(assert (=> b!7835569 (= e!4633431 (not lt!2677721))))

(declare-fun b!7835570 () Bool)

(assert (=> b!7835570 (= e!4633426 e!4633430)))

(declare-fun res!3116601 () Bool)

(assert (=> b!7835570 (=> res!3116601 e!4633430)))

(assert (=> b!7835570 (= res!3116601 call!726424)))

(declare-fun b!7835571 () Bool)

(declare-fun res!3116604 () Bool)

(assert (=> b!7835571 (=> res!3116604 e!4633428)))

(assert (=> b!7835571 (= res!3116604 e!4633429)))

(declare-fun res!3116603 () Bool)

(assert (=> b!7835571 (=> (not res!3116603) (not e!4633429))))

(assert (=> b!7835571 (= res!3116603 lt!2677721)))

(declare-fun b!7835572 () Bool)

(assert (=> b!7835572 (= e!4633427 e!4633431)))

(declare-fun c!1440961 () Bool)

(assert (=> b!7835572 (= c!1440961 ((_ is EmptyLang!20987) r1!6261))))

(declare-fun b!7835573 () Bool)

(declare-fun derivativeStep!6264 (Regex!20987 C!42300) Regex!20987)

(assert (=> b!7835573 (= e!4633425 (matchR!10443 (derivativeStep!6264 r1!6261 (head!15994 s1!4101)) (tail!15535 s1!4101)))))

(declare-fun b!7835574 () Bool)

(declare-fun res!3116602 () Bool)

(assert (=> b!7835574 (=> res!3116602 e!4633430)))

(assert (=> b!7835574 (= res!3116602 (not (isEmpty!42295 (tail!15535 s1!4101))))))

(declare-fun b!7835575 () Bool)

(assert (=> b!7835575 (= e!4633427 (= lt!2677721 call!726424))))

(assert (= (and d!2351279 c!1440962) b!7835565))

(assert (= (and d!2351279 (not c!1440962)) b!7835573))

(assert (= (and d!2351279 c!1440960) b!7835575))

(assert (= (and d!2351279 (not c!1440960)) b!7835572))

(assert (= (and b!7835572 c!1440961) b!7835569))

(assert (= (and b!7835572 (not c!1440961)) b!7835563))

(assert (= (and b!7835563 (not res!3116600)) b!7835571))

(assert (= (and b!7835571 res!3116603) b!7835567))

(assert (= (and b!7835567 res!3116597) b!7835568))

(assert (= (and b!7835568 res!3116599) b!7835562))

(assert (= (and b!7835571 (not res!3116604)) b!7835564))

(assert (= (and b!7835564 res!3116598) b!7835570))

(assert (= (and b!7835570 (not res!3116601)) b!7835574))

(assert (= (and b!7835574 (not res!3116602)) b!7835566))

(assert (= (or b!7835575 b!7835567 b!7835570) bm!726419))

(declare-fun m!8250704 () Bool)

(assert (=> d!2351279 m!8250704))

(assert (=> d!2351279 m!8250646))

(assert (=> b!7835566 m!8250674))

(assert (=> b!7835562 m!8250674))

(assert (=> b!7835568 m!8250668))

(assert (=> b!7835568 m!8250668))

(declare-fun m!8250706 () Bool)

(assert (=> b!7835568 m!8250706))

(assert (=> b!7835574 m!8250668))

(assert (=> b!7835574 m!8250668))

(assert (=> b!7835574 m!8250706))

(declare-fun m!8250708 () Bool)

(assert (=> b!7835565 m!8250708))

(assert (=> bm!726419 m!8250704))

(assert (=> b!7835573 m!8250674))

(assert (=> b!7835573 m!8250674))

(declare-fun m!8250714 () Bool)

(assert (=> b!7835573 m!8250714))

(assert (=> b!7835573 m!8250668))

(assert (=> b!7835573 m!8250714))

(assert (=> b!7835573 m!8250668))

(declare-fun m!8250720 () Bool)

(assert (=> b!7835573 m!8250720))

(assert (=> b!7835442 d!2351279))

(declare-fun d!2351287 () Bool)

(declare-fun lt!2677726 () Int)

(assert (=> d!2351287 (>= lt!2677726 0)))

(declare-fun e!4633443 () Int)

(assert (=> d!2351287 (= lt!2677726 e!4633443)))

(declare-fun c!1440969 () Bool)

(assert (=> d!2351287 (= c!1440969 ((_ is Nil!73700) s1!4101))))

(assert (=> d!2351287 (= (size!42777 s1!4101) lt!2677726)))

(declare-fun b!7835598 () Bool)

(assert (=> b!7835598 (= e!4633443 0)))

(declare-fun b!7835599 () Bool)

(assert (=> b!7835599 (= e!4633443 (+ 1 (size!42777 (t!388559 s1!4101))))))

(assert (= (and d!2351287 c!1440969) b!7835598))

(assert (= (and d!2351287 (not c!1440969)) b!7835599))

(declare-fun m!8250726 () Bool)

(assert (=> b!7835599 m!8250726))

(assert (=> b!7835454 d!2351287))

(declare-fun b!7835608 () Bool)

(declare-fun e!4633450 () Bool)

(assert (=> b!7835608 (= e!4633450 (isPrefix!6337 (tail!15535 s1Rec!453) (tail!15535 lt!2677694)))))

(declare-fun b!7835607 () Bool)

(declare-fun res!3116623 () Bool)

(assert (=> b!7835607 (=> (not res!3116623) (not e!4633450))))

(assert (=> b!7835607 (= res!3116623 (= (head!15994 s1Rec!453) (head!15994 lt!2677694)))))

(declare-fun b!7835606 () Bool)

(declare-fun e!4633448 () Bool)

(assert (=> b!7835606 (= e!4633448 e!4633450)))

(declare-fun res!3116624 () Bool)

(assert (=> b!7835606 (=> (not res!3116624) (not e!4633450))))

(assert (=> b!7835606 (= res!3116624 (not ((_ is Nil!73700) lt!2677694)))))

(declare-fun d!2351291 () Bool)

(declare-fun e!4633449 () Bool)

(assert (=> d!2351291 e!4633449))

(declare-fun res!3116621 () Bool)

(assert (=> d!2351291 (=> res!3116621 e!4633449)))

(declare-fun lt!2677729 () Bool)

(assert (=> d!2351291 (= res!3116621 (not lt!2677729))))

(assert (=> d!2351291 (= lt!2677729 e!4633448)))

(declare-fun res!3116622 () Bool)

(assert (=> d!2351291 (=> res!3116622 e!4633448)))

(assert (=> d!2351291 (= res!3116622 ((_ is Nil!73700) s1Rec!453))))

(assert (=> d!2351291 (= (isPrefix!6337 s1Rec!453 lt!2677694) lt!2677729)))

(declare-fun b!7835609 () Bool)

(assert (=> b!7835609 (= e!4633449 (>= (size!42777 lt!2677694) (size!42777 s1Rec!453)))))

(assert (= (and d!2351291 (not res!3116622)) b!7835606))

(assert (= (and b!7835606 res!3116624) b!7835607))

(assert (= (and b!7835607 res!3116623) b!7835608))

(assert (= (and d!2351291 (not res!3116621)) b!7835609))

(assert (=> b!7835608 m!8250666))

(declare-fun m!8250728 () Bool)

(assert (=> b!7835608 m!8250728))

(assert (=> b!7835608 m!8250666))

(assert (=> b!7835608 m!8250728))

(declare-fun m!8250730 () Bool)

(assert (=> b!7835608 m!8250730))

(assert (=> b!7835607 m!8250672))

(declare-fun m!8250732 () Bool)

(assert (=> b!7835607 m!8250732))

(declare-fun m!8250734 () Bool)

(assert (=> b!7835609 m!8250734))

(assert (=> b!7835609 m!8250634))

(assert (=> b!7835454 d!2351291))

(declare-fun b!7835614 () Bool)

(declare-fun e!4633455 () Bool)

(assert (=> b!7835614 (= e!4633455 (isPrefix!6337 (tail!15535 lt!2677701) (tail!15535 lt!2677695)))))

(declare-fun b!7835613 () Bool)

(declare-fun res!3116629 () Bool)

(assert (=> b!7835613 (=> (not res!3116629) (not e!4633455))))

(assert (=> b!7835613 (= res!3116629 (= (head!15994 lt!2677701) (head!15994 lt!2677695)))))

(declare-fun b!7835612 () Bool)

(declare-fun e!4633453 () Bool)

(assert (=> b!7835612 (= e!4633453 e!4633455)))

(declare-fun res!3116630 () Bool)

(assert (=> b!7835612 (=> (not res!3116630) (not e!4633455))))

(assert (=> b!7835612 (= res!3116630 (not ((_ is Nil!73700) lt!2677695)))))

(declare-fun d!2351293 () Bool)

(declare-fun e!4633454 () Bool)

(assert (=> d!2351293 e!4633454))

(declare-fun res!3116627 () Bool)

(assert (=> d!2351293 (=> res!3116627 e!4633454)))

(declare-fun lt!2677730 () Bool)

(assert (=> d!2351293 (= res!3116627 (not lt!2677730))))

(assert (=> d!2351293 (= lt!2677730 e!4633453)))

(declare-fun res!3116628 () Bool)

(assert (=> d!2351293 (=> res!3116628 e!4633453)))

(assert (=> d!2351293 (= res!3116628 ((_ is Nil!73700) lt!2677701))))

(assert (=> d!2351293 (= (isPrefix!6337 lt!2677701 lt!2677695) lt!2677730)))

(declare-fun b!7835615 () Bool)

(assert (=> b!7835615 (= e!4633454 (>= (size!42777 lt!2677695) (size!42777 lt!2677701)))))

(assert (= (and d!2351293 (not res!3116628)) b!7835612))

(assert (= (and b!7835612 res!3116630) b!7835613))

(assert (= (and b!7835613 res!3116629) b!7835614))

(assert (= (and d!2351293 (not res!3116627)) b!7835615))

(declare-fun m!8250736 () Bool)

(assert (=> b!7835614 m!8250736))

(declare-fun m!8250738 () Bool)

(assert (=> b!7835614 m!8250738))

(assert (=> b!7835614 m!8250736))

(assert (=> b!7835614 m!8250738))

(declare-fun m!8250740 () Bool)

(assert (=> b!7835614 m!8250740))

(declare-fun m!8250742 () Bool)

(assert (=> b!7835613 m!8250742))

(declare-fun m!8250744 () Bool)

(assert (=> b!7835613 m!8250744))

(declare-fun m!8250746 () Bool)

(assert (=> b!7835615 m!8250746))

(assert (=> b!7835615 m!8250610))

(assert (=> b!7835454 d!2351293))

(declare-fun d!2351295 () Bool)

(assert (=> d!2351295 (isPrefix!6337 s1Rec!453 (++!18021 s1Rec!453 s2Rec!453))))

(declare-fun lt!2677734 () Unit!168784)

(declare-fun choose!59590 (List!73824 List!73824) Unit!168784)

(assert (=> d!2351295 (= lt!2677734 (choose!59590 s1Rec!453 s2Rec!453))))

(assert (=> d!2351295 (= (lemmaConcatTwoListThenFirstIsPrefix!3783 s1Rec!453 s2Rec!453) lt!2677734)))

(declare-fun bs!1966856 () Bool)

(assert (= bs!1966856 d!2351295))

(assert (=> bs!1966856 m!8250648))

(assert (=> bs!1966856 m!8250648))

(declare-fun m!8250750 () Bool)

(assert (=> bs!1966856 m!8250750))

(declare-fun m!8250752 () Bool)

(assert (=> bs!1966856 m!8250752))

(assert (=> b!7835454 d!2351295))

(declare-fun b!7835622 () Bool)

(declare-fun e!4633461 () Bool)

(assert (=> b!7835622 (= e!4633461 (isPrefix!6337 (tail!15535 s1!4101) (tail!15535 s!14274)))))

(declare-fun b!7835621 () Bool)

(declare-fun res!3116637 () Bool)

(assert (=> b!7835621 (=> (not res!3116637) (not e!4633461))))

(assert (=> b!7835621 (= res!3116637 (= (head!15994 s1!4101) (head!15994 s!14274)))))

(declare-fun b!7835620 () Bool)

(declare-fun e!4633459 () Bool)

(assert (=> b!7835620 (= e!4633459 e!4633461)))

(declare-fun res!3116638 () Bool)

(assert (=> b!7835620 (=> (not res!3116638) (not e!4633461))))

(assert (=> b!7835620 (= res!3116638 (not ((_ is Nil!73700) s!14274)))))

(declare-fun d!2351299 () Bool)

(declare-fun e!4633460 () Bool)

(assert (=> d!2351299 e!4633460))

(declare-fun res!3116635 () Bool)

(assert (=> d!2351299 (=> res!3116635 e!4633460)))

(declare-fun lt!2677735 () Bool)

(assert (=> d!2351299 (= res!3116635 (not lt!2677735))))

(assert (=> d!2351299 (= lt!2677735 e!4633459)))

(declare-fun res!3116636 () Bool)

(assert (=> d!2351299 (=> res!3116636 e!4633459)))

(assert (=> d!2351299 (= res!3116636 ((_ is Nil!73700) s1!4101))))

(assert (=> d!2351299 (= (isPrefix!6337 s1!4101 s!14274) lt!2677735)))

(declare-fun b!7835623 () Bool)

(assert (=> b!7835623 (= e!4633460 (>= (size!42777 s!14274) (size!42777 s1!4101)))))

(assert (= (and d!2351299 (not res!3116636)) b!7835620))

(assert (= (and b!7835620 res!3116638) b!7835621))

(assert (= (and b!7835621 res!3116637) b!7835622))

(assert (= (and d!2351299 (not res!3116635)) b!7835623))

(assert (=> b!7835622 m!8250668))

(declare-fun m!8250754 () Bool)

(assert (=> b!7835622 m!8250754))

(assert (=> b!7835622 m!8250668))

(assert (=> b!7835622 m!8250754))

(declare-fun m!8250756 () Bool)

(assert (=> b!7835622 m!8250756))

(assert (=> b!7835621 m!8250674))

(declare-fun m!8250758 () Bool)

(assert (=> b!7835621 m!8250758))

(declare-fun m!8250760 () Bool)

(assert (=> b!7835623 m!8250760))

(assert (=> b!7835623 m!8250630))

(assert (=> b!7835454 d!2351299))

(declare-fun b!7835640 () Bool)

(declare-fun e!4633474 () Bool)

(assert (=> b!7835640 (= e!4633474 (isPrefix!6337 (tail!15535 s1!4101) (tail!15535 lt!2677704)))))

(declare-fun b!7835639 () Bool)

(declare-fun res!3116647 () Bool)

(assert (=> b!7835639 (=> (not res!3116647) (not e!4633474))))

(assert (=> b!7835639 (= res!3116647 (= (head!15994 s1!4101) (head!15994 lt!2677704)))))

(declare-fun b!7835638 () Bool)

(declare-fun e!4633472 () Bool)

(assert (=> b!7835638 (= e!4633472 e!4633474)))

(declare-fun res!3116648 () Bool)

(assert (=> b!7835638 (=> (not res!3116648) (not e!4633474))))

(assert (=> b!7835638 (= res!3116648 (not ((_ is Nil!73700) lt!2677704)))))

(declare-fun d!2351301 () Bool)

(declare-fun e!4633473 () Bool)

(assert (=> d!2351301 e!4633473))

(declare-fun res!3116645 () Bool)

(assert (=> d!2351301 (=> res!3116645 e!4633473)))

(declare-fun lt!2677736 () Bool)

(assert (=> d!2351301 (= res!3116645 (not lt!2677736))))

(assert (=> d!2351301 (= lt!2677736 e!4633472)))

(declare-fun res!3116646 () Bool)

(assert (=> d!2351301 (=> res!3116646 e!4633472)))

(assert (=> d!2351301 (= res!3116646 ((_ is Nil!73700) s1!4101))))

(assert (=> d!2351301 (= (isPrefix!6337 s1!4101 lt!2677704) lt!2677736)))

(declare-fun b!7835641 () Bool)

(assert (=> b!7835641 (= e!4633473 (>= (size!42777 lt!2677704) (size!42777 s1!4101)))))

(assert (= (and d!2351301 (not res!3116646)) b!7835638))

(assert (= (and b!7835638 res!3116648) b!7835639))

(assert (= (and b!7835639 res!3116647) b!7835640))

(assert (= (and d!2351301 (not res!3116645)) b!7835641))

(assert (=> b!7835640 m!8250668))

(declare-fun m!8250762 () Bool)

(assert (=> b!7835640 m!8250762))

(assert (=> b!7835640 m!8250668))

(assert (=> b!7835640 m!8250762))

(declare-fun m!8250764 () Bool)

(assert (=> b!7835640 m!8250764))

(assert (=> b!7835639 m!8250674))

(declare-fun m!8250766 () Bool)

(assert (=> b!7835639 m!8250766))

(declare-fun m!8250768 () Bool)

(assert (=> b!7835641 m!8250768))

(assert (=> b!7835641 m!8250630))

(assert (=> b!7835454 d!2351301))

(declare-fun b!7835665 () Bool)

(declare-fun e!4633492 () List!73824)

(assert (=> b!7835665 (= e!4633492 (Cons!73700 (h!80148 s2Rec!453) Nil!73700))))

(declare-fun d!2351303 () Bool)

(declare-fun e!4633491 () Bool)

(assert (=> d!2351303 e!4633491))

(declare-fun res!3116663 () Bool)

(assert (=> d!2351303 (=> (not res!3116663) (not e!4633491))))

(declare-fun lt!2677740 () List!73824)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15646 (List!73824) (InoxSet C!42300))

(assert (=> d!2351303 (= res!3116663 (= (content!15646 lt!2677740) ((_ map or) (content!15646 s1Rec!453) (content!15646 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)))))))

(assert (=> d!2351303 (= lt!2677740 e!4633492)))

(declare-fun c!1440979 () Bool)

(assert (=> d!2351303 (= c!1440979 ((_ is Nil!73700) s1Rec!453))))

(assert (=> d!2351303 (= (++!18021 s1Rec!453 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)) lt!2677740)))

(declare-fun b!7835668 () Bool)

(assert (=> b!7835668 (= e!4633491 (or (not (= (Cons!73700 (h!80148 s2Rec!453) Nil!73700) Nil!73700)) (= lt!2677740 s1Rec!453)))))

(declare-fun b!7835667 () Bool)

(declare-fun res!3116662 () Bool)

(assert (=> b!7835667 (=> (not res!3116662) (not e!4633491))))

(assert (=> b!7835667 (= res!3116662 (= (size!42777 lt!2677740) (+ (size!42777 s1Rec!453) (size!42777 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)))))))

(declare-fun b!7835666 () Bool)

(assert (=> b!7835666 (= e!4633492 (Cons!73700 (h!80148 s1Rec!453) (++!18021 (t!388559 s1Rec!453) (Cons!73700 (h!80148 s2Rec!453) Nil!73700))))))

(assert (= (and d!2351303 c!1440979) b!7835665))

(assert (= (and d!2351303 (not c!1440979)) b!7835666))

(assert (= (and d!2351303 res!3116663) b!7835667))

(assert (= (and b!7835667 res!3116662) b!7835668))

(declare-fun m!8250778 () Bool)

(assert (=> d!2351303 m!8250778))

(declare-fun m!8250780 () Bool)

(assert (=> d!2351303 m!8250780))

(declare-fun m!8250782 () Bool)

(assert (=> d!2351303 m!8250782))

(declare-fun m!8250784 () Bool)

(assert (=> b!7835667 m!8250784))

(assert (=> b!7835667 m!8250634))

(declare-fun m!8250786 () Bool)

(assert (=> b!7835667 m!8250786))

(declare-fun m!8250788 () Bool)

(assert (=> b!7835666 m!8250788))

(assert (=> b!7835454 d!2351303))

(declare-fun d!2351309 () Bool)

(assert (=> d!2351309 (isPrefix!6337 s1!4101 (++!18021 s1!4101 s2!3721))))

(declare-fun lt!2677744 () Unit!168784)

(assert (=> d!2351309 (= lt!2677744 (choose!59590 s1!4101 s2!3721))))

(assert (=> d!2351309 (= (lemmaConcatTwoListThenFirstIsPrefix!3783 s1!4101 s2!3721) lt!2677744)))

(declare-fun bs!1966858 () Bool)

(assert (= bs!1966858 d!2351309))

(assert (=> bs!1966858 m!8250606))

(assert (=> bs!1966858 m!8250606))

(declare-fun m!8250794 () Bool)

(assert (=> bs!1966858 m!8250794))

(declare-fun m!8250796 () Bool)

(assert (=> bs!1966858 m!8250796))

(assert (=> b!7835454 d!2351309))

(declare-fun d!2351313 () Bool)

(declare-fun lt!2677746 () Int)

(assert (=> d!2351313 (>= lt!2677746 0)))

(declare-fun e!4633496 () Int)

(assert (=> d!2351313 (= lt!2677746 e!4633496)))

(declare-fun c!1440980 () Bool)

(assert (=> d!2351313 (= c!1440980 ((_ is Nil!73700) s1Rec!453))))

(assert (=> d!2351313 (= (size!42777 s1Rec!453) lt!2677746)))

(declare-fun b!7835673 () Bool)

(assert (=> b!7835673 (= e!4633496 0)))

(declare-fun b!7835674 () Bool)

(assert (=> b!7835674 (= e!4633496 (+ 1 (size!42777 (t!388559 s1Rec!453))))))

(assert (= (and d!2351313 c!1440980) b!7835673))

(assert (= (and d!2351313 (not c!1440980)) b!7835674))

(declare-fun m!8250798 () Bool)

(assert (=> b!7835674 m!8250798))

(assert (=> b!7835454 d!2351313))

(declare-fun d!2351315 () Bool)

(assert (=> d!2351315 (= (++!18021 (++!18021 s1Rec!453 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)) (t!388559 s2Rec!453)) s!14274)))

(declare-fun lt!2677754 () Unit!168784)

(declare-fun choose!59591 (List!73824 C!42300 List!73824 List!73824) Unit!168784)

(assert (=> d!2351315 (= lt!2677754 (choose!59591 s1Rec!453 (h!80148 s2Rec!453) (t!388559 s2Rec!453) s!14274))))

(assert (=> d!2351315 (= (++!18021 s1Rec!453 (Cons!73700 (h!80148 s2Rec!453) (t!388559 s2Rec!453))) s!14274)))

(assert (=> d!2351315 (= (lemmaMoveElementToOtherListKeepsConcatEq!3448 s1Rec!453 (h!80148 s2Rec!453) (t!388559 s2Rec!453) s!14274) lt!2677754)))

(declare-fun bs!1966861 () Bool)

(assert (= bs!1966861 d!2351315))

(assert (=> bs!1966861 m!8250636))

(assert (=> bs!1966861 m!8250636))

(declare-fun m!8250820 () Bool)

(assert (=> bs!1966861 m!8250820))

(declare-fun m!8250822 () Bool)

(assert (=> bs!1966861 m!8250822))

(declare-fun m!8250824 () Bool)

(assert (=> bs!1966861 m!8250824))

(assert (=> b!7835454 d!2351315))

(declare-fun d!2351325 () Bool)

(assert (=> d!2351325 (isPrefix!6337 lt!2677701 (++!18021 lt!2677701 (t!388559 s2Rec!453)))))

(declare-fun lt!2677756 () Unit!168784)

(assert (=> d!2351325 (= lt!2677756 (choose!59590 lt!2677701 (t!388559 s2Rec!453)))))

(assert (=> d!2351325 (= (lemmaConcatTwoListThenFirstIsPrefix!3783 lt!2677701 (t!388559 s2Rec!453)) lt!2677756)))

(declare-fun bs!1966862 () Bool)

(assert (= bs!1966862 d!2351325))

(assert (=> bs!1966862 m!8250618))

(assert (=> bs!1966862 m!8250618))

(declare-fun m!8250826 () Bool)

(assert (=> bs!1966862 m!8250826))

(declare-fun m!8250828 () Bool)

(assert (=> bs!1966862 m!8250828))

(assert (=> b!7835454 d!2351325))

(declare-fun b!7835681 () Bool)

(declare-fun e!4633501 () List!73824)

(assert (=> b!7835681 (= e!4633501 (t!388559 s2Rec!453))))

(declare-fun d!2351327 () Bool)

(declare-fun e!4633500 () Bool)

(assert (=> d!2351327 e!4633500))

(declare-fun res!3116671 () Bool)

(assert (=> d!2351327 (=> (not res!3116671) (not e!4633500))))

(declare-fun lt!2677757 () List!73824)

(assert (=> d!2351327 (= res!3116671 (= (content!15646 lt!2677757) ((_ map or) (content!15646 lt!2677701) (content!15646 (t!388559 s2Rec!453)))))))

(assert (=> d!2351327 (= lt!2677757 e!4633501)))

(declare-fun c!1440983 () Bool)

(assert (=> d!2351327 (= c!1440983 ((_ is Nil!73700) lt!2677701))))

(assert (=> d!2351327 (= (++!18021 lt!2677701 (t!388559 s2Rec!453)) lt!2677757)))

(declare-fun b!7835684 () Bool)

(assert (=> b!7835684 (= e!4633500 (or (not (= (t!388559 s2Rec!453) Nil!73700)) (= lt!2677757 lt!2677701)))))

(declare-fun b!7835683 () Bool)

(declare-fun res!3116670 () Bool)

(assert (=> b!7835683 (=> (not res!3116670) (not e!4633500))))

(assert (=> b!7835683 (= res!3116670 (= (size!42777 lt!2677757) (+ (size!42777 lt!2677701) (size!42777 (t!388559 s2Rec!453)))))))

(declare-fun b!7835682 () Bool)

(assert (=> b!7835682 (= e!4633501 (Cons!73700 (h!80148 lt!2677701) (++!18021 (t!388559 lt!2677701) (t!388559 s2Rec!453))))))

(assert (= (and d!2351327 c!1440983) b!7835681))

(assert (= (and d!2351327 (not c!1440983)) b!7835682))

(assert (= (and d!2351327 res!3116671) b!7835683))

(assert (= (and b!7835683 res!3116670) b!7835684))

(declare-fun m!8250848 () Bool)

(assert (=> d!2351327 m!8250848))

(declare-fun m!8250852 () Bool)

(assert (=> d!2351327 m!8250852))

(declare-fun m!8250856 () Bool)

(assert (=> d!2351327 m!8250856))

(declare-fun m!8250860 () Bool)

(assert (=> b!7835683 m!8250860))

(assert (=> b!7835683 m!8250610))

(declare-fun m!8250862 () Bool)

(assert (=> b!7835683 m!8250862))

(declare-fun m!8250864 () Bool)

(assert (=> b!7835682 m!8250864))

(assert (=> b!7835454 d!2351327))

(declare-fun b!7835693 () Bool)

(declare-fun e!4633509 () List!73824)

(assert (=> b!7835693 (= e!4633509 s2!3721)))

(declare-fun d!2351333 () Bool)

(declare-fun e!4633508 () Bool)

(assert (=> d!2351333 e!4633508))

(declare-fun res!3116681 () Bool)

(assert (=> d!2351333 (=> (not res!3116681) (not e!4633508))))

(declare-fun lt!2677760 () List!73824)

(assert (=> d!2351333 (= res!3116681 (= (content!15646 lt!2677760) ((_ map or) (content!15646 s1!4101) (content!15646 s2!3721))))))

(assert (=> d!2351333 (= lt!2677760 e!4633509)))

(declare-fun c!1440984 () Bool)

(assert (=> d!2351333 (= c!1440984 ((_ is Nil!73700) s1!4101))))

(assert (=> d!2351333 (= (++!18021 s1!4101 s2!3721) lt!2677760)))

(declare-fun b!7835696 () Bool)

(assert (=> b!7835696 (= e!4633508 (or (not (= s2!3721 Nil!73700)) (= lt!2677760 s1!4101)))))

(declare-fun b!7835695 () Bool)

(declare-fun res!3116680 () Bool)

(assert (=> b!7835695 (=> (not res!3116680) (not e!4633508))))

(assert (=> b!7835695 (= res!3116680 (= (size!42777 lt!2677760) (+ (size!42777 s1!4101) (size!42777 s2!3721))))))

(declare-fun b!7835694 () Bool)

(assert (=> b!7835694 (= e!4633509 (Cons!73700 (h!80148 s1!4101) (++!18021 (t!388559 s1!4101) s2!3721)))))

(assert (= (and d!2351333 c!1440984) b!7835693))

(assert (= (and d!2351333 (not c!1440984)) b!7835694))

(assert (= (and d!2351333 res!3116681) b!7835695))

(assert (= (and b!7835695 res!3116680) b!7835696))

(declare-fun m!8250874 () Bool)

(assert (=> d!2351333 m!8250874))

(declare-fun m!8250876 () Bool)

(assert (=> d!2351333 m!8250876))

(declare-fun m!8250878 () Bool)

(assert (=> d!2351333 m!8250878))

(declare-fun m!8250880 () Bool)

(assert (=> b!7835695 m!8250880))

(assert (=> b!7835695 m!8250630))

(declare-fun m!8250882 () Bool)

(assert (=> b!7835695 m!8250882))

(declare-fun m!8250884 () Bool)

(assert (=> b!7835694 m!8250884))

(assert (=> b!7835433 d!2351333))

(declare-fun b!7835701 () Bool)

(declare-fun e!4633516 () Bool)

(assert (=> b!7835701 (= e!4633516 (= (head!15994 s2!3721) (c!1440938 r2!6199)))))

(declare-fun bm!726430 () Bool)

(declare-fun call!726435 () Bool)

(assert (=> bm!726430 (= call!726435 (isEmpty!42295 s2!3721))))

(declare-fun d!2351337 () Bool)

(declare-fun e!4633514 () Bool)

(assert (=> d!2351337 e!4633514))

(declare-fun c!1440986 () Bool)

(assert (=> d!2351337 (= c!1440986 ((_ is EmptyExpr!20987) r2!6199))))

(declare-fun lt!2677762 () Bool)

(declare-fun e!4633512 () Bool)

(assert (=> d!2351337 (= lt!2677762 e!4633512)))

(declare-fun c!1440988 () Bool)

(assert (=> d!2351337 (= c!1440988 (isEmpty!42295 s2!3721))))

(assert (=> d!2351337 (validRegex!11401 r2!6199)))

(assert (=> d!2351337 (= (matchR!10443 r2!6199 s2!3721) lt!2677762)))

(declare-fun b!7835702 () Bool)

(declare-fun res!3116687 () Bool)

(declare-fun e!4633515 () Bool)

(assert (=> b!7835702 (=> res!3116687 e!4633515)))

(assert (=> b!7835702 (= res!3116687 (not ((_ is ElementMatch!20987) r2!6199)))))

(declare-fun e!4633518 () Bool)

(assert (=> b!7835702 (= e!4633518 e!4633515)))

(declare-fun b!7835703 () Bool)

(declare-fun e!4633513 () Bool)

(assert (=> b!7835703 (= e!4633515 e!4633513)))

(declare-fun res!3116685 () Bool)

(assert (=> b!7835703 (=> (not res!3116685) (not e!4633513))))

(assert (=> b!7835703 (= res!3116685 (not lt!2677762))))

(declare-fun b!7835704 () Bool)

(assert (=> b!7835704 (= e!4633512 (nullable!9305 r2!6199))))

(declare-fun b!7835705 () Bool)

(declare-fun e!4633517 () Bool)

(assert (=> b!7835705 (= e!4633517 (not (= (head!15994 s2!3721) (c!1440938 r2!6199))))))

(declare-fun b!7835706 () Bool)

(declare-fun res!3116684 () Bool)

(assert (=> b!7835706 (=> (not res!3116684) (not e!4633516))))

(assert (=> b!7835706 (= res!3116684 (not call!726435))))

(declare-fun b!7835707 () Bool)

(declare-fun res!3116686 () Bool)

(assert (=> b!7835707 (=> (not res!3116686) (not e!4633516))))

(assert (=> b!7835707 (= res!3116686 (isEmpty!42295 (tail!15535 s2!3721)))))

(declare-fun b!7835708 () Bool)

(assert (=> b!7835708 (= e!4633518 (not lt!2677762))))

(declare-fun b!7835709 () Bool)

(assert (=> b!7835709 (= e!4633513 e!4633517)))

(declare-fun res!3116688 () Bool)

(assert (=> b!7835709 (=> res!3116688 e!4633517)))

(assert (=> b!7835709 (= res!3116688 call!726435)))

(declare-fun b!7835710 () Bool)

(declare-fun res!3116691 () Bool)

(assert (=> b!7835710 (=> res!3116691 e!4633515)))

(assert (=> b!7835710 (= res!3116691 e!4633516)))

(declare-fun res!3116690 () Bool)

(assert (=> b!7835710 (=> (not res!3116690) (not e!4633516))))

(assert (=> b!7835710 (= res!3116690 lt!2677762)))

(declare-fun b!7835711 () Bool)

(assert (=> b!7835711 (= e!4633514 e!4633518)))

(declare-fun c!1440987 () Bool)

(assert (=> b!7835711 (= c!1440987 ((_ is EmptyLang!20987) r2!6199))))

(declare-fun b!7835712 () Bool)

(assert (=> b!7835712 (= e!4633512 (matchR!10443 (derivativeStep!6264 r2!6199 (head!15994 s2!3721)) (tail!15535 s2!3721)))))

(declare-fun b!7835713 () Bool)

(declare-fun res!3116689 () Bool)

(assert (=> b!7835713 (=> res!3116689 e!4633517)))

(assert (=> b!7835713 (= res!3116689 (not (isEmpty!42295 (tail!15535 s2!3721))))))

(declare-fun b!7835714 () Bool)

(assert (=> b!7835714 (= e!4633514 (= lt!2677762 call!726435))))

(assert (= (and d!2351337 c!1440988) b!7835704))

(assert (= (and d!2351337 (not c!1440988)) b!7835712))

(assert (= (and d!2351337 c!1440986) b!7835714))

(assert (= (and d!2351337 (not c!1440986)) b!7835711))

(assert (= (and b!7835711 c!1440987) b!7835708))

(assert (= (and b!7835711 (not c!1440987)) b!7835702))

(assert (= (and b!7835702 (not res!3116687)) b!7835710))

(assert (= (and b!7835710 res!3116690) b!7835706))

(assert (= (and b!7835706 res!3116684) b!7835707))

(assert (= (and b!7835707 res!3116686) b!7835701))

(assert (= (and b!7835710 (not res!3116691)) b!7835703))

(assert (= (and b!7835703 res!3116685) b!7835709))

(assert (= (and b!7835709 (not res!3116688)) b!7835713))

(assert (= (and b!7835713 (not res!3116689)) b!7835705))

(assert (= (or b!7835714 b!7835706 b!7835709) bm!726430))

(declare-fun m!8250908 () Bool)

(assert (=> d!2351337 m!8250908))

(assert (=> d!2351337 m!8250614))

(declare-fun m!8250910 () Bool)

(assert (=> b!7835705 m!8250910))

(assert (=> b!7835701 m!8250910))

(declare-fun m!8250912 () Bool)

(assert (=> b!7835707 m!8250912))

(assert (=> b!7835707 m!8250912))

(declare-fun m!8250914 () Bool)

(assert (=> b!7835707 m!8250914))

(assert (=> b!7835713 m!8250912))

(assert (=> b!7835713 m!8250912))

(assert (=> b!7835713 m!8250914))

(declare-fun m!8250916 () Bool)

(assert (=> b!7835704 m!8250916))

(assert (=> bm!726430 m!8250908))

(assert (=> b!7835712 m!8250910))

(assert (=> b!7835712 m!8250910))

(declare-fun m!8250918 () Bool)

(assert (=> b!7835712 m!8250918))

(assert (=> b!7835712 m!8250912))

(assert (=> b!7835712 m!8250918))

(assert (=> b!7835712 m!8250912))

(declare-fun m!8250920 () Bool)

(assert (=> b!7835712 m!8250920))

(assert (=> b!7835444 d!2351337))

(declare-fun b!7835733 () Bool)

(declare-fun e!4633530 () List!73824)

(assert (=> b!7835733 (= e!4633530 s2Rec!453)))

(declare-fun d!2351345 () Bool)

(declare-fun e!4633529 () Bool)

(assert (=> d!2351345 e!4633529))

(declare-fun res!3116705 () Bool)

(assert (=> d!2351345 (=> (not res!3116705) (not e!4633529))))

(declare-fun lt!2677766 () List!73824)

(assert (=> d!2351345 (= res!3116705 (= (content!15646 lt!2677766) ((_ map or) (content!15646 s1Rec!453) (content!15646 s2Rec!453))))))

(assert (=> d!2351345 (= lt!2677766 e!4633530)))

(declare-fun c!1440992 () Bool)

(assert (=> d!2351345 (= c!1440992 ((_ is Nil!73700) s1Rec!453))))

(assert (=> d!2351345 (= (++!18021 s1Rec!453 s2Rec!453) lt!2677766)))

(declare-fun b!7835736 () Bool)

(assert (=> b!7835736 (= e!4633529 (or (not (= s2Rec!453 Nil!73700)) (= lt!2677766 s1Rec!453)))))

(declare-fun b!7835735 () Bool)

(declare-fun res!3116704 () Bool)

(assert (=> b!7835735 (=> (not res!3116704) (not e!4633529))))

(assert (=> b!7835735 (= res!3116704 (= (size!42777 lt!2677766) (+ (size!42777 s1Rec!453) (size!42777 s2Rec!453))))))

(declare-fun b!7835734 () Bool)

(assert (=> b!7835734 (= e!4633530 (Cons!73700 (h!80148 s1Rec!453) (++!18021 (t!388559 s1Rec!453) s2Rec!453)))))

(assert (= (and d!2351345 c!1440992) b!7835733))

(assert (= (and d!2351345 (not c!1440992)) b!7835734))

(assert (= (and d!2351345 res!3116705) b!7835735))

(assert (= (and b!7835735 res!3116704) b!7835736))

(declare-fun m!8250936 () Bool)

(assert (=> d!2351345 m!8250936))

(assert (=> d!2351345 m!8250780))

(declare-fun m!8250938 () Bool)

(assert (=> d!2351345 m!8250938))

(declare-fun m!8250940 () Bool)

(assert (=> b!7835735 m!8250940))

(assert (=> b!7835735 m!8250634))

(declare-fun m!8250942 () Bool)

(assert (=> b!7835735 m!8250942))

(declare-fun m!8250944 () Bool)

(assert (=> b!7835734 m!8250944))

(assert (=> b!7835435 d!2351345))

(declare-fun b!7835841 () Bool)

(declare-fun e!4633582 () Bool)

(declare-fun e!4633587 () Bool)

(assert (=> b!7835841 (= e!4633582 e!4633587)))

(declare-fun res!3116735 () Bool)

(assert (=> b!7835841 (=> (not res!3116735) (not e!4633587))))

(declare-fun call!726447 () Bool)

(assert (=> b!7835841 (= res!3116735 call!726447)))

(declare-fun b!7835842 () Bool)

(declare-fun call!726448 () Bool)

(assert (=> b!7835842 (= e!4633587 call!726448)))

(declare-fun b!7835844 () Bool)

(declare-fun e!4633584 () Bool)

(assert (=> b!7835844 (= e!4633584 call!726447)))

(declare-fun b!7835845 () Bool)

(declare-fun e!4633581 () Bool)

(declare-fun e!4633585 () Bool)

(assert (=> b!7835845 (= e!4633581 e!4633585)))

(declare-fun c!1441003 () Bool)

(assert (=> b!7835845 (= c!1441003 ((_ is Union!20987) r1!6261))))

(declare-fun bm!726442 () Bool)

(assert (=> bm!726442 (= call!726448 (validRegex!11401 (ite c!1441003 (regOne!42487 r1!6261) (regTwo!42486 r1!6261))))))

(declare-fun b!7835846 () Bool)

(declare-fun e!4633583 () Bool)

(assert (=> b!7835846 (= e!4633583 e!4633581)))

(declare-fun c!1441002 () Bool)

(assert (=> b!7835846 (= c!1441002 ((_ is Star!20987) r1!6261))))

(declare-fun b!7835847 () Bool)

(declare-fun res!3116736 () Bool)

(assert (=> b!7835847 (=> (not res!3116736) (not e!4633584))))

(assert (=> b!7835847 (= res!3116736 call!726448)))

(assert (=> b!7835847 (= e!4633585 e!4633584)))

(declare-fun b!7835848 () Bool)

(declare-fun e!4633586 () Bool)

(assert (=> b!7835848 (= e!4633581 e!4633586)))

(declare-fun res!3116733 () Bool)

(assert (=> b!7835848 (= res!3116733 (not (nullable!9305 (reg!21316 r1!6261))))))

(assert (=> b!7835848 (=> (not res!3116733) (not e!4633586))))

(declare-fun bm!726443 () Bool)

(declare-fun call!726449 () Bool)

(assert (=> bm!726443 (= call!726447 call!726449)))

(declare-fun b!7835843 () Bool)

(declare-fun res!3116734 () Bool)

(assert (=> b!7835843 (=> res!3116734 e!4633582)))

(assert (=> b!7835843 (= res!3116734 (not ((_ is Concat!29832) r1!6261)))))

(assert (=> b!7835843 (= e!4633585 e!4633582)))

(declare-fun d!2351349 () Bool)

(declare-fun res!3116737 () Bool)

(assert (=> d!2351349 (=> res!3116737 e!4633583)))

(assert (=> d!2351349 (= res!3116737 ((_ is ElementMatch!20987) r1!6261))))

(assert (=> d!2351349 (= (validRegex!11401 r1!6261) e!4633583)))

(declare-fun b!7835849 () Bool)

(assert (=> b!7835849 (= e!4633586 call!726449)))

(declare-fun bm!726444 () Bool)

(assert (=> bm!726444 (= call!726449 (validRegex!11401 (ite c!1441002 (reg!21316 r1!6261) (ite c!1441003 (regTwo!42487 r1!6261) (regOne!42486 r1!6261)))))))

(assert (= (and d!2351349 (not res!3116737)) b!7835846))

(assert (= (and b!7835846 c!1441002) b!7835848))

(assert (= (and b!7835846 (not c!1441002)) b!7835845))

(assert (= (and b!7835848 res!3116733) b!7835849))

(assert (= (and b!7835845 c!1441003) b!7835847))

(assert (= (and b!7835845 (not c!1441003)) b!7835843))

(assert (= (and b!7835847 res!3116736) b!7835844))

(assert (= (and b!7835843 (not res!3116734)) b!7835841))

(assert (= (and b!7835841 res!3116735) b!7835842))

(assert (= (or b!7835844 b!7835841) bm!726443))

(assert (= (or b!7835847 b!7835842) bm!726442))

(assert (= (or b!7835849 bm!726443) bm!726444))

(declare-fun m!8250970 () Bool)

(assert (=> bm!726442 m!8250970))

(declare-fun m!8250972 () Bool)

(assert (=> b!7835848 m!8250972))

(declare-fun m!8250974 () Bool)

(assert (=> bm!726444 m!8250974))

(assert (=> start!742314 d!2351349))

(declare-fun d!2351359 () Bool)

(assert (=> d!2351359 (= s2!3721 s2Rec!453)))

(declare-fun lt!2677777 () Unit!168784)

(declare-fun choose!59594 (List!73824 List!73824 List!73824 List!73824 List!73824) Unit!168784)

(assert (=> d!2351359 (= lt!2677777 (choose!59594 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> d!2351359 (isPrefix!6337 s1!4101 s!14274)))

(assert (=> d!2351359 (= (lemmaSamePrefixThenSameSuffix!2921 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274) lt!2677777)))

(declare-fun bs!1966866 () Bool)

(assert (= bs!1966866 d!2351359))

(declare-fun m!8250976 () Bool)

(assert (=> bs!1966866 m!8250976))

(assert (=> bs!1966866 m!8250628))

(assert (=> b!7835457 d!2351359))

(declare-fun d!2351361 () Bool)

(assert (=> d!2351361 (= s1!4101 s1Rec!453)))

(declare-fun lt!2677780 () Unit!168784)

(declare-fun choose!59595 (List!73824 List!73824 List!73824) Unit!168784)

(assert (=> d!2351361 (= lt!2677780 (choose!59595 s1!4101 s1Rec!453 s!14274))))

(assert (=> d!2351361 (isPrefix!6337 s1!4101 s!14274)))

(assert (=> d!2351361 (= (lemmaIsPrefixSameLengthThenSameList!1553 s1!4101 s1Rec!453 s!14274) lt!2677780)))

(declare-fun bs!1966867 () Bool)

(assert (= bs!1966867 d!2351361))

(declare-fun m!8250978 () Bool)

(assert (=> bs!1966867 m!8250978))

(assert (=> bs!1966867 m!8250628))

(assert (=> b!7835458 d!2351361))

(declare-fun b!7835852 () Bool)

(declare-fun e!4633590 () Bool)

(assert (=> b!7835852 (= e!4633590 (isPrefix!6337 (tail!15535 lt!2677701) (tail!15535 s!14274)))))

(declare-fun b!7835851 () Bool)

(declare-fun res!3116740 () Bool)

(assert (=> b!7835851 (=> (not res!3116740) (not e!4633590))))

(assert (=> b!7835851 (= res!3116740 (= (head!15994 lt!2677701) (head!15994 s!14274)))))

(declare-fun b!7835850 () Bool)

(declare-fun e!4633588 () Bool)

(assert (=> b!7835850 (= e!4633588 e!4633590)))

(declare-fun res!3116741 () Bool)

(assert (=> b!7835850 (=> (not res!3116741) (not e!4633590))))

(assert (=> b!7835850 (= res!3116741 (not ((_ is Nil!73700) s!14274)))))

(declare-fun d!2351363 () Bool)

(declare-fun e!4633589 () Bool)

(assert (=> d!2351363 e!4633589))

(declare-fun res!3116738 () Bool)

(assert (=> d!2351363 (=> res!3116738 e!4633589)))

(declare-fun lt!2677781 () Bool)

(assert (=> d!2351363 (= res!3116738 (not lt!2677781))))

(assert (=> d!2351363 (= lt!2677781 e!4633588)))

(declare-fun res!3116739 () Bool)

(assert (=> d!2351363 (=> res!3116739 e!4633588)))

(assert (=> d!2351363 (= res!3116739 ((_ is Nil!73700) lt!2677701))))

(assert (=> d!2351363 (= (isPrefix!6337 lt!2677701 s!14274) lt!2677781)))

(declare-fun b!7835853 () Bool)

(assert (=> b!7835853 (= e!4633589 (>= (size!42777 s!14274) (size!42777 lt!2677701)))))

(assert (= (and d!2351363 (not res!3116739)) b!7835850))

(assert (= (and b!7835850 res!3116741) b!7835851))

(assert (= (and b!7835851 res!3116740) b!7835852))

(assert (= (and d!2351363 (not res!3116738)) b!7835853))

(assert (=> b!7835852 m!8250736))

(assert (=> b!7835852 m!8250754))

(assert (=> b!7835852 m!8250736))

(assert (=> b!7835852 m!8250754))

(declare-fun m!8250980 () Bool)

(assert (=> b!7835852 m!8250980))

(assert (=> b!7835851 m!8250742))

(assert (=> b!7835851 m!8250758))

(assert (=> b!7835853 m!8250760))

(assert (=> b!7835853 m!8250610))

(assert (=> b!7835448 d!2351363))

(declare-fun b!7835854 () Bool)

(declare-fun e!4633595 () Bool)

(assert (=> b!7835854 (= e!4633595 (= (head!15994 s1Rec!453) (c!1440938 r1!6261)))))

(declare-fun bm!726445 () Bool)

(declare-fun call!726450 () Bool)

(assert (=> bm!726445 (= call!726450 (isEmpty!42295 s1Rec!453))))

(declare-fun d!2351365 () Bool)

(declare-fun e!4633593 () Bool)

(assert (=> d!2351365 e!4633593))

(declare-fun c!1441004 () Bool)

(assert (=> d!2351365 (= c!1441004 ((_ is EmptyExpr!20987) r1!6261))))

(declare-fun lt!2677782 () Bool)

(declare-fun e!4633591 () Bool)

(assert (=> d!2351365 (= lt!2677782 e!4633591)))

(declare-fun c!1441006 () Bool)

(assert (=> d!2351365 (= c!1441006 (isEmpty!42295 s1Rec!453))))

(assert (=> d!2351365 (validRegex!11401 r1!6261)))

(assert (=> d!2351365 (= (matchR!10443 r1!6261 s1Rec!453) lt!2677782)))

(declare-fun b!7835855 () Bool)

(declare-fun res!3116745 () Bool)

(declare-fun e!4633594 () Bool)

(assert (=> b!7835855 (=> res!3116745 e!4633594)))

(assert (=> b!7835855 (= res!3116745 (not ((_ is ElementMatch!20987) r1!6261)))))

(declare-fun e!4633597 () Bool)

(assert (=> b!7835855 (= e!4633597 e!4633594)))

(declare-fun b!7835856 () Bool)

(declare-fun e!4633592 () Bool)

(assert (=> b!7835856 (= e!4633594 e!4633592)))

(declare-fun res!3116743 () Bool)

(assert (=> b!7835856 (=> (not res!3116743) (not e!4633592))))

(assert (=> b!7835856 (= res!3116743 (not lt!2677782))))

(declare-fun b!7835857 () Bool)

(assert (=> b!7835857 (= e!4633591 (nullable!9305 r1!6261))))

(declare-fun b!7835858 () Bool)

(declare-fun e!4633596 () Bool)

(assert (=> b!7835858 (= e!4633596 (not (= (head!15994 s1Rec!453) (c!1440938 r1!6261))))))

(declare-fun b!7835859 () Bool)

(declare-fun res!3116742 () Bool)

(assert (=> b!7835859 (=> (not res!3116742) (not e!4633595))))

(assert (=> b!7835859 (= res!3116742 (not call!726450))))

(declare-fun b!7835860 () Bool)

(declare-fun res!3116744 () Bool)

(assert (=> b!7835860 (=> (not res!3116744) (not e!4633595))))

(assert (=> b!7835860 (= res!3116744 (isEmpty!42295 (tail!15535 s1Rec!453)))))

(declare-fun b!7835861 () Bool)

(assert (=> b!7835861 (= e!4633597 (not lt!2677782))))

(declare-fun b!7835862 () Bool)

(assert (=> b!7835862 (= e!4633592 e!4633596)))

(declare-fun res!3116746 () Bool)

(assert (=> b!7835862 (=> res!3116746 e!4633596)))

(assert (=> b!7835862 (= res!3116746 call!726450)))

(declare-fun b!7835863 () Bool)

(declare-fun res!3116749 () Bool)

(assert (=> b!7835863 (=> res!3116749 e!4633594)))

(assert (=> b!7835863 (= res!3116749 e!4633595)))

(declare-fun res!3116748 () Bool)

(assert (=> b!7835863 (=> (not res!3116748) (not e!4633595))))

(assert (=> b!7835863 (= res!3116748 lt!2677782)))

(declare-fun b!7835864 () Bool)

(assert (=> b!7835864 (= e!4633593 e!4633597)))

(declare-fun c!1441005 () Bool)

(assert (=> b!7835864 (= c!1441005 ((_ is EmptyLang!20987) r1!6261))))

(declare-fun b!7835865 () Bool)

(assert (=> b!7835865 (= e!4633591 (matchR!10443 (derivativeStep!6264 r1!6261 (head!15994 s1Rec!453)) (tail!15535 s1Rec!453)))))

(declare-fun b!7835866 () Bool)

(declare-fun res!3116747 () Bool)

(assert (=> b!7835866 (=> res!3116747 e!4633596)))

(assert (=> b!7835866 (= res!3116747 (not (isEmpty!42295 (tail!15535 s1Rec!453))))))

(declare-fun b!7835867 () Bool)

(assert (=> b!7835867 (= e!4633593 (= lt!2677782 call!726450))))

(assert (= (and d!2351365 c!1441006) b!7835857))

(assert (= (and d!2351365 (not c!1441006)) b!7835865))

(assert (= (and d!2351365 c!1441004) b!7835867))

(assert (= (and d!2351365 (not c!1441004)) b!7835864))

(assert (= (and b!7835864 c!1441005) b!7835861))

(assert (= (and b!7835864 (not c!1441005)) b!7835855))

(assert (= (and b!7835855 (not res!3116745)) b!7835863))

(assert (= (and b!7835863 res!3116748) b!7835859))

(assert (= (and b!7835859 res!3116742) b!7835860))

(assert (= (and b!7835860 res!3116744) b!7835854))

(assert (= (and b!7835863 (not res!3116749)) b!7835856))

(assert (= (and b!7835856 res!3116743) b!7835862))

(assert (= (and b!7835862 (not res!3116746)) b!7835866))

(assert (= (and b!7835866 (not res!3116747)) b!7835858))

(assert (= (or b!7835867 b!7835859 b!7835862) bm!726445))

(declare-fun m!8250982 () Bool)

(assert (=> d!2351365 m!8250982))

(assert (=> d!2351365 m!8250646))

(assert (=> b!7835858 m!8250672))

(assert (=> b!7835854 m!8250672))

(assert (=> b!7835860 m!8250666))

(assert (=> b!7835860 m!8250666))

(declare-fun m!8250984 () Bool)

(assert (=> b!7835860 m!8250984))

(assert (=> b!7835866 m!8250666))

(assert (=> b!7835866 m!8250666))

(assert (=> b!7835866 m!8250984))

(assert (=> b!7835857 m!8250708))

(assert (=> bm!726445 m!8250982))

(assert (=> b!7835865 m!8250672))

(assert (=> b!7835865 m!8250672))

(declare-fun m!8250986 () Bool)

(assert (=> b!7835865 m!8250986))

(assert (=> b!7835865 m!8250666))

(assert (=> b!7835865 m!8250986))

(assert (=> b!7835865 m!8250666))

(declare-fun m!8250988 () Bool)

(assert (=> b!7835865 m!8250988))

(assert (=> b!7835449 d!2351365))

(declare-fun d!2351367 () Bool)

(declare-fun lt!2677783 () Int)

(assert (=> d!2351367 (>= lt!2677783 0)))

(declare-fun e!4633598 () Int)

(assert (=> d!2351367 (= lt!2677783 e!4633598)))

(declare-fun c!1441007 () Bool)

(assert (=> d!2351367 (= c!1441007 ((_ is Nil!73700) lt!2677701))))

(assert (=> d!2351367 (= (size!42777 lt!2677701) lt!2677783)))

(declare-fun b!7835868 () Bool)

(assert (=> b!7835868 (= e!4633598 0)))

(declare-fun b!7835869 () Bool)

(assert (=> b!7835869 (= e!4633598 (+ 1 (size!42777 (t!388559 lt!2677701))))))

(assert (= (and d!2351367 c!1441007) b!7835868))

(assert (= (and d!2351367 (not c!1441007)) b!7835869))

(declare-fun m!8250990 () Bool)

(assert (=> b!7835869 m!8250990))

(assert (=> b!7835439 d!2351367))

(declare-fun b!7835870 () Bool)

(declare-fun e!4633600 () Bool)

(declare-fun e!4633605 () Bool)

(assert (=> b!7835870 (= e!4633600 e!4633605)))

(declare-fun res!3116752 () Bool)

(assert (=> b!7835870 (=> (not res!3116752) (not e!4633605))))

(declare-fun call!726451 () Bool)

(assert (=> b!7835870 (= res!3116752 call!726451)))

(declare-fun b!7835871 () Bool)

(declare-fun call!726452 () Bool)

(assert (=> b!7835871 (= e!4633605 call!726452)))

(declare-fun b!7835873 () Bool)

(declare-fun e!4633602 () Bool)

(assert (=> b!7835873 (= e!4633602 call!726451)))

(declare-fun b!7835874 () Bool)

(declare-fun e!4633599 () Bool)

(declare-fun e!4633603 () Bool)

(assert (=> b!7835874 (= e!4633599 e!4633603)))

(declare-fun c!1441009 () Bool)

(assert (=> b!7835874 (= c!1441009 ((_ is Union!20987) r2!6199))))

(declare-fun bm!726446 () Bool)

(assert (=> bm!726446 (= call!726452 (validRegex!11401 (ite c!1441009 (regOne!42487 r2!6199) (regTwo!42486 r2!6199))))))

(declare-fun b!7835875 () Bool)

(declare-fun e!4633601 () Bool)

(assert (=> b!7835875 (= e!4633601 e!4633599)))

(declare-fun c!1441008 () Bool)

(assert (=> b!7835875 (= c!1441008 ((_ is Star!20987) r2!6199))))

(declare-fun b!7835876 () Bool)

(declare-fun res!3116753 () Bool)

(assert (=> b!7835876 (=> (not res!3116753) (not e!4633602))))

(assert (=> b!7835876 (= res!3116753 call!726452)))

(assert (=> b!7835876 (= e!4633603 e!4633602)))

(declare-fun b!7835877 () Bool)

(declare-fun e!4633604 () Bool)

(assert (=> b!7835877 (= e!4633599 e!4633604)))

(declare-fun res!3116750 () Bool)

(assert (=> b!7835877 (= res!3116750 (not (nullable!9305 (reg!21316 r2!6199))))))

(assert (=> b!7835877 (=> (not res!3116750) (not e!4633604))))

(declare-fun bm!726447 () Bool)

(declare-fun call!726453 () Bool)

(assert (=> bm!726447 (= call!726451 call!726453)))

(declare-fun b!7835872 () Bool)

(declare-fun res!3116751 () Bool)

(assert (=> b!7835872 (=> res!3116751 e!4633600)))

(assert (=> b!7835872 (= res!3116751 (not ((_ is Concat!29832) r2!6199)))))

(assert (=> b!7835872 (= e!4633603 e!4633600)))

(declare-fun d!2351369 () Bool)

(declare-fun res!3116754 () Bool)

(assert (=> d!2351369 (=> res!3116754 e!4633601)))

(assert (=> d!2351369 (= res!3116754 ((_ is ElementMatch!20987) r2!6199))))

(assert (=> d!2351369 (= (validRegex!11401 r2!6199) e!4633601)))

(declare-fun b!7835878 () Bool)

(assert (=> b!7835878 (= e!4633604 call!726453)))

(declare-fun bm!726448 () Bool)

(assert (=> bm!726448 (= call!726453 (validRegex!11401 (ite c!1441008 (reg!21316 r2!6199) (ite c!1441009 (regTwo!42487 r2!6199) (regOne!42486 r2!6199)))))))

(assert (= (and d!2351369 (not res!3116754)) b!7835875))

(assert (= (and b!7835875 c!1441008) b!7835877))

(assert (= (and b!7835875 (not c!1441008)) b!7835874))

(assert (= (and b!7835877 res!3116750) b!7835878))

(assert (= (and b!7835874 c!1441009) b!7835876))

(assert (= (and b!7835874 (not c!1441009)) b!7835872))

(assert (= (and b!7835876 res!3116753) b!7835873))

(assert (= (and b!7835872 (not res!3116751)) b!7835870))

(assert (= (and b!7835870 res!3116752) b!7835871))

(assert (= (or b!7835873 b!7835870) bm!726447))

(assert (= (or b!7835876 b!7835871) bm!726446))

(assert (= (or b!7835878 bm!726447) bm!726448))

(declare-fun m!8250992 () Bool)

(assert (=> bm!726446 m!8250992))

(declare-fun m!8250994 () Bool)

(assert (=> b!7835877 m!8250994))

(declare-fun m!8250996 () Bool)

(assert (=> bm!726448 m!8250996))

(assert (=> b!7835450 d!2351369))

(declare-fun b!7835879 () Bool)

(declare-fun e!4633610 () Bool)

(assert (=> b!7835879 (= e!4633610 (= (head!15994 s2Rec!453) (c!1440938 r2!6199)))))

(declare-fun bm!726449 () Bool)

(declare-fun call!726454 () Bool)

(assert (=> bm!726449 (= call!726454 (isEmpty!42295 s2Rec!453))))

(declare-fun d!2351371 () Bool)

(declare-fun e!4633608 () Bool)

(assert (=> d!2351371 e!4633608))

(declare-fun c!1441010 () Bool)

(assert (=> d!2351371 (= c!1441010 ((_ is EmptyExpr!20987) r2!6199))))

(declare-fun lt!2677784 () Bool)

(declare-fun e!4633606 () Bool)

(assert (=> d!2351371 (= lt!2677784 e!4633606)))

(declare-fun c!1441012 () Bool)

(assert (=> d!2351371 (= c!1441012 (isEmpty!42295 s2Rec!453))))

(assert (=> d!2351371 (validRegex!11401 r2!6199)))

(assert (=> d!2351371 (= (matchR!10443 r2!6199 s2Rec!453) lt!2677784)))

(declare-fun b!7835880 () Bool)

(declare-fun res!3116758 () Bool)

(declare-fun e!4633609 () Bool)

(assert (=> b!7835880 (=> res!3116758 e!4633609)))

(assert (=> b!7835880 (= res!3116758 (not ((_ is ElementMatch!20987) r2!6199)))))

(declare-fun e!4633612 () Bool)

(assert (=> b!7835880 (= e!4633612 e!4633609)))

(declare-fun b!7835881 () Bool)

(declare-fun e!4633607 () Bool)

(assert (=> b!7835881 (= e!4633609 e!4633607)))

(declare-fun res!3116756 () Bool)

(assert (=> b!7835881 (=> (not res!3116756) (not e!4633607))))

(assert (=> b!7835881 (= res!3116756 (not lt!2677784))))

(declare-fun b!7835882 () Bool)

(assert (=> b!7835882 (= e!4633606 (nullable!9305 r2!6199))))

(declare-fun b!7835883 () Bool)

(declare-fun e!4633611 () Bool)

(assert (=> b!7835883 (= e!4633611 (not (= (head!15994 s2Rec!453) (c!1440938 r2!6199))))))

(declare-fun b!7835884 () Bool)

(declare-fun res!3116755 () Bool)

(assert (=> b!7835884 (=> (not res!3116755) (not e!4633610))))

(assert (=> b!7835884 (= res!3116755 (not call!726454))))

(declare-fun b!7835885 () Bool)

(declare-fun res!3116757 () Bool)

(assert (=> b!7835885 (=> (not res!3116757) (not e!4633610))))

(assert (=> b!7835885 (= res!3116757 (isEmpty!42295 (tail!15535 s2Rec!453)))))

(declare-fun b!7835886 () Bool)

(assert (=> b!7835886 (= e!4633612 (not lt!2677784))))

(declare-fun b!7835887 () Bool)

(assert (=> b!7835887 (= e!4633607 e!4633611)))

(declare-fun res!3116759 () Bool)

(assert (=> b!7835887 (=> res!3116759 e!4633611)))

(assert (=> b!7835887 (= res!3116759 call!726454)))

(declare-fun b!7835888 () Bool)

(declare-fun res!3116762 () Bool)

(assert (=> b!7835888 (=> res!3116762 e!4633609)))

(assert (=> b!7835888 (= res!3116762 e!4633610)))

(declare-fun res!3116761 () Bool)

(assert (=> b!7835888 (=> (not res!3116761) (not e!4633610))))

(assert (=> b!7835888 (= res!3116761 lt!2677784)))

(declare-fun b!7835889 () Bool)

(assert (=> b!7835889 (= e!4633608 e!4633612)))

(declare-fun c!1441011 () Bool)

(assert (=> b!7835889 (= c!1441011 ((_ is EmptyLang!20987) r2!6199))))

(declare-fun b!7835890 () Bool)

(assert (=> b!7835890 (= e!4633606 (matchR!10443 (derivativeStep!6264 r2!6199 (head!15994 s2Rec!453)) (tail!15535 s2Rec!453)))))

(declare-fun b!7835891 () Bool)

(declare-fun res!3116760 () Bool)

(assert (=> b!7835891 (=> res!3116760 e!4633611)))

(assert (=> b!7835891 (= res!3116760 (not (isEmpty!42295 (tail!15535 s2Rec!453))))))

(declare-fun b!7835892 () Bool)

(assert (=> b!7835892 (= e!4633608 (= lt!2677784 call!726454))))

(assert (= (and d!2351371 c!1441012) b!7835882))

(assert (= (and d!2351371 (not c!1441012)) b!7835890))

(assert (= (and d!2351371 c!1441010) b!7835892))

(assert (= (and d!2351371 (not c!1441010)) b!7835889))

(assert (= (and b!7835889 c!1441011) b!7835886))

(assert (= (and b!7835889 (not c!1441011)) b!7835880))

(assert (= (and b!7835880 (not res!3116758)) b!7835888))

(assert (= (and b!7835888 res!3116761) b!7835884))

(assert (= (and b!7835884 res!3116755) b!7835885))

(assert (= (and b!7835885 res!3116757) b!7835879))

(assert (= (and b!7835888 (not res!3116762)) b!7835881))

(assert (= (and b!7835881 res!3116756) b!7835887))

(assert (= (and b!7835887 (not res!3116759)) b!7835891))

(assert (= (and b!7835891 (not res!3116760)) b!7835883))

(assert (= (or b!7835892 b!7835884 b!7835887) bm!726449))

(declare-fun m!8250998 () Bool)

(assert (=> d!2351371 m!8250998))

(assert (=> d!2351371 m!8250614))

(declare-fun m!8251000 () Bool)

(assert (=> b!7835883 m!8251000))

(assert (=> b!7835879 m!8251000))

(declare-fun m!8251002 () Bool)

(assert (=> b!7835885 m!8251002))

(assert (=> b!7835885 m!8251002))

(declare-fun m!8251004 () Bool)

(assert (=> b!7835885 m!8251004))

(assert (=> b!7835891 m!8251002))

(assert (=> b!7835891 m!8251002))

(assert (=> b!7835891 m!8251004))

(assert (=> b!7835882 m!8250916))

(assert (=> bm!726449 m!8250998))

(assert (=> b!7835890 m!8251000))

(assert (=> b!7835890 m!8251000))

(declare-fun m!8251006 () Bool)

(assert (=> b!7835890 m!8251006))

(assert (=> b!7835890 m!8251002))

(assert (=> b!7835890 m!8251006))

(assert (=> b!7835890 m!8251002))

(declare-fun m!8251008 () Bool)

(assert (=> b!7835890 m!8251008))

(assert (=> b!7835440 d!2351371))

(declare-fun b!7835897 () Bool)

(declare-fun e!4633615 () Bool)

(declare-fun tp!2317991 () Bool)

(assert (=> b!7835897 (= e!4633615 (and tp_is_empty!52329 tp!2317991))))

(assert (=> b!7835451 (= tp!2317914 e!4633615)))

(assert (= (and b!7835451 ((_ is Cons!73700) (t!388559 s1!4101))) b!7835897))

(declare-fun b!7835898 () Bool)

(declare-fun e!4633616 () Bool)

(declare-fun tp!2317992 () Bool)

(assert (=> b!7835898 (= e!4633616 (and tp_is_empty!52329 tp!2317992))))

(assert (=> b!7835436 (= tp!2317921 e!4633616)))

(assert (= (and b!7835436 ((_ is Cons!73700) (t!388559 s2!3721))) b!7835898))

(declare-fun b!7835899 () Bool)

(declare-fun e!4633617 () Bool)

(declare-fun tp!2317993 () Bool)

(assert (=> b!7835899 (= e!4633617 (and tp_is_empty!52329 tp!2317993))))

(assert (=> b!7835447 (= tp!2317920 e!4633617)))

(assert (= (and b!7835447 ((_ is Cons!73700) (t!388559 s2Rec!453))) b!7835899))

(declare-fun b!7835912 () Bool)

(declare-fun e!4633620 () Bool)

(declare-fun tp!2318008 () Bool)

(assert (=> b!7835912 (= e!4633620 tp!2318008)))

(declare-fun b!7835911 () Bool)

(declare-fun tp!2318005 () Bool)

(declare-fun tp!2318004 () Bool)

(assert (=> b!7835911 (= e!4633620 (and tp!2318005 tp!2318004))))

(assert (=> b!7835453 (= tp!2317917 e!4633620)))

(declare-fun b!7835913 () Bool)

(declare-fun tp!2318006 () Bool)

(declare-fun tp!2318007 () Bool)

(assert (=> b!7835913 (= e!4633620 (and tp!2318006 tp!2318007))))

(declare-fun b!7835910 () Bool)

(assert (=> b!7835910 (= e!4633620 tp_is_empty!52329)))

(assert (= (and b!7835453 ((_ is ElementMatch!20987) (regOne!42487 r2!6199))) b!7835910))

(assert (= (and b!7835453 ((_ is Concat!29832) (regOne!42487 r2!6199))) b!7835911))

(assert (= (and b!7835453 ((_ is Star!20987) (regOne!42487 r2!6199))) b!7835912))

(assert (= (and b!7835453 ((_ is Union!20987) (regOne!42487 r2!6199))) b!7835913))

(declare-fun b!7835916 () Bool)

(declare-fun e!4633621 () Bool)

(declare-fun tp!2318013 () Bool)

(assert (=> b!7835916 (= e!4633621 tp!2318013)))

(declare-fun b!7835915 () Bool)

(declare-fun tp!2318010 () Bool)

(declare-fun tp!2318009 () Bool)

(assert (=> b!7835915 (= e!4633621 (and tp!2318010 tp!2318009))))

(assert (=> b!7835453 (= tp!2317919 e!4633621)))

(declare-fun b!7835917 () Bool)

(declare-fun tp!2318011 () Bool)

(declare-fun tp!2318012 () Bool)

(assert (=> b!7835917 (= e!4633621 (and tp!2318011 tp!2318012))))

(declare-fun b!7835914 () Bool)

(assert (=> b!7835914 (= e!4633621 tp_is_empty!52329)))

(assert (= (and b!7835453 ((_ is ElementMatch!20987) (regTwo!42487 r2!6199))) b!7835914))

(assert (= (and b!7835453 ((_ is Concat!29832) (regTwo!42487 r2!6199))) b!7835915))

(assert (= (and b!7835453 ((_ is Star!20987) (regTwo!42487 r2!6199))) b!7835916))

(assert (= (and b!7835453 ((_ is Union!20987) (regTwo!42487 r2!6199))) b!7835917))

(declare-fun b!7835918 () Bool)

(declare-fun e!4633622 () Bool)

(declare-fun tp!2318014 () Bool)

(assert (=> b!7835918 (= e!4633622 (and tp_is_empty!52329 tp!2318014))))

(assert (=> b!7835459 (= tp!2317918 e!4633622)))

(assert (= (and b!7835459 ((_ is Cons!73700) (t!388559 s!14274))) b!7835918))

(declare-fun b!7835921 () Bool)

(declare-fun e!4633623 () Bool)

(declare-fun tp!2318019 () Bool)

(assert (=> b!7835921 (= e!4633623 tp!2318019)))

(declare-fun b!7835920 () Bool)

(declare-fun tp!2318016 () Bool)

(declare-fun tp!2318015 () Bool)

(assert (=> b!7835920 (= e!4633623 (and tp!2318016 tp!2318015))))

(assert (=> b!7835443 (= tp!2317912 e!4633623)))

(declare-fun b!7835922 () Bool)

(declare-fun tp!2318017 () Bool)

(declare-fun tp!2318018 () Bool)

(assert (=> b!7835922 (= e!4633623 (and tp!2318017 tp!2318018))))

(declare-fun b!7835919 () Bool)

(assert (=> b!7835919 (= e!4633623 tp_is_empty!52329)))

(assert (= (and b!7835443 ((_ is ElementMatch!20987) (regOne!42487 r1!6261))) b!7835919))

(assert (= (and b!7835443 ((_ is Concat!29832) (regOne!42487 r1!6261))) b!7835920))

(assert (= (and b!7835443 ((_ is Star!20987) (regOne!42487 r1!6261))) b!7835921))

(assert (= (and b!7835443 ((_ is Union!20987) (regOne!42487 r1!6261))) b!7835922))

(declare-fun b!7835925 () Bool)

(declare-fun e!4633624 () Bool)

(declare-fun tp!2318024 () Bool)

(assert (=> b!7835925 (= e!4633624 tp!2318024)))

(declare-fun b!7835924 () Bool)

(declare-fun tp!2318021 () Bool)

(declare-fun tp!2318020 () Bool)

(assert (=> b!7835924 (= e!4633624 (and tp!2318021 tp!2318020))))

(assert (=> b!7835443 (= tp!2317908 e!4633624)))

(declare-fun b!7835926 () Bool)

(declare-fun tp!2318022 () Bool)

(declare-fun tp!2318023 () Bool)

(assert (=> b!7835926 (= e!4633624 (and tp!2318022 tp!2318023))))

(declare-fun b!7835923 () Bool)

(assert (=> b!7835923 (= e!4633624 tp_is_empty!52329)))

(assert (= (and b!7835443 ((_ is ElementMatch!20987) (regTwo!42487 r1!6261))) b!7835923))

(assert (= (and b!7835443 ((_ is Concat!29832) (regTwo!42487 r1!6261))) b!7835924))

(assert (= (and b!7835443 ((_ is Star!20987) (regTwo!42487 r1!6261))) b!7835925))

(assert (= (and b!7835443 ((_ is Union!20987) (regTwo!42487 r1!6261))) b!7835926))

(declare-fun b!7835929 () Bool)

(declare-fun e!4633625 () Bool)

(declare-fun tp!2318029 () Bool)

(assert (=> b!7835929 (= e!4633625 tp!2318029)))

(declare-fun b!7835928 () Bool)

(declare-fun tp!2318026 () Bool)

(declare-fun tp!2318025 () Bool)

(assert (=> b!7835928 (= e!4633625 (and tp!2318026 tp!2318025))))

(assert (=> b!7835438 (= tp!2317915 e!4633625)))

(declare-fun b!7835930 () Bool)

(declare-fun tp!2318027 () Bool)

(declare-fun tp!2318028 () Bool)

(assert (=> b!7835930 (= e!4633625 (and tp!2318027 tp!2318028))))

(declare-fun b!7835927 () Bool)

(assert (=> b!7835927 (= e!4633625 tp_is_empty!52329)))

(assert (= (and b!7835438 ((_ is ElementMatch!20987) (reg!21316 r2!6199))) b!7835927))

(assert (= (and b!7835438 ((_ is Concat!29832) (reg!21316 r2!6199))) b!7835928))

(assert (= (and b!7835438 ((_ is Star!20987) (reg!21316 r2!6199))) b!7835929))

(assert (= (and b!7835438 ((_ is Union!20987) (reg!21316 r2!6199))) b!7835930))

(declare-fun b!7835931 () Bool)

(declare-fun e!4633626 () Bool)

(declare-fun tp!2318030 () Bool)

(assert (=> b!7835931 (= e!4633626 (and tp_is_empty!52329 tp!2318030))))

(assert (=> b!7835460 (= tp!2317911 e!4633626)))

(assert (= (and b!7835460 ((_ is Cons!73700) (t!388559 s1Rec!453))) b!7835931))

(declare-fun b!7835934 () Bool)

(declare-fun e!4633627 () Bool)

(declare-fun tp!2318035 () Bool)

(assert (=> b!7835934 (= e!4633627 tp!2318035)))

(declare-fun b!7835933 () Bool)

(declare-fun tp!2318032 () Bool)

(declare-fun tp!2318031 () Bool)

(assert (=> b!7835933 (= e!4633627 (and tp!2318032 tp!2318031))))

(assert (=> b!7835461 (= tp!2317907 e!4633627)))

(declare-fun b!7835935 () Bool)

(declare-fun tp!2318033 () Bool)

(declare-fun tp!2318034 () Bool)

(assert (=> b!7835935 (= e!4633627 (and tp!2318033 tp!2318034))))

(declare-fun b!7835932 () Bool)

(assert (=> b!7835932 (= e!4633627 tp_is_empty!52329)))

(assert (= (and b!7835461 ((_ is ElementMatch!20987) (regOne!42486 r2!6199))) b!7835932))

(assert (= (and b!7835461 ((_ is Concat!29832) (regOne!42486 r2!6199))) b!7835933))

(assert (= (and b!7835461 ((_ is Star!20987) (regOne!42486 r2!6199))) b!7835934))

(assert (= (and b!7835461 ((_ is Union!20987) (regOne!42486 r2!6199))) b!7835935))

(declare-fun b!7835938 () Bool)

(declare-fun e!4633628 () Bool)

(declare-fun tp!2318040 () Bool)

(assert (=> b!7835938 (= e!4633628 tp!2318040)))

(declare-fun b!7835937 () Bool)

(declare-fun tp!2318037 () Bool)

(declare-fun tp!2318036 () Bool)

(assert (=> b!7835937 (= e!4633628 (and tp!2318037 tp!2318036))))

(assert (=> b!7835461 (= tp!2317916 e!4633628)))

(declare-fun b!7835939 () Bool)

(declare-fun tp!2318038 () Bool)

(declare-fun tp!2318039 () Bool)

(assert (=> b!7835939 (= e!4633628 (and tp!2318038 tp!2318039))))

(declare-fun b!7835936 () Bool)

(assert (=> b!7835936 (= e!4633628 tp_is_empty!52329)))

(assert (= (and b!7835461 ((_ is ElementMatch!20987) (regTwo!42486 r2!6199))) b!7835936))

(assert (= (and b!7835461 ((_ is Concat!29832) (regTwo!42486 r2!6199))) b!7835937))

(assert (= (and b!7835461 ((_ is Star!20987) (regTwo!42486 r2!6199))) b!7835938))

(assert (= (and b!7835461 ((_ is Union!20987) (regTwo!42486 r2!6199))) b!7835939))

(declare-fun b!7835942 () Bool)

(declare-fun e!4633629 () Bool)

(declare-fun tp!2318045 () Bool)

(assert (=> b!7835942 (= e!4633629 tp!2318045)))

(declare-fun b!7835941 () Bool)

(declare-fun tp!2318042 () Bool)

(declare-fun tp!2318041 () Bool)

(assert (=> b!7835941 (= e!4633629 (and tp!2318042 tp!2318041))))

(assert (=> b!7835445 (= tp!2317913 e!4633629)))

(declare-fun b!7835943 () Bool)

(declare-fun tp!2318043 () Bool)

(declare-fun tp!2318044 () Bool)

(assert (=> b!7835943 (= e!4633629 (and tp!2318043 tp!2318044))))

(declare-fun b!7835940 () Bool)

(assert (=> b!7835940 (= e!4633629 tp_is_empty!52329)))

(assert (= (and b!7835445 ((_ is ElementMatch!20987) (reg!21316 r1!6261))) b!7835940))

(assert (= (and b!7835445 ((_ is Concat!29832) (reg!21316 r1!6261))) b!7835941))

(assert (= (and b!7835445 ((_ is Star!20987) (reg!21316 r1!6261))) b!7835942))

(assert (= (and b!7835445 ((_ is Union!20987) (reg!21316 r1!6261))) b!7835943))

(declare-fun b!7835946 () Bool)

(declare-fun e!4633630 () Bool)

(declare-fun tp!2318050 () Bool)

(assert (=> b!7835946 (= e!4633630 tp!2318050)))

(declare-fun b!7835945 () Bool)

(declare-fun tp!2318047 () Bool)

(declare-fun tp!2318046 () Bool)

(assert (=> b!7835945 (= e!4633630 (and tp!2318047 tp!2318046))))

(assert (=> b!7835456 (= tp!2317910 e!4633630)))

(declare-fun b!7835947 () Bool)

(declare-fun tp!2318048 () Bool)

(declare-fun tp!2318049 () Bool)

(assert (=> b!7835947 (= e!4633630 (and tp!2318048 tp!2318049))))

(declare-fun b!7835944 () Bool)

(assert (=> b!7835944 (= e!4633630 tp_is_empty!52329)))

(assert (= (and b!7835456 ((_ is ElementMatch!20987) (regOne!42486 r1!6261))) b!7835944))

(assert (= (and b!7835456 ((_ is Concat!29832) (regOne!42486 r1!6261))) b!7835945))

(assert (= (and b!7835456 ((_ is Star!20987) (regOne!42486 r1!6261))) b!7835946))

(assert (= (and b!7835456 ((_ is Union!20987) (regOne!42486 r1!6261))) b!7835947))

(declare-fun b!7835950 () Bool)

(declare-fun e!4633631 () Bool)

(declare-fun tp!2318055 () Bool)

(assert (=> b!7835950 (= e!4633631 tp!2318055)))

(declare-fun b!7835949 () Bool)

(declare-fun tp!2318052 () Bool)

(declare-fun tp!2318051 () Bool)

(assert (=> b!7835949 (= e!4633631 (and tp!2318052 tp!2318051))))

(assert (=> b!7835456 (= tp!2317909 e!4633631)))

(declare-fun b!7835951 () Bool)

(declare-fun tp!2318053 () Bool)

(declare-fun tp!2318054 () Bool)

(assert (=> b!7835951 (= e!4633631 (and tp!2318053 tp!2318054))))

(declare-fun b!7835948 () Bool)

(assert (=> b!7835948 (= e!4633631 tp_is_empty!52329)))

(assert (= (and b!7835456 ((_ is ElementMatch!20987) (regTwo!42486 r1!6261))) b!7835948))

(assert (= (and b!7835456 ((_ is Concat!29832) (regTwo!42486 r1!6261))) b!7835949))

(assert (= (and b!7835456 ((_ is Star!20987) (regTwo!42486 r1!6261))) b!7835950))

(assert (= (and b!7835456 ((_ is Union!20987) (regTwo!42486 r1!6261))) b!7835951))

(check-sat (not b!7835939) (not b!7835694) (not b!7835683) (not b!7835613) (not b!7835614) (not b!7835946) (not b!7835918) (not b!7835639) (not b!7835705) (not d!2351295) (not b!7835857) (not b!7835566) (not b!7835695) (not b!7835608) (not b!7835621) (not b!7835949) (not bm!726449) (not b!7835674) (not b!7835682) (not b!7835640) (not b!7835922) (not b!7835562) (not bm!726444) (not b!7835860) (not b!7835890) (not b!7835937) (not d!2351361) (not b!7835934) (not b!7835899) (not bm!726448) (not b!7835929) (not b!7835898) (not bm!726442) (not b!7835916) (not d!2351337) (not d!2351309) (not b!7835951) (not b!7835877) (not b!7835926) (not b!7835865) (not b!7835854) (not b!7835852) (not b!7835943) (not b!7835858) (not b!7835607) (not b!7835925) (not b!7835921) (not b!7835917) (not d!2351333) (not bm!726446) (not b!7835735) (not b!7835573) (not b!7835701) (not b!7835891) (not b!7835666) (not b!7835615) (not d!2351327) (not b!7835928) (not d!2351279) (not b!7835950) (not b!7835935) (not b!7835942) (not b!7835924) (not b!7835667) (not d!2351315) (not b!7835734) (not b!7835930) (not b!7835883) (not b!7835938) (not b!7835933) (not b!7835568) (not d!2351345) (not b!7835941) (not b!7835882) tp_is_empty!52329 (not b!7835713) (not b!7835945) (not b!7835915) (not b!7835912) (not b!7835911) (not b!7835885) (not b!7835483) (not b!7835623) (not b!7835574) (not b!7835931) (not bm!726445) (not bm!726419) (not b!7835599) (not b!7835869) (not b!7835848) (not b!7835920) (not bm!726430) (not b!7835897) (not b!7835851) (not b!7835879) (not d!2351371) (not b!7835484) (not b!7835707) (not b!7835485) (not b!7835712) (not d!2351303) (not d!2351325) (not b!7835609) (not b!7835853) (not b!7835565) (not b!7835622) (not b!7835704) (not b!7835913) (not d!2351365) (not d!2351359) (not b!7835866) (not b!7835947) (not b!7835641))
(check-sat)
(get-model)

(declare-fun b!7836157 () Bool)

(declare-fun e!4633751 () List!73824)

(assert (=> b!7836157 (= e!4633751 s2!3721)))

(declare-fun d!2351517 () Bool)

(declare-fun e!4633750 () Bool)

(assert (=> d!2351517 e!4633750))

(declare-fun res!3116837 () Bool)

(assert (=> d!2351517 (=> (not res!3116837) (not e!4633750))))

(declare-fun lt!2677814 () List!73824)

(assert (=> d!2351517 (= res!3116837 (= (content!15646 lt!2677814) ((_ map or) (content!15646 (t!388559 s1!4101)) (content!15646 s2!3721))))))

(assert (=> d!2351517 (= lt!2677814 e!4633751)))

(declare-fun c!1441079 () Bool)

(assert (=> d!2351517 (= c!1441079 ((_ is Nil!73700) (t!388559 s1!4101)))))

(assert (=> d!2351517 (= (++!18021 (t!388559 s1!4101) s2!3721) lt!2677814)))

(declare-fun b!7836160 () Bool)

(assert (=> b!7836160 (= e!4633750 (or (not (= s2!3721 Nil!73700)) (= lt!2677814 (t!388559 s1!4101))))))

(declare-fun b!7836159 () Bool)

(declare-fun res!3116836 () Bool)

(assert (=> b!7836159 (=> (not res!3116836) (not e!4633750))))

(assert (=> b!7836159 (= res!3116836 (= (size!42777 lt!2677814) (+ (size!42777 (t!388559 s1!4101)) (size!42777 s2!3721))))))

(declare-fun b!7836158 () Bool)

(assert (=> b!7836158 (= e!4633751 (Cons!73700 (h!80148 (t!388559 s1!4101)) (++!18021 (t!388559 (t!388559 s1!4101)) s2!3721)))))

(assert (= (and d!2351517 c!1441079) b!7836157))

(assert (= (and d!2351517 (not c!1441079)) b!7836158))

(assert (= (and d!2351517 res!3116837) b!7836159))

(assert (= (and b!7836159 res!3116836) b!7836160))

(declare-fun m!8251238 () Bool)

(assert (=> d!2351517 m!8251238))

(declare-fun m!8251240 () Bool)

(assert (=> d!2351517 m!8251240))

(assert (=> d!2351517 m!8250878))

(declare-fun m!8251242 () Bool)

(assert (=> b!7836159 m!8251242))

(assert (=> b!7836159 m!8250726))

(assert (=> b!7836159 m!8250882))

(declare-fun m!8251244 () Bool)

(assert (=> b!7836158 m!8251244))

(assert (=> b!7835694 d!2351517))

(declare-fun d!2351519 () Bool)

(declare-fun nullableFct!3672 (Regex!20987) Bool)

(assert (=> d!2351519 (= (nullable!9305 r2!6199) (nullableFct!3672 r2!6199))))

(declare-fun bs!1966874 () Bool)

(assert (= bs!1966874 d!2351519))

(declare-fun m!8251256 () Bool)

(assert (=> bs!1966874 m!8251256))

(assert (=> b!7835882 d!2351519))

(declare-fun d!2351525 () Bool)

(declare-fun lt!2677816 () Int)

(assert (=> d!2351525 (>= lt!2677816 0)))

(declare-fun e!4633754 () Int)

(assert (=> d!2351525 (= lt!2677816 e!4633754)))

(declare-fun c!1441081 () Bool)

(assert (=> d!2351525 (= c!1441081 ((_ is Nil!73700) lt!2677757))))

(assert (=> d!2351525 (= (size!42777 lt!2677757) lt!2677816)))

(declare-fun b!7836165 () Bool)

(assert (=> b!7836165 (= e!4633754 0)))

(declare-fun b!7836166 () Bool)

(assert (=> b!7836166 (= e!4633754 (+ 1 (size!42777 (t!388559 lt!2677757))))))

(assert (= (and d!2351525 c!1441081) b!7836165))

(assert (= (and d!2351525 (not c!1441081)) b!7836166))

(declare-fun m!8251258 () Bool)

(assert (=> b!7836166 m!8251258))

(assert (=> b!7835683 d!2351525))

(assert (=> b!7835683 d!2351367))

(declare-fun d!2351527 () Bool)

(declare-fun lt!2677817 () Int)

(assert (=> d!2351527 (>= lt!2677817 0)))

(declare-fun e!4633755 () Int)

(assert (=> d!2351527 (= lt!2677817 e!4633755)))

(declare-fun c!1441082 () Bool)

(assert (=> d!2351527 (= c!1441082 ((_ is Nil!73700) (t!388559 s2Rec!453)))))

(assert (=> d!2351527 (= (size!42777 (t!388559 s2Rec!453)) lt!2677817)))

(declare-fun b!7836167 () Bool)

(assert (=> b!7836167 (= e!4633755 0)))

(declare-fun b!7836168 () Bool)

(assert (=> b!7836168 (= e!4633755 (+ 1 (size!42777 (t!388559 (t!388559 s2Rec!453)))))))

(assert (= (and d!2351527 c!1441082) b!7836167))

(assert (= (and d!2351527 (not c!1441082)) b!7836168))

(declare-fun m!8251260 () Bool)

(assert (=> b!7836168 m!8251260))

(assert (=> b!7835683 d!2351527))

(assert (=> b!7835704 d!2351519))

(declare-fun d!2351531 () Bool)

(declare-fun lt!2677819 () Int)

(assert (=> d!2351531 (>= lt!2677819 0)))

(declare-fun e!4633757 () Int)

(assert (=> d!2351531 (= lt!2677819 e!4633757)))

(declare-fun c!1441084 () Bool)

(assert (=> d!2351531 (= c!1441084 ((_ is Nil!73700) lt!2677695))))

(assert (=> d!2351531 (= (size!42777 lt!2677695) lt!2677819)))

(declare-fun b!7836171 () Bool)

(assert (=> b!7836171 (= e!4633757 0)))

(declare-fun b!7836172 () Bool)

(assert (=> b!7836172 (= e!4633757 (+ 1 (size!42777 (t!388559 lt!2677695))))))

(assert (= (and d!2351531 c!1441084) b!7836171))

(assert (= (and d!2351531 (not c!1441084)) b!7836172))

(declare-fun m!8251264 () Bool)

(assert (=> b!7836172 m!8251264))

(assert (=> b!7835615 d!2351531))

(assert (=> b!7835615 d!2351367))

(declare-fun d!2351535 () Bool)

(assert (=> d!2351535 (= (isEmpty!42295 s2Rec!453) ((_ is Nil!73700) s2Rec!453))))

(assert (=> d!2351371 d!2351535))

(assert (=> d!2351371 d!2351369))

(declare-fun d!2351541 () Bool)

(assert (=> d!2351541 (= (head!15994 s2Rec!453) (h!80148 s2Rec!453))))

(assert (=> b!7835879 d!2351541))

(declare-fun d!2351543 () Bool)

(assert (=> d!2351543 (= (head!15994 lt!2677701) (h!80148 lt!2677701))))

(assert (=> b!7835613 d!2351543))

(declare-fun d!2351545 () Bool)

(assert (=> d!2351545 (= (head!15994 lt!2677695) (h!80148 lt!2677695))))

(assert (=> b!7835613 d!2351545))

(declare-fun d!2351547 () Bool)

(assert (=> d!2351547 (= (nullable!9305 (reg!21316 r1!6261)) (nullableFct!3672 (reg!21316 r1!6261)))))

(declare-fun bs!1966876 () Bool)

(assert (= bs!1966876 d!2351547))

(declare-fun m!8251270 () Bool)

(assert (=> bs!1966876 m!8251270))

(assert (=> b!7835848 d!2351547))

(assert (=> b!7835485 d!2351287))

(assert (=> b!7835485 d!2351313))

(declare-fun d!2351549 () Bool)

(assert (=> d!2351549 (= (isEmpty!42295 (tail!15535 s1!4101)) ((_ is Nil!73700) (tail!15535 s1!4101)))))

(assert (=> b!7835574 d!2351549))

(declare-fun d!2351551 () Bool)

(assert (=> d!2351551 (= (tail!15535 s1!4101) (t!388559 s1!4101))))

(assert (=> b!7835574 d!2351551))

(declare-fun d!2351553 () Bool)

(declare-fun c!1441098 () Bool)

(assert (=> d!2351553 (= c!1441098 ((_ is Nil!73700) lt!2677766))))

(declare-fun e!4633776 () (InoxSet C!42300))

(assert (=> d!2351553 (= (content!15646 lt!2677766) e!4633776)))

(declare-fun b!7836209 () Bool)

(assert (=> b!7836209 (= e!4633776 ((as const (Array C!42300 Bool)) false))))

(declare-fun b!7836210 () Bool)

(assert (=> b!7836210 (= e!4633776 ((_ map or) (store ((as const (Array C!42300 Bool)) false) (h!80148 lt!2677766) true) (content!15646 (t!388559 lt!2677766))))))

(assert (= (and d!2351553 c!1441098) b!7836209))

(assert (= (and d!2351553 (not c!1441098)) b!7836210))

(declare-fun m!8251292 () Bool)

(assert (=> b!7836210 m!8251292))

(declare-fun m!8251294 () Bool)

(assert (=> b!7836210 m!8251294))

(assert (=> d!2351345 d!2351553))

(declare-fun d!2351565 () Bool)

(declare-fun c!1441099 () Bool)

(assert (=> d!2351565 (= c!1441099 ((_ is Nil!73700) s1Rec!453))))

(declare-fun e!4633777 () (InoxSet C!42300))

(assert (=> d!2351565 (= (content!15646 s1Rec!453) e!4633777)))

(declare-fun b!7836211 () Bool)

(assert (=> b!7836211 (= e!4633777 ((as const (Array C!42300 Bool)) false))))

(declare-fun b!7836212 () Bool)

(assert (=> b!7836212 (= e!4633777 ((_ map or) (store ((as const (Array C!42300 Bool)) false) (h!80148 s1Rec!453) true) (content!15646 (t!388559 s1Rec!453))))))

(assert (= (and d!2351565 c!1441099) b!7836211))

(assert (= (and d!2351565 (not c!1441099)) b!7836212))

(declare-fun m!8251300 () Bool)

(assert (=> b!7836212 m!8251300))

(declare-fun m!8251302 () Bool)

(assert (=> b!7836212 m!8251302))

(assert (=> d!2351345 d!2351565))

(declare-fun d!2351569 () Bool)

(declare-fun c!1441101 () Bool)

(assert (=> d!2351569 (= c!1441101 ((_ is Nil!73700) s2Rec!453))))

(declare-fun e!4633780 () (InoxSet C!42300))

(assert (=> d!2351569 (= (content!15646 s2Rec!453) e!4633780)))

(declare-fun b!7836217 () Bool)

(assert (=> b!7836217 (= e!4633780 ((as const (Array C!42300 Bool)) false))))

(declare-fun b!7836218 () Bool)

(assert (=> b!7836218 (= e!4633780 ((_ map or) (store ((as const (Array C!42300 Bool)) false) (h!80148 s2Rec!453) true) (content!15646 (t!388559 s2Rec!453))))))

(assert (= (and d!2351569 c!1441101) b!7836217))

(assert (= (and d!2351569 (not c!1441101)) b!7836218))

(declare-fun m!8251304 () Bool)

(assert (=> b!7836218 m!8251304))

(assert (=> b!7836218 m!8250856))

(assert (=> d!2351345 d!2351569))

(declare-fun b!7836221 () Bool)

(declare-fun e!4633783 () Bool)

(assert (=> b!7836221 (= e!4633783 (isPrefix!6337 (tail!15535 lt!2677701) (tail!15535 (++!18021 lt!2677701 (t!388559 s2Rec!453)))))))

(declare-fun b!7836220 () Bool)

(declare-fun res!3116854 () Bool)

(assert (=> b!7836220 (=> (not res!3116854) (not e!4633783))))

(assert (=> b!7836220 (= res!3116854 (= (head!15994 lt!2677701) (head!15994 (++!18021 lt!2677701 (t!388559 s2Rec!453)))))))

(declare-fun b!7836219 () Bool)

(declare-fun e!4633781 () Bool)

(assert (=> b!7836219 (= e!4633781 e!4633783)))

(declare-fun res!3116855 () Bool)

(assert (=> b!7836219 (=> (not res!3116855) (not e!4633783))))

(assert (=> b!7836219 (= res!3116855 (not ((_ is Nil!73700) (++!18021 lt!2677701 (t!388559 s2Rec!453)))))))

(declare-fun d!2351571 () Bool)

(declare-fun e!4633782 () Bool)

(assert (=> d!2351571 e!4633782))

(declare-fun res!3116852 () Bool)

(assert (=> d!2351571 (=> res!3116852 e!4633782)))

(declare-fun lt!2677826 () Bool)

(assert (=> d!2351571 (= res!3116852 (not lt!2677826))))

(assert (=> d!2351571 (= lt!2677826 e!4633781)))

(declare-fun res!3116853 () Bool)

(assert (=> d!2351571 (=> res!3116853 e!4633781)))

(assert (=> d!2351571 (= res!3116853 ((_ is Nil!73700) lt!2677701))))

(assert (=> d!2351571 (= (isPrefix!6337 lt!2677701 (++!18021 lt!2677701 (t!388559 s2Rec!453))) lt!2677826)))

(declare-fun b!7836222 () Bool)

(assert (=> b!7836222 (= e!4633782 (>= (size!42777 (++!18021 lt!2677701 (t!388559 s2Rec!453))) (size!42777 lt!2677701)))))

(assert (= (and d!2351571 (not res!3116853)) b!7836219))

(assert (= (and b!7836219 res!3116855) b!7836220))

(assert (= (and b!7836220 res!3116854) b!7836221))

(assert (= (and d!2351571 (not res!3116852)) b!7836222))

(assert (=> b!7836221 m!8250736))

(assert (=> b!7836221 m!8250618))

(declare-fun m!8251312 () Bool)

(assert (=> b!7836221 m!8251312))

(assert (=> b!7836221 m!8250736))

(assert (=> b!7836221 m!8251312))

(declare-fun m!8251318 () Bool)

(assert (=> b!7836221 m!8251318))

(assert (=> b!7836220 m!8250742))

(assert (=> b!7836220 m!8250618))

(declare-fun m!8251322 () Bool)

(assert (=> b!7836220 m!8251322))

(assert (=> b!7836222 m!8250618))

(declare-fun m!8251324 () Bool)

(assert (=> b!7836222 m!8251324))

(assert (=> b!7836222 m!8250610))

(assert (=> d!2351325 d!2351571))

(assert (=> d!2351325 d!2351327))

(declare-fun d!2351577 () Bool)

(assert (=> d!2351577 (isPrefix!6337 lt!2677701 (++!18021 lt!2677701 (t!388559 s2Rec!453)))))

(assert (=> d!2351577 true))

(declare-fun _$46!2104 () Unit!168784)

(assert (=> d!2351577 (= (choose!59590 lt!2677701 (t!388559 s2Rec!453)) _$46!2104)))

(declare-fun bs!1966877 () Bool)

(assert (= bs!1966877 d!2351577))

(assert (=> bs!1966877 m!8250618))

(assert (=> bs!1966877 m!8250618))

(assert (=> bs!1966877 m!8250826))

(assert (=> d!2351325 d!2351577))

(declare-fun d!2351585 () Bool)

(assert (=> d!2351585 (= (isEmpty!42295 s2!3721) ((_ is Nil!73700) s2!3721))))

(assert (=> d!2351337 d!2351585))

(assert (=> d!2351337 d!2351369))

(declare-fun d!2351587 () Bool)

(assert (=> d!2351587 (= (nullable!9305 r1!6261) (nullableFct!3672 r1!6261))))

(declare-fun bs!1966879 () Bool)

(assert (= bs!1966879 d!2351587))

(declare-fun m!8251340 () Bool)

(assert (=> bs!1966879 m!8251340))

(assert (=> b!7835857 d!2351587))

(declare-fun d!2351589 () Bool)

(assert (=> d!2351589 (= (head!15994 s2!3721) (h!80148 s2!3721))))

(assert (=> b!7835701 d!2351589))

(declare-fun d!2351591 () Bool)

(declare-fun c!1441106 () Bool)

(assert (=> d!2351591 (= c!1441106 ((_ is Nil!73700) lt!2677760))))

(declare-fun e!4633798 () (InoxSet C!42300))

(assert (=> d!2351591 (= (content!15646 lt!2677760) e!4633798)))

(declare-fun b!7836244 () Bool)

(assert (=> b!7836244 (= e!4633798 ((as const (Array C!42300 Bool)) false))))

(declare-fun b!7836245 () Bool)

(assert (=> b!7836245 (= e!4633798 ((_ map or) (store ((as const (Array C!42300 Bool)) false) (h!80148 lt!2677760) true) (content!15646 (t!388559 lt!2677760))))))

(assert (= (and d!2351591 c!1441106) b!7836244))

(assert (= (and d!2351591 (not c!1441106)) b!7836245))

(declare-fun m!8251348 () Bool)

(assert (=> b!7836245 m!8251348))

(declare-fun m!8251350 () Bool)

(assert (=> b!7836245 m!8251350))

(assert (=> d!2351333 d!2351591))

(declare-fun d!2351593 () Bool)

(declare-fun c!1441107 () Bool)

(assert (=> d!2351593 (= c!1441107 ((_ is Nil!73700) s1!4101))))

(declare-fun e!4633800 () (InoxSet C!42300))

(assert (=> d!2351593 (= (content!15646 s1!4101) e!4633800)))

(declare-fun b!7836247 () Bool)

(assert (=> b!7836247 (= e!4633800 ((as const (Array C!42300 Bool)) false))))

(declare-fun b!7836248 () Bool)

(assert (=> b!7836248 (= e!4633800 ((_ map or) (store ((as const (Array C!42300 Bool)) false) (h!80148 s1!4101) true) (content!15646 (t!388559 s1!4101))))))

(assert (= (and d!2351593 c!1441107) b!7836247))

(assert (= (and d!2351593 (not c!1441107)) b!7836248))

(declare-fun m!8251352 () Bool)

(assert (=> b!7836248 m!8251352))

(assert (=> b!7836248 m!8251240))

(assert (=> d!2351333 d!2351593))

(declare-fun d!2351595 () Bool)

(declare-fun c!1441108 () Bool)

(assert (=> d!2351595 (= c!1441108 ((_ is Nil!73700) s2!3721))))

(declare-fun e!4633802 () (InoxSet C!42300))

(assert (=> d!2351595 (= (content!15646 s2!3721) e!4633802)))

(declare-fun b!7836253 () Bool)

(assert (=> b!7836253 (= e!4633802 ((as const (Array C!42300 Bool)) false))))

(declare-fun b!7836254 () Bool)

(assert (=> b!7836254 (= e!4633802 ((_ map or) (store ((as const (Array C!42300 Bool)) false) (h!80148 s2!3721) true) (content!15646 (t!388559 s2!3721))))))

(assert (= (and d!2351595 c!1441108) b!7836253))

(assert (= (and d!2351595 (not c!1441108)) b!7836254))

(declare-fun m!8251354 () Bool)

(assert (=> b!7836254 m!8251354))

(declare-fun m!8251356 () Bool)

(assert (=> b!7836254 m!8251356))

(assert (=> d!2351333 d!2351595))

(declare-fun d!2351597 () Bool)

(assert (=> d!2351597 (= (head!15994 s1Rec!453) (h!80148 s1Rec!453))))

(assert (=> b!7835483 d!2351597))

(declare-fun d!2351599 () Bool)

(assert (=> d!2351599 (= (head!15994 s1!4101) (h!80148 s1!4101))))

(assert (=> b!7835483 d!2351599))

(declare-fun b!7836270 () Bool)

(declare-fun e!4633809 () Bool)

(assert (=> b!7836270 (= e!4633809 (isPrefix!6337 (tail!15535 s1!4101) (tail!15535 (++!18021 s1!4101 s2!3721))))))

(declare-fun b!7836269 () Bool)

(declare-fun res!3116871 () Bool)

(assert (=> b!7836269 (=> (not res!3116871) (not e!4633809))))

(assert (=> b!7836269 (= res!3116871 (= (head!15994 s1!4101) (head!15994 (++!18021 s1!4101 s2!3721))))))

(declare-fun b!7836268 () Bool)

(declare-fun e!4633807 () Bool)

(assert (=> b!7836268 (= e!4633807 e!4633809)))

(declare-fun res!3116872 () Bool)

(assert (=> b!7836268 (=> (not res!3116872) (not e!4633809))))

(assert (=> b!7836268 (= res!3116872 (not ((_ is Nil!73700) (++!18021 s1!4101 s2!3721))))))

(declare-fun d!2351601 () Bool)

(declare-fun e!4633808 () Bool)

(assert (=> d!2351601 e!4633808))

(declare-fun res!3116869 () Bool)

(assert (=> d!2351601 (=> res!3116869 e!4633808)))

(declare-fun lt!2677830 () Bool)

(assert (=> d!2351601 (= res!3116869 (not lt!2677830))))

(assert (=> d!2351601 (= lt!2677830 e!4633807)))

(declare-fun res!3116870 () Bool)

(assert (=> d!2351601 (=> res!3116870 e!4633807)))

(assert (=> d!2351601 (= res!3116870 ((_ is Nil!73700) s1!4101))))

(assert (=> d!2351601 (= (isPrefix!6337 s1!4101 (++!18021 s1!4101 s2!3721)) lt!2677830)))

(declare-fun b!7836271 () Bool)

(assert (=> b!7836271 (= e!4633808 (>= (size!42777 (++!18021 s1!4101 s2!3721)) (size!42777 s1!4101)))))

(assert (= (and d!2351601 (not res!3116870)) b!7836268))

(assert (= (and b!7836268 res!3116872) b!7836269))

(assert (= (and b!7836269 res!3116871) b!7836270))

(assert (= (and d!2351601 (not res!3116869)) b!7836271))

(assert (=> b!7836270 m!8250668))

(assert (=> b!7836270 m!8250606))

(declare-fun m!8251358 () Bool)

(assert (=> b!7836270 m!8251358))

(assert (=> b!7836270 m!8250668))

(assert (=> b!7836270 m!8251358))

(declare-fun m!8251360 () Bool)

(assert (=> b!7836270 m!8251360))

(assert (=> b!7836269 m!8250674))

(assert (=> b!7836269 m!8250606))

(declare-fun m!8251362 () Bool)

(assert (=> b!7836269 m!8251362))

(assert (=> b!7836271 m!8250606))

(declare-fun m!8251364 () Bool)

(assert (=> b!7836271 m!8251364))

(assert (=> b!7836271 m!8250630))

(assert (=> d!2351309 d!2351601))

(assert (=> d!2351309 d!2351333))

(declare-fun d!2351603 () Bool)

(assert (=> d!2351603 (isPrefix!6337 s1!4101 (++!18021 s1!4101 s2!3721))))

(assert (=> d!2351603 true))

(declare-fun _$46!2106 () Unit!168784)

(assert (=> d!2351603 (= (choose!59590 s1!4101 s2!3721) _$46!2106)))

(declare-fun bs!1966880 () Bool)

(assert (= bs!1966880 d!2351603))

(assert (=> bs!1966880 m!8250606))

(assert (=> bs!1966880 m!8250606))

(assert (=> bs!1966880 m!8250794))

(assert (=> d!2351309 d!2351603))

(declare-fun d!2351605 () Bool)

(declare-fun c!1441109 () Bool)

(assert (=> d!2351605 (= c!1441109 ((_ is Nil!73700) lt!2677740))))

(declare-fun e!4633817 () (InoxSet C!42300))

(assert (=> d!2351605 (= (content!15646 lt!2677740) e!4633817)))

(declare-fun b!7836300 () Bool)

(assert (=> b!7836300 (= e!4633817 ((as const (Array C!42300 Bool)) false))))

(declare-fun b!7836301 () Bool)

(assert (=> b!7836301 (= e!4633817 ((_ map or) (store ((as const (Array C!42300 Bool)) false) (h!80148 lt!2677740) true) (content!15646 (t!388559 lt!2677740))))))

(assert (= (and d!2351605 c!1441109) b!7836300))

(assert (= (and d!2351605 (not c!1441109)) b!7836301))

(declare-fun m!8251366 () Bool)

(assert (=> b!7836301 m!8251366))

(declare-fun m!8251368 () Bool)

(assert (=> b!7836301 m!8251368))

(assert (=> d!2351303 d!2351605))

(assert (=> d!2351303 d!2351565))

(declare-fun d!2351607 () Bool)

(declare-fun c!1441110 () Bool)

(assert (=> d!2351607 (= c!1441110 ((_ is Nil!73700) (Cons!73700 (h!80148 s2Rec!453) Nil!73700)))))

(declare-fun e!4633820 () (InoxSet C!42300))

(assert (=> d!2351607 (= (content!15646 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)) e!4633820)))

(declare-fun b!7836310 () Bool)

(assert (=> b!7836310 (= e!4633820 ((as const (Array C!42300 Bool)) false))))

(declare-fun b!7836311 () Bool)

(assert (=> b!7836311 (= e!4633820 ((_ map or) (store ((as const (Array C!42300 Bool)) false) (h!80148 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)) true) (content!15646 (t!388559 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)))))))

(assert (= (and d!2351607 c!1441110) b!7836310))

(assert (= (and d!2351607 (not c!1441110)) b!7836311))

(declare-fun m!8251370 () Bool)

(assert (=> b!7836311 m!8251370))

(declare-fun m!8251372 () Bool)

(assert (=> b!7836311 m!8251372))

(assert (=> d!2351303 d!2351607))

(declare-fun d!2351609 () Bool)

(declare-fun lt!2677831 () Int)

(assert (=> d!2351609 (>= lt!2677831 0)))

(declare-fun e!4633823 () Int)

(assert (=> d!2351609 (= lt!2677831 e!4633823)))

(declare-fun c!1441111 () Bool)

(assert (=> d!2351609 (= c!1441111 ((_ is Nil!73700) lt!2677740))))

(assert (=> d!2351609 (= (size!42777 lt!2677740) lt!2677831)))

(declare-fun b!7836320 () Bool)

(assert (=> b!7836320 (= e!4633823 0)))

(declare-fun b!7836321 () Bool)

(assert (=> b!7836321 (= e!4633823 (+ 1 (size!42777 (t!388559 lt!2677740))))))

(assert (= (and d!2351609 c!1441111) b!7836320))

(assert (= (and d!2351609 (not c!1441111)) b!7836321))

(declare-fun m!8251374 () Bool)

(assert (=> b!7836321 m!8251374))

(assert (=> b!7835667 d!2351609))

(assert (=> b!7835667 d!2351313))

(declare-fun d!2351611 () Bool)

(declare-fun lt!2677832 () Int)

(assert (=> d!2351611 (>= lt!2677832 0)))

(declare-fun e!4633826 () Int)

(assert (=> d!2351611 (= lt!2677832 e!4633826)))

(declare-fun c!1441112 () Bool)

(assert (=> d!2351611 (= c!1441112 ((_ is Nil!73700) (Cons!73700 (h!80148 s2Rec!453) Nil!73700)))))

(assert (=> d!2351611 (= (size!42777 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)) lt!2677832)))

(declare-fun b!7836331 () Bool)

(assert (=> b!7836331 (= e!4633826 0)))

(declare-fun b!7836332 () Bool)

(assert (=> b!7836332 (= e!4633826 (+ 1 (size!42777 (t!388559 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)))))))

(assert (= (and d!2351611 c!1441112) b!7836331))

(assert (= (and d!2351611 (not c!1441112)) b!7836332))

(declare-fun m!8251376 () Bool)

(assert (=> b!7836332 m!8251376))

(assert (=> b!7835667 d!2351611))

(declare-fun d!2351613 () Bool)

(declare-fun lt!2677833 () Int)

(assert (=> d!2351613 (>= lt!2677833 0)))

(declare-fun e!4633829 () Int)

(assert (=> d!2351613 (= lt!2677833 e!4633829)))

(declare-fun c!1441113 () Bool)

(assert (=> d!2351613 (= c!1441113 ((_ is Nil!73700) lt!2677694))))

(assert (=> d!2351613 (= (size!42777 lt!2677694) lt!2677833)))

(declare-fun b!7836337 () Bool)

(assert (=> b!7836337 (= e!4633829 0)))

(declare-fun b!7836338 () Bool)

(assert (=> b!7836338 (= e!4633829 (+ 1 (size!42777 (t!388559 lt!2677694))))))

(assert (= (and d!2351613 c!1441113) b!7836337))

(assert (= (and d!2351613 (not c!1441113)) b!7836338))

(declare-fun m!8251378 () Bool)

(assert (=> b!7836338 m!8251378))

(assert (=> b!7835609 d!2351613))

(assert (=> b!7835609 d!2351313))

(declare-fun b!7836349 () Bool)

(declare-fun e!4633834 () Bool)

(assert (=> b!7836349 (= e!4633834 (isPrefix!6337 (tail!15535 s1Rec!453) (tail!15535 (++!18021 s1Rec!453 s2Rec!453))))))

(declare-fun b!7836348 () Bool)

(declare-fun res!3116875 () Bool)

(assert (=> b!7836348 (=> (not res!3116875) (not e!4633834))))

(assert (=> b!7836348 (= res!3116875 (= (head!15994 s1Rec!453) (head!15994 (++!18021 s1Rec!453 s2Rec!453))))))

(declare-fun b!7836347 () Bool)

(declare-fun e!4633832 () Bool)

(assert (=> b!7836347 (= e!4633832 e!4633834)))

(declare-fun res!3116876 () Bool)

(assert (=> b!7836347 (=> (not res!3116876) (not e!4633834))))

(assert (=> b!7836347 (= res!3116876 (not ((_ is Nil!73700) (++!18021 s1Rec!453 s2Rec!453))))))

(declare-fun d!2351615 () Bool)

(declare-fun e!4633833 () Bool)

(assert (=> d!2351615 e!4633833))

(declare-fun res!3116873 () Bool)

(assert (=> d!2351615 (=> res!3116873 e!4633833)))

(declare-fun lt!2677834 () Bool)

(assert (=> d!2351615 (= res!3116873 (not lt!2677834))))

(assert (=> d!2351615 (= lt!2677834 e!4633832)))

(declare-fun res!3116874 () Bool)

(assert (=> d!2351615 (=> res!3116874 e!4633832)))

(assert (=> d!2351615 (= res!3116874 ((_ is Nil!73700) s1Rec!453))))

(assert (=> d!2351615 (= (isPrefix!6337 s1Rec!453 (++!18021 s1Rec!453 s2Rec!453)) lt!2677834)))

(declare-fun b!7836350 () Bool)

(assert (=> b!7836350 (= e!4633833 (>= (size!42777 (++!18021 s1Rec!453 s2Rec!453)) (size!42777 s1Rec!453)))))

(assert (= (and d!2351615 (not res!3116874)) b!7836347))

(assert (= (and b!7836347 res!3116876) b!7836348))

(assert (= (and b!7836348 res!3116875) b!7836349))

(assert (= (and d!2351615 (not res!3116873)) b!7836350))

(assert (=> b!7836349 m!8250666))

(assert (=> b!7836349 m!8250648))

(declare-fun m!8251380 () Bool)

(assert (=> b!7836349 m!8251380))

(assert (=> b!7836349 m!8250666))

(assert (=> b!7836349 m!8251380))

(declare-fun m!8251382 () Bool)

(assert (=> b!7836349 m!8251382))

(assert (=> b!7836348 m!8250672))

(assert (=> b!7836348 m!8250648))

(declare-fun m!8251384 () Bool)

(assert (=> b!7836348 m!8251384))

(assert (=> b!7836350 m!8250648))

(declare-fun m!8251386 () Bool)

(assert (=> b!7836350 m!8251386))

(assert (=> b!7836350 m!8250634))

(assert (=> d!2351295 d!2351615))

(assert (=> d!2351295 d!2351345))

(declare-fun d!2351617 () Bool)

(assert (=> d!2351617 (isPrefix!6337 s1Rec!453 (++!18021 s1Rec!453 s2Rec!453))))

(assert (=> d!2351617 true))

(declare-fun _$46!2107 () Unit!168784)

(assert (=> d!2351617 (= (choose!59590 s1Rec!453 s2Rec!453) _$46!2107)))

(declare-fun bs!1966881 () Bool)

(assert (= bs!1966881 d!2351617))

(assert (=> bs!1966881 m!8250648))

(assert (=> bs!1966881 m!8250648))

(assert (=> bs!1966881 m!8250750))

(assert (=> d!2351295 d!2351617))

(declare-fun d!2351619 () Bool)

(declare-fun lt!2677835 () Int)

(assert (=> d!2351619 (>= lt!2677835 0)))

(declare-fun e!4633843 () Int)

(assert (=> d!2351619 (= lt!2677835 e!4633843)))

(declare-fun c!1441114 () Bool)

(assert (=> d!2351619 (= c!1441114 ((_ is Nil!73700) s!14274))))

(assert (=> d!2351619 (= (size!42777 s!14274) lt!2677835)))

(declare-fun b!7836377 () Bool)

(assert (=> b!7836377 (= e!4633843 0)))

(declare-fun b!7836378 () Bool)

(assert (=> b!7836378 (= e!4633843 (+ 1 (size!42777 (t!388559 s!14274))))))

(assert (= (and d!2351619 c!1441114) b!7836377))

(assert (= (and d!2351619 (not c!1441114)) b!7836378))

(declare-fun m!8251388 () Bool)

(assert (=> b!7836378 m!8251388))

(assert (=> b!7835623 d!2351619))

(assert (=> b!7835623 d!2351287))

(assert (=> b!7835607 d!2351597))

(declare-fun d!2351621 () Bool)

(assert (=> d!2351621 (= (head!15994 lt!2677694) (h!80148 lt!2677694))))

(assert (=> b!7835607 d!2351621))

(assert (=> b!7835621 d!2351599))

(declare-fun d!2351623 () Bool)

(assert (=> d!2351623 (= (head!15994 s!14274) (h!80148 s!14274))))

(assert (=> b!7835621 d!2351623))

(declare-fun b!7836395 () Bool)

(declare-fun e!4633852 () Bool)

(assert (=> b!7836395 (= e!4633852 (= (head!15994 (tail!15535 s2Rec!453)) (c!1440938 (derivativeStep!6264 r2!6199 (head!15994 s2Rec!453)))))))

(declare-fun bm!726490 () Bool)

(declare-fun call!726495 () Bool)

(assert (=> bm!726490 (= call!726495 (isEmpty!42295 (tail!15535 s2Rec!453)))))

(declare-fun d!2351625 () Bool)

(declare-fun e!4633850 () Bool)

(assert (=> d!2351625 e!4633850))

(declare-fun c!1441115 () Bool)

(assert (=> d!2351625 (= c!1441115 ((_ is EmptyExpr!20987) (derivativeStep!6264 r2!6199 (head!15994 s2Rec!453))))))

(declare-fun lt!2677836 () Bool)

(declare-fun e!4633847 () Bool)

(assert (=> d!2351625 (= lt!2677836 e!4633847)))

(declare-fun c!1441117 () Bool)

(assert (=> d!2351625 (= c!1441117 (isEmpty!42295 (tail!15535 s2Rec!453)))))

(assert (=> d!2351625 (validRegex!11401 (derivativeStep!6264 r2!6199 (head!15994 s2Rec!453)))))

(assert (=> d!2351625 (= (matchR!10443 (derivativeStep!6264 r2!6199 (head!15994 s2Rec!453)) (tail!15535 s2Rec!453)) lt!2677836)))

(declare-fun b!7836396 () Bool)

(declare-fun res!3116880 () Bool)

(declare-fun e!4633851 () Bool)

(assert (=> b!7836396 (=> res!3116880 e!4633851)))

(assert (=> b!7836396 (= res!3116880 (not ((_ is ElementMatch!20987) (derivativeStep!6264 r2!6199 (head!15994 s2Rec!453)))))))

(declare-fun e!4633854 () Bool)

(assert (=> b!7836396 (= e!4633854 e!4633851)))

(declare-fun b!7836397 () Bool)

(declare-fun e!4633849 () Bool)

(assert (=> b!7836397 (= e!4633851 e!4633849)))

(declare-fun res!3116878 () Bool)

(assert (=> b!7836397 (=> (not res!3116878) (not e!4633849))))

(assert (=> b!7836397 (= res!3116878 (not lt!2677836))))

(declare-fun b!7836398 () Bool)

(assert (=> b!7836398 (= e!4633847 (nullable!9305 (derivativeStep!6264 r2!6199 (head!15994 s2Rec!453))))))

(declare-fun b!7836399 () Bool)

(declare-fun e!4633853 () Bool)

(assert (=> b!7836399 (= e!4633853 (not (= (head!15994 (tail!15535 s2Rec!453)) (c!1440938 (derivativeStep!6264 r2!6199 (head!15994 s2Rec!453))))))))

(declare-fun b!7836400 () Bool)

(declare-fun res!3116877 () Bool)

(assert (=> b!7836400 (=> (not res!3116877) (not e!4633852))))

(assert (=> b!7836400 (= res!3116877 (not call!726495))))

(declare-fun b!7836401 () Bool)

(declare-fun res!3116879 () Bool)

(assert (=> b!7836401 (=> (not res!3116879) (not e!4633852))))

(assert (=> b!7836401 (= res!3116879 (isEmpty!42295 (tail!15535 (tail!15535 s2Rec!453))))))

(declare-fun b!7836402 () Bool)

(assert (=> b!7836402 (= e!4633854 (not lt!2677836))))

(declare-fun b!7836403 () Bool)

(assert (=> b!7836403 (= e!4633849 e!4633853)))

(declare-fun res!3116881 () Bool)

(assert (=> b!7836403 (=> res!3116881 e!4633853)))

(assert (=> b!7836403 (= res!3116881 call!726495)))

(declare-fun b!7836404 () Bool)

(declare-fun res!3116884 () Bool)

(assert (=> b!7836404 (=> res!3116884 e!4633851)))

(assert (=> b!7836404 (= res!3116884 e!4633852)))

(declare-fun res!3116883 () Bool)

(assert (=> b!7836404 (=> (not res!3116883) (not e!4633852))))

(assert (=> b!7836404 (= res!3116883 lt!2677836)))

(declare-fun b!7836405 () Bool)

(assert (=> b!7836405 (= e!4633850 e!4633854)))

(declare-fun c!1441116 () Bool)

(assert (=> b!7836405 (= c!1441116 ((_ is EmptyLang!20987) (derivativeStep!6264 r2!6199 (head!15994 s2Rec!453))))))

(declare-fun b!7836406 () Bool)

(assert (=> b!7836406 (= e!4633847 (matchR!10443 (derivativeStep!6264 (derivativeStep!6264 r2!6199 (head!15994 s2Rec!453)) (head!15994 (tail!15535 s2Rec!453))) (tail!15535 (tail!15535 s2Rec!453))))))

(declare-fun b!7836407 () Bool)

(declare-fun res!3116882 () Bool)

(assert (=> b!7836407 (=> res!3116882 e!4633853)))

(assert (=> b!7836407 (= res!3116882 (not (isEmpty!42295 (tail!15535 (tail!15535 s2Rec!453)))))))

(declare-fun b!7836408 () Bool)

(assert (=> b!7836408 (= e!4633850 (= lt!2677836 call!726495))))

(assert (= (and d!2351625 c!1441117) b!7836398))

(assert (= (and d!2351625 (not c!1441117)) b!7836406))

(assert (= (and d!2351625 c!1441115) b!7836408))

(assert (= (and d!2351625 (not c!1441115)) b!7836405))

(assert (= (and b!7836405 c!1441116) b!7836402))

(assert (= (and b!7836405 (not c!1441116)) b!7836396))

(assert (= (and b!7836396 (not res!3116880)) b!7836404))

(assert (= (and b!7836404 res!3116883) b!7836400))

(assert (= (and b!7836400 res!3116877) b!7836401))

(assert (= (and b!7836401 res!3116879) b!7836395))

(assert (= (and b!7836404 (not res!3116884)) b!7836397))

(assert (= (and b!7836397 res!3116878) b!7836403))

(assert (= (and b!7836403 (not res!3116881)) b!7836407))

(assert (= (and b!7836407 (not res!3116882)) b!7836399))

(assert (= (or b!7836408 b!7836400 b!7836403) bm!726490))

(assert (=> d!2351625 m!8251002))

(assert (=> d!2351625 m!8251004))

(assert (=> d!2351625 m!8251006))

(declare-fun m!8251390 () Bool)

(assert (=> d!2351625 m!8251390))

(assert (=> b!7836399 m!8251002))

(declare-fun m!8251392 () Bool)

(assert (=> b!7836399 m!8251392))

(assert (=> b!7836395 m!8251002))

(assert (=> b!7836395 m!8251392))

(assert (=> b!7836401 m!8251002))

(declare-fun m!8251394 () Bool)

(assert (=> b!7836401 m!8251394))

(assert (=> b!7836401 m!8251394))

(declare-fun m!8251396 () Bool)

(assert (=> b!7836401 m!8251396))

(assert (=> b!7836407 m!8251002))

(assert (=> b!7836407 m!8251394))

(assert (=> b!7836407 m!8251394))

(assert (=> b!7836407 m!8251396))

(assert (=> b!7836398 m!8251006))

(declare-fun m!8251398 () Bool)

(assert (=> b!7836398 m!8251398))

(assert (=> bm!726490 m!8251002))

(assert (=> bm!726490 m!8251004))

(assert (=> b!7836406 m!8251002))

(assert (=> b!7836406 m!8251392))

(assert (=> b!7836406 m!8251006))

(assert (=> b!7836406 m!8251392))

(declare-fun m!8251400 () Bool)

(assert (=> b!7836406 m!8251400))

(assert (=> b!7836406 m!8251002))

(assert (=> b!7836406 m!8251394))

(assert (=> b!7836406 m!8251400))

(assert (=> b!7836406 m!8251394))

(declare-fun m!8251402 () Bool)

(assert (=> b!7836406 m!8251402))

(assert (=> b!7835890 d!2351625))

(declare-fun b!7836509 () Bool)

(declare-fun c!1441131 () Bool)

(assert (=> b!7836509 (= c!1441131 (nullable!9305 (regOne!42486 r2!6199)))))

(declare-fun e!4633885 () Regex!20987)

(declare-fun e!4633887 () Regex!20987)

(assert (=> b!7836509 (= e!4633885 e!4633887)))

(declare-fun c!1441132 () Bool)

(declare-fun bm!726499 () Bool)

(declare-fun call!726506 () Regex!20987)

(assert (=> bm!726499 (= call!726506 (derivativeStep!6264 (ite c!1441132 (regOne!42487 r2!6199) (regTwo!42486 r2!6199)) (head!15994 s2Rec!453)))))

(declare-fun b!7836510 () Bool)

(declare-fun call!726507 () Regex!20987)

(assert (=> b!7836510 (= e!4633885 (Concat!29832 call!726507 r2!6199))))

(declare-fun b!7836511 () Bool)

(declare-fun e!4633889 () Regex!20987)

(assert (=> b!7836511 (= e!4633889 EmptyLang!20987)))

(declare-fun b!7836512 () Bool)

(declare-fun call!726504 () Regex!20987)

(assert (=> b!7836512 (= e!4633887 (Union!20987 (Concat!29832 call!726504 (regTwo!42486 r2!6199)) call!726506))))

(declare-fun b!7836513 () Bool)

(declare-fun e!4633886 () Regex!20987)

(assert (=> b!7836513 (= e!4633886 (ite (= (head!15994 s2Rec!453) (c!1440938 r2!6199)) EmptyExpr!20987 EmptyLang!20987))))

(declare-fun b!7836514 () Bool)

(assert (=> b!7836514 (= e!4633887 (Union!20987 (Concat!29832 call!726504 (regTwo!42486 r2!6199)) EmptyLang!20987))))

(declare-fun bm!726500 () Bool)

(declare-fun c!1441128 () Bool)

(declare-fun call!726505 () Regex!20987)

(assert (=> bm!726500 (= call!726505 (derivativeStep!6264 (ite c!1441132 (regTwo!42487 r2!6199) (ite c!1441128 (reg!21316 r2!6199) (regOne!42486 r2!6199))) (head!15994 s2Rec!453)))))

(declare-fun b!7836515 () Bool)

(assert (=> b!7836515 (= e!4633889 e!4633886)))

(declare-fun c!1441130 () Bool)

(assert (=> b!7836515 (= c!1441130 ((_ is ElementMatch!20987) r2!6199))))

(declare-fun bm!726501 () Bool)

(assert (=> bm!726501 (= call!726507 call!726505)))

(declare-fun d!2351627 () Bool)

(declare-fun lt!2677839 () Regex!20987)

(assert (=> d!2351627 (validRegex!11401 lt!2677839)))

(assert (=> d!2351627 (= lt!2677839 e!4633889)))

(declare-fun c!1441129 () Bool)

(assert (=> d!2351627 (= c!1441129 (or ((_ is EmptyExpr!20987) r2!6199) ((_ is EmptyLang!20987) r2!6199)))))

(assert (=> d!2351627 (validRegex!11401 r2!6199)))

(assert (=> d!2351627 (= (derivativeStep!6264 r2!6199 (head!15994 s2Rec!453)) lt!2677839)))

(declare-fun b!7836516 () Bool)

(assert (=> b!7836516 (= c!1441132 ((_ is Union!20987) r2!6199))))

(declare-fun e!4633888 () Regex!20987)

(assert (=> b!7836516 (= e!4633886 e!4633888)))

(declare-fun b!7836517 () Bool)

(assert (=> b!7836517 (= e!4633888 (Union!20987 call!726506 call!726505))))

(declare-fun b!7836518 () Bool)

(assert (=> b!7836518 (= e!4633888 e!4633885)))

(assert (=> b!7836518 (= c!1441128 ((_ is Star!20987) r2!6199))))

(declare-fun bm!726502 () Bool)

(assert (=> bm!726502 (= call!726504 call!726507)))

(assert (= (and d!2351627 c!1441129) b!7836511))

(assert (= (and d!2351627 (not c!1441129)) b!7836515))

(assert (= (and b!7836515 c!1441130) b!7836513))

(assert (= (and b!7836515 (not c!1441130)) b!7836516))

(assert (= (and b!7836516 c!1441132) b!7836517))

(assert (= (and b!7836516 (not c!1441132)) b!7836518))

(assert (= (and b!7836518 c!1441128) b!7836510))

(assert (= (and b!7836518 (not c!1441128)) b!7836509))

(assert (= (and b!7836509 c!1441131) b!7836512))

(assert (= (and b!7836509 (not c!1441131)) b!7836514))

(assert (= (or b!7836512 b!7836514) bm!726502))

(assert (= (or b!7836510 bm!726502) bm!726501))

(assert (= (or b!7836517 b!7836512) bm!726499))

(assert (= (or b!7836517 bm!726501) bm!726500))

(declare-fun m!8251404 () Bool)

(assert (=> b!7836509 m!8251404))

(assert (=> bm!726499 m!8251000))

(declare-fun m!8251406 () Bool)

(assert (=> bm!726499 m!8251406))

(assert (=> bm!726500 m!8251000))

(declare-fun m!8251408 () Bool)

(assert (=> bm!726500 m!8251408))

(declare-fun m!8251410 () Bool)

(assert (=> d!2351627 m!8251410))

(assert (=> d!2351627 m!8250614))

(assert (=> b!7835890 d!2351627))

(assert (=> b!7835890 d!2351541))

(declare-fun d!2351629 () Bool)

(assert (=> d!2351629 (= (tail!15535 s2Rec!453) (t!388559 s2Rec!453))))

(assert (=> b!7835890 d!2351629))

(declare-fun d!2351631 () Bool)

(assert (=> d!2351631 (= (nullable!9305 (reg!21316 r2!6199)) (nullableFct!3672 (reg!21316 r2!6199)))))

(declare-fun bs!1966882 () Bool)

(assert (= bs!1966882 d!2351631))

(declare-fun m!8251412 () Bool)

(assert (=> bs!1966882 m!8251412))

(assert (=> b!7835877 d!2351631))

(assert (=> b!7835565 d!2351587))

(declare-fun b!7836521 () Bool)

(declare-fun e!4633892 () Bool)

(assert (=> b!7836521 (= e!4633892 (isPrefix!6337 (tail!15535 (tail!15535 lt!2677701)) (tail!15535 (tail!15535 s!14274))))))

(declare-fun b!7836520 () Bool)

(declare-fun res!3116887 () Bool)

(assert (=> b!7836520 (=> (not res!3116887) (not e!4633892))))

(assert (=> b!7836520 (= res!3116887 (= (head!15994 (tail!15535 lt!2677701)) (head!15994 (tail!15535 s!14274))))))

(declare-fun b!7836519 () Bool)

(declare-fun e!4633890 () Bool)

(assert (=> b!7836519 (= e!4633890 e!4633892)))

(declare-fun res!3116888 () Bool)

(assert (=> b!7836519 (=> (not res!3116888) (not e!4633892))))

(assert (=> b!7836519 (= res!3116888 (not ((_ is Nil!73700) (tail!15535 s!14274))))))

(declare-fun d!2351633 () Bool)

(declare-fun e!4633891 () Bool)

(assert (=> d!2351633 e!4633891))

(declare-fun res!3116885 () Bool)

(assert (=> d!2351633 (=> res!3116885 e!4633891)))

(declare-fun lt!2677840 () Bool)

(assert (=> d!2351633 (= res!3116885 (not lt!2677840))))

(assert (=> d!2351633 (= lt!2677840 e!4633890)))

(declare-fun res!3116886 () Bool)

(assert (=> d!2351633 (=> res!3116886 e!4633890)))

(assert (=> d!2351633 (= res!3116886 ((_ is Nil!73700) (tail!15535 lt!2677701)))))

(assert (=> d!2351633 (= (isPrefix!6337 (tail!15535 lt!2677701) (tail!15535 s!14274)) lt!2677840)))

(declare-fun b!7836522 () Bool)

(assert (=> b!7836522 (= e!4633891 (>= (size!42777 (tail!15535 s!14274)) (size!42777 (tail!15535 lt!2677701))))))

(assert (= (and d!2351633 (not res!3116886)) b!7836519))

(assert (= (and b!7836519 res!3116888) b!7836520))

(assert (= (and b!7836520 res!3116887) b!7836521))

(assert (= (and d!2351633 (not res!3116885)) b!7836522))

(assert (=> b!7836521 m!8250736))

(declare-fun m!8251414 () Bool)

(assert (=> b!7836521 m!8251414))

(assert (=> b!7836521 m!8250754))

(declare-fun m!8251416 () Bool)

(assert (=> b!7836521 m!8251416))

(assert (=> b!7836521 m!8251414))

(assert (=> b!7836521 m!8251416))

(declare-fun m!8251418 () Bool)

(assert (=> b!7836521 m!8251418))

(assert (=> b!7836520 m!8250736))

(declare-fun m!8251420 () Bool)

(assert (=> b!7836520 m!8251420))

(assert (=> b!7836520 m!8250754))

(declare-fun m!8251422 () Bool)

(assert (=> b!7836520 m!8251422))

(assert (=> b!7836522 m!8250754))

(declare-fun m!8251424 () Bool)

(assert (=> b!7836522 m!8251424))

(assert (=> b!7836522 m!8250736))

(declare-fun m!8251426 () Bool)

(assert (=> b!7836522 m!8251426))

(assert (=> b!7835852 d!2351633))

(declare-fun d!2351635 () Bool)

(assert (=> d!2351635 (= (tail!15535 lt!2677701) (t!388559 lt!2677701))))

(assert (=> b!7835852 d!2351635))

(declare-fun d!2351637 () Bool)

(assert (=> d!2351637 (= (tail!15535 s!14274) (t!388559 s!14274))))

(assert (=> b!7835852 d!2351637))

(declare-fun d!2351639 () Bool)

(declare-fun lt!2677841 () Int)

(assert (=> d!2351639 (>= lt!2677841 0)))

(declare-fun e!4633893 () Int)

(assert (=> d!2351639 (= lt!2677841 e!4633893)))

(declare-fun c!1441133 () Bool)

(assert (=> d!2351639 (= c!1441133 ((_ is Nil!73700) lt!2677704))))

(assert (=> d!2351639 (= (size!42777 lt!2677704) lt!2677841)))

(declare-fun b!7836523 () Bool)

(assert (=> b!7836523 (= e!4633893 0)))

(declare-fun b!7836524 () Bool)

(assert (=> b!7836524 (= e!4633893 (+ 1 (size!42777 (t!388559 lt!2677704))))))

(assert (= (and d!2351639 c!1441133) b!7836523))

(assert (= (and d!2351639 (not c!1441133)) b!7836524))

(declare-fun m!8251428 () Bool)

(assert (=> b!7836524 m!8251428))

(assert (=> b!7835641 d!2351639))

(assert (=> b!7835641 d!2351287))

(declare-fun b!7836525 () Bool)

(declare-fun e!4633898 () Bool)

(assert (=> b!7836525 (= e!4633898 (= (head!15994 (tail!15535 s2!3721)) (c!1440938 (derivativeStep!6264 r2!6199 (head!15994 s2!3721)))))))

(declare-fun bm!726503 () Bool)

(declare-fun call!726508 () Bool)

(assert (=> bm!726503 (= call!726508 (isEmpty!42295 (tail!15535 s2!3721)))))

(declare-fun d!2351641 () Bool)

(declare-fun e!4633896 () Bool)

(assert (=> d!2351641 e!4633896))

(declare-fun c!1441134 () Bool)

(assert (=> d!2351641 (= c!1441134 ((_ is EmptyExpr!20987) (derivativeStep!6264 r2!6199 (head!15994 s2!3721))))))

(declare-fun lt!2677842 () Bool)

(declare-fun e!4633894 () Bool)

(assert (=> d!2351641 (= lt!2677842 e!4633894)))

(declare-fun c!1441136 () Bool)

(assert (=> d!2351641 (= c!1441136 (isEmpty!42295 (tail!15535 s2!3721)))))

(assert (=> d!2351641 (validRegex!11401 (derivativeStep!6264 r2!6199 (head!15994 s2!3721)))))

(assert (=> d!2351641 (= (matchR!10443 (derivativeStep!6264 r2!6199 (head!15994 s2!3721)) (tail!15535 s2!3721)) lt!2677842)))

(declare-fun b!7836526 () Bool)

(declare-fun res!3116892 () Bool)

(declare-fun e!4633897 () Bool)

(assert (=> b!7836526 (=> res!3116892 e!4633897)))

(assert (=> b!7836526 (= res!3116892 (not ((_ is ElementMatch!20987) (derivativeStep!6264 r2!6199 (head!15994 s2!3721)))))))

(declare-fun e!4633900 () Bool)

(assert (=> b!7836526 (= e!4633900 e!4633897)))

(declare-fun b!7836527 () Bool)

(declare-fun e!4633895 () Bool)

(assert (=> b!7836527 (= e!4633897 e!4633895)))

(declare-fun res!3116890 () Bool)

(assert (=> b!7836527 (=> (not res!3116890) (not e!4633895))))

(assert (=> b!7836527 (= res!3116890 (not lt!2677842))))

(declare-fun b!7836528 () Bool)

(assert (=> b!7836528 (= e!4633894 (nullable!9305 (derivativeStep!6264 r2!6199 (head!15994 s2!3721))))))

(declare-fun b!7836529 () Bool)

(declare-fun e!4633899 () Bool)

(assert (=> b!7836529 (= e!4633899 (not (= (head!15994 (tail!15535 s2!3721)) (c!1440938 (derivativeStep!6264 r2!6199 (head!15994 s2!3721))))))))

(declare-fun b!7836530 () Bool)

(declare-fun res!3116889 () Bool)

(assert (=> b!7836530 (=> (not res!3116889) (not e!4633898))))

(assert (=> b!7836530 (= res!3116889 (not call!726508))))

(declare-fun b!7836531 () Bool)

(declare-fun res!3116891 () Bool)

(assert (=> b!7836531 (=> (not res!3116891) (not e!4633898))))

(assert (=> b!7836531 (= res!3116891 (isEmpty!42295 (tail!15535 (tail!15535 s2!3721))))))

(declare-fun b!7836532 () Bool)

(assert (=> b!7836532 (= e!4633900 (not lt!2677842))))

(declare-fun b!7836533 () Bool)

(assert (=> b!7836533 (= e!4633895 e!4633899)))

(declare-fun res!3116893 () Bool)

(assert (=> b!7836533 (=> res!3116893 e!4633899)))

(assert (=> b!7836533 (= res!3116893 call!726508)))

(declare-fun b!7836534 () Bool)

(declare-fun res!3116896 () Bool)

(assert (=> b!7836534 (=> res!3116896 e!4633897)))

(assert (=> b!7836534 (= res!3116896 e!4633898)))

(declare-fun res!3116895 () Bool)

(assert (=> b!7836534 (=> (not res!3116895) (not e!4633898))))

(assert (=> b!7836534 (= res!3116895 lt!2677842)))

(declare-fun b!7836535 () Bool)

(assert (=> b!7836535 (= e!4633896 e!4633900)))

(declare-fun c!1441135 () Bool)

(assert (=> b!7836535 (= c!1441135 ((_ is EmptyLang!20987) (derivativeStep!6264 r2!6199 (head!15994 s2!3721))))))

(declare-fun b!7836536 () Bool)

(assert (=> b!7836536 (= e!4633894 (matchR!10443 (derivativeStep!6264 (derivativeStep!6264 r2!6199 (head!15994 s2!3721)) (head!15994 (tail!15535 s2!3721))) (tail!15535 (tail!15535 s2!3721))))))

(declare-fun b!7836537 () Bool)

(declare-fun res!3116894 () Bool)

(assert (=> b!7836537 (=> res!3116894 e!4633899)))

(assert (=> b!7836537 (= res!3116894 (not (isEmpty!42295 (tail!15535 (tail!15535 s2!3721)))))))

(declare-fun b!7836538 () Bool)

(assert (=> b!7836538 (= e!4633896 (= lt!2677842 call!726508))))

(assert (= (and d!2351641 c!1441136) b!7836528))

(assert (= (and d!2351641 (not c!1441136)) b!7836536))

(assert (= (and d!2351641 c!1441134) b!7836538))

(assert (= (and d!2351641 (not c!1441134)) b!7836535))

(assert (= (and b!7836535 c!1441135) b!7836532))

(assert (= (and b!7836535 (not c!1441135)) b!7836526))

(assert (= (and b!7836526 (not res!3116892)) b!7836534))

(assert (= (and b!7836534 res!3116895) b!7836530))

(assert (= (and b!7836530 res!3116889) b!7836531))

(assert (= (and b!7836531 res!3116891) b!7836525))

(assert (= (and b!7836534 (not res!3116896)) b!7836527))

(assert (= (and b!7836527 res!3116890) b!7836533))

(assert (= (and b!7836533 (not res!3116893)) b!7836537))

(assert (= (and b!7836537 (not res!3116894)) b!7836529))

(assert (= (or b!7836538 b!7836530 b!7836533) bm!726503))

(assert (=> d!2351641 m!8250912))

(assert (=> d!2351641 m!8250914))

(assert (=> d!2351641 m!8250918))

(declare-fun m!8251430 () Bool)

(assert (=> d!2351641 m!8251430))

(assert (=> b!7836529 m!8250912))

(declare-fun m!8251432 () Bool)

(assert (=> b!7836529 m!8251432))

(assert (=> b!7836525 m!8250912))

(assert (=> b!7836525 m!8251432))

(assert (=> b!7836531 m!8250912))

(declare-fun m!8251434 () Bool)

(assert (=> b!7836531 m!8251434))

(assert (=> b!7836531 m!8251434))

(declare-fun m!8251436 () Bool)

(assert (=> b!7836531 m!8251436))

(assert (=> b!7836537 m!8250912))

(assert (=> b!7836537 m!8251434))

(assert (=> b!7836537 m!8251434))

(assert (=> b!7836537 m!8251436))

(assert (=> b!7836528 m!8250918))

(declare-fun m!8251438 () Bool)

(assert (=> b!7836528 m!8251438))

(assert (=> bm!726503 m!8250912))

(assert (=> bm!726503 m!8250914))

(assert (=> b!7836536 m!8250912))

(assert (=> b!7836536 m!8251432))

(assert (=> b!7836536 m!8250918))

(assert (=> b!7836536 m!8251432))

(declare-fun m!8251440 () Bool)

(assert (=> b!7836536 m!8251440))

(assert (=> b!7836536 m!8250912))

(assert (=> b!7836536 m!8251434))

(assert (=> b!7836536 m!8251440))

(assert (=> b!7836536 m!8251434))

(declare-fun m!8251442 () Bool)

(assert (=> b!7836536 m!8251442))

(assert (=> b!7835712 d!2351641))

(declare-fun b!7836539 () Bool)

(declare-fun c!1441140 () Bool)

(assert (=> b!7836539 (= c!1441140 (nullable!9305 (regOne!42486 r2!6199)))))

(declare-fun e!4633901 () Regex!20987)

(declare-fun e!4633903 () Regex!20987)

(assert (=> b!7836539 (= e!4633901 e!4633903)))

(declare-fun call!726511 () Regex!20987)

(declare-fun c!1441141 () Bool)

(declare-fun bm!726504 () Bool)

(assert (=> bm!726504 (= call!726511 (derivativeStep!6264 (ite c!1441141 (regOne!42487 r2!6199) (regTwo!42486 r2!6199)) (head!15994 s2!3721)))))

(declare-fun b!7836540 () Bool)

(declare-fun call!726512 () Regex!20987)

(assert (=> b!7836540 (= e!4633901 (Concat!29832 call!726512 r2!6199))))

(declare-fun b!7836541 () Bool)

(declare-fun e!4633905 () Regex!20987)

(assert (=> b!7836541 (= e!4633905 EmptyLang!20987)))

(declare-fun b!7836542 () Bool)

(declare-fun call!726509 () Regex!20987)

(assert (=> b!7836542 (= e!4633903 (Union!20987 (Concat!29832 call!726509 (regTwo!42486 r2!6199)) call!726511))))

(declare-fun b!7836543 () Bool)

(declare-fun e!4633902 () Regex!20987)

(assert (=> b!7836543 (= e!4633902 (ite (= (head!15994 s2!3721) (c!1440938 r2!6199)) EmptyExpr!20987 EmptyLang!20987))))

(declare-fun b!7836544 () Bool)

(assert (=> b!7836544 (= e!4633903 (Union!20987 (Concat!29832 call!726509 (regTwo!42486 r2!6199)) EmptyLang!20987))))

(declare-fun c!1441137 () Bool)

(declare-fun call!726510 () Regex!20987)

(declare-fun bm!726505 () Bool)

(assert (=> bm!726505 (= call!726510 (derivativeStep!6264 (ite c!1441141 (regTwo!42487 r2!6199) (ite c!1441137 (reg!21316 r2!6199) (regOne!42486 r2!6199))) (head!15994 s2!3721)))))

(declare-fun b!7836545 () Bool)

(assert (=> b!7836545 (= e!4633905 e!4633902)))

(declare-fun c!1441139 () Bool)

(assert (=> b!7836545 (= c!1441139 ((_ is ElementMatch!20987) r2!6199))))

(declare-fun bm!726506 () Bool)

(assert (=> bm!726506 (= call!726512 call!726510)))

(declare-fun d!2351643 () Bool)

(declare-fun lt!2677843 () Regex!20987)

(assert (=> d!2351643 (validRegex!11401 lt!2677843)))

(assert (=> d!2351643 (= lt!2677843 e!4633905)))

(declare-fun c!1441138 () Bool)

(assert (=> d!2351643 (= c!1441138 (or ((_ is EmptyExpr!20987) r2!6199) ((_ is EmptyLang!20987) r2!6199)))))

(assert (=> d!2351643 (validRegex!11401 r2!6199)))

(assert (=> d!2351643 (= (derivativeStep!6264 r2!6199 (head!15994 s2!3721)) lt!2677843)))

(declare-fun b!7836546 () Bool)

(assert (=> b!7836546 (= c!1441141 ((_ is Union!20987) r2!6199))))

(declare-fun e!4633904 () Regex!20987)

(assert (=> b!7836546 (= e!4633902 e!4633904)))

(declare-fun b!7836547 () Bool)

(assert (=> b!7836547 (= e!4633904 (Union!20987 call!726511 call!726510))))

(declare-fun b!7836548 () Bool)

(assert (=> b!7836548 (= e!4633904 e!4633901)))

(assert (=> b!7836548 (= c!1441137 ((_ is Star!20987) r2!6199))))

(declare-fun bm!726507 () Bool)

(assert (=> bm!726507 (= call!726509 call!726512)))

(assert (= (and d!2351643 c!1441138) b!7836541))

(assert (= (and d!2351643 (not c!1441138)) b!7836545))

(assert (= (and b!7836545 c!1441139) b!7836543))

(assert (= (and b!7836545 (not c!1441139)) b!7836546))

(assert (= (and b!7836546 c!1441141) b!7836547))

(assert (= (and b!7836546 (not c!1441141)) b!7836548))

(assert (= (and b!7836548 c!1441137) b!7836540))

(assert (= (and b!7836548 (not c!1441137)) b!7836539))

(assert (= (and b!7836539 c!1441140) b!7836542))

(assert (= (and b!7836539 (not c!1441140)) b!7836544))

(assert (= (or b!7836542 b!7836544) bm!726507))

(assert (= (or b!7836540 bm!726507) bm!726506))

(assert (= (or b!7836547 b!7836542) bm!726504))

(assert (= (or b!7836547 bm!726506) bm!726505))

(assert (=> b!7836539 m!8251404))

(assert (=> bm!726504 m!8250910))

(declare-fun m!8251444 () Bool)

(assert (=> bm!726504 m!8251444))

(assert (=> bm!726505 m!8250910))

(declare-fun m!8251446 () Bool)

(assert (=> bm!726505 m!8251446))

(declare-fun m!8251448 () Bool)

(assert (=> d!2351643 m!8251448))

(assert (=> d!2351643 m!8250614))

(assert (=> b!7835712 d!2351643))

(assert (=> b!7835712 d!2351589))

(declare-fun d!2351645 () Bool)

(assert (=> d!2351645 (= (tail!15535 s2!3721) (t!388559 s2!3721))))

(assert (=> b!7835712 d!2351645))

(assert (=> b!7835639 d!2351599))

(declare-fun d!2351647 () Bool)

(assert (=> d!2351647 (= (head!15994 lt!2677704) (h!80148 lt!2677704))))

(assert (=> b!7835639 d!2351647))

(declare-fun d!2351649 () Bool)

(declare-fun c!1441142 () Bool)

(assert (=> d!2351649 (= c!1441142 ((_ is Nil!73700) lt!2677757))))

(declare-fun e!4633906 () (InoxSet C!42300))

(assert (=> d!2351649 (= (content!15646 lt!2677757) e!4633906)))

(declare-fun b!7836549 () Bool)

(assert (=> b!7836549 (= e!4633906 ((as const (Array C!42300 Bool)) false))))

(declare-fun b!7836550 () Bool)

(assert (=> b!7836550 (= e!4633906 ((_ map or) (store ((as const (Array C!42300 Bool)) false) (h!80148 lt!2677757) true) (content!15646 (t!388559 lt!2677757))))))

(assert (= (and d!2351649 c!1441142) b!7836549))

(assert (= (and d!2351649 (not c!1441142)) b!7836550))

(declare-fun m!8251450 () Bool)

(assert (=> b!7836550 m!8251450))

(declare-fun m!8251452 () Bool)

(assert (=> b!7836550 m!8251452))

(assert (=> d!2351327 d!2351649))

(declare-fun d!2351651 () Bool)

(declare-fun c!1441143 () Bool)

(assert (=> d!2351651 (= c!1441143 ((_ is Nil!73700) lt!2677701))))

(declare-fun e!4633907 () (InoxSet C!42300))

(assert (=> d!2351651 (= (content!15646 lt!2677701) e!4633907)))

(declare-fun b!7836551 () Bool)

(assert (=> b!7836551 (= e!4633907 ((as const (Array C!42300 Bool)) false))))

(declare-fun b!7836552 () Bool)

(assert (=> b!7836552 (= e!4633907 ((_ map or) (store ((as const (Array C!42300 Bool)) false) (h!80148 lt!2677701) true) (content!15646 (t!388559 lt!2677701))))))

(assert (= (and d!2351651 c!1441143) b!7836551))

(assert (= (and d!2351651 (not c!1441143)) b!7836552))

(declare-fun m!8251454 () Bool)

(assert (=> b!7836552 m!8251454))

(declare-fun m!8251456 () Bool)

(assert (=> b!7836552 m!8251456))

(assert (=> d!2351327 d!2351651))

(declare-fun d!2351653 () Bool)

(declare-fun c!1441144 () Bool)

(assert (=> d!2351653 (= c!1441144 ((_ is Nil!73700) (t!388559 s2Rec!453)))))

(declare-fun e!4633908 () (InoxSet C!42300))

(assert (=> d!2351653 (= (content!15646 (t!388559 s2Rec!453)) e!4633908)))

(declare-fun b!7836553 () Bool)

(assert (=> b!7836553 (= e!4633908 ((as const (Array C!42300 Bool)) false))))

(declare-fun b!7836554 () Bool)

(assert (=> b!7836554 (= e!4633908 ((_ map or) (store ((as const (Array C!42300 Bool)) false) (h!80148 (t!388559 s2Rec!453)) true) (content!15646 (t!388559 (t!388559 s2Rec!453)))))))

(assert (= (and d!2351653 c!1441144) b!7836553))

(assert (= (and d!2351653 (not c!1441144)) b!7836554))

(declare-fun m!8251458 () Bool)

(assert (=> b!7836554 m!8251458))

(declare-fun m!8251460 () Bool)

(assert (=> b!7836554 m!8251460))

(assert (=> d!2351327 d!2351653))

(assert (=> b!7835562 d!2351599))

(declare-fun b!7836555 () Bool)

(declare-fun e!4633910 () List!73824)

(assert (=> b!7836555 (= e!4633910 s2Rec!453)))

(declare-fun d!2351655 () Bool)

(declare-fun e!4633909 () Bool)

(assert (=> d!2351655 e!4633909))

(declare-fun res!3116898 () Bool)

(assert (=> d!2351655 (=> (not res!3116898) (not e!4633909))))

(declare-fun lt!2677844 () List!73824)

(assert (=> d!2351655 (= res!3116898 (= (content!15646 lt!2677844) ((_ map or) (content!15646 (t!388559 s1Rec!453)) (content!15646 s2Rec!453))))))

(assert (=> d!2351655 (= lt!2677844 e!4633910)))

(declare-fun c!1441145 () Bool)

(assert (=> d!2351655 (= c!1441145 ((_ is Nil!73700) (t!388559 s1Rec!453)))))

(assert (=> d!2351655 (= (++!18021 (t!388559 s1Rec!453) s2Rec!453) lt!2677844)))

(declare-fun b!7836558 () Bool)

(assert (=> b!7836558 (= e!4633909 (or (not (= s2Rec!453 Nil!73700)) (= lt!2677844 (t!388559 s1Rec!453))))))

(declare-fun b!7836557 () Bool)

(declare-fun res!3116897 () Bool)

(assert (=> b!7836557 (=> (not res!3116897) (not e!4633909))))

(assert (=> b!7836557 (= res!3116897 (= (size!42777 lt!2677844) (+ (size!42777 (t!388559 s1Rec!453)) (size!42777 s2Rec!453))))))

(declare-fun b!7836556 () Bool)

(assert (=> b!7836556 (= e!4633910 (Cons!73700 (h!80148 (t!388559 s1Rec!453)) (++!18021 (t!388559 (t!388559 s1Rec!453)) s2Rec!453)))))

(assert (= (and d!2351655 c!1441145) b!7836555))

(assert (= (and d!2351655 (not c!1441145)) b!7836556))

(assert (= (and d!2351655 res!3116898) b!7836557))

(assert (= (and b!7836557 res!3116897) b!7836558))

(declare-fun m!8251462 () Bool)

(assert (=> d!2351655 m!8251462))

(assert (=> d!2351655 m!8251302))

(assert (=> d!2351655 m!8250938))

(declare-fun m!8251464 () Bool)

(assert (=> b!7836557 m!8251464))

(assert (=> b!7836557 m!8250798))

(assert (=> b!7836557 m!8250942))

(declare-fun m!8251466 () Bool)

(assert (=> b!7836556 m!8251466))

(assert (=> b!7835734 d!2351655))

(declare-fun b!7836559 () Bool)

(declare-fun e!4633915 () Bool)

(assert (=> b!7836559 (= e!4633915 (= (head!15994 (tail!15535 s1Rec!453)) (c!1440938 (derivativeStep!6264 r1!6261 (head!15994 s1Rec!453)))))))

(declare-fun bm!726508 () Bool)

(declare-fun call!726513 () Bool)

(assert (=> bm!726508 (= call!726513 (isEmpty!42295 (tail!15535 s1Rec!453)))))

(declare-fun d!2351657 () Bool)

(declare-fun e!4633913 () Bool)

(assert (=> d!2351657 e!4633913))

(declare-fun c!1441146 () Bool)

(assert (=> d!2351657 (= c!1441146 ((_ is EmptyExpr!20987) (derivativeStep!6264 r1!6261 (head!15994 s1Rec!453))))))

(declare-fun lt!2677845 () Bool)

(declare-fun e!4633911 () Bool)

(assert (=> d!2351657 (= lt!2677845 e!4633911)))

(declare-fun c!1441148 () Bool)

(assert (=> d!2351657 (= c!1441148 (isEmpty!42295 (tail!15535 s1Rec!453)))))

(assert (=> d!2351657 (validRegex!11401 (derivativeStep!6264 r1!6261 (head!15994 s1Rec!453)))))

(assert (=> d!2351657 (= (matchR!10443 (derivativeStep!6264 r1!6261 (head!15994 s1Rec!453)) (tail!15535 s1Rec!453)) lt!2677845)))

(declare-fun b!7836560 () Bool)

(declare-fun res!3116902 () Bool)

(declare-fun e!4633914 () Bool)

(assert (=> b!7836560 (=> res!3116902 e!4633914)))

(assert (=> b!7836560 (= res!3116902 (not ((_ is ElementMatch!20987) (derivativeStep!6264 r1!6261 (head!15994 s1Rec!453)))))))

(declare-fun e!4633917 () Bool)

(assert (=> b!7836560 (= e!4633917 e!4633914)))

(declare-fun b!7836561 () Bool)

(declare-fun e!4633912 () Bool)

(assert (=> b!7836561 (= e!4633914 e!4633912)))

(declare-fun res!3116900 () Bool)

(assert (=> b!7836561 (=> (not res!3116900) (not e!4633912))))

(assert (=> b!7836561 (= res!3116900 (not lt!2677845))))

(declare-fun b!7836562 () Bool)

(assert (=> b!7836562 (= e!4633911 (nullable!9305 (derivativeStep!6264 r1!6261 (head!15994 s1Rec!453))))))

(declare-fun b!7836563 () Bool)

(declare-fun e!4633916 () Bool)

(assert (=> b!7836563 (= e!4633916 (not (= (head!15994 (tail!15535 s1Rec!453)) (c!1440938 (derivativeStep!6264 r1!6261 (head!15994 s1Rec!453))))))))

(declare-fun b!7836564 () Bool)

(declare-fun res!3116899 () Bool)

(assert (=> b!7836564 (=> (not res!3116899) (not e!4633915))))

(assert (=> b!7836564 (= res!3116899 (not call!726513))))

(declare-fun b!7836565 () Bool)

(declare-fun res!3116901 () Bool)

(assert (=> b!7836565 (=> (not res!3116901) (not e!4633915))))

(assert (=> b!7836565 (= res!3116901 (isEmpty!42295 (tail!15535 (tail!15535 s1Rec!453))))))

(declare-fun b!7836566 () Bool)

(assert (=> b!7836566 (= e!4633917 (not lt!2677845))))

(declare-fun b!7836567 () Bool)

(assert (=> b!7836567 (= e!4633912 e!4633916)))

(declare-fun res!3116903 () Bool)

(assert (=> b!7836567 (=> res!3116903 e!4633916)))

(assert (=> b!7836567 (= res!3116903 call!726513)))

(declare-fun b!7836568 () Bool)

(declare-fun res!3116906 () Bool)

(assert (=> b!7836568 (=> res!3116906 e!4633914)))

(assert (=> b!7836568 (= res!3116906 e!4633915)))

(declare-fun res!3116905 () Bool)

(assert (=> b!7836568 (=> (not res!3116905) (not e!4633915))))

(assert (=> b!7836568 (= res!3116905 lt!2677845)))

(declare-fun b!7836569 () Bool)

(assert (=> b!7836569 (= e!4633913 e!4633917)))

(declare-fun c!1441147 () Bool)

(assert (=> b!7836569 (= c!1441147 ((_ is EmptyLang!20987) (derivativeStep!6264 r1!6261 (head!15994 s1Rec!453))))))

(declare-fun b!7836570 () Bool)

(assert (=> b!7836570 (= e!4633911 (matchR!10443 (derivativeStep!6264 (derivativeStep!6264 r1!6261 (head!15994 s1Rec!453)) (head!15994 (tail!15535 s1Rec!453))) (tail!15535 (tail!15535 s1Rec!453))))))

(declare-fun b!7836571 () Bool)

(declare-fun res!3116904 () Bool)

(assert (=> b!7836571 (=> res!3116904 e!4633916)))

(assert (=> b!7836571 (= res!3116904 (not (isEmpty!42295 (tail!15535 (tail!15535 s1Rec!453)))))))

(declare-fun b!7836572 () Bool)

(assert (=> b!7836572 (= e!4633913 (= lt!2677845 call!726513))))

(assert (= (and d!2351657 c!1441148) b!7836562))

(assert (= (and d!2351657 (not c!1441148)) b!7836570))

(assert (= (and d!2351657 c!1441146) b!7836572))

(assert (= (and d!2351657 (not c!1441146)) b!7836569))

(assert (= (and b!7836569 c!1441147) b!7836566))

(assert (= (and b!7836569 (not c!1441147)) b!7836560))

(assert (= (and b!7836560 (not res!3116902)) b!7836568))

(assert (= (and b!7836568 res!3116905) b!7836564))

(assert (= (and b!7836564 res!3116899) b!7836565))

(assert (= (and b!7836565 res!3116901) b!7836559))

(assert (= (and b!7836568 (not res!3116906)) b!7836561))

(assert (= (and b!7836561 res!3116900) b!7836567))

(assert (= (and b!7836567 (not res!3116903)) b!7836571))

(assert (= (and b!7836571 (not res!3116904)) b!7836563))

(assert (= (or b!7836572 b!7836564 b!7836567) bm!726508))

(assert (=> d!2351657 m!8250666))

(assert (=> d!2351657 m!8250984))

(assert (=> d!2351657 m!8250986))

(declare-fun m!8251468 () Bool)

(assert (=> d!2351657 m!8251468))

(assert (=> b!7836563 m!8250666))

(declare-fun m!8251470 () Bool)

(assert (=> b!7836563 m!8251470))

(assert (=> b!7836559 m!8250666))

(assert (=> b!7836559 m!8251470))

(assert (=> b!7836565 m!8250666))

(declare-fun m!8251472 () Bool)

(assert (=> b!7836565 m!8251472))

(assert (=> b!7836565 m!8251472))

(declare-fun m!8251474 () Bool)

(assert (=> b!7836565 m!8251474))

(assert (=> b!7836571 m!8250666))

(assert (=> b!7836571 m!8251472))

(assert (=> b!7836571 m!8251472))

(assert (=> b!7836571 m!8251474))

(assert (=> b!7836562 m!8250986))

(declare-fun m!8251476 () Bool)

(assert (=> b!7836562 m!8251476))

(assert (=> bm!726508 m!8250666))

(assert (=> bm!726508 m!8250984))

(assert (=> b!7836570 m!8250666))

(assert (=> b!7836570 m!8251470))

(assert (=> b!7836570 m!8250986))

(assert (=> b!7836570 m!8251470))

(declare-fun m!8251478 () Bool)

(assert (=> b!7836570 m!8251478))

(assert (=> b!7836570 m!8250666))

(assert (=> b!7836570 m!8251472))

(assert (=> b!7836570 m!8251478))

(assert (=> b!7836570 m!8251472))

(declare-fun m!8251480 () Bool)

(assert (=> b!7836570 m!8251480))

(assert (=> b!7835865 d!2351657))

(declare-fun b!7836573 () Bool)

(declare-fun c!1441152 () Bool)

(assert (=> b!7836573 (= c!1441152 (nullable!9305 (regOne!42486 r1!6261)))))

(declare-fun e!4633918 () Regex!20987)

(declare-fun e!4633920 () Regex!20987)

(assert (=> b!7836573 (= e!4633918 e!4633920)))

(declare-fun call!726516 () Regex!20987)

(declare-fun c!1441153 () Bool)

(declare-fun bm!726509 () Bool)

(assert (=> bm!726509 (= call!726516 (derivativeStep!6264 (ite c!1441153 (regOne!42487 r1!6261) (regTwo!42486 r1!6261)) (head!15994 s1Rec!453)))))

(declare-fun b!7836574 () Bool)

(declare-fun call!726517 () Regex!20987)

(assert (=> b!7836574 (= e!4633918 (Concat!29832 call!726517 r1!6261))))

(declare-fun b!7836575 () Bool)

(declare-fun e!4633922 () Regex!20987)

(assert (=> b!7836575 (= e!4633922 EmptyLang!20987)))

(declare-fun call!726514 () Regex!20987)

(declare-fun b!7836576 () Bool)

(assert (=> b!7836576 (= e!4633920 (Union!20987 (Concat!29832 call!726514 (regTwo!42486 r1!6261)) call!726516))))

(declare-fun b!7836577 () Bool)

(declare-fun e!4633919 () Regex!20987)

(assert (=> b!7836577 (= e!4633919 (ite (= (head!15994 s1Rec!453) (c!1440938 r1!6261)) EmptyExpr!20987 EmptyLang!20987))))

(declare-fun b!7836578 () Bool)

(assert (=> b!7836578 (= e!4633920 (Union!20987 (Concat!29832 call!726514 (regTwo!42486 r1!6261)) EmptyLang!20987))))

(declare-fun bm!726510 () Bool)

(declare-fun call!726515 () Regex!20987)

(declare-fun c!1441149 () Bool)

(assert (=> bm!726510 (= call!726515 (derivativeStep!6264 (ite c!1441153 (regTwo!42487 r1!6261) (ite c!1441149 (reg!21316 r1!6261) (regOne!42486 r1!6261))) (head!15994 s1Rec!453)))))

(declare-fun b!7836579 () Bool)

(assert (=> b!7836579 (= e!4633922 e!4633919)))

(declare-fun c!1441151 () Bool)

(assert (=> b!7836579 (= c!1441151 ((_ is ElementMatch!20987) r1!6261))))

(declare-fun bm!726511 () Bool)

(assert (=> bm!726511 (= call!726517 call!726515)))

(declare-fun d!2351659 () Bool)

(declare-fun lt!2677846 () Regex!20987)

(assert (=> d!2351659 (validRegex!11401 lt!2677846)))

(assert (=> d!2351659 (= lt!2677846 e!4633922)))

(declare-fun c!1441150 () Bool)

(assert (=> d!2351659 (= c!1441150 (or ((_ is EmptyExpr!20987) r1!6261) ((_ is EmptyLang!20987) r1!6261)))))

(assert (=> d!2351659 (validRegex!11401 r1!6261)))

(assert (=> d!2351659 (= (derivativeStep!6264 r1!6261 (head!15994 s1Rec!453)) lt!2677846)))

(declare-fun b!7836580 () Bool)

(assert (=> b!7836580 (= c!1441153 ((_ is Union!20987) r1!6261))))

(declare-fun e!4633921 () Regex!20987)

(assert (=> b!7836580 (= e!4633919 e!4633921)))

(declare-fun b!7836581 () Bool)

(assert (=> b!7836581 (= e!4633921 (Union!20987 call!726516 call!726515))))

(declare-fun b!7836582 () Bool)

(assert (=> b!7836582 (= e!4633921 e!4633918)))

(assert (=> b!7836582 (= c!1441149 ((_ is Star!20987) r1!6261))))

(declare-fun bm!726512 () Bool)

(assert (=> bm!726512 (= call!726514 call!726517)))

(assert (= (and d!2351659 c!1441150) b!7836575))

(assert (= (and d!2351659 (not c!1441150)) b!7836579))

(assert (= (and b!7836579 c!1441151) b!7836577))

(assert (= (and b!7836579 (not c!1441151)) b!7836580))

(assert (= (and b!7836580 c!1441153) b!7836581))

(assert (= (and b!7836580 (not c!1441153)) b!7836582))

(assert (= (and b!7836582 c!1441149) b!7836574))

(assert (= (and b!7836582 (not c!1441149)) b!7836573))

(assert (= (and b!7836573 c!1441152) b!7836576))

(assert (= (and b!7836573 (not c!1441152)) b!7836578))

(assert (= (or b!7836576 b!7836578) bm!726512))

(assert (= (or b!7836574 bm!726512) bm!726511))

(assert (= (or b!7836581 b!7836576) bm!726509))

(assert (= (or b!7836581 bm!726511) bm!726510))

(declare-fun m!8251482 () Bool)

(assert (=> b!7836573 m!8251482))

(assert (=> bm!726509 m!8250672))

(declare-fun m!8251484 () Bool)

(assert (=> bm!726509 m!8251484))

(assert (=> bm!726510 m!8250672))

(declare-fun m!8251486 () Bool)

(assert (=> bm!726510 m!8251486))

(declare-fun m!8251488 () Bool)

(assert (=> d!2351659 m!8251488))

(assert (=> d!2351659 m!8250646))

(assert (=> b!7835865 d!2351659))

(assert (=> b!7835865 d!2351597))

(declare-fun d!2351661 () Bool)

(assert (=> d!2351661 (= (tail!15535 s1Rec!453) (t!388559 s1Rec!453))))

(assert (=> b!7835865 d!2351661))

(declare-fun d!2351663 () Bool)

(declare-fun lt!2677847 () Int)

(assert (=> d!2351663 (>= lt!2677847 0)))

(declare-fun e!4633923 () Int)

(assert (=> d!2351663 (= lt!2677847 e!4633923)))

(declare-fun c!1441154 () Bool)

(assert (=> d!2351663 (= c!1441154 ((_ is Nil!73700) lt!2677760))))

(assert (=> d!2351663 (= (size!42777 lt!2677760) lt!2677847)))

(declare-fun b!7836583 () Bool)

(assert (=> b!7836583 (= e!4633923 0)))

(declare-fun b!7836584 () Bool)

(assert (=> b!7836584 (= e!4633923 (+ 1 (size!42777 (t!388559 lt!2677760))))))

(assert (= (and d!2351663 c!1441154) b!7836583))

(assert (= (and d!2351663 (not c!1441154)) b!7836584))

(declare-fun m!8251490 () Bool)

(assert (=> b!7836584 m!8251490))

(assert (=> b!7835695 d!2351663))

(assert (=> b!7835695 d!2351287))

(declare-fun d!2351665 () Bool)

(declare-fun lt!2677848 () Int)

(assert (=> d!2351665 (>= lt!2677848 0)))

(declare-fun e!4633924 () Int)

(assert (=> d!2351665 (= lt!2677848 e!4633924)))

(declare-fun c!1441155 () Bool)

(assert (=> d!2351665 (= c!1441155 ((_ is Nil!73700) s2!3721))))

(assert (=> d!2351665 (= (size!42777 s2!3721) lt!2677848)))

(declare-fun b!7836585 () Bool)

(assert (=> b!7836585 (= e!4633924 0)))

(declare-fun b!7836586 () Bool)

(assert (=> b!7836586 (= e!4633924 (+ 1 (size!42777 (t!388559 s2!3721))))))

(assert (= (and d!2351665 c!1441155) b!7836585))

(assert (= (and d!2351665 (not c!1441155)) b!7836586))

(declare-fun m!8251492 () Bool)

(assert (=> b!7836586 m!8251492))

(assert (=> b!7835695 d!2351665))

(declare-fun d!2351667 () Bool)

(assert (=> d!2351667 (= (isEmpty!42295 (tail!15535 s2!3721)) ((_ is Nil!73700) (tail!15535 s2!3721)))))

(assert (=> b!7835707 d!2351667))

(assert (=> b!7835707 d!2351645))

(declare-fun d!2351669 () Bool)

(assert (=> d!2351669 (= s1!4101 s1Rec!453)))

(assert (=> d!2351669 true))

(declare-fun _$60!1303 () Unit!168784)

(assert (=> d!2351669 (= (choose!59595 s1!4101 s1Rec!453 s!14274) _$60!1303)))

(assert (=> d!2351361 d!2351669))

(assert (=> d!2351361 d!2351299))

(declare-fun d!2351671 () Bool)

(assert (=> d!2351671 (= (isEmpty!42295 s1!4101) ((_ is Nil!73700) s1!4101))))

(assert (=> d!2351279 d!2351671))

(assert (=> d!2351279 d!2351349))

(declare-fun b!7836587 () Bool)

(declare-fun e!4633926 () Bool)

(declare-fun e!4633931 () Bool)

(assert (=> b!7836587 (= e!4633926 e!4633931)))

(declare-fun res!3116909 () Bool)

(assert (=> b!7836587 (=> (not res!3116909) (not e!4633931))))

(declare-fun call!726518 () Bool)

(assert (=> b!7836587 (= res!3116909 call!726518)))

(declare-fun b!7836588 () Bool)

(declare-fun call!726519 () Bool)

(assert (=> b!7836588 (= e!4633931 call!726519)))

(declare-fun b!7836590 () Bool)

(declare-fun e!4633928 () Bool)

(assert (=> b!7836590 (= e!4633928 call!726518)))

(declare-fun b!7836591 () Bool)

(declare-fun e!4633925 () Bool)

(declare-fun e!4633929 () Bool)

(assert (=> b!7836591 (= e!4633925 e!4633929)))

(declare-fun c!1441157 () Bool)

(assert (=> b!7836591 (= c!1441157 ((_ is Union!20987) (ite c!1441002 (reg!21316 r1!6261) (ite c!1441003 (regTwo!42487 r1!6261) (regOne!42486 r1!6261)))))))

(declare-fun bm!726513 () Bool)

(assert (=> bm!726513 (= call!726519 (validRegex!11401 (ite c!1441157 (regOne!42487 (ite c!1441002 (reg!21316 r1!6261) (ite c!1441003 (regTwo!42487 r1!6261) (regOne!42486 r1!6261)))) (regTwo!42486 (ite c!1441002 (reg!21316 r1!6261) (ite c!1441003 (regTwo!42487 r1!6261) (regOne!42486 r1!6261)))))))))

(declare-fun b!7836592 () Bool)

(declare-fun e!4633927 () Bool)

(assert (=> b!7836592 (= e!4633927 e!4633925)))

(declare-fun c!1441156 () Bool)

(assert (=> b!7836592 (= c!1441156 ((_ is Star!20987) (ite c!1441002 (reg!21316 r1!6261) (ite c!1441003 (regTwo!42487 r1!6261) (regOne!42486 r1!6261)))))))

(declare-fun b!7836593 () Bool)

(declare-fun res!3116910 () Bool)

(assert (=> b!7836593 (=> (not res!3116910) (not e!4633928))))

(assert (=> b!7836593 (= res!3116910 call!726519)))

(assert (=> b!7836593 (= e!4633929 e!4633928)))

(declare-fun b!7836594 () Bool)

(declare-fun e!4633930 () Bool)

(assert (=> b!7836594 (= e!4633925 e!4633930)))

(declare-fun res!3116907 () Bool)

(assert (=> b!7836594 (= res!3116907 (not (nullable!9305 (reg!21316 (ite c!1441002 (reg!21316 r1!6261) (ite c!1441003 (regTwo!42487 r1!6261) (regOne!42486 r1!6261)))))))))

(assert (=> b!7836594 (=> (not res!3116907) (not e!4633930))))

(declare-fun bm!726514 () Bool)

(declare-fun call!726520 () Bool)

(assert (=> bm!726514 (= call!726518 call!726520)))

(declare-fun b!7836589 () Bool)

(declare-fun res!3116908 () Bool)

(assert (=> b!7836589 (=> res!3116908 e!4633926)))

(assert (=> b!7836589 (= res!3116908 (not ((_ is Concat!29832) (ite c!1441002 (reg!21316 r1!6261) (ite c!1441003 (regTwo!42487 r1!6261) (regOne!42486 r1!6261))))))))

(assert (=> b!7836589 (= e!4633929 e!4633926)))

(declare-fun d!2351673 () Bool)

(declare-fun res!3116911 () Bool)

(assert (=> d!2351673 (=> res!3116911 e!4633927)))

(assert (=> d!2351673 (= res!3116911 ((_ is ElementMatch!20987) (ite c!1441002 (reg!21316 r1!6261) (ite c!1441003 (regTwo!42487 r1!6261) (regOne!42486 r1!6261)))))))

(assert (=> d!2351673 (= (validRegex!11401 (ite c!1441002 (reg!21316 r1!6261) (ite c!1441003 (regTwo!42487 r1!6261) (regOne!42486 r1!6261)))) e!4633927)))

(declare-fun b!7836595 () Bool)

(assert (=> b!7836595 (= e!4633930 call!726520)))

(declare-fun bm!726515 () Bool)

(assert (=> bm!726515 (= call!726520 (validRegex!11401 (ite c!1441156 (reg!21316 (ite c!1441002 (reg!21316 r1!6261) (ite c!1441003 (regTwo!42487 r1!6261) (regOne!42486 r1!6261)))) (ite c!1441157 (regTwo!42487 (ite c!1441002 (reg!21316 r1!6261) (ite c!1441003 (regTwo!42487 r1!6261) (regOne!42486 r1!6261)))) (regOne!42486 (ite c!1441002 (reg!21316 r1!6261) (ite c!1441003 (regTwo!42487 r1!6261) (regOne!42486 r1!6261))))))))))

(assert (= (and d!2351673 (not res!3116911)) b!7836592))

(assert (= (and b!7836592 c!1441156) b!7836594))

(assert (= (and b!7836592 (not c!1441156)) b!7836591))

(assert (= (and b!7836594 res!3116907) b!7836595))

(assert (= (and b!7836591 c!1441157) b!7836593))

(assert (= (and b!7836591 (not c!1441157)) b!7836589))

(assert (= (and b!7836593 res!3116910) b!7836590))

(assert (= (and b!7836589 (not res!3116908)) b!7836587))

(assert (= (and b!7836587 res!3116909) b!7836588))

(assert (= (or b!7836590 b!7836587) bm!726514))

(assert (= (or b!7836593 b!7836588) bm!726513))

(assert (= (or b!7836595 bm!726514) bm!726515))

(declare-fun m!8251494 () Bool)

(assert (=> bm!726513 m!8251494))

(declare-fun m!8251496 () Bool)

(assert (=> b!7836594 m!8251496))

(declare-fun m!8251498 () Bool)

(assert (=> bm!726515 m!8251498))

(assert (=> bm!726444 d!2351673))

(assert (=> b!7835705 d!2351589))

(declare-fun d!2351675 () Bool)

(declare-fun lt!2677849 () Int)

(assert (=> d!2351675 (>= lt!2677849 0)))

(declare-fun e!4633932 () Int)

(assert (=> d!2351675 (= lt!2677849 e!4633932)))

(declare-fun c!1441158 () Bool)

(assert (=> d!2351675 (= c!1441158 ((_ is Nil!73700) (t!388559 lt!2677701)))))

(assert (=> d!2351675 (= (size!42777 (t!388559 lt!2677701)) lt!2677849)))

(declare-fun b!7836596 () Bool)

(assert (=> b!7836596 (= e!4633932 0)))

(declare-fun b!7836597 () Bool)

(assert (=> b!7836597 (= e!4633932 (+ 1 (size!42777 (t!388559 (t!388559 lt!2677701)))))))

(assert (= (and d!2351675 c!1441158) b!7836596))

(assert (= (and d!2351675 (not c!1441158)) b!7836597))

(declare-fun m!8251500 () Bool)

(assert (=> b!7836597 m!8251500))

(assert (=> b!7835869 d!2351675))

(assert (=> bm!726449 d!2351535))

(declare-fun d!2351677 () Bool)

(assert (=> d!2351677 (= (isEmpty!42295 (tail!15535 s1Rec!453)) ((_ is Nil!73700) (tail!15535 s1Rec!453)))))

(assert (=> b!7835860 d!2351677))

(assert (=> b!7835860 d!2351661))

(declare-fun b!7836598 () Bool)

(declare-fun e!4633934 () List!73824)

(assert (=> b!7836598 (= e!4633934 (t!388559 s2Rec!453))))

(declare-fun d!2351679 () Bool)

(declare-fun e!4633933 () Bool)

(assert (=> d!2351679 e!4633933))

(declare-fun res!3116913 () Bool)

(assert (=> d!2351679 (=> (not res!3116913) (not e!4633933))))

(declare-fun lt!2677850 () List!73824)

(assert (=> d!2351679 (= res!3116913 (= (content!15646 lt!2677850) ((_ map or) (content!15646 (t!388559 lt!2677701)) (content!15646 (t!388559 s2Rec!453)))))))

(assert (=> d!2351679 (= lt!2677850 e!4633934)))

(declare-fun c!1441159 () Bool)

(assert (=> d!2351679 (= c!1441159 ((_ is Nil!73700) (t!388559 lt!2677701)))))

(assert (=> d!2351679 (= (++!18021 (t!388559 lt!2677701) (t!388559 s2Rec!453)) lt!2677850)))

(declare-fun b!7836601 () Bool)

(assert (=> b!7836601 (= e!4633933 (or (not (= (t!388559 s2Rec!453) Nil!73700)) (= lt!2677850 (t!388559 lt!2677701))))))

(declare-fun b!7836600 () Bool)

(declare-fun res!3116912 () Bool)

(assert (=> b!7836600 (=> (not res!3116912) (not e!4633933))))

(assert (=> b!7836600 (= res!3116912 (= (size!42777 lt!2677850) (+ (size!42777 (t!388559 lt!2677701)) (size!42777 (t!388559 s2Rec!453)))))))

(declare-fun b!7836599 () Bool)

(assert (=> b!7836599 (= e!4633934 (Cons!73700 (h!80148 (t!388559 lt!2677701)) (++!18021 (t!388559 (t!388559 lt!2677701)) (t!388559 s2Rec!453))))))

(assert (= (and d!2351679 c!1441159) b!7836598))

(assert (= (and d!2351679 (not c!1441159)) b!7836599))

(assert (= (and d!2351679 res!3116913) b!7836600))

(assert (= (and b!7836600 res!3116912) b!7836601))

(declare-fun m!8251502 () Bool)

(assert (=> d!2351679 m!8251502))

(assert (=> d!2351679 m!8251456))

(assert (=> d!2351679 m!8250856))

(declare-fun m!8251504 () Bool)

(assert (=> b!7836600 m!8251504))

(assert (=> b!7836600 m!8250990))

(assert (=> b!7836600 m!8250862))

(declare-fun m!8251506 () Bool)

(assert (=> b!7836599 m!8251506))

(assert (=> b!7835682 d!2351679))

(declare-fun b!7836604 () Bool)

(declare-fun e!4633937 () Bool)

(assert (=> b!7836604 (= e!4633937 (isPrefix!6337 (tail!15535 (tail!15535 lt!2677701)) (tail!15535 (tail!15535 lt!2677695))))))

(declare-fun b!7836603 () Bool)

(declare-fun res!3116916 () Bool)

(assert (=> b!7836603 (=> (not res!3116916) (not e!4633937))))

(assert (=> b!7836603 (= res!3116916 (= (head!15994 (tail!15535 lt!2677701)) (head!15994 (tail!15535 lt!2677695))))))

(declare-fun b!7836602 () Bool)

(declare-fun e!4633935 () Bool)

(assert (=> b!7836602 (= e!4633935 e!4633937)))

(declare-fun res!3116917 () Bool)

(assert (=> b!7836602 (=> (not res!3116917) (not e!4633937))))

(assert (=> b!7836602 (= res!3116917 (not ((_ is Nil!73700) (tail!15535 lt!2677695))))))

(declare-fun d!2351681 () Bool)

(declare-fun e!4633936 () Bool)

(assert (=> d!2351681 e!4633936))

(declare-fun res!3116914 () Bool)

(assert (=> d!2351681 (=> res!3116914 e!4633936)))

(declare-fun lt!2677851 () Bool)

(assert (=> d!2351681 (= res!3116914 (not lt!2677851))))

(assert (=> d!2351681 (= lt!2677851 e!4633935)))

(declare-fun res!3116915 () Bool)

(assert (=> d!2351681 (=> res!3116915 e!4633935)))

(assert (=> d!2351681 (= res!3116915 ((_ is Nil!73700) (tail!15535 lt!2677701)))))

(assert (=> d!2351681 (= (isPrefix!6337 (tail!15535 lt!2677701) (tail!15535 lt!2677695)) lt!2677851)))

(declare-fun b!7836605 () Bool)

(assert (=> b!7836605 (= e!4633936 (>= (size!42777 (tail!15535 lt!2677695)) (size!42777 (tail!15535 lt!2677701))))))

(assert (= (and d!2351681 (not res!3116915)) b!7836602))

(assert (= (and b!7836602 res!3116917) b!7836603))

(assert (= (and b!7836603 res!3116916) b!7836604))

(assert (= (and d!2351681 (not res!3116914)) b!7836605))

(assert (=> b!7836604 m!8250736))

(assert (=> b!7836604 m!8251414))

(assert (=> b!7836604 m!8250738))

(declare-fun m!8251508 () Bool)

(assert (=> b!7836604 m!8251508))

(assert (=> b!7836604 m!8251414))

(assert (=> b!7836604 m!8251508))

(declare-fun m!8251510 () Bool)

(assert (=> b!7836604 m!8251510))

(assert (=> b!7836603 m!8250736))

(assert (=> b!7836603 m!8251420))

(assert (=> b!7836603 m!8250738))

(declare-fun m!8251512 () Bool)

(assert (=> b!7836603 m!8251512))

(assert (=> b!7836605 m!8250738))

(declare-fun m!8251514 () Bool)

(assert (=> b!7836605 m!8251514))

(assert (=> b!7836605 m!8250736))

(assert (=> b!7836605 m!8251426))

(assert (=> b!7835614 d!2351681))

(assert (=> b!7835614 d!2351635))

(declare-fun d!2351683 () Bool)

(assert (=> d!2351683 (= (tail!15535 lt!2677695) (t!388559 lt!2677695))))

(assert (=> b!7835614 d!2351683))

(declare-fun d!2351685 () Bool)

(declare-fun lt!2677852 () Int)

(assert (=> d!2351685 (>= lt!2677852 0)))

(declare-fun e!4633938 () Int)

(assert (=> d!2351685 (= lt!2677852 e!4633938)))

(declare-fun c!1441160 () Bool)

(assert (=> d!2351685 (= c!1441160 ((_ is Nil!73700) (t!388559 s1!4101)))))

(assert (=> d!2351685 (= (size!42777 (t!388559 s1!4101)) lt!2677852)))

(declare-fun b!7836606 () Bool)

(assert (=> b!7836606 (= e!4633938 0)))

(declare-fun b!7836607 () Bool)

(assert (=> b!7836607 (= e!4633938 (+ 1 (size!42777 (t!388559 (t!388559 s1!4101)))))))

(assert (= (and d!2351685 c!1441160) b!7836606))

(assert (= (and d!2351685 (not c!1441160)) b!7836607))

(declare-fun m!8251516 () Bool)

(assert (=> b!7836607 m!8251516))

(assert (=> b!7835599 d!2351685))

(assert (=> b!7835858 d!2351597))

(assert (=> bm!726430 d!2351585))

(declare-fun b!7836610 () Bool)

(declare-fun e!4633941 () Bool)

(assert (=> b!7836610 (= e!4633941 (isPrefix!6337 (tail!15535 (tail!15535 s1Rec!453)) (tail!15535 (tail!15535 s1!4101))))))

(declare-fun b!7836609 () Bool)

(declare-fun res!3116920 () Bool)

(assert (=> b!7836609 (=> (not res!3116920) (not e!4633941))))

(assert (=> b!7836609 (= res!3116920 (= (head!15994 (tail!15535 s1Rec!453)) (head!15994 (tail!15535 s1!4101))))))

(declare-fun b!7836608 () Bool)

(declare-fun e!4633939 () Bool)

(assert (=> b!7836608 (= e!4633939 e!4633941)))

(declare-fun res!3116921 () Bool)

(assert (=> b!7836608 (=> (not res!3116921) (not e!4633941))))

(assert (=> b!7836608 (= res!3116921 (not ((_ is Nil!73700) (tail!15535 s1!4101))))))

(declare-fun d!2351687 () Bool)

(declare-fun e!4633940 () Bool)

(assert (=> d!2351687 e!4633940))

(declare-fun res!3116918 () Bool)

(assert (=> d!2351687 (=> res!3116918 e!4633940)))

(declare-fun lt!2677853 () Bool)

(assert (=> d!2351687 (= res!3116918 (not lt!2677853))))

(assert (=> d!2351687 (= lt!2677853 e!4633939)))

(declare-fun res!3116919 () Bool)

(assert (=> d!2351687 (=> res!3116919 e!4633939)))

(assert (=> d!2351687 (= res!3116919 ((_ is Nil!73700) (tail!15535 s1Rec!453)))))

(assert (=> d!2351687 (= (isPrefix!6337 (tail!15535 s1Rec!453) (tail!15535 s1!4101)) lt!2677853)))

(declare-fun b!7836611 () Bool)

(assert (=> b!7836611 (= e!4633940 (>= (size!42777 (tail!15535 s1!4101)) (size!42777 (tail!15535 s1Rec!453))))))

(assert (= (and d!2351687 (not res!3116919)) b!7836608))

(assert (= (and b!7836608 res!3116921) b!7836609))

(assert (= (and b!7836609 res!3116920) b!7836610))

(assert (= (and d!2351687 (not res!3116918)) b!7836611))

(assert (=> b!7836610 m!8250666))

(assert (=> b!7836610 m!8251472))

(assert (=> b!7836610 m!8250668))

(declare-fun m!8251518 () Bool)

(assert (=> b!7836610 m!8251518))

(assert (=> b!7836610 m!8251472))

(assert (=> b!7836610 m!8251518))

(declare-fun m!8251520 () Bool)

(assert (=> b!7836610 m!8251520))

(assert (=> b!7836609 m!8250666))

(assert (=> b!7836609 m!8251470))

(assert (=> b!7836609 m!8250668))

(declare-fun m!8251522 () Bool)

(assert (=> b!7836609 m!8251522))

(assert (=> b!7836611 m!8250668))

(declare-fun m!8251524 () Bool)

(assert (=> b!7836611 m!8251524))

(assert (=> b!7836611 m!8250666))

(declare-fun m!8251526 () Bool)

(assert (=> b!7836611 m!8251526))

(assert (=> b!7835484 d!2351687))

(assert (=> b!7835484 d!2351661))

(assert (=> b!7835484 d!2351551))

(declare-fun b!7836612 () Bool)

(declare-fun e!4633946 () Bool)

(assert (=> b!7836612 (= e!4633946 (= (head!15994 (tail!15535 s1!4101)) (c!1440938 (derivativeStep!6264 r1!6261 (head!15994 s1!4101)))))))

(declare-fun bm!726516 () Bool)

(declare-fun call!726521 () Bool)

(assert (=> bm!726516 (= call!726521 (isEmpty!42295 (tail!15535 s1!4101)))))

(declare-fun d!2351689 () Bool)

(declare-fun e!4633944 () Bool)

(assert (=> d!2351689 e!4633944))

(declare-fun c!1441161 () Bool)

(assert (=> d!2351689 (= c!1441161 ((_ is EmptyExpr!20987) (derivativeStep!6264 r1!6261 (head!15994 s1!4101))))))

(declare-fun lt!2677854 () Bool)

(declare-fun e!4633942 () Bool)

(assert (=> d!2351689 (= lt!2677854 e!4633942)))

(declare-fun c!1441163 () Bool)

(assert (=> d!2351689 (= c!1441163 (isEmpty!42295 (tail!15535 s1!4101)))))

(assert (=> d!2351689 (validRegex!11401 (derivativeStep!6264 r1!6261 (head!15994 s1!4101)))))

(assert (=> d!2351689 (= (matchR!10443 (derivativeStep!6264 r1!6261 (head!15994 s1!4101)) (tail!15535 s1!4101)) lt!2677854)))

(declare-fun b!7836613 () Bool)

(declare-fun res!3116925 () Bool)

(declare-fun e!4633945 () Bool)

(assert (=> b!7836613 (=> res!3116925 e!4633945)))

(assert (=> b!7836613 (= res!3116925 (not ((_ is ElementMatch!20987) (derivativeStep!6264 r1!6261 (head!15994 s1!4101)))))))

(declare-fun e!4633948 () Bool)

(assert (=> b!7836613 (= e!4633948 e!4633945)))

(declare-fun b!7836614 () Bool)

(declare-fun e!4633943 () Bool)

(assert (=> b!7836614 (= e!4633945 e!4633943)))

(declare-fun res!3116923 () Bool)

(assert (=> b!7836614 (=> (not res!3116923) (not e!4633943))))

(assert (=> b!7836614 (= res!3116923 (not lt!2677854))))

(declare-fun b!7836615 () Bool)

(assert (=> b!7836615 (= e!4633942 (nullable!9305 (derivativeStep!6264 r1!6261 (head!15994 s1!4101))))))

(declare-fun b!7836616 () Bool)

(declare-fun e!4633947 () Bool)

(assert (=> b!7836616 (= e!4633947 (not (= (head!15994 (tail!15535 s1!4101)) (c!1440938 (derivativeStep!6264 r1!6261 (head!15994 s1!4101))))))))

(declare-fun b!7836617 () Bool)

(declare-fun res!3116922 () Bool)

(assert (=> b!7836617 (=> (not res!3116922) (not e!4633946))))

(assert (=> b!7836617 (= res!3116922 (not call!726521))))

(declare-fun b!7836618 () Bool)

(declare-fun res!3116924 () Bool)

(assert (=> b!7836618 (=> (not res!3116924) (not e!4633946))))

(assert (=> b!7836618 (= res!3116924 (isEmpty!42295 (tail!15535 (tail!15535 s1!4101))))))

(declare-fun b!7836619 () Bool)

(assert (=> b!7836619 (= e!4633948 (not lt!2677854))))

(declare-fun b!7836620 () Bool)

(assert (=> b!7836620 (= e!4633943 e!4633947)))

(declare-fun res!3116926 () Bool)

(assert (=> b!7836620 (=> res!3116926 e!4633947)))

(assert (=> b!7836620 (= res!3116926 call!726521)))

(declare-fun b!7836621 () Bool)

(declare-fun res!3116929 () Bool)

(assert (=> b!7836621 (=> res!3116929 e!4633945)))

(assert (=> b!7836621 (= res!3116929 e!4633946)))

(declare-fun res!3116928 () Bool)

(assert (=> b!7836621 (=> (not res!3116928) (not e!4633946))))

(assert (=> b!7836621 (= res!3116928 lt!2677854)))

(declare-fun b!7836622 () Bool)

(assert (=> b!7836622 (= e!4633944 e!4633948)))

(declare-fun c!1441162 () Bool)

(assert (=> b!7836622 (= c!1441162 ((_ is EmptyLang!20987) (derivativeStep!6264 r1!6261 (head!15994 s1!4101))))))

(declare-fun b!7836623 () Bool)

(assert (=> b!7836623 (= e!4633942 (matchR!10443 (derivativeStep!6264 (derivativeStep!6264 r1!6261 (head!15994 s1!4101)) (head!15994 (tail!15535 s1!4101))) (tail!15535 (tail!15535 s1!4101))))))

(declare-fun b!7836624 () Bool)

(declare-fun res!3116927 () Bool)

(assert (=> b!7836624 (=> res!3116927 e!4633947)))

(assert (=> b!7836624 (= res!3116927 (not (isEmpty!42295 (tail!15535 (tail!15535 s1!4101)))))))

(declare-fun b!7836625 () Bool)

(assert (=> b!7836625 (= e!4633944 (= lt!2677854 call!726521))))

(assert (= (and d!2351689 c!1441163) b!7836615))

(assert (= (and d!2351689 (not c!1441163)) b!7836623))

(assert (= (and d!2351689 c!1441161) b!7836625))

(assert (= (and d!2351689 (not c!1441161)) b!7836622))

(assert (= (and b!7836622 c!1441162) b!7836619))

(assert (= (and b!7836622 (not c!1441162)) b!7836613))

(assert (= (and b!7836613 (not res!3116925)) b!7836621))

(assert (= (and b!7836621 res!3116928) b!7836617))

(assert (= (and b!7836617 res!3116922) b!7836618))

(assert (= (and b!7836618 res!3116924) b!7836612))

(assert (= (and b!7836621 (not res!3116929)) b!7836614))

(assert (= (and b!7836614 res!3116923) b!7836620))

(assert (= (and b!7836620 (not res!3116926)) b!7836624))

(assert (= (and b!7836624 (not res!3116927)) b!7836616))

(assert (= (or b!7836625 b!7836617 b!7836620) bm!726516))

(assert (=> d!2351689 m!8250668))

(assert (=> d!2351689 m!8250706))

(assert (=> d!2351689 m!8250714))

(declare-fun m!8251528 () Bool)

(assert (=> d!2351689 m!8251528))

(assert (=> b!7836616 m!8250668))

(assert (=> b!7836616 m!8251522))

(assert (=> b!7836612 m!8250668))

(assert (=> b!7836612 m!8251522))

(assert (=> b!7836618 m!8250668))

(assert (=> b!7836618 m!8251518))

(assert (=> b!7836618 m!8251518))

(declare-fun m!8251530 () Bool)

(assert (=> b!7836618 m!8251530))

(assert (=> b!7836624 m!8250668))

(assert (=> b!7836624 m!8251518))

(assert (=> b!7836624 m!8251518))

(assert (=> b!7836624 m!8251530))

(assert (=> b!7836615 m!8250714))

(declare-fun m!8251532 () Bool)

(assert (=> b!7836615 m!8251532))

(assert (=> bm!726516 m!8250668))

(assert (=> bm!726516 m!8250706))

(assert (=> b!7836623 m!8250668))

(assert (=> b!7836623 m!8251522))

(assert (=> b!7836623 m!8250714))

(assert (=> b!7836623 m!8251522))

(declare-fun m!8251534 () Bool)

(assert (=> b!7836623 m!8251534))

(assert (=> b!7836623 m!8250668))

(assert (=> b!7836623 m!8251518))

(assert (=> b!7836623 m!8251534))

(assert (=> b!7836623 m!8251518))

(declare-fun m!8251536 () Bool)

(assert (=> b!7836623 m!8251536))

(assert (=> b!7835573 d!2351689))

(declare-fun b!7836626 () Bool)

(declare-fun c!1441167 () Bool)

(assert (=> b!7836626 (= c!1441167 (nullable!9305 (regOne!42486 r1!6261)))))

(declare-fun e!4633949 () Regex!20987)

(declare-fun e!4633951 () Regex!20987)

(assert (=> b!7836626 (= e!4633949 e!4633951)))

(declare-fun bm!726517 () Bool)

(declare-fun c!1441168 () Bool)

(declare-fun call!726524 () Regex!20987)

(assert (=> bm!726517 (= call!726524 (derivativeStep!6264 (ite c!1441168 (regOne!42487 r1!6261) (regTwo!42486 r1!6261)) (head!15994 s1!4101)))))

(declare-fun b!7836627 () Bool)

(declare-fun call!726525 () Regex!20987)

(assert (=> b!7836627 (= e!4633949 (Concat!29832 call!726525 r1!6261))))

(declare-fun b!7836628 () Bool)

(declare-fun e!4633953 () Regex!20987)

(assert (=> b!7836628 (= e!4633953 EmptyLang!20987)))

(declare-fun b!7836629 () Bool)

(declare-fun call!726522 () Regex!20987)

(assert (=> b!7836629 (= e!4633951 (Union!20987 (Concat!29832 call!726522 (regTwo!42486 r1!6261)) call!726524))))

(declare-fun b!7836630 () Bool)

(declare-fun e!4633950 () Regex!20987)

(assert (=> b!7836630 (= e!4633950 (ite (= (head!15994 s1!4101) (c!1440938 r1!6261)) EmptyExpr!20987 EmptyLang!20987))))

(declare-fun b!7836631 () Bool)

(assert (=> b!7836631 (= e!4633951 (Union!20987 (Concat!29832 call!726522 (regTwo!42486 r1!6261)) EmptyLang!20987))))

(declare-fun bm!726518 () Bool)

(declare-fun call!726523 () Regex!20987)

(declare-fun c!1441164 () Bool)

(assert (=> bm!726518 (= call!726523 (derivativeStep!6264 (ite c!1441168 (regTwo!42487 r1!6261) (ite c!1441164 (reg!21316 r1!6261) (regOne!42486 r1!6261))) (head!15994 s1!4101)))))

(declare-fun b!7836632 () Bool)

(assert (=> b!7836632 (= e!4633953 e!4633950)))

(declare-fun c!1441166 () Bool)

(assert (=> b!7836632 (= c!1441166 ((_ is ElementMatch!20987) r1!6261))))

(declare-fun bm!726519 () Bool)

(assert (=> bm!726519 (= call!726525 call!726523)))

(declare-fun d!2351691 () Bool)

(declare-fun lt!2677855 () Regex!20987)

(assert (=> d!2351691 (validRegex!11401 lt!2677855)))

(assert (=> d!2351691 (= lt!2677855 e!4633953)))

(declare-fun c!1441165 () Bool)

(assert (=> d!2351691 (= c!1441165 (or ((_ is EmptyExpr!20987) r1!6261) ((_ is EmptyLang!20987) r1!6261)))))

(assert (=> d!2351691 (validRegex!11401 r1!6261)))

(assert (=> d!2351691 (= (derivativeStep!6264 r1!6261 (head!15994 s1!4101)) lt!2677855)))

(declare-fun b!7836633 () Bool)

(assert (=> b!7836633 (= c!1441168 ((_ is Union!20987) r1!6261))))

(declare-fun e!4633952 () Regex!20987)

(assert (=> b!7836633 (= e!4633950 e!4633952)))

(declare-fun b!7836634 () Bool)

(assert (=> b!7836634 (= e!4633952 (Union!20987 call!726524 call!726523))))

(declare-fun b!7836635 () Bool)

(assert (=> b!7836635 (= e!4633952 e!4633949)))

(assert (=> b!7836635 (= c!1441164 ((_ is Star!20987) r1!6261))))

(declare-fun bm!726520 () Bool)

(assert (=> bm!726520 (= call!726522 call!726525)))

(assert (= (and d!2351691 c!1441165) b!7836628))

(assert (= (and d!2351691 (not c!1441165)) b!7836632))

(assert (= (and b!7836632 c!1441166) b!7836630))

(assert (= (and b!7836632 (not c!1441166)) b!7836633))

(assert (= (and b!7836633 c!1441168) b!7836634))

(assert (= (and b!7836633 (not c!1441168)) b!7836635))

(assert (= (and b!7836635 c!1441164) b!7836627))

(assert (= (and b!7836635 (not c!1441164)) b!7836626))

(assert (= (and b!7836626 c!1441167) b!7836629))

(assert (= (and b!7836626 (not c!1441167)) b!7836631))

(assert (= (or b!7836629 b!7836631) bm!726520))

(assert (= (or b!7836627 bm!726520) bm!726519))

(assert (= (or b!7836634 b!7836629) bm!726517))

(assert (= (or b!7836634 bm!726519) bm!726518))

(assert (=> b!7836626 m!8251482))

(assert (=> bm!726517 m!8250674))

(declare-fun m!8251538 () Bool)

(assert (=> bm!726517 m!8251538))

(assert (=> bm!726518 m!8250674))

(declare-fun m!8251540 () Bool)

(assert (=> bm!726518 m!8251540))

(declare-fun m!8251542 () Bool)

(assert (=> d!2351691 m!8251542))

(assert (=> d!2351691 m!8250646))

(assert (=> b!7835573 d!2351691))

(assert (=> b!7835573 d!2351599))

(assert (=> b!7835573 d!2351551))

(declare-fun b!7836636 () Bool)

(declare-fun e!4633955 () Bool)

(declare-fun e!4633960 () Bool)

(assert (=> b!7836636 (= e!4633955 e!4633960)))

(declare-fun res!3116932 () Bool)

(assert (=> b!7836636 (=> (not res!3116932) (not e!4633960))))

(declare-fun call!726526 () Bool)

(assert (=> b!7836636 (= res!3116932 call!726526)))

(declare-fun b!7836637 () Bool)

(declare-fun call!726527 () Bool)

(assert (=> b!7836637 (= e!4633960 call!726527)))

(declare-fun b!7836639 () Bool)

(declare-fun e!4633957 () Bool)

(assert (=> b!7836639 (= e!4633957 call!726526)))

(declare-fun b!7836640 () Bool)

(declare-fun e!4633954 () Bool)

(declare-fun e!4633958 () Bool)

(assert (=> b!7836640 (= e!4633954 e!4633958)))

(declare-fun c!1441170 () Bool)

(assert (=> b!7836640 (= c!1441170 ((_ is Union!20987) (ite c!1441003 (regOne!42487 r1!6261) (regTwo!42486 r1!6261))))))

(declare-fun bm!726521 () Bool)

(assert (=> bm!726521 (= call!726527 (validRegex!11401 (ite c!1441170 (regOne!42487 (ite c!1441003 (regOne!42487 r1!6261) (regTwo!42486 r1!6261))) (regTwo!42486 (ite c!1441003 (regOne!42487 r1!6261) (regTwo!42486 r1!6261))))))))

(declare-fun b!7836641 () Bool)

(declare-fun e!4633956 () Bool)

(assert (=> b!7836641 (= e!4633956 e!4633954)))

(declare-fun c!1441169 () Bool)

(assert (=> b!7836641 (= c!1441169 ((_ is Star!20987) (ite c!1441003 (regOne!42487 r1!6261) (regTwo!42486 r1!6261))))))

(declare-fun b!7836642 () Bool)

(declare-fun res!3116933 () Bool)

(assert (=> b!7836642 (=> (not res!3116933) (not e!4633957))))

(assert (=> b!7836642 (= res!3116933 call!726527)))

(assert (=> b!7836642 (= e!4633958 e!4633957)))

(declare-fun b!7836643 () Bool)

(declare-fun e!4633959 () Bool)

(assert (=> b!7836643 (= e!4633954 e!4633959)))

(declare-fun res!3116930 () Bool)

(assert (=> b!7836643 (= res!3116930 (not (nullable!9305 (reg!21316 (ite c!1441003 (regOne!42487 r1!6261) (regTwo!42486 r1!6261))))))))

(assert (=> b!7836643 (=> (not res!3116930) (not e!4633959))))

(declare-fun bm!726522 () Bool)

(declare-fun call!726528 () Bool)

(assert (=> bm!726522 (= call!726526 call!726528)))

(declare-fun b!7836638 () Bool)

(declare-fun res!3116931 () Bool)

(assert (=> b!7836638 (=> res!3116931 e!4633955)))

(assert (=> b!7836638 (= res!3116931 (not ((_ is Concat!29832) (ite c!1441003 (regOne!42487 r1!6261) (regTwo!42486 r1!6261)))))))

(assert (=> b!7836638 (= e!4633958 e!4633955)))

(declare-fun d!2351693 () Bool)

(declare-fun res!3116934 () Bool)

(assert (=> d!2351693 (=> res!3116934 e!4633956)))

(assert (=> d!2351693 (= res!3116934 ((_ is ElementMatch!20987) (ite c!1441003 (regOne!42487 r1!6261) (regTwo!42486 r1!6261))))))

(assert (=> d!2351693 (= (validRegex!11401 (ite c!1441003 (regOne!42487 r1!6261) (regTwo!42486 r1!6261))) e!4633956)))

(declare-fun b!7836644 () Bool)

(assert (=> b!7836644 (= e!4633959 call!726528)))

(declare-fun bm!726523 () Bool)

(assert (=> bm!726523 (= call!726528 (validRegex!11401 (ite c!1441169 (reg!21316 (ite c!1441003 (regOne!42487 r1!6261) (regTwo!42486 r1!6261))) (ite c!1441170 (regTwo!42487 (ite c!1441003 (regOne!42487 r1!6261) (regTwo!42486 r1!6261))) (regOne!42486 (ite c!1441003 (regOne!42487 r1!6261) (regTwo!42486 r1!6261)))))))))

(assert (= (and d!2351693 (not res!3116934)) b!7836641))

(assert (= (and b!7836641 c!1441169) b!7836643))

(assert (= (and b!7836641 (not c!1441169)) b!7836640))

(assert (= (and b!7836643 res!3116930) b!7836644))

(assert (= (and b!7836640 c!1441170) b!7836642))

(assert (= (and b!7836640 (not c!1441170)) b!7836638))

(assert (= (and b!7836642 res!3116933) b!7836639))

(assert (= (and b!7836638 (not res!3116931)) b!7836636))

(assert (= (and b!7836636 res!3116932) b!7836637))

(assert (= (or b!7836639 b!7836636) bm!726522))

(assert (= (or b!7836642 b!7836637) bm!726521))

(assert (= (or b!7836644 bm!726522) bm!726523))

(declare-fun m!8251544 () Bool)

(assert (=> bm!726521 m!8251544))

(declare-fun m!8251546 () Bool)

(assert (=> b!7836643 m!8251546))

(declare-fun m!8251548 () Bool)

(assert (=> bm!726523 m!8251548))

(assert (=> bm!726442 d!2351693))

(declare-fun d!2351695 () Bool)

(assert (=> d!2351695 (= (isEmpty!42295 s1Rec!453) ((_ is Nil!73700) s1Rec!453))))

(assert (=> bm!726445 d!2351695))

(assert (=> d!2351365 d!2351695))

(assert (=> d!2351365 d!2351349))

(declare-fun b!7836645 () Bool)

(declare-fun e!4633962 () List!73824)

(assert (=> b!7836645 (= e!4633962 (Cons!73700 (h!80148 s2Rec!453) Nil!73700))))

(declare-fun d!2351697 () Bool)

(declare-fun e!4633961 () Bool)

(assert (=> d!2351697 e!4633961))

(declare-fun res!3116936 () Bool)

(assert (=> d!2351697 (=> (not res!3116936) (not e!4633961))))

(declare-fun lt!2677856 () List!73824)

(assert (=> d!2351697 (= res!3116936 (= (content!15646 lt!2677856) ((_ map or) (content!15646 (t!388559 s1Rec!453)) (content!15646 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)))))))

(assert (=> d!2351697 (= lt!2677856 e!4633962)))

(declare-fun c!1441171 () Bool)

(assert (=> d!2351697 (= c!1441171 ((_ is Nil!73700) (t!388559 s1Rec!453)))))

(assert (=> d!2351697 (= (++!18021 (t!388559 s1Rec!453) (Cons!73700 (h!80148 s2Rec!453) Nil!73700)) lt!2677856)))

(declare-fun b!7836648 () Bool)

(assert (=> b!7836648 (= e!4633961 (or (not (= (Cons!73700 (h!80148 s2Rec!453) Nil!73700) Nil!73700)) (= lt!2677856 (t!388559 s1Rec!453))))))

(declare-fun b!7836647 () Bool)

(declare-fun res!3116935 () Bool)

(assert (=> b!7836647 (=> (not res!3116935) (not e!4633961))))

(assert (=> b!7836647 (= res!3116935 (= (size!42777 lt!2677856) (+ (size!42777 (t!388559 s1Rec!453)) (size!42777 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)))))))

(declare-fun b!7836646 () Bool)

(assert (=> b!7836646 (= e!4633962 (Cons!73700 (h!80148 (t!388559 s1Rec!453)) (++!18021 (t!388559 (t!388559 s1Rec!453)) (Cons!73700 (h!80148 s2Rec!453) Nil!73700))))))

(assert (= (and d!2351697 c!1441171) b!7836645))

(assert (= (and d!2351697 (not c!1441171)) b!7836646))

(assert (= (and d!2351697 res!3116936) b!7836647))

(assert (= (and b!7836647 res!3116935) b!7836648))

(declare-fun m!8251550 () Bool)

(assert (=> d!2351697 m!8251550))

(assert (=> d!2351697 m!8251302))

(assert (=> d!2351697 m!8250782))

(declare-fun m!8251552 () Bool)

(assert (=> b!7836647 m!8251552))

(assert (=> b!7836647 m!8250798))

(assert (=> b!7836647 m!8250786))

(declare-fun m!8251554 () Bool)

(assert (=> b!7836646 m!8251554))

(assert (=> b!7835666 d!2351697))

(declare-fun b!7836651 () Bool)

(declare-fun e!4633965 () Bool)

(assert (=> b!7836651 (= e!4633965 (isPrefix!6337 (tail!15535 (tail!15535 s1Rec!453)) (tail!15535 (tail!15535 lt!2677694))))))

(declare-fun b!7836650 () Bool)

(declare-fun res!3116939 () Bool)

(assert (=> b!7836650 (=> (not res!3116939) (not e!4633965))))

(assert (=> b!7836650 (= res!3116939 (= (head!15994 (tail!15535 s1Rec!453)) (head!15994 (tail!15535 lt!2677694))))))

(declare-fun b!7836649 () Bool)

(declare-fun e!4633963 () Bool)

(assert (=> b!7836649 (= e!4633963 e!4633965)))

(declare-fun res!3116940 () Bool)

(assert (=> b!7836649 (=> (not res!3116940) (not e!4633965))))

(assert (=> b!7836649 (= res!3116940 (not ((_ is Nil!73700) (tail!15535 lt!2677694))))))

(declare-fun d!2351699 () Bool)

(declare-fun e!4633964 () Bool)

(assert (=> d!2351699 e!4633964))

(declare-fun res!3116937 () Bool)

(assert (=> d!2351699 (=> res!3116937 e!4633964)))

(declare-fun lt!2677857 () Bool)

(assert (=> d!2351699 (= res!3116937 (not lt!2677857))))

(assert (=> d!2351699 (= lt!2677857 e!4633963)))

(declare-fun res!3116938 () Bool)

(assert (=> d!2351699 (=> res!3116938 e!4633963)))

(assert (=> d!2351699 (= res!3116938 ((_ is Nil!73700) (tail!15535 s1Rec!453)))))

(assert (=> d!2351699 (= (isPrefix!6337 (tail!15535 s1Rec!453) (tail!15535 lt!2677694)) lt!2677857)))

(declare-fun b!7836652 () Bool)

(assert (=> b!7836652 (= e!4633964 (>= (size!42777 (tail!15535 lt!2677694)) (size!42777 (tail!15535 s1Rec!453))))))

(assert (= (and d!2351699 (not res!3116938)) b!7836649))

(assert (= (and b!7836649 res!3116940) b!7836650))

(assert (= (and b!7836650 res!3116939) b!7836651))

(assert (= (and d!2351699 (not res!3116937)) b!7836652))

(assert (=> b!7836651 m!8250666))

(assert (=> b!7836651 m!8251472))

(assert (=> b!7836651 m!8250728))

(declare-fun m!8251556 () Bool)

(assert (=> b!7836651 m!8251556))

(assert (=> b!7836651 m!8251472))

(assert (=> b!7836651 m!8251556))

(declare-fun m!8251558 () Bool)

(assert (=> b!7836651 m!8251558))

(assert (=> b!7836650 m!8250666))

(assert (=> b!7836650 m!8251470))

(assert (=> b!7836650 m!8250728))

(declare-fun m!8251560 () Bool)

(assert (=> b!7836650 m!8251560))

(assert (=> b!7836652 m!8250728))

(declare-fun m!8251562 () Bool)

(assert (=> b!7836652 m!8251562))

(assert (=> b!7836652 m!8250666))

(assert (=> b!7836652 m!8251526))

(assert (=> b!7835608 d!2351699))

(assert (=> b!7835608 d!2351661))

(declare-fun d!2351701 () Bool)

(assert (=> d!2351701 (= (tail!15535 lt!2677694) (t!388559 lt!2677694))))

(assert (=> b!7835608 d!2351701))

(assert (=> b!7835854 d!2351597))

(declare-fun b!7836653 () Bool)

(declare-fun e!4633967 () Bool)

(declare-fun e!4633972 () Bool)

(assert (=> b!7836653 (= e!4633967 e!4633972)))

(declare-fun res!3116943 () Bool)

(assert (=> b!7836653 (=> (not res!3116943) (not e!4633972))))

(declare-fun call!726529 () Bool)

(assert (=> b!7836653 (= res!3116943 call!726529)))

(declare-fun b!7836654 () Bool)

(declare-fun call!726530 () Bool)

(assert (=> b!7836654 (= e!4633972 call!726530)))

(declare-fun b!7836656 () Bool)

(declare-fun e!4633969 () Bool)

(assert (=> b!7836656 (= e!4633969 call!726529)))

(declare-fun b!7836657 () Bool)

(declare-fun e!4633966 () Bool)

(declare-fun e!4633970 () Bool)

(assert (=> b!7836657 (= e!4633966 e!4633970)))

(declare-fun c!1441173 () Bool)

(assert (=> b!7836657 (= c!1441173 ((_ is Union!20987) (ite c!1441008 (reg!21316 r2!6199) (ite c!1441009 (regTwo!42487 r2!6199) (regOne!42486 r2!6199)))))))

(declare-fun bm!726524 () Bool)

(assert (=> bm!726524 (= call!726530 (validRegex!11401 (ite c!1441173 (regOne!42487 (ite c!1441008 (reg!21316 r2!6199) (ite c!1441009 (regTwo!42487 r2!6199) (regOne!42486 r2!6199)))) (regTwo!42486 (ite c!1441008 (reg!21316 r2!6199) (ite c!1441009 (regTwo!42487 r2!6199) (regOne!42486 r2!6199)))))))))

(declare-fun b!7836658 () Bool)

(declare-fun e!4633968 () Bool)

(assert (=> b!7836658 (= e!4633968 e!4633966)))

(declare-fun c!1441172 () Bool)

(assert (=> b!7836658 (= c!1441172 ((_ is Star!20987) (ite c!1441008 (reg!21316 r2!6199) (ite c!1441009 (regTwo!42487 r2!6199) (regOne!42486 r2!6199)))))))

(declare-fun b!7836659 () Bool)

(declare-fun res!3116944 () Bool)

(assert (=> b!7836659 (=> (not res!3116944) (not e!4633969))))

(assert (=> b!7836659 (= res!3116944 call!726530)))

(assert (=> b!7836659 (= e!4633970 e!4633969)))

(declare-fun b!7836660 () Bool)

(declare-fun e!4633971 () Bool)

(assert (=> b!7836660 (= e!4633966 e!4633971)))

(declare-fun res!3116941 () Bool)

(assert (=> b!7836660 (= res!3116941 (not (nullable!9305 (reg!21316 (ite c!1441008 (reg!21316 r2!6199) (ite c!1441009 (regTwo!42487 r2!6199) (regOne!42486 r2!6199)))))))))

(assert (=> b!7836660 (=> (not res!3116941) (not e!4633971))))

(declare-fun bm!726525 () Bool)

(declare-fun call!726531 () Bool)

(assert (=> bm!726525 (= call!726529 call!726531)))

(declare-fun b!7836655 () Bool)

(declare-fun res!3116942 () Bool)

(assert (=> b!7836655 (=> res!3116942 e!4633967)))

(assert (=> b!7836655 (= res!3116942 (not ((_ is Concat!29832) (ite c!1441008 (reg!21316 r2!6199) (ite c!1441009 (regTwo!42487 r2!6199) (regOne!42486 r2!6199))))))))

(assert (=> b!7836655 (= e!4633970 e!4633967)))

(declare-fun d!2351703 () Bool)

(declare-fun res!3116945 () Bool)

(assert (=> d!2351703 (=> res!3116945 e!4633968)))

(assert (=> d!2351703 (= res!3116945 ((_ is ElementMatch!20987) (ite c!1441008 (reg!21316 r2!6199) (ite c!1441009 (regTwo!42487 r2!6199) (regOne!42486 r2!6199)))))))

(assert (=> d!2351703 (= (validRegex!11401 (ite c!1441008 (reg!21316 r2!6199) (ite c!1441009 (regTwo!42487 r2!6199) (regOne!42486 r2!6199)))) e!4633968)))

(declare-fun b!7836661 () Bool)

(assert (=> b!7836661 (= e!4633971 call!726531)))

(declare-fun bm!726526 () Bool)

(assert (=> bm!726526 (= call!726531 (validRegex!11401 (ite c!1441172 (reg!21316 (ite c!1441008 (reg!21316 r2!6199) (ite c!1441009 (regTwo!42487 r2!6199) (regOne!42486 r2!6199)))) (ite c!1441173 (regTwo!42487 (ite c!1441008 (reg!21316 r2!6199) (ite c!1441009 (regTwo!42487 r2!6199) (regOne!42486 r2!6199)))) (regOne!42486 (ite c!1441008 (reg!21316 r2!6199) (ite c!1441009 (regTwo!42487 r2!6199) (regOne!42486 r2!6199))))))))))

(assert (= (and d!2351703 (not res!3116945)) b!7836658))

(assert (= (and b!7836658 c!1441172) b!7836660))

(assert (= (and b!7836658 (not c!1441172)) b!7836657))

(assert (= (and b!7836660 res!3116941) b!7836661))

(assert (= (and b!7836657 c!1441173) b!7836659))

(assert (= (and b!7836657 (not c!1441173)) b!7836655))

(assert (= (and b!7836659 res!3116944) b!7836656))

(assert (= (and b!7836655 (not res!3116942)) b!7836653))

(assert (= (and b!7836653 res!3116943) b!7836654))

(assert (= (or b!7836656 b!7836653) bm!726525))

(assert (= (or b!7836659 b!7836654) bm!726524))

(assert (= (or b!7836661 bm!726525) bm!726526))

(declare-fun m!8251564 () Bool)

(assert (=> bm!726524 m!8251564))

(declare-fun m!8251566 () Bool)

(assert (=> b!7836660 m!8251566))

(declare-fun m!8251568 () Bool)

(assert (=> bm!726526 m!8251568))

(assert (=> bm!726448 d!2351703))

(declare-fun d!2351705 () Bool)

(assert (=> d!2351705 (= (isEmpty!42295 (tail!15535 s2Rec!453)) ((_ is Nil!73700) (tail!15535 s2Rec!453)))))

(assert (=> b!7835891 d!2351705))

(assert (=> b!7835891 d!2351629))

(declare-fun b!7836664 () Bool)

(declare-fun e!4633975 () Bool)

(assert (=> b!7836664 (= e!4633975 (isPrefix!6337 (tail!15535 (tail!15535 s1!4101)) (tail!15535 (tail!15535 s!14274))))))

(declare-fun b!7836663 () Bool)

(declare-fun res!3116948 () Bool)

(assert (=> b!7836663 (=> (not res!3116948) (not e!4633975))))

(assert (=> b!7836663 (= res!3116948 (= (head!15994 (tail!15535 s1!4101)) (head!15994 (tail!15535 s!14274))))))

(declare-fun b!7836662 () Bool)

(declare-fun e!4633973 () Bool)

(assert (=> b!7836662 (= e!4633973 e!4633975)))

(declare-fun res!3116949 () Bool)

(assert (=> b!7836662 (=> (not res!3116949) (not e!4633975))))

(assert (=> b!7836662 (= res!3116949 (not ((_ is Nil!73700) (tail!15535 s!14274))))))

(declare-fun d!2351707 () Bool)

(declare-fun e!4633974 () Bool)

(assert (=> d!2351707 e!4633974))

(declare-fun res!3116946 () Bool)

(assert (=> d!2351707 (=> res!3116946 e!4633974)))

(declare-fun lt!2677858 () Bool)

(assert (=> d!2351707 (= res!3116946 (not lt!2677858))))

(assert (=> d!2351707 (= lt!2677858 e!4633973)))

(declare-fun res!3116947 () Bool)

(assert (=> d!2351707 (=> res!3116947 e!4633973)))

(assert (=> d!2351707 (= res!3116947 ((_ is Nil!73700) (tail!15535 s1!4101)))))

(assert (=> d!2351707 (= (isPrefix!6337 (tail!15535 s1!4101) (tail!15535 s!14274)) lt!2677858)))

(declare-fun b!7836665 () Bool)

(assert (=> b!7836665 (= e!4633974 (>= (size!42777 (tail!15535 s!14274)) (size!42777 (tail!15535 s1!4101))))))

(assert (= (and d!2351707 (not res!3116947)) b!7836662))

(assert (= (and b!7836662 res!3116949) b!7836663))

(assert (= (and b!7836663 res!3116948) b!7836664))

(assert (= (and d!2351707 (not res!3116946)) b!7836665))

(assert (=> b!7836664 m!8250668))

(assert (=> b!7836664 m!8251518))

(assert (=> b!7836664 m!8250754))

(assert (=> b!7836664 m!8251416))

(assert (=> b!7836664 m!8251518))

(assert (=> b!7836664 m!8251416))

(declare-fun m!8251570 () Bool)

(assert (=> b!7836664 m!8251570))

(assert (=> b!7836663 m!8250668))

(assert (=> b!7836663 m!8251522))

(assert (=> b!7836663 m!8250754))

(assert (=> b!7836663 m!8251422))

(assert (=> b!7836665 m!8250754))

(assert (=> b!7836665 m!8251424))

(assert (=> b!7836665 m!8250668))

(assert (=> b!7836665 m!8251524))

(assert (=> b!7835622 d!2351707))

(assert (=> b!7835622 d!2351551))

(assert (=> b!7835622 d!2351637))

(assert (=> b!7835568 d!2351549))

(assert (=> b!7835568 d!2351551))

(assert (=> b!7835853 d!2351619))

(assert (=> b!7835853 d!2351367))

(assert (=> b!7835566 d!2351599))

(declare-fun d!2351709 () Bool)

(assert (=> d!2351709 (= s2!3721 s2Rec!453)))

(assert (=> d!2351709 true))

(declare-fun _$63!1411 () Unit!168784)

(assert (=> d!2351709 (= (choose!59594 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274) _$63!1411)))

(assert (=> d!2351359 d!2351709))

(assert (=> d!2351359 d!2351299))

(assert (=> b!7835713 d!2351667))

(assert (=> b!7835713 d!2351645))

(declare-fun b!7836666 () Bool)

(declare-fun e!4633977 () List!73824)

(assert (=> b!7836666 (= e!4633977 (t!388559 s2Rec!453))))

(declare-fun d!2351711 () Bool)

(declare-fun e!4633976 () Bool)

(assert (=> d!2351711 e!4633976))

(declare-fun res!3116951 () Bool)

(assert (=> d!2351711 (=> (not res!3116951) (not e!4633976))))

(declare-fun lt!2677859 () List!73824)

(assert (=> d!2351711 (= res!3116951 (= (content!15646 lt!2677859) ((_ map or) (content!15646 (++!18021 s1Rec!453 (Cons!73700 (h!80148 s2Rec!453) Nil!73700))) (content!15646 (t!388559 s2Rec!453)))))))

(assert (=> d!2351711 (= lt!2677859 e!4633977)))

(declare-fun c!1441174 () Bool)

(assert (=> d!2351711 (= c!1441174 ((_ is Nil!73700) (++!18021 s1Rec!453 (Cons!73700 (h!80148 s2Rec!453) Nil!73700))))))

(assert (=> d!2351711 (= (++!18021 (++!18021 s1Rec!453 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)) (t!388559 s2Rec!453)) lt!2677859)))

(declare-fun b!7836669 () Bool)

(assert (=> b!7836669 (= e!4633976 (or (not (= (t!388559 s2Rec!453) Nil!73700)) (= lt!2677859 (++!18021 s1Rec!453 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)))))))

(declare-fun b!7836668 () Bool)

(declare-fun res!3116950 () Bool)

(assert (=> b!7836668 (=> (not res!3116950) (not e!4633976))))

(assert (=> b!7836668 (= res!3116950 (= (size!42777 lt!2677859) (+ (size!42777 (++!18021 s1Rec!453 (Cons!73700 (h!80148 s2Rec!453) Nil!73700))) (size!42777 (t!388559 s2Rec!453)))))))

(declare-fun b!7836667 () Bool)

(assert (=> b!7836667 (= e!4633977 (Cons!73700 (h!80148 (++!18021 s1Rec!453 (Cons!73700 (h!80148 s2Rec!453) Nil!73700))) (++!18021 (t!388559 (++!18021 s1Rec!453 (Cons!73700 (h!80148 s2Rec!453) Nil!73700))) (t!388559 s2Rec!453))))))

(assert (= (and d!2351711 c!1441174) b!7836666))

(assert (= (and d!2351711 (not c!1441174)) b!7836667))

(assert (= (and d!2351711 res!3116951) b!7836668))

(assert (= (and b!7836668 res!3116950) b!7836669))

(declare-fun m!8251572 () Bool)

(assert (=> d!2351711 m!8251572))

(assert (=> d!2351711 m!8250636))

(declare-fun m!8251574 () Bool)

(assert (=> d!2351711 m!8251574))

(assert (=> d!2351711 m!8250856))

(declare-fun m!8251576 () Bool)

(assert (=> b!7836668 m!8251576))

(assert (=> b!7836668 m!8250636))

(declare-fun m!8251578 () Bool)

(assert (=> b!7836668 m!8251578))

(assert (=> b!7836668 m!8250862))

(declare-fun m!8251580 () Bool)

(assert (=> b!7836667 m!8251580))

(assert (=> d!2351315 d!2351711))

(assert (=> d!2351315 d!2351303))

(declare-fun d!2351713 () Bool)

(assert (=> d!2351713 (= (++!18021 (++!18021 s1Rec!453 (Cons!73700 (h!80148 s2Rec!453) Nil!73700)) (t!388559 s2Rec!453)) s!14274)))

(assert (=> d!2351713 true))

(declare-fun _$68!1495 () Unit!168784)

(assert (=> d!2351713 (= (choose!59591 s1Rec!453 (h!80148 s2Rec!453) (t!388559 s2Rec!453) s!14274) _$68!1495)))

(declare-fun bs!1966883 () Bool)

(assert (= bs!1966883 d!2351713))

(assert (=> bs!1966883 m!8250636))

(assert (=> bs!1966883 m!8250636))

(assert (=> bs!1966883 m!8250820))

(assert (=> d!2351315 d!2351713))

(declare-fun b!7836670 () Bool)

(declare-fun e!4633979 () List!73824)

(assert (=> b!7836670 (= e!4633979 (Cons!73700 (h!80148 s2Rec!453) (t!388559 s2Rec!453)))))

(declare-fun d!2351715 () Bool)

(declare-fun e!4633978 () Bool)

(assert (=> d!2351715 e!4633978))

(declare-fun res!3116953 () Bool)

(assert (=> d!2351715 (=> (not res!3116953) (not e!4633978))))

(declare-fun lt!2677860 () List!73824)

(assert (=> d!2351715 (= res!3116953 (= (content!15646 lt!2677860) ((_ map or) (content!15646 s1Rec!453) (content!15646 (Cons!73700 (h!80148 s2Rec!453) (t!388559 s2Rec!453))))))))

(assert (=> d!2351715 (= lt!2677860 e!4633979)))

(declare-fun c!1441175 () Bool)

(assert (=> d!2351715 (= c!1441175 ((_ is Nil!73700) s1Rec!453))))

(assert (=> d!2351715 (= (++!18021 s1Rec!453 (Cons!73700 (h!80148 s2Rec!453) (t!388559 s2Rec!453))) lt!2677860)))

(declare-fun b!7836673 () Bool)

(assert (=> b!7836673 (= e!4633978 (or (not (= (Cons!73700 (h!80148 s2Rec!453) (t!388559 s2Rec!453)) Nil!73700)) (= lt!2677860 s1Rec!453)))))

(declare-fun b!7836672 () Bool)

(declare-fun res!3116952 () Bool)

(assert (=> b!7836672 (=> (not res!3116952) (not e!4633978))))

(assert (=> b!7836672 (= res!3116952 (= (size!42777 lt!2677860) (+ (size!42777 s1Rec!453) (size!42777 (Cons!73700 (h!80148 s2Rec!453) (t!388559 s2Rec!453))))))))

(declare-fun b!7836671 () Bool)

(assert (=> b!7836671 (= e!4633979 (Cons!73700 (h!80148 s1Rec!453) (++!18021 (t!388559 s1Rec!453) (Cons!73700 (h!80148 s2Rec!453) (t!388559 s2Rec!453)))))))

(assert (= (and d!2351715 c!1441175) b!7836670))

(assert (= (and d!2351715 (not c!1441175)) b!7836671))

(assert (= (and d!2351715 res!3116953) b!7836672))

(assert (= (and b!7836672 res!3116952) b!7836673))

(declare-fun m!8251582 () Bool)

(assert (=> d!2351715 m!8251582))

(assert (=> d!2351715 m!8250780))

(declare-fun m!8251584 () Bool)

(assert (=> d!2351715 m!8251584))

(declare-fun m!8251586 () Bool)

(assert (=> b!7836672 m!8251586))

(assert (=> b!7836672 m!8250634))

(declare-fun m!8251588 () Bool)

(assert (=> b!7836672 m!8251588))

(declare-fun m!8251590 () Bool)

(assert (=> b!7836671 m!8251590))

(assert (=> d!2351315 d!2351715))

(assert (=> b!7835851 d!2351543))

(assert (=> b!7835851 d!2351623))

(declare-fun b!7836676 () Bool)

(declare-fun e!4633982 () Bool)

(assert (=> b!7836676 (= e!4633982 (isPrefix!6337 (tail!15535 (tail!15535 s1!4101)) (tail!15535 (tail!15535 lt!2677704))))))

(declare-fun b!7836675 () Bool)

(declare-fun res!3116956 () Bool)

(assert (=> b!7836675 (=> (not res!3116956) (not e!4633982))))

(assert (=> b!7836675 (= res!3116956 (= (head!15994 (tail!15535 s1!4101)) (head!15994 (tail!15535 lt!2677704))))))

(declare-fun b!7836674 () Bool)

(declare-fun e!4633980 () Bool)

(assert (=> b!7836674 (= e!4633980 e!4633982)))

(declare-fun res!3116957 () Bool)

(assert (=> b!7836674 (=> (not res!3116957) (not e!4633982))))

(assert (=> b!7836674 (= res!3116957 (not ((_ is Nil!73700) (tail!15535 lt!2677704))))))

(declare-fun d!2351717 () Bool)

(declare-fun e!4633981 () Bool)

(assert (=> d!2351717 e!4633981))

(declare-fun res!3116954 () Bool)

(assert (=> d!2351717 (=> res!3116954 e!4633981)))

(declare-fun lt!2677861 () Bool)

(assert (=> d!2351717 (= res!3116954 (not lt!2677861))))

(assert (=> d!2351717 (= lt!2677861 e!4633980)))

(declare-fun res!3116955 () Bool)

(assert (=> d!2351717 (=> res!3116955 e!4633980)))

(assert (=> d!2351717 (= res!3116955 ((_ is Nil!73700) (tail!15535 s1!4101)))))

(assert (=> d!2351717 (= (isPrefix!6337 (tail!15535 s1!4101) (tail!15535 lt!2677704)) lt!2677861)))

(declare-fun b!7836677 () Bool)

(assert (=> b!7836677 (= e!4633981 (>= (size!42777 (tail!15535 lt!2677704)) (size!42777 (tail!15535 s1!4101))))))

(assert (= (and d!2351717 (not res!3116955)) b!7836674))

(assert (= (and b!7836674 res!3116957) b!7836675))

(assert (= (and b!7836675 res!3116956) b!7836676))

(assert (= (and d!2351717 (not res!3116954)) b!7836677))

(assert (=> b!7836676 m!8250668))

(assert (=> b!7836676 m!8251518))

(assert (=> b!7836676 m!8250762))

(declare-fun m!8251592 () Bool)

(assert (=> b!7836676 m!8251592))

(assert (=> b!7836676 m!8251518))

(assert (=> b!7836676 m!8251592))

(declare-fun m!8251594 () Bool)

(assert (=> b!7836676 m!8251594))

(assert (=> b!7836675 m!8250668))

(assert (=> b!7836675 m!8251522))

(assert (=> b!7836675 m!8250762))

(declare-fun m!8251596 () Bool)

(assert (=> b!7836675 m!8251596))

(assert (=> b!7836677 m!8250762))

(declare-fun m!8251598 () Bool)

(assert (=> b!7836677 m!8251598))

(assert (=> b!7836677 m!8250668))

(assert (=> b!7836677 m!8251524))

(assert (=> b!7835640 d!2351717))

(assert (=> b!7835640 d!2351551))

(declare-fun d!2351719 () Bool)

(assert (=> d!2351719 (= (tail!15535 lt!2677704) (t!388559 lt!2677704))))

(assert (=> b!7835640 d!2351719))

(declare-fun b!7836678 () Bool)

(declare-fun e!4633984 () Bool)

(declare-fun e!4633989 () Bool)

(assert (=> b!7836678 (= e!4633984 e!4633989)))

(declare-fun res!3116960 () Bool)

(assert (=> b!7836678 (=> (not res!3116960) (not e!4633989))))

(declare-fun call!726532 () Bool)

(assert (=> b!7836678 (= res!3116960 call!726532)))

(declare-fun b!7836679 () Bool)

(declare-fun call!726533 () Bool)

(assert (=> b!7836679 (= e!4633989 call!726533)))

(declare-fun b!7836681 () Bool)

(declare-fun e!4633986 () Bool)

(assert (=> b!7836681 (= e!4633986 call!726532)))

(declare-fun b!7836682 () Bool)

(declare-fun e!4633983 () Bool)

(declare-fun e!4633987 () Bool)

(assert (=> b!7836682 (= e!4633983 e!4633987)))

(declare-fun c!1441177 () Bool)

(assert (=> b!7836682 (= c!1441177 ((_ is Union!20987) (ite c!1441009 (regOne!42487 r2!6199) (regTwo!42486 r2!6199))))))

(declare-fun bm!726527 () Bool)

(assert (=> bm!726527 (= call!726533 (validRegex!11401 (ite c!1441177 (regOne!42487 (ite c!1441009 (regOne!42487 r2!6199) (regTwo!42486 r2!6199))) (regTwo!42486 (ite c!1441009 (regOne!42487 r2!6199) (regTwo!42486 r2!6199))))))))

(declare-fun b!7836683 () Bool)

(declare-fun e!4633985 () Bool)

(assert (=> b!7836683 (= e!4633985 e!4633983)))

(declare-fun c!1441176 () Bool)

(assert (=> b!7836683 (= c!1441176 ((_ is Star!20987) (ite c!1441009 (regOne!42487 r2!6199) (regTwo!42486 r2!6199))))))

(declare-fun b!7836684 () Bool)

(declare-fun res!3116961 () Bool)

(assert (=> b!7836684 (=> (not res!3116961) (not e!4633986))))

(assert (=> b!7836684 (= res!3116961 call!726533)))

(assert (=> b!7836684 (= e!4633987 e!4633986)))

(declare-fun b!7836685 () Bool)

(declare-fun e!4633988 () Bool)

(assert (=> b!7836685 (= e!4633983 e!4633988)))

(declare-fun res!3116958 () Bool)

(assert (=> b!7836685 (= res!3116958 (not (nullable!9305 (reg!21316 (ite c!1441009 (regOne!42487 r2!6199) (regTwo!42486 r2!6199))))))))

(assert (=> b!7836685 (=> (not res!3116958) (not e!4633988))))

(declare-fun bm!726528 () Bool)

(declare-fun call!726534 () Bool)

(assert (=> bm!726528 (= call!726532 call!726534)))

(declare-fun b!7836680 () Bool)

(declare-fun res!3116959 () Bool)

(assert (=> b!7836680 (=> res!3116959 e!4633984)))

(assert (=> b!7836680 (= res!3116959 (not ((_ is Concat!29832) (ite c!1441009 (regOne!42487 r2!6199) (regTwo!42486 r2!6199)))))))

(assert (=> b!7836680 (= e!4633987 e!4633984)))

(declare-fun d!2351721 () Bool)

(declare-fun res!3116962 () Bool)

(assert (=> d!2351721 (=> res!3116962 e!4633985)))

(assert (=> d!2351721 (= res!3116962 ((_ is ElementMatch!20987) (ite c!1441009 (regOne!42487 r2!6199) (regTwo!42486 r2!6199))))))

(assert (=> d!2351721 (= (validRegex!11401 (ite c!1441009 (regOne!42487 r2!6199) (regTwo!42486 r2!6199))) e!4633985)))

(declare-fun b!7836686 () Bool)

(assert (=> b!7836686 (= e!4633988 call!726534)))

(declare-fun bm!726529 () Bool)

(assert (=> bm!726529 (= call!726534 (validRegex!11401 (ite c!1441176 (reg!21316 (ite c!1441009 (regOne!42487 r2!6199) (regTwo!42486 r2!6199))) (ite c!1441177 (regTwo!42487 (ite c!1441009 (regOne!42487 r2!6199) (regTwo!42486 r2!6199))) (regOne!42486 (ite c!1441009 (regOne!42487 r2!6199) (regTwo!42486 r2!6199)))))))))

(assert (= (and d!2351721 (not res!3116962)) b!7836683))

(assert (= (and b!7836683 c!1441176) b!7836685))

(assert (= (and b!7836683 (not c!1441176)) b!7836682))

(assert (= (and b!7836685 res!3116958) b!7836686))

(assert (= (and b!7836682 c!1441177) b!7836684))

(assert (= (and b!7836682 (not c!1441177)) b!7836680))

(assert (= (and b!7836684 res!3116961) b!7836681))

(assert (= (and b!7836680 (not res!3116959)) b!7836678))

(assert (= (and b!7836678 res!3116960) b!7836679))

(assert (= (or b!7836681 b!7836678) bm!726528))

(assert (= (or b!7836684 b!7836679) bm!726527))

(assert (= (or b!7836686 bm!726528) bm!726529))

(declare-fun m!8251600 () Bool)

(assert (=> bm!726527 m!8251600))

(declare-fun m!8251602 () Bool)

(assert (=> b!7836685 m!8251602))

(declare-fun m!8251604 () Bool)

(assert (=> bm!726529 m!8251604))

(assert (=> bm!726446 d!2351721))

(assert (=> b!7835885 d!2351705))

(assert (=> b!7835885 d!2351629))

(assert (=> bm!726419 d!2351671))

(assert (=> b!7835866 d!2351677))

(assert (=> b!7835866 d!2351661))

(declare-fun d!2351723 () Bool)

(declare-fun lt!2677862 () Int)

(assert (=> d!2351723 (>= lt!2677862 0)))

(declare-fun e!4633990 () Int)

(assert (=> d!2351723 (= lt!2677862 e!4633990)))

(declare-fun c!1441178 () Bool)

(assert (=> d!2351723 (= c!1441178 ((_ is Nil!73700) lt!2677766))))

(assert (=> d!2351723 (= (size!42777 lt!2677766) lt!2677862)))

(declare-fun b!7836687 () Bool)

(assert (=> b!7836687 (= e!4633990 0)))

(declare-fun b!7836688 () Bool)

(assert (=> b!7836688 (= e!4633990 (+ 1 (size!42777 (t!388559 lt!2677766))))))

(assert (= (and d!2351723 c!1441178) b!7836687))

(assert (= (and d!2351723 (not c!1441178)) b!7836688))

(declare-fun m!8251606 () Bool)

(assert (=> b!7836688 m!8251606))

(assert (=> b!7835735 d!2351723))

(assert (=> b!7835735 d!2351313))

(declare-fun d!2351725 () Bool)

(declare-fun lt!2677863 () Int)

(assert (=> d!2351725 (>= lt!2677863 0)))

(declare-fun e!4633991 () Int)

(assert (=> d!2351725 (= lt!2677863 e!4633991)))

(declare-fun c!1441179 () Bool)

(assert (=> d!2351725 (= c!1441179 ((_ is Nil!73700) s2Rec!453))))

(assert (=> d!2351725 (= (size!42777 s2Rec!453) lt!2677863)))

(declare-fun b!7836689 () Bool)

(assert (=> b!7836689 (= e!4633991 0)))

(declare-fun b!7836690 () Bool)

(assert (=> b!7836690 (= e!4633991 (+ 1 (size!42777 (t!388559 s2Rec!453))))))

(assert (= (and d!2351725 c!1441179) b!7836689))

(assert (= (and d!2351725 (not c!1441179)) b!7836690))

(assert (=> b!7836690 m!8250862))

(assert (=> b!7835735 d!2351725))

(declare-fun d!2351727 () Bool)

(declare-fun lt!2677864 () Int)

(assert (=> d!2351727 (>= lt!2677864 0)))

(declare-fun e!4633992 () Int)

(assert (=> d!2351727 (= lt!2677864 e!4633992)))

(declare-fun c!1441180 () Bool)

(assert (=> d!2351727 (= c!1441180 ((_ is Nil!73700) (t!388559 s1Rec!453)))))

(assert (=> d!2351727 (= (size!42777 (t!388559 s1Rec!453)) lt!2677864)))

(declare-fun b!7836691 () Bool)

(assert (=> b!7836691 (= e!4633992 0)))

(declare-fun b!7836692 () Bool)

(assert (=> b!7836692 (= e!4633992 (+ 1 (size!42777 (t!388559 (t!388559 s1Rec!453)))))))

(assert (= (and d!2351727 c!1441180) b!7836691))

(assert (= (and d!2351727 (not c!1441180)) b!7836692))

(declare-fun m!8251608 () Bool)

(assert (=> b!7836692 m!8251608))

(assert (=> b!7835674 d!2351727))

(assert (=> b!7835883 d!2351541))

(declare-fun b!7836693 () Bool)

(declare-fun e!4633993 () Bool)

(declare-fun tp!2318311 () Bool)

(assert (=> b!7836693 (= e!4633993 (and tp_is_empty!52329 tp!2318311))))

(assert (=> b!7835899 (= tp!2317993 e!4633993)))

(assert (= (and b!7835899 ((_ is Cons!73700) (t!388559 (t!388559 s2Rec!453)))) b!7836693))

(declare-fun b!7836694 () Bool)

(declare-fun e!4633994 () Bool)

(declare-fun tp!2318312 () Bool)

(assert (=> b!7836694 (= e!4633994 (and tp_is_empty!52329 tp!2318312))))

(assert (=> b!7835931 (= tp!2318030 e!4633994)))

(assert (= (and b!7835931 ((_ is Cons!73700) (t!388559 (t!388559 s1Rec!453)))) b!7836694))

(declare-fun b!7836695 () Bool)

(declare-fun e!4633995 () Bool)

(declare-fun tp!2318313 () Bool)

(assert (=> b!7836695 (= e!4633995 (and tp_is_empty!52329 tp!2318313))))

(assert (=> b!7835898 (= tp!2317992 e!4633995)))

(assert (= (and b!7835898 ((_ is Cons!73700) (t!388559 (t!388559 s2!3721)))) b!7836695))

(declare-fun b!7836698 () Bool)

(declare-fun e!4633996 () Bool)

(declare-fun tp!2318318 () Bool)

(assert (=> b!7836698 (= e!4633996 tp!2318318)))

(declare-fun b!7836697 () Bool)

(declare-fun tp!2318315 () Bool)

(declare-fun tp!2318314 () Bool)

(assert (=> b!7836697 (= e!4633996 (and tp!2318315 tp!2318314))))

(assert (=> b!7835939 (= tp!2318038 e!4633996)))

(declare-fun b!7836699 () Bool)

(declare-fun tp!2318316 () Bool)

(declare-fun tp!2318317 () Bool)

(assert (=> b!7836699 (= e!4633996 (and tp!2318316 tp!2318317))))

(declare-fun b!7836696 () Bool)

(assert (=> b!7836696 (= e!4633996 tp_is_empty!52329)))

(assert (= (and b!7835939 ((_ is ElementMatch!20987) (regOne!42487 (regTwo!42486 r2!6199)))) b!7836696))

(assert (= (and b!7835939 ((_ is Concat!29832) (regOne!42487 (regTwo!42486 r2!6199)))) b!7836697))

(assert (= (and b!7835939 ((_ is Star!20987) (regOne!42487 (regTwo!42486 r2!6199)))) b!7836698))

(assert (= (and b!7835939 ((_ is Union!20987) (regOne!42487 (regTwo!42486 r2!6199)))) b!7836699))

(declare-fun b!7836702 () Bool)

(declare-fun e!4633997 () Bool)

(declare-fun tp!2318323 () Bool)

(assert (=> b!7836702 (= e!4633997 tp!2318323)))

(declare-fun b!7836701 () Bool)

(declare-fun tp!2318320 () Bool)

(declare-fun tp!2318319 () Bool)

(assert (=> b!7836701 (= e!4633997 (and tp!2318320 tp!2318319))))

(assert (=> b!7835939 (= tp!2318039 e!4633997)))

(declare-fun b!7836703 () Bool)

(declare-fun tp!2318321 () Bool)

(declare-fun tp!2318322 () Bool)

(assert (=> b!7836703 (= e!4633997 (and tp!2318321 tp!2318322))))

(declare-fun b!7836700 () Bool)

(assert (=> b!7836700 (= e!4633997 tp_is_empty!52329)))

(assert (= (and b!7835939 ((_ is ElementMatch!20987) (regTwo!42487 (regTwo!42486 r2!6199)))) b!7836700))

(assert (= (and b!7835939 ((_ is Concat!29832) (regTwo!42487 (regTwo!42486 r2!6199)))) b!7836701))

(assert (= (and b!7835939 ((_ is Star!20987) (regTwo!42487 (regTwo!42486 r2!6199)))) b!7836702))

(assert (= (and b!7835939 ((_ is Union!20987) (regTwo!42487 (regTwo!42486 r2!6199)))) b!7836703))

(declare-fun b!7836706 () Bool)

(declare-fun e!4633998 () Bool)

(declare-fun tp!2318328 () Bool)

(assert (=> b!7836706 (= e!4633998 tp!2318328)))

(declare-fun b!7836705 () Bool)

(declare-fun tp!2318325 () Bool)

(declare-fun tp!2318324 () Bool)

(assert (=> b!7836705 (= e!4633998 (and tp!2318325 tp!2318324))))

(assert (=> b!7835922 (= tp!2318017 e!4633998)))

(declare-fun b!7836707 () Bool)

(declare-fun tp!2318326 () Bool)

(declare-fun tp!2318327 () Bool)

(assert (=> b!7836707 (= e!4633998 (and tp!2318326 tp!2318327))))

(declare-fun b!7836704 () Bool)

(assert (=> b!7836704 (= e!4633998 tp_is_empty!52329)))

(assert (= (and b!7835922 ((_ is ElementMatch!20987) (regOne!42487 (regOne!42487 r1!6261)))) b!7836704))

(assert (= (and b!7835922 ((_ is Concat!29832) (regOne!42487 (regOne!42487 r1!6261)))) b!7836705))

(assert (= (and b!7835922 ((_ is Star!20987) (regOne!42487 (regOne!42487 r1!6261)))) b!7836706))

(assert (= (and b!7835922 ((_ is Union!20987) (regOne!42487 (regOne!42487 r1!6261)))) b!7836707))

(declare-fun b!7836710 () Bool)

(declare-fun e!4633999 () Bool)

(declare-fun tp!2318333 () Bool)

(assert (=> b!7836710 (= e!4633999 tp!2318333)))

(declare-fun b!7836709 () Bool)

(declare-fun tp!2318330 () Bool)

(declare-fun tp!2318329 () Bool)

(assert (=> b!7836709 (= e!4633999 (and tp!2318330 tp!2318329))))

(assert (=> b!7835922 (= tp!2318018 e!4633999)))

(declare-fun b!7836711 () Bool)

(declare-fun tp!2318331 () Bool)

(declare-fun tp!2318332 () Bool)

(assert (=> b!7836711 (= e!4633999 (and tp!2318331 tp!2318332))))

(declare-fun b!7836708 () Bool)

(assert (=> b!7836708 (= e!4633999 tp_is_empty!52329)))

(assert (= (and b!7835922 ((_ is ElementMatch!20987) (regTwo!42487 (regOne!42487 r1!6261)))) b!7836708))

(assert (= (and b!7835922 ((_ is Concat!29832) (regTwo!42487 (regOne!42487 r1!6261)))) b!7836709))

(assert (= (and b!7835922 ((_ is Star!20987) (regTwo!42487 (regOne!42487 r1!6261)))) b!7836710))

(assert (= (and b!7835922 ((_ is Union!20987) (regTwo!42487 (regOne!42487 r1!6261)))) b!7836711))

(declare-fun b!7836712 () Bool)

(declare-fun e!4634000 () Bool)

(declare-fun tp!2318334 () Bool)

(assert (=> b!7836712 (= e!4634000 (and tp_is_empty!52329 tp!2318334))))

(assert (=> b!7835897 (= tp!2317991 e!4634000)))

(assert (= (and b!7835897 ((_ is Cons!73700) (t!388559 (t!388559 s1!4101)))) b!7836712))

(declare-fun b!7836715 () Bool)

(declare-fun e!4634001 () Bool)

(declare-fun tp!2318339 () Bool)

(assert (=> b!7836715 (= e!4634001 tp!2318339)))

(declare-fun b!7836714 () Bool)

(declare-fun tp!2318336 () Bool)

(declare-fun tp!2318335 () Bool)

(assert (=> b!7836714 (= e!4634001 (and tp!2318336 tp!2318335))))

(assert (=> b!7835947 (= tp!2318048 e!4634001)))

(declare-fun b!7836716 () Bool)

(declare-fun tp!2318337 () Bool)

(declare-fun tp!2318338 () Bool)

(assert (=> b!7836716 (= e!4634001 (and tp!2318337 tp!2318338))))

(declare-fun b!7836713 () Bool)

(assert (=> b!7836713 (= e!4634001 tp_is_empty!52329)))

(assert (= (and b!7835947 ((_ is ElementMatch!20987) (regOne!42487 (regOne!42486 r1!6261)))) b!7836713))

(assert (= (and b!7835947 ((_ is Concat!29832) (regOne!42487 (regOne!42486 r1!6261)))) b!7836714))

(assert (= (and b!7835947 ((_ is Star!20987) (regOne!42487 (regOne!42486 r1!6261)))) b!7836715))

(assert (= (and b!7835947 ((_ is Union!20987) (regOne!42487 (regOne!42486 r1!6261)))) b!7836716))

(declare-fun b!7836719 () Bool)

(declare-fun e!4634002 () Bool)

(declare-fun tp!2318344 () Bool)

(assert (=> b!7836719 (= e!4634002 tp!2318344)))

(declare-fun b!7836718 () Bool)

(declare-fun tp!2318341 () Bool)

(declare-fun tp!2318340 () Bool)

(assert (=> b!7836718 (= e!4634002 (and tp!2318341 tp!2318340))))

(assert (=> b!7835947 (= tp!2318049 e!4634002)))

(declare-fun b!7836720 () Bool)

(declare-fun tp!2318342 () Bool)

(declare-fun tp!2318343 () Bool)

(assert (=> b!7836720 (= e!4634002 (and tp!2318342 tp!2318343))))

(declare-fun b!7836717 () Bool)

(assert (=> b!7836717 (= e!4634002 tp_is_empty!52329)))

(assert (= (and b!7835947 ((_ is ElementMatch!20987) (regTwo!42487 (regOne!42486 r1!6261)))) b!7836717))

(assert (= (and b!7835947 ((_ is Concat!29832) (regTwo!42487 (regOne!42486 r1!6261)))) b!7836718))

(assert (= (and b!7835947 ((_ is Star!20987) (regTwo!42487 (regOne!42486 r1!6261)))) b!7836719))

(assert (= (and b!7835947 ((_ is Union!20987) (regTwo!42487 (regOne!42486 r1!6261)))) b!7836720))

(declare-fun b!7836723 () Bool)

(declare-fun e!4634003 () Bool)

(declare-fun tp!2318349 () Bool)

(assert (=> b!7836723 (= e!4634003 tp!2318349)))

(declare-fun b!7836722 () Bool)

(declare-fun tp!2318346 () Bool)

(declare-fun tp!2318345 () Bool)

(assert (=> b!7836722 (= e!4634003 (and tp!2318346 tp!2318345))))

(assert (=> b!7835921 (= tp!2318019 e!4634003)))

(declare-fun b!7836724 () Bool)

(declare-fun tp!2318347 () Bool)

(declare-fun tp!2318348 () Bool)

(assert (=> b!7836724 (= e!4634003 (and tp!2318347 tp!2318348))))

(declare-fun b!7836721 () Bool)

(assert (=> b!7836721 (= e!4634003 tp_is_empty!52329)))

(assert (= (and b!7835921 ((_ is ElementMatch!20987) (reg!21316 (regOne!42487 r1!6261)))) b!7836721))

(assert (= (and b!7835921 ((_ is Concat!29832) (reg!21316 (regOne!42487 r1!6261)))) b!7836722))

(assert (= (and b!7835921 ((_ is Star!20987) (reg!21316 (regOne!42487 r1!6261)))) b!7836723))

(assert (= (and b!7835921 ((_ is Union!20987) (reg!21316 (regOne!42487 r1!6261)))) b!7836724))

(declare-fun b!7836727 () Bool)

(declare-fun e!4634004 () Bool)

(declare-fun tp!2318354 () Bool)

(assert (=> b!7836727 (= e!4634004 tp!2318354)))

(declare-fun b!7836726 () Bool)

(declare-fun tp!2318351 () Bool)

(declare-fun tp!2318350 () Bool)

(assert (=> b!7836726 (= e!4634004 (and tp!2318351 tp!2318350))))

(assert (=> b!7835938 (= tp!2318040 e!4634004)))

(declare-fun b!7836728 () Bool)

(declare-fun tp!2318352 () Bool)

(declare-fun tp!2318353 () Bool)

(assert (=> b!7836728 (= e!4634004 (and tp!2318352 tp!2318353))))

(declare-fun b!7836725 () Bool)

(assert (=> b!7836725 (= e!4634004 tp_is_empty!52329)))

(assert (= (and b!7835938 ((_ is ElementMatch!20987) (reg!21316 (regTwo!42486 r2!6199)))) b!7836725))

(assert (= (and b!7835938 ((_ is Concat!29832) (reg!21316 (regTwo!42486 r2!6199)))) b!7836726))

(assert (= (and b!7835938 ((_ is Star!20987) (reg!21316 (regTwo!42486 r2!6199)))) b!7836727))

(assert (= (and b!7835938 ((_ is Union!20987) (reg!21316 (regTwo!42486 r2!6199)))) b!7836728))

(declare-fun b!7836731 () Bool)

(declare-fun e!4634005 () Bool)

(declare-fun tp!2318359 () Bool)

(assert (=> b!7836731 (= e!4634005 tp!2318359)))

(declare-fun b!7836730 () Bool)

(declare-fun tp!2318356 () Bool)

(declare-fun tp!2318355 () Bool)

(assert (=> b!7836730 (= e!4634005 (and tp!2318356 tp!2318355))))

(assert (=> b!7835937 (= tp!2318037 e!4634005)))

(declare-fun b!7836732 () Bool)

(declare-fun tp!2318357 () Bool)

(declare-fun tp!2318358 () Bool)

(assert (=> b!7836732 (= e!4634005 (and tp!2318357 tp!2318358))))

(declare-fun b!7836729 () Bool)

(assert (=> b!7836729 (= e!4634005 tp_is_empty!52329)))

(assert (= (and b!7835937 ((_ is ElementMatch!20987) (regOne!42486 (regTwo!42486 r2!6199)))) b!7836729))

(assert (= (and b!7835937 ((_ is Concat!29832) (regOne!42486 (regTwo!42486 r2!6199)))) b!7836730))

(assert (= (and b!7835937 ((_ is Star!20987) (regOne!42486 (regTwo!42486 r2!6199)))) b!7836731))

(assert (= (and b!7835937 ((_ is Union!20987) (regOne!42486 (regTwo!42486 r2!6199)))) b!7836732))

(declare-fun b!7836735 () Bool)

(declare-fun e!4634006 () Bool)

(declare-fun tp!2318364 () Bool)

(assert (=> b!7836735 (= e!4634006 tp!2318364)))

(declare-fun b!7836734 () Bool)

(declare-fun tp!2318361 () Bool)

(declare-fun tp!2318360 () Bool)

(assert (=> b!7836734 (= e!4634006 (and tp!2318361 tp!2318360))))

(assert (=> b!7835937 (= tp!2318036 e!4634006)))

(declare-fun b!7836736 () Bool)

(declare-fun tp!2318362 () Bool)

(declare-fun tp!2318363 () Bool)

(assert (=> b!7836736 (= e!4634006 (and tp!2318362 tp!2318363))))

(declare-fun b!7836733 () Bool)

(assert (=> b!7836733 (= e!4634006 tp_is_empty!52329)))

(assert (= (and b!7835937 ((_ is ElementMatch!20987) (regTwo!42486 (regTwo!42486 r2!6199)))) b!7836733))

(assert (= (and b!7835937 ((_ is Concat!29832) (regTwo!42486 (regTwo!42486 r2!6199)))) b!7836734))

(assert (= (and b!7835937 ((_ is Star!20987) (regTwo!42486 (regTwo!42486 r2!6199)))) b!7836735))

(assert (= (and b!7835937 ((_ is Union!20987) (regTwo!42486 (regTwo!42486 r2!6199)))) b!7836736))

(declare-fun b!7836739 () Bool)

(declare-fun e!4634007 () Bool)

(declare-fun tp!2318369 () Bool)

(assert (=> b!7836739 (= e!4634007 tp!2318369)))

(declare-fun b!7836738 () Bool)

(declare-fun tp!2318366 () Bool)

(declare-fun tp!2318365 () Bool)

(assert (=> b!7836738 (= e!4634007 (and tp!2318366 tp!2318365))))

(assert (=> b!7835913 (= tp!2318006 e!4634007)))

(declare-fun b!7836740 () Bool)

(declare-fun tp!2318367 () Bool)

(declare-fun tp!2318368 () Bool)

(assert (=> b!7836740 (= e!4634007 (and tp!2318367 tp!2318368))))

(declare-fun b!7836737 () Bool)

(assert (=> b!7836737 (= e!4634007 tp_is_empty!52329)))

(assert (= (and b!7835913 ((_ is ElementMatch!20987) (regOne!42487 (regOne!42487 r2!6199)))) b!7836737))

(assert (= (and b!7835913 ((_ is Concat!29832) (regOne!42487 (regOne!42487 r2!6199)))) b!7836738))

(assert (= (and b!7835913 ((_ is Star!20987) (regOne!42487 (regOne!42487 r2!6199)))) b!7836739))

(assert (= (and b!7835913 ((_ is Union!20987) (regOne!42487 (regOne!42487 r2!6199)))) b!7836740))

(declare-fun b!7836743 () Bool)

(declare-fun e!4634008 () Bool)

(declare-fun tp!2318374 () Bool)

(assert (=> b!7836743 (= e!4634008 tp!2318374)))

(declare-fun b!7836742 () Bool)

(declare-fun tp!2318371 () Bool)

(declare-fun tp!2318370 () Bool)

(assert (=> b!7836742 (= e!4634008 (and tp!2318371 tp!2318370))))

(assert (=> b!7835913 (= tp!2318007 e!4634008)))

(declare-fun b!7836744 () Bool)

(declare-fun tp!2318372 () Bool)

(declare-fun tp!2318373 () Bool)

(assert (=> b!7836744 (= e!4634008 (and tp!2318372 tp!2318373))))

(declare-fun b!7836741 () Bool)

(assert (=> b!7836741 (= e!4634008 tp_is_empty!52329)))

(assert (= (and b!7835913 ((_ is ElementMatch!20987) (regTwo!42487 (regOne!42487 r2!6199)))) b!7836741))

(assert (= (and b!7835913 ((_ is Concat!29832) (regTwo!42487 (regOne!42487 r2!6199)))) b!7836742))

(assert (= (and b!7835913 ((_ is Star!20987) (regTwo!42487 (regOne!42487 r2!6199)))) b!7836743))

(assert (= (and b!7835913 ((_ is Union!20987) (regTwo!42487 (regOne!42487 r2!6199)))) b!7836744))

(declare-fun b!7836747 () Bool)

(declare-fun e!4634009 () Bool)

(declare-fun tp!2318379 () Bool)

(assert (=> b!7836747 (= e!4634009 tp!2318379)))

(declare-fun b!7836746 () Bool)

(declare-fun tp!2318376 () Bool)

(declare-fun tp!2318375 () Bool)

(assert (=> b!7836746 (= e!4634009 (and tp!2318376 tp!2318375))))

(assert (=> b!7835930 (= tp!2318027 e!4634009)))

(declare-fun b!7836748 () Bool)

(declare-fun tp!2318377 () Bool)

(declare-fun tp!2318378 () Bool)

(assert (=> b!7836748 (= e!4634009 (and tp!2318377 tp!2318378))))

(declare-fun b!7836745 () Bool)

(assert (=> b!7836745 (= e!4634009 tp_is_empty!52329)))

(assert (= (and b!7835930 ((_ is ElementMatch!20987) (regOne!42487 (reg!21316 r2!6199)))) b!7836745))

(assert (= (and b!7835930 ((_ is Concat!29832) (regOne!42487 (reg!21316 r2!6199)))) b!7836746))

(assert (= (and b!7835930 ((_ is Star!20987) (regOne!42487 (reg!21316 r2!6199)))) b!7836747))

(assert (= (and b!7835930 ((_ is Union!20987) (regOne!42487 (reg!21316 r2!6199)))) b!7836748))

(declare-fun b!7836751 () Bool)

(declare-fun e!4634010 () Bool)

(declare-fun tp!2318384 () Bool)

(assert (=> b!7836751 (= e!4634010 tp!2318384)))

(declare-fun b!7836750 () Bool)

(declare-fun tp!2318381 () Bool)

(declare-fun tp!2318380 () Bool)

(assert (=> b!7836750 (= e!4634010 (and tp!2318381 tp!2318380))))

(assert (=> b!7835930 (= tp!2318028 e!4634010)))

(declare-fun b!7836752 () Bool)

(declare-fun tp!2318382 () Bool)

(declare-fun tp!2318383 () Bool)

(assert (=> b!7836752 (= e!4634010 (and tp!2318382 tp!2318383))))

(declare-fun b!7836749 () Bool)

(assert (=> b!7836749 (= e!4634010 tp_is_empty!52329)))

(assert (= (and b!7835930 ((_ is ElementMatch!20987) (regTwo!42487 (reg!21316 r2!6199)))) b!7836749))

(assert (= (and b!7835930 ((_ is Concat!29832) (regTwo!42487 (reg!21316 r2!6199)))) b!7836750))

(assert (= (and b!7835930 ((_ is Star!20987) (regTwo!42487 (reg!21316 r2!6199)))) b!7836751))

(assert (= (and b!7835930 ((_ is Union!20987) (regTwo!42487 (reg!21316 r2!6199)))) b!7836752))

(declare-fun b!7836755 () Bool)

(declare-fun e!4634011 () Bool)

(declare-fun tp!2318389 () Bool)

(assert (=> b!7836755 (= e!4634011 tp!2318389)))

(declare-fun b!7836754 () Bool)

(declare-fun tp!2318386 () Bool)

(declare-fun tp!2318385 () Bool)

(assert (=> b!7836754 (= e!4634011 (and tp!2318386 tp!2318385))))

(assert (=> b!7835929 (= tp!2318029 e!4634011)))

(declare-fun b!7836756 () Bool)

(declare-fun tp!2318387 () Bool)

(declare-fun tp!2318388 () Bool)

(assert (=> b!7836756 (= e!4634011 (and tp!2318387 tp!2318388))))

(declare-fun b!7836753 () Bool)

(assert (=> b!7836753 (= e!4634011 tp_is_empty!52329)))

(assert (= (and b!7835929 ((_ is ElementMatch!20987) (reg!21316 (reg!21316 r2!6199)))) b!7836753))

(assert (= (and b!7835929 ((_ is Concat!29832) (reg!21316 (reg!21316 r2!6199)))) b!7836754))

(assert (= (and b!7835929 ((_ is Star!20987) (reg!21316 (reg!21316 r2!6199)))) b!7836755))

(assert (= (and b!7835929 ((_ is Union!20987) (reg!21316 (reg!21316 r2!6199)))) b!7836756))

(declare-fun b!7836759 () Bool)

(declare-fun e!4634012 () Bool)

(declare-fun tp!2318394 () Bool)

(assert (=> b!7836759 (= e!4634012 tp!2318394)))

(declare-fun b!7836758 () Bool)

(declare-fun tp!2318391 () Bool)

(declare-fun tp!2318390 () Bool)

(assert (=> b!7836758 (= e!4634012 (and tp!2318391 tp!2318390))))

(assert (=> b!7835946 (= tp!2318050 e!4634012)))

(declare-fun b!7836760 () Bool)

(declare-fun tp!2318392 () Bool)

(declare-fun tp!2318393 () Bool)

(assert (=> b!7836760 (= e!4634012 (and tp!2318392 tp!2318393))))

(declare-fun b!7836757 () Bool)

(assert (=> b!7836757 (= e!4634012 tp_is_empty!52329)))

(assert (= (and b!7835946 ((_ is ElementMatch!20987) (reg!21316 (regOne!42486 r1!6261)))) b!7836757))

(assert (= (and b!7835946 ((_ is Concat!29832) (reg!21316 (regOne!42486 r1!6261)))) b!7836758))

(assert (= (and b!7835946 ((_ is Star!20987) (reg!21316 (regOne!42486 r1!6261)))) b!7836759))

(assert (= (and b!7835946 ((_ is Union!20987) (reg!21316 (regOne!42486 r1!6261)))) b!7836760))

(declare-fun b!7836763 () Bool)

(declare-fun e!4634013 () Bool)

(declare-fun tp!2318399 () Bool)

(assert (=> b!7836763 (= e!4634013 tp!2318399)))

(declare-fun b!7836762 () Bool)

(declare-fun tp!2318396 () Bool)

(declare-fun tp!2318395 () Bool)

(assert (=> b!7836762 (= e!4634013 (and tp!2318396 tp!2318395))))

(assert (=> b!7835920 (= tp!2318016 e!4634013)))

(declare-fun b!7836764 () Bool)

(declare-fun tp!2318397 () Bool)

(declare-fun tp!2318398 () Bool)

(assert (=> b!7836764 (= e!4634013 (and tp!2318397 tp!2318398))))

(declare-fun b!7836761 () Bool)

(assert (=> b!7836761 (= e!4634013 tp_is_empty!52329)))

(assert (= (and b!7835920 ((_ is ElementMatch!20987) (regOne!42486 (regOne!42487 r1!6261)))) b!7836761))

(assert (= (and b!7835920 ((_ is Concat!29832) (regOne!42486 (regOne!42487 r1!6261)))) b!7836762))

(assert (= (and b!7835920 ((_ is Star!20987) (regOne!42486 (regOne!42487 r1!6261)))) b!7836763))

(assert (= (and b!7835920 ((_ is Union!20987) (regOne!42486 (regOne!42487 r1!6261)))) b!7836764))

(declare-fun b!7836767 () Bool)

(declare-fun e!4634014 () Bool)

(declare-fun tp!2318404 () Bool)

(assert (=> b!7836767 (= e!4634014 tp!2318404)))

(declare-fun b!7836766 () Bool)

(declare-fun tp!2318401 () Bool)

(declare-fun tp!2318400 () Bool)

(assert (=> b!7836766 (= e!4634014 (and tp!2318401 tp!2318400))))

(assert (=> b!7835920 (= tp!2318015 e!4634014)))

(declare-fun b!7836768 () Bool)

(declare-fun tp!2318402 () Bool)

(declare-fun tp!2318403 () Bool)

(assert (=> b!7836768 (= e!4634014 (and tp!2318402 tp!2318403))))

(declare-fun b!7836765 () Bool)

(assert (=> b!7836765 (= e!4634014 tp_is_empty!52329)))

(assert (= (and b!7835920 ((_ is ElementMatch!20987) (regTwo!42486 (regOne!42487 r1!6261)))) b!7836765))

(assert (= (and b!7835920 ((_ is Concat!29832) (regTwo!42486 (regOne!42487 r1!6261)))) b!7836766))

(assert (= (and b!7835920 ((_ is Star!20987) (regTwo!42486 (regOne!42487 r1!6261)))) b!7836767))

(assert (= (and b!7835920 ((_ is Union!20987) (regTwo!42486 (regOne!42487 r1!6261)))) b!7836768))

(declare-fun b!7836771 () Bool)

(declare-fun e!4634015 () Bool)

(declare-fun tp!2318409 () Bool)

(assert (=> b!7836771 (= e!4634015 tp!2318409)))

(declare-fun b!7836770 () Bool)

(declare-fun tp!2318406 () Bool)

(declare-fun tp!2318405 () Bool)

(assert (=> b!7836770 (= e!4634015 (and tp!2318406 tp!2318405))))

(assert (=> b!7835945 (= tp!2318047 e!4634015)))

(declare-fun b!7836772 () Bool)

(declare-fun tp!2318407 () Bool)

(declare-fun tp!2318408 () Bool)

(assert (=> b!7836772 (= e!4634015 (and tp!2318407 tp!2318408))))

(declare-fun b!7836769 () Bool)

(assert (=> b!7836769 (= e!4634015 tp_is_empty!52329)))

(assert (= (and b!7835945 ((_ is ElementMatch!20987) (regOne!42486 (regOne!42486 r1!6261)))) b!7836769))

(assert (= (and b!7835945 ((_ is Concat!29832) (regOne!42486 (regOne!42486 r1!6261)))) b!7836770))

(assert (= (and b!7835945 ((_ is Star!20987) (regOne!42486 (regOne!42486 r1!6261)))) b!7836771))

(assert (= (and b!7835945 ((_ is Union!20987) (regOne!42486 (regOne!42486 r1!6261)))) b!7836772))

(declare-fun b!7836775 () Bool)

(declare-fun e!4634016 () Bool)

(declare-fun tp!2318414 () Bool)

(assert (=> b!7836775 (= e!4634016 tp!2318414)))

(declare-fun b!7836774 () Bool)

(declare-fun tp!2318411 () Bool)

(declare-fun tp!2318410 () Bool)

(assert (=> b!7836774 (= e!4634016 (and tp!2318411 tp!2318410))))

(assert (=> b!7835945 (= tp!2318046 e!4634016)))

(declare-fun b!7836776 () Bool)

(declare-fun tp!2318412 () Bool)

(declare-fun tp!2318413 () Bool)

(assert (=> b!7836776 (= e!4634016 (and tp!2318412 tp!2318413))))

(declare-fun b!7836773 () Bool)

(assert (=> b!7836773 (= e!4634016 tp_is_empty!52329)))

(assert (= (and b!7835945 ((_ is ElementMatch!20987) (regTwo!42486 (regOne!42486 r1!6261)))) b!7836773))

(assert (= (and b!7835945 ((_ is Concat!29832) (regTwo!42486 (regOne!42486 r1!6261)))) b!7836774))

(assert (= (and b!7835945 ((_ is Star!20987) (regTwo!42486 (regOne!42486 r1!6261)))) b!7836775))

(assert (= (and b!7835945 ((_ is Union!20987) (regTwo!42486 (regOne!42486 r1!6261)))) b!7836776))

(declare-fun b!7836779 () Bool)

(declare-fun e!4634017 () Bool)

(declare-fun tp!2318419 () Bool)

(assert (=> b!7836779 (= e!4634017 tp!2318419)))

(declare-fun b!7836778 () Bool)

(declare-fun tp!2318416 () Bool)

(declare-fun tp!2318415 () Bool)

(assert (=> b!7836778 (= e!4634017 (and tp!2318416 tp!2318415))))

(assert (=> b!7835912 (= tp!2318008 e!4634017)))

(declare-fun b!7836780 () Bool)

(declare-fun tp!2318417 () Bool)

(declare-fun tp!2318418 () Bool)

(assert (=> b!7836780 (= e!4634017 (and tp!2318417 tp!2318418))))

(declare-fun b!7836777 () Bool)

(assert (=> b!7836777 (= e!4634017 tp_is_empty!52329)))

(assert (= (and b!7835912 ((_ is ElementMatch!20987) (reg!21316 (regOne!42487 r2!6199)))) b!7836777))

(assert (= (and b!7835912 ((_ is Concat!29832) (reg!21316 (regOne!42487 r2!6199)))) b!7836778))

(assert (= (and b!7835912 ((_ is Star!20987) (reg!21316 (regOne!42487 r2!6199)))) b!7836779))

(assert (= (and b!7835912 ((_ is Union!20987) (reg!21316 (regOne!42487 r2!6199)))) b!7836780))

(declare-fun b!7836783 () Bool)

(declare-fun e!4634018 () Bool)

(declare-fun tp!2318424 () Bool)

(assert (=> b!7836783 (= e!4634018 tp!2318424)))

(declare-fun b!7836782 () Bool)

(declare-fun tp!2318421 () Bool)

(declare-fun tp!2318420 () Bool)

(assert (=> b!7836782 (= e!4634018 (and tp!2318421 tp!2318420))))

(assert (=> b!7835911 (= tp!2318005 e!4634018)))

(declare-fun b!7836784 () Bool)

(declare-fun tp!2318422 () Bool)

(declare-fun tp!2318423 () Bool)

(assert (=> b!7836784 (= e!4634018 (and tp!2318422 tp!2318423))))

(declare-fun b!7836781 () Bool)

(assert (=> b!7836781 (= e!4634018 tp_is_empty!52329)))

(assert (= (and b!7835911 ((_ is ElementMatch!20987) (regOne!42486 (regOne!42487 r2!6199)))) b!7836781))

(assert (= (and b!7835911 ((_ is Concat!29832) (regOne!42486 (regOne!42487 r2!6199)))) b!7836782))

(assert (= (and b!7835911 ((_ is Star!20987) (regOne!42486 (regOne!42487 r2!6199)))) b!7836783))

(assert (= (and b!7835911 ((_ is Union!20987) (regOne!42486 (regOne!42487 r2!6199)))) b!7836784))

(declare-fun b!7836787 () Bool)

(declare-fun e!4634019 () Bool)

(declare-fun tp!2318429 () Bool)

(assert (=> b!7836787 (= e!4634019 tp!2318429)))

(declare-fun b!7836786 () Bool)

(declare-fun tp!2318426 () Bool)

(declare-fun tp!2318425 () Bool)

(assert (=> b!7836786 (= e!4634019 (and tp!2318426 tp!2318425))))

(assert (=> b!7835911 (= tp!2318004 e!4634019)))

(declare-fun b!7836788 () Bool)

(declare-fun tp!2318427 () Bool)

(declare-fun tp!2318428 () Bool)

(assert (=> b!7836788 (= e!4634019 (and tp!2318427 tp!2318428))))

(declare-fun b!7836785 () Bool)

(assert (=> b!7836785 (= e!4634019 tp_is_empty!52329)))

(assert (= (and b!7835911 ((_ is ElementMatch!20987) (regTwo!42486 (regOne!42487 r2!6199)))) b!7836785))

(assert (= (and b!7835911 ((_ is Concat!29832) (regTwo!42486 (regOne!42487 r2!6199)))) b!7836786))

(assert (= (and b!7835911 ((_ is Star!20987) (regTwo!42486 (regOne!42487 r2!6199)))) b!7836787))

(assert (= (and b!7835911 ((_ is Union!20987) (regTwo!42486 (regOne!42487 r2!6199)))) b!7836788))

(declare-fun b!7836791 () Bool)

(declare-fun e!4634020 () Bool)

(declare-fun tp!2318434 () Bool)

(assert (=> b!7836791 (= e!4634020 tp!2318434)))

(declare-fun b!7836790 () Bool)

(declare-fun tp!2318431 () Bool)

(declare-fun tp!2318430 () Bool)

(assert (=> b!7836790 (= e!4634020 (and tp!2318431 tp!2318430))))

(assert (=> b!7835928 (= tp!2318026 e!4634020)))

(declare-fun b!7836792 () Bool)

(declare-fun tp!2318432 () Bool)

(declare-fun tp!2318433 () Bool)

(assert (=> b!7836792 (= e!4634020 (and tp!2318432 tp!2318433))))

(declare-fun b!7836789 () Bool)

(assert (=> b!7836789 (= e!4634020 tp_is_empty!52329)))

(assert (= (and b!7835928 ((_ is ElementMatch!20987) (regOne!42486 (reg!21316 r2!6199)))) b!7836789))

(assert (= (and b!7835928 ((_ is Concat!29832) (regOne!42486 (reg!21316 r2!6199)))) b!7836790))

(assert (= (and b!7835928 ((_ is Star!20987) (regOne!42486 (reg!21316 r2!6199)))) b!7836791))

(assert (= (and b!7835928 ((_ is Union!20987) (regOne!42486 (reg!21316 r2!6199)))) b!7836792))

(declare-fun b!7836795 () Bool)

(declare-fun e!4634021 () Bool)

(declare-fun tp!2318439 () Bool)

(assert (=> b!7836795 (= e!4634021 tp!2318439)))

(declare-fun b!7836794 () Bool)

(declare-fun tp!2318436 () Bool)

(declare-fun tp!2318435 () Bool)

(assert (=> b!7836794 (= e!4634021 (and tp!2318436 tp!2318435))))

(assert (=> b!7835928 (= tp!2318025 e!4634021)))

(declare-fun b!7836796 () Bool)

(declare-fun tp!2318437 () Bool)

(declare-fun tp!2318438 () Bool)

(assert (=> b!7836796 (= e!4634021 (and tp!2318437 tp!2318438))))

(declare-fun b!7836793 () Bool)

(assert (=> b!7836793 (= e!4634021 tp_is_empty!52329)))

(assert (= (and b!7835928 ((_ is ElementMatch!20987) (regTwo!42486 (reg!21316 r2!6199)))) b!7836793))

(assert (= (and b!7835928 ((_ is Concat!29832) (regTwo!42486 (reg!21316 r2!6199)))) b!7836794))

(assert (= (and b!7835928 ((_ is Star!20987) (regTwo!42486 (reg!21316 r2!6199)))) b!7836795))

(assert (= (and b!7835928 ((_ is Union!20987) (regTwo!42486 (reg!21316 r2!6199)))) b!7836796))

(declare-fun b!7836799 () Bool)

(declare-fun e!4634022 () Bool)

(declare-fun tp!2318444 () Bool)

(assert (=> b!7836799 (= e!4634022 tp!2318444)))

(declare-fun b!7836798 () Bool)

(declare-fun tp!2318441 () Bool)

(declare-fun tp!2318440 () Bool)

(assert (=> b!7836798 (= e!4634022 (and tp!2318441 tp!2318440))))

(assert (=> b!7835935 (= tp!2318033 e!4634022)))

(declare-fun b!7836800 () Bool)

(declare-fun tp!2318442 () Bool)

(declare-fun tp!2318443 () Bool)

(assert (=> b!7836800 (= e!4634022 (and tp!2318442 tp!2318443))))

(declare-fun b!7836797 () Bool)

(assert (=> b!7836797 (= e!4634022 tp_is_empty!52329)))

(assert (= (and b!7835935 ((_ is ElementMatch!20987) (regOne!42487 (regOne!42486 r2!6199)))) b!7836797))

(assert (= (and b!7835935 ((_ is Concat!29832) (regOne!42487 (regOne!42486 r2!6199)))) b!7836798))

(assert (= (and b!7835935 ((_ is Star!20987) (regOne!42487 (regOne!42486 r2!6199)))) b!7836799))

(assert (= (and b!7835935 ((_ is Union!20987) (regOne!42487 (regOne!42486 r2!6199)))) b!7836800))

(declare-fun b!7836803 () Bool)

(declare-fun e!4634023 () Bool)

(declare-fun tp!2318449 () Bool)

(assert (=> b!7836803 (= e!4634023 tp!2318449)))

(declare-fun b!7836802 () Bool)

(declare-fun tp!2318446 () Bool)

(declare-fun tp!2318445 () Bool)

(assert (=> b!7836802 (= e!4634023 (and tp!2318446 tp!2318445))))

(assert (=> b!7835935 (= tp!2318034 e!4634023)))

(declare-fun b!7836804 () Bool)

(declare-fun tp!2318447 () Bool)

(declare-fun tp!2318448 () Bool)

(assert (=> b!7836804 (= e!4634023 (and tp!2318447 tp!2318448))))

(declare-fun b!7836801 () Bool)

(assert (=> b!7836801 (= e!4634023 tp_is_empty!52329)))

(assert (= (and b!7835935 ((_ is ElementMatch!20987) (regTwo!42487 (regOne!42486 r2!6199)))) b!7836801))

(assert (= (and b!7835935 ((_ is Concat!29832) (regTwo!42487 (regOne!42486 r2!6199)))) b!7836802))

(assert (= (and b!7835935 ((_ is Star!20987) (regTwo!42487 (regOne!42486 r2!6199)))) b!7836803))

(assert (= (and b!7835935 ((_ is Union!20987) (regTwo!42487 (regOne!42486 r2!6199)))) b!7836804))

(declare-fun b!7836805 () Bool)

(declare-fun e!4634024 () Bool)

(declare-fun tp!2318450 () Bool)

(assert (=> b!7836805 (= e!4634024 (and tp_is_empty!52329 tp!2318450))))

(assert (=> b!7835918 (= tp!2318014 e!4634024)))

(assert (= (and b!7835918 ((_ is Cons!73700) (t!388559 (t!388559 s!14274)))) b!7836805))

(declare-fun b!7836808 () Bool)

(declare-fun e!4634025 () Bool)

(declare-fun tp!2318455 () Bool)

(assert (=> b!7836808 (= e!4634025 tp!2318455)))

(declare-fun b!7836807 () Bool)

(declare-fun tp!2318452 () Bool)

(declare-fun tp!2318451 () Bool)

(assert (=> b!7836807 (= e!4634025 (and tp!2318452 tp!2318451))))

(assert (=> b!7835943 (= tp!2318043 e!4634025)))

(declare-fun b!7836809 () Bool)

(declare-fun tp!2318453 () Bool)

(declare-fun tp!2318454 () Bool)

(assert (=> b!7836809 (= e!4634025 (and tp!2318453 tp!2318454))))

(declare-fun b!7836806 () Bool)

(assert (=> b!7836806 (= e!4634025 tp_is_empty!52329)))

(assert (= (and b!7835943 ((_ is ElementMatch!20987) (regOne!42487 (reg!21316 r1!6261)))) b!7836806))

(assert (= (and b!7835943 ((_ is Concat!29832) (regOne!42487 (reg!21316 r1!6261)))) b!7836807))

(assert (= (and b!7835943 ((_ is Star!20987) (regOne!42487 (reg!21316 r1!6261)))) b!7836808))

(assert (= (and b!7835943 ((_ is Union!20987) (regOne!42487 (reg!21316 r1!6261)))) b!7836809))

(declare-fun b!7836812 () Bool)

(declare-fun e!4634026 () Bool)

(declare-fun tp!2318460 () Bool)

(assert (=> b!7836812 (= e!4634026 tp!2318460)))

(declare-fun b!7836811 () Bool)

(declare-fun tp!2318457 () Bool)

(declare-fun tp!2318456 () Bool)

(assert (=> b!7836811 (= e!4634026 (and tp!2318457 tp!2318456))))

(assert (=> b!7835943 (= tp!2318044 e!4634026)))

(declare-fun b!7836813 () Bool)

(declare-fun tp!2318458 () Bool)

(declare-fun tp!2318459 () Bool)

(assert (=> b!7836813 (= e!4634026 (and tp!2318458 tp!2318459))))

(declare-fun b!7836810 () Bool)

(assert (=> b!7836810 (= e!4634026 tp_is_empty!52329)))

(assert (= (and b!7835943 ((_ is ElementMatch!20987) (regTwo!42487 (reg!21316 r1!6261)))) b!7836810))

(assert (= (and b!7835943 ((_ is Concat!29832) (regTwo!42487 (reg!21316 r1!6261)))) b!7836811))

(assert (= (and b!7835943 ((_ is Star!20987) (regTwo!42487 (reg!21316 r1!6261)))) b!7836812))

(assert (= (and b!7835943 ((_ is Union!20987) (regTwo!42487 (reg!21316 r1!6261)))) b!7836813))

(declare-fun b!7836816 () Bool)

(declare-fun e!4634027 () Bool)

(declare-fun tp!2318465 () Bool)

(assert (=> b!7836816 (= e!4634027 tp!2318465)))

(declare-fun b!7836815 () Bool)

(declare-fun tp!2318462 () Bool)

(declare-fun tp!2318461 () Bool)

(assert (=> b!7836815 (= e!4634027 (and tp!2318462 tp!2318461))))

(assert (=> b!7835934 (= tp!2318035 e!4634027)))

(declare-fun b!7836817 () Bool)

(declare-fun tp!2318463 () Bool)

(declare-fun tp!2318464 () Bool)

(assert (=> b!7836817 (= e!4634027 (and tp!2318463 tp!2318464))))

(declare-fun b!7836814 () Bool)

(assert (=> b!7836814 (= e!4634027 tp_is_empty!52329)))

(assert (= (and b!7835934 ((_ is ElementMatch!20987) (reg!21316 (regOne!42486 r2!6199)))) b!7836814))

(assert (= (and b!7835934 ((_ is Concat!29832) (reg!21316 (regOne!42486 r2!6199)))) b!7836815))

(assert (= (and b!7835934 ((_ is Star!20987) (reg!21316 (regOne!42486 r2!6199)))) b!7836816))

(assert (= (and b!7835934 ((_ is Union!20987) (reg!21316 (regOne!42486 r2!6199)))) b!7836817))

(declare-fun b!7836820 () Bool)

(declare-fun e!4634028 () Bool)

(declare-fun tp!2318470 () Bool)

(assert (=> b!7836820 (= e!4634028 tp!2318470)))

(declare-fun b!7836819 () Bool)

(declare-fun tp!2318467 () Bool)

(declare-fun tp!2318466 () Bool)

(assert (=> b!7836819 (= e!4634028 (and tp!2318467 tp!2318466))))

(assert (=> b!7835933 (= tp!2318032 e!4634028)))

(declare-fun b!7836821 () Bool)

(declare-fun tp!2318468 () Bool)

(declare-fun tp!2318469 () Bool)

(assert (=> b!7836821 (= e!4634028 (and tp!2318468 tp!2318469))))

(declare-fun b!7836818 () Bool)

(assert (=> b!7836818 (= e!4634028 tp_is_empty!52329)))

(assert (= (and b!7835933 ((_ is ElementMatch!20987) (regOne!42486 (regOne!42486 r2!6199)))) b!7836818))

(assert (= (and b!7835933 ((_ is Concat!29832) (regOne!42486 (regOne!42486 r2!6199)))) b!7836819))

(assert (= (and b!7835933 ((_ is Star!20987) (regOne!42486 (regOne!42486 r2!6199)))) b!7836820))

(assert (= (and b!7835933 ((_ is Union!20987) (regOne!42486 (regOne!42486 r2!6199)))) b!7836821))

(declare-fun b!7836824 () Bool)

(declare-fun e!4634029 () Bool)

(declare-fun tp!2318475 () Bool)

(assert (=> b!7836824 (= e!4634029 tp!2318475)))

(declare-fun b!7836823 () Bool)

(declare-fun tp!2318472 () Bool)

(declare-fun tp!2318471 () Bool)

(assert (=> b!7836823 (= e!4634029 (and tp!2318472 tp!2318471))))

(assert (=> b!7835933 (= tp!2318031 e!4634029)))

(declare-fun b!7836825 () Bool)

(declare-fun tp!2318473 () Bool)

(declare-fun tp!2318474 () Bool)

(assert (=> b!7836825 (= e!4634029 (and tp!2318473 tp!2318474))))

(declare-fun b!7836822 () Bool)

(assert (=> b!7836822 (= e!4634029 tp_is_empty!52329)))

(assert (= (and b!7835933 ((_ is ElementMatch!20987) (regTwo!42486 (regOne!42486 r2!6199)))) b!7836822))

(assert (= (and b!7835933 ((_ is Concat!29832) (regTwo!42486 (regOne!42486 r2!6199)))) b!7836823))

(assert (= (and b!7835933 ((_ is Star!20987) (regTwo!42486 (regOne!42486 r2!6199)))) b!7836824))

(assert (= (and b!7835933 ((_ is Union!20987) (regTwo!42486 (regOne!42486 r2!6199)))) b!7836825))

(declare-fun b!7836828 () Bool)

(declare-fun e!4634030 () Bool)

(declare-fun tp!2318480 () Bool)

(assert (=> b!7836828 (= e!4634030 tp!2318480)))

(declare-fun b!7836827 () Bool)

(declare-fun tp!2318477 () Bool)

(declare-fun tp!2318476 () Bool)

(assert (=> b!7836827 (= e!4634030 (and tp!2318477 tp!2318476))))

(assert (=> b!7835926 (= tp!2318022 e!4634030)))

(declare-fun b!7836829 () Bool)

(declare-fun tp!2318478 () Bool)

(declare-fun tp!2318479 () Bool)

(assert (=> b!7836829 (= e!4634030 (and tp!2318478 tp!2318479))))

(declare-fun b!7836826 () Bool)

(assert (=> b!7836826 (= e!4634030 tp_is_empty!52329)))

(assert (= (and b!7835926 ((_ is ElementMatch!20987) (regOne!42487 (regTwo!42487 r1!6261)))) b!7836826))

(assert (= (and b!7835926 ((_ is Concat!29832) (regOne!42487 (regTwo!42487 r1!6261)))) b!7836827))

(assert (= (and b!7835926 ((_ is Star!20987) (regOne!42487 (regTwo!42487 r1!6261)))) b!7836828))

(assert (= (and b!7835926 ((_ is Union!20987) (regOne!42487 (regTwo!42487 r1!6261)))) b!7836829))

(declare-fun b!7836832 () Bool)

(declare-fun e!4634031 () Bool)

(declare-fun tp!2318485 () Bool)

(assert (=> b!7836832 (= e!4634031 tp!2318485)))

(declare-fun b!7836831 () Bool)

(declare-fun tp!2318482 () Bool)

(declare-fun tp!2318481 () Bool)

(assert (=> b!7836831 (= e!4634031 (and tp!2318482 tp!2318481))))

(assert (=> b!7835926 (= tp!2318023 e!4634031)))

(declare-fun b!7836833 () Bool)

(declare-fun tp!2318483 () Bool)

(declare-fun tp!2318484 () Bool)

(assert (=> b!7836833 (= e!4634031 (and tp!2318483 tp!2318484))))

(declare-fun b!7836830 () Bool)

(assert (=> b!7836830 (= e!4634031 tp_is_empty!52329)))

(assert (= (and b!7835926 ((_ is ElementMatch!20987) (regTwo!42487 (regTwo!42487 r1!6261)))) b!7836830))

(assert (= (and b!7835926 ((_ is Concat!29832) (regTwo!42487 (regTwo!42487 r1!6261)))) b!7836831))

(assert (= (and b!7835926 ((_ is Star!20987) (regTwo!42487 (regTwo!42487 r1!6261)))) b!7836832))

(assert (= (and b!7835926 ((_ is Union!20987) (regTwo!42487 (regTwo!42487 r1!6261)))) b!7836833))

(declare-fun b!7836836 () Bool)

(declare-fun e!4634032 () Bool)

(declare-fun tp!2318490 () Bool)

(assert (=> b!7836836 (= e!4634032 tp!2318490)))

(declare-fun b!7836835 () Bool)

(declare-fun tp!2318487 () Bool)

(declare-fun tp!2318486 () Bool)

(assert (=> b!7836835 (= e!4634032 (and tp!2318487 tp!2318486))))

(assert (=> b!7835951 (= tp!2318053 e!4634032)))

(declare-fun b!7836837 () Bool)

(declare-fun tp!2318488 () Bool)

(declare-fun tp!2318489 () Bool)

(assert (=> b!7836837 (= e!4634032 (and tp!2318488 tp!2318489))))

(declare-fun b!7836834 () Bool)

(assert (=> b!7836834 (= e!4634032 tp_is_empty!52329)))

(assert (= (and b!7835951 ((_ is ElementMatch!20987) (regOne!42487 (regTwo!42486 r1!6261)))) b!7836834))

(assert (= (and b!7835951 ((_ is Concat!29832) (regOne!42487 (regTwo!42486 r1!6261)))) b!7836835))

(assert (= (and b!7835951 ((_ is Star!20987) (regOne!42487 (regTwo!42486 r1!6261)))) b!7836836))

(assert (= (and b!7835951 ((_ is Union!20987) (regOne!42487 (regTwo!42486 r1!6261)))) b!7836837))

(declare-fun b!7836840 () Bool)

(declare-fun e!4634033 () Bool)

(declare-fun tp!2318495 () Bool)

(assert (=> b!7836840 (= e!4634033 tp!2318495)))

(declare-fun b!7836839 () Bool)

(declare-fun tp!2318492 () Bool)

(declare-fun tp!2318491 () Bool)

(assert (=> b!7836839 (= e!4634033 (and tp!2318492 tp!2318491))))

(assert (=> b!7835951 (= tp!2318054 e!4634033)))

(declare-fun b!7836841 () Bool)

(declare-fun tp!2318493 () Bool)

(declare-fun tp!2318494 () Bool)

(assert (=> b!7836841 (= e!4634033 (and tp!2318493 tp!2318494))))

(declare-fun b!7836838 () Bool)

(assert (=> b!7836838 (= e!4634033 tp_is_empty!52329)))

(assert (= (and b!7835951 ((_ is ElementMatch!20987) (regTwo!42487 (regTwo!42486 r1!6261)))) b!7836838))

(assert (= (and b!7835951 ((_ is Concat!29832) (regTwo!42487 (regTwo!42486 r1!6261)))) b!7836839))

(assert (= (and b!7835951 ((_ is Star!20987) (regTwo!42487 (regTwo!42486 r1!6261)))) b!7836840))

(assert (= (and b!7835951 ((_ is Union!20987) (regTwo!42487 (regTwo!42486 r1!6261)))) b!7836841))

(declare-fun b!7836844 () Bool)

(declare-fun e!4634034 () Bool)

(declare-fun tp!2318500 () Bool)

(assert (=> b!7836844 (= e!4634034 tp!2318500)))

(declare-fun b!7836843 () Bool)

(declare-fun tp!2318497 () Bool)

(declare-fun tp!2318496 () Bool)

(assert (=> b!7836843 (= e!4634034 (and tp!2318497 tp!2318496))))

(assert (=> b!7835925 (= tp!2318024 e!4634034)))

(declare-fun b!7836845 () Bool)

(declare-fun tp!2318498 () Bool)

(declare-fun tp!2318499 () Bool)

(assert (=> b!7836845 (= e!4634034 (and tp!2318498 tp!2318499))))

(declare-fun b!7836842 () Bool)

(assert (=> b!7836842 (= e!4634034 tp_is_empty!52329)))

(assert (= (and b!7835925 ((_ is ElementMatch!20987) (reg!21316 (regTwo!42487 r1!6261)))) b!7836842))

(assert (= (and b!7835925 ((_ is Concat!29832) (reg!21316 (regTwo!42487 r1!6261)))) b!7836843))

(assert (= (and b!7835925 ((_ is Star!20987) (reg!21316 (regTwo!42487 r1!6261)))) b!7836844))

(assert (= (and b!7835925 ((_ is Union!20987) (reg!21316 (regTwo!42487 r1!6261)))) b!7836845))

(declare-fun b!7836848 () Bool)

(declare-fun e!4634035 () Bool)

(declare-fun tp!2318505 () Bool)

(assert (=> b!7836848 (= e!4634035 tp!2318505)))

(declare-fun b!7836847 () Bool)

(declare-fun tp!2318502 () Bool)

(declare-fun tp!2318501 () Bool)

(assert (=> b!7836847 (= e!4634035 (and tp!2318502 tp!2318501))))

(assert (=> b!7835942 (= tp!2318045 e!4634035)))

(declare-fun b!7836849 () Bool)

(declare-fun tp!2318503 () Bool)

(declare-fun tp!2318504 () Bool)

(assert (=> b!7836849 (= e!4634035 (and tp!2318503 tp!2318504))))

(declare-fun b!7836846 () Bool)

(assert (=> b!7836846 (= e!4634035 tp_is_empty!52329)))

(assert (= (and b!7835942 ((_ is ElementMatch!20987) (reg!21316 (reg!21316 r1!6261)))) b!7836846))

(assert (= (and b!7835942 ((_ is Concat!29832) (reg!21316 (reg!21316 r1!6261)))) b!7836847))

(assert (= (and b!7835942 ((_ is Star!20987) (reg!21316 (reg!21316 r1!6261)))) b!7836848))

(assert (= (and b!7835942 ((_ is Union!20987) (reg!21316 (reg!21316 r1!6261)))) b!7836849))

(declare-fun b!7836852 () Bool)

(declare-fun e!4634036 () Bool)

(declare-fun tp!2318510 () Bool)

(assert (=> b!7836852 (= e!4634036 tp!2318510)))

(declare-fun b!7836851 () Bool)

(declare-fun tp!2318507 () Bool)

(declare-fun tp!2318506 () Bool)

(assert (=> b!7836851 (= e!4634036 (and tp!2318507 tp!2318506))))

(assert (=> b!7835941 (= tp!2318042 e!4634036)))

(declare-fun b!7836853 () Bool)

(declare-fun tp!2318508 () Bool)

(declare-fun tp!2318509 () Bool)

(assert (=> b!7836853 (= e!4634036 (and tp!2318508 tp!2318509))))

(declare-fun b!7836850 () Bool)

(assert (=> b!7836850 (= e!4634036 tp_is_empty!52329)))

(assert (= (and b!7835941 ((_ is ElementMatch!20987) (regOne!42486 (reg!21316 r1!6261)))) b!7836850))

(assert (= (and b!7835941 ((_ is Concat!29832) (regOne!42486 (reg!21316 r1!6261)))) b!7836851))

(assert (= (and b!7835941 ((_ is Star!20987) (regOne!42486 (reg!21316 r1!6261)))) b!7836852))

(assert (= (and b!7835941 ((_ is Union!20987) (regOne!42486 (reg!21316 r1!6261)))) b!7836853))

(declare-fun b!7836856 () Bool)

(declare-fun e!4634037 () Bool)

(declare-fun tp!2318515 () Bool)

(assert (=> b!7836856 (= e!4634037 tp!2318515)))

(declare-fun b!7836855 () Bool)

(declare-fun tp!2318512 () Bool)

(declare-fun tp!2318511 () Bool)

(assert (=> b!7836855 (= e!4634037 (and tp!2318512 tp!2318511))))

(assert (=> b!7835941 (= tp!2318041 e!4634037)))

(declare-fun b!7836857 () Bool)

(declare-fun tp!2318513 () Bool)

(declare-fun tp!2318514 () Bool)

(assert (=> b!7836857 (= e!4634037 (and tp!2318513 tp!2318514))))

(declare-fun b!7836854 () Bool)

(assert (=> b!7836854 (= e!4634037 tp_is_empty!52329)))

(assert (= (and b!7835941 ((_ is ElementMatch!20987) (regTwo!42486 (reg!21316 r1!6261)))) b!7836854))

(assert (= (and b!7835941 ((_ is Concat!29832) (regTwo!42486 (reg!21316 r1!6261)))) b!7836855))

(assert (= (and b!7835941 ((_ is Star!20987) (regTwo!42486 (reg!21316 r1!6261)))) b!7836856))

(assert (= (and b!7835941 ((_ is Union!20987) (regTwo!42486 (reg!21316 r1!6261)))) b!7836857))

(declare-fun b!7836860 () Bool)

(declare-fun e!4634038 () Bool)

(declare-fun tp!2318520 () Bool)

(assert (=> b!7836860 (= e!4634038 tp!2318520)))

(declare-fun b!7836859 () Bool)

(declare-fun tp!2318517 () Bool)

(declare-fun tp!2318516 () Bool)

(assert (=> b!7836859 (= e!4634038 (and tp!2318517 tp!2318516))))

(assert (=> b!7835917 (= tp!2318011 e!4634038)))

(declare-fun b!7836861 () Bool)

(declare-fun tp!2318518 () Bool)

(declare-fun tp!2318519 () Bool)

(assert (=> b!7836861 (= e!4634038 (and tp!2318518 tp!2318519))))

(declare-fun b!7836858 () Bool)

(assert (=> b!7836858 (= e!4634038 tp_is_empty!52329)))

(assert (= (and b!7835917 ((_ is ElementMatch!20987) (regOne!42487 (regTwo!42487 r2!6199)))) b!7836858))

(assert (= (and b!7835917 ((_ is Concat!29832) (regOne!42487 (regTwo!42487 r2!6199)))) b!7836859))

(assert (= (and b!7835917 ((_ is Star!20987) (regOne!42487 (regTwo!42487 r2!6199)))) b!7836860))

(assert (= (and b!7835917 ((_ is Union!20987) (regOne!42487 (regTwo!42487 r2!6199)))) b!7836861))

(declare-fun b!7836864 () Bool)

(declare-fun e!4634039 () Bool)

(declare-fun tp!2318525 () Bool)

(assert (=> b!7836864 (= e!4634039 tp!2318525)))

(declare-fun b!7836863 () Bool)

(declare-fun tp!2318522 () Bool)

(declare-fun tp!2318521 () Bool)

(assert (=> b!7836863 (= e!4634039 (and tp!2318522 tp!2318521))))

(assert (=> b!7835917 (= tp!2318012 e!4634039)))

(declare-fun b!7836865 () Bool)

(declare-fun tp!2318523 () Bool)

(declare-fun tp!2318524 () Bool)

(assert (=> b!7836865 (= e!4634039 (and tp!2318523 tp!2318524))))

(declare-fun b!7836862 () Bool)

(assert (=> b!7836862 (= e!4634039 tp_is_empty!52329)))

(assert (= (and b!7835917 ((_ is ElementMatch!20987) (regTwo!42487 (regTwo!42487 r2!6199)))) b!7836862))

(assert (= (and b!7835917 ((_ is Concat!29832) (regTwo!42487 (regTwo!42487 r2!6199)))) b!7836863))

(assert (= (and b!7835917 ((_ is Star!20987) (regTwo!42487 (regTwo!42487 r2!6199)))) b!7836864))

(assert (= (and b!7835917 ((_ is Union!20987) (regTwo!42487 (regTwo!42487 r2!6199)))) b!7836865))

(declare-fun b!7836868 () Bool)

(declare-fun e!4634040 () Bool)

(declare-fun tp!2318530 () Bool)

(assert (=> b!7836868 (= e!4634040 tp!2318530)))

(declare-fun b!7836867 () Bool)

(declare-fun tp!2318527 () Bool)

(declare-fun tp!2318526 () Bool)

(assert (=> b!7836867 (= e!4634040 (and tp!2318527 tp!2318526))))

(assert (=> b!7835950 (= tp!2318055 e!4634040)))

(declare-fun b!7836869 () Bool)

(declare-fun tp!2318528 () Bool)

(declare-fun tp!2318529 () Bool)

(assert (=> b!7836869 (= e!4634040 (and tp!2318528 tp!2318529))))

(declare-fun b!7836866 () Bool)

(assert (=> b!7836866 (= e!4634040 tp_is_empty!52329)))

(assert (= (and b!7835950 ((_ is ElementMatch!20987) (reg!21316 (regTwo!42486 r1!6261)))) b!7836866))

(assert (= (and b!7835950 ((_ is Concat!29832) (reg!21316 (regTwo!42486 r1!6261)))) b!7836867))

(assert (= (and b!7835950 ((_ is Star!20987) (reg!21316 (regTwo!42486 r1!6261)))) b!7836868))

(assert (= (and b!7835950 ((_ is Union!20987) (reg!21316 (regTwo!42486 r1!6261)))) b!7836869))

(declare-fun b!7836872 () Bool)

(declare-fun e!4634041 () Bool)

(declare-fun tp!2318535 () Bool)

(assert (=> b!7836872 (= e!4634041 tp!2318535)))

(declare-fun b!7836871 () Bool)

(declare-fun tp!2318532 () Bool)

(declare-fun tp!2318531 () Bool)

(assert (=> b!7836871 (= e!4634041 (and tp!2318532 tp!2318531))))

(assert (=> b!7835924 (= tp!2318021 e!4634041)))

(declare-fun b!7836873 () Bool)

(declare-fun tp!2318533 () Bool)

(declare-fun tp!2318534 () Bool)

(assert (=> b!7836873 (= e!4634041 (and tp!2318533 tp!2318534))))

(declare-fun b!7836870 () Bool)

(assert (=> b!7836870 (= e!4634041 tp_is_empty!52329)))

(assert (= (and b!7835924 ((_ is ElementMatch!20987) (regOne!42486 (regTwo!42487 r1!6261)))) b!7836870))

(assert (= (and b!7835924 ((_ is Concat!29832) (regOne!42486 (regTwo!42487 r1!6261)))) b!7836871))

(assert (= (and b!7835924 ((_ is Star!20987) (regOne!42486 (regTwo!42487 r1!6261)))) b!7836872))

(assert (= (and b!7835924 ((_ is Union!20987) (regOne!42486 (regTwo!42487 r1!6261)))) b!7836873))

(declare-fun b!7836876 () Bool)

(declare-fun e!4634042 () Bool)

(declare-fun tp!2318540 () Bool)

(assert (=> b!7836876 (= e!4634042 tp!2318540)))

(declare-fun b!7836875 () Bool)

(declare-fun tp!2318537 () Bool)

(declare-fun tp!2318536 () Bool)

(assert (=> b!7836875 (= e!4634042 (and tp!2318537 tp!2318536))))

(assert (=> b!7835924 (= tp!2318020 e!4634042)))

(declare-fun b!7836877 () Bool)

(declare-fun tp!2318538 () Bool)

(declare-fun tp!2318539 () Bool)

(assert (=> b!7836877 (= e!4634042 (and tp!2318538 tp!2318539))))

(declare-fun b!7836874 () Bool)

(assert (=> b!7836874 (= e!4634042 tp_is_empty!52329)))

(assert (= (and b!7835924 ((_ is ElementMatch!20987) (regTwo!42486 (regTwo!42487 r1!6261)))) b!7836874))

(assert (= (and b!7835924 ((_ is Concat!29832) (regTwo!42486 (regTwo!42487 r1!6261)))) b!7836875))

(assert (= (and b!7835924 ((_ is Star!20987) (regTwo!42486 (regTwo!42487 r1!6261)))) b!7836876))

(assert (= (and b!7835924 ((_ is Union!20987) (regTwo!42486 (regTwo!42487 r1!6261)))) b!7836877))

(declare-fun b!7836880 () Bool)

(declare-fun e!4634043 () Bool)

(declare-fun tp!2318545 () Bool)

(assert (=> b!7836880 (= e!4634043 tp!2318545)))

(declare-fun b!7836879 () Bool)

(declare-fun tp!2318542 () Bool)

(declare-fun tp!2318541 () Bool)

(assert (=> b!7836879 (= e!4634043 (and tp!2318542 tp!2318541))))

(assert (=> b!7835949 (= tp!2318052 e!4634043)))

(declare-fun b!7836881 () Bool)

(declare-fun tp!2318543 () Bool)

(declare-fun tp!2318544 () Bool)

(assert (=> b!7836881 (= e!4634043 (and tp!2318543 tp!2318544))))

(declare-fun b!7836878 () Bool)

(assert (=> b!7836878 (= e!4634043 tp_is_empty!52329)))

(assert (= (and b!7835949 ((_ is ElementMatch!20987) (regOne!42486 (regTwo!42486 r1!6261)))) b!7836878))

(assert (= (and b!7835949 ((_ is Concat!29832) (regOne!42486 (regTwo!42486 r1!6261)))) b!7836879))

(assert (= (and b!7835949 ((_ is Star!20987) (regOne!42486 (regTwo!42486 r1!6261)))) b!7836880))

(assert (= (and b!7835949 ((_ is Union!20987) (regOne!42486 (regTwo!42486 r1!6261)))) b!7836881))

(declare-fun b!7836884 () Bool)

(declare-fun e!4634044 () Bool)

(declare-fun tp!2318550 () Bool)

(assert (=> b!7836884 (= e!4634044 tp!2318550)))

(declare-fun b!7836883 () Bool)

(declare-fun tp!2318547 () Bool)

(declare-fun tp!2318546 () Bool)

(assert (=> b!7836883 (= e!4634044 (and tp!2318547 tp!2318546))))

(assert (=> b!7835949 (= tp!2318051 e!4634044)))

(declare-fun b!7836885 () Bool)

(declare-fun tp!2318548 () Bool)

(declare-fun tp!2318549 () Bool)

(assert (=> b!7836885 (= e!4634044 (and tp!2318548 tp!2318549))))

(declare-fun b!7836882 () Bool)

(assert (=> b!7836882 (= e!4634044 tp_is_empty!52329)))

(assert (= (and b!7835949 ((_ is ElementMatch!20987) (regTwo!42486 (regTwo!42486 r1!6261)))) b!7836882))

(assert (= (and b!7835949 ((_ is Concat!29832) (regTwo!42486 (regTwo!42486 r1!6261)))) b!7836883))

(assert (= (and b!7835949 ((_ is Star!20987) (regTwo!42486 (regTwo!42486 r1!6261)))) b!7836884))

(assert (= (and b!7835949 ((_ is Union!20987) (regTwo!42486 (regTwo!42486 r1!6261)))) b!7836885))

(declare-fun b!7836888 () Bool)

(declare-fun e!4634045 () Bool)

(declare-fun tp!2318555 () Bool)

(assert (=> b!7836888 (= e!4634045 tp!2318555)))

(declare-fun b!7836887 () Bool)

(declare-fun tp!2318552 () Bool)

(declare-fun tp!2318551 () Bool)

(assert (=> b!7836887 (= e!4634045 (and tp!2318552 tp!2318551))))

(assert (=> b!7835916 (= tp!2318013 e!4634045)))

(declare-fun b!7836889 () Bool)

(declare-fun tp!2318553 () Bool)

(declare-fun tp!2318554 () Bool)

(assert (=> b!7836889 (= e!4634045 (and tp!2318553 tp!2318554))))

(declare-fun b!7836886 () Bool)

(assert (=> b!7836886 (= e!4634045 tp_is_empty!52329)))

(assert (= (and b!7835916 ((_ is ElementMatch!20987) (reg!21316 (regTwo!42487 r2!6199)))) b!7836886))

(assert (= (and b!7835916 ((_ is Concat!29832) (reg!21316 (regTwo!42487 r2!6199)))) b!7836887))

(assert (= (and b!7835916 ((_ is Star!20987) (reg!21316 (regTwo!42487 r2!6199)))) b!7836888))

(assert (= (and b!7835916 ((_ is Union!20987) (reg!21316 (regTwo!42487 r2!6199)))) b!7836889))

(declare-fun b!7836892 () Bool)

(declare-fun e!4634046 () Bool)

(declare-fun tp!2318560 () Bool)

(assert (=> b!7836892 (= e!4634046 tp!2318560)))

(declare-fun b!7836891 () Bool)

(declare-fun tp!2318557 () Bool)

(declare-fun tp!2318556 () Bool)

(assert (=> b!7836891 (= e!4634046 (and tp!2318557 tp!2318556))))

(assert (=> b!7835915 (= tp!2318010 e!4634046)))

(declare-fun b!7836893 () Bool)

(declare-fun tp!2318558 () Bool)

(declare-fun tp!2318559 () Bool)

(assert (=> b!7836893 (= e!4634046 (and tp!2318558 tp!2318559))))

(declare-fun b!7836890 () Bool)

(assert (=> b!7836890 (= e!4634046 tp_is_empty!52329)))

(assert (= (and b!7835915 ((_ is ElementMatch!20987) (regOne!42486 (regTwo!42487 r2!6199)))) b!7836890))

(assert (= (and b!7835915 ((_ is Concat!29832) (regOne!42486 (regTwo!42487 r2!6199)))) b!7836891))

(assert (= (and b!7835915 ((_ is Star!20987) (regOne!42486 (regTwo!42487 r2!6199)))) b!7836892))

(assert (= (and b!7835915 ((_ is Union!20987) (regOne!42486 (regTwo!42487 r2!6199)))) b!7836893))

(declare-fun b!7836896 () Bool)

(declare-fun e!4634047 () Bool)

(declare-fun tp!2318565 () Bool)

(assert (=> b!7836896 (= e!4634047 tp!2318565)))

(declare-fun b!7836895 () Bool)

(declare-fun tp!2318562 () Bool)

(declare-fun tp!2318561 () Bool)

(assert (=> b!7836895 (= e!4634047 (and tp!2318562 tp!2318561))))

(assert (=> b!7835915 (= tp!2318009 e!4634047)))

(declare-fun b!7836897 () Bool)

(declare-fun tp!2318563 () Bool)

(declare-fun tp!2318564 () Bool)

(assert (=> b!7836897 (= e!4634047 (and tp!2318563 tp!2318564))))

(declare-fun b!7836894 () Bool)

(assert (=> b!7836894 (= e!4634047 tp_is_empty!52329)))

(assert (= (and b!7835915 ((_ is ElementMatch!20987) (regTwo!42486 (regTwo!42487 r2!6199)))) b!7836894))

(assert (= (and b!7835915 ((_ is Concat!29832) (regTwo!42486 (regTwo!42487 r2!6199)))) b!7836895))

(assert (= (and b!7835915 ((_ is Star!20987) (regTwo!42486 (regTwo!42487 r2!6199)))) b!7836896))

(assert (= (and b!7835915 ((_ is Union!20987) (regTwo!42486 (regTwo!42487 r2!6199)))) b!7836897))

(check-sat (not b!7836742) (not b!7836166) (not b!7836665) (not b!7836524) (not b!7836605) (not b!7836864) (not b!7836626) (not b!7836812) (not b!7836778) (not b!7836751) (not b!7836599) (not b!7836270) (not b!7836869) (not bm!726504) (not b!7836855) (not b!7836839) (not b!7836529) (not bm!726508) (not b!7836694) (not b!7836671) (not b!7836709) (not b!7836728) (not b!7836612) (not d!2351659) (not b!7836883) (not b!7836871) (not b!7836760) (not bm!726499) (not b!7836550) (not b!7836711) (not b!7836158) (not b!7836803) (not b!7836610) (not b!7836677) (not b!7836804) (not b!7836837) (not b!7836824) (not b!7836301) (not b!7836754) (not b!7836787) (not b!7836221) (not b!7836537) (not b!7836731) (not d!2351517) (not bm!726490) (not d!2351691) (not b!7836609) (not b!7836719) (not b!7836877) (not b!7836746) (not bm!726505) (not b!7836856) (not b!7836597) (not b!7836821) (not b!7836860) (not b!7836857) (not b!7836699) (not b!7836271) (not b!7836692) (not b!7836406) (not b!7836338) (not b!7836832) (not d!2351711) (not b!7836792) (not b!7836685) (not b!7836398) (not b!7836395) (not b!7836603) (not b!7836774) (not b!7836747) (not b!7836831) (not b!7836399) (not b!7836586) (not b!7836643) (not b!7836885) (not b!7836807) (not b!7836667) (not b!7836788) (not b!7836776) (not b!7836556) (not b!7836799) (not b!7836896) (not b!7836762) (not bm!726529) (not b!7836707) (not b!7836720) (not b!7836695) (not b!7836867) (not b!7836723) (not b!7836766) (not b!7836615) (not b!7836817) (not b!7836841) (not b!7836647) (not b!7836847) (not b!7836819) (not bm!726517) (not b!7836562) (not b!7836718) (not b!7836676) (not d!2351715) (not b!7836750) (not b!7836212) (not b!7836623) (not b!7836770) (not b!7836876) (not b!7836895) (not b!7836650) (not b!7836736) (not b!7836724) (not b!7836254) (not b!7836880) (not b!7836332) (not b!7836722) (not b!7836783) (not d!2351547) (not b!7836897) (not b!7836756) (not b!7836825) (not d!2351689) (not bm!726516) (not b!7836210) (not b!7836791) (not b!7836798) (not b!7836790) (not b!7836407) (not b!7836716) (not b!7836554) (not b!7836887) (not b!7836892) (not b!7836827) (not b!7836759) (not b!7836888) (not b!7836702) (not b!7836811) (not b!7836660) (not b!7836755) (not b!7836843) (not b!7836557) (not b!7836690) (not d!2351577) (not b!7836881) (not b!7836172) (not b!7836536) (not d!2351519) (not b!7836859) (not bm!726510) (not b!7836726) (not b!7836624) (not b!7836743) (not bm!726513) (not b!7836748) (not b!7836559) (not b!7836600) (not b!7836714) (not b!7836311) (not b!7836616) (not b!7836868) (not b!7836752) (not b!7836828) (not b!7836796) (not b!7836813) (not b!7836697) (not b!7836528) (not d!2351697) (not b!7836594) (not d!2351643) (not b!7836672) (not b!7836668) (not b!7836739) (not b!7836771) (not b!7836891) (not bm!726500) (not b!7836767) (not b!7836879) (not b!7836663) (not b!7836805) (not b!7836823) (not b!7836220) (not b!7836763) tp_is_empty!52329 (not b!7836159) (not b!7836851) (not b!7836611) (not b!7836571) (not b!7836378) (not b!7836786) (not b!7836701) (not b!7836712) (not b!7836509) (not b!7836698) (not b!7836844) (not b!7836675) (not b!7836710) (not b!7836552) (not b!7836732) (not b!7836861) (not b!7836873) (not b!7836863) (not b!7836618) (not b!7836570) (not b!7836836) (not d!2351603) (not d!2351655) (not b!7836646) (not b!7836780) (not b!7836520) (not b!7836563) (not b!7836218) (not b!7836652) (not b!7836735) (not b!7836809) (not d!2351625) (not b!7836779) (not b!7836604) (not b!7836727) (not b!7836522) (not d!2351587) (not b!7836222) (not b!7836539) (not b!7836573) (not bm!726526) (not d!2351617) (not b!7836849) (not bm!726518) (not b!7836738) (not b!7836764) (not b!7836688) (not b!7836893) (not b!7836607) (not b!7836693) (not b!7836715) (not d!2351713) (not b!7836651) (not b!7836758) (not d!2351641) (not bm!726523) (not d!2351657) (not b!7836840) (not b!7836401) (not bm!726515) (not b!7836835) (not b!7836740) (not b!7836168) (not b!7836833) (not b!7836816) (not b!7836730) (not b!7836853) (not b!7836350) (not bm!726524) (not b!7836815) (not b!7836875) (not b!7836889) (not b!7836744) (not b!7836884) (not b!7836348) (not b!7836525) (not b!7836248) (not b!7836829) (not b!7836584) (not b!7836269) (not b!7836775) (not b!7836565) (not b!7836772) (not b!7836784) (not b!7836852) (not b!7836782) (not b!7836245) (not b!7836768) (not d!2351631) (not b!7836703) (not b!7836321) (not b!7836706) (not bm!726527) (not b!7836848) (not d!2351679) (not b!7836664) (not b!7836800) (not b!7836794) (not b!7836349) (not b!7836865) (not b!7836808) (not bm!726509) (not bm!726503) (not b!7836802) (not b!7836845) (not b!7836734) (not b!7836705) (not bm!726521) (not b!7836872) (not b!7836820) (not b!7836521) (not b!7836531) (not b!7836795) (not d!2351627))
(check-sat)
