; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725012 () Bool)

(assert start!725012)

(declare-fun b!7487120 () Bool)

(declare-fun e!4465088 () Bool)

(declare-fun tp!2172913 () Bool)

(assert (=> b!7487120 (= e!4465088 tp!2172913)))

(declare-fun res!3003366 () Bool)

(declare-fun e!4465086 () Bool)

(assert (=> start!725012 (=> (not res!3003366) (not e!4465086))))

(declare-datatypes ((C!39522 0))(
  ( (C!39523 (val!30159 Int)) )
))
(declare-datatypes ((Regex!19624 0))(
  ( (ElementMatch!19624 (c!1382607 C!39522)) (Concat!28469 (regOne!39760 Regex!19624) (regTwo!39760 Regex!19624)) (EmptyExpr!19624) (Star!19624 (reg!19953 Regex!19624)) (EmptyLang!19624) (Union!19624 (regOne!39761 Regex!19624) (regTwo!39761 Regex!19624)) )
))
(declare-fun r1!5845 () Regex!19624)

(declare-fun validRegex!10138 (Regex!19624) Bool)

(assert (=> start!725012 (= res!3003366 (validRegex!10138 r1!5845))))

(assert (=> start!725012 e!4465086))

(declare-fun e!4465087 () Bool)

(assert (=> start!725012 e!4465087))

(assert (=> start!725012 e!4465088))

(declare-fun e!4465083 () Bool)

(assert (=> start!725012 e!4465083))

(declare-fun e!4465084 () Bool)

(assert (=> start!725012 e!4465084))

(declare-fun b!7487121 () Bool)

(declare-fun tp_is_empty!49537 () Bool)

(assert (=> b!7487121 (= e!4465087 tp_is_empty!49537)))

(declare-fun b!7487122 () Bool)

(assert (=> b!7487122 (= e!4465088 tp_is_empty!49537)))

(declare-fun b!7487123 () Bool)

(declare-fun tp!2172925 () Bool)

(declare-fun tp!2172914 () Bool)

(assert (=> b!7487123 (= e!4465083 (and tp!2172925 tp!2172914))))

(declare-fun b!7487124 () Bool)

(declare-fun tp!2172911 () Bool)

(declare-fun tp!2172918 () Bool)

(assert (=> b!7487124 (= e!4465087 (and tp!2172911 tp!2172918))))

(declare-fun b!7487125 () Bool)

(declare-fun e!4465085 () Bool)

(declare-fun lt!2628917 () Regex!19624)

(assert (=> b!7487125 (= e!4465085 (validRegex!10138 lt!2628917))))

(declare-fun b!7487126 () Bool)

(declare-fun res!3003367 () Bool)

(assert (=> b!7487126 (=> (not res!3003367) (not e!4465086))))

(declare-fun r2!5783 () Regex!19624)

(assert (=> b!7487126 (= res!3003367 (validRegex!10138 r2!5783))))

(declare-fun b!7487127 () Bool)

(declare-fun tp!2172922 () Bool)

(declare-fun tp!2172915 () Bool)

(assert (=> b!7487127 (= e!4465088 (and tp!2172922 tp!2172915))))

(declare-fun b!7487128 () Bool)

(declare-fun tp!2172910 () Bool)

(assert (=> b!7487128 (= e!4465087 tp!2172910)))

(declare-fun b!7487129 () Bool)

(assert (=> b!7487129 (= e!4465083 tp_is_empty!49537)))

(declare-fun b!7487130 () Bool)

(declare-fun tp!2172921 () Bool)

(assert (=> b!7487130 (= e!4465084 (and tp_is_empty!49537 tp!2172921))))

(declare-fun b!7487131 () Bool)

(declare-fun tp!2172923 () Bool)

(assert (=> b!7487131 (= e!4465083 tp!2172923)))

(declare-fun b!7487132 () Bool)

(declare-fun tp!2172917 () Bool)

(declare-fun tp!2172912 () Bool)

(assert (=> b!7487132 (= e!4465087 (and tp!2172917 tp!2172912))))

(declare-fun b!7487133 () Bool)

(declare-fun tp!2172920 () Bool)

(declare-fun tp!2172924 () Bool)

(assert (=> b!7487133 (= e!4465088 (and tp!2172920 tp!2172924))))

(declare-fun b!7487134 () Bool)

(assert (=> b!7487134 (= e!4465086 (not e!4465085))))

(declare-fun res!3003368 () Bool)

(assert (=> b!7487134 (=> res!3003368 e!4465085)))

(declare-fun lt!2628916 () Bool)

(assert (=> b!7487134 (= res!3003368 (not lt!2628916))))

(declare-fun lt!2628921 () Regex!19624)

(declare-datatypes ((List!72338 0))(
  ( (Nil!72214) (Cons!72214 (h!78662 C!39522) (t!386907 List!72338)) )
))
(declare-fun s!13591 () List!72338)

(declare-fun matchR!9386 (Regex!19624 List!72338) Bool)

(declare-fun matchRSpec!4301 (Regex!19624 List!72338) Bool)

(assert (=> b!7487134 (= (matchR!9386 lt!2628921 s!13591) (matchRSpec!4301 lt!2628921 s!13591))))

(declare-datatypes ((Unit!166079 0))(
  ( (Unit!166080) )
))
(declare-fun lt!2628918 () Unit!166079)

(declare-fun mainMatchTheorem!4295 (Regex!19624 List!72338) Unit!166079)

(assert (=> b!7487134 (= lt!2628918 (mainMatchTheorem!4295 lt!2628921 s!13591))))

(declare-fun lt!2628919 () Regex!19624)

(assert (=> b!7487134 (= lt!2628916 (matchRSpec!4301 lt!2628919 s!13591))))

(assert (=> b!7487134 (= lt!2628916 (matchR!9386 lt!2628919 s!13591))))

(declare-fun lt!2628920 () Unit!166079)

(assert (=> b!7487134 (= lt!2628920 (mainMatchTheorem!4295 lt!2628919 s!13591))))

(declare-fun rTail!78 () Regex!19624)

(assert (=> b!7487134 (= lt!2628921 (Union!19624 (Concat!28469 r1!5845 rTail!78) (Concat!28469 r2!5783 rTail!78)))))

(assert (=> b!7487134 (= lt!2628919 (Concat!28469 lt!2628917 rTail!78))))

(assert (=> b!7487134 (= lt!2628917 (Union!19624 r1!5845 r2!5783))))

(declare-fun b!7487135 () Bool)

(declare-fun tp!2172919 () Bool)

(declare-fun tp!2172916 () Bool)

(assert (=> b!7487135 (= e!4465083 (and tp!2172919 tp!2172916))))

(declare-fun b!7487136 () Bool)

(declare-fun res!3003365 () Bool)

(assert (=> b!7487136 (=> (not res!3003365) (not e!4465086))))

(assert (=> b!7487136 (= res!3003365 (validRegex!10138 rTail!78))))

(assert (= (and start!725012 res!3003366) b!7487126))

(assert (= (and b!7487126 res!3003367) b!7487136))

(assert (= (and b!7487136 res!3003365) b!7487134))

(assert (= (and b!7487134 (not res!3003368)) b!7487125))

(assert (= (and start!725012 (is-ElementMatch!19624 r1!5845)) b!7487121))

(assert (= (and start!725012 (is-Concat!28469 r1!5845)) b!7487124))

(assert (= (and start!725012 (is-Star!19624 r1!5845)) b!7487128))

(assert (= (and start!725012 (is-Union!19624 r1!5845)) b!7487132))

(assert (= (and start!725012 (is-ElementMatch!19624 r2!5783)) b!7487122))

(assert (= (and start!725012 (is-Concat!28469 r2!5783)) b!7487127))

(assert (= (and start!725012 (is-Star!19624 r2!5783)) b!7487120))

(assert (= (and start!725012 (is-Union!19624 r2!5783)) b!7487133))

(assert (= (and start!725012 (is-ElementMatch!19624 rTail!78)) b!7487129))

(assert (= (and start!725012 (is-Concat!28469 rTail!78)) b!7487135))

(assert (= (and start!725012 (is-Star!19624 rTail!78)) b!7487131))

(assert (= (and start!725012 (is-Union!19624 rTail!78)) b!7487123))

(assert (= (and start!725012 (is-Cons!72214 s!13591)) b!7487130))

(declare-fun m!8075680 () Bool)

(assert (=> b!7487125 m!8075680))

(declare-fun m!8075682 () Bool)

(assert (=> start!725012 m!8075682))

(declare-fun m!8075684 () Bool)

(assert (=> b!7487136 m!8075684))

(declare-fun m!8075686 () Bool)

(assert (=> b!7487126 m!8075686))

(declare-fun m!8075688 () Bool)

(assert (=> b!7487134 m!8075688))

(declare-fun m!8075690 () Bool)

(assert (=> b!7487134 m!8075690))

(declare-fun m!8075692 () Bool)

(assert (=> b!7487134 m!8075692))

(declare-fun m!8075694 () Bool)

(assert (=> b!7487134 m!8075694))

(declare-fun m!8075696 () Bool)

(assert (=> b!7487134 m!8075696))

(declare-fun m!8075698 () Bool)

(assert (=> b!7487134 m!8075698))

(push 1)

(assert (not b!7487124))

(assert (not b!7487126))

(assert (not b!7487131))

(assert (not b!7487134))

(assert (not b!7487130))

(assert (not b!7487135))

(assert tp_is_empty!49537)

(assert (not b!7487120))

(assert (not start!725012))

(assert (not b!7487136))

(assert (not b!7487133))

(assert (not b!7487132))

(assert (not b!7487127))

(assert (not b!7487128))

(assert (not b!7487123))

(assert (not b!7487125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7487274 () Bool)

(declare-fun e!4465169 () Bool)

(declare-fun head!15359 (List!72338) C!39522)

(assert (=> b!7487274 (= e!4465169 (= (head!15359 s!13591) (c!1382607 lt!2628921)))))

(declare-fun b!7487275 () Bool)

(declare-fun res!3003428 () Bool)

(assert (=> b!7487275 (=> (not res!3003428) (not e!4465169))))

(declare-fun call!687319 () Bool)

(assert (=> b!7487275 (= res!3003428 (not call!687319))))

(declare-fun b!7487276 () Bool)

(declare-fun res!3003423 () Bool)

(declare-fun e!4465168 () Bool)

(assert (=> b!7487276 (=> res!3003423 e!4465168)))

(declare-fun isEmpty!41233 (List!72338) Bool)

(declare-fun tail!14928 (List!72338) List!72338)

(assert (=> b!7487276 (= res!3003423 (not (isEmpty!41233 (tail!14928 s!13591))))))

(declare-fun b!7487277 () Bool)

(declare-fun res!3003430 () Bool)

(declare-fun e!4465167 () Bool)

(assert (=> b!7487277 (=> res!3003430 e!4465167)))

(assert (=> b!7487277 (= res!3003430 e!4465169)))

(declare-fun res!3003426 () Bool)

(assert (=> b!7487277 (=> (not res!3003426) (not e!4465169))))

(declare-fun lt!2628942 () Bool)

(assert (=> b!7487277 (= res!3003426 lt!2628942)))

(declare-fun b!7487278 () Bool)

(assert (=> b!7487278 (= e!4465168 (not (= (head!15359 s!13591) (c!1382607 lt!2628921))))))

(declare-fun b!7487279 () Bool)

(declare-fun e!4465166 () Bool)

(declare-fun nullable!8562 (Regex!19624) Bool)

(assert (=> b!7487279 (= e!4465166 (nullable!8562 lt!2628921))))

(declare-fun b!7487280 () Bool)

(declare-fun derivativeStep!5619 (Regex!19624 C!39522) Regex!19624)

(assert (=> b!7487280 (= e!4465166 (matchR!9386 (derivativeStep!5619 lt!2628921 (head!15359 s!13591)) (tail!14928 s!13591)))))

(declare-fun b!7487281 () Bool)

(declare-fun e!4465163 () Bool)

(declare-fun e!4465164 () Bool)

(assert (=> b!7487281 (= e!4465163 e!4465164)))

(declare-fun c!1382631 () Bool)

(assert (=> b!7487281 (= c!1382631 (is-EmptyLang!19624 lt!2628921))))

(declare-fun b!7487282 () Bool)

(declare-fun e!4465165 () Bool)

(assert (=> b!7487282 (= e!4465167 e!4465165)))

(declare-fun res!3003425 () Bool)

(assert (=> b!7487282 (=> (not res!3003425) (not e!4465165))))

(assert (=> b!7487282 (= res!3003425 (not lt!2628942))))

(declare-fun b!7487283 () Bool)

(assert (=> b!7487283 (= e!4465165 e!4465168)))

(declare-fun res!3003429 () Bool)

(assert (=> b!7487283 (=> res!3003429 e!4465168)))

(assert (=> b!7487283 (= res!3003429 call!687319)))

(declare-fun b!7487284 () Bool)

(declare-fun res!3003427 () Bool)

(assert (=> b!7487284 (=> (not res!3003427) (not e!4465169))))

(assert (=> b!7487284 (= res!3003427 (isEmpty!41233 (tail!14928 s!13591)))))

(declare-fun b!7487285 () Bool)

(assert (=> b!7487285 (= e!4465164 (not lt!2628942))))

(declare-fun d!2300836 () Bool)

(assert (=> d!2300836 e!4465163))

(declare-fun c!1382633 () Bool)

(assert (=> d!2300836 (= c!1382633 (is-EmptyExpr!19624 lt!2628921))))

(assert (=> d!2300836 (= lt!2628942 e!4465166)))

(declare-fun c!1382632 () Bool)

(assert (=> d!2300836 (= c!1382632 (isEmpty!41233 s!13591))))

(assert (=> d!2300836 (validRegex!10138 lt!2628921)))

(assert (=> d!2300836 (= (matchR!9386 lt!2628921 s!13591) lt!2628942)))

(declare-fun bm!687314 () Bool)

(assert (=> bm!687314 (= call!687319 (isEmpty!41233 s!13591))))

(declare-fun b!7487286 () Bool)

(assert (=> b!7487286 (= e!4465163 (= lt!2628942 call!687319))))

(declare-fun b!7487287 () Bool)

(declare-fun res!3003424 () Bool)

(assert (=> b!7487287 (=> res!3003424 e!4465167)))

(assert (=> b!7487287 (= res!3003424 (not (is-ElementMatch!19624 lt!2628921)))))

(assert (=> b!7487287 (= e!4465164 e!4465167)))

(assert (= (and d!2300836 c!1382632) b!7487279))

(assert (= (and d!2300836 (not c!1382632)) b!7487280))

(assert (= (and d!2300836 c!1382633) b!7487286))

(assert (= (and d!2300836 (not c!1382633)) b!7487281))

(assert (= (and b!7487281 c!1382631) b!7487285))

(assert (= (and b!7487281 (not c!1382631)) b!7487287))

(assert (= (and b!7487287 (not res!3003424)) b!7487277))

(assert (= (and b!7487277 res!3003426) b!7487275))

(assert (= (and b!7487275 res!3003428) b!7487284))

(assert (= (and b!7487284 res!3003427) b!7487274))

(assert (= (and b!7487277 (not res!3003430)) b!7487282))

(assert (= (and b!7487282 res!3003425) b!7487283))

(assert (= (and b!7487283 (not res!3003429)) b!7487276))

(assert (= (and b!7487276 (not res!3003423)) b!7487278))

(assert (= (or b!7487286 b!7487275 b!7487283) bm!687314))

(declare-fun m!8075732 () Bool)

(assert (=> b!7487274 m!8075732))

(declare-fun m!8075734 () Bool)

(assert (=> b!7487284 m!8075734))

(assert (=> b!7487284 m!8075734))

(declare-fun m!8075736 () Bool)

(assert (=> b!7487284 m!8075736))

(assert (=> b!7487278 m!8075732))

(declare-fun m!8075738 () Bool)

(assert (=> bm!687314 m!8075738))

(assert (=> b!7487280 m!8075732))

(assert (=> b!7487280 m!8075732))

(declare-fun m!8075740 () Bool)

(assert (=> b!7487280 m!8075740))

(assert (=> b!7487280 m!8075734))

(assert (=> b!7487280 m!8075740))

(assert (=> b!7487280 m!8075734))

(declare-fun m!8075742 () Bool)

(assert (=> b!7487280 m!8075742))

(assert (=> b!7487276 m!8075734))

(assert (=> b!7487276 m!8075734))

(assert (=> b!7487276 m!8075736))

(declare-fun m!8075744 () Bool)

(assert (=> b!7487279 m!8075744))

(assert (=> d!2300836 m!8075738))

(declare-fun m!8075746 () Bool)

(assert (=> d!2300836 m!8075746))

(assert (=> b!7487134 d!2300836))

(declare-fun d!2300842 () Bool)

(assert (=> d!2300842 (= (matchR!9386 lt!2628921 s!13591) (matchRSpec!4301 lt!2628921 s!13591))))

(declare-fun lt!2628945 () Unit!166079)

(declare-fun choose!57870 (Regex!19624 List!72338) Unit!166079)

(assert (=> d!2300842 (= lt!2628945 (choose!57870 lt!2628921 s!13591))))

(assert (=> d!2300842 (validRegex!10138 lt!2628921)))

(assert (=> d!2300842 (= (mainMatchTheorem!4295 lt!2628921 s!13591) lt!2628945)))

(declare-fun bs!1934370 () Bool)

(assert (= bs!1934370 d!2300842))

(assert (=> bs!1934370 m!8075694))

(assert (=> bs!1934370 m!8075692))

(declare-fun m!8075748 () Bool)

(assert (=> bs!1934370 m!8075748))

(assert (=> bs!1934370 m!8075746))

(assert (=> b!7487134 d!2300842))

(declare-fun b!7487322 () Bool)

(assert (=> b!7487322 true))

(assert (=> b!7487322 true))

(declare-fun bs!1934371 () Bool)

(declare-fun b!7487329 () Bool)

(assert (= bs!1934371 (and b!7487329 b!7487322)))

(declare-fun lambda!463909 () Int)

(declare-fun lambda!463908 () Int)

(assert (=> bs!1934371 (not (= lambda!463909 lambda!463908))))

(assert (=> b!7487329 true))

(assert (=> b!7487329 true))

(declare-fun bm!687319 () Bool)

(declare-fun call!687325 () Bool)

(declare-fun c!1382643 () Bool)

(declare-fun Exists!4241 (Int) Bool)

(assert (=> bm!687319 (= call!687325 (Exists!4241 (ite c!1382643 lambda!463908 lambda!463909)))))

(declare-fun d!2300844 () Bool)

(declare-fun c!1382642 () Bool)

(assert (=> d!2300844 (= c!1382642 (is-EmptyExpr!19624 lt!2628921))))

(declare-fun e!4465194 () Bool)

(assert (=> d!2300844 (= (matchRSpec!4301 lt!2628921 s!13591) e!4465194)))

(declare-fun b!7487320 () Bool)

(declare-fun e!4465192 () Bool)

(declare-fun e!4465191 () Bool)

(assert (=> b!7487320 (= e!4465192 e!4465191)))

(declare-fun res!3003447 () Bool)

(assert (=> b!7487320 (= res!3003447 (matchRSpec!4301 (regOne!39761 lt!2628921) s!13591))))

(assert (=> b!7487320 (=> res!3003447 e!4465191)))

(declare-fun b!7487321 () Bool)

(declare-fun call!687324 () Bool)

(assert (=> b!7487321 (= e!4465194 call!687324)))

(declare-fun e!4465190 () Bool)

(assert (=> b!7487322 (= e!4465190 call!687325)))

(declare-fun b!7487323 () Bool)

(declare-fun res!3003449 () Bool)

(assert (=> b!7487323 (=> res!3003449 e!4465190)))

(assert (=> b!7487323 (= res!3003449 call!687324)))

(declare-fun e!4465188 () Bool)

(assert (=> b!7487323 (= e!4465188 e!4465190)))

(declare-fun b!7487324 () Bool)

(declare-fun e!4465193 () Bool)

(assert (=> b!7487324 (= e!4465193 (= s!13591 (Cons!72214 (c!1382607 lt!2628921) Nil!72214)))))

(declare-fun b!7487325 () Bool)

(declare-fun c!1382644 () Bool)

(assert (=> b!7487325 (= c!1382644 (is-ElementMatch!19624 lt!2628921))))

(declare-fun e!4465189 () Bool)

(assert (=> b!7487325 (= e!4465189 e!4465193)))

(declare-fun b!7487326 () Bool)

(assert (=> b!7487326 (= e!4465194 e!4465189)))

(declare-fun res!3003448 () Bool)

(assert (=> b!7487326 (= res!3003448 (not (is-EmptyLang!19624 lt!2628921)))))

(assert (=> b!7487326 (=> (not res!3003448) (not e!4465189))))

(declare-fun b!7487327 () Bool)

(assert (=> b!7487327 (= e!4465192 e!4465188)))

(assert (=> b!7487327 (= c!1382643 (is-Star!19624 lt!2628921))))

(declare-fun b!7487328 () Bool)

(assert (=> b!7487328 (= e!4465191 (matchRSpec!4301 (regTwo!39761 lt!2628921) s!13591))))

(assert (=> b!7487329 (= e!4465188 call!687325)))

(declare-fun b!7487330 () Bool)

(declare-fun c!1382645 () Bool)

(assert (=> b!7487330 (= c!1382645 (is-Union!19624 lt!2628921))))

(assert (=> b!7487330 (= e!4465193 e!4465192)))

(declare-fun bm!687320 () Bool)

(assert (=> bm!687320 (= call!687324 (isEmpty!41233 s!13591))))

(assert (= (and d!2300844 c!1382642) b!7487321))

(assert (= (and d!2300844 (not c!1382642)) b!7487326))

(assert (= (and b!7487326 res!3003448) b!7487325))

(assert (= (and b!7487325 c!1382644) b!7487324))

(assert (= (and b!7487325 (not c!1382644)) b!7487330))

(assert (= (and b!7487330 c!1382645) b!7487320))

(assert (= (and b!7487330 (not c!1382645)) b!7487327))

(assert (= (and b!7487320 (not res!3003447)) b!7487328))

(assert (= (and b!7487327 c!1382643) b!7487323))

(assert (= (and b!7487327 (not c!1382643)) b!7487329))

(assert (= (and b!7487323 (not res!3003449)) b!7487322))

(assert (= (or b!7487322 b!7487329) bm!687319))

(assert (= (or b!7487321 b!7487323) bm!687320))

(declare-fun m!8075750 () Bool)

(assert (=> bm!687319 m!8075750))

(declare-fun m!8075752 () Bool)

(assert (=> b!7487320 m!8075752))

(declare-fun m!8075754 () Bool)

(assert (=> b!7487328 m!8075754))

(assert (=> bm!687320 m!8075738))

(assert (=> b!7487134 d!2300844))

(declare-fun bs!1934372 () Bool)

(declare-fun b!7487337 () Bool)

(assert (= bs!1934372 (and b!7487337 b!7487322)))

(declare-fun lambda!463910 () Int)

(assert (=> bs!1934372 (= (and (= (reg!19953 lt!2628919) (reg!19953 lt!2628921)) (= lt!2628919 lt!2628921)) (= lambda!463910 lambda!463908))))

(declare-fun bs!1934373 () Bool)

(assert (= bs!1934373 (and b!7487337 b!7487329)))

(assert (=> bs!1934373 (not (= lambda!463910 lambda!463909))))

(assert (=> b!7487337 true))

(assert (=> b!7487337 true))

(declare-fun bs!1934374 () Bool)

(declare-fun b!7487344 () Bool)

(assert (= bs!1934374 (and b!7487344 b!7487322)))

(declare-fun lambda!463911 () Int)

(assert (=> bs!1934374 (not (= lambda!463911 lambda!463908))))

(declare-fun bs!1934375 () Bool)

(assert (= bs!1934375 (and b!7487344 b!7487329)))

(assert (=> bs!1934375 (= (and (= (regOne!39760 lt!2628919) (regOne!39760 lt!2628921)) (= (regTwo!39760 lt!2628919) (regTwo!39760 lt!2628921))) (= lambda!463911 lambda!463909))))

(declare-fun bs!1934376 () Bool)

(assert (= bs!1934376 (and b!7487344 b!7487337)))

(assert (=> bs!1934376 (not (= lambda!463911 lambda!463910))))

(assert (=> b!7487344 true))

(assert (=> b!7487344 true))

(declare-fun call!687327 () Bool)

(declare-fun c!1382647 () Bool)

(declare-fun bm!687321 () Bool)

(assert (=> bm!687321 (= call!687327 (Exists!4241 (ite c!1382647 lambda!463910 lambda!463911)))))

(declare-fun d!2300846 () Bool)

(declare-fun c!1382646 () Bool)

(assert (=> d!2300846 (= c!1382646 (is-EmptyExpr!19624 lt!2628919))))

(declare-fun e!4465201 () Bool)

(assert (=> d!2300846 (= (matchRSpec!4301 lt!2628919 s!13591) e!4465201)))

(declare-fun b!7487335 () Bool)

(declare-fun e!4465199 () Bool)

(declare-fun e!4465198 () Bool)

(assert (=> b!7487335 (= e!4465199 e!4465198)))

(declare-fun res!3003450 () Bool)

(assert (=> b!7487335 (= res!3003450 (matchRSpec!4301 (regOne!39761 lt!2628919) s!13591))))

(assert (=> b!7487335 (=> res!3003450 e!4465198)))

(declare-fun b!7487336 () Bool)

(declare-fun call!687326 () Bool)

(assert (=> b!7487336 (= e!4465201 call!687326)))

(declare-fun e!4465197 () Bool)

(assert (=> b!7487337 (= e!4465197 call!687327)))

(declare-fun b!7487338 () Bool)

(declare-fun res!3003452 () Bool)

(assert (=> b!7487338 (=> res!3003452 e!4465197)))

(assert (=> b!7487338 (= res!3003452 call!687326)))

(declare-fun e!4465195 () Bool)

(assert (=> b!7487338 (= e!4465195 e!4465197)))

(declare-fun b!7487339 () Bool)

(declare-fun e!4465200 () Bool)

(assert (=> b!7487339 (= e!4465200 (= s!13591 (Cons!72214 (c!1382607 lt!2628919) Nil!72214)))))

(declare-fun b!7487340 () Bool)

(declare-fun c!1382648 () Bool)

(assert (=> b!7487340 (= c!1382648 (is-ElementMatch!19624 lt!2628919))))

(declare-fun e!4465196 () Bool)

(assert (=> b!7487340 (= e!4465196 e!4465200)))

(declare-fun b!7487341 () Bool)

(assert (=> b!7487341 (= e!4465201 e!4465196)))

(declare-fun res!3003451 () Bool)

(assert (=> b!7487341 (= res!3003451 (not (is-EmptyLang!19624 lt!2628919)))))

(assert (=> b!7487341 (=> (not res!3003451) (not e!4465196))))

(declare-fun b!7487342 () Bool)

(assert (=> b!7487342 (= e!4465199 e!4465195)))

(assert (=> b!7487342 (= c!1382647 (is-Star!19624 lt!2628919))))

(declare-fun b!7487343 () Bool)

(assert (=> b!7487343 (= e!4465198 (matchRSpec!4301 (regTwo!39761 lt!2628919) s!13591))))

(assert (=> b!7487344 (= e!4465195 call!687327)))

(declare-fun b!7487345 () Bool)

(declare-fun c!1382649 () Bool)

(assert (=> b!7487345 (= c!1382649 (is-Union!19624 lt!2628919))))

(assert (=> b!7487345 (= e!4465200 e!4465199)))

(declare-fun bm!687322 () Bool)

(assert (=> bm!687322 (= call!687326 (isEmpty!41233 s!13591))))

(assert (= (and d!2300846 c!1382646) b!7487336))

(assert (= (and d!2300846 (not c!1382646)) b!7487341))

(assert (= (and b!7487341 res!3003451) b!7487340))

(assert (= (and b!7487340 c!1382648) b!7487339))

(assert (= (and b!7487340 (not c!1382648)) b!7487345))

(assert (= (and b!7487345 c!1382649) b!7487335))

(assert (= (and b!7487345 (not c!1382649)) b!7487342))

(assert (= (and b!7487335 (not res!3003450)) b!7487343))

(assert (= (and b!7487342 c!1382647) b!7487338))

(assert (= (and b!7487342 (not c!1382647)) b!7487344))

(assert (= (and b!7487338 (not res!3003452)) b!7487337))

(assert (= (or b!7487337 b!7487344) bm!687321))

(assert (= (or b!7487336 b!7487338) bm!687322))

(declare-fun m!8075756 () Bool)

(assert (=> bm!687321 m!8075756))

(declare-fun m!8075758 () Bool)

(assert (=> b!7487335 m!8075758))

(declare-fun m!8075760 () Bool)

(assert (=> b!7487343 m!8075760))

(assert (=> bm!687322 m!8075738))

(assert (=> b!7487134 d!2300846))

(declare-fun b!7487346 () Bool)

(declare-fun e!4465208 () Bool)

(assert (=> b!7487346 (= e!4465208 (= (head!15359 s!13591) (c!1382607 lt!2628919)))))

(declare-fun b!7487347 () Bool)

(declare-fun res!3003458 () Bool)

(assert (=> b!7487347 (=> (not res!3003458) (not e!4465208))))

(declare-fun call!687328 () Bool)

(assert (=> b!7487347 (= res!3003458 (not call!687328))))

(declare-fun b!7487348 () Bool)

(declare-fun res!3003453 () Bool)

(declare-fun e!4465207 () Bool)

(assert (=> b!7487348 (=> res!3003453 e!4465207)))

(assert (=> b!7487348 (= res!3003453 (not (isEmpty!41233 (tail!14928 s!13591))))))

(declare-fun b!7487349 () Bool)

(declare-fun res!3003460 () Bool)

(declare-fun e!4465206 () Bool)

(assert (=> b!7487349 (=> res!3003460 e!4465206)))

(assert (=> b!7487349 (= res!3003460 e!4465208)))

(declare-fun res!3003456 () Bool)

(assert (=> b!7487349 (=> (not res!3003456) (not e!4465208))))

(declare-fun lt!2628946 () Bool)

(assert (=> b!7487349 (= res!3003456 lt!2628946)))

(declare-fun b!7487350 () Bool)

(assert (=> b!7487350 (= e!4465207 (not (= (head!15359 s!13591) (c!1382607 lt!2628919))))))

(declare-fun b!7487351 () Bool)

(declare-fun e!4465205 () Bool)

(assert (=> b!7487351 (= e!4465205 (nullable!8562 lt!2628919))))

(declare-fun b!7487352 () Bool)

(assert (=> b!7487352 (= e!4465205 (matchR!9386 (derivativeStep!5619 lt!2628919 (head!15359 s!13591)) (tail!14928 s!13591)))))

(declare-fun b!7487353 () Bool)

(declare-fun e!4465202 () Bool)

(declare-fun e!4465203 () Bool)

(assert (=> b!7487353 (= e!4465202 e!4465203)))

(declare-fun c!1382650 () Bool)

(assert (=> b!7487353 (= c!1382650 (is-EmptyLang!19624 lt!2628919))))

(declare-fun b!7487354 () Bool)

(declare-fun e!4465204 () Bool)

(assert (=> b!7487354 (= e!4465206 e!4465204)))

(declare-fun res!3003455 () Bool)

(assert (=> b!7487354 (=> (not res!3003455) (not e!4465204))))

(assert (=> b!7487354 (= res!3003455 (not lt!2628946))))

(declare-fun b!7487355 () Bool)

(assert (=> b!7487355 (= e!4465204 e!4465207)))

(declare-fun res!3003459 () Bool)

(assert (=> b!7487355 (=> res!3003459 e!4465207)))

(assert (=> b!7487355 (= res!3003459 call!687328)))

(declare-fun b!7487356 () Bool)

(declare-fun res!3003457 () Bool)

(assert (=> b!7487356 (=> (not res!3003457) (not e!4465208))))

(assert (=> b!7487356 (= res!3003457 (isEmpty!41233 (tail!14928 s!13591)))))

(declare-fun b!7487357 () Bool)

(assert (=> b!7487357 (= e!4465203 (not lt!2628946))))

(declare-fun d!2300848 () Bool)

(assert (=> d!2300848 e!4465202))

(declare-fun c!1382652 () Bool)

(assert (=> d!2300848 (= c!1382652 (is-EmptyExpr!19624 lt!2628919))))

(assert (=> d!2300848 (= lt!2628946 e!4465205)))

(declare-fun c!1382651 () Bool)

(assert (=> d!2300848 (= c!1382651 (isEmpty!41233 s!13591))))

(assert (=> d!2300848 (validRegex!10138 lt!2628919)))

(assert (=> d!2300848 (= (matchR!9386 lt!2628919 s!13591) lt!2628946)))

(declare-fun bm!687323 () Bool)

(assert (=> bm!687323 (= call!687328 (isEmpty!41233 s!13591))))

(declare-fun b!7487358 () Bool)

(assert (=> b!7487358 (= e!4465202 (= lt!2628946 call!687328))))

(declare-fun b!7487359 () Bool)

(declare-fun res!3003454 () Bool)

(assert (=> b!7487359 (=> res!3003454 e!4465206)))

(assert (=> b!7487359 (= res!3003454 (not (is-ElementMatch!19624 lt!2628919)))))

(assert (=> b!7487359 (= e!4465203 e!4465206)))

(assert (= (and d!2300848 c!1382651) b!7487351))

(assert (= (and d!2300848 (not c!1382651)) b!7487352))

(assert (= (and d!2300848 c!1382652) b!7487358))

(assert (= (and d!2300848 (not c!1382652)) b!7487353))

(assert (= (and b!7487353 c!1382650) b!7487357))

(assert (= (and b!7487353 (not c!1382650)) b!7487359))

(assert (= (and b!7487359 (not res!3003454)) b!7487349))

(assert (= (and b!7487349 res!3003456) b!7487347))

(assert (= (and b!7487347 res!3003458) b!7487356))

(assert (= (and b!7487356 res!3003457) b!7487346))

(assert (= (and b!7487349 (not res!3003460)) b!7487354))

(assert (= (and b!7487354 res!3003455) b!7487355))

(assert (= (and b!7487355 (not res!3003459)) b!7487348))

(assert (= (and b!7487348 (not res!3003453)) b!7487350))

(assert (= (or b!7487358 b!7487347 b!7487355) bm!687323))

(assert (=> b!7487346 m!8075732))

(assert (=> b!7487356 m!8075734))

(assert (=> b!7487356 m!8075734))

(assert (=> b!7487356 m!8075736))

(assert (=> b!7487350 m!8075732))

(assert (=> bm!687323 m!8075738))

(assert (=> b!7487352 m!8075732))

(assert (=> b!7487352 m!8075732))

(declare-fun m!8075762 () Bool)

(assert (=> b!7487352 m!8075762))

(assert (=> b!7487352 m!8075734))

(assert (=> b!7487352 m!8075762))

(assert (=> b!7487352 m!8075734))

(declare-fun m!8075764 () Bool)

(assert (=> b!7487352 m!8075764))

(assert (=> b!7487348 m!8075734))

(assert (=> b!7487348 m!8075734))

(assert (=> b!7487348 m!8075736))

(declare-fun m!8075766 () Bool)

(assert (=> b!7487351 m!8075766))

(assert (=> d!2300848 m!8075738))

(declare-fun m!8075768 () Bool)

(assert (=> d!2300848 m!8075768))

(assert (=> b!7487134 d!2300848))

(declare-fun d!2300850 () Bool)

(assert (=> d!2300850 (= (matchR!9386 lt!2628919 s!13591) (matchRSpec!4301 lt!2628919 s!13591))))

(declare-fun lt!2628947 () Unit!166079)

(assert (=> d!2300850 (= lt!2628947 (choose!57870 lt!2628919 s!13591))))

(assert (=> d!2300850 (validRegex!10138 lt!2628919)))

(assert (=> d!2300850 (= (mainMatchTheorem!4295 lt!2628919 s!13591) lt!2628947)))

(declare-fun bs!1934377 () Bool)

(assert (= bs!1934377 d!2300850))

(assert (=> bs!1934377 m!8075690))

(assert (=> bs!1934377 m!8075688))

(declare-fun m!8075770 () Bool)

(assert (=> bs!1934377 m!8075770))

(assert (=> bs!1934377 m!8075768))

(assert (=> b!7487134 d!2300850))

(declare-fun b!7487378 () Bool)

(declare-fun e!4465223 () Bool)

(declare-fun e!4465224 () Bool)

(assert (=> b!7487378 (= e!4465223 e!4465224)))

(declare-fun c!1382658 () Bool)

(assert (=> b!7487378 (= c!1382658 (is-Union!19624 lt!2628917))))

(declare-fun b!7487379 () Bool)

(declare-fun e!4465225 () Bool)

(declare-fun e!4465228 () Bool)

(assert (=> b!7487379 (= e!4465225 e!4465228)))

(declare-fun res!3003473 () Bool)

(assert (=> b!7487379 (=> (not res!3003473) (not e!4465228))))

(declare-fun call!687337 () Bool)

(assert (=> b!7487379 (= res!3003473 call!687337)))

(declare-fun b!7487380 () Bool)

(declare-fun e!4465229 () Bool)

(assert (=> b!7487380 (= e!4465229 e!4465223)))

(declare-fun c!1382657 () Bool)

(assert (=> b!7487380 (= c!1382657 (is-Star!19624 lt!2628917))))

(declare-fun b!7487381 () Bool)

(declare-fun res!3003472 () Bool)

(declare-fun e!4465226 () Bool)

(assert (=> b!7487381 (=> (not res!3003472) (not e!4465226))))

(assert (=> b!7487381 (= res!3003472 call!687337)))

(assert (=> b!7487381 (= e!4465224 e!4465226)))

(declare-fun d!2300852 () Bool)

(declare-fun res!3003471 () Bool)

(assert (=> d!2300852 (=> res!3003471 e!4465229)))

(assert (=> d!2300852 (= res!3003471 (is-ElementMatch!19624 lt!2628917))))

(assert (=> d!2300852 (= (validRegex!10138 lt!2628917) e!4465229)))

(declare-fun b!7487382 () Bool)

(declare-fun e!4465227 () Bool)

(declare-fun call!687335 () Bool)

(assert (=> b!7487382 (= e!4465227 call!687335)))

(declare-fun bm!687330 () Bool)

(assert (=> bm!687330 (= call!687337 call!687335)))

(declare-fun b!7487383 () Bool)

(declare-fun res!3003474 () Bool)

(assert (=> b!7487383 (=> res!3003474 e!4465225)))

(assert (=> b!7487383 (= res!3003474 (not (is-Concat!28469 lt!2628917)))))

(assert (=> b!7487383 (= e!4465224 e!4465225)))

(declare-fun bm!687331 () Bool)

(assert (=> bm!687331 (= call!687335 (validRegex!10138 (ite c!1382657 (reg!19953 lt!2628917) (ite c!1382658 (regOne!39761 lt!2628917) (regOne!39760 lt!2628917)))))))

(declare-fun b!7487384 () Bool)

(declare-fun call!687336 () Bool)

(assert (=> b!7487384 (= e!4465226 call!687336)))

(declare-fun bm!687332 () Bool)

(assert (=> bm!687332 (= call!687336 (validRegex!10138 (ite c!1382658 (regTwo!39761 lt!2628917) (regTwo!39760 lt!2628917))))))

(declare-fun b!7487385 () Bool)

(assert (=> b!7487385 (= e!4465228 call!687336)))

(declare-fun b!7487386 () Bool)

(assert (=> b!7487386 (= e!4465223 e!4465227)))

(declare-fun res!3003475 () Bool)

(assert (=> b!7487386 (= res!3003475 (not (nullable!8562 (reg!19953 lt!2628917))))))

(assert (=> b!7487386 (=> (not res!3003475) (not e!4465227))))

(assert (= (and d!2300852 (not res!3003471)) b!7487380))

(assert (= (and b!7487380 c!1382657) b!7487386))

(assert (= (and b!7487380 (not c!1382657)) b!7487378))

(assert (= (and b!7487386 res!3003475) b!7487382))

(assert (= (and b!7487378 c!1382658) b!7487381))

(assert (= (and b!7487378 (not c!1382658)) b!7487383))

(assert (= (and b!7487381 res!3003472) b!7487384))

(assert (= (and b!7487383 (not res!3003474)) b!7487379))

(assert (= (and b!7487379 res!3003473) b!7487385))

(assert (= (or b!7487384 b!7487385) bm!687332))

(assert (= (or b!7487381 b!7487379) bm!687330))

(assert (= (or b!7487382 bm!687330) bm!687331))

(declare-fun m!8075772 () Bool)

(assert (=> bm!687331 m!8075772))

(declare-fun m!8075774 () Bool)

(assert (=> bm!687332 m!8075774))

(declare-fun m!8075776 () Bool)

(assert (=> b!7487386 m!8075776))

(assert (=> b!7487125 d!2300852))

(declare-fun b!7487387 () Bool)

(declare-fun e!4465230 () Bool)

(declare-fun e!4465231 () Bool)

(assert (=> b!7487387 (= e!4465230 e!4465231)))

(declare-fun c!1382660 () Bool)

(assert (=> b!7487387 (= c!1382660 (is-Union!19624 r1!5845))))

(declare-fun b!7487388 () Bool)

(declare-fun e!4465232 () Bool)

(declare-fun e!4465235 () Bool)

(assert (=> b!7487388 (= e!4465232 e!4465235)))

(declare-fun res!3003478 () Bool)

(assert (=> b!7487388 (=> (not res!3003478) (not e!4465235))))

(declare-fun call!687340 () Bool)

(assert (=> b!7487388 (= res!3003478 call!687340)))

(declare-fun b!7487389 () Bool)

(declare-fun e!4465236 () Bool)

(assert (=> b!7487389 (= e!4465236 e!4465230)))

(declare-fun c!1382659 () Bool)

(assert (=> b!7487389 (= c!1382659 (is-Star!19624 r1!5845))))

(declare-fun b!7487390 () Bool)

(declare-fun res!3003477 () Bool)

(declare-fun e!4465233 () Bool)

(assert (=> b!7487390 (=> (not res!3003477) (not e!4465233))))

(assert (=> b!7487390 (= res!3003477 call!687340)))

(assert (=> b!7487390 (= e!4465231 e!4465233)))

(declare-fun d!2300854 () Bool)

(declare-fun res!3003476 () Bool)

(assert (=> d!2300854 (=> res!3003476 e!4465236)))

(assert (=> d!2300854 (= res!3003476 (is-ElementMatch!19624 r1!5845))))

(assert (=> d!2300854 (= (validRegex!10138 r1!5845) e!4465236)))

(declare-fun b!7487391 () Bool)

(declare-fun e!4465234 () Bool)

(declare-fun call!687338 () Bool)

(assert (=> b!7487391 (= e!4465234 call!687338)))

(declare-fun bm!687333 () Bool)

(assert (=> bm!687333 (= call!687340 call!687338)))

(declare-fun b!7487392 () Bool)

(declare-fun res!3003479 () Bool)

(assert (=> b!7487392 (=> res!3003479 e!4465232)))

(assert (=> b!7487392 (= res!3003479 (not (is-Concat!28469 r1!5845)))))

(assert (=> b!7487392 (= e!4465231 e!4465232)))

(declare-fun bm!687334 () Bool)

(assert (=> bm!687334 (= call!687338 (validRegex!10138 (ite c!1382659 (reg!19953 r1!5845) (ite c!1382660 (regOne!39761 r1!5845) (regOne!39760 r1!5845)))))))

(declare-fun b!7487393 () Bool)

(declare-fun call!687339 () Bool)

(assert (=> b!7487393 (= e!4465233 call!687339)))

(declare-fun bm!687335 () Bool)

(assert (=> bm!687335 (= call!687339 (validRegex!10138 (ite c!1382660 (regTwo!39761 r1!5845) (regTwo!39760 r1!5845))))))

(declare-fun b!7487394 () Bool)

(assert (=> b!7487394 (= e!4465235 call!687339)))

(declare-fun b!7487395 () Bool)

(assert (=> b!7487395 (= e!4465230 e!4465234)))

(declare-fun res!3003480 () Bool)

(assert (=> b!7487395 (= res!3003480 (not (nullable!8562 (reg!19953 r1!5845))))))

(assert (=> b!7487395 (=> (not res!3003480) (not e!4465234))))

(assert (= (and d!2300854 (not res!3003476)) b!7487389))

(assert (= (and b!7487389 c!1382659) b!7487395))

(assert (= (and b!7487389 (not c!1382659)) b!7487387))

(assert (= (and b!7487395 res!3003480) b!7487391))

(assert (= (and b!7487387 c!1382660) b!7487390))

(assert (= (and b!7487387 (not c!1382660)) b!7487392))

(assert (= (and b!7487390 res!3003477) b!7487393))

(assert (= (and b!7487392 (not res!3003479)) b!7487388))

(assert (= (and b!7487388 res!3003478) b!7487394))

(assert (= (or b!7487393 b!7487394) bm!687335))

(assert (= (or b!7487390 b!7487388) bm!687333))

(assert (= (or b!7487391 bm!687333) bm!687334))

(declare-fun m!8075778 () Bool)

(assert (=> bm!687334 m!8075778))

(declare-fun m!8075780 () Bool)

(assert (=> bm!687335 m!8075780))

(declare-fun m!8075782 () Bool)

(assert (=> b!7487395 m!8075782))

(assert (=> start!725012 d!2300854))

(declare-fun b!7487396 () Bool)

(declare-fun e!4465237 () Bool)

(declare-fun e!4465238 () Bool)

(assert (=> b!7487396 (= e!4465237 e!4465238)))

(declare-fun c!1382662 () Bool)

(assert (=> b!7487396 (= c!1382662 (is-Union!19624 rTail!78))))

(declare-fun b!7487397 () Bool)

(declare-fun e!4465239 () Bool)

(declare-fun e!4465242 () Bool)

(assert (=> b!7487397 (= e!4465239 e!4465242)))

(declare-fun res!3003483 () Bool)

(assert (=> b!7487397 (=> (not res!3003483) (not e!4465242))))

(declare-fun call!687343 () Bool)

(assert (=> b!7487397 (= res!3003483 call!687343)))

(declare-fun b!7487398 () Bool)

(declare-fun e!4465243 () Bool)

(assert (=> b!7487398 (= e!4465243 e!4465237)))

(declare-fun c!1382661 () Bool)

(assert (=> b!7487398 (= c!1382661 (is-Star!19624 rTail!78))))

(declare-fun b!7487399 () Bool)

(declare-fun res!3003482 () Bool)

(declare-fun e!4465240 () Bool)

(assert (=> b!7487399 (=> (not res!3003482) (not e!4465240))))

(assert (=> b!7487399 (= res!3003482 call!687343)))

(assert (=> b!7487399 (= e!4465238 e!4465240)))

(declare-fun d!2300856 () Bool)

(declare-fun res!3003481 () Bool)

(assert (=> d!2300856 (=> res!3003481 e!4465243)))

(assert (=> d!2300856 (= res!3003481 (is-ElementMatch!19624 rTail!78))))

(assert (=> d!2300856 (= (validRegex!10138 rTail!78) e!4465243)))

(declare-fun b!7487400 () Bool)

(declare-fun e!4465241 () Bool)

(declare-fun call!687341 () Bool)

(assert (=> b!7487400 (= e!4465241 call!687341)))

(declare-fun bm!687336 () Bool)

(assert (=> bm!687336 (= call!687343 call!687341)))

(declare-fun b!7487401 () Bool)

(declare-fun res!3003484 () Bool)

(assert (=> b!7487401 (=> res!3003484 e!4465239)))

(assert (=> b!7487401 (= res!3003484 (not (is-Concat!28469 rTail!78)))))

(assert (=> b!7487401 (= e!4465238 e!4465239)))

(declare-fun bm!687337 () Bool)

(assert (=> bm!687337 (= call!687341 (validRegex!10138 (ite c!1382661 (reg!19953 rTail!78) (ite c!1382662 (regOne!39761 rTail!78) (regOne!39760 rTail!78)))))))

(declare-fun b!7487402 () Bool)

(declare-fun call!687342 () Bool)

(assert (=> b!7487402 (= e!4465240 call!687342)))

(declare-fun bm!687338 () Bool)

(assert (=> bm!687338 (= call!687342 (validRegex!10138 (ite c!1382662 (regTwo!39761 rTail!78) (regTwo!39760 rTail!78))))))

(declare-fun b!7487403 () Bool)

(assert (=> b!7487403 (= e!4465242 call!687342)))

(declare-fun b!7487404 () Bool)

(assert (=> b!7487404 (= e!4465237 e!4465241)))

(declare-fun res!3003485 () Bool)

(assert (=> b!7487404 (= res!3003485 (not (nullable!8562 (reg!19953 rTail!78))))))

(assert (=> b!7487404 (=> (not res!3003485) (not e!4465241))))

(assert (= (and d!2300856 (not res!3003481)) b!7487398))

(assert (= (and b!7487398 c!1382661) b!7487404))

(assert (= (and b!7487398 (not c!1382661)) b!7487396))

(assert (= (and b!7487404 res!3003485) b!7487400))

(assert (= (and b!7487396 c!1382662) b!7487399))

(assert (= (and b!7487396 (not c!1382662)) b!7487401))

(assert (= (and b!7487399 res!3003482) b!7487402))

(assert (= (and b!7487401 (not res!3003484)) b!7487397))

(assert (= (and b!7487397 res!3003483) b!7487403))

(assert (= (or b!7487402 b!7487403) bm!687338))

(assert (= (or b!7487399 b!7487397) bm!687336))

(assert (= (or b!7487400 bm!687336) bm!687337))

(declare-fun m!8075784 () Bool)

(assert (=> bm!687337 m!8075784))

(declare-fun m!8075786 () Bool)

(assert (=> bm!687338 m!8075786))

(declare-fun m!8075788 () Bool)

(assert (=> b!7487404 m!8075788))

(assert (=> b!7487136 d!2300856))

(declare-fun b!7487405 () Bool)

(declare-fun e!4465244 () Bool)

(declare-fun e!4465245 () Bool)

(assert (=> b!7487405 (= e!4465244 e!4465245)))

(declare-fun c!1382664 () Bool)

(assert (=> b!7487405 (= c!1382664 (is-Union!19624 r2!5783))))

(declare-fun b!7487406 () Bool)

(declare-fun e!4465246 () Bool)

(declare-fun e!4465249 () Bool)

(assert (=> b!7487406 (= e!4465246 e!4465249)))

(declare-fun res!3003488 () Bool)

(assert (=> b!7487406 (=> (not res!3003488) (not e!4465249))))

(declare-fun call!687346 () Bool)

(assert (=> b!7487406 (= res!3003488 call!687346)))

(declare-fun b!7487407 () Bool)

(declare-fun e!4465250 () Bool)

(assert (=> b!7487407 (= e!4465250 e!4465244)))

(declare-fun c!1382663 () Bool)

(assert (=> b!7487407 (= c!1382663 (is-Star!19624 r2!5783))))

(declare-fun b!7487408 () Bool)

(declare-fun res!3003487 () Bool)

(declare-fun e!4465247 () Bool)

(assert (=> b!7487408 (=> (not res!3003487) (not e!4465247))))

(assert (=> b!7487408 (= res!3003487 call!687346)))

(assert (=> b!7487408 (= e!4465245 e!4465247)))

(declare-fun d!2300858 () Bool)

(declare-fun res!3003486 () Bool)

(assert (=> d!2300858 (=> res!3003486 e!4465250)))

(assert (=> d!2300858 (= res!3003486 (is-ElementMatch!19624 r2!5783))))

(assert (=> d!2300858 (= (validRegex!10138 r2!5783) e!4465250)))

(declare-fun b!7487409 () Bool)

(declare-fun e!4465248 () Bool)

(declare-fun call!687344 () Bool)

(assert (=> b!7487409 (= e!4465248 call!687344)))

(declare-fun bm!687339 () Bool)

(assert (=> bm!687339 (= call!687346 call!687344)))

(declare-fun b!7487410 () Bool)

(declare-fun res!3003489 () Bool)

(assert (=> b!7487410 (=> res!3003489 e!4465246)))

(assert (=> b!7487410 (= res!3003489 (not (is-Concat!28469 r2!5783)))))

(assert (=> b!7487410 (= e!4465245 e!4465246)))

(declare-fun bm!687340 () Bool)

(assert (=> bm!687340 (= call!687344 (validRegex!10138 (ite c!1382663 (reg!19953 r2!5783) (ite c!1382664 (regOne!39761 r2!5783) (regOne!39760 r2!5783)))))))

(declare-fun b!7487411 () Bool)

(declare-fun call!687345 () Bool)

(assert (=> b!7487411 (= e!4465247 call!687345)))

(declare-fun bm!687341 () Bool)

(assert (=> bm!687341 (= call!687345 (validRegex!10138 (ite c!1382664 (regTwo!39761 r2!5783) (regTwo!39760 r2!5783))))))

(declare-fun b!7487412 () Bool)

(assert (=> b!7487412 (= e!4465249 call!687345)))

(declare-fun b!7487413 () Bool)

(assert (=> b!7487413 (= e!4465244 e!4465248)))

(declare-fun res!3003490 () Bool)

(assert (=> b!7487413 (= res!3003490 (not (nullable!8562 (reg!19953 r2!5783))))))

(assert (=> b!7487413 (=> (not res!3003490) (not e!4465248))))

(assert (= (and d!2300858 (not res!3003486)) b!7487407))

(assert (= (and b!7487407 c!1382663) b!7487413))

(assert (= (and b!7487407 (not c!1382663)) b!7487405))

(assert (= (and b!7487413 res!3003490) b!7487409))

(assert (= (and b!7487405 c!1382664) b!7487408))

(assert (= (and b!7487405 (not c!1382664)) b!7487410))

(assert (= (and b!7487408 res!3003487) b!7487411))

(assert (= (and b!7487410 (not res!3003489)) b!7487406))

(assert (= (and b!7487406 res!3003488) b!7487412))

(assert (= (or b!7487411 b!7487412) bm!687341))

(assert (= (or b!7487408 b!7487406) bm!687339))

(assert (= (or b!7487409 bm!687339) bm!687340))

(declare-fun m!8075790 () Bool)

(assert (=> bm!687340 m!8075790))

(declare-fun m!8075792 () Bool)

(assert (=> bm!687341 m!8075792))

(declare-fun m!8075794 () Bool)

(assert (=> b!7487413 m!8075794))

(assert (=> b!7487126 d!2300858))

(declare-fun e!4465253 () Bool)

(assert (=> b!7487128 (= tp!2172910 e!4465253)))

(declare-fun b!7487424 () Bool)

(assert (=> b!7487424 (= e!4465253 tp_is_empty!49537)))

(declare-fun b!7487426 () Bool)

(declare-fun tp!2172987 () Bool)

(assert (=> b!7487426 (= e!4465253 tp!2172987)))

(declare-fun b!7487427 () Bool)

(declare-fun tp!2172985 () Bool)

(declare-fun tp!2172988 () Bool)

(assert (=> b!7487427 (= e!4465253 (and tp!2172985 tp!2172988))))

(declare-fun b!7487425 () Bool)

(declare-fun tp!2172984 () Bool)

(declare-fun tp!2172986 () Bool)

(assert (=> b!7487425 (= e!4465253 (and tp!2172984 tp!2172986))))

(assert (= (and b!7487128 (is-ElementMatch!19624 (reg!19953 r1!5845))) b!7487424))

(assert (= (and b!7487128 (is-Concat!28469 (reg!19953 r1!5845))) b!7487425))

(assert (= (and b!7487128 (is-Star!19624 (reg!19953 r1!5845))) b!7487426))

(assert (= (and b!7487128 (is-Union!19624 (reg!19953 r1!5845))) b!7487427))

(declare-fun e!4465254 () Bool)

(assert (=> b!7487123 (= tp!2172925 e!4465254)))

(declare-fun b!7487428 () Bool)

(assert (=> b!7487428 (= e!4465254 tp_is_empty!49537)))

(declare-fun b!7487430 () Bool)

(declare-fun tp!2172992 () Bool)

(assert (=> b!7487430 (= e!4465254 tp!2172992)))

(declare-fun b!7487431 () Bool)

(declare-fun tp!2172990 () Bool)

(declare-fun tp!2172993 () Bool)

(assert (=> b!7487431 (= e!4465254 (and tp!2172990 tp!2172993))))

(declare-fun b!7487429 () Bool)

(declare-fun tp!2172989 () Bool)

(declare-fun tp!2172991 () Bool)

(assert (=> b!7487429 (= e!4465254 (and tp!2172989 tp!2172991))))

(assert (= (and b!7487123 (is-ElementMatch!19624 (regOne!39761 rTail!78))) b!7487428))

(assert (= (and b!7487123 (is-Concat!28469 (regOne!39761 rTail!78))) b!7487429))

(assert (= (and b!7487123 (is-Star!19624 (regOne!39761 rTail!78))) b!7487430))

(assert (= (and b!7487123 (is-Union!19624 (regOne!39761 rTail!78))) b!7487431))

(declare-fun e!4465255 () Bool)

(assert (=> b!7487123 (= tp!2172914 e!4465255)))

(declare-fun b!7487432 () Bool)

(assert (=> b!7487432 (= e!4465255 tp_is_empty!49537)))

(declare-fun b!7487434 () Bool)

(declare-fun tp!2172997 () Bool)

(assert (=> b!7487434 (= e!4465255 tp!2172997)))

(declare-fun b!7487435 () Bool)

(declare-fun tp!2172995 () Bool)

(declare-fun tp!2172998 () Bool)

(assert (=> b!7487435 (= e!4465255 (and tp!2172995 tp!2172998))))

(declare-fun b!7487433 () Bool)

(declare-fun tp!2172994 () Bool)

(declare-fun tp!2172996 () Bool)

(assert (=> b!7487433 (= e!4465255 (and tp!2172994 tp!2172996))))

(assert (= (and b!7487123 (is-ElementMatch!19624 (regTwo!39761 rTail!78))) b!7487432))

(assert (= (and b!7487123 (is-Concat!28469 (regTwo!39761 rTail!78))) b!7487433))

(assert (= (and b!7487123 (is-Star!19624 (regTwo!39761 rTail!78))) b!7487434))

(assert (= (and b!7487123 (is-Union!19624 (regTwo!39761 rTail!78))) b!7487435))

(declare-fun e!4465256 () Bool)

(assert (=> b!7487124 (= tp!2172911 e!4465256)))

(declare-fun b!7487436 () Bool)

(assert (=> b!7487436 (= e!4465256 tp_is_empty!49537)))

(declare-fun b!7487438 () Bool)

(declare-fun tp!2173002 () Bool)

(assert (=> b!7487438 (= e!4465256 tp!2173002)))

(declare-fun b!7487439 () Bool)

(declare-fun tp!2173000 () Bool)

(declare-fun tp!2173003 () Bool)

(assert (=> b!7487439 (= e!4465256 (and tp!2173000 tp!2173003))))

(declare-fun b!7487437 () Bool)

(declare-fun tp!2172999 () Bool)

(declare-fun tp!2173001 () Bool)

(assert (=> b!7487437 (= e!4465256 (and tp!2172999 tp!2173001))))

(assert (= (and b!7487124 (is-ElementMatch!19624 (regOne!39760 r1!5845))) b!7487436))

(assert (= (and b!7487124 (is-Concat!28469 (regOne!39760 r1!5845))) b!7487437))

(assert (= (and b!7487124 (is-Star!19624 (regOne!39760 r1!5845))) b!7487438))

(assert (= (and b!7487124 (is-Union!19624 (regOne!39760 r1!5845))) b!7487439))

(declare-fun e!4465257 () Bool)

(assert (=> b!7487124 (= tp!2172918 e!4465257)))

(declare-fun b!7487440 () Bool)

(assert (=> b!7487440 (= e!4465257 tp_is_empty!49537)))

(declare-fun b!7487442 () Bool)

(declare-fun tp!2173007 () Bool)

(assert (=> b!7487442 (= e!4465257 tp!2173007)))

(declare-fun b!7487443 () Bool)

(declare-fun tp!2173005 () Bool)

(declare-fun tp!2173008 () Bool)

(assert (=> b!7487443 (= e!4465257 (and tp!2173005 tp!2173008))))

(declare-fun b!7487441 () Bool)

(declare-fun tp!2173004 () Bool)

(declare-fun tp!2173006 () Bool)

(assert (=> b!7487441 (= e!4465257 (and tp!2173004 tp!2173006))))

(assert (= (and b!7487124 (is-ElementMatch!19624 (regTwo!39760 r1!5845))) b!7487440))

(assert (= (and b!7487124 (is-Concat!28469 (regTwo!39760 r1!5845))) b!7487441))

(assert (= (and b!7487124 (is-Star!19624 (regTwo!39760 r1!5845))) b!7487442))

(assert (= (and b!7487124 (is-Union!19624 (regTwo!39760 r1!5845))) b!7487443))

(declare-fun e!4465258 () Bool)

(assert (=> b!7487135 (= tp!2172919 e!4465258)))

(declare-fun b!7487444 () Bool)

(assert (=> b!7487444 (= e!4465258 tp_is_empty!49537)))

(declare-fun b!7487446 () Bool)

(declare-fun tp!2173012 () Bool)

(assert (=> b!7487446 (= e!4465258 tp!2173012)))

(declare-fun b!7487447 () Bool)

(declare-fun tp!2173010 () Bool)

(declare-fun tp!2173013 () Bool)

(assert (=> b!7487447 (= e!4465258 (and tp!2173010 tp!2173013))))

(declare-fun b!7487445 () Bool)

(declare-fun tp!2173009 () Bool)

(declare-fun tp!2173011 () Bool)

(assert (=> b!7487445 (= e!4465258 (and tp!2173009 tp!2173011))))

(assert (= (and b!7487135 (is-ElementMatch!19624 (regOne!39760 rTail!78))) b!7487444))

(assert (= (and b!7487135 (is-Concat!28469 (regOne!39760 rTail!78))) b!7487445))

(assert (= (and b!7487135 (is-Star!19624 (regOne!39760 rTail!78))) b!7487446))

(assert (= (and b!7487135 (is-Union!19624 (regOne!39760 rTail!78))) b!7487447))

(declare-fun e!4465259 () Bool)

(assert (=> b!7487135 (= tp!2172916 e!4465259)))

(declare-fun b!7487448 () Bool)

(assert (=> b!7487448 (= e!4465259 tp_is_empty!49537)))

(declare-fun b!7487450 () Bool)

(declare-fun tp!2173017 () Bool)

(assert (=> b!7487450 (= e!4465259 tp!2173017)))

(declare-fun b!7487451 () Bool)

(declare-fun tp!2173015 () Bool)

(declare-fun tp!2173018 () Bool)

(assert (=> b!7487451 (= e!4465259 (and tp!2173015 tp!2173018))))

(declare-fun b!7487449 () Bool)

(declare-fun tp!2173014 () Bool)

(declare-fun tp!2173016 () Bool)

(assert (=> b!7487449 (= e!4465259 (and tp!2173014 tp!2173016))))

(assert (= (and b!7487135 (is-ElementMatch!19624 (regTwo!39760 rTail!78))) b!7487448))

(assert (= (and b!7487135 (is-Concat!28469 (regTwo!39760 rTail!78))) b!7487449))

(assert (= (and b!7487135 (is-Star!19624 (regTwo!39760 rTail!78))) b!7487450))

(assert (= (and b!7487135 (is-Union!19624 (regTwo!39760 rTail!78))) b!7487451))

(declare-fun b!7487456 () Bool)

(declare-fun e!4465262 () Bool)

(declare-fun tp!2173021 () Bool)

(assert (=> b!7487456 (= e!4465262 (and tp_is_empty!49537 tp!2173021))))

(assert (=> b!7487130 (= tp!2172921 e!4465262)))

(assert (= (and b!7487130 (is-Cons!72214 (t!386907 s!13591))) b!7487456))

(declare-fun e!4465263 () Bool)

(assert (=> b!7487120 (= tp!2172913 e!4465263)))

(declare-fun b!7487457 () Bool)

(assert (=> b!7487457 (= e!4465263 tp_is_empty!49537)))

(declare-fun b!7487459 () Bool)

(declare-fun tp!2173025 () Bool)

(assert (=> b!7487459 (= e!4465263 tp!2173025)))

(declare-fun b!7487460 () Bool)

(declare-fun tp!2173023 () Bool)

(declare-fun tp!2173026 () Bool)

(assert (=> b!7487460 (= e!4465263 (and tp!2173023 tp!2173026))))

(declare-fun b!7487458 () Bool)

(declare-fun tp!2173022 () Bool)

(declare-fun tp!2173024 () Bool)

(assert (=> b!7487458 (= e!4465263 (and tp!2173022 tp!2173024))))

(assert (= (and b!7487120 (is-ElementMatch!19624 (reg!19953 r2!5783))) b!7487457))

(assert (= (and b!7487120 (is-Concat!28469 (reg!19953 r2!5783))) b!7487458))

(assert (= (and b!7487120 (is-Star!19624 (reg!19953 r2!5783))) b!7487459))

(assert (= (and b!7487120 (is-Union!19624 (reg!19953 r2!5783))) b!7487460))

(declare-fun e!4465264 () Bool)

(assert (=> b!7487131 (= tp!2172923 e!4465264)))

(declare-fun b!7487461 () Bool)

(assert (=> b!7487461 (= e!4465264 tp_is_empty!49537)))

(declare-fun b!7487463 () Bool)

(declare-fun tp!2173030 () Bool)

(assert (=> b!7487463 (= e!4465264 tp!2173030)))

(declare-fun b!7487464 () Bool)

(declare-fun tp!2173028 () Bool)

(declare-fun tp!2173031 () Bool)

(assert (=> b!7487464 (= e!4465264 (and tp!2173028 tp!2173031))))

(declare-fun b!7487462 () Bool)

(declare-fun tp!2173027 () Bool)

(declare-fun tp!2173029 () Bool)

(assert (=> b!7487462 (= e!4465264 (and tp!2173027 tp!2173029))))

(assert (= (and b!7487131 (is-ElementMatch!19624 (reg!19953 rTail!78))) b!7487461))

(assert (= (and b!7487131 (is-Concat!28469 (reg!19953 rTail!78))) b!7487462))

(assert (= (and b!7487131 (is-Star!19624 (reg!19953 rTail!78))) b!7487463))

(assert (= (and b!7487131 (is-Union!19624 (reg!19953 rTail!78))) b!7487464))

(declare-fun e!4465265 () Bool)

(assert (=> b!7487132 (= tp!2172917 e!4465265)))

(declare-fun b!7487465 () Bool)

(assert (=> b!7487465 (= e!4465265 tp_is_empty!49537)))

(declare-fun b!7487467 () Bool)

(declare-fun tp!2173035 () Bool)

(assert (=> b!7487467 (= e!4465265 tp!2173035)))

(declare-fun b!7487468 () Bool)

(declare-fun tp!2173033 () Bool)

(declare-fun tp!2173036 () Bool)

(assert (=> b!7487468 (= e!4465265 (and tp!2173033 tp!2173036))))

(declare-fun b!7487466 () Bool)

(declare-fun tp!2173032 () Bool)

(declare-fun tp!2173034 () Bool)

(assert (=> b!7487466 (= e!4465265 (and tp!2173032 tp!2173034))))

(assert (= (and b!7487132 (is-ElementMatch!19624 (regOne!39761 r1!5845))) b!7487465))

(assert (= (and b!7487132 (is-Concat!28469 (regOne!39761 r1!5845))) b!7487466))

(assert (= (and b!7487132 (is-Star!19624 (regOne!39761 r1!5845))) b!7487467))

(assert (= (and b!7487132 (is-Union!19624 (regOne!39761 r1!5845))) b!7487468))

(declare-fun e!4465266 () Bool)

(assert (=> b!7487132 (= tp!2172912 e!4465266)))

(declare-fun b!7487469 () Bool)

(assert (=> b!7487469 (= e!4465266 tp_is_empty!49537)))

(declare-fun b!7487471 () Bool)

(declare-fun tp!2173040 () Bool)

(assert (=> b!7487471 (= e!4465266 tp!2173040)))

(declare-fun b!7487472 () Bool)

(declare-fun tp!2173038 () Bool)

(declare-fun tp!2173041 () Bool)

(assert (=> b!7487472 (= e!4465266 (and tp!2173038 tp!2173041))))

(declare-fun b!7487470 () Bool)

(declare-fun tp!2173037 () Bool)

(declare-fun tp!2173039 () Bool)

(assert (=> b!7487470 (= e!4465266 (and tp!2173037 tp!2173039))))

(assert (= (and b!7487132 (is-ElementMatch!19624 (regTwo!39761 r1!5845))) b!7487469))

(assert (= (and b!7487132 (is-Concat!28469 (regTwo!39761 r1!5845))) b!7487470))

(assert (= (and b!7487132 (is-Star!19624 (regTwo!39761 r1!5845))) b!7487471))

(assert (= (and b!7487132 (is-Union!19624 (regTwo!39761 r1!5845))) b!7487472))

(declare-fun e!4465267 () Bool)

(assert (=> b!7487127 (= tp!2172922 e!4465267)))

(declare-fun b!7487473 () Bool)

(assert (=> b!7487473 (= e!4465267 tp_is_empty!49537)))

(declare-fun b!7487475 () Bool)

(declare-fun tp!2173045 () Bool)

(assert (=> b!7487475 (= e!4465267 tp!2173045)))

(declare-fun b!7487476 () Bool)

(declare-fun tp!2173043 () Bool)

(declare-fun tp!2173046 () Bool)

(assert (=> b!7487476 (= e!4465267 (and tp!2173043 tp!2173046))))

(declare-fun b!7487474 () Bool)

(declare-fun tp!2173042 () Bool)

(declare-fun tp!2173044 () Bool)

(assert (=> b!7487474 (= e!4465267 (and tp!2173042 tp!2173044))))

(assert (= (and b!7487127 (is-ElementMatch!19624 (regOne!39760 r2!5783))) b!7487473))

(assert (= (and b!7487127 (is-Concat!28469 (regOne!39760 r2!5783))) b!7487474))

(assert (= (and b!7487127 (is-Star!19624 (regOne!39760 r2!5783))) b!7487475))

(assert (= (and b!7487127 (is-Union!19624 (regOne!39760 r2!5783))) b!7487476))

(declare-fun e!4465268 () Bool)

(assert (=> b!7487127 (= tp!2172915 e!4465268)))

(declare-fun b!7487477 () Bool)

(assert (=> b!7487477 (= e!4465268 tp_is_empty!49537)))

(declare-fun b!7487479 () Bool)

(declare-fun tp!2173050 () Bool)

(assert (=> b!7487479 (= e!4465268 tp!2173050)))

(declare-fun b!7487480 () Bool)

(declare-fun tp!2173048 () Bool)

(declare-fun tp!2173051 () Bool)

(assert (=> b!7487480 (= e!4465268 (and tp!2173048 tp!2173051))))

(declare-fun b!7487478 () Bool)

(declare-fun tp!2173047 () Bool)

(declare-fun tp!2173049 () Bool)

(assert (=> b!7487478 (= e!4465268 (and tp!2173047 tp!2173049))))

(assert (= (and b!7487127 (is-ElementMatch!19624 (regTwo!39760 r2!5783))) b!7487477))

(assert (= (and b!7487127 (is-Concat!28469 (regTwo!39760 r2!5783))) b!7487478))

(assert (= (and b!7487127 (is-Star!19624 (regTwo!39760 r2!5783))) b!7487479))

(assert (= (and b!7487127 (is-Union!19624 (regTwo!39760 r2!5783))) b!7487480))

(declare-fun e!4465269 () Bool)

(assert (=> b!7487133 (= tp!2172920 e!4465269)))

(declare-fun b!7487481 () Bool)

(assert (=> b!7487481 (= e!4465269 tp_is_empty!49537)))

(declare-fun b!7487483 () Bool)

(declare-fun tp!2173055 () Bool)

(assert (=> b!7487483 (= e!4465269 tp!2173055)))

(declare-fun b!7487484 () Bool)

(declare-fun tp!2173053 () Bool)

(declare-fun tp!2173056 () Bool)

(assert (=> b!7487484 (= e!4465269 (and tp!2173053 tp!2173056))))

(declare-fun b!7487482 () Bool)

(declare-fun tp!2173052 () Bool)

(declare-fun tp!2173054 () Bool)

(assert (=> b!7487482 (= e!4465269 (and tp!2173052 tp!2173054))))

(assert (= (and b!7487133 (is-ElementMatch!19624 (regOne!39761 r2!5783))) b!7487481))

(assert (= (and b!7487133 (is-Concat!28469 (regOne!39761 r2!5783))) b!7487482))

(assert (= (and b!7487133 (is-Star!19624 (regOne!39761 r2!5783))) b!7487483))

(assert (= (and b!7487133 (is-Union!19624 (regOne!39761 r2!5783))) b!7487484))

(declare-fun e!4465270 () Bool)

(assert (=> b!7487133 (= tp!2172924 e!4465270)))

(declare-fun b!7487485 () Bool)

(assert (=> b!7487485 (= e!4465270 tp_is_empty!49537)))

(declare-fun b!7487487 () Bool)

(declare-fun tp!2173060 () Bool)

(assert (=> b!7487487 (= e!4465270 tp!2173060)))

(declare-fun b!7487488 () Bool)

(declare-fun tp!2173058 () Bool)

(declare-fun tp!2173061 () Bool)

(assert (=> b!7487488 (= e!4465270 (and tp!2173058 tp!2173061))))

(declare-fun b!7487486 () Bool)

(declare-fun tp!2173057 () Bool)

(declare-fun tp!2173059 () Bool)

(assert (=> b!7487486 (= e!4465270 (and tp!2173057 tp!2173059))))

(assert (= (and b!7487133 (is-ElementMatch!19624 (regTwo!39761 r2!5783))) b!7487485))

(assert (= (and b!7487133 (is-Concat!28469 (regTwo!39761 r2!5783))) b!7487486))

(assert (= (and b!7487133 (is-Star!19624 (regTwo!39761 r2!5783))) b!7487487))

(assert (= (and b!7487133 (is-Union!19624 (regTwo!39761 r2!5783))) b!7487488))

(push 1)

(assert (not b!7487335))

(assert (not bm!687341))

(assert (not b!7487468))

(assert (not b!7487476))

(assert (not b!7487466))

(assert (not b!7487439))

(assert (not b!7487479))

(assert (not b!7487352))

(assert (not b!7487438))

(assert (not d!2300836))

(assert (not b!7487433))

(assert (not bm!687334))

(assert (not bm!687338))

(assert (not b!7487445))

(assert (not b!7487442))

(assert (not b!7487437))

(assert (not b!7487451))

(assert (not b!7487458))

(assert (not b!7487395))

(assert (not b!7487484))

(assert (not b!7487328))

(assert (not b!7487474))

(assert (not b!7487278))

(assert (not b!7487435))

(assert (not b!7487480))

(assert (not d!2300842))

(assert (not b!7487449))

(assert (not bm!687319))

(assert (not b!7487470))

(assert (not b!7487434))

(assert (not bm!687340))

(assert (not b!7487404))

(assert (not bm!687332))

(assert (not b!7487413))

(assert (not bm!687335))

(assert (not b!7487430))

(assert (not d!2300850))

(assert (not b!7487471))

(assert (not b!7487464))

(assert (not b!7487472))

(assert (not b!7487425))

(assert (not b!7487459))

(assert (not b!7487456))

(assert (not b!7487426))

(assert (not b!7487475))

(assert (not b!7487351))

(assert (not b!7487276))

(assert (not b!7487280))

(assert (not b!7487488))

(assert (not d!2300848))

(assert (not b!7487348))

(assert (not b!7487429))

(assert (not b!7487284))

(assert (not b!7487343))

(assert (not b!7487386))

(assert (not b!7487279))

(assert (not b!7487467))

(assert (not b!7487483))

(assert (not bm!687323))

(assert tp_is_empty!49537)

(assert (not b!7487463))

(assert (not bm!687331))

(assert (not bm!687320))

(assert (not bm!687337))

(assert (not bm!687314))

(assert (not b!7487450))

(assert (not b!7487447))

(assert (not b!7487441))

(assert (not b!7487486))

(assert (not bm!687321))

(assert (not b!7487320))

(assert (not b!7487482))

(assert (not b!7487487))

(assert (not b!7487431))

(assert (not b!7487462))

(assert (not b!7487478))

(assert (not b!7487446))

(assert (not b!7487356))

(assert (not b!7487350))

(assert (not b!7487427))

(assert (not b!7487443))

(assert (not b!7487460))

(assert (not bm!687322))

(assert (not b!7487274))

(assert (not b!7487346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

