; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756718 () Bool)

(assert start!756718)

(declare-fun b!8033918 () Bool)

(declare-fun res!3176798 () Bool)

(declare-fun e!4732669 () Bool)

(assert (=> b!8033918 (=> (not res!3176798) (not e!4732669))))

(declare-datatypes ((C!43806 0))(
  ( (C!43807 (val!32679 Int)) )
))
(declare-datatypes ((Regex!21734 0))(
  ( (ElementMatch!21734 (c!1473773 C!43806)) (Concat!30737 (regOne!43980 Regex!21734) (regTwo!43980 Regex!21734)) (EmptyExpr!21734) (Star!21734 (reg!22063 Regex!21734)) (EmptyLang!21734) (Union!21734 (regOne!43981 Regex!21734) (regTwo!43981 Regex!21734)) )
))
(declare-fun r!13107 () Regex!21734)

(assert (=> b!8033918 (= res!3176798 (and (not (is-EmptyExpr!21734 r!13107)) (not (is-EmptyLang!21734 r!13107)) (not (is-ElementMatch!21734 r!13107)) (is-Union!21734 r!13107)))))

(declare-fun b!8033919 () Bool)

(declare-fun e!4732668 () Bool)

(declare-fun tp!2405075 () Bool)

(declare-fun tp!2405078 () Bool)

(assert (=> b!8033919 (= e!4732668 (and tp!2405075 tp!2405078))))

(declare-fun b!8033920 () Bool)

(declare-fun tp!2405076 () Bool)

(declare-fun tp!2405077 () Bool)

(assert (=> b!8033920 (= e!4732668 (and tp!2405076 tp!2405077))))

(declare-fun b!8033921 () Bool)

(declare-fun tp!2405074 () Bool)

(assert (=> b!8033921 (= e!4732668 tp!2405074)))

(declare-fun b!8033922 () Bool)

(declare-fun RegexPrimitiveSize!152 (Regex!21734) Int)

(assert (=> b!8033922 (= e!4732669 (>= (RegexPrimitiveSize!152 (regOne!43981 r!13107)) (RegexPrimitiveSize!152 r!13107)))))

(declare-fun b!8033923 () Bool)

(declare-fun tp_is_empty!54463 () Bool)

(assert (=> b!8033923 (= e!4732668 tp_is_empty!54463)))

(declare-fun res!3176799 () Bool)

(assert (=> start!756718 (=> (not res!3176799) (not e!4732669))))

(declare-fun validRegex!12030 (Regex!21734) Bool)

(assert (=> start!756718 (= res!3176799 (validRegex!12030 r!13107))))

(assert (=> start!756718 e!4732669))

(assert (=> start!756718 e!4732668))

(assert (= (and start!756718 res!3176799) b!8033918))

(assert (= (and b!8033918 res!3176798) b!8033922))

(assert (= (and start!756718 (is-ElementMatch!21734 r!13107)) b!8033923))

(assert (= (and start!756718 (is-Concat!30737 r!13107)) b!8033920))

(assert (= (and start!756718 (is-Star!21734 r!13107)) b!8033921))

(assert (= (and start!756718 (is-Union!21734 r!13107)) b!8033919))

(declare-fun m!8392814 () Bool)

(assert (=> b!8033922 m!8392814))

(declare-fun m!8392816 () Bool)

(assert (=> b!8033922 m!8392816))

(declare-fun m!8392818 () Bool)

(assert (=> start!756718 m!8392818))

(push 1)

(assert (not b!8033919))

(assert (not b!8033920))

(assert (not b!8033922))

(assert tp_is_empty!54463)

(assert (not b!8033921))

(assert (not start!756718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8033960 () Bool)

(declare-fun e!4732693 () Bool)

(declare-fun call!745365 () Bool)

(assert (=> b!8033960 (= e!4732693 call!745365)))

(declare-fun b!8033961 () Bool)

(declare-fun res!3176819 () Bool)

(declare-fun e!4732691 () Bool)

(assert (=> b!8033961 (=> (not res!3176819) (not e!4732691))))

(declare-fun call!745366 () Bool)

(assert (=> b!8033961 (= res!3176819 call!745366)))

(declare-fun e!4732692 () Bool)

(assert (=> b!8033961 (= e!4732692 e!4732691)))

(declare-fun b!8033962 () Bool)

(declare-fun e!4732696 () Bool)

(declare-fun e!4732695 () Bool)

(assert (=> b!8033962 (= e!4732696 e!4732695)))

(declare-fun c!1473780 () Bool)

(assert (=> b!8033962 (= c!1473780 (is-Star!21734 r!13107))))

(declare-fun b!8033963 () Bool)

(declare-fun res!3176816 () Bool)

(declare-fun e!4732694 () Bool)

(assert (=> b!8033963 (=> res!3176816 e!4732694)))

(assert (=> b!8033963 (= res!3176816 (not (is-Concat!30737 r!13107)))))

(assert (=> b!8033963 (= e!4732692 e!4732694)))

(declare-fun bm!745360 () Bool)

(assert (=> bm!745360 (= call!745366 call!745365)))

(declare-fun bm!745361 () Bool)

(declare-fun call!745367 () Bool)

(declare-fun c!1473779 () Bool)

(assert (=> bm!745361 (= call!745367 (validRegex!12030 (ite c!1473779 (regTwo!43981 r!13107) (regTwo!43980 r!13107))))))

(declare-fun b!8033964 () Bool)

(declare-fun e!4732690 () Bool)

(assert (=> b!8033964 (= e!4732694 e!4732690)))

(declare-fun res!3176817 () Bool)

(assert (=> b!8033964 (=> (not res!3176817) (not e!4732690))))

(assert (=> b!8033964 (= res!3176817 call!745366)))

(declare-fun d!2394852 () Bool)

(declare-fun res!3176818 () Bool)

(assert (=> d!2394852 (=> res!3176818 e!4732696)))

(assert (=> d!2394852 (= res!3176818 (is-ElementMatch!21734 r!13107))))

(assert (=> d!2394852 (= (validRegex!12030 r!13107) e!4732696)))

(declare-fun b!8033965 () Bool)

(assert (=> b!8033965 (= e!4732695 e!4732693)))

(declare-fun res!3176820 () Bool)

(declare-fun nullable!9759 (Regex!21734) Bool)

(assert (=> b!8033965 (= res!3176820 (not (nullable!9759 (reg!22063 r!13107))))))

(assert (=> b!8033965 (=> (not res!3176820) (not e!4732693))))

(declare-fun b!8033966 () Bool)

(assert (=> b!8033966 (= e!4732695 e!4732692)))

(assert (=> b!8033966 (= c!1473779 (is-Union!21734 r!13107))))

(declare-fun b!8033967 () Bool)

(assert (=> b!8033967 (= e!4732690 call!745367)))

(declare-fun b!8033968 () Bool)

(assert (=> b!8033968 (= e!4732691 call!745367)))

(declare-fun bm!745362 () Bool)

(assert (=> bm!745362 (= call!745365 (validRegex!12030 (ite c!1473780 (reg!22063 r!13107) (ite c!1473779 (regOne!43981 r!13107) (regOne!43980 r!13107)))))))

(assert (= (and d!2394852 (not res!3176818)) b!8033962))

(assert (= (and b!8033962 c!1473780) b!8033965))

(assert (= (and b!8033962 (not c!1473780)) b!8033966))

(assert (= (and b!8033965 res!3176820) b!8033960))

(assert (= (and b!8033966 c!1473779) b!8033961))

(assert (= (and b!8033966 (not c!1473779)) b!8033963))

(assert (= (and b!8033961 res!3176819) b!8033968))

(assert (= (and b!8033963 (not res!3176816)) b!8033964))

(assert (= (and b!8033964 res!3176817) b!8033967))

(assert (= (or b!8033968 b!8033967) bm!745361))

(assert (= (or b!8033961 b!8033964) bm!745360))

(assert (= (or b!8033960 bm!745360) bm!745362))

(declare-fun m!8392826 () Bool)

(assert (=> bm!745361 m!8392826))

(declare-fun m!8392828 () Bool)

(assert (=> b!8033965 m!8392828))

(declare-fun m!8392830 () Bool)

(assert (=> bm!745362 m!8392830))

(assert (=> start!756718 d!2394852))

(declare-fun b!8034007 () Bool)

(declare-fun e!4732723 () Int)

(declare-fun call!745380 () Int)

(assert (=> b!8034007 (= e!4732723 (+ 1 call!745380))))

(declare-fun b!8034008 () Bool)

(declare-fun c!1473795 () Bool)

(assert (=> b!8034008 (= c!1473795 (is-EmptyLang!21734 (regOne!43981 r!13107)))))

(declare-fun e!4732721 () Int)

(assert (=> b!8034008 (= e!4732723 e!4732721)))

(declare-fun b!8034009 () Bool)

(declare-fun e!4732724 () Int)

(assert (=> b!8034009 (= e!4732724 e!4732723)))

(declare-fun c!1473798 () Bool)

(assert (=> b!8034009 (= c!1473798 (is-Star!21734 (regOne!43981 r!13107)))))

(declare-fun b!8034010 () Bool)

(declare-fun e!4732722 () Int)

(declare-fun call!745378 () Int)

(declare-fun call!745379 () Int)

(assert (=> b!8034010 (= e!4732722 (+ 1 call!745378 call!745379))))

(declare-fun bm!745373 () Bool)

(declare-fun c!1473799 () Bool)

(assert (=> bm!745373 (= call!745379 (RegexPrimitiveSize!152 (ite c!1473799 (regTwo!43980 (regOne!43981 r!13107)) (regTwo!43981 (regOne!43981 r!13107)))))))

(declare-fun b!8034011 () Bool)

(declare-fun c!1473796 () Bool)

(assert (=> b!8034011 (= c!1473796 (is-EmptyExpr!21734 (regOne!43981 r!13107)))))

(assert (=> b!8034011 (= e!4732722 e!4732724)))

(declare-fun b!8034012 () Bool)

(assert (=> b!8034012 (= e!4732721 (+ 1 call!745380 call!745379))))

(declare-fun b!8034013 () Bool)

(assert (=> b!8034013 (= e!4732724 0)))

(declare-fun b!8034014 () Bool)

(assert (=> b!8034014 (= e!4732721 0)))

(declare-fun b!8034015 () Bool)

(declare-fun e!4732725 () Int)

(assert (=> b!8034015 (= e!4732725 1)))

(declare-fun d!2394856 () Bool)

(declare-fun lt!2722013 () Int)

(assert (=> d!2394856 (>= lt!2722013 0)))

(assert (=> d!2394856 (= lt!2722013 e!4732725)))

(declare-fun c!1473797 () Bool)

(assert (=> d!2394856 (= c!1473797 (is-ElementMatch!21734 (regOne!43981 r!13107)))))

(assert (=> d!2394856 (= (RegexPrimitiveSize!152 (regOne!43981 r!13107)) lt!2722013)))

(declare-fun bm!745374 () Bool)

(assert (=> bm!745374 (= call!745378 (RegexPrimitiveSize!152 (ite c!1473799 (regOne!43980 (regOne!43981 r!13107)) (ite c!1473798 (reg!22063 (regOne!43981 r!13107)) (regOne!43981 (regOne!43981 r!13107))))))))

(declare-fun b!8034016 () Bool)

(assert (=> b!8034016 (= e!4732725 e!4732722)))

(assert (=> b!8034016 (= c!1473799 (is-Concat!30737 (regOne!43981 r!13107)))))

(declare-fun bm!745375 () Bool)

(assert (=> bm!745375 (= call!745380 call!745378)))

(assert (= (and d!2394856 c!1473797) b!8034015))

(assert (= (and d!2394856 (not c!1473797)) b!8034016))

(assert (= (and b!8034016 c!1473799) b!8034010))

(assert (= (and b!8034016 (not c!1473799)) b!8034011))

(assert (= (and b!8034011 c!1473796) b!8034013))

(assert (= (and b!8034011 (not c!1473796)) b!8034009))

(assert (= (and b!8034009 c!1473798) b!8034007))

(assert (= (and b!8034009 (not c!1473798)) b!8034008))

(assert (= (and b!8034008 c!1473795) b!8034014))

(assert (= (and b!8034008 (not c!1473795)) b!8034012))

(assert (= (or b!8034007 b!8034012) bm!745375))

(assert (= (or b!8034010 b!8034012) bm!745373))

(assert (= (or b!8034010 bm!745375) bm!745374))

(declare-fun m!8392832 () Bool)

(assert (=> bm!745373 m!8392832))

(declare-fun m!8392834 () Bool)

(assert (=> bm!745374 m!8392834))

(assert (=> b!8033922 d!2394856))

(declare-fun b!8034017 () Bool)

(declare-fun e!4732728 () Int)

(declare-fun call!745385 () Int)

(assert (=> b!8034017 (= e!4732728 (+ 1 call!745385))))

(declare-fun b!8034018 () Bool)

(declare-fun c!1473800 () Bool)

(assert (=> b!8034018 (= c!1473800 (is-EmptyLang!21734 r!13107))))

(declare-fun e!4732726 () Int)

(assert (=> b!8034018 (= e!4732728 e!4732726)))

(declare-fun b!8034019 () Bool)

(declare-fun e!4732729 () Int)

(assert (=> b!8034019 (= e!4732729 e!4732728)))

(declare-fun c!1473803 () Bool)

(assert (=> b!8034019 (= c!1473803 (is-Star!21734 r!13107))))

(declare-fun b!8034020 () Bool)

(declare-fun e!4732727 () Int)

(declare-fun call!745383 () Int)

(declare-fun call!745384 () Int)

(assert (=> b!8034020 (= e!4732727 (+ 1 call!745383 call!745384))))

(declare-fun bm!745378 () Bool)

(declare-fun c!1473804 () Bool)

(assert (=> bm!745378 (= call!745384 (RegexPrimitiveSize!152 (ite c!1473804 (regTwo!43980 r!13107) (regTwo!43981 r!13107))))))

(declare-fun b!8034021 () Bool)

(declare-fun c!1473801 () Bool)

(assert (=> b!8034021 (= c!1473801 (is-EmptyExpr!21734 r!13107))))

(assert (=> b!8034021 (= e!4732727 e!4732729)))

(declare-fun b!8034022 () Bool)

(assert (=> b!8034022 (= e!4732726 (+ 1 call!745385 call!745384))))

(declare-fun b!8034023 () Bool)

(assert (=> b!8034023 (= e!4732729 0)))

(declare-fun b!8034024 () Bool)

(assert (=> b!8034024 (= e!4732726 0)))

(declare-fun b!8034025 () Bool)

(declare-fun e!4732730 () Int)

(assert (=> b!8034025 (= e!4732730 1)))

(declare-fun d!2394858 () Bool)

(declare-fun lt!2722014 () Int)

(assert (=> d!2394858 (>= lt!2722014 0)))

(assert (=> d!2394858 (= lt!2722014 e!4732730)))

(declare-fun c!1473802 () Bool)

(assert (=> d!2394858 (= c!1473802 (is-ElementMatch!21734 r!13107))))

(assert (=> d!2394858 (= (RegexPrimitiveSize!152 r!13107) lt!2722014)))

(declare-fun bm!745379 () Bool)

(assert (=> bm!745379 (= call!745383 (RegexPrimitiveSize!152 (ite c!1473804 (regOne!43980 r!13107) (ite c!1473803 (reg!22063 r!13107) (regOne!43981 r!13107)))))))

(declare-fun b!8034026 () Bool)

(assert (=> b!8034026 (= e!4732730 e!4732727)))

(assert (=> b!8034026 (= c!1473804 (is-Concat!30737 r!13107))))

(declare-fun bm!745380 () Bool)

(assert (=> bm!745380 (= call!745385 call!745383)))

(assert (= (and d!2394858 c!1473802) b!8034025))

(assert (= (and d!2394858 (not c!1473802)) b!8034026))

(assert (= (and b!8034026 c!1473804) b!8034020))

(assert (= (and b!8034026 (not c!1473804)) b!8034021))

(assert (= (and b!8034021 c!1473801) b!8034023))

(assert (= (and b!8034021 (not c!1473801)) b!8034019))

(assert (= (and b!8034019 c!1473803) b!8034017))

(assert (= (and b!8034019 (not c!1473803)) b!8034018))

(assert (= (and b!8034018 c!1473800) b!8034024))

(assert (= (and b!8034018 (not c!1473800)) b!8034022))

(assert (= (or b!8034017 b!8034022) bm!745380))

(assert (= (or b!8034020 b!8034022) bm!745378))

(assert (= (or b!8034020 bm!745380) bm!745379))

(declare-fun m!8392836 () Bool)

(assert (=> bm!745378 m!8392836))

(declare-fun m!8392838 () Bool)

(assert (=> bm!745379 m!8392838))

(assert (=> b!8033922 d!2394858))

(declare-fun e!4732733 () Bool)

(assert (=> b!8033919 (= tp!2405075 e!4732733)))

(declare-fun b!8034037 () Bool)

(assert (=> b!8034037 (= e!4732733 tp_is_empty!54463)))

(declare-fun b!8034040 () Bool)

(declare-fun tp!2405105 () Bool)

(declare-fun tp!2405104 () Bool)

(assert (=> b!8034040 (= e!4732733 (and tp!2405105 tp!2405104))))

(declare-fun b!8034038 () Bool)

(declare-fun tp!2405106 () Bool)

(declare-fun tp!2405107 () Bool)

(assert (=> b!8034038 (= e!4732733 (and tp!2405106 tp!2405107))))

(declare-fun b!8034039 () Bool)

(declare-fun tp!2405108 () Bool)

(assert (=> b!8034039 (= e!4732733 tp!2405108)))

(assert (= (and b!8033919 (is-ElementMatch!21734 (regOne!43981 r!13107))) b!8034037))

(assert (= (and b!8033919 (is-Concat!30737 (regOne!43981 r!13107))) b!8034038))

(assert (= (and b!8033919 (is-Star!21734 (regOne!43981 r!13107))) b!8034039))

(assert (= (and b!8033919 (is-Union!21734 (regOne!43981 r!13107))) b!8034040))

(declare-fun e!4732734 () Bool)

(assert (=> b!8033919 (= tp!2405078 e!4732734)))

(declare-fun b!8034041 () Bool)

(assert (=> b!8034041 (= e!4732734 tp_is_empty!54463)))

(declare-fun b!8034044 () Bool)

(declare-fun tp!2405110 () Bool)

(declare-fun tp!2405109 () Bool)

(assert (=> b!8034044 (= e!4732734 (and tp!2405110 tp!2405109))))

(declare-fun b!8034042 () Bool)

(declare-fun tp!2405111 () Bool)

(declare-fun tp!2405112 () Bool)

(assert (=> b!8034042 (= e!4732734 (and tp!2405111 tp!2405112))))

(declare-fun b!8034043 () Bool)

(declare-fun tp!2405113 () Bool)

(assert (=> b!8034043 (= e!4732734 tp!2405113)))

(assert (= (and b!8033919 (is-ElementMatch!21734 (regTwo!43981 r!13107))) b!8034041))

(assert (= (and b!8033919 (is-Concat!30737 (regTwo!43981 r!13107))) b!8034042))

(assert (= (and b!8033919 (is-Star!21734 (regTwo!43981 r!13107))) b!8034043))

(assert (= (and b!8033919 (is-Union!21734 (regTwo!43981 r!13107))) b!8034044))

(declare-fun e!4732735 () Bool)

(assert (=> b!8033920 (= tp!2405076 e!4732735)))

(declare-fun b!8034045 () Bool)

(assert (=> b!8034045 (= e!4732735 tp_is_empty!54463)))

(declare-fun b!8034048 () Bool)

(declare-fun tp!2405115 () Bool)

(declare-fun tp!2405114 () Bool)

(assert (=> b!8034048 (= e!4732735 (and tp!2405115 tp!2405114))))

(declare-fun b!8034046 () Bool)

(declare-fun tp!2405116 () Bool)

(declare-fun tp!2405117 () Bool)

(assert (=> b!8034046 (= e!4732735 (and tp!2405116 tp!2405117))))

(declare-fun b!8034047 () Bool)

(declare-fun tp!2405118 () Bool)

(assert (=> b!8034047 (= e!4732735 tp!2405118)))

(assert (= (and b!8033920 (is-ElementMatch!21734 (regOne!43980 r!13107))) b!8034045))

(assert (= (and b!8033920 (is-Concat!30737 (regOne!43980 r!13107))) b!8034046))

(assert (= (and b!8033920 (is-Star!21734 (regOne!43980 r!13107))) b!8034047))

(assert (= (and b!8033920 (is-Union!21734 (regOne!43980 r!13107))) b!8034048))

(declare-fun e!4732736 () Bool)

(assert (=> b!8033920 (= tp!2405077 e!4732736)))

(declare-fun b!8034049 () Bool)

(assert (=> b!8034049 (= e!4732736 tp_is_empty!54463)))

(declare-fun b!8034052 () Bool)

(declare-fun tp!2405120 () Bool)

(declare-fun tp!2405119 () Bool)

(assert (=> b!8034052 (= e!4732736 (and tp!2405120 tp!2405119))))

(declare-fun b!8034050 () Bool)

(declare-fun tp!2405121 () Bool)

(declare-fun tp!2405122 () Bool)

(assert (=> b!8034050 (= e!4732736 (and tp!2405121 tp!2405122))))

(declare-fun b!8034051 () Bool)

(declare-fun tp!2405123 () Bool)

(assert (=> b!8034051 (= e!4732736 tp!2405123)))

(assert (= (and b!8033920 (is-ElementMatch!21734 (regTwo!43980 r!13107))) b!8034049))

(assert (= (and b!8033920 (is-Concat!30737 (regTwo!43980 r!13107))) b!8034050))

(assert (= (and b!8033920 (is-Star!21734 (regTwo!43980 r!13107))) b!8034051))

(assert (= (and b!8033920 (is-Union!21734 (regTwo!43980 r!13107))) b!8034052))

(declare-fun e!4732737 () Bool)

(assert (=> b!8033921 (= tp!2405074 e!4732737)))

(declare-fun b!8034053 () Bool)

(assert (=> b!8034053 (= e!4732737 tp_is_empty!54463)))

(declare-fun b!8034056 () Bool)

(declare-fun tp!2405125 () Bool)

(declare-fun tp!2405124 () Bool)

(assert (=> b!8034056 (= e!4732737 (and tp!2405125 tp!2405124))))

(declare-fun b!8034054 () Bool)

(declare-fun tp!2405126 () Bool)

(declare-fun tp!2405127 () Bool)

(assert (=> b!8034054 (= e!4732737 (and tp!2405126 tp!2405127))))

(declare-fun b!8034055 () Bool)

(declare-fun tp!2405128 () Bool)

(assert (=> b!8034055 (= e!4732737 tp!2405128)))

(assert (= (and b!8033921 (is-ElementMatch!21734 (reg!22063 r!13107))) b!8034053))

(assert (= (and b!8033921 (is-Concat!30737 (reg!22063 r!13107))) b!8034054))

(assert (= (and b!8033921 (is-Star!21734 (reg!22063 r!13107))) b!8034055))

(assert (= (and b!8033921 (is-Union!21734 (reg!22063 r!13107))) b!8034056))

(push 1)

(assert (not b!8034050))

(assert (not b!8034042))

(assert (not bm!745373))

(assert (not b!8034051))

(assert (not b!8034039))

(assert (not b!8034047))

(assert (not b!8034046))

(assert (not b!8034056))

(assert (not b!8034044))

(assert (not bm!745378))

(assert (not b!8034048))

(assert (not b!8033965))

(assert (not bm!745379))

(assert (not b!8034038))

(assert (not b!8034054))

(assert (not bm!745361))

(assert (not b!8034043))

(assert (not b!8034055))

(assert (not bm!745374))

(assert (not b!8034040))

(assert (not b!8034052))

(assert tp_is_empty!54463)

(assert (not bm!745362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8034136 () Bool)

(declare-fun e!4732774 () Int)

(declare-fun call!745403 () Int)

(assert (=> b!8034136 (= e!4732774 (+ 1 call!745403))))

(declare-fun b!8034137 () Bool)

(declare-fun c!1473827 () Bool)

(assert (=> b!8034137 (= c!1473827 (is-EmptyLang!21734 (ite c!1473799 (regTwo!43980 (regOne!43981 r!13107)) (regTwo!43981 (regOne!43981 r!13107)))))))

(declare-fun e!4732772 () Int)

(assert (=> b!8034137 (= e!4732774 e!4732772)))

(declare-fun b!8034138 () Bool)

(declare-fun e!4732775 () Int)

(assert (=> b!8034138 (= e!4732775 e!4732774)))

(declare-fun c!1473830 () Bool)

(assert (=> b!8034138 (= c!1473830 (is-Star!21734 (ite c!1473799 (regTwo!43980 (regOne!43981 r!13107)) (regTwo!43981 (regOne!43981 r!13107)))))))

(declare-fun b!8034139 () Bool)

(declare-fun e!4732773 () Int)

(declare-fun call!745401 () Int)

(declare-fun call!745402 () Int)

(assert (=> b!8034139 (= e!4732773 (+ 1 call!745401 call!745402))))

(declare-fun c!1473831 () Bool)

(declare-fun bm!745396 () Bool)

(assert (=> bm!745396 (= call!745402 (RegexPrimitiveSize!152 (ite c!1473831 (regTwo!43980 (ite c!1473799 (regTwo!43980 (regOne!43981 r!13107)) (regTwo!43981 (regOne!43981 r!13107)))) (regTwo!43981 (ite c!1473799 (regTwo!43980 (regOne!43981 r!13107)) (regTwo!43981 (regOne!43981 r!13107)))))))))

(declare-fun b!8034140 () Bool)

(declare-fun c!1473828 () Bool)

(assert (=> b!8034140 (= c!1473828 (is-EmptyExpr!21734 (ite c!1473799 (regTwo!43980 (regOne!43981 r!13107)) (regTwo!43981 (regOne!43981 r!13107)))))))

(assert (=> b!8034140 (= e!4732773 e!4732775)))

(declare-fun b!8034141 () Bool)

(assert (=> b!8034141 (= e!4732772 (+ 1 call!745403 call!745402))))

(declare-fun b!8034142 () Bool)

(assert (=> b!8034142 (= e!4732775 0)))

(declare-fun b!8034143 () Bool)

(assert (=> b!8034143 (= e!4732772 0)))

(declare-fun b!8034144 () Bool)

(declare-fun e!4732776 () Int)

(assert (=> b!8034144 (= e!4732776 1)))

(declare-fun d!2394864 () Bool)

(declare-fun lt!2722019 () Int)

(assert (=> d!2394864 (>= lt!2722019 0)))

(assert (=> d!2394864 (= lt!2722019 e!4732776)))

(declare-fun c!1473829 () Bool)

(assert (=> d!2394864 (= c!1473829 (is-ElementMatch!21734 (ite c!1473799 (regTwo!43980 (regOne!43981 r!13107)) (regTwo!43981 (regOne!43981 r!13107)))))))

(assert (=> d!2394864 (= (RegexPrimitiveSize!152 (ite c!1473799 (regTwo!43980 (regOne!43981 r!13107)) (regTwo!43981 (regOne!43981 r!13107)))) lt!2722019)))

(declare-fun bm!745397 () Bool)

(assert (=> bm!745397 (= call!745401 (RegexPrimitiveSize!152 (ite c!1473831 (regOne!43980 (ite c!1473799 (regTwo!43980 (regOne!43981 r!13107)) (regTwo!43981 (regOne!43981 r!13107)))) (ite c!1473830 (reg!22063 (ite c!1473799 (regTwo!43980 (regOne!43981 r!13107)) (regTwo!43981 (regOne!43981 r!13107)))) (regOne!43981 (ite c!1473799 (regTwo!43980 (regOne!43981 r!13107)) (regTwo!43981 (regOne!43981 r!13107))))))))))

(declare-fun b!8034145 () Bool)

(assert (=> b!8034145 (= e!4732776 e!4732773)))

(assert (=> b!8034145 (= c!1473831 (is-Concat!30737 (ite c!1473799 (regTwo!43980 (regOne!43981 r!13107)) (regTwo!43981 (regOne!43981 r!13107)))))))

(declare-fun bm!745398 () Bool)

(assert (=> bm!745398 (= call!745403 call!745401)))

(assert (= (and d!2394864 c!1473829) b!8034144))

(assert (= (and d!2394864 (not c!1473829)) b!8034145))

(assert (= (and b!8034145 c!1473831) b!8034139))

(assert (= (and b!8034145 (not c!1473831)) b!8034140))

(assert (= (and b!8034140 c!1473828) b!8034142))

(assert (= (and b!8034140 (not c!1473828)) b!8034138))

(assert (= (and b!8034138 c!1473830) b!8034136))

(assert (= (and b!8034138 (not c!1473830)) b!8034137))

(assert (= (and b!8034137 c!1473827) b!8034143))

(assert (= (and b!8034137 (not c!1473827)) b!8034141))

(assert (= (or b!8034136 b!8034141) bm!745398))

(assert (= (or b!8034139 b!8034141) bm!745396))

(assert (= (or b!8034139 bm!745398) bm!745397))

(declare-fun m!8392854 () Bool)

(assert (=> bm!745396 m!8392854))

(declare-fun m!8392856 () Bool)

(assert (=> bm!745397 m!8392856))

(assert (=> bm!745373 d!2394864))

(declare-fun b!8034146 () Bool)

(declare-fun e!4732779 () Int)

(declare-fun call!745406 () Int)

(assert (=> b!8034146 (= e!4732779 (+ 1 call!745406))))

(declare-fun c!1473832 () Bool)

(declare-fun b!8034147 () Bool)

(assert (=> b!8034147 (= c!1473832 (is-EmptyLang!21734 (ite c!1473804 (regOne!43980 r!13107) (ite c!1473803 (reg!22063 r!13107) (regOne!43981 r!13107)))))))

(declare-fun e!4732777 () Int)

(assert (=> b!8034147 (= e!4732779 e!4732777)))

(declare-fun b!8034148 () Bool)

(declare-fun e!4732780 () Int)

(assert (=> b!8034148 (= e!4732780 e!4732779)))

(declare-fun c!1473835 () Bool)

(assert (=> b!8034148 (= c!1473835 (is-Star!21734 (ite c!1473804 (regOne!43980 r!13107) (ite c!1473803 (reg!22063 r!13107) (regOne!43981 r!13107)))))))

(declare-fun b!8034149 () Bool)

(declare-fun e!4732778 () Int)

(declare-fun call!745404 () Int)

(declare-fun call!745405 () Int)

(assert (=> b!8034149 (= e!4732778 (+ 1 call!745404 call!745405))))

(declare-fun c!1473836 () Bool)

(declare-fun bm!745399 () Bool)

(assert (=> bm!745399 (= call!745405 (RegexPrimitiveSize!152 (ite c!1473836 (regTwo!43980 (ite c!1473804 (regOne!43980 r!13107) (ite c!1473803 (reg!22063 r!13107) (regOne!43981 r!13107)))) (regTwo!43981 (ite c!1473804 (regOne!43980 r!13107) (ite c!1473803 (reg!22063 r!13107) (regOne!43981 r!13107)))))))))

(declare-fun b!8034150 () Bool)

(declare-fun c!1473833 () Bool)

(assert (=> b!8034150 (= c!1473833 (is-EmptyExpr!21734 (ite c!1473804 (regOne!43980 r!13107) (ite c!1473803 (reg!22063 r!13107) (regOne!43981 r!13107)))))))

(assert (=> b!8034150 (= e!4732778 e!4732780)))

(declare-fun b!8034151 () Bool)

(assert (=> b!8034151 (= e!4732777 (+ 1 call!745406 call!745405))))

(declare-fun b!8034152 () Bool)

(assert (=> b!8034152 (= e!4732780 0)))

(declare-fun b!8034153 () Bool)

(assert (=> b!8034153 (= e!4732777 0)))

(declare-fun b!8034154 () Bool)

(declare-fun e!4732781 () Int)

(assert (=> b!8034154 (= e!4732781 1)))

(declare-fun d!2394866 () Bool)

(declare-fun lt!2722020 () Int)

(assert (=> d!2394866 (>= lt!2722020 0)))

(assert (=> d!2394866 (= lt!2722020 e!4732781)))

(declare-fun c!1473834 () Bool)

(assert (=> d!2394866 (= c!1473834 (is-ElementMatch!21734 (ite c!1473804 (regOne!43980 r!13107) (ite c!1473803 (reg!22063 r!13107) (regOne!43981 r!13107)))))))

(assert (=> d!2394866 (= (RegexPrimitiveSize!152 (ite c!1473804 (regOne!43980 r!13107) (ite c!1473803 (reg!22063 r!13107) (regOne!43981 r!13107)))) lt!2722020)))

(declare-fun bm!745400 () Bool)

(assert (=> bm!745400 (= call!745404 (RegexPrimitiveSize!152 (ite c!1473836 (regOne!43980 (ite c!1473804 (regOne!43980 r!13107) (ite c!1473803 (reg!22063 r!13107) (regOne!43981 r!13107)))) (ite c!1473835 (reg!22063 (ite c!1473804 (regOne!43980 r!13107) (ite c!1473803 (reg!22063 r!13107) (regOne!43981 r!13107)))) (regOne!43981 (ite c!1473804 (regOne!43980 r!13107) (ite c!1473803 (reg!22063 r!13107) (regOne!43981 r!13107))))))))))

(declare-fun b!8034155 () Bool)

(assert (=> b!8034155 (= e!4732781 e!4732778)))

(assert (=> b!8034155 (= c!1473836 (is-Concat!30737 (ite c!1473804 (regOne!43980 r!13107) (ite c!1473803 (reg!22063 r!13107) (regOne!43981 r!13107)))))))

(declare-fun bm!745401 () Bool)

(assert (=> bm!745401 (= call!745406 call!745404)))

(assert (= (and d!2394866 c!1473834) b!8034154))

(assert (= (and d!2394866 (not c!1473834)) b!8034155))

(assert (= (and b!8034155 c!1473836) b!8034149))

(assert (= (and b!8034155 (not c!1473836)) b!8034150))

(assert (= (and b!8034150 c!1473833) b!8034152))

(assert (= (and b!8034150 (not c!1473833)) b!8034148))

(assert (= (and b!8034148 c!1473835) b!8034146))

(assert (= (and b!8034148 (not c!1473835)) b!8034147))

(assert (= (and b!8034147 c!1473832) b!8034153))

(assert (= (and b!8034147 (not c!1473832)) b!8034151))

(assert (= (or b!8034146 b!8034151) bm!745401))

(assert (= (or b!8034149 b!8034151) bm!745399))

(assert (= (or b!8034149 bm!745401) bm!745400))

(declare-fun m!8392858 () Bool)

(assert (=> bm!745399 m!8392858))

(declare-fun m!8392860 () Bool)

(assert (=> bm!745400 m!8392860))

(assert (=> bm!745379 d!2394866))

(declare-fun b!8034156 () Bool)

(declare-fun e!4732784 () Int)

(declare-fun call!745409 () Int)

(assert (=> b!8034156 (= e!4732784 (+ 1 call!745409))))

(declare-fun b!8034157 () Bool)

(declare-fun c!1473837 () Bool)

(assert (=> b!8034157 (= c!1473837 (is-EmptyLang!21734 (ite c!1473799 (regOne!43980 (regOne!43981 r!13107)) (ite c!1473798 (reg!22063 (regOne!43981 r!13107)) (regOne!43981 (regOne!43981 r!13107))))))))

(declare-fun e!4732782 () Int)

(assert (=> b!8034157 (= e!4732784 e!4732782)))

(declare-fun b!8034158 () Bool)

(declare-fun e!4732785 () Int)

(assert (=> b!8034158 (= e!4732785 e!4732784)))

(declare-fun c!1473840 () Bool)

(assert (=> b!8034158 (= c!1473840 (is-Star!21734 (ite c!1473799 (regOne!43980 (regOne!43981 r!13107)) (ite c!1473798 (reg!22063 (regOne!43981 r!13107)) (regOne!43981 (regOne!43981 r!13107))))))))

(declare-fun b!8034159 () Bool)

(declare-fun e!4732783 () Int)

(declare-fun call!745407 () Int)

(declare-fun call!745408 () Int)

(assert (=> b!8034159 (= e!4732783 (+ 1 call!745407 call!745408))))

(declare-fun bm!745402 () Bool)

(declare-fun c!1473841 () Bool)

(assert (=> bm!745402 (= call!745408 (RegexPrimitiveSize!152 (ite c!1473841 (regTwo!43980 (ite c!1473799 (regOne!43980 (regOne!43981 r!13107)) (ite c!1473798 (reg!22063 (regOne!43981 r!13107)) (regOne!43981 (regOne!43981 r!13107))))) (regTwo!43981 (ite c!1473799 (regOne!43980 (regOne!43981 r!13107)) (ite c!1473798 (reg!22063 (regOne!43981 r!13107)) (regOne!43981 (regOne!43981 r!13107))))))))))

(declare-fun b!8034160 () Bool)

(declare-fun c!1473838 () Bool)

(assert (=> b!8034160 (= c!1473838 (is-EmptyExpr!21734 (ite c!1473799 (regOne!43980 (regOne!43981 r!13107)) (ite c!1473798 (reg!22063 (regOne!43981 r!13107)) (regOne!43981 (regOne!43981 r!13107))))))))

(assert (=> b!8034160 (= e!4732783 e!4732785)))

(declare-fun b!8034161 () Bool)

(assert (=> b!8034161 (= e!4732782 (+ 1 call!745409 call!745408))))

(declare-fun b!8034162 () Bool)

(assert (=> b!8034162 (= e!4732785 0)))

(declare-fun b!8034163 () Bool)

(assert (=> b!8034163 (= e!4732782 0)))

(declare-fun b!8034164 () Bool)

(declare-fun e!4732786 () Int)

(assert (=> b!8034164 (= e!4732786 1)))

(declare-fun d!2394868 () Bool)

(declare-fun lt!2722021 () Int)

(assert (=> d!2394868 (>= lt!2722021 0)))

(assert (=> d!2394868 (= lt!2722021 e!4732786)))

(declare-fun c!1473839 () Bool)

(assert (=> d!2394868 (= c!1473839 (is-ElementMatch!21734 (ite c!1473799 (regOne!43980 (regOne!43981 r!13107)) (ite c!1473798 (reg!22063 (regOne!43981 r!13107)) (regOne!43981 (regOne!43981 r!13107))))))))

(assert (=> d!2394868 (= (RegexPrimitiveSize!152 (ite c!1473799 (regOne!43980 (regOne!43981 r!13107)) (ite c!1473798 (reg!22063 (regOne!43981 r!13107)) (regOne!43981 (regOne!43981 r!13107))))) lt!2722021)))

(declare-fun bm!745403 () Bool)

(assert (=> bm!745403 (= call!745407 (RegexPrimitiveSize!152 (ite c!1473841 (regOne!43980 (ite c!1473799 (regOne!43980 (regOne!43981 r!13107)) (ite c!1473798 (reg!22063 (regOne!43981 r!13107)) (regOne!43981 (regOne!43981 r!13107))))) (ite c!1473840 (reg!22063 (ite c!1473799 (regOne!43980 (regOne!43981 r!13107)) (ite c!1473798 (reg!22063 (regOne!43981 r!13107)) (regOne!43981 (regOne!43981 r!13107))))) (regOne!43981 (ite c!1473799 (regOne!43980 (regOne!43981 r!13107)) (ite c!1473798 (reg!22063 (regOne!43981 r!13107)) (regOne!43981 (regOne!43981 r!13107)))))))))))

(declare-fun b!8034165 () Bool)

(assert (=> b!8034165 (= e!4732786 e!4732783)))

(assert (=> b!8034165 (= c!1473841 (is-Concat!30737 (ite c!1473799 (regOne!43980 (regOne!43981 r!13107)) (ite c!1473798 (reg!22063 (regOne!43981 r!13107)) (regOne!43981 (regOne!43981 r!13107))))))))

(declare-fun bm!745404 () Bool)

(assert (=> bm!745404 (= call!745409 call!745407)))

(assert (= (and d!2394868 c!1473839) b!8034164))

(assert (= (and d!2394868 (not c!1473839)) b!8034165))

(assert (= (and b!8034165 c!1473841) b!8034159))

(assert (= (and b!8034165 (not c!1473841)) b!8034160))

(assert (= (and b!8034160 c!1473838) b!8034162))

(assert (= (and b!8034160 (not c!1473838)) b!8034158))

(assert (= (and b!8034158 c!1473840) b!8034156))

(assert (= (and b!8034158 (not c!1473840)) b!8034157))

(assert (= (and b!8034157 c!1473837) b!8034163))

(assert (= (and b!8034157 (not c!1473837)) b!8034161))

(assert (= (or b!8034156 b!8034161) bm!745404))

(assert (= (or b!8034159 b!8034161) bm!745402))

(assert (= (or b!8034159 bm!745404) bm!745403))

(declare-fun m!8392862 () Bool)

(assert (=> bm!745402 m!8392862))

(declare-fun m!8392864 () Bool)

(assert (=> bm!745403 m!8392864))

(assert (=> bm!745374 d!2394868))

(declare-fun d!2394870 () Bool)

(declare-fun nullableFct!3859 (Regex!21734) Bool)

(assert (=> d!2394870 (= (nullable!9759 (reg!22063 r!13107)) (nullableFct!3859 (reg!22063 r!13107)))))

(declare-fun bs!1971489 () Bool)

(assert (= bs!1971489 d!2394870))

(declare-fun m!8392866 () Bool)

(assert (=> bs!1971489 m!8392866))

(assert (=> b!8033965 d!2394870))

(declare-fun b!8034166 () Bool)

(declare-fun e!4732789 () Int)

(declare-fun call!745412 () Int)

(assert (=> b!8034166 (= e!4732789 (+ 1 call!745412))))

(declare-fun b!8034167 () Bool)

(declare-fun c!1473842 () Bool)

(assert (=> b!8034167 (= c!1473842 (is-EmptyLang!21734 (ite c!1473804 (regTwo!43980 r!13107) (regTwo!43981 r!13107))))))

(declare-fun e!4732787 () Int)

(assert (=> b!8034167 (= e!4732789 e!4732787)))

(declare-fun b!8034168 () Bool)

(declare-fun e!4732790 () Int)

(assert (=> b!8034168 (= e!4732790 e!4732789)))

(declare-fun c!1473845 () Bool)

(assert (=> b!8034168 (= c!1473845 (is-Star!21734 (ite c!1473804 (regTwo!43980 r!13107) (regTwo!43981 r!13107))))))

(declare-fun b!8034169 () Bool)

(declare-fun e!4732788 () Int)

(declare-fun call!745410 () Int)

(declare-fun call!745411 () Int)

(assert (=> b!8034169 (= e!4732788 (+ 1 call!745410 call!745411))))

(declare-fun bm!745405 () Bool)

(declare-fun c!1473846 () Bool)

(assert (=> bm!745405 (= call!745411 (RegexPrimitiveSize!152 (ite c!1473846 (regTwo!43980 (ite c!1473804 (regTwo!43980 r!13107) (regTwo!43981 r!13107))) (regTwo!43981 (ite c!1473804 (regTwo!43980 r!13107) (regTwo!43981 r!13107))))))))

(declare-fun b!8034170 () Bool)

(declare-fun c!1473843 () Bool)

(assert (=> b!8034170 (= c!1473843 (is-EmptyExpr!21734 (ite c!1473804 (regTwo!43980 r!13107) (regTwo!43981 r!13107))))))

(assert (=> b!8034170 (= e!4732788 e!4732790)))

(declare-fun b!8034171 () Bool)

(assert (=> b!8034171 (= e!4732787 (+ 1 call!745412 call!745411))))

(declare-fun b!8034172 () Bool)

(assert (=> b!8034172 (= e!4732790 0)))

(declare-fun b!8034173 () Bool)

(assert (=> b!8034173 (= e!4732787 0)))

(declare-fun b!8034174 () Bool)

(declare-fun e!4732791 () Int)

(assert (=> b!8034174 (= e!4732791 1)))

(declare-fun d!2394872 () Bool)

(declare-fun lt!2722022 () Int)

(assert (=> d!2394872 (>= lt!2722022 0)))

(assert (=> d!2394872 (= lt!2722022 e!4732791)))

(declare-fun c!1473844 () Bool)

(assert (=> d!2394872 (= c!1473844 (is-ElementMatch!21734 (ite c!1473804 (regTwo!43980 r!13107) (regTwo!43981 r!13107))))))

(assert (=> d!2394872 (= (RegexPrimitiveSize!152 (ite c!1473804 (regTwo!43980 r!13107) (regTwo!43981 r!13107))) lt!2722022)))

(declare-fun bm!745406 () Bool)

(assert (=> bm!745406 (= call!745410 (RegexPrimitiveSize!152 (ite c!1473846 (regOne!43980 (ite c!1473804 (regTwo!43980 r!13107) (regTwo!43981 r!13107))) (ite c!1473845 (reg!22063 (ite c!1473804 (regTwo!43980 r!13107) (regTwo!43981 r!13107))) (regOne!43981 (ite c!1473804 (regTwo!43980 r!13107) (regTwo!43981 r!13107)))))))))

(declare-fun b!8034175 () Bool)

(assert (=> b!8034175 (= e!4732791 e!4732788)))

(assert (=> b!8034175 (= c!1473846 (is-Concat!30737 (ite c!1473804 (regTwo!43980 r!13107) (regTwo!43981 r!13107))))))

(declare-fun bm!745407 () Bool)

(assert (=> bm!745407 (= call!745412 call!745410)))

(assert (= (and d!2394872 c!1473844) b!8034174))

(assert (= (and d!2394872 (not c!1473844)) b!8034175))

(assert (= (and b!8034175 c!1473846) b!8034169))

(assert (= (and b!8034175 (not c!1473846)) b!8034170))

(assert (= (and b!8034170 c!1473843) b!8034172))

(assert (= (and b!8034170 (not c!1473843)) b!8034168))

(assert (= (and b!8034168 c!1473845) b!8034166))

(assert (= (and b!8034168 (not c!1473845)) b!8034167))

(assert (= (and b!8034167 c!1473842) b!8034173))

(assert (= (and b!8034167 (not c!1473842)) b!8034171))

(assert (= (or b!8034166 b!8034171) bm!745407))

(assert (= (or b!8034169 b!8034171) bm!745405))

(assert (= (or b!8034169 bm!745407) bm!745406))

(declare-fun m!8392868 () Bool)

(assert (=> bm!745405 m!8392868))

(declare-fun m!8392870 () Bool)

(assert (=> bm!745406 m!8392870))

(assert (=> bm!745378 d!2394872))

(declare-fun b!8034176 () Bool)

(declare-fun e!4732795 () Bool)

(declare-fun call!745413 () Bool)

(assert (=> b!8034176 (= e!4732795 call!745413)))

(declare-fun b!8034177 () Bool)

(declare-fun res!3176839 () Bool)

(declare-fun e!4732793 () Bool)

(assert (=> b!8034177 (=> (not res!3176839) (not e!4732793))))

(declare-fun call!745414 () Bool)

(assert (=> b!8034177 (= res!3176839 call!745414)))

(declare-fun e!4732794 () Bool)

(assert (=> b!8034177 (= e!4732794 e!4732793)))

(declare-fun b!8034178 () Bool)

(declare-fun e!4732798 () Bool)

(declare-fun e!4732797 () Bool)

(assert (=> b!8034178 (= e!4732798 e!4732797)))

(declare-fun c!1473848 () Bool)

(assert (=> b!8034178 (= c!1473848 (is-Star!21734 (ite c!1473780 (reg!22063 r!13107) (ite c!1473779 (regOne!43981 r!13107) (regOne!43980 r!13107)))))))

(declare-fun b!8034179 () Bool)

(declare-fun res!3176836 () Bool)

(declare-fun e!4732796 () Bool)

(assert (=> b!8034179 (=> res!3176836 e!4732796)))

(assert (=> b!8034179 (= res!3176836 (not (is-Concat!30737 (ite c!1473780 (reg!22063 r!13107) (ite c!1473779 (regOne!43981 r!13107) (regOne!43980 r!13107))))))))

(assert (=> b!8034179 (= e!4732794 e!4732796)))

(declare-fun bm!745408 () Bool)

(assert (=> bm!745408 (= call!745414 call!745413)))

(declare-fun c!1473847 () Bool)

(declare-fun call!745415 () Bool)

(declare-fun bm!745409 () Bool)

(assert (=> bm!745409 (= call!745415 (validRegex!12030 (ite c!1473847 (regTwo!43981 (ite c!1473780 (reg!22063 r!13107) (ite c!1473779 (regOne!43981 r!13107) (regOne!43980 r!13107)))) (regTwo!43980 (ite c!1473780 (reg!22063 r!13107) (ite c!1473779 (regOne!43981 r!13107) (regOne!43980 r!13107)))))))))

(declare-fun b!8034180 () Bool)

(declare-fun e!4732792 () Bool)

(assert (=> b!8034180 (= e!4732796 e!4732792)))

(declare-fun res!3176837 () Bool)

(assert (=> b!8034180 (=> (not res!3176837) (not e!4732792))))

(assert (=> b!8034180 (= res!3176837 call!745414)))

(declare-fun d!2394874 () Bool)

(declare-fun res!3176838 () Bool)

(assert (=> d!2394874 (=> res!3176838 e!4732798)))

(assert (=> d!2394874 (= res!3176838 (is-ElementMatch!21734 (ite c!1473780 (reg!22063 r!13107) (ite c!1473779 (regOne!43981 r!13107) (regOne!43980 r!13107)))))))

(assert (=> d!2394874 (= (validRegex!12030 (ite c!1473780 (reg!22063 r!13107) (ite c!1473779 (regOne!43981 r!13107) (regOne!43980 r!13107)))) e!4732798)))

(declare-fun b!8034181 () Bool)

(assert (=> b!8034181 (= e!4732797 e!4732795)))

(declare-fun res!3176840 () Bool)

(assert (=> b!8034181 (= res!3176840 (not (nullable!9759 (reg!22063 (ite c!1473780 (reg!22063 r!13107) (ite c!1473779 (regOne!43981 r!13107) (regOne!43980 r!13107)))))))))

(assert (=> b!8034181 (=> (not res!3176840) (not e!4732795))))

(declare-fun b!8034182 () Bool)

(assert (=> b!8034182 (= e!4732797 e!4732794)))

(assert (=> b!8034182 (= c!1473847 (is-Union!21734 (ite c!1473780 (reg!22063 r!13107) (ite c!1473779 (regOne!43981 r!13107) (regOne!43980 r!13107)))))))

(declare-fun b!8034183 () Bool)

(assert (=> b!8034183 (= e!4732792 call!745415)))

(declare-fun b!8034184 () Bool)

(assert (=> b!8034184 (= e!4732793 call!745415)))

(declare-fun bm!745410 () Bool)

(assert (=> bm!745410 (= call!745413 (validRegex!12030 (ite c!1473848 (reg!22063 (ite c!1473780 (reg!22063 r!13107) (ite c!1473779 (regOne!43981 r!13107) (regOne!43980 r!13107)))) (ite c!1473847 (regOne!43981 (ite c!1473780 (reg!22063 r!13107) (ite c!1473779 (regOne!43981 r!13107) (regOne!43980 r!13107)))) (regOne!43980 (ite c!1473780 (reg!22063 r!13107) (ite c!1473779 (regOne!43981 r!13107) (regOne!43980 r!13107))))))))))

(assert (= (and d!2394874 (not res!3176838)) b!8034178))

(assert (= (and b!8034178 c!1473848) b!8034181))

(assert (= (and b!8034178 (not c!1473848)) b!8034182))

(assert (= (and b!8034181 res!3176840) b!8034176))

(assert (= (and b!8034182 c!1473847) b!8034177))

(assert (= (and b!8034182 (not c!1473847)) b!8034179))

(assert (= (and b!8034177 res!3176839) b!8034184))

(assert (= (and b!8034179 (not res!3176836)) b!8034180))

(assert (= (and b!8034180 res!3176837) b!8034183))

(assert (= (or b!8034184 b!8034183) bm!745409))

(assert (= (or b!8034177 b!8034180) bm!745408))

(assert (= (or b!8034176 bm!745408) bm!745410))

(declare-fun m!8392872 () Bool)

(assert (=> bm!745409 m!8392872))

(declare-fun m!8392874 () Bool)

(assert (=> b!8034181 m!8392874))

(declare-fun m!8392876 () Bool)

(assert (=> bm!745410 m!8392876))

(assert (=> bm!745362 d!2394874))

(declare-fun b!8034185 () Bool)

(declare-fun e!4732802 () Bool)

(declare-fun call!745416 () Bool)

(assert (=> b!8034185 (= e!4732802 call!745416)))

(declare-fun b!8034186 () Bool)

(declare-fun res!3176844 () Bool)

(declare-fun e!4732800 () Bool)

(assert (=> b!8034186 (=> (not res!3176844) (not e!4732800))))

(declare-fun call!745417 () Bool)

(assert (=> b!8034186 (= res!3176844 call!745417)))

(declare-fun e!4732801 () Bool)

(assert (=> b!8034186 (= e!4732801 e!4732800)))

(declare-fun b!8034187 () Bool)

(declare-fun e!4732805 () Bool)

(declare-fun e!4732804 () Bool)

(assert (=> b!8034187 (= e!4732805 e!4732804)))

(declare-fun c!1473850 () Bool)

(assert (=> b!8034187 (= c!1473850 (is-Star!21734 (ite c!1473779 (regTwo!43981 r!13107) (regTwo!43980 r!13107))))))

(declare-fun b!8034188 () Bool)

(declare-fun res!3176841 () Bool)

(declare-fun e!4732803 () Bool)

(assert (=> b!8034188 (=> res!3176841 e!4732803)))

(assert (=> b!8034188 (= res!3176841 (not (is-Concat!30737 (ite c!1473779 (regTwo!43981 r!13107) (regTwo!43980 r!13107)))))))

(assert (=> b!8034188 (= e!4732801 e!4732803)))

(declare-fun bm!745411 () Bool)

(assert (=> bm!745411 (= call!745417 call!745416)))

(declare-fun c!1473849 () Bool)

(declare-fun call!745418 () Bool)

(declare-fun bm!745412 () Bool)

(assert (=> bm!745412 (= call!745418 (validRegex!12030 (ite c!1473849 (regTwo!43981 (ite c!1473779 (regTwo!43981 r!13107) (regTwo!43980 r!13107))) (regTwo!43980 (ite c!1473779 (regTwo!43981 r!13107) (regTwo!43980 r!13107))))))))

(declare-fun b!8034189 () Bool)

(declare-fun e!4732799 () Bool)

(assert (=> b!8034189 (= e!4732803 e!4732799)))

(declare-fun res!3176842 () Bool)

(assert (=> b!8034189 (=> (not res!3176842) (not e!4732799))))

(assert (=> b!8034189 (= res!3176842 call!745417)))

(declare-fun d!2394876 () Bool)

(declare-fun res!3176843 () Bool)

(assert (=> d!2394876 (=> res!3176843 e!4732805)))

(assert (=> d!2394876 (= res!3176843 (is-ElementMatch!21734 (ite c!1473779 (regTwo!43981 r!13107) (regTwo!43980 r!13107))))))

(assert (=> d!2394876 (= (validRegex!12030 (ite c!1473779 (regTwo!43981 r!13107) (regTwo!43980 r!13107))) e!4732805)))

(declare-fun b!8034190 () Bool)

(assert (=> b!8034190 (= e!4732804 e!4732802)))

(declare-fun res!3176845 () Bool)

(assert (=> b!8034190 (= res!3176845 (not (nullable!9759 (reg!22063 (ite c!1473779 (regTwo!43981 r!13107) (regTwo!43980 r!13107))))))))

(assert (=> b!8034190 (=> (not res!3176845) (not e!4732802))))

(declare-fun b!8034191 () Bool)

(assert (=> b!8034191 (= e!4732804 e!4732801)))

(assert (=> b!8034191 (= c!1473849 (is-Union!21734 (ite c!1473779 (regTwo!43981 r!13107) (regTwo!43980 r!13107))))))

(declare-fun b!8034192 () Bool)

(assert (=> b!8034192 (= e!4732799 call!745418)))

(declare-fun b!8034193 () Bool)

(assert (=> b!8034193 (= e!4732800 call!745418)))

(declare-fun bm!745413 () Bool)

(assert (=> bm!745413 (= call!745416 (validRegex!12030 (ite c!1473850 (reg!22063 (ite c!1473779 (regTwo!43981 r!13107) (regTwo!43980 r!13107))) (ite c!1473849 (regOne!43981 (ite c!1473779 (regTwo!43981 r!13107) (regTwo!43980 r!13107))) (regOne!43980 (ite c!1473779 (regTwo!43981 r!13107) (regTwo!43980 r!13107)))))))))

(assert (= (and d!2394876 (not res!3176843)) b!8034187))

(assert (= (and b!8034187 c!1473850) b!8034190))

(assert (= (and b!8034187 (not c!1473850)) b!8034191))

(assert (= (and b!8034190 res!3176845) b!8034185))

(assert (= (and b!8034191 c!1473849) b!8034186))

(assert (= (and b!8034191 (not c!1473849)) b!8034188))

(assert (= (and b!8034186 res!3176844) b!8034193))

(assert (= (and b!8034188 (not res!3176841)) b!8034189))

(assert (= (and b!8034189 res!3176842) b!8034192))

(assert (= (or b!8034193 b!8034192) bm!745412))

(assert (= (or b!8034186 b!8034189) bm!745411))

(assert (= (or b!8034185 bm!745411) bm!745413))

(declare-fun m!8392878 () Bool)

(assert (=> bm!745412 m!8392878))

(declare-fun m!8392880 () Bool)

(assert (=> b!8034190 m!8392880))

(declare-fun m!8392882 () Bool)

(assert (=> bm!745413 m!8392882))

(assert (=> bm!745361 d!2394876))

(declare-fun e!4732806 () Bool)

(assert (=> b!8034039 (= tp!2405108 e!4732806)))

(declare-fun b!8034194 () Bool)

(assert (=> b!8034194 (= e!4732806 tp_is_empty!54463)))

(declare-fun b!8034197 () Bool)

(declare-fun tp!2405165 () Bool)

(declare-fun tp!2405164 () Bool)

(assert (=> b!8034197 (= e!4732806 (and tp!2405165 tp!2405164))))

(declare-fun b!8034195 () Bool)

(declare-fun tp!2405166 () Bool)

(declare-fun tp!2405167 () Bool)

(assert (=> b!8034195 (= e!4732806 (and tp!2405166 tp!2405167))))

(declare-fun b!8034196 () Bool)

(declare-fun tp!2405168 () Bool)

(assert (=> b!8034196 (= e!4732806 tp!2405168)))

(assert (= (and b!8034039 (is-ElementMatch!21734 (reg!22063 (regOne!43981 r!13107)))) b!8034194))

(assert (= (and b!8034039 (is-Concat!30737 (reg!22063 (regOne!43981 r!13107)))) b!8034195))

(assert (= (and b!8034039 (is-Star!21734 (reg!22063 (regOne!43981 r!13107)))) b!8034196))

(assert (= (and b!8034039 (is-Union!21734 (reg!22063 (regOne!43981 r!13107)))) b!8034197))

(declare-fun e!4732807 () Bool)

(assert (=> b!8034044 (= tp!2405110 e!4732807)))

(declare-fun b!8034198 () Bool)

(assert (=> b!8034198 (= e!4732807 tp_is_empty!54463)))

(declare-fun b!8034201 () Bool)

(declare-fun tp!2405170 () Bool)

(declare-fun tp!2405169 () Bool)

(assert (=> b!8034201 (= e!4732807 (and tp!2405170 tp!2405169))))

(declare-fun b!8034199 () Bool)

(declare-fun tp!2405171 () Bool)

(declare-fun tp!2405172 () Bool)

(assert (=> b!8034199 (= e!4732807 (and tp!2405171 tp!2405172))))

(declare-fun b!8034200 () Bool)

(declare-fun tp!2405173 () Bool)

(assert (=> b!8034200 (= e!4732807 tp!2405173)))

(assert (= (and b!8034044 (is-ElementMatch!21734 (regOne!43981 (regTwo!43981 r!13107)))) b!8034198))

(assert (= (and b!8034044 (is-Concat!30737 (regOne!43981 (regTwo!43981 r!13107)))) b!8034199))

(assert (= (and b!8034044 (is-Star!21734 (regOne!43981 (regTwo!43981 r!13107)))) b!8034200))

(assert (= (and b!8034044 (is-Union!21734 (regOne!43981 (regTwo!43981 r!13107)))) b!8034201))

(declare-fun e!4732808 () Bool)

(assert (=> b!8034044 (= tp!2405109 e!4732808)))

(declare-fun b!8034202 () Bool)

(assert (=> b!8034202 (= e!4732808 tp_is_empty!54463)))

(declare-fun b!8034205 () Bool)

(declare-fun tp!2405175 () Bool)

(declare-fun tp!2405174 () Bool)

(assert (=> b!8034205 (= e!4732808 (and tp!2405175 tp!2405174))))

(declare-fun b!8034203 () Bool)

(declare-fun tp!2405176 () Bool)

(declare-fun tp!2405177 () Bool)

(assert (=> b!8034203 (= e!4732808 (and tp!2405176 tp!2405177))))

(declare-fun b!8034204 () Bool)

(declare-fun tp!2405178 () Bool)

(assert (=> b!8034204 (= e!4732808 tp!2405178)))

(assert (= (and b!8034044 (is-ElementMatch!21734 (regTwo!43981 (regTwo!43981 r!13107)))) b!8034202))

(assert (= (and b!8034044 (is-Concat!30737 (regTwo!43981 (regTwo!43981 r!13107)))) b!8034203))

(assert (= (and b!8034044 (is-Star!21734 (regTwo!43981 (regTwo!43981 r!13107)))) b!8034204))

(assert (= (and b!8034044 (is-Union!21734 (regTwo!43981 (regTwo!43981 r!13107)))) b!8034205))

(declare-fun e!4732809 () Bool)

(assert (=> b!8034040 (= tp!2405105 e!4732809)))

(declare-fun b!8034206 () Bool)

(assert (=> b!8034206 (= e!4732809 tp_is_empty!54463)))

(declare-fun b!8034209 () Bool)

(declare-fun tp!2405180 () Bool)

(declare-fun tp!2405179 () Bool)

(assert (=> b!8034209 (= e!4732809 (and tp!2405180 tp!2405179))))

(declare-fun b!8034207 () Bool)

(declare-fun tp!2405181 () Bool)

(declare-fun tp!2405182 () Bool)

(assert (=> b!8034207 (= e!4732809 (and tp!2405181 tp!2405182))))

(declare-fun b!8034208 () Bool)

(declare-fun tp!2405183 () Bool)

(assert (=> b!8034208 (= e!4732809 tp!2405183)))

(assert (= (and b!8034040 (is-ElementMatch!21734 (regOne!43981 (regOne!43981 r!13107)))) b!8034206))

(assert (= (and b!8034040 (is-Concat!30737 (regOne!43981 (regOne!43981 r!13107)))) b!8034207))

(assert (= (and b!8034040 (is-Star!21734 (regOne!43981 (regOne!43981 r!13107)))) b!8034208))

(assert (= (and b!8034040 (is-Union!21734 (regOne!43981 (regOne!43981 r!13107)))) b!8034209))

(declare-fun e!4732810 () Bool)

(assert (=> b!8034040 (= tp!2405104 e!4732810)))

(declare-fun b!8034210 () Bool)

(assert (=> b!8034210 (= e!4732810 tp_is_empty!54463)))

(declare-fun b!8034213 () Bool)

(declare-fun tp!2405185 () Bool)

(declare-fun tp!2405184 () Bool)

(assert (=> b!8034213 (= e!4732810 (and tp!2405185 tp!2405184))))

(declare-fun b!8034211 () Bool)

(declare-fun tp!2405186 () Bool)

(declare-fun tp!2405187 () Bool)

(assert (=> b!8034211 (= e!4732810 (and tp!2405186 tp!2405187))))

(declare-fun b!8034212 () Bool)

(declare-fun tp!2405188 () Bool)

(assert (=> b!8034212 (= e!4732810 tp!2405188)))

(assert (= (and b!8034040 (is-ElementMatch!21734 (regTwo!43981 (regOne!43981 r!13107)))) b!8034210))

(assert (= (and b!8034040 (is-Concat!30737 (regTwo!43981 (regOne!43981 r!13107)))) b!8034211))

(assert (= (and b!8034040 (is-Star!21734 (regTwo!43981 (regOne!43981 r!13107)))) b!8034212))

(assert (= (and b!8034040 (is-Union!21734 (regTwo!43981 (regOne!43981 r!13107)))) b!8034213))

(declare-fun e!4732811 () Bool)

(assert (=> b!8034047 (= tp!2405118 e!4732811)))

(declare-fun b!8034214 () Bool)

(assert (=> b!8034214 (= e!4732811 tp_is_empty!54463)))

(declare-fun b!8034217 () Bool)

(declare-fun tp!2405190 () Bool)

(declare-fun tp!2405189 () Bool)

(assert (=> b!8034217 (= e!4732811 (and tp!2405190 tp!2405189))))

(declare-fun b!8034215 () Bool)

(declare-fun tp!2405191 () Bool)

(declare-fun tp!2405192 () Bool)

(assert (=> b!8034215 (= e!4732811 (and tp!2405191 tp!2405192))))

(declare-fun b!8034216 () Bool)

(declare-fun tp!2405193 () Bool)

(assert (=> b!8034216 (= e!4732811 tp!2405193)))

(assert (= (and b!8034047 (is-ElementMatch!21734 (reg!22063 (regOne!43980 r!13107)))) b!8034214))

(assert (= (and b!8034047 (is-Concat!30737 (reg!22063 (regOne!43980 r!13107)))) b!8034215))

(assert (= (and b!8034047 (is-Star!21734 (reg!22063 (regOne!43980 r!13107)))) b!8034216))

(assert (= (and b!8034047 (is-Union!21734 (reg!22063 (regOne!43980 r!13107)))) b!8034217))

(declare-fun e!4732812 () Bool)

(assert (=> b!8034052 (= tp!2405120 e!4732812)))

(declare-fun b!8034218 () Bool)

(assert (=> b!8034218 (= e!4732812 tp_is_empty!54463)))

(declare-fun b!8034221 () Bool)

(declare-fun tp!2405195 () Bool)

(declare-fun tp!2405194 () Bool)

(assert (=> b!8034221 (= e!4732812 (and tp!2405195 tp!2405194))))

(declare-fun b!8034219 () Bool)

(declare-fun tp!2405196 () Bool)

(declare-fun tp!2405197 () Bool)

(assert (=> b!8034219 (= e!4732812 (and tp!2405196 tp!2405197))))

(declare-fun b!8034220 () Bool)

(declare-fun tp!2405198 () Bool)

(assert (=> b!8034220 (= e!4732812 tp!2405198)))

(assert (= (and b!8034052 (is-ElementMatch!21734 (regOne!43981 (regTwo!43980 r!13107)))) b!8034218))

(assert (= (and b!8034052 (is-Concat!30737 (regOne!43981 (regTwo!43980 r!13107)))) b!8034219))

(assert (= (and b!8034052 (is-Star!21734 (regOne!43981 (regTwo!43980 r!13107)))) b!8034220))

(assert (= (and b!8034052 (is-Union!21734 (regOne!43981 (regTwo!43980 r!13107)))) b!8034221))

(declare-fun e!4732813 () Bool)

(assert (=> b!8034052 (= tp!2405119 e!4732813)))

(declare-fun b!8034222 () Bool)

(assert (=> b!8034222 (= e!4732813 tp_is_empty!54463)))

(declare-fun b!8034225 () Bool)

(declare-fun tp!2405200 () Bool)

(declare-fun tp!2405199 () Bool)

(assert (=> b!8034225 (= e!4732813 (and tp!2405200 tp!2405199))))

(declare-fun b!8034223 () Bool)

(declare-fun tp!2405201 () Bool)

(declare-fun tp!2405202 () Bool)

(assert (=> b!8034223 (= e!4732813 (and tp!2405201 tp!2405202))))

(declare-fun b!8034224 () Bool)

(declare-fun tp!2405203 () Bool)

(assert (=> b!8034224 (= e!4732813 tp!2405203)))

(assert (= (and b!8034052 (is-ElementMatch!21734 (regTwo!43981 (regTwo!43980 r!13107)))) b!8034222))

(assert (= (and b!8034052 (is-Concat!30737 (regTwo!43981 (regTwo!43980 r!13107)))) b!8034223))

(assert (= (and b!8034052 (is-Star!21734 (regTwo!43981 (regTwo!43980 r!13107)))) b!8034224))

(assert (= (and b!8034052 (is-Union!21734 (regTwo!43981 (regTwo!43980 r!13107)))) b!8034225))

(declare-fun e!4732814 () Bool)

(assert (=> b!8034038 (= tp!2405106 e!4732814)))

(declare-fun b!8034226 () Bool)

(assert (=> b!8034226 (= e!4732814 tp_is_empty!54463)))

(declare-fun b!8034229 () Bool)

(declare-fun tp!2405205 () Bool)

(declare-fun tp!2405204 () Bool)

(assert (=> b!8034229 (= e!4732814 (and tp!2405205 tp!2405204))))

(declare-fun b!8034227 () Bool)

(declare-fun tp!2405206 () Bool)

(declare-fun tp!2405207 () Bool)

(assert (=> b!8034227 (= e!4732814 (and tp!2405206 tp!2405207))))

(declare-fun b!8034228 () Bool)

(declare-fun tp!2405208 () Bool)

(assert (=> b!8034228 (= e!4732814 tp!2405208)))

(assert (= (and b!8034038 (is-ElementMatch!21734 (regOne!43980 (regOne!43981 r!13107)))) b!8034226))

(assert (= (and b!8034038 (is-Concat!30737 (regOne!43980 (regOne!43981 r!13107)))) b!8034227))

(assert (= (and b!8034038 (is-Star!21734 (regOne!43980 (regOne!43981 r!13107)))) b!8034228))

(assert (= (and b!8034038 (is-Union!21734 (regOne!43980 (regOne!43981 r!13107)))) b!8034229))

(declare-fun e!4732815 () Bool)

(assert (=> b!8034038 (= tp!2405107 e!4732815)))

(declare-fun b!8034230 () Bool)

(assert (=> b!8034230 (= e!4732815 tp_is_empty!54463)))

(declare-fun b!8034233 () Bool)

(declare-fun tp!2405210 () Bool)

(declare-fun tp!2405209 () Bool)

(assert (=> b!8034233 (= e!4732815 (and tp!2405210 tp!2405209))))

(declare-fun b!8034231 () Bool)

(declare-fun tp!2405211 () Bool)

(declare-fun tp!2405212 () Bool)

(assert (=> b!8034231 (= e!4732815 (and tp!2405211 tp!2405212))))

(declare-fun b!8034232 () Bool)

(declare-fun tp!2405213 () Bool)

(assert (=> b!8034232 (= e!4732815 tp!2405213)))

(assert (= (and b!8034038 (is-ElementMatch!21734 (regTwo!43980 (regOne!43981 r!13107)))) b!8034230))

(assert (= (and b!8034038 (is-Concat!30737 (regTwo!43980 (regOne!43981 r!13107)))) b!8034231))

(assert (= (and b!8034038 (is-Star!21734 (regTwo!43980 (regOne!43981 r!13107)))) b!8034232))

(assert (= (and b!8034038 (is-Union!21734 (regTwo!43980 (regOne!43981 r!13107)))) b!8034233))

(declare-fun e!4732816 () Bool)

(assert (=> b!8034043 (= tp!2405113 e!4732816)))

(declare-fun b!8034234 () Bool)

(assert (=> b!8034234 (= e!4732816 tp_is_empty!54463)))

(declare-fun b!8034237 () Bool)

(declare-fun tp!2405215 () Bool)

(declare-fun tp!2405214 () Bool)

(assert (=> b!8034237 (= e!4732816 (and tp!2405215 tp!2405214))))

(declare-fun b!8034235 () Bool)

(declare-fun tp!2405216 () Bool)

(declare-fun tp!2405217 () Bool)

(assert (=> b!8034235 (= e!4732816 (and tp!2405216 tp!2405217))))

(declare-fun b!8034236 () Bool)

(declare-fun tp!2405218 () Bool)

(assert (=> b!8034236 (= e!4732816 tp!2405218)))

(assert (= (and b!8034043 (is-ElementMatch!21734 (reg!22063 (regTwo!43981 r!13107)))) b!8034234))

(assert (= (and b!8034043 (is-Concat!30737 (reg!22063 (regTwo!43981 r!13107)))) b!8034235))

(assert (= (and b!8034043 (is-Star!21734 (reg!22063 (regTwo!43981 r!13107)))) b!8034236))

(assert (= (and b!8034043 (is-Union!21734 (reg!22063 (regTwo!43981 r!13107)))) b!8034237))

(declare-fun e!4732817 () Bool)

(assert (=> b!8034048 (= tp!2405115 e!4732817)))

(declare-fun b!8034238 () Bool)

(assert (=> b!8034238 (= e!4732817 tp_is_empty!54463)))

(declare-fun b!8034241 () Bool)

(declare-fun tp!2405220 () Bool)

(declare-fun tp!2405219 () Bool)

(assert (=> b!8034241 (= e!4732817 (and tp!2405220 tp!2405219))))

(declare-fun b!8034239 () Bool)

(declare-fun tp!2405221 () Bool)

(declare-fun tp!2405222 () Bool)

(assert (=> b!8034239 (= e!4732817 (and tp!2405221 tp!2405222))))

(declare-fun b!8034240 () Bool)

(declare-fun tp!2405223 () Bool)

(assert (=> b!8034240 (= e!4732817 tp!2405223)))

(assert (= (and b!8034048 (is-ElementMatch!21734 (regOne!43981 (regOne!43980 r!13107)))) b!8034238))

(assert (= (and b!8034048 (is-Concat!30737 (regOne!43981 (regOne!43980 r!13107)))) b!8034239))

(assert (= (and b!8034048 (is-Star!21734 (regOne!43981 (regOne!43980 r!13107)))) b!8034240))

(assert (= (and b!8034048 (is-Union!21734 (regOne!43981 (regOne!43980 r!13107)))) b!8034241))

(declare-fun e!4732818 () Bool)

(assert (=> b!8034048 (= tp!2405114 e!4732818)))

(declare-fun b!8034242 () Bool)

(assert (=> b!8034242 (= e!4732818 tp_is_empty!54463)))

(declare-fun b!8034245 () Bool)

(declare-fun tp!2405225 () Bool)

(declare-fun tp!2405224 () Bool)

(assert (=> b!8034245 (= e!4732818 (and tp!2405225 tp!2405224))))

(declare-fun b!8034243 () Bool)

(declare-fun tp!2405226 () Bool)

(declare-fun tp!2405227 () Bool)

(assert (=> b!8034243 (= e!4732818 (and tp!2405226 tp!2405227))))

(declare-fun b!8034244 () Bool)

(declare-fun tp!2405228 () Bool)

(assert (=> b!8034244 (= e!4732818 tp!2405228)))

(assert (= (and b!8034048 (is-ElementMatch!21734 (regTwo!43981 (regOne!43980 r!13107)))) b!8034242))

(assert (= (and b!8034048 (is-Concat!30737 (regTwo!43981 (regOne!43980 r!13107)))) b!8034243))

(assert (= (and b!8034048 (is-Star!21734 (regTwo!43981 (regOne!43980 r!13107)))) b!8034244))

(assert (= (and b!8034048 (is-Union!21734 (regTwo!43981 (regOne!43980 r!13107)))) b!8034245))

(declare-fun e!4732819 () Bool)

(assert (=> b!8034055 (= tp!2405128 e!4732819)))

(declare-fun b!8034246 () Bool)

(assert (=> b!8034246 (= e!4732819 tp_is_empty!54463)))

(declare-fun b!8034249 () Bool)

(declare-fun tp!2405230 () Bool)

(declare-fun tp!2405229 () Bool)

(assert (=> b!8034249 (= e!4732819 (and tp!2405230 tp!2405229))))

(declare-fun b!8034247 () Bool)

(declare-fun tp!2405231 () Bool)

(declare-fun tp!2405232 () Bool)

(assert (=> b!8034247 (= e!4732819 (and tp!2405231 tp!2405232))))

(declare-fun b!8034248 () Bool)

(declare-fun tp!2405233 () Bool)

(assert (=> b!8034248 (= e!4732819 tp!2405233)))

(assert (= (and b!8034055 (is-ElementMatch!21734 (reg!22063 (reg!22063 r!13107)))) b!8034246))

(assert (= (and b!8034055 (is-Concat!30737 (reg!22063 (reg!22063 r!13107)))) b!8034247))

(assert (= (and b!8034055 (is-Star!21734 (reg!22063 (reg!22063 r!13107)))) b!8034248))

(assert (= (and b!8034055 (is-Union!21734 (reg!22063 (reg!22063 r!13107)))) b!8034249))

(declare-fun e!4732820 () Bool)

(assert (=> b!8034046 (= tp!2405116 e!4732820)))

(declare-fun b!8034250 () Bool)

(assert (=> b!8034250 (= e!4732820 tp_is_empty!54463)))

(declare-fun b!8034253 () Bool)

(declare-fun tp!2405235 () Bool)

(declare-fun tp!2405234 () Bool)

(assert (=> b!8034253 (= e!4732820 (and tp!2405235 tp!2405234))))

(declare-fun b!8034251 () Bool)

(declare-fun tp!2405236 () Bool)

(declare-fun tp!2405237 () Bool)

(assert (=> b!8034251 (= e!4732820 (and tp!2405236 tp!2405237))))

(declare-fun b!8034252 () Bool)

(declare-fun tp!2405238 () Bool)

(assert (=> b!8034252 (= e!4732820 tp!2405238)))

(assert (= (and b!8034046 (is-ElementMatch!21734 (regOne!43980 (regOne!43980 r!13107)))) b!8034250))

(assert (= (and b!8034046 (is-Concat!30737 (regOne!43980 (regOne!43980 r!13107)))) b!8034251))

(assert (= (and b!8034046 (is-Star!21734 (regOne!43980 (regOne!43980 r!13107)))) b!8034252))

(assert (= (and b!8034046 (is-Union!21734 (regOne!43980 (regOne!43980 r!13107)))) b!8034253))

(declare-fun e!4732821 () Bool)

(assert (=> b!8034046 (= tp!2405117 e!4732821)))

(declare-fun b!8034254 () Bool)

(assert (=> b!8034254 (= e!4732821 tp_is_empty!54463)))

(declare-fun b!8034257 () Bool)

(declare-fun tp!2405240 () Bool)

(declare-fun tp!2405239 () Bool)

(assert (=> b!8034257 (= e!4732821 (and tp!2405240 tp!2405239))))

(declare-fun b!8034255 () Bool)

(declare-fun tp!2405241 () Bool)

(declare-fun tp!2405242 () Bool)

(assert (=> b!8034255 (= e!4732821 (and tp!2405241 tp!2405242))))

(declare-fun b!8034256 () Bool)

(declare-fun tp!2405243 () Bool)

(assert (=> b!8034256 (= e!4732821 tp!2405243)))

(assert (= (and b!8034046 (is-ElementMatch!21734 (regTwo!43980 (regOne!43980 r!13107)))) b!8034254))

(assert (= (and b!8034046 (is-Concat!30737 (regTwo!43980 (regOne!43980 r!13107)))) b!8034255))

(assert (= (and b!8034046 (is-Star!21734 (regTwo!43980 (regOne!43980 r!13107)))) b!8034256))

(assert (= (and b!8034046 (is-Union!21734 (regTwo!43980 (regOne!43980 r!13107)))) b!8034257))

(declare-fun e!4732822 () Bool)

(assert (=> b!8034051 (= tp!2405123 e!4732822)))

(declare-fun b!8034258 () Bool)

(assert (=> b!8034258 (= e!4732822 tp_is_empty!54463)))

(declare-fun b!8034261 () Bool)

(declare-fun tp!2405245 () Bool)

(declare-fun tp!2405244 () Bool)

(assert (=> b!8034261 (= e!4732822 (and tp!2405245 tp!2405244))))

(declare-fun b!8034259 () Bool)

(declare-fun tp!2405246 () Bool)

(declare-fun tp!2405247 () Bool)

(assert (=> b!8034259 (= e!4732822 (and tp!2405246 tp!2405247))))

(declare-fun b!8034260 () Bool)

(declare-fun tp!2405248 () Bool)

(assert (=> b!8034260 (= e!4732822 tp!2405248)))

(assert (= (and b!8034051 (is-ElementMatch!21734 (reg!22063 (regTwo!43980 r!13107)))) b!8034258))

(assert (= (and b!8034051 (is-Concat!30737 (reg!22063 (regTwo!43980 r!13107)))) b!8034259))

(assert (= (and b!8034051 (is-Star!21734 (reg!22063 (regTwo!43980 r!13107)))) b!8034260))

(assert (= (and b!8034051 (is-Union!21734 (reg!22063 (regTwo!43980 r!13107)))) b!8034261))

(declare-fun e!4732823 () Bool)

(assert (=> b!8034056 (= tp!2405125 e!4732823)))

(declare-fun b!8034262 () Bool)

(assert (=> b!8034262 (= e!4732823 tp_is_empty!54463)))

(declare-fun b!8034265 () Bool)

(declare-fun tp!2405250 () Bool)

(declare-fun tp!2405249 () Bool)

(assert (=> b!8034265 (= e!4732823 (and tp!2405250 tp!2405249))))

(declare-fun b!8034263 () Bool)

(declare-fun tp!2405251 () Bool)

(declare-fun tp!2405252 () Bool)

(assert (=> b!8034263 (= e!4732823 (and tp!2405251 tp!2405252))))

(declare-fun b!8034264 () Bool)

(declare-fun tp!2405253 () Bool)

(assert (=> b!8034264 (= e!4732823 tp!2405253)))

(assert (= (and b!8034056 (is-ElementMatch!21734 (regOne!43981 (reg!22063 r!13107)))) b!8034262))

(assert (= (and b!8034056 (is-Concat!30737 (regOne!43981 (reg!22063 r!13107)))) b!8034263))

(assert (= (and b!8034056 (is-Star!21734 (regOne!43981 (reg!22063 r!13107)))) b!8034264))

(assert (= (and b!8034056 (is-Union!21734 (regOne!43981 (reg!22063 r!13107)))) b!8034265))

(declare-fun e!4732824 () Bool)

(assert (=> b!8034056 (= tp!2405124 e!4732824)))

(declare-fun b!8034266 () Bool)

(assert (=> b!8034266 (= e!4732824 tp_is_empty!54463)))

(declare-fun b!8034269 () Bool)

(declare-fun tp!2405255 () Bool)

(declare-fun tp!2405254 () Bool)

(assert (=> b!8034269 (= e!4732824 (and tp!2405255 tp!2405254))))

(declare-fun b!8034267 () Bool)

(declare-fun tp!2405256 () Bool)

(declare-fun tp!2405257 () Bool)

(assert (=> b!8034267 (= e!4732824 (and tp!2405256 tp!2405257))))

(declare-fun b!8034268 () Bool)

(declare-fun tp!2405258 () Bool)

(assert (=> b!8034268 (= e!4732824 tp!2405258)))

(assert (= (and b!8034056 (is-ElementMatch!21734 (regTwo!43981 (reg!22063 r!13107)))) b!8034266))

(assert (= (and b!8034056 (is-Concat!30737 (regTwo!43981 (reg!22063 r!13107)))) b!8034267))

(assert (= (and b!8034056 (is-Star!21734 (regTwo!43981 (reg!22063 r!13107)))) b!8034268))

(assert (= (and b!8034056 (is-Union!21734 (regTwo!43981 (reg!22063 r!13107)))) b!8034269))

(declare-fun e!4732825 () Bool)

(assert (=> b!8034042 (= tp!2405111 e!4732825)))

(declare-fun b!8034270 () Bool)

(assert (=> b!8034270 (= e!4732825 tp_is_empty!54463)))

(declare-fun b!8034273 () Bool)

(declare-fun tp!2405260 () Bool)

(declare-fun tp!2405259 () Bool)

(assert (=> b!8034273 (= e!4732825 (and tp!2405260 tp!2405259))))

(declare-fun b!8034271 () Bool)

(declare-fun tp!2405261 () Bool)

(declare-fun tp!2405262 () Bool)

(assert (=> b!8034271 (= e!4732825 (and tp!2405261 tp!2405262))))

(declare-fun b!8034272 () Bool)

(declare-fun tp!2405263 () Bool)

(assert (=> b!8034272 (= e!4732825 tp!2405263)))

(assert (= (and b!8034042 (is-ElementMatch!21734 (regOne!43980 (regTwo!43981 r!13107)))) b!8034270))

(assert (= (and b!8034042 (is-Concat!30737 (regOne!43980 (regTwo!43981 r!13107)))) b!8034271))

(assert (= (and b!8034042 (is-Star!21734 (regOne!43980 (regTwo!43981 r!13107)))) b!8034272))

(assert (= (and b!8034042 (is-Union!21734 (regOne!43980 (regTwo!43981 r!13107)))) b!8034273))

(declare-fun e!4732826 () Bool)

(assert (=> b!8034042 (= tp!2405112 e!4732826)))

(declare-fun b!8034274 () Bool)

(assert (=> b!8034274 (= e!4732826 tp_is_empty!54463)))

(declare-fun b!8034277 () Bool)

(declare-fun tp!2405265 () Bool)

(declare-fun tp!2405264 () Bool)

(assert (=> b!8034277 (= e!4732826 (and tp!2405265 tp!2405264))))

(declare-fun b!8034275 () Bool)

(declare-fun tp!2405266 () Bool)

(declare-fun tp!2405267 () Bool)

(assert (=> b!8034275 (= e!4732826 (and tp!2405266 tp!2405267))))

(declare-fun b!8034276 () Bool)

(declare-fun tp!2405268 () Bool)

(assert (=> b!8034276 (= e!4732826 tp!2405268)))

(assert (= (and b!8034042 (is-ElementMatch!21734 (regTwo!43980 (regTwo!43981 r!13107)))) b!8034274))

(assert (= (and b!8034042 (is-Concat!30737 (regTwo!43980 (regTwo!43981 r!13107)))) b!8034275))

(assert (= (and b!8034042 (is-Star!21734 (regTwo!43980 (regTwo!43981 r!13107)))) b!8034276))

(assert (= (and b!8034042 (is-Union!21734 (regTwo!43980 (regTwo!43981 r!13107)))) b!8034277))

(declare-fun e!4732827 () Bool)

(assert (=> b!8034054 (= tp!2405126 e!4732827)))

(declare-fun b!8034278 () Bool)

(assert (=> b!8034278 (= e!4732827 tp_is_empty!54463)))

(declare-fun b!8034281 () Bool)

(declare-fun tp!2405270 () Bool)

(declare-fun tp!2405269 () Bool)

(assert (=> b!8034281 (= e!4732827 (and tp!2405270 tp!2405269))))

(declare-fun b!8034279 () Bool)

(declare-fun tp!2405271 () Bool)

(declare-fun tp!2405272 () Bool)

(assert (=> b!8034279 (= e!4732827 (and tp!2405271 tp!2405272))))

(declare-fun b!8034280 () Bool)

(declare-fun tp!2405273 () Bool)

(assert (=> b!8034280 (= e!4732827 tp!2405273)))

(assert (= (and b!8034054 (is-ElementMatch!21734 (regOne!43980 (reg!22063 r!13107)))) b!8034278))

(assert (= (and b!8034054 (is-Concat!30737 (regOne!43980 (reg!22063 r!13107)))) b!8034279))

(assert (= (and b!8034054 (is-Star!21734 (regOne!43980 (reg!22063 r!13107)))) b!8034280))

(assert (= (and b!8034054 (is-Union!21734 (regOne!43980 (reg!22063 r!13107)))) b!8034281))

(declare-fun e!4732828 () Bool)

(assert (=> b!8034054 (= tp!2405127 e!4732828)))

(declare-fun b!8034282 () Bool)

(assert (=> b!8034282 (= e!4732828 tp_is_empty!54463)))

(declare-fun b!8034285 () Bool)

(declare-fun tp!2405275 () Bool)

(declare-fun tp!2405274 () Bool)

(assert (=> b!8034285 (= e!4732828 (and tp!2405275 tp!2405274))))

(declare-fun b!8034283 () Bool)

(declare-fun tp!2405276 () Bool)

(declare-fun tp!2405277 () Bool)

(assert (=> b!8034283 (= e!4732828 (and tp!2405276 tp!2405277))))

(declare-fun b!8034284 () Bool)

(declare-fun tp!2405278 () Bool)

(assert (=> b!8034284 (= e!4732828 tp!2405278)))

(assert (= (and b!8034054 (is-ElementMatch!21734 (regTwo!43980 (reg!22063 r!13107)))) b!8034282))

(assert (= (and b!8034054 (is-Concat!30737 (regTwo!43980 (reg!22063 r!13107)))) b!8034283))

(assert (= (and b!8034054 (is-Star!21734 (regTwo!43980 (reg!22063 r!13107)))) b!8034284))

(assert (= (and b!8034054 (is-Union!21734 (regTwo!43980 (reg!22063 r!13107)))) b!8034285))

(declare-fun e!4732829 () Bool)

(assert (=> b!8034050 (= tp!2405121 e!4732829)))

(declare-fun b!8034286 () Bool)

(assert (=> b!8034286 (= e!4732829 tp_is_empty!54463)))

(declare-fun b!8034289 () Bool)

(declare-fun tp!2405280 () Bool)

(declare-fun tp!2405279 () Bool)

(assert (=> b!8034289 (= e!4732829 (and tp!2405280 tp!2405279))))

(declare-fun b!8034287 () Bool)

(declare-fun tp!2405281 () Bool)

(declare-fun tp!2405282 () Bool)

(assert (=> b!8034287 (= e!4732829 (and tp!2405281 tp!2405282))))

(declare-fun b!8034288 () Bool)

(declare-fun tp!2405283 () Bool)

(assert (=> b!8034288 (= e!4732829 tp!2405283)))

(assert (= (and b!8034050 (is-ElementMatch!21734 (regOne!43980 (regTwo!43980 r!13107)))) b!8034286))

(assert (= (and b!8034050 (is-Concat!30737 (regOne!43980 (regTwo!43980 r!13107)))) b!8034287))

(assert (= (and b!8034050 (is-Star!21734 (regOne!43980 (regTwo!43980 r!13107)))) b!8034288))

(assert (= (and b!8034050 (is-Union!21734 (regOne!43980 (regTwo!43980 r!13107)))) b!8034289))

(declare-fun e!4732830 () Bool)

(assert (=> b!8034050 (= tp!2405122 e!4732830)))

(declare-fun b!8034290 () Bool)

(assert (=> b!8034290 (= e!4732830 tp_is_empty!54463)))

(declare-fun b!8034293 () Bool)

(declare-fun tp!2405285 () Bool)

(declare-fun tp!2405284 () Bool)

(assert (=> b!8034293 (= e!4732830 (and tp!2405285 tp!2405284))))

(declare-fun b!8034291 () Bool)

(declare-fun tp!2405286 () Bool)

(declare-fun tp!2405287 () Bool)

(assert (=> b!8034291 (= e!4732830 (and tp!2405286 tp!2405287))))

(declare-fun b!8034292 () Bool)

(declare-fun tp!2405288 () Bool)

(assert (=> b!8034292 (= e!4732830 tp!2405288)))

(assert (= (and b!8034050 (is-ElementMatch!21734 (regTwo!43980 (regTwo!43980 r!13107)))) b!8034290))

(assert (= (and b!8034050 (is-Concat!30737 (regTwo!43980 (regTwo!43980 r!13107)))) b!8034291))

(assert (= (and b!8034050 (is-Star!21734 (regTwo!43980 (regTwo!43980 r!13107)))) b!8034292))

(assert (= (and b!8034050 (is-Union!21734 (regTwo!43980 (regTwo!43980 r!13107)))) b!8034293))

(push 1)

(assert (not b!8034283))

(assert (not b!8034207))

(assert (not b!8034213))

(assert (not b!8034271))

(assert (not b!8034287))

(assert (not b!8034263))

(assert (not b!8034221))

(assert (not b!8034233))

(assert (not bm!745402))

(assert (not b!8034224))

(assert (not b!8034215))

(assert (not b!8034273))

(assert (not b!8034204))

(assert (not bm!745410))

(assert (not b!8034231))

(assert (not b!8034289))

(assert (not bm!745400))

(assert (not b!8034232))

(assert (not b!8034216))

(assert (not b!8034293))

(assert (not b!8034276))

(assert (not b!8034235))

(assert (not b!8034277))

(assert (not b!8034229))

(assert (not b!8034275))

(assert (not b!8034279))

(assert (not b!8034265))

(assert (not b!8034284))

(assert (not b!8034219))

(assert (not b!8034253))

(assert (not b!8034209))

(assert (not bm!745406))

(assert (not b!8034291))

(assert (not b!8034259))

(assert (not b!8034201))

(assert (not b!8034225))

(assert (not b!8034205))

(assert (not bm!745409))

(assert (not b!8034197))

(assert (not b!8034228))

(assert (not b!8034248))

(assert (not bm!745396))

(assert (not d!2394870))

(assert (not b!8034212))

(assert (not b!8034223))

(assert (not b!8034196))

(assert (not b!8034269))

(assert (not b!8034260))

(assert (not b!8034280))

(assert (not b!8034239))

(assert (not b!8034243))

(assert (not bm!745403))

(assert (not b!8034190))

(assert (not b!8034268))

(assert (not b!8034292))

(assert (not b!8034245))

(assert (not bm!745413))

(assert (not b!8034199))

(assert (not b!8034257))

(assert (not b!8034281))

(assert (not b!8034208))

(assert (not b!8034240))

(assert (not b!8034217))

(assert (not b!8034181))

(assert (not b!8034255))

(assert (not bm!745399))

(assert (not b!8034247))

(assert (not bm!745397))

(assert (not b!8034261))

(assert (not bm!745412))

(assert (not b!8034252))

(assert (not b!8034244))

(assert (not b!8034288))

(assert (not b!8034203))

(assert (not b!8034251))

(assert (not b!8034237))

(assert (not b!8034200))

(assert (not b!8034264))

(assert (not b!8034195))

(assert (not b!8034256))

(assert (not b!8034220))

(assert (not b!8034227))

(assert (not b!8034211))

(assert (not b!8034241))

(assert tp_is_empty!54463)

(assert (not b!8034285))

(assert (not b!8034249))

(assert (not bm!745405))

(assert (not b!8034236))

(assert (not b!8034272))

(assert (not b!8034267))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

