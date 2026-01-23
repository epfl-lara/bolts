; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235454 () Bool)

(assert start!235454)

(declare-fun b!2399947 () Bool)

(declare-fun e!1529061 () Bool)

(declare-fun tp!763821 () Bool)

(declare-fun tp!763816 () Bool)

(assert (=> b!2399947 (= e!1529061 (and tp!763821 tp!763816))))

(declare-fun b!2399948 () Bool)

(declare-fun e!1529058 () Bool)

(declare-datatypes ((C!14222 0))(
  ( (C!14223 (val!8353 Int)) )
))
(declare-datatypes ((Regex!7032 0))(
  ( (ElementMatch!7032 (c!382088 C!14222)) (Concat!11668 (regOne!14576 Regex!7032) (regTwo!14576 Regex!7032)) (EmptyExpr!7032) (Star!7032 (reg!7361 Regex!7032)) (EmptyLang!7032) (Union!7032 (regOne!14577 Regex!7032) (regTwo!14577 Regex!7032)) )
))
(declare-datatypes ((List!28302 0))(
  ( (Nil!28204) (Cons!28204 (h!33605 Regex!7032) (t!208279 List!28302)) )
))
(declare-fun l!9164 () List!28302)

(declare-fun validRegex!2757 (Regex!7032) Bool)

(assert (=> b!2399948 (= e!1529058 (validRegex!2757 (h!33605 l!9164)))))

(declare-fun lt!872481 () Regex!7032)

(declare-fun generalisedConcat!133 (List!28302) Regex!7032)

(assert (=> b!2399948 (= lt!872481 (generalisedConcat!133 (t!208279 l!9164)))))

(declare-fun res!1019698 () Bool)

(declare-fun e!1529059 () Bool)

(assert (=> start!235454 (=> (not res!1019698) (not e!1529059))))

(declare-fun lambda!90188 () Int)

(declare-fun forall!5666 (List!28302 Int) Bool)

(assert (=> start!235454 (= res!1019698 (forall!5666 l!9164 lambda!90188))))

(assert (=> start!235454 e!1529059))

(assert (=> start!235454 e!1529061))

(declare-fun e!1529057 () Bool)

(assert (=> start!235454 e!1529057))

(declare-fun e!1529060 () Bool)

(assert (=> start!235454 e!1529060))

(declare-fun b!2399949 () Bool)

(declare-fun tp!763819 () Bool)

(assert (=> b!2399949 (= e!1529057 tp!763819)))

(declare-fun b!2399950 () Bool)

(declare-fun tp_is_empty!11477 () Bool)

(declare-fun tp!763817 () Bool)

(assert (=> b!2399950 (= e!1529060 (and tp_is_empty!11477 tp!763817))))

(declare-fun b!2399951 () Bool)

(declare-fun tp!763823 () Bool)

(declare-fun tp!763820 () Bool)

(assert (=> b!2399951 (= e!1529057 (and tp!763823 tp!763820))))

(declare-fun b!2399952 () Bool)

(declare-fun tp!763822 () Bool)

(declare-fun tp!763818 () Bool)

(assert (=> b!2399952 (= e!1529057 (and tp!763822 tp!763818))))

(declare-fun b!2399953 () Bool)

(assert (=> b!2399953 (= e!1529057 tp_is_empty!11477)))

(declare-fun b!2399954 () Bool)

(assert (=> b!2399954 (= e!1529059 (not e!1529058))))

(declare-fun res!1019697 () Bool)

(assert (=> b!2399954 (=> res!1019697 e!1529058)))

(declare-fun r!13927 () Regex!7032)

(assert (=> b!2399954 (= res!1019697 (or (is-Concat!11668 r!13927) (not (is-EmptyExpr!7032 r!13927)) (not (is-Cons!28204 l!9164))))))

(declare-datatypes ((List!28303 0))(
  ( (Nil!28205) (Cons!28205 (h!33606 C!14222) (t!208280 List!28303)) )
))
(declare-fun s!9460 () List!28303)

(declare-fun matchR!3149 (Regex!7032 List!28303) Bool)

(declare-fun matchRSpec!881 (Regex!7032 List!28303) Bool)

(assert (=> b!2399954 (= (matchR!3149 r!13927 s!9460) (matchRSpec!881 r!13927 s!9460))))

(declare-datatypes ((Unit!41335 0))(
  ( (Unit!41336) )
))
(declare-fun lt!872482 () Unit!41335)

(declare-fun mainMatchTheorem!881 (Regex!7032 List!28303) Unit!41335)

(assert (=> b!2399954 (= lt!872482 (mainMatchTheorem!881 r!13927 s!9460))))

(declare-fun b!2399955 () Bool)

(declare-fun res!1019699 () Bool)

(assert (=> b!2399955 (=> (not res!1019699) (not e!1529059))))

(assert (=> b!2399955 (= res!1019699 (= r!13927 (generalisedConcat!133 l!9164)))))

(assert (= (and start!235454 res!1019698) b!2399955))

(assert (= (and b!2399955 res!1019699) b!2399954))

(assert (= (and b!2399954 (not res!1019697)) b!2399948))

(assert (= (and start!235454 (is-Cons!28204 l!9164)) b!2399947))

(assert (= (and start!235454 (is-ElementMatch!7032 r!13927)) b!2399953))

(assert (= (and start!235454 (is-Concat!11668 r!13927)) b!2399951))

(assert (= (and start!235454 (is-Star!7032 r!13927)) b!2399949))

(assert (= (and start!235454 (is-Union!7032 r!13927)) b!2399952))

(assert (= (and start!235454 (is-Cons!28205 s!9460)) b!2399950))

(declare-fun m!2797539 () Bool)

(assert (=> b!2399948 m!2797539))

(declare-fun m!2797541 () Bool)

(assert (=> b!2399948 m!2797541))

(declare-fun m!2797543 () Bool)

(assert (=> start!235454 m!2797543))

(declare-fun m!2797545 () Bool)

(assert (=> b!2399954 m!2797545))

(declare-fun m!2797547 () Bool)

(assert (=> b!2399954 m!2797547))

(declare-fun m!2797549 () Bool)

(assert (=> b!2399954 m!2797549))

(declare-fun m!2797551 () Bool)

(assert (=> b!2399955 m!2797551))

(push 1)

(assert (not b!2399955))

(assert (not b!2399949))

(assert tp_is_empty!11477)

(assert (not b!2399954))

(assert (not b!2399948))

(assert (not b!2399950))

(assert (not b!2399951))

(assert (not b!2399952))

(assert (not start!235454))

(assert (not b!2399947))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!146590 () Bool)

(declare-fun call!146595 () Bool)

(declare-fun c!382095 () Bool)

(assert (=> bm!146590 (= call!146595 (validRegex!2757 (ite c!382095 (regTwo!14577 (h!33605 l!9164)) (regOne!14576 (h!33605 l!9164)))))))

(declare-fun b!2400001 () Bool)

(declare-fun e!1529092 () Bool)

(declare-fun call!146596 () Bool)

(assert (=> b!2400001 (= e!1529092 call!146596)))

(declare-fun bm!146591 () Bool)

(declare-fun call!146597 () Bool)

(assert (=> bm!146591 (= call!146596 call!146597)))

(declare-fun b!2400002 () Bool)

(declare-fun e!1529097 () Bool)

(declare-fun e!1529093 () Bool)

(assert (=> b!2400002 (= e!1529097 e!1529093)))

(declare-fun c!382094 () Bool)

(assert (=> b!2400002 (= c!382094 (is-Star!7032 (h!33605 l!9164)))))

(declare-fun b!2400003 () Bool)

(declare-fun e!1529091 () Bool)

(assert (=> b!2400003 (= e!1529093 e!1529091)))

(declare-fun res!1019722 () Bool)

(declare-fun nullable!2081 (Regex!7032) Bool)

(assert (=> b!2400003 (= res!1019722 (not (nullable!2081 (reg!7361 (h!33605 l!9164)))))))

(assert (=> b!2400003 (=> (not res!1019722) (not e!1529091))))

(declare-fun b!2400004 () Bool)

(declare-fun e!1529096 () Bool)

(assert (=> b!2400004 (= e!1529096 call!146595)))

(declare-fun b!2400005 () Bool)

(declare-fun res!1019719 () Bool)

(declare-fun e!1529095 () Bool)

(assert (=> b!2400005 (=> res!1019719 e!1529095)))

(assert (=> b!2400005 (= res!1019719 (not (is-Concat!11668 (h!33605 l!9164))))))

(declare-fun e!1529094 () Bool)

(assert (=> b!2400005 (= e!1529094 e!1529095)))

(declare-fun b!2400006 () Bool)

(declare-fun res!1019720 () Bool)

(assert (=> b!2400006 (=> (not res!1019720) (not e!1529096))))

(assert (=> b!2400006 (= res!1019720 call!146596)))

(assert (=> b!2400006 (= e!1529094 e!1529096)))

(declare-fun d!699585 () Bool)

(declare-fun res!1019721 () Bool)

(assert (=> d!699585 (=> res!1019721 e!1529097)))

(assert (=> d!699585 (= res!1019721 (is-ElementMatch!7032 (h!33605 l!9164)))))

(assert (=> d!699585 (= (validRegex!2757 (h!33605 l!9164)) e!1529097)))

(declare-fun b!2400007 () Bool)

(assert (=> b!2400007 (= e!1529091 call!146597)))

(declare-fun b!2400008 () Bool)

(assert (=> b!2400008 (= e!1529095 e!1529092)))

(declare-fun res!1019723 () Bool)

(assert (=> b!2400008 (=> (not res!1019723) (not e!1529092))))

(assert (=> b!2400008 (= res!1019723 call!146595)))

(declare-fun bm!146592 () Bool)

(assert (=> bm!146592 (= call!146597 (validRegex!2757 (ite c!382094 (reg!7361 (h!33605 l!9164)) (ite c!382095 (regOne!14577 (h!33605 l!9164)) (regTwo!14576 (h!33605 l!9164))))))))

(declare-fun b!2400009 () Bool)

(assert (=> b!2400009 (= e!1529093 e!1529094)))

(assert (=> b!2400009 (= c!382095 (is-Union!7032 (h!33605 l!9164)))))

(assert (= (and d!699585 (not res!1019721)) b!2400002))

(assert (= (and b!2400002 c!382094) b!2400003))

(assert (= (and b!2400002 (not c!382094)) b!2400009))

(assert (= (and b!2400003 res!1019722) b!2400007))

(assert (= (and b!2400009 c!382095) b!2400006))

(assert (= (and b!2400009 (not c!382095)) b!2400005))

(assert (= (and b!2400006 res!1019720) b!2400004))

(assert (= (and b!2400005 (not res!1019719)) b!2400008))

(assert (= (and b!2400008 res!1019723) b!2400001))

(assert (= (or b!2400006 b!2400001) bm!146591))

(assert (= (or b!2400004 b!2400008) bm!146590))

(assert (= (or b!2400007 bm!146591) bm!146592))

(declare-fun m!2797567 () Bool)

(assert (=> bm!146590 m!2797567))

(declare-fun m!2797569 () Bool)

(assert (=> b!2400003 m!2797569))

(declare-fun m!2797571 () Bool)

(assert (=> bm!146592 m!2797571))

(assert (=> b!2399948 d!699585))

(declare-fun bs!463123 () Bool)

(declare-fun d!699589 () Bool)

(assert (= bs!463123 (and d!699589 start!235454)))

(declare-fun lambda!90194 () Int)

(assert (=> bs!463123 (= lambda!90194 lambda!90188)))

(declare-fun b!2400058 () Bool)

(declare-fun e!1529125 () Bool)

(declare-fun isEmpty!16200 (List!28302) Bool)

(assert (=> b!2400058 (= e!1529125 (isEmpty!16200 (t!208279 (t!208279 l!9164))))))

(declare-fun b!2400059 () Bool)

(declare-fun e!1529124 () Regex!7032)

(declare-fun e!1529128 () Regex!7032)

(assert (=> b!2400059 (= e!1529124 e!1529128)))

(declare-fun c!382111 () Bool)

(assert (=> b!2400059 (= c!382111 (is-Cons!28204 (t!208279 l!9164)))))

(declare-fun b!2400060 () Bool)

(assert (=> b!2400060 (= e!1529128 EmptyExpr!7032)))

(declare-fun b!2400061 () Bool)

(declare-fun e!1529129 () Bool)

(declare-fun lt!872493 () Regex!7032)

(declare-fun head!5295 (List!28302) Regex!7032)

(assert (=> b!2400061 (= e!1529129 (= lt!872493 (head!5295 (t!208279 l!9164))))))

(declare-fun b!2400062 () Bool)

(declare-fun e!1529127 () Bool)

(declare-fun e!1529126 () Bool)

(assert (=> b!2400062 (= e!1529127 e!1529126)))

(declare-fun c!382110 () Bool)

(assert (=> b!2400062 (= c!382110 (isEmpty!16200 (t!208279 l!9164)))))

(declare-fun b!2400063 () Bool)

(assert (=> b!2400063 (= e!1529124 (h!33605 (t!208279 l!9164)))))

(declare-fun b!2400064 () Bool)

(assert (=> b!2400064 (= e!1529128 (Concat!11668 (h!33605 (t!208279 l!9164)) (generalisedConcat!133 (t!208279 (t!208279 l!9164)))))))

(declare-fun b!2400065 () Bool)

(declare-fun isConcat!101 (Regex!7032) Bool)

(assert (=> b!2400065 (= e!1529129 (isConcat!101 lt!872493))))

(assert (=> d!699589 e!1529127))

(declare-fun res!1019744 () Bool)

(assert (=> d!699589 (=> (not res!1019744) (not e!1529127))))

(assert (=> d!699589 (= res!1019744 (validRegex!2757 lt!872493))))

(assert (=> d!699589 (= lt!872493 e!1529124)))

(declare-fun c!382112 () Bool)

(assert (=> d!699589 (= c!382112 e!1529125)))

(declare-fun res!1019745 () Bool)

(assert (=> d!699589 (=> (not res!1019745) (not e!1529125))))

(assert (=> d!699589 (= res!1019745 (is-Cons!28204 (t!208279 l!9164)))))

(assert (=> d!699589 (forall!5666 (t!208279 l!9164) lambda!90194)))

(assert (=> d!699589 (= (generalisedConcat!133 (t!208279 l!9164)) lt!872493)))

(declare-fun b!2400066 () Bool)

(declare-fun isEmptyExpr!101 (Regex!7032) Bool)

(assert (=> b!2400066 (= e!1529126 (isEmptyExpr!101 lt!872493))))

(declare-fun b!2400067 () Bool)

(assert (=> b!2400067 (= e!1529126 e!1529129)))

(declare-fun c!382113 () Bool)

(declare-fun tail!3565 (List!28302) List!28302)

(assert (=> b!2400067 (= c!382113 (isEmpty!16200 (tail!3565 (t!208279 l!9164))))))

(assert (= (and d!699589 res!1019745) b!2400058))

(assert (= (and d!699589 c!382112) b!2400063))

(assert (= (and d!699589 (not c!382112)) b!2400059))

(assert (= (and b!2400059 c!382111) b!2400064))

(assert (= (and b!2400059 (not c!382111)) b!2400060))

(assert (= (and d!699589 res!1019744) b!2400062))

(assert (= (and b!2400062 c!382110) b!2400066))

(assert (= (and b!2400062 (not c!382110)) b!2400067))

(assert (= (and b!2400067 c!382113) b!2400061))

(assert (= (and b!2400067 (not c!382113)) b!2400065))

(declare-fun m!2797573 () Bool)

(assert (=> b!2400064 m!2797573))

(declare-fun m!2797575 () Bool)

(assert (=> b!2400066 m!2797575))

(declare-fun m!2797577 () Bool)

(assert (=> b!2400062 m!2797577))

(declare-fun m!2797579 () Bool)

(assert (=> b!2400065 m!2797579))

(declare-fun m!2797581 () Bool)

(assert (=> b!2400067 m!2797581))

(assert (=> b!2400067 m!2797581))

(declare-fun m!2797583 () Bool)

(assert (=> b!2400067 m!2797583))

(declare-fun m!2797585 () Bool)

(assert (=> d!699589 m!2797585))

(declare-fun m!2797587 () Bool)

(assert (=> d!699589 m!2797587))

(declare-fun m!2797589 () Bool)

(assert (=> b!2400058 m!2797589))

(declare-fun m!2797591 () Bool)

(assert (=> b!2400061 m!2797591))

(assert (=> b!2399948 d!699589))

(declare-fun b!2400110 () Bool)

(declare-fun res!1019773 () Bool)

(declare-fun e!1529157 () Bool)

(assert (=> b!2400110 (=> res!1019773 e!1529157)))

(assert (=> b!2400110 (= res!1019773 (not (is-ElementMatch!7032 r!13927)))))

(declare-fun e!1529156 () Bool)

(assert (=> b!2400110 (= e!1529156 e!1529157)))

(declare-fun bm!146598 () Bool)

(declare-fun call!146603 () Bool)

(declare-fun isEmpty!16201 (List!28303) Bool)

(assert (=> bm!146598 (= call!146603 (isEmpty!16201 s!9460))))

(declare-fun b!2400111 () Bool)

(declare-fun e!1529151 () Bool)

(declare-fun head!5296 (List!28303) C!14222)

(assert (=> b!2400111 (= e!1529151 (not (= (head!5296 s!9460) (c!382088 r!13927))))))

(declare-fun b!2400113 () Bool)

(declare-fun e!1529155 () Bool)

(assert (=> b!2400113 (= e!1529155 (= (head!5296 s!9460) (c!382088 r!13927)))))

(declare-fun b!2400114 () Bool)

(declare-fun e!1529153 () Bool)

(assert (=> b!2400114 (= e!1529157 e!1529153)))

(declare-fun res!1019772 () Bool)

(assert (=> b!2400114 (=> (not res!1019772) (not e!1529153))))

(declare-fun lt!872497 () Bool)

(assert (=> b!2400114 (= res!1019772 (not lt!872497))))

(declare-fun b!2400115 () Bool)

(declare-fun res!1019771 () Bool)

(assert (=> b!2400115 (=> (not res!1019771) (not e!1529155))))

(assert (=> b!2400115 (= res!1019771 (not call!146603))))

(declare-fun b!2400116 () Bool)

(declare-fun e!1529154 () Bool)

(assert (=> b!2400116 (= e!1529154 (nullable!2081 r!13927))))

(declare-fun b!2400117 () Bool)

(assert (=> b!2400117 (= e!1529156 (not lt!872497))))

(declare-fun b!2400118 () Bool)

(declare-fun e!1529152 () Bool)

(assert (=> b!2400118 (= e!1529152 e!1529156)))

(declare-fun c!382123 () Bool)

(assert (=> b!2400118 (= c!382123 (is-EmptyLang!7032 r!13927))))

(declare-fun b!2400119 () Bool)

(declare-fun res!1019775 () Bool)

(assert (=> b!2400119 (=> res!1019775 e!1529151)))

(declare-fun tail!3566 (List!28303) List!28303)

(assert (=> b!2400119 (= res!1019775 (not (isEmpty!16201 (tail!3566 s!9460))))))

(declare-fun d!699591 () Bool)

(assert (=> d!699591 e!1529152))

(declare-fun c!382125 () Bool)

(assert (=> d!699591 (= c!382125 (is-EmptyExpr!7032 r!13927))))

(assert (=> d!699591 (= lt!872497 e!1529154)))

(declare-fun c!382124 () Bool)

(assert (=> d!699591 (= c!382124 (isEmpty!16201 s!9460))))

(assert (=> d!699591 (validRegex!2757 r!13927)))

(assert (=> d!699591 (= (matchR!3149 r!13927 s!9460) lt!872497)))

(declare-fun b!2400112 () Bool)

(declare-fun res!1019776 () Bool)

(assert (=> b!2400112 (=> (not res!1019776) (not e!1529155))))

(assert (=> b!2400112 (= res!1019776 (isEmpty!16201 (tail!3566 s!9460)))))

(declare-fun b!2400120 () Bool)

(assert (=> b!2400120 (= e!1529153 e!1529151)))

(declare-fun res!1019774 () Bool)

(assert (=> b!2400120 (=> res!1019774 e!1529151)))

(assert (=> b!2400120 (= res!1019774 call!146603)))

(declare-fun b!2400121 () Bool)

(declare-fun res!1019770 () Bool)

(assert (=> b!2400121 (=> res!1019770 e!1529157)))

(assert (=> b!2400121 (= res!1019770 e!1529155)))

(declare-fun res!1019777 () Bool)

(assert (=> b!2400121 (=> (not res!1019777) (not e!1529155))))

(assert (=> b!2400121 (= res!1019777 lt!872497)))

(declare-fun b!2400122 () Bool)

(declare-fun derivativeStep!1739 (Regex!7032 C!14222) Regex!7032)

(assert (=> b!2400122 (= e!1529154 (matchR!3149 (derivativeStep!1739 r!13927 (head!5296 s!9460)) (tail!3566 s!9460)))))

(declare-fun b!2400123 () Bool)

(assert (=> b!2400123 (= e!1529152 (= lt!872497 call!146603))))

(assert (= (and d!699591 c!382124) b!2400116))

(assert (= (and d!699591 (not c!382124)) b!2400122))

(assert (= (and d!699591 c!382125) b!2400123))

(assert (= (and d!699591 (not c!382125)) b!2400118))

(assert (= (and b!2400118 c!382123) b!2400117))

(assert (= (and b!2400118 (not c!382123)) b!2400110))

(assert (= (and b!2400110 (not res!1019773)) b!2400121))

(assert (= (and b!2400121 res!1019777) b!2400115))

(assert (= (and b!2400115 res!1019771) b!2400112))

(assert (= (and b!2400112 res!1019776) b!2400113))

(assert (= (and b!2400121 (not res!1019770)) b!2400114))

(assert (= (and b!2400114 res!1019772) b!2400120))

(assert (= (and b!2400120 (not res!1019774)) b!2400119))

(assert (= (and b!2400119 (not res!1019775)) b!2400111))

(assert (= (or b!2400123 b!2400115 b!2400120) bm!146598))

(declare-fun m!2797609 () Bool)

(assert (=> b!2400112 m!2797609))

(assert (=> b!2400112 m!2797609))

(declare-fun m!2797611 () Bool)

(assert (=> b!2400112 m!2797611))

(assert (=> b!2400119 m!2797609))

(assert (=> b!2400119 m!2797609))

(assert (=> b!2400119 m!2797611))

(declare-fun m!2797613 () Bool)

(assert (=> d!699591 m!2797613))

(declare-fun m!2797615 () Bool)

(assert (=> d!699591 m!2797615))

(declare-fun m!2797617 () Bool)

(assert (=> b!2400113 m!2797617))

(declare-fun m!2797619 () Bool)

(assert (=> b!2400116 m!2797619))

(assert (=> bm!146598 m!2797613))

(assert (=> b!2400111 m!2797617))

(assert (=> b!2400122 m!2797617))

(assert (=> b!2400122 m!2797617))

(declare-fun m!2797621 () Bool)

(assert (=> b!2400122 m!2797621))

(assert (=> b!2400122 m!2797609))

(assert (=> b!2400122 m!2797621))

(assert (=> b!2400122 m!2797609))

(declare-fun m!2797623 () Bool)

(assert (=> b!2400122 m!2797623))

(assert (=> b!2399954 d!699591))

(declare-fun b!2400184 () Bool)

(assert (=> b!2400184 true))

(assert (=> b!2400184 true))

(declare-fun bs!463124 () Bool)

(declare-fun b!2400188 () Bool)

(assert (= bs!463124 (and b!2400188 b!2400184)))

(declare-fun lambda!90202 () Int)

(declare-fun lambda!90201 () Int)

(assert (=> bs!463124 (not (= lambda!90202 lambda!90201))))

(assert (=> b!2400188 true))

(assert (=> b!2400188 true))

(declare-fun e!1529196 () Bool)

(declare-fun call!146609 () Bool)

(assert (=> b!2400184 (= e!1529196 call!146609)))

(declare-fun b!2400185 () Bool)

(declare-fun e!1529197 () Bool)

(assert (=> b!2400185 (= e!1529197 (matchRSpec!881 (regTwo!14577 r!13927) s!9460))))

(declare-fun bm!146603 () Bool)

(declare-fun call!146608 () Bool)

(assert (=> bm!146603 (= call!146608 (isEmpty!16201 s!9460))))

(declare-fun b!2400186 () Bool)

(declare-fun e!1529194 () Bool)

(assert (=> b!2400186 (= e!1529194 e!1529197)))

(declare-fun res!1019806 () Bool)

(assert (=> b!2400186 (= res!1019806 (matchRSpec!881 (regOne!14577 r!13927) s!9460))))

(assert (=> b!2400186 (=> res!1019806 e!1529197)))

(declare-fun b!2400187 () Bool)

(declare-fun e!1529195 () Bool)

(assert (=> b!2400187 (= e!1529195 call!146608)))

(declare-fun bm!146604 () Bool)

(declare-fun c!382145 () Bool)

(declare-fun Exists!1093 (Int) Bool)

(assert (=> bm!146604 (= call!146609 (Exists!1093 (ite c!382145 lambda!90201 lambda!90202)))))

(declare-fun b!2400189 () Bool)

(declare-fun c!382144 () Bool)

(assert (=> b!2400189 (= c!382144 (is-Union!7032 r!13927))))

(declare-fun e!1529198 () Bool)

(assert (=> b!2400189 (= e!1529198 e!1529194)))

(declare-fun b!2400190 () Bool)

(declare-fun res!1019808 () Bool)

(assert (=> b!2400190 (=> res!1019808 e!1529196)))

(assert (=> b!2400190 (= res!1019808 call!146608)))

(declare-fun e!1529193 () Bool)

(assert (=> b!2400190 (= e!1529193 e!1529196)))

(declare-fun b!2400191 () Bool)

(declare-fun c!382143 () Bool)

(assert (=> b!2400191 (= c!382143 (is-ElementMatch!7032 r!13927))))

(declare-fun e!1529192 () Bool)

(assert (=> b!2400191 (= e!1529192 e!1529198)))

(declare-fun b!2400192 () Bool)

(assert (=> b!2400192 (= e!1529195 e!1529192)))

(declare-fun res!1019807 () Bool)

(assert (=> b!2400192 (= res!1019807 (not (is-EmptyLang!7032 r!13927)))))

(assert (=> b!2400192 (=> (not res!1019807) (not e!1529192))))

(declare-fun b!2400193 () Bool)

(assert (=> b!2400193 (= e!1529194 e!1529193)))

(assert (=> b!2400193 (= c!382145 (is-Star!7032 r!13927))))

(declare-fun b!2400194 () Bool)

(assert (=> b!2400194 (= e!1529198 (= s!9460 (Cons!28205 (c!382088 r!13927) Nil!28205)))))

(declare-fun d!699595 () Bool)

(declare-fun c!382142 () Bool)

(assert (=> d!699595 (= c!382142 (is-EmptyExpr!7032 r!13927))))

(assert (=> d!699595 (= (matchRSpec!881 r!13927 s!9460) e!1529195)))

(assert (=> b!2400188 (= e!1529193 call!146609)))

(assert (= (and d!699595 c!382142) b!2400187))

(assert (= (and d!699595 (not c!382142)) b!2400192))

(assert (= (and b!2400192 res!1019807) b!2400191))

(assert (= (and b!2400191 c!382143) b!2400194))

(assert (= (and b!2400191 (not c!382143)) b!2400189))

(assert (= (and b!2400189 c!382144) b!2400186))

(assert (= (and b!2400189 (not c!382144)) b!2400193))

(assert (= (and b!2400186 (not res!1019806)) b!2400185))

(assert (= (and b!2400193 c!382145) b!2400190))

(assert (= (and b!2400193 (not c!382145)) b!2400188))

(assert (= (and b!2400190 (not res!1019808)) b!2400184))

(assert (= (or b!2400184 b!2400188) bm!146604))

(assert (= (or b!2400187 b!2400190) bm!146603))

(declare-fun m!2797625 () Bool)

(assert (=> b!2400185 m!2797625))

(assert (=> bm!146603 m!2797613))

(declare-fun m!2797627 () Bool)

(assert (=> b!2400186 m!2797627))

(declare-fun m!2797629 () Bool)

(assert (=> bm!146604 m!2797629))

(assert (=> b!2399954 d!699595))

(declare-fun d!699597 () Bool)

(assert (=> d!699597 (= (matchR!3149 r!13927 s!9460) (matchRSpec!881 r!13927 s!9460))))

(declare-fun lt!872500 () Unit!41335)

(declare-fun choose!14211 (Regex!7032 List!28303) Unit!41335)

(assert (=> d!699597 (= lt!872500 (choose!14211 r!13927 s!9460))))

(assert (=> d!699597 (validRegex!2757 r!13927)))

(assert (=> d!699597 (= (mainMatchTheorem!881 r!13927 s!9460) lt!872500)))

(declare-fun bs!463125 () Bool)

(assert (= bs!463125 d!699597))

(assert (=> bs!463125 m!2797545))

(assert (=> bs!463125 m!2797547))

(declare-fun m!2797631 () Bool)

(assert (=> bs!463125 m!2797631))

(assert (=> bs!463125 m!2797615))

(assert (=> b!2399954 d!699597))

(declare-fun d!699599 () Bool)

(declare-fun res!1019817 () Bool)

(declare-fun e!1529205 () Bool)

(assert (=> d!699599 (=> res!1019817 e!1529205)))

(assert (=> d!699599 (= res!1019817 (is-Nil!28204 l!9164))))

(assert (=> d!699599 (= (forall!5666 l!9164 lambda!90188) e!1529205)))

(declare-fun b!2400207 () Bool)

(declare-fun e!1529206 () Bool)

(assert (=> b!2400207 (= e!1529205 e!1529206)))

(declare-fun res!1019818 () Bool)

(assert (=> b!2400207 (=> (not res!1019818) (not e!1529206))))

(declare-fun dynLambda!12146 (Int Regex!7032) Bool)

(assert (=> b!2400207 (= res!1019818 (dynLambda!12146 lambda!90188 (h!33605 l!9164)))))

(declare-fun b!2400208 () Bool)

(assert (=> b!2400208 (= e!1529206 (forall!5666 (t!208279 l!9164) lambda!90188))))

(assert (= (and d!699599 (not res!1019817)) b!2400207))

(assert (= (and b!2400207 res!1019818) b!2400208))

(declare-fun b_lambda!74307 () Bool)

(assert (=> (not b_lambda!74307) (not b!2400207)))

(declare-fun m!2797633 () Bool)

(assert (=> b!2400207 m!2797633))

(declare-fun m!2797635 () Bool)

(assert (=> b!2400208 m!2797635))

(assert (=> start!235454 d!699599))

(declare-fun bs!463126 () Bool)

(declare-fun d!699601 () Bool)

(assert (= bs!463126 (and d!699601 start!235454)))

(declare-fun lambda!90205 () Int)

(assert (=> bs!463126 (= lambda!90205 lambda!90188)))

(declare-fun bs!463127 () Bool)

(assert (= bs!463127 (and d!699601 d!699589)))

(assert (=> bs!463127 (= lambda!90205 lambda!90194)))

(declare-fun b!2400209 () Bool)

(declare-fun e!1529208 () Bool)

(assert (=> b!2400209 (= e!1529208 (isEmpty!16200 (t!208279 l!9164)))))

(declare-fun b!2400210 () Bool)

(declare-fun e!1529207 () Regex!7032)

(declare-fun e!1529211 () Regex!7032)

(assert (=> b!2400210 (= e!1529207 e!1529211)))

(declare-fun c!382147 () Bool)

(assert (=> b!2400210 (= c!382147 (is-Cons!28204 l!9164))))

(declare-fun b!2400211 () Bool)

(assert (=> b!2400211 (= e!1529211 EmptyExpr!7032)))

(declare-fun b!2400212 () Bool)

(declare-fun e!1529212 () Bool)

(declare-fun lt!872501 () Regex!7032)

(assert (=> b!2400212 (= e!1529212 (= lt!872501 (head!5295 l!9164)))))

(declare-fun b!2400213 () Bool)

(declare-fun e!1529210 () Bool)

(declare-fun e!1529209 () Bool)

(assert (=> b!2400213 (= e!1529210 e!1529209)))

(declare-fun c!382146 () Bool)

(assert (=> b!2400213 (= c!382146 (isEmpty!16200 l!9164))))

(declare-fun b!2400214 () Bool)

(assert (=> b!2400214 (= e!1529207 (h!33605 l!9164))))

(declare-fun b!2400215 () Bool)

(assert (=> b!2400215 (= e!1529211 (Concat!11668 (h!33605 l!9164) (generalisedConcat!133 (t!208279 l!9164))))))

(declare-fun b!2400216 () Bool)

(assert (=> b!2400216 (= e!1529212 (isConcat!101 lt!872501))))

(assert (=> d!699601 e!1529210))

(declare-fun res!1019819 () Bool)

(assert (=> d!699601 (=> (not res!1019819) (not e!1529210))))

(assert (=> d!699601 (= res!1019819 (validRegex!2757 lt!872501))))

(assert (=> d!699601 (= lt!872501 e!1529207)))

(declare-fun c!382148 () Bool)

(assert (=> d!699601 (= c!382148 e!1529208)))

(declare-fun res!1019820 () Bool)

(assert (=> d!699601 (=> (not res!1019820) (not e!1529208))))

(assert (=> d!699601 (= res!1019820 (is-Cons!28204 l!9164))))

(assert (=> d!699601 (forall!5666 l!9164 lambda!90205)))

(assert (=> d!699601 (= (generalisedConcat!133 l!9164) lt!872501)))

(declare-fun b!2400217 () Bool)

(assert (=> b!2400217 (= e!1529209 (isEmptyExpr!101 lt!872501))))

(declare-fun b!2400218 () Bool)

(assert (=> b!2400218 (= e!1529209 e!1529212)))

(declare-fun c!382149 () Bool)

(assert (=> b!2400218 (= c!382149 (isEmpty!16200 (tail!3565 l!9164)))))

(assert (= (and d!699601 res!1019820) b!2400209))

(assert (= (and d!699601 c!382148) b!2400214))

(assert (= (and d!699601 (not c!382148)) b!2400210))

(assert (= (and b!2400210 c!382147) b!2400215))

(assert (= (and b!2400210 (not c!382147)) b!2400211))

(assert (= (and d!699601 res!1019819) b!2400213))

(assert (= (and b!2400213 c!382146) b!2400217))

(assert (= (and b!2400213 (not c!382146)) b!2400218))

(assert (= (and b!2400218 c!382149) b!2400212))

(assert (= (and b!2400218 (not c!382149)) b!2400216))

(assert (=> b!2400215 m!2797541))

(declare-fun m!2797637 () Bool)

(assert (=> b!2400217 m!2797637))

(declare-fun m!2797639 () Bool)

(assert (=> b!2400213 m!2797639))

(declare-fun m!2797641 () Bool)

(assert (=> b!2400216 m!2797641))

(declare-fun m!2797643 () Bool)

(assert (=> b!2400218 m!2797643))

(assert (=> b!2400218 m!2797643))

(declare-fun m!2797645 () Bool)

(assert (=> b!2400218 m!2797645))

(declare-fun m!2797647 () Bool)

(assert (=> d!699601 m!2797647))

(declare-fun m!2797649 () Bool)

(assert (=> d!699601 m!2797649))

(assert (=> b!2400209 m!2797577))

(declare-fun m!2797651 () Bool)

(assert (=> b!2400212 m!2797651))

(assert (=> b!2399955 d!699601))

(declare-fun b!2400231 () Bool)

(declare-fun e!1529215 () Bool)

(declare-fun tp!763860 () Bool)

(assert (=> b!2400231 (= e!1529215 tp!763860)))

(declare-fun b!2400229 () Bool)

(assert (=> b!2400229 (= e!1529215 tp_is_empty!11477)))

(assert (=> b!2399952 (= tp!763822 e!1529215)))

(declare-fun b!2400232 () Bool)

(declare-fun tp!763861 () Bool)

(declare-fun tp!763862 () Bool)

(assert (=> b!2400232 (= e!1529215 (and tp!763861 tp!763862))))

(declare-fun b!2400230 () Bool)

(declare-fun tp!763859 () Bool)

(declare-fun tp!763858 () Bool)

(assert (=> b!2400230 (= e!1529215 (and tp!763859 tp!763858))))

(assert (= (and b!2399952 (is-ElementMatch!7032 (regOne!14577 r!13927))) b!2400229))

(assert (= (and b!2399952 (is-Concat!11668 (regOne!14577 r!13927))) b!2400230))

(assert (= (and b!2399952 (is-Star!7032 (regOne!14577 r!13927))) b!2400231))

(assert (= (and b!2399952 (is-Union!7032 (regOne!14577 r!13927))) b!2400232))

(declare-fun b!2400235 () Bool)

(declare-fun e!1529216 () Bool)

(declare-fun tp!763865 () Bool)

(assert (=> b!2400235 (= e!1529216 tp!763865)))

(declare-fun b!2400233 () Bool)

(assert (=> b!2400233 (= e!1529216 tp_is_empty!11477)))

(assert (=> b!2399952 (= tp!763818 e!1529216)))

(declare-fun b!2400236 () Bool)

(declare-fun tp!763866 () Bool)

(declare-fun tp!763867 () Bool)

(assert (=> b!2400236 (= e!1529216 (and tp!763866 tp!763867))))

(declare-fun b!2400234 () Bool)

(declare-fun tp!763864 () Bool)

(declare-fun tp!763863 () Bool)

(assert (=> b!2400234 (= e!1529216 (and tp!763864 tp!763863))))

(assert (= (and b!2399952 (is-ElementMatch!7032 (regTwo!14577 r!13927))) b!2400233))

(assert (= (and b!2399952 (is-Concat!11668 (regTwo!14577 r!13927))) b!2400234))

(assert (= (and b!2399952 (is-Star!7032 (regTwo!14577 r!13927))) b!2400235))

(assert (= (and b!2399952 (is-Union!7032 (regTwo!14577 r!13927))) b!2400236))

(declare-fun b!2400239 () Bool)

(declare-fun e!1529217 () Bool)

(declare-fun tp!763870 () Bool)

(assert (=> b!2400239 (= e!1529217 tp!763870)))

(declare-fun b!2400237 () Bool)

(assert (=> b!2400237 (= e!1529217 tp_is_empty!11477)))

(assert (=> b!2399947 (= tp!763821 e!1529217)))

(declare-fun b!2400240 () Bool)

(declare-fun tp!763871 () Bool)

(declare-fun tp!763872 () Bool)

(assert (=> b!2400240 (= e!1529217 (and tp!763871 tp!763872))))

(declare-fun b!2400238 () Bool)

(declare-fun tp!763869 () Bool)

(declare-fun tp!763868 () Bool)

(assert (=> b!2400238 (= e!1529217 (and tp!763869 tp!763868))))

(assert (= (and b!2399947 (is-ElementMatch!7032 (h!33605 l!9164))) b!2400237))

(assert (= (and b!2399947 (is-Concat!11668 (h!33605 l!9164))) b!2400238))

(assert (= (and b!2399947 (is-Star!7032 (h!33605 l!9164))) b!2400239))

(assert (= (and b!2399947 (is-Union!7032 (h!33605 l!9164))) b!2400240))

(declare-fun b!2400245 () Bool)

(declare-fun e!1529220 () Bool)

(declare-fun tp!763877 () Bool)

(declare-fun tp!763878 () Bool)

(assert (=> b!2400245 (= e!1529220 (and tp!763877 tp!763878))))

(assert (=> b!2399947 (= tp!763816 e!1529220)))

(assert (= (and b!2399947 (is-Cons!28204 (t!208279 l!9164))) b!2400245))

(declare-fun b!2400250 () Bool)

(declare-fun e!1529223 () Bool)

(declare-fun tp!763881 () Bool)

(assert (=> b!2400250 (= e!1529223 (and tp_is_empty!11477 tp!763881))))

(assert (=> b!2399950 (= tp!763817 e!1529223)))

(assert (= (and b!2399950 (is-Cons!28205 (t!208280 s!9460))) b!2400250))

(declare-fun b!2400253 () Bool)

(declare-fun e!1529224 () Bool)

(declare-fun tp!763884 () Bool)

(assert (=> b!2400253 (= e!1529224 tp!763884)))

(declare-fun b!2400251 () Bool)

(assert (=> b!2400251 (= e!1529224 tp_is_empty!11477)))

(assert (=> b!2399951 (= tp!763823 e!1529224)))

(declare-fun b!2400254 () Bool)

(declare-fun tp!763885 () Bool)

(declare-fun tp!763886 () Bool)

(assert (=> b!2400254 (= e!1529224 (and tp!763885 tp!763886))))

(declare-fun b!2400252 () Bool)

(declare-fun tp!763883 () Bool)

(declare-fun tp!763882 () Bool)

(assert (=> b!2400252 (= e!1529224 (and tp!763883 tp!763882))))

(assert (= (and b!2399951 (is-ElementMatch!7032 (regOne!14576 r!13927))) b!2400251))

(assert (= (and b!2399951 (is-Concat!11668 (regOne!14576 r!13927))) b!2400252))

(assert (= (and b!2399951 (is-Star!7032 (regOne!14576 r!13927))) b!2400253))

(assert (= (and b!2399951 (is-Union!7032 (regOne!14576 r!13927))) b!2400254))

(declare-fun b!2400257 () Bool)

(declare-fun e!1529225 () Bool)

(declare-fun tp!763889 () Bool)

(assert (=> b!2400257 (= e!1529225 tp!763889)))

(declare-fun b!2400255 () Bool)

(assert (=> b!2400255 (= e!1529225 tp_is_empty!11477)))

(assert (=> b!2399951 (= tp!763820 e!1529225)))

(declare-fun b!2400258 () Bool)

(declare-fun tp!763890 () Bool)

(declare-fun tp!763891 () Bool)

(assert (=> b!2400258 (= e!1529225 (and tp!763890 tp!763891))))

(declare-fun b!2400256 () Bool)

(declare-fun tp!763888 () Bool)

(declare-fun tp!763887 () Bool)

(assert (=> b!2400256 (= e!1529225 (and tp!763888 tp!763887))))

(assert (= (and b!2399951 (is-ElementMatch!7032 (regTwo!14576 r!13927))) b!2400255))

(assert (= (and b!2399951 (is-Concat!11668 (regTwo!14576 r!13927))) b!2400256))

(assert (= (and b!2399951 (is-Star!7032 (regTwo!14576 r!13927))) b!2400257))

(assert (= (and b!2399951 (is-Union!7032 (regTwo!14576 r!13927))) b!2400258))

(declare-fun b!2400261 () Bool)

(declare-fun e!1529226 () Bool)

(declare-fun tp!763894 () Bool)

(assert (=> b!2400261 (= e!1529226 tp!763894)))

(declare-fun b!2400259 () Bool)

(assert (=> b!2400259 (= e!1529226 tp_is_empty!11477)))

(assert (=> b!2399949 (= tp!763819 e!1529226)))

(declare-fun b!2400262 () Bool)

(declare-fun tp!763895 () Bool)

(declare-fun tp!763896 () Bool)

(assert (=> b!2400262 (= e!1529226 (and tp!763895 tp!763896))))

(declare-fun b!2400260 () Bool)

(declare-fun tp!763893 () Bool)

(declare-fun tp!763892 () Bool)

(assert (=> b!2400260 (= e!1529226 (and tp!763893 tp!763892))))

(assert (= (and b!2399949 (is-ElementMatch!7032 (reg!7361 r!13927))) b!2400259))

(assert (= (and b!2399949 (is-Concat!11668 (reg!7361 r!13927))) b!2400260))

(assert (= (and b!2399949 (is-Star!7032 (reg!7361 r!13927))) b!2400261))

(assert (= (and b!2399949 (is-Union!7032 (reg!7361 r!13927))) b!2400262))

(declare-fun b_lambda!74309 () Bool)

(assert (= b_lambda!74307 (or start!235454 b_lambda!74309)))

(declare-fun bs!463128 () Bool)

(declare-fun d!699603 () Bool)

(assert (= bs!463128 (and d!699603 start!235454)))

(assert (=> bs!463128 (= (dynLambda!12146 lambda!90188 (h!33605 l!9164)) (validRegex!2757 (h!33605 l!9164)))))

(assert (=> bs!463128 m!2797539))

(assert (=> b!2400207 d!699603))

(push 1)

(assert (not d!699589))

(assert (not b!2400232))

(assert (not d!699597))

(assert (not b!2400061))

(assert tp_is_empty!11477)

(assert (not b!2400218))

(assert (not b!2400212))

(assert (not b!2400185))

(assert (not b!2400062))

(assert (not b!2400252))

(assert (not b!2400261))

(assert (not b!2400236))

(assert (not b!2400250))

(assert (not b!2400058))

(assert (not b!2400234))

(assert (not b!2400066))

(assert (not b!2400216))

(assert (not b!2400256))

(assert (not d!699601))

(assert (not b!2400064))

(assert (not bm!146603))

(assert (not b!2400113))

(assert (not bm!146598))

(assert (not b!2400119))

(assert (not b!2400262))

(assert (not b!2400215))

(assert (not bm!146592))

(assert (not b!2400186))

(assert (not b!2400239))

(assert (not d!699591))

(assert (not b!2400260))

(assert (not b!2400003))

(assert (not b_lambda!74309))

(assert (not bm!146590))

(assert (not b!2400253))

(assert (not b!2400111))

(assert (not b!2400217))

(assert (not b!2400122))

(assert (not b!2400208))

(assert (not b!2400213))

(assert (not b!2400112))

(assert (not b!2400065))

(assert (not b!2400235))

(assert (not b!2400257))

(assert (not b!2400209))

(assert (not bm!146604))

(assert (not b!2400254))

(assert (not b!2400067))

(assert (not b!2400116))

(assert (not b!2400230))

(assert (not bs!463128))

(assert (not b!2400231))

(assert (not b!2400258))

(assert (not b!2400240))

(assert (not b!2400238))

(assert (not b!2400245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

