; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743052 () Bool)

(assert start!743052)

(declare-fun b!7847405 () Bool)

(declare-fun res!3120804 () Bool)

(declare-fun e!4639174 () Bool)

(assert (=> b!7847405 (=> (not res!3120804) (not e!4639174))))

(declare-datatypes ((C!42470 0))(
  ( (C!42471 (val!31697 Int)) )
))
(declare-datatypes ((Regex!21072 0))(
  ( (ElementMatch!21072 (c!1442374 C!42470)) (Concat!29917 (regOne!42656 Regex!21072) (regTwo!42656 Regex!21072)) (EmptyExpr!21072) (Star!21072 (reg!21401 Regex!21072)) (EmptyLang!21072) (Union!21072 (regOne!42657 Regex!21072) (regTwo!42657 Regex!21072)) )
))
(declare-fun r2!6165 () Regex!21072)

(declare-fun validRegex!11482 (Regex!21072) Bool)

(assert (=> b!7847405 (= res!3120804 (validRegex!11482 r2!6165))))

(declare-fun b!7847406 () Bool)

(declare-fun e!4639179 () Bool)

(declare-fun tp!2323646 () Bool)

(declare-fun tp!2323653 () Bool)

(assert (=> b!7847406 (= e!4639179 (and tp!2323646 tp!2323653))))

(declare-fun b!7847407 () Bool)

(declare-fun res!3120801 () Bool)

(assert (=> b!7847407 (=> (not res!3120801) (not e!4639174))))

(declare-datatypes ((List!73931 0))(
  ( (Nil!73807) (Cons!73807 (h!80255 C!42470) (t!388666 List!73931)) )
))
(declare-fun s1!4084 () List!73931)

(assert (=> b!7847407 (= res!3120801 (is-Cons!73807 s1!4084))))

(declare-fun b!7847408 () Bool)

(declare-fun e!4639176 () Bool)

(declare-fun tp!2323654 () Bool)

(declare-fun tp!2323656 () Bool)

(assert (=> b!7847408 (= e!4639176 (and tp!2323654 tp!2323656))))

(declare-fun b!7847409 () Bool)

(declare-fun e!4639175 () Bool)

(declare-fun tp_is_empty!52543 () Bool)

(declare-fun tp!2323645 () Bool)

(assert (=> b!7847409 (= e!4639175 (and tp_is_empty!52543 tp!2323645))))

(declare-fun b!7847410 () Bool)

(assert (=> b!7847410 (= e!4639179 tp_is_empty!52543)))

(declare-fun b!7847411 () Bool)

(assert (=> b!7847411 (= e!4639176 tp_is_empty!52543)))

(declare-fun res!3120799 () Bool)

(assert (=> start!743052 (=> (not res!3120799) (not e!4639174))))

(declare-fun r1!6227 () Regex!21072)

(assert (=> start!743052 (= res!3120799 (validRegex!11482 r1!6227))))

(assert (=> start!743052 e!4639174))

(assert (=> start!743052 e!4639176))

(assert (=> start!743052 e!4639179))

(declare-fun e!4639180 () Bool)

(assert (=> start!743052 e!4639180))

(assert (=> start!743052 e!4639175))

(declare-fun b!7847412 () Bool)

(declare-fun e!4639177 () Bool)

(assert (=> b!7847412 (= e!4639174 (not e!4639177))))

(declare-fun res!3120805 () Bool)

(assert (=> b!7847412 (=> res!3120805 e!4639177)))

(declare-fun nullable!9346 (Regex!21072) Bool)

(assert (=> b!7847412 (= res!3120805 (nullable!9346 r1!6227))))

(declare-fun lt!2679336 () Regex!21072)

(declare-fun lt!2679337 () List!73931)

(declare-fun matchR!10508 (Regex!21072 List!73931) Bool)

(assert (=> b!7847412 (matchR!10508 lt!2679336 lt!2679337)))

(declare-fun s2!3706 () List!73931)

(declare-fun ++!18082 (List!73931 List!73931) List!73931)

(assert (=> b!7847412 (= lt!2679337 (++!18082 (t!388666 s1!4084) s2!3706))))

(declare-fun lt!2679338 () Regex!21072)

(assert (=> b!7847412 (= lt!2679336 (Concat!29917 lt!2679338 r2!6165))))

(declare-datatypes ((Unit!168890 0))(
  ( (Unit!168891) )
))
(declare-fun lt!2679334 () Unit!168890)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!443 (Regex!21072 Regex!21072 List!73931 List!73931) Unit!168890)

(assert (=> b!7847412 (= lt!2679334 (lemmaTwoRegexMatchThenConcatMatchesConcatString!443 lt!2679338 r2!6165 (t!388666 s1!4084) s2!3706))))

(declare-fun derivativeStep!6309 (Regex!21072 C!42470) Regex!21072)

(assert (=> b!7847412 (= lt!2679338 (derivativeStep!6309 r1!6227 (h!80255 s1!4084)))))

(declare-fun b!7847413 () Bool)

(declare-fun e!4639178 () Bool)

(declare-fun lt!2679333 () Regex!21072)

(assert (=> b!7847413 (= e!4639178 (validRegex!11482 lt!2679333))))

(declare-fun lt!2679332 () List!73931)

(assert (=> b!7847413 (= lt!2679332 (++!18082 s1!4084 s2!3706))))

(declare-fun lt!2679335 () Regex!21072)

(assert (=> b!7847413 (matchR!10508 lt!2679335 lt!2679337)))

(declare-fun lt!2679339 () Unit!168890)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!121 (Regex!21072 Regex!21072 List!73931) Unit!168890)

(assert (=> b!7847413 (= lt!2679339 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!121 lt!2679336 EmptyLang!21072 lt!2679337))))

(declare-fun b!7847414 () Bool)

(assert (=> b!7847414 (= e!4639177 e!4639178)))

(declare-fun res!3120803 () Bool)

(assert (=> b!7847414 (=> res!3120803 e!4639178)))

(assert (=> b!7847414 (= res!3120803 (not (= (derivativeStep!6309 lt!2679333 (h!80255 s1!4084)) lt!2679335)))))

(assert (=> b!7847414 (= lt!2679335 (Union!21072 lt!2679336 EmptyLang!21072))))

(assert (=> b!7847414 (= lt!2679333 (Concat!29917 r1!6227 r2!6165))))

(declare-fun b!7847415 () Bool)

(declare-fun res!3120802 () Bool)

(assert (=> b!7847415 (=> (not res!3120802) (not e!4639174))))

(assert (=> b!7847415 (= res!3120802 (matchR!10508 r2!6165 s2!3706))))

(declare-fun b!7847416 () Bool)

(declare-fun res!3120800 () Bool)

(assert (=> b!7847416 (=> (not res!3120800) (not e!4639174))))

(assert (=> b!7847416 (= res!3120800 (matchR!10508 r1!6227 s1!4084))))

(declare-fun b!7847417 () Bool)

(declare-fun tp!2323652 () Bool)

(declare-fun tp!2323655 () Bool)

(assert (=> b!7847417 (= e!4639176 (and tp!2323652 tp!2323655))))

(declare-fun b!7847418 () Bool)

(declare-fun tp!2323648 () Bool)

(declare-fun tp!2323647 () Bool)

(assert (=> b!7847418 (= e!4639179 (and tp!2323648 tp!2323647))))

(declare-fun b!7847419 () Bool)

(declare-fun tp!2323650 () Bool)

(assert (=> b!7847419 (= e!4639176 tp!2323650)))

(declare-fun b!7847420 () Bool)

(declare-fun tp!2323649 () Bool)

(assert (=> b!7847420 (= e!4639180 (and tp_is_empty!52543 tp!2323649))))

(declare-fun b!7847421 () Bool)

(declare-fun tp!2323651 () Bool)

(assert (=> b!7847421 (= e!4639179 tp!2323651)))

(assert (= (and start!743052 res!3120799) b!7847405))

(assert (= (and b!7847405 res!3120804) b!7847416))

(assert (= (and b!7847416 res!3120800) b!7847415))

(assert (= (and b!7847415 res!3120802) b!7847407))

(assert (= (and b!7847407 res!3120801) b!7847412))

(assert (= (and b!7847412 (not res!3120805)) b!7847414))

(assert (= (and b!7847414 (not res!3120803)) b!7847413))

(assert (= (and start!743052 (is-ElementMatch!21072 r1!6227)) b!7847411))

(assert (= (and start!743052 (is-Concat!29917 r1!6227)) b!7847417))

(assert (= (and start!743052 (is-Star!21072 r1!6227)) b!7847419))

(assert (= (and start!743052 (is-Union!21072 r1!6227)) b!7847408))

(assert (= (and start!743052 (is-ElementMatch!21072 r2!6165)) b!7847410))

(assert (= (and start!743052 (is-Concat!29917 r2!6165)) b!7847406))

(assert (= (and start!743052 (is-Star!21072 r2!6165)) b!7847421))

(assert (= (and start!743052 (is-Union!21072 r2!6165)) b!7847418))

(assert (= (and start!743052 (is-Cons!73807 s1!4084)) b!7847420))

(assert (= (and start!743052 (is-Cons!73807 s2!3706)) b!7847409))

(declare-fun m!8256564 () Bool)

(assert (=> b!7847405 m!8256564))

(declare-fun m!8256566 () Bool)

(assert (=> b!7847416 m!8256566))

(declare-fun m!8256568 () Bool)

(assert (=> b!7847415 m!8256568))

(declare-fun m!8256570 () Bool)

(assert (=> start!743052 m!8256570))

(declare-fun m!8256572 () Bool)

(assert (=> b!7847412 m!8256572))

(declare-fun m!8256574 () Bool)

(assert (=> b!7847412 m!8256574))

(declare-fun m!8256576 () Bool)

(assert (=> b!7847412 m!8256576))

(declare-fun m!8256578 () Bool)

(assert (=> b!7847412 m!8256578))

(declare-fun m!8256580 () Bool)

(assert (=> b!7847412 m!8256580))

(declare-fun m!8256582 () Bool)

(assert (=> b!7847413 m!8256582))

(declare-fun m!8256584 () Bool)

(assert (=> b!7847413 m!8256584))

(declare-fun m!8256586 () Bool)

(assert (=> b!7847413 m!8256586))

(declare-fun m!8256588 () Bool)

(assert (=> b!7847413 m!8256588))

(declare-fun m!8256590 () Bool)

(assert (=> b!7847414 m!8256590))

(push 1)

(assert (not b!7847420))

(assert (not b!7847418))

(assert (not start!743052))

(assert (not b!7847409))

(assert (not b!7847419))

(assert (not b!7847417))

(assert (not b!7847415))

(assert (not b!7847421))

(assert (not b!7847406))

(assert (not b!7847414))

(assert (not b!7847408))

(assert tp_is_empty!52543)

(assert (not b!7847413))

(assert (not b!7847416))

(assert (not b!7847412))

(assert (not b!7847405))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2352899 () Bool)

(assert (=> d!2352899 (matchR!10508 (Concat!29917 lt!2679338 r2!6165) (++!18082 (t!388666 s1!4084) s2!3706))))

(declare-fun lt!2679366 () Unit!168890)

(declare-fun choose!59637 (Regex!21072 Regex!21072 List!73931 List!73931) Unit!168890)

(assert (=> d!2352899 (= lt!2679366 (choose!59637 lt!2679338 r2!6165 (t!388666 s1!4084) s2!3706))))

(declare-fun e!4639204 () Bool)

(assert (=> d!2352899 e!4639204))

(declare-fun res!3120829 () Bool)

(assert (=> d!2352899 (=> (not res!3120829) (not e!4639204))))

(assert (=> d!2352899 (= res!3120829 (validRegex!11482 lt!2679338))))

(assert (=> d!2352899 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!443 lt!2679338 r2!6165 (t!388666 s1!4084) s2!3706) lt!2679366)))

(declare-fun b!7847475 () Bool)

(assert (=> b!7847475 (= e!4639204 (validRegex!11482 r2!6165))))

(assert (= (and d!2352899 res!3120829) b!7847475))

(assert (=> d!2352899 m!8256576))

(assert (=> d!2352899 m!8256576))

(declare-fun m!8256620 () Bool)

(assert (=> d!2352899 m!8256620))

(declare-fun m!8256622 () Bool)

(assert (=> d!2352899 m!8256622))

(declare-fun m!8256624 () Bool)

(assert (=> d!2352899 m!8256624))

(assert (=> b!7847475 m!8256564))

(assert (=> b!7847412 d!2352899))

(declare-fun b!7847504 () Bool)

(declare-fun e!4639219 () Bool)

(declare-fun e!4639223 () Bool)

(assert (=> b!7847504 (= e!4639219 e!4639223)))

(declare-fun res!3120848 () Bool)

(assert (=> b!7847504 (=> res!3120848 e!4639223)))

(declare-fun call!727173 () Bool)

(assert (=> b!7847504 (= res!3120848 call!727173)))

(declare-fun b!7847505 () Bool)

(declare-fun res!3120846 () Bool)

(declare-fun e!4639224 () Bool)

(assert (=> b!7847505 (=> res!3120846 e!4639224)))

(assert (=> b!7847505 (= res!3120846 (not (is-ElementMatch!21072 lt!2679336)))))

(declare-fun e!4639225 () Bool)

(assert (=> b!7847505 (= e!4639225 e!4639224)))

(declare-fun b!7847506 () Bool)

(declare-fun res!3120853 () Bool)

(assert (=> b!7847506 (=> res!3120853 e!4639224)))

(declare-fun e!4639221 () Bool)

(assert (=> b!7847506 (= res!3120853 e!4639221)))

(declare-fun res!3120849 () Bool)

(assert (=> b!7847506 (=> (not res!3120849) (not e!4639221))))

(declare-fun lt!2679369 () Bool)

(assert (=> b!7847506 (= res!3120849 lt!2679369)))

(declare-fun b!7847507 () Bool)

(declare-fun e!4639222 () Bool)

(assert (=> b!7847507 (= e!4639222 e!4639225)))

(declare-fun c!1442384 () Bool)

(assert (=> b!7847507 (= c!1442384 (is-EmptyLang!21072 lt!2679336))))

(declare-fun b!7847508 () Bool)

(declare-fun res!3120847 () Bool)

(assert (=> b!7847508 (=> (not res!3120847) (not e!4639221))))

(assert (=> b!7847508 (= res!3120847 (not call!727173))))

(declare-fun b!7847509 () Bool)

(assert (=> b!7847509 (= e!4639222 (= lt!2679369 call!727173))))

(declare-fun b!7847510 () Bool)

(declare-fun head!16031 (List!73931) C!42470)

(assert (=> b!7847510 (= e!4639221 (= (head!16031 lt!2679337) (c!1442374 lt!2679336)))))

(declare-fun b!7847511 () Bool)

(declare-fun res!3120852 () Bool)

(assert (=> b!7847511 (=> res!3120852 e!4639223)))

(declare-fun isEmpty!42320 (List!73931) Bool)

(declare-fun tail!15574 (List!73931) List!73931)

(assert (=> b!7847511 (= res!3120852 (not (isEmpty!42320 (tail!15574 lt!2679337))))))

(declare-fun b!7847512 () Bool)

(assert (=> b!7847512 (= e!4639225 (not lt!2679369))))

(declare-fun b!7847513 () Bool)

(declare-fun e!4639220 () Bool)

(assert (=> b!7847513 (= e!4639220 (nullable!9346 lt!2679336))))

(declare-fun b!7847514 () Bool)

(declare-fun res!3120850 () Bool)

(assert (=> b!7847514 (=> (not res!3120850) (not e!4639221))))

(assert (=> b!7847514 (= res!3120850 (isEmpty!42320 (tail!15574 lt!2679337)))))

(declare-fun d!2352901 () Bool)

(assert (=> d!2352901 e!4639222))

(declare-fun c!1442382 () Bool)

(assert (=> d!2352901 (= c!1442382 (is-EmptyExpr!21072 lt!2679336))))

(assert (=> d!2352901 (= lt!2679369 e!4639220)))

(declare-fun c!1442383 () Bool)

(assert (=> d!2352901 (= c!1442383 (isEmpty!42320 lt!2679337))))

(assert (=> d!2352901 (validRegex!11482 lt!2679336)))

(assert (=> d!2352901 (= (matchR!10508 lt!2679336 lt!2679337) lt!2679369)))

(declare-fun b!7847515 () Bool)

(assert (=> b!7847515 (= e!4639220 (matchR!10508 (derivativeStep!6309 lt!2679336 (head!16031 lt!2679337)) (tail!15574 lt!2679337)))))

(declare-fun b!7847516 () Bool)

(assert (=> b!7847516 (= e!4639223 (not (= (head!16031 lt!2679337) (c!1442374 lt!2679336))))))

(declare-fun bm!727168 () Bool)

(assert (=> bm!727168 (= call!727173 (isEmpty!42320 lt!2679337))))

(declare-fun b!7847517 () Bool)

(assert (=> b!7847517 (= e!4639224 e!4639219)))

(declare-fun res!3120851 () Bool)

(assert (=> b!7847517 (=> (not res!3120851) (not e!4639219))))

(assert (=> b!7847517 (= res!3120851 (not lt!2679369))))

(assert (= (and d!2352901 c!1442383) b!7847513))

(assert (= (and d!2352901 (not c!1442383)) b!7847515))

(assert (= (and d!2352901 c!1442382) b!7847509))

(assert (= (and d!2352901 (not c!1442382)) b!7847507))

(assert (= (and b!7847507 c!1442384) b!7847512))

(assert (= (and b!7847507 (not c!1442384)) b!7847505))

(assert (= (and b!7847505 (not res!3120846)) b!7847506))

(assert (= (and b!7847506 res!3120849) b!7847508))

(assert (= (and b!7847508 res!3120847) b!7847514))

(assert (= (and b!7847514 res!3120850) b!7847510))

(assert (= (and b!7847506 (not res!3120853)) b!7847517))

(assert (= (and b!7847517 res!3120851) b!7847504))

(assert (= (and b!7847504 (not res!3120848)) b!7847511))

(assert (= (and b!7847511 (not res!3120852)) b!7847516))

(assert (= (or b!7847509 b!7847504 b!7847508) bm!727168))

(declare-fun m!8256626 () Bool)

(assert (=> b!7847513 m!8256626))

(declare-fun m!8256628 () Bool)

(assert (=> b!7847516 m!8256628))

(assert (=> b!7847515 m!8256628))

(assert (=> b!7847515 m!8256628))

(declare-fun m!8256630 () Bool)

(assert (=> b!7847515 m!8256630))

(declare-fun m!8256632 () Bool)

(assert (=> b!7847515 m!8256632))

(assert (=> b!7847515 m!8256630))

(assert (=> b!7847515 m!8256632))

(declare-fun m!8256634 () Bool)

(assert (=> b!7847515 m!8256634))

(assert (=> b!7847510 m!8256628))

(declare-fun m!8256636 () Bool)

(assert (=> bm!727168 m!8256636))

(assert (=> b!7847514 m!8256632))

(assert (=> b!7847514 m!8256632))

(declare-fun m!8256638 () Bool)

(assert (=> b!7847514 m!8256638))

(assert (=> d!2352901 m!8256636))

(declare-fun m!8256640 () Bool)

(assert (=> d!2352901 m!8256640))

(assert (=> b!7847511 m!8256632))

(assert (=> b!7847511 m!8256632))

(assert (=> b!7847511 m!8256638))

(assert (=> b!7847412 d!2352901))

(declare-fun d!2352905 () Bool)

(declare-fun nullableFct!3678 (Regex!21072) Bool)

(assert (=> d!2352905 (= (nullable!9346 r1!6227) (nullableFct!3678 r1!6227))))

(declare-fun bs!1967047 () Bool)

(assert (= bs!1967047 d!2352905))

(declare-fun m!8256642 () Bool)

(assert (=> bs!1967047 m!8256642))

(assert (=> b!7847412 d!2352905))

(declare-fun b!7847567 () Bool)

(declare-fun c!1442403 () Bool)

(assert (=> b!7847567 (= c!1442403 (is-Union!21072 r1!6227))))

(declare-fun e!4639254 () Regex!21072)

(declare-fun e!4639253 () Regex!21072)

(assert (=> b!7847567 (= e!4639254 e!4639253)))

(declare-fun b!7847568 () Bool)

(declare-fun call!727185 () Regex!21072)

(declare-fun call!727184 () Regex!21072)

(assert (=> b!7847568 (= e!4639253 (Union!21072 call!727185 call!727184))))

(declare-fun b!7847569 () Bool)

(assert (=> b!7847569 (= e!4639254 (ite (= (h!80255 s1!4084) (c!1442374 r1!6227)) EmptyExpr!21072 EmptyLang!21072))))

(declare-fun b!7847570 () Bool)

(declare-fun e!4639252 () Regex!21072)

(declare-fun call!727186 () Regex!21072)

(assert (=> b!7847570 (= e!4639252 (Concat!29917 call!727186 r1!6227))))

(declare-fun b!7847571 () Bool)

(declare-fun e!4639251 () Regex!21072)

(declare-fun call!727187 () Regex!21072)

(assert (=> b!7847571 (= e!4639251 (Union!21072 (Concat!29917 call!727186 (regTwo!42656 r1!6227)) call!727187))))

(declare-fun b!7847572 () Bool)

(assert (=> b!7847572 (= e!4639253 e!4639252)))

(declare-fun c!1442402 () Bool)

(assert (=> b!7847572 (= c!1442402 (is-Star!21072 r1!6227))))

(declare-fun bm!727177 () Bool)

(assert (=> bm!727177 (= call!727185 (derivativeStep!6309 (ite c!1442403 (regOne!42657 r1!6227) (ite c!1442402 (reg!21401 r1!6227) (regOne!42656 r1!6227))) (h!80255 s1!4084)))))

(declare-fun bm!727178 () Bool)

(assert (=> bm!727178 (= call!727187 call!727184)))

(declare-fun bm!727179 () Bool)

(assert (=> bm!727179 (= call!727186 call!727185)))

(declare-fun d!2352907 () Bool)

(declare-fun lt!2679374 () Regex!21072)

(assert (=> d!2352907 (validRegex!11482 lt!2679374)))

(declare-fun e!4639250 () Regex!21072)

(assert (=> d!2352907 (= lt!2679374 e!4639250)))

(declare-fun c!1442405 () Bool)

(assert (=> d!2352907 (= c!1442405 (or (is-EmptyExpr!21072 r1!6227) (is-EmptyLang!21072 r1!6227)))))

(assert (=> d!2352907 (validRegex!11482 r1!6227)))

(assert (=> d!2352907 (= (derivativeStep!6309 r1!6227 (h!80255 s1!4084)) lt!2679374)))

(declare-fun b!7847566 () Bool)

(declare-fun c!1442404 () Bool)

(assert (=> b!7847566 (= c!1442404 (nullable!9346 (regOne!42656 r1!6227)))))

(assert (=> b!7847566 (= e!4639252 e!4639251)))

(declare-fun b!7847573 () Bool)

(assert (=> b!7847573 (= e!4639251 (Union!21072 (Concat!29917 call!727187 (regTwo!42656 r1!6227)) EmptyLang!21072))))

(declare-fun bm!727180 () Bool)

(assert (=> bm!727180 (= call!727184 (derivativeStep!6309 (ite c!1442403 (regTwo!42657 r1!6227) (ite c!1442404 (regTwo!42656 r1!6227) (regOne!42656 r1!6227))) (h!80255 s1!4084)))))

(declare-fun b!7847574 () Bool)

(assert (=> b!7847574 (= e!4639250 e!4639254)))

(declare-fun c!1442401 () Bool)

(assert (=> b!7847574 (= c!1442401 (is-ElementMatch!21072 r1!6227))))

(declare-fun b!7847575 () Bool)

(assert (=> b!7847575 (= e!4639250 EmptyLang!21072)))

(assert (= (and d!2352907 c!1442405) b!7847575))

(assert (= (and d!2352907 (not c!1442405)) b!7847574))

(assert (= (and b!7847574 c!1442401) b!7847569))

(assert (= (and b!7847574 (not c!1442401)) b!7847567))

(assert (= (and b!7847567 c!1442403) b!7847568))

(assert (= (and b!7847567 (not c!1442403)) b!7847572))

(assert (= (and b!7847572 c!1442402) b!7847570))

(assert (= (and b!7847572 (not c!1442402)) b!7847566))

(assert (= (and b!7847566 c!1442404) b!7847571))

(assert (= (and b!7847566 (not c!1442404)) b!7847573))

(assert (= (or b!7847571 b!7847573) bm!727178))

(assert (= (or b!7847570 b!7847571) bm!727179))

(assert (= (or b!7847568 bm!727178) bm!727180))

(assert (= (or b!7847568 bm!727179) bm!727177))

(declare-fun m!8256644 () Bool)

(assert (=> bm!727177 m!8256644))

(declare-fun m!8256646 () Bool)

(assert (=> d!2352907 m!8256646))

(assert (=> d!2352907 m!8256570))

(declare-fun m!8256648 () Bool)

(assert (=> b!7847566 m!8256648))

(declare-fun m!8256650 () Bool)

(assert (=> bm!727180 m!8256650))

(assert (=> b!7847412 d!2352907))

(declare-fun b!7847586 () Bool)

(declare-fun res!3120875 () Bool)

(declare-fun e!4639259 () Bool)

(assert (=> b!7847586 (=> (not res!3120875) (not e!4639259))))

(declare-fun lt!2679377 () List!73931)

(declare-fun size!42819 (List!73931) Int)

(assert (=> b!7847586 (= res!3120875 (= (size!42819 lt!2679377) (+ (size!42819 (t!388666 s1!4084)) (size!42819 s2!3706))))))

(declare-fun b!7847587 () Bool)

(assert (=> b!7847587 (= e!4639259 (or (not (= s2!3706 Nil!73807)) (= lt!2679377 (t!388666 s1!4084))))))

(declare-fun b!7847585 () Bool)

(declare-fun e!4639260 () List!73931)

(assert (=> b!7847585 (= e!4639260 (Cons!73807 (h!80255 (t!388666 s1!4084)) (++!18082 (t!388666 (t!388666 s1!4084)) s2!3706)))))

(declare-fun b!7847584 () Bool)

(assert (=> b!7847584 (= e!4639260 s2!3706)))

(declare-fun d!2352909 () Bool)

(assert (=> d!2352909 e!4639259))

(declare-fun res!3120874 () Bool)

(assert (=> d!2352909 (=> (not res!3120874) (not e!4639259))))

(declare-fun content!15666 (List!73931) (Set C!42470))

(assert (=> d!2352909 (= res!3120874 (= (content!15666 lt!2679377) (set.union (content!15666 (t!388666 s1!4084)) (content!15666 s2!3706))))))

(assert (=> d!2352909 (= lt!2679377 e!4639260)))

(declare-fun c!1442408 () Bool)

(assert (=> d!2352909 (= c!1442408 (is-Nil!73807 (t!388666 s1!4084)))))

(assert (=> d!2352909 (= (++!18082 (t!388666 s1!4084) s2!3706) lt!2679377)))

(assert (= (and d!2352909 c!1442408) b!7847584))

(assert (= (and d!2352909 (not c!1442408)) b!7847585))

(assert (= (and d!2352909 res!3120874) b!7847586))

(assert (= (and b!7847586 res!3120875) b!7847587))

(declare-fun m!8256652 () Bool)

(assert (=> b!7847586 m!8256652))

(declare-fun m!8256654 () Bool)

(assert (=> b!7847586 m!8256654))

(declare-fun m!8256656 () Bool)

(assert (=> b!7847586 m!8256656))

(declare-fun m!8256658 () Bool)

(assert (=> b!7847585 m!8256658))

(declare-fun m!8256660 () Bool)

(assert (=> d!2352909 m!8256660))

(declare-fun m!8256662 () Bool)

(assert (=> d!2352909 m!8256662))

(declare-fun m!8256664 () Bool)

(assert (=> d!2352909 m!8256664))

(assert (=> b!7847412 d!2352909))

(declare-fun b!7847620 () Bool)

(declare-fun e!4639286 () Bool)

(declare-fun call!727196 () Bool)

(assert (=> b!7847620 (= e!4639286 call!727196)))

(declare-fun b!7847621 () Bool)

(declare-fun e!4639284 () Bool)

(declare-fun e!4639288 () Bool)

(assert (=> b!7847621 (= e!4639284 e!4639288)))

(declare-fun res!3120895 () Bool)

(assert (=> b!7847621 (= res!3120895 (not (nullable!9346 (reg!21401 lt!2679333))))))

(assert (=> b!7847621 (=> (not res!3120895) (not e!4639288))))

(declare-fun b!7847622 () Bool)

(declare-fun res!3120896 () Bool)

(declare-fun e!4639283 () Bool)

(assert (=> b!7847622 (=> res!3120896 e!4639283)))

(assert (=> b!7847622 (= res!3120896 (not (is-Concat!29917 lt!2679333)))))

(declare-fun e!4639285 () Bool)

(assert (=> b!7847622 (= e!4639285 e!4639283)))

(declare-fun b!7847623 () Bool)

(assert (=> b!7847623 (= e!4639284 e!4639285)))

(declare-fun c!1442417 () Bool)

(assert (=> b!7847623 (= c!1442417 (is-Union!21072 lt!2679333))))

(declare-fun bm!727190 () Bool)

(declare-fun call!727197 () Bool)

(assert (=> bm!727190 (= call!727197 (validRegex!11482 (ite c!1442417 (regTwo!42657 lt!2679333) (regOne!42656 lt!2679333))))))

(declare-fun b!7847624 () Bool)

(declare-fun res!3120898 () Bool)

(declare-fun e!4639287 () Bool)

(assert (=> b!7847624 (=> (not res!3120898) (not e!4639287))))

(assert (=> b!7847624 (= res!3120898 call!727196)))

(assert (=> b!7847624 (= e!4639285 e!4639287)))

(declare-fun b!7847625 () Bool)

(declare-fun call!727195 () Bool)

(assert (=> b!7847625 (= e!4639288 call!727195)))

(declare-fun bm!727191 () Bool)

(declare-fun c!1442416 () Bool)

(assert (=> bm!727191 (= call!727195 (validRegex!11482 (ite c!1442416 (reg!21401 lt!2679333) (ite c!1442417 (regOne!42657 lt!2679333) (regTwo!42656 lt!2679333)))))))

(declare-fun bm!727192 () Bool)

(assert (=> bm!727192 (= call!727196 call!727195)))

(declare-fun b!7847626 () Bool)

(assert (=> b!7847626 (= e!4639287 call!727197)))

(declare-fun d!2352911 () Bool)

(declare-fun res!3120894 () Bool)

(declare-fun e!4639282 () Bool)

(assert (=> d!2352911 (=> res!3120894 e!4639282)))

(assert (=> d!2352911 (= res!3120894 (is-ElementMatch!21072 lt!2679333))))

(assert (=> d!2352911 (= (validRegex!11482 lt!2679333) e!4639282)))

(declare-fun b!7847627 () Bool)

(assert (=> b!7847627 (= e!4639282 e!4639284)))

(assert (=> b!7847627 (= c!1442416 (is-Star!21072 lt!2679333))))

(declare-fun b!7847628 () Bool)

(assert (=> b!7847628 (= e!4639283 e!4639286)))

(declare-fun res!3120897 () Bool)

(assert (=> b!7847628 (=> (not res!3120897) (not e!4639286))))

(assert (=> b!7847628 (= res!3120897 call!727197)))

(assert (= (and d!2352911 (not res!3120894)) b!7847627))

(assert (= (and b!7847627 c!1442416) b!7847621))

(assert (= (and b!7847627 (not c!1442416)) b!7847623))

(assert (= (and b!7847621 res!3120895) b!7847625))

(assert (= (and b!7847623 c!1442417) b!7847624))

(assert (= (and b!7847623 (not c!1442417)) b!7847622))

(assert (= (and b!7847624 res!3120898) b!7847626))

(assert (= (and b!7847622 (not res!3120896)) b!7847628))

(assert (= (and b!7847628 res!3120897) b!7847620))

(assert (= (or b!7847624 b!7847620) bm!727192))

(assert (= (or b!7847626 b!7847628) bm!727190))

(assert (= (or b!7847625 bm!727192) bm!727191))

(declare-fun m!8256678 () Bool)

(assert (=> b!7847621 m!8256678))

(declare-fun m!8256680 () Bool)

(assert (=> bm!727190 m!8256680))

(declare-fun m!8256682 () Bool)

(assert (=> bm!727191 m!8256682))

(assert (=> b!7847413 d!2352911))

(declare-fun b!7847645 () Bool)

(declare-fun res!3120908 () Bool)

(declare-fun e!4639296 () Bool)

(assert (=> b!7847645 (=> (not res!3120908) (not e!4639296))))

(declare-fun lt!2679380 () List!73931)

(assert (=> b!7847645 (= res!3120908 (= (size!42819 lt!2679380) (+ (size!42819 s1!4084) (size!42819 s2!3706))))))

(declare-fun b!7847646 () Bool)

(assert (=> b!7847646 (= e!4639296 (or (not (= s2!3706 Nil!73807)) (= lt!2679380 s1!4084)))))

(declare-fun b!7847644 () Bool)

(declare-fun e!4639297 () List!73931)

(assert (=> b!7847644 (= e!4639297 (Cons!73807 (h!80255 s1!4084) (++!18082 (t!388666 s1!4084) s2!3706)))))

(declare-fun b!7847643 () Bool)

(assert (=> b!7847643 (= e!4639297 s2!3706)))

(declare-fun d!2352915 () Bool)

(assert (=> d!2352915 e!4639296))

(declare-fun res!3120907 () Bool)

(assert (=> d!2352915 (=> (not res!3120907) (not e!4639296))))

(assert (=> d!2352915 (= res!3120907 (= (content!15666 lt!2679380) (set.union (content!15666 s1!4084) (content!15666 s2!3706))))))

(assert (=> d!2352915 (= lt!2679380 e!4639297)))

(declare-fun c!1442421 () Bool)

(assert (=> d!2352915 (= c!1442421 (is-Nil!73807 s1!4084))))

(assert (=> d!2352915 (= (++!18082 s1!4084 s2!3706) lt!2679380)))

(assert (= (and d!2352915 c!1442421) b!7847643))

(assert (= (and d!2352915 (not c!1442421)) b!7847644))

(assert (= (and d!2352915 res!3120907) b!7847645))

(assert (= (and b!7847645 res!3120908) b!7847646))

(declare-fun m!8256684 () Bool)

(assert (=> b!7847645 m!8256684))

(declare-fun m!8256686 () Bool)

(assert (=> b!7847645 m!8256686))

(assert (=> b!7847645 m!8256656))

(assert (=> b!7847644 m!8256576))

(declare-fun m!8256688 () Bool)

(assert (=> d!2352915 m!8256688))

(declare-fun m!8256690 () Bool)

(assert (=> d!2352915 m!8256690))

(assert (=> d!2352915 m!8256664))

(assert (=> b!7847413 d!2352915))

(declare-fun b!7847647 () Bool)

(declare-fun e!4639298 () Bool)

(declare-fun e!4639302 () Bool)

(assert (=> b!7847647 (= e!4639298 e!4639302)))

(declare-fun res!3120911 () Bool)

(assert (=> b!7847647 (=> res!3120911 e!4639302)))

(declare-fun call!727199 () Bool)

(assert (=> b!7847647 (= res!3120911 call!727199)))

(declare-fun b!7847648 () Bool)

(declare-fun res!3120909 () Bool)

(declare-fun e!4639303 () Bool)

(assert (=> b!7847648 (=> res!3120909 e!4639303)))

(assert (=> b!7847648 (= res!3120909 (not (is-ElementMatch!21072 lt!2679335)))))

(declare-fun e!4639304 () Bool)

(assert (=> b!7847648 (= e!4639304 e!4639303)))

(declare-fun b!7847649 () Bool)

(declare-fun res!3120916 () Bool)

(assert (=> b!7847649 (=> res!3120916 e!4639303)))

(declare-fun e!4639300 () Bool)

(assert (=> b!7847649 (= res!3120916 e!4639300)))

(declare-fun res!3120912 () Bool)

(assert (=> b!7847649 (=> (not res!3120912) (not e!4639300))))

(declare-fun lt!2679381 () Bool)

(assert (=> b!7847649 (= res!3120912 lt!2679381)))

(declare-fun b!7847650 () Bool)

(declare-fun e!4639301 () Bool)

(assert (=> b!7847650 (= e!4639301 e!4639304)))

(declare-fun c!1442424 () Bool)

(assert (=> b!7847650 (= c!1442424 (is-EmptyLang!21072 lt!2679335))))

(declare-fun b!7847651 () Bool)

(declare-fun res!3120910 () Bool)

(assert (=> b!7847651 (=> (not res!3120910) (not e!4639300))))

(assert (=> b!7847651 (= res!3120910 (not call!727199))))

(declare-fun b!7847652 () Bool)

(assert (=> b!7847652 (= e!4639301 (= lt!2679381 call!727199))))

(declare-fun b!7847653 () Bool)

(assert (=> b!7847653 (= e!4639300 (= (head!16031 lt!2679337) (c!1442374 lt!2679335)))))

(declare-fun b!7847654 () Bool)

(declare-fun res!3120915 () Bool)

(assert (=> b!7847654 (=> res!3120915 e!4639302)))

(assert (=> b!7847654 (= res!3120915 (not (isEmpty!42320 (tail!15574 lt!2679337))))))

(declare-fun b!7847655 () Bool)

(assert (=> b!7847655 (= e!4639304 (not lt!2679381))))

(declare-fun b!7847656 () Bool)

(declare-fun e!4639299 () Bool)

(assert (=> b!7847656 (= e!4639299 (nullable!9346 lt!2679335))))

(declare-fun b!7847657 () Bool)

(declare-fun res!3120913 () Bool)

(assert (=> b!7847657 (=> (not res!3120913) (not e!4639300))))

(assert (=> b!7847657 (= res!3120913 (isEmpty!42320 (tail!15574 lt!2679337)))))

(declare-fun d!2352917 () Bool)

(assert (=> d!2352917 e!4639301))

(declare-fun c!1442422 () Bool)

(assert (=> d!2352917 (= c!1442422 (is-EmptyExpr!21072 lt!2679335))))

(assert (=> d!2352917 (= lt!2679381 e!4639299)))

(declare-fun c!1442423 () Bool)

(assert (=> d!2352917 (= c!1442423 (isEmpty!42320 lt!2679337))))

(assert (=> d!2352917 (validRegex!11482 lt!2679335)))

(assert (=> d!2352917 (= (matchR!10508 lt!2679335 lt!2679337) lt!2679381)))

(declare-fun b!7847658 () Bool)

(assert (=> b!7847658 (= e!4639299 (matchR!10508 (derivativeStep!6309 lt!2679335 (head!16031 lt!2679337)) (tail!15574 lt!2679337)))))

(declare-fun b!7847659 () Bool)

(assert (=> b!7847659 (= e!4639302 (not (= (head!16031 lt!2679337) (c!1442374 lt!2679335))))))

(declare-fun bm!727194 () Bool)

(assert (=> bm!727194 (= call!727199 (isEmpty!42320 lt!2679337))))

(declare-fun b!7847660 () Bool)

(assert (=> b!7847660 (= e!4639303 e!4639298)))

(declare-fun res!3120914 () Bool)

(assert (=> b!7847660 (=> (not res!3120914) (not e!4639298))))

(assert (=> b!7847660 (= res!3120914 (not lt!2679381))))

(assert (= (and d!2352917 c!1442423) b!7847656))

(assert (= (and d!2352917 (not c!1442423)) b!7847658))

(assert (= (and d!2352917 c!1442422) b!7847652))

(assert (= (and d!2352917 (not c!1442422)) b!7847650))

(assert (= (and b!7847650 c!1442424) b!7847655))

(assert (= (and b!7847650 (not c!1442424)) b!7847648))

(assert (= (and b!7847648 (not res!3120909)) b!7847649))

(assert (= (and b!7847649 res!3120912) b!7847651))

(assert (= (and b!7847651 res!3120910) b!7847657))

(assert (= (and b!7847657 res!3120913) b!7847653))

(assert (= (and b!7847649 (not res!3120916)) b!7847660))

(assert (= (and b!7847660 res!3120914) b!7847647))

(assert (= (and b!7847647 (not res!3120911)) b!7847654))

(assert (= (and b!7847654 (not res!3120915)) b!7847659))

(assert (= (or b!7847652 b!7847647 b!7847651) bm!727194))

(declare-fun m!8256694 () Bool)

(assert (=> b!7847656 m!8256694))

(assert (=> b!7847659 m!8256628))

(assert (=> b!7847658 m!8256628))

(assert (=> b!7847658 m!8256628))

(declare-fun m!8256698 () Bool)

(assert (=> b!7847658 m!8256698))

(assert (=> b!7847658 m!8256632))

(assert (=> b!7847658 m!8256698))

(assert (=> b!7847658 m!8256632))

(declare-fun m!8256702 () Bool)

(assert (=> b!7847658 m!8256702))

(assert (=> b!7847653 m!8256628))

(assert (=> bm!727194 m!8256636))

(assert (=> b!7847657 m!8256632))

(assert (=> b!7847657 m!8256632))

(assert (=> b!7847657 m!8256638))

(assert (=> d!2352917 m!8256636))

(declare-fun m!8256708 () Bool)

(assert (=> d!2352917 m!8256708))

(assert (=> b!7847654 m!8256632))

(assert (=> b!7847654 m!8256632))

(assert (=> b!7847654 m!8256638))

(assert (=> b!7847413 d!2352917))

(declare-fun d!2352919 () Bool)

(assert (=> d!2352919 (matchR!10508 (Union!21072 lt!2679336 EmptyLang!21072) lt!2679337)))

(declare-fun lt!2679384 () Unit!168890)

(declare-fun choose!59638 (Regex!21072 Regex!21072 List!73931) Unit!168890)

(assert (=> d!2352919 (= lt!2679384 (choose!59638 lt!2679336 EmptyLang!21072 lt!2679337))))

(declare-fun e!4639307 () Bool)

(assert (=> d!2352919 e!4639307))

(declare-fun res!3120919 () Bool)

(assert (=> d!2352919 (=> (not res!3120919) (not e!4639307))))

(assert (=> d!2352919 (= res!3120919 (validRegex!11482 lt!2679336))))

(assert (=> d!2352919 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!121 lt!2679336 EmptyLang!21072 lt!2679337) lt!2679384)))

(declare-fun b!7847663 () Bool)

(assert (=> b!7847663 (= e!4639307 (validRegex!11482 EmptyLang!21072))))

(assert (= (and d!2352919 res!3120919) b!7847663))

(declare-fun m!8256714 () Bool)

(assert (=> d!2352919 m!8256714))

(declare-fun m!8256716 () Bool)

(assert (=> d!2352919 m!8256716))

(assert (=> d!2352919 m!8256640))

(declare-fun m!8256718 () Bool)

(assert (=> b!7847663 m!8256718))

(assert (=> b!7847413 d!2352919))

(declare-fun b!7847664 () Bool)

(declare-fun e!4639308 () Bool)

(declare-fun e!4639312 () Bool)

(assert (=> b!7847664 (= e!4639308 e!4639312)))

(declare-fun res!3120922 () Bool)

(assert (=> b!7847664 (=> res!3120922 e!4639312)))

(declare-fun call!727200 () Bool)

(assert (=> b!7847664 (= res!3120922 call!727200)))

(declare-fun b!7847665 () Bool)

(declare-fun res!3120920 () Bool)

(declare-fun e!4639313 () Bool)

(assert (=> b!7847665 (=> res!3120920 e!4639313)))

(assert (=> b!7847665 (= res!3120920 (not (is-ElementMatch!21072 r2!6165)))))

(declare-fun e!4639314 () Bool)

(assert (=> b!7847665 (= e!4639314 e!4639313)))

(declare-fun b!7847666 () Bool)

(declare-fun res!3120927 () Bool)

(assert (=> b!7847666 (=> res!3120927 e!4639313)))

(declare-fun e!4639310 () Bool)

(assert (=> b!7847666 (= res!3120927 e!4639310)))

(declare-fun res!3120923 () Bool)

(assert (=> b!7847666 (=> (not res!3120923) (not e!4639310))))

(declare-fun lt!2679385 () Bool)

(assert (=> b!7847666 (= res!3120923 lt!2679385)))

(declare-fun b!7847667 () Bool)

(declare-fun e!4639311 () Bool)

(assert (=> b!7847667 (= e!4639311 e!4639314)))

(declare-fun c!1442427 () Bool)

(assert (=> b!7847667 (= c!1442427 (is-EmptyLang!21072 r2!6165))))

(declare-fun b!7847668 () Bool)

(declare-fun res!3120921 () Bool)

(assert (=> b!7847668 (=> (not res!3120921) (not e!4639310))))

(assert (=> b!7847668 (= res!3120921 (not call!727200))))

(declare-fun b!7847669 () Bool)

(assert (=> b!7847669 (= e!4639311 (= lt!2679385 call!727200))))

(declare-fun b!7847670 () Bool)

(assert (=> b!7847670 (= e!4639310 (= (head!16031 s2!3706) (c!1442374 r2!6165)))))

(declare-fun b!7847671 () Bool)

(declare-fun res!3120926 () Bool)

(assert (=> b!7847671 (=> res!3120926 e!4639312)))

(assert (=> b!7847671 (= res!3120926 (not (isEmpty!42320 (tail!15574 s2!3706))))))

(declare-fun b!7847672 () Bool)

(assert (=> b!7847672 (= e!4639314 (not lt!2679385))))

(declare-fun b!7847673 () Bool)

(declare-fun e!4639309 () Bool)

(assert (=> b!7847673 (= e!4639309 (nullable!9346 r2!6165))))

(declare-fun b!7847674 () Bool)

(declare-fun res!3120924 () Bool)

(assert (=> b!7847674 (=> (not res!3120924) (not e!4639310))))

(assert (=> b!7847674 (= res!3120924 (isEmpty!42320 (tail!15574 s2!3706)))))

(declare-fun d!2352923 () Bool)

(assert (=> d!2352923 e!4639311))

(declare-fun c!1442425 () Bool)

(assert (=> d!2352923 (= c!1442425 (is-EmptyExpr!21072 r2!6165))))

(assert (=> d!2352923 (= lt!2679385 e!4639309)))

(declare-fun c!1442426 () Bool)

(assert (=> d!2352923 (= c!1442426 (isEmpty!42320 s2!3706))))

(assert (=> d!2352923 (validRegex!11482 r2!6165)))

(assert (=> d!2352923 (= (matchR!10508 r2!6165 s2!3706) lt!2679385)))

(declare-fun b!7847675 () Bool)

(assert (=> b!7847675 (= e!4639309 (matchR!10508 (derivativeStep!6309 r2!6165 (head!16031 s2!3706)) (tail!15574 s2!3706)))))

(declare-fun b!7847676 () Bool)

(assert (=> b!7847676 (= e!4639312 (not (= (head!16031 s2!3706) (c!1442374 r2!6165))))))

(declare-fun bm!727195 () Bool)

(assert (=> bm!727195 (= call!727200 (isEmpty!42320 s2!3706))))

(declare-fun b!7847677 () Bool)

(assert (=> b!7847677 (= e!4639313 e!4639308)))

(declare-fun res!3120925 () Bool)

(assert (=> b!7847677 (=> (not res!3120925) (not e!4639308))))

(assert (=> b!7847677 (= res!3120925 (not lt!2679385))))

(assert (= (and d!2352923 c!1442426) b!7847673))

(assert (= (and d!2352923 (not c!1442426)) b!7847675))

(assert (= (and d!2352923 c!1442425) b!7847669))

(assert (= (and d!2352923 (not c!1442425)) b!7847667))

(assert (= (and b!7847667 c!1442427) b!7847672))

(assert (= (and b!7847667 (not c!1442427)) b!7847665))

(assert (= (and b!7847665 (not res!3120920)) b!7847666))

(assert (= (and b!7847666 res!3120923) b!7847668))

(assert (= (and b!7847668 res!3120921) b!7847674))

(assert (= (and b!7847674 res!3120924) b!7847670))

(assert (= (and b!7847666 (not res!3120927)) b!7847677))

(assert (= (and b!7847677 res!3120925) b!7847664))

(assert (= (and b!7847664 (not res!3120922)) b!7847671))

(assert (= (and b!7847671 (not res!3120926)) b!7847676))

(assert (= (or b!7847669 b!7847664 b!7847668) bm!727195))

(declare-fun m!8256720 () Bool)

(assert (=> b!7847673 m!8256720))

(declare-fun m!8256722 () Bool)

(assert (=> b!7847676 m!8256722))

(assert (=> b!7847675 m!8256722))

(assert (=> b!7847675 m!8256722))

(declare-fun m!8256724 () Bool)

(assert (=> b!7847675 m!8256724))

(declare-fun m!8256726 () Bool)

(assert (=> b!7847675 m!8256726))

(assert (=> b!7847675 m!8256724))

(assert (=> b!7847675 m!8256726))

(declare-fun m!8256728 () Bool)

(assert (=> b!7847675 m!8256728))

(assert (=> b!7847670 m!8256722))

(declare-fun m!8256730 () Bool)

(assert (=> bm!727195 m!8256730))

(assert (=> b!7847674 m!8256726))

(assert (=> b!7847674 m!8256726))

(declare-fun m!8256732 () Bool)

(assert (=> b!7847674 m!8256732))

(assert (=> d!2352923 m!8256730))

(assert (=> d!2352923 m!8256564))

(assert (=> b!7847671 m!8256726))

(assert (=> b!7847671 m!8256726))

(assert (=> b!7847671 m!8256732))

(assert (=> b!7847415 d!2352923))

(declare-fun b!7847679 () Bool)

(declare-fun c!1442430 () Bool)

(assert (=> b!7847679 (= c!1442430 (is-Union!21072 lt!2679333))))

(declare-fun e!4639319 () Regex!21072)

(declare-fun e!4639318 () Regex!21072)

(assert (=> b!7847679 (= e!4639319 e!4639318)))

(declare-fun b!7847680 () Bool)

(declare-fun call!727202 () Regex!21072)

(declare-fun call!727201 () Regex!21072)

(assert (=> b!7847680 (= e!4639318 (Union!21072 call!727202 call!727201))))

(declare-fun b!7847681 () Bool)

(assert (=> b!7847681 (= e!4639319 (ite (= (h!80255 s1!4084) (c!1442374 lt!2679333)) EmptyExpr!21072 EmptyLang!21072))))

(declare-fun b!7847682 () Bool)

(declare-fun e!4639317 () Regex!21072)

(declare-fun call!727203 () Regex!21072)

(assert (=> b!7847682 (= e!4639317 (Concat!29917 call!727203 lt!2679333))))

(declare-fun e!4639316 () Regex!21072)

(declare-fun call!727204 () Regex!21072)

(declare-fun b!7847683 () Bool)

(assert (=> b!7847683 (= e!4639316 (Union!21072 (Concat!29917 call!727203 (regTwo!42656 lt!2679333)) call!727204))))

(declare-fun b!7847684 () Bool)

(assert (=> b!7847684 (= e!4639318 e!4639317)))

(declare-fun c!1442429 () Bool)

(assert (=> b!7847684 (= c!1442429 (is-Star!21072 lt!2679333))))

(declare-fun bm!727196 () Bool)

(assert (=> bm!727196 (= call!727202 (derivativeStep!6309 (ite c!1442430 (regOne!42657 lt!2679333) (ite c!1442429 (reg!21401 lt!2679333) (regOne!42656 lt!2679333))) (h!80255 s1!4084)))))

(declare-fun bm!727197 () Bool)

(assert (=> bm!727197 (= call!727204 call!727201)))

(declare-fun bm!727198 () Bool)

(assert (=> bm!727198 (= call!727203 call!727202)))

(declare-fun d!2352925 () Bool)

(declare-fun lt!2679386 () Regex!21072)

(assert (=> d!2352925 (validRegex!11482 lt!2679386)))

(declare-fun e!4639315 () Regex!21072)

(assert (=> d!2352925 (= lt!2679386 e!4639315)))

(declare-fun c!1442432 () Bool)

(assert (=> d!2352925 (= c!1442432 (or (is-EmptyExpr!21072 lt!2679333) (is-EmptyLang!21072 lt!2679333)))))

(assert (=> d!2352925 (validRegex!11482 lt!2679333)))

(assert (=> d!2352925 (= (derivativeStep!6309 lt!2679333 (h!80255 s1!4084)) lt!2679386)))

(declare-fun b!7847678 () Bool)

(declare-fun c!1442431 () Bool)

(assert (=> b!7847678 (= c!1442431 (nullable!9346 (regOne!42656 lt!2679333)))))

(assert (=> b!7847678 (= e!4639317 e!4639316)))

(declare-fun b!7847685 () Bool)

(assert (=> b!7847685 (= e!4639316 (Union!21072 (Concat!29917 call!727204 (regTwo!42656 lt!2679333)) EmptyLang!21072))))

(declare-fun bm!727199 () Bool)

(assert (=> bm!727199 (= call!727201 (derivativeStep!6309 (ite c!1442430 (regTwo!42657 lt!2679333) (ite c!1442431 (regTwo!42656 lt!2679333) (regOne!42656 lt!2679333))) (h!80255 s1!4084)))))

(declare-fun b!7847686 () Bool)

(assert (=> b!7847686 (= e!4639315 e!4639319)))

(declare-fun c!1442428 () Bool)

(assert (=> b!7847686 (= c!1442428 (is-ElementMatch!21072 lt!2679333))))

(declare-fun b!7847687 () Bool)

(assert (=> b!7847687 (= e!4639315 EmptyLang!21072)))

(assert (= (and d!2352925 c!1442432) b!7847687))

(assert (= (and d!2352925 (not c!1442432)) b!7847686))

(assert (= (and b!7847686 c!1442428) b!7847681))

(assert (= (and b!7847686 (not c!1442428)) b!7847679))

(assert (= (and b!7847679 c!1442430) b!7847680))

(assert (= (and b!7847679 (not c!1442430)) b!7847684))

(assert (= (and b!7847684 c!1442429) b!7847682))

(assert (= (and b!7847684 (not c!1442429)) b!7847678))

(assert (= (and b!7847678 c!1442431) b!7847683))

(assert (= (and b!7847678 (not c!1442431)) b!7847685))

(assert (= (or b!7847683 b!7847685) bm!727197))

(assert (= (or b!7847682 b!7847683) bm!727198))

(assert (= (or b!7847680 bm!727197) bm!727199))

(assert (= (or b!7847680 bm!727198) bm!727196))

(declare-fun m!8256734 () Bool)

(assert (=> bm!727196 m!8256734))

(declare-fun m!8256736 () Bool)

(assert (=> d!2352925 m!8256736))

(assert (=> d!2352925 m!8256582))

(declare-fun m!8256738 () Bool)

(assert (=> b!7847678 m!8256738))

(declare-fun m!8256740 () Bool)

(assert (=> bm!727199 m!8256740))

(assert (=> b!7847414 d!2352925))

(declare-fun b!7847688 () Bool)

(declare-fun e!4639320 () Bool)

(declare-fun e!4639324 () Bool)

(assert (=> b!7847688 (= e!4639320 e!4639324)))

(declare-fun res!3120930 () Bool)

(assert (=> b!7847688 (=> res!3120930 e!4639324)))

(declare-fun call!727205 () Bool)

(assert (=> b!7847688 (= res!3120930 call!727205)))

(declare-fun b!7847689 () Bool)

(declare-fun res!3120928 () Bool)

(declare-fun e!4639325 () Bool)

(assert (=> b!7847689 (=> res!3120928 e!4639325)))

(assert (=> b!7847689 (= res!3120928 (not (is-ElementMatch!21072 r1!6227)))))

(declare-fun e!4639326 () Bool)

(assert (=> b!7847689 (= e!4639326 e!4639325)))

(declare-fun b!7847690 () Bool)

(declare-fun res!3120935 () Bool)

(assert (=> b!7847690 (=> res!3120935 e!4639325)))

(declare-fun e!4639322 () Bool)

(assert (=> b!7847690 (= res!3120935 e!4639322)))

(declare-fun res!3120931 () Bool)

(assert (=> b!7847690 (=> (not res!3120931) (not e!4639322))))

(declare-fun lt!2679387 () Bool)

(assert (=> b!7847690 (= res!3120931 lt!2679387)))

(declare-fun b!7847691 () Bool)

(declare-fun e!4639323 () Bool)

(assert (=> b!7847691 (= e!4639323 e!4639326)))

(declare-fun c!1442435 () Bool)

(assert (=> b!7847691 (= c!1442435 (is-EmptyLang!21072 r1!6227))))

(declare-fun b!7847692 () Bool)

(declare-fun res!3120929 () Bool)

(assert (=> b!7847692 (=> (not res!3120929) (not e!4639322))))

(assert (=> b!7847692 (= res!3120929 (not call!727205))))

(declare-fun b!7847693 () Bool)

(assert (=> b!7847693 (= e!4639323 (= lt!2679387 call!727205))))

(declare-fun b!7847694 () Bool)

(assert (=> b!7847694 (= e!4639322 (= (head!16031 s1!4084) (c!1442374 r1!6227)))))

(declare-fun b!7847695 () Bool)

(declare-fun res!3120934 () Bool)

(assert (=> b!7847695 (=> res!3120934 e!4639324)))

(assert (=> b!7847695 (= res!3120934 (not (isEmpty!42320 (tail!15574 s1!4084))))))

(declare-fun b!7847696 () Bool)

(assert (=> b!7847696 (= e!4639326 (not lt!2679387))))

(declare-fun b!7847697 () Bool)

(declare-fun e!4639321 () Bool)

(assert (=> b!7847697 (= e!4639321 (nullable!9346 r1!6227))))

(declare-fun b!7847698 () Bool)

(declare-fun res!3120932 () Bool)

(assert (=> b!7847698 (=> (not res!3120932) (not e!4639322))))

(assert (=> b!7847698 (= res!3120932 (isEmpty!42320 (tail!15574 s1!4084)))))

(declare-fun d!2352927 () Bool)

(assert (=> d!2352927 e!4639323))

(declare-fun c!1442433 () Bool)

(assert (=> d!2352927 (= c!1442433 (is-EmptyExpr!21072 r1!6227))))

(assert (=> d!2352927 (= lt!2679387 e!4639321)))

(declare-fun c!1442434 () Bool)

(assert (=> d!2352927 (= c!1442434 (isEmpty!42320 s1!4084))))

(assert (=> d!2352927 (validRegex!11482 r1!6227)))

(assert (=> d!2352927 (= (matchR!10508 r1!6227 s1!4084) lt!2679387)))

(declare-fun b!7847699 () Bool)

(assert (=> b!7847699 (= e!4639321 (matchR!10508 (derivativeStep!6309 r1!6227 (head!16031 s1!4084)) (tail!15574 s1!4084)))))

(declare-fun b!7847700 () Bool)

(assert (=> b!7847700 (= e!4639324 (not (= (head!16031 s1!4084) (c!1442374 r1!6227))))))

(declare-fun bm!727200 () Bool)

(assert (=> bm!727200 (= call!727205 (isEmpty!42320 s1!4084))))

(declare-fun b!7847701 () Bool)

(assert (=> b!7847701 (= e!4639325 e!4639320)))

(declare-fun res!3120933 () Bool)

(assert (=> b!7847701 (=> (not res!3120933) (not e!4639320))))

(assert (=> b!7847701 (= res!3120933 (not lt!2679387))))

(assert (= (and d!2352927 c!1442434) b!7847697))

(assert (= (and d!2352927 (not c!1442434)) b!7847699))

(assert (= (and d!2352927 c!1442433) b!7847693))

(assert (= (and d!2352927 (not c!1442433)) b!7847691))

(assert (= (and b!7847691 c!1442435) b!7847696))

(assert (= (and b!7847691 (not c!1442435)) b!7847689))

(assert (= (and b!7847689 (not res!3120928)) b!7847690))

(assert (= (and b!7847690 res!3120931) b!7847692))

(assert (= (and b!7847692 res!3120929) b!7847698))

(assert (= (and b!7847698 res!3120932) b!7847694))

(assert (= (and b!7847690 (not res!3120935)) b!7847701))

(assert (= (and b!7847701 res!3120933) b!7847688))

(assert (= (and b!7847688 (not res!3120930)) b!7847695))

(assert (= (and b!7847695 (not res!3120934)) b!7847700))

(assert (= (or b!7847693 b!7847688 b!7847692) bm!727200))

(assert (=> b!7847697 m!8256578))

(declare-fun m!8256742 () Bool)

(assert (=> b!7847700 m!8256742))

(assert (=> b!7847699 m!8256742))

(assert (=> b!7847699 m!8256742))

(declare-fun m!8256744 () Bool)

(assert (=> b!7847699 m!8256744))

(declare-fun m!8256746 () Bool)

(assert (=> b!7847699 m!8256746))

(assert (=> b!7847699 m!8256744))

(assert (=> b!7847699 m!8256746))

(declare-fun m!8256748 () Bool)

(assert (=> b!7847699 m!8256748))

(assert (=> b!7847694 m!8256742))

(declare-fun m!8256750 () Bool)

(assert (=> bm!727200 m!8256750))

(assert (=> b!7847698 m!8256746))

(assert (=> b!7847698 m!8256746))

(declare-fun m!8256752 () Bool)

(assert (=> b!7847698 m!8256752))

(assert (=> d!2352927 m!8256750))

(assert (=> d!2352927 m!8256570))

(assert (=> b!7847695 m!8256746))

(assert (=> b!7847695 m!8256746))

(assert (=> b!7847695 m!8256752))

(assert (=> b!7847416 d!2352927))

(declare-fun b!7847702 () Bool)

(declare-fun e!4639331 () Bool)

(declare-fun call!727207 () Bool)

(assert (=> b!7847702 (= e!4639331 call!727207)))

(declare-fun b!7847703 () Bool)

(declare-fun e!4639329 () Bool)

(declare-fun e!4639333 () Bool)

(assert (=> b!7847703 (= e!4639329 e!4639333)))

(declare-fun res!3120937 () Bool)

(assert (=> b!7847703 (= res!3120937 (not (nullable!9346 (reg!21401 r1!6227))))))

(assert (=> b!7847703 (=> (not res!3120937) (not e!4639333))))

(declare-fun b!7847704 () Bool)

(declare-fun res!3120938 () Bool)

(declare-fun e!4639328 () Bool)

(assert (=> b!7847704 (=> res!3120938 e!4639328)))

(assert (=> b!7847704 (= res!3120938 (not (is-Concat!29917 r1!6227)))))

(declare-fun e!4639330 () Bool)

(assert (=> b!7847704 (= e!4639330 e!4639328)))

(declare-fun b!7847705 () Bool)

(assert (=> b!7847705 (= e!4639329 e!4639330)))

(declare-fun c!1442437 () Bool)

(assert (=> b!7847705 (= c!1442437 (is-Union!21072 r1!6227))))

(declare-fun bm!727201 () Bool)

(declare-fun call!727208 () Bool)

(assert (=> bm!727201 (= call!727208 (validRegex!11482 (ite c!1442437 (regTwo!42657 r1!6227) (regOne!42656 r1!6227))))))

(declare-fun b!7847706 () Bool)

(declare-fun res!3120940 () Bool)

(declare-fun e!4639332 () Bool)

(assert (=> b!7847706 (=> (not res!3120940) (not e!4639332))))

(assert (=> b!7847706 (= res!3120940 call!727207)))

(assert (=> b!7847706 (= e!4639330 e!4639332)))

(declare-fun b!7847707 () Bool)

(declare-fun call!727206 () Bool)

(assert (=> b!7847707 (= e!4639333 call!727206)))

(declare-fun bm!727202 () Bool)

(declare-fun c!1442436 () Bool)

(assert (=> bm!727202 (= call!727206 (validRegex!11482 (ite c!1442436 (reg!21401 r1!6227) (ite c!1442437 (regOne!42657 r1!6227) (regTwo!42656 r1!6227)))))))

(declare-fun bm!727203 () Bool)

(assert (=> bm!727203 (= call!727207 call!727206)))

(declare-fun b!7847708 () Bool)

(assert (=> b!7847708 (= e!4639332 call!727208)))

(declare-fun d!2352929 () Bool)

(declare-fun res!3120936 () Bool)

(declare-fun e!4639327 () Bool)

(assert (=> d!2352929 (=> res!3120936 e!4639327)))

(assert (=> d!2352929 (= res!3120936 (is-ElementMatch!21072 r1!6227))))

(assert (=> d!2352929 (= (validRegex!11482 r1!6227) e!4639327)))

(declare-fun b!7847709 () Bool)

(assert (=> b!7847709 (= e!4639327 e!4639329)))

(assert (=> b!7847709 (= c!1442436 (is-Star!21072 r1!6227))))

(declare-fun b!7847710 () Bool)

(assert (=> b!7847710 (= e!4639328 e!4639331)))

(declare-fun res!3120939 () Bool)

(assert (=> b!7847710 (=> (not res!3120939) (not e!4639331))))

(assert (=> b!7847710 (= res!3120939 call!727208)))

(assert (= (and d!2352929 (not res!3120936)) b!7847709))

(assert (= (and b!7847709 c!1442436) b!7847703))

(assert (= (and b!7847709 (not c!1442436)) b!7847705))

(assert (= (and b!7847703 res!3120937) b!7847707))

(assert (= (and b!7847705 c!1442437) b!7847706))

(assert (= (and b!7847705 (not c!1442437)) b!7847704))

(assert (= (and b!7847706 res!3120940) b!7847708))

(assert (= (and b!7847704 (not res!3120938)) b!7847710))

(assert (= (and b!7847710 res!3120939) b!7847702))

(assert (= (or b!7847706 b!7847702) bm!727203))

(assert (= (or b!7847708 b!7847710) bm!727201))

(assert (= (or b!7847707 bm!727203) bm!727202))

(declare-fun m!8256754 () Bool)

(assert (=> b!7847703 m!8256754))

(declare-fun m!8256756 () Bool)

(assert (=> bm!727201 m!8256756))

(declare-fun m!8256758 () Bool)

(assert (=> bm!727202 m!8256758))

(assert (=> start!743052 d!2352929))

(declare-fun b!7847711 () Bool)

(declare-fun e!4639338 () Bool)

(declare-fun call!727210 () Bool)

(assert (=> b!7847711 (= e!4639338 call!727210)))

(declare-fun b!7847712 () Bool)

(declare-fun e!4639336 () Bool)

(declare-fun e!4639340 () Bool)

(assert (=> b!7847712 (= e!4639336 e!4639340)))

(declare-fun res!3120942 () Bool)

(assert (=> b!7847712 (= res!3120942 (not (nullable!9346 (reg!21401 r2!6165))))))

(assert (=> b!7847712 (=> (not res!3120942) (not e!4639340))))

(declare-fun b!7847713 () Bool)

(declare-fun res!3120943 () Bool)

(declare-fun e!4639335 () Bool)

(assert (=> b!7847713 (=> res!3120943 e!4639335)))

(assert (=> b!7847713 (= res!3120943 (not (is-Concat!29917 r2!6165)))))

(declare-fun e!4639337 () Bool)

(assert (=> b!7847713 (= e!4639337 e!4639335)))

(declare-fun b!7847714 () Bool)

(assert (=> b!7847714 (= e!4639336 e!4639337)))

(declare-fun c!1442439 () Bool)

(assert (=> b!7847714 (= c!1442439 (is-Union!21072 r2!6165))))

(declare-fun bm!727204 () Bool)

(declare-fun call!727211 () Bool)

(assert (=> bm!727204 (= call!727211 (validRegex!11482 (ite c!1442439 (regTwo!42657 r2!6165) (regOne!42656 r2!6165))))))

(declare-fun b!7847715 () Bool)

(declare-fun res!3120945 () Bool)

(declare-fun e!4639339 () Bool)

(assert (=> b!7847715 (=> (not res!3120945) (not e!4639339))))

(assert (=> b!7847715 (= res!3120945 call!727210)))

(assert (=> b!7847715 (= e!4639337 e!4639339)))

(declare-fun b!7847716 () Bool)

(declare-fun call!727209 () Bool)

(assert (=> b!7847716 (= e!4639340 call!727209)))

(declare-fun bm!727205 () Bool)

(declare-fun c!1442438 () Bool)

(assert (=> bm!727205 (= call!727209 (validRegex!11482 (ite c!1442438 (reg!21401 r2!6165) (ite c!1442439 (regOne!42657 r2!6165) (regTwo!42656 r2!6165)))))))

(declare-fun bm!727206 () Bool)

(assert (=> bm!727206 (= call!727210 call!727209)))

(declare-fun b!7847717 () Bool)

(assert (=> b!7847717 (= e!4639339 call!727211)))

(declare-fun d!2352931 () Bool)

(declare-fun res!3120941 () Bool)

(declare-fun e!4639334 () Bool)

(assert (=> d!2352931 (=> res!3120941 e!4639334)))

(assert (=> d!2352931 (= res!3120941 (is-ElementMatch!21072 r2!6165))))

(assert (=> d!2352931 (= (validRegex!11482 r2!6165) e!4639334)))

(declare-fun b!7847718 () Bool)

(assert (=> b!7847718 (= e!4639334 e!4639336)))

(assert (=> b!7847718 (= c!1442438 (is-Star!21072 r2!6165))))

(declare-fun b!7847719 () Bool)

(assert (=> b!7847719 (= e!4639335 e!4639338)))

(declare-fun res!3120944 () Bool)

(assert (=> b!7847719 (=> (not res!3120944) (not e!4639338))))

(assert (=> b!7847719 (= res!3120944 call!727211)))

(assert (= (and d!2352931 (not res!3120941)) b!7847718))

(assert (= (and b!7847718 c!1442438) b!7847712))

(assert (= (and b!7847718 (not c!1442438)) b!7847714))

(assert (= (and b!7847712 res!3120942) b!7847716))

(assert (= (and b!7847714 c!1442439) b!7847715))

(assert (= (and b!7847714 (not c!1442439)) b!7847713))

(assert (= (and b!7847715 res!3120945) b!7847717))

(assert (= (and b!7847713 (not res!3120943)) b!7847719))

(assert (= (and b!7847719 res!3120944) b!7847711))

(assert (= (or b!7847715 b!7847711) bm!727206))

(assert (= (or b!7847717 b!7847719) bm!727204))

(assert (= (or b!7847716 bm!727206) bm!727205))

(declare-fun m!8256760 () Bool)

(assert (=> b!7847712 m!8256760))

(declare-fun m!8256762 () Bool)

(assert (=> bm!727204 m!8256762))

(declare-fun m!8256764 () Bool)

(assert (=> bm!727205 m!8256764))

(assert (=> b!7847405 d!2352931))

(declare-fun e!4639343 () Bool)

(assert (=> b!7847406 (= tp!2323646 e!4639343)))

(declare-fun b!7847730 () Bool)

(assert (=> b!7847730 (= e!4639343 tp_is_empty!52543)))

(declare-fun b!7847733 () Bool)

(declare-fun tp!2323707 () Bool)

(declare-fun tp!2323703 () Bool)

(assert (=> b!7847733 (= e!4639343 (and tp!2323707 tp!2323703))))

(declare-fun b!7847731 () Bool)

(declare-fun tp!2323704 () Bool)

(declare-fun tp!2323706 () Bool)

(assert (=> b!7847731 (= e!4639343 (and tp!2323704 tp!2323706))))

(declare-fun b!7847732 () Bool)

(declare-fun tp!2323705 () Bool)

(assert (=> b!7847732 (= e!4639343 tp!2323705)))

(assert (= (and b!7847406 (is-ElementMatch!21072 (regOne!42656 r2!6165))) b!7847730))

(assert (= (and b!7847406 (is-Concat!29917 (regOne!42656 r2!6165))) b!7847731))

(assert (= (and b!7847406 (is-Star!21072 (regOne!42656 r2!6165))) b!7847732))

(assert (= (and b!7847406 (is-Union!21072 (regOne!42656 r2!6165))) b!7847733))

(declare-fun e!4639344 () Bool)

(assert (=> b!7847406 (= tp!2323653 e!4639344)))

(declare-fun b!7847734 () Bool)

(assert (=> b!7847734 (= e!4639344 tp_is_empty!52543)))

(declare-fun b!7847737 () Bool)

(declare-fun tp!2323712 () Bool)

(declare-fun tp!2323708 () Bool)

(assert (=> b!7847737 (= e!4639344 (and tp!2323712 tp!2323708))))

(declare-fun b!7847735 () Bool)

(declare-fun tp!2323709 () Bool)

(declare-fun tp!2323711 () Bool)

(assert (=> b!7847735 (= e!4639344 (and tp!2323709 tp!2323711))))

(declare-fun b!7847736 () Bool)

(declare-fun tp!2323710 () Bool)

(assert (=> b!7847736 (= e!4639344 tp!2323710)))

(assert (= (and b!7847406 (is-ElementMatch!21072 (regTwo!42656 r2!6165))) b!7847734))

(assert (= (and b!7847406 (is-Concat!29917 (regTwo!42656 r2!6165))) b!7847735))

(assert (= (and b!7847406 (is-Star!21072 (regTwo!42656 r2!6165))) b!7847736))

(assert (= (and b!7847406 (is-Union!21072 (regTwo!42656 r2!6165))) b!7847737))

(declare-fun e!4639345 () Bool)

(assert (=> b!7847417 (= tp!2323652 e!4639345)))

(declare-fun b!7847738 () Bool)

(assert (=> b!7847738 (= e!4639345 tp_is_empty!52543)))

(declare-fun b!7847741 () Bool)

(declare-fun tp!2323717 () Bool)

(declare-fun tp!2323713 () Bool)

(assert (=> b!7847741 (= e!4639345 (and tp!2323717 tp!2323713))))

(declare-fun b!7847739 () Bool)

(declare-fun tp!2323714 () Bool)

(declare-fun tp!2323716 () Bool)

(assert (=> b!7847739 (= e!4639345 (and tp!2323714 tp!2323716))))

(declare-fun b!7847740 () Bool)

(declare-fun tp!2323715 () Bool)

(assert (=> b!7847740 (= e!4639345 tp!2323715)))

(assert (= (and b!7847417 (is-ElementMatch!21072 (regOne!42656 r1!6227))) b!7847738))

(assert (= (and b!7847417 (is-Concat!29917 (regOne!42656 r1!6227))) b!7847739))

(assert (= (and b!7847417 (is-Star!21072 (regOne!42656 r1!6227))) b!7847740))

(assert (= (and b!7847417 (is-Union!21072 (regOne!42656 r1!6227))) b!7847741))

(declare-fun e!4639346 () Bool)

(assert (=> b!7847417 (= tp!2323655 e!4639346)))

(declare-fun b!7847742 () Bool)

(assert (=> b!7847742 (= e!4639346 tp_is_empty!52543)))

(declare-fun b!7847745 () Bool)

(declare-fun tp!2323722 () Bool)

(declare-fun tp!2323718 () Bool)

(assert (=> b!7847745 (= e!4639346 (and tp!2323722 tp!2323718))))

(declare-fun b!7847743 () Bool)

(declare-fun tp!2323719 () Bool)

(declare-fun tp!2323721 () Bool)

(assert (=> b!7847743 (= e!4639346 (and tp!2323719 tp!2323721))))

(declare-fun b!7847744 () Bool)

(declare-fun tp!2323720 () Bool)

(assert (=> b!7847744 (= e!4639346 tp!2323720)))

(assert (= (and b!7847417 (is-ElementMatch!21072 (regTwo!42656 r1!6227))) b!7847742))

(assert (= (and b!7847417 (is-Concat!29917 (regTwo!42656 r1!6227))) b!7847743))

(assert (= (and b!7847417 (is-Star!21072 (regTwo!42656 r1!6227))) b!7847744))

(assert (= (and b!7847417 (is-Union!21072 (regTwo!42656 r1!6227))) b!7847745))

(declare-fun e!4639347 () Bool)

(assert (=> b!7847408 (= tp!2323654 e!4639347)))

(declare-fun b!7847746 () Bool)

(assert (=> b!7847746 (= e!4639347 tp_is_empty!52543)))

(declare-fun b!7847749 () Bool)

(declare-fun tp!2323727 () Bool)

(declare-fun tp!2323723 () Bool)

(assert (=> b!7847749 (= e!4639347 (and tp!2323727 tp!2323723))))

(declare-fun b!7847747 () Bool)

(declare-fun tp!2323724 () Bool)

(declare-fun tp!2323726 () Bool)

(assert (=> b!7847747 (= e!4639347 (and tp!2323724 tp!2323726))))

(declare-fun b!7847748 () Bool)

(declare-fun tp!2323725 () Bool)

(assert (=> b!7847748 (= e!4639347 tp!2323725)))

(assert (= (and b!7847408 (is-ElementMatch!21072 (regOne!42657 r1!6227))) b!7847746))

(assert (= (and b!7847408 (is-Concat!29917 (regOne!42657 r1!6227))) b!7847747))

(assert (= (and b!7847408 (is-Star!21072 (regOne!42657 r1!6227))) b!7847748))

(assert (= (and b!7847408 (is-Union!21072 (regOne!42657 r1!6227))) b!7847749))

(declare-fun e!4639348 () Bool)

(assert (=> b!7847408 (= tp!2323656 e!4639348)))

(declare-fun b!7847750 () Bool)

(assert (=> b!7847750 (= e!4639348 tp_is_empty!52543)))

(declare-fun b!7847753 () Bool)

(declare-fun tp!2323732 () Bool)

(declare-fun tp!2323728 () Bool)

(assert (=> b!7847753 (= e!4639348 (and tp!2323732 tp!2323728))))

(declare-fun b!7847751 () Bool)

(declare-fun tp!2323729 () Bool)

(declare-fun tp!2323731 () Bool)

(assert (=> b!7847751 (= e!4639348 (and tp!2323729 tp!2323731))))

(declare-fun b!7847752 () Bool)

(declare-fun tp!2323730 () Bool)

(assert (=> b!7847752 (= e!4639348 tp!2323730)))

(assert (= (and b!7847408 (is-ElementMatch!21072 (regTwo!42657 r1!6227))) b!7847750))

(assert (= (and b!7847408 (is-Concat!29917 (regTwo!42657 r1!6227))) b!7847751))

(assert (= (and b!7847408 (is-Star!21072 (regTwo!42657 r1!6227))) b!7847752))

(assert (= (and b!7847408 (is-Union!21072 (regTwo!42657 r1!6227))) b!7847753))

(declare-fun e!4639349 () Bool)

(assert (=> b!7847419 (= tp!2323650 e!4639349)))

(declare-fun b!7847754 () Bool)

(assert (=> b!7847754 (= e!4639349 tp_is_empty!52543)))

(declare-fun b!7847757 () Bool)

(declare-fun tp!2323737 () Bool)

(declare-fun tp!2323733 () Bool)

(assert (=> b!7847757 (= e!4639349 (and tp!2323737 tp!2323733))))

(declare-fun b!7847755 () Bool)

(declare-fun tp!2323734 () Bool)

(declare-fun tp!2323736 () Bool)

(assert (=> b!7847755 (= e!4639349 (and tp!2323734 tp!2323736))))

(declare-fun b!7847756 () Bool)

(declare-fun tp!2323735 () Bool)

(assert (=> b!7847756 (= e!4639349 tp!2323735)))

(assert (= (and b!7847419 (is-ElementMatch!21072 (reg!21401 r1!6227))) b!7847754))

(assert (= (and b!7847419 (is-Concat!29917 (reg!21401 r1!6227))) b!7847755))

(assert (= (and b!7847419 (is-Star!21072 (reg!21401 r1!6227))) b!7847756))

(assert (= (and b!7847419 (is-Union!21072 (reg!21401 r1!6227))) b!7847757))

(declare-fun e!4639350 () Bool)

(assert (=> b!7847418 (= tp!2323648 e!4639350)))

(declare-fun b!7847758 () Bool)

(assert (=> b!7847758 (= e!4639350 tp_is_empty!52543)))

(declare-fun b!7847761 () Bool)

(declare-fun tp!2323742 () Bool)

(declare-fun tp!2323738 () Bool)

(assert (=> b!7847761 (= e!4639350 (and tp!2323742 tp!2323738))))

(declare-fun b!7847759 () Bool)

(declare-fun tp!2323739 () Bool)

(declare-fun tp!2323741 () Bool)

(assert (=> b!7847759 (= e!4639350 (and tp!2323739 tp!2323741))))

(declare-fun b!7847760 () Bool)

(declare-fun tp!2323740 () Bool)

(assert (=> b!7847760 (= e!4639350 tp!2323740)))

(assert (= (and b!7847418 (is-ElementMatch!21072 (regOne!42657 r2!6165))) b!7847758))

(assert (= (and b!7847418 (is-Concat!29917 (regOne!42657 r2!6165))) b!7847759))

(assert (= (and b!7847418 (is-Star!21072 (regOne!42657 r2!6165))) b!7847760))

(assert (= (and b!7847418 (is-Union!21072 (regOne!42657 r2!6165))) b!7847761))

(declare-fun e!4639351 () Bool)

(assert (=> b!7847418 (= tp!2323647 e!4639351)))

(declare-fun b!7847762 () Bool)

(assert (=> b!7847762 (= e!4639351 tp_is_empty!52543)))

(declare-fun b!7847765 () Bool)

(declare-fun tp!2323747 () Bool)

(declare-fun tp!2323743 () Bool)

(assert (=> b!7847765 (= e!4639351 (and tp!2323747 tp!2323743))))

(declare-fun b!7847763 () Bool)

(declare-fun tp!2323744 () Bool)

(declare-fun tp!2323746 () Bool)

(assert (=> b!7847763 (= e!4639351 (and tp!2323744 tp!2323746))))

(declare-fun b!7847764 () Bool)

(declare-fun tp!2323745 () Bool)

(assert (=> b!7847764 (= e!4639351 tp!2323745)))

(assert (= (and b!7847418 (is-ElementMatch!21072 (regTwo!42657 r2!6165))) b!7847762))

(assert (= (and b!7847418 (is-Concat!29917 (regTwo!42657 r2!6165))) b!7847763))

(assert (= (and b!7847418 (is-Star!21072 (regTwo!42657 r2!6165))) b!7847764))

(assert (= (and b!7847418 (is-Union!21072 (regTwo!42657 r2!6165))) b!7847765))

(declare-fun b!7847770 () Bool)

(declare-fun e!4639354 () Bool)

(declare-fun tp!2323750 () Bool)

(assert (=> b!7847770 (= e!4639354 (and tp_is_empty!52543 tp!2323750))))

(assert (=> b!7847420 (= tp!2323649 e!4639354)))

(assert (= (and b!7847420 (is-Cons!73807 (t!388666 s1!4084))) b!7847770))

(declare-fun b!7847771 () Bool)

(declare-fun e!4639355 () Bool)

(declare-fun tp!2323751 () Bool)

(assert (=> b!7847771 (= e!4639355 (and tp_is_empty!52543 tp!2323751))))

(assert (=> b!7847409 (= tp!2323645 e!4639355)))

(assert (= (and b!7847409 (is-Cons!73807 (t!388666 s2!3706))) b!7847771))

(declare-fun e!4639356 () Bool)

(assert (=> b!7847421 (= tp!2323651 e!4639356)))

(declare-fun b!7847774 () Bool)

(assert (=> b!7847774 (= e!4639356 tp_is_empty!52543)))

(declare-fun b!7847777 () Bool)

(declare-fun tp!2323756 () Bool)

(declare-fun tp!2323752 () Bool)

(assert (=> b!7847777 (= e!4639356 (and tp!2323756 tp!2323752))))

(declare-fun b!7847775 () Bool)

(declare-fun tp!2323753 () Bool)

(declare-fun tp!2323755 () Bool)

(assert (=> b!7847775 (= e!4639356 (and tp!2323753 tp!2323755))))

(declare-fun b!7847776 () Bool)

(declare-fun tp!2323754 () Bool)

(assert (=> b!7847776 (= e!4639356 tp!2323754)))

(assert (= (and b!7847421 (is-ElementMatch!21072 (reg!21401 r2!6165))) b!7847774))

(assert (= (and b!7847421 (is-Concat!29917 (reg!21401 r2!6165))) b!7847775))

(assert (= (and b!7847421 (is-Star!21072 (reg!21401 r2!6165))) b!7847776))

(assert (= (and b!7847421 (is-Union!21072 (reg!21401 r2!6165))) b!7847777))

(push 1)

(assert (not b!7847747))

(assert (not d!2352899))

(assert (not b!7847755))

(assert (not d!2352925))

(assert tp_is_empty!52543)

(assert (not b!7847764))

(assert (not b!7847775))

(assert (not bm!727194))

(assert (not b!7847673))

(assert (not b!7847658))

(assert (not b!7847753))

(assert (not b!7847566))

(assert (not b!7847675))

(assert (not b!7847751))

(assert (not b!7847621))

(assert (not b!7847659))

(assert (not b!7847745))

(assert (not b!7847741))

(assert (not b!7847663))

(assert (not b!7847749))

(assert (not b!7847694))

(assert (not b!7847644))

(assert (not b!7847756))

(assert (not b!7847475))

(assert (not b!7847735))

(assert (not b!7847732))

(assert (not b!7847760))

(assert (not b!7847698))

(assert (not b!7847743))

(assert (not b!7847515))

(assert (not b!7847736))

(assert (not bm!727168))

(assert (not d!2352915))

(assert (not bm!727200))

(assert (not b!7847737))

(assert (not d!2352917))

(assert (not bm!727195))

(assert (not d!2352927))

(assert (not b!7847748))

(assert (not b!7847733))

(assert (not b!7847516))

(assert (not b!7847770))

(assert (not bm!727180))

(assert (not b!7847757))

(assert (not b!7847697))

(assert (not b!7847645))

(assert (not bm!727205))

(assert (not b!7847670))

(assert (not b!7847777))

(assert (not b!7847695))

(assert (not b!7847731))

(assert (not bm!727191))

(assert (not bm!727202))

(assert (not b!7847703))

(assert (not bm!727199))

(assert (not bm!727177))

(assert (not d!2352909))

(assert (not d!2352901))

(assert (not b!7847676))

(assert (not b!7847510))

(assert (not b!7847585))

(assert (not bm!727204))

(assert (not d!2352907))

(assert (not b!7847776))

(assert (not b!7847656))

(assert (not d!2352905))

(assert (not bm!727190))

(assert (not b!7847739))

(assert (not b!7847654))

(assert (not b!7847700))

(assert (not bm!727196))

(assert (not b!7847761))

(assert (not b!7847699))

(assert (not b!7847744))

(assert (not b!7847678))

(assert (not d!2352919))

(assert (not b!7847511))

(assert (not b!7847513))

(assert (not d!2352923))

(assert (not b!7847586))

(assert (not b!7847740))

(assert (not b!7847674))

(assert (not bm!727201))

(assert (not b!7847671))

(assert (not b!7847759))

(assert (not b!7847765))

(assert (not b!7847712))

(assert (not b!7847657))

(assert (not b!7847771))

(assert (not b!7847653))

(assert (not b!7847763))

(assert (not b!7847752))

(assert (not b!7847514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

