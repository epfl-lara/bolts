; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!286070 () Bool)

(assert start!286070)

(declare-fun b!2948926 () Bool)

(declare-fun res!1216812 () Bool)

(declare-fun e!1857498 () Bool)

(assert (=> b!2948926 (=> res!1216812 e!1857498)))

(declare-datatypes ((C!18474 0))(
  ( (C!18475 (val!11273 Int)) )
))
(declare-datatypes ((Regex!9144 0))(
  ( (ElementMatch!9144 (c!482616 C!18474)) (Concat!14465 (regOne!18800 Regex!9144) (regTwo!18800 Regex!9144)) (EmptyExpr!9144) (Star!9144 (reg!9473 Regex!9144)) (EmptyLang!9144) (Union!9144 (regOne!18801 Regex!9144) (regTwo!18801 Regex!9144)) )
))
(declare-fun lt!1031649 () Regex!9144)

(declare-fun isEmptyLang!266 (Regex!9144) Bool)

(assert (=> b!2948926 (= res!1216812 (isEmptyLang!266 lt!1031649))))

(declare-fun b!2948927 () Bool)

(declare-fun e!1857497 () Bool)

(assert (=> b!2948927 (= e!1857497 e!1857498)))

(declare-fun res!1216810 () Bool)

(assert (=> b!2948927 (=> res!1216810 e!1857498)))

(declare-fun lt!1031653 () Regex!9144)

(assert (=> b!2948927 (= res!1216810 (isEmptyLang!266 lt!1031653))))

(declare-fun r!17423 () Regex!9144)

(declare-fun simplify!149 (Regex!9144) Regex!9144)

(assert (=> b!2948927 (= lt!1031649 (simplify!149 (regTwo!18800 r!17423)))))

(assert (=> b!2948927 (= lt!1031653 (simplify!149 (regOne!18800 r!17423)))))

(declare-fun b!2948928 () Bool)

(declare-fun e!1857501 () Bool)

(declare-fun validRegex!3877 (Regex!9144) Bool)

(assert (=> b!2948928 (= e!1857501 (validRegex!3877 (regTwo!18800 r!17423)))))

(declare-fun lt!1031648 () Regex!9144)

(declare-datatypes ((List!35009 0))(
  ( (Nil!34885) (Cons!34885 (h!40305 C!18474) (t!234074 List!35009)) )
))
(declare-fun s!11993 () List!35009)

(declare-fun matchRSpec!1281 (Regex!9144 List!35009) Bool)

(assert (=> b!2948928 (matchRSpec!1281 lt!1031648 s!11993)))

(declare-datatypes ((Unit!48667 0))(
  ( (Unit!48668) )
))
(declare-fun lt!1031652 () Unit!48667)

(declare-fun mainMatchTheorem!1281 (Regex!9144 List!35009) Unit!48667)

(assert (=> b!2948928 (= lt!1031652 (mainMatchTheorem!1281 lt!1031648 s!11993))))

(declare-fun b!2948929 () Bool)

(declare-fun e!1857499 () Bool)

(declare-fun tp!942875 () Bool)

(declare-fun tp!942878 () Bool)

(assert (=> b!2948929 (= e!1857499 (and tp!942875 tp!942878))))

(declare-fun b!2948930 () Bool)

(declare-fun e!1857496 () Bool)

(assert (=> b!2948930 (= e!1857496 (not e!1857497))))

(declare-fun res!1216814 () Bool)

(assert (=> b!2948930 (=> res!1216814 e!1857497)))

(declare-fun lt!1031651 () Bool)

(assert (=> b!2948930 (= res!1216814 (or lt!1031651 (not (is-Concat!14465 r!17423))))))

(assert (=> b!2948930 (= lt!1031651 (matchRSpec!1281 r!17423 s!11993))))

(declare-fun matchR!4026 (Regex!9144 List!35009) Bool)

(assert (=> b!2948930 (= lt!1031651 (matchR!4026 r!17423 s!11993))))

(declare-fun lt!1031650 () Unit!48667)

(assert (=> b!2948930 (= lt!1031650 (mainMatchTheorem!1281 r!17423 s!11993))))

(declare-fun b!2948931 () Bool)

(declare-fun tp!942876 () Bool)

(assert (=> b!2948931 (= e!1857499 tp!942876)))

(declare-fun b!2948932 () Bool)

(declare-fun e!1857500 () Bool)

(declare-fun tp_is_empty!15851 () Bool)

(declare-fun tp!942874 () Bool)

(assert (=> b!2948932 (= e!1857500 (and tp_is_empty!15851 tp!942874))))

(declare-fun b!2948933 () Bool)

(assert (=> b!2948933 (= e!1857499 tp_is_empty!15851)))

(declare-fun res!1216807 () Bool)

(assert (=> start!286070 (=> (not res!1216807) (not e!1857496))))

(assert (=> start!286070 (= res!1216807 (validRegex!3877 r!17423))))

(assert (=> start!286070 e!1857496))

(assert (=> start!286070 e!1857499))

(assert (=> start!286070 e!1857500))

(declare-fun b!2948934 () Bool)

(declare-fun res!1216813 () Bool)

(assert (=> b!2948934 (=> res!1216813 e!1857498)))

(declare-fun isEmptyExpr!347 (Regex!9144) Bool)

(assert (=> b!2948934 (= res!1216813 (isEmptyExpr!347 lt!1031649))))

(declare-fun b!2948935 () Bool)

(assert (=> b!2948935 (= e!1857498 e!1857501)))

(declare-fun res!1216809 () Bool)

(assert (=> b!2948935 (=> res!1216809 e!1857501)))

(assert (=> b!2948935 (= res!1216809 (not (matchR!4026 lt!1031648 s!11993)))))

(assert (=> b!2948935 (= lt!1031648 (Concat!14465 lt!1031653 lt!1031649))))

(declare-fun b!2948936 () Bool)

(declare-fun res!1216808 () Bool)

(assert (=> b!2948936 (=> res!1216808 e!1857498)))

(assert (=> b!2948936 (= res!1216808 (isEmptyExpr!347 lt!1031653))))

(declare-fun b!2948937 () Bool)

(declare-fun res!1216811 () Bool)

(assert (=> b!2948937 (=> res!1216811 e!1857497)))

(declare-fun isEmpty!19146 (List!35009) Bool)

(assert (=> b!2948937 (= res!1216811 (isEmpty!19146 s!11993))))

(declare-fun b!2948938 () Bool)

(declare-fun tp!942877 () Bool)

(declare-fun tp!942879 () Bool)

(assert (=> b!2948938 (= e!1857499 (and tp!942877 tp!942879))))

(assert (= (and start!286070 res!1216807) b!2948930))

(assert (= (and b!2948930 (not res!1216814)) b!2948937))

(assert (= (and b!2948937 (not res!1216811)) b!2948927))

(assert (= (and b!2948927 (not res!1216810)) b!2948926))

(assert (= (and b!2948926 (not res!1216812)) b!2948936))

(assert (= (and b!2948936 (not res!1216808)) b!2948934))

(assert (= (and b!2948934 (not res!1216813)) b!2948935))

(assert (= (and b!2948935 (not res!1216809)) b!2948928))

(assert (= (and start!286070 (is-ElementMatch!9144 r!17423)) b!2948933))

(assert (= (and start!286070 (is-Concat!14465 r!17423)) b!2948938))

(assert (= (and start!286070 (is-Star!9144 r!17423)) b!2948931))

(assert (= (and start!286070 (is-Union!9144 r!17423)) b!2948929))

(assert (= (and start!286070 (is-Cons!34885 s!11993)) b!2948932))

(declare-fun m!3328801 () Bool)

(assert (=> b!2948930 m!3328801))

(declare-fun m!3328803 () Bool)

(assert (=> b!2948930 m!3328803))

(declare-fun m!3328805 () Bool)

(assert (=> b!2948930 m!3328805))

(declare-fun m!3328807 () Bool)

(assert (=> start!286070 m!3328807))

(declare-fun m!3328809 () Bool)

(assert (=> b!2948934 m!3328809))

(declare-fun m!3328811 () Bool)

(assert (=> b!2948937 m!3328811))

(declare-fun m!3328813 () Bool)

(assert (=> b!2948926 m!3328813))

(declare-fun m!3328815 () Bool)

(assert (=> b!2948928 m!3328815))

(declare-fun m!3328817 () Bool)

(assert (=> b!2948928 m!3328817))

(declare-fun m!3328819 () Bool)

(assert (=> b!2948928 m!3328819))

(declare-fun m!3328821 () Bool)

(assert (=> b!2948936 m!3328821))

(declare-fun m!3328823 () Bool)

(assert (=> b!2948935 m!3328823))

(declare-fun m!3328825 () Bool)

(assert (=> b!2948927 m!3328825))

(declare-fun m!3328827 () Bool)

(assert (=> b!2948927 m!3328827))

(declare-fun m!3328829 () Bool)

(assert (=> b!2948927 m!3328829))

(push 1)

(assert (not b!2948936))

(assert (not b!2948930))

(assert tp_is_empty!15851)

(assert (not b!2948935))

(assert (not b!2948934))

(assert (not b!2948927))

(assert (not b!2948938))

(assert (not b!2948932))

(assert (not start!286070))

(assert (not b!2948931))

(assert (not b!2948926))

(assert (not b!2948928))

(assert (not b!2948929))

(assert (not b!2948937))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!840822 () Bool)

(assert (=> d!840822 (= (isEmpty!19146 s!11993) (is-Nil!34885 s!11993))))

(assert (=> b!2948937 d!840822))

(declare-fun d!840824 () Bool)

(assert (=> d!840824 (= (isEmptyLang!266 lt!1031649) (is-EmptyLang!9144 lt!1031649))))

(assert (=> b!2948926 d!840824))

(declare-fun d!840826 () Bool)

(assert (=> d!840826 (= (isEmptyLang!266 lt!1031653) (is-EmptyLang!9144 lt!1031653))))

(assert (=> b!2948927 d!840826))

(declare-fun b!2949077 () Bool)

(declare-fun e!1857590 () Regex!9144)

(declare-fun lt!1031686 () Regex!9144)

(assert (=> b!2949077 (= e!1857590 lt!1031686)))

(declare-fun c!482661 () Bool)

(declare-fun lt!1031688 () Regex!9144)

(declare-fun c!482664 () Bool)

(declare-fun lt!1031689 () Regex!9144)

(declare-fun call!194798 () Bool)

(declare-fun bm!194791 () Bool)

(declare-fun lt!1031687 () Regex!9144)

(assert (=> bm!194791 (= call!194798 (isEmptyLang!266 (ite c!482664 lt!1031688 (ite c!482661 lt!1031687 lt!1031689))))))

(declare-fun b!2949078 () Bool)

(declare-fun e!1857589 () Regex!9144)

(assert (=> b!2949078 (= e!1857589 EmptyLang!9144)))

(declare-fun bm!194792 () Bool)

(declare-fun call!194799 () Regex!9144)

(assert (=> bm!194792 (= call!194799 (simplify!149 (ite c!482661 (regOne!18801 (regTwo!18800 r!17423)) (regTwo!18800 (regTwo!18800 r!17423)))))))

(declare-fun b!2949079 () Bool)

(declare-fun c!482655 () Bool)

(declare-fun call!194801 () Bool)

(assert (=> b!2949079 (= c!482655 call!194801)))

(declare-fun e!1857595 () Regex!9144)

(declare-fun e!1857592 () Regex!9144)

(assert (=> b!2949079 (= e!1857595 e!1857592)))

(declare-fun b!2949080 () Bool)

(declare-fun e!1857594 () Regex!9144)

(assert (=> b!2949080 (= e!1857594 EmptyLang!9144)))

(declare-fun b!2949081 () Bool)

(declare-fun c!482658 () Bool)

(assert (=> b!2949081 (= c!482658 (is-EmptyExpr!9144 (regTwo!18800 r!17423)))))

(declare-fun e!1857584 () Regex!9144)

(declare-fun e!1857585 () Regex!9144)

(assert (=> b!2949081 (= e!1857584 e!1857585)))

(declare-fun b!2949082 () Bool)

(declare-fun e!1857593 () Regex!9144)

(assert (=> b!2949082 (= e!1857593 (Star!9144 lt!1031688))))

(declare-fun b!2949084 () Bool)

(assert (=> b!2949084 (= e!1857584 (regTwo!18800 r!17423))))

(declare-fun b!2949085 () Bool)

(assert (=> b!2949085 (= c!482661 (is-Union!9144 (regTwo!18800 r!17423)))))

(declare-fun e!1857588 () Regex!9144)

(declare-fun e!1857596 () Regex!9144)

(assert (=> b!2949085 (= e!1857588 e!1857596)))

(declare-fun bm!194793 () Bool)

(declare-fun call!194800 () Regex!9144)

(assert (=> bm!194793 (= call!194800 (simplify!149 (ite c!482664 (reg!9473 (regTwo!18800 r!17423)) (ite c!482661 (regTwo!18801 (regTwo!18800 r!17423)) (regOne!18800 (regTwo!18800 r!17423))))))))

(declare-fun b!2949086 () Bool)

(assert (=> b!2949086 (= e!1857596 e!1857594)))

(declare-fun call!194797 () Regex!9144)

(assert (=> b!2949086 (= lt!1031686 call!194797)))

(assert (=> b!2949086 (= lt!1031689 call!194799)))

(declare-fun res!1216868 () Bool)

(declare-fun call!194802 () Bool)

(assert (=> b!2949086 (= res!1216868 call!194802)))

(declare-fun e!1857591 () Bool)

(assert (=> b!2949086 (=> res!1216868 e!1857591)))

(declare-fun c!482662 () Bool)

(assert (=> b!2949086 (= c!482662 e!1857591)))

(declare-fun bm!194794 () Bool)

(declare-fun lt!1031685 () Regex!9144)

(assert (=> bm!194794 (= call!194802 (isEmptyLang!266 (ite c!482661 lt!1031685 lt!1031686)))))

(declare-fun b!2949087 () Bool)

(declare-fun c!482656 () Bool)

(declare-fun call!194796 () Bool)

(assert (=> b!2949087 (= c!482656 call!194796)))

(declare-fun e!1857583 () Regex!9144)

(assert (=> b!2949087 (= e!1857594 e!1857583)))

(declare-fun b!2949088 () Bool)

(declare-fun e!1857586 () Bool)

(declare-fun lt!1031684 () Regex!9144)

(declare-fun nullable!2904 (Regex!9144) Bool)

(assert (=> b!2949088 (= e!1857586 (= (nullable!2904 lt!1031684) (nullable!2904 (regTwo!18800 r!17423))))))

(declare-fun bm!194795 () Bool)

(assert (=> bm!194795 (= call!194801 call!194798)))

(declare-fun b!2949089 () Bool)

(declare-fun c!482659 () Bool)

(declare-fun e!1857587 () Bool)

(assert (=> b!2949089 (= c!482659 e!1857587)))

(declare-fun res!1216866 () Bool)

(assert (=> b!2949089 (=> res!1216866 e!1857587)))

(assert (=> b!2949089 (= res!1216866 call!194798)))

(assert (=> b!2949089 (= lt!1031688 call!194800)))

(assert (=> b!2949089 (= e!1857588 e!1857593)))

(declare-fun bm!194796 () Bool)

(assert (=> bm!194796 (= call!194796 (isEmptyExpr!347 (ite c!482664 lt!1031688 lt!1031686)))))

(declare-fun b!2949090 () Bool)

(assert (=> b!2949090 (= e!1857595 lt!1031687)))

(declare-fun b!2949091 () Bool)

(assert (=> b!2949091 (= e!1857590 (Concat!14465 lt!1031686 lt!1031689))))

(declare-fun bm!194797 () Bool)

(assert (=> bm!194797 (= call!194797 call!194800)))

(declare-fun b!2949092 () Bool)

(assert (=> b!2949092 (= e!1857585 EmptyExpr!9144)))

(declare-fun b!2949093 () Bool)

(assert (=> b!2949093 (= e!1857589 e!1857584)))

(declare-fun c!482660 () Bool)

(assert (=> b!2949093 (= c!482660 (is-ElementMatch!9144 (regTwo!18800 r!17423)))))

(declare-fun b!2949094 () Bool)

(assert (=> b!2949094 (= e!1857596 e!1857595)))

(assert (=> b!2949094 (= lt!1031685 call!194799)))

(assert (=> b!2949094 (= lt!1031687 call!194797)))

(declare-fun c!482663 () Bool)

(assert (=> b!2949094 (= c!482663 call!194802)))

(declare-fun b!2949095 () Bool)

(assert (=> b!2949095 (= e!1857592 (Union!9144 lt!1031685 lt!1031687))))

(declare-fun b!2949096 () Bool)

(assert (=> b!2949096 (= e!1857583 lt!1031689)))

(declare-fun b!2949097 () Bool)

(assert (=> b!2949097 (= e!1857585 e!1857588)))

(assert (=> b!2949097 (= c!482664 (is-Star!9144 (regTwo!18800 r!17423)))))

(declare-fun b!2949083 () Bool)

(assert (=> b!2949083 (= e!1857587 call!194796)))

(declare-fun d!840828 () Bool)

(assert (=> d!840828 e!1857586))

(declare-fun res!1216867 () Bool)

(assert (=> d!840828 (=> (not res!1216867) (not e!1857586))))

(assert (=> d!840828 (= res!1216867 (validRegex!3877 lt!1031684))))

(assert (=> d!840828 (= lt!1031684 e!1857589)))

(declare-fun c!482654 () Bool)

(assert (=> d!840828 (= c!482654 (is-EmptyLang!9144 (regTwo!18800 r!17423)))))

(assert (=> d!840828 (validRegex!3877 (regTwo!18800 r!17423))))

(assert (=> d!840828 (= (simplify!149 (regTwo!18800 r!17423)) lt!1031684)))

(declare-fun b!2949098 () Bool)

(assert (=> b!2949098 (= e!1857591 call!194801)))

(declare-fun b!2949099 () Bool)

(assert (=> b!2949099 (= e!1857592 lt!1031685)))

(declare-fun b!2949100 () Bool)

(assert (=> b!2949100 (= e!1857593 EmptyExpr!9144)))

(declare-fun b!2949101 () Bool)

(assert (=> b!2949101 (= e!1857583 e!1857590)))

(declare-fun c!482657 () Bool)

(assert (=> b!2949101 (= c!482657 (isEmptyExpr!347 lt!1031689))))

(assert (= (and d!840828 c!482654) b!2949078))

(assert (= (and d!840828 (not c!482654)) b!2949093))

(assert (= (and b!2949093 c!482660) b!2949084))

(assert (= (and b!2949093 (not c!482660)) b!2949081))

(assert (= (and b!2949081 c!482658) b!2949092))

(assert (= (and b!2949081 (not c!482658)) b!2949097))

(assert (= (and b!2949097 c!482664) b!2949089))

(assert (= (and b!2949097 (not c!482664)) b!2949085))

(assert (= (and b!2949089 (not res!1216866)) b!2949083))

(assert (= (and b!2949089 c!482659) b!2949100))

(assert (= (and b!2949089 (not c!482659)) b!2949082))

(assert (= (and b!2949085 c!482661) b!2949094))

(assert (= (and b!2949085 (not c!482661)) b!2949086))

(assert (= (and b!2949094 c!482663) b!2949090))

(assert (= (and b!2949094 (not c!482663)) b!2949079))

(assert (= (and b!2949079 c!482655) b!2949099))

(assert (= (and b!2949079 (not c!482655)) b!2949095))

(assert (= (and b!2949086 (not res!1216868)) b!2949098))

(assert (= (and b!2949086 c!482662) b!2949080))

(assert (= (and b!2949086 (not c!482662)) b!2949087))

(assert (= (and b!2949087 c!482656) b!2949096))

(assert (= (and b!2949087 (not c!482656)) b!2949101))

(assert (= (and b!2949101 c!482657) b!2949077))

(assert (= (and b!2949101 (not c!482657)) b!2949091))

(assert (= (or b!2949094 b!2949086) bm!194792))

(assert (= (or b!2949094 b!2949086) bm!194797))

(assert (= (or b!2949079 b!2949098) bm!194795))

(assert (= (or b!2949094 b!2949086) bm!194794))

(assert (= (or b!2949083 b!2949087) bm!194796))

(assert (= (or b!2949089 bm!194797) bm!194793))

(assert (= (or b!2949089 bm!194795) bm!194791))

(assert (= (and d!840828 res!1216867) b!2949088))

(declare-fun m!3328867 () Bool)

(assert (=> bm!194793 m!3328867))

(declare-fun m!3328869 () Bool)

(assert (=> bm!194791 m!3328869))

(declare-fun m!3328871 () Bool)

(assert (=> d!840828 m!3328871))

(assert (=> d!840828 m!3328815))

(declare-fun m!3328873 () Bool)

(assert (=> bm!194792 m!3328873))

(declare-fun m!3328875 () Bool)

(assert (=> b!2949088 m!3328875))

(declare-fun m!3328877 () Bool)

(assert (=> b!2949088 m!3328877))

(declare-fun m!3328879 () Bool)

(assert (=> b!2949101 m!3328879))

(declare-fun m!3328881 () Bool)

(assert (=> bm!194794 m!3328881))

(declare-fun m!3328883 () Bool)

(assert (=> bm!194796 m!3328883))

(assert (=> b!2948927 d!840828))

(declare-fun b!2949102 () Bool)

(declare-fun e!1857604 () Regex!9144)

(declare-fun lt!1031692 () Regex!9144)

(assert (=> b!2949102 (= e!1857604 lt!1031692)))

(declare-fun lt!1031695 () Regex!9144)

(declare-fun call!194805 () Bool)

(declare-fun c!482672 () Bool)

(declare-fun lt!1031693 () Regex!9144)

(declare-fun c!482675 () Bool)

(declare-fun bm!194798 () Bool)

(declare-fun lt!1031694 () Regex!9144)

(assert (=> bm!194798 (= call!194805 (isEmptyLang!266 (ite c!482675 lt!1031694 (ite c!482672 lt!1031693 lt!1031695))))))

(declare-fun b!2949103 () Bool)

(declare-fun e!1857603 () Regex!9144)

(assert (=> b!2949103 (= e!1857603 EmptyLang!9144)))

(declare-fun bm!194799 () Bool)

(declare-fun call!194806 () Regex!9144)

(assert (=> bm!194799 (= call!194806 (simplify!149 (ite c!482672 (regOne!18801 (regOne!18800 r!17423)) (regTwo!18800 (regOne!18800 r!17423)))))))

(declare-fun b!2949104 () Bool)

(declare-fun c!482666 () Bool)

(declare-fun call!194808 () Bool)

(assert (=> b!2949104 (= c!482666 call!194808)))

(declare-fun e!1857609 () Regex!9144)

(declare-fun e!1857606 () Regex!9144)

(assert (=> b!2949104 (= e!1857609 e!1857606)))

(declare-fun b!2949105 () Bool)

(declare-fun e!1857608 () Regex!9144)

(assert (=> b!2949105 (= e!1857608 EmptyLang!9144)))

(declare-fun b!2949106 () Bool)

(declare-fun c!482669 () Bool)

(assert (=> b!2949106 (= c!482669 (is-EmptyExpr!9144 (regOne!18800 r!17423)))))

(declare-fun e!1857598 () Regex!9144)

(declare-fun e!1857599 () Regex!9144)

(assert (=> b!2949106 (= e!1857598 e!1857599)))

(declare-fun b!2949107 () Bool)

(declare-fun e!1857607 () Regex!9144)

(assert (=> b!2949107 (= e!1857607 (Star!9144 lt!1031694))))

(declare-fun b!2949109 () Bool)

(assert (=> b!2949109 (= e!1857598 (regOne!18800 r!17423))))

(declare-fun b!2949110 () Bool)

(assert (=> b!2949110 (= c!482672 (is-Union!9144 (regOne!18800 r!17423)))))

(declare-fun e!1857602 () Regex!9144)

(declare-fun e!1857610 () Regex!9144)

(assert (=> b!2949110 (= e!1857602 e!1857610)))

(declare-fun bm!194800 () Bool)

(declare-fun call!194807 () Regex!9144)

(assert (=> bm!194800 (= call!194807 (simplify!149 (ite c!482675 (reg!9473 (regOne!18800 r!17423)) (ite c!482672 (regTwo!18801 (regOne!18800 r!17423)) (regOne!18800 (regOne!18800 r!17423))))))))

(declare-fun b!2949111 () Bool)

(assert (=> b!2949111 (= e!1857610 e!1857608)))

(declare-fun call!194804 () Regex!9144)

(assert (=> b!2949111 (= lt!1031692 call!194804)))

(assert (=> b!2949111 (= lt!1031695 call!194806)))

(declare-fun res!1216871 () Bool)

(declare-fun call!194809 () Bool)

(assert (=> b!2949111 (= res!1216871 call!194809)))

(declare-fun e!1857605 () Bool)

(assert (=> b!2949111 (=> res!1216871 e!1857605)))

(declare-fun c!482673 () Bool)

(assert (=> b!2949111 (= c!482673 e!1857605)))

(declare-fun bm!194801 () Bool)

(declare-fun lt!1031691 () Regex!9144)

(assert (=> bm!194801 (= call!194809 (isEmptyLang!266 (ite c!482672 lt!1031691 lt!1031692)))))

(declare-fun b!2949112 () Bool)

(declare-fun c!482667 () Bool)

(declare-fun call!194803 () Bool)

(assert (=> b!2949112 (= c!482667 call!194803)))

(declare-fun e!1857597 () Regex!9144)

(assert (=> b!2949112 (= e!1857608 e!1857597)))

(declare-fun b!2949113 () Bool)

(declare-fun e!1857600 () Bool)

(declare-fun lt!1031690 () Regex!9144)

(assert (=> b!2949113 (= e!1857600 (= (nullable!2904 lt!1031690) (nullable!2904 (regOne!18800 r!17423))))))

(declare-fun bm!194802 () Bool)

(assert (=> bm!194802 (= call!194808 call!194805)))

(declare-fun b!2949114 () Bool)

(declare-fun c!482670 () Bool)

(declare-fun e!1857601 () Bool)

(assert (=> b!2949114 (= c!482670 e!1857601)))

(declare-fun res!1216869 () Bool)

(assert (=> b!2949114 (=> res!1216869 e!1857601)))

(assert (=> b!2949114 (= res!1216869 call!194805)))

(assert (=> b!2949114 (= lt!1031694 call!194807)))

(assert (=> b!2949114 (= e!1857602 e!1857607)))

(declare-fun bm!194803 () Bool)

(assert (=> bm!194803 (= call!194803 (isEmptyExpr!347 (ite c!482675 lt!1031694 lt!1031692)))))

(declare-fun b!2949115 () Bool)

(assert (=> b!2949115 (= e!1857609 lt!1031693)))

(declare-fun b!2949116 () Bool)

(assert (=> b!2949116 (= e!1857604 (Concat!14465 lt!1031692 lt!1031695))))

(declare-fun bm!194804 () Bool)

(assert (=> bm!194804 (= call!194804 call!194807)))

(declare-fun b!2949117 () Bool)

(assert (=> b!2949117 (= e!1857599 EmptyExpr!9144)))

(declare-fun b!2949118 () Bool)

(assert (=> b!2949118 (= e!1857603 e!1857598)))

(declare-fun c!482671 () Bool)

(assert (=> b!2949118 (= c!482671 (is-ElementMatch!9144 (regOne!18800 r!17423)))))

(declare-fun b!2949119 () Bool)

(assert (=> b!2949119 (= e!1857610 e!1857609)))

(assert (=> b!2949119 (= lt!1031691 call!194806)))

(assert (=> b!2949119 (= lt!1031693 call!194804)))

(declare-fun c!482674 () Bool)

(assert (=> b!2949119 (= c!482674 call!194809)))

(declare-fun b!2949120 () Bool)

(assert (=> b!2949120 (= e!1857606 (Union!9144 lt!1031691 lt!1031693))))

(declare-fun b!2949121 () Bool)

(assert (=> b!2949121 (= e!1857597 lt!1031695)))

(declare-fun b!2949122 () Bool)

(assert (=> b!2949122 (= e!1857599 e!1857602)))

(assert (=> b!2949122 (= c!482675 (is-Star!9144 (regOne!18800 r!17423)))))

(declare-fun b!2949108 () Bool)

(assert (=> b!2949108 (= e!1857601 call!194803)))

(declare-fun d!840840 () Bool)

(assert (=> d!840840 e!1857600))

(declare-fun res!1216870 () Bool)

(assert (=> d!840840 (=> (not res!1216870) (not e!1857600))))

(assert (=> d!840840 (= res!1216870 (validRegex!3877 lt!1031690))))

(assert (=> d!840840 (= lt!1031690 e!1857603)))

(declare-fun c!482665 () Bool)

(assert (=> d!840840 (= c!482665 (is-EmptyLang!9144 (regOne!18800 r!17423)))))

(assert (=> d!840840 (validRegex!3877 (regOne!18800 r!17423))))

(assert (=> d!840840 (= (simplify!149 (regOne!18800 r!17423)) lt!1031690)))

(declare-fun b!2949123 () Bool)

(assert (=> b!2949123 (= e!1857605 call!194808)))

(declare-fun b!2949124 () Bool)

(assert (=> b!2949124 (= e!1857606 lt!1031691)))

(declare-fun b!2949125 () Bool)

(assert (=> b!2949125 (= e!1857607 EmptyExpr!9144)))

(declare-fun b!2949126 () Bool)

(assert (=> b!2949126 (= e!1857597 e!1857604)))

(declare-fun c!482668 () Bool)

(assert (=> b!2949126 (= c!482668 (isEmptyExpr!347 lt!1031695))))

(assert (= (and d!840840 c!482665) b!2949103))

(assert (= (and d!840840 (not c!482665)) b!2949118))

(assert (= (and b!2949118 c!482671) b!2949109))

(assert (= (and b!2949118 (not c!482671)) b!2949106))

(assert (= (and b!2949106 c!482669) b!2949117))

(assert (= (and b!2949106 (not c!482669)) b!2949122))

(assert (= (and b!2949122 c!482675) b!2949114))

(assert (= (and b!2949122 (not c!482675)) b!2949110))

(assert (= (and b!2949114 (not res!1216869)) b!2949108))

(assert (= (and b!2949114 c!482670) b!2949125))

(assert (= (and b!2949114 (not c!482670)) b!2949107))

(assert (= (and b!2949110 c!482672) b!2949119))

(assert (= (and b!2949110 (not c!482672)) b!2949111))

(assert (= (and b!2949119 c!482674) b!2949115))

(assert (= (and b!2949119 (not c!482674)) b!2949104))

(assert (= (and b!2949104 c!482666) b!2949124))

(assert (= (and b!2949104 (not c!482666)) b!2949120))

(assert (= (and b!2949111 (not res!1216871)) b!2949123))

(assert (= (and b!2949111 c!482673) b!2949105))

(assert (= (and b!2949111 (not c!482673)) b!2949112))

(assert (= (and b!2949112 c!482667) b!2949121))

(assert (= (and b!2949112 (not c!482667)) b!2949126))

(assert (= (and b!2949126 c!482668) b!2949102))

(assert (= (and b!2949126 (not c!482668)) b!2949116))

(assert (= (or b!2949119 b!2949111) bm!194799))

(assert (= (or b!2949119 b!2949111) bm!194804))

(assert (= (or b!2949104 b!2949123) bm!194802))

(assert (= (or b!2949119 b!2949111) bm!194801))

(assert (= (or b!2949108 b!2949112) bm!194803))

(assert (= (or b!2949114 bm!194804) bm!194800))

(assert (= (or b!2949114 bm!194802) bm!194798))

(assert (= (and d!840840 res!1216870) b!2949113))

(declare-fun m!3328885 () Bool)

(assert (=> bm!194800 m!3328885))

(declare-fun m!3328887 () Bool)

(assert (=> bm!194798 m!3328887))

(declare-fun m!3328889 () Bool)

(assert (=> d!840840 m!3328889))

(declare-fun m!3328891 () Bool)

(assert (=> d!840840 m!3328891))

(declare-fun m!3328893 () Bool)

(assert (=> bm!194799 m!3328893))

(declare-fun m!3328895 () Bool)

(assert (=> b!2949113 m!3328895))

(declare-fun m!3328897 () Bool)

(assert (=> b!2949113 m!3328897))

(declare-fun m!3328899 () Bool)

(assert (=> b!2949126 m!3328899))

(declare-fun m!3328901 () Bool)

(assert (=> bm!194801 m!3328901))

(declare-fun m!3328903 () Bool)

(assert (=> bm!194803 m!3328903))

(assert (=> b!2948927 d!840840))

(declare-fun b!2949162 () Bool)

(assert (=> b!2949162 true))

(assert (=> b!2949162 true))

(declare-fun bs!525623 () Bool)

(declare-fun b!2949161 () Bool)

(assert (= bs!525623 (and b!2949161 b!2949162)))

(declare-fun lambda!109686 () Int)

(declare-fun lambda!109685 () Int)

(assert (=> bs!525623 (not (= lambda!109686 lambda!109685))))

(assert (=> b!2949161 true))

(assert (=> b!2949161 true))

(declare-fun b!2949159 () Bool)

(declare-fun e!1857630 () Bool)

(declare-fun e!1857635 () Bool)

(assert (=> b!2949159 (= e!1857630 e!1857635)))

(declare-fun c!482687 () Bool)

(assert (=> b!2949159 (= c!482687 (is-Star!9144 r!17423))))

(declare-fun bm!194809 () Bool)

(declare-fun call!194815 () Bool)

(assert (=> bm!194809 (= call!194815 (isEmpty!19146 s!11993))))

(declare-fun b!2949160 () Bool)

(declare-fun c!482684 () Bool)

(assert (=> b!2949160 (= c!482684 (is-ElementMatch!9144 r!17423))))

(declare-fun e!1857633 () Bool)

(declare-fun e!1857632 () Bool)

(assert (=> b!2949160 (= e!1857633 e!1857632)))

(declare-fun call!194814 () Bool)

(assert (=> b!2949161 (= e!1857635 call!194814)))

(declare-fun e!1857634 () Bool)

(assert (=> b!2949162 (= e!1857634 call!194814)))

(declare-fun b!2949163 () Bool)

(declare-fun res!1216888 () Bool)

(assert (=> b!2949163 (=> res!1216888 e!1857634)))

(assert (=> b!2949163 (= res!1216888 call!194815)))

(assert (=> b!2949163 (= e!1857635 e!1857634)))

(declare-fun d!840842 () Bool)

(declare-fun c!482685 () Bool)

(assert (=> d!840842 (= c!482685 (is-EmptyExpr!9144 r!17423))))

(declare-fun e!1857629 () Bool)

(assert (=> d!840842 (= (matchRSpec!1281 r!17423 s!11993) e!1857629)))

(declare-fun b!2949164 () Bool)

(assert (=> b!2949164 (= e!1857629 e!1857633)))

(declare-fun res!1216889 () Bool)

(assert (=> b!2949164 (= res!1216889 (not (is-EmptyLang!9144 r!17423)))))

(assert (=> b!2949164 (=> (not res!1216889) (not e!1857633))))

(declare-fun b!2949165 () Bool)

(assert (=> b!2949165 (= e!1857632 (= s!11993 (Cons!34885 (c!482616 r!17423) Nil!34885)))))

(declare-fun b!2949166 () Bool)

(declare-fun c!482686 () Bool)

(assert (=> b!2949166 (= c!482686 (is-Union!9144 r!17423))))

(assert (=> b!2949166 (= e!1857632 e!1857630)))

(declare-fun b!2949167 () Bool)

(declare-fun e!1857631 () Bool)

(assert (=> b!2949167 (= e!1857630 e!1857631)))

(declare-fun res!1216890 () Bool)

(assert (=> b!2949167 (= res!1216890 (matchRSpec!1281 (regOne!18801 r!17423) s!11993))))

(assert (=> b!2949167 (=> res!1216890 e!1857631)))

(declare-fun bm!194810 () Bool)

(declare-fun Exists!1478 (Int) Bool)

(assert (=> bm!194810 (= call!194814 (Exists!1478 (ite c!482687 lambda!109685 lambda!109686)))))

(declare-fun b!2949168 () Bool)

(assert (=> b!2949168 (= e!1857631 (matchRSpec!1281 (regTwo!18801 r!17423) s!11993))))

(declare-fun b!2949169 () Bool)

(assert (=> b!2949169 (= e!1857629 call!194815)))

(assert (= (and d!840842 c!482685) b!2949169))

(assert (= (and d!840842 (not c!482685)) b!2949164))

(assert (= (and b!2949164 res!1216889) b!2949160))

(assert (= (and b!2949160 c!482684) b!2949165))

(assert (= (and b!2949160 (not c!482684)) b!2949166))

(assert (= (and b!2949166 c!482686) b!2949167))

(assert (= (and b!2949166 (not c!482686)) b!2949159))

(assert (= (and b!2949167 (not res!1216890)) b!2949168))

(assert (= (and b!2949159 c!482687) b!2949163))

(assert (= (and b!2949159 (not c!482687)) b!2949161))

(assert (= (and b!2949163 (not res!1216888)) b!2949162))

(assert (= (or b!2949162 b!2949161) bm!194810))

(assert (= (or b!2949169 b!2949163) bm!194809))

(assert (=> bm!194809 m!3328811))

(declare-fun m!3328905 () Bool)

(assert (=> b!2949167 m!3328905))

(declare-fun m!3328907 () Bool)

(assert (=> bm!194810 m!3328907))

(declare-fun m!3328909 () Bool)

(assert (=> b!2949168 m!3328909))

(assert (=> b!2948930 d!840842))

(declare-fun b!2949202 () Bool)

(declare-fun res!1216908 () Bool)

(declare-fun e!1857651 () Bool)

(assert (=> b!2949202 (=> res!1216908 e!1857651)))

(declare-fun e!1857656 () Bool)

(assert (=> b!2949202 (= res!1216908 e!1857656)))

(declare-fun res!1216909 () Bool)

(assert (=> b!2949202 (=> (not res!1216909) (not e!1857656))))

(declare-fun lt!1031698 () Bool)

(assert (=> b!2949202 (= res!1216909 lt!1031698)))

(declare-fun b!2949203 () Bool)

(declare-fun head!6566 (List!35009) C!18474)

(assert (=> b!2949203 (= e!1857656 (= (head!6566 s!11993) (c!482616 r!17423)))))

(declare-fun b!2949204 () Bool)

(declare-fun e!1857650 () Bool)

(declare-fun e!1857654 () Bool)

(assert (=> b!2949204 (= e!1857650 e!1857654)))

(declare-fun res!1216912 () Bool)

(assert (=> b!2949204 (=> res!1216912 e!1857654)))

(declare-fun call!194818 () Bool)

(assert (=> b!2949204 (= res!1216912 call!194818)))

(declare-fun b!2949205 () Bool)

(declare-fun e!1857653 () Bool)

(assert (=> b!2949205 (= e!1857653 (nullable!2904 r!17423))))

(declare-fun b!2949206 () Bool)

(declare-fun e!1857652 () Bool)

(assert (=> b!2949206 (= e!1857652 (not lt!1031698))))

(declare-fun b!2949207 () Bool)

(assert (=> b!2949207 (= e!1857654 (not (= (head!6566 s!11993) (c!482616 r!17423))))))

(declare-fun d!840844 () Bool)

(declare-fun e!1857655 () Bool)

(assert (=> d!840844 e!1857655))

(declare-fun c!482696 () Bool)

(assert (=> d!840844 (= c!482696 (is-EmptyExpr!9144 r!17423))))

(assert (=> d!840844 (= lt!1031698 e!1857653)))

(declare-fun c!482695 () Bool)

(assert (=> d!840844 (= c!482695 (isEmpty!19146 s!11993))))

(assert (=> d!840844 (validRegex!3877 r!17423)))

(assert (=> d!840844 (= (matchR!4026 r!17423 s!11993) lt!1031698)))

(declare-fun b!2949208 () Bool)

(assert (=> b!2949208 (= e!1857655 e!1857652)))

(declare-fun c!482694 () Bool)

(assert (=> b!2949208 (= c!482694 (is-EmptyLang!9144 r!17423))))

(declare-fun b!2949209 () Bool)

(declare-fun derivativeStep!2507 (Regex!9144 C!18474) Regex!9144)

(declare-fun tail!4792 (List!35009) List!35009)

(assert (=> b!2949209 (= e!1857653 (matchR!4026 (derivativeStep!2507 r!17423 (head!6566 s!11993)) (tail!4792 s!11993)))))

(declare-fun b!2949210 () Bool)

(declare-fun res!1216910 () Bool)

(assert (=> b!2949210 (=> (not res!1216910) (not e!1857656))))

(assert (=> b!2949210 (= res!1216910 (not call!194818))))

(declare-fun b!2949211 () Bool)

(declare-fun res!1216914 () Bool)

(assert (=> b!2949211 (=> res!1216914 e!1857651)))

(assert (=> b!2949211 (= res!1216914 (not (is-ElementMatch!9144 r!17423)))))

(assert (=> b!2949211 (= e!1857652 e!1857651)))

(declare-fun b!2949212 () Bool)

(assert (=> b!2949212 (= e!1857651 e!1857650)))

(declare-fun res!1216907 () Bool)

(assert (=> b!2949212 (=> (not res!1216907) (not e!1857650))))

(assert (=> b!2949212 (= res!1216907 (not lt!1031698))))

(declare-fun bm!194813 () Bool)

(assert (=> bm!194813 (= call!194818 (isEmpty!19146 s!11993))))

(declare-fun b!2949213 () Bool)

(declare-fun res!1216911 () Bool)

(assert (=> b!2949213 (=> res!1216911 e!1857654)))

(assert (=> b!2949213 (= res!1216911 (not (isEmpty!19146 (tail!4792 s!11993))))))

(declare-fun b!2949214 () Bool)

(declare-fun res!1216913 () Bool)

(assert (=> b!2949214 (=> (not res!1216913) (not e!1857656))))

(assert (=> b!2949214 (= res!1216913 (isEmpty!19146 (tail!4792 s!11993)))))

(declare-fun b!2949215 () Bool)

(assert (=> b!2949215 (= e!1857655 (= lt!1031698 call!194818))))

(assert (= (and d!840844 c!482695) b!2949205))

(assert (= (and d!840844 (not c!482695)) b!2949209))

(assert (= (and d!840844 c!482696) b!2949215))

(assert (= (and d!840844 (not c!482696)) b!2949208))

(assert (= (and b!2949208 c!482694) b!2949206))

(assert (= (and b!2949208 (not c!482694)) b!2949211))

(assert (= (and b!2949211 (not res!1216914)) b!2949202))

(assert (= (and b!2949202 res!1216909) b!2949210))

(assert (= (and b!2949210 res!1216910) b!2949214))

(assert (= (and b!2949214 res!1216913) b!2949203))

(assert (= (and b!2949202 (not res!1216908)) b!2949212))

(assert (= (and b!2949212 res!1216907) b!2949204))

(assert (= (and b!2949204 (not res!1216912)) b!2949213))

(assert (= (and b!2949213 (not res!1216911)) b!2949207))

(assert (= (or b!2949215 b!2949204 b!2949210) bm!194813))

(declare-fun m!3328911 () Bool)

(assert (=> b!2949207 m!3328911))

(declare-fun m!3328913 () Bool)

(assert (=> b!2949214 m!3328913))

(assert (=> b!2949214 m!3328913))

(declare-fun m!3328915 () Bool)

(assert (=> b!2949214 m!3328915))

(assert (=> b!2949209 m!3328911))

(assert (=> b!2949209 m!3328911))

(declare-fun m!3328917 () Bool)

(assert (=> b!2949209 m!3328917))

(assert (=> b!2949209 m!3328913))

(assert (=> b!2949209 m!3328917))

(assert (=> b!2949209 m!3328913))

(declare-fun m!3328919 () Bool)

(assert (=> b!2949209 m!3328919))

(assert (=> b!2949203 m!3328911))

(assert (=> d!840844 m!3328811))

(assert (=> d!840844 m!3328807))

(assert (=> bm!194813 m!3328811))

(assert (=> b!2949213 m!3328913))

(assert (=> b!2949213 m!3328913))

(assert (=> b!2949213 m!3328915))

(declare-fun m!3328921 () Bool)

(assert (=> b!2949205 m!3328921))

(assert (=> b!2948930 d!840844))

(declare-fun d!840846 () Bool)

(assert (=> d!840846 (= (matchR!4026 r!17423 s!11993) (matchRSpec!1281 r!17423 s!11993))))

(declare-fun lt!1031701 () Unit!48667)

(declare-fun choose!17422 (Regex!9144 List!35009) Unit!48667)

(assert (=> d!840846 (= lt!1031701 (choose!17422 r!17423 s!11993))))

(assert (=> d!840846 (validRegex!3877 r!17423)))

(assert (=> d!840846 (= (mainMatchTheorem!1281 r!17423 s!11993) lt!1031701)))

(declare-fun bs!525624 () Bool)

(assert (= bs!525624 d!840846))

(assert (=> bs!525624 m!3328803))

(assert (=> bs!525624 m!3328801))

(declare-fun m!3328923 () Bool)

(assert (=> bs!525624 m!3328923))

(assert (=> bs!525624 m!3328807))

(assert (=> b!2948930 d!840846))

(declare-fun bm!194824 () Bool)

(declare-fun c!482701 () Bool)

(declare-fun c!482702 () Bool)

(declare-fun call!194829 () Bool)

(assert (=> bm!194824 (= call!194829 (validRegex!3877 (ite c!482701 (reg!9473 r!17423) (ite c!482702 (regTwo!18801 r!17423) (regOne!18800 r!17423)))))))

(declare-fun b!2949244 () Bool)

(declare-fun e!1857675 () Bool)

(assert (=> b!2949244 (= e!1857675 call!194829)))

(declare-fun b!2949245 () Bool)

(declare-fun e!1857680 () Bool)

(declare-fun call!194831 () Bool)

(assert (=> b!2949245 (= e!1857680 call!194831)))

(declare-fun b!2949246 () Bool)

(declare-fun res!1216938 () Bool)

(declare-fun e!1857677 () Bool)

(assert (=> b!2949246 (=> res!1216938 e!1857677)))

(assert (=> b!2949246 (= res!1216938 (not (is-Concat!14465 r!17423)))))

(declare-fun e!1857679 () Bool)

(assert (=> b!2949246 (= e!1857679 e!1857677)))

(declare-fun b!2949247 () Bool)

(declare-fun res!1216939 () Bool)

(declare-fun e!1857676 () Bool)

(assert (=> b!2949247 (=> (not res!1216939) (not e!1857676))))

(assert (=> b!2949247 (= res!1216939 call!194831)))

(assert (=> b!2949247 (= e!1857679 e!1857676)))

(declare-fun d!840848 () Bool)

(declare-fun res!1216936 () Bool)

(declare-fun e!1857681 () Bool)

(assert (=> d!840848 (=> res!1216936 e!1857681)))

(assert (=> d!840848 (= res!1216936 (is-ElementMatch!9144 r!17423))))

(assert (=> d!840848 (= (validRegex!3877 r!17423) e!1857681)))

(declare-fun bm!194825 () Bool)

(assert (=> bm!194825 (= call!194831 (validRegex!3877 (ite c!482702 (regOne!18801 r!17423) (regTwo!18800 r!17423))))))

(declare-fun b!2949248 () Bool)

(declare-fun e!1857678 () Bool)

(assert (=> b!2949248 (= e!1857681 e!1857678)))

(assert (=> b!2949248 (= c!482701 (is-Star!9144 r!17423))))

(declare-fun b!2949249 () Bool)

(declare-fun call!194830 () Bool)

(assert (=> b!2949249 (= e!1857676 call!194830)))

(declare-fun b!2949250 () Bool)

(assert (=> b!2949250 (= e!1857678 e!1857675)))

(declare-fun res!1216937 () Bool)

(assert (=> b!2949250 (= res!1216937 (not (nullable!2904 (reg!9473 r!17423))))))

(assert (=> b!2949250 (=> (not res!1216937) (not e!1857675))))

(declare-fun b!2949251 () Bool)

(assert (=> b!2949251 (= e!1857677 e!1857680)))

(declare-fun res!1216935 () Bool)

(assert (=> b!2949251 (=> (not res!1216935) (not e!1857680))))

(assert (=> b!2949251 (= res!1216935 call!194830)))

(declare-fun bm!194826 () Bool)

(assert (=> bm!194826 (= call!194830 call!194829)))

(declare-fun b!2949252 () Bool)

(assert (=> b!2949252 (= e!1857678 e!1857679)))

(assert (=> b!2949252 (= c!482702 (is-Union!9144 r!17423))))

(assert (= (and d!840848 (not res!1216936)) b!2949248))

(assert (= (and b!2949248 c!482701) b!2949250))

(assert (= (and b!2949248 (not c!482701)) b!2949252))

(assert (= (and b!2949250 res!1216937) b!2949244))

(assert (= (and b!2949252 c!482702) b!2949247))

(assert (= (and b!2949252 (not c!482702)) b!2949246))

(assert (= (and b!2949247 res!1216939) b!2949249))

(assert (= (and b!2949246 (not res!1216938)) b!2949251))

(assert (= (and b!2949251 res!1216935) b!2949245))

(assert (= (or b!2949247 b!2949245) bm!194825))

(assert (= (or b!2949249 b!2949251) bm!194826))

(assert (= (or b!2949244 bm!194826) bm!194824))

(declare-fun m!3328925 () Bool)

(assert (=> bm!194824 m!3328925))

(declare-fun m!3328927 () Bool)

(assert (=> bm!194825 m!3328927))

(declare-fun m!3328929 () Bool)

(assert (=> b!2949250 m!3328929))

(assert (=> start!286070 d!840848))

(declare-fun d!840850 () Bool)

(assert (=> d!840850 (= (isEmptyExpr!347 lt!1031653) (is-EmptyExpr!9144 lt!1031653))))

(assert (=> b!2948936 d!840850))

(declare-fun d!840852 () Bool)

(assert (=> d!840852 (= (isEmptyExpr!347 lt!1031649) (is-EmptyExpr!9144 lt!1031649))))

(assert (=> b!2948934 d!840852))

(declare-fun b!2949253 () Bool)

(declare-fun res!1216941 () Bool)

(declare-fun e!1857683 () Bool)

(assert (=> b!2949253 (=> res!1216941 e!1857683)))

(declare-fun e!1857688 () Bool)

(assert (=> b!2949253 (= res!1216941 e!1857688)))

(declare-fun res!1216942 () Bool)

(assert (=> b!2949253 (=> (not res!1216942) (not e!1857688))))

(declare-fun lt!1031702 () Bool)

(assert (=> b!2949253 (= res!1216942 lt!1031702)))

(declare-fun b!2949254 () Bool)

(assert (=> b!2949254 (= e!1857688 (= (head!6566 s!11993) (c!482616 lt!1031648)))))

(declare-fun b!2949255 () Bool)

(declare-fun e!1857682 () Bool)

(declare-fun e!1857686 () Bool)

(assert (=> b!2949255 (= e!1857682 e!1857686)))

(declare-fun res!1216945 () Bool)

(assert (=> b!2949255 (=> res!1216945 e!1857686)))

(declare-fun call!194832 () Bool)

(assert (=> b!2949255 (= res!1216945 call!194832)))

(declare-fun b!2949256 () Bool)

(declare-fun e!1857685 () Bool)

(assert (=> b!2949256 (= e!1857685 (nullable!2904 lt!1031648))))

(declare-fun b!2949257 () Bool)

(declare-fun e!1857684 () Bool)

(assert (=> b!2949257 (= e!1857684 (not lt!1031702))))

(declare-fun b!2949258 () Bool)

(assert (=> b!2949258 (= e!1857686 (not (= (head!6566 s!11993) (c!482616 lt!1031648))))))

(declare-fun d!840854 () Bool)

(declare-fun e!1857687 () Bool)

(assert (=> d!840854 e!1857687))

(declare-fun c!482705 () Bool)

(assert (=> d!840854 (= c!482705 (is-EmptyExpr!9144 lt!1031648))))

(assert (=> d!840854 (= lt!1031702 e!1857685)))

(declare-fun c!482704 () Bool)

(assert (=> d!840854 (= c!482704 (isEmpty!19146 s!11993))))

(assert (=> d!840854 (validRegex!3877 lt!1031648)))

(assert (=> d!840854 (= (matchR!4026 lt!1031648 s!11993) lt!1031702)))

(declare-fun b!2949259 () Bool)

(assert (=> b!2949259 (= e!1857687 e!1857684)))

(declare-fun c!482703 () Bool)

(assert (=> b!2949259 (= c!482703 (is-EmptyLang!9144 lt!1031648))))

(declare-fun b!2949260 () Bool)

(assert (=> b!2949260 (= e!1857685 (matchR!4026 (derivativeStep!2507 lt!1031648 (head!6566 s!11993)) (tail!4792 s!11993)))))

(declare-fun b!2949261 () Bool)

(declare-fun res!1216943 () Bool)

(assert (=> b!2949261 (=> (not res!1216943) (not e!1857688))))

(assert (=> b!2949261 (= res!1216943 (not call!194832))))

(declare-fun b!2949262 () Bool)

(declare-fun res!1216947 () Bool)

(assert (=> b!2949262 (=> res!1216947 e!1857683)))

(assert (=> b!2949262 (= res!1216947 (not (is-ElementMatch!9144 lt!1031648)))))

(assert (=> b!2949262 (= e!1857684 e!1857683)))

(declare-fun b!2949263 () Bool)

(assert (=> b!2949263 (= e!1857683 e!1857682)))

(declare-fun res!1216940 () Bool)

(assert (=> b!2949263 (=> (not res!1216940) (not e!1857682))))

(assert (=> b!2949263 (= res!1216940 (not lt!1031702))))

(declare-fun bm!194827 () Bool)

(assert (=> bm!194827 (= call!194832 (isEmpty!19146 s!11993))))

(declare-fun b!2949264 () Bool)

(declare-fun res!1216944 () Bool)

(assert (=> b!2949264 (=> res!1216944 e!1857686)))

(assert (=> b!2949264 (= res!1216944 (not (isEmpty!19146 (tail!4792 s!11993))))))

(declare-fun b!2949265 () Bool)

(declare-fun res!1216946 () Bool)

(assert (=> b!2949265 (=> (not res!1216946) (not e!1857688))))

(assert (=> b!2949265 (= res!1216946 (isEmpty!19146 (tail!4792 s!11993)))))

(declare-fun b!2949266 () Bool)

(assert (=> b!2949266 (= e!1857687 (= lt!1031702 call!194832))))

(assert (= (and d!840854 c!482704) b!2949256))

(assert (= (and d!840854 (not c!482704)) b!2949260))

(assert (= (and d!840854 c!482705) b!2949266))

(assert (= (and d!840854 (not c!482705)) b!2949259))

(assert (= (and b!2949259 c!482703) b!2949257))

(assert (= (and b!2949259 (not c!482703)) b!2949262))

(assert (= (and b!2949262 (not res!1216947)) b!2949253))

(assert (= (and b!2949253 res!1216942) b!2949261))

(assert (= (and b!2949261 res!1216943) b!2949265))

(assert (= (and b!2949265 res!1216946) b!2949254))

(assert (= (and b!2949253 (not res!1216941)) b!2949263))

(assert (= (and b!2949263 res!1216940) b!2949255))

(assert (= (and b!2949255 (not res!1216945)) b!2949264))

(assert (= (and b!2949264 (not res!1216944)) b!2949258))

(assert (= (or b!2949266 b!2949255 b!2949261) bm!194827))

(assert (=> b!2949258 m!3328911))

(assert (=> b!2949265 m!3328913))

(assert (=> b!2949265 m!3328913))

(assert (=> b!2949265 m!3328915))

(assert (=> b!2949260 m!3328911))

(assert (=> b!2949260 m!3328911))

(declare-fun m!3328931 () Bool)

(assert (=> b!2949260 m!3328931))

(assert (=> b!2949260 m!3328913))

(assert (=> b!2949260 m!3328931))

(assert (=> b!2949260 m!3328913))

(declare-fun m!3328933 () Bool)

(assert (=> b!2949260 m!3328933))

(assert (=> b!2949254 m!3328911))

(assert (=> d!840854 m!3328811))

(declare-fun m!3328935 () Bool)

(assert (=> d!840854 m!3328935))

(assert (=> bm!194827 m!3328811))

(assert (=> b!2949264 m!3328913))

(assert (=> b!2949264 m!3328913))

(assert (=> b!2949264 m!3328915))

(declare-fun m!3328937 () Bool)

(assert (=> b!2949256 m!3328937))

(assert (=> b!2948935 d!840854))

(declare-fun c!482708 () Bool)

(declare-fun call!194835 () Bool)

(declare-fun bm!194830 () Bool)

(declare-fun c!482711 () Bool)

(assert (=> bm!194830 (= call!194835 (validRegex!3877 (ite c!482708 (reg!9473 (regTwo!18800 r!17423)) (ite c!482711 (regTwo!18801 (regTwo!18800 r!17423)) (regOne!18800 (regTwo!18800 r!17423))))))))

(declare-fun b!2949278 () Bool)

(declare-fun e!1857695 () Bool)

(assert (=> b!2949278 (= e!1857695 call!194835)))

(declare-fun b!2949279 () Bool)

(declare-fun e!1857701 () Bool)

(declare-fun call!194837 () Bool)

(assert (=> b!2949279 (= e!1857701 call!194837)))

(declare-fun b!2949280 () Bool)

(declare-fun res!1216954 () Bool)

(declare-fun e!1857698 () Bool)

(assert (=> b!2949280 (=> res!1216954 e!1857698)))

(assert (=> b!2949280 (= res!1216954 (not (is-Concat!14465 (regTwo!18800 r!17423))))))

(declare-fun e!1857700 () Bool)

(assert (=> b!2949280 (= e!1857700 e!1857698)))

(declare-fun b!2949281 () Bool)

(declare-fun res!1216955 () Bool)

(declare-fun e!1857697 () Bool)

(assert (=> b!2949281 (=> (not res!1216955) (not e!1857697))))

(assert (=> b!2949281 (= res!1216955 call!194837)))

(assert (=> b!2949281 (= e!1857700 e!1857697)))

(declare-fun d!840856 () Bool)

(declare-fun res!1216952 () Bool)

(declare-fun e!1857702 () Bool)

(assert (=> d!840856 (=> res!1216952 e!1857702)))

(assert (=> d!840856 (= res!1216952 (is-ElementMatch!9144 (regTwo!18800 r!17423)))))

(assert (=> d!840856 (= (validRegex!3877 (regTwo!18800 r!17423)) e!1857702)))

(declare-fun bm!194831 () Bool)

(assert (=> bm!194831 (= call!194837 (validRegex!3877 (ite c!482711 (regOne!18801 (regTwo!18800 r!17423)) (regTwo!18800 (regTwo!18800 r!17423)))))))

(declare-fun b!2949282 () Bool)

(declare-fun e!1857699 () Bool)

(assert (=> b!2949282 (= e!1857702 e!1857699)))

(assert (=> b!2949282 (= c!482708 (is-Star!9144 (regTwo!18800 r!17423)))))

(declare-fun b!2949283 () Bool)

(declare-fun call!194836 () Bool)

(assert (=> b!2949283 (= e!1857697 call!194836)))

(declare-fun b!2949284 () Bool)

(assert (=> b!2949284 (= e!1857699 e!1857695)))

(declare-fun res!1216953 () Bool)

(assert (=> b!2949284 (= res!1216953 (not (nullable!2904 (reg!9473 (regTwo!18800 r!17423)))))))

(assert (=> b!2949284 (=> (not res!1216953) (not e!1857695))))

(declare-fun b!2949285 () Bool)

(assert (=> b!2949285 (= e!1857698 e!1857701)))

(declare-fun res!1216950 () Bool)

(assert (=> b!2949285 (=> (not res!1216950) (not e!1857701))))

(assert (=> b!2949285 (= res!1216950 call!194836)))

(declare-fun bm!194832 () Bool)

(assert (=> bm!194832 (= call!194836 call!194835)))

(declare-fun b!2949286 () Bool)

(assert (=> b!2949286 (= e!1857699 e!1857700)))

(assert (=> b!2949286 (= c!482711 (is-Union!9144 (regTwo!18800 r!17423)))))

(assert (= (and d!840856 (not res!1216952)) b!2949282))

(assert (= (and b!2949282 c!482708) b!2949284))

(assert (= (and b!2949282 (not c!482708)) b!2949286))

(assert (= (and b!2949284 res!1216953) b!2949278))

(assert (= (and b!2949286 c!482711) b!2949281))

(assert (= (and b!2949286 (not c!482711)) b!2949280))

(assert (= (and b!2949281 res!1216955) b!2949283))

(assert (= (and b!2949280 (not res!1216954)) b!2949285))

(assert (= (and b!2949285 res!1216950) b!2949279))

(assert (= (or b!2949281 b!2949279) bm!194831))

(assert (= (or b!2949283 b!2949285) bm!194832))

(assert (= (or b!2949278 bm!194832) bm!194830))

(declare-fun m!3328939 () Bool)

(assert (=> bm!194830 m!3328939))

(declare-fun m!3328941 () Bool)

(assert (=> bm!194831 m!3328941))

(declare-fun m!3328943 () Bool)

(assert (=> b!2949284 m!3328943))

(assert (=> b!2948928 d!840856))

(declare-fun bs!525625 () Bool)

(declare-fun b!2949290 () Bool)

(assert (= bs!525625 (and b!2949290 b!2949162)))

(declare-fun lambda!109692 () Int)

(assert (=> bs!525625 (= (and (= (reg!9473 lt!1031648) (reg!9473 r!17423)) (= lt!1031648 r!17423)) (= lambda!109692 lambda!109685))))

(declare-fun bs!525626 () Bool)

(assert (= bs!525626 (and b!2949290 b!2949161)))

(assert (=> bs!525626 (not (= lambda!109692 lambda!109686))))

(assert (=> b!2949290 true))

(assert (=> b!2949290 true))

(declare-fun bs!525628 () Bool)

(declare-fun b!2949289 () Bool)

(assert (= bs!525628 (and b!2949289 b!2949162)))

(declare-fun lambda!109694 () Int)

(assert (=> bs!525628 (not (= lambda!109694 lambda!109685))))

(declare-fun bs!525629 () Bool)

(assert (= bs!525629 (and b!2949289 b!2949161)))

(assert (=> bs!525629 (= (and (= (regOne!18800 lt!1031648) (regOne!18800 r!17423)) (= (regTwo!18800 lt!1031648) (regTwo!18800 r!17423))) (= lambda!109694 lambda!109686))))

(declare-fun bs!525630 () Bool)

(assert (= bs!525630 (and b!2949289 b!2949290)))

(assert (=> bs!525630 (not (= lambda!109694 lambda!109692))))

(assert (=> b!2949289 true))

(assert (=> b!2949289 true))

(declare-fun b!2949287 () Bool)

(declare-fun e!1857704 () Bool)

(declare-fun e!1857709 () Bool)

(assert (=> b!2949287 (= e!1857704 e!1857709)))

(declare-fun c!482715 () Bool)

(assert (=> b!2949287 (= c!482715 (is-Star!9144 lt!1031648))))

(declare-fun bm!194833 () Bool)

(declare-fun call!194839 () Bool)

(assert (=> bm!194833 (= call!194839 (isEmpty!19146 s!11993))))

(declare-fun b!2949288 () Bool)

(declare-fun c!482712 () Bool)

(assert (=> b!2949288 (= c!482712 (is-ElementMatch!9144 lt!1031648))))

(declare-fun e!1857707 () Bool)

(declare-fun e!1857706 () Bool)

(assert (=> b!2949288 (= e!1857707 e!1857706)))

(declare-fun call!194838 () Bool)

(assert (=> b!2949289 (= e!1857709 call!194838)))

(declare-fun e!1857708 () Bool)

(assert (=> b!2949290 (= e!1857708 call!194838)))

(declare-fun b!2949291 () Bool)

(declare-fun res!1216956 () Bool)

(assert (=> b!2949291 (=> res!1216956 e!1857708)))

(assert (=> b!2949291 (= res!1216956 call!194839)))

(assert (=> b!2949291 (= e!1857709 e!1857708)))

(declare-fun d!840858 () Bool)

(declare-fun c!482713 () Bool)

(assert (=> d!840858 (= c!482713 (is-EmptyExpr!9144 lt!1031648))))

(declare-fun e!1857703 () Bool)

(assert (=> d!840858 (= (matchRSpec!1281 lt!1031648 s!11993) e!1857703)))

(declare-fun b!2949292 () Bool)

(assert (=> b!2949292 (= e!1857703 e!1857707)))

(declare-fun res!1216957 () Bool)

(assert (=> b!2949292 (= res!1216957 (not (is-EmptyLang!9144 lt!1031648)))))

(assert (=> b!2949292 (=> (not res!1216957) (not e!1857707))))

(declare-fun b!2949293 () Bool)

(assert (=> b!2949293 (= e!1857706 (= s!11993 (Cons!34885 (c!482616 lt!1031648) Nil!34885)))))

(declare-fun b!2949294 () Bool)

(declare-fun c!482714 () Bool)

(assert (=> b!2949294 (= c!482714 (is-Union!9144 lt!1031648))))

(assert (=> b!2949294 (= e!1857706 e!1857704)))

(declare-fun b!2949295 () Bool)

(declare-fun e!1857705 () Bool)

(assert (=> b!2949295 (= e!1857704 e!1857705)))

(declare-fun res!1216958 () Bool)

(assert (=> b!2949295 (= res!1216958 (matchRSpec!1281 (regOne!18801 lt!1031648) s!11993))))

(assert (=> b!2949295 (=> res!1216958 e!1857705)))

(declare-fun bm!194834 () Bool)

(assert (=> bm!194834 (= call!194838 (Exists!1478 (ite c!482715 lambda!109692 lambda!109694)))))

(declare-fun b!2949296 () Bool)

(assert (=> b!2949296 (= e!1857705 (matchRSpec!1281 (regTwo!18801 lt!1031648) s!11993))))

(declare-fun b!2949297 () Bool)

(assert (=> b!2949297 (= e!1857703 call!194839)))

(assert (= (and d!840858 c!482713) b!2949297))

(assert (= (and d!840858 (not c!482713)) b!2949292))

(assert (= (and b!2949292 res!1216957) b!2949288))

(assert (= (and b!2949288 c!482712) b!2949293))

(assert (= (and b!2949288 (not c!482712)) b!2949294))

(assert (= (and b!2949294 c!482714) b!2949295))

(assert (= (and b!2949294 (not c!482714)) b!2949287))

(assert (= (and b!2949295 (not res!1216958)) b!2949296))

(assert (= (and b!2949287 c!482715) b!2949291))

(assert (= (and b!2949287 (not c!482715)) b!2949289))

(assert (= (and b!2949291 (not res!1216956)) b!2949290))

(assert (= (or b!2949290 b!2949289) bm!194834))

(assert (= (or b!2949297 b!2949291) bm!194833))

(assert (=> bm!194833 m!3328811))

(declare-fun m!3328951 () Bool)

(assert (=> b!2949295 m!3328951))

(declare-fun m!3328953 () Bool)

(assert (=> bm!194834 m!3328953))

(declare-fun m!3328955 () Bool)

(assert (=> b!2949296 m!3328955))

(assert (=> b!2948928 d!840858))

(declare-fun d!840862 () Bool)

(assert (=> d!840862 (= (matchR!4026 lt!1031648 s!11993) (matchRSpec!1281 lt!1031648 s!11993))))

(declare-fun lt!1031703 () Unit!48667)

(assert (=> d!840862 (= lt!1031703 (choose!17422 lt!1031648 s!11993))))

(assert (=> d!840862 (validRegex!3877 lt!1031648)))

(assert (=> d!840862 (= (mainMatchTheorem!1281 lt!1031648 s!11993) lt!1031703)))

(declare-fun bs!525631 () Bool)

(assert (= bs!525631 d!840862))

(assert (=> bs!525631 m!3328823))

(assert (=> bs!525631 m!3328817))

(declare-fun m!3328957 () Bool)

(assert (=> bs!525631 m!3328957))

(assert (=> bs!525631 m!3328935))

(assert (=> b!2948928 d!840862))

(declare-fun b!2949306 () Bool)

(declare-fun e!1857712 () Bool)

(declare-fun tp!942900 () Bool)

(assert (=> b!2949306 (= e!1857712 (and tp_is_empty!15851 tp!942900))))

(assert (=> b!2948932 (= tp!942874 e!1857712)))

(assert (= (and b!2948932 (is-Cons!34885 (t!234074 s!11993))) b!2949306))

(declare-fun e!1857715 () Bool)

(assert (=> b!2948931 (= tp!942876 e!1857715)))

(declare-fun b!2949317 () Bool)

(assert (=> b!2949317 (= e!1857715 tp_is_empty!15851)))

(declare-fun b!2949319 () Bool)

(declare-fun tp!942915 () Bool)

(assert (=> b!2949319 (= e!1857715 tp!942915)))

(declare-fun b!2949320 () Bool)

(declare-fun tp!942913 () Bool)

(declare-fun tp!942911 () Bool)

(assert (=> b!2949320 (= e!1857715 (and tp!942913 tp!942911))))

(declare-fun b!2949318 () Bool)

(declare-fun tp!942914 () Bool)

(declare-fun tp!942912 () Bool)

(assert (=> b!2949318 (= e!1857715 (and tp!942914 tp!942912))))

(assert (= (and b!2948931 (is-ElementMatch!9144 (reg!9473 r!17423))) b!2949317))

(assert (= (and b!2948931 (is-Concat!14465 (reg!9473 r!17423))) b!2949318))

(assert (= (and b!2948931 (is-Star!9144 (reg!9473 r!17423))) b!2949319))

(assert (= (and b!2948931 (is-Union!9144 (reg!9473 r!17423))) b!2949320))

(declare-fun e!1857716 () Bool)

(assert (=> b!2948929 (= tp!942875 e!1857716)))

(declare-fun b!2949321 () Bool)

(assert (=> b!2949321 (= e!1857716 tp_is_empty!15851)))

(declare-fun b!2949323 () Bool)

(declare-fun tp!942920 () Bool)

(assert (=> b!2949323 (= e!1857716 tp!942920)))

(declare-fun b!2949324 () Bool)

(declare-fun tp!942918 () Bool)

(declare-fun tp!942916 () Bool)

(assert (=> b!2949324 (= e!1857716 (and tp!942918 tp!942916))))

(declare-fun b!2949322 () Bool)

(declare-fun tp!942919 () Bool)

(declare-fun tp!942917 () Bool)

(assert (=> b!2949322 (= e!1857716 (and tp!942919 tp!942917))))

(assert (= (and b!2948929 (is-ElementMatch!9144 (regOne!18801 r!17423))) b!2949321))

(assert (= (and b!2948929 (is-Concat!14465 (regOne!18801 r!17423))) b!2949322))

(assert (= (and b!2948929 (is-Star!9144 (regOne!18801 r!17423))) b!2949323))

(assert (= (and b!2948929 (is-Union!9144 (regOne!18801 r!17423))) b!2949324))

(declare-fun e!1857717 () Bool)

(assert (=> b!2948929 (= tp!942878 e!1857717)))

(declare-fun b!2949325 () Bool)

(assert (=> b!2949325 (= e!1857717 tp_is_empty!15851)))

(declare-fun b!2949327 () Bool)

(declare-fun tp!942925 () Bool)

(assert (=> b!2949327 (= e!1857717 tp!942925)))

(declare-fun b!2949328 () Bool)

(declare-fun tp!942923 () Bool)

(declare-fun tp!942921 () Bool)

(assert (=> b!2949328 (= e!1857717 (and tp!942923 tp!942921))))

(declare-fun b!2949326 () Bool)

(declare-fun tp!942924 () Bool)

(declare-fun tp!942922 () Bool)

(assert (=> b!2949326 (= e!1857717 (and tp!942924 tp!942922))))

(assert (= (and b!2948929 (is-ElementMatch!9144 (regTwo!18801 r!17423))) b!2949325))

(assert (= (and b!2948929 (is-Concat!14465 (regTwo!18801 r!17423))) b!2949326))

(assert (= (and b!2948929 (is-Star!9144 (regTwo!18801 r!17423))) b!2949327))

(assert (= (and b!2948929 (is-Union!9144 (regTwo!18801 r!17423))) b!2949328))

(declare-fun e!1857718 () Bool)

(assert (=> b!2948938 (= tp!942877 e!1857718)))

(declare-fun b!2949329 () Bool)

(assert (=> b!2949329 (= e!1857718 tp_is_empty!15851)))

(declare-fun b!2949331 () Bool)

(declare-fun tp!942930 () Bool)

(assert (=> b!2949331 (= e!1857718 tp!942930)))

(declare-fun b!2949332 () Bool)

(declare-fun tp!942928 () Bool)

(declare-fun tp!942926 () Bool)

(assert (=> b!2949332 (= e!1857718 (and tp!942928 tp!942926))))

(declare-fun b!2949330 () Bool)

(declare-fun tp!942929 () Bool)

(declare-fun tp!942927 () Bool)

(assert (=> b!2949330 (= e!1857718 (and tp!942929 tp!942927))))

(assert (= (and b!2948938 (is-ElementMatch!9144 (regOne!18800 r!17423))) b!2949329))

(assert (= (and b!2948938 (is-Concat!14465 (regOne!18800 r!17423))) b!2949330))

(assert (= (and b!2948938 (is-Star!9144 (regOne!18800 r!17423))) b!2949331))

(assert (= (and b!2948938 (is-Union!9144 (regOne!18800 r!17423))) b!2949332))

(declare-fun e!1857719 () Bool)

(assert (=> b!2948938 (= tp!942879 e!1857719)))

(declare-fun b!2949333 () Bool)

(assert (=> b!2949333 (= e!1857719 tp_is_empty!15851)))

(declare-fun b!2949335 () Bool)

(declare-fun tp!942935 () Bool)

(assert (=> b!2949335 (= e!1857719 tp!942935)))

(declare-fun b!2949336 () Bool)

(declare-fun tp!942933 () Bool)

(declare-fun tp!942931 () Bool)

(assert (=> b!2949336 (= e!1857719 (and tp!942933 tp!942931))))

(declare-fun b!2949334 () Bool)

(declare-fun tp!942934 () Bool)

(declare-fun tp!942932 () Bool)

(assert (=> b!2949334 (= e!1857719 (and tp!942934 tp!942932))))

(assert (= (and b!2948938 (is-ElementMatch!9144 (regTwo!18800 r!17423))) b!2949333))

(assert (= (and b!2948938 (is-Concat!14465 (regTwo!18800 r!17423))) b!2949334))

(assert (= (and b!2948938 (is-Star!9144 (regTwo!18800 r!17423))) b!2949335))

(assert (= (and b!2948938 (is-Union!9144 (regTwo!18800 r!17423))) b!2949336))

(push 1)

(assert (not b!2949336))

(assert (not bm!194791))

(assert (not b!2949265))

(assert (not b!2949326))

(assert (not b!2949327))

(assert (not b!2949101))

(assert (not d!840854))

(assert (not b!2949205))

(assert (not b!2949250))

(assert (not b!2949256))

(assert (not b!2949328))

(assert (not d!840828))

(assert (not b!2949296))

(assert (not b!2949319))

(assert (not b!2949320))

(assert (not bm!194799))

(assert (not bm!194793))

(assert (not d!840862))

(assert (not b!2949113))

(assert (not bm!194824))

(assert (not bm!194801))

(assert tp_is_empty!15851)

(assert (not b!2949258))

(assert (not b!2949322))

(assert (not b!2949213))

(assert (not b!2949088))

(assert (not d!840844))

(assert (not d!840846))

(assert (not bm!194830))

(assert (not bm!194833))

(assert (not b!2949332))

(assert (not b!2949260))

(assert (not b!2949254))

(assert (not b!2949168))

(assert (not b!2949330))

(assert (not b!2949295))

(assert (not b!2949209))

(assert (not b!2949335))

(assert (not bm!194796))

(assert (not b!2949167))

(assert (not b!2949306))

(assert (not bm!194831))

(assert (not bm!194794))

(assert (not b!2949264))

(assert (not b!2949318))

(assert (not d!840840))

(assert (not b!2949284))

(assert (not bm!194809))

(assert (not bm!194810))

(assert (not b!2949331))

(assert (not bm!194803))

(assert (not bm!194800))

(assert (not bm!194792))

(assert (not b!2949334))

(assert (not b!2949207))

(assert (not bm!194798))

(assert (not b!2949214))

(assert (not b!2949203))

(assert (not bm!194813))

(assert (not bm!194825))

(assert (not b!2949323))

(assert (not b!2949324))

(assert (not b!2949126))

(assert (not bm!194827))

(assert (not bm!194834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

