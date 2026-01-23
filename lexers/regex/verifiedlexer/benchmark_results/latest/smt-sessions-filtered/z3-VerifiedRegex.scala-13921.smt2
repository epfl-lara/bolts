; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739104 () Bool)

(assert start!739104)

(declare-fun b!7755384 () Bool)

(declare-fun res!3092021 () Bool)

(declare-fun e!4597065 () Bool)

(assert (=> b!7755384 (=> (not res!3092021) (not e!4597065))))

(declare-datatypes ((C!41600 0))(
  ( (C!41601 (val!31240 Int)) )
))
(declare-datatypes ((Regex!20637 0))(
  ( (ElementMatch!20637 (c!1430298 C!41600)) (Concat!29482 (regOne!41786 Regex!20637) (regTwo!41786 Regex!20637)) (EmptyExpr!20637) (Star!20637 (reg!20966 Regex!20637)) (EmptyLang!20637) (Union!20637 (regOne!41787 Regex!20637) (regTwo!41787 Regex!20637)) )
))
(declare-fun r2!6187 () Regex!20637)

(declare-datatypes ((List!73482 0))(
  ( (Nil!73358) (Cons!73358 (h!79806 C!41600) (t!388217 List!73482)) )
))
(declare-fun s2!3712 () List!73482)

(declare-fun matchR!10121 (Regex!20637 List!73482) Bool)

(assert (=> b!7755384 (= res!3092021 (matchR!10121 r2!6187 s2!3712))))

(declare-fun b!7755385 () Bool)

(declare-fun e!4597062 () Bool)

(declare-fun tp!2275928 () Bool)

(assert (=> b!7755385 (= e!4597062 tp!2275928)))

(declare-fun b!7755386 () Bool)

(declare-fun e!4597064 () Bool)

(declare-fun tp_is_empty!51629 () Bool)

(declare-fun tp!2275935 () Bool)

(assert (=> b!7755386 (= e!4597064 (and tp_is_empty!51629 tp!2275935))))

(declare-fun b!7755387 () Bool)

(declare-fun e!4597059 () Bool)

(declare-fun e!4597061 () Bool)

(assert (=> b!7755387 (= e!4597059 e!4597061)))

(declare-fun res!3092023 () Bool)

(assert (=> b!7755387 (=> (not res!3092023) (not e!4597061))))

(declare-fun s!14266 () List!73482)

(declare-fun lt!2669733 () List!73482)

(assert (=> b!7755387 (= res!3092023 (= s!14266 lt!2669733))))

(declare-fun s1!4090 () List!73482)

(declare-fun ++!17818 (List!73482 List!73482) List!73482)

(assert (=> b!7755387 (= lt!2669733 (++!17818 s1!4090 s2!3712))))

(declare-fun b!7755389 () Bool)

(assert (=> b!7755389 (= e!4597062 tp_is_empty!51629)))

(declare-fun b!7755390 () Bool)

(declare-fun res!3092022 () Bool)

(assert (=> b!7755390 (=> (not res!3092022) (not e!4597059))))

(declare-fun validRegex!11055 (Regex!20637) Bool)

(assert (=> b!7755390 (= res!3092022 (validRegex!11055 r2!6187))))

(declare-fun b!7755391 () Bool)

(declare-fun e!4597060 () Bool)

(assert (=> b!7755391 (= e!4597060 tp_is_empty!51629)))

(declare-fun b!7755392 () Bool)

(declare-fun e!4597063 () Bool)

(declare-fun tp!2275923 () Bool)

(assert (=> b!7755392 (= e!4597063 (and tp_is_empty!51629 tp!2275923))))

(declare-fun b!7755393 () Bool)

(declare-fun tp!2275929 () Bool)

(declare-fun tp!2275924 () Bool)

(assert (=> b!7755393 (= e!4597062 (and tp!2275929 tp!2275924))))

(declare-fun b!7755394 () Bool)

(declare-fun res!3092024 () Bool)

(assert (=> b!7755394 (=> (not res!3092024) (not e!4597065))))

(declare-fun r1!6249 () Regex!20637)

(assert (=> b!7755394 (= res!3092024 (matchR!10121 r1!6249 s1!4090))))

(declare-fun b!7755395 () Bool)

(declare-fun tp!2275932 () Bool)

(declare-fun tp!2275927 () Bool)

(assert (=> b!7755395 (= e!4597062 (and tp!2275932 tp!2275927))))

(declare-fun b!7755396 () Bool)

(assert (=> b!7755396 (= e!4597061 e!4597065)))

(declare-fun res!3092018 () Bool)

(assert (=> b!7755396 (=> (not res!3092018) (not e!4597065))))

(declare-datatypes ((tuple2!69668 0))(
  ( (tuple2!69669 (_1!38137 List!73482) (_2!38137 List!73482)) )
))
(declare-datatypes ((Option!17628 0))(
  ( (None!17627) (Some!17627 (v!54762 tuple2!69668)) )
))
(declare-fun lt!2669735 () Option!17628)

(declare-fun isDefined!14242 (Option!17628) Bool)

(assert (=> b!7755396 (= res!3092018 (isDefined!14242 lt!2669735))))

(declare-fun findConcatSeparation!3658 (Regex!20637 Regex!20637 List!73482 List!73482 List!73482) Option!17628)

(assert (=> b!7755396 (= lt!2669735 (findConcatSeparation!3658 r1!6249 r2!6187 Nil!73358 s!14266 s!14266))))

(declare-fun b!7755388 () Bool)

(declare-fun tp!2275933 () Bool)

(declare-fun tp!2275930 () Bool)

(assert (=> b!7755388 (= e!4597060 (and tp!2275933 tp!2275930))))

(declare-fun res!3092020 () Bool)

(assert (=> start!739104 (=> (not res!3092020) (not e!4597059))))

(assert (=> start!739104 (= res!3092020 (validRegex!11055 r1!6249))))

(assert (=> start!739104 e!4597059))

(declare-fun e!4597058 () Bool)

(assert (=> start!739104 e!4597058))

(assert (=> start!739104 e!4597063))

(assert (=> start!739104 e!4597064))

(assert (=> start!739104 e!4597062))

(assert (=> start!739104 e!4597060))

(declare-fun b!7755397 () Bool)

(declare-fun lt!2669736 () Regex!20637)

(assert (=> b!7755397 (= e!4597065 (not (validRegex!11055 lt!2669736)))))

(assert (=> b!7755397 (matchR!10121 lt!2669736 lt!2669733)))

(assert (=> b!7755397 (= lt!2669736 (Concat!29482 r1!6249 r2!6187))))

(declare-datatypes ((Unit!168338 0))(
  ( (Unit!168339) )
))
(declare-fun lt!2669734 () Unit!168338)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!416 (Regex!20637 Regex!20637 List!73482 List!73482) Unit!168338)

(assert (=> b!7755397 (= lt!2669734 (lemmaTwoRegexMatchThenConcatMatchesConcatString!416 r1!6249 r2!6187 s1!4090 s2!3712))))

(declare-fun b!7755398 () Bool)

(declare-fun tp!2275931 () Bool)

(declare-fun tp!2275925 () Bool)

(assert (=> b!7755398 (= e!4597060 (and tp!2275931 tp!2275925))))

(declare-fun b!7755399 () Bool)

(declare-fun res!3092019 () Bool)

(assert (=> b!7755399 (=> (not res!3092019) (not e!4597065))))

(declare-fun get!26114 (Option!17628) tuple2!69668)

(assert (=> b!7755399 (= res!3092019 (= (get!26114 lt!2669735) (tuple2!69669 s1!4090 s2!3712)))))

(declare-fun b!7755400 () Bool)

(declare-fun tp!2275934 () Bool)

(assert (=> b!7755400 (= e!4597060 tp!2275934)))

(declare-fun b!7755401 () Bool)

(declare-fun tp!2275926 () Bool)

(assert (=> b!7755401 (= e!4597058 (and tp_is_empty!51629 tp!2275926))))

(assert (= (and start!739104 res!3092020) b!7755390))

(assert (= (and b!7755390 res!3092022) b!7755387))

(assert (= (and b!7755387 res!3092023) b!7755396))

(assert (= (and b!7755396 res!3092018) b!7755399))

(assert (= (and b!7755399 res!3092019) b!7755394))

(assert (= (and b!7755394 res!3092024) b!7755384))

(assert (= (and b!7755384 res!3092021) b!7755397))

(get-info :version)

(assert (= (and start!739104 ((_ is Cons!73358) s!14266)) b!7755401))

(assert (= (and start!739104 ((_ is Cons!73358) s2!3712)) b!7755392))

(assert (= (and start!739104 ((_ is Cons!73358) s1!4090)) b!7755386))

(assert (= (and start!739104 ((_ is ElementMatch!20637) r1!6249)) b!7755389))

(assert (= (and start!739104 ((_ is Concat!29482) r1!6249)) b!7755393))

(assert (= (and start!739104 ((_ is Star!20637) r1!6249)) b!7755385))

(assert (= (and start!739104 ((_ is Union!20637) r1!6249)) b!7755395))

(assert (= (and start!739104 ((_ is ElementMatch!20637) r2!6187)) b!7755391))

(assert (= (and start!739104 ((_ is Concat!29482) r2!6187)) b!7755388))

(assert (= (and start!739104 ((_ is Star!20637) r2!6187)) b!7755400))

(assert (= (and start!739104 ((_ is Union!20637) r2!6187)) b!7755398))

(declare-fun m!8218684 () Bool)

(assert (=> b!7755384 m!8218684))

(declare-fun m!8218686 () Bool)

(assert (=> b!7755390 m!8218686))

(declare-fun m!8218688 () Bool)

(assert (=> b!7755399 m!8218688))

(declare-fun m!8218690 () Bool)

(assert (=> b!7755394 m!8218690))

(declare-fun m!8218692 () Bool)

(assert (=> start!739104 m!8218692))

(declare-fun m!8218694 () Bool)

(assert (=> b!7755387 m!8218694))

(declare-fun m!8218696 () Bool)

(assert (=> b!7755397 m!8218696))

(declare-fun m!8218698 () Bool)

(assert (=> b!7755397 m!8218698))

(declare-fun m!8218700 () Bool)

(assert (=> b!7755397 m!8218700))

(declare-fun m!8218702 () Bool)

(assert (=> b!7755396 m!8218702))

(declare-fun m!8218704 () Bool)

(assert (=> b!7755396 m!8218704))

(check-sat (not b!7755386) (not b!7755387) (not b!7755400) (not b!7755394) (not b!7755390) (not b!7755398) (not b!7755388) (not start!739104) (not b!7755392) (not b!7755397) (not b!7755384) (not b!7755401) (not b!7755395) (not b!7755396) (not b!7755399) tp_is_empty!51629 (not b!7755393) (not b!7755385))
(check-sat)
(get-model)

(declare-fun b!7755438 () Bool)

(declare-fun e!4597095 () Bool)

(declare-fun e!4597094 () Bool)

(assert (=> b!7755438 (= e!4597095 e!4597094)))

(declare-fun c!1430307 () Bool)

(assert (=> b!7755438 (= c!1430307 ((_ is Union!20637) lt!2669736))))

(declare-fun b!7755439 () Bool)

(declare-fun e!4597096 () Bool)

(declare-fun e!4597099 () Bool)

(assert (=> b!7755439 (= e!4597096 e!4597099)))

(declare-fun res!3092047 () Bool)

(assert (=> b!7755439 (=> (not res!3092047) (not e!4597099))))

(declare-fun call!718912 () Bool)

(assert (=> b!7755439 (= res!3092047 call!718912)))

(declare-fun b!7755440 () Bool)

(declare-fun e!4597100 () Bool)

(assert (=> b!7755440 (= e!4597100 call!718912)))

(declare-fun b!7755441 () Bool)

(declare-fun res!3092049 () Bool)

(assert (=> b!7755441 (=> (not res!3092049) (not e!4597100))))

(declare-fun call!718913 () Bool)

(assert (=> b!7755441 (= res!3092049 call!718913)))

(assert (=> b!7755441 (= e!4597094 e!4597100)))

(declare-fun b!7755442 () Bool)

(declare-fun res!3092048 () Bool)

(assert (=> b!7755442 (=> res!3092048 e!4597096)))

(assert (=> b!7755442 (= res!3092048 (not ((_ is Concat!29482) lt!2669736)))))

(assert (=> b!7755442 (= e!4597094 e!4597096)))

(declare-fun d!2343278 () Bool)

(declare-fun res!3092046 () Bool)

(declare-fun e!4597098 () Bool)

(assert (=> d!2343278 (=> res!3092046 e!4597098)))

(assert (=> d!2343278 (= res!3092046 ((_ is ElementMatch!20637) lt!2669736))))

(assert (=> d!2343278 (= (validRegex!11055 lt!2669736) e!4597098)))

(declare-fun bm!718906 () Bool)

(declare-fun c!1430308 () Bool)

(declare-fun call!718911 () Bool)

(assert (=> bm!718906 (= call!718911 (validRegex!11055 (ite c!1430308 (reg!20966 lt!2669736) (ite c!1430307 (regOne!41787 lt!2669736) (regTwo!41786 lt!2669736)))))))

(declare-fun b!7755443 () Bool)

(declare-fun e!4597097 () Bool)

(assert (=> b!7755443 (= e!4597097 call!718911)))

(declare-fun bm!718907 () Bool)

(assert (=> bm!718907 (= call!718913 call!718911)))

(declare-fun b!7755444 () Bool)

(assert (=> b!7755444 (= e!4597099 call!718913)))

(declare-fun b!7755445 () Bool)

(assert (=> b!7755445 (= e!4597095 e!4597097)))

(declare-fun res!3092045 () Bool)

(declare-fun nullable!9092 (Regex!20637) Bool)

(assert (=> b!7755445 (= res!3092045 (not (nullable!9092 (reg!20966 lt!2669736))))))

(assert (=> b!7755445 (=> (not res!3092045) (not e!4597097))))

(declare-fun b!7755446 () Bool)

(assert (=> b!7755446 (= e!4597098 e!4597095)))

(assert (=> b!7755446 (= c!1430308 ((_ is Star!20637) lt!2669736))))

(declare-fun bm!718908 () Bool)

(assert (=> bm!718908 (= call!718912 (validRegex!11055 (ite c!1430307 (regTwo!41787 lt!2669736) (regOne!41786 lt!2669736))))))

(assert (= (and d!2343278 (not res!3092046)) b!7755446))

(assert (= (and b!7755446 c!1430308) b!7755445))

(assert (= (and b!7755446 (not c!1430308)) b!7755438))

(assert (= (and b!7755445 res!3092045) b!7755443))

(assert (= (and b!7755438 c!1430307) b!7755441))

(assert (= (and b!7755438 (not c!1430307)) b!7755442))

(assert (= (and b!7755441 res!3092049) b!7755440))

(assert (= (and b!7755442 (not res!3092048)) b!7755439))

(assert (= (and b!7755439 res!3092047) b!7755444))

(assert (= (or b!7755441 b!7755444) bm!718907))

(assert (= (or b!7755440 b!7755439) bm!718908))

(assert (= (or b!7755443 bm!718907) bm!718906))

(declare-fun m!8218706 () Bool)

(assert (=> bm!718906 m!8218706))

(declare-fun m!8218708 () Bool)

(assert (=> b!7755445 m!8218708))

(declare-fun m!8218710 () Bool)

(assert (=> bm!718908 m!8218710))

(assert (=> b!7755397 d!2343278))

(declare-fun b!7755484 () Bool)

(declare-fun res!3092075 () Bool)

(declare-fun e!4597122 () Bool)

(assert (=> b!7755484 (=> res!3092075 e!4597122)))

(declare-fun isEmpty!42037 (List!73482) Bool)

(declare-fun tail!15383 (List!73482) List!73482)

(assert (=> b!7755484 (= res!3092075 (not (isEmpty!42037 (tail!15383 lt!2669733))))))

(declare-fun b!7755485 () Bool)

(declare-fun res!3092078 () Bool)

(declare-fun e!4597123 () Bool)

(assert (=> b!7755485 (=> res!3092078 e!4597123)))

(declare-fun e!4597124 () Bool)

(assert (=> b!7755485 (= res!3092078 e!4597124)))

(declare-fun res!3092072 () Bool)

(assert (=> b!7755485 (=> (not res!3092072) (not e!4597124))))

(declare-fun lt!2669739 () Bool)

(assert (=> b!7755485 (= res!3092072 lt!2669739)))

(declare-fun b!7755486 () Bool)

(declare-fun e!4597128 () Bool)

(assert (=> b!7755486 (= e!4597123 e!4597128)))

(declare-fun res!3092074 () Bool)

(assert (=> b!7755486 (=> (not res!3092074) (not e!4597128))))

(assert (=> b!7755486 (= res!3092074 (not lt!2669739))))

(declare-fun bm!718914 () Bool)

(declare-fun call!718919 () Bool)

(assert (=> bm!718914 (= call!718919 (isEmpty!42037 lt!2669733))))

(declare-fun b!7755487 () Bool)

(declare-fun res!3092073 () Bool)

(assert (=> b!7755487 (=> res!3092073 e!4597123)))

(assert (=> b!7755487 (= res!3092073 (not ((_ is ElementMatch!20637) lt!2669736)))))

(declare-fun e!4597127 () Bool)

(assert (=> b!7755487 (= e!4597127 e!4597123)))

(declare-fun b!7755488 () Bool)

(assert (=> b!7755488 (= e!4597127 (not lt!2669739))))

(declare-fun d!2343282 () Bool)

(declare-fun e!4597126 () Bool)

(assert (=> d!2343282 e!4597126))

(declare-fun c!1430318 () Bool)

(assert (=> d!2343282 (= c!1430318 ((_ is EmptyExpr!20637) lt!2669736))))

(declare-fun e!4597125 () Bool)

(assert (=> d!2343282 (= lt!2669739 e!4597125)))

(declare-fun c!1430319 () Bool)

(assert (=> d!2343282 (= c!1430319 (isEmpty!42037 lt!2669733))))

(assert (=> d!2343282 (validRegex!11055 lt!2669736)))

(assert (=> d!2343282 (= (matchR!10121 lt!2669736 lt!2669733) lt!2669739)))

(declare-fun b!7755489 () Bool)

(assert (=> b!7755489 (= e!4597126 e!4597127)))

(declare-fun c!1430317 () Bool)

(assert (=> b!7755489 (= c!1430317 ((_ is EmptyLang!20637) lt!2669736))))

(declare-fun b!7755490 () Bool)

(declare-fun derivativeStep!6047 (Regex!20637 C!41600) Regex!20637)

(declare-fun head!15843 (List!73482) C!41600)

(assert (=> b!7755490 (= e!4597125 (matchR!10121 (derivativeStep!6047 lt!2669736 (head!15843 lt!2669733)) (tail!15383 lt!2669733)))))

(declare-fun b!7755491 () Bool)

(declare-fun res!3092077 () Bool)

(assert (=> b!7755491 (=> (not res!3092077) (not e!4597124))))

(assert (=> b!7755491 (= res!3092077 (isEmpty!42037 (tail!15383 lt!2669733)))))

(declare-fun b!7755492 () Bool)

(assert (=> b!7755492 (= e!4597126 (= lt!2669739 call!718919))))

(declare-fun b!7755493 () Bool)

(assert (=> b!7755493 (= e!4597122 (not (= (head!15843 lt!2669733) (c!1430298 lt!2669736))))))

(declare-fun b!7755494 () Bool)

(assert (=> b!7755494 (= e!4597125 (nullable!9092 lt!2669736))))

(declare-fun b!7755495 () Bool)

(assert (=> b!7755495 (= e!4597124 (= (head!15843 lt!2669733) (c!1430298 lt!2669736)))))

(declare-fun b!7755496 () Bool)

(declare-fun res!3092071 () Bool)

(assert (=> b!7755496 (=> (not res!3092071) (not e!4597124))))

(assert (=> b!7755496 (= res!3092071 (not call!718919))))

(declare-fun b!7755497 () Bool)

(assert (=> b!7755497 (= e!4597128 e!4597122)))

(declare-fun res!3092076 () Bool)

(assert (=> b!7755497 (=> res!3092076 e!4597122)))

(assert (=> b!7755497 (= res!3092076 call!718919)))

(assert (= (and d!2343282 c!1430319) b!7755494))

(assert (= (and d!2343282 (not c!1430319)) b!7755490))

(assert (= (and d!2343282 c!1430318) b!7755492))

(assert (= (and d!2343282 (not c!1430318)) b!7755489))

(assert (= (and b!7755489 c!1430317) b!7755488))

(assert (= (and b!7755489 (not c!1430317)) b!7755487))

(assert (= (and b!7755487 (not res!3092073)) b!7755485))

(assert (= (and b!7755485 res!3092072) b!7755496))

(assert (= (and b!7755496 res!3092071) b!7755491))

(assert (= (and b!7755491 res!3092077) b!7755495))

(assert (= (and b!7755485 (not res!3092078)) b!7755486))

(assert (= (and b!7755486 res!3092074) b!7755497))

(assert (= (and b!7755497 (not res!3092076)) b!7755484))

(assert (= (and b!7755484 (not res!3092075)) b!7755493))

(assert (= (or b!7755492 b!7755496 b!7755497) bm!718914))

(declare-fun m!8218720 () Bool)

(assert (=> b!7755495 m!8218720))

(assert (=> b!7755490 m!8218720))

(assert (=> b!7755490 m!8218720))

(declare-fun m!8218722 () Bool)

(assert (=> b!7755490 m!8218722))

(declare-fun m!8218724 () Bool)

(assert (=> b!7755490 m!8218724))

(assert (=> b!7755490 m!8218722))

(assert (=> b!7755490 m!8218724))

(declare-fun m!8218726 () Bool)

(assert (=> b!7755490 m!8218726))

(assert (=> b!7755491 m!8218724))

(assert (=> b!7755491 m!8218724))

(declare-fun m!8218728 () Bool)

(assert (=> b!7755491 m!8218728))

(declare-fun m!8218730 () Bool)

(assert (=> d!2343282 m!8218730))

(assert (=> d!2343282 m!8218696))

(assert (=> bm!718914 m!8218730))

(declare-fun m!8218732 () Bool)

(assert (=> b!7755494 m!8218732))

(assert (=> b!7755484 m!8218724))

(assert (=> b!7755484 m!8218724))

(assert (=> b!7755484 m!8218728))

(assert (=> b!7755493 m!8218720))

(assert (=> b!7755397 d!2343282))

(declare-fun d!2343288 () Bool)

(assert (=> d!2343288 (matchR!10121 (Concat!29482 r1!6249 r2!6187) (++!17818 s1!4090 s2!3712))))

(declare-fun lt!2669748 () Unit!168338)

(declare-fun choose!59434 (Regex!20637 Regex!20637 List!73482 List!73482) Unit!168338)

(assert (=> d!2343288 (= lt!2669748 (choose!59434 r1!6249 r2!6187 s1!4090 s2!3712))))

(declare-fun e!4597141 () Bool)

(assert (=> d!2343288 e!4597141))

(declare-fun res!3092091 () Bool)

(assert (=> d!2343288 (=> (not res!3092091) (not e!4597141))))

(assert (=> d!2343288 (= res!3092091 (validRegex!11055 r1!6249))))

(assert (=> d!2343288 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!416 r1!6249 r2!6187 s1!4090 s2!3712) lt!2669748)))

(declare-fun b!7755518 () Bool)

(assert (=> b!7755518 (= e!4597141 (validRegex!11055 r2!6187))))

(assert (= (and d!2343288 res!3092091) b!7755518))

(assert (=> d!2343288 m!8218694))

(assert (=> d!2343288 m!8218694))

(declare-fun m!8218734 () Bool)

(assert (=> d!2343288 m!8218734))

(declare-fun m!8218736 () Bool)

(assert (=> d!2343288 m!8218736))

(assert (=> d!2343288 m!8218692))

(assert (=> b!7755518 m!8218686))

(assert (=> b!7755397 d!2343288))

(declare-fun b!7755519 () Bool)

(declare-fun e!4597143 () Bool)

(declare-fun e!4597142 () Bool)

(assert (=> b!7755519 (= e!4597143 e!4597142)))

(declare-fun c!1430324 () Bool)

(assert (=> b!7755519 (= c!1430324 ((_ is Union!20637) r1!6249))))

(declare-fun b!7755520 () Bool)

(declare-fun e!4597144 () Bool)

(declare-fun e!4597147 () Bool)

(assert (=> b!7755520 (= e!4597144 e!4597147)))

(declare-fun res!3092094 () Bool)

(assert (=> b!7755520 (=> (not res!3092094) (not e!4597147))))

(declare-fun call!718921 () Bool)

(assert (=> b!7755520 (= res!3092094 call!718921)))

(declare-fun b!7755521 () Bool)

(declare-fun e!4597148 () Bool)

(assert (=> b!7755521 (= e!4597148 call!718921)))

(declare-fun b!7755522 () Bool)

(declare-fun res!3092096 () Bool)

(assert (=> b!7755522 (=> (not res!3092096) (not e!4597148))))

(declare-fun call!718922 () Bool)

(assert (=> b!7755522 (= res!3092096 call!718922)))

(assert (=> b!7755522 (= e!4597142 e!4597148)))

(declare-fun b!7755523 () Bool)

(declare-fun res!3092095 () Bool)

(assert (=> b!7755523 (=> res!3092095 e!4597144)))

(assert (=> b!7755523 (= res!3092095 (not ((_ is Concat!29482) r1!6249)))))

(assert (=> b!7755523 (= e!4597142 e!4597144)))

(declare-fun d!2343290 () Bool)

(declare-fun res!3092093 () Bool)

(declare-fun e!4597146 () Bool)

(assert (=> d!2343290 (=> res!3092093 e!4597146)))

(assert (=> d!2343290 (= res!3092093 ((_ is ElementMatch!20637) r1!6249))))

(assert (=> d!2343290 (= (validRegex!11055 r1!6249) e!4597146)))

(declare-fun bm!718915 () Bool)

(declare-fun call!718920 () Bool)

(declare-fun c!1430325 () Bool)

(assert (=> bm!718915 (= call!718920 (validRegex!11055 (ite c!1430325 (reg!20966 r1!6249) (ite c!1430324 (regOne!41787 r1!6249) (regTwo!41786 r1!6249)))))))

(declare-fun b!7755524 () Bool)

(declare-fun e!4597145 () Bool)

(assert (=> b!7755524 (= e!4597145 call!718920)))

(declare-fun bm!718916 () Bool)

(assert (=> bm!718916 (= call!718922 call!718920)))

(declare-fun b!7755525 () Bool)

(assert (=> b!7755525 (= e!4597147 call!718922)))

(declare-fun b!7755526 () Bool)

(assert (=> b!7755526 (= e!4597143 e!4597145)))

(declare-fun res!3092092 () Bool)

(assert (=> b!7755526 (= res!3092092 (not (nullable!9092 (reg!20966 r1!6249))))))

(assert (=> b!7755526 (=> (not res!3092092) (not e!4597145))))

(declare-fun b!7755527 () Bool)

(assert (=> b!7755527 (= e!4597146 e!4597143)))

(assert (=> b!7755527 (= c!1430325 ((_ is Star!20637) r1!6249))))

(declare-fun bm!718917 () Bool)

(assert (=> bm!718917 (= call!718921 (validRegex!11055 (ite c!1430324 (regTwo!41787 r1!6249) (regOne!41786 r1!6249))))))

(assert (= (and d!2343290 (not res!3092093)) b!7755527))

(assert (= (and b!7755527 c!1430325) b!7755526))

(assert (= (and b!7755527 (not c!1430325)) b!7755519))

(assert (= (and b!7755526 res!3092092) b!7755524))

(assert (= (and b!7755519 c!1430324) b!7755522))

(assert (= (and b!7755519 (not c!1430324)) b!7755523))

(assert (= (and b!7755522 res!3092096) b!7755521))

(assert (= (and b!7755523 (not res!3092095)) b!7755520))

(assert (= (and b!7755520 res!3092094) b!7755525))

(assert (= (or b!7755522 b!7755525) bm!718916))

(assert (= (or b!7755521 b!7755520) bm!718917))

(assert (= (or b!7755524 bm!718916) bm!718915))

(declare-fun m!8218738 () Bool)

(assert (=> bm!718915 m!8218738))

(declare-fun m!8218740 () Bool)

(assert (=> b!7755526 m!8218740))

(declare-fun m!8218742 () Bool)

(assert (=> bm!718917 m!8218742))

(assert (=> start!739104 d!2343290))

(declare-fun d!2343292 () Bool)

(declare-fun isEmpty!42039 (Option!17628) Bool)

(assert (=> d!2343292 (= (isDefined!14242 lt!2669735) (not (isEmpty!42039 lt!2669735)))))

(declare-fun bs!1965872 () Bool)

(assert (= bs!1965872 d!2343292))

(declare-fun m!8218744 () Bool)

(assert (=> bs!1965872 m!8218744))

(assert (=> b!7755396 d!2343292))

(declare-fun b!7755604 () Bool)

(declare-fun res!3092139 () Bool)

(declare-fun e!4597191 () Bool)

(assert (=> b!7755604 (=> (not res!3092139) (not e!4597191))))

(declare-fun lt!2669764 () Option!17628)

(assert (=> b!7755604 (= res!3092139 (matchR!10121 r2!6187 (_2!38137 (get!26114 lt!2669764))))))

(declare-fun b!7755605 () Bool)

(declare-fun res!3092143 () Bool)

(assert (=> b!7755605 (=> (not res!3092143) (not e!4597191))))

(assert (=> b!7755605 (= res!3092143 (matchR!10121 r1!6249 (_1!38137 (get!26114 lt!2669764))))))

(declare-fun b!7755606 () Bool)

(declare-fun e!4597193 () Bool)

(assert (=> b!7755606 (= e!4597193 (matchR!10121 r2!6187 s!14266))))

(declare-fun b!7755607 () Bool)

(assert (=> b!7755607 (= e!4597191 (= (++!17818 (_1!38137 (get!26114 lt!2669764)) (_2!38137 (get!26114 lt!2669764))) s!14266))))

(declare-fun d!2343294 () Bool)

(declare-fun e!4597194 () Bool)

(assert (=> d!2343294 e!4597194))

(declare-fun res!3092142 () Bool)

(assert (=> d!2343294 (=> res!3092142 e!4597194)))

(assert (=> d!2343294 (= res!3092142 e!4597191)))

(declare-fun res!3092141 () Bool)

(assert (=> d!2343294 (=> (not res!3092141) (not e!4597191))))

(assert (=> d!2343294 (= res!3092141 (isDefined!14242 lt!2669764))))

(declare-fun e!4597195 () Option!17628)

(assert (=> d!2343294 (= lt!2669764 e!4597195)))

(declare-fun c!1430343 () Bool)

(assert (=> d!2343294 (= c!1430343 e!4597193)))

(declare-fun res!3092140 () Bool)

(assert (=> d!2343294 (=> (not res!3092140) (not e!4597193))))

(assert (=> d!2343294 (= res!3092140 (matchR!10121 r1!6249 Nil!73358))))

(assert (=> d!2343294 (validRegex!11055 r1!6249)))

(assert (=> d!2343294 (= (findConcatSeparation!3658 r1!6249 r2!6187 Nil!73358 s!14266 s!14266) lt!2669764)))

(declare-fun b!7755608 () Bool)

(declare-fun e!4597192 () Option!17628)

(assert (=> b!7755608 (= e!4597195 e!4597192)))

(declare-fun c!1430344 () Bool)

(assert (=> b!7755608 (= c!1430344 ((_ is Nil!73358) s!14266))))

(declare-fun b!7755609 () Bool)

(assert (=> b!7755609 (= e!4597194 (not (isDefined!14242 lt!2669764)))))

(declare-fun b!7755610 () Bool)

(assert (=> b!7755610 (= e!4597192 None!17627)))

(declare-fun b!7755611 () Bool)

(assert (=> b!7755611 (= e!4597195 (Some!17627 (tuple2!69669 Nil!73358 s!14266)))))

(declare-fun b!7755612 () Bool)

(declare-fun lt!2669765 () Unit!168338)

(declare-fun lt!2669763 () Unit!168338)

(assert (=> b!7755612 (= lt!2669765 lt!2669763)))

(assert (=> b!7755612 (= (++!17818 (++!17818 Nil!73358 (Cons!73358 (h!79806 s!14266) Nil!73358)) (t!388217 s!14266)) s!14266)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3346 (List!73482 C!41600 List!73482 List!73482) Unit!168338)

(assert (=> b!7755612 (= lt!2669763 (lemmaMoveElementToOtherListKeepsConcatEq!3346 Nil!73358 (h!79806 s!14266) (t!388217 s!14266) s!14266))))

(assert (=> b!7755612 (= e!4597192 (findConcatSeparation!3658 r1!6249 r2!6187 (++!17818 Nil!73358 (Cons!73358 (h!79806 s!14266) Nil!73358)) (t!388217 s!14266) s!14266))))

(assert (= (and d!2343294 res!3092140) b!7755606))

(assert (= (and d!2343294 c!1430343) b!7755611))

(assert (= (and d!2343294 (not c!1430343)) b!7755608))

(assert (= (and b!7755608 c!1430344) b!7755610))

(assert (= (and b!7755608 (not c!1430344)) b!7755612))

(assert (= (and d!2343294 res!3092141) b!7755605))

(assert (= (and b!7755605 res!3092143) b!7755604))

(assert (= (and b!7755604 res!3092139) b!7755607))

(assert (= (and d!2343294 (not res!3092142)) b!7755609))

(declare-fun m!8218794 () Bool)

(assert (=> b!7755604 m!8218794))

(declare-fun m!8218800 () Bool)

(assert (=> b!7755604 m!8218800))

(assert (=> b!7755605 m!8218794))

(declare-fun m!8218804 () Bool)

(assert (=> b!7755605 m!8218804))

(assert (=> b!7755607 m!8218794))

(declare-fun m!8218808 () Bool)

(assert (=> b!7755607 m!8218808))

(declare-fun m!8218810 () Bool)

(assert (=> d!2343294 m!8218810))

(declare-fun m!8218812 () Bool)

(assert (=> d!2343294 m!8218812))

(assert (=> d!2343294 m!8218692))

(declare-fun m!8218814 () Bool)

(assert (=> b!7755612 m!8218814))

(assert (=> b!7755612 m!8218814))

(declare-fun m!8218816 () Bool)

(assert (=> b!7755612 m!8218816))

(declare-fun m!8218818 () Bool)

(assert (=> b!7755612 m!8218818))

(assert (=> b!7755612 m!8218814))

(declare-fun m!8218820 () Bool)

(assert (=> b!7755612 m!8218820))

(declare-fun m!8218822 () Bool)

(assert (=> b!7755606 m!8218822))

(assert (=> b!7755609 m!8218810))

(assert (=> b!7755396 d!2343294))

(declare-fun b!7755627 () Bool)

(declare-fun e!4597204 () Bool)

(declare-fun e!4597203 () Bool)

(assert (=> b!7755627 (= e!4597204 e!4597203)))

(declare-fun c!1430348 () Bool)

(assert (=> b!7755627 (= c!1430348 ((_ is Union!20637) r2!6187))))

(declare-fun b!7755628 () Bool)

(declare-fun e!4597205 () Bool)

(declare-fun e!4597208 () Bool)

(assert (=> b!7755628 (= e!4597205 e!4597208)))

(declare-fun res!3092154 () Bool)

(assert (=> b!7755628 (=> (not res!3092154) (not e!4597208))))

(declare-fun call!718930 () Bool)

(assert (=> b!7755628 (= res!3092154 call!718930)))

(declare-fun b!7755629 () Bool)

(declare-fun e!4597209 () Bool)

(assert (=> b!7755629 (= e!4597209 call!718930)))

(declare-fun b!7755630 () Bool)

(declare-fun res!3092156 () Bool)

(assert (=> b!7755630 (=> (not res!3092156) (not e!4597209))))

(declare-fun call!718931 () Bool)

(assert (=> b!7755630 (= res!3092156 call!718931)))

(assert (=> b!7755630 (= e!4597203 e!4597209)))

(declare-fun b!7755631 () Bool)

(declare-fun res!3092155 () Bool)

(assert (=> b!7755631 (=> res!3092155 e!4597205)))

(assert (=> b!7755631 (= res!3092155 (not ((_ is Concat!29482) r2!6187)))))

(assert (=> b!7755631 (= e!4597203 e!4597205)))

(declare-fun d!2343306 () Bool)

(declare-fun res!3092153 () Bool)

(declare-fun e!4597207 () Bool)

(assert (=> d!2343306 (=> res!3092153 e!4597207)))

(assert (=> d!2343306 (= res!3092153 ((_ is ElementMatch!20637) r2!6187))))

(assert (=> d!2343306 (= (validRegex!11055 r2!6187) e!4597207)))

(declare-fun call!718929 () Bool)

(declare-fun c!1430349 () Bool)

(declare-fun bm!718924 () Bool)

(assert (=> bm!718924 (= call!718929 (validRegex!11055 (ite c!1430349 (reg!20966 r2!6187) (ite c!1430348 (regOne!41787 r2!6187) (regTwo!41786 r2!6187)))))))

(declare-fun b!7755632 () Bool)

(declare-fun e!4597206 () Bool)

(assert (=> b!7755632 (= e!4597206 call!718929)))

(declare-fun bm!718925 () Bool)

(assert (=> bm!718925 (= call!718931 call!718929)))

(declare-fun b!7755633 () Bool)

(assert (=> b!7755633 (= e!4597208 call!718931)))

(declare-fun b!7755634 () Bool)

(assert (=> b!7755634 (= e!4597204 e!4597206)))

(declare-fun res!3092152 () Bool)

(assert (=> b!7755634 (= res!3092152 (not (nullable!9092 (reg!20966 r2!6187))))))

(assert (=> b!7755634 (=> (not res!3092152) (not e!4597206))))

(declare-fun b!7755635 () Bool)

(assert (=> b!7755635 (= e!4597207 e!4597204)))

(assert (=> b!7755635 (= c!1430349 ((_ is Star!20637) r2!6187))))

(declare-fun bm!718926 () Bool)

(assert (=> bm!718926 (= call!718930 (validRegex!11055 (ite c!1430348 (regTwo!41787 r2!6187) (regOne!41786 r2!6187))))))

(assert (= (and d!2343306 (not res!3092153)) b!7755635))

(assert (= (and b!7755635 c!1430349) b!7755634))

(assert (= (and b!7755635 (not c!1430349)) b!7755627))

(assert (= (and b!7755634 res!3092152) b!7755632))

(assert (= (and b!7755627 c!1430348) b!7755630))

(assert (= (and b!7755627 (not c!1430348)) b!7755631))

(assert (= (and b!7755630 res!3092156) b!7755629))

(assert (= (and b!7755631 (not res!3092155)) b!7755628))

(assert (= (and b!7755628 res!3092154) b!7755633))

(assert (= (or b!7755630 b!7755633) bm!718925))

(assert (= (or b!7755629 b!7755628) bm!718926))

(assert (= (or b!7755632 bm!718925) bm!718924))

(declare-fun m!8218824 () Bool)

(assert (=> bm!718924 m!8218824))

(declare-fun m!8218826 () Bool)

(assert (=> b!7755634 m!8218826))

(declare-fun m!8218828 () Bool)

(assert (=> bm!718926 m!8218828))

(assert (=> b!7755390 d!2343306))

(declare-fun b!7755636 () Bool)

(declare-fun res!3092161 () Bool)

(declare-fun e!4597210 () Bool)

(assert (=> b!7755636 (=> res!3092161 e!4597210)))

(assert (=> b!7755636 (= res!3092161 (not (isEmpty!42037 (tail!15383 s2!3712))))))

(declare-fun b!7755637 () Bool)

(declare-fun res!3092164 () Bool)

(declare-fun e!4597211 () Bool)

(assert (=> b!7755637 (=> res!3092164 e!4597211)))

(declare-fun e!4597212 () Bool)

(assert (=> b!7755637 (= res!3092164 e!4597212)))

(declare-fun res!3092158 () Bool)

(assert (=> b!7755637 (=> (not res!3092158) (not e!4597212))))

(declare-fun lt!2669767 () Bool)

(assert (=> b!7755637 (= res!3092158 lt!2669767)))

(declare-fun b!7755638 () Bool)

(declare-fun e!4597216 () Bool)

(assert (=> b!7755638 (= e!4597211 e!4597216)))

(declare-fun res!3092160 () Bool)

(assert (=> b!7755638 (=> (not res!3092160) (not e!4597216))))

(assert (=> b!7755638 (= res!3092160 (not lt!2669767))))

(declare-fun bm!718927 () Bool)

(declare-fun call!718932 () Bool)

(assert (=> bm!718927 (= call!718932 (isEmpty!42037 s2!3712))))

(declare-fun b!7755639 () Bool)

(declare-fun res!3092159 () Bool)

(assert (=> b!7755639 (=> res!3092159 e!4597211)))

(assert (=> b!7755639 (= res!3092159 (not ((_ is ElementMatch!20637) r2!6187)))))

(declare-fun e!4597215 () Bool)

(assert (=> b!7755639 (= e!4597215 e!4597211)))

(declare-fun b!7755640 () Bool)

(assert (=> b!7755640 (= e!4597215 (not lt!2669767))))

(declare-fun d!2343308 () Bool)

(declare-fun e!4597214 () Bool)

(assert (=> d!2343308 e!4597214))

(declare-fun c!1430351 () Bool)

(assert (=> d!2343308 (= c!1430351 ((_ is EmptyExpr!20637) r2!6187))))

(declare-fun e!4597213 () Bool)

(assert (=> d!2343308 (= lt!2669767 e!4597213)))

(declare-fun c!1430352 () Bool)

(assert (=> d!2343308 (= c!1430352 (isEmpty!42037 s2!3712))))

(assert (=> d!2343308 (validRegex!11055 r2!6187)))

(assert (=> d!2343308 (= (matchR!10121 r2!6187 s2!3712) lt!2669767)))

(declare-fun b!7755641 () Bool)

(assert (=> b!7755641 (= e!4597214 e!4597215)))

(declare-fun c!1430350 () Bool)

(assert (=> b!7755641 (= c!1430350 ((_ is EmptyLang!20637) r2!6187))))

(declare-fun b!7755642 () Bool)

(assert (=> b!7755642 (= e!4597213 (matchR!10121 (derivativeStep!6047 r2!6187 (head!15843 s2!3712)) (tail!15383 s2!3712)))))

(declare-fun b!7755643 () Bool)

(declare-fun res!3092163 () Bool)

(assert (=> b!7755643 (=> (not res!3092163) (not e!4597212))))

(assert (=> b!7755643 (= res!3092163 (isEmpty!42037 (tail!15383 s2!3712)))))

(declare-fun b!7755644 () Bool)

(assert (=> b!7755644 (= e!4597214 (= lt!2669767 call!718932))))

(declare-fun b!7755645 () Bool)

(assert (=> b!7755645 (= e!4597210 (not (= (head!15843 s2!3712) (c!1430298 r2!6187))))))

(declare-fun b!7755646 () Bool)

(assert (=> b!7755646 (= e!4597213 (nullable!9092 r2!6187))))

(declare-fun b!7755647 () Bool)

(assert (=> b!7755647 (= e!4597212 (= (head!15843 s2!3712) (c!1430298 r2!6187)))))

(declare-fun b!7755648 () Bool)

(declare-fun res!3092157 () Bool)

(assert (=> b!7755648 (=> (not res!3092157) (not e!4597212))))

(assert (=> b!7755648 (= res!3092157 (not call!718932))))

(declare-fun b!7755649 () Bool)

(assert (=> b!7755649 (= e!4597216 e!4597210)))

(declare-fun res!3092162 () Bool)

(assert (=> b!7755649 (=> res!3092162 e!4597210)))

(assert (=> b!7755649 (= res!3092162 call!718932)))

(assert (= (and d!2343308 c!1430352) b!7755646))

(assert (= (and d!2343308 (not c!1430352)) b!7755642))

(assert (= (and d!2343308 c!1430351) b!7755644))

(assert (= (and d!2343308 (not c!1430351)) b!7755641))

(assert (= (and b!7755641 c!1430350) b!7755640))

(assert (= (and b!7755641 (not c!1430350)) b!7755639))

(assert (= (and b!7755639 (not res!3092159)) b!7755637))

(assert (= (and b!7755637 res!3092158) b!7755648))

(assert (= (and b!7755648 res!3092157) b!7755643))

(assert (= (and b!7755643 res!3092163) b!7755647))

(assert (= (and b!7755637 (not res!3092164)) b!7755638))

(assert (= (and b!7755638 res!3092160) b!7755649))

(assert (= (and b!7755649 (not res!3092162)) b!7755636))

(assert (= (and b!7755636 (not res!3092161)) b!7755645))

(assert (= (or b!7755644 b!7755648 b!7755649) bm!718927))

(declare-fun m!8218830 () Bool)

(assert (=> b!7755647 m!8218830))

(assert (=> b!7755642 m!8218830))

(assert (=> b!7755642 m!8218830))

(declare-fun m!8218832 () Bool)

(assert (=> b!7755642 m!8218832))

(declare-fun m!8218834 () Bool)

(assert (=> b!7755642 m!8218834))

(assert (=> b!7755642 m!8218832))

(assert (=> b!7755642 m!8218834))

(declare-fun m!8218836 () Bool)

(assert (=> b!7755642 m!8218836))

(assert (=> b!7755643 m!8218834))

(assert (=> b!7755643 m!8218834))

(declare-fun m!8218838 () Bool)

(assert (=> b!7755643 m!8218838))

(declare-fun m!8218840 () Bool)

(assert (=> d!2343308 m!8218840))

(assert (=> d!2343308 m!8218686))

(assert (=> bm!718927 m!8218840))

(declare-fun m!8218842 () Bool)

(assert (=> b!7755646 m!8218842))

(assert (=> b!7755636 m!8218834))

(assert (=> b!7755636 m!8218834))

(assert (=> b!7755636 m!8218838))

(assert (=> b!7755645 m!8218830))

(assert (=> b!7755384 d!2343308))

(declare-fun b!7755652 () Bool)

(declare-fun res!3092171 () Bool)

(declare-fun e!4597219 () Bool)

(assert (=> b!7755652 (=> res!3092171 e!4597219)))

(assert (=> b!7755652 (= res!3092171 (not (isEmpty!42037 (tail!15383 s1!4090))))))

(declare-fun b!7755653 () Bool)

(declare-fun res!3092174 () Bool)

(declare-fun e!4597220 () Bool)

(assert (=> b!7755653 (=> res!3092174 e!4597220)))

(declare-fun e!4597221 () Bool)

(assert (=> b!7755653 (= res!3092174 e!4597221)))

(declare-fun res!3092168 () Bool)

(assert (=> b!7755653 (=> (not res!3092168) (not e!4597221))))

(declare-fun lt!2669768 () Bool)

(assert (=> b!7755653 (= res!3092168 lt!2669768)))

(declare-fun b!7755654 () Bool)

(declare-fun e!4597225 () Bool)

(assert (=> b!7755654 (= e!4597220 e!4597225)))

(declare-fun res!3092170 () Bool)

(assert (=> b!7755654 (=> (not res!3092170) (not e!4597225))))

(assert (=> b!7755654 (= res!3092170 (not lt!2669768))))

(declare-fun bm!718928 () Bool)

(declare-fun call!718933 () Bool)

(assert (=> bm!718928 (= call!718933 (isEmpty!42037 s1!4090))))

(declare-fun b!7755655 () Bool)

(declare-fun res!3092169 () Bool)

(assert (=> b!7755655 (=> res!3092169 e!4597220)))

(assert (=> b!7755655 (= res!3092169 (not ((_ is ElementMatch!20637) r1!6249)))))

(declare-fun e!4597224 () Bool)

(assert (=> b!7755655 (= e!4597224 e!4597220)))

(declare-fun b!7755656 () Bool)

(assert (=> b!7755656 (= e!4597224 (not lt!2669768))))

(declare-fun d!2343310 () Bool)

(declare-fun e!4597223 () Bool)

(assert (=> d!2343310 e!4597223))

(declare-fun c!1430354 () Bool)

(assert (=> d!2343310 (= c!1430354 ((_ is EmptyExpr!20637) r1!6249))))

(declare-fun e!4597222 () Bool)

(assert (=> d!2343310 (= lt!2669768 e!4597222)))

(declare-fun c!1430355 () Bool)

(assert (=> d!2343310 (= c!1430355 (isEmpty!42037 s1!4090))))

(assert (=> d!2343310 (validRegex!11055 r1!6249)))

(assert (=> d!2343310 (= (matchR!10121 r1!6249 s1!4090) lt!2669768)))

(declare-fun b!7755657 () Bool)

(assert (=> b!7755657 (= e!4597223 e!4597224)))

(declare-fun c!1430353 () Bool)

(assert (=> b!7755657 (= c!1430353 ((_ is EmptyLang!20637) r1!6249))))

(declare-fun b!7755658 () Bool)

(assert (=> b!7755658 (= e!4597222 (matchR!10121 (derivativeStep!6047 r1!6249 (head!15843 s1!4090)) (tail!15383 s1!4090)))))

(declare-fun b!7755659 () Bool)

(declare-fun res!3092173 () Bool)

(assert (=> b!7755659 (=> (not res!3092173) (not e!4597221))))

(assert (=> b!7755659 (= res!3092173 (isEmpty!42037 (tail!15383 s1!4090)))))

(declare-fun b!7755660 () Bool)

(assert (=> b!7755660 (= e!4597223 (= lt!2669768 call!718933))))

(declare-fun b!7755661 () Bool)

(assert (=> b!7755661 (= e!4597219 (not (= (head!15843 s1!4090) (c!1430298 r1!6249))))))

(declare-fun b!7755662 () Bool)

(assert (=> b!7755662 (= e!4597222 (nullable!9092 r1!6249))))

(declare-fun b!7755663 () Bool)

(assert (=> b!7755663 (= e!4597221 (= (head!15843 s1!4090) (c!1430298 r1!6249)))))

(declare-fun b!7755664 () Bool)

(declare-fun res!3092167 () Bool)

(assert (=> b!7755664 (=> (not res!3092167) (not e!4597221))))

(assert (=> b!7755664 (= res!3092167 (not call!718933))))

(declare-fun b!7755665 () Bool)

(assert (=> b!7755665 (= e!4597225 e!4597219)))

(declare-fun res!3092172 () Bool)

(assert (=> b!7755665 (=> res!3092172 e!4597219)))

(assert (=> b!7755665 (= res!3092172 call!718933)))

(assert (= (and d!2343310 c!1430355) b!7755662))

(assert (= (and d!2343310 (not c!1430355)) b!7755658))

(assert (= (and d!2343310 c!1430354) b!7755660))

(assert (= (and d!2343310 (not c!1430354)) b!7755657))

(assert (= (and b!7755657 c!1430353) b!7755656))

(assert (= (and b!7755657 (not c!1430353)) b!7755655))

(assert (= (and b!7755655 (not res!3092169)) b!7755653))

(assert (= (and b!7755653 res!3092168) b!7755664))

(assert (= (and b!7755664 res!3092167) b!7755659))

(assert (= (and b!7755659 res!3092173) b!7755663))

(assert (= (and b!7755653 (not res!3092174)) b!7755654))

(assert (= (and b!7755654 res!3092170) b!7755665))

(assert (= (and b!7755665 (not res!3092172)) b!7755652))

(assert (= (and b!7755652 (not res!3092171)) b!7755661))

(assert (= (or b!7755660 b!7755664 b!7755665) bm!718928))

(declare-fun m!8218844 () Bool)

(assert (=> b!7755663 m!8218844))

(assert (=> b!7755658 m!8218844))

(assert (=> b!7755658 m!8218844))

(declare-fun m!8218846 () Bool)

(assert (=> b!7755658 m!8218846))

(declare-fun m!8218848 () Bool)

(assert (=> b!7755658 m!8218848))

(assert (=> b!7755658 m!8218846))

(assert (=> b!7755658 m!8218848))

(declare-fun m!8218850 () Bool)

(assert (=> b!7755658 m!8218850))

(assert (=> b!7755659 m!8218848))

(assert (=> b!7755659 m!8218848))

(declare-fun m!8218852 () Bool)

(assert (=> b!7755659 m!8218852))

(declare-fun m!8218854 () Bool)

(assert (=> d!2343310 m!8218854))

(assert (=> d!2343310 m!8218692))

(assert (=> bm!718928 m!8218854))

(declare-fun m!8218856 () Bool)

(assert (=> b!7755662 m!8218856))

(assert (=> b!7755652 m!8218848))

(assert (=> b!7755652 m!8218848))

(assert (=> b!7755652 m!8218852))

(assert (=> b!7755661 m!8218844))

(assert (=> b!7755394 d!2343310))

(declare-fun d!2343312 () Bool)

(assert (=> d!2343312 (= (get!26114 lt!2669735) (v!54762 lt!2669735))))

(assert (=> b!7755399 d!2343312))

(declare-fun e!4597267 () Bool)

(declare-fun lt!2669776 () List!73482)

(declare-fun b!7755764 () Bool)

(assert (=> b!7755764 (= e!4597267 (or (not (= s2!3712 Nil!73358)) (= lt!2669776 s1!4090)))))

(declare-fun d!2343316 () Bool)

(assert (=> d!2343316 e!4597267))

(declare-fun res!3092201 () Bool)

(assert (=> d!2343316 (=> (not res!3092201) (not e!4597267))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15561 (List!73482) (InoxSet C!41600))

(assert (=> d!2343316 (= res!3092201 (= (content!15561 lt!2669776) ((_ map or) (content!15561 s1!4090) (content!15561 s2!3712))))))

(declare-fun e!4597266 () List!73482)

(assert (=> d!2343316 (= lt!2669776 e!4597266)))

(declare-fun c!1430366 () Bool)

(assert (=> d!2343316 (= c!1430366 ((_ is Nil!73358) s1!4090))))

(assert (=> d!2343316 (= (++!17818 s1!4090 s2!3712) lt!2669776)))

(declare-fun b!7755760 () Bool)

(assert (=> b!7755760 (= e!4597266 (Cons!73358 (h!79806 s1!4090) (++!17818 (t!388217 s1!4090) s2!3712)))))

(declare-fun b!7755762 () Bool)

(declare-fun res!3092202 () Bool)

(assert (=> b!7755762 (=> (not res!3092202) (not e!4597267))))

(declare-fun size!42664 (List!73482) Int)

(assert (=> b!7755762 (= res!3092202 (= (size!42664 lt!2669776) (+ (size!42664 s1!4090) (size!42664 s2!3712))))))

(declare-fun b!7755758 () Bool)

(assert (=> b!7755758 (= e!4597266 s2!3712)))

(assert (= (and d!2343316 c!1430366) b!7755758))

(assert (= (and d!2343316 (not c!1430366)) b!7755760))

(assert (= (and d!2343316 res!3092201) b!7755762))

(assert (= (and b!7755762 res!3092202) b!7755764))

(declare-fun m!8218896 () Bool)

(assert (=> d!2343316 m!8218896))

(declare-fun m!8218898 () Bool)

(assert (=> d!2343316 m!8218898))

(declare-fun m!8218900 () Bool)

(assert (=> d!2343316 m!8218900))

(declare-fun m!8218902 () Bool)

(assert (=> b!7755760 m!8218902))

(declare-fun m!8218904 () Bool)

(assert (=> b!7755762 m!8218904))

(declare-fun m!8218906 () Bool)

(assert (=> b!7755762 m!8218906))

(declare-fun m!8218908 () Bool)

(assert (=> b!7755762 m!8218908))

(assert (=> b!7755387 d!2343316))

(declare-fun b!7755777 () Bool)

(declare-fun e!4597273 () Bool)

(declare-fun tp!2276003 () Bool)

(assert (=> b!7755777 (= e!4597273 (and tp_is_empty!51629 tp!2276003))))

(assert (=> b!7755386 (= tp!2275935 e!4597273)))

(assert (= (and b!7755386 ((_ is Cons!73358) (t!388217 s1!4090))) b!7755777))

(declare-fun b!7755778 () Bool)

(declare-fun e!4597274 () Bool)

(declare-fun tp!2276004 () Bool)

(assert (=> b!7755778 (= e!4597274 (and tp_is_empty!51629 tp!2276004))))

(assert (=> b!7755401 (= tp!2275926 e!4597274)))

(assert (= (and b!7755401 ((_ is Cons!73358) (t!388217 s!14266))) b!7755778))

(declare-fun e!4597277 () Bool)

(assert (=> b!7755385 (= tp!2275928 e!4597277)))

(declare-fun b!7755792 () Bool)

(declare-fun tp!2276017 () Bool)

(declare-fun tp!2276016 () Bool)

(assert (=> b!7755792 (= e!4597277 (and tp!2276017 tp!2276016))))

(declare-fun b!7755790 () Bool)

(declare-fun tp!2276019 () Bool)

(declare-fun tp!2276015 () Bool)

(assert (=> b!7755790 (= e!4597277 (and tp!2276019 tp!2276015))))

(declare-fun b!7755791 () Bool)

(declare-fun tp!2276018 () Bool)

(assert (=> b!7755791 (= e!4597277 tp!2276018)))

(declare-fun b!7755789 () Bool)

(assert (=> b!7755789 (= e!4597277 tp_is_empty!51629)))

(assert (= (and b!7755385 ((_ is ElementMatch!20637) (reg!20966 r1!6249))) b!7755789))

(assert (= (and b!7755385 ((_ is Concat!29482) (reg!20966 r1!6249))) b!7755790))

(assert (= (and b!7755385 ((_ is Star!20637) (reg!20966 r1!6249))) b!7755791))

(assert (= (and b!7755385 ((_ is Union!20637) (reg!20966 r1!6249))) b!7755792))

(declare-fun e!4597278 () Bool)

(assert (=> b!7755395 (= tp!2275932 e!4597278)))

(declare-fun b!7755796 () Bool)

(declare-fun tp!2276022 () Bool)

(declare-fun tp!2276021 () Bool)

(assert (=> b!7755796 (= e!4597278 (and tp!2276022 tp!2276021))))

(declare-fun b!7755794 () Bool)

(declare-fun tp!2276024 () Bool)

(declare-fun tp!2276020 () Bool)

(assert (=> b!7755794 (= e!4597278 (and tp!2276024 tp!2276020))))

(declare-fun b!7755795 () Bool)

(declare-fun tp!2276023 () Bool)

(assert (=> b!7755795 (= e!4597278 tp!2276023)))

(declare-fun b!7755793 () Bool)

(assert (=> b!7755793 (= e!4597278 tp_is_empty!51629)))

(assert (= (and b!7755395 ((_ is ElementMatch!20637) (regOne!41787 r1!6249))) b!7755793))

(assert (= (and b!7755395 ((_ is Concat!29482) (regOne!41787 r1!6249))) b!7755794))

(assert (= (and b!7755395 ((_ is Star!20637) (regOne!41787 r1!6249))) b!7755795))

(assert (= (and b!7755395 ((_ is Union!20637) (regOne!41787 r1!6249))) b!7755796))

(declare-fun e!4597279 () Bool)

(assert (=> b!7755395 (= tp!2275927 e!4597279)))

(declare-fun b!7755800 () Bool)

(declare-fun tp!2276027 () Bool)

(declare-fun tp!2276026 () Bool)

(assert (=> b!7755800 (= e!4597279 (and tp!2276027 tp!2276026))))

(declare-fun b!7755798 () Bool)

(declare-fun tp!2276029 () Bool)

(declare-fun tp!2276025 () Bool)

(assert (=> b!7755798 (= e!4597279 (and tp!2276029 tp!2276025))))

(declare-fun b!7755799 () Bool)

(declare-fun tp!2276028 () Bool)

(assert (=> b!7755799 (= e!4597279 tp!2276028)))

(declare-fun b!7755797 () Bool)

(assert (=> b!7755797 (= e!4597279 tp_is_empty!51629)))

(assert (= (and b!7755395 ((_ is ElementMatch!20637) (regTwo!41787 r1!6249))) b!7755797))

(assert (= (and b!7755395 ((_ is Concat!29482) (regTwo!41787 r1!6249))) b!7755798))

(assert (= (and b!7755395 ((_ is Star!20637) (regTwo!41787 r1!6249))) b!7755799))

(assert (= (and b!7755395 ((_ is Union!20637) (regTwo!41787 r1!6249))) b!7755800))

(declare-fun e!4597280 () Bool)

(assert (=> b!7755400 (= tp!2275934 e!4597280)))

(declare-fun b!7755804 () Bool)

(declare-fun tp!2276032 () Bool)

(declare-fun tp!2276031 () Bool)

(assert (=> b!7755804 (= e!4597280 (and tp!2276032 tp!2276031))))

(declare-fun b!7755802 () Bool)

(declare-fun tp!2276034 () Bool)

(declare-fun tp!2276030 () Bool)

(assert (=> b!7755802 (= e!4597280 (and tp!2276034 tp!2276030))))

(declare-fun b!7755803 () Bool)

(declare-fun tp!2276033 () Bool)

(assert (=> b!7755803 (= e!4597280 tp!2276033)))

(declare-fun b!7755801 () Bool)

(assert (=> b!7755801 (= e!4597280 tp_is_empty!51629)))

(assert (= (and b!7755400 ((_ is ElementMatch!20637) (reg!20966 r2!6187))) b!7755801))

(assert (= (and b!7755400 ((_ is Concat!29482) (reg!20966 r2!6187))) b!7755802))

(assert (= (and b!7755400 ((_ is Star!20637) (reg!20966 r2!6187))) b!7755803))

(assert (= (and b!7755400 ((_ is Union!20637) (reg!20966 r2!6187))) b!7755804))

(declare-fun e!4597281 () Bool)

(assert (=> b!7755388 (= tp!2275933 e!4597281)))

(declare-fun b!7755808 () Bool)

(declare-fun tp!2276037 () Bool)

(declare-fun tp!2276036 () Bool)

(assert (=> b!7755808 (= e!4597281 (and tp!2276037 tp!2276036))))

(declare-fun b!7755806 () Bool)

(declare-fun tp!2276039 () Bool)

(declare-fun tp!2276035 () Bool)

(assert (=> b!7755806 (= e!4597281 (and tp!2276039 tp!2276035))))

(declare-fun b!7755807 () Bool)

(declare-fun tp!2276038 () Bool)

(assert (=> b!7755807 (= e!4597281 tp!2276038)))

(declare-fun b!7755805 () Bool)

(assert (=> b!7755805 (= e!4597281 tp_is_empty!51629)))

(assert (= (and b!7755388 ((_ is ElementMatch!20637) (regOne!41786 r2!6187))) b!7755805))

(assert (= (and b!7755388 ((_ is Concat!29482) (regOne!41786 r2!6187))) b!7755806))

(assert (= (and b!7755388 ((_ is Star!20637) (regOne!41786 r2!6187))) b!7755807))

(assert (= (and b!7755388 ((_ is Union!20637) (regOne!41786 r2!6187))) b!7755808))

(declare-fun e!4597282 () Bool)

(assert (=> b!7755388 (= tp!2275930 e!4597282)))

(declare-fun b!7755812 () Bool)

(declare-fun tp!2276042 () Bool)

(declare-fun tp!2276041 () Bool)

(assert (=> b!7755812 (= e!4597282 (and tp!2276042 tp!2276041))))

(declare-fun b!7755810 () Bool)

(declare-fun tp!2276044 () Bool)

(declare-fun tp!2276040 () Bool)

(assert (=> b!7755810 (= e!4597282 (and tp!2276044 tp!2276040))))

(declare-fun b!7755811 () Bool)

(declare-fun tp!2276043 () Bool)

(assert (=> b!7755811 (= e!4597282 tp!2276043)))

(declare-fun b!7755809 () Bool)

(assert (=> b!7755809 (= e!4597282 tp_is_empty!51629)))

(assert (= (and b!7755388 ((_ is ElementMatch!20637) (regTwo!41786 r2!6187))) b!7755809))

(assert (= (and b!7755388 ((_ is Concat!29482) (regTwo!41786 r2!6187))) b!7755810))

(assert (= (and b!7755388 ((_ is Star!20637) (regTwo!41786 r2!6187))) b!7755811))

(assert (= (and b!7755388 ((_ is Union!20637) (regTwo!41786 r2!6187))) b!7755812))

(declare-fun e!4597283 () Bool)

(assert (=> b!7755393 (= tp!2275929 e!4597283)))

(declare-fun b!7755816 () Bool)

(declare-fun tp!2276047 () Bool)

(declare-fun tp!2276046 () Bool)

(assert (=> b!7755816 (= e!4597283 (and tp!2276047 tp!2276046))))

(declare-fun b!7755814 () Bool)

(declare-fun tp!2276049 () Bool)

(declare-fun tp!2276045 () Bool)

(assert (=> b!7755814 (= e!4597283 (and tp!2276049 tp!2276045))))

(declare-fun b!7755815 () Bool)

(declare-fun tp!2276048 () Bool)

(assert (=> b!7755815 (= e!4597283 tp!2276048)))

(declare-fun b!7755813 () Bool)

(assert (=> b!7755813 (= e!4597283 tp_is_empty!51629)))

(assert (= (and b!7755393 ((_ is ElementMatch!20637) (regOne!41786 r1!6249))) b!7755813))

(assert (= (and b!7755393 ((_ is Concat!29482) (regOne!41786 r1!6249))) b!7755814))

(assert (= (and b!7755393 ((_ is Star!20637) (regOne!41786 r1!6249))) b!7755815))

(assert (= (and b!7755393 ((_ is Union!20637) (regOne!41786 r1!6249))) b!7755816))

(declare-fun e!4597284 () Bool)

(assert (=> b!7755393 (= tp!2275924 e!4597284)))

(declare-fun b!7755820 () Bool)

(declare-fun tp!2276052 () Bool)

(declare-fun tp!2276051 () Bool)

(assert (=> b!7755820 (= e!4597284 (and tp!2276052 tp!2276051))))

(declare-fun b!7755818 () Bool)

(declare-fun tp!2276054 () Bool)

(declare-fun tp!2276050 () Bool)

(assert (=> b!7755818 (= e!4597284 (and tp!2276054 tp!2276050))))

(declare-fun b!7755819 () Bool)

(declare-fun tp!2276053 () Bool)

(assert (=> b!7755819 (= e!4597284 tp!2276053)))

(declare-fun b!7755817 () Bool)

(assert (=> b!7755817 (= e!4597284 tp_is_empty!51629)))

(assert (= (and b!7755393 ((_ is ElementMatch!20637) (regTwo!41786 r1!6249))) b!7755817))

(assert (= (and b!7755393 ((_ is Concat!29482) (regTwo!41786 r1!6249))) b!7755818))

(assert (= (and b!7755393 ((_ is Star!20637) (regTwo!41786 r1!6249))) b!7755819))

(assert (= (and b!7755393 ((_ is Union!20637) (regTwo!41786 r1!6249))) b!7755820))

(declare-fun e!4597285 () Bool)

(assert (=> b!7755398 (= tp!2275931 e!4597285)))

(declare-fun b!7755824 () Bool)

(declare-fun tp!2276057 () Bool)

(declare-fun tp!2276056 () Bool)

(assert (=> b!7755824 (= e!4597285 (and tp!2276057 tp!2276056))))

(declare-fun b!7755822 () Bool)

(declare-fun tp!2276059 () Bool)

(declare-fun tp!2276055 () Bool)

(assert (=> b!7755822 (= e!4597285 (and tp!2276059 tp!2276055))))

(declare-fun b!7755823 () Bool)

(declare-fun tp!2276058 () Bool)

(assert (=> b!7755823 (= e!4597285 tp!2276058)))

(declare-fun b!7755821 () Bool)

(assert (=> b!7755821 (= e!4597285 tp_is_empty!51629)))

(assert (= (and b!7755398 ((_ is ElementMatch!20637) (regOne!41787 r2!6187))) b!7755821))

(assert (= (and b!7755398 ((_ is Concat!29482) (regOne!41787 r2!6187))) b!7755822))

(assert (= (and b!7755398 ((_ is Star!20637) (regOne!41787 r2!6187))) b!7755823))

(assert (= (and b!7755398 ((_ is Union!20637) (regOne!41787 r2!6187))) b!7755824))

(declare-fun e!4597286 () Bool)

(assert (=> b!7755398 (= tp!2275925 e!4597286)))

(declare-fun b!7755828 () Bool)

(declare-fun tp!2276062 () Bool)

(declare-fun tp!2276061 () Bool)

(assert (=> b!7755828 (= e!4597286 (and tp!2276062 tp!2276061))))

(declare-fun b!7755826 () Bool)

(declare-fun tp!2276064 () Bool)

(declare-fun tp!2276060 () Bool)

(assert (=> b!7755826 (= e!4597286 (and tp!2276064 tp!2276060))))

(declare-fun b!7755827 () Bool)

(declare-fun tp!2276063 () Bool)

(assert (=> b!7755827 (= e!4597286 tp!2276063)))

(declare-fun b!7755825 () Bool)

(assert (=> b!7755825 (= e!4597286 tp_is_empty!51629)))

(assert (= (and b!7755398 ((_ is ElementMatch!20637) (regTwo!41787 r2!6187))) b!7755825))

(assert (= (and b!7755398 ((_ is Concat!29482) (regTwo!41787 r2!6187))) b!7755826))

(assert (= (and b!7755398 ((_ is Star!20637) (regTwo!41787 r2!6187))) b!7755827))

(assert (= (and b!7755398 ((_ is Union!20637) (regTwo!41787 r2!6187))) b!7755828))

(declare-fun b!7755829 () Bool)

(declare-fun e!4597287 () Bool)

(declare-fun tp!2276065 () Bool)

(assert (=> b!7755829 (= e!4597287 (and tp_is_empty!51629 tp!2276065))))

(assert (=> b!7755392 (= tp!2275923 e!4597287)))

(assert (= (and b!7755392 ((_ is Cons!73358) (t!388217 s2!3712))) b!7755829))

(check-sat (not b!7755490) (not b!7755607) (not b!7755484) (not b!7755823) (not b!7755794) (not b!7755606) (not b!7755812) (not b!7755796) (not b!7755777) (not bm!718917) (not b!7755816) (not bm!718926) (not b!7755820) (not b!7755604) (not b!7755808) (not b!7755652) (not b!7755815) (not b!7755811) (not b!7755658) (not b!7755634) (not b!7755612) (not d!2343316) (not b!7755795) (not b!7755494) (not b!7755798) (not b!7755518) (not b!7755760) (not b!7755526) (not b!7755803) (not b!7755828) (not bm!718915) (not b!7755762) (not bm!718914) (not b!7755659) (not b!7755661) (not b!7755647) (not bm!718924) (not b!7755642) (not bm!718906) (not b!7755810) tp_is_empty!51629 (not b!7755792) (not b!7755662) (not d!2343310) (not b!7755790) (not b!7755609) (not d!2343308) (not b!7755807) (not bm!718927) (not b!7755663) (not b!7755778) (not b!7755645) (not b!7755491) (not b!7755802) (not b!7755824) (not b!7755493) (not b!7755814) (not d!2343294) (not b!7755822) (not d!2343282) (not b!7755643) (not b!7755800) (not b!7755829) (not b!7755605) (not d!2343288) (not b!7755799) (not d!2343292) (not b!7755806) (not bm!718908) (not b!7755818) (not b!7755495) (not b!7755646) (not b!7755827) (not b!7755636) (not b!7755804) (not b!7755445) (not b!7755826) (not b!7755791) (not bm!718928) (not b!7755819))
(check-sat)
