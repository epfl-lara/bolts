; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753812 () Bool)

(assert start!753812)

(declare-fun res!3167544 () Bool)

(declare-fun e!4718829 () Bool)

(assert (=> start!753812 (=> (not res!3167544) (not e!4718829))))

(declare-datatypes ((C!43660 0))(
  ( (C!43661 (val!32378 Int)) )
))
(declare-datatypes ((Regex!21661 0))(
  ( (ElementMatch!21661 (c!1470412 C!43660)) (Concat!30660 (regOne!43834 Regex!21661) (regTwo!43834 Regex!21661)) (EmptyExpr!21661) (Star!21661 (reg!21990 Regex!21661)) (EmptyLang!21661) (Union!21661 (regOne!43835 Regex!21661) (regTwo!43835 Regex!21661)) )
))
(declare-fun r!15422 () Regex!21661)

(declare-fun validRegex!11965 (Regex!21661) Bool)

(assert (=> start!753812 (= res!3167544 (validRegex!11965 r!15422))))

(assert (=> start!753812 e!4718829))

(declare-fun e!4718832 () Bool)

(assert (=> start!753812 e!4718832))

(assert (=> start!753812 true))

(declare-fun e!4718828 () Bool)

(assert (=> start!753812 e!4718828))

(declare-fun e!4718833 () Bool)

(assert (=> start!753812 e!4718833))

(declare-fun e!4718831 () Bool)

(assert (=> start!753812 e!4718831))

(declare-fun b!8010473 () Bool)

(declare-fun tp_is_empty!53865 () Bool)

(assert (=> b!8010473 (= e!4718833 tp_is_empty!53865)))

(declare-fun b!8010474 () Bool)

(declare-fun e!4718830 () Bool)

(assert (=> b!8010474 (= e!4718829 e!4718830)))

(declare-fun res!3167543 () Bool)

(assert (=> b!8010474 (=> (not res!3167543) (not e!4718830))))

(declare-fun testedPSize!271 () Int)

(declare-fun lt!2716789 () Int)

(assert (=> b!8010474 (= res!3167543 (= testedPSize!271 lt!2716789))))

(declare-datatypes ((List!74890 0))(
  ( (Nil!74766) (Cons!74766 (h!81214 C!43660) (t!390633 List!74890)) )
))
(declare-fun testedP!353 () List!74890)

(declare-fun size!43563 (List!74890) Int)

(assert (=> b!8010474 (= lt!2716789 (size!43563 testedP!353))))

(declare-fun b!8010475 () Bool)

(declare-fun tp!2397081 () Bool)

(assert (=> b!8010475 (= e!4718833 tp!2397081)))

(declare-fun b!8010476 () Bool)

(declare-fun tp!2397075 () Bool)

(assert (=> b!8010476 (= e!4718828 (and tp_is_empty!53865 tp!2397075))))

(declare-fun b!8010477 () Bool)

(declare-fun tp!2397080 () Bool)

(declare-fun tp!2397079 () Bool)

(assert (=> b!8010477 (= e!4718833 (and tp!2397080 tp!2397079))))

(declare-fun b!8010478 () Bool)

(declare-fun tp!2397082 () Bool)

(assert (=> b!8010478 (= e!4718832 (and tp_is_empty!53865 tp!2397082))))

(declare-fun b!8010479 () Bool)

(declare-fun tp!2397078 () Bool)

(assert (=> b!8010479 (= e!4718831 (and tp_is_empty!53865 tp!2397078))))

(declare-fun b!8010480 () Bool)

(declare-fun tp!2397077 () Bool)

(declare-fun tp!2397076 () Bool)

(assert (=> b!8010480 (= e!4718833 (and tp!2397077 tp!2397076))))

(declare-fun lt!2716788 () Int)

(declare-fun totalInputSize!629 () Int)

(declare-fun b!8010481 () Bool)

(assert (=> b!8010481 (= e!4718830 (and (= totalInputSize!629 lt!2716788) (< (- lt!2716788 lt!2716789) 0)))))

(declare-fun totalInput!1349 () List!74890)

(assert (=> b!8010481 (= lt!2716788 (size!43563 totalInput!1349))))

(declare-fun b!8010482 () Bool)

(declare-fun res!3167542 () Bool)

(assert (=> b!8010482 (=> (not res!3167542) (not e!4718829))))

(declare-fun testedSuffix!271 () List!74890)

(declare-fun ++!18487 (List!74890 List!74890) List!74890)

(assert (=> b!8010482 (= res!3167542 (= (++!18487 testedP!353 testedSuffix!271) totalInput!1349))))

(assert (= (and start!753812 res!3167544) b!8010482))

(assert (= (and b!8010482 res!3167542) b!8010474))

(assert (= (and b!8010474 res!3167543) b!8010481))

(get-info :version)

(assert (= (and start!753812 ((_ is Cons!74766) totalInput!1349)) b!8010478))

(assert (= (and start!753812 ((_ is Cons!74766) testedSuffix!271)) b!8010476))

(assert (= (and start!753812 ((_ is ElementMatch!21661) r!15422)) b!8010473))

(assert (= (and start!753812 ((_ is Concat!30660) r!15422)) b!8010480))

(assert (= (and start!753812 ((_ is Star!21661) r!15422)) b!8010475))

(assert (= (and start!753812 ((_ is Union!21661) r!15422)) b!8010477))

(assert (= (and start!753812 ((_ is Cons!74766) testedP!353)) b!8010479))

(declare-fun m!8374990 () Bool)

(assert (=> start!753812 m!8374990))

(declare-fun m!8374992 () Bool)

(assert (=> b!8010474 m!8374992))

(declare-fun m!8374994 () Bool)

(assert (=> b!8010481 m!8374994))

(declare-fun m!8374996 () Bool)

(assert (=> b!8010482 m!8374996))

(check-sat tp_is_empty!53865 (not b!8010482) (not b!8010479) (not b!8010477) (not b!8010474) (not start!753812) (not b!8010478) (not b!8010481) (not b!8010475) (not b!8010480) (not b!8010476))
(check-sat)
(get-model)

(declare-fun d!2388531 () Bool)

(declare-fun lt!2716792 () Int)

(assert (=> d!2388531 (>= lt!2716792 0)))

(declare-fun e!4718836 () Int)

(assert (=> d!2388531 (= lt!2716792 e!4718836)))

(declare-fun c!1470415 () Bool)

(assert (=> d!2388531 (= c!1470415 ((_ is Nil!74766) totalInput!1349))))

(assert (=> d!2388531 (= (size!43563 totalInput!1349) lt!2716792)))

(declare-fun b!8010487 () Bool)

(assert (=> b!8010487 (= e!4718836 0)))

(declare-fun b!8010488 () Bool)

(assert (=> b!8010488 (= e!4718836 (+ 1 (size!43563 (t!390633 totalInput!1349))))))

(assert (= (and d!2388531 c!1470415) b!8010487))

(assert (= (and d!2388531 (not c!1470415)) b!8010488))

(declare-fun m!8374998 () Bool)

(assert (=> b!8010488 m!8374998))

(assert (=> b!8010481 d!2388531))

(declare-fun d!2388535 () Bool)

(declare-fun lt!2716793 () Int)

(assert (=> d!2388535 (>= lt!2716793 0)))

(declare-fun e!4718837 () Int)

(assert (=> d!2388535 (= lt!2716793 e!4718837)))

(declare-fun c!1470416 () Bool)

(assert (=> d!2388535 (= c!1470416 ((_ is Nil!74766) testedP!353))))

(assert (=> d!2388535 (= (size!43563 testedP!353) lt!2716793)))

(declare-fun b!8010489 () Bool)

(assert (=> b!8010489 (= e!4718837 0)))

(declare-fun b!8010490 () Bool)

(assert (=> b!8010490 (= e!4718837 (+ 1 (size!43563 (t!390633 testedP!353))))))

(assert (= (and d!2388535 c!1470416) b!8010489))

(assert (= (and d!2388535 (not c!1470416)) b!8010490))

(declare-fun m!8375000 () Bool)

(assert (=> b!8010490 m!8375000))

(assert (=> b!8010474 d!2388535))

(declare-fun b!8010535 () Bool)

(declare-fun e!4718874 () Bool)

(declare-fun call!744159 () Bool)

(assert (=> b!8010535 (= e!4718874 call!744159)))

(declare-fun b!8010536 () Bool)

(declare-fun e!4718875 () Bool)

(declare-fun call!744160 () Bool)

(assert (=> b!8010536 (= e!4718875 call!744160)))

(declare-fun b!8010537 () Bool)

(declare-fun e!4718873 () Bool)

(assert (=> b!8010537 (= e!4718873 e!4718875)))

(declare-fun res!3167567 () Bool)

(assert (=> b!8010537 (=> (not res!3167567) (not e!4718875))))

(declare-fun call!744161 () Bool)

(assert (=> b!8010537 (= res!3167567 call!744161)))

(declare-fun bm!744154 () Bool)

(assert (=> bm!744154 (= call!744160 call!744159)))

(declare-fun b!8010538 () Bool)

(declare-fun res!3167565 () Bool)

(declare-fun e!4718871 () Bool)

(assert (=> b!8010538 (=> (not res!3167565) (not e!4718871))))

(assert (=> b!8010538 (= res!3167565 call!744161)))

(declare-fun e!4718870 () Bool)

(assert (=> b!8010538 (= e!4718870 e!4718871)))

(declare-fun b!8010540 () Bool)

(declare-fun e!4718872 () Bool)

(declare-fun e!4718876 () Bool)

(assert (=> b!8010540 (= e!4718872 e!4718876)))

(declare-fun c!1470429 () Bool)

(assert (=> b!8010540 (= c!1470429 ((_ is Star!21661) r!15422))))

(declare-fun b!8010541 () Bool)

(assert (=> b!8010541 (= e!4718871 call!744160)))

(declare-fun b!8010542 () Bool)

(assert (=> b!8010542 (= e!4718876 e!4718874)))

(declare-fun res!3167569 () Bool)

(declare-fun nullable!9712 (Regex!21661) Bool)

(assert (=> b!8010542 (= res!3167569 (not (nullable!9712 (reg!21990 r!15422))))))

(assert (=> b!8010542 (=> (not res!3167569) (not e!4718874))))

(declare-fun b!8010543 () Bool)

(declare-fun res!3167568 () Bool)

(assert (=> b!8010543 (=> res!3167568 e!4718873)))

(assert (=> b!8010543 (= res!3167568 (not ((_ is Concat!30660) r!15422)))))

(assert (=> b!8010543 (= e!4718870 e!4718873)))

(declare-fun bm!744155 () Bool)

(declare-fun c!1470430 () Bool)

(assert (=> bm!744155 (= call!744159 (validRegex!11965 (ite c!1470429 (reg!21990 r!15422) (ite c!1470430 (regTwo!43835 r!15422) (regTwo!43834 r!15422)))))))

(declare-fun bm!744156 () Bool)

(assert (=> bm!744156 (= call!744161 (validRegex!11965 (ite c!1470430 (regOne!43835 r!15422) (regOne!43834 r!15422))))))

(declare-fun d!2388537 () Bool)

(declare-fun res!3167566 () Bool)

(assert (=> d!2388537 (=> res!3167566 e!4718872)))

(assert (=> d!2388537 (= res!3167566 ((_ is ElementMatch!21661) r!15422))))

(assert (=> d!2388537 (= (validRegex!11965 r!15422) e!4718872)))

(declare-fun b!8010539 () Bool)

(assert (=> b!8010539 (= e!4718876 e!4718870)))

(assert (=> b!8010539 (= c!1470430 ((_ is Union!21661) r!15422))))

(assert (= (and d!2388537 (not res!3167566)) b!8010540))

(assert (= (and b!8010540 c!1470429) b!8010542))

(assert (= (and b!8010540 (not c!1470429)) b!8010539))

(assert (= (and b!8010542 res!3167569) b!8010535))

(assert (= (and b!8010539 c!1470430) b!8010538))

(assert (= (and b!8010539 (not c!1470430)) b!8010543))

(assert (= (and b!8010538 res!3167565) b!8010541))

(assert (= (and b!8010543 (not res!3167568)) b!8010537))

(assert (= (and b!8010537 res!3167567) b!8010536))

(assert (= (or b!8010541 b!8010536) bm!744154))

(assert (= (or b!8010538 b!8010537) bm!744156))

(assert (= (or b!8010535 bm!744154) bm!744155))

(declare-fun m!8375006 () Bool)

(assert (=> b!8010542 m!8375006))

(declare-fun m!8375008 () Bool)

(assert (=> bm!744155 m!8375008))

(declare-fun m!8375010 () Bool)

(assert (=> bm!744156 m!8375010))

(assert (=> start!753812 d!2388537))

(declare-fun d!2388543 () Bool)

(declare-fun e!4718893 () Bool)

(assert (=> d!2388543 e!4718893))

(declare-fun res!3167583 () Bool)

(assert (=> d!2388543 (=> (not res!3167583) (not e!4718893))))

(declare-fun lt!2716802 () List!74890)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15903 (List!74890) (InoxSet C!43660))

(assert (=> d!2388543 (= res!3167583 (= (content!15903 lt!2716802) ((_ map or) (content!15903 testedP!353) (content!15903 testedSuffix!271))))))

(declare-fun e!4718892 () List!74890)

(assert (=> d!2388543 (= lt!2716802 e!4718892)))

(declare-fun c!1470437 () Bool)

(assert (=> d!2388543 (= c!1470437 ((_ is Nil!74766) testedP!353))))

(assert (=> d!2388543 (= (++!18487 testedP!353 testedSuffix!271) lt!2716802)))

(declare-fun b!8010570 () Bool)

(assert (=> b!8010570 (= e!4718892 (Cons!74766 (h!81214 testedP!353) (++!18487 (t!390633 testedP!353) testedSuffix!271)))))

(declare-fun b!8010571 () Bool)

(declare-fun res!3167584 () Bool)

(assert (=> b!8010571 (=> (not res!3167584) (not e!4718893))))

(assert (=> b!8010571 (= res!3167584 (= (size!43563 lt!2716802) (+ (size!43563 testedP!353) (size!43563 testedSuffix!271))))))

(declare-fun b!8010572 () Bool)

(assert (=> b!8010572 (= e!4718893 (or (not (= testedSuffix!271 Nil!74766)) (= lt!2716802 testedP!353)))))

(declare-fun b!8010569 () Bool)

(assert (=> b!8010569 (= e!4718892 testedSuffix!271)))

(assert (= (and d!2388543 c!1470437) b!8010569))

(assert (= (and d!2388543 (not c!1470437)) b!8010570))

(assert (= (and d!2388543 res!3167583) b!8010571))

(assert (= (and b!8010571 res!3167584) b!8010572))

(declare-fun m!8375018 () Bool)

(assert (=> d!2388543 m!8375018))

(declare-fun m!8375020 () Bool)

(assert (=> d!2388543 m!8375020))

(declare-fun m!8375022 () Bool)

(assert (=> d!2388543 m!8375022))

(declare-fun m!8375024 () Bool)

(assert (=> b!8010570 m!8375024))

(declare-fun m!8375026 () Bool)

(assert (=> b!8010571 m!8375026))

(assert (=> b!8010571 m!8374992))

(declare-fun m!8375028 () Bool)

(assert (=> b!8010571 m!8375028))

(assert (=> b!8010482 d!2388543))

(declare-fun b!8010577 () Bool)

(declare-fun e!4718896 () Bool)

(declare-fun tp!2397085 () Bool)

(assert (=> b!8010577 (= e!4718896 (and tp_is_empty!53865 tp!2397085))))

(assert (=> b!8010476 (= tp!2397075 e!4718896)))

(assert (= (and b!8010476 ((_ is Cons!74766) (t!390633 testedSuffix!271))) b!8010577))

(declare-fun b!8010593 () Bool)

(declare-fun e!4718901 () Bool)

(declare-fun tp!2397100 () Bool)

(declare-fun tp!2397096 () Bool)

(assert (=> b!8010593 (= e!4718901 (and tp!2397100 tp!2397096))))

(declare-fun b!8010594 () Bool)

(declare-fun tp!2397099 () Bool)

(assert (=> b!8010594 (= e!4718901 tp!2397099)))

(declare-fun b!8010595 () Bool)

(declare-fun tp!2397098 () Bool)

(declare-fun tp!2397097 () Bool)

(assert (=> b!8010595 (= e!4718901 (and tp!2397098 tp!2397097))))

(assert (=> b!8010475 (= tp!2397081 e!4718901)))

(declare-fun b!8010592 () Bool)

(assert (=> b!8010592 (= e!4718901 tp_is_empty!53865)))

(assert (= (and b!8010475 ((_ is ElementMatch!21661) (reg!21990 r!15422))) b!8010592))

(assert (= (and b!8010475 ((_ is Concat!30660) (reg!21990 r!15422))) b!8010593))

(assert (= (and b!8010475 ((_ is Star!21661) (reg!21990 r!15422))) b!8010594))

(assert (= (and b!8010475 ((_ is Union!21661) (reg!21990 r!15422))) b!8010595))

(declare-fun b!8010603 () Bool)

(declare-fun e!4718904 () Bool)

(declare-fun tp!2397107 () Bool)

(declare-fun tp!2397103 () Bool)

(assert (=> b!8010603 (= e!4718904 (and tp!2397107 tp!2397103))))

(declare-fun b!8010604 () Bool)

(declare-fun tp!2397106 () Bool)

(assert (=> b!8010604 (= e!4718904 tp!2397106)))

(declare-fun b!8010605 () Bool)

(declare-fun tp!2397105 () Bool)

(declare-fun tp!2397104 () Bool)

(assert (=> b!8010605 (= e!4718904 (and tp!2397105 tp!2397104))))

(assert (=> b!8010480 (= tp!2397077 e!4718904)))

(declare-fun b!8010602 () Bool)

(assert (=> b!8010602 (= e!4718904 tp_is_empty!53865)))

(assert (= (and b!8010480 ((_ is ElementMatch!21661) (regOne!43834 r!15422))) b!8010602))

(assert (= (and b!8010480 ((_ is Concat!30660) (regOne!43834 r!15422))) b!8010603))

(assert (= (and b!8010480 ((_ is Star!21661) (regOne!43834 r!15422))) b!8010604))

(assert (= (and b!8010480 ((_ is Union!21661) (regOne!43834 r!15422))) b!8010605))

(declare-fun b!8010611 () Bool)

(declare-fun e!4718905 () Bool)

(declare-fun tp!2397118 () Bool)

(declare-fun tp!2397114 () Bool)

(assert (=> b!8010611 (= e!4718905 (and tp!2397118 tp!2397114))))

(declare-fun b!8010612 () Bool)

(declare-fun tp!2397117 () Bool)

(assert (=> b!8010612 (= e!4718905 tp!2397117)))

(declare-fun b!8010613 () Bool)

(declare-fun tp!2397116 () Bool)

(declare-fun tp!2397115 () Bool)

(assert (=> b!8010613 (= e!4718905 (and tp!2397116 tp!2397115))))

(assert (=> b!8010480 (= tp!2397076 e!4718905)))

(declare-fun b!8010610 () Bool)

(assert (=> b!8010610 (= e!4718905 tp_is_empty!53865)))

(assert (= (and b!8010480 ((_ is ElementMatch!21661) (regTwo!43834 r!15422))) b!8010610))

(assert (= (and b!8010480 ((_ is Concat!30660) (regTwo!43834 r!15422))) b!8010611))

(assert (= (and b!8010480 ((_ is Star!21661) (regTwo!43834 r!15422))) b!8010612))

(assert (= (and b!8010480 ((_ is Union!21661) (regTwo!43834 r!15422))) b!8010613))

(declare-fun b!8010614 () Bool)

(declare-fun e!4718906 () Bool)

(declare-fun tp!2397121 () Bool)

(assert (=> b!8010614 (= e!4718906 (and tp_is_empty!53865 tp!2397121))))

(assert (=> b!8010479 (= tp!2397078 e!4718906)))

(assert (= (and b!8010479 ((_ is Cons!74766) (t!390633 testedP!353))) b!8010614))

(declare-fun b!8010615 () Bool)

(declare-fun e!4718907 () Bool)

(declare-fun tp!2397122 () Bool)

(assert (=> b!8010615 (= e!4718907 (and tp_is_empty!53865 tp!2397122))))

(assert (=> b!8010478 (= tp!2397082 e!4718907)))

(assert (= (and b!8010478 ((_ is Cons!74766) (t!390633 totalInput!1349))) b!8010615))

(declare-fun b!8010617 () Bool)

(declare-fun e!4718908 () Bool)

(declare-fun tp!2397127 () Bool)

(declare-fun tp!2397123 () Bool)

(assert (=> b!8010617 (= e!4718908 (and tp!2397127 tp!2397123))))

(declare-fun b!8010618 () Bool)

(declare-fun tp!2397126 () Bool)

(assert (=> b!8010618 (= e!4718908 tp!2397126)))

(declare-fun b!8010619 () Bool)

(declare-fun tp!2397125 () Bool)

(declare-fun tp!2397124 () Bool)

(assert (=> b!8010619 (= e!4718908 (and tp!2397125 tp!2397124))))

(assert (=> b!8010477 (= tp!2397080 e!4718908)))

(declare-fun b!8010616 () Bool)

(assert (=> b!8010616 (= e!4718908 tp_is_empty!53865)))

(assert (= (and b!8010477 ((_ is ElementMatch!21661) (regOne!43835 r!15422))) b!8010616))

(assert (= (and b!8010477 ((_ is Concat!30660) (regOne!43835 r!15422))) b!8010617))

(assert (= (and b!8010477 ((_ is Star!21661) (regOne!43835 r!15422))) b!8010618))

(assert (= (and b!8010477 ((_ is Union!21661) (regOne!43835 r!15422))) b!8010619))

(declare-fun b!8010621 () Bool)

(declare-fun e!4718909 () Bool)

(declare-fun tp!2397132 () Bool)

(declare-fun tp!2397128 () Bool)

(assert (=> b!8010621 (= e!4718909 (and tp!2397132 tp!2397128))))

(declare-fun b!8010622 () Bool)

(declare-fun tp!2397131 () Bool)

(assert (=> b!8010622 (= e!4718909 tp!2397131)))

(declare-fun b!8010623 () Bool)

(declare-fun tp!2397130 () Bool)

(declare-fun tp!2397129 () Bool)

(assert (=> b!8010623 (= e!4718909 (and tp!2397130 tp!2397129))))

(assert (=> b!8010477 (= tp!2397079 e!4718909)))

(declare-fun b!8010620 () Bool)

(assert (=> b!8010620 (= e!4718909 tp_is_empty!53865)))

(assert (= (and b!8010477 ((_ is ElementMatch!21661) (regTwo!43835 r!15422))) b!8010620))

(assert (= (and b!8010477 ((_ is Concat!30660) (regTwo!43835 r!15422))) b!8010621))

(assert (= (and b!8010477 ((_ is Star!21661) (regTwo!43835 r!15422))) b!8010622))

(assert (= (and b!8010477 ((_ is Union!21661) (regTwo!43835 r!15422))) b!8010623))

(check-sat (not d!2388543) (not b!8010619) (not b!8010577) (not b!8010612) (not b!8010595) (not b!8010617) (not b!8010593) (not bm!744156) (not bm!744155) (not b!8010542) tp_is_empty!53865 (not b!8010621) (not b!8010571) (not b!8010604) (not b!8010490) (not b!8010615) (not b!8010603) (not b!8010613) (not b!8010614) (not b!8010611) (not b!8010623) (not b!8010605) (not b!8010570) (not b!8010594) (not b!8010488) (not b!8010618) (not b!8010622))
(check-sat)
(get-model)

(declare-fun d!2388547 () Bool)

(declare-fun lt!2716804 () Int)

(assert (=> d!2388547 (>= lt!2716804 0)))

(declare-fun e!4718920 () Int)

(assert (=> d!2388547 (= lt!2716804 e!4718920)))

(declare-fun c!1470439 () Bool)

(assert (=> d!2388547 (= c!1470439 ((_ is Nil!74766) (t!390633 testedP!353)))))

(assert (=> d!2388547 (= (size!43563 (t!390633 testedP!353)) lt!2716804)))

(declare-fun b!8010651 () Bool)

(assert (=> b!8010651 (= e!4718920 0)))

(declare-fun b!8010652 () Bool)

(assert (=> b!8010652 (= e!4718920 (+ 1 (size!43563 (t!390633 (t!390633 testedP!353)))))))

(assert (= (and d!2388547 c!1470439) b!8010651))

(assert (= (and d!2388547 (not c!1470439)) b!8010652))

(declare-fun m!8375042 () Bool)

(assert (=> b!8010652 m!8375042))

(assert (=> b!8010490 d!2388547))

(declare-fun d!2388549 () Bool)

(declare-fun lt!2716805 () Int)

(assert (=> d!2388549 (>= lt!2716805 0)))

(declare-fun e!4718921 () Int)

(assert (=> d!2388549 (= lt!2716805 e!4718921)))

(declare-fun c!1470440 () Bool)

(assert (=> d!2388549 (= c!1470440 ((_ is Nil!74766) lt!2716802))))

(assert (=> d!2388549 (= (size!43563 lt!2716802) lt!2716805)))

(declare-fun b!8010653 () Bool)

(assert (=> b!8010653 (= e!4718921 0)))

(declare-fun b!8010654 () Bool)

(assert (=> b!8010654 (= e!4718921 (+ 1 (size!43563 (t!390633 lt!2716802))))))

(assert (= (and d!2388549 c!1470440) b!8010653))

(assert (= (and d!2388549 (not c!1470440)) b!8010654))

(declare-fun m!8375044 () Bool)

(assert (=> b!8010654 m!8375044))

(assert (=> b!8010571 d!2388549))

(assert (=> b!8010571 d!2388535))

(declare-fun d!2388551 () Bool)

(declare-fun lt!2716806 () Int)

(assert (=> d!2388551 (>= lt!2716806 0)))

(declare-fun e!4718922 () Int)

(assert (=> d!2388551 (= lt!2716806 e!4718922)))

(declare-fun c!1470441 () Bool)

(assert (=> d!2388551 (= c!1470441 ((_ is Nil!74766) testedSuffix!271))))

(assert (=> d!2388551 (= (size!43563 testedSuffix!271) lt!2716806)))

(declare-fun b!8010655 () Bool)

(assert (=> b!8010655 (= e!4718922 0)))

(declare-fun b!8010656 () Bool)

(assert (=> b!8010656 (= e!4718922 (+ 1 (size!43563 (t!390633 testedSuffix!271))))))

(assert (= (and d!2388551 c!1470441) b!8010655))

(assert (= (and d!2388551 (not c!1470441)) b!8010656))

(declare-fun m!8375046 () Bool)

(assert (=> b!8010656 m!8375046))

(assert (=> b!8010571 d!2388551))

(declare-fun b!8010657 () Bool)

(declare-fun e!4718927 () Bool)

(declare-fun call!744165 () Bool)

(assert (=> b!8010657 (= e!4718927 call!744165)))

(declare-fun b!8010658 () Bool)

(declare-fun e!4718928 () Bool)

(declare-fun call!744166 () Bool)

(assert (=> b!8010658 (= e!4718928 call!744166)))

(declare-fun b!8010659 () Bool)

(declare-fun e!4718926 () Bool)

(assert (=> b!8010659 (= e!4718926 e!4718928)))

(declare-fun res!3167589 () Bool)

(assert (=> b!8010659 (=> (not res!3167589) (not e!4718928))))

(declare-fun call!744167 () Bool)

(assert (=> b!8010659 (= res!3167589 call!744167)))

(declare-fun bm!744160 () Bool)

(assert (=> bm!744160 (= call!744166 call!744165)))

(declare-fun b!8010660 () Bool)

(declare-fun res!3167587 () Bool)

(declare-fun e!4718924 () Bool)

(assert (=> b!8010660 (=> (not res!3167587) (not e!4718924))))

(assert (=> b!8010660 (= res!3167587 call!744167)))

(declare-fun e!4718923 () Bool)

(assert (=> b!8010660 (= e!4718923 e!4718924)))

(declare-fun b!8010662 () Bool)

(declare-fun e!4718925 () Bool)

(declare-fun e!4718929 () Bool)

(assert (=> b!8010662 (= e!4718925 e!4718929)))

(declare-fun c!1470442 () Bool)

(assert (=> b!8010662 (= c!1470442 ((_ is Star!21661) (ite c!1470430 (regOne!43835 r!15422) (regOne!43834 r!15422))))))

(declare-fun b!8010663 () Bool)

(assert (=> b!8010663 (= e!4718924 call!744166)))

(declare-fun b!8010664 () Bool)

(assert (=> b!8010664 (= e!4718929 e!4718927)))

(declare-fun res!3167591 () Bool)

(assert (=> b!8010664 (= res!3167591 (not (nullable!9712 (reg!21990 (ite c!1470430 (regOne!43835 r!15422) (regOne!43834 r!15422))))))))

(assert (=> b!8010664 (=> (not res!3167591) (not e!4718927))))

(declare-fun b!8010665 () Bool)

(declare-fun res!3167590 () Bool)

(assert (=> b!8010665 (=> res!3167590 e!4718926)))

(assert (=> b!8010665 (= res!3167590 (not ((_ is Concat!30660) (ite c!1470430 (regOne!43835 r!15422) (regOne!43834 r!15422)))))))

(assert (=> b!8010665 (= e!4718923 e!4718926)))

(declare-fun c!1470443 () Bool)

(declare-fun bm!744161 () Bool)

(assert (=> bm!744161 (= call!744165 (validRegex!11965 (ite c!1470442 (reg!21990 (ite c!1470430 (regOne!43835 r!15422) (regOne!43834 r!15422))) (ite c!1470443 (regTwo!43835 (ite c!1470430 (regOne!43835 r!15422) (regOne!43834 r!15422))) (regTwo!43834 (ite c!1470430 (regOne!43835 r!15422) (regOne!43834 r!15422)))))))))

(declare-fun bm!744162 () Bool)

(assert (=> bm!744162 (= call!744167 (validRegex!11965 (ite c!1470443 (regOne!43835 (ite c!1470430 (regOne!43835 r!15422) (regOne!43834 r!15422))) (regOne!43834 (ite c!1470430 (regOne!43835 r!15422) (regOne!43834 r!15422))))))))

(declare-fun d!2388553 () Bool)

(declare-fun res!3167588 () Bool)

(assert (=> d!2388553 (=> res!3167588 e!4718925)))

(assert (=> d!2388553 (= res!3167588 ((_ is ElementMatch!21661) (ite c!1470430 (regOne!43835 r!15422) (regOne!43834 r!15422))))))

(assert (=> d!2388553 (= (validRegex!11965 (ite c!1470430 (regOne!43835 r!15422) (regOne!43834 r!15422))) e!4718925)))

(declare-fun b!8010661 () Bool)

(assert (=> b!8010661 (= e!4718929 e!4718923)))

(assert (=> b!8010661 (= c!1470443 ((_ is Union!21661) (ite c!1470430 (regOne!43835 r!15422) (regOne!43834 r!15422))))))

(assert (= (and d!2388553 (not res!3167588)) b!8010662))

(assert (= (and b!8010662 c!1470442) b!8010664))

(assert (= (and b!8010662 (not c!1470442)) b!8010661))

(assert (= (and b!8010664 res!3167591) b!8010657))

(assert (= (and b!8010661 c!1470443) b!8010660))

(assert (= (and b!8010661 (not c!1470443)) b!8010665))

(assert (= (and b!8010660 res!3167587) b!8010663))

(assert (= (and b!8010665 (not res!3167590)) b!8010659))

(assert (= (and b!8010659 res!3167589) b!8010658))

(assert (= (or b!8010663 b!8010658) bm!744160))

(assert (= (or b!8010660 b!8010659) bm!744162))

(assert (= (or b!8010657 bm!744160) bm!744161))

(declare-fun m!8375048 () Bool)

(assert (=> b!8010664 m!8375048))

(declare-fun m!8375050 () Bool)

(assert (=> bm!744161 m!8375050))

(declare-fun m!8375052 () Bool)

(assert (=> bm!744162 m!8375052))

(assert (=> bm!744156 d!2388553))

(declare-fun d!2388555 () Bool)

(declare-fun e!4718931 () Bool)

(assert (=> d!2388555 e!4718931))

(declare-fun res!3167592 () Bool)

(assert (=> d!2388555 (=> (not res!3167592) (not e!4718931))))

(declare-fun lt!2716807 () List!74890)

(assert (=> d!2388555 (= res!3167592 (= (content!15903 lt!2716807) ((_ map or) (content!15903 (t!390633 testedP!353)) (content!15903 testedSuffix!271))))))

(declare-fun e!4718930 () List!74890)

(assert (=> d!2388555 (= lt!2716807 e!4718930)))

(declare-fun c!1470444 () Bool)

(assert (=> d!2388555 (= c!1470444 ((_ is Nil!74766) (t!390633 testedP!353)))))

(assert (=> d!2388555 (= (++!18487 (t!390633 testedP!353) testedSuffix!271) lt!2716807)))

(declare-fun b!8010667 () Bool)

(assert (=> b!8010667 (= e!4718930 (Cons!74766 (h!81214 (t!390633 testedP!353)) (++!18487 (t!390633 (t!390633 testedP!353)) testedSuffix!271)))))

(declare-fun b!8010668 () Bool)

(declare-fun res!3167593 () Bool)

(assert (=> b!8010668 (=> (not res!3167593) (not e!4718931))))

(assert (=> b!8010668 (= res!3167593 (= (size!43563 lt!2716807) (+ (size!43563 (t!390633 testedP!353)) (size!43563 testedSuffix!271))))))

(declare-fun b!8010669 () Bool)

(assert (=> b!8010669 (= e!4718931 (or (not (= testedSuffix!271 Nil!74766)) (= lt!2716807 (t!390633 testedP!353))))))

(declare-fun b!8010666 () Bool)

(assert (=> b!8010666 (= e!4718930 testedSuffix!271)))

(assert (= (and d!2388555 c!1470444) b!8010666))

(assert (= (and d!2388555 (not c!1470444)) b!8010667))

(assert (= (and d!2388555 res!3167592) b!8010668))

(assert (= (and b!8010668 res!3167593) b!8010669))

(declare-fun m!8375054 () Bool)

(assert (=> d!2388555 m!8375054))

(declare-fun m!8375056 () Bool)

(assert (=> d!2388555 m!8375056))

(assert (=> d!2388555 m!8375022))

(declare-fun m!8375058 () Bool)

(assert (=> b!8010667 m!8375058))

(declare-fun m!8375060 () Bool)

(assert (=> b!8010668 m!8375060))

(assert (=> b!8010668 m!8375000))

(assert (=> b!8010668 m!8375028))

(assert (=> b!8010570 d!2388555))

(declare-fun b!8010670 () Bool)

(declare-fun e!4718936 () Bool)

(declare-fun call!744168 () Bool)

(assert (=> b!8010670 (= e!4718936 call!744168)))

(declare-fun b!8010671 () Bool)

(declare-fun e!4718937 () Bool)

(declare-fun call!744169 () Bool)

(assert (=> b!8010671 (= e!4718937 call!744169)))

(declare-fun b!8010672 () Bool)

(declare-fun e!4718935 () Bool)

(assert (=> b!8010672 (= e!4718935 e!4718937)))

(declare-fun res!3167596 () Bool)

(assert (=> b!8010672 (=> (not res!3167596) (not e!4718937))))

(declare-fun call!744170 () Bool)

(assert (=> b!8010672 (= res!3167596 call!744170)))

(declare-fun bm!744163 () Bool)

(assert (=> bm!744163 (= call!744169 call!744168)))

(declare-fun b!8010673 () Bool)

(declare-fun res!3167594 () Bool)

(declare-fun e!4718933 () Bool)

(assert (=> b!8010673 (=> (not res!3167594) (not e!4718933))))

(assert (=> b!8010673 (= res!3167594 call!744170)))

(declare-fun e!4718932 () Bool)

(assert (=> b!8010673 (= e!4718932 e!4718933)))

(declare-fun b!8010675 () Bool)

(declare-fun e!4718934 () Bool)

(declare-fun e!4718938 () Bool)

(assert (=> b!8010675 (= e!4718934 e!4718938)))

(declare-fun c!1470445 () Bool)

(assert (=> b!8010675 (= c!1470445 ((_ is Star!21661) (ite c!1470429 (reg!21990 r!15422) (ite c!1470430 (regTwo!43835 r!15422) (regTwo!43834 r!15422)))))))

(declare-fun b!8010676 () Bool)

(assert (=> b!8010676 (= e!4718933 call!744169)))

(declare-fun b!8010677 () Bool)

(assert (=> b!8010677 (= e!4718938 e!4718936)))

(declare-fun res!3167598 () Bool)

(assert (=> b!8010677 (= res!3167598 (not (nullable!9712 (reg!21990 (ite c!1470429 (reg!21990 r!15422) (ite c!1470430 (regTwo!43835 r!15422) (regTwo!43834 r!15422)))))))))

(assert (=> b!8010677 (=> (not res!3167598) (not e!4718936))))

(declare-fun b!8010678 () Bool)

(declare-fun res!3167597 () Bool)

(assert (=> b!8010678 (=> res!3167597 e!4718935)))

(assert (=> b!8010678 (= res!3167597 (not ((_ is Concat!30660) (ite c!1470429 (reg!21990 r!15422) (ite c!1470430 (regTwo!43835 r!15422) (regTwo!43834 r!15422))))))))

(assert (=> b!8010678 (= e!4718932 e!4718935)))

(declare-fun bm!744164 () Bool)

(declare-fun c!1470446 () Bool)

(assert (=> bm!744164 (= call!744168 (validRegex!11965 (ite c!1470445 (reg!21990 (ite c!1470429 (reg!21990 r!15422) (ite c!1470430 (regTwo!43835 r!15422) (regTwo!43834 r!15422)))) (ite c!1470446 (regTwo!43835 (ite c!1470429 (reg!21990 r!15422) (ite c!1470430 (regTwo!43835 r!15422) (regTwo!43834 r!15422)))) (regTwo!43834 (ite c!1470429 (reg!21990 r!15422) (ite c!1470430 (regTwo!43835 r!15422) (regTwo!43834 r!15422))))))))))

(declare-fun bm!744165 () Bool)

(assert (=> bm!744165 (= call!744170 (validRegex!11965 (ite c!1470446 (regOne!43835 (ite c!1470429 (reg!21990 r!15422) (ite c!1470430 (regTwo!43835 r!15422) (regTwo!43834 r!15422)))) (regOne!43834 (ite c!1470429 (reg!21990 r!15422) (ite c!1470430 (regTwo!43835 r!15422) (regTwo!43834 r!15422)))))))))

(declare-fun d!2388557 () Bool)

(declare-fun res!3167595 () Bool)

(assert (=> d!2388557 (=> res!3167595 e!4718934)))

(assert (=> d!2388557 (= res!3167595 ((_ is ElementMatch!21661) (ite c!1470429 (reg!21990 r!15422) (ite c!1470430 (regTwo!43835 r!15422) (regTwo!43834 r!15422)))))))

(assert (=> d!2388557 (= (validRegex!11965 (ite c!1470429 (reg!21990 r!15422) (ite c!1470430 (regTwo!43835 r!15422) (regTwo!43834 r!15422)))) e!4718934)))

(declare-fun b!8010674 () Bool)

(assert (=> b!8010674 (= e!4718938 e!4718932)))

(assert (=> b!8010674 (= c!1470446 ((_ is Union!21661) (ite c!1470429 (reg!21990 r!15422) (ite c!1470430 (regTwo!43835 r!15422) (regTwo!43834 r!15422)))))))

(assert (= (and d!2388557 (not res!3167595)) b!8010675))

(assert (= (and b!8010675 c!1470445) b!8010677))

(assert (= (and b!8010675 (not c!1470445)) b!8010674))

(assert (= (and b!8010677 res!3167598) b!8010670))

(assert (= (and b!8010674 c!1470446) b!8010673))

(assert (= (and b!8010674 (not c!1470446)) b!8010678))

(assert (= (and b!8010673 res!3167594) b!8010676))

(assert (= (and b!8010678 (not res!3167597)) b!8010672))

(assert (= (and b!8010672 res!3167596) b!8010671))

(assert (= (or b!8010676 b!8010671) bm!744163))

(assert (= (or b!8010673 b!8010672) bm!744165))

(assert (= (or b!8010670 bm!744163) bm!744164))

(declare-fun m!8375062 () Bool)

(assert (=> b!8010677 m!8375062))

(declare-fun m!8375064 () Bool)

(assert (=> bm!744164 m!8375064))

(declare-fun m!8375066 () Bool)

(assert (=> bm!744165 m!8375066))

(assert (=> bm!744155 d!2388557))

(declare-fun d!2388559 () Bool)

(declare-fun c!1470449 () Bool)

(assert (=> d!2388559 (= c!1470449 ((_ is Nil!74766) lt!2716802))))

(declare-fun e!4718941 () (InoxSet C!43660))

(assert (=> d!2388559 (= (content!15903 lt!2716802) e!4718941)))

(declare-fun b!8010683 () Bool)

(assert (=> b!8010683 (= e!4718941 ((as const (Array C!43660 Bool)) false))))

(declare-fun b!8010684 () Bool)

(assert (=> b!8010684 (= e!4718941 ((_ map or) (store ((as const (Array C!43660 Bool)) false) (h!81214 lt!2716802) true) (content!15903 (t!390633 lt!2716802))))))

(assert (= (and d!2388559 c!1470449) b!8010683))

(assert (= (and d!2388559 (not c!1470449)) b!8010684))

(declare-fun m!8375068 () Bool)

(assert (=> b!8010684 m!8375068))

(declare-fun m!8375070 () Bool)

(assert (=> b!8010684 m!8375070))

(assert (=> d!2388543 d!2388559))

(declare-fun d!2388561 () Bool)

(declare-fun c!1470450 () Bool)

(assert (=> d!2388561 (= c!1470450 ((_ is Nil!74766) testedP!353))))

(declare-fun e!4718942 () (InoxSet C!43660))

(assert (=> d!2388561 (= (content!15903 testedP!353) e!4718942)))

(declare-fun b!8010685 () Bool)

(assert (=> b!8010685 (= e!4718942 ((as const (Array C!43660 Bool)) false))))

(declare-fun b!8010686 () Bool)

(assert (=> b!8010686 (= e!4718942 ((_ map or) (store ((as const (Array C!43660 Bool)) false) (h!81214 testedP!353) true) (content!15903 (t!390633 testedP!353))))))

(assert (= (and d!2388561 c!1470450) b!8010685))

(assert (= (and d!2388561 (not c!1470450)) b!8010686))

(declare-fun m!8375072 () Bool)

(assert (=> b!8010686 m!8375072))

(assert (=> b!8010686 m!8375056))

(assert (=> d!2388543 d!2388561))

(declare-fun d!2388563 () Bool)

(declare-fun c!1470451 () Bool)

(assert (=> d!2388563 (= c!1470451 ((_ is Nil!74766) testedSuffix!271))))

(declare-fun e!4718943 () (InoxSet C!43660))

(assert (=> d!2388563 (= (content!15903 testedSuffix!271) e!4718943)))

(declare-fun b!8010687 () Bool)

(assert (=> b!8010687 (= e!4718943 ((as const (Array C!43660 Bool)) false))))

(declare-fun b!8010688 () Bool)

(assert (=> b!8010688 (= e!4718943 ((_ map or) (store ((as const (Array C!43660 Bool)) false) (h!81214 testedSuffix!271) true) (content!15903 (t!390633 testedSuffix!271))))))

(assert (= (and d!2388563 c!1470451) b!8010687))

(assert (= (and d!2388563 (not c!1470451)) b!8010688))

(declare-fun m!8375074 () Bool)

(assert (=> b!8010688 m!8375074))

(declare-fun m!8375076 () Bool)

(assert (=> b!8010688 m!8375076))

(assert (=> d!2388543 d!2388563))

(declare-fun d!2388565 () Bool)

(declare-fun lt!2716808 () Int)

(assert (=> d!2388565 (>= lt!2716808 0)))

(declare-fun e!4718944 () Int)

(assert (=> d!2388565 (= lt!2716808 e!4718944)))

(declare-fun c!1470452 () Bool)

(assert (=> d!2388565 (= c!1470452 ((_ is Nil!74766) (t!390633 totalInput!1349)))))

(assert (=> d!2388565 (= (size!43563 (t!390633 totalInput!1349)) lt!2716808)))

(declare-fun b!8010689 () Bool)

(assert (=> b!8010689 (= e!4718944 0)))

(declare-fun b!8010690 () Bool)

(assert (=> b!8010690 (= e!4718944 (+ 1 (size!43563 (t!390633 (t!390633 totalInput!1349)))))))

(assert (= (and d!2388565 c!1470452) b!8010689))

(assert (= (and d!2388565 (not c!1470452)) b!8010690))

(declare-fun m!8375078 () Bool)

(assert (=> b!8010690 m!8375078))

(assert (=> b!8010488 d!2388565))

(declare-fun d!2388567 () Bool)

(declare-fun nullableFct!3836 (Regex!21661) Bool)

(assert (=> d!2388567 (= (nullable!9712 (reg!21990 r!15422)) (nullableFct!3836 (reg!21990 r!15422)))))

(declare-fun bs!1970853 () Bool)

(assert (= bs!1970853 d!2388567))

(declare-fun m!8375080 () Bool)

(assert (=> bs!1970853 m!8375080))

(assert (=> b!8010542 d!2388567))

(declare-fun b!8010692 () Bool)

(declare-fun e!4718945 () Bool)

(declare-fun tp!2397167 () Bool)

(declare-fun tp!2397163 () Bool)

(assert (=> b!8010692 (= e!4718945 (and tp!2397167 tp!2397163))))

(declare-fun b!8010693 () Bool)

(declare-fun tp!2397166 () Bool)

(assert (=> b!8010693 (= e!4718945 tp!2397166)))

(declare-fun b!8010694 () Bool)

(declare-fun tp!2397165 () Bool)

(declare-fun tp!2397164 () Bool)

(assert (=> b!8010694 (= e!4718945 (and tp!2397165 tp!2397164))))

(assert (=> b!8010593 (= tp!2397100 e!4718945)))

(declare-fun b!8010691 () Bool)

(assert (=> b!8010691 (= e!4718945 tp_is_empty!53865)))

(assert (= (and b!8010593 ((_ is ElementMatch!21661) (regOne!43834 (reg!21990 r!15422)))) b!8010691))

(assert (= (and b!8010593 ((_ is Concat!30660) (regOne!43834 (reg!21990 r!15422)))) b!8010692))

(assert (= (and b!8010593 ((_ is Star!21661) (regOne!43834 (reg!21990 r!15422)))) b!8010693))

(assert (= (and b!8010593 ((_ is Union!21661) (regOne!43834 (reg!21990 r!15422)))) b!8010694))

(declare-fun b!8010696 () Bool)

(declare-fun e!4718946 () Bool)

(declare-fun tp!2397172 () Bool)

(declare-fun tp!2397168 () Bool)

(assert (=> b!8010696 (= e!4718946 (and tp!2397172 tp!2397168))))

(declare-fun b!8010697 () Bool)

(declare-fun tp!2397171 () Bool)

(assert (=> b!8010697 (= e!4718946 tp!2397171)))

(declare-fun b!8010698 () Bool)

(declare-fun tp!2397170 () Bool)

(declare-fun tp!2397169 () Bool)

(assert (=> b!8010698 (= e!4718946 (and tp!2397170 tp!2397169))))

(assert (=> b!8010593 (= tp!2397096 e!4718946)))

(declare-fun b!8010695 () Bool)

(assert (=> b!8010695 (= e!4718946 tp_is_empty!53865)))

(assert (= (and b!8010593 ((_ is ElementMatch!21661) (regTwo!43834 (reg!21990 r!15422)))) b!8010695))

(assert (= (and b!8010593 ((_ is Concat!30660) (regTwo!43834 (reg!21990 r!15422)))) b!8010696))

(assert (= (and b!8010593 ((_ is Star!21661) (regTwo!43834 (reg!21990 r!15422)))) b!8010697))

(assert (= (and b!8010593 ((_ is Union!21661) (regTwo!43834 (reg!21990 r!15422)))) b!8010698))

(declare-fun b!8010700 () Bool)

(declare-fun e!4718947 () Bool)

(declare-fun tp!2397177 () Bool)

(declare-fun tp!2397173 () Bool)

(assert (=> b!8010700 (= e!4718947 (and tp!2397177 tp!2397173))))

(declare-fun b!8010701 () Bool)

(declare-fun tp!2397176 () Bool)

(assert (=> b!8010701 (= e!4718947 tp!2397176)))

(declare-fun b!8010702 () Bool)

(declare-fun tp!2397175 () Bool)

(declare-fun tp!2397174 () Bool)

(assert (=> b!8010702 (= e!4718947 (and tp!2397175 tp!2397174))))

(assert (=> b!8010605 (= tp!2397105 e!4718947)))

(declare-fun b!8010699 () Bool)

(assert (=> b!8010699 (= e!4718947 tp_is_empty!53865)))

(assert (= (and b!8010605 ((_ is ElementMatch!21661) (regOne!43835 (regOne!43834 r!15422)))) b!8010699))

(assert (= (and b!8010605 ((_ is Concat!30660) (regOne!43835 (regOne!43834 r!15422)))) b!8010700))

(assert (= (and b!8010605 ((_ is Star!21661) (regOne!43835 (regOne!43834 r!15422)))) b!8010701))

(assert (= (and b!8010605 ((_ is Union!21661) (regOne!43835 (regOne!43834 r!15422)))) b!8010702))

(declare-fun b!8010704 () Bool)

(declare-fun e!4718948 () Bool)

(declare-fun tp!2397182 () Bool)

(declare-fun tp!2397178 () Bool)

(assert (=> b!8010704 (= e!4718948 (and tp!2397182 tp!2397178))))

(declare-fun b!8010705 () Bool)

(declare-fun tp!2397181 () Bool)

(assert (=> b!8010705 (= e!4718948 tp!2397181)))

(declare-fun b!8010706 () Bool)

(declare-fun tp!2397180 () Bool)

(declare-fun tp!2397179 () Bool)

(assert (=> b!8010706 (= e!4718948 (and tp!2397180 tp!2397179))))

(assert (=> b!8010605 (= tp!2397104 e!4718948)))

(declare-fun b!8010703 () Bool)

(assert (=> b!8010703 (= e!4718948 tp_is_empty!53865)))

(assert (= (and b!8010605 ((_ is ElementMatch!21661) (regTwo!43835 (regOne!43834 r!15422)))) b!8010703))

(assert (= (and b!8010605 ((_ is Concat!30660) (regTwo!43835 (regOne!43834 r!15422)))) b!8010704))

(assert (= (and b!8010605 ((_ is Star!21661) (regTwo!43835 (regOne!43834 r!15422)))) b!8010705))

(assert (= (and b!8010605 ((_ is Union!21661) (regTwo!43835 (regOne!43834 r!15422)))) b!8010706))

(declare-fun b!8010708 () Bool)

(declare-fun e!4718949 () Bool)

(declare-fun tp!2397187 () Bool)

(declare-fun tp!2397183 () Bool)

(assert (=> b!8010708 (= e!4718949 (and tp!2397187 tp!2397183))))

(declare-fun b!8010709 () Bool)

(declare-fun tp!2397186 () Bool)

(assert (=> b!8010709 (= e!4718949 tp!2397186)))

(declare-fun b!8010710 () Bool)

(declare-fun tp!2397185 () Bool)

(declare-fun tp!2397184 () Bool)

(assert (=> b!8010710 (= e!4718949 (and tp!2397185 tp!2397184))))

(assert (=> b!8010618 (= tp!2397126 e!4718949)))

(declare-fun b!8010707 () Bool)

(assert (=> b!8010707 (= e!4718949 tp_is_empty!53865)))

(assert (= (and b!8010618 ((_ is ElementMatch!21661) (reg!21990 (regOne!43835 r!15422)))) b!8010707))

(assert (= (and b!8010618 ((_ is Concat!30660) (reg!21990 (regOne!43835 r!15422)))) b!8010708))

(assert (= (and b!8010618 ((_ is Star!21661) (reg!21990 (regOne!43835 r!15422)))) b!8010709))

(assert (= (and b!8010618 ((_ is Union!21661) (reg!21990 (regOne!43835 r!15422)))) b!8010710))

(declare-fun b!8010712 () Bool)

(declare-fun e!4718950 () Bool)

(declare-fun tp!2397192 () Bool)

(declare-fun tp!2397188 () Bool)

(assert (=> b!8010712 (= e!4718950 (and tp!2397192 tp!2397188))))

(declare-fun b!8010713 () Bool)

(declare-fun tp!2397191 () Bool)

(assert (=> b!8010713 (= e!4718950 tp!2397191)))

(declare-fun b!8010714 () Bool)

(declare-fun tp!2397190 () Bool)

(declare-fun tp!2397189 () Bool)

(assert (=> b!8010714 (= e!4718950 (and tp!2397190 tp!2397189))))

(assert (=> b!8010617 (= tp!2397127 e!4718950)))

(declare-fun b!8010711 () Bool)

(assert (=> b!8010711 (= e!4718950 tp_is_empty!53865)))

(assert (= (and b!8010617 ((_ is ElementMatch!21661) (regOne!43834 (regOne!43835 r!15422)))) b!8010711))

(assert (= (and b!8010617 ((_ is Concat!30660) (regOne!43834 (regOne!43835 r!15422)))) b!8010712))

(assert (= (and b!8010617 ((_ is Star!21661) (regOne!43834 (regOne!43835 r!15422)))) b!8010713))

(assert (= (and b!8010617 ((_ is Union!21661) (regOne!43834 (regOne!43835 r!15422)))) b!8010714))

(declare-fun b!8010716 () Bool)

(declare-fun e!4718951 () Bool)

(declare-fun tp!2397197 () Bool)

(declare-fun tp!2397193 () Bool)

(assert (=> b!8010716 (= e!4718951 (and tp!2397197 tp!2397193))))

(declare-fun b!8010717 () Bool)

(declare-fun tp!2397196 () Bool)

(assert (=> b!8010717 (= e!4718951 tp!2397196)))

(declare-fun b!8010718 () Bool)

(declare-fun tp!2397195 () Bool)

(declare-fun tp!2397194 () Bool)

(assert (=> b!8010718 (= e!4718951 (and tp!2397195 tp!2397194))))

(assert (=> b!8010617 (= tp!2397123 e!4718951)))

(declare-fun b!8010715 () Bool)

(assert (=> b!8010715 (= e!4718951 tp_is_empty!53865)))

(assert (= (and b!8010617 ((_ is ElementMatch!21661) (regTwo!43834 (regOne!43835 r!15422)))) b!8010715))

(assert (= (and b!8010617 ((_ is Concat!30660) (regTwo!43834 (regOne!43835 r!15422)))) b!8010716))

(assert (= (and b!8010617 ((_ is Star!21661) (regTwo!43834 (regOne!43835 r!15422)))) b!8010717))

(assert (= (and b!8010617 ((_ is Union!21661) (regTwo!43834 (regOne!43835 r!15422)))) b!8010718))

(declare-fun b!8010720 () Bool)

(declare-fun e!4718952 () Bool)

(declare-fun tp!2397202 () Bool)

(declare-fun tp!2397198 () Bool)

(assert (=> b!8010720 (= e!4718952 (and tp!2397202 tp!2397198))))

(declare-fun b!8010721 () Bool)

(declare-fun tp!2397201 () Bool)

(assert (=> b!8010721 (= e!4718952 tp!2397201)))

(declare-fun b!8010722 () Bool)

(declare-fun tp!2397200 () Bool)

(declare-fun tp!2397199 () Bool)

(assert (=> b!8010722 (= e!4718952 (and tp!2397200 tp!2397199))))

(assert (=> b!8010595 (= tp!2397098 e!4718952)))

(declare-fun b!8010719 () Bool)

(assert (=> b!8010719 (= e!4718952 tp_is_empty!53865)))

(assert (= (and b!8010595 ((_ is ElementMatch!21661) (regOne!43835 (reg!21990 r!15422)))) b!8010719))

(assert (= (and b!8010595 ((_ is Concat!30660) (regOne!43835 (reg!21990 r!15422)))) b!8010720))

(assert (= (and b!8010595 ((_ is Star!21661) (regOne!43835 (reg!21990 r!15422)))) b!8010721))

(assert (= (and b!8010595 ((_ is Union!21661) (regOne!43835 (reg!21990 r!15422)))) b!8010722))

(declare-fun b!8010724 () Bool)

(declare-fun e!4718953 () Bool)

(declare-fun tp!2397207 () Bool)

(declare-fun tp!2397203 () Bool)

(assert (=> b!8010724 (= e!4718953 (and tp!2397207 tp!2397203))))

(declare-fun b!8010725 () Bool)

(declare-fun tp!2397206 () Bool)

(assert (=> b!8010725 (= e!4718953 tp!2397206)))

(declare-fun b!8010726 () Bool)

(declare-fun tp!2397205 () Bool)

(declare-fun tp!2397204 () Bool)

(assert (=> b!8010726 (= e!4718953 (and tp!2397205 tp!2397204))))

(assert (=> b!8010595 (= tp!2397097 e!4718953)))

(declare-fun b!8010723 () Bool)

(assert (=> b!8010723 (= e!4718953 tp_is_empty!53865)))

(assert (= (and b!8010595 ((_ is ElementMatch!21661) (regTwo!43835 (reg!21990 r!15422)))) b!8010723))

(assert (= (and b!8010595 ((_ is Concat!30660) (regTwo!43835 (reg!21990 r!15422)))) b!8010724))

(assert (= (and b!8010595 ((_ is Star!21661) (regTwo!43835 (reg!21990 r!15422)))) b!8010725))

(assert (= (and b!8010595 ((_ is Union!21661) (regTwo!43835 (reg!21990 r!15422)))) b!8010726))

(declare-fun b!8010728 () Bool)

(declare-fun e!4718954 () Bool)

(declare-fun tp!2397212 () Bool)

(declare-fun tp!2397208 () Bool)

(assert (=> b!8010728 (= e!4718954 (and tp!2397212 tp!2397208))))

(declare-fun b!8010729 () Bool)

(declare-fun tp!2397211 () Bool)

(assert (=> b!8010729 (= e!4718954 tp!2397211)))

(declare-fun b!8010730 () Bool)

(declare-fun tp!2397210 () Bool)

(declare-fun tp!2397209 () Bool)

(assert (=> b!8010730 (= e!4718954 (and tp!2397210 tp!2397209))))

(assert (=> b!8010622 (= tp!2397131 e!4718954)))

(declare-fun b!8010727 () Bool)

(assert (=> b!8010727 (= e!4718954 tp_is_empty!53865)))

(assert (= (and b!8010622 ((_ is ElementMatch!21661) (reg!21990 (regTwo!43835 r!15422)))) b!8010727))

(assert (= (and b!8010622 ((_ is Concat!30660) (reg!21990 (regTwo!43835 r!15422)))) b!8010728))

(assert (= (and b!8010622 ((_ is Star!21661) (reg!21990 (regTwo!43835 r!15422)))) b!8010729))

(assert (= (and b!8010622 ((_ is Union!21661) (reg!21990 (regTwo!43835 r!15422)))) b!8010730))

(declare-fun b!8010731 () Bool)

(declare-fun e!4718955 () Bool)

(declare-fun tp!2397213 () Bool)

(assert (=> b!8010731 (= e!4718955 (and tp_is_empty!53865 tp!2397213))))

(assert (=> b!8010577 (= tp!2397085 e!4718955)))

(assert (= (and b!8010577 ((_ is Cons!74766) (t!390633 (t!390633 testedSuffix!271)))) b!8010731))

(declare-fun b!8010733 () Bool)

(declare-fun e!4718956 () Bool)

(declare-fun tp!2397218 () Bool)

(declare-fun tp!2397214 () Bool)

(assert (=> b!8010733 (= e!4718956 (and tp!2397218 tp!2397214))))

(declare-fun b!8010734 () Bool)

(declare-fun tp!2397217 () Bool)

(assert (=> b!8010734 (= e!4718956 tp!2397217)))

(declare-fun b!8010735 () Bool)

(declare-fun tp!2397216 () Bool)

(declare-fun tp!2397215 () Bool)

(assert (=> b!8010735 (= e!4718956 (and tp!2397216 tp!2397215))))

(assert (=> b!8010621 (= tp!2397132 e!4718956)))

(declare-fun b!8010732 () Bool)

(assert (=> b!8010732 (= e!4718956 tp_is_empty!53865)))

(assert (= (and b!8010621 ((_ is ElementMatch!21661) (regOne!43834 (regTwo!43835 r!15422)))) b!8010732))

(assert (= (and b!8010621 ((_ is Concat!30660) (regOne!43834 (regTwo!43835 r!15422)))) b!8010733))

(assert (= (and b!8010621 ((_ is Star!21661) (regOne!43834 (regTwo!43835 r!15422)))) b!8010734))

(assert (= (and b!8010621 ((_ is Union!21661) (regOne!43834 (regTwo!43835 r!15422)))) b!8010735))

(declare-fun b!8010737 () Bool)

(declare-fun e!4718957 () Bool)

(declare-fun tp!2397223 () Bool)

(declare-fun tp!2397219 () Bool)

(assert (=> b!8010737 (= e!4718957 (and tp!2397223 tp!2397219))))

(declare-fun b!8010738 () Bool)

(declare-fun tp!2397222 () Bool)

(assert (=> b!8010738 (= e!4718957 tp!2397222)))

(declare-fun b!8010739 () Bool)

(declare-fun tp!2397221 () Bool)

(declare-fun tp!2397220 () Bool)

(assert (=> b!8010739 (= e!4718957 (and tp!2397221 tp!2397220))))

(assert (=> b!8010621 (= tp!2397128 e!4718957)))

(declare-fun b!8010736 () Bool)

(assert (=> b!8010736 (= e!4718957 tp_is_empty!53865)))

(assert (= (and b!8010621 ((_ is ElementMatch!21661) (regTwo!43834 (regTwo!43835 r!15422)))) b!8010736))

(assert (= (and b!8010621 ((_ is Concat!30660) (regTwo!43834 (regTwo!43835 r!15422)))) b!8010737))

(assert (= (and b!8010621 ((_ is Star!21661) (regTwo!43834 (regTwo!43835 r!15422)))) b!8010738))

(assert (= (and b!8010621 ((_ is Union!21661) (regTwo!43834 (regTwo!43835 r!15422)))) b!8010739))

(declare-fun b!8010740 () Bool)

(declare-fun e!4718958 () Bool)

(declare-fun tp!2397224 () Bool)

(assert (=> b!8010740 (= e!4718958 (and tp_is_empty!53865 tp!2397224))))

(assert (=> b!8010614 (= tp!2397121 e!4718958)))

(assert (= (and b!8010614 ((_ is Cons!74766) (t!390633 (t!390633 testedP!353)))) b!8010740))

(declare-fun b!8010742 () Bool)

(declare-fun e!4718959 () Bool)

(declare-fun tp!2397229 () Bool)

(declare-fun tp!2397225 () Bool)

(assert (=> b!8010742 (= e!4718959 (and tp!2397229 tp!2397225))))

(declare-fun b!8010743 () Bool)

(declare-fun tp!2397228 () Bool)

(assert (=> b!8010743 (= e!4718959 tp!2397228)))

(declare-fun b!8010744 () Bool)

(declare-fun tp!2397227 () Bool)

(declare-fun tp!2397226 () Bool)

(assert (=> b!8010744 (= e!4718959 (and tp!2397227 tp!2397226))))

(assert (=> b!8010594 (= tp!2397099 e!4718959)))

(declare-fun b!8010741 () Bool)

(assert (=> b!8010741 (= e!4718959 tp_is_empty!53865)))

(assert (= (and b!8010594 ((_ is ElementMatch!21661) (reg!21990 (reg!21990 r!15422)))) b!8010741))

(assert (= (and b!8010594 ((_ is Concat!30660) (reg!21990 (reg!21990 r!15422)))) b!8010742))

(assert (= (and b!8010594 ((_ is Star!21661) (reg!21990 (reg!21990 r!15422)))) b!8010743))

(assert (= (and b!8010594 ((_ is Union!21661) (reg!21990 (reg!21990 r!15422)))) b!8010744))

(declare-fun b!8010746 () Bool)

(declare-fun e!4718960 () Bool)

(declare-fun tp!2397234 () Bool)

(declare-fun tp!2397230 () Bool)

(assert (=> b!8010746 (= e!4718960 (and tp!2397234 tp!2397230))))

(declare-fun b!8010747 () Bool)

(declare-fun tp!2397233 () Bool)

(assert (=> b!8010747 (= e!4718960 tp!2397233)))

(declare-fun b!8010748 () Bool)

(declare-fun tp!2397232 () Bool)

(declare-fun tp!2397231 () Bool)

(assert (=> b!8010748 (= e!4718960 (and tp!2397232 tp!2397231))))

(assert (=> b!8010611 (= tp!2397118 e!4718960)))

(declare-fun b!8010745 () Bool)

(assert (=> b!8010745 (= e!4718960 tp_is_empty!53865)))

(assert (= (and b!8010611 ((_ is ElementMatch!21661) (regOne!43834 (regTwo!43834 r!15422)))) b!8010745))

(assert (= (and b!8010611 ((_ is Concat!30660) (regOne!43834 (regTwo!43834 r!15422)))) b!8010746))

(assert (= (and b!8010611 ((_ is Star!21661) (regOne!43834 (regTwo!43834 r!15422)))) b!8010747))

(assert (= (and b!8010611 ((_ is Union!21661) (regOne!43834 (regTwo!43834 r!15422)))) b!8010748))

(declare-fun b!8010750 () Bool)

(declare-fun e!4718961 () Bool)

(declare-fun tp!2397239 () Bool)

(declare-fun tp!2397235 () Bool)

(assert (=> b!8010750 (= e!4718961 (and tp!2397239 tp!2397235))))

(declare-fun b!8010751 () Bool)

(declare-fun tp!2397238 () Bool)

(assert (=> b!8010751 (= e!4718961 tp!2397238)))

(declare-fun b!8010752 () Bool)

(declare-fun tp!2397237 () Bool)

(declare-fun tp!2397236 () Bool)

(assert (=> b!8010752 (= e!4718961 (and tp!2397237 tp!2397236))))

(assert (=> b!8010611 (= tp!2397114 e!4718961)))

(declare-fun b!8010749 () Bool)

(assert (=> b!8010749 (= e!4718961 tp_is_empty!53865)))

(assert (= (and b!8010611 ((_ is ElementMatch!21661) (regTwo!43834 (regTwo!43834 r!15422)))) b!8010749))

(assert (= (and b!8010611 ((_ is Concat!30660) (regTwo!43834 (regTwo!43834 r!15422)))) b!8010750))

(assert (= (and b!8010611 ((_ is Star!21661) (regTwo!43834 (regTwo!43834 r!15422)))) b!8010751))

(assert (= (and b!8010611 ((_ is Union!21661) (regTwo!43834 (regTwo!43834 r!15422)))) b!8010752))

(declare-fun b!8010753 () Bool)

(declare-fun e!4718962 () Bool)

(declare-fun tp!2397240 () Bool)

(assert (=> b!8010753 (= e!4718962 (and tp_is_empty!53865 tp!2397240))))

(assert (=> b!8010615 (= tp!2397122 e!4718962)))

(assert (= (and b!8010615 ((_ is Cons!74766) (t!390633 (t!390633 totalInput!1349)))) b!8010753))

(declare-fun b!8010755 () Bool)

(declare-fun e!4718963 () Bool)

(declare-fun tp!2397245 () Bool)

(declare-fun tp!2397241 () Bool)

(assert (=> b!8010755 (= e!4718963 (and tp!2397245 tp!2397241))))

(declare-fun b!8010756 () Bool)

(declare-fun tp!2397244 () Bool)

(assert (=> b!8010756 (= e!4718963 tp!2397244)))

(declare-fun b!8010757 () Bool)

(declare-fun tp!2397243 () Bool)

(declare-fun tp!2397242 () Bool)

(assert (=> b!8010757 (= e!4718963 (and tp!2397243 tp!2397242))))

(assert (=> b!8010619 (= tp!2397125 e!4718963)))

(declare-fun b!8010754 () Bool)

(assert (=> b!8010754 (= e!4718963 tp_is_empty!53865)))

(assert (= (and b!8010619 ((_ is ElementMatch!21661) (regOne!43835 (regOne!43835 r!15422)))) b!8010754))

(assert (= (and b!8010619 ((_ is Concat!30660) (regOne!43835 (regOne!43835 r!15422)))) b!8010755))

(assert (= (and b!8010619 ((_ is Star!21661) (regOne!43835 (regOne!43835 r!15422)))) b!8010756))

(assert (= (and b!8010619 ((_ is Union!21661) (regOne!43835 (regOne!43835 r!15422)))) b!8010757))

(declare-fun b!8010759 () Bool)

(declare-fun e!4718964 () Bool)

(declare-fun tp!2397250 () Bool)

(declare-fun tp!2397246 () Bool)

(assert (=> b!8010759 (= e!4718964 (and tp!2397250 tp!2397246))))

(declare-fun b!8010760 () Bool)

(declare-fun tp!2397249 () Bool)

(assert (=> b!8010760 (= e!4718964 tp!2397249)))

(declare-fun b!8010761 () Bool)

(declare-fun tp!2397248 () Bool)

(declare-fun tp!2397247 () Bool)

(assert (=> b!8010761 (= e!4718964 (and tp!2397248 tp!2397247))))

(assert (=> b!8010619 (= tp!2397124 e!4718964)))

(declare-fun b!8010758 () Bool)

(assert (=> b!8010758 (= e!4718964 tp_is_empty!53865)))

(assert (= (and b!8010619 ((_ is ElementMatch!21661) (regTwo!43835 (regOne!43835 r!15422)))) b!8010758))

(assert (= (and b!8010619 ((_ is Concat!30660) (regTwo!43835 (regOne!43835 r!15422)))) b!8010759))

(assert (= (and b!8010619 ((_ is Star!21661) (regTwo!43835 (regOne!43835 r!15422)))) b!8010760))

(assert (= (and b!8010619 ((_ is Union!21661) (regTwo!43835 (regOne!43835 r!15422)))) b!8010761))

(declare-fun b!8010763 () Bool)

(declare-fun e!4718965 () Bool)

(declare-fun tp!2397255 () Bool)

(declare-fun tp!2397251 () Bool)

(assert (=> b!8010763 (= e!4718965 (and tp!2397255 tp!2397251))))

(declare-fun b!8010764 () Bool)

(declare-fun tp!2397254 () Bool)

(assert (=> b!8010764 (= e!4718965 tp!2397254)))

(declare-fun b!8010765 () Bool)

(declare-fun tp!2397253 () Bool)

(declare-fun tp!2397252 () Bool)

(assert (=> b!8010765 (= e!4718965 (and tp!2397253 tp!2397252))))

(assert (=> b!8010623 (= tp!2397130 e!4718965)))

(declare-fun b!8010762 () Bool)

(assert (=> b!8010762 (= e!4718965 tp_is_empty!53865)))

(assert (= (and b!8010623 ((_ is ElementMatch!21661) (regOne!43835 (regTwo!43835 r!15422)))) b!8010762))

(assert (= (and b!8010623 ((_ is Concat!30660) (regOne!43835 (regTwo!43835 r!15422)))) b!8010763))

(assert (= (and b!8010623 ((_ is Star!21661) (regOne!43835 (regTwo!43835 r!15422)))) b!8010764))

(assert (= (and b!8010623 ((_ is Union!21661) (regOne!43835 (regTwo!43835 r!15422)))) b!8010765))

(declare-fun b!8010767 () Bool)

(declare-fun e!4718966 () Bool)

(declare-fun tp!2397260 () Bool)

(declare-fun tp!2397256 () Bool)

(assert (=> b!8010767 (= e!4718966 (and tp!2397260 tp!2397256))))

(declare-fun b!8010768 () Bool)

(declare-fun tp!2397259 () Bool)

(assert (=> b!8010768 (= e!4718966 tp!2397259)))

(declare-fun b!8010769 () Bool)

(declare-fun tp!2397258 () Bool)

(declare-fun tp!2397257 () Bool)

(assert (=> b!8010769 (= e!4718966 (and tp!2397258 tp!2397257))))

(assert (=> b!8010623 (= tp!2397129 e!4718966)))

(declare-fun b!8010766 () Bool)

(assert (=> b!8010766 (= e!4718966 tp_is_empty!53865)))

(assert (= (and b!8010623 ((_ is ElementMatch!21661) (regTwo!43835 (regTwo!43835 r!15422)))) b!8010766))

(assert (= (and b!8010623 ((_ is Concat!30660) (regTwo!43835 (regTwo!43835 r!15422)))) b!8010767))

(assert (= (and b!8010623 ((_ is Star!21661) (regTwo!43835 (regTwo!43835 r!15422)))) b!8010768))

(assert (= (and b!8010623 ((_ is Union!21661) (regTwo!43835 (regTwo!43835 r!15422)))) b!8010769))

(declare-fun b!8010771 () Bool)

(declare-fun e!4718967 () Bool)

(declare-fun tp!2397265 () Bool)

(declare-fun tp!2397261 () Bool)

(assert (=> b!8010771 (= e!4718967 (and tp!2397265 tp!2397261))))

(declare-fun b!8010772 () Bool)

(declare-fun tp!2397264 () Bool)

(assert (=> b!8010772 (= e!4718967 tp!2397264)))

(declare-fun b!8010773 () Bool)

(declare-fun tp!2397263 () Bool)

(declare-fun tp!2397262 () Bool)

(assert (=> b!8010773 (= e!4718967 (and tp!2397263 tp!2397262))))

(assert (=> b!8010613 (= tp!2397116 e!4718967)))

(declare-fun b!8010770 () Bool)

(assert (=> b!8010770 (= e!4718967 tp_is_empty!53865)))

(assert (= (and b!8010613 ((_ is ElementMatch!21661) (regOne!43835 (regTwo!43834 r!15422)))) b!8010770))

(assert (= (and b!8010613 ((_ is Concat!30660) (regOne!43835 (regTwo!43834 r!15422)))) b!8010771))

(assert (= (and b!8010613 ((_ is Star!21661) (regOne!43835 (regTwo!43834 r!15422)))) b!8010772))

(assert (= (and b!8010613 ((_ is Union!21661) (regOne!43835 (regTwo!43834 r!15422)))) b!8010773))

(declare-fun b!8010775 () Bool)

(declare-fun e!4718968 () Bool)

(declare-fun tp!2397270 () Bool)

(declare-fun tp!2397266 () Bool)

(assert (=> b!8010775 (= e!4718968 (and tp!2397270 tp!2397266))))

(declare-fun b!8010776 () Bool)

(declare-fun tp!2397269 () Bool)

(assert (=> b!8010776 (= e!4718968 tp!2397269)))

(declare-fun b!8010777 () Bool)

(declare-fun tp!2397268 () Bool)

(declare-fun tp!2397267 () Bool)

(assert (=> b!8010777 (= e!4718968 (and tp!2397268 tp!2397267))))

(assert (=> b!8010613 (= tp!2397115 e!4718968)))

(declare-fun b!8010774 () Bool)

(assert (=> b!8010774 (= e!4718968 tp_is_empty!53865)))

(assert (= (and b!8010613 ((_ is ElementMatch!21661) (regTwo!43835 (regTwo!43834 r!15422)))) b!8010774))

(assert (= (and b!8010613 ((_ is Concat!30660) (regTwo!43835 (regTwo!43834 r!15422)))) b!8010775))

(assert (= (and b!8010613 ((_ is Star!21661) (regTwo!43835 (regTwo!43834 r!15422)))) b!8010776))

(assert (= (and b!8010613 ((_ is Union!21661) (regTwo!43835 (regTwo!43834 r!15422)))) b!8010777))

(declare-fun b!8010779 () Bool)

(declare-fun e!4718969 () Bool)

(declare-fun tp!2397275 () Bool)

(declare-fun tp!2397271 () Bool)

(assert (=> b!8010779 (= e!4718969 (and tp!2397275 tp!2397271))))

(declare-fun b!8010780 () Bool)

(declare-fun tp!2397274 () Bool)

(assert (=> b!8010780 (= e!4718969 tp!2397274)))

(declare-fun b!8010781 () Bool)

(declare-fun tp!2397273 () Bool)

(declare-fun tp!2397272 () Bool)

(assert (=> b!8010781 (= e!4718969 (and tp!2397273 tp!2397272))))

(assert (=> b!8010604 (= tp!2397106 e!4718969)))

(declare-fun b!8010778 () Bool)

(assert (=> b!8010778 (= e!4718969 tp_is_empty!53865)))

(assert (= (and b!8010604 ((_ is ElementMatch!21661) (reg!21990 (regOne!43834 r!15422)))) b!8010778))

(assert (= (and b!8010604 ((_ is Concat!30660) (reg!21990 (regOne!43834 r!15422)))) b!8010779))

(assert (= (and b!8010604 ((_ is Star!21661) (reg!21990 (regOne!43834 r!15422)))) b!8010780))

(assert (= (and b!8010604 ((_ is Union!21661) (reg!21990 (regOne!43834 r!15422)))) b!8010781))

(declare-fun b!8010783 () Bool)

(declare-fun e!4718970 () Bool)

(declare-fun tp!2397280 () Bool)

(declare-fun tp!2397276 () Bool)

(assert (=> b!8010783 (= e!4718970 (and tp!2397280 tp!2397276))))

(declare-fun b!8010784 () Bool)

(declare-fun tp!2397279 () Bool)

(assert (=> b!8010784 (= e!4718970 tp!2397279)))

(declare-fun b!8010785 () Bool)

(declare-fun tp!2397278 () Bool)

(declare-fun tp!2397277 () Bool)

(assert (=> b!8010785 (= e!4718970 (and tp!2397278 tp!2397277))))

(assert (=> b!8010603 (= tp!2397107 e!4718970)))

(declare-fun b!8010782 () Bool)

(assert (=> b!8010782 (= e!4718970 tp_is_empty!53865)))

(assert (= (and b!8010603 ((_ is ElementMatch!21661) (regOne!43834 (regOne!43834 r!15422)))) b!8010782))

(assert (= (and b!8010603 ((_ is Concat!30660) (regOne!43834 (regOne!43834 r!15422)))) b!8010783))

(assert (= (and b!8010603 ((_ is Star!21661) (regOne!43834 (regOne!43834 r!15422)))) b!8010784))

(assert (= (and b!8010603 ((_ is Union!21661) (regOne!43834 (regOne!43834 r!15422)))) b!8010785))

(declare-fun b!8010787 () Bool)

(declare-fun e!4718971 () Bool)

(declare-fun tp!2397285 () Bool)

(declare-fun tp!2397281 () Bool)

(assert (=> b!8010787 (= e!4718971 (and tp!2397285 tp!2397281))))

(declare-fun b!8010788 () Bool)

(declare-fun tp!2397284 () Bool)

(assert (=> b!8010788 (= e!4718971 tp!2397284)))

(declare-fun b!8010789 () Bool)

(declare-fun tp!2397283 () Bool)

(declare-fun tp!2397282 () Bool)

(assert (=> b!8010789 (= e!4718971 (and tp!2397283 tp!2397282))))

(assert (=> b!8010603 (= tp!2397103 e!4718971)))

(declare-fun b!8010786 () Bool)

(assert (=> b!8010786 (= e!4718971 tp_is_empty!53865)))

(assert (= (and b!8010603 ((_ is ElementMatch!21661) (regTwo!43834 (regOne!43834 r!15422)))) b!8010786))

(assert (= (and b!8010603 ((_ is Concat!30660) (regTwo!43834 (regOne!43834 r!15422)))) b!8010787))

(assert (= (and b!8010603 ((_ is Star!21661) (regTwo!43834 (regOne!43834 r!15422)))) b!8010788))

(assert (= (and b!8010603 ((_ is Union!21661) (regTwo!43834 (regOne!43834 r!15422)))) b!8010789))

(declare-fun b!8010791 () Bool)

(declare-fun e!4718972 () Bool)

(declare-fun tp!2397290 () Bool)

(declare-fun tp!2397286 () Bool)

(assert (=> b!8010791 (= e!4718972 (and tp!2397290 tp!2397286))))

(declare-fun b!8010792 () Bool)

(declare-fun tp!2397289 () Bool)

(assert (=> b!8010792 (= e!4718972 tp!2397289)))

(declare-fun b!8010793 () Bool)

(declare-fun tp!2397288 () Bool)

(declare-fun tp!2397287 () Bool)

(assert (=> b!8010793 (= e!4718972 (and tp!2397288 tp!2397287))))

(assert (=> b!8010612 (= tp!2397117 e!4718972)))

(declare-fun b!8010790 () Bool)

(assert (=> b!8010790 (= e!4718972 tp_is_empty!53865)))

(assert (= (and b!8010612 ((_ is ElementMatch!21661) (reg!21990 (regTwo!43834 r!15422)))) b!8010790))

(assert (= (and b!8010612 ((_ is Concat!30660) (reg!21990 (regTwo!43834 r!15422)))) b!8010791))

(assert (= (and b!8010612 ((_ is Star!21661) (reg!21990 (regTwo!43834 r!15422)))) b!8010792))

(assert (= (and b!8010612 ((_ is Union!21661) (reg!21990 (regTwo!43834 r!15422)))) b!8010793))

(check-sat (not b!8010726) (not b!8010717) (not b!8010761) (not bm!744162) (not b!8010735) (not b!8010742) (not b!8010779) (not b!8010708) (not b!8010793) (not b!8010788) (not b!8010705) tp_is_empty!53865 (not b!8010781) (not b!8010713) (not b!8010734) (not b!8010729) (not b!8010664) (not b!8010771) (not b!8010688) (not b!8010746) (not b!8010739) (not b!8010733) (not b!8010751) (not b!8010747) (not b!8010737) (not b!8010773) (not b!8010686) (not b!8010654) (not b!8010760) (not b!8010692) (not b!8010772) (not b!8010776) (not b!8010775) (not b!8010667) (not b!8010696) (not b!8010789) (not b!8010728) (not b!8010748) (not b!8010731) (not b!8010791) (not b!8010765) (not b!8010702) (not b!8010693) (not b!8010721) (not b!8010656) (not b!8010767) (not d!2388567) (not b!8010787) (not b!8010744) (not b!8010684) (not bm!744165) (not d!2388555) (not b!8010752) (not b!8010716) (not b!8010712) (not bm!744161) (not b!8010725) (not b!8010714) (not b!8010690) (not b!8010750) (not b!8010720) (not b!8010792) (not b!8010784) (not b!8010706) (not b!8010668) (not b!8010780) (not b!8010704) (not b!8010701) (not b!8010785) (not b!8010738) (not b!8010730) (not b!8010783) (not b!8010768) (not b!8010777) (not b!8010743) (not b!8010755) (not b!8010700) (not b!8010724) (not b!8010753) (not b!8010757) (not bm!744164) (not b!8010710) (not b!8010709) (not b!8010698) (not b!8010694) (not b!8010756) (not b!8010763) (not b!8010718) (not b!8010722) (not b!8010740) (not b!8010652) (not b!8010697) (not b!8010769) (not b!8010764) (not b!8010759) (not b!8010677))
(check-sat)
