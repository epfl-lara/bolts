; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735716 () Bool)

(assert start!735716)

(declare-fun b!7644327 () Bool)

(declare-fun e!4543598 () Bool)

(declare-fun tp!2231444 () Bool)

(declare-fun tp!2231446 () Bool)

(assert (=> b!7644327 (= e!4543598 (and tp!2231444 tp!2231446))))

(declare-fun b!7644328 () Bool)

(declare-datatypes ((Unit!167896 0))(
  ( (Unit!167897) )
))
(declare-fun e!4543597 () Unit!167896)

(declare-fun Unit!167898 () Unit!167896)

(assert (=> b!7644328 (= e!4543597 Unit!167898)))

(declare-fun b!7644329 () Bool)

(declare-fun e!4543595 () Bool)

(assert (=> b!7644329 (= e!4543595 false)))

(declare-fun b!7644330 () Bool)

(declare-fun Unit!167899 () Unit!167896)

(assert (=> b!7644330 (= e!4543597 Unit!167899)))

(declare-fun lt!2660784 () Unit!167896)

(declare-datatypes ((C!41244 0))(
  ( (C!41245 (val!31062 Int)) )
))
(declare-datatypes ((Regex!20459 0))(
  ( (ElementMatch!20459 (c!1408020 C!41244)) (Concat!29304 (regOne!41430 Regex!20459) (regTwo!41430 Regex!20459)) (EmptyExpr!20459) (Star!20459 (reg!20788 Regex!20459)) (EmptyLang!20459) (Union!20459 (regOne!41431 Regex!20459) (regTwo!41431 Regex!20459)) )
))
(declare-fun r!14126 () Regex!20459)

(declare-datatypes ((List!73310 0))(
  ( (Nil!73186) (Cons!73186 (h!79634 C!41244) (t!388045 List!73310)) )
))
(declare-fun s!9605 () List!73310)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!106 (Regex!20459 Regex!20459 List!73310) Unit!167896)

(assert (=> b!7644330 (= lt!2660784 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!106 (regOne!41431 r!14126) (regTwo!41431 r!14126) s!9605))))

(declare-fun res!3061840 () Bool)

(declare-fun matchR!9960 (Regex!20459 List!73310) Bool)

(assert (=> b!7644330 (= res!3061840 (matchR!9960 r!14126 s!9605))))

(assert (=> b!7644330 (=> (not res!3061840) (not e!4543595))))

(assert (=> b!7644330 e!4543595))

(declare-fun res!3061835 () Bool)

(declare-fun e!4543594 () Bool)

(assert (=> start!735716 (=> (not res!3061835) (not e!4543594))))

(declare-fun validRegex!10877 (Regex!20459) Bool)

(assert (=> start!735716 (= res!3061835 (validRegex!10877 r!14126))))

(assert (=> start!735716 e!4543594))

(assert (=> start!735716 e!4543598))

(declare-fun e!4543593 () Bool)

(assert (=> start!735716 e!4543593))

(declare-fun b!7644331 () Bool)

(declare-fun tp!2231449 () Bool)

(assert (=> b!7644331 (= e!4543598 tp!2231449)))

(declare-fun b!7644332 () Bool)

(declare-fun tp!2231445 () Bool)

(declare-fun tp!2231448 () Bool)

(assert (=> b!7644332 (= e!4543598 (and tp!2231445 tp!2231448))))

(declare-fun b!7644333 () Bool)

(declare-fun res!3061837 () Bool)

(assert (=> b!7644333 (=> (not res!3061837) (not e!4543594))))

(assert (=> b!7644333 (= res!3061837 (not (matchR!9960 r!14126 s!9605)))))

(declare-fun b!7644334 () Bool)

(declare-fun tp_is_empty!51273 () Bool)

(assert (=> b!7644334 (= e!4543598 tp_is_empty!51273)))

(declare-fun b!7644335 () Bool)

(declare-fun e!4543599 () Bool)

(assert (=> b!7644335 (= e!4543599 (validRegex!10877 (regOne!41431 r!14126)))))

(declare-fun b!7644336 () Bool)

(declare-fun e!4543596 () Bool)

(assert (=> b!7644336 (= e!4543596 (not e!4543599))))

(declare-fun res!3061838 () Bool)

(assert (=> b!7644336 (=> (not res!3061838) (not e!4543599))))

(assert (=> b!7644336 (= res!3061838 (validRegex!10877 (regTwo!41431 r!14126)))))

(assert (=> b!7644336 (matchR!9960 (Union!20459 (regTwo!41431 r!14126) (regOne!41431 r!14126)) s!9605)))

(declare-fun lt!2660782 () Unit!167896)

(assert (=> b!7644336 (= lt!2660782 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!106 (regTwo!41431 r!14126) (regOne!41431 r!14126) s!9605))))

(declare-fun b!7644337 () Bool)

(declare-fun res!3061839 () Bool)

(assert (=> b!7644337 (=> (not res!3061839) (not e!4543594))))

(get-info :version)

(assert (=> b!7644337 (= res!3061839 (and (not ((_ is EmptyExpr!20459) r!14126)) (not ((_ is EmptyLang!20459) r!14126)) (not ((_ is ElementMatch!20459) r!14126)) ((_ is Union!20459) r!14126)))))

(declare-fun b!7644338 () Bool)

(declare-fun tp!2231447 () Bool)

(assert (=> b!7644338 (= e!4543593 (and tp_is_empty!51273 tp!2231447))))

(declare-fun b!7644339 () Bool)

(assert (=> b!7644339 (= e!4543594 e!4543596)))

(declare-fun res!3061836 () Bool)

(assert (=> b!7644339 (=> (not res!3061836) (not e!4543596))))

(assert (=> b!7644339 (= res!3061836 (matchR!9960 (regTwo!41431 r!14126) s!9605))))

(declare-fun lt!2660783 () Unit!167896)

(assert (=> b!7644339 (= lt!2660783 e!4543597)))

(declare-fun c!1408019 () Bool)

(assert (=> b!7644339 (= c!1408019 (matchR!9960 (regOne!41431 r!14126) s!9605))))

(assert (= (and start!735716 res!3061835) b!7644337))

(assert (= (and b!7644337 res!3061839) b!7644333))

(assert (= (and b!7644333 res!3061837) b!7644339))

(assert (= (and b!7644339 c!1408019) b!7644330))

(assert (= (and b!7644339 (not c!1408019)) b!7644328))

(assert (= (and b!7644330 res!3061840) b!7644329))

(assert (= (and b!7644339 res!3061836) b!7644336))

(assert (= (and b!7644336 res!3061838) b!7644335))

(assert (= (and start!735716 ((_ is ElementMatch!20459) r!14126)) b!7644334))

(assert (= (and start!735716 ((_ is Concat!29304) r!14126)) b!7644332))

(assert (= (and start!735716 ((_ is Star!20459) r!14126)) b!7644331))

(assert (= (and start!735716 ((_ is Union!20459) r!14126)) b!7644327))

(assert (= (and start!735716 ((_ is Cons!73186) s!9605)) b!7644338))

(declare-fun m!8163996 () Bool)

(assert (=> b!7644339 m!8163996))

(declare-fun m!8163998 () Bool)

(assert (=> b!7644339 m!8163998))

(declare-fun m!8164000 () Bool)

(assert (=> b!7644333 m!8164000))

(declare-fun m!8164002 () Bool)

(assert (=> start!735716 m!8164002))

(declare-fun m!8164004 () Bool)

(assert (=> b!7644330 m!8164004))

(assert (=> b!7644330 m!8164000))

(declare-fun m!8164006 () Bool)

(assert (=> b!7644336 m!8164006))

(declare-fun m!8164008 () Bool)

(assert (=> b!7644336 m!8164008))

(declare-fun m!8164010 () Bool)

(assert (=> b!7644336 m!8164010))

(declare-fun m!8164012 () Bool)

(assert (=> b!7644335 m!8164012))

(check-sat (not start!735716) (not b!7644339) (not b!7644336) (not b!7644330) (not b!7644327) (not b!7644335) tp_is_empty!51273 (not b!7644331) (not b!7644332) (not b!7644333) (not b!7644338))
(check-sat)
(get-model)

(declare-fun b!7644358 () Bool)

(declare-fun res!3061855 () Bool)

(declare-fun e!4543619 () Bool)

(assert (=> b!7644358 (=> res!3061855 e!4543619)))

(assert (=> b!7644358 (= res!3061855 (not ((_ is Concat!29304) r!14126)))))

(declare-fun e!4543618 () Bool)

(assert (=> b!7644358 (= e!4543618 e!4543619)))

(declare-fun b!7644359 () Bool)

(declare-fun e!4543620 () Bool)

(declare-fun call!701751 () Bool)

(assert (=> b!7644359 (= e!4543620 call!701751)))

(declare-fun d!2325413 () Bool)

(declare-fun res!3061852 () Bool)

(declare-fun e!4543616 () Bool)

(assert (=> d!2325413 (=> res!3061852 e!4543616)))

(assert (=> d!2325413 (= res!3061852 ((_ is ElementMatch!20459) r!14126))))

(assert (=> d!2325413 (= (validRegex!10877 r!14126) e!4543616)))

(declare-fun bm!701746 () Bool)

(declare-fun call!701753 () Bool)

(assert (=> bm!701746 (= call!701751 call!701753)))

(declare-fun bm!701747 () Bool)

(declare-fun call!701752 () Bool)

(declare-fun c!1408025 () Bool)

(assert (=> bm!701747 (= call!701752 (validRegex!10877 (ite c!1408025 (regOne!41431 r!14126) (regOne!41430 r!14126))))))

(declare-fun b!7644360 () Bool)

(declare-fun e!4543614 () Bool)

(assert (=> b!7644360 (= e!4543616 e!4543614)))

(declare-fun c!1408026 () Bool)

(assert (=> b!7644360 (= c!1408026 ((_ is Star!20459) r!14126))))

(declare-fun b!7644361 () Bool)

(declare-fun e!4543617 () Bool)

(assert (=> b!7644361 (= e!4543617 call!701751)))

(declare-fun b!7644362 () Bool)

(declare-fun e!4543615 () Bool)

(assert (=> b!7644362 (= e!4543615 call!701753)))

(declare-fun b!7644363 () Bool)

(assert (=> b!7644363 (= e!4543614 e!4543618)))

(assert (=> b!7644363 (= c!1408025 ((_ is Union!20459) r!14126))))

(declare-fun b!7644364 () Bool)

(assert (=> b!7644364 (= e!4543614 e!4543615)))

(declare-fun res!3061854 () Bool)

(declare-fun nullable!8961 (Regex!20459) Bool)

(assert (=> b!7644364 (= res!3061854 (not (nullable!8961 (reg!20788 r!14126))))))

(assert (=> b!7644364 (=> (not res!3061854) (not e!4543615))))

(declare-fun bm!701748 () Bool)

(assert (=> bm!701748 (= call!701753 (validRegex!10877 (ite c!1408026 (reg!20788 r!14126) (ite c!1408025 (regTwo!41431 r!14126) (regTwo!41430 r!14126)))))))

(declare-fun b!7644365 () Bool)

(declare-fun res!3061851 () Bool)

(assert (=> b!7644365 (=> (not res!3061851) (not e!4543617))))

(assert (=> b!7644365 (= res!3061851 call!701752)))

(assert (=> b!7644365 (= e!4543618 e!4543617)))

(declare-fun b!7644366 () Bool)

(assert (=> b!7644366 (= e!4543619 e!4543620)))

(declare-fun res!3061853 () Bool)

(assert (=> b!7644366 (=> (not res!3061853) (not e!4543620))))

(assert (=> b!7644366 (= res!3061853 call!701752)))

(assert (= (and d!2325413 (not res!3061852)) b!7644360))

(assert (= (and b!7644360 c!1408026) b!7644364))

(assert (= (and b!7644360 (not c!1408026)) b!7644363))

(assert (= (and b!7644364 res!3061854) b!7644362))

(assert (= (and b!7644363 c!1408025) b!7644365))

(assert (= (and b!7644363 (not c!1408025)) b!7644358))

(assert (= (and b!7644365 res!3061851) b!7644361))

(assert (= (and b!7644358 (not res!3061855)) b!7644366))

(assert (= (and b!7644366 res!3061853) b!7644359))

(assert (= (or b!7644365 b!7644366) bm!701747))

(assert (= (or b!7644361 b!7644359) bm!701746))

(assert (= (or b!7644362 bm!701746) bm!701748))

(declare-fun m!8164014 () Bool)

(assert (=> bm!701747 m!8164014))

(declare-fun m!8164016 () Bool)

(assert (=> b!7644364 m!8164016))

(declare-fun m!8164018 () Bool)

(assert (=> bm!701748 m!8164018))

(assert (=> start!735716 d!2325413))

(declare-fun d!2325417 () Bool)

(assert (=> d!2325417 (matchR!9960 (Union!20459 (regOne!41431 r!14126) (regTwo!41431 r!14126)) s!9605)))

(declare-fun lt!2660787 () Unit!167896)

(declare-fun choose!59025 (Regex!20459 Regex!20459 List!73310) Unit!167896)

(assert (=> d!2325417 (= lt!2660787 (choose!59025 (regOne!41431 r!14126) (regTwo!41431 r!14126) s!9605))))

(declare-fun e!4543625 () Bool)

(assert (=> d!2325417 e!4543625))

(declare-fun res!3061860 () Bool)

(assert (=> d!2325417 (=> (not res!3061860) (not e!4543625))))

(assert (=> d!2325417 (= res!3061860 (validRegex!10877 (regOne!41431 r!14126)))))

(assert (=> d!2325417 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!106 (regOne!41431 r!14126) (regTwo!41431 r!14126) s!9605) lt!2660787)))

(declare-fun b!7644371 () Bool)

(assert (=> b!7644371 (= e!4543625 (validRegex!10877 (regTwo!41431 r!14126)))))

(assert (= (and d!2325417 res!3061860) b!7644371))

(declare-fun m!8164020 () Bool)

(assert (=> d!2325417 m!8164020))

(declare-fun m!8164022 () Bool)

(assert (=> d!2325417 m!8164022))

(assert (=> d!2325417 m!8164012))

(assert (=> b!7644371 m!8164006))

(assert (=> b!7644330 d!2325417))

(declare-fun b!7644425 () Bool)

(declare-fun e!4543660 () Bool)

(declare-fun e!4543664 () Bool)

(assert (=> b!7644425 (= e!4543660 e!4543664)))

(declare-fun c!1408039 () Bool)

(assert (=> b!7644425 (= c!1408039 ((_ is EmptyLang!20459) r!14126))))

(declare-fun b!7644426 () Bool)

(declare-fun e!4543663 () Bool)

(declare-fun e!4543659 () Bool)

(assert (=> b!7644426 (= e!4543663 e!4543659)))

(declare-fun res!3061895 () Bool)

(assert (=> b!7644426 (=> (not res!3061895) (not e!4543659))))

(declare-fun lt!2660790 () Bool)

(assert (=> b!7644426 (= res!3061895 (not lt!2660790))))

(declare-fun b!7644427 () Bool)

(declare-fun res!3061894 () Bool)

(assert (=> b!7644427 (=> res!3061894 e!4543663)))

(assert (=> b!7644427 (= res!3061894 (not ((_ is ElementMatch!20459) r!14126)))))

(assert (=> b!7644427 (= e!4543664 e!4543663)))

(declare-fun d!2325419 () Bool)

(assert (=> d!2325419 e!4543660))

(declare-fun c!1408041 () Bool)

(assert (=> d!2325419 (= c!1408041 ((_ is EmptyExpr!20459) r!14126))))

(declare-fun e!4543665 () Bool)

(assert (=> d!2325419 (= lt!2660790 e!4543665)))

(declare-fun c!1408040 () Bool)

(declare-fun isEmpty!41812 (List!73310) Bool)

(assert (=> d!2325419 (= c!1408040 (isEmpty!41812 s!9605))))

(assert (=> d!2325419 (validRegex!10877 r!14126)))

(assert (=> d!2325419 (= (matchR!9960 r!14126 s!9605) lt!2660790)))

(declare-fun b!7644428 () Bool)

(assert (=> b!7644428 (= e!4543665 (nullable!8961 r!14126))))

(declare-fun b!7644429 () Bool)

(declare-fun e!4543662 () Bool)

(declare-fun head!15731 (List!73310) C!41244)

(assert (=> b!7644429 (= e!4543662 (not (= (head!15731 s!9605) (c!1408020 r!14126))))))

(declare-fun b!7644430 () Bool)

(declare-fun res!3061893 () Bool)

(assert (=> b!7644430 (=> res!3061893 e!4543663)))

(declare-fun e!4543661 () Bool)

(assert (=> b!7644430 (= res!3061893 e!4543661)))

(declare-fun res!3061890 () Bool)

(assert (=> b!7644430 (=> (not res!3061890) (not e!4543661))))

(assert (=> b!7644430 (= res!3061890 lt!2660790)))

(declare-fun b!7644431 () Bool)

(declare-fun call!701765 () Bool)

(assert (=> b!7644431 (= e!4543660 (= lt!2660790 call!701765))))

(declare-fun bm!701760 () Bool)

(assert (=> bm!701760 (= call!701765 (isEmpty!41812 s!9605))))

(declare-fun b!7644432 () Bool)

(declare-fun res!3061896 () Bool)

(assert (=> b!7644432 (=> (not res!3061896) (not e!4543661))))

(assert (=> b!7644432 (= res!3061896 (not call!701765))))

(declare-fun b!7644433 () Bool)

(declare-fun res!3061891 () Bool)

(assert (=> b!7644433 (=> (not res!3061891) (not e!4543661))))

(declare-fun tail!15271 (List!73310) List!73310)

(assert (=> b!7644433 (= res!3061891 (isEmpty!41812 (tail!15271 s!9605)))))

(declare-fun b!7644434 () Bool)

(declare-fun derivativeStep!5931 (Regex!20459 C!41244) Regex!20459)

(assert (=> b!7644434 (= e!4543665 (matchR!9960 (derivativeStep!5931 r!14126 (head!15731 s!9605)) (tail!15271 s!9605)))))

(declare-fun b!7644435 () Bool)

(assert (=> b!7644435 (= e!4543664 (not lt!2660790))))

(declare-fun b!7644436 () Bool)

(assert (=> b!7644436 (= e!4543661 (= (head!15731 s!9605) (c!1408020 r!14126)))))

(declare-fun b!7644437 () Bool)

(declare-fun res!3061892 () Bool)

(assert (=> b!7644437 (=> res!3061892 e!4543662)))

(assert (=> b!7644437 (= res!3061892 (not (isEmpty!41812 (tail!15271 s!9605))))))

(declare-fun b!7644438 () Bool)

(assert (=> b!7644438 (= e!4543659 e!4543662)))

(declare-fun res!3061897 () Bool)

(assert (=> b!7644438 (=> res!3061897 e!4543662)))

(assert (=> b!7644438 (= res!3061897 call!701765)))

(assert (= (and d!2325419 c!1408040) b!7644428))

(assert (= (and d!2325419 (not c!1408040)) b!7644434))

(assert (= (and d!2325419 c!1408041) b!7644431))

(assert (= (and d!2325419 (not c!1408041)) b!7644425))

(assert (= (and b!7644425 c!1408039) b!7644435))

(assert (= (and b!7644425 (not c!1408039)) b!7644427))

(assert (= (and b!7644427 (not res!3061894)) b!7644430))

(assert (= (and b!7644430 res!3061890) b!7644432))

(assert (= (and b!7644432 res!3061896) b!7644433))

(assert (= (and b!7644433 res!3061891) b!7644436))

(assert (= (and b!7644430 (not res!3061893)) b!7644426))

(assert (= (and b!7644426 res!3061895) b!7644438))

(assert (= (and b!7644438 (not res!3061897)) b!7644437))

(assert (= (and b!7644437 (not res!3061892)) b!7644429))

(assert (= (or b!7644431 b!7644432 b!7644438) bm!701760))

(declare-fun m!8164030 () Bool)

(assert (=> bm!701760 m!8164030))

(assert (=> d!2325419 m!8164030))

(assert (=> d!2325419 m!8164002))

(declare-fun m!8164032 () Bool)

(assert (=> b!7644428 m!8164032))

(declare-fun m!8164034 () Bool)

(assert (=> b!7644429 m!8164034))

(declare-fun m!8164036 () Bool)

(assert (=> b!7644433 m!8164036))

(assert (=> b!7644433 m!8164036))

(declare-fun m!8164038 () Bool)

(assert (=> b!7644433 m!8164038))

(assert (=> b!7644437 m!8164036))

(assert (=> b!7644437 m!8164036))

(assert (=> b!7644437 m!8164038))

(assert (=> b!7644436 m!8164034))

(assert (=> b!7644434 m!8164034))

(assert (=> b!7644434 m!8164034))

(declare-fun m!8164040 () Bool)

(assert (=> b!7644434 m!8164040))

(assert (=> b!7644434 m!8164036))

(assert (=> b!7644434 m!8164040))

(assert (=> b!7644434 m!8164036))

(declare-fun m!8164042 () Bool)

(assert (=> b!7644434 m!8164042))

(assert (=> b!7644330 d!2325419))

(declare-fun b!7644448 () Bool)

(declare-fun res!3061907 () Bool)

(declare-fun e!4543678 () Bool)

(assert (=> b!7644448 (=> res!3061907 e!4543678)))

(assert (=> b!7644448 (= res!3061907 (not ((_ is Concat!29304) (regTwo!41431 r!14126))))))

(declare-fun e!4543677 () Bool)

(assert (=> b!7644448 (= e!4543677 e!4543678)))

(declare-fun b!7644449 () Bool)

(declare-fun e!4543679 () Bool)

(declare-fun call!701769 () Bool)

(assert (=> b!7644449 (= e!4543679 call!701769)))

(declare-fun d!2325423 () Bool)

(declare-fun res!3061904 () Bool)

(declare-fun e!4543675 () Bool)

(assert (=> d!2325423 (=> res!3061904 e!4543675)))

(assert (=> d!2325423 (= res!3061904 ((_ is ElementMatch!20459) (regTwo!41431 r!14126)))))

(assert (=> d!2325423 (= (validRegex!10877 (regTwo!41431 r!14126)) e!4543675)))

(declare-fun bm!701764 () Bool)

(declare-fun call!701771 () Bool)

(assert (=> bm!701764 (= call!701769 call!701771)))

(declare-fun bm!701765 () Bool)

(declare-fun call!701770 () Bool)

(declare-fun c!1408044 () Bool)

(assert (=> bm!701765 (= call!701770 (validRegex!10877 (ite c!1408044 (regOne!41431 (regTwo!41431 r!14126)) (regOne!41430 (regTwo!41431 r!14126)))))))

(declare-fun b!7644450 () Bool)

(declare-fun e!4543673 () Bool)

(assert (=> b!7644450 (= e!4543675 e!4543673)))

(declare-fun c!1408045 () Bool)

(assert (=> b!7644450 (= c!1408045 ((_ is Star!20459) (regTwo!41431 r!14126)))))

(declare-fun b!7644451 () Bool)

(declare-fun e!4543676 () Bool)

(assert (=> b!7644451 (= e!4543676 call!701769)))

(declare-fun b!7644452 () Bool)

(declare-fun e!4543674 () Bool)

(assert (=> b!7644452 (= e!4543674 call!701771)))

(declare-fun b!7644453 () Bool)

(assert (=> b!7644453 (= e!4543673 e!4543677)))

(assert (=> b!7644453 (= c!1408044 ((_ is Union!20459) (regTwo!41431 r!14126)))))

(declare-fun b!7644454 () Bool)

(assert (=> b!7644454 (= e!4543673 e!4543674)))

(declare-fun res!3061906 () Bool)

(assert (=> b!7644454 (= res!3061906 (not (nullable!8961 (reg!20788 (regTwo!41431 r!14126)))))))

(assert (=> b!7644454 (=> (not res!3061906) (not e!4543674))))

(declare-fun bm!701766 () Bool)

(assert (=> bm!701766 (= call!701771 (validRegex!10877 (ite c!1408045 (reg!20788 (regTwo!41431 r!14126)) (ite c!1408044 (regTwo!41431 (regTwo!41431 r!14126)) (regTwo!41430 (regTwo!41431 r!14126))))))))

(declare-fun b!7644455 () Bool)

(declare-fun res!3061903 () Bool)

(assert (=> b!7644455 (=> (not res!3061903) (not e!4543676))))

(assert (=> b!7644455 (= res!3061903 call!701770)))

(assert (=> b!7644455 (= e!4543677 e!4543676)))

(declare-fun b!7644456 () Bool)

(assert (=> b!7644456 (= e!4543678 e!4543679)))

(declare-fun res!3061905 () Bool)

(assert (=> b!7644456 (=> (not res!3061905) (not e!4543679))))

(assert (=> b!7644456 (= res!3061905 call!701770)))

(assert (= (and d!2325423 (not res!3061904)) b!7644450))

(assert (= (and b!7644450 c!1408045) b!7644454))

(assert (= (and b!7644450 (not c!1408045)) b!7644453))

(assert (= (and b!7644454 res!3061906) b!7644452))

(assert (= (and b!7644453 c!1408044) b!7644455))

(assert (= (and b!7644453 (not c!1408044)) b!7644448))

(assert (= (and b!7644455 res!3061903) b!7644451))

(assert (= (and b!7644448 (not res!3061907)) b!7644456))

(assert (= (and b!7644456 res!3061905) b!7644449))

(assert (= (or b!7644455 b!7644456) bm!701765))

(assert (= (or b!7644451 b!7644449) bm!701764))

(assert (= (or b!7644452 bm!701764) bm!701766))

(declare-fun m!8164046 () Bool)

(assert (=> bm!701765 m!8164046))

(declare-fun m!8164048 () Bool)

(assert (=> b!7644454 m!8164048))

(declare-fun m!8164050 () Bool)

(assert (=> bm!701766 m!8164050))

(assert (=> b!7644336 d!2325423))

(declare-fun b!7644457 () Bool)

(declare-fun e!4543681 () Bool)

(declare-fun e!4543685 () Bool)

(assert (=> b!7644457 (= e!4543681 e!4543685)))

(declare-fun c!1408046 () Bool)

(assert (=> b!7644457 (= c!1408046 ((_ is EmptyLang!20459) (Union!20459 (regTwo!41431 r!14126) (regOne!41431 r!14126))))))

(declare-fun b!7644458 () Bool)

(declare-fun e!4543684 () Bool)

(declare-fun e!4543680 () Bool)

(assert (=> b!7644458 (= e!4543684 e!4543680)))

(declare-fun res!3061913 () Bool)

(assert (=> b!7644458 (=> (not res!3061913) (not e!4543680))))

(declare-fun lt!2660791 () Bool)

(assert (=> b!7644458 (= res!3061913 (not lt!2660791))))

(declare-fun b!7644459 () Bool)

(declare-fun res!3061912 () Bool)

(assert (=> b!7644459 (=> res!3061912 e!4543684)))

(assert (=> b!7644459 (= res!3061912 (not ((_ is ElementMatch!20459) (Union!20459 (regTwo!41431 r!14126) (regOne!41431 r!14126)))))))

(assert (=> b!7644459 (= e!4543685 e!4543684)))

(declare-fun d!2325425 () Bool)

(assert (=> d!2325425 e!4543681))

(declare-fun c!1408048 () Bool)

(assert (=> d!2325425 (= c!1408048 ((_ is EmptyExpr!20459) (Union!20459 (regTwo!41431 r!14126) (regOne!41431 r!14126))))))

(declare-fun e!4543686 () Bool)

(assert (=> d!2325425 (= lt!2660791 e!4543686)))

(declare-fun c!1408047 () Bool)

(assert (=> d!2325425 (= c!1408047 (isEmpty!41812 s!9605))))

(assert (=> d!2325425 (validRegex!10877 (Union!20459 (regTwo!41431 r!14126) (regOne!41431 r!14126)))))

(assert (=> d!2325425 (= (matchR!9960 (Union!20459 (regTwo!41431 r!14126) (regOne!41431 r!14126)) s!9605) lt!2660791)))

(declare-fun b!7644460 () Bool)

(assert (=> b!7644460 (= e!4543686 (nullable!8961 (Union!20459 (regTwo!41431 r!14126) (regOne!41431 r!14126))))))

(declare-fun b!7644461 () Bool)

(declare-fun e!4543683 () Bool)

(assert (=> b!7644461 (= e!4543683 (not (= (head!15731 s!9605) (c!1408020 (Union!20459 (regTwo!41431 r!14126) (regOne!41431 r!14126))))))))

(declare-fun b!7644462 () Bool)

(declare-fun res!3061911 () Bool)

(assert (=> b!7644462 (=> res!3061911 e!4543684)))

(declare-fun e!4543682 () Bool)

(assert (=> b!7644462 (= res!3061911 e!4543682)))

(declare-fun res!3061908 () Bool)

(assert (=> b!7644462 (=> (not res!3061908) (not e!4543682))))

(assert (=> b!7644462 (= res!3061908 lt!2660791)))

(declare-fun b!7644463 () Bool)

(declare-fun call!701772 () Bool)

(assert (=> b!7644463 (= e!4543681 (= lt!2660791 call!701772))))

(declare-fun bm!701767 () Bool)

(assert (=> bm!701767 (= call!701772 (isEmpty!41812 s!9605))))

(declare-fun b!7644464 () Bool)

(declare-fun res!3061914 () Bool)

(assert (=> b!7644464 (=> (not res!3061914) (not e!4543682))))

(assert (=> b!7644464 (= res!3061914 (not call!701772))))

(declare-fun b!7644465 () Bool)

(declare-fun res!3061909 () Bool)

(assert (=> b!7644465 (=> (not res!3061909) (not e!4543682))))

(assert (=> b!7644465 (= res!3061909 (isEmpty!41812 (tail!15271 s!9605)))))

(declare-fun b!7644466 () Bool)

(assert (=> b!7644466 (= e!4543686 (matchR!9960 (derivativeStep!5931 (Union!20459 (regTwo!41431 r!14126) (regOne!41431 r!14126)) (head!15731 s!9605)) (tail!15271 s!9605)))))

(declare-fun b!7644467 () Bool)

(assert (=> b!7644467 (= e!4543685 (not lt!2660791))))

(declare-fun b!7644468 () Bool)

(assert (=> b!7644468 (= e!4543682 (= (head!15731 s!9605) (c!1408020 (Union!20459 (regTwo!41431 r!14126) (regOne!41431 r!14126)))))))

(declare-fun b!7644469 () Bool)

(declare-fun res!3061910 () Bool)

(assert (=> b!7644469 (=> res!3061910 e!4543683)))

(assert (=> b!7644469 (= res!3061910 (not (isEmpty!41812 (tail!15271 s!9605))))))

(declare-fun b!7644470 () Bool)

(assert (=> b!7644470 (= e!4543680 e!4543683)))

(declare-fun res!3061915 () Bool)

(assert (=> b!7644470 (=> res!3061915 e!4543683)))

(assert (=> b!7644470 (= res!3061915 call!701772)))

(assert (= (and d!2325425 c!1408047) b!7644460))

(assert (= (and d!2325425 (not c!1408047)) b!7644466))

(assert (= (and d!2325425 c!1408048) b!7644463))

(assert (= (and d!2325425 (not c!1408048)) b!7644457))

(assert (= (and b!7644457 c!1408046) b!7644467))

(assert (= (and b!7644457 (not c!1408046)) b!7644459))

(assert (= (and b!7644459 (not res!3061912)) b!7644462))

(assert (= (and b!7644462 res!3061908) b!7644464))

(assert (= (and b!7644464 res!3061914) b!7644465))

(assert (= (and b!7644465 res!3061909) b!7644468))

(assert (= (and b!7644462 (not res!3061911)) b!7644458))

(assert (= (and b!7644458 res!3061913) b!7644470))

(assert (= (and b!7644470 (not res!3061915)) b!7644469))

(assert (= (and b!7644469 (not res!3061910)) b!7644461))

(assert (= (or b!7644463 b!7644464 b!7644470) bm!701767))

(assert (=> bm!701767 m!8164030))

(assert (=> d!2325425 m!8164030))

(declare-fun m!8164056 () Bool)

(assert (=> d!2325425 m!8164056))

(declare-fun m!8164058 () Bool)

(assert (=> b!7644460 m!8164058))

(assert (=> b!7644461 m!8164034))

(assert (=> b!7644465 m!8164036))

(assert (=> b!7644465 m!8164036))

(assert (=> b!7644465 m!8164038))

(assert (=> b!7644469 m!8164036))

(assert (=> b!7644469 m!8164036))

(assert (=> b!7644469 m!8164038))

(assert (=> b!7644468 m!8164034))

(assert (=> b!7644466 m!8164034))

(assert (=> b!7644466 m!8164034))

(declare-fun m!8164060 () Bool)

(assert (=> b!7644466 m!8164060))

(assert (=> b!7644466 m!8164036))

(assert (=> b!7644466 m!8164060))

(assert (=> b!7644466 m!8164036))

(declare-fun m!8164062 () Bool)

(assert (=> b!7644466 m!8164062))

(assert (=> b!7644336 d!2325425))

(declare-fun d!2325429 () Bool)

(assert (=> d!2325429 (matchR!9960 (Union!20459 (regTwo!41431 r!14126) (regOne!41431 r!14126)) s!9605)))

(declare-fun lt!2660792 () Unit!167896)

(assert (=> d!2325429 (= lt!2660792 (choose!59025 (regTwo!41431 r!14126) (regOne!41431 r!14126) s!9605))))

(declare-fun e!4543687 () Bool)

(assert (=> d!2325429 e!4543687))

(declare-fun res!3061916 () Bool)

(assert (=> d!2325429 (=> (not res!3061916) (not e!4543687))))

(assert (=> d!2325429 (= res!3061916 (validRegex!10877 (regTwo!41431 r!14126)))))

(assert (=> d!2325429 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!106 (regTwo!41431 r!14126) (regOne!41431 r!14126) s!9605) lt!2660792)))

(declare-fun b!7644471 () Bool)

(assert (=> b!7644471 (= e!4543687 (validRegex!10877 (regOne!41431 r!14126)))))

(assert (= (and d!2325429 res!3061916) b!7644471))

(assert (=> d!2325429 m!8164008))

(declare-fun m!8164064 () Bool)

(assert (=> d!2325429 m!8164064))

(assert (=> d!2325429 m!8164006))

(assert (=> b!7644471 m!8164012))

(assert (=> b!7644336 d!2325429))

(assert (=> b!7644333 d!2325419))

(declare-fun b!7644472 () Bool)

(declare-fun e!4543689 () Bool)

(declare-fun e!4543693 () Bool)

(assert (=> b!7644472 (= e!4543689 e!4543693)))

(declare-fun c!1408049 () Bool)

(assert (=> b!7644472 (= c!1408049 ((_ is EmptyLang!20459) (regTwo!41431 r!14126)))))

(declare-fun b!7644473 () Bool)

(declare-fun e!4543692 () Bool)

(declare-fun e!4543688 () Bool)

(assert (=> b!7644473 (= e!4543692 e!4543688)))

(declare-fun res!3061922 () Bool)

(assert (=> b!7644473 (=> (not res!3061922) (not e!4543688))))

(declare-fun lt!2660793 () Bool)

(assert (=> b!7644473 (= res!3061922 (not lt!2660793))))

(declare-fun b!7644474 () Bool)

(declare-fun res!3061921 () Bool)

(assert (=> b!7644474 (=> res!3061921 e!4543692)))

(assert (=> b!7644474 (= res!3061921 (not ((_ is ElementMatch!20459) (regTwo!41431 r!14126))))))

(assert (=> b!7644474 (= e!4543693 e!4543692)))

(declare-fun d!2325431 () Bool)

(assert (=> d!2325431 e!4543689))

(declare-fun c!1408051 () Bool)

(assert (=> d!2325431 (= c!1408051 ((_ is EmptyExpr!20459) (regTwo!41431 r!14126)))))

(declare-fun e!4543694 () Bool)

(assert (=> d!2325431 (= lt!2660793 e!4543694)))

(declare-fun c!1408050 () Bool)

(assert (=> d!2325431 (= c!1408050 (isEmpty!41812 s!9605))))

(assert (=> d!2325431 (validRegex!10877 (regTwo!41431 r!14126))))

(assert (=> d!2325431 (= (matchR!9960 (regTwo!41431 r!14126) s!9605) lt!2660793)))

(declare-fun b!7644475 () Bool)

(assert (=> b!7644475 (= e!4543694 (nullable!8961 (regTwo!41431 r!14126)))))

(declare-fun b!7644476 () Bool)

(declare-fun e!4543691 () Bool)

(assert (=> b!7644476 (= e!4543691 (not (= (head!15731 s!9605) (c!1408020 (regTwo!41431 r!14126)))))))

(declare-fun b!7644477 () Bool)

(declare-fun res!3061920 () Bool)

(assert (=> b!7644477 (=> res!3061920 e!4543692)))

(declare-fun e!4543690 () Bool)

(assert (=> b!7644477 (= res!3061920 e!4543690)))

(declare-fun res!3061917 () Bool)

(assert (=> b!7644477 (=> (not res!3061917) (not e!4543690))))

(assert (=> b!7644477 (= res!3061917 lt!2660793)))

(declare-fun b!7644478 () Bool)

(declare-fun call!701773 () Bool)

(assert (=> b!7644478 (= e!4543689 (= lt!2660793 call!701773))))

(declare-fun bm!701768 () Bool)

(assert (=> bm!701768 (= call!701773 (isEmpty!41812 s!9605))))

(declare-fun b!7644479 () Bool)

(declare-fun res!3061923 () Bool)

(assert (=> b!7644479 (=> (not res!3061923) (not e!4543690))))

(assert (=> b!7644479 (= res!3061923 (not call!701773))))

(declare-fun b!7644480 () Bool)

(declare-fun res!3061918 () Bool)

(assert (=> b!7644480 (=> (not res!3061918) (not e!4543690))))

(assert (=> b!7644480 (= res!3061918 (isEmpty!41812 (tail!15271 s!9605)))))

(declare-fun b!7644481 () Bool)

(assert (=> b!7644481 (= e!4543694 (matchR!9960 (derivativeStep!5931 (regTwo!41431 r!14126) (head!15731 s!9605)) (tail!15271 s!9605)))))

(declare-fun b!7644482 () Bool)

(assert (=> b!7644482 (= e!4543693 (not lt!2660793))))

(declare-fun b!7644483 () Bool)

(assert (=> b!7644483 (= e!4543690 (= (head!15731 s!9605) (c!1408020 (regTwo!41431 r!14126))))))

(declare-fun b!7644484 () Bool)

(declare-fun res!3061919 () Bool)

(assert (=> b!7644484 (=> res!3061919 e!4543691)))

(assert (=> b!7644484 (= res!3061919 (not (isEmpty!41812 (tail!15271 s!9605))))))

(declare-fun b!7644485 () Bool)

(assert (=> b!7644485 (= e!4543688 e!4543691)))

(declare-fun res!3061924 () Bool)

(assert (=> b!7644485 (=> res!3061924 e!4543691)))

(assert (=> b!7644485 (= res!3061924 call!701773)))

(assert (= (and d!2325431 c!1408050) b!7644475))

(assert (= (and d!2325431 (not c!1408050)) b!7644481))

(assert (= (and d!2325431 c!1408051) b!7644478))

(assert (= (and d!2325431 (not c!1408051)) b!7644472))

(assert (= (and b!7644472 c!1408049) b!7644482))

(assert (= (and b!7644472 (not c!1408049)) b!7644474))

(assert (= (and b!7644474 (not res!3061921)) b!7644477))

(assert (= (and b!7644477 res!3061917) b!7644479))

(assert (= (and b!7644479 res!3061923) b!7644480))

(assert (= (and b!7644480 res!3061918) b!7644483))

(assert (= (and b!7644477 (not res!3061920)) b!7644473))

(assert (= (and b!7644473 res!3061922) b!7644485))

(assert (= (and b!7644485 (not res!3061924)) b!7644484))

(assert (= (and b!7644484 (not res!3061919)) b!7644476))

(assert (= (or b!7644478 b!7644479 b!7644485) bm!701768))

(assert (=> bm!701768 m!8164030))

(assert (=> d!2325431 m!8164030))

(assert (=> d!2325431 m!8164006))

(declare-fun m!8164066 () Bool)

(assert (=> b!7644475 m!8164066))

(assert (=> b!7644476 m!8164034))

(assert (=> b!7644480 m!8164036))

(assert (=> b!7644480 m!8164036))

(assert (=> b!7644480 m!8164038))

(assert (=> b!7644484 m!8164036))

(assert (=> b!7644484 m!8164036))

(assert (=> b!7644484 m!8164038))

(assert (=> b!7644483 m!8164034))

(assert (=> b!7644481 m!8164034))

(assert (=> b!7644481 m!8164034))

(declare-fun m!8164068 () Bool)

(assert (=> b!7644481 m!8164068))

(assert (=> b!7644481 m!8164036))

(assert (=> b!7644481 m!8164068))

(assert (=> b!7644481 m!8164036))

(declare-fun m!8164070 () Bool)

(assert (=> b!7644481 m!8164070))

(assert (=> b!7644339 d!2325431))

(declare-fun b!7644486 () Bool)

(declare-fun e!4543696 () Bool)

(declare-fun e!4543700 () Bool)

(assert (=> b!7644486 (= e!4543696 e!4543700)))

(declare-fun c!1408052 () Bool)

(assert (=> b!7644486 (= c!1408052 ((_ is EmptyLang!20459) (regOne!41431 r!14126)))))

(declare-fun b!7644487 () Bool)

(declare-fun e!4543699 () Bool)

(declare-fun e!4543695 () Bool)

(assert (=> b!7644487 (= e!4543699 e!4543695)))

(declare-fun res!3061930 () Bool)

(assert (=> b!7644487 (=> (not res!3061930) (not e!4543695))))

(declare-fun lt!2660794 () Bool)

(assert (=> b!7644487 (= res!3061930 (not lt!2660794))))

(declare-fun b!7644488 () Bool)

(declare-fun res!3061929 () Bool)

(assert (=> b!7644488 (=> res!3061929 e!4543699)))

(assert (=> b!7644488 (= res!3061929 (not ((_ is ElementMatch!20459) (regOne!41431 r!14126))))))

(assert (=> b!7644488 (= e!4543700 e!4543699)))

(declare-fun d!2325433 () Bool)

(assert (=> d!2325433 e!4543696))

(declare-fun c!1408054 () Bool)

(assert (=> d!2325433 (= c!1408054 ((_ is EmptyExpr!20459) (regOne!41431 r!14126)))))

(declare-fun e!4543701 () Bool)

(assert (=> d!2325433 (= lt!2660794 e!4543701)))

(declare-fun c!1408053 () Bool)

(assert (=> d!2325433 (= c!1408053 (isEmpty!41812 s!9605))))

(assert (=> d!2325433 (validRegex!10877 (regOne!41431 r!14126))))

(assert (=> d!2325433 (= (matchR!9960 (regOne!41431 r!14126) s!9605) lt!2660794)))

(declare-fun b!7644489 () Bool)

(assert (=> b!7644489 (= e!4543701 (nullable!8961 (regOne!41431 r!14126)))))

(declare-fun b!7644490 () Bool)

(declare-fun e!4543698 () Bool)

(assert (=> b!7644490 (= e!4543698 (not (= (head!15731 s!9605) (c!1408020 (regOne!41431 r!14126)))))))

(declare-fun b!7644491 () Bool)

(declare-fun res!3061928 () Bool)

(assert (=> b!7644491 (=> res!3061928 e!4543699)))

(declare-fun e!4543697 () Bool)

(assert (=> b!7644491 (= res!3061928 e!4543697)))

(declare-fun res!3061925 () Bool)

(assert (=> b!7644491 (=> (not res!3061925) (not e!4543697))))

(assert (=> b!7644491 (= res!3061925 lt!2660794)))

(declare-fun b!7644492 () Bool)

(declare-fun call!701774 () Bool)

(assert (=> b!7644492 (= e!4543696 (= lt!2660794 call!701774))))

(declare-fun bm!701769 () Bool)

(assert (=> bm!701769 (= call!701774 (isEmpty!41812 s!9605))))

(declare-fun b!7644493 () Bool)

(declare-fun res!3061931 () Bool)

(assert (=> b!7644493 (=> (not res!3061931) (not e!4543697))))

(assert (=> b!7644493 (= res!3061931 (not call!701774))))

(declare-fun b!7644494 () Bool)

(declare-fun res!3061926 () Bool)

(assert (=> b!7644494 (=> (not res!3061926) (not e!4543697))))

(assert (=> b!7644494 (= res!3061926 (isEmpty!41812 (tail!15271 s!9605)))))

(declare-fun b!7644495 () Bool)

(assert (=> b!7644495 (= e!4543701 (matchR!9960 (derivativeStep!5931 (regOne!41431 r!14126) (head!15731 s!9605)) (tail!15271 s!9605)))))

(declare-fun b!7644496 () Bool)

(assert (=> b!7644496 (= e!4543700 (not lt!2660794))))

(declare-fun b!7644497 () Bool)

(assert (=> b!7644497 (= e!4543697 (= (head!15731 s!9605) (c!1408020 (regOne!41431 r!14126))))))

(declare-fun b!7644498 () Bool)

(declare-fun res!3061927 () Bool)

(assert (=> b!7644498 (=> res!3061927 e!4543698)))

(assert (=> b!7644498 (= res!3061927 (not (isEmpty!41812 (tail!15271 s!9605))))))

(declare-fun b!7644499 () Bool)

(assert (=> b!7644499 (= e!4543695 e!4543698)))

(declare-fun res!3061932 () Bool)

(assert (=> b!7644499 (=> res!3061932 e!4543698)))

(assert (=> b!7644499 (= res!3061932 call!701774)))

(assert (= (and d!2325433 c!1408053) b!7644489))

(assert (= (and d!2325433 (not c!1408053)) b!7644495))

(assert (= (and d!2325433 c!1408054) b!7644492))

(assert (= (and d!2325433 (not c!1408054)) b!7644486))

(assert (= (and b!7644486 c!1408052) b!7644496))

(assert (= (and b!7644486 (not c!1408052)) b!7644488))

(assert (= (and b!7644488 (not res!3061929)) b!7644491))

(assert (= (and b!7644491 res!3061925) b!7644493))

(assert (= (and b!7644493 res!3061931) b!7644494))

(assert (= (and b!7644494 res!3061926) b!7644497))

(assert (= (and b!7644491 (not res!3061928)) b!7644487))

(assert (= (and b!7644487 res!3061930) b!7644499))

(assert (= (and b!7644499 (not res!3061932)) b!7644498))

(assert (= (and b!7644498 (not res!3061927)) b!7644490))

(assert (= (or b!7644492 b!7644493 b!7644499) bm!701769))

(assert (=> bm!701769 m!8164030))

(assert (=> d!2325433 m!8164030))

(assert (=> d!2325433 m!8164012))

(declare-fun m!8164072 () Bool)

(assert (=> b!7644489 m!8164072))

(assert (=> b!7644490 m!8164034))

(assert (=> b!7644494 m!8164036))

(assert (=> b!7644494 m!8164036))

(assert (=> b!7644494 m!8164038))

(assert (=> b!7644498 m!8164036))

(assert (=> b!7644498 m!8164036))

(assert (=> b!7644498 m!8164038))

(assert (=> b!7644497 m!8164034))

(assert (=> b!7644495 m!8164034))

(assert (=> b!7644495 m!8164034))

(declare-fun m!8164074 () Bool)

(assert (=> b!7644495 m!8164074))

(assert (=> b!7644495 m!8164036))

(assert (=> b!7644495 m!8164074))

(assert (=> b!7644495 m!8164036))

(declare-fun m!8164076 () Bool)

(assert (=> b!7644495 m!8164076))

(assert (=> b!7644339 d!2325433))

(declare-fun b!7644500 () Bool)

(declare-fun res!3061937 () Bool)

(declare-fun e!4543707 () Bool)

(assert (=> b!7644500 (=> res!3061937 e!4543707)))

(assert (=> b!7644500 (= res!3061937 (not ((_ is Concat!29304) (regOne!41431 r!14126))))))

(declare-fun e!4543706 () Bool)

(assert (=> b!7644500 (= e!4543706 e!4543707)))

(declare-fun b!7644501 () Bool)

(declare-fun e!4543708 () Bool)

(declare-fun call!701775 () Bool)

(assert (=> b!7644501 (= e!4543708 call!701775)))

(declare-fun d!2325435 () Bool)

(declare-fun res!3061934 () Bool)

(declare-fun e!4543704 () Bool)

(assert (=> d!2325435 (=> res!3061934 e!4543704)))

(assert (=> d!2325435 (= res!3061934 ((_ is ElementMatch!20459) (regOne!41431 r!14126)))))

(assert (=> d!2325435 (= (validRegex!10877 (regOne!41431 r!14126)) e!4543704)))

(declare-fun bm!701770 () Bool)

(declare-fun call!701777 () Bool)

(assert (=> bm!701770 (= call!701775 call!701777)))

(declare-fun bm!701771 () Bool)

(declare-fun call!701776 () Bool)

(declare-fun c!1408055 () Bool)

(assert (=> bm!701771 (= call!701776 (validRegex!10877 (ite c!1408055 (regOne!41431 (regOne!41431 r!14126)) (regOne!41430 (regOne!41431 r!14126)))))))

(declare-fun b!7644502 () Bool)

(declare-fun e!4543702 () Bool)

(assert (=> b!7644502 (= e!4543704 e!4543702)))

(declare-fun c!1408056 () Bool)

(assert (=> b!7644502 (= c!1408056 ((_ is Star!20459) (regOne!41431 r!14126)))))

(declare-fun b!7644503 () Bool)

(declare-fun e!4543705 () Bool)

(assert (=> b!7644503 (= e!4543705 call!701775)))

(declare-fun b!7644504 () Bool)

(declare-fun e!4543703 () Bool)

(assert (=> b!7644504 (= e!4543703 call!701777)))

(declare-fun b!7644505 () Bool)

(assert (=> b!7644505 (= e!4543702 e!4543706)))

(assert (=> b!7644505 (= c!1408055 ((_ is Union!20459) (regOne!41431 r!14126)))))

(declare-fun b!7644506 () Bool)

(assert (=> b!7644506 (= e!4543702 e!4543703)))

(declare-fun res!3061936 () Bool)

(assert (=> b!7644506 (= res!3061936 (not (nullable!8961 (reg!20788 (regOne!41431 r!14126)))))))

(assert (=> b!7644506 (=> (not res!3061936) (not e!4543703))))

(declare-fun bm!701772 () Bool)

(assert (=> bm!701772 (= call!701777 (validRegex!10877 (ite c!1408056 (reg!20788 (regOne!41431 r!14126)) (ite c!1408055 (regTwo!41431 (regOne!41431 r!14126)) (regTwo!41430 (regOne!41431 r!14126))))))))

(declare-fun b!7644507 () Bool)

(declare-fun res!3061933 () Bool)

(assert (=> b!7644507 (=> (not res!3061933) (not e!4543705))))

(assert (=> b!7644507 (= res!3061933 call!701776)))

(assert (=> b!7644507 (= e!4543706 e!4543705)))

(declare-fun b!7644508 () Bool)

(assert (=> b!7644508 (= e!4543707 e!4543708)))

(declare-fun res!3061935 () Bool)

(assert (=> b!7644508 (=> (not res!3061935) (not e!4543708))))

(assert (=> b!7644508 (= res!3061935 call!701776)))

(assert (= (and d!2325435 (not res!3061934)) b!7644502))

(assert (= (and b!7644502 c!1408056) b!7644506))

(assert (= (and b!7644502 (not c!1408056)) b!7644505))

(assert (= (and b!7644506 res!3061936) b!7644504))

(assert (= (and b!7644505 c!1408055) b!7644507))

(assert (= (and b!7644505 (not c!1408055)) b!7644500))

(assert (= (and b!7644507 res!3061933) b!7644503))

(assert (= (and b!7644500 (not res!3061937)) b!7644508))

(assert (= (and b!7644508 res!3061935) b!7644501))

(assert (= (or b!7644507 b!7644508) bm!701771))

(assert (= (or b!7644503 b!7644501) bm!701770))

(assert (= (or b!7644504 bm!701770) bm!701772))

(declare-fun m!8164078 () Bool)

(assert (=> bm!701771 m!8164078))

(declare-fun m!8164080 () Bool)

(assert (=> b!7644506 m!8164080))

(declare-fun m!8164082 () Bool)

(assert (=> bm!701772 m!8164082))

(assert (=> b!7644335 d!2325435))

(declare-fun e!4543711 () Bool)

(assert (=> b!7644331 (= tp!2231449 e!4543711)))

(declare-fun b!7644522 () Bool)

(declare-fun tp!2231462 () Bool)

(declare-fun tp!2231464 () Bool)

(assert (=> b!7644522 (= e!4543711 (and tp!2231462 tp!2231464))))

(declare-fun b!7644521 () Bool)

(declare-fun tp!2231463 () Bool)

(assert (=> b!7644521 (= e!4543711 tp!2231463)))

(declare-fun b!7644519 () Bool)

(assert (=> b!7644519 (= e!4543711 tp_is_empty!51273)))

(declare-fun b!7644520 () Bool)

(declare-fun tp!2231460 () Bool)

(declare-fun tp!2231461 () Bool)

(assert (=> b!7644520 (= e!4543711 (and tp!2231460 tp!2231461))))

(assert (= (and b!7644331 ((_ is ElementMatch!20459) (reg!20788 r!14126))) b!7644519))

(assert (= (and b!7644331 ((_ is Concat!29304) (reg!20788 r!14126))) b!7644520))

(assert (= (and b!7644331 ((_ is Star!20459) (reg!20788 r!14126))) b!7644521))

(assert (= (and b!7644331 ((_ is Union!20459) (reg!20788 r!14126))) b!7644522))

(declare-fun e!4543712 () Bool)

(assert (=> b!7644332 (= tp!2231445 e!4543712)))

(declare-fun b!7644526 () Bool)

(declare-fun tp!2231467 () Bool)

(declare-fun tp!2231469 () Bool)

(assert (=> b!7644526 (= e!4543712 (and tp!2231467 tp!2231469))))

(declare-fun b!7644525 () Bool)

(declare-fun tp!2231468 () Bool)

(assert (=> b!7644525 (= e!4543712 tp!2231468)))

(declare-fun b!7644523 () Bool)

(assert (=> b!7644523 (= e!4543712 tp_is_empty!51273)))

(declare-fun b!7644524 () Bool)

(declare-fun tp!2231465 () Bool)

(declare-fun tp!2231466 () Bool)

(assert (=> b!7644524 (= e!4543712 (and tp!2231465 tp!2231466))))

(assert (= (and b!7644332 ((_ is ElementMatch!20459) (regOne!41430 r!14126))) b!7644523))

(assert (= (and b!7644332 ((_ is Concat!29304) (regOne!41430 r!14126))) b!7644524))

(assert (= (and b!7644332 ((_ is Star!20459) (regOne!41430 r!14126))) b!7644525))

(assert (= (and b!7644332 ((_ is Union!20459) (regOne!41430 r!14126))) b!7644526))

(declare-fun e!4543713 () Bool)

(assert (=> b!7644332 (= tp!2231448 e!4543713)))

(declare-fun b!7644530 () Bool)

(declare-fun tp!2231472 () Bool)

(declare-fun tp!2231474 () Bool)

(assert (=> b!7644530 (= e!4543713 (and tp!2231472 tp!2231474))))

(declare-fun b!7644529 () Bool)

(declare-fun tp!2231473 () Bool)

(assert (=> b!7644529 (= e!4543713 tp!2231473)))

(declare-fun b!7644527 () Bool)

(assert (=> b!7644527 (= e!4543713 tp_is_empty!51273)))

(declare-fun b!7644528 () Bool)

(declare-fun tp!2231470 () Bool)

(declare-fun tp!2231471 () Bool)

(assert (=> b!7644528 (= e!4543713 (and tp!2231470 tp!2231471))))

(assert (= (and b!7644332 ((_ is ElementMatch!20459) (regTwo!41430 r!14126))) b!7644527))

(assert (= (and b!7644332 ((_ is Concat!29304) (regTwo!41430 r!14126))) b!7644528))

(assert (= (and b!7644332 ((_ is Star!20459) (regTwo!41430 r!14126))) b!7644529))

(assert (= (and b!7644332 ((_ is Union!20459) (regTwo!41430 r!14126))) b!7644530))

(declare-fun e!4543714 () Bool)

(assert (=> b!7644327 (= tp!2231444 e!4543714)))

(declare-fun b!7644534 () Bool)

(declare-fun tp!2231477 () Bool)

(declare-fun tp!2231479 () Bool)

(assert (=> b!7644534 (= e!4543714 (and tp!2231477 tp!2231479))))

(declare-fun b!7644533 () Bool)

(declare-fun tp!2231478 () Bool)

(assert (=> b!7644533 (= e!4543714 tp!2231478)))

(declare-fun b!7644531 () Bool)

(assert (=> b!7644531 (= e!4543714 tp_is_empty!51273)))

(declare-fun b!7644532 () Bool)

(declare-fun tp!2231475 () Bool)

(declare-fun tp!2231476 () Bool)

(assert (=> b!7644532 (= e!4543714 (and tp!2231475 tp!2231476))))

(assert (= (and b!7644327 ((_ is ElementMatch!20459) (regOne!41431 r!14126))) b!7644531))

(assert (= (and b!7644327 ((_ is Concat!29304) (regOne!41431 r!14126))) b!7644532))

(assert (= (and b!7644327 ((_ is Star!20459) (regOne!41431 r!14126))) b!7644533))

(assert (= (and b!7644327 ((_ is Union!20459) (regOne!41431 r!14126))) b!7644534))

(declare-fun e!4543715 () Bool)

(assert (=> b!7644327 (= tp!2231446 e!4543715)))

(declare-fun b!7644538 () Bool)

(declare-fun tp!2231482 () Bool)

(declare-fun tp!2231484 () Bool)

(assert (=> b!7644538 (= e!4543715 (and tp!2231482 tp!2231484))))

(declare-fun b!7644537 () Bool)

(declare-fun tp!2231483 () Bool)

(assert (=> b!7644537 (= e!4543715 tp!2231483)))

(declare-fun b!7644535 () Bool)

(assert (=> b!7644535 (= e!4543715 tp_is_empty!51273)))

(declare-fun b!7644536 () Bool)

(declare-fun tp!2231480 () Bool)

(declare-fun tp!2231481 () Bool)

(assert (=> b!7644536 (= e!4543715 (and tp!2231480 tp!2231481))))

(assert (= (and b!7644327 ((_ is ElementMatch!20459) (regTwo!41431 r!14126))) b!7644535))

(assert (= (and b!7644327 ((_ is Concat!29304) (regTwo!41431 r!14126))) b!7644536))

(assert (= (and b!7644327 ((_ is Star!20459) (regTwo!41431 r!14126))) b!7644537))

(assert (= (and b!7644327 ((_ is Union!20459) (regTwo!41431 r!14126))) b!7644538))

(declare-fun b!7644543 () Bool)

(declare-fun e!4543718 () Bool)

(declare-fun tp!2231487 () Bool)

(assert (=> b!7644543 (= e!4543718 (and tp_is_empty!51273 tp!2231487))))

(assert (=> b!7644338 (= tp!2231447 e!4543718)))

(assert (= (and b!7644338 ((_ is Cons!73186) (t!388045 s!9605))) b!7644543))

(check-sat (not b!7644364) (not b!7644481) (not d!2325433) (not b!7644480) (not d!2325429) (not b!7644476) (not b!7644525) (not b!7644469) (not b!7644484) (not b!7644465) (not b!7644460) (not b!7644506) (not bm!701767) (not b!7644483) (not b!7644498) (not bm!701747) (not b!7644538) (not b!7644536) (not b!7644543) (not b!7644495) (not b!7644434) (not b!7644471) (not b!7644529) (not b!7644497) (not bm!701760) (not b!7644528) (not d!2325419) (not b!7644534) (not b!7644494) (not d!2325425) (not b!7644489) (not b!7644429) (not b!7644436) (not b!7644521) (not b!7644433) (not b!7644537) (not b!7644468) (not bm!701766) (not bm!701768) (not b!7644461) (not bm!701765) (not b!7644371) (not b!7644526) (not b!7644533) (not b!7644466) (not bm!701772) (not b!7644428) (not bm!701769) (not bm!701771) tp_is_empty!51273 (not d!2325431) (not d!2325417) (not b!7644532) (not b!7644490) (not b!7644437) (not bm!701748) (not b!7644520) (not b!7644454) (not b!7644522) (not b!7644475) (not b!7644524) (not b!7644530))
(check-sat)
