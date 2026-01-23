; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284584 () Bool)

(assert start!284584)

(declare-fun b!2924602 () Bool)

(declare-fun e!1844806 () Bool)

(declare-fun e!1844807 () Bool)

(assert (=> b!2924602 (= e!1844806 e!1844807)))

(declare-fun res!1207195 () Bool)

(assert (=> b!2924602 (=> res!1207195 e!1844807)))

(declare-fun lt!1026448 () Bool)

(assert (=> b!2924602 (= res!1207195 lt!1026448)))

(declare-fun e!1844809 () Bool)

(assert (=> b!2924602 e!1844809))

(declare-fun res!1207194 () Bool)

(assert (=> b!2924602 (=> res!1207194 e!1844809)))

(assert (=> b!2924602 (= res!1207194 lt!1026448)))

(declare-datatypes ((C!18212 0))(
  ( (C!18213 (val!11142 Int)) )
))
(declare-datatypes ((Regex!9013 0))(
  ( (ElementMatch!9013 (c!477463 C!18212)) (Concat!14334 (regOne!18538 Regex!9013) (regTwo!18538 Regex!9013)) (EmptyExpr!9013) (Star!9013 (reg!9342 Regex!9013)) (EmptyLang!9013) (Union!9013 (regOne!18539 Regex!9013) (regTwo!18539 Regex!9013)) )
))
(declare-fun r!17423 () Regex!9013)

(declare-datatypes ((List!34878 0))(
  ( (Nil!34754) (Cons!34754 (h!40174 C!18212) (t!233943 List!34878)) )
))
(declare-fun s!11993 () List!34878)

(declare-fun matchR!3895 (Regex!9013 List!34878) Bool)

(assert (=> b!2924602 (= lt!1026448 (matchR!3895 (regOne!18539 r!17423) s!11993))))

(declare-datatypes ((Unit!48365 0))(
  ( (Unit!48366) )
))
(declare-fun lt!1026453 () Unit!48365)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!262 (Regex!9013 Regex!9013 List!34878) Unit!48365)

(assert (=> b!2924602 (= lt!1026453 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!262 (regOne!18539 r!17423) (regTwo!18539 r!17423) s!11993))))

(declare-fun b!2924603 () Bool)

(declare-fun e!1844803 () Bool)

(assert (=> b!2924603 (= e!1844807 e!1844803)))

(declare-fun res!1207196 () Bool)

(assert (=> b!2924603 (=> res!1207196 e!1844803)))

(declare-fun lt!1026454 () Bool)

(assert (=> b!2924603 (= res!1207196 (not lt!1026454))))

(declare-fun lt!1026451 () Bool)

(assert (=> b!2924603 (= lt!1026451 lt!1026454)))

(declare-fun lt!1026446 () Regex!9013)

(assert (=> b!2924603 (= lt!1026454 (matchR!3895 lt!1026446 s!11993))))

(assert (=> b!2924603 (= lt!1026451 (matchR!3895 (regTwo!18539 r!17423) s!11993))))

(declare-fun simplify!42 (Regex!9013) Regex!9013)

(assert (=> b!2924603 (= lt!1026446 (simplify!42 (regTwo!18539 r!17423)))))

(declare-fun lt!1026455 () Unit!48365)

(declare-fun lemmaSimplifySound!40 (Regex!9013 List!34878) Unit!48365)

(assert (=> b!2924603 (= lt!1026455 (lemmaSimplifySound!40 (regTwo!18539 r!17423) s!11993))))

(declare-fun res!1207197 () Bool)

(declare-fun e!1844804 () Bool)

(assert (=> start!284584 (=> (not res!1207197) (not e!1844804))))

(declare-fun validRegex!3746 (Regex!9013) Bool)

(assert (=> start!284584 (= res!1207197 (validRegex!3746 r!17423))))

(assert (=> start!284584 e!1844804))

(declare-fun e!1844808 () Bool)

(assert (=> start!284584 e!1844808))

(declare-fun e!1844805 () Bool)

(assert (=> start!284584 e!1844805))

(declare-fun b!2924604 () Bool)

(declare-fun tp!938009 () Bool)

(declare-fun tp!938011 () Bool)

(assert (=> b!2924604 (= e!1844808 (and tp!938009 tp!938011))))

(declare-fun b!2924605 () Bool)

(assert (=> b!2924605 (= e!1844804 (not e!1844806))))

(declare-fun res!1207198 () Bool)

(assert (=> b!2924605 (=> res!1207198 e!1844806)))

(declare-fun lt!1026452 () Bool)

(get-info :version)

(assert (=> b!2924605 (= res!1207198 (or (not lt!1026452) ((_ is Concat!14334) r!17423) (not ((_ is Union!9013) r!17423))))))

(declare-fun matchRSpec!1150 (Regex!9013 List!34878) Bool)

(assert (=> b!2924605 (= lt!1026452 (matchRSpec!1150 r!17423 s!11993))))

(assert (=> b!2924605 (= lt!1026452 (matchR!3895 r!17423 s!11993))))

(declare-fun lt!1026450 () Unit!48365)

(declare-fun mainMatchTheorem!1150 (Regex!9013 List!34878) Unit!48365)

(assert (=> b!2924605 (= lt!1026450 (mainMatchTheorem!1150 r!17423 s!11993))))

(declare-fun b!2924606 () Bool)

(declare-fun tp_is_empty!15589 () Bool)

(declare-fun tp!938010 () Bool)

(assert (=> b!2924606 (= e!1844805 (and tp_is_empty!15589 tp!938010))))

(declare-fun b!2924607 () Bool)

(assert (=> b!2924607 (= e!1844809 (matchR!3895 (regTwo!18539 r!17423) s!11993))))

(declare-fun b!2924608 () Bool)

(declare-fun tp!938008 () Bool)

(declare-fun tp!938012 () Bool)

(assert (=> b!2924608 (= e!1844808 (and tp!938008 tp!938012))))

(declare-fun b!2924609 () Bool)

(assert (=> b!2924609 (= e!1844803 (validRegex!3746 (regTwo!18539 r!17423)))))

(declare-fun lt!1026449 () Regex!9013)

(assert (=> b!2924609 (matchR!3895 (Union!9013 lt!1026446 lt!1026449) s!11993)))

(declare-fun lt!1026447 () Unit!48365)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!54 (Regex!9013 Regex!9013 List!34878) Unit!48365)

(assert (=> b!2924609 (= lt!1026447 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!54 lt!1026446 lt!1026449 s!11993))))

(assert (=> b!2924609 (= lt!1026449 (simplify!42 (regOne!18539 r!17423)))))

(declare-fun b!2924610 () Bool)

(declare-fun tp!938013 () Bool)

(assert (=> b!2924610 (= e!1844808 tp!938013)))

(declare-fun b!2924611 () Bool)

(assert (=> b!2924611 (= e!1844808 tp_is_empty!15589)))

(assert (= (and start!284584 res!1207197) b!2924605))

(assert (= (and b!2924605 (not res!1207198)) b!2924602))

(assert (= (and b!2924602 (not res!1207194)) b!2924607))

(assert (= (and b!2924602 (not res!1207195)) b!2924603))

(assert (= (and b!2924603 (not res!1207196)) b!2924609))

(assert (= (and start!284584 ((_ is ElementMatch!9013) r!17423)) b!2924611))

(assert (= (and start!284584 ((_ is Concat!14334) r!17423)) b!2924608))

(assert (= (and start!284584 ((_ is Star!9013) r!17423)) b!2924610))

(assert (= (and start!284584 ((_ is Union!9013) r!17423)) b!2924604))

(assert (= (and start!284584 ((_ is Cons!34754) s!11993)) b!2924606))

(declare-fun m!3318337 () Bool)

(assert (=> b!2924602 m!3318337))

(declare-fun m!3318339 () Bool)

(assert (=> b!2924602 m!3318339))

(declare-fun m!3318341 () Bool)

(assert (=> start!284584 m!3318341))

(declare-fun m!3318343 () Bool)

(assert (=> b!2924607 m!3318343))

(declare-fun m!3318345 () Bool)

(assert (=> b!2924609 m!3318345))

(declare-fun m!3318347 () Bool)

(assert (=> b!2924609 m!3318347))

(declare-fun m!3318349 () Bool)

(assert (=> b!2924609 m!3318349))

(declare-fun m!3318351 () Bool)

(assert (=> b!2924609 m!3318351))

(declare-fun m!3318353 () Bool)

(assert (=> b!2924603 m!3318353))

(assert (=> b!2924603 m!3318343))

(declare-fun m!3318355 () Bool)

(assert (=> b!2924603 m!3318355))

(declare-fun m!3318357 () Bool)

(assert (=> b!2924603 m!3318357))

(declare-fun m!3318359 () Bool)

(assert (=> b!2924605 m!3318359))

(declare-fun m!3318361 () Bool)

(assert (=> b!2924605 m!3318361))

(declare-fun m!3318363 () Bool)

(assert (=> b!2924605 m!3318363))

(check-sat (not start!284584) (not b!2924609) (not b!2924604) (not b!2924606) (not b!2924605) (not b!2924603) (not b!2924602) (not b!2924610) (not b!2924607) tp_is_empty!15589 (not b!2924608))
(check-sat)
(get-model)

(declare-fun b!2924640 () Bool)

(declare-fun e!1844824 () Bool)

(declare-fun head!6503 (List!34878) C!18212)

(assert (=> b!2924640 (= e!1844824 (not (= (head!6503 s!11993) (c!477463 lt!1026446))))))

(declare-fun b!2924641 () Bool)

(declare-fun res!1207216 () Bool)

(declare-fun e!1844825 () Bool)

(assert (=> b!2924641 (=> (not res!1207216) (not e!1844825))))

(declare-fun isEmpty!19000 (List!34878) Bool)

(declare-fun tail!4729 (List!34878) List!34878)

(assert (=> b!2924641 (= res!1207216 (isEmpty!19000 (tail!4729 s!11993)))))

(declare-fun b!2924642 () Bool)

(declare-fun e!1844826 () Bool)

(declare-fun e!1844829 () Bool)

(assert (=> b!2924642 (= e!1844826 e!1844829)))

(declare-fun res!1207220 () Bool)

(assert (=> b!2924642 (=> (not res!1207220) (not e!1844829))))

(declare-fun lt!1026458 () Bool)

(assert (=> b!2924642 (= res!1207220 (not lt!1026458))))

(declare-fun b!2924643 () Bool)

(assert (=> b!2924643 (= e!1844829 e!1844824)))

(declare-fun res!1207222 () Bool)

(assert (=> b!2924643 (=> res!1207222 e!1844824)))

(declare-fun call!191669 () Bool)

(assert (=> b!2924643 (= res!1207222 call!191669)))

(declare-fun b!2924644 () Bool)

(declare-fun e!1844828 () Bool)

(declare-fun e!1844830 () Bool)

(assert (=> b!2924644 (= e!1844828 e!1844830)))

(declare-fun c!477471 () Bool)

(assert (=> b!2924644 (= c!477471 ((_ is EmptyLang!9013) lt!1026446))))

(declare-fun b!2924645 () Bool)

(assert (=> b!2924645 (= e!1844825 (= (head!6503 s!11993) (c!477463 lt!1026446)))))

(declare-fun b!2924646 () Bool)

(declare-fun e!1844827 () Bool)

(declare-fun derivativeStep!2444 (Regex!9013 C!18212) Regex!9013)

(assert (=> b!2924646 (= e!1844827 (matchR!3895 (derivativeStep!2444 lt!1026446 (head!6503 s!11993)) (tail!4729 s!11993)))))

(declare-fun b!2924647 () Bool)

(assert (=> b!2924647 (= e!1844828 (= lt!1026458 call!191669))))

(declare-fun b!2924648 () Bool)

(declare-fun res!1207215 () Bool)

(assert (=> b!2924648 (=> (not res!1207215) (not e!1844825))))

(assert (=> b!2924648 (= res!1207215 (not call!191669))))

(declare-fun b!2924649 () Bool)

(declare-fun res!1207221 () Bool)

(assert (=> b!2924649 (=> res!1207221 e!1844826)))

(assert (=> b!2924649 (= res!1207221 (not ((_ is ElementMatch!9013) lt!1026446)))))

(assert (=> b!2924649 (= e!1844830 e!1844826)))

(declare-fun d!838812 () Bool)

(assert (=> d!838812 e!1844828))

(declare-fun c!477470 () Bool)

(assert (=> d!838812 (= c!477470 ((_ is EmptyExpr!9013) lt!1026446))))

(assert (=> d!838812 (= lt!1026458 e!1844827)))

(declare-fun c!477472 () Bool)

(assert (=> d!838812 (= c!477472 (isEmpty!19000 s!11993))))

(assert (=> d!838812 (validRegex!3746 lt!1026446)))

(assert (=> d!838812 (= (matchR!3895 lt!1026446 s!11993) lt!1026458)))

(declare-fun b!2924650 () Bool)

(assert (=> b!2924650 (= e!1844830 (not lt!1026458))))

(declare-fun b!2924651 () Bool)

(declare-fun nullable!2830 (Regex!9013) Bool)

(assert (=> b!2924651 (= e!1844827 (nullable!2830 lt!1026446))))

(declare-fun b!2924652 () Bool)

(declare-fun res!1207217 () Bool)

(assert (=> b!2924652 (=> res!1207217 e!1844824)))

(assert (=> b!2924652 (= res!1207217 (not (isEmpty!19000 (tail!4729 s!11993))))))

(declare-fun bm!191664 () Bool)

(assert (=> bm!191664 (= call!191669 (isEmpty!19000 s!11993))))

(declare-fun b!2924653 () Bool)

(declare-fun res!1207218 () Bool)

(assert (=> b!2924653 (=> res!1207218 e!1844826)))

(assert (=> b!2924653 (= res!1207218 e!1844825)))

(declare-fun res!1207219 () Bool)

(assert (=> b!2924653 (=> (not res!1207219) (not e!1844825))))

(assert (=> b!2924653 (= res!1207219 lt!1026458)))

(assert (= (and d!838812 c!477472) b!2924651))

(assert (= (and d!838812 (not c!477472)) b!2924646))

(assert (= (and d!838812 c!477470) b!2924647))

(assert (= (and d!838812 (not c!477470)) b!2924644))

(assert (= (and b!2924644 c!477471) b!2924650))

(assert (= (and b!2924644 (not c!477471)) b!2924649))

(assert (= (and b!2924649 (not res!1207221)) b!2924653))

(assert (= (and b!2924653 res!1207219) b!2924648))

(assert (= (and b!2924648 res!1207215) b!2924641))

(assert (= (and b!2924641 res!1207216) b!2924645))

(assert (= (and b!2924653 (not res!1207218)) b!2924642))

(assert (= (and b!2924642 res!1207220) b!2924643))

(assert (= (and b!2924643 (not res!1207222)) b!2924652))

(assert (= (and b!2924652 (not res!1207217)) b!2924640))

(assert (= (or b!2924647 b!2924643 b!2924648) bm!191664))

(declare-fun m!3318365 () Bool)

(assert (=> b!2924640 m!3318365))

(declare-fun m!3318367 () Bool)

(assert (=> b!2924651 m!3318367))

(declare-fun m!3318369 () Bool)

(assert (=> b!2924652 m!3318369))

(assert (=> b!2924652 m!3318369))

(declare-fun m!3318371 () Bool)

(assert (=> b!2924652 m!3318371))

(assert (=> b!2924641 m!3318369))

(assert (=> b!2924641 m!3318369))

(assert (=> b!2924641 m!3318371))

(assert (=> b!2924646 m!3318365))

(assert (=> b!2924646 m!3318365))

(declare-fun m!3318373 () Bool)

(assert (=> b!2924646 m!3318373))

(assert (=> b!2924646 m!3318369))

(assert (=> b!2924646 m!3318373))

(assert (=> b!2924646 m!3318369))

(declare-fun m!3318375 () Bool)

(assert (=> b!2924646 m!3318375))

(assert (=> b!2924645 m!3318365))

(declare-fun m!3318377 () Bool)

(assert (=> bm!191664 m!3318377))

(assert (=> d!838812 m!3318377))

(declare-fun m!3318379 () Bool)

(assert (=> d!838812 m!3318379))

(assert (=> b!2924603 d!838812))

(declare-fun b!2924654 () Bool)

(declare-fun e!1844831 () Bool)

(assert (=> b!2924654 (= e!1844831 (not (= (head!6503 s!11993) (c!477463 (regTwo!18539 r!17423)))))))

(declare-fun b!2924655 () Bool)

(declare-fun res!1207224 () Bool)

(declare-fun e!1844832 () Bool)

(assert (=> b!2924655 (=> (not res!1207224) (not e!1844832))))

(assert (=> b!2924655 (= res!1207224 (isEmpty!19000 (tail!4729 s!11993)))))

(declare-fun b!2924656 () Bool)

(declare-fun e!1844833 () Bool)

(declare-fun e!1844836 () Bool)

(assert (=> b!2924656 (= e!1844833 e!1844836)))

(declare-fun res!1207228 () Bool)

(assert (=> b!2924656 (=> (not res!1207228) (not e!1844836))))

(declare-fun lt!1026459 () Bool)

(assert (=> b!2924656 (= res!1207228 (not lt!1026459))))

(declare-fun b!2924657 () Bool)

(assert (=> b!2924657 (= e!1844836 e!1844831)))

(declare-fun res!1207230 () Bool)

(assert (=> b!2924657 (=> res!1207230 e!1844831)))

(declare-fun call!191670 () Bool)

(assert (=> b!2924657 (= res!1207230 call!191670)))

(declare-fun b!2924658 () Bool)

(declare-fun e!1844835 () Bool)

(declare-fun e!1844837 () Bool)

(assert (=> b!2924658 (= e!1844835 e!1844837)))

(declare-fun c!477474 () Bool)

(assert (=> b!2924658 (= c!477474 ((_ is EmptyLang!9013) (regTwo!18539 r!17423)))))

(declare-fun b!2924659 () Bool)

(assert (=> b!2924659 (= e!1844832 (= (head!6503 s!11993) (c!477463 (regTwo!18539 r!17423))))))

(declare-fun b!2924660 () Bool)

(declare-fun e!1844834 () Bool)

(assert (=> b!2924660 (= e!1844834 (matchR!3895 (derivativeStep!2444 (regTwo!18539 r!17423) (head!6503 s!11993)) (tail!4729 s!11993)))))

(declare-fun b!2924661 () Bool)

(assert (=> b!2924661 (= e!1844835 (= lt!1026459 call!191670))))

(declare-fun b!2924662 () Bool)

(declare-fun res!1207223 () Bool)

(assert (=> b!2924662 (=> (not res!1207223) (not e!1844832))))

(assert (=> b!2924662 (= res!1207223 (not call!191670))))

(declare-fun b!2924663 () Bool)

(declare-fun res!1207229 () Bool)

(assert (=> b!2924663 (=> res!1207229 e!1844833)))

(assert (=> b!2924663 (= res!1207229 (not ((_ is ElementMatch!9013) (regTwo!18539 r!17423))))))

(assert (=> b!2924663 (= e!1844837 e!1844833)))

(declare-fun d!838816 () Bool)

(assert (=> d!838816 e!1844835))

(declare-fun c!477473 () Bool)

(assert (=> d!838816 (= c!477473 ((_ is EmptyExpr!9013) (regTwo!18539 r!17423)))))

(assert (=> d!838816 (= lt!1026459 e!1844834)))

(declare-fun c!477475 () Bool)

(assert (=> d!838816 (= c!477475 (isEmpty!19000 s!11993))))

(assert (=> d!838816 (validRegex!3746 (regTwo!18539 r!17423))))

(assert (=> d!838816 (= (matchR!3895 (regTwo!18539 r!17423) s!11993) lt!1026459)))

(declare-fun b!2924664 () Bool)

(assert (=> b!2924664 (= e!1844837 (not lt!1026459))))

(declare-fun b!2924665 () Bool)

(assert (=> b!2924665 (= e!1844834 (nullable!2830 (regTwo!18539 r!17423)))))

(declare-fun b!2924666 () Bool)

(declare-fun res!1207225 () Bool)

(assert (=> b!2924666 (=> res!1207225 e!1844831)))

(assert (=> b!2924666 (= res!1207225 (not (isEmpty!19000 (tail!4729 s!11993))))))

(declare-fun bm!191665 () Bool)

(assert (=> bm!191665 (= call!191670 (isEmpty!19000 s!11993))))

(declare-fun b!2924667 () Bool)

(declare-fun res!1207226 () Bool)

(assert (=> b!2924667 (=> res!1207226 e!1844833)))

(assert (=> b!2924667 (= res!1207226 e!1844832)))

(declare-fun res!1207227 () Bool)

(assert (=> b!2924667 (=> (not res!1207227) (not e!1844832))))

(assert (=> b!2924667 (= res!1207227 lt!1026459)))

(assert (= (and d!838816 c!477475) b!2924665))

(assert (= (and d!838816 (not c!477475)) b!2924660))

(assert (= (and d!838816 c!477473) b!2924661))

(assert (= (and d!838816 (not c!477473)) b!2924658))

(assert (= (and b!2924658 c!477474) b!2924664))

(assert (= (and b!2924658 (not c!477474)) b!2924663))

(assert (= (and b!2924663 (not res!1207229)) b!2924667))

(assert (= (and b!2924667 res!1207227) b!2924662))

(assert (= (and b!2924662 res!1207223) b!2924655))

(assert (= (and b!2924655 res!1207224) b!2924659))

(assert (= (and b!2924667 (not res!1207226)) b!2924656))

(assert (= (and b!2924656 res!1207228) b!2924657))

(assert (= (and b!2924657 (not res!1207230)) b!2924666))

(assert (= (and b!2924666 (not res!1207225)) b!2924654))

(assert (= (or b!2924661 b!2924657 b!2924662) bm!191665))

(assert (=> b!2924654 m!3318365))

(declare-fun m!3318381 () Bool)

(assert (=> b!2924665 m!3318381))

(assert (=> b!2924666 m!3318369))

(assert (=> b!2924666 m!3318369))

(assert (=> b!2924666 m!3318371))

(assert (=> b!2924655 m!3318369))

(assert (=> b!2924655 m!3318369))

(assert (=> b!2924655 m!3318371))

(assert (=> b!2924660 m!3318365))

(assert (=> b!2924660 m!3318365))

(declare-fun m!3318383 () Bool)

(assert (=> b!2924660 m!3318383))

(assert (=> b!2924660 m!3318369))

(assert (=> b!2924660 m!3318383))

(assert (=> b!2924660 m!3318369))

(declare-fun m!3318385 () Bool)

(assert (=> b!2924660 m!3318385))

(assert (=> b!2924659 m!3318365))

(assert (=> bm!191665 m!3318377))

(assert (=> d!838816 m!3318377))

(assert (=> d!838816 m!3318345))

(assert (=> b!2924603 d!838816))

(declare-fun b!2924774 () Bool)

(declare-fun c!477520 () Bool)

(declare-fun call!191695 () Bool)

(assert (=> b!2924774 (= c!477520 call!191695)))

(declare-fun e!1844903 () Regex!9013)

(declare-fun e!1844902 () Regex!9013)

(assert (=> b!2924774 (= e!1844903 e!1844902)))

(declare-fun b!2924775 () Bool)

(declare-fun e!1844897 () Regex!9013)

(assert (=> b!2924775 (= e!1844897 EmptyLang!9013)))

(declare-fun b!2924776 () Bool)

(declare-fun c!477515 () Bool)

(declare-fun e!1844899 () Bool)

(assert (=> b!2924776 (= c!477515 e!1844899)))

(declare-fun res!1207271 () Bool)

(assert (=> b!2924776 (=> res!1207271 e!1844899)))

(declare-fun call!191692 () Bool)

(assert (=> b!2924776 (= res!1207271 call!191692)))

(declare-fun lt!1026479 () Regex!9013)

(declare-fun call!191691 () Regex!9013)

(assert (=> b!2924776 (= lt!1026479 call!191691)))

(declare-fun e!1844907 () Regex!9013)

(declare-fun e!1844906 () Regex!9013)

(assert (=> b!2924776 (= e!1844907 e!1844906)))

(declare-fun b!2924777 () Bool)

(declare-fun lt!1026477 () Regex!9013)

(assert (=> b!2924777 (= e!1844903 lt!1026477)))

(declare-fun bm!191684 () Bool)

(declare-fun call!191689 () Regex!9013)

(declare-fun c!477512 () Bool)

(assert (=> bm!191684 (= call!191689 (simplify!42 (ite c!477512 (regOne!18539 (regTwo!18539 r!17423)) (regTwo!18538 (regTwo!18539 r!17423)))))))

(declare-fun b!2924778 () Bool)

(assert (=> b!2924778 (= e!1844906 (Star!9013 lt!1026479))))

(declare-fun b!2924779 () Bool)

(assert (=> b!2924779 (= c!477512 ((_ is Union!9013) (regTwo!18539 r!17423)))))

(declare-fun e!1844900 () Regex!9013)

(assert (=> b!2924779 (= e!1844907 e!1844900)))

(declare-fun b!2924780 () Bool)

(assert (=> b!2924780 (= e!1844906 EmptyExpr!9013)))

(declare-fun b!2924781 () Bool)

(declare-fun e!1844898 () Regex!9013)

(declare-fun lt!1026480 () Regex!9013)

(assert (=> b!2924781 (= e!1844898 lt!1026480)))

(declare-fun lt!1026478 () Regex!9013)

(declare-fun bm!191685 () Bool)

(declare-fun call!191694 () Bool)

(declare-fun c!477518 () Bool)

(declare-fun isEmptyExpr!268 (Regex!9013) Bool)

(assert (=> bm!191685 (= call!191694 (isEmptyExpr!268 (ite c!477518 lt!1026479 lt!1026478)))))

(declare-fun b!2924782 () Bool)

(declare-fun e!1844895 () Regex!9013)

(assert (=> b!2924782 (= e!1844895 lt!1026478)))

(declare-fun b!2924783 () Bool)

(declare-fun c!477519 () Bool)

(assert (=> b!2924783 (= c!477519 call!191694)))

(declare-fun e!1844894 () Regex!9013)

(assert (=> b!2924783 (= e!1844894 e!1844898)))

(declare-fun b!2924784 () Bool)

(declare-fun e!1844901 () Bool)

(declare-fun lt!1026481 () Regex!9013)

(assert (=> b!2924784 (= e!1844901 (= (nullable!2830 lt!1026481) (nullable!2830 (regTwo!18539 r!17423))))))

(declare-fun b!2924785 () Bool)

(declare-fun e!1844905 () Regex!9013)

(assert (=> b!2924785 (= e!1844905 e!1844907)))

(assert (=> b!2924785 (= c!477518 ((_ is Star!9013) (regTwo!18539 r!17423)))))

(declare-fun b!2924786 () Bool)

(declare-fun lt!1026476 () Regex!9013)

(assert (=> b!2924786 (= e!1844902 lt!1026476)))

(declare-fun bm!191686 () Bool)

(assert (=> bm!191686 (= call!191691 (simplify!42 (ite c!477518 (reg!9342 (regTwo!18539 r!17423)) (ite c!477512 (regTwo!18539 (regTwo!18539 r!17423)) (regOne!18538 (regTwo!18539 r!17423))))))))

(declare-fun b!2924787 () Bool)

(assert (=> b!2924787 (= e!1844902 (Union!9013 lt!1026476 lt!1026477))))

(declare-fun b!2924788 () Bool)

(assert (=> b!2924788 (= e!1844895 (Concat!14334 lt!1026478 lt!1026480))))

(declare-fun b!2924789 () Bool)

(assert (=> b!2924789 (= e!1844899 call!191694)))

(declare-fun bm!191687 () Bool)

(declare-fun call!191690 () Regex!9013)

(assert (=> bm!191687 (= call!191690 call!191691)))

(declare-fun bm!191688 () Bool)

(assert (=> bm!191688 (= call!191695 call!191692)))

(declare-fun b!2924790 () Bool)

(assert (=> b!2924790 (= e!1844898 e!1844895)))

(declare-fun c!477510 () Bool)

(assert (=> b!2924790 (= c!477510 (isEmptyExpr!268 lt!1026480))))

(declare-fun b!2924791 () Bool)

(assert (=> b!2924791 (= e!1844894 EmptyLang!9013)))

(declare-fun b!2924792 () Bool)

(declare-fun e!1844896 () Regex!9013)

(assert (=> b!2924792 (= e!1844896 (regTwo!18539 r!17423))))

(declare-fun b!2924793 () Bool)

(assert (=> b!2924793 (= e!1844897 e!1844896)))

(declare-fun c!477514 () Bool)

(assert (=> b!2924793 (= c!477514 ((_ is ElementMatch!9013) (regTwo!18539 r!17423)))))

(declare-fun b!2924794 () Bool)

(declare-fun e!1844904 () Bool)

(declare-fun call!191693 () Bool)

(assert (=> b!2924794 (= e!1844904 call!191693)))

(declare-fun d!838818 () Bool)

(assert (=> d!838818 e!1844901))

(declare-fun res!1207270 () Bool)

(assert (=> d!838818 (=> (not res!1207270) (not e!1844901))))

(assert (=> d!838818 (= res!1207270 (validRegex!3746 lt!1026481))))

(assert (=> d!838818 (= lt!1026481 e!1844897)))

(declare-fun c!477517 () Bool)

(assert (=> d!838818 (= c!477517 ((_ is EmptyLang!9013) (regTwo!18539 r!17423)))))

(assert (=> d!838818 (validRegex!3746 (regTwo!18539 r!17423))))

(assert (=> d!838818 (= (simplify!42 (regTwo!18539 r!17423)) lt!1026481)))

(declare-fun b!2924795 () Bool)

(assert (=> b!2924795 (= e!1844900 e!1844894)))

(assert (=> b!2924795 (= lt!1026478 call!191690)))

(assert (=> b!2924795 (= lt!1026480 call!191689)))

(declare-fun res!1207269 () Bool)

(assert (=> b!2924795 (= res!1207269 call!191695)))

(assert (=> b!2924795 (=> res!1207269 e!1844904)))

(declare-fun c!477516 () Bool)

(assert (=> b!2924795 (= c!477516 e!1844904)))

(declare-fun bm!191689 () Bool)

(declare-fun isEmptyLang!183 (Regex!9013) Bool)

(assert (=> bm!191689 (= call!191693 (isEmptyLang!183 (ite c!477512 lt!1026476 lt!1026480)))))

(declare-fun b!2924796 () Bool)

(declare-fun c!477513 () Bool)

(assert (=> b!2924796 (= c!477513 ((_ is EmptyExpr!9013) (regTwo!18539 r!17423)))))

(assert (=> b!2924796 (= e!1844896 e!1844905)))

(declare-fun b!2924797 () Bool)

(assert (=> b!2924797 (= e!1844900 e!1844903)))

(assert (=> b!2924797 (= lt!1026476 call!191689)))

(assert (=> b!2924797 (= lt!1026477 call!191690)))

(declare-fun c!477511 () Bool)

(assert (=> b!2924797 (= c!477511 call!191693)))

(declare-fun bm!191690 () Bool)

(assert (=> bm!191690 (= call!191692 (isEmptyLang!183 (ite c!477518 lt!1026479 (ite c!477512 lt!1026477 lt!1026478))))))

(declare-fun b!2924798 () Bool)

(assert (=> b!2924798 (= e!1844905 EmptyExpr!9013)))

(assert (= (and d!838818 c!477517) b!2924775))

(assert (= (and d!838818 (not c!477517)) b!2924793))

(assert (= (and b!2924793 c!477514) b!2924792))

(assert (= (and b!2924793 (not c!477514)) b!2924796))

(assert (= (and b!2924796 c!477513) b!2924798))

(assert (= (and b!2924796 (not c!477513)) b!2924785))

(assert (= (and b!2924785 c!477518) b!2924776))

(assert (= (and b!2924785 (not c!477518)) b!2924779))

(assert (= (and b!2924776 (not res!1207271)) b!2924789))

(assert (= (and b!2924776 c!477515) b!2924780))

(assert (= (and b!2924776 (not c!477515)) b!2924778))

(assert (= (and b!2924779 c!477512) b!2924797))

(assert (= (and b!2924779 (not c!477512)) b!2924795))

(assert (= (and b!2924797 c!477511) b!2924777))

(assert (= (and b!2924797 (not c!477511)) b!2924774))

(assert (= (and b!2924774 c!477520) b!2924786))

(assert (= (and b!2924774 (not c!477520)) b!2924787))

(assert (= (and b!2924795 (not res!1207269)) b!2924794))

(assert (= (and b!2924795 c!477516) b!2924791))

(assert (= (and b!2924795 (not c!477516)) b!2924783))

(assert (= (and b!2924783 c!477519) b!2924781))

(assert (= (and b!2924783 (not c!477519)) b!2924790))

(assert (= (and b!2924790 c!477510) b!2924782))

(assert (= (and b!2924790 (not c!477510)) b!2924788))

(assert (= (or b!2924797 b!2924795) bm!191684))

(assert (= (or b!2924797 b!2924795) bm!191687))

(assert (= (or b!2924797 b!2924794) bm!191689))

(assert (= (or b!2924774 b!2924795) bm!191688))

(assert (= (or b!2924789 b!2924783) bm!191685))

(assert (= (or b!2924776 bm!191687) bm!191686))

(assert (= (or b!2924776 bm!191688) bm!191690))

(assert (= (and d!838818 res!1207270) b!2924784))

(declare-fun m!3318409 () Bool)

(assert (=> bm!191684 m!3318409))

(declare-fun m!3318411 () Bool)

(assert (=> bm!191686 m!3318411))

(declare-fun m!3318413 () Bool)

(assert (=> bm!191689 m!3318413))

(declare-fun m!3318415 () Bool)

(assert (=> bm!191690 m!3318415))

(declare-fun m!3318417 () Bool)

(assert (=> b!2924784 m!3318417))

(assert (=> b!2924784 m!3318381))

(declare-fun m!3318419 () Bool)

(assert (=> b!2924790 m!3318419))

(declare-fun m!3318421 () Bool)

(assert (=> d!838818 m!3318421))

(assert (=> d!838818 m!3318345))

(declare-fun m!3318423 () Bool)

(assert (=> bm!191685 m!3318423))

(assert (=> b!2924603 d!838818))

(declare-fun d!838824 () Bool)

(assert (=> d!838824 (= (matchR!3895 (regTwo!18539 r!17423) s!11993) (matchR!3895 (simplify!42 (regTwo!18539 r!17423)) s!11993))))

(declare-fun lt!1026484 () Unit!48365)

(declare-fun choose!17255 (Regex!9013 List!34878) Unit!48365)

(assert (=> d!838824 (= lt!1026484 (choose!17255 (regTwo!18539 r!17423) s!11993))))

(assert (=> d!838824 (validRegex!3746 (regTwo!18539 r!17423))))

(assert (=> d!838824 (= (lemmaSimplifySound!40 (regTwo!18539 r!17423) s!11993) lt!1026484)))

(declare-fun bs!525005 () Bool)

(assert (= bs!525005 d!838824))

(declare-fun m!3318425 () Bool)

(assert (=> bs!525005 m!3318425))

(assert (=> bs!525005 m!3318355))

(declare-fun m!3318427 () Bool)

(assert (=> bs!525005 m!3318427))

(assert (=> bs!525005 m!3318343))

(assert (=> bs!525005 m!3318345))

(assert (=> bs!525005 m!3318355))

(assert (=> b!2924603 d!838824))

(declare-fun b!2924799 () Bool)

(declare-fun e!1844908 () Bool)

(assert (=> b!2924799 (= e!1844908 (not (= (head!6503 s!11993) (c!477463 (regOne!18539 r!17423)))))))

(declare-fun b!2924800 () Bool)

(declare-fun res!1207273 () Bool)

(declare-fun e!1844909 () Bool)

(assert (=> b!2924800 (=> (not res!1207273) (not e!1844909))))

(assert (=> b!2924800 (= res!1207273 (isEmpty!19000 (tail!4729 s!11993)))))

(declare-fun b!2924801 () Bool)

(declare-fun e!1844910 () Bool)

(declare-fun e!1844913 () Bool)

(assert (=> b!2924801 (= e!1844910 e!1844913)))

(declare-fun res!1207277 () Bool)

(assert (=> b!2924801 (=> (not res!1207277) (not e!1844913))))

(declare-fun lt!1026485 () Bool)

(assert (=> b!2924801 (= res!1207277 (not lt!1026485))))

(declare-fun b!2924802 () Bool)

(assert (=> b!2924802 (= e!1844913 e!1844908)))

(declare-fun res!1207279 () Bool)

(assert (=> b!2924802 (=> res!1207279 e!1844908)))

(declare-fun call!191696 () Bool)

(assert (=> b!2924802 (= res!1207279 call!191696)))

(declare-fun b!2924803 () Bool)

(declare-fun e!1844912 () Bool)

(declare-fun e!1844914 () Bool)

(assert (=> b!2924803 (= e!1844912 e!1844914)))

(declare-fun c!477522 () Bool)

(assert (=> b!2924803 (= c!477522 ((_ is EmptyLang!9013) (regOne!18539 r!17423)))))

(declare-fun b!2924804 () Bool)

(assert (=> b!2924804 (= e!1844909 (= (head!6503 s!11993) (c!477463 (regOne!18539 r!17423))))))

(declare-fun b!2924805 () Bool)

(declare-fun e!1844911 () Bool)

(assert (=> b!2924805 (= e!1844911 (matchR!3895 (derivativeStep!2444 (regOne!18539 r!17423) (head!6503 s!11993)) (tail!4729 s!11993)))))

(declare-fun b!2924806 () Bool)

(assert (=> b!2924806 (= e!1844912 (= lt!1026485 call!191696))))

(declare-fun b!2924807 () Bool)

(declare-fun res!1207272 () Bool)

(assert (=> b!2924807 (=> (not res!1207272) (not e!1844909))))

(assert (=> b!2924807 (= res!1207272 (not call!191696))))

(declare-fun b!2924808 () Bool)

(declare-fun res!1207278 () Bool)

(assert (=> b!2924808 (=> res!1207278 e!1844910)))

(assert (=> b!2924808 (= res!1207278 (not ((_ is ElementMatch!9013) (regOne!18539 r!17423))))))

(assert (=> b!2924808 (= e!1844914 e!1844910)))

(declare-fun d!838826 () Bool)

(assert (=> d!838826 e!1844912))

(declare-fun c!477521 () Bool)

(assert (=> d!838826 (= c!477521 ((_ is EmptyExpr!9013) (regOne!18539 r!17423)))))

(assert (=> d!838826 (= lt!1026485 e!1844911)))

(declare-fun c!477523 () Bool)

(assert (=> d!838826 (= c!477523 (isEmpty!19000 s!11993))))

(assert (=> d!838826 (validRegex!3746 (regOne!18539 r!17423))))

(assert (=> d!838826 (= (matchR!3895 (regOne!18539 r!17423) s!11993) lt!1026485)))

(declare-fun b!2924809 () Bool)

(assert (=> b!2924809 (= e!1844914 (not lt!1026485))))

(declare-fun b!2924810 () Bool)

(assert (=> b!2924810 (= e!1844911 (nullable!2830 (regOne!18539 r!17423)))))

(declare-fun b!2924811 () Bool)

(declare-fun res!1207274 () Bool)

(assert (=> b!2924811 (=> res!1207274 e!1844908)))

(assert (=> b!2924811 (= res!1207274 (not (isEmpty!19000 (tail!4729 s!11993))))))

(declare-fun bm!191691 () Bool)

(assert (=> bm!191691 (= call!191696 (isEmpty!19000 s!11993))))

(declare-fun b!2924812 () Bool)

(declare-fun res!1207275 () Bool)

(assert (=> b!2924812 (=> res!1207275 e!1844910)))

(assert (=> b!2924812 (= res!1207275 e!1844909)))

(declare-fun res!1207276 () Bool)

(assert (=> b!2924812 (=> (not res!1207276) (not e!1844909))))

(assert (=> b!2924812 (= res!1207276 lt!1026485)))

(assert (= (and d!838826 c!477523) b!2924810))

(assert (= (and d!838826 (not c!477523)) b!2924805))

(assert (= (and d!838826 c!477521) b!2924806))

(assert (= (and d!838826 (not c!477521)) b!2924803))

(assert (= (and b!2924803 c!477522) b!2924809))

(assert (= (and b!2924803 (not c!477522)) b!2924808))

(assert (= (and b!2924808 (not res!1207278)) b!2924812))

(assert (= (and b!2924812 res!1207276) b!2924807))

(assert (= (and b!2924807 res!1207272) b!2924800))

(assert (= (and b!2924800 res!1207273) b!2924804))

(assert (= (and b!2924812 (not res!1207275)) b!2924801))

(assert (= (and b!2924801 res!1207277) b!2924802))

(assert (= (and b!2924802 (not res!1207279)) b!2924811))

(assert (= (and b!2924811 (not res!1207274)) b!2924799))

(assert (= (or b!2924806 b!2924802 b!2924807) bm!191691))

(assert (=> b!2924799 m!3318365))

(declare-fun m!3318429 () Bool)

(assert (=> b!2924810 m!3318429))

(assert (=> b!2924811 m!3318369))

(assert (=> b!2924811 m!3318369))

(assert (=> b!2924811 m!3318371))

(assert (=> b!2924800 m!3318369))

(assert (=> b!2924800 m!3318369))

(assert (=> b!2924800 m!3318371))

(assert (=> b!2924805 m!3318365))

(assert (=> b!2924805 m!3318365))

(declare-fun m!3318431 () Bool)

(assert (=> b!2924805 m!3318431))

(assert (=> b!2924805 m!3318369))

(assert (=> b!2924805 m!3318431))

(assert (=> b!2924805 m!3318369))

(declare-fun m!3318433 () Bool)

(assert (=> b!2924805 m!3318433))

(assert (=> b!2924804 m!3318365))

(assert (=> bm!191691 m!3318377))

(assert (=> d!838826 m!3318377))

(declare-fun m!3318435 () Bool)

(assert (=> d!838826 m!3318435))

(assert (=> b!2924602 d!838826))

(declare-fun d!838828 () Bool)

(declare-fun e!1844919 () Bool)

(assert (=> d!838828 e!1844919))

(declare-fun res!1207285 () Bool)

(assert (=> d!838828 (=> res!1207285 e!1844919)))

(assert (=> d!838828 (= res!1207285 (matchR!3895 (regOne!18539 r!17423) s!11993))))

(declare-fun lt!1026488 () Unit!48365)

(declare-fun choose!17256 (Regex!9013 Regex!9013 List!34878) Unit!48365)

(assert (=> d!838828 (= lt!1026488 (choose!17256 (regOne!18539 r!17423) (regTwo!18539 r!17423) s!11993))))

(declare-fun e!1844920 () Bool)

(assert (=> d!838828 e!1844920))

(declare-fun res!1207284 () Bool)

(assert (=> d!838828 (=> (not res!1207284) (not e!1844920))))

(assert (=> d!838828 (= res!1207284 (validRegex!3746 (regOne!18539 r!17423)))))

(assert (=> d!838828 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!262 (regOne!18539 r!17423) (regTwo!18539 r!17423) s!11993) lt!1026488)))

(declare-fun b!2924817 () Bool)

(assert (=> b!2924817 (= e!1844920 (validRegex!3746 (regTwo!18539 r!17423)))))

(declare-fun b!2924818 () Bool)

(assert (=> b!2924818 (= e!1844919 (matchR!3895 (regTwo!18539 r!17423) s!11993))))

(assert (= (and d!838828 res!1207284) b!2924817))

(assert (= (and d!838828 (not res!1207285)) b!2924818))

(assert (=> d!838828 m!3318337))

(declare-fun m!3318437 () Bool)

(assert (=> d!838828 m!3318437))

(assert (=> d!838828 m!3318435))

(assert (=> b!2924817 m!3318345))

(assert (=> b!2924818 m!3318343))

(assert (=> b!2924602 d!838828))

(declare-fun b!2924849 () Bool)

(declare-fun e!1844940 () Bool)

(declare-fun e!1844942 () Bool)

(assert (=> b!2924849 (= e!1844940 e!1844942)))

(declare-fun res!1207297 () Bool)

(assert (=> b!2924849 (=> (not res!1207297) (not e!1844942))))

(declare-fun call!191703 () Bool)

(assert (=> b!2924849 (= res!1207297 call!191703)))

(declare-fun d!838830 () Bool)

(declare-fun res!1207298 () Bool)

(declare-fun e!1844947 () Bool)

(assert (=> d!838830 (=> res!1207298 e!1844947)))

(assert (=> d!838830 (= res!1207298 ((_ is ElementMatch!9013) (regTwo!18539 r!17423)))))

(assert (=> d!838830 (= (validRegex!3746 (regTwo!18539 r!17423)) e!1844947)))

(declare-fun b!2924850 () Bool)

(declare-fun e!1844944 () Bool)

(declare-fun call!191704 () Bool)

(assert (=> b!2924850 (= e!1844944 call!191704)))

(declare-fun b!2924851 () Bool)

(declare-fun res!1207299 () Bool)

(assert (=> b!2924851 (=> res!1207299 e!1844940)))

(assert (=> b!2924851 (= res!1207299 (not ((_ is Concat!14334) (regTwo!18539 r!17423))))))

(declare-fun e!1844946 () Bool)

(assert (=> b!2924851 (= e!1844946 e!1844940)))

(declare-fun c!477534 () Bool)

(declare-fun bm!191698 () Bool)

(declare-fun c!477535 () Bool)

(assert (=> bm!191698 (= call!191704 (validRegex!3746 (ite c!477535 (reg!9342 (regTwo!18539 r!17423)) (ite c!477534 (regTwo!18539 (regTwo!18539 r!17423)) (regOne!18538 (regTwo!18539 r!17423))))))))

(declare-fun b!2924852 () Bool)

(declare-fun e!1844945 () Bool)

(assert (=> b!2924852 (= e!1844945 e!1844946)))

(assert (=> b!2924852 (= c!477534 ((_ is Union!9013) (regTwo!18539 r!17423)))))

(declare-fun b!2924853 () Bool)

(assert (=> b!2924853 (= e!1844947 e!1844945)))

(assert (=> b!2924853 (= c!477535 ((_ is Star!9013) (regTwo!18539 r!17423)))))

(declare-fun bm!191699 () Bool)

(declare-fun call!191705 () Bool)

(assert (=> bm!191699 (= call!191705 (validRegex!3746 (ite c!477534 (regOne!18539 (regTwo!18539 r!17423)) (regTwo!18538 (regTwo!18539 r!17423)))))))

(declare-fun b!2924854 () Bool)

(declare-fun e!1844943 () Bool)

(assert (=> b!2924854 (= e!1844943 call!191703)))

(declare-fun b!2924855 () Bool)

(declare-fun res!1207296 () Bool)

(assert (=> b!2924855 (=> (not res!1207296) (not e!1844943))))

(assert (=> b!2924855 (= res!1207296 call!191705)))

(assert (=> b!2924855 (= e!1844946 e!1844943)))

(declare-fun bm!191700 () Bool)

(assert (=> bm!191700 (= call!191703 call!191704)))

(declare-fun b!2924856 () Bool)

(assert (=> b!2924856 (= e!1844942 call!191705)))

(declare-fun b!2924857 () Bool)

(assert (=> b!2924857 (= e!1844945 e!1844944)))

(declare-fun res!1207300 () Bool)

(assert (=> b!2924857 (= res!1207300 (not (nullable!2830 (reg!9342 (regTwo!18539 r!17423)))))))

(assert (=> b!2924857 (=> (not res!1207300) (not e!1844944))))

(assert (= (and d!838830 (not res!1207298)) b!2924853))

(assert (= (and b!2924853 c!477535) b!2924857))

(assert (= (and b!2924853 (not c!477535)) b!2924852))

(assert (= (and b!2924857 res!1207300) b!2924850))

(assert (= (and b!2924852 c!477534) b!2924855))

(assert (= (and b!2924852 (not c!477534)) b!2924851))

(assert (= (and b!2924855 res!1207296) b!2924854))

(assert (= (and b!2924851 (not res!1207299)) b!2924849))

(assert (= (and b!2924849 res!1207297) b!2924856))

(assert (= (or b!2924855 b!2924856) bm!191699))

(assert (= (or b!2924854 b!2924849) bm!191700))

(assert (= (or b!2924850 bm!191700) bm!191698))

(declare-fun m!3318439 () Bool)

(assert (=> bm!191698 m!3318439))

(declare-fun m!3318441 () Bool)

(assert (=> bm!191699 m!3318441))

(declare-fun m!3318443 () Bool)

(assert (=> b!2924857 m!3318443))

(assert (=> b!2924609 d!838830))

(declare-fun b!2924872 () Bool)

(declare-fun e!1844956 () Bool)

(assert (=> b!2924872 (= e!1844956 (not (= (head!6503 s!11993) (c!477463 (Union!9013 lt!1026446 lt!1026449)))))))

(declare-fun b!2924873 () Bool)

(declare-fun res!1207304 () Bool)

(declare-fun e!1844957 () Bool)

(assert (=> b!2924873 (=> (not res!1207304) (not e!1844957))))

(assert (=> b!2924873 (= res!1207304 (isEmpty!19000 (tail!4729 s!11993)))))

(declare-fun b!2924874 () Bool)

(declare-fun e!1844958 () Bool)

(declare-fun e!1844961 () Bool)

(assert (=> b!2924874 (= e!1844958 e!1844961)))

(declare-fun res!1207308 () Bool)

(assert (=> b!2924874 (=> (not res!1207308) (not e!1844961))))

(declare-fun lt!1026495 () Bool)

(assert (=> b!2924874 (= res!1207308 (not lt!1026495))))

(declare-fun b!2924875 () Bool)

(assert (=> b!2924875 (= e!1844961 e!1844956)))

(declare-fun res!1207310 () Bool)

(assert (=> b!2924875 (=> res!1207310 e!1844956)))

(declare-fun call!191706 () Bool)

(assert (=> b!2924875 (= res!1207310 call!191706)))

(declare-fun b!2924876 () Bool)

(declare-fun e!1844960 () Bool)

(declare-fun e!1844962 () Bool)

(assert (=> b!2924876 (= e!1844960 e!1844962)))

(declare-fun c!477543 () Bool)

(assert (=> b!2924876 (= c!477543 ((_ is EmptyLang!9013) (Union!9013 lt!1026446 lt!1026449)))))

(declare-fun b!2924877 () Bool)

(assert (=> b!2924877 (= e!1844957 (= (head!6503 s!11993) (c!477463 (Union!9013 lt!1026446 lt!1026449))))))

(declare-fun e!1844959 () Bool)

(declare-fun b!2924878 () Bool)

(assert (=> b!2924878 (= e!1844959 (matchR!3895 (derivativeStep!2444 (Union!9013 lt!1026446 lt!1026449) (head!6503 s!11993)) (tail!4729 s!11993)))))

(declare-fun b!2924879 () Bool)

(assert (=> b!2924879 (= e!1844960 (= lt!1026495 call!191706))))

(declare-fun b!2924880 () Bool)

(declare-fun res!1207303 () Bool)

(assert (=> b!2924880 (=> (not res!1207303) (not e!1844957))))

(assert (=> b!2924880 (= res!1207303 (not call!191706))))

(declare-fun b!2924881 () Bool)

(declare-fun res!1207309 () Bool)

(assert (=> b!2924881 (=> res!1207309 e!1844958)))

(assert (=> b!2924881 (= res!1207309 (not ((_ is ElementMatch!9013) (Union!9013 lt!1026446 lt!1026449))))))

(assert (=> b!2924881 (= e!1844962 e!1844958)))

(declare-fun d!838832 () Bool)

(assert (=> d!838832 e!1844960))

(declare-fun c!477542 () Bool)

(assert (=> d!838832 (= c!477542 ((_ is EmptyExpr!9013) (Union!9013 lt!1026446 lt!1026449)))))

(assert (=> d!838832 (= lt!1026495 e!1844959)))

(declare-fun c!477544 () Bool)

(assert (=> d!838832 (= c!477544 (isEmpty!19000 s!11993))))

(assert (=> d!838832 (validRegex!3746 (Union!9013 lt!1026446 lt!1026449))))

(assert (=> d!838832 (= (matchR!3895 (Union!9013 lt!1026446 lt!1026449) s!11993) lt!1026495)))

(declare-fun b!2924882 () Bool)

(assert (=> b!2924882 (= e!1844962 (not lt!1026495))))

(declare-fun b!2924883 () Bool)

(assert (=> b!2924883 (= e!1844959 (nullable!2830 (Union!9013 lt!1026446 lt!1026449)))))

(declare-fun b!2924884 () Bool)

(declare-fun res!1207305 () Bool)

(assert (=> b!2924884 (=> res!1207305 e!1844956)))

(assert (=> b!2924884 (= res!1207305 (not (isEmpty!19000 (tail!4729 s!11993))))))

(declare-fun bm!191701 () Bool)

(assert (=> bm!191701 (= call!191706 (isEmpty!19000 s!11993))))

(declare-fun b!2924885 () Bool)

(declare-fun res!1207306 () Bool)

(assert (=> b!2924885 (=> res!1207306 e!1844958)))

(assert (=> b!2924885 (= res!1207306 e!1844957)))

(declare-fun res!1207307 () Bool)

(assert (=> b!2924885 (=> (not res!1207307) (not e!1844957))))

(assert (=> b!2924885 (= res!1207307 lt!1026495)))

(assert (= (and d!838832 c!477544) b!2924883))

(assert (= (and d!838832 (not c!477544)) b!2924878))

(assert (= (and d!838832 c!477542) b!2924879))

(assert (= (and d!838832 (not c!477542)) b!2924876))

(assert (= (and b!2924876 c!477543) b!2924882))

(assert (= (and b!2924876 (not c!477543)) b!2924881))

(assert (= (and b!2924881 (not res!1207309)) b!2924885))

(assert (= (and b!2924885 res!1207307) b!2924880))

(assert (= (and b!2924880 res!1207303) b!2924873))

(assert (= (and b!2924873 res!1207304) b!2924877))

(assert (= (and b!2924885 (not res!1207306)) b!2924874))

(assert (= (and b!2924874 res!1207308) b!2924875))

(assert (= (and b!2924875 (not res!1207310)) b!2924884))

(assert (= (and b!2924884 (not res!1207305)) b!2924872))

(assert (= (or b!2924879 b!2924875 b!2924880) bm!191701))

(assert (=> b!2924872 m!3318365))

(declare-fun m!3318445 () Bool)

(assert (=> b!2924883 m!3318445))

(assert (=> b!2924884 m!3318369))

(assert (=> b!2924884 m!3318369))

(assert (=> b!2924884 m!3318371))

(assert (=> b!2924873 m!3318369))

(assert (=> b!2924873 m!3318369))

(assert (=> b!2924873 m!3318371))

(assert (=> b!2924878 m!3318365))

(assert (=> b!2924878 m!3318365))

(declare-fun m!3318447 () Bool)

(assert (=> b!2924878 m!3318447))

(assert (=> b!2924878 m!3318369))

(assert (=> b!2924878 m!3318447))

(assert (=> b!2924878 m!3318369))

(declare-fun m!3318449 () Bool)

(assert (=> b!2924878 m!3318449))

(assert (=> b!2924877 m!3318365))

(assert (=> bm!191701 m!3318377))

(assert (=> d!838832 m!3318377))

(declare-fun m!3318451 () Bool)

(assert (=> d!838832 m!3318451))

(assert (=> b!2924609 d!838832))

(declare-fun d!838834 () Bool)

(assert (=> d!838834 (matchR!3895 (Union!9013 lt!1026446 lt!1026449) s!11993)))

(declare-fun lt!1026504 () Unit!48365)

(declare-fun choose!17257 (Regex!9013 Regex!9013 List!34878) Unit!48365)

(assert (=> d!838834 (= lt!1026504 (choose!17257 lt!1026446 lt!1026449 s!11993))))

(declare-fun e!1844977 () Bool)

(assert (=> d!838834 e!1844977))

(declare-fun res!1207315 () Bool)

(assert (=> d!838834 (=> (not res!1207315) (not e!1844977))))

(assert (=> d!838834 (= res!1207315 (validRegex!3746 lt!1026446))))

(assert (=> d!838834 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!54 lt!1026446 lt!1026449 s!11993) lt!1026504)))

(declare-fun b!2924910 () Bool)

(assert (=> b!2924910 (= e!1844977 (validRegex!3746 lt!1026449))))

(assert (= (and d!838834 res!1207315) b!2924910))

(assert (=> d!838834 m!3318347))

(declare-fun m!3318453 () Bool)

(assert (=> d!838834 m!3318453))

(assert (=> d!838834 m!3318379))

(declare-fun m!3318455 () Bool)

(assert (=> b!2924910 m!3318455))

(assert (=> b!2924609 d!838834))

(declare-fun b!2924911 () Bool)

(declare-fun c!477565 () Bool)

(declare-fun call!191721 () Bool)

(assert (=> b!2924911 (= c!477565 call!191721)))

(declare-fun e!1844987 () Regex!9013)

(declare-fun e!1844986 () Regex!9013)

(assert (=> b!2924911 (= e!1844987 e!1844986)))

(declare-fun b!2924912 () Bool)

(declare-fun e!1844981 () Regex!9013)

(assert (=> b!2924912 (= e!1844981 EmptyLang!9013)))

(declare-fun b!2924913 () Bool)

(declare-fun c!477560 () Bool)

(declare-fun e!1844983 () Bool)

(assert (=> b!2924913 (= c!477560 e!1844983)))

(declare-fun res!1207318 () Bool)

(assert (=> b!2924913 (=> res!1207318 e!1844983)))

(declare-fun call!191718 () Bool)

(assert (=> b!2924913 (= res!1207318 call!191718)))

(declare-fun lt!1026508 () Regex!9013)

(declare-fun call!191717 () Regex!9013)

(assert (=> b!2924913 (= lt!1026508 call!191717)))

(declare-fun e!1844991 () Regex!9013)

(declare-fun e!1844990 () Regex!9013)

(assert (=> b!2924913 (= e!1844991 e!1844990)))

(declare-fun b!2924914 () Bool)

(declare-fun lt!1026506 () Regex!9013)

(assert (=> b!2924914 (= e!1844987 lt!1026506)))

(declare-fun bm!191710 () Bool)

(declare-fun call!191715 () Regex!9013)

(declare-fun c!477557 () Bool)

(assert (=> bm!191710 (= call!191715 (simplify!42 (ite c!477557 (regOne!18539 (regOne!18539 r!17423)) (regTwo!18538 (regOne!18539 r!17423)))))))

(declare-fun b!2924915 () Bool)

(assert (=> b!2924915 (= e!1844990 (Star!9013 lt!1026508))))

(declare-fun b!2924916 () Bool)

(assert (=> b!2924916 (= c!477557 ((_ is Union!9013) (regOne!18539 r!17423)))))

(declare-fun e!1844984 () Regex!9013)

(assert (=> b!2924916 (= e!1844991 e!1844984)))

(declare-fun b!2924917 () Bool)

(assert (=> b!2924917 (= e!1844990 EmptyExpr!9013)))

(declare-fun b!2924918 () Bool)

(declare-fun e!1844982 () Regex!9013)

(declare-fun lt!1026509 () Regex!9013)

(assert (=> b!2924918 (= e!1844982 lt!1026509)))

(declare-fun call!191720 () Bool)

(declare-fun bm!191711 () Bool)

(declare-fun c!477563 () Bool)

(declare-fun lt!1026507 () Regex!9013)

(assert (=> bm!191711 (= call!191720 (isEmptyExpr!268 (ite c!477563 lt!1026508 lt!1026507)))))

(declare-fun b!2924919 () Bool)

(declare-fun e!1844979 () Regex!9013)

(assert (=> b!2924919 (= e!1844979 lt!1026507)))

(declare-fun b!2924920 () Bool)

(declare-fun c!477564 () Bool)

(assert (=> b!2924920 (= c!477564 call!191720)))

(declare-fun e!1844978 () Regex!9013)

(assert (=> b!2924920 (= e!1844978 e!1844982)))

(declare-fun b!2924921 () Bool)

(declare-fun e!1844985 () Bool)

(declare-fun lt!1026510 () Regex!9013)

(assert (=> b!2924921 (= e!1844985 (= (nullable!2830 lt!1026510) (nullable!2830 (regOne!18539 r!17423))))))

(declare-fun b!2924922 () Bool)

(declare-fun e!1844989 () Regex!9013)

(assert (=> b!2924922 (= e!1844989 e!1844991)))

(assert (=> b!2924922 (= c!477563 ((_ is Star!9013) (regOne!18539 r!17423)))))

(declare-fun b!2924923 () Bool)

(declare-fun lt!1026505 () Regex!9013)

(assert (=> b!2924923 (= e!1844986 lt!1026505)))

(declare-fun bm!191712 () Bool)

(assert (=> bm!191712 (= call!191717 (simplify!42 (ite c!477563 (reg!9342 (regOne!18539 r!17423)) (ite c!477557 (regTwo!18539 (regOne!18539 r!17423)) (regOne!18538 (regOne!18539 r!17423))))))))

(declare-fun b!2924924 () Bool)

(assert (=> b!2924924 (= e!1844986 (Union!9013 lt!1026505 lt!1026506))))

(declare-fun b!2924925 () Bool)

(assert (=> b!2924925 (= e!1844979 (Concat!14334 lt!1026507 lt!1026509))))

(declare-fun b!2924926 () Bool)

(assert (=> b!2924926 (= e!1844983 call!191720)))

(declare-fun bm!191713 () Bool)

(declare-fun call!191716 () Regex!9013)

(assert (=> bm!191713 (= call!191716 call!191717)))

(declare-fun bm!191714 () Bool)

(assert (=> bm!191714 (= call!191721 call!191718)))

(declare-fun b!2924927 () Bool)

(assert (=> b!2924927 (= e!1844982 e!1844979)))

(declare-fun c!477555 () Bool)

(assert (=> b!2924927 (= c!477555 (isEmptyExpr!268 lt!1026509))))

(declare-fun b!2924928 () Bool)

(assert (=> b!2924928 (= e!1844978 EmptyLang!9013)))

(declare-fun b!2924929 () Bool)

(declare-fun e!1844980 () Regex!9013)

(assert (=> b!2924929 (= e!1844980 (regOne!18539 r!17423))))

(declare-fun b!2924930 () Bool)

(assert (=> b!2924930 (= e!1844981 e!1844980)))

(declare-fun c!477559 () Bool)

(assert (=> b!2924930 (= c!477559 ((_ is ElementMatch!9013) (regOne!18539 r!17423)))))

(declare-fun b!2924931 () Bool)

(declare-fun e!1844988 () Bool)

(declare-fun call!191719 () Bool)

(assert (=> b!2924931 (= e!1844988 call!191719)))

(declare-fun d!838836 () Bool)

(assert (=> d!838836 e!1844985))

(declare-fun res!1207317 () Bool)

(assert (=> d!838836 (=> (not res!1207317) (not e!1844985))))

(assert (=> d!838836 (= res!1207317 (validRegex!3746 lt!1026510))))

(assert (=> d!838836 (= lt!1026510 e!1844981)))

(declare-fun c!477562 () Bool)

(assert (=> d!838836 (= c!477562 ((_ is EmptyLang!9013) (regOne!18539 r!17423)))))

(assert (=> d!838836 (validRegex!3746 (regOne!18539 r!17423))))

(assert (=> d!838836 (= (simplify!42 (regOne!18539 r!17423)) lt!1026510)))

(declare-fun b!2924932 () Bool)

(assert (=> b!2924932 (= e!1844984 e!1844978)))

(assert (=> b!2924932 (= lt!1026507 call!191716)))

(assert (=> b!2924932 (= lt!1026509 call!191715)))

(declare-fun res!1207316 () Bool)

(assert (=> b!2924932 (= res!1207316 call!191721)))

(assert (=> b!2924932 (=> res!1207316 e!1844988)))

(declare-fun c!477561 () Bool)

(assert (=> b!2924932 (= c!477561 e!1844988)))

(declare-fun bm!191715 () Bool)

(assert (=> bm!191715 (= call!191719 (isEmptyLang!183 (ite c!477557 lt!1026505 lt!1026509)))))

(declare-fun b!2924933 () Bool)

(declare-fun c!477558 () Bool)

(assert (=> b!2924933 (= c!477558 ((_ is EmptyExpr!9013) (regOne!18539 r!17423)))))

(assert (=> b!2924933 (= e!1844980 e!1844989)))

(declare-fun b!2924934 () Bool)

(assert (=> b!2924934 (= e!1844984 e!1844987)))

(assert (=> b!2924934 (= lt!1026505 call!191715)))

(assert (=> b!2924934 (= lt!1026506 call!191716)))

(declare-fun c!477556 () Bool)

(assert (=> b!2924934 (= c!477556 call!191719)))

(declare-fun bm!191716 () Bool)

(assert (=> bm!191716 (= call!191718 (isEmptyLang!183 (ite c!477563 lt!1026508 (ite c!477557 lt!1026506 lt!1026507))))))

(declare-fun b!2924935 () Bool)

(assert (=> b!2924935 (= e!1844989 EmptyExpr!9013)))

(assert (= (and d!838836 c!477562) b!2924912))

(assert (= (and d!838836 (not c!477562)) b!2924930))

(assert (= (and b!2924930 c!477559) b!2924929))

(assert (= (and b!2924930 (not c!477559)) b!2924933))

(assert (= (and b!2924933 c!477558) b!2924935))

(assert (= (and b!2924933 (not c!477558)) b!2924922))

(assert (= (and b!2924922 c!477563) b!2924913))

(assert (= (and b!2924922 (not c!477563)) b!2924916))

(assert (= (and b!2924913 (not res!1207318)) b!2924926))

(assert (= (and b!2924913 c!477560) b!2924917))

(assert (= (and b!2924913 (not c!477560)) b!2924915))

(assert (= (and b!2924916 c!477557) b!2924934))

(assert (= (and b!2924916 (not c!477557)) b!2924932))

(assert (= (and b!2924934 c!477556) b!2924914))

(assert (= (and b!2924934 (not c!477556)) b!2924911))

(assert (= (and b!2924911 c!477565) b!2924923))

(assert (= (and b!2924911 (not c!477565)) b!2924924))

(assert (= (and b!2924932 (not res!1207316)) b!2924931))

(assert (= (and b!2924932 c!477561) b!2924928))

(assert (= (and b!2924932 (not c!477561)) b!2924920))

(assert (= (and b!2924920 c!477564) b!2924918))

(assert (= (and b!2924920 (not c!477564)) b!2924927))

(assert (= (and b!2924927 c!477555) b!2924919))

(assert (= (and b!2924927 (not c!477555)) b!2924925))

(assert (= (or b!2924934 b!2924932) bm!191710))

(assert (= (or b!2924934 b!2924932) bm!191713))

(assert (= (or b!2924934 b!2924931) bm!191715))

(assert (= (or b!2924911 b!2924932) bm!191714))

(assert (= (or b!2924926 b!2924920) bm!191711))

(assert (= (or b!2924913 bm!191713) bm!191712))

(assert (= (or b!2924913 bm!191714) bm!191716))

(assert (= (and d!838836 res!1207317) b!2924921))

(declare-fun m!3318457 () Bool)

(assert (=> bm!191710 m!3318457))

(declare-fun m!3318459 () Bool)

(assert (=> bm!191712 m!3318459))

(declare-fun m!3318461 () Bool)

(assert (=> bm!191715 m!3318461))

(declare-fun m!3318463 () Bool)

(assert (=> bm!191716 m!3318463))

(declare-fun m!3318465 () Bool)

(assert (=> b!2924921 m!3318465))

(assert (=> b!2924921 m!3318429))

(declare-fun m!3318467 () Bool)

(assert (=> b!2924927 m!3318467))

(declare-fun m!3318469 () Bool)

(assert (=> d!838836 m!3318469))

(assert (=> d!838836 m!3318435))

(declare-fun m!3318471 () Bool)

(assert (=> bm!191711 m!3318471))

(assert (=> b!2924609 d!838836))

(declare-fun b!2925023 () Bool)

(assert (=> b!2925023 true))

(assert (=> b!2925023 true))

(declare-fun bs!525007 () Bool)

(declare-fun b!2925017 () Bool)

(assert (= bs!525007 (and b!2925017 b!2925023)))

(declare-fun lambda!108720 () Int)

(declare-fun lambda!108719 () Int)

(assert (=> bs!525007 (not (= lambda!108720 lambda!108719))))

(assert (=> b!2925017 true))

(assert (=> b!2925017 true))

(declare-fun bm!191734 () Bool)

(declare-fun call!191740 () Bool)

(assert (=> bm!191734 (= call!191740 (isEmpty!19000 s!11993))))

(declare-fun e!1845043 () Bool)

(declare-fun call!191739 () Bool)

(assert (=> b!2925017 (= e!1845043 call!191739)))

(declare-fun c!477596 () Bool)

(declare-fun bm!191735 () Bool)

(declare-fun Exists!1381 (Int) Bool)

(assert (=> bm!191735 (= call!191739 (Exists!1381 (ite c!477596 lambda!108719 lambda!108720)))))

(declare-fun b!2925019 () Bool)

(declare-fun c!477593 () Bool)

(assert (=> b!2925019 (= c!477593 ((_ is Union!9013) r!17423))))

(declare-fun e!1845041 () Bool)

(declare-fun e!1845046 () Bool)

(assert (=> b!2925019 (= e!1845041 e!1845046)))

(declare-fun b!2925020 () Bool)

(assert (=> b!2925020 (= e!1845046 e!1845043)))

(assert (=> b!2925020 (= c!477596 ((_ is Star!9013) r!17423))))

(declare-fun b!2925021 () Bool)

(declare-fun c!477595 () Bool)

(assert (=> b!2925021 (= c!477595 ((_ is ElementMatch!9013) r!17423))))

(declare-fun e!1845044 () Bool)

(assert (=> b!2925021 (= e!1845044 e!1845041)))

(declare-fun d!838838 () Bool)

(declare-fun c!477594 () Bool)

(assert (=> d!838838 (= c!477594 ((_ is EmptyExpr!9013) r!17423))))

(declare-fun e!1845045 () Bool)

(assert (=> d!838838 (= (matchRSpec!1150 r!17423 s!11993) e!1845045)))

(declare-fun b!2925018 () Bool)

(assert (=> b!2925018 (= e!1845045 e!1845044)))

(declare-fun res!1207348 () Bool)

(assert (=> b!2925018 (= res!1207348 (not ((_ is EmptyLang!9013) r!17423)))))

(assert (=> b!2925018 (=> (not res!1207348) (not e!1845044))))

(declare-fun b!2925022 () Bool)

(declare-fun e!1845040 () Bool)

(assert (=> b!2925022 (= e!1845040 (matchRSpec!1150 (regTwo!18539 r!17423) s!11993))))

(declare-fun e!1845042 () Bool)

(assert (=> b!2925023 (= e!1845042 call!191739)))

(declare-fun b!2925024 () Bool)

(assert (=> b!2925024 (= e!1845045 call!191740)))

(declare-fun b!2925025 () Bool)

(assert (=> b!2925025 (= e!1845046 e!1845040)))

(declare-fun res!1207347 () Bool)

(assert (=> b!2925025 (= res!1207347 (matchRSpec!1150 (regOne!18539 r!17423) s!11993))))

(assert (=> b!2925025 (=> res!1207347 e!1845040)))

(declare-fun b!2925026 () Bool)

(declare-fun res!1207346 () Bool)

(assert (=> b!2925026 (=> res!1207346 e!1845042)))

(assert (=> b!2925026 (= res!1207346 call!191740)))

(assert (=> b!2925026 (= e!1845043 e!1845042)))

(declare-fun b!2925027 () Bool)

(assert (=> b!2925027 (= e!1845041 (= s!11993 (Cons!34754 (c!477463 r!17423) Nil!34754)))))

(assert (= (and d!838838 c!477594) b!2925024))

(assert (= (and d!838838 (not c!477594)) b!2925018))

(assert (= (and b!2925018 res!1207348) b!2925021))

(assert (= (and b!2925021 c!477595) b!2925027))

(assert (= (and b!2925021 (not c!477595)) b!2925019))

(assert (= (and b!2925019 c!477593) b!2925025))

(assert (= (and b!2925019 (not c!477593)) b!2925020))

(assert (= (and b!2925025 (not res!1207347)) b!2925022))

(assert (= (and b!2925020 c!477596) b!2925026))

(assert (= (and b!2925020 (not c!477596)) b!2925017))

(assert (= (and b!2925026 (not res!1207346)) b!2925023))

(assert (= (or b!2925023 b!2925017) bm!191735))

(assert (= (or b!2925024 b!2925026) bm!191734))

(assert (=> bm!191734 m!3318377))

(declare-fun m!3318493 () Bool)

(assert (=> bm!191735 m!3318493))

(declare-fun m!3318495 () Bool)

(assert (=> b!2925022 m!3318495))

(declare-fun m!3318497 () Bool)

(assert (=> b!2925025 m!3318497))

(assert (=> b!2924605 d!838838))

(declare-fun b!2925032 () Bool)

(declare-fun e!1845047 () Bool)

(assert (=> b!2925032 (= e!1845047 (not (= (head!6503 s!11993) (c!477463 r!17423))))))

(declare-fun b!2925033 () Bool)

(declare-fun res!1207350 () Bool)

(declare-fun e!1845048 () Bool)

(assert (=> b!2925033 (=> (not res!1207350) (not e!1845048))))

(assert (=> b!2925033 (= res!1207350 (isEmpty!19000 (tail!4729 s!11993)))))

(declare-fun b!2925034 () Bool)

(declare-fun e!1845049 () Bool)

(declare-fun e!1845052 () Bool)

(assert (=> b!2925034 (= e!1845049 e!1845052)))

(declare-fun res!1207354 () Bool)

(assert (=> b!2925034 (=> (not res!1207354) (not e!1845052))))

(declare-fun lt!1026520 () Bool)

(assert (=> b!2925034 (= res!1207354 (not lt!1026520))))

(declare-fun b!2925035 () Bool)

(assert (=> b!2925035 (= e!1845052 e!1845047)))

(declare-fun res!1207356 () Bool)

(assert (=> b!2925035 (=> res!1207356 e!1845047)))

(declare-fun call!191741 () Bool)

(assert (=> b!2925035 (= res!1207356 call!191741)))

(declare-fun b!2925036 () Bool)

(declare-fun e!1845051 () Bool)

(declare-fun e!1845053 () Bool)

(assert (=> b!2925036 (= e!1845051 e!1845053)))

(declare-fun c!477598 () Bool)

(assert (=> b!2925036 (= c!477598 ((_ is EmptyLang!9013) r!17423))))

(declare-fun b!2925037 () Bool)

(assert (=> b!2925037 (= e!1845048 (= (head!6503 s!11993) (c!477463 r!17423)))))

(declare-fun b!2925038 () Bool)

(declare-fun e!1845050 () Bool)

(assert (=> b!2925038 (= e!1845050 (matchR!3895 (derivativeStep!2444 r!17423 (head!6503 s!11993)) (tail!4729 s!11993)))))

(declare-fun b!2925039 () Bool)

(assert (=> b!2925039 (= e!1845051 (= lt!1026520 call!191741))))

(declare-fun b!2925040 () Bool)

(declare-fun res!1207349 () Bool)

(assert (=> b!2925040 (=> (not res!1207349) (not e!1845048))))

(assert (=> b!2925040 (= res!1207349 (not call!191741))))

(declare-fun b!2925041 () Bool)

(declare-fun res!1207355 () Bool)

(assert (=> b!2925041 (=> res!1207355 e!1845049)))

(assert (=> b!2925041 (= res!1207355 (not ((_ is ElementMatch!9013) r!17423)))))

(assert (=> b!2925041 (= e!1845053 e!1845049)))

(declare-fun d!838844 () Bool)

(assert (=> d!838844 e!1845051))

(declare-fun c!477597 () Bool)

(assert (=> d!838844 (= c!477597 ((_ is EmptyExpr!9013) r!17423))))

(assert (=> d!838844 (= lt!1026520 e!1845050)))

(declare-fun c!477599 () Bool)

(assert (=> d!838844 (= c!477599 (isEmpty!19000 s!11993))))

(assert (=> d!838844 (validRegex!3746 r!17423)))

(assert (=> d!838844 (= (matchR!3895 r!17423 s!11993) lt!1026520)))

(declare-fun b!2925042 () Bool)

(assert (=> b!2925042 (= e!1845053 (not lt!1026520))))

(declare-fun b!2925043 () Bool)

(assert (=> b!2925043 (= e!1845050 (nullable!2830 r!17423))))

(declare-fun b!2925044 () Bool)

(declare-fun res!1207351 () Bool)

(assert (=> b!2925044 (=> res!1207351 e!1845047)))

(assert (=> b!2925044 (= res!1207351 (not (isEmpty!19000 (tail!4729 s!11993))))))

(declare-fun bm!191736 () Bool)

(assert (=> bm!191736 (= call!191741 (isEmpty!19000 s!11993))))

(declare-fun b!2925045 () Bool)

(declare-fun res!1207352 () Bool)

(assert (=> b!2925045 (=> res!1207352 e!1845049)))

(assert (=> b!2925045 (= res!1207352 e!1845048)))

(declare-fun res!1207353 () Bool)

(assert (=> b!2925045 (=> (not res!1207353) (not e!1845048))))

(assert (=> b!2925045 (= res!1207353 lt!1026520)))

(assert (= (and d!838844 c!477599) b!2925043))

(assert (= (and d!838844 (not c!477599)) b!2925038))

(assert (= (and d!838844 c!477597) b!2925039))

(assert (= (and d!838844 (not c!477597)) b!2925036))

(assert (= (and b!2925036 c!477598) b!2925042))

(assert (= (and b!2925036 (not c!477598)) b!2925041))

(assert (= (and b!2925041 (not res!1207355)) b!2925045))

(assert (= (and b!2925045 res!1207353) b!2925040))

(assert (= (and b!2925040 res!1207349) b!2925033))

(assert (= (and b!2925033 res!1207350) b!2925037))

(assert (= (and b!2925045 (not res!1207352)) b!2925034))

(assert (= (and b!2925034 res!1207354) b!2925035))

(assert (= (and b!2925035 (not res!1207356)) b!2925044))

(assert (= (and b!2925044 (not res!1207351)) b!2925032))

(assert (= (or b!2925039 b!2925035 b!2925040) bm!191736))

(assert (=> b!2925032 m!3318365))

(declare-fun m!3318499 () Bool)

(assert (=> b!2925043 m!3318499))

(assert (=> b!2925044 m!3318369))

(assert (=> b!2925044 m!3318369))

(assert (=> b!2925044 m!3318371))

(assert (=> b!2925033 m!3318369))

(assert (=> b!2925033 m!3318369))

(assert (=> b!2925033 m!3318371))

(assert (=> b!2925038 m!3318365))

(assert (=> b!2925038 m!3318365))

(declare-fun m!3318501 () Bool)

(assert (=> b!2925038 m!3318501))

(assert (=> b!2925038 m!3318369))

(assert (=> b!2925038 m!3318501))

(assert (=> b!2925038 m!3318369))

(declare-fun m!3318503 () Bool)

(assert (=> b!2925038 m!3318503))

(assert (=> b!2925037 m!3318365))

(assert (=> bm!191736 m!3318377))

(assert (=> d!838844 m!3318377))

(assert (=> d!838844 m!3318341))

(assert (=> b!2924605 d!838844))

(declare-fun d!838846 () Bool)

(assert (=> d!838846 (= (matchR!3895 r!17423 s!11993) (matchRSpec!1150 r!17423 s!11993))))

(declare-fun lt!1026523 () Unit!48365)

(declare-fun choose!17260 (Regex!9013 List!34878) Unit!48365)

(assert (=> d!838846 (= lt!1026523 (choose!17260 r!17423 s!11993))))

(assert (=> d!838846 (validRegex!3746 r!17423)))

(assert (=> d!838846 (= (mainMatchTheorem!1150 r!17423 s!11993) lt!1026523)))

(declare-fun bs!525008 () Bool)

(assert (= bs!525008 d!838846))

(assert (=> bs!525008 m!3318361))

(assert (=> bs!525008 m!3318359))

(declare-fun m!3318505 () Bool)

(assert (=> bs!525008 m!3318505))

(assert (=> bs!525008 m!3318341))

(assert (=> b!2924605 d!838846))

(assert (=> b!2924607 d!838816))

(declare-fun b!2925046 () Bool)

(declare-fun e!1845054 () Bool)

(declare-fun e!1845055 () Bool)

(assert (=> b!2925046 (= e!1845054 e!1845055)))

(declare-fun res!1207358 () Bool)

(assert (=> b!2925046 (=> (not res!1207358) (not e!1845055))))

(declare-fun call!191742 () Bool)

(assert (=> b!2925046 (= res!1207358 call!191742)))

(declare-fun d!838848 () Bool)

(declare-fun res!1207359 () Bool)

(declare-fun e!1845060 () Bool)

(assert (=> d!838848 (=> res!1207359 e!1845060)))

(assert (=> d!838848 (= res!1207359 ((_ is ElementMatch!9013) r!17423))))

(assert (=> d!838848 (= (validRegex!3746 r!17423) e!1845060)))

(declare-fun b!2925047 () Bool)

(declare-fun e!1845057 () Bool)

(declare-fun call!191743 () Bool)

(assert (=> b!2925047 (= e!1845057 call!191743)))

(declare-fun b!2925048 () Bool)

(declare-fun res!1207360 () Bool)

(assert (=> b!2925048 (=> res!1207360 e!1845054)))

(assert (=> b!2925048 (= res!1207360 (not ((_ is Concat!14334) r!17423)))))

(declare-fun e!1845059 () Bool)

(assert (=> b!2925048 (= e!1845059 e!1845054)))

(declare-fun bm!191737 () Bool)

(declare-fun c!477600 () Bool)

(declare-fun c!477601 () Bool)

(assert (=> bm!191737 (= call!191743 (validRegex!3746 (ite c!477601 (reg!9342 r!17423) (ite c!477600 (regTwo!18539 r!17423) (regOne!18538 r!17423)))))))

(declare-fun b!2925049 () Bool)

(declare-fun e!1845058 () Bool)

(assert (=> b!2925049 (= e!1845058 e!1845059)))

(assert (=> b!2925049 (= c!477600 ((_ is Union!9013) r!17423))))

(declare-fun b!2925050 () Bool)

(assert (=> b!2925050 (= e!1845060 e!1845058)))

(assert (=> b!2925050 (= c!477601 ((_ is Star!9013) r!17423))))

(declare-fun bm!191738 () Bool)

(declare-fun call!191744 () Bool)

(assert (=> bm!191738 (= call!191744 (validRegex!3746 (ite c!477600 (regOne!18539 r!17423) (regTwo!18538 r!17423))))))

(declare-fun b!2925051 () Bool)

(declare-fun e!1845056 () Bool)

(assert (=> b!2925051 (= e!1845056 call!191742)))

(declare-fun b!2925052 () Bool)

(declare-fun res!1207357 () Bool)

(assert (=> b!2925052 (=> (not res!1207357) (not e!1845056))))

(assert (=> b!2925052 (= res!1207357 call!191744)))

(assert (=> b!2925052 (= e!1845059 e!1845056)))

(declare-fun bm!191739 () Bool)

(assert (=> bm!191739 (= call!191742 call!191743)))

(declare-fun b!2925053 () Bool)

(assert (=> b!2925053 (= e!1845055 call!191744)))

(declare-fun b!2925054 () Bool)

(assert (=> b!2925054 (= e!1845058 e!1845057)))

(declare-fun res!1207361 () Bool)

(assert (=> b!2925054 (= res!1207361 (not (nullable!2830 (reg!9342 r!17423))))))

(assert (=> b!2925054 (=> (not res!1207361) (not e!1845057))))

(assert (= (and d!838848 (not res!1207359)) b!2925050))

(assert (= (and b!2925050 c!477601) b!2925054))

(assert (= (and b!2925050 (not c!477601)) b!2925049))

(assert (= (and b!2925054 res!1207361) b!2925047))

(assert (= (and b!2925049 c!477600) b!2925052))

(assert (= (and b!2925049 (not c!477600)) b!2925048))

(assert (= (and b!2925052 res!1207357) b!2925051))

(assert (= (and b!2925048 (not res!1207360)) b!2925046))

(assert (= (and b!2925046 res!1207358) b!2925053))

(assert (= (or b!2925052 b!2925053) bm!191738))

(assert (= (or b!2925051 b!2925046) bm!191739))

(assert (= (or b!2925047 bm!191739) bm!191737))

(declare-fun m!3318507 () Bool)

(assert (=> bm!191737 m!3318507))

(declare-fun m!3318509 () Bool)

(assert (=> bm!191738 m!3318509))

(declare-fun m!3318511 () Bool)

(assert (=> b!2925054 m!3318511))

(assert (=> start!284584 d!838848))

(declare-fun b!2925068 () Bool)

(declare-fun e!1845063 () Bool)

(declare-fun tp!938024 () Bool)

(declare-fun tp!938026 () Bool)

(assert (=> b!2925068 (= e!1845063 (and tp!938024 tp!938026))))

(declare-fun b!2925067 () Bool)

(declare-fun tp!938028 () Bool)

(assert (=> b!2925067 (= e!1845063 tp!938028)))

(declare-fun b!2925066 () Bool)

(declare-fun tp!938025 () Bool)

(declare-fun tp!938027 () Bool)

(assert (=> b!2925066 (= e!1845063 (and tp!938025 tp!938027))))

(declare-fun b!2925065 () Bool)

(assert (=> b!2925065 (= e!1845063 tp_is_empty!15589)))

(assert (=> b!2924608 (= tp!938008 e!1845063)))

(assert (= (and b!2924608 ((_ is ElementMatch!9013) (regOne!18538 r!17423))) b!2925065))

(assert (= (and b!2924608 ((_ is Concat!14334) (regOne!18538 r!17423))) b!2925066))

(assert (= (and b!2924608 ((_ is Star!9013) (regOne!18538 r!17423))) b!2925067))

(assert (= (and b!2924608 ((_ is Union!9013) (regOne!18538 r!17423))) b!2925068))

(declare-fun b!2925072 () Bool)

(declare-fun e!1845064 () Bool)

(declare-fun tp!938029 () Bool)

(declare-fun tp!938031 () Bool)

(assert (=> b!2925072 (= e!1845064 (and tp!938029 tp!938031))))

(declare-fun b!2925071 () Bool)

(declare-fun tp!938033 () Bool)

(assert (=> b!2925071 (= e!1845064 tp!938033)))

(declare-fun b!2925070 () Bool)

(declare-fun tp!938030 () Bool)

(declare-fun tp!938032 () Bool)

(assert (=> b!2925070 (= e!1845064 (and tp!938030 tp!938032))))

(declare-fun b!2925069 () Bool)

(assert (=> b!2925069 (= e!1845064 tp_is_empty!15589)))

(assert (=> b!2924608 (= tp!938012 e!1845064)))

(assert (= (and b!2924608 ((_ is ElementMatch!9013) (regTwo!18538 r!17423))) b!2925069))

(assert (= (and b!2924608 ((_ is Concat!14334) (regTwo!18538 r!17423))) b!2925070))

(assert (= (and b!2924608 ((_ is Star!9013) (regTwo!18538 r!17423))) b!2925071))

(assert (= (and b!2924608 ((_ is Union!9013) (regTwo!18538 r!17423))) b!2925072))

(declare-fun b!2925076 () Bool)

(declare-fun e!1845065 () Bool)

(declare-fun tp!938034 () Bool)

(declare-fun tp!938036 () Bool)

(assert (=> b!2925076 (= e!1845065 (and tp!938034 tp!938036))))

(declare-fun b!2925075 () Bool)

(declare-fun tp!938038 () Bool)

(assert (=> b!2925075 (= e!1845065 tp!938038)))

(declare-fun b!2925074 () Bool)

(declare-fun tp!938035 () Bool)

(declare-fun tp!938037 () Bool)

(assert (=> b!2925074 (= e!1845065 (and tp!938035 tp!938037))))

(declare-fun b!2925073 () Bool)

(assert (=> b!2925073 (= e!1845065 tp_is_empty!15589)))

(assert (=> b!2924604 (= tp!938009 e!1845065)))

(assert (= (and b!2924604 ((_ is ElementMatch!9013) (regOne!18539 r!17423))) b!2925073))

(assert (= (and b!2924604 ((_ is Concat!14334) (regOne!18539 r!17423))) b!2925074))

(assert (= (and b!2924604 ((_ is Star!9013) (regOne!18539 r!17423))) b!2925075))

(assert (= (and b!2924604 ((_ is Union!9013) (regOne!18539 r!17423))) b!2925076))

(declare-fun b!2925080 () Bool)

(declare-fun e!1845066 () Bool)

(declare-fun tp!938039 () Bool)

(declare-fun tp!938041 () Bool)

(assert (=> b!2925080 (= e!1845066 (and tp!938039 tp!938041))))

(declare-fun b!2925079 () Bool)

(declare-fun tp!938043 () Bool)

(assert (=> b!2925079 (= e!1845066 tp!938043)))

(declare-fun b!2925078 () Bool)

(declare-fun tp!938040 () Bool)

(declare-fun tp!938042 () Bool)

(assert (=> b!2925078 (= e!1845066 (and tp!938040 tp!938042))))

(declare-fun b!2925077 () Bool)

(assert (=> b!2925077 (= e!1845066 tp_is_empty!15589)))

(assert (=> b!2924604 (= tp!938011 e!1845066)))

(assert (= (and b!2924604 ((_ is ElementMatch!9013) (regTwo!18539 r!17423))) b!2925077))

(assert (= (and b!2924604 ((_ is Concat!14334) (regTwo!18539 r!17423))) b!2925078))

(assert (= (and b!2924604 ((_ is Star!9013) (regTwo!18539 r!17423))) b!2925079))

(assert (= (and b!2924604 ((_ is Union!9013) (regTwo!18539 r!17423))) b!2925080))

(declare-fun b!2925084 () Bool)

(declare-fun e!1845067 () Bool)

(declare-fun tp!938044 () Bool)

(declare-fun tp!938046 () Bool)

(assert (=> b!2925084 (= e!1845067 (and tp!938044 tp!938046))))

(declare-fun b!2925083 () Bool)

(declare-fun tp!938048 () Bool)

(assert (=> b!2925083 (= e!1845067 tp!938048)))

(declare-fun b!2925082 () Bool)

(declare-fun tp!938045 () Bool)

(declare-fun tp!938047 () Bool)

(assert (=> b!2925082 (= e!1845067 (and tp!938045 tp!938047))))

(declare-fun b!2925081 () Bool)

(assert (=> b!2925081 (= e!1845067 tp_is_empty!15589)))

(assert (=> b!2924610 (= tp!938013 e!1845067)))

(assert (= (and b!2924610 ((_ is ElementMatch!9013) (reg!9342 r!17423))) b!2925081))

(assert (= (and b!2924610 ((_ is Concat!14334) (reg!9342 r!17423))) b!2925082))

(assert (= (and b!2924610 ((_ is Star!9013) (reg!9342 r!17423))) b!2925083))

(assert (= (and b!2924610 ((_ is Union!9013) (reg!9342 r!17423))) b!2925084))

(declare-fun b!2925089 () Bool)

(declare-fun e!1845070 () Bool)

(declare-fun tp!938051 () Bool)

(assert (=> b!2925089 (= e!1845070 (and tp_is_empty!15589 tp!938051))))

(assert (=> b!2924606 (= tp!938010 e!1845070)))

(assert (= (and b!2924606 ((_ is Cons!34754) (t!233943 s!11993))) b!2925089))

(check-sat (not b!2925038) (not b!2925044) (not d!838826) (not bm!191664) (not b!2925084) (not b!2924927) (not b!2924790) (not b!2924784) (not b!2925089) (not b!2924645) (not b!2924811) (not b!2925022) (not b!2924878) (not bm!191737) (not b!2924873) (not b!2924641) (not bm!191710) (not b!2924651) (not b!2925079) (not bm!191665) (not b!2924805) (not d!838836) (not b!2924804) (not bm!191734) (not b!2925043) (not b!2924921) (not bm!191738) (not d!838846) (not bm!191716) (not b!2925067) (not b!2925082) (not b!2925070) (not b!2924883) (not b!2924857) (not b!2924810) (not b!2925083) (not b!2925066) (not d!838828) (not d!838818) (not d!838844) (not bm!191691) (not b!2925074) (not bm!191690) (not b!2925068) (not bm!191686) (not b!2924800) (not b!2924884) (not b!2924646) (not bm!191701) (not d!838816) (not bm!191684) (not b!2925078) (not b!2924665) (not b!2924659) (not bm!191715) (not b!2924818) (not b!2925072) (not bm!191689) (not b!2924654) (not d!838834) (not b!2924817) (not b!2925025) (not bm!191711) (not bm!191735) (not b!2924872) (not b!2924660) (not b!2925033) (not bm!191698) (not bm!191712) (not b!2925037) (not b!2924652) (not b!2924640) (not b!2924655) (not bm!191736) (not b!2924799) (not b!2925071) (not bm!191685) (not bm!191699) (not b!2925032) (not b!2924666) tp_is_empty!15589 (not b!2924877) (not b!2925076) (not b!2925054) (not d!838832) (not d!838812) (not d!838824) (not b!2924910) (not b!2925080) (not b!2925075))
(check-sat)
