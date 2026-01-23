; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752900 () Bool)

(assert start!752900)

(declare-fun b!8002500 () Bool)

(declare-fun e!4714090 () Bool)

(declare-datatypes ((C!43532 0))(
  ( (C!43533 (val!32314 Int)) )
))
(declare-datatypes ((List!74826 0))(
  ( (Nil!74702) (Cons!74702 (h!81150 C!43532) (t!390569 List!74826)) )
))
(declare-fun input!5970 () List!74826)

(declare-fun ListPrimitiveSize!485 (List!74826) Int)

(assert (=> b!8002500 (= e!4714090 (>= (ListPrimitiveSize!485 (t!390569 input!5970)) (ListPrimitiveSize!485 input!5970)))))

(declare-datatypes ((Regex!21597 0))(
  ( (ElementMatch!21597 (c!1469262 C!43532)) (Concat!30596 (regOne!43706 Regex!21597) (regTwo!43706 Regex!21597)) (EmptyExpr!21597) (Star!21597 (reg!21926 Regex!21597)) (EmptyLang!21597) (Union!21597 (regOne!43707 Regex!21597) (regTwo!43707 Regex!21597)) )
))
(declare-fun lt!2713801 () Regex!21597)

(declare-fun r!13189 () Regex!21597)

(declare-fun derivativeStep!6610 (Regex!21597 C!43532) Regex!21597)

(assert (=> b!8002500 (= lt!2713801 (derivativeStep!6610 r!13189 (h!81150 input!5970)))))

(declare-fun b!8002501 () Bool)

(declare-fun e!4714091 () Bool)

(declare-fun tp!2393931 () Bool)

(declare-fun tp!2393932 () Bool)

(assert (=> b!8002501 (= e!4714091 (and tp!2393931 tp!2393932))))

(declare-fun b!8002502 () Bool)

(declare-fun tp_is_empty!53737 () Bool)

(assert (=> b!8002502 (= e!4714091 tp_is_empty!53737)))

(declare-fun res!3164511 () Bool)

(assert (=> start!752900 (=> (not res!3164511) (not e!4714090))))

(declare-fun validRegex!11901 (Regex!21597) Bool)

(assert (=> start!752900 (= res!3164511 (validRegex!11901 r!13189))))

(assert (=> start!752900 e!4714090))

(assert (=> start!752900 e!4714091))

(declare-fun e!4714089 () Bool)

(assert (=> start!752900 e!4714089))

(declare-fun b!8002503 () Bool)

(declare-fun tp!2393934 () Bool)

(declare-fun tp!2393933 () Bool)

(assert (=> b!8002503 (= e!4714091 (and tp!2393934 tp!2393933))))

(declare-fun b!8002504 () Bool)

(declare-fun tp!2393929 () Bool)

(assert (=> b!8002504 (= e!4714091 tp!2393929)))

(declare-fun b!8002505 () Bool)

(declare-fun res!3164512 () Bool)

(assert (=> b!8002505 (=> (not res!3164512) (not e!4714090))))

(get-info :version)

(assert (=> b!8002505 (= res!3164512 ((_ is Cons!74702) input!5970))))

(declare-fun b!8002506 () Bool)

(declare-fun tp!2393930 () Bool)

(assert (=> b!8002506 (= e!4714089 (and tp_is_empty!53737 tp!2393930))))

(assert (= (and start!752900 res!3164511) b!8002505))

(assert (= (and b!8002505 res!3164512) b!8002500))

(assert (= (and start!752900 ((_ is ElementMatch!21597) r!13189)) b!8002502))

(assert (= (and start!752900 ((_ is Concat!30596) r!13189)) b!8002503))

(assert (= (and start!752900 ((_ is Star!21597) r!13189)) b!8002504))

(assert (= (and start!752900 ((_ is Union!21597) r!13189)) b!8002501))

(assert (= (and start!752900 ((_ is Cons!74702) input!5970)) b!8002506))

(declare-fun m!8369154 () Bool)

(assert (=> b!8002500 m!8369154))

(declare-fun m!8369156 () Bool)

(assert (=> b!8002500 m!8369156))

(declare-fun m!8369158 () Bool)

(assert (=> b!8002500 m!8369158))

(declare-fun m!8369160 () Bool)

(assert (=> start!752900 m!8369160))

(check-sat (not b!8002500) (not b!8002504) (not b!8002503) (not b!8002506) tp_is_empty!53737 (not start!752900) (not b!8002501))
(check-sat)
(get-model)

(declare-fun d!2386925 () Bool)

(declare-fun lt!2713804 () Int)

(assert (=> d!2386925 (>= lt!2713804 0)))

(declare-fun e!4714094 () Int)

(assert (=> d!2386925 (= lt!2713804 e!4714094)))

(declare-fun c!1469265 () Bool)

(assert (=> d!2386925 (= c!1469265 ((_ is Nil!74702) (t!390569 input!5970)))))

(assert (=> d!2386925 (= (ListPrimitiveSize!485 (t!390569 input!5970)) lt!2713804)))

(declare-fun b!8002511 () Bool)

(assert (=> b!8002511 (= e!4714094 0)))

(declare-fun b!8002512 () Bool)

(assert (=> b!8002512 (= e!4714094 (+ 1 (ListPrimitiveSize!485 (t!390569 (t!390569 input!5970)))))))

(assert (= (and d!2386925 c!1469265) b!8002511))

(assert (= (and d!2386925 (not c!1469265)) b!8002512))

(declare-fun m!8369162 () Bool)

(assert (=> b!8002512 m!8369162))

(assert (=> b!8002500 d!2386925))

(declare-fun d!2386927 () Bool)

(declare-fun lt!2713805 () Int)

(assert (=> d!2386927 (>= lt!2713805 0)))

(declare-fun e!4714095 () Int)

(assert (=> d!2386927 (= lt!2713805 e!4714095)))

(declare-fun c!1469266 () Bool)

(assert (=> d!2386927 (= c!1469266 ((_ is Nil!74702) input!5970))))

(assert (=> d!2386927 (= (ListPrimitiveSize!485 input!5970) lt!2713805)))

(declare-fun b!8002513 () Bool)

(assert (=> b!8002513 (= e!4714095 0)))

(declare-fun b!8002514 () Bool)

(assert (=> b!8002514 (= e!4714095 (+ 1 (ListPrimitiveSize!485 (t!390569 input!5970))))))

(assert (= (and d!2386927 c!1469266) b!8002513))

(assert (= (and d!2386927 (not c!1469266)) b!8002514))

(assert (=> b!8002514 m!8369154))

(assert (=> b!8002500 d!2386927))

(declare-fun b!8002562 () Bool)

(declare-fun e!4714127 () Regex!21597)

(declare-fun call!743550 () Regex!21597)

(assert (=> b!8002562 (= e!4714127 (Union!21597 (Concat!30596 call!743550 (regTwo!43706 r!13189)) EmptyLang!21597))))

(declare-fun c!1469287 () Bool)

(declare-fun bm!743545 () Bool)

(declare-fun call!743551 () Regex!21597)

(assert (=> bm!743545 (= call!743551 (derivativeStep!6610 (ite c!1469287 (regTwo!43707 r!13189) (regTwo!43706 r!13189)) (h!81150 input!5970)))))

(declare-fun b!8002564 () Bool)

(declare-fun e!4714128 () Regex!21597)

(assert (=> b!8002564 (= e!4714128 EmptyLang!21597)))

(declare-fun b!8002565 () Bool)

(declare-fun e!4714131 () Regex!21597)

(declare-fun e!4714130 () Regex!21597)

(assert (=> b!8002565 (= e!4714131 e!4714130)))

(declare-fun c!1469286 () Bool)

(assert (=> b!8002565 (= c!1469286 ((_ is Star!21597) r!13189))))

(declare-fun bm!743546 () Bool)

(declare-fun call!743552 () Regex!21597)

(assert (=> bm!743546 (= call!743550 call!743552)))

(declare-fun b!8002566 () Bool)

(assert (=> b!8002566 (= e!4714130 (Concat!30596 call!743552 r!13189))))

(declare-fun bm!743547 () Bool)

(declare-fun call!743553 () Regex!21597)

(assert (=> bm!743547 (= call!743552 call!743553)))

(declare-fun b!8002567 () Bool)

(assert (=> b!8002567 (= e!4714131 (Union!21597 call!743553 call!743551))))

(declare-fun bm!743548 () Bool)

(assert (=> bm!743548 (= call!743553 (derivativeStep!6610 (ite c!1469287 (regOne!43707 r!13189) (ite c!1469286 (reg!21926 r!13189) (regOne!43706 r!13189))) (h!81150 input!5970)))))

(declare-fun b!8002568 () Bool)

(declare-fun e!4714129 () Regex!21597)

(assert (=> b!8002568 (= e!4714128 e!4714129)))

(declare-fun c!1469285 () Bool)

(assert (=> b!8002568 (= c!1469285 ((_ is ElementMatch!21597) r!13189))))

(declare-fun b!8002569 () Bool)

(assert (=> b!8002569 (= e!4714127 (Union!21597 (Concat!30596 call!743550 (regTwo!43706 r!13189)) call!743551))))

(declare-fun d!2386929 () Bool)

(declare-fun lt!2713808 () Regex!21597)

(assert (=> d!2386929 (validRegex!11901 lt!2713808)))

(assert (=> d!2386929 (= lt!2713808 e!4714128)))

(declare-fun c!1469284 () Bool)

(assert (=> d!2386929 (= c!1469284 (or ((_ is EmptyExpr!21597) r!13189) ((_ is EmptyLang!21597) r!13189)))))

(assert (=> d!2386929 (validRegex!11901 r!13189)))

(assert (=> d!2386929 (= (derivativeStep!6610 r!13189 (h!81150 input!5970)) lt!2713808)))

(declare-fun b!8002563 () Bool)

(assert (=> b!8002563 (= c!1469287 ((_ is Union!21597) r!13189))))

(assert (=> b!8002563 (= e!4714129 e!4714131)))

(declare-fun b!8002570 () Bool)

(assert (=> b!8002570 (= e!4714129 (ite (= (h!81150 input!5970) (c!1469262 r!13189)) EmptyExpr!21597 EmptyLang!21597))))

(declare-fun b!8002571 () Bool)

(declare-fun c!1469283 () Bool)

(declare-fun nullable!9677 (Regex!21597) Bool)

(assert (=> b!8002571 (= c!1469283 (nullable!9677 (regOne!43706 r!13189)))))

(assert (=> b!8002571 (= e!4714130 e!4714127)))

(assert (= (and d!2386929 c!1469284) b!8002564))

(assert (= (and d!2386929 (not c!1469284)) b!8002568))

(assert (= (and b!8002568 c!1469285) b!8002570))

(assert (= (and b!8002568 (not c!1469285)) b!8002563))

(assert (= (and b!8002563 c!1469287) b!8002567))

(assert (= (and b!8002563 (not c!1469287)) b!8002565))

(assert (= (and b!8002565 c!1469286) b!8002566))

(assert (= (and b!8002565 (not c!1469286)) b!8002571))

(assert (= (and b!8002571 c!1469283) b!8002569))

(assert (= (and b!8002571 (not c!1469283)) b!8002562))

(assert (= (or b!8002569 b!8002562) bm!743546))

(assert (= (or b!8002566 bm!743546) bm!743547))

(assert (= (or b!8002567 b!8002569) bm!743545))

(assert (= (or b!8002567 bm!743547) bm!743548))

(declare-fun m!8369164 () Bool)

(assert (=> bm!743545 m!8369164))

(declare-fun m!8369166 () Bool)

(assert (=> bm!743548 m!8369166))

(declare-fun m!8369168 () Bool)

(assert (=> d!2386929 m!8369168))

(assert (=> d!2386929 m!8369160))

(declare-fun m!8369170 () Bool)

(assert (=> b!8002571 m!8369170))

(assert (=> b!8002500 d!2386929))

(declare-fun b!8002598 () Bool)

(declare-fun e!4714153 () Bool)

(declare-fun call!743561 () Bool)

(assert (=> b!8002598 (= e!4714153 call!743561)))

(declare-fun b!8002599 () Bool)

(declare-fun e!4714151 () Bool)

(declare-fun call!743562 () Bool)

(assert (=> b!8002599 (= e!4714151 call!743562)))

(declare-fun b!8002601 () Bool)

(declare-fun e!4714156 () Bool)

(assert (=> b!8002601 (= e!4714156 call!743561)))

(declare-fun bm!743555 () Bool)

(assert (=> bm!743555 (= call!743561 call!743562)))

(declare-fun b!8002602 () Bool)

(declare-fun e!4714152 () Bool)

(assert (=> b!8002602 (= e!4714152 e!4714151)))

(declare-fun res!3164542 () Bool)

(assert (=> b!8002602 (= res!3164542 (not (nullable!9677 (reg!21926 r!13189))))))

(assert (=> b!8002602 (=> (not res!3164542) (not e!4714151))))

(declare-fun b!8002603 () Bool)

(declare-fun res!3164540 () Bool)

(assert (=> b!8002603 (=> (not res!3164540) (not e!4714156))))

(declare-fun call!743560 () Bool)

(assert (=> b!8002603 (= res!3164540 call!743560)))

(declare-fun e!4714154 () Bool)

(assert (=> b!8002603 (= e!4714154 e!4714156)))

(declare-fun b!8002604 () Bool)

(assert (=> b!8002604 (= e!4714152 e!4714154)))

(declare-fun c!1469297 () Bool)

(assert (=> b!8002604 (= c!1469297 ((_ is Union!21597) r!13189))))

(declare-fun d!2386931 () Bool)

(declare-fun res!3164539 () Bool)

(declare-fun e!4714150 () Bool)

(assert (=> d!2386931 (=> res!3164539 e!4714150)))

(assert (=> d!2386931 (= res!3164539 ((_ is ElementMatch!21597) r!13189))))

(assert (=> d!2386931 (= (validRegex!11901 r!13189) e!4714150)))

(declare-fun b!8002600 () Bool)

(declare-fun res!3164538 () Bool)

(declare-fun e!4714155 () Bool)

(assert (=> b!8002600 (=> res!3164538 e!4714155)))

(assert (=> b!8002600 (= res!3164538 (not ((_ is Concat!30596) r!13189)))))

(assert (=> b!8002600 (= e!4714154 e!4714155)))

(declare-fun b!8002605 () Bool)

(assert (=> b!8002605 (= e!4714150 e!4714152)))

(declare-fun c!1469296 () Bool)

(assert (=> b!8002605 (= c!1469296 ((_ is Star!21597) r!13189))))

(declare-fun b!8002606 () Bool)

(assert (=> b!8002606 (= e!4714155 e!4714153)))

(declare-fun res!3164541 () Bool)

(assert (=> b!8002606 (=> (not res!3164541) (not e!4714153))))

(assert (=> b!8002606 (= res!3164541 call!743560)))

(declare-fun bm!743556 () Bool)

(assert (=> bm!743556 (= call!743560 (validRegex!11901 (ite c!1469297 (regOne!43707 r!13189) (regOne!43706 r!13189))))))

(declare-fun bm!743557 () Bool)

(assert (=> bm!743557 (= call!743562 (validRegex!11901 (ite c!1469296 (reg!21926 r!13189) (ite c!1469297 (regTwo!43707 r!13189) (regTwo!43706 r!13189)))))))

(assert (= (and d!2386931 (not res!3164539)) b!8002605))

(assert (= (and b!8002605 c!1469296) b!8002602))

(assert (= (and b!8002605 (not c!1469296)) b!8002604))

(assert (= (and b!8002602 res!3164542) b!8002599))

(assert (= (and b!8002604 c!1469297) b!8002603))

(assert (= (and b!8002604 (not c!1469297)) b!8002600))

(assert (= (and b!8002603 res!3164540) b!8002601))

(assert (= (and b!8002600 (not res!3164538)) b!8002606))

(assert (= (and b!8002606 res!3164541) b!8002598))

(assert (= (or b!8002603 b!8002606) bm!743556))

(assert (= (or b!8002601 b!8002598) bm!743555))

(assert (= (or b!8002599 bm!743555) bm!743557))

(declare-fun m!8369180 () Bool)

(assert (=> b!8002602 m!8369180))

(declare-fun m!8369182 () Bool)

(assert (=> bm!743556 m!8369182))

(declare-fun m!8369184 () Bool)

(assert (=> bm!743557 m!8369184))

(assert (=> start!752900 d!2386931))

(declare-fun e!4714159 () Bool)

(assert (=> b!8002504 (= tp!2393929 e!4714159)))

(declare-fun b!8002617 () Bool)

(assert (=> b!8002617 (= e!4714159 tp_is_empty!53737)))

(declare-fun b!8002620 () Bool)

(declare-fun tp!2393949 () Bool)

(declare-fun tp!2393947 () Bool)

(assert (=> b!8002620 (= e!4714159 (and tp!2393949 tp!2393947))))

(declare-fun b!8002618 () Bool)

(declare-fun tp!2393948 () Bool)

(declare-fun tp!2393945 () Bool)

(assert (=> b!8002618 (= e!4714159 (and tp!2393948 tp!2393945))))

(declare-fun b!8002619 () Bool)

(declare-fun tp!2393946 () Bool)

(assert (=> b!8002619 (= e!4714159 tp!2393946)))

(assert (= (and b!8002504 ((_ is ElementMatch!21597) (reg!21926 r!13189))) b!8002617))

(assert (= (and b!8002504 ((_ is Concat!30596) (reg!21926 r!13189))) b!8002618))

(assert (= (and b!8002504 ((_ is Star!21597) (reg!21926 r!13189))) b!8002619))

(assert (= (and b!8002504 ((_ is Union!21597) (reg!21926 r!13189))) b!8002620))

(declare-fun e!4714160 () Bool)

(assert (=> b!8002503 (= tp!2393934 e!4714160)))

(declare-fun b!8002621 () Bool)

(assert (=> b!8002621 (= e!4714160 tp_is_empty!53737)))

(declare-fun b!8002624 () Bool)

(declare-fun tp!2393954 () Bool)

(declare-fun tp!2393952 () Bool)

(assert (=> b!8002624 (= e!4714160 (and tp!2393954 tp!2393952))))

(declare-fun b!8002622 () Bool)

(declare-fun tp!2393953 () Bool)

(declare-fun tp!2393950 () Bool)

(assert (=> b!8002622 (= e!4714160 (and tp!2393953 tp!2393950))))

(declare-fun b!8002623 () Bool)

(declare-fun tp!2393951 () Bool)

(assert (=> b!8002623 (= e!4714160 tp!2393951)))

(assert (= (and b!8002503 ((_ is ElementMatch!21597) (regOne!43706 r!13189))) b!8002621))

(assert (= (and b!8002503 ((_ is Concat!30596) (regOne!43706 r!13189))) b!8002622))

(assert (= (and b!8002503 ((_ is Star!21597) (regOne!43706 r!13189))) b!8002623))

(assert (= (and b!8002503 ((_ is Union!21597) (regOne!43706 r!13189))) b!8002624))

(declare-fun e!4714161 () Bool)

(assert (=> b!8002503 (= tp!2393933 e!4714161)))

(declare-fun b!8002625 () Bool)

(assert (=> b!8002625 (= e!4714161 tp_is_empty!53737)))

(declare-fun b!8002628 () Bool)

(declare-fun tp!2393959 () Bool)

(declare-fun tp!2393957 () Bool)

(assert (=> b!8002628 (= e!4714161 (and tp!2393959 tp!2393957))))

(declare-fun b!8002626 () Bool)

(declare-fun tp!2393958 () Bool)

(declare-fun tp!2393955 () Bool)

(assert (=> b!8002626 (= e!4714161 (and tp!2393958 tp!2393955))))

(declare-fun b!8002627 () Bool)

(declare-fun tp!2393956 () Bool)

(assert (=> b!8002627 (= e!4714161 tp!2393956)))

(assert (= (and b!8002503 ((_ is ElementMatch!21597) (regTwo!43706 r!13189))) b!8002625))

(assert (= (and b!8002503 ((_ is Concat!30596) (regTwo!43706 r!13189))) b!8002626))

(assert (= (and b!8002503 ((_ is Star!21597) (regTwo!43706 r!13189))) b!8002627))

(assert (= (and b!8002503 ((_ is Union!21597) (regTwo!43706 r!13189))) b!8002628))

(declare-fun e!4714162 () Bool)

(assert (=> b!8002501 (= tp!2393931 e!4714162)))

(declare-fun b!8002629 () Bool)

(assert (=> b!8002629 (= e!4714162 tp_is_empty!53737)))

(declare-fun b!8002632 () Bool)

(declare-fun tp!2393964 () Bool)

(declare-fun tp!2393962 () Bool)

(assert (=> b!8002632 (= e!4714162 (and tp!2393964 tp!2393962))))

(declare-fun b!8002630 () Bool)

(declare-fun tp!2393963 () Bool)

(declare-fun tp!2393960 () Bool)

(assert (=> b!8002630 (= e!4714162 (and tp!2393963 tp!2393960))))

(declare-fun b!8002631 () Bool)

(declare-fun tp!2393961 () Bool)

(assert (=> b!8002631 (= e!4714162 tp!2393961)))

(assert (= (and b!8002501 ((_ is ElementMatch!21597) (regOne!43707 r!13189))) b!8002629))

(assert (= (and b!8002501 ((_ is Concat!30596) (regOne!43707 r!13189))) b!8002630))

(assert (= (and b!8002501 ((_ is Star!21597) (regOne!43707 r!13189))) b!8002631))

(assert (= (and b!8002501 ((_ is Union!21597) (regOne!43707 r!13189))) b!8002632))

(declare-fun e!4714163 () Bool)

(assert (=> b!8002501 (= tp!2393932 e!4714163)))

(declare-fun b!8002633 () Bool)

(assert (=> b!8002633 (= e!4714163 tp_is_empty!53737)))

(declare-fun b!8002636 () Bool)

(declare-fun tp!2393969 () Bool)

(declare-fun tp!2393967 () Bool)

(assert (=> b!8002636 (= e!4714163 (and tp!2393969 tp!2393967))))

(declare-fun b!8002634 () Bool)

(declare-fun tp!2393968 () Bool)

(declare-fun tp!2393965 () Bool)

(assert (=> b!8002634 (= e!4714163 (and tp!2393968 tp!2393965))))

(declare-fun b!8002635 () Bool)

(declare-fun tp!2393966 () Bool)

(assert (=> b!8002635 (= e!4714163 tp!2393966)))

(assert (= (and b!8002501 ((_ is ElementMatch!21597) (regTwo!43707 r!13189))) b!8002633))

(assert (= (and b!8002501 ((_ is Concat!30596) (regTwo!43707 r!13189))) b!8002634))

(assert (= (and b!8002501 ((_ is Star!21597) (regTwo!43707 r!13189))) b!8002635))

(assert (= (and b!8002501 ((_ is Union!21597) (regTwo!43707 r!13189))) b!8002636))

(declare-fun b!8002641 () Bool)

(declare-fun e!4714166 () Bool)

(declare-fun tp!2393972 () Bool)

(assert (=> b!8002641 (= e!4714166 (and tp_is_empty!53737 tp!2393972))))

(assert (=> b!8002506 (= tp!2393930 e!4714166)))

(assert (= (and b!8002506 ((_ is Cons!74702) (t!390569 input!5970))) b!8002641))

(check-sat (not b!8002630) (not b!8002631) (not b!8002634) (not bm!743548) (not b!8002618) (not d!2386929) (not b!8002636) (not b!8002622) (not b!8002620) (not b!8002619) (not b!8002512) (not bm!743557) (not b!8002624) (not b!8002571) (not b!8002602) (not b!8002628) (not b!8002641) (not b!8002627) (not b!8002623) (not b!8002514) tp_is_empty!53737 (not b!8002635) (not bm!743545) (not bm!743556) (not b!8002626) (not b!8002632))
(check-sat)
