; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753352 () Bool)

(assert start!753352)

(declare-fun b!8006550 () Bool)

(declare-fun e!4716550 () Bool)

(declare-fun testedPSize!271 () Int)

(declare-datatypes ((C!43616 0))(
  ( (C!43617 (val!32356 Int)) )
))
(declare-datatypes ((List!74868 0))(
  ( (Nil!74744) (Cons!74744 (h!81192 C!43616) (t!390611 List!74868)) )
))
(declare-fun lt!2715442 () List!74868)

(declare-fun size!43541 (List!74868) Int)

(assert (=> b!8006550 (= e!4716550 (= (+ 1 testedPSize!271) (size!43541 lt!2715442)))))

(declare-fun b!8006551 () Bool)

(declare-fun e!4716559 () Bool)

(declare-fun e!4716551 () Bool)

(assert (=> b!8006551 (= e!4716559 e!4716551)))

(declare-fun res!3166095 () Bool)

(assert (=> b!8006551 (=> (not res!3166095) (not e!4716551))))

(declare-fun totalInputSize!629 () Int)

(declare-fun lt!2715449 () Int)

(assert (=> b!8006551 (= res!3166095 (= totalInputSize!629 lt!2715449))))

(declare-fun totalInput!1349 () List!74868)

(assert (=> b!8006551 (= lt!2715449 (size!43541 totalInput!1349))))

(declare-fun b!8006552 () Bool)

(declare-fun e!4716556 () Bool)

(declare-fun tp!2395638 () Bool)

(declare-fun tp!2395636 () Bool)

(assert (=> b!8006552 (= e!4716556 (and tp!2395638 tp!2395636))))

(declare-fun b!8006553 () Bool)

(declare-fun e!4716549 () Bool)

(assert (=> b!8006553 (= e!4716549 e!4716550)))

(declare-fun res!3166098 () Bool)

(assert (=> b!8006553 (=> res!3166098 e!4716550)))

(declare-datatypes ((Regex!21639 0))(
  ( (ElementMatch!21639 (c!1469776 C!43616)) (Concat!30638 (regOne!43790 Regex!21639) (regTwo!43790 Regex!21639)) (EmptyExpr!21639) (Star!21639 (reg!21968 Regex!21639)) (EmptyLang!21639) (Union!21639 (regOne!43791 Regex!21639) (regTwo!43791 Regex!21639)) )
))
(declare-fun r!15422 () Regex!21639)

(declare-fun nullable!9697 (Regex!21639) Bool)

(assert (=> b!8006553 (= res!3166098 (not (nullable!9697 r!15422)))))

(declare-fun lt!2715454 () List!74868)

(declare-fun ++!18465 (List!74868 List!74868) List!74868)

(assert (=> b!8006553 (= (++!18465 lt!2715442 lt!2715454) totalInput!1349)))

(declare-fun lt!2715441 () C!43616)

(declare-datatypes ((Unit!170714 0))(
  ( (Unit!170715) )
))
(declare-fun lt!2715450 () Unit!170714)

(declare-fun testedP!353 () List!74868)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3574 (List!74868 C!43616 List!74868 List!74868) Unit!170714)

(assert (=> b!8006553 (= lt!2715450 (lemmaMoveElementToOtherListKeepsConcatEq!3574 testedP!353 lt!2715441 lt!2715454 totalInput!1349))))

(declare-fun testedSuffix!271 () List!74868)

(declare-fun tail!15854 (List!74868) List!74868)

(assert (=> b!8006553 (= lt!2715454 (tail!15854 testedSuffix!271))))

(declare-fun lt!2715455 () List!74868)

(declare-fun isPrefix!6693 (List!74868 List!74868) Bool)

(declare-fun head!16331 (List!74868) C!43616)

(assert (=> b!8006553 (isPrefix!6693 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744)) totalInput!1349)))

(declare-fun lt!2715448 () Unit!170714)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1390 (List!74868 List!74868) Unit!170714)

(assert (=> b!8006553 (= lt!2715448 (lemmaAddHeadSuffixToPrefixStillPrefix!1390 testedP!353 totalInput!1349))))

(assert (=> b!8006553 (= lt!2715442 (++!18465 testedP!353 (Cons!74744 lt!2715441 Nil!74744)))))

(assert (=> b!8006553 (= lt!2715441 (head!16331 testedSuffix!271))))

(declare-fun b!8006554 () Bool)

(declare-fun e!4716558 () Unit!170714)

(declare-fun Unit!170716 () Unit!170714)

(assert (=> b!8006554 (= e!4716558 Unit!170716)))

(declare-fun lt!2715444 () Unit!170714)

(declare-fun lemmaIsPrefixRefl!4145 (List!74868 List!74868) Unit!170714)

(assert (=> b!8006554 (= lt!2715444 (lemmaIsPrefixRefl!4145 totalInput!1349 totalInput!1349))))

(assert (=> b!8006554 (isPrefix!6693 totalInput!1349 totalInput!1349)))

(declare-fun lt!2715447 () Unit!170714)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1719 (List!74868 List!74868 List!74868) Unit!170714)

(assert (=> b!8006554 (= lt!2715447 (lemmaIsPrefixSameLengthThenSameList!1719 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8006554 false))

(declare-fun b!8006555 () Bool)

(declare-fun res!3166101 () Bool)

(declare-fun e!4716555 () Bool)

(assert (=> b!8006555 (=> res!3166101 e!4716555)))

(assert (=> b!8006555 (= res!3166101 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8006556 () Bool)

(declare-fun Unit!170717 () Unit!170714)

(assert (=> b!8006556 (= e!4716558 Unit!170717)))

(declare-fun b!8006557 () Bool)

(declare-fun e!4716553 () Bool)

(assert (=> b!8006557 (= e!4716553 e!4716555)))

(declare-fun res!3166096 () Bool)

(assert (=> b!8006557 (=> res!3166096 e!4716555)))

(declare-fun lostCause!2036 (Regex!21639) Bool)

(assert (=> b!8006557 (= res!3166096 (lostCause!2036 r!15422))))

(assert (=> b!8006557 (and (= testedSuffix!271 lt!2715455) (= lt!2715455 testedSuffix!271))))

(declare-fun lt!2715446 () Unit!170714)

(declare-fun lemmaSamePrefixThenSameSuffix!3056 (List!74868 List!74868 List!74868 List!74868 List!74868) Unit!170714)

(assert (=> b!8006557 (= lt!2715446 (lemmaSamePrefixThenSameSuffix!3056 testedP!353 testedSuffix!271 testedP!353 lt!2715455 totalInput!1349))))

(declare-fun getSuffix!3890 (List!74868 List!74868) List!74868)

(assert (=> b!8006557 (= lt!2715455 (getSuffix!3890 totalInput!1349 testedP!353))))

(declare-fun b!8006559 () Bool)

(declare-fun e!4716554 () Bool)

(declare-fun tp_is_empty!53821 () Bool)

(declare-fun tp!2395641 () Bool)

(assert (=> b!8006559 (= e!4716554 (and tp_is_empty!53821 tp!2395641))))

(declare-fun b!8006560 () Bool)

(declare-fun e!4716548 () Bool)

(declare-fun tp!2395642 () Bool)

(assert (=> b!8006560 (= e!4716548 (and tp_is_empty!53821 tp!2395642))))

(declare-fun b!8006561 () Bool)

(assert (=> b!8006561 (= e!4716555 e!4716549)))

(declare-fun res!3166097 () Bool)

(assert (=> b!8006561 (=> res!3166097 e!4716549)))

(declare-fun lt!2715443 () Int)

(assert (=> b!8006561 (= res!3166097 (>= lt!2715443 lt!2715449))))

(declare-fun lt!2715445 () Unit!170714)

(assert (=> b!8006561 (= lt!2715445 e!4716558)))

(declare-fun c!1469775 () Bool)

(assert (=> b!8006561 (= c!1469775 (= lt!2715443 lt!2715449))))

(assert (=> b!8006561 (<= lt!2715443 lt!2715449)))

(declare-fun lt!2715453 () Unit!170714)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1194 (List!74868 List!74868) Unit!170714)

(assert (=> b!8006561 (= lt!2715453 (lemmaIsPrefixThenSmallerEqSize!1194 testedP!353 totalInput!1349))))

(declare-fun b!8006562 () Bool)

(assert (=> b!8006562 (= e!4716551 (not e!4716553))))

(declare-fun res!3166093 () Bool)

(assert (=> b!8006562 (=> res!3166093 e!4716553)))

(assert (=> b!8006562 (= res!3166093 (not (isPrefix!6693 testedP!353 totalInput!1349)))))

(declare-fun lt!2715452 () List!74868)

(assert (=> b!8006562 (isPrefix!6693 testedP!353 lt!2715452)))

(declare-fun lt!2715451 () Unit!170714)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3924 (List!74868 List!74868) Unit!170714)

(assert (=> b!8006562 (= lt!2715451 (lemmaConcatTwoListThenFirstIsPrefix!3924 testedP!353 testedSuffix!271))))

(declare-fun b!8006563 () Bool)

(declare-fun e!4716547 () Bool)

(assert (=> b!8006563 (= e!4716547 e!4716559)))

(declare-fun res!3166099 () Bool)

(assert (=> b!8006563 (=> (not res!3166099) (not e!4716559))))

(assert (=> b!8006563 (= res!3166099 (= testedPSize!271 lt!2715443))))

(assert (=> b!8006563 (= lt!2715443 (size!43541 testedP!353))))

(declare-fun b!8006564 () Bool)

(declare-fun e!4716552 () Bool)

(declare-fun tp!2395640 () Bool)

(assert (=> b!8006564 (= e!4716552 (and tp_is_empty!53821 tp!2395640))))

(declare-fun b!8006565 () Bool)

(declare-fun tp!2395637 () Bool)

(declare-fun tp!2395639 () Bool)

(assert (=> b!8006565 (= e!4716556 (and tp!2395637 tp!2395639))))

(declare-fun b!8006566 () Bool)

(declare-fun res!3166102 () Bool)

(assert (=> b!8006566 (=> res!3166102 e!4716550)))

(declare-fun validRegex!11943 (Regex!21639) Bool)

(declare-fun derivativeStep!6620 (Regex!21639 C!43616) Regex!21639)

(assert (=> b!8006566 (= res!3166102 (not (validRegex!11943 (derivativeStep!6620 r!15422 lt!2715441))))))

(declare-fun b!8006567 () Bool)

(assert (=> b!8006567 (= e!4716556 tp_is_empty!53821)))

(declare-fun b!8006568 () Bool)

(declare-fun tp!2395635 () Bool)

(assert (=> b!8006568 (= e!4716556 tp!2395635)))

(declare-fun res!3166094 () Bool)

(declare-fun e!4716557 () Bool)

(assert (=> start!753352 (=> (not res!3166094) (not e!4716557))))

(assert (=> start!753352 (= res!3166094 (validRegex!11943 r!15422))))

(assert (=> start!753352 e!4716557))

(assert (=> start!753352 e!4716548))

(assert (=> start!753352 true))

(assert (=> start!753352 e!4716554))

(assert (=> start!753352 e!4716556))

(assert (=> start!753352 e!4716552))

(declare-fun b!8006558 () Bool)

(assert (=> b!8006558 (= e!4716557 e!4716547)))

(declare-fun res!3166100 () Bool)

(assert (=> b!8006558 (=> (not res!3166100) (not e!4716547))))

(assert (=> b!8006558 (= res!3166100 (= lt!2715452 totalInput!1349))))

(assert (=> b!8006558 (= lt!2715452 (++!18465 testedP!353 testedSuffix!271))))

(assert (= (and start!753352 res!3166094) b!8006558))

(assert (= (and b!8006558 res!3166100) b!8006563))

(assert (= (and b!8006563 res!3166099) b!8006551))

(assert (= (and b!8006551 res!3166095) b!8006562))

(assert (= (and b!8006562 (not res!3166093)) b!8006557))

(assert (= (and b!8006557 (not res!3166096)) b!8006555))

(assert (= (and b!8006555 (not res!3166101)) b!8006561))

(assert (= (and b!8006561 c!1469775) b!8006554))

(assert (= (and b!8006561 (not c!1469775)) b!8006556))

(assert (= (and b!8006561 (not res!3166097)) b!8006553))

(assert (= (and b!8006553 (not res!3166098)) b!8006566))

(assert (= (and b!8006566 (not res!3166102)) b!8006550))

(get-info :version)

(assert (= (and start!753352 ((_ is Cons!74744) totalInput!1349)) b!8006560))

(assert (= (and start!753352 ((_ is Cons!74744) testedSuffix!271)) b!8006559))

(assert (= (and start!753352 ((_ is ElementMatch!21639) r!15422)) b!8006567))

(assert (= (and start!753352 ((_ is Concat!30638) r!15422)) b!8006552))

(assert (= (and start!753352 ((_ is Star!21639) r!15422)) b!8006568))

(assert (= (and start!753352 ((_ is Union!21639) r!15422)) b!8006565))

(assert (= (and start!753352 ((_ is Cons!74744) testedP!353)) b!8006564))

(declare-fun m!8371784 () Bool)

(assert (=> b!8006551 m!8371784))

(declare-fun m!8371786 () Bool)

(assert (=> b!8006554 m!8371786))

(declare-fun m!8371788 () Bool)

(assert (=> b!8006554 m!8371788))

(declare-fun m!8371790 () Bool)

(assert (=> b!8006554 m!8371790))

(declare-fun m!8371792 () Bool)

(assert (=> start!753352 m!8371792))

(declare-fun m!8371794 () Bool)

(assert (=> b!8006550 m!8371794))

(declare-fun m!8371796 () Bool)

(assert (=> b!8006566 m!8371796))

(assert (=> b!8006566 m!8371796))

(declare-fun m!8371798 () Bool)

(assert (=> b!8006566 m!8371798))

(declare-fun m!8371800 () Bool)

(assert (=> b!8006562 m!8371800))

(declare-fun m!8371802 () Bool)

(assert (=> b!8006562 m!8371802))

(declare-fun m!8371804 () Bool)

(assert (=> b!8006562 m!8371804))

(declare-fun m!8371806 () Bool)

(assert (=> b!8006561 m!8371806))

(declare-fun m!8371808 () Bool)

(assert (=> b!8006558 m!8371808))

(declare-fun m!8371810 () Bool)

(assert (=> b!8006557 m!8371810))

(declare-fun m!8371812 () Bool)

(assert (=> b!8006557 m!8371812))

(declare-fun m!8371814 () Bool)

(assert (=> b!8006557 m!8371814))

(declare-fun m!8371816 () Bool)

(assert (=> b!8006553 m!8371816))

(declare-fun m!8371818 () Bool)

(assert (=> b!8006553 m!8371818))

(declare-fun m!8371820 () Bool)

(assert (=> b!8006553 m!8371820))

(declare-fun m!8371822 () Bool)

(assert (=> b!8006553 m!8371822))

(declare-fun m!8371824 () Bool)

(assert (=> b!8006553 m!8371824))

(assert (=> b!8006553 m!8371816))

(declare-fun m!8371826 () Bool)

(assert (=> b!8006553 m!8371826))

(declare-fun m!8371828 () Bool)

(assert (=> b!8006553 m!8371828))

(declare-fun m!8371830 () Bool)

(assert (=> b!8006553 m!8371830))

(declare-fun m!8371832 () Bool)

(assert (=> b!8006553 m!8371832))

(declare-fun m!8371834 () Bool)

(assert (=> b!8006553 m!8371834))

(declare-fun m!8371836 () Bool)

(assert (=> b!8006563 m!8371836))

(check-sat (not b!8006562) (not b!8006568) (not b!8006550) (not b!8006551) (not b!8006558) (not b!8006553) (not b!8006563) (not b!8006566) (not b!8006552) (not start!753352) (not b!8006554) (not b!8006560) (not b!8006559) (not b!8006564) (not b!8006561) (not b!8006565) (not b!8006557) tp_is_empty!53821)
(check-sat)
(get-model)

(declare-fun d!2387476 () Bool)

(assert (=> d!2387476 (isPrefix!6693 totalInput!1349 totalInput!1349)))

(declare-fun lt!2715458 () Unit!170714)

(declare-fun choose!60275 (List!74868 List!74868) Unit!170714)

(assert (=> d!2387476 (= lt!2715458 (choose!60275 totalInput!1349 totalInput!1349))))

(assert (=> d!2387476 (= (lemmaIsPrefixRefl!4145 totalInput!1349 totalInput!1349) lt!2715458)))

(declare-fun bs!1970709 () Bool)

(assert (= bs!1970709 d!2387476))

(assert (=> bs!1970709 m!8371788))

(declare-fun m!8371838 () Bool)

(assert (=> bs!1970709 m!8371838))

(assert (=> b!8006554 d!2387476))

(declare-fun d!2387478 () Bool)

(declare-fun e!4716568 () Bool)

(assert (=> d!2387478 e!4716568))

(declare-fun res!3166113 () Bool)

(assert (=> d!2387478 (=> res!3166113 e!4716568)))

(declare-fun lt!2715461 () Bool)

(assert (=> d!2387478 (= res!3166113 (not lt!2715461))))

(declare-fun e!4716566 () Bool)

(assert (=> d!2387478 (= lt!2715461 e!4716566)))

(declare-fun res!3166111 () Bool)

(assert (=> d!2387478 (=> res!3166111 e!4716566)))

(assert (=> d!2387478 (= res!3166111 ((_ is Nil!74744) totalInput!1349))))

(assert (=> d!2387478 (= (isPrefix!6693 totalInput!1349 totalInput!1349) lt!2715461)))

(declare-fun b!8006578 () Bool)

(declare-fun res!3166114 () Bool)

(declare-fun e!4716567 () Bool)

(assert (=> b!8006578 (=> (not res!3166114) (not e!4716567))))

(assert (=> b!8006578 (= res!3166114 (= (head!16331 totalInput!1349) (head!16331 totalInput!1349)))))

(declare-fun b!8006579 () Bool)

(assert (=> b!8006579 (= e!4716567 (isPrefix!6693 (tail!15854 totalInput!1349) (tail!15854 totalInput!1349)))))

(declare-fun b!8006577 () Bool)

(assert (=> b!8006577 (= e!4716566 e!4716567)))

(declare-fun res!3166112 () Bool)

(assert (=> b!8006577 (=> (not res!3166112) (not e!4716567))))

(assert (=> b!8006577 (= res!3166112 (not ((_ is Nil!74744) totalInput!1349)))))

(declare-fun b!8006580 () Bool)

(assert (=> b!8006580 (= e!4716568 (>= (size!43541 totalInput!1349) (size!43541 totalInput!1349)))))

(assert (= (and d!2387478 (not res!3166111)) b!8006577))

(assert (= (and b!8006577 res!3166112) b!8006578))

(assert (= (and b!8006578 res!3166114) b!8006579))

(assert (= (and d!2387478 (not res!3166113)) b!8006580))

(declare-fun m!8371840 () Bool)

(assert (=> b!8006578 m!8371840))

(assert (=> b!8006578 m!8371840))

(declare-fun m!8371842 () Bool)

(assert (=> b!8006579 m!8371842))

(assert (=> b!8006579 m!8371842))

(assert (=> b!8006579 m!8371842))

(assert (=> b!8006579 m!8371842))

(declare-fun m!8371844 () Bool)

(assert (=> b!8006579 m!8371844))

(assert (=> b!8006580 m!8371784))

(assert (=> b!8006580 m!8371784))

(assert (=> b!8006554 d!2387478))

(declare-fun d!2387480 () Bool)

(assert (=> d!2387480 (= totalInput!1349 testedP!353)))

(declare-fun lt!2715464 () Unit!170714)

(declare-fun choose!60276 (List!74868 List!74868 List!74868) Unit!170714)

(assert (=> d!2387480 (= lt!2715464 (choose!60276 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2387480 (isPrefix!6693 totalInput!1349 totalInput!1349)))

(assert (=> d!2387480 (= (lemmaIsPrefixSameLengthThenSameList!1719 totalInput!1349 testedP!353 totalInput!1349) lt!2715464)))

(declare-fun bs!1970710 () Bool)

(assert (= bs!1970710 d!2387480))

(declare-fun m!8371846 () Bool)

(assert (=> bs!1970710 m!8371846))

(assert (=> bs!1970710 m!8371788))

(assert (=> b!8006554 d!2387480))

(declare-fun b!8006599 () Bool)

(declare-fun e!4716584 () Bool)

(declare-fun e!4716583 () Bool)

(assert (=> b!8006599 (= e!4716584 e!4716583)))

(declare-fun c!1469781 () Bool)

(assert (=> b!8006599 (= c!1469781 ((_ is Union!21639) (derivativeStep!6620 r!15422 lt!2715441)))))

(declare-fun b!8006600 () Bool)

(declare-fun e!4716587 () Bool)

(declare-fun call!743810 () Bool)

(assert (=> b!8006600 (= e!4716587 call!743810)))

(declare-fun b!8006601 () Bool)

(declare-fun e!4716589 () Bool)

(assert (=> b!8006601 (= e!4716589 e!4716584)))

(declare-fun c!1469782 () Bool)

(assert (=> b!8006601 (= c!1469782 ((_ is Star!21639) (derivativeStep!6620 r!15422 lt!2715441)))))

(declare-fun b!8006602 () Bool)

(declare-fun res!3166128 () Bool)

(declare-fun e!4716586 () Bool)

(assert (=> b!8006602 (=> res!3166128 e!4716586)))

(assert (=> b!8006602 (= res!3166128 (not ((_ is Concat!30638) (derivativeStep!6620 r!15422 lt!2715441))))))

(assert (=> b!8006602 (= e!4716583 e!4716586)))

(declare-fun b!8006603 () Bool)

(declare-fun e!4716588 () Bool)

(assert (=> b!8006603 (= e!4716584 e!4716588)))

(declare-fun res!3166125 () Bool)

(assert (=> b!8006603 (= res!3166125 (not (nullable!9697 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441)))))))

(assert (=> b!8006603 (=> (not res!3166125) (not e!4716588))))

(declare-fun b!8006604 () Bool)

(declare-fun res!3166126 () Bool)

(declare-fun e!4716585 () Bool)

(assert (=> b!8006604 (=> (not res!3166126) (not e!4716585))))

(declare-fun call!743809 () Bool)

(assert (=> b!8006604 (= res!3166126 call!743809)))

(assert (=> b!8006604 (= e!4716583 e!4716585)))

(declare-fun call!743811 () Bool)

(declare-fun bm!743804 () Bool)

(assert (=> bm!743804 (= call!743811 (validRegex!11943 (ite c!1469782 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441)) (ite c!1469781 (regTwo!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regTwo!43790 (derivativeStep!6620 r!15422 lt!2715441))))))))

(declare-fun b!8006605 () Bool)

(assert (=> b!8006605 (= e!4716588 call!743811)))

(declare-fun bm!743805 () Bool)

(assert (=> bm!743805 (= call!743810 call!743811)))

(declare-fun b!8006606 () Bool)

(assert (=> b!8006606 (= e!4716585 call!743810)))

(declare-fun d!2387482 () Bool)

(declare-fun res!3166127 () Bool)

(assert (=> d!2387482 (=> res!3166127 e!4716589)))

(assert (=> d!2387482 (= res!3166127 ((_ is ElementMatch!21639) (derivativeStep!6620 r!15422 lt!2715441)))))

(assert (=> d!2387482 (= (validRegex!11943 (derivativeStep!6620 r!15422 lt!2715441)) e!4716589)))

(declare-fun b!8006607 () Bool)

(assert (=> b!8006607 (= e!4716586 e!4716587)))

(declare-fun res!3166129 () Bool)

(assert (=> b!8006607 (=> (not res!3166129) (not e!4716587))))

(assert (=> b!8006607 (= res!3166129 call!743809)))

(declare-fun bm!743806 () Bool)

(assert (=> bm!743806 (= call!743809 (validRegex!11943 (ite c!1469781 (regOne!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regOne!43790 (derivativeStep!6620 r!15422 lt!2715441)))))))

(assert (= (and d!2387482 (not res!3166127)) b!8006601))

(assert (= (and b!8006601 c!1469782) b!8006603))

(assert (= (and b!8006601 (not c!1469782)) b!8006599))

(assert (= (and b!8006603 res!3166125) b!8006605))

(assert (= (and b!8006599 c!1469781) b!8006604))

(assert (= (and b!8006599 (not c!1469781)) b!8006602))

(assert (= (and b!8006604 res!3166126) b!8006606))

(assert (= (and b!8006602 (not res!3166128)) b!8006607))

(assert (= (and b!8006607 res!3166129) b!8006600))

(assert (= (or b!8006606 b!8006600) bm!743805))

(assert (= (or b!8006604 b!8006607) bm!743806))

(assert (= (or b!8006605 bm!743805) bm!743804))

(declare-fun m!8371848 () Bool)

(assert (=> b!8006603 m!8371848))

(declare-fun m!8371850 () Bool)

(assert (=> bm!743804 m!8371850))

(declare-fun m!8371852 () Bool)

(assert (=> bm!743806 m!8371852))

(assert (=> b!8006566 d!2387482))

(declare-fun bm!743815 () Bool)

(declare-fun call!743823 () Regex!21639)

(declare-fun call!743821 () Regex!21639)

(assert (=> bm!743815 (= call!743823 call!743821)))

(declare-fun d!2387484 () Bool)

(declare-fun lt!2715467 () Regex!21639)

(assert (=> d!2387484 (validRegex!11943 lt!2715467)))

(declare-fun e!4716602 () Regex!21639)

(assert (=> d!2387484 (= lt!2715467 e!4716602)))

(declare-fun c!1469793 () Bool)

(assert (=> d!2387484 (= c!1469793 (or ((_ is EmptyExpr!21639) r!15422) ((_ is EmptyLang!21639) r!15422)))))

(assert (=> d!2387484 (validRegex!11943 r!15422)))

(assert (=> d!2387484 (= (derivativeStep!6620 r!15422 lt!2715441) lt!2715467)))

(declare-fun b!8006628 () Bool)

(assert (=> b!8006628 (= e!4716602 EmptyLang!21639)))

(declare-fun bm!743816 () Bool)

(declare-fun call!743822 () Regex!21639)

(assert (=> bm!743816 (= call!743821 call!743822)))

(declare-fun b!8006629 () Bool)

(declare-fun e!4716604 () Regex!21639)

(assert (=> b!8006629 (= e!4716604 (ite (= lt!2715441 (c!1469776 r!15422)) EmptyExpr!21639 EmptyLang!21639))))

(declare-fun b!8006630 () Bool)

(declare-fun e!4716600 () Regex!21639)

(declare-fun e!4716601 () Regex!21639)

(assert (=> b!8006630 (= e!4716600 e!4716601)))

(declare-fun c!1469796 () Bool)

(assert (=> b!8006630 (= c!1469796 ((_ is Star!21639) r!15422))))

(declare-fun b!8006631 () Bool)

(assert (=> b!8006631 (= e!4716601 (Concat!30638 call!743821 r!15422))))

(declare-fun b!8006632 () Bool)

(assert (=> b!8006632 (= e!4716602 e!4716604)))

(declare-fun c!1469797 () Bool)

(assert (=> b!8006632 (= c!1469797 ((_ is ElementMatch!21639) r!15422))))

(declare-fun b!8006633 () Bool)

(declare-fun c!1469795 () Bool)

(assert (=> b!8006633 (= c!1469795 ((_ is Union!21639) r!15422))))

(assert (=> b!8006633 (= e!4716604 e!4716600)))

(declare-fun b!8006634 () Bool)

(declare-fun c!1469794 () Bool)

(assert (=> b!8006634 (= c!1469794 (nullable!9697 (regOne!43790 r!15422)))))

(declare-fun e!4716603 () Regex!21639)

(assert (=> b!8006634 (= e!4716601 e!4716603)))

(declare-fun call!743820 () Regex!21639)

(declare-fun b!8006635 () Bool)

(assert (=> b!8006635 (= e!4716603 (Union!21639 (Concat!30638 call!743820 (regTwo!43790 r!15422)) call!743823))))

(declare-fun b!8006636 () Bool)

(assert (=> b!8006636 (= e!4716603 (Union!21639 (Concat!30638 call!743823 (regTwo!43790 r!15422)) EmptyLang!21639))))

(declare-fun bm!743817 () Bool)

(assert (=> bm!743817 (= call!743822 (derivativeStep!6620 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422)))) lt!2715441))))

(declare-fun bm!743818 () Bool)

(assert (=> bm!743818 (= call!743820 (derivativeStep!6620 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422)) lt!2715441))))

(declare-fun b!8006637 () Bool)

(assert (=> b!8006637 (= e!4716600 (Union!21639 call!743820 call!743822))))

(assert (= (and d!2387484 c!1469793) b!8006628))

(assert (= (and d!2387484 (not c!1469793)) b!8006632))

(assert (= (and b!8006632 c!1469797) b!8006629))

(assert (= (and b!8006632 (not c!1469797)) b!8006633))

(assert (= (and b!8006633 c!1469795) b!8006637))

(assert (= (and b!8006633 (not c!1469795)) b!8006630))

(assert (= (and b!8006630 c!1469796) b!8006631))

(assert (= (and b!8006630 (not c!1469796)) b!8006634))

(assert (= (and b!8006634 c!1469794) b!8006635))

(assert (= (and b!8006634 (not c!1469794)) b!8006636))

(assert (= (or b!8006635 b!8006636) bm!743815))

(assert (= (or b!8006631 bm!743815) bm!743816))

(assert (= (or b!8006637 bm!743816) bm!743817))

(assert (= (or b!8006637 b!8006635) bm!743818))

(declare-fun m!8371854 () Bool)

(assert (=> d!2387484 m!8371854))

(assert (=> d!2387484 m!8371792))

(declare-fun m!8371856 () Bool)

(assert (=> b!8006634 m!8371856))

(declare-fun m!8371858 () Bool)

(assert (=> bm!743817 m!8371858))

(declare-fun m!8371860 () Bool)

(assert (=> bm!743818 m!8371860))

(assert (=> b!8006566 d!2387484))

(declare-fun d!2387486 () Bool)

(declare-fun e!4716607 () Bool)

(assert (=> d!2387486 e!4716607))

(declare-fun res!3166132 () Bool)

(assert (=> d!2387486 (=> res!3166132 e!4716607)))

(declare-fun lt!2715468 () Bool)

(assert (=> d!2387486 (= res!3166132 (not lt!2715468))))

(declare-fun e!4716605 () Bool)

(assert (=> d!2387486 (= lt!2715468 e!4716605)))

(declare-fun res!3166130 () Bool)

(assert (=> d!2387486 (=> res!3166130 e!4716605)))

(assert (=> d!2387486 (= res!3166130 ((_ is Nil!74744) testedP!353))))

(assert (=> d!2387486 (= (isPrefix!6693 testedP!353 totalInput!1349) lt!2715468)))

(declare-fun b!8006639 () Bool)

(declare-fun res!3166133 () Bool)

(declare-fun e!4716606 () Bool)

(assert (=> b!8006639 (=> (not res!3166133) (not e!4716606))))

(assert (=> b!8006639 (= res!3166133 (= (head!16331 testedP!353) (head!16331 totalInput!1349)))))

(declare-fun b!8006640 () Bool)

(assert (=> b!8006640 (= e!4716606 (isPrefix!6693 (tail!15854 testedP!353) (tail!15854 totalInput!1349)))))

(declare-fun b!8006638 () Bool)

(assert (=> b!8006638 (= e!4716605 e!4716606)))

(declare-fun res!3166131 () Bool)

(assert (=> b!8006638 (=> (not res!3166131) (not e!4716606))))

(assert (=> b!8006638 (= res!3166131 (not ((_ is Nil!74744) totalInput!1349)))))

(declare-fun b!8006641 () Bool)

(assert (=> b!8006641 (= e!4716607 (>= (size!43541 totalInput!1349) (size!43541 testedP!353)))))

(assert (= (and d!2387486 (not res!3166130)) b!8006638))

(assert (= (and b!8006638 res!3166131) b!8006639))

(assert (= (and b!8006639 res!3166133) b!8006640))

(assert (= (and d!2387486 (not res!3166132)) b!8006641))

(declare-fun m!8371862 () Bool)

(assert (=> b!8006639 m!8371862))

(assert (=> b!8006639 m!8371840))

(declare-fun m!8371864 () Bool)

(assert (=> b!8006640 m!8371864))

(assert (=> b!8006640 m!8371842))

(assert (=> b!8006640 m!8371864))

(assert (=> b!8006640 m!8371842))

(declare-fun m!8371866 () Bool)

(assert (=> b!8006640 m!8371866))

(assert (=> b!8006641 m!8371784))

(assert (=> b!8006641 m!8371836))

(assert (=> b!8006562 d!2387486))

(declare-fun d!2387488 () Bool)

(declare-fun e!4716610 () Bool)

(assert (=> d!2387488 e!4716610))

(declare-fun res!3166136 () Bool)

(assert (=> d!2387488 (=> res!3166136 e!4716610)))

(declare-fun lt!2715469 () Bool)

(assert (=> d!2387488 (= res!3166136 (not lt!2715469))))

(declare-fun e!4716608 () Bool)

(assert (=> d!2387488 (= lt!2715469 e!4716608)))

(declare-fun res!3166134 () Bool)

(assert (=> d!2387488 (=> res!3166134 e!4716608)))

(assert (=> d!2387488 (= res!3166134 ((_ is Nil!74744) testedP!353))))

(assert (=> d!2387488 (= (isPrefix!6693 testedP!353 lt!2715452) lt!2715469)))

(declare-fun b!8006643 () Bool)

(declare-fun res!3166137 () Bool)

(declare-fun e!4716609 () Bool)

(assert (=> b!8006643 (=> (not res!3166137) (not e!4716609))))

(assert (=> b!8006643 (= res!3166137 (= (head!16331 testedP!353) (head!16331 lt!2715452)))))

(declare-fun b!8006644 () Bool)

(assert (=> b!8006644 (= e!4716609 (isPrefix!6693 (tail!15854 testedP!353) (tail!15854 lt!2715452)))))

(declare-fun b!8006642 () Bool)

(assert (=> b!8006642 (= e!4716608 e!4716609)))

(declare-fun res!3166135 () Bool)

(assert (=> b!8006642 (=> (not res!3166135) (not e!4716609))))

(assert (=> b!8006642 (= res!3166135 (not ((_ is Nil!74744) lt!2715452)))))

(declare-fun b!8006645 () Bool)

(assert (=> b!8006645 (= e!4716610 (>= (size!43541 lt!2715452) (size!43541 testedP!353)))))

(assert (= (and d!2387488 (not res!3166134)) b!8006642))

(assert (= (and b!8006642 res!3166135) b!8006643))

(assert (= (and b!8006643 res!3166137) b!8006644))

(assert (= (and d!2387488 (not res!3166136)) b!8006645))

(assert (=> b!8006643 m!8371862))

(declare-fun m!8371868 () Bool)

(assert (=> b!8006643 m!8371868))

(assert (=> b!8006644 m!8371864))

(declare-fun m!8371870 () Bool)

(assert (=> b!8006644 m!8371870))

(assert (=> b!8006644 m!8371864))

(assert (=> b!8006644 m!8371870))

(declare-fun m!8371872 () Bool)

(assert (=> b!8006644 m!8371872))

(declare-fun m!8371874 () Bool)

(assert (=> b!8006645 m!8371874))

(assert (=> b!8006645 m!8371836))

(assert (=> b!8006562 d!2387488))

(declare-fun d!2387490 () Bool)

(assert (=> d!2387490 (isPrefix!6693 testedP!353 (++!18465 testedP!353 testedSuffix!271))))

(declare-fun lt!2715472 () Unit!170714)

(declare-fun choose!60277 (List!74868 List!74868) Unit!170714)

(assert (=> d!2387490 (= lt!2715472 (choose!60277 testedP!353 testedSuffix!271))))

(assert (=> d!2387490 (= (lemmaConcatTwoListThenFirstIsPrefix!3924 testedP!353 testedSuffix!271) lt!2715472)))

(declare-fun bs!1970711 () Bool)

(assert (= bs!1970711 d!2387490))

(assert (=> bs!1970711 m!8371808))

(assert (=> bs!1970711 m!8371808))

(declare-fun m!8371876 () Bool)

(assert (=> bs!1970711 m!8371876))

(declare-fun m!8371878 () Bool)

(assert (=> bs!1970711 m!8371878))

(assert (=> b!8006562 d!2387490))

(declare-fun d!2387494 () Bool)

(declare-fun lt!2715475 () Int)

(assert (=> d!2387494 (>= lt!2715475 0)))

(declare-fun e!4716613 () Int)

(assert (=> d!2387494 (= lt!2715475 e!4716613)))

(declare-fun c!1469800 () Bool)

(assert (=> d!2387494 (= c!1469800 ((_ is Nil!74744) testedP!353))))

(assert (=> d!2387494 (= (size!43541 testedP!353) lt!2715475)))

(declare-fun b!8006650 () Bool)

(assert (=> b!8006650 (= e!4716613 0)))

(declare-fun b!8006651 () Bool)

(assert (=> b!8006651 (= e!4716613 (+ 1 (size!43541 (t!390611 testedP!353))))))

(assert (= (and d!2387494 c!1469800) b!8006650))

(assert (= (and d!2387494 (not c!1469800)) b!8006651))

(declare-fun m!8371880 () Bool)

(assert (=> b!8006651 m!8371880))

(assert (=> b!8006563 d!2387494))

(declare-fun d!2387496 () Bool)

(assert (=> d!2387496 (isPrefix!6693 (++!18465 testedP!353 (Cons!74744 (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) Nil!74744)) totalInput!1349)))

(declare-fun lt!2715481 () Unit!170714)

(declare-fun choose!60278 (List!74868 List!74868) Unit!170714)

(assert (=> d!2387496 (= lt!2715481 (choose!60278 testedP!353 totalInput!1349))))

(assert (=> d!2387496 (isPrefix!6693 testedP!353 totalInput!1349)))

(assert (=> d!2387496 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1390 testedP!353 totalInput!1349) lt!2715481)))

(declare-fun bs!1970713 () Bool)

(assert (= bs!1970713 d!2387496))

(declare-fun m!8371884 () Bool)

(assert (=> bs!1970713 m!8371884))

(assert (=> bs!1970713 m!8371814))

(declare-fun m!8371886 () Bool)

(assert (=> bs!1970713 m!8371886))

(assert (=> bs!1970713 m!8371800))

(declare-fun m!8371888 () Bool)

(assert (=> bs!1970713 m!8371888))

(declare-fun m!8371890 () Bool)

(assert (=> bs!1970713 m!8371890))

(assert (=> bs!1970713 m!8371814))

(assert (=> bs!1970713 m!8371888))

(assert (=> b!8006553 d!2387496))

(declare-fun d!2387500 () Bool)

(assert (=> d!2387500 (= (++!18465 (++!18465 testedP!353 (Cons!74744 lt!2715441 Nil!74744)) lt!2715454) totalInput!1349)))

(declare-fun lt!2715484 () Unit!170714)

(declare-fun choose!60279 (List!74868 C!43616 List!74868 List!74868) Unit!170714)

(assert (=> d!2387500 (= lt!2715484 (choose!60279 testedP!353 lt!2715441 lt!2715454 totalInput!1349))))

(assert (=> d!2387500 (= (++!18465 testedP!353 (Cons!74744 lt!2715441 lt!2715454)) totalInput!1349)))

(assert (=> d!2387500 (= (lemmaMoveElementToOtherListKeepsConcatEq!3574 testedP!353 lt!2715441 lt!2715454 totalInput!1349) lt!2715484)))

(declare-fun bs!1970714 () Bool)

(assert (= bs!1970714 d!2387500))

(assert (=> bs!1970714 m!8371822))

(assert (=> bs!1970714 m!8371822))

(declare-fun m!8371892 () Bool)

(assert (=> bs!1970714 m!8371892))

(declare-fun m!8371894 () Bool)

(assert (=> bs!1970714 m!8371894))

(declare-fun m!8371896 () Bool)

(assert (=> bs!1970714 m!8371896))

(assert (=> b!8006553 d!2387500))

(declare-fun d!2387502 () Bool)

(declare-fun nullableFct!3826 (Regex!21639) Bool)

(assert (=> d!2387502 (= (nullable!9697 r!15422) (nullableFct!3826 r!15422))))

(declare-fun bs!1970715 () Bool)

(assert (= bs!1970715 d!2387502))

(declare-fun m!8371898 () Bool)

(assert (=> bs!1970715 m!8371898))

(assert (=> b!8006553 d!2387502))

(declare-fun d!2387504 () Bool)

(assert (=> d!2387504 (= (head!16331 lt!2715455) (h!81192 lt!2715455))))

(assert (=> b!8006553 d!2387504))

(declare-fun e!4716632 () Bool)

(declare-fun b!8006681 () Bool)

(declare-fun lt!2715487 () List!74868)

(assert (=> b!8006681 (= e!4716632 (or (not (= lt!2715454 Nil!74744)) (= lt!2715487 lt!2715442)))))

(declare-fun b!8006680 () Bool)

(declare-fun res!3166153 () Bool)

(assert (=> b!8006680 (=> (not res!3166153) (not e!4716632))))

(assert (=> b!8006680 (= res!3166153 (= (size!43541 lt!2715487) (+ (size!43541 lt!2715442) (size!43541 lt!2715454))))))

(declare-fun b!8006679 () Bool)

(declare-fun e!4716633 () List!74868)

(assert (=> b!8006679 (= e!4716633 (Cons!74744 (h!81192 lt!2715442) (++!18465 (t!390611 lt!2715442) lt!2715454)))))

(declare-fun b!8006678 () Bool)

(assert (=> b!8006678 (= e!4716633 lt!2715454)))

(declare-fun d!2387506 () Bool)

(assert (=> d!2387506 e!4716632))

(declare-fun res!3166152 () Bool)

(assert (=> d!2387506 (=> (not res!3166152) (not e!4716632))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15893 (List!74868) (InoxSet C!43616))

(assert (=> d!2387506 (= res!3166152 (= (content!15893 lt!2715487) ((_ map or) (content!15893 lt!2715442) (content!15893 lt!2715454))))))

(assert (=> d!2387506 (= lt!2715487 e!4716633)))

(declare-fun c!1469807 () Bool)

(assert (=> d!2387506 (= c!1469807 ((_ is Nil!74744) lt!2715442))))

(assert (=> d!2387506 (= (++!18465 lt!2715442 lt!2715454) lt!2715487)))

(assert (= (and d!2387506 c!1469807) b!8006678))

(assert (= (and d!2387506 (not c!1469807)) b!8006679))

(assert (= (and d!2387506 res!3166152) b!8006680))

(assert (= (and b!8006680 res!3166153) b!8006681))

(declare-fun m!8371900 () Bool)

(assert (=> b!8006680 m!8371900))

(assert (=> b!8006680 m!8371794))

(declare-fun m!8371902 () Bool)

(assert (=> b!8006680 m!8371902))

(declare-fun m!8371904 () Bool)

(assert (=> b!8006679 m!8371904))

(declare-fun m!8371906 () Bool)

(assert (=> d!2387506 m!8371906))

(declare-fun m!8371908 () Bool)

(assert (=> d!2387506 m!8371908))

(declare-fun m!8371910 () Bool)

(assert (=> d!2387506 m!8371910))

(assert (=> b!8006553 d!2387506))

(declare-fun d!2387508 () Bool)

(assert (=> d!2387508 (= (head!16331 testedSuffix!271) (h!81192 testedSuffix!271))))

(assert (=> b!8006553 d!2387508))

(declare-fun e!4716634 () Bool)

(declare-fun b!8006685 () Bool)

(declare-fun lt!2715488 () List!74868)

(assert (=> b!8006685 (= e!4716634 (or (not (= (Cons!74744 lt!2715441 Nil!74744) Nil!74744)) (= lt!2715488 testedP!353)))))

(declare-fun b!8006684 () Bool)

(declare-fun res!3166155 () Bool)

(assert (=> b!8006684 (=> (not res!3166155) (not e!4716634))))

(assert (=> b!8006684 (= res!3166155 (= (size!43541 lt!2715488) (+ (size!43541 testedP!353) (size!43541 (Cons!74744 lt!2715441 Nil!74744)))))))

(declare-fun b!8006683 () Bool)

(declare-fun e!4716635 () List!74868)

(assert (=> b!8006683 (= e!4716635 (Cons!74744 (h!81192 testedP!353) (++!18465 (t!390611 testedP!353) (Cons!74744 lt!2715441 Nil!74744))))))

(declare-fun b!8006682 () Bool)

(assert (=> b!8006682 (= e!4716635 (Cons!74744 lt!2715441 Nil!74744))))

(declare-fun d!2387510 () Bool)

(assert (=> d!2387510 e!4716634))

(declare-fun res!3166154 () Bool)

(assert (=> d!2387510 (=> (not res!3166154) (not e!4716634))))

(assert (=> d!2387510 (= res!3166154 (= (content!15893 lt!2715488) ((_ map or) (content!15893 testedP!353) (content!15893 (Cons!74744 lt!2715441 Nil!74744)))))))

(assert (=> d!2387510 (= lt!2715488 e!4716635)))

(declare-fun c!1469808 () Bool)

(assert (=> d!2387510 (= c!1469808 ((_ is Nil!74744) testedP!353))))

(assert (=> d!2387510 (= (++!18465 testedP!353 (Cons!74744 lt!2715441 Nil!74744)) lt!2715488)))

(assert (= (and d!2387510 c!1469808) b!8006682))

(assert (= (and d!2387510 (not c!1469808)) b!8006683))

(assert (= (and d!2387510 res!3166154) b!8006684))

(assert (= (and b!8006684 res!3166155) b!8006685))

(declare-fun m!8371912 () Bool)

(assert (=> b!8006684 m!8371912))

(assert (=> b!8006684 m!8371836))

(declare-fun m!8371914 () Bool)

(assert (=> b!8006684 m!8371914))

(declare-fun m!8371916 () Bool)

(assert (=> b!8006683 m!8371916))

(declare-fun m!8371918 () Bool)

(assert (=> d!2387510 m!8371918))

(declare-fun m!8371920 () Bool)

(assert (=> d!2387510 m!8371920))

(declare-fun m!8371922 () Bool)

(assert (=> d!2387510 m!8371922))

(assert (=> b!8006553 d!2387510))

(declare-fun d!2387512 () Bool)

(declare-fun e!4716638 () Bool)

(assert (=> d!2387512 e!4716638))

(declare-fun res!3166158 () Bool)

(assert (=> d!2387512 (=> res!3166158 e!4716638)))

(declare-fun lt!2715489 () Bool)

(assert (=> d!2387512 (= res!3166158 (not lt!2715489))))

(declare-fun e!4716636 () Bool)

(assert (=> d!2387512 (= lt!2715489 e!4716636)))

(declare-fun res!3166156 () Bool)

(assert (=> d!2387512 (=> res!3166156 e!4716636)))

(assert (=> d!2387512 (= res!3166156 ((_ is Nil!74744) (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744))))))

(assert (=> d!2387512 (= (isPrefix!6693 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744)) totalInput!1349) lt!2715489)))

(declare-fun b!8006687 () Bool)

(declare-fun res!3166159 () Bool)

(declare-fun e!4716637 () Bool)

(assert (=> b!8006687 (=> (not res!3166159) (not e!4716637))))

(assert (=> b!8006687 (= res!3166159 (= (head!16331 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744))) (head!16331 totalInput!1349)))))

(declare-fun b!8006688 () Bool)

(assert (=> b!8006688 (= e!4716637 (isPrefix!6693 (tail!15854 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744))) (tail!15854 totalInput!1349)))))

(declare-fun b!8006686 () Bool)

(assert (=> b!8006686 (= e!4716636 e!4716637)))

(declare-fun res!3166157 () Bool)

(assert (=> b!8006686 (=> (not res!3166157) (not e!4716637))))

(assert (=> b!8006686 (= res!3166157 (not ((_ is Nil!74744) totalInput!1349)))))

(declare-fun b!8006689 () Bool)

(assert (=> b!8006689 (= e!4716638 (>= (size!43541 totalInput!1349) (size!43541 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744)))))))

(assert (= (and d!2387512 (not res!3166156)) b!8006686))

(assert (= (and b!8006686 res!3166157) b!8006687))

(assert (= (and b!8006687 res!3166159) b!8006688))

(assert (= (and d!2387512 (not res!3166158)) b!8006689))

(assert (=> b!8006687 m!8371816))

(declare-fun m!8371924 () Bool)

(assert (=> b!8006687 m!8371924))

(assert (=> b!8006687 m!8371840))

(assert (=> b!8006688 m!8371816))

(declare-fun m!8371926 () Bool)

(assert (=> b!8006688 m!8371926))

(assert (=> b!8006688 m!8371842))

(assert (=> b!8006688 m!8371926))

(assert (=> b!8006688 m!8371842))

(declare-fun m!8371928 () Bool)

(assert (=> b!8006688 m!8371928))

(assert (=> b!8006689 m!8371784))

(assert (=> b!8006689 m!8371816))

(declare-fun m!8371930 () Bool)

(assert (=> b!8006689 m!8371930))

(assert (=> b!8006553 d!2387512))

(declare-fun d!2387514 () Bool)

(assert (=> d!2387514 (= (tail!15854 testedSuffix!271) (t!390611 testedSuffix!271))))

(assert (=> b!8006553 d!2387514))

(declare-fun b!8006693 () Bool)

(declare-fun lt!2715490 () List!74868)

(declare-fun e!4716639 () Bool)

(assert (=> b!8006693 (= e!4716639 (or (not (= (Cons!74744 (head!16331 lt!2715455) Nil!74744) Nil!74744)) (= lt!2715490 testedP!353)))))

(declare-fun b!8006692 () Bool)

(declare-fun res!3166161 () Bool)

(assert (=> b!8006692 (=> (not res!3166161) (not e!4716639))))

(assert (=> b!8006692 (= res!3166161 (= (size!43541 lt!2715490) (+ (size!43541 testedP!353) (size!43541 (Cons!74744 (head!16331 lt!2715455) Nil!74744)))))))

(declare-fun b!8006691 () Bool)

(declare-fun e!4716640 () List!74868)

(assert (=> b!8006691 (= e!4716640 (Cons!74744 (h!81192 testedP!353) (++!18465 (t!390611 testedP!353) (Cons!74744 (head!16331 lt!2715455) Nil!74744))))))

(declare-fun b!8006690 () Bool)

(assert (=> b!8006690 (= e!4716640 (Cons!74744 (head!16331 lt!2715455) Nil!74744))))

(declare-fun d!2387516 () Bool)

(assert (=> d!2387516 e!4716639))

(declare-fun res!3166160 () Bool)

(assert (=> d!2387516 (=> (not res!3166160) (not e!4716639))))

(assert (=> d!2387516 (= res!3166160 (= (content!15893 lt!2715490) ((_ map or) (content!15893 testedP!353) (content!15893 (Cons!74744 (head!16331 lt!2715455) Nil!74744)))))))

(assert (=> d!2387516 (= lt!2715490 e!4716640)))

(declare-fun c!1469809 () Bool)

(assert (=> d!2387516 (= c!1469809 ((_ is Nil!74744) testedP!353))))

(assert (=> d!2387516 (= (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744)) lt!2715490)))

(assert (= (and d!2387516 c!1469809) b!8006690))

(assert (= (and d!2387516 (not c!1469809)) b!8006691))

(assert (= (and d!2387516 res!3166160) b!8006692))

(assert (= (and b!8006692 res!3166161) b!8006693))

(declare-fun m!8371932 () Bool)

(assert (=> b!8006692 m!8371932))

(assert (=> b!8006692 m!8371836))

(declare-fun m!8371934 () Bool)

(assert (=> b!8006692 m!8371934))

(declare-fun m!8371936 () Bool)

(assert (=> b!8006691 m!8371936))

(declare-fun m!8371938 () Bool)

(assert (=> d!2387516 m!8371938))

(assert (=> d!2387516 m!8371920))

(declare-fun m!8371940 () Bool)

(assert (=> d!2387516 m!8371940))

(assert (=> b!8006553 d!2387516))

(declare-fun b!8006694 () Bool)

(declare-fun e!4716642 () Bool)

(declare-fun e!4716641 () Bool)

(assert (=> b!8006694 (= e!4716642 e!4716641)))

(declare-fun c!1469810 () Bool)

(assert (=> b!8006694 (= c!1469810 ((_ is Union!21639) r!15422))))

(declare-fun b!8006695 () Bool)

(declare-fun e!4716645 () Bool)

(declare-fun call!743831 () Bool)

(assert (=> b!8006695 (= e!4716645 call!743831)))

(declare-fun b!8006696 () Bool)

(declare-fun e!4716647 () Bool)

(assert (=> b!8006696 (= e!4716647 e!4716642)))

(declare-fun c!1469811 () Bool)

(assert (=> b!8006696 (= c!1469811 ((_ is Star!21639) r!15422))))

(declare-fun b!8006697 () Bool)

(declare-fun res!3166165 () Bool)

(declare-fun e!4716644 () Bool)

(assert (=> b!8006697 (=> res!3166165 e!4716644)))

(assert (=> b!8006697 (= res!3166165 (not ((_ is Concat!30638) r!15422)))))

(assert (=> b!8006697 (= e!4716641 e!4716644)))

(declare-fun b!8006698 () Bool)

(declare-fun e!4716646 () Bool)

(assert (=> b!8006698 (= e!4716642 e!4716646)))

(declare-fun res!3166162 () Bool)

(assert (=> b!8006698 (= res!3166162 (not (nullable!9697 (reg!21968 r!15422))))))

(assert (=> b!8006698 (=> (not res!3166162) (not e!4716646))))

(declare-fun b!8006699 () Bool)

(declare-fun res!3166163 () Bool)

(declare-fun e!4716643 () Bool)

(assert (=> b!8006699 (=> (not res!3166163) (not e!4716643))))

(declare-fun call!743830 () Bool)

(assert (=> b!8006699 (= res!3166163 call!743830)))

(assert (=> b!8006699 (= e!4716641 e!4716643)))

(declare-fun bm!743825 () Bool)

(declare-fun call!743832 () Bool)

(assert (=> bm!743825 (= call!743832 (validRegex!11943 (ite c!1469811 (reg!21968 r!15422) (ite c!1469810 (regTwo!43791 r!15422) (regTwo!43790 r!15422)))))))

(declare-fun b!8006700 () Bool)

(assert (=> b!8006700 (= e!4716646 call!743832)))

(declare-fun bm!743826 () Bool)

(assert (=> bm!743826 (= call!743831 call!743832)))

(declare-fun b!8006701 () Bool)

(assert (=> b!8006701 (= e!4716643 call!743831)))

(declare-fun d!2387518 () Bool)

(declare-fun res!3166164 () Bool)

(assert (=> d!2387518 (=> res!3166164 e!4716647)))

(assert (=> d!2387518 (= res!3166164 ((_ is ElementMatch!21639) r!15422))))

(assert (=> d!2387518 (= (validRegex!11943 r!15422) e!4716647)))

(declare-fun b!8006702 () Bool)

(assert (=> b!8006702 (= e!4716644 e!4716645)))

(declare-fun res!3166166 () Bool)

(assert (=> b!8006702 (=> (not res!3166166) (not e!4716645))))

(assert (=> b!8006702 (= res!3166166 call!743830)))

(declare-fun bm!743827 () Bool)

(assert (=> bm!743827 (= call!743830 (validRegex!11943 (ite c!1469810 (regOne!43791 r!15422) (regOne!43790 r!15422))))))

(assert (= (and d!2387518 (not res!3166164)) b!8006696))

(assert (= (and b!8006696 c!1469811) b!8006698))

(assert (= (and b!8006696 (not c!1469811)) b!8006694))

(assert (= (and b!8006698 res!3166162) b!8006700))

(assert (= (and b!8006694 c!1469810) b!8006699))

(assert (= (and b!8006694 (not c!1469810)) b!8006697))

(assert (= (and b!8006699 res!3166163) b!8006701))

(assert (= (and b!8006697 (not res!3166165)) b!8006702))

(assert (= (and b!8006702 res!3166166) b!8006695))

(assert (= (or b!8006701 b!8006695) bm!743826))

(assert (= (or b!8006699 b!8006702) bm!743827))

(assert (= (or b!8006700 bm!743826) bm!743825))

(declare-fun m!8371942 () Bool)

(assert (=> b!8006698 m!8371942))

(declare-fun m!8371944 () Bool)

(assert (=> bm!743825 m!8371944))

(declare-fun m!8371946 () Bool)

(assert (=> bm!743827 m!8371946))

(assert (=> start!753352 d!2387518))

(declare-fun d!2387520 () Bool)

(declare-fun lt!2715491 () Int)

(assert (=> d!2387520 (>= lt!2715491 0)))

(declare-fun e!4716648 () Int)

(assert (=> d!2387520 (= lt!2715491 e!4716648)))

(declare-fun c!1469812 () Bool)

(assert (=> d!2387520 (= c!1469812 ((_ is Nil!74744) lt!2715442))))

(assert (=> d!2387520 (= (size!43541 lt!2715442) lt!2715491)))

(declare-fun b!8006703 () Bool)

(assert (=> b!8006703 (= e!4716648 0)))

(declare-fun b!8006704 () Bool)

(assert (=> b!8006704 (= e!4716648 (+ 1 (size!43541 (t!390611 lt!2715442))))))

(assert (= (and d!2387520 c!1469812) b!8006703))

(assert (= (and d!2387520 (not c!1469812)) b!8006704))

(declare-fun m!8371948 () Bool)

(assert (=> b!8006704 m!8371948))

(assert (=> b!8006550 d!2387520))

(declare-fun d!2387522 () Bool)

(assert (=> d!2387522 (<= (size!43541 testedP!353) (size!43541 totalInput!1349))))

(declare-fun lt!2715494 () Unit!170714)

(declare-fun choose!60281 (List!74868 List!74868) Unit!170714)

(assert (=> d!2387522 (= lt!2715494 (choose!60281 testedP!353 totalInput!1349))))

(assert (=> d!2387522 (isPrefix!6693 testedP!353 totalInput!1349)))

(assert (=> d!2387522 (= (lemmaIsPrefixThenSmallerEqSize!1194 testedP!353 totalInput!1349) lt!2715494)))

(declare-fun bs!1970716 () Bool)

(assert (= bs!1970716 d!2387522))

(assert (=> bs!1970716 m!8371836))

(assert (=> bs!1970716 m!8371784))

(declare-fun m!8371950 () Bool)

(assert (=> bs!1970716 m!8371950))

(assert (=> bs!1970716 m!8371800))

(assert (=> b!8006561 d!2387522))

(declare-fun d!2387524 () Bool)

(declare-fun lt!2715495 () Int)

(assert (=> d!2387524 (>= lt!2715495 0)))

(declare-fun e!4716656 () Int)

(assert (=> d!2387524 (= lt!2715495 e!4716656)))

(declare-fun c!1469815 () Bool)

(assert (=> d!2387524 (= c!1469815 ((_ is Nil!74744) totalInput!1349))))

(assert (=> d!2387524 (= (size!43541 totalInput!1349) lt!2715495)))

(declare-fun b!8006714 () Bool)

(assert (=> b!8006714 (= e!4716656 0)))

(declare-fun b!8006715 () Bool)

(assert (=> b!8006715 (= e!4716656 (+ 1 (size!43541 (t!390611 totalInput!1349))))))

(assert (= (and d!2387524 c!1469815) b!8006714))

(assert (= (and d!2387524 (not c!1469815)) b!8006715))

(declare-fun m!8371952 () Bool)

(assert (=> b!8006715 m!8371952))

(assert (=> b!8006551 d!2387524))

(declare-fun d!2387526 () Bool)

(declare-fun lostCauseFct!596 (Regex!21639) Bool)

(assert (=> d!2387526 (= (lostCause!2036 r!15422) (lostCauseFct!596 r!15422))))

(declare-fun bs!1970717 () Bool)

(assert (= bs!1970717 d!2387526))

(declare-fun m!8371960 () Bool)

(assert (=> bs!1970717 m!8371960))

(assert (=> b!8006557 d!2387526))

(declare-fun d!2387530 () Bool)

(assert (=> d!2387530 (= testedSuffix!271 lt!2715455)))

(declare-fun lt!2715498 () Unit!170714)

(declare-fun choose!60282 (List!74868 List!74868 List!74868 List!74868 List!74868) Unit!170714)

(assert (=> d!2387530 (= lt!2715498 (choose!60282 testedP!353 testedSuffix!271 testedP!353 lt!2715455 totalInput!1349))))

(assert (=> d!2387530 (isPrefix!6693 testedP!353 totalInput!1349)))

(assert (=> d!2387530 (= (lemmaSamePrefixThenSameSuffix!3056 testedP!353 testedSuffix!271 testedP!353 lt!2715455 totalInput!1349) lt!2715498)))

(declare-fun bs!1970718 () Bool)

(assert (= bs!1970718 d!2387530))

(declare-fun m!8371962 () Bool)

(assert (=> bs!1970718 m!8371962))

(assert (=> bs!1970718 m!8371800))

(assert (=> b!8006557 d!2387530))

(declare-fun d!2387532 () Bool)

(declare-fun lt!2715501 () List!74868)

(assert (=> d!2387532 (= (++!18465 testedP!353 lt!2715501) totalInput!1349)))

(declare-fun e!4716659 () List!74868)

(assert (=> d!2387532 (= lt!2715501 e!4716659)))

(declare-fun c!1469818 () Bool)

(assert (=> d!2387532 (= c!1469818 ((_ is Cons!74744) testedP!353))))

(assert (=> d!2387532 (>= (size!43541 totalInput!1349) (size!43541 testedP!353))))

(assert (=> d!2387532 (= (getSuffix!3890 totalInput!1349 testedP!353) lt!2715501)))

(declare-fun b!8006720 () Bool)

(assert (=> b!8006720 (= e!4716659 (getSuffix!3890 (tail!15854 totalInput!1349) (t!390611 testedP!353)))))

(declare-fun b!8006721 () Bool)

(assert (=> b!8006721 (= e!4716659 totalInput!1349)))

(assert (= (and d!2387532 c!1469818) b!8006720))

(assert (= (and d!2387532 (not c!1469818)) b!8006721))

(declare-fun m!8371964 () Bool)

(assert (=> d!2387532 m!8371964))

(assert (=> d!2387532 m!8371784))

(assert (=> d!2387532 m!8371836))

(assert (=> b!8006720 m!8371842))

(assert (=> b!8006720 m!8371842))

(declare-fun m!8371966 () Bool)

(assert (=> b!8006720 m!8371966))

(assert (=> b!8006557 d!2387532))

(declare-fun b!8006725 () Bool)

(declare-fun lt!2715502 () List!74868)

(declare-fun e!4716660 () Bool)

(assert (=> b!8006725 (= e!4716660 (or (not (= testedSuffix!271 Nil!74744)) (= lt!2715502 testedP!353)))))

(declare-fun b!8006724 () Bool)

(declare-fun res!3166173 () Bool)

(assert (=> b!8006724 (=> (not res!3166173) (not e!4716660))))

(assert (=> b!8006724 (= res!3166173 (= (size!43541 lt!2715502) (+ (size!43541 testedP!353) (size!43541 testedSuffix!271))))))

(declare-fun b!8006723 () Bool)

(declare-fun e!4716661 () List!74868)

(assert (=> b!8006723 (= e!4716661 (Cons!74744 (h!81192 testedP!353) (++!18465 (t!390611 testedP!353) testedSuffix!271)))))

(declare-fun b!8006722 () Bool)

(assert (=> b!8006722 (= e!4716661 testedSuffix!271)))

(declare-fun d!2387534 () Bool)

(assert (=> d!2387534 e!4716660))

(declare-fun res!3166172 () Bool)

(assert (=> d!2387534 (=> (not res!3166172) (not e!4716660))))

(assert (=> d!2387534 (= res!3166172 (= (content!15893 lt!2715502) ((_ map or) (content!15893 testedP!353) (content!15893 testedSuffix!271))))))

(assert (=> d!2387534 (= lt!2715502 e!4716661)))

(declare-fun c!1469819 () Bool)

(assert (=> d!2387534 (= c!1469819 ((_ is Nil!74744) testedP!353))))

(assert (=> d!2387534 (= (++!18465 testedP!353 testedSuffix!271) lt!2715502)))

(assert (= (and d!2387534 c!1469819) b!8006722))

(assert (= (and d!2387534 (not c!1469819)) b!8006723))

(assert (= (and d!2387534 res!3166172) b!8006724))

(assert (= (and b!8006724 res!3166173) b!8006725))

(declare-fun m!8371968 () Bool)

(assert (=> b!8006724 m!8371968))

(assert (=> b!8006724 m!8371836))

(declare-fun m!8371970 () Bool)

(assert (=> b!8006724 m!8371970))

(declare-fun m!8371972 () Bool)

(assert (=> b!8006723 m!8371972))

(declare-fun m!8371974 () Bool)

(assert (=> d!2387534 m!8371974))

(assert (=> d!2387534 m!8371920))

(declare-fun m!8371976 () Bool)

(assert (=> d!2387534 m!8371976))

(assert (=> b!8006558 d!2387534))

(declare-fun b!8006746 () Bool)

(declare-fun e!4716668 () Bool)

(declare-fun tp!2395656 () Bool)

(assert (=> b!8006746 (= e!4716668 tp!2395656)))

(declare-fun b!8006745 () Bool)

(declare-fun tp!2395657 () Bool)

(declare-fun tp!2395653 () Bool)

(assert (=> b!8006745 (= e!4716668 (and tp!2395657 tp!2395653))))

(assert (=> b!8006565 (= tp!2395637 e!4716668)))

(declare-fun b!8006744 () Bool)

(assert (=> b!8006744 (= e!4716668 tp_is_empty!53821)))

(declare-fun b!8006747 () Bool)

(declare-fun tp!2395655 () Bool)

(declare-fun tp!2395654 () Bool)

(assert (=> b!8006747 (= e!4716668 (and tp!2395655 tp!2395654))))

(assert (= (and b!8006565 ((_ is ElementMatch!21639) (regOne!43791 r!15422))) b!8006744))

(assert (= (and b!8006565 ((_ is Concat!30638) (regOne!43791 r!15422))) b!8006745))

(assert (= (and b!8006565 ((_ is Star!21639) (regOne!43791 r!15422))) b!8006746))

(assert (= (and b!8006565 ((_ is Union!21639) (regOne!43791 r!15422))) b!8006747))

(declare-fun b!8006750 () Bool)

(declare-fun e!4716669 () Bool)

(declare-fun tp!2395661 () Bool)

(assert (=> b!8006750 (= e!4716669 tp!2395661)))

(declare-fun b!8006749 () Bool)

(declare-fun tp!2395662 () Bool)

(declare-fun tp!2395658 () Bool)

(assert (=> b!8006749 (= e!4716669 (and tp!2395662 tp!2395658))))

(assert (=> b!8006565 (= tp!2395639 e!4716669)))

(declare-fun b!8006748 () Bool)

(assert (=> b!8006748 (= e!4716669 tp_is_empty!53821)))

(declare-fun b!8006751 () Bool)

(declare-fun tp!2395660 () Bool)

(declare-fun tp!2395659 () Bool)

(assert (=> b!8006751 (= e!4716669 (and tp!2395660 tp!2395659))))

(assert (= (and b!8006565 ((_ is ElementMatch!21639) (regTwo!43791 r!15422))) b!8006748))

(assert (= (and b!8006565 ((_ is Concat!30638) (regTwo!43791 r!15422))) b!8006749))

(assert (= (and b!8006565 ((_ is Star!21639) (regTwo!43791 r!15422))) b!8006750))

(assert (= (and b!8006565 ((_ is Union!21639) (regTwo!43791 r!15422))) b!8006751))

(declare-fun b!8006756 () Bool)

(declare-fun e!4716672 () Bool)

(declare-fun tp!2395665 () Bool)

(assert (=> b!8006756 (= e!4716672 (and tp_is_empty!53821 tp!2395665))))

(assert (=> b!8006560 (= tp!2395642 e!4716672)))

(assert (= (and b!8006560 ((_ is Cons!74744) (t!390611 totalInput!1349))) b!8006756))

(declare-fun b!8006759 () Bool)

(declare-fun e!4716673 () Bool)

(declare-fun tp!2395669 () Bool)

(assert (=> b!8006759 (= e!4716673 tp!2395669)))

(declare-fun b!8006758 () Bool)

(declare-fun tp!2395670 () Bool)

(declare-fun tp!2395666 () Bool)

(assert (=> b!8006758 (= e!4716673 (and tp!2395670 tp!2395666))))

(assert (=> b!8006552 (= tp!2395638 e!4716673)))

(declare-fun b!8006757 () Bool)

(assert (=> b!8006757 (= e!4716673 tp_is_empty!53821)))

(declare-fun b!8006760 () Bool)

(declare-fun tp!2395668 () Bool)

(declare-fun tp!2395667 () Bool)

(assert (=> b!8006760 (= e!4716673 (and tp!2395668 tp!2395667))))

(assert (= (and b!8006552 ((_ is ElementMatch!21639) (regOne!43790 r!15422))) b!8006757))

(assert (= (and b!8006552 ((_ is Concat!30638) (regOne!43790 r!15422))) b!8006758))

(assert (= (and b!8006552 ((_ is Star!21639) (regOne!43790 r!15422))) b!8006759))

(assert (= (and b!8006552 ((_ is Union!21639) (regOne!43790 r!15422))) b!8006760))

(declare-fun b!8006763 () Bool)

(declare-fun e!4716674 () Bool)

(declare-fun tp!2395674 () Bool)

(assert (=> b!8006763 (= e!4716674 tp!2395674)))

(declare-fun b!8006762 () Bool)

(declare-fun tp!2395675 () Bool)

(declare-fun tp!2395671 () Bool)

(assert (=> b!8006762 (= e!4716674 (and tp!2395675 tp!2395671))))

(assert (=> b!8006552 (= tp!2395636 e!4716674)))

(declare-fun b!8006761 () Bool)

(assert (=> b!8006761 (= e!4716674 tp_is_empty!53821)))

(declare-fun b!8006764 () Bool)

(declare-fun tp!2395673 () Bool)

(declare-fun tp!2395672 () Bool)

(assert (=> b!8006764 (= e!4716674 (and tp!2395673 tp!2395672))))

(assert (= (and b!8006552 ((_ is ElementMatch!21639) (regTwo!43790 r!15422))) b!8006761))

(assert (= (and b!8006552 ((_ is Concat!30638) (regTwo!43790 r!15422))) b!8006762))

(assert (= (and b!8006552 ((_ is Star!21639) (regTwo!43790 r!15422))) b!8006763))

(assert (= (and b!8006552 ((_ is Union!21639) (regTwo!43790 r!15422))) b!8006764))

(declare-fun b!8006767 () Bool)

(declare-fun e!4716675 () Bool)

(declare-fun tp!2395679 () Bool)

(assert (=> b!8006767 (= e!4716675 tp!2395679)))

(declare-fun b!8006766 () Bool)

(declare-fun tp!2395680 () Bool)

(declare-fun tp!2395676 () Bool)

(assert (=> b!8006766 (= e!4716675 (and tp!2395680 tp!2395676))))

(assert (=> b!8006568 (= tp!2395635 e!4716675)))

(declare-fun b!8006765 () Bool)

(assert (=> b!8006765 (= e!4716675 tp_is_empty!53821)))

(declare-fun b!8006768 () Bool)

(declare-fun tp!2395678 () Bool)

(declare-fun tp!2395677 () Bool)

(assert (=> b!8006768 (= e!4716675 (and tp!2395678 tp!2395677))))

(assert (= (and b!8006568 ((_ is ElementMatch!21639) (reg!21968 r!15422))) b!8006765))

(assert (= (and b!8006568 ((_ is Concat!30638) (reg!21968 r!15422))) b!8006766))

(assert (= (and b!8006568 ((_ is Star!21639) (reg!21968 r!15422))) b!8006767))

(assert (= (and b!8006568 ((_ is Union!21639) (reg!21968 r!15422))) b!8006768))

(declare-fun b!8006769 () Bool)

(declare-fun e!4716676 () Bool)

(declare-fun tp!2395681 () Bool)

(assert (=> b!8006769 (= e!4716676 (and tp_is_empty!53821 tp!2395681))))

(assert (=> b!8006564 (= tp!2395640 e!4716676)))

(assert (= (and b!8006564 ((_ is Cons!74744) (t!390611 testedP!353))) b!8006769))

(declare-fun b!8006770 () Bool)

(declare-fun e!4716677 () Bool)

(declare-fun tp!2395682 () Bool)

(assert (=> b!8006770 (= e!4716677 (and tp_is_empty!53821 tp!2395682))))

(assert (=> b!8006559 (= tp!2395641 e!4716677)))

(assert (= (and b!8006559 ((_ is Cons!74744) (t!390611 testedSuffix!271))) b!8006770))

(check-sat (not b!8006578) (not b!8006680) (not b!8006762) (not b!8006759) (not b!8006724) (not b!8006746) (not b!8006747) (not b!8006768) (not d!2387496) (not b!8006758) (not b!8006579) (not b!8006644) (not d!2387484) (not b!8006651) (not d!2387530) (not d!2387490) (not b!8006751) (not b!8006763) (not b!8006764) (not b!8006766) (not b!8006603) (not d!2387476) (not d!2387532) (not b!8006767) (not d!2387522) (not b!8006580) (not b!8006749) (not d!2387510) (not bm!743804) (not b!8006760) (not b!8006769) (not b!8006770) tp_is_empty!53821 (not b!8006756) (not b!8006634) (not bm!743817) (not bm!743818) (not b!8006723) (not d!2387502) (not b!8006640) (not b!8006698) (not b!8006684) (not d!2387516) (not d!2387526) (not d!2387500) (not b!8006687) (not d!2387506) (not b!8006689) (not b!8006720) (not b!8006750) (not b!8006715) (not bm!743825) (not b!8006704) (not d!2387534) (not bm!743827) (not b!8006643) (not b!8006645) (not b!8006683) (not b!8006691) (not b!8006641) (not b!8006639) (not bm!743806) (not b!8006745) (not d!2387480) (not b!8006679) (not b!8006688) (not b!8006692))
(check-sat)
(get-model)

(declare-fun d!2387584 () Bool)

(declare-fun lt!2715544 () Int)

(assert (=> d!2387584 (>= lt!2715544 0)))

(declare-fun e!4716746 () Int)

(assert (=> d!2387584 (= lt!2715544 e!4716746)))

(declare-fun c!1469851 () Bool)

(assert (=> d!2387584 (= c!1469851 ((_ is Nil!74744) lt!2715502))))

(assert (=> d!2387584 (= (size!43541 lt!2715502) lt!2715544)))

(declare-fun b!8006903 () Bool)

(assert (=> b!8006903 (= e!4716746 0)))

(declare-fun b!8006904 () Bool)

(assert (=> b!8006904 (= e!4716746 (+ 1 (size!43541 (t!390611 lt!2715502))))))

(assert (= (and d!2387584 c!1469851) b!8006903))

(assert (= (and d!2387584 (not c!1469851)) b!8006904))

(declare-fun m!8372102 () Bool)

(assert (=> b!8006904 m!8372102))

(assert (=> b!8006724 d!2387584))

(assert (=> b!8006724 d!2387494))

(declare-fun d!2387586 () Bool)

(declare-fun lt!2715545 () Int)

(assert (=> d!2387586 (>= lt!2715545 0)))

(declare-fun e!4716747 () Int)

(assert (=> d!2387586 (= lt!2715545 e!4716747)))

(declare-fun c!1469852 () Bool)

(assert (=> d!2387586 (= c!1469852 ((_ is Nil!74744) testedSuffix!271))))

(assert (=> d!2387586 (= (size!43541 testedSuffix!271) lt!2715545)))

(declare-fun b!8006905 () Bool)

(assert (=> b!8006905 (= e!4716747 0)))

(declare-fun b!8006906 () Bool)

(assert (=> b!8006906 (= e!4716747 (+ 1 (size!43541 (t!390611 testedSuffix!271))))))

(assert (= (and d!2387586 c!1469852) b!8006905))

(assert (= (and d!2387586 (not c!1469852)) b!8006906))

(declare-fun m!8372104 () Bool)

(assert (=> b!8006906 m!8372104))

(assert (=> b!8006724 d!2387586))

(declare-fun b!8006910 () Bool)

(declare-fun lt!2715546 () List!74868)

(declare-fun e!4716748 () Bool)

(assert (=> b!8006910 (= e!4716748 (or (not (= lt!2715454 Nil!74744)) (= lt!2715546 (t!390611 lt!2715442))))))

(declare-fun b!8006909 () Bool)

(declare-fun res!3166216 () Bool)

(assert (=> b!8006909 (=> (not res!3166216) (not e!4716748))))

(assert (=> b!8006909 (= res!3166216 (= (size!43541 lt!2715546) (+ (size!43541 (t!390611 lt!2715442)) (size!43541 lt!2715454))))))

(declare-fun b!8006908 () Bool)

(declare-fun e!4716749 () List!74868)

(assert (=> b!8006908 (= e!4716749 (Cons!74744 (h!81192 (t!390611 lt!2715442)) (++!18465 (t!390611 (t!390611 lt!2715442)) lt!2715454)))))

(declare-fun b!8006907 () Bool)

(assert (=> b!8006907 (= e!4716749 lt!2715454)))

(declare-fun d!2387588 () Bool)

(assert (=> d!2387588 e!4716748))

(declare-fun res!3166215 () Bool)

(assert (=> d!2387588 (=> (not res!3166215) (not e!4716748))))

(assert (=> d!2387588 (= res!3166215 (= (content!15893 lt!2715546) ((_ map or) (content!15893 (t!390611 lt!2715442)) (content!15893 lt!2715454))))))

(assert (=> d!2387588 (= lt!2715546 e!4716749)))

(declare-fun c!1469853 () Bool)

(assert (=> d!2387588 (= c!1469853 ((_ is Nil!74744) (t!390611 lt!2715442)))))

(assert (=> d!2387588 (= (++!18465 (t!390611 lt!2715442) lt!2715454) lt!2715546)))

(assert (= (and d!2387588 c!1469853) b!8006907))

(assert (= (and d!2387588 (not c!1469853)) b!8006908))

(assert (= (and d!2387588 res!3166215) b!8006909))

(assert (= (and b!8006909 res!3166216) b!8006910))

(declare-fun m!8372106 () Bool)

(assert (=> b!8006909 m!8372106))

(assert (=> b!8006909 m!8371948))

(assert (=> b!8006909 m!8371902))

(declare-fun m!8372108 () Bool)

(assert (=> b!8006908 m!8372108))

(declare-fun m!8372110 () Bool)

(assert (=> d!2387588 m!8372110))

(declare-fun m!8372112 () Bool)

(assert (=> d!2387588 m!8372112))

(assert (=> d!2387588 m!8371910))

(assert (=> b!8006679 d!2387588))

(declare-fun d!2387590 () Bool)

(declare-fun c!1469856 () Bool)

(assert (=> d!2387590 (= c!1469856 ((_ is Nil!74744) lt!2715487))))

(declare-fun e!4716752 () (InoxSet C!43616))

(assert (=> d!2387590 (= (content!15893 lt!2715487) e!4716752)))

(declare-fun b!8006915 () Bool)

(assert (=> b!8006915 (= e!4716752 ((as const (Array C!43616 Bool)) false))))

(declare-fun b!8006916 () Bool)

(assert (=> b!8006916 (= e!4716752 ((_ map or) (store ((as const (Array C!43616 Bool)) false) (h!81192 lt!2715487) true) (content!15893 (t!390611 lt!2715487))))))

(assert (= (and d!2387590 c!1469856) b!8006915))

(assert (= (and d!2387590 (not c!1469856)) b!8006916))

(declare-fun m!8372114 () Bool)

(assert (=> b!8006916 m!8372114))

(declare-fun m!8372116 () Bool)

(assert (=> b!8006916 m!8372116))

(assert (=> d!2387506 d!2387590))

(declare-fun d!2387592 () Bool)

(declare-fun c!1469857 () Bool)

(assert (=> d!2387592 (= c!1469857 ((_ is Nil!74744) lt!2715442))))

(declare-fun e!4716753 () (InoxSet C!43616))

(assert (=> d!2387592 (= (content!15893 lt!2715442) e!4716753)))

(declare-fun b!8006917 () Bool)

(assert (=> b!8006917 (= e!4716753 ((as const (Array C!43616 Bool)) false))))

(declare-fun b!8006918 () Bool)

(assert (=> b!8006918 (= e!4716753 ((_ map or) (store ((as const (Array C!43616 Bool)) false) (h!81192 lt!2715442) true) (content!15893 (t!390611 lt!2715442))))))

(assert (= (and d!2387592 c!1469857) b!8006917))

(assert (= (and d!2387592 (not c!1469857)) b!8006918))

(declare-fun m!8372118 () Bool)

(assert (=> b!8006918 m!8372118))

(assert (=> b!8006918 m!8372112))

(assert (=> d!2387506 d!2387592))

(declare-fun d!2387594 () Bool)

(declare-fun c!1469858 () Bool)

(assert (=> d!2387594 (= c!1469858 ((_ is Nil!74744) lt!2715454))))

(declare-fun e!4716754 () (InoxSet C!43616))

(assert (=> d!2387594 (= (content!15893 lt!2715454) e!4716754)))

(declare-fun b!8006919 () Bool)

(assert (=> b!8006919 (= e!4716754 ((as const (Array C!43616 Bool)) false))))

(declare-fun b!8006920 () Bool)

(assert (=> b!8006920 (= e!4716754 ((_ map or) (store ((as const (Array C!43616 Bool)) false) (h!81192 lt!2715454) true) (content!15893 (t!390611 lt!2715454))))))

(assert (= (and d!2387594 c!1469858) b!8006919))

(assert (= (and d!2387594 (not c!1469858)) b!8006920))

(declare-fun m!8372120 () Bool)

(assert (=> b!8006920 m!8372120))

(declare-fun m!8372122 () Bool)

(assert (=> b!8006920 m!8372122))

(assert (=> d!2387506 d!2387594))

(declare-fun b!8006935 () Bool)

(declare-fun e!4716771 () Bool)

(declare-fun e!4716772 () Bool)

(assert (=> b!8006935 (= e!4716771 e!4716772)))

(declare-fun c!1469861 () Bool)

(assert (=> b!8006935 (= c!1469861 ((_ is Union!21639) r!15422))))

(declare-fun b!8006936 () Bool)

(declare-fun e!4716768 () Bool)

(assert (=> b!8006936 (= e!4716772 e!4716768)))

(declare-fun res!3166230 () Bool)

(declare-fun call!743855 () Bool)

(assert (=> b!8006936 (= res!3166230 call!743855)))

(assert (=> b!8006936 (=> res!3166230 e!4716768)))

(declare-fun bm!743850 () Bool)

(assert (=> bm!743850 (= call!743855 (lostCause!2036 (ite c!1469861 (regTwo!43791 r!15422) (regOne!43790 r!15422))))))

(declare-fun b!8006937 () Bool)

(declare-fun e!4716770 () Bool)

(assert (=> b!8006937 (= e!4716770 call!743855)))

(declare-fun d!2387596 () Bool)

(declare-fun lt!2715549 () Bool)

(declare-datatypes ((Option!17963 0))(
  ( (None!17962) (Some!17962 (v!55147 List!74868)) )
))
(declare-fun isEmpty!42972 (Option!17963) Bool)

(declare-fun getLanguageWitness!1154 (Regex!21639) Option!17963)

(assert (=> d!2387596 (= lt!2715549 (isEmpty!42972 (getLanguageWitness!1154 r!15422)))))

(declare-fun e!4716769 () Bool)

(assert (=> d!2387596 (= lt!2715549 e!4716769)))

(declare-fun res!3166227 () Bool)

(assert (=> d!2387596 (=> (not res!3166227) (not e!4716769))))

(assert (=> d!2387596 (= res!3166227 (not ((_ is EmptyExpr!21639) r!15422)))))

(assert (=> d!2387596 (= (lostCauseFct!596 r!15422) lt!2715549)))

(declare-fun b!8006938 () Bool)

(declare-fun e!4716767 () Bool)

(assert (=> b!8006938 (= e!4716767 e!4716771)))

(declare-fun res!3166231 () Bool)

(assert (=> b!8006938 (=> (not res!3166231) (not e!4716771))))

(assert (=> b!8006938 (= res!3166231 (and (not ((_ is ElementMatch!21639) r!15422)) (not ((_ is Star!21639) r!15422))))))

(declare-fun b!8006939 () Bool)

(assert (=> b!8006939 (= e!4716772 e!4716770)))

(declare-fun res!3166229 () Bool)

(declare-fun call!743856 () Bool)

(assert (=> b!8006939 (= res!3166229 call!743856)))

(assert (=> b!8006939 (=> (not res!3166229) (not e!4716770))))

(declare-fun b!8006940 () Bool)

(assert (=> b!8006940 (= e!4716769 e!4716767)))

(declare-fun res!3166228 () Bool)

(assert (=> b!8006940 (=> res!3166228 e!4716767)))

(assert (=> b!8006940 (= res!3166228 ((_ is EmptyLang!21639) r!15422))))

(declare-fun b!8006941 () Bool)

(assert (=> b!8006941 (= e!4716768 call!743856)))

(declare-fun bm!743851 () Bool)

(assert (=> bm!743851 (= call!743856 (lostCause!2036 (ite c!1469861 (regOne!43791 r!15422) (regTwo!43790 r!15422))))))

(assert (= (and d!2387596 res!3166227) b!8006940))

(assert (= (and b!8006940 (not res!3166228)) b!8006938))

(assert (= (and b!8006938 res!3166231) b!8006935))

(assert (= (and b!8006935 c!1469861) b!8006939))

(assert (= (and b!8006935 (not c!1469861)) b!8006936))

(assert (= (and b!8006939 res!3166229) b!8006937))

(assert (= (and b!8006936 (not res!3166230)) b!8006941))

(assert (= (or b!8006939 b!8006941) bm!743851))

(assert (= (or b!8006937 b!8006936) bm!743850))

(declare-fun m!8372124 () Bool)

(assert (=> bm!743850 m!8372124))

(declare-fun m!8372126 () Bool)

(assert (=> d!2387596 m!8372126))

(assert (=> d!2387596 m!8372126))

(declare-fun m!8372128 () Bool)

(assert (=> d!2387596 m!8372128))

(declare-fun m!8372130 () Bool)

(assert (=> bm!743851 m!8372130))

(assert (=> d!2387526 d!2387596))

(declare-fun d!2387598 () Bool)

(declare-fun lt!2715550 () Int)

(assert (=> d!2387598 (>= lt!2715550 0)))

(declare-fun e!4716773 () Int)

(assert (=> d!2387598 (= lt!2715550 e!4716773)))

(declare-fun c!1469862 () Bool)

(assert (=> d!2387598 (= c!1469862 ((_ is Nil!74744) lt!2715490))))

(assert (=> d!2387598 (= (size!43541 lt!2715490) lt!2715550)))

(declare-fun b!8006942 () Bool)

(assert (=> b!8006942 (= e!4716773 0)))

(declare-fun b!8006943 () Bool)

(assert (=> b!8006943 (= e!4716773 (+ 1 (size!43541 (t!390611 lt!2715490))))))

(assert (= (and d!2387598 c!1469862) b!8006942))

(assert (= (and d!2387598 (not c!1469862)) b!8006943))

(declare-fun m!8372132 () Bool)

(assert (=> b!8006943 m!8372132))

(assert (=> b!8006692 d!2387598))

(assert (=> b!8006692 d!2387494))

(declare-fun d!2387600 () Bool)

(declare-fun lt!2715551 () Int)

(assert (=> d!2387600 (>= lt!2715551 0)))

(declare-fun e!4716774 () Int)

(assert (=> d!2387600 (= lt!2715551 e!4716774)))

(declare-fun c!1469863 () Bool)

(assert (=> d!2387600 (= c!1469863 ((_ is Nil!74744) (Cons!74744 (head!16331 lt!2715455) Nil!74744)))))

(assert (=> d!2387600 (= (size!43541 (Cons!74744 (head!16331 lt!2715455) Nil!74744)) lt!2715551)))

(declare-fun b!8006944 () Bool)

(assert (=> b!8006944 (= e!4716774 0)))

(declare-fun b!8006945 () Bool)

(assert (=> b!8006945 (= e!4716774 (+ 1 (size!43541 (t!390611 (Cons!74744 (head!16331 lt!2715455) Nil!74744)))))))

(assert (= (and d!2387600 c!1469863) b!8006944))

(assert (= (and d!2387600 (not c!1469863)) b!8006945))

(declare-fun m!8372134 () Bool)

(assert (=> b!8006945 m!8372134))

(assert (=> b!8006692 d!2387600))

(declare-fun d!2387602 () Bool)

(declare-fun e!4716777 () Bool)

(assert (=> d!2387602 e!4716777))

(declare-fun res!3166234 () Bool)

(assert (=> d!2387602 (=> res!3166234 e!4716777)))

(declare-fun lt!2715552 () Bool)

(assert (=> d!2387602 (= res!3166234 (not lt!2715552))))

(declare-fun e!4716775 () Bool)

(assert (=> d!2387602 (= lt!2715552 e!4716775)))

(declare-fun res!3166232 () Bool)

(assert (=> d!2387602 (=> res!3166232 e!4716775)))

(assert (=> d!2387602 (= res!3166232 ((_ is Nil!74744) (tail!15854 totalInput!1349)))))

(assert (=> d!2387602 (= (isPrefix!6693 (tail!15854 totalInput!1349) (tail!15854 totalInput!1349)) lt!2715552)))

(declare-fun b!8006947 () Bool)

(declare-fun res!3166235 () Bool)

(declare-fun e!4716776 () Bool)

(assert (=> b!8006947 (=> (not res!3166235) (not e!4716776))))

(assert (=> b!8006947 (= res!3166235 (= (head!16331 (tail!15854 totalInput!1349)) (head!16331 (tail!15854 totalInput!1349))))))

(declare-fun b!8006948 () Bool)

(assert (=> b!8006948 (= e!4716776 (isPrefix!6693 (tail!15854 (tail!15854 totalInput!1349)) (tail!15854 (tail!15854 totalInput!1349))))))

(declare-fun b!8006946 () Bool)

(assert (=> b!8006946 (= e!4716775 e!4716776)))

(declare-fun res!3166233 () Bool)

(assert (=> b!8006946 (=> (not res!3166233) (not e!4716776))))

(assert (=> b!8006946 (= res!3166233 (not ((_ is Nil!74744) (tail!15854 totalInput!1349))))))

(declare-fun b!8006949 () Bool)

(assert (=> b!8006949 (= e!4716777 (>= (size!43541 (tail!15854 totalInput!1349)) (size!43541 (tail!15854 totalInput!1349))))))

(assert (= (and d!2387602 (not res!3166232)) b!8006946))

(assert (= (and b!8006946 res!3166233) b!8006947))

(assert (= (and b!8006947 res!3166235) b!8006948))

(assert (= (and d!2387602 (not res!3166234)) b!8006949))

(assert (=> b!8006947 m!8371842))

(declare-fun m!8372136 () Bool)

(assert (=> b!8006947 m!8372136))

(assert (=> b!8006947 m!8371842))

(assert (=> b!8006947 m!8372136))

(assert (=> b!8006948 m!8371842))

(declare-fun m!8372138 () Bool)

(assert (=> b!8006948 m!8372138))

(assert (=> b!8006948 m!8371842))

(assert (=> b!8006948 m!8372138))

(assert (=> b!8006948 m!8372138))

(assert (=> b!8006948 m!8372138))

(declare-fun m!8372140 () Bool)

(assert (=> b!8006948 m!8372140))

(assert (=> b!8006949 m!8371842))

(declare-fun m!8372142 () Bool)

(assert (=> b!8006949 m!8372142))

(assert (=> b!8006949 m!8371842))

(assert (=> b!8006949 m!8372142))

(assert (=> b!8006579 d!2387602))

(declare-fun d!2387604 () Bool)

(assert (=> d!2387604 (= (tail!15854 totalInput!1349) (t!390611 totalInput!1349))))

(assert (=> b!8006579 d!2387604))

(declare-fun b!8006950 () Bool)

(declare-fun e!4716779 () Bool)

(declare-fun e!4716778 () Bool)

(assert (=> b!8006950 (= e!4716779 e!4716778)))

(declare-fun c!1469864 () Bool)

(assert (=> b!8006950 (= c!1469864 ((_ is Union!21639) (ite c!1469782 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441)) (ite c!1469781 (regTwo!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regTwo!43790 (derivativeStep!6620 r!15422 lt!2715441))))))))

(declare-fun b!8006951 () Bool)

(declare-fun e!4716782 () Bool)

(declare-fun call!743858 () Bool)

(assert (=> b!8006951 (= e!4716782 call!743858)))

(declare-fun b!8006952 () Bool)

(declare-fun e!4716784 () Bool)

(assert (=> b!8006952 (= e!4716784 e!4716779)))

(declare-fun c!1469865 () Bool)

(assert (=> b!8006952 (= c!1469865 ((_ is Star!21639) (ite c!1469782 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441)) (ite c!1469781 (regTwo!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regTwo!43790 (derivativeStep!6620 r!15422 lt!2715441))))))))

(declare-fun b!8006953 () Bool)

(declare-fun res!3166239 () Bool)

(declare-fun e!4716781 () Bool)

(assert (=> b!8006953 (=> res!3166239 e!4716781)))

(assert (=> b!8006953 (= res!3166239 (not ((_ is Concat!30638) (ite c!1469782 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441)) (ite c!1469781 (regTwo!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regTwo!43790 (derivativeStep!6620 r!15422 lt!2715441)))))))))

(assert (=> b!8006953 (= e!4716778 e!4716781)))

(declare-fun b!8006954 () Bool)

(declare-fun e!4716783 () Bool)

(assert (=> b!8006954 (= e!4716779 e!4716783)))

(declare-fun res!3166236 () Bool)

(assert (=> b!8006954 (= res!3166236 (not (nullable!9697 (reg!21968 (ite c!1469782 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441)) (ite c!1469781 (regTwo!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regTwo!43790 (derivativeStep!6620 r!15422 lt!2715441))))))))))

(assert (=> b!8006954 (=> (not res!3166236) (not e!4716783))))

(declare-fun b!8006955 () Bool)

(declare-fun res!3166237 () Bool)

(declare-fun e!4716780 () Bool)

(assert (=> b!8006955 (=> (not res!3166237) (not e!4716780))))

(declare-fun call!743857 () Bool)

(assert (=> b!8006955 (= res!3166237 call!743857)))

(assert (=> b!8006955 (= e!4716778 e!4716780)))

(declare-fun bm!743852 () Bool)

(declare-fun call!743859 () Bool)

(assert (=> bm!743852 (= call!743859 (validRegex!11943 (ite c!1469865 (reg!21968 (ite c!1469782 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441)) (ite c!1469781 (regTwo!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regTwo!43790 (derivativeStep!6620 r!15422 lt!2715441))))) (ite c!1469864 (regTwo!43791 (ite c!1469782 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441)) (ite c!1469781 (regTwo!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regTwo!43790 (derivativeStep!6620 r!15422 lt!2715441))))) (regTwo!43790 (ite c!1469782 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441)) (ite c!1469781 (regTwo!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regTwo!43790 (derivativeStep!6620 r!15422 lt!2715441)))))))))))

(declare-fun b!8006956 () Bool)

(assert (=> b!8006956 (= e!4716783 call!743859)))

(declare-fun bm!743853 () Bool)

(assert (=> bm!743853 (= call!743858 call!743859)))

(declare-fun b!8006957 () Bool)

(assert (=> b!8006957 (= e!4716780 call!743858)))

(declare-fun d!2387606 () Bool)

(declare-fun res!3166238 () Bool)

(assert (=> d!2387606 (=> res!3166238 e!4716784)))

(assert (=> d!2387606 (= res!3166238 ((_ is ElementMatch!21639) (ite c!1469782 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441)) (ite c!1469781 (regTwo!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regTwo!43790 (derivativeStep!6620 r!15422 lt!2715441))))))))

(assert (=> d!2387606 (= (validRegex!11943 (ite c!1469782 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441)) (ite c!1469781 (regTwo!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regTwo!43790 (derivativeStep!6620 r!15422 lt!2715441))))) e!4716784)))

(declare-fun b!8006958 () Bool)

(assert (=> b!8006958 (= e!4716781 e!4716782)))

(declare-fun res!3166240 () Bool)

(assert (=> b!8006958 (=> (not res!3166240) (not e!4716782))))

(assert (=> b!8006958 (= res!3166240 call!743857)))

(declare-fun bm!743854 () Bool)

(assert (=> bm!743854 (= call!743857 (validRegex!11943 (ite c!1469864 (regOne!43791 (ite c!1469782 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441)) (ite c!1469781 (regTwo!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regTwo!43790 (derivativeStep!6620 r!15422 lt!2715441))))) (regOne!43790 (ite c!1469782 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441)) (ite c!1469781 (regTwo!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regTwo!43790 (derivativeStep!6620 r!15422 lt!2715441))))))))))

(assert (= (and d!2387606 (not res!3166238)) b!8006952))

(assert (= (and b!8006952 c!1469865) b!8006954))

(assert (= (and b!8006952 (not c!1469865)) b!8006950))

(assert (= (and b!8006954 res!3166236) b!8006956))

(assert (= (and b!8006950 c!1469864) b!8006955))

(assert (= (and b!8006950 (not c!1469864)) b!8006953))

(assert (= (and b!8006955 res!3166237) b!8006957))

(assert (= (and b!8006953 (not res!3166239)) b!8006958))

(assert (= (and b!8006958 res!3166240) b!8006951))

(assert (= (or b!8006957 b!8006951) bm!743853))

(assert (= (or b!8006955 b!8006958) bm!743854))

(assert (= (or b!8006956 bm!743853) bm!743852))

(declare-fun m!8372144 () Bool)

(assert (=> b!8006954 m!8372144))

(declare-fun m!8372146 () Bool)

(assert (=> bm!743852 m!8372146))

(declare-fun m!8372148 () Bool)

(assert (=> bm!743854 m!8372148))

(assert (=> bm!743804 d!2387606))

(declare-fun d!2387608 () Bool)

(declare-fun lt!2715553 () Int)

(assert (=> d!2387608 (>= lt!2715553 0)))

(declare-fun e!4716785 () Int)

(assert (=> d!2387608 (= lt!2715553 e!4716785)))

(declare-fun c!1469866 () Bool)

(assert (=> d!2387608 (= c!1469866 ((_ is Nil!74744) lt!2715452))))

(assert (=> d!2387608 (= (size!43541 lt!2715452) lt!2715553)))

(declare-fun b!8006959 () Bool)

(assert (=> b!8006959 (= e!4716785 0)))

(declare-fun b!8006960 () Bool)

(assert (=> b!8006960 (= e!4716785 (+ 1 (size!43541 (t!390611 lt!2715452))))))

(assert (= (and d!2387608 c!1469866) b!8006959))

(assert (= (and d!2387608 (not c!1469866)) b!8006960))

(declare-fun m!8372150 () Bool)

(assert (=> b!8006960 m!8372150))

(assert (=> b!8006645 d!2387608))

(assert (=> b!8006645 d!2387494))

(assert (=> b!8006689 d!2387524))

(declare-fun d!2387610 () Bool)

(declare-fun lt!2715554 () Int)

(assert (=> d!2387610 (>= lt!2715554 0)))

(declare-fun e!4716786 () Int)

(assert (=> d!2387610 (= lt!2715554 e!4716786)))

(declare-fun c!1469867 () Bool)

(assert (=> d!2387610 (= c!1469867 ((_ is Nil!74744) (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744))))))

(assert (=> d!2387610 (= (size!43541 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744))) lt!2715554)))

(declare-fun b!8006961 () Bool)

(assert (=> b!8006961 (= e!4716786 0)))

(declare-fun b!8006962 () Bool)

(assert (=> b!8006962 (= e!4716786 (+ 1 (size!43541 (t!390611 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744))))))))

(assert (= (and d!2387610 c!1469867) b!8006961))

(assert (= (and d!2387610 (not c!1469867)) b!8006962))

(declare-fun m!8372152 () Bool)

(assert (=> b!8006962 m!8372152))

(assert (=> b!8006689 d!2387610))

(declare-fun d!2387612 () Bool)

(assert (=> d!2387612 (= testedSuffix!271 lt!2715455)))

(assert (=> d!2387612 true))

(declare-fun _$63!1452 () Unit!170714)

(assert (=> d!2387612 (= (choose!60282 testedP!353 testedSuffix!271 testedP!353 lt!2715455 totalInput!1349) _$63!1452)))

(assert (=> d!2387530 d!2387612))

(assert (=> d!2387530 d!2387486))

(declare-fun d!2387614 () Bool)

(declare-fun e!4716789 () Bool)

(assert (=> d!2387614 e!4716789))

(declare-fun res!3166243 () Bool)

(assert (=> d!2387614 (=> res!3166243 e!4716789)))

(declare-fun lt!2715555 () Bool)

(assert (=> d!2387614 (= res!3166243 (not lt!2715555))))

(declare-fun e!4716787 () Bool)

(assert (=> d!2387614 (= lt!2715555 e!4716787)))

(declare-fun res!3166241 () Bool)

(assert (=> d!2387614 (=> res!3166241 e!4716787)))

(assert (=> d!2387614 (= res!3166241 ((_ is Nil!74744) (tail!15854 testedP!353)))))

(assert (=> d!2387614 (= (isPrefix!6693 (tail!15854 testedP!353) (tail!15854 totalInput!1349)) lt!2715555)))

(declare-fun b!8006964 () Bool)

(declare-fun res!3166244 () Bool)

(declare-fun e!4716788 () Bool)

(assert (=> b!8006964 (=> (not res!3166244) (not e!4716788))))

(assert (=> b!8006964 (= res!3166244 (= (head!16331 (tail!15854 testedP!353)) (head!16331 (tail!15854 totalInput!1349))))))

(declare-fun b!8006965 () Bool)

(assert (=> b!8006965 (= e!4716788 (isPrefix!6693 (tail!15854 (tail!15854 testedP!353)) (tail!15854 (tail!15854 totalInput!1349))))))

(declare-fun b!8006963 () Bool)

(assert (=> b!8006963 (= e!4716787 e!4716788)))

(declare-fun res!3166242 () Bool)

(assert (=> b!8006963 (=> (not res!3166242) (not e!4716788))))

(assert (=> b!8006963 (= res!3166242 (not ((_ is Nil!74744) (tail!15854 totalInput!1349))))))

(declare-fun b!8006966 () Bool)

(assert (=> b!8006966 (= e!4716789 (>= (size!43541 (tail!15854 totalInput!1349)) (size!43541 (tail!15854 testedP!353))))))

(assert (= (and d!2387614 (not res!3166241)) b!8006963))

(assert (= (and b!8006963 res!3166242) b!8006964))

(assert (= (and b!8006964 res!3166244) b!8006965))

(assert (= (and d!2387614 (not res!3166243)) b!8006966))

(assert (=> b!8006964 m!8371864))

(declare-fun m!8372154 () Bool)

(assert (=> b!8006964 m!8372154))

(assert (=> b!8006964 m!8371842))

(assert (=> b!8006964 m!8372136))

(assert (=> b!8006965 m!8371864))

(declare-fun m!8372156 () Bool)

(assert (=> b!8006965 m!8372156))

(assert (=> b!8006965 m!8371842))

(assert (=> b!8006965 m!8372138))

(assert (=> b!8006965 m!8372156))

(assert (=> b!8006965 m!8372138))

(declare-fun m!8372158 () Bool)

(assert (=> b!8006965 m!8372158))

(assert (=> b!8006966 m!8371842))

(assert (=> b!8006966 m!8372142))

(assert (=> b!8006966 m!8371864))

(declare-fun m!8372160 () Bool)

(assert (=> b!8006966 m!8372160))

(assert (=> b!8006640 d!2387614))

(declare-fun d!2387616 () Bool)

(assert (=> d!2387616 (= (tail!15854 testedP!353) (t!390611 testedP!353))))

(assert (=> b!8006640 d!2387616))

(assert (=> b!8006640 d!2387604))

(declare-fun d!2387618 () Bool)

(declare-fun lt!2715556 () Int)

(assert (=> d!2387618 (>= lt!2715556 0)))

(declare-fun e!4716790 () Int)

(assert (=> d!2387618 (= lt!2715556 e!4716790)))

(declare-fun c!1469868 () Bool)

(assert (=> d!2387618 (= c!1469868 ((_ is Nil!74744) (t!390611 testedP!353)))))

(assert (=> d!2387618 (= (size!43541 (t!390611 testedP!353)) lt!2715556)))

(declare-fun b!8006967 () Bool)

(assert (=> b!8006967 (= e!4716790 0)))

(declare-fun b!8006968 () Bool)

(assert (=> b!8006968 (= e!4716790 (+ 1 (size!43541 (t!390611 (t!390611 testedP!353)))))))

(assert (= (and d!2387618 c!1469868) b!8006967))

(assert (= (and d!2387618 (not c!1469868)) b!8006968))

(declare-fun m!8372162 () Bool)

(assert (=> b!8006968 m!8372162))

(assert (=> b!8006651 d!2387618))

(declare-fun e!4716791 () Bool)

(declare-fun lt!2715557 () List!74868)

(declare-fun b!8006972 () Bool)

(assert (=> b!8006972 (= e!4716791 (or (not (= (Cons!74744 (head!16331 lt!2715455) Nil!74744) Nil!74744)) (= lt!2715557 (t!390611 testedP!353))))))

(declare-fun b!8006971 () Bool)

(declare-fun res!3166246 () Bool)

(assert (=> b!8006971 (=> (not res!3166246) (not e!4716791))))

(assert (=> b!8006971 (= res!3166246 (= (size!43541 lt!2715557) (+ (size!43541 (t!390611 testedP!353)) (size!43541 (Cons!74744 (head!16331 lt!2715455) Nil!74744)))))))

(declare-fun b!8006970 () Bool)

(declare-fun e!4716792 () List!74868)

(assert (=> b!8006970 (= e!4716792 (Cons!74744 (h!81192 (t!390611 testedP!353)) (++!18465 (t!390611 (t!390611 testedP!353)) (Cons!74744 (head!16331 lt!2715455) Nil!74744))))))

(declare-fun b!8006969 () Bool)

(assert (=> b!8006969 (= e!4716792 (Cons!74744 (head!16331 lt!2715455) Nil!74744))))

(declare-fun d!2387620 () Bool)

(assert (=> d!2387620 e!4716791))

(declare-fun res!3166245 () Bool)

(assert (=> d!2387620 (=> (not res!3166245) (not e!4716791))))

(assert (=> d!2387620 (= res!3166245 (= (content!15893 lt!2715557) ((_ map or) (content!15893 (t!390611 testedP!353)) (content!15893 (Cons!74744 (head!16331 lt!2715455) Nil!74744)))))))

(assert (=> d!2387620 (= lt!2715557 e!4716792)))

(declare-fun c!1469869 () Bool)

(assert (=> d!2387620 (= c!1469869 ((_ is Nil!74744) (t!390611 testedP!353)))))

(assert (=> d!2387620 (= (++!18465 (t!390611 testedP!353) (Cons!74744 (head!16331 lt!2715455) Nil!74744)) lt!2715557)))

(assert (= (and d!2387620 c!1469869) b!8006969))

(assert (= (and d!2387620 (not c!1469869)) b!8006970))

(assert (= (and d!2387620 res!3166245) b!8006971))

(assert (= (and b!8006971 res!3166246) b!8006972))

(declare-fun m!8372164 () Bool)

(assert (=> b!8006971 m!8372164))

(assert (=> b!8006971 m!8371880))

(assert (=> b!8006971 m!8371934))

(declare-fun m!8372166 () Bool)

(assert (=> b!8006970 m!8372166))

(declare-fun m!8372168 () Bool)

(assert (=> d!2387620 m!8372168))

(declare-fun m!8372170 () Bool)

(assert (=> d!2387620 m!8372170))

(assert (=> d!2387620 m!8371940))

(assert (=> b!8006691 d!2387620))

(declare-fun d!2387622 () Bool)

(assert (=> d!2387622 (= (head!16331 totalInput!1349) (h!81192 totalInput!1349))))

(assert (=> b!8006578 d!2387622))

(declare-fun d!2387624 () Bool)

(assert (=> d!2387624 (= (head!16331 testedP!353) (h!81192 testedP!353))))

(assert (=> b!8006643 d!2387624))

(declare-fun d!2387626 () Bool)

(assert (=> d!2387626 (= (head!16331 lt!2715452) (h!81192 lt!2715452))))

(assert (=> b!8006643 d!2387626))

(declare-fun d!2387628 () Bool)

(assert (=> d!2387628 (= (head!16331 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744))) (h!81192 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744))))))

(assert (=> b!8006687 d!2387628))

(assert (=> b!8006687 d!2387622))

(declare-fun bm!743855 () Bool)

(declare-fun call!743863 () Regex!21639)

(declare-fun call!743861 () Regex!21639)

(assert (=> bm!743855 (= call!743863 call!743861)))

(declare-fun d!2387630 () Bool)

(declare-fun lt!2715558 () Regex!21639)

(assert (=> d!2387630 (validRegex!11943 lt!2715558)))

(declare-fun e!4716795 () Regex!21639)

(assert (=> d!2387630 (= lt!2715558 e!4716795)))

(declare-fun c!1469870 () Bool)

(assert (=> d!2387630 (= c!1469870 (or ((_ is EmptyExpr!21639) (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422))))) ((_ is EmptyLang!21639) (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422)))))))))

(assert (=> d!2387630 (validRegex!11943 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422)))))))

(assert (=> d!2387630 (= (derivativeStep!6620 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422)))) lt!2715441) lt!2715558)))

(declare-fun b!8006973 () Bool)

(assert (=> b!8006973 (= e!4716795 EmptyLang!21639)))

(declare-fun bm!743856 () Bool)

(declare-fun call!743862 () Regex!21639)

(assert (=> bm!743856 (= call!743861 call!743862)))

(declare-fun e!4716797 () Regex!21639)

(declare-fun b!8006974 () Bool)

(assert (=> b!8006974 (= e!4716797 (ite (= lt!2715441 (c!1469776 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422)))))) EmptyExpr!21639 EmptyLang!21639))))

(declare-fun b!8006975 () Bool)

(declare-fun e!4716793 () Regex!21639)

(declare-fun e!4716794 () Regex!21639)

(assert (=> b!8006975 (= e!4716793 e!4716794)))

(declare-fun c!1469873 () Bool)

(assert (=> b!8006975 (= c!1469873 ((_ is Star!21639) (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422))))))))

(declare-fun b!8006976 () Bool)

(assert (=> b!8006976 (= e!4716794 (Concat!30638 call!743861 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422))))))))

(declare-fun b!8006977 () Bool)

(assert (=> b!8006977 (= e!4716795 e!4716797)))

(declare-fun c!1469874 () Bool)

(assert (=> b!8006977 (= c!1469874 ((_ is ElementMatch!21639) (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422))))))))

(declare-fun c!1469872 () Bool)

(declare-fun b!8006978 () Bool)

(assert (=> b!8006978 (= c!1469872 ((_ is Union!21639) (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422))))))))

(assert (=> b!8006978 (= e!4716797 e!4716793)))

(declare-fun c!1469871 () Bool)

(declare-fun b!8006979 () Bool)

(assert (=> b!8006979 (= c!1469871 (nullable!9697 (regOne!43790 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422)))))))))

(declare-fun e!4716796 () Regex!21639)

(assert (=> b!8006979 (= e!4716794 e!4716796)))

(declare-fun b!8006980 () Bool)

(declare-fun call!743860 () Regex!21639)

(assert (=> b!8006980 (= e!4716796 (Union!21639 (Concat!30638 call!743860 (regTwo!43790 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422)))))) call!743863))))

(declare-fun b!8006981 () Bool)

(assert (=> b!8006981 (= e!4716796 (Union!21639 (Concat!30638 call!743863 (regTwo!43790 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422)))))) EmptyLang!21639))))

(declare-fun bm!743857 () Bool)

(assert (=> bm!743857 (= call!743862 (derivativeStep!6620 (ite c!1469872 (regTwo!43791 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422))))) (ite c!1469873 (reg!21968 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422))))) (ite c!1469871 (regTwo!43790 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422))))) (regOne!43790 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422)))))))) lt!2715441))))

(declare-fun bm!743858 () Bool)

(assert (=> bm!743858 (= call!743860 (derivativeStep!6620 (ite c!1469872 (regOne!43791 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422))))) (regOne!43790 (ite c!1469795 (regTwo!43791 r!15422) (ite c!1469796 (reg!21968 r!15422) (ite c!1469794 (regTwo!43790 r!15422) (regOne!43790 r!15422)))))) lt!2715441))))

(declare-fun b!8006982 () Bool)

(assert (=> b!8006982 (= e!4716793 (Union!21639 call!743860 call!743862))))

(assert (= (and d!2387630 c!1469870) b!8006973))

(assert (= (and d!2387630 (not c!1469870)) b!8006977))

(assert (= (and b!8006977 c!1469874) b!8006974))

(assert (= (and b!8006977 (not c!1469874)) b!8006978))

(assert (= (and b!8006978 c!1469872) b!8006982))

(assert (= (and b!8006978 (not c!1469872)) b!8006975))

(assert (= (and b!8006975 c!1469873) b!8006976))

(assert (= (and b!8006975 (not c!1469873)) b!8006979))

(assert (= (and b!8006979 c!1469871) b!8006980))

(assert (= (and b!8006979 (not c!1469871)) b!8006981))

(assert (= (or b!8006980 b!8006981) bm!743855))

(assert (= (or b!8006976 bm!743855) bm!743856))

(assert (= (or b!8006982 bm!743856) bm!743857))

(assert (= (or b!8006982 b!8006980) bm!743858))

(declare-fun m!8372172 () Bool)

(assert (=> d!2387630 m!8372172))

(declare-fun m!8372174 () Bool)

(assert (=> d!2387630 m!8372174))

(declare-fun m!8372176 () Bool)

(assert (=> b!8006979 m!8372176))

(declare-fun m!8372178 () Bool)

(assert (=> bm!743857 m!8372178))

(declare-fun m!8372180 () Bool)

(assert (=> bm!743858 m!8372180))

(assert (=> bm!743817 d!2387630))

(assert (=> d!2387476 d!2387478))

(declare-fun d!2387632 () Bool)

(assert (=> d!2387632 (isPrefix!6693 totalInput!1349 totalInput!1349)))

(assert (=> d!2387632 true))

(declare-fun _$45!2518 () Unit!170714)

(assert (=> d!2387632 (= (choose!60275 totalInput!1349 totalInput!1349) _$45!2518)))

(declare-fun bs!1970727 () Bool)

(assert (= bs!1970727 d!2387632))

(assert (=> bs!1970727 m!8371788))

(assert (=> d!2387476 d!2387632))

(declare-fun d!2387634 () Bool)

(assert (=> d!2387634 (= (nullable!9697 (reg!21968 r!15422)) (nullableFct!3826 (reg!21968 r!15422)))))

(declare-fun bs!1970728 () Bool)

(assert (= bs!1970728 d!2387634))

(declare-fun m!8372182 () Bool)

(assert (=> bs!1970728 m!8372182))

(assert (=> b!8006698 d!2387634))

(declare-fun e!4716798 () Bool)

(declare-fun b!8006986 () Bool)

(declare-fun lt!2715559 () List!74868)

(assert (=> b!8006986 (= e!4716798 (or (not (= lt!2715501 Nil!74744)) (= lt!2715559 testedP!353)))))

(declare-fun b!8006985 () Bool)

(declare-fun res!3166248 () Bool)

(assert (=> b!8006985 (=> (not res!3166248) (not e!4716798))))

(assert (=> b!8006985 (= res!3166248 (= (size!43541 lt!2715559) (+ (size!43541 testedP!353) (size!43541 lt!2715501))))))

(declare-fun b!8006984 () Bool)

(declare-fun e!4716799 () List!74868)

(assert (=> b!8006984 (= e!4716799 (Cons!74744 (h!81192 testedP!353) (++!18465 (t!390611 testedP!353) lt!2715501)))))

(declare-fun b!8006983 () Bool)

(assert (=> b!8006983 (= e!4716799 lt!2715501)))

(declare-fun d!2387636 () Bool)

(assert (=> d!2387636 e!4716798))

(declare-fun res!3166247 () Bool)

(assert (=> d!2387636 (=> (not res!3166247) (not e!4716798))))

(assert (=> d!2387636 (= res!3166247 (= (content!15893 lt!2715559) ((_ map or) (content!15893 testedP!353) (content!15893 lt!2715501))))))

(assert (=> d!2387636 (= lt!2715559 e!4716799)))

(declare-fun c!1469875 () Bool)

(assert (=> d!2387636 (= c!1469875 ((_ is Nil!74744) testedP!353))))

(assert (=> d!2387636 (= (++!18465 testedP!353 lt!2715501) lt!2715559)))

(assert (= (and d!2387636 c!1469875) b!8006983))

(assert (= (and d!2387636 (not c!1469875)) b!8006984))

(assert (= (and d!2387636 res!3166247) b!8006985))

(assert (= (and b!8006985 res!3166248) b!8006986))

(declare-fun m!8372184 () Bool)

(assert (=> b!8006985 m!8372184))

(assert (=> b!8006985 m!8371836))

(declare-fun m!8372186 () Bool)

(assert (=> b!8006985 m!8372186))

(declare-fun m!8372188 () Bool)

(assert (=> b!8006984 m!8372188))

(declare-fun m!8372190 () Bool)

(assert (=> d!2387636 m!8372190))

(assert (=> d!2387636 m!8371920))

(declare-fun m!8372192 () Bool)

(assert (=> d!2387636 m!8372192))

(assert (=> d!2387532 d!2387636))

(assert (=> d!2387532 d!2387524))

(assert (=> d!2387532 d!2387494))

(declare-fun b!8006987 () Bool)

(declare-fun e!4716801 () Bool)

(declare-fun e!4716800 () Bool)

(assert (=> b!8006987 (= e!4716801 e!4716800)))

(declare-fun c!1469876 () Bool)

(assert (=> b!8006987 (= c!1469876 ((_ is Union!21639) (ite c!1469811 (reg!21968 r!15422) (ite c!1469810 (regTwo!43791 r!15422) (regTwo!43790 r!15422)))))))

(declare-fun b!8006988 () Bool)

(declare-fun e!4716804 () Bool)

(declare-fun call!743865 () Bool)

(assert (=> b!8006988 (= e!4716804 call!743865)))

(declare-fun b!8006989 () Bool)

(declare-fun e!4716806 () Bool)

(assert (=> b!8006989 (= e!4716806 e!4716801)))

(declare-fun c!1469877 () Bool)

(assert (=> b!8006989 (= c!1469877 ((_ is Star!21639) (ite c!1469811 (reg!21968 r!15422) (ite c!1469810 (regTwo!43791 r!15422) (regTwo!43790 r!15422)))))))

(declare-fun b!8006990 () Bool)

(declare-fun res!3166252 () Bool)

(declare-fun e!4716803 () Bool)

(assert (=> b!8006990 (=> res!3166252 e!4716803)))

(assert (=> b!8006990 (= res!3166252 (not ((_ is Concat!30638) (ite c!1469811 (reg!21968 r!15422) (ite c!1469810 (regTwo!43791 r!15422) (regTwo!43790 r!15422))))))))

(assert (=> b!8006990 (= e!4716800 e!4716803)))

(declare-fun b!8006991 () Bool)

(declare-fun e!4716805 () Bool)

(assert (=> b!8006991 (= e!4716801 e!4716805)))

(declare-fun res!3166249 () Bool)

(assert (=> b!8006991 (= res!3166249 (not (nullable!9697 (reg!21968 (ite c!1469811 (reg!21968 r!15422) (ite c!1469810 (regTwo!43791 r!15422) (regTwo!43790 r!15422)))))))))

(assert (=> b!8006991 (=> (not res!3166249) (not e!4716805))))

(declare-fun b!8006992 () Bool)

(declare-fun res!3166250 () Bool)

(declare-fun e!4716802 () Bool)

(assert (=> b!8006992 (=> (not res!3166250) (not e!4716802))))

(declare-fun call!743864 () Bool)

(assert (=> b!8006992 (= res!3166250 call!743864)))

(assert (=> b!8006992 (= e!4716800 e!4716802)))

(declare-fun bm!743859 () Bool)

(declare-fun call!743866 () Bool)

(assert (=> bm!743859 (= call!743866 (validRegex!11943 (ite c!1469877 (reg!21968 (ite c!1469811 (reg!21968 r!15422) (ite c!1469810 (regTwo!43791 r!15422) (regTwo!43790 r!15422)))) (ite c!1469876 (regTwo!43791 (ite c!1469811 (reg!21968 r!15422) (ite c!1469810 (regTwo!43791 r!15422) (regTwo!43790 r!15422)))) (regTwo!43790 (ite c!1469811 (reg!21968 r!15422) (ite c!1469810 (regTwo!43791 r!15422) (regTwo!43790 r!15422))))))))))

(declare-fun b!8006993 () Bool)

(assert (=> b!8006993 (= e!4716805 call!743866)))

(declare-fun bm!743860 () Bool)

(assert (=> bm!743860 (= call!743865 call!743866)))

(declare-fun b!8006994 () Bool)

(assert (=> b!8006994 (= e!4716802 call!743865)))

(declare-fun d!2387638 () Bool)

(declare-fun res!3166251 () Bool)

(assert (=> d!2387638 (=> res!3166251 e!4716806)))

(assert (=> d!2387638 (= res!3166251 ((_ is ElementMatch!21639) (ite c!1469811 (reg!21968 r!15422) (ite c!1469810 (regTwo!43791 r!15422) (regTwo!43790 r!15422)))))))

(assert (=> d!2387638 (= (validRegex!11943 (ite c!1469811 (reg!21968 r!15422) (ite c!1469810 (regTwo!43791 r!15422) (regTwo!43790 r!15422)))) e!4716806)))

(declare-fun b!8006995 () Bool)

(assert (=> b!8006995 (= e!4716803 e!4716804)))

(declare-fun res!3166253 () Bool)

(assert (=> b!8006995 (=> (not res!3166253) (not e!4716804))))

(assert (=> b!8006995 (= res!3166253 call!743864)))

(declare-fun bm!743861 () Bool)

(assert (=> bm!743861 (= call!743864 (validRegex!11943 (ite c!1469876 (regOne!43791 (ite c!1469811 (reg!21968 r!15422) (ite c!1469810 (regTwo!43791 r!15422) (regTwo!43790 r!15422)))) (regOne!43790 (ite c!1469811 (reg!21968 r!15422) (ite c!1469810 (regTwo!43791 r!15422) (regTwo!43790 r!15422)))))))))

(assert (= (and d!2387638 (not res!3166251)) b!8006989))

(assert (= (and b!8006989 c!1469877) b!8006991))

(assert (= (and b!8006989 (not c!1469877)) b!8006987))

(assert (= (and b!8006991 res!3166249) b!8006993))

(assert (= (and b!8006987 c!1469876) b!8006992))

(assert (= (and b!8006987 (not c!1469876)) b!8006990))

(assert (= (and b!8006992 res!3166250) b!8006994))

(assert (= (and b!8006990 (not res!3166252)) b!8006995))

(assert (= (and b!8006995 res!3166253) b!8006988))

(assert (= (or b!8006994 b!8006988) bm!743860))

(assert (= (or b!8006992 b!8006995) bm!743861))

(assert (= (or b!8006993 bm!743860) bm!743859))

(declare-fun m!8372194 () Bool)

(assert (=> b!8006991 m!8372194))

(declare-fun m!8372196 () Bool)

(assert (=> bm!743859 m!8372196))

(declare-fun m!8372198 () Bool)

(assert (=> bm!743861 m!8372198))

(assert (=> bm!743825 d!2387638))

(declare-fun d!2387640 () Bool)

(declare-fun c!1469878 () Bool)

(assert (=> d!2387640 (= c!1469878 ((_ is Nil!74744) lt!2715502))))

(declare-fun e!4716807 () (InoxSet C!43616))

(assert (=> d!2387640 (= (content!15893 lt!2715502) e!4716807)))

(declare-fun b!8006996 () Bool)

(assert (=> b!8006996 (= e!4716807 ((as const (Array C!43616 Bool)) false))))

(declare-fun b!8006997 () Bool)

(assert (=> b!8006997 (= e!4716807 ((_ map or) (store ((as const (Array C!43616 Bool)) false) (h!81192 lt!2715502) true) (content!15893 (t!390611 lt!2715502))))))

(assert (= (and d!2387640 c!1469878) b!8006996))

(assert (= (and d!2387640 (not c!1469878)) b!8006997))

(declare-fun m!8372200 () Bool)

(assert (=> b!8006997 m!8372200))

(declare-fun m!8372202 () Bool)

(assert (=> b!8006997 m!8372202))

(assert (=> d!2387534 d!2387640))

(declare-fun d!2387642 () Bool)

(declare-fun c!1469879 () Bool)

(assert (=> d!2387642 (= c!1469879 ((_ is Nil!74744) testedP!353))))

(declare-fun e!4716808 () (InoxSet C!43616))

(assert (=> d!2387642 (= (content!15893 testedP!353) e!4716808)))

(declare-fun b!8006998 () Bool)

(assert (=> b!8006998 (= e!4716808 ((as const (Array C!43616 Bool)) false))))

(declare-fun b!8006999 () Bool)

(assert (=> b!8006999 (= e!4716808 ((_ map or) (store ((as const (Array C!43616 Bool)) false) (h!81192 testedP!353) true) (content!15893 (t!390611 testedP!353))))))

(assert (= (and d!2387642 c!1469879) b!8006998))

(assert (= (and d!2387642 (not c!1469879)) b!8006999))

(declare-fun m!8372204 () Bool)

(assert (=> b!8006999 m!8372204))

(assert (=> b!8006999 m!8372170))

(assert (=> d!2387534 d!2387642))

(declare-fun d!2387644 () Bool)

(declare-fun c!1469880 () Bool)

(assert (=> d!2387644 (= c!1469880 ((_ is Nil!74744) testedSuffix!271))))

(declare-fun e!4716809 () (InoxSet C!43616))

(assert (=> d!2387644 (= (content!15893 testedSuffix!271) e!4716809)))

(declare-fun b!8007000 () Bool)

(assert (=> b!8007000 (= e!4716809 ((as const (Array C!43616 Bool)) false))))

(declare-fun b!8007001 () Bool)

(assert (=> b!8007001 (= e!4716809 ((_ map or) (store ((as const (Array C!43616 Bool)) false) (h!81192 testedSuffix!271) true) (content!15893 (t!390611 testedSuffix!271))))))

(assert (= (and d!2387644 c!1469880) b!8007000))

(assert (= (and d!2387644 (not c!1469880)) b!8007001))

(declare-fun m!8372206 () Bool)

(assert (=> b!8007001 m!8372206))

(declare-fun m!8372208 () Bool)

(assert (=> b!8007001 m!8372208))

(assert (=> d!2387534 d!2387644))

(declare-fun lt!2715560 () List!74868)

(declare-fun e!4716810 () Bool)

(declare-fun b!8007005 () Bool)

(assert (=> b!8007005 (= e!4716810 (or (not (= lt!2715454 Nil!74744)) (= lt!2715560 (++!18465 testedP!353 (Cons!74744 lt!2715441 Nil!74744)))))))

(declare-fun b!8007004 () Bool)

(declare-fun res!3166255 () Bool)

(assert (=> b!8007004 (=> (not res!3166255) (not e!4716810))))

(assert (=> b!8007004 (= res!3166255 (= (size!43541 lt!2715560) (+ (size!43541 (++!18465 testedP!353 (Cons!74744 lt!2715441 Nil!74744))) (size!43541 lt!2715454))))))

(declare-fun e!4716811 () List!74868)

(declare-fun b!8007003 () Bool)

(assert (=> b!8007003 (= e!4716811 (Cons!74744 (h!81192 (++!18465 testedP!353 (Cons!74744 lt!2715441 Nil!74744))) (++!18465 (t!390611 (++!18465 testedP!353 (Cons!74744 lt!2715441 Nil!74744))) lt!2715454)))))

(declare-fun b!8007002 () Bool)

(assert (=> b!8007002 (= e!4716811 lt!2715454)))

(declare-fun d!2387646 () Bool)

(assert (=> d!2387646 e!4716810))

(declare-fun res!3166254 () Bool)

(assert (=> d!2387646 (=> (not res!3166254) (not e!4716810))))

(assert (=> d!2387646 (= res!3166254 (= (content!15893 lt!2715560) ((_ map or) (content!15893 (++!18465 testedP!353 (Cons!74744 lt!2715441 Nil!74744))) (content!15893 lt!2715454))))))

(assert (=> d!2387646 (= lt!2715560 e!4716811)))

(declare-fun c!1469881 () Bool)

(assert (=> d!2387646 (= c!1469881 ((_ is Nil!74744) (++!18465 testedP!353 (Cons!74744 lt!2715441 Nil!74744))))))

(assert (=> d!2387646 (= (++!18465 (++!18465 testedP!353 (Cons!74744 lt!2715441 Nil!74744)) lt!2715454) lt!2715560)))

(assert (= (and d!2387646 c!1469881) b!8007002))

(assert (= (and d!2387646 (not c!1469881)) b!8007003))

(assert (= (and d!2387646 res!3166254) b!8007004))

(assert (= (and b!8007004 res!3166255) b!8007005))

(declare-fun m!8372210 () Bool)

(assert (=> b!8007004 m!8372210))

(assert (=> b!8007004 m!8371822))

(declare-fun m!8372212 () Bool)

(assert (=> b!8007004 m!8372212))

(assert (=> b!8007004 m!8371902))

(declare-fun m!8372214 () Bool)

(assert (=> b!8007003 m!8372214))

(declare-fun m!8372216 () Bool)

(assert (=> d!2387646 m!8372216))

(assert (=> d!2387646 m!8371822))

(declare-fun m!8372218 () Bool)

(assert (=> d!2387646 m!8372218))

(assert (=> d!2387646 m!8371910))

(assert (=> d!2387500 d!2387646))

(assert (=> d!2387500 d!2387510))

(declare-fun d!2387648 () Bool)

(assert (=> d!2387648 (= (++!18465 (++!18465 testedP!353 (Cons!74744 lt!2715441 Nil!74744)) lt!2715454) totalInput!1349)))

(assert (=> d!2387648 true))

(declare-fun _$68!1536 () Unit!170714)

(assert (=> d!2387648 (= (choose!60279 testedP!353 lt!2715441 lt!2715454 totalInput!1349) _$68!1536)))

(declare-fun bs!1970729 () Bool)

(assert (= bs!1970729 d!2387648))

(assert (=> bs!1970729 m!8371822))

(assert (=> bs!1970729 m!8371822))

(assert (=> bs!1970729 m!8371892))

(assert (=> d!2387500 d!2387648))

(declare-fun lt!2715561 () List!74868)

(declare-fun b!8007009 () Bool)

(declare-fun e!4716812 () Bool)

(assert (=> b!8007009 (= e!4716812 (or (not (= (Cons!74744 lt!2715441 lt!2715454) Nil!74744)) (= lt!2715561 testedP!353)))))

(declare-fun b!8007008 () Bool)

(declare-fun res!3166257 () Bool)

(assert (=> b!8007008 (=> (not res!3166257) (not e!4716812))))

(assert (=> b!8007008 (= res!3166257 (= (size!43541 lt!2715561) (+ (size!43541 testedP!353) (size!43541 (Cons!74744 lt!2715441 lt!2715454)))))))

(declare-fun e!4716813 () List!74868)

(declare-fun b!8007007 () Bool)

(assert (=> b!8007007 (= e!4716813 (Cons!74744 (h!81192 testedP!353) (++!18465 (t!390611 testedP!353) (Cons!74744 lt!2715441 lt!2715454))))))

(declare-fun b!8007006 () Bool)

(assert (=> b!8007006 (= e!4716813 (Cons!74744 lt!2715441 lt!2715454))))

(declare-fun d!2387650 () Bool)

(assert (=> d!2387650 e!4716812))

(declare-fun res!3166256 () Bool)

(assert (=> d!2387650 (=> (not res!3166256) (not e!4716812))))

(assert (=> d!2387650 (= res!3166256 (= (content!15893 lt!2715561) ((_ map or) (content!15893 testedP!353) (content!15893 (Cons!74744 lt!2715441 lt!2715454)))))))

(assert (=> d!2387650 (= lt!2715561 e!4716813)))

(declare-fun c!1469882 () Bool)

(assert (=> d!2387650 (= c!1469882 ((_ is Nil!74744) testedP!353))))

(assert (=> d!2387650 (= (++!18465 testedP!353 (Cons!74744 lt!2715441 lt!2715454)) lt!2715561)))

(assert (= (and d!2387650 c!1469882) b!8007006))

(assert (= (and d!2387650 (not c!1469882)) b!8007007))

(assert (= (and d!2387650 res!3166256) b!8007008))

(assert (= (and b!8007008 res!3166257) b!8007009))

(declare-fun m!8372220 () Bool)

(assert (=> b!8007008 m!8372220))

(assert (=> b!8007008 m!8371836))

(declare-fun m!8372222 () Bool)

(assert (=> b!8007008 m!8372222))

(declare-fun m!8372224 () Bool)

(assert (=> b!8007007 m!8372224))

(declare-fun m!8372226 () Bool)

(assert (=> d!2387650 m!8372226))

(assert (=> d!2387650 m!8371920))

(declare-fun m!8372228 () Bool)

(assert (=> d!2387650 m!8372228))

(assert (=> d!2387500 d!2387650))

(declare-fun d!2387652 () Bool)

(declare-fun c!1469883 () Bool)

(assert (=> d!2387652 (= c!1469883 ((_ is Nil!74744) lt!2715490))))

(declare-fun e!4716814 () (InoxSet C!43616))

(assert (=> d!2387652 (= (content!15893 lt!2715490) e!4716814)))

(declare-fun b!8007010 () Bool)

(assert (=> b!8007010 (= e!4716814 ((as const (Array C!43616 Bool)) false))))

(declare-fun b!8007011 () Bool)

(assert (=> b!8007011 (= e!4716814 ((_ map or) (store ((as const (Array C!43616 Bool)) false) (h!81192 lt!2715490) true) (content!15893 (t!390611 lt!2715490))))))

(assert (= (and d!2387652 c!1469883) b!8007010))

(assert (= (and d!2387652 (not c!1469883)) b!8007011))

(declare-fun m!8372230 () Bool)

(assert (=> b!8007011 m!8372230))

(declare-fun m!8372232 () Bool)

(assert (=> b!8007011 m!8372232))

(assert (=> d!2387516 d!2387652))

(assert (=> d!2387516 d!2387642))

(declare-fun d!2387654 () Bool)

(declare-fun c!1469884 () Bool)

(assert (=> d!2387654 (= c!1469884 ((_ is Nil!74744) (Cons!74744 (head!16331 lt!2715455) Nil!74744)))))

(declare-fun e!4716815 () (InoxSet C!43616))

(assert (=> d!2387654 (= (content!15893 (Cons!74744 (head!16331 lt!2715455) Nil!74744)) e!4716815)))

(declare-fun b!8007012 () Bool)

(assert (=> b!8007012 (= e!4716815 ((as const (Array C!43616 Bool)) false))))

(declare-fun b!8007013 () Bool)

(assert (=> b!8007013 (= e!4716815 ((_ map or) (store ((as const (Array C!43616 Bool)) false) (h!81192 (Cons!74744 (head!16331 lt!2715455) Nil!74744)) true) (content!15893 (t!390611 (Cons!74744 (head!16331 lt!2715455) Nil!74744)))))))

(assert (= (and d!2387654 c!1469884) b!8007012))

(assert (= (and d!2387654 (not c!1469884)) b!8007013))

(declare-fun m!8372234 () Bool)

(assert (=> b!8007013 m!8372234))

(declare-fun m!8372236 () Bool)

(assert (=> b!8007013 m!8372236))

(assert (=> d!2387516 d!2387654))

(declare-fun d!2387656 () Bool)

(declare-fun lt!2715562 () Int)

(assert (=> d!2387656 (>= lt!2715562 0)))

(declare-fun e!4716816 () Int)

(assert (=> d!2387656 (= lt!2715562 e!4716816)))

(declare-fun c!1469885 () Bool)

(assert (=> d!2387656 (= c!1469885 ((_ is Nil!74744) lt!2715488))))

(assert (=> d!2387656 (= (size!43541 lt!2715488) lt!2715562)))

(declare-fun b!8007014 () Bool)

(assert (=> b!8007014 (= e!4716816 0)))

(declare-fun b!8007015 () Bool)

(assert (=> b!8007015 (= e!4716816 (+ 1 (size!43541 (t!390611 lt!2715488))))))

(assert (= (and d!2387656 c!1469885) b!8007014))

(assert (= (and d!2387656 (not c!1469885)) b!8007015))

(declare-fun m!8372238 () Bool)

(assert (=> b!8007015 m!8372238))

(assert (=> b!8006684 d!2387656))

(assert (=> b!8006684 d!2387494))

(declare-fun d!2387658 () Bool)

(declare-fun lt!2715563 () Int)

(assert (=> d!2387658 (>= lt!2715563 0)))

(declare-fun e!4716817 () Int)

(assert (=> d!2387658 (= lt!2715563 e!4716817)))

(declare-fun c!1469886 () Bool)

(assert (=> d!2387658 (= c!1469886 ((_ is Nil!74744) (Cons!74744 lt!2715441 Nil!74744)))))

(assert (=> d!2387658 (= (size!43541 (Cons!74744 lt!2715441 Nil!74744)) lt!2715563)))

(declare-fun b!8007016 () Bool)

(assert (=> b!8007016 (= e!4716817 0)))

(declare-fun b!8007017 () Bool)

(assert (=> b!8007017 (= e!4716817 (+ 1 (size!43541 (t!390611 (Cons!74744 lt!2715441 Nil!74744)))))))

(assert (= (and d!2387658 c!1469886) b!8007016))

(assert (= (and d!2387658 (not c!1469886)) b!8007017))

(declare-fun m!8372240 () Bool)

(assert (=> b!8007017 m!8372240))

(assert (=> b!8006684 d!2387658))

(declare-fun b!8007032 () Bool)

(declare-fun e!4716830 () Bool)

(declare-fun e!4716831 () Bool)

(assert (=> b!8007032 (= e!4716830 e!4716831)))

(declare-fun c!1469889 () Bool)

(assert (=> b!8007032 (= c!1469889 ((_ is Union!21639) r!15422))))

(declare-fun b!8007033 () Bool)

(declare-fun e!4716835 () Bool)

(declare-fun e!4716834 () Bool)

(assert (=> b!8007033 (= e!4716835 e!4716834)))

(declare-fun res!3166268 () Bool)

(assert (=> b!8007033 (=> (not res!3166268) (not e!4716834))))

(assert (=> b!8007033 (= res!3166268 (and (not ((_ is EmptyLang!21639) r!15422)) (not ((_ is ElementMatch!21639) r!15422))))))

(declare-fun b!8007034 () Bool)

(assert (=> b!8007034 (= e!4716834 e!4716830)))

(declare-fun res!3166272 () Bool)

(assert (=> b!8007034 (=> res!3166272 e!4716830)))

(assert (=> b!8007034 (= res!3166272 ((_ is Star!21639) r!15422))))

(declare-fun d!2387660 () Bool)

(declare-fun res!3166271 () Bool)

(assert (=> d!2387660 (=> res!3166271 e!4716835)))

(assert (=> d!2387660 (= res!3166271 ((_ is EmptyExpr!21639) r!15422))))

(assert (=> d!2387660 (= (nullableFct!3826 r!15422) e!4716835)))

(declare-fun bm!743866 () Bool)

(declare-fun call!743871 () Bool)

(assert (=> bm!743866 (= call!743871 (nullable!9697 (ite c!1469889 (regTwo!43791 r!15422) (regOne!43790 r!15422))))))

(declare-fun b!8007035 () Bool)

(declare-fun e!4716832 () Bool)

(assert (=> b!8007035 (= e!4716832 call!743871)))

(declare-fun b!8007036 () Bool)

(declare-fun e!4716833 () Bool)

(assert (=> b!8007036 (= e!4716831 e!4716833)))

(declare-fun res!3166269 () Bool)

(assert (=> b!8007036 (= res!3166269 call!743871)))

(assert (=> b!8007036 (=> (not res!3166269) (not e!4716833))))

(declare-fun b!8007037 () Bool)

(assert (=> b!8007037 (= e!4716831 e!4716832)))

(declare-fun res!3166270 () Bool)

(declare-fun call!743872 () Bool)

(assert (=> b!8007037 (= res!3166270 call!743872)))

(assert (=> b!8007037 (=> res!3166270 e!4716832)))

(declare-fun bm!743867 () Bool)

(assert (=> bm!743867 (= call!743872 (nullable!9697 (ite c!1469889 (regOne!43791 r!15422) (regTwo!43790 r!15422))))))

(declare-fun b!8007038 () Bool)

(assert (=> b!8007038 (= e!4716833 call!743872)))

(assert (= (and d!2387660 (not res!3166271)) b!8007033))

(assert (= (and b!8007033 res!3166268) b!8007034))

(assert (= (and b!8007034 (not res!3166272)) b!8007032))

(assert (= (and b!8007032 c!1469889) b!8007037))

(assert (= (and b!8007032 (not c!1469889)) b!8007036))

(assert (= (and b!8007037 (not res!3166270)) b!8007035))

(assert (= (and b!8007036 res!3166269) b!8007038))

(assert (= (or b!8007037 b!8007038) bm!743867))

(assert (= (or b!8007035 b!8007036) bm!743866))

(declare-fun m!8372242 () Bool)

(assert (=> bm!743866 m!8372242))

(declare-fun m!8372244 () Bool)

(assert (=> bm!743867 m!8372244))

(assert (=> d!2387502 d!2387660))

(declare-fun d!2387662 () Bool)

(declare-fun lt!2715564 () Int)

(assert (=> d!2387662 (>= lt!2715564 0)))

(declare-fun e!4716836 () Int)

(assert (=> d!2387662 (= lt!2715564 e!4716836)))

(declare-fun c!1469890 () Bool)

(assert (=> d!2387662 (= c!1469890 ((_ is Nil!74744) lt!2715487))))

(assert (=> d!2387662 (= (size!43541 lt!2715487) lt!2715564)))

(declare-fun b!8007039 () Bool)

(assert (=> b!8007039 (= e!4716836 0)))

(declare-fun b!8007040 () Bool)

(assert (=> b!8007040 (= e!4716836 (+ 1 (size!43541 (t!390611 lt!2715487))))))

(assert (= (and d!2387662 c!1469890) b!8007039))

(assert (= (and d!2387662 (not c!1469890)) b!8007040))

(declare-fun m!8372246 () Bool)

(assert (=> b!8007040 m!8372246))

(assert (=> b!8006680 d!2387662))

(assert (=> b!8006680 d!2387520))

(declare-fun d!2387664 () Bool)

(declare-fun lt!2715565 () Int)

(assert (=> d!2387664 (>= lt!2715565 0)))

(declare-fun e!4716837 () Int)

(assert (=> d!2387664 (= lt!2715565 e!4716837)))

(declare-fun c!1469891 () Bool)

(assert (=> d!2387664 (= c!1469891 ((_ is Nil!74744) lt!2715454))))

(assert (=> d!2387664 (= (size!43541 lt!2715454) lt!2715565)))

(declare-fun b!8007041 () Bool)

(assert (=> b!8007041 (= e!4716837 0)))

(declare-fun b!8007042 () Bool)

(assert (=> b!8007042 (= e!4716837 (+ 1 (size!43541 (t!390611 lt!2715454))))))

(assert (= (and d!2387664 c!1469891) b!8007041))

(assert (= (and d!2387664 (not c!1469891)) b!8007042))

(declare-fun m!8372248 () Bool)

(assert (=> b!8007042 m!8372248))

(assert (=> b!8006680 d!2387664))

(declare-fun d!2387666 () Bool)

(assert (=> d!2387666 (= totalInput!1349 testedP!353)))

(assert (=> d!2387666 true))

(declare-fun _$60!1384 () Unit!170714)

(assert (=> d!2387666 (= (choose!60276 totalInput!1349 testedP!353 totalInput!1349) _$60!1384)))

(assert (=> d!2387480 d!2387666))

(assert (=> d!2387480 d!2387478))

(declare-fun e!4716838 () Bool)

(declare-fun lt!2715566 () List!74868)

(declare-fun b!8007046 () Bool)

(assert (=> b!8007046 (= e!4716838 (or (not (= testedSuffix!271 Nil!74744)) (= lt!2715566 (t!390611 testedP!353))))))

(declare-fun b!8007045 () Bool)

(declare-fun res!3166274 () Bool)

(assert (=> b!8007045 (=> (not res!3166274) (not e!4716838))))

(assert (=> b!8007045 (= res!3166274 (= (size!43541 lt!2715566) (+ (size!43541 (t!390611 testedP!353)) (size!43541 testedSuffix!271))))))

(declare-fun b!8007044 () Bool)

(declare-fun e!4716839 () List!74868)

(assert (=> b!8007044 (= e!4716839 (Cons!74744 (h!81192 (t!390611 testedP!353)) (++!18465 (t!390611 (t!390611 testedP!353)) testedSuffix!271)))))

(declare-fun b!8007043 () Bool)

(assert (=> b!8007043 (= e!4716839 testedSuffix!271)))

(declare-fun d!2387668 () Bool)

(assert (=> d!2387668 e!4716838))

(declare-fun res!3166273 () Bool)

(assert (=> d!2387668 (=> (not res!3166273) (not e!4716838))))

(assert (=> d!2387668 (= res!3166273 (= (content!15893 lt!2715566) ((_ map or) (content!15893 (t!390611 testedP!353)) (content!15893 testedSuffix!271))))))

(assert (=> d!2387668 (= lt!2715566 e!4716839)))

(declare-fun c!1469892 () Bool)

(assert (=> d!2387668 (= c!1469892 ((_ is Nil!74744) (t!390611 testedP!353)))))

(assert (=> d!2387668 (= (++!18465 (t!390611 testedP!353) testedSuffix!271) lt!2715566)))

(assert (= (and d!2387668 c!1469892) b!8007043))

(assert (= (and d!2387668 (not c!1469892)) b!8007044))

(assert (= (and d!2387668 res!3166273) b!8007045))

(assert (= (and b!8007045 res!3166274) b!8007046))

(declare-fun m!8372250 () Bool)

(assert (=> b!8007045 m!8372250))

(assert (=> b!8007045 m!8371880))

(assert (=> b!8007045 m!8371970))

(declare-fun m!8372252 () Bool)

(assert (=> b!8007044 m!8372252))

(declare-fun m!8372254 () Bool)

(assert (=> d!2387668 m!8372254))

(assert (=> d!2387668 m!8372170))

(assert (=> d!2387668 m!8371976))

(assert (=> b!8006723 d!2387668))

(declare-fun b!8007047 () Bool)

(declare-fun e!4716841 () Bool)

(declare-fun e!4716840 () Bool)

(assert (=> b!8007047 (= e!4716841 e!4716840)))

(declare-fun c!1469893 () Bool)

(assert (=> b!8007047 (= c!1469893 ((_ is Union!21639) (ite c!1469781 (regOne!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regOne!43790 (derivativeStep!6620 r!15422 lt!2715441)))))))

(declare-fun b!8007048 () Bool)

(declare-fun e!4716844 () Bool)

(declare-fun call!743874 () Bool)

(assert (=> b!8007048 (= e!4716844 call!743874)))

(declare-fun b!8007049 () Bool)

(declare-fun e!4716846 () Bool)

(assert (=> b!8007049 (= e!4716846 e!4716841)))

(declare-fun c!1469894 () Bool)

(assert (=> b!8007049 (= c!1469894 ((_ is Star!21639) (ite c!1469781 (regOne!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regOne!43790 (derivativeStep!6620 r!15422 lt!2715441)))))))

(declare-fun b!8007050 () Bool)

(declare-fun res!3166278 () Bool)

(declare-fun e!4716843 () Bool)

(assert (=> b!8007050 (=> res!3166278 e!4716843)))

(assert (=> b!8007050 (= res!3166278 (not ((_ is Concat!30638) (ite c!1469781 (regOne!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regOne!43790 (derivativeStep!6620 r!15422 lt!2715441))))))))

(assert (=> b!8007050 (= e!4716840 e!4716843)))

(declare-fun b!8007051 () Bool)

(declare-fun e!4716845 () Bool)

(assert (=> b!8007051 (= e!4716841 e!4716845)))

(declare-fun res!3166275 () Bool)

(assert (=> b!8007051 (= res!3166275 (not (nullable!9697 (reg!21968 (ite c!1469781 (regOne!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regOne!43790 (derivativeStep!6620 r!15422 lt!2715441)))))))))

(assert (=> b!8007051 (=> (not res!3166275) (not e!4716845))))

(declare-fun b!8007052 () Bool)

(declare-fun res!3166276 () Bool)

(declare-fun e!4716842 () Bool)

(assert (=> b!8007052 (=> (not res!3166276) (not e!4716842))))

(declare-fun call!743873 () Bool)

(assert (=> b!8007052 (= res!3166276 call!743873)))

(assert (=> b!8007052 (= e!4716840 e!4716842)))

(declare-fun call!743875 () Bool)

(declare-fun bm!743868 () Bool)

(assert (=> bm!743868 (= call!743875 (validRegex!11943 (ite c!1469894 (reg!21968 (ite c!1469781 (regOne!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regOne!43790 (derivativeStep!6620 r!15422 lt!2715441)))) (ite c!1469893 (regTwo!43791 (ite c!1469781 (regOne!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regOne!43790 (derivativeStep!6620 r!15422 lt!2715441)))) (regTwo!43790 (ite c!1469781 (regOne!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regOne!43790 (derivativeStep!6620 r!15422 lt!2715441))))))))))

(declare-fun b!8007053 () Bool)

(assert (=> b!8007053 (= e!4716845 call!743875)))

(declare-fun bm!743869 () Bool)

(assert (=> bm!743869 (= call!743874 call!743875)))

(declare-fun b!8007054 () Bool)

(assert (=> b!8007054 (= e!4716842 call!743874)))

(declare-fun d!2387670 () Bool)

(declare-fun res!3166277 () Bool)

(assert (=> d!2387670 (=> res!3166277 e!4716846)))

(assert (=> d!2387670 (= res!3166277 ((_ is ElementMatch!21639) (ite c!1469781 (regOne!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regOne!43790 (derivativeStep!6620 r!15422 lt!2715441)))))))

(assert (=> d!2387670 (= (validRegex!11943 (ite c!1469781 (regOne!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regOne!43790 (derivativeStep!6620 r!15422 lt!2715441)))) e!4716846)))

(declare-fun b!8007055 () Bool)

(assert (=> b!8007055 (= e!4716843 e!4716844)))

(declare-fun res!3166279 () Bool)

(assert (=> b!8007055 (=> (not res!3166279) (not e!4716844))))

(assert (=> b!8007055 (= res!3166279 call!743873)))

(declare-fun bm!743870 () Bool)

(assert (=> bm!743870 (= call!743873 (validRegex!11943 (ite c!1469893 (regOne!43791 (ite c!1469781 (regOne!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regOne!43790 (derivativeStep!6620 r!15422 lt!2715441)))) (regOne!43790 (ite c!1469781 (regOne!43791 (derivativeStep!6620 r!15422 lt!2715441)) (regOne!43790 (derivativeStep!6620 r!15422 lt!2715441)))))))))

(assert (= (and d!2387670 (not res!3166277)) b!8007049))

(assert (= (and b!8007049 c!1469894) b!8007051))

(assert (= (and b!8007049 (not c!1469894)) b!8007047))

(assert (= (and b!8007051 res!3166275) b!8007053))

(assert (= (and b!8007047 c!1469893) b!8007052))

(assert (= (and b!8007047 (not c!1469893)) b!8007050))

(assert (= (and b!8007052 res!3166276) b!8007054))

(assert (= (and b!8007050 (not res!3166278)) b!8007055))

(assert (= (and b!8007055 res!3166279) b!8007048))

(assert (= (or b!8007054 b!8007048) bm!743869))

(assert (= (or b!8007052 b!8007055) bm!743870))

(assert (= (or b!8007053 bm!743869) bm!743868))

(declare-fun m!8372256 () Bool)

(assert (=> b!8007051 m!8372256))

(declare-fun m!8372258 () Bool)

(assert (=> bm!743868 m!8372258))

(declare-fun m!8372260 () Bool)

(assert (=> bm!743870 m!8372260))

(assert (=> bm!743806 d!2387670))

(declare-fun d!2387672 () Bool)

(declare-fun lt!2715567 () List!74868)

(assert (=> d!2387672 (= (++!18465 (t!390611 testedP!353) lt!2715567) (tail!15854 totalInput!1349))))

(declare-fun e!4716847 () List!74868)

(assert (=> d!2387672 (= lt!2715567 e!4716847)))

(declare-fun c!1469895 () Bool)

(assert (=> d!2387672 (= c!1469895 ((_ is Cons!74744) (t!390611 testedP!353)))))

(assert (=> d!2387672 (>= (size!43541 (tail!15854 totalInput!1349)) (size!43541 (t!390611 testedP!353)))))

(assert (=> d!2387672 (= (getSuffix!3890 (tail!15854 totalInput!1349) (t!390611 testedP!353)) lt!2715567)))

(declare-fun b!8007056 () Bool)

(assert (=> b!8007056 (= e!4716847 (getSuffix!3890 (tail!15854 (tail!15854 totalInput!1349)) (t!390611 (t!390611 testedP!353))))))

(declare-fun b!8007057 () Bool)

(assert (=> b!8007057 (= e!4716847 (tail!15854 totalInput!1349))))

(assert (= (and d!2387672 c!1469895) b!8007056))

(assert (= (and d!2387672 (not c!1469895)) b!8007057))

(declare-fun m!8372262 () Bool)

(assert (=> d!2387672 m!8372262))

(assert (=> d!2387672 m!8371842))

(assert (=> d!2387672 m!8372142))

(assert (=> d!2387672 m!8371880))

(assert (=> b!8007056 m!8371842))

(assert (=> b!8007056 m!8372138))

(assert (=> b!8007056 m!8372138))

(declare-fun m!8372264 () Bool)

(assert (=> b!8007056 m!8372264))

(assert (=> b!8006720 d!2387672))

(assert (=> b!8006720 d!2387604))

(declare-fun d!2387674 () Bool)

(declare-fun e!4716850 () Bool)

(assert (=> d!2387674 e!4716850))

(declare-fun res!3166282 () Bool)

(assert (=> d!2387674 (=> res!3166282 e!4716850)))

(declare-fun lt!2715568 () Bool)

(assert (=> d!2387674 (= res!3166282 (not lt!2715568))))

(declare-fun e!4716848 () Bool)

(assert (=> d!2387674 (= lt!2715568 e!4716848)))

(declare-fun res!3166280 () Bool)

(assert (=> d!2387674 (=> res!3166280 e!4716848)))

(assert (=> d!2387674 (= res!3166280 ((_ is Nil!74744) testedP!353))))

(assert (=> d!2387674 (= (isPrefix!6693 testedP!353 (++!18465 testedP!353 testedSuffix!271)) lt!2715568)))

(declare-fun b!8007059 () Bool)

(declare-fun res!3166283 () Bool)

(declare-fun e!4716849 () Bool)

(assert (=> b!8007059 (=> (not res!3166283) (not e!4716849))))

(assert (=> b!8007059 (= res!3166283 (= (head!16331 testedP!353) (head!16331 (++!18465 testedP!353 testedSuffix!271))))))

(declare-fun b!8007060 () Bool)

(assert (=> b!8007060 (= e!4716849 (isPrefix!6693 (tail!15854 testedP!353) (tail!15854 (++!18465 testedP!353 testedSuffix!271))))))

(declare-fun b!8007058 () Bool)

(assert (=> b!8007058 (= e!4716848 e!4716849)))

(declare-fun res!3166281 () Bool)

(assert (=> b!8007058 (=> (not res!3166281) (not e!4716849))))

(assert (=> b!8007058 (= res!3166281 (not ((_ is Nil!74744) (++!18465 testedP!353 testedSuffix!271))))))

(declare-fun b!8007061 () Bool)

(assert (=> b!8007061 (= e!4716850 (>= (size!43541 (++!18465 testedP!353 testedSuffix!271)) (size!43541 testedP!353)))))

(assert (= (and d!2387674 (not res!3166280)) b!8007058))

(assert (= (and b!8007058 res!3166281) b!8007059))

(assert (= (and b!8007059 res!3166283) b!8007060))

(assert (= (and d!2387674 (not res!3166282)) b!8007061))

(assert (=> b!8007059 m!8371862))

(assert (=> b!8007059 m!8371808))

(declare-fun m!8372266 () Bool)

(assert (=> b!8007059 m!8372266))

(assert (=> b!8007060 m!8371864))

(assert (=> b!8007060 m!8371808))

(declare-fun m!8372268 () Bool)

(assert (=> b!8007060 m!8372268))

(assert (=> b!8007060 m!8371864))

(assert (=> b!8007060 m!8372268))

(declare-fun m!8372270 () Bool)

(assert (=> b!8007060 m!8372270))

(assert (=> b!8007061 m!8371808))

(declare-fun m!8372272 () Bool)

(assert (=> b!8007061 m!8372272))

(assert (=> b!8007061 m!8371836))

(assert (=> d!2387490 d!2387674))

(assert (=> d!2387490 d!2387534))

(declare-fun d!2387676 () Bool)

(assert (=> d!2387676 (isPrefix!6693 testedP!353 (++!18465 testedP!353 testedSuffix!271))))

(assert (=> d!2387676 true))

(declare-fun _$46!2148 () Unit!170714)

(assert (=> d!2387676 (= (choose!60277 testedP!353 testedSuffix!271) _$46!2148)))

(declare-fun bs!1970730 () Bool)

(assert (= bs!1970730 d!2387676))

(assert (=> bs!1970730 m!8371808))

(assert (=> bs!1970730 m!8371808))

(assert (=> bs!1970730 m!8371876))

(assert (=> d!2387490 d!2387676))

(declare-fun d!2387678 () Bool)

(assert (=> d!2387678 (isPrefix!6693 (++!18465 testedP!353 (Cons!74744 (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) Nil!74744)) totalInput!1349)))

(assert (=> d!2387678 true))

(declare-fun _$65!1997 () Unit!170714)

(assert (=> d!2387678 (= (choose!60278 testedP!353 totalInput!1349) _$65!1997)))

(declare-fun bs!1970731 () Bool)

(assert (= bs!1970731 d!2387678))

(assert (=> bs!1970731 m!8371814))

(assert (=> bs!1970731 m!8371814))

(assert (=> bs!1970731 m!8371886))

(assert (=> bs!1970731 m!8371888))

(assert (=> bs!1970731 m!8371888))

(assert (=> bs!1970731 m!8371890))

(assert (=> d!2387496 d!2387678))

(declare-fun d!2387680 () Bool)

(declare-fun e!4716853 () Bool)

(assert (=> d!2387680 e!4716853))

(declare-fun res!3166286 () Bool)

(assert (=> d!2387680 (=> res!3166286 e!4716853)))

(declare-fun lt!2715569 () Bool)

(assert (=> d!2387680 (= res!3166286 (not lt!2715569))))

(declare-fun e!4716851 () Bool)

(assert (=> d!2387680 (= lt!2715569 e!4716851)))

(declare-fun res!3166284 () Bool)

(assert (=> d!2387680 (=> res!3166284 e!4716851)))

(assert (=> d!2387680 (= res!3166284 ((_ is Nil!74744) (++!18465 testedP!353 (Cons!74744 (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) Nil!74744))))))

(assert (=> d!2387680 (= (isPrefix!6693 (++!18465 testedP!353 (Cons!74744 (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) Nil!74744)) totalInput!1349) lt!2715569)))

(declare-fun b!8007063 () Bool)

(declare-fun res!3166287 () Bool)

(declare-fun e!4716852 () Bool)

(assert (=> b!8007063 (=> (not res!3166287) (not e!4716852))))

(assert (=> b!8007063 (= res!3166287 (= (head!16331 (++!18465 testedP!353 (Cons!74744 (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) Nil!74744))) (head!16331 totalInput!1349)))))

(declare-fun b!8007064 () Bool)

(assert (=> b!8007064 (= e!4716852 (isPrefix!6693 (tail!15854 (++!18465 testedP!353 (Cons!74744 (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) Nil!74744))) (tail!15854 totalInput!1349)))))

(declare-fun b!8007062 () Bool)

(assert (=> b!8007062 (= e!4716851 e!4716852)))

(declare-fun res!3166285 () Bool)

(assert (=> b!8007062 (=> (not res!3166285) (not e!4716852))))

(assert (=> b!8007062 (= res!3166285 (not ((_ is Nil!74744) totalInput!1349)))))

(declare-fun b!8007065 () Bool)

(assert (=> b!8007065 (= e!4716853 (>= (size!43541 totalInput!1349) (size!43541 (++!18465 testedP!353 (Cons!74744 (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) Nil!74744)))))))

(assert (= (and d!2387680 (not res!3166284)) b!8007062))

(assert (= (and b!8007062 res!3166285) b!8007063))

(assert (= (and b!8007063 res!3166287) b!8007064))

(assert (= (and d!2387680 (not res!3166286)) b!8007065))

(assert (=> b!8007063 m!8371888))

(declare-fun m!8372274 () Bool)

(assert (=> b!8007063 m!8372274))

(assert (=> b!8007063 m!8371840))

(assert (=> b!8007064 m!8371888))

(declare-fun m!8372276 () Bool)

(assert (=> b!8007064 m!8372276))

(assert (=> b!8007064 m!8371842))

(assert (=> b!8007064 m!8372276))

(assert (=> b!8007064 m!8371842))

(declare-fun m!8372278 () Bool)

(assert (=> b!8007064 m!8372278))

(assert (=> b!8007065 m!8371784))

(assert (=> b!8007065 m!8371888))

(declare-fun m!8372280 () Bool)

(assert (=> b!8007065 m!8372280))

(assert (=> d!2387496 d!2387680))

(assert (=> d!2387496 d!2387532))

(declare-fun d!2387682 () Bool)

(assert (=> d!2387682 (= (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) (h!81192 (getSuffix!3890 totalInput!1349 testedP!353)))))

(assert (=> d!2387496 d!2387682))

(assert (=> d!2387496 d!2387486))

(declare-fun e!4716854 () Bool)

(declare-fun b!8007069 () Bool)

(declare-fun lt!2715570 () List!74868)

(assert (=> b!8007069 (= e!4716854 (or (not (= (Cons!74744 (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) Nil!74744) Nil!74744)) (= lt!2715570 testedP!353)))))

(declare-fun b!8007068 () Bool)

(declare-fun res!3166289 () Bool)

(assert (=> b!8007068 (=> (not res!3166289) (not e!4716854))))

(assert (=> b!8007068 (= res!3166289 (= (size!43541 lt!2715570) (+ (size!43541 testedP!353) (size!43541 (Cons!74744 (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) Nil!74744)))))))

(declare-fun b!8007067 () Bool)

(declare-fun e!4716855 () List!74868)

(assert (=> b!8007067 (= e!4716855 (Cons!74744 (h!81192 testedP!353) (++!18465 (t!390611 testedP!353) (Cons!74744 (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) Nil!74744))))))

(declare-fun b!8007066 () Bool)

(assert (=> b!8007066 (= e!4716855 (Cons!74744 (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) Nil!74744))))

(declare-fun d!2387684 () Bool)

(assert (=> d!2387684 e!4716854))

(declare-fun res!3166288 () Bool)

(assert (=> d!2387684 (=> (not res!3166288) (not e!4716854))))

(assert (=> d!2387684 (= res!3166288 (= (content!15893 lt!2715570) ((_ map or) (content!15893 testedP!353) (content!15893 (Cons!74744 (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) Nil!74744)))))))

(assert (=> d!2387684 (= lt!2715570 e!4716855)))

(declare-fun c!1469896 () Bool)

(assert (=> d!2387684 (= c!1469896 ((_ is Nil!74744) testedP!353))))

(assert (=> d!2387684 (= (++!18465 testedP!353 (Cons!74744 (head!16331 (getSuffix!3890 totalInput!1349 testedP!353)) Nil!74744)) lt!2715570)))

(assert (= (and d!2387684 c!1469896) b!8007066))

(assert (= (and d!2387684 (not c!1469896)) b!8007067))

(assert (= (and d!2387684 res!3166288) b!8007068))

(assert (= (and b!8007068 res!3166289) b!8007069))

(declare-fun m!8372282 () Bool)

(assert (=> b!8007068 m!8372282))

(assert (=> b!8007068 m!8371836))

(declare-fun m!8372284 () Bool)

(assert (=> b!8007068 m!8372284))

(declare-fun m!8372286 () Bool)

(assert (=> b!8007067 m!8372286))

(declare-fun m!8372288 () Bool)

(assert (=> d!2387684 m!8372288))

(assert (=> d!2387684 m!8371920))

(declare-fun m!8372290 () Bool)

(assert (=> d!2387684 m!8372290))

(assert (=> d!2387496 d!2387684))

(declare-fun d!2387686 () Bool)

(declare-fun c!1469897 () Bool)

(assert (=> d!2387686 (= c!1469897 ((_ is Nil!74744) lt!2715488))))

(declare-fun e!4716856 () (InoxSet C!43616))

(assert (=> d!2387686 (= (content!15893 lt!2715488) e!4716856)))

(declare-fun b!8007070 () Bool)

(assert (=> b!8007070 (= e!4716856 ((as const (Array C!43616 Bool)) false))))

(declare-fun b!8007071 () Bool)

(assert (=> b!8007071 (= e!4716856 ((_ map or) (store ((as const (Array C!43616 Bool)) false) (h!81192 lt!2715488) true) (content!15893 (t!390611 lt!2715488))))))

(assert (= (and d!2387686 c!1469897) b!8007070))

(assert (= (and d!2387686 (not c!1469897)) b!8007071))

(declare-fun m!8372292 () Bool)

(assert (=> b!8007071 m!8372292))

(declare-fun m!8372294 () Bool)

(assert (=> b!8007071 m!8372294))

(assert (=> d!2387510 d!2387686))

(assert (=> d!2387510 d!2387642))

(declare-fun d!2387688 () Bool)

(declare-fun c!1469898 () Bool)

(assert (=> d!2387688 (= c!1469898 ((_ is Nil!74744) (Cons!74744 lt!2715441 Nil!74744)))))

(declare-fun e!4716857 () (InoxSet C!43616))

(assert (=> d!2387688 (= (content!15893 (Cons!74744 lt!2715441 Nil!74744)) e!4716857)))

(declare-fun b!8007072 () Bool)

(assert (=> b!8007072 (= e!4716857 ((as const (Array C!43616 Bool)) false))))

(declare-fun b!8007073 () Bool)

(assert (=> b!8007073 (= e!4716857 ((_ map or) (store ((as const (Array C!43616 Bool)) false) (h!81192 (Cons!74744 lt!2715441 Nil!74744)) true) (content!15893 (t!390611 (Cons!74744 lt!2715441 Nil!74744)))))))

(assert (= (and d!2387688 c!1469898) b!8007072))

(assert (= (and d!2387688 (not c!1469898)) b!8007073))

(declare-fun m!8372296 () Bool)

(assert (=> b!8007073 m!8372296))

(declare-fun m!8372298 () Bool)

(assert (=> b!8007073 m!8372298))

(assert (=> d!2387510 d!2387688))

(assert (=> b!8006580 d!2387524))

(declare-fun d!2387690 () Bool)

(assert (=> d!2387690 (= (nullable!9697 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441))) (nullableFct!3826 (reg!21968 (derivativeStep!6620 r!15422 lt!2715441))))))

(declare-fun bs!1970732 () Bool)

(assert (= bs!1970732 d!2387690))

(declare-fun m!8372300 () Bool)

(assert (=> bs!1970732 m!8372300))

(assert (=> b!8006603 d!2387690))

(assert (=> b!8006641 d!2387524))

(assert (=> b!8006641 d!2387494))

(declare-fun b!8007074 () Bool)

(declare-fun e!4716859 () Bool)

(declare-fun e!4716858 () Bool)

(assert (=> b!8007074 (= e!4716859 e!4716858)))

(declare-fun c!1469899 () Bool)

(assert (=> b!8007074 (= c!1469899 ((_ is Union!21639) (ite c!1469810 (regOne!43791 r!15422) (regOne!43790 r!15422))))))

(declare-fun b!8007075 () Bool)

(declare-fun e!4716862 () Bool)

(declare-fun call!743877 () Bool)

(assert (=> b!8007075 (= e!4716862 call!743877)))

(declare-fun b!8007076 () Bool)

(declare-fun e!4716864 () Bool)

(assert (=> b!8007076 (= e!4716864 e!4716859)))

(declare-fun c!1469900 () Bool)

(assert (=> b!8007076 (= c!1469900 ((_ is Star!21639) (ite c!1469810 (regOne!43791 r!15422) (regOne!43790 r!15422))))))

(declare-fun b!8007077 () Bool)

(declare-fun res!3166293 () Bool)

(declare-fun e!4716861 () Bool)

(assert (=> b!8007077 (=> res!3166293 e!4716861)))

(assert (=> b!8007077 (= res!3166293 (not ((_ is Concat!30638) (ite c!1469810 (regOne!43791 r!15422) (regOne!43790 r!15422)))))))

(assert (=> b!8007077 (= e!4716858 e!4716861)))

(declare-fun b!8007078 () Bool)

(declare-fun e!4716863 () Bool)

(assert (=> b!8007078 (= e!4716859 e!4716863)))

(declare-fun res!3166290 () Bool)

(assert (=> b!8007078 (= res!3166290 (not (nullable!9697 (reg!21968 (ite c!1469810 (regOne!43791 r!15422) (regOne!43790 r!15422))))))))

(assert (=> b!8007078 (=> (not res!3166290) (not e!4716863))))

(declare-fun b!8007079 () Bool)

(declare-fun res!3166291 () Bool)

(declare-fun e!4716860 () Bool)

(assert (=> b!8007079 (=> (not res!3166291) (not e!4716860))))

(declare-fun call!743876 () Bool)

(assert (=> b!8007079 (= res!3166291 call!743876)))

(assert (=> b!8007079 (= e!4716858 e!4716860)))

(declare-fun bm!743871 () Bool)

(declare-fun call!743878 () Bool)

(assert (=> bm!743871 (= call!743878 (validRegex!11943 (ite c!1469900 (reg!21968 (ite c!1469810 (regOne!43791 r!15422) (regOne!43790 r!15422))) (ite c!1469899 (regTwo!43791 (ite c!1469810 (regOne!43791 r!15422) (regOne!43790 r!15422))) (regTwo!43790 (ite c!1469810 (regOne!43791 r!15422) (regOne!43790 r!15422)))))))))

(declare-fun b!8007080 () Bool)

(assert (=> b!8007080 (= e!4716863 call!743878)))

(declare-fun bm!743872 () Bool)

(assert (=> bm!743872 (= call!743877 call!743878)))

(declare-fun b!8007081 () Bool)

(assert (=> b!8007081 (= e!4716860 call!743877)))

(declare-fun d!2387692 () Bool)

(declare-fun res!3166292 () Bool)

(assert (=> d!2387692 (=> res!3166292 e!4716864)))

(assert (=> d!2387692 (= res!3166292 ((_ is ElementMatch!21639) (ite c!1469810 (regOne!43791 r!15422) (regOne!43790 r!15422))))))

(assert (=> d!2387692 (= (validRegex!11943 (ite c!1469810 (regOne!43791 r!15422) (regOne!43790 r!15422))) e!4716864)))

(declare-fun b!8007082 () Bool)

(assert (=> b!8007082 (= e!4716861 e!4716862)))

(declare-fun res!3166294 () Bool)

(assert (=> b!8007082 (=> (not res!3166294) (not e!4716862))))

(assert (=> b!8007082 (= res!3166294 call!743876)))

(declare-fun bm!743873 () Bool)

(assert (=> bm!743873 (= call!743876 (validRegex!11943 (ite c!1469899 (regOne!43791 (ite c!1469810 (regOne!43791 r!15422) (regOne!43790 r!15422))) (regOne!43790 (ite c!1469810 (regOne!43791 r!15422) (regOne!43790 r!15422))))))))

(assert (= (and d!2387692 (not res!3166292)) b!8007076))

(assert (= (and b!8007076 c!1469900) b!8007078))

(assert (= (and b!8007076 (not c!1469900)) b!8007074))

(assert (= (and b!8007078 res!3166290) b!8007080))

(assert (= (and b!8007074 c!1469899) b!8007079))

(assert (= (and b!8007074 (not c!1469899)) b!8007077))

(assert (= (and b!8007079 res!3166291) b!8007081))

(assert (= (and b!8007077 (not res!3166293)) b!8007082))

(assert (= (and b!8007082 res!3166294) b!8007075))

(assert (= (or b!8007081 b!8007075) bm!743872))

(assert (= (or b!8007079 b!8007082) bm!743873))

(assert (= (or b!8007080 bm!743872) bm!743871))

(declare-fun m!8372302 () Bool)

(assert (=> b!8007078 m!8372302))

(declare-fun m!8372304 () Bool)

(assert (=> bm!743871 m!8372304))

(declare-fun m!8372306 () Bool)

(assert (=> bm!743873 m!8372306))

(assert (=> bm!743827 d!2387692))

(assert (=> d!2387522 d!2387494))

(assert (=> d!2387522 d!2387524))

(declare-fun d!2387694 () Bool)

(assert (=> d!2387694 (<= (size!43541 testedP!353) (size!43541 totalInput!1349))))

(assert (=> d!2387694 true))

(declare-fun _$64!970 () Unit!170714)

(assert (=> d!2387694 (= (choose!60281 testedP!353 totalInput!1349) _$64!970)))

(declare-fun bs!1970733 () Bool)

(assert (= bs!1970733 d!2387694))

(assert (=> bs!1970733 m!8371836))

(assert (=> bs!1970733 m!8371784))

(assert (=> d!2387522 d!2387694))

(assert (=> d!2387522 d!2387486))

(declare-fun d!2387696 () Bool)

(declare-fun lt!2715571 () Int)

(assert (=> d!2387696 (>= lt!2715571 0)))

(declare-fun e!4716865 () Int)

(assert (=> d!2387696 (= lt!2715571 e!4716865)))

(declare-fun c!1469901 () Bool)

(assert (=> d!2387696 (= c!1469901 ((_ is Nil!74744) (t!390611 totalInput!1349)))))

(assert (=> d!2387696 (= (size!43541 (t!390611 totalInput!1349)) lt!2715571)))

(declare-fun b!8007083 () Bool)

(assert (=> b!8007083 (= e!4716865 0)))

(declare-fun b!8007084 () Bool)

(assert (=> b!8007084 (= e!4716865 (+ 1 (size!43541 (t!390611 (t!390611 totalInput!1349)))))))

(assert (= (and d!2387696 c!1469901) b!8007083))

(assert (= (and d!2387696 (not c!1469901)) b!8007084))

(declare-fun m!8372308 () Bool)

(assert (=> b!8007084 m!8372308))

(assert (=> b!8006715 d!2387696))

(declare-fun d!2387698 () Bool)

(declare-fun e!4716868 () Bool)

(assert (=> d!2387698 e!4716868))

(declare-fun res!3166297 () Bool)

(assert (=> d!2387698 (=> res!3166297 e!4716868)))

(declare-fun lt!2715572 () Bool)

(assert (=> d!2387698 (= res!3166297 (not lt!2715572))))

(declare-fun e!4716866 () Bool)

(assert (=> d!2387698 (= lt!2715572 e!4716866)))

(declare-fun res!3166295 () Bool)

(assert (=> d!2387698 (=> res!3166295 e!4716866)))

(assert (=> d!2387698 (= res!3166295 ((_ is Nil!74744) (tail!15854 testedP!353)))))

(assert (=> d!2387698 (= (isPrefix!6693 (tail!15854 testedP!353) (tail!15854 lt!2715452)) lt!2715572)))

(declare-fun b!8007086 () Bool)

(declare-fun res!3166298 () Bool)

(declare-fun e!4716867 () Bool)

(assert (=> b!8007086 (=> (not res!3166298) (not e!4716867))))

(assert (=> b!8007086 (= res!3166298 (= (head!16331 (tail!15854 testedP!353)) (head!16331 (tail!15854 lt!2715452))))))

(declare-fun b!8007087 () Bool)

(assert (=> b!8007087 (= e!4716867 (isPrefix!6693 (tail!15854 (tail!15854 testedP!353)) (tail!15854 (tail!15854 lt!2715452))))))

(declare-fun b!8007085 () Bool)

(assert (=> b!8007085 (= e!4716866 e!4716867)))

(declare-fun res!3166296 () Bool)

(assert (=> b!8007085 (=> (not res!3166296) (not e!4716867))))

(assert (=> b!8007085 (= res!3166296 (not ((_ is Nil!74744) (tail!15854 lt!2715452))))))

(declare-fun b!8007088 () Bool)

(assert (=> b!8007088 (= e!4716868 (>= (size!43541 (tail!15854 lt!2715452)) (size!43541 (tail!15854 testedP!353))))))

(assert (= (and d!2387698 (not res!3166295)) b!8007085))

(assert (= (and b!8007085 res!3166296) b!8007086))

(assert (= (and b!8007086 res!3166298) b!8007087))

(assert (= (and d!2387698 (not res!3166297)) b!8007088))

(assert (=> b!8007086 m!8371864))

(assert (=> b!8007086 m!8372154))

(assert (=> b!8007086 m!8371870))

(declare-fun m!8372310 () Bool)

(assert (=> b!8007086 m!8372310))

(assert (=> b!8007087 m!8371864))

(assert (=> b!8007087 m!8372156))

(assert (=> b!8007087 m!8371870))

(declare-fun m!8372312 () Bool)

(assert (=> b!8007087 m!8372312))

(assert (=> b!8007087 m!8372156))

(assert (=> b!8007087 m!8372312))

(declare-fun m!8372314 () Bool)

(assert (=> b!8007087 m!8372314))

(assert (=> b!8007088 m!8371870))

(declare-fun m!8372316 () Bool)

(assert (=> b!8007088 m!8372316))

(assert (=> b!8007088 m!8371864))

(assert (=> b!8007088 m!8372160))

(assert (=> b!8006644 d!2387698))

(assert (=> b!8006644 d!2387616))

(declare-fun d!2387700 () Bool)

(assert (=> d!2387700 (= (tail!15854 lt!2715452) (t!390611 lt!2715452))))

(assert (=> b!8006644 d!2387700))

(declare-fun d!2387702 () Bool)

(declare-fun e!4716871 () Bool)

(assert (=> d!2387702 e!4716871))

(declare-fun res!3166301 () Bool)

(assert (=> d!2387702 (=> res!3166301 e!4716871)))

(declare-fun lt!2715573 () Bool)

(assert (=> d!2387702 (= res!3166301 (not lt!2715573))))

(declare-fun e!4716869 () Bool)

(assert (=> d!2387702 (= lt!2715573 e!4716869)))

(declare-fun res!3166299 () Bool)

(assert (=> d!2387702 (=> res!3166299 e!4716869)))

(assert (=> d!2387702 (= res!3166299 ((_ is Nil!74744) (tail!15854 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744)))))))

(assert (=> d!2387702 (= (isPrefix!6693 (tail!15854 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744))) (tail!15854 totalInput!1349)) lt!2715573)))

(declare-fun b!8007090 () Bool)

(declare-fun res!3166302 () Bool)

(declare-fun e!4716870 () Bool)

(assert (=> b!8007090 (=> (not res!3166302) (not e!4716870))))

(assert (=> b!8007090 (= res!3166302 (= (head!16331 (tail!15854 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744)))) (head!16331 (tail!15854 totalInput!1349))))))

(declare-fun b!8007091 () Bool)

(assert (=> b!8007091 (= e!4716870 (isPrefix!6693 (tail!15854 (tail!15854 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744)))) (tail!15854 (tail!15854 totalInput!1349))))))

(declare-fun b!8007089 () Bool)

(assert (=> b!8007089 (= e!4716869 e!4716870)))

(declare-fun res!3166300 () Bool)

(assert (=> b!8007089 (=> (not res!3166300) (not e!4716870))))

(assert (=> b!8007089 (= res!3166300 (not ((_ is Nil!74744) (tail!15854 totalInput!1349))))))

(declare-fun b!8007092 () Bool)

(assert (=> b!8007092 (= e!4716871 (>= (size!43541 (tail!15854 totalInput!1349)) (size!43541 (tail!15854 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744))))))))

(assert (= (and d!2387702 (not res!3166299)) b!8007089))

(assert (= (and b!8007089 res!3166300) b!8007090))

(assert (= (and b!8007090 res!3166302) b!8007091))

(assert (= (and d!2387702 (not res!3166301)) b!8007092))

(assert (=> b!8007090 m!8371926))

(declare-fun m!8372318 () Bool)

(assert (=> b!8007090 m!8372318))

(assert (=> b!8007090 m!8371842))

(assert (=> b!8007090 m!8372136))

(assert (=> b!8007091 m!8371926))

(declare-fun m!8372320 () Bool)

(assert (=> b!8007091 m!8372320))

(assert (=> b!8007091 m!8371842))

(assert (=> b!8007091 m!8372138))

(assert (=> b!8007091 m!8372320))

(assert (=> b!8007091 m!8372138))

(declare-fun m!8372322 () Bool)

(assert (=> b!8007091 m!8372322))

(assert (=> b!8007092 m!8371842))

(assert (=> b!8007092 m!8372142))

(assert (=> b!8007092 m!8371926))

(declare-fun m!8372324 () Bool)

(assert (=> b!8007092 m!8372324))

(assert (=> b!8006688 d!2387702))

(declare-fun d!2387704 () Bool)

(assert (=> d!2387704 (= (tail!15854 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744))) (t!390611 (++!18465 testedP!353 (Cons!74744 (head!16331 lt!2715455) Nil!74744))))))

(assert (=> b!8006688 d!2387704))

(assert (=> b!8006688 d!2387604))

(assert (=> b!8006639 d!2387624))

(assert (=> b!8006639 d!2387622))

(declare-fun bm!743874 () Bool)

(declare-fun call!743882 () Regex!21639)

(declare-fun call!743880 () Regex!21639)

(assert (=> bm!743874 (= call!743882 call!743880)))

(declare-fun d!2387706 () Bool)

(declare-fun lt!2715574 () Regex!21639)

(assert (=> d!2387706 (validRegex!11943 lt!2715574)))

(declare-fun e!4716874 () Regex!21639)

(assert (=> d!2387706 (= lt!2715574 e!4716874)))

(declare-fun c!1469902 () Bool)

(assert (=> d!2387706 (= c!1469902 (or ((_ is EmptyExpr!21639) (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422))) ((_ is EmptyLang!21639) (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422)))))))

(assert (=> d!2387706 (validRegex!11943 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422)))))

(assert (=> d!2387706 (= (derivativeStep!6620 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422)) lt!2715441) lt!2715574)))

(declare-fun b!8007093 () Bool)

(assert (=> b!8007093 (= e!4716874 EmptyLang!21639)))

(declare-fun bm!743875 () Bool)

(declare-fun call!743881 () Regex!21639)

(assert (=> bm!743875 (= call!743880 call!743881)))

(declare-fun b!8007094 () Bool)

(declare-fun e!4716876 () Regex!21639)

(assert (=> b!8007094 (= e!4716876 (ite (= lt!2715441 (c!1469776 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422)))) EmptyExpr!21639 EmptyLang!21639))))

(declare-fun b!8007095 () Bool)

(declare-fun e!4716872 () Regex!21639)

(declare-fun e!4716873 () Regex!21639)

(assert (=> b!8007095 (= e!4716872 e!4716873)))

(declare-fun c!1469905 () Bool)

(assert (=> b!8007095 (= c!1469905 ((_ is Star!21639) (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422))))))

(declare-fun b!8007096 () Bool)

(assert (=> b!8007096 (= e!4716873 (Concat!30638 call!743880 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422))))))

(declare-fun b!8007097 () Bool)

(assert (=> b!8007097 (= e!4716874 e!4716876)))

(declare-fun c!1469906 () Bool)

(assert (=> b!8007097 (= c!1469906 ((_ is ElementMatch!21639) (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422))))))

(declare-fun b!8007098 () Bool)

(declare-fun c!1469904 () Bool)

(assert (=> b!8007098 (= c!1469904 ((_ is Union!21639) (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422))))))

(assert (=> b!8007098 (= e!4716876 e!4716872)))

(declare-fun b!8007099 () Bool)

(declare-fun c!1469903 () Bool)

(assert (=> b!8007099 (= c!1469903 (nullable!9697 (regOne!43790 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422)))))))

(declare-fun e!4716875 () Regex!21639)

(assert (=> b!8007099 (= e!4716873 e!4716875)))

(declare-fun call!743879 () Regex!21639)

(declare-fun b!8007100 () Bool)

(assert (=> b!8007100 (= e!4716875 (Union!21639 (Concat!30638 call!743879 (regTwo!43790 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422)))) call!743882))))

(declare-fun b!8007101 () Bool)

(assert (=> b!8007101 (= e!4716875 (Union!21639 (Concat!30638 call!743882 (regTwo!43790 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422)))) EmptyLang!21639))))

(declare-fun bm!743876 () Bool)

(assert (=> bm!743876 (= call!743881 (derivativeStep!6620 (ite c!1469904 (regTwo!43791 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422))) (ite c!1469905 (reg!21968 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422))) (ite c!1469903 (regTwo!43790 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422))) (regOne!43790 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422)))))) lt!2715441))))

(declare-fun bm!743877 () Bool)

(assert (=> bm!743877 (= call!743879 (derivativeStep!6620 (ite c!1469904 (regOne!43791 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422))) (regOne!43790 (ite c!1469795 (regOne!43791 r!15422) (regOne!43790 r!15422)))) lt!2715441))))

(declare-fun b!8007102 () Bool)

(assert (=> b!8007102 (= e!4716872 (Union!21639 call!743879 call!743881))))

(assert (= (and d!2387706 c!1469902) b!8007093))

(assert (= (and d!2387706 (not c!1469902)) b!8007097))

(assert (= (and b!8007097 c!1469906) b!8007094))

(assert (= (and b!8007097 (not c!1469906)) b!8007098))

(assert (= (and b!8007098 c!1469904) b!8007102))

(assert (= (and b!8007098 (not c!1469904)) b!8007095))

(assert (= (and b!8007095 c!1469905) b!8007096))

(assert (= (and b!8007095 (not c!1469905)) b!8007099))

(assert (= (and b!8007099 c!1469903) b!8007100))

(assert (= (and b!8007099 (not c!1469903)) b!8007101))

(assert (= (or b!8007100 b!8007101) bm!743874))

(assert (= (or b!8007096 bm!743874) bm!743875))

(assert (= (or b!8007102 bm!743875) bm!743876))

(assert (= (or b!8007102 b!8007100) bm!743877))

(declare-fun m!8372326 () Bool)

(assert (=> d!2387706 m!8372326))

(declare-fun m!8372328 () Bool)

(assert (=> d!2387706 m!8372328))

(declare-fun m!8372330 () Bool)

(assert (=> b!8007099 m!8372330))

(declare-fun m!8372332 () Bool)

(assert (=> bm!743876 m!8372332))

(declare-fun m!8372334 () Bool)

(assert (=> bm!743877 m!8372334))

(assert (=> bm!743818 d!2387706))

(declare-fun b!8007103 () Bool)

(declare-fun e!4716878 () Bool)

(declare-fun e!4716877 () Bool)

(assert (=> b!8007103 (= e!4716878 e!4716877)))

(declare-fun c!1469907 () Bool)

(assert (=> b!8007103 (= c!1469907 ((_ is Union!21639) lt!2715467))))

(declare-fun b!8007104 () Bool)

(declare-fun e!4716881 () Bool)

(declare-fun call!743884 () Bool)

(assert (=> b!8007104 (= e!4716881 call!743884)))

(declare-fun b!8007105 () Bool)

(declare-fun e!4716883 () Bool)

(assert (=> b!8007105 (= e!4716883 e!4716878)))

(declare-fun c!1469908 () Bool)

(assert (=> b!8007105 (= c!1469908 ((_ is Star!21639) lt!2715467))))

(declare-fun b!8007106 () Bool)

(declare-fun res!3166306 () Bool)

(declare-fun e!4716880 () Bool)

(assert (=> b!8007106 (=> res!3166306 e!4716880)))

(assert (=> b!8007106 (= res!3166306 (not ((_ is Concat!30638) lt!2715467)))))

(assert (=> b!8007106 (= e!4716877 e!4716880)))

(declare-fun b!8007107 () Bool)

(declare-fun e!4716882 () Bool)

(assert (=> b!8007107 (= e!4716878 e!4716882)))

(declare-fun res!3166303 () Bool)

(assert (=> b!8007107 (= res!3166303 (not (nullable!9697 (reg!21968 lt!2715467))))))

(assert (=> b!8007107 (=> (not res!3166303) (not e!4716882))))

(declare-fun b!8007108 () Bool)

(declare-fun res!3166304 () Bool)

(declare-fun e!4716879 () Bool)

(assert (=> b!8007108 (=> (not res!3166304) (not e!4716879))))

(declare-fun call!743883 () Bool)

(assert (=> b!8007108 (= res!3166304 call!743883)))

(assert (=> b!8007108 (= e!4716877 e!4716879)))

(declare-fun bm!743878 () Bool)

(declare-fun call!743885 () Bool)

(assert (=> bm!743878 (= call!743885 (validRegex!11943 (ite c!1469908 (reg!21968 lt!2715467) (ite c!1469907 (regTwo!43791 lt!2715467) (regTwo!43790 lt!2715467)))))))

(declare-fun b!8007109 () Bool)

(assert (=> b!8007109 (= e!4716882 call!743885)))

(declare-fun bm!743879 () Bool)

(assert (=> bm!743879 (= call!743884 call!743885)))

(declare-fun b!8007110 () Bool)

(assert (=> b!8007110 (= e!4716879 call!743884)))

(declare-fun d!2387708 () Bool)

(declare-fun res!3166305 () Bool)

(assert (=> d!2387708 (=> res!3166305 e!4716883)))

(assert (=> d!2387708 (= res!3166305 ((_ is ElementMatch!21639) lt!2715467))))

(assert (=> d!2387708 (= (validRegex!11943 lt!2715467) e!4716883)))

(declare-fun b!8007111 () Bool)

(assert (=> b!8007111 (= e!4716880 e!4716881)))

(declare-fun res!3166307 () Bool)

(assert (=> b!8007111 (=> (not res!3166307) (not e!4716881))))

(assert (=> b!8007111 (= res!3166307 call!743883)))

(declare-fun bm!743880 () Bool)

(assert (=> bm!743880 (= call!743883 (validRegex!11943 (ite c!1469907 (regOne!43791 lt!2715467) (regOne!43790 lt!2715467))))))

(assert (= (and d!2387708 (not res!3166305)) b!8007105))

(assert (= (and b!8007105 c!1469908) b!8007107))

(assert (= (and b!8007105 (not c!1469908)) b!8007103))

(assert (= (and b!8007107 res!3166303) b!8007109))

(assert (= (and b!8007103 c!1469907) b!8007108))

(assert (= (and b!8007103 (not c!1469907)) b!8007106))

(assert (= (and b!8007108 res!3166304) b!8007110))

(assert (= (and b!8007106 (not res!3166306)) b!8007111))

(assert (= (and b!8007111 res!3166307) b!8007104))

(assert (= (or b!8007110 b!8007104) bm!743879))

(assert (= (or b!8007108 b!8007111) bm!743880))

(assert (= (or b!8007109 bm!743879) bm!743878))

(declare-fun m!8372336 () Bool)

(assert (=> b!8007107 m!8372336))

(declare-fun m!8372338 () Bool)

(assert (=> bm!743878 m!8372338))

(declare-fun m!8372340 () Bool)

(assert (=> bm!743880 m!8372340))

(assert (=> d!2387484 d!2387708))

(assert (=> d!2387484 d!2387518))

(declare-fun d!2387710 () Bool)

(assert (=> d!2387710 (= (nullable!9697 (regOne!43790 r!15422)) (nullableFct!3826 (regOne!43790 r!15422)))))

(declare-fun bs!1970734 () Bool)

(assert (= bs!1970734 d!2387710))

(declare-fun m!8372342 () Bool)

(assert (=> bs!1970734 m!8372342))

(assert (=> b!8006634 d!2387710))

(declare-fun b!8007115 () Bool)

(declare-fun lt!2715575 () List!74868)

(declare-fun e!4716884 () Bool)

(assert (=> b!8007115 (= e!4716884 (or (not (= (Cons!74744 lt!2715441 Nil!74744) Nil!74744)) (= lt!2715575 (t!390611 testedP!353))))))

(declare-fun b!8007114 () Bool)

(declare-fun res!3166309 () Bool)

(assert (=> b!8007114 (=> (not res!3166309) (not e!4716884))))

(assert (=> b!8007114 (= res!3166309 (= (size!43541 lt!2715575) (+ (size!43541 (t!390611 testedP!353)) (size!43541 (Cons!74744 lt!2715441 Nil!74744)))))))

(declare-fun b!8007113 () Bool)

(declare-fun e!4716885 () List!74868)

(assert (=> b!8007113 (= e!4716885 (Cons!74744 (h!81192 (t!390611 testedP!353)) (++!18465 (t!390611 (t!390611 testedP!353)) (Cons!74744 lt!2715441 Nil!74744))))))

(declare-fun b!8007112 () Bool)

(assert (=> b!8007112 (= e!4716885 (Cons!74744 lt!2715441 Nil!74744))))

(declare-fun d!2387712 () Bool)

(assert (=> d!2387712 e!4716884))

(declare-fun res!3166308 () Bool)

(assert (=> d!2387712 (=> (not res!3166308) (not e!4716884))))

(assert (=> d!2387712 (= res!3166308 (= (content!15893 lt!2715575) ((_ map or) (content!15893 (t!390611 testedP!353)) (content!15893 (Cons!74744 lt!2715441 Nil!74744)))))))

(assert (=> d!2387712 (= lt!2715575 e!4716885)))

(declare-fun c!1469909 () Bool)

(assert (=> d!2387712 (= c!1469909 ((_ is Nil!74744) (t!390611 testedP!353)))))

(assert (=> d!2387712 (= (++!18465 (t!390611 testedP!353) (Cons!74744 lt!2715441 Nil!74744)) lt!2715575)))

(assert (= (and d!2387712 c!1469909) b!8007112))

(assert (= (and d!2387712 (not c!1469909)) b!8007113))

(assert (= (and d!2387712 res!3166308) b!8007114))

(assert (= (and b!8007114 res!3166309) b!8007115))

(declare-fun m!8372344 () Bool)

(assert (=> b!8007114 m!8372344))

(assert (=> b!8007114 m!8371880))

(assert (=> b!8007114 m!8371914))

(declare-fun m!8372346 () Bool)

(assert (=> b!8007113 m!8372346))

(declare-fun m!8372348 () Bool)

(assert (=> d!2387712 m!8372348))

(assert (=> d!2387712 m!8372170))

(assert (=> d!2387712 m!8371922))

(assert (=> b!8006683 d!2387712))

(declare-fun d!2387714 () Bool)

(declare-fun lt!2715576 () Int)

(assert (=> d!2387714 (>= lt!2715576 0)))

(declare-fun e!4716886 () Int)

(assert (=> d!2387714 (= lt!2715576 e!4716886)))

(declare-fun c!1469910 () Bool)

(assert (=> d!2387714 (= c!1469910 ((_ is Nil!74744) (t!390611 lt!2715442)))))

(assert (=> d!2387714 (= (size!43541 (t!390611 lt!2715442)) lt!2715576)))

(declare-fun b!8007116 () Bool)

(assert (=> b!8007116 (= e!4716886 0)))

(declare-fun b!8007117 () Bool)

(assert (=> b!8007117 (= e!4716886 (+ 1 (size!43541 (t!390611 (t!390611 lt!2715442)))))))

(assert (= (and d!2387714 c!1469910) b!8007116))

(assert (= (and d!2387714 (not c!1469910)) b!8007117))

(declare-fun m!8372350 () Bool)

(assert (=> b!8007117 m!8372350))

(assert (=> b!8006704 d!2387714))

(declare-fun b!8007120 () Bool)

(declare-fun e!4716887 () Bool)

(declare-fun tp!2395726 () Bool)

(assert (=> b!8007120 (= e!4716887 tp!2395726)))

(declare-fun b!8007119 () Bool)

(declare-fun tp!2395727 () Bool)

(declare-fun tp!2395723 () Bool)

(assert (=> b!8007119 (= e!4716887 (and tp!2395727 tp!2395723))))

(assert (=> b!8006749 (= tp!2395662 e!4716887)))

(declare-fun b!8007118 () Bool)

(assert (=> b!8007118 (= e!4716887 tp_is_empty!53821)))

(declare-fun b!8007121 () Bool)

(declare-fun tp!2395725 () Bool)

(declare-fun tp!2395724 () Bool)

(assert (=> b!8007121 (= e!4716887 (and tp!2395725 tp!2395724))))

(assert (= (and b!8006749 ((_ is ElementMatch!21639) (regOne!43790 (regTwo!43791 r!15422)))) b!8007118))

(assert (= (and b!8006749 ((_ is Concat!30638) (regOne!43790 (regTwo!43791 r!15422)))) b!8007119))

(assert (= (and b!8006749 ((_ is Star!21639) (regOne!43790 (regTwo!43791 r!15422)))) b!8007120))

(assert (= (and b!8006749 ((_ is Union!21639) (regOne!43790 (regTwo!43791 r!15422)))) b!8007121))

(declare-fun b!8007124 () Bool)

(declare-fun e!4716888 () Bool)

(declare-fun tp!2395731 () Bool)

(assert (=> b!8007124 (= e!4716888 tp!2395731)))

(declare-fun b!8007123 () Bool)

(declare-fun tp!2395732 () Bool)

(declare-fun tp!2395728 () Bool)

(assert (=> b!8007123 (= e!4716888 (and tp!2395732 tp!2395728))))

(assert (=> b!8006749 (= tp!2395658 e!4716888)))

(declare-fun b!8007122 () Bool)

(assert (=> b!8007122 (= e!4716888 tp_is_empty!53821)))

(declare-fun b!8007125 () Bool)

(declare-fun tp!2395730 () Bool)

(declare-fun tp!2395729 () Bool)

(assert (=> b!8007125 (= e!4716888 (and tp!2395730 tp!2395729))))

(assert (= (and b!8006749 ((_ is ElementMatch!21639) (regTwo!43790 (regTwo!43791 r!15422)))) b!8007122))

(assert (= (and b!8006749 ((_ is Concat!30638) (regTwo!43790 (regTwo!43791 r!15422)))) b!8007123))

(assert (= (and b!8006749 ((_ is Star!21639) (regTwo!43790 (regTwo!43791 r!15422)))) b!8007124))

(assert (= (and b!8006749 ((_ is Union!21639) (regTwo!43790 (regTwo!43791 r!15422)))) b!8007125))

(declare-fun b!8007126 () Bool)

(declare-fun e!4716889 () Bool)

(declare-fun tp!2395733 () Bool)

(assert (=> b!8007126 (= e!4716889 (and tp_is_empty!53821 tp!2395733))))

(assert (=> b!8006770 (= tp!2395682 e!4716889)))

(assert (= (and b!8006770 ((_ is Cons!74744) (t!390611 (t!390611 testedSuffix!271)))) b!8007126))

(declare-fun b!8007129 () Bool)

(declare-fun e!4716890 () Bool)

(declare-fun tp!2395737 () Bool)

(assert (=> b!8007129 (= e!4716890 tp!2395737)))

(declare-fun b!8007128 () Bool)

(declare-fun tp!2395738 () Bool)

(declare-fun tp!2395734 () Bool)

(assert (=> b!8007128 (= e!4716890 (and tp!2395738 tp!2395734))))

(assert (=> b!8006747 (= tp!2395655 e!4716890)))

(declare-fun b!8007127 () Bool)

(assert (=> b!8007127 (= e!4716890 tp_is_empty!53821)))

(declare-fun b!8007130 () Bool)

(declare-fun tp!2395736 () Bool)

(declare-fun tp!2395735 () Bool)

(assert (=> b!8007130 (= e!4716890 (and tp!2395736 tp!2395735))))

(assert (= (and b!8006747 ((_ is ElementMatch!21639) (regOne!43791 (regOne!43791 r!15422)))) b!8007127))

(assert (= (and b!8006747 ((_ is Concat!30638) (regOne!43791 (regOne!43791 r!15422)))) b!8007128))

(assert (= (and b!8006747 ((_ is Star!21639) (regOne!43791 (regOne!43791 r!15422)))) b!8007129))

(assert (= (and b!8006747 ((_ is Union!21639) (regOne!43791 (regOne!43791 r!15422)))) b!8007130))

(declare-fun b!8007133 () Bool)

(declare-fun e!4716891 () Bool)

(declare-fun tp!2395742 () Bool)

(assert (=> b!8007133 (= e!4716891 tp!2395742)))

(declare-fun b!8007132 () Bool)

(declare-fun tp!2395743 () Bool)

(declare-fun tp!2395739 () Bool)

(assert (=> b!8007132 (= e!4716891 (and tp!2395743 tp!2395739))))

(assert (=> b!8006747 (= tp!2395654 e!4716891)))

(declare-fun b!8007131 () Bool)

(assert (=> b!8007131 (= e!4716891 tp_is_empty!53821)))

(declare-fun b!8007134 () Bool)

(declare-fun tp!2395741 () Bool)

(declare-fun tp!2395740 () Bool)

(assert (=> b!8007134 (= e!4716891 (and tp!2395741 tp!2395740))))

(assert (= (and b!8006747 ((_ is ElementMatch!21639) (regTwo!43791 (regOne!43791 r!15422)))) b!8007131))

(assert (= (and b!8006747 ((_ is Concat!30638) (regTwo!43791 (regOne!43791 r!15422)))) b!8007132))

(assert (= (and b!8006747 ((_ is Star!21639) (regTwo!43791 (regOne!43791 r!15422)))) b!8007133))

(assert (= (and b!8006747 ((_ is Union!21639) (regTwo!43791 (regOne!43791 r!15422)))) b!8007134))

(declare-fun b!8007137 () Bool)

(declare-fun e!4716892 () Bool)

(declare-fun tp!2395747 () Bool)

(assert (=> b!8007137 (= e!4716892 tp!2395747)))

(declare-fun b!8007136 () Bool)

(declare-fun tp!2395748 () Bool)

(declare-fun tp!2395744 () Bool)

(assert (=> b!8007136 (= e!4716892 (and tp!2395748 tp!2395744))))

(assert (=> b!8006766 (= tp!2395680 e!4716892)))

(declare-fun b!8007135 () Bool)

(assert (=> b!8007135 (= e!4716892 tp_is_empty!53821)))

(declare-fun b!8007138 () Bool)

(declare-fun tp!2395746 () Bool)

(declare-fun tp!2395745 () Bool)

(assert (=> b!8007138 (= e!4716892 (and tp!2395746 tp!2395745))))

(assert (= (and b!8006766 ((_ is ElementMatch!21639) (regOne!43790 (reg!21968 r!15422)))) b!8007135))

(assert (= (and b!8006766 ((_ is Concat!30638) (regOne!43790 (reg!21968 r!15422)))) b!8007136))

(assert (= (and b!8006766 ((_ is Star!21639) (regOne!43790 (reg!21968 r!15422)))) b!8007137))

(assert (= (and b!8006766 ((_ is Union!21639) (regOne!43790 (reg!21968 r!15422)))) b!8007138))

(declare-fun b!8007141 () Bool)

(declare-fun e!4716893 () Bool)

(declare-fun tp!2395752 () Bool)

(assert (=> b!8007141 (= e!4716893 tp!2395752)))

(declare-fun b!8007140 () Bool)

(declare-fun tp!2395753 () Bool)

(declare-fun tp!2395749 () Bool)

(assert (=> b!8007140 (= e!4716893 (and tp!2395753 tp!2395749))))

(assert (=> b!8006766 (= tp!2395676 e!4716893)))

(declare-fun b!8007139 () Bool)

(assert (=> b!8007139 (= e!4716893 tp_is_empty!53821)))

(declare-fun b!8007142 () Bool)

(declare-fun tp!2395751 () Bool)

(declare-fun tp!2395750 () Bool)

(assert (=> b!8007142 (= e!4716893 (and tp!2395751 tp!2395750))))

(assert (= (and b!8006766 ((_ is ElementMatch!21639) (regTwo!43790 (reg!21968 r!15422)))) b!8007139))

(assert (= (and b!8006766 ((_ is Concat!30638) (regTwo!43790 (reg!21968 r!15422)))) b!8007140))

(assert (= (and b!8006766 ((_ is Star!21639) (regTwo!43790 (reg!21968 r!15422)))) b!8007141))

(assert (= (and b!8006766 ((_ is Union!21639) (regTwo!43790 (reg!21968 r!15422)))) b!8007142))

(declare-fun b!8007145 () Bool)

(declare-fun e!4716894 () Bool)

(declare-fun tp!2395757 () Bool)

(assert (=> b!8007145 (= e!4716894 tp!2395757)))

(declare-fun b!8007144 () Bool)

(declare-fun tp!2395758 () Bool)

(declare-fun tp!2395754 () Bool)

(assert (=> b!8007144 (= e!4716894 (and tp!2395758 tp!2395754))))

(assert (=> b!8006751 (= tp!2395660 e!4716894)))

(declare-fun b!8007143 () Bool)

(assert (=> b!8007143 (= e!4716894 tp_is_empty!53821)))

(declare-fun b!8007146 () Bool)

(declare-fun tp!2395756 () Bool)

(declare-fun tp!2395755 () Bool)

(assert (=> b!8007146 (= e!4716894 (and tp!2395756 tp!2395755))))

(assert (= (and b!8006751 ((_ is ElementMatch!21639) (regOne!43791 (regTwo!43791 r!15422)))) b!8007143))

(assert (= (and b!8006751 ((_ is Concat!30638) (regOne!43791 (regTwo!43791 r!15422)))) b!8007144))

(assert (= (and b!8006751 ((_ is Star!21639) (regOne!43791 (regTwo!43791 r!15422)))) b!8007145))

(assert (= (and b!8006751 ((_ is Union!21639) (regOne!43791 (regTwo!43791 r!15422)))) b!8007146))

(declare-fun b!8007149 () Bool)

(declare-fun e!4716895 () Bool)

(declare-fun tp!2395762 () Bool)

(assert (=> b!8007149 (= e!4716895 tp!2395762)))

(declare-fun b!8007148 () Bool)

(declare-fun tp!2395763 () Bool)

(declare-fun tp!2395759 () Bool)

(assert (=> b!8007148 (= e!4716895 (and tp!2395763 tp!2395759))))

(assert (=> b!8006751 (= tp!2395659 e!4716895)))

(declare-fun b!8007147 () Bool)

(assert (=> b!8007147 (= e!4716895 tp_is_empty!53821)))

(declare-fun b!8007150 () Bool)

(declare-fun tp!2395761 () Bool)

(declare-fun tp!2395760 () Bool)

(assert (=> b!8007150 (= e!4716895 (and tp!2395761 tp!2395760))))

(assert (= (and b!8006751 ((_ is ElementMatch!21639) (regTwo!43791 (regTwo!43791 r!15422)))) b!8007147))

(assert (= (and b!8006751 ((_ is Concat!30638) (regTwo!43791 (regTwo!43791 r!15422)))) b!8007148))

(assert (= (and b!8006751 ((_ is Star!21639) (regTwo!43791 (regTwo!43791 r!15422)))) b!8007149))

(assert (= (and b!8006751 ((_ is Union!21639) (regTwo!43791 (regTwo!43791 r!15422)))) b!8007150))

(declare-fun b!8007153 () Bool)

(declare-fun e!4716896 () Bool)

(declare-fun tp!2395767 () Bool)

(assert (=> b!8007153 (= e!4716896 tp!2395767)))

(declare-fun b!8007152 () Bool)

(declare-fun tp!2395768 () Bool)

(declare-fun tp!2395764 () Bool)

(assert (=> b!8007152 (= e!4716896 (and tp!2395768 tp!2395764))))

(assert (=> b!8006746 (= tp!2395656 e!4716896)))

(declare-fun b!8007151 () Bool)

(assert (=> b!8007151 (= e!4716896 tp_is_empty!53821)))

(declare-fun b!8007154 () Bool)

(declare-fun tp!2395766 () Bool)

(declare-fun tp!2395765 () Bool)

(assert (=> b!8007154 (= e!4716896 (and tp!2395766 tp!2395765))))

(assert (= (and b!8006746 ((_ is ElementMatch!21639) (reg!21968 (regOne!43791 r!15422)))) b!8007151))

(assert (= (and b!8006746 ((_ is Concat!30638) (reg!21968 (regOne!43791 r!15422)))) b!8007152))

(assert (= (and b!8006746 ((_ is Star!21639) (reg!21968 (regOne!43791 r!15422)))) b!8007153))

(assert (= (and b!8006746 ((_ is Union!21639) (reg!21968 (regOne!43791 r!15422)))) b!8007154))

(declare-fun b!8007157 () Bool)

(declare-fun e!4716897 () Bool)

(declare-fun tp!2395772 () Bool)

(assert (=> b!8007157 (= e!4716897 tp!2395772)))

(declare-fun b!8007156 () Bool)

(declare-fun tp!2395773 () Bool)

(declare-fun tp!2395769 () Bool)

(assert (=> b!8007156 (= e!4716897 (and tp!2395773 tp!2395769))))

(assert (=> b!8006750 (= tp!2395661 e!4716897)))

(declare-fun b!8007155 () Bool)

(assert (=> b!8007155 (= e!4716897 tp_is_empty!53821)))

(declare-fun b!8007158 () Bool)

(declare-fun tp!2395771 () Bool)

(declare-fun tp!2395770 () Bool)

(assert (=> b!8007158 (= e!4716897 (and tp!2395771 tp!2395770))))

(assert (= (and b!8006750 ((_ is ElementMatch!21639) (reg!21968 (regTwo!43791 r!15422)))) b!8007155))

(assert (= (and b!8006750 ((_ is Concat!30638) (reg!21968 (regTwo!43791 r!15422)))) b!8007156))

(assert (= (and b!8006750 ((_ is Star!21639) (reg!21968 (regTwo!43791 r!15422)))) b!8007157))

(assert (= (and b!8006750 ((_ is Union!21639) (reg!21968 (regTwo!43791 r!15422)))) b!8007158))

(declare-fun b!8007161 () Bool)

(declare-fun e!4716898 () Bool)

(declare-fun tp!2395777 () Bool)

(assert (=> b!8007161 (= e!4716898 tp!2395777)))

(declare-fun b!8007160 () Bool)

(declare-fun tp!2395778 () Bool)

(declare-fun tp!2395774 () Bool)

(assert (=> b!8007160 (= e!4716898 (and tp!2395778 tp!2395774))))

(assert (=> b!8006745 (= tp!2395657 e!4716898)))

(declare-fun b!8007159 () Bool)

(assert (=> b!8007159 (= e!4716898 tp_is_empty!53821)))

(declare-fun b!8007162 () Bool)

(declare-fun tp!2395776 () Bool)

(declare-fun tp!2395775 () Bool)

(assert (=> b!8007162 (= e!4716898 (and tp!2395776 tp!2395775))))

(assert (= (and b!8006745 ((_ is ElementMatch!21639) (regOne!43790 (regOne!43791 r!15422)))) b!8007159))

(assert (= (and b!8006745 ((_ is Concat!30638) (regOne!43790 (regOne!43791 r!15422)))) b!8007160))

(assert (= (and b!8006745 ((_ is Star!21639) (regOne!43790 (regOne!43791 r!15422)))) b!8007161))

(assert (= (and b!8006745 ((_ is Union!21639) (regOne!43790 (regOne!43791 r!15422)))) b!8007162))

(declare-fun b!8007165 () Bool)

(declare-fun e!4716899 () Bool)

(declare-fun tp!2395782 () Bool)

(assert (=> b!8007165 (= e!4716899 tp!2395782)))

(declare-fun b!8007164 () Bool)

(declare-fun tp!2395783 () Bool)

(declare-fun tp!2395779 () Bool)

(assert (=> b!8007164 (= e!4716899 (and tp!2395783 tp!2395779))))

(assert (=> b!8006745 (= tp!2395653 e!4716899)))

(declare-fun b!8007163 () Bool)

(assert (=> b!8007163 (= e!4716899 tp_is_empty!53821)))

(declare-fun b!8007166 () Bool)

(declare-fun tp!2395781 () Bool)

(declare-fun tp!2395780 () Bool)

(assert (=> b!8007166 (= e!4716899 (and tp!2395781 tp!2395780))))

(assert (= (and b!8006745 ((_ is ElementMatch!21639) (regTwo!43790 (regOne!43791 r!15422)))) b!8007163))

(assert (= (and b!8006745 ((_ is Concat!30638) (regTwo!43790 (regOne!43791 r!15422)))) b!8007164))

(assert (= (and b!8006745 ((_ is Star!21639) (regTwo!43790 (regOne!43791 r!15422)))) b!8007165))

(assert (= (and b!8006745 ((_ is Union!21639) (regTwo!43790 (regOne!43791 r!15422)))) b!8007166))

(declare-fun b!8007169 () Bool)

(declare-fun e!4716900 () Bool)

(declare-fun tp!2395787 () Bool)

(assert (=> b!8007169 (= e!4716900 tp!2395787)))

(declare-fun b!8007168 () Bool)

(declare-fun tp!2395788 () Bool)

(declare-fun tp!2395784 () Bool)

(assert (=> b!8007168 (= e!4716900 (and tp!2395788 tp!2395784))))

(assert (=> b!8006764 (= tp!2395673 e!4716900)))

(declare-fun b!8007167 () Bool)

(assert (=> b!8007167 (= e!4716900 tp_is_empty!53821)))

(declare-fun b!8007170 () Bool)

(declare-fun tp!2395786 () Bool)

(declare-fun tp!2395785 () Bool)

(assert (=> b!8007170 (= e!4716900 (and tp!2395786 tp!2395785))))

(assert (= (and b!8006764 ((_ is ElementMatch!21639) (regOne!43791 (regTwo!43790 r!15422)))) b!8007167))

(assert (= (and b!8006764 ((_ is Concat!30638) (regOne!43791 (regTwo!43790 r!15422)))) b!8007168))

(assert (= (and b!8006764 ((_ is Star!21639) (regOne!43791 (regTwo!43790 r!15422)))) b!8007169))

(assert (= (and b!8006764 ((_ is Union!21639) (regOne!43791 (regTwo!43790 r!15422)))) b!8007170))

(declare-fun b!8007173 () Bool)

(declare-fun e!4716901 () Bool)

(declare-fun tp!2395792 () Bool)

(assert (=> b!8007173 (= e!4716901 tp!2395792)))

(declare-fun b!8007172 () Bool)

(declare-fun tp!2395793 () Bool)

(declare-fun tp!2395789 () Bool)

(assert (=> b!8007172 (= e!4716901 (and tp!2395793 tp!2395789))))

(assert (=> b!8006764 (= tp!2395672 e!4716901)))

(declare-fun b!8007171 () Bool)

(assert (=> b!8007171 (= e!4716901 tp_is_empty!53821)))

(declare-fun b!8007174 () Bool)

(declare-fun tp!2395791 () Bool)

(declare-fun tp!2395790 () Bool)

(assert (=> b!8007174 (= e!4716901 (and tp!2395791 tp!2395790))))

(assert (= (and b!8006764 ((_ is ElementMatch!21639) (regTwo!43791 (regTwo!43790 r!15422)))) b!8007171))

(assert (= (and b!8006764 ((_ is Concat!30638) (regTwo!43791 (regTwo!43790 r!15422)))) b!8007172))

(assert (= (and b!8006764 ((_ is Star!21639) (regTwo!43791 (regTwo!43790 r!15422)))) b!8007173))

(assert (= (and b!8006764 ((_ is Union!21639) (regTwo!43791 (regTwo!43790 r!15422)))) b!8007174))

(declare-fun b!8007177 () Bool)

(declare-fun e!4716902 () Bool)

(declare-fun tp!2395797 () Bool)

(assert (=> b!8007177 (= e!4716902 tp!2395797)))

(declare-fun b!8007176 () Bool)

(declare-fun tp!2395798 () Bool)

(declare-fun tp!2395794 () Bool)

(assert (=> b!8007176 (= e!4716902 (and tp!2395798 tp!2395794))))

(assert (=> b!8006759 (= tp!2395669 e!4716902)))

(declare-fun b!8007175 () Bool)

(assert (=> b!8007175 (= e!4716902 tp_is_empty!53821)))

(declare-fun b!8007178 () Bool)

(declare-fun tp!2395796 () Bool)

(declare-fun tp!2395795 () Bool)

(assert (=> b!8007178 (= e!4716902 (and tp!2395796 tp!2395795))))

(assert (= (and b!8006759 ((_ is ElementMatch!21639) (reg!21968 (regOne!43790 r!15422)))) b!8007175))

(assert (= (and b!8006759 ((_ is Concat!30638) (reg!21968 (regOne!43790 r!15422)))) b!8007176))

(assert (= (and b!8006759 ((_ is Star!21639) (reg!21968 (regOne!43790 r!15422)))) b!8007177))

(assert (= (and b!8006759 ((_ is Union!21639) (reg!21968 (regOne!43790 r!15422)))) b!8007178))

(declare-fun b!8007181 () Bool)

(declare-fun e!4716903 () Bool)

(declare-fun tp!2395802 () Bool)

(assert (=> b!8007181 (= e!4716903 tp!2395802)))

(declare-fun b!8007180 () Bool)

(declare-fun tp!2395803 () Bool)

(declare-fun tp!2395799 () Bool)

(assert (=> b!8007180 (= e!4716903 (and tp!2395803 tp!2395799))))

(assert (=> b!8006768 (= tp!2395678 e!4716903)))

(declare-fun b!8007179 () Bool)

(assert (=> b!8007179 (= e!4716903 tp_is_empty!53821)))

(declare-fun b!8007182 () Bool)

(declare-fun tp!2395801 () Bool)

(declare-fun tp!2395800 () Bool)

(assert (=> b!8007182 (= e!4716903 (and tp!2395801 tp!2395800))))

(assert (= (and b!8006768 ((_ is ElementMatch!21639) (regOne!43791 (reg!21968 r!15422)))) b!8007179))

(assert (= (and b!8006768 ((_ is Concat!30638) (regOne!43791 (reg!21968 r!15422)))) b!8007180))

(assert (= (and b!8006768 ((_ is Star!21639) (regOne!43791 (reg!21968 r!15422)))) b!8007181))

(assert (= (and b!8006768 ((_ is Union!21639) (regOne!43791 (reg!21968 r!15422)))) b!8007182))

(declare-fun b!8007185 () Bool)

(declare-fun e!4716904 () Bool)

(declare-fun tp!2395807 () Bool)

(assert (=> b!8007185 (= e!4716904 tp!2395807)))

(declare-fun b!8007184 () Bool)

(declare-fun tp!2395808 () Bool)

(declare-fun tp!2395804 () Bool)

(assert (=> b!8007184 (= e!4716904 (and tp!2395808 tp!2395804))))

(assert (=> b!8006768 (= tp!2395677 e!4716904)))

(declare-fun b!8007183 () Bool)

(assert (=> b!8007183 (= e!4716904 tp_is_empty!53821)))

(declare-fun b!8007186 () Bool)

(declare-fun tp!2395806 () Bool)

(declare-fun tp!2395805 () Bool)

(assert (=> b!8007186 (= e!4716904 (and tp!2395806 tp!2395805))))

(assert (= (and b!8006768 ((_ is ElementMatch!21639) (regTwo!43791 (reg!21968 r!15422)))) b!8007183))

(assert (= (and b!8006768 ((_ is Concat!30638) (regTwo!43791 (reg!21968 r!15422)))) b!8007184))

(assert (= (and b!8006768 ((_ is Star!21639) (regTwo!43791 (reg!21968 r!15422)))) b!8007185))

(assert (= (and b!8006768 ((_ is Union!21639) (regTwo!43791 (reg!21968 r!15422)))) b!8007186))

(declare-fun b!8007189 () Bool)

(declare-fun e!4716905 () Bool)

(declare-fun tp!2395812 () Bool)

(assert (=> b!8007189 (= e!4716905 tp!2395812)))

(declare-fun b!8007188 () Bool)

(declare-fun tp!2395813 () Bool)

(declare-fun tp!2395809 () Bool)

(assert (=> b!8007188 (= e!4716905 (and tp!2395813 tp!2395809))))

(assert (=> b!8006763 (= tp!2395674 e!4716905)))

(declare-fun b!8007187 () Bool)

(assert (=> b!8007187 (= e!4716905 tp_is_empty!53821)))

(declare-fun b!8007190 () Bool)

(declare-fun tp!2395811 () Bool)

(declare-fun tp!2395810 () Bool)

(assert (=> b!8007190 (= e!4716905 (and tp!2395811 tp!2395810))))

(assert (= (and b!8006763 ((_ is ElementMatch!21639) (reg!21968 (regTwo!43790 r!15422)))) b!8007187))

(assert (= (and b!8006763 ((_ is Concat!30638) (reg!21968 (regTwo!43790 r!15422)))) b!8007188))

(assert (= (and b!8006763 ((_ is Star!21639) (reg!21968 (regTwo!43790 r!15422)))) b!8007189))

(assert (= (and b!8006763 ((_ is Union!21639) (reg!21968 (regTwo!43790 r!15422)))) b!8007190))

(declare-fun b!8007193 () Bool)

(declare-fun e!4716906 () Bool)

(declare-fun tp!2395817 () Bool)

(assert (=> b!8007193 (= e!4716906 tp!2395817)))

(declare-fun b!8007192 () Bool)

(declare-fun tp!2395818 () Bool)

(declare-fun tp!2395814 () Bool)

(assert (=> b!8007192 (= e!4716906 (and tp!2395818 tp!2395814))))

(assert (=> b!8006758 (= tp!2395670 e!4716906)))

(declare-fun b!8007191 () Bool)

(assert (=> b!8007191 (= e!4716906 tp_is_empty!53821)))

(declare-fun b!8007194 () Bool)

(declare-fun tp!2395816 () Bool)

(declare-fun tp!2395815 () Bool)

(assert (=> b!8007194 (= e!4716906 (and tp!2395816 tp!2395815))))

(assert (= (and b!8006758 ((_ is ElementMatch!21639) (regOne!43790 (regOne!43790 r!15422)))) b!8007191))

(assert (= (and b!8006758 ((_ is Concat!30638) (regOne!43790 (regOne!43790 r!15422)))) b!8007192))

(assert (= (and b!8006758 ((_ is Star!21639) (regOne!43790 (regOne!43790 r!15422)))) b!8007193))

(assert (= (and b!8006758 ((_ is Union!21639) (regOne!43790 (regOne!43790 r!15422)))) b!8007194))

(declare-fun b!8007197 () Bool)

(declare-fun e!4716907 () Bool)

(declare-fun tp!2395822 () Bool)

(assert (=> b!8007197 (= e!4716907 tp!2395822)))

(declare-fun b!8007196 () Bool)

(declare-fun tp!2395823 () Bool)

(declare-fun tp!2395819 () Bool)

(assert (=> b!8007196 (= e!4716907 (and tp!2395823 tp!2395819))))

(assert (=> b!8006758 (= tp!2395666 e!4716907)))

(declare-fun b!8007195 () Bool)

(assert (=> b!8007195 (= e!4716907 tp_is_empty!53821)))

(declare-fun b!8007198 () Bool)

(declare-fun tp!2395821 () Bool)

(declare-fun tp!2395820 () Bool)

(assert (=> b!8007198 (= e!4716907 (and tp!2395821 tp!2395820))))

(assert (= (and b!8006758 ((_ is ElementMatch!21639) (regTwo!43790 (regOne!43790 r!15422)))) b!8007195))

(assert (= (and b!8006758 ((_ is Concat!30638) (regTwo!43790 (regOne!43790 r!15422)))) b!8007196))

(assert (= (and b!8006758 ((_ is Star!21639) (regTwo!43790 (regOne!43790 r!15422)))) b!8007197))

(assert (= (and b!8006758 ((_ is Union!21639) (regTwo!43790 (regOne!43790 r!15422)))) b!8007198))

(declare-fun b!8007201 () Bool)

(declare-fun e!4716908 () Bool)

(declare-fun tp!2395827 () Bool)

(assert (=> b!8007201 (= e!4716908 tp!2395827)))

(declare-fun b!8007200 () Bool)

(declare-fun tp!2395828 () Bool)

(declare-fun tp!2395824 () Bool)

(assert (=> b!8007200 (= e!4716908 (and tp!2395828 tp!2395824))))

(assert (=> b!8006767 (= tp!2395679 e!4716908)))

(declare-fun b!8007199 () Bool)

(assert (=> b!8007199 (= e!4716908 tp_is_empty!53821)))

(declare-fun b!8007202 () Bool)

(declare-fun tp!2395826 () Bool)

(declare-fun tp!2395825 () Bool)

(assert (=> b!8007202 (= e!4716908 (and tp!2395826 tp!2395825))))

(assert (= (and b!8006767 ((_ is ElementMatch!21639) (reg!21968 (reg!21968 r!15422)))) b!8007199))

(assert (= (and b!8006767 ((_ is Concat!30638) (reg!21968 (reg!21968 r!15422)))) b!8007200))

(assert (= (and b!8006767 ((_ is Star!21639) (reg!21968 (reg!21968 r!15422)))) b!8007201))

(assert (= (and b!8006767 ((_ is Union!21639) (reg!21968 (reg!21968 r!15422)))) b!8007202))

(declare-fun b!8007205 () Bool)

(declare-fun e!4716909 () Bool)

(declare-fun tp!2395832 () Bool)

(assert (=> b!8007205 (= e!4716909 tp!2395832)))

(declare-fun b!8007204 () Bool)

(declare-fun tp!2395833 () Bool)

(declare-fun tp!2395829 () Bool)

(assert (=> b!8007204 (= e!4716909 (and tp!2395833 tp!2395829))))

(assert (=> b!8006762 (= tp!2395675 e!4716909)))

(declare-fun b!8007203 () Bool)

(assert (=> b!8007203 (= e!4716909 tp_is_empty!53821)))

(declare-fun b!8007206 () Bool)

(declare-fun tp!2395831 () Bool)

(declare-fun tp!2395830 () Bool)

(assert (=> b!8007206 (= e!4716909 (and tp!2395831 tp!2395830))))

(assert (= (and b!8006762 ((_ is ElementMatch!21639) (regOne!43790 (regTwo!43790 r!15422)))) b!8007203))

(assert (= (and b!8006762 ((_ is Concat!30638) (regOne!43790 (regTwo!43790 r!15422)))) b!8007204))

(assert (= (and b!8006762 ((_ is Star!21639) (regOne!43790 (regTwo!43790 r!15422)))) b!8007205))

(assert (= (and b!8006762 ((_ is Union!21639) (regOne!43790 (regTwo!43790 r!15422)))) b!8007206))

(declare-fun b!8007209 () Bool)

(declare-fun e!4716910 () Bool)

(declare-fun tp!2395837 () Bool)

(assert (=> b!8007209 (= e!4716910 tp!2395837)))

(declare-fun b!8007208 () Bool)

(declare-fun tp!2395838 () Bool)

(declare-fun tp!2395834 () Bool)

(assert (=> b!8007208 (= e!4716910 (and tp!2395838 tp!2395834))))

(assert (=> b!8006762 (= tp!2395671 e!4716910)))

(declare-fun b!8007207 () Bool)

(assert (=> b!8007207 (= e!4716910 tp_is_empty!53821)))

(declare-fun b!8007210 () Bool)

(declare-fun tp!2395836 () Bool)

(declare-fun tp!2395835 () Bool)

(assert (=> b!8007210 (= e!4716910 (and tp!2395836 tp!2395835))))

(assert (= (and b!8006762 ((_ is ElementMatch!21639) (regTwo!43790 (regTwo!43790 r!15422)))) b!8007207))

(assert (= (and b!8006762 ((_ is Concat!30638) (regTwo!43790 (regTwo!43790 r!15422)))) b!8007208))

(assert (= (and b!8006762 ((_ is Star!21639) (regTwo!43790 (regTwo!43790 r!15422)))) b!8007209))

(assert (= (and b!8006762 ((_ is Union!21639) (regTwo!43790 (regTwo!43790 r!15422)))) b!8007210))

(declare-fun b!8007211 () Bool)

(declare-fun e!4716911 () Bool)

(declare-fun tp!2395839 () Bool)

(assert (=> b!8007211 (= e!4716911 (and tp_is_empty!53821 tp!2395839))))

(assert (=> b!8006769 (= tp!2395681 e!4716911)))

(assert (= (and b!8006769 ((_ is Cons!74744) (t!390611 (t!390611 testedP!353)))) b!8007211))

(declare-fun b!8007212 () Bool)

(declare-fun e!4716912 () Bool)

(declare-fun tp!2395840 () Bool)

(assert (=> b!8007212 (= e!4716912 (and tp_is_empty!53821 tp!2395840))))

(assert (=> b!8006756 (= tp!2395665 e!4716912)))

(assert (= (and b!8006756 ((_ is Cons!74744) (t!390611 (t!390611 totalInput!1349)))) b!8007212))

(declare-fun b!8007215 () Bool)

(declare-fun e!4716913 () Bool)

(declare-fun tp!2395844 () Bool)

(assert (=> b!8007215 (= e!4716913 tp!2395844)))

(declare-fun b!8007214 () Bool)

(declare-fun tp!2395845 () Bool)

(declare-fun tp!2395841 () Bool)

(assert (=> b!8007214 (= e!4716913 (and tp!2395845 tp!2395841))))

(assert (=> b!8006760 (= tp!2395668 e!4716913)))

(declare-fun b!8007213 () Bool)

(assert (=> b!8007213 (= e!4716913 tp_is_empty!53821)))

(declare-fun b!8007216 () Bool)

(declare-fun tp!2395843 () Bool)

(declare-fun tp!2395842 () Bool)

(assert (=> b!8007216 (= e!4716913 (and tp!2395843 tp!2395842))))

(assert (= (and b!8006760 ((_ is ElementMatch!21639) (regOne!43791 (regOne!43790 r!15422)))) b!8007213))

(assert (= (and b!8006760 ((_ is Concat!30638) (regOne!43791 (regOne!43790 r!15422)))) b!8007214))

(assert (= (and b!8006760 ((_ is Star!21639) (regOne!43791 (regOne!43790 r!15422)))) b!8007215))

(assert (= (and b!8006760 ((_ is Union!21639) (regOne!43791 (regOne!43790 r!15422)))) b!8007216))

(declare-fun b!8007219 () Bool)

(declare-fun e!4716914 () Bool)

(declare-fun tp!2395849 () Bool)

(assert (=> b!8007219 (= e!4716914 tp!2395849)))

(declare-fun b!8007218 () Bool)

(declare-fun tp!2395850 () Bool)

(declare-fun tp!2395846 () Bool)

(assert (=> b!8007218 (= e!4716914 (and tp!2395850 tp!2395846))))

(assert (=> b!8006760 (= tp!2395667 e!4716914)))

(declare-fun b!8007217 () Bool)

(assert (=> b!8007217 (= e!4716914 tp_is_empty!53821)))

(declare-fun b!8007220 () Bool)

(declare-fun tp!2395848 () Bool)

(declare-fun tp!2395847 () Bool)

(assert (=> b!8007220 (= e!4716914 (and tp!2395848 tp!2395847))))

(assert (= (and b!8006760 ((_ is ElementMatch!21639) (regTwo!43791 (regOne!43790 r!15422)))) b!8007217))

(assert (= (and b!8006760 ((_ is Concat!30638) (regTwo!43791 (regOne!43790 r!15422)))) b!8007218))

(assert (= (and b!8006760 ((_ is Star!21639) (regTwo!43791 (regOne!43790 r!15422)))) b!8007219))

(assert (= (and b!8006760 ((_ is Union!21639) (regTwo!43791 (regOne!43790 r!15422)))) b!8007220))

(check-sat (not bm!743850) (not d!2387684) (not b!8007015) (not b!8006918) (not b!8007042) (not b!8007136) (not b!8007169) (not b!8006916) (not b!8007001) (not bm!743877) (not d!2387634) (not b!8007214) (not b!8007202) (not b!8007068) (not b!8006954) (not d!2387646) (not b!8006964) (not b!8007133) (not b!8007161) (not bm!743871) (not b!8007181) (not bm!743870) (not b!8007011) (not b!8007196) (not bm!743859) (not b!8007125) (not b!8007211) (not b!8007071) (not b!8007176) (not b!8007061) (not b!8007065) (not b!8006948) (not bm!743873) (not b!8007003) (not b!8007180) (not b!8007063) (not b!8007220) (not b!8007205) (not b!8007013) (not b!8007177) (not b!8006909) (not b!8007150) (not b!8007117) (not b!8006960) (not b!8007067) (not b!8007113) (not b!8007142) (not d!2387650) (not b!8007144) (not d!2387672) (not b!8007092) (not b!8007188) (not b!8007160) (not b!8007194) (not b!8007210) (not b!8007140) (not bm!743880) (not b!8006984) (not b!8007172) (not b!8007044) (not bm!743861) (not b!8007197) (not b!8007189) (not b!8007192) (not b!8007162) (not b!8007186) (not b!8006949) (not b!8006965) (not d!2387620) (not b!8007219) (not bm!743868) (not bm!743866) (not bm!743854) (not b!8007204) (not b!8007198) (not b!8007073) (not b!8007185) (not d!2387710) (not b!8006968) (not b!8007099) (not b!8007184) (not b!8007141) (not b!8006991) (not b!8007218) (not b!8007086) (not b!8007090) (not bm!743858) (not b!8007166) (not b!8007007) (not b!8006920) (not b!8006904) (not d!2387690) (not d!2387706) (not b!8007134) (not b!8007087) (not b!8007216) (not b!8007126) (not d!2387596) (not b!8007156) (not b!8006943) (not b!8007123) (not b!8007201) (not b!8007091) (not b!8006908) (not b!8007145) (not b!8007120) (not b!8006945) (not b!8007153) (not b!8007088) (not b!8007146) (not b!8007064) tp_is_empty!53821 (not b!8007165) (not b!8007078) (not d!2387668) (not b!8007208) (not b!8006970) (not bm!743851) (not b!8007056) (not b!8006979) (not b!8006966) (not b!8007168) (not b!8007157) (not b!8007114) (not b!8006985) (not b!8007182) (not b!8007017) (not d!2387630) (not b!8007124) (not bm!743867) (not b!8007040) (not d!2387632) (not b!8006999) (not d!2387648) (not d!2387678) (not b!8007149) (not b!8007107) (not d!2387676) (not b!8007209) (not bm!743852) (not b!8006971) (not b!8007004) (not b!8007164) (not b!8007178) (not b!8007173) (not d!2387712) (not b!8006997) (not b!8007008) (not d!2387694) (not b!8007174) (not bm!743876) (not b!8007084) (not b!8006947) (not b!8006906) (not b!8007051) (not b!8007119) (not d!2387636) (not b!8007130) (not bm!743878) (not b!8007060) (not b!8007215) (not b!8007132) (not d!2387588) (not b!8007212) (not b!8006962) (not b!8007154) (not b!8007170) (not b!8007045) (not b!8007128) (not b!8007190) (not b!8007158) (not b!8007193) (not bm!743857) (not b!8007129) (not b!8007138) (not b!8007152) (not b!8007137) (not b!8007148) (not b!8007121) (not b!8007059) (not b!8007206) (not b!8007200))
(check-sat)
