; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282680 () Bool)

(assert start!282680)

(declare-fun b!2904571 () Bool)

(declare-fun res!1199781 () Bool)

(declare-fun e!1833763 () Bool)

(assert (=> b!2904571 (=> (not res!1199781) (not e!1833763))))

(declare-datatypes ((C!17954 0))(
  ( (C!17955 (val!11011 Int)) )
))
(declare-datatypes ((List!34687 0))(
  ( (Nil!34563) (Cons!34563 (h!39983 C!17954) (t!233730 List!34687)) )
))
(declare-fun prefix!1456 () List!34687)

(declare-fun s!13418 () List!34687)

(declare-fun isPrefix!2723 (List!34687 List!34687) Bool)

(assert (=> b!2904571 (= res!1199781 (isPrefix!2723 prefix!1456 s!13418))))

(declare-fun b!2904572 () Bool)

(declare-fun e!1833766 () Bool)

(assert (=> b!2904572 (= e!1833763 e!1833766)))

(declare-fun res!1199783 () Bool)

(assert (=> b!2904572 (=> (not res!1199783) (not e!1833766))))

(declare-datatypes ((Regex!8886 0))(
  ( (ElementMatch!8886 (c!473303 C!17954)) (Concat!14207 (regOne!18284 Regex!8886) (regTwo!18284 Regex!8886)) (EmptyExpr!8886) (Star!8886 (reg!9215 Regex!8886)) (EmptyLang!8886) (Union!8886 (regOne!18285 Regex!8886) (regTwo!18285 Regex!8886)) )
))
(declare-fun lt!1022435 () Regex!8886)

(declare-fun validRegex!3659 (Regex!8886) Bool)

(assert (=> b!2904572 (= res!1199783 (validRegex!3659 lt!1022435))))

(declare-fun r!19097 () Regex!8886)

(declare-fun derivativeStep!2393 (Regex!8886 C!17954) Regex!8886)

(assert (=> b!2904572 (= lt!1022435 (derivativeStep!2393 r!19097 (h!39983 prefix!1456)))))

(declare-fun b!2904573 () Bool)

(declare-fun prefixMatch!944 (Regex!8886 List!34687) Bool)

(assert (=> b!2904573 (= e!1833766 (prefixMatch!944 lt!1022435 (t!233730 prefix!1456)))))

(declare-fun res!1199780 () Bool)

(assert (=> start!282680 (=> (not res!1199780) (not e!1833763))))

(assert (=> start!282680 (= res!1199780 (validRegex!3659 r!19097))))

(assert (=> start!282680 e!1833763))

(declare-fun e!1833762 () Bool)

(assert (=> start!282680 e!1833762))

(declare-fun e!1833764 () Bool)

(assert (=> start!282680 e!1833764))

(declare-fun e!1833765 () Bool)

(assert (=> start!282680 e!1833765))

(declare-fun b!2904574 () Bool)

(declare-fun tp_is_empty!15359 () Bool)

(declare-fun tp!932685 () Bool)

(assert (=> b!2904574 (= e!1833764 (and tp_is_empty!15359 tp!932685))))

(declare-fun b!2904575 () Bool)

(declare-fun res!1199784 () Bool)

(assert (=> b!2904575 (=> (not res!1199784) (not e!1833763))))

(assert (=> b!2904575 (= res!1199784 (not (is-Nil!34563 prefix!1456)))))

(declare-fun b!2904576 () Bool)

(declare-fun tp!932687 () Bool)

(assert (=> b!2904576 (= e!1833765 (and tp_is_empty!15359 tp!932687))))

(declare-fun b!2904577 () Bool)

(assert (=> b!2904577 (= e!1833762 tp_is_empty!15359)))

(declare-fun b!2904578 () Bool)

(declare-fun res!1199782 () Bool)

(assert (=> b!2904578 (=> (not res!1199782) (not e!1833763))))

(assert (=> b!2904578 (= res!1199782 (not (prefixMatch!944 r!19097 prefix!1456)))))

(declare-fun b!2904579 () Bool)

(declare-fun tp!932683 () Bool)

(assert (=> b!2904579 (= e!1833762 tp!932683)))

(declare-fun b!2904580 () Bool)

(declare-fun res!1199785 () Bool)

(assert (=> b!2904580 (=> (not res!1199785) (not e!1833766))))

(declare-fun tail!4647 (List!34687) List!34687)

(assert (=> b!2904580 (= res!1199785 (isPrefix!2723 (t!233730 prefix!1456) (tail!4647 s!13418)))))

(declare-fun b!2904581 () Bool)

(declare-fun tp!932682 () Bool)

(declare-fun tp!932684 () Bool)

(assert (=> b!2904581 (= e!1833762 (and tp!932682 tp!932684))))

(declare-fun b!2904582 () Bool)

(declare-fun tp!932688 () Bool)

(declare-fun tp!932686 () Bool)

(assert (=> b!2904582 (= e!1833762 (and tp!932688 tp!932686))))

(assert (= (and start!282680 res!1199780) b!2904571))

(assert (= (and b!2904571 res!1199781) b!2904578))

(assert (= (and b!2904578 res!1199782) b!2904575))

(assert (= (and b!2904575 res!1199784) b!2904572))

(assert (= (and b!2904572 res!1199783) b!2904580))

(assert (= (and b!2904580 res!1199785) b!2904573))

(assert (= (and start!282680 (is-ElementMatch!8886 r!19097)) b!2904577))

(assert (= (and start!282680 (is-Concat!14207 r!19097)) b!2904581))

(assert (= (and start!282680 (is-Star!8886 r!19097)) b!2904579))

(assert (= (and start!282680 (is-Union!8886 r!19097)) b!2904582))

(assert (= (and start!282680 (is-Cons!34563 prefix!1456)) b!2904574))

(assert (= (and start!282680 (is-Cons!34563 s!13418)) b!2904576))

(declare-fun m!3307447 () Bool)

(assert (=> b!2904578 m!3307447))

(declare-fun m!3307449 () Bool)

(assert (=> b!2904573 m!3307449))

(declare-fun m!3307451 () Bool)

(assert (=> start!282680 m!3307451))

(declare-fun m!3307453 () Bool)

(assert (=> b!2904572 m!3307453))

(declare-fun m!3307455 () Bool)

(assert (=> b!2904572 m!3307455))

(declare-fun m!3307457 () Bool)

(assert (=> b!2904571 m!3307457))

(declare-fun m!3307459 () Bool)

(assert (=> b!2904580 m!3307459))

(assert (=> b!2904580 m!3307459))

(declare-fun m!3307461 () Bool)

(assert (=> b!2904580 m!3307461))

(push 1)

(assert (not b!2904574))

(assert (not b!2904582))

(assert (not b!2904572))

(assert (not b!2904579))

(assert (not start!282680))

(assert (not b!2904581))

(assert (not b!2904576))

(assert (not b!2904571))

(assert (not b!2904578))

(assert (not b!2904573))

(assert tp_is_empty!15359)

(assert (not b!2904580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2904664 () Bool)

(declare-fun e!1833817 () Bool)

(declare-fun e!1833820 () Bool)

(assert (=> b!2904664 (= e!1833817 e!1833820)))

(declare-fun c!473316 () Bool)

(assert (=> b!2904664 (= c!473316 (is-Star!8886 r!19097))))

(declare-fun b!2904665 () Bool)

(declare-fun res!1199829 () Bool)

(declare-fun e!1833819 () Bool)

(assert (=> b!2904665 (=> res!1199829 e!1833819)))

(assert (=> b!2904665 (= res!1199829 (not (is-Concat!14207 r!19097)))))

(declare-fun e!1833818 () Bool)

(assert (=> b!2904665 (= e!1833818 e!1833819)))

(declare-fun d!835837 () Bool)

(declare-fun res!1199833 () Bool)

(assert (=> d!835837 (=> res!1199833 e!1833817)))

(assert (=> d!835837 (= res!1199833 (is-ElementMatch!8886 r!19097))))

(assert (=> d!835837 (= (validRegex!3659 r!19097) e!1833817)))

(declare-fun b!2904666 () Bool)

(declare-fun e!1833822 () Bool)

(declare-fun call!189430 () Bool)

(assert (=> b!2904666 (= e!1833822 call!189430)))

(declare-fun b!2904667 () Bool)

(declare-fun e!1833821 () Bool)

(declare-fun call!189432 () Bool)

(assert (=> b!2904667 (= e!1833821 call!189432)))

(declare-fun bm!189425 () Bool)

(declare-fun call!189431 () Bool)

(assert (=> bm!189425 (= call!189431 call!189432)))

(declare-fun b!2904668 () Bool)

(assert (=> b!2904668 (= e!1833820 e!1833818)))

(declare-fun c!473315 () Bool)

(assert (=> b!2904668 (= c!473315 (is-Union!8886 r!19097))))

(declare-fun b!2904669 () Bool)

(assert (=> b!2904669 (= e!1833819 e!1833822)))

(declare-fun res!1199832 () Bool)

(assert (=> b!2904669 (=> (not res!1199832) (not e!1833822))))

(assert (=> b!2904669 (= res!1199832 call!189431)))

(declare-fun bm!189426 () Bool)

(assert (=> bm!189426 (= call!189432 (validRegex!3659 (ite c!473316 (reg!9215 r!19097) (ite c!473315 (regOne!18285 r!19097) (regOne!18284 r!19097)))))))

(declare-fun b!2904670 () Bool)

(assert (=> b!2904670 (= e!1833820 e!1833821)))

(declare-fun res!1199831 () Bool)

(declare-fun nullable!2776 (Regex!8886) Bool)

(assert (=> b!2904670 (= res!1199831 (not (nullable!2776 (reg!9215 r!19097))))))

(assert (=> b!2904670 (=> (not res!1199831) (not e!1833821))))

(declare-fun b!2904671 () Bool)

(declare-fun res!1199830 () Bool)

(declare-fun e!1833823 () Bool)

(assert (=> b!2904671 (=> (not res!1199830) (not e!1833823))))

(assert (=> b!2904671 (= res!1199830 call!189431)))

(assert (=> b!2904671 (= e!1833818 e!1833823)))

(declare-fun b!2904672 () Bool)

(assert (=> b!2904672 (= e!1833823 call!189430)))

(declare-fun bm!189427 () Bool)

(assert (=> bm!189427 (= call!189430 (validRegex!3659 (ite c!473315 (regTwo!18285 r!19097) (regTwo!18284 r!19097))))))

(assert (= (and d!835837 (not res!1199833)) b!2904664))

(assert (= (and b!2904664 c!473316) b!2904670))

(assert (= (and b!2904664 (not c!473316)) b!2904668))

(assert (= (and b!2904670 res!1199831) b!2904667))

(assert (= (and b!2904668 c!473315) b!2904671))

(assert (= (and b!2904668 (not c!473315)) b!2904665))

(assert (= (and b!2904671 res!1199830) b!2904672))

(assert (= (and b!2904665 (not res!1199829)) b!2904669))

(assert (= (and b!2904669 res!1199832) b!2904666))

(assert (= (or b!2904671 b!2904669) bm!189425))

(assert (= (or b!2904672 b!2904666) bm!189427))

(assert (= (or b!2904667 bm!189425) bm!189426))

(declare-fun m!3307483 () Bool)

(assert (=> bm!189426 m!3307483))

(declare-fun m!3307487 () Bool)

(assert (=> b!2904670 m!3307487))

(declare-fun m!3307489 () Bool)

(assert (=> bm!189427 m!3307489))

(assert (=> start!282680 d!835837))

(declare-fun b!2904673 () Bool)

(declare-fun e!1833824 () Bool)

(declare-fun e!1833827 () Bool)

(assert (=> b!2904673 (= e!1833824 e!1833827)))

(declare-fun c!473318 () Bool)

(assert (=> b!2904673 (= c!473318 (is-Star!8886 lt!1022435))))

(declare-fun b!2904674 () Bool)

(declare-fun res!1199834 () Bool)

(declare-fun e!1833826 () Bool)

(assert (=> b!2904674 (=> res!1199834 e!1833826)))

(assert (=> b!2904674 (= res!1199834 (not (is-Concat!14207 lt!1022435)))))

(declare-fun e!1833825 () Bool)

(assert (=> b!2904674 (= e!1833825 e!1833826)))

(declare-fun d!835841 () Bool)

(declare-fun res!1199838 () Bool)

(assert (=> d!835841 (=> res!1199838 e!1833824)))

(assert (=> d!835841 (= res!1199838 (is-ElementMatch!8886 lt!1022435))))

(assert (=> d!835841 (= (validRegex!3659 lt!1022435) e!1833824)))

(declare-fun b!2904675 () Bool)

(declare-fun e!1833829 () Bool)

(declare-fun call!189433 () Bool)

(assert (=> b!2904675 (= e!1833829 call!189433)))

(declare-fun b!2904676 () Bool)

(declare-fun e!1833828 () Bool)

(declare-fun call!189435 () Bool)

(assert (=> b!2904676 (= e!1833828 call!189435)))

(declare-fun bm!189428 () Bool)

(declare-fun call!189434 () Bool)

(assert (=> bm!189428 (= call!189434 call!189435)))

(declare-fun b!2904677 () Bool)

(assert (=> b!2904677 (= e!1833827 e!1833825)))

(declare-fun c!473317 () Bool)

(assert (=> b!2904677 (= c!473317 (is-Union!8886 lt!1022435))))

(declare-fun b!2904678 () Bool)

(assert (=> b!2904678 (= e!1833826 e!1833829)))

(declare-fun res!1199837 () Bool)

(assert (=> b!2904678 (=> (not res!1199837) (not e!1833829))))

(assert (=> b!2904678 (= res!1199837 call!189434)))

(declare-fun bm!189429 () Bool)

(assert (=> bm!189429 (= call!189435 (validRegex!3659 (ite c!473318 (reg!9215 lt!1022435) (ite c!473317 (regOne!18285 lt!1022435) (regOne!18284 lt!1022435)))))))

(declare-fun b!2904679 () Bool)

(assert (=> b!2904679 (= e!1833827 e!1833828)))

(declare-fun res!1199836 () Bool)

(assert (=> b!2904679 (= res!1199836 (not (nullable!2776 (reg!9215 lt!1022435))))))

(assert (=> b!2904679 (=> (not res!1199836) (not e!1833828))))

(declare-fun b!2904680 () Bool)

(declare-fun res!1199835 () Bool)

(declare-fun e!1833830 () Bool)

(assert (=> b!2904680 (=> (not res!1199835) (not e!1833830))))

(assert (=> b!2904680 (= res!1199835 call!189434)))

(assert (=> b!2904680 (= e!1833825 e!1833830)))

(declare-fun b!2904681 () Bool)

(assert (=> b!2904681 (= e!1833830 call!189433)))

(declare-fun bm!189430 () Bool)

(assert (=> bm!189430 (= call!189433 (validRegex!3659 (ite c!473317 (regTwo!18285 lt!1022435) (regTwo!18284 lt!1022435))))))

(assert (= (and d!835841 (not res!1199838)) b!2904673))

(assert (= (and b!2904673 c!473318) b!2904679))

(assert (= (and b!2904673 (not c!473318)) b!2904677))

(assert (= (and b!2904679 res!1199836) b!2904676))

(assert (= (and b!2904677 c!473317) b!2904680))

(assert (= (and b!2904677 (not c!473317)) b!2904674))

(assert (= (and b!2904680 res!1199835) b!2904681))

(assert (= (and b!2904674 (not res!1199834)) b!2904678))

(assert (= (and b!2904678 res!1199837) b!2904675))

(assert (= (or b!2904680 b!2904678) bm!189428))

(assert (= (or b!2904681 b!2904675) bm!189430))

(assert (= (or b!2904676 bm!189428) bm!189429))

(declare-fun m!3307491 () Bool)

(assert (=> bm!189429 m!3307491))

(declare-fun m!3307493 () Bool)

(assert (=> b!2904679 m!3307493))

(declare-fun m!3307495 () Bool)

(assert (=> bm!189430 m!3307495))

(assert (=> b!2904572 d!835841))

(declare-fun b!2904732 () Bool)

(declare-fun e!1833860 () Regex!8886)

(declare-fun call!189457 () Regex!8886)

(assert (=> b!2904732 (= e!1833860 (Union!8886 (Concat!14207 call!189457 (regTwo!18284 r!19097)) EmptyLang!8886))))

(declare-fun b!2904733 () Bool)

(declare-fun e!1833858 () Regex!8886)

(declare-fun e!1833857 () Regex!8886)

(assert (=> b!2904733 (= e!1833858 e!1833857)))

(declare-fun c!473347 () Bool)

(assert (=> b!2904733 (= c!473347 (is-Star!8886 r!19097))))

(declare-fun bm!189451 () Bool)

(declare-fun c!473346 () Bool)

(declare-fun call!189459 () Regex!8886)

(assert (=> bm!189451 (= call!189459 (derivativeStep!2393 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097)) (h!39983 prefix!1456)))))

(declare-fun b!2904734 () Bool)

(declare-fun call!189458 () Regex!8886)

(assert (=> b!2904734 (= e!1833858 (Union!8886 call!189458 call!189459))))

(declare-fun b!2904735 () Bool)

(declare-fun c!473344 () Bool)

(assert (=> b!2904735 (= c!473344 (nullable!2776 (regOne!18284 r!19097)))))

(assert (=> b!2904735 (= e!1833857 e!1833860)))

(declare-fun d!835843 () Bool)

(declare-fun lt!1022444 () Regex!8886)

(assert (=> d!835843 (validRegex!3659 lt!1022444)))

(declare-fun e!1833859 () Regex!8886)

(assert (=> d!835843 (= lt!1022444 e!1833859)))

(declare-fun c!473345 () Bool)

(assert (=> d!835843 (= c!473345 (or (is-EmptyExpr!8886 r!19097) (is-EmptyLang!8886 r!19097)))))

(assert (=> d!835843 (validRegex!3659 r!19097)))

(assert (=> d!835843 (= (derivativeStep!2393 r!19097 (h!39983 prefix!1456)) lt!1022444)))

(declare-fun bm!189452 () Bool)

(assert (=> bm!189452 (= call!189458 (derivativeStep!2393 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097))) (h!39983 prefix!1456)))))

(declare-fun bm!189453 () Bool)

(declare-fun call!189456 () Regex!8886)

(assert (=> bm!189453 (= call!189456 call!189458)))

(declare-fun b!2904736 () Bool)

(assert (=> b!2904736 (= e!1833860 (Union!8886 (Concat!14207 call!189457 (regTwo!18284 r!19097)) call!189459))))

(declare-fun b!2904737 () Bool)

(declare-fun e!1833856 () Regex!8886)

(assert (=> b!2904737 (= e!1833856 (ite (= (h!39983 prefix!1456) (c!473303 r!19097)) EmptyExpr!8886 EmptyLang!8886))))

(declare-fun b!2904738 () Bool)

(assert (=> b!2904738 (= c!473346 (is-Union!8886 r!19097))))

(assert (=> b!2904738 (= e!1833856 e!1833858)))

(declare-fun b!2904739 () Bool)

(assert (=> b!2904739 (= e!1833859 e!1833856)))

(declare-fun c!473348 () Bool)

(assert (=> b!2904739 (= c!473348 (is-ElementMatch!8886 r!19097))))

(declare-fun b!2904740 () Bool)

(assert (=> b!2904740 (= e!1833857 (Concat!14207 call!189456 r!19097))))

(declare-fun b!2904741 () Bool)

(assert (=> b!2904741 (= e!1833859 EmptyLang!8886)))

(declare-fun bm!189454 () Bool)

(assert (=> bm!189454 (= call!189457 call!189456)))

(assert (= (and d!835843 c!473345) b!2904741))

(assert (= (and d!835843 (not c!473345)) b!2904739))

(assert (= (and b!2904739 c!473348) b!2904737))

(assert (= (and b!2904739 (not c!473348)) b!2904738))

(assert (= (and b!2904738 c!473346) b!2904734))

(assert (= (and b!2904738 (not c!473346)) b!2904733))

(assert (= (and b!2904733 c!473347) b!2904740))

(assert (= (and b!2904733 (not c!473347)) b!2904735))

(assert (= (and b!2904735 c!473344) b!2904736))

(assert (= (and b!2904735 (not c!473344)) b!2904732))

(assert (= (or b!2904736 b!2904732) bm!189454))

(assert (= (or b!2904740 bm!189454) bm!189453))

(assert (= (or b!2904734 bm!189453) bm!189452))

(assert (= (or b!2904734 b!2904736) bm!189451))

(declare-fun m!3307505 () Bool)

(assert (=> bm!189451 m!3307505))

(declare-fun m!3307507 () Bool)

(assert (=> b!2904735 m!3307507))

(declare-fun m!3307509 () Bool)

(assert (=> d!835843 m!3307509))

(assert (=> d!835843 m!3307451))

(declare-fun m!3307511 () Bool)

(assert (=> bm!189452 m!3307511))

(assert (=> b!2904572 d!835843))

(declare-fun b!2904765 () Bool)

(declare-fun e!1833876 () Bool)

(declare-fun size!26368 (List!34687) Int)

(assert (=> b!2904765 (= e!1833876 (>= (size!26368 s!13418) (size!26368 prefix!1456)))))

(declare-fun b!2904762 () Bool)

(declare-fun e!1833877 () Bool)

(declare-fun e!1833878 () Bool)

(assert (=> b!2904762 (= e!1833877 e!1833878)))

(declare-fun res!1199861 () Bool)

(assert (=> b!2904762 (=> (not res!1199861) (not e!1833878))))

(assert (=> b!2904762 (= res!1199861 (not (is-Nil!34563 s!13418)))))

(declare-fun b!2904763 () Bool)

(declare-fun res!1199862 () Bool)

(assert (=> b!2904763 (=> (not res!1199862) (not e!1833878))))

(declare-fun head!6419 (List!34687) C!17954)

(assert (=> b!2904763 (= res!1199862 (= (head!6419 prefix!1456) (head!6419 s!13418)))))

(declare-fun b!2904764 () Bool)

(assert (=> b!2904764 (= e!1833878 (isPrefix!2723 (tail!4647 prefix!1456) (tail!4647 s!13418)))))

(declare-fun d!835847 () Bool)

(assert (=> d!835847 e!1833876))

(declare-fun res!1199860 () Bool)

(assert (=> d!835847 (=> res!1199860 e!1833876)))

(declare-fun lt!1022450 () Bool)

(assert (=> d!835847 (= res!1199860 (not lt!1022450))))

(assert (=> d!835847 (= lt!1022450 e!1833877)))

(declare-fun res!1199859 () Bool)

(assert (=> d!835847 (=> res!1199859 e!1833877)))

(assert (=> d!835847 (= res!1199859 (is-Nil!34563 prefix!1456))))

(assert (=> d!835847 (= (isPrefix!2723 prefix!1456 s!13418) lt!1022450)))

(assert (= (and d!835847 (not res!1199859)) b!2904762))

(assert (= (and b!2904762 res!1199861) b!2904763))

(assert (= (and b!2904763 res!1199862) b!2904764))

(assert (= (and d!835847 (not res!1199860)) b!2904765))

(declare-fun m!3307527 () Bool)

(assert (=> b!2904765 m!3307527))

(declare-fun m!3307529 () Bool)

(assert (=> b!2904765 m!3307529))

(declare-fun m!3307531 () Bool)

(assert (=> b!2904763 m!3307531))

(declare-fun m!3307533 () Bool)

(assert (=> b!2904763 m!3307533))

(declare-fun m!3307535 () Bool)

(assert (=> b!2904764 m!3307535))

(assert (=> b!2904764 m!3307459))

(assert (=> b!2904764 m!3307535))

(assert (=> b!2904764 m!3307459))

(declare-fun m!3307537 () Bool)

(assert (=> b!2904764 m!3307537))

(assert (=> b!2904571 d!835847))

(declare-fun b!2904769 () Bool)

(declare-fun e!1833879 () Bool)

(assert (=> b!2904769 (= e!1833879 (>= (size!26368 (tail!4647 s!13418)) (size!26368 (t!233730 prefix!1456))))))

(declare-fun b!2904766 () Bool)

(declare-fun e!1833880 () Bool)

(declare-fun e!1833881 () Bool)

(assert (=> b!2904766 (= e!1833880 e!1833881)))

(declare-fun res!1199865 () Bool)

(assert (=> b!2904766 (=> (not res!1199865) (not e!1833881))))

(assert (=> b!2904766 (= res!1199865 (not (is-Nil!34563 (tail!4647 s!13418))))))

(declare-fun b!2904767 () Bool)

(declare-fun res!1199866 () Bool)

(assert (=> b!2904767 (=> (not res!1199866) (not e!1833881))))

(assert (=> b!2904767 (= res!1199866 (= (head!6419 (t!233730 prefix!1456)) (head!6419 (tail!4647 s!13418))))))

(declare-fun b!2904768 () Bool)

(assert (=> b!2904768 (= e!1833881 (isPrefix!2723 (tail!4647 (t!233730 prefix!1456)) (tail!4647 (tail!4647 s!13418))))))

(declare-fun d!835853 () Bool)

(assert (=> d!835853 e!1833879))

(declare-fun res!1199864 () Bool)

(assert (=> d!835853 (=> res!1199864 e!1833879)))

(declare-fun lt!1022451 () Bool)

(assert (=> d!835853 (= res!1199864 (not lt!1022451))))

(assert (=> d!835853 (= lt!1022451 e!1833880)))

(declare-fun res!1199863 () Bool)

(assert (=> d!835853 (=> res!1199863 e!1833880)))

(assert (=> d!835853 (= res!1199863 (is-Nil!34563 (t!233730 prefix!1456)))))

(assert (=> d!835853 (= (isPrefix!2723 (t!233730 prefix!1456) (tail!4647 s!13418)) lt!1022451)))

(assert (= (and d!835853 (not res!1199863)) b!2904766))

(assert (= (and b!2904766 res!1199865) b!2904767))

(assert (= (and b!2904767 res!1199866) b!2904768))

(assert (= (and d!835853 (not res!1199864)) b!2904769))

(assert (=> b!2904769 m!3307459))

(declare-fun m!3307539 () Bool)

(assert (=> b!2904769 m!3307539))

(declare-fun m!3307541 () Bool)

(assert (=> b!2904769 m!3307541))

(declare-fun m!3307543 () Bool)

(assert (=> b!2904767 m!3307543))

(assert (=> b!2904767 m!3307459))

(declare-fun m!3307545 () Bool)

(assert (=> b!2904767 m!3307545))

(declare-fun m!3307547 () Bool)

(assert (=> b!2904768 m!3307547))

(assert (=> b!2904768 m!3307459))

(declare-fun m!3307549 () Bool)

(assert (=> b!2904768 m!3307549))

(assert (=> b!2904768 m!3307547))

(assert (=> b!2904768 m!3307549))

(declare-fun m!3307551 () Bool)

(assert (=> b!2904768 m!3307551))

(assert (=> b!2904580 d!835853))

(declare-fun d!835855 () Bool)

(assert (=> d!835855 (= (tail!4647 s!13418) (t!233730 s!13418))))

(assert (=> b!2904580 d!835855))

(declare-fun d!835857 () Bool)

(declare-fun c!473355 () Bool)

(declare-fun isEmpty!18876 (List!34687) Bool)

(assert (=> d!835857 (= c!473355 (isEmpty!18876 (t!233730 prefix!1456)))))

(declare-fun e!1833891 () Bool)

(assert (=> d!835857 (= (prefixMatch!944 lt!1022435 (t!233730 prefix!1456)) e!1833891)))

(declare-fun b!2904786 () Bool)

(declare-fun lostCause!866 (Regex!8886) Bool)

(assert (=> b!2904786 (= e!1833891 (not (lostCause!866 lt!1022435)))))

(declare-fun b!2904787 () Bool)

(assert (=> b!2904787 (= e!1833891 (prefixMatch!944 (derivativeStep!2393 lt!1022435 (head!6419 (t!233730 prefix!1456))) (tail!4647 (t!233730 prefix!1456))))))

(assert (= (and d!835857 c!473355) b!2904786))

(assert (= (and d!835857 (not c!473355)) b!2904787))

(declare-fun m!3307581 () Bool)

(assert (=> d!835857 m!3307581))

(declare-fun m!3307583 () Bool)

(assert (=> b!2904786 m!3307583))

(assert (=> b!2904787 m!3307543))

(assert (=> b!2904787 m!3307543))

(declare-fun m!3307585 () Bool)

(assert (=> b!2904787 m!3307585))

(assert (=> b!2904787 m!3307547))

(assert (=> b!2904787 m!3307585))

(assert (=> b!2904787 m!3307547))

(declare-fun m!3307587 () Bool)

(assert (=> b!2904787 m!3307587))

(assert (=> b!2904573 d!835857))

(declare-fun d!835865 () Bool)

(declare-fun c!473358 () Bool)

(assert (=> d!835865 (= c!473358 (isEmpty!18876 prefix!1456))))

(declare-fun e!1833899 () Bool)

(assert (=> d!835865 (= (prefixMatch!944 r!19097 prefix!1456) e!1833899)))

(declare-fun b!2904797 () Bool)

(assert (=> b!2904797 (= e!1833899 (not (lostCause!866 r!19097)))))

(declare-fun b!2904798 () Bool)

(assert (=> b!2904798 (= e!1833899 (prefixMatch!944 (derivativeStep!2393 r!19097 (head!6419 prefix!1456)) (tail!4647 prefix!1456)))))

(assert (= (and d!835865 c!473358) b!2904797))

(assert (= (and d!835865 (not c!473358)) b!2904798))

(declare-fun m!3307589 () Bool)

(assert (=> d!835865 m!3307589))

(declare-fun m!3307591 () Bool)

(assert (=> b!2904797 m!3307591))

(assert (=> b!2904798 m!3307531))

(assert (=> b!2904798 m!3307531))

(declare-fun m!3307593 () Bool)

(assert (=> b!2904798 m!3307593))

(assert (=> b!2904798 m!3307535))

(assert (=> b!2904798 m!3307593))

(assert (=> b!2904798 m!3307535))

(declare-fun m!3307599 () Bool)

(assert (=> b!2904798 m!3307599))

(assert (=> b!2904578 d!835865))

(declare-fun b!2904819 () Bool)

(declare-fun e!1833904 () Bool)

(assert (=> b!2904819 (= e!1833904 tp_is_empty!15359)))

(declare-fun b!2904822 () Bool)

(declare-fun tp!932732 () Bool)

(declare-fun tp!932730 () Bool)

(assert (=> b!2904822 (= e!1833904 (and tp!932732 tp!932730))))

(assert (=> b!2904582 (= tp!932688 e!1833904)))

(declare-fun b!2904821 () Bool)

(declare-fun tp!932733 () Bool)

(assert (=> b!2904821 (= e!1833904 tp!932733)))

(declare-fun b!2904820 () Bool)

(declare-fun tp!932734 () Bool)

(declare-fun tp!932731 () Bool)

(assert (=> b!2904820 (= e!1833904 (and tp!932734 tp!932731))))

(assert (= (and b!2904582 (is-ElementMatch!8886 (regOne!18285 r!19097))) b!2904819))

(assert (= (and b!2904582 (is-Concat!14207 (regOne!18285 r!19097))) b!2904820))

(assert (= (and b!2904582 (is-Star!8886 (regOne!18285 r!19097))) b!2904821))

(assert (= (and b!2904582 (is-Union!8886 (regOne!18285 r!19097))) b!2904822))

(declare-fun b!2904827 () Bool)

(declare-fun e!1833906 () Bool)

(assert (=> b!2904827 (= e!1833906 tp_is_empty!15359)))

(declare-fun b!2904830 () Bool)

(declare-fun tp!932742 () Bool)

(declare-fun tp!932740 () Bool)

(assert (=> b!2904830 (= e!1833906 (and tp!932742 tp!932740))))

(assert (=> b!2904582 (= tp!932686 e!1833906)))

(declare-fun b!2904829 () Bool)

(declare-fun tp!932743 () Bool)

(assert (=> b!2904829 (= e!1833906 tp!932743)))

(declare-fun b!2904828 () Bool)

(declare-fun tp!932744 () Bool)

(declare-fun tp!932741 () Bool)

(assert (=> b!2904828 (= e!1833906 (and tp!932744 tp!932741))))

(assert (= (and b!2904582 (is-ElementMatch!8886 (regTwo!18285 r!19097))) b!2904827))

(assert (= (and b!2904582 (is-Concat!14207 (regTwo!18285 r!19097))) b!2904828))

(assert (= (and b!2904582 (is-Star!8886 (regTwo!18285 r!19097))) b!2904829))

(assert (= (and b!2904582 (is-Union!8886 (regTwo!18285 r!19097))) b!2904830))

(declare-fun b!2904847 () Bool)

(declare-fun e!1833913 () Bool)

(declare-fun tp!932759 () Bool)

(assert (=> b!2904847 (= e!1833913 (and tp_is_empty!15359 tp!932759))))

(assert (=> b!2904576 (= tp!932687 e!1833913)))

(assert (= (and b!2904576 (is-Cons!34563 (t!233730 s!13418))) b!2904847))

(declare-fun b!2904848 () Bool)

(declare-fun e!1833914 () Bool)

(assert (=> b!2904848 (= e!1833914 tp_is_empty!15359)))

(declare-fun b!2904851 () Bool)

(declare-fun tp!932762 () Bool)

(declare-fun tp!932760 () Bool)

(assert (=> b!2904851 (= e!1833914 (and tp!932762 tp!932760))))

(assert (=> b!2904581 (= tp!932682 e!1833914)))

(declare-fun b!2904850 () Bool)

(declare-fun tp!932763 () Bool)

(assert (=> b!2904850 (= e!1833914 tp!932763)))

(declare-fun b!2904849 () Bool)

(declare-fun tp!932764 () Bool)

(declare-fun tp!932761 () Bool)

(assert (=> b!2904849 (= e!1833914 (and tp!932764 tp!932761))))

(assert (= (and b!2904581 (is-ElementMatch!8886 (regOne!18284 r!19097))) b!2904848))

(assert (= (and b!2904581 (is-Concat!14207 (regOne!18284 r!19097))) b!2904849))

(assert (= (and b!2904581 (is-Star!8886 (regOne!18284 r!19097))) b!2904850))

(assert (= (and b!2904581 (is-Union!8886 (regOne!18284 r!19097))) b!2904851))

(declare-fun b!2904857 () Bool)

(declare-fun e!1833917 () Bool)

(assert (=> b!2904857 (= e!1833917 tp_is_empty!15359)))

(declare-fun b!2904860 () Bool)

(declare-fun tp!932773 () Bool)

(declare-fun tp!932771 () Bool)

(assert (=> b!2904860 (= e!1833917 (and tp!932773 tp!932771))))

(assert (=> b!2904581 (= tp!932684 e!1833917)))

(declare-fun b!2904859 () Bool)

(declare-fun tp!932774 () Bool)

(assert (=> b!2904859 (= e!1833917 tp!932774)))

(declare-fun b!2904858 () Bool)

(declare-fun tp!932775 () Bool)

(declare-fun tp!932772 () Bool)

(assert (=> b!2904858 (= e!1833917 (and tp!932775 tp!932772))))

(assert (= (and b!2904581 (is-ElementMatch!8886 (regTwo!18284 r!19097))) b!2904857))

(assert (= (and b!2904581 (is-Concat!14207 (regTwo!18284 r!19097))) b!2904858))

(assert (= (and b!2904581 (is-Star!8886 (regTwo!18284 r!19097))) b!2904859))

(assert (= (and b!2904581 (is-Union!8886 (regTwo!18284 r!19097))) b!2904860))

(declare-fun b!2904865 () Bool)

(declare-fun e!1833919 () Bool)

(declare-fun tp!932781 () Bool)

(assert (=> b!2904865 (= e!1833919 (and tp_is_empty!15359 tp!932781))))

(assert (=> b!2904574 (= tp!932685 e!1833919)))

(assert (= (and b!2904574 (is-Cons!34563 (t!233730 prefix!1456))) b!2904865))

(declare-fun b!2904866 () Bool)

(declare-fun e!1833920 () Bool)

(assert (=> b!2904866 (= e!1833920 tp_is_empty!15359)))

(declare-fun b!2904869 () Bool)

(declare-fun tp!932784 () Bool)

(declare-fun tp!932782 () Bool)

(assert (=> b!2904869 (= e!1833920 (and tp!932784 tp!932782))))

(assert (=> b!2904579 (= tp!932683 e!1833920)))

(declare-fun b!2904868 () Bool)

(declare-fun tp!932785 () Bool)

(assert (=> b!2904868 (= e!1833920 tp!932785)))

(declare-fun b!2904867 () Bool)

(declare-fun tp!932786 () Bool)

(declare-fun tp!932783 () Bool)

(assert (=> b!2904867 (= e!1833920 (and tp!932786 tp!932783))))

(assert (= (and b!2904579 (is-ElementMatch!8886 (reg!9215 r!19097))) b!2904866))

(assert (= (and b!2904579 (is-Concat!14207 (reg!9215 r!19097))) b!2904867))

(assert (= (and b!2904579 (is-Star!8886 (reg!9215 r!19097))) b!2904868))

(assert (= (and b!2904579 (is-Union!8886 (reg!9215 r!19097))) b!2904869))

(push 1)

(assert (not b!2904828))

(assert (not b!2904798))

(assert (not b!2904859))

(assert (not b!2904768))

(assert (not bm!189426))

(assert (not b!2904851))

(assert (not b!2904865))

(assert (not b!2904670))

(assert (not b!2904763))

(assert (not b!2904830))

(assert (not b!2904679))

(assert (not bm!189452))

(assert (not b!2904769))

(assert (not b!2904829))

(assert (not b!2904860))

(assert (not bm!189451))

(assert (not b!2904787))

(assert (not b!2904735))

(assert tp_is_empty!15359)

(assert (not b!2904869))

(assert (not b!2904797))

(assert (not d!835857))

(assert (not b!2904765))

(assert (not d!835865))

(assert (not b!2904858))

(assert (not bm!189430))

(assert (not b!2904820))

(assert (not b!2904849))

(assert (not bm!189427))

(assert (not b!2904786))

(assert (not b!2904767))

(assert (not b!2904850))

(assert (not d!835843))

(assert (not b!2904867))

(assert (not b!2904764))

(assert (not b!2904868))

(assert (not b!2904847))

(assert (not b!2904821))

(assert (not bm!189429))

(assert (not b!2904822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2904871 () Bool)

(declare-fun e!1833922 () Bool)

(declare-fun e!1833925 () Bool)

(assert (=> b!2904871 (= e!1833922 e!1833925)))

(declare-fun c!473360 () Bool)

(assert (=> b!2904871 (= c!473360 (is-Star!8886 (ite c!473318 (reg!9215 lt!1022435) (ite c!473317 (regOne!18285 lt!1022435) (regOne!18284 lt!1022435)))))))

(declare-fun b!2904872 () Bool)

(declare-fun res!1199876 () Bool)

(declare-fun e!1833924 () Bool)

(assert (=> b!2904872 (=> res!1199876 e!1833924)))

(assert (=> b!2904872 (= res!1199876 (not (is-Concat!14207 (ite c!473318 (reg!9215 lt!1022435) (ite c!473317 (regOne!18285 lt!1022435) (regOne!18284 lt!1022435))))))))

(declare-fun e!1833923 () Bool)

(assert (=> b!2904872 (= e!1833923 e!1833924)))

(declare-fun d!835867 () Bool)

(declare-fun res!1199880 () Bool)

(assert (=> d!835867 (=> res!1199880 e!1833922)))

(assert (=> d!835867 (= res!1199880 (is-ElementMatch!8886 (ite c!473318 (reg!9215 lt!1022435) (ite c!473317 (regOne!18285 lt!1022435) (regOne!18284 lt!1022435)))))))

(assert (=> d!835867 (= (validRegex!3659 (ite c!473318 (reg!9215 lt!1022435) (ite c!473317 (regOne!18285 lt!1022435) (regOne!18284 lt!1022435)))) e!1833922)))

(declare-fun b!2904873 () Bool)

(declare-fun e!1833927 () Bool)

(declare-fun call!189463 () Bool)

(assert (=> b!2904873 (= e!1833927 call!189463)))

(declare-fun b!2904874 () Bool)

(declare-fun e!1833926 () Bool)

(declare-fun call!189465 () Bool)

(assert (=> b!2904874 (= e!1833926 call!189465)))

(declare-fun bm!189458 () Bool)

(declare-fun call!189464 () Bool)

(assert (=> bm!189458 (= call!189464 call!189465)))

(declare-fun b!2904875 () Bool)

(assert (=> b!2904875 (= e!1833925 e!1833923)))

(declare-fun c!473359 () Bool)

(assert (=> b!2904875 (= c!473359 (is-Union!8886 (ite c!473318 (reg!9215 lt!1022435) (ite c!473317 (regOne!18285 lt!1022435) (regOne!18284 lt!1022435)))))))

(declare-fun b!2904876 () Bool)

(assert (=> b!2904876 (= e!1833924 e!1833927)))

(declare-fun res!1199879 () Bool)

(assert (=> b!2904876 (=> (not res!1199879) (not e!1833927))))

(assert (=> b!2904876 (= res!1199879 call!189464)))

(declare-fun bm!189459 () Bool)

(assert (=> bm!189459 (= call!189465 (validRegex!3659 (ite c!473360 (reg!9215 (ite c!473318 (reg!9215 lt!1022435) (ite c!473317 (regOne!18285 lt!1022435) (regOne!18284 lt!1022435)))) (ite c!473359 (regOne!18285 (ite c!473318 (reg!9215 lt!1022435) (ite c!473317 (regOne!18285 lt!1022435) (regOne!18284 lt!1022435)))) (regOne!18284 (ite c!473318 (reg!9215 lt!1022435) (ite c!473317 (regOne!18285 lt!1022435) (regOne!18284 lt!1022435))))))))))

(declare-fun b!2904877 () Bool)

(assert (=> b!2904877 (= e!1833925 e!1833926)))

(declare-fun res!1199878 () Bool)

(assert (=> b!2904877 (= res!1199878 (not (nullable!2776 (reg!9215 (ite c!473318 (reg!9215 lt!1022435) (ite c!473317 (regOne!18285 lt!1022435) (regOne!18284 lt!1022435)))))))))

(assert (=> b!2904877 (=> (not res!1199878) (not e!1833926))))

(declare-fun b!2904878 () Bool)

(declare-fun res!1199877 () Bool)

(declare-fun e!1833928 () Bool)

(assert (=> b!2904878 (=> (not res!1199877) (not e!1833928))))

(assert (=> b!2904878 (= res!1199877 call!189464)))

(assert (=> b!2904878 (= e!1833923 e!1833928)))

(declare-fun b!2904879 () Bool)

(assert (=> b!2904879 (= e!1833928 call!189463)))

(declare-fun bm!189460 () Bool)

(assert (=> bm!189460 (= call!189463 (validRegex!3659 (ite c!473359 (regTwo!18285 (ite c!473318 (reg!9215 lt!1022435) (ite c!473317 (regOne!18285 lt!1022435) (regOne!18284 lt!1022435)))) (regTwo!18284 (ite c!473318 (reg!9215 lt!1022435) (ite c!473317 (regOne!18285 lt!1022435) (regOne!18284 lt!1022435)))))))))

(assert (= (and d!835867 (not res!1199880)) b!2904871))

(assert (= (and b!2904871 c!473360) b!2904877))

(assert (= (and b!2904871 (not c!473360)) b!2904875))

(assert (= (and b!2904877 res!1199878) b!2904874))

(assert (= (and b!2904875 c!473359) b!2904878))

(assert (= (and b!2904875 (not c!473359)) b!2904872))

(assert (= (and b!2904878 res!1199877) b!2904879))

(assert (= (and b!2904872 (not res!1199876)) b!2904876))

(assert (= (and b!2904876 res!1199879) b!2904873))

(assert (= (or b!2904878 b!2904876) bm!189458))

(assert (= (or b!2904879 b!2904873) bm!189460))

(assert (= (or b!2904874 bm!189458) bm!189459))

(declare-fun m!3307603 () Bool)

(assert (=> bm!189459 m!3307603))

(declare-fun m!3307605 () Bool)

(assert (=> b!2904877 m!3307605))

(declare-fun m!3307607 () Bool)

(assert (=> bm!189460 m!3307607))

(assert (=> bm!189429 d!835867))

(declare-fun d!835869 () Bool)

(declare-fun lt!1022455 () Int)

(assert (=> d!835869 (>= lt!1022455 0)))

(declare-fun e!1833931 () Int)

(assert (=> d!835869 (= lt!1022455 e!1833931)))

(declare-fun c!473363 () Bool)

(assert (=> d!835869 (= c!473363 (is-Nil!34563 (tail!4647 s!13418)))))

(assert (=> d!835869 (= (size!26368 (tail!4647 s!13418)) lt!1022455)))

(declare-fun b!2904884 () Bool)

(assert (=> b!2904884 (= e!1833931 0)))

(declare-fun b!2904885 () Bool)

(assert (=> b!2904885 (= e!1833931 (+ 1 (size!26368 (t!233730 (tail!4647 s!13418)))))))

(assert (= (and d!835869 c!473363) b!2904884))

(assert (= (and d!835869 (not c!473363)) b!2904885))

(declare-fun m!3307609 () Bool)

(assert (=> b!2904885 m!3307609))

(assert (=> b!2904769 d!835869))

(declare-fun d!835871 () Bool)

(declare-fun lt!1022456 () Int)

(assert (=> d!835871 (>= lt!1022456 0)))

(declare-fun e!1833932 () Int)

(assert (=> d!835871 (= lt!1022456 e!1833932)))

(declare-fun c!473364 () Bool)

(assert (=> d!835871 (= c!473364 (is-Nil!34563 (t!233730 prefix!1456)))))

(assert (=> d!835871 (= (size!26368 (t!233730 prefix!1456)) lt!1022456)))

(declare-fun b!2904886 () Bool)

(assert (=> b!2904886 (= e!1833932 0)))

(declare-fun b!2904887 () Bool)

(assert (=> b!2904887 (= e!1833932 (+ 1 (size!26368 (t!233730 (t!233730 prefix!1456)))))))

(assert (= (and d!835871 c!473364) b!2904886))

(assert (= (and d!835871 (not c!473364)) b!2904887))

(declare-fun m!3307611 () Bool)

(assert (=> b!2904887 m!3307611))

(assert (=> b!2904769 d!835871))

(declare-fun b!2904891 () Bool)

(declare-fun e!1833933 () Bool)

(assert (=> b!2904891 (= e!1833933 (>= (size!26368 (tail!4647 s!13418)) (size!26368 (tail!4647 prefix!1456))))))

(declare-fun b!2904888 () Bool)

(declare-fun e!1833934 () Bool)

(declare-fun e!1833935 () Bool)

(assert (=> b!2904888 (= e!1833934 e!1833935)))

(declare-fun res!1199883 () Bool)

(assert (=> b!2904888 (=> (not res!1199883) (not e!1833935))))

(assert (=> b!2904888 (= res!1199883 (not (is-Nil!34563 (tail!4647 s!13418))))))

(declare-fun b!2904889 () Bool)

(declare-fun res!1199884 () Bool)

(assert (=> b!2904889 (=> (not res!1199884) (not e!1833935))))

(assert (=> b!2904889 (= res!1199884 (= (head!6419 (tail!4647 prefix!1456)) (head!6419 (tail!4647 s!13418))))))

(declare-fun b!2904890 () Bool)

(assert (=> b!2904890 (= e!1833935 (isPrefix!2723 (tail!4647 (tail!4647 prefix!1456)) (tail!4647 (tail!4647 s!13418))))))

(declare-fun d!835873 () Bool)

(assert (=> d!835873 e!1833933))

(declare-fun res!1199882 () Bool)

(assert (=> d!835873 (=> res!1199882 e!1833933)))

(declare-fun lt!1022457 () Bool)

(assert (=> d!835873 (= res!1199882 (not lt!1022457))))

(assert (=> d!835873 (= lt!1022457 e!1833934)))

(declare-fun res!1199881 () Bool)

(assert (=> d!835873 (=> res!1199881 e!1833934)))

(assert (=> d!835873 (= res!1199881 (is-Nil!34563 (tail!4647 prefix!1456)))))

(assert (=> d!835873 (= (isPrefix!2723 (tail!4647 prefix!1456) (tail!4647 s!13418)) lt!1022457)))

(assert (= (and d!835873 (not res!1199881)) b!2904888))

(assert (= (and b!2904888 res!1199883) b!2904889))

(assert (= (and b!2904889 res!1199884) b!2904890))

(assert (= (and d!835873 (not res!1199882)) b!2904891))

(assert (=> b!2904891 m!3307459))

(assert (=> b!2904891 m!3307539))

(assert (=> b!2904891 m!3307535))

(declare-fun m!3307613 () Bool)

(assert (=> b!2904891 m!3307613))

(assert (=> b!2904889 m!3307535))

(declare-fun m!3307615 () Bool)

(assert (=> b!2904889 m!3307615))

(assert (=> b!2904889 m!3307459))

(assert (=> b!2904889 m!3307545))

(assert (=> b!2904890 m!3307535))

(declare-fun m!3307617 () Bool)

(assert (=> b!2904890 m!3307617))

(assert (=> b!2904890 m!3307459))

(assert (=> b!2904890 m!3307549))

(assert (=> b!2904890 m!3307617))

(assert (=> b!2904890 m!3307549))

(declare-fun m!3307619 () Bool)

(assert (=> b!2904890 m!3307619))

(assert (=> b!2904764 d!835873))

(declare-fun d!835875 () Bool)

(assert (=> d!835875 (= (tail!4647 prefix!1456) (t!233730 prefix!1456))))

(assert (=> b!2904764 d!835875))

(assert (=> b!2904764 d!835855))

(declare-fun d!835877 () Bool)

(assert (=> d!835877 (= (isEmpty!18876 (t!233730 prefix!1456)) (is-Nil!34563 (t!233730 prefix!1456)))))

(assert (=> d!835857 d!835877))

(declare-fun d!835879 () Bool)

(declare-fun c!473365 () Bool)

(assert (=> d!835879 (= c!473365 (isEmpty!18876 (tail!4647 (t!233730 prefix!1456))))))

(declare-fun e!1833936 () Bool)

(assert (=> d!835879 (= (prefixMatch!944 (derivativeStep!2393 lt!1022435 (head!6419 (t!233730 prefix!1456))) (tail!4647 (t!233730 prefix!1456))) e!1833936)))

(declare-fun b!2904892 () Bool)

(assert (=> b!2904892 (= e!1833936 (not (lostCause!866 (derivativeStep!2393 lt!1022435 (head!6419 (t!233730 prefix!1456))))))))

(declare-fun b!2904893 () Bool)

(assert (=> b!2904893 (= e!1833936 (prefixMatch!944 (derivativeStep!2393 (derivativeStep!2393 lt!1022435 (head!6419 (t!233730 prefix!1456))) (head!6419 (tail!4647 (t!233730 prefix!1456)))) (tail!4647 (tail!4647 (t!233730 prefix!1456)))))))

(assert (= (and d!835879 c!473365) b!2904892))

(assert (= (and d!835879 (not c!473365)) b!2904893))

(assert (=> d!835879 m!3307547))

(declare-fun m!3307621 () Bool)

(assert (=> d!835879 m!3307621))

(assert (=> b!2904892 m!3307585))

(declare-fun m!3307623 () Bool)

(assert (=> b!2904892 m!3307623))

(assert (=> b!2904893 m!3307547))

(declare-fun m!3307625 () Bool)

(assert (=> b!2904893 m!3307625))

(assert (=> b!2904893 m!3307585))

(assert (=> b!2904893 m!3307625))

(declare-fun m!3307627 () Bool)

(assert (=> b!2904893 m!3307627))

(assert (=> b!2904893 m!3307547))

(declare-fun m!3307629 () Bool)

(assert (=> b!2904893 m!3307629))

(assert (=> b!2904893 m!3307627))

(assert (=> b!2904893 m!3307629))

(declare-fun m!3307631 () Bool)

(assert (=> b!2904893 m!3307631))

(assert (=> b!2904787 d!835879))

(declare-fun b!2904894 () Bool)

(declare-fun e!1833941 () Regex!8886)

(declare-fun call!189467 () Regex!8886)

(assert (=> b!2904894 (= e!1833941 (Union!8886 (Concat!14207 call!189467 (regTwo!18284 lt!1022435)) EmptyLang!8886))))

(declare-fun b!2904895 () Bool)

(declare-fun e!1833939 () Regex!8886)

(declare-fun e!1833938 () Regex!8886)

(assert (=> b!2904895 (= e!1833939 e!1833938)))

(declare-fun c!473369 () Bool)

(assert (=> b!2904895 (= c!473369 (is-Star!8886 lt!1022435))))

(declare-fun bm!189461 () Bool)

(declare-fun call!189469 () Regex!8886)

(declare-fun c!473368 () Bool)

(assert (=> bm!189461 (= call!189469 (derivativeStep!2393 (ite c!473368 (regTwo!18285 lt!1022435) (regTwo!18284 lt!1022435)) (head!6419 (t!233730 prefix!1456))))))

(declare-fun b!2904896 () Bool)

(declare-fun call!189468 () Regex!8886)

(assert (=> b!2904896 (= e!1833939 (Union!8886 call!189468 call!189469))))

(declare-fun b!2904897 () Bool)

(declare-fun c!473366 () Bool)

(assert (=> b!2904897 (= c!473366 (nullable!2776 (regOne!18284 lt!1022435)))))

(assert (=> b!2904897 (= e!1833938 e!1833941)))

(declare-fun d!835883 () Bool)

(declare-fun lt!1022458 () Regex!8886)

(assert (=> d!835883 (validRegex!3659 lt!1022458)))

(declare-fun e!1833940 () Regex!8886)

(assert (=> d!835883 (= lt!1022458 e!1833940)))

(declare-fun c!473367 () Bool)

(assert (=> d!835883 (= c!473367 (or (is-EmptyExpr!8886 lt!1022435) (is-EmptyLang!8886 lt!1022435)))))

(assert (=> d!835883 (validRegex!3659 lt!1022435)))

(assert (=> d!835883 (= (derivativeStep!2393 lt!1022435 (head!6419 (t!233730 prefix!1456))) lt!1022458)))

(declare-fun bm!189462 () Bool)

(assert (=> bm!189462 (= call!189468 (derivativeStep!2393 (ite c!473368 (regOne!18285 lt!1022435) (ite c!473369 (reg!9215 lt!1022435) (regOne!18284 lt!1022435))) (head!6419 (t!233730 prefix!1456))))))

(declare-fun bm!189463 () Bool)

(declare-fun call!189466 () Regex!8886)

(assert (=> bm!189463 (= call!189466 call!189468)))

(declare-fun b!2904898 () Bool)

(assert (=> b!2904898 (= e!1833941 (Union!8886 (Concat!14207 call!189467 (regTwo!18284 lt!1022435)) call!189469))))

(declare-fun b!2904899 () Bool)

(declare-fun e!1833937 () Regex!8886)

(assert (=> b!2904899 (= e!1833937 (ite (= (head!6419 (t!233730 prefix!1456)) (c!473303 lt!1022435)) EmptyExpr!8886 EmptyLang!8886))))

(declare-fun b!2904900 () Bool)

(assert (=> b!2904900 (= c!473368 (is-Union!8886 lt!1022435))))

(assert (=> b!2904900 (= e!1833937 e!1833939)))

(declare-fun b!2904901 () Bool)

(assert (=> b!2904901 (= e!1833940 e!1833937)))

(declare-fun c!473370 () Bool)

(assert (=> b!2904901 (= c!473370 (is-ElementMatch!8886 lt!1022435))))

(declare-fun b!2904902 () Bool)

(assert (=> b!2904902 (= e!1833938 (Concat!14207 call!189466 lt!1022435))))

(declare-fun b!2904903 () Bool)

(assert (=> b!2904903 (= e!1833940 EmptyLang!8886)))

(declare-fun bm!189464 () Bool)

(assert (=> bm!189464 (= call!189467 call!189466)))

(assert (= (and d!835883 c!473367) b!2904903))

(assert (= (and d!835883 (not c!473367)) b!2904901))

(assert (= (and b!2904901 c!473370) b!2904899))

(assert (= (and b!2904901 (not c!473370)) b!2904900))

(assert (= (and b!2904900 c!473368) b!2904896))

(assert (= (and b!2904900 (not c!473368)) b!2904895))

(assert (= (and b!2904895 c!473369) b!2904902))

(assert (= (and b!2904895 (not c!473369)) b!2904897))

(assert (= (and b!2904897 c!473366) b!2904898))

(assert (= (and b!2904897 (not c!473366)) b!2904894))

(assert (= (or b!2904898 b!2904894) bm!189464))

(assert (= (or b!2904902 bm!189464) bm!189463))

(assert (= (or b!2904896 bm!189463) bm!189462))

(assert (= (or b!2904896 b!2904898) bm!189461))

(assert (=> bm!189461 m!3307543))

(declare-fun m!3307633 () Bool)

(assert (=> bm!189461 m!3307633))

(declare-fun m!3307635 () Bool)

(assert (=> b!2904897 m!3307635))

(declare-fun m!3307637 () Bool)

(assert (=> d!835883 m!3307637))

(assert (=> d!835883 m!3307453))

(assert (=> bm!189462 m!3307543))

(declare-fun m!3307639 () Bool)

(assert (=> bm!189462 m!3307639))

(assert (=> b!2904787 d!835883))

(declare-fun d!835887 () Bool)

(assert (=> d!835887 (= (head!6419 (t!233730 prefix!1456)) (h!39983 (t!233730 prefix!1456)))))

(assert (=> b!2904787 d!835887))

(declare-fun d!835889 () Bool)

(assert (=> d!835889 (= (tail!4647 (t!233730 prefix!1456)) (t!233730 (t!233730 prefix!1456)))))

(assert (=> b!2904787 d!835889))

(declare-fun d!835891 () Bool)

(declare-fun nullableFct!849 (Regex!8886) Bool)

(assert (=> d!835891 (= (nullable!2776 (reg!9215 r!19097)) (nullableFct!849 (reg!9215 r!19097)))))

(declare-fun bs!524055 () Bool)

(assert (= bs!524055 d!835891))

(declare-fun m!3307647 () Bool)

(assert (=> bs!524055 m!3307647))

(assert (=> b!2904670 d!835891))

(declare-fun b!2904925 () Bool)

(declare-fun e!1833956 () Bool)

(assert (=> b!2904925 (= e!1833956 (>= (size!26368 (tail!4647 (tail!4647 s!13418))) (size!26368 (tail!4647 (t!233730 prefix!1456)))))))

(declare-fun b!2904922 () Bool)

(declare-fun e!1833957 () Bool)

(declare-fun e!1833958 () Bool)

(assert (=> b!2904922 (= e!1833957 e!1833958)))

(declare-fun res!1199897 () Bool)

(assert (=> b!2904922 (=> (not res!1199897) (not e!1833958))))

(assert (=> b!2904922 (= res!1199897 (not (is-Nil!34563 (tail!4647 (tail!4647 s!13418)))))))

(declare-fun b!2904923 () Bool)

(declare-fun res!1199898 () Bool)

(assert (=> b!2904923 (=> (not res!1199898) (not e!1833958))))

(assert (=> b!2904923 (= res!1199898 (= (head!6419 (tail!4647 (t!233730 prefix!1456))) (head!6419 (tail!4647 (tail!4647 s!13418)))))))

(declare-fun b!2904924 () Bool)

(assert (=> b!2904924 (= e!1833958 (isPrefix!2723 (tail!4647 (tail!4647 (t!233730 prefix!1456))) (tail!4647 (tail!4647 (tail!4647 s!13418)))))))

(declare-fun d!835895 () Bool)

(assert (=> d!835895 e!1833956))

(declare-fun res!1199896 () Bool)

(assert (=> d!835895 (=> res!1199896 e!1833956)))

(declare-fun lt!1022459 () Bool)

(assert (=> d!835895 (= res!1199896 (not lt!1022459))))

(assert (=> d!835895 (= lt!1022459 e!1833957)))

(declare-fun res!1199895 () Bool)

(assert (=> d!835895 (=> res!1199895 e!1833957)))

(assert (=> d!835895 (= res!1199895 (is-Nil!34563 (tail!4647 (t!233730 prefix!1456))))))

(assert (=> d!835895 (= (isPrefix!2723 (tail!4647 (t!233730 prefix!1456)) (tail!4647 (tail!4647 s!13418))) lt!1022459)))

(assert (= (and d!835895 (not res!1199895)) b!2904922))

(assert (= (and b!2904922 res!1199897) b!2904923))

(assert (= (and b!2904923 res!1199898) b!2904924))

(assert (= (and d!835895 (not res!1199896)) b!2904925))

(assert (=> b!2904925 m!3307549))

(declare-fun m!3307655 () Bool)

(assert (=> b!2904925 m!3307655))

(assert (=> b!2904925 m!3307547))

(declare-fun m!3307657 () Bool)

(assert (=> b!2904925 m!3307657))

(assert (=> b!2904923 m!3307547))

(assert (=> b!2904923 m!3307625))

(assert (=> b!2904923 m!3307549))

(declare-fun m!3307659 () Bool)

(assert (=> b!2904923 m!3307659))

(assert (=> b!2904924 m!3307547))

(assert (=> b!2904924 m!3307629))

(assert (=> b!2904924 m!3307549))

(declare-fun m!3307661 () Bool)

(assert (=> b!2904924 m!3307661))

(assert (=> b!2904924 m!3307629))

(assert (=> b!2904924 m!3307661))

(declare-fun m!3307663 () Bool)

(assert (=> b!2904924 m!3307663))

(assert (=> b!2904768 d!835895))

(assert (=> b!2904768 d!835889))

(declare-fun d!835899 () Bool)

(assert (=> d!835899 (= (tail!4647 (tail!4647 s!13418)) (t!233730 (tail!4647 s!13418)))))

(assert (=> b!2904768 d!835899))

(declare-fun d!835901 () Bool)

(assert (=> d!835901 (= (head!6419 prefix!1456) (h!39983 prefix!1456))))

(assert (=> b!2904763 d!835901))

(declare-fun d!835903 () Bool)

(assert (=> d!835903 (= (head!6419 s!13418) (h!39983 s!13418))))

(assert (=> b!2904763 d!835903))

(declare-fun b!2904936 () Bool)

(declare-fun e!1833964 () Bool)

(declare-fun e!1833967 () Bool)

(assert (=> b!2904936 (= e!1833964 e!1833967)))

(declare-fun c!473381 () Bool)

(assert (=> b!2904936 (= c!473381 (is-Star!8886 (ite c!473316 (reg!9215 r!19097) (ite c!473315 (regOne!18285 r!19097) (regOne!18284 r!19097)))))))

(declare-fun b!2904937 () Bool)

(declare-fun res!1199899 () Bool)

(declare-fun e!1833966 () Bool)

(assert (=> b!2904937 (=> res!1199899 e!1833966)))

(assert (=> b!2904937 (= res!1199899 (not (is-Concat!14207 (ite c!473316 (reg!9215 r!19097) (ite c!473315 (regOne!18285 r!19097) (regOne!18284 r!19097))))))))

(declare-fun e!1833965 () Bool)

(assert (=> b!2904937 (= e!1833965 e!1833966)))

(declare-fun d!835905 () Bool)

(declare-fun res!1199903 () Bool)

(assert (=> d!835905 (=> res!1199903 e!1833964)))

(assert (=> d!835905 (= res!1199903 (is-ElementMatch!8886 (ite c!473316 (reg!9215 r!19097) (ite c!473315 (regOne!18285 r!19097) (regOne!18284 r!19097)))))))

(assert (=> d!835905 (= (validRegex!3659 (ite c!473316 (reg!9215 r!19097) (ite c!473315 (regOne!18285 r!19097) (regOne!18284 r!19097)))) e!1833964)))

(declare-fun b!2904938 () Bool)

(declare-fun e!1833969 () Bool)

(declare-fun call!189480 () Bool)

(assert (=> b!2904938 (= e!1833969 call!189480)))

(declare-fun b!2904939 () Bool)

(declare-fun e!1833968 () Bool)

(declare-fun call!189482 () Bool)

(assert (=> b!2904939 (= e!1833968 call!189482)))

(declare-fun bm!189475 () Bool)

(declare-fun call!189481 () Bool)

(assert (=> bm!189475 (= call!189481 call!189482)))

(declare-fun b!2904940 () Bool)

(assert (=> b!2904940 (= e!1833967 e!1833965)))

(declare-fun c!473380 () Bool)

(assert (=> b!2904940 (= c!473380 (is-Union!8886 (ite c!473316 (reg!9215 r!19097) (ite c!473315 (regOne!18285 r!19097) (regOne!18284 r!19097)))))))

(declare-fun b!2904941 () Bool)

(assert (=> b!2904941 (= e!1833966 e!1833969)))

(declare-fun res!1199902 () Bool)

(assert (=> b!2904941 (=> (not res!1199902) (not e!1833969))))

(assert (=> b!2904941 (= res!1199902 call!189481)))

(declare-fun bm!189476 () Bool)

(assert (=> bm!189476 (= call!189482 (validRegex!3659 (ite c!473381 (reg!9215 (ite c!473316 (reg!9215 r!19097) (ite c!473315 (regOne!18285 r!19097) (regOne!18284 r!19097)))) (ite c!473380 (regOne!18285 (ite c!473316 (reg!9215 r!19097) (ite c!473315 (regOne!18285 r!19097) (regOne!18284 r!19097)))) (regOne!18284 (ite c!473316 (reg!9215 r!19097) (ite c!473315 (regOne!18285 r!19097) (regOne!18284 r!19097))))))))))

(declare-fun b!2904942 () Bool)

(assert (=> b!2904942 (= e!1833967 e!1833968)))

(declare-fun res!1199901 () Bool)

(assert (=> b!2904942 (= res!1199901 (not (nullable!2776 (reg!9215 (ite c!473316 (reg!9215 r!19097) (ite c!473315 (regOne!18285 r!19097) (regOne!18284 r!19097)))))))))

(assert (=> b!2904942 (=> (not res!1199901) (not e!1833968))))

(declare-fun b!2904943 () Bool)

(declare-fun res!1199900 () Bool)

(declare-fun e!1833970 () Bool)

(assert (=> b!2904943 (=> (not res!1199900) (not e!1833970))))

(assert (=> b!2904943 (= res!1199900 call!189481)))

(assert (=> b!2904943 (= e!1833965 e!1833970)))

(declare-fun b!2904944 () Bool)

(assert (=> b!2904944 (= e!1833970 call!189480)))

(declare-fun bm!189477 () Bool)

(assert (=> bm!189477 (= call!189480 (validRegex!3659 (ite c!473380 (regTwo!18285 (ite c!473316 (reg!9215 r!19097) (ite c!473315 (regOne!18285 r!19097) (regOne!18284 r!19097)))) (regTwo!18284 (ite c!473316 (reg!9215 r!19097) (ite c!473315 (regOne!18285 r!19097) (regOne!18284 r!19097)))))))))

(assert (= (and d!835905 (not res!1199903)) b!2904936))

(assert (= (and b!2904936 c!473381) b!2904942))

(assert (= (and b!2904936 (not c!473381)) b!2904940))

(assert (= (and b!2904942 res!1199901) b!2904939))

(assert (= (and b!2904940 c!473380) b!2904943))

(assert (= (and b!2904940 (not c!473380)) b!2904937))

(assert (= (and b!2904943 res!1199900) b!2904944))

(assert (= (and b!2904937 (not res!1199899)) b!2904941))

(assert (= (and b!2904941 res!1199902) b!2904938))

(assert (= (or b!2904943 b!2904941) bm!189475))

(assert (= (or b!2904944 b!2904938) bm!189477))

(assert (= (or b!2904939 bm!189475) bm!189476))

(declare-fun m!3307675 () Bool)

(assert (=> bm!189476 m!3307675))

(declare-fun m!3307677 () Bool)

(assert (=> b!2904942 m!3307677))

(declare-fun m!3307679 () Bool)

(assert (=> bm!189477 m!3307679))

(assert (=> bm!189426 d!835905))

(assert (=> b!2904767 d!835887))

(declare-fun d!835909 () Bool)

(assert (=> d!835909 (= (head!6419 (tail!4647 s!13418)) (h!39983 (tail!4647 s!13418)))))

(assert (=> b!2904767 d!835909))

(declare-fun d!835911 () Bool)

(declare-fun lostCauseFct!227 (Regex!8886) Bool)

(assert (=> d!835911 (= (lostCause!866 lt!1022435) (lostCauseFct!227 lt!1022435))))

(declare-fun bs!524056 () Bool)

(assert (= bs!524056 d!835911))

(declare-fun m!3307681 () Bool)

(assert (=> bs!524056 m!3307681))

(assert (=> b!2904786 d!835911))

(declare-fun d!835913 () Bool)

(declare-fun c!473384 () Bool)

(assert (=> d!835913 (= c!473384 (isEmpty!18876 (tail!4647 prefix!1456)))))

(declare-fun e!1833973 () Bool)

(assert (=> d!835913 (= (prefixMatch!944 (derivativeStep!2393 r!19097 (head!6419 prefix!1456)) (tail!4647 prefix!1456)) e!1833973)))

(declare-fun b!2904949 () Bool)

(assert (=> b!2904949 (= e!1833973 (not (lostCause!866 (derivativeStep!2393 r!19097 (head!6419 prefix!1456)))))))

(declare-fun b!2904950 () Bool)

(assert (=> b!2904950 (= e!1833973 (prefixMatch!944 (derivativeStep!2393 (derivativeStep!2393 r!19097 (head!6419 prefix!1456)) (head!6419 (tail!4647 prefix!1456))) (tail!4647 (tail!4647 prefix!1456))))))

(assert (= (and d!835913 c!473384) b!2904949))

(assert (= (and d!835913 (not c!473384)) b!2904950))

(assert (=> d!835913 m!3307535))

(declare-fun m!3307683 () Bool)

(assert (=> d!835913 m!3307683))

(assert (=> b!2904949 m!3307593))

(declare-fun m!3307685 () Bool)

(assert (=> b!2904949 m!3307685))

(assert (=> b!2904950 m!3307535))

(assert (=> b!2904950 m!3307615))

(assert (=> b!2904950 m!3307593))

(assert (=> b!2904950 m!3307615))

(declare-fun m!3307687 () Bool)

(assert (=> b!2904950 m!3307687))

(assert (=> b!2904950 m!3307535))

(assert (=> b!2904950 m!3307617))

(assert (=> b!2904950 m!3307687))

(assert (=> b!2904950 m!3307617))

(declare-fun m!3307689 () Bool)

(assert (=> b!2904950 m!3307689))

(assert (=> b!2904798 d!835913))

(declare-fun b!2904953 () Bool)

(declare-fun e!1833979 () Regex!8886)

(declare-fun call!189484 () Regex!8886)

(assert (=> b!2904953 (= e!1833979 (Union!8886 (Concat!14207 call!189484 (regTwo!18284 r!19097)) EmptyLang!8886))))

(declare-fun b!2904954 () Bool)

(declare-fun e!1833977 () Regex!8886)

(declare-fun e!1833976 () Regex!8886)

(assert (=> b!2904954 (= e!1833977 e!1833976)))

(declare-fun c!473389 () Bool)

(assert (=> b!2904954 (= c!473389 (is-Star!8886 r!19097))))

(declare-fun bm!189478 () Bool)

(declare-fun call!189486 () Regex!8886)

(declare-fun c!473388 () Bool)

(assert (=> bm!189478 (= call!189486 (derivativeStep!2393 (ite c!473388 (regTwo!18285 r!19097) (regTwo!18284 r!19097)) (head!6419 prefix!1456)))))

(declare-fun b!2904955 () Bool)

(declare-fun call!189485 () Regex!8886)

(assert (=> b!2904955 (= e!1833977 (Union!8886 call!189485 call!189486))))

(declare-fun b!2904956 () Bool)

(declare-fun c!473386 () Bool)

(assert (=> b!2904956 (= c!473386 (nullable!2776 (regOne!18284 r!19097)))))

(assert (=> b!2904956 (= e!1833976 e!1833979)))

(declare-fun d!835915 () Bool)

(declare-fun lt!1022464 () Regex!8886)

(assert (=> d!835915 (validRegex!3659 lt!1022464)))

(declare-fun e!1833978 () Regex!8886)

(assert (=> d!835915 (= lt!1022464 e!1833978)))

(declare-fun c!473387 () Bool)

(assert (=> d!835915 (= c!473387 (or (is-EmptyExpr!8886 r!19097) (is-EmptyLang!8886 r!19097)))))

(assert (=> d!835915 (validRegex!3659 r!19097)))

(assert (=> d!835915 (= (derivativeStep!2393 r!19097 (head!6419 prefix!1456)) lt!1022464)))

(declare-fun bm!189479 () Bool)

(assert (=> bm!189479 (= call!189485 (derivativeStep!2393 (ite c!473388 (regOne!18285 r!19097) (ite c!473389 (reg!9215 r!19097) (regOne!18284 r!19097))) (head!6419 prefix!1456)))))

(declare-fun bm!189480 () Bool)

(declare-fun call!189483 () Regex!8886)

(assert (=> bm!189480 (= call!189483 call!189485)))

(declare-fun b!2904957 () Bool)

(assert (=> b!2904957 (= e!1833979 (Union!8886 (Concat!14207 call!189484 (regTwo!18284 r!19097)) call!189486))))

(declare-fun b!2904958 () Bool)

(declare-fun e!1833975 () Regex!8886)

(assert (=> b!2904958 (= e!1833975 (ite (= (head!6419 prefix!1456) (c!473303 r!19097)) EmptyExpr!8886 EmptyLang!8886))))

(declare-fun b!2904959 () Bool)

(assert (=> b!2904959 (= c!473388 (is-Union!8886 r!19097))))

(assert (=> b!2904959 (= e!1833975 e!1833977)))

(declare-fun b!2904960 () Bool)

(assert (=> b!2904960 (= e!1833978 e!1833975)))

(declare-fun c!473390 () Bool)

(assert (=> b!2904960 (= c!473390 (is-ElementMatch!8886 r!19097))))

(declare-fun b!2904961 () Bool)

(assert (=> b!2904961 (= e!1833976 (Concat!14207 call!189483 r!19097))))

(declare-fun b!2904962 () Bool)

(assert (=> b!2904962 (= e!1833978 EmptyLang!8886)))

(declare-fun bm!189481 () Bool)

(assert (=> bm!189481 (= call!189484 call!189483)))

(assert (= (and d!835915 c!473387) b!2904962))

(assert (= (and d!835915 (not c!473387)) b!2904960))

(assert (= (and b!2904960 c!473390) b!2904958))

(assert (= (and b!2904960 (not c!473390)) b!2904959))

(assert (= (and b!2904959 c!473388) b!2904955))

(assert (= (and b!2904959 (not c!473388)) b!2904954))

(assert (= (and b!2904954 c!473389) b!2904961))

(assert (= (and b!2904954 (not c!473389)) b!2904956))

(assert (= (and b!2904956 c!473386) b!2904957))

(assert (= (and b!2904956 (not c!473386)) b!2904953))

(assert (= (or b!2904957 b!2904953) bm!189481))

(assert (= (or b!2904961 bm!189481) bm!189480))

(assert (= (or b!2904955 bm!189480) bm!189479))

(assert (= (or b!2904955 b!2904957) bm!189478))

(assert (=> bm!189478 m!3307531))

(declare-fun m!3307693 () Bool)

(assert (=> bm!189478 m!3307693))

(assert (=> b!2904956 m!3307507))

(declare-fun m!3307695 () Bool)

(assert (=> d!835915 m!3307695))

(assert (=> d!835915 m!3307451))

(assert (=> bm!189479 m!3307531))

(declare-fun m!3307697 () Bool)

(assert (=> bm!189479 m!3307697))

(assert (=> b!2904798 d!835915))

(assert (=> b!2904798 d!835901))

(assert (=> b!2904798 d!835875))

(declare-fun d!835921 () Bool)

(assert (=> d!835921 (= (lostCause!866 r!19097) (lostCauseFct!227 r!19097))))

(declare-fun bs!524057 () Bool)

(assert (= bs!524057 d!835921))

(declare-fun m!3307699 () Bool)

(assert (=> bs!524057 m!3307699))

(assert (=> b!2904797 d!835921))

(declare-fun e!1833992 () Regex!8886)

(declare-fun b!2904974 () Bool)

(declare-fun call!189491 () Regex!8886)

(assert (=> b!2904974 (= e!1833992 (Union!8886 (Concat!14207 call!189491 (regTwo!18284 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097))))) EmptyLang!8886))))

(declare-fun b!2904975 () Bool)

(declare-fun e!1833990 () Regex!8886)

(declare-fun e!1833989 () Regex!8886)

(assert (=> b!2904975 (= e!1833990 e!1833989)))

(declare-fun c!473397 () Bool)

(assert (=> b!2904975 (= c!473397 (is-Star!8886 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097)))))))

(declare-fun call!189493 () Regex!8886)

(declare-fun c!473396 () Bool)

(declare-fun bm!189485 () Bool)

(assert (=> bm!189485 (= call!189493 (derivativeStep!2393 (ite c!473396 (regTwo!18285 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097)))) (regTwo!18284 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097))))) (h!39983 prefix!1456)))))

(declare-fun b!2904976 () Bool)

(declare-fun call!189492 () Regex!8886)

(assert (=> b!2904976 (= e!1833990 (Union!8886 call!189492 call!189493))))

(declare-fun c!473394 () Bool)

(declare-fun b!2904977 () Bool)

(assert (=> b!2904977 (= c!473394 (nullable!2776 (regOne!18284 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097))))))))

(assert (=> b!2904977 (= e!1833989 e!1833992)))

(declare-fun d!835923 () Bool)

(declare-fun lt!1022466 () Regex!8886)

(assert (=> d!835923 (validRegex!3659 lt!1022466)))

(declare-fun e!1833991 () Regex!8886)

(assert (=> d!835923 (= lt!1022466 e!1833991)))

(declare-fun c!473395 () Bool)

(assert (=> d!835923 (= c!473395 (or (is-EmptyExpr!8886 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097)))) (is-EmptyLang!8886 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097))))))))

(assert (=> d!835923 (validRegex!3659 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097))))))

(assert (=> d!835923 (= (derivativeStep!2393 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097))) (h!39983 prefix!1456)) lt!1022466)))

(declare-fun bm!189486 () Bool)

(assert (=> bm!189486 (= call!189492 (derivativeStep!2393 (ite c!473396 (regOne!18285 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097)))) (ite c!473397 (reg!9215 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097)))) (regOne!18284 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097)))))) (h!39983 prefix!1456)))))

(declare-fun bm!189487 () Bool)

(declare-fun call!189490 () Regex!8886)

(assert (=> bm!189487 (= call!189490 call!189492)))

(declare-fun b!2904978 () Bool)

(assert (=> b!2904978 (= e!1833992 (Union!8886 (Concat!14207 call!189491 (regTwo!18284 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097))))) call!189493))))

(declare-fun b!2904979 () Bool)

(declare-fun e!1833988 () Regex!8886)

(assert (=> b!2904979 (= e!1833988 (ite (= (h!39983 prefix!1456) (c!473303 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097))))) EmptyExpr!8886 EmptyLang!8886))))

(declare-fun b!2904980 () Bool)

(assert (=> b!2904980 (= c!473396 (is-Union!8886 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097)))))))

(assert (=> b!2904980 (= e!1833988 e!1833990)))

(declare-fun b!2904981 () Bool)

(assert (=> b!2904981 (= e!1833991 e!1833988)))

(declare-fun c!473398 () Bool)

(assert (=> b!2904981 (= c!473398 (is-ElementMatch!8886 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097)))))))

(declare-fun b!2904982 () Bool)

(assert (=> b!2904982 (= e!1833989 (Concat!14207 call!189490 (ite c!473346 (regOne!18285 r!19097) (ite c!473347 (reg!9215 r!19097) (regOne!18284 r!19097)))))))

(declare-fun b!2904983 () Bool)

(assert (=> b!2904983 (= e!1833991 EmptyLang!8886)))

(declare-fun bm!189488 () Bool)

(assert (=> bm!189488 (= call!189491 call!189490)))

(assert (= (and d!835923 c!473395) b!2904983))

(assert (= (and d!835923 (not c!473395)) b!2904981))

(assert (= (and b!2904981 c!473398) b!2904979))

(assert (= (and b!2904981 (not c!473398)) b!2904980))

(assert (= (and b!2904980 c!473396) b!2904976))

(assert (= (and b!2904980 (not c!473396)) b!2904975))

(assert (= (and b!2904975 c!473397) b!2904982))

(assert (= (and b!2904975 (not c!473397)) b!2904977))

(assert (= (and b!2904977 c!473394) b!2904978))

(assert (= (and b!2904977 (not c!473394)) b!2904974))

(assert (= (or b!2904978 b!2904974) bm!189488))

(assert (= (or b!2904982 bm!189488) bm!189487))

(assert (= (or b!2904976 bm!189487) bm!189486))

(assert (= (or b!2904976 b!2904978) bm!189485))

(declare-fun m!3307707 () Bool)

(assert (=> bm!189485 m!3307707))

(declare-fun m!3307709 () Bool)

(assert (=> b!2904977 m!3307709))

(declare-fun m!3307711 () Bool)

(assert (=> d!835923 m!3307711))

(declare-fun m!3307713 () Bool)

(assert (=> d!835923 m!3307713))

(declare-fun m!3307715 () Bool)

(assert (=> bm!189486 m!3307715))

(assert (=> bm!189452 d!835923))

(declare-fun b!2904988 () Bool)

(declare-fun e!1833996 () Bool)

(declare-fun e!1833999 () Bool)

(assert (=> b!2904988 (= e!1833996 e!1833999)))

(declare-fun c!473400 () Bool)

(assert (=> b!2904988 (= c!473400 (is-Star!8886 (ite c!473317 (regTwo!18285 lt!1022435) (regTwo!18284 lt!1022435))))))

(declare-fun b!2904989 () Bool)

(declare-fun res!1199913 () Bool)

(declare-fun e!1833998 () Bool)

(assert (=> b!2904989 (=> res!1199913 e!1833998)))

(assert (=> b!2904989 (= res!1199913 (not (is-Concat!14207 (ite c!473317 (regTwo!18285 lt!1022435) (regTwo!18284 lt!1022435)))))))

(declare-fun e!1833997 () Bool)

(assert (=> b!2904989 (= e!1833997 e!1833998)))

(declare-fun d!835929 () Bool)

(declare-fun res!1199917 () Bool)

(assert (=> d!835929 (=> res!1199917 e!1833996)))

(assert (=> d!835929 (= res!1199917 (is-ElementMatch!8886 (ite c!473317 (regTwo!18285 lt!1022435) (regTwo!18284 lt!1022435))))))

(assert (=> d!835929 (= (validRegex!3659 (ite c!473317 (regTwo!18285 lt!1022435) (regTwo!18284 lt!1022435))) e!1833996)))

(declare-fun b!2904990 () Bool)

(declare-fun e!1834001 () Bool)

(declare-fun call!189494 () Bool)

(assert (=> b!2904990 (= e!1834001 call!189494)))

(declare-fun b!2904991 () Bool)

(declare-fun e!1834000 () Bool)

(declare-fun call!189496 () Bool)

(assert (=> b!2904991 (= e!1834000 call!189496)))

(declare-fun bm!189489 () Bool)

(declare-fun call!189495 () Bool)

(assert (=> bm!189489 (= call!189495 call!189496)))

(declare-fun b!2904992 () Bool)

(assert (=> b!2904992 (= e!1833999 e!1833997)))

(declare-fun c!473399 () Bool)

(assert (=> b!2904992 (= c!473399 (is-Union!8886 (ite c!473317 (regTwo!18285 lt!1022435) (regTwo!18284 lt!1022435))))))

(declare-fun b!2904993 () Bool)

(assert (=> b!2904993 (= e!1833998 e!1834001)))

(declare-fun res!1199916 () Bool)

(assert (=> b!2904993 (=> (not res!1199916) (not e!1834001))))

(assert (=> b!2904993 (= res!1199916 call!189495)))

(declare-fun bm!189490 () Bool)

(assert (=> bm!189490 (= call!189496 (validRegex!3659 (ite c!473400 (reg!9215 (ite c!473317 (regTwo!18285 lt!1022435) (regTwo!18284 lt!1022435))) (ite c!473399 (regOne!18285 (ite c!473317 (regTwo!18285 lt!1022435) (regTwo!18284 lt!1022435))) (regOne!18284 (ite c!473317 (regTwo!18285 lt!1022435) (regTwo!18284 lt!1022435)))))))))

(declare-fun b!2904994 () Bool)

(assert (=> b!2904994 (= e!1833999 e!1834000)))

(declare-fun res!1199915 () Bool)

(assert (=> b!2904994 (= res!1199915 (not (nullable!2776 (reg!9215 (ite c!473317 (regTwo!18285 lt!1022435) (regTwo!18284 lt!1022435))))))))

(assert (=> b!2904994 (=> (not res!1199915) (not e!1834000))))

(declare-fun b!2904995 () Bool)

(declare-fun res!1199914 () Bool)

(declare-fun e!1834002 () Bool)

(assert (=> b!2904995 (=> (not res!1199914) (not e!1834002))))

(assert (=> b!2904995 (= res!1199914 call!189495)))

(assert (=> b!2904995 (= e!1833997 e!1834002)))

(declare-fun b!2904996 () Bool)

(assert (=> b!2904996 (= e!1834002 call!189494)))

(declare-fun bm!189491 () Bool)

(assert (=> bm!189491 (= call!189494 (validRegex!3659 (ite c!473399 (regTwo!18285 (ite c!473317 (regTwo!18285 lt!1022435) (regTwo!18284 lt!1022435))) (regTwo!18284 (ite c!473317 (regTwo!18285 lt!1022435) (regTwo!18284 lt!1022435))))))))

(assert (= (and d!835929 (not res!1199917)) b!2904988))

(assert (= (and b!2904988 c!473400) b!2904994))

(assert (= (and b!2904988 (not c!473400)) b!2904992))

(assert (= (and b!2904994 res!1199915) b!2904991))

(assert (= (and b!2904992 c!473399) b!2904995))

(assert (= (and b!2904992 (not c!473399)) b!2904989))

(assert (= (and b!2904995 res!1199914) b!2904996))

(assert (= (and b!2904989 (not res!1199913)) b!2904993))

(assert (= (and b!2904993 res!1199916) b!2904990))

(assert (= (or b!2904995 b!2904993) bm!189489))

(assert (= (or b!2904996 b!2904990) bm!189491))

(assert (= (or b!2904991 bm!189489) bm!189490))

(declare-fun m!3307725 () Bool)

(assert (=> bm!189490 m!3307725))

(declare-fun m!3307727 () Bool)

(assert (=> b!2904994 m!3307727))

(declare-fun m!3307729 () Bool)

(assert (=> bm!189491 m!3307729))

(assert (=> bm!189430 d!835929))

(declare-fun d!835935 () Bool)

(assert (=> d!835935 (= (nullable!2776 (regOne!18284 r!19097)) (nullableFct!849 (regOne!18284 r!19097)))))

(declare-fun bs!524058 () Bool)

(assert (= bs!524058 d!835935))

(declare-fun m!3307731 () Bool)

(assert (=> bs!524058 m!3307731))

(assert (=> b!2904735 d!835935))

(declare-fun d!835937 () Bool)

(assert (=> d!835937 (= (isEmpty!18876 prefix!1456) (is-Nil!34563 prefix!1456))))

(assert (=> d!835865 d!835937))

(declare-fun b!2905006 () Bool)

(declare-fun e!1834010 () Bool)

(declare-fun e!1834013 () Bool)

(assert (=> b!2905006 (= e!1834010 e!1834013)))

(declare-fun c!473404 () Bool)

(assert (=> b!2905006 (= c!473404 (is-Star!8886 (ite c!473315 (regTwo!18285 r!19097) (regTwo!18284 r!19097))))))

(declare-fun b!2905007 () Bool)

(declare-fun res!1199923 () Bool)

(declare-fun e!1834012 () Bool)

(assert (=> b!2905007 (=> res!1199923 e!1834012)))

(assert (=> b!2905007 (= res!1199923 (not (is-Concat!14207 (ite c!473315 (regTwo!18285 r!19097) (regTwo!18284 r!19097)))))))

(declare-fun e!1834011 () Bool)

(assert (=> b!2905007 (= e!1834011 e!1834012)))

(declare-fun d!835939 () Bool)

(declare-fun res!1199927 () Bool)

(assert (=> d!835939 (=> res!1199927 e!1834010)))

(assert (=> d!835939 (= res!1199927 (is-ElementMatch!8886 (ite c!473315 (regTwo!18285 r!19097) (regTwo!18284 r!19097))))))

(assert (=> d!835939 (= (validRegex!3659 (ite c!473315 (regTwo!18285 r!19097) (regTwo!18284 r!19097))) e!1834010)))

(declare-fun b!2905008 () Bool)

(declare-fun e!1834015 () Bool)

(declare-fun call!189500 () Bool)

(assert (=> b!2905008 (= e!1834015 call!189500)))

(declare-fun b!2905009 () Bool)

(declare-fun e!1834014 () Bool)

(declare-fun call!189502 () Bool)

(assert (=> b!2905009 (= e!1834014 call!189502)))

(declare-fun bm!189495 () Bool)

(declare-fun call!189501 () Bool)

(assert (=> bm!189495 (= call!189501 call!189502)))

(declare-fun b!2905010 () Bool)

(assert (=> b!2905010 (= e!1834013 e!1834011)))

(declare-fun c!473403 () Bool)

(assert (=> b!2905010 (= c!473403 (is-Union!8886 (ite c!473315 (regTwo!18285 r!19097) (regTwo!18284 r!19097))))))

(declare-fun b!2905011 () Bool)

(assert (=> b!2905011 (= e!1834012 e!1834015)))

(declare-fun res!1199926 () Bool)

(assert (=> b!2905011 (=> (not res!1199926) (not e!1834015))))

(assert (=> b!2905011 (= res!1199926 call!189501)))

(declare-fun bm!189496 () Bool)

(assert (=> bm!189496 (= call!189502 (validRegex!3659 (ite c!473404 (reg!9215 (ite c!473315 (regTwo!18285 r!19097) (regTwo!18284 r!19097))) (ite c!473403 (regOne!18285 (ite c!473315 (regTwo!18285 r!19097) (regTwo!18284 r!19097))) (regOne!18284 (ite c!473315 (regTwo!18285 r!19097) (regTwo!18284 r!19097)))))))))

(declare-fun b!2905012 () Bool)

(assert (=> b!2905012 (= e!1834013 e!1834014)))

(declare-fun res!1199925 () Bool)

(assert (=> b!2905012 (= res!1199925 (not (nullable!2776 (reg!9215 (ite c!473315 (regTwo!18285 r!19097) (regTwo!18284 r!19097))))))))

(assert (=> b!2905012 (=> (not res!1199925) (not e!1834014))))

(declare-fun b!2905013 () Bool)

(declare-fun res!1199924 () Bool)

(declare-fun e!1834016 () Bool)

(assert (=> b!2905013 (=> (not res!1199924) (not e!1834016))))

(assert (=> b!2905013 (= res!1199924 call!189501)))

(assert (=> b!2905013 (= e!1834011 e!1834016)))

(declare-fun b!2905014 () Bool)

(assert (=> b!2905014 (= e!1834016 call!189500)))

(declare-fun bm!189497 () Bool)

(assert (=> bm!189497 (= call!189500 (validRegex!3659 (ite c!473403 (regTwo!18285 (ite c!473315 (regTwo!18285 r!19097) (regTwo!18284 r!19097))) (regTwo!18284 (ite c!473315 (regTwo!18285 r!19097) (regTwo!18284 r!19097))))))))

(assert (= (and d!835939 (not res!1199927)) b!2905006))

(assert (= (and b!2905006 c!473404) b!2905012))

(assert (= (and b!2905006 (not c!473404)) b!2905010))

(assert (= (and b!2905012 res!1199925) b!2905009))

(assert (= (and b!2905010 c!473403) b!2905013))

(assert (= (and b!2905010 (not c!473403)) b!2905007))

(assert (= (and b!2905013 res!1199924) b!2905014))

(assert (= (and b!2905007 (not res!1199923)) b!2905011))

(assert (= (and b!2905011 res!1199926) b!2905008))

(assert (= (or b!2905013 b!2905011) bm!189495))

(assert (= (or b!2905014 b!2905008) bm!189497))

(assert (= (or b!2905009 bm!189495) bm!189496))

(declare-fun m!3307739 () Bool)

(assert (=> bm!189496 m!3307739))

(declare-fun m!3307741 () Bool)

(assert (=> b!2905012 m!3307741))

(declare-fun m!3307743 () Bool)

(assert (=> bm!189497 m!3307743))

(assert (=> bm!189427 d!835939))

(declare-fun e!1834021 () Regex!8886)

(declare-fun b!2905015 () Bool)

(declare-fun call!189504 () Regex!8886)

(assert (=> b!2905015 (= e!1834021 (Union!8886 (Concat!14207 call!189504 (regTwo!18284 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097)))) EmptyLang!8886))))

(declare-fun b!2905016 () Bool)

(declare-fun e!1834019 () Regex!8886)

(declare-fun e!1834018 () Regex!8886)

(assert (=> b!2905016 (= e!1834019 e!1834018)))

(declare-fun c!473408 () Bool)

(assert (=> b!2905016 (= c!473408 (is-Star!8886 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097))))))

(declare-fun bm!189498 () Bool)

(declare-fun call!189506 () Regex!8886)

(declare-fun c!473407 () Bool)

(assert (=> bm!189498 (= call!189506 (derivativeStep!2393 (ite c!473407 (regTwo!18285 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097))) (regTwo!18284 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097)))) (h!39983 prefix!1456)))))

(declare-fun b!2905017 () Bool)

(declare-fun call!189505 () Regex!8886)

(assert (=> b!2905017 (= e!1834019 (Union!8886 call!189505 call!189506))))

(declare-fun b!2905018 () Bool)

(declare-fun c!473405 () Bool)

(assert (=> b!2905018 (= c!473405 (nullable!2776 (regOne!18284 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097)))))))

(assert (=> b!2905018 (= e!1834018 e!1834021)))

(declare-fun d!835943 () Bool)

(declare-fun lt!1022468 () Regex!8886)

(assert (=> d!835943 (validRegex!3659 lt!1022468)))

(declare-fun e!1834020 () Regex!8886)

(assert (=> d!835943 (= lt!1022468 e!1834020)))

(declare-fun c!473406 () Bool)

(assert (=> d!835943 (= c!473406 (or (is-EmptyExpr!8886 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097))) (is-EmptyLang!8886 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097)))))))

(assert (=> d!835943 (validRegex!3659 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097)))))

(assert (=> d!835943 (= (derivativeStep!2393 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097)) (h!39983 prefix!1456)) lt!1022468)))

(declare-fun bm!189499 () Bool)

(assert (=> bm!189499 (= call!189505 (derivativeStep!2393 (ite c!473407 (regOne!18285 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097))) (ite c!473408 (reg!9215 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097))) (regOne!18284 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097))))) (h!39983 prefix!1456)))))

(declare-fun bm!189500 () Bool)

(declare-fun call!189503 () Regex!8886)

(assert (=> bm!189500 (= call!189503 call!189505)))

(declare-fun b!2905019 () Bool)

(assert (=> b!2905019 (= e!1834021 (Union!8886 (Concat!14207 call!189504 (regTwo!18284 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097)))) call!189506))))

(declare-fun b!2905020 () Bool)

(declare-fun e!1834017 () Regex!8886)

(assert (=> b!2905020 (= e!1834017 (ite (= (h!39983 prefix!1456) (c!473303 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097)))) EmptyExpr!8886 EmptyLang!8886))))

(declare-fun b!2905021 () Bool)

(assert (=> b!2905021 (= c!473407 (is-Union!8886 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097))))))

(assert (=> b!2905021 (= e!1834017 e!1834019)))

(declare-fun b!2905022 () Bool)

(assert (=> b!2905022 (= e!1834020 e!1834017)))

(declare-fun c!473409 () Bool)

(assert (=> b!2905022 (= c!473409 (is-ElementMatch!8886 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097))))))

(declare-fun b!2905023 () Bool)

(assert (=> b!2905023 (= e!1834018 (Concat!14207 call!189503 (ite c!473346 (regTwo!18285 r!19097) (regTwo!18284 r!19097))))))

(declare-fun b!2905024 () Bool)

(assert (=> b!2905024 (= e!1834020 EmptyLang!8886)))

(declare-fun bm!189501 () Bool)

(assert (=> bm!189501 (= call!189504 call!189503)))

(assert (= (and d!835943 c!473406) b!2905024))

(assert (= (and d!835943 (not c!473406)) b!2905022))

(assert (= (and b!2905022 c!473409) b!2905020))

(assert (= (and b!2905022 (not c!473409)) b!2905021))

(assert (= (and b!2905021 c!473407) b!2905017))

(assert (= (and b!2905021 (not c!473407)) b!2905016))

(assert (= (and b!2905016 c!473408) b!2905023))

(assert (= (and b!2905016 (not c!473408)) b!2905018))

(assert (= (and b!2905018 c!473405) b!2905019))

(assert (= (and b!2905018 (not c!473405)) b!2905015))

(assert (= (or b!2905019 b!2905015) bm!189501))

(assert (= (or b!2905023 bm!189501) bm!189500))

(assert (= (or b!2905017 bm!189500) bm!189499))

(assert (= (or b!2905017 b!2905019) bm!189498))

(declare-fun m!3307751 () Bool)

(assert (=> bm!189498 m!3307751))

(declare-fun m!3307753 () Bool)

(assert (=> b!2905018 m!3307753))

(declare-fun m!3307757 () Bool)

(assert (=> d!835943 m!3307757))

(declare-fun m!3307759 () Bool)

(assert (=> d!835943 m!3307759))

(declare-fun m!3307763 () Bool)

(assert (=> bm!189499 m!3307763))

(assert (=> bm!189451 d!835943))

(declare-fun b!2905027 () Bool)

(declare-fun e!1834023 () Bool)

(declare-fun e!1834026 () Bool)

(assert (=> b!2905027 (= e!1834023 e!1834026)))

(declare-fun c!473412 () Bool)

(assert (=> b!2905027 (= c!473412 (is-Star!8886 lt!1022444))))

(declare-fun b!2905028 () Bool)

(declare-fun res!1199928 () Bool)

(declare-fun e!1834025 () Bool)

(assert (=> b!2905028 (=> res!1199928 e!1834025)))

(assert (=> b!2905028 (= res!1199928 (not (is-Concat!14207 lt!1022444)))))

(declare-fun e!1834024 () Bool)

(assert (=> b!2905028 (= e!1834024 e!1834025)))

(declare-fun d!835949 () Bool)

(declare-fun res!1199932 () Bool)

(assert (=> d!835949 (=> res!1199932 e!1834023)))

(assert (=> d!835949 (= res!1199932 (is-ElementMatch!8886 lt!1022444))))

(assert (=> d!835949 (= (validRegex!3659 lt!1022444) e!1834023)))

(declare-fun b!2905029 () Bool)

(declare-fun e!1834028 () Bool)

(declare-fun call!189507 () Bool)

(assert (=> b!2905029 (= e!1834028 call!189507)))

(declare-fun b!2905030 () Bool)

(declare-fun e!1834027 () Bool)

(declare-fun call!189509 () Bool)

(assert (=> b!2905030 (= e!1834027 call!189509)))

(declare-fun bm!189502 () Bool)

(declare-fun call!189508 () Bool)

(assert (=> bm!189502 (= call!189508 call!189509)))

(declare-fun b!2905031 () Bool)

(assert (=> b!2905031 (= e!1834026 e!1834024)))

(declare-fun c!473411 () Bool)

(assert (=> b!2905031 (= c!473411 (is-Union!8886 lt!1022444))))

(declare-fun b!2905032 () Bool)

(assert (=> b!2905032 (= e!1834025 e!1834028)))

(declare-fun res!1199931 () Bool)

(assert (=> b!2905032 (=> (not res!1199931) (not e!1834028))))

(assert (=> b!2905032 (= res!1199931 call!189508)))

(declare-fun bm!189503 () Bool)

(assert (=> bm!189503 (= call!189509 (validRegex!3659 (ite c!473412 (reg!9215 lt!1022444) (ite c!473411 (regOne!18285 lt!1022444) (regOne!18284 lt!1022444)))))))

(declare-fun b!2905033 () Bool)

(assert (=> b!2905033 (= e!1834026 e!1834027)))

(declare-fun res!1199930 () Bool)

(assert (=> b!2905033 (= res!1199930 (not (nullable!2776 (reg!9215 lt!1022444))))))

(assert (=> b!2905033 (=> (not res!1199930) (not e!1834027))))

(declare-fun b!2905034 () Bool)

(declare-fun res!1199929 () Bool)

(declare-fun e!1834029 () Bool)

(assert (=> b!2905034 (=> (not res!1199929) (not e!1834029))))

(assert (=> b!2905034 (= res!1199929 call!189508)))

(assert (=> b!2905034 (= e!1834024 e!1834029)))

(declare-fun b!2905035 () Bool)

(assert (=> b!2905035 (= e!1834029 call!189507)))

(declare-fun bm!189504 () Bool)

(assert (=> bm!189504 (= call!189507 (validRegex!3659 (ite c!473411 (regTwo!18285 lt!1022444) (regTwo!18284 lt!1022444))))))

(assert (= (and d!835949 (not res!1199932)) b!2905027))

(assert (= (and b!2905027 c!473412) b!2905033))

(assert (= (and b!2905027 (not c!473412)) b!2905031))

(assert (= (and b!2905033 res!1199930) b!2905030))

(assert (= (and b!2905031 c!473411) b!2905034))

(assert (= (and b!2905031 (not c!473411)) b!2905028))

(assert (= (and b!2905034 res!1199929) b!2905035))

(assert (= (and b!2905028 (not res!1199928)) b!2905032))

(assert (= (and b!2905032 res!1199931) b!2905029))

(assert (= (or b!2905034 b!2905032) bm!189502))

(assert (= (or b!2905035 b!2905029) bm!189504))

(assert (= (or b!2905030 bm!189502) bm!189503))

(declare-fun m!3307767 () Bool)

(assert (=> bm!189503 m!3307767))

(declare-fun m!3307769 () Bool)

(assert (=> b!2905033 m!3307769))

(declare-fun m!3307771 () Bool)

(assert (=> bm!189504 m!3307771))

(assert (=> d!835843 d!835949))

(assert (=> d!835843 d!835837))

(declare-fun d!835953 () Bool)

(assert (=> d!835953 (= (nullable!2776 (reg!9215 lt!1022435)) (nullableFct!849 (reg!9215 lt!1022435)))))

(declare-fun bs!524059 () Bool)

(assert (= bs!524059 d!835953))

(declare-fun m!3307773 () Bool)

(assert (=> bs!524059 m!3307773))

(assert (=> b!2904679 d!835953))

(declare-fun d!835955 () Bool)

(declare-fun lt!1022470 () Int)

(assert (=> d!835955 (>= lt!1022470 0)))

(declare-fun e!1834035 () Int)

(assert (=> d!835955 (= lt!1022470 e!1834035)))

(declare-fun c!473418 () Bool)

(assert (=> d!835955 (= c!473418 (is-Nil!34563 s!13418))))

(assert (=> d!835955 (= (size!26368 s!13418) lt!1022470)))

(declare-fun b!2905046 () Bool)

(assert (=> b!2905046 (= e!1834035 0)))

(declare-fun b!2905047 () Bool)

(assert (=> b!2905047 (= e!1834035 (+ 1 (size!26368 (t!233730 s!13418))))))

(assert (= (and d!835955 c!473418) b!2905046))

(assert (= (and d!835955 (not c!473418)) b!2905047))

(declare-fun m!3307775 () Bool)

(assert (=> b!2905047 m!3307775))

(assert (=> b!2904765 d!835955))

(declare-fun d!835957 () Bool)

(declare-fun lt!1022471 () Int)

(assert (=> d!835957 (>= lt!1022471 0)))

(declare-fun e!1834036 () Int)

(assert (=> d!835957 (= lt!1022471 e!1834036)))

(declare-fun c!473419 () Bool)

(assert (=> d!835957 (= c!473419 (is-Nil!34563 prefix!1456))))

(assert (=> d!835957 (= (size!26368 prefix!1456) lt!1022471)))

(declare-fun b!2905048 () Bool)

(assert (=> b!2905048 (= e!1834036 0)))

(declare-fun b!2905049 () Bool)

(assert (=> b!2905049 (= e!1834036 (+ 1 (size!26368 (t!233730 prefix!1456))))))

(assert (= (and d!835957 c!473419) b!2905048))

(assert (= (and d!835957 (not c!473419)) b!2905049))

(assert (=> b!2905049 m!3307541))

(assert (=> b!2904765 d!835957))

(declare-fun b!2905050 () Bool)

(declare-fun e!1834037 () Bool)

(assert (=> b!2905050 (= e!1834037 tp_is_empty!15359)))

(declare-fun b!2905053 () Bool)

(declare-fun tp!932790 () Bool)

(declare-fun tp!932788 () Bool)

(assert (=> b!2905053 (= e!1834037 (and tp!932790 tp!932788))))

(assert (=> b!2904851 (= tp!932762 e!1834037)))

(declare-fun b!2905052 () Bool)

(declare-fun tp!932791 () Bool)

(assert (=> b!2905052 (= e!1834037 tp!932791)))

(declare-fun b!2905051 () Bool)

(declare-fun tp!932792 () Bool)

(declare-fun tp!932789 () Bool)

(assert (=> b!2905051 (= e!1834037 (and tp!932792 tp!932789))))

(assert (= (and b!2904851 (is-ElementMatch!8886 (regOne!18285 (regOne!18284 r!19097)))) b!2905050))

(assert (= (and b!2904851 (is-Concat!14207 (regOne!18285 (regOne!18284 r!19097)))) b!2905051))

(assert (= (and b!2904851 (is-Star!8886 (regOne!18285 (regOne!18284 r!19097)))) b!2905052))

(assert (= (and b!2904851 (is-Union!8886 (regOne!18285 (regOne!18284 r!19097)))) b!2905053))

(declare-fun b!2905056 () Bool)

(declare-fun e!1834039 () Bool)

(assert (=> b!2905056 (= e!1834039 tp_is_empty!15359)))

(declare-fun b!2905059 () Bool)

(declare-fun tp!932795 () Bool)

(declare-fun tp!932793 () Bool)

(assert (=> b!2905059 (= e!1834039 (and tp!932795 tp!932793))))

(assert (=> b!2904851 (= tp!932760 e!1834039)))

(declare-fun b!2905058 () Bool)

(declare-fun tp!932796 () Bool)

(assert (=> b!2905058 (= e!1834039 tp!932796)))

(declare-fun b!2905057 () Bool)

(declare-fun tp!932797 () Bool)

(declare-fun tp!932794 () Bool)

(assert (=> b!2905057 (= e!1834039 (and tp!932797 tp!932794))))

(assert (= (and b!2904851 (is-ElementMatch!8886 (regTwo!18285 (regOne!18284 r!19097)))) b!2905056))

(assert (= (and b!2904851 (is-Concat!14207 (regTwo!18285 (regOne!18284 r!19097)))) b!2905057))

(assert (= (and b!2904851 (is-Star!8886 (regTwo!18285 (regOne!18284 r!19097)))) b!2905058))

(assert (= (and b!2904851 (is-Union!8886 (regTwo!18285 (regOne!18284 r!19097)))) b!2905059))

(declare-fun b!2905062 () Bool)

(declare-fun e!1834041 () Bool)

(assert (=> b!2905062 (= e!1834041 tp_is_empty!15359)))

(declare-fun b!2905065 () Bool)

(declare-fun tp!932800 () Bool)

(declare-fun tp!932798 () Bool)

(assert (=> b!2905065 (= e!1834041 (and tp!932800 tp!932798))))

(assert (=> b!2904858 (= tp!932775 e!1834041)))

(declare-fun b!2905064 () Bool)

(declare-fun tp!932801 () Bool)

(assert (=> b!2905064 (= e!1834041 tp!932801)))

(declare-fun b!2905063 () Bool)

(declare-fun tp!932802 () Bool)

(declare-fun tp!932799 () Bool)

(assert (=> b!2905063 (= e!1834041 (and tp!932802 tp!932799))))

(assert (= (and b!2904858 (is-ElementMatch!8886 (regOne!18284 (regTwo!18284 r!19097)))) b!2905062))

(assert (= (and b!2904858 (is-Concat!14207 (regOne!18284 (regTwo!18284 r!19097)))) b!2905063))

(assert (= (and b!2904858 (is-Star!8886 (regOne!18284 (regTwo!18284 r!19097)))) b!2905064))

(assert (= (and b!2904858 (is-Union!8886 (regOne!18284 (regTwo!18284 r!19097)))) b!2905065))

(declare-fun b!2905066 () Bool)

(declare-fun e!1834042 () Bool)

(assert (=> b!2905066 (= e!1834042 tp_is_empty!15359)))

(declare-fun b!2905069 () Bool)

(declare-fun tp!932805 () Bool)

(declare-fun tp!932803 () Bool)

(assert (=> b!2905069 (= e!1834042 (and tp!932805 tp!932803))))

(assert (=> b!2904858 (= tp!932772 e!1834042)))

(declare-fun b!2905068 () Bool)

(declare-fun tp!932806 () Bool)

(assert (=> b!2905068 (= e!1834042 tp!932806)))

(declare-fun b!2905067 () Bool)

(declare-fun tp!932807 () Bool)

(declare-fun tp!932804 () Bool)

(assert (=> b!2905067 (= e!1834042 (and tp!932807 tp!932804))))

(assert (= (and b!2904858 (is-ElementMatch!8886 (regTwo!18284 (regTwo!18284 r!19097)))) b!2905066))

(assert (= (and b!2904858 (is-Concat!14207 (regTwo!18284 (regTwo!18284 r!19097)))) b!2905067))

(assert (= (and b!2904858 (is-Star!8886 (regTwo!18284 (regTwo!18284 r!19097)))) b!2905068))

(assert (= (and b!2904858 (is-Union!8886 (regTwo!18284 (regTwo!18284 r!19097)))) b!2905069))

(declare-fun b!2905070 () Bool)

(declare-fun e!1834043 () Bool)

(assert (=> b!2905070 (= e!1834043 tp_is_empty!15359)))

(declare-fun b!2905073 () Bool)

(declare-fun tp!932810 () Bool)

(declare-fun tp!932808 () Bool)

(assert (=> b!2905073 (= e!1834043 (and tp!932810 tp!932808))))

(assert (=> b!2904850 (= tp!932763 e!1834043)))

(declare-fun b!2905072 () Bool)

(declare-fun tp!932811 () Bool)

(assert (=> b!2905072 (= e!1834043 tp!932811)))

(declare-fun b!2905071 () Bool)

(declare-fun tp!932812 () Bool)

(declare-fun tp!932809 () Bool)

(assert (=> b!2905071 (= e!1834043 (and tp!932812 tp!932809))))

(assert (= (and b!2904850 (is-ElementMatch!8886 (reg!9215 (regOne!18284 r!19097)))) b!2905070))

(assert (= (and b!2904850 (is-Concat!14207 (reg!9215 (regOne!18284 r!19097)))) b!2905071))

(assert (= (and b!2904850 (is-Star!8886 (reg!9215 (regOne!18284 r!19097)))) b!2905072))

(assert (= (and b!2904850 (is-Union!8886 (reg!9215 (regOne!18284 r!19097)))) b!2905073))

(declare-fun b!2905074 () Bool)

(declare-fun e!1834044 () Bool)

(assert (=> b!2905074 (= e!1834044 tp_is_empty!15359)))

(declare-fun b!2905077 () Bool)

(declare-fun tp!932815 () Bool)

(declare-fun tp!932813 () Bool)

(assert (=> b!2905077 (= e!1834044 (and tp!932815 tp!932813))))

(assert (=> b!2904849 (= tp!932764 e!1834044)))

(declare-fun b!2905076 () Bool)

(declare-fun tp!932816 () Bool)

(assert (=> b!2905076 (= e!1834044 tp!932816)))

(declare-fun b!2905075 () Bool)

(declare-fun tp!932817 () Bool)

(declare-fun tp!932814 () Bool)

(assert (=> b!2905075 (= e!1834044 (and tp!932817 tp!932814))))

(assert (= (and b!2904849 (is-ElementMatch!8886 (regOne!18284 (regOne!18284 r!19097)))) b!2905074))

(assert (= (and b!2904849 (is-Concat!14207 (regOne!18284 (regOne!18284 r!19097)))) b!2905075))

(assert (= (and b!2904849 (is-Star!8886 (regOne!18284 (regOne!18284 r!19097)))) b!2905076))

(assert (= (and b!2904849 (is-Union!8886 (regOne!18284 (regOne!18284 r!19097)))) b!2905077))

(declare-fun b!2905078 () Bool)

(declare-fun e!1834045 () Bool)

(assert (=> b!2905078 (= e!1834045 tp_is_empty!15359)))

(declare-fun b!2905081 () Bool)

(declare-fun tp!932820 () Bool)

(declare-fun tp!932818 () Bool)

(assert (=> b!2905081 (= e!1834045 (and tp!932820 tp!932818))))

(assert (=> b!2904849 (= tp!932761 e!1834045)))

(declare-fun b!2905080 () Bool)

(declare-fun tp!932821 () Bool)

(assert (=> b!2905080 (= e!1834045 tp!932821)))

(declare-fun b!2905079 () Bool)

(declare-fun tp!932822 () Bool)

(declare-fun tp!932819 () Bool)

(assert (=> b!2905079 (= e!1834045 (and tp!932822 tp!932819))))

(assert (= (and b!2904849 (is-ElementMatch!8886 (regTwo!18284 (regOne!18284 r!19097)))) b!2905078))

(assert (= (and b!2904849 (is-Concat!14207 (regTwo!18284 (regOne!18284 r!19097)))) b!2905079))

(assert (= (and b!2904849 (is-Star!8886 (regTwo!18284 (regOne!18284 r!19097)))) b!2905080))

(assert (= (and b!2904849 (is-Union!8886 (regTwo!18284 (regOne!18284 r!19097)))) b!2905081))

(declare-fun b!2905082 () Bool)

(declare-fun e!1834046 () Bool)

(assert (=> b!2905082 (= e!1834046 tp_is_empty!15359)))

(declare-fun b!2905085 () Bool)

(declare-fun tp!932825 () Bool)

(declare-fun tp!932823 () Bool)

(assert (=> b!2905085 (= e!1834046 (and tp!932825 tp!932823))))

(assert (=> b!2904822 (= tp!932732 e!1834046)))

(declare-fun b!2905084 () Bool)

(declare-fun tp!932826 () Bool)

(assert (=> b!2905084 (= e!1834046 tp!932826)))

(declare-fun b!2905083 () Bool)

(declare-fun tp!932827 () Bool)

(declare-fun tp!932824 () Bool)

(assert (=> b!2905083 (= e!1834046 (and tp!932827 tp!932824))))

(assert (= (and b!2904822 (is-ElementMatch!8886 (regOne!18285 (regOne!18285 r!19097)))) b!2905082))

(assert (= (and b!2904822 (is-Concat!14207 (regOne!18285 (regOne!18285 r!19097)))) b!2905083))

(assert (= (and b!2904822 (is-Star!8886 (regOne!18285 (regOne!18285 r!19097)))) b!2905084))

(assert (= (and b!2904822 (is-Union!8886 (regOne!18285 (regOne!18285 r!19097)))) b!2905085))

(declare-fun b!2905086 () Bool)

(declare-fun e!1834047 () Bool)

(assert (=> b!2905086 (= e!1834047 tp_is_empty!15359)))

(declare-fun b!2905089 () Bool)

(declare-fun tp!932830 () Bool)

(declare-fun tp!932828 () Bool)

(assert (=> b!2905089 (= e!1834047 (and tp!932830 tp!932828))))

(assert (=> b!2904822 (= tp!932730 e!1834047)))

(declare-fun b!2905088 () Bool)

(declare-fun tp!932831 () Bool)

(assert (=> b!2905088 (= e!1834047 tp!932831)))

(declare-fun b!2905087 () Bool)

(declare-fun tp!932832 () Bool)

(declare-fun tp!932829 () Bool)

(assert (=> b!2905087 (= e!1834047 (and tp!932832 tp!932829))))

(assert (= (and b!2904822 (is-ElementMatch!8886 (regTwo!18285 (regOne!18285 r!19097)))) b!2905086))

(assert (= (and b!2904822 (is-Concat!14207 (regTwo!18285 (regOne!18285 r!19097)))) b!2905087))

(assert (= (and b!2904822 (is-Star!8886 (regTwo!18285 (regOne!18285 r!19097)))) b!2905088))

(assert (= (and b!2904822 (is-Union!8886 (regTwo!18285 (regOne!18285 r!19097)))) b!2905089))

(declare-fun b!2905090 () Bool)

(declare-fun e!1834048 () Bool)

(assert (=> b!2905090 (= e!1834048 tp_is_empty!15359)))

(declare-fun b!2905093 () Bool)

(declare-fun tp!932835 () Bool)

(declare-fun tp!932833 () Bool)

(assert (=> b!2905093 (= e!1834048 (and tp!932835 tp!932833))))

(assert (=> b!2904821 (= tp!932733 e!1834048)))

(declare-fun b!2905092 () Bool)

(declare-fun tp!932836 () Bool)

(assert (=> b!2905092 (= e!1834048 tp!932836)))

(declare-fun b!2905091 () Bool)

(declare-fun tp!932837 () Bool)

(declare-fun tp!932834 () Bool)

(assert (=> b!2905091 (= e!1834048 (and tp!932837 tp!932834))))

(assert (= (and b!2904821 (is-ElementMatch!8886 (reg!9215 (regOne!18285 r!19097)))) b!2905090))

(assert (= (and b!2904821 (is-Concat!14207 (reg!9215 (regOne!18285 r!19097)))) b!2905091))

(assert (= (and b!2904821 (is-Star!8886 (reg!9215 (regOne!18285 r!19097)))) b!2905092))

(assert (= (and b!2904821 (is-Union!8886 (reg!9215 (regOne!18285 r!19097)))) b!2905093))

(declare-fun b!2905094 () Bool)

(declare-fun e!1834049 () Bool)

(assert (=> b!2905094 (= e!1834049 tp_is_empty!15359)))

(declare-fun b!2905097 () Bool)

(declare-fun tp!932840 () Bool)

(declare-fun tp!932838 () Bool)

(assert (=> b!2905097 (= e!1834049 (and tp!932840 tp!932838))))

(assert (=> b!2904830 (= tp!932742 e!1834049)))

(declare-fun b!2905096 () Bool)

(declare-fun tp!932841 () Bool)

(assert (=> b!2905096 (= e!1834049 tp!932841)))

(declare-fun b!2905095 () Bool)

(declare-fun tp!932842 () Bool)

(declare-fun tp!932839 () Bool)

(assert (=> b!2905095 (= e!1834049 (and tp!932842 tp!932839))))

(assert (= (and b!2904830 (is-ElementMatch!8886 (regOne!18285 (regTwo!18285 r!19097)))) b!2905094))

(assert (= (and b!2904830 (is-Concat!14207 (regOne!18285 (regTwo!18285 r!19097)))) b!2905095))

(assert (= (and b!2904830 (is-Star!8886 (regOne!18285 (regTwo!18285 r!19097)))) b!2905096))

(assert (= (and b!2904830 (is-Union!8886 (regOne!18285 (regTwo!18285 r!19097)))) b!2905097))

(declare-fun b!2905098 () Bool)

(declare-fun e!1834050 () Bool)

(assert (=> b!2905098 (= e!1834050 tp_is_empty!15359)))

(declare-fun b!2905101 () Bool)

(declare-fun tp!932845 () Bool)

(declare-fun tp!932843 () Bool)

(assert (=> b!2905101 (= e!1834050 (and tp!932845 tp!932843))))

(assert (=> b!2904830 (= tp!932740 e!1834050)))

(declare-fun b!2905100 () Bool)

(declare-fun tp!932846 () Bool)

(assert (=> b!2905100 (= e!1834050 tp!932846)))

(declare-fun b!2905099 () Bool)

(declare-fun tp!932847 () Bool)

(declare-fun tp!932844 () Bool)

(assert (=> b!2905099 (= e!1834050 (and tp!932847 tp!932844))))

(assert (= (and b!2904830 (is-ElementMatch!8886 (regTwo!18285 (regTwo!18285 r!19097)))) b!2905098))

(assert (= (and b!2904830 (is-Concat!14207 (regTwo!18285 (regTwo!18285 r!19097)))) b!2905099))

(assert (= (and b!2904830 (is-Star!8886 (regTwo!18285 (regTwo!18285 r!19097)))) b!2905100))

(assert (= (and b!2904830 (is-Union!8886 (regTwo!18285 (regTwo!18285 r!19097)))) b!2905101))

(declare-fun b!2905102 () Bool)

(declare-fun e!1834051 () Bool)

(assert (=> b!2905102 (= e!1834051 tp_is_empty!15359)))

(declare-fun b!2905105 () Bool)

(declare-fun tp!932850 () Bool)

(declare-fun tp!932848 () Bool)

(assert (=> b!2905105 (= e!1834051 (and tp!932850 tp!932848))))

(assert (=> b!2904829 (= tp!932743 e!1834051)))

(declare-fun b!2905104 () Bool)

(declare-fun tp!932851 () Bool)

(assert (=> b!2905104 (= e!1834051 tp!932851)))

(declare-fun b!2905103 () Bool)

(declare-fun tp!932852 () Bool)

(declare-fun tp!932849 () Bool)

(assert (=> b!2905103 (= e!1834051 (and tp!932852 tp!932849))))

(assert (= (and b!2904829 (is-ElementMatch!8886 (reg!9215 (regTwo!18285 r!19097)))) b!2905102))

(assert (= (and b!2904829 (is-Concat!14207 (reg!9215 (regTwo!18285 r!19097)))) b!2905103))

(assert (= (and b!2904829 (is-Star!8886 (reg!9215 (regTwo!18285 r!19097)))) b!2905104))

(assert (= (and b!2904829 (is-Union!8886 (reg!9215 (regTwo!18285 r!19097)))) b!2905105))

(declare-fun b!2905110 () Bool)

(declare-fun e!1834055 () Bool)

(assert (=> b!2905110 (= e!1834055 tp_is_empty!15359)))

(declare-fun b!2905113 () Bool)

(declare-fun tp!932855 () Bool)

(declare-fun tp!932853 () Bool)

(assert (=> b!2905113 (= e!1834055 (and tp!932855 tp!932853))))

(assert (=> b!2904820 (= tp!932734 e!1834055)))

(declare-fun b!2905112 () Bool)

(declare-fun tp!932856 () Bool)

(assert (=> b!2905112 (= e!1834055 tp!932856)))

(declare-fun b!2905111 () Bool)

(declare-fun tp!932857 () Bool)

(declare-fun tp!932854 () Bool)

(assert (=> b!2905111 (= e!1834055 (and tp!932857 tp!932854))))

(assert (= (and b!2904820 (is-ElementMatch!8886 (regOne!18284 (regOne!18285 r!19097)))) b!2905110))

(assert (= (and b!2904820 (is-Concat!14207 (regOne!18284 (regOne!18285 r!19097)))) b!2905111))

(assert (= (and b!2904820 (is-Star!8886 (regOne!18284 (regOne!18285 r!19097)))) b!2905112))

(assert (= (and b!2904820 (is-Union!8886 (regOne!18284 (regOne!18285 r!19097)))) b!2905113))

(declare-fun b!2905114 () Bool)

(declare-fun e!1834056 () Bool)

(assert (=> b!2905114 (= e!1834056 tp_is_empty!15359)))

(declare-fun b!2905117 () Bool)

(declare-fun tp!932860 () Bool)

(declare-fun tp!932858 () Bool)

(assert (=> b!2905117 (= e!1834056 (and tp!932860 tp!932858))))

(assert (=> b!2904820 (= tp!932731 e!1834056)))

(declare-fun b!2905116 () Bool)

(declare-fun tp!932861 () Bool)

(assert (=> b!2905116 (= e!1834056 tp!932861)))

(declare-fun b!2905115 () Bool)

(declare-fun tp!932862 () Bool)

(declare-fun tp!932859 () Bool)

(assert (=> b!2905115 (= e!1834056 (and tp!932862 tp!932859))))

(assert (= (and b!2904820 (is-ElementMatch!8886 (regTwo!18284 (regOne!18285 r!19097)))) b!2905114))

(assert (= (and b!2904820 (is-Concat!14207 (regTwo!18284 (regOne!18285 r!19097)))) b!2905115))

(assert (= (and b!2904820 (is-Star!8886 (regTwo!18284 (regOne!18285 r!19097)))) b!2905116))

(assert (= (and b!2904820 (is-Union!8886 (regTwo!18284 (regOne!18285 r!19097)))) b!2905117))

(declare-fun b!2905118 () Bool)

(declare-fun e!1834057 () Bool)

(assert (=> b!2905118 (= e!1834057 tp_is_empty!15359)))

(declare-fun b!2905121 () Bool)

(declare-fun tp!932865 () Bool)

(declare-fun tp!932863 () Bool)

(assert (=> b!2905121 (= e!1834057 (and tp!932865 tp!932863))))

(assert (=> b!2904828 (= tp!932744 e!1834057)))

(declare-fun b!2905120 () Bool)

(declare-fun tp!932866 () Bool)

(assert (=> b!2905120 (= e!1834057 tp!932866)))

(declare-fun b!2905119 () Bool)

(declare-fun tp!932867 () Bool)

(declare-fun tp!932864 () Bool)

(assert (=> b!2905119 (= e!1834057 (and tp!932867 tp!932864))))

(assert (= (and b!2904828 (is-ElementMatch!8886 (regOne!18284 (regTwo!18285 r!19097)))) b!2905118))

(assert (= (and b!2904828 (is-Concat!14207 (regOne!18284 (regTwo!18285 r!19097)))) b!2905119))

(assert (= (and b!2904828 (is-Star!8886 (regOne!18284 (regTwo!18285 r!19097)))) b!2905120))

(assert (= (and b!2904828 (is-Union!8886 (regOne!18284 (regTwo!18285 r!19097)))) b!2905121))

(declare-fun b!2905122 () Bool)

(declare-fun e!1834058 () Bool)

(assert (=> b!2905122 (= e!1834058 tp_is_empty!15359)))

(declare-fun b!2905125 () Bool)

(declare-fun tp!932870 () Bool)

(declare-fun tp!932868 () Bool)

(assert (=> b!2905125 (= e!1834058 (and tp!932870 tp!932868))))

(assert (=> b!2904828 (= tp!932741 e!1834058)))

(declare-fun b!2905124 () Bool)

(declare-fun tp!932871 () Bool)

(assert (=> b!2905124 (= e!1834058 tp!932871)))

(declare-fun b!2905123 () Bool)

(declare-fun tp!932872 () Bool)

(declare-fun tp!932869 () Bool)

(assert (=> b!2905123 (= e!1834058 (and tp!932872 tp!932869))))

(assert (= (and b!2904828 (is-ElementMatch!8886 (regTwo!18284 (regTwo!18285 r!19097)))) b!2905122))

(assert (= (and b!2904828 (is-Concat!14207 (regTwo!18284 (regTwo!18285 r!19097)))) b!2905123))

(assert (= (and b!2904828 (is-Star!8886 (regTwo!18284 (regTwo!18285 r!19097)))) b!2905124))

(assert (= (and b!2904828 (is-Union!8886 (regTwo!18284 (regTwo!18285 r!19097)))) b!2905125))

(declare-fun b!2905126 () Bool)

(declare-fun e!1834059 () Bool)

(declare-fun tp!932873 () Bool)

(assert (=> b!2905126 (= e!1834059 (and tp_is_empty!15359 tp!932873))))

(assert (=> b!2904865 (= tp!932781 e!1834059)))

(assert (= (and b!2904865 (is-Cons!34563 (t!233730 (t!233730 prefix!1456)))) b!2905126))

(declare-fun b!2905129 () Bool)

(declare-fun e!1834061 () Bool)

(assert (=> b!2905129 (= e!1834061 tp_is_empty!15359)))

(declare-fun b!2905132 () Bool)

(declare-fun tp!932876 () Bool)

(declare-fun tp!932874 () Bool)

(assert (=> b!2905132 (= e!1834061 (and tp!932876 tp!932874))))

(assert (=> b!2904869 (= tp!932784 e!1834061)))

(declare-fun b!2905131 () Bool)

(declare-fun tp!932877 () Bool)

(assert (=> b!2905131 (= e!1834061 tp!932877)))

(declare-fun b!2905130 () Bool)

(declare-fun tp!932878 () Bool)

(declare-fun tp!932875 () Bool)

(assert (=> b!2905130 (= e!1834061 (and tp!932878 tp!932875))))

(assert (= (and b!2904869 (is-ElementMatch!8886 (regOne!18285 (reg!9215 r!19097)))) b!2905129))

(assert (= (and b!2904869 (is-Concat!14207 (regOne!18285 (reg!9215 r!19097)))) b!2905130))

(assert (= (and b!2904869 (is-Star!8886 (regOne!18285 (reg!9215 r!19097)))) b!2905131))

(assert (= (and b!2904869 (is-Union!8886 (regOne!18285 (reg!9215 r!19097)))) b!2905132))

(declare-fun b!2905133 () Bool)

(declare-fun e!1834062 () Bool)

(assert (=> b!2905133 (= e!1834062 tp_is_empty!15359)))

(declare-fun b!2905136 () Bool)

(declare-fun tp!932881 () Bool)

(declare-fun tp!932879 () Bool)

(assert (=> b!2905136 (= e!1834062 (and tp!932881 tp!932879))))

(assert (=> b!2904869 (= tp!932782 e!1834062)))

(declare-fun b!2905135 () Bool)

(declare-fun tp!932882 () Bool)

(assert (=> b!2905135 (= e!1834062 tp!932882)))

(declare-fun b!2905134 () Bool)

(declare-fun tp!932883 () Bool)

(declare-fun tp!932880 () Bool)

(assert (=> b!2905134 (= e!1834062 (and tp!932883 tp!932880))))

(assert (= (and b!2904869 (is-ElementMatch!8886 (regTwo!18285 (reg!9215 r!19097)))) b!2905133))

(assert (= (and b!2904869 (is-Concat!14207 (regTwo!18285 (reg!9215 r!19097)))) b!2905134))

(assert (= (and b!2904869 (is-Star!8886 (regTwo!18285 (reg!9215 r!19097)))) b!2905135))

(assert (= (and b!2904869 (is-Union!8886 (regTwo!18285 (reg!9215 r!19097)))) b!2905136))

(declare-fun b!2905137 () Bool)

(declare-fun e!1834063 () Bool)

(assert (=> b!2905137 (= e!1834063 tp_is_empty!15359)))

(declare-fun b!2905140 () Bool)

(declare-fun tp!932886 () Bool)

(declare-fun tp!932884 () Bool)

(assert (=> b!2905140 (= e!1834063 (and tp!932886 tp!932884))))

(assert (=> b!2904868 (= tp!932785 e!1834063)))

(declare-fun b!2905139 () Bool)

(declare-fun tp!932887 () Bool)

(assert (=> b!2905139 (= e!1834063 tp!932887)))

(declare-fun b!2905138 () Bool)

(declare-fun tp!932888 () Bool)

(declare-fun tp!932885 () Bool)

(assert (=> b!2905138 (= e!1834063 (and tp!932888 tp!932885))))

(assert (= (and b!2904868 (is-ElementMatch!8886 (reg!9215 (reg!9215 r!19097)))) b!2905137))

(assert (= (and b!2904868 (is-Concat!14207 (reg!9215 (reg!9215 r!19097)))) b!2905138))

(assert (= (and b!2904868 (is-Star!8886 (reg!9215 (reg!9215 r!19097)))) b!2905139))

(assert (= (and b!2904868 (is-Union!8886 (reg!9215 (reg!9215 r!19097)))) b!2905140))

(declare-fun b!2905141 () Bool)

(declare-fun e!1834064 () Bool)

(assert (=> b!2905141 (= e!1834064 tp_is_empty!15359)))

(declare-fun b!2905144 () Bool)

(declare-fun tp!932891 () Bool)

(declare-fun tp!932889 () Bool)

(assert (=> b!2905144 (= e!1834064 (and tp!932891 tp!932889))))

(assert (=> b!2904867 (= tp!932786 e!1834064)))

(declare-fun b!2905143 () Bool)

(declare-fun tp!932892 () Bool)

(assert (=> b!2905143 (= e!1834064 tp!932892)))

(declare-fun b!2905142 () Bool)

(declare-fun tp!932893 () Bool)

(declare-fun tp!932890 () Bool)

(assert (=> b!2905142 (= e!1834064 (and tp!932893 tp!932890))))

(assert (= (and b!2904867 (is-ElementMatch!8886 (regOne!18284 (reg!9215 r!19097)))) b!2905141))

(assert (= (and b!2904867 (is-Concat!14207 (regOne!18284 (reg!9215 r!19097)))) b!2905142))

(assert (= (and b!2904867 (is-Star!8886 (regOne!18284 (reg!9215 r!19097)))) b!2905143))

(assert (= (and b!2904867 (is-Union!8886 (regOne!18284 (reg!9215 r!19097)))) b!2905144))

(declare-fun b!2905155 () Bool)

(declare-fun e!1834070 () Bool)

(assert (=> b!2905155 (= e!1834070 tp_is_empty!15359)))

(declare-fun b!2905158 () Bool)

(declare-fun tp!932896 () Bool)

(declare-fun tp!932894 () Bool)

(assert (=> b!2905158 (= e!1834070 (and tp!932896 tp!932894))))

(assert (=> b!2904867 (= tp!932783 e!1834070)))

(declare-fun b!2905157 () Bool)

(declare-fun tp!932897 () Bool)

(assert (=> b!2905157 (= e!1834070 tp!932897)))

(declare-fun b!2905156 () Bool)

(declare-fun tp!932898 () Bool)

(declare-fun tp!932895 () Bool)

(assert (=> b!2905156 (= e!1834070 (and tp!932898 tp!932895))))

(assert (= (and b!2904867 (is-ElementMatch!8886 (regTwo!18284 (reg!9215 r!19097)))) b!2905155))

(assert (= (and b!2904867 (is-Concat!14207 (regTwo!18284 (reg!9215 r!19097)))) b!2905156))

(assert (= (and b!2904867 (is-Star!8886 (regTwo!18284 (reg!9215 r!19097)))) b!2905157))

(assert (= (and b!2904867 (is-Union!8886 (regTwo!18284 (reg!9215 r!19097)))) b!2905158))

(declare-fun b!2905159 () Bool)

(declare-fun e!1834071 () Bool)

(assert (=> b!2905159 (= e!1834071 tp_is_empty!15359)))

(declare-fun b!2905162 () Bool)

(declare-fun tp!932901 () Bool)

(declare-fun tp!932899 () Bool)

(assert (=> b!2905162 (= e!1834071 (and tp!932901 tp!932899))))

(assert (=> b!2904860 (= tp!932773 e!1834071)))

(declare-fun b!2905161 () Bool)

(declare-fun tp!932902 () Bool)

(assert (=> b!2905161 (= e!1834071 tp!932902)))

(declare-fun b!2905160 () Bool)

(declare-fun tp!932903 () Bool)

(declare-fun tp!932900 () Bool)

(assert (=> b!2905160 (= e!1834071 (and tp!932903 tp!932900))))

(assert (= (and b!2904860 (is-ElementMatch!8886 (regOne!18285 (regTwo!18284 r!19097)))) b!2905159))

(assert (= (and b!2904860 (is-Concat!14207 (regOne!18285 (regTwo!18284 r!19097)))) b!2905160))

(assert (= (and b!2904860 (is-Star!8886 (regOne!18285 (regTwo!18284 r!19097)))) b!2905161))

(assert (= (and b!2904860 (is-Union!8886 (regOne!18285 (regTwo!18284 r!19097)))) b!2905162))

(declare-fun b!2905163 () Bool)

(declare-fun e!1834072 () Bool)

(assert (=> b!2905163 (= e!1834072 tp_is_empty!15359)))

(declare-fun b!2905166 () Bool)

(declare-fun tp!932906 () Bool)

(declare-fun tp!932904 () Bool)

(assert (=> b!2905166 (= e!1834072 (and tp!932906 tp!932904))))

(assert (=> b!2904860 (= tp!932771 e!1834072)))

(declare-fun b!2905165 () Bool)

(declare-fun tp!932907 () Bool)

(assert (=> b!2905165 (= e!1834072 tp!932907)))

(declare-fun b!2905164 () Bool)

(declare-fun tp!932908 () Bool)

(declare-fun tp!932905 () Bool)

(assert (=> b!2905164 (= e!1834072 (and tp!932908 tp!932905))))

(assert (= (and b!2904860 (is-ElementMatch!8886 (regTwo!18285 (regTwo!18284 r!19097)))) b!2905163))

(assert (= (and b!2904860 (is-Concat!14207 (regTwo!18285 (regTwo!18284 r!19097)))) b!2905164))

(assert (= (and b!2904860 (is-Star!8886 (regTwo!18285 (regTwo!18284 r!19097)))) b!2905165))

(assert (= (and b!2904860 (is-Union!8886 (regTwo!18285 (regTwo!18284 r!19097)))) b!2905166))

(declare-fun b!2905167 () Bool)

(declare-fun e!1834073 () Bool)

(declare-fun tp!932909 () Bool)

(assert (=> b!2905167 (= e!1834073 (and tp_is_empty!15359 tp!932909))))

(assert (=> b!2904847 (= tp!932759 e!1834073)))

(assert (= (and b!2904847 (is-Cons!34563 (t!233730 (t!233730 s!13418)))) b!2905167))

(declare-fun b!2905168 () Bool)

(declare-fun e!1834074 () Bool)

(assert (=> b!2905168 (= e!1834074 tp_is_empty!15359)))

(declare-fun b!2905171 () Bool)

(declare-fun tp!932912 () Bool)

(declare-fun tp!932910 () Bool)

(assert (=> b!2905171 (= e!1834074 (and tp!932912 tp!932910))))

(assert (=> b!2904859 (= tp!932774 e!1834074)))

(declare-fun b!2905170 () Bool)

(declare-fun tp!932913 () Bool)

(assert (=> b!2905170 (= e!1834074 tp!932913)))

(declare-fun b!2905169 () Bool)

(declare-fun tp!932914 () Bool)

(declare-fun tp!932911 () Bool)

(assert (=> b!2905169 (= e!1834074 (and tp!932914 tp!932911))))

(assert (= (and b!2904859 (is-ElementMatch!8886 (reg!9215 (regTwo!18284 r!19097)))) b!2905168))

(assert (= (and b!2904859 (is-Concat!14207 (reg!9215 (regTwo!18284 r!19097)))) b!2905169))

(assert (= (and b!2904859 (is-Star!8886 (reg!9215 (regTwo!18284 r!19097)))) b!2905170))

(assert (= (and b!2904859 (is-Union!8886 (reg!9215 (regTwo!18284 r!19097)))) b!2905171))

(push 1)

(assert (not b!2905143))

(assert (not b!2905049))

(assert (not b!2905162))

(assert (not b!2904890))

(assert (not b!2904893))

(assert (not b!2905089))

(assert (not b!2905156))

(assert (not b!2905142))

(assert (not b!2905051))

(assert (not b!2905052))

(assert (not b!2904925))

(assert (not b!2905160))

(assert (not bm!189460))

(assert (not b!2904924))

(assert (not bm!189462))

(assert (not b!2905058))

(assert (not b!2905068))

(assert (not d!835921))

(assert (not b!2905113))

(assert (not b!2905073))

(assert (not b!2905033))

(assert (not d!835913))

(assert (not b!2905087))

(assert (not bm!189490))

(assert (not b!2904885))

(assert (not b!2905136))

(assert (not b!2905076))

(assert (not b!2905083))

(assert (not b!2905095))

(assert (not b!2905077))

(assert (not b!2905103))

(assert (not b!2905161))

(assert (not d!835891))

(assert (not bm!189498))

(assert (not bm!189499))

(assert (not b!2905057))

(assert (not b!2904891))

(assert (not bm!189477))

(assert (not d!835883))

(assert (not b!2905053))

(assert (not b!2905112))

(assert tp_is_empty!15359)

(assert (not b!2905092))

(assert (not bm!189504))

(assert (not b!2905134))

(assert (not b!2904897))

(assert (not b!2905059))

(assert (not b!2905171))

(assert (not b!2904923))

(assert (not b!2905097))

(assert (not b!2905170))

(assert (not b!2905164))

(assert (not d!835879))

(assert (not b!2905144))

(assert (not b!2905158))

(assert (not b!2905169))

(assert (not bm!189461))

(assert (not b!2905091))

(assert (not b!2905131))

(assert (not b!2904942))

(assert (not b!2905119))

(assert (not bm!189479))

(assert (not b!2905075))

(assert (not b!2905111))

(assert (not b!2905081))

(assert (not b!2905072))

(assert (not b!2905157))

(assert (not b!2904950))

(assert (not b!2905085))

(assert (not b!2905120))

(assert (not d!835953))

(assert (not b!2904889))

(assert (not b!2905116))

(assert (not b!2905067))

(assert (not b!2904892))

(assert (not b!2905132))

(assert (not b!2905065))

(assert (not b!2905140))

(assert (not bm!189485))

(assert (not b!2905138))

(assert (not bm!189476))

(assert (not d!835923))

(assert (not b!2905069))

(assert (not b!2905165))

(assert (not b!2905125))

(assert (not b!2905166))

(assert (not bm!189486))

(assert (not b!2905047))

(assert (not b!2905101))

(assert (not b!2905018))

(assert (not bm!189496))

(assert (not bm!189497))

(assert (not b!2904977))

(assert (not b!2904994))

(assert (not b!2904887))

(assert (not b!2905099))

(assert (not b!2904877))

(assert (not b!2905100))

(assert (not b!2905080))

(assert (not d!835915))

(assert (not b!2905063))

(assert (not d!835935))

(assert (not b!2905064))

(assert (not b!2905167))

(assert (not bm!189491))

(assert (not d!835943))

(assert (not b!2905012))

(assert (not bm!189459))

(assert (not d!835911))

(assert (not b!2905105))

(assert (not b!2904956))

(assert (not b!2905130))

(assert (not b!2905104))

(assert (not b!2905135))

(assert (not b!2904949))

(assert (not b!2905096))

(assert (not b!2905139))

(assert (not b!2905084))

(assert (not bm!189478))

(assert (not b!2905071))

(assert (not b!2905123))

(assert (not b!2905117))

(assert (not b!2905126))

(assert (not b!2905115))

(assert (not bm!189503))

(assert (not b!2905093))

(assert (not b!2905088))

(assert (not b!2905121))

(assert (not b!2905079))

(assert (not b!2905124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

