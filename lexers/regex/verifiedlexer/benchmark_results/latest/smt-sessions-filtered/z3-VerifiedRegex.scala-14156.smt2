; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743202 () Bool)

(assert start!743202)

(declare-fun b!7850308 () Bool)

(declare-fun res!3121827 () Bool)

(declare-fun e!4640566 () Bool)

(assert (=> b!7850308 (=> (not res!3121827) (not e!4640566))))

(declare-datatypes ((C!42496 0))(
  ( (C!42497 (val!31710 Int)) )
))
(declare-datatypes ((List!73944 0))(
  ( (Nil!73820) (Cons!73820 (h!80268 C!42496) (t!388679 List!73944)) )
))
(declare-fun s1!4084 () List!73944)

(get-info :version)

(assert (=> b!7850308 (= res!3121827 ((_ is Cons!73820) s1!4084))))

(declare-fun b!7850309 () Bool)

(declare-fun e!4640567 () Bool)

(declare-fun tp!2324761 () Bool)

(declare-fun tp!2324759 () Bool)

(assert (=> b!7850309 (= e!4640567 (and tp!2324761 tp!2324759))))

(declare-fun b!7850310 () Bool)

(declare-fun tp!2324762 () Bool)

(declare-fun tp!2324757 () Bool)

(assert (=> b!7850310 (= e!4640567 (and tp!2324762 tp!2324757))))

(declare-fun b!7850311 () Bool)

(declare-fun e!4640569 () Bool)

(declare-fun e!4640570 () Bool)

(assert (=> b!7850311 (= e!4640569 e!4640570)))

(declare-fun res!3121826 () Bool)

(assert (=> b!7850311 (=> res!3121826 e!4640570)))

(declare-datatypes ((Regex!21085 0))(
  ( (ElementMatch!21085 (c!1442851 C!42496)) (Concat!29930 (regOne!42682 Regex!21085) (regTwo!42682 Regex!21085)) (EmptyExpr!21085) (Star!21085 (reg!21414 Regex!21085)) (EmptyLang!21085) (Union!21085 (regOne!42683 Regex!21085) (regTwo!42683 Regex!21085)) )
))
(declare-fun lt!2679665 () Regex!21085)

(declare-fun lt!2679661 () Regex!21085)

(declare-fun derivativeStep!6320 (Regex!21085 C!42496) Regex!21085)

(assert (=> b!7850311 (= res!3121826 (not (= (derivativeStep!6320 lt!2679665 (h!80268 s1!4084)) lt!2679661)))))

(declare-fun lt!2679667 () Regex!21085)

(assert (=> b!7850311 (= lt!2679661 (Union!21085 lt!2679667 EmptyLang!21085))))

(declare-fun r1!6227 () Regex!21085)

(declare-fun r2!6165 () Regex!21085)

(assert (=> b!7850311 (= lt!2679665 (Concat!29930 r1!6227 r2!6165))))

(declare-fun s2!3706 () List!73944)

(declare-fun b!7850312 () Bool)

(declare-fun matchR!10521 (Regex!21085 List!73944) Bool)

(declare-fun ++!18093 (List!73944 List!73944) List!73944)

(assert (=> b!7850312 (= e!4640570 (matchR!10521 lt!2679665 (++!18093 s1!4084 s2!3706)))))

(declare-fun lt!2679663 () List!73944)

(assert (=> b!7850312 (matchR!10521 lt!2679661 lt!2679663)))

(declare-datatypes ((Unit!168912 0))(
  ( (Unit!168913) )
))
(declare-fun lt!2679662 () Unit!168912)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!126 (Regex!21085 Regex!21085 List!73944) Unit!168912)

(assert (=> b!7850312 (= lt!2679662 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!126 lt!2679667 EmptyLang!21085 lt!2679663))))

(declare-fun b!7850313 () Bool)

(declare-fun e!4640565 () Bool)

(declare-fun tp!2324755 () Bool)

(assert (=> b!7850313 (= e!4640565 tp!2324755)))

(declare-fun b!7850314 () Bool)

(declare-fun res!3121828 () Bool)

(assert (=> b!7850314 (=> (not res!3121828) (not e!4640566))))

(declare-fun validRegex!11495 (Regex!21085) Bool)

(assert (=> b!7850314 (= res!3121828 (validRegex!11495 r2!6165))))

(declare-fun b!7850315 () Bool)

(declare-fun tp!2324754 () Bool)

(declare-fun tp!2324763 () Bool)

(assert (=> b!7850315 (= e!4640565 (and tp!2324754 tp!2324763))))

(declare-fun b!7850316 () Bool)

(assert (=> b!7850316 (= e!4640566 (not e!4640569))))

(declare-fun res!3121825 () Bool)

(assert (=> b!7850316 (=> res!3121825 e!4640569)))

(declare-fun nullable!9357 (Regex!21085) Bool)

(assert (=> b!7850316 (= res!3121825 (nullable!9357 r1!6227))))

(assert (=> b!7850316 (matchR!10521 lt!2679667 lt!2679663)))

(assert (=> b!7850316 (= lt!2679663 (++!18093 (t!388679 s1!4084) s2!3706))))

(declare-fun lt!2679666 () Regex!21085)

(assert (=> b!7850316 (= lt!2679667 (Concat!29930 lt!2679666 r2!6165))))

(declare-fun lt!2679664 () Unit!168912)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!452 (Regex!21085 Regex!21085 List!73944 List!73944) Unit!168912)

(assert (=> b!7850316 (= lt!2679664 (lemmaTwoRegexMatchThenConcatMatchesConcatString!452 lt!2679666 r2!6165 (t!388679 s1!4084) s2!3706))))

(assert (=> b!7850316 (= lt!2679666 (derivativeStep!6320 r1!6227 (h!80268 s1!4084)))))

(declare-fun b!7850317 () Bool)

(declare-fun tp!2324756 () Bool)

(declare-fun tp!2324764 () Bool)

(assert (=> b!7850317 (= e!4640565 (and tp!2324756 tp!2324764))))

(declare-fun b!7850318 () Bool)

(declare-fun e!4640571 () Bool)

(declare-fun tp_is_empty!52569 () Bool)

(declare-fun tp!2324758 () Bool)

(assert (=> b!7850318 (= e!4640571 (and tp_is_empty!52569 tp!2324758))))

(declare-fun b!7850319 () Bool)

(declare-fun res!3121824 () Bool)

(assert (=> b!7850319 (=> (not res!3121824) (not e!4640566))))

(assert (=> b!7850319 (= res!3121824 (matchR!10521 r1!6227 s1!4084))))

(declare-fun b!7850320 () Bool)

(declare-fun res!3121829 () Bool)

(assert (=> b!7850320 (=> (not res!3121829) (not e!4640566))))

(assert (=> b!7850320 (= res!3121829 (matchR!10521 r2!6165 s2!3706))))

(declare-fun res!3121830 () Bool)

(assert (=> start!743202 (=> (not res!3121830) (not e!4640566))))

(assert (=> start!743202 (= res!3121830 (validRegex!11495 r1!6227))))

(assert (=> start!743202 e!4640566))

(assert (=> start!743202 e!4640567))

(assert (=> start!743202 e!4640565))

(assert (=> start!743202 e!4640571))

(declare-fun e!4640568 () Bool)

(assert (=> start!743202 e!4640568))

(declare-fun b!7850321 () Bool)

(declare-fun tp!2324760 () Bool)

(assert (=> b!7850321 (= e!4640568 (and tp_is_empty!52569 tp!2324760))))

(declare-fun b!7850322 () Bool)

(assert (=> b!7850322 (= e!4640565 tp_is_empty!52569)))

(declare-fun b!7850323 () Bool)

(declare-fun tp!2324753 () Bool)

(assert (=> b!7850323 (= e!4640567 tp!2324753)))

(declare-fun b!7850324 () Bool)

(assert (=> b!7850324 (= e!4640567 tp_is_empty!52569)))

(assert (= (and start!743202 res!3121830) b!7850314))

(assert (= (and b!7850314 res!3121828) b!7850319))

(assert (= (and b!7850319 res!3121824) b!7850320))

(assert (= (and b!7850320 res!3121829) b!7850308))

(assert (= (and b!7850308 res!3121827) b!7850316))

(assert (= (and b!7850316 (not res!3121825)) b!7850311))

(assert (= (and b!7850311 (not res!3121826)) b!7850312))

(assert (= (and start!743202 ((_ is ElementMatch!21085) r1!6227)) b!7850324))

(assert (= (and start!743202 ((_ is Concat!29930) r1!6227)) b!7850310))

(assert (= (and start!743202 ((_ is Star!21085) r1!6227)) b!7850323))

(assert (= (and start!743202 ((_ is Union!21085) r1!6227)) b!7850309))

(assert (= (and start!743202 ((_ is ElementMatch!21085) r2!6165)) b!7850322))

(assert (= (and start!743202 ((_ is Concat!29930) r2!6165)) b!7850317))

(assert (= (and start!743202 ((_ is Star!21085) r2!6165)) b!7850313))

(assert (= (and start!743202 ((_ is Union!21085) r2!6165)) b!7850315))

(assert (= (and start!743202 ((_ is Cons!73820) s1!4084)) b!7850318))

(assert (= (and start!743202 ((_ is Cons!73820) s2!3706)) b!7850321))

(declare-fun m!8257884 () Bool)

(assert (=> b!7850316 m!8257884))

(declare-fun m!8257886 () Bool)

(assert (=> b!7850316 m!8257886))

(declare-fun m!8257888 () Bool)

(assert (=> b!7850316 m!8257888))

(declare-fun m!8257890 () Bool)

(assert (=> b!7850316 m!8257890))

(declare-fun m!8257892 () Bool)

(assert (=> b!7850316 m!8257892))

(declare-fun m!8257894 () Bool)

(assert (=> b!7850314 m!8257894))

(declare-fun m!8257896 () Bool)

(assert (=> b!7850312 m!8257896))

(assert (=> b!7850312 m!8257896))

(declare-fun m!8257898 () Bool)

(assert (=> b!7850312 m!8257898))

(declare-fun m!8257900 () Bool)

(assert (=> b!7850312 m!8257900))

(declare-fun m!8257902 () Bool)

(assert (=> b!7850312 m!8257902))

(declare-fun m!8257904 () Bool)

(assert (=> b!7850320 m!8257904))

(declare-fun m!8257906 () Bool)

(assert (=> b!7850311 m!8257906))

(declare-fun m!8257908 () Bool)

(assert (=> b!7850319 m!8257908))

(declare-fun m!8257910 () Bool)

(assert (=> start!743202 m!8257910))

(check-sat (not b!7850313) (not b!7850316) (not start!743202) (not b!7850318) (not b!7850309) (not b!7850317) (not b!7850319) (not b!7850320) (not b!7850310) tp_is_empty!52569 (not b!7850323) (not b!7850321) (not b!7850314) (not b!7850312) (not b!7850315) (not b!7850311))
(check-sat)
(get-model)

(declare-fun b!7850368 () Bool)

(declare-fun e!4640596 () Bool)

(declare-fun e!4640597 () Bool)

(assert (=> b!7850368 (= e!4640596 e!4640597)))

(declare-fun res!3121861 () Bool)

(assert (=> b!7850368 (=> res!3121861 e!4640597)))

(declare-fun call!727503 () Bool)

(assert (=> b!7850368 (= res!3121861 call!727503)))

(declare-fun b!7850369 () Bool)

(declare-fun e!4640600 () Bool)

(assert (=> b!7850369 (= e!4640600 (nullable!9357 r1!6227))))

(declare-fun b!7850370 () Bool)

(declare-fun e!4640595 () Bool)

(assert (=> b!7850370 (= e!4640595 e!4640596)))

(declare-fun res!3121856 () Bool)

(assert (=> b!7850370 (=> (not res!3121856) (not e!4640596))))

(declare-fun lt!2679676 () Bool)

(assert (=> b!7850370 (= res!3121856 (not lt!2679676))))

(declare-fun b!7850371 () Bool)

(declare-fun res!3121862 () Bool)

(assert (=> b!7850371 (=> res!3121862 e!4640595)))

(assert (=> b!7850371 (= res!3121862 (not ((_ is ElementMatch!21085) r1!6227)))))

(declare-fun e!4640599 () Bool)

(assert (=> b!7850371 (= e!4640599 e!4640595)))

(declare-fun b!7850372 () Bool)

(declare-fun e!4640598 () Bool)

(declare-fun head!16041 (List!73944) C!42496)

(assert (=> b!7850372 (= e!4640598 (= (head!16041 s1!4084) (c!1442851 r1!6227)))))

(declare-fun b!7850373 () Bool)

(declare-fun res!3121857 () Bool)

(assert (=> b!7850373 (=> res!3121857 e!4640597)))

(declare-fun isEmpty!42330 (List!73944) Bool)

(declare-fun tail!15584 (List!73944) List!73944)

(assert (=> b!7850373 (= res!3121857 (not (isEmpty!42330 (tail!15584 s1!4084))))))

(declare-fun b!7850374 () Bool)

(assert (=> b!7850374 (= e!4640599 (not lt!2679676))))

(declare-fun b!7850375 () Bool)

(declare-fun e!4640601 () Bool)

(assert (=> b!7850375 (= e!4640601 e!4640599)))

(declare-fun c!1442862 () Bool)

(assert (=> b!7850375 (= c!1442862 ((_ is EmptyLang!21085) r1!6227))))

(declare-fun b!7850376 () Bool)

(assert (=> b!7850376 (= e!4640600 (matchR!10521 (derivativeStep!6320 r1!6227 (head!16041 s1!4084)) (tail!15584 s1!4084)))))

(declare-fun b!7850377 () Bool)

(declare-fun res!3121860 () Bool)

(assert (=> b!7850377 (=> (not res!3121860) (not e!4640598))))

(assert (=> b!7850377 (= res!3121860 (not call!727503))))

(declare-fun b!7850378 () Bool)

(declare-fun res!3121859 () Bool)

(assert (=> b!7850378 (=> res!3121859 e!4640595)))

(assert (=> b!7850378 (= res!3121859 e!4640598)))

(declare-fun res!3121863 () Bool)

(assert (=> b!7850378 (=> (not res!3121863) (not e!4640598))))

(assert (=> b!7850378 (= res!3121863 lt!2679676)))

(declare-fun b!7850379 () Bool)

(declare-fun res!3121858 () Bool)

(assert (=> b!7850379 (=> (not res!3121858) (not e!4640598))))

(assert (=> b!7850379 (= res!3121858 (isEmpty!42330 (tail!15584 s1!4084)))))

(declare-fun bm!727498 () Bool)

(assert (=> bm!727498 (= call!727503 (isEmpty!42330 s1!4084))))

(declare-fun d!2353141 () Bool)

(assert (=> d!2353141 e!4640601))

(declare-fun c!1442863 () Bool)

(assert (=> d!2353141 (= c!1442863 ((_ is EmptyExpr!21085) r1!6227))))

(assert (=> d!2353141 (= lt!2679676 e!4640600)))

(declare-fun c!1442861 () Bool)

(assert (=> d!2353141 (= c!1442861 (isEmpty!42330 s1!4084))))

(assert (=> d!2353141 (validRegex!11495 r1!6227)))

(assert (=> d!2353141 (= (matchR!10521 r1!6227 s1!4084) lt!2679676)))

(declare-fun b!7850380 () Bool)

(assert (=> b!7850380 (= e!4640597 (not (= (head!16041 s1!4084) (c!1442851 r1!6227))))))

(declare-fun b!7850381 () Bool)

(assert (=> b!7850381 (= e!4640601 (= lt!2679676 call!727503))))

(assert (= (and d!2353141 c!1442861) b!7850369))

(assert (= (and d!2353141 (not c!1442861)) b!7850376))

(assert (= (and d!2353141 c!1442863) b!7850381))

(assert (= (and d!2353141 (not c!1442863)) b!7850375))

(assert (= (and b!7850375 c!1442862) b!7850374))

(assert (= (and b!7850375 (not c!1442862)) b!7850371))

(assert (= (and b!7850371 (not res!3121862)) b!7850378))

(assert (= (and b!7850378 res!3121863) b!7850377))

(assert (= (and b!7850377 res!3121860) b!7850379))

(assert (= (and b!7850379 res!3121858) b!7850372))

(assert (= (and b!7850378 (not res!3121859)) b!7850370))

(assert (= (and b!7850370 res!3121856) b!7850368))

(assert (= (and b!7850368 (not res!3121861)) b!7850373))

(assert (= (and b!7850373 (not res!3121857)) b!7850380))

(assert (= (or b!7850381 b!7850368 b!7850377) bm!727498))

(declare-fun m!8257934 () Bool)

(assert (=> b!7850373 m!8257934))

(assert (=> b!7850373 m!8257934))

(declare-fun m!8257936 () Bool)

(assert (=> b!7850373 m!8257936))

(declare-fun m!8257938 () Bool)

(assert (=> b!7850376 m!8257938))

(assert (=> b!7850376 m!8257938))

(declare-fun m!8257940 () Bool)

(assert (=> b!7850376 m!8257940))

(assert (=> b!7850376 m!8257934))

(assert (=> b!7850376 m!8257940))

(assert (=> b!7850376 m!8257934))

(declare-fun m!8257942 () Bool)

(assert (=> b!7850376 m!8257942))

(assert (=> b!7850369 m!8257886))

(declare-fun m!8257944 () Bool)

(assert (=> d!2353141 m!8257944))

(assert (=> d!2353141 m!8257910))

(assert (=> b!7850379 m!8257934))

(assert (=> b!7850379 m!8257934))

(assert (=> b!7850379 m!8257936))

(assert (=> b!7850372 m!8257938))

(assert (=> bm!727498 m!8257944))

(assert (=> b!7850380 m!8257938))

(assert (=> b!7850319 d!2353141))

(declare-fun b!7850421 () Bool)

(declare-fun res!3121875 () Bool)

(declare-fun e!4640628 () Bool)

(assert (=> b!7850421 (=> (not res!3121875) (not e!4640628))))

(declare-fun call!727519 () Bool)

(assert (=> b!7850421 (= res!3121875 call!727519)))

(declare-fun e!4640632 () Bool)

(assert (=> b!7850421 (= e!4640632 e!4640628)))

(declare-fun c!1442878 () Bool)

(declare-fun call!727518 () Bool)

(declare-fun bm!727513 () Bool)

(declare-fun c!1442879 () Bool)

(assert (=> bm!727513 (= call!727518 (validRegex!11495 (ite c!1442878 (reg!21414 r2!6165) (ite c!1442879 (regTwo!42683 r2!6165) (regOne!42682 r2!6165)))))))

(declare-fun b!7850422 () Bool)

(declare-fun e!4640629 () Bool)

(declare-fun e!4640626 () Bool)

(assert (=> b!7850422 (= e!4640629 e!4640626)))

(declare-fun res!3121878 () Bool)

(assert (=> b!7850422 (= res!3121878 (not (nullable!9357 (reg!21414 r2!6165))))))

(assert (=> b!7850422 (=> (not res!3121878) (not e!4640626))))

(declare-fun bm!727514 () Bool)

(assert (=> bm!727514 (= call!727519 (validRegex!11495 (ite c!1442879 (regOne!42683 r2!6165) (regTwo!42682 r2!6165))))))

(declare-fun bm!727515 () Bool)

(declare-fun call!727520 () Bool)

(assert (=> bm!727515 (= call!727520 call!727518)))

(declare-fun b!7850423 () Bool)

(assert (=> b!7850423 (= e!4640629 e!4640632)))

(assert (=> b!7850423 (= c!1442879 ((_ is Union!21085) r2!6165))))

(declare-fun b!7850424 () Bool)

(declare-fun e!4640631 () Bool)

(assert (=> b!7850424 (= e!4640631 e!4640629)))

(assert (=> b!7850424 (= c!1442878 ((_ is Star!21085) r2!6165))))

(declare-fun b!7850420 () Bool)

(assert (=> b!7850420 (= e!4640628 call!727520)))

(declare-fun d!2353151 () Bool)

(declare-fun res!3121876 () Bool)

(assert (=> d!2353151 (=> res!3121876 e!4640631)))

(assert (=> d!2353151 (= res!3121876 ((_ is ElementMatch!21085) r2!6165))))

(assert (=> d!2353151 (= (validRegex!11495 r2!6165) e!4640631)))

(declare-fun b!7850425 () Bool)

(declare-fun e!4640627 () Bool)

(assert (=> b!7850425 (= e!4640627 call!727519)))

(declare-fun b!7850426 () Bool)

(assert (=> b!7850426 (= e!4640626 call!727518)))

(declare-fun b!7850427 () Bool)

(declare-fun res!3121874 () Bool)

(declare-fun e!4640630 () Bool)

(assert (=> b!7850427 (=> res!3121874 e!4640630)))

(assert (=> b!7850427 (= res!3121874 (not ((_ is Concat!29930) r2!6165)))))

(assert (=> b!7850427 (= e!4640632 e!4640630)))

(declare-fun b!7850428 () Bool)

(assert (=> b!7850428 (= e!4640630 e!4640627)))

(declare-fun res!3121877 () Bool)

(assert (=> b!7850428 (=> (not res!3121877) (not e!4640627))))

(assert (=> b!7850428 (= res!3121877 call!727520)))

(assert (= (and d!2353151 (not res!3121876)) b!7850424))

(assert (= (and b!7850424 c!1442878) b!7850422))

(assert (= (and b!7850424 (not c!1442878)) b!7850423))

(assert (= (and b!7850422 res!3121878) b!7850426))

(assert (= (and b!7850423 c!1442879) b!7850421))

(assert (= (and b!7850423 (not c!1442879)) b!7850427))

(assert (= (and b!7850421 res!3121875) b!7850420))

(assert (= (and b!7850427 (not res!3121874)) b!7850428))

(assert (= (and b!7850428 res!3121877) b!7850425))

(assert (= (or b!7850421 b!7850425) bm!727514))

(assert (= (or b!7850420 b!7850428) bm!727515))

(assert (= (or b!7850426 bm!727515) bm!727513))

(declare-fun m!8257946 () Bool)

(assert (=> bm!727513 m!8257946))

(declare-fun m!8257948 () Bool)

(assert (=> b!7850422 m!8257948))

(declare-fun m!8257950 () Bool)

(assert (=> bm!727514 m!8257950))

(assert (=> b!7850314 d!2353151))

(declare-fun b!7850429 () Bool)

(declare-fun e!4640634 () Bool)

(declare-fun e!4640635 () Bool)

(assert (=> b!7850429 (= e!4640634 e!4640635)))

(declare-fun res!3121884 () Bool)

(assert (=> b!7850429 (=> res!3121884 e!4640635)))

(declare-fun call!727521 () Bool)

(assert (=> b!7850429 (= res!3121884 call!727521)))

(declare-fun b!7850430 () Bool)

(declare-fun e!4640638 () Bool)

(assert (=> b!7850430 (= e!4640638 (nullable!9357 r2!6165))))

(declare-fun b!7850431 () Bool)

(declare-fun e!4640633 () Bool)

(assert (=> b!7850431 (= e!4640633 e!4640634)))

(declare-fun res!3121879 () Bool)

(assert (=> b!7850431 (=> (not res!3121879) (not e!4640634))))

(declare-fun lt!2679679 () Bool)

(assert (=> b!7850431 (= res!3121879 (not lt!2679679))))

(declare-fun b!7850432 () Bool)

(declare-fun res!3121885 () Bool)

(assert (=> b!7850432 (=> res!3121885 e!4640633)))

(assert (=> b!7850432 (= res!3121885 (not ((_ is ElementMatch!21085) r2!6165)))))

(declare-fun e!4640637 () Bool)

(assert (=> b!7850432 (= e!4640637 e!4640633)))

(declare-fun b!7850433 () Bool)

(declare-fun e!4640636 () Bool)

(assert (=> b!7850433 (= e!4640636 (= (head!16041 s2!3706) (c!1442851 r2!6165)))))

(declare-fun b!7850434 () Bool)

(declare-fun res!3121880 () Bool)

(assert (=> b!7850434 (=> res!3121880 e!4640635)))

(assert (=> b!7850434 (= res!3121880 (not (isEmpty!42330 (tail!15584 s2!3706))))))

(declare-fun b!7850435 () Bool)

(assert (=> b!7850435 (= e!4640637 (not lt!2679679))))

(declare-fun b!7850436 () Bool)

(declare-fun e!4640639 () Bool)

(assert (=> b!7850436 (= e!4640639 e!4640637)))

(declare-fun c!1442881 () Bool)

(assert (=> b!7850436 (= c!1442881 ((_ is EmptyLang!21085) r2!6165))))

(declare-fun b!7850437 () Bool)

(assert (=> b!7850437 (= e!4640638 (matchR!10521 (derivativeStep!6320 r2!6165 (head!16041 s2!3706)) (tail!15584 s2!3706)))))

(declare-fun b!7850438 () Bool)

(declare-fun res!3121883 () Bool)

(assert (=> b!7850438 (=> (not res!3121883) (not e!4640636))))

(assert (=> b!7850438 (= res!3121883 (not call!727521))))

(declare-fun b!7850439 () Bool)

(declare-fun res!3121882 () Bool)

(assert (=> b!7850439 (=> res!3121882 e!4640633)))

(assert (=> b!7850439 (= res!3121882 e!4640636)))

(declare-fun res!3121886 () Bool)

(assert (=> b!7850439 (=> (not res!3121886) (not e!4640636))))

(assert (=> b!7850439 (= res!3121886 lt!2679679)))

(declare-fun b!7850440 () Bool)

(declare-fun res!3121881 () Bool)

(assert (=> b!7850440 (=> (not res!3121881) (not e!4640636))))

(assert (=> b!7850440 (= res!3121881 (isEmpty!42330 (tail!15584 s2!3706)))))

(declare-fun bm!727516 () Bool)

(assert (=> bm!727516 (= call!727521 (isEmpty!42330 s2!3706))))

(declare-fun d!2353153 () Bool)

(assert (=> d!2353153 e!4640639))

(declare-fun c!1442882 () Bool)

(assert (=> d!2353153 (= c!1442882 ((_ is EmptyExpr!21085) r2!6165))))

(assert (=> d!2353153 (= lt!2679679 e!4640638)))

(declare-fun c!1442880 () Bool)

(assert (=> d!2353153 (= c!1442880 (isEmpty!42330 s2!3706))))

(assert (=> d!2353153 (validRegex!11495 r2!6165)))

(assert (=> d!2353153 (= (matchR!10521 r2!6165 s2!3706) lt!2679679)))

(declare-fun b!7850441 () Bool)

(assert (=> b!7850441 (= e!4640635 (not (= (head!16041 s2!3706) (c!1442851 r2!6165))))))

(declare-fun b!7850442 () Bool)

(assert (=> b!7850442 (= e!4640639 (= lt!2679679 call!727521))))

(assert (= (and d!2353153 c!1442880) b!7850430))

(assert (= (and d!2353153 (not c!1442880)) b!7850437))

(assert (= (and d!2353153 c!1442882) b!7850442))

(assert (= (and d!2353153 (not c!1442882)) b!7850436))

(assert (= (and b!7850436 c!1442881) b!7850435))

(assert (= (and b!7850436 (not c!1442881)) b!7850432))

(assert (= (and b!7850432 (not res!3121885)) b!7850439))

(assert (= (and b!7850439 res!3121886) b!7850438))

(assert (= (and b!7850438 res!3121883) b!7850440))

(assert (= (and b!7850440 res!3121881) b!7850433))

(assert (= (and b!7850439 (not res!3121882)) b!7850431))

(assert (= (and b!7850431 res!3121879) b!7850429))

(assert (= (and b!7850429 (not res!3121884)) b!7850434))

(assert (= (and b!7850434 (not res!3121880)) b!7850441))

(assert (= (or b!7850442 b!7850429 b!7850438) bm!727516))

(declare-fun m!8257952 () Bool)

(assert (=> b!7850434 m!8257952))

(assert (=> b!7850434 m!8257952))

(declare-fun m!8257954 () Bool)

(assert (=> b!7850434 m!8257954))

(declare-fun m!8257956 () Bool)

(assert (=> b!7850437 m!8257956))

(assert (=> b!7850437 m!8257956))

(declare-fun m!8257958 () Bool)

(assert (=> b!7850437 m!8257958))

(assert (=> b!7850437 m!8257952))

(assert (=> b!7850437 m!8257958))

(assert (=> b!7850437 m!8257952))

(declare-fun m!8257960 () Bool)

(assert (=> b!7850437 m!8257960))

(declare-fun m!8257962 () Bool)

(assert (=> b!7850430 m!8257962))

(declare-fun m!8257964 () Bool)

(assert (=> d!2353153 m!8257964))

(assert (=> d!2353153 m!8257894))

(assert (=> b!7850440 m!8257952))

(assert (=> b!7850440 m!8257952))

(assert (=> b!7850440 m!8257954))

(assert (=> b!7850433 m!8257956))

(assert (=> bm!727516 m!8257964))

(assert (=> b!7850441 m!8257956))

(assert (=> b!7850320 d!2353153))

(declare-fun b!7850444 () Bool)

(declare-fun res!3121888 () Bool)

(declare-fun e!4640642 () Bool)

(assert (=> b!7850444 (=> (not res!3121888) (not e!4640642))))

(declare-fun call!727523 () Bool)

(assert (=> b!7850444 (= res!3121888 call!727523)))

(declare-fun e!4640646 () Bool)

(assert (=> b!7850444 (= e!4640646 e!4640642)))

(declare-fun bm!727517 () Bool)

(declare-fun c!1442883 () Bool)

(declare-fun call!727522 () Bool)

(declare-fun c!1442884 () Bool)

(assert (=> bm!727517 (= call!727522 (validRegex!11495 (ite c!1442883 (reg!21414 r1!6227) (ite c!1442884 (regTwo!42683 r1!6227) (regOne!42682 r1!6227)))))))

(declare-fun b!7850445 () Bool)

(declare-fun e!4640643 () Bool)

(declare-fun e!4640640 () Bool)

(assert (=> b!7850445 (= e!4640643 e!4640640)))

(declare-fun res!3121891 () Bool)

(assert (=> b!7850445 (= res!3121891 (not (nullable!9357 (reg!21414 r1!6227))))))

(assert (=> b!7850445 (=> (not res!3121891) (not e!4640640))))

(declare-fun bm!727518 () Bool)

(assert (=> bm!727518 (= call!727523 (validRegex!11495 (ite c!1442884 (regOne!42683 r1!6227) (regTwo!42682 r1!6227))))))

(declare-fun bm!727519 () Bool)

(declare-fun call!727524 () Bool)

(assert (=> bm!727519 (= call!727524 call!727522)))

(declare-fun b!7850446 () Bool)

(assert (=> b!7850446 (= e!4640643 e!4640646)))

(assert (=> b!7850446 (= c!1442884 ((_ is Union!21085) r1!6227))))

(declare-fun b!7850447 () Bool)

(declare-fun e!4640645 () Bool)

(assert (=> b!7850447 (= e!4640645 e!4640643)))

(assert (=> b!7850447 (= c!1442883 ((_ is Star!21085) r1!6227))))

(declare-fun b!7850443 () Bool)

(assert (=> b!7850443 (= e!4640642 call!727524)))

(declare-fun d!2353155 () Bool)

(declare-fun res!3121889 () Bool)

(assert (=> d!2353155 (=> res!3121889 e!4640645)))

(assert (=> d!2353155 (= res!3121889 ((_ is ElementMatch!21085) r1!6227))))

(assert (=> d!2353155 (= (validRegex!11495 r1!6227) e!4640645)))

(declare-fun b!7850448 () Bool)

(declare-fun e!4640641 () Bool)

(assert (=> b!7850448 (= e!4640641 call!727523)))

(declare-fun b!7850449 () Bool)

(assert (=> b!7850449 (= e!4640640 call!727522)))

(declare-fun b!7850450 () Bool)

(declare-fun res!3121887 () Bool)

(declare-fun e!4640644 () Bool)

(assert (=> b!7850450 (=> res!3121887 e!4640644)))

(assert (=> b!7850450 (= res!3121887 (not ((_ is Concat!29930) r1!6227)))))

(assert (=> b!7850450 (= e!4640646 e!4640644)))

(declare-fun b!7850451 () Bool)

(assert (=> b!7850451 (= e!4640644 e!4640641)))

(declare-fun res!3121890 () Bool)

(assert (=> b!7850451 (=> (not res!3121890) (not e!4640641))))

(assert (=> b!7850451 (= res!3121890 call!727524)))

(assert (= (and d!2353155 (not res!3121889)) b!7850447))

(assert (= (and b!7850447 c!1442883) b!7850445))

(assert (= (and b!7850447 (not c!1442883)) b!7850446))

(assert (= (and b!7850445 res!3121891) b!7850449))

(assert (= (and b!7850446 c!1442884) b!7850444))

(assert (= (and b!7850446 (not c!1442884)) b!7850450))

(assert (= (and b!7850444 res!3121888) b!7850443))

(assert (= (and b!7850450 (not res!3121887)) b!7850451))

(assert (= (and b!7850451 res!3121890) b!7850448))

(assert (= (or b!7850444 b!7850448) bm!727518))

(assert (= (or b!7850443 b!7850451) bm!727519))

(assert (= (or b!7850449 bm!727519) bm!727517))

(declare-fun m!8257966 () Bool)

(assert (=> bm!727517 m!8257966))

(declare-fun m!8257968 () Bool)

(assert (=> b!7850445 m!8257968))

(declare-fun m!8257970 () Bool)

(assert (=> bm!727518 m!8257970))

(assert (=> start!743202 d!2353155))

(declare-fun b!7850452 () Bool)

(declare-fun e!4640648 () Bool)

(declare-fun e!4640649 () Bool)

(assert (=> b!7850452 (= e!4640648 e!4640649)))

(declare-fun res!3121897 () Bool)

(assert (=> b!7850452 (=> res!3121897 e!4640649)))

(declare-fun call!727525 () Bool)

(assert (=> b!7850452 (= res!3121897 call!727525)))

(declare-fun b!7850453 () Bool)

(declare-fun e!4640652 () Bool)

(assert (=> b!7850453 (= e!4640652 (nullable!9357 lt!2679667))))

(declare-fun b!7850454 () Bool)

(declare-fun e!4640647 () Bool)

(assert (=> b!7850454 (= e!4640647 e!4640648)))

(declare-fun res!3121892 () Bool)

(assert (=> b!7850454 (=> (not res!3121892) (not e!4640648))))

(declare-fun lt!2679680 () Bool)

(assert (=> b!7850454 (= res!3121892 (not lt!2679680))))

(declare-fun b!7850455 () Bool)

(declare-fun res!3121898 () Bool)

(assert (=> b!7850455 (=> res!3121898 e!4640647)))

(assert (=> b!7850455 (= res!3121898 (not ((_ is ElementMatch!21085) lt!2679667)))))

(declare-fun e!4640651 () Bool)

(assert (=> b!7850455 (= e!4640651 e!4640647)))

(declare-fun b!7850456 () Bool)

(declare-fun e!4640650 () Bool)

(assert (=> b!7850456 (= e!4640650 (= (head!16041 lt!2679663) (c!1442851 lt!2679667)))))

(declare-fun b!7850457 () Bool)

(declare-fun res!3121893 () Bool)

(assert (=> b!7850457 (=> res!3121893 e!4640649)))

(assert (=> b!7850457 (= res!3121893 (not (isEmpty!42330 (tail!15584 lt!2679663))))))

(declare-fun b!7850458 () Bool)

(assert (=> b!7850458 (= e!4640651 (not lt!2679680))))

(declare-fun b!7850459 () Bool)

(declare-fun e!4640653 () Bool)

(assert (=> b!7850459 (= e!4640653 e!4640651)))

(declare-fun c!1442886 () Bool)

(assert (=> b!7850459 (= c!1442886 ((_ is EmptyLang!21085) lt!2679667))))

(declare-fun b!7850460 () Bool)

(assert (=> b!7850460 (= e!4640652 (matchR!10521 (derivativeStep!6320 lt!2679667 (head!16041 lt!2679663)) (tail!15584 lt!2679663)))))

(declare-fun b!7850461 () Bool)

(declare-fun res!3121896 () Bool)

(assert (=> b!7850461 (=> (not res!3121896) (not e!4640650))))

(assert (=> b!7850461 (= res!3121896 (not call!727525))))

(declare-fun b!7850462 () Bool)

(declare-fun res!3121895 () Bool)

(assert (=> b!7850462 (=> res!3121895 e!4640647)))

(assert (=> b!7850462 (= res!3121895 e!4640650)))

(declare-fun res!3121899 () Bool)

(assert (=> b!7850462 (=> (not res!3121899) (not e!4640650))))

(assert (=> b!7850462 (= res!3121899 lt!2679680)))

(declare-fun b!7850463 () Bool)

(declare-fun res!3121894 () Bool)

(assert (=> b!7850463 (=> (not res!3121894) (not e!4640650))))

(assert (=> b!7850463 (= res!3121894 (isEmpty!42330 (tail!15584 lt!2679663)))))

(declare-fun bm!727520 () Bool)

(assert (=> bm!727520 (= call!727525 (isEmpty!42330 lt!2679663))))

(declare-fun d!2353157 () Bool)

(assert (=> d!2353157 e!4640653))

(declare-fun c!1442887 () Bool)

(assert (=> d!2353157 (= c!1442887 ((_ is EmptyExpr!21085) lt!2679667))))

(assert (=> d!2353157 (= lt!2679680 e!4640652)))

(declare-fun c!1442885 () Bool)

(assert (=> d!2353157 (= c!1442885 (isEmpty!42330 lt!2679663))))

(assert (=> d!2353157 (validRegex!11495 lt!2679667)))

(assert (=> d!2353157 (= (matchR!10521 lt!2679667 lt!2679663) lt!2679680)))

(declare-fun b!7850464 () Bool)

(assert (=> b!7850464 (= e!4640649 (not (= (head!16041 lt!2679663) (c!1442851 lt!2679667))))))

(declare-fun b!7850465 () Bool)

(assert (=> b!7850465 (= e!4640653 (= lt!2679680 call!727525))))

(assert (= (and d!2353157 c!1442885) b!7850453))

(assert (= (and d!2353157 (not c!1442885)) b!7850460))

(assert (= (and d!2353157 c!1442887) b!7850465))

(assert (= (and d!2353157 (not c!1442887)) b!7850459))

(assert (= (and b!7850459 c!1442886) b!7850458))

(assert (= (and b!7850459 (not c!1442886)) b!7850455))

(assert (= (and b!7850455 (not res!3121898)) b!7850462))

(assert (= (and b!7850462 res!3121899) b!7850461))

(assert (= (and b!7850461 res!3121896) b!7850463))

(assert (= (and b!7850463 res!3121894) b!7850456))

(assert (= (and b!7850462 (not res!3121895)) b!7850454))

(assert (= (and b!7850454 res!3121892) b!7850452))

(assert (= (and b!7850452 (not res!3121897)) b!7850457))

(assert (= (and b!7850457 (not res!3121893)) b!7850464))

(assert (= (or b!7850465 b!7850452 b!7850461) bm!727520))

(declare-fun m!8257972 () Bool)

(assert (=> b!7850457 m!8257972))

(assert (=> b!7850457 m!8257972))

(declare-fun m!8257974 () Bool)

(assert (=> b!7850457 m!8257974))

(declare-fun m!8257976 () Bool)

(assert (=> b!7850460 m!8257976))

(assert (=> b!7850460 m!8257976))

(declare-fun m!8257978 () Bool)

(assert (=> b!7850460 m!8257978))

(assert (=> b!7850460 m!8257972))

(assert (=> b!7850460 m!8257978))

(assert (=> b!7850460 m!8257972))

(declare-fun m!8257980 () Bool)

(assert (=> b!7850460 m!8257980))

(declare-fun m!8257982 () Bool)

(assert (=> b!7850453 m!8257982))

(declare-fun m!8257986 () Bool)

(assert (=> d!2353157 m!8257986))

(declare-fun m!8257988 () Bool)

(assert (=> d!2353157 m!8257988))

(assert (=> b!7850463 m!8257972))

(assert (=> b!7850463 m!8257972))

(assert (=> b!7850463 m!8257974))

(assert (=> b!7850456 m!8257976))

(assert (=> bm!727520 m!8257986))

(assert (=> b!7850464 m!8257976))

(assert (=> b!7850316 d!2353157))

(declare-fun d!2353159 () Bool)

(assert (=> d!2353159 (matchR!10521 (Concat!29930 lt!2679666 r2!6165) (++!18093 (t!388679 s1!4084) s2!3706))))

(declare-fun lt!2679684 () Unit!168912)

(declare-fun choose!59652 (Regex!21085 Regex!21085 List!73944 List!73944) Unit!168912)

(assert (=> d!2353159 (= lt!2679684 (choose!59652 lt!2679666 r2!6165 (t!388679 s1!4084) s2!3706))))

(declare-fun e!4640661 () Bool)

(assert (=> d!2353159 e!4640661))

(declare-fun res!3121902 () Bool)

(assert (=> d!2353159 (=> (not res!3121902) (not e!4640661))))

(assert (=> d!2353159 (= res!3121902 (validRegex!11495 lt!2679666))))

(assert (=> d!2353159 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!452 lt!2679666 r2!6165 (t!388679 s1!4084) s2!3706) lt!2679684)))

(declare-fun b!7850478 () Bool)

(assert (=> b!7850478 (= e!4640661 (validRegex!11495 r2!6165))))

(assert (= (and d!2353159 res!3121902) b!7850478))

(assert (=> d!2353159 m!8257890))

(assert (=> d!2353159 m!8257890))

(declare-fun m!8257996 () Bool)

(assert (=> d!2353159 m!8257996))

(declare-fun m!8257998 () Bool)

(assert (=> d!2353159 m!8257998))

(declare-fun m!8258000 () Bool)

(assert (=> d!2353159 m!8258000))

(assert (=> b!7850478 m!8257894))

(assert (=> b!7850316 d!2353159))

(declare-fun d!2353163 () Bool)

(declare-fun nullableFct!3689 (Regex!21085) Bool)

(assert (=> d!2353163 (= (nullable!9357 r1!6227) (nullableFct!3689 r1!6227))))

(declare-fun bs!1967072 () Bool)

(assert (= bs!1967072 d!2353163))

(declare-fun m!8258002 () Bool)

(assert (=> bs!1967072 m!8258002))

(assert (=> b!7850316 d!2353163))

(declare-fun b!7850573 () Bool)

(declare-fun e!4640721 () Regex!21085)

(declare-fun e!4640714 () Regex!21085)

(assert (=> b!7850573 (= e!4640721 e!4640714)))

(declare-fun c!1442922 () Bool)

(assert (=> b!7850573 (= c!1442922 ((_ is ElementMatch!21085) r1!6227))))

(declare-fun call!727554 () Regex!21085)

(declare-fun b!7850575 () Bool)

(declare-fun e!4640715 () Regex!21085)

(declare-fun call!727548 () Regex!21085)

(assert (=> b!7850575 (= e!4640715 (Union!21085 (Concat!29930 call!727554 (regTwo!42682 r1!6227)) call!727548))))

(declare-fun bm!727544 () Bool)

(declare-fun call!727551 () Regex!21085)

(assert (=> bm!727544 (= call!727548 call!727551)))

(declare-fun d!2353165 () Bool)

(declare-fun lt!2679691 () Regex!21085)

(assert (=> d!2353165 (validRegex!11495 lt!2679691)))

(assert (=> d!2353165 (= lt!2679691 e!4640721)))

(declare-fun c!1442924 () Bool)

(assert (=> d!2353165 (= c!1442924 (or ((_ is EmptyExpr!21085) r1!6227) ((_ is EmptyLang!21085) r1!6227)))))

(assert (=> d!2353165 (validRegex!11495 r1!6227)))

(assert (=> d!2353165 (= (derivativeStep!6320 r1!6227 (h!80268 s1!4084)) lt!2679691)))

(declare-fun c!1442923 () Bool)

(declare-fun c!1442919 () Bool)

(declare-fun bm!727545 () Bool)

(assert (=> bm!727545 (= call!727551 (derivativeStep!6320 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227))) (h!80268 s1!4084)))))

(declare-fun b!7850578 () Bool)

(assert (=> b!7850578 (= e!4640714 (ite (= (h!80268 s1!4084) (c!1442851 r1!6227)) EmptyExpr!21085 EmptyLang!21085))))

(declare-fun b!7850580 () Bool)

(declare-fun e!4640723 () Regex!21085)

(declare-fun e!4640720 () Regex!21085)

(assert (=> b!7850580 (= e!4640723 e!4640720)))

(declare-fun c!1442925 () Bool)

(assert (=> b!7850580 (= c!1442925 ((_ is Star!21085) r1!6227))))

(declare-fun b!7850581 () Bool)

(assert (=> b!7850581 (= e!4640715 (Union!21085 (Concat!29930 call!727548 (regTwo!42682 r1!6227)) EmptyLang!21085))))

(declare-fun b!7850582 () Bool)

(assert (=> b!7850582 (= c!1442923 (nullable!9357 (regOne!42682 r1!6227)))))

(assert (=> b!7850582 (= e!4640720 e!4640715)))

(declare-fun b!7850584 () Bool)

(assert (=> b!7850584 (= e!4640720 (Concat!29930 call!727554 r1!6227))))

(declare-fun call!727553 () Regex!21085)

(declare-fun bm!727548 () Bool)

(assert (=> bm!727548 (= call!727553 (derivativeStep!6320 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227))) (h!80268 s1!4084)))))

(declare-fun b!7850586 () Bool)

(assert (=> b!7850586 (= c!1442919 ((_ is Union!21085) r1!6227))))

(assert (=> b!7850586 (= e!4640714 e!4640723)))

(declare-fun bm!727549 () Bool)

(assert (=> bm!727549 (= call!727554 call!727553)))

(declare-fun b!7850589 () Bool)

(assert (=> b!7850589 (= e!4640723 (Union!21085 call!727551 call!727553))))

(declare-fun b!7850591 () Bool)

(assert (=> b!7850591 (= e!4640721 EmptyLang!21085)))

(assert (= (and d!2353165 c!1442924) b!7850591))

(assert (= (and d!2353165 (not c!1442924)) b!7850573))

(assert (= (and b!7850573 c!1442922) b!7850578))

(assert (= (and b!7850573 (not c!1442922)) b!7850586))

(assert (= (and b!7850586 c!1442919) b!7850589))

(assert (= (and b!7850586 (not c!1442919)) b!7850580))

(assert (= (and b!7850580 c!1442925) b!7850584))

(assert (= (and b!7850580 (not c!1442925)) b!7850582))

(assert (= (and b!7850582 c!1442923) b!7850575))

(assert (= (and b!7850582 (not c!1442923)) b!7850581))

(assert (= (or b!7850575 b!7850581) bm!727544))

(assert (= (or b!7850584 b!7850575) bm!727549))

(assert (= (or b!7850589 bm!727549) bm!727548))

(assert (= (or b!7850589 bm!727544) bm!727545))

(declare-fun m!8258040 () Bool)

(assert (=> d!2353165 m!8258040))

(assert (=> d!2353165 m!8257910))

(declare-fun m!8258042 () Bool)

(assert (=> bm!727545 m!8258042))

(declare-fun m!8258044 () Bool)

(assert (=> b!7850582 m!8258044))

(declare-fun m!8258046 () Bool)

(assert (=> bm!727548 m!8258046))

(assert (=> b!7850316 d!2353165))

(declare-fun b!7850643 () Bool)

(declare-fun e!4640751 () List!73944)

(assert (=> b!7850643 (= e!4640751 (Cons!73820 (h!80268 (t!388679 s1!4084)) (++!18093 (t!388679 (t!388679 s1!4084)) s2!3706)))))

(declare-fun b!7850642 () Bool)

(assert (=> b!7850642 (= e!4640751 s2!3706)))

(declare-fun b!7850644 () Bool)

(declare-fun res!3121973 () Bool)

(declare-fun e!4640752 () Bool)

(assert (=> b!7850644 (=> (not res!3121973) (not e!4640752))))

(declare-fun lt!2679698 () List!73944)

(declare-fun size!42830 (List!73944) Int)

(assert (=> b!7850644 (= res!3121973 (= (size!42830 lt!2679698) (+ (size!42830 (t!388679 s1!4084)) (size!42830 s2!3706))))))

(declare-fun d!2353173 () Bool)

(assert (=> d!2353173 e!4640752))

(declare-fun res!3121972 () Bool)

(assert (=> d!2353173 (=> (not res!3121972) (not e!4640752))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15677 (List!73944) (InoxSet C!42496))

(assert (=> d!2353173 (= res!3121972 (= (content!15677 lt!2679698) ((_ map or) (content!15677 (t!388679 s1!4084)) (content!15677 s2!3706))))))

(assert (=> d!2353173 (= lt!2679698 e!4640751)))

(declare-fun c!1442940 () Bool)

(assert (=> d!2353173 (= c!1442940 ((_ is Nil!73820) (t!388679 s1!4084)))))

(assert (=> d!2353173 (= (++!18093 (t!388679 s1!4084) s2!3706) lt!2679698)))

(declare-fun b!7850645 () Bool)

(assert (=> b!7850645 (= e!4640752 (or (not (= s2!3706 Nil!73820)) (= lt!2679698 (t!388679 s1!4084))))))

(assert (= (and d!2353173 c!1442940) b!7850642))

(assert (= (and d!2353173 (not c!1442940)) b!7850643))

(assert (= (and d!2353173 res!3121972) b!7850644))

(assert (= (and b!7850644 res!3121973) b!7850645))

(declare-fun m!8258088 () Bool)

(assert (=> b!7850643 m!8258088))

(declare-fun m!8258090 () Bool)

(assert (=> b!7850644 m!8258090))

(declare-fun m!8258092 () Bool)

(assert (=> b!7850644 m!8258092))

(declare-fun m!8258094 () Bool)

(assert (=> b!7850644 m!8258094))

(declare-fun m!8258096 () Bool)

(assert (=> d!2353173 m!8258096))

(declare-fun m!8258098 () Bool)

(assert (=> d!2353173 m!8258098))

(declare-fun m!8258100 () Bool)

(assert (=> d!2353173 m!8258100))

(assert (=> b!7850316 d!2353173))

(declare-fun b!7850648 () Bool)

(declare-fun e!4640758 () Regex!21085)

(declare-fun e!4640755 () Regex!21085)

(assert (=> b!7850648 (= e!4640758 e!4640755)))

(declare-fun c!1442942 () Bool)

(assert (=> b!7850648 (= c!1442942 ((_ is ElementMatch!21085) lt!2679665))))

(declare-fun b!7850649 () Bool)

(declare-fun call!727561 () Regex!21085)

(declare-fun call!727564 () Regex!21085)

(declare-fun e!4640756 () Regex!21085)

(assert (=> b!7850649 (= e!4640756 (Union!21085 (Concat!29930 call!727564 (regTwo!42682 lt!2679665)) call!727561))))

(declare-fun bm!727556 () Bool)

(declare-fun call!727562 () Regex!21085)

(assert (=> bm!727556 (= call!727561 call!727562)))

(declare-fun d!2353183 () Bool)

(declare-fun lt!2679701 () Regex!21085)

(assert (=> d!2353183 (validRegex!11495 lt!2679701)))

(assert (=> d!2353183 (= lt!2679701 e!4640758)))

(declare-fun c!1442944 () Bool)

(assert (=> d!2353183 (= c!1442944 (or ((_ is EmptyExpr!21085) lt!2679665) ((_ is EmptyLang!21085) lt!2679665)))))

(assert (=> d!2353183 (validRegex!11495 lt!2679665)))

(assert (=> d!2353183 (= (derivativeStep!6320 lt!2679665 (h!80268 s1!4084)) lt!2679701)))

(declare-fun c!1442941 () Bool)

(declare-fun bm!727557 () Bool)

(declare-fun c!1442943 () Bool)

(assert (=> bm!727557 (= call!727562 (derivativeStep!6320 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665))) (h!80268 s1!4084)))))

(declare-fun b!7850650 () Bool)

(assert (=> b!7850650 (= e!4640755 (ite (= (h!80268 s1!4084) (c!1442851 lt!2679665)) EmptyExpr!21085 EmptyLang!21085))))

(declare-fun b!7850651 () Bool)

(declare-fun e!4640759 () Regex!21085)

(declare-fun e!4640757 () Regex!21085)

(assert (=> b!7850651 (= e!4640759 e!4640757)))

(declare-fun c!1442945 () Bool)

(assert (=> b!7850651 (= c!1442945 ((_ is Star!21085) lt!2679665))))

(declare-fun b!7850652 () Bool)

(assert (=> b!7850652 (= e!4640756 (Union!21085 (Concat!29930 call!727561 (regTwo!42682 lt!2679665)) EmptyLang!21085))))

(declare-fun b!7850653 () Bool)

(assert (=> b!7850653 (= c!1442943 (nullable!9357 (regOne!42682 lt!2679665)))))

(assert (=> b!7850653 (= e!4640757 e!4640756)))

(declare-fun b!7850654 () Bool)

(assert (=> b!7850654 (= e!4640757 (Concat!29930 call!727564 lt!2679665))))

(declare-fun call!727563 () Regex!21085)

(declare-fun bm!727558 () Bool)

(assert (=> bm!727558 (= call!727563 (derivativeStep!6320 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665))) (h!80268 s1!4084)))))

(declare-fun b!7850655 () Bool)

(assert (=> b!7850655 (= c!1442941 ((_ is Union!21085) lt!2679665))))

(assert (=> b!7850655 (= e!4640755 e!4640759)))

(declare-fun bm!727559 () Bool)

(assert (=> bm!727559 (= call!727564 call!727563)))

(declare-fun b!7850656 () Bool)

(assert (=> b!7850656 (= e!4640759 (Union!21085 call!727562 call!727563))))

(declare-fun b!7850657 () Bool)

(assert (=> b!7850657 (= e!4640758 EmptyLang!21085)))

(assert (= (and d!2353183 c!1442944) b!7850657))

(assert (= (and d!2353183 (not c!1442944)) b!7850648))

(assert (= (and b!7850648 c!1442942) b!7850650))

(assert (= (and b!7850648 (not c!1442942)) b!7850655))

(assert (= (and b!7850655 c!1442941) b!7850656))

(assert (= (and b!7850655 (not c!1442941)) b!7850651))

(assert (= (and b!7850651 c!1442945) b!7850654))

(assert (= (and b!7850651 (not c!1442945)) b!7850653))

(assert (= (and b!7850653 c!1442943) b!7850649))

(assert (= (and b!7850653 (not c!1442943)) b!7850652))

(assert (= (or b!7850649 b!7850652) bm!727556))

(assert (= (or b!7850654 b!7850649) bm!727559))

(assert (= (or b!7850656 bm!727559) bm!727558))

(assert (= (or b!7850656 bm!727556) bm!727557))

(declare-fun m!8258108 () Bool)

(assert (=> d!2353183 m!8258108))

(declare-fun m!8258110 () Bool)

(assert (=> d!2353183 m!8258110))

(declare-fun m!8258112 () Bool)

(assert (=> bm!727557 m!8258112))

(declare-fun m!8258114 () Bool)

(assert (=> b!7850653 m!8258114))

(declare-fun m!8258116 () Bool)

(assert (=> bm!727558 m!8258116))

(assert (=> b!7850311 d!2353183))

(declare-fun b!7850668 () Bool)

(declare-fun e!4640769 () Bool)

(declare-fun e!4640770 () Bool)

(assert (=> b!7850668 (= e!4640769 e!4640770)))

(declare-fun res!3121987 () Bool)

(assert (=> b!7850668 (=> res!3121987 e!4640770)))

(declare-fun call!727568 () Bool)

(assert (=> b!7850668 (= res!3121987 call!727568)))

(declare-fun b!7850669 () Bool)

(declare-fun e!4640773 () Bool)

(assert (=> b!7850669 (= e!4640773 (nullable!9357 lt!2679665))))

(declare-fun b!7850670 () Bool)

(declare-fun e!4640768 () Bool)

(assert (=> b!7850670 (= e!4640768 e!4640769)))

(declare-fun res!3121982 () Bool)

(assert (=> b!7850670 (=> (not res!3121982) (not e!4640769))))

(declare-fun lt!2679703 () Bool)

(assert (=> b!7850670 (= res!3121982 (not lt!2679703))))

(declare-fun b!7850671 () Bool)

(declare-fun res!3121988 () Bool)

(assert (=> b!7850671 (=> res!3121988 e!4640768)))

(assert (=> b!7850671 (= res!3121988 (not ((_ is ElementMatch!21085) lt!2679665)))))

(declare-fun e!4640772 () Bool)

(assert (=> b!7850671 (= e!4640772 e!4640768)))

(declare-fun e!4640771 () Bool)

(declare-fun b!7850672 () Bool)

(assert (=> b!7850672 (= e!4640771 (= (head!16041 (++!18093 s1!4084 s2!3706)) (c!1442851 lt!2679665)))))

(declare-fun b!7850673 () Bool)

(declare-fun res!3121983 () Bool)

(assert (=> b!7850673 (=> res!3121983 e!4640770)))

(assert (=> b!7850673 (= res!3121983 (not (isEmpty!42330 (tail!15584 (++!18093 s1!4084 s2!3706)))))))

(declare-fun b!7850674 () Bool)

(assert (=> b!7850674 (= e!4640772 (not lt!2679703))))

(declare-fun b!7850675 () Bool)

(declare-fun e!4640774 () Bool)

(assert (=> b!7850675 (= e!4640774 e!4640772)))

(declare-fun c!1442949 () Bool)

(assert (=> b!7850675 (= c!1442949 ((_ is EmptyLang!21085) lt!2679665))))

(declare-fun b!7850676 () Bool)

(assert (=> b!7850676 (= e!4640773 (matchR!10521 (derivativeStep!6320 lt!2679665 (head!16041 (++!18093 s1!4084 s2!3706))) (tail!15584 (++!18093 s1!4084 s2!3706))))))

(declare-fun b!7850677 () Bool)

(declare-fun res!3121986 () Bool)

(assert (=> b!7850677 (=> (not res!3121986) (not e!4640771))))

(assert (=> b!7850677 (= res!3121986 (not call!727568))))

(declare-fun b!7850678 () Bool)

(declare-fun res!3121985 () Bool)

(assert (=> b!7850678 (=> res!3121985 e!4640768)))

(assert (=> b!7850678 (= res!3121985 e!4640771)))

(declare-fun res!3121989 () Bool)

(assert (=> b!7850678 (=> (not res!3121989) (not e!4640771))))

(assert (=> b!7850678 (= res!3121989 lt!2679703)))

(declare-fun b!7850679 () Bool)

(declare-fun res!3121984 () Bool)

(assert (=> b!7850679 (=> (not res!3121984) (not e!4640771))))

(assert (=> b!7850679 (= res!3121984 (isEmpty!42330 (tail!15584 (++!18093 s1!4084 s2!3706))))))

(declare-fun bm!727563 () Bool)

(assert (=> bm!727563 (= call!727568 (isEmpty!42330 (++!18093 s1!4084 s2!3706)))))

(declare-fun d!2353187 () Bool)

(assert (=> d!2353187 e!4640774))

(declare-fun c!1442950 () Bool)

(assert (=> d!2353187 (= c!1442950 ((_ is EmptyExpr!21085) lt!2679665))))

(assert (=> d!2353187 (= lt!2679703 e!4640773)))

(declare-fun c!1442948 () Bool)

(assert (=> d!2353187 (= c!1442948 (isEmpty!42330 (++!18093 s1!4084 s2!3706)))))

(assert (=> d!2353187 (validRegex!11495 lt!2679665)))

(assert (=> d!2353187 (= (matchR!10521 lt!2679665 (++!18093 s1!4084 s2!3706)) lt!2679703)))

(declare-fun b!7850680 () Bool)

(assert (=> b!7850680 (= e!4640770 (not (= (head!16041 (++!18093 s1!4084 s2!3706)) (c!1442851 lt!2679665))))))

(declare-fun b!7850681 () Bool)

(assert (=> b!7850681 (= e!4640774 (= lt!2679703 call!727568))))

(assert (= (and d!2353187 c!1442948) b!7850669))

(assert (= (and d!2353187 (not c!1442948)) b!7850676))

(assert (= (and d!2353187 c!1442950) b!7850681))

(assert (= (and d!2353187 (not c!1442950)) b!7850675))

(assert (= (and b!7850675 c!1442949) b!7850674))

(assert (= (and b!7850675 (not c!1442949)) b!7850671))

(assert (= (and b!7850671 (not res!3121988)) b!7850678))

(assert (= (and b!7850678 res!3121989) b!7850677))

(assert (= (and b!7850677 res!3121986) b!7850679))

(assert (= (and b!7850679 res!3121984) b!7850672))

(assert (= (and b!7850678 (not res!3121985)) b!7850670))

(assert (= (and b!7850670 res!3121982) b!7850668))

(assert (= (and b!7850668 (not res!3121987)) b!7850673))

(assert (= (and b!7850673 (not res!3121983)) b!7850680))

(assert (= (or b!7850681 b!7850668 b!7850677) bm!727563))

(assert (=> b!7850673 m!8257896))

(declare-fun m!8258124 () Bool)

(assert (=> b!7850673 m!8258124))

(assert (=> b!7850673 m!8258124))

(declare-fun m!8258126 () Bool)

(assert (=> b!7850673 m!8258126))

(assert (=> b!7850676 m!8257896))

(declare-fun m!8258128 () Bool)

(assert (=> b!7850676 m!8258128))

(assert (=> b!7850676 m!8258128))

(declare-fun m!8258130 () Bool)

(assert (=> b!7850676 m!8258130))

(assert (=> b!7850676 m!8257896))

(assert (=> b!7850676 m!8258124))

(assert (=> b!7850676 m!8258130))

(assert (=> b!7850676 m!8258124))

(declare-fun m!8258136 () Bool)

(assert (=> b!7850676 m!8258136))

(declare-fun m!8258140 () Bool)

(assert (=> b!7850669 m!8258140))

(assert (=> d!2353187 m!8257896))

(declare-fun m!8258144 () Bool)

(assert (=> d!2353187 m!8258144))

(assert (=> d!2353187 m!8258110))

(assert (=> b!7850679 m!8257896))

(assert (=> b!7850679 m!8258124))

(assert (=> b!7850679 m!8258124))

(assert (=> b!7850679 m!8258126))

(assert (=> b!7850672 m!8257896))

(assert (=> b!7850672 m!8258128))

(assert (=> bm!727563 m!8257896))

(assert (=> bm!727563 m!8258144))

(assert (=> b!7850680 m!8257896))

(assert (=> b!7850680 m!8258128))

(assert (=> b!7850312 d!2353187))

(declare-fun b!7850699 () Bool)

(declare-fun e!4640782 () List!73944)

(assert (=> b!7850699 (= e!4640782 (Cons!73820 (h!80268 s1!4084) (++!18093 (t!388679 s1!4084) s2!3706)))))

(declare-fun b!7850698 () Bool)

(assert (=> b!7850698 (= e!4640782 s2!3706)))

(declare-fun b!7850700 () Bool)

(declare-fun res!3121999 () Bool)

(declare-fun e!4640783 () Bool)

(assert (=> b!7850700 (=> (not res!3121999) (not e!4640783))))

(declare-fun lt!2679705 () List!73944)

(assert (=> b!7850700 (= res!3121999 (= (size!42830 lt!2679705) (+ (size!42830 s1!4084) (size!42830 s2!3706))))))

(declare-fun d!2353191 () Bool)

(assert (=> d!2353191 e!4640783))

(declare-fun res!3121998 () Bool)

(assert (=> d!2353191 (=> (not res!3121998) (not e!4640783))))

(assert (=> d!2353191 (= res!3121998 (= (content!15677 lt!2679705) ((_ map or) (content!15677 s1!4084) (content!15677 s2!3706))))))

(assert (=> d!2353191 (= lt!2679705 e!4640782)))

(declare-fun c!1442954 () Bool)

(assert (=> d!2353191 (= c!1442954 ((_ is Nil!73820) s1!4084))))

(assert (=> d!2353191 (= (++!18093 s1!4084 s2!3706) lt!2679705)))

(declare-fun b!7850701 () Bool)

(assert (=> b!7850701 (= e!4640783 (or (not (= s2!3706 Nil!73820)) (= lt!2679705 s1!4084)))))

(assert (= (and d!2353191 c!1442954) b!7850698))

(assert (= (and d!2353191 (not c!1442954)) b!7850699))

(assert (= (and d!2353191 res!3121998) b!7850700))

(assert (= (and b!7850700 res!3121999) b!7850701))

(assert (=> b!7850699 m!8257890))

(declare-fun m!8258150 () Bool)

(assert (=> b!7850700 m!8258150))

(declare-fun m!8258152 () Bool)

(assert (=> b!7850700 m!8258152))

(assert (=> b!7850700 m!8258094))

(declare-fun m!8258154 () Bool)

(assert (=> d!2353191 m!8258154))

(declare-fun m!8258156 () Bool)

(assert (=> d!2353191 m!8258156))

(assert (=> d!2353191 m!8258100))

(assert (=> b!7850312 d!2353191))

(declare-fun b!7850710 () Bool)

(declare-fun e!4640787 () Bool)

(declare-fun e!4640788 () Bool)

(assert (=> b!7850710 (= e!4640787 e!4640788)))

(declare-fun res!3122005 () Bool)

(assert (=> b!7850710 (=> res!3122005 e!4640788)))

(declare-fun call!727570 () Bool)

(assert (=> b!7850710 (= res!3122005 call!727570)))

(declare-fun b!7850711 () Bool)

(declare-fun e!4640791 () Bool)

(assert (=> b!7850711 (= e!4640791 (nullable!9357 lt!2679661))))

(declare-fun b!7850712 () Bool)

(declare-fun e!4640786 () Bool)

(assert (=> b!7850712 (= e!4640786 e!4640787)))

(declare-fun res!3122000 () Bool)

(assert (=> b!7850712 (=> (not res!3122000) (not e!4640787))))

(declare-fun lt!2679706 () Bool)

(assert (=> b!7850712 (= res!3122000 (not lt!2679706))))

(declare-fun b!7850713 () Bool)

(declare-fun res!3122006 () Bool)

(assert (=> b!7850713 (=> res!3122006 e!4640786)))

(assert (=> b!7850713 (= res!3122006 (not ((_ is ElementMatch!21085) lt!2679661)))))

(declare-fun e!4640790 () Bool)

(assert (=> b!7850713 (= e!4640790 e!4640786)))

(declare-fun b!7850714 () Bool)

(declare-fun e!4640789 () Bool)

(assert (=> b!7850714 (= e!4640789 (= (head!16041 lt!2679663) (c!1442851 lt!2679661)))))

(declare-fun b!7850715 () Bool)

(declare-fun res!3122001 () Bool)

(assert (=> b!7850715 (=> res!3122001 e!4640788)))

(assert (=> b!7850715 (= res!3122001 (not (isEmpty!42330 (tail!15584 lt!2679663))))))

(declare-fun b!7850716 () Bool)

(assert (=> b!7850716 (= e!4640790 (not lt!2679706))))

(declare-fun b!7850717 () Bool)

(declare-fun e!4640792 () Bool)

(assert (=> b!7850717 (= e!4640792 e!4640790)))

(declare-fun c!1442956 () Bool)

(assert (=> b!7850717 (= c!1442956 ((_ is EmptyLang!21085) lt!2679661))))

(declare-fun b!7850718 () Bool)

(assert (=> b!7850718 (= e!4640791 (matchR!10521 (derivativeStep!6320 lt!2679661 (head!16041 lt!2679663)) (tail!15584 lt!2679663)))))

(declare-fun b!7850719 () Bool)

(declare-fun res!3122004 () Bool)

(assert (=> b!7850719 (=> (not res!3122004) (not e!4640789))))

(assert (=> b!7850719 (= res!3122004 (not call!727570))))

(declare-fun b!7850720 () Bool)

(declare-fun res!3122003 () Bool)

(assert (=> b!7850720 (=> res!3122003 e!4640786)))

(assert (=> b!7850720 (= res!3122003 e!4640789)))

(declare-fun res!3122007 () Bool)

(assert (=> b!7850720 (=> (not res!3122007) (not e!4640789))))

(assert (=> b!7850720 (= res!3122007 lt!2679706)))

(declare-fun b!7850721 () Bool)

(declare-fun res!3122002 () Bool)

(assert (=> b!7850721 (=> (not res!3122002) (not e!4640789))))

(assert (=> b!7850721 (= res!3122002 (isEmpty!42330 (tail!15584 lt!2679663)))))

(declare-fun bm!727565 () Bool)

(assert (=> bm!727565 (= call!727570 (isEmpty!42330 lt!2679663))))

(declare-fun d!2353193 () Bool)

(assert (=> d!2353193 e!4640792))

(declare-fun c!1442957 () Bool)

(assert (=> d!2353193 (= c!1442957 ((_ is EmptyExpr!21085) lt!2679661))))

(assert (=> d!2353193 (= lt!2679706 e!4640791)))

(declare-fun c!1442955 () Bool)

(assert (=> d!2353193 (= c!1442955 (isEmpty!42330 lt!2679663))))

(assert (=> d!2353193 (validRegex!11495 lt!2679661)))

(assert (=> d!2353193 (= (matchR!10521 lt!2679661 lt!2679663) lt!2679706)))

(declare-fun b!7850722 () Bool)

(assert (=> b!7850722 (= e!4640788 (not (= (head!16041 lt!2679663) (c!1442851 lt!2679661))))))

(declare-fun b!7850723 () Bool)

(assert (=> b!7850723 (= e!4640792 (= lt!2679706 call!727570))))

(assert (= (and d!2353193 c!1442955) b!7850711))

(assert (= (and d!2353193 (not c!1442955)) b!7850718))

(assert (= (and d!2353193 c!1442957) b!7850723))

(assert (= (and d!2353193 (not c!1442957)) b!7850717))

(assert (= (and b!7850717 c!1442956) b!7850716))

(assert (= (and b!7850717 (not c!1442956)) b!7850713))

(assert (= (and b!7850713 (not res!3122006)) b!7850720))

(assert (= (and b!7850720 res!3122007) b!7850719))

(assert (= (and b!7850719 res!3122004) b!7850721))

(assert (= (and b!7850721 res!3122002) b!7850714))

(assert (= (and b!7850720 (not res!3122003)) b!7850712))

(assert (= (and b!7850712 res!3122000) b!7850710))

(assert (= (and b!7850710 (not res!3122005)) b!7850715))

(assert (= (and b!7850715 (not res!3122001)) b!7850722))

(assert (= (or b!7850723 b!7850710 b!7850719) bm!727565))

(assert (=> b!7850715 m!8257972))

(assert (=> b!7850715 m!8257972))

(assert (=> b!7850715 m!8257974))

(assert (=> b!7850718 m!8257976))

(assert (=> b!7850718 m!8257976))

(declare-fun m!8258158 () Bool)

(assert (=> b!7850718 m!8258158))

(assert (=> b!7850718 m!8257972))

(assert (=> b!7850718 m!8258158))

(assert (=> b!7850718 m!8257972))

(declare-fun m!8258160 () Bool)

(assert (=> b!7850718 m!8258160))

(declare-fun m!8258162 () Bool)

(assert (=> b!7850711 m!8258162))

(assert (=> d!2353193 m!8257986))

(declare-fun m!8258164 () Bool)

(assert (=> d!2353193 m!8258164))

(assert (=> b!7850721 m!8257972))

(assert (=> b!7850721 m!8257972))

(assert (=> b!7850721 m!8257974))

(assert (=> b!7850714 m!8257976))

(assert (=> bm!727565 m!8257986))

(assert (=> b!7850722 m!8257976))

(assert (=> b!7850312 d!2353193))

(declare-fun d!2353195 () Bool)

(assert (=> d!2353195 (matchR!10521 (Union!21085 lt!2679667 EmptyLang!21085) lt!2679663)))

(declare-fun lt!2679709 () Unit!168912)

(declare-fun choose!59654 (Regex!21085 Regex!21085 List!73944) Unit!168912)

(assert (=> d!2353195 (= lt!2679709 (choose!59654 lt!2679667 EmptyLang!21085 lt!2679663))))

(declare-fun e!4640809 () Bool)

(assert (=> d!2353195 e!4640809))

(declare-fun res!3122010 () Bool)

(assert (=> d!2353195 (=> (not res!3122010) (not e!4640809))))

(assert (=> d!2353195 (= res!3122010 (validRegex!11495 lt!2679667))))

(assert (=> d!2353195 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!126 lt!2679667 EmptyLang!21085 lt!2679663) lt!2679709)))

(declare-fun b!7850772 () Bool)

(assert (=> b!7850772 (= e!4640809 (validRegex!11495 EmptyLang!21085))))

(assert (= (and d!2353195 res!3122010) b!7850772))

(declare-fun m!8258166 () Bool)

(assert (=> d!2353195 m!8258166))

(declare-fun m!8258168 () Bool)

(assert (=> d!2353195 m!8258168))

(assert (=> d!2353195 m!8257988))

(declare-fun m!8258170 () Bool)

(assert (=> b!7850772 m!8258170))

(assert (=> b!7850312 d!2353195))

(declare-fun b!7850777 () Bool)

(declare-fun e!4640812 () Bool)

(declare-fun tp!2324831 () Bool)

(assert (=> b!7850777 (= e!4640812 (and tp_is_empty!52569 tp!2324831))))

(assert (=> b!7850318 (= tp!2324758 e!4640812)))

(assert (= (and b!7850318 ((_ is Cons!73820) (t!388679 s1!4084))) b!7850777))

(declare-fun b!7850790 () Bool)

(declare-fun e!4640815 () Bool)

(declare-fun tp!2324844 () Bool)

(assert (=> b!7850790 (= e!4640815 tp!2324844)))

(declare-fun b!7850788 () Bool)

(assert (=> b!7850788 (= e!4640815 tp_is_empty!52569)))

(assert (=> b!7850313 (= tp!2324755 e!4640815)))

(declare-fun b!7850791 () Bool)

(declare-fun tp!2324846 () Bool)

(declare-fun tp!2324842 () Bool)

(assert (=> b!7850791 (= e!4640815 (and tp!2324846 tp!2324842))))

(declare-fun b!7850789 () Bool)

(declare-fun tp!2324843 () Bool)

(declare-fun tp!2324845 () Bool)

(assert (=> b!7850789 (= e!4640815 (and tp!2324843 tp!2324845))))

(assert (= (and b!7850313 ((_ is ElementMatch!21085) (reg!21414 r2!6165))) b!7850788))

(assert (= (and b!7850313 ((_ is Concat!29930) (reg!21414 r2!6165))) b!7850789))

(assert (= (and b!7850313 ((_ is Star!21085) (reg!21414 r2!6165))) b!7850790))

(assert (= (and b!7850313 ((_ is Union!21085) (reg!21414 r2!6165))) b!7850791))

(declare-fun b!7850794 () Bool)

(declare-fun e!4640816 () Bool)

(declare-fun tp!2324849 () Bool)

(assert (=> b!7850794 (= e!4640816 tp!2324849)))

(declare-fun b!7850792 () Bool)

(assert (=> b!7850792 (= e!4640816 tp_is_empty!52569)))

(assert (=> b!7850309 (= tp!2324761 e!4640816)))

(declare-fun b!7850795 () Bool)

(declare-fun tp!2324851 () Bool)

(declare-fun tp!2324847 () Bool)

(assert (=> b!7850795 (= e!4640816 (and tp!2324851 tp!2324847))))

(declare-fun b!7850793 () Bool)

(declare-fun tp!2324848 () Bool)

(declare-fun tp!2324850 () Bool)

(assert (=> b!7850793 (= e!4640816 (and tp!2324848 tp!2324850))))

(assert (= (and b!7850309 ((_ is ElementMatch!21085) (regOne!42683 r1!6227))) b!7850792))

(assert (= (and b!7850309 ((_ is Concat!29930) (regOne!42683 r1!6227))) b!7850793))

(assert (= (and b!7850309 ((_ is Star!21085) (regOne!42683 r1!6227))) b!7850794))

(assert (= (and b!7850309 ((_ is Union!21085) (regOne!42683 r1!6227))) b!7850795))

(declare-fun b!7850798 () Bool)

(declare-fun e!4640817 () Bool)

(declare-fun tp!2324854 () Bool)

(assert (=> b!7850798 (= e!4640817 tp!2324854)))

(declare-fun b!7850796 () Bool)

(assert (=> b!7850796 (= e!4640817 tp_is_empty!52569)))

(assert (=> b!7850309 (= tp!2324759 e!4640817)))

(declare-fun b!7850799 () Bool)

(declare-fun tp!2324856 () Bool)

(declare-fun tp!2324852 () Bool)

(assert (=> b!7850799 (= e!4640817 (and tp!2324856 tp!2324852))))

(declare-fun b!7850797 () Bool)

(declare-fun tp!2324853 () Bool)

(declare-fun tp!2324855 () Bool)

(assert (=> b!7850797 (= e!4640817 (and tp!2324853 tp!2324855))))

(assert (= (and b!7850309 ((_ is ElementMatch!21085) (regTwo!42683 r1!6227))) b!7850796))

(assert (= (and b!7850309 ((_ is Concat!29930) (regTwo!42683 r1!6227))) b!7850797))

(assert (= (and b!7850309 ((_ is Star!21085) (regTwo!42683 r1!6227))) b!7850798))

(assert (= (and b!7850309 ((_ is Union!21085) (regTwo!42683 r1!6227))) b!7850799))

(declare-fun b!7850802 () Bool)

(declare-fun e!4640818 () Bool)

(declare-fun tp!2324859 () Bool)

(assert (=> b!7850802 (= e!4640818 tp!2324859)))

(declare-fun b!7850800 () Bool)

(assert (=> b!7850800 (= e!4640818 tp_is_empty!52569)))

(assert (=> b!7850315 (= tp!2324754 e!4640818)))

(declare-fun b!7850803 () Bool)

(declare-fun tp!2324861 () Bool)

(declare-fun tp!2324857 () Bool)

(assert (=> b!7850803 (= e!4640818 (and tp!2324861 tp!2324857))))

(declare-fun b!7850801 () Bool)

(declare-fun tp!2324858 () Bool)

(declare-fun tp!2324860 () Bool)

(assert (=> b!7850801 (= e!4640818 (and tp!2324858 tp!2324860))))

(assert (= (and b!7850315 ((_ is ElementMatch!21085) (regOne!42683 r2!6165))) b!7850800))

(assert (= (and b!7850315 ((_ is Concat!29930) (regOne!42683 r2!6165))) b!7850801))

(assert (= (and b!7850315 ((_ is Star!21085) (regOne!42683 r2!6165))) b!7850802))

(assert (= (and b!7850315 ((_ is Union!21085) (regOne!42683 r2!6165))) b!7850803))

(declare-fun b!7850806 () Bool)

(declare-fun e!4640819 () Bool)

(declare-fun tp!2324864 () Bool)

(assert (=> b!7850806 (= e!4640819 tp!2324864)))

(declare-fun b!7850804 () Bool)

(assert (=> b!7850804 (= e!4640819 tp_is_empty!52569)))

(assert (=> b!7850315 (= tp!2324763 e!4640819)))

(declare-fun b!7850807 () Bool)

(declare-fun tp!2324866 () Bool)

(declare-fun tp!2324862 () Bool)

(assert (=> b!7850807 (= e!4640819 (and tp!2324866 tp!2324862))))

(declare-fun b!7850805 () Bool)

(declare-fun tp!2324863 () Bool)

(declare-fun tp!2324865 () Bool)

(assert (=> b!7850805 (= e!4640819 (and tp!2324863 tp!2324865))))

(assert (= (and b!7850315 ((_ is ElementMatch!21085) (regTwo!42683 r2!6165))) b!7850804))

(assert (= (and b!7850315 ((_ is Concat!29930) (regTwo!42683 r2!6165))) b!7850805))

(assert (= (and b!7850315 ((_ is Star!21085) (regTwo!42683 r2!6165))) b!7850806))

(assert (= (and b!7850315 ((_ is Union!21085) (regTwo!42683 r2!6165))) b!7850807))

(declare-fun b!7850810 () Bool)

(declare-fun e!4640820 () Bool)

(declare-fun tp!2324869 () Bool)

(assert (=> b!7850810 (= e!4640820 tp!2324869)))

(declare-fun b!7850808 () Bool)

(assert (=> b!7850808 (= e!4640820 tp_is_empty!52569)))

(assert (=> b!7850310 (= tp!2324762 e!4640820)))

(declare-fun b!7850811 () Bool)

(declare-fun tp!2324871 () Bool)

(declare-fun tp!2324867 () Bool)

(assert (=> b!7850811 (= e!4640820 (and tp!2324871 tp!2324867))))

(declare-fun b!7850809 () Bool)

(declare-fun tp!2324868 () Bool)

(declare-fun tp!2324870 () Bool)

(assert (=> b!7850809 (= e!4640820 (and tp!2324868 tp!2324870))))

(assert (= (and b!7850310 ((_ is ElementMatch!21085) (regOne!42682 r1!6227))) b!7850808))

(assert (= (and b!7850310 ((_ is Concat!29930) (regOne!42682 r1!6227))) b!7850809))

(assert (= (and b!7850310 ((_ is Star!21085) (regOne!42682 r1!6227))) b!7850810))

(assert (= (and b!7850310 ((_ is Union!21085) (regOne!42682 r1!6227))) b!7850811))

(declare-fun b!7850814 () Bool)

(declare-fun e!4640821 () Bool)

(declare-fun tp!2324874 () Bool)

(assert (=> b!7850814 (= e!4640821 tp!2324874)))

(declare-fun b!7850812 () Bool)

(assert (=> b!7850812 (= e!4640821 tp_is_empty!52569)))

(assert (=> b!7850310 (= tp!2324757 e!4640821)))

(declare-fun b!7850815 () Bool)

(declare-fun tp!2324876 () Bool)

(declare-fun tp!2324872 () Bool)

(assert (=> b!7850815 (= e!4640821 (and tp!2324876 tp!2324872))))

(declare-fun b!7850813 () Bool)

(declare-fun tp!2324873 () Bool)

(declare-fun tp!2324875 () Bool)

(assert (=> b!7850813 (= e!4640821 (and tp!2324873 tp!2324875))))

(assert (= (and b!7850310 ((_ is ElementMatch!21085) (regTwo!42682 r1!6227))) b!7850812))

(assert (= (and b!7850310 ((_ is Concat!29930) (regTwo!42682 r1!6227))) b!7850813))

(assert (= (and b!7850310 ((_ is Star!21085) (regTwo!42682 r1!6227))) b!7850814))

(assert (= (and b!7850310 ((_ is Union!21085) (regTwo!42682 r1!6227))) b!7850815))

(declare-fun b!7850816 () Bool)

(declare-fun e!4640822 () Bool)

(declare-fun tp!2324877 () Bool)

(assert (=> b!7850816 (= e!4640822 (and tp_is_empty!52569 tp!2324877))))

(assert (=> b!7850321 (= tp!2324760 e!4640822)))

(assert (= (and b!7850321 ((_ is Cons!73820) (t!388679 s2!3706))) b!7850816))

(declare-fun b!7850819 () Bool)

(declare-fun e!4640823 () Bool)

(declare-fun tp!2324880 () Bool)

(assert (=> b!7850819 (= e!4640823 tp!2324880)))

(declare-fun b!7850817 () Bool)

(assert (=> b!7850817 (= e!4640823 tp_is_empty!52569)))

(assert (=> b!7850317 (= tp!2324756 e!4640823)))

(declare-fun b!7850820 () Bool)

(declare-fun tp!2324882 () Bool)

(declare-fun tp!2324878 () Bool)

(assert (=> b!7850820 (= e!4640823 (and tp!2324882 tp!2324878))))

(declare-fun b!7850818 () Bool)

(declare-fun tp!2324879 () Bool)

(declare-fun tp!2324881 () Bool)

(assert (=> b!7850818 (= e!4640823 (and tp!2324879 tp!2324881))))

(assert (= (and b!7850317 ((_ is ElementMatch!21085) (regOne!42682 r2!6165))) b!7850817))

(assert (= (and b!7850317 ((_ is Concat!29930) (regOne!42682 r2!6165))) b!7850818))

(assert (= (and b!7850317 ((_ is Star!21085) (regOne!42682 r2!6165))) b!7850819))

(assert (= (and b!7850317 ((_ is Union!21085) (regOne!42682 r2!6165))) b!7850820))

(declare-fun b!7850823 () Bool)

(declare-fun e!4640824 () Bool)

(declare-fun tp!2324885 () Bool)

(assert (=> b!7850823 (= e!4640824 tp!2324885)))

(declare-fun b!7850821 () Bool)

(assert (=> b!7850821 (= e!4640824 tp_is_empty!52569)))

(assert (=> b!7850317 (= tp!2324764 e!4640824)))

(declare-fun b!7850824 () Bool)

(declare-fun tp!2324887 () Bool)

(declare-fun tp!2324883 () Bool)

(assert (=> b!7850824 (= e!4640824 (and tp!2324887 tp!2324883))))

(declare-fun b!7850822 () Bool)

(declare-fun tp!2324884 () Bool)

(declare-fun tp!2324886 () Bool)

(assert (=> b!7850822 (= e!4640824 (and tp!2324884 tp!2324886))))

(assert (= (and b!7850317 ((_ is ElementMatch!21085) (regTwo!42682 r2!6165))) b!7850821))

(assert (= (and b!7850317 ((_ is Concat!29930) (regTwo!42682 r2!6165))) b!7850822))

(assert (= (and b!7850317 ((_ is Star!21085) (regTwo!42682 r2!6165))) b!7850823))

(assert (= (and b!7850317 ((_ is Union!21085) (regTwo!42682 r2!6165))) b!7850824))

(declare-fun b!7850827 () Bool)

(declare-fun e!4640825 () Bool)

(declare-fun tp!2324890 () Bool)

(assert (=> b!7850827 (= e!4640825 tp!2324890)))

(declare-fun b!7850825 () Bool)

(assert (=> b!7850825 (= e!4640825 tp_is_empty!52569)))

(assert (=> b!7850323 (= tp!2324753 e!4640825)))

(declare-fun b!7850828 () Bool)

(declare-fun tp!2324892 () Bool)

(declare-fun tp!2324888 () Bool)

(assert (=> b!7850828 (= e!4640825 (and tp!2324892 tp!2324888))))

(declare-fun b!7850826 () Bool)

(declare-fun tp!2324889 () Bool)

(declare-fun tp!2324891 () Bool)

(assert (=> b!7850826 (= e!4640825 (and tp!2324889 tp!2324891))))

(assert (= (and b!7850323 ((_ is ElementMatch!21085) (reg!21414 r1!6227))) b!7850825))

(assert (= (and b!7850323 ((_ is Concat!29930) (reg!21414 r1!6227))) b!7850826))

(assert (= (and b!7850323 ((_ is Star!21085) (reg!21414 r1!6227))) b!7850827))

(assert (= (and b!7850323 ((_ is Union!21085) (reg!21414 r1!6227))) b!7850828))

(check-sat (not b!7850372) (not b!7850815) (not d!2353183) (not b!7850673) (not b!7850777) (not b!7850820) (not b!7850790) (not b!7850816) (not b!7850700) (not b!7850711) (not bm!727514) (not b!7850453) (not b!7850803) (not b!7850643) (not b!7850789) (not b!7850795) (not b!7850445) (not b!7850440) (not b!7850699) (not b!7850644) (not bm!727565) (not b!7850422) (not b!7850813) (not b!7850801) (not b!7850806) (not b!7850794) (not b!7850814) (not d!2353159) (not b!7850441) (not b!7850456) (not d!2353187) (not b!7850380) (not b!7850460) (not d!2353195) (not b!7850373) (not b!7850722) (not b!7850679) (not b!7850810) (not b!7850433) (not b!7850721) (not d!2353191) (not b!7850827) (not b!7850680) (not bm!727513) (not b!7850807) (not b!7850376) (not d!2353153) (not b!7850478) (not b!7850369) (not b!7850772) (not bm!727518) (not bm!727558) (not d!2353163) (not b!7850714) (not b!7850669) (not bm!727557) (not bm!727498) (not b!7850718) (not b!7850676) (not b!7850430) (not b!7850672) (not b!7850799) (not b!7850822) (not b!7850818) (not bm!727520) (not d!2353157) tp_is_empty!52569 (not b!7850798) (not b!7850824) (not d!2353173) (not b!7850811) (not b!7850797) (not b!7850823) (not d!2353165) (not bm!727563) (not b!7850457) (not bm!727516) (not b!7850582) (not bm!727517) (not b!7850793) (not b!7850715) (not bm!727548) (not b!7850437) (not b!7850826) (not b!7850802) (not b!7850379) (not d!2353193) (not b!7850828) (not b!7850463) (not b!7850653) (not bm!727545) (not b!7850819) (not d!2353141) (not b!7850791) (not b!7850464) (not b!7850434) (not b!7850809) (not b!7850805))
(check-sat)
(get-model)

(declare-fun d!2353197 () Bool)

(assert (=> d!2353197 (= (head!16041 lt!2679663) (h!80268 lt!2679663))))

(assert (=> b!7850722 d!2353197))

(declare-fun d!2353199 () Bool)

(declare-fun res!3122021 () Bool)

(declare-fun e!4640842 () Bool)

(assert (=> d!2353199 (=> res!3122021 e!4640842)))

(assert (=> d!2353199 (= res!3122021 ((_ is EmptyExpr!21085) r1!6227))))

(assert (=> d!2353199 (= (nullableFct!3689 r1!6227) e!4640842)))

(declare-fun b!7850843 () Bool)

(declare-fun e!4640841 () Bool)

(declare-fun e!4640840 () Bool)

(assert (=> b!7850843 (= e!4640841 e!4640840)))

(declare-fun res!3122024 () Bool)

(declare-fun call!727576 () Bool)

(assert (=> b!7850843 (= res!3122024 call!727576)))

(assert (=> b!7850843 (=> (not res!3122024) (not e!4640840))))

(declare-fun b!7850844 () Bool)

(declare-fun e!4640843 () Bool)

(assert (=> b!7850844 (= e!4640843 e!4640841)))

(declare-fun c!1442960 () Bool)

(assert (=> b!7850844 (= c!1442960 ((_ is Union!21085) r1!6227))))

(declare-fun b!7850845 () Bool)

(declare-fun e!4640838 () Bool)

(assert (=> b!7850845 (= e!4640838 e!4640843)))

(declare-fun res!3122022 () Bool)

(assert (=> b!7850845 (=> res!3122022 e!4640843)))

(assert (=> b!7850845 (= res!3122022 ((_ is Star!21085) r1!6227))))

(declare-fun b!7850846 () Bool)

(declare-fun e!4640839 () Bool)

(declare-fun call!727575 () Bool)

(assert (=> b!7850846 (= e!4640839 call!727575)))

(declare-fun bm!727570 () Bool)

(assert (=> bm!727570 (= call!727575 (nullable!9357 (ite c!1442960 (regTwo!42683 r1!6227) (regTwo!42682 r1!6227))))))

(declare-fun b!7850847 () Bool)

(assert (=> b!7850847 (= e!4640840 call!727575)))

(declare-fun b!7850848 () Bool)

(assert (=> b!7850848 (= e!4640842 e!4640838)))

(declare-fun res!3122025 () Bool)

(assert (=> b!7850848 (=> (not res!3122025) (not e!4640838))))

(assert (=> b!7850848 (= res!3122025 (and (not ((_ is EmptyLang!21085) r1!6227)) (not ((_ is ElementMatch!21085) r1!6227))))))

(declare-fun b!7850849 () Bool)

(assert (=> b!7850849 (= e!4640841 e!4640839)))

(declare-fun res!3122023 () Bool)

(assert (=> b!7850849 (= res!3122023 call!727576)))

(assert (=> b!7850849 (=> res!3122023 e!4640839)))

(declare-fun bm!727571 () Bool)

(assert (=> bm!727571 (= call!727576 (nullable!9357 (ite c!1442960 (regOne!42683 r1!6227) (regOne!42682 r1!6227))))))

(assert (= (and d!2353199 (not res!3122021)) b!7850848))

(assert (= (and b!7850848 res!3122025) b!7850845))

(assert (= (and b!7850845 (not res!3122022)) b!7850844))

(assert (= (and b!7850844 c!1442960) b!7850849))

(assert (= (and b!7850844 (not c!1442960)) b!7850843))

(assert (= (and b!7850849 (not res!3122023)) b!7850846))

(assert (= (and b!7850843 res!3122024) b!7850847))

(assert (= (or b!7850846 b!7850847) bm!727570))

(assert (= (or b!7850849 b!7850843) bm!727571))

(declare-fun m!8258172 () Bool)

(assert (=> bm!727570 m!8258172))

(declare-fun m!8258174 () Bool)

(assert (=> bm!727571 m!8258174))

(assert (=> d!2353163 d!2353199))

(declare-fun d!2353201 () Bool)

(declare-fun lt!2679712 () Int)

(assert (=> d!2353201 (>= lt!2679712 0)))

(declare-fun e!4640846 () Int)

(assert (=> d!2353201 (= lt!2679712 e!4640846)))

(declare-fun c!1442963 () Bool)

(assert (=> d!2353201 (= c!1442963 ((_ is Nil!73820) lt!2679705))))

(assert (=> d!2353201 (= (size!42830 lt!2679705) lt!2679712)))

(declare-fun b!7850854 () Bool)

(assert (=> b!7850854 (= e!4640846 0)))

(declare-fun b!7850855 () Bool)

(assert (=> b!7850855 (= e!4640846 (+ 1 (size!42830 (t!388679 lt!2679705))))))

(assert (= (and d!2353201 c!1442963) b!7850854))

(assert (= (and d!2353201 (not c!1442963)) b!7850855))

(declare-fun m!8258176 () Bool)

(assert (=> b!7850855 m!8258176))

(assert (=> b!7850700 d!2353201))

(declare-fun d!2353203 () Bool)

(declare-fun lt!2679713 () Int)

(assert (=> d!2353203 (>= lt!2679713 0)))

(declare-fun e!4640847 () Int)

(assert (=> d!2353203 (= lt!2679713 e!4640847)))

(declare-fun c!1442964 () Bool)

(assert (=> d!2353203 (= c!1442964 ((_ is Nil!73820) s1!4084))))

(assert (=> d!2353203 (= (size!42830 s1!4084) lt!2679713)))

(declare-fun b!7850856 () Bool)

(assert (=> b!7850856 (= e!4640847 0)))

(declare-fun b!7850857 () Bool)

(assert (=> b!7850857 (= e!4640847 (+ 1 (size!42830 (t!388679 s1!4084))))))

(assert (= (and d!2353203 c!1442964) b!7850856))

(assert (= (and d!2353203 (not c!1442964)) b!7850857))

(assert (=> b!7850857 m!8258092))

(assert (=> b!7850700 d!2353203))

(declare-fun d!2353205 () Bool)

(declare-fun lt!2679714 () Int)

(assert (=> d!2353205 (>= lt!2679714 0)))

(declare-fun e!4640848 () Int)

(assert (=> d!2353205 (= lt!2679714 e!4640848)))

(declare-fun c!1442965 () Bool)

(assert (=> d!2353205 (= c!1442965 ((_ is Nil!73820) s2!3706))))

(assert (=> d!2353205 (= (size!42830 s2!3706) lt!2679714)))

(declare-fun b!7850858 () Bool)

(assert (=> b!7850858 (= e!4640848 0)))

(declare-fun b!7850859 () Bool)

(assert (=> b!7850859 (= e!4640848 (+ 1 (size!42830 (t!388679 s2!3706))))))

(assert (= (and d!2353205 c!1442965) b!7850858))

(assert (= (and d!2353205 (not c!1442965)) b!7850859))

(declare-fun m!8258178 () Bool)

(assert (=> b!7850859 m!8258178))

(assert (=> b!7850700 d!2353205))

(declare-fun d!2353207 () Bool)

(assert (=> d!2353207 (= (isEmpty!42330 s1!4084) ((_ is Nil!73820) s1!4084))))

(assert (=> d!2353141 d!2353207))

(assert (=> d!2353141 d!2353155))

(assert (=> b!7850464 d!2353197))

(declare-fun b!7850860 () Bool)

(declare-fun e!4640852 () Regex!21085)

(declare-fun e!4640849 () Regex!21085)

(assert (=> b!7850860 (= e!4640852 e!4640849)))

(declare-fun c!1442967 () Bool)

(assert (=> b!7850860 (= c!1442967 ((_ is ElementMatch!21085) (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227)))))))

(declare-fun e!4640850 () Regex!21085)

(declare-fun b!7850861 () Bool)

(declare-fun call!727580 () Regex!21085)

(declare-fun call!727577 () Regex!21085)

(assert (=> b!7850861 (= e!4640850 (Union!21085 (Concat!29930 call!727580 (regTwo!42682 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227))))) call!727577))))

(declare-fun bm!727572 () Bool)

(declare-fun call!727578 () Regex!21085)

(assert (=> bm!727572 (= call!727577 call!727578)))

(declare-fun d!2353209 () Bool)

(declare-fun lt!2679715 () Regex!21085)

(assert (=> d!2353209 (validRegex!11495 lt!2679715)))

(assert (=> d!2353209 (= lt!2679715 e!4640852)))

(declare-fun c!1442969 () Bool)

(assert (=> d!2353209 (= c!1442969 (or ((_ is EmptyExpr!21085) (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227)))) ((_ is EmptyLang!21085) (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227))))))))

(assert (=> d!2353209 (validRegex!11495 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227))))))

(assert (=> d!2353209 (= (derivativeStep!6320 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227))) (h!80268 s1!4084)) lt!2679715)))

(declare-fun c!1442966 () Bool)

(declare-fun bm!727573 () Bool)

(declare-fun c!1442968 () Bool)

(assert (=> bm!727573 (= call!727578 (derivativeStep!6320 (ite c!1442966 (regOne!42683 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227)))) (ite c!1442968 (regTwo!42682 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227)))) (regOne!42682 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227)))))) (h!80268 s1!4084)))))

(declare-fun b!7850862 () Bool)

(assert (=> b!7850862 (= e!4640849 (ite (= (h!80268 s1!4084) (c!1442851 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227))))) EmptyExpr!21085 EmptyLang!21085))))

(declare-fun b!7850863 () Bool)

(declare-fun e!4640853 () Regex!21085)

(declare-fun e!4640851 () Regex!21085)

(assert (=> b!7850863 (= e!4640853 e!4640851)))

(declare-fun c!1442970 () Bool)

(assert (=> b!7850863 (= c!1442970 ((_ is Star!21085) (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227)))))))

(declare-fun b!7850864 () Bool)

(assert (=> b!7850864 (= e!4640850 (Union!21085 (Concat!29930 call!727577 (regTwo!42682 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227))))) EmptyLang!21085))))

(declare-fun b!7850865 () Bool)

(assert (=> b!7850865 (= c!1442968 (nullable!9357 (regOne!42682 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227))))))))

(assert (=> b!7850865 (= e!4640851 e!4640850)))

(declare-fun b!7850866 () Bool)

(assert (=> b!7850866 (= e!4640851 (Concat!29930 call!727580 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227)))))))

(declare-fun call!727579 () Regex!21085)

(declare-fun bm!727574 () Bool)

(assert (=> bm!727574 (= call!727579 (derivativeStep!6320 (ite c!1442966 (regTwo!42683 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227)))) (ite c!1442970 (reg!21414 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227)))) (regOne!42682 (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227)))))) (h!80268 s1!4084)))))

(declare-fun b!7850867 () Bool)

(assert (=> b!7850867 (= c!1442966 ((_ is Union!21085) (ite c!1442919 (regTwo!42683 r1!6227) (ite c!1442925 (reg!21414 r1!6227) (regOne!42682 r1!6227)))))))

(assert (=> b!7850867 (= e!4640849 e!4640853)))

(declare-fun bm!727575 () Bool)

(assert (=> bm!727575 (= call!727580 call!727579)))

(declare-fun b!7850868 () Bool)

(assert (=> b!7850868 (= e!4640853 (Union!21085 call!727578 call!727579))))

(declare-fun b!7850869 () Bool)

(assert (=> b!7850869 (= e!4640852 EmptyLang!21085)))

(assert (= (and d!2353209 c!1442969) b!7850869))

(assert (= (and d!2353209 (not c!1442969)) b!7850860))

(assert (= (and b!7850860 c!1442967) b!7850862))

(assert (= (and b!7850860 (not c!1442967)) b!7850867))

(assert (= (and b!7850867 c!1442966) b!7850868))

(assert (= (and b!7850867 (not c!1442966)) b!7850863))

(assert (= (and b!7850863 c!1442970) b!7850866))

(assert (= (and b!7850863 (not c!1442970)) b!7850865))

(assert (= (and b!7850865 c!1442968) b!7850861))

(assert (= (and b!7850865 (not c!1442968)) b!7850864))

(assert (= (or b!7850861 b!7850864) bm!727572))

(assert (= (or b!7850866 b!7850861) bm!727575))

(assert (= (or b!7850868 bm!727575) bm!727574))

(assert (= (or b!7850868 bm!727572) bm!727573))

(declare-fun m!8258180 () Bool)

(assert (=> d!2353209 m!8258180))

(declare-fun m!8258182 () Bool)

(assert (=> d!2353209 m!8258182))

(declare-fun m!8258184 () Bool)

(assert (=> bm!727573 m!8258184))

(declare-fun m!8258186 () Bool)

(assert (=> b!7850865 m!8258186))

(declare-fun m!8258188 () Bool)

(assert (=> bm!727574 m!8258188))

(assert (=> bm!727548 d!2353209))

(declare-fun b!7850870 () Bool)

(declare-fun e!4640855 () Bool)

(declare-fun e!4640856 () Bool)

(assert (=> b!7850870 (= e!4640855 e!4640856)))

(declare-fun res!3122031 () Bool)

(assert (=> b!7850870 (=> res!3122031 e!4640856)))

(declare-fun call!727581 () Bool)

(assert (=> b!7850870 (= res!3122031 call!727581)))

(declare-fun b!7850871 () Bool)

(declare-fun e!4640859 () Bool)

(assert (=> b!7850871 (= e!4640859 (nullable!9357 (derivativeStep!6320 lt!2679667 (head!16041 lt!2679663))))))

(declare-fun b!7850872 () Bool)

(declare-fun e!4640854 () Bool)

(assert (=> b!7850872 (= e!4640854 e!4640855)))

(declare-fun res!3122026 () Bool)

(assert (=> b!7850872 (=> (not res!3122026) (not e!4640855))))

(declare-fun lt!2679716 () Bool)

(assert (=> b!7850872 (= res!3122026 (not lt!2679716))))

(declare-fun b!7850873 () Bool)

(declare-fun res!3122032 () Bool)

(assert (=> b!7850873 (=> res!3122032 e!4640854)))

(assert (=> b!7850873 (= res!3122032 (not ((_ is ElementMatch!21085) (derivativeStep!6320 lt!2679667 (head!16041 lt!2679663)))))))

(declare-fun e!4640858 () Bool)

(assert (=> b!7850873 (= e!4640858 e!4640854)))

(declare-fun b!7850874 () Bool)

(declare-fun e!4640857 () Bool)

(assert (=> b!7850874 (= e!4640857 (= (head!16041 (tail!15584 lt!2679663)) (c!1442851 (derivativeStep!6320 lt!2679667 (head!16041 lt!2679663)))))))

(declare-fun b!7850875 () Bool)

(declare-fun res!3122027 () Bool)

(assert (=> b!7850875 (=> res!3122027 e!4640856)))

(assert (=> b!7850875 (= res!3122027 (not (isEmpty!42330 (tail!15584 (tail!15584 lt!2679663)))))))

(declare-fun b!7850876 () Bool)

(assert (=> b!7850876 (= e!4640858 (not lt!2679716))))

(declare-fun b!7850877 () Bool)

(declare-fun e!4640860 () Bool)

(assert (=> b!7850877 (= e!4640860 e!4640858)))

(declare-fun c!1442972 () Bool)

(assert (=> b!7850877 (= c!1442972 ((_ is EmptyLang!21085) (derivativeStep!6320 lt!2679667 (head!16041 lt!2679663))))))

(declare-fun b!7850878 () Bool)

(assert (=> b!7850878 (= e!4640859 (matchR!10521 (derivativeStep!6320 (derivativeStep!6320 lt!2679667 (head!16041 lt!2679663)) (head!16041 (tail!15584 lt!2679663))) (tail!15584 (tail!15584 lt!2679663))))))

(declare-fun b!7850879 () Bool)

(declare-fun res!3122030 () Bool)

(assert (=> b!7850879 (=> (not res!3122030) (not e!4640857))))

(assert (=> b!7850879 (= res!3122030 (not call!727581))))

(declare-fun b!7850880 () Bool)

(declare-fun res!3122029 () Bool)

(assert (=> b!7850880 (=> res!3122029 e!4640854)))

(assert (=> b!7850880 (= res!3122029 e!4640857)))

(declare-fun res!3122033 () Bool)

(assert (=> b!7850880 (=> (not res!3122033) (not e!4640857))))

(assert (=> b!7850880 (= res!3122033 lt!2679716)))

(declare-fun b!7850881 () Bool)

(declare-fun res!3122028 () Bool)

(assert (=> b!7850881 (=> (not res!3122028) (not e!4640857))))

(assert (=> b!7850881 (= res!3122028 (isEmpty!42330 (tail!15584 (tail!15584 lt!2679663))))))

(declare-fun bm!727576 () Bool)

(assert (=> bm!727576 (= call!727581 (isEmpty!42330 (tail!15584 lt!2679663)))))

(declare-fun d!2353211 () Bool)

(assert (=> d!2353211 e!4640860))

(declare-fun c!1442973 () Bool)

(assert (=> d!2353211 (= c!1442973 ((_ is EmptyExpr!21085) (derivativeStep!6320 lt!2679667 (head!16041 lt!2679663))))))

(assert (=> d!2353211 (= lt!2679716 e!4640859)))

(declare-fun c!1442971 () Bool)

(assert (=> d!2353211 (= c!1442971 (isEmpty!42330 (tail!15584 lt!2679663)))))

(assert (=> d!2353211 (validRegex!11495 (derivativeStep!6320 lt!2679667 (head!16041 lt!2679663)))))

(assert (=> d!2353211 (= (matchR!10521 (derivativeStep!6320 lt!2679667 (head!16041 lt!2679663)) (tail!15584 lt!2679663)) lt!2679716)))

(declare-fun b!7850882 () Bool)

(assert (=> b!7850882 (= e!4640856 (not (= (head!16041 (tail!15584 lt!2679663)) (c!1442851 (derivativeStep!6320 lt!2679667 (head!16041 lt!2679663))))))))

(declare-fun b!7850883 () Bool)

(assert (=> b!7850883 (= e!4640860 (= lt!2679716 call!727581))))

(assert (= (and d!2353211 c!1442971) b!7850871))

(assert (= (and d!2353211 (not c!1442971)) b!7850878))

(assert (= (and d!2353211 c!1442973) b!7850883))

(assert (= (and d!2353211 (not c!1442973)) b!7850877))

(assert (= (and b!7850877 c!1442972) b!7850876))

(assert (= (and b!7850877 (not c!1442972)) b!7850873))

(assert (= (and b!7850873 (not res!3122032)) b!7850880))

(assert (= (and b!7850880 res!3122033) b!7850879))

(assert (= (and b!7850879 res!3122030) b!7850881))

(assert (= (and b!7850881 res!3122028) b!7850874))

(assert (= (and b!7850880 (not res!3122029)) b!7850872))

(assert (= (and b!7850872 res!3122026) b!7850870))

(assert (= (and b!7850870 (not res!3122031)) b!7850875))

(assert (= (and b!7850875 (not res!3122027)) b!7850882))

(assert (= (or b!7850883 b!7850870 b!7850879) bm!727576))

(assert (=> b!7850875 m!8257972))

(declare-fun m!8258190 () Bool)

(assert (=> b!7850875 m!8258190))

(assert (=> b!7850875 m!8258190))

(declare-fun m!8258192 () Bool)

(assert (=> b!7850875 m!8258192))

(assert (=> b!7850878 m!8257972))

(declare-fun m!8258194 () Bool)

(assert (=> b!7850878 m!8258194))

(assert (=> b!7850878 m!8257978))

(assert (=> b!7850878 m!8258194))

(declare-fun m!8258196 () Bool)

(assert (=> b!7850878 m!8258196))

(assert (=> b!7850878 m!8257972))

(assert (=> b!7850878 m!8258190))

(assert (=> b!7850878 m!8258196))

(assert (=> b!7850878 m!8258190))

(declare-fun m!8258198 () Bool)

(assert (=> b!7850878 m!8258198))

(assert (=> b!7850871 m!8257978))

(declare-fun m!8258200 () Bool)

(assert (=> b!7850871 m!8258200))

(assert (=> d!2353211 m!8257972))

(assert (=> d!2353211 m!8257974))

(assert (=> d!2353211 m!8257978))

(declare-fun m!8258202 () Bool)

(assert (=> d!2353211 m!8258202))

(assert (=> b!7850881 m!8257972))

(assert (=> b!7850881 m!8258190))

(assert (=> b!7850881 m!8258190))

(assert (=> b!7850881 m!8258192))

(assert (=> b!7850874 m!8257972))

(assert (=> b!7850874 m!8258194))

(assert (=> bm!727576 m!8257972))

(assert (=> bm!727576 m!8257974))

(assert (=> b!7850882 m!8257972))

(assert (=> b!7850882 m!8258194))

(assert (=> b!7850460 d!2353211))

(declare-fun b!7850884 () Bool)

(declare-fun e!4640864 () Regex!21085)

(declare-fun e!4640861 () Regex!21085)

(assert (=> b!7850884 (= e!4640864 e!4640861)))

(declare-fun c!1442975 () Bool)

(assert (=> b!7850884 (= c!1442975 ((_ is ElementMatch!21085) lt!2679667))))

(declare-fun call!727582 () Regex!21085)

(declare-fun b!7850885 () Bool)

(declare-fun e!4640862 () Regex!21085)

(declare-fun call!727585 () Regex!21085)

(assert (=> b!7850885 (= e!4640862 (Union!21085 (Concat!29930 call!727585 (regTwo!42682 lt!2679667)) call!727582))))

(declare-fun bm!727577 () Bool)

(declare-fun call!727583 () Regex!21085)

(assert (=> bm!727577 (= call!727582 call!727583)))

(declare-fun d!2353213 () Bool)

(declare-fun lt!2679717 () Regex!21085)

(assert (=> d!2353213 (validRegex!11495 lt!2679717)))

(assert (=> d!2353213 (= lt!2679717 e!4640864)))

(declare-fun c!1442977 () Bool)

(assert (=> d!2353213 (= c!1442977 (or ((_ is EmptyExpr!21085) lt!2679667) ((_ is EmptyLang!21085) lt!2679667)))))

(assert (=> d!2353213 (validRegex!11495 lt!2679667)))

(assert (=> d!2353213 (= (derivativeStep!6320 lt!2679667 (head!16041 lt!2679663)) lt!2679717)))

(declare-fun c!1442974 () Bool)

(declare-fun bm!727578 () Bool)

(declare-fun c!1442976 () Bool)

(assert (=> bm!727578 (= call!727583 (derivativeStep!6320 (ite c!1442974 (regOne!42683 lt!2679667) (ite c!1442976 (regTwo!42682 lt!2679667) (regOne!42682 lt!2679667))) (head!16041 lt!2679663)))))

(declare-fun b!7850886 () Bool)

(assert (=> b!7850886 (= e!4640861 (ite (= (head!16041 lt!2679663) (c!1442851 lt!2679667)) EmptyExpr!21085 EmptyLang!21085))))

(declare-fun b!7850887 () Bool)

(declare-fun e!4640865 () Regex!21085)

(declare-fun e!4640863 () Regex!21085)

(assert (=> b!7850887 (= e!4640865 e!4640863)))

(declare-fun c!1442978 () Bool)

(assert (=> b!7850887 (= c!1442978 ((_ is Star!21085) lt!2679667))))

(declare-fun b!7850888 () Bool)

(assert (=> b!7850888 (= e!4640862 (Union!21085 (Concat!29930 call!727582 (regTwo!42682 lt!2679667)) EmptyLang!21085))))

(declare-fun b!7850889 () Bool)

(assert (=> b!7850889 (= c!1442976 (nullable!9357 (regOne!42682 lt!2679667)))))

(assert (=> b!7850889 (= e!4640863 e!4640862)))

(declare-fun b!7850890 () Bool)

(assert (=> b!7850890 (= e!4640863 (Concat!29930 call!727585 lt!2679667))))

(declare-fun call!727584 () Regex!21085)

(declare-fun bm!727579 () Bool)

(assert (=> bm!727579 (= call!727584 (derivativeStep!6320 (ite c!1442974 (regTwo!42683 lt!2679667) (ite c!1442978 (reg!21414 lt!2679667) (regOne!42682 lt!2679667))) (head!16041 lt!2679663)))))

(declare-fun b!7850891 () Bool)

(assert (=> b!7850891 (= c!1442974 ((_ is Union!21085) lt!2679667))))

(assert (=> b!7850891 (= e!4640861 e!4640865)))

(declare-fun bm!727580 () Bool)

(assert (=> bm!727580 (= call!727585 call!727584)))

(declare-fun b!7850892 () Bool)

(assert (=> b!7850892 (= e!4640865 (Union!21085 call!727583 call!727584))))

(declare-fun b!7850893 () Bool)

(assert (=> b!7850893 (= e!4640864 EmptyLang!21085)))

(assert (= (and d!2353213 c!1442977) b!7850893))

(assert (= (and d!2353213 (not c!1442977)) b!7850884))

(assert (= (and b!7850884 c!1442975) b!7850886))

(assert (= (and b!7850884 (not c!1442975)) b!7850891))

(assert (= (and b!7850891 c!1442974) b!7850892))

(assert (= (and b!7850891 (not c!1442974)) b!7850887))

(assert (= (and b!7850887 c!1442978) b!7850890))

(assert (= (and b!7850887 (not c!1442978)) b!7850889))

(assert (= (and b!7850889 c!1442976) b!7850885))

(assert (= (and b!7850889 (not c!1442976)) b!7850888))

(assert (= (or b!7850885 b!7850888) bm!727577))

(assert (= (or b!7850890 b!7850885) bm!727580))

(assert (= (or b!7850892 bm!727580) bm!727579))

(assert (= (or b!7850892 bm!727577) bm!727578))

(declare-fun m!8258204 () Bool)

(assert (=> d!2353213 m!8258204))

(assert (=> d!2353213 m!8257988))

(assert (=> bm!727578 m!8257976))

(declare-fun m!8258206 () Bool)

(assert (=> bm!727578 m!8258206))

(declare-fun m!8258208 () Bool)

(assert (=> b!7850889 m!8258208))

(assert (=> bm!727579 m!8257976))

(declare-fun m!8258210 () Bool)

(assert (=> bm!727579 m!8258210))

(assert (=> b!7850460 d!2353213))

(assert (=> b!7850460 d!2353197))

(declare-fun d!2353215 () Bool)

(assert (=> d!2353215 (= (tail!15584 lt!2679663) (t!388679 lt!2679663))))

(assert (=> b!7850460 d!2353215))

(declare-fun d!2353217 () Bool)

(assert (=> d!2353217 (= (head!16041 s2!3706) (h!80268 s2!3706))))

(assert (=> b!7850441 d!2353217))

(declare-fun d!2353219 () Bool)

(declare-fun lt!2679718 () Int)

(assert (=> d!2353219 (>= lt!2679718 0)))

(declare-fun e!4640866 () Int)

(assert (=> d!2353219 (= lt!2679718 e!4640866)))

(declare-fun c!1442979 () Bool)

(assert (=> d!2353219 (= c!1442979 ((_ is Nil!73820) lt!2679698))))

(assert (=> d!2353219 (= (size!42830 lt!2679698) lt!2679718)))

(declare-fun b!7850894 () Bool)

(assert (=> b!7850894 (= e!4640866 0)))

(declare-fun b!7850895 () Bool)

(assert (=> b!7850895 (= e!4640866 (+ 1 (size!42830 (t!388679 lt!2679698))))))

(assert (= (and d!2353219 c!1442979) b!7850894))

(assert (= (and d!2353219 (not c!1442979)) b!7850895))

(declare-fun m!8258212 () Bool)

(assert (=> b!7850895 m!8258212))

(assert (=> b!7850644 d!2353219))

(declare-fun d!2353221 () Bool)

(declare-fun lt!2679719 () Int)

(assert (=> d!2353221 (>= lt!2679719 0)))

(declare-fun e!4640867 () Int)

(assert (=> d!2353221 (= lt!2679719 e!4640867)))

(declare-fun c!1442980 () Bool)

(assert (=> d!2353221 (= c!1442980 ((_ is Nil!73820) (t!388679 s1!4084)))))

(assert (=> d!2353221 (= (size!42830 (t!388679 s1!4084)) lt!2679719)))

(declare-fun b!7850896 () Bool)

(assert (=> b!7850896 (= e!4640867 0)))

(declare-fun b!7850897 () Bool)

(assert (=> b!7850897 (= e!4640867 (+ 1 (size!42830 (t!388679 (t!388679 s1!4084)))))))

(assert (= (and d!2353221 c!1442980) b!7850896))

(assert (= (and d!2353221 (not c!1442980)) b!7850897))

(declare-fun m!8258214 () Bool)

(assert (=> b!7850897 m!8258214))

(assert (=> b!7850644 d!2353221))

(assert (=> b!7850644 d!2353205))

(declare-fun d!2353223 () Bool)

(declare-fun c!1442983 () Bool)

(assert (=> d!2353223 (= c!1442983 ((_ is Nil!73820) lt!2679705))))

(declare-fun e!4640870 () (InoxSet C!42496))

(assert (=> d!2353223 (= (content!15677 lt!2679705) e!4640870)))

(declare-fun b!7850902 () Bool)

(assert (=> b!7850902 (= e!4640870 ((as const (Array C!42496 Bool)) false))))

(declare-fun b!7850903 () Bool)

(assert (=> b!7850903 (= e!4640870 ((_ map or) (store ((as const (Array C!42496 Bool)) false) (h!80268 lt!2679705) true) (content!15677 (t!388679 lt!2679705))))))

(assert (= (and d!2353223 c!1442983) b!7850902))

(assert (= (and d!2353223 (not c!1442983)) b!7850903))

(declare-fun m!8258216 () Bool)

(assert (=> b!7850903 m!8258216))

(declare-fun m!8258218 () Bool)

(assert (=> b!7850903 m!8258218))

(assert (=> d!2353191 d!2353223))

(declare-fun d!2353225 () Bool)

(declare-fun c!1442984 () Bool)

(assert (=> d!2353225 (= c!1442984 ((_ is Nil!73820) s1!4084))))

(declare-fun e!4640871 () (InoxSet C!42496))

(assert (=> d!2353225 (= (content!15677 s1!4084) e!4640871)))

(declare-fun b!7850904 () Bool)

(assert (=> b!7850904 (= e!4640871 ((as const (Array C!42496 Bool)) false))))

(declare-fun b!7850905 () Bool)

(assert (=> b!7850905 (= e!4640871 ((_ map or) (store ((as const (Array C!42496 Bool)) false) (h!80268 s1!4084) true) (content!15677 (t!388679 s1!4084))))))

(assert (= (and d!2353225 c!1442984) b!7850904))

(assert (= (and d!2353225 (not c!1442984)) b!7850905))

(declare-fun m!8258220 () Bool)

(assert (=> b!7850905 m!8258220))

(assert (=> b!7850905 m!8258098))

(assert (=> d!2353191 d!2353225))

(declare-fun d!2353227 () Bool)

(declare-fun c!1442985 () Bool)

(assert (=> d!2353227 (= c!1442985 ((_ is Nil!73820) s2!3706))))

(declare-fun e!4640872 () (InoxSet C!42496))

(assert (=> d!2353227 (= (content!15677 s2!3706) e!4640872)))

(declare-fun b!7850906 () Bool)

(assert (=> b!7850906 (= e!4640872 ((as const (Array C!42496 Bool)) false))))

(declare-fun b!7850907 () Bool)

(assert (=> b!7850907 (= e!4640872 ((_ map or) (store ((as const (Array C!42496 Bool)) false) (h!80268 s2!3706) true) (content!15677 (t!388679 s2!3706))))))

(assert (= (and d!2353227 c!1442985) b!7850906))

(assert (= (and d!2353227 (not c!1442985)) b!7850907))

(declare-fun m!8258222 () Bool)

(assert (=> b!7850907 m!8258222))

(declare-fun m!8258224 () Bool)

(assert (=> b!7850907 m!8258224))

(assert (=> d!2353191 d!2353227))

(declare-fun d!2353229 () Bool)

(assert (=> d!2353229 (= (isEmpty!42330 lt!2679663) ((_ is Nil!73820) lt!2679663))))

(assert (=> bm!727565 d!2353229))

(declare-fun b!7850908 () Bool)

(declare-fun e!4640876 () Regex!21085)

(declare-fun e!4640873 () Regex!21085)

(assert (=> b!7850908 (= e!4640876 e!4640873)))

(declare-fun c!1442987 () Bool)

(assert (=> b!7850908 (= c!1442987 ((_ is ElementMatch!21085) (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227)))))))

(declare-fun call!727589 () Regex!21085)

(declare-fun call!727586 () Regex!21085)

(declare-fun e!4640874 () Regex!21085)

(declare-fun b!7850909 () Bool)

(assert (=> b!7850909 (= e!4640874 (Union!21085 (Concat!29930 call!727589 (regTwo!42682 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227))))) call!727586))))

(declare-fun bm!727581 () Bool)

(declare-fun call!727587 () Regex!21085)

(assert (=> bm!727581 (= call!727586 call!727587)))

(declare-fun d!2353231 () Bool)

(declare-fun lt!2679720 () Regex!21085)

(assert (=> d!2353231 (validRegex!11495 lt!2679720)))

(assert (=> d!2353231 (= lt!2679720 e!4640876)))

(declare-fun c!1442989 () Bool)

(assert (=> d!2353231 (= c!1442989 (or ((_ is EmptyExpr!21085) (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227)))) ((_ is EmptyLang!21085) (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227))))))))

(assert (=> d!2353231 (validRegex!11495 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227))))))

(assert (=> d!2353231 (= (derivativeStep!6320 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227))) (h!80268 s1!4084)) lt!2679720)))

(declare-fun bm!727582 () Bool)

(declare-fun c!1442988 () Bool)

(declare-fun c!1442986 () Bool)

(assert (=> bm!727582 (= call!727587 (derivativeStep!6320 (ite c!1442986 (regOne!42683 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227)))) (ite c!1442988 (regTwo!42682 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227)))) (regOne!42682 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227)))))) (h!80268 s1!4084)))))

(declare-fun b!7850910 () Bool)

(assert (=> b!7850910 (= e!4640873 (ite (= (h!80268 s1!4084) (c!1442851 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227))))) EmptyExpr!21085 EmptyLang!21085))))

(declare-fun b!7850911 () Bool)

(declare-fun e!4640877 () Regex!21085)

(declare-fun e!4640875 () Regex!21085)

(assert (=> b!7850911 (= e!4640877 e!4640875)))

(declare-fun c!1442990 () Bool)

(assert (=> b!7850911 (= c!1442990 ((_ is Star!21085) (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227)))))))

(declare-fun b!7850912 () Bool)

(assert (=> b!7850912 (= e!4640874 (Union!21085 (Concat!29930 call!727586 (regTwo!42682 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227))))) EmptyLang!21085))))

(declare-fun b!7850913 () Bool)

(assert (=> b!7850913 (= c!1442988 (nullable!9357 (regOne!42682 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227))))))))

(assert (=> b!7850913 (= e!4640875 e!4640874)))

(declare-fun b!7850914 () Bool)

(assert (=> b!7850914 (= e!4640875 (Concat!29930 call!727589 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227)))))))

(declare-fun bm!727583 () Bool)

(declare-fun call!727588 () Regex!21085)

(assert (=> bm!727583 (= call!727588 (derivativeStep!6320 (ite c!1442986 (regTwo!42683 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227)))) (ite c!1442990 (reg!21414 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227)))) (regOne!42682 (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227)))))) (h!80268 s1!4084)))))

(declare-fun b!7850915 () Bool)

(assert (=> b!7850915 (= c!1442986 ((_ is Union!21085) (ite c!1442919 (regOne!42683 r1!6227) (ite c!1442923 (regTwo!42682 r1!6227) (regOne!42682 r1!6227)))))))

(assert (=> b!7850915 (= e!4640873 e!4640877)))

(declare-fun bm!727584 () Bool)

(assert (=> bm!727584 (= call!727589 call!727588)))

(declare-fun b!7850916 () Bool)

(assert (=> b!7850916 (= e!4640877 (Union!21085 call!727587 call!727588))))

(declare-fun b!7850917 () Bool)

(assert (=> b!7850917 (= e!4640876 EmptyLang!21085)))

(assert (= (and d!2353231 c!1442989) b!7850917))

(assert (= (and d!2353231 (not c!1442989)) b!7850908))

(assert (= (and b!7850908 c!1442987) b!7850910))

(assert (= (and b!7850908 (not c!1442987)) b!7850915))

(assert (= (and b!7850915 c!1442986) b!7850916))

(assert (= (and b!7850915 (not c!1442986)) b!7850911))

(assert (= (and b!7850911 c!1442990) b!7850914))

(assert (= (and b!7850911 (not c!1442990)) b!7850913))

(assert (= (and b!7850913 c!1442988) b!7850909))

(assert (= (and b!7850913 (not c!1442988)) b!7850912))

(assert (= (or b!7850909 b!7850912) bm!727581))

(assert (= (or b!7850914 b!7850909) bm!727584))

(assert (= (or b!7850916 bm!727584) bm!727583))

(assert (= (or b!7850916 bm!727581) bm!727582))

(declare-fun m!8258226 () Bool)

(assert (=> d!2353231 m!8258226))

(declare-fun m!8258228 () Bool)

(assert (=> d!2353231 m!8258228))

(declare-fun m!8258230 () Bool)

(assert (=> bm!727582 m!8258230))

(declare-fun m!8258232 () Bool)

(assert (=> b!7850913 m!8258232))

(declare-fun m!8258234 () Bool)

(assert (=> bm!727583 m!8258234))

(assert (=> bm!727545 d!2353231))

(declare-fun d!2353235 () Bool)

(assert (=> d!2353235 (= (isEmpty!42330 (tail!15584 s1!4084)) ((_ is Nil!73820) (tail!15584 s1!4084)))))

(assert (=> b!7850379 d!2353235))

(declare-fun d!2353237 () Bool)

(assert (=> d!2353237 (= (tail!15584 s1!4084) (t!388679 s1!4084))))

(assert (=> b!7850379 d!2353237))

(declare-fun d!2353239 () Bool)

(assert (=> d!2353239 (= (nullable!9357 (regOne!42682 lt!2679665)) (nullableFct!3689 (regOne!42682 lt!2679665)))))

(declare-fun bs!1967073 () Bool)

(assert (= bs!1967073 d!2353239))

(declare-fun m!8258236 () Bool)

(assert (=> bs!1967073 m!8258236))

(assert (=> b!7850653 d!2353239))

(declare-fun d!2353241 () Bool)

(declare-fun c!1442991 () Bool)

(assert (=> d!2353241 (= c!1442991 ((_ is Nil!73820) lt!2679698))))

(declare-fun e!4640878 () (InoxSet C!42496))

(assert (=> d!2353241 (= (content!15677 lt!2679698) e!4640878)))

(declare-fun b!7850918 () Bool)

(assert (=> b!7850918 (= e!4640878 ((as const (Array C!42496 Bool)) false))))

(declare-fun b!7850919 () Bool)

(assert (=> b!7850919 (= e!4640878 ((_ map or) (store ((as const (Array C!42496 Bool)) false) (h!80268 lt!2679698) true) (content!15677 (t!388679 lt!2679698))))))

(assert (= (and d!2353241 c!1442991) b!7850918))

(assert (= (and d!2353241 (not c!1442991)) b!7850919))

(declare-fun m!8258238 () Bool)

(assert (=> b!7850919 m!8258238))

(declare-fun m!8258240 () Bool)

(assert (=> b!7850919 m!8258240))

(assert (=> d!2353173 d!2353241))

(declare-fun d!2353243 () Bool)

(declare-fun c!1442992 () Bool)

(assert (=> d!2353243 (= c!1442992 ((_ is Nil!73820) (t!388679 s1!4084)))))

(declare-fun e!4640879 () (InoxSet C!42496))

(assert (=> d!2353243 (= (content!15677 (t!388679 s1!4084)) e!4640879)))

(declare-fun b!7850920 () Bool)

(assert (=> b!7850920 (= e!4640879 ((as const (Array C!42496 Bool)) false))))

(declare-fun b!7850921 () Bool)

(assert (=> b!7850921 (= e!4640879 ((_ map or) (store ((as const (Array C!42496 Bool)) false) (h!80268 (t!388679 s1!4084)) true) (content!15677 (t!388679 (t!388679 s1!4084)))))))

(assert (= (and d!2353243 c!1442992) b!7850920))

(assert (= (and d!2353243 (not c!1442992)) b!7850921))

(declare-fun m!8258242 () Bool)

(assert (=> b!7850921 m!8258242))

(declare-fun m!8258244 () Bool)

(assert (=> b!7850921 m!8258244))

(assert (=> d!2353173 d!2353243))

(assert (=> d!2353173 d!2353227))

(assert (=> bm!727498 d!2353207))

(declare-fun b!7850923 () Bool)

(declare-fun res!3122035 () Bool)

(declare-fun e!4640882 () Bool)

(assert (=> b!7850923 (=> (not res!3122035) (not e!4640882))))

(declare-fun call!727591 () Bool)

(assert (=> b!7850923 (= res!3122035 call!727591)))

(declare-fun e!4640886 () Bool)

(assert (=> b!7850923 (= e!4640886 e!4640882)))

(declare-fun bm!727585 () Bool)

(declare-fun c!1442993 () Bool)

(declare-fun call!727590 () Bool)

(declare-fun c!1442994 () Bool)

(assert (=> bm!727585 (= call!727590 (validRegex!11495 (ite c!1442993 (reg!21414 lt!2679701) (ite c!1442994 (regTwo!42683 lt!2679701) (regOne!42682 lt!2679701)))))))

(declare-fun b!7850924 () Bool)

(declare-fun e!4640883 () Bool)

(declare-fun e!4640880 () Bool)

(assert (=> b!7850924 (= e!4640883 e!4640880)))

(declare-fun res!3122038 () Bool)

(assert (=> b!7850924 (= res!3122038 (not (nullable!9357 (reg!21414 lt!2679701))))))

(assert (=> b!7850924 (=> (not res!3122038) (not e!4640880))))

(declare-fun bm!727586 () Bool)

(assert (=> bm!727586 (= call!727591 (validRegex!11495 (ite c!1442994 (regOne!42683 lt!2679701) (regTwo!42682 lt!2679701))))))

(declare-fun bm!727587 () Bool)

(declare-fun call!727592 () Bool)

(assert (=> bm!727587 (= call!727592 call!727590)))

(declare-fun b!7850925 () Bool)

(assert (=> b!7850925 (= e!4640883 e!4640886)))

(assert (=> b!7850925 (= c!1442994 ((_ is Union!21085) lt!2679701))))

(declare-fun b!7850926 () Bool)

(declare-fun e!4640885 () Bool)

(assert (=> b!7850926 (= e!4640885 e!4640883)))

(assert (=> b!7850926 (= c!1442993 ((_ is Star!21085) lt!2679701))))

(declare-fun b!7850922 () Bool)

(assert (=> b!7850922 (= e!4640882 call!727592)))

(declare-fun d!2353247 () Bool)

(declare-fun res!3122036 () Bool)

(assert (=> d!2353247 (=> res!3122036 e!4640885)))

(assert (=> d!2353247 (= res!3122036 ((_ is ElementMatch!21085) lt!2679701))))

(assert (=> d!2353247 (= (validRegex!11495 lt!2679701) e!4640885)))

(declare-fun b!7850927 () Bool)

(declare-fun e!4640881 () Bool)

(assert (=> b!7850927 (= e!4640881 call!727591)))

(declare-fun b!7850928 () Bool)

(assert (=> b!7850928 (= e!4640880 call!727590)))

(declare-fun b!7850929 () Bool)

(declare-fun res!3122034 () Bool)

(declare-fun e!4640884 () Bool)

(assert (=> b!7850929 (=> res!3122034 e!4640884)))

(assert (=> b!7850929 (= res!3122034 (not ((_ is Concat!29930) lt!2679701)))))

(assert (=> b!7850929 (= e!4640886 e!4640884)))

(declare-fun b!7850930 () Bool)

(assert (=> b!7850930 (= e!4640884 e!4640881)))

(declare-fun res!3122037 () Bool)

(assert (=> b!7850930 (=> (not res!3122037) (not e!4640881))))

(assert (=> b!7850930 (= res!3122037 call!727592)))

(assert (= (and d!2353247 (not res!3122036)) b!7850926))

(assert (= (and b!7850926 c!1442993) b!7850924))

(assert (= (and b!7850926 (not c!1442993)) b!7850925))

(assert (= (and b!7850924 res!3122038) b!7850928))

(assert (= (and b!7850925 c!1442994) b!7850923))

(assert (= (and b!7850925 (not c!1442994)) b!7850929))

(assert (= (and b!7850923 res!3122035) b!7850922))

(assert (= (and b!7850929 (not res!3122034)) b!7850930))

(assert (= (and b!7850930 res!3122037) b!7850927))

(assert (= (or b!7850923 b!7850927) bm!727586))

(assert (= (or b!7850922 b!7850930) bm!727587))

(assert (= (or b!7850928 bm!727587) bm!727585))

(declare-fun m!8258246 () Bool)

(assert (=> bm!727585 m!8258246))

(declare-fun m!8258248 () Bool)

(assert (=> b!7850924 m!8258248))

(declare-fun m!8258250 () Bool)

(assert (=> bm!727586 m!8258250))

(assert (=> d!2353183 d!2353247))

(declare-fun b!7850932 () Bool)

(declare-fun res!3122040 () Bool)

(declare-fun e!4640889 () Bool)

(assert (=> b!7850932 (=> (not res!3122040) (not e!4640889))))

(declare-fun call!727594 () Bool)

(assert (=> b!7850932 (= res!3122040 call!727594)))

(declare-fun e!4640893 () Bool)

(assert (=> b!7850932 (= e!4640893 e!4640889)))

(declare-fun c!1442995 () Bool)

(declare-fun bm!727588 () Bool)

(declare-fun call!727593 () Bool)

(declare-fun c!1442996 () Bool)

(assert (=> bm!727588 (= call!727593 (validRegex!11495 (ite c!1442995 (reg!21414 lt!2679665) (ite c!1442996 (regTwo!42683 lt!2679665) (regOne!42682 lt!2679665)))))))

(declare-fun b!7850933 () Bool)

(declare-fun e!4640890 () Bool)

(declare-fun e!4640887 () Bool)

(assert (=> b!7850933 (= e!4640890 e!4640887)))

(declare-fun res!3122043 () Bool)

(assert (=> b!7850933 (= res!3122043 (not (nullable!9357 (reg!21414 lt!2679665))))))

(assert (=> b!7850933 (=> (not res!3122043) (not e!4640887))))

(declare-fun bm!727589 () Bool)

(assert (=> bm!727589 (= call!727594 (validRegex!11495 (ite c!1442996 (regOne!42683 lt!2679665) (regTwo!42682 lt!2679665))))))

(declare-fun bm!727590 () Bool)

(declare-fun call!727595 () Bool)

(assert (=> bm!727590 (= call!727595 call!727593)))

(declare-fun b!7850934 () Bool)

(assert (=> b!7850934 (= e!4640890 e!4640893)))

(assert (=> b!7850934 (= c!1442996 ((_ is Union!21085) lt!2679665))))

(declare-fun b!7850935 () Bool)

(declare-fun e!4640892 () Bool)

(assert (=> b!7850935 (= e!4640892 e!4640890)))

(assert (=> b!7850935 (= c!1442995 ((_ is Star!21085) lt!2679665))))

(declare-fun b!7850931 () Bool)

(assert (=> b!7850931 (= e!4640889 call!727595)))

(declare-fun d!2353251 () Bool)

(declare-fun res!3122041 () Bool)

(assert (=> d!2353251 (=> res!3122041 e!4640892)))

(assert (=> d!2353251 (= res!3122041 ((_ is ElementMatch!21085) lt!2679665))))

(assert (=> d!2353251 (= (validRegex!11495 lt!2679665) e!4640892)))

(declare-fun b!7850936 () Bool)

(declare-fun e!4640888 () Bool)

(assert (=> b!7850936 (= e!4640888 call!727594)))

(declare-fun b!7850937 () Bool)

(assert (=> b!7850937 (= e!4640887 call!727593)))

(declare-fun b!7850938 () Bool)

(declare-fun res!3122039 () Bool)

(declare-fun e!4640891 () Bool)

(assert (=> b!7850938 (=> res!3122039 e!4640891)))

(assert (=> b!7850938 (= res!3122039 (not ((_ is Concat!29930) lt!2679665)))))

(assert (=> b!7850938 (= e!4640893 e!4640891)))

(declare-fun b!7850939 () Bool)

(assert (=> b!7850939 (= e!4640891 e!4640888)))

(declare-fun res!3122042 () Bool)

(assert (=> b!7850939 (=> (not res!3122042) (not e!4640888))))

(assert (=> b!7850939 (= res!3122042 call!727595)))

(assert (= (and d!2353251 (not res!3122041)) b!7850935))

(assert (= (and b!7850935 c!1442995) b!7850933))

(assert (= (and b!7850935 (not c!1442995)) b!7850934))

(assert (= (and b!7850933 res!3122043) b!7850937))

(assert (= (and b!7850934 c!1442996) b!7850932))

(assert (= (and b!7850934 (not c!1442996)) b!7850938))

(assert (= (and b!7850932 res!3122040) b!7850931))

(assert (= (and b!7850938 (not res!3122039)) b!7850939))

(assert (= (and b!7850939 res!3122042) b!7850936))

(assert (= (or b!7850932 b!7850936) bm!727589))

(assert (= (or b!7850931 b!7850939) bm!727590))

(assert (= (or b!7850937 bm!727590) bm!727588))

(declare-fun m!8258254 () Bool)

(assert (=> bm!727588 m!8258254))

(declare-fun m!8258256 () Bool)

(assert (=> b!7850933 m!8258256))

(declare-fun m!8258258 () Bool)

(assert (=> bm!727589 m!8258258))

(assert (=> d!2353183 d!2353251))

(assert (=> b!7850433 d!2353217))

(assert (=> b!7850714 d!2353197))

(declare-fun b!7850940 () Bool)

(declare-fun e!4640897 () Regex!21085)

(declare-fun e!4640894 () Regex!21085)

(assert (=> b!7850940 (= e!4640897 e!4640894)))

(declare-fun c!1442998 () Bool)

(assert (=> b!7850940 (= c!1442998 ((_ is ElementMatch!21085) (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665)))))))

(declare-fun b!7850941 () Bool)

(declare-fun call!727599 () Regex!21085)

(declare-fun e!4640895 () Regex!21085)

(declare-fun call!727596 () Regex!21085)

(assert (=> b!7850941 (= e!4640895 (Union!21085 (Concat!29930 call!727599 (regTwo!42682 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665))))) call!727596))))

(declare-fun bm!727591 () Bool)

(declare-fun call!727597 () Regex!21085)

(assert (=> bm!727591 (= call!727596 call!727597)))

(declare-fun d!2353257 () Bool)

(declare-fun lt!2679721 () Regex!21085)

(assert (=> d!2353257 (validRegex!11495 lt!2679721)))

(assert (=> d!2353257 (= lt!2679721 e!4640897)))

(declare-fun c!1443000 () Bool)

(assert (=> d!2353257 (= c!1443000 (or ((_ is EmptyExpr!21085) (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665)))) ((_ is EmptyLang!21085) (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665))))))))

(assert (=> d!2353257 (validRegex!11495 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665))))))

(assert (=> d!2353257 (= (derivativeStep!6320 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665))) (h!80268 s1!4084)) lt!2679721)))

(declare-fun c!1442999 () Bool)

(declare-fun c!1442997 () Bool)

(declare-fun bm!727592 () Bool)

(assert (=> bm!727592 (= call!727597 (derivativeStep!6320 (ite c!1442997 (regOne!42683 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665)))) (ite c!1442999 (regTwo!42682 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665)))) (regOne!42682 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665)))))) (h!80268 s1!4084)))))

(declare-fun b!7850942 () Bool)

(assert (=> b!7850942 (= e!4640894 (ite (= (h!80268 s1!4084) (c!1442851 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665))))) EmptyExpr!21085 EmptyLang!21085))))

(declare-fun b!7850943 () Bool)

(declare-fun e!4640898 () Regex!21085)

(declare-fun e!4640896 () Regex!21085)

(assert (=> b!7850943 (= e!4640898 e!4640896)))

(declare-fun c!1443001 () Bool)

(assert (=> b!7850943 (= c!1443001 ((_ is Star!21085) (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665)))))))

(declare-fun b!7850944 () Bool)

(assert (=> b!7850944 (= e!4640895 (Union!21085 (Concat!29930 call!727596 (regTwo!42682 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665))))) EmptyLang!21085))))

(declare-fun b!7850945 () Bool)

(assert (=> b!7850945 (= c!1442999 (nullable!9357 (regOne!42682 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665))))))))

(assert (=> b!7850945 (= e!4640896 e!4640895)))

(declare-fun b!7850946 () Bool)

(assert (=> b!7850946 (= e!4640896 (Concat!29930 call!727599 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665)))))))

(declare-fun bm!727593 () Bool)

(declare-fun call!727598 () Regex!21085)

(assert (=> bm!727593 (= call!727598 (derivativeStep!6320 (ite c!1442997 (regTwo!42683 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665)))) (ite c!1443001 (reg!21414 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665)))) (regOne!42682 (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665)))))) (h!80268 s1!4084)))))

(declare-fun b!7850947 () Bool)

(assert (=> b!7850947 (= c!1442997 ((_ is Union!21085) (ite c!1442941 (regTwo!42683 lt!2679665) (ite c!1442945 (reg!21414 lt!2679665) (regOne!42682 lt!2679665)))))))

(assert (=> b!7850947 (= e!4640894 e!4640898)))

(declare-fun bm!727594 () Bool)

(assert (=> bm!727594 (= call!727599 call!727598)))

(declare-fun b!7850948 () Bool)

(assert (=> b!7850948 (= e!4640898 (Union!21085 call!727597 call!727598))))

(declare-fun b!7850949 () Bool)

(assert (=> b!7850949 (= e!4640897 EmptyLang!21085)))

(assert (= (and d!2353257 c!1443000) b!7850949))

(assert (= (and d!2353257 (not c!1443000)) b!7850940))

(assert (= (and b!7850940 c!1442998) b!7850942))

(assert (= (and b!7850940 (not c!1442998)) b!7850947))

(assert (= (and b!7850947 c!1442997) b!7850948))

(assert (= (and b!7850947 (not c!1442997)) b!7850943))

(assert (= (and b!7850943 c!1443001) b!7850946))

(assert (= (and b!7850943 (not c!1443001)) b!7850945))

(assert (= (and b!7850945 c!1442999) b!7850941))

(assert (= (and b!7850945 (not c!1442999)) b!7850944))

(assert (= (or b!7850941 b!7850944) bm!727591))

(assert (= (or b!7850946 b!7850941) bm!727594))

(assert (= (or b!7850948 bm!727594) bm!727593))

(assert (= (or b!7850948 bm!727591) bm!727592))

(declare-fun m!8258262 () Bool)

(assert (=> d!2353257 m!8258262))

(declare-fun m!8258264 () Bool)

(assert (=> d!2353257 m!8258264))

(declare-fun m!8258266 () Bool)

(assert (=> bm!727592 m!8258266))

(declare-fun m!8258268 () Bool)

(assert (=> b!7850945 m!8258268))

(declare-fun m!8258270 () Bool)

(assert (=> bm!727593 m!8258270))

(assert (=> bm!727558 d!2353257))

(declare-fun d!2353263 () Bool)

(assert (=> d!2353263 (= (isEmpty!42330 (tail!15584 (++!18093 s1!4084 s2!3706))) ((_ is Nil!73820) (tail!15584 (++!18093 s1!4084 s2!3706))))))

(assert (=> b!7850673 d!2353263))

(declare-fun d!2353265 () Bool)

(assert (=> d!2353265 (= (tail!15584 (++!18093 s1!4084 s2!3706)) (t!388679 (++!18093 s1!4084 s2!3706)))))

(assert (=> b!7850673 d!2353265))

(declare-fun d!2353267 () Bool)

(assert (=> d!2353267 (= (nullable!9357 (reg!21414 r1!6227)) (nullableFct!3689 (reg!21414 r1!6227)))))

(declare-fun bs!1967076 () Bool)

(assert (= bs!1967076 d!2353267))

(declare-fun m!8258272 () Bool)

(assert (=> bs!1967076 m!8258272))

(assert (=> b!7850445 d!2353267))

(declare-fun b!7850964 () Bool)

(declare-fun e!4640907 () Bool)

(declare-fun e!4640908 () Bool)

(assert (=> b!7850964 (= e!4640907 e!4640908)))

(declare-fun res!3122057 () Bool)

(assert (=> b!7850964 (=> res!3122057 e!4640908)))

(declare-fun call!727601 () Bool)

(assert (=> b!7850964 (= res!3122057 call!727601)))

(declare-fun b!7850965 () Bool)

(declare-fun e!4640911 () Bool)

(assert (=> b!7850965 (= e!4640911 (nullable!9357 (derivativeStep!6320 r2!6165 (head!16041 s2!3706))))))

(declare-fun b!7850966 () Bool)

(declare-fun e!4640906 () Bool)

(assert (=> b!7850966 (= e!4640906 e!4640907)))

(declare-fun res!3122052 () Bool)

(assert (=> b!7850966 (=> (not res!3122052) (not e!4640907))))

(declare-fun lt!2679723 () Bool)

(assert (=> b!7850966 (= res!3122052 (not lt!2679723))))

(declare-fun b!7850967 () Bool)

(declare-fun res!3122058 () Bool)

(assert (=> b!7850967 (=> res!3122058 e!4640906)))

(assert (=> b!7850967 (= res!3122058 (not ((_ is ElementMatch!21085) (derivativeStep!6320 r2!6165 (head!16041 s2!3706)))))))

(declare-fun e!4640910 () Bool)

(assert (=> b!7850967 (= e!4640910 e!4640906)))

(declare-fun b!7850968 () Bool)

(declare-fun e!4640909 () Bool)

(assert (=> b!7850968 (= e!4640909 (= (head!16041 (tail!15584 s2!3706)) (c!1442851 (derivativeStep!6320 r2!6165 (head!16041 s2!3706)))))))

(declare-fun b!7850969 () Bool)

(declare-fun res!3122053 () Bool)

(assert (=> b!7850969 (=> res!3122053 e!4640908)))

(assert (=> b!7850969 (= res!3122053 (not (isEmpty!42330 (tail!15584 (tail!15584 s2!3706)))))))

(declare-fun b!7850970 () Bool)

(assert (=> b!7850970 (= e!4640910 (not lt!2679723))))

(declare-fun b!7850971 () Bool)

(declare-fun e!4640912 () Bool)

(assert (=> b!7850971 (= e!4640912 e!4640910)))

(declare-fun c!1443006 () Bool)

(assert (=> b!7850971 (= c!1443006 ((_ is EmptyLang!21085) (derivativeStep!6320 r2!6165 (head!16041 s2!3706))))))

(declare-fun b!7850972 () Bool)

(assert (=> b!7850972 (= e!4640911 (matchR!10521 (derivativeStep!6320 (derivativeStep!6320 r2!6165 (head!16041 s2!3706)) (head!16041 (tail!15584 s2!3706))) (tail!15584 (tail!15584 s2!3706))))))

(declare-fun b!7850973 () Bool)

(declare-fun res!3122056 () Bool)

(assert (=> b!7850973 (=> (not res!3122056) (not e!4640909))))

(assert (=> b!7850973 (= res!3122056 (not call!727601))))

(declare-fun b!7850974 () Bool)

(declare-fun res!3122055 () Bool)

(assert (=> b!7850974 (=> res!3122055 e!4640906)))

(assert (=> b!7850974 (= res!3122055 e!4640909)))

(declare-fun res!3122059 () Bool)

(assert (=> b!7850974 (=> (not res!3122059) (not e!4640909))))

(assert (=> b!7850974 (= res!3122059 lt!2679723)))

(declare-fun b!7850975 () Bool)

(declare-fun res!3122054 () Bool)

(assert (=> b!7850975 (=> (not res!3122054) (not e!4640909))))

(assert (=> b!7850975 (= res!3122054 (isEmpty!42330 (tail!15584 (tail!15584 s2!3706))))))

(declare-fun bm!727596 () Bool)

(assert (=> bm!727596 (= call!727601 (isEmpty!42330 (tail!15584 s2!3706)))))

(declare-fun d!2353269 () Bool)

(assert (=> d!2353269 e!4640912))

(declare-fun c!1443007 () Bool)

(assert (=> d!2353269 (= c!1443007 ((_ is EmptyExpr!21085) (derivativeStep!6320 r2!6165 (head!16041 s2!3706))))))

(assert (=> d!2353269 (= lt!2679723 e!4640911)))

(declare-fun c!1443005 () Bool)

(assert (=> d!2353269 (= c!1443005 (isEmpty!42330 (tail!15584 s2!3706)))))

(assert (=> d!2353269 (validRegex!11495 (derivativeStep!6320 r2!6165 (head!16041 s2!3706)))))

(assert (=> d!2353269 (= (matchR!10521 (derivativeStep!6320 r2!6165 (head!16041 s2!3706)) (tail!15584 s2!3706)) lt!2679723)))

(declare-fun b!7850976 () Bool)

(assert (=> b!7850976 (= e!4640908 (not (= (head!16041 (tail!15584 s2!3706)) (c!1442851 (derivativeStep!6320 r2!6165 (head!16041 s2!3706))))))))

(declare-fun b!7850977 () Bool)

(assert (=> b!7850977 (= e!4640912 (= lt!2679723 call!727601))))

(assert (= (and d!2353269 c!1443005) b!7850965))

(assert (= (and d!2353269 (not c!1443005)) b!7850972))

(assert (= (and d!2353269 c!1443007) b!7850977))

(assert (= (and d!2353269 (not c!1443007)) b!7850971))

(assert (= (and b!7850971 c!1443006) b!7850970))

(assert (= (and b!7850971 (not c!1443006)) b!7850967))

(assert (= (and b!7850967 (not res!3122058)) b!7850974))

(assert (= (and b!7850974 res!3122059) b!7850973))

(assert (= (and b!7850973 res!3122056) b!7850975))

(assert (= (and b!7850975 res!3122054) b!7850968))

(assert (= (and b!7850974 (not res!3122055)) b!7850966))

(assert (= (and b!7850966 res!3122052) b!7850964))

(assert (= (and b!7850964 (not res!3122057)) b!7850969))

(assert (= (and b!7850969 (not res!3122053)) b!7850976))

(assert (= (or b!7850977 b!7850964 b!7850973) bm!727596))

(assert (=> b!7850969 m!8257952))

(declare-fun m!8258282 () Bool)

(assert (=> b!7850969 m!8258282))

(assert (=> b!7850969 m!8258282))

(declare-fun m!8258284 () Bool)

(assert (=> b!7850969 m!8258284))

(assert (=> b!7850972 m!8257952))

(declare-fun m!8258286 () Bool)

(assert (=> b!7850972 m!8258286))

(assert (=> b!7850972 m!8257958))

(assert (=> b!7850972 m!8258286))

(declare-fun m!8258288 () Bool)

(assert (=> b!7850972 m!8258288))

(assert (=> b!7850972 m!8257952))

(assert (=> b!7850972 m!8258282))

(assert (=> b!7850972 m!8258288))

(assert (=> b!7850972 m!8258282))

(declare-fun m!8258290 () Bool)

(assert (=> b!7850972 m!8258290))

(assert (=> b!7850965 m!8257958))

(declare-fun m!8258292 () Bool)

(assert (=> b!7850965 m!8258292))

(assert (=> d!2353269 m!8257952))

(assert (=> d!2353269 m!8257954))

(assert (=> d!2353269 m!8257958))

(declare-fun m!8258294 () Bool)

(assert (=> d!2353269 m!8258294))

(assert (=> b!7850975 m!8257952))

(assert (=> b!7850975 m!8258282))

(assert (=> b!7850975 m!8258282))

(assert (=> b!7850975 m!8258284))

(assert (=> b!7850968 m!8257952))

(assert (=> b!7850968 m!8258286))

(assert (=> bm!727596 m!8257952))

(assert (=> bm!727596 m!8257954))

(assert (=> b!7850976 m!8257952))

(assert (=> b!7850976 m!8258286))

(assert (=> b!7850437 d!2353269))

(declare-fun b!7850978 () Bool)

(declare-fun e!4640916 () Regex!21085)

(declare-fun e!4640913 () Regex!21085)

(assert (=> b!7850978 (= e!4640916 e!4640913)))

(declare-fun c!1443009 () Bool)

(assert (=> b!7850978 (= c!1443009 ((_ is ElementMatch!21085) r2!6165))))

(declare-fun e!4640914 () Regex!21085)

(declare-fun call!727605 () Regex!21085)

(declare-fun b!7850979 () Bool)

(declare-fun call!727602 () Regex!21085)

(assert (=> b!7850979 (= e!4640914 (Union!21085 (Concat!29930 call!727605 (regTwo!42682 r2!6165)) call!727602))))

(declare-fun bm!727597 () Bool)

(declare-fun call!727603 () Regex!21085)

(assert (=> bm!727597 (= call!727602 call!727603)))

(declare-fun d!2353273 () Bool)

(declare-fun lt!2679724 () Regex!21085)

(assert (=> d!2353273 (validRegex!11495 lt!2679724)))

(assert (=> d!2353273 (= lt!2679724 e!4640916)))

(declare-fun c!1443011 () Bool)

(assert (=> d!2353273 (= c!1443011 (or ((_ is EmptyExpr!21085) r2!6165) ((_ is EmptyLang!21085) r2!6165)))))

(assert (=> d!2353273 (validRegex!11495 r2!6165)))

(assert (=> d!2353273 (= (derivativeStep!6320 r2!6165 (head!16041 s2!3706)) lt!2679724)))

(declare-fun c!1443010 () Bool)

(declare-fun bm!727598 () Bool)

(declare-fun c!1443008 () Bool)

(assert (=> bm!727598 (= call!727603 (derivativeStep!6320 (ite c!1443008 (regOne!42683 r2!6165) (ite c!1443010 (regTwo!42682 r2!6165) (regOne!42682 r2!6165))) (head!16041 s2!3706)))))

(declare-fun b!7850980 () Bool)

(assert (=> b!7850980 (= e!4640913 (ite (= (head!16041 s2!3706) (c!1442851 r2!6165)) EmptyExpr!21085 EmptyLang!21085))))

(declare-fun b!7850981 () Bool)

(declare-fun e!4640917 () Regex!21085)

(declare-fun e!4640915 () Regex!21085)

(assert (=> b!7850981 (= e!4640917 e!4640915)))

(declare-fun c!1443012 () Bool)

(assert (=> b!7850981 (= c!1443012 ((_ is Star!21085) r2!6165))))

(declare-fun b!7850982 () Bool)

(assert (=> b!7850982 (= e!4640914 (Union!21085 (Concat!29930 call!727602 (regTwo!42682 r2!6165)) EmptyLang!21085))))

(declare-fun b!7850983 () Bool)

(assert (=> b!7850983 (= c!1443010 (nullable!9357 (regOne!42682 r2!6165)))))

(assert (=> b!7850983 (= e!4640915 e!4640914)))

(declare-fun b!7850984 () Bool)

(assert (=> b!7850984 (= e!4640915 (Concat!29930 call!727605 r2!6165))))

(declare-fun call!727604 () Regex!21085)

(declare-fun bm!727599 () Bool)

(assert (=> bm!727599 (= call!727604 (derivativeStep!6320 (ite c!1443008 (regTwo!42683 r2!6165) (ite c!1443012 (reg!21414 r2!6165) (regOne!42682 r2!6165))) (head!16041 s2!3706)))))

(declare-fun b!7850985 () Bool)

(assert (=> b!7850985 (= c!1443008 ((_ is Union!21085) r2!6165))))

(assert (=> b!7850985 (= e!4640913 e!4640917)))

(declare-fun bm!727600 () Bool)

(assert (=> bm!727600 (= call!727605 call!727604)))

(declare-fun b!7850986 () Bool)

(assert (=> b!7850986 (= e!4640917 (Union!21085 call!727603 call!727604))))

(declare-fun b!7850987 () Bool)

(assert (=> b!7850987 (= e!4640916 EmptyLang!21085)))

(assert (= (and d!2353273 c!1443011) b!7850987))

(assert (= (and d!2353273 (not c!1443011)) b!7850978))

(assert (= (and b!7850978 c!1443009) b!7850980))

(assert (= (and b!7850978 (not c!1443009)) b!7850985))

(assert (= (and b!7850985 c!1443008) b!7850986))

(assert (= (and b!7850985 (not c!1443008)) b!7850981))

(assert (= (and b!7850981 c!1443012) b!7850984))

(assert (= (and b!7850981 (not c!1443012)) b!7850983))

(assert (= (and b!7850983 c!1443010) b!7850979))

(assert (= (and b!7850983 (not c!1443010)) b!7850982))

(assert (= (or b!7850979 b!7850982) bm!727597))

(assert (= (or b!7850984 b!7850979) bm!727600))

(assert (= (or b!7850986 bm!727600) bm!727599))

(assert (= (or b!7850986 bm!727597) bm!727598))

(declare-fun m!8258296 () Bool)

(assert (=> d!2353273 m!8258296))

(assert (=> d!2353273 m!8257894))

(assert (=> bm!727598 m!8257956))

(declare-fun m!8258298 () Bool)

(assert (=> bm!727598 m!8258298))

(declare-fun m!8258300 () Bool)

(assert (=> b!7850983 m!8258300))

(assert (=> bm!727599 m!8257956))

(declare-fun m!8258302 () Bool)

(assert (=> bm!727599 m!8258302))

(assert (=> b!7850437 d!2353273))

(assert (=> b!7850437 d!2353217))

(declare-fun d!2353275 () Bool)

(assert (=> d!2353275 (= (tail!15584 s2!3706) (t!388679 s2!3706))))

(assert (=> b!7850437 d!2353275))

(declare-fun d!2353277 () Bool)

(assert (=> d!2353277 (= (nullable!9357 (regOne!42682 r1!6227)) (nullableFct!3689 (regOne!42682 r1!6227)))))

(declare-fun bs!1967077 () Bool)

(assert (= bs!1967077 d!2353277))

(declare-fun m!8258304 () Bool)

(assert (=> bs!1967077 m!8258304))

(assert (=> b!7850582 d!2353277))

(declare-fun b!7850989 () Bool)

(declare-fun res!3122061 () Bool)

(declare-fun e!4640920 () Bool)

(assert (=> b!7850989 (=> (not res!3122061) (not e!4640920))))

(declare-fun call!727607 () Bool)

(assert (=> b!7850989 (= res!3122061 call!727607)))

(declare-fun e!4640924 () Bool)

(assert (=> b!7850989 (= e!4640924 e!4640920)))

(declare-fun c!1443014 () Bool)

(declare-fun bm!727601 () Bool)

(declare-fun call!727606 () Bool)

(declare-fun c!1443013 () Bool)

(assert (=> bm!727601 (= call!727606 (validRegex!11495 (ite c!1443013 (reg!21414 lt!2679691) (ite c!1443014 (regTwo!42683 lt!2679691) (regOne!42682 lt!2679691)))))))

(declare-fun b!7850990 () Bool)

(declare-fun e!4640921 () Bool)

(declare-fun e!4640918 () Bool)

(assert (=> b!7850990 (= e!4640921 e!4640918)))

(declare-fun res!3122064 () Bool)

(assert (=> b!7850990 (= res!3122064 (not (nullable!9357 (reg!21414 lt!2679691))))))

(assert (=> b!7850990 (=> (not res!3122064) (not e!4640918))))

(declare-fun bm!727602 () Bool)

(assert (=> bm!727602 (= call!727607 (validRegex!11495 (ite c!1443014 (regOne!42683 lt!2679691) (regTwo!42682 lt!2679691))))))

(declare-fun bm!727603 () Bool)

(declare-fun call!727608 () Bool)

(assert (=> bm!727603 (= call!727608 call!727606)))

(declare-fun b!7850991 () Bool)

(assert (=> b!7850991 (= e!4640921 e!4640924)))

(assert (=> b!7850991 (= c!1443014 ((_ is Union!21085) lt!2679691))))

(declare-fun b!7850992 () Bool)

(declare-fun e!4640923 () Bool)

(assert (=> b!7850992 (= e!4640923 e!4640921)))

(assert (=> b!7850992 (= c!1443013 ((_ is Star!21085) lt!2679691))))

(declare-fun b!7850988 () Bool)

(assert (=> b!7850988 (= e!4640920 call!727608)))

(declare-fun d!2353279 () Bool)

(declare-fun res!3122062 () Bool)

(assert (=> d!2353279 (=> res!3122062 e!4640923)))

(assert (=> d!2353279 (= res!3122062 ((_ is ElementMatch!21085) lt!2679691))))

(assert (=> d!2353279 (= (validRegex!11495 lt!2679691) e!4640923)))

(declare-fun b!7850993 () Bool)

(declare-fun e!4640919 () Bool)

(assert (=> b!7850993 (= e!4640919 call!727607)))

(declare-fun b!7850994 () Bool)

(assert (=> b!7850994 (= e!4640918 call!727606)))

(declare-fun b!7850995 () Bool)

(declare-fun res!3122060 () Bool)

(declare-fun e!4640922 () Bool)

(assert (=> b!7850995 (=> res!3122060 e!4640922)))

(assert (=> b!7850995 (= res!3122060 (not ((_ is Concat!29930) lt!2679691)))))

(assert (=> b!7850995 (= e!4640924 e!4640922)))

(declare-fun b!7850996 () Bool)

(assert (=> b!7850996 (= e!4640922 e!4640919)))

(declare-fun res!3122063 () Bool)

(assert (=> b!7850996 (=> (not res!3122063) (not e!4640919))))

(assert (=> b!7850996 (= res!3122063 call!727608)))

(assert (= (and d!2353279 (not res!3122062)) b!7850992))

(assert (= (and b!7850992 c!1443013) b!7850990))

(assert (= (and b!7850992 (not c!1443013)) b!7850991))

(assert (= (and b!7850990 res!3122064) b!7850994))

(assert (= (and b!7850991 c!1443014) b!7850989))

(assert (= (and b!7850991 (not c!1443014)) b!7850995))

(assert (= (and b!7850989 res!3122061) b!7850988))

(assert (= (and b!7850995 (not res!3122060)) b!7850996))

(assert (= (and b!7850996 res!3122063) b!7850993))

(assert (= (or b!7850989 b!7850993) bm!727602))

(assert (= (or b!7850988 b!7850996) bm!727603))

(assert (= (or b!7850994 bm!727603) bm!727601))

(declare-fun m!8258306 () Bool)

(assert (=> bm!727601 m!8258306))

(declare-fun m!8258308 () Bool)

(assert (=> b!7850990 m!8258308))

(declare-fun m!8258310 () Bool)

(assert (=> bm!727602 m!8258310))

(assert (=> d!2353165 d!2353279))

(assert (=> d!2353165 d!2353155))

(assert (=> b!7850373 d!2353235))

(assert (=> b!7850373 d!2353237))

(declare-fun d!2353283 () Bool)

(assert (=> d!2353283 (= (validRegex!11495 EmptyLang!21085) true)))

(assert (=> b!7850772 d!2353283))

(declare-fun d!2353285 () Bool)

(assert (=> d!2353285 (= (nullable!9357 (reg!21414 r2!6165)) (nullableFct!3689 (reg!21414 r2!6165)))))

(declare-fun bs!1967079 () Bool)

(assert (= bs!1967079 d!2353285))

(declare-fun m!8258312 () Bool)

(assert (=> bs!1967079 m!8258312))

(assert (=> b!7850422 d!2353285))

(assert (=> b!7850369 d!2353163))

(assert (=> b!7850478 d!2353151))

(assert (=> b!7850679 d!2353263))

(assert (=> b!7850679 d!2353265))

(declare-fun b!7851006 () Bool)

(declare-fun e!4640933 () Bool)

(declare-fun e!4640934 () Bool)

(assert (=> b!7851006 (= e!4640933 e!4640934)))

(declare-fun res!3122075 () Bool)

(assert (=> b!7851006 (=> res!3122075 e!4640934)))

(declare-fun call!727612 () Bool)

(assert (=> b!7851006 (= res!3122075 call!727612)))

(declare-fun b!7851007 () Bool)

(declare-fun e!4640937 () Bool)

(assert (=> b!7851007 (= e!4640937 (nullable!9357 (derivativeStep!6320 lt!2679661 (head!16041 lt!2679663))))))

(declare-fun b!7851008 () Bool)

(declare-fun e!4640932 () Bool)

(assert (=> b!7851008 (= e!4640932 e!4640933)))

(declare-fun res!3122070 () Bool)

(assert (=> b!7851008 (=> (not res!3122070) (not e!4640933))))

(declare-fun lt!2679725 () Bool)

(assert (=> b!7851008 (= res!3122070 (not lt!2679725))))

(declare-fun b!7851009 () Bool)

(declare-fun res!3122076 () Bool)

(assert (=> b!7851009 (=> res!3122076 e!4640932)))

(assert (=> b!7851009 (= res!3122076 (not ((_ is ElementMatch!21085) (derivativeStep!6320 lt!2679661 (head!16041 lt!2679663)))))))

(declare-fun e!4640936 () Bool)

(assert (=> b!7851009 (= e!4640936 e!4640932)))

(declare-fun b!7851010 () Bool)

(declare-fun e!4640935 () Bool)

(assert (=> b!7851010 (= e!4640935 (= (head!16041 (tail!15584 lt!2679663)) (c!1442851 (derivativeStep!6320 lt!2679661 (head!16041 lt!2679663)))))))

(declare-fun b!7851011 () Bool)

(declare-fun res!3122071 () Bool)

(assert (=> b!7851011 (=> res!3122071 e!4640934)))

(assert (=> b!7851011 (= res!3122071 (not (isEmpty!42330 (tail!15584 (tail!15584 lt!2679663)))))))

(declare-fun b!7851012 () Bool)

(assert (=> b!7851012 (= e!4640936 (not lt!2679725))))

(declare-fun b!7851013 () Bool)

(declare-fun e!4640938 () Bool)

(assert (=> b!7851013 (= e!4640938 e!4640936)))

(declare-fun c!1443018 () Bool)

(assert (=> b!7851013 (= c!1443018 ((_ is EmptyLang!21085) (derivativeStep!6320 lt!2679661 (head!16041 lt!2679663))))))

(declare-fun b!7851014 () Bool)

(assert (=> b!7851014 (= e!4640937 (matchR!10521 (derivativeStep!6320 (derivativeStep!6320 lt!2679661 (head!16041 lt!2679663)) (head!16041 (tail!15584 lt!2679663))) (tail!15584 (tail!15584 lt!2679663))))))

(declare-fun b!7851015 () Bool)

(declare-fun res!3122074 () Bool)

(assert (=> b!7851015 (=> (not res!3122074) (not e!4640935))))

(assert (=> b!7851015 (= res!3122074 (not call!727612))))

(declare-fun b!7851016 () Bool)

(declare-fun res!3122073 () Bool)

(assert (=> b!7851016 (=> res!3122073 e!4640932)))

(assert (=> b!7851016 (= res!3122073 e!4640935)))

(declare-fun res!3122077 () Bool)

(assert (=> b!7851016 (=> (not res!3122077) (not e!4640935))))

(assert (=> b!7851016 (= res!3122077 lt!2679725)))

(declare-fun b!7851017 () Bool)

(declare-fun res!3122072 () Bool)

(assert (=> b!7851017 (=> (not res!3122072) (not e!4640935))))

(assert (=> b!7851017 (= res!3122072 (isEmpty!42330 (tail!15584 (tail!15584 lt!2679663))))))

(declare-fun bm!727607 () Bool)

(assert (=> bm!727607 (= call!727612 (isEmpty!42330 (tail!15584 lt!2679663)))))

(declare-fun d!2353287 () Bool)

(assert (=> d!2353287 e!4640938))

(declare-fun c!1443019 () Bool)

(assert (=> d!2353287 (= c!1443019 ((_ is EmptyExpr!21085) (derivativeStep!6320 lt!2679661 (head!16041 lt!2679663))))))

(assert (=> d!2353287 (= lt!2679725 e!4640937)))

(declare-fun c!1443017 () Bool)

(assert (=> d!2353287 (= c!1443017 (isEmpty!42330 (tail!15584 lt!2679663)))))

(assert (=> d!2353287 (validRegex!11495 (derivativeStep!6320 lt!2679661 (head!16041 lt!2679663)))))

(assert (=> d!2353287 (= (matchR!10521 (derivativeStep!6320 lt!2679661 (head!16041 lt!2679663)) (tail!15584 lt!2679663)) lt!2679725)))

(declare-fun b!7851018 () Bool)

(assert (=> b!7851018 (= e!4640934 (not (= (head!16041 (tail!15584 lt!2679663)) (c!1442851 (derivativeStep!6320 lt!2679661 (head!16041 lt!2679663))))))))

(declare-fun b!7851019 () Bool)

(assert (=> b!7851019 (= e!4640938 (= lt!2679725 call!727612))))

(assert (= (and d!2353287 c!1443017) b!7851007))

(assert (= (and d!2353287 (not c!1443017)) b!7851014))

(assert (= (and d!2353287 c!1443019) b!7851019))

(assert (= (and d!2353287 (not c!1443019)) b!7851013))

(assert (= (and b!7851013 c!1443018) b!7851012))

(assert (= (and b!7851013 (not c!1443018)) b!7851009))

(assert (= (and b!7851009 (not res!3122076)) b!7851016))

(assert (= (and b!7851016 res!3122077) b!7851015))

(assert (= (and b!7851015 res!3122074) b!7851017))

(assert (= (and b!7851017 res!3122072) b!7851010))

(assert (= (and b!7851016 (not res!3122073)) b!7851008))

(assert (= (and b!7851008 res!3122070) b!7851006))

(assert (= (and b!7851006 (not res!3122075)) b!7851011))

(assert (= (and b!7851011 (not res!3122071)) b!7851018))

(assert (= (or b!7851019 b!7851006 b!7851015) bm!727607))

(assert (=> b!7851011 m!8257972))

(assert (=> b!7851011 m!8258190))

(assert (=> b!7851011 m!8258190))

(assert (=> b!7851011 m!8258192))

(assert (=> b!7851014 m!8257972))

(assert (=> b!7851014 m!8258194))

(assert (=> b!7851014 m!8258158))

(assert (=> b!7851014 m!8258194))

(declare-fun m!8258320 () Bool)

(assert (=> b!7851014 m!8258320))

(assert (=> b!7851014 m!8257972))

(assert (=> b!7851014 m!8258190))

(assert (=> b!7851014 m!8258320))

(assert (=> b!7851014 m!8258190))

(declare-fun m!8258324 () Bool)

(assert (=> b!7851014 m!8258324))

(assert (=> b!7851007 m!8258158))

(declare-fun m!8258330 () Bool)

(assert (=> b!7851007 m!8258330))

(assert (=> d!2353287 m!8257972))

(assert (=> d!2353287 m!8257974))

(assert (=> d!2353287 m!8258158))

(declare-fun m!8258332 () Bool)

(assert (=> d!2353287 m!8258332))

(assert (=> b!7851017 m!8257972))

(assert (=> b!7851017 m!8258190))

(assert (=> b!7851017 m!8258190))

(assert (=> b!7851017 m!8258192))

(assert (=> b!7851010 m!8257972))

(assert (=> b!7851010 m!8258194))

(assert (=> bm!727607 m!8257972))

(assert (=> bm!727607 m!8257974))

(assert (=> b!7851018 m!8257972))

(assert (=> b!7851018 m!8258194))

(assert (=> b!7850718 d!2353287))

(declare-fun b!7851034 () Bool)

(declare-fun e!4640956 () Regex!21085)

(declare-fun e!4640946 () Regex!21085)

(assert (=> b!7851034 (= e!4640956 e!4640946)))

(declare-fun c!1443025 () Bool)

(assert (=> b!7851034 (= c!1443025 ((_ is ElementMatch!21085) lt!2679661))))

(declare-fun call!727618 () Regex!21085)

(declare-fun b!7851035 () Bool)

(declare-fun call!727622 () Regex!21085)

(declare-fun e!4640951 () Regex!21085)

(assert (=> b!7851035 (= e!4640951 (Union!21085 (Concat!29930 call!727622 (regTwo!42682 lt!2679661)) call!727618))))

(declare-fun bm!727614 () Bool)

(declare-fun call!727620 () Regex!21085)

(assert (=> bm!727614 (= call!727618 call!727620)))

(declare-fun d!2353307 () Bool)

(declare-fun lt!2679726 () Regex!21085)

(assert (=> d!2353307 (validRegex!11495 lt!2679726)))

(assert (=> d!2353307 (= lt!2679726 e!4640956)))

(declare-fun c!1443027 () Bool)

(assert (=> d!2353307 (= c!1443027 (or ((_ is EmptyExpr!21085) lt!2679661) ((_ is EmptyLang!21085) lt!2679661)))))

(assert (=> d!2353307 (validRegex!11495 lt!2679661)))

(assert (=> d!2353307 (= (derivativeStep!6320 lt!2679661 (head!16041 lt!2679663)) lt!2679726)))

(declare-fun bm!727615 () Bool)

(declare-fun c!1443026 () Bool)

(declare-fun c!1443024 () Bool)

(assert (=> bm!727615 (= call!727620 (derivativeStep!6320 (ite c!1443024 (regOne!42683 lt!2679661) (ite c!1443026 (regTwo!42682 lt!2679661) (regOne!42682 lt!2679661))) (head!16041 lt!2679663)))))

(declare-fun b!7851038 () Bool)

(assert (=> b!7851038 (= e!4640946 (ite (= (head!16041 lt!2679663) (c!1442851 lt!2679661)) EmptyExpr!21085 EmptyLang!21085))))

(declare-fun b!7851039 () Bool)

(declare-fun e!4640957 () Regex!21085)

(declare-fun e!4640953 () Regex!21085)

(assert (=> b!7851039 (= e!4640957 e!4640953)))

(declare-fun c!1443028 () Bool)

(assert (=> b!7851039 (= c!1443028 ((_ is Star!21085) lt!2679661))))

(declare-fun b!7851040 () Bool)

(assert (=> b!7851040 (= e!4640951 (Union!21085 (Concat!29930 call!727618 (regTwo!42682 lt!2679661)) EmptyLang!21085))))

(declare-fun b!7851043 () Bool)

(assert (=> b!7851043 (= c!1443026 (nullable!9357 (regOne!42682 lt!2679661)))))

(assert (=> b!7851043 (= e!4640953 e!4640951)))

(declare-fun b!7851044 () Bool)

(assert (=> b!7851044 (= e!4640953 (Concat!29930 call!727622 lt!2679661))))

(declare-fun bm!727616 () Bool)

(declare-fun call!727621 () Regex!21085)

(assert (=> bm!727616 (= call!727621 (derivativeStep!6320 (ite c!1443024 (regTwo!42683 lt!2679661) (ite c!1443028 (reg!21414 lt!2679661) (regOne!42682 lt!2679661))) (head!16041 lt!2679663)))))

(declare-fun b!7851045 () Bool)

(assert (=> b!7851045 (= c!1443024 ((_ is Union!21085) lt!2679661))))

(assert (=> b!7851045 (= e!4640946 e!4640957)))

(declare-fun bm!727617 () Bool)

(assert (=> bm!727617 (= call!727622 call!727621)))

(declare-fun b!7851046 () Bool)

(assert (=> b!7851046 (= e!4640957 (Union!21085 call!727620 call!727621))))

(declare-fun b!7851047 () Bool)

(assert (=> b!7851047 (= e!4640956 EmptyLang!21085)))

(assert (= (and d!2353307 c!1443027) b!7851047))

(assert (= (and d!2353307 (not c!1443027)) b!7851034))

(assert (= (and b!7851034 c!1443025) b!7851038))

(assert (= (and b!7851034 (not c!1443025)) b!7851045))

(assert (= (and b!7851045 c!1443024) b!7851046))

(assert (= (and b!7851045 (not c!1443024)) b!7851039))

(assert (= (and b!7851039 c!1443028) b!7851044))

(assert (= (and b!7851039 (not c!1443028)) b!7851043))

(assert (= (and b!7851043 c!1443026) b!7851035))

(assert (= (and b!7851043 (not c!1443026)) b!7851040))

(assert (= (or b!7851035 b!7851040) bm!727614))

(assert (= (or b!7851044 b!7851035) bm!727617))

(assert (= (or b!7851046 bm!727617) bm!727616))

(assert (= (or b!7851046 bm!727614) bm!727615))

(declare-fun m!8258340 () Bool)

(assert (=> d!2353307 m!8258340))

(assert (=> d!2353307 m!8258164))

(assert (=> bm!727615 m!8257976))

(declare-fun m!8258342 () Bool)

(assert (=> bm!727615 m!8258342))

(declare-fun m!8258344 () Bool)

(assert (=> b!7851043 m!8258344))

(assert (=> bm!727616 m!8257976))

(declare-fun m!8258346 () Bool)

(assert (=> bm!727616 m!8258346))

(assert (=> b!7850718 d!2353307))

(assert (=> b!7850718 d!2353197))

(assert (=> b!7850718 d!2353215))

(assert (=> b!7850456 d!2353197))

(declare-fun b!7851062 () Bool)

(declare-fun e!4640966 () Bool)

(declare-fun e!4640967 () Bool)

(assert (=> b!7851062 (= e!4640966 e!4640967)))

(declare-fun res!3122101 () Bool)

(assert (=> b!7851062 (=> res!3122101 e!4640967)))

(declare-fun call!727624 () Bool)

(assert (=> b!7851062 (= res!3122101 call!727624)))

(declare-fun b!7851063 () Bool)

(declare-fun e!4640970 () Bool)

(assert (=> b!7851063 (= e!4640970 (nullable!9357 (derivativeStep!6320 r1!6227 (head!16041 s1!4084))))))

(declare-fun b!7851064 () Bool)

(declare-fun e!4640965 () Bool)

(assert (=> b!7851064 (= e!4640965 e!4640966)))

(declare-fun res!3122096 () Bool)

(assert (=> b!7851064 (=> (not res!3122096) (not e!4640966))))

(declare-fun lt!2679728 () Bool)

(assert (=> b!7851064 (= res!3122096 (not lt!2679728))))

(declare-fun b!7851065 () Bool)

(declare-fun res!3122102 () Bool)

(assert (=> b!7851065 (=> res!3122102 e!4640965)))

(assert (=> b!7851065 (= res!3122102 (not ((_ is ElementMatch!21085) (derivativeStep!6320 r1!6227 (head!16041 s1!4084)))))))

(declare-fun e!4640969 () Bool)

(assert (=> b!7851065 (= e!4640969 e!4640965)))

(declare-fun b!7851066 () Bool)

(declare-fun e!4640968 () Bool)

(assert (=> b!7851066 (= e!4640968 (= (head!16041 (tail!15584 s1!4084)) (c!1442851 (derivativeStep!6320 r1!6227 (head!16041 s1!4084)))))))

(declare-fun b!7851067 () Bool)

(declare-fun res!3122097 () Bool)

(assert (=> b!7851067 (=> res!3122097 e!4640967)))

(assert (=> b!7851067 (= res!3122097 (not (isEmpty!42330 (tail!15584 (tail!15584 s1!4084)))))))

(declare-fun b!7851068 () Bool)

(assert (=> b!7851068 (= e!4640969 (not lt!2679728))))

(declare-fun b!7851069 () Bool)

(declare-fun e!4640971 () Bool)

(assert (=> b!7851069 (= e!4640971 e!4640969)))

(declare-fun c!1443033 () Bool)

(assert (=> b!7851069 (= c!1443033 ((_ is EmptyLang!21085) (derivativeStep!6320 r1!6227 (head!16041 s1!4084))))))

(declare-fun b!7851070 () Bool)

(assert (=> b!7851070 (= e!4640970 (matchR!10521 (derivativeStep!6320 (derivativeStep!6320 r1!6227 (head!16041 s1!4084)) (head!16041 (tail!15584 s1!4084))) (tail!15584 (tail!15584 s1!4084))))))

(declare-fun b!7851071 () Bool)

(declare-fun res!3122100 () Bool)

(assert (=> b!7851071 (=> (not res!3122100) (not e!4640968))))

(assert (=> b!7851071 (= res!3122100 (not call!727624))))

(declare-fun b!7851072 () Bool)

(declare-fun res!3122099 () Bool)

(assert (=> b!7851072 (=> res!3122099 e!4640965)))

(assert (=> b!7851072 (= res!3122099 e!4640968)))

(declare-fun res!3122103 () Bool)

(assert (=> b!7851072 (=> (not res!3122103) (not e!4640968))))

(assert (=> b!7851072 (= res!3122103 lt!2679728)))

(declare-fun b!7851073 () Bool)

(declare-fun res!3122098 () Bool)

(assert (=> b!7851073 (=> (not res!3122098) (not e!4640968))))

(assert (=> b!7851073 (= res!3122098 (isEmpty!42330 (tail!15584 (tail!15584 s1!4084))))))

(declare-fun bm!727619 () Bool)

(assert (=> bm!727619 (= call!727624 (isEmpty!42330 (tail!15584 s1!4084)))))

(declare-fun d!2353313 () Bool)

(assert (=> d!2353313 e!4640971))

(declare-fun c!1443034 () Bool)

(assert (=> d!2353313 (= c!1443034 ((_ is EmptyExpr!21085) (derivativeStep!6320 r1!6227 (head!16041 s1!4084))))))

(assert (=> d!2353313 (= lt!2679728 e!4640970)))

(declare-fun c!1443032 () Bool)

(assert (=> d!2353313 (= c!1443032 (isEmpty!42330 (tail!15584 s1!4084)))))

(assert (=> d!2353313 (validRegex!11495 (derivativeStep!6320 r1!6227 (head!16041 s1!4084)))))

(assert (=> d!2353313 (= (matchR!10521 (derivativeStep!6320 r1!6227 (head!16041 s1!4084)) (tail!15584 s1!4084)) lt!2679728)))

(declare-fun b!7851074 () Bool)

(assert (=> b!7851074 (= e!4640967 (not (= (head!16041 (tail!15584 s1!4084)) (c!1442851 (derivativeStep!6320 r1!6227 (head!16041 s1!4084))))))))

(declare-fun b!7851075 () Bool)

(assert (=> b!7851075 (= e!4640971 (= lt!2679728 call!727624))))

(assert (= (and d!2353313 c!1443032) b!7851063))

(assert (= (and d!2353313 (not c!1443032)) b!7851070))

(assert (= (and d!2353313 c!1443034) b!7851075))

(assert (= (and d!2353313 (not c!1443034)) b!7851069))

(assert (= (and b!7851069 c!1443033) b!7851068))

(assert (= (and b!7851069 (not c!1443033)) b!7851065))

(assert (= (and b!7851065 (not res!3122102)) b!7851072))

(assert (= (and b!7851072 res!3122103) b!7851071))

(assert (= (and b!7851071 res!3122100) b!7851073))

(assert (= (and b!7851073 res!3122098) b!7851066))

(assert (= (and b!7851072 (not res!3122099)) b!7851064))

(assert (= (and b!7851064 res!3122096) b!7851062))

(assert (= (and b!7851062 (not res!3122101)) b!7851067))

(assert (= (and b!7851067 (not res!3122097)) b!7851074))

(assert (= (or b!7851075 b!7851062 b!7851071) bm!727619))

(assert (=> b!7851067 m!8257934))

(declare-fun m!8258348 () Bool)

(assert (=> b!7851067 m!8258348))

(assert (=> b!7851067 m!8258348))

(declare-fun m!8258350 () Bool)

(assert (=> b!7851067 m!8258350))

(assert (=> b!7851070 m!8257934))

(declare-fun m!8258352 () Bool)

(assert (=> b!7851070 m!8258352))

(assert (=> b!7851070 m!8257940))

(assert (=> b!7851070 m!8258352))

(declare-fun m!8258356 () Bool)

(assert (=> b!7851070 m!8258356))

(assert (=> b!7851070 m!8257934))

(assert (=> b!7851070 m!8258348))

(assert (=> b!7851070 m!8258356))

(assert (=> b!7851070 m!8258348))

(declare-fun m!8258362 () Bool)

(assert (=> b!7851070 m!8258362))

(assert (=> b!7851063 m!8257940))

(declare-fun m!8258366 () Bool)

(assert (=> b!7851063 m!8258366))

(assert (=> d!2353313 m!8257934))

(assert (=> d!2353313 m!8257936))

(assert (=> d!2353313 m!8257940))

(declare-fun m!8258370 () Bool)

(assert (=> d!2353313 m!8258370))

(assert (=> b!7851073 m!8257934))

(assert (=> b!7851073 m!8258348))

(assert (=> b!7851073 m!8258348))

(assert (=> b!7851073 m!8258350))

(assert (=> b!7851066 m!8257934))

(assert (=> b!7851066 m!8258352))

(assert (=> bm!727619 m!8257934))

(assert (=> bm!727619 m!8257936))

(assert (=> b!7851074 m!8257934))

(assert (=> b!7851074 m!8258352))

(assert (=> b!7850376 d!2353313))

(declare-fun b!7851076 () Bool)

(declare-fun e!4640975 () Regex!21085)

(declare-fun e!4640972 () Regex!21085)

(assert (=> b!7851076 (= e!4640975 e!4640972)))

(declare-fun c!1443036 () Bool)

(assert (=> b!7851076 (= c!1443036 ((_ is ElementMatch!21085) r1!6227))))

(declare-fun call!727625 () Regex!21085)

(declare-fun b!7851077 () Bool)

(declare-fun call!727628 () Regex!21085)

(declare-fun e!4640973 () Regex!21085)

(assert (=> b!7851077 (= e!4640973 (Union!21085 (Concat!29930 call!727628 (regTwo!42682 r1!6227)) call!727625))))

(declare-fun bm!727620 () Bool)

(declare-fun call!727626 () Regex!21085)

(assert (=> bm!727620 (= call!727625 call!727626)))

(declare-fun d!2353315 () Bool)

(declare-fun lt!2679729 () Regex!21085)

(assert (=> d!2353315 (validRegex!11495 lt!2679729)))

(assert (=> d!2353315 (= lt!2679729 e!4640975)))

(declare-fun c!1443038 () Bool)

(assert (=> d!2353315 (= c!1443038 (or ((_ is EmptyExpr!21085) r1!6227) ((_ is EmptyLang!21085) r1!6227)))))

(assert (=> d!2353315 (validRegex!11495 r1!6227)))

(assert (=> d!2353315 (= (derivativeStep!6320 r1!6227 (head!16041 s1!4084)) lt!2679729)))

(declare-fun c!1443037 () Bool)

(declare-fun c!1443035 () Bool)

(declare-fun bm!727621 () Bool)

(assert (=> bm!727621 (= call!727626 (derivativeStep!6320 (ite c!1443035 (regOne!42683 r1!6227) (ite c!1443037 (regTwo!42682 r1!6227) (regOne!42682 r1!6227))) (head!16041 s1!4084)))))

(declare-fun b!7851078 () Bool)

(assert (=> b!7851078 (= e!4640972 (ite (= (head!16041 s1!4084) (c!1442851 r1!6227)) EmptyExpr!21085 EmptyLang!21085))))

(declare-fun b!7851079 () Bool)

(declare-fun e!4640976 () Regex!21085)

(declare-fun e!4640974 () Regex!21085)

(assert (=> b!7851079 (= e!4640976 e!4640974)))

(declare-fun c!1443039 () Bool)

(assert (=> b!7851079 (= c!1443039 ((_ is Star!21085) r1!6227))))

(declare-fun b!7851080 () Bool)

(assert (=> b!7851080 (= e!4640973 (Union!21085 (Concat!29930 call!727625 (regTwo!42682 r1!6227)) EmptyLang!21085))))

(declare-fun b!7851081 () Bool)

(assert (=> b!7851081 (= c!1443037 (nullable!9357 (regOne!42682 r1!6227)))))

(assert (=> b!7851081 (= e!4640974 e!4640973)))

(declare-fun b!7851082 () Bool)

(assert (=> b!7851082 (= e!4640974 (Concat!29930 call!727628 r1!6227))))

(declare-fun call!727627 () Regex!21085)

(declare-fun bm!727622 () Bool)

(assert (=> bm!727622 (= call!727627 (derivativeStep!6320 (ite c!1443035 (regTwo!42683 r1!6227) (ite c!1443039 (reg!21414 r1!6227) (regOne!42682 r1!6227))) (head!16041 s1!4084)))))

(declare-fun b!7851083 () Bool)

(assert (=> b!7851083 (= c!1443035 ((_ is Union!21085) r1!6227))))

(assert (=> b!7851083 (= e!4640972 e!4640976)))

(declare-fun bm!727623 () Bool)

(assert (=> bm!727623 (= call!727628 call!727627)))

(declare-fun b!7851084 () Bool)

(assert (=> b!7851084 (= e!4640976 (Union!21085 call!727626 call!727627))))

(declare-fun b!7851085 () Bool)

(assert (=> b!7851085 (= e!4640975 EmptyLang!21085)))

(assert (= (and d!2353315 c!1443038) b!7851085))

(assert (= (and d!2353315 (not c!1443038)) b!7851076))

(assert (= (and b!7851076 c!1443036) b!7851078))

(assert (= (and b!7851076 (not c!1443036)) b!7851083))

(assert (= (and b!7851083 c!1443035) b!7851084))

(assert (= (and b!7851083 (not c!1443035)) b!7851079))

(assert (= (and b!7851079 c!1443039) b!7851082))

(assert (= (and b!7851079 (not c!1443039)) b!7851081))

(assert (= (and b!7851081 c!1443037) b!7851077))

(assert (= (and b!7851081 (not c!1443037)) b!7851080))

(assert (= (or b!7851077 b!7851080) bm!727620))

(assert (= (or b!7851082 b!7851077) bm!727623))

(assert (= (or b!7851084 bm!727623) bm!727622))

(assert (= (or b!7851084 bm!727620) bm!727621))

(declare-fun m!8258378 () Bool)

(assert (=> d!2353315 m!8258378))

(assert (=> d!2353315 m!8257910))

(assert (=> bm!727621 m!8257938))

(declare-fun m!8258380 () Bool)

(assert (=> bm!727621 m!8258380))

(assert (=> b!7851081 m!8258044))

(assert (=> bm!727622 m!8257938))

(declare-fun m!8258382 () Bool)

(assert (=> bm!727622 m!8258382))

(assert (=> b!7850376 d!2353315))

(declare-fun d!2353319 () Bool)

(assert (=> d!2353319 (= (head!16041 s1!4084) (h!80268 s1!4084))))

(assert (=> b!7850376 d!2353319))

(assert (=> b!7850376 d!2353237))

(declare-fun b!7851087 () Bool)

(declare-fun e!4640977 () List!73944)

(assert (=> b!7851087 (= e!4640977 (Cons!73820 (h!80268 (t!388679 (t!388679 s1!4084))) (++!18093 (t!388679 (t!388679 (t!388679 s1!4084))) s2!3706)))))

(declare-fun b!7851086 () Bool)

(assert (=> b!7851086 (= e!4640977 s2!3706)))

(declare-fun b!7851088 () Bool)

(declare-fun res!3122105 () Bool)

(declare-fun e!4640978 () Bool)

(assert (=> b!7851088 (=> (not res!3122105) (not e!4640978))))

(declare-fun lt!2679730 () List!73944)

(assert (=> b!7851088 (= res!3122105 (= (size!42830 lt!2679730) (+ (size!42830 (t!388679 (t!388679 s1!4084))) (size!42830 s2!3706))))))

(declare-fun d!2353321 () Bool)

(assert (=> d!2353321 e!4640978))

(declare-fun res!3122104 () Bool)

(assert (=> d!2353321 (=> (not res!3122104) (not e!4640978))))

(assert (=> d!2353321 (= res!3122104 (= (content!15677 lt!2679730) ((_ map or) (content!15677 (t!388679 (t!388679 s1!4084))) (content!15677 s2!3706))))))

(assert (=> d!2353321 (= lt!2679730 e!4640977)))

(declare-fun c!1443040 () Bool)

(assert (=> d!2353321 (= c!1443040 ((_ is Nil!73820) (t!388679 (t!388679 s1!4084))))))

(assert (=> d!2353321 (= (++!18093 (t!388679 (t!388679 s1!4084)) s2!3706) lt!2679730)))

(declare-fun b!7851089 () Bool)

(assert (=> b!7851089 (= e!4640978 (or (not (= s2!3706 Nil!73820)) (= lt!2679730 (t!388679 (t!388679 s1!4084)))))))

(assert (= (and d!2353321 c!1443040) b!7851086))

(assert (= (and d!2353321 (not c!1443040)) b!7851087))

(assert (= (and d!2353321 res!3122104) b!7851088))

(assert (= (and b!7851088 res!3122105) b!7851089))

(declare-fun m!8258384 () Bool)

(assert (=> b!7851087 m!8258384))

(declare-fun m!8258386 () Bool)

(assert (=> b!7851088 m!8258386))

(assert (=> b!7851088 m!8258214))

(assert (=> b!7851088 m!8258094))

(declare-fun m!8258388 () Bool)

(assert (=> d!2353321 m!8258388))

(assert (=> d!2353321 m!8258244))

(assert (=> d!2353321 m!8258100))

(assert (=> b!7850643 d!2353321))

(declare-fun d!2353323 () Bool)

(assert (=> d!2353323 (= (isEmpty!42330 (tail!15584 lt!2679663)) ((_ is Nil!73820) (tail!15584 lt!2679663)))))

(assert (=> b!7850463 d!2353323))

(assert (=> b!7850463 d!2353215))

(assert (=> b!7850721 d!2353323))

(assert (=> b!7850721 d!2353215))

(assert (=> b!7850699 d!2353173))

(declare-fun d!2353325 () Bool)

(assert (=> d!2353325 (= (isEmpty!42330 (tail!15584 s2!3706)) ((_ is Nil!73820) (tail!15584 s2!3706)))))

(assert (=> b!7850440 d!2353325))

(assert (=> b!7850440 d!2353275))

(declare-fun d!2353327 () Bool)

(assert (=> d!2353327 (= (isEmpty!42330 (++!18093 s1!4084 s2!3706)) ((_ is Nil!73820) (++!18093 s1!4084 s2!3706)))))

(assert (=> bm!727563 d!2353327))

(declare-fun d!2353329 () Bool)

(assert (=> d!2353329 (= (nullable!9357 lt!2679665) (nullableFct!3689 lt!2679665))))

(declare-fun bs!1967080 () Bool)

(assert (= bs!1967080 d!2353329))

(declare-fun m!8258390 () Bool)

(assert (=> bs!1967080 m!8258390))

(assert (=> b!7850669 d!2353329))

(assert (=> b!7850380 d!2353319))

(declare-fun b!7851090 () Bool)

(declare-fun e!4640982 () Regex!21085)

(declare-fun e!4640979 () Regex!21085)

(assert (=> b!7851090 (= e!4640982 e!4640979)))

(declare-fun c!1443042 () Bool)

(assert (=> b!7851090 (= c!1443042 ((_ is ElementMatch!21085) (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665)))))))

(declare-fun call!727629 () Regex!21085)

(declare-fun b!7851091 () Bool)

(declare-fun call!727632 () Regex!21085)

(declare-fun e!4640980 () Regex!21085)

(assert (=> b!7851091 (= e!4640980 (Union!21085 (Concat!29930 call!727632 (regTwo!42682 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665))))) call!727629))))

(declare-fun bm!727624 () Bool)

(declare-fun call!727630 () Regex!21085)

(assert (=> bm!727624 (= call!727629 call!727630)))

(declare-fun d!2353331 () Bool)

(declare-fun lt!2679731 () Regex!21085)

(assert (=> d!2353331 (validRegex!11495 lt!2679731)))

(assert (=> d!2353331 (= lt!2679731 e!4640982)))

(declare-fun c!1443044 () Bool)

(assert (=> d!2353331 (= c!1443044 (or ((_ is EmptyExpr!21085) (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665)))) ((_ is EmptyLang!21085) (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665))))))))

(assert (=> d!2353331 (validRegex!11495 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665))))))

(assert (=> d!2353331 (= (derivativeStep!6320 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665))) (h!80268 s1!4084)) lt!2679731)))

(declare-fun c!1443043 () Bool)

(declare-fun c!1443041 () Bool)

(declare-fun bm!727625 () Bool)

(assert (=> bm!727625 (= call!727630 (derivativeStep!6320 (ite c!1443041 (regOne!42683 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665)))) (ite c!1443043 (regTwo!42682 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665)))) (regOne!42682 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665)))))) (h!80268 s1!4084)))))

(declare-fun b!7851092 () Bool)

(assert (=> b!7851092 (= e!4640979 (ite (= (h!80268 s1!4084) (c!1442851 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665))))) EmptyExpr!21085 EmptyLang!21085))))

(declare-fun b!7851093 () Bool)

(declare-fun e!4640983 () Regex!21085)

(declare-fun e!4640981 () Regex!21085)

(assert (=> b!7851093 (= e!4640983 e!4640981)))

(declare-fun c!1443045 () Bool)

(assert (=> b!7851093 (= c!1443045 ((_ is Star!21085) (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665)))))))

(declare-fun b!7851094 () Bool)

(assert (=> b!7851094 (= e!4640980 (Union!21085 (Concat!29930 call!727629 (regTwo!42682 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665))))) EmptyLang!21085))))

(declare-fun b!7851095 () Bool)

(assert (=> b!7851095 (= c!1443043 (nullable!9357 (regOne!42682 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665))))))))

(assert (=> b!7851095 (= e!4640981 e!4640980)))

(declare-fun b!7851096 () Bool)

(assert (=> b!7851096 (= e!4640981 (Concat!29930 call!727632 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665)))))))

(declare-fun call!727631 () Regex!21085)

(declare-fun bm!727626 () Bool)

(assert (=> bm!727626 (= call!727631 (derivativeStep!6320 (ite c!1443041 (regTwo!42683 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665)))) (ite c!1443045 (reg!21414 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665)))) (regOne!42682 (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665)))))) (h!80268 s1!4084)))))

(declare-fun b!7851097 () Bool)

(assert (=> b!7851097 (= c!1443041 ((_ is Union!21085) (ite c!1442941 (regOne!42683 lt!2679665) (ite c!1442943 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665)))))))

(assert (=> b!7851097 (= e!4640979 e!4640983)))

(declare-fun bm!727627 () Bool)

(assert (=> bm!727627 (= call!727632 call!727631)))

(declare-fun b!7851098 () Bool)

(assert (=> b!7851098 (= e!4640983 (Union!21085 call!727630 call!727631))))

(declare-fun b!7851099 () Bool)

(assert (=> b!7851099 (= e!4640982 EmptyLang!21085)))

(assert (= (and d!2353331 c!1443044) b!7851099))

(assert (= (and d!2353331 (not c!1443044)) b!7851090))

(assert (= (and b!7851090 c!1443042) b!7851092))

(assert (= (and b!7851090 (not c!1443042)) b!7851097))

(assert (= (and b!7851097 c!1443041) b!7851098))

(assert (= (and b!7851097 (not c!1443041)) b!7851093))

(assert (= (and b!7851093 c!1443045) b!7851096))

(assert (= (and b!7851093 (not c!1443045)) b!7851095))

(assert (= (and b!7851095 c!1443043) b!7851091))

(assert (= (and b!7851095 (not c!1443043)) b!7851094))

(assert (= (or b!7851091 b!7851094) bm!727624))

(assert (= (or b!7851096 b!7851091) bm!727627))

(assert (= (or b!7851098 bm!727627) bm!727626))

(assert (= (or b!7851098 bm!727624) bm!727625))

(declare-fun m!8258392 () Bool)

(assert (=> d!2353331 m!8258392))

(declare-fun m!8258394 () Bool)

(assert (=> d!2353331 m!8258394))

(declare-fun m!8258396 () Bool)

(assert (=> bm!727625 m!8258396))

(declare-fun m!8258398 () Bool)

(assert (=> b!7851095 m!8258398))

(declare-fun m!8258400 () Bool)

(assert (=> bm!727626 m!8258400))

(assert (=> bm!727557 d!2353331))

(assert (=> d!2353187 d!2353327))

(assert (=> d!2353187 d!2353251))

(assert (=> bm!727520 d!2353229))

(assert (=> d!2353157 d!2353229))

(declare-fun b!7851101 () Bool)

(declare-fun res!3122107 () Bool)

(declare-fun e!4640986 () Bool)

(assert (=> b!7851101 (=> (not res!3122107) (not e!4640986))))

(declare-fun call!727634 () Bool)

(assert (=> b!7851101 (= res!3122107 call!727634)))

(declare-fun e!4640990 () Bool)

(assert (=> b!7851101 (= e!4640990 e!4640986)))

(declare-fun bm!727628 () Bool)

(declare-fun c!1443046 () Bool)

(declare-fun call!727633 () Bool)

(declare-fun c!1443047 () Bool)

(assert (=> bm!727628 (= call!727633 (validRegex!11495 (ite c!1443046 (reg!21414 lt!2679667) (ite c!1443047 (regTwo!42683 lt!2679667) (regOne!42682 lt!2679667)))))))

(declare-fun b!7851102 () Bool)

(declare-fun e!4640987 () Bool)

(declare-fun e!4640984 () Bool)

(assert (=> b!7851102 (= e!4640987 e!4640984)))

(declare-fun res!3122110 () Bool)

(assert (=> b!7851102 (= res!3122110 (not (nullable!9357 (reg!21414 lt!2679667))))))

(assert (=> b!7851102 (=> (not res!3122110) (not e!4640984))))

(declare-fun bm!727629 () Bool)

(assert (=> bm!727629 (= call!727634 (validRegex!11495 (ite c!1443047 (regOne!42683 lt!2679667) (regTwo!42682 lt!2679667))))))

(declare-fun bm!727630 () Bool)

(declare-fun call!727635 () Bool)

(assert (=> bm!727630 (= call!727635 call!727633)))

(declare-fun b!7851103 () Bool)

(assert (=> b!7851103 (= e!4640987 e!4640990)))

(assert (=> b!7851103 (= c!1443047 ((_ is Union!21085) lt!2679667))))

(declare-fun b!7851104 () Bool)

(declare-fun e!4640989 () Bool)

(assert (=> b!7851104 (= e!4640989 e!4640987)))

(assert (=> b!7851104 (= c!1443046 ((_ is Star!21085) lt!2679667))))

(declare-fun b!7851100 () Bool)

(assert (=> b!7851100 (= e!4640986 call!727635)))

(declare-fun d!2353333 () Bool)

(declare-fun res!3122108 () Bool)

(assert (=> d!2353333 (=> res!3122108 e!4640989)))

(assert (=> d!2353333 (= res!3122108 ((_ is ElementMatch!21085) lt!2679667))))

(assert (=> d!2353333 (= (validRegex!11495 lt!2679667) e!4640989)))

(declare-fun b!7851105 () Bool)

(declare-fun e!4640985 () Bool)

(assert (=> b!7851105 (= e!4640985 call!727634)))

(declare-fun b!7851106 () Bool)

(assert (=> b!7851106 (= e!4640984 call!727633)))

(declare-fun b!7851107 () Bool)

(declare-fun res!3122106 () Bool)

(declare-fun e!4640988 () Bool)

(assert (=> b!7851107 (=> res!3122106 e!4640988)))

(assert (=> b!7851107 (= res!3122106 (not ((_ is Concat!29930) lt!2679667)))))

(assert (=> b!7851107 (= e!4640990 e!4640988)))

(declare-fun b!7851108 () Bool)

(assert (=> b!7851108 (= e!4640988 e!4640985)))

(declare-fun res!3122109 () Bool)

(assert (=> b!7851108 (=> (not res!3122109) (not e!4640985))))

(assert (=> b!7851108 (= res!3122109 call!727635)))

(assert (= (and d!2353333 (not res!3122108)) b!7851104))

(assert (= (and b!7851104 c!1443046) b!7851102))

(assert (= (and b!7851104 (not c!1443046)) b!7851103))

(assert (= (and b!7851102 res!3122110) b!7851106))

(assert (= (and b!7851103 c!1443047) b!7851101))

(assert (= (and b!7851103 (not c!1443047)) b!7851107))

(assert (= (and b!7851101 res!3122107) b!7851100))

(assert (= (and b!7851107 (not res!3122106)) b!7851108))

(assert (= (and b!7851108 res!3122109) b!7851105))

(assert (= (or b!7851101 b!7851105) bm!727629))

(assert (= (or b!7851100 b!7851108) bm!727630))

(assert (= (or b!7851106 bm!727630) bm!727628))

(declare-fun m!8258402 () Bool)

(assert (=> bm!727628 m!8258402))

(declare-fun m!8258404 () Bool)

(assert (=> b!7851102 m!8258404))

(declare-fun m!8258406 () Bool)

(assert (=> bm!727629 m!8258406))

(assert (=> d!2353157 d!2353333))

(declare-fun d!2353337 () Bool)

(assert (=> d!2353337 (= (head!16041 (++!18093 s1!4084 s2!3706)) (h!80268 (++!18093 s1!4084 s2!3706)))))

(assert (=> b!7850672 d!2353337))

(declare-fun d!2353339 () Bool)

(assert (=> d!2353339 (= (nullable!9357 lt!2679661) (nullableFct!3689 lt!2679661))))

(declare-fun bs!1967082 () Bool)

(assert (= bs!1967082 d!2353339))

(declare-fun m!8258408 () Bool)

(assert (=> bs!1967082 m!8258408))

(assert (=> b!7850711 d!2353339))

(declare-fun b!7851119 () Bool)

(declare-fun res!3122117 () Bool)

(declare-fun e!4641000 () Bool)

(assert (=> b!7851119 (=> (not res!3122117) (not e!4641000))))

(declare-fun call!727640 () Bool)

(assert (=> b!7851119 (= res!3122117 call!727640)))

(declare-fun e!4641004 () Bool)

(assert (=> b!7851119 (= e!4641004 e!4641000)))

(declare-fun bm!727634 () Bool)

(declare-fun call!727639 () Bool)

(declare-fun c!1443050 () Bool)

(declare-fun c!1443051 () Bool)

(assert (=> bm!727634 (= call!727639 (validRegex!11495 (ite c!1443050 (reg!21414 (ite c!1442878 (reg!21414 r2!6165) (ite c!1442879 (regTwo!42683 r2!6165) (regOne!42682 r2!6165)))) (ite c!1443051 (regTwo!42683 (ite c!1442878 (reg!21414 r2!6165) (ite c!1442879 (regTwo!42683 r2!6165) (regOne!42682 r2!6165)))) (regOne!42682 (ite c!1442878 (reg!21414 r2!6165) (ite c!1442879 (regTwo!42683 r2!6165) (regOne!42682 r2!6165))))))))))

(declare-fun b!7851120 () Bool)

(declare-fun e!4641001 () Bool)

(declare-fun e!4640998 () Bool)

(assert (=> b!7851120 (= e!4641001 e!4640998)))

(declare-fun res!3122120 () Bool)

(assert (=> b!7851120 (= res!3122120 (not (nullable!9357 (reg!21414 (ite c!1442878 (reg!21414 r2!6165) (ite c!1442879 (regTwo!42683 r2!6165) (regOne!42682 r2!6165)))))))))

(assert (=> b!7851120 (=> (not res!3122120) (not e!4640998))))

(declare-fun bm!727635 () Bool)

(assert (=> bm!727635 (= call!727640 (validRegex!11495 (ite c!1443051 (regOne!42683 (ite c!1442878 (reg!21414 r2!6165) (ite c!1442879 (regTwo!42683 r2!6165) (regOne!42682 r2!6165)))) (regTwo!42682 (ite c!1442878 (reg!21414 r2!6165) (ite c!1442879 (regTwo!42683 r2!6165) (regOne!42682 r2!6165)))))))))

(declare-fun bm!727636 () Bool)

(declare-fun call!727641 () Bool)

(assert (=> bm!727636 (= call!727641 call!727639)))

(declare-fun b!7851121 () Bool)

(assert (=> b!7851121 (= e!4641001 e!4641004)))

(assert (=> b!7851121 (= c!1443051 ((_ is Union!21085) (ite c!1442878 (reg!21414 r2!6165) (ite c!1442879 (regTwo!42683 r2!6165) (regOne!42682 r2!6165)))))))

(declare-fun b!7851122 () Bool)

(declare-fun e!4641003 () Bool)

(assert (=> b!7851122 (= e!4641003 e!4641001)))

(assert (=> b!7851122 (= c!1443050 ((_ is Star!21085) (ite c!1442878 (reg!21414 r2!6165) (ite c!1442879 (regTwo!42683 r2!6165) (regOne!42682 r2!6165)))))))

(declare-fun b!7851118 () Bool)

(assert (=> b!7851118 (= e!4641000 call!727641)))

(declare-fun d!2353341 () Bool)

(declare-fun res!3122118 () Bool)

(assert (=> d!2353341 (=> res!3122118 e!4641003)))

(assert (=> d!2353341 (= res!3122118 ((_ is ElementMatch!21085) (ite c!1442878 (reg!21414 r2!6165) (ite c!1442879 (regTwo!42683 r2!6165) (regOne!42682 r2!6165)))))))

(assert (=> d!2353341 (= (validRegex!11495 (ite c!1442878 (reg!21414 r2!6165) (ite c!1442879 (regTwo!42683 r2!6165) (regOne!42682 r2!6165)))) e!4641003)))

(declare-fun b!7851123 () Bool)

(declare-fun e!4640999 () Bool)

(assert (=> b!7851123 (= e!4640999 call!727640)))

(declare-fun b!7851124 () Bool)

(assert (=> b!7851124 (= e!4640998 call!727639)))

(declare-fun b!7851125 () Bool)

(declare-fun res!3122116 () Bool)

(declare-fun e!4641002 () Bool)

(assert (=> b!7851125 (=> res!3122116 e!4641002)))

(assert (=> b!7851125 (= res!3122116 (not ((_ is Concat!29930) (ite c!1442878 (reg!21414 r2!6165) (ite c!1442879 (regTwo!42683 r2!6165) (regOne!42682 r2!6165))))))))

(assert (=> b!7851125 (= e!4641004 e!4641002)))

(declare-fun b!7851126 () Bool)

(assert (=> b!7851126 (= e!4641002 e!4640999)))

(declare-fun res!3122119 () Bool)

(assert (=> b!7851126 (=> (not res!3122119) (not e!4640999))))

(assert (=> b!7851126 (= res!3122119 call!727641)))

(assert (= (and d!2353341 (not res!3122118)) b!7851122))

(assert (= (and b!7851122 c!1443050) b!7851120))

(assert (= (and b!7851122 (not c!1443050)) b!7851121))

(assert (= (and b!7851120 res!3122120) b!7851124))

(assert (= (and b!7851121 c!1443051) b!7851119))

(assert (= (and b!7851121 (not c!1443051)) b!7851125))

(assert (= (and b!7851119 res!3122117) b!7851118))

(assert (= (and b!7851125 (not res!3122116)) b!7851126))

(assert (= (and b!7851126 res!3122119) b!7851123))

(assert (= (or b!7851119 b!7851123) bm!727635))

(assert (= (or b!7851118 b!7851126) bm!727636))

(assert (= (or b!7851124 bm!727636) bm!727634))

(declare-fun m!8258416 () Bool)

(assert (=> bm!727634 m!8258416))

(declare-fun m!8258418 () Bool)

(assert (=> b!7851120 m!8258418))

(declare-fun m!8258420 () Bool)

(assert (=> bm!727635 m!8258420))

(assert (=> bm!727513 d!2353341))

(declare-fun d!2353345 () Bool)

(assert (=> d!2353345 (= (nullable!9357 lt!2679667) (nullableFct!3689 lt!2679667))))

(declare-fun bs!1967083 () Bool)

(assert (= bs!1967083 d!2353345))

(declare-fun m!8258422 () Bool)

(assert (=> bs!1967083 m!8258422))

(assert (=> b!7850453 d!2353345))

(assert (=> d!2353193 d!2353229))

(declare-fun b!7851142 () Bool)

(declare-fun res!3122130 () Bool)

(declare-fun e!4641014 () Bool)

(assert (=> b!7851142 (=> (not res!3122130) (not e!4641014))))

(declare-fun call!727644 () Bool)

(assert (=> b!7851142 (= res!3122130 call!727644)))

(declare-fun e!4641018 () Bool)

(assert (=> b!7851142 (= e!4641018 e!4641014)))

(declare-fun call!727643 () Bool)

(declare-fun bm!727638 () Bool)

(declare-fun c!1443055 () Bool)

(declare-fun c!1443056 () Bool)

(assert (=> bm!727638 (= call!727643 (validRegex!11495 (ite c!1443055 (reg!21414 lt!2679661) (ite c!1443056 (regTwo!42683 lt!2679661) (regOne!42682 lt!2679661)))))))

(declare-fun b!7851143 () Bool)

(declare-fun e!4641015 () Bool)

(declare-fun e!4641012 () Bool)

(assert (=> b!7851143 (= e!4641015 e!4641012)))

(declare-fun res!3122133 () Bool)

(assert (=> b!7851143 (= res!3122133 (not (nullable!9357 (reg!21414 lt!2679661))))))

(assert (=> b!7851143 (=> (not res!3122133) (not e!4641012))))

(declare-fun bm!727639 () Bool)

(assert (=> bm!727639 (= call!727644 (validRegex!11495 (ite c!1443056 (regOne!42683 lt!2679661) (regTwo!42682 lt!2679661))))))

(declare-fun bm!727640 () Bool)

(declare-fun call!727645 () Bool)

(assert (=> bm!727640 (= call!727645 call!727643)))

(declare-fun b!7851144 () Bool)

(assert (=> b!7851144 (= e!4641015 e!4641018)))

(assert (=> b!7851144 (= c!1443056 ((_ is Union!21085) lt!2679661))))

(declare-fun b!7851145 () Bool)

(declare-fun e!4641017 () Bool)

(assert (=> b!7851145 (= e!4641017 e!4641015)))

(assert (=> b!7851145 (= c!1443055 ((_ is Star!21085) lt!2679661))))

(declare-fun b!7851141 () Bool)

(assert (=> b!7851141 (= e!4641014 call!727645)))

(declare-fun d!2353347 () Bool)

(declare-fun res!3122131 () Bool)

(assert (=> d!2353347 (=> res!3122131 e!4641017)))

(assert (=> d!2353347 (= res!3122131 ((_ is ElementMatch!21085) lt!2679661))))

(assert (=> d!2353347 (= (validRegex!11495 lt!2679661) e!4641017)))

(declare-fun b!7851146 () Bool)

(declare-fun e!4641013 () Bool)

(assert (=> b!7851146 (= e!4641013 call!727644)))

(declare-fun b!7851147 () Bool)

(assert (=> b!7851147 (= e!4641012 call!727643)))

(declare-fun b!7851148 () Bool)

(declare-fun res!3122129 () Bool)

(declare-fun e!4641016 () Bool)

(assert (=> b!7851148 (=> res!3122129 e!4641016)))

(assert (=> b!7851148 (= res!3122129 (not ((_ is Concat!29930) lt!2679661)))))

(assert (=> b!7851148 (= e!4641018 e!4641016)))

(declare-fun b!7851149 () Bool)

(assert (=> b!7851149 (= e!4641016 e!4641013)))

(declare-fun res!3122132 () Bool)

(assert (=> b!7851149 (=> (not res!3122132) (not e!4641013))))

(assert (=> b!7851149 (= res!3122132 call!727645)))

(assert (= (and d!2353347 (not res!3122131)) b!7851145))

(assert (= (and b!7851145 c!1443055) b!7851143))

(assert (= (and b!7851145 (not c!1443055)) b!7851144))

(assert (= (and b!7851143 res!3122133) b!7851147))

(assert (= (and b!7851144 c!1443056) b!7851142))

(assert (= (and b!7851144 (not c!1443056)) b!7851148))

(assert (= (and b!7851142 res!3122130) b!7851141))

(assert (= (and b!7851148 (not res!3122129)) b!7851149))

(assert (= (and b!7851149 res!3122132) b!7851146))

(assert (= (or b!7851142 b!7851146) bm!727639))

(assert (= (or b!7851141 b!7851149) bm!727640))

(assert (= (or b!7851147 bm!727640) bm!727638))

(declare-fun m!8258424 () Bool)

(assert (=> bm!727638 m!8258424))

(declare-fun m!8258426 () Bool)

(assert (=> b!7851143 m!8258426))

(declare-fun m!8258430 () Bool)

(assert (=> bm!727639 m!8258430))

(assert (=> d!2353193 d!2353347))

(declare-fun d!2353349 () Bool)

(assert (=> d!2353349 (= (isEmpty!42330 s2!3706) ((_ is Nil!73820) s2!3706))))

(assert (=> bm!727516 d!2353349))

(assert (=> d!2353153 d!2353349))

(assert (=> d!2353153 d!2353151))

(declare-fun b!7851150 () Bool)

(declare-fun e!4641020 () Bool)

(declare-fun e!4641021 () Bool)

(assert (=> b!7851150 (= e!4641020 e!4641021)))

(declare-fun res!3122139 () Bool)

(assert (=> b!7851150 (=> res!3122139 e!4641021)))

(declare-fun call!727646 () Bool)

(assert (=> b!7851150 (= res!3122139 call!727646)))

(declare-fun b!7851151 () Bool)

(declare-fun e!4641024 () Bool)

(assert (=> b!7851151 (= e!4641024 (nullable!9357 (Union!21085 lt!2679667 EmptyLang!21085)))))

(declare-fun b!7851152 () Bool)

(declare-fun e!4641019 () Bool)

(assert (=> b!7851152 (= e!4641019 e!4641020)))

(declare-fun res!3122134 () Bool)

(assert (=> b!7851152 (=> (not res!3122134) (not e!4641020))))

(declare-fun lt!2679733 () Bool)

(assert (=> b!7851152 (= res!3122134 (not lt!2679733))))

(declare-fun b!7851153 () Bool)

(declare-fun res!3122140 () Bool)

(assert (=> b!7851153 (=> res!3122140 e!4641019)))

(assert (=> b!7851153 (= res!3122140 (not ((_ is ElementMatch!21085) (Union!21085 lt!2679667 EmptyLang!21085))))))

(declare-fun e!4641023 () Bool)

(assert (=> b!7851153 (= e!4641023 e!4641019)))

(declare-fun b!7851154 () Bool)

(declare-fun e!4641022 () Bool)

(assert (=> b!7851154 (= e!4641022 (= (head!16041 lt!2679663) (c!1442851 (Union!21085 lt!2679667 EmptyLang!21085))))))

(declare-fun b!7851155 () Bool)

(declare-fun res!3122135 () Bool)

(assert (=> b!7851155 (=> res!3122135 e!4641021)))

(assert (=> b!7851155 (= res!3122135 (not (isEmpty!42330 (tail!15584 lt!2679663))))))

(declare-fun b!7851156 () Bool)

(assert (=> b!7851156 (= e!4641023 (not lt!2679733))))

(declare-fun b!7851157 () Bool)

(declare-fun e!4641025 () Bool)

(assert (=> b!7851157 (= e!4641025 e!4641023)))

(declare-fun c!1443058 () Bool)

(assert (=> b!7851157 (= c!1443058 ((_ is EmptyLang!21085) (Union!21085 lt!2679667 EmptyLang!21085)))))

(declare-fun b!7851158 () Bool)

(assert (=> b!7851158 (= e!4641024 (matchR!10521 (derivativeStep!6320 (Union!21085 lt!2679667 EmptyLang!21085) (head!16041 lt!2679663)) (tail!15584 lt!2679663)))))

(declare-fun b!7851159 () Bool)

(declare-fun res!3122138 () Bool)

(assert (=> b!7851159 (=> (not res!3122138) (not e!4641022))))

(assert (=> b!7851159 (= res!3122138 (not call!727646))))

(declare-fun b!7851160 () Bool)

(declare-fun res!3122137 () Bool)

(assert (=> b!7851160 (=> res!3122137 e!4641019)))

(assert (=> b!7851160 (= res!3122137 e!4641022)))

(declare-fun res!3122141 () Bool)

(assert (=> b!7851160 (=> (not res!3122141) (not e!4641022))))

(assert (=> b!7851160 (= res!3122141 lt!2679733)))

(declare-fun b!7851161 () Bool)

(declare-fun res!3122136 () Bool)

(assert (=> b!7851161 (=> (not res!3122136) (not e!4641022))))

(assert (=> b!7851161 (= res!3122136 (isEmpty!42330 (tail!15584 lt!2679663)))))

(declare-fun bm!727641 () Bool)

(assert (=> bm!727641 (= call!727646 (isEmpty!42330 lt!2679663))))

(declare-fun d!2353351 () Bool)

(assert (=> d!2353351 e!4641025))

(declare-fun c!1443059 () Bool)

(assert (=> d!2353351 (= c!1443059 ((_ is EmptyExpr!21085) (Union!21085 lt!2679667 EmptyLang!21085)))))

(assert (=> d!2353351 (= lt!2679733 e!4641024)))

(declare-fun c!1443057 () Bool)

(assert (=> d!2353351 (= c!1443057 (isEmpty!42330 lt!2679663))))

(assert (=> d!2353351 (validRegex!11495 (Union!21085 lt!2679667 EmptyLang!21085))))

(assert (=> d!2353351 (= (matchR!10521 (Union!21085 lt!2679667 EmptyLang!21085) lt!2679663) lt!2679733)))

(declare-fun b!7851162 () Bool)

(assert (=> b!7851162 (= e!4641021 (not (= (head!16041 lt!2679663) (c!1442851 (Union!21085 lt!2679667 EmptyLang!21085)))))))

(declare-fun b!7851163 () Bool)

(assert (=> b!7851163 (= e!4641025 (= lt!2679733 call!727646))))

(assert (= (and d!2353351 c!1443057) b!7851151))

(assert (= (and d!2353351 (not c!1443057)) b!7851158))

(assert (= (and d!2353351 c!1443059) b!7851163))

(assert (= (and d!2353351 (not c!1443059)) b!7851157))

(assert (= (and b!7851157 c!1443058) b!7851156))

(assert (= (and b!7851157 (not c!1443058)) b!7851153))

(assert (= (and b!7851153 (not res!3122140)) b!7851160))

(assert (= (and b!7851160 res!3122141) b!7851159))

(assert (= (and b!7851159 res!3122138) b!7851161))

(assert (= (and b!7851161 res!3122136) b!7851154))

(assert (= (and b!7851160 (not res!3122137)) b!7851152))

(assert (= (and b!7851152 res!3122134) b!7851150))

(assert (= (and b!7851150 (not res!3122139)) b!7851155))

(assert (= (and b!7851155 (not res!3122135)) b!7851162))

(assert (= (or b!7851163 b!7851150 b!7851159) bm!727641))

(assert (=> b!7851155 m!8257972))

(assert (=> b!7851155 m!8257972))

(assert (=> b!7851155 m!8257974))

(assert (=> b!7851158 m!8257976))

(assert (=> b!7851158 m!8257976))

(declare-fun m!8258444 () Bool)

(assert (=> b!7851158 m!8258444))

(assert (=> b!7851158 m!8257972))

(assert (=> b!7851158 m!8258444))

(assert (=> b!7851158 m!8257972))

(declare-fun m!8258446 () Bool)

(assert (=> b!7851158 m!8258446))

(declare-fun m!8258448 () Bool)

(assert (=> b!7851151 m!8258448))

(assert (=> d!2353351 m!8257986))

(declare-fun m!8258450 () Bool)

(assert (=> d!2353351 m!8258450))

(assert (=> b!7851161 m!8257972))

(assert (=> b!7851161 m!8257972))

(assert (=> b!7851161 m!8257974))

(assert (=> b!7851154 m!8257976))

(assert (=> bm!727641 m!8257986))

(assert (=> b!7851162 m!8257976))

(assert (=> d!2353195 d!2353351))

(declare-fun d!2353355 () Bool)

(assert (=> d!2353355 (matchR!10521 (Union!21085 lt!2679667 EmptyLang!21085) lt!2679663)))

(assert (=> d!2353355 true))

(declare-fun _$115!516 () Unit!168912)

(assert (=> d!2353355 (= (choose!59654 lt!2679667 EmptyLang!21085 lt!2679663) _$115!516)))

(declare-fun bs!1967084 () Bool)

(assert (= bs!1967084 d!2353355))

(assert (=> bs!1967084 m!8258166))

(assert (=> d!2353195 d!2353355))

(assert (=> d!2353195 d!2353333))

(declare-fun d!2353363 () Bool)

(assert (=> d!2353363 (= (nullable!9357 r2!6165) (nullableFct!3689 r2!6165))))

(declare-fun bs!1967085 () Bool)

(assert (= bs!1967085 d!2353363))

(declare-fun m!8258460 () Bool)

(assert (=> bs!1967085 m!8258460))

(assert (=> b!7850430 d!2353363))

(assert (=> b!7850457 d!2353323))

(assert (=> b!7850457 d!2353215))

(assert (=> b!7850372 d!2353319))

(declare-fun b!7851179 () Bool)

(declare-fun res!3122143 () Bool)

(declare-fun e!4641035 () Bool)

(assert (=> b!7851179 (=> (not res!3122143) (not e!4641035))))

(declare-fun call!727652 () Bool)

(assert (=> b!7851179 (= res!3122143 call!727652)))

(declare-fun e!4641039 () Bool)

(assert (=> b!7851179 (= e!4641039 e!4641035)))

(declare-fun call!727651 () Bool)

(declare-fun c!1443068 () Bool)

(declare-fun c!1443067 () Bool)

(declare-fun bm!727646 () Bool)

(assert (=> bm!727646 (= call!727651 (validRegex!11495 (ite c!1443067 (reg!21414 (ite c!1442884 (regOne!42683 r1!6227) (regTwo!42682 r1!6227))) (ite c!1443068 (regTwo!42683 (ite c!1442884 (regOne!42683 r1!6227) (regTwo!42682 r1!6227))) (regOne!42682 (ite c!1442884 (regOne!42683 r1!6227) (regTwo!42682 r1!6227)))))))))

(declare-fun b!7851180 () Bool)

(declare-fun e!4641036 () Bool)

(declare-fun e!4641033 () Bool)

(assert (=> b!7851180 (= e!4641036 e!4641033)))

(declare-fun res!3122146 () Bool)

(assert (=> b!7851180 (= res!3122146 (not (nullable!9357 (reg!21414 (ite c!1442884 (regOne!42683 r1!6227) (regTwo!42682 r1!6227))))))))

(assert (=> b!7851180 (=> (not res!3122146) (not e!4641033))))

(declare-fun bm!727647 () Bool)

(assert (=> bm!727647 (= call!727652 (validRegex!11495 (ite c!1443068 (regOne!42683 (ite c!1442884 (regOne!42683 r1!6227) (regTwo!42682 r1!6227))) (regTwo!42682 (ite c!1442884 (regOne!42683 r1!6227) (regTwo!42682 r1!6227))))))))

(declare-fun bm!727648 () Bool)

(declare-fun call!727653 () Bool)

(assert (=> bm!727648 (= call!727653 call!727651)))

(declare-fun b!7851181 () Bool)

(assert (=> b!7851181 (= e!4641036 e!4641039)))

(assert (=> b!7851181 (= c!1443068 ((_ is Union!21085) (ite c!1442884 (regOne!42683 r1!6227) (regTwo!42682 r1!6227))))))

(declare-fun b!7851182 () Bool)

(declare-fun e!4641038 () Bool)

(assert (=> b!7851182 (= e!4641038 e!4641036)))

(assert (=> b!7851182 (= c!1443067 ((_ is Star!21085) (ite c!1442884 (regOne!42683 r1!6227) (regTwo!42682 r1!6227))))))

(declare-fun b!7851178 () Bool)

(assert (=> b!7851178 (= e!4641035 call!727653)))

(declare-fun d!2353365 () Bool)

(declare-fun res!3122144 () Bool)

(assert (=> d!2353365 (=> res!3122144 e!4641038)))

(assert (=> d!2353365 (= res!3122144 ((_ is ElementMatch!21085) (ite c!1442884 (regOne!42683 r1!6227) (regTwo!42682 r1!6227))))))

(assert (=> d!2353365 (= (validRegex!11495 (ite c!1442884 (regOne!42683 r1!6227) (regTwo!42682 r1!6227))) e!4641038)))

(declare-fun b!7851183 () Bool)

(declare-fun e!4641034 () Bool)

(assert (=> b!7851183 (= e!4641034 call!727652)))

(declare-fun b!7851184 () Bool)

(assert (=> b!7851184 (= e!4641033 call!727651)))

(declare-fun b!7851185 () Bool)

(declare-fun res!3122142 () Bool)

(declare-fun e!4641037 () Bool)

(assert (=> b!7851185 (=> res!3122142 e!4641037)))

(assert (=> b!7851185 (= res!3122142 (not ((_ is Concat!29930) (ite c!1442884 (regOne!42683 r1!6227) (regTwo!42682 r1!6227)))))))

(assert (=> b!7851185 (= e!4641039 e!4641037)))

(declare-fun b!7851186 () Bool)

(assert (=> b!7851186 (= e!4641037 e!4641034)))

(declare-fun res!3122145 () Bool)

(assert (=> b!7851186 (=> (not res!3122145) (not e!4641034))))

(assert (=> b!7851186 (= res!3122145 call!727653)))

(assert (= (and d!2353365 (not res!3122144)) b!7851182))

(assert (= (and b!7851182 c!1443067) b!7851180))

(assert (= (and b!7851182 (not c!1443067)) b!7851181))

(assert (= (and b!7851180 res!3122146) b!7851184))

(assert (= (and b!7851181 c!1443068) b!7851179))

(assert (= (and b!7851181 (not c!1443068)) b!7851185))

(assert (= (and b!7851179 res!3122143) b!7851178))

(assert (= (and b!7851185 (not res!3122142)) b!7851186))

(assert (= (and b!7851186 res!3122145) b!7851183))

(assert (= (or b!7851179 b!7851183) bm!727647))

(assert (= (or b!7851178 b!7851186) bm!727648))

(assert (= (or b!7851184 bm!727648) bm!727646))

(declare-fun m!8258462 () Bool)

(assert (=> bm!727646 m!8258462))

(declare-fun m!8258464 () Bool)

(assert (=> b!7851180 m!8258464))

(declare-fun m!8258466 () Bool)

(assert (=> bm!727647 m!8258466))

(assert (=> bm!727518 d!2353365))

(declare-fun b!7851187 () Bool)

(declare-fun e!4641041 () Bool)

(declare-fun e!4641042 () Bool)

(assert (=> b!7851187 (= e!4641041 e!4641042)))

(declare-fun res!3122152 () Bool)

(assert (=> b!7851187 (=> res!3122152 e!4641042)))

(declare-fun call!727654 () Bool)

(assert (=> b!7851187 (= res!3122152 call!727654)))

(declare-fun b!7851188 () Bool)

(declare-fun e!4641045 () Bool)

(assert (=> b!7851188 (= e!4641045 (nullable!9357 (derivativeStep!6320 lt!2679665 (head!16041 (++!18093 s1!4084 s2!3706)))))))

(declare-fun b!7851189 () Bool)

(declare-fun e!4641040 () Bool)

(assert (=> b!7851189 (= e!4641040 e!4641041)))

(declare-fun res!3122147 () Bool)

(assert (=> b!7851189 (=> (not res!3122147) (not e!4641041))))

(declare-fun lt!2679735 () Bool)

(assert (=> b!7851189 (= res!3122147 (not lt!2679735))))

(declare-fun b!7851190 () Bool)

(declare-fun res!3122153 () Bool)

(assert (=> b!7851190 (=> res!3122153 e!4641040)))

(assert (=> b!7851190 (= res!3122153 (not ((_ is ElementMatch!21085) (derivativeStep!6320 lt!2679665 (head!16041 (++!18093 s1!4084 s2!3706))))))))

(declare-fun e!4641044 () Bool)

(assert (=> b!7851190 (= e!4641044 e!4641040)))

(declare-fun b!7851191 () Bool)

(declare-fun e!4641043 () Bool)

(assert (=> b!7851191 (= e!4641043 (= (head!16041 (tail!15584 (++!18093 s1!4084 s2!3706))) (c!1442851 (derivativeStep!6320 lt!2679665 (head!16041 (++!18093 s1!4084 s2!3706))))))))

(declare-fun b!7851192 () Bool)

(declare-fun res!3122148 () Bool)

(assert (=> b!7851192 (=> res!3122148 e!4641042)))

(assert (=> b!7851192 (= res!3122148 (not (isEmpty!42330 (tail!15584 (tail!15584 (++!18093 s1!4084 s2!3706))))))))

(declare-fun b!7851193 () Bool)

(assert (=> b!7851193 (= e!4641044 (not lt!2679735))))

(declare-fun b!7851194 () Bool)

(declare-fun e!4641046 () Bool)

(assert (=> b!7851194 (= e!4641046 e!4641044)))

(declare-fun c!1443070 () Bool)

(assert (=> b!7851194 (= c!1443070 ((_ is EmptyLang!21085) (derivativeStep!6320 lt!2679665 (head!16041 (++!18093 s1!4084 s2!3706)))))))

(declare-fun b!7851195 () Bool)

(assert (=> b!7851195 (= e!4641045 (matchR!10521 (derivativeStep!6320 (derivativeStep!6320 lt!2679665 (head!16041 (++!18093 s1!4084 s2!3706))) (head!16041 (tail!15584 (++!18093 s1!4084 s2!3706)))) (tail!15584 (tail!15584 (++!18093 s1!4084 s2!3706)))))))

(declare-fun b!7851196 () Bool)

(declare-fun res!3122151 () Bool)

(assert (=> b!7851196 (=> (not res!3122151) (not e!4641043))))

(assert (=> b!7851196 (= res!3122151 (not call!727654))))

(declare-fun b!7851197 () Bool)

(declare-fun res!3122150 () Bool)

(assert (=> b!7851197 (=> res!3122150 e!4641040)))

(assert (=> b!7851197 (= res!3122150 e!4641043)))

(declare-fun res!3122154 () Bool)

(assert (=> b!7851197 (=> (not res!3122154) (not e!4641043))))

(assert (=> b!7851197 (= res!3122154 lt!2679735)))

(declare-fun b!7851198 () Bool)

(declare-fun res!3122149 () Bool)

(assert (=> b!7851198 (=> (not res!3122149) (not e!4641043))))

(assert (=> b!7851198 (= res!3122149 (isEmpty!42330 (tail!15584 (tail!15584 (++!18093 s1!4084 s2!3706)))))))

(declare-fun bm!727649 () Bool)

(assert (=> bm!727649 (= call!727654 (isEmpty!42330 (tail!15584 (++!18093 s1!4084 s2!3706))))))

(declare-fun d!2353367 () Bool)

(assert (=> d!2353367 e!4641046))

(declare-fun c!1443071 () Bool)

(assert (=> d!2353367 (= c!1443071 ((_ is EmptyExpr!21085) (derivativeStep!6320 lt!2679665 (head!16041 (++!18093 s1!4084 s2!3706)))))))

(assert (=> d!2353367 (= lt!2679735 e!4641045)))

(declare-fun c!1443069 () Bool)

(assert (=> d!2353367 (= c!1443069 (isEmpty!42330 (tail!15584 (++!18093 s1!4084 s2!3706))))))

(assert (=> d!2353367 (validRegex!11495 (derivativeStep!6320 lt!2679665 (head!16041 (++!18093 s1!4084 s2!3706))))))

(assert (=> d!2353367 (= (matchR!10521 (derivativeStep!6320 lt!2679665 (head!16041 (++!18093 s1!4084 s2!3706))) (tail!15584 (++!18093 s1!4084 s2!3706))) lt!2679735)))

(declare-fun b!7851199 () Bool)

(assert (=> b!7851199 (= e!4641042 (not (= (head!16041 (tail!15584 (++!18093 s1!4084 s2!3706))) (c!1442851 (derivativeStep!6320 lt!2679665 (head!16041 (++!18093 s1!4084 s2!3706)))))))))

(declare-fun b!7851200 () Bool)

(assert (=> b!7851200 (= e!4641046 (= lt!2679735 call!727654))))

(assert (= (and d!2353367 c!1443069) b!7851188))

(assert (= (and d!2353367 (not c!1443069)) b!7851195))

(assert (= (and d!2353367 c!1443071) b!7851200))

(assert (= (and d!2353367 (not c!1443071)) b!7851194))

(assert (= (and b!7851194 c!1443070) b!7851193))

(assert (= (and b!7851194 (not c!1443070)) b!7851190))

(assert (= (and b!7851190 (not res!3122153)) b!7851197))

(assert (= (and b!7851197 res!3122154) b!7851196))

(assert (= (and b!7851196 res!3122151) b!7851198))

(assert (= (and b!7851198 res!3122149) b!7851191))

(assert (= (and b!7851197 (not res!3122150)) b!7851189))

(assert (= (and b!7851189 res!3122147) b!7851187))

(assert (= (and b!7851187 (not res!3122152)) b!7851192))

(assert (= (and b!7851192 (not res!3122148)) b!7851199))

(assert (= (or b!7851200 b!7851187 b!7851196) bm!727649))

(assert (=> b!7851192 m!8258124))

(declare-fun m!8258468 () Bool)

(assert (=> b!7851192 m!8258468))

(assert (=> b!7851192 m!8258468))

(declare-fun m!8258470 () Bool)

(assert (=> b!7851192 m!8258470))

(assert (=> b!7851195 m!8258124))

(declare-fun m!8258472 () Bool)

(assert (=> b!7851195 m!8258472))

(assert (=> b!7851195 m!8258130))

(assert (=> b!7851195 m!8258472))

(declare-fun m!8258476 () Bool)

(assert (=> b!7851195 m!8258476))

(assert (=> b!7851195 m!8258124))

(assert (=> b!7851195 m!8258468))

(assert (=> b!7851195 m!8258476))

(assert (=> b!7851195 m!8258468))

(declare-fun m!8258480 () Bool)

(assert (=> b!7851195 m!8258480))

(assert (=> b!7851188 m!8258130))

(declare-fun m!8258482 () Bool)

(assert (=> b!7851188 m!8258482))

(assert (=> d!2353367 m!8258124))

(assert (=> d!2353367 m!8258126))

(assert (=> d!2353367 m!8258130))

(declare-fun m!8258484 () Bool)

(assert (=> d!2353367 m!8258484))

(assert (=> b!7851198 m!8258124))

(assert (=> b!7851198 m!8258468))

(assert (=> b!7851198 m!8258468))

(assert (=> b!7851198 m!8258470))

(assert (=> b!7851191 m!8258124))

(assert (=> b!7851191 m!8258472))

(assert (=> bm!727649 m!8258124))

(assert (=> bm!727649 m!8258126))

(assert (=> b!7851199 m!8258124))

(assert (=> b!7851199 m!8258472))

(assert (=> b!7850676 d!2353367))

(declare-fun b!7851207 () Bool)

(declare-fun e!4641053 () Regex!21085)

(declare-fun e!4641050 () Regex!21085)

(assert (=> b!7851207 (= e!4641053 e!4641050)))

(declare-fun c!1443076 () Bool)

(assert (=> b!7851207 (= c!1443076 ((_ is ElementMatch!21085) lt!2679665))))

(declare-fun e!4641051 () Regex!21085)

(declare-fun call!727655 () Regex!21085)

(declare-fun b!7851208 () Bool)

(declare-fun call!727658 () Regex!21085)

(assert (=> b!7851208 (= e!4641051 (Union!21085 (Concat!29930 call!727658 (regTwo!42682 lt!2679665)) call!727655))))

(declare-fun bm!727650 () Bool)

(declare-fun call!727656 () Regex!21085)

(assert (=> bm!727650 (= call!727655 call!727656)))

(declare-fun d!2353373 () Bool)

(declare-fun lt!2679736 () Regex!21085)

(assert (=> d!2353373 (validRegex!11495 lt!2679736)))

(assert (=> d!2353373 (= lt!2679736 e!4641053)))

(declare-fun c!1443078 () Bool)

(assert (=> d!2353373 (= c!1443078 (or ((_ is EmptyExpr!21085) lt!2679665) ((_ is EmptyLang!21085) lt!2679665)))))

(assert (=> d!2353373 (validRegex!11495 lt!2679665)))

(assert (=> d!2353373 (= (derivativeStep!6320 lt!2679665 (head!16041 (++!18093 s1!4084 s2!3706))) lt!2679736)))

(declare-fun bm!727651 () Bool)

(declare-fun c!1443077 () Bool)

(declare-fun c!1443075 () Bool)

(assert (=> bm!727651 (= call!727656 (derivativeStep!6320 (ite c!1443075 (regOne!42683 lt!2679665) (ite c!1443077 (regTwo!42682 lt!2679665) (regOne!42682 lt!2679665))) (head!16041 (++!18093 s1!4084 s2!3706))))))

(declare-fun b!7851209 () Bool)

(assert (=> b!7851209 (= e!4641050 (ite (= (head!16041 (++!18093 s1!4084 s2!3706)) (c!1442851 lt!2679665)) EmptyExpr!21085 EmptyLang!21085))))

(declare-fun b!7851210 () Bool)

(declare-fun e!4641054 () Regex!21085)

(declare-fun e!4641052 () Regex!21085)

(assert (=> b!7851210 (= e!4641054 e!4641052)))

(declare-fun c!1443079 () Bool)

(assert (=> b!7851210 (= c!1443079 ((_ is Star!21085) lt!2679665))))

(declare-fun b!7851211 () Bool)

(assert (=> b!7851211 (= e!4641051 (Union!21085 (Concat!29930 call!727655 (regTwo!42682 lt!2679665)) EmptyLang!21085))))

(declare-fun b!7851212 () Bool)

(assert (=> b!7851212 (= c!1443077 (nullable!9357 (regOne!42682 lt!2679665)))))

(assert (=> b!7851212 (= e!4641052 e!4641051)))

(declare-fun b!7851213 () Bool)

(assert (=> b!7851213 (= e!4641052 (Concat!29930 call!727658 lt!2679665))))

(declare-fun bm!727652 () Bool)

(declare-fun call!727657 () Regex!21085)

(assert (=> bm!727652 (= call!727657 (derivativeStep!6320 (ite c!1443075 (regTwo!42683 lt!2679665) (ite c!1443079 (reg!21414 lt!2679665) (regOne!42682 lt!2679665))) (head!16041 (++!18093 s1!4084 s2!3706))))))

(declare-fun b!7851214 () Bool)

(assert (=> b!7851214 (= c!1443075 ((_ is Union!21085) lt!2679665))))

(assert (=> b!7851214 (= e!4641050 e!4641054)))

(declare-fun bm!727653 () Bool)

(assert (=> bm!727653 (= call!727658 call!727657)))

(declare-fun b!7851215 () Bool)

(assert (=> b!7851215 (= e!4641054 (Union!21085 call!727656 call!727657))))

(declare-fun b!7851216 () Bool)

(assert (=> b!7851216 (= e!4641053 EmptyLang!21085)))

(assert (= (and d!2353373 c!1443078) b!7851216))

(assert (= (and d!2353373 (not c!1443078)) b!7851207))

(assert (= (and b!7851207 c!1443076) b!7851209))

(assert (= (and b!7851207 (not c!1443076)) b!7851214))

(assert (= (and b!7851214 c!1443075) b!7851215))

(assert (= (and b!7851214 (not c!1443075)) b!7851210))

(assert (= (and b!7851210 c!1443079) b!7851213))

(assert (= (and b!7851210 (not c!1443079)) b!7851212))

(assert (= (and b!7851212 c!1443077) b!7851208))

(assert (= (and b!7851212 (not c!1443077)) b!7851211))

(assert (= (or b!7851208 b!7851211) bm!727650))

(assert (= (or b!7851213 b!7851208) bm!727653))

(assert (= (or b!7851215 bm!727653) bm!727652))

(assert (= (or b!7851215 bm!727650) bm!727651))

(declare-fun m!8258492 () Bool)

(assert (=> d!2353373 m!8258492))

(assert (=> d!2353373 m!8258110))

(assert (=> bm!727651 m!8258128))

(declare-fun m!8258494 () Bool)

(assert (=> bm!727651 m!8258494))

(assert (=> b!7851212 m!8258114))

(assert (=> bm!727652 m!8258128))

(declare-fun m!8258496 () Bool)

(assert (=> bm!727652 m!8258496))

(assert (=> b!7850676 d!2353373))

(assert (=> b!7850676 d!2353337))

(assert (=> b!7850676 d!2353265))

(assert (=> b!7850715 d!2353323))

(assert (=> b!7850715 d!2353215))

(declare-fun b!7851226 () Bool)

(declare-fun e!4641063 () Bool)

(declare-fun e!4641064 () Bool)

(assert (=> b!7851226 (= e!4641063 e!4641064)))

(declare-fun res!3122165 () Bool)

(assert (=> b!7851226 (=> res!3122165 e!4641064)))

(declare-fun call!727662 () Bool)

(assert (=> b!7851226 (= res!3122165 call!727662)))

(declare-fun b!7851227 () Bool)

(declare-fun e!4641067 () Bool)

(assert (=> b!7851227 (= e!4641067 (nullable!9357 (Concat!29930 lt!2679666 r2!6165)))))

(declare-fun b!7851228 () Bool)

(declare-fun e!4641062 () Bool)

(assert (=> b!7851228 (= e!4641062 e!4641063)))

(declare-fun res!3122160 () Bool)

(assert (=> b!7851228 (=> (not res!3122160) (not e!4641063))))

(declare-fun lt!2679737 () Bool)

(assert (=> b!7851228 (= res!3122160 (not lt!2679737))))

(declare-fun b!7851229 () Bool)

(declare-fun res!3122166 () Bool)

(assert (=> b!7851229 (=> res!3122166 e!4641062)))

(assert (=> b!7851229 (= res!3122166 (not ((_ is ElementMatch!21085) (Concat!29930 lt!2679666 r2!6165))))))

(declare-fun e!4641066 () Bool)

(assert (=> b!7851229 (= e!4641066 e!4641062)))

(declare-fun e!4641065 () Bool)

(declare-fun b!7851230 () Bool)

(assert (=> b!7851230 (= e!4641065 (= (head!16041 (++!18093 (t!388679 s1!4084) s2!3706)) (c!1442851 (Concat!29930 lt!2679666 r2!6165))))))

(declare-fun b!7851231 () Bool)

(declare-fun res!3122161 () Bool)

(assert (=> b!7851231 (=> res!3122161 e!4641064)))

(assert (=> b!7851231 (= res!3122161 (not (isEmpty!42330 (tail!15584 (++!18093 (t!388679 s1!4084) s2!3706)))))))

(declare-fun b!7851232 () Bool)

(assert (=> b!7851232 (= e!4641066 (not lt!2679737))))

(declare-fun b!7851233 () Bool)

(declare-fun e!4641068 () Bool)

(assert (=> b!7851233 (= e!4641068 e!4641066)))

(declare-fun c!1443083 () Bool)

(assert (=> b!7851233 (= c!1443083 ((_ is EmptyLang!21085) (Concat!29930 lt!2679666 r2!6165)))))

(declare-fun b!7851234 () Bool)

(assert (=> b!7851234 (= e!4641067 (matchR!10521 (derivativeStep!6320 (Concat!29930 lt!2679666 r2!6165) (head!16041 (++!18093 (t!388679 s1!4084) s2!3706))) (tail!15584 (++!18093 (t!388679 s1!4084) s2!3706))))))

(declare-fun b!7851235 () Bool)

(declare-fun res!3122164 () Bool)

(assert (=> b!7851235 (=> (not res!3122164) (not e!4641065))))

(assert (=> b!7851235 (= res!3122164 (not call!727662))))

(declare-fun b!7851236 () Bool)

(declare-fun res!3122163 () Bool)

(assert (=> b!7851236 (=> res!3122163 e!4641062)))

(assert (=> b!7851236 (= res!3122163 e!4641065)))

(declare-fun res!3122167 () Bool)

(assert (=> b!7851236 (=> (not res!3122167) (not e!4641065))))

(assert (=> b!7851236 (= res!3122167 lt!2679737)))

(declare-fun b!7851237 () Bool)

(declare-fun res!3122162 () Bool)

(assert (=> b!7851237 (=> (not res!3122162) (not e!4641065))))

(assert (=> b!7851237 (= res!3122162 (isEmpty!42330 (tail!15584 (++!18093 (t!388679 s1!4084) s2!3706))))))

(declare-fun bm!727657 () Bool)

(assert (=> bm!727657 (= call!727662 (isEmpty!42330 (++!18093 (t!388679 s1!4084) s2!3706)))))

(declare-fun d!2353377 () Bool)

(assert (=> d!2353377 e!4641068))

(declare-fun c!1443084 () Bool)

(assert (=> d!2353377 (= c!1443084 ((_ is EmptyExpr!21085) (Concat!29930 lt!2679666 r2!6165)))))

(assert (=> d!2353377 (= lt!2679737 e!4641067)))

(declare-fun c!1443082 () Bool)

(assert (=> d!2353377 (= c!1443082 (isEmpty!42330 (++!18093 (t!388679 s1!4084) s2!3706)))))

(assert (=> d!2353377 (validRegex!11495 (Concat!29930 lt!2679666 r2!6165))))

(assert (=> d!2353377 (= (matchR!10521 (Concat!29930 lt!2679666 r2!6165) (++!18093 (t!388679 s1!4084) s2!3706)) lt!2679737)))

(declare-fun b!7851238 () Bool)

(assert (=> b!7851238 (= e!4641064 (not (= (head!16041 (++!18093 (t!388679 s1!4084) s2!3706)) (c!1442851 (Concat!29930 lt!2679666 r2!6165)))))))

(declare-fun b!7851239 () Bool)

(assert (=> b!7851239 (= e!4641068 (= lt!2679737 call!727662))))

(assert (= (and d!2353377 c!1443082) b!7851227))

(assert (= (and d!2353377 (not c!1443082)) b!7851234))

(assert (= (and d!2353377 c!1443084) b!7851239))

(assert (= (and d!2353377 (not c!1443084)) b!7851233))

(assert (= (and b!7851233 c!1443083) b!7851232))

(assert (= (and b!7851233 (not c!1443083)) b!7851229))

(assert (= (and b!7851229 (not res!3122166)) b!7851236))

(assert (= (and b!7851236 res!3122167) b!7851235))

(assert (= (and b!7851235 res!3122164) b!7851237))

(assert (= (and b!7851237 res!3122162) b!7851230))

(assert (= (and b!7851236 (not res!3122163)) b!7851228))

(assert (= (and b!7851228 res!3122160) b!7851226))

(assert (= (and b!7851226 (not res!3122165)) b!7851231))

(assert (= (and b!7851231 (not res!3122161)) b!7851238))

(assert (= (or b!7851239 b!7851226 b!7851235) bm!727657))

(assert (=> b!7851231 m!8257890))

(declare-fun m!8258506 () Bool)

(assert (=> b!7851231 m!8258506))

(assert (=> b!7851231 m!8258506))

(declare-fun m!8258508 () Bool)

(assert (=> b!7851231 m!8258508))

(assert (=> b!7851234 m!8257890))

(declare-fun m!8258510 () Bool)

(assert (=> b!7851234 m!8258510))

(assert (=> b!7851234 m!8258510))

(declare-fun m!8258512 () Bool)

(assert (=> b!7851234 m!8258512))

(assert (=> b!7851234 m!8257890))

(assert (=> b!7851234 m!8258506))

(assert (=> b!7851234 m!8258512))

(assert (=> b!7851234 m!8258506))

(declare-fun m!8258514 () Bool)

(assert (=> b!7851234 m!8258514))

(declare-fun m!8258516 () Bool)

(assert (=> b!7851227 m!8258516))

(assert (=> d!2353377 m!8257890))

(declare-fun m!8258518 () Bool)

(assert (=> d!2353377 m!8258518))

(declare-fun m!8258520 () Bool)

(assert (=> d!2353377 m!8258520))

(assert (=> b!7851237 m!8257890))

(assert (=> b!7851237 m!8258506))

(assert (=> b!7851237 m!8258506))

(assert (=> b!7851237 m!8258508))

(assert (=> b!7851230 m!8257890))

(assert (=> b!7851230 m!8258510))

(assert (=> bm!727657 m!8257890))

(assert (=> bm!727657 m!8258518))

(assert (=> b!7851238 m!8257890))

(assert (=> b!7851238 m!8258510))

(assert (=> d!2353159 d!2353377))

(assert (=> d!2353159 d!2353173))

(declare-fun d!2353383 () Bool)

(assert (=> d!2353383 (matchR!10521 (Concat!29930 lt!2679666 r2!6165) (++!18093 (t!388679 s1!4084) s2!3706))))

(assert (=> d!2353383 true))

(declare-fun _$119!544 () Unit!168912)

(assert (=> d!2353383 (= (choose!59652 lt!2679666 r2!6165 (t!388679 s1!4084) s2!3706) _$119!544)))

(declare-fun bs!1967087 () Bool)

(assert (= bs!1967087 d!2353383))

(assert (=> bs!1967087 m!8257890))

(assert (=> bs!1967087 m!8257890))

(assert (=> bs!1967087 m!8257996))

(assert (=> d!2353159 d!2353383))

(declare-fun b!7851265 () Bool)

(declare-fun res!3122177 () Bool)

(declare-fun e!4641083 () Bool)

(assert (=> b!7851265 (=> (not res!3122177) (not e!4641083))))

(declare-fun call!727669 () Bool)

(assert (=> b!7851265 (= res!3122177 call!727669)))

(declare-fun e!4641087 () Bool)

(assert (=> b!7851265 (= e!4641087 e!4641083)))

(declare-fun c!1443094 () Bool)

(declare-fun bm!727663 () Bool)

(declare-fun call!727668 () Bool)

(declare-fun c!1443093 () Bool)

(assert (=> bm!727663 (= call!727668 (validRegex!11495 (ite c!1443093 (reg!21414 lt!2679666) (ite c!1443094 (regTwo!42683 lt!2679666) (regOne!42682 lt!2679666)))))))

(declare-fun b!7851266 () Bool)

(declare-fun e!4641084 () Bool)

(declare-fun e!4641081 () Bool)

(assert (=> b!7851266 (= e!4641084 e!4641081)))

(declare-fun res!3122180 () Bool)

(assert (=> b!7851266 (= res!3122180 (not (nullable!9357 (reg!21414 lt!2679666))))))

(assert (=> b!7851266 (=> (not res!3122180) (not e!4641081))))

(declare-fun bm!727664 () Bool)

(assert (=> bm!727664 (= call!727669 (validRegex!11495 (ite c!1443094 (regOne!42683 lt!2679666) (regTwo!42682 lt!2679666))))))

(declare-fun bm!727665 () Bool)

(declare-fun call!727670 () Bool)

(assert (=> bm!727665 (= call!727670 call!727668)))

(declare-fun b!7851267 () Bool)

(assert (=> b!7851267 (= e!4641084 e!4641087)))

(assert (=> b!7851267 (= c!1443094 ((_ is Union!21085) lt!2679666))))

(declare-fun b!7851268 () Bool)

(declare-fun e!4641086 () Bool)

(assert (=> b!7851268 (= e!4641086 e!4641084)))

(assert (=> b!7851268 (= c!1443093 ((_ is Star!21085) lt!2679666))))

(declare-fun b!7851264 () Bool)

(assert (=> b!7851264 (= e!4641083 call!727670)))

(declare-fun d!2353387 () Bool)

(declare-fun res!3122178 () Bool)

(assert (=> d!2353387 (=> res!3122178 e!4641086)))

(assert (=> d!2353387 (= res!3122178 ((_ is ElementMatch!21085) lt!2679666))))

(assert (=> d!2353387 (= (validRegex!11495 lt!2679666) e!4641086)))

(declare-fun b!7851269 () Bool)

(declare-fun e!4641082 () Bool)

(assert (=> b!7851269 (= e!4641082 call!727669)))

(declare-fun b!7851270 () Bool)

(assert (=> b!7851270 (= e!4641081 call!727668)))

(declare-fun b!7851271 () Bool)

(declare-fun res!3122176 () Bool)

(declare-fun e!4641085 () Bool)

(assert (=> b!7851271 (=> res!3122176 e!4641085)))

(assert (=> b!7851271 (= res!3122176 (not ((_ is Concat!29930) lt!2679666)))))

(assert (=> b!7851271 (= e!4641087 e!4641085)))

(declare-fun b!7851272 () Bool)

(assert (=> b!7851272 (= e!4641085 e!4641082)))

(declare-fun res!3122179 () Bool)

(assert (=> b!7851272 (=> (not res!3122179) (not e!4641082))))

(assert (=> b!7851272 (= res!3122179 call!727670)))

(assert (= (and d!2353387 (not res!3122178)) b!7851268))

(assert (= (and b!7851268 c!1443093) b!7851266))

(assert (= (and b!7851268 (not c!1443093)) b!7851267))

(assert (= (and b!7851266 res!3122180) b!7851270))

(assert (= (and b!7851267 c!1443094) b!7851265))

(assert (= (and b!7851267 (not c!1443094)) b!7851271))

(assert (= (and b!7851265 res!3122177) b!7851264))

(assert (= (and b!7851271 (not res!3122176)) b!7851272))

(assert (= (and b!7851272 res!3122179) b!7851269))

(assert (= (or b!7851265 b!7851269) bm!727664))

(assert (= (or b!7851264 b!7851272) bm!727665))

(assert (= (or b!7851270 bm!727665) bm!727663))

(declare-fun m!8258536 () Bool)

(assert (=> bm!727663 m!8258536))

(declare-fun m!8258538 () Bool)

(assert (=> b!7851266 m!8258538))

(declare-fun m!8258540 () Bool)

(assert (=> bm!727664 m!8258540))

(assert (=> d!2353159 d!2353387))

(assert (=> b!7850680 d!2353337))

(assert (=> b!7850434 d!2353325))

(assert (=> b!7850434 d!2353275))

(declare-fun b!7851274 () Bool)

(declare-fun res!3122182 () Bool)

(declare-fun e!4641090 () Bool)

(assert (=> b!7851274 (=> (not res!3122182) (not e!4641090))))

(declare-fun call!727672 () Bool)

(assert (=> b!7851274 (= res!3122182 call!727672)))

(declare-fun e!4641094 () Bool)

(assert (=> b!7851274 (= e!4641094 e!4641090)))

(declare-fun call!727671 () Bool)

(declare-fun c!1443095 () Bool)

(declare-fun bm!727666 () Bool)

(declare-fun c!1443096 () Bool)

(assert (=> bm!727666 (= call!727671 (validRegex!11495 (ite c!1443095 (reg!21414 (ite c!1442879 (regOne!42683 r2!6165) (regTwo!42682 r2!6165))) (ite c!1443096 (regTwo!42683 (ite c!1442879 (regOne!42683 r2!6165) (regTwo!42682 r2!6165))) (regOne!42682 (ite c!1442879 (regOne!42683 r2!6165) (regTwo!42682 r2!6165)))))))))

(declare-fun b!7851275 () Bool)

(declare-fun e!4641091 () Bool)

(declare-fun e!4641088 () Bool)

(assert (=> b!7851275 (= e!4641091 e!4641088)))

(declare-fun res!3122185 () Bool)

(assert (=> b!7851275 (= res!3122185 (not (nullable!9357 (reg!21414 (ite c!1442879 (regOne!42683 r2!6165) (regTwo!42682 r2!6165))))))))

(assert (=> b!7851275 (=> (not res!3122185) (not e!4641088))))

(declare-fun bm!727667 () Bool)

(assert (=> bm!727667 (= call!727672 (validRegex!11495 (ite c!1443096 (regOne!42683 (ite c!1442879 (regOne!42683 r2!6165) (regTwo!42682 r2!6165))) (regTwo!42682 (ite c!1442879 (regOne!42683 r2!6165) (regTwo!42682 r2!6165))))))))

(declare-fun bm!727668 () Bool)

(declare-fun call!727673 () Bool)

(assert (=> bm!727668 (= call!727673 call!727671)))

(declare-fun b!7851276 () Bool)

(assert (=> b!7851276 (= e!4641091 e!4641094)))

(assert (=> b!7851276 (= c!1443096 ((_ is Union!21085) (ite c!1442879 (regOne!42683 r2!6165) (regTwo!42682 r2!6165))))))

(declare-fun b!7851277 () Bool)

(declare-fun e!4641093 () Bool)

(assert (=> b!7851277 (= e!4641093 e!4641091)))

(assert (=> b!7851277 (= c!1443095 ((_ is Star!21085) (ite c!1442879 (regOne!42683 r2!6165) (regTwo!42682 r2!6165))))))

(declare-fun b!7851273 () Bool)

(assert (=> b!7851273 (= e!4641090 call!727673)))

(declare-fun d!2353389 () Bool)

(declare-fun res!3122183 () Bool)

(assert (=> d!2353389 (=> res!3122183 e!4641093)))

(assert (=> d!2353389 (= res!3122183 ((_ is ElementMatch!21085) (ite c!1442879 (regOne!42683 r2!6165) (regTwo!42682 r2!6165))))))

(assert (=> d!2353389 (= (validRegex!11495 (ite c!1442879 (regOne!42683 r2!6165) (regTwo!42682 r2!6165))) e!4641093)))

(declare-fun b!7851278 () Bool)

(declare-fun e!4641089 () Bool)

(assert (=> b!7851278 (= e!4641089 call!727672)))

(declare-fun b!7851279 () Bool)

(assert (=> b!7851279 (= e!4641088 call!727671)))

(declare-fun b!7851280 () Bool)

(declare-fun res!3122181 () Bool)

(declare-fun e!4641092 () Bool)

(assert (=> b!7851280 (=> res!3122181 e!4641092)))

(assert (=> b!7851280 (= res!3122181 (not ((_ is Concat!29930) (ite c!1442879 (regOne!42683 r2!6165) (regTwo!42682 r2!6165)))))))

(assert (=> b!7851280 (= e!4641094 e!4641092)))

(declare-fun b!7851281 () Bool)

(assert (=> b!7851281 (= e!4641092 e!4641089)))

(declare-fun res!3122184 () Bool)

(assert (=> b!7851281 (=> (not res!3122184) (not e!4641089))))

(assert (=> b!7851281 (= res!3122184 call!727673)))

(assert (= (and d!2353389 (not res!3122183)) b!7851277))

(assert (= (and b!7851277 c!1443095) b!7851275))

(assert (= (and b!7851277 (not c!1443095)) b!7851276))

(assert (= (and b!7851275 res!3122185) b!7851279))

(assert (= (and b!7851276 c!1443096) b!7851274))

(assert (= (and b!7851276 (not c!1443096)) b!7851280))

(assert (= (and b!7851274 res!3122182) b!7851273))

(assert (= (and b!7851280 (not res!3122181)) b!7851281))

(assert (= (and b!7851281 res!3122184) b!7851278))

(assert (= (or b!7851274 b!7851278) bm!727667))

(assert (= (or b!7851273 b!7851281) bm!727668))

(assert (= (or b!7851279 bm!727668) bm!727666))

(declare-fun m!8258550 () Bool)

(assert (=> bm!727666 m!8258550))

(declare-fun m!8258552 () Bool)

(assert (=> b!7851275 m!8258552))

(declare-fun m!8258554 () Bool)

(assert (=> bm!727667 m!8258554))

(assert (=> bm!727514 d!2353389))

(declare-fun b!7851283 () Bool)

(declare-fun res!3122187 () Bool)

(declare-fun e!4641097 () Bool)

(assert (=> b!7851283 (=> (not res!3122187) (not e!4641097))))

(declare-fun call!727675 () Bool)

(assert (=> b!7851283 (= res!3122187 call!727675)))

(declare-fun e!4641101 () Bool)

(assert (=> b!7851283 (= e!4641101 e!4641097)))

(declare-fun call!727674 () Bool)

(declare-fun c!1443097 () Bool)

(declare-fun c!1443098 () Bool)

(declare-fun bm!727669 () Bool)

(assert (=> bm!727669 (= call!727674 (validRegex!11495 (ite c!1443097 (reg!21414 (ite c!1442883 (reg!21414 r1!6227) (ite c!1442884 (regTwo!42683 r1!6227) (regOne!42682 r1!6227)))) (ite c!1443098 (regTwo!42683 (ite c!1442883 (reg!21414 r1!6227) (ite c!1442884 (regTwo!42683 r1!6227) (regOne!42682 r1!6227)))) (regOne!42682 (ite c!1442883 (reg!21414 r1!6227) (ite c!1442884 (regTwo!42683 r1!6227) (regOne!42682 r1!6227))))))))))

(declare-fun b!7851284 () Bool)

(declare-fun e!4641098 () Bool)

(declare-fun e!4641095 () Bool)

(assert (=> b!7851284 (= e!4641098 e!4641095)))

(declare-fun res!3122190 () Bool)

(assert (=> b!7851284 (= res!3122190 (not (nullable!9357 (reg!21414 (ite c!1442883 (reg!21414 r1!6227) (ite c!1442884 (regTwo!42683 r1!6227) (regOne!42682 r1!6227)))))))))

(assert (=> b!7851284 (=> (not res!3122190) (not e!4641095))))

(declare-fun bm!727670 () Bool)

(assert (=> bm!727670 (= call!727675 (validRegex!11495 (ite c!1443098 (regOne!42683 (ite c!1442883 (reg!21414 r1!6227) (ite c!1442884 (regTwo!42683 r1!6227) (regOne!42682 r1!6227)))) (regTwo!42682 (ite c!1442883 (reg!21414 r1!6227) (ite c!1442884 (regTwo!42683 r1!6227) (regOne!42682 r1!6227)))))))))

(declare-fun bm!727671 () Bool)

(declare-fun call!727676 () Bool)

(assert (=> bm!727671 (= call!727676 call!727674)))

(declare-fun b!7851285 () Bool)

(assert (=> b!7851285 (= e!4641098 e!4641101)))

(assert (=> b!7851285 (= c!1443098 ((_ is Union!21085) (ite c!1442883 (reg!21414 r1!6227) (ite c!1442884 (regTwo!42683 r1!6227) (regOne!42682 r1!6227)))))))

(declare-fun b!7851286 () Bool)

(declare-fun e!4641100 () Bool)

(assert (=> b!7851286 (= e!4641100 e!4641098)))

(assert (=> b!7851286 (= c!1443097 ((_ is Star!21085) (ite c!1442883 (reg!21414 r1!6227) (ite c!1442884 (regTwo!42683 r1!6227) (regOne!42682 r1!6227)))))))

(declare-fun b!7851282 () Bool)

(assert (=> b!7851282 (= e!4641097 call!727676)))

(declare-fun d!2353395 () Bool)

(declare-fun res!3122188 () Bool)

(assert (=> d!2353395 (=> res!3122188 e!4641100)))

(assert (=> d!2353395 (= res!3122188 ((_ is ElementMatch!21085) (ite c!1442883 (reg!21414 r1!6227) (ite c!1442884 (regTwo!42683 r1!6227) (regOne!42682 r1!6227)))))))

(assert (=> d!2353395 (= (validRegex!11495 (ite c!1442883 (reg!21414 r1!6227) (ite c!1442884 (regTwo!42683 r1!6227) (regOne!42682 r1!6227)))) e!4641100)))

(declare-fun b!7851287 () Bool)

(declare-fun e!4641096 () Bool)

(assert (=> b!7851287 (= e!4641096 call!727675)))

(declare-fun b!7851288 () Bool)

(assert (=> b!7851288 (= e!4641095 call!727674)))

(declare-fun b!7851289 () Bool)

(declare-fun res!3122186 () Bool)

(declare-fun e!4641099 () Bool)

(assert (=> b!7851289 (=> res!3122186 e!4641099)))

(assert (=> b!7851289 (= res!3122186 (not ((_ is Concat!29930) (ite c!1442883 (reg!21414 r1!6227) (ite c!1442884 (regTwo!42683 r1!6227) (regOne!42682 r1!6227))))))))

(assert (=> b!7851289 (= e!4641101 e!4641099)))

(declare-fun b!7851290 () Bool)

(assert (=> b!7851290 (= e!4641099 e!4641096)))

(declare-fun res!3122189 () Bool)

(assert (=> b!7851290 (=> (not res!3122189) (not e!4641096))))

(assert (=> b!7851290 (= res!3122189 call!727676)))

(assert (= (and d!2353395 (not res!3122188)) b!7851286))

(assert (= (and b!7851286 c!1443097) b!7851284))

(assert (= (and b!7851286 (not c!1443097)) b!7851285))

(assert (= (and b!7851284 res!3122190) b!7851288))

(assert (= (and b!7851285 c!1443098) b!7851283))

(assert (= (and b!7851285 (not c!1443098)) b!7851289))

(assert (= (and b!7851283 res!3122187) b!7851282))

(assert (= (and b!7851289 (not res!3122186)) b!7851290))

(assert (= (and b!7851290 res!3122189) b!7851287))

(assert (= (or b!7851283 b!7851287) bm!727670))

(assert (= (or b!7851282 b!7851290) bm!727671))

(assert (= (or b!7851288 bm!727671) bm!727669))

(declare-fun m!8258556 () Bool)

(assert (=> bm!727669 m!8258556))

(declare-fun m!8258558 () Bool)

(assert (=> b!7851284 m!8258558))

(declare-fun m!8258560 () Bool)

(assert (=> bm!727670 m!8258560))

(assert (=> bm!727517 d!2353395))

(declare-fun b!7851293 () Bool)

(declare-fun e!4641102 () Bool)

(declare-fun tp!2324895 () Bool)

(assert (=> b!7851293 (= e!4641102 tp!2324895)))

(declare-fun b!7851291 () Bool)

(assert (=> b!7851291 (= e!4641102 tp_is_empty!52569)))

(assert (=> b!7850802 (= tp!2324859 e!4641102)))

(declare-fun b!7851294 () Bool)

(declare-fun tp!2324897 () Bool)

(declare-fun tp!2324893 () Bool)

(assert (=> b!7851294 (= e!4641102 (and tp!2324897 tp!2324893))))

(declare-fun b!7851292 () Bool)

(declare-fun tp!2324894 () Bool)

(declare-fun tp!2324896 () Bool)

(assert (=> b!7851292 (= e!4641102 (and tp!2324894 tp!2324896))))

(assert (= (and b!7850802 ((_ is ElementMatch!21085) (reg!21414 (regOne!42683 r2!6165)))) b!7851291))

(assert (= (and b!7850802 ((_ is Concat!29930) (reg!21414 (regOne!42683 r2!6165)))) b!7851292))

(assert (= (and b!7850802 ((_ is Star!21085) (reg!21414 (regOne!42683 r2!6165)))) b!7851293))

(assert (= (and b!7850802 ((_ is Union!21085) (reg!21414 (regOne!42683 r2!6165)))) b!7851294))

(declare-fun b!7851297 () Bool)

(declare-fun e!4641103 () Bool)

(declare-fun tp!2324900 () Bool)

(assert (=> b!7851297 (= e!4641103 tp!2324900)))

(declare-fun b!7851295 () Bool)

(assert (=> b!7851295 (= e!4641103 tp_is_empty!52569)))

(assert (=> b!7850810 (= tp!2324869 e!4641103)))

(declare-fun b!7851298 () Bool)

(declare-fun tp!2324902 () Bool)

(declare-fun tp!2324898 () Bool)

(assert (=> b!7851298 (= e!4641103 (and tp!2324902 tp!2324898))))

(declare-fun b!7851296 () Bool)

(declare-fun tp!2324899 () Bool)

(declare-fun tp!2324901 () Bool)

(assert (=> b!7851296 (= e!4641103 (and tp!2324899 tp!2324901))))

(assert (= (and b!7850810 ((_ is ElementMatch!21085) (reg!21414 (regOne!42682 r1!6227)))) b!7851295))

(assert (= (and b!7850810 ((_ is Concat!29930) (reg!21414 (regOne!42682 r1!6227)))) b!7851296))

(assert (= (and b!7850810 ((_ is Star!21085) (reg!21414 (regOne!42682 r1!6227)))) b!7851297))

(assert (= (and b!7850810 ((_ is Union!21085) (reg!21414 (regOne!42682 r1!6227)))) b!7851298))

(declare-fun b!7851301 () Bool)

(declare-fun e!4641104 () Bool)

(declare-fun tp!2324905 () Bool)

(assert (=> b!7851301 (= e!4641104 tp!2324905)))

(declare-fun b!7851299 () Bool)

(assert (=> b!7851299 (= e!4641104 tp_is_empty!52569)))

(assert (=> b!7850827 (= tp!2324890 e!4641104)))

(declare-fun b!7851302 () Bool)

(declare-fun tp!2324907 () Bool)

(declare-fun tp!2324903 () Bool)

(assert (=> b!7851302 (= e!4641104 (and tp!2324907 tp!2324903))))

(declare-fun b!7851300 () Bool)

(declare-fun tp!2324904 () Bool)

(declare-fun tp!2324906 () Bool)

(assert (=> b!7851300 (= e!4641104 (and tp!2324904 tp!2324906))))

(assert (= (and b!7850827 ((_ is ElementMatch!21085) (reg!21414 (reg!21414 r1!6227)))) b!7851299))

(assert (= (and b!7850827 ((_ is Concat!29930) (reg!21414 (reg!21414 r1!6227)))) b!7851300))

(assert (= (and b!7850827 ((_ is Star!21085) (reg!21414 (reg!21414 r1!6227)))) b!7851301))

(assert (= (and b!7850827 ((_ is Union!21085) (reg!21414 (reg!21414 r1!6227)))) b!7851302))

(declare-fun b!7851305 () Bool)

(declare-fun e!4641105 () Bool)

(declare-fun tp!2324910 () Bool)

(assert (=> b!7851305 (= e!4641105 tp!2324910)))

(declare-fun b!7851303 () Bool)

(assert (=> b!7851303 (= e!4641105 tp_is_empty!52569)))

(assert (=> b!7850801 (= tp!2324858 e!4641105)))

(declare-fun b!7851306 () Bool)

(declare-fun tp!2324912 () Bool)

(declare-fun tp!2324908 () Bool)

(assert (=> b!7851306 (= e!4641105 (and tp!2324912 tp!2324908))))

(declare-fun b!7851304 () Bool)

(declare-fun tp!2324909 () Bool)

(declare-fun tp!2324911 () Bool)

(assert (=> b!7851304 (= e!4641105 (and tp!2324909 tp!2324911))))

(assert (= (and b!7850801 ((_ is ElementMatch!21085) (regOne!42682 (regOne!42683 r2!6165)))) b!7851303))

(assert (= (and b!7850801 ((_ is Concat!29930) (regOne!42682 (regOne!42683 r2!6165)))) b!7851304))

(assert (= (and b!7850801 ((_ is Star!21085) (regOne!42682 (regOne!42683 r2!6165)))) b!7851305))

(assert (= (and b!7850801 ((_ is Union!21085) (regOne!42682 (regOne!42683 r2!6165)))) b!7851306))

(declare-fun b!7851309 () Bool)

(declare-fun e!4641106 () Bool)

(declare-fun tp!2324915 () Bool)

(assert (=> b!7851309 (= e!4641106 tp!2324915)))

(declare-fun b!7851307 () Bool)

(assert (=> b!7851307 (= e!4641106 tp_is_empty!52569)))

(assert (=> b!7850801 (= tp!2324860 e!4641106)))

(declare-fun b!7851310 () Bool)

(declare-fun tp!2324917 () Bool)

(declare-fun tp!2324913 () Bool)

(assert (=> b!7851310 (= e!4641106 (and tp!2324917 tp!2324913))))

(declare-fun b!7851308 () Bool)

(declare-fun tp!2324914 () Bool)

(declare-fun tp!2324916 () Bool)

(assert (=> b!7851308 (= e!4641106 (and tp!2324914 tp!2324916))))

(assert (= (and b!7850801 ((_ is ElementMatch!21085) (regTwo!42682 (regOne!42683 r2!6165)))) b!7851307))

(assert (= (and b!7850801 ((_ is Concat!29930) (regTwo!42682 (regOne!42683 r2!6165)))) b!7851308))

(assert (= (and b!7850801 ((_ is Star!21085) (regTwo!42682 (regOne!42683 r2!6165)))) b!7851309))

(assert (= (and b!7850801 ((_ is Union!21085) (regTwo!42682 (regOne!42683 r2!6165)))) b!7851310))

(declare-fun b!7851313 () Bool)

(declare-fun e!4641107 () Bool)

(declare-fun tp!2324920 () Bool)

(assert (=> b!7851313 (= e!4641107 tp!2324920)))

(declare-fun b!7851311 () Bool)

(assert (=> b!7851311 (= e!4641107 tp_is_empty!52569)))

(assert (=> b!7850826 (= tp!2324889 e!4641107)))

(declare-fun b!7851314 () Bool)

(declare-fun tp!2324922 () Bool)

(declare-fun tp!2324918 () Bool)

(assert (=> b!7851314 (= e!4641107 (and tp!2324922 tp!2324918))))

(declare-fun b!7851312 () Bool)

(declare-fun tp!2324919 () Bool)

(declare-fun tp!2324921 () Bool)

(assert (=> b!7851312 (= e!4641107 (and tp!2324919 tp!2324921))))

(assert (= (and b!7850826 ((_ is ElementMatch!21085) (regOne!42682 (reg!21414 r1!6227)))) b!7851311))

(assert (= (and b!7850826 ((_ is Concat!29930) (regOne!42682 (reg!21414 r1!6227)))) b!7851312))

(assert (= (and b!7850826 ((_ is Star!21085) (regOne!42682 (reg!21414 r1!6227)))) b!7851313))

(assert (= (and b!7850826 ((_ is Union!21085) (regOne!42682 (reg!21414 r1!6227)))) b!7851314))

(declare-fun b!7851317 () Bool)

(declare-fun e!4641108 () Bool)

(declare-fun tp!2324925 () Bool)

(assert (=> b!7851317 (= e!4641108 tp!2324925)))

(declare-fun b!7851315 () Bool)

(assert (=> b!7851315 (= e!4641108 tp_is_empty!52569)))

(assert (=> b!7850826 (= tp!2324891 e!4641108)))

(declare-fun b!7851318 () Bool)

(declare-fun tp!2324927 () Bool)

(declare-fun tp!2324923 () Bool)

(assert (=> b!7851318 (= e!4641108 (and tp!2324927 tp!2324923))))

(declare-fun b!7851316 () Bool)

(declare-fun tp!2324924 () Bool)

(declare-fun tp!2324926 () Bool)

(assert (=> b!7851316 (= e!4641108 (and tp!2324924 tp!2324926))))

(assert (= (and b!7850826 ((_ is ElementMatch!21085) (regTwo!42682 (reg!21414 r1!6227)))) b!7851315))

(assert (= (and b!7850826 ((_ is Concat!29930) (regTwo!42682 (reg!21414 r1!6227)))) b!7851316))

(assert (= (and b!7850826 ((_ is Star!21085) (regTwo!42682 (reg!21414 r1!6227)))) b!7851317))

(assert (= (and b!7850826 ((_ is Union!21085) (regTwo!42682 (reg!21414 r1!6227)))) b!7851318))

(declare-fun b!7851321 () Bool)

(declare-fun e!4641109 () Bool)

(declare-fun tp!2324930 () Bool)

(assert (=> b!7851321 (= e!4641109 tp!2324930)))

(declare-fun b!7851319 () Bool)

(assert (=> b!7851319 (= e!4641109 tp_is_empty!52569)))

(assert (=> b!7850809 (= tp!2324868 e!4641109)))

(declare-fun b!7851322 () Bool)

(declare-fun tp!2324932 () Bool)

(declare-fun tp!2324928 () Bool)

(assert (=> b!7851322 (= e!4641109 (and tp!2324932 tp!2324928))))

(declare-fun b!7851320 () Bool)

(declare-fun tp!2324929 () Bool)

(declare-fun tp!2324931 () Bool)

(assert (=> b!7851320 (= e!4641109 (and tp!2324929 tp!2324931))))

(assert (= (and b!7850809 ((_ is ElementMatch!21085) (regOne!42682 (regOne!42682 r1!6227)))) b!7851319))

(assert (= (and b!7850809 ((_ is Concat!29930) (regOne!42682 (regOne!42682 r1!6227)))) b!7851320))

(assert (= (and b!7850809 ((_ is Star!21085) (regOne!42682 (regOne!42682 r1!6227)))) b!7851321))

(assert (= (and b!7850809 ((_ is Union!21085) (regOne!42682 (regOne!42682 r1!6227)))) b!7851322))

(declare-fun b!7851325 () Bool)

(declare-fun e!4641110 () Bool)

(declare-fun tp!2324935 () Bool)

(assert (=> b!7851325 (= e!4641110 tp!2324935)))

(declare-fun b!7851323 () Bool)

(assert (=> b!7851323 (= e!4641110 tp_is_empty!52569)))

(assert (=> b!7850809 (= tp!2324870 e!4641110)))

(declare-fun b!7851326 () Bool)

(declare-fun tp!2324937 () Bool)

(declare-fun tp!2324933 () Bool)

(assert (=> b!7851326 (= e!4641110 (and tp!2324937 tp!2324933))))

(declare-fun b!7851324 () Bool)

(declare-fun tp!2324934 () Bool)

(declare-fun tp!2324936 () Bool)

(assert (=> b!7851324 (= e!4641110 (and tp!2324934 tp!2324936))))

(assert (= (and b!7850809 ((_ is ElementMatch!21085) (regTwo!42682 (regOne!42682 r1!6227)))) b!7851323))

(assert (= (and b!7850809 ((_ is Concat!29930) (regTwo!42682 (regOne!42682 r1!6227)))) b!7851324))

(assert (= (and b!7850809 ((_ is Star!21085) (regTwo!42682 (regOne!42682 r1!6227)))) b!7851325))

(assert (= (and b!7850809 ((_ is Union!21085) (regTwo!42682 (regOne!42682 r1!6227)))) b!7851326))

(declare-fun b!7851327 () Bool)

(declare-fun e!4641113 () Bool)

(declare-fun tp!2324938 () Bool)

(assert (=> b!7851327 (= e!4641113 (and tp_is_empty!52569 tp!2324938))))

(assert (=> b!7850777 (= tp!2324831 e!4641113)))

(assert (= (and b!7850777 ((_ is Cons!73820) (t!388679 (t!388679 s1!4084)))) b!7851327))

(declare-fun b!7851332 () Bool)

(declare-fun e!4641114 () Bool)

(declare-fun tp!2324941 () Bool)

(assert (=> b!7851332 (= e!4641114 tp!2324941)))

(declare-fun b!7851330 () Bool)

(assert (=> b!7851330 (= e!4641114 tp_is_empty!52569)))

(assert (=> b!7850820 (= tp!2324882 e!4641114)))

(declare-fun b!7851333 () Bool)

(declare-fun tp!2324943 () Bool)

(declare-fun tp!2324939 () Bool)

(assert (=> b!7851333 (= e!4641114 (and tp!2324943 tp!2324939))))

(declare-fun b!7851331 () Bool)

(declare-fun tp!2324940 () Bool)

(declare-fun tp!2324942 () Bool)

(assert (=> b!7851331 (= e!4641114 (and tp!2324940 tp!2324942))))

(assert (= (and b!7850820 ((_ is ElementMatch!21085) (regOne!42683 (regOne!42682 r2!6165)))) b!7851330))

(assert (= (and b!7850820 ((_ is Concat!29930) (regOne!42683 (regOne!42682 r2!6165)))) b!7851331))

(assert (= (and b!7850820 ((_ is Star!21085) (regOne!42683 (regOne!42682 r2!6165)))) b!7851332))

(assert (= (and b!7850820 ((_ is Union!21085) (regOne!42683 (regOne!42682 r2!6165)))) b!7851333))

(declare-fun b!7851338 () Bool)

(declare-fun e!4641117 () Bool)

(declare-fun tp!2324946 () Bool)

(assert (=> b!7851338 (= e!4641117 tp!2324946)))

(declare-fun b!7851336 () Bool)

(assert (=> b!7851336 (= e!4641117 tp_is_empty!52569)))

(assert (=> b!7850820 (= tp!2324878 e!4641117)))

(declare-fun b!7851339 () Bool)

(declare-fun tp!2324948 () Bool)

(declare-fun tp!2324944 () Bool)

(assert (=> b!7851339 (= e!4641117 (and tp!2324948 tp!2324944))))

(declare-fun b!7851337 () Bool)

(declare-fun tp!2324945 () Bool)

(declare-fun tp!2324947 () Bool)

(assert (=> b!7851337 (= e!4641117 (and tp!2324945 tp!2324947))))

(assert (= (and b!7850820 ((_ is ElementMatch!21085) (regTwo!42683 (regOne!42682 r2!6165)))) b!7851336))

(assert (= (and b!7850820 ((_ is Concat!29930) (regTwo!42683 (regOne!42682 r2!6165)))) b!7851337))

(assert (= (and b!7850820 ((_ is Star!21085) (regTwo!42683 (regOne!42682 r2!6165)))) b!7851338))

(assert (= (and b!7850820 ((_ is Union!21085) (regTwo!42683 (regOne!42682 r2!6165)))) b!7851339))

(declare-fun b!7851346 () Bool)

(declare-fun e!4641120 () Bool)

(declare-fun tp!2324951 () Bool)

(assert (=> b!7851346 (= e!4641120 tp!2324951)))

(declare-fun b!7851344 () Bool)

(assert (=> b!7851344 (= e!4641120 tp_is_empty!52569)))

(assert (=> b!7850795 (= tp!2324851 e!4641120)))

(declare-fun b!7851347 () Bool)

(declare-fun tp!2324953 () Bool)

(declare-fun tp!2324949 () Bool)

(assert (=> b!7851347 (= e!4641120 (and tp!2324953 tp!2324949))))

(declare-fun b!7851345 () Bool)

(declare-fun tp!2324950 () Bool)

(declare-fun tp!2324952 () Bool)

(assert (=> b!7851345 (= e!4641120 (and tp!2324950 tp!2324952))))

(assert (= (and b!7850795 ((_ is ElementMatch!21085) (regOne!42683 (regOne!42683 r1!6227)))) b!7851344))

(assert (= (and b!7850795 ((_ is Concat!29930) (regOne!42683 (regOne!42683 r1!6227)))) b!7851345))

(assert (= (and b!7850795 ((_ is Star!21085) (regOne!42683 (regOne!42683 r1!6227)))) b!7851346))

(assert (= (and b!7850795 ((_ is Union!21085) (regOne!42683 (regOne!42683 r1!6227)))) b!7851347))

(declare-fun b!7851354 () Bool)

(declare-fun e!4641125 () Bool)

(declare-fun tp!2324956 () Bool)

(assert (=> b!7851354 (= e!4641125 tp!2324956)))

(declare-fun b!7851352 () Bool)

(assert (=> b!7851352 (= e!4641125 tp_is_empty!52569)))

(assert (=> b!7850795 (= tp!2324847 e!4641125)))

(declare-fun b!7851355 () Bool)

(declare-fun tp!2324958 () Bool)

(declare-fun tp!2324954 () Bool)

(assert (=> b!7851355 (= e!4641125 (and tp!2324958 tp!2324954))))

(declare-fun b!7851353 () Bool)

(declare-fun tp!2324955 () Bool)

(declare-fun tp!2324957 () Bool)

(assert (=> b!7851353 (= e!4641125 (and tp!2324955 tp!2324957))))

(assert (= (and b!7850795 ((_ is ElementMatch!21085) (regTwo!42683 (regOne!42683 r1!6227)))) b!7851352))

(assert (= (and b!7850795 ((_ is Concat!29930) (regTwo!42683 (regOne!42683 r1!6227)))) b!7851353))

(assert (= (and b!7850795 ((_ is Star!21085) (regTwo!42683 (regOne!42683 r1!6227)))) b!7851354))

(assert (= (and b!7850795 ((_ is Union!21085) (regTwo!42683 (regOne!42683 r1!6227)))) b!7851355))

(declare-fun b!7851360 () Bool)

(declare-fun e!4641128 () Bool)

(declare-fun tp!2324961 () Bool)

(assert (=> b!7851360 (= e!4641128 tp!2324961)))

(declare-fun b!7851358 () Bool)

(assert (=> b!7851358 (= e!4641128 tp_is_empty!52569)))

(assert (=> b!7850819 (= tp!2324880 e!4641128)))

(declare-fun b!7851361 () Bool)

(declare-fun tp!2324963 () Bool)

(declare-fun tp!2324959 () Bool)

(assert (=> b!7851361 (= e!4641128 (and tp!2324963 tp!2324959))))

(declare-fun b!7851359 () Bool)

(declare-fun tp!2324960 () Bool)

(declare-fun tp!2324962 () Bool)

(assert (=> b!7851359 (= e!4641128 (and tp!2324960 tp!2324962))))

(assert (= (and b!7850819 ((_ is ElementMatch!21085) (reg!21414 (regOne!42682 r2!6165)))) b!7851358))

(assert (= (and b!7850819 ((_ is Concat!29930) (reg!21414 (regOne!42682 r2!6165)))) b!7851359))

(assert (= (and b!7850819 ((_ is Star!21085) (reg!21414 (regOne!42682 r2!6165)))) b!7851360))

(assert (= (and b!7850819 ((_ is Union!21085) (reg!21414 (regOne!42682 r2!6165)))) b!7851361))

(declare-fun b!7851364 () Bool)

(declare-fun e!4641129 () Bool)

(declare-fun tp!2324966 () Bool)

(assert (=> b!7851364 (= e!4641129 tp!2324966)))

(declare-fun b!7851362 () Bool)

(assert (=> b!7851362 (= e!4641129 tp_is_empty!52569)))

(assert (=> b!7850794 (= tp!2324849 e!4641129)))

(declare-fun b!7851365 () Bool)

(declare-fun tp!2324968 () Bool)

(declare-fun tp!2324964 () Bool)

(assert (=> b!7851365 (= e!4641129 (and tp!2324968 tp!2324964))))

(declare-fun b!7851363 () Bool)

(declare-fun tp!2324965 () Bool)

(declare-fun tp!2324967 () Bool)

(assert (=> b!7851363 (= e!4641129 (and tp!2324965 tp!2324967))))

(assert (= (and b!7850794 ((_ is ElementMatch!21085) (reg!21414 (regOne!42683 r1!6227)))) b!7851362))

(assert (= (and b!7850794 ((_ is Concat!29930) (reg!21414 (regOne!42683 r1!6227)))) b!7851363))

(assert (= (and b!7850794 ((_ is Star!21085) (reg!21414 (regOne!42683 r1!6227)))) b!7851364))

(assert (= (and b!7850794 ((_ is Union!21085) (reg!21414 (regOne!42683 r1!6227)))) b!7851365))

(declare-fun b!7851368 () Bool)

(declare-fun e!4641130 () Bool)

(declare-fun tp!2324971 () Bool)

(assert (=> b!7851368 (= e!4641130 tp!2324971)))

(declare-fun b!7851366 () Bool)

(assert (=> b!7851366 (= e!4641130 tp_is_empty!52569)))

(assert (=> b!7850828 (= tp!2324892 e!4641130)))

(declare-fun b!7851369 () Bool)

(declare-fun tp!2324973 () Bool)

(declare-fun tp!2324969 () Bool)

(assert (=> b!7851369 (= e!4641130 (and tp!2324973 tp!2324969))))

(declare-fun b!7851367 () Bool)

(declare-fun tp!2324970 () Bool)

(declare-fun tp!2324972 () Bool)

(assert (=> b!7851367 (= e!4641130 (and tp!2324970 tp!2324972))))

(assert (= (and b!7850828 ((_ is ElementMatch!21085) (regOne!42683 (reg!21414 r1!6227)))) b!7851366))

(assert (= (and b!7850828 ((_ is Concat!29930) (regOne!42683 (reg!21414 r1!6227)))) b!7851367))

(assert (= (and b!7850828 ((_ is Star!21085) (regOne!42683 (reg!21414 r1!6227)))) b!7851368))

(assert (= (and b!7850828 ((_ is Union!21085) (regOne!42683 (reg!21414 r1!6227)))) b!7851369))

(declare-fun b!7851372 () Bool)

(declare-fun e!4641131 () Bool)

(declare-fun tp!2324976 () Bool)

(assert (=> b!7851372 (= e!4641131 tp!2324976)))

(declare-fun b!7851370 () Bool)

(assert (=> b!7851370 (= e!4641131 tp_is_empty!52569)))

(assert (=> b!7850828 (= tp!2324888 e!4641131)))

(declare-fun b!7851373 () Bool)

(declare-fun tp!2324978 () Bool)

(declare-fun tp!2324974 () Bool)

(assert (=> b!7851373 (= e!4641131 (and tp!2324978 tp!2324974))))

(declare-fun b!7851371 () Bool)

(declare-fun tp!2324975 () Bool)

(declare-fun tp!2324977 () Bool)

(assert (=> b!7851371 (= e!4641131 (and tp!2324975 tp!2324977))))

(assert (= (and b!7850828 ((_ is ElementMatch!21085) (regTwo!42683 (reg!21414 r1!6227)))) b!7851370))

(assert (= (and b!7850828 ((_ is Concat!29930) (regTwo!42683 (reg!21414 r1!6227)))) b!7851371))

(assert (= (and b!7850828 ((_ is Star!21085) (regTwo!42683 (reg!21414 r1!6227)))) b!7851372))

(assert (= (and b!7850828 ((_ is Union!21085) (regTwo!42683 (reg!21414 r1!6227)))) b!7851373))

(declare-fun b!7851376 () Bool)

(declare-fun e!4641132 () Bool)

(declare-fun tp!2324981 () Bool)

(assert (=> b!7851376 (= e!4641132 tp!2324981)))

(declare-fun b!7851374 () Bool)

(assert (=> b!7851374 (= e!4641132 tp_is_empty!52569)))

(assert (=> b!7850803 (= tp!2324861 e!4641132)))

(declare-fun b!7851377 () Bool)

(declare-fun tp!2324983 () Bool)

(declare-fun tp!2324979 () Bool)

(assert (=> b!7851377 (= e!4641132 (and tp!2324983 tp!2324979))))

(declare-fun b!7851375 () Bool)

(declare-fun tp!2324980 () Bool)

(declare-fun tp!2324982 () Bool)

(assert (=> b!7851375 (= e!4641132 (and tp!2324980 tp!2324982))))

(assert (= (and b!7850803 ((_ is ElementMatch!21085) (regOne!42683 (regOne!42683 r2!6165)))) b!7851374))

(assert (= (and b!7850803 ((_ is Concat!29930) (regOne!42683 (regOne!42683 r2!6165)))) b!7851375))

(assert (= (and b!7850803 ((_ is Star!21085) (regOne!42683 (regOne!42683 r2!6165)))) b!7851376))

(assert (= (and b!7850803 ((_ is Union!21085) (regOne!42683 (regOne!42683 r2!6165)))) b!7851377))

(declare-fun b!7851380 () Bool)

(declare-fun e!4641133 () Bool)

(declare-fun tp!2324986 () Bool)

(assert (=> b!7851380 (= e!4641133 tp!2324986)))

(declare-fun b!7851378 () Bool)

(assert (=> b!7851378 (= e!4641133 tp_is_empty!52569)))

(assert (=> b!7850803 (= tp!2324857 e!4641133)))

(declare-fun b!7851381 () Bool)

(declare-fun tp!2324988 () Bool)

(declare-fun tp!2324984 () Bool)

(assert (=> b!7851381 (= e!4641133 (and tp!2324988 tp!2324984))))

(declare-fun b!7851379 () Bool)

(declare-fun tp!2324985 () Bool)

(declare-fun tp!2324987 () Bool)

(assert (=> b!7851379 (= e!4641133 (and tp!2324985 tp!2324987))))

(assert (= (and b!7850803 ((_ is ElementMatch!21085) (regTwo!42683 (regOne!42683 r2!6165)))) b!7851378))

(assert (= (and b!7850803 ((_ is Concat!29930) (regTwo!42683 (regOne!42683 r2!6165)))) b!7851379))

(assert (= (and b!7850803 ((_ is Star!21085) (regTwo!42683 (regOne!42683 r2!6165)))) b!7851380))

(assert (= (and b!7850803 ((_ is Union!21085) (regTwo!42683 (regOne!42683 r2!6165)))) b!7851381))

(declare-fun b!7851384 () Bool)

(declare-fun e!4641134 () Bool)

(declare-fun tp!2324991 () Bool)

(assert (=> b!7851384 (= e!4641134 tp!2324991)))

(declare-fun b!7851382 () Bool)

(assert (=> b!7851382 (= e!4641134 tp_is_empty!52569)))

(assert (=> b!7850811 (= tp!2324871 e!4641134)))

(declare-fun b!7851385 () Bool)

(declare-fun tp!2324993 () Bool)

(declare-fun tp!2324989 () Bool)

(assert (=> b!7851385 (= e!4641134 (and tp!2324993 tp!2324989))))

(declare-fun b!7851383 () Bool)

(declare-fun tp!2324990 () Bool)

(declare-fun tp!2324992 () Bool)

(assert (=> b!7851383 (= e!4641134 (and tp!2324990 tp!2324992))))

(assert (= (and b!7850811 ((_ is ElementMatch!21085) (regOne!42683 (regOne!42682 r1!6227)))) b!7851382))

(assert (= (and b!7850811 ((_ is Concat!29930) (regOne!42683 (regOne!42682 r1!6227)))) b!7851383))

(assert (= (and b!7850811 ((_ is Star!21085) (regOne!42683 (regOne!42682 r1!6227)))) b!7851384))

(assert (= (and b!7850811 ((_ is Union!21085) (regOne!42683 (regOne!42682 r1!6227)))) b!7851385))

(declare-fun b!7851388 () Bool)

(declare-fun e!4641135 () Bool)

(declare-fun tp!2324996 () Bool)

(assert (=> b!7851388 (= e!4641135 tp!2324996)))

(declare-fun b!7851386 () Bool)

(assert (=> b!7851386 (= e!4641135 tp_is_empty!52569)))

(assert (=> b!7850811 (= tp!2324867 e!4641135)))

(declare-fun b!7851389 () Bool)

(declare-fun tp!2324998 () Bool)

(declare-fun tp!2324994 () Bool)

(assert (=> b!7851389 (= e!4641135 (and tp!2324998 tp!2324994))))

(declare-fun b!7851387 () Bool)

(declare-fun tp!2324995 () Bool)

(declare-fun tp!2324997 () Bool)

(assert (=> b!7851387 (= e!4641135 (and tp!2324995 tp!2324997))))

(assert (= (and b!7850811 ((_ is ElementMatch!21085) (regTwo!42683 (regOne!42682 r1!6227)))) b!7851386))

(assert (= (and b!7850811 ((_ is Concat!29930) (regTwo!42683 (regOne!42682 r1!6227)))) b!7851387))

(assert (= (and b!7850811 ((_ is Star!21085) (regTwo!42683 (regOne!42682 r1!6227)))) b!7851388))

(assert (= (and b!7850811 ((_ is Union!21085) (regTwo!42683 (regOne!42682 r1!6227)))) b!7851389))

(declare-fun b!7851392 () Bool)

(declare-fun e!4641136 () Bool)

(declare-fun tp!2325001 () Bool)

(assert (=> b!7851392 (= e!4641136 tp!2325001)))

(declare-fun b!7851390 () Bool)

(assert (=> b!7851390 (= e!4641136 tp_is_empty!52569)))

(assert (=> b!7850818 (= tp!2324879 e!4641136)))

(declare-fun b!7851393 () Bool)

(declare-fun tp!2325003 () Bool)

(declare-fun tp!2324999 () Bool)

(assert (=> b!7851393 (= e!4641136 (and tp!2325003 tp!2324999))))

(declare-fun b!7851391 () Bool)

(declare-fun tp!2325000 () Bool)

(declare-fun tp!2325002 () Bool)

(assert (=> b!7851391 (= e!4641136 (and tp!2325000 tp!2325002))))

(assert (= (and b!7850818 ((_ is ElementMatch!21085) (regOne!42682 (regOne!42682 r2!6165)))) b!7851390))

(assert (= (and b!7850818 ((_ is Concat!29930) (regOne!42682 (regOne!42682 r2!6165)))) b!7851391))

(assert (= (and b!7850818 ((_ is Star!21085) (regOne!42682 (regOne!42682 r2!6165)))) b!7851392))

(assert (= (and b!7850818 ((_ is Union!21085) (regOne!42682 (regOne!42682 r2!6165)))) b!7851393))

(declare-fun b!7851396 () Bool)

(declare-fun e!4641137 () Bool)

(declare-fun tp!2325006 () Bool)

(assert (=> b!7851396 (= e!4641137 tp!2325006)))

(declare-fun b!7851394 () Bool)

(assert (=> b!7851394 (= e!4641137 tp_is_empty!52569)))

(assert (=> b!7850818 (= tp!2324881 e!4641137)))

(declare-fun b!7851397 () Bool)

(declare-fun tp!2325008 () Bool)

(declare-fun tp!2325004 () Bool)

(assert (=> b!7851397 (= e!4641137 (and tp!2325008 tp!2325004))))

(declare-fun b!7851395 () Bool)

(declare-fun tp!2325005 () Bool)

(declare-fun tp!2325007 () Bool)

(assert (=> b!7851395 (= e!4641137 (and tp!2325005 tp!2325007))))

(assert (= (and b!7850818 ((_ is ElementMatch!21085) (regTwo!42682 (regOne!42682 r2!6165)))) b!7851394))

(assert (= (and b!7850818 ((_ is Concat!29930) (regTwo!42682 (regOne!42682 r2!6165)))) b!7851395))

(assert (= (and b!7850818 ((_ is Star!21085) (regTwo!42682 (regOne!42682 r2!6165)))) b!7851396))

(assert (= (and b!7850818 ((_ is Union!21085) (regTwo!42682 (regOne!42682 r2!6165)))) b!7851397))

(declare-fun b!7851400 () Bool)

(declare-fun e!4641138 () Bool)

(declare-fun tp!2325011 () Bool)

(assert (=> b!7851400 (= e!4641138 tp!2325011)))

(declare-fun b!7851398 () Bool)

(assert (=> b!7851398 (= e!4641138 tp_is_empty!52569)))

(assert (=> b!7850793 (= tp!2324848 e!4641138)))

(declare-fun b!7851401 () Bool)

(declare-fun tp!2325013 () Bool)

(declare-fun tp!2325009 () Bool)

(assert (=> b!7851401 (= e!4641138 (and tp!2325013 tp!2325009))))

(declare-fun b!7851399 () Bool)

(declare-fun tp!2325010 () Bool)

(declare-fun tp!2325012 () Bool)

(assert (=> b!7851399 (= e!4641138 (and tp!2325010 tp!2325012))))

(assert (= (and b!7850793 ((_ is ElementMatch!21085) (regOne!42682 (regOne!42683 r1!6227)))) b!7851398))

(assert (= (and b!7850793 ((_ is Concat!29930) (regOne!42682 (regOne!42683 r1!6227)))) b!7851399))

(assert (= (and b!7850793 ((_ is Star!21085) (regOne!42682 (regOne!42683 r1!6227)))) b!7851400))

(assert (= (and b!7850793 ((_ is Union!21085) (regOne!42682 (regOne!42683 r1!6227)))) b!7851401))

(declare-fun b!7851404 () Bool)

(declare-fun e!4641139 () Bool)

(declare-fun tp!2325016 () Bool)

(assert (=> b!7851404 (= e!4641139 tp!2325016)))

(declare-fun b!7851402 () Bool)

(assert (=> b!7851402 (= e!4641139 tp_is_empty!52569)))

(assert (=> b!7850793 (= tp!2324850 e!4641139)))

(declare-fun b!7851405 () Bool)

(declare-fun tp!2325018 () Bool)

(declare-fun tp!2325014 () Bool)

(assert (=> b!7851405 (= e!4641139 (and tp!2325018 tp!2325014))))

(declare-fun b!7851403 () Bool)

(declare-fun tp!2325015 () Bool)

(declare-fun tp!2325017 () Bool)

(assert (=> b!7851403 (= e!4641139 (and tp!2325015 tp!2325017))))

(assert (= (and b!7850793 ((_ is ElementMatch!21085) (regTwo!42682 (regOne!42683 r1!6227)))) b!7851402))

(assert (= (and b!7850793 ((_ is Concat!29930) (regTwo!42682 (regOne!42683 r1!6227)))) b!7851403))

(assert (= (and b!7850793 ((_ is Star!21085) (regTwo!42682 (regOne!42683 r1!6227)))) b!7851404))

(assert (= (and b!7850793 ((_ is Union!21085) (regTwo!42682 (regOne!42683 r1!6227)))) b!7851405))

(declare-fun b!7851408 () Bool)

(declare-fun e!4641140 () Bool)

(declare-fun tp!2325021 () Bool)

(assert (=> b!7851408 (= e!4641140 tp!2325021)))

(declare-fun b!7851406 () Bool)

(assert (=> b!7851406 (= e!4641140 tp_is_empty!52569)))

(assert (=> b!7850815 (= tp!2324876 e!4641140)))

(declare-fun b!7851409 () Bool)

(declare-fun tp!2325023 () Bool)

(declare-fun tp!2325019 () Bool)

(assert (=> b!7851409 (= e!4641140 (and tp!2325023 tp!2325019))))

(declare-fun b!7851407 () Bool)

(declare-fun tp!2325020 () Bool)

(declare-fun tp!2325022 () Bool)

(assert (=> b!7851407 (= e!4641140 (and tp!2325020 tp!2325022))))

(assert (= (and b!7850815 ((_ is ElementMatch!21085) (regOne!42683 (regTwo!42682 r1!6227)))) b!7851406))

(assert (= (and b!7850815 ((_ is Concat!29930) (regOne!42683 (regTwo!42682 r1!6227)))) b!7851407))

(assert (= (and b!7850815 ((_ is Star!21085) (regOne!42683 (regTwo!42682 r1!6227)))) b!7851408))

(assert (= (and b!7850815 ((_ is Union!21085) (regOne!42683 (regTwo!42682 r1!6227)))) b!7851409))

(declare-fun b!7851412 () Bool)

(declare-fun e!4641141 () Bool)

(declare-fun tp!2325026 () Bool)

(assert (=> b!7851412 (= e!4641141 tp!2325026)))

(declare-fun b!7851410 () Bool)

(assert (=> b!7851410 (= e!4641141 tp_is_empty!52569)))

(assert (=> b!7850815 (= tp!2324872 e!4641141)))

(declare-fun b!7851413 () Bool)

(declare-fun tp!2325028 () Bool)

(declare-fun tp!2325024 () Bool)

(assert (=> b!7851413 (= e!4641141 (and tp!2325028 tp!2325024))))

(declare-fun b!7851411 () Bool)

(declare-fun tp!2325025 () Bool)

(declare-fun tp!2325027 () Bool)

(assert (=> b!7851411 (= e!4641141 (and tp!2325025 tp!2325027))))

(assert (= (and b!7850815 ((_ is ElementMatch!21085) (regTwo!42683 (regTwo!42682 r1!6227)))) b!7851410))

(assert (= (and b!7850815 ((_ is Concat!29930) (regTwo!42683 (regTwo!42682 r1!6227)))) b!7851411))

(assert (= (and b!7850815 ((_ is Star!21085) (regTwo!42683 (regTwo!42682 r1!6227)))) b!7851412))

(assert (= (and b!7850815 ((_ is Union!21085) (regTwo!42683 (regTwo!42682 r1!6227)))) b!7851413))

(declare-fun b!7851416 () Bool)

(declare-fun e!4641142 () Bool)

(declare-fun tp!2325031 () Bool)

(assert (=> b!7851416 (= e!4641142 tp!2325031)))

(declare-fun b!7851414 () Bool)

(assert (=> b!7851414 (= e!4641142 tp_is_empty!52569)))

(assert (=> b!7850789 (= tp!2324843 e!4641142)))

(declare-fun b!7851417 () Bool)

(declare-fun tp!2325033 () Bool)

(declare-fun tp!2325029 () Bool)

(assert (=> b!7851417 (= e!4641142 (and tp!2325033 tp!2325029))))

(declare-fun b!7851415 () Bool)

(declare-fun tp!2325030 () Bool)

(declare-fun tp!2325032 () Bool)

(assert (=> b!7851415 (= e!4641142 (and tp!2325030 tp!2325032))))

(assert (= (and b!7850789 ((_ is ElementMatch!21085) (regOne!42682 (reg!21414 r2!6165)))) b!7851414))

(assert (= (and b!7850789 ((_ is Concat!29930) (regOne!42682 (reg!21414 r2!6165)))) b!7851415))

(assert (= (and b!7850789 ((_ is Star!21085) (regOne!42682 (reg!21414 r2!6165)))) b!7851416))

(assert (= (and b!7850789 ((_ is Union!21085) (regOne!42682 (reg!21414 r2!6165)))) b!7851417))

(declare-fun b!7851420 () Bool)

(declare-fun e!4641143 () Bool)

(declare-fun tp!2325036 () Bool)

(assert (=> b!7851420 (= e!4641143 tp!2325036)))

(declare-fun b!7851418 () Bool)

(assert (=> b!7851418 (= e!4641143 tp_is_empty!52569)))

(assert (=> b!7850789 (= tp!2324845 e!4641143)))

(declare-fun b!7851421 () Bool)

(declare-fun tp!2325038 () Bool)

(declare-fun tp!2325034 () Bool)

(assert (=> b!7851421 (= e!4641143 (and tp!2325038 tp!2325034))))

(declare-fun b!7851419 () Bool)

(declare-fun tp!2325035 () Bool)

(declare-fun tp!2325037 () Bool)

(assert (=> b!7851419 (= e!4641143 (and tp!2325035 tp!2325037))))

(assert (= (and b!7850789 ((_ is ElementMatch!21085) (regTwo!42682 (reg!21414 r2!6165)))) b!7851418))

(assert (= (and b!7850789 ((_ is Concat!29930) (regTwo!42682 (reg!21414 r2!6165)))) b!7851419))

(assert (= (and b!7850789 ((_ is Star!21085) (regTwo!42682 (reg!21414 r2!6165)))) b!7851420))

(assert (= (and b!7850789 ((_ is Union!21085) (regTwo!42682 (reg!21414 r2!6165)))) b!7851421))

(declare-fun b!7851424 () Bool)

(declare-fun e!4641144 () Bool)

(declare-fun tp!2325041 () Bool)

(assert (=> b!7851424 (= e!4641144 tp!2325041)))

(declare-fun b!7851422 () Bool)

(assert (=> b!7851422 (= e!4641144 tp_is_empty!52569)))

(assert (=> b!7850822 (= tp!2324884 e!4641144)))

(declare-fun b!7851425 () Bool)

(declare-fun tp!2325043 () Bool)

(declare-fun tp!2325039 () Bool)

(assert (=> b!7851425 (= e!4641144 (and tp!2325043 tp!2325039))))

(declare-fun b!7851423 () Bool)

(declare-fun tp!2325040 () Bool)

(declare-fun tp!2325042 () Bool)

(assert (=> b!7851423 (= e!4641144 (and tp!2325040 tp!2325042))))

(assert (= (and b!7850822 ((_ is ElementMatch!21085) (regOne!42682 (regTwo!42682 r2!6165)))) b!7851422))

(assert (= (and b!7850822 ((_ is Concat!29930) (regOne!42682 (regTwo!42682 r2!6165)))) b!7851423))

(assert (= (and b!7850822 ((_ is Star!21085) (regOne!42682 (regTwo!42682 r2!6165)))) b!7851424))

(assert (= (and b!7850822 ((_ is Union!21085) (regOne!42682 (regTwo!42682 r2!6165)))) b!7851425))

(declare-fun b!7851428 () Bool)

(declare-fun e!4641145 () Bool)

(declare-fun tp!2325046 () Bool)

(assert (=> b!7851428 (= e!4641145 tp!2325046)))

(declare-fun b!7851426 () Bool)

(assert (=> b!7851426 (= e!4641145 tp_is_empty!52569)))

(assert (=> b!7850822 (= tp!2324886 e!4641145)))

(declare-fun b!7851429 () Bool)

(declare-fun tp!2325048 () Bool)

(declare-fun tp!2325044 () Bool)

(assert (=> b!7851429 (= e!4641145 (and tp!2325048 tp!2325044))))

(declare-fun b!7851427 () Bool)

(declare-fun tp!2325045 () Bool)

(declare-fun tp!2325047 () Bool)

(assert (=> b!7851427 (= e!4641145 (and tp!2325045 tp!2325047))))

(assert (= (and b!7850822 ((_ is ElementMatch!21085) (regTwo!42682 (regTwo!42682 r2!6165)))) b!7851426))

(assert (= (and b!7850822 ((_ is Concat!29930) (regTwo!42682 (regTwo!42682 r2!6165)))) b!7851427))

(assert (= (and b!7850822 ((_ is Star!21085) (regTwo!42682 (regTwo!42682 r2!6165)))) b!7851428))

(assert (= (and b!7850822 ((_ is Union!21085) (regTwo!42682 (regTwo!42682 r2!6165)))) b!7851429))

(declare-fun b!7851432 () Bool)

(declare-fun e!4641146 () Bool)

(declare-fun tp!2325051 () Bool)

(assert (=> b!7851432 (= e!4641146 tp!2325051)))

(declare-fun b!7851430 () Bool)

(assert (=> b!7851430 (= e!4641146 tp_is_empty!52569)))

(assert (=> b!7850797 (= tp!2324853 e!4641146)))

(declare-fun b!7851433 () Bool)

(declare-fun tp!2325053 () Bool)

(declare-fun tp!2325049 () Bool)

(assert (=> b!7851433 (= e!4641146 (and tp!2325053 tp!2325049))))

(declare-fun b!7851431 () Bool)

(declare-fun tp!2325050 () Bool)

(declare-fun tp!2325052 () Bool)

(assert (=> b!7851431 (= e!4641146 (and tp!2325050 tp!2325052))))

(assert (= (and b!7850797 ((_ is ElementMatch!21085) (regOne!42682 (regTwo!42683 r1!6227)))) b!7851430))

(assert (= (and b!7850797 ((_ is Concat!29930) (regOne!42682 (regTwo!42683 r1!6227)))) b!7851431))

(assert (= (and b!7850797 ((_ is Star!21085) (regOne!42682 (regTwo!42683 r1!6227)))) b!7851432))

(assert (= (and b!7850797 ((_ is Union!21085) (regOne!42682 (regTwo!42683 r1!6227)))) b!7851433))

(declare-fun b!7851436 () Bool)

(declare-fun e!4641147 () Bool)

(declare-fun tp!2325056 () Bool)

(assert (=> b!7851436 (= e!4641147 tp!2325056)))

(declare-fun b!7851434 () Bool)

(assert (=> b!7851434 (= e!4641147 tp_is_empty!52569)))

(assert (=> b!7850797 (= tp!2324855 e!4641147)))

(declare-fun b!7851437 () Bool)

(declare-fun tp!2325058 () Bool)

(declare-fun tp!2325054 () Bool)

(assert (=> b!7851437 (= e!4641147 (and tp!2325058 tp!2325054))))

(declare-fun b!7851435 () Bool)

(declare-fun tp!2325055 () Bool)

(declare-fun tp!2325057 () Bool)

(assert (=> b!7851435 (= e!4641147 (and tp!2325055 tp!2325057))))

(assert (= (and b!7850797 ((_ is ElementMatch!21085) (regTwo!42682 (regTwo!42683 r1!6227)))) b!7851434))

(assert (= (and b!7850797 ((_ is Concat!29930) (regTwo!42682 (regTwo!42683 r1!6227)))) b!7851435))

(assert (= (and b!7850797 ((_ is Star!21085) (regTwo!42682 (regTwo!42683 r1!6227)))) b!7851436))

(assert (= (and b!7850797 ((_ is Union!21085) (regTwo!42682 (regTwo!42683 r1!6227)))) b!7851437))

(declare-fun b!7851440 () Bool)

(declare-fun e!4641148 () Bool)

(declare-fun tp!2325061 () Bool)

(assert (=> b!7851440 (= e!4641148 tp!2325061)))

(declare-fun b!7851438 () Bool)

(assert (=> b!7851438 (= e!4641148 tp_is_empty!52569)))

(assert (=> b!7850805 (= tp!2324863 e!4641148)))

(declare-fun b!7851441 () Bool)

(declare-fun tp!2325063 () Bool)

(declare-fun tp!2325059 () Bool)

(assert (=> b!7851441 (= e!4641148 (and tp!2325063 tp!2325059))))

(declare-fun b!7851439 () Bool)

(declare-fun tp!2325060 () Bool)

(declare-fun tp!2325062 () Bool)

(assert (=> b!7851439 (= e!4641148 (and tp!2325060 tp!2325062))))

(assert (= (and b!7850805 ((_ is ElementMatch!21085) (regOne!42682 (regTwo!42683 r2!6165)))) b!7851438))

(assert (= (and b!7850805 ((_ is Concat!29930) (regOne!42682 (regTwo!42683 r2!6165)))) b!7851439))

(assert (= (and b!7850805 ((_ is Star!21085) (regOne!42682 (regTwo!42683 r2!6165)))) b!7851440))

(assert (= (and b!7850805 ((_ is Union!21085) (regOne!42682 (regTwo!42683 r2!6165)))) b!7851441))

(declare-fun b!7851444 () Bool)

(declare-fun e!4641149 () Bool)

(declare-fun tp!2325066 () Bool)

(assert (=> b!7851444 (= e!4641149 tp!2325066)))

(declare-fun b!7851442 () Bool)

(assert (=> b!7851442 (= e!4641149 tp_is_empty!52569)))

(assert (=> b!7850805 (= tp!2324865 e!4641149)))

(declare-fun b!7851445 () Bool)

(declare-fun tp!2325068 () Bool)

(declare-fun tp!2325064 () Bool)

(assert (=> b!7851445 (= e!4641149 (and tp!2325068 tp!2325064))))

(declare-fun b!7851443 () Bool)

(declare-fun tp!2325065 () Bool)

(declare-fun tp!2325067 () Bool)

(assert (=> b!7851443 (= e!4641149 (and tp!2325065 tp!2325067))))

(assert (= (and b!7850805 ((_ is ElementMatch!21085) (regTwo!42682 (regTwo!42683 r2!6165)))) b!7851442))

(assert (= (and b!7850805 ((_ is Concat!29930) (regTwo!42682 (regTwo!42683 r2!6165)))) b!7851443))

(assert (= (and b!7850805 ((_ is Star!21085) (regTwo!42682 (regTwo!42683 r2!6165)))) b!7851444))

(assert (= (and b!7850805 ((_ is Union!21085) (regTwo!42682 (regTwo!42683 r2!6165)))) b!7851445))

(declare-fun b!7851448 () Bool)

(declare-fun e!4641150 () Bool)

(declare-fun tp!2325071 () Bool)

(assert (=> b!7851448 (= e!4641150 tp!2325071)))

(declare-fun b!7851446 () Bool)

(assert (=> b!7851446 (= e!4641150 tp_is_empty!52569)))

(assert (=> b!7850814 (= tp!2324874 e!4641150)))

(declare-fun b!7851449 () Bool)

(declare-fun tp!2325073 () Bool)

(declare-fun tp!2325069 () Bool)

(assert (=> b!7851449 (= e!4641150 (and tp!2325073 tp!2325069))))

(declare-fun b!7851447 () Bool)

(declare-fun tp!2325070 () Bool)

(declare-fun tp!2325072 () Bool)

(assert (=> b!7851447 (= e!4641150 (and tp!2325070 tp!2325072))))

(assert (= (and b!7850814 ((_ is ElementMatch!21085) (reg!21414 (regTwo!42682 r1!6227)))) b!7851446))

(assert (= (and b!7850814 ((_ is Concat!29930) (reg!21414 (regTwo!42682 r1!6227)))) b!7851447))

(assert (= (and b!7850814 ((_ is Star!21085) (reg!21414 (regTwo!42682 r1!6227)))) b!7851448))

(assert (= (and b!7850814 ((_ is Union!21085) (reg!21414 (regTwo!42682 r1!6227)))) b!7851449))

(declare-fun b!7851452 () Bool)

(declare-fun e!4641151 () Bool)

(declare-fun tp!2325076 () Bool)

(assert (=> b!7851452 (= e!4641151 tp!2325076)))

(declare-fun b!7851450 () Bool)

(assert (=> b!7851450 (= e!4641151 tp_is_empty!52569)))

(assert (=> b!7850813 (= tp!2324873 e!4641151)))

(declare-fun b!7851453 () Bool)

(declare-fun tp!2325078 () Bool)

(declare-fun tp!2325074 () Bool)

(assert (=> b!7851453 (= e!4641151 (and tp!2325078 tp!2325074))))

(declare-fun b!7851451 () Bool)

(declare-fun tp!2325075 () Bool)

(declare-fun tp!2325077 () Bool)

(assert (=> b!7851451 (= e!4641151 (and tp!2325075 tp!2325077))))

(assert (= (and b!7850813 ((_ is ElementMatch!21085) (regOne!42682 (regTwo!42682 r1!6227)))) b!7851450))

(assert (= (and b!7850813 ((_ is Concat!29930) (regOne!42682 (regTwo!42682 r1!6227)))) b!7851451))

(assert (= (and b!7850813 ((_ is Star!21085) (regOne!42682 (regTwo!42682 r1!6227)))) b!7851452))

(assert (= (and b!7850813 ((_ is Union!21085) (regOne!42682 (regTwo!42682 r1!6227)))) b!7851453))

(declare-fun b!7851456 () Bool)

(declare-fun e!4641152 () Bool)

(declare-fun tp!2325081 () Bool)

(assert (=> b!7851456 (= e!4641152 tp!2325081)))

(declare-fun b!7851454 () Bool)

(assert (=> b!7851454 (= e!4641152 tp_is_empty!52569)))

(assert (=> b!7850813 (= tp!2324875 e!4641152)))

(declare-fun b!7851457 () Bool)

(declare-fun tp!2325083 () Bool)

(declare-fun tp!2325079 () Bool)

(assert (=> b!7851457 (= e!4641152 (and tp!2325083 tp!2325079))))

(declare-fun b!7851455 () Bool)

(declare-fun tp!2325080 () Bool)

(declare-fun tp!2325082 () Bool)

(assert (=> b!7851455 (= e!4641152 (and tp!2325080 tp!2325082))))

(assert (= (and b!7850813 ((_ is ElementMatch!21085) (regTwo!42682 (regTwo!42682 r1!6227)))) b!7851454))

(assert (= (and b!7850813 ((_ is Concat!29930) (regTwo!42682 (regTwo!42682 r1!6227)))) b!7851455))

(assert (= (and b!7850813 ((_ is Star!21085) (regTwo!42682 (regTwo!42682 r1!6227)))) b!7851456))

(assert (= (and b!7850813 ((_ is Union!21085) (regTwo!42682 (regTwo!42682 r1!6227)))) b!7851457))

(declare-fun b!7851460 () Bool)

(declare-fun e!4641153 () Bool)

(declare-fun tp!2325086 () Bool)

(assert (=> b!7851460 (= e!4641153 tp!2325086)))

(declare-fun b!7851458 () Bool)

(assert (=> b!7851458 (= e!4641153 tp_is_empty!52569)))

(assert (=> b!7850791 (= tp!2324846 e!4641153)))

(declare-fun b!7851461 () Bool)

(declare-fun tp!2325088 () Bool)

(declare-fun tp!2325084 () Bool)

(assert (=> b!7851461 (= e!4641153 (and tp!2325088 tp!2325084))))

(declare-fun b!7851459 () Bool)

(declare-fun tp!2325085 () Bool)

(declare-fun tp!2325087 () Bool)

(assert (=> b!7851459 (= e!4641153 (and tp!2325085 tp!2325087))))

(assert (= (and b!7850791 ((_ is ElementMatch!21085) (regOne!42683 (reg!21414 r2!6165)))) b!7851458))

(assert (= (and b!7850791 ((_ is Concat!29930) (regOne!42683 (reg!21414 r2!6165)))) b!7851459))

(assert (= (and b!7850791 ((_ is Star!21085) (regOne!42683 (reg!21414 r2!6165)))) b!7851460))

(assert (= (and b!7850791 ((_ is Union!21085) (regOne!42683 (reg!21414 r2!6165)))) b!7851461))

(declare-fun b!7851464 () Bool)

(declare-fun e!4641154 () Bool)

(declare-fun tp!2325091 () Bool)

(assert (=> b!7851464 (= e!4641154 tp!2325091)))

(declare-fun b!7851462 () Bool)

(assert (=> b!7851462 (= e!4641154 tp_is_empty!52569)))

(assert (=> b!7850791 (= tp!2324842 e!4641154)))

(declare-fun b!7851465 () Bool)

(declare-fun tp!2325093 () Bool)

(declare-fun tp!2325089 () Bool)

(assert (=> b!7851465 (= e!4641154 (and tp!2325093 tp!2325089))))

(declare-fun b!7851463 () Bool)

(declare-fun tp!2325090 () Bool)

(declare-fun tp!2325092 () Bool)

(assert (=> b!7851463 (= e!4641154 (and tp!2325090 tp!2325092))))

(assert (= (and b!7850791 ((_ is ElementMatch!21085) (regTwo!42683 (reg!21414 r2!6165)))) b!7851462))

(assert (= (and b!7850791 ((_ is Concat!29930) (regTwo!42683 (reg!21414 r2!6165)))) b!7851463))

(assert (= (and b!7850791 ((_ is Star!21085) (regTwo!42683 (reg!21414 r2!6165)))) b!7851464))

(assert (= (and b!7850791 ((_ is Union!21085) (regTwo!42683 (reg!21414 r2!6165)))) b!7851465))

(declare-fun b!7851475 () Bool)

(declare-fun e!4641161 () Bool)

(declare-fun tp!2325096 () Bool)

(assert (=> b!7851475 (= e!4641161 tp!2325096)))

(declare-fun b!7851473 () Bool)

(assert (=> b!7851473 (= e!4641161 tp_is_empty!52569)))

(assert (=> b!7850824 (= tp!2324887 e!4641161)))

(declare-fun b!7851476 () Bool)

(declare-fun tp!2325098 () Bool)

(declare-fun tp!2325094 () Bool)

(assert (=> b!7851476 (= e!4641161 (and tp!2325098 tp!2325094))))

(declare-fun b!7851474 () Bool)

(declare-fun tp!2325095 () Bool)

(declare-fun tp!2325097 () Bool)

(assert (=> b!7851474 (= e!4641161 (and tp!2325095 tp!2325097))))

(assert (= (and b!7850824 ((_ is ElementMatch!21085) (regOne!42683 (regTwo!42682 r2!6165)))) b!7851473))

(assert (= (and b!7850824 ((_ is Concat!29930) (regOne!42683 (regTwo!42682 r2!6165)))) b!7851474))

(assert (= (and b!7850824 ((_ is Star!21085) (regOne!42683 (regTwo!42682 r2!6165)))) b!7851475))

(assert (= (and b!7850824 ((_ is Union!21085) (regOne!42683 (regTwo!42682 r2!6165)))) b!7851476))

(declare-fun b!7851479 () Bool)

(declare-fun e!4641162 () Bool)

(declare-fun tp!2325101 () Bool)

(assert (=> b!7851479 (= e!4641162 tp!2325101)))

(declare-fun b!7851477 () Bool)

(assert (=> b!7851477 (= e!4641162 tp_is_empty!52569)))

(assert (=> b!7850824 (= tp!2324883 e!4641162)))

(declare-fun b!7851480 () Bool)

(declare-fun tp!2325103 () Bool)

(declare-fun tp!2325099 () Bool)

(assert (=> b!7851480 (= e!4641162 (and tp!2325103 tp!2325099))))

(declare-fun b!7851478 () Bool)

(declare-fun tp!2325100 () Bool)

(declare-fun tp!2325102 () Bool)

(assert (=> b!7851478 (= e!4641162 (and tp!2325100 tp!2325102))))

(assert (= (and b!7850824 ((_ is ElementMatch!21085) (regTwo!42683 (regTwo!42682 r2!6165)))) b!7851477))

(assert (= (and b!7850824 ((_ is Concat!29930) (regTwo!42683 (regTwo!42682 r2!6165)))) b!7851478))

(assert (= (and b!7850824 ((_ is Star!21085) (regTwo!42683 (regTwo!42682 r2!6165)))) b!7851479))

(assert (= (and b!7850824 ((_ is Union!21085) (regTwo!42683 (regTwo!42682 r2!6165)))) b!7851480))

(declare-fun b!7851483 () Bool)

(declare-fun e!4641163 () Bool)

(declare-fun tp!2325106 () Bool)

(assert (=> b!7851483 (= e!4641163 tp!2325106)))

(declare-fun b!7851481 () Bool)

(assert (=> b!7851481 (= e!4641163 tp_is_empty!52569)))

(assert (=> b!7850799 (= tp!2324856 e!4641163)))

(declare-fun b!7851484 () Bool)

(declare-fun tp!2325108 () Bool)

(declare-fun tp!2325104 () Bool)

(assert (=> b!7851484 (= e!4641163 (and tp!2325108 tp!2325104))))

(declare-fun b!7851482 () Bool)

(declare-fun tp!2325105 () Bool)

(declare-fun tp!2325107 () Bool)

(assert (=> b!7851482 (= e!4641163 (and tp!2325105 tp!2325107))))

(assert (= (and b!7850799 ((_ is ElementMatch!21085) (regOne!42683 (regTwo!42683 r1!6227)))) b!7851481))

(assert (= (and b!7850799 ((_ is Concat!29930) (regOne!42683 (regTwo!42683 r1!6227)))) b!7851482))

(assert (= (and b!7850799 ((_ is Star!21085) (regOne!42683 (regTwo!42683 r1!6227)))) b!7851483))

(assert (= (and b!7850799 ((_ is Union!21085) (regOne!42683 (regTwo!42683 r1!6227)))) b!7851484))

(declare-fun b!7851487 () Bool)

(declare-fun e!4641164 () Bool)

(declare-fun tp!2325111 () Bool)

(assert (=> b!7851487 (= e!4641164 tp!2325111)))

(declare-fun b!7851485 () Bool)

(assert (=> b!7851485 (= e!4641164 tp_is_empty!52569)))

(assert (=> b!7850799 (= tp!2324852 e!4641164)))

(declare-fun b!7851488 () Bool)

(declare-fun tp!2325113 () Bool)

(declare-fun tp!2325109 () Bool)

(assert (=> b!7851488 (= e!4641164 (and tp!2325113 tp!2325109))))

(declare-fun b!7851486 () Bool)

(declare-fun tp!2325110 () Bool)

(declare-fun tp!2325112 () Bool)

(assert (=> b!7851486 (= e!4641164 (and tp!2325110 tp!2325112))))

(assert (= (and b!7850799 ((_ is ElementMatch!21085) (regTwo!42683 (regTwo!42683 r1!6227)))) b!7851485))

(assert (= (and b!7850799 ((_ is Concat!29930) (regTwo!42683 (regTwo!42683 r1!6227)))) b!7851486))

(assert (= (and b!7850799 ((_ is Star!21085) (regTwo!42683 (regTwo!42683 r1!6227)))) b!7851487))

(assert (= (and b!7850799 ((_ is Union!21085) (regTwo!42683 (regTwo!42683 r1!6227)))) b!7851488))

(declare-fun b!7851491 () Bool)

(declare-fun e!4641165 () Bool)

(declare-fun tp!2325116 () Bool)

(assert (=> b!7851491 (= e!4641165 tp!2325116)))

(declare-fun b!7851489 () Bool)

(assert (=> b!7851489 (= e!4641165 tp_is_empty!52569)))

(assert (=> b!7850807 (= tp!2324866 e!4641165)))

(declare-fun b!7851492 () Bool)

(declare-fun tp!2325118 () Bool)

(declare-fun tp!2325114 () Bool)

(assert (=> b!7851492 (= e!4641165 (and tp!2325118 tp!2325114))))

(declare-fun b!7851490 () Bool)

(declare-fun tp!2325115 () Bool)

(declare-fun tp!2325117 () Bool)

(assert (=> b!7851490 (= e!4641165 (and tp!2325115 tp!2325117))))

(assert (= (and b!7850807 ((_ is ElementMatch!21085) (regOne!42683 (regTwo!42683 r2!6165)))) b!7851489))

(assert (= (and b!7850807 ((_ is Concat!29930) (regOne!42683 (regTwo!42683 r2!6165)))) b!7851490))

(assert (= (and b!7850807 ((_ is Star!21085) (regOne!42683 (regTwo!42683 r2!6165)))) b!7851491))

(assert (= (and b!7850807 ((_ is Union!21085) (regOne!42683 (regTwo!42683 r2!6165)))) b!7851492))

(declare-fun b!7851495 () Bool)

(declare-fun e!4641166 () Bool)

(declare-fun tp!2325121 () Bool)

(assert (=> b!7851495 (= e!4641166 tp!2325121)))

(declare-fun b!7851493 () Bool)

(assert (=> b!7851493 (= e!4641166 tp_is_empty!52569)))

(assert (=> b!7850807 (= tp!2324862 e!4641166)))

(declare-fun b!7851496 () Bool)

(declare-fun tp!2325123 () Bool)

(declare-fun tp!2325119 () Bool)

(assert (=> b!7851496 (= e!4641166 (and tp!2325123 tp!2325119))))

(declare-fun b!7851494 () Bool)

(declare-fun tp!2325120 () Bool)

(declare-fun tp!2325122 () Bool)

(assert (=> b!7851494 (= e!4641166 (and tp!2325120 tp!2325122))))

(assert (= (and b!7850807 ((_ is ElementMatch!21085) (regTwo!42683 (regTwo!42683 r2!6165)))) b!7851493))

(assert (= (and b!7850807 ((_ is Concat!29930) (regTwo!42683 (regTwo!42683 r2!6165)))) b!7851494))

(assert (= (and b!7850807 ((_ is Star!21085) (regTwo!42683 (regTwo!42683 r2!6165)))) b!7851495))

(assert (= (and b!7850807 ((_ is Union!21085) (regTwo!42683 (regTwo!42683 r2!6165)))) b!7851496))

(declare-fun b!7851499 () Bool)

(declare-fun e!4641167 () Bool)

(declare-fun tp!2325126 () Bool)

(assert (=> b!7851499 (= e!4641167 tp!2325126)))

(declare-fun b!7851497 () Bool)

(assert (=> b!7851497 (= e!4641167 tp_is_empty!52569)))

(assert (=> b!7850790 (= tp!2324844 e!4641167)))

(declare-fun b!7851500 () Bool)

(declare-fun tp!2325128 () Bool)

(declare-fun tp!2325124 () Bool)

(assert (=> b!7851500 (= e!4641167 (and tp!2325128 tp!2325124))))

(declare-fun b!7851498 () Bool)

(declare-fun tp!2325125 () Bool)

(declare-fun tp!2325127 () Bool)

(assert (=> b!7851498 (= e!4641167 (and tp!2325125 tp!2325127))))

(assert (= (and b!7850790 ((_ is ElementMatch!21085) (reg!21414 (reg!21414 r2!6165)))) b!7851497))

(assert (= (and b!7850790 ((_ is Concat!29930) (reg!21414 (reg!21414 r2!6165)))) b!7851498))

(assert (= (and b!7850790 ((_ is Star!21085) (reg!21414 (reg!21414 r2!6165)))) b!7851499))

(assert (= (and b!7850790 ((_ is Union!21085) (reg!21414 (reg!21414 r2!6165)))) b!7851500))

(declare-fun b!7851513 () Bool)

(declare-fun e!4641173 () Bool)

(declare-fun tp!2325131 () Bool)

(assert (=> b!7851513 (= e!4641173 tp!2325131)))

(declare-fun b!7851511 () Bool)

(assert (=> b!7851511 (= e!4641173 tp_is_empty!52569)))

(assert (=> b!7850823 (= tp!2324885 e!4641173)))

(declare-fun b!7851514 () Bool)

(declare-fun tp!2325133 () Bool)

(declare-fun tp!2325129 () Bool)

(assert (=> b!7851514 (= e!4641173 (and tp!2325133 tp!2325129))))

(declare-fun b!7851512 () Bool)

(declare-fun tp!2325130 () Bool)

(declare-fun tp!2325132 () Bool)

(assert (=> b!7851512 (= e!4641173 (and tp!2325130 tp!2325132))))

(assert (= (and b!7850823 ((_ is ElementMatch!21085) (reg!21414 (regTwo!42682 r2!6165)))) b!7851511))

(assert (= (and b!7850823 ((_ is Concat!29930) (reg!21414 (regTwo!42682 r2!6165)))) b!7851512))

(assert (= (and b!7850823 ((_ is Star!21085) (reg!21414 (regTwo!42682 r2!6165)))) b!7851513))

(assert (= (and b!7850823 ((_ is Union!21085) (reg!21414 (regTwo!42682 r2!6165)))) b!7851514))

(declare-fun b!7851517 () Bool)

(declare-fun e!4641174 () Bool)

(declare-fun tp!2325136 () Bool)

(assert (=> b!7851517 (= e!4641174 tp!2325136)))

(declare-fun b!7851515 () Bool)

(assert (=> b!7851515 (= e!4641174 tp_is_empty!52569)))

(assert (=> b!7850798 (= tp!2324854 e!4641174)))

(declare-fun b!7851518 () Bool)

(declare-fun tp!2325138 () Bool)

(declare-fun tp!2325134 () Bool)

(assert (=> b!7851518 (= e!4641174 (and tp!2325138 tp!2325134))))

(declare-fun b!7851516 () Bool)

(declare-fun tp!2325135 () Bool)

(declare-fun tp!2325137 () Bool)

(assert (=> b!7851516 (= e!4641174 (and tp!2325135 tp!2325137))))

(assert (= (and b!7850798 ((_ is ElementMatch!21085) (reg!21414 (regTwo!42683 r1!6227)))) b!7851515))

(assert (= (and b!7850798 ((_ is Concat!29930) (reg!21414 (regTwo!42683 r1!6227)))) b!7851516))

(assert (= (and b!7850798 ((_ is Star!21085) (reg!21414 (regTwo!42683 r1!6227)))) b!7851517))

(assert (= (and b!7850798 ((_ is Union!21085) (reg!21414 (regTwo!42683 r1!6227)))) b!7851518))

(declare-fun b!7851521 () Bool)

(declare-fun e!4641175 () Bool)

(declare-fun tp!2325141 () Bool)

(assert (=> b!7851521 (= e!4641175 tp!2325141)))

(declare-fun b!7851519 () Bool)

(assert (=> b!7851519 (= e!4641175 tp_is_empty!52569)))

(assert (=> b!7850806 (= tp!2324864 e!4641175)))

(declare-fun b!7851522 () Bool)

(declare-fun tp!2325143 () Bool)

(declare-fun tp!2325139 () Bool)

(assert (=> b!7851522 (= e!4641175 (and tp!2325143 tp!2325139))))

(declare-fun b!7851520 () Bool)

(declare-fun tp!2325140 () Bool)

(declare-fun tp!2325142 () Bool)

(assert (=> b!7851520 (= e!4641175 (and tp!2325140 tp!2325142))))

(assert (= (and b!7850806 ((_ is ElementMatch!21085) (reg!21414 (regTwo!42683 r2!6165)))) b!7851519))

(assert (= (and b!7850806 ((_ is Concat!29930) (reg!21414 (regTwo!42683 r2!6165)))) b!7851520))

(assert (= (and b!7850806 ((_ is Star!21085) (reg!21414 (regTwo!42683 r2!6165)))) b!7851521))

(assert (= (and b!7850806 ((_ is Union!21085) (reg!21414 (regTwo!42683 r2!6165)))) b!7851522))

(declare-fun b!7851523 () Bool)

(declare-fun e!4641176 () Bool)

(declare-fun tp!2325144 () Bool)

(assert (=> b!7851523 (= e!4641176 (and tp_is_empty!52569 tp!2325144))))

(assert (=> b!7850816 (= tp!2324877 e!4641176)))

(assert (= (and b!7850816 ((_ is Cons!73820) (t!388679 (t!388679 s2!3706)))) b!7851523))

(check-sat (not b!7851400) (not b!7851321) (not b!7851480) (not b!7851520) (not b!7851403) (not d!2353363) (not bm!727652) (not b!7850875) (not bm!727596) (not d!2353351) (not b!7851498) (not d!2353285) (not b!7851345) (not b!7851313) (not bm!727586) (not b!7851198) (not bm!727639) (not b!7851162) (not b!7851387) (not b!7850889) (not b!7851375) (not b!7851230) (not d!2353287) (not b!7851461) (not b!7851161) (not b!7850897) (not b!7850983) (not b!7850855) (not b!7851195) (not b!7851440) (not b!7851120) (not bm!727601) (not b!7851017) (not bm!727592) (not b!7851284) (not b!7851451) (not b!7850969) (not d!2353377) (not b!7851188) (not b!7851432) (not b!7851448) (not b!7851484) (not b!7851407) (not b!7851513) (not bm!727578) (not b!7851014) (not b!7851073) (not d!2353383) (not d!2353367) (not b!7850881) (not b!7850878) (not b!7851354) (not b!7851309) (not b!7851312) (not b!7851331) (not b!7851413) (not b!7851479) (not b!7851296) (not b!7851361) (not b!7850968) (not b!7851324) (not b!7851408) (not b!7851347) (not b!7851301) (not b!7851388) (not b!7851325) (not b!7851514) (not b!7851143) (not bm!727651) (not b!7851399) (not b!7851007) (not b!7851423) (not b!7850976) (not b!7851397) (not bm!727607) (not b!7851396) (not bm!727571) (not d!2353321) (not b!7851453) (not d!2353329) (not b!7851492) (not b!7851212) (not b!7851368) (not b!7850945) (not bm!727670) (not bm!727669) (not b!7851074) (not b!7851392) (not b!7851523) (not b!7851384) (not d!2353307) (not b!7851191) (not b!7851363) (not b!7851302) (not b!7851326) (not b!7851043) (not b!7851360) (not bm!727634) (not b!7851459) (not b!7851409) (not b!7850924) (not b!7851483) (not bm!727621) (not b!7850972) (not b!7850990) (not b!7851373) (not bm!727625) (not b!7850975) (not d!2353313) (not b!7850921) (not b!7851011) (not b!7851463) (not b!7851275) (not b!7850874) (not bm!727598) (not b!7851010) (not b!7850907) (not b!7851500) (not b!7851393) (not b!7851420) (not b!7851359) (not d!2353373) (not bm!727666) (not bm!727570) (not b!7851376) (not bm!727576) (not b!7851457) (not b!7851317) (not b!7851367) (not b!7850895) (not b!7851180) (not b!7850919) (not b!7851431) (not b!7851227) (not b!7851377) (not b!7851404) (not b!7851088) (not b!7851475) (not b!7851439) (not bm!727615) (not b!7851465) (not b!7851512) (not b!7851496) (not b!7851266) (not b!7851294) (not b!7851154) (not b!7851304) (not b!7851346) (not b!7851070) (not b!7851383) (not b!7850859) (not b!7851087) (not b!7851379) (not d!2353209) (not b!7851298) (not b!7851199) (not b!7851488) (not d!2353273) (not bm!727574) (not b!7851380) (not b!7851487) (not bm!727622) (not b!7851491) (not bm!727638) (not b!7851421) (not b!7851449) (not bm!727589) (not bm!727664) (not b!7851305) (not b!7851066) (not bm!727635) (not b!7851320) (not b!7851018) (not b!7851389) (not bm!727585) (not b!7851364) (not b!7851425) (not d!2353315) (not b!7851447) (not b!7851435) (not b!7851300) (not bm!727602) (not d!2353267) (not b!7850903) (not b!7851521) (not b!7851067) (not bm!727663) (not b!7851437) (not b!7851297) (not bm!727646) (not b!7851339) (not b!7851391) (not b!7851494) (not b!7851417) (not b!7851518) (not b!7850882) (not d!2353231) (not b!7851308) (not b!7851095) (not b!7851443) (not b!7851332) (not b!7851155) (not bm!727573) (not b!7851441) (not b!7851316) (not b!7851318) (not d!2353277) (not b!7851102) (not b!7851436) (not bm!727641) (not b!7851416) tp_is_empty!52569 (not b!7851234) (not d!2353345) (not bm!727647) (not b!7851516) (not b!7851478) (not b!7851445) (not b!7851476) (not b!7851427) (not b!7851365) (not b!7851424) (not b!7851353) (not bm!727657) (not b!7851371) (not bm!727619) (not d!2353257) (not b!7851333) (not bm!727579) (not b!7851455) (not b!7851486) (not b!7850871) (not b!7851522) (not b!7851395) (not bm!727599) (not b!7851499) (not b!7851158) (not b!7851460) (not b!7851369) (not b!7851474) (not b!7850933) (not d!2353211) (not b!7851237) (not b!7850857) (not b!7851411) (not b!7850913) (not bm!727626) (not b!7851401) (not bm!727649) (not b!7851338) (not b!7851428) (not bm!727616) (not b!7851310) (not b!7851327) (not d!2353269) (not d!2353213) (not b!7851464) (not bm!727629) (not bm!727588) (not b!7851456) (not b!7851433) (not b!7850865) (not b!7851412) (not b!7851293) (not b!7851337) (not b!7851151) (not b!7850965) (not b!7851482) (not b!7851444) (not d!2353239) (not b!7851238) (not b!7851306) (not b!7851490) (not b!7851517) (not b!7851452) (not b!7851081) (not b!7851419) (not bm!727628) (not b!7851355) (not b!7851292) (not b!7851314) (not b!7851495) (not bm!727667) (not d!2353331) (not b!7851405) (not b!7851429) (not b!7850905) (not bm!727583) (not b!7851381) (not b!7851322) (not b!7851231) (not b!7851192) (not b!7851415) (not b!7851385) (not bm!727593) (not d!2353339) (not d!2353355) (not b!7851372) (not b!7851063) (not bm!727582))
(check-sat)
