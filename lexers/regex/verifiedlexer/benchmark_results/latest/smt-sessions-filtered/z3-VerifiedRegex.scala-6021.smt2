; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294720 () Bool)

(assert start!294720)

(declare-fun res!1273640 () Bool)

(declare-fun e!1943310 () Bool)

(assert (=> start!294720 (=> (not res!1273640) (not e!1943310))))

(declare-datatypes ((C!19372 0))(
  ( (C!19373 (val!11722 Int)) )
))
(declare-datatypes ((Regex!9593 0))(
  ( (ElementMatch!9593 (c!520665 C!19372)) (Concat!14914 (regOne!19698 Regex!9593) (regTwo!19698 Regex!9593)) (EmptyExpr!9593) (Star!9593 (reg!9922 Regex!9593)) (EmptyLang!9593) (Union!9593 (regOne!19699 Regex!9593) (regTwo!19699 Regex!9593)) )
))
(declare-fun r!17423 () Regex!9593)

(declare-fun validRegex!4326 (Regex!9593) Bool)

(assert (=> start!294720 (= res!1273640 (validRegex!4326 r!17423))))

(assert (=> start!294720 e!1943310))

(declare-fun e!1943313 () Bool)

(assert (=> start!294720 e!1943313))

(declare-fun e!1943308 () Bool)

(assert (=> start!294720 e!1943308))

(declare-fun b!3110933 () Bool)

(declare-fun e!1943311 () Bool)

(declare-fun lt!1057436 () Regex!9593)

(declare-datatypes ((List!35458 0))(
  ( (Nil!35334) (Cons!35334 (h!40754 C!19372) (t!234523 List!35458)) )
))
(declare-fun s!11993 () List!35458)

(declare-fun matchR!4475 (Regex!9593 List!35458) Bool)

(assert (=> b!3110933 (= e!1943311 (matchR!4475 lt!1057436 s!11993))))

(declare-fun b!3110934 () Bool)

(declare-fun tp!976370 () Bool)

(declare-fun tp!976369 () Bool)

(assert (=> b!3110934 (= e!1943313 (and tp!976370 tp!976369))))

(declare-fun b!3110935 () Bool)

(declare-fun res!1273636 () Bool)

(declare-fun e!1943312 () Bool)

(assert (=> b!3110935 (=> res!1273636 e!1943312)))

(declare-fun isEmptyLang!644 (Regex!9593) Bool)

(assert (=> b!3110935 (= res!1273636 (isEmptyLang!644 lt!1057436))))

(declare-fun b!3110936 () Bool)

(declare-fun e!1943307 () Bool)

(assert (=> b!3110936 (= e!1943312 e!1943307)))

(declare-fun res!1273638 () Bool)

(assert (=> b!3110936 (=> res!1273638 e!1943307)))

(declare-fun lt!1057442 () Bool)

(assert (=> b!3110936 (= res!1273638 lt!1057442)))

(assert (=> b!3110936 e!1943311))

(declare-fun res!1273639 () Bool)

(assert (=> b!3110936 (=> res!1273639 e!1943311)))

(assert (=> b!3110936 (= res!1273639 lt!1057442)))

(declare-fun lt!1057441 () Regex!9593)

(assert (=> b!3110936 (= lt!1057442 (matchR!4475 lt!1057441 s!11993))))

(declare-datatypes ((Unit!49625 0))(
  ( (Unit!49626) )
))
(declare-fun lt!1057438 () Unit!49625)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!324 (Regex!9593 Regex!9593 List!35458) Unit!49625)

(assert (=> b!3110936 (= lt!1057438 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!324 lt!1057441 lt!1057436 s!11993))))

(declare-fun b!3110937 () Bool)

(declare-fun e!1943309 () Bool)

(assert (=> b!3110937 (= e!1943310 (not e!1943309))))

(declare-fun res!1273641 () Bool)

(assert (=> b!3110937 (=> res!1273641 e!1943309)))

(declare-fun lt!1057435 () Bool)

(get-info :version)

(assert (=> b!3110937 (= res!1273641 (or lt!1057435 ((_ is Concat!14914) r!17423) (not ((_ is Union!9593) r!17423))))))

(declare-fun matchRSpec!1730 (Regex!9593 List!35458) Bool)

(assert (=> b!3110937 (= lt!1057435 (matchRSpec!1730 r!17423 s!11993))))

(assert (=> b!3110937 (= lt!1057435 (matchR!4475 r!17423 s!11993))))

(declare-fun lt!1057439 () Unit!49625)

(declare-fun mainMatchTheorem!1730 (Regex!9593 List!35458) Unit!49625)

(assert (=> b!3110937 (= lt!1057439 (mainMatchTheorem!1730 r!17423 s!11993))))

(declare-fun b!3110938 () Bool)

(declare-fun tp_is_empty!16749 () Bool)

(assert (=> b!3110938 (= e!1943313 tp_is_empty!16749)))

(declare-fun b!3110939 () Bool)

(declare-fun tp!976373 () Bool)

(assert (=> b!3110939 (= e!1943308 (and tp_is_empty!16749 tp!976373))))

(declare-fun b!3110940 () Bool)

(declare-fun res!1273642 () Bool)

(assert (=> b!3110940 (=> res!1273642 e!1943312)))

(assert (=> b!3110940 (= res!1273642 (not (matchR!4475 (Union!9593 lt!1057441 lt!1057436) s!11993)))))

(declare-fun lt!1057440 () Int)

(declare-fun lt!1057437 () Int)

(declare-fun b!3110941 () Bool)

(declare-fun regexDepth!115 (Regex!9593) Int)

(assert (=> b!3110941 (= e!1943307 (< (+ lt!1057440 lt!1057437) (+ (regexDepth!115 r!17423) lt!1057437)))))

(declare-fun size!26581 (List!35458) Int)

(assert (=> b!3110941 (= lt!1057437 (size!26581 s!11993))))

(assert (=> b!3110941 (= lt!1057440 (regexDepth!115 (regTwo!19699 r!17423)))))

(declare-fun b!3110942 () Bool)

(assert (=> b!3110942 (= e!1943309 e!1943312)))

(declare-fun res!1273637 () Bool)

(assert (=> b!3110942 (=> res!1273637 e!1943312)))

(assert (=> b!3110942 (= res!1273637 (isEmptyLang!644 lt!1057441))))

(declare-fun simplify!548 (Regex!9593) Regex!9593)

(assert (=> b!3110942 (= lt!1057436 (simplify!548 (regTwo!19699 r!17423)))))

(assert (=> b!3110942 (= lt!1057441 (simplify!548 (regOne!19699 r!17423)))))

(declare-fun b!3110943 () Bool)

(declare-fun tp!976371 () Bool)

(assert (=> b!3110943 (= e!1943313 tp!976371)))

(declare-fun b!3110944 () Bool)

(declare-fun res!1273635 () Bool)

(assert (=> b!3110944 (=> res!1273635 e!1943307)))

(assert (=> b!3110944 (= res!1273635 (not (validRegex!4326 (regTwo!19699 r!17423))))))

(declare-fun b!3110945 () Bool)

(declare-fun tp!976372 () Bool)

(declare-fun tp!976368 () Bool)

(assert (=> b!3110945 (= e!1943313 (and tp!976372 tp!976368))))

(assert (= (and start!294720 res!1273640) b!3110937))

(assert (= (and b!3110937 (not res!1273641)) b!3110942))

(assert (= (and b!3110942 (not res!1273637)) b!3110935))

(assert (= (and b!3110935 (not res!1273636)) b!3110940))

(assert (= (and b!3110940 (not res!1273642)) b!3110936))

(assert (= (and b!3110936 (not res!1273639)) b!3110933))

(assert (= (and b!3110936 (not res!1273638)) b!3110944))

(assert (= (and b!3110944 (not res!1273635)) b!3110941))

(assert (= (and start!294720 ((_ is ElementMatch!9593) r!17423)) b!3110938))

(assert (= (and start!294720 ((_ is Concat!14914) r!17423)) b!3110934))

(assert (= (and start!294720 ((_ is Star!9593) r!17423)) b!3110943))

(assert (= (and start!294720 ((_ is Union!9593) r!17423)) b!3110945))

(assert (= (and start!294720 ((_ is Cons!35334) s!11993)) b!3110939))

(declare-fun m!3404673 () Bool)

(assert (=> b!3110944 m!3404673))

(declare-fun m!3404675 () Bool)

(assert (=> b!3110942 m!3404675))

(declare-fun m!3404677 () Bool)

(assert (=> b!3110942 m!3404677))

(declare-fun m!3404679 () Bool)

(assert (=> b!3110942 m!3404679))

(declare-fun m!3404681 () Bool)

(assert (=> b!3110941 m!3404681))

(declare-fun m!3404683 () Bool)

(assert (=> b!3110941 m!3404683))

(declare-fun m!3404685 () Bool)

(assert (=> b!3110941 m!3404685))

(declare-fun m!3404687 () Bool)

(assert (=> b!3110933 m!3404687))

(declare-fun m!3404689 () Bool)

(assert (=> b!3110940 m!3404689))

(declare-fun m!3404691 () Bool)

(assert (=> start!294720 m!3404691))

(declare-fun m!3404693 () Bool)

(assert (=> b!3110935 m!3404693))

(declare-fun m!3404695 () Bool)

(assert (=> b!3110937 m!3404695))

(declare-fun m!3404697 () Bool)

(assert (=> b!3110937 m!3404697))

(declare-fun m!3404699 () Bool)

(assert (=> b!3110937 m!3404699))

(declare-fun m!3404701 () Bool)

(assert (=> b!3110936 m!3404701))

(declare-fun m!3404703 () Bool)

(assert (=> b!3110936 m!3404703))

(check-sat (not b!3110935) tp_is_empty!16749 (not b!3110936) (not b!3110941) (not b!3110943) (not start!294720) (not b!3110937) (not b!3110942) (not b!3110945) (not b!3110944) (not b!3110934) (not b!3110940) (not b!3110939) (not b!3110933))
(check-sat)
(get-model)

(declare-fun bm!220240 () Bool)

(declare-fun call!220246 () Bool)

(declare-fun c!520671 () Bool)

(assert (=> bm!220240 (= call!220246 (validRegex!4326 (ite c!520671 (regOne!19699 r!17423) (regTwo!19698 r!17423))))))

(declare-fun b!3110964 () Bool)

(declare-fun e!1943332 () Bool)

(declare-fun e!1943331 () Bool)

(assert (=> b!3110964 (= e!1943332 e!1943331)))

(declare-fun res!1273656 () Bool)

(declare-fun nullable!3235 (Regex!9593) Bool)

(assert (=> b!3110964 (= res!1273656 (not (nullable!3235 (reg!9922 r!17423))))))

(assert (=> b!3110964 (=> (not res!1273656) (not e!1943331))))

(declare-fun d!861760 () Bool)

(declare-fun res!1273654 () Bool)

(declare-fun e!1943329 () Bool)

(assert (=> d!861760 (=> res!1273654 e!1943329)))

(assert (=> d!861760 (= res!1273654 ((_ is ElementMatch!9593) r!17423))))

(assert (=> d!861760 (= (validRegex!4326 r!17423) e!1943329)))

(declare-fun b!3110965 () Bool)

(assert (=> b!3110965 (= e!1943329 e!1943332)))

(declare-fun c!520670 () Bool)

(assert (=> b!3110965 (= c!520670 ((_ is Star!9593) r!17423))))

(declare-fun b!3110966 () Bool)

(declare-fun call!220247 () Bool)

(assert (=> b!3110966 (= e!1943331 call!220247)))

(declare-fun b!3110967 () Bool)

(declare-fun e!1943333 () Bool)

(declare-fun e!1943330 () Bool)

(assert (=> b!3110967 (= e!1943333 e!1943330)))

(declare-fun res!1273653 () Bool)

(assert (=> b!3110967 (=> (not res!1273653) (not e!1943330))))

(declare-fun call!220245 () Bool)

(assert (=> b!3110967 (= res!1273653 call!220245)))

(declare-fun b!3110968 () Bool)

(declare-fun e!1943328 () Bool)

(assert (=> b!3110968 (= e!1943328 call!220245)))

(declare-fun bm!220241 () Bool)

(assert (=> bm!220241 (= call!220247 (validRegex!4326 (ite c!520670 (reg!9922 r!17423) (ite c!520671 (regTwo!19699 r!17423) (regOne!19698 r!17423)))))))

(declare-fun b!3110969 () Bool)

(declare-fun res!1273657 () Bool)

(assert (=> b!3110969 (=> res!1273657 e!1943333)))

(assert (=> b!3110969 (= res!1273657 (not ((_ is Concat!14914) r!17423)))))

(declare-fun e!1943334 () Bool)

(assert (=> b!3110969 (= e!1943334 e!1943333)))

(declare-fun b!3110970 () Bool)

(assert (=> b!3110970 (= e!1943330 call!220246)))

(declare-fun b!3110971 () Bool)

(assert (=> b!3110971 (= e!1943332 e!1943334)))

(assert (=> b!3110971 (= c!520671 ((_ is Union!9593) r!17423))))

(declare-fun bm!220242 () Bool)

(assert (=> bm!220242 (= call!220245 call!220247)))

(declare-fun b!3110972 () Bool)

(declare-fun res!1273655 () Bool)

(assert (=> b!3110972 (=> (not res!1273655) (not e!1943328))))

(assert (=> b!3110972 (= res!1273655 call!220246)))

(assert (=> b!3110972 (= e!1943334 e!1943328)))

(assert (= (and d!861760 (not res!1273654)) b!3110965))

(assert (= (and b!3110965 c!520670) b!3110964))

(assert (= (and b!3110965 (not c!520670)) b!3110971))

(assert (= (and b!3110964 res!1273656) b!3110966))

(assert (= (and b!3110971 c!520671) b!3110972))

(assert (= (and b!3110971 (not c!520671)) b!3110969))

(assert (= (and b!3110972 res!1273655) b!3110968))

(assert (= (and b!3110969 (not res!1273657)) b!3110967))

(assert (= (and b!3110967 res!1273653) b!3110970))

(assert (= (or b!3110972 b!3110970) bm!220240))

(assert (= (or b!3110968 b!3110967) bm!220242))

(assert (= (or b!3110966 bm!220242) bm!220241))

(declare-fun m!3404705 () Bool)

(assert (=> bm!220240 m!3404705))

(declare-fun m!3404707 () Bool)

(assert (=> b!3110964 m!3404707))

(declare-fun m!3404709 () Bool)

(assert (=> bm!220241 m!3404709))

(assert (=> start!294720 d!861760))

(declare-fun bm!220243 () Bool)

(declare-fun call!220249 () Bool)

(declare-fun c!520673 () Bool)

(assert (=> bm!220243 (= call!220249 (validRegex!4326 (ite c!520673 (regOne!19699 (regTwo!19699 r!17423)) (regTwo!19698 (regTwo!19699 r!17423)))))))

(declare-fun b!3110973 () Bool)

(declare-fun e!1943339 () Bool)

(declare-fun e!1943338 () Bool)

(assert (=> b!3110973 (= e!1943339 e!1943338)))

(declare-fun res!1273661 () Bool)

(assert (=> b!3110973 (= res!1273661 (not (nullable!3235 (reg!9922 (regTwo!19699 r!17423)))))))

(assert (=> b!3110973 (=> (not res!1273661) (not e!1943338))))

(declare-fun d!861764 () Bool)

(declare-fun res!1273659 () Bool)

(declare-fun e!1943336 () Bool)

(assert (=> d!861764 (=> res!1273659 e!1943336)))

(assert (=> d!861764 (= res!1273659 ((_ is ElementMatch!9593) (regTwo!19699 r!17423)))))

(assert (=> d!861764 (= (validRegex!4326 (regTwo!19699 r!17423)) e!1943336)))

(declare-fun b!3110974 () Bool)

(assert (=> b!3110974 (= e!1943336 e!1943339)))

(declare-fun c!520672 () Bool)

(assert (=> b!3110974 (= c!520672 ((_ is Star!9593) (regTwo!19699 r!17423)))))

(declare-fun b!3110975 () Bool)

(declare-fun call!220250 () Bool)

(assert (=> b!3110975 (= e!1943338 call!220250)))

(declare-fun b!3110976 () Bool)

(declare-fun e!1943340 () Bool)

(declare-fun e!1943337 () Bool)

(assert (=> b!3110976 (= e!1943340 e!1943337)))

(declare-fun res!1273658 () Bool)

(assert (=> b!3110976 (=> (not res!1273658) (not e!1943337))))

(declare-fun call!220248 () Bool)

(assert (=> b!3110976 (= res!1273658 call!220248)))

(declare-fun b!3110977 () Bool)

(declare-fun e!1943335 () Bool)

(assert (=> b!3110977 (= e!1943335 call!220248)))

(declare-fun bm!220244 () Bool)

(assert (=> bm!220244 (= call!220250 (validRegex!4326 (ite c!520672 (reg!9922 (regTwo!19699 r!17423)) (ite c!520673 (regTwo!19699 (regTwo!19699 r!17423)) (regOne!19698 (regTwo!19699 r!17423))))))))

(declare-fun b!3110978 () Bool)

(declare-fun res!1273662 () Bool)

(assert (=> b!3110978 (=> res!1273662 e!1943340)))

(assert (=> b!3110978 (= res!1273662 (not ((_ is Concat!14914) (regTwo!19699 r!17423))))))

(declare-fun e!1943341 () Bool)

(assert (=> b!3110978 (= e!1943341 e!1943340)))

(declare-fun b!3110979 () Bool)

(assert (=> b!3110979 (= e!1943337 call!220249)))

(declare-fun b!3110980 () Bool)

(assert (=> b!3110980 (= e!1943339 e!1943341)))

(assert (=> b!3110980 (= c!520673 ((_ is Union!9593) (regTwo!19699 r!17423)))))

(declare-fun bm!220245 () Bool)

(assert (=> bm!220245 (= call!220248 call!220250)))

(declare-fun b!3110981 () Bool)

(declare-fun res!1273660 () Bool)

(assert (=> b!3110981 (=> (not res!1273660) (not e!1943335))))

(assert (=> b!3110981 (= res!1273660 call!220249)))

(assert (=> b!3110981 (= e!1943341 e!1943335)))

(assert (= (and d!861764 (not res!1273659)) b!3110974))

(assert (= (and b!3110974 c!520672) b!3110973))

(assert (= (and b!3110974 (not c!520672)) b!3110980))

(assert (= (and b!3110973 res!1273661) b!3110975))

(assert (= (and b!3110980 c!520673) b!3110981))

(assert (= (and b!3110980 (not c!520673)) b!3110978))

(assert (= (and b!3110981 res!1273660) b!3110977))

(assert (= (and b!3110978 (not res!1273662)) b!3110976))

(assert (= (and b!3110976 res!1273658) b!3110979))

(assert (= (or b!3110981 b!3110979) bm!220243))

(assert (= (or b!3110977 b!3110976) bm!220245))

(assert (= (or b!3110975 bm!220245) bm!220244))

(declare-fun m!3404711 () Bool)

(assert (=> bm!220243 m!3404711))

(declare-fun m!3404713 () Bool)

(assert (=> b!3110973 m!3404713))

(declare-fun m!3404715 () Bool)

(assert (=> bm!220244 m!3404715))

(assert (=> b!3110944 d!861764))

(declare-fun b!3111038 () Bool)

(declare-fun e!1943384 () Int)

(declare-fun e!1943385 () Int)

(assert (=> b!3111038 (= e!1943384 e!1943385)))

(declare-fun c!520698 () Bool)

(assert (=> b!3111038 (= c!520698 ((_ is Star!9593) r!17423))))

(declare-fun bm!220260 () Bool)

(declare-fun call!220269 () Int)

(declare-fun call!220265 () Int)

(assert (=> bm!220260 (= call!220269 call!220265)))

(declare-fun b!3111039 () Bool)

(declare-fun res!1273677 () Bool)

(declare-fun e!1943377 () Bool)

(assert (=> b!3111039 (=> (not res!1273677) (not e!1943377))))

(declare-fun lt!1057445 () Int)

(declare-fun call!220270 () Int)

(assert (=> b!3111039 (= res!1273677 (> lt!1057445 call!220270))))

(declare-fun e!1943379 () Bool)

(assert (=> b!3111039 (= e!1943379 e!1943377)))

(declare-fun b!3111040 () Bool)

(declare-fun e!1943381 () Bool)

(assert (=> b!3111040 (= e!1943381 e!1943379)))

(declare-fun c!520697 () Bool)

(assert (=> b!3111040 (= c!520697 ((_ is Concat!14914) r!17423))))

(declare-fun bm!220262 () Bool)

(declare-fun call!220268 () Int)

(declare-fun call!220271 () Int)

(assert (=> bm!220262 (= call!220268 call!220271)))

(declare-fun b!3111041 () Bool)

(declare-fun e!1943378 () Int)

(declare-fun call!220267 () Int)

(assert (=> b!3111041 (= e!1943378 (+ 1 call!220267))))

(declare-fun b!3111042 () Bool)

(declare-fun e!1943380 () Bool)

(assert (=> b!3111042 (= e!1943380 (= lt!1057445 1))))

(declare-fun b!3111043 () Bool)

(assert (=> b!3111043 (= e!1943385 (+ 1 call!220271))))

(declare-fun b!3111044 () Bool)

(declare-fun e!1943382 () Int)

(assert (=> b!3111044 (= e!1943382 e!1943378)))

(declare-fun c!520701 () Bool)

(assert (=> b!3111044 (= c!520701 ((_ is Concat!14914) r!17423))))

(declare-fun b!3111045 () Bool)

(declare-fun e!1943383 () Bool)

(assert (=> b!3111045 (= e!1943383 (> lt!1057445 call!220265))))

(declare-fun b!3111046 () Bool)

(declare-fun c!520696 () Bool)

(assert (=> b!3111046 (= c!520696 ((_ is Star!9593) r!17423))))

(assert (=> b!3111046 (= e!1943379 e!1943380)))

(declare-fun b!3111047 () Bool)

(assert (=> b!3111047 (= e!1943384 1)))

(declare-fun b!3111048 () Bool)

(declare-fun c!520699 () Bool)

(assert (=> b!3111048 (= c!520699 ((_ is Union!9593) r!17423))))

(assert (=> b!3111048 (= e!1943385 e!1943382)))

(declare-fun b!3111049 () Bool)

(assert (=> b!3111049 (= e!1943377 (> lt!1057445 call!220269))))

(declare-fun bm!220261 () Bool)

(declare-fun call!220266 () Int)

(assert (=> bm!220261 (= call!220266 (regexDepth!115 (ite c!520699 (regOne!19699 r!17423) (regOne!19698 r!17423))))))

(declare-fun d!861766 () Bool)

(declare-fun e!1943376 () Bool)

(assert (=> d!861766 e!1943376))

(declare-fun res!1273675 () Bool)

(assert (=> d!861766 (=> (not res!1273675) (not e!1943376))))

(assert (=> d!861766 (= res!1273675 (> lt!1057445 0))))

(assert (=> d!861766 (= lt!1057445 e!1943384)))

(declare-fun c!520702 () Bool)

(assert (=> d!861766 (= c!520702 ((_ is ElementMatch!9593) r!17423))))

(assert (=> d!861766 (= (regexDepth!115 r!17423) lt!1057445)))

(declare-fun bm!220263 () Bool)

(declare-fun c!520700 () Bool)

(assert (=> bm!220263 (= call!220270 (regexDepth!115 (ite c!520700 (regOne!19699 r!17423) (regOne!19698 r!17423))))))

(declare-fun b!3111050 () Bool)

(assert (=> b!3111050 (= e!1943376 e!1943381)))

(assert (=> b!3111050 (= c!520700 ((_ is Union!9593) r!17423))))

(declare-fun b!3111051 () Bool)

(assert (=> b!3111051 (= e!1943380 (> lt!1057445 call!220269))))

(declare-fun b!3111052 () Bool)

(assert (=> b!3111052 (= e!1943382 (+ 1 call!220267))))

(declare-fun b!3111053 () Bool)

(assert (=> b!3111053 (= e!1943381 e!1943383)))

(declare-fun res!1273676 () Bool)

(assert (=> b!3111053 (= res!1273676 (> lt!1057445 call!220270))))

(assert (=> b!3111053 (=> (not res!1273676) (not e!1943383))))

(declare-fun bm!220264 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!220264 (= call!220267 (maxBigInt!0 call!220266 call!220268))))

(declare-fun bm!220265 () Bool)

(assert (=> bm!220265 (= call!220271 (regexDepth!115 (ite c!520698 (reg!9922 r!17423) (ite c!520699 (regTwo!19699 r!17423) (regTwo!19698 r!17423)))))))

(declare-fun bm!220266 () Bool)

(assert (=> bm!220266 (= call!220265 (regexDepth!115 (ite c!520700 (regTwo!19699 r!17423) (ite c!520697 (regTwo!19698 r!17423) (reg!9922 r!17423)))))))

(declare-fun b!3111054 () Bool)

(assert (=> b!3111054 (= e!1943378 1)))

(assert (= (and d!861766 c!520702) b!3111047))

(assert (= (and d!861766 (not c!520702)) b!3111038))

(assert (= (and b!3111038 c!520698) b!3111043))

(assert (= (and b!3111038 (not c!520698)) b!3111048))

(assert (= (and b!3111048 c!520699) b!3111052))

(assert (= (and b!3111048 (not c!520699)) b!3111044))

(assert (= (and b!3111044 c!520701) b!3111041))

(assert (= (and b!3111044 (not c!520701)) b!3111054))

(assert (= (or b!3111052 b!3111041) bm!220262))

(assert (= (or b!3111052 b!3111041) bm!220261))

(assert (= (or b!3111052 b!3111041) bm!220264))

(assert (= (or b!3111043 bm!220262) bm!220265))

(assert (= (and d!861766 res!1273675) b!3111050))

(assert (= (and b!3111050 c!520700) b!3111053))

(assert (= (and b!3111050 (not c!520700)) b!3111040))

(assert (= (and b!3111053 res!1273676) b!3111045))

(assert (= (and b!3111040 c!520697) b!3111039))

(assert (= (and b!3111040 (not c!520697)) b!3111046))

(assert (= (and b!3111039 res!1273677) b!3111049))

(assert (= (and b!3111046 c!520696) b!3111051))

(assert (= (and b!3111046 (not c!520696)) b!3111042))

(assert (= (or b!3111049 b!3111051) bm!220260))

(assert (= (or b!3111045 bm!220260) bm!220266))

(assert (= (or b!3111053 b!3111039) bm!220263))

(declare-fun m!3404717 () Bool)

(assert (=> bm!220263 m!3404717))

(declare-fun m!3404719 () Bool)

(assert (=> bm!220264 m!3404719))

(declare-fun m!3404721 () Bool)

(assert (=> bm!220265 m!3404721))

(declare-fun m!3404723 () Bool)

(assert (=> bm!220261 m!3404723))

(declare-fun m!3404725 () Bool)

(assert (=> bm!220266 m!3404725))

(assert (=> b!3110941 d!861766))

(declare-fun d!861768 () Bool)

(declare-fun lt!1057448 () Int)

(assert (=> d!861768 (>= lt!1057448 0)))

(declare-fun e!1943388 () Int)

(assert (=> d!861768 (= lt!1057448 e!1943388)))

(declare-fun c!520705 () Bool)

(assert (=> d!861768 (= c!520705 ((_ is Nil!35334) s!11993))))

(assert (=> d!861768 (= (size!26581 s!11993) lt!1057448)))

(declare-fun b!3111059 () Bool)

(assert (=> b!3111059 (= e!1943388 0)))

(declare-fun b!3111060 () Bool)

(assert (=> b!3111060 (= e!1943388 (+ 1 (size!26581 (t!234523 s!11993))))))

(assert (= (and d!861768 c!520705) b!3111059))

(assert (= (and d!861768 (not c!520705)) b!3111060))

(declare-fun m!3404727 () Bool)

(assert (=> b!3111060 m!3404727))

(assert (=> b!3110941 d!861768))

(declare-fun b!3111061 () Bool)

(declare-fun e!1943397 () Int)

(declare-fun e!1943398 () Int)

(assert (=> b!3111061 (= e!1943397 e!1943398)))

(declare-fun c!520708 () Bool)

(assert (=> b!3111061 (= c!520708 ((_ is Star!9593) (regTwo!19699 r!17423)))))

(declare-fun bm!220267 () Bool)

(declare-fun call!220276 () Int)

(declare-fun call!220272 () Int)

(assert (=> bm!220267 (= call!220276 call!220272)))

(declare-fun b!3111062 () Bool)

(declare-fun res!1273680 () Bool)

(declare-fun e!1943390 () Bool)

(assert (=> b!3111062 (=> (not res!1273680) (not e!1943390))))

(declare-fun lt!1057449 () Int)

(declare-fun call!220277 () Int)

(assert (=> b!3111062 (= res!1273680 (> lt!1057449 call!220277))))

(declare-fun e!1943392 () Bool)

(assert (=> b!3111062 (= e!1943392 e!1943390)))

(declare-fun b!3111063 () Bool)

(declare-fun e!1943394 () Bool)

(assert (=> b!3111063 (= e!1943394 e!1943392)))

(declare-fun c!520707 () Bool)

(assert (=> b!3111063 (= c!520707 ((_ is Concat!14914) (regTwo!19699 r!17423)))))

(declare-fun bm!220269 () Bool)

(declare-fun call!220275 () Int)

(declare-fun call!220278 () Int)

(assert (=> bm!220269 (= call!220275 call!220278)))

(declare-fun b!3111064 () Bool)

(declare-fun e!1943391 () Int)

(declare-fun call!220274 () Int)

(assert (=> b!3111064 (= e!1943391 (+ 1 call!220274))))

(declare-fun b!3111065 () Bool)

(declare-fun e!1943393 () Bool)

(assert (=> b!3111065 (= e!1943393 (= lt!1057449 1))))

(declare-fun b!3111066 () Bool)

(assert (=> b!3111066 (= e!1943398 (+ 1 call!220278))))

(declare-fun b!3111067 () Bool)

(declare-fun e!1943395 () Int)

(assert (=> b!3111067 (= e!1943395 e!1943391)))

(declare-fun c!520711 () Bool)

(assert (=> b!3111067 (= c!520711 ((_ is Concat!14914) (regTwo!19699 r!17423)))))

(declare-fun b!3111068 () Bool)

(declare-fun e!1943396 () Bool)

(assert (=> b!3111068 (= e!1943396 (> lt!1057449 call!220272))))

(declare-fun b!3111069 () Bool)

(declare-fun c!520706 () Bool)

(assert (=> b!3111069 (= c!520706 ((_ is Star!9593) (regTwo!19699 r!17423)))))

(assert (=> b!3111069 (= e!1943392 e!1943393)))

(declare-fun b!3111070 () Bool)

(assert (=> b!3111070 (= e!1943397 1)))

(declare-fun b!3111071 () Bool)

(declare-fun c!520709 () Bool)

(assert (=> b!3111071 (= c!520709 ((_ is Union!9593) (regTwo!19699 r!17423)))))

(assert (=> b!3111071 (= e!1943398 e!1943395)))

(declare-fun b!3111072 () Bool)

(assert (=> b!3111072 (= e!1943390 (> lt!1057449 call!220276))))

(declare-fun bm!220268 () Bool)

(declare-fun call!220273 () Int)

(assert (=> bm!220268 (= call!220273 (regexDepth!115 (ite c!520709 (regOne!19699 (regTwo!19699 r!17423)) (regOne!19698 (regTwo!19699 r!17423)))))))

(declare-fun d!861770 () Bool)

(declare-fun e!1943389 () Bool)

(assert (=> d!861770 e!1943389))

(declare-fun res!1273678 () Bool)

(assert (=> d!861770 (=> (not res!1273678) (not e!1943389))))

(assert (=> d!861770 (= res!1273678 (> lt!1057449 0))))

(assert (=> d!861770 (= lt!1057449 e!1943397)))

(declare-fun c!520712 () Bool)

(assert (=> d!861770 (= c!520712 ((_ is ElementMatch!9593) (regTwo!19699 r!17423)))))

(assert (=> d!861770 (= (regexDepth!115 (regTwo!19699 r!17423)) lt!1057449)))

(declare-fun bm!220270 () Bool)

(declare-fun c!520710 () Bool)

(assert (=> bm!220270 (= call!220277 (regexDepth!115 (ite c!520710 (regOne!19699 (regTwo!19699 r!17423)) (regOne!19698 (regTwo!19699 r!17423)))))))

(declare-fun b!3111073 () Bool)

(assert (=> b!3111073 (= e!1943389 e!1943394)))

(assert (=> b!3111073 (= c!520710 ((_ is Union!9593) (regTwo!19699 r!17423)))))

(declare-fun b!3111074 () Bool)

(assert (=> b!3111074 (= e!1943393 (> lt!1057449 call!220276))))

(declare-fun b!3111075 () Bool)

(assert (=> b!3111075 (= e!1943395 (+ 1 call!220274))))

(declare-fun b!3111076 () Bool)

(assert (=> b!3111076 (= e!1943394 e!1943396)))

(declare-fun res!1273679 () Bool)

(assert (=> b!3111076 (= res!1273679 (> lt!1057449 call!220277))))

(assert (=> b!3111076 (=> (not res!1273679) (not e!1943396))))

(declare-fun bm!220271 () Bool)

(assert (=> bm!220271 (= call!220274 (maxBigInt!0 call!220273 call!220275))))

(declare-fun bm!220272 () Bool)

(assert (=> bm!220272 (= call!220278 (regexDepth!115 (ite c!520708 (reg!9922 (regTwo!19699 r!17423)) (ite c!520709 (regTwo!19699 (regTwo!19699 r!17423)) (regTwo!19698 (regTwo!19699 r!17423))))))))

(declare-fun bm!220273 () Bool)

(assert (=> bm!220273 (= call!220272 (regexDepth!115 (ite c!520710 (regTwo!19699 (regTwo!19699 r!17423)) (ite c!520707 (regTwo!19698 (regTwo!19699 r!17423)) (reg!9922 (regTwo!19699 r!17423))))))))

(declare-fun b!3111077 () Bool)

(assert (=> b!3111077 (= e!1943391 1)))

(assert (= (and d!861770 c!520712) b!3111070))

(assert (= (and d!861770 (not c!520712)) b!3111061))

(assert (= (and b!3111061 c!520708) b!3111066))

(assert (= (and b!3111061 (not c!520708)) b!3111071))

(assert (= (and b!3111071 c!520709) b!3111075))

(assert (= (and b!3111071 (not c!520709)) b!3111067))

(assert (= (and b!3111067 c!520711) b!3111064))

(assert (= (and b!3111067 (not c!520711)) b!3111077))

(assert (= (or b!3111075 b!3111064) bm!220269))

(assert (= (or b!3111075 b!3111064) bm!220268))

(assert (= (or b!3111075 b!3111064) bm!220271))

(assert (= (or b!3111066 bm!220269) bm!220272))

(assert (= (and d!861770 res!1273678) b!3111073))

(assert (= (and b!3111073 c!520710) b!3111076))

(assert (= (and b!3111073 (not c!520710)) b!3111063))

(assert (= (and b!3111076 res!1273679) b!3111068))

(assert (= (and b!3111063 c!520707) b!3111062))

(assert (= (and b!3111063 (not c!520707)) b!3111069))

(assert (= (and b!3111062 res!1273680) b!3111072))

(assert (= (and b!3111069 c!520706) b!3111074))

(assert (= (and b!3111069 (not c!520706)) b!3111065))

(assert (= (or b!3111072 b!3111074) bm!220267))

(assert (= (or b!3111068 bm!220267) bm!220273))

(assert (= (or b!3111076 b!3111062) bm!220270))

(declare-fun m!3404729 () Bool)

(assert (=> bm!220270 m!3404729))

(declare-fun m!3404731 () Bool)

(assert (=> bm!220271 m!3404731))

(declare-fun m!3404733 () Bool)

(assert (=> bm!220272 m!3404733))

(declare-fun m!3404735 () Bool)

(assert (=> bm!220268 m!3404735))

(declare-fun m!3404737 () Bool)

(assert (=> bm!220273 m!3404737))

(assert (=> b!3110941 d!861770))

(declare-fun b!3111106 () Bool)

(declare-fun res!1273700 () Bool)

(declare-fun e!1943418 () Bool)

(assert (=> b!3111106 (=> res!1273700 e!1943418)))

(declare-fun isEmpty!19681 (List!35458) Bool)

(declare-fun tail!5115 (List!35458) List!35458)

(assert (=> b!3111106 (= res!1273700 (not (isEmpty!19681 (tail!5115 s!11993))))))

(declare-fun b!3111107 () Bool)

(declare-fun head!6889 (List!35458) C!19372)

(assert (=> b!3111107 (= e!1943418 (not (= (head!6889 s!11993) (c!520665 (Union!9593 lt!1057441 lt!1057436)))))))

(declare-fun e!1943417 () Bool)

(declare-fun b!3111108 () Bool)

(assert (=> b!3111108 (= e!1943417 (= (head!6889 s!11993) (c!520665 (Union!9593 lt!1057441 lt!1057436))))))

(declare-fun b!3111110 () Bool)

(declare-fun e!1943419 () Bool)

(assert (=> b!3111110 (= e!1943419 (nullable!3235 (Union!9593 lt!1057441 lt!1057436)))))

(declare-fun b!3111111 () Bool)

(declare-fun e!1943416 () Bool)

(declare-fun e!1943413 () Bool)

(assert (=> b!3111111 (= e!1943416 e!1943413)))

(declare-fun c!520720 () Bool)

(assert (=> b!3111111 (= c!520720 ((_ is EmptyLang!9593) (Union!9593 lt!1057441 lt!1057436)))))

(declare-fun b!3111112 () Bool)

(declare-fun lt!1057452 () Bool)

(declare-fun call!220281 () Bool)

(assert (=> b!3111112 (= e!1943416 (= lt!1057452 call!220281))))

(declare-fun b!3111113 () Bool)

(declare-fun e!1943414 () Bool)

(assert (=> b!3111113 (= e!1943414 e!1943418)))

(declare-fun res!1273697 () Bool)

(assert (=> b!3111113 (=> res!1273697 e!1943418)))

(assert (=> b!3111113 (= res!1273697 call!220281)))

(declare-fun b!3111114 () Bool)

(assert (=> b!3111114 (= e!1943413 (not lt!1057452))))

(declare-fun b!3111115 () Bool)

(declare-fun derivativeStep!2830 (Regex!9593 C!19372) Regex!9593)

(assert (=> b!3111115 (= e!1943419 (matchR!4475 (derivativeStep!2830 (Union!9593 lt!1057441 lt!1057436) (head!6889 s!11993)) (tail!5115 s!11993)))))

(declare-fun b!3111116 () Bool)

(declare-fun res!1273703 () Bool)

(declare-fun e!1943415 () Bool)

(assert (=> b!3111116 (=> res!1273703 e!1943415)))

(assert (=> b!3111116 (= res!1273703 (not ((_ is ElementMatch!9593) (Union!9593 lt!1057441 lt!1057436))))))

(assert (=> b!3111116 (= e!1943413 e!1943415)))

(declare-fun d!861772 () Bool)

(assert (=> d!861772 e!1943416))

(declare-fun c!520719 () Bool)

(assert (=> d!861772 (= c!520719 ((_ is EmptyExpr!9593) (Union!9593 lt!1057441 lt!1057436)))))

(assert (=> d!861772 (= lt!1057452 e!1943419)))

(declare-fun c!520721 () Bool)

(assert (=> d!861772 (= c!520721 (isEmpty!19681 s!11993))))

(assert (=> d!861772 (validRegex!4326 (Union!9593 lt!1057441 lt!1057436))))

(assert (=> d!861772 (= (matchR!4475 (Union!9593 lt!1057441 lt!1057436) s!11993) lt!1057452)))

(declare-fun b!3111109 () Bool)

(declare-fun res!1273704 () Bool)

(assert (=> b!3111109 (=> res!1273704 e!1943415)))

(assert (=> b!3111109 (= res!1273704 e!1943417)))

(declare-fun res!1273701 () Bool)

(assert (=> b!3111109 (=> (not res!1273701) (not e!1943417))))

(assert (=> b!3111109 (= res!1273701 lt!1057452)))

(declare-fun bm!220276 () Bool)

(assert (=> bm!220276 (= call!220281 (isEmpty!19681 s!11993))))

(declare-fun b!3111117 () Bool)

(declare-fun res!1273699 () Bool)

(assert (=> b!3111117 (=> (not res!1273699) (not e!1943417))))

(assert (=> b!3111117 (= res!1273699 (not call!220281))))

(declare-fun b!3111118 () Bool)

(assert (=> b!3111118 (= e!1943415 e!1943414)))

(declare-fun res!1273702 () Bool)

(assert (=> b!3111118 (=> (not res!1273702) (not e!1943414))))

(assert (=> b!3111118 (= res!1273702 (not lt!1057452))))

(declare-fun b!3111119 () Bool)

(declare-fun res!1273698 () Bool)

(assert (=> b!3111119 (=> (not res!1273698) (not e!1943417))))

(assert (=> b!3111119 (= res!1273698 (isEmpty!19681 (tail!5115 s!11993)))))

(assert (= (and d!861772 c!520721) b!3111110))

(assert (= (and d!861772 (not c!520721)) b!3111115))

(assert (= (and d!861772 c!520719) b!3111112))

(assert (= (and d!861772 (not c!520719)) b!3111111))

(assert (= (and b!3111111 c!520720) b!3111114))

(assert (= (and b!3111111 (not c!520720)) b!3111116))

(assert (= (and b!3111116 (not res!1273703)) b!3111109))

(assert (= (and b!3111109 res!1273701) b!3111117))

(assert (= (and b!3111117 res!1273699) b!3111119))

(assert (= (and b!3111119 res!1273698) b!3111108))

(assert (= (and b!3111109 (not res!1273704)) b!3111118))

(assert (= (and b!3111118 res!1273702) b!3111113))

(assert (= (and b!3111113 (not res!1273697)) b!3111106))

(assert (= (and b!3111106 (not res!1273700)) b!3111107))

(assert (= (or b!3111112 b!3111113 b!3111117) bm!220276))

(declare-fun m!3404739 () Bool)

(assert (=> b!3111110 m!3404739))

(declare-fun m!3404741 () Bool)

(assert (=> b!3111107 m!3404741))

(declare-fun m!3404743 () Bool)

(assert (=> bm!220276 m!3404743))

(declare-fun m!3404745 () Bool)

(assert (=> b!3111119 m!3404745))

(assert (=> b!3111119 m!3404745))

(declare-fun m!3404747 () Bool)

(assert (=> b!3111119 m!3404747))

(assert (=> b!3111115 m!3404741))

(assert (=> b!3111115 m!3404741))

(declare-fun m!3404749 () Bool)

(assert (=> b!3111115 m!3404749))

(assert (=> b!3111115 m!3404745))

(assert (=> b!3111115 m!3404749))

(assert (=> b!3111115 m!3404745))

(declare-fun m!3404751 () Bool)

(assert (=> b!3111115 m!3404751))

(assert (=> b!3111108 m!3404741))

(assert (=> d!861772 m!3404743))

(declare-fun m!3404753 () Bool)

(assert (=> d!861772 m!3404753))

(assert (=> b!3111106 m!3404745))

(assert (=> b!3111106 m!3404745))

(assert (=> b!3111106 m!3404747))

(assert (=> b!3110940 d!861772))

(declare-fun d!861774 () Bool)

(assert (=> d!861774 (= (isEmptyLang!644 lt!1057436) ((_ is EmptyLang!9593) lt!1057436))))

(assert (=> b!3110935 d!861774))

(declare-fun d!861776 () Bool)

(assert (=> d!861776 (= (isEmptyLang!644 lt!1057441) ((_ is EmptyLang!9593) lt!1057441))))

(assert (=> b!3110942 d!861776))

(declare-fun b!3111171 () Bool)

(declare-fun c!520753 () Bool)

(declare-fun e!1943453 () Bool)

(assert (=> b!3111171 (= c!520753 e!1943453)))

(declare-fun res!1273713 () Bool)

(assert (=> b!3111171 (=> res!1273713 e!1943453)))

(declare-fun call!220301 () Bool)

(assert (=> b!3111171 (= res!1273713 call!220301)))

(declare-fun lt!1057468 () Regex!9593)

(declare-fun call!220300 () Regex!9593)

(assert (=> b!3111171 (= lt!1057468 call!220300)))

(declare-fun e!1943457 () Regex!9593)

(declare-fun e!1943458 () Regex!9593)

(assert (=> b!3111171 (= e!1943457 e!1943458)))

(declare-fun bm!220291 () Bool)

(declare-fun call!220297 () Regex!9593)

(declare-fun c!520751 () Bool)

(assert (=> bm!220291 (= call!220297 (simplify!548 (ite c!520751 (regOne!19699 (regTwo!19699 r!17423)) (regTwo!19698 (regTwo!19699 r!17423)))))))

(declare-fun b!3111172 () Bool)

(declare-fun call!220299 () Bool)

(assert (=> b!3111172 (= e!1943453 call!220299)))

(declare-fun b!3111173 () Bool)

(declare-fun e!1943448 () Regex!9593)

(assert (=> b!3111173 (= e!1943448 EmptyExpr!9593)))

(declare-fun b!3111174 () Bool)

(assert (=> b!3111174 (= e!1943448 e!1943457)))

(declare-fun c!520744 () Bool)

(assert (=> b!3111174 (= c!520744 ((_ is Star!9593) (regTwo!19699 r!17423)))))

(declare-fun bm!220292 () Bool)

(declare-fun call!220302 () Regex!9593)

(assert (=> bm!220292 (= call!220302 call!220300)))

(declare-fun d!861778 () Bool)

(declare-fun e!1943449 () Bool)

(assert (=> d!861778 e!1943449))

(declare-fun res!1273711 () Bool)

(assert (=> d!861778 (=> (not res!1273711) (not e!1943449))))

(declare-fun lt!1057469 () Regex!9593)

(assert (=> d!861778 (= res!1273711 (validRegex!4326 lt!1057469))))

(declare-fun e!1943456 () Regex!9593)

(assert (=> d!861778 (= lt!1057469 e!1943456)))

(declare-fun c!520754 () Bool)

(assert (=> d!861778 (= c!520754 ((_ is EmptyLang!9593) (regTwo!19699 r!17423)))))

(assert (=> d!861778 (validRegex!4326 (regTwo!19699 r!17423))))

(assert (=> d!861778 (= (simplify!548 (regTwo!19699 r!17423)) lt!1057469)))

(declare-fun b!3111170 () Bool)

(declare-fun e!1943452 () Regex!9593)

(declare-fun lt!1057467 () Regex!9593)

(assert (=> b!3111170 (= e!1943452 lt!1057467)))

(declare-fun b!3111175 () Bool)

(declare-fun e!1943461 () Regex!9593)

(assert (=> b!3111175 (= e!1943456 e!1943461)))

(declare-fun c!520752 () Bool)

(assert (=> b!3111175 (= c!520752 ((_ is ElementMatch!9593) (regTwo!19699 r!17423)))))

(declare-fun b!3111176 () Bool)

(assert (=> b!3111176 (= c!520751 ((_ is Union!9593) (regTwo!19699 r!17423)))))

(declare-fun e!1943450 () Regex!9593)

(assert (=> b!3111176 (= e!1943457 e!1943450)))

(declare-fun b!3111177 () Bool)

(declare-fun e!1943451 () Regex!9593)

(assert (=> b!3111177 (= e!1943451 EmptyLang!9593)))

(declare-fun b!3111178 () Bool)

(declare-fun c!520745 () Bool)

(declare-fun lt!1057465 () Regex!9593)

(declare-fun isEmptyExpr!646 (Regex!9593) Bool)

(assert (=> b!3111178 (= c!520745 (isEmptyExpr!646 lt!1057465))))

(declare-fun e!1943455 () Regex!9593)

(assert (=> b!3111178 (= e!1943451 e!1943455)))

(declare-fun b!3111179 () Bool)

(declare-fun lt!1057470 () Regex!9593)

(assert (=> b!3111179 (= e!1943455 lt!1057470)))

(declare-fun b!3111180 () Bool)

(declare-fun lt!1057466 () Regex!9593)

(assert (=> b!3111180 (= e!1943452 (Union!9593 lt!1057467 lt!1057466))))

(declare-fun b!3111181 () Bool)

(assert (=> b!3111181 (= e!1943458 EmptyExpr!9593)))

(declare-fun b!3111182 () Bool)

(assert (=> b!3111182 (= e!1943449 (= (nullable!3235 lt!1057469) (nullable!3235 (regTwo!19699 r!17423))))))

(declare-fun b!3111183 () Bool)

(declare-fun e!1943454 () Regex!9593)

(assert (=> b!3111183 (= e!1943454 (Concat!14914 lt!1057465 lt!1057470))))

(declare-fun b!3111184 () Bool)

(declare-fun c!520749 () Bool)

(declare-fun call!220296 () Bool)

(assert (=> b!3111184 (= c!520749 call!220296)))

(declare-fun e!1943459 () Regex!9593)

(assert (=> b!3111184 (= e!1943459 e!1943452)))

(declare-fun b!3111185 () Bool)

(assert (=> b!3111185 (= e!1943450 e!1943459)))

(assert (=> b!3111185 (= lt!1057467 call!220297)))

(assert (=> b!3111185 (= lt!1057466 call!220302)))

(declare-fun c!520747 () Bool)

(declare-fun call!220298 () Bool)

(assert (=> b!3111185 (= c!520747 call!220298)))

(declare-fun bm!220293 () Bool)

(assert (=> bm!220293 (= call!220300 (simplify!548 (ite c!520744 (reg!9922 (regTwo!19699 r!17423)) (ite c!520751 (regTwo!19699 (regTwo!19699 r!17423)) (regOne!19698 (regTwo!19699 r!17423))))))))

(declare-fun b!3111186 () Bool)

(declare-fun e!1943460 () Bool)

(assert (=> b!3111186 (= e!1943460 call!220298)))

(declare-fun bm!220294 () Bool)

(assert (=> bm!220294 (= call!220298 (isEmptyLang!644 (ite c!520751 lt!1057467 lt!1057470)))))

(declare-fun b!3111187 () Bool)

(assert (=> b!3111187 (= e!1943459 lt!1057466)))

(declare-fun b!3111188 () Bool)

(declare-fun c!520750 () Bool)

(assert (=> b!3111188 (= c!520750 ((_ is EmptyExpr!9593) (regTwo!19699 r!17423)))))

(assert (=> b!3111188 (= e!1943461 e!1943448)))

(declare-fun bm!220295 () Bool)

(assert (=> bm!220295 (= call!220299 (isEmptyExpr!646 (ite c!520744 lt!1057468 lt!1057470)))))

(declare-fun b!3111189 () Bool)

(assert (=> b!3111189 (= e!1943454 lt!1057465)))

(declare-fun b!3111190 () Bool)

(assert (=> b!3111190 (= e!1943455 e!1943454)))

(declare-fun c!520748 () Bool)

(assert (=> b!3111190 (= c!520748 call!220299)))

(declare-fun b!3111191 () Bool)

(assert (=> b!3111191 (= e!1943456 EmptyLang!9593)))

(declare-fun b!3111192 () Bool)

(assert (=> b!3111192 (= e!1943461 (regTwo!19699 r!17423))))

(declare-fun b!3111193 () Bool)

(assert (=> b!3111193 (= e!1943450 e!1943451)))

(assert (=> b!3111193 (= lt!1057465 call!220302)))

(assert (=> b!3111193 (= lt!1057470 call!220297)))

(declare-fun res!1273712 () Bool)

(assert (=> b!3111193 (= res!1273712 call!220296)))

(assert (=> b!3111193 (=> res!1273712 e!1943460)))

(declare-fun c!520746 () Bool)

(assert (=> b!3111193 (= c!520746 e!1943460)))

(declare-fun bm!220296 () Bool)

(assert (=> bm!220296 (= call!220301 (isEmptyLang!644 (ite c!520744 lt!1057468 (ite c!520751 lt!1057466 lt!1057465))))))

(declare-fun bm!220297 () Bool)

(assert (=> bm!220297 (= call!220296 call!220301)))

(declare-fun b!3111194 () Bool)

(assert (=> b!3111194 (= e!1943458 (Star!9593 lt!1057468))))

(assert (= (and d!861778 c!520754) b!3111191))

(assert (= (and d!861778 (not c!520754)) b!3111175))

(assert (= (and b!3111175 c!520752) b!3111192))

(assert (= (and b!3111175 (not c!520752)) b!3111188))

(assert (= (and b!3111188 c!520750) b!3111173))

(assert (= (and b!3111188 (not c!520750)) b!3111174))

(assert (= (and b!3111174 c!520744) b!3111171))

(assert (= (and b!3111174 (not c!520744)) b!3111176))

(assert (= (and b!3111171 (not res!1273713)) b!3111172))

(assert (= (and b!3111171 c!520753) b!3111181))

(assert (= (and b!3111171 (not c!520753)) b!3111194))

(assert (= (and b!3111176 c!520751) b!3111185))

(assert (= (and b!3111176 (not c!520751)) b!3111193))

(assert (= (and b!3111185 c!520747) b!3111187))

(assert (= (and b!3111185 (not c!520747)) b!3111184))

(assert (= (and b!3111184 c!520749) b!3111170))

(assert (= (and b!3111184 (not c!520749)) b!3111180))

(assert (= (and b!3111193 (not res!1273712)) b!3111186))

(assert (= (and b!3111193 c!520746) b!3111177))

(assert (= (and b!3111193 (not c!520746)) b!3111178))

(assert (= (and b!3111178 c!520745) b!3111179))

(assert (= (and b!3111178 (not c!520745)) b!3111190))

(assert (= (and b!3111190 c!520748) b!3111189))

(assert (= (and b!3111190 (not c!520748)) b!3111183))

(assert (= (or b!3111185 b!3111193) bm!220291))

(assert (= (or b!3111185 b!3111193) bm!220292))

(assert (= (or b!3111184 b!3111193) bm!220297))

(assert (= (or b!3111185 b!3111186) bm!220294))

(assert (= (or b!3111172 b!3111190) bm!220295))

(assert (= (or b!3111171 bm!220292) bm!220293))

(assert (= (or b!3111171 bm!220297) bm!220296))

(assert (= (and d!861778 res!1273711) b!3111182))

(declare-fun m!3404755 () Bool)

(assert (=> bm!220294 m!3404755))

(declare-fun m!3404757 () Bool)

(assert (=> b!3111182 m!3404757))

(declare-fun m!3404759 () Bool)

(assert (=> b!3111182 m!3404759))

(declare-fun m!3404761 () Bool)

(assert (=> b!3111178 m!3404761))

(declare-fun m!3404763 () Bool)

(assert (=> d!861778 m!3404763))

(assert (=> d!861778 m!3404673))

(declare-fun m!3404765 () Bool)

(assert (=> bm!220296 m!3404765))

(declare-fun m!3404767 () Bool)

(assert (=> bm!220295 m!3404767))

(declare-fun m!3404769 () Bool)

(assert (=> bm!220291 m!3404769))

(declare-fun m!3404771 () Bool)

(assert (=> bm!220293 m!3404771))

(assert (=> b!3110942 d!861778))

(declare-fun b!3111196 () Bool)

(declare-fun c!520764 () Bool)

(declare-fun e!1943467 () Bool)

(assert (=> b!3111196 (= c!520764 e!1943467)))

(declare-fun res!1273716 () Bool)

(assert (=> b!3111196 (=> res!1273716 e!1943467)))

(declare-fun call!220308 () Bool)

(assert (=> b!3111196 (= res!1273716 call!220308)))

(declare-fun lt!1057474 () Regex!9593)

(declare-fun call!220307 () Regex!9593)

(assert (=> b!3111196 (= lt!1057474 call!220307)))

(declare-fun e!1943471 () Regex!9593)

(declare-fun e!1943472 () Regex!9593)

(assert (=> b!3111196 (= e!1943471 e!1943472)))

(declare-fun bm!220298 () Bool)

(declare-fun call!220304 () Regex!9593)

(declare-fun c!520762 () Bool)

(assert (=> bm!220298 (= call!220304 (simplify!548 (ite c!520762 (regOne!19699 (regOne!19699 r!17423)) (regTwo!19698 (regOne!19699 r!17423)))))))

(declare-fun b!3111197 () Bool)

(declare-fun call!220306 () Bool)

(assert (=> b!3111197 (= e!1943467 call!220306)))

(declare-fun b!3111198 () Bool)

(declare-fun e!1943462 () Regex!9593)

(assert (=> b!3111198 (= e!1943462 EmptyExpr!9593)))

(declare-fun b!3111199 () Bool)

(assert (=> b!3111199 (= e!1943462 e!1943471)))

(declare-fun c!520755 () Bool)

(assert (=> b!3111199 (= c!520755 ((_ is Star!9593) (regOne!19699 r!17423)))))

(declare-fun bm!220299 () Bool)

(declare-fun call!220309 () Regex!9593)

(assert (=> bm!220299 (= call!220309 call!220307)))

(declare-fun d!861780 () Bool)

(declare-fun e!1943463 () Bool)

(assert (=> d!861780 e!1943463))

(declare-fun res!1273714 () Bool)

(assert (=> d!861780 (=> (not res!1273714) (not e!1943463))))

(declare-fun lt!1057475 () Regex!9593)

(assert (=> d!861780 (= res!1273714 (validRegex!4326 lt!1057475))))

(declare-fun e!1943470 () Regex!9593)

(assert (=> d!861780 (= lt!1057475 e!1943470)))

(declare-fun c!520765 () Bool)

(assert (=> d!861780 (= c!520765 ((_ is EmptyLang!9593) (regOne!19699 r!17423)))))

(assert (=> d!861780 (validRegex!4326 (regOne!19699 r!17423))))

(assert (=> d!861780 (= (simplify!548 (regOne!19699 r!17423)) lt!1057475)))

(declare-fun b!3111195 () Bool)

(declare-fun e!1943466 () Regex!9593)

(declare-fun lt!1057473 () Regex!9593)

(assert (=> b!3111195 (= e!1943466 lt!1057473)))

(declare-fun b!3111200 () Bool)

(declare-fun e!1943475 () Regex!9593)

(assert (=> b!3111200 (= e!1943470 e!1943475)))

(declare-fun c!520763 () Bool)

(assert (=> b!3111200 (= c!520763 ((_ is ElementMatch!9593) (regOne!19699 r!17423)))))

(declare-fun b!3111201 () Bool)

(assert (=> b!3111201 (= c!520762 ((_ is Union!9593) (regOne!19699 r!17423)))))

(declare-fun e!1943464 () Regex!9593)

(assert (=> b!3111201 (= e!1943471 e!1943464)))

(declare-fun b!3111202 () Bool)

(declare-fun e!1943465 () Regex!9593)

(assert (=> b!3111202 (= e!1943465 EmptyLang!9593)))

(declare-fun b!3111203 () Bool)

(declare-fun c!520756 () Bool)

(declare-fun lt!1057471 () Regex!9593)

(assert (=> b!3111203 (= c!520756 (isEmptyExpr!646 lt!1057471))))

(declare-fun e!1943469 () Regex!9593)

(assert (=> b!3111203 (= e!1943465 e!1943469)))

(declare-fun b!3111204 () Bool)

(declare-fun lt!1057476 () Regex!9593)

(assert (=> b!3111204 (= e!1943469 lt!1057476)))

(declare-fun b!3111205 () Bool)

(declare-fun lt!1057472 () Regex!9593)

(assert (=> b!3111205 (= e!1943466 (Union!9593 lt!1057473 lt!1057472))))

(declare-fun b!3111206 () Bool)

(assert (=> b!3111206 (= e!1943472 EmptyExpr!9593)))

(declare-fun b!3111207 () Bool)

(assert (=> b!3111207 (= e!1943463 (= (nullable!3235 lt!1057475) (nullable!3235 (regOne!19699 r!17423))))))

(declare-fun b!3111208 () Bool)

(declare-fun e!1943468 () Regex!9593)

(assert (=> b!3111208 (= e!1943468 (Concat!14914 lt!1057471 lt!1057476))))

(declare-fun b!3111209 () Bool)

(declare-fun c!520760 () Bool)

(declare-fun call!220303 () Bool)

(assert (=> b!3111209 (= c!520760 call!220303)))

(declare-fun e!1943473 () Regex!9593)

(assert (=> b!3111209 (= e!1943473 e!1943466)))

(declare-fun b!3111210 () Bool)

(assert (=> b!3111210 (= e!1943464 e!1943473)))

(assert (=> b!3111210 (= lt!1057473 call!220304)))

(assert (=> b!3111210 (= lt!1057472 call!220309)))

(declare-fun c!520758 () Bool)

(declare-fun call!220305 () Bool)

(assert (=> b!3111210 (= c!520758 call!220305)))

(declare-fun bm!220300 () Bool)

(assert (=> bm!220300 (= call!220307 (simplify!548 (ite c!520755 (reg!9922 (regOne!19699 r!17423)) (ite c!520762 (regTwo!19699 (regOne!19699 r!17423)) (regOne!19698 (regOne!19699 r!17423))))))))

(declare-fun b!3111211 () Bool)

(declare-fun e!1943474 () Bool)

(assert (=> b!3111211 (= e!1943474 call!220305)))

(declare-fun bm!220301 () Bool)

(assert (=> bm!220301 (= call!220305 (isEmptyLang!644 (ite c!520762 lt!1057473 lt!1057476)))))

(declare-fun b!3111212 () Bool)

(assert (=> b!3111212 (= e!1943473 lt!1057472)))

(declare-fun b!3111213 () Bool)

(declare-fun c!520761 () Bool)

(assert (=> b!3111213 (= c!520761 ((_ is EmptyExpr!9593) (regOne!19699 r!17423)))))

(assert (=> b!3111213 (= e!1943475 e!1943462)))

(declare-fun bm!220302 () Bool)

(assert (=> bm!220302 (= call!220306 (isEmptyExpr!646 (ite c!520755 lt!1057474 lt!1057476)))))

(declare-fun b!3111214 () Bool)

(assert (=> b!3111214 (= e!1943468 lt!1057471)))

(declare-fun b!3111215 () Bool)

(assert (=> b!3111215 (= e!1943469 e!1943468)))

(declare-fun c!520759 () Bool)

(assert (=> b!3111215 (= c!520759 call!220306)))

(declare-fun b!3111216 () Bool)

(assert (=> b!3111216 (= e!1943470 EmptyLang!9593)))

(declare-fun b!3111217 () Bool)

(assert (=> b!3111217 (= e!1943475 (regOne!19699 r!17423))))

(declare-fun b!3111218 () Bool)

(assert (=> b!3111218 (= e!1943464 e!1943465)))

(assert (=> b!3111218 (= lt!1057471 call!220309)))

(assert (=> b!3111218 (= lt!1057476 call!220304)))

(declare-fun res!1273715 () Bool)

(assert (=> b!3111218 (= res!1273715 call!220303)))

(assert (=> b!3111218 (=> res!1273715 e!1943474)))

(declare-fun c!520757 () Bool)

(assert (=> b!3111218 (= c!520757 e!1943474)))

(declare-fun bm!220303 () Bool)

(assert (=> bm!220303 (= call!220308 (isEmptyLang!644 (ite c!520755 lt!1057474 (ite c!520762 lt!1057472 lt!1057471))))))

(declare-fun bm!220304 () Bool)

(assert (=> bm!220304 (= call!220303 call!220308)))

(declare-fun b!3111219 () Bool)

(assert (=> b!3111219 (= e!1943472 (Star!9593 lt!1057474))))

(assert (= (and d!861780 c!520765) b!3111216))

(assert (= (and d!861780 (not c!520765)) b!3111200))

(assert (= (and b!3111200 c!520763) b!3111217))

(assert (= (and b!3111200 (not c!520763)) b!3111213))

(assert (= (and b!3111213 c!520761) b!3111198))

(assert (= (and b!3111213 (not c!520761)) b!3111199))

(assert (= (and b!3111199 c!520755) b!3111196))

(assert (= (and b!3111199 (not c!520755)) b!3111201))

(assert (= (and b!3111196 (not res!1273716)) b!3111197))

(assert (= (and b!3111196 c!520764) b!3111206))

(assert (= (and b!3111196 (not c!520764)) b!3111219))

(assert (= (and b!3111201 c!520762) b!3111210))

(assert (= (and b!3111201 (not c!520762)) b!3111218))

(assert (= (and b!3111210 c!520758) b!3111212))

(assert (= (and b!3111210 (not c!520758)) b!3111209))

(assert (= (and b!3111209 c!520760) b!3111195))

(assert (= (and b!3111209 (not c!520760)) b!3111205))

(assert (= (and b!3111218 (not res!1273715)) b!3111211))

(assert (= (and b!3111218 c!520757) b!3111202))

(assert (= (and b!3111218 (not c!520757)) b!3111203))

(assert (= (and b!3111203 c!520756) b!3111204))

(assert (= (and b!3111203 (not c!520756)) b!3111215))

(assert (= (and b!3111215 c!520759) b!3111214))

(assert (= (and b!3111215 (not c!520759)) b!3111208))

(assert (= (or b!3111210 b!3111218) bm!220298))

(assert (= (or b!3111210 b!3111218) bm!220299))

(assert (= (or b!3111209 b!3111218) bm!220304))

(assert (= (or b!3111210 b!3111211) bm!220301))

(assert (= (or b!3111197 b!3111215) bm!220302))

(assert (= (or b!3111196 bm!220299) bm!220300))

(assert (= (or b!3111196 bm!220304) bm!220303))

(assert (= (and d!861780 res!1273714) b!3111207))

(declare-fun m!3404773 () Bool)

(assert (=> bm!220301 m!3404773))

(declare-fun m!3404775 () Bool)

(assert (=> b!3111207 m!3404775))

(declare-fun m!3404777 () Bool)

(assert (=> b!3111207 m!3404777))

(declare-fun m!3404779 () Bool)

(assert (=> b!3111203 m!3404779))

(declare-fun m!3404781 () Bool)

(assert (=> d!861780 m!3404781))

(declare-fun m!3404783 () Bool)

(assert (=> d!861780 m!3404783))

(declare-fun m!3404785 () Bool)

(assert (=> bm!220303 m!3404785))

(declare-fun m!3404787 () Bool)

(assert (=> bm!220302 m!3404787))

(declare-fun m!3404789 () Bool)

(assert (=> bm!220298 m!3404789))

(declare-fun m!3404791 () Bool)

(assert (=> bm!220300 m!3404791))

(assert (=> b!3110942 d!861780))

(declare-fun b!3111612 () Bool)

(assert (=> b!3111612 true))

(assert (=> b!3111612 true))

(declare-fun bs!535792 () Bool)

(declare-fun b!3111616 () Bool)

(assert (= bs!535792 (and b!3111616 b!3111612)))

(declare-fun lambda!115060 () Int)

(declare-fun lambda!115059 () Int)

(assert (=> bs!535792 (not (= lambda!115060 lambda!115059))))

(assert (=> b!3111616 true))

(assert (=> b!3111616 true))

(declare-fun e!1943693 () Bool)

(declare-fun call!220395 () Bool)

(assert (=> b!3111612 (= e!1943693 call!220395)))

(declare-fun c!520881 () Bool)

(declare-fun bm!220389 () Bool)

(declare-fun Exists!1851 (Int) Bool)

(assert (=> bm!220389 (= call!220395 (Exists!1851 (ite c!520881 lambda!115059 lambda!115060)))))

(declare-fun b!3111613 () Bool)

(declare-fun c!520879 () Bool)

(assert (=> b!3111613 (= c!520879 ((_ is ElementMatch!9593) r!17423))))

(declare-fun e!1943695 () Bool)

(declare-fun e!1943696 () Bool)

(assert (=> b!3111613 (= e!1943695 e!1943696)))

(declare-fun d!861782 () Bool)

(declare-fun c!520882 () Bool)

(assert (=> d!861782 (= c!520882 ((_ is EmptyExpr!9593) r!17423))))

(declare-fun e!1943694 () Bool)

(assert (=> d!861782 (= (matchRSpec!1730 r!17423 s!11993) e!1943694)))

(declare-fun b!3111614 () Bool)

(declare-fun e!1943692 () Bool)

(assert (=> b!3111614 (= e!1943692 (matchRSpec!1730 (regTwo!19699 r!17423) s!11993))))

(declare-fun b!3111615 () Bool)

(assert (=> b!3111615 (= e!1943694 e!1943695)))

(declare-fun res!1273846 () Bool)

(assert (=> b!3111615 (= res!1273846 (not ((_ is EmptyLang!9593) r!17423)))))

(assert (=> b!3111615 (=> (not res!1273846) (not e!1943695))))

(declare-fun e!1943691 () Bool)

(assert (=> b!3111616 (= e!1943691 call!220395)))

(declare-fun b!3111617 () Bool)

(declare-fun call!220394 () Bool)

(assert (=> b!3111617 (= e!1943694 call!220394)))

(declare-fun b!3111618 () Bool)

(declare-fun c!520880 () Bool)

(assert (=> b!3111618 (= c!520880 ((_ is Union!9593) r!17423))))

(declare-fun e!1943690 () Bool)

(assert (=> b!3111618 (= e!1943696 e!1943690)))

(declare-fun b!3111619 () Bool)

(assert (=> b!3111619 (= e!1943690 e!1943691)))

(assert (=> b!3111619 (= c!520881 ((_ is Star!9593) r!17423))))

(declare-fun b!3111620 () Bool)

(assert (=> b!3111620 (= e!1943696 (= s!11993 (Cons!35334 (c!520665 r!17423) Nil!35334)))))

(declare-fun b!3111621 () Bool)

(declare-fun res!1273845 () Bool)

(assert (=> b!3111621 (=> res!1273845 e!1943693)))

(assert (=> b!3111621 (= res!1273845 call!220394)))

(assert (=> b!3111621 (= e!1943691 e!1943693)))

(declare-fun b!3111622 () Bool)

(assert (=> b!3111622 (= e!1943690 e!1943692)))

(declare-fun res!1273844 () Bool)

(assert (=> b!3111622 (= res!1273844 (matchRSpec!1730 (regOne!19699 r!17423) s!11993))))

(assert (=> b!3111622 (=> res!1273844 e!1943692)))

(declare-fun bm!220390 () Bool)

(assert (=> bm!220390 (= call!220394 (isEmpty!19681 s!11993))))

(assert (= (and d!861782 c!520882) b!3111617))

(assert (= (and d!861782 (not c!520882)) b!3111615))

(assert (= (and b!3111615 res!1273846) b!3111613))

(assert (= (and b!3111613 c!520879) b!3111620))

(assert (= (and b!3111613 (not c!520879)) b!3111618))

(assert (= (and b!3111618 c!520880) b!3111622))

(assert (= (and b!3111618 (not c!520880)) b!3111619))

(assert (= (and b!3111622 (not res!1273844)) b!3111614))

(assert (= (and b!3111619 c!520881) b!3111621))

(assert (= (and b!3111619 (not c!520881)) b!3111616))

(assert (= (and b!3111621 (not res!1273845)) b!3111612))

(assert (= (or b!3111612 b!3111616) bm!220389))

(assert (= (or b!3111617 b!3111621) bm!220390))

(declare-fun m!3404913 () Bool)

(assert (=> bm!220389 m!3404913))

(declare-fun m!3404915 () Bool)

(assert (=> b!3111614 m!3404915))

(declare-fun m!3404917 () Bool)

(assert (=> b!3111622 m!3404917))

(assert (=> bm!220390 m!3404743))

(assert (=> b!3110937 d!861782))

(declare-fun b!3111627 () Bool)

(declare-fun res!1273850 () Bool)

(declare-fun e!1943702 () Bool)

(assert (=> b!3111627 (=> res!1273850 e!1943702)))

(assert (=> b!3111627 (= res!1273850 (not (isEmpty!19681 (tail!5115 s!11993))))))

(declare-fun b!3111628 () Bool)

(assert (=> b!3111628 (= e!1943702 (not (= (head!6889 s!11993) (c!520665 r!17423))))))

(declare-fun b!3111629 () Bool)

(declare-fun e!1943701 () Bool)

(assert (=> b!3111629 (= e!1943701 (= (head!6889 s!11993) (c!520665 r!17423)))))

(declare-fun b!3111631 () Bool)

(declare-fun e!1943703 () Bool)

(assert (=> b!3111631 (= e!1943703 (nullable!3235 r!17423))))

(declare-fun b!3111632 () Bool)

(declare-fun e!1943700 () Bool)

(declare-fun e!1943697 () Bool)

(assert (=> b!3111632 (= e!1943700 e!1943697)))

(declare-fun c!520884 () Bool)

(assert (=> b!3111632 (= c!520884 ((_ is EmptyLang!9593) r!17423))))

(declare-fun b!3111633 () Bool)

(declare-fun lt!1057520 () Bool)

(declare-fun call!220396 () Bool)

(assert (=> b!3111633 (= e!1943700 (= lt!1057520 call!220396))))

(declare-fun b!3111634 () Bool)

(declare-fun e!1943698 () Bool)

(assert (=> b!3111634 (= e!1943698 e!1943702)))

(declare-fun res!1273847 () Bool)

(assert (=> b!3111634 (=> res!1273847 e!1943702)))

(assert (=> b!3111634 (= res!1273847 call!220396)))

(declare-fun b!3111635 () Bool)

(assert (=> b!3111635 (= e!1943697 (not lt!1057520))))

(declare-fun b!3111636 () Bool)

(assert (=> b!3111636 (= e!1943703 (matchR!4475 (derivativeStep!2830 r!17423 (head!6889 s!11993)) (tail!5115 s!11993)))))

(declare-fun b!3111637 () Bool)

(declare-fun res!1273853 () Bool)

(declare-fun e!1943699 () Bool)

(assert (=> b!3111637 (=> res!1273853 e!1943699)))

(assert (=> b!3111637 (= res!1273853 (not ((_ is ElementMatch!9593) r!17423)))))

(assert (=> b!3111637 (= e!1943697 e!1943699)))

(declare-fun d!861814 () Bool)

(assert (=> d!861814 e!1943700))

(declare-fun c!520883 () Bool)

(assert (=> d!861814 (= c!520883 ((_ is EmptyExpr!9593) r!17423))))

(assert (=> d!861814 (= lt!1057520 e!1943703)))

(declare-fun c!520885 () Bool)

(assert (=> d!861814 (= c!520885 (isEmpty!19681 s!11993))))

(assert (=> d!861814 (validRegex!4326 r!17423)))

(assert (=> d!861814 (= (matchR!4475 r!17423 s!11993) lt!1057520)))

(declare-fun b!3111630 () Bool)

(declare-fun res!1273854 () Bool)

(assert (=> b!3111630 (=> res!1273854 e!1943699)))

(assert (=> b!3111630 (= res!1273854 e!1943701)))

(declare-fun res!1273851 () Bool)

(assert (=> b!3111630 (=> (not res!1273851) (not e!1943701))))

(assert (=> b!3111630 (= res!1273851 lt!1057520)))

(declare-fun bm!220391 () Bool)

(assert (=> bm!220391 (= call!220396 (isEmpty!19681 s!11993))))

(declare-fun b!3111638 () Bool)

(declare-fun res!1273849 () Bool)

(assert (=> b!3111638 (=> (not res!1273849) (not e!1943701))))

(assert (=> b!3111638 (= res!1273849 (not call!220396))))

(declare-fun b!3111639 () Bool)

(assert (=> b!3111639 (= e!1943699 e!1943698)))

(declare-fun res!1273852 () Bool)

(assert (=> b!3111639 (=> (not res!1273852) (not e!1943698))))

(assert (=> b!3111639 (= res!1273852 (not lt!1057520))))

(declare-fun b!3111640 () Bool)

(declare-fun res!1273848 () Bool)

(assert (=> b!3111640 (=> (not res!1273848) (not e!1943701))))

(assert (=> b!3111640 (= res!1273848 (isEmpty!19681 (tail!5115 s!11993)))))

(assert (= (and d!861814 c!520885) b!3111631))

(assert (= (and d!861814 (not c!520885)) b!3111636))

(assert (= (and d!861814 c!520883) b!3111633))

(assert (= (and d!861814 (not c!520883)) b!3111632))

(assert (= (and b!3111632 c!520884) b!3111635))

(assert (= (and b!3111632 (not c!520884)) b!3111637))

(assert (= (and b!3111637 (not res!1273853)) b!3111630))

(assert (= (and b!3111630 res!1273851) b!3111638))

(assert (= (and b!3111638 res!1273849) b!3111640))

(assert (= (and b!3111640 res!1273848) b!3111629))

(assert (= (and b!3111630 (not res!1273854)) b!3111639))

(assert (= (and b!3111639 res!1273852) b!3111634))

(assert (= (and b!3111634 (not res!1273847)) b!3111627))

(assert (= (and b!3111627 (not res!1273850)) b!3111628))

(assert (= (or b!3111633 b!3111634 b!3111638) bm!220391))

(declare-fun m!3404919 () Bool)

(assert (=> b!3111631 m!3404919))

(assert (=> b!3111628 m!3404741))

(assert (=> bm!220391 m!3404743))

(assert (=> b!3111640 m!3404745))

(assert (=> b!3111640 m!3404745))

(assert (=> b!3111640 m!3404747))

(assert (=> b!3111636 m!3404741))

(assert (=> b!3111636 m!3404741))

(declare-fun m!3404921 () Bool)

(assert (=> b!3111636 m!3404921))

(assert (=> b!3111636 m!3404745))

(assert (=> b!3111636 m!3404921))

(assert (=> b!3111636 m!3404745))

(declare-fun m!3404923 () Bool)

(assert (=> b!3111636 m!3404923))

(assert (=> b!3111629 m!3404741))

(assert (=> d!861814 m!3404743))

(assert (=> d!861814 m!3404691))

(assert (=> b!3111627 m!3404745))

(assert (=> b!3111627 m!3404745))

(assert (=> b!3111627 m!3404747))

(assert (=> b!3110937 d!861814))

(declare-fun d!861816 () Bool)

(assert (=> d!861816 (= (matchR!4475 r!17423 s!11993) (matchRSpec!1730 r!17423 s!11993))))

(declare-fun lt!1057523 () Unit!49625)

(declare-fun choose!18401 (Regex!9593 List!35458) Unit!49625)

(assert (=> d!861816 (= lt!1057523 (choose!18401 r!17423 s!11993))))

(assert (=> d!861816 (validRegex!4326 r!17423)))

(assert (=> d!861816 (= (mainMatchTheorem!1730 r!17423 s!11993) lt!1057523)))

(declare-fun bs!535793 () Bool)

(assert (= bs!535793 d!861816))

(assert (=> bs!535793 m!3404697))

(assert (=> bs!535793 m!3404695))

(declare-fun m!3404925 () Bool)

(assert (=> bs!535793 m!3404925))

(assert (=> bs!535793 m!3404691))

(assert (=> b!3110937 d!861816))

(declare-fun b!3111641 () Bool)

(declare-fun res!1273858 () Bool)

(declare-fun e!1943709 () Bool)

(assert (=> b!3111641 (=> res!1273858 e!1943709)))

(assert (=> b!3111641 (= res!1273858 (not (isEmpty!19681 (tail!5115 s!11993))))))

(declare-fun b!3111642 () Bool)

(assert (=> b!3111642 (= e!1943709 (not (= (head!6889 s!11993) (c!520665 lt!1057441))))))

(declare-fun b!3111643 () Bool)

(declare-fun e!1943708 () Bool)

(assert (=> b!3111643 (= e!1943708 (= (head!6889 s!11993) (c!520665 lt!1057441)))))

(declare-fun b!3111645 () Bool)

(declare-fun e!1943710 () Bool)

(assert (=> b!3111645 (= e!1943710 (nullable!3235 lt!1057441))))

(declare-fun b!3111646 () Bool)

(declare-fun e!1943707 () Bool)

(declare-fun e!1943704 () Bool)

(assert (=> b!3111646 (= e!1943707 e!1943704)))

(declare-fun c!520887 () Bool)

(assert (=> b!3111646 (= c!520887 ((_ is EmptyLang!9593) lt!1057441))))

(declare-fun b!3111647 () Bool)

(declare-fun lt!1057524 () Bool)

(declare-fun call!220397 () Bool)

(assert (=> b!3111647 (= e!1943707 (= lt!1057524 call!220397))))

(declare-fun b!3111648 () Bool)

(declare-fun e!1943705 () Bool)

(assert (=> b!3111648 (= e!1943705 e!1943709)))

(declare-fun res!1273855 () Bool)

(assert (=> b!3111648 (=> res!1273855 e!1943709)))

(assert (=> b!3111648 (= res!1273855 call!220397)))

(declare-fun b!3111649 () Bool)

(assert (=> b!3111649 (= e!1943704 (not lt!1057524))))

(declare-fun b!3111650 () Bool)

(assert (=> b!3111650 (= e!1943710 (matchR!4475 (derivativeStep!2830 lt!1057441 (head!6889 s!11993)) (tail!5115 s!11993)))))

(declare-fun b!3111651 () Bool)

(declare-fun res!1273861 () Bool)

(declare-fun e!1943706 () Bool)

(assert (=> b!3111651 (=> res!1273861 e!1943706)))

(assert (=> b!3111651 (= res!1273861 (not ((_ is ElementMatch!9593) lt!1057441)))))

(assert (=> b!3111651 (= e!1943704 e!1943706)))

(declare-fun d!861818 () Bool)

(assert (=> d!861818 e!1943707))

(declare-fun c!520886 () Bool)

(assert (=> d!861818 (= c!520886 ((_ is EmptyExpr!9593) lt!1057441))))

(assert (=> d!861818 (= lt!1057524 e!1943710)))

(declare-fun c!520888 () Bool)

(assert (=> d!861818 (= c!520888 (isEmpty!19681 s!11993))))

(assert (=> d!861818 (validRegex!4326 lt!1057441)))

(assert (=> d!861818 (= (matchR!4475 lt!1057441 s!11993) lt!1057524)))

(declare-fun b!3111644 () Bool)

(declare-fun res!1273862 () Bool)

(assert (=> b!3111644 (=> res!1273862 e!1943706)))

(assert (=> b!3111644 (= res!1273862 e!1943708)))

(declare-fun res!1273859 () Bool)

(assert (=> b!3111644 (=> (not res!1273859) (not e!1943708))))

(assert (=> b!3111644 (= res!1273859 lt!1057524)))

(declare-fun bm!220392 () Bool)

(assert (=> bm!220392 (= call!220397 (isEmpty!19681 s!11993))))

(declare-fun b!3111652 () Bool)

(declare-fun res!1273857 () Bool)

(assert (=> b!3111652 (=> (not res!1273857) (not e!1943708))))

(assert (=> b!3111652 (= res!1273857 (not call!220397))))

(declare-fun b!3111653 () Bool)

(assert (=> b!3111653 (= e!1943706 e!1943705)))

(declare-fun res!1273860 () Bool)

(assert (=> b!3111653 (=> (not res!1273860) (not e!1943705))))

(assert (=> b!3111653 (= res!1273860 (not lt!1057524))))

(declare-fun b!3111654 () Bool)

(declare-fun res!1273856 () Bool)

(assert (=> b!3111654 (=> (not res!1273856) (not e!1943708))))

(assert (=> b!3111654 (= res!1273856 (isEmpty!19681 (tail!5115 s!11993)))))

(assert (= (and d!861818 c!520888) b!3111645))

(assert (= (and d!861818 (not c!520888)) b!3111650))

(assert (= (and d!861818 c!520886) b!3111647))

(assert (= (and d!861818 (not c!520886)) b!3111646))

(assert (= (and b!3111646 c!520887) b!3111649))

(assert (= (and b!3111646 (not c!520887)) b!3111651))

(assert (= (and b!3111651 (not res!1273861)) b!3111644))

(assert (= (and b!3111644 res!1273859) b!3111652))

(assert (= (and b!3111652 res!1273857) b!3111654))

(assert (= (and b!3111654 res!1273856) b!3111643))

(assert (= (and b!3111644 (not res!1273862)) b!3111653))

(assert (= (and b!3111653 res!1273860) b!3111648))

(assert (= (and b!3111648 (not res!1273855)) b!3111641))

(assert (= (and b!3111641 (not res!1273858)) b!3111642))

(assert (= (or b!3111647 b!3111648 b!3111652) bm!220392))

(declare-fun m!3404927 () Bool)

(assert (=> b!3111645 m!3404927))

(assert (=> b!3111642 m!3404741))

(assert (=> bm!220392 m!3404743))

(assert (=> b!3111654 m!3404745))

(assert (=> b!3111654 m!3404745))

(assert (=> b!3111654 m!3404747))

(assert (=> b!3111650 m!3404741))

(assert (=> b!3111650 m!3404741))

(declare-fun m!3404929 () Bool)

(assert (=> b!3111650 m!3404929))

(assert (=> b!3111650 m!3404745))

(assert (=> b!3111650 m!3404929))

(assert (=> b!3111650 m!3404745))

(declare-fun m!3404931 () Bool)

(assert (=> b!3111650 m!3404931))

(assert (=> b!3111643 m!3404741))

(assert (=> d!861818 m!3404743))

(declare-fun m!3404933 () Bool)

(assert (=> d!861818 m!3404933))

(assert (=> b!3111641 m!3404745))

(assert (=> b!3111641 m!3404745))

(assert (=> b!3111641 m!3404747))

(assert (=> b!3110936 d!861818))

(declare-fun d!861820 () Bool)

(declare-fun e!1943715 () Bool)

(assert (=> d!861820 e!1943715))

(declare-fun res!1273867 () Bool)

(assert (=> d!861820 (=> res!1273867 e!1943715)))

(assert (=> d!861820 (= res!1273867 (matchR!4475 lt!1057441 s!11993))))

(declare-fun lt!1057527 () Unit!49625)

(declare-fun choose!18402 (Regex!9593 Regex!9593 List!35458) Unit!49625)

(assert (=> d!861820 (= lt!1057527 (choose!18402 lt!1057441 lt!1057436 s!11993))))

(declare-fun e!1943716 () Bool)

(assert (=> d!861820 e!1943716))

(declare-fun res!1273868 () Bool)

(assert (=> d!861820 (=> (not res!1273868) (not e!1943716))))

(assert (=> d!861820 (= res!1273868 (validRegex!4326 lt!1057441))))

(assert (=> d!861820 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!324 lt!1057441 lt!1057436 s!11993) lt!1057527)))

(declare-fun b!3111659 () Bool)

(assert (=> b!3111659 (= e!1943716 (validRegex!4326 lt!1057436))))

(declare-fun b!3111660 () Bool)

(assert (=> b!3111660 (= e!1943715 (matchR!4475 lt!1057436 s!11993))))

(assert (= (and d!861820 res!1273868) b!3111659))

(assert (= (and d!861820 (not res!1273867)) b!3111660))

(assert (=> d!861820 m!3404701))

(declare-fun m!3404935 () Bool)

(assert (=> d!861820 m!3404935))

(assert (=> d!861820 m!3404933))

(declare-fun m!3404937 () Bool)

(assert (=> b!3111659 m!3404937))

(assert (=> b!3111660 m!3404687))

(assert (=> b!3110936 d!861820))

(declare-fun b!3111661 () Bool)

(declare-fun res!1273872 () Bool)

(declare-fun e!1943722 () Bool)

(assert (=> b!3111661 (=> res!1273872 e!1943722)))

(assert (=> b!3111661 (= res!1273872 (not (isEmpty!19681 (tail!5115 s!11993))))))

(declare-fun b!3111662 () Bool)

(assert (=> b!3111662 (= e!1943722 (not (= (head!6889 s!11993) (c!520665 lt!1057436))))))

(declare-fun b!3111663 () Bool)

(declare-fun e!1943721 () Bool)

(assert (=> b!3111663 (= e!1943721 (= (head!6889 s!11993) (c!520665 lt!1057436)))))

(declare-fun b!3111665 () Bool)

(declare-fun e!1943723 () Bool)

(assert (=> b!3111665 (= e!1943723 (nullable!3235 lt!1057436))))

(declare-fun b!3111666 () Bool)

(declare-fun e!1943720 () Bool)

(declare-fun e!1943717 () Bool)

(assert (=> b!3111666 (= e!1943720 e!1943717)))

(declare-fun c!520890 () Bool)

(assert (=> b!3111666 (= c!520890 ((_ is EmptyLang!9593) lt!1057436))))

(declare-fun b!3111667 () Bool)

(declare-fun lt!1057528 () Bool)

(declare-fun call!220398 () Bool)

(assert (=> b!3111667 (= e!1943720 (= lt!1057528 call!220398))))

(declare-fun b!3111668 () Bool)

(declare-fun e!1943718 () Bool)

(assert (=> b!3111668 (= e!1943718 e!1943722)))

(declare-fun res!1273869 () Bool)

(assert (=> b!3111668 (=> res!1273869 e!1943722)))

(assert (=> b!3111668 (= res!1273869 call!220398)))

(declare-fun b!3111669 () Bool)

(assert (=> b!3111669 (= e!1943717 (not lt!1057528))))

(declare-fun b!3111670 () Bool)

(assert (=> b!3111670 (= e!1943723 (matchR!4475 (derivativeStep!2830 lt!1057436 (head!6889 s!11993)) (tail!5115 s!11993)))))

(declare-fun b!3111671 () Bool)

(declare-fun res!1273875 () Bool)

(declare-fun e!1943719 () Bool)

(assert (=> b!3111671 (=> res!1273875 e!1943719)))

(assert (=> b!3111671 (= res!1273875 (not ((_ is ElementMatch!9593) lt!1057436)))))

(assert (=> b!3111671 (= e!1943717 e!1943719)))

(declare-fun d!861822 () Bool)

(assert (=> d!861822 e!1943720))

(declare-fun c!520889 () Bool)

(assert (=> d!861822 (= c!520889 ((_ is EmptyExpr!9593) lt!1057436))))

(assert (=> d!861822 (= lt!1057528 e!1943723)))

(declare-fun c!520891 () Bool)

(assert (=> d!861822 (= c!520891 (isEmpty!19681 s!11993))))

(assert (=> d!861822 (validRegex!4326 lt!1057436)))

(assert (=> d!861822 (= (matchR!4475 lt!1057436 s!11993) lt!1057528)))

(declare-fun b!3111664 () Bool)

(declare-fun res!1273876 () Bool)

(assert (=> b!3111664 (=> res!1273876 e!1943719)))

(assert (=> b!3111664 (= res!1273876 e!1943721)))

(declare-fun res!1273873 () Bool)

(assert (=> b!3111664 (=> (not res!1273873) (not e!1943721))))

(assert (=> b!3111664 (= res!1273873 lt!1057528)))

(declare-fun bm!220393 () Bool)

(assert (=> bm!220393 (= call!220398 (isEmpty!19681 s!11993))))

(declare-fun b!3111672 () Bool)

(declare-fun res!1273871 () Bool)

(assert (=> b!3111672 (=> (not res!1273871) (not e!1943721))))

(assert (=> b!3111672 (= res!1273871 (not call!220398))))

(declare-fun b!3111673 () Bool)

(assert (=> b!3111673 (= e!1943719 e!1943718)))

(declare-fun res!1273874 () Bool)

(assert (=> b!3111673 (=> (not res!1273874) (not e!1943718))))

(assert (=> b!3111673 (= res!1273874 (not lt!1057528))))

(declare-fun b!3111674 () Bool)

(declare-fun res!1273870 () Bool)

(assert (=> b!3111674 (=> (not res!1273870) (not e!1943721))))

(assert (=> b!3111674 (= res!1273870 (isEmpty!19681 (tail!5115 s!11993)))))

(assert (= (and d!861822 c!520891) b!3111665))

(assert (= (and d!861822 (not c!520891)) b!3111670))

(assert (= (and d!861822 c!520889) b!3111667))

(assert (= (and d!861822 (not c!520889)) b!3111666))

(assert (= (and b!3111666 c!520890) b!3111669))

(assert (= (and b!3111666 (not c!520890)) b!3111671))

(assert (= (and b!3111671 (not res!1273875)) b!3111664))

(assert (= (and b!3111664 res!1273873) b!3111672))

(assert (= (and b!3111672 res!1273871) b!3111674))

(assert (= (and b!3111674 res!1273870) b!3111663))

(assert (= (and b!3111664 (not res!1273876)) b!3111673))

(assert (= (and b!3111673 res!1273874) b!3111668))

(assert (= (and b!3111668 (not res!1273869)) b!3111661))

(assert (= (and b!3111661 (not res!1273872)) b!3111662))

(assert (= (or b!3111667 b!3111668 b!3111672) bm!220393))

(declare-fun m!3404939 () Bool)

(assert (=> b!3111665 m!3404939))

(assert (=> b!3111662 m!3404741))

(assert (=> bm!220393 m!3404743))

(assert (=> b!3111674 m!3404745))

(assert (=> b!3111674 m!3404745))

(assert (=> b!3111674 m!3404747))

(assert (=> b!3111670 m!3404741))

(assert (=> b!3111670 m!3404741))

(declare-fun m!3404941 () Bool)

(assert (=> b!3111670 m!3404941))

(assert (=> b!3111670 m!3404745))

(assert (=> b!3111670 m!3404941))

(assert (=> b!3111670 m!3404745))

(declare-fun m!3404943 () Bool)

(assert (=> b!3111670 m!3404943))

(assert (=> b!3111663 m!3404741))

(assert (=> d!861822 m!3404743))

(assert (=> d!861822 m!3404937))

(assert (=> b!3111661 m!3404745))

(assert (=> b!3111661 m!3404745))

(assert (=> b!3111661 m!3404747))

(assert (=> b!3110933 d!861822))

(declare-fun e!1943726 () Bool)

(assert (=> b!3110934 (= tp!976370 e!1943726)))

(declare-fun b!3111688 () Bool)

(declare-fun tp!976422 () Bool)

(declare-fun tp!976426 () Bool)

(assert (=> b!3111688 (= e!1943726 (and tp!976422 tp!976426))))

(declare-fun b!3111687 () Bool)

(declare-fun tp!976425 () Bool)

(assert (=> b!3111687 (= e!1943726 tp!976425)))

(declare-fun b!3111685 () Bool)

(assert (=> b!3111685 (= e!1943726 tp_is_empty!16749)))

(declare-fun b!3111686 () Bool)

(declare-fun tp!976423 () Bool)

(declare-fun tp!976424 () Bool)

(assert (=> b!3111686 (= e!1943726 (and tp!976423 tp!976424))))

(assert (= (and b!3110934 ((_ is ElementMatch!9593) (regOne!19698 r!17423))) b!3111685))

(assert (= (and b!3110934 ((_ is Concat!14914) (regOne!19698 r!17423))) b!3111686))

(assert (= (and b!3110934 ((_ is Star!9593) (regOne!19698 r!17423))) b!3111687))

(assert (= (and b!3110934 ((_ is Union!9593) (regOne!19698 r!17423))) b!3111688))

(declare-fun e!1943727 () Bool)

(assert (=> b!3110934 (= tp!976369 e!1943727)))

(declare-fun b!3111692 () Bool)

(declare-fun tp!976427 () Bool)

(declare-fun tp!976431 () Bool)

(assert (=> b!3111692 (= e!1943727 (and tp!976427 tp!976431))))

(declare-fun b!3111691 () Bool)

(declare-fun tp!976430 () Bool)

(assert (=> b!3111691 (= e!1943727 tp!976430)))

(declare-fun b!3111689 () Bool)

(assert (=> b!3111689 (= e!1943727 tp_is_empty!16749)))

(declare-fun b!3111690 () Bool)

(declare-fun tp!976428 () Bool)

(declare-fun tp!976429 () Bool)

(assert (=> b!3111690 (= e!1943727 (and tp!976428 tp!976429))))

(assert (= (and b!3110934 ((_ is ElementMatch!9593) (regTwo!19698 r!17423))) b!3111689))

(assert (= (and b!3110934 ((_ is Concat!14914) (regTwo!19698 r!17423))) b!3111690))

(assert (= (and b!3110934 ((_ is Star!9593) (regTwo!19698 r!17423))) b!3111691))

(assert (= (and b!3110934 ((_ is Union!9593) (regTwo!19698 r!17423))) b!3111692))

(declare-fun e!1943728 () Bool)

(assert (=> b!3110945 (= tp!976372 e!1943728)))

(declare-fun b!3111696 () Bool)

(declare-fun tp!976432 () Bool)

(declare-fun tp!976436 () Bool)

(assert (=> b!3111696 (= e!1943728 (and tp!976432 tp!976436))))

(declare-fun b!3111695 () Bool)

(declare-fun tp!976435 () Bool)

(assert (=> b!3111695 (= e!1943728 tp!976435)))

(declare-fun b!3111693 () Bool)

(assert (=> b!3111693 (= e!1943728 tp_is_empty!16749)))

(declare-fun b!3111694 () Bool)

(declare-fun tp!976433 () Bool)

(declare-fun tp!976434 () Bool)

(assert (=> b!3111694 (= e!1943728 (and tp!976433 tp!976434))))

(assert (= (and b!3110945 ((_ is ElementMatch!9593) (regOne!19699 r!17423))) b!3111693))

(assert (= (and b!3110945 ((_ is Concat!14914) (regOne!19699 r!17423))) b!3111694))

(assert (= (and b!3110945 ((_ is Star!9593) (regOne!19699 r!17423))) b!3111695))

(assert (= (and b!3110945 ((_ is Union!9593) (regOne!19699 r!17423))) b!3111696))

(declare-fun e!1943729 () Bool)

(assert (=> b!3110945 (= tp!976368 e!1943729)))

(declare-fun b!3111700 () Bool)

(declare-fun tp!976437 () Bool)

(declare-fun tp!976441 () Bool)

(assert (=> b!3111700 (= e!1943729 (and tp!976437 tp!976441))))

(declare-fun b!3111699 () Bool)

(declare-fun tp!976440 () Bool)

(assert (=> b!3111699 (= e!1943729 tp!976440)))

(declare-fun b!3111697 () Bool)

(assert (=> b!3111697 (= e!1943729 tp_is_empty!16749)))

(declare-fun b!3111698 () Bool)

(declare-fun tp!976438 () Bool)

(declare-fun tp!976439 () Bool)

(assert (=> b!3111698 (= e!1943729 (and tp!976438 tp!976439))))

(assert (= (and b!3110945 ((_ is ElementMatch!9593) (regTwo!19699 r!17423))) b!3111697))

(assert (= (and b!3110945 ((_ is Concat!14914) (regTwo!19699 r!17423))) b!3111698))

(assert (= (and b!3110945 ((_ is Star!9593) (regTwo!19699 r!17423))) b!3111699))

(assert (= (and b!3110945 ((_ is Union!9593) (regTwo!19699 r!17423))) b!3111700))

(declare-fun b!3111705 () Bool)

(declare-fun e!1943732 () Bool)

(declare-fun tp!976444 () Bool)

(assert (=> b!3111705 (= e!1943732 (and tp_is_empty!16749 tp!976444))))

(assert (=> b!3110939 (= tp!976373 e!1943732)))

(assert (= (and b!3110939 ((_ is Cons!35334) (t!234523 s!11993))) b!3111705))

(declare-fun e!1943733 () Bool)

(assert (=> b!3110943 (= tp!976371 e!1943733)))

(declare-fun b!3111709 () Bool)

(declare-fun tp!976445 () Bool)

(declare-fun tp!976449 () Bool)

(assert (=> b!3111709 (= e!1943733 (and tp!976445 tp!976449))))

(declare-fun b!3111708 () Bool)

(declare-fun tp!976448 () Bool)

(assert (=> b!3111708 (= e!1943733 tp!976448)))

(declare-fun b!3111706 () Bool)

(assert (=> b!3111706 (= e!1943733 tp_is_empty!16749)))

(declare-fun b!3111707 () Bool)

(declare-fun tp!976446 () Bool)

(declare-fun tp!976447 () Bool)

(assert (=> b!3111707 (= e!1943733 (and tp!976446 tp!976447))))

(assert (= (and b!3110943 ((_ is ElementMatch!9593) (reg!9922 r!17423))) b!3111706))

(assert (= (and b!3110943 ((_ is Concat!14914) (reg!9922 r!17423))) b!3111707))

(assert (= (and b!3110943 ((_ is Star!9593) (reg!9922 r!17423))) b!3111708))

(assert (= (and b!3110943 ((_ is Union!9593) (reg!9922 r!17423))) b!3111709))

(check-sat (not bm!220301) (not b!3111060) (not d!861822) (not bm!220244) (not bm!220272) (not b!3111694) (not b!3111119) (not b!3111692) (not b!3111659) (not bm!220241) (not b!3111203) (not bm!220296) (not b!3111707) (not bm!220270) (not d!861820) (not b!3111690) tp_is_empty!16749 (not d!861814) (not b!3111178) (not b!3110973) (not bm!220265) (not bm!220303) (not bm!220243) (not b!3111641) (not bm!220293) (not d!861778) (not bm!220300) (not b!3111654) (not bm!220393) (not b!3111106) (not bm!220266) (not b!3111674) (not b!3111115) (not b!3111182) (not b!3111627) (not b!3111207) (not b!3111110) (not b!3111709) (not bm!220294) (not bm!220268) (not bm!220392) (not d!861780) (not b!3111640) (not bm!220261) (not b!3111695) (not bm!220389) (not b!3111691) (not b!3111705) (not b!3110964) (not bm!220271) (not bm!220240) (not b!3111662) (not b!3111645) (not b!3111650) (not b!3111696) (not bm!220273) (not bm!220302) (not b!3111661) (not d!861818) (not bm!220298) (not b!3111631) (not b!3111665) (not b!3111614) (not bm!220295) (not b!3111698) (not b!3111629) (not b!3111663) (not bm!220291) (not b!3111660) (not b!3111688) (not bm!220391) (not b!3111108) (not bm!220276) (not b!3111686) (not d!861772) (not b!3111642) (not bm!220263) (not b!3111107) (not b!3111622) (not b!3111636) (not b!3111708) (not d!861816) (not bm!220390) (not bm!220264) (not b!3111643) (not b!3111670) (not b!3111699) (not b!3111628) (not b!3111700) (not b!3111687))
(check-sat)
