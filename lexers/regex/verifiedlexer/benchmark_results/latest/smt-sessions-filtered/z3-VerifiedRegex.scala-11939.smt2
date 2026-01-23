; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!668402 () Bool)

(assert start!668402)

(declare-fun b!6969951 () Bool)

(declare-fun res!2843027 () Bool)

(declare-fun e!4189687 () Bool)

(assert (=> b!6969951 (=> res!2843027 e!4189687)))

(declare-datatypes ((C!34520 0))(
  ( (C!34521 (val!26962 Int)) )
))
(declare-datatypes ((Regex!17125 0))(
  ( (ElementMatch!17125 (c!1292043 C!34520)) (Concat!25970 (regOne!34762 Regex!17125) (regTwo!34762 Regex!17125)) (EmptyExpr!17125) (Star!17125 (reg!17454 Regex!17125)) (EmptyLang!17125) (Union!17125 (regOne!34763 Regex!17125) (regTwo!34763 Regex!17125)) )
))
(declare-datatypes ((List!66931 0))(
  ( (Nil!66807) (Cons!66807 (h!73255 Regex!17125) (t!380674 List!66931)) )
))
(declare-fun l!9142 () List!66931)

(declare-fun isEmpty!39009 (List!66931) Bool)

(assert (=> b!6969951 (= res!2843027 (isEmpty!39009 l!9142))))

(declare-fun b!6969952 () Bool)

(declare-fun e!4189686 () Bool)

(declare-fun tp!1923640 () Bool)

(declare-fun tp!1923641 () Bool)

(assert (=> b!6969952 (= e!4189686 (and tp!1923640 tp!1923641))))

(declare-fun b!6969953 () Bool)

(declare-fun e!4189684 () Bool)

(declare-fun r!13765 () Regex!17125)

(declare-datatypes ((List!66932 0))(
  ( (Nil!66808) (Cons!66808 (h!73256 C!34520) (t!380675 List!66932)) )
))
(declare-fun s!9351 () List!66932)

(declare-fun matchRSpec!4142 (Regex!17125 List!66932) Bool)

(assert (=> b!6969953 (= e!4189684 (matchRSpec!4142 (regTwo!34763 r!13765) s!9351))))

(declare-fun b!6969954 () Bool)

(declare-fun res!2843030 () Bool)

(declare-fun e!4189688 () Bool)

(assert (=> b!6969954 (=> (not res!2843030) (not e!4189688))))

(declare-fun generalisedUnion!2600 (List!66931) Regex!17125)

(assert (=> b!6969954 (= res!2843030 (= r!13765 (generalisedUnion!2600 l!9142)))))

(declare-fun b!6969955 () Bool)

(declare-fun tp!1923645 () Bool)

(declare-fun tp!1923643 () Bool)

(assert (=> b!6969955 (= e!4189686 (and tp!1923645 tp!1923643))))

(declare-fun b!6969956 () Bool)

(declare-fun tp_is_empty!43475 () Bool)

(assert (=> b!6969956 (= e!4189686 tp_is_empty!43475)))

(declare-fun b!6969957 () Bool)

(declare-fun e!4189690 () Bool)

(declare-fun tp!1923642 () Bool)

(assert (=> b!6969957 (= e!4189690 (and tp_is_empty!43475 tp!1923642))))

(declare-fun b!6969958 () Bool)

(declare-fun e!4189685 () Bool)

(declare-fun tp!1923638 () Bool)

(declare-fun tp!1923644 () Bool)

(assert (=> b!6969958 (= e!4189685 (and tp!1923638 tp!1923644))))

(declare-fun b!6969959 () Bool)

(declare-fun e!4189689 () Bool)

(assert (=> b!6969959 (= e!4189687 e!4189689)))

(declare-fun res!2843026 () Bool)

(assert (=> b!6969959 (=> res!2843026 e!4189689)))

(declare-fun lt!2479540 () Bool)

(assert (=> b!6969959 (= res!2843026 (not (= lt!2479540 e!4189684)))))

(declare-fun res!2843024 () Bool)

(assert (=> b!6969959 (=> res!2843024 e!4189684)))

(declare-fun lt!2479538 () Bool)

(assert (=> b!6969959 (= res!2843024 lt!2479538)))

(assert (=> b!6969959 (= lt!2479538 (matchRSpec!4142 (regOne!34763 r!13765) s!9351))))

(declare-fun res!2843029 () Bool)

(assert (=> start!668402 (=> (not res!2843029) (not e!4189688))))

(declare-fun lambda!397642 () Int)

(declare-fun forall!15996 (List!66931 Int) Bool)

(assert (=> start!668402 (= res!2843029 (forall!15996 l!9142 lambda!397642))))

(assert (=> start!668402 e!4189688))

(assert (=> start!668402 e!4189685))

(assert (=> start!668402 e!4189686))

(assert (=> start!668402 e!4189690))

(declare-fun b!6969960 () Bool)

(declare-fun tp!1923639 () Bool)

(assert (=> b!6969960 (= e!4189686 tp!1923639)))

(declare-fun b!6969961 () Bool)

(declare-fun res!2843025 () Bool)

(assert (=> b!6969961 (=> res!2843025 e!4189687)))

(declare-fun tail!13089 (List!66931) List!66931)

(assert (=> b!6969961 (= res!2843025 (isEmpty!39009 (tail!13089 l!9142)))))

(declare-fun b!6969962 () Bool)

(declare-fun validRegex!8807 (Regex!17125) Bool)

(assert (=> b!6969962 (= e!4189689 (validRegex!8807 (regTwo!34763 r!13765)))))

(declare-fun matchR!9227 (Regex!17125 List!66932) Bool)

(assert (=> b!6969962 (= (matchR!9227 (regOne!34763 r!13765) s!9351) lt!2479538)))

(declare-datatypes ((Unit!160902 0))(
  ( (Unit!160903) )
))
(declare-fun lt!2479539 () Unit!160902)

(declare-fun mainMatchTheorem!4136 (Regex!17125 List!66932) Unit!160902)

(assert (=> b!6969962 (= lt!2479539 (mainMatchTheorem!4136 (regOne!34763 r!13765) s!9351))))

(declare-fun b!6969963 () Bool)

(assert (=> b!6969963 (= e!4189688 (not e!4189687))))

(declare-fun res!2843028 () Bool)

(assert (=> b!6969963 (=> res!2843028 e!4189687)))

(get-info :version)

(assert (=> b!6969963 (= res!2843028 (not ((_ is Union!17125) r!13765)))))

(assert (=> b!6969963 (= lt!2479540 (matchRSpec!4142 r!13765 s!9351))))

(assert (=> b!6969963 (= lt!2479540 (matchR!9227 r!13765 s!9351))))

(declare-fun lt!2479541 () Unit!160902)

(assert (=> b!6969963 (= lt!2479541 (mainMatchTheorem!4136 r!13765 s!9351))))

(assert (= (and start!668402 res!2843029) b!6969954))

(assert (= (and b!6969954 res!2843030) b!6969963))

(assert (= (and b!6969963 (not res!2843028)) b!6969951))

(assert (= (and b!6969951 (not res!2843027)) b!6969961))

(assert (= (and b!6969961 (not res!2843025)) b!6969959))

(assert (= (and b!6969959 (not res!2843024)) b!6969953))

(assert (= (and b!6969959 (not res!2843026)) b!6969962))

(assert (= (and start!668402 ((_ is Cons!66807) l!9142)) b!6969958))

(assert (= (and start!668402 ((_ is ElementMatch!17125) r!13765)) b!6969956))

(assert (= (and start!668402 ((_ is Concat!25970) r!13765)) b!6969952))

(assert (= (and start!668402 ((_ is Star!17125) r!13765)) b!6969960))

(assert (= (and start!668402 ((_ is Union!17125) r!13765)) b!6969955))

(assert (= (and start!668402 ((_ is Cons!66808) s!9351)) b!6969957))

(declare-fun m!7659294 () Bool)

(assert (=> b!6969961 m!7659294))

(assert (=> b!6969961 m!7659294))

(declare-fun m!7659296 () Bool)

(assert (=> b!6969961 m!7659296))

(declare-fun m!7659298 () Bool)

(assert (=> b!6969953 m!7659298))

(declare-fun m!7659300 () Bool)

(assert (=> b!6969959 m!7659300))

(declare-fun m!7659302 () Bool)

(assert (=> b!6969962 m!7659302))

(declare-fun m!7659304 () Bool)

(assert (=> b!6969962 m!7659304))

(declare-fun m!7659306 () Bool)

(assert (=> b!6969962 m!7659306))

(declare-fun m!7659308 () Bool)

(assert (=> b!6969954 m!7659308))

(declare-fun m!7659310 () Bool)

(assert (=> b!6969963 m!7659310))

(declare-fun m!7659312 () Bool)

(assert (=> b!6969963 m!7659312))

(declare-fun m!7659314 () Bool)

(assert (=> b!6969963 m!7659314))

(declare-fun m!7659316 () Bool)

(assert (=> b!6969951 m!7659316))

(declare-fun m!7659318 () Bool)

(assert (=> start!668402 m!7659318))

(check-sat (not b!6969963) (not b!6969954) (not start!668402) (not b!6969958) (not b!6969952) (not b!6969957) (not b!6969959) (not b!6969960) (not b!6969961) (not b!6969955) tp_is_empty!43475 (not b!6969962) (not b!6969953) (not b!6969951))
(check-sat)
(get-model)

(declare-fun d!2171062 () Bool)

(assert (=> d!2171062 (= (isEmpty!39009 (tail!13089 l!9142)) ((_ is Nil!66807) (tail!13089 l!9142)))))

(assert (=> b!6969961 d!2171062))

(declare-fun d!2171064 () Bool)

(assert (=> d!2171064 (= (tail!13089 l!9142) (t!380674 l!9142))))

(assert (=> b!6969961 d!2171064))

(declare-fun d!2171066 () Bool)

(assert (=> d!2171066 (= (isEmpty!39009 l!9142) ((_ is Nil!66807) l!9142))))

(assert (=> b!6969951 d!2171066))

(declare-fun bm!632673 () Bool)

(declare-fun call!632680 () Bool)

(declare-fun c!1292065 () Bool)

(assert (=> bm!632673 (= call!632680 (validRegex!8807 (ite c!1292065 (regTwo!34763 (regTwo!34763 r!13765)) (regTwo!34762 (regTwo!34763 r!13765)))))))

(declare-fun bm!632674 () Bool)

(declare-fun c!1292064 () Bool)

(declare-fun call!632679 () Bool)

(assert (=> bm!632674 (= call!632679 (validRegex!8807 (ite c!1292064 (reg!17454 (regTwo!34763 r!13765)) (ite c!1292065 (regOne!34763 (regTwo!34763 r!13765)) (regOne!34762 (regTwo!34763 r!13765))))))))

(declare-fun b!6970040 () Bool)

(declare-fun res!2843065 () Bool)

(declare-fun e!4189743 () Bool)

(assert (=> b!6970040 (=> res!2843065 e!4189743)))

(assert (=> b!6970040 (= res!2843065 (not ((_ is Concat!25970) (regTwo!34763 r!13765))))))

(declare-fun e!4189738 () Bool)

(assert (=> b!6970040 (= e!4189738 e!4189743)))

(declare-fun bm!632675 () Bool)

(declare-fun call!632678 () Bool)

(assert (=> bm!632675 (= call!632678 call!632679)))

(declare-fun b!6970041 () Bool)

(declare-fun e!4189741 () Bool)

(declare-fun e!4189742 () Bool)

(assert (=> b!6970041 (= e!4189741 e!4189742)))

(assert (=> b!6970041 (= c!1292064 ((_ is Star!17125) (regTwo!34763 r!13765)))))

(declare-fun b!6970043 () Bool)

(declare-fun e!4189740 () Bool)

(assert (=> b!6970043 (= e!4189740 call!632679)))

(declare-fun b!6970044 () Bool)

(assert (=> b!6970044 (= e!4189742 e!4189740)))

(declare-fun res!2843063 () Bool)

(declare-fun nullable!6910 (Regex!17125) Bool)

(assert (=> b!6970044 (= res!2843063 (not (nullable!6910 (reg!17454 (regTwo!34763 r!13765)))))))

(assert (=> b!6970044 (=> (not res!2843063) (not e!4189740))))

(declare-fun b!6970045 () Bool)

(declare-fun res!2843064 () Bool)

(declare-fun e!4189739 () Bool)

(assert (=> b!6970045 (=> (not res!2843064) (not e!4189739))))

(assert (=> b!6970045 (= res!2843064 call!632678)))

(assert (=> b!6970045 (= e!4189738 e!4189739)))

(declare-fun b!6970046 () Bool)

(declare-fun e!4189737 () Bool)

(assert (=> b!6970046 (= e!4189743 e!4189737)))

(declare-fun res!2843067 () Bool)

(assert (=> b!6970046 (=> (not res!2843067) (not e!4189737))))

(assert (=> b!6970046 (= res!2843067 call!632678)))

(declare-fun d!2171068 () Bool)

(declare-fun res!2843066 () Bool)

(assert (=> d!2171068 (=> res!2843066 e!4189741)))

(assert (=> d!2171068 (= res!2843066 ((_ is ElementMatch!17125) (regTwo!34763 r!13765)))))

(assert (=> d!2171068 (= (validRegex!8807 (regTwo!34763 r!13765)) e!4189741)))

(declare-fun b!6970042 () Bool)

(assert (=> b!6970042 (= e!4189737 call!632680)))

(declare-fun b!6970047 () Bool)

(assert (=> b!6970047 (= e!4189739 call!632680)))

(declare-fun b!6970048 () Bool)

(assert (=> b!6970048 (= e!4189742 e!4189738)))

(assert (=> b!6970048 (= c!1292065 ((_ is Union!17125) (regTwo!34763 r!13765)))))

(assert (= (and d!2171068 (not res!2843066)) b!6970041))

(assert (= (and b!6970041 c!1292064) b!6970044))

(assert (= (and b!6970041 (not c!1292064)) b!6970048))

(assert (= (and b!6970044 res!2843063) b!6970043))

(assert (= (and b!6970048 c!1292065) b!6970045))

(assert (= (and b!6970048 (not c!1292065)) b!6970040))

(assert (= (and b!6970045 res!2843064) b!6970047))

(assert (= (and b!6970040 (not res!2843065)) b!6970046))

(assert (= (and b!6970046 res!2843067) b!6970042))

(assert (= (or b!6970045 b!6970046) bm!632675))

(assert (= (or b!6970047 b!6970042) bm!632673))

(assert (= (or b!6970043 bm!632675) bm!632674))

(declare-fun m!7659334 () Bool)

(assert (=> bm!632673 m!7659334))

(declare-fun m!7659336 () Bool)

(assert (=> bm!632674 m!7659336))

(declare-fun m!7659338 () Bool)

(assert (=> b!6970044 m!7659338))

(assert (=> b!6969962 d!2171068))

(declare-fun b!6970118 () Bool)

(declare-fun res!2843100 () Bool)

(declare-fun e!4189788 () Bool)

(assert (=> b!6970118 (=> res!2843100 e!4189788)))

(declare-fun e!4189783 () Bool)

(assert (=> b!6970118 (= res!2843100 e!4189783)))

(declare-fun res!2843093 () Bool)

(assert (=> b!6970118 (=> (not res!2843093) (not e!4189783))))

(declare-fun lt!2479547 () Bool)

(assert (=> b!6970118 (= res!2843093 lt!2479547)))

(declare-fun b!6970119 () Bool)

(declare-fun res!2843095 () Bool)

(assert (=> b!6970119 (=> (not res!2843095) (not e!4189783))))

(declare-fun isEmpty!39011 (List!66932) Bool)

(declare-fun tail!13091 (List!66932) List!66932)

(assert (=> b!6970119 (= res!2843095 (isEmpty!39011 (tail!13091 s!9351)))))

(declare-fun b!6970120 () Bool)

(declare-fun e!4189787 () Bool)

(assert (=> b!6970120 (= e!4189787 (not lt!2479547))))

(declare-fun d!2171074 () Bool)

(declare-fun e!4189784 () Bool)

(assert (=> d!2171074 e!4189784))

(declare-fun c!1292090 () Bool)

(assert (=> d!2171074 (= c!1292090 ((_ is EmptyExpr!17125) (regOne!34763 r!13765)))))

(declare-fun e!4189786 () Bool)

(assert (=> d!2171074 (= lt!2479547 e!4189786)))

(declare-fun c!1292089 () Bool)

(assert (=> d!2171074 (= c!1292089 (isEmpty!39011 s!9351))))

(assert (=> d!2171074 (validRegex!8807 (regOne!34763 r!13765))))

(assert (=> d!2171074 (= (matchR!9227 (regOne!34763 r!13765) s!9351) lt!2479547)))

(declare-fun b!6970121 () Bool)

(declare-fun e!4189785 () Bool)

(declare-fun e!4189789 () Bool)

(assert (=> b!6970121 (= e!4189785 e!4189789)))

(declare-fun res!2843097 () Bool)

(assert (=> b!6970121 (=> res!2843097 e!4189789)))

(declare-fun call!632685 () Bool)

(assert (=> b!6970121 (= res!2843097 call!632685)))

(declare-fun b!6970122 () Bool)

(declare-fun res!2843096 () Bool)

(assert (=> b!6970122 (=> (not res!2843096) (not e!4189783))))

(assert (=> b!6970122 (= res!2843096 (not call!632685))))

(declare-fun b!6970123 () Bool)

(declare-fun head!14022 (List!66932) C!34520)

(assert (=> b!6970123 (= e!4189789 (not (= (head!14022 s!9351) (c!1292043 (regOne!34763 r!13765)))))))

(declare-fun b!6970124 () Bool)

(assert (=> b!6970124 (= e!4189784 e!4189787)))

(declare-fun c!1292088 () Bool)

(assert (=> b!6970124 (= c!1292088 ((_ is EmptyLang!17125) (regOne!34763 r!13765)))))

(declare-fun bm!632680 () Bool)

(assert (=> bm!632680 (= call!632685 (isEmpty!39011 s!9351))))

(declare-fun b!6970125 () Bool)

(declare-fun derivativeStep!5535 (Regex!17125 C!34520) Regex!17125)

(assert (=> b!6970125 (= e!4189786 (matchR!9227 (derivativeStep!5535 (regOne!34763 r!13765) (head!14022 s!9351)) (tail!13091 s!9351)))))

(declare-fun b!6970126 () Bool)

(assert (=> b!6970126 (= e!4189784 (= lt!2479547 call!632685))))

(declare-fun b!6970127 () Bool)

(assert (=> b!6970127 (= e!4189786 (nullable!6910 (regOne!34763 r!13765)))))

(declare-fun b!6970128 () Bool)

(declare-fun res!2843094 () Bool)

(assert (=> b!6970128 (=> res!2843094 e!4189789)))

(assert (=> b!6970128 (= res!2843094 (not (isEmpty!39011 (tail!13091 s!9351))))))

(declare-fun b!6970129 () Bool)

(declare-fun res!2843099 () Bool)

(assert (=> b!6970129 (=> res!2843099 e!4189788)))

(assert (=> b!6970129 (= res!2843099 (not ((_ is ElementMatch!17125) (regOne!34763 r!13765))))))

(assert (=> b!6970129 (= e!4189787 e!4189788)))

(declare-fun b!6970130 () Bool)

(assert (=> b!6970130 (= e!4189783 (= (head!14022 s!9351) (c!1292043 (regOne!34763 r!13765))))))

(declare-fun b!6970131 () Bool)

(assert (=> b!6970131 (= e!4189788 e!4189785)))

(declare-fun res!2843098 () Bool)

(assert (=> b!6970131 (=> (not res!2843098) (not e!4189785))))

(assert (=> b!6970131 (= res!2843098 (not lt!2479547))))

(assert (= (and d!2171074 c!1292089) b!6970127))

(assert (= (and d!2171074 (not c!1292089)) b!6970125))

(assert (= (and d!2171074 c!1292090) b!6970126))

(assert (= (and d!2171074 (not c!1292090)) b!6970124))

(assert (= (and b!6970124 c!1292088) b!6970120))

(assert (= (and b!6970124 (not c!1292088)) b!6970129))

(assert (= (and b!6970129 (not res!2843099)) b!6970118))

(assert (= (and b!6970118 res!2843093) b!6970122))

(assert (= (and b!6970122 res!2843096) b!6970119))

(assert (= (and b!6970119 res!2843095) b!6970130))

(assert (= (and b!6970118 (not res!2843100)) b!6970131))

(assert (= (and b!6970131 res!2843098) b!6970121))

(assert (= (and b!6970121 (not res!2843097)) b!6970128))

(assert (= (and b!6970128 (not res!2843094)) b!6970123))

(assert (= (or b!6970126 b!6970121 b!6970122) bm!632680))

(declare-fun m!7659354 () Bool)

(assert (=> d!2171074 m!7659354))

(declare-fun m!7659356 () Bool)

(assert (=> d!2171074 m!7659356))

(declare-fun m!7659358 () Bool)

(assert (=> b!6970128 m!7659358))

(assert (=> b!6970128 m!7659358))

(declare-fun m!7659360 () Bool)

(assert (=> b!6970128 m!7659360))

(declare-fun m!7659362 () Bool)

(assert (=> b!6970127 m!7659362))

(assert (=> bm!632680 m!7659354))

(declare-fun m!7659364 () Bool)

(assert (=> b!6970123 m!7659364))

(assert (=> b!6970125 m!7659364))

(assert (=> b!6970125 m!7659364))

(declare-fun m!7659366 () Bool)

(assert (=> b!6970125 m!7659366))

(assert (=> b!6970125 m!7659358))

(assert (=> b!6970125 m!7659366))

(assert (=> b!6970125 m!7659358))

(declare-fun m!7659368 () Bool)

(assert (=> b!6970125 m!7659368))

(assert (=> b!6970119 m!7659358))

(assert (=> b!6970119 m!7659358))

(assert (=> b!6970119 m!7659360))

(assert (=> b!6970130 m!7659364))

(assert (=> b!6969962 d!2171074))

(declare-fun d!2171080 () Bool)

(assert (=> d!2171080 (= (matchR!9227 (regOne!34763 r!13765) s!9351) (matchRSpec!4142 (regOne!34763 r!13765) s!9351))))

(declare-fun lt!2479552 () Unit!160902)

(declare-fun choose!51905 (Regex!17125 List!66932) Unit!160902)

(assert (=> d!2171080 (= lt!2479552 (choose!51905 (regOne!34763 r!13765) s!9351))))

(assert (=> d!2171080 (validRegex!8807 (regOne!34763 r!13765))))

(assert (=> d!2171080 (= (mainMatchTheorem!4136 (regOne!34763 r!13765) s!9351) lt!2479552)))

(declare-fun bs!1859036 () Bool)

(assert (= bs!1859036 d!2171080))

(assert (=> bs!1859036 m!7659304))

(assert (=> bs!1859036 m!7659300))

(declare-fun m!7659372 () Bool)

(assert (=> bs!1859036 m!7659372))

(assert (=> bs!1859036 m!7659356))

(assert (=> b!6969962 d!2171080))

(declare-fun b!6970298 () Bool)

(assert (=> b!6970298 true))

(assert (=> b!6970298 true))

(declare-fun bs!1859040 () Bool)

(declare-fun b!6970299 () Bool)

(assert (= bs!1859040 (and b!6970299 b!6970298)))

(declare-fun lambda!397661 () Int)

(declare-fun lambda!397660 () Int)

(assert (=> bs!1859040 (not (= lambda!397661 lambda!397660))))

(assert (=> b!6970299 true))

(assert (=> b!6970299 true))

(declare-fun bm!632698 () Bool)

(declare-fun call!632703 () Bool)

(declare-fun c!1292119 () Bool)

(declare-fun Exists!4088 (Int) Bool)

(assert (=> bm!632698 (= call!632703 (Exists!4088 (ite c!1292119 lambda!397660 lambda!397661)))))

(declare-fun b!6970297 () Bool)

(declare-fun e!4189881 () Bool)

(declare-fun e!4189883 () Bool)

(assert (=> b!6970297 (= e!4189881 e!4189883)))

(declare-fun res!2843170 () Bool)

(assert (=> b!6970297 (= res!2843170 (matchRSpec!4142 (regOne!34763 r!13765) s!9351))))

(assert (=> b!6970297 (=> res!2843170 e!4189883)))

(declare-fun e!4189879 () Bool)

(assert (=> b!6970298 (= e!4189879 call!632703)))

(declare-fun bm!632699 () Bool)

(declare-fun call!632704 () Bool)

(assert (=> bm!632699 (= call!632704 (isEmpty!39011 s!9351))))

(declare-fun d!2171082 () Bool)

(declare-fun c!1292117 () Bool)

(assert (=> d!2171082 (= c!1292117 ((_ is EmptyExpr!17125) r!13765))))

(declare-fun e!4189882 () Bool)

(assert (=> d!2171082 (= (matchRSpec!4142 r!13765 s!9351) e!4189882)))

(declare-fun e!4189877 () Bool)

(assert (=> b!6970299 (= e!4189877 call!632703)))

(declare-fun b!6970300 () Bool)

(assert (=> b!6970300 (= e!4189882 call!632704)))

(declare-fun b!6970301 () Bool)

(assert (=> b!6970301 (= e!4189881 e!4189877)))

(assert (=> b!6970301 (= c!1292119 ((_ is Star!17125) r!13765))))

(declare-fun b!6970302 () Bool)

(declare-fun c!1292120 () Bool)

(assert (=> b!6970302 (= c!1292120 ((_ is Union!17125) r!13765))))

(declare-fun e!4189880 () Bool)

(assert (=> b!6970302 (= e!4189880 e!4189881)))

(declare-fun b!6970303 () Bool)

(declare-fun e!4189878 () Bool)

(assert (=> b!6970303 (= e!4189882 e!4189878)))

(declare-fun res!2843172 () Bool)

(assert (=> b!6970303 (= res!2843172 (not ((_ is EmptyLang!17125) r!13765)))))

(assert (=> b!6970303 (=> (not res!2843172) (not e!4189878))))

(declare-fun b!6970304 () Bool)

(assert (=> b!6970304 (= e!4189883 (matchRSpec!4142 (regTwo!34763 r!13765) s!9351))))

(declare-fun b!6970305 () Bool)

(declare-fun res!2843171 () Bool)

(assert (=> b!6970305 (=> res!2843171 e!4189879)))

(assert (=> b!6970305 (= res!2843171 call!632704)))

(assert (=> b!6970305 (= e!4189877 e!4189879)))

(declare-fun b!6970306 () Bool)

(declare-fun c!1292118 () Bool)

(assert (=> b!6970306 (= c!1292118 ((_ is ElementMatch!17125) r!13765))))

(assert (=> b!6970306 (= e!4189878 e!4189880)))

(declare-fun b!6970307 () Bool)

(assert (=> b!6970307 (= e!4189880 (= s!9351 (Cons!66808 (c!1292043 r!13765) Nil!66808)))))

(assert (= (and d!2171082 c!1292117) b!6970300))

(assert (= (and d!2171082 (not c!1292117)) b!6970303))

(assert (= (and b!6970303 res!2843172) b!6970306))

(assert (= (and b!6970306 c!1292118) b!6970307))

(assert (= (and b!6970306 (not c!1292118)) b!6970302))

(assert (= (and b!6970302 c!1292120) b!6970297))

(assert (= (and b!6970302 (not c!1292120)) b!6970301))

(assert (= (and b!6970297 (not res!2843170)) b!6970304))

(assert (= (and b!6970301 c!1292119) b!6970305))

(assert (= (and b!6970301 (not c!1292119)) b!6970299))

(assert (= (and b!6970305 (not res!2843171)) b!6970298))

(assert (= (or b!6970298 b!6970299) bm!632698))

(assert (= (or b!6970300 b!6970305) bm!632699))

(declare-fun m!7659412 () Bool)

(assert (=> bm!632698 m!7659412))

(assert (=> b!6970297 m!7659300))

(assert (=> bm!632699 m!7659354))

(assert (=> b!6970304 m!7659298))

(assert (=> b!6969963 d!2171082))

(declare-fun b!6970312 () Bool)

(declare-fun res!2843180 () Bool)

(declare-fun e!4189889 () Bool)

(assert (=> b!6970312 (=> res!2843180 e!4189889)))

(declare-fun e!4189884 () Bool)

(assert (=> b!6970312 (= res!2843180 e!4189884)))

(declare-fun res!2843173 () Bool)

(assert (=> b!6970312 (=> (not res!2843173) (not e!4189884))))

(declare-fun lt!2479559 () Bool)

(assert (=> b!6970312 (= res!2843173 lt!2479559)))

(declare-fun b!6970313 () Bool)

(declare-fun res!2843175 () Bool)

(assert (=> b!6970313 (=> (not res!2843175) (not e!4189884))))

(assert (=> b!6970313 (= res!2843175 (isEmpty!39011 (tail!13091 s!9351)))))

(declare-fun b!6970314 () Bool)

(declare-fun e!4189888 () Bool)

(assert (=> b!6970314 (= e!4189888 (not lt!2479559))))

(declare-fun d!2171102 () Bool)

(declare-fun e!4189885 () Bool)

(assert (=> d!2171102 e!4189885))

(declare-fun c!1292123 () Bool)

(assert (=> d!2171102 (= c!1292123 ((_ is EmptyExpr!17125) r!13765))))

(declare-fun e!4189887 () Bool)

(assert (=> d!2171102 (= lt!2479559 e!4189887)))

(declare-fun c!1292122 () Bool)

(assert (=> d!2171102 (= c!1292122 (isEmpty!39011 s!9351))))

(assert (=> d!2171102 (validRegex!8807 r!13765)))

(assert (=> d!2171102 (= (matchR!9227 r!13765 s!9351) lt!2479559)))

(declare-fun b!6970315 () Bool)

(declare-fun e!4189886 () Bool)

(declare-fun e!4189890 () Bool)

(assert (=> b!6970315 (= e!4189886 e!4189890)))

(declare-fun res!2843177 () Bool)

(assert (=> b!6970315 (=> res!2843177 e!4189890)))

(declare-fun call!632705 () Bool)

(assert (=> b!6970315 (= res!2843177 call!632705)))

(declare-fun b!6970316 () Bool)

(declare-fun res!2843176 () Bool)

(assert (=> b!6970316 (=> (not res!2843176) (not e!4189884))))

(assert (=> b!6970316 (= res!2843176 (not call!632705))))

(declare-fun b!6970317 () Bool)

(assert (=> b!6970317 (= e!4189890 (not (= (head!14022 s!9351) (c!1292043 r!13765))))))

(declare-fun b!6970318 () Bool)

(assert (=> b!6970318 (= e!4189885 e!4189888)))

(declare-fun c!1292121 () Bool)

(assert (=> b!6970318 (= c!1292121 ((_ is EmptyLang!17125) r!13765))))

(declare-fun bm!632700 () Bool)

(assert (=> bm!632700 (= call!632705 (isEmpty!39011 s!9351))))

(declare-fun b!6970319 () Bool)

(assert (=> b!6970319 (= e!4189887 (matchR!9227 (derivativeStep!5535 r!13765 (head!14022 s!9351)) (tail!13091 s!9351)))))

(declare-fun b!6970320 () Bool)

(assert (=> b!6970320 (= e!4189885 (= lt!2479559 call!632705))))

(declare-fun b!6970321 () Bool)

(assert (=> b!6970321 (= e!4189887 (nullable!6910 r!13765))))

(declare-fun b!6970322 () Bool)

(declare-fun res!2843174 () Bool)

(assert (=> b!6970322 (=> res!2843174 e!4189890)))

(assert (=> b!6970322 (= res!2843174 (not (isEmpty!39011 (tail!13091 s!9351))))))

(declare-fun b!6970323 () Bool)

(declare-fun res!2843179 () Bool)

(assert (=> b!6970323 (=> res!2843179 e!4189889)))

(assert (=> b!6970323 (= res!2843179 (not ((_ is ElementMatch!17125) r!13765)))))

(assert (=> b!6970323 (= e!4189888 e!4189889)))

(declare-fun b!6970324 () Bool)

(assert (=> b!6970324 (= e!4189884 (= (head!14022 s!9351) (c!1292043 r!13765)))))

(declare-fun b!6970325 () Bool)

(assert (=> b!6970325 (= e!4189889 e!4189886)))

(declare-fun res!2843178 () Bool)

(assert (=> b!6970325 (=> (not res!2843178) (not e!4189886))))

(assert (=> b!6970325 (= res!2843178 (not lt!2479559))))

(assert (= (and d!2171102 c!1292122) b!6970321))

(assert (= (and d!2171102 (not c!1292122)) b!6970319))

(assert (= (and d!2171102 c!1292123) b!6970320))

(assert (= (and d!2171102 (not c!1292123)) b!6970318))

(assert (= (and b!6970318 c!1292121) b!6970314))

(assert (= (and b!6970318 (not c!1292121)) b!6970323))

(assert (= (and b!6970323 (not res!2843179)) b!6970312))

(assert (= (and b!6970312 res!2843173) b!6970316))

(assert (= (and b!6970316 res!2843176) b!6970313))

(assert (= (and b!6970313 res!2843175) b!6970324))

(assert (= (and b!6970312 (not res!2843180)) b!6970325))

(assert (= (and b!6970325 res!2843178) b!6970315))

(assert (= (and b!6970315 (not res!2843177)) b!6970322))

(assert (= (and b!6970322 (not res!2843174)) b!6970317))

(assert (= (or b!6970320 b!6970315 b!6970316) bm!632700))

(assert (=> d!2171102 m!7659354))

(declare-fun m!7659414 () Bool)

(assert (=> d!2171102 m!7659414))

(assert (=> b!6970322 m!7659358))

(assert (=> b!6970322 m!7659358))

(assert (=> b!6970322 m!7659360))

(declare-fun m!7659416 () Bool)

(assert (=> b!6970321 m!7659416))

(assert (=> bm!632700 m!7659354))

(assert (=> b!6970317 m!7659364))

(assert (=> b!6970319 m!7659364))

(assert (=> b!6970319 m!7659364))

(declare-fun m!7659418 () Bool)

(assert (=> b!6970319 m!7659418))

(assert (=> b!6970319 m!7659358))

(assert (=> b!6970319 m!7659418))

(assert (=> b!6970319 m!7659358))

(declare-fun m!7659420 () Bool)

(assert (=> b!6970319 m!7659420))

(assert (=> b!6970313 m!7659358))

(assert (=> b!6970313 m!7659358))

(assert (=> b!6970313 m!7659360))

(assert (=> b!6970324 m!7659364))

(assert (=> b!6969963 d!2171102))

(declare-fun d!2171104 () Bool)

(assert (=> d!2171104 (= (matchR!9227 r!13765 s!9351) (matchRSpec!4142 r!13765 s!9351))))

(declare-fun lt!2479560 () Unit!160902)

(assert (=> d!2171104 (= lt!2479560 (choose!51905 r!13765 s!9351))))

(assert (=> d!2171104 (validRegex!8807 r!13765)))

(assert (=> d!2171104 (= (mainMatchTheorem!4136 r!13765 s!9351) lt!2479560)))

(declare-fun bs!1859041 () Bool)

(assert (= bs!1859041 d!2171104))

(assert (=> bs!1859041 m!7659312))

(assert (=> bs!1859041 m!7659310))

(declare-fun m!7659422 () Bool)

(assert (=> bs!1859041 m!7659422))

(assert (=> bs!1859041 m!7659414))

(assert (=> b!6969963 d!2171104))

(declare-fun bs!1859042 () Bool)

(declare-fun b!6970327 () Bool)

(assert (= bs!1859042 (and b!6970327 b!6970298)))

(declare-fun lambda!397662 () Int)

(assert (=> bs!1859042 (= (and (= (reg!17454 (regTwo!34763 r!13765)) (reg!17454 r!13765)) (= (regTwo!34763 r!13765) r!13765)) (= lambda!397662 lambda!397660))))

(declare-fun bs!1859043 () Bool)

(assert (= bs!1859043 (and b!6970327 b!6970299)))

(assert (=> bs!1859043 (not (= lambda!397662 lambda!397661))))

(assert (=> b!6970327 true))

(assert (=> b!6970327 true))

(declare-fun bs!1859044 () Bool)

(declare-fun b!6970328 () Bool)

(assert (= bs!1859044 (and b!6970328 b!6970298)))

(declare-fun lambda!397663 () Int)

(assert (=> bs!1859044 (not (= lambda!397663 lambda!397660))))

(declare-fun bs!1859045 () Bool)

(assert (= bs!1859045 (and b!6970328 b!6970299)))

(assert (=> bs!1859045 (= (and (= (regOne!34762 (regTwo!34763 r!13765)) (regOne!34762 r!13765)) (= (regTwo!34762 (regTwo!34763 r!13765)) (regTwo!34762 r!13765))) (= lambda!397663 lambda!397661))))

(declare-fun bs!1859046 () Bool)

(assert (= bs!1859046 (and b!6970328 b!6970327)))

(assert (=> bs!1859046 (not (= lambda!397663 lambda!397662))))

(assert (=> b!6970328 true))

(assert (=> b!6970328 true))

(declare-fun c!1292126 () Bool)

(declare-fun call!632706 () Bool)

(declare-fun bm!632701 () Bool)

(assert (=> bm!632701 (= call!632706 (Exists!4088 (ite c!1292126 lambda!397662 lambda!397663)))))

(declare-fun b!6970326 () Bool)

(declare-fun e!4189895 () Bool)

(declare-fun e!4189897 () Bool)

(assert (=> b!6970326 (= e!4189895 e!4189897)))

(declare-fun res!2843181 () Bool)

(assert (=> b!6970326 (= res!2843181 (matchRSpec!4142 (regOne!34763 (regTwo!34763 r!13765)) s!9351))))

(assert (=> b!6970326 (=> res!2843181 e!4189897)))

(declare-fun e!4189893 () Bool)

(assert (=> b!6970327 (= e!4189893 call!632706)))

(declare-fun bm!632702 () Bool)

(declare-fun call!632707 () Bool)

(assert (=> bm!632702 (= call!632707 (isEmpty!39011 s!9351))))

(declare-fun d!2171106 () Bool)

(declare-fun c!1292124 () Bool)

(assert (=> d!2171106 (= c!1292124 ((_ is EmptyExpr!17125) (regTwo!34763 r!13765)))))

(declare-fun e!4189896 () Bool)

(assert (=> d!2171106 (= (matchRSpec!4142 (regTwo!34763 r!13765) s!9351) e!4189896)))

(declare-fun e!4189891 () Bool)

(assert (=> b!6970328 (= e!4189891 call!632706)))

(declare-fun b!6970329 () Bool)

(assert (=> b!6970329 (= e!4189896 call!632707)))

(declare-fun b!6970330 () Bool)

(assert (=> b!6970330 (= e!4189895 e!4189891)))

(assert (=> b!6970330 (= c!1292126 ((_ is Star!17125) (regTwo!34763 r!13765)))))

(declare-fun b!6970331 () Bool)

(declare-fun c!1292127 () Bool)

(assert (=> b!6970331 (= c!1292127 ((_ is Union!17125) (regTwo!34763 r!13765)))))

(declare-fun e!4189894 () Bool)

(assert (=> b!6970331 (= e!4189894 e!4189895)))

(declare-fun b!6970332 () Bool)

(declare-fun e!4189892 () Bool)

(assert (=> b!6970332 (= e!4189896 e!4189892)))

(declare-fun res!2843183 () Bool)

(assert (=> b!6970332 (= res!2843183 (not ((_ is EmptyLang!17125) (regTwo!34763 r!13765))))))

(assert (=> b!6970332 (=> (not res!2843183) (not e!4189892))))

(declare-fun b!6970333 () Bool)

(assert (=> b!6970333 (= e!4189897 (matchRSpec!4142 (regTwo!34763 (regTwo!34763 r!13765)) s!9351))))

(declare-fun b!6970334 () Bool)

(declare-fun res!2843182 () Bool)

(assert (=> b!6970334 (=> res!2843182 e!4189893)))

(assert (=> b!6970334 (= res!2843182 call!632707)))

(assert (=> b!6970334 (= e!4189891 e!4189893)))

(declare-fun b!6970335 () Bool)

(declare-fun c!1292125 () Bool)

(assert (=> b!6970335 (= c!1292125 ((_ is ElementMatch!17125) (regTwo!34763 r!13765)))))

(assert (=> b!6970335 (= e!4189892 e!4189894)))

(declare-fun b!6970336 () Bool)

(assert (=> b!6970336 (= e!4189894 (= s!9351 (Cons!66808 (c!1292043 (regTwo!34763 r!13765)) Nil!66808)))))

(assert (= (and d!2171106 c!1292124) b!6970329))

(assert (= (and d!2171106 (not c!1292124)) b!6970332))

(assert (= (and b!6970332 res!2843183) b!6970335))

(assert (= (and b!6970335 c!1292125) b!6970336))

(assert (= (and b!6970335 (not c!1292125)) b!6970331))

(assert (= (and b!6970331 c!1292127) b!6970326))

(assert (= (and b!6970331 (not c!1292127)) b!6970330))

(assert (= (and b!6970326 (not res!2843181)) b!6970333))

(assert (= (and b!6970330 c!1292126) b!6970334))

(assert (= (and b!6970330 (not c!1292126)) b!6970328))

(assert (= (and b!6970334 (not res!2843182)) b!6970327))

(assert (= (or b!6970327 b!6970328) bm!632701))

(assert (= (or b!6970329 b!6970334) bm!632702))

(declare-fun m!7659424 () Bool)

(assert (=> bm!632701 m!7659424))

(declare-fun m!7659426 () Bool)

(assert (=> b!6970326 m!7659426))

(assert (=> bm!632702 m!7659354))

(declare-fun m!7659428 () Bool)

(assert (=> b!6970333 m!7659428))

(assert (=> b!6969953 d!2171106))

(declare-fun d!2171108 () Bool)

(declare-fun res!2843188 () Bool)

(declare-fun e!4189902 () Bool)

(assert (=> d!2171108 (=> res!2843188 e!4189902)))

(assert (=> d!2171108 (= res!2843188 ((_ is Nil!66807) l!9142))))

(assert (=> d!2171108 (= (forall!15996 l!9142 lambda!397642) e!4189902)))

(declare-fun b!6970341 () Bool)

(declare-fun e!4189903 () Bool)

(assert (=> b!6970341 (= e!4189902 e!4189903)))

(declare-fun res!2843189 () Bool)

(assert (=> b!6970341 (=> (not res!2843189) (not e!4189903))))

(declare-fun dynLambda!26639 (Int Regex!17125) Bool)

(assert (=> b!6970341 (= res!2843189 (dynLambda!26639 lambda!397642 (h!73255 l!9142)))))

(declare-fun b!6970342 () Bool)

(assert (=> b!6970342 (= e!4189903 (forall!15996 (t!380674 l!9142) lambda!397642))))

(assert (= (and d!2171108 (not res!2843188)) b!6970341))

(assert (= (and b!6970341 res!2843189) b!6970342))

(declare-fun b_lambda!260777 () Bool)

(assert (=> (not b_lambda!260777) (not b!6970341)))

(declare-fun m!7659430 () Bool)

(assert (=> b!6970341 m!7659430))

(declare-fun m!7659432 () Bool)

(assert (=> b!6970342 m!7659432))

(assert (=> start!668402 d!2171108))

(declare-fun bs!1859047 () Bool)

(declare-fun b!6970344 () Bool)

(assert (= bs!1859047 (and b!6970344 b!6970298)))

(declare-fun lambda!397664 () Int)

(assert (=> bs!1859047 (= (and (= (reg!17454 (regOne!34763 r!13765)) (reg!17454 r!13765)) (= (regOne!34763 r!13765) r!13765)) (= lambda!397664 lambda!397660))))

(declare-fun bs!1859048 () Bool)

(assert (= bs!1859048 (and b!6970344 b!6970299)))

(assert (=> bs!1859048 (not (= lambda!397664 lambda!397661))))

(declare-fun bs!1859049 () Bool)

(assert (= bs!1859049 (and b!6970344 b!6970327)))

(assert (=> bs!1859049 (= (and (= (reg!17454 (regOne!34763 r!13765)) (reg!17454 (regTwo!34763 r!13765))) (= (regOne!34763 r!13765) (regTwo!34763 r!13765))) (= lambda!397664 lambda!397662))))

(declare-fun bs!1859050 () Bool)

(assert (= bs!1859050 (and b!6970344 b!6970328)))

(assert (=> bs!1859050 (not (= lambda!397664 lambda!397663))))

(assert (=> b!6970344 true))

(assert (=> b!6970344 true))

(declare-fun bs!1859051 () Bool)

(declare-fun b!6970345 () Bool)

(assert (= bs!1859051 (and b!6970345 b!6970299)))

(declare-fun lambda!397665 () Int)

(assert (=> bs!1859051 (= (and (= (regOne!34762 (regOne!34763 r!13765)) (regOne!34762 r!13765)) (= (regTwo!34762 (regOne!34763 r!13765)) (regTwo!34762 r!13765))) (= lambda!397665 lambda!397661))))

(declare-fun bs!1859052 () Bool)

(assert (= bs!1859052 (and b!6970345 b!6970344)))

(assert (=> bs!1859052 (not (= lambda!397665 lambda!397664))))

(declare-fun bs!1859053 () Bool)

(assert (= bs!1859053 (and b!6970345 b!6970328)))

(assert (=> bs!1859053 (= (and (= (regOne!34762 (regOne!34763 r!13765)) (regOne!34762 (regTwo!34763 r!13765))) (= (regTwo!34762 (regOne!34763 r!13765)) (regTwo!34762 (regTwo!34763 r!13765)))) (= lambda!397665 lambda!397663))))

(declare-fun bs!1859054 () Bool)

(assert (= bs!1859054 (and b!6970345 b!6970298)))

(assert (=> bs!1859054 (not (= lambda!397665 lambda!397660))))

(declare-fun bs!1859055 () Bool)

(assert (= bs!1859055 (and b!6970345 b!6970327)))

(assert (=> bs!1859055 (not (= lambda!397665 lambda!397662))))

(assert (=> b!6970345 true))

(assert (=> b!6970345 true))

(declare-fun call!632708 () Bool)

(declare-fun bm!632703 () Bool)

(declare-fun c!1292130 () Bool)

(assert (=> bm!632703 (= call!632708 (Exists!4088 (ite c!1292130 lambda!397664 lambda!397665)))))

(declare-fun b!6970343 () Bool)

(declare-fun e!4189908 () Bool)

(declare-fun e!4189910 () Bool)

(assert (=> b!6970343 (= e!4189908 e!4189910)))

(declare-fun res!2843190 () Bool)

(assert (=> b!6970343 (= res!2843190 (matchRSpec!4142 (regOne!34763 (regOne!34763 r!13765)) s!9351))))

(assert (=> b!6970343 (=> res!2843190 e!4189910)))

(declare-fun e!4189906 () Bool)

(assert (=> b!6970344 (= e!4189906 call!632708)))

(declare-fun bm!632704 () Bool)

(declare-fun call!632709 () Bool)

(assert (=> bm!632704 (= call!632709 (isEmpty!39011 s!9351))))

(declare-fun d!2171110 () Bool)

(declare-fun c!1292128 () Bool)

(assert (=> d!2171110 (= c!1292128 ((_ is EmptyExpr!17125) (regOne!34763 r!13765)))))

(declare-fun e!4189909 () Bool)

(assert (=> d!2171110 (= (matchRSpec!4142 (regOne!34763 r!13765) s!9351) e!4189909)))

(declare-fun e!4189904 () Bool)

(assert (=> b!6970345 (= e!4189904 call!632708)))

(declare-fun b!6970346 () Bool)

(assert (=> b!6970346 (= e!4189909 call!632709)))

(declare-fun b!6970347 () Bool)

(assert (=> b!6970347 (= e!4189908 e!4189904)))

(assert (=> b!6970347 (= c!1292130 ((_ is Star!17125) (regOne!34763 r!13765)))))

(declare-fun b!6970348 () Bool)

(declare-fun c!1292131 () Bool)

(assert (=> b!6970348 (= c!1292131 ((_ is Union!17125) (regOne!34763 r!13765)))))

(declare-fun e!4189907 () Bool)

(assert (=> b!6970348 (= e!4189907 e!4189908)))

(declare-fun b!6970349 () Bool)

(declare-fun e!4189905 () Bool)

(assert (=> b!6970349 (= e!4189909 e!4189905)))

(declare-fun res!2843192 () Bool)

(assert (=> b!6970349 (= res!2843192 (not ((_ is EmptyLang!17125) (regOne!34763 r!13765))))))

(assert (=> b!6970349 (=> (not res!2843192) (not e!4189905))))

(declare-fun b!6970350 () Bool)

(assert (=> b!6970350 (= e!4189910 (matchRSpec!4142 (regTwo!34763 (regOne!34763 r!13765)) s!9351))))

(declare-fun b!6970351 () Bool)

(declare-fun res!2843191 () Bool)

(assert (=> b!6970351 (=> res!2843191 e!4189906)))

(assert (=> b!6970351 (= res!2843191 call!632709)))

(assert (=> b!6970351 (= e!4189904 e!4189906)))

(declare-fun b!6970352 () Bool)

(declare-fun c!1292129 () Bool)

(assert (=> b!6970352 (= c!1292129 ((_ is ElementMatch!17125) (regOne!34763 r!13765)))))

(assert (=> b!6970352 (= e!4189905 e!4189907)))

(declare-fun b!6970353 () Bool)

(assert (=> b!6970353 (= e!4189907 (= s!9351 (Cons!66808 (c!1292043 (regOne!34763 r!13765)) Nil!66808)))))

(assert (= (and d!2171110 c!1292128) b!6970346))

(assert (= (and d!2171110 (not c!1292128)) b!6970349))

(assert (= (and b!6970349 res!2843192) b!6970352))

(assert (= (and b!6970352 c!1292129) b!6970353))

(assert (= (and b!6970352 (not c!1292129)) b!6970348))

(assert (= (and b!6970348 c!1292131) b!6970343))

(assert (= (and b!6970348 (not c!1292131)) b!6970347))

(assert (= (and b!6970343 (not res!2843190)) b!6970350))

(assert (= (and b!6970347 c!1292130) b!6970351))

(assert (= (and b!6970347 (not c!1292130)) b!6970345))

(assert (= (and b!6970351 (not res!2843191)) b!6970344))

(assert (= (or b!6970344 b!6970345) bm!632703))

(assert (= (or b!6970346 b!6970351) bm!632704))

(declare-fun m!7659434 () Bool)

(assert (=> bm!632703 m!7659434))

(declare-fun m!7659436 () Bool)

(assert (=> b!6970343 m!7659436))

(assert (=> bm!632704 m!7659354))

(declare-fun m!7659438 () Bool)

(assert (=> b!6970350 m!7659438))

(assert (=> b!6969959 d!2171110))

(declare-fun bs!1859056 () Bool)

(declare-fun d!2171112 () Bool)

(assert (= bs!1859056 (and d!2171112 start!668402)))

(declare-fun lambda!397668 () Int)

(assert (=> bs!1859056 (= lambda!397668 lambda!397642)))

(declare-fun b!6970374 () Bool)

(declare-fun e!4189923 () Bool)

(assert (=> b!6970374 (= e!4189923 (isEmpty!39009 (t!380674 l!9142)))))

(declare-fun b!6970376 () Bool)

(declare-fun e!4189926 () Bool)

(declare-fun e!4189927 () Bool)

(assert (=> b!6970376 (= e!4189926 e!4189927)))

(declare-fun c!1292141 () Bool)

(assert (=> b!6970376 (= c!1292141 (isEmpty!39009 (tail!13089 l!9142)))))

(declare-fun b!6970377 () Bool)

(declare-fun e!4189925 () Regex!17125)

(assert (=> b!6970377 (= e!4189925 (h!73255 l!9142))))

(declare-fun b!6970378 () Bool)

(declare-fun e!4189924 () Regex!17125)

(assert (=> b!6970378 (= e!4189924 (Union!17125 (h!73255 l!9142) (generalisedUnion!2600 (t!380674 l!9142))))))

(declare-fun b!6970379 () Bool)

(declare-fun e!4189928 () Bool)

(assert (=> b!6970379 (= e!4189928 e!4189926)))

(declare-fun c!1292142 () Bool)

(assert (=> b!6970379 (= c!1292142 (isEmpty!39009 l!9142))))

(declare-fun b!6970375 () Bool)

(declare-fun lt!2479563 () Regex!17125)

(declare-fun head!14023 (List!66931) Regex!17125)

(assert (=> b!6970375 (= e!4189927 (= lt!2479563 (head!14023 l!9142)))))

(assert (=> d!2171112 e!4189928))

(declare-fun res!2843198 () Bool)

(assert (=> d!2171112 (=> (not res!2843198) (not e!4189928))))

(assert (=> d!2171112 (= res!2843198 (validRegex!8807 lt!2479563))))

(assert (=> d!2171112 (= lt!2479563 e!4189925)))

(declare-fun c!1292143 () Bool)

(assert (=> d!2171112 (= c!1292143 e!4189923)))

(declare-fun res!2843197 () Bool)

(assert (=> d!2171112 (=> (not res!2843197) (not e!4189923))))

(assert (=> d!2171112 (= res!2843197 ((_ is Cons!66807) l!9142))))

(assert (=> d!2171112 (forall!15996 l!9142 lambda!397668)))

(assert (=> d!2171112 (= (generalisedUnion!2600 l!9142) lt!2479563)))

(declare-fun b!6970380 () Bool)

(assert (=> b!6970380 (= e!4189924 EmptyLang!17125)))

(declare-fun b!6970381 () Bool)

(declare-fun isEmptyLang!2063 (Regex!17125) Bool)

(assert (=> b!6970381 (= e!4189926 (isEmptyLang!2063 lt!2479563))))

(declare-fun b!6970382 () Bool)

(assert (=> b!6970382 (= e!4189925 e!4189924)))

(declare-fun c!1292140 () Bool)

(assert (=> b!6970382 (= c!1292140 ((_ is Cons!66807) l!9142))))

(declare-fun b!6970383 () Bool)

(declare-fun isUnion!1491 (Regex!17125) Bool)

(assert (=> b!6970383 (= e!4189927 (isUnion!1491 lt!2479563))))

(assert (= (and d!2171112 res!2843197) b!6970374))

(assert (= (and d!2171112 c!1292143) b!6970377))

(assert (= (and d!2171112 (not c!1292143)) b!6970382))

(assert (= (and b!6970382 c!1292140) b!6970378))

(assert (= (and b!6970382 (not c!1292140)) b!6970380))

(assert (= (and d!2171112 res!2843198) b!6970379))

(assert (= (and b!6970379 c!1292142) b!6970381))

(assert (= (and b!6970379 (not c!1292142)) b!6970376))

(assert (= (and b!6970376 c!1292141) b!6970375))

(assert (= (and b!6970376 (not c!1292141)) b!6970383))

(declare-fun m!7659440 () Bool)

(assert (=> b!6970374 m!7659440))

(declare-fun m!7659442 () Bool)

(assert (=> b!6970375 m!7659442))

(declare-fun m!7659444 () Bool)

(assert (=> b!6970378 m!7659444))

(assert (=> b!6970379 m!7659316))

(assert (=> b!6970376 m!7659294))

(assert (=> b!6970376 m!7659294))

(assert (=> b!6970376 m!7659296))

(declare-fun m!7659446 () Bool)

(assert (=> b!6970381 m!7659446))

(declare-fun m!7659448 () Bool)

(assert (=> b!6970383 m!7659448))

(declare-fun m!7659450 () Bool)

(assert (=> d!2171112 m!7659450))

(declare-fun m!7659452 () Bool)

(assert (=> d!2171112 m!7659452))

(assert (=> b!6969954 d!2171112))

(declare-fun b!6970388 () Bool)

(declare-fun e!4189931 () Bool)

(declare-fun tp!1923697 () Bool)

(assert (=> b!6970388 (= e!4189931 (and tp_is_empty!43475 tp!1923697))))

(assert (=> b!6969957 (= tp!1923642 e!4189931)))

(assert (= (and b!6969957 ((_ is Cons!66808) (t!380675 s!9351))) b!6970388))

(declare-fun b!6970401 () Bool)

(declare-fun e!4189934 () Bool)

(declare-fun tp!1923711 () Bool)

(assert (=> b!6970401 (= e!4189934 tp!1923711)))

(declare-fun b!6970402 () Bool)

(declare-fun tp!1923708 () Bool)

(declare-fun tp!1923710 () Bool)

(assert (=> b!6970402 (= e!4189934 (and tp!1923708 tp!1923710))))

(declare-fun b!6970400 () Bool)

(declare-fun tp!1923712 () Bool)

(declare-fun tp!1923709 () Bool)

(assert (=> b!6970400 (= e!4189934 (and tp!1923712 tp!1923709))))

(assert (=> b!6969952 (= tp!1923640 e!4189934)))

(declare-fun b!6970399 () Bool)

(assert (=> b!6970399 (= e!4189934 tp_is_empty!43475)))

(assert (= (and b!6969952 ((_ is ElementMatch!17125) (regOne!34762 r!13765))) b!6970399))

(assert (= (and b!6969952 ((_ is Concat!25970) (regOne!34762 r!13765))) b!6970400))

(assert (= (and b!6969952 ((_ is Star!17125) (regOne!34762 r!13765))) b!6970401))

(assert (= (and b!6969952 ((_ is Union!17125) (regOne!34762 r!13765))) b!6970402))

(declare-fun b!6970405 () Bool)

(declare-fun e!4189935 () Bool)

(declare-fun tp!1923716 () Bool)

(assert (=> b!6970405 (= e!4189935 tp!1923716)))

(declare-fun b!6970406 () Bool)

(declare-fun tp!1923713 () Bool)

(declare-fun tp!1923715 () Bool)

(assert (=> b!6970406 (= e!4189935 (and tp!1923713 tp!1923715))))

(declare-fun b!6970404 () Bool)

(declare-fun tp!1923717 () Bool)

(declare-fun tp!1923714 () Bool)

(assert (=> b!6970404 (= e!4189935 (and tp!1923717 tp!1923714))))

(assert (=> b!6969952 (= tp!1923641 e!4189935)))

(declare-fun b!6970403 () Bool)

(assert (=> b!6970403 (= e!4189935 tp_is_empty!43475)))

(assert (= (and b!6969952 ((_ is ElementMatch!17125) (regTwo!34762 r!13765))) b!6970403))

(assert (= (and b!6969952 ((_ is Concat!25970) (regTwo!34762 r!13765))) b!6970404))

(assert (= (and b!6969952 ((_ is Star!17125) (regTwo!34762 r!13765))) b!6970405))

(assert (= (and b!6969952 ((_ is Union!17125) (regTwo!34762 r!13765))) b!6970406))

(declare-fun b!6970409 () Bool)

(declare-fun e!4189936 () Bool)

(declare-fun tp!1923721 () Bool)

(assert (=> b!6970409 (= e!4189936 tp!1923721)))

(declare-fun b!6970410 () Bool)

(declare-fun tp!1923718 () Bool)

(declare-fun tp!1923720 () Bool)

(assert (=> b!6970410 (= e!4189936 (and tp!1923718 tp!1923720))))

(declare-fun b!6970408 () Bool)

(declare-fun tp!1923722 () Bool)

(declare-fun tp!1923719 () Bool)

(assert (=> b!6970408 (= e!4189936 (and tp!1923722 tp!1923719))))

(assert (=> b!6969958 (= tp!1923638 e!4189936)))

(declare-fun b!6970407 () Bool)

(assert (=> b!6970407 (= e!4189936 tp_is_empty!43475)))

(assert (= (and b!6969958 ((_ is ElementMatch!17125) (h!73255 l!9142))) b!6970407))

(assert (= (and b!6969958 ((_ is Concat!25970) (h!73255 l!9142))) b!6970408))

(assert (= (and b!6969958 ((_ is Star!17125) (h!73255 l!9142))) b!6970409))

(assert (= (and b!6969958 ((_ is Union!17125) (h!73255 l!9142))) b!6970410))

(declare-fun b!6970415 () Bool)

(declare-fun e!4189939 () Bool)

(declare-fun tp!1923727 () Bool)

(declare-fun tp!1923728 () Bool)

(assert (=> b!6970415 (= e!4189939 (and tp!1923727 tp!1923728))))

(assert (=> b!6969958 (= tp!1923644 e!4189939)))

(assert (= (and b!6969958 ((_ is Cons!66807) (t!380674 l!9142))) b!6970415))

(declare-fun b!6970418 () Bool)

(declare-fun e!4189940 () Bool)

(declare-fun tp!1923732 () Bool)

(assert (=> b!6970418 (= e!4189940 tp!1923732)))

(declare-fun b!6970419 () Bool)

(declare-fun tp!1923729 () Bool)

(declare-fun tp!1923731 () Bool)

(assert (=> b!6970419 (= e!4189940 (and tp!1923729 tp!1923731))))

(declare-fun b!6970417 () Bool)

(declare-fun tp!1923733 () Bool)

(declare-fun tp!1923730 () Bool)

(assert (=> b!6970417 (= e!4189940 (and tp!1923733 tp!1923730))))

(assert (=> b!6969960 (= tp!1923639 e!4189940)))

(declare-fun b!6970416 () Bool)

(assert (=> b!6970416 (= e!4189940 tp_is_empty!43475)))

(assert (= (and b!6969960 ((_ is ElementMatch!17125) (reg!17454 r!13765))) b!6970416))

(assert (= (and b!6969960 ((_ is Concat!25970) (reg!17454 r!13765))) b!6970417))

(assert (= (and b!6969960 ((_ is Star!17125) (reg!17454 r!13765))) b!6970418))

(assert (= (and b!6969960 ((_ is Union!17125) (reg!17454 r!13765))) b!6970419))

(declare-fun b!6970422 () Bool)

(declare-fun e!4189941 () Bool)

(declare-fun tp!1923737 () Bool)

(assert (=> b!6970422 (= e!4189941 tp!1923737)))

(declare-fun b!6970423 () Bool)

(declare-fun tp!1923734 () Bool)

(declare-fun tp!1923736 () Bool)

(assert (=> b!6970423 (= e!4189941 (and tp!1923734 tp!1923736))))

(declare-fun b!6970421 () Bool)

(declare-fun tp!1923738 () Bool)

(declare-fun tp!1923735 () Bool)

(assert (=> b!6970421 (= e!4189941 (and tp!1923738 tp!1923735))))

(assert (=> b!6969955 (= tp!1923645 e!4189941)))

(declare-fun b!6970420 () Bool)

(assert (=> b!6970420 (= e!4189941 tp_is_empty!43475)))

(assert (= (and b!6969955 ((_ is ElementMatch!17125) (regOne!34763 r!13765))) b!6970420))

(assert (= (and b!6969955 ((_ is Concat!25970) (regOne!34763 r!13765))) b!6970421))

(assert (= (and b!6969955 ((_ is Star!17125) (regOne!34763 r!13765))) b!6970422))

(assert (= (and b!6969955 ((_ is Union!17125) (regOne!34763 r!13765))) b!6970423))

(declare-fun b!6970426 () Bool)

(declare-fun e!4189942 () Bool)

(declare-fun tp!1923742 () Bool)

(assert (=> b!6970426 (= e!4189942 tp!1923742)))

(declare-fun b!6970427 () Bool)

(declare-fun tp!1923739 () Bool)

(declare-fun tp!1923741 () Bool)

(assert (=> b!6970427 (= e!4189942 (and tp!1923739 tp!1923741))))

(declare-fun b!6970425 () Bool)

(declare-fun tp!1923743 () Bool)

(declare-fun tp!1923740 () Bool)

(assert (=> b!6970425 (= e!4189942 (and tp!1923743 tp!1923740))))

(assert (=> b!6969955 (= tp!1923643 e!4189942)))

(declare-fun b!6970424 () Bool)

(assert (=> b!6970424 (= e!4189942 tp_is_empty!43475)))

(assert (= (and b!6969955 ((_ is ElementMatch!17125) (regTwo!34763 r!13765))) b!6970424))

(assert (= (and b!6969955 ((_ is Concat!25970) (regTwo!34763 r!13765))) b!6970425))

(assert (= (and b!6969955 ((_ is Star!17125) (regTwo!34763 r!13765))) b!6970426))

(assert (= (and b!6969955 ((_ is Union!17125) (regTwo!34763 r!13765))) b!6970427))

(declare-fun b_lambda!260779 () Bool)

(assert (= b_lambda!260777 (or start!668402 b_lambda!260779)))

(declare-fun bs!1859057 () Bool)

(declare-fun d!2171114 () Bool)

(assert (= bs!1859057 (and d!2171114 start!668402)))

(assert (=> bs!1859057 (= (dynLambda!26639 lambda!397642 (h!73255 l!9142)) (validRegex!8807 (h!73255 l!9142)))))

(declare-fun m!7659454 () Bool)

(assert (=> bs!1859057 m!7659454))

(assert (=> b!6970341 d!2171114))

(check-sat (not bm!632703) (not b!6970322) (not b!6970342) (not b!6970376) (not b!6970379) (not b!6970319) (not b!6970409) (not b_lambda!260779) (not b!6970297) (not b!6970415) (not d!2171074) (not b!6970304) (not bm!632680) (not b!6970408) tp_is_empty!43475 (not b!6970127) (not b!6970375) (not b!6970388) (not b!6970343) (not bm!632700) (not b!6970417) (not b!6970378) (not bm!632704) (not b!6970128) (not bm!632673) (not b!6970317) (not b!6970410) (not b!6970425) (not b!6970418) (not bm!632701) (not b!6970313) (not b!6970381) (not bm!632702) (not b!6970400) (not b!6970404) (not b!6970406) (not b!6970422) (not b!6970423) (not bm!632674) (not b!6970044) (not b!6970427) (not b!6970402) (not bm!632699) (not b!6970405) (not d!2171102) (not b!6970119) (not b!6970426) (not d!2171080) (not b!6970350) (not b!6970383) (not b!6970123) (not b!6970401) (not b!6970421) (not bm!632698) (not b!6970326) (not bs!1859057) (not b!6970324) (not b!6970419) (not b!6970130) (not b!6970374) (not b!6970321) (not d!2171112) (not b!6970125) (not d!2171104) (not b!6970333))
(check-sat)
(get-model)

(declare-fun c!1292167 () Bool)

(declare-fun call!632729 () Bool)

(declare-fun bm!632722 () Bool)

(assert (=> bm!632722 (= call!632729 (validRegex!8807 (ite c!1292167 (regTwo!34763 (ite c!1292065 (regTwo!34763 (regTwo!34763 r!13765)) (regTwo!34762 (regTwo!34763 r!13765)))) (regTwo!34762 (ite c!1292065 (regTwo!34763 (regTwo!34763 r!13765)) (regTwo!34762 (regTwo!34763 r!13765)))))))))

(declare-fun c!1292166 () Bool)

(declare-fun bm!632723 () Bool)

(declare-fun call!632728 () Bool)

(assert (=> bm!632723 (= call!632728 (validRegex!8807 (ite c!1292166 (reg!17454 (ite c!1292065 (regTwo!34763 (regTwo!34763 r!13765)) (regTwo!34762 (regTwo!34763 r!13765)))) (ite c!1292167 (regOne!34763 (ite c!1292065 (regTwo!34763 (regTwo!34763 r!13765)) (regTwo!34762 (regTwo!34763 r!13765)))) (regOne!34762 (ite c!1292065 (regTwo!34763 (regTwo!34763 r!13765)) (regTwo!34762 (regTwo!34763 r!13765))))))))))

(declare-fun b!6970499 () Bool)

(declare-fun res!2843228 () Bool)

(declare-fun e!4189998 () Bool)

(assert (=> b!6970499 (=> res!2843228 e!4189998)))

(assert (=> b!6970499 (= res!2843228 (not ((_ is Concat!25970) (ite c!1292065 (regTwo!34763 (regTwo!34763 r!13765)) (regTwo!34762 (regTwo!34763 r!13765))))))))

(declare-fun e!4189993 () Bool)

(assert (=> b!6970499 (= e!4189993 e!4189998)))

(declare-fun bm!632724 () Bool)

(declare-fun call!632727 () Bool)

(assert (=> bm!632724 (= call!632727 call!632728)))

(declare-fun b!6970500 () Bool)

(declare-fun e!4189996 () Bool)

(declare-fun e!4189997 () Bool)

(assert (=> b!6970500 (= e!4189996 e!4189997)))

(assert (=> b!6970500 (= c!1292166 ((_ is Star!17125) (ite c!1292065 (regTwo!34763 (regTwo!34763 r!13765)) (regTwo!34762 (regTwo!34763 r!13765)))))))

(declare-fun b!6970502 () Bool)

(declare-fun e!4189995 () Bool)

(assert (=> b!6970502 (= e!4189995 call!632728)))

(declare-fun b!6970503 () Bool)

(assert (=> b!6970503 (= e!4189997 e!4189995)))

(declare-fun res!2843226 () Bool)

(assert (=> b!6970503 (= res!2843226 (not (nullable!6910 (reg!17454 (ite c!1292065 (regTwo!34763 (regTwo!34763 r!13765)) (regTwo!34762 (regTwo!34763 r!13765)))))))))

(assert (=> b!6970503 (=> (not res!2843226) (not e!4189995))))

(declare-fun b!6970504 () Bool)

(declare-fun res!2843227 () Bool)

(declare-fun e!4189994 () Bool)

(assert (=> b!6970504 (=> (not res!2843227) (not e!4189994))))

(assert (=> b!6970504 (= res!2843227 call!632727)))

(assert (=> b!6970504 (= e!4189993 e!4189994)))

(declare-fun b!6970505 () Bool)

(declare-fun e!4189992 () Bool)

(assert (=> b!6970505 (= e!4189998 e!4189992)))

(declare-fun res!2843230 () Bool)

(assert (=> b!6970505 (=> (not res!2843230) (not e!4189992))))

(assert (=> b!6970505 (= res!2843230 call!632727)))

(declare-fun d!2171150 () Bool)

(declare-fun res!2843229 () Bool)

(assert (=> d!2171150 (=> res!2843229 e!4189996)))

(assert (=> d!2171150 (= res!2843229 ((_ is ElementMatch!17125) (ite c!1292065 (regTwo!34763 (regTwo!34763 r!13765)) (regTwo!34762 (regTwo!34763 r!13765)))))))

(assert (=> d!2171150 (= (validRegex!8807 (ite c!1292065 (regTwo!34763 (regTwo!34763 r!13765)) (regTwo!34762 (regTwo!34763 r!13765)))) e!4189996)))

(declare-fun b!6970501 () Bool)

(assert (=> b!6970501 (= e!4189992 call!632729)))

(declare-fun b!6970506 () Bool)

(assert (=> b!6970506 (= e!4189994 call!632729)))

(declare-fun b!6970507 () Bool)

(assert (=> b!6970507 (= e!4189997 e!4189993)))

(assert (=> b!6970507 (= c!1292167 ((_ is Union!17125) (ite c!1292065 (regTwo!34763 (regTwo!34763 r!13765)) (regTwo!34762 (regTwo!34763 r!13765)))))))

(assert (= (and d!2171150 (not res!2843229)) b!6970500))

(assert (= (and b!6970500 c!1292166) b!6970503))

(assert (= (and b!6970500 (not c!1292166)) b!6970507))

(assert (= (and b!6970503 res!2843226) b!6970502))

(assert (= (and b!6970507 c!1292167) b!6970504))

(assert (= (and b!6970507 (not c!1292167)) b!6970499))

(assert (= (and b!6970504 res!2843227) b!6970506))

(assert (= (and b!6970499 (not res!2843228)) b!6970505))

(assert (= (and b!6970505 res!2843230) b!6970501))

(assert (= (or b!6970504 b!6970505) bm!632724))

(assert (= (or b!6970506 b!6970501) bm!632722))

(assert (= (or b!6970502 bm!632724) bm!632723))

(declare-fun m!7659506 () Bool)

(assert (=> bm!632722 m!7659506))

(declare-fun m!7659508 () Bool)

(assert (=> bm!632723 m!7659508))

(declare-fun m!7659510 () Bool)

(assert (=> b!6970503 m!7659510))

(assert (=> bm!632673 d!2171150))

(declare-fun d!2171158 () Bool)

(assert (=> d!2171158 (= (isEmpty!39011 s!9351) ((_ is Nil!66808) s!9351))))

(assert (=> bm!632699 d!2171158))

(declare-fun d!2171162 () Bool)

(assert (=> d!2171162 (= (isEmpty!39011 (tail!13091 s!9351)) ((_ is Nil!66808) (tail!13091 s!9351)))))

(assert (=> b!6970322 d!2171162))

(declare-fun d!2171164 () Bool)

(assert (=> d!2171164 (= (tail!13091 s!9351) (t!380675 s!9351))))

(assert (=> b!6970322 d!2171164))

(declare-fun d!2171168 () Bool)

(declare-fun nullableFct!2592 (Regex!17125) Bool)

(assert (=> d!2171168 (= (nullable!6910 r!13765) (nullableFct!2592 r!13765))))

(declare-fun bs!1859140 () Bool)

(assert (= bs!1859140 d!2171168))

(declare-fun m!7659526 () Bool)

(assert (=> bs!1859140 m!7659526))

(assert (=> b!6970321 d!2171168))

(declare-fun bm!632726 () Bool)

(declare-fun call!632733 () Bool)

(declare-fun c!1292172 () Bool)

(assert (=> bm!632726 (= call!632733 (validRegex!8807 (ite c!1292172 (regTwo!34763 (h!73255 l!9142)) (regTwo!34762 (h!73255 l!9142)))))))

(declare-fun c!1292171 () Bool)

(declare-fun call!632732 () Bool)

(declare-fun bm!632727 () Bool)

(assert (=> bm!632727 (= call!632732 (validRegex!8807 (ite c!1292171 (reg!17454 (h!73255 l!9142)) (ite c!1292172 (regOne!34763 (h!73255 l!9142)) (regOne!34762 (h!73255 l!9142))))))))

(declare-fun b!6970522 () Bool)

(declare-fun res!2843241 () Bool)

(declare-fun e!4190012 () Bool)

(assert (=> b!6970522 (=> res!2843241 e!4190012)))

(assert (=> b!6970522 (= res!2843241 (not ((_ is Concat!25970) (h!73255 l!9142))))))

(declare-fun e!4190007 () Bool)

(assert (=> b!6970522 (= e!4190007 e!4190012)))

(declare-fun bm!632728 () Bool)

(declare-fun call!632731 () Bool)

(assert (=> bm!632728 (= call!632731 call!632732)))

(declare-fun b!6970523 () Bool)

(declare-fun e!4190010 () Bool)

(declare-fun e!4190011 () Bool)

(assert (=> b!6970523 (= e!4190010 e!4190011)))

(assert (=> b!6970523 (= c!1292171 ((_ is Star!17125) (h!73255 l!9142)))))

(declare-fun b!6970525 () Bool)

(declare-fun e!4190009 () Bool)

(assert (=> b!6970525 (= e!4190009 call!632732)))

(declare-fun b!6970526 () Bool)

(assert (=> b!6970526 (= e!4190011 e!4190009)))

(declare-fun res!2843239 () Bool)

(assert (=> b!6970526 (= res!2843239 (not (nullable!6910 (reg!17454 (h!73255 l!9142)))))))

(assert (=> b!6970526 (=> (not res!2843239) (not e!4190009))))

(declare-fun b!6970527 () Bool)

(declare-fun res!2843240 () Bool)

(declare-fun e!4190008 () Bool)

(assert (=> b!6970527 (=> (not res!2843240) (not e!4190008))))

(assert (=> b!6970527 (= res!2843240 call!632731)))

(assert (=> b!6970527 (= e!4190007 e!4190008)))

(declare-fun b!6970528 () Bool)

(declare-fun e!4190006 () Bool)

(assert (=> b!6970528 (= e!4190012 e!4190006)))

(declare-fun res!2843243 () Bool)

(assert (=> b!6970528 (=> (not res!2843243) (not e!4190006))))

(assert (=> b!6970528 (= res!2843243 call!632731)))

(declare-fun d!2171170 () Bool)

(declare-fun res!2843242 () Bool)

(assert (=> d!2171170 (=> res!2843242 e!4190010)))

(assert (=> d!2171170 (= res!2843242 ((_ is ElementMatch!17125) (h!73255 l!9142)))))

(assert (=> d!2171170 (= (validRegex!8807 (h!73255 l!9142)) e!4190010)))

(declare-fun b!6970524 () Bool)

(assert (=> b!6970524 (= e!4190006 call!632733)))

(declare-fun b!6970529 () Bool)

(assert (=> b!6970529 (= e!4190008 call!632733)))

(declare-fun b!6970530 () Bool)

(assert (=> b!6970530 (= e!4190011 e!4190007)))

(assert (=> b!6970530 (= c!1292172 ((_ is Union!17125) (h!73255 l!9142)))))

(assert (= (and d!2171170 (not res!2843242)) b!6970523))

(assert (= (and b!6970523 c!1292171) b!6970526))

(assert (= (and b!6970523 (not c!1292171)) b!6970530))

(assert (= (and b!6970526 res!2843239) b!6970525))

(assert (= (and b!6970530 c!1292172) b!6970527))

(assert (= (and b!6970530 (not c!1292172)) b!6970522))

(assert (= (and b!6970527 res!2843240) b!6970529))

(assert (= (and b!6970522 (not res!2843241)) b!6970528))

(assert (= (and b!6970528 res!2843243) b!6970524))

(assert (= (or b!6970527 b!6970528) bm!632728))

(assert (= (or b!6970529 b!6970524) bm!632726))

(assert (= (or b!6970525 bm!632728) bm!632727))

(declare-fun m!7659528 () Bool)

(assert (=> bm!632726 m!7659528))

(declare-fun m!7659530 () Bool)

(assert (=> bm!632727 m!7659530))

(declare-fun m!7659532 () Bool)

(assert (=> b!6970526 m!7659532))

(assert (=> bs!1859057 d!2171170))

(declare-fun bs!1859141 () Bool)

(declare-fun b!6970532 () Bool)

(assert (= bs!1859141 (and b!6970532 b!6970299)))

(declare-fun lambda!397677 () Int)

(assert (=> bs!1859141 (not (= lambda!397677 lambda!397661))))

(declare-fun bs!1859142 () Bool)

(assert (= bs!1859142 (and b!6970532 b!6970345)))

(assert (=> bs!1859142 (not (= lambda!397677 lambda!397665))))

(declare-fun bs!1859143 () Bool)

(assert (= bs!1859143 (and b!6970532 b!6970344)))

(assert (=> bs!1859143 (= (and (= (reg!17454 (regTwo!34763 (regTwo!34763 r!13765))) (reg!17454 (regOne!34763 r!13765))) (= (regTwo!34763 (regTwo!34763 r!13765)) (regOne!34763 r!13765))) (= lambda!397677 lambda!397664))))

(declare-fun bs!1859144 () Bool)

(assert (= bs!1859144 (and b!6970532 b!6970328)))

(assert (=> bs!1859144 (not (= lambda!397677 lambda!397663))))

(declare-fun bs!1859145 () Bool)

(assert (= bs!1859145 (and b!6970532 b!6970298)))

(assert (=> bs!1859145 (= (and (= (reg!17454 (regTwo!34763 (regTwo!34763 r!13765))) (reg!17454 r!13765)) (= (regTwo!34763 (regTwo!34763 r!13765)) r!13765)) (= lambda!397677 lambda!397660))))

(declare-fun bs!1859146 () Bool)

(assert (= bs!1859146 (and b!6970532 b!6970327)))

(assert (=> bs!1859146 (= (and (= (reg!17454 (regTwo!34763 (regTwo!34763 r!13765))) (reg!17454 (regTwo!34763 r!13765))) (= (regTwo!34763 (regTwo!34763 r!13765)) (regTwo!34763 r!13765))) (= lambda!397677 lambda!397662))))

(assert (=> b!6970532 true))

(assert (=> b!6970532 true))

(declare-fun bs!1859147 () Bool)

(declare-fun b!6970533 () Bool)

(assert (= bs!1859147 (and b!6970533 b!6970299)))

(declare-fun lambda!397678 () Int)

(assert (=> bs!1859147 (= (and (= (regOne!34762 (regTwo!34763 (regTwo!34763 r!13765))) (regOne!34762 r!13765)) (= (regTwo!34762 (regTwo!34763 (regTwo!34763 r!13765))) (regTwo!34762 r!13765))) (= lambda!397678 lambda!397661))))

(declare-fun bs!1859148 () Bool)

(assert (= bs!1859148 (and b!6970533 b!6970532)))

(assert (=> bs!1859148 (not (= lambda!397678 lambda!397677))))

(declare-fun bs!1859149 () Bool)

(assert (= bs!1859149 (and b!6970533 b!6970345)))

(assert (=> bs!1859149 (= (and (= (regOne!34762 (regTwo!34763 (regTwo!34763 r!13765))) (regOne!34762 (regOne!34763 r!13765))) (= (regTwo!34762 (regTwo!34763 (regTwo!34763 r!13765))) (regTwo!34762 (regOne!34763 r!13765)))) (= lambda!397678 lambda!397665))))

(declare-fun bs!1859150 () Bool)

(assert (= bs!1859150 (and b!6970533 b!6970344)))

(assert (=> bs!1859150 (not (= lambda!397678 lambda!397664))))

(declare-fun bs!1859151 () Bool)

(assert (= bs!1859151 (and b!6970533 b!6970328)))

(assert (=> bs!1859151 (= (and (= (regOne!34762 (regTwo!34763 (regTwo!34763 r!13765))) (regOne!34762 (regTwo!34763 r!13765))) (= (regTwo!34762 (regTwo!34763 (regTwo!34763 r!13765))) (regTwo!34762 (regTwo!34763 r!13765)))) (= lambda!397678 lambda!397663))))

(declare-fun bs!1859152 () Bool)

(assert (= bs!1859152 (and b!6970533 b!6970298)))

(assert (=> bs!1859152 (not (= lambda!397678 lambda!397660))))

(declare-fun bs!1859153 () Bool)

(assert (= bs!1859153 (and b!6970533 b!6970327)))

(assert (=> bs!1859153 (not (= lambda!397678 lambda!397662))))

(assert (=> b!6970533 true))

(assert (=> b!6970533 true))

(declare-fun call!632734 () Bool)

(declare-fun bm!632729 () Bool)

(declare-fun c!1292175 () Bool)

(assert (=> bm!632729 (= call!632734 (Exists!4088 (ite c!1292175 lambda!397677 lambda!397678)))))

(declare-fun b!6970531 () Bool)

(declare-fun e!4190017 () Bool)

(declare-fun e!4190019 () Bool)

(assert (=> b!6970531 (= e!4190017 e!4190019)))

(declare-fun res!2843244 () Bool)

(assert (=> b!6970531 (= res!2843244 (matchRSpec!4142 (regOne!34763 (regTwo!34763 (regTwo!34763 r!13765))) s!9351))))

(assert (=> b!6970531 (=> res!2843244 e!4190019)))

(declare-fun e!4190015 () Bool)

(assert (=> b!6970532 (= e!4190015 call!632734)))

(declare-fun bm!632730 () Bool)

(declare-fun call!632735 () Bool)

(assert (=> bm!632730 (= call!632735 (isEmpty!39011 s!9351))))

(declare-fun d!2171172 () Bool)

(declare-fun c!1292173 () Bool)

(assert (=> d!2171172 (= c!1292173 ((_ is EmptyExpr!17125) (regTwo!34763 (regTwo!34763 r!13765))))))

(declare-fun e!4190018 () Bool)

(assert (=> d!2171172 (= (matchRSpec!4142 (regTwo!34763 (regTwo!34763 r!13765)) s!9351) e!4190018)))

(declare-fun e!4190013 () Bool)

(assert (=> b!6970533 (= e!4190013 call!632734)))

(declare-fun b!6970534 () Bool)

(assert (=> b!6970534 (= e!4190018 call!632735)))

(declare-fun b!6970535 () Bool)

(assert (=> b!6970535 (= e!4190017 e!4190013)))

(assert (=> b!6970535 (= c!1292175 ((_ is Star!17125) (regTwo!34763 (regTwo!34763 r!13765))))))

(declare-fun b!6970536 () Bool)

(declare-fun c!1292176 () Bool)

(assert (=> b!6970536 (= c!1292176 ((_ is Union!17125) (regTwo!34763 (regTwo!34763 r!13765))))))

(declare-fun e!4190016 () Bool)

(assert (=> b!6970536 (= e!4190016 e!4190017)))

(declare-fun b!6970537 () Bool)

(declare-fun e!4190014 () Bool)

(assert (=> b!6970537 (= e!4190018 e!4190014)))

(declare-fun res!2843246 () Bool)

(assert (=> b!6970537 (= res!2843246 (not ((_ is EmptyLang!17125) (regTwo!34763 (regTwo!34763 r!13765)))))))

(assert (=> b!6970537 (=> (not res!2843246) (not e!4190014))))

(declare-fun b!6970538 () Bool)

(assert (=> b!6970538 (= e!4190019 (matchRSpec!4142 (regTwo!34763 (regTwo!34763 (regTwo!34763 r!13765))) s!9351))))

(declare-fun b!6970539 () Bool)

(declare-fun res!2843245 () Bool)

(assert (=> b!6970539 (=> res!2843245 e!4190015)))

(assert (=> b!6970539 (= res!2843245 call!632735)))

(assert (=> b!6970539 (= e!4190013 e!4190015)))

(declare-fun b!6970540 () Bool)

(declare-fun c!1292174 () Bool)

(assert (=> b!6970540 (= c!1292174 ((_ is ElementMatch!17125) (regTwo!34763 (regTwo!34763 r!13765))))))

(assert (=> b!6970540 (= e!4190014 e!4190016)))

(declare-fun b!6970541 () Bool)

(assert (=> b!6970541 (= e!4190016 (= s!9351 (Cons!66808 (c!1292043 (regTwo!34763 (regTwo!34763 r!13765))) Nil!66808)))))

(assert (= (and d!2171172 c!1292173) b!6970534))

(assert (= (and d!2171172 (not c!1292173)) b!6970537))

(assert (= (and b!6970537 res!2843246) b!6970540))

(assert (= (and b!6970540 c!1292174) b!6970541))

(assert (= (and b!6970540 (not c!1292174)) b!6970536))

(assert (= (and b!6970536 c!1292176) b!6970531))

(assert (= (and b!6970536 (not c!1292176)) b!6970535))

(assert (= (and b!6970531 (not res!2843244)) b!6970538))

(assert (= (and b!6970535 c!1292175) b!6970539))

(assert (= (and b!6970535 (not c!1292175)) b!6970533))

(assert (= (and b!6970539 (not res!2843245)) b!6970532))

(assert (= (or b!6970532 b!6970533) bm!632729))

(assert (= (or b!6970534 b!6970539) bm!632730))

(declare-fun m!7659534 () Bool)

(assert (=> bm!632729 m!7659534))

(declare-fun m!7659536 () Bool)

(assert (=> b!6970531 m!7659536))

(assert (=> bm!632730 m!7659354))

(declare-fun m!7659538 () Bool)

(assert (=> b!6970538 m!7659538))

(assert (=> b!6970333 d!2171172))

(declare-fun d!2171174 () Bool)

(declare-fun res!2843247 () Bool)

(declare-fun e!4190030 () Bool)

(assert (=> d!2171174 (=> res!2843247 e!4190030)))

(assert (=> d!2171174 (= res!2843247 ((_ is Nil!66807) (t!380674 l!9142)))))

(assert (=> d!2171174 (= (forall!15996 (t!380674 l!9142) lambda!397642) e!4190030)))

(declare-fun b!6970562 () Bool)

(declare-fun e!4190031 () Bool)

(assert (=> b!6970562 (= e!4190030 e!4190031)))

(declare-fun res!2843248 () Bool)

(assert (=> b!6970562 (=> (not res!2843248) (not e!4190031))))

(assert (=> b!6970562 (= res!2843248 (dynLambda!26639 lambda!397642 (h!73255 (t!380674 l!9142))))))

(declare-fun b!6970563 () Bool)

(assert (=> b!6970563 (= e!4190031 (forall!15996 (t!380674 (t!380674 l!9142)) lambda!397642))))

(assert (= (and d!2171174 (not res!2843247)) b!6970562))

(assert (= (and b!6970562 res!2843248) b!6970563))

(declare-fun b_lambda!260781 () Bool)

(assert (=> (not b_lambda!260781) (not b!6970562)))

(declare-fun m!7659540 () Bool)

(assert (=> b!6970562 m!7659540))

(declare-fun m!7659542 () Bool)

(assert (=> b!6970563 m!7659542))

(assert (=> b!6970342 d!2171174))

(declare-fun d!2171176 () Bool)

(assert (=> d!2171176 (= (head!14023 l!9142) (h!73255 l!9142))))

(assert (=> b!6970375 d!2171176))

(declare-fun d!2171182 () Bool)

(assert (=> d!2171182 (= (head!14022 s!9351) (h!73256 s!9351))))

(assert (=> b!6970324 d!2171182))

(declare-fun d!2171184 () Bool)

(assert (=> d!2171184 (= (isEmpty!39009 (t!380674 l!9142)) ((_ is Nil!66807) (t!380674 l!9142)))))

(assert (=> b!6970374 d!2171184))

(declare-fun bm!632744 () Bool)

(declare-fun c!1292196 () Bool)

(declare-fun call!632751 () Bool)

(assert (=> bm!632744 (= call!632751 (validRegex!8807 (ite c!1292196 (regTwo!34763 (ite c!1292064 (reg!17454 (regTwo!34763 r!13765)) (ite c!1292065 (regOne!34763 (regTwo!34763 r!13765)) (regOne!34762 (regTwo!34763 r!13765))))) (regTwo!34762 (ite c!1292064 (reg!17454 (regTwo!34763 r!13765)) (ite c!1292065 (regOne!34763 (regTwo!34763 r!13765)) (regOne!34762 (regTwo!34763 r!13765))))))))))

(declare-fun bm!632745 () Bool)

(declare-fun call!632750 () Bool)

(declare-fun c!1292195 () Bool)

(assert (=> bm!632745 (= call!632750 (validRegex!8807 (ite c!1292195 (reg!17454 (ite c!1292064 (reg!17454 (regTwo!34763 r!13765)) (ite c!1292065 (regOne!34763 (regTwo!34763 r!13765)) (regOne!34762 (regTwo!34763 r!13765))))) (ite c!1292196 (regOne!34763 (ite c!1292064 (reg!17454 (regTwo!34763 r!13765)) (ite c!1292065 (regOne!34763 (regTwo!34763 r!13765)) (regOne!34762 (regTwo!34763 r!13765))))) (regOne!34762 (ite c!1292064 (reg!17454 (regTwo!34763 r!13765)) (ite c!1292065 (regOne!34763 (regTwo!34763 r!13765)) (regOne!34762 (regTwo!34763 r!13765)))))))))))

(declare-fun b!6970588 () Bool)

(declare-fun res!2843259 () Bool)

(declare-fun e!4190050 () Bool)

(assert (=> b!6970588 (=> res!2843259 e!4190050)))

(assert (=> b!6970588 (= res!2843259 (not ((_ is Concat!25970) (ite c!1292064 (reg!17454 (regTwo!34763 r!13765)) (ite c!1292065 (regOne!34763 (regTwo!34763 r!13765)) (regOne!34762 (regTwo!34763 r!13765)))))))))

(declare-fun e!4190045 () Bool)

(assert (=> b!6970588 (= e!4190045 e!4190050)))

(declare-fun bm!632746 () Bool)

(declare-fun call!632749 () Bool)

(assert (=> bm!632746 (= call!632749 call!632750)))

(declare-fun b!6970589 () Bool)

(declare-fun e!4190048 () Bool)

(declare-fun e!4190049 () Bool)

(assert (=> b!6970589 (= e!4190048 e!4190049)))

(assert (=> b!6970589 (= c!1292195 ((_ is Star!17125) (ite c!1292064 (reg!17454 (regTwo!34763 r!13765)) (ite c!1292065 (regOne!34763 (regTwo!34763 r!13765)) (regOne!34762 (regTwo!34763 r!13765))))))))

(declare-fun b!6970591 () Bool)

(declare-fun e!4190047 () Bool)

(assert (=> b!6970591 (= e!4190047 call!632750)))

(declare-fun b!6970592 () Bool)

(assert (=> b!6970592 (= e!4190049 e!4190047)))

(declare-fun res!2843257 () Bool)

(assert (=> b!6970592 (= res!2843257 (not (nullable!6910 (reg!17454 (ite c!1292064 (reg!17454 (regTwo!34763 r!13765)) (ite c!1292065 (regOne!34763 (regTwo!34763 r!13765)) (regOne!34762 (regTwo!34763 r!13765))))))))))

(assert (=> b!6970592 (=> (not res!2843257) (not e!4190047))))

(declare-fun b!6970593 () Bool)

(declare-fun res!2843258 () Bool)

(declare-fun e!4190046 () Bool)

(assert (=> b!6970593 (=> (not res!2843258) (not e!4190046))))

(assert (=> b!6970593 (= res!2843258 call!632749)))

(assert (=> b!6970593 (= e!4190045 e!4190046)))

(declare-fun b!6970594 () Bool)

(declare-fun e!4190044 () Bool)

(assert (=> b!6970594 (= e!4190050 e!4190044)))

(declare-fun res!2843261 () Bool)

(assert (=> b!6970594 (=> (not res!2843261) (not e!4190044))))

(assert (=> b!6970594 (= res!2843261 call!632749)))

(declare-fun d!2171186 () Bool)

(declare-fun res!2843260 () Bool)

(assert (=> d!2171186 (=> res!2843260 e!4190048)))

(assert (=> d!2171186 (= res!2843260 ((_ is ElementMatch!17125) (ite c!1292064 (reg!17454 (regTwo!34763 r!13765)) (ite c!1292065 (regOne!34763 (regTwo!34763 r!13765)) (regOne!34762 (regTwo!34763 r!13765))))))))

(assert (=> d!2171186 (= (validRegex!8807 (ite c!1292064 (reg!17454 (regTwo!34763 r!13765)) (ite c!1292065 (regOne!34763 (regTwo!34763 r!13765)) (regOne!34762 (regTwo!34763 r!13765))))) e!4190048)))

(declare-fun b!6970590 () Bool)

(assert (=> b!6970590 (= e!4190044 call!632751)))

(declare-fun b!6970595 () Bool)

(assert (=> b!6970595 (= e!4190046 call!632751)))

(declare-fun b!6970596 () Bool)

(assert (=> b!6970596 (= e!4190049 e!4190045)))

(assert (=> b!6970596 (= c!1292196 ((_ is Union!17125) (ite c!1292064 (reg!17454 (regTwo!34763 r!13765)) (ite c!1292065 (regOne!34763 (regTwo!34763 r!13765)) (regOne!34762 (regTwo!34763 r!13765))))))))

(assert (= (and d!2171186 (not res!2843260)) b!6970589))

(assert (= (and b!6970589 c!1292195) b!6970592))

(assert (= (and b!6970589 (not c!1292195)) b!6970596))

(assert (= (and b!6970592 res!2843257) b!6970591))

(assert (= (and b!6970596 c!1292196) b!6970593))

(assert (= (and b!6970596 (not c!1292196)) b!6970588))

(assert (= (and b!6970593 res!2843258) b!6970595))

(assert (= (and b!6970588 (not res!2843259)) b!6970594))

(assert (= (and b!6970594 res!2843261) b!6970590))

(assert (= (or b!6970593 b!6970594) bm!632746))

(assert (= (or b!6970595 b!6970590) bm!632744))

(assert (= (or b!6970591 bm!632746) bm!632745))

(declare-fun m!7659560 () Bool)

(assert (=> bm!632744 m!7659560))

(declare-fun m!7659563 () Bool)

(assert (=> bm!632745 m!7659563))

(declare-fun m!7659566 () Bool)

(assert (=> b!6970592 m!7659566))

(assert (=> bm!632674 d!2171186))

(declare-fun bs!1859154 () Bool)

(declare-fun b!6970608 () Bool)

(assert (= bs!1859154 (and b!6970608 b!6970299)))

(declare-fun lambda!397679 () Int)

(assert (=> bs!1859154 (not (= lambda!397679 lambda!397661))))

(declare-fun bs!1859155 () Bool)

(assert (= bs!1859155 (and b!6970608 b!6970532)))

(assert (=> bs!1859155 (= (and (= (reg!17454 (regOne!34763 (regTwo!34763 r!13765))) (reg!17454 (regTwo!34763 (regTwo!34763 r!13765)))) (= (regOne!34763 (regTwo!34763 r!13765)) (regTwo!34763 (regTwo!34763 r!13765)))) (= lambda!397679 lambda!397677))))

(declare-fun bs!1859158 () Bool)

(assert (= bs!1859158 (and b!6970608 b!6970345)))

(assert (=> bs!1859158 (not (= lambda!397679 lambda!397665))))

(declare-fun bs!1859159 () Bool)

(assert (= bs!1859159 (and b!6970608 b!6970533)))

(assert (=> bs!1859159 (not (= lambda!397679 lambda!397678))))

(declare-fun bs!1859160 () Bool)

(assert (= bs!1859160 (and b!6970608 b!6970344)))

(assert (=> bs!1859160 (= (and (= (reg!17454 (regOne!34763 (regTwo!34763 r!13765))) (reg!17454 (regOne!34763 r!13765))) (= (regOne!34763 (regTwo!34763 r!13765)) (regOne!34763 r!13765))) (= lambda!397679 lambda!397664))))

(declare-fun bs!1859161 () Bool)

(assert (= bs!1859161 (and b!6970608 b!6970328)))

(assert (=> bs!1859161 (not (= lambda!397679 lambda!397663))))

(declare-fun bs!1859162 () Bool)

(assert (= bs!1859162 (and b!6970608 b!6970298)))

(assert (=> bs!1859162 (= (and (= (reg!17454 (regOne!34763 (regTwo!34763 r!13765))) (reg!17454 r!13765)) (= (regOne!34763 (regTwo!34763 r!13765)) r!13765)) (= lambda!397679 lambda!397660))))

(declare-fun bs!1859163 () Bool)

(assert (= bs!1859163 (and b!6970608 b!6970327)))

(assert (=> bs!1859163 (= (and (= (reg!17454 (regOne!34763 (regTwo!34763 r!13765))) (reg!17454 (regTwo!34763 r!13765))) (= (regOne!34763 (regTwo!34763 r!13765)) (regTwo!34763 r!13765))) (= lambda!397679 lambda!397662))))

(assert (=> b!6970608 true))

(assert (=> b!6970608 true))

(declare-fun bs!1859166 () Bool)

(declare-fun b!6970609 () Bool)

(assert (= bs!1859166 (and b!6970609 b!6970299)))

(declare-fun lambda!397681 () Int)

(assert (=> bs!1859166 (= (and (= (regOne!34762 (regOne!34763 (regTwo!34763 r!13765))) (regOne!34762 r!13765)) (= (regTwo!34762 (regOne!34763 (regTwo!34763 r!13765))) (regTwo!34762 r!13765))) (= lambda!397681 lambda!397661))))

(declare-fun bs!1859167 () Bool)

(assert (= bs!1859167 (and b!6970609 b!6970532)))

(assert (=> bs!1859167 (not (= lambda!397681 lambda!397677))))

(declare-fun bs!1859168 () Bool)

(assert (= bs!1859168 (and b!6970609 b!6970345)))

(assert (=> bs!1859168 (= (and (= (regOne!34762 (regOne!34763 (regTwo!34763 r!13765))) (regOne!34762 (regOne!34763 r!13765))) (= (regTwo!34762 (regOne!34763 (regTwo!34763 r!13765))) (regTwo!34762 (regOne!34763 r!13765)))) (= lambda!397681 lambda!397665))))

(declare-fun bs!1859169 () Bool)

(assert (= bs!1859169 (and b!6970609 b!6970608)))

(assert (=> bs!1859169 (not (= lambda!397681 lambda!397679))))

(declare-fun bs!1859170 () Bool)

(assert (= bs!1859170 (and b!6970609 b!6970533)))

(assert (=> bs!1859170 (= (and (= (regOne!34762 (regOne!34763 (regTwo!34763 r!13765))) (regOne!34762 (regTwo!34763 (regTwo!34763 r!13765)))) (= (regTwo!34762 (regOne!34763 (regTwo!34763 r!13765))) (regTwo!34762 (regTwo!34763 (regTwo!34763 r!13765))))) (= lambda!397681 lambda!397678))))

(declare-fun bs!1859171 () Bool)

(assert (= bs!1859171 (and b!6970609 b!6970344)))

(assert (=> bs!1859171 (not (= lambda!397681 lambda!397664))))

(declare-fun bs!1859172 () Bool)

(assert (= bs!1859172 (and b!6970609 b!6970328)))

(assert (=> bs!1859172 (= (and (= (regOne!34762 (regOne!34763 (regTwo!34763 r!13765))) (regOne!34762 (regTwo!34763 r!13765))) (= (regTwo!34762 (regOne!34763 (regTwo!34763 r!13765))) (regTwo!34762 (regTwo!34763 r!13765)))) (= lambda!397681 lambda!397663))))

(declare-fun bs!1859173 () Bool)

(assert (= bs!1859173 (and b!6970609 b!6970298)))

(assert (=> bs!1859173 (not (= lambda!397681 lambda!397660))))

(declare-fun bs!1859174 () Bool)

(assert (= bs!1859174 (and b!6970609 b!6970327)))

(assert (=> bs!1859174 (not (= lambda!397681 lambda!397662))))

(assert (=> b!6970609 true))

(assert (=> b!6970609 true))

(declare-fun call!632756 () Bool)

(declare-fun c!1292204 () Bool)

(declare-fun bm!632751 () Bool)

(assert (=> bm!632751 (= call!632756 (Exists!4088 (ite c!1292204 lambda!397679 lambda!397681)))))

(declare-fun b!6970607 () Bool)

(declare-fun e!4190060 () Bool)

(declare-fun e!4190062 () Bool)

(assert (=> b!6970607 (= e!4190060 e!4190062)))

(declare-fun res!2843262 () Bool)

(assert (=> b!6970607 (= res!2843262 (matchRSpec!4142 (regOne!34763 (regOne!34763 (regTwo!34763 r!13765))) s!9351))))

(assert (=> b!6970607 (=> res!2843262 e!4190062)))

(declare-fun e!4190058 () Bool)

(assert (=> b!6970608 (= e!4190058 call!632756)))

(declare-fun bm!632752 () Bool)

(declare-fun call!632757 () Bool)

(assert (=> bm!632752 (= call!632757 (isEmpty!39011 s!9351))))

(declare-fun d!2171190 () Bool)

(declare-fun c!1292202 () Bool)

(assert (=> d!2171190 (= c!1292202 ((_ is EmptyExpr!17125) (regOne!34763 (regTwo!34763 r!13765))))))

(declare-fun e!4190061 () Bool)

(assert (=> d!2171190 (= (matchRSpec!4142 (regOne!34763 (regTwo!34763 r!13765)) s!9351) e!4190061)))

(declare-fun e!4190056 () Bool)

(assert (=> b!6970609 (= e!4190056 call!632756)))

(declare-fun b!6970610 () Bool)

(assert (=> b!6970610 (= e!4190061 call!632757)))

(declare-fun b!6970611 () Bool)

(assert (=> b!6970611 (= e!4190060 e!4190056)))

(assert (=> b!6970611 (= c!1292204 ((_ is Star!17125) (regOne!34763 (regTwo!34763 r!13765))))))

(declare-fun b!6970612 () Bool)

(declare-fun c!1292205 () Bool)

(assert (=> b!6970612 (= c!1292205 ((_ is Union!17125) (regOne!34763 (regTwo!34763 r!13765))))))

(declare-fun e!4190059 () Bool)

(assert (=> b!6970612 (= e!4190059 e!4190060)))

(declare-fun b!6970613 () Bool)

(declare-fun e!4190057 () Bool)

(assert (=> b!6970613 (= e!4190061 e!4190057)))

(declare-fun res!2843264 () Bool)

(assert (=> b!6970613 (= res!2843264 (not ((_ is EmptyLang!17125) (regOne!34763 (regTwo!34763 r!13765)))))))

(assert (=> b!6970613 (=> (not res!2843264) (not e!4190057))))

(declare-fun b!6970614 () Bool)

(assert (=> b!6970614 (= e!4190062 (matchRSpec!4142 (regTwo!34763 (regOne!34763 (regTwo!34763 r!13765))) s!9351))))

(declare-fun b!6970615 () Bool)

(declare-fun res!2843263 () Bool)

(assert (=> b!6970615 (=> res!2843263 e!4190058)))

(assert (=> b!6970615 (= res!2843263 call!632757)))

(assert (=> b!6970615 (= e!4190056 e!4190058)))

(declare-fun b!6970616 () Bool)

(declare-fun c!1292203 () Bool)

(assert (=> b!6970616 (= c!1292203 ((_ is ElementMatch!17125) (regOne!34763 (regTwo!34763 r!13765))))))

(assert (=> b!6970616 (= e!4190057 e!4190059)))

(declare-fun b!6970617 () Bool)

(assert (=> b!6970617 (= e!4190059 (= s!9351 (Cons!66808 (c!1292043 (regOne!34763 (regTwo!34763 r!13765))) Nil!66808)))))

(assert (= (and d!2171190 c!1292202) b!6970610))

(assert (= (and d!2171190 (not c!1292202)) b!6970613))

(assert (= (and b!6970613 res!2843264) b!6970616))

(assert (= (and b!6970616 c!1292203) b!6970617))

(assert (= (and b!6970616 (not c!1292203)) b!6970612))

(assert (= (and b!6970612 c!1292205) b!6970607))

(assert (= (and b!6970612 (not c!1292205)) b!6970611))

(assert (= (and b!6970607 (not res!2843262)) b!6970614))

(assert (= (and b!6970611 c!1292204) b!6970615))

(assert (= (and b!6970611 (not c!1292204)) b!6970609))

(assert (= (and b!6970615 (not res!2843263)) b!6970608))

(assert (= (or b!6970608 b!6970609) bm!632751))

(assert (= (or b!6970610 b!6970615) bm!632752))

(declare-fun m!7659622 () Bool)

(assert (=> bm!632751 m!7659622))

(declare-fun m!7659624 () Bool)

(assert (=> b!6970607 m!7659624))

(assert (=> bm!632752 m!7659354))

(declare-fun m!7659626 () Bool)

(assert (=> b!6970614 m!7659626))

(assert (=> b!6970326 d!2171190))

(declare-fun bm!632762 () Bool)

(declare-fun call!632769 () Bool)

(declare-fun c!1292217 () Bool)

(assert (=> bm!632762 (= call!632769 (validRegex!8807 (ite c!1292217 (regTwo!34763 lt!2479563) (regTwo!34762 lt!2479563))))))

(declare-fun bm!632763 () Bool)

(declare-fun c!1292216 () Bool)

(declare-fun call!632768 () Bool)

(assert (=> bm!632763 (= call!632768 (validRegex!8807 (ite c!1292216 (reg!17454 lt!2479563) (ite c!1292217 (regOne!34763 lt!2479563) (regOne!34762 lt!2479563)))))))

(declare-fun b!6970725 () Bool)

(declare-fun res!2843288 () Bool)

(declare-fun e!4190118 () Bool)

(assert (=> b!6970725 (=> res!2843288 e!4190118)))

(assert (=> b!6970725 (= res!2843288 (not ((_ is Concat!25970) lt!2479563)))))

(declare-fun e!4190113 () Bool)

(assert (=> b!6970725 (= e!4190113 e!4190118)))

(declare-fun bm!632764 () Bool)

(declare-fun call!632767 () Bool)

(assert (=> bm!632764 (= call!632767 call!632768)))

(declare-fun b!6970726 () Bool)

(declare-fun e!4190116 () Bool)

(declare-fun e!4190117 () Bool)

(assert (=> b!6970726 (= e!4190116 e!4190117)))

(assert (=> b!6970726 (= c!1292216 ((_ is Star!17125) lt!2479563))))

(declare-fun b!6970728 () Bool)

(declare-fun e!4190115 () Bool)

(assert (=> b!6970728 (= e!4190115 call!632768)))

(declare-fun b!6970729 () Bool)

(assert (=> b!6970729 (= e!4190117 e!4190115)))

(declare-fun res!2843286 () Bool)

(assert (=> b!6970729 (= res!2843286 (not (nullable!6910 (reg!17454 lt!2479563))))))

(assert (=> b!6970729 (=> (not res!2843286) (not e!4190115))))

(declare-fun b!6970730 () Bool)

(declare-fun res!2843287 () Bool)

(declare-fun e!4190114 () Bool)

(assert (=> b!6970730 (=> (not res!2843287) (not e!4190114))))

(assert (=> b!6970730 (= res!2843287 call!632767)))

(assert (=> b!6970730 (= e!4190113 e!4190114)))

(declare-fun b!6970731 () Bool)

(declare-fun e!4190111 () Bool)

(assert (=> b!6970731 (= e!4190118 e!4190111)))

(declare-fun res!2843290 () Bool)

(assert (=> b!6970731 (=> (not res!2843290) (not e!4190111))))

(assert (=> b!6970731 (= res!2843290 call!632767)))

(declare-fun d!2171208 () Bool)

(declare-fun res!2843289 () Bool)

(assert (=> d!2171208 (=> res!2843289 e!4190116)))

(assert (=> d!2171208 (= res!2843289 ((_ is ElementMatch!17125) lt!2479563))))

(assert (=> d!2171208 (= (validRegex!8807 lt!2479563) e!4190116)))

(declare-fun b!6970727 () Bool)

(assert (=> b!6970727 (= e!4190111 call!632769)))

(declare-fun b!6970732 () Bool)

(assert (=> b!6970732 (= e!4190114 call!632769)))

(declare-fun b!6970733 () Bool)

(assert (=> b!6970733 (= e!4190117 e!4190113)))

(assert (=> b!6970733 (= c!1292217 ((_ is Union!17125) lt!2479563))))

(assert (= (and d!2171208 (not res!2843289)) b!6970726))

(assert (= (and b!6970726 c!1292216) b!6970729))

(assert (= (and b!6970726 (not c!1292216)) b!6970733))

(assert (= (and b!6970729 res!2843286) b!6970728))

(assert (= (and b!6970733 c!1292217) b!6970730))

(assert (= (and b!6970733 (not c!1292217)) b!6970725))

(assert (= (and b!6970730 res!2843287) b!6970732))

(assert (= (and b!6970725 (not res!2843288)) b!6970731))

(assert (= (and b!6970731 res!2843290) b!6970727))

(assert (= (or b!6970730 b!6970731) bm!632764))

(assert (= (or b!6970732 b!6970727) bm!632762))

(assert (= (or b!6970728 bm!632764) bm!632763))

(declare-fun m!7659628 () Bool)

(assert (=> bm!632762 m!7659628))

(declare-fun m!7659630 () Bool)

(assert (=> bm!632763 m!7659630))

(declare-fun m!7659632 () Bool)

(assert (=> b!6970729 m!7659632))

(assert (=> d!2171112 d!2171208))

(declare-fun d!2171210 () Bool)

(declare-fun res!2843291 () Bool)

(declare-fun e!4190125 () Bool)

(assert (=> d!2171210 (=> res!2843291 e!4190125)))

(assert (=> d!2171210 (= res!2843291 ((_ is Nil!66807) l!9142))))

(assert (=> d!2171210 (= (forall!15996 l!9142 lambda!397668) e!4190125)))

(declare-fun b!6970758 () Bool)

(declare-fun e!4190126 () Bool)

(assert (=> b!6970758 (= e!4190125 e!4190126)))

(declare-fun res!2843292 () Bool)

(assert (=> b!6970758 (=> (not res!2843292) (not e!4190126))))

(assert (=> b!6970758 (= res!2843292 (dynLambda!26639 lambda!397668 (h!73255 l!9142)))))

(declare-fun b!6970759 () Bool)

(assert (=> b!6970759 (= e!4190126 (forall!15996 (t!380674 l!9142) lambda!397668))))

(assert (= (and d!2171210 (not res!2843291)) b!6970758))

(assert (= (and b!6970758 res!2843292) b!6970759))

(declare-fun b_lambda!260787 () Bool)

(assert (=> (not b_lambda!260787) (not b!6970758)))

(declare-fun m!7659634 () Bool)

(assert (=> b!6970758 m!7659634))

(declare-fun m!7659636 () Bool)

(assert (=> b!6970759 m!7659636))

(assert (=> d!2171112 d!2171210))

(assert (=> b!6970317 d!2171182))

(assert (=> b!6970128 d!2171162))

(assert (=> b!6970128 d!2171164))

(declare-fun bs!1859177 () Bool)

(declare-fun b!6970777 () Bool)

(assert (= bs!1859177 (and b!6970777 b!6970299)))

(declare-fun lambda!397682 () Int)

(assert (=> bs!1859177 (not (= lambda!397682 lambda!397661))))

(declare-fun bs!1859178 () Bool)

(assert (= bs!1859178 (and b!6970777 b!6970532)))

(assert (=> bs!1859178 (= (and (= (reg!17454 (regTwo!34763 (regOne!34763 r!13765))) (reg!17454 (regTwo!34763 (regTwo!34763 r!13765)))) (= (regTwo!34763 (regOne!34763 r!13765)) (regTwo!34763 (regTwo!34763 r!13765)))) (= lambda!397682 lambda!397677))))

(declare-fun bs!1859179 () Bool)

(assert (= bs!1859179 (and b!6970777 b!6970345)))

(assert (=> bs!1859179 (not (= lambda!397682 lambda!397665))))

(declare-fun bs!1859180 () Bool)

(assert (= bs!1859180 (and b!6970777 b!6970608)))

(assert (=> bs!1859180 (= (and (= (reg!17454 (regTwo!34763 (regOne!34763 r!13765))) (reg!17454 (regOne!34763 (regTwo!34763 r!13765)))) (= (regTwo!34763 (regOne!34763 r!13765)) (regOne!34763 (regTwo!34763 r!13765)))) (= lambda!397682 lambda!397679))))

(declare-fun bs!1859181 () Bool)

(assert (= bs!1859181 (and b!6970777 b!6970609)))

(assert (=> bs!1859181 (not (= lambda!397682 lambda!397681))))

(declare-fun bs!1859182 () Bool)

(assert (= bs!1859182 (and b!6970777 b!6970533)))

(assert (=> bs!1859182 (not (= lambda!397682 lambda!397678))))

(declare-fun bs!1859183 () Bool)

(assert (= bs!1859183 (and b!6970777 b!6970344)))

(assert (=> bs!1859183 (= (and (= (reg!17454 (regTwo!34763 (regOne!34763 r!13765))) (reg!17454 (regOne!34763 r!13765))) (= (regTwo!34763 (regOne!34763 r!13765)) (regOne!34763 r!13765))) (= lambda!397682 lambda!397664))))

(declare-fun bs!1859184 () Bool)

(assert (= bs!1859184 (and b!6970777 b!6970328)))

(assert (=> bs!1859184 (not (= lambda!397682 lambda!397663))))

(declare-fun bs!1859185 () Bool)

(assert (= bs!1859185 (and b!6970777 b!6970298)))

(assert (=> bs!1859185 (= (and (= (reg!17454 (regTwo!34763 (regOne!34763 r!13765))) (reg!17454 r!13765)) (= (regTwo!34763 (regOne!34763 r!13765)) r!13765)) (= lambda!397682 lambda!397660))))

(declare-fun bs!1859186 () Bool)

(assert (= bs!1859186 (and b!6970777 b!6970327)))

(assert (=> bs!1859186 (= (and (= (reg!17454 (regTwo!34763 (regOne!34763 r!13765))) (reg!17454 (regTwo!34763 r!13765))) (= (regTwo!34763 (regOne!34763 r!13765)) (regTwo!34763 r!13765))) (= lambda!397682 lambda!397662))))

(assert (=> b!6970777 true))

(assert (=> b!6970777 true))

(declare-fun bs!1859187 () Bool)

(declare-fun b!6970778 () Bool)

(assert (= bs!1859187 (and b!6970778 b!6970299)))

(declare-fun lambda!397683 () Int)

(assert (=> bs!1859187 (= (and (= (regOne!34762 (regTwo!34763 (regOne!34763 r!13765))) (regOne!34762 r!13765)) (= (regTwo!34762 (regTwo!34763 (regOne!34763 r!13765))) (regTwo!34762 r!13765))) (= lambda!397683 lambda!397661))))

(declare-fun bs!1859188 () Bool)

(assert (= bs!1859188 (and b!6970778 b!6970345)))

(assert (=> bs!1859188 (= (and (= (regOne!34762 (regTwo!34763 (regOne!34763 r!13765))) (regOne!34762 (regOne!34763 r!13765))) (= (regTwo!34762 (regTwo!34763 (regOne!34763 r!13765))) (regTwo!34762 (regOne!34763 r!13765)))) (= lambda!397683 lambda!397665))))

(declare-fun bs!1859189 () Bool)

(assert (= bs!1859189 (and b!6970778 b!6970608)))

(assert (=> bs!1859189 (not (= lambda!397683 lambda!397679))))

(declare-fun bs!1859190 () Bool)

(assert (= bs!1859190 (and b!6970778 b!6970609)))

(assert (=> bs!1859190 (= (and (= (regOne!34762 (regTwo!34763 (regOne!34763 r!13765))) (regOne!34762 (regOne!34763 (regTwo!34763 r!13765)))) (= (regTwo!34762 (regTwo!34763 (regOne!34763 r!13765))) (regTwo!34762 (regOne!34763 (regTwo!34763 r!13765))))) (= lambda!397683 lambda!397681))))

(declare-fun bs!1859191 () Bool)

(assert (= bs!1859191 (and b!6970778 b!6970533)))

(assert (=> bs!1859191 (= (and (= (regOne!34762 (regTwo!34763 (regOne!34763 r!13765))) (regOne!34762 (regTwo!34763 (regTwo!34763 r!13765)))) (= (regTwo!34762 (regTwo!34763 (regOne!34763 r!13765))) (regTwo!34762 (regTwo!34763 (regTwo!34763 r!13765))))) (= lambda!397683 lambda!397678))))

(declare-fun bs!1859192 () Bool)

(assert (= bs!1859192 (and b!6970778 b!6970344)))

(assert (=> bs!1859192 (not (= lambda!397683 lambda!397664))))

(declare-fun bs!1859193 () Bool)

(assert (= bs!1859193 (and b!6970778 b!6970328)))

(assert (=> bs!1859193 (= (and (= (regOne!34762 (regTwo!34763 (regOne!34763 r!13765))) (regOne!34762 (regTwo!34763 r!13765))) (= (regTwo!34762 (regTwo!34763 (regOne!34763 r!13765))) (regTwo!34762 (regTwo!34763 r!13765)))) (= lambda!397683 lambda!397663))))

(declare-fun bs!1859194 () Bool)

(assert (= bs!1859194 (and b!6970778 b!6970532)))

(assert (=> bs!1859194 (not (= lambda!397683 lambda!397677))))

(declare-fun bs!1859195 () Bool)

(assert (= bs!1859195 (and b!6970778 b!6970777)))

(assert (=> bs!1859195 (not (= lambda!397683 lambda!397682))))

(declare-fun bs!1859196 () Bool)

(assert (= bs!1859196 (and b!6970778 b!6970298)))

(assert (=> bs!1859196 (not (= lambda!397683 lambda!397660))))

(declare-fun bs!1859197 () Bool)

(assert (= bs!1859197 (and b!6970778 b!6970327)))

(assert (=> bs!1859197 (not (= lambda!397683 lambda!397662))))

(assert (=> b!6970778 true))

(assert (=> b!6970778 true))

(declare-fun c!1292220 () Bool)

(declare-fun call!632770 () Bool)

(declare-fun bm!632765 () Bool)

(assert (=> bm!632765 (= call!632770 (Exists!4088 (ite c!1292220 lambda!397682 lambda!397683)))))

(declare-fun b!6970776 () Bool)

(declare-fun e!4190135 () Bool)

(declare-fun e!4190137 () Bool)

(assert (=> b!6970776 (= e!4190135 e!4190137)))

(declare-fun res!2843293 () Bool)

(assert (=> b!6970776 (= res!2843293 (matchRSpec!4142 (regOne!34763 (regTwo!34763 (regOne!34763 r!13765))) s!9351))))

(assert (=> b!6970776 (=> res!2843293 e!4190137)))

(declare-fun e!4190133 () Bool)

(assert (=> b!6970777 (= e!4190133 call!632770)))

(declare-fun bm!632766 () Bool)

(declare-fun call!632771 () Bool)

(assert (=> bm!632766 (= call!632771 (isEmpty!39011 s!9351))))

(declare-fun d!2171212 () Bool)

(declare-fun c!1292218 () Bool)

(assert (=> d!2171212 (= c!1292218 ((_ is EmptyExpr!17125) (regTwo!34763 (regOne!34763 r!13765))))))

(declare-fun e!4190136 () Bool)

(assert (=> d!2171212 (= (matchRSpec!4142 (regTwo!34763 (regOne!34763 r!13765)) s!9351) e!4190136)))

(declare-fun e!4190131 () Bool)

(assert (=> b!6970778 (= e!4190131 call!632770)))

(declare-fun b!6970779 () Bool)

(assert (=> b!6970779 (= e!4190136 call!632771)))

(declare-fun b!6970780 () Bool)

(assert (=> b!6970780 (= e!4190135 e!4190131)))

(assert (=> b!6970780 (= c!1292220 ((_ is Star!17125) (regTwo!34763 (regOne!34763 r!13765))))))

(declare-fun b!6970781 () Bool)

(declare-fun c!1292221 () Bool)

(assert (=> b!6970781 (= c!1292221 ((_ is Union!17125) (regTwo!34763 (regOne!34763 r!13765))))))

(declare-fun e!4190134 () Bool)

(assert (=> b!6970781 (= e!4190134 e!4190135)))

(declare-fun b!6970782 () Bool)

(declare-fun e!4190132 () Bool)

(assert (=> b!6970782 (= e!4190136 e!4190132)))

(declare-fun res!2843295 () Bool)

(assert (=> b!6970782 (= res!2843295 (not ((_ is EmptyLang!17125) (regTwo!34763 (regOne!34763 r!13765)))))))

(assert (=> b!6970782 (=> (not res!2843295) (not e!4190132))))

(declare-fun b!6970783 () Bool)

(assert (=> b!6970783 (= e!4190137 (matchRSpec!4142 (regTwo!34763 (regTwo!34763 (regOne!34763 r!13765))) s!9351))))

(declare-fun b!6970784 () Bool)

(declare-fun res!2843294 () Bool)

(assert (=> b!6970784 (=> res!2843294 e!4190133)))

(assert (=> b!6970784 (= res!2843294 call!632771)))

(assert (=> b!6970784 (= e!4190131 e!4190133)))

(declare-fun b!6970785 () Bool)

(declare-fun c!1292219 () Bool)

(assert (=> b!6970785 (= c!1292219 ((_ is ElementMatch!17125) (regTwo!34763 (regOne!34763 r!13765))))))

(assert (=> b!6970785 (= e!4190132 e!4190134)))

(declare-fun b!6970786 () Bool)

(assert (=> b!6970786 (= e!4190134 (= s!9351 (Cons!66808 (c!1292043 (regTwo!34763 (regOne!34763 r!13765))) Nil!66808)))))

(assert (= (and d!2171212 c!1292218) b!6970779))

(assert (= (and d!2171212 (not c!1292218)) b!6970782))

(assert (= (and b!6970782 res!2843295) b!6970785))

(assert (= (and b!6970785 c!1292219) b!6970786))

(assert (= (and b!6970785 (not c!1292219)) b!6970781))

(assert (= (and b!6970781 c!1292221) b!6970776))

(assert (= (and b!6970781 (not c!1292221)) b!6970780))

(assert (= (and b!6970776 (not res!2843293)) b!6970783))

(assert (= (and b!6970780 c!1292220) b!6970784))

(assert (= (and b!6970780 (not c!1292220)) b!6970778))

(assert (= (and b!6970784 (not res!2843294)) b!6970777))

(assert (= (or b!6970777 b!6970778) bm!632765))

(assert (= (or b!6970779 b!6970784) bm!632766))

(declare-fun m!7659640 () Bool)

(assert (=> bm!632765 m!7659640))

(declare-fun m!7659642 () Bool)

(assert (=> b!6970776 m!7659642))

(assert (=> bm!632766 m!7659354))

(declare-fun m!7659644 () Bool)

(assert (=> b!6970783 m!7659644))

(assert (=> b!6970350 d!2171212))

(declare-fun d!2171218 () Bool)

(declare-fun choose!51907 (Int) Bool)

(assert (=> d!2171218 (= (Exists!4088 (ite c!1292126 lambda!397662 lambda!397663)) (choose!51907 (ite c!1292126 lambda!397662 lambda!397663)))))

(declare-fun bs!1859198 () Bool)

(assert (= bs!1859198 d!2171218))

(declare-fun m!7659646 () Bool)

(assert (=> bs!1859198 m!7659646))

(assert (=> bm!632701 d!2171218))

(assert (=> b!6970297 d!2171110))

(declare-fun d!2171220 () Bool)

(assert (=> d!2171220 (= (Exists!4088 (ite c!1292119 lambda!397660 lambda!397661)) (choose!51907 (ite c!1292119 lambda!397660 lambda!397661)))))

(declare-fun bs!1859199 () Bool)

(assert (= bs!1859199 d!2171220))

(declare-fun m!7659648 () Bool)

(assert (=> bs!1859199 m!7659648))

(assert (=> bm!632698 d!2171220))

(declare-fun b!6970807 () Bool)

(declare-fun res!2843303 () Bool)

(declare-fun e!4190148 () Bool)

(assert (=> b!6970807 (=> res!2843303 e!4190148)))

(declare-fun e!4190143 () Bool)

(assert (=> b!6970807 (= res!2843303 e!4190143)))

(declare-fun res!2843296 () Bool)

(assert (=> b!6970807 (=> (not res!2843296) (not e!4190143))))

(declare-fun lt!2479571 () Bool)

(assert (=> b!6970807 (= res!2843296 lt!2479571)))

(declare-fun b!6970808 () Bool)

(declare-fun res!2843298 () Bool)

(assert (=> b!6970808 (=> (not res!2843298) (not e!4190143))))

(assert (=> b!6970808 (= res!2843298 (isEmpty!39011 (tail!13091 (tail!13091 s!9351))))))

(declare-fun b!6970809 () Bool)

(declare-fun e!4190147 () Bool)

(assert (=> b!6970809 (= e!4190147 (not lt!2479571))))

(declare-fun d!2171222 () Bool)

(declare-fun e!4190144 () Bool)

(assert (=> d!2171222 e!4190144))

(declare-fun c!1292224 () Bool)

(assert (=> d!2171222 (= c!1292224 ((_ is EmptyExpr!17125) (derivativeStep!5535 r!13765 (head!14022 s!9351))))))

(declare-fun e!4190146 () Bool)

(assert (=> d!2171222 (= lt!2479571 e!4190146)))

(declare-fun c!1292223 () Bool)

(assert (=> d!2171222 (= c!1292223 (isEmpty!39011 (tail!13091 s!9351)))))

(assert (=> d!2171222 (validRegex!8807 (derivativeStep!5535 r!13765 (head!14022 s!9351)))))

(assert (=> d!2171222 (= (matchR!9227 (derivativeStep!5535 r!13765 (head!14022 s!9351)) (tail!13091 s!9351)) lt!2479571)))

(declare-fun b!6970810 () Bool)

(declare-fun e!4190145 () Bool)

(declare-fun e!4190149 () Bool)

(assert (=> b!6970810 (= e!4190145 e!4190149)))

(declare-fun res!2843300 () Bool)

(assert (=> b!6970810 (=> res!2843300 e!4190149)))

(declare-fun call!632772 () Bool)

(assert (=> b!6970810 (= res!2843300 call!632772)))

(declare-fun b!6970811 () Bool)

(declare-fun res!2843299 () Bool)

(assert (=> b!6970811 (=> (not res!2843299) (not e!4190143))))

(assert (=> b!6970811 (= res!2843299 (not call!632772))))

(declare-fun b!6970812 () Bool)

(assert (=> b!6970812 (= e!4190149 (not (= (head!14022 (tail!13091 s!9351)) (c!1292043 (derivativeStep!5535 r!13765 (head!14022 s!9351))))))))

(declare-fun b!6970813 () Bool)

(assert (=> b!6970813 (= e!4190144 e!4190147)))

(declare-fun c!1292222 () Bool)

(assert (=> b!6970813 (= c!1292222 ((_ is EmptyLang!17125) (derivativeStep!5535 r!13765 (head!14022 s!9351))))))

(declare-fun bm!632767 () Bool)

(assert (=> bm!632767 (= call!632772 (isEmpty!39011 (tail!13091 s!9351)))))

(declare-fun b!6970814 () Bool)

(assert (=> b!6970814 (= e!4190146 (matchR!9227 (derivativeStep!5535 (derivativeStep!5535 r!13765 (head!14022 s!9351)) (head!14022 (tail!13091 s!9351))) (tail!13091 (tail!13091 s!9351))))))

(declare-fun b!6970815 () Bool)

(assert (=> b!6970815 (= e!4190144 (= lt!2479571 call!632772))))

(declare-fun b!6970816 () Bool)

(assert (=> b!6970816 (= e!4190146 (nullable!6910 (derivativeStep!5535 r!13765 (head!14022 s!9351))))))

(declare-fun b!6970817 () Bool)

(declare-fun res!2843297 () Bool)

(assert (=> b!6970817 (=> res!2843297 e!4190149)))

(assert (=> b!6970817 (= res!2843297 (not (isEmpty!39011 (tail!13091 (tail!13091 s!9351)))))))

(declare-fun b!6970818 () Bool)

(declare-fun res!2843302 () Bool)

(assert (=> b!6970818 (=> res!2843302 e!4190148)))

(assert (=> b!6970818 (= res!2843302 (not ((_ is ElementMatch!17125) (derivativeStep!5535 r!13765 (head!14022 s!9351)))))))

(assert (=> b!6970818 (= e!4190147 e!4190148)))

(declare-fun b!6970819 () Bool)

(assert (=> b!6970819 (= e!4190143 (= (head!14022 (tail!13091 s!9351)) (c!1292043 (derivativeStep!5535 r!13765 (head!14022 s!9351)))))))

(declare-fun b!6970820 () Bool)

(assert (=> b!6970820 (= e!4190148 e!4190145)))

(declare-fun res!2843301 () Bool)

(assert (=> b!6970820 (=> (not res!2843301) (not e!4190145))))

(assert (=> b!6970820 (= res!2843301 (not lt!2479571))))

(assert (= (and d!2171222 c!1292223) b!6970816))

(assert (= (and d!2171222 (not c!1292223)) b!6970814))

(assert (= (and d!2171222 c!1292224) b!6970815))

(assert (= (and d!2171222 (not c!1292224)) b!6970813))

(assert (= (and b!6970813 c!1292222) b!6970809))

(assert (= (and b!6970813 (not c!1292222)) b!6970818))

(assert (= (and b!6970818 (not res!2843302)) b!6970807))

(assert (= (and b!6970807 res!2843296) b!6970811))

(assert (= (and b!6970811 res!2843299) b!6970808))

(assert (= (and b!6970808 res!2843298) b!6970819))

(assert (= (and b!6970807 (not res!2843303)) b!6970820))

(assert (= (and b!6970820 res!2843301) b!6970810))

(assert (= (and b!6970810 (not res!2843300)) b!6970817))

(assert (= (and b!6970817 (not res!2843297)) b!6970812))

(assert (= (or b!6970815 b!6970810 b!6970811) bm!632767))

(assert (=> d!2171222 m!7659358))

(assert (=> d!2171222 m!7659360))

(assert (=> d!2171222 m!7659418))

(declare-fun m!7659650 () Bool)

(assert (=> d!2171222 m!7659650))

(assert (=> b!6970817 m!7659358))

(declare-fun m!7659652 () Bool)

(assert (=> b!6970817 m!7659652))

(assert (=> b!6970817 m!7659652))

(declare-fun m!7659654 () Bool)

(assert (=> b!6970817 m!7659654))

(assert (=> b!6970816 m!7659418))

(declare-fun m!7659656 () Bool)

(assert (=> b!6970816 m!7659656))

(assert (=> bm!632767 m!7659358))

(assert (=> bm!632767 m!7659360))

(assert (=> b!6970812 m!7659358))

(declare-fun m!7659658 () Bool)

(assert (=> b!6970812 m!7659658))

(assert (=> b!6970814 m!7659358))

(assert (=> b!6970814 m!7659658))

(assert (=> b!6970814 m!7659418))

(assert (=> b!6970814 m!7659658))

(declare-fun m!7659660 () Bool)

(assert (=> b!6970814 m!7659660))

(assert (=> b!6970814 m!7659358))

(assert (=> b!6970814 m!7659652))

(assert (=> b!6970814 m!7659660))

(assert (=> b!6970814 m!7659652))

(declare-fun m!7659662 () Bool)

(assert (=> b!6970814 m!7659662))

(assert (=> b!6970808 m!7659358))

(assert (=> b!6970808 m!7659652))

(assert (=> b!6970808 m!7659652))

(assert (=> b!6970808 m!7659654))

(assert (=> b!6970819 m!7659358))

(assert (=> b!6970819 m!7659658))

(assert (=> b!6970319 d!2171222))

(declare-fun d!2171224 () Bool)

(declare-fun lt!2479574 () Regex!17125)

(assert (=> d!2171224 (validRegex!8807 lt!2479574)))

(declare-fun e!4190160 () Regex!17125)

(assert (=> d!2171224 (= lt!2479574 e!4190160)))

(declare-fun c!1292236 () Bool)

(assert (=> d!2171224 (= c!1292236 (or ((_ is EmptyExpr!17125) r!13765) ((_ is EmptyLang!17125) r!13765)))))

(assert (=> d!2171224 (validRegex!8807 r!13765)))

(assert (=> d!2171224 (= (derivativeStep!5535 r!13765 (head!14022 s!9351)) lt!2479574)))

(declare-fun bm!632776 () Bool)

(declare-fun c!1292238 () Bool)

(declare-fun call!632782 () Regex!17125)

(assert (=> bm!632776 (= call!632782 (derivativeStep!5535 (ite c!1292238 (regTwo!34763 r!13765) (regOne!34762 r!13765)) (head!14022 s!9351)))))

(declare-fun bm!632777 () Bool)

(declare-fun c!1292239 () Bool)

(declare-fun c!1292237 () Bool)

(declare-fun call!632781 () Regex!17125)

(assert (=> bm!632777 (= call!632781 (derivativeStep!5535 (ite c!1292238 (regOne!34763 r!13765) (ite c!1292239 (reg!17454 r!13765) (ite c!1292237 (regTwo!34762 r!13765) (regOne!34762 r!13765)))) (head!14022 s!9351)))))

(declare-fun e!4190161 () Regex!17125)

(declare-fun b!6970841 () Bool)

(declare-fun call!632784 () Regex!17125)

(assert (=> b!6970841 (= e!4190161 (Union!17125 (Concat!25970 call!632782 (regTwo!34762 r!13765)) call!632784))))

(declare-fun b!6970842 () Bool)

(declare-fun e!4190164 () Regex!17125)

(declare-fun call!632783 () Regex!17125)

(assert (=> b!6970842 (= e!4190164 (Concat!25970 call!632783 r!13765))))

(declare-fun b!6970843 () Bool)

(declare-fun e!4190163 () Regex!17125)

(assert (=> b!6970843 (= e!4190160 e!4190163)))

(declare-fun c!1292235 () Bool)

(assert (=> b!6970843 (= c!1292235 ((_ is ElementMatch!17125) r!13765))))

(declare-fun bm!632778 () Bool)

(assert (=> bm!632778 (= call!632784 call!632783)))

(declare-fun bm!632779 () Bool)

(assert (=> bm!632779 (= call!632783 call!632781)))

(declare-fun b!6970844 () Bool)

(assert (=> b!6970844 (= e!4190160 EmptyLang!17125)))

(declare-fun b!6970845 () Bool)

(declare-fun e!4190162 () Regex!17125)

(assert (=> b!6970845 (= e!4190162 e!4190164)))

(assert (=> b!6970845 (= c!1292239 ((_ is Star!17125) r!13765))))

(declare-fun b!6970846 () Bool)

(assert (=> b!6970846 (= e!4190163 (ite (= (head!14022 s!9351) (c!1292043 r!13765)) EmptyExpr!17125 EmptyLang!17125))))

(declare-fun b!6970847 () Bool)

(assert (=> b!6970847 (= e!4190161 (Union!17125 (Concat!25970 call!632784 (regTwo!34762 r!13765)) EmptyLang!17125))))

(declare-fun b!6970848 () Bool)

(assert (=> b!6970848 (= c!1292238 ((_ is Union!17125) r!13765))))

(assert (=> b!6970848 (= e!4190163 e!4190162)))

(declare-fun b!6970849 () Bool)

(assert (=> b!6970849 (= e!4190162 (Union!17125 call!632781 call!632782))))

(declare-fun b!6970850 () Bool)

(assert (=> b!6970850 (= c!1292237 (nullable!6910 (regOne!34762 r!13765)))))

(assert (=> b!6970850 (= e!4190164 e!4190161)))

(assert (= (and d!2171224 c!1292236) b!6970844))

(assert (= (and d!2171224 (not c!1292236)) b!6970843))

(assert (= (and b!6970843 c!1292235) b!6970846))

(assert (= (and b!6970843 (not c!1292235)) b!6970848))

(assert (= (and b!6970848 c!1292238) b!6970849))

(assert (= (and b!6970848 (not c!1292238)) b!6970845))

(assert (= (and b!6970845 c!1292239) b!6970842))

(assert (= (and b!6970845 (not c!1292239)) b!6970850))

(assert (= (and b!6970850 c!1292237) b!6970841))

(assert (= (and b!6970850 (not c!1292237)) b!6970847))

(assert (= (or b!6970841 b!6970847) bm!632778))

(assert (= (or b!6970842 bm!632778) bm!632779))

(assert (= (or b!6970849 bm!632779) bm!632777))

(assert (= (or b!6970849 b!6970841) bm!632776))

(declare-fun m!7659664 () Bool)

(assert (=> d!2171224 m!7659664))

(assert (=> d!2171224 m!7659414))

(assert (=> bm!632776 m!7659364))

(declare-fun m!7659666 () Bool)

(assert (=> bm!632776 m!7659666))

(assert (=> bm!632777 m!7659364))

(declare-fun m!7659668 () Bool)

(assert (=> bm!632777 m!7659668))

(declare-fun m!7659670 () Bool)

(assert (=> b!6970850 m!7659670))

(assert (=> b!6970319 d!2171224))

(assert (=> b!6970319 d!2171182))

(assert (=> b!6970319 d!2171164))

(assert (=> bm!632702 d!2171158))

(assert (=> bm!632700 d!2171158))

(assert (=> b!6970130 d!2171182))

(assert (=> b!6970313 d!2171162))

(assert (=> b!6970313 d!2171164))

(assert (=> bm!632680 d!2171158))

(assert (=> d!2171102 d!2171158))

(declare-fun bm!632780 () Bool)

(declare-fun call!632787 () Bool)

(declare-fun c!1292241 () Bool)

(assert (=> bm!632780 (= call!632787 (validRegex!8807 (ite c!1292241 (regTwo!34763 r!13765) (regTwo!34762 r!13765))))))

(declare-fun call!632786 () Bool)

(declare-fun c!1292240 () Bool)

(declare-fun bm!632781 () Bool)

(assert (=> bm!632781 (= call!632786 (validRegex!8807 (ite c!1292240 (reg!17454 r!13765) (ite c!1292241 (regOne!34763 r!13765) (regOne!34762 r!13765)))))))

(declare-fun b!6970851 () Bool)

(declare-fun res!2843306 () Bool)

(declare-fun e!4190171 () Bool)

(assert (=> b!6970851 (=> res!2843306 e!4190171)))

(assert (=> b!6970851 (= res!2843306 (not ((_ is Concat!25970) r!13765)))))

(declare-fun e!4190166 () Bool)

(assert (=> b!6970851 (= e!4190166 e!4190171)))

(declare-fun bm!632782 () Bool)

(declare-fun call!632785 () Bool)

(assert (=> bm!632782 (= call!632785 call!632786)))

(declare-fun b!6970852 () Bool)

(declare-fun e!4190169 () Bool)

(declare-fun e!4190170 () Bool)

(assert (=> b!6970852 (= e!4190169 e!4190170)))

(assert (=> b!6970852 (= c!1292240 ((_ is Star!17125) r!13765))))

(declare-fun b!6970854 () Bool)

(declare-fun e!4190168 () Bool)

(assert (=> b!6970854 (= e!4190168 call!632786)))

(declare-fun b!6970855 () Bool)

(assert (=> b!6970855 (= e!4190170 e!4190168)))

(declare-fun res!2843304 () Bool)

(assert (=> b!6970855 (= res!2843304 (not (nullable!6910 (reg!17454 r!13765))))))

(assert (=> b!6970855 (=> (not res!2843304) (not e!4190168))))

(declare-fun b!6970856 () Bool)

(declare-fun res!2843305 () Bool)

(declare-fun e!4190167 () Bool)

(assert (=> b!6970856 (=> (not res!2843305) (not e!4190167))))

(assert (=> b!6970856 (= res!2843305 call!632785)))

(assert (=> b!6970856 (= e!4190166 e!4190167)))

(declare-fun b!6970857 () Bool)

(declare-fun e!4190165 () Bool)

(assert (=> b!6970857 (= e!4190171 e!4190165)))

(declare-fun res!2843308 () Bool)

(assert (=> b!6970857 (=> (not res!2843308) (not e!4190165))))

(assert (=> b!6970857 (= res!2843308 call!632785)))

(declare-fun d!2171226 () Bool)

(declare-fun res!2843307 () Bool)

(assert (=> d!2171226 (=> res!2843307 e!4190169)))

(assert (=> d!2171226 (= res!2843307 ((_ is ElementMatch!17125) r!13765))))

(assert (=> d!2171226 (= (validRegex!8807 r!13765) e!4190169)))

(declare-fun b!6970853 () Bool)

(assert (=> b!6970853 (= e!4190165 call!632787)))

(declare-fun b!6970858 () Bool)

(assert (=> b!6970858 (= e!4190167 call!632787)))

(declare-fun b!6970859 () Bool)

(assert (=> b!6970859 (= e!4190170 e!4190166)))

(assert (=> b!6970859 (= c!1292241 ((_ is Union!17125) r!13765))))

(assert (= (and d!2171226 (not res!2843307)) b!6970852))

(assert (= (and b!6970852 c!1292240) b!6970855))

(assert (= (and b!6970852 (not c!1292240)) b!6970859))

(assert (= (and b!6970855 res!2843304) b!6970854))

(assert (= (and b!6970859 c!1292241) b!6970856))

(assert (= (and b!6970859 (not c!1292241)) b!6970851))

(assert (= (and b!6970856 res!2843305) b!6970858))

(assert (= (and b!6970851 (not res!2843306)) b!6970857))

(assert (= (and b!6970857 res!2843308) b!6970853))

(assert (= (or b!6970856 b!6970857) bm!632782))

(assert (= (or b!6970858 b!6970853) bm!632780))

(assert (= (or b!6970854 bm!632782) bm!632781))

(declare-fun m!7659672 () Bool)

(assert (=> bm!632780 m!7659672))

(declare-fun m!7659674 () Bool)

(assert (=> bm!632781 m!7659674))

(declare-fun m!7659676 () Bool)

(assert (=> b!6970855 m!7659676))

(assert (=> d!2171102 d!2171226))

(declare-fun d!2171228 () Bool)

(assert (=> d!2171228 (= (isUnion!1491 lt!2479563) ((_ is Union!17125) lt!2479563))))

(assert (=> b!6970383 d!2171228))

(assert (=> b!6970123 d!2171182))

(assert (=> bm!632704 d!2171158))

(declare-fun d!2171230 () Bool)

(assert (=> d!2171230 (= (nullable!6910 (regOne!34763 r!13765)) (nullableFct!2592 (regOne!34763 r!13765)))))

(declare-fun bs!1859200 () Bool)

(assert (= bs!1859200 d!2171230))

(declare-fun m!7659678 () Bool)

(assert (=> bs!1859200 m!7659678))

(assert (=> b!6970127 d!2171230))

(assert (=> d!2171104 d!2171102))

(assert (=> d!2171104 d!2171082))

(declare-fun d!2171232 () Bool)

(assert (=> d!2171232 (= (matchR!9227 r!13765 s!9351) (matchRSpec!4142 r!13765 s!9351))))

(assert (=> d!2171232 true))

(declare-fun _$88!5763 () Unit!160902)

(assert (=> d!2171232 (= (choose!51905 r!13765 s!9351) _$88!5763)))

(declare-fun bs!1859201 () Bool)

(assert (= bs!1859201 d!2171232))

(assert (=> bs!1859201 m!7659312))

(assert (=> bs!1859201 m!7659310))

(assert (=> d!2171104 d!2171232))

(assert (=> d!2171104 d!2171226))

(declare-fun b!6970860 () Bool)

(declare-fun res!2843316 () Bool)

(declare-fun e!4190177 () Bool)

(assert (=> b!6970860 (=> res!2843316 e!4190177)))

(declare-fun e!4190172 () Bool)

(assert (=> b!6970860 (= res!2843316 e!4190172)))

(declare-fun res!2843309 () Bool)

(assert (=> b!6970860 (=> (not res!2843309) (not e!4190172))))

(declare-fun lt!2479575 () Bool)

(assert (=> b!6970860 (= res!2843309 lt!2479575)))

(declare-fun b!6970861 () Bool)

(declare-fun res!2843311 () Bool)

(assert (=> b!6970861 (=> (not res!2843311) (not e!4190172))))

(assert (=> b!6970861 (= res!2843311 (isEmpty!39011 (tail!13091 (tail!13091 s!9351))))))

(declare-fun b!6970862 () Bool)

(declare-fun e!4190176 () Bool)

(assert (=> b!6970862 (= e!4190176 (not lt!2479575))))

(declare-fun d!2171234 () Bool)

(declare-fun e!4190173 () Bool)

(assert (=> d!2171234 e!4190173))

(declare-fun c!1292244 () Bool)

(assert (=> d!2171234 (= c!1292244 ((_ is EmptyExpr!17125) (derivativeStep!5535 (regOne!34763 r!13765) (head!14022 s!9351))))))

(declare-fun e!4190175 () Bool)

(assert (=> d!2171234 (= lt!2479575 e!4190175)))

(declare-fun c!1292243 () Bool)

(assert (=> d!2171234 (= c!1292243 (isEmpty!39011 (tail!13091 s!9351)))))

(assert (=> d!2171234 (validRegex!8807 (derivativeStep!5535 (regOne!34763 r!13765) (head!14022 s!9351)))))

(assert (=> d!2171234 (= (matchR!9227 (derivativeStep!5535 (regOne!34763 r!13765) (head!14022 s!9351)) (tail!13091 s!9351)) lt!2479575)))

(declare-fun b!6970863 () Bool)

(declare-fun e!4190174 () Bool)

(declare-fun e!4190178 () Bool)

(assert (=> b!6970863 (= e!4190174 e!4190178)))

(declare-fun res!2843313 () Bool)

(assert (=> b!6970863 (=> res!2843313 e!4190178)))

(declare-fun call!632788 () Bool)

(assert (=> b!6970863 (= res!2843313 call!632788)))

(declare-fun b!6970864 () Bool)

(declare-fun res!2843312 () Bool)

(assert (=> b!6970864 (=> (not res!2843312) (not e!4190172))))

(assert (=> b!6970864 (= res!2843312 (not call!632788))))

(declare-fun b!6970865 () Bool)

(assert (=> b!6970865 (= e!4190178 (not (= (head!14022 (tail!13091 s!9351)) (c!1292043 (derivativeStep!5535 (regOne!34763 r!13765) (head!14022 s!9351))))))))

(declare-fun b!6970866 () Bool)

(assert (=> b!6970866 (= e!4190173 e!4190176)))

(declare-fun c!1292242 () Bool)

(assert (=> b!6970866 (= c!1292242 ((_ is EmptyLang!17125) (derivativeStep!5535 (regOne!34763 r!13765) (head!14022 s!9351))))))

(declare-fun bm!632783 () Bool)

(assert (=> bm!632783 (= call!632788 (isEmpty!39011 (tail!13091 s!9351)))))

(declare-fun b!6970867 () Bool)

(assert (=> b!6970867 (= e!4190175 (matchR!9227 (derivativeStep!5535 (derivativeStep!5535 (regOne!34763 r!13765) (head!14022 s!9351)) (head!14022 (tail!13091 s!9351))) (tail!13091 (tail!13091 s!9351))))))

(declare-fun b!6970868 () Bool)

(assert (=> b!6970868 (= e!4190173 (= lt!2479575 call!632788))))

(declare-fun b!6970869 () Bool)

(assert (=> b!6970869 (= e!4190175 (nullable!6910 (derivativeStep!5535 (regOne!34763 r!13765) (head!14022 s!9351))))))

(declare-fun b!6970870 () Bool)

(declare-fun res!2843310 () Bool)

(assert (=> b!6970870 (=> res!2843310 e!4190178)))

(assert (=> b!6970870 (= res!2843310 (not (isEmpty!39011 (tail!13091 (tail!13091 s!9351)))))))

(declare-fun b!6970871 () Bool)

(declare-fun res!2843315 () Bool)

(assert (=> b!6970871 (=> res!2843315 e!4190177)))

(assert (=> b!6970871 (= res!2843315 (not ((_ is ElementMatch!17125) (derivativeStep!5535 (regOne!34763 r!13765) (head!14022 s!9351)))))))

(assert (=> b!6970871 (= e!4190176 e!4190177)))

(declare-fun b!6970872 () Bool)

(assert (=> b!6970872 (= e!4190172 (= (head!14022 (tail!13091 s!9351)) (c!1292043 (derivativeStep!5535 (regOne!34763 r!13765) (head!14022 s!9351)))))))

(declare-fun b!6970873 () Bool)

(assert (=> b!6970873 (= e!4190177 e!4190174)))

(declare-fun res!2843314 () Bool)

(assert (=> b!6970873 (=> (not res!2843314) (not e!4190174))))

(assert (=> b!6970873 (= res!2843314 (not lt!2479575))))

(assert (= (and d!2171234 c!1292243) b!6970869))

(assert (= (and d!2171234 (not c!1292243)) b!6970867))

(assert (= (and d!2171234 c!1292244) b!6970868))

(assert (= (and d!2171234 (not c!1292244)) b!6970866))

(assert (= (and b!6970866 c!1292242) b!6970862))

(assert (= (and b!6970866 (not c!1292242)) b!6970871))

(assert (= (and b!6970871 (not res!2843315)) b!6970860))

(assert (= (and b!6970860 res!2843309) b!6970864))

(assert (= (and b!6970864 res!2843312) b!6970861))

(assert (= (and b!6970861 res!2843311) b!6970872))

(assert (= (and b!6970860 (not res!2843316)) b!6970873))

(assert (= (and b!6970873 res!2843314) b!6970863))

(assert (= (and b!6970863 (not res!2843313)) b!6970870))

(assert (= (and b!6970870 (not res!2843310)) b!6970865))

(assert (= (or b!6970868 b!6970863 b!6970864) bm!632783))

(assert (=> d!2171234 m!7659358))

(assert (=> d!2171234 m!7659360))

(assert (=> d!2171234 m!7659366))

(declare-fun m!7659680 () Bool)

(assert (=> d!2171234 m!7659680))

(assert (=> b!6970870 m!7659358))

(assert (=> b!6970870 m!7659652))

(assert (=> b!6970870 m!7659652))

(assert (=> b!6970870 m!7659654))

(assert (=> b!6970869 m!7659366))

(declare-fun m!7659682 () Bool)

(assert (=> b!6970869 m!7659682))

(assert (=> bm!632783 m!7659358))

(assert (=> bm!632783 m!7659360))

(assert (=> b!6970865 m!7659358))

(assert (=> b!6970865 m!7659658))

(assert (=> b!6970867 m!7659358))

(assert (=> b!6970867 m!7659658))

(assert (=> b!6970867 m!7659366))

(assert (=> b!6970867 m!7659658))

(declare-fun m!7659684 () Bool)

(assert (=> b!6970867 m!7659684))

(assert (=> b!6970867 m!7659358))

(assert (=> b!6970867 m!7659652))

(assert (=> b!6970867 m!7659684))

(assert (=> b!6970867 m!7659652))

(declare-fun m!7659686 () Bool)

(assert (=> b!6970867 m!7659686))

(assert (=> b!6970861 m!7659358))

(assert (=> b!6970861 m!7659652))

(assert (=> b!6970861 m!7659652))

(assert (=> b!6970861 m!7659654))

(assert (=> b!6970872 m!7659358))

(assert (=> b!6970872 m!7659658))

(assert (=> b!6970125 d!2171234))

(declare-fun d!2171236 () Bool)

(declare-fun lt!2479576 () Regex!17125)

(assert (=> d!2171236 (validRegex!8807 lt!2479576)))

(declare-fun e!4190179 () Regex!17125)

(assert (=> d!2171236 (= lt!2479576 e!4190179)))

(declare-fun c!1292246 () Bool)

(assert (=> d!2171236 (= c!1292246 (or ((_ is EmptyExpr!17125) (regOne!34763 r!13765)) ((_ is EmptyLang!17125) (regOne!34763 r!13765))))))

(assert (=> d!2171236 (validRegex!8807 (regOne!34763 r!13765))))

(assert (=> d!2171236 (= (derivativeStep!5535 (regOne!34763 r!13765) (head!14022 s!9351)) lt!2479576)))

(declare-fun c!1292248 () Bool)

(declare-fun bm!632784 () Bool)

(declare-fun call!632790 () Regex!17125)

(assert (=> bm!632784 (= call!632790 (derivativeStep!5535 (ite c!1292248 (regTwo!34763 (regOne!34763 r!13765)) (regOne!34762 (regOne!34763 r!13765))) (head!14022 s!9351)))))

(declare-fun c!1292249 () Bool)

(declare-fun c!1292247 () Bool)

(declare-fun call!632789 () Regex!17125)

(declare-fun bm!632785 () Bool)

(assert (=> bm!632785 (= call!632789 (derivativeStep!5535 (ite c!1292248 (regOne!34763 (regOne!34763 r!13765)) (ite c!1292249 (reg!17454 (regOne!34763 r!13765)) (ite c!1292247 (regTwo!34762 (regOne!34763 r!13765)) (regOne!34762 (regOne!34763 r!13765))))) (head!14022 s!9351)))))

(declare-fun call!632792 () Regex!17125)

(declare-fun e!4190180 () Regex!17125)

(declare-fun b!6970874 () Bool)

(assert (=> b!6970874 (= e!4190180 (Union!17125 (Concat!25970 call!632790 (regTwo!34762 (regOne!34763 r!13765))) call!632792))))

(declare-fun b!6970875 () Bool)

(declare-fun e!4190183 () Regex!17125)

(declare-fun call!632791 () Regex!17125)

(assert (=> b!6970875 (= e!4190183 (Concat!25970 call!632791 (regOne!34763 r!13765)))))

(declare-fun b!6970876 () Bool)

(declare-fun e!4190182 () Regex!17125)

(assert (=> b!6970876 (= e!4190179 e!4190182)))

(declare-fun c!1292245 () Bool)

(assert (=> b!6970876 (= c!1292245 ((_ is ElementMatch!17125) (regOne!34763 r!13765)))))

(declare-fun bm!632786 () Bool)

(assert (=> bm!632786 (= call!632792 call!632791)))

(declare-fun bm!632787 () Bool)

(assert (=> bm!632787 (= call!632791 call!632789)))

(declare-fun b!6970877 () Bool)

(assert (=> b!6970877 (= e!4190179 EmptyLang!17125)))

(declare-fun b!6970878 () Bool)

(declare-fun e!4190181 () Regex!17125)

(assert (=> b!6970878 (= e!4190181 e!4190183)))

(assert (=> b!6970878 (= c!1292249 ((_ is Star!17125) (regOne!34763 r!13765)))))

(declare-fun b!6970879 () Bool)

(assert (=> b!6970879 (= e!4190182 (ite (= (head!14022 s!9351) (c!1292043 (regOne!34763 r!13765))) EmptyExpr!17125 EmptyLang!17125))))

(declare-fun b!6970880 () Bool)

(assert (=> b!6970880 (= e!4190180 (Union!17125 (Concat!25970 call!632792 (regTwo!34762 (regOne!34763 r!13765))) EmptyLang!17125))))

(declare-fun b!6970881 () Bool)

(assert (=> b!6970881 (= c!1292248 ((_ is Union!17125) (regOne!34763 r!13765)))))

(assert (=> b!6970881 (= e!4190182 e!4190181)))

(declare-fun b!6970882 () Bool)

(assert (=> b!6970882 (= e!4190181 (Union!17125 call!632789 call!632790))))

(declare-fun b!6970883 () Bool)

(assert (=> b!6970883 (= c!1292247 (nullable!6910 (regOne!34762 (regOne!34763 r!13765))))))

(assert (=> b!6970883 (= e!4190183 e!4190180)))

(assert (= (and d!2171236 c!1292246) b!6970877))

(assert (= (and d!2171236 (not c!1292246)) b!6970876))

(assert (= (and b!6970876 c!1292245) b!6970879))

(assert (= (and b!6970876 (not c!1292245)) b!6970881))

(assert (= (and b!6970881 c!1292248) b!6970882))

(assert (= (and b!6970881 (not c!1292248)) b!6970878))

(assert (= (and b!6970878 c!1292249) b!6970875))

(assert (= (and b!6970878 (not c!1292249)) b!6970883))

(assert (= (and b!6970883 c!1292247) b!6970874))

(assert (= (and b!6970883 (not c!1292247)) b!6970880))

(assert (= (or b!6970874 b!6970880) bm!632786))

(assert (= (or b!6970875 bm!632786) bm!632787))

(assert (= (or b!6970882 bm!632787) bm!632785))

(assert (= (or b!6970882 b!6970874) bm!632784))

(declare-fun m!7659688 () Bool)

(assert (=> d!2171236 m!7659688))

(assert (=> d!2171236 m!7659356))

(assert (=> bm!632784 m!7659364))

(declare-fun m!7659690 () Bool)

(assert (=> bm!632784 m!7659690))

(assert (=> bm!632785 m!7659364))

(declare-fun m!7659692 () Bool)

(assert (=> bm!632785 m!7659692))

(declare-fun m!7659694 () Bool)

(assert (=> b!6970883 m!7659694))

(assert (=> b!6970125 d!2171236))

(assert (=> b!6970125 d!2171182))

(assert (=> b!6970125 d!2171164))

(assert (=> b!6970304 d!2171106))

(declare-fun bs!1859202 () Bool)

(declare-fun d!2171238 () Bool)

(assert (= bs!1859202 (and d!2171238 start!668402)))

(declare-fun lambda!397684 () Int)

(assert (=> bs!1859202 (= lambda!397684 lambda!397642)))

(declare-fun bs!1859203 () Bool)

(assert (= bs!1859203 (and d!2171238 d!2171112)))

(assert (=> bs!1859203 (= lambda!397684 lambda!397668)))

(declare-fun b!6970884 () Bool)

(declare-fun e!4190184 () Bool)

(assert (=> b!6970884 (= e!4190184 (isEmpty!39009 (t!380674 (t!380674 l!9142))))))

(declare-fun b!6970886 () Bool)

(declare-fun e!4190187 () Bool)

(declare-fun e!4190188 () Bool)

(assert (=> b!6970886 (= e!4190187 e!4190188)))

(declare-fun c!1292251 () Bool)

(assert (=> b!6970886 (= c!1292251 (isEmpty!39009 (tail!13089 (t!380674 l!9142))))))

(declare-fun b!6970887 () Bool)

(declare-fun e!4190186 () Regex!17125)

(assert (=> b!6970887 (= e!4190186 (h!73255 (t!380674 l!9142)))))

(declare-fun b!6970888 () Bool)

(declare-fun e!4190185 () Regex!17125)

(assert (=> b!6970888 (= e!4190185 (Union!17125 (h!73255 (t!380674 l!9142)) (generalisedUnion!2600 (t!380674 (t!380674 l!9142)))))))

(declare-fun b!6970889 () Bool)

(declare-fun e!4190189 () Bool)

(assert (=> b!6970889 (= e!4190189 e!4190187)))

(declare-fun c!1292252 () Bool)

(assert (=> b!6970889 (= c!1292252 (isEmpty!39009 (t!380674 l!9142)))))

(declare-fun b!6970885 () Bool)

(declare-fun lt!2479577 () Regex!17125)

(assert (=> b!6970885 (= e!4190188 (= lt!2479577 (head!14023 (t!380674 l!9142))))))

(assert (=> d!2171238 e!4190189))

(declare-fun res!2843318 () Bool)

(assert (=> d!2171238 (=> (not res!2843318) (not e!4190189))))

(assert (=> d!2171238 (= res!2843318 (validRegex!8807 lt!2479577))))

(assert (=> d!2171238 (= lt!2479577 e!4190186)))

(declare-fun c!1292253 () Bool)

(assert (=> d!2171238 (= c!1292253 e!4190184)))

(declare-fun res!2843317 () Bool)

(assert (=> d!2171238 (=> (not res!2843317) (not e!4190184))))

(assert (=> d!2171238 (= res!2843317 ((_ is Cons!66807) (t!380674 l!9142)))))

(assert (=> d!2171238 (forall!15996 (t!380674 l!9142) lambda!397684)))

(assert (=> d!2171238 (= (generalisedUnion!2600 (t!380674 l!9142)) lt!2479577)))

(declare-fun b!6970890 () Bool)

(assert (=> b!6970890 (= e!4190185 EmptyLang!17125)))

(declare-fun b!6970891 () Bool)

(assert (=> b!6970891 (= e!4190187 (isEmptyLang!2063 lt!2479577))))

(declare-fun b!6970892 () Bool)

(assert (=> b!6970892 (= e!4190186 e!4190185)))

(declare-fun c!1292250 () Bool)

(assert (=> b!6970892 (= c!1292250 ((_ is Cons!66807) (t!380674 l!9142)))))

(declare-fun b!6970893 () Bool)

(assert (=> b!6970893 (= e!4190188 (isUnion!1491 lt!2479577))))

(assert (= (and d!2171238 res!2843317) b!6970884))

(assert (= (and d!2171238 c!1292253) b!6970887))

(assert (= (and d!2171238 (not c!1292253)) b!6970892))

(assert (= (and b!6970892 c!1292250) b!6970888))

(assert (= (and b!6970892 (not c!1292250)) b!6970890))

(assert (= (and d!2171238 res!2843318) b!6970889))

(assert (= (and b!6970889 c!1292252) b!6970891))

(assert (= (and b!6970889 (not c!1292252)) b!6970886))

(assert (= (and b!6970886 c!1292251) b!6970885))

(assert (= (and b!6970886 (not c!1292251)) b!6970893))

(declare-fun m!7659696 () Bool)

(assert (=> b!6970884 m!7659696))

(declare-fun m!7659698 () Bool)

(assert (=> b!6970885 m!7659698))

(declare-fun m!7659700 () Bool)

(assert (=> b!6970888 m!7659700))

(assert (=> b!6970889 m!7659440))

(declare-fun m!7659702 () Bool)

(assert (=> b!6970886 m!7659702))

(assert (=> b!6970886 m!7659702))

(declare-fun m!7659704 () Bool)

(assert (=> b!6970886 m!7659704))

(declare-fun m!7659706 () Bool)

(assert (=> b!6970891 m!7659706))

(declare-fun m!7659708 () Bool)

(assert (=> b!6970893 m!7659708))

(declare-fun m!7659710 () Bool)

(assert (=> d!2171238 m!7659710))

(declare-fun m!7659712 () Bool)

(assert (=> d!2171238 m!7659712))

(assert (=> b!6970378 d!2171238))

(assert (=> b!6970119 d!2171162))

(assert (=> b!6970119 d!2171164))

(assert (=> b!6970376 d!2171062))

(assert (=> b!6970376 d!2171064))

(declare-fun d!2171240 () Bool)

(assert (=> d!2171240 (= (isEmptyLang!2063 lt!2479563) ((_ is EmptyLang!17125) lt!2479563))))

(assert (=> b!6970381 d!2171240))

(assert (=> d!2171074 d!2171158))

(declare-fun bm!632788 () Bool)

(declare-fun call!632795 () Bool)

(declare-fun c!1292255 () Bool)

(assert (=> bm!632788 (= call!632795 (validRegex!8807 (ite c!1292255 (regTwo!34763 (regOne!34763 r!13765)) (regTwo!34762 (regOne!34763 r!13765)))))))

(declare-fun c!1292254 () Bool)

(declare-fun bm!632789 () Bool)

(declare-fun call!632794 () Bool)

(assert (=> bm!632789 (= call!632794 (validRegex!8807 (ite c!1292254 (reg!17454 (regOne!34763 r!13765)) (ite c!1292255 (regOne!34763 (regOne!34763 r!13765)) (regOne!34762 (regOne!34763 r!13765))))))))

(declare-fun b!6970894 () Bool)

(declare-fun res!2843321 () Bool)

(declare-fun e!4190196 () Bool)

(assert (=> b!6970894 (=> res!2843321 e!4190196)))

(assert (=> b!6970894 (= res!2843321 (not ((_ is Concat!25970) (regOne!34763 r!13765))))))

(declare-fun e!4190191 () Bool)

(assert (=> b!6970894 (= e!4190191 e!4190196)))

(declare-fun bm!632790 () Bool)

(declare-fun call!632793 () Bool)

(assert (=> bm!632790 (= call!632793 call!632794)))

(declare-fun b!6970895 () Bool)

(declare-fun e!4190194 () Bool)

(declare-fun e!4190195 () Bool)

(assert (=> b!6970895 (= e!4190194 e!4190195)))

(assert (=> b!6970895 (= c!1292254 ((_ is Star!17125) (regOne!34763 r!13765)))))

(declare-fun b!6970897 () Bool)

(declare-fun e!4190193 () Bool)

(assert (=> b!6970897 (= e!4190193 call!632794)))

(declare-fun b!6970898 () Bool)

(assert (=> b!6970898 (= e!4190195 e!4190193)))

(declare-fun res!2843319 () Bool)

(assert (=> b!6970898 (= res!2843319 (not (nullable!6910 (reg!17454 (regOne!34763 r!13765)))))))

(assert (=> b!6970898 (=> (not res!2843319) (not e!4190193))))

(declare-fun b!6970899 () Bool)

(declare-fun res!2843320 () Bool)

(declare-fun e!4190192 () Bool)

(assert (=> b!6970899 (=> (not res!2843320) (not e!4190192))))

(assert (=> b!6970899 (= res!2843320 call!632793)))

(assert (=> b!6970899 (= e!4190191 e!4190192)))

(declare-fun b!6970900 () Bool)

(declare-fun e!4190190 () Bool)

(assert (=> b!6970900 (= e!4190196 e!4190190)))

(declare-fun res!2843323 () Bool)

(assert (=> b!6970900 (=> (not res!2843323) (not e!4190190))))

(assert (=> b!6970900 (= res!2843323 call!632793)))

(declare-fun d!2171242 () Bool)

(declare-fun res!2843322 () Bool)

(assert (=> d!2171242 (=> res!2843322 e!4190194)))

(assert (=> d!2171242 (= res!2843322 ((_ is ElementMatch!17125) (regOne!34763 r!13765)))))

(assert (=> d!2171242 (= (validRegex!8807 (regOne!34763 r!13765)) e!4190194)))

(declare-fun b!6970896 () Bool)

(assert (=> b!6970896 (= e!4190190 call!632795)))

(declare-fun b!6970901 () Bool)

(assert (=> b!6970901 (= e!4190192 call!632795)))

(declare-fun b!6970902 () Bool)

(assert (=> b!6970902 (= e!4190195 e!4190191)))

(assert (=> b!6970902 (= c!1292255 ((_ is Union!17125) (regOne!34763 r!13765)))))

(assert (= (and d!2171242 (not res!2843322)) b!6970895))

(assert (= (and b!6970895 c!1292254) b!6970898))

(assert (= (and b!6970895 (not c!1292254)) b!6970902))

(assert (= (and b!6970898 res!2843319) b!6970897))

(assert (= (and b!6970902 c!1292255) b!6970899))

(assert (= (and b!6970902 (not c!1292255)) b!6970894))

(assert (= (and b!6970899 res!2843320) b!6970901))

(assert (= (and b!6970894 (not res!2843321)) b!6970900))

(assert (= (and b!6970900 res!2843323) b!6970896))

(assert (= (or b!6970899 b!6970900) bm!632790))

(assert (= (or b!6970901 b!6970896) bm!632788))

(assert (= (or b!6970897 bm!632790) bm!632789))

(declare-fun m!7659714 () Bool)

(assert (=> bm!632788 m!7659714))

(declare-fun m!7659716 () Bool)

(assert (=> bm!632789 m!7659716))

(declare-fun m!7659718 () Bool)

(assert (=> b!6970898 m!7659718))

(assert (=> d!2171074 d!2171242))

(declare-fun d!2171244 () Bool)

(assert (=> d!2171244 (= (nullable!6910 (reg!17454 (regTwo!34763 r!13765))) (nullableFct!2592 (reg!17454 (regTwo!34763 r!13765))))))

(declare-fun bs!1859204 () Bool)

(assert (= bs!1859204 d!2171244))

(declare-fun m!7659720 () Bool)

(assert (=> bs!1859204 m!7659720))

(assert (=> b!6970044 d!2171244))

(assert (=> d!2171080 d!2171074))

(assert (=> d!2171080 d!2171110))

(declare-fun d!2171246 () Bool)

(assert (=> d!2171246 (= (matchR!9227 (regOne!34763 r!13765) s!9351) (matchRSpec!4142 (regOne!34763 r!13765) s!9351))))

(assert (=> d!2171246 true))

(declare-fun _$88!5764 () Unit!160902)

(assert (=> d!2171246 (= (choose!51905 (regOne!34763 r!13765) s!9351) _$88!5764)))

(declare-fun bs!1859205 () Bool)

(assert (= bs!1859205 d!2171246))

(assert (=> bs!1859205 m!7659304))

(assert (=> bs!1859205 m!7659300))

(assert (=> d!2171080 d!2171246))

(assert (=> d!2171080 d!2171242))

(declare-fun bs!1859206 () Bool)

(declare-fun b!6970904 () Bool)

(assert (= bs!1859206 (and b!6970904 b!6970299)))

(declare-fun lambda!397685 () Int)

(assert (=> bs!1859206 (not (= lambda!397685 lambda!397661))))

(declare-fun bs!1859207 () Bool)

(assert (= bs!1859207 (and b!6970904 b!6970345)))

(assert (=> bs!1859207 (not (= lambda!397685 lambda!397665))))

(declare-fun bs!1859208 () Bool)

(assert (= bs!1859208 (and b!6970904 b!6970608)))

(assert (=> bs!1859208 (= (and (= (reg!17454 (regOne!34763 (regOne!34763 r!13765))) (reg!17454 (regOne!34763 (regTwo!34763 r!13765)))) (= (regOne!34763 (regOne!34763 r!13765)) (regOne!34763 (regTwo!34763 r!13765)))) (= lambda!397685 lambda!397679))))

(declare-fun bs!1859209 () Bool)

(assert (= bs!1859209 (and b!6970904 b!6970609)))

(assert (=> bs!1859209 (not (= lambda!397685 lambda!397681))))

(declare-fun bs!1859210 () Bool)

(assert (= bs!1859210 (and b!6970904 b!6970533)))

(assert (=> bs!1859210 (not (= lambda!397685 lambda!397678))))

(declare-fun bs!1859211 () Bool)

(assert (= bs!1859211 (and b!6970904 b!6970778)))

(assert (=> bs!1859211 (not (= lambda!397685 lambda!397683))))

(declare-fun bs!1859212 () Bool)

(assert (= bs!1859212 (and b!6970904 b!6970344)))

(assert (=> bs!1859212 (= (and (= (reg!17454 (regOne!34763 (regOne!34763 r!13765))) (reg!17454 (regOne!34763 r!13765))) (= (regOne!34763 (regOne!34763 r!13765)) (regOne!34763 r!13765))) (= lambda!397685 lambda!397664))))

(declare-fun bs!1859213 () Bool)

(assert (= bs!1859213 (and b!6970904 b!6970328)))

(assert (=> bs!1859213 (not (= lambda!397685 lambda!397663))))

(declare-fun bs!1859214 () Bool)

(assert (= bs!1859214 (and b!6970904 b!6970532)))

(assert (=> bs!1859214 (= (and (= (reg!17454 (regOne!34763 (regOne!34763 r!13765))) (reg!17454 (regTwo!34763 (regTwo!34763 r!13765)))) (= (regOne!34763 (regOne!34763 r!13765)) (regTwo!34763 (regTwo!34763 r!13765)))) (= lambda!397685 lambda!397677))))

(declare-fun bs!1859215 () Bool)

(assert (= bs!1859215 (and b!6970904 b!6970777)))

(assert (=> bs!1859215 (= (and (= (reg!17454 (regOne!34763 (regOne!34763 r!13765))) (reg!17454 (regTwo!34763 (regOne!34763 r!13765)))) (= (regOne!34763 (regOne!34763 r!13765)) (regTwo!34763 (regOne!34763 r!13765)))) (= lambda!397685 lambda!397682))))

(declare-fun bs!1859216 () Bool)

(assert (= bs!1859216 (and b!6970904 b!6970298)))

(assert (=> bs!1859216 (= (and (= (reg!17454 (regOne!34763 (regOne!34763 r!13765))) (reg!17454 r!13765)) (= (regOne!34763 (regOne!34763 r!13765)) r!13765)) (= lambda!397685 lambda!397660))))

(declare-fun bs!1859217 () Bool)

(assert (= bs!1859217 (and b!6970904 b!6970327)))

(assert (=> bs!1859217 (= (and (= (reg!17454 (regOne!34763 (regOne!34763 r!13765))) (reg!17454 (regTwo!34763 r!13765))) (= (regOne!34763 (regOne!34763 r!13765)) (regTwo!34763 r!13765))) (= lambda!397685 lambda!397662))))

(assert (=> b!6970904 true))

(assert (=> b!6970904 true))

(declare-fun bs!1859218 () Bool)

(declare-fun b!6970905 () Bool)

(assert (= bs!1859218 (and b!6970905 b!6970299)))

(declare-fun lambda!397686 () Int)

(assert (=> bs!1859218 (= (and (= (regOne!34762 (regOne!34763 (regOne!34763 r!13765))) (regOne!34762 r!13765)) (= (regTwo!34762 (regOne!34763 (regOne!34763 r!13765))) (regTwo!34762 r!13765))) (= lambda!397686 lambda!397661))))

(declare-fun bs!1859219 () Bool)

(assert (= bs!1859219 (and b!6970905 b!6970345)))

(assert (=> bs!1859219 (= (and (= (regOne!34762 (regOne!34763 (regOne!34763 r!13765))) (regOne!34762 (regOne!34763 r!13765))) (= (regTwo!34762 (regOne!34763 (regOne!34763 r!13765))) (regTwo!34762 (regOne!34763 r!13765)))) (= lambda!397686 lambda!397665))))

(declare-fun bs!1859220 () Bool)

(assert (= bs!1859220 (and b!6970905 b!6970608)))

(assert (=> bs!1859220 (not (= lambda!397686 lambda!397679))))

(declare-fun bs!1859221 () Bool)

(assert (= bs!1859221 (and b!6970905 b!6970609)))

(assert (=> bs!1859221 (= (and (= (regOne!34762 (regOne!34763 (regOne!34763 r!13765))) (regOne!34762 (regOne!34763 (regTwo!34763 r!13765)))) (= (regTwo!34762 (regOne!34763 (regOne!34763 r!13765))) (regTwo!34762 (regOne!34763 (regTwo!34763 r!13765))))) (= lambda!397686 lambda!397681))))

(declare-fun bs!1859222 () Bool)

(assert (= bs!1859222 (and b!6970905 b!6970533)))

(assert (=> bs!1859222 (= (and (= (regOne!34762 (regOne!34763 (regOne!34763 r!13765))) (regOne!34762 (regTwo!34763 (regTwo!34763 r!13765)))) (= (regTwo!34762 (regOne!34763 (regOne!34763 r!13765))) (regTwo!34762 (regTwo!34763 (regTwo!34763 r!13765))))) (= lambda!397686 lambda!397678))))

(declare-fun bs!1859223 () Bool)

(assert (= bs!1859223 (and b!6970905 b!6970904)))

(assert (=> bs!1859223 (not (= lambda!397686 lambda!397685))))

(declare-fun bs!1859224 () Bool)

(assert (= bs!1859224 (and b!6970905 b!6970778)))

(assert (=> bs!1859224 (= (and (= (regOne!34762 (regOne!34763 (regOne!34763 r!13765))) (regOne!34762 (regTwo!34763 (regOne!34763 r!13765)))) (= (regTwo!34762 (regOne!34763 (regOne!34763 r!13765))) (regTwo!34762 (regTwo!34763 (regOne!34763 r!13765))))) (= lambda!397686 lambda!397683))))

(declare-fun bs!1859225 () Bool)

(assert (= bs!1859225 (and b!6970905 b!6970344)))

(assert (=> bs!1859225 (not (= lambda!397686 lambda!397664))))

(declare-fun bs!1859226 () Bool)

(assert (= bs!1859226 (and b!6970905 b!6970328)))

(assert (=> bs!1859226 (= (and (= (regOne!34762 (regOne!34763 (regOne!34763 r!13765))) (regOne!34762 (regTwo!34763 r!13765))) (= (regTwo!34762 (regOne!34763 (regOne!34763 r!13765))) (regTwo!34762 (regTwo!34763 r!13765)))) (= lambda!397686 lambda!397663))))

(declare-fun bs!1859227 () Bool)

(assert (= bs!1859227 (and b!6970905 b!6970532)))

(assert (=> bs!1859227 (not (= lambda!397686 lambda!397677))))

(declare-fun bs!1859228 () Bool)

(assert (= bs!1859228 (and b!6970905 b!6970777)))

(assert (=> bs!1859228 (not (= lambda!397686 lambda!397682))))

(declare-fun bs!1859229 () Bool)

(assert (= bs!1859229 (and b!6970905 b!6970298)))

(assert (=> bs!1859229 (not (= lambda!397686 lambda!397660))))

(declare-fun bs!1859230 () Bool)

(assert (= bs!1859230 (and b!6970905 b!6970327)))

(assert (=> bs!1859230 (not (= lambda!397686 lambda!397662))))

(assert (=> b!6970905 true))

(assert (=> b!6970905 true))

(declare-fun call!632796 () Bool)

(declare-fun c!1292258 () Bool)

(declare-fun bm!632791 () Bool)

(assert (=> bm!632791 (= call!632796 (Exists!4088 (ite c!1292258 lambda!397685 lambda!397686)))))

(declare-fun b!6970903 () Bool)

(declare-fun e!4190201 () Bool)

(declare-fun e!4190203 () Bool)

(assert (=> b!6970903 (= e!4190201 e!4190203)))

(declare-fun res!2843324 () Bool)

(assert (=> b!6970903 (= res!2843324 (matchRSpec!4142 (regOne!34763 (regOne!34763 (regOne!34763 r!13765))) s!9351))))

(assert (=> b!6970903 (=> res!2843324 e!4190203)))

(declare-fun e!4190199 () Bool)

(assert (=> b!6970904 (= e!4190199 call!632796)))

(declare-fun bm!632792 () Bool)

(declare-fun call!632797 () Bool)

(assert (=> bm!632792 (= call!632797 (isEmpty!39011 s!9351))))

(declare-fun d!2171248 () Bool)

(declare-fun c!1292256 () Bool)

(assert (=> d!2171248 (= c!1292256 ((_ is EmptyExpr!17125) (regOne!34763 (regOne!34763 r!13765))))))

(declare-fun e!4190202 () Bool)

(assert (=> d!2171248 (= (matchRSpec!4142 (regOne!34763 (regOne!34763 r!13765)) s!9351) e!4190202)))

(declare-fun e!4190197 () Bool)

(assert (=> b!6970905 (= e!4190197 call!632796)))

(declare-fun b!6970906 () Bool)

(assert (=> b!6970906 (= e!4190202 call!632797)))

(declare-fun b!6970907 () Bool)

(assert (=> b!6970907 (= e!4190201 e!4190197)))

(assert (=> b!6970907 (= c!1292258 ((_ is Star!17125) (regOne!34763 (regOne!34763 r!13765))))))

(declare-fun b!6970908 () Bool)

(declare-fun c!1292259 () Bool)

(assert (=> b!6970908 (= c!1292259 ((_ is Union!17125) (regOne!34763 (regOne!34763 r!13765))))))

(declare-fun e!4190200 () Bool)

(assert (=> b!6970908 (= e!4190200 e!4190201)))

(declare-fun b!6970909 () Bool)

(declare-fun e!4190198 () Bool)

(assert (=> b!6970909 (= e!4190202 e!4190198)))

(declare-fun res!2843326 () Bool)

(assert (=> b!6970909 (= res!2843326 (not ((_ is EmptyLang!17125) (regOne!34763 (regOne!34763 r!13765)))))))

(assert (=> b!6970909 (=> (not res!2843326) (not e!4190198))))

(declare-fun b!6970910 () Bool)

(assert (=> b!6970910 (= e!4190203 (matchRSpec!4142 (regTwo!34763 (regOne!34763 (regOne!34763 r!13765))) s!9351))))

(declare-fun b!6970911 () Bool)

(declare-fun res!2843325 () Bool)

(assert (=> b!6970911 (=> res!2843325 e!4190199)))

(assert (=> b!6970911 (= res!2843325 call!632797)))

(assert (=> b!6970911 (= e!4190197 e!4190199)))

(declare-fun b!6970912 () Bool)

(declare-fun c!1292257 () Bool)

(assert (=> b!6970912 (= c!1292257 ((_ is ElementMatch!17125) (regOne!34763 (regOne!34763 r!13765))))))

(assert (=> b!6970912 (= e!4190198 e!4190200)))

(declare-fun b!6970913 () Bool)

(assert (=> b!6970913 (= e!4190200 (= s!9351 (Cons!66808 (c!1292043 (regOne!34763 (regOne!34763 r!13765))) Nil!66808)))))

(assert (= (and d!2171248 c!1292256) b!6970906))

(assert (= (and d!2171248 (not c!1292256)) b!6970909))

(assert (= (and b!6970909 res!2843326) b!6970912))

(assert (= (and b!6970912 c!1292257) b!6970913))

(assert (= (and b!6970912 (not c!1292257)) b!6970908))

(assert (= (and b!6970908 c!1292259) b!6970903))

(assert (= (and b!6970908 (not c!1292259)) b!6970907))

(assert (= (and b!6970903 (not res!2843324)) b!6970910))

(assert (= (and b!6970907 c!1292258) b!6970911))

(assert (= (and b!6970907 (not c!1292258)) b!6970905))

(assert (= (and b!6970911 (not res!2843325)) b!6970904))

(assert (= (or b!6970904 b!6970905) bm!632791))

(assert (= (or b!6970906 b!6970911) bm!632792))

(declare-fun m!7659722 () Bool)

(assert (=> bm!632791 m!7659722))

(declare-fun m!7659724 () Bool)

(assert (=> b!6970903 m!7659724))

(assert (=> bm!632792 m!7659354))

(declare-fun m!7659726 () Bool)

(assert (=> b!6970910 m!7659726))

(assert (=> b!6970343 d!2171248))

(declare-fun d!2171250 () Bool)

(assert (=> d!2171250 (= (Exists!4088 (ite c!1292130 lambda!397664 lambda!397665)) (choose!51907 (ite c!1292130 lambda!397664 lambda!397665)))))

(declare-fun bs!1859231 () Bool)

(assert (= bs!1859231 d!2171250))

(declare-fun m!7659728 () Bool)

(assert (=> bs!1859231 m!7659728))

(assert (=> bm!632703 d!2171250))

(assert (=> b!6970379 d!2171066))

(declare-fun b!6970916 () Bool)

(declare-fun e!4190204 () Bool)

(declare-fun tp!1923905 () Bool)

(assert (=> b!6970916 (= e!4190204 tp!1923905)))

(declare-fun b!6970917 () Bool)

(declare-fun tp!1923902 () Bool)

(declare-fun tp!1923904 () Bool)

(assert (=> b!6970917 (= e!4190204 (and tp!1923902 tp!1923904))))

(declare-fun b!6970915 () Bool)

(declare-fun tp!1923906 () Bool)

(declare-fun tp!1923903 () Bool)

(assert (=> b!6970915 (= e!4190204 (and tp!1923906 tp!1923903))))

(assert (=> b!6970415 (= tp!1923727 e!4190204)))

(declare-fun b!6970914 () Bool)

(assert (=> b!6970914 (= e!4190204 tp_is_empty!43475)))

(assert (= (and b!6970415 ((_ is ElementMatch!17125) (h!73255 (t!380674 l!9142)))) b!6970914))

(assert (= (and b!6970415 ((_ is Concat!25970) (h!73255 (t!380674 l!9142)))) b!6970915))

(assert (= (and b!6970415 ((_ is Star!17125) (h!73255 (t!380674 l!9142)))) b!6970916))

(assert (= (and b!6970415 ((_ is Union!17125) (h!73255 (t!380674 l!9142)))) b!6970917))

(declare-fun b!6970918 () Bool)

(declare-fun e!4190205 () Bool)

(declare-fun tp!1923907 () Bool)

(declare-fun tp!1923908 () Bool)

(assert (=> b!6970918 (= e!4190205 (and tp!1923907 tp!1923908))))

(assert (=> b!6970415 (= tp!1923728 e!4190205)))

(assert (= (and b!6970415 ((_ is Cons!66807) (t!380674 (t!380674 l!9142)))) b!6970918))

(declare-fun b!6970921 () Bool)

(declare-fun e!4190206 () Bool)

(declare-fun tp!1923912 () Bool)

(assert (=> b!6970921 (= e!4190206 tp!1923912)))

(declare-fun b!6970922 () Bool)

(declare-fun tp!1923909 () Bool)

(declare-fun tp!1923911 () Bool)

(assert (=> b!6970922 (= e!4190206 (and tp!1923909 tp!1923911))))

(declare-fun b!6970920 () Bool)

(declare-fun tp!1923913 () Bool)

(declare-fun tp!1923910 () Bool)

(assert (=> b!6970920 (= e!4190206 (and tp!1923913 tp!1923910))))

(assert (=> b!6970419 (= tp!1923729 e!4190206)))

(declare-fun b!6970919 () Bool)

(assert (=> b!6970919 (= e!4190206 tp_is_empty!43475)))

(assert (= (and b!6970419 ((_ is ElementMatch!17125) (regOne!34763 (reg!17454 r!13765)))) b!6970919))

(assert (= (and b!6970419 ((_ is Concat!25970) (regOne!34763 (reg!17454 r!13765)))) b!6970920))

(assert (= (and b!6970419 ((_ is Star!17125) (regOne!34763 (reg!17454 r!13765)))) b!6970921))

(assert (= (and b!6970419 ((_ is Union!17125) (regOne!34763 (reg!17454 r!13765)))) b!6970922))

(declare-fun b!6970925 () Bool)

(declare-fun e!4190207 () Bool)

(declare-fun tp!1923917 () Bool)

(assert (=> b!6970925 (= e!4190207 tp!1923917)))

(declare-fun b!6970926 () Bool)

(declare-fun tp!1923914 () Bool)

(declare-fun tp!1923916 () Bool)

(assert (=> b!6970926 (= e!4190207 (and tp!1923914 tp!1923916))))

(declare-fun b!6970924 () Bool)

(declare-fun tp!1923918 () Bool)

(declare-fun tp!1923915 () Bool)

(assert (=> b!6970924 (= e!4190207 (and tp!1923918 tp!1923915))))

(assert (=> b!6970419 (= tp!1923731 e!4190207)))

(declare-fun b!6970923 () Bool)

(assert (=> b!6970923 (= e!4190207 tp_is_empty!43475)))

(assert (= (and b!6970419 ((_ is ElementMatch!17125) (regTwo!34763 (reg!17454 r!13765)))) b!6970923))

(assert (= (and b!6970419 ((_ is Concat!25970) (regTwo!34763 (reg!17454 r!13765)))) b!6970924))

(assert (= (and b!6970419 ((_ is Star!17125) (regTwo!34763 (reg!17454 r!13765)))) b!6970925))

(assert (= (and b!6970419 ((_ is Union!17125) (regTwo!34763 (reg!17454 r!13765)))) b!6970926))

(declare-fun b!6970927 () Bool)

(declare-fun e!4190208 () Bool)

(declare-fun tp!1923919 () Bool)

(assert (=> b!6970927 (= e!4190208 (and tp_is_empty!43475 tp!1923919))))

(assert (=> b!6970388 (= tp!1923697 e!4190208)))

(assert (= (and b!6970388 ((_ is Cons!66808) (t!380675 (t!380675 s!9351)))) b!6970927))

(declare-fun b!6970930 () Bool)

(declare-fun e!4190209 () Bool)

(declare-fun tp!1923923 () Bool)

(assert (=> b!6970930 (= e!4190209 tp!1923923)))

(declare-fun b!6970931 () Bool)

(declare-fun tp!1923920 () Bool)

(declare-fun tp!1923922 () Bool)

(assert (=> b!6970931 (= e!4190209 (and tp!1923920 tp!1923922))))

(declare-fun b!6970929 () Bool)

(declare-fun tp!1923924 () Bool)

(declare-fun tp!1923921 () Bool)

(assert (=> b!6970929 (= e!4190209 (and tp!1923924 tp!1923921))))

(assert (=> b!6970423 (= tp!1923734 e!4190209)))

(declare-fun b!6970928 () Bool)

(assert (=> b!6970928 (= e!4190209 tp_is_empty!43475)))

(assert (= (and b!6970423 ((_ is ElementMatch!17125) (regOne!34763 (regOne!34763 r!13765)))) b!6970928))

(assert (= (and b!6970423 ((_ is Concat!25970) (regOne!34763 (regOne!34763 r!13765)))) b!6970929))

(assert (= (and b!6970423 ((_ is Star!17125) (regOne!34763 (regOne!34763 r!13765)))) b!6970930))

(assert (= (and b!6970423 ((_ is Union!17125) (regOne!34763 (regOne!34763 r!13765)))) b!6970931))

(declare-fun b!6970934 () Bool)

(declare-fun e!4190210 () Bool)

(declare-fun tp!1923928 () Bool)

(assert (=> b!6970934 (= e!4190210 tp!1923928)))

(declare-fun b!6970935 () Bool)

(declare-fun tp!1923925 () Bool)

(declare-fun tp!1923927 () Bool)

(assert (=> b!6970935 (= e!4190210 (and tp!1923925 tp!1923927))))

(declare-fun b!6970933 () Bool)

(declare-fun tp!1923929 () Bool)

(declare-fun tp!1923926 () Bool)

(assert (=> b!6970933 (= e!4190210 (and tp!1923929 tp!1923926))))

(assert (=> b!6970423 (= tp!1923736 e!4190210)))

(declare-fun b!6970932 () Bool)

(assert (=> b!6970932 (= e!4190210 tp_is_empty!43475)))

(assert (= (and b!6970423 ((_ is ElementMatch!17125) (regTwo!34763 (regOne!34763 r!13765)))) b!6970932))

(assert (= (and b!6970423 ((_ is Concat!25970) (regTwo!34763 (regOne!34763 r!13765)))) b!6970933))

(assert (= (and b!6970423 ((_ is Star!17125) (regTwo!34763 (regOne!34763 r!13765)))) b!6970934))

(assert (= (and b!6970423 ((_ is Union!17125) (regTwo!34763 (regOne!34763 r!13765)))) b!6970935))

(declare-fun b!6970938 () Bool)

(declare-fun e!4190211 () Bool)

(declare-fun tp!1923933 () Bool)

(assert (=> b!6970938 (= e!4190211 tp!1923933)))

(declare-fun b!6970939 () Bool)

(declare-fun tp!1923930 () Bool)

(declare-fun tp!1923932 () Bool)

(assert (=> b!6970939 (= e!4190211 (and tp!1923930 tp!1923932))))

(declare-fun b!6970937 () Bool)

(declare-fun tp!1923934 () Bool)

(declare-fun tp!1923931 () Bool)

(assert (=> b!6970937 (= e!4190211 (and tp!1923934 tp!1923931))))

(assert (=> b!6970427 (= tp!1923739 e!4190211)))

(declare-fun b!6970936 () Bool)

(assert (=> b!6970936 (= e!4190211 tp_is_empty!43475)))

(assert (= (and b!6970427 ((_ is ElementMatch!17125) (regOne!34763 (regTwo!34763 r!13765)))) b!6970936))

(assert (= (and b!6970427 ((_ is Concat!25970) (regOne!34763 (regTwo!34763 r!13765)))) b!6970937))

(assert (= (and b!6970427 ((_ is Star!17125) (regOne!34763 (regTwo!34763 r!13765)))) b!6970938))

(assert (= (and b!6970427 ((_ is Union!17125) (regOne!34763 (regTwo!34763 r!13765)))) b!6970939))

(declare-fun b!6970942 () Bool)

(declare-fun e!4190212 () Bool)

(declare-fun tp!1923938 () Bool)

(assert (=> b!6970942 (= e!4190212 tp!1923938)))

(declare-fun b!6970943 () Bool)

(declare-fun tp!1923935 () Bool)

(declare-fun tp!1923937 () Bool)

(assert (=> b!6970943 (= e!4190212 (and tp!1923935 tp!1923937))))

(declare-fun b!6970941 () Bool)

(declare-fun tp!1923939 () Bool)

(declare-fun tp!1923936 () Bool)

(assert (=> b!6970941 (= e!4190212 (and tp!1923939 tp!1923936))))

(assert (=> b!6970427 (= tp!1923741 e!4190212)))

(declare-fun b!6970940 () Bool)

(assert (=> b!6970940 (= e!4190212 tp_is_empty!43475)))

(assert (= (and b!6970427 ((_ is ElementMatch!17125) (regTwo!34763 (regTwo!34763 r!13765)))) b!6970940))

(assert (= (and b!6970427 ((_ is Concat!25970) (regTwo!34763 (regTwo!34763 r!13765)))) b!6970941))

(assert (= (and b!6970427 ((_ is Star!17125) (regTwo!34763 (regTwo!34763 r!13765)))) b!6970942))

(assert (= (and b!6970427 ((_ is Union!17125) (regTwo!34763 (regTwo!34763 r!13765)))) b!6970943))

(declare-fun b!6970946 () Bool)

(declare-fun e!4190213 () Bool)

(declare-fun tp!1923943 () Bool)

(assert (=> b!6970946 (= e!4190213 tp!1923943)))

(declare-fun b!6970947 () Bool)

(declare-fun tp!1923940 () Bool)

(declare-fun tp!1923942 () Bool)

(assert (=> b!6970947 (= e!4190213 (and tp!1923940 tp!1923942))))

(declare-fun b!6970945 () Bool)

(declare-fun tp!1923944 () Bool)

(declare-fun tp!1923941 () Bool)

(assert (=> b!6970945 (= e!4190213 (and tp!1923944 tp!1923941))))

(assert (=> b!6970418 (= tp!1923732 e!4190213)))

(declare-fun b!6970944 () Bool)

(assert (=> b!6970944 (= e!4190213 tp_is_empty!43475)))

(assert (= (and b!6970418 ((_ is ElementMatch!17125) (reg!17454 (reg!17454 r!13765)))) b!6970944))

(assert (= (and b!6970418 ((_ is Concat!25970) (reg!17454 (reg!17454 r!13765)))) b!6970945))

(assert (= (and b!6970418 ((_ is Star!17125) (reg!17454 (reg!17454 r!13765)))) b!6970946))

(assert (= (and b!6970418 ((_ is Union!17125) (reg!17454 (reg!17454 r!13765)))) b!6970947))

(declare-fun b!6970950 () Bool)

(declare-fun e!4190214 () Bool)

(declare-fun tp!1923948 () Bool)

(assert (=> b!6970950 (= e!4190214 tp!1923948)))

(declare-fun b!6970951 () Bool)

(declare-fun tp!1923945 () Bool)

(declare-fun tp!1923947 () Bool)

(assert (=> b!6970951 (= e!4190214 (and tp!1923945 tp!1923947))))

(declare-fun b!6970949 () Bool)

(declare-fun tp!1923949 () Bool)

(declare-fun tp!1923946 () Bool)

(assert (=> b!6970949 (= e!4190214 (and tp!1923949 tp!1923946))))

(assert (=> b!6970401 (= tp!1923711 e!4190214)))

(declare-fun b!6970948 () Bool)

(assert (=> b!6970948 (= e!4190214 tp_is_empty!43475)))

(assert (= (and b!6970401 ((_ is ElementMatch!17125) (reg!17454 (regOne!34762 r!13765)))) b!6970948))

(assert (= (and b!6970401 ((_ is Concat!25970) (reg!17454 (regOne!34762 r!13765)))) b!6970949))

(assert (= (and b!6970401 ((_ is Star!17125) (reg!17454 (regOne!34762 r!13765)))) b!6970950))

(assert (= (and b!6970401 ((_ is Union!17125) (reg!17454 (regOne!34762 r!13765)))) b!6970951))

(declare-fun b!6970954 () Bool)

(declare-fun e!4190215 () Bool)

(declare-fun tp!1923953 () Bool)

(assert (=> b!6970954 (= e!4190215 tp!1923953)))

(declare-fun b!6970955 () Bool)

(declare-fun tp!1923950 () Bool)

(declare-fun tp!1923952 () Bool)

(assert (=> b!6970955 (= e!4190215 (and tp!1923950 tp!1923952))))

(declare-fun b!6970953 () Bool)

(declare-fun tp!1923954 () Bool)

(declare-fun tp!1923951 () Bool)

(assert (=> b!6970953 (= e!4190215 (and tp!1923954 tp!1923951))))

(assert (=> b!6970406 (= tp!1923713 e!4190215)))

(declare-fun b!6970952 () Bool)

(assert (=> b!6970952 (= e!4190215 tp_is_empty!43475)))

(assert (= (and b!6970406 ((_ is ElementMatch!17125) (regOne!34763 (regTwo!34762 r!13765)))) b!6970952))

(assert (= (and b!6970406 ((_ is Concat!25970) (regOne!34763 (regTwo!34762 r!13765)))) b!6970953))

(assert (= (and b!6970406 ((_ is Star!17125) (regOne!34763 (regTwo!34762 r!13765)))) b!6970954))

(assert (= (and b!6970406 ((_ is Union!17125) (regOne!34763 (regTwo!34762 r!13765)))) b!6970955))

(declare-fun b!6970958 () Bool)

(declare-fun e!4190216 () Bool)

(declare-fun tp!1923958 () Bool)

(assert (=> b!6970958 (= e!4190216 tp!1923958)))

(declare-fun b!6970959 () Bool)

(declare-fun tp!1923955 () Bool)

(declare-fun tp!1923957 () Bool)

(assert (=> b!6970959 (= e!4190216 (and tp!1923955 tp!1923957))))

(declare-fun b!6970957 () Bool)

(declare-fun tp!1923959 () Bool)

(declare-fun tp!1923956 () Bool)

(assert (=> b!6970957 (= e!4190216 (and tp!1923959 tp!1923956))))

(assert (=> b!6970406 (= tp!1923715 e!4190216)))

(declare-fun b!6970956 () Bool)

(assert (=> b!6970956 (= e!4190216 tp_is_empty!43475)))

(assert (= (and b!6970406 ((_ is ElementMatch!17125) (regTwo!34763 (regTwo!34762 r!13765)))) b!6970956))

(assert (= (and b!6970406 ((_ is Concat!25970) (regTwo!34763 (regTwo!34762 r!13765)))) b!6970957))

(assert (= (and b!6970406 ((_ is Star!17125) (regTwo!34763 (regTwo!34762 r!13765)))) b!6970958))

(assert (= (and b!6970406 ((_ is Union!17125) (regTwo!34763 (regTwo!34762 r!13765)))) b!6970959))

(declare-fun b!6970962 () Bool)

(declare-fun e!4190217 () Bool)

(declare-fun tp!1923963 () Bool)

(assert (=> b!6970962 (= e!4190217 tp!1923963)))

(declare-fun b!6970963 () Bool)

(declare-fun tp!1923960 () Bool)

(declare-fun tp!1923962 () Bool)

(assert (=> b!6970963 (= e!4190217 (and tp!1923960 tp!1923962))))

(declare-fun b!6970961 () Bool)

(declare-fun tp!1923964 () Bool)

(declare-fun tp!1923961 () Bool)

(assert (=> b!6970961 (= e!4190217 (and tp!1923964 tp!1923961))))

(assert (=> b!6970405 (= tp!1923716 e!4190217)))

(declare-fun b!6970960 () Bool)

(assert (=> b!6970960 (= e!4190217 tp_is_empty!43475)))

(assert (= (and b!6970405 ((_ is ElementMatch!17125) (reg!17454 (regTwo!34762 r!13765)))) b!6970960))

(assert (= (and b!6970405 ((_ is Concat!25970) (reg!17454 (regTwo!34762 r!13765)))) b!6970961))

(assert (= (and b!6970405 ((_ is Star!17125) (reg!17454 (regTwo!34762 r!13765)))) b!6970962))

(assert (= (and b!6970405 ((_ is Union!17125) (reg!17454 (regTwo!34762 r!13765)))) b!6970963))

(declare-fun b!6970966 () Bool)

(declare-fun e!4190218 () Bool)

(declare-fun tp!1923968 () Bool)

(assert (=> b!6970966 (= e!4190218 tp!1923968)))

(declare-fun b!6970967 () Bool)

(declare-fun tp!1923965 () Bool)

(declare-fun tp!1923967 () Bool)

(assert (=> b!6970967 (= e!4190218 (and tp!1923965 tp!1923967))))

(declare-fun b!6970965 () Bool)

(declare-fun tp!1923969 () Bool)

(declare-fun tp!1923966 () Bool)

(assert (=> b!6970965 (= e!4190218 (and tp!1923969 tp!1923966))))

(assert (=> b!6970409 (= tp!1923721 e!4190218)))

(declare-fun b!6970964 () Bool)

(assert (=> b!6970964 (= e!4190218 tp_is_empty!43475)))

(assert (= (and b!6970409 ((_ is ElementMatch!17125) (reg!17454 (h!73255 l!9142)))) b!6970964))

(assert (= (and b!6970409 ((_ is Concat!25970) (reg!17454 (h!73255 l!9142)))) b!6970965))

(assert (= (and b!6970409 ((_ is Star!17125) (reg!17454 (h!73255 l!9142)))) b!6970966))

(assert (= (and b!6970409 ((_ is Union!17125) (reg!17454 (h!73255 l!9142)))) b!6970967))

(declare-fun b!6970970 () Bool)

(declare-fun e!4190219 () Bool)

(declare-fun tp!1923973 () Bool)

(assert (=> b!6970970 (= e!4190219 tp!1923973)))

(declare-fun b!6970971 () Bool)

(declare-fun tp!1923970 () Bool)

(declare-fun tp!1923972 () Bool)

(assert (=> b!6970971 (= e!4190219 (and tp!1923970 tp!1923972))))

(declare-fun b!6970969 () Bool)

(declare-fun tp!1923974 () Bool)

(declare-fun tp!1923971 () Bool)

(assert (=> b!6970969 (= e!4190219 (and tp!1923974 tp!1923971))))

(assert (=> b!6970408 (= tp!1923722 e!4190219)))

(declare-fun b!6970968 () Bool)

(assert (=> b!6970968 (= e!4190219 tp_is_empty!43475)))

(assert (= (and b!6970408 ((_ is ElementMatch!17125) (regOne!34762 (h!73255 l!9142)))) b!6970968))

(assert (= (and b!6970408 ((_ is Concat!25970) (regOne!34762 (h!73255 l!9142)))) b!6970969))

(assert (= (and b!6970408 ((_ is Star!17125) (regOne!34762 (h!73255 l!9142)))) b!6970970))

(assert (= (and b!6970408 ((_ is Union!17125) (regOne!34762 (h!73255 l!9142)))) b!6970971))

(declare-fun b!6970974 () Bool)

(declare-fun e!4190220 () Bool)

(declare-fun tp!1923978 () Bool)

(assert (=> b!6970974 (= e!4190220 tp!1923978)))

(declare-fun b!6970975 () Bool)

(declare-fun tp!1923975 () Bool)

(declare-fun tp!1923977 () Bool)

(assert (=> b!6970975 (= e!4190220 (and tp!1923975 tp!1923977))))

(declare-fun b!6970973 () Bool)

(declare-fun tp!1923979 () Bool)

(declare-fun tp!1923976 () Bool)

(assert (=> b!6970973 (= e!4190220 (and tp!1923979 tp!1923976))))

(assert (=> b!6970408 (= tp!1923719 e!4190220)))

(declare-fun b!6970972 () Bool)

(assert (=> b!6970972 (= e!4190220 tp_is_empty!43475)))

(assert (= (and b!6970408 ((_ is ElementMatch!17125) (regTwo!34762 (h!73255 l!9142)))) b!6970972))

(assert (= (and b!6970408 ((_ is Concat!25970) (regTwo!34762 (h!73255 l!9142)))) b!6970973))

(assert (= (and b!6970408 ((_ is Star!17125) (regTwo!34762 (h!73255 l!9142)))) b!6970974))

(assert (= (and b!6970408 ((_ is Union!17125) (regTwo!34762 (h!73255 l!9142)))) b!6970975))

(declare-fun b!6970978 () Bool)

(declare-fun e!4190221 () Bool)

(declare-fun tp!1923983 () Bool)

(assert (=> b!6970978 (= e!4190221 tp!1923983)))

(declare-fun b!6970979 () Bool)

(declare-fun tp!1923980 () Bool)

(declare-fun tp!1923982 () Bool)

(assert (=> b!6970979 (= e!4190221 (and tp!1923980 tp!1923982))))

(declare-fun b!6970977 () Bool)

(declare-fun tp!1923984 () Bool)

(declare-fun tp!1923981 () Bool)

(assert (=> b!6970977 (= e!4190221 (and tp!1923984 tp!1923981))))

(assert (=> b!6970400 (= tp!1923712 e!4190221)))

(declare-fun b!6970976 () Bool)

(assert (=> b!6970976 (= e!4190221 tp_is_empty!43475)))

(assert (= (and b!6970400 ((_ is ElementMatch!17125) (regOne!34762 (regOne!34762 r!13765)))) b!6970976))

(assert (= (and b!6970400 ((_ is Concat!25970) (regOne!34762 (regOne!34762 r!13765)))) b!6970977))

(assert (= (and b!6970400 ((_ is Star!17125) (regOne!34762 (regOne!34762 r!13765)))) b!6970978))

(assert (= (and b!6970400 ((_ is Union!17125) (regOne!34762 (regOne!34762 r!13765)))) b!6970979))

(declare-fun b!6970982 () Bool)

(declare-fun e!4190222 () Bool)

(declare-fun tp!1923988 () Bool)

(assert (=> b!6970982 (= e!4190222 tp!1923988)))

(declare-fun b!6970983 () Bool)

(declare-fun tp!1923985 () Bool)

(declare-fun tp!1923987 () Bool)

(assert (=> b!6970983 (= e!4190222 (and tp!1923985 tp!1923987))))

(declare-fun b!6970981 () Bool)

(declare-fun tp!1923989 () Bool)

(declare-fun tp!1923986 () Bool)

(assert (=> b!6970981 (= e!4190222 (and tp!1923989 tp!1923986))))

(assert (=> b!6970400 (= tp!1923709 e!4190222)))

(declare-fun b!6970980 () Bool)

(assert (=> b!6970980 (= e!4190222 tp_is_empty!43475)))

(assert (= (and b!6970400 ((_ is ElementMatch!17125) (regTwo!34762 (regOne!34762 r!13765)))) b!6970980))

(assert (= (and b!6970400 ((_ is Concat!25970) (regTwo!34762 (regOne!34762 r!13765)))) b!6970981))

(assert (= (and b!6970400 ((_ is Star!17125) (regTwo!34762 (regOne!34762 r!13765)))) b!6970982))

(assert (= (and b!6970400 ((_ is Union!17125) (regTwo!34762 (regOne!34762 r!13765)))) b!6970983))

(declare-fun b!6970986 () Bool)

(declare-fun e!4190223 () Bool)

(declare-fun tp!1923993 () Bool)

(assert (=> b!6970986 (= e!4190223 tp!1923993)))

(declare-fun b!6970987 () Bool)

(declare-fun tp!1923990 () Bool)

(declare-fun tp!1923992 () Bool)

(assert (=> b!6970987 (= e!4190223 (and tp!1923990 tp!1923992))))

(declare-fun b!6970985 () Bool)

(declare-fun tp!1923994 () Bool)

(declare-fun tp!1923991 () Bool)

(assert (=> b!6970985 (= e!4190223 (and tp!1923994 tp!1923991))))

(assert (=> b!6970404 (= tp!1923717 e!4190223)))

(declare-fun b!6970984 () Bool)

(assert (=> b!6970984 (= e!4190223 tp_is_empty!43475)))

(assert (= (and b!6970404 ((_ is ElementMatch!17125) (regOne!34762 (regTwo!34762 r!13765)))) b!6970984))

(assert (= (and b!6970404 ((_ is Concat!25970) (regOne!34762 (regTwo!34762 r!13765)))) b!6970985))

(assert (= (and b!6970404 ((_ is Star!17125) (regOne!34762 (regTwo!34762 r!13765)))) b!6970986))

(assert (= (and b!6970404 ((_ is Union!17125) (regOne!34762 (regTwo!34762 r!13765)))) b!6970987))

(declare-fun b!6970990 () Bool)

(declare-fun e!4190224 () Bool)

(declare-fun tp!1923998 () Bool)

(assert (=> b!6970990 (= e!4190224 tp!1923998)))

(declare-fun b!6970991 () Bool)

(declare-fun tp!1923995 () Bool)

(declare-fun tp!1923997 () Bool)

(assert (=> b!6970991 (= e!4190224 (and tp!1923995 tp!1923997))))

(declare-fun b!6970989 () Bool)

(declare-fun tp!1923999 () Bool)

(declare-fun tp!1923996 () Bool)

(assert (=> b!6970989 (= e!4190224 (and tp!1923999 tp!1923996))))

(assert (=> b!6970404 (= tp!1923714 e!4190224)))

(declare-fun b!6970988 () Bool)

(assert (=> b!6970988 (= e!4190224 tp_is_empty!43475)))

(assert (= (and b!6970404 ((_ is ElementMatch!17125) (regTwo!34762 (regTwo!34762 r!13765)))) b!6970988))

(assert (= (and b!6970404 ((_ is Concat!25970) (regTwo!34762 (regTwo!34762 r!13765)))) b!6970989))

(assert (= (and b!6970404 ((_ is Star!17125) (regTwo!34762 (regTwo!34762 r!13765)))) b!6970990))

(assert (= (and b!6970404 ((_ is Union!17125) (regTwo!34762 (regTwo!34762 r!13765)))) b!6970991))

(declare-fun b!6970994 () Bool)

(declare-fun e!4190225 () Bool)

(declare-fun tp!1924003 () Bool)

(assert (=> b!6970994 (= e!4190225 tp!1924003)))

(declare-fun b!6970995 () Bool)

(declare-fun tp!1924000 () Bool)

(declare-fun tp!1924002 () Bool)

(assert (=> b!6970995 (= e!4190225 (and tp!1924000 tp!1924002))))

(declare-fun b!6970993 () Bool)

(declare-fun tp!1924004 () Bool)

(declare-fun tp!1924001 () Bool)

(assert (=> b!6970993 (= e!4190225 (and tp!1924004 tp!1924001))))

(assert (=> b!6970410 (= tp!1923718 e!4190225)))

(declare-fun b!6970992 () Bool)

(assert (=> b!6970992 (= e!4190225 tp_is_empty!43475)))

(assert (= (and b!6970410 ((_ is ElementMatch!17125) (regOne!34763 (h!73255 l!9142)))) b!6970992))

(assert (= (and b!6970410 ((_ is Concat!25970) (regOne!34763 (h!73255 l!9142)))) b!6970993))

(assert (= (and b!6970410 ((_ is Star!17125) (regOne!34763 (h!73255 l!9142)))) b!6970994))

(assert (= (and b!6970410 ((_ is Union!17125) (regOne!34763 (h!73255 l!9142)))) b!6970995))

(declare-fun b!6970998 () Bool)

(declare-fun e!4190226 () Bool)

(declare-fun tp!1924008 () Bool)

(assert (=> b!6970998 (= e!4190226 tp!1924008)))

(declare-fun b!6970999 () Bool)

(declare-fun tp!1924005 () Bool)

(declare-fun tp!1924007 () Bool)

(assert (=> b!6970999 (= e!4190226 (and tp!1924005 tp!1924007))))

(declare-fun b!6970997 () Bool)

(declare-fun tp!1924009 () Bool)

(declare-fun tp!1924006 () Bool)

(assert (=> b!6970997 (= e!4190226 (and tp!1924009 tp!1924006))))

(assert (=> b!6970410 (= tp!1923720 e!4190226)))

(declare-fun b!6970996 () Bool)

(assert (=> b!6970996 (= e!4190226 tp_is_empty!43475)))

(assert (= (and b!6970410 ((_ is ElementMatch!17125) (regTwo!34763 (h!73255 l!9142)))) b!6970996))

(assert (= (and b!6970410 ((_ is Concat!25970) (regTwo!34763 (h!73255 l!9142)))) b!6970997))

(assert (= (and b!6970410 ((_ is Star!17125) (regTwo!34763 (h!73255 l!9142)))) b!6970998))

(assert (= (and b!6970410 ((_ is Union!17125) (regTwo!34763 (h!73255 l!9142)))) b!6970999))

(declare-fun b!6971002 () Bool)

(declare-fun e!4190227 () Bool)

(declare-fun tp!1924013 () Bool)

(assert (=> b!6971002 (= e!4190227 tp!1924013)))

(declare-fun b!6971003 () Bool)

(declare-fun tp!1924010 () Bool)

(declare-fun tp!1924012 () Bool)

(assert (=> b!6971003 (= e!4190227 (and tp!1924010 tp!1924012))))

(declare-fun b!6971001 () Bool)

(declare-fun tp!1924014 () Bool)

(declare-fun tp!1924011 () Bool)

(assert (=> b!6971001 (= e!4190227 (and tp!1924014 tp!1924011))))

(assert (=> b!6970402 (= tp!1923708 e!4190227)))

(declare-fun b!6971000 () Bool)

(assert (=> b!6971000 (= e!4190227 tp_is_empty!43475)))

(assert (= (and b!6970402 ((_ is ElementMatch!17125) (regOne!34763 (regOne!34762 r!13765)))) b!6971000))

(assert (= (and b!6970402 ((_ is Concat!25970) (regOne!34763 (regOne!34762 r!13765)))) b!6971001))

(assert (= (and b!6970402 ((_ is Star!17125) (regOne!34763 (regOne!34762 r!13765)))) b!6971002))

(assert (= (and b!6970402 ((_ is Union!17125) (regOne!34763 (regOne!34762 r!13765)))) b!6971003))

(declare-fun b!6971006 () Bool)

(declare-fun e!4190228 () Bool)

(declare-fun tp!1924018 () Bool)

(assert (=> b!6971006 (= e!4190228 tp!1924018)))

(declare-fun b!6971007 () Bool)

(declare-fun tp!1924015 () Bool)

(declare-fun tp!1924017 () Bool)

(assert (=> b!6971007 (= e!4190228 (and tp!1924015 tp!1924017))))

(declare-fun b!6971005 () Bool)

(declare-fun tp!1924019 () Bool)

(declare-fun tp!1924016 () Bool)

(assert (=> b!6971005 (= e!4190228 (and tp!1924019 tp!1924016))))

(assert (=> b!6970402 (= tp!1923710 e!4190228)))

(declare-fun b!6971004 () Bool)

(assert (=> b!6971004 (= e!4190228 tp_is_empty!43475)))

(assert (= (and b!6970402 ((_ is ElementMatch!17125) (regTwo!34763 (regOne!34762 r!13765)))) b!6971004))

(assert (= (and b!6970402 ((_ is Concat!25970) (regTwo!34763 (regOne!34762 r!13765)))) b!6971005))

(assert (= (and b!6970402 ((_ is Star!17125) (regTwo!34763 (regOne!34762 r!13765)))) b!6971006))

(assert (= (and b!6970402 ((_ is Union!17125) (regTwo!34763 (regOne!34762 r!13765)))) b!6971007))

(declare-fun b!6971010 () Bool)

(declare-fun e!4190229 () Bool)

(declare-fun tp!1924023 () Bool)

(assert (=> b!6971010 (= e!4190229 tp!1924023)))

(declare-fun b!6971011 () Bool)

(declare-fun tp!1924020 () Bool)

(declare-fun tp!1924022 () Bool)

(assert (=> b!6971011 (= e!4190229 (and tp!1924020 tp!1924022))))

(declare-fun b!6971009 () Bool)

(declare-fun tp!1924024 () Bool)

(declare-fun tp!1924021 () Bool)

(assert (=> b!6971009 (= e!4190229 (and tp!1924024 tp!1924021))))

(assert (=> b!6970417 (= tp!1923733 e!4190229)))

(declare-fun b!6971008 () Bool)

(assert (=> b!6971008 (= e!4190229 tp_is_empty!43475)))

(assert (= (and b!6970417 ((_ is ElementMatch!17125) (regOne!34762 (reg!17454 r!13765)))) b!6971008))

(assert (= (and b!6970417 ((_ is Concat!25970) (regOne!34762 (reg!17454 r!13765)))) b!6971009))

(assert (= (and b!6970417 ((_ is Star!17125) (regOne!34762 (reg!17454 r!13765)))) b!6971010))

(assert (= (and b!6970417 ((_ is Union!17125) (regOne!34762 (reg!17454 r!13765)))) b!6971011))

(declare-fun b!6971014 () Bool)

(declare-fun e!4190230 () Bool)

(declare-fun tp!1924028 () Bool)

(assert (=> b!6971014 (= e!4190230 tp!1924028)))

(declare-fun b!6971015 () Bool)

(declare-fun tp!1924025 () Bool)

(declare-fun tp!1924027 () Bool)

(assert (=> b!6971015 (= e!4190230 (and tp!1924025 tp!1924027))))

(declare-fun b!6971013 () Bool)

(declare-fun tp!1924029 () Bool)

(declare-fun tp!1924026 () Bool)

(assert (=> b!6971013 (= e!4190230 (and tp!1924029 tp!1924026))))

(assert (=> b!6970417 (= tp!1923730 e!4190230)))

(declare-fun b!6971012 () Bool)

(assert (=> b!6971012 (= e!4190230 tp_is_empty!43475)))

(assert (= (and b!6970417 ((_ is ElementMatch!17125) (regTwo!34762 (reg!17454 r!13765)))) b!6971012))

(assert (= (and b!6970417 ((_ is Concat!25970) (regTwo!34762 (reg!17454 r!13765)))) b!6971013))

(assert (= (and b!6970417 ((_ is Star!17125) (regTwo!34762 (reg!17454 r!13765)))) b!6971014))

(assert (= (and b!6970417 ((_ is Union!17125) (regTwo!34762 (reg!17454 r!13765)))) b!6971015))

(declare-fun b!6971018 () Bool)

(declare-fun e!4190231 () Bool)

(declare-fun tp!1924033 () Bool)

(assert (=> b!6971018 (= e!4190231 tp!1924033)))

(declare-fun b!6971019 () Bool)

(declare-fun tp!1924030 () Bool)

(declare-fun tp!1924032 () Bool)

(assert (=> b!6971019 (= e!4190231 (and tp!1924030 tp!1924032))))

(declare-fun b!6971017 () Bool)

(declare-fun tp!1924034 () Bool)

(declare-fun tp!1924031 () Bool)

(assert (=> b!6971017 (= e!4190231 (and tp!1924034 tp!1924031))))

(assert (=> b!6970422 (= tp!1923737 e!4190231)))

(declare-fun b!6971016 () Bool)

(assert (=> b!6971016 (= e!4190231 tp_is_empty!43475)))

(assert (= (and b!6970422 ((_ is ElementMatch!17125) (reg!17454 (regOne!34763 r!13765)))) b!6971016))

(assert (= (and b!6970422 ((_ is Concat!25970) (reg!17454 (regOne!34763 r!13765)))) b!6971017))

(assert (= (and b!6970422 ((_ is Star!17125) (reg!17454 (regOne!34763 r!13765)))) b!6971018))

(assert (= (and b!6970422 ((_ is Union!17125) (reg!17454 (regOne!34763 r!13765)))) b!6971019))

(declare-fun b!6971022 () Bool)

(declare-fun e!4190232 () Bool)

(declare-fun tp!1924038 () Bool)

(assert (=> b!6971022 (= e!4190232 tp!1924038)))

(declare-fun b!6971023 () Bool)

(declare-fun tp!1924035 () Bool)

(declare-fun tp!1924037 () Bool)

(assert (=> b!6971023 (= e!4190232 (and tp!1924035 tp!1924037))))

(declare-fun b!6971021 () Bool)

(declare-fun tp!1924039 () Bool)

(declare-fun tp!1924036 () Bool)

(assert (=> b!6971021 (= e!4190232 (and tp!1924039 tp!1924036))))

(assert (=> b!6970421 (= tp!1923738 e!4190232)))

(declare-fun b!6971020 () Bool)

(assert (=> b!6971020 (= e!4190232 tp_is_empty!43475)))

(assert (= (and b!6970421 ((_ is ElementMatch!17125) (regOne!34762 (regOne!34763 r!13765)))) b!6971020))

(assert (= (and b!6970421 ((_ is Concat!25970) (regOne!34762 (regOne!34763 r!13765)))) b!6971021))

(assert (= (and b!6970421 ((_ is Star!17125) (regOne!34762 (regOne!34763 r!13765)))) b!6971022))

(assert (= (and b!6970421 ((_ is Union!17125) (regOne!34762 (regOne!34763 r!13765)))) b!6971023))

(declare-fun b!6971026 () Bool)

(declare-fun e!4190233 () Bool)

(declare-fun tp!1924043 () Bool)

(assert (=> b!6971026 (= e!4190233 tp!1924043)))

(declare-fun b!6971027 () Bool)

(declare-fun tp!1924040 () Bool)

(declare-fun tp!1924042 () Bool)

(assert (=> b!6971027 (= e!4190233 (and tp!1924040 tp!1924042))))

(declare-fun b!6971025 () Bool)

(declare-fun tp!1924044 () Bool)

(declare-fun tp!1924041 () Bool)

(assert (=> b!6971025 (= e!4190233 (and tp!1924044 tp!1924041))))

(assert (=> b!6970421 (= tp!1923735 e!4190233)))

(declare-fun b!6971024 () Bool)

(assert (=> b!6971024 (= e!4190233 tp_is_empty!43475)))

(assert (= (and b!6970421 ((_ is ElementMatch!17125) (regTwo!34762 (regOne!34763 r!13765)))) b!6971024))

(assert (= (and b!6970421 ((_ is Concat!25970) (regTwo!34762 (regOne!34763 r!13765)))) b!6971025))

(assert (= (and b!6970421 ((_ is Star!17125) (regTwo!34762 (regOne!34763 r!13765)))) b!6971026))

(assert (= (and b!6970421 ((_ is Union!17125) (regTwo!34762 (regOne!34763 r!13765)))) b!6971027))

(declare-fun b!6971030 () Bool)

(declare-fun e!4190234 () Bool)

(declare-fun tp!1924048 () Bool)

(assert (=> b!6971030 (= e!4190234 tp!1924048)))

(declare-fun b!6971031 () Bool)

(declare-fun tp!1924045 () Bool)

(declare-fun tp!1924047 () Bool)

(assert (=> b!6971031 (= e!4190234 (and tp!1924045 tp!1924047))))

(declare-fun b!6971029 () Bool)

(declare-fun tp!1924049 () Bool)

(declare-fun tp!1924046 () Bool)

(assert (=> b!6971029 (= e!4190234 (and tp!1924049 tp!1924046))))

(assert (=> b!6970426 (= tp!1923742 e!4190234)))

(declare-fun b!6971028 () Bool)

(assert (=> b!6971028 (= e!4190234 tp_is_empty!43475)))

(assert (= (and b!6970426 ((_ is ElementMatch!17125) (reg!17454 (regTwo!34763 r!13765)))) b!6971028))

(assert (= (and b!6970426 ((_ is Concat!25970) (reg!17454 (regTwo!34763 r!13765)))) b!6971029))

(assert (= (and b!6970426 ((_ is Star!17125) (reg!17454 (regTwo!34763 r!13765)))) b!6971030))

(assert (= (and b!6970426 ((_ is Union!17125) (reg!17454 (regTwo!34763 r!13765)))) b!6971031))

(declare-fun b!6971034 () Bool)

(declare-fun e!4190235 () Bool)

(declare-fun tp!1924053 () Bool)

(assert (=> b!6971034 (= e!4190235 tp!1924053)))

(declare-fun b!6971035 () Bool)

(declare-fun tp!1924050 () Bool)

(declare-fun tp!1924052 () Bool)

(assert (=> b!6971035 (= e!4190235 (and tp!1924050 tp!1924052))))

(declare-fun b!6971033 () Bool)

(declare-fun tp!1924054 () Bool)

(declare-fun tp!1924051 () Bool)

(assert (=> b!6971033 (= e!4190235 (and tp!1924054 tp!1924051))))

(assert (=> b!6970425 (= tp!1923743 e!4190235)))

(declare-fun b!6971032 () Bool)

(assert (=> b!6971032 (= e!4190235 tp_is_empty!43475)))

(assert (= (and b!6970425 ((_ is ElementMatch!17125) (regOne!34762 (regTwo!34763 r!13765)))) b!6971032))

(assert (= (and b!6970425 ((_ is Concat!25970) (regOne!34762 (regTwo!34763 r!13765)))) b!6971033))

(assert (= (and b!6970425 ((_ is Star!17125) (regOne!34762 (regTwo!34763 r!13765)))) b!6971034))

(assert (= (and b!6970425 ((_ is Union!17125) (regOne!34762 (regTwo!34763 r!13765)))) b!6971035))

(declare-fun b!6971038 () Bool)

(declare-fun e!4190236 () Bool)

(declare-fun tp!1924058 () Bool)

(assert (=> b!6971038 (= e!4190236 tp!1924058)))

(declare-fun b!6971039 () Bool)

(declare-fun tp!1924055 () Bool)

(declare-fun tp!1924057 () Bool)

(assert (=> b!6971039 (= e!4190236 (and tp!1924055 tp!1924057))))

(declare-fun b!6971037 () Bool)

(declare-fun tp!1924059 () Bool)

(declare-fun tp!1924056 () Bool)

(assert (=> b!6971037 (= e!4190236 (and tp!1924059 tp!1924056))))

(assert (=> b!6970425 (= tp!1923740 e!4190236)))

(declare-fun b!6971036 () Bool)

(assert (=> b!6971036 (= e!4190236 tp_is_empty!43475)))

(assert (= (and b!6970425 ((_ is ElementMatch!17125) (regTwo!34762 (regTwo!34763 r!13765)))) b!6971036))

(assert (= (and b!6970425 ((_ is Concat!25970) (regTwo!34762 (regTwo!34763 r!13765)))) b!6971037))

(assert (= (and b!6970425 ((_ is Star!17125) (regTwo!34762 (regTwo!34763 r!13765)))) b!6971038))

(assert (= (and b!6970425 ((_ is Union!17125) (regTwo!34762 (regTwo!34763 r!13765)))) b!6971039))

(declare-fun b_lambda!260793 () Bool)

(assert (= b_lambda!260781 (or start!668402 b_lambda!260793)))

(declare-fun bs!1859232 () Bool)

(declare-fun d!2171252 () Bool)

(assert (= bs!1859232 (and d!2171252 start!668402)))

(assert (=> bs!1859232 (= (dynLambda!26639 lambda!397642 (h!73255 (t!380674 l!9142))) (validRegex!8807 (h!73255 (t!380674 l!9142))))))

(declare-fun m!7659730 () Bool)

(assert (=> bs!1859232 m!7659730))

(assert (=> b!6970562 d!2171252))

(declare-fun b_lambda!260795 () Bool)

(assert (= b_lambda!260787 (or d!2171112 b_lambda!260795)))

(declare-fun bs!1859233 () Bool)

(declare-fun d!2171254 () Bool)

(assert (= bs!1859233 (and d!2171254 d!2171112)))

(assert (=> bs!1859233 (= (dynLambda!26639 lambda!397668 (h!73255 l!9142)) (validRegex!8807 (h!73255 l!9142)))))

(assert (=> bs!1859233 m!7659454))

(assert (=> b!6970758 d!2171254))

(check-sat (not b!6970981) (not bm!632730) (not b!6970934) (not b!6971001) (not b!6970607) (not b!6970965) (not b!6970959) (not b!6970814) (not b!6970812) (not b!6971007) (not b!6970993) (not b!6970922) (not b!6970942) (not b!6970962) (not b!6971037) (not b!6970994) (not b!6970783) (not b!6971013) (not d!2171220) (not b!6971027) (not b!6970939) (not b!6970563) (not bm!632789) (not bm!632751) tp_is_empty!43475 (not b!6970867) (not b!6970977) (not b!6970903) (not b!6970917) (not b!6970503) (not b!6970930) (not b!6971018) (not b!6970991) (not b!6970933) (not b!6970931) (not b!6970935) (not b!6970973) (not b!6970997) (not b!6970961) (not b!6970924) (not b!6970817) (not b!6970989) (not b_lambda!260793) (not b!6971038) (not d!2171168) (not b!6970526) (not b!6970946) (not bm!632792) (not b!6971035) (not b!6970808) (not b!6970951) (not b!6970947) (not b!6971031) (not b!6970886) (not bm!632777) (not b!6970869) (not bm!632767) (not bm!632752) (not b!6970538) (not d!2171222) (not b!6970971) (not b!6970927) (not d!2171232) (not b!6971019) (not b!6970938) (not b!6971023) (not b!6970531) (not bm!632744) (not b!6970889) (not b!6970963) (not b!6971014) (not b!6970987) (not b!6970865) (not b!6970945) (not b!6970979) (not b!6970861) (not b!6971033) (not b!6971029) (not bm!632765) (not b!6970999) (not bm!632783) (not b!6970982) (not b!6970921) (not b!6971039) (not b!6970969) (not b_lambda!260795) (not b!6971010) (not b!6971025) (not bm!632784) (not b!6970967) (not b!6970884) (not b!6970870) (not bm!632791) (not b!6971021) (not b!6970937) (not bm!632785) (not b!6970943) (not b!6970941) (not b!6970916) (not b!6970816) (not b!6970592) (not d!2171234) (not bm!632723) (not b!6970925) (not b!6971022) (not b!6971015) (not b!6970978) (not bm!632762) (not b!6970893) (not b!6970983) (not b!6970949) (not b!6971002) (not b!6970918) (not d!2171224) (not b!6970898) (not bm!632727) (not b!6971030) (not b!6970891) (not bm!632776) (not b!6970850) (not b!6970614) (not b!6970776) (not b!6970950) (not b!6970974) (not b!6970872) (not b!6970975) (not b!6970920) (not b!6971034) (not b!6970915) (not b!6970970) (not bm!632766) (not b!6970985) (not b!6971009) (not bm!632745) (not b!6971005) (not bm!632729) (not b!6970819) (not b!6970885) (not bm!632788) (not b!6971006) (not b!6970955) (not b!6970910) (not d!2171246) (not b!6970998) (not b!6970926) (not b!6970888) (not b!6970966) (not d!2171244) (not b!6971026) (not b!6970729) (not bm!632780) (not d!2171238) (not b!6970883) (not bm!632722) (not b!6970953) (not b_lambda!260779) (not d!2171230) (not b!6970990) (not b!6970855) (not d!2171250) (not d!2171218) (not bm!632763) (not bs!1859232) (not b!6970929) (not b!6971011) (not b!6970957) (not b!6970986) (not bm!632781) (not b!6971017) (not b!6970958) (not bs!1859233) (not b!6971003) (not bm!632726) (not b!6970954) (not b!6970995) (not d!2171236) (not b!6970759))
(check-sat)
