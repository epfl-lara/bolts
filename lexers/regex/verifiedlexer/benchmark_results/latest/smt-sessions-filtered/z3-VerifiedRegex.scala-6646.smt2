; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349758 () Bool)

(assert start!349758)

(declare-fun b!3709221 () Bool)

(declare-fun res!1508593 () Bool)

(declare-fun e!2297376 () Bool)

(assert (=> b!3709221 (=> (not res!1508593) (not e!2297376))))

(declare-datatypes ((C!21848 0))(
  ( (C!21849 (val!12972 Int)) )
))
(declare-datatypes ((List!39712 0))(
  ( (Nil!39588) (Cons!39588 (h!45008 C!21848) (t!302395 List!39712)) )
))
(declare-fun s!14932 () List!39712)

(declare-fun c!13437 () C!21848)

(declare-fun head!8009 (List!39712) C!21848)

(assert (=> b!3709221 (= res!1508593 (= (head!8009 s!14932) c!13437))))

(declare-fun b!3709222 () Bool)

(declare-fun e!2297378 () Bool)

(declare-fun tp_is_empty!18677 () Bool)

(assert (=> b!3709222 (= e!2297378 tp_is_empty!18677)))

(declare-fun b!3709223 () Bool)

(assert (=> b!3709223 (= e!2297376 (not (not (= s!14932 Nil!39588))))))

(declare-datatypes ((Regex!10831 0))(
  ( (ElementMatch!10831 (c!640687 C!21848)) (Concat!17102 (regOne!22174 Regex!10831) (regTwo!22174 Regex!10831)) (EmptyExpr!10831) (Star!10831 (reg!11160 Regex!10831)) (EmptyLang!10831) (Union!10831 (regOne!22175 Regex!10831) (regTwo!22175 Regex!10831)) )
))
(declare-fun r!26030 () Regex!10831)

(declare-fun matchR!5288 (Regex!10831 List!39712) Bool)

(declare-fun derivative!345 (Regex!10831 List!39712) Regex!10831)

(assert (=> b!3709223 (matchR!5288 (derivative!345 r!26030 s!14932) Nil!39588)))

(declare-datatypes ((Unit!57472 0))(
  ( (Unit!57473) )
))
(declare-fun lt!1296688 () Unit!57472)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!234 (Regex!10831 List!39712) Unit!57472)

(assert (=> b!3709223 (= lt!1296688 (lemmaMatchRIsSameAsWholeDerivativeAndNil!234 r!26030 s!14932))))

(declare-fun b!3709224 () Bool)

(declare-fun tp!1128708 () Bool)

(declare-fun tp!1128709 () Bool)

(assert (=> b!3709224 (= e!2297378 (and tp!1128708 tp!1128709))))

(declare-fun b!3709225 () Bool)

(declare-fun tp!1128710 () Bool)

(assert (=> b!3709225 (= e!2297378 tp!1128710)))

(declare-fun b!3709226 () Bool)

(declare-fun res!1508595 () Bool)

(assert (=> b!3709226 (=> (not res!1508595) (not e!2297376))))

(declare-fun contains!7924 (List!39712 C!21848) Bool)

(declare-fun usedCharacters!1094 (Regex!10831) List!39712)

(assert (=> b!3709226 (= res!1508595 (not (contains!7924 (usedCharacters!1094 r!26030) c!13437)))))

(declare-fun b!3709227 () Bool)

(declare-fun tp!1128711 () Bool)

(declare-fun tp!1128707 () Bool)

(assert (=> b!3709227 (= e!2297378 (and tp!1128711 tp!1128707))))

(declare-fun b!3709228 () Bool)

(declare-fun res!1508596 () Bool)

(assert (=> b!3709228 (=> (not res!1508596) (not e!2297376))))

(assert (=> b!3709228 (= res!1508596 (contains!7924 s!14932 c!13437))))

(declare-fun res!1508594 () Bool)

(assert (=> start!349758 (=> (not res!1508594) (not e!2297376))))

(declare-fun validRegex!4938 (Regex!10831) Bool)

(assert (=> start!349758 (= res!1508594 (validRegex!4938 r!26030))))

(assert (=> start!349758 e!2297376))

(assert (=> start!349758 e!2297378))

(declare-fun e!2297377 () Bool)

(assert (=> start!349758 e!2297377))

(assert (=> start!349758 tp_is_empty!18677))

(declare-fun b!3709229 () Bool)

(declare-fun tp!1128712 () Bool)

(assert (=> b!3709229 (= e!2297377 (and tp_is_empty!18677 tp!1128712))))

(declare-fun b!3709230 () Bool)

(declare-fun res!1508592 () Bool)

(assert (=> b!3709230 (=> (not res!1508592) (not e!2297376))))

(assert (=> b!3709230 (= res!1508592 (matchR!5288 r!26030 s!14932))))

(assert (= (and start!349758 res!1508594) b!3709228))

(assert (= (and b!3709228 res!1508596) b!3709221))

(assert (= (and b!3709221 res!1508593) b!3709226))

(assert (= (and b!3709226 res!1508595) b!3709230))

(assert (= (and b!3709230 res!1508592) b!3709223))

(get-info :version)

(assert (= (and start!349758 ((_ is ElementMatch!10831) r!26030)) b!3709222))

(assert (= (and start!349758 ((_ is Concat!17102) r!26030)) b!3709227))

(assert (= (and start!349758 ((_ is Star!10831) r!26030)) b!3709225))

(assert (= (and start!349758 ((_ is Union!10831) r!26030)) b!3709224))

(assert (= (and start!349758 ((_ is Cons!39588) s!14932)) b!3709229))

(declare-fun m!4217595 () Bool)

(assert (=> b!3709223 m!4217595))

(assert (=> b!3709223 m!4217595))

(declare-fun m!4217597 () Bool)

(assert (=> b!3709223 m!4217597))

(declare-fun m!4217599 () Bool)

(assert (=> b!3709223 m!4217599))

(declare-fun m!4217601 () Bool)

(assert (=> start!349758 m!4217601))

(declare-fun m!4217603 () Bool)

(assert (=> b!3709230 m!4217603))

(declare-fun m!4217605 () Bool)

(assert (=> b!3709226 m!4217605))

(assert (=> b!3709226 m!4217605))

(declare-fun m!4217607 () Bool)

(assert (=> b!3709226 m!4217607))

(declare-fun m!4217609 () Bool)

(assert (=> b!3709221 m!4217609))

(declare-fun m!4217611 () Bool)

(assert (=> b!3709228 m!4217611))

(check-sat (not b!3709225) (not b!3709226) (not b!3709230) (not start!349758) (not b!3709224) (not b!3709228) tp_is_empty!18677 (not b!3709223) (not b!3709227) (not b!3709221) (not b!3709229))
(check-sat)
(get-model)

(declare-fun d!1086863 () Bool)

(declare-fun lt!1296691 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5722 (List!39712) (InoxSet C!21848))

(assert (=> d!1086863 (= lt!1296691 (select (content!5722 (usedCharacters!1094 r!26030)) c!13437))))

(declare-fun e!2297384 () Bool)

(assert (=> d!1086863 (= lt!1296691 e!2297384)))

(declare-fun res!1508601 () Bool)

(assert (=> d!1086863 (=> (not res!1508601) (not e!2297384))))

(assert (=> d!1086863 (= res!1508601 ((_ is Cons!39588) (usedCharacters!1094 r!26030)))))

(assert (=> d!1086863 (= (contains!7924 (usedCharacters!1094 r!26030) c!13437) lt!1296691)))

(declare-fun b!3709235 () Bool)

(declare-fun e!2297383 () Bool)

(assert (=> b!3709235 (= e!2297384 e!2297383)))

(declare-fun res!1508602 () Bool)

(assert (=> b!3709235 (=> res!1508602 e!2297383)))

(assert (=> b!3709235 (= res!1508602 (= (h!45008 (usedCharacters!1094 r!26030)) c!13437))))

(declare-fun b!3709236 () Bool)

(assert (=> b!3709236 (= e!2297383 (contains!7924 (t!302395 (usedCharacters!1094 r!26030)) c!13437))))

(assert (= (and d!1086863 res!1508601) b!3709235))

(assert (= (and b!3709235 (not res!1508602)) b!3709236))

(assert (=> d!1086863 m!4217605))

(declare-fun m!4217613 () Bool)

(assert (=> d!1086863 m!4217613))

(declare-fun m!4217615 () Bool)

(assert (=> d!1086863 m!4217615))

(declare-fun m!4217617 () Bool)

(assert (=> b!3709236 m!4217617))

(assert (=> b!3709226 d!1086863))

(declare-fun b!3709281 () Bool)

(declare-fun e!2297407 () List!39712)

(assert (=> b!3709281 (= e!2297407 (Cons!39588 (c!640687 r!26030) Nil!39588))))

(declare-fun b!3709282 () Bool)

(declare-fun e!2297409 () List!39712)

(assert (=> b!3709282 (= e!2297409 Nil!39588)))

(declare-fun b!3709283 () Bool)

(assert (=> b!3709283 (= e!2297409 e!2297407)))

(declare-fun c!640703 () Bool)

(assert (=> b!3709283 (= c!640703 ((_ is ElementMatch!10831) r!26030))))

(declare-fun b!3709284 () Bool)

(declare-fun c!640704 () Bool)

(assert (=> b!3709284 (= c!640704 ((_ is Star!10831) r!26030))))

(declare-fun e!2297408 () List!39712)

(assert (=> b!3709284 (= e!2297407 e!2297408)))

(declare-fun bm!268082 () Bool)

(declare-fun call!268088 () List!39712)

(declare-fun call!268089 () List!39712)

(assert (=> bm!268082 (= call!268088 call!268089)))

(declare-fun bm!268083 () Bool)

(declare-fun call!268087 () List!39712)

(declare-fun call!268090 () List!39712)

(declare-fun ++!9785 (List!39712 List!39712) List!39712)

(assert (=> bm!268083 (= call!268087 (++!9785 call!268090 call!268088))))

(declare-fun bm!268084 () Bool)

(declare-fun c!640705 () Bool)

(assert (=> bm!268084 (= call!268089 (usedCharacters!1094 (ite c!640704 (reg!11160 r!26030) (ite c!640705 (regTwo!22175 r!26030) (regTwo!22174 r!26030)))))))

(declare-fun d!1086867 () Bool)

(declare-fun c!640702 () Bool)

(assert (=> d!1086867 (= c!640702 (or ((_ is EmptyExpr!10831) r!26030) ((_ is EmptyLang!10831) r!26030)))))

(assert (=> d!1086867 (= (usedCharacters!1094 r!26030) e!2297409)))

(declare-fun b!3709285 () Bool)

(declare-fun e!2297410 () List!39712)

(assert (=> b!3709285 (= e!2297408 e!2297410)))

(assert (=> b!3709285 (= c!640705 ((_ is Union!10831) r!26030))))

(declare-fun b!3709286 () Bool)

(assert (=> b!3709286 (= e!2297410 call!268087)))

(declare-fun b!3709287 () Bool)

(assert (=> b!3709287 (= e!2297408 call!268089)))

(declare-fun bm!268085 () Bool)

(assert (=> bm!268085 (= call!268090 (usedCharacters!1094 (ite c!640705 (regOne!22175 r!26030) (regOne!22174 r!26030))))))

(declare-fun b!3709288 () Bool)

(assert (=> b!3709288 (= e!2297410 call!268087)))

(assert (= (and d!1086867 c!640702) b!3709282))

(assert (= (and d!1086867 (not c!640702)) b!3709283))

(assert (= (and b!3709283 c!640703) b!3709281))

(assert (= (and b!3709283 (not c!640703)) b!3709284))

(assert (= (and b!3709284 c!640704) b!3709287))

(assert (= (and b!3709284 (not c!640704)) b!3709285))

(assert (= (and b!3709285 c!640705) b!3709288))

(assert (= (and b!3709285 (not c!640705)) b!3709286))

(assert (= (or b!3709288 b!3709286) bm!268082))

(assert (= (or b!3709288 b!3709286) bm!268085))

(assert (= (or b!3709288 b!3709286) bm!268083))

(assert (= (or b!3709287 bm!268082) bm!268084))

(declare-fun m!4217619 () Bool)

(assert (=> bm!268083 m!4217619))

(declare-fun m!4217621 () Bool)

(assert (=> bm!268084 m!4217621))

(declare-fun m!4217623 () Bool)

(assert (=> bm!268085 m!4217623))

(assert (=> b!3709226 d!1086867))

(declare-fun d!1086869 () Bool)

(assert (=> d!1086869 (= (head!8009 s!14932) (h!45008 s!14932))))

(assert (=> b!3709221 d!1086869))

(declare-fun b!3709366 () Bool)

(declare-fun res!1508668 () Bool)

(declare-fun e!2297465 () Bool)

(assert (=> b!3709366 (=> res!1508668 e!2297465)))

(assert (=> b!3709366 (= res!1508668 (not ((_ is ElementMatch!10831) r!26030)))))

(declare-fun e!2297467 () Bool)

(assert (=> b!3709366 (= e!2297467 e!2297465)))

(declare-fun b!3709367 () Bool)

(declare-fun res!1508666 () Bool)

(declare-fun e!2297461 () Bool)

(assert (=> b!3709367 (=> (not res!1508666) (not e!2297461))))

(declare-fun call!268103 () Bool)

(assert (=> b!3709367 (= res!1508666 (not call!268103))))

(declare-fun b!3709368 () Bool)

(assert (=> b!3709368 (= e!2297461 (= (head!8009 s!14932) (c!640687 r!26030)))))

(declare-fun d!1086871 () Bool)

(declare-fun e!2297466 () Bool)

(assert (=> d!1086871 e!2297466))

(declare-fun c!640722 () Bool)

(assert (=> d!1086871 (= c!640722 ((_ is EmptyExpr!10831) r!26030))))

(declare-fun lt!1296701 () Bool)

(declare-fun e!2297463 () Bool)

(assert (=> d!1086871 (= lt!1296701 e!2297463)))

(declare-fun c!640721 () Bool)

(declare-fun isEmpty!23492 (List!39712) Bool)

(assert (=> d!1086871 (= c!640721 (isEmpty!23492 s!14932))))

(assert (=> d!1086871 (validRegex!4938 r!26030)))

(assert (=> d!1086871 (= (matchR!5288 r!26030 s!14932) lt!1296701)))

(declare-fun b!3709369 () Bool)

(assert (=> b!3709369 (= e!2297467 (not lt!1296701))))

(declare-fun b!3709370 () Bool)

(assert (=> b!3709370 (= e!2297466 (= lt!1296701 call!268103))))

(declare-fun bm!268098 () Bool)

(assert (=> bm!268098 (= call!268103 (isEmpty!23492 s!14932))))

(declare-fun b!3709371 () Bool)

(declare-fun res!1508671 () Bool)

(assert (=> b!3709371 (=> res!1508671 e!2297465)))

(assert (=> b!3709371 (= res!1508671 e!2297461)))

(declare-fun res!1508673 () Bool)

(assert (=> b!3709371 (=> (not res!1508673) (not e!2297461))))

(assert (=> b!3709371 (= res!1508673 lt!1296701)))

(declare-fun b!3709372 () Bool)

(declare-fun derivativeStep!3300 (Regex!10831 C!21848) Regex!10831)

(declare-fun tail!5738 (List!39712) List!39712)

(assert (=> b!3709372 (= e!2297463 (matchR!5288 (derivativeStep!3300 r!26030 (head!8009 s!14932)) (tail!5738 s!14932)))))

(declare-fun b!3709373 () Bool)

(declare-fun e!2297462 () Bool)

(declare-fun e!2297464 () Bool)

(assert (=> b!3709373 (= e!2297462 e!2297464)))

(declare-fun res!1508667 () Bool)

(assert (=> b!3709373 (=> res!1508667 e!2297464)))

(assert (=> b!3709373 (= res!1508667 call!268103)))

(declare-fun b!3709374 () Bool)

(declare-fun res!1508672 () Bool)

(assert (=> b!3709374 (=> res!1508672 e!2297464)))

(assert (=> b!3709374 (= res!1508672 (not (isEmpty!23492 (tail!5738 s!14932))))))

(declare-fun b!3709375 () Bool)

(assert (=> b!3709375 (= e!2297466 e!2297467)))

(declare-fun c!640723 () Bool)

(assert (=> b!3709375 (= c!640723 ((_ is EmptyLang!10831) r!26030))))

(declare-fun b!3709376 () Bool)

(declare-fun nullable!3758 (Regex!10831) Bool)

(assert (=> b!3709376 (= e!2297463 (nullable!3758 r!26030))))

(declare-fun b!3709377 () Bool)

(declare-fun res!1508670 () Bool)

(assert (=> b!3709377 (=> (not res!1508670) (not e!2297461))))

(assert (=> b!3709377 (= res!1508670 (isEmpty!23492 (tail!5738 s!14932)))))

(declare-fun b!3709378 () Bool)

(assert (=> b!3709378 (= e!2297464 (not (= (head!8009 s!14932) (c!640687 r!26030))))))

(declare-fun b!3709379 () Bool)

(assert (=> b!3709379 (= e!2297465 e!2297462)))

(declare-fun res!1508669 () Bool)

(assert (=> b!3709379 (=> (not res!1508669) (not e!2297462))))

(assert (=> b!3709379 (= res!1508669 (not lt!1296701))))

(assert (= (and d!1086871 c!640721) b!3709376))

(assert (= (and d!1086871 (not c!640721)) b!3709372))

(assert (= (and d!1086871 c!640722) b!3709370))

(assert (= (and d!1086871 (not c!640722)) b!3709375))

(assert (= (and b!3709375 c!640723) b!3709369))

(assert (= (and b!3709375 (not c!640723)) b!3709366))

(assert (= (and b!3709366 (not res!1508668)) b!3709371))

(assert (= (and b!3709371 res!1508673) b!3709367))

(assert (= (and b!3709367 res!1508666) b!3709377))

(assert (= (and b!3709377 res!1508670) b!3709368))

(assert (= (and b!3709371 (not res!1508671)) b!3709379))

(assert (= (and b!3709379 res!1508669) b!3709373))

(assert (= (and b!3709373 (not res!1508667)) b!3709374))

(assert (= (and b!3709374 (not res!1508672)) b!3709378))

(assert (= (or b!3709370 b!3709373 b!3709367) bm!268098))

(declare-fun m!4217655 () Bool)

(assert (=> b!3709374 m!4217655))

(assert (=> b!3709374 m!4217655))

(declare-fun m!4217657 () Bool)

(assert (=> b!3709374 m!4217657))

(declare-fun m!4217659 () Bool)

(assert (=> d!1086871 m!4217659))

(assert (=> d!1086871 m!4217601))

(assert (=> bm!268098 m!4217659))

(assert (=> b!3709372 m!4217609))

(assert (=> b!3709372 m!4217609))

(declare-fun m!4217661 () Bool)

(assert (=> b!3709372 m!4217661))

(assert (=> b!3709372 m!4217655))

(assert (=> b!3709372 m!4217661))

(assert (=> b!3709372 m!4217655))

(declare-fun m!4217663 () Bool)

(assert (=> b!3709372 m!4217663))

(assert (=> b!3709377 m!4217655))

(assert (=> b!3709377 m!4217655))

(assert (=> b!3709377 m!4217657))

(declare-fun m!4217665 () Bool)

(assert (=> b!3709376 m!4217665))

(assert (=> b!3709368 m!4217609))

(assert (=> b!3709378 m!4217609))

(assert (=> b!3709230 d!1086871))

(declare-fun bm!268117 () Bool)

(declare-fun call!268123 () Bool)

(declare-fun call!268122 () Bool)

(assert (=> bm!268117 (= call!268123 call!268122)))

(declare-fun b!3709422 () Bool)

(declare-fun e!2297500 () Bool)

(declare-fun e!2297498 () Bool)

(assert (=> b!3709422 (= e!2297500 e!2297498)))

(declare-fun res!1508686 () Bool)

(assert (=> b!3709422 (=> (not res!1508686) (not e!2297498))))

(assert (=> b!3709422 (= res!1508686 call!268123)))

(declare-fun b!3709423 () Bool)

(declare-fun call!268124 () Bool)

(assert (=> b!3709423 (= e!2297498 call!268124)))

(declare-fun d!1086881 () Bool)

(declare-fun res!1508685 () Bool)

(declare-fun e!2297499 () Bool)

(assert (=> d!1086881 (=> res!1508685 e!2297499)))

(assert (=> d!1086881 (= res!1508685 ((_ is ElementMatch!10831) r!26030))))

(assert (=> d!1086881 (= (validRegex!4938 r!26030) e!2297499)))

(declare-fun b!3709424 () Bool)

(declare-fun res!1508688 () Bool)

(declare-fun e!2297495 () Bool)

(assert (=> b!3709424 (=> (not res!1508688) (not e!2297495))))

(assert (=> b!3709424 (= res!1508688 call!268124)))

(declare-fun e!2297497 () Bool)

(assert (=> b!3709424 (= e!2297497 e!2297495)))

(declare-fun b!3709425 () Bool)

(declare-fun e!2297496 () Bool)

(declare-fun e!2297494 () Bool)

(assert (=> b!3709425 (= e!2297496 e!2297494)))

(declare-fun res!1508684 () Bool)

(assert (=> b!3709425 (= res!1508684 (not (nullable!3758 (reg!11160 r!26030))))))

(assert (=> b!3709425 (=> (not res!1508684) (not e!2297494))))

(declare-fun bm!268118 () Bool)

(declare-fun c!640741 () Bool)

(assert (=> bm!268118 (= call!268124 (validRegex!4938 (ite c!640741 (regOne!22175 r!26030) (regTwo!22174 r!26030))))))

(declare-fun b!3709426 () Bool)

(declare-fun res!1508687 () Bool)

(assert (=> b!3709426 (=> res!1508687 e!2297500)))

(assert (=> b!3709426 (= res!1508687 (not ((_ is Concat!17102) r!26030)))))

(assert (=> b!3709426 (= e!2297497 e!2297500)))

(declare-fun b!3709427 () Bool)

(assert (=> b!3709427 (= e!2297495 call!268123)))

(declare-fun b!3709428 () Bool)

(assert (=> b!3709428 (= e!2297494 call!268122)))

(declare-fun b!3709429 () Bool)

(assert (=> b!3709429 (= e!2297499 e!2297496)))

(declare-fun c!640740 () Bool)

(assert (=> b!3709429 (= c!640740 ((_ is Star!10831) r!26030))))

(declare-fun b!3709430 () Bool)

(assert (=> b!3709430 (= e!2297496 e!2297497)))

(assert (=> b!3709430 (= c!640741 ((_ is Union!10831) r!26030))))

(declare-fun bm!268119 () Bool)

(assert (=> bm!268119 (= call!268122 (validRegex!4938 (ite c!640740 (reg!11160 r!26030) (ite c!640741 (regTwo!22175 r!26030) (regOne!22174 r!26030)))))))

(assert (= (and d!1086881 (not res!1508685)) b!3709429))

(assert (= (and b!3709429 c!640740) b!3709425))

(assert (= (and b!3709429 (not c!640740)) b!3709430))

(assert (= (and b!3709425 res!1508684) b!3709428))

(assert (= (and b!3709430 c!640741) b!3709424))

(assert (= (and b!3709430 (not c!640741)) b!3709426))

(assert (= (and b!3709424 res!1508688) b!3709427))

(assert (= (and b!3709426 (not res!1508687)) b!3709422))

(assert (= (and b!3709422 res!1508686) b!3709423))

(assert (= (or b!3709427 b!3709422) bm!268117))

(assert (= (or b!3709424 b!3709423) bm!268118))

(assert (= (or b!3709428 bm!268117) bm!268119))

(declare-fun m!4217673 () Bool)

(assert (=> b!3709425 m!4217673))

(declare-fun m!4217675 () Bool)

(assert (=> bm!268118 m!4217675))

(declare-fun m!4217677 () Bool)

(assert (=> bm!268119 m!4217677))

(assert (=> start!349758 d!1086881))

(declare-fun d!1086885 () Bool)

(declare-fun lt!1296703 () Bool)

(assert (=> d!1086885 (= lt!1296703 (select (content!5722 s!14932) c!13437))))

(declare-fun e!2297509 () Bool)

(assert (=> d!1086885 (= lt!1296703 e!2297509)))

(declare-fun res!1508697 () Bool)

(assert (=> d!1086885 (=> (not res!1508697) (not e!2297509))))

(assert (=> d!1086885 (= res!1508697 ((_ is Cons!39588) s!14932))))

(assert (=> d!1086885 (= (contains!7924 s!14932 c!13437) lt!1296703)))

(declare-fun b!3709445 () Bool)

(declare-fun e!2297508 () Bool)

(assert (=> b!3709445 (= e!2297509 e!2297508)))

(declare-fun res!1508698 () Bool)

(assert (=> b!3709445 (=> res!1508698 e!2297508)))

(assert (=> b!3709445 (= res!1508698 (= (h!45008 s!14932) c!13437))))

(declare-fun b!3709446 () Bool)

(assert (=> b!3709446 (= e!2297508 (contains!7924 (t!302395 s!14932) c!13437))))

(assert (= (and d!1086885 res!1508697) b!3709445))

(assert (= (and b!3709445 (not res!1508698)) b!3709446))

(declare-fun m!4217693 () Bool)

(assert (=> d!1086885 m!4217693))

(declare-fun m!4217695 () Bool)

(assert (=> d!1086885 m!4217695))

(declare-fun m!4217699 () Bool)

(assert (=> b!3709446 m!4217699))

(assert (=> b!3709228 d!1086885))

(declare-fun b!3709447 () Bool)

(declare-fun res!1508701 () Bool)

(declare-fun e!2297514 () Bool)

(assert (=> b!3709447 (=> res!1508701 e!2297514)))

(assert (=> b!3709447 (= res!1508701 (not ((_ is ElementMatch!10831) (derivative!345 r!26030 s!14932))))))

(declare-fun e!2297516 () Bool)

(assert (=> b!3709447 (= e!2297516 e!2297514)))

(declare-fun b!3709448 () Bool)

(declare-fun res!1508699 () Bool)

(declare-fun e!2297510 () Bool)

(assert (=> b!3709448 (=> (not res!1508699) (not e!2297510))))

(declare-fun call!268126 () Bool)

(assert (=> b!3709448 (= res!1508699 (not call!268126))))

(declare-fun b!3709449 () Bool)

(assert (=> b!3709449 (= e!2297510 (= (head!8009 Nil!39588) (c!640687 (derivative!345 r!26030 s!14932))))))

(declare-fun d!1086887 () Bool)

(declare-fun e!2297515 () Bool)

(assert (=> d!1086887 e!2297515))

(declare-fun c!640746 () Bool)

(assert (=> d!1086887 (= c!640746 ((_ is EmptyExpr!10831) (derivative!345 r!26030 s!14932)))))

(declare-fun lt!1296704 () Bool)

(declare-fun e!2297512 () Bool)

(assert (=> d!1086887 (= lt!1296704 e!2297512)))

(declare-fun c!640745 () Bool)

(assert (=> d!1086887 (= c!640745 (isEmpty!23492 Nil!39588))))

(assert (=> d!1086887 (validRegex!4938 (derivative!345 r!26030 s!14932))))

(assert (=> d!1086887 (= (matchR!5288 (derivative!345 r!26030 s!14932) Nil!39588) lt!1296704)))

(declare-fun b!3709450 () Bool)

(assert (=> b!3709450 (= e!2297516 (not lt!1296704))))

(declare-fun b!3709451 () Bool)

(assert (=> b!3709451 (= e!2297515 (= lt!1296704 call!268126))))

(declare-fun bm!268121 () Bool)

(assert (=> bm!268121 (= call!268126 (isEmpty!23492 Nil!39588))))

(declare-fun b!3709452 () Bool)

(declare-fun res!1508704 () Bool)

(assert (=> b!3709452 (=> res!1508704 e!2297514)))

(assert (=> b!3709452 (= res!1508704 e!2297510)))

(declare-fun res!1508706 () Bool)

(assert (=> b!3709452 (=> (not res!1508706) (not e!2297510))))

(assert (=> b!3709452 (= res!1508706 lt!1296704)))

(declare-fun b!3709453 () Bool)

(assert (=> b!3709453 (= e!2297512 (matchR!5288 (derivativeStep!3300 (derivative!345 r!26030 s!14932) (head!8009 Nil!39588)) (tail!5738 Nil!39588)))))

(declare-fun b!3709454 () Bool)

(declare-fun e!2297511 () Bool)

(declare-fun e!2297513 () Bool)

(assert (=> b!3709454 (= e!2297511 e!2297513)))

(declare-fun res!1508700 () Bool)

(assert (=> b!3709454 (=> res!1508700 e!2297513)))

(assert (=> b!3709454 (= res!1508700 call!268126)))

(declare-fun b!3709455 () Bool)

(declare-fun res!1508705 () Bool)

(assert (=> b!3709455 (=> res!1508705 e!2297513)))

(assert (=> b!3709455 (= res!1508705 (not (isEmpty!23492 (tail!5738 Nil!39588))))))

(declare-fun b!3709456 () Bool)

(assert (=> b!3709456 (= e!2297515 e!2297516)))

(declare-fun c!640747 () Bool)

(assert (=> b!3709456 (= c!640747 ((_ is EmptyLang!10831) (derivative!345 r!26030 s!14932)))))

(declare-fun b!3709457 () Bool)

(assert (=> b!3709457 (= e!2297512 (nullable!3758 (derivative!345 r!26030 s!14932)))))

(declare-fun b!3709458 () Bool)

(declare-fun res!1508703 () Bool)

(assert (=> b!3709458 (=> (not res!1508703) (not e!2297510))))

(assert (=> b!3709458 (= res!1508703 (isEmpty!23492 (tail!5738 Nil!39588)))))

(declare-fun b!3709459 () Bool)

(assert (=> b!3709459 (= e!2297513 (not (= (head!8009 Nil!39588) (c!640687 (derivative!345 r!26030 s!14932)))))))

(declare-fun b!3709460 () Bool)

(assert (=> b!3709460 (= e!2297514 e!2297511)))

(declare-fun res!1508702 () Bool)

(assert (=> b!3709460 (=> (not res!1508702) (not e!2297511))))

(assert (=> b!3709460 (= res!1508702 (not lt!1296704))))

(assert (= (and d!1086887 c!640745) b!3709457))

(assert (= (and d!1086887 (not c!640745)) b!3709453))

(assert (= (and d!1086887 c!640746) b!3709451))

(assert (= (and d!1086887 (not c!640746)) b!3709456))

(assert (= (and b!3709456 c!640747) b!3709450))

(assert (= (and b!3709456 (not c!640747)) b!3709447))

(assert (= (and b!3709447 (not res!1508701)) b!3709452))

(assert (= (and b!3709452 res!1508706) b!3709448))

(assert (= (and b!3709448 res!1508699) b!3709458))

(assert (= (and b!3709458 res!1508703) b!3709449))

(assert (= (and b!3709452 (not res!1508704)) b!3709460))

(assert (= (and b!3709460 res!1508702) b!3709454))

(assert (= (and b!3709454 (not res!1508700)) b!3709455))

(assert (= (and b!3709455 (not res!1508705)) b!3709459))

(assert (= (or b!3709451 b!3709454 b!3709448) bm!268121))

(declare-fun m!4217701 () Bool)

(assert (=> b!3709455 m!4217701))

(assert (=> b!3709455 m!4217701))

(declare-fun m!4217703 () Bool)

(assert (=> b!3709455 m!4217703))

(declare-fun m!4217705 () Bool)

(assert (=> d!1086887 m!4217705))

(assert (=> d!1086887 m!4217595))

(declare-fun m!4217707 () Bool)

(assert (=> d!1086887 m!4217707))

(assert (=> bm!268121 m!4217705))

(declare-fun m!4217709 () Bool)

(assert (=> b!3709453 m!4217709))

(assert (=> b!3709453 m!4217595))

(assert (=> b!3709453 m!4217709))

(declare-fun m!4217711 () Bool)

(assert (=> b!3709453 m!4217711))

(assert (=> b!3709453 m!4217701))

(assert (=> b!3709453 m!4217711))

(assert (=> b!3709453 m!4217701))

(declare-fun m!4217713 () Bool)

(assert (=> b!3709453 m!4217713))

(assert (=> b!3709458 m!4217701))

(assert (=> b!3709458 m!4217701))

(assert (=> b!3709458 m!4217703))

(assert (=> b!3709457 m!4217595))

(declare-fun m!4217715 () Bool)

(assert (=> b!3709457 m!4217715))

(assert (=> b!3709449 m!4217709))

(assert (=> b!3709459 m!4217709))

(assert (=> b!3709223 d!1086887))

(declare-fun d!1086891 () Bool)

(declare-fun lt!1296710 () Regex!10831)

(assert (=> d!1086891 (validRegex!4938 lt!1296710)))

(declare-fun e!2297522 () Regex!10831)

(assert (=> d!1086891 (= lt!1296710 e!2297522)))

(declare-fun c!640753 () Bool)

(assert (=> d!1086891 (= c!640753 ((_ is Cons!39588) s!14932))))

(assert (=> d!1086891 (validRegex!4938 r!26030)))

(assert (=> d!1086891 (= (derivative!345 r!26030 s!14932) lt!1296710)))

(declare-fun b!3709471 () Bool)

(assert (=> b!3709471 (= e!2297522 (derivative!345 (derivativeStep!3300 r!26030 (h!45008 s!14932)) (t!302395 s!14932)))))

(declare-fun b!3709472 () Bool)

(assert (=> b!3709472 (= e!2297522 r!26030)))

(assert (= (and d!1086891 c!640753) b!3709471))

(assert (= (and d!1086891 (not c!640753)) b!3709472))

(declare-fun m!4217723 () Bool)

(assert (=> d!1086891 m!4217723))

(assert (=> d!1086891 m!4217601))

(declare-fun m!4217725 () Bool)

(assert (=> b!3709471 m!4217725))

(assert (=> b!3709471 m!4217725))

(declare-fun m!4217727 () Bool)

(assert (=> b!3709471 m!4217727))

(assert (=> b!3709223 d!1086891))

(declare-fun d!1086895 () Bool)

(assert (=> d!1086895 (= (matchR!5288 r!26030 s!14932) (matchR!5288 (derivative!345 r!26030 s!14932) Nil!39588))))

(declare-fun lt!1296716 () Unit!57472)

(declare-fun choose!22169 (Regex!10831 List!39712) Unit!57472)

(assert (=> d!1086895 (= lt!1296716 (choose!22169 r!26030 s!14932))))

(assert (=> d!1086895 (validRegex!4938 r!26030)))

(assert (=> d!1086895 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!234 r!26030 s!14932) lt!1296716)))

(declare-fun bs!574713 () Bool)

(assert (= bs!574713 d!1086895))

(assert (=> bs!574713 m!4217595))

(assert (=> bs!574713 m!4217597))

(assert (=> bs!574713 m!4217603))

(declare-fun m!4217731 () Bool)

(assert (=> bs!574713 m!4217731))

(assert (=> bs!574713 m!4217595))

(assert (=> bs!574713 m!4217601))

(assert (=> b!3709223 d!1086895))

(declare-fun b!3709520 () Bool)

(declare-fun e!2297535 () Bool)

(declare-fun tp!1128765 () Bool)

(assert (=> b!3709520 (= e!2297535 tp!1128765)))

(declare-fun b!3709519 () Bool)

(declare-fun tp!1128763 () Bool)

(declare-fun tp!1128761 () Bool)

(assert (=> b!3709519 (= e!2297535 (and tp!1128763 tp!1128761))))

(declare-fun b!3709518 () Bool)

(assert (=> b!3709518 (= e!2297535 tp_is_empty!18677)))

(assert (=> b!3709227 (= tp!1128711 e!2297535)))

(declare-fun b!3709521 () Bool)

(declare-fun tp!1128764 () Bool)

(declare-fun tp!1128762 () Bool)

(assert (=> b!3709521 (= e!2297535 (and tp!1128764 tp!1128762))))

(assert (= (and b!3709227 ((_ is ElementMatch!10831) (regOne!22174 r!26030))) b!3709518))

(assert (= (and b!3709227 ((_ is Concat!17102) (regOne!22174 r!26030))) b!3709519))

(assert (= (and b!3709227 ((_ is Star!10831) (regOne!22174 r!26030))) b!3709520))

(assert (= (and b!3709227 ((_ is Union!10831) (regOne!22174 r!26030))) b!3709521))

(declare-fun b!3709524 () Bool)

(declare-fun e!2297536 () Bool)

(declare-fun tp!1128770 () Bool)

(assert (=> b!3709524 (= e!2297536 tp!1128770)))

(declare-fun b!3709523 () Bool)

(declare-fun tp!1128768 () Bool)

(declare-fun tp!1128766 () Bool)

(assert (=> b!3709523 (= e!2297536 (and tp!1128768 tp!1128766))))

(declare-fun b!3709522 () Bool)

(assert (=> b!3709522 (= e!2297536 tp_is_empty!18677)))

(assert (=> b!3709227 (= tp!1128707 e!2297536)))

(declare-fun b!3709525 () Bool)

(declare-fun tp!1128769 () Bool)

(declare-fun tp!1128767 () Bool)

(assert (=> b!3709525 (= e!2297536 (and tp!1128769 tp!1128767))))

(assert (= (and b!3709227 ((_ is ElementMatch!10831) (regTwo!22174 r!26030))) b!3709522))

(assert (= (and b!3709227 ((_ is Concat!17102) (regTwo!22174 r!26030))) b!3709523))

(assert (= (and b!3709227 ((_ is Star!10831) (regTwo!22174 r!26030))) b!3709524))

(assert (= (and b!3709227 ((_ is Union!10831) (regTwo!22174 r!26030))) b!3709525))

(declare-fun b!3709528 () Bool)

(declare-fun e!2297537 () Bool)

(declare-fun tp!1128775 () Bool)

(assert (=> b!3709528 (= e!2297537 tp!1128775)))

(declare-fun b!3709527 () Bool)

(declare-fun tp!1128773 () Bool)

(declare-fun tp!1128771 () Bool)

(assert (=> b!3709527 (= e!2297537 (and tp!1128773 tp!1128771))))

(declare-fun b!3709526 () Bool)

(assert (=> b!3709526 (= e!2297537 tp_is_empty!18677)))

(assert (=> b!3709225 (= tp!1128710 e!2297537)))

(declare-fun b!3709529 () Bool)

(declare-fun tp!1128774 () Bool)

(declare-fun tp!1128772 () Bool)

(assert (=> b!3709529 (= e!2297537 (and tp!1128774 tp!1128772))))

(assert (= (and b!3709225 ((_ is ElementMatch!10831) (reg!11160 r!26030))) b!3709526))

(assert (= (and b!3709225 ((_ is Concat!17102) (reg!11160 r!26030))) b!3709527))

(assert (= (and b!3709225 ((_ is Star!10831) (reg!11160 r!26030))) b!3709528))

(assert (= (and b!3709225 ((_ is Union!10831) (reg!11160 r!26030))) b!3709529))

(declare-fun b!3709534 () Bool)

(declare-fun e!2297540 () Bool)

(declare-fun tp!1128778 () Bool)

(assert (=> b!3709534 (= e!2297540 (and tp_is_empty!18677 tp!1128778))))

(assert (=> b!3709229 (= tp!1128712 e!2297540)))

(assert (= (and b!3709229 ((_ is Cons!39588) (t!302395 s!14932))) b!3709534))

(declare-fun b!3709537 () Bool)

(declare-fun e!2297541 () Bool)

(declare-fun tp!1128783 () Bool)

(assert (=> b!3709537 (= e!2297541 tp!1128783)))

(declare-fun b!3709536 () Bool)

(declare-fun tp!1128781 () Bool)

(declare-fun tp!1128779 () Bool)

(assert (=> b!3709536 (= e!2297541 (and tp!1128781 tp!1128779))))

(declare-fun b!3709535 () Bool)

(assert (=> b!3709535 (= e!2297541 tp_is_empty!18677)))

(assert (=> b!3709224 (= tp!1128708 e!2297541)))

(declare-fun b!3709538 () Bool)

(declare-fun tp!1128782 () Bool)

(declare-fun tp!1128780 () Bool)

(assert (=> b!3709538 (= e!2297541 (and tp!1128782 tp!1128780))))

(assert (= (and b!3709224 ((_ is ElementMatch!10831) (regOne!22175 r!26030))) b!3709535))

(assert (= (and b!3709224 ((_ is Concat!17102) (regOne!22175 r!26030))) b!3709536))

(assert (= (and b!3709224 ((_ is Star!10831) (regOne!22175 r!26030))) b!3709537))

(assert (= (and b!3709224 ((_ is Union!10831) (regOne!22175 r!26030))) b!3709538))

(declare-fun b!3709541 () Bool)

(declare-fun e!2297542 () Bool)

(declare-fun tp!1128788 () Bool)

(assert (=> b!3709541 (= e!2297542 tp!1128788)))

(declare-fun b!3709540 () Bool)

(declare-fun tp!1128786 () Bool)

(declare-fun tp!1128784 () Bool)

(assert (=> b!3709540 (= e!2297542 (and tp!1128786 tp!1128784))))

(declare-fun b!3709539 () Bool)

(assert (=> b!3709539 (= e!2297542 tp_is_empty!18677)))

(assert (=> b!3709224 (= tp!1128709 e!2297542)))

(declare-fun b!3709542 () Bool)

(declare-fun tp!1128787 () Bool)

(declare-fun tp!1128785 () Bool)

(assert (=> b!3709542 (= e!2297542 (and tp!1128787 tp!1128785))))

(assert (= (and b!3709224 ((_ is ElementMatch!10831) (regTwo!22175 r!26030))) b!3709539))

(assert (= (and b!3709224 ((_ is Concat!17102) (regTwo!22175 r!26030))) b!3709540))

(assert (= (and b!3709224 ((_ is Star!10831) (regTwo!22175 r!26030))) b!3709541))

(assert (= (and b!3709224 ((_ is Union!10831) (regTwo!22175 r!26030))) b!3709542))

(check-sat (not b!3709525) (not b!3709527) (not bm!268119) (not b!3709455) (not bm!268098) (not d!1086871) (not b!3709519) (not b!3709520) (not bm!268085) (not b!3709536) (not b!3709449) (not b!3709523) (not b!3709529) (not b!3709540) (not b!3709459) (not b!3709372) (not b!3709446) (not d!1086895) (not b!3709524) (not b!3709541) (not d!1086885) (not b!3709453) (not b!3709457) (not b!3709377) (not b!3709534) (not b!3709236) (not b!3709368) (not bm!268118) (not b!3709458) (not bm!268083) (not d!1086887) (not b!3709376) (not b!3709471) (not b!3709425) tp_is_empty!18677 (not b!3709521) (not d!1086891) (not bm!268121) (not d!1086863) (not b!3709542) (not bm!268084) (not b!3709528) (not b!3709378) (not b!3709374) (not b!3709538) (not b!3709537))
(check-sat)
