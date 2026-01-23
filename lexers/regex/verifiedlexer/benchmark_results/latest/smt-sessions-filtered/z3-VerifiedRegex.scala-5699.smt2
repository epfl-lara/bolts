; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283708 () Bool)

(assert start!283708)

(declare-fun res!1201670 () Bool)

(declare-fun e!1837511 () Bool)

(assert (=> start!283708 (=> (not res!1201670) (not e!1837511))))

(declare-datatypes ((C!18084 0))(
  ( (C!18085 (val!11078 Int)) )
))
(declare-datatypes ((Regex!8949 0))(
  ( (ElementMatch!8949 (c!474693 C!18084)) (Concat!14270 (regOne!18410 Regex!8949) (regTwo!18410 Regex!8949)) (EmptyExpr!8949) (Star!8949 (reg!9278 Regex!8949)) (EmptyLang!8949) (Union!8949 (regOne!18411 Regex!8949) (regTwo!18411 Regex!8949)) )
))
(declare-fun r!17423 () Regex!8949)

(declare-fun validRegex!3682 (Regex!8949) Bool)

(assert (=> start!283708 (= res!1201670 (validRegex!3682 r!17423))))

(assert (=> start!283708 e!1837511))

(declare-fun e!1837513 () Bool)

(assert (=> start!283708 e!1837513))

(declare-fun e!1837512 () Bool)

(assert (=> start!283708 e!1837512))

(declare-fun b!2911104 () Bool)

(declare-fun tp_is_empty!15461 () Bool)

(declare-fun tp!935341 () Bool)

(assert (=> b!2911104 (= e!1837512 (and tp_is_empty!15461 tp!935341))))

(declare-fun b!2911105 () Bool)

(declare-fun res!1201669 () Bool)

(declare-fun e!1837510 () Bool)

(assert (=> b!2911105 (=> res!1201669 e!1837510)))

(declare-datatypes ((List!34814 0))(
  ( (Nil!34690) (Cons!34690 (h!40110 C!18084) (t!233879 List!34814)) )
))
(declare-fun s!11993 () List!34814)

(declare-fun isEmpty!18932 (List!34814) Bool)

(assert (=> b!2911105 (= res!1201669 (not (isEmpty!18932 s!11993)))))

(declare-fun b!2911106 () Bool)

(assert (=> b!2911106 (= e!1837513 tp_is_empty!15461)))

(declare-fun b!2911107 () Bool)

(declare-fun tp!935338 () Bool)

(declare-fun tp!935340 () Bool)

(assert (=> b!2911107 (= e!1837513 (and tp!935338 tp!935340))))

(declare-fun b!2911108 () Bool)

(declare-fun tp!935339 () Bool)

(assert (=> b!2911108 (= e!1837513 tp!935339)))

(declare-fun b!2911109 () Bool)

(declare-fun tp!935337 () Bool)

(declare-fun tp!935336 () Bool)

(assert (=> b!2911109 (= e!1837513 (and tp!935337 tp!935336))))

(declare-fun b!2911110 () Bool)

(declare-fun simplify!2 (Regex!8949) Regex!8949)

(assert (=> b!2911110 (= e!1837510 (validRegex!3682 (simplify!2 r!17423)))))

(declare-fun b!2911111 () Bool)

(assert (=> b!2911111 (= e!1837511 (not e!1837510))))

(declare-fun res!1201668 () Bool)

(assert (=> b!2911111 (=> res!1201668 e!1837510)))

(declare-fun lt!1023856 () Bool)

(get-info :version)

(assert (=> b!2911111 (= res!1201668 (or (not lt!1023856) (not ((_ is Concat!14270) r!17423))))))

(declare-fun matchRSpec!1086 (Regex!8949 List!34814) Bool)

(assert (=> b!2911111 (= lt!1023856 (matchRSpec!1086 r!17423 s!11993))))

(declare-fun matchR!3831 (Regex!8949 List!34814) Bool)

(assert (=> b!2911111 (= lt!1023856 (matchR!3831 r!17423 s!11993))))

(declare-datatypes ((Unit!48237 0))(
  ( (Unit!48238) )
))
(declare-fun lt!1023857 () Unit!48237)

(declare-fun mainMatchTheorem!1086 (Regex!8949 List!34814) Unit!48237)

(assert (=> b!2911111 (= lt!1023857 (mainMatchTheorem!1086 r!17423 s!11993))))

(assert (= (and start!283708 res!1201670) b!2911111))

(assert (= (and b!2911111 (not res!1201668)) b!2911105))

(assert (= (and b!2911105 (not res!1201669)) b!2911110))

(assert (= (and start!283708 ((_ is ElementMatch!8949) r!17423)) b!2911106))

(assert (= (and start!283708 ((_ is Concat!14270) r!17423)) b!2911107))

(assert (= (and start!283708 ((_ is Star!8949) r!17423)) b!2911108))

(assert (= (and start!283708 ((_ is Union!8949) r!17423)) b!2911109))

(assert (= (and start!283708 ((_ is Cons!34690) s!11993)) b!2911104))

(declare-fun m!3312607 () Bool)

(assert (=> start!283708 m!3312607))

(declare-fun m!3312609 () Bool)

(assert (=> b!2911105 m!3312609))

(declare-fun m!3312611 () Bool)

(assert (=> b!2911110 m!3312611))

(assert (=> b!2911110 m!3312611))

(declare-fun m!3312613 () Bool)

(assert (=> b!2911110 m!3312613))

(declare-fun m!3312615 () Bool)

(assert (=> b!2911111 m!3312615))

(declare-fun m!3312617 () Bool)

(assert (=> b!2911111 m!3312617))

(declare-fun m!3312619 () Bool)

(assert (=> b!2911111 m!3312619))

(check-sat (not b!2911108) (not b!2911107) (not b!2911105) (not b!2911109) (not b!2911110) (not start!283708) tp_is_empty!15461 (not b!2911111) (not b!2911104))
(check-sat)
(get-model)

(declare-fun b!2911148 () Bool)

(declare-fun e!1837545 () Bool)

(declare-fun call!190011 () Bool)

(assert (=> b!2911148 (= e!1837545 call!190011)))

(declare-fun b!2911149 () Bool)

(declare-fun res!1201694 () Bool)

(declare-fun e!1837548 () Bool)

(assert (=> b!2911149 (=> res!1201694 e!1837548)))

(assert (=> b!2911149 (= res!1201694 (not ((_ is Concat!14270) (simplify!2 r!17423))))))

(declare-fun e!1837544 () Bool)

(assert (=> b!2911149 (= e!1837544 e!1837548)))

(declare-fun bm!190006 () Bool)

(declare-fun call!190012 () Bool)

(assert (=> bm!190006 (= call!190011 call!190012)))

(declare-fun b!2911150 () Bool)

(declare-fun e!1837547 () Bool)

(assert (=> b!2911150 (= e!1837547 call!190012)))

(declare-fun d!837644 () Bool)

(declare-fun res!1201695 () Bool)

(declare-fun e!1837546 () Bool)

(assert (=> d!837644 (=> res!1201695 e!1837546)))

(assert (=> d!837644 (= res!1201695 ((_ is ElementMatch!8949) (simplify!2 r!17423)))))

(assert (=> d!837644 (= (validRegex!3682 (simplify!2 r!17423)) e!1837546)))

(declare-fun bm!190007 () Bool)

(declare-fun c!474702 () Bool)

(declare-fun c!474703 () Bool)

(assert (=> bm!190007 (= call!190012 (validRegex!3682 (ite c!474702 (reg!9278 (simplify!2 r!17423)) (ite c!474703 (regOne!18411 (simplify!2 r!17423)) (regTwo!18410 (simplify!2 r!17423))))))))

(declare-fun b!2911151 () Bool)

(declare-fun e!1837543 () Bool)

(declare-fun call!190013 () Bool)

(assert (=> b!2911151 (= e!1837543 call!190013)))

(declare-fun bm!190008 () Bool)

(assert (=> bm!190008 (= call!190013 (validRegex!3682 (ite c!474703 (regTwo!18411 (simplify!2 r!17423)) (regOne!18410 (simplify!2 r!17423)))))))

(declare-fun b!2911152 () Bool)

(declare-fun e!1837542 () Bool)

(assert (=> b!2911152 (= e!1837546 e!1837542)))

(assert (=> b!2911152 (= c!474702 ((_ is Star!8949) (simplify!2 r!17423)))))

(declare-fun b!2911153 () Bool)

(assert (=> b!2911153 (= e!1837548 e!1837545)))

(declare-fun res!1201691 () Bool)

(assert (=> b!2911153 (=> (not res!1201691) (not e!1837545))))

(assert (=> b!2911153 (= res!1201691 call!190013)))

(declare-fun b!2911154 () Bool)

(declare-fun res!1201693 () Bool)

(assert (=> b!2911154 (=> (not res!1201693) (not e!1837543))))

(assert (=> b!2911154 (= res!1201693 call!190011)))

(assert (=> b!2911154 (= e!1837544 e!1837543)))

(declare-fun b!2911155 () Bool)

(assert (=> b!2911155 (= e!1837542 e!1837547)))

(declare-fun res!1201692 () Bool)

(declare-fun nullable!2791 (Regex!8949) Bool)

(assert (=> b!2911155 (= res!1201692 (not (nullable!2791 (reg!9278 (simplify!2 r!17423)))))))

(assert (=> b!2911155 (=> (not res!1201692) (not e!1837547))))

(declare-fun b!2911156 () Bool)

(assert (=> b!2911156 (= e!1837542 e!1837544)))

(assert (=> b!2911156 (= c!474703 ((_ is Union!8949) (simplify!2 r!17423)))))

(assert (= (and d!837644 (not res!1201695)) b!2911152))

(assert (= (and b!2911152 c!474702) b!2911155))

(assert (= (and b!2911152 (not c!474702)) b!2911156))

(assert (= (and b!2911155 res!1201692) b!2911150))

(assert (= (and b!2911156 c!474703) b!2911154))

(assert (= (and b!2911156 (not c!474703)) b!2911149))

(assert (= (and b!2911154 res!1201693) b!2911151))

(assert (= (and b!2911149 (not res!1201694)) b!2911153))

(assert (= (and b!2911153 res!1201691) b!2911148))

(assert (= (or b!2911154 b!2911148) bm!190006))

(assert (= (or b!2911151 b!2911153) bm!190008))

(assert (= (or b!2911150 bm!190006) bm!190007))

(declare-fun m!3312621 () Bool)

(assert (=> bm!190007 m!3312621))

(declare-fun m!3312623 () Bool)

(assert (=> bm!190008 m!3312623))

(declare-fun m!3312625 () Bool)

(assert (=> b!2911155 m!3312625))

(assert (=> b!2911110 d!837644))

(declare-fun b!2911275 () Bool)

(declare-fun e!1837621 () Regex!8949)

(declare-fun e!1837626 () Regex!8949)

(assert (=> b!2911275 (= e!1837621 e!1837626)))

(declare-fun c!474752 () Bool)

(assert (=> b!2911275 (= c!474752 ((_ is ElementMatch!8949) r!17423))))

(declare-fun b!2911276 () Bool)

(declare-fun c!474761 () Bool)

(assert (=> b!2911276 (= c!474761 ((_ is Union!8949) r!17423))))

(declare-fun e!1837622 () Regex!8949)

(declare-fun e!1837625 () Regex!8949)

(assert (=> b!2911276 (= e!1837622 e!1837625)))

(declare-fun bm!190043 () Bool)

(declare-fun c!474762 () Bool)

(declare-fun lt!1023883 () Regex!8949)

(declare-fun lt!1023886 () Regex!8949)

(declare-fun call!190051 () Bool)

(declare-fun isEmptyExpr!241 (Regex!8949) Bool)

(assert (=> bm!190043 (= call!190051 (isEmptyExpr!241 (ite c!474762 lt!1023886 lt!1023883)))))

(declare-fun d!837648 () Bool)

(declare-fun e!1837620 () Bool)

(assert (=> d!837648 e!1837620))

(declare-fun res!1201718 () Bool)

(assert (=> d!837648 (=> (not res!1201718) (not e!1837620))))

(declare-fun lt!1023882 () Regex!8949)

(assert (=> d!837648 (= res!1201718 (validRegex!3682 lt!1023882))))

(assert (=> d!837648 (= lt!1023882 e!1837621)))

(declare-fun c!474760 () Bool)

(assert (=> d!837648 (= c!474760 ((_ is EmptyLang!8949) r!17423))))

(assert (=> d!837648 (validRegex!3682 r!17423)))

(assert (=> d!837648 (= (simplify!2 r!17423) lt!1023882)))

(declare-fun b!2911277 () Bool)

(assert (=> b!2911277 (= e!1837621 EmptyLang!8949)))

(declare-fun b!2911278 () Bool)

(declare-fun e!1837631 () Regex!8949)

(declare-fun lt!1023887 () Regex!8949)

(declare-fun lt!1023885 () Regex!8949)

(assert (=> b!2911278 (= e!1837631 (Union!8949 lt!1023887 lt!1023885))))

(declare-fun b!2911279 () Bool)

(declare-fun c!474756 () Bool)

(declare-fun call!190052 () Bool)

(assert (=> b!2911279 (= c!474756 call!190052)))

(declare-fun e!1837630 () Regex!8949)

(assert (=> b!2911279 (= e!1837630 e!1837631)))

(declare-fun b!2911280 () Bool)

(assert (=> b!2911280 (= e!1837630 lt!1023885)))

(declare-fun b!2911281 () Bool)

(declare-fun e!1837627 () Regex!8949)

(assert (=> b!2911281 (= e!1837627 lt!1023883)))

(declare-fun b!2911282 () Bool)

(declare-fun e!1837629 () Regex!8949)

(assert (=> b!2911282 (= e!1837629 EmptyLang!8949)))

(declare-fun b!2911283 () Bool)

(declare-fun c!474758 () Bool)

(declare-fun e!1837619 () Bool)

(assert (=> b!2911283 (= c!474758 e!1837619)))

(declare-fun res!1201719 () Bool)

(assert (=> b!2911283 (=> res!1201719 e!1837619)))

(declare-fun call!190053 () Bool)

(assert (=> b!2911283 (= res!1201719 call!190053)))

(declare-fun call!190049 () Regex!8949)

(assert (=> b!2911283 (= lt!1023886 call!190049)))

(declare-fun e!1837624 () Regex!8949)

(assert (=> b!2911283 (= e!1837622 e!1837624)))

(declare-fun b!2911284 () Bool)

(declare-fun c!474759 () Bool)

(assert (=> b!2911284 (= c!474759 ((_ is EmptyExpr!8949) r!17423))))

(declare-fun e!1837628 () Regex!8949)

(assert (=> b!2911284 (= e!1837626 e!1837628)))

(declare-fun bm!190044 () Bool)

(declare-fun isEmptyLang!156 (Regex!8949) Bool)

(assert (=> bm!190044 (= call!190053 (isEmptyLang!156 (ite c!474762 lt!1023886 (ite c!474761 lt!1023885 lt!1023883))))))

(declare-fun b!2911285 () Bool)

(assert (=> b!2911285 (= e!1837628 e!1837622)))

(assert (=> b!2911285 (= c!474762 ((_ is Star!8949) r!17423))))

(declare-fun b!2911286 () Bool)

(assert (=> b!2911286 (= e!1837620 (= (nullable!2791 lt!1023882) (nullable!2791 r!17423)))))

(declare-fun b!2911287 () Bool)

(assert (=> b!2911287 (= e!1837619 call!190051)))

(declare-fun b!2911288 () Bool)

(assert (=> b!2911288 (= e!1837628 EmptyExpr!8949)))

(declare-fun bm!190045 () Bool)

(declare-fun call!190048 () Regex!8949)

(assert (=> bm!190045 (= call!190048 (simplify!2 (ite c!474761 (regOne!18411 r!17423) (regTwo!18410 r!17423))))))

(declare-fun b!2911289 () Bool)

(declare-fun e!1837632 () Bool)

(assert (=> b!2911289 (= e!1837632 call!190052)))

(declare-fun b!2911290 () Bool)

(assert (=> b!2911290 (= e!1837624 EmptyExpr!8949)))

(declare-fun b!2911291 () Bool)

(assert (=> b!2911291 (= e!1837625 e!1837629)))

(declare-fun lt!1023884 () Regex!8949)

(declare-fun call!190054 () Regex!8949)

(assert (=> b!2911291 (= lt!1023884 call!190054)))

(assert (=> b!2911291 (= lt!1023883 call!190048)))

(declare-fun res!1201720 () Bool)

(declare-fun call!190050 () Bool)

(assert (=> b!2911291 (= res!1201720 call!190050)))

(assert (=> b!2911291 (=> res!1201720 e!1837632)))

(declare-fun c!474757 () Bool)

(assert (=> b!2911291 (= c!474757 e!1837632)))

(declare-fun bm!190046 () Bool)

(assert (=> bm!190046 (= call!190052 call!190053)))

(declare-fun b!2911292 () Bool)

(assert (=> b!2911292 (= e!1837625 e!1837630)))

(assert (=> b!2911292 (= lt!1023887 call!190048)))

(assert (=> b!2911292 (= lt!1023885 call!190054)))

(declare-fun c!474754 () Bool)

(assert (=> b!2911292 (= c!474754 call!190050)))

(declare-fun b!2911293 () Bool)

(assert (=> b!2911293 (= e!1837631 lt!1023887)))

(declare-fun b!2911294 () Bool)

(declare-fun e!1837623 () Regex!8949)

(assert (=> b!2911294 (= e!1837627 e!1837623)))

(declare-fun c!474753 () Bool)

(assert (=> b!2911294 (= c!474753 call!190051)))

(declare-fun b!2911295 () Bool)

(assert (=> b!2911295 (= e!1837624 (Star!8949 lt!1023886))))

(declare-fun bm!190047 () Bool)

(assert (=> bm!190047 (= call!190049 (simplify!2 (ite c!474762 (reg!9278 r!17423) (ite c!474761 (regTwo!18411 r!17423) (regOne!18410 r!17423)))))))

(declare-fun bm!190048 () Bool)

(assert (=> bm!190048 (= call!190054 call!190049)))

(declare-fun b!2911296 () Bool)

(assert (=> b!2911296 (= e!1837623 lt!1023884)))

(declare-fun b!2911297 () Bool)

(declare-fun c!474755 () Bool)

(assert (=> b!2911297 (= c!474755 (isEmptyExpr!241 lt!1023884))))

(assert (=> b!2911297 (= e!1837629 e!1837627)))

(declare-fun b!2911298 () Bool)

(assert (=> b!2911298 (= e!1837626 r!17423)))

(declare-fun b!2911299 () Bool)

(assert (=> b!2911299 (= e!1837623 (Concat!14270 lt!1023884 lt!1023883))))

(declare-fun bm!190049 () Bool)

(assert (=> bm!190049 (= call!190050 (isEmptyLang!156 (ite c!474761 lt!1023887 lt!1023884)))))

(assert (= (and d!837648 c!474760) b!2911277))

(assert (= (and d!837648 (not c!474760)) b!2911275))

(assert (= (and b!2911275 c!474752) b!2911298))

(assert (= (and b!2911275 (not c!474752)) b!2911284))

(assert (= (and b!2911284 c!474759) b!2911288))

(assert (= (and b!2911284 (not c!474759)) b!2911285))

(assert (= (and b!2911285 c!474762) b!2911283))

(assert (= (and b!2911285 (not c!474762)) b!2911276))

(assert (= (and b!2911283 (not res!1201719)) b!2911287))

(assert (= (and b!2911283 c!474758) b!2911290))

(assert (= (and b!2911283 (not c!474758)) b!2911295))

(assert (= (and b!2911276 c!474761) b!2911292))

(assert (= (and b!2911276 (not c!474761)) b!2911291))

(assert (= (and b!2911292 c!474754) b!2911280))

(assert (= (and b!2911292 (not c!474754)) b!2911279))

(assert (= (and b!2911279 c!474756) b!2911293))

(assert (= (and b!2911279 (not c!474756)) b!2911278))

(assert (= (and b!2911291 (not res!1201720)) b!2911289))

(assert (= (and b!2911291 c!474757) b!2911282))

(assert (= (and b!2911291 (not c!474757)) b!2911297))

(assert (= (and b!2911297 c!474755) b!2911281))

(assert (= (and b!2911297 (not c!474755)) b!2911294))

(assert (= (and b!2911294 c!474753) b!2911296))

(assert (= (and b!2911294 (not c!474753)) b!2911299))

(assert (= (or b!2911292 b!2911291) bm!190045))

(assert (= (or b!2911292 b!2911291) bm!190048))

(assert (= (or b!2911292 b!2911291) bm!190049))

(assert (= (or b!2911279 b!2911289) bm!190046))

(assert (= (or b!2911287 b!2911294) bm!190043))

(assert (= (or b!2911283 bm!190048) bm!190047))

(assert (= (or b!2911283 bm!190046) bm!190044))

(assert (= (and d!837648 res!1201718) b!2911286))

(declare-fun m!3312639 () Bool)

(assert (=> bm!190045 m!3312639))

(declare-fun m!3312641 () Bool)

(assert (=> bm!190049 m!3312641))

(declare-fun m!3312643 () Bool)

(assert (=> bm!190047 m!3312643))

(declare-fun m!3312645 () Bool)

(assert (=> bm!190044 m!3312645))

(declare-fun m!3312647 () Bool)

(assert (=> b!2911297 m!3312647))

(declare-fun m!3312649 () Bool)

(assert (=> d!837648 m!3312649))

(assert (=> d!837648 m!3312607))

(declare-fun m!3312651 () Bool)

(assert (=> b!2911286 m!3312651))

(declare-fun m!3312653 () Bool)

(assert (=> b!2911286 m!3312653))

(declare-fun m!3312655 () Bool)

(assert (=> bm!190043 m!3312655))

(assert (=> b!2911110 d!837648))

(declare-fun d!837656 () Bool)

(assert (=> d!837656 (= (isEmpty!18932 s!11993) ((_ is Nil!34690) s!11993))))

(assert (=> b!2911105 d!837656))

(declare-fun b!2911325 () Bool)

(declare-fun e!1837650 () Bool)

(declare-fun call!190062 () Bool)

(assert (=> b!2911325 (= e!1837650 call!190062)))

(declare-fun b!2911326 () Bool)

(declare-fun res!1201727 () Bool)

(declare-fun e!1837653 () Bool)

(assert (=> b!2911326 (=> res!1201727 e!1837653)))

(assert (=> b!2911326 (= res!1201727 (not ((_ is Concat!14270) r!17423)))))

(declare-fun e!1837649 () Bool)

(assert (=> b!2911326 (= e!1837649 e!1837653)))

(declare-fun bm!190057 () Bool)

(declare-fun call!190063 () Bool)

(assert (=> bm!190057 (= call!190062 call!190063)))

(declare-fun b!2911327 () Bool)

(declare-fun e!1837652 () Bool)

(assert (=> b!2911327 (= e!1837652 call!190063)))

(declare-fun d!837658 () Bool)

(declare-fun res!1201728 () Bool)

(declare-fun e!1837651 () Bool)

(assert (=> d!837658 (=> res!1201728 e!1837651)))

(assert (=> d!837658 (= res!1201728 ((_ is ElementMatch!8949) r!17423))))

(assert (=> d!837658 (= (validRegex!3682 r!17423) e!1837651)))

(declare-fun bm!190058 () Bool)

(declare-fun c!474774 () Bool)

(declare-fun c!474775 () Bool)

(assert (=> bm!190058 (= call!190063 (validRegex!3682 (ite c!474774 (reg!9278 r!17423) (ite c!474775 (regOne!18411 r!17423) (regTwo!18410 r!17423)))))))

(declare-fun b!2911328 () Bool)

(declare-fun e!1837648 () Bool)

(declare-fun call!190064 () Bool)

(assert (=> b!2911328 (= e!1837648 call!190064)))

(declare-fun bm!190059 () Bool)

(assert (=> bm!190059 (= call!190064 (validRegex!3682 (ite c!474775 (regTwo!18411 r!17423) (regOne!18410 r!17423))))))

(declare-fun b!2911329 () Bool)

(declare-fun e!1837647 () Bool)

(assert (=> b!2911329 (= e!1837651 e!1837647)))

(assert (=> b!2911329 (= c!474774 ((_ is Star!8949) r!17423))))

(declare-fun b!2911330 () Bool)

(assert (=> b!2911330 (= e!1837653 e!1837650)))

(declare-fun res!1201724 () Bool)

(assert (=> b!2911330 (=> (not res!1201724) (not e!1837650))))

(assert (=> b!2911330 (= res!1201724 call!190064)))

(declare-fun b!2911331 () Bool)

(declare-fun res!1201726 () Bool)

(assert (=> b!2911331 (=> (not res!1201726) (not e!1837648))))

(assert (=> b!2911331 (= res!1201726 call!190062)))

(assert (=> b!2911331 (= e!1837649 e!1837648)))

(declare-fun b!2911332 () Bool)

(assert (=> b!2911332 (= e!1837647 e!1837652)))

(declare-fun res!1201725 () Bool)

(assert (=> b!2911332 (= res!1201725 (not (nullable!2791 (reg!9278 r!17423))))))

(assert (=> b!2911332 (=> (not res!1201725) (not e!1837652))))

(declare-fun b!2911333 () Bool)

(assert (=> b!2911333 (= e!1837647 e!1837649)))

(assert (=> b!2911333 (= c!474775 ((_ is Union!8949) r!17423))))

(assert (= (and d!837658 (not res!1201728)) b!2911329))

(assert (= (and b!2911329 c!474774) b!2911332))

(assert (= (and b!2911329 (not c!474774)) b!2911333))

(assert (= (and b!2911332 res!1201725) b!2911327))

(assert (= (and b!2911333 c!474775) b!2911331))

(assert (= (and b!2911333 (not c!474775)) b!2911326))

(assert (= (and b!2911331 res!1201726) b!2911328))

(assert (= (and b!2911326 (not res!1201727)) b!2911330))

(assert (= (and b!2911330 res!1201724) b!2911325))

(assert (= (or b!2911331 b!2911325) bm!190057))

(assert (= (or b!2911328 b!2911330) bm!190059))

(assert (= (or b!2911327 bm!190057) bm!190058))

(declare-fun m!3312657 () Bool)

(assert (=> bm!190058 m!3312657))

(declare-fun m!3312659 () Bool)

(assert (=> bm!190059 m!3312659))

(declare-fun m!3312661 () Bool)

(assert (=> b!2911332 m!3312661))

(assert (=> start!283708 d!837658))

(declare-fun b!2911490 () Bool)

(assert (=> b!2911490 true))

(assert (=> b!2911490 true))

(declare-fun bs!524547 () Bool)

(declare-fun b!2911495 () Bool)

(assert (= bs!524547 (and b!2911495 b!2911490)))

(declare-fun lambda!108076 () Int)

(declare-fun lambda!108075 () Int)

(assert (=> bs!524547 (not (= lambda!108076 lambda!108075))))

(assert (=> b!2911495 true))

(assert (=> b!2911495 true))

(declare-fun e!1837730 () Bool)

(declare-fun call!190078 () Bool)

(assert (=> b!2911490 (= e!1837730 call!190078)))

(declare-fun b!2911492 () Bool)

(declare-fun c!474806 () Bool)

(assert (=> b!2911492 (= c!474806 ((_ is Union!8949) r!17423))))

(declare-fun e!1837728 () Bool)

(declare-fun e!1837733 () Bool)

(assert (=> b!2911492 (= e!1837728 e!1837733)))

(declare-fun b!2911493 () Bool)

(declare-fun e!1837731 () Bool)

(declare-fun call!190079 () Bool)

(assert (=> b!2911493 (= e!1837731 call!190079)))

(declare-fun b!2911494 () Bool)

(declare-fun res!1201788 () Bool)

(assert (=> b!2911494 (=> res!1201788 e!1837730)))

(assert (=> b!2911494 (= res!1201788 call!190079)))

(declare-fun e!1837729 () Bool)

(assert (=> b!2911494 (= e!1837729 e!1837730)))

(assert (=> b!2911495 (= e!1837729 call!190078)))

(declare-fun b!2911496 () Bool)

(assert (=> b!2911496 (= e!1837733 e!1837729)))

(declare-fun c!474807 () Bool)

(assert (=> b!2911496 (= c!474807 ((_ is Star!8949) r!17423))))

(declare-fun b!2911491 () Bool)

(declare-fun e!1837734 () Bool)

(assert (=> b!2911491 (= e!1837733 e!1837734)))

(declare-fun res!1201789 () Bool)

(assert (=> b!2911491 (= res!1201789 (matchRSpec!1086 (regOne!18411 r!17423) s!11993))))

(assert (=> b!2911491 (=> res!1201789 e!1837734)))

(declare-fun d!837660 () Bool)

(declare-fun c!474808 () Bool)

(assert (=> d!837660 (= c!474808 ((_ is EmptyExpr!8949) r!17423))))

(assert (=> d!837660 (= (matchRSpec!1086 r!17423 s!11993) e!1837731)))

(declare-fun bm!190073 () Bool)

(assert (=> bm!190073 (= call!190079 (isEmpty!18932 s!11993))))

(declare-fun b!2911497 () Bool)

(assert (=> b!2911497 (= e!1837734 (matchRSpec!1086 (regTwo!18411 r!17423) s!11993))))

(declare-fun b!2911498 () Bool)

(declare-fun e!1837732 () Bool)

(assert (=> b!2911498 (= e!1837731 e!1837732)))

(declare-fun res!1201790 () Bool)

(assert (=> b!2911498 (= res!1201790 (not ((_ is EmptyLang!8949) r!17423)))))

(assert (=> b!2911498 (=> (not res!1201790) (not e!1837732))))

(declare-fun b!2911499 () Bool)

(assert (=> b!2911499 (= e!1837728 (= s!11993 (Cons!34690 (c!474693 r!17423) Nil!34690)))))

(declare-fun b!2911500 () Bool)

(declare-fun c!474805 () Bool)

(assert (=> b!2911500 (= c!474805 ((_ is ElementMatch!8949) r!17423))))

(assert (=> b!2911500 (= e!1837732 e!1837728)))

(declare-fun bm!190074 () Bool)

(declare-fun Exists!1331 (Int) Bool)

(assert (=> bm!190074 (= call!190078 (Exists!1331 (ite c!474807 lambda!108075 lambda!108076)))))

(assert (= (and d!837660 c!474808) b!2911493))

(assert (= (and d!837660 (not c!474808)) b!2911498))

(assert (= (and b!2911498 res!1201790) b!2911500))

(assert (= (and b!2911500 c!474805) b!2911499))

(assert (= (and b!2911500 (not c!474805)) b!2911492))

(assert (= (and b!2911492 c!474806) b!2911491))

(assert (= (and b!2911492 (not c!474806)) b!2911496))

(assert (= (and b!2911491 (not res!1201789)) b!2911497))

(assert (= (and b!2911496 c!474807) b!2911494))

(assert (= (and b!2911496 (not c!474807)) b!2911495))

(assert (= (and b!2911494 (not res!1201788)) b!2911490))

(assert (= (or b!2911490 b!2911495) bm!190074))

(assert (= (or b!2911493 b!2911494) bm!190073))

(declare-fun m!3312699 () Bool)

(assert (=> b!2911491 m!3312699))

(assert (=> bm!190073 m!3312609))

(declare-fun m!3312701 () Bool)

(assert (=> b!2911497 m!3312701))

(declare-fun m!3312703 () Bool)

(assert (=> bm!190074 m!3312703))

(assert (=> b!2911111 d!837660))

(declare-fun b!2911533 () Bool)

(declare-fun res!1201811 () Bool)

(declare-fun e!1837755 () Bool)

(assert (=> b!2911533 (=> res!1201811 e!1837755)))

(declare-fun e!1837753 () Bool)

(assert (=> b!2911533 (= res!1201811 e!1837753)))

(declare-fun res!1201813 () Bool)

(assert (=> b!2911533 (=> (not res!1201813) (not e!1837753))))

(declare-fun lt!1023902 () Bool)

(assert (=> b!2911533 (= res!1201813 lt!1023902)))

(declare-fun b!2911535 () Bool)

(declare-fun e!1837752 () Bool)

(assert (=> b!2911535 (= e!1837752 (nullable!2791 r!17423))))

(declare-fun b!2911536 () Bool)

(declare-fun e!1837750 () Bool)

(assert (=> b!2911536 (= e!1837755 e!1837750)))

(declare-fun res!1201812 () Bool)

(assert (=> b!2911536 (=> (not res!1201812) (not e!1837750))))

(assert (=> b!2911536 (= res!1201812 (not lt!1023902))))

(declare-fun b!2911537 () Bool)

(declare-fun e!1837749 () Bool)

(assert (=> b!2911537 (= e!1837749 (not lt!1023902))))

(declare-fun b!2911538 () Bool)

(declare-fun e!1837751 () Bool)

(assert (=> b!2911538 (= e!1837750 e!1837751)))

(declare-fun res!1201814 () Bool)

(assert (=> b!2911538 (=> res!1201814 e!1837751)))

(declare-fun call!190082 () Bool)

(assert (=> b!2911538 (= res!1201814 call!190082)))

(declare-fun b!2911539 () Bool)

(declare-fun derivativeStep!2406 (Regex!8949 C!18084) Regex!8949)

(declare-fun head!6464 (List!34814) C!18084)

(declare-fun tail!4691 (List!34814) List!34814)

(assert (=> b!2911539 (= e!1837752 (matchR!3831 (derivativeStep!2406 r!17423 (head!6464 s!11993)) (tail!4691 s!11993)))))

(declare-fun b!2911540 () Bool)

(declare-fun res!1201808 () Bool)

(assert (=> b!2911540 (=> (not res!1201808) (not e!1837753))))

(assert (=> b!2911540 (= res!1201808 (isEmpty!18932 (tail!4691 s!11993)))))

(declare-fun b!2911541 () Bool)

(assert (=> b!2911541 (= e!1837753 (= (head!6464 s!11993) (c!474693 r!17423)))))

(declare-fun b!2911542 () Bool)

(declare-fun e!1837754 () Bool)

(assert (=> b!2911542 (= e!1837754 (= lt!1023902 call!190082))))

(declare-fun d!837668 () Bool)

(assert (=> d!837668 e!1837754))

(declare-fun c!474815 () Bool)

(assert (=> d!837668 (= c!474815 ((_ is EmptyExpr!8949) r!17423))))

(assert (=> d!837668 (= lt!1023902 e!1837752)))

(declare-fun c!474816 () Bool)

(assert (=> d!837668 (= c!474816 (isEmpty!18932 s!11993))))

(assert (=> d!837668 (validRegex!3682 r!17423)))

(assert (=> d!837668 (= (matchR!3831 r!17423 s!11993) lt!1023902)))

(declare-fun b!2911534 () Bool)

(assert (=> b!2911534 (= e!1837751 (not (= (head!6464 s!11993) (c!474693 r!17423))))))

(declare-fun bm!190077 () Bool)

(assert (=> bm!190077 (= call!190082 (isEmpty!18932 s!11993))))

(declare-fun b!2911543 () Bool)

(assert (=> b!2911543 (= e!1837754 e!1837749)))

(declare-fun c!474817 () Bool)

(assert (=> b!2911543 (= c!474817 ((_ is EmptyLang!8949) r!17423))))

(declare-fun b!2911544 () Bool)

(declare-fun res!1201810 () Bool)

(assert (=> b!2911544 (=> res!1201810 e!1837751)))

(assert (=> b!2911544 (= res!1201810 (not (isEmpty!18932 (tail!4691 s!11993))))))

(declare-fun b!2911545 () Bool)

(declare-fun res!1201809 () Bool)

(assert (=> b!2911545 (=> res!1201809 e!1837755)))

(assert (=> b!2911545 (= res!1201809 (not ((_ is ElementMatch!8949) r!17423)))))

(assert (=> b!2911545 (= e!1837749 e!1837755)))

(declare-fun b!2911546 () Bool)

(declare-fun res!1201807 () Bool)

(assert (=> b!2911546 (=> (not res!1201807) (not e!1837753))))

(assert (=> b!2911546 (= res!1201807 (not call!190082))))

(assert (= (and d!837668 c!474816) b!2911535))

(assert (= (and d!837668 (not c!474816)) b!2911539))

(assert (= (and d!837668 c!474815) b!2911542))

(assert (= (and d!837668 (not c!474815)) b!2911543))

(assert (= (and b!2911543 c!474817) b!2911537))

(assert (= (and b!2911543 (not c!474817)) b!2911545))

(assert (= (and b!2911545 (not res!1201809)) b!2911533))

(assert (= (and b!2911533 res!1201813) b!2911546))

(assert (= (and b!2911546 res!1201807) b!2911540))

(assert (= (and b!2911540 res!1201808) b!2911541))

(assert (= (and b!2911533 (not res!1201811)) b!2911536))

(assert (= (and b!2911536 res!1201812) b!2911538))

(assert (= (and b!2911538 (not res!1201814)) b!2911544))

(assert (= (and b!2911544 (not res!1201810)) b!2911534))

(assert (= (or b!2911542 b!2911538 b!2911546) bm!190077))

(declare-fun m!3312705 () Bool)

(assert (=> b!2911541 m!3312705))

(assert (=> b!2911539 m!3312705))

(assert (=> b!2911539 m!3312705))

(declare-fun m!3312707 () Bool)

(assert (=> b!2911539 m!3312707))

(declare-fun m!3312709 () Bool)

(assert (=> b!2911539 m!3312709))

(assert (=> b!2911539 m!3312707))

(assert (=> b!2911539 m!3312709))

(declare-fun m!3312711 () Bool)

(assert (=> b!2911539 m!3312711))

(assert (=> b!2911535 m!3312653))

(assert (=> b!2911534 m!3312705))

(assert (=> bm!190077 m!3312609))

(assert (=> b!2911544 m!3312709))

(assert (=> b!2911544 m!3312709))

(declare-fun m!3312713 () Bool)

(assert (=> b!2911544 m!3312713))

(assert (=> d!837668 m!3312609))

(assert (=> d!837668 m!3312607))

(assert (=> b!2911540 m!3312709))

(assert (=> b!2911540 m!3312709))

(assert (=> b!2911540 m!3312713))

(assert (=> b!2911111 d!837668))

(declare-fun d!837670 () Bool)

(assert (=> d!837670 (= (matchR!3831 r!17423 s!11993) (matchRSpec!1086 r!17423 s!11993))))

(declare-fun lt!1023905 () Unit!48237)

(declare-fun choose!17120 (Regex!8949 List!34814) Unit!48237)

(assert (=> d!837670 (= lt!1023905 (choose!17120 r!17423 s!11993))))

(assert (=> d!837670 (validRegex!3682 r!17423)))

(assert (=> d!837670 (= (mainMatchTheorem!1086 r!17423 s!11993) lt!1023905)))

(declare-fun bs!524548 () Bool)

(assert (= bs!524548 d!837670))

(assert (=> bs!524548 m!3312617))

(assert (=> bs!524548 m!3312615))

(declare-fun m!3312715 () Bool)

(assert (=> bs!524548 m!3312715))

(assert (=> bs!524548 m!3312607))

(assert (=> b!2911111 d!837670))

(declare-fun b!2911551 () Bool)

(declare-fun e!1837758 () Bool)

(declare-fun tp!935382 () Bool)

(assert (=> b!2911551 (= e!1837758 (and tp_is_empty!15461 tp!935382))))

(assert (=> b!2911104 (= tp!935341 e!1837758)))

(assert (= (and b!2911104 ((_ is Cons!34690) (t!233879 s!11993))) b!2911551))

(declare-fun b!2911563 () Bool)

(declare-fun e!1837761 () Bool)

(declare-fun tp!935394 () Bool)

(declare-fun tp!935395 () Bool)

(assert (=> b!2911563 (= e!1837761 (and tp!935394 tp!935395))))

(declare-fun b!2911565 () Bool)

(declare-fun tp!935393 () Bool)

(declare-fun tp!935396 () Bool)

(assert (=> b!2911565 (= e!1837761 (and tp!935393 tp!935396))))

(assert (=> b!2911109 (= tp!935337 e!1837761)))

(declare-fun b!2911564 () Bool)

(declare-fun tp!935397 () Bool)

(assert (=> b!2911564 (= e!1837761 tp!935397)))

(declare-fun b!2911562 () Bool)

(assert (=> b!2911562 (= e!1837761 tp_is_empty!15461)))

(assert (= (and b!2911109 ((_ is ElementMatch!8949) (regOne!18411 r!17423))) b!2911562))

(assert (= (and b!2911109 ((_ is Concat!14270) (regOne!18411 r!17423))) b!2911563))

(assert (= (and b!2911109 ((_ is Star!8949) (regOne!18411 r!17423))) b!2911564))

(assert (= (and b!2911109 ((_ is Union!8949) (regOne!18411 r!17423))) b!2911565))

(declare-fun b!2911567 () Bool)

(declare-fun e!1837762 () Bool)

(declare-fun tp!935399 () Bool)

(declare-fun tp!935400 () Bool)

(assert (=> b!2911567 (= e!1837762 (and tp!935399 tp!935400))))

(declare-fun b!2911569 () Bool)

(declare-fun tp!935398 () Bool)

(declare-fun tp!935401 () Bool)

(assert (=> b!2911569 (= e!1837762 (and tp!935398 tp!935401))))

(assert (=> b!2911109 (= tp!935336 e!1837762)))

(declare-fun b!2911568 () Bool)

(declare-fun tp!935402 () Bool)

(assert (=> b!2911568 (= e!1837762 tp!935402)))

(declare-fun b!2911566 () Bool)

(assert (=> b!2911566 (= e!1837762 tp_is_empty!15461)))

(assert (= (and b!2911109 ((_ is ElementMatch!8949) (regTwo!18411 r!17423))) b!2911566))

(assert (= (and b!2911109 ((_ is Concat!14270) (regTwo!18411 r!17423))) b!2911567))

(assert (= (and b!2911109 ((_ is Star!8949) (regTwo!18411 r!17423))) b!2911568))

(assert (= (and b!2911109 ((_ is Union!8949) (regTwo!18411 r!17423))) b!2911569))

(declare-fun b!2911571 () Bool)

(declare-fun e!1837763 () Bool)

(declare-fun tp!935404 () Bool)

(declare-fun tp!935405 () Bool)

(assert (=> b!2911571 (= e!1837763 (and tp!935404 tp!935405))))

(declare-fun b!2911573 () Bool)

(declare-fun tp!935403 () Bool)

(declare-fun tp!935406 () Bool)

(assert (=> b!2911573 (= e!1837763 (and tp!935403 tp!935406))))

(assert (=> b!2911107 (= tp!935338 e!1837763)))

(declare-fun b!2911572 () Bool)

(declare-fun tp!935407 () Bool)

(assert (=> b!2911572 (= e!1837763 tp!935407)))

(declare-fun b!2911570 () Bool)

(assert (=> b!2911570 (= e!1837763 tp_is_empty!15461)))

(assert (= (and b!2911107 ((_ is ElementMatch!8949) (regOne!18410 r!17423))) b!2911570))

(assert (= (and b!2911107 ((_ is Concat!14270) (regOne!18410 r!17423))) b!2911571))

(assert (= (and b!2911107 ((_ is Star!8949) (regOne!18410 r!17423))) b!2911572))

(assert (= (and b!2911107 ((_ is Union!8949) (regOne!18410 r!17423))) b!2911573))

(declare-fun b!2911575 () Bool)

(declare-fun e!1837764 () Bool)

(declare-fun tp!935409 () Bool)

(declare-fun tp!935410 () Bool)

(assert (=> b!2911575 (= e!1837764 (and tp!935409 tp!935410))))

(declare-fun b!2911577 () Bool)

(declare-fun tp!935408 () Bool)

(declare-fun tp!935411 () Bool)

(assert (=> b!2911577 (= e!1837764 (and tp!935408 tp!935411))))

(assert (=> b!2911107 (= tp!935340 e!1837764)))

(declare-fun b!2911576 () Bool)

(declare-fun tp!935412 () Bool)

(assert (=> b!2911576 (= e!1837764 tp!935412)))

(declare-fun b!2911574 () Bool)

(assert (=> b!2911574 (= e!1837764 tp_is_empty!15461)))

(assert (= (and b!2911107 ((_ is ElementMatch!8949) (regTwo!18410 r!17423))) b!2911574))

(assert (= (and b!2911107 ((_ is Concat!14270) (regTwo!18410 r!17423))) b!2911575))

(assert (= (and b!2911107 ((_ is Star!8949) (regTwo!18410 r!17423))) b!2911576))

(assert (= (and b!2911107 ((_ is Union!8949) (regTwo!18410 r!17423))) b!2911577))

(declare-fun b!2911579 () Bool)

(declare-fun e!1837765 () Bool)

(declare-fun tp!935414 () Bool)

(declare-fun tp!935415 () Bool)

(assert (=> b!2911579 (= e!1837765 (and tp!935414 tp!935415))))

(declare-fun b!2911581 () Bool)

(declare-fun tp!935413 () Bool)

(declare-fun tp!935416 () Bool)

(assert (=> b!2911581 (= e!1837765 (and tp!935413 tp!935416))))

(assert (=> b!2911108 (= tp!935339 e!1837765)))

(declare-fun b!2911580 () Bool)

(declare-fun tp!935417 () Bool)

(assert (=> b!2911580 (= e!1837765 tp!935417)))

(declare-fun b!2911578 () Bool)

(assert (=> b!2911578 (= e!1837765 tp_is_empty!15461)))

(assert (= (and b!2911108 ((_ is ElementMatch!8949) (reg!9278 r!17423))) b!2911578))

(assert (= (and b!2911108 ((_ is Concat!14270) (reg!9278 r!17423))) b!2911579))

(assert (= (and b!2911108 ((_ is Star!8949) (reg!9278 r!17423))) b!2911580))

(assert (= (and b!2911108 ((_ is Union!8949) (reg!9278 r!17423))) b!2911581))

(check-sat (not b!2911544) (not bm!190047) (not b!2911565) (not b!2911534) (not bm!190043) tp_is_empty!15461 (not b!2911567) (not b!2911541) (not b!2911540) (not d!837668) (not b!2911155) (not d!837670) (not b!2911572) (not b!2911332) (not b!2911568) (not b!2911576) (not b!2911539) (not bm!190049) (not b!2911575) (not b!2911580) (not b!2911581) (not bm!190007) (not bm!190073) (not b!2911577) (not d!837648) (not bm!190008) (not b!2911286) (not bm!190077) (not b!2911491) (not b!2911573) (not b!2911564) (not b!2911535) (not bm!190044) (not b!2911569) (not bm!190059) (not bm!190058) (not b!2911497) (not b!2911571) (not b!2911297) (not b!2911551) (not b!2911563) (not b!2911579) (not bm!190045) (not bm!190074))
(check-sat)
