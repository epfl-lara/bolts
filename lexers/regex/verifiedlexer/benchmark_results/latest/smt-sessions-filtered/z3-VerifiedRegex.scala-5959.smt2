; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291812 () Bool)

(assert start!291812)

(declare-fun b!3054744 () Bool)

(declare-fun e!1913410 () Bool)

(declare-fun tp_is_empty!16501 () Bool)

(declare-fun tp!966317 () Bool)

(assert (=> b!3054744 (= e!1913410 (and tp_is_empty!16501 tp!966317))))

(declare-fun b!3054745 () Bool)

(declare-fun e!1913408 () Bool)

(declare-fun tp!966316 () Bool)

(declare-fun tp!966320 () Bool)

(assert (=> b!3054745 (= e!1913408 (and tp!966316 tp!966320))))

(declare-fun res!1254646 () Bool)

(declare-fun e!1913411 () Bool)

(assert (=> start!291812 (=> (not res!1254646) (not e!1913411))))

(declare-datatypes ((C!19124 0))(
  ( (C!19125 (val!11598 Int)) )
))
(declare-datatypes ((Regex!9469 0))(
  ( (ElementMatch!9469 (c!506501 C!19124)) (Concat!14790 (regOne!19450 Regex!9469) (regTwo!19450 Regex!9469)) (EmptyExpr!9469) (Star!9469 (reg!9798 Regex!9469)) (EmptyLang!9469) (Union!9469 (regOne!19451 Regex!9469) (regTwo!19451 Regex!9469)) )
))
(declare-fun r!17423 () Regex!9469)

(declare-fun validRegex!4202 (Regex!9469) Bool)

(assert (=> start!291812 (= res!1254646 (validRegex!4202 r!17423))))

(assert (=> start!291812 e!1913411))

(assert (=> start!291812 e!1913408))

(assert (=> start!291812 e!1913410))

(declare-fun b!3054746 () Bool)

(declare-fun res!1254648 () Bool)

(declare-fun e!1913409 () Bool)

(assert (=> b!3054746 (=> res!1254648 e!1913409)))

(declare-datatypes ((List!35334 0))(
  ( (Nil!35210) (Cons!35210 (h!40630 C!19124) (t!234399 List!35334)) )
))
(declare-fun s!11993 () List!35334)

(declare-fun isEmpty!19525 (List!35334) Bool)

(assert (=> b!3054746 (= res!1254648 (isEmpty!19525 s!11993))))

(declare-fun b!3054747 () Bool)

(declare-fun tp!966318 () Bool)

(assert (=> b!3054747 (= e!1913408 tp!966318)))

(declare-fun b!3054748 () Bool)

(declare-fun tp!966319 () Bool)

(declare-fun tp!966321 () Bool)

(assert (=> b!3054748 (= e!1913408 (and tp!966319 tp!966321))))

(declare-fun b!3054749 () Bool)

(declare-fun e!1913407 () Bool)

(assert (=> b!3054749 (= e!1913409 e!1913407)))

(declare-fun res!1254647 () Bool)

(assert (=> b!3054749 (=> res!1254647 e!1913407)))

(declare-fun lt!1048901 () Regex!9469)

(declare-fun isEmptyLang!520 (Regex!9469) Bool)

(assert (=> b!3054749 (= res!1254647 (not (isEmptyLang!520 lt!1048901)))))

(declare-fun lt!1048898 () Regex!9469)

(declare-fun simplify!424 (Regex!9469) Regex!9469)

(assert (=> b!3054749 (= lt!1048898 (simplify!424 (regTwo!19450 r!17423)))))

(assert (=> b!3054749 (= lt!1048901 (simplify!424 (regOne!19450 r!17423)))))

(declare-fun b!3054750 () Bool)

(declare-fun res!1254645 () Bool)

(assert (=> b!3054750 (=> res!1254645 e!1913407)))

(assert (=> b!3054750 (= res!1254645 (not (validRegex!4202 (regOne!19450 r!17423))))))

(declare-fun b!3054751 () Bool)

(assert (=> b!3054751 (= e!1913408 tp_is_empty!16501)))

(declare-fun b!3054752 () Bool)

(declare-fun lt!1048900 () Int)

(declare-fun lt!1048897 () Int)

(declare-fun regexDepth!95 (Regex!9469) Int)

(assert (=> b!3054752 (= e!1913407 (< (+ lt!1048900 lt!1048897) (+ (regexDepth!95 r!17423) lt!1048897)))))

(declare-fun size!26547 (List!35334) Int)

(assert (=> b!3054752 (= lt!1048897 (size!26547 s!11993))))

(assert (=> b!3054752 (= lt!1048900 (regexDepth!95 (regOne!19450 r!17423)))))

(declare-fun b!3054753 () Bool)

(assert (=> b!3054753 (= e!1913411 (not e!1913409))))

(declare-fun res!1254644 () Bool)

(assert (=> b!3054753 (=> res!1254644 e!1913409)))

(declare-fun lt!1048899 () Bool)

(get-info :version)

(assert (=> b!3054753 (= res!1254644 (or lt!1048899 (not ((_ is Concat!14790) r!17423))))))

(declare-fun matchRSpec!1606 (Regex!9469 List!35334) Bool)

(assert (=> b!3054753 (= lt!1048899 (matchRSpec!1606 r!17423 s!11993))))

(declare-fun matchR!4351 (Regex!9469 List!35334) Bool)

(assert (=> b!3054753 (= lt!1048899 (matchR!4351 r!17423 s!11993))))

(declare-datatypes ((Unit!49377 0))(
  ( (Unit!49378) )
))
(declare-fun lt!1048902 () Unit!49377)

(declare-fun mainMatchTheorem!1606 (Regex!9469 List!35334) Unit!49377)

(assert (=> b!3054753 (= lt!1048902 (mainMatchTheorem!1606 r!17423 s!11993))))

(assert (= (and start!291812 res!1254646) b!3054753))

(assert (= (and b!3054753 (not res!1254644)) b!3054746))

(assert (= (and b!3054746 (not res!1254648)) b!3054749))

(assert (= (and b!3054749 (not res!1254647)) b!3054750))

(assert (= (and b!3054750 (not res!1254645)) b!3054752))

(assert (= (and start!291812 ((_ is ElementMatch!9469) r!17423)) b!3054751))

(assert (= (and start!291812 ((_ is Concat!14790) r!17423)) b!3054748))

(assert (= (and start!291812 ((_ is Star!9469) r!17423)) b!3054747))

(assert (= (and start!291812 ((_ is Union!9469) r!17423)) b!3054745))

(assert (= (and start!291812 ((_ is Cons!35210) s!11993)) b!3054744))

(declare-fun m!3379405 () Bool)

(assert (=> b!3054750 m!3379405))

(declare-fun m!3379407 () Bool)

(assert (=> start!291812 m!3379407))

(declare-fun m!3379409 () Bool)

(assert (=> b!3054752 m!3379409))

(declare-fun m!3379411 () Bool)

(assert (=> b!3054752 m!3379411))

(declare-fun m!3379413 () Bool)

(assert (=> b!3054752 m!3379413))

(declare-fun m!3379415 () Bool)

(assert (=> b!3054753 m!3379415))

(declare-fun m!3379417 () Bool)

(assert (=> b!3054753 m!3379417))

(declare-fun m!3379419 () Bool)

(assert (=> b!3054753 m!3379419))

(declare-fun m!3379421 () Bool)

(assert (=> b!3054749 m!3379421))

(declare-fun m!3379423 () Bool)

(assert (=> b!3054749 m!3379423))

(declare-fun m!3379425 () Bool)

(assert (=> b!3054749 m!3379425))

(declare-fun m!3379427 () Bool)

(assert (=> b!3054746 m!3379427))

(check-sat (not b!3054750) (not start!291812) tp_is_empty!16501 (not b!3054747) (not b!3054752) (not b!3054749) (not b!3054753) (not b!3054748) (not b!3054746) (not b!3054744) (not b!3054745))
(check-sat)
(get-model)

(declare-fun bm!210614 () Bool)

(declare-fun call!210623 () Bool)

(declare-fun call!210622 () Bool)

(assert (=> bm!210614 (= call!210623 call!210622)))

(declare-fun b!3054788 () Bool)

(declare-fun e!1913437 () Bool)

(declare-fun e!1913434 () Bool)

(assert (=> b!3054788 (= e!1913437 e!1913434)))

(declare-fun c!506514 () Bool)

(assert (=> b!3054788 (= c!506514 ((_ is Star!9469) (regOne!19450 r!17423)))))

(declare-fun d!854742 () Bool)

(declare-fun res!1254660 () Bool)

(assert (=> d!854742 (=> res!1254660 e!1913437)))

(assert (=> d!854742 (= res!1254660 ((_ is ElementMatch!9469) (regOne!19450 r!17423)))))

(assert (=> d!854742 (= (validRegex!4202 (regOne!19450 r!17423)) e!1913437)))

(declare-fun b!3054789 () Bool)

(declare-fun e!1913435 () Bool)

(assert (=> b!3054789 (= e!1913435 call!210622)))

(declare-fun b!3054790 () Bool)

(declare-fun res!1254661 () Bool)

(declare-fun e!1913439 () Bool)

(assert (=> b!3054790 (=> (not res!1254661) (not e!1913439))))

(assert (=> b!3054790 (= res!1254661 call!210623)))

(declare-fun e!1913440 () Bool)

(assert (=> b!3054790 (= e!1913440 e!1913439)))

(declare-fun bm!210617 () Bool)

(declare-fun c!506515 () Bool)

(assert (=> bm!210617 (= call!210622 (validRegex!4202 (ite c!506514 (reg!9798 (regOne!19450 r!17423)) (ite c!506515 (regOne!19451 (regOne!19450 r!17423)) (regTwo!19450 (regOne!19450 r!17423))))))))

(declare-fun b!3054791 () Bool)

(assert (=> b!3054791 (= e!1913434 e!1913440)))

(assert (=> b!3054791 (= c!506515 ((_ is Union!9469) (regOne!19450 r!17423)))))

(declare-fun b!3054792 () Bool)

(assert (=> b!3054792 (= e!1913434 e!1913435)))

(declare-fun res!1254663 () Bool)

(declare-fun nullable!3115 (Regex!9469) Bool)

(assert (=> b!3054792 (= res!1254663 (not (nullable!3115 (reg!9798 (regOne!19450 r!17423)))))))

(assert (=> b!3054792 (=> (not res!1254663) (not e!1913435))))

(declare-fun bm!210618 () Bool)

(declare-fun call!210621 () Bool)

(assert (=> bm!210618 (= call!210621 (validRegex!4202 (ite c!506515 (regTwo!19451 (regOne!19450 r!17423)) (regOne!19450 (regOne!19450 r!17423)))))))

(declare-fun b!3054793 () Bool)

(declare-fun e!1913436 () Bool)

(declare-fun e!1913438 () Bool)

(assert (=> b!3054793 (= e!1913436 e!1913438)))

(declare-fun res!1254662 () Bool)

(assert (=> b!3054793 (=> (not res!1254662) (not e!1913438))))

(assert (=> b!3054793 (= res!1254662 call!210621)))

(declare-fun b!3054794 () Bool)

(assert (=> b!3054794 (= e!1913439 call!210621)))

(declare-fun b!3054795 () Bool)

(assert (=> b!3054795 (= e!1913438 call!210623)))

(declare-fun b!3054796 () Bool)

(declare-fun res!1254659 () Bool)

(assert (=> b!3054796 (=> res!1254659 e!1913436)))

(assert (=> b!3054796 (= res!1254659 (not ((_ is Concat!14790) (regOne!19450 r!17423))))))

(assert (=> b!3054796 (= e!1913440 e!1913436)))

(assert (= (and d!854742 (not res!1254660)) b!3054788))

(assert (= (and b!3054788 c!506514) b!3054792))

(assert (= (and b!3054788 (not c!506514)) b!3054791))

(assert (= (and b!3054792 res!1254663) b!3054789))

(assert (= (and b!3054791 c!506515) b!3054790))

(assert (= (and b!3054791 (not c!506515)) b!3054796))

(assert (= (and b!3054790 res!1254661) b!3054794))

(assert (= (and b!3054796 (not res!1254659)) b!3054793))

(assert (= (and b!3054793 res!1254662) b!3054795))

(assert (= (or b!3054790 b!3054795) bm!210614))

(assert (= (or b!3054794 b!3054793) bm!210618))

(assert (= (or b!3054789 bm!210614) bm!210617))

(declare-fun m!3379429 () Bool)

(assert (=> bm!210617 m!3379429))

(declare-fun m!3379431 () Bool)

(assert (=> b!3054792 m!3379431))

(declare-fun m!3379433 () Bool)

(assert (=> bm!210618 m!3379433))

(assert (=> b!3054750 d!854742))

(declare-fun b!3054907 () Bool)

(declare-fun e!1913510 () Bool)

(declare-fun lt!1048912 () Int)

(declare-fun call!210665 () Int)

(assert (=> b!3054907 (= e!1913510 (> lt!1048912 call!210665))))

(declare-fun c!506562 () Bool)

(declare-fun c!506558 () Bool)

(declare-fun bm!210659 () Bool)

(declare-fun call!210667 () Int)

(assert (=> bm!210659 (= call!210667 (regexDepth!95 (ite c!506562 (regOne!19451 r!17423) (ite c!506558 (regTwo!19450 r!17423) (reg!9798 r!17423)))))))

(declare-fun b!3054908 () Bool)

(declare-fun e!1913519 () Int)

(assert (=> b!3054908 (= e!1913519 1)))

(declare-fun bm!210660 () Bool)

(declare-fun c!506561 () Bool)

(declare-fun call!210666 () Int)

(declare-fun c!506560 () Bool)

(assert (=> bm!210660 (= call!210666 (regexDepth!95 (ite c!506561 (reg!9798 r!17423) (ite c!506560 (regOne!19451 r!17423) (regOne!19450 r!17423)))))))

(declare-fun b!3054909 () Bool)

(declare-fun e!1913513 () Int)

(assert (=> b!3054909 (= e!1913513 (+ 1 call!210666))))

(declare-fun b!3054910 () Bool)

(declare-fun e!1913516 () Int)

(assert (=> b!3054910 (= e!1913516 e!1913513)))

(assert (=> b!3054910 (= c!506561 ((_ is Star!9469) r!17423))))

(declare-fun b!3054911 () Bool)

(declare-fun c!506559 () Bool)

(assert (=> b!3054911 (= c!506559 ((_ is Star!9469) r!17423))))

(declare-fun e!1913511 () Bool)

(declare-fun e!1913518 () Bool)

(assert (=> b!3054911 (= e!1913511 e!1913518)))

(declare-fun bm!210661 () Bool)

(declare-fun call!210670 () Int)

(declare-fun call!210664 () Int)

(declare-fun call!210668 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!210661 (= call!210670 (maxBigInt!0 call!210664 call!210668))))

(declare-fun b!3054913 () Bool)

(declare-fun res!1254694 () Bool)

(assert (=> b!3054913 (=> (not res!1254694) (not e!1913510))))

(declare-fun call!210669 () Int)

(assert (=> b!3054913 (= res!1254694 (> lt!1048912 call!210669))))

(assert (=> b!3054913 (= e!1913511 e!1913510)))

(declare-fun b!3054914 () Bool)

(declare-fun e!1913512 () Bool)

(assert (=> b!3054914 (= e!1913512 (> lt!1048912 call!210669))))

(declare-fun b!3054915 () Bool)

(assert (=> b!3054915 (= e!1913518 (> lt!1048912 call!210665))))

(declare-fun b!3054916 () Bool)

(declare-fun e!1913515 () Bool)

(assert (=> b!3054916 (= e!1913515 e!1913512)))

(declare-fun res!1254692 () Bool)

(assert (=> b!3054916 (= res!1254692 (> lt!1048912 call!210667))))

(assert (=> b!3054916 (=> (not res!1254692) (not e!1913512))))

(declare-fun bm!210662 () Bool)

(assert (=> bm!210662 (= call!210665 call!210667)))

(declare-fun bm!210663 () Bool)

(assert (=> bm!210663 (= call!210664 call!210666)))

(declare-fun b!3054917 () Bool)

(assert (=> b!3054917 (= e!1913518 (= lt!1048912 1))))

(declare-fun bm!210664 () Bool)

(assert (=> bm!210664 (= call!210669 (regexDepth!95 (ite c!506562 (regTwo!19451 r!17423) (regOne!19450 r!17423))))))

(declare-fun b!3054918 () Bool)

(assert (=> b!3054918 (= e!1913519 (+ 1 call!210670))))

(declare-fun b!3054919 () Bool)

(assert (=> b!3054919 (= c!506560 ((_ is Union!9469) r!17423))))

(declare-fun e!1913514 () Int)

(assert (=> b!3054919 (= e!1913513 e!1913514)))

(declare-fun b!3054920 () Bool)

(assert (=> b!3054920 (= e!1913514 (+ 1 call!210670))))

(declare-fun d!854746 () Bool)

(declare-fun e!1913517 () Bool)

(assert (=> d!854746 e!1913517))

(declare-fun res!1254693 () Bool)

(assert (=> d!854746 (=> (not res!1254693) (not e!1913517))))

(assert (=> d!854746 (= res!1254693 (> lt!1048912 0))))

(assert (=> d!854746 (= lt!1048912 e!1913516)))

(declare-fun c!506563 () Bool)

(assert (=> d!854746 (= c!506563 ((_ is ElementMatch!9469) r!17423))))

(assert (=> d!854746 (= (regexDepth!95 r!17423) lt!1048912)))

(declare-fun b!3054912 () Bool)

(assert (=> b!3054912 (= e!1913517 e!1913515)))

(assert (=> b!3054912 (= c!506562 ((_ is Union!9469) r!17423))))

(declare-fun b!3054921 () Bool)

(assert (=> b!3054921 (= e!1913515 e!1913511)))

(assert (=> b!3054921 (= c!506558 ((_ is Concat!14790) r!17423))))

(declare-fun b!3054922 () Bool)

(assert (=> b!3054922 (= e!1913514 e!1913519)))

(declare-fun c!506557 () Bool)

(assert (=> b!3054922 (= c!506557 ((_ is Concat!14790) r!17423))))

(declare-fun bm!210665 () Bool)

(assert (=> bm!210665 (= call!210668 (regexDepth!95 (ite c!506560 (regTwo!19451 r!17423) (regTwo!19450 r!17423))))))

(declare-fun b!3054923 () Bool)

(assert (=> b!3054923 (= e!1913516 1)))

(assert (= (and d!854746 c!506563) b!3054923))

(assert (= (and d!854746 (not c!506563)) b!3054910))

(assert (= (and b!3054910 c!506561) b!3054909))

(assert (= (and b!3054910 (not c!506561)) b!3054919))

(assert (= (and b!3054919 c!506560) b!3054920))

(assert (= (and b!3054919 (not c!506560)) b!3054922))

(assert (= (and b!3054922 c!506557) b!3054918))

(assert (= (and b!3054922 (not c!506557)) b!3054908))

(assert (= (or b!3054920 b!3054918) bm!210665))

(assert (= (or b!3054920 b!3054918) bm!210663))

(assert (= (or b!3054920 b!3054918) bm!210661))

(assert (= (or b!3054909 bm!210663) bm!210660))

(assert (= (and d!854746 res!1254693) b!3054912))

(assert (= (and b!3054912 c!506562) b!3054916))

(assert (= (and b!3054912 (not c!506562)) b!3054921))

(assert (= (and b!3054916 res!1254692) b!3054914))

(assert (= (and b!3054921 c!506558) b!3054913))

(assert (= (and b!3054921 (not c!506558)) b!3054911))

(assert (= (and b!3054913 res!1254694) b!3054907))

(assert (= (and b!3054911 c!506559) b!3054915))

(assert (= (and b!3054911 (not c!506559)) b!3054917))

(assert (= (or b!3054907 b!3054915) bm!210662))

(assert (= (or b!3054914 b!3054913) bm!210664))

(assert (= (or b!3054916 bm!210662) bm!210659))

(declare-fun m!3379457 () Bool)

(assert (=> bm!210660 m!3379457))

(declare-fun m!3379459 () Bool)

(assert (=> bm!210665 m!3379459))

(declare-fun m!3379461 () Bool)

(assert (=> bm!210659 m!3379461))

(declare-fun m!3379463 () Bool)

(assert (=> bm!210661 m!3379463))

(declare-fun m!3379465 () Bool)

(assert (=> bm!210664 m!3379465))

(assert (=> b!3054752 d!854746))

(declare-fun d!854754 () Bool)

(declare-fun lt!1048915 () Int)

(assert (=> d!854754 (>= lt!1048915 0)))

(declare-fun e!1913529 () Int)

(assert (=> d!854754 (= lt!1048915 e!1913529)))

(declare-fun c!506568 () Bool)

(assert (=> d!854754 (= c!506568 ((_ is Nil!35210) s!11993))))

(assert (=> d!854754 (= (size!26547 s!11993) lt!1048915)))

(declare-fun b!3054937 () Bool)

(assert (=> b!3054937 (= e!1913529 0)))

(declare-fun b!3054938 () Bool)

(assert (=> b!3054938 (= e!1913529 (+ 1 (size!26547 (t!234399 s!11993))))))

(assert (= (and d!854754 c!506568) b!3054937))

(assert (= (and d!854754 (not c!506568)) b!3054938))

(declare-fun m!3379467 () Bool)

(assert (=> b!3054938 m!3379467))

(assert (=> b!3054752 d!854754))

(declare-fun b!3054939 () Bool)

(declare-fun e!1913530 () Bool)

(declare-fun lt!1048916 () Int)

(declare-fun call!210679 () Int)

(assert (=> b!3054939 (= e!1913530 (> lt!1048916 call!210679))))

(declare-fun c!506574 () Bool)

(declare-fun bm!210673 () Bool)

(declare-fun call!210681 () Int)

(declare-fun c!506570 () Bool)

(assert (=> bm!210673 (= call!210681 (regexDepth!95 (ite c!506574 (regOne!19451 (regOne!19450 r!17423)) (ite c!506570 (regTwo!19450 (regOne!19450 r!17423)) (reg!9798 (regOne!19450 r!17423))))))))

(declare-fun b!3054940 () Bool)

(declare-fun e!1913539 () Int)

(assert (=> b!3054940 (= e!1913539 1)))

(declare-fun c!506572 () Bool)

(declare-fun call!210680 () Int)

(declare-fun c!506573 () Bool)

(declare-fun bm!210674 () Bool)

(assert (=> bm!210674 (= call!210680 (regexDepth!95 (ite c!506573 (reg!9798 (regOne!19450 r!17423)) (ite c!506572 (regOne!19451 (regOne!19450 r!17423)) (regOne!19450 (regOne!19450 r!17423))))))))

(declare-fun b!3054941 () Bool)

(declare-fun e!1913533 () Int)

(assert (=> b!3054941 (= e!1913533 (+ 1 call!210680))))

(declare-fun b!3054942 () Bool)

(declare-fun e!1913536 () Int)

(assert (=> b!3054942 (= e!1913536 e!1913533)))

(assert (=> b!3054942 (= c!506573 ((_ is Star!9469) (regOne!19450 r!17423)))))

(declare-fun b!3054943 () Bool)

(declare-fun c!506571 () Bool)

(assert (=> b!3054943 (= c!506571 ((_ is Star!9469) (regOne!19450 r!17423)))))

(declare-fun e!1913531 () Bool)

(declare-fun e!1913538 () Bool)

(assert (=> b!3054943 (= e!1913531 e!1913538)))

(declare-fun bm!210675 () Bool)

(declare-fun call!210684 () Int)

(declare-fun call!210678 () Int)

(declare-fun call!210682 () Int)

(assert (=> bm!210675 (= call!210684 (maxBigInt!0 call!210678 call!210682))))

(declare-fun b!3054945 () Bool)

(declare-fun res!1254702 () Bool)

(assert (=> b!3054945 (=> (not res!1254702) (not e!1913530))))

(declare-fun call!210683 () Int)

(assert (=> b!3054945 (= res!1254702 (> lt!1048916 call!210683))))

(assert (=> b!3054945 (= e!1913531 e!1913530)))

(declare-fun b!3054946 () Bool)

(declare-fun e!1913532 () Bool)

(assert (=> b!3054946 (= e!1913532 (> lt!1048916 call!210683))))

(declare-fun b!3054947 () Bool)

(assert (=> b!3054947 (= e!1913538 (> lt!1048916 call!210679))))

(declare-fun b!3054948 () Bool)

(declare-fun e!1913535 () Bool)

(assert (=> b!3054948 (= e!1913535 e!1913532)))

(declare-fun res!1254700 () Bool)

(assert (=> b!3054948 (= res!1254700 (> lt!1048916 call!210681))))

(assert (=> b!3054948 (=> (not res!1254700) (not e!1913532))))

(declare-fun bm!210676 () Bool)

(assert (=> bm!210676 (= call!210679 call!210681)))

(declare-fun bm!210677 () Bool)

(assert (=> bm!210677 (= call!210678 call!210680)))

(declare-fun b!3054949 () Bool)

(assert (=> b!3054949 (= e!1913538 (= lt!1048916 1))))

(declare-fun bm!210678 () Bool)

(assert (=> bm!210678 (= call!210683 (regexDepth!95 (ite c!506574 (regTwo!19451 (regOne!19450 r!17423)) (regOne!19450 (regOne!19450 r!17423)))))))

(declare-fun b!3054950 () Bool)

(assert (=> b!3054950 (= e!1913539 (+ 1 call!210684))))

(declare-fun b!3054951 () Bool)

(assert (=> b!3054951 (= c!506572 ((_ is Union!9469) (regOne!19450 r!17423)))))

(declare-fun e!1913534 () Int)

(assert (=> b!3054951 (= e!1913533 e!1913534)))

(declare-fun b!3054952 () Bool)

(assert (=> b!3054952 (= e!1913534 (+ 1 call!210684))))

(declare-fun d!854756 () Bool)

(declare-fun e!1913537 () Bool)

(assert (=> d!854756 e!1913537))

(declare-fun res!1254701 () Bool)

(assert (=> d!854756 (=> (not res!1254701) (not e!1913537))))

(assert (=> d!854756 (= res!1254701 (> lt!1048916 0))))

(assert (=> d!854756 (= lt!1048916 e!1913536)))

(declare-fun c!506575 () Bool)

(assert (=> d!854756 (= c!506575 ((_ is ElementMatch!9469) (regOne!19450 r!17423)))))

(assert (=> d!854756 (= (regexDepth!95 (regOne!19450 r!17423)) lt!1048916)))

(declare-fun b!3054944 () Bool)

(assert (=> b!3054944 (= e!1913537 e!1913535)))

(assert (=> b!3054944 (= c!506574 ((_ is Union!9469) (regOne!19450 r!17423)))))

(declare-fun b!3054953 () Bool)

(assert (=> b!3054953 (= e!1913535 e!1913531)))

(assert (=> b!3054953 (= c!506570 ((_ is Concat!14790) (regOne!19450 r!17423)))))

(declare-fun b!3054954 () Bool)

(assert (=> b!3054954 (= e!1913534 e!1913539)))

(declare-fun c!506569 () Bool)

(assert (=> b!3054954 (= c!506569 ((_ is Concat!14790) (regOne!19450 r!17423)))))

(declare-fun bm!210679 () Bool)

(assert (=> bm!210679 (= call!210682 (regexDepth!95 (ite c!506572 (regTwo!19451 (regOne!19450 r!17423)) (regTwo!19450 (regOne!19450 r!17423)))))))

(declare-fun b!3054955 () Bool)

(assert (=> b!3054955 (= e!1913536 1)))

(assert (= (and d!854756 c!506575) b!3054955))

(assert (= (and d!854756 (not c!506575)) b!3054942))

(assert (= (and b!3054942 c!506573) b!3054941))

(assert (= (and b!3054942 (not c!506573)) b!3054951))

(assert (= (and b!3054951 c!506572) b!3054952))

(assert (= (and b!3054951 (not c!506572)) b!3054954))

(assert (= (and b!3054954 c!506569) b!3054950))

(assert (= (and b!3054954 (not c!506569)) b!3054940))

(assert (= (or b!3054952 b!3054950) bm!210679))

(assert (= (or b!3054952 b!3054950) bm!210677))

(assert (= (or b!3054952 b!3054950) bm!210675))

(assert (= (or b!3054941 bm!210677) bm!210674))

(assert (= (and d!854756 res!1254701) b!3054944))

(assert (= (and b!3054944 c!506574) b!3054948))

(assert (= (and b!3054944 (not c!506574)) b!3054953))

(assert (= (and b!3054948 res!1254700) b!3054946))

(assert (= (and b!3054953 c!506570) b!3054945))

(assert (= (and b!3054953 (not c!506570)) b!3054943))

(assert (= (and b!3054945 res!1254702) b!3054939))

(assert (= (and b!3054943 c!506571) b!3054947))

(assert (= (and b!3054943 (not c!506571)) b!3054949))

(assert (= (or b!3054939 b!3054947) bm!210676))

(assert (= (or b!3054946 b!3054945) bm!210678))

(assert (= (or b!3054948 bm!210676) bm!210673))

(declare-fun m!3379475 () Bool)

(assert (=> bm!210674 m!3379475))

(declare-fun m!3379477 () Bool)

(assert (=> bm!210679 m!3379477))

(declare-fun m!3379479 () Bool)

(assert (=> bm!210673 m!3379479))

(declare-fun m!3379481 () Bool)

(assert (=> bm!210675 m!3379481))

(declare-fun m!3379483 () Bool)

(assert (=> bm!210678 m!3379483))

(assert (=> b!3054752 d!854756))

(declare-fun d!854760 () Bool)

(assert (=> d!854760 (= (isEmpty!19525 s!11993) ((_ is Nil!35210) s!11993))))

(assert (=> b!3054746 d!854760))

(declare-fun bm!210680 () Bool)

(declare-fun call!210687 () Bool)

(declare-fun call!210686 () Bool)

(assert (=> bm!210680 (= call!210687 call!210686)))

(declare-fun b!3054956 () Bool)

(declare-fun e!1913543 () Bool)

(declare-fun e!1913540 () Bool)

(assert (=> b!3054956 (= e!1913543 e!1913540)))

(declare-fun c!506576 () Bool)

(assert (=> b!3054956 (= c!506576 ((_ is Star!9469) r!17423))))

(declare-fun d!854762 () Bool)

(declare-fun res!1254704 () Bool)

(assert (=> d!854762 (=> res!1254704 e!1913543)))

(assert (=> d!854762 (= res!1254704 ((_ is ElementMatch!9469) r!17423))))

(assert (=> d!854762 (= (validRegex!4202 r!17423) e!1913543)))

(declare-fun b!3054957 () Bool)

(declare-fun e!1913541 () Bool)

(assert (=> b!3054957 (= e!1913541 call!210686)))

(declare-fun b!3054958 () Bool)

(declare-fun res!1254705 () Bool)

(declare-fun e!1913545 () Bool)

(assert (=> b!3054958 (=> (not res!1254705) (not e!1913545))))

(assert (=> b!3054958 (= res!1254705 call!210687)))

(declare-fun e!1913546 () Bool)

(assert (=> b!3054958 (= e!1913546 e!1913545)))

(declare-fun c!506577 () Bool)

(declare-fun bm!210681 () Bool)

(assert (=> bm!210681 (= call!210686 (validRegex!4202 (ite c!506576 (reg!9798 r!17423) (ite c!506577 (regOne!19451 r!17423) (regTwo!19450 r!17423)))))))

(declare-fun b!3054959 () Bool)

(assert (=> b!3054959 (= e!1913540 e!1913546)))

(assert (=> b!3054959 (= c!506577 ((_ is Union!9469) r!17423))))

(declare-fun b!3054960 () Bool)

(assert (=> b!3054960 (= e!1913540 e!1913541)))

(declare-fun res!1254707 () Bool)

(assert (=> b!3054960 (= res!1254707 (not (nullable!3115 (reg!9798 r!17423))))))

(assert (=> b!3054960 (=> (not res!1254707) (not e!1913541))))

(declare-fun bm!210682 () Bool)

(declare-fun call!210685 () Bool)

(assert (=> bm!210682 (= call!210685 (validRegex!4202 (ite c!506577 (regTwo!19451 r!17423) (regOne!19450 r!17423))))))

(declare-fun b!3054961 () Bool)

(declare-fun e!1913542 () Bool)

(declare-fun e!1913544 () Bool)

(assert (=> b!3054961 (= e!1913542 e!1913544)))

(declare-fun res!1254706 () Bool)

(assert (=> b!3054961 (=> (not res!1254706) (not e!1913544))))

(assert (=> b!3054961 (= res!1254706 call!210685)))

(declare-fun b!3054962 () Bool)

(assert (=> b!3054962 (= e!1913545 call!210685)))

(declare-fun b!3054963 () Bool)

(assert (=> b!3054963 (= e!1913544 call!210687)))

(declare-fun b!3054964 () Bool)

(declare-fun res!1254703 () Bool)

(assert (=> b!3054964 (=> res!1254703 e!1913542)))

(assert (=> b!3054964 (= res!1254703 (not ((_ is Concat!14790) r!17423)))))

(assert (=> b!3054964 (= e!1913546 e!1913542)))

(assert (= (and d!854762 (not res!1254704)) b!3054956))

(assert (= (and b!3054956 c!506576) b!3054960))

(assert (= (and b!3054956 (not c!506576)) b!3054959))

(assert (= (and b!3054960 res!1254707) b!3054957))

(assert (= (and b!3054959 c!506577) b!3054958))

(assert (= (and b!3054959 (not c!506577)) b!3054964))

(assert (= (and b!3054958 res!1254705) b!3054962))

(assert (= (and b!3054964 (not res!1254703)) b!3054961))

(assert (= (and b!3054961 res!1254706) b!3054963))

(assert (= (or b!3054958 b!3054963) bm!210680))

(assert (= (or b!3054962 b!3054961) bm!210682))

(assert (= (or b!3054957 bm!210680) bm!210681))

(declare-fun m!3379485 () Bool)

(assert (=> bm!210681 m!3379485))

(declare-fun m!3379487 () Bool)

(assert (=> b!3054960 m!3379487))

(declare-fun m!3379489 () Bool)

(assert (=> bm!210682 m!3379489))

(assert (=> start!291812 d!854762))

(declare-fun b!3055236 () Bool)

(assert (=> b!3055236 true))

(assert (=> b!3055236 true))

(declare-fun bs!532390 () Bool)

(declare-fun b!3055233 () Bool)

(assert (= bs!532390 (and b!3055233 b!3055236)))

(declare-fun lambda!113778 () Int)

(declare-fun lambda!113777 () Int)

(assert (=> bs!532390 (not (= lambda!113778 lambda!113777))))

(assert (=> b!3055233 true))

(assert (=> b!3055233 true))

(declare-fun b!3055230 () Bool)

(declare-fun c!506655 () Bool)

(assert (=> b!3055230 (= c!506655 ((_ is ElementMatch!9469) r!17423))))

(declare-fun e!1913684 () Bool)

(declare-fun e!1913689 () Bool)

(assert (=> b!3055230 (= e!1913684 e!1913689)))

(declare-fun b!3055231 () Bool)

(assert (=> b!3055231 (= e!1913689 (= s!11993 (Cons!35210 (c!506501 r!17423) Nil!35210)))))

(declare-fun b!3055232 () Bool)

(declare-fun c!506653 () Bool)

(assert (=> b!3055232 (= c!506653 ((_ is Union!9469) r!17423))))

(declare-fun e!1913687 () Bool)

(assert (=> b!3055232 (= e!1913689 e!1913687)))

(declare-fun e!1913685 () Bool)

(declare-fun call!210732 () Bool)

(assert (=> b!3055233 (= e!1913685 call!210732)))

(declare-fun bm!210727 () Bool)

(declare-fun call!210733 () Bool)

(assert (=> bm!210727 (= call!210733 (isEmpty!19525 s!11993))))

(declare-fun b!3055234 () Bool)

(declare-fun e!1913688 () Bool)

(assert (=> b!3055234 (= e!1913688 e!1913684)))

(declare-fun res!1254785 () Bool)

(assert (=> b!3055234 (= res!1254785 (not ((_ is EmptyLang!9469) r!17423)))))

(assert (=> b!3055234 (=> (not res!1254785) (not e!1913684))))

(declare-fun b!3055235 () Bool)

(declare-fun e!1913690 () Bool)

(assert (=> b!3055235 (= e!1913687 e!1913690)))

(declare-fun res!1254784 () Bool)

(assert (=> b!3055235 (= res!1254784 (matchRSpec!1606 (regOne!19451 r!17423) s!11993))))

(assert (=> b!3055235 (=> res!1254784 e!1913690)))

(declare-fun d!854764 () Bool)

(declare-fun c!506656 () Bool)

(assert (=> d!854764 (= c!506656 ((_ is EmptyExpr!9469) r!17423))))

(assert (=> d!854764 (= (matchRSpec!1606 r!17423 s!11993) e!1913688)))

(declare-fun e!1913686 () Bool)

(assert (=> b!3055236 (= e!1913686 call!210732)))

(declare-fun bm!210728 () Bool)

(declare-fun c!506654 () Bool)

(declare-fun Exists!1732 (Int) Bool)

(assert (=> bm!210728 (= call!210732 (Exists!1732 (ite c!506654 lambda!113777 lambda!113778)))))

(declare-fun b!3055237 () Bool)

(assert (=> b!3055237 (= e!1913690 (matchRSpec!1606 (regTwo!19451 r!17423) s!11993))))

(declare-fun b!3055238 () Bool)

(assert (=> b!3055238 (= e!1913688 call!210733)))

(declare-fun b!3055239 () Bool)

(assert (=> b!3055239 (= e!1913687 e!1913685)))

(assert (=> b!3055239 (= c!506654 ((_ is Star!9469) r!17423))))

(declare-fun b!3055240 () Bool)

(declare-fun res!1254786 () Bool)

(assert (=> b!3055240 (=> res!1254786 e!1913686)))

(assert (=> b!3055240 (= res!1254786 call!210733)))

(assert (=> b!3055240 (= e!1913685 e!1913686)))

(assert (= (and d!854764 c!506656) b!3055238))

(assert (= (and d!854764 (not c!506656)) b!3055234))

(assert (= (and b!3055234 res!1254785) b!3055230))

(assert (= (and b!3055230 c!506655) b!3055231))

(assert (= (and b!3055230 (not c!506655)) b!3055232))

(assert (= (and b!3055232 c!506653) b!3055235))

(assert (= (and b!3055232 (not c!506653)) b!3055239))

(assert (= (and b!3055235 (not res!1254784)) b!3055237))

(assert (= (and b!3055239 c!506654) b!3055240))

(assert (= (and b!3055239 (not c!506654)) b!3055233))

(assert (= (and b!3055240 (not res!1254786)) b!3055236))

(assert (= (or b!3055236 b!3055233) bm!210728))

(assert (= (or b!3055238 b!3055240) bm!210727))

(assert (=> bm!210727 m!3379427))

(declare-fun m!3379555 () Bool)

(assert (=> b!3055235 m!3379555))

(declare-fun m!3379557 () Bool)

(assert (=> bm!210728 m!3379557))

(declare-fun m!3379559 () Bool)

(assert (=> b!3055237 m!3379559))

(assert (=> b!3054753 d!854764))

(declare-fun b!3055273 () Bool)

(declare-fun res!1254810 () Bool)

(declare-fun e!1913705 () Bool)

(assert (=> b!3055273 (=> res!1254810 e!1913705)))

(declare-fun tail!4996 (List!35334) List!35334)

(assert (=> b!3055273 (= res!1254810 (not (isEmpty!19525 (tail!4996 s!11993))))))

(declare-fun b!3055275 () Bool)

(declare-fun e!1913710 () Bool)

(assert (=> b!3055275 (= e!1913710 e!1913705)))

(declare-fun res!1254809 () Bool)

(assert (=> b!3055275 (=> res!1254809 e!1913705)))

(declare-fun call!210736 () Bool)

(assert (=> b!3055275 (= res!1254809 call!210736)))

(declare-fun b!3055276 () Bool)

(declare-fun e!1913706 () Bool)

(declare-fun lt!1048949 () Bool)

(assert (=> b!3055276 (= e!1913706 (= lt!1048949 call!210736))))

(declare-fun b!3055277 () Bool)

(declare-fun res!1254805 () Bool)

(declare-fun e!1913709 () Bool)

(assert (=> b!3055277 (=> res!1254805 e!1913709)))

(declare-fun e!1913707 () Bool)

(assert (=> b!3055277 (= res!1254805 e!1913707)))

(declare-fun res!1254804 () Bool)

(assert (=> b!3055277 (=> (not res!1254804) (not e!1913707))))

(assert (=> b!3055277 (= res!1254804 lt!1048949)))

(declare-fun b!3055278 () Bool)

(declare-fun e!1913708 () Bool)

(assert (=> b!3055278 (= e!1913708 (not lt!1048949))))

(declare-fun b!3055279 () Bool)

(declare-fun e!1913711 () Bool)

(assert (=> b!3055279 (= e!1913711 (nullable!3115 r!17423))))

(declare-fun b!3055280 () Bool)

(declare-fun res!1254806 () Bool)

(assert (=> b!3055280 (=> res!1254806 e!1913709)))

(assert (=> b!3055280 (= res!1254806 (not ((_ is ElementMatch!9469) r!17423)))))

(assert (=> b!3055280 (= e!1913708 e!1913709)))

(declare-fun b!3055281 () Bool)

(declare-fun head!6770 (List!35334) C!19124)

(assert (=> b!3055281 (= e!1913707 (= (head!6770 s!11993) (c!506501 r!17423)))))

(declare-fun d!854780 () Bool)

(assert (=> d!854780 e!1913706))

(declare-fun c!506665 () Bool)

(assert (=> d!854780 (= c!506665 ((_ is EmptyExpr!9469) r!17423))))

(assert (=> d!854780 (= lt!1048949 e!1913711)))

(declare-fun c!506664 () Bool)

(assert (=> d!854780 (= c!506664 (isEmpty!19525 s!11993))))

(assert (=> d!854780 (validRegex!4202 r!17423)))

(assert (=> d!854780 (= (matchR!4351 r!17423 s!11993) lt!1048949)))

(declare-fun b!3055274 () Bool)

(declare-fun derivativeStep!2711 (Regex!9469 C!19124) Regex!9469)

(assert (=> b!3055274 (= e!1913711 (matchR!4351 (derivativeStep!2711 r!17423 (head!6770 s!11993)) (tail!4996 s!11993)))))

(declare-fun b!3055282 () Bool)

(declare-fun res!1254808 () Bool)

(assert (=> b!3055282 (=> (not res!1254808) (not e!1913707))))

(assert (=> b!3055282 (= res!1254808 (not call!210736))))

(declare-fun bm!210731 () Bool)

(assert (=> bm!210731 (= call!210736 (isEmpty!19525 s!11993))))

(declare-fun b!3055283 () Bool)

(assert (=> b!3055283 (= e!1913706 e!1913708)))

(declare-fun c!506663 () Bool)

(assert (=> b!3055283 (= c!506663 ((_ is EmptyLang!9469) r!17423))))

(declare-fun b!3055284 () Bool)

(declare-fun res!1254803 () Bool)

(assert (=> b!3055284 (=> (not res!1254803) (not e!1913707))))

(assert (=> b!3055284 (= res!1254803 (isEmpty!19525 (tail!4996 s!11993)))))

(declare-fun b!3055285 () Bool)

(assert (=> b!3055285 (= e!1913705 (not (= (head!6770 s!11993) (c!506501 r!17423))))))

(declare-fun b!3055286 () Bool)

(assert (=> b!3055286 (= e!1913709 e!1913710)))

(declare-fun res!1254807 () Bool)

(assert (=> b!3055286 (=> (not res!1254807) (not e!1913710))))

(assert (=> b!3055286 (= res!1254807 (not lt!1048949))))

(assert (= (and d!854780 c!506664) b!3055279))

(assert (= (and d!854780 (not c!506664)) b!3055274))

(assert (= (and d!854780 c!506665) b!3055276))

(assert (= (and d!854780 (not c!506665)) b!3055283))

(assert (= (and b!3055283 c!506663) b!3055278))

(assert (= (and b!3055283 (not c!506663)) b!3055280))

(assert (= (and b!3055280 (not res!1254806)) b!3055277))

(assert (= (and b!3055277 res!1254804) b!3055282))

(assert (= (and b!3055282 res!1254808) b!3055284))

(assert (= (and b!3055284 res!1254803) b!3055281))

(assert (= (and b!3055277 (not res!1254805)) b!3055286))

(assert (= (and b!3055286 res!1254807) b!3055275))

(assert (= (and b!3055275 (not res!1254809)) b!3055273))

(assert (= (and b!3055273 (not res!1254810)) b!3055285))

(assert (= (or b!3055276 b!3055275 b!3055282) bm!210731))

(declare-fun m!3379561 () Bool)

(assert (=> b!3055274 m!3379561))

(assert (=> b!3055274 m!3379561))

(declare-fun m!3379563 () Bool)

(assert (=> b!3055274 m!3379563))

(declare-fun m!3379565 () Bool)

(assert (=> b!3055274 m!3379565))

(assert (=> b!3055274 m!3379563))

(assert (=> b!3055274 m!3379565))

(declare-fun m!3379567 () Bool)

(assert (=> b!3055274 m!3379567))

(assert (=> d!854780 m!3379427))

(assert (=> d!854780 m!3379407))

(assert (=> b!3055273 m!3379565))

(assert (=> b!3055273 m!3379565))

(declare-fun m!3379569 () Bool)

(assert (=> b!3055273 m!3379569))

(assert (=> bm!210731 m!3379427))

(assert (=> b!3055285 m!3379561))

(declare-fun m!3379571 () Bool)

(assert (=> b!3055279 m!3379571))

(assert (=> b!3055281 m!3379561))

(assert (=> b!3055284 m!3379565))

(assert (=> b!3055284 m!3379565))

(assert (=> b!3055284 m!3379569))

(assert (=> b!3054753 d!854780))

(declare-fun d!854782 () Bool)

(assert (=> d!854782 (= (matchR!4351 r!17423 s!11993) (matchRSpec!1606 r!17423 s!11993))))

(declare-fun lt!1048952 () Unit!49377)

(declare-fun choose!18099 (Regex!9469 List!35334) Unit!49377)

(assert (=> d!854782 (= lt!1048952 (choose!18099 r!17423 s!11993))))

(assert (=> d!854782 (validRegex!4202 r!17423)))

(assert (=> d!854782 (= (mainMatchTheorem!1606 r!17423 s!11993) lt!1048952)))

(declare-fun bs!532391 () Bool)

(assert (= bs!532391 d!854782))

(assert (=> bs!532391 m!3379417))

(assert (=> bs!532391 m!3379415))

(declare-fun m!3379573 () Bool)

(assert (=> bs!532391 m!3379573))

(assert (=> bs!532391 m!3379407))

(assert (=> b!3054753 d!854782))

(declare-fun d!854784 () Bool)

(assert (=> d!854784 (= (isEmptyLang!520 lt!1048901) ((_ is EmptyLang!9469) lt!1048901))))

(assert (=> b!3054749 d!854784))

(declare-fun b!3055337 () Bool)

(declare-fun e!1913745 () Regex!9469)

(declare-fun e!1913749 () Regex!9469)

(assert (=> b!3055337 (= e!1913745 e!1913749)))

(declare-fun c!506688 () Bool)

(declare-fun lt!1048969 () Regex!9469)

(declare-fun isEmptyExpr!526 (Regex!9469) Bool)

(assert (=> b!3055337 (= c!506688 (isEmptyExpr!526 lt!1048969))))

(declare-fun bm!210746 () Bool)

(declare-fun call!210752 () Bool)

(declare-fun call!210751 () Bool)

(assert (=> bm!210746 (= call!210752 call!210751)))

(declare-fun lt!1048966 () Regex!9469)

(declare-fun bm!210747 () Bool)

(declare-fun lt!1048970 () Regex!9469)

(declare-fun c!506692 () Bool)

(declare-fun c!506689 () Bool)

(declare-fun lt!1048965 () Regex!9469)

(assert (=> bm!210747 (= call!210751 (isEmptyLang!520 (ite c!506692 lt!1048970 (ite c!506689 lt!1048966 lt!1048965))))))

(declare-fun bm!210748 () Bool)

(declare-fun call!210754 () Regex!9469)

(declare-fun call!210753 () Regex!9469)

(assert (=> bm!210748 (= call!210754 call!210753)))

(declare-fun lt!1048968 () Regex!9469)

(declare-fun call!210755 () Bool)

(declare-fun bm!210749 () Bool)

(assert (=> bm!210749 (= call!210755 (isEmptyLang!520 (ite c!506689 lt!1048968 lt!1048969)))))

(declare-fun b!3055338 () Bool)

(declare-fun e!1913744 () Bool)

(assert (=> b!3055338 (= e!1913744 call!210755)))

(declare-fun b!3055339 () Bool)

(declare-fun e!1913740 () Regex!9469)

(assert (=> b!3055339 (= e!1913740 lt!1048966)))

(declare-fun b!3055340 () Bool)

(declare-fun c!506696 () Bool)

(declare-fun call!210756 () Bool)

(assert (=> b!3055340 (= c!506696 call!210756)))

(declare-fun e!1913743 () Regex!9469)

(assert (=> b!3055340 (= e!1913743 e!1913745)))

(declare-fun bm!210750 () Bool)

(assert (=> bm!210750 (= call!210753 (simplify!424 (ite c!506692 (reg!9798 (regTwo!19450 r!17423)) (ite c!506689 (regOne!19451 (regTwo!19450 r!17423)) (regTwo!19450 (regTwo!19450 r!17423))))))))

(declare-fun bm!210751 () Bool)

(assert (=> bm!210751 (= call!210756 (isEmptyExpr!526 (ite c!506692 lt!1048970 lt!1048965)))))

(declare-fun b!3055341 () Bool)

(declare-fun e!1913751 () Regex!9469)

(declare-fun e!1913747 () Regex!9469)

(assert (=> b!3055341 (= e!1913751 e!1913747)))

(declare-fun c!506690 () Bool)

(assert (=> b!3055341 (= c!506690 ((_ is ElementMatch!9469) (regTwo!19450 r!17423)))))

(declare-fun d!854786 () Bool)

(declare-fun e!1913742 () Bool)

(assert (=> d!854786 e!1913742))

(declare-fun res!1254817 () Bool)

(assert (=> d!854786 (=> (not res!1254817) (not e!1913742))))

(declare-fun lt!1048967 () Regex!9469)

(assert (=> d!854786 (= res!1254817 (validRegex!4202 lt!1048967))))

(assert (=> d!854786 (= lt!1048967 e!1913751)))

(declare-fun c!506695 () Bool)

(assert (=> d!854786 (= c!506695 ((_ is EmptyLang!9469) (regTwo!19450 r!17423)))))

(assert (=> d!854786 (validRegex!4202 (regTwo!19450 r!17423))))

(assert (=> d!854786 (= (simplify!424 (regTwo!19450 r!17423)) lt!1048967)))

(declare-fun b!3055342 () Bool)

(assert (=> b!3055342 (= e!1913745 lt!1048969)))

(declare-fun b!3055343 () Bool)

(assert (=> b!3055343 (= e!1913749 (Concat!14790 lt!1048965 lt!1048969))))

(declare-fun b!3055344 () Bool)

(declare-fun c!506697 () Bool)

(declare-fun e!1913753 () Bool)

(assert (=> b!3055344 (= c!506697 e!1913753)))

(declare-fun res!1254819 () Bool)

(assert (=> b!3055344 (=> res!1254819 e!1913753)))

(assert (=> b!3055344 (= res!1254819 call!210751)))

(assert (=> b!3055344 (= lt!1048970 call!210753)))

(declare-fun e!1913741 () Regex!9469)

(declare-fun e!1913750 () Regex!9469)

(assert (=> b!3055344 (= e!1913741 e!1913750)))

(declare-fun b!3055345 () Bool)

(declare-fun e!1913746 () Regex!9469)

(assert (=> b!3055345 (= e!1913746 (Union!9469 lt!1048968 lt!1048966))))

(declare-fun b!3055346 () Bool)

(assert (=> b!3055346 (= e!1913751 EmptyLang!9469)))

(declare-fun b!3055347 () Bool)

(assert (=> b!3055347 (= e!1913750 EmptyExpr!9469)))

(declare-fun b!3055348 () Bool)

(assert (=> b!3055348 (= e!1913747 (regTwo!19450 r!17423))))

(declare-fun b!3055349 () Bool)

(assert (=> b!3055349 (= e!1913750 (Star!9469 lt!1048970))))

(declare-fun bm!210752 () Bool)

(declare-fun call!210757 () Regex!9469)

(assert (=> bm!210752 (= call!210757 (simplify!424 (ite c!506689 (regTwo!19451 (regTwo!19450 r!17423)) (regOne!19450 (regTwo!19450 r!17423)))))))

(declare-fun b!3055350 () Bool)

(assert (=> b!3055350 (= e!1913746 lt!1048968)))

(declare-fun b!3055351 () Bool)

(assert (=> b!3055351 (= e!1913753 call!210756)))

(declare-fun b!3055352 () Bool)

(declare-fun e!1913752 () Regex!9469)

(assert (=> b!3055352 (= e!1913752 e!1913743)))

(assert (=> b!3055352 (= lt!1048965 call!210757)))

(assert (=> b!3055352 (= lt!1048969 call!210754)))

(declare-fun res!1254818 () Bool)

(assert (=> b!3055352 (= res!1254818 call!210752)))

(assert (=> b!3055352 (=> res!1254818 e!1913744)))

(declare-fun c!506693 () Bool)

(assert (=> b!3055352 (= c!506693 e!1913744)))

(declare-fun b!3055353 () Bool)

(assert (=> b!3055353 (= e!1913752 e!1913740)))

(assert (=> b!3055353 (= lt!1048968 call!210754)))

(assert (=> b!3055353 (= lt!1048966 call!210757)))

(declare-fun c!506698 () Bool)

(assert (=> b!3055353 (= c!506698 call!210755)))

(declare-fun b!3055354 () Bool)

(declare-fun c!506691 () Bool)

(assert (=> b!3055354 (= c!506691 call!210752)))

(assert (=> b!3055354 (= e!1913740 e!1913746)))

(declare-fun b!3055355 () Bool)

(declare-fun e!1913748 () Regex!9469)

(assert (=> b!3055355 (= e!1913748 EmptyExpr!9469)))

(declare-fun b!3055356 () Bool)

(assert (=> b!3055356 (= e!1913743 EmptyLang!9469)))

(declare-fun b!3055357 () Bool)

(declare-fun c!506694 () Bool)

(assert (=> b!3055357 (= c!506694 ((_ is EmptyExpr!9469) (regTwo!19450 r!17423)))))

(assert (=> b!3055357 (= e!1913747 e!1913748)))

(declare-fun b!3055358 () Bool)

(assert (=> b!3055358 (= e!1913742 (= (nullable!3115 lt!1048967) (nullable!3115 (regTwo!19450 r!17423))))))

(declare-fun b!3055359 () Bool)

(assert (=> b!3055359 (= c!506689 ((_ is Union!9469) (regTwo!19450 r!17423)))))

(assert (=> b!3055359 (= e!1913741 e!1913752)))

(declare-fun b!3055360 () Bool)

(assert (=> b!3055360 (= e!1913748 e!1913741)))

(assert (=> b!3055360 (= c!506692 ((_ is Star!9469) (regTwo!19450 r!17423)))))

(declare-fun b!3055361 () Bool)

(assert (=> b!3055361 (= e!1913749 lt!1048965)))

(assert (= (and d!854786 c!506695) b!3055346))

(assert (= (and d!854786 (not c!506695)) b!3055341))

(assert (= (and b!3055341 c!506690) b!3055348))

(assert (= (and b!3055341 (not c!506690)) b!3055357))

(assert (= (and b!3055357 c!506694) b!3055355))

(assert (= (and b!3055357 (not c!506694)) b!3055360))

(assert (= (and b!3055360 c!506692) b!3055344))

(assert (= (and b!3055360 (not c!506692)) b!3055359))

(assert (= (and b!3055344 (not res!1254819)) b!3055351))

(assert (= (and b!3055344 c!506697) b!3055347))

(assert (= (and b!3055344 (not c!506697)) b!3055349))

(assert (= (and b!3055359 c!506689) b!3055353))

(assert (= (and b!3055359 (not c!506689)) b!3055352))

(assert (= (and b!3055353 c!506698) b!3055339))

(assert (= (and b!3055353 (not c!506698)) b!3055354))

(assert (= (and b!3055354 c!506691) b!3055350))

(assert (= (and b!3055354 (not c!506691)) b!3055345))

(assert (= (and b!3055352 (not res!1254818)) b!3055338))

(assert (= (and b!3055352 c!506693) b!3055356))

(assert (= (and b!3055352 (not c!506693)) b!3055340))

(assert (= (and b!3055340 c!506696) b!3055342))

(assert (= (and b!3055340 (not c!506696)) b!3055337))

(assert (= (and b!3055337 c!506688) b!3055361))

(assert (= (and b!3055337 (not c!506688)) b!3055343))

(assert (= (or b!3055353 b!3055352) bm!210748))

(assert (= (or b!3055353 b!3055352) bm!210752))

(assert (= (or b!3055354 b!3055352) bm!210746))

(assert (= (or b!3055353 b!3055338) bm!210749))

(assert (= (or b!3055351 b!3055340) bm!210751))

(assert (= (or b!3055344 bm!210748) bm!210750))

(assert (= (or b!3055344 bm!210746) bm!210747))

(assert (= (and d!854786 res!1254817) b!3055358))

(declare-fun m!3379575 () Bool)

(assert (=> d!854786 m!3379575))

(declare-fun m!3379577 () Bool)

(assert (=> d!854786 m!3379577))

(declare-fun m!3379579 () Bool)

(assert (=> bm!210751 m!3379579))

(declare-fun m!3379581 () Bool)

(assert (=> bm!210752 m!3379581))

(declare-fun m!3379583 () Bool)

(assert (=> bm!210747 m!3379583))

(declare-fun m!3379585 () Bool)

(assert (=> bm!210749 m!3379585))

(declare-fun m!3379587 () Bool)

(assert (=> bm!210750 m!3379587))

(declare-fun m!3379589 () Bool)

(assert (=> b!3055358 m!3379589))

(declare-fun m!3379591 () Bool)

(assert (=> b!3055358 m!3379591))

(declare-fun m!3379593 () Bool)

(assert (=> b!3055337 m!3379593))

(assert (=> b!3054749 d!854786))

(declare-fun b!3055362 () Bool)

(declare-fun e!1913759 () Regex!9469)

(declare-fun e!1913763 () Regex!9469)

(assert (=> b!3055362 (= e!1913759 e!1913763)))

(declare-fun c!506699 () Bool)

(declare-fun lt!1048975 () Regex!9469)

(assert (=> b!3055362 (= c!506699 (isEmptyExpr!526 lt!1048975))))

(declare-fun bm!210753 () Bool)

(declare-fun call!210759 () Bool)

(declare-fun call!210758 () Bool)

(assert (=> bm!210753 (= call!210759 call!210758)))

(declare-fun lt!1048972 () Regex!9469)

(declare-fun c!506703 () Bool)

(declare-fun c!506700 () Bool)

(declare-fun bm!210754 () Bool)

(declare-fun lt!1048971 () Regex!9469)

(declare-fun lt!1048976 () Regex!9469)

(assert (=> bm!210754 (= call!210758 (isEmptyLang!520 (ite c!506703 lt!1048976 (ite c!506700 lt!1048972 lt!1048971))))))

(declare-fun bm!210755 () Bool)

(declare-fun call!210761 () Regex!9469)

(declare-fun call!210760 () Regex!9469)

(assert (=> bm!210755 (= call!210761 call!210760)))

(declare-fun call!210762 () Bool)

(declare-fun lt!1048974 () Regex!9469)

(declare-fun bm!210756 () Bool)

(assert (=> bm!210756 (= call!210762 (isEmptyLang!520 (ite c!506700 lt!1048974 lt!1048975)))))

(declare-fun b!3055363 () Bool)

(declare-fun e!1913758 () Bool)

(assert (=> b!3055363 (= e!1913758 call!210762)))

(declare-fun b!3055364 () Bool)

(declare-fun e!1913754 () Regex!9469)

(assert (=> b!3055364 (= e!1913754 lt!1048972)))

(declare-fun b!3055365 () Bool)

(declare-fun c!506707 () Bool)

(declare-fun call!210763 () Bool)

(assert (=> b!3055365 (= c!506707 call!210763)))

(declare-fun e!1913757 () Regex!9469)

(assert (=> b!3055365 (= e!1913757 e!1913759)))

(declare-fun bm!210757 () Bool)

(assert (=> bm!210757 (= call!210760 (simplify!424 (ite c!506703 (reg!9798 (regOne!19450 r!17423)) (ite c!506700 (regOne!19451 (regOne!19450 r!17423)) (regTwo!19450 (regOne!19450 r!17423))))))))

(declare-fun bm!210758 () Bool)

(assert (=> bm!210758 (= call!210763 (isEmptyExpr!526 (ite c!506703 lt!1048976 lt!1048971)))))

(declare-fun b!3055366 () Bool)

(declare-fun e!1913765 () Regex!9469)

(declare-fun e!1913761 () Regex!9469)

(assert (=> b!3055366 (= e!1913765 e!1913761)))

(declare-fun c!506701 () Bool)

(assert (=> b!3055366 (= c!506701 ((_ is ElementMatch!9469) (regOne!19450 r!17423)))))

(declare-fun d!854788 () Bool)

(declare-fun e!1913756 () Bool)

(assert (=> d!854788 e!1913756))

(declare-fun res!1254820 () Bool)

(assert (=> d!854788 (=> (not res!1254820) (not e!1913756))))

(declare-fun lt!1048973 () Regex!9469)

(assert (=> d!854788 (= res!1254820 (validRegex!4202 lt!1048973))))

(assert (=> d!854788 (= lt!1048973 e!1913765)))

(declare-fun c!506706 () Bool)

(assert (=> d!854788 (= c!506706 ((_ is EmptyLang!9469) (regOne!19450 r!17423)))))

(assert (=> d!854788 (validRegex!4202 (regOne!19450 r!17423))))

(assert (=> d!854788 (= (simplify!424 (regOne!19450 r!17423)) lt!1048973)))

(declare-fun b!3055367 () Bool)

(assert (=> b!3055367 (= e!1913759 lt!1048975)))

(declare-fun b!3055368 () Bool)

(assert (=> b!3055368 (= e!1913763 (Concat!14790 lt!1048971 lt!1048975))))

(declare-fun b!3055369 () Bool)

(declare-fun c!506708 () Bool)

(declare-fun e!1913767 () Bool)

(assert (=> b!3055369 (= c!506708 e!1913767)))

(declare-fun res!1254822 () Bool)

(assert (=> b!3055369 (=> res!1254822 e!1913767)))

(assert (=> b!3055369 (= res!1254822 call!210758)))

(assert (=> b!3055369 (= lt!1048976 call!210760)))

(declare-fun e!1913755 () Regex!9469)

(declare-fun e!1913764 () Regex!9469)

(assert (=> b!3055369 (= e!1913755 e!1913764)))

(declare-fun b!3055370 () Bool)

(declare-fun e!1913760 () Regex!9469)

(assert (=> b!3055370 (= e!1913760 (Union!9469 lt!1048974 lt!1048972))))

(declare-fun b!3055371 () Bool)

(assert (=> b!3055371 (= e!1913765 EmptyLang!9469)))

(declare-fun b!3055372 () Bool)

(assert (=> b!3055372 (= e!1913764 EmptyExpr!9469)))

(declare-fun b!3055373 () Bool)

(assert (=> b!3055373 (= e!1913761 (regOne!19450 r!17423))))

(declare-fun b!3055374 () Bool)

(assert (=> b!3055374 (= e!1913764 (Star!9469 lt!1048976))))

(declare-fun bm!210759 () Bool)

(declare-fun call!210764 () Regex!9469)

(assert (=> bm!210759 (= call!210764 (simplify!424 (ite c!506700 (regTwo!19451 (regOne!19450 r!17423)) (regOne!19450 (regOne!19450 r!17423)))))))

(declare-fun b!3055375 () Bool)

(assert (=> b!3055375 (= e!1913760 lt!1048974)))

(declare-fun b!3055376 () Bool)

(assert (=> b!3055376 (= e!1913767 call!210763)))

(declare-fun b!3055377 () Bool)

(declare-fun e!1913766 () Regex!9469)

(assert (=> b!3055377 (= e!1913766 e!1913757)))

(assert (=> b!3055377 (= lt!1048971 call!210764)))

(assert (=> b!3055377 (= lt!1048975 call!210761)))

(declare-fun res!1254821 () Bool)

(assert (=> b!3055377 (= res!1254821 call!210759)))

(assert (=> b!3055377 (=> res!1254821 e!1913758)))

(declare-fun c!506704 () Bool)

(assert (=> b!3055377 (= c!506704 e!1913758)))

(declare-fun b!3055378 () Bool)

(assert (=> b!3055378 (= e!1913766 e!1913754)))

(assert (=> b!3055378 (= lt!1048974 call!210761)))

(assert (=> b!3055378 (= lt!1048972 call!210764)))

(declare-fun c!506709 () Bool)

(assert (=> b!3055378 (= c!506709 call!210762)))

(declare-fun b!3055379 () Bool)

(declare-fun c!506702 () Bool)

(assert (=> b!3055379 (= c!506702 call!210759)))

(assert (=> b!3055379 (= e!1913754 e!1913760)))

(declare-fun b!3055380 () Bool)

(declare-fun e!1913762 () Regex!9469)

(assert (=> b!3055380 (= e!1913762 EmptyExpr!9469)))

(declare-fun b!3055381 () Bool)

(assert (=> b!3055381 (= e!1913757 EmptyLang!9469)))

(declare-fun b!3055382 () Bool)

(declare-fun c!506705 () Bool)

(assert (=> b!3055382 (= c!506705 ((_ is EmptyExpr!9469) (regOne!19450 r!17423)))))

(assert (=> b!3055382 (= e!1913761 e!1913762)))

(declare-fun b!3055383 () Bool)

(assert (=> b!3055383 (= e!1913756 (= (nullable!3115 lt!1048973) (nullable!3115 (regOne!19450 r!17423))))))

(declare-fun b!3055384 () Bool)

(assert (=> b!3055384 (= c!506700 ((_ is Union!9469) (regOne!19450 r!17423)))))

(assert (=> b!3055384 (= e!1913755 e!1913766)))

(declare-fun b!3055385 () Bool)

(assert (=> b!3055385 (= e!1913762 e!1913755)))

(assert (=> b!3055385 (= c!506703 ((_ is Star!9469) (regOne!19450 r!17423)))))

(declare-fun b!3055386 () Bool)

(assert (=> b!3055386 (= e!1913763 lt!1048971)))

(assert (= (and d!854788 c!506706) b!3055371))

(assert (= (and d!854788 (not c!506706)) b!3055366))

(assert (= (and b!3055366 c!506701) b!3055373))

(assert (= (and b!3055366 (not c!506701)) b!3055382))

(assert (= (and b!3055382 c!506705) b!3055380))

(assert (= (and b!3055382 (not c!506705)) b!3055385))

(assert (= (and b!3055385 c!506703) b!3055369))

(assert (= (and b!3055385 (not c!506703)) b!3055384))

(assert (= (and b!3055369 (not res!1254822)) b!3055376))

(assert (= (and b!3055369 c!506708) b!3055372))

(assert (= (and b!3055369 (not c!506708)) b!3055374))

(assert (= (and b!3055384 c!506700) b!3055378))

(assert (= (and b!3055384 (not c!506700)) b!3055377))

(assert (= (and b!3055378 c!506709) b!3055364))

(assert (= (and b!3055378 (not c!506709)) b!3055379))

(assert (= (and b!3055379 c!506702) b!3055375))

(assert (= (and b!3055379 (not c!506702)) b!3055370))

(assert (= (and b!3055377 (not res!1254821)) b!3055363))

(assert (= (and b!3055377 c!506704) b!3055381))

(assert (= (and b!3055377 (not c!506704)) b!3055365))

(assert (= (and b!3055365 c!506707) b!3055367))

(assert (= (and b!3055365 (not c!506707)) b!3055362))

(assert (= (and b!3055362 c!506699) b!3055386))

(assert (= (and b!3055362 (not c!506699)) b!3055368))

(assert (= (or b!3055378 b!3055377) bm!210755))

(assert (= (or b!3055378 b!3055377) bm!210759))

(assert (= (or b!3055379 b!3055377) bm!210753))

(assert (= (or b!3055378 b!3055363) bm!210756))

(assert (= (or b!3055376 b!3055365) bm!210758))

(assert (= (or b!3055369 bm!210755) bm!210757))

(assert (= (or b!3055369 bm!210753) bm!210754))

(assert (= (and d!854788 res!1254820) b!3055383))

(declare-fun m!3379595 () Bool)

(assert (=> d!854788 m!3379595))

(assert (=> d!854788 m!3379405))

(declare-fun m!3379597 () Bool)

(assert (=> bm!210758 m!3379597))

(declare-fun m!3379599 () Bool)

(assert (=> bm!210759 m!3379599))

(declare-fun m!3379601 () Bool)

(assert (=> bm!210754 m!3379601))

(declare-fun m!3379603 () Bool)

(assert (=> bm!210756 m!3379603))

(declare-fun m!3379605 () Bool)

(assert (=> bm!210757 m!3379605))

(declare-fun m!3379607 () Bool)

(assert (=> b!3055383 m!3379607))

(declare-fun m!3379609 () Bool)

(assert (=> b!3055383 m!3379609))

(declare-fun m!3379611 () Bool)

(assert (=> b!3055362 m!3379611))

(assert (=> b!3054749 d!854788))

(declare-fun b!3055398 () Bool)

(declare-fun e!1913770 () Bool)

(declare-fun tp!966373 () Bool)

(declare-fun tp!966372 () Bool)

(assert (=> b!3055398 (= e!1913770 (and tp!966373 tp!966372))))

(declare-fun b!3055399 () Bool)

(declare-fun tp!966370 () Bool)

(assert (=> b!3055399 (= e!1913770 tp!966370)))

(declare-fun b!3055400 () Bool)

(declare-fun tp!966371 () Bool)

(declare-fun tp!966374 () Bool)

(assert (=> b!3055400 (= e!1913770 (and tp!966371 tp!966374))))

(assert (=> b!3054745 (= tp!966316 e!1913770)))

(declare-fun b!3055397 () Bool)

(assert (=> b!3055397 (= e!1913770 tp_is_empty!16501)))

(assert (= (and b!3054745 ((_ is ElementMatch!9469) (regOne!19451 r!17423))) b!3055397))

(assert (= (and b!3054745 ((_ is Concat!14790) (regOne!19451 r!17423))) b!3055398))

(assert (= (and b!3054745 ((_ is Star!9469) (regOne!19451 r!17423))) b!3055399))

(assert (= (and b!3054745 ((_ is Union!9469) (regOne!19451 r!17423))) b!3055400))

(declare-fun b!3055402 () Bool)

(declare-fun e!1913771 () Bool)

(declare-fun tp!966378 () Bool)

(declare-fun tp!966377 () Bool)

(assert (=> b!3055402 (= e!1913771 (and tp!966378 tp!966377))))

(declare-fun b!3055403 () Bool)

(declare-fun tp!966375 () Bool)

(assert (=> b!3055403 (= e!1913771 tp!966375)))

(declare-fun b!3055404 () Bool)

(declare-fun tp!966376 () Bool)

(declare-fun tp!966379 () Bool)

(assert (=> b!3055404 (= e!1913771 (and tp!966376 tp!966379))))

(assert (=> b!3054745 (= tp!966320 e!1913771)))

(declare-fun b!3055401 () Bool)

(assert (=> b!3055401 (= e!1913771 tp_is_empty!16501)))

(assert (= (and b!3054745 ((_ is ElementMatch!9469) (regTwo!19451 r!17423))) b!3055401))

(assert (= (and b!3054745 ((_ is Concat!14790) (regTwo!19451 r!17423))) b!3055402))

(assert (= (and b!3054745 ((_ is Star!9469) (regTwo!19451 r!17423))) b!3055403))

(assert (= (and b!3054745 ((_ is Union!9469) (regTwo!19451 r!17423))) b!3055404))

(declare-fun b!3055406 () Bool)

(declare-fun e!1913772 () Bool)

(declare-fun tp!966383 () Bool)

(declare-fun tp!966382 () Bool)

(assert (=> b!3055406 (= e!1913772 (and tp!966383 tp!966382))))

(declare-fun b!3055407 () Bool)

(declare-fun tp!966380 () Bool)

(assert (=> b!3055407 (= e!1913772 tp!966380)))

(declare-fun b!3055408 () Bool)

(declare-fun tp!966381 () Bool)

(declare-fun tp!966384 () Bool)

(assert (=> b!3055408 (= e!1913772 (and tp!966381 tp!966384))))

(assert (=> b!3054748 (= tp!966319 e!1913772)))

(declare-fun b!3055405 () Bool)

(assert (=> b!3055405 (= e!1913772 tp_is_empty!16501)))

(assert (= (and b!3054748 ((_ is ElementMatch!9469) (regOne!19450 r!17423))) b!3055405))

(assert (= (and b!3054748 ((_ is Concat!14790) (regOne!19450 r!17423))) b!3055406))

(assert (= (and b!3054748 ((_ is Star!9469) (regOne!19450 r!17423))) b!3055407))

(assert (= (and b!3054748 ((_ is Union!9469) (regOne!19450 r!17423))) b!3055408))

(declare-fun b!3055410 () Bool)

(declare-fun e!1913773 () Bool)

(declare-fun tp!966388 () Bool)

(declare-fun tp!966387 () Bool)

(assert (=> b!3055410 (= e!1913773 (and tp!966388 tp!966387))))

(declare-fun b!3055411 () Bool)

(declare-fun tp!966385 () Bool)

(assert (=> b!3055411 (= e!1913773 tp!966385)))

(declare-fun b!3055412 () Bool)

(declare-fun tp!966386 () Bool)

(declare-fun tp!966389 () Bool)

(assert (=> b!3055412 (= e!1913773 (and tp!966386 tp!966389))))

(assert (=> b!3054748 (= tp!966321 e!1913773)))

(declare-fun b!3055409 () Bool)

(assert (=> b!3055409 (= e!1913773 tp_is_empty!16501)))

(assert (= (and b!3054748 ((_ is ElementMatch!9469) (regTwo!19450 r!17423))) b!3055409))

(assert (= (and b!3054748 ((_ is Concat!14790) (regTwo!19450 r!17423))) b!3055410))

(assert (= (and b!3054748 ((_ is Star!9469) (regTwo!19450 r!17423))) b!3055411))

(assert (= (and b!3054748 ((_ is Union!9469) (regTwo!19450 r!17423))) b!3055412))

(declare-fun b!3055414 () Bool)

(declare-fun e!1913774 () Bool)

(declare-fun tp!966393 () Bool)

(declare-fun tp!966392 () Bool)

(assert (=> b!3055414 (= e!1913774 (and tp!966393 tp!966392))))

(declare-fun b!3055415 () Bool)

(declare-fun tp!966390 () Bool)

(assert (=> b!3055415 (= e!1913774 tp!966390)))

(declare-fun b!3055416 () Bool)

(declare-fun tp!966391 () Bool)

(declare-fun tp!966394 () Bool)

(assert (=> b!3055416 (= e!1913774 (and tp!966391 tp!966394))))

(assert (=> b!3054747 (= tp!966318 e!1913774)))

(declare-fun b!3055413 () Bool)

(assert (=> b!3055413 (= e!1913774 tp_is_empty!16501)))

(assert (= (and b!3054747 ((_ is ElementMatch!9469) (reg!9798 r!17423))) b!3055413))

(assert (= (and b!3054747 ((_ is Concat!14790) (reg!9798 r!17423))) b!3055414))

(assert (= (and b!3054747 ((_ is Star!9469) (reg!9798 r!17423))) b!3055415))

(assert (= (and b!3054747 ((_ is Union!9469) (reg!9798 r!17423))) b!3055416))

(declare-fun b!3055421 () Bool)

(declare-fun e!1913777 () Bool)

(declare-fun tp!966397 () Bool)

(assert (=> b!3055421 (= e!1913777 (and tp_is_empty!16501 tp!966397))))

(assert (=> b!3054744 (= tp!966317 e!1913777)))

(assert (= (and b!3054744 ((_ is Cons!35210) (t!234399 s!11993))) b!3055421))

(check-sat (not b!3055237) (not bm!210758) (not bm!210678) (not bm!210682) (not b!3055279) (not b!3055383) (not b!3055337) (not bm!210751) (not b!3054792) (not b!3055400) (not bm!210681) (not d!854788) (not bm!210757) (not b!3055415) (not bm!210664) (not bm!210759) (not b!3055398) (not b!3055284) (not b!3054938) (not b!3055414) (not bm!210679) (not b!3055416) (not d!854786) (not bm!210617) (not bm!210752) (not b!3055235) (not b!3054960) (not bm!210754) (not bm!210731) (not b!3055274) (not bm!210661) (not b!3055412) (not b!3055358) (not d!854780) (not b!3055273) (not b!3055362) (not bm!210750) (not b!3055406) tp_is_empty!16501 (not b!3055403) (not bm!210674) (not b!3055281) (not bm!210673) (not b!3055404) (not b!3055410) (not b!3055285) (not bm!210749) (not d!854782) (not b!3055421) (not bm!210618) (not bm!210756) (not b!3055399) (not bm!210747) (not b!3055402) (not b!3055407) (not bm!210675) (not bm!210728) (not b!3055411) (not bm!210659) (not bm!210665) (not bm!210660) (not bm!210727) (not b!3055408))
(check-sat)
