; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291852 () Bool)

(assert start!291852)

(declare-fun b!3055472 () Bool)

(declare-fun res!1254848 () Bool)

(declare-fun e!1913813 () Bool)

(assert (=> b!3055472 (=> res!1254848 e!1913813)))

(declare-datatypes ((C!19128 0))(
  ( (C!19129 (val!11600 Int)) )
))
(declare-datatypes ((List!35336 0))(
  ( (Nil!35212) (Cons!35212 (h!40632 C!19128) (t!234401 List!35336)) )
))
(declare-fun s!11993 () List!35336)

(declare-fun isEmpty!19527 (List!35336) Bool)

(assert (=> b!3055472 (= res!1254848 (isEmpty!19527 s!11993))))

(declare-fun b!3055473 () Bool)

(declare-fun e!1913808 () Bool)

(declare-datatypes ((Regex!9471 0))(
  ( (ElementMatch!9471 (c!506711 C!19128)) (Concat!14792 (regOne!19454 Regex!9471) (regTwo!19454 Regex!9471)) (EmptyExpr!9471) (Star!9471 (reg!9800 Regex!9471)) (EmptyLang!9471) (Union!9471 (regOne!19455 Regex!9471) (regTwo!19455 Regex!9471)) )
))
(declare-fun r!17423 () Regex!9471)

(declare-fun matchR!4353 (Regex!9471 List!35336) Bool)

(declare-fun simplify!426 (Regex!9471) Regex!9471)

(assert (=> b!3055473 (= e!1913808 (not (matchR!4353 (simplify!426 r!17423) s!11993)))))

(declare-fun b!3055474 () Bool)

(declare-fun e!1913812 () Bool)

(declare-fun tp!966433 () Bool)

(declare-fun tp!966428 () Bool)

(assert (=> b!3055474 (= e!1913812 (and tp!966433 tp!966428))))

(declare-fun b!3055476 () Bool)

(declare-fun e!1913810 () Bool)

(assert (=> b!3055476 (= e!1913810 (not e!1913813))))

(declare-fun res!1254852 () Bool)

(assert (=> b!3055476 (=> res!1254852 e!1913813)))

(declare-fun lt!1049012 () Bool)

(get-info :version)

(assert (=> b!3055476 (= res!1254852 (or lt!1049012 (not ((_ is Concat!14792) r!17423))))))

(declare-fun matchRSpec!1608 (Regex!9471 List!35336) Bool)

(assert (=> b!3055476 (= lt!1049012 (matchRSpec!1608 r!17423 s!11993))))

(assert (=> b!3055476 (= lt!1049012 (matchR!4353 r!17423 s!11993))))

(declare-datatypes ((Unit!49381 0))(
  ( (Unit!49382) )
))
(declare-fun lt!1049008 () Unit!49381)

(declare-fun mainMatchTheorem!1608 (Regex!9471 List!35336) Unit!49381)

(assert (=> b!3055476 (= lt!1049008 (mainMatchTheorem!1608 r!17423 s!11993))))

(declare-fun b!3055477 () Bool)

(declare-fun e!1913811 () Bool)

(assert (=> b!3055477 (= e!1913811 e!1913808)))

(declare-fun res!1254850 () Bool)

(assert (=> b!3055477 (=> res!1254850 e!1913808)))

(declare-fun lt!1049011 () Bool)

(assert (=> b!3055477 (= res!1254850 lt!1049011)))

(declare-fun lt!1049010 () Regex!9471)

(assert (=> b!3055477 (= lt!1049011 (matchR!4353 lt!1049010 s!11993))))

(assert (=> b!3055477 (= lt!1049011 (matchR!4353 (regOne!19454 r!17423) s!11993))))

(declare-fun lt!1049007 () Unit!49381)

(declare-fun lemmaSimplifySound!264 (Regex!9471 List!35336) Unit!49381)

(assert (=> b!3055477 (= lt!1049007 (lemmaSimplifySound!264 (regOne!19454 r!17423) s!11993))))

(declare-fun b!3055478 () Bool)

(declare-fun tp!966432 () Bool)

(declare-fun tp!966430 () Bool)

(assert (=> b!3055478 (= e!1913812 (and tp!966432 tp!966430))))

(declare-fun b!3055479 () Bool)

(declare-fun tp!966431 () Bool)

(assert (=> b!3055479 (= e!1913812 tp!966431)))

(declare-fun b!3055480 () Bool)

(assert (=> b!3055480 (= e!1913813 e!1913811)))

(declare-fun res!1254849 () Bool)

(assert (=> b!3055480 (=> res!1254849 e!1913811)))

(declare-fun isEmptyLang!522 (Regex!9471) Bool)

(assert (=> b!3055480 (= res!1254849 (not (isEmptyLang!522 lt!1049010)))))

(declare-fun lt!1049009 () Regex!9471)

(assert (=> b!3055480 (= lt!1049009 (simplify!426 (regTwo!19454 r!17423)))))

(assert (=> b!3055480 (= lt!1049010 (simplify!426 (regOne!19454 r!17423)))))

(declare-fun b!3055481 () Bool)

(declare-fun tp_is_empty!16505 () Bool)

(assert (=> b!3055481 (= e!1913812 tp_is_empty!16505)))

(declare-fun res!1254851 () Bool)

(assert (=> start!291852 (=> (not res!1254851) (not e!1913810))))

(declare-fun validRegex!4204 (Regex!9471) Bool)

(assert (=> start!291852 (= res!1254851 (validRegex!4204 r!17423))))

(assert (=> start!291852 e!1913810))

(assert (=> start!291852 e!1913812))

(declare-fun e!1913809 () Bool)

(assert (=> start!291852 e!1913809))

(declare-fun b!3055475 () Bool)

(declare-fun tp!966429 () Bool)

(assert (=> b!3055475 (= e!1913809 (and tp_is_empty!16505 tp!966429))))

(assert (= (and start!291852 res!1254851) b!3055476))

(assert (= (and b!3055476 (not res!1254852)) b!3055472))

(assert (= (and b!3055472 (not res!1254848)) b!3055480))

(assert (= (and b!3055480 (not res!1254849)) b!3055477))

(assert (= (and b!3055477 (not res!1254850)) b!3055473))

(assert (= (and start!291852 ((_ is ElementMatch!9471) r!17423)) b!3055481))

(assert (= (and start!291852 ((_ is Concat!14792) r!17423)) b!3055474))

(assert (= (and start!291852 ((_ is Star!9471) r!17423)) b!3055479))

(assert (= (and start!291852 ((_ is Union!9471) r!17423)) b!3055478))

(assert (= (and start!291852 ((_ is Cons!35212) s!11993)) b!3055475))

(declare-fun m!3379639 () Bool)

(assert (=> b!3055477 m!3379639))

(declare-fun m!3379641 () Bool)

(assert (=> b!3055477 m!3379641))

(declare-fun m!3379643 () Bool)

(assert (=> b!3055477 m!3379643))

(declare-fun m!3379645 () Bool)

(assert (=> start!291852 m!3379645))

(declare-fun m!3379647 () Bool)

(assert (=> b!3055476 m!3379647))

(declare-fun m!3379649 () Bool)

(assert (=> b!3055476 m!3379649))

(declare-fun m!3379651 () Bool)

(assert (=> b!3055476 m!3379651))

(declare-fun m!3379653 () Bool)

(assert (=> b!3055472 m!3379653))

(declare-fun m!3379655 () Bool)

(assert (=> b!3055473 m!3379655))

(assert (=> b!3055473 m!3379655))

(declare-fun m!3379657 () Bool)

(assert (=> b!3055473 m!3379657))

(declare-fun m!3379659 () Bool)

(assert (=> b!3055480 m!3379659))

(declare-fun m!3379661 () Bool)

(assert (=> b!3055480 m!3379661))

(declare-fun m!3379663 () Bool)

(assert (=> b!3055480 m!3379663))

(check-sat (not b!3055480) (not b!3055473) (not b!3055478) (not b!3055472) (not b!3055477) (not b!3055474) (not start!291852) tp_is_empty!16505 (not b!3055475) (not b!3055476) (not b!3055479))
(check-sat)
(get-model)

(declare-fun b!3055552 () Bool)

(declare-fun e!1913855 () Bool)

(declare-fun lt!1049018 () Bool)

(assert (=> b!3055552 (= e!1913855 (not lt!1049018))))

(declare-fun b!3055553 () Bool)

(declare-fun e!1913851 () Bool)

(declare-fun head!6772 (List!35336) C!19128)

(assert (=> b!3055553 (= e!1913851 (not (= (head!6772 s!11993) (c!506711 (simplify!426 r!17423)))))))

(declare-fun b!3055554 () Bool)

(declare-fun res!1254894 () Bool)

(declare-fun e!1913849 () Bool)

(assert (=> b!3055554 (=> (not res!1254894) (not e!1913849))))

(declare-fun call!210770 () Bool)

(assert (=> b!3055554 (= res!1254894 (not call!210770))))

(declare-fun b!3055555 () Bool)

(declare-fun res!1254895 () Bool)

(assert (=> b!3055555 (=> res!1254895 e!1913851)))

(declare-fun tail!4998 (List!35336) List!35336)

(assert (=> b!3055555 (= res!1254895 (not (isEmpty!19527 (tail!4998 s!11993))))))

(declare-fun d!854793 () Bool)

(declare-fun e!1913850 () Bool)

(assert (=> d!854793 e!1913850))

(declare-fun c!506728 () Bool)

(assert (=> d!854793 (= c!506728 ((_ is EmptyExpr!9471) (simplify!426 r!17423)))))

(declare-fun e!1913852 () Bool)

(assert (=> d!854793 (= lt!1049018 e!1913852)))

(declare-fun c!506727 () Bool)

(assert (=> d!854793 (= c!506727 (isEmpty!19527 s!11993))))

(assert (=> d!854793 (validRegex!4204 (simplify!426 r!17423))))

(assert (=> d!854793 (= (matchR!4353 (simplify!426 r!17423) s!11993) lt!1049018)))

(declare-fun b!3055556 () Bool)

(assert (=> b!3055556 (= e!1913850 (= lt!1049018 call!210770))))

(declare-fun b!3055557 () Bool)

(assert (=> b!3055557 (= e!1913849 (= (head!6772 s!11993) (c!506711 (simplify!426 r!17423))))))

(declare-fun b!3055558 () Bool)

(declare-fun nullable!3117 (Regex!9471) Bool)

(assert (=> b!3055558 (= e!1913852 (nullable!3117 (simplify!426 r!17423)))))

(declare-fun b!3055559 () Bool)

(declare-fun derivativeStep!2713 (Regex!9471 C!19128) Regex!9471)

(assert (=> b!3055559 (= e!1913852 (matchR!4353 (derivativeStep!2713 (simplify!426 r!17423) (head!6772 s!11993)) (tail!4998 s!11993)))))

(declare-fun b!3055560 () Bool)

(assert (=> b!3055560 (= e!1913850 e!1913855)))

(declare-fun c!506729 () Bool)

(assert (=> b!3055560 (= c!506729 ((_ is EmptyLang!9471) (simplify!426 r!17423)))))

(declare-fun b!3055561 () Bool)

(declare-fun res!1254899 () Bool)

(declare-fun e!1913853 () Bool)

(assert (=> b!3055561 (=> res!1254899 e!1913853)))

(assert (=> b!3055561 (= res!1254899 (not ((_ is ElementMatch!9471) (simplify!426 r!17423))))))

(assert (=> b!3055561 (= e!1913855 e!1913853)))

(declare-fun b!3055562 () Bool)

(declare-fun e!1913854 () Bool)

(assert (=> b!3055562 (= e!1913854 e!1913851)))

(declare-fun res!1254898 () Bool)

(assert (=> b!3055562 (=> res!1254898 e!1913851)))

(assert (=> b!3055562 (= res!1254898 call!210770)))

(declare-fun b!3055563 () Bool)

(declare-fun res!1254897 () Bool)

(assert (=> b!3055563 (=> (not res!1254897) (not e!1913849))))

(assert (=> b!3055563 (= res!1254897 (isEmpty!19527 (tail!4998 s!11993)))))

(declare-fun b!3055564 () Bool)

(declare-fun res!1254900 () Bool)

(assert (=> b!3055564 (=> res!1254900 e!1913853)))

(assert (=> b!3055564 (= res!1254900 e!1913849)))

(declare-fun res!1254893 () Bool)

(assert (=> b!3055564 (=> (not res!1254893) (not e!1913849))))

(assert (=> b!3055564 (= res!1254893 lt!1049018)))

(declare-fun bm!210765 () Bool)

(assert (=> bm!210765 (= call!210770 (isEmpty!19527 s!11993))))

(declare-fun b!3055565 () Bool)

(assert (=> b!3055565 (= e!1913853 e!1913854)))

(declare-fun res!1254896 () Bool)

(assert (=> b!3055565 (=> (not res!1254896) (not e!1913854))))

(assert (=> b!3055565 (= res!1254896 (not lt!1049018))))

(assert (= (and d!854793 c!506727) b!3055558))

(assert (= (and d!854793 (not c!506727)) b!3055559))

(assert (= (and d!854793 c!506728) b!3055556))

(assert (= (and d!854793 (not c!506728)) b!3055560))

(assert (= (and b!3055560 c!506729) b!3055552))

(assert (= (and b!3055560 (not c!506729)) b!3055561))

(assert (= (and b!3055561 (not res!1254899)) b!3055564))

(assert (= (and b!3055564 res!1254893) b!3055554))

(assert (= (and b!3055554 res!1254894) b!3055563))

(assert (= (and b!3055563 res!1254897) b!3055557))

(assert (= (and b!3055564 (not res!1254900)) b!3055565))

(assert (= (and b!3055565 res!1254896) b!3055562))

(assert (= (and b!3055562 (not res!1254898)) b!3055555))

(assert (= (and b!3055555 (not res!1254895)) b!3055553))

(assert (= (or b!3055556 b!3055554 b!3055562) bm!210765))

(assert (=> bm!210765 m!3379653))

(declare-fun m!3379679 () Bool)

(assert (=> b!3055557 m!3379679))

(assert (=> b!3055553 m!3379679))

(assert (=> b!3055559 m!3379679))

(assert (=> b!3055559 m!3379655))

(assert (=> b!3055559 m!3379679))

(declare-fun m!3379681 () Bool)

(assert (=> b!3055559 m!3379681))

(declare-fun m!3379683 () Bool)

(assert (=> b!3055559 m!3379683))

(assert (=> b!3055559 m!3379681))

(assert (=> b!3055559 m!3379683))

(declare-fun m!3379685 () Bool)

(assert (=> b!3055559 m!3379685))

(assert (=> b!3055555 m!3379683))

(assert (=> b!3055555 m!3379683))

(declare-fun m!3379687 () Bool)

(assert (=> b!3055555 m!3379687))

(assert (=> d!854793 m!3379653))

(assert (=> d!854793 m!3379655))

(declare-fun m!3379689 () Bool)

(assert (=> d!854793 m!3379689))

(assert (=> b!3055558 m!3379655))

(declare-fun m!3379691 () Bool)

(assert (=> b!3055558 m!3379691))

(assert (=> b!3055563 m!3379683))

(assert (=> b!3055563 m!3379683))

(assert (=> b!3055563 m!3379687))

(assert (=> b!3055473 d!854793))

(declare-fun b!3055713 () Bool)

(declare-fun e!1913952 () Bool)

(declare-fun call!210807 () Bool)

(assert (=> b!3055713 (= e!1913952 call!210807)))

(declare-fun b!3055714 () Bool)

(declare-fun e!1913943 () Regex!9471)

(declare-fun lt!1049052 () Regex!9471)

(assert (=> b!3055714 (= e!1913943 lt!1049052)))

(declare-fun b!3055715 () Bool)

(declare-fun c!506796 () Bool)

(assert (=> b!3055715 (= c!506796 ((_ is Union!9471) r!17423))))

(declare-fun e!1913941 () Regex!9471)

(declare-fun e!1913953 () Regex!9471)

(assert (=> b!3055715 (= e!1913941 e!1913953)))

(declare-fun bm!210801 () Bool)

(declare-fun call!210812 () Regex!9471)

(assert (=> bm!210801 (= call!210812 (simplify!426 (ite c!506796 (regTwo!19455 r!17423) (regOne!19454 r!17423))))))

(declare-fun b!3055716 () Bool)

(declare-fun e!1913940 () Regex!9471)

(declare-fun e!1913942 () Regex!9471)

(assert (=> b!3055716 (= e!1913940 e!1913942)))

(declare-fun c!506799 () Bool)

(assert (=> b!3055716 (= c!506799 ((_ is ElementMatch!9471) r!17423))))

(declare-fun bm!210802 () Bool)

(declare-fun call!210809 () Regex!9471)

(declare-fun call!210808 () Regex!9471)

(assert (=> bm!210802 (= call!210809 call!210808)))

(declare-fun b!3055717 () Bool)

(declare-fun e!1913949 () Regex!9471)

(declare-fun lt!1049054 () Regex!9471)

(assert (=> b!3055717 (= e!1913949 lt!1049054)))

(declare-fun b!3055718 () Bool)

(declare-fun e!1913951 () Regex!9471)

(assert (=> b!3055718 (= e!1913953 e!1913951)))

(assert (=> b!3055718 (= lt!1049054 call!210809)))

(declare-fun lt!1049050 () Regex!9471)

(assert (=> b!3055718 (= lt!1049050 call!210812)))

(declare-fun c!506800 () Bool)

(assert (=> b!3055718 (= c!506800 call!210807)))

(declare-fun b!3055719 () Bool)

(declare-fun e!1913947 () Regex!9471)

(assert (=> b!3055719 (= e!1913947 EmptyLang!9471)))

(declare-fun d!854797 () Bool)

(declare-fun e!1913950 () Bool)

(assert (=> d!854797 e!1913950))

(declare-fun res!1254922 () Bool)

(assert (=> d!854797 (=> (not res!1254922) (not e!1913950))))

(declare-fun lt!1049049 () Regex!9471)

(assert (=> d!854797 (= res!1254922 (validRegex!4204 lt!1049049))))

(assert (=> d!854797 (= lt!1049049 e!1913940)))

(declare-fun c!506803 () Bool)

(assert (=> d!854797 (= c!506803 ((_ is EmptyLang!9471) r!17423))))

(assert (=> d!854797 (validRegex!4204 r!17423)))

(assert (=> d!854797 (= (simplify!426 r!17423) lt!1049049)))

(declare-fun b!3055720 () Bool)

(declare-fun e!1913945 () Regex!9471)

(declare-fun lt!1049053 () Regex!9471)

(assert (=> b!3055720 (= e!1913945 (Star!9471 lt!1049053))))

(declare-fun b!3055721 () Bool)

(assert (=> b!3055721 (= e!1913940 EmptyLang!9471)))

(declare-fun b!3055722 () Bool)

(declare-fun e!1913946 () Regex!9471)

(assert (=> b!3055722 (= e!1913946 EmptyExpr!9471)))

(declare-fun b!3055723 () Bool)

(assert (=> b!3055723 (= e!1913951 lt!1049050)))

(declare-fun b!3055724 () Bool)

(declare-fun c!506795 () Bool)

(assert (=> b!3055724 (= c!506795 ((_ is EmptyExpr!9471) r!17423))))

(assert (=> b!3055724 (= e!1913942 e!1913946)))

(declare-fun b!3055725 () Bool)

(assert (=> b!3055725 (= e!1913945 EmptyExpr!9471)))

(declare-fun b!3055726 () Bool)

(declare-fun c!506793 () Bool)

(declare-fun call!210811 () Bool)

(assert (=> b!3055726 (= c!506793 call!210811)))

(assert (=> b!3055726 (= e!1913947 e!1913943)))

(declare-fun b!3055727 () Bool)

(declare-fun e!1913948 () Regex!9471)

(declare-fun lt!1049051 () Regex!9471)

(assert (=> b!3055727 (= e!1913948 lt!1049051)))

(declare-fun call!210810 () Bool)

(declare-fun bm!210803 () Bool)

(assert (=> bm!210803 (= call!210810 (isEmptyLang!522 (ite c!506796 lt!1049050 lt!1049051)))))

(declare-fun b!3055728 () Bool)

(assert (=> b!3055728 (= e!1913953 e!1913947)))

(assert (=> b!3055728 (= lt!1049051 call!210812)))

(assert (=> b!3055728 (= lt!1049052 call!210809)))

(declare-fun res!1254923 () Bool)

(assert (=> b!3055728 (= res!1254923 call!210810)))

(assert (=> b!3055728 (=> res!1254923 e!1913952)))

(declare-fun c!506798 () Bool)

(assert (=> b!3055728 (= c!506798 e!1913952)))

(declare-fun b!3055729 () Bool)

(assert (=> b!3055729 (= e!1913950 (= (nullable!3117 lt!1049049) (nullable!3117 r!17423)))))

(declare-fun b!3055730 () Bool)

(assert (=> b!3055730 (= e!1913942 r!17423)))

(declare-fun bm!210804 () Bool)

(declare-fun call!210806 () Bool)

(assert (=> bm!210804 (= call!210807 call!210806)))

(declare-fun b!3055731 () Bool)

(assert (=> b!3055731 (= e!1913948 (Concat!14792 lt!1049051 lt!1049052))))

(declare-fun b!3055732 () Bool)

(assert (=> b!3055732 (= e!1913943 e!1913948)))

(declare-fun c!506797 () Bool)

(declare-fun isEmptyExpr!528 (Regex!9471) Bool)

(assert (=> b!3055732 (= c!506797 (isEmptyExpr!528 lt!1049052))))

(declare-fun bm!210805 () Bool)

(declare-fun c!506801 () Bool)

(assert (=> bm!210805 (= call!210811 (isEmptyExpr!528 (ite c!506801 lt!1049053 lt!1049051)))))

(declare-fun bm!210806 () Bool)

(assert (=> bm!210806 (= call!210806 (isEmptyLang!522 (ite c!506801 lt!1049053 (ite c!506796 lt!1049054 lt!1049052))))))

(declare-fun b!3055733 () Bool)

(declare-fun c!506802 () Bool)

(declare-fun e!1913944 () Bool)

(assert (=> b!3055733 (= c!506802 e!1913944)))

(declare-fun res!1254924 () Bool)

(assert (=> b!3055733 (=> res!1254924 e!1913944)))

(assert (=> b!3055733 (= res!1254924 call!210806)))

(assert (=> b!3055733 (= lt!1049053 call!210808)))

(assert (=> b!3055733 (= e!1913941 e!1913945)))

(declare-fun b!3055734 () Bool)

(assert (=> b!3055734 (= e!1913944 call!210811)))

(declare-fun b!3055735 () Bool)

(declare-fun c!506794 () Bool)

(assert (=> b!3055735 (= c!506794 call!210810)))

(assert (=> b!3055735 (= e!1913951 e!1913949)))

(declare-fun b!3055736 () Bool)

(assert (=> b!3055736 (= e!1913946 e!1913941)))

(assert (=> b!3055736 (= c!506801 ((_ is Star!9471) r!17423))))

(declare-fun bm!210807 () Bool)

(assert (=> bm!210807 (= call!210808 (simplify!426 (ite c!506801 (reg!9800 r!17423) (ite c!506796 (regOne!19455 r!17423) (regTwo!19454 r!17423)))))))

(declare-fun b!3055737 () Bool)

(assert (=> b!3055737 (= e!1913949 (Union!9471 lt!1049054 lt!1049050))))

(assert (= (and d!854797 c!506803) b!3055721))

(assert (= (and d!854797 (not c!506803)) b!3055716))

(assert (= (and b!3055716 c!506799) b!3055730))

(assert (= (and b!3055716 (not c!506799)) b!3055724))

(assert (= (and b!3055724 c!506795) b!3055722))

(assert (= (and b!3055724 (not c!506795)) b!3055736))

(assert (= (and b!3055736 c!506801) b!3055733))

(assert (= (and b!3055736 (not c!506801)) b!3055715))

(assert (= (and b!3055733 (not res!1254924)) b!3055734))

(assert (= (and b!3055733 c!506802) b!3055725))

(assert (= (and b!3055733 (not c!506802)) b!3055720))

(assert (= (and b!3055715 c!506796) b!3055718))

(assert (= (and b!3055715 (not c!506796)) b!3055728))

(assert (= (and b!3055718 c!506800) b!3055723))

(assert (= (and b!3055718 (not c!506800)) b!3055735))

(assert (= (and b!3055735 c!506794) b!3055717))

(assert (= (and b!3055735 (not c!506794)) b!3055737))

(assert (= (and b!3055728 (not res!1254923)) b!3055713))

(assert (= (and b!3055728 c!506798) b!3055719))

(assert (= (and b!3055728 (not c!506798)) b!3055726))

(assert (= (and b!3055726 c!506793) b!3055714))

(assert (= (and b!3055726 (not c!506793)) b!3055732))

(assert (= (and b!3055732 c!506797) b!3055727))

(assert (= (and b!3055732 (not c!506797)) b!3055731))

(assert (= (or b!3055718 b!3055728) bm!210802))

(assert (= (or b!3055718 b!3055728) bm!210801))

(assert (= (or b!3055718 b!3055713) bm!210804))

(assert (= (or b!3055735 b!3055728) bm!210803))

(assert (= (or b!3055734 b!3055726) bm!210805))

(assert (= (or b!3055733 bm!210802) bm!210807))

(assert (= (or b!3055733 bm!210804) bm!210806))

(assert (= (and d!854797 res!1254922) b!3055729))

(declare-fun m!3379711 () Bool)

(assert (=> bm!210801 m!3379711))

(declare-fun m!3379713 () Bool)

(assert (=> bm!210807 m!3379713))

(declare-fun m!3379715 () Bool)

(assert (=> b!3055732 m!3379715))

(declare-fun m!3379717 () Bool)

(assert (=> d!854797 m!3379717))

(assert (=> d!854797 m!3379645))

(declare-fun m!3379719 () Bool)

(assert (=> bm!210806 m!3379719))

(declare-fun m!3379721 () Bool)

(assert (=> bm!210803 m!3379721))

(declare-fun m!3379723 () Bool)

(assert (=> b!3055729 m!3379723))

(declare-fun m!3379725 () Bool)

(assert (=> b!3055729 m!3379725))

(declare-fun m!3379727 () Bool)

(assert (=> bm!210805 m!3379727))

(assert (=> b!3055473 d!854797))

(declare-fun d!854801 () Bool)

(assert (=> d!854801 (= (isEmptyLang!522 lt!1049010) ((_ is EmptyLang!9471) lt!1049010))))

(assert (=> b!3055480 d!854801))

(declare-fun b!3055738 () Bool)

(declare-fun e!1913966 () Bool)

(declare-fun call!210814 () Bool)

(assert (=> b!3055738 (= e!1913966 call!210814)))

(declare-fun b!3055739 () Bool)

(declare-fun e!1913957 () Regex!9471)

(declare-fun lt!1049058 () Regex!9471)

(assert (=> b!3055739 (= e!1913957 lt!1049058)))

(declare-fun b!3055740 () Bool)

(declare-fun c!506807 () Bool)

(assert (=> b!3055740 (= c!506807 ((_ is Union!9471) (regTwo!19454 r!17423)))))

(declare-fun e!1913955 () Regex!9471)

(declare-fun e!1913967 () Regex!9471)

(assert (=> b!3055740 (= e!1913955 e!1913967)))

(declare-fun bm!210808 () Bool)

(declare-fun call!210819 () Regex!9471)

(assert (=> bm!210808 (= call!210819 (simplify!426 (ite c!506807 (regTwo!19455 (regTwo!19454 r!17423)) (regOne!19454 (regTwo!19454 r!17423)))))))

(declare-fun b!3055741 () Bool)

(declare-fun e!1913954 () Regex!9471)

(declare-fun e!1913956 () Regex!9471)

(assert (=> b!3055741 (= e!1913954 e!1913956)))

(declare-fun c!506810 () Bool)

(assert (=> b!3055741 (= c!506810 ((_ is ElementMatch!9471) (regTwo!19454 r!17423)))))

(declare-fun bm!210809 () Bool)

(declare-fun call!210816 () Regex!9471)

(declare-fun call!210815 () Regex!9471)

(assert (=> bm!210809 (= call!210816 call!210815)))

(declare-fun b!3055742 () Bool)

(declare-fun e!1913963 () Regex!9471)

(declare-fun lt!1049060 () Regex!9471)

(assert (=> b!3055742 (= e!1913963 lt!1049060)))

(declare-fun b!3055743 () Bool)

(declare-fun e!1913965 () Regex!9471)

(assert (=> b!3055743 (= e!1913967 e!1913965)))

(assert (=> b!3055743 (= lt!1049060 call!210816)))

(declare-fun lt!1049056 () Regex!9471)

(assert (=> b!3055743 (= lt!1049056 call!210819)))

(declare-fun c!506811 () Bool)

(assert (=> b!3055743 (= c!506811 call!210814)))

(declare-fun b!3055744 () Bool)

(declare-fun e!1913961 () Regex!9471)

(assert (=> b!3055744 (= e!1913961 EmptyLang!9471)))

(declare-fun d!854803 () Bool)

(declare-fun e!1913964 () Bool)

(assert (=> d!854803 e!1913964))

(declare-fun res!1254925 () Bool)

(assert (=> d!854803 (=> (not res!1254925) (not e!1913964))))

(declare-fun lt!1049055 () Regex!9471)

(assert (=> d!854803 (= res!1254925 (validRegex!4204 lt!1049055))))

(assert (=> d!854803 (= lt!1049055 e!1913954)))

(declare-fun c!506814 () Bool)

(assert (=> d!854803 (= c!506814 ((_ is EmptyLang!9471) (regTwo!19454 r!17423)))))

(assert (=> d!854803 (validRegex!4204 (regTwo!19454 r!17423))))

(assert (=> d!854803 (= (simplify!426 (regTwo!19454 r!17423)) lt!1049055)))

(declare-fun b!3055745 () Bool)

(declare-fun e!1913959 () Regex!9471)

(declare-fun lt!1049059 () Regex!9471)

(assert (=> b!3055745 (= e!1913959 (Star!9471 lt!1049059))))

(declare-fun b!3055746 () Bool)

(assert (=> b!3055746 (= e!1913954 EmptyLang!9471)))

(declare-fun b!3055747 () Bool)

(declare-fun e!1913960 () Regex!9471)

(assert (=> b!3055747 (= e!1913960 EmptyExpr!9471)))

(declare-fun b!3055748 () Bool)

(assert (=> b!3055748 (= e!1913965 lt!1049056)))

(declare-fun b!3055749 () Bool)

(declare-fun c!506806 () Bool)

(assert (=> b!3055749 (= c!506806 ((_ is EmptyExpr!9471) (regTwo!19454 r!17423)))))

(assert (=> b!3055749 (= e!1913956 e!1913960)))

(declare-fun b!3055750 () Bool)

(assert (=> b!3055750 (= e!1913959 EmptyExpr!9471)))

(declare-fun b!3055751 () Bool)

(declare-fun c!506804 () Bool)

(declare-fun call!210818 () Bool)

(assert (=> b!3055751 (= c!506804 call!210818)))

(assert (=> b!3055751 (= e!1913961 e!1913957)))

(declare-fun b!3055752 () Bool)

(declare-fun e!1913962 () Regex!9471)

(declare-fun lt!1049057 () Regex!9471)

(assert (=> b!3055752 (= e!1913962 lt!1049057)))

(declare-fun bm!210810 () Bool)

(declare-fun call!210817 () Bool)

(assert (=> bm!210810 (= call!210817 (isEmptyLang!522 (ite c!506807 lt!1049056 lt!1049057)))))

(declare-fun b!3055753 () Bool)

(assert (=> b!3055753 (= e!1913967 e!1913961)))

(assert (=> b!3055753 (= lt!1049057 call!210819)))

(assert (=> b!3055753 (= lt!1049058 call!210816)))

(declare-fun res!1254926 () Bool)

(assert (=> b!3055753 (= res!1254926 call!210817)))

(assert (=> b!3055753 (=> res!1254926 e!1913966)))

(declare-fun c!506809 () Bool)

(assert (=> b!3055753 (= c!506809 e!1913966)))

(declare-fun b!3055754 () Bool)

(assert (=> b!3055754 (= e!1913964 (= (nullable!3117 lt!1049055) (nullable!3117 (regTwo!19454 r!17423))))))

(declare-fun b!3055755 () Bool)

(assert (=> b!3055755 (= e!1913956 (regTwo!19454 r!17423))))

(declare-fun bm!210811 () Bool)

(declare-fun call!210813 () Bool)

(assert (=> bm!210811 (= call!210814 call!210813)))

(declare-fun b!3055756 () Bool)

(assert (=> b!3055756 (= e!1913962 (Concat!14792 lt!1049057 lt!1049058))))

(declare-fun b!3055757 () Bool)

(assert (=> b!3055757 (= e!1913957 e!1913962)))

(declare-fun c!506808 () Bool)

(assert (=> b!3055757 (= c!506808 (isEmptyExpr!528 lt!1049058))))

(declare-fun c!506812 () Bool)

(declare-fun bm!210812 () Bool)

(assert (=> bm!210812 (= call!210818 (isEmptyExpr!528 (ite c!506812 lt!1049059 lt!1049057)))))

(declare-fun bm!210813 () Bool)

(assert (=> bm!210813 (= call!210813 (isEmptyLang!522 (ite c!506812 lt!1049059 (ite c!506807 lt!1049060 lt!1049058))))))

(declare-fun b!3055758 () Bool)

(declare-fun c!506813 () Bool)

(declare-fun e!1913958 () Bool)

(assert (=> b!3055758 (= c!506813 e!1913958)))

(declare-fun res!1254927 () Bool)

(assert (=> b!3055758 (=> res!1254927 e!1913958)))

(assert (=> b!3055758 (= res!1254927 call!210813)))

(assert (=> b!3055758 (= lt!1049059 call!210815)))

(assert (=> b!3055758 (= e!1913955 e!1913959)))

(declare-fun b!3055759 () Bool)

(assert (=> b!3055759 (= e!1913958 call!210818)))

(declare-fun b!3055760 () Bool)

(declare-fun c!506805 () Bool)

(assert (=> b!3055760 (= c!506805 call!210817)))

(assert (=> b!3055760 (= e!1913965 e!1913963)))

(declare-fun b!3055761 () Bool)

(assert (=> b!3055761 (= e!1913960 e!1913955)))

(assert (=> b!3055761 (= c!506812 ((_ is Star!9471) (regTwo!19454 r!17423)))))

(declare-fun bm!210814 () Bool)

(assert (=> bm!210814 (= call!210815 (simplify!426 (ite c!506812 (reg!9800 (regTwo!19454 r!17423)) (ite c!506807 (regOne!19455 (regTwo!19454 r!17423)) (regTwo!19454 (regTwo!19454 r!17423))))))))

(declare-fun b!3055762 () Bool)

(assert (=> b!3055762 (= e!1913963 (Union!9471 lt!1049060 lt!1049056))))

(assert (= (and d!854803 c!506814) b!3055746))

(assert (= (and d!854803 (not c!506814)) b!3055741))

(assert (= (and b!3055741 c!506810) b!3055755))

(assert (= (and b!3055741 (not c!506810)) b!3055749))

(assert (= (and b!3055749 c!506806) b!3055747))

(assert (= (and b!3055749 (not c!506806)) b!3055761))

(assert (= (and b!3055761 c!506812) b!3055758))

(assert (= (and b!3055761 (not c!506812)) b!3055740))

(assert (= (and b!3055758 (not res!1254927)) b!3055759))

(assert (= (and b!3055758 c!506813) b!3055750))

(assert (= (and b!3055758 (not c!506813)) b!3055745))

(assert (= (and b!3055740 c!506807) b!3055743))

(assert (= (and b!3055740 (not c!506807)) b!3055753))

(assert (= (and b!3055743 c!506811) b!3055748))

(assert (= (and b!3055743 (not c!506811)) b!3055760))

(assert (= (and b!3055760 c!506805) b!3055742))

(assert (= (and b!3055760 (not c!506805)) b!3055762))

(assert (= (and b!3055753 (not res!1254926)) b!3055738))

(assert (= (and b!3055753 c!506809) b!3055744))

(assert (= (and b!3055753 (not c!506809)) b!3055751))

(assert (= (and b!3055751 c!506804) b!3055739))

(assert (= (and b!3055751 (not c!506804)) b!3055757))

(assert (= (and b!3055757 c!506808) b!3055752))

(assert (= (and b!3055757 (not c!506808)) b!3055756))

(assert (= (or b!3055743 b!3055753) bm!210809))

(assert (= (or b!3055743 b!3055753) bm!210808))

(assert (= (or b!3055743 b!3055738) bm!210811))

(assert (= (or b!3055760 b!3055753) bm!210810))

(assert (= (or b!3055759 b!3055751) bm!210812))

(assert (= (or b!3055758 bm!210809) bm!210814))

(assert (= (or b!3055758 bm!210811) bm!210813))

(assert (= (and d!854803 res!1254925) b!3055754))

(declare-fun m!3379729 () Bool)

(assert (=> bm!210808 m!3379729))

(declare-fun m!3379731 () Bool)

(assert (=> bm!210814 m!3379731))

(declare-fun m!3379733 () Bool)

(assert (=> b!3055757 m!3379733))

(declare-fun m!3379735 () Bool)

(assert (=> d!854803 m!3379735))

(declare-fun m!3379737 () Bool)

(assert (=> d!854803 m!3379737))

(declare-fun m!3379739 () Bool)

(assert (=> bm!210813 m!3379739))

(declare-fun m!3379741 () Bool)

(assert (=> bm!210810 m!3379741))

(declare-fun m!3379743 () Bool)

(assert (=> b!3055754 m!3379743))

(declare-fun m!3379745 () Bool)

(assert (=> b!3055754 m!3379745))

(declare-fun m!3379747 () Bool)

(assert (=> bm!210812 m!3379747))

(assert (=> b!3055480 d!854803))

(declare-fun b!3055763 () Bool)

(declare-fun e!1913980 () Bool)

(declare-fun call!210821 () Bool)

(assert (=> b!3055763 (= e!1913980 call!210821)))

(declare-fun b!3055764 () Bool)

(declare-fun e!1913971 () Regex!9471)

(declare-fun lt!1049064 () Regex!9471)

(assert (=> b!3055764 (= e!1913971 lt!1049064)))

(declare-fun b!3055765 () Bool)

(declare-fun c!506818 () Bool)

(assert (=> b!3055765 (= c!506818 ((_ is Union!9471) (regOne!19454 r!17423)))))

(declare-fun e!1913969 () Regex!9471)

(declare-fun e!1913981 () Regex!9471)

(assert (=> b!3055765 (= e!1913969 e!1913981)))

(declare-fun bm!210815 () Bool)

(declare-fun call!210826 () Regex!9471)

(assert (=> bm!210815 (= call!210826 (simplify!426 (ite c!506818 (regTwo!19455 (regOne!19454 r!17423)) (regOne!19454 (regOne!19454 r!17423)))))))

(declare-fun b!3055766 () Bool)

(declare-fun e!1913968 () Regex!9471)

(declare-fun e!1913970 () Regex!9471)

(assert (=> b!3055766 (= e!1913968 e!1913970)))

(declare-fun c!506821 () Bool)

(assert (=> b!3055766 (= c!506821 ((_ is ElementMatch!9471) (regOne!19454 r!17423)))))

(declare-fun bm!210816 () Bool)

(declare-fun call!210823 () Regex!9471)

(declare-fun call!210822 () Regex!9471)

(assert (=> bm!210816 (= call!210823 call!210822)))

(declare-fun b!3055767 () Bool)

(declare-fun e!1913977 () Regex!9471)

(declare-fun lt!1049066 () Regex!9471)

(assert (=> b!3055767 (= e!1913977 lt!1049066)))

(declare-fun b!3055768 () Bool)

(declare-fun e!1913979 () Regex!9471)

(assert (=> b!3055768 (= e!1913981 e!1913979)))

(assert (=> b!3055768 (= lt!1049066 call!210823)))

(declare-fun lt!1049062 () Regex!9471)

(assert (=> b!3055768 (= lt!1049062 call!210826)))

(declare-fun c!506822 () Bool)

(assert (=> b!3055768 (= c!506822 call!210821)))

(declare-fun b!3055769 () Bool)

(declare-fun e!1913975 () Regex!9471)

(assert (=> b!3055769 (= e!1913975 EmptyLang!9471)))

(declare-fun d!854805 () Bool)

(declare-fun e!1913978 () Bool)

(assert (=> d!854805 e!1913978))

(declare-fun res!1254928 () Bool)

(assert (=> d!854805 (=> (not res!1254928) (not e!1913978))))

(declare-fun lt!1049061 () Regex!9471)

(assert (=> d!854805 (= res!1254928 (validRegex!4204 lt!1049061))))

(assert (=> d!854805 (= lt!1049061 e!1913968)))

(declare-fun c!506825 () Bool)

(assert (=> d!854805 (= c!506825 ((_ is EmptyLang!9471) (regOne!19454 r!17423)))))

(assert (=> d!854805 (validRegex!4204 (regOne!19454 r!17423))))

(assert (=> d!854805 (= (simplify!426 (regOne!19454 r!17423)) lt!1049061)))

(declare-fun b!3055770 () Bool)

(declare-fun e!1913973 () Regex!9471)

(declare-fun lt!1049065 () Regex!9471)

(assert (=> b!3055770 (= e!1913973 (Star!9471 lt!1049065))))

(declare-fun b!3055771 () Bool)

(assert (=> b!3055771 (= e!1913968 EmptyLang!9471)))

(declare-fun b!3055772 () Bool)

(declare-fun e!1913974 () Regex!9471)

(assert (=> b!3055772 (= e!1913974 EmptyExpr!9471)))

(declare-fun b!3055773 () Bool)

(assert (=> b!3055773 (= e!1913979 lt!1049062)))

(declare-fun b!3055774 () Bool)

(declare-fun c!506817 () Bool)

(assert (=> b!3055774 (= c!506817 ((_ is EmptyExpr!9471) (regOne!19454 r!17423)))))

(assert (=> b!3055774 (= e!1913970 e!1913974)))

(declare-fun b!3055775 () Bool)

(assert (=> b!3055775 (= e!1913973 EmptyExpr!9471)))

(declare-fun b!3055776 () Bool)

(declare-fun c!506815 () Bool)

(declare-fun call!210825 () Bool)

(assert (=> b!3055776 (= c!506815 call!210825)))

(assert (=> b!3055776 (= e!1913975 e!1913971)))

(declare-fun b!3055777 () Bool)

(declare-fun e!1913976 () Regex!9471)

(declare-fun lt!1049063 () Regex!9471)

(assert (=> b!3055777 (= e!1913976 lt!1049063)))

(declare-fun call!210824 () Bool)

(declare-fun bm!210817 () Bool)

(assert (=> bm!210817 (= call!210824 (isEmptyLang!522 (ite c!506818 lt!1049062 lt!1049063)))))

(declare-fun b!3055778 () Bool)

(assert (=> b!3055778 (= e!1913981 e!1913975)))

(assert (=> b!3055778 (= lt!1049063 call!210826)))

(assert (=> b!3055778 (= lt!1049064 call!210823)))

(declare-fun res!1254929 () Bool)

(assert (=> b!3055778 (= res!1254929 call!210824)))

(assert (=> b!3055778 (=> res!1254929 e!1913980)))

(declare-fun c!506820 () Bool)

(assert (=> b!3055778 (= c!506820 e!1913980)))

(declare-fun b!3055779 () Bool)

(assert (=> b!3055779 (= e!1913978 (= (nullable!3117 lt!1049061) (nullable!3117 (regOne!19454 r!17423))))))

(declare-fun b!3055780 () Bool)

(assert (=> b!3055780 (= e!1913970 (regOne!19454 r!17423))))

(declare-fun bm!210818 () Bool)

(declare-fun call!210820 () Bool)

(assert (=> bm!210818 (= call!210821 call!210820)))

(declare-fun b!3055781 () Bool)

(assert (=> b!3055781 (= e!1913976 (Concat!14792 lt!1049063 lt!1049064))))

(declare-fun b!3055782 () Bool)

(assert (=> b!3055782 (= e!1913971 e!1913976)))

(declare-fun c!506819 () Bool)

(assert (=> b!3055782 (= c!506819 (isEmptyExpr!528 lt!1049064))))

(declare-fun bm!210819 () Bool)

(declare-fun c!506823 () Bool)

(assert (=> bm!210819 (= call!210825 (isEmptyExpr!528 (ite c!506823 lt!1049065 lt!1049063)))))

(declare-fun bm!210820 () Bool)

(assert (=> bm!210820 (= call!210820 (isEmptyLang!522 (ite c!506823 lt!1049065 (ite c!506818 lt!1049066 lt!1049064))))))

(declare-fun b!3055783 () Bool)

(declare-fun c!506824 () Bool)

(declare-fun e!1913972 () Bool)

(assert (=> b!3055783 (= c!506824 e!1913972)))

(declare-fun res!1254930 () Bool)

(assert (=> b!3055783 (=> res!1254930 e!1913972)))

(assert (=> b!3055783 (= res!1254930 call!210820)))

(assert (=> b!3055783 (= lt!1049065 call!210822)))

(assert (=> b!3055783 (= e!1913969 e!1913973)))

(declare-fun b!3055784 () Bool)

(assert (=> b!3055784 (= e!1913972 call!210825)))

(declare-fun b!3055785 () Bool)

(declare-fun c!506816 () Bool)

(assert (=> b!3055785 (= c!506816 call!210824)))

(assert (=> b!3055785 (= e!1913979 e!1913977)))

(declare-fun b!3055786 () Bool)

(assert (=> b!3055786 (= e!1913974 e!1913969)))

(assert (=> b!3055786 (= c!506823 ((_ is Star!9471) (regOne!19454 r!17423)))))

(declare-fun bm!210821 () Bool)

(assert (=> bm!210821 (= call!210822 (simplify!426 (ite c!506823 (reg!9800 (regOne!19454 r!17423)) (ite c!506818 (regOne!19455 (regOne!19454 r!17423)) (regTwo!19454 (regOne!19454 r!17423))))))))

(declare-fun b!3055787 () Bool)

(assert (=> b!3055787 (= e!1913977 (Union!9471 lt!1049066 lt!1049062))))

(assert (= (and d!854805 c!506825) b!3055771))

(assert (= (and d!854805 (not c!506825)) b!3055766))

(assert (= (and b!3055766 c!506821) b!3055780))

(assert (= (and b!3055766 (not c!506821)) b!3055774))

(assert (= (and b!3055774 c!506817) b!3055772))

(assert (= (and b!3055774 (not c!506817)) b!3055786))

(assert (= (and b!3055786 c!506823) b!3055783))

(assert (= (and b!3055786 (not c!506823)) b!3055765))

(assert (= (and b!3055783 (not res!1254930)) b!3055784))

(assert (= (and b!3055783 c!506824) b!3055775))

(assert (= (and b!3055783 (not c!506824)) b!3055770))

(assert (= (and b!3055765 c!506818) b!3055768))

(assert (= (and b!3055765 (not c!506818)) b!3055778))

(assert (= (and b!3055768 c!506822) b!3055773))

(assert (= (and b!3055768 (not c!506822)) b!3055785))

(assert (= (and b!3055785 c!506816) b!3055767))

(assert (= (and b!3055785 (not c!506816)) b!3055787))

(assert (= (and b!3055778 (not res!1254929)) b!3055763))

(assert (= (and b!3055778 c!506820) b!3055769))

(assert (= (and b!3055778 (not c!506820)) b!3055776))

(assert (= (and b!3055776 c!506815) b!3055764))

(assert (= (and b!3055776 (not c!506815)) b!3055782))

(assert (= (and b!3055782 c!506819) b!3055777))

(assert (= (and b!3055782 (not c!506819)) b!3055781))

(assert (= (or b!3055768 b!3055778) bm!210816))

(assert (= (or b!3055768 b!3055778) bm!210815))

(assert (= (or b!3055768 b!3055763) bm!210818))

(assert (= (or b!3055785 b!3055778) bm!210817))

(assert (= (or b!3055784 b!3055776) bm!210819))

(assert (= (or b!3055783 bm!210816) bm!210821))

(assert (= (or b!3055783 bm!210818) bm!210820))

(assert (= (and d!854805 res!1254928) b!3055779))

(declare-fun m!3379749 () Bool)

(assert (=> bm!210815 m!3379749))

(declare-fun m!3379751 () Bool)

(assert (=> bm!210821 m!3379751))

(declare-fun m!3379753 () Bool)

(assert (=> b!3055782 m!3379753))

(declare-fun m!3379755 () Bool)

(assert (=> d!854805 m!3379755))

(declare-fun m!3379757 () Bool)

(assert (=> d!854805 m!3379757))

(declare-fun m!3379759 () Bool)

(assert (=> bm!210820 m!3379759))

(declare-fun m!3379761 () Bool)

(assert (=> bm!210817 m!3379761))

(declare-fun m!3379763 () Bool)

(assert (=> b!3055779 m!3379763))

(declare-fun m!3379765 () Bool)

(assert (=> b!3055779 m!3379765))

(declare-fun m!3379767 () Bool)

(assert (=> bm!210819 m!3379767))

(assert (=> b!3055480 d!854805))

(declare-fun b!3056005 () Bool)

(assert (=> b!3056005 true))

(assert (=> b!3056005 true))

(declare-fun bs!532397 () Bool)

(declare-fun b!3056009 () Bool)

(assert (= bs!532397 (and b!3056009 b!3056005)))

(declare-fun lambda!113790 () Int)

(declare-fun lambda!113789 () Int)

(assert (=> bs!532397 (not (= lambda!113790 lambda!113789))))

(assert (=> b!3056009 true))

(assert (=> b!3056009 true))

(declare-fun b!3055999 () Bool)

(declare-fun c!506877 () Bool)

(assert (=> b!3055999 (= c!506877 ((_ is Union!9471) r!17423))))

(declare-fun e!1914095 () Bool)

(declare-fun e!1914093 () Bool)

(assert (=> b!3055999 (= e!1914095 e!1914093)))

(declare-fun bm!210858 () Bool)

(declare-fun call!210864 () Bool)

(assert (=> bm!210858 (= call!210864 (isEmpty!19527 s!11993))))

(declare-fun b!3056000 () Bool)

(declare-fun e!1914094 () Bool)

(assert (=> b!3056000 (= e!1914093 e!1914094)))

(declare-fun c!506875 () Bool)

(assert (=> b!3056000 (= c!506875 ((_ is Star!9471) r!17423))))

(declare-fun d!854807 () Bool)

(declare-fun c!506876 () Bool)

(assert (=> d!854807 (= c!506876 ((_ is EmptyExpr!9471) r!17423))))

(declare-fun e!1914097 () Bool)

(assert (=> d!854807 (= (matchRSpec!1608 r!17423 s!11993) e!1914097)))

(declare-fun b!3056001 () Bool)

(assert (=> b!3056001 (= e!1914095 (= s!11993 (Cons!35212 (c!506711 r!17423) Nil!35212)))))

(declare-fun b!3056002 () Bool)

(declare-fun c!506878 () Bool)

(assert (=> b!3056002 (= c!506878 ((_ is ElementMatch!9471) r!17423))))

(declare-fun e!1914092 () Bool)

(assert (=> b!3056002 (= e!1914092 e!1914095)))

(declare-fun b!3056003 () Bool)

(assert (=> b!3056003 (= e!1914097 call!210864)))

(declare-fun b!3056004 () Bool)

(declare-fun e!1914091 () Bool)

(assert (=> b!3056004 (= e!1914091 (matchRSpec!1608 (regTwo!19455 r!17423) s!11993))))

(declare-fun e!1914096 () Bool)

(declare-fun call!210863 () Bool)

(assert (=> b!3056005 (= e!1914096 call!210863)))

(declare-fun bm!210859 () Bool)

(declare-fun Exists!1734 (Int) Bool)

(assert (=> bm!210859 (= call!210863 (Exists!1734 (ite c!506875 lambda!113789 lambda!113790)))))

(declare-fun b!3056006 () Bool)

(assert (=> b!3056006 (= e!1914097 e!1914092)))

(declare-fun res!1255005 () Bool)

(assert (=> b!3056006 (= res!1255005 (not ((_ is EmptyLang!9471) r!17423)))))

(assert (=> b!3056006 (=> (not res!1255005) (not e!1914092))))

(declare-fun b!3056007 () Bool)

(declare-fun res!1255007 () Bool)

(assert (=> b!3056007 (=> res!1255007 e!1914096)))

(assert (=> b!3056007 (= res!1255007 call!210864)))

(assert (=> b!3056007 (= e!1914094 e!1914096)))

(declare-fun b!3056008 () Bool)

(assert (=> b!3056008 (= e!1914093 e!1914091)))

(declare-fun res!1255006 () Bool)

(assert (=> b!3056008 (= res!1255006 (matchRSpec!1608 (regOne!19455 r!17423) s!11993))))

(assert (=> b!3056008 (=> res!1255006 e!1914091)))

(assert (=> b!3056009 (= e!1914094 call!210863)))

(assert (= (and d!854807 c!506876) b!3056003))

(assert (= (and d!854807 (not c!506876)) b!3056006))

(assert (= (and b!3056006 res!1255005) b!3056002))

(assert (= (and b!3056002 c!506878) b!3056001))

(assert (= (and b!3056002 (not c!506878)) b!3055999))

(assert (= (and b!3055999 c!506877) b!3056008))

(assert (= (and b!3055999 (not c!506877)) b!3056000))

(assert (= (and b!3056008 (not res!1255006)) b!3056004))

(assert (= (and b!3056000 c!506875) b!3056007))

(assert (= (and b!3056000 (not c!506875)) b!3056009))

(assert (= (and b!3056007 (not res!1255007)) b!3056005))

(assert (= (or b!3056005 b!3056009) bm!210859))

(assert (= (or b!3056003 b!3056007) bm!210858))

(assert (=> bm!210858 m!3379653))

(declare-fun m!3379843 () Bool)

(assert (=> b!3056004 m!3379843))

(declare-fun m!3379845 () Bool)

(assert (=> bm!210859 m!3379845))

(declare-fun m!3379847 () Bool)

(assert (=> b!3056008 m!3379847))

(assert (=> b!3055476 d!854807))

(declare-fun b!3056014 () Bool)

(declare-fun e!1914104 () Bool)

(declare-fun lt!1049088 () Bool)

(assert (=> b!3056014 (= e!1914104 (not lt!1049088))))

(declare-fun b!3056015 () Bool)

(declare-fun e!1914100 () Bool)

(assert (=> b!3056015 (= e!1914100 (not (= (head!6772 s!11993) (c!506711 r!17423))))))

(declare-fun b!3056016 () Bool)

(declare-fun res!1255009 () Bool)

(declare-fun e!1914098 () Bool)

(assert (=> b!3056016 (=> (not res!1255009) (not e!1914098))))

(declare-fun call!210865 () Bool)

(assert (=> b!3056016 (= res!1255009 (not call!210865))))

(declare-fun b!3056017 () Bool)

(declare-fun res!1255010 () Bool)

(assert (=> b!3056017 (=> res!1255010 e!1914100)))

(assert (=> b!3056017 (= res!1255010 (not (isEmpty!19527 (tail!4998 s!11993))))))

(declare-fun d!854829 () Bool)

(declare-fun e!1914099 () Bool)

(assert (=> d!854829 e!1914099))

(declare-fun c!506880 () Bool)

(assert (=> d!854829 (= c!506880 ((_ is EmptyExpr!9471) r!17423))))

(declare-fun e!1914101 () Bool)

(assert (=> d!854829 (= lt!1049088 e!1914101)))

(declare-fun c!506879 () Bool)

(assert (=> d!854829 (= c!506879 (isEmpty!19527 s!11993))))

(assert (=> d!854829 (validRegex!4204 r!17423)))

(assert (=> d!854829 (= (matchR!4353 r!17423 s!11993) lt!1049088)))

(declare-fun b!3056018 () Bool)

(assert (=> b!3056018 (= e!1914099 (= lt!1049088 call!210865))))

(declare-fun b!3056019 () Bool)

(assert (=> b!3056019 (= e!1914098 (= (head!6772 s!11993) (c!506711 r!17423)))))

(declare-fun b!3056020 () Bool)

(assert (=> b!3056020 (= e!1914101 (nullable!3117 r!17423))))

(declare-fun b!3056021 () Bool)

(assert (=> b!3056021 (= e!1914101 (matchR!4353 (derivativeStep!2713 r!17423 (head!6772 s!11993)) (tail!4998 s!11993)))))

(declare-fun b!3056022 () Bool)

(assert (=> b!3056022 (= e!1914099 e!1914104)))

(declare-fun c!506881 () Bool)

(assert (=> b!3056022 (= c!506881 ((_ is EmptyLang!9471) r!17423))))

(declare-fun b!3056023 () Bool)

(declare-fun res!1255014 () Bool)

(declare-fun e!1914102 () Bool)

(assert (=> b!3056023 (=> res!1255014 e!1914102)))

(assert (=> b!3056023 (= res!1255014 (not ((_ is ElementMatch!9471) r!17423)))))

(assert (=> b!3056023 (= e!1914104 e!1914102)))

(declare-fun b!3056024 () Bool)

(declare-fun e!1914103 () Bool)

(assert (=> b!3056024 (= e!1914103 e!1914100)))

(declare-fun res!1255013 () Bool)

(assert (=> b!3056024 (=> res!1255013 e!1914100)))

(assert (=> b!3056024 (= res!1255013 call!210865)))

(declare-fun b!3056025 () Bool)

(declare-fun res!1255012 () Bool)

(assert (=> b!3056025 (=> (not res!1255012) (not e!1914098))))

(assert (=> b!3056025 (= res!1255012 (isEmpty!19527 (tail!4998 s!11993)))))

(declare-fun b!3056026 () Bool)

(declare-fun res!1255015 () Bool)

(assert (=> b!3056026 (=> res!1255015 e!1914102)))

(assert (=> b!3056026 (= res!1255015 e!1914098)))

(declare-fun res!1255008 () Bool)

(assert (=> b!3056026 (=> (not res!1255008) (not e!1914098))))

(assert (=> b!3056026 (= res!1255008 lt!1049088)))

(declare-fun bm!210860 () Bool)

(assert (=> bm!210860 (= call!210865 (isEmpty!19527 s!11993))))

(declare-fun b!3056027 () Bool)

(assert (=> b!3056027 (= e!1914102 e!1914103)))

(declare-fun res!1255011 () Bool)

(assert (=> b!3056027 (=> (not res!1255011) (not e!1914103))))

(assert (=> b!3056027 (= res!1255011 (not lt!1049088))))

(assert (= (and d!854829 c!506879) b!3056020))

(assert (= (and d!854829 (not c!506879)) b!3056021))

(assert (= (and d!854829 c!506880) b!3056018))

(assert (= (and d!854829 (not c!506880)) b!3056022))

(assert (= (and b!3056022 c!506881) b!3056014))

(assert (= (and b!3056022 (not c!506881)) b!3056023))

(assert (= (and b!3056023 (not res!1255014)) b!3056026))

(assert (= (and b!3056026 res!1255008) b!3056016))

(assert (= (and b!3056016 res!1255009) b!3056025))

(assert (= (and b!3056025 res!1255012) b!3056019))

(assert (= (and b!3056026 (not res!1255015)) b!3056027))

(assert (= (and b!3056027 res!1255011) b!3056024))

(assert (= (and b!3056024 (not res!1255013)) b!3056017))

(assert (= (and b!3056017 (not res!1255010)) b!3056015))

(assert (= (or b!3056018 b!3056016 b!3056024) bm!210860))

(assert (=> bm!210860 m!3379653))

(assert (=> b!3056019 m!3379679))

(assert (=> b!3056015 m!3379679))

(assert (=> b!3056021 m!3379679))

(assert (=> b!3056021 m!3379679))

(declare-fun m!3379849 () Bool)

(assert (=> b!3056021 m!3379849))

(assert (=> b!3056021 m!3379683))

(assert (=> b!3056021 m!3379849))

(assert (=> b!3056021 m!3379683))

(declare-fun m!3379851 () Bool)

(assert (=> b!3056021 m!3379851))

(assert (=> b!3056017 m!3379683))

(assert (=> b!3056017 m!3379683))

(assert (=> b!3056017 m!3379687))

(assert (=> d!854829 m!3379653))

(assert (=> d!854829 m!3379645))

(assert (=> b!3056020 m!3379725))

(assert (=> b!3056025 m!3379683))

(assert (=> b!3056025 m!3379683))

(assert (=> b!3056025 m!3379687))

(assert (=> b!3055476 d!854829))

(declare-fun d!854831 () Bool)

(assert (=> d!854831 (= (matchR!4353 r!17423 s!11993) (matchRSpec!1608 r!17423 s!11993))))

(declare-fun lt!1049091 () Unit!49381)

(declare-fun choose!18102 (Regex!9471 List!35336) Unit!49381)

(assert (=> d!854831 (= lt!1049091 (choose!18102 r!17423 s!11993))))

(assert (=> d!854831 (validRegex!4204 r!17423)))

(assert (=> d!854831 (= (mainMatchTheorem!1608 r!17423 s!11993) lt!1049091)))

(declare-fun bs!532398 () Bool)

(assert (= bs!532398 d!854831))

(assert (=> bs!532398 m!3379649))

(assert (=> bs!532398 m!3379647))

(declare-fun m!3379853 () Bool)

(assert (=> bs!532398 m!3379853))

(assert (=> bs!532398 m!3379645))

(assert (=> b!3055476 d!854831))

(declare-fun d!854833 () Bool)

(declare-fun res!1255029 () Bool)

(declare-fun e!1914119 () Bool)

(assert (=> d!854833 (=> res!1255029 e!1914119)))

(assert (=> d!854833 (= res!1255029 ((_ is ElementMatch!9471) r!17423))))

(assert (=> d!854833 (= (validRegex!4204 r!17423) e!1914119)))

(declare-fun b!3056046 () Bool)

(declare-fun res!1255030 () Bool)

(declare-fun e!1914123 () Bool)

(assert (=> b!3056046 (=> (not res!1255030) (not e!1914123))))

(declare-fun call!210874 () Bool)

(assert (=> b!3056046 (= res!1255030 call!210874)))

(declare-fun e!1914124 () Bool)

(assert (=> b!3056046 (= e!1914124 e!1914123)))

(declare-fun b!3056047 () Bool)

(declare-fun e!1914120 () Bool)

(assert (=> b!3056047 (= e!1914120 call!210874)))

(declare-fun b!3056048 () Bool)

(declare-fun call!210872 () Bool)

(assert (=> b!3056048 (= e!1914123 call!210872)))

(declare-fun b!3056049 () Bool)

(declare-fun e!1914121 () Bool)

(assert (=> b!3056049 (= e!1914121 e!1914124)))

(declare-fun c!506886 () Bool)

(assert (=> b!3056049 (= c!506886 ((_ is Union!9471) r!17423))))

(declare-fun b!3056050 () Bool)

(declare-fun res!1255026 () Bool)

(declare-fun e!1914125 () Bool)

(assert (=> b!3056050 (=> res!1255026 e!1914125)))

(assert (=> b!3056050 (= res!1255026 (not ((_ is Concat!14792) r!17423)))))

(assert (=> b!3056050 (= e!1914124 e!1914125)))

(declare-fun bm!210867 () Bool)

(assert (=> bm!210867 (= call!210874 (validRegex!4204 (ite c!506886 (regOne!19455 r!17423) (regTwo!19454 r!17423))))))

(declare-fun bm!210868 () Bool)

(declare-fun call!210873 () Bool)

(assert (=> bm!210868 (= call!210872 call!210873)))

(declare-fun b!3056051 () Bool)

(declare-fun e!1914122 () Bool)

(assert (=> b!3056051 (= e!1914122 call!210873)))

(declare-fun b!3056052 () Bool)

(assert (=> b!3056052 (= e!1914125 e!1914120)))

(declare-fun res!1255028 () Bool)

(assert (=> b!3056052 (=> (not res!1255028) (not e!1914120))))

(assert (=> b!3056052 (= res!1255028 call!210872)))

(declare-fun b!3056053 () Bool)

(assert (=> b!3056053 (= e!1914121 e!1914122)))

(declare-fun res!1255027 () Bool)

(assert (=> b!3056053 (= res!1255027 (not (nullable!3117 (reg!9800 r!17423))))))

(assert (=> b!3056053 (=> (not res!1255027) (not e!1914122))))

(declare-fun b!3056054 () Bool)

(assert (=> b!3056054 (= e!1914119 e!1914121)))

(declare-fun c!506887 () Bool)

(assert (=> b!3056054 (= c!506887 ((_ is Star!9471) r!17423))))

(declare-fun bm!210869 () Bool)

(assert (=> bm!210869 (= call!210873 (validRegex!4204 (ite c!506887 (reg!9800 r!17423) (ite c!506886 (regTwo!19455 r!17423) (regOne!19454 r!17423)))))))

(assert (= (and d!854833 (not res!1255029)) b!3056054))

(assert (= (and b!3056054 c!506887) b!3056053))

(assert (= (and b!3056054 (not c!506887)) b!3056049))

(assert (= (and b!3056053 res!1255027) b!3056051))

(assert (= (and b!3056049 c!506886) b!3056046))

(assert (= (and b!3056049 (not c!506886)) b!3056050))

(assert (= (and b!3056046 res!1255030) b!3056048))

(assert (= (and b!3056050 (not res!1255026)) b!3056052))

(assert (= (and b!3056052 res!1255028) b!3056047))

(assert (= (or b!3056046 b!3056047) bm!210867))

(assert (= (or b!3056048 b!3056052) bm!210868))

(assert (= (or b!3056051 bm!210868) bm!210869))

(declare-fun m!3379855 () Bool)

(assert (=> bm!210867 m!3379855))

(declare-fun m!3379857 () Bool)

(assert (=> b!3056053 m!3379857))

(declare-fun m!3379859 () Bool)

(assert (=> bm!210869 m!3379859))

(assert (=> start!291852 d!854833))

(declare-fun b!3056055 () Bool)

(declare-fun e!1914132 () Bool)

(declare-fun lt!1049092 () Bool)

(assert (=> b!3056055 (= e!1914132 (not lt!1049092))))

(declare-fun b!3056056 () Bool)

(declare-fun e!1914128 () Bool)

(assert (=> b!3056056 (= e!1914128 (not (= (head!6772 s!11993) (c!506711 lt!1049010))))))

(declare-fun b!3056057 () Bool)

(declare-fun res!1255032 () Bool)

(declare-fun e!1914126 () Bool)

(assert (=> b!3056057 (=> (not res!1255032) (not e!1914126))))

(declare-fun call!210875 () Bool)

(assert (=> b!3056057 (= res!1255032 (not call!210875))))

(declare-fun b!3056058 () Bool)

(declare-fun res!1255033 () Bool)

(assert (=> b!3056058 (=> res!1255033 e!1914128)))

(assert (=> b!3056058 (= res!1255033 (not (isEmpty!19527 (tail!4998 s!11993))))))

(declare-fun d!854835 () Bool)

(declare-fun e!1914127 () Bool)

(assert (=> d!854835 e!1914127))

(declare-fun c!506889 () Bool)

(assert (=> d!854835 (= c!506889 ((_ is EmptyExpr!9471) lt!1049010))))

(declare-fun e!1914129 () Bool)

(assert (=> d!854835 (= lt!1049092 e!1914129)))

(declare-fun c!506888 () Bool)

(assert (=> d!854835 (= c!506888 (isEmpty!19527 s!11993))))

(assert (=> d!854835 (validRegex!4204 lt!1049010)))

(assert (=> d!854835 (= (matchR!4353 lt!1049010 s!11993) lt!1049092)))

(declare-fun b!3056059 () Bool)

(assert (=> b!3056059 (= e!1914127 (= lt!1049092 call!210875))))

(declare-fun b!3056060 () Bool)

(assert (=> b!3056060 (= e!1914126 (= (head!6772 s!11993) (c!506711 lt!1049010)))))

(declare-fun b!3056061 () Bool)

(assert (=> b!3056061 (= e!1914129 (nullable!3117 lt!1049010))))

(declare-fun b!3056062 () Bool)

(assert (=> b!3056062 (= e!1914129 (matchR!4353 (derivativeStep!2713 lt!1049010 (head!6772 s!11993)) (tail!4998 s!11993)))))

(declare-fun b!3056063 () Bool)

(assert (=> b!3056063 (= e!1914127 e!1914132)))

(declare-fun c!506890 () Bool)

(assert (=> b!3056063 (= c!506890 ((_ is EmptyLang!9471) lt!1049010))))

(declare-fun b!3056064 () Bool)

(declare-fun res!1255037 () Bool)

(declare-fun e!1914130 () Bool)

(assert (=> b!3056064 (=> res!1255037 e!1914130)))

(assert (=> b!3056064 (= res!1255037 (not ((_ is ElementMatch!9471) lt!1049010)))))

(assert (=> b!3056064 (= e!1914132 e!1914130)))

(declare-fun b!3056065 () Bool)

(declare-fun e!1914131 () Bool)

(assert (=> b!3056065 (= e!1914131 e!1914128)))

(declare-fun res!1255036 () Bool)

(assert (=> b!3056065 (=> res!1255036 e!1914128)))

(assert (=> b!3056065 (= res!1255036 call!210875)))

(declare-fun b!3056066 () Bool)

(declare-fun res!1255035 () Bool)

(assert (=> b!3056066 (=> (not res!1255035) (not e!1914126))))

(assert (=> b!3056066 (= res!1255035 (isEmpty!19527 (tail!4998 s!11993)))))

(declare-fun b!3056067 () Bool)

(declare-fun res!1255038 () Bool)

(assert (=> b!3056067 (=> res!1255038 e!1914130)))

(assert (=> b!3056067 (= res!1255038 e!1914126)))

(declare-fun res!1255031 () Bool)

(assert (=> b!3056067 (=> (not res!1255031) (not e!1914126))))

(assert (=> b!3056067 (= res!1255031 lt!1049092)))

(declare-fun bm!210870 () Bool)

(assert (=> bm!210870 (= call!210875 (isEmpty!19527 s!11993))))

(declare-fun b!3056068 () Bool)

(assert (=> b!3056068 (= e!1914130 e!1914131)))

(declare-fun res!1255034 () Bool)

(assert (=> b!3056068 (=> (not res!1255034) (not e!1914131))))

(assert (=> b!3056068 (= res!1255034 (not lt!1049092))))

(assert (= (and d!854835 c!506888) b!3056061))

(assert (= (and d!854835 (not c!506888)) b!3056062))

(assert (= (and d!854835 c!506889) b!3056059))

(assert (= (and d!854835 (not c!506889)) b!3056063))

(assert (= (and b!3056063 c!506890) b!3056055))

(assert (= (and b!3056063 (not c!506890)) b!3056064))

(assert (= (and b!3056064 (not res!1255037)) b!3056067))

(assert (= (and b!3056067 res!1255031) b!3056057))

(assert (= (and b!3056057 res!1255032) b!3056066))

(assert (= (and b!3056066 res!1255035) b!3056060))

(assert (= (and b!3056067 (not res!1255038)) b!3056068))

(assert (= (and b!3056068 res!1255034) b!3056065))

(assert (= (and b!3056065 (not res!1255036)) b!3056058))

(assert (= (and b!3056058 (not res!1255033)) b!3056056))

(assert (= (or b!3056059 b!3056057 b!3056065) bm!210870))

(assert (=> bm!210870 m!3379653))

(assert (=> b!3056060 m!3379679))

(assert (=> b!3056056 m!3379679))

(assert (=> b!3056062 m!3379679))

(assert (=> b!3056062 m!3379679))

(declare-fun m!3379861 () Bool)

(assert (=> b!3056062 m!3379861))

(assert (=> b!3056062 m!3379683))

(assert (=> b!3056062 m!3379861))

(assert (=> b!3056062 m!3379683))

(declare-fun m!3379863 () Bool)

(assert (=> b!3056062 m!3379863))

(assert (=> b!3056058 m!3379683))

(assert (=> b!3056058 m!3379683))

(assert (=> b!3056058 m!3379687))

(assert (=> d!854835 m!3379653))

(declare-fun m!3379865 () Bool)

(assert (=> d!854835 m!3379865))

(declare-fun m!3379867 () Bool)

(assert (=> b!3056061 m!3379867))

(assert (=> b!3056066 m!3379683))

(assert (=> b!3056066 m!3379683))

(assert (=> b!3056066 m!3379687))

(assert (=> b!3055477 d!854835))

(declare-fun b!3056069 () Bool)

(declare-fun e!1914139 () Bool)

(declare-fun lt!1049093 () Bool)

(assert (=> b!3056069 (= e!1914139 (not lt!1049093))))

(declare-fun b!3056070 () Bool)

(declare-fun e!1914135 () Bool)

(assert (=> b!3056070 (= e!1914135 (not (= (head!6772 s!11993) (c!506711 (regOne!19454 r!17423)))))))

(declare-fun b!3056071 () Bool)

(declare-fun res!1255040 () Bool)

(declare-fun e!1914133 () Bool)

(assert (=> b!3056071 (=> (not res!1255040) (not e!1914133))))

(declare-fun call!210876 () Bool)

(assert (=> b!3056071 (= res!1255040 (not call!210876))))

(declare-fun b!3056072 () Bool)

(declare-fun res!1255041 () Bool)

(assert (=> b!3056072 (=> res!1255041 e!1914135)))

(assert (=> b!3056072 (= res!1255041 (not (isEmpty!19527 (tail!4998 s!11993))))))

(declare-fun d!854837 () Bool)

(declare-fun e!1914134 () Bool)

(assert (=> d!854837 e!1914134))

(declare-fun c!506892 () Bool)

(assert (=> d!854837 (= c!506892 ((_ is EmptyExpr!9471) (regOne!19454 r!17423)))))

(declare-fun e!1914136 () Bool)

(assert (=> d!854837 (= lt!1049093 e!1914136)))

(declare-fun c!506891 () Bool)

(assert (=> d!854837 (= c!506891 (isEmpty!19527 s!11993))))

(assert (=> d!854837 (validRegex!4204 (regOne!19454 r!17423))))

(assert (=> d!854837 (= (matchR!4353 (regOne!19454 r!17423) s!11993) lt!1049093)))

(declare-fun b!3056073 () Bool)

(assert (=> b!3056073 (= e!1914134 (= lt!1049093 call!210876))))

(declare-fun b!3056074 () Bool)

(assert (=> b!3056074 (= e!1914133 (= (head!6772 s!11993) (c!506711 (regOne!19454 r!17423))))))

(declare-fun b!3056075 () Bool)

(assert (=> b!3056075 (= e!1914136 (nullable!3117 (regOne!19454 r!17423)))))

(declare-fun b!3056076 () Bool)

(assert (=> b!3056076 (= e!1914136 (matchR!4353 (derivativeStep!2713 (regOne!19454 r!17423) (head!6772 s!11993)) (tail!4998 s!11993)))))

(declare-fun b!3056077 () Bool)

(assert (=> b!3056077 (= e!1914134 e!1914139)))

(declare-fun c!506893 () Bool)

(assert (=> b!3056077 (= c!506893 ((_ is EmptyLang!9471) (regOne!19454 r!17423)))))

(declare-fun b!3056078 () Bool)

(declare-fun res!1255045 () Bool)

(declare-fun e!1914137 () Bool)

(assert (=> b!3056078 (=> res!1255045 e!1914137)))

(assert (=> b!3056078 (= res!1255045 (not ((_ is ElementMatch!9471) (regOne!19454 r!17423))))))

(assert (=> b!3056078 (= e!1914139 e!1914137)))

(declare-fun b!3056079 () Bool)

(declare-fun e!1914138 () Bool)

(assert (=> b!3056079 (= e!1914138 e!1914135)))

(declare-fun res!1255044 () Bool)

(assert (=> b!3056079 (=> res!1255044 e!1914135)))

(assert (=> b!3056079 (= res!1255044 call!210876)))

(declare-fun b!3056080 () Bool)

(declare-fun res!1255043 () Bool)

(assert (=> b!3056080 (=> (not res!1255043) (not e!1914133))))

(assert (=> b!3056080 (= res!1255043 (isEmpty!19527 (tail!4998 s!11993)))))

(declare-fun b!3056081 () Bool)

(declare-fun res!1255046 () Bool)

(assert (=> b!3056081 (=> res!1255046 e!1914137)))

(assert (=> b!3056081 (= res!1255046 e!1914133)))

(declare-fun res!1255039 () Bool)

(assert (=> b!3056081 (=> (not res!1255039) (not e!1914133))))

(assert (=> b!3056081 (= res!1255039 lt!1049093)))

(declare-fun bm!210871 () Bool)

(assert (=> bm!210871 (= call!210876 (isEmpty!19527 s!11993))))

(declare-fun b!3056082 () Bool)

(assert (=> b!3056082 (= e!1914137 e!1914138)))

(declare-fun res!1255042 () Bool)

(assert (=> b!3056082 (=> (not res!1255042) (not e!1914138))))

(assert (=> b!3056082 (= res!1255042 (not lt!1049093))))

(assert (= (and d!854837 c!506891) b!3056075))

(assert (= (and d!854837 (not c!506891)) b!3056076))

(assert (= (and d!854837 c!506892) b!3056073))

(assert (= (and d!854837 (not c!506892)) b!3056077))

(assert (= (and b!3056077 c!506893) b!3056069))

(assert (= (and b!3056077 (not c!506893)) b!3056078))

(assert (= (and b!3056078 (not res!1255045)) b!3056081))

(assert (= (and b!3056081 res!1255039) b!3056071))

(assert (= (and b!3056071 res!1255040) b!3056080))

(assert (= (and b!3056080 res!1255043) b!3056074))

(assert (= (and b!3056081 (not res!1255046)) b!3056082))

(assert (= (and b!3056082 res!1255042) b!3056079))

(assert (= (and b!3056079 (not res!1255044)) b!3056072))

(assert (= (and b!3056072 (not res!1255041)) b!3056070))

(assert (= (or b!3056073 b!3056071 b!3056079) bm!210871))

(assert (=> bm!210871 m!3379653))

(assert (=> b!3056074 m!3379679))

(assert (=> b!3056070 m!3379679))

(assert (=> b!3056076 m!3379679))

(assert (=> b!3056076 m!3379679))

(declare-fun m!3379869 () Bool)

(assert (=> b!3056076 m!3379869))

(assert (=> b!3056076 m!3379683))

(assert (=> b!3056076 m!3379869))

(assert (=> b!3056076 m!3379683))

(declare-fun m!3379871 () Bool)

(assert (=> b!3056076 m!3379871))

(assert (=> b!3056072 m!3379683))

(assert (=> b!3056072 m!3379683))

(assert (=> b!3056072 m!3379687))

(assert (=> d!854837 m!3379653))

(assert (=> d!854837 m!3379757))

(assert (=> b!3056075 m!3379765))

(assert (=> b!3056080 m!3379683))

(assert (=> b!3056080 m!3379683))

(assert (=> b!3056080 m!3379687))

(assert (=> b!3055477 d!854837))

(declare-fun d!854839 () Bool)

(assert (=> d!854839 (= (matchR!4353 (regOne!19454 r!17423) s!11993) (matchR!4353 (simplify!426 (regOne!19454 r!17423)) s!11993))))

(declare-fun lt!1049096 () Unit!49381)

(declare-fun choose!18103 (Regex!9471 List!35336) Unit!49381)

(assert (=> d!854839 (= lt!1049096 (choose!18103 (regOne!19454 r!17423) s!11993))))

(assert (=> d!854839 (validRegex!4204 (regOne!19454 r!17423))))

(assert (=> d!854839 (= (lemmaSimplifySound!264 (regOne!19454 r!17423) s!11993) lt!1049096)))

(declare-fun bs!532399 () Bool)

(assert (= bs!532399 d!854839))

(assert (=> bs!532399 m!3379641))

(assert (=> bs!532399 m!3379663))

(declare-fun m!3379873 () Bool)

(assert (=> bs!532399 m!3379873))

(declare-fun m!3379875 () Bool)

(assert (=> bs!532399 m!3379875))

(assert (=> bs!532399 m!3379757))

(assert (=> bs!532399 m!3379663))

(assert (=> b!3055477 d!854839))

(declare-fun d!854841 () Bool)

(assert (=> d!854841 (= (isEmpty!19527 s!11993) ((_ is Nil!35212) s!11993))))

(assert (=> b!3055472 d!854841))

(declare-fun b!3056096 () Bool)

(declare-fun e!1914142 () Bool)

(declare-fun tp!966485 () Bool)

(declare-fun tp!966482 () Bool)

(assert (=> b!3056096 (= e!1914142 (and tp!966485 tp!966482))))

(assert (=> b!3055478 (= tp!966432 e!1914142)))

(declare-fun b!3056093 () Bool)

(assert (=> b!3056093 (= e!1914142 tp_is_empty!16505)))

(declare-fun b!3056095 () Bool)

(declare-fun tp!966486 () Bool)

(assert (=> b!3056095 (= e!1914142 tp!966486)))

(declare-fun b!3056094 () Bool)

(declare-fun tp!966483 () Bool)

(declare-fun tp!966484 () Bool)

(assert (=> b!3056094 (= e!1914142 (and tp!966483 tp!966484))))

(assert (= (and b!3055478 ((_ is ElementMatch!9471) (regOne!19455 r!17423))) b!3056093))

(assert (= (and b!3055478 ((_ is Concat!14792) (regOne!19455 r!17423))) b!3056094))

(assert (= (and b!3055478 ((_ is Star!9471) (regOne!19455 r!17423))) b!3056095))

(assert (= (and b!3055478 ((_ is Union!9471) (regOne!19455 r!17423))) b!3056096))

(declare-fun b!3056100 () Bool)

(declare-fun e!1914143 () Bool)

(declare-fun tp!966490 () Bool)

(declare-fun tp!966487 () Bool)

(assert (=> b!3056100 (= e!1914143 (and tp!966490 tp!966487))))

(assert (=> b!3055478 (= tp!966430 e!1914143)))

(declare-fun b!3056097 () Bool)

(assert (=> b!3056097 (= e!1914143 tp_is_empty!16505)))

(declare-fun b!3056099 () Bool)

(declare-fun tp!966491 () Bool)

(assert (=> b!3056099 (= e!1914143 tp!966491)))

(declare-fun b!3056098 () Bool)

(declare-fun tp!966488 () Bool)

(declare-fun tp!966489 () Bool)

(assert (=> b!3056098 (= e!1914143 (and tp!966488 tp!966489))))

(assert (= (and b!3055478 ((_ is ElementMatch!9471) (regTwo!19455 r!17423))) b!3056097))

(assert (= (and b!3055478 ((_ is Concat!14792) (regTwo!19455 r!17423))) b!3056098))

(assert (= (and b!3055478 ((_ is Star!9471) (regTwo!19455 r!17423))) b!3056099))

(assert (= (and b!3055478 ((_ is Union!9471) (regTwo!19455 r!17423))) b!3056100))

(declare-fun b!3056104 () Bool)

(declare-fun e!1914144 () Bool)

(declare-fun tp!966495 () Bool)

(declare-fun tp!966492 () Bool)

(assert (=> b!3056104 (= e!1914144 (and tp!966495 tp!966492))))

(assert (=> b!3055479 (= tp!966431 e!1914144)))

(declare-fun b!3056101 () Bool)

(assert (=> b!3056101 (= e!1914144 tp_is_empty!16505)))

(declare-fun b!3056103 () Bool)

(declare-fun tp!966496 () Bool)

(assert (=> b!3056103 (= e!1914144 tp!966496)))

(declare-fun b!3056102 () Bool)

(declare-fun tp!966493 () Bool)

(declare-fun tp!966494 () Bool)

(assert (=> b!3056102 (= e!1914144 (and tp!966493 tp!966494))))

(assert (= (and b!3055479 ((_ is ElementMatch!9471) (reg!9800 r!17423))) b!3056101))

(assert (= (and b!3055479 ((_ is Concat!14792) (reg!9800 r!17423))) b!3056102))

(assert (= (and b!3055479 ((_ is Star!9471) (reg!9800 r!17423))) b!3056103))

(assert (= (and b!3055479 ((_ is Union!9471) (reg!9800 r!17423))) b!3056104))

(declare-fun b!3056108 () Bool)

(declare-fun e!1914145 () Bool)

(declare-fun tp!966500 () Bool)

(declare-fun tp!966497 () Bool)

(assert (=> b!3056108 (= e!1914145 (and tp!966500 tp!966497))))

(assert (=> b!3055474 (= tp!966433 e!1914145)))

(declare-fun b!3056105 () Bool)

(assert (=> b!3056105 (= e!1914145 tp_is_empty!16505)))

(declare-fun b!3056107 () Bool)

(declare-fun tp!966501 () Bool)

(assert (=> b!3056107 (= e!1914145 tp!966501)))

(declare-fun b!3056106 () Bool)

(declare-fun tp!966498 () Bool)

(declare-fun tp!966499 () Bool)

(assert (=> b!3056106 (= e!1914145 (and tp!966498 tp!966499))))

(assert (= (and b!3055474 ((_ is ElementMatch!9471) (regOne!19454 r!17423))) b!3056105))

(assert (= (and b!3055474 ((_ is Concat!14792) (regOne!19454 r!17423))) b!3056106))

(assert (= (and b!3055474 ((_ is Star!9471) (regOne!19454 r!17423))) b!3056107))

(assert (= (and b!3055474 ((_ is Union!9471) (regOne!19454 r!17423))) b!3056108))

(declare-fun b!3056112 () Bool)

(declare-fun e!1914146 () Bool)

(declare-fun tp!966505 () Bool)

(declare-fun tp!966502 () Bool)

(assert (=> b!3056112 (= e!1914146 (and tp!966505 tp!966502))))

(assert (=> b!3055474 (= tp!966428 e!1914146)))

(declare-fun b!3056109 () Bool)

(assert (=> b!3056109 (= e!1914146 tp_is_empty!16505)))

(declare-fun b!3056111 () Bool)

(declare-fun tp!966506 () Bool)

(assert (=> b!3056111 (= e!1914146 tp!966506)))

(declare-fun b!3056110 () Bool)

(declare-fun tp!966503 () Bool)

(declare-fun tp!966504 () Bool)

(assert (=> b!3056110 (= e!1914146 (and tp!966503 tp!966504))))

(assert (= (and b!3055474 ((_ is ElementMatch!9471) (regTwo!19454 r!17423))) b!3056109))

(assert (= (and b!3055474 ((_ is Concat!14792) (regTwo!19454 r!17423))) b!3056110))

(assert (= (and b!3055474 ((_ is Star!9471) (regTwo!19454 r!17423))) b!3056111))

(assert (= (and b!3055474 ((_ is Union!9471) (regTwo!19454 r!17423))) b!3056112))

(declare-fun b!3056117 () Bool)

(declare-fun e!1914149 () Bool)

(declare-fun tp!966509 () Bool)

(assert (=> b!3056117 (= e!1914149 (and tp_is_empty!16505 tp!966509))))

(assert (=> b!3055475 (= tp!966429 e!1914149)))

(assert (= (and b!3055475 ((_ is Cons!35212) (t!234401 s!11993))) b!3056117))

(check-sat (not b!3055729) (not b!3056076) (not b!3056080) (not b!3055558) (not b!3056110) (not d!854793) (not bm!210817) (not bm!210870) (not b!3055559) (not bm!210871) (not d!854831) (not bm!210869) (not b!3056061) (not bm!210805) (not b!3056053) (not d!854829) (not b!3055732) (not b!3055555) (not b!3056004) (not b!3056106) (not bm!210810) (not bm!210815) (not bm!210820) (not b!3055757) (not b!3055779) (not b!3056095) (not d!854803) (not bm!210806) (not b!3056094) (not b!3056102) (not b!3056112) (not bm!210821) (not b!3056111) (not d!854797) (not bm!210814) (not bm!210808) (not d!854839) (not b!3056075) (not b!3055563) (not b!3056058) (not b!3056074) (not bm!210801) (not bm!210765) (not b!3056100) (not bm!210867) (not b!3056021) (not bm!210858) (not b!3056019) (not bm!210813) (not b!3056020) (not d!854835) (not bm!210819) (not d!854837) (not bm!210860) (not b!3056108) (not bm!210803) (not b!3056099) (not b!3055754) (not b!3056096) (not b!3056117) (not b!3056066) (not b!3056017) (not b!3055782) (not b!3056107) (not b!3056015) (not b!3055553) (not b!3056025) (not b!3056060) (not b!3055557) (not b!3056104) (not bm!210807) (not b!3056070) (not b!3056008) (not b!3056072) (not b!3056062) (not bm!210812) (not bm!210859) (not b!3056056) (not b!3056103) tp_is_empty!16505 (not d!854805) (not b!3056098))
(check-sat)
