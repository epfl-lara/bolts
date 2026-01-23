; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294652 () Bool)

(assert start!294652)

(declare-fun b!3109505 () Bool)

(declare-fun res!1273104 () Bool)

(declare-fun e!1942528 () Bool)

(assert (=> b!3109505 (=> res!1273104 e!1942528)))

(declare-datatypes ((C!19364 0))(
  ( (C!19365 (val!11718 Int)) )
))
(declare-datatypes ((Regex!9589 0))(
  ( (ElementMatch!9589 (c!520323 C!19364)) (Concat!14910 (regOne!19690 Regex!9589) (regTwo!19690 Regex!9589)) (EmptyExpr!9589) (Star!9589 (reg!9918 Regex!9589)) (EmptyLang!9589) (Union!9589 (regOne!19691 Regex!9589) (regTwo!19691 Regex!9589)) )
))
(declare-fun lt!1057203 () Regex!9589)

(declare-fun lt!1057202 () Regex!9589)

(declare-datatypes ((List!35454 0))(
  ( (Nil!35330) (Cons!35330 (h!40750 C!19364) (t!234519 List!35454)) )
))
(declare-fun s!11993 () List!35454)

(declare-fun matchR!4471 (Regex!9589 List!35454) Bool)

(assert (=> b!3109505 (= res!1273104 (not (matchR!4471 (Union!9589 lt!1057202 lt!1057203) s!11993)))))

(declare-fun b!3109506 () Bool)

(declare-fun e!1942530 () Bool)

(assert (=> b!3109506 (= e!1942530 e!1942528)))

(declare-fun res!1273102 () Bool)

(assert (=> b!3109506 (=> res!1273102 e!1942528)))

(declare-fun isEmptyLang!640 (Regex!9589) Bool)

(assert (=> b!3109506 (= res!1273102 (isEmptyLang!640 lt!1057202))))

(declare-fun r!17423 () Regex!9589)

(declare-fun simplify!544 (Regex!9589) Regex!9589)

(assert (=> b!3109506 (= lt!1057203 (simplify!544 (regTwo!19691 r!17423)))))

(assert (=> b!3109506 (= lt!1057202 (simplify!544 (regOne!19691 r!17423)))))

(declare-fun b!3109507 () Bool)

(declare-fun e!1942529 () Bool)

(declare-fun tp!976149 () Bool)

(assert (=> b!3109507 (= e!1942529 tp!976149)))

(declare-fun b!3109508 () Bool)

(declare-fun e!1942526 () Bool)

(declare-fun tp_is_empty!16741 () Bool)

(declare-fun tp!976148 () Bool)

(assert (=> b!3109508 (= e!1942526 (and tp_is_empty!16741 tp!976148))))

(declare-fun b!3109509 () Bool)

(declare-fun e!1942532 () Bool)

(assert (=> b!3109509 (= e!1942532 (not e!1942530))))

(declare-fun res!1273100 () Bool)

(assert (=> b!3109509 (=> res!1273100 e!1942530)))

(declare-fun lt!1057204 () Bool)

(get-info :version)

(assert (=> b!3109509 (= res!1273100 (or lt!1057204 ((_ is Concat!14910) r!17423) (not ((_ is Union!9589) r!17423))))))

(declare-fun matchRSpec!1726 (Regex!9589 List!35454) Bool)

(assert (=> b!3109509 (= lt!1057204 (matchRSpec!1726 r!17423 s!11993))))

(assert (=> b!3109509 (= lt!1057204 (matchR!4471 r!17423 s!11993))))

(declare-datatypes ((Unit!49617 0))(
  ( (Unit!49618) )
))
(declare-fun lt!1057201 () Unit!49617)

(declare-fun mainMatchTheorem!1726 (Regex!9589 List!35454) Unit!49617)

(assert (=> b!3109509 (= lt!1057201 (mainMatchTheorem!1726 r!17423 s!11993))))

(declare-fun b!3109510 () Bool)

(declare-fun e!1942533 () Bool)

(assert (=> b!3109510 (= e!1942528 e!1942533)))

(declare-fun res!1273103 () Bool)

(assert (=> b!3109510 (=> res!1273103 e!1942533)))

(declare-fun lt!1057206 () Bool)

(assert (=> b!3109510 (= res!1273103 (not lt!1057206))))

(declare-fun e!1942527 () Bool)

(assert (=> b!3109510 e!1942527))

(declare-fun res!1273106 () Bool)

(assert (=> b!3109510 (=> res!1273106 e!1942527)))

(assert (=> b!3109510 (= res!1273106 lt!1057206)))

(assert (=> b!3109510 (= lt!1057206 (matchR!4471 lt!1057202 s!11993))))

(declare-fun lt!1057205 () Unit!49617)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!320 (Regex!9589 Regex!9589 List!35454) Unit!49617)

(assert (=> b!3109510 (= lt!1057205 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!320 lt!1057202 lt!1057203 s!11993))))

(declare-fun b!3109511 () Bool)

(declare-fun e!1942531 () Bool)

(assert (=> b!3109511 (= e!1942533 e!1942531)))

(declare-fun res!1273099 () Bool)

(assert (=> b!3109511 (=> (not res!1273099) (not e!1942531))))

(declare-fun validRegex!4322 (Regex!9589) Bool)

(assert (=> b!3109511 (= res!1273099 (validRegex!4322 (regOne!19691 r!17423)))))

(assert (=> b!3109511 (matchR!4471 (regOne!19691 r!17423) s!11993)))

(declare-fun lt!1057200 () Unit!49617)

(declare-fun lemmaSimplifySound!342 (Regex!9589 List!35454) Unit!49617)

(assert (=> b!3109511 (= lt!1057200 (lemmaSimplifySound!342 (regOne!19691 r!17423) s!11993))))

(declare-fun b!3109512 () Bool)

(assert (=> b!3109512 (= e!1942529 tp_is_empty!16741)))

(declare-fun res!1273105 () Bool)

(assert (=> start!294652 (=> (not res!1273105) (not e!1942532))))

(assert (=> start!294652 (= res!1273105 (validRegex!4322 r!17423))))

(assert (=> start!294652 e!1942532))

(assert (=> start!294652 e!1942529))

(assert (=> start!294652 e!1942526))

(declare-fun b!3109513 () Bool)

(assert (=> b!3109513 (= e!1942531 (validRegex!4322 (regTwo!19691 r!17423)))))

(declare-fun b!3109514 () Bool)

(declare-fun res!1273101 () Bool)

(assert (=> b!3109514 (=> res!1273101 e!1942528)))

(assert (=> b!3109514 (= res!1273101 (isEmptyLang!640 lt!1057203))))

(declare-fun b!3109515 () Bool)

(assert (=> b!3109515 (= e!1942527 (matchR!4471 lt!1057203 s!11993))))

(declare-fun b!3109516 () Bool)

(declare-fun tp!976147 () Bool)

(declare-fun tp!976146 () Bool)

(assert (=> b!3109516 (= e!1942529 (and tp!976147 tp!976146))))

(declare-fun b!3109517 () Bool)

(declare-fun tp!976145 () Bool)

(declare-fun tp!976144 () Bool)

(assert (=> b!3109517 (= e!1942529 (and tp!976145 tp!976144))))

(assert (= (and start!294652 res!1273105) b!3109509))

(assert (= (and b!3109509 (not res!1273100)) b!3109506))

(assert (= (and b!3109506 (not res!1273102)) b!3109514))

(assert (= (and b!3109514 (not res!1273101)) b!3109505))

(assert (= (and b!3109505 (not res!1273104)) b!3109510))

(assert (= (and b!3109510 (not res!1273106)) b!3109515))

(assert (= (and b!3109510 (not res!1273103)) b!3109511))

(assert (= (and b!3109511 res!1273099) b!3109513))

(assert (= (and start!294652 ((_ is ElementMatch!9589) r!17423)) b!3109512))

(assert (= (and start!294652 ((_ is Concat!14910) r!17423)) b!3109516))

(assert (= (and start!294652 ((_ is Star!9589) r!17423)) b!3109507))

(assert (= (and start!294652 ((_ is Union!9589) r!17423)) b!3109517))

(assert (= (and start!294652 ((_ is Cons!35330) s!11993)) b!3109508))

(declare-fun m!3404141 () Bool)

(assert (=> start!294652 m!3404141))

(declare-fun m!3404143 () Bool)

(assert (=> b!3109510 m!3404143))

(declare-fun m!3404145 () Bool)

(assert (=> b!3109510 m!3404145))

(declare-fun m!3404147 () Bool)

(assert (=> b!3109511 m!3404147))

(declare-fun m!3404149 () Bool)

(assert (=> b!3109511 m!3404149))

(declare-fun m!3404151 () Bool)

(assert (=> b!3109511 m!3404151))

(declare-fun m!3404153 () Bool)

(assert (=> b!3109514 m!3404153))

(declare-fun m!3404155 () Bool)

(assert (=> b!3109505 m!3404155))

(declare-fun m!3404157 () Bool)

(assert (=> b!3109509 m!3404157))

(declare-fun m!3404159 () Bool)

(assert (=> b!3109509 m!3404159))

(declare-fun m!3404161 () Bool)

(assert (=> b!3109509 m!3404161))

(declare-fun m!3404163 () Bool)

(assert (=> b!3109515 m!3404163))

(declare-fun m!3404165 () Bool)

(assert (=> b!3109513 m!3404165))

(declare-fun m!3404167 () Bool)

(assert (=> b!3109506 m!3404167))

(declare-fun m!3404169 () Bool)

(assert (=> b!3109506 m!3404169))

(declare-fun m!3404171 () Bool)

(assert (=> b!3109506 m!3404171))

(check-sat (not b!3109514) (not b!3109505) (not b!3109509) (not start!294652) (not b!3109511) (not b!3109515) (not b!3109510) (not b!3109506) (not b!3109513) (not b!3109507) (not b!3109517) (not b!3109516) tp_is_empty!16741 (not b!3109508))
(check-sat)
(get-model)

(declare-fun b!3109564 () Bool)

(declare-fun e!1942566 () Bool)

(declare-fun e!1942563 () Bool)

(assert (=> b!3109564 (= e!1942566 e!1942563)))

(declare-fun res!1273136 () Bool)

(assert (=> b!3109564 (=> (not res!1273136) (not e!1942563))))

(declare-fun call!220033 () Bool)

(assert (=> b!3109564 (= res!1273136 call!220033)))

(declare-fun b!3109565 () Bool)

(declare-fun e!1942564 () Bool)

(declare-fun call!220031 () Bool)

(assert (=> b!3109565 (= e!1942564 call!220031)))

(declare-fun b!3109567 () Bool)

(declare-fun e!1942568 () Bool)

(assert (=> b!3109567 (= e!1942568 e!1942564)))

(declare-fun res!1273134 () Bool)

(declare-fun nullable!3231 (Regex!9589) Bool)

(assert (=> b!3109567 (= res!1273134 (not (nullable!3231 (reg!9918 r!17423))))))

(assert (=> b!3109567 (=> (not res!1273134) (not e!1942564))))

(declare-fun c!520335 () Bool)

(declare-fun bm!220026 () Bool)

(declare-fun c!520334 () Bool)

(assert (=> bm!220026 (= call!220031 (validRegex!4322 (ite c!520334 (reg!9918 r!17423) (ite c!520335 (regOne!19691 r!17423) (regTwo!19690 r!17423)))))))

(declare-fun b!3109568 () Bool)

(declare-fun call!220032 () Bool)

(assert (=> b!3109568 (= e!1942563 call!220032)))

(declare-fun b!3109569 () Bool)

(declare-fun e!1942562 () Bool)

(assert (=> b!3109569 (= e!1942568 e!1942562)))

(assert (=> b!3109569 (= c!520335 ((_ is Union!9589) r!17423))))

(declare-fun b!3109570 () Bool)

(declare-fun e!1942567 () Bool)

(assert (=> b!3109570 (= e!1942567 call!220033)))

(declare-fun b!3109571 () Bool)

(declare-fun res!1273135 () Bool)

(assert (=> b!3109571 (=> res!1273135 e!1942566)))

(assert (=> b!3109571 (= res!1273135 (not ((_ is Concat!14910) r!17423)))))

(assert (=> b!3109571 (= e!1942562 e!1942566)))

(declare-fun bm!220027 () Bool)

(assert (=> bm!220027 (= call!220033 (validRegex!4322 (ite c!520335 (regTwo!19691 r!17423) (regOne!19690 r!17423))))))

(declare-fun b!3109566 () Bool)

(declare-fun res!1273137 () Bool)

(assert (=> b!3109566 (=> (not res!1273137) (not e!1942567))))

(assert (=> b!3109566 (= res!1273137 call!220032)))

(assert (=> b!3109566 (= e!1942562 e!1942567)))

(declare-fun d!861646 () Bool)

(declare-fun res!1273133 () Bool)

(declare-fun e!1942565 () Bool)

(assert (=> d!861646 (=> res!1273133 e!1942565)))

(assert (=> d!861646 (= res!1273133 ((_ is ElementMatch!9589) r!17423))))

(assert (=> d!861646 (= (validRegex!4322 r!17423) e!1942565)))

(declare-fun bm!220028 () Bool)

(assert (=> bm!220028 (= call!220032 call!220031)))

(declare-fun b!3109572 () Bool)

(assert (=> b!3109572 (= e!1942565 e!1942568)))

(assert (=> b!3109572 (= c!520334 ((_ is Star!9589) r!17423))))

(assert (= (and d!861646 (not res!1273133)) b!3109572))

(assert (= (and b!3109572 c!520334) b!3109567))

(assert (= (and b!3109572 (not c!520334)) b!3109569))

(assert (= (and b!3109567 res!1273134) b!3109565))

(assert (= (and b!3109569 c!520335) b!3109566))

(assert (= (and b!3109569 (not c!520335)) b!3109571))

(assert (= (and b!3109566 res!1273137) b!3109570))

(assert (= (and b!3109571 (not res!1273135)) b!3109564))

(assert (= (and b!3109564 res!1273136) b!3109568))

(assert (= (or b!3109566 b!3109568) bm!220028))

(assert (= (or b!3109570 b!3109564) bm!220027))

(assert (= (or b!3109565 bm!220028) bm!220026))

(declare-fun m!3404173 () Bool)

(assert (=> b!3109567 m!3404173))

(declare-fun m!3404175 () Bool)

(assert (=> bm!220026 m!3404175))

(declare-fun m!3404177 () Bool)

(assert (=> bm!220027 m!3404177))

(assert (=> start!294652 d!861646))

(declare-fun d!861648 () Bool)

(assert (=> d!861648 (= (isEmptyLang!640 lt!1057202) ((_ is EmptyLang!9589) lt!1057202))))

(assert (=> b!3109506 d!861648))

(declare-fun b!3109720 () Bool)

(declare-fun e!1942660 () Regex!9589)

(declare-fun e!1942672 () Regex!9589)

(assert (=> b!3109720 (= e!1942660 e!1942672)))

(declare-fun lt!1057231 () Regex!9589)

(declare-fun call!220063 () Regex!9589)

(assert (=> b!3109720 (= lt!1057231 call!220063)))

(declare-fun lt!1057229 () Regex!9589)

(declare-fun call!220061 () Regex!9589)

(assert (=> b!3109720 (= lt!1057229 call!220061)))

(declare-fun c!520389 () Bool)

(declare-fun call!220064 () Bool)

(assert (=> b!3109720 (= c!520389 call!220064)))

(declare-fun bm!220056 () Bool)

(declare-fun c!520390 () Bool)

(assert (=> bm!220056 (= call!220061 (simplify!544 (ite c!520390 (regTwo!19691 (regTwo!19691 r!17423)) (regOne!19690 (regTwo!19691 r!17423)))))))

(declare-fun b!3109721 () Bool)

(declare-fun c!520383 () Bool)

(declare-fun call!220065 () Bool)

(assert (=> b!3109721 (= c!520383 call!220065)))

(declare-fun e!1942667 () Regex!9589)

(assert (=> b!3109721 (= e!1942672 e!1942667)))

(declare-fun b!3109722 () Bool)

(declare-fun e!1942661 () Regex!9589)

(declare-fun lt!1057232 () Regex!9589)

(declare-fun lt!1057227 () Regex!9589)

(assert (=> b!3109722 (= e!1942661 (Concat!14910 lt!1057232 lt!1057227))))

(declare-fun b!3109723 () Bool)

(declare-fun e!1942659 () Bool)

(assert (=> b!3109723 (= e!1942659 call!220064)))

(declare-fun b!3109724 () Bool)

(declare-fun e!1942662 () Bool)

(declare-fun lt!1057228 () Regex!9589)

(assert (=> b!3109724 (= e!1942662 (= (nullable!3231 lt!1057228) (nullable!3231 (regTwo!19691 r!17423))))))

(declare-fun call!220060 () Bool)

(declare-fun bm!220057 () Bool)

(declare-fun lt!1057230 () Regex!9589)

(declare-fun c!520382 () Bool)

(declare-fun isEmptyExpr!641 (Regex!9589) Bool)

(assert (=> bm!220057 (= call!220060 (isEmptyExpr!641 (ite c!520382 lt!1057230 lt!1057227)))))

(declare-fun b!3109725 () Bool)

(declare-fun e!1942668 () Regex!9589)

(declare-fun e!1942669 () Regex!9589)

(assert (=> b!3109725 (= e!1942668 e!1942669)))

(assert (=> b!3109725 (= c!520382 ((_ is Star!9589) (regTwo!19691 r!17423)))))

(declare-fun bm!220058 () Bool)

(assert (=> bm!220058 (= call!220064 (isEmptyLang!640 (ite c!520390 lt!1057231 lt!1057227)))))

(declare-fun b!3109726 () Bool)

(declare-fun e!1942666 () Bool)

(assert (=> b!3109726 (= e!1942666 call!220060)))

(declare-fun call!220066 () Bool)

(declare-fun bm!220059 () Bool)

(assert (=> bm!220059 (= call!220066 (isEmptyLang!640 (ite c!520382 lt!1057230 (ite c!520390 lt!1057229 lt!1057232))))))

(declare-fun b!3109727 () Bool)

(assert (=> b!3109727 (= e!1942667 (Union!9589 lt!1057231 lt!1057229))))

(declare-fun b!3109728 () Bool)

(declare-fun e!1942665 () Regex!9589)

(assert (=> b!3109728 (= e!1942660 e!1942665)))

(assert (=> b!3109728 (= lt!1057232 call!220061)))

(assert (=> b!3109728 (= lt!1057227 call!220063)))

(declare-fun res!1273196 () Bool)

(assert (=> b!3109728 (= res!1273196 call!220065)))

(assert (=> b!3109728 (=> res!1273196 e!1942659)))

(declare-fun c!520384 () Bool)

(assert (=> b!3109728 (= c!520384 e!1942659)))

(declare-fun b!3109729 () Bool)

(assert (=> b!3109729 (= e!1942672 lt!1057229)))

(declare-fun b!3109730 () Bool)

(declare-fun c!520385 () Bool)

(assert (=> b!3109730 (= c!520385 ((_ is EmptyExpr!9589) (regTwo!19691 r!17423)))))

(declare-fun e!1942670 () Regex!9589)

(assert (=> b!3109730 (= e!1942670 e!1942668)))

(declare-fun b!3109731 () Bool)

(declare-fun e!1942663 () Regex!9589)

(assert (=> b!3109731 (= e!1942663 (Star!9589 lt!1057230))))

(declare-fun b!3109732 () Bool)

(declare-fun e!1942671 () Regex!9589)

(assert (=> b!3109732 (= e!1942671 e!1942661)))

(declare-fun c!520381 () Bool)

(assert (=> b!3109732 (= c!520381 call!220060)))

(declare-fun d!861650 () Bool)

(assert (=> d!861650 e!1942662))

(declare-fun res!1273197 () Bool)

(assert (=> d!861650 (=> (not res!1273197) (not e!1942662))))

(assert (=> d!861650 (= res!1273197 (validRegex!4322 lt!1057228))))

(declare-fun e!1942664 () Regex!9589)

(assert (=> d!861650 (= lt!1057228 e!1942664)))

(declare-fun c!520386 () Bool)

(assert (=> d!861650 (= c!520386 ((_ is EmptyLang!9589) (regTwo!19691 r!17423)))))

(assert (=> d!861650 (validRegex!4322 (regTwo!19691 r!17423))))

(assert (=> d!861650 (= (simplify!544 (regTwo!19691 r!17423)) lt!1057228)))

(declare-fun bm!220055 () Bool)

(declare-fun call!220062 () Regex!9589)

(assert (=> bm!220055 (= call!220063 call!220062)))

(declare-fun b!3109733 () Bool)

(assert (=> b!3109733 (= e!1942667 lt!1057231)))

(declare-fun b!3109734 () Bool)

(assert (=> b!3109734 (= c!520390 ((_ is Union!9589) (regTwo!19691 r!17423)))))

(assert (=> b!3109734 (= e!1942669 e!1942660)))

(declare-fun b!3109735 () Bool)

(assert (=> b!3109735 (= e!1942664 e!1942670)))

(declare-fun c!520388 () Bool)

(assert (=> b!3109735 (= c!520388 ((_ is ElementMatch!9589) (regTwo!19691 r!17423)))))

(declare-fun b!3109736 () Bool)

(assert (=> b!3109736 (= e!1942663 EmptyExpr!9589)))

(declare-fun b!3109737 () Bool)

(assert (=> b!3109737 (= e!1942668 EmptyExpr!9589)))

(declare-fun b!3109738 () Bool)

(assert (=> b!3109738 (= e!1942664 EmptyLang!9589)))

(declare-fun b!3109739 () Bool)

(assert (=> b!3109739 (= e!1942670 (regTwo!19691 r!17423))))

(declare-fun b!3109740 () Bool)

(assert (=> b!3109740 (= e!1942671 lt!1057227)))

(declare-fun bm!220060 () Bool)

(assert (=> bm!220060 (= call!220065 call!220066)))

(declare-fun b!3109741 () Bool)

(declare-fun c!520391 () Bool)

(assert (=> b!3109741 (= c!520391 e!1942666)))

(declare-fun res!1273195 () Bool)

(assert (=> b!3109741 (=> res!1273195 e!1942666)))

(assert (=> b!3109741 (= res!1273195 call!220066)))

(assert (=> b!3109741 (= lt!1057230 call!220062)))

(assert (=> b!3109741 (= e!1942669 e!1942663)))

(declare-fun b!3109742 () Bool)

(assert (=> b!3109742 (= e!1942665 EmptyLang!9589)))

(declare-fun b!3109743 () Bool)

(declare-fun c!520387 () Bool)

(assert (=> b!3109743 (= c!520387 (isEmptyExpr!641 lt!1057232))))

(assert (=> b!3109743 (= e!1942665 e!1942671)))

(declare-fun b!3109744 () Bool)

(assert (=> b!3109744 (= e!1942661 lt!1057232)))

(declare-fun bm!220061 () Bool)

(assert (=> bm!220061 (= call!220062 (simplify!544 (ite c!520382 (reg!9918 (regTwo!19691 r!17423)) (ite c!520390 (regOne!19691 (regTwo!19691 r!17423)) (regTwo!19690 (regTwo!19691 r!17423))))))))

(assert (= (and d!861650 c!520386) b!3109738))

(assert (= (and d!861650 (not c!520386)) b!3109735))

(assert (= (and b!3109735 c!520388) b!3109739))

(assert (= (and b!3109735 (not c!520388)) b!3109730))

(assert (= (and b!3109730 c!520385) b!3109737))

(assert (= (and b!3109730 (not c!520385)) b!3109725))

(assert (= (and b!3109725 c!520382) b!3109741))

(assert (= (and b!3109725 (not c!520382)) b!3109734))

(assert (= (and b!3109741 (not res!1273195)) b!3109726))

(assert (= (and b!3109741 c!520391) b!3109736))

(assert (= (and b!3109741 (not c!520391)) b!3109731))

(assert (= (and b!3109734 c!520390) b!3109720))

(assert (= (and b!3109734 (not c!520390)) b!3109728))

(assert (= (and b!3109720 c!520389) b!3109729))

(assert (= (and b!3109720 (not c!520389)) b!3109721))

(assert (= (and b!3109721 c!520383) b!3109733))

(assert (= (and b!3109721 (not c!520383)) b!3109727))

(assert (= (and b!3109728 (not res!1273196)) b!3109723))

(assert (= (and b!3109728 c!520384) b!3109742))

(assert (= (and b!3109728 (not c!520384)) b!3109743))

(assert (= (and b!3109743 c!520387) b!3109740))

(assert (= (and b!3109743 (not c!520387)) b!3109732))

(assert (= (and b!3109732 c!520381) b!3109744))

(assert (= (and b!3109732 (not c!520381)) b!3109722))

(assert (= (or b!3109720 b!3109728) bm!220055))

(assert (= (or b!3109720 b!3109728) bm!220056))

(assert (= (or b!3109720 b!3109723) bm!220058))

(assert (= (or b!3109721 b!3109728) bm!220060))

(assert (= (or b!3109726 b!3109732) bm!220057))

(assert (= (or b!3109741 bm!220055) bm!220061))

(assert (= (or b!3109741 bm!220060) bm!220059))

(assert (= (and d!861650 res!1273197) b!3109724))

(declare-fun m!3404219 () Bool)

(assert (=> bm!220057 m!3404219))

(declare-fun m!3404221 () Bool)

(assert (=> bm!220058 m!3404221))

(declare-fun m!3404223 () Bool)

(assert (=> bm!220056 m!3404223))

(declare-fun m!3404225 () Bool)

(assert (=> b!3109743 m!3404225))

(declare-fun m!3404227 () Bool)

(assert (=> b!3109724 m!3404227))

(declare-fun m!3404229 () Bool)

(assert (=> b!3109724 m!3404229))

(declare-fun m!3404231 () Bool)

(assert (=> bm!220059 m!3404231))

(declare-fun m!3404233 () Bool)

(assert (=> bm!220061 m!3404233))

(declare-fun m!3404235 () Bool)

(assert (=> d!861650 m!3404235))

(assert (=> d!861650 m!3404165))

(assert (=> b!3109506 d!861650))

(declare-fun b!3109745 () Bool)

(declare-fun e!1942674 () Regex!9589)

(declare-fun e!1942686 () Regex!9589)

(assert (=> b!3109745 (= e!1942674 e!1942686)))

(declare-fun lt!1057237 () Regex!9589)

(declare-fun call!220070 () Regex!9589)

(assert (=> b!3109745 (= lt!1057237 call!220070)))

(declare-fun lt!1057235 () Regex!9589)

(declare-fun call!220068 () Regex!9589)

(assert (=> b!3109745 (= lt!1057235 call!220068)))

(declare-fun c!520400 () Bool)

(declare-fun call!220071 () Bool)

(assert (=> b!3109745 (= c!520400 call!220071)))

(declare-fun bm!220063 () Bool)

(declare-fun c!520401 () Bool)

(assert (=> bm!220063 (= call!220068 (simplify!544 (ite c!520401 (regTwo!19691 (regOne!19691 r!17423)) (regOne!19690 (regOne!19691 r!17423)))))))

(declare-fun b!3109746 () Bool)

(declare-fun c!520394 () Bool)

(declare-fun call!220072 () Bool)

(assert (=> b!3109746 (= c!520394 call!220072)))

(declare-fun e!1942681 () Regex!9589)

(assert (=> b!3109746 (= e!1942686 e!1942681)))

(declare-fun b!3109747 () Bool)

(declare-fun e!1942675 () Regex!9589)

(declare-fun lt!1057238 () Regex!9589)

(declare-fun lt!1057233 () Regex!9589)

(assert (=> b!3109747 (= e!1942675 (Concat!14910 lt!1057238 lt!1057233))))

(declare-fun b!3109748 () Bool)

(declare-fun e!1942673 () Bool)

(assert (=> b!3109748 (= e!1942673 call!220071)))

(declare-fun b!3109749 () Bool)

(declare-fun e!1942676 () Bool)

(declare-fun lt!1057234 () Regex!9589)

(assert (=> b!3109749 (= e!1942676 (= (nullable!3231 lt!1057234) (nullable!3231 (regOne!19691 r!17423))))))

(declare-fun bm!220064 () Bool)

(declare-fun c!520393 () Bool)

(declare-fun call!220067 () Bool)

(declare-fun lt!1057236 () Regex!9589)

(assert (=> bm!220064 (= call!220067 (isEmptyExpr!641 (ite c!520393 lt!1057236 lt!1057233)))))

(declare-fun b!3109750 () Bool)

(declare-fun e!1942682 () Regex!9589)

(declare-fun e!1942683 () Regex!9589)

(assert (=> b!3109750 (= e!1942682 e!1942683)))

(assert (=> b!3109750 (= c!520393 ((_ is Star!9589) (regOne!19691 r!17423)))))

(declare-fun bm!220065 () Bool)

(assert (=> bm!220065 (= call!220071 (isEmptyLang!640 (ite c!520401 lt!1057237 lt!1057233)))))

(declare-fun b!3109751 () Bool)

(declare-fun e!1942680 () Bool)

(assert (=> b!3109751 (= e!1942680 call!220067)))

(declare-fun call!220073 () Bool)

(declare-fun bm!220066 () Bool)

(assert (=> bm!220066 (= call!220073 (isEmptyLang!640 (ite c!520393 lt!1057236 (ite c!520401 lt!1057235 lt!1057238))))))

(declare-fun b!3109752 () Bool)

(assert (=> b!3109752 (= e!1942681 (Union!9589 lt!1057237 lt!1057235))))

(declare-fun b!3109753 () Bool)

(declare-fun e!1942679 () Regex!9589)

(assert (=> b!3109753 (= e!1942674 e!1942679)))

(assert (=> b!3109753 (= lt!1057238 call!220068)))

(assert (=> b!3109753 (= lt!1057233 call!220070)))

(declare-fun res!1273199 () Bool)

(assert (=> b!3109753 (= res!1273199 call!220072)))

(assert (=> b!3109753 (=> res!1273199 e!1942673)))

(declare-fun c!520395 () Bool)

(assert (=> b!3109753 (= c!520395 e!1942673)))

(declare-fun b!3109754 () Bool)

(assert (=> b!3109754 (= e!1942686 lt!1057235)))

(declare-fun b!3109755 () Bool)

(declare-fun c!520396 () Bool)

(assert (=> b!3109755 (= c!520396 ((_ is EmptyExpr!9589) (regOne!19691 r!17423)))))

(declare-fun e!1942684 () Regex!9589)

(assert (=> b!3109755 (= e!1942684 e!1942682)))

(declare-fun b!3109756 () Bool)

(declare-fun e!1942677 () Regex!9589)

(assert (=> b!3109756 (= e!1942677 (Star!9589 lt!1057236))))

(declare-fun b!3109757 () Bool)

(declare-fun e!1942685 () Regex!9589)

(assert (=> b!3109757 (= e!1942685 e!1942675)))

(declare-fun c!520392 () Bool)

(assert (=> b!3109757 (= c!520392 call!220067)))

(declare-fun d!861662 () Bool)

(assert (=> d!861662 e!1942676))

(declare-fun res!1273200 () Bool)

(assert (=> d!861662 (=> (not res!1273200) (not e!1942676))))

(assert (=> d!861662 (= res!1273200 (validRegex!4322 lt!1057234))))

(declare-fun e!1942678 () Regex!9589)

(assert (=> d!861662 (= lt!1057234 e!1942678)))

(declare-fun c!520397 () Bool)

(assert (=> d!861662 (= c!520397 ((_ is EmptyLang!9589) (regOne!19691 r!17423)))))

(assert (=> d!861662 (validRegex!4322 (regOne!19691 r!17423))))

(assert (=> d!861662 (= (simplify!544 (regOne!19691 r!17423)) lt!1057234)))

(declare-fun bm!220062 () Bool)

(declare-fun call!220069 () Regex!9589)

(assert (=> bm!220062 (= call!220070 call!220069)))

(declare-fun b!3109758 () Bool)

(assert (=> b!3109758 (= e!1942681 lt!1057237)))

(declare-fun b!3109759 () Bool)

(assert (=> b!3109759 (= c!520401 ((_ is Union!9589) (regOne!19691 r!17423)))))

(assert (=> b!3109759 (= e!1942683 e!1942674)))

(declare-fun b!3109760 () Bool)

(assert (=> b!3109760 (= e!1942678 e!1942684)))

(declare-fun c!520399 () Bool)

(assert (=> b!3109760 (= c!520399 ((_ is ElementMatch!9589) (regOne!19691 r!17423)))))

(declare-fun b!3109761 () Bool)

(assert (=> b!3109761 (= e!1942677 EmptyExpr!9589)))

(declare-fun b!3109762 () Bool)

(assert (=> b!3109762 (= e!1942682 EmptyExpr!9589)))

(declare-fun b!3109763 () Bool)

(assert (=> b!3109763 (= e!1942678 EmptyLang!9589)))

(declare-fun b!3109764 () Bool)

(assert (=> b!3109764 (= e!1942684 (regOne!19691 r!17423))))

(declare-fun b!3109765 () Bool)

(assert (=> b!3109765 (= e!1942685 lt!1057233)))

(declare-fun bm!220067 () Bool)

(assert (=> bm!220067 (= call!220072 call!220073)))

(declare-fun b!3109766 () Bool)

(declare-fun c!520402 () Bool)

(assert (=> b!3109766 (= c!520402 e!1942680)))

(declare-fun res!1273198 () Bool)

(assert (=> b!3109766 (=> res!1273198 e!1942680)))

(assert (=> b!3109766 (= res!1273198 call!220073)))

(assert (=> b!3109766 (= lt!1057236 call!220069)))

(assert (=> b!3109766 (= e!1942683 e!1942677)))

(declare-fun b!3109767 () Bool)

(assert (=> b!3109767 (= e!1942679 EmptyLang!9589)))

(declare-fun b!3109768 () Bool)

(declare-fun c!520398 () Bool)

(assert (=> b!3109768 (= c!520398 (isEmptyExpr!641 lt!1057238))))

(assert (=> b!3109768 (= e!1942679 e!1942685)))

(declare-fun b!3109769 () Bool)

(assert (=> b!3109769 (= e!1942675 lt!1057238)))

(declare-fun bm!220068 () Bool)

(assert (=> bm!220068 (= call!220069 (simplify!544 (ite c!520393 (reg!9918 (regOne!19691 r!17423)) (ite c!520401 (regOne!19691 (regOne!19691 r!17423)) (regTwo!19690 (regOne!19691 r!17423))))))))

(assert (= (and d!861662 c!520397) b!3109763))

(assert (= (and d!861662 (not c!520397)) b!3109760))

(assert (= (and b!3109760 c!520399) b!3109764))

(assert (= (and b!3109760 (not c!520399)) b!3109755))

(assert (= (and b!3109755 c!520396) b!3109762))

(assert (= (and b!3109755 (not c!520396)) b!3109750))

(assert (= (and b!3109750 c!520393) b!3109766))

(assert (= (and b!3109750 (not c!520393)) b!3109759))

(assert (= (and b!3109766 (not res!1273198)) b!3109751))

(assert (= (and b!3109766 c!520402) b!3109761))

(assert (= (and b!3109766 (not c!520402)) b!3109756))

(assert (= (and b!3109759 c!520401) b!3109745))

(assert (= (and b!3109759 (not c!520401)) b!3109753))

(assert (= (and b!3109745 c!520400) b!3109754))

(assert (= (and b!3109745 (not c!520400)) b!3109746))

(assert (= (and b!3109746 c!520394) b!3109758))

(assert (= (and b!3109746 (not c!520394)) b!3109752))

(assert (= (and b!3109753 (not res!1273199)) b!3109748))

(assert (= (and b!3109753 c!520395) b!3109767))

(assert (= (and b!3109753 (not c!520395)) b!3109768))

(assert (= (and b!3109768 c!520398) b!3109765))

(assert (= (and b!3109768 (not c!520398)) b!3109757))

(assert (= (and b!3109757 c!520392) b!3109769))

(assert (= (and b!3109757 (not c!520392)) b!3109747))

(assert (= (or b!3109745 b!3109753) bm!220062))

(assert (= (or b!3109745 b!3109753) bm!220063))

(assert (= (or b!3109745 b!3109748) bm!220065))

(assert (= (or b!3109746 b!3109753) bm!220067))

(assert (= (or b!3109751 b!3109757) bm!220064))

(assert (= (or b!3109766 bm!220062) bm!220068))

(assert (= (or b!3109766 bm!220067) bm!220066))

(assert (= (and d!861662 res!1273200) b!3109749))

(declare-fun m!3404237 () Bool)

(assert (=> bm!220064 m!3404237))

(declare-fun m!3404239 () Bool)

(assert (=> bm!220065 m!3404239))

(declare-fun m!3404241 () Bool)

(assert (=> bm!220063 m!3404241))

(declare-fun m!3404243 () Bool)

(assert (=> b!3109768 m!3404243))

(declare-fun m!3404245 () Bool)

(assert (=> b!3109749 m!3404245))

(declare-fun m!3404247 () Bool)

(assert (=> b!3109749 m!3404247))

(declare-fun m!3404249 () Bool)

(assert (=> bm!220066 m!3404249))

(declare-fun m!3404251 () Bool)

(assert (=> bm!220068 m!3404251))

(declare-fun m!3404253 () Bool)

(assert (=> d!861662 m!3404253))

(assert (=> d!861662 m!3404147))

(assert (=> b!3109506 d!861662))

(declare-fun b!3109770 () Bool)

(declare-fun e!1942691 () Bool)

(declare-fun e!1942688 () Bool)

(assert (=> b!3109770 (= e!1942691 e!1942688)))

(declare-fun res!1273204 () Bool)

(assert (=> b!3109770 (=> (not res!1273204) (not e!1942688))))

(declare-fun call!220076 () Bool)

(assert (=> b!3109770 (= res!1273204 call!220076)))

(declare-fun b!3109771 () Bool)

(declare-fun e!1942689 () Bool)

(declare-fun call!220074 () Bool)

(assert (=> b!3109771 (= e!1942689 call!220074)))

(declare-fun b!3109773 () Bool)

(declare-fun e!1942693 () Bool)

(assert (=> b!3109773 (= e!1942693 e!1942689)))

(declare-fun res!1273202 () Bool)

(assert (=> b!3109773 (= res!1273202 (not (nullable!3231 (reg!9918 (regOne!19691 r!17423)))))))

(assert (=> b!3109773 (=> (not res!1273202) (not e!1942689))))

(declare-fun bm!220069 () Bool)

(declare-fun c!520404 () Bool)

(declare-fun c!520403 () Bool)

(assert (=> bm!220069 (= call!220074 (validRegex!4322 (ite c!520403 (reg!9918 (regOne!19691 r!17423)) (ite c!520404 (regOne!19691 (regOne!19691 r!17423)) (regTwo!19690 (regOne!19691 r!17423))))))))

(declare-fun b!3109774 () Bool)

(declare-fun call!220075 () Bool)

(assert (=> b!3109774 (= e!1942688 call!220075)))

(declare-fun b!3109775 () Bool)

(declare-fun e!1942687 () Bool)

(assert (=> b!3109775 (= e!1942693 e!1942687)))

(assert (=> b!3109775 (= c!520404 ((_ is Union!9589) (regOne!19691 r!17423)))))

(declare-fun b!3109776 () Bool)

(declare-fun e!1942692 () Bool)

(assert (=> b!3109776 (= e!1942692 call!220076)))

(declare-fun b!3109777 () Bool)

(declare-fun res!1273203 () Bool)

(assert (=> b!3109777 (=> res!1273203 e!1942691)))

(assert (=> b!3109777 (= res!1273203 (not ((_ is Concat!14910) (regOne!19691 r!17423))))))

(assert (=> b!3109777 (= e!1942687 e!1942691)))

(declare-fun bm!220070 () Bool)

(assert (=> bm!220070 (= call!220076 (validRegex!4322 (ite c!520404 (regTwo!19691 (regOne!19691 r!17423)) (regOne!19690 (regOne!19691 r!17423)))))))

(declare-fun b!3109772 () Bool)

(declare-fun res!1273205 () Bool)

(assert (=> b!3109772 (=> (not res!1273205) (not e!1942692))))

(assert (=> b!3109772 (= res!1273205 call!220075)))

(assert (=> b!3109772 (= e!1942687 e!1942692)))

(declare-fun d!861664 () Bool)

(declare-fun res!1273201 () Bool)

(declare-fun e!1942690 () Bool)

(assert (=> d!861664 (=> res!1273201 e!1942690)))

(assert (=> d!861664 (= res!1273201 ((_ is ElementMatch!9589) (regOne!19691 r!17423)))))

(assert (=> d!861664 (= (validRegex!4322 (regOne!19691 r!17423)) e!1942690)))

(declare-fun bm!220071 () Bool)

(assert (=> bm!220071 (= call!220075 call!220074)))

(declare-fun b!3109778 () Bool)

(assert (=> b!3109778 (= e!1942690 e!1942693)))

(assert (=> b!3109778 (= c!520403 ((_ is Star!9589) (regOne!19691 r!17423)))))

(assert (= (and d!861664 (not res!1273201)) b!3109778))

(assert (= (and b!3109778 c!520403) b!3109773))

(assert (= (and b!3109778 (not c!520403)) b!3109775))

(assert (= (and b!3109773 res!1273202) b!3109771))

(assert (= (and b!3109775 c!520404) b!3109772))

(assert (= (and b!3109775 (not c!520404)) b!3109777))

(assert (= (and b!3109772 res!1273205) b!3109776))

(assert (= (and b!3109777 (not res!1273203)) b!3109770))

(assert (= (and b!3109770 res!1273204) b!3109774))

(assert (= (or b!3109772 b!3109774) bm!220071))

(assert (= (or b!3109776 b!3109770) bm!220070))

(assert (= (or b!3109771 bm!220071) bm!220069))

(declare-fun m!3404255 () Bool)

(assert (=> b!3109773 m!3404255))

(declare-fun m!3404257 () Bool)

(assert (=> bm!220069 m!3404257))

(declare-fun m!3404259 () Bool)

(assert (=> bm!220070 m!3404259))

(assert (=> b!3109511 d!861664))

(declare-fun b!3109807 () Bool)

(declare-fun res!1273227 () Bool)

(declare-fun e!1942714 () Bool)

(assert (=> b!3109807 (=> res!1273227 e!1942714)))

(declare-fun e!1942711 () Bool)

(assert (=> b!3109807 (= res!1273227 e!1942711)))

(declare-fun res!1273226 () Bool)

(assert (=> b!3109807 (=> (not res!1273226) (not e!1942711))))

(declare-fun lt!1057241 () Bool)

(assert (=> b!3109807 (= res!1273226 lt!1057241)))

(declare-fun b!3109808 () Bool)

(declare-fun e!1942710 () Bool)

(declare-fun e!1942708 () Bool)

(assert (=> b!3109808 (= e!1942710 e!1942708)))

(declare-fun res!1273229 () Bool)

(assert (=> b!3109808 (=> res!1273229 e!1942708)))

(declare-fun call!220079 () Bool)

(assert (=> b!3109808 (= res!1273229 call!220079)))

(declare-fun d!861666 () Bool)

(declare-fun e!1942709 () Bool)

(assert (=> d!861666 e!1942709))

(declare-fun c!520412 () Bool)

(assert (=> d!861666 (= c!520412 ((_ is EmptyExpr!9589) (regOne!19691 r!17423)))))

(declare-fun e!1942713 () Bool)

(assert (=> d!861666 (= lt!1057241 e!1942713)))

(declare-fun c!520413 () Bool)

(declare-fun isEmpty!19677 (List!35454) Bool)

(assert (=> d!861666 (= c!520413 (isEmpty!19677 s!11993))))

(assert (=> d!861666 (validRegex!4322 (regOne!19691 r!17423))))

(assert (=> d!861666 (= (matchR!4471 (regOne!19691 r!17423) s!11993) lt!1057241)))

(declare-fun b!3109809 () Bool)

(declare-fun res!1273228 () Bool)

(assert (=> b!3109809 (=> res!1273228 e!1942714)))

(assert (=> b!3109809 (= res!1273228 (not ((_ is ElementMatch!9589) (regOne!19691 r!17423))))))

(declare-fun e!1942712 () Bool)

(assert (=> b!3109809 (= e!1942712 e!1942714)))

(declare-fun b!3109810 () Bool)

(assert (=> b!3109810 (= e!1942709 e!1942712)))

(declare-fun c!520411 () Bool)

(assert (=> b!3109810 (= c!520411 ((_ is EmptyLang!9589) (regOne!19691 r!17423)))))

(declare-fun b!3109811 () Bool)

(declare-fun res!1273222 () Bool)

(assert (=> b!3109811 (=> (not res!1273222) (not e!1942711))))

(assert (=> b!3109811 (= res!1273222 (not call!220079))))

(declare-fun bm!220074 () Bool)

(assert (=> bm!220074 (= call!220079 (isEmpty!19677 s!11993))))

(declare-fun b!3109812 () Bool)

(assert (=> b!3109812 (= e!1942709 (= lt!1057241 call!220079))))

(declare-fun b!3109813 () Bool)

(declare-fun res!1273223 () Bool)

(assert (=> b!3109813 (=> (not res!1273223) (not e!1942711))))

(declare-fun tail!5111 (List!35454) List!35454)

(assert (=> b!3109813 (= res!1273223 (isEmpty!19677 (tail!5111 s!11993)))))

(declare-fun b!3109814 () Bool)

(assert (=> b!3109814 (= e!1942714 e!1942710)))

(declare-fun res!1273224 () Bool)

(assert (=> b!3109814 (=> (not res!1273224) (not e!1942710))))

(assert (=> b!3109814 (= res!1273224 (not lt!1057241))))

(declare-fun b!3109815 () Bool)

(declare-fun head!6885 (List!35454) C!19364)

(assert (=> b!3109815 (= e!1942711 (= (head!6885 s!11993) (c!520323 (regOne!19691 r!17423))))))

(declare-fun b!3109816 () Bool)

(assert (=> b!3109816 (= e!1942712 (not lt!1057241))))

(declare-fun b!3109817 () Bool)

(assert (=> b!3109817 (= e!1942708 (not (= (head!6885 s!11993) (c!520323 (regOne!19691 r!17423)))))))

(declare-fun b!3109818 () Bool)

(declare-fun derivativeStep!2826 (Regex!9589 C!19364) Regex!9589)

(assert (=> b!3109818 (= e!1942713 (matchR!4471 (derivativeStep!2826 (regOne!19691 r!17423) (head!6885 s!11993)) (tail!5111 s!11993)))))

(declare-fun b!3109819 () Bool)

(declare-fun res!1273225 () Bool)

(assert (=> b!3109819 (=> res!1273225 e!1942708)))

(assert (=> b!3109819 (= res!1273225 (not (isEmpty!19677 (tail!5111 s!11993))))))

(declare-fun b!3109820 () Bool)

(assert (=> b!3109820 (= e!1942713 (nullable!3231 (regOne!19691 r!17423)))))

(assert (= (and d!861666 c!520413) b!3109820))

(assert (= (and d!861666 (not c!520413)) b!3109818))

(assert (= (and d!861666 c!520412) b!3109812))

(assert (= (and d!861666 (not c!520412)) b!3109810))

(assert (= (and b!3109810 c!520411) b!3109816))

(assert (= (and b!3109810 (not c!520411)) b!3109809))

(assert (= (and b!3109809 (not res!1273228)) b!3109807))

(assert (= (and b!3109807 res!1273226) b!3109811))

(assert (= (and b!3109811 res!1273222) b!3109813))

(assert (= (and b!3109813 res!1273223) b!3109815))

(assert (= (and b!3109807 (not res!1273227)) b!3109814))

(assert (= (and b!3109814 res!1273224) b!3109808))

(assert (= (and b!3109808 (not res!1273229)) b!3109819))

(assert (= (and b!3109819 (not res!1273225)) b!3109817))

(assert (= (or b!3109812 b!3109808 b!3109811) bm!220074))

(declare-fun m!3404261 () Bool)

(assert (=> b!3109813 m!3404261))

(assert (=> b!3109813 m!3404261))

(declare-fun m!3404263 () Bool)

(assert (=> b!3109813 m!3404263))

(declare-fun m!3404265 () Bool)

(assert (=> d!861666 m!3404265))

(assert (=> d!861666 m!3404147))

(assert (=> bm!220074 m!3404265))

(declare-fun m!3404267 () Bool)

(assert (=> b!3109815 m!3404267))

(assert (=> b!3109817 m!3404267))

(assert (=> b!3109820 m!3404247))

(assert (=> b!3109818 m!3404267))

(assert (=> b!3109818 m!3404267))

(declare-fun m!3404269 () Bool)

(assert (=> b!3109818 m!3404269))

(assert (=> b!3109818 m!3404261))

(assert (=> b!3109818 m!3404269))

(assert (=> b!3109818 m!3404261))

(declare-fun m!3404271 () Bool)

(assert (=> b!3109818 m!3404271))

(assert (=> b!3109819 m!3404261))

(assert (=> b!3109819 m!3404261))

(assert (=> b!3109819 m!3404263))

(assert (=> b!3109511 d!861666))

(declare-fun d!861668 () Bool)

(assert (=> d!861668 (= (matchR!4471 (regOne!19691 r!17423) s!11993) (matchR!4471 (simplify!544 (regOne!19691 r!17423)) s!11993))))

(declare-fun lt!1057244 () Unit!49617)

(declare-fun choose!18391 (Regex!9589 List!35454) Unit!49617)

(assert (=> d!861668 (= lt!1057244 (choose!18391 (regOne!19691 r!17423) s!11993))))

(assert (=> d!861668 (validRegex!4322 (regOne!19691 r!17423))))

(assert (=> d!861668 (= (lemmaSimplifySound!342 (regOne!19691 r!17423) s!11993) lt!1057244)))

(declare-fun bs!535776 () Bool)

(assert (= bs!535776 d!861668))

(assert (=> bs!535776 m!3404149))

(assert (=> bs!535776 m!3404171))

(declare-fun m!3404273 () Bool)

(assert (=> bs!535776 m!3404273))

(assert (=> bs!535776 m!3404171))

(declare-fun m!3404275 () Bool)

(assert (=> bs!535776 m!3404275))

(assert (=> bs!535776 m!3404147))

(assert (=> b!3109511 d!861668))

(declare-fun b!3109821 () Bool)

(declare-fun res!1273235 () Bool)

(declare-fun e!1942721 () Bool)

(assert (=> b!3109821 (=> res!1273235 e!1942721)))

(declare-fun e!1942718 () Bool)

(assert (=> b!3109821 (= res!1273235 e!1942718)))

(declare-fun res!1273234 () Bool)

(assert (=> b!3109821 (=> (not res!1273234) (not e!1942718))))

(declare-fun lt!1057245 () Bool)

(assert (=> b!3109821 (= res!1273234 lt!1057245)))

(declare-fun b!3109822 () Bool)

(declare-fun e!1942717 () Bool)

(declare-fun e!1942715 () Bool)

(assert (=> b!3109822 (= e!1942717 e!1942715)))

(declare-fun res!1273237 () Bool)

(assert (=> b!3109822 (=> res!1273237 e!1942715)))

(declare-fun call!220080 () Bool)

(assert (=> b!3109822 (= res!1273237 call!220080)))

(declare-fun d!861670 () Bool)

(declare-fun e!1942716 () Bool)

(assert (=> d!861670 e!1942716))

(declare-fun c!520415 () Bool)

(assert (=> d!861670 (= c!520415 ((_ is EmptyExpr!9589) (Union!9589 lt!1057202 lt!1057203)))))

(declare-fun e!1942720 () Bool)

(assert (=> d!861670 (= lt!1057245 e!1942720)))

(declare-fun c!520416 () Bool)

(assert (=> d!861670 (= c!520416 (isEmpty!19677 s!11993))))

(assert (=> d!861670 (validRegex!4322 (Union!9589 lt!1057202 lt!1057203))))

(assert (=> d!861670 (= (matchR!4471 (Union!9589 lt!1057202 lt!1057203) s!11993) lt!1057245)))

(declare-fun b!3109823 () Bool)

(declare-fun res!1273236 () Bool)

(assert (=> b!3109823 (=> res!1273236 e!1942721)))

(assert (=> b!3109823 (= res!1273236 (not ((_ is ElementMatch!9589) (Union!9589 lt!1057202 lt!1057203))))))

(declare-fun e!1942719 () Bool)

(assert (=> b!3109823 (= e!1942719 e!1942721)))

(declare-fun b!3109824 () Bool)

(assert (=> b!3109824 (= e!1942716 e!1942719)))

(declare-fun c!520414 () Bool)

(assert (=> b!3109824 (= c!520414 ((_ is EmptyLang!9589) (Union!9589 lt!1057202 lt!1057203)))))

(declare-fun b!3109825 () Bool)

(declare-fun res!1273230 () Bool)

(assert (=> b!3109825 (=> (not res!1273230) (not e!1942718))))

(assert (=> b!3109825 (= res!1273230 (not call!220080))))

(declare-fun bm!220075 () Bool)

(assert (=> bm!220075 (= call!220080 (isEmpty!19677 s!11993))))

(declare-fun b!3109826 () Bool)

(assert (=> b!3109826 (= e!1942716 (= lt!1057245 call!220080))))

(declare-fun b!3109827 () Bool)

(declare-fun res!1273231 () Bool)

(assert (=> b!3109827 (=> (not res!1273231) (not e!1942718))))

(assert (=> b!3109827 (= res!1273231 (isEmpty!19677 (tail!5111 s!11993)))))

(declare-fun b!3109828 () Bool)

(assert (=> b!3109828 (= e!1942721 e!1942717)))

(declare-fun res!1273232 () Bool)

(assert (=> b!3109828 (=> (not res!1273232) (not e!1942717))))

(assert (=> b!3109828 (= res!1273232 (not lt!1057245))))

(declare-fun b!3109829 () Bool)

(assert (=> b!3109829 (= e!1942718 (= (head!6885 s!11993) (c!520323 (Union!9589 lt!1057202 lt!1057203))))))

(declare-fun b!3109830 () Bool)

(assert (=> b!3109830 (= e!1942719 (not lt!1057245))))

(declare-fun b!3109831 () Bool)

(assert (=> b!3109831 (= e!1942715 (not (= (head!6885 s!11993) (c!520323 (Union!9589 lt!1057202 lt!1057203)))))))

(declare-fun b!3109832 () Bool)

(assert (=> b!3109832 (= e!1942720 (matchR!4471 (derivativeStep!2826 (Union!9589 lt!1057202 lt!1057203) (head!6885 s!11993)) (tail!5111 s!11993)))))

(declare-fun b!3109833 () Bool)

(declare-fun res!1273233 () Bool)

(assert (=> b!3109833 (=> res!1273233 e!1942715)))

(assert (=> b!3109833 (= res!1273233 (not (isEmpty!19677 (tail!5111 s!11993))))))

(declare-fun b!3109834 () Bool)

(assert (=> b!3109834 (= e!1942720 (nullable!3231 (Union!9589 lt!1057202 lt!1057203)))))

(assert (= (and d!861670 c!520416) b!3109834))

(assert (= (and d!861670 (not c!520416)) b!3109832))

(assert (= (and d!861670 c!520415) b!3109826))

(assert (= (and d!861670 (not c!520415)) b!3109824))

(assert (= (and b!3109824 c!520414) b!3109830))

(assert (= (and b!3109824 (not c!520414)) b!3109823))

(assert (= (and b!3109823 (not res!1273236)) b!3109821))

(assert (= (and b!3109821 res!1273234) b!3109825))

(assert (= (and b!3109825 res!1273230) b!3109827))

(assert (= (and b!3109827 res!1273231) b!3109829))

(assert (= (and b!3109821 (not res!1273235)) b!3109828))

(assert (= (and b!3109828 res!1273232) b!3109822))

(assert (= (and b!3109822 (not res!1273237)) b!3109833))

(assert (= (and b!3109833 (not res!1273233)) b!3109831))

(assert (= (or b!3109826 b!3109822 b!3109825) bm!220075))

(assert (=> b!3109827 m!3404261))

(assert (=> b!3109827 m!3404261))

(assert (=> b!3109827 m!3404263))

(assert (=> d!861670 m!3404265))

(declare-fun m!3404277 () Bool)

(assert (=> d!861670 m!3404277))

(assert (=> bm!220075 m!3404265))

(assert (=> b!3109829 m!3404267))

(assert (=> b!3109831 m!3404267))

(declare-fun m!3404279 () Bool)

(assert (=> b!3109834 m!3404279))

(assert (=> b!3109832 m!3404267))

(assert (=> b!3109832 m!3404267))

(declare-fun m!3404281 () Bool)

(assert (=> b!3109832 m!3404281))

(assert (=> b!3109832 m!3404261))

(assert (=> b!3109832 m!3404281))

(assert (=> b!3109832 m!3404261))

(declare-fun m!3404283 () Bool)

(assert (=> b!3109832 m!3404283))

(assert (=> b!3109833 m!3404261))

(assert (=> b!3109833 m!3404261))

(assert (=> b!3109833 m!3404263))

(assert (=> b!3109505 d!861670))

(declare-fun b!3109835 () Bool)

(declare-fun res!1273243 () Bool)

(declare-fun e!1942728 () Bool)

(assert (=> b!3109835 (=> res!1273243 e!1942728)))

(declare-fun e!1942725 () Bool)

(assert (=> b!3109835 (= res!1273243 e!1942725)))

(declare-fun res!1273242 () Bool)

(assert (=> b!3109835 (=> (not res!1273242) (not e!1942725))))

(declare-fun lt!1057246 () Bool)

(assert (=> b!3109835 (= res!1273242 lt!1057246)))

(declare-fun b!3109836 () Bool)

(declare-fun e!1942724 () Bool)

(declare-fun e!1942722 () Bool)

(assert (=> b!3109836 (= e!1942724 e!1942722)))

(declare-fun res!1273245 () Bool)

(assert (=> b!3109836 (=> res!1273245 e!1942722)))

(declare-fun call!220081 () Bool)

(assert (=> b!3109836 (= res!1273245 call!220081)))

(declare-fun d!861672 () Bool)

(declare-fun e!1942723 () Bool)

(assert (=> d!861672 e!1942723))

(declare-fun c!520418 () Bool)

(assert (=> d!861672 (= c!520418 ((_ is EmptyExpr!9589) lt!1057202))))

(declare-fun e!1942727 () Bool)

(assert (=> d!861672 (= lt!1057246 e!1942727)))

(declare-fun c!520419 () Bool)

(assert (=> d!861672 (= c!520419 (isEmpty!19677 s!11993))))

(assert (=> d!861672 (validRegex!4322 lt!1057202)))

(assert (=> d!861672 (= (matchR!4471 lt!1057202 s!11993) lt!1057246)))

(declare-fun b!3109837 () Bool)

(declare-fun res!1273244 () Bool)

(assert (=> b!3109837 (=> res!1273244 e!1942728)))

(assert (=> b!3109837 (= res!1273244 (not ((_ is ElementMatch!9589) lt!1057202)))))

(declare-fun e!1942726 () Bool)

(assert (=> b!3109837 (= e!1942726 e!1942728)))

(declare-fun b!3109838 () Bool)

(assert (=> b!3109838 (= e!1942723 e!1942726)))

(declare-fun c!520417 () Bool)

(assert (=> b!3109838 (= c!520417 ((_ is EmptyLang!9589) lt!1057202))))

(declare-fun b!3109839 () Bool)

(declare-fun res!1273238 () Bool)

(assert (=> b!3109839 (=> (not res!1273238) (not e!1942725))))

(assert (=> b!3109839 (= res!1273238 (not call!220081))))

(declare-fun bm!220076 () Bool)

(assert (=> bm!220076 (= call!220081 (isEmpty!19677 s!11993))))

(declare-fun b!3109840 () Bool)

(assert (=> b!3109840 (= e!1942723 (= lt!1057246 call!220081))))

(declare-fun b!3109841 () Bool)

(declare-fun res!1273239 () Bool)

(assert (=> b!3109841 (=> (not res!1273239) (not e!1942725))))

(assert (=> b!3109841 (= res!1273239 (isEmpty!19677 (tail!5111 s!11993)))))

(declare-fun b!3109842 () Bool)

(assert (=> b!3109842 (= e!1942728 e!1942724)))

(declare-fun res!1273240 () Bool)

(assert (=> b!3109842 (=> (not res!1273240) (not e!1942724))))

(assert (=> b!3109842 (= res!1273240 (not lt!1057246))))

(declare-fun b!3109843 () Bool)

(assert (=> b!3109843 (= e!1942725 (= (head!6885 s!11993) (c!520323 lt!1057202)))))

(declare-fun b!3109844 () Bool)

(assert (=> b!3109844 (= e!1942726 (not lt!1057246))))

(declare-fun b!3109845 () Bool)

(assert (=> b!3109845 (= e!1942722 (not (= (head!6885 s!11993) (c!520323 lt!1057202))))))

(declare-fun b!3109846 () Bool)

(assert (=> b!3109846 (= e!1942727 (matchR!4471 (derivativeStep!2826 lt!1057202 (head!6885 s!11993)) (tail!5111 s!11993)))))

(declare-fun b!3109847 () Bool)

(declare-fun res!1273241 () Bool)

(assert (=> b!3109847 (=> res!1273241 e!1942722)))

(assert (=> b!3109847 (= res!1273241 (not (isEmpty!19677 (tail!5111 s!11993))))))

(declare-fun b!3109848 () Bool)

(assert (=> b!3109848 (= e!1942727 (nullable!3231 lt!1057202))))

(assert (= (and d!861672 c!520419) b!3109848))

(assert (= (and d!861672 (not c!520419)) b!3109846))

(assert (= (and d!861672 c!520418) b!3109840))

(assert (= (and d!861672 (not c!520418)) b!3109838))

(assert (= (and b!3109838 c!520417) b!3109844))

(assert (= (and b!3109838 (not c!520417)) b!3109837))

(assert (= (and b!3109837 (not res!1273244)) b!3109835))

(assert (= (and b!3109835 res!1273242) b!3109839))

(assert (= (and b!3109839 res!1273238) b!3109841))

(assert (= (and b!3109841 res!1273239) b!3109843))

(assert (= (and b!3109835 (not res!1273243)) b!3109842))

(assert (= (and b!3109842 res!1273240) b!3109836))

(assert (= (and b!3109836 (not res!1273245)) b!3109847))

(assert (= (and b!3109847 (not res!1273241)) b!3109845))

(assert (= (or b!3109840 b!3109836 b!3109839) bm!220076))

(assert (=> b!3109841 m!3404261))

(assert (=> b!3109841 m!3404261))

(assert (=> b!3109841 m!3404263))

(assert (=> d!861672 m!3404265))

(declare-fun m!3404285 () Bool)

(assert (=> d!861672 m!3404285))

(assert (=> bm!220076 m!3404265))

(assert (=> b!3109843 m!3404267))

(assert (=> b!3109845 m!3404267))

(declare-fun m!3404287 () Bool)

(assert (=> b!3109848 m!3404287))

(assert (=> b!3109846 m!3404267))

(assert (=> b!3109846 m!3404267))

(declare-fun m!3404289 () Bool)

(assert (=> b!3109846 m!3404289))

(assert (=> b!3109846 m!3404261))

(assert (=> b!3109846 m!3404289))

(assert (=> b!3109846 m!3404261))

(declare-fun m!3404291 () Bool)

(assert (=> b!3109846 m!3404291))

(assert (=> b!3109847 m!3404261))

(assert (=> b!3109847 m!3404261))

(assert (=> b!3109847 m!3404263))

(assert (=> b!3109510 d!861672))

(declare-fun d!861674 () Bool)

(declare-fun e!1942733 () Bool)

(assert (=> d!861674 e!1942733))

(declare-fun res!1273250 () Bool)

(assert (=> d!861674 (=> res!1273250 e!1942733)))

(assert (=> d!861674 (= res!1273250 (matchR!4471 lt!1057202 s!11993))))

(declare-fun lt!1057249 () Unit!49617)

(declare-fun choose!18392 (Regex!9589 Regex!9589 List!35454) Unit!49617)

(assert (=> d!861674 (= lt!1057249 (choose!18392 lt!1057202 lt!1057203 s!11993))))

(declare-fun e!1942734 () Bool)

(assert (=> d!861674 e!1942734))

(declare-fun res!1273251 () Bool)

(assert (=> d!861674 (=> (not res!1273251) (not e!1942734))))

(assert (=> d!861674 (= res!1273251 (validRegex!4322 lt!1057202))))

(assert (=> d!861674 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!320 lt!1057202 lt!1057203 s!11993) lt!1057249)))

(declare-fun b!3109853 () Bool)

(assert (=> b!3109853 (= e!1942734 (validRegex!4322 lt!1057203))))

(declare-fun b!3109854 () Bool)

(assert (=> b!3109854 (= e!1942733 (matchR!4471 lt!1057203 s!11993))))

(assert (= (and d!861674 res!1273251) b!3109853))

(assert (= (and d!861674 (not res!1273250)) b!3109854))

(assert (=> d!861674 m!3404143))

(declare-fun m!3404293 () Bool)

(assert (=> d!861674 m!3404293))

(assert (=> d!861674 m!3404285))

(declare-fun m!3404295 () Bool)

(assert (=> b!3109853 m!3404295))

(assert (=> b!3109854 m!3404163))

(assert (=> b!3109510 d!861674))

(declare-fun b!3109855 () Bool)

(declare-fun res!1273257 () Bool)

(declare-fun e!1942741 () Bool)

(assert (=> b!3109855 (=> res!1273257 e!1942741)))

(declare-fun e!1942738 () Bool)

(assert (=> b!3109855 (= res!1273257 e!1942738)))

(declare-fun res!1273256 () Bool)

(assert (=> b!3109855 (=> (not res!1273256) (not e!1942738))))

(declare-fun lt!1057250 () Bool)

(assert (=> b!3109855 (= res!1273256 lt!1057250)))

(declare-fun b!3109856 () Bool)

(declare-fun e!1942737 () Bool)

(declare-fun e!1942735 () Bool)

(assert (=> b!3109856 (= e!1942737 e!1942735)))

(declare-fun res!1273259 () Bool)

(assert (=> b!3109856 (=> res!1273259 e!1942735)))

(declare-fun call!220082 () Bool)

(assert (=> b!3109856 (= res!1273259 call!220082)))

(declare-fun d!861676 () Bool)

(declare-fun e!1942736 () Bool)

(assert (=> d!861676 e!1942736))

(declare-fun c!520421 () Bool)

(assert (=> d!861676 (= c!520421 ((_ is EmptyExpr!9589) lt!1057203))))

(declare-fun e!1942740 () Bool)

(assert (=> d!861676 (= lt!1057250 e!1942740)))

(declare-fun c!520422 () Bool)

(assert (=> d!861676 (= c!520422 (isEmpty!19677 s!11993))))

(assert (=> d!861676 (validRegex!4322 lt!1057203)))

(assert (=> d!861676 (= (matchR!4471 lt!1057203 s!11993) lt!1057250)))

(declare-fun b!3109857 () Bool)

(declare-fun res!1273258 () Bool)

(assert (=> b!3109857 (=> res!1273258 e!1942741)))

(assert (=> b!3109857 (= res!1273258 (not ((_ is ElementMatch!9589) lt!1057203)))))

(declare-fun e!1942739 () Bool)

(assert (=> b!3109857 (= e!1942739 e!1942741)))

(declare-fun b!3109858 () Bool)

(assert (=> b!3109858 (= e!1942736 e!1942739)))

(declare-fun c!520420 () Bool)

(assert (=> b!3109858 (= c!520420 ((_ is EmptyLang!9589) lt!1057203))))

(declare-fun b!3109859 () Bool)

(declare-fun res!1273252 () Bool)

(assert (=> b!3109859 (=> (not res!1273252) (not e!1942738))))

(assert (=> b!3109859 (= res!1273252 (not call!220082))))

(declare-fun bm!220077 () Bool)

(assert (=> bm!220077 (= call!220082 (isEmpty!19677 s!11993))))

(declare-fun b!3109860 () Bool)

(assert (=> b!3109860 (= e!1942736 (= lt!1057250 call!220082))))

(declare-fun b!3109861 () Bool)

(declare-fun res!1273253 () Bool)

(assert (=> b!3109861 (=> (not res!1273253) (not e!1942738))))

(assert (=> b!3109861 (= res!1273253 (isEmpty!19677 (tail!5111 s!11993)))))

(declare-fun b!3109862 () Bool)

(assert (=> b!3109862 (= e!1942741 e!1942737)))

(declare-fun res!1273254 () Bool)

(assert (=> b!3109862 (=> (not res!1273254) (not e!1942737))))

(assert (=> b!3109862 (= res!1273254 (not lt!1057250))))

(declare-fun b!3109863 () Bool)

(assert (=> b!3109863 (= e!1942738 (= (head!6885 s!11993) (c!520323 lt!1057203)))))

(declare-fun b!3109864 () Bool)

(assert (=> b!3109864 (= e!1942739 (not lt!1057250))))

(declare-fun b!3109865 () Bool)

(assert (=> b!3109865 (= e!1942735 (not (= (head!6885 s!11993) (c!520323 lt!1057203))))))

(declare-fun b!3109866 () Bool)

(assert (=> b!3109866 (= e!1942740 (matchR!4471 (derivativeStep!2826 lt!1057203 (head!6885 s!11993)) (tail!5111 s!11993)))))

(declare-fun b!3109867 () Bool)

(declare-fun res!1273255 () Bool)

(assert (=> b!3109867 (=> res!1273255 e!1942735)))

(assert (=> b!3109867 (= res!1273255 (not (isEmpty!19677 (tail!5111 s!11993))))))

(declare-fun b!3109868 () Bool)

(assert (=> b!3109868 (= e!1942740 (nullable!3231 lt!1057203))))

(assert (= (and d!861676 c!520422) b!3109868))

(assert (= (and d!861676 (not c!520422)) b!3109866))

(assert (= (and d!861676 c!520421) b!3109860))

(assert (= (and d!861676 (not c!520421)) b!3109858))

(assert (= (and b!3109858 c!520420) b!3109864))

(assert (= (and b!3109858 (not c!520420)) b!3109857))

(assert (= (and b!3109857 (not res!1273258)) b!3109855))

(assert (= (and b!3109855 res!1273256) b!3109859))

(assert (= (and b!3109859 res!1273252) b!3109861))

(assert (= (and b!3109861 res!1273253) b!3109863))

(assert (= (and b!3109855 (not res!1273257)) b!3109862))

(assert (= (and b!3109862 res!1273254) b!3109856))

(assert (= (and b!3109856 (not res!1273259)) b!3109867))

(assert (= (and b!3109867 (not res!1273255)) b!3109865))

(assert (= (or b!3109860 b!3109856 b!3109859) bm!220077))

(assert (=> b!3109861 m!3404261))

(assert (=> b!3109861 m!3404261))

(assert (=> b!3109861 m!3404263))

(assert (=> d!861676 m!3404265))

(assert (=> d!861676 m!3404295))

(assert (=> bm!220077 m!3404265))

(assert (=> b!3109863 m!3404267))

(assert (=> b!3109865 m!3404267))

(declare-fun m!3404297 () Bool)

(assert (=> b!3109868 m!3404297))

(assert (=> b!3109866 m!3404267))

(assert (=> b!3109866 m!3404267))

(declare-fun m!3404299 () Bool)

(assert (=> b!3109866 m!3404299))

(assert (=> b!3109866 m!3404261))

(assert (=> b!3109866 m!3404299))

(assert (=> b!3109866 m!3404261))

(declare-fun m!3404301 () Bool)

(assert (=> b!3109866 m!3404301))

(assert (=> b!3109867 m!3404261))

(assert (=> b!3109867 m!3404261))

(assert (=> b!3109867 m!3404263))

(assert (=> b!3109515 d!861676))

(declare-fun b!3110110 () Bool)

(assert (=> b!3110110 true))

(assert (=> b!3110110 true))

(declare-fun bs!535780 () Bool)

(declare-fun b!3110113 () Bool)

(assert (= bs!535780 (and b!3110113 b!3110110)))

(declare-fun lambda!115036 () Int)

(declare-fun lambda!115035 () Int)

(assert (=> bs!535780 (not (= lambda!115036 lambda!115035))))

(assert (=> b!3110113 true))

(assert (=> b!3110113 true))

(declare-fun c!520490 () Bool)

(declare-fun bm!220124 () Bool)

(declare-fun call!220129 () Bool)

(declare-fun Exists!1847 (Int) Bool)

(assert (=> bm!220124 (= call!220129 (Exists!1847 (ite c!520490 lambda!115035 lambda!115036)))))

(declare-fun b!3110107 () Bool)

(declare-fun e!1942867 () Bool)

(declare-fun call!220130 () Bool)

(assert (=> b!3110107 (= e!1942867 call!220130)))

(declare-fun b!3110108 () Bool)

(declare-fun e!1942868 () Bool)

(assert (=> b!3110108 (= e!1942868 (= s!11993 (Cons!35330 (c!520323 r!17423) Nil!35330)))))

(declare-fun b!3110109 () Bool)

(declare-fun e!1942869 () Bool)

(declare-fun e!1942866 () Bool)

(assert (=> b!3110109 (= e!1942869 e!1942866)))

(assert (=> b!3110109 (= c!520490 ((_ is Star!9589) r!17423))))

(declare-fun bm!220125 () Bool)

(assert (=> bm!220125 (= call!220130 (isEmpty!19677 s!11993))))

(declare-fun d!861678 () Bool)

(declare-fun c!520491 () Bool)

(assert (=> d!861678 (= c!520491 ((_ is EmptyExpr!9589) r!17423))))

(assert (=> d!861678 (= (matchRSpec!1726 r!17423 s!11993) e!1942867)))

(declare-fun e!1942865 () Bool)

(assert (=> b!3110110 (= e!1942865 call!220129)))

(declare-fun b!3110111 () Bool)

(declare-fun c!520492 () Bool)

(assert (=> b!3110111 (= c!520492 ((_ is Union!9589) r!17423))))

(assert (=> b!3110111 (= e!1942868 e!1942869)))

(declare-fun b!3110112 () Bool)

(declare-fun c!520489 () Bool)

(assert (=> b!3110112 (= c!520489 ((_ is ElementMatch!9589) r!17423))))

(declare-fun e!1942870 () Bool)

(assert (=> b!3110112 (= e!1942870 e!1942868)))

(assert (=> b!3110113 (= e!1942866 call!220129)))

(declare-fun b!3110114 () Bool)

(assert (=> b!3110114 (= e!1942867 e!1942870)))

(declare-fun res!1273329 () Bool)

(assert (=> b!3110114 (= res!1273329 (not ((_ is EmptyLang!9589) r!17423)))))

(assert (=> b!3110114 (=> (not res!1273329) (not e!1942870))))

(declare-fun b!3110115 () Bool)

(declare-fun res!1273328 () Bool)

(assert (=> b!3110115 (=> res!1273328 e!1942865)))

(assert (=> b!3110115 (= res!1273328 call!220130)))

(assert (=> b!3110115 (= e!1942866 e!1942865)))

(declare-fun b!3110116 () Bool)

(declare-fun e!1942871 () Bool)

(assert (=> b!3110116 (= e!1942869 e!1942871)))

(declare-fun res!1273327 () Bool)

(assert (=> b!3110116 (= res!1273327 (matchRSpec!1726 (regOne!19691 r!17423) s!11993))))

(assert (=> b!3110116 (=> res!1273327 e!1942871)))

(declare-fun b!3110117 () Bool)

(assert (=> b!3110117 (= e!1942871 (matchRSpec!1726 (regTwo!19691 r!17423) s!11993))))

(assert (= (and d!861678 c!520491) b!3110107))

(assert (= (and d!861678 (not c!520491)) b!3110114))

(assert (= (and b!3110114 res!1273329) b!3110112))

(assert (= (and b!3110112 c!520489) b!3110108))

(assert (= (and b!3110112 (not c!520489)) b!3110111))

(assert (= (and b!3110111 c!520492) b!3110116))

(assert (= (and b!3110111 (not c!520492)) b!3110109))

(assert (= (and b!3110116 (not res!1273327)) b!3110117))

(assert (= (and b!3110109 c!520490) b!3110115))

(assert (= (and b!3110109 (not c!520490)) b!3110113))

(assert (= (and b!3110115 (not res!1273328)) b!3110110))

(assert (= (or b!3110110 b!3110113) bm!220124))

(assert (= (or b!3110107 b!3110115) bm!220125))

(declare-fun m!3404373 () Bool)

(assert (=> bm!220124 m!3404373))

(assert (=> bm!220125 m!3404265))

(declare-fun m!3404375 () Bool)

(assert (=> b!3110116 m!3404375))

(declare-fun m!3404377 () Bool)

(assert (=> b!3110117 m!3404377))

(assert (=> b!3109509 d!861678))

(declare-fun b!3110122 () Bool)

(declare-fun res!1273335 () Bool)

(declare-fun e!1942878 () Bool)

(assert (=> b!3110122 (=> res!1273335 e!1942878)))

(declare-fun e!1942875 () Bool)

(assert (=> b!3110122 (= res!1273335 e!1942875)))

(declare-fun res!1273334 () Bool)

(assert (=> b!3110122 (=> (not res!1273334) (not e!1942875))))

(declare-fun lt!1057283 () Bool)

(assert (=> b!3110122 (= res!1273334 lt!1057283)))

(declare-fun b!3110123 () Bool)

(declare-fun e!1942874 () Bool)

(declare-fun e!1942872 () Bool)

(assert (=> b!3110123 (= e!1942874 e!1942872)))

(declare-fun res!1273337 () Bool)

(assert (=> b!3110123 (=> res!1273337 e!1942872)))

(declare-fun call!220131 () Bool)

(assert (=> b!3110123 (= res!1273337 call!220131)))

(declare-fun d!861698 () Bool)

(declare-fun e!1942873 () Bool)

(assert (=> d!861698 e!1942873))

(declare-fun c!520494 () Bool)

(assert (=> d!861698 (= c!520494 ((_ is EmptyExpr!9589) r!17423))))

(declare-fun e!1942877 () Bool)

(assert (=> d!861698 (= lt!1057283 e!1942877)))

(declare-fun c!520495 () Bool)

(assert (=> d!861698 (= c!520495 (isEmpty!19677 s!11993))))

(assert (=> d!861698 (validRegex!4322 r!17423)))

(assert (=> d!861698 (= (matchR!4471 r!17423 s!11993) lt!1057283)))

(declare-fun b!3110124 () Bool)

(declare-fun res!1273336 () Bool)

(assert (=> b!3110124 (=> res!1273336 e!1942878)))

(assert (=> b!3110124 (= res!1273336 (not ((_ is ElementMatch!9589) r!17423)))))

(declare-fun e!1942876 () Bool)

(assert (=> b!3110124 (= e!1942876 e!1942878)))

(declare-fun b!3110125 () Bool)

(assert (=> b!3110125 (= e!1942873 e!1942876)))

(declare-fun c!520493 () Bool)

(assert (=> b!3110125 (= c!520493 ((_ is EmptyLang!9589) r!17423))))

(declare-fun b!3110126 () Bool)

(declare-fun res!1273330 () Bool)

(assert (=> b!3110126 (=> (not res!1273330) (not e!1942875))))

(assert (=> b!3110126 (= res!1273330 (not call!220131))))

(declare-fun bm!220126 () Bool)

(assert (=> bm!220126 (= call!220131 (isEmpty!19677 s!11993))))

(declare-fun b!3110127 () Bool)

(assert (=> b!3110127 (= e!1942873 (= lt!1057283 call!220131))))

(declare-fun b!3110128 () Bool)

(declare-fun res!1273331 () Bool)

(assert (=> b!3110128 (=> (not res!1273331) (not e!1942875))))

(assert (=> b!3110128 (= res!1273331 (isEmpty!19677 (tail!5111 s!11993)))))

(declare-fun b!3110129 () Bool)

(assert (=> b!3110129 (= e!1942878 e!1942874)))

(declare-fun res!1273332 () Bool)

(assert (=> b!3110129 (=> (not res!1273332) (not e!1942874))))

(assert (=> b!3110129 (= res!1273332 (not lt!1057283))))

(declare-fun b!3110130 () Bool)

(assert (=> b!3110130 (= e!1942875 (= (head!6885 s!11993) (c!520323 r!17423)))))

(declare-fun b!3110131 () Bool)

(assert (=> b!3110131 (= e!1942876 (not lt!1057283))))

(declare-fun b!3110132 () Bool)

(assert (=> b!3110132 (= e!1942872 (not (= (head!6885 s!11993) (c!520323 r!17423))))))

(declare-fun b!3110133 () Bool)

(assert (=> b!3110133 (= e!1942877 (matchR!4471 (derivativeStep!2826 r!17423 (head!6885 s!11993)) (tail!5111 s!11993)))))

(declare-fun b!3110134 () Bool)

(declare-fun res!1273333 () Bool)

(assert (=> b!3110134 (=> res!1273333 e!1942872)))

(assert (=> b!3110134 (= res!1273333 (not (isEmpty!19677 (tail!5111 s!11993))))))

(declare-fun b!3110135 () Bool)

(assert (=> b!3110135 (= e!1942877 (nullable!3231 r!17423))))

(assert (= (and d!861698 c!520495) b!3110135))

(assert (= (and d!861698 (not c!520495)) b!3110133))

(assert (= (and d!861698 c!520494) b!3110127))

(assert (= (and d!861698 (not c!520494)) b!3110125))

(assert (= (and b!3110125 c!520493) b!3110131))

(assert (= (and b!3110125 (not c!520493)) b!3110124))

(assert (= (and b!3110124 (not res!1273336)) b!3110122))

(assert (= (and b!3110122 res!1273334) b!3110126))

(assert (= (and b!3110126 res!1273330) b!3110128))

(assert (= (and b!3110128 res!1273331) b!3110130))

(assert (= (and b!3110122 (not res!1273335)) b!3110129))

(assert (= (and b!3110129 res!1273332) b!3110123))

(assert (= (and b!3110123 (not res!1273337)) b!3110134))

(assert (= (and b!3110134 (not res!1273333)) b!3110132))

(assert (= (or b!3110127 b!3110123 b!3110126) bm!220126))

(assert (=> b!3110128 m!3404261))

(assert (=> b!3110128 m!3404261))

(assert (=> b!3110128 m!3404263))

(assert (=> d!861698 m!3404265))

(assert (=> d!861698 m!3404141))

(assert (=> bm!220126 m!3404265))

(assert (=> b!3110130 m!3404267))

(assert (=> b!3110132 m!3404267))

(declare-fun m!3404379 () Bool)

(assert (=> b!3110135 m!3404379))

(assert (=> b!3110133 m!3404267))

(assert (=> b!3110133 m!3404267))

(declare-fun m!3404381 () Bool)

(assert (=> b!3110133 m!3404381))

(assert (=> b!3110133 m!3404261))

(assert (=> b!3110133 m!3404381))

(assert (=> b!3110133 m!3404261))

(declare-fun m!3404383 () Bool)

(assert (=> b!3110133 m!3404383))

(assert (=> b!3110134 m!3404261))

(assert (=> b!3110134 m!3404261))

(assert (=> b!3110134 m!3404263))

(assert (=> b!3109509 d!861698))

(declare-fun d!861700 () Bool)

(assert (=> d!861700 (= (matchR!4471 r!17423 s!11993) (matchRSpec!1726 r!17423 s!11993))))

(declare-fun lt!1057286 () Unit!49617)

(declare-fun choose!18394 (Regex!9589 List!35454) Unit!49617)

(assert (=> d!861700 (= lt!1057286 (choose!18394 r!17423 s!11993))))

(assert (=> d!861700 (validRegex!4322 r!17423)))

(assert (=> d!861700 (= (mainMatchTheorem!1726 r!17423 s!11993) lt!1057286)))

(declare-fun bs!535781 () Bool)

(assert (= bs!535781 d!861700))

(assert (=> bs!535781 m!3404159))

(assert (=> bs!535781 m!3404157))

(declare-fun m!3404385 () Bool)

(assert (=> bs!535781 m!3404385))

(assert (=> bs!535781 m!3404141))

(assert (=> b!3109509 d!861700))

(declare-fun d!861702 () Bool)

(assert (=> d!861702 (= (isEmptyLang!640 lt!1057203) ((_ is EmptyLang!9589) lt!1057203))))

(assert (=> b!3109514 d!861702))

(declare-fun b!3110136 () Bool)

(declare-fun e!1942883 () Bool)

(declare-fun e!1942880 () Bool)

(assert (=> b!3110136 (= e!1942883 e!1942880)))

(declare-fun res!1273341 () Bool)

(assert (=> b!3110136 (=> (not res!1273341) (not e!1942880))))

(declare-fun call!220134 () Bool)

(assert (=> b!3110136 (= res!1273341 call!220134)))

(declare-fun b!3110137 () Bool)

(declare-fun e!1942881 () Bool)

(declare-fun call!220132 () Bool)

(assert (=> b!3110137 (= e!1942881 call!220132)))

(declare-fun b!3110139 () Bool)

(declare-fun e!1942885 () Bool)

(assert (=> b!3110139 (= e!1942885 e!1942881)))

(declare-fun res!1273339 () Bool)

(assert (=> b!3110139 (= res!1273339 (not (nullable!3231 (reg!9918 (regTwo!19691 r!17423)))))))

(assert (=> b!3110139 (=> (not res!1273339) (not e!1942881))))

(declare-fun c!520496 () Bool)

(declare-fun c!520497 () Bool)

(declare-fun bm!220127 () Bool)

(assert (=> bm!220127 (= call!220132 (validRegex!4322 (ite c!520496 (reg!9918 (regTwo!19691 r!17423)) (ite c!520497 (regOne!19691 (regTwo!19691 r!17423)) (regTwo!19690 (regTwo!19691 r!17423))))))))

(declare-fun b!3110140 () Bool)

(declare-fun call!220133 () Bool)

(assert (=> b!3110140 (= e!1942880 call!220133)))

(declare-fun b!3110141 () Bool)

(declare-fun e!1942879 () Bool)

(assert (=> b!3110141 (= e!1942885 e!1942879)))

(assert (=> b!3110141 (= c!520497 ((_ is Union!9589) (regTwo!19691 r!17423)))))

(declare-fun b!3110142 () Bool)

(declare-fun e!1942884 () Bool)

(assert (=> b!3110142 (= e!1942884 call!220134)))

(declare-fun b!3110143 () Bool)

(declare-fun res!1273340 () Bool)

(assert (=> b!3110143 (=> res!1273340 e!1942883)))

(assert (=> b!3110143 (= res!1273340 (not ((_ is Concat!14910) (regTwo!19691 r!17423))))))

(assert (=> b!3110143 (= e!1942879 e!1942883)))

(declare-fun bm!220128 () Bool)

(assert (=> bm!220128 (= call!220134 (validRegex!4322 (ite c!520497 (regTwo!19691 (regTwo!19691 r!17423)) (regOne!19690 (regTwo!19691 r!17423)))))))

(declare-fun b!3110138 () Bool)

(declare-fun res!1273342 () Bool)

(assert (=> b!3110138 (=> (not res!1273342) (not e!1942884))))

(assert (=> b!3110138 (= res!1273342 call!220133)))

(assert (=> b!3110138 (= e!1942879 e!1942884)))

(declare-fun d!861704 () Bool)

(declare-fun res!1273338 () Bool)

(declare-fun e!1942882 () Bool)

(assert (=> d!861704 (=> res!1273338 e!1942882)))

(assert (=> d!861704 (= res!1273338 ((_ is ElementMatch!9589) (regTwo!19691 r!17423)))))

(assert (=> d!861704 (= (validRegex!4322 (regTwo!19691 r!17423)) e!1942882)))

(declare-fun bm!220129 () Bool)

(assert (=> bm!220129 (= call!220133 call!220132)))

(declare-fun b!3110144 () Bool)

(assert (=> b!3110144 (= e!1942882 e!1942885)))

(assert (=> b!3110144 (= c!520496 ((_ is Star!9589) (regTwo!19691 r!17423)))))

(assert (= (and d!861704 (not res!1273338)) b!3110144))

(assert (= (and b!3110144 c!520496) b!3110139))

(assert (= (and b!3110144 (not c!520496)) b!3110141))

(assert (= (and b!3110139 res!1273339) b!3110137))

(assert (= (and b!3110141 c!520497) b!3110138))

(assert (= (and b!3110141 (not c!520497)) b!3110143))

(assert (= (and b!3110138 res!1273342) b!3110142))

(assert (= (and b!3110143 (not res!1273340)) b!3110136))

(assert (= (and b!3110136 res!1273341) b!3110140))

(assert (= (or b!3110138 b!3110140) bm!220129))

(assert (= (or b!3110142 b!3110136) bm!220128))

(assert (= (or b!3110137 bm!220129) bm!220127))

(declare-fun m!3404387 () Bool)

(assert (=> b!3110139 m!3404387))

(declare-fun m!3404389 () Bool)

(assert (=> bm!220127 m!3404389))

(declare-fun m!3404391 () Bool)

(assert (=> bm!220128 m!3404391))

(assert (=> b!3109513 d!861704))

(declare-fun b!3110156 () Bool)

(declare-fun e!1942888 () Bool)

(declare-fun tp!976198 () Bool)

(declare-fun tp!976200 () Bool)

(assert (=> b!3110156 (= e!1942888 (and tp!976198 tp!976200))))

(declare-fun b!3110155 () Bool)

(assert (=> b!3110155 (= e!1942888 tp_is_empty!16741)))

(assert (=> b!3109517 (= tp!976145 e!1942888)))

(declare-fun b!3110158 () Bool)

(declare-fun tp!976199 () Bool)

(declare-fun tp!976202 () Bool)

(assert (=> b!3110158 (= e!1942888 (and tp!976199 tp!976202))))

(declare-fun b!3110157 () Bool)

(declare-fun tp!976201 () Bool)

(assert (=> b!3110157 (= e!1942888 tp!976201)))

(assert (= (and b!3109517 ((_ is ElementMatch!9589) (regOne!19691 r!17423))) b!3110155))

(assert (= (and b!3109517 ((_ is Concat!14910) (regOne!19691 r!17423))) b!3110156))

(assert (= (and b!3109517 ((_ is Star!9589) (regOne!19691 r!17423))) b!3110157))

(assert (= (and b!3109517 ((_ is Union!9589) (regOne!19691 r!17423))) b!3110158))

(declare-fun b!3110160 () Bool)

(declare-fun e!1942889 () Bool)

(declare-fun tp!976203 () Bool)

(declare-fun tp!976205 () Bool)

(assert (=> b!3110160 (= e!1942889 (and tp!976203 tp!976205))))

(declare-fun b!3110159 () Bool)

(assert (=> b!3110159 (= e!1942889 tp_is_empty!16741)))

(assert (=> b!3109517 (= tp!976144 e!1942889)))

(declare-fun b!3110162 () Bool)

(declare-fun tp!976204 () Bool)

(declare-fun tp!976207 () Bool)

(assert (=> b!3110162 (= e!1942889 (and tp!976204 tp!976207))))

(declare-fun b!3110161 () Bool)

(declare-fun tp!976206 () Bool)

(assert (=> b!3110161 (= e!1942889 tp!976206)))

(assert (= (and b!3109517 ((_ is ElementMatch!9589) (regTwo!19691 r!17423))) b!3110159))

(assert (= (and b!3109517 ((_ is Concat!14910) (regTwo!19691 r!17423))) b!3110160))

(assert (= (and b!3109517 ((_ is Star!9589) (regTwo!19691 r!17423))) b!3110161))

(assert (= (and b!3109517 ((_ is Union!9589) (regTwo!19691 r!17423))) b!3110162))

(declare-fun b!3110164 () Bool)

(declare-fun e!1942890 () Bool)

(declare-fun tp!976208 () Bool)

(declare-fun tp!976210 () Bool)

(assert (=> b!3110164 (= e!1942890 (and tp!976208 tp!976210))))

(declare-fun b!3110163 () Bool)

(assert (=> b!3110163 (= e!1942890 tp_is_empty!16741)))

(assert (=> b!3109516 (= tp!976147 e!1942890)))

(declare-fun b!3110166 () Bool)

(declare-fun tp!976209 () Bool)

(declare-fun tp!976212 () Bool)

(assert (=> b!3110166 (= e!1942890 (and tp!976209 tp!976212))))

(declare-fun b!3110165 () Bool)

(declare-fun tp!976211 () Bool)

(assert (=> b!3110165 (= e!1942890 tp!976211)))

(assert (= (and b!3109516 ((_ is ElementMatch!9589) (regOne!19690 r!17423))) b!3110163))

(assert (= (and b!3109516 ((_ is Concat!14910) (regOne!19690 r!17423))) b!3110164))

(assert (= (and b!3109516 ((_ is Star!9589) (regOne!19690 r!17423))) b!3110165))

(assert (= (and b!3109516 ((_ is Union!9589) (regOne!19690 r!17423))) b!3110166))

(declare-fun b!3110168 () Bool)

(declare-fun e!1942891 () Bool)

(declare-fun tp!976213 () Bool)

(declare-fun tp!976215 () Bool)

(assert (=> b!3110168 (= e!1942891 (and tp!976213 tp!976215))))

(declare-fun b!3110167 () Bool)

(assert (=> b!3110167 (= e!1942891 tp_is_empty!16741)))

(assert (=> b!3109516 (= tp!976146 e!1942891)))

(declare-fun b!3110170 () Bool)

(declare-fun tp!976214 () Bool)

(declare-fun tp!976217 () Bool)

(assert (=> b!3110170 (= e!1942891 (and tp!976214 tp!976217))))

(declare-fun b!3110169 () Bool)

(declare-fun tp!976216 () Bool)

(assert (=> b!3110169 (= e!1942891 tp!976216)))

(assert (= (and b!3109516 ((_ is ElementMatch!9589) (regTwo!19690 r!17423))) b!3110167))

(assert (= (and b!3109516 ((_ is Concat!14910) (regTwo!19690 r!17423))) b!3110168))

(assert (= (and b!3109516 ((_ is Star!9589) (regTwo!19690 r!17423))) b!3110169))

(assert (= (and b!3109516 ((_ is Union!9589) (regTwo!19690 r!17423))) b!3110170))

(declare-fun b!3110175 () Bool)

(declare-fun e!1942894 () Bool)

(declare-fun tp!976220 () Bool)

(assert (=> b!3110175 (= e!1942894 (and tp_is_empty!16741 tp!976220))))

(assert (=> b!3109508 (= tp!976148 e!1942894)))

(assert (= (and b!3109508 ((_ is Cons!35330) (t!234519 s!11993))) b!3110175))

(declare-fun b!3110177 () Bool)

(declare-fun e!1942895 () Bool)

(declare-fun tp!976221 () Bool)

(declare-fun tp!976223 () Bool)

(assert (=> b!3110177 (= e!1942895 (and tp!976221 tp!976223))))

(declare-fun b!3110176 () Bool)

(assert (=> b!3110176 (= e!1942895 tp_is_empty!16741)))

(assert (=> b!3109507 (= tp!976149 e!1942895)))

(declare-fun b!3110179 () Bool)

(declare-fun tp!976222 () Bool)

(declare-fun tp!976225 () Bool)

(assert (=> b!3110179 (= e!1942895 (and tp!976222 tp!976225))))

(declare-fun b!3110178 () Bool)

(declare-fun tp!976224 () Bool)

(assert (=> b!3110178 (= e!1942895 tp!976224)))

(assert (= (and b!3109507 ((_ is ElementMatch!9589) (reg!9918 r!17423))) b!3110176))

(assert (= (and b!3109507 ((_ is Concat!14910) (reg!9918 r!17423))) b!3110177))

(assert (= (and b!3109507 ((_ is Star!9589) (reg!9918 r!17423))) b!3110178))

(assert (= (and b!3109507 ((_ is Union!9589) (reg!9918 r!17423))) b!3110179))

(check-sat (not b!3110158) (not bm!220064) (not b!3110139) (not bm!220065) (not b!3109845) (not bm!220059) (not bm!220061) (not bm!220077) (not b!3109820) (not bm!220026) (not b!3110135) (not b!3110160) (not b!3109827) (not b!3110116) (not b!3110179) (not d!861672) (not b!3109773) (not bm!220125) (not d!861670) (not b!3110170) (not d!861650) (not bm!220068) (not b!3109749) (not b!3110175) (not b!3109861) (not b!3110157) (not bm!220056) (not b!3110117) (not b!3110132) (not b!3109834) (not bm!220126) (not b!3109832) (not b!3109867) (not b!3109829) (not bm!220127) (not b!3110128) (not b!3110134) (not bm!220070) (not b!3110164) (not d!861676) (not b!3109853) (not b!3109841) (not b!3109833) (not b!3110166) (not d!861698) (not bm!220057) (not b!3110178) (not bm!220128) (not b!3109865) (not d!861700) (not bm!220027) (not d!861668) (not b!3109743) (not b!3109846) (not b!3110133) (not b!3109843) (not d!861674) (not b!3110130) (not b!3109724) (not b!3109813) (not bm!220058) (not b!3110168) (not bm!220124) (not b!3110161) (not b!3110177) (not b!3109818) tp_is_empty!16741 (not b!3110165) (not b!3109847) (not d!861666) (not b!3110169) (not b!3109863) (not b!3109854) (not bm!220063) (not b!3109817) (not bm!220075) (not b!3109848) (not bm!220066) (not b!3109868) (not b!3110156) (not b!3110162) (not b!3109567) (not b!3109819) (not b!3109815) (not bm!220076) (not b!3109866) (not bm!220069) (not bm!220074) (not b!3109768) (not d!861662) (not b!3109831))
(check-sat)
