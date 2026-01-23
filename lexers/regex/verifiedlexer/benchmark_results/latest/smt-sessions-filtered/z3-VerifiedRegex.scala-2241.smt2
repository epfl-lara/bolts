; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110398 () Bool)

(assert start!110398)

(declare-fun res!555054 () Bool)

(declare-fun e!796954 () Bool)

(assert (=> start!110398 (=> (not res!555054) (not e!796954))))

(declare-datatypes ((C!7232 0))(
  ( (C!7233 (val!4146 Int)) )
))
(declare-datatypes ((Regex!3457 0))(
  ( (ElementMatch!3457 (c!207612 C!7232)) (Concat!5687 (regOne!7426 Regex!3457) (regTwo!7426 Regex!3457)) (EmptyExpr!3457) (Star!3457 (reg!3786 Regex!3457)) (EmptyLang!3457) (Union!3457 (regOne!7427 Regex!3457) (regTwo!7427 Regex!3457)) )
))
(declare-fun r!15719 () Regex!3457)

(declare-fun validRegex!1493 (Regex!3457) Bool)

(assert (=> start!110398 (= res!555054 (validRegex!1493 r!15719))))

(assert (=> start!110398 e!796954))

(declare-fun e!796953 () Bool)

(assert (=> start!110398 e!796953))

(declare-fun b!1251648 () Bool)

(declare-fun regexDepth!54 (Regex!3457) Int)

(assert (=> b!1251648 (= e!796954 (>= (regexDepth!54 (regOne!7426 r!15719)) (regexDepth!54 r!15719)))))

(declare-fun b!1251649 () Bool)

(declare-fun tp_is_empty!6435 () Bool)

(assert (=> b!1251649 (= e!796953 tp_is_empty!6435)))

(declare-fun b!1251650 () Bool)

(declare-fun tp!368679 () Bool)

(declare-fun tp!368677 () Bool)

(assert (=> b!1251650 (= e!796953 (and tp!368679 tp!368677))))

(declare-fun b!1251651 () Bool)

(declare-fun tp!368675 () Bool)

(declare-fun tp!368676 () Bool)

(assert (=> b!1251651 (= e!796953 (and tp!368675 tp!368676))))

(declare-fun b!1251652 () Bool)

(declare-fun tp!368678 () Bool)

(assert (=> b!1251652 (= e!796953 tp!368678)))

(declare-fun b!1251653 () Bool)

(declare-fun res!555053 () Bool)

(assert (=> b!1251653 (=> (not res!555053) (not e!796954))))

(get-info :version)

(assert (=> b!1251653 (= res!555053 (and (or (not ((_ is Concat!5687) r!15719)) (not ((_ is EmptyExpr!3457) (regOne!7426 r!15719)))) (or (not ((_ is Concat!5687) r!15719)) (not ((_ is EmptyExpr!3457) (regTwo!7426 r!15719)))) ((_ is Concat!5687) r!15719)))))

(assert (= (and start!110398 res!555054) b!1251653))

(assert (= (and b!1251653 res!555053) b!1251648))

(assert (= (and start!110398 ((_ is ElementMatch!3457) r!15719)) b!1251649))

(assert (= (and start!110398 ((_ is Concat!5687) r!15719)) b!1251650))

(assert (= (and start!110398 ((_ is Star!3457) r!15719)) b!1251652))

(assert (= (and start!110398 ((_ is Union!3457) r!15719)) b!1251651))

(declare-fun m!1412393 () Bool)

(assert (=> start!110398 m!1412393))

(declare-fun m!1412395 () Bool)

(assert (=> b!1251648 m!1412395))

(declare-fun m!1412397 () Bool)

(assert (=> b!1251648 m!1412397))

(check-sat (not start!110398) (not b!1251652) (not b!1251648) (not b!1251650) (not b!1251651) tp_is_empty!6435)
(check-sat)
(get-model)

(declare-fun b!1251688 () Bool)

(declare-fun e!796978 () Bool)

(declare-fun call!87182 () Bool)

(assert (=> b!1251688 (= e!796978 call!87182)))

(declare-fun c!207625 () Bool)

(declare-fun c!207626 () Bool)

(declare-fun call!87184 () Bool)

(declare-fun bm!87177 () Bool)

(assert (=> bm!87177 (= call!87184 (validRegex!1493 (ite c!207626 (reg!3786 r!15719) (ite c!207625 (regOne!7427 r!15719) (regOne!7426 r!15719)))))))

(declare-fun b!1251689 () Bool)

(declare-fun e!796977 () Bool)

(declare-fun e!796982 () Bool)

(assert (=> b!1251689 (= e!796977 e!796982)))

(declare-fun res!555069 () Bool)

(declare-fun nullable!1094 (Regex!3457) Bool)

(assert (=> b!1251689 (= res!555069 (not (nullable!1094 (reg!3786 r!15719))))))

(assert (=> b!1251689 (=> (not res!555069) (not e!796982))))

(declare-fun b!1251690 () Bool)

(declare-fun e!796983 () Bool)

(assert (=> b!1251690 (= e!796983 call!87182)))

(declare-fun bm!87178 () Bool)

(declare-fun call!87183 () Bool)

(assert (=> bm!87178 (= call!87183 call!87184)))

(declare-fun b!1251691 () Bool)

(declare-fun e!796980 () Bool)

(assert (=> b!1251691 (= e!796980 e!796977)))

(assert (=> b!1251691 (= c!207626 ((_ is Star!3457) r!15719))))

(declare-fun b!1251692 () Bool)

(declare-fun res!555067 () Bool)

(assert (=> b!1251692 (=> (not res!555067) (not e!796983))))

(assert (=> b!1251692 (= res!555067 call!87183)))

(declare-fun e!796979 () Bool)

(assert (=> b!1251692 (= e!796979 e!796983)))

(declare-fun d!354436 () Bool)

(declare-fun res!555068 () Bool)

(assert (=> d!354436 (=> res!555068 e!796980)))

(assert (=> d!354436 (= res!555068 ((_ is ElementMatch!3457) r!15719))))

(assert (=> d!354436 (= (validRegex!1493 r!15719) e!796980)))

(declare-fun b!1251693 () Bool)

(assert (=> b!1251693 (= e!796982 call!87184)))

(declare-fun b!1251694 () Bool)

(assert (=> b!1251694 (= e!796977 e!796979)))

(assert (=> b!1251694 (= c!207625 ((_ is Union!3457) r!15719))))

(declare-fun b!1251695 () Bool)

(declare-fun e!796981 () Bool)

(assert (=> b!1251695 (= e!796981 e!796978)))

(declare-fun res!555065 () Bool)

(assert (=> b!1251695 (=> (not res!555065) (not e!796978))))

(assert (=> b!1251695 (= res!555065 call!87183)))

(declare-fun bm!87179 () Bool)

(assert (=> bm!87179 (= call!87182 (validRegex!1493 (ite c!207625 (regTwo!7427 r!15719) (regTwo!7426 r!15719))))))

(declare-fun b!1251696 () Bool)

(declare-fun res!555066 () Bool)

(assert (=> b!1251696 (=> res!555066 e!796981)))

(assert (=> b!1251696 (= res!555066 (not ((_ is Concat!5687) r!15719)))))

(assert (=> b!1251696 (= e!796979 e!796981)))

(assert (= (and d!354436 (not res!555068)) b!1251691))

(assert (= (and b!1251691 c!207626) b!1251689))

(assert (= (and b!1251691 (not c!207626)) b!1251694))

(assert (= (and b!1251689 res!555069) b!1251693))

(assert (= (and b!1251694 c!207625) b!1251692))

(assert (= (and b!1251694 (not c!207625)) b!1251696))

(assert (= (and b!1251692 res!555067) b!1251690))

(assert (= (and b!1251696 (not res!555066)) b!1251695))

(assert (= (and b!1251695 res!555065) b!1251688))

(assert (= (or b!1251690 b!1251688) bm!87179))

(assert (= (or b!1251692 b!1251695) bm!87178))

(assert (= (or b!1251693 bm!87178) bm!87177))

(declare-fun m!1412399 () Bool)

(assert (=> bm!87177 m!1412399))

(declare-fun m!1412401 () Bool)

(assert (=> b!1251689 m!1412401))

(declare-fun m!1412403 () Bool)

(assert (=> bm!87179 m!1412403))

(assert (=> start!110398 d!354436))

(declare-fun b!1251783 () Bool)

(declare-fun e!797041 () Int)

(declare-fun e!797042 () Int)

(assert (=> b!1251783 (= e!797041 e!797042)))

(declare-fun c!207667 () Bool)

(assert (=> b!1251783 (= c!207667 ((_ is Concat!5687) (regOne!7426 r!15719)))))

(declare-fun bm!87222 () Bool)

(declare-fun call!87231 () Int)

(declare-fun c!207665 () Bool)

(assert (=> bm!87222 (= call!87231 (regexDepth!54 (ite c!207665 (regTwo!7427 (regOne!7426 r!15719)) (regTwo!7426 (regOne!7426 r!15719)))))))

(declare-fun b!1251784 () Bool)

(declare-fun e!797038 () Bool)

(declare-fun e!797039 () Bool)

(assert (=> b!1251784 (= e!797038 e!797039)))

(declare-fun c!207663 () Bool)

(assert (=> b!1251784 (= c!207663 ((_ is Concat!5687) (regOne!7426 r!15719)))))

(declare-fun bm!87223 () Bool)

(declare-fun call!87233 () Int)

(declare-fun call!87229 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!87223 (= call!87233 (maxBigInt!0 call!87229 call!87231))))

(declare-fun b!1251785 () Bool)

(declare-fun e!797045 () Bool)

(assert (=> b!1251785 (= e!797045 e!797038)))

(declare-fun c!207664 () Bool)

(assert (=> b!1251785 (= c!207664 ((_ is Union!3457) (regOne!7426 r!15719)))))

(declare-fun b!1251786 () Bool)

(declare-fun e!797036 () Int)

(assert (=> b!1251786 (= e!797036 1)))

(declare-fun bm!87224 () Bool)

(declare-fun call!87227 () Int)

(assert (=> bm!87224 (= call!87227 (regexDepth!54 (ite c!207664 (regOne!7427 (regOne!7426 r!15719)) (ite c!207663 (regOne!7426 (regOne!7426 r!15719)) (reg!3786 (regOne!7426 r!15719))))))))

(declare-fun b!1251787 () Bool)

(declare-fun e!797040 () Int)

(assert (=> b!1251787 (= e!797036 e!797040)))

(declare-fun c!207666 () Bool)

(assert (=> b!1251787 (= c!207666 ((_ is Star!3457) (regOne!7426 r!15719)))))

(declare-fun bm!87225 () Bool)

(declare-fun call!87228 () Int)

(assert (=> bm!87225 (= call!87228 (regexDepth!54 (ite c!207664 (regTwo!7427 (regOne!7426 r!15719)) (regTwo!7426 (regOne!7426 r!15719)))))))

(declare-fun b!1251789 () Bool)

(declare-fun c!207661 () Bool)

(assert (=> b!1251789 (= c!207661 ((_ is Star!3457) (regOne!7426 r!15719)))))

(declare-fun e!797037 () Bool)

(assert (=> b!1251789 (= e!797039 e!797037)))

(declare-fun bm!87226 () Bool)

(declare-fun call!87230 () Int)

(assert (=> bm!87226 (= call!87230 (regexDepth!54 (ite c!207666 (reg!3786 (regOne!7426 r!15719)) (ite c!207665 (regOne!7427 (regOne!7426 r!15719)) (regOne!7426 (regOne!7426 r!15719))))))))

(declare-fun b!1251790 () Bool)

(assert (=> b!1251790 (= e!797042 (+ 1 call!87233))))

(declare-fun b!1251791 () Bool)

(declare-fun e!797043 () Bool)

(assert (=> b!1251791 (= e!797038 e!797043)))

(declare-fun res!555088 () Bool)

(declare-fun lt!420210 () Int)

(assert (=> b!1251791 (= res!555088 (> lt!420210 call!87227))))

(assert (=> b!1251791 (=> (not res!555088) (not e!797043))))

(declare-fun b!1251792 () Bool)

(declare-fun call!87232 () Int)

(assert (=> b!1251792 (= e!797037 (> lt!420210 call!87232))))

(declare-fun b!1251793 () Bool)

(assert (=> b!1251793 (= c!207665 ((_ is Union!3457) (regOne!7426 r!15719)))))

(assert (=> b!1251793 (= e!797040 e!797041)))

(declare-fun b!1251794 () Bool)

(declare-fun res!555089 () Bool)

(declare-fun e!797044 () Bool)

(assert (=> b!1251794 (=> (not res!555089) (not e!797044))))

(assert (=> b!1251794 (= res!555089 (> lt!420210 call!87232))))

(assert (=> b!1251794 (= e!797039 e!797044)))

(declare-fun b!1251795 () Bool)

(assert (=> b!1251795 (= e!797044 (> lt!420210 call!87228))))

(declare-fun bm!87227 () Bool)

(assert (=> bm!87227 (= call!87232 call!87227)))

(declare-fun b!1251796 () Bool)

(assert (=> b!1251796 (= e!797042 1)))

(declare-fun b!1251797 () Bool)

(assert (=> b!1251797 (= e!797043 (> lt!420210 call!87228))))

(declare-fun bm!87228 () Bool)

(assert (=> bm!87228 (= call!87229 call!87230)))

(declare-fun b!1251798 () Bool)

(assert (=> b!1251798 (= e!797041 (+ 1 call!87233))))

(declare-fun b!1251799 () Bool)

(assert (=> b!1251799 (= e!797040 (+ 1 call!87230))))

(declare-fun b!1251788 () Bool)

(assert (=> b!1251788 (= e!797037 (= lt!420210 1))))

(declare-fun d!354440 () Bool)

(assert (=> d!354440 e!797045))

(declare-fun res!555090 () Bool)

(assert (=> d!354440 (=> (not res!555090) (not e!797045))))

(assert (=> d!354440 (= res!555090 (> lt!420210 0))))

(assert (=> d!354440 (= lt!420210 e!797036)))

(declare-fun c!207662 () Bool)

(assert (=> d!354440 (= c!207662 ((_ is ElementMatch!3457) (regOne!7426 r!15719)))))

(assert (=> d!354440 (= (regexDepth!54 (regOne!7426 r!15719)) lt!420210)))

(assert (= (and d!354440 c!207662) b!1251786))

(assert (= (and d!354440 (not c!207662)) b!1251787))

(assert (= (and b!1251787 c!207666) b!1251799))

(assert (= (and b!1251787 (not c!207666)) b!1251793))

(assert (= (and b!1251793 c!207665) b!1251798))

(assert (= (and b!1251793 (not c!207665)) b!1251783))

(assert (= (and b!1251783 c!207667) b!1251790))

(assert (= (and b!1251783 (not c!207667)) b!1251796))

(assert (= (or b!1251798 b!1251790) bm!87228))

(assert (= (or b!1251798 b!1251790) bm!87222))

(assert (= (or b!1251798 b!1251790) bm!87223))

(assert (= (or b!1251799 bm!87228) bm!87226))

(assert (= (and d!354440 res!555090) b!1251785))

(assert (= (and b!1251785 c!207664) b!1251791))

(assert (= (and b!1251785 (not c!207664)) b!1251784))

(assert (= (and b!1251791 res!555088) b!1251797))

(assert (= (and b!1251784 c!207663) b!1251794))

(assert (= (and b!1251784 (not c!207663)) b!1251789))

(assert (= (and b!1251794 res!555089) b!1251795))

(assert (= (and b!1251789 c!207661) b!1251792))

(assert (= (and b!1251789 (not c!207661)) b!1251788))

(assert (= (or b!1251794 b!1251792) bm!87227))

(assert (= (or b!1251791 bm!87227) bm!87224))

(assert (= (or b!1251797 b!1251795) bm!87225))

(declare-fun m!1412425 () Bool)

(assert (=> bm!87224 m!1412425))

(declare-fun m!1412427 () Bool)

(assert (=> bm!87225 m!1412427))

(declare-fun m!1412429 () Bool)

(assert (=> bm!87223 m!1412429))

(declare-fun m!1412431 () Bool)

(assert (=> bm!87226 m!1412431))

(declare-fun m!1412433 () Bool)

(assert (=> bm!87222 m!1412433))

(assert (=> b!1251648 d!354440))

(declare-fun b!1251800 () Bool)

(declare-fun e!797051 () Int)

(declare-fun e!797052 () Int)

(assert (=> b!1251800 (= e!797051 e!797052)))

(declare-fun c!207674 () Bool)

(assert (=> b!1251800 (= c!207674 ((_ is Concat!5687) r!15719))))

(declare-fun bm!87229 () Bool)

(declare-fun call!87238 () Int)

(declare-fun c!207672 () Bool)

(assert (=> bm!87229 (= call!87238 (regexDepth!54 (ite c!207672 (regTwo!7427 r!15719) (regTwo!7426 r!15719))))))

(declare-fun b!1251801 () Bool)

(declare-fun e!797048 () Bool)

(declare-fun e!797049 () Bool)

(assert (=> b!1251801 (= e!797048 e!797049)))

(declare-fun c!207670 () Bool)

(assert (=> b!1251801 (= c!207670 ((_ is Concat!5687) r!15719))))

(declare-fun bm!87230 () Bool)

(declare-fun call!87240 () Int)

(declare-fun call!87236 () Int)

(assert (=> bm!87230 (= call!87240 (maxBigInt!0 call!87236 call!87238))))

(declare-fun b!1251802 () Bool)

(declare-fun e!797055 () Bool)

(assert (=> b!1251802 (= e!797055 e!797048)))

(declare-fun c!207671 () Bool)

(assert (=> b!1251802 (= c!207671 ((_ is Union!3457) r!15719))))

(declare-fun b!1251803 () Bool)

(declare-fun e!797046 () Int)

(assert (=> b!1251803 (= e!797046 1)))

(declare-fun bm!87231 () Bool)

(declare-fun call!87234 () Int)

(assert (=> bm!87231 (= call!87234 (regexDepth!54 (ite c!207671 (regOne!7427 r!15719) (ite c!207670 (regOne!7426 r!15719) (reg!3786 r!15719)))))))

(declare-fun b!1251804 () Bool)

(declare-fun e!797050 () Int)

(assert (=> b!1251804 (= e!797046 e!797050)))

(declare-fun c!207673 () Bool)

(assert (=> b!1251804 (= c!207673 ((_ is Star!3457) r!15719))))

(declare-fun bm!87232 () Bool)

(declare-fun call!87235 () Int)

(assert (=> bm!87232 (= call!87235 (regexDepth!54 (ite c!207671 (regTwo!7427 r!15719) (regTwo!7426 r!15719))))))

(declare-fun b!1251806 () Bool)

(declare-fun c!207668 () Bool)

(assert (=> b!1251806 (= c!207668 ((_ is Star!3457) r!15719))))

(declare-fun e!797047 () Bool)

(assert (=> b!1251806 (= e!797049 e!797047)))

(declare-fun bm!87233 () Bool)

(declare-fun call!87237 () Int)

(assert (=> bm!87233 (= call!87237 (regexDepth!54 (ite c!207673 (reg!3786 r!15719) (ite c!207672 (regOne!7427 r!15719) (regOne!7426 r!15719)))))))

(declare-fun b!1251807 () Bool)

(assert (=> b!1251807 (= e!797052 (+ 1 call!87240))))

(declare-fun b!1251808 () Bool)

(declare-fun e!797053 () Bool)

(assert (=> b!1251808 (= e!797048 e!797053)))

(declare-fun res!555091 () Bool)

(declare-fun lt!420211 () Int)

(assert (=> b!1251808 (= res!555091 (> lt!420211 call!87234))))

(assert (=> b!1251808 (=> (not res!555091) (not e!797053))))

(declare-fun b!1251809 () Bool)

(declare-fun call!87239 () Int)

(assert (=> b!1251809 (= e!797047 (> lt!420211 call!87239))))

(declare-fun b!1251810 () Bool)

(assert (=> b!1251810 (= c!207672 ((_ is Union!3457) r!15719))))

(assert (=> b!1251810 (= e!797050 e!797051)))

(declare-fun b!1251811 () Bool)

(declare-fun res!555092 () Bool)

(declare-fun e!797054 () Bool)

(assert (=> b!1251811 (=> (not res!555092) (not e!797054))))

(assert (=> b!1251811 (= res!555092 (> lt!420211 call!87239))))

(assert (=> b!1251811 (= e!797049 e!797054)))

(declare-fun b!1251812 () Bool)

(assert (=> b!1251812 (= e!797054 (> lt!420211 call!87235))))

(declare-fun bm!87234 () Bool)

(assert (=> bm!87234 (= call!87239 call!87234)))

(declare-fun b!1251813 () Bool)

(assert (=> b!1251813 (= e!797052 1)))

(declare-fun b!1251814 () Bool)

(assert (=> b!1251814 (= e!797053 (> lt!420211 call!87235))))

(declare-fun bm!87235 () Bool)

(assert (=> bm!87235 (= call!87236 call!87237)))

(declare-fun b!1251815 () Bool)

(assert (=> b!1251815 (= e!797051 (+ 1 call!87240))))

(declare-fun b!1251816 () Bool)

(assert (=> b!1251816 (= e!797050 (+ 1 call!87237))))

(declare-fun b!1251805 () Bool)

(assert (=> b!1251805 (= e!797047 (= lt!420211 1))))

(declare-fun d!354446 () Bool)

(assert (=> d!354446 e!797055))

(declare-fun res!555093 () Bool)

(assert (=> d!354446 (=> (not res!555093) (not e!797055))))

(assert (=> d!354446 (= res!555093 (> lt!420211 0))))

(assert (=> d!354446 (= lt!420211 e!797046)))

(declare-fun c!207669 () Bool)

(assert (=> d!354446 (= c!207669 ((_ is ElementMatch!3457) r!15719))))

(assert (=> d!354446 (= (regexDepth!54 r!15719) lt!420211)))

(assert (= (and d!354446 c!207669) b!1251803))

(assert (= (and d!354446 (not c!207669)) b!1251804))

(assert (= (and b!1251804 c!207673) b!1251816))

(assert (= (and b!1251804 (not c!207673)) b!1251810))

(assert (= (and b!1251810 c!207672) b!1251815))

(assert (= (and b!1251810 (not c!207672)) b!1251800))

(assert (= (and b!1251800 c!207674) b!1251807))

(assert (= (and b!1251800 (not c!207674)) b!1251813))

(assert (= (or b!1251815 b!1251807) bm!87235))

(assert (= (or b!1251815 b!1251807) bm!87229))

(assert (= (or b!1251815 b!1251807) bm!87230))

(assert (= (or b!1251816 bm!87235) bm!87233))

(assert (= (and d!354446 res!555093) b!1251802))

(assert (= (and b!1251802 c!207671) b!1251808))

(assert (= (and b!1251802 (not c!207671)) b!1251801))

(assert (= (and b!1251808 res!555091) b!1251814))

(assert (= (and b!1251801 c!207670) b!1251811))

(assert (= (and b!1251801 (not c!207670)) b!1251806))

(assert (= (and b!1251811 res!555092) b!1251812))

(assert (= (and b!1251806 c!207668) b!1251809))

(assert (= (and b!1251806 (not c!207668)) b!1251805))

(assert (= (or b!1251811 b!1251809) bm!87234))

(assert (= (or b!1251808 bm!87234) bm!87231))

(assert (= (or b!1251814 b!1251812) bm!87232))

(declare-fun m!1412435 () Bool)

(assert (=> bm!87231 m!1412435))

(declare-fun m!1412437 () Bool)

(assert (=> bm!87232 m!1412437))

(declare-fun m!1412439 () Bool)

(assert (=> bm!87230 m!1412439))

(declare-fun m!1412441 () Bool)

(assert (=> bm!87233 m!1412441))

(declare-fun m!1412443 () Bool)

(assert (=> bm!87229 m!1412443))

(assert (=> b!1251648 d!354446))

(declare-fun b!1251845 () Bool)

(declare-fun e!797072 () Bool)

(assert (=> b!1251845 (= e!797072 tp_is_empty!6435)))

(declare-fun b!1251848 () Bool)

(declare-fun tp!368691 () Bool)

(declare-fun tp!368690 () Bool)

(assert (=> b!1251848 (= e!797072 (and tp!368691 tp!368690))))

(declare-fun b!1251846 () Bool)

(declare-fun tp!368692 () Bool)

(declare-fun tp!368693 () Bool)

(assert (=> b!1251846 (= e!797072 (and tp!368692 tp!368693))))

(assert (=> b!1251650 (= tp!368679 e!797072)))

(declare-fun b!1251847 () Bool)

(declare-fun tp!368694 () Bool)

(assert (=> b!1251847 (= e!797072 tp!368694)))

(assert (= (and b!1251650 ((_ is ElementMatch!3457) (regOne!7426 r!15719))) b!1251845))

(assert (= (and b!1251650 ((_ is Concat!5687) (regOne!7426 r!15719))) b!1251846))

(assert (= (and b!1251650 ((_ is Star!3457) (regOne!7426 r!15719))) b!1251847))

(assert (= (and b!1251650 ((_ is Union!3457) (regOne!7426 r!15719))) b!1251848))

(declare-fun b!1251849 () Bool)

(declare-fun e!797073 () Bool)

(assert (=> b!1251849 (= e!797073 tp_is_empty!6435)))

(declare-fun b!1251852 () Bool)

(declare-fun tp!368696 () Bool)

(declare-fun tp!368695 () Bool)

(assert (=> b!1251852 (= e!797073 (and tp!368696 tp!368695))))

(declare-fun b!1251850 () Bool)

(declare-fun tp!368697 () Bool)

(declare-fun tp!368698 () Bool)

(assert (=> b!1251850 (= e!797073 (and tp!368697 tp!368698))))

(assert (=> b!1251650 (= tp!368677 e!797073)))

(declare-fun b!1251851 () Bool)

(declare-fun tp!368699 () Bool)

(assert (=> b!1251851 (= e!797073 tp!368699)))

(assert (= (and b!1251650 ((_ is ElementMatch!3457) (regTwo!7426 r!15719))) b!1251849))

(assert (= (and b!1251650 ((_ is Concat!5687) (regTwo!7426 r!15719))) b!1251850))

(assert (= (and b!1251650 ((_ is Star!3457) (regTwo!7426 r!15719))) b!1251851))

(assert (= (and b!1251650 ((_ is Union!3457) (regTwo!7426 r!15719))) b!1251852))

(declare-fun b!1251853 () Bool)

(declare-fun e!797074 () Bool)

(assert (=> b!1251853 (= e!797074 tp_is_empty!6435)))

(declare-fun b!1251856 () Bool)

(declare-fun tp!368701 () Bool)

(declare-fun tp!368700 () Bool)

(assert (=> b!1251856 (= e!797074 (and tp!368701 tp!368700))))

(declare-fun b!1251854 () Bool)

(declare-fun tp!368702 () Bool)

(declare-fun tp!368703 () Bool)

(assert (=> b!1251854 (= e!797074 (and tp!368702 tp!368703))))

(assert (=> b!1251651 (= tp!368675 e!797074)))

(declare-fun b!1251855 () Bool)

(declare-fun tp!368704 () Bool)

(assert (=> b!1251855 (= e!797074 tp!368704)))

(assert (= (and b!1251651 ((_ is ElementMatch!3457) (regOne!7427 r!15719))) b!1251853))

(assert (= (and b!1251651 ((_ is Concat!5687) (regOne!7427 r!15719))) b!1251854))

(assert (= (and b!1251651 ((_ is Star!3457) (regOne!7427 r!15719))) b!1251855))

(assert (= (and b!1251651 ((_ is Union!3457) (regOne!7427 r!15719))) b!1251856))

(declare-fun b!1251857 () Bool)

(declare-fun e!797075 () Bool)

(assert (=> b!1251857 (= e!797075 tp_is_empty!6435)))

(declare-fun b!1251860 () Bool)

(declare-fun tp!368706 () Bool)

(declare-fun tp!368705 () Bool)

(assert (=> b!1251860 (= e!797075 (and tp!368706 tp!368705))))

(declare-fun b!1251858 () Bool)

(declare-fun tp!368707 () Bool)

(declare-fun tp!368708 () Bool)

(assert (=> b!1251858 (= e!797075 (and tp!368707 tp!368708))))

(assert (=> b!1251651 (= tp!368676 e!797075)))

(declare-fun b!1251859 () Bool)

(declare-fun tp!368709 () Bool)

(assert (=> b!1251859 (= e!797075 tp!368709)))

(assert (= (and b!1251651 ((_ is ElementMatch!3457) (regTwo!7427 r!15719))) b!1251857))

(assert (= (and b!1251651 ((_ is Concat!5687) (regTwo!7427 r!15719))) b!1251858))

(assert (= (and b!1251651 ((_ is Star!3457) (regTwo!7427 r!15719))) b!1251859))

(assert (= (and b!1251651 ((_ is Union!3457) (regTwo!7427 r!15719))) b!1251860))

(declare-fun b!1251861 () Bool)

(declare-fun e!797076 () Bool)

(assert (=> b!1251861 (= e!797076 tp_is_empty!6435)))

(declare-fun b!1251864 () Bool)

(declare-fun tp!368711 () Bool)

(declare-fun tp!368710 () Bool)

(assert (=> b!1251864 (= e!797076 (and tp!368711 tp!368710))))

(declare-fun b!1251862 () Bool)

(declare-fun tp!368712 () Bool)

(declare-fun tp!368713 () Bool)

(assert (=> b!1251862 (= e!797076 (and tp!368712 tp!368713))))

(assert (=> b!1251652 (= tp!368678 e!797076)))

(declare-fun b!1251863 () Bool)

(declare-fun tp!368714 () Bool)

(assert (=> b!1251863 (= e!797076 tp!368714)))

(assert (= (and b!1251652 ((_ is ElementMatch!3457) (reg!3786 r!15719))) b!1251861))

(assert (= (and b!1251652 ((_ is Concat!5687) (reg!3786 r!15719))) b!1251862))

(assert (= (and b!1251652 ((_ is Star!3457) (reg!3786 r!15719))) b!1251863))

(assert (= (and b!1251652 ((_ is Union!3457) (reg!3786 r!15719))) b!1251864))

(check-sat (not b!1251862) (not b!1251860) (not bm!87226) (not b!1251852) (not b!1251854) (not b!1251850) (not bm!87230) (not b!1251855) (not bm!87223) (not b!1251864) (not b!1251851) (not bm!87224) (not b!1251847) (not bm!87179) (not b!1251863) (not b!1251858) (not b!1251856) tp_is_empty!6435 (not bm!87222) (not b!1251848) (not b!1251689) (not b!1251859) (not bm!87225) (not bm!87229) (not bm!87231) (not bm!87232) (not bm!87233) (not bm!87177) (not b!1251846))
(check-sat)
