; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744262 () Bool)

(assert start!744262)

(declare-fun b!7880130 () Bool)

(declare-fun res!3129556 () Bool)

(declare-fun e!4653675 () Bool)

(assert (=> b!7880130 (=> (not res!3129556) (not e!4653675))))

(declare-datatypes ((C!42696 0))(
  ( (C!42697 (val!31810 Int)) )
))
(declare-datatypes ((Regex!21185 0))(
  ( (ElementMatch!21185 (c!1447097 C!42696)) (Concat!30030 (regOne!42882 Regex!21185) (regTwo!42882 Regex!21185)) (EmptyExpr!21185) (Star!21185 (reg!21514 Regex!21185)) (EmptyLang!21185) (Union!21185 (regOne!42883 Regex!21185) (regTwo!42883 Regex!21185)) )
))
(declare-fun r2!6150 () Regex!21185)

(declare-datatypes ((List!74044 0))(
  ( (Nil!73920) (Cons!73920 (h!80368 C!42696) (t!388779 List!74044)) )
))
(declare-fun s!14231 () List!74044)

(declare-fun r1!6212 () Regex!21185)

(declare-fun matchR!10621 (Regex!21185 List!74044) Bool)

(assert (=> b!7880130 (= res!3129556 (matchR!10621 (Union!21185 r1!6212 r2!6150) s!14231))))

(declare-fun b!7880131 () Bool)

(declare-fun res!3129555 () Bool)

(assert (=> b!7880131 (=> (not res!3129555) (not e!4653675))))

(get-info :version)

(assert (=> b!7880131 (= res!3129555 (not ((_ is Cons!73920) s!14231)))))

(declare-fun res!3129557 () Bool)

(assert (=> start!744262 (=> (not res!3129557) (not e!4653675))))

(declare-fun validRegex!11595 (Regex!21185) Bool)

(assert (=> start!744262 (= res!3129557 (validRegex!11595 r1!6212))))

(assert (=> start!744262 e!4653675))

(declare-fun e!4653677 () Bool)

(assert (=> start!744262 e!4653677))

(declare-fun e!4653674 () Bool)

(assert (=> start!744262 e!4653674))

(declare-fun e!4653676 () Bool)

(assert (=> start!744262 e!4653676))

(declare-fun b!7880132 () Bool)

(assert (=> b!7880132 (= e!4653675 (not (validRegex!11595 (Union!21185 r2!6150 r1!6212))))))

(declare-fun b!7880133 () Bool)

(declare-fun tp!2341480 () Bool)

(declare-fun tp!2341482 () Bool)

(assert (=> b!7880133 (= e!4653677 (and tp!2341480 tp!2341482))))

(declare-fun b!7880134 () Bool)

(declare-fun tp!2341479 () Bool)

(assert (=> b!7880134 (= e!4653674 tp!2341479)))

(declare-fun b!7880135 () Bool)

(declare-fun tp_is_empty!52769 () Bool)

(declare-fun tp!2341484 () Bool)

(assert (=> b!7880135 (= e!4653676 (and tp_is_empty!52769 tp!2341484))))

(declare-fun b!7880136 () Bool)

(assert (=> b!7880136 (= e!4653677 tp_is_empty!52769)))

(declare-fun b!7880137 () Bool)

(declare-fun res!3129558 () Bool)

(assert (=> b!7880137 (=> (not res!3129558) (not e!4653675))))

(assert (=> b!7880137 (= res!3129558 (validRegex!11595 r2!6150))))

(declare-fun b!7880138 () Bool)

(declare-fun tp!2341483 () Bool)

(declare-fun tp!2341481 () Bool)

(assert (=> b!7880138 (= e!4653677 (and tp!2341483 tp!2341481))))

(declare-fun b!7880139 () Bool)

(declare-fun tp!2341475 () Bool)

(assert (=> b!7880139 (= e!4653677 tp!2341475)))

(declare-fun b!7880140 () Bool)

(declare-fun tp!2341476 () Bool)

(declare-fun tp!2341474 () Bool)

(assert (=> b!7880140 (= e!4653674 (and tp!2341476 tp!2341474))))

(declare-fun b!7880141 () Bool)

(assert (=> b!7880141 (= e!4653674 tp_is_empty!52769)))

(declare-fun b!7880142 () Bool)

(declare-fun tp!2341477 () Bool)

(declare-fun tp!2341478 () Bool)

(assert (=> b!7880142 (= e!4653674 (and tp!2341477 tp!2341478))))

(assert (= (and start!744262 res!3129557) b!7880137))

(assert (= (and b!7880137 res!3129558) b!7880130))

(assert (= (and b!7880130 res!3129556) b!7880131))

(assert (= (and b!7880131 res!3129555) b!7880132))

(assert (= (and start!744262 ((_ is ElementMatch!21185) r1!6212)) b!7880136))

(assert (= (and start!744262 ((_ is Concat!30030) r1!6212)) b!7880138))

(assert (= (and start!744262 ((_ is Star!21185) r1!6212)) b!7880139))

(assert (= (and start!744262 ((_ is Union!21185) r1!6212)) b!7880133))

(assert (= (and start!744262 ((_ is ElementMatch!21185) r2!6150)) b!7880141))

(assert (= (and start!744262 ((_ is Concat!30030) r2!6150)) b!7880142))

(assert (= (and start!744262 ((_ is Star!21185) r2!6150)) b!7880134))

(assert (= (and start!744262 ((_ is Union!21185) r2!6150)) b!7880140))

(assert (= (and start!744262 ((_ is Cons!73920) s!14231)) b!7880135))

(declare-fun m!8267724 () Bool)

(assert (=> b!7880130 m!8267724))

(declare-fun m!8267726 () Bool)

(assert (=> start!744262 m!8267726))

(declare-fun m!8267728 () Bool)

(assert (=> b!7880132 m!8267728))

(declare-fun m!8267730 () Bool)

(assert (=> b!7880137 m!8267730))

(check-sat (not start!744262) (not b!7880133) (not b!7880140) (not b!7880134) tp_is_empty!52769 (not b!7880138) (not b!7880132) (not b!7880142) (not b!7880139) (not b!7880135) (not b!7880130) (not b!7880137))
(check-sat)
(get-model)

(declare-fun d!2355995 () Bool)

(declare-fun res!3129614 () Bool)

(declare-fun e!4653741 () Bool)

(assert (=> d!2355995 (=> res!3129614 e!4653741)))

(assert (=> d!2355995 (= res!3129614 ((_ is ElementMatch!21185) (Union!21185 r2!6150 r1!6212)))))

(assert (=> d!2355995 (= (validRegex!11595 (Union!21185 r2!6150 r1!6212)) e!4653741)))

(declare-fun call!730945 () Bool)

(declare-fun c!1447118 () Bool)

(declare-fun c!1447119 () Bool)

(declare-fun bm!730939 () Bool)

(assert (=> bm!730939 (= call!730945 (validRegex!11595 (ite c!1447118 (reg!21514 (Union!21185 r2!6150 r1!6212)) (ite c!1447119 (regTwo!42883 (Union!21185 r2!6150 r1!6212)) (regOne!42882 (Union!21185 r2!6150 r1!6212))))))))

(declare-fun b!7880234 () Bool)

(declare-fun e!4653742 () Bool)

(declare-fun e!4653746 () Bool)

(assert (=> b!7880234 (= e!4653742 e!4653746)))

(declare-fun res!3129613 () Bool)

(declare-fun nullable!9445 (Regex!21185) Bool)

(assert (=> b!7880234 (= res!3129613 (not (nullable!9445 (reg!21514 (Union!21185 r2!6150 r1!6212)))))))

(assert (=> b!7880234 (=> (not res!3129613) (not e!4653746))))

(declare-fun bm!730940 () Bool)

(declare-fun call!730944 () Bool)

(assert (=> bm!730940 (= call!730944 (validRegex!11595 (ite c!1447119 (regOne!42883 (Union!21185 r2!6150 r1!6212)) (regTwo!42882 (Union!21185 r2!6150 r1!6212)))))))

(declare-fun b!7880235 () Bool)

(assert (=> b!7880235 (= e!4653746 call!730945)))

(declare-fun b!7880236 () Bool)

(declare-fun res!3129612 () Bool)

(declare-fun e!4653744 () Bool)

(assert (=> b!7880236 (=> res!3129612 e!4653744)))

(assert (=> b!7880236 (= res!3129612 (not ((_ is Concat!30030) (Union!21185 r2!6150 r1!6212))))))

(declare-fun e!4653745 () Bool)

(assert (=> b!7880236 (= e!4653745 e!4653744)))

(declare-fun b!7880237 () Bool)

(assert (=> b!7880237 (= e!4653741 e!4653742)))

(assert (=> b!7880237 (= c!1447118 ((_ is Star!21185) (Union!21185 r2!6150 r1!6212)))))

(declare-fun bm!730941 () Bool)

(declare-fun call!730946 () Bool)

(assert (=> bm!730941 (= call!730946 call!730945)))

(declare-fun b!7880238 () Bool)

(declare-fun e!4653743 () Bool)

(assert (=> b!7880238 (= e!4653744 e!4653743)))

(declare-fun res!3129611 () Bool)

(assert (=> b!7880238 (=> (not res!3129611) (not e!4653743))))

(assert (=> b!7880238 (= res!3129611 call!730946)))

(declare-fun b!7880239 () Bool)

(assert (=> b!7880239 (= e!4653743 call!730944)))

(declare-fun b!7880240 () Bool)

(assert (=> b!7880240 (= e!4653742 e!4653745)))

(assert (=> b!7880240 (= c!1447119 ((_ is Union!21185) (Union!21185 r2!6150 r1!6212)))))

(declare-fun b!7880241 () Bool)

(declare-fun res!3129610 () Bool)

(declare-fun e!4653747 () Bool)

(assert (=> b!7880241 (=> (not res!3129610) (not e!4653747))))

(assert (=> b!7880241 (= res!3129610 call!730944)))

(assert (=> b!7880241 (= e!4653745 e!4653747)))

(declare-fun b!7880242 () Bool)

(assert (=> b!7880242 (= e!4653747 call!730946)))

(assert (= (and d!2355995 (not res!3129614)) b!7880237))

(assert (= (and b!7880237 c!1447118) b!7880234))

(assert (= (and b!7880237 (not c!1447118)) b!7880240))

(assert (= (and b!7880234 res!3129613) b!7880235))

(assert (= (and b!7880240 c!1447119) b!7880241))

(assert (= (and b!7880240 (not c!1447119)) b!7880236))

(assert (= (and b!7880241 res!3129610) b!7880242))

(assert (= (and b!7880236 (not res!3129612)) b!7880238))

(assert (= (and b!7880238 res!3129611) b!7880239))

(assert (= (or b!7880242 b!7880238) bm!730941))

(assert (= (or b!7880241 b!7880239) bm!730940))

(assert (= (or b!7880235 bm!730941) bm!730939))

(declare-fun m!8267750 () Bool)

(assert (=> bm!730939 m!8267750))

(declare-fun m!8267752 () Bool)

(assert (=> b!7880234 m!8267752))

(declare-fun m!8267754 () Bool)

(assert (=> bm!730940 m!8267754))

(assert (=> b!7880132 d!2355995))

(declare-fun d!2356005 () Bool)

(declare-fun res!3129619 () Bool)

(declare-fun e!4653748 () Bool)

(assert (=> d!2356005 (=> res!3129619 e!4653748)))

(assert (=> d!2356005 (= res!3129619 ((_ is ElementMatch!21185) r2!6150))))

(assert (=> d!2356005 (= (validRegex!11595 r2!6150) e!4653748)))

(declare-fun call!730950 () Bool)

(declare-fun c!1447120 () Bool)

(declare-fun c!1447121 () Bool)

(declare-fun bm!730944 () Bool)

(assert (=> bm!730944 (= call!730950 (validRegex!11595 (ite c!1447120 (reg!21514 r2!6150) (ite c!1447121 (regTwo!42883 r2!6150) (regOne!42882 r2!6150)))))))

(declare-fun b!7880243 () Bool)

(declare-fun e!4653749 () Bool)

(declare-fun e!4653753 () Bool)

(assert (=> b!7880243 (= e!4653749 e!4653753)))

(declare-fun res!3129618 () Bool)

(assert (=> b!7880243 (= res!3129618 (not (nullable!9445 (reg!21514 r2!6150))))))

(assert (=> b!7880243 (=> (not res!3129618) (not e!4653753))))

(declare-fun bm!730945 () Bool)

(declare-fun call!730949 () Bool)

(assert (=> bm!730945 (= call!730949 (validRegex!11595 (ite c!1447121 (regOne!42883 r2!6150) (regTwo!42882 r2!6150))))))

(declare-fun b!7880244 () Bool)

(assert (=> b!7880244 (= e!4653753 call!730950)))

(declare-fun b!7880245 () Bool)

(declare-fun res!3129617 () Bool)

(declare-fun e!4653751 () Bool)

(assert (=> b!7880245 (=> res!3129617 e!4653751)))

(assert (=> b!7880245 (= res!3129617 (not ((_ is Concat!30030) r2!6150)))))

(declare-fun e!4653752 () Bool)

(assert (=> b!7880245 (= e!4653752 e!4653751)))

(declare-fun b!7880246 () Bool)

(assert (=> b!7880246 (= e!4653748 e!4653749)))

(assert (=> b!7880246 (= c!1447120 ((_ is Star!21185) r2!6150))))

(declare-fun bm!730946 () Bool)

(declare-fun call!730951 () Bool)

(assert (=> bm!730946 (= call!730951 call!730950)))

(declare-fun b!7880247 () Bool)

(declare-fun e!4653750 () Bool)

(assert (=> b!7880247 (= e!4653751 e!4653750)))

(declare-fun res!3129616 () Bool)

(assert (=> b!7880247 (=> (not res!3129616) (not e!4653750))))

(assert (=> b!7880247 (= res!3129616 call!730951)))

(declare-fun b!7880248 () Bool)

(assert (=> b!7880248 (= e!4653750 call!730949)))

(declare-fun b!7880249 () Bool)

(assert (=> b!7880249 (= e!4653749 e!4653752)))

(assert (=> b!7880249 (= c!1447121 ((_ is Union!21185) r2!6150))))

(declare-fun b!7880250 () Bool)

(declare-fun res!3129615 () Bool)

(declare-fun e!4653754 () Bool)

(assert (=> b!7880250 (=> (not res!3129615) (not e!4653754))))

(assert (=> b!7880250 (= res!3129615 call!730949)))

(assert (=> b!7880250 (= e!4653752 e!4653754)))

(declare-fun b!7880251 () Bool)

(assert (=> b!7880251 (= e!4653754 call!730951)))

(assert (= (and d!2356005 (not res!3129619)) b!7880246))

(assert (= (and b!7880246 c!1447120) b!7880243))

(assert (= (and b!7880246 (not c!1447120)) b!7880249))

(assert (= (and b!7880243 res!3129618) b!7880244))

(assert (= (and b!7880249 c!1447121) b!7880250))

(assert (= (and b!7880249 (not c!1447121)) b!7880245))

(assert (= (and b!7880250 res!3129615) b!7880251))

(assert (= (and b!7880245 (not res!3129617)) b!7880247))

(assert (= (and b!7880247 res!3129616) b!7880248))

(assert (= (or b!7880251 b!7880247) bm!730946))

(assert (= (or b!7880250 b!7880248) bm!730945))

(assert (= (or b!7880244 bm!730946) bm!730944))

(declare-fun m!8267756 () Bool)

(assert (=> bm!730944 m!8267756))

(declare-fun m!8267758 () Bool)

(assert (=> b!7880243 m!8267758))

(declare-fun m!8267760 () Bool)

(assert (=> bm!730945 m!8267760))

(assert (=> b!7880137 d!2356005))

(declare-fun d!2356007 () Bool)

(declare-fun res!3129624 () Bool)

(declare-fun e!4653755 () Bool)

(assert (=> d!2356007 (=> res!3129624 e!4653755)))

(assert (=> d!2356007 (= res!3129624 ((_ is ElementMatch!21185) r1!6212))))

(assert (=> d!2356007 (= (validRegex!11595 r1!6212) e!4653755)))

(declare-fun c!1447123 () Bool)

(declare-fun bm!730947 () Bool)

(declare-fun call!730953 () Bool)

(declare-fun c!1447122 () Bool)

(assert (=> bm!730947 (= call!730953 (validRegex!11595 (ite c!1447122 (reg!21514 r1!6212) (ite c!1447123 (regTwo!42883 r1!6212) (regOne!42882 r1!6212)))))))

(declare-fun b!7880252 () Bool)

(declare-fun e!4653756 () Bool)

(declare-fun e!4653760 () Bool)

(assert (=> b!7880252 (= e!4653756 e!4653760)))

(declare-fun res!3129623 () Bool)

(assert (=> b!7880252 (= res!3129623 (not (nullable!9445 (reg!21514 r1!6212))))))

(assert (=> b!7880252 (=> (not res!3129623) (not e!4653760))))

(declare-fun bm!730948 () Bool)

(declare-fun call!730952 () Bool)

(assert (=> bm!730948 (= call!730952 (validRegex!11595 (ite c!1447123 (regOne!42883 r1!6212) (regTwo!42882 r1!6212))))))

(declare-fun b!7880253 () Bool)

(assert (=> b!7880253 (= e!4653760 call!730953)))

(declare-fun b!7880254 () Bool)

(declare-fun res!3129622 () Bool)

(declare-fun e!4653758 () Bool)

(assert (=> b!7880254 (=> res!3129622 e!4653758)))

(assert (=> b!7880254 (= res!3129622 (not ((_ is Concat!30030) r1!6212)))))

(declare-fun e!4653759 () Bool)

(assert (=> b!7880254 (= e!4653759 e!4653758)))

(declare-fun b!7880255 () Bool)

(assert (=> b!7880255 (= e!4653755 e!4653756)))

(assert (=> b!7880255 (= c!1447122 ((_ is Star!21185) r1!6212))))

(declare-fun bm!730949 () Bool)

(declare-fun call!730954 () Bool)

(assert (=> bm!730949 (= call!730954 call!730953)))

(declare-fun b!7880256 () Bool)

(declare-fun e!4653757 () Bool)

(assert (=> b!7880256 (= e!4653758 e!4653757)))

(declare-fun res!3129621 () Bool)

(assert (=> b!7880256 (=> (not res!3129621) (not e!4653757))))

(assert (=> b!7880256 (= res!3129621 call!730954)))

(declare-fun b!7880257 () Bool)

(assert (=> b!7880257 (= e!4653757 call!730952)))

(declare-fun b!7880258 () Bool)

(assert (=> b!7880258 (= e!4653756 e!4653759)))

(assert (=> b!7880258 (= c!1447123 ((_ is Union!21185) r1!6212))))

(declare-fun b!7880259 () Bool)

(declare-fun res!3129620 () Bool)

(declare-fun e!4653761 () Bool)

(assert (=> b!7880259 (=> (not res!3129620) (not e!4653761))))

(assert (=> b!7880259 (= res!3129620 call!730952)))

(assert (=> b!7880259 (= e!4653759 e!4653761)))

(declare-fun b!7880260 () Bool)

(assert (=> b!7880260 (= e!4653761 call!730954)))

(assert (= (and d!2356007 (not res!3129624)) b!7880255))

(assert (= (and b!7880255 c!1447122) b!7880252))

(assert (= (and b!7880255 (not c!1447122)) b!7880258))

(assert (= (and b!7880252 res!3129623) b!7880253))

(assert (= (and b!7880258 c!1447123) b!7880259))

(assert (= (and b!7880258 (not c!1447123)) b!7880254))

(assert (= (and b!7880259 res!3129620) b!7880260))

(assert (= (and b!7880254 (not res!3129622)) b!7880256))

(assert (= (and b!7880256 res!3129621) b!7880257))

(assert (= (or b!7880260 b!7880256) bm!730949))

(assert (= (or b!7880259 b!7880257) bm!730948))

(assert (= (or b!7880253 bm!730949) bm!730947))

(declare-fun m!8267762 () Bool)

(assert (=> bm!730947 m!8267762))

(declare-fun m!8267764 () Bool)

(assert (=> b!7880252 m!8267764))

(declare-fun m!8267766 () Bool)

(assert (=> bm!730948 m!8267766))

(assert (=> start!744262 d!2356007))

(declare-fun b!7880359 () Bool)

(declare-fun e!4653798 () Bool)

(declare-fun head!16123 (List!74044) C!42696)

(assert (=> b!7880359 (= e!4653798 (= (head!16123 s!14231) (c!1447097 (Union!21185 r1!6212 r2!6150))))))

(declare-fun b!7880360 () Bool)

(declare-fun e!4653801 () Bool)

(declare-fun lt!2681241 () Bool)

(assert (=> b!7880360 (= e!4653801 (not lt!2681241))))

(declare-fun b!7880361 () Bool)

(declare-fun e!4653802 () Bool)

(assert (=> b!7880361 (= e!4653802 e!4653801)))

(declare-fun c!1447133 () Bool)

(assert (=> b!7880361 (= c!1447133 ((_ is EmptyLang!21185) (Union!21185 r1!6212 r2!6150)))))

(declare-fun e!4653804 () Bool)

(declare-fun b!7880362 () Bool)

(declare-fun derivativeStep!6414 (Regex!21185 C!42696) Regex!21185)

(declare-fun tail!15666 (List!74044) List!74044)

(assert (=> b!7880362 (= e!4653804 (matchR!10621 (derivativeStep!6414 (Union!21185 r1!6212 r2!6150) (head!16123 s!14231)) (tail!15666 s!14231)))))

(declare-fun b!7880363 () Bool)

(declare-fun e!4653799 () Bool)

(declare-fun e!4653803 () Bool)

(assert (=> b!7880363 (= e!4653799 e!4653803)))

(declare-fun res!3129654 () Bool)

(assert (=> b!7880363 (=> (not res!3129654) (not e!4653803))))

(assert (=> b!7880363 (= res!3129654 (not lt!2681241))))

(declare-fun b!7880364 () Bool)

(declare-fun res!3129649 () Bool)

(assert (=> b!7880364 (=> res!3129649 e!4653799)))

(assert (=> b!7880364 (= res!3129649 e!4653798)))

(declare-fun res!3129656 () Bool)

(assert (=> b!7880364 (=> (not res!3129656) (not e!4653798))))

(assert (=> b!7880364 (= res!3129656 lt!2681241)))

(declare-fun d!2356009 () Bool)

(assert (=> d!2356009 e!4653802))

(declare-fun c!1447134 () Bool)

(assert (=> d!2356009 (= c!1447134 ((_ is EmptyExpr!21185) (Union!21185 r1!6212 r2!6150)))))

(assert (=> d!2356009 (= lt!2681241 e!4653804)))

(declare-fun c!1447135 () Bool)

(declare-fun isEmpty!42412 (List!74044) Bool)

(assert (=> d!2356009 (= c!1447135 (isEmpty!42412 s!14231))))

(assert (=> d!2356009 (validRegex!11595 (Union!21185 r1!6212 r2!6150))))

(assert (=> d!2356009 (= (matchR!10621 (Union!21185 r1!6212 r2!6150) s!14231) lt!2681241)))

(declare-fun b!7880358 () Bool)

(assert (=> b!7880358 (= e!4653804 (nullable!9445 (Union!21185 r1!6212 r2!6150)))))

(declare-fun b!7880365 () Bool)

(declare-fun e!4653800 () Bool)

(assert (=> b!7880365 (= e!4653803 e!4653800)))

(declare-fun res!3129652 () Bool)

(assert (=> b!7880365 (=> res!3129652 e!4653800)))

(declare-fun call!730958 () Bool)

(assert (=> b!7880365 (= res!3129652 call!730958)))

(declare-fun b!7880366 () Bool)

(declare-fun res!3129651 () Bool)

(assert (=> b!7880366 (=> res!3129651 e!4653799)))

(assert (=> b!7880366 (= res!3129651 (not ((_ is ElementMatch!21185) (Union!21185 r1!6212 r2!6150))))))

(assert (=> b!7880366 (= e!4653801 e!4653799)))

(declare-fun b!7880367 () Bool)

(assert (=> b!7880367 (= e!4653800 (not (= (head!16123 s!14231) (c!1447097 (Union!21185 r1!6212 r2!6150)))))))

(declare-fun b!7880368 () Bool)

(assert (=> b!7880368 (= e!4653802 (= lt!2681241 call!730958))))

(declare-fun b!7880369 () Bool)

(declare-fun res!3129655 () Bool)

(assert (=> b!7880369 (=> res!3129655 e!4653800)))

(assert (=> b!7880369 (= res!3129655 (not (isEmpty!42412 (tail!15666 s!14231))))))

(declare-fun b!7880370 () Bool)

(declare-fun res!3129653 () Bool)

(assert (=> b!7880370 (=> (not res!3129653) (not e!4653798))))

(assert (=> b!7880370 (= res!3129653 (not call!730958))))

(declare-fun b!7880371 () Bool)

(declare-fun res!3129650 () Bool)

(assert (=> b!7880371 (=> (not res!3129650) (not e!4653798))))

(assert (=> b!7880371 (= res!3129650 (isEmpty!42412 (tail!15666 s!14231)))))

(declare-fun bm!730953 () Bool)

(assert (=> bm!730953 (= call!730958 (isEmpty!42412 s!14231))))

(assert (= (and d!2356009 c!1447135) b!7880358))

(assert (= (and d!2356009 (not c!1447135)) b!7880362))

(assert (= (and d!2356009 c!1447134) b!7880368))

(assert (= (and d!2356009 (not c!1447134)) b!7880361))

(assert (= (and b!7880361 c!1447133) b!7880360))

(assert (= (and b!7880361 (not c!1447133)) b!7880366))

(assert (= (and b!7880366 (not res!3129651)) b!7880364))

(assert (= (and b!7880364 res!3129656) b!7880370))

(assert (= (and b!7880370 res!3129653) b!7880371))

(assert (= (and b!7880371 res!3129650) b!7880359))

(assert (= (and b!7880364 (not res!3129649)) b!7880363))

(assert (= (and b!7880363 res!3129654) b!7880365))

(assert (= (and b!7880365 (not res!3129652)) b!7880369))

(assert (= (and b!7880369 (not res!3129655)) b!7880367))

(assert (= (or b!7880368 b!7880365 b!7880370) bm!730953))

(declare-fun m!8267784 () Bool)

(assert (=> b!7880367 m!8267784))

(assert (=> b!7880362 m!8267784))

(assert (=> b!7880362 m!8267784))

(declare-fun m!8267786 () Bool)

(assert (=> b!7880362 m!8267786))

(declare-fun m!8267788 () Bool)

(assert (=> b!7880362 m!8267788))

(assert (=> b!7880362 m!8267786))

(assert (=> b!7880362 m!8267788))

(declare-fun m!8267790 () Bool)

(assert (=> b!7880362 m!8267790))

(declare-fun m!8267792 () Bool)

(assert (=> d!2356009 m!8267792))

(declare-fun m!8267794 () Bool)

(assert (=> d!2356009 m!8267794))

(assert (=> b!7880359 m!8267784))

(assert (=> bm!730953 m!8267792))

(assert (=> b!7880371 m!8267788))

(assert (=> b!7880371 m!8267788))

(declare-fun m!8267796 () Bool)

(assert (=> b!7880371 m!8267796))

(declare-fun m!8267798 () Bool)

(assert (=> b!7880358 m!8267798))

(assert (=> b!7880369 m!8267788))

(assert (=> b!7880369 m!8267788))

(assert (=> b!7880369 m!8267796))

(assert (=> b!7880130 d!2356009))

(declare-fun b!7880385 () Bool)

(declare-fun e!4653807 () Bool)

(declare-fun tp!2341559 () Bool)

(declare-fun tp!2341561 () Bool)

(assert (=> b!7880385 (= e!4653807 (and tp!2341559 tp!2341561))))

(declare-fun b!7880383 () Bool)

(declare-fun tp!2341558 () Bool)

(declare-fun tp!2341562 () Bool)

(assert (=> b!7880383 (= e!4653807 (and tp!2341558 tp!2341562))))

(assert (=> b!7880142 (= tp!2341477 e!4653807)))

(declare-fun b!7880382 () Bool)

(assert (=> b!7880382 (= e!4653807 tp_is_empty!52769)))

(declare-fun b!7880384 () Bool)

(declare-fun tp!2341560 () Bool)

(assert (=> b!7880384 (= e!4653807 tp!2341560)))

(assert (= (and b!7880142 ((_ is ElementMatch!21185) (regOne!42882 r2!6150))) b!7880382))

(assert (= (and b!7880142 ((_ is Concat!30030) (regOne!42882 r2!6150))) b!7880383))

(assert (= (and b!7880142 ((_ is Star!21185) (regOne!42882 r2!6150))) b!7880384))

(assert (= (and b!7880142 ((_ is Union!21185) (regOne!42882 r2!6150))) b!7880385))

(declare-fun b!7880389 () Bool)

(declare-fun e!4653808 () Bool)

(declare-fun tp!2341564 () Bool)

(declare-fun tp!2341566 () Bool)

(assert (=> b!7880389 (= e!4653808 (and tp!2341564 tp!2341566))))

(declare-fun b!7880387 () Bool)

(declare-fun tp!2341563 () Bool)

(declare-fun tp!2341567 () Bool)

(assert (=> b!7880387 (= e!4653808 (and tp!2341563 tp!2341567))))

(assert (=> b!7880142 (= tp!2341478 e!4653808)))

(declare-fun b!7880386 () Bool)

(assert (=> b!7880386 (= e!4653808 tp_is_empty!52769)))

(declare-fun b!7880388 () Bool)

(declare-fun tp!2341565 () Bool)

(assert (=> b!7880388 (= e!4653808 tp!2341565)))

(assert (= (and b!7880142 ((_ is ElementMatch!21185) (regTwo!42882 r2!6150))) b!7880386))

(assert (= (and b!7880142 ((_ is Concat!30030) (regTwo!42882 r2!6150))) b!7880387))

(assert (= (and b!7880142 ((_ is Star!21185) (regTwo!42882 r2!6150))) b!7880388))

(assert (= (and b!7880142 ((_ is Union!21185) (regTwo!42882 r2!6150))) b!7880389))

(declare-fun b!7880393 () Bool)

(declare-fun e!4653809 () Bool)

(declare-fun tp!2341569 () Bool)

(declare-fun tp!2341571 () Bool)

(assert (=> b!7880393 (= e!4653809 (and tp!2341569 tp!2341571))))

(declare-fun b!7880391 () Bool)

(declare-fun tp!2341568 () Bool)

(declare-fun tp!2341572 () Bool)

(assert (=> b!7880391 (= e!4653809 (and tp!2341568 tp!2341572))))

(assert (=> b!7880138 (= tp!2341483 e!4653809)))

(declare-fun b!7880390 () Bool)

(assert (=> b!7880390 (= e!4653809 tp_is_empty!52769)))

(declare-fun b!7880392 () Bool)

(declare-fun tp!2341570 () Bool)

(assert (=> b!7880392 (= e!4653809 tp!2341570)))

(assert (= (and b!7880138 ((_ is ElementMatch!21185) (regOne!42882 r1!6212))) b!7880390))

(assert (= (and b!7880138 ((_ is Concat!30030) (regOne!42882 r1!6212))) b!7880391))

(assert (= (and b!7880138 ((_ is Star!21185) (regOne!42882 r1!6212))) b!7880392))

(assert (= (and b!7880138 ((_ is Union!21185) (regOne!42882 r1!6212))) b!7880393))

(declare-fun b!7880397 () Bool)

(declare-fun e!4653810 () Bool)

(declare-fun tp!2341574 () Bool)

(declare-fun tp!2341576 () Bool)

(assert (=> b!7880397 (= e!4653810 (and tp!2341574 tp!2341576))))

(declare-fun b!7880395 () Bool)

(declare-fun tp!2341573 () Bool)

(declare-fun tp!2341577 () Bool)

(assert (=> b!7880395 (= e!4653810 (and tp!2341573 tp!2341577))))

(assert (=> b!7880138 (= tp!2341481 e!4653810)))

(declare-fun b!7880394 () Bool)

(assert (=> b!7880394 (= e!4653810 tp_is_empty!52769)))

(declare-fun b!7880396 () Bool)

(declare-fun tp!2341575 () Bool)

(assert (=> b!7880396 (= e!4653810 tp!2341575)))

(assert (= (and b!7880138 ((_ is ElementMatch!21185) (regTwo!42882 r1!6212))) b!7880394))

(assert (= (and b!7880138 ((_ is Concat!30030) (regTwo!42882 r1!6212))) b!7880395))

(assert (= (and b!7880138 ((_ is Star!21185) (regTwo!42882 r1!6212))) b!7880396))

(assert (= (and b!7880138 ((_ is Union!21185) (regTwo!42882 r1!6212))) b!7880397))

(declare-fun b!7880401 () Bool)

(declare-fun e!4653811 () Bool)

(declare-fun tp!2341579 () Bool)

(declare-fun tp!2341581 () Bool)

(assert (=> b!7880401 (= e!4653811 (and tp!2341579 tp!2341581))))

(declare-fun b!7880399 () Bool)

(declare-fun tp!2341578 () Bool)

(declare-fun tp!2341582 () Bool)

(assert (=> b!7880399 (= e!4653811 (and tp!2341578 tp!2341582))))

(assert (=> b!7880133 (= tp!2341480 e!4653811)))

(declare-fun b!7880398 () Bool)

(assert (=> b!7880398 (= e!4653811 tp_is_empty!52769)))

(declare-fun b!7880400 () Bool)

(declare-fun tp!2341580 () Bool)

(assert (=> b!7880400 (= e!4653811 tp!2341580)))

(assert (= (and b!7880133 ((_ is ElementMatch!21185) (regOne!42883 r1!6212))) b!7880398))

(assert (= (and b!7880133 ((_ is Concat!30030) (regOne!42883 r1!6212))) b!7880399))

(assert (= (and b!7880133 ((_ is Star!21185) (regOne!42883 r1!6212))) b!7880400))

(assert (= (and b!7880133 ((_ is Union!21185) (regOne!42883 r1!6212))) b!7880401))

(declare-fun b!7880405 () Bool)

(declare-fun e!4653812 () Bool)

(declare-fun tp!2341584 () Bool)

(declare-fun tp!2341586 () Bool)

(assert (=> b!7880405 (= e!4653812 (and tp!2341584 tp!2341586))))

(declare-fun b!7880403 () Bool)

(declare-fun tp!2341583 () Bool)

(declare-fun tp!2341587 () Bool)

(assert (=> b!7880403 (= e!4653812 (and tp!2341583 tp!2341587))))

(assert (=> b!7880133 (= tp!2341482 e!4653812)))

(declare-fun b!7880402 () Bool)

(assert (=> b!7880402 (= e!4653812 tp_is_empty!52769)))

(declare-fun b!7880404 () Bool)

(declare-fun tp!2341585 () Bool)

(assert (=> b!7880404 (= e!4653812 tp!2341585)))

(assert (= (and b!7880133 ((_ is ElementMatch!21185) (regTwo!42883 r1!6212))) b!7880402))

(assert (= (and b!7880133 ((_ is Concat!30030) (regTwo!42883 r1!6212))) b!7880403))

(assert (= (and b!7880133 ((_ is Star!21185) (regTwo!42883 r1!6212))) b!7880404))

(assert (= (and b!7880133 ((_ is Union!21185) (regTwo!42883 r1!6212))) b!7880405))

(declare-fun b!7880409 () Bool)

(declare-fun e!4653813 () Bool)

(declare-fun tp!2341589 () Bool)

(declare-fun tp!2341591 () Bool)

(assert (=> b!7880409 (= e!4653813 (and tp!2341589 tp!2341591))))

(declare-fun b!7880407 () Bool)

(declare-fun tp!2341588 () Bool)

(declare-fun tp!2341592 () Bool)

(assert (=> b!7880407 (= e!4653813 (and tp!2341588 tp!2341592))))

(assert (=> b!7880134 (= tp!2341479 e!4653813)))

(declare-fun b!7880406 () Bool)

(assert (=> b!7880406 (= e!4653813 tp_is_empty!52769)))

(declare-fun b!7880408 () Bool)

(declare-fun tp!2341590 () Bool)

(assert (=> b!7880408 (= e!4653813 tp!2341590)))

(assert (= (and b!7880134 ((_ is ElementMatch!21185) (reg!21514 r2!6150))) b!7880406))

(assert (= (and b!7880134 ((_ is Concat!30030) (reg!21514 r2!6150))) b!7880407))

(assert (= (and b!7880134 ((_ is Star!21185) (reg!21514 r2!6150))) b!7880408))

(assert (= (and b!7880134 ((_ is Union!21185) (reg!21514 r2!6150))) b!7880409))

(declare-fun b!7880413 () Bool)

(declare-fun e!4653814 () Bool)

(declare-fun tp!2341594 () Bool)

(declare-fun tp!2341596 () Bool)

(assert (=> b!7880413 (= e!4653814 (and tp!2341594 tp!2341596))))

(declare-fun b!7880411 () Bool)

(declare-fun tp!2341593 () Bool)

(declare-fun tp!2341597 () Bool)

(assert (=> b!7880411 (= e!4653814 (and tp!2341593 tp!2341597))))

(assert (=> b!7880139 (= tp!2341475 e!4653814)))

(declare-fun b!7880410 () Bool)

(assert (=> b!7880410 (= e!4653814 tp_is_empty!52769)))

(declare-fun b!7880412 () Bool)

(declare-fun tp!2341595 () Bool)

(assert (=> b!7880412 (= e!4653814 tp!2341595)))

(assert (= (and b!7880139 ((_ is ElementMatch!21185) (reg!21514 r1!6212))) b!7880410))

(assert (= (and b!7880139 ((_ is Concat!30030) (reg!21514 r1!6212))) b!7880411))

(assert (= (and b!7880139 ((_ is Star!21185) (reg!21514 r1!6212))) b!7880412))

(assert (= (and b!7880139 ((_ is Union!21185) (reg!21514 r1!6212))) b!7880413))

(declare-fun b!7880417 () Bool)

(declare-fun e!4653815 () Bool)

(declare-fun tp!2341599 () Bool)

(declare-fun tp!2341601 () Bool)

(assert (=> b!7880417 (= e!4653815 (and tp!2341599 tp!2341601))))

(declare-fun b!7880415 () Bool)

(declare-fun tp!2341598 () Bool)

(declare-fun tp!2341602 () Bool)

(assert (=> b!7880415 (= e!4653815 (and tp!2341598 tp!2341602))))

(assert (=> b!7880140 (= tp!2341476 e!4653815)))

(declare-fun b!7880414 () Bool)

(assert (=> b!7880414 (= e!4653815 tp_is_empty!52769)))

(declare-fun b!7880416 () Bool)

(declare-fun tp!2341600 () Bool)

(assert (=> b!7880416 (= e!4653815 tp!2341600)))

(assert (= (and b!7880140 ((_ is ElementMatch!21185) (regOne!42883 r2!6150))) b!7880414))

(assert (= (and b!7880140 ((_ is Concat!30030) (regOne!42883 r2!6150))) b!7880415))

(assert (= (and b!7880140 ((_ is Star!21185) (regOne!42883 r2!6150))) b!7880416))

(assert (= (and b!7880140 ((_ is Union!21185) (regOne!42883 r2!6150))) b!7880417))

(declare-fun b!7880421 () Bool)

(declare-fun e!4653816 () Bool)

(declare-fun tp!2341604 () Bool)

(declare-fun tp!2341606 () Bool)

(assert (=> b!7880421 (= e!4653816 (and tp!2341604 tp!2341606))))

(declare-fun b!7880419 () Bool)

(declare-fun tp!2341603 () Bool)

(declare-fun tp!2341607 () Bool)

(assert (=> b!7880419 (= e!4653816 (and tp!2341603 tp!2341607))))

(assert (=> b!7880140 (= tp!2341474 e!4653816)))

(declare-fun b!7880418 () Bool)

(assert (=> b!7880418 (= e!4653816 tp_is_empty!52769)))

(declare-fun b!7880420 () Bool)

(declare-fun tp!2341605 () Bool)

(assert (=> b!7880420 (= e!4653816 tp!2341605)))

(assert (= (and b!7880140 ((_ is ElementMatch!21185) (regTwo!42883 r2!6150))) b!7880418))

(assert (= (and b!7880140 ((_ is Concat!30030) (regTwo!42883 r2!6150))) b!7880419))

(assert (= (and b!7880140 ((_ is Star!21185) (regTwo!42883 r2!6150))) b!7880420))

(assert (= (and b!7880140 ((_ is Union!21185) (regTwo!42883 r2!6150))) b!7880421))

(declare-fun b!7880426 () Bool)

(declare-fun e!4653819 () Bool)

(declare-fun tp!2341610 () Bool)

(assert (=> b!7880426 (= e!4653819 (and tp_is_empty!52769 tp!2341610))))

(assert (=> b!7880135 (= tp!2341484 e!4653819)))

(assert (= (and b!7880135 ((_ is Cons!73920) (t!388779 s!14231))) b!7880426))

(check-sat (not b!7880399) (not b!7880401) (not b!7880362) (not b!7880413) (not b!7880388) (not bm!730945) (not b!7880385) (not b!7880391) (not bm!730944) (not b!7880387) (not b!7880243) (not b!7880403) (not b!7880383) (not b!7880384) (not b!7880392) (not b!7880404) (not b!7880389) (not b!7880400) (not bm!730940) (not b!7880369) (not b!7880412) (not b!7880367) (not b!7880407) (not b!7880359) (not b!7880396) (not bm!730947) (not b!7880405) (not b!7880393) (not b!7880409) (not b!7880397) (not b!7880371) (not bm!730953) (not b!7880420) (not b!7880252) (not b!7880395) (not b!7880417) tp_is_empty!52769 (not b!7880358) (not d!2356009) (not b!7880421) (not b!7880415) (not b!7880416) (not b!7880408) (not b!7880234) (not b!7880419) (not b!7880426) (not bm!730948) (not b!7880411) (not bm!730939))
(check-sat)
