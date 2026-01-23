; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!740888 () Bool)

(assert start!740888)

(declare-fun res!3104220 () Bool)

(declare-fun e!4613641 () Bool)

(assert (=> start!740888 (=> (not res!3104220) (not e!4613641))))

(declare-datatypes ((C!42046 0))(
  ( (C!42047 (val!31463 Int)) )
))
(declare-datatypes ((Regex!20860 0))(
  ( (ElementMatch!20860 (c!1434923 C!42046)) (Concat!29705 (regOne!42232 Regex!20860) (regTwo!42232 Regex!20860)) (EmptyExpr!20860) (Star!20860 (reg!21189 Regex!20860)) (EmptyLang!20860) (Union!20860 (regOne!42233 Regex!20860) (regTwo!42233 Regex!20860)) )
))
(declare-fun r1!6279 () Regex!20860)

(declare-fun validRegex!11274 (Regex!20860) Bool)

(assert (=> start!740888 (= res!3104220 (validRegex!11274 r1!6279))))

(assert (=> start!740888 e!4613641))

(declare-fun e!4613642 () Bool)

(assert (=> start!740888 e!4613642))

(declare-fun e!4613647 () Bool)

(assert (=> start!740888 e!4613647))

(declare-fun e!4613643 () Bool)

(assert (=> start!740888 e!4613643))

(declare-fun b!7791406 () Bool)

(declare-fun tp_is_empty!52075 () Bool)

(declare-fun tp!2293644 () Bool)

(assert (=> b!7791406 (= e!4613643 (and tp_is_empty!52075 tp!2293644))))

(declare-fun b!7791407 () Bool)

(assert (=> b!7791407 (= e!4613642 tp_is_empty!52075)))

(declare-fun b!7791408 () Bool)

(assert (=> b!7791408 (= e!4613647 tp_is_empty!52075)))

(declare-fun b!7791409 () Bool)

(declare-fun e!4613644 () Bool)

(declare-fun e!4613640 () Bool)

(assert (=> b!7791409 (= e!4613644 e!4613640)))

(declare-fun res!3104213 () Bool)

(assert (=> b!7791409 (=> (not res!3104213) (not e!4613640))))

(declare-fun lt!2673648 () Regex!20860)

(declare-datatypes ((List!73699 0))(
  ( (Nil!73575) (Cons!73575 (h!80023 C!42046) (t!388434 List!73699)) )
))
(declare-fun s!14292 () List!73699)

(declare-fun matchR!10320 (Regex!20860 List!73699) Bool)

(assert (=> b!7791409 (= res!3104213 (matchR!10320 lt!2673648 (t!388434 s!14292)))))

(declare-fun lt!2673651 () Regex!20860)

(declare-fun derivativeStep!6197 (Regex!20860 C!42046) Regex!20860)

(assert (=> b!7791409 (= lt!2673648 (derivativeStep!6197 lt!2673651 (h!80023 s!14292)))))

(declare-fun b!7791410 () Bool)

(declare-fun e!4613646 () Bool)

(declare-fun lt!2673650 () Regex!20860)

(assert (=> b!7791410 (= e!4613646 (matchR!10320 lt!2673650 (t!388434 s!14292)))))

(declare-fun b!7791411 () Bool)

(declare-fun e!4613648 () Bool)

(declare-fun ListPrimitiveSize!447 (List!73699) Int)

(assert (=> b!7791411 (= e!4613648 (< (ListPrimitiveSize!447 (t!388434 s!14292)) (ListPrimitiveSize!447 s!14292)))))

(declare-fun b!7791412 () Bool)

(assert (=> b!7791412 (= e!4613641 e!4613644)))

(declare-fun res!3104218 () Bool)

(assert (=> b!7791412 (=> (not res!3104218) (not e!4613644))))

(assert (=> b!7791412 (= res!3104218 (matchR!10320 lt!2673651 s!14292))))

(declare-fun r2!6217 () Regex!20860)

(assert (=> b!7791412 (= lt!2673651 (Concat!29705 r1!6279 r2!6217))))

(declare-fun b!7791413 () Bool)

(declare-fun tp!2293636 () Bool)

(declare-fun tp!2293639 () Bool)

(assert (=> b!7791413 (= e!4613647 (and tp!2293636 tp!2293639))))

(declare-fun b!7791414 () Bool)

(declare-fun tp!2293646 () Bool)

(assert (=> b!7791414 (= e!4613642 tp!2293646)))

(declare-fun b!7791415 () Bool)

(declare-fun e!4613645 () Bool)

(assert (=> b!7791415 (= e!4613645 (not e!4613648))))

(declare-fun res!3104216 () Bool)

(assert (=> b!7791415 (=> res!3104216 e!4613648)))

(declare-fun lt!2673647 () Bool)

(assert (=> b!7791415 (= res!3104216 (not lt!2673647))))

(assert (=> b!7791415 e!4613646))

(declare-fun res!3104217 () Bool)

(assert (=> b!7791415 (=> res!3104217 e!4613646)))

(assert (=> b!7791415 (= res!3104217 lt!2673647)))

(declare-fun lt!2673645 () Regex!20860)

(assert (=> b!7791415 (= lt!2673647 (matchR!10320 lt!2673645 (t!388434 s!14292)))))

(declare-datatypes ((Unit!168566 0))(
  ( (Unit!168567) )
))
(declare-fun lt!2673649 () Unit!168566)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!403 (Regex!20860 Regex!20860 List!73699) Unit!168566)

(assert (=> b!7791415 (= lt!2673649 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!403 lt!2673645 lt!2673650 (t!388434 s!14292)))))

(declare-fun b!7791416 () Bool)

(declare-fun tp!2293640 () Bool)

(declare-fun tp!2293642 () Bool)

(assert (=> b!7791416 (= e!4613642 (and tp!2293640 tp!2293642))))

(declare-fun b!7791417 () Bool)

(declare-fun tp!2293637 () Bool)

(declare-fun tp!2293638 () Bool)

(assert (=> b!7791417 (= e!4613642 (and tp!2293637 tp!2293638))))

(declare-fun b!7791418 () Bool)

(declare-fun res!3104222 () Bool)

(assert (=> b!7791418 (=> (not res!3104222) (not e!4613641))))

(assert (=> b!7791418 (= res!3104222 (validRegex!11274 r2!6217))))

(declare-fun b!7791419 () Bool)

(declare-fun res!3104221 () Bool)

(assert (=> b!7791419 (=> (not res!3104221) (not e!4613644))))

(assert (=> b!7791419 (= res!3104221 (is-Cons!73575 s!14292))))

(declare-fun b!7791420 () Bool)

(declare-fun tp!2293645 () Bool)

(declare-fun tp!2293643 () Bool)

(assert (=> b!7791420 (= e!4613647 (and tp!2293645 tp!2293643))))

(declare-fun b!7791421 () Bool)

(declare-fun tp!2293641 () Bool)

(assert (=> b!7791421 (= e!4613647 tp!2293641)))

(declare-fun b!7791422 () Bool)

(declare-fun res!3104214 () Bool)

(assert (=> b!7791422 (=> res!3104214 e!4613648)))

(declare-fun lt!2673646 () Regex!20860)

(assert (=> b!7791422 (= res!3104214 (not (validRegex!11274 lt!2673646)))))

(declare-fun b!7791423 () Bool)

(declare-fun res!3104219 () Bool)

(assert (=> b!7791423 (=> (not res!3104219) (not e!4613640))))

(declare-fun nullable!9244 (Regex!20860) Bool)

(assert (=> b!7791423 (= res!3104219 (nullable!9244 r1!6279))))

(declare-fun b!7791424 () Bool)

(assert (=> b!7791424 (= e!4613640 e!4613645)))

(declare-fun res!3104215 () Bool)

(assert (=> b!7791424 (=> (not res!3104215) (not e!4613645))))

(assert (=> b!7791424 (= res!3104215 (= lt!2673648 (Union!20860 lt!2673645 lt!2673650)))))

(assert (=> b!7791424 (= lt!2673650 (derivativeStep!6197 r2!6217 (h!80023 s!14292)))))

(assert (=> b!7791424 (= lt!2673645 (Concat!29705 lt!2673646 r2!6217))))

(assert (=> b!7791424 (= lt!2673646 (derivativeStep!6197 r1!6279 (h!80023 s!14292)))))

(assert (= (and start!740888 res!3104220) b!7791418))

(assert (= (and b!7791418 res!3104222) b!7791412))

(assert (= (and b!7791412 res!3104218) b!7791419))

(assert (= (and b!7791419 res!3104221) b!7791409))

(assert (= (and b!7791409 res!3104213) b!7791423))

(assert (= (and b!7791423 res!3104219) b!7791424))

(assert (= (and b!7791424 res!3104215) b!7791415))

(assert (= (and b!7791415 (not res!3104217)) b!7791410))

(assert (= (and b!7791415 (not res!3104216)) b!7791422))

(assert (= (and b!7791422 (not res!3104214)) b!7791411))

(assert (= (and start!740888 (is-ElementMatch!20860 r1!6279)) b!7791407))

(assert (= (and start!740888 (is-Concat!29705 r1!6279)) b!7791417))

(assert (= (and start!740888 (is-Star!20860 r1!6279)) b!7791414))

(assert (= (and start!740888 (is-Union!20860 r1!6279)) b!7791416))

(assert (= (and start!740888 (is-ElementMatch!20860 r2!6217)) b!7791408))

(assert (= (and start!740888 (is-Concat!29705 r2!6217)) b!7791413))

(assert (= (and start!740888 (is-Star!20860 r2!6217)) b!7791421))

(assert (= (and start!740888 (is-Union!20860 r2!6217)) b!7791420))

(assert (= (and start!740888 (is-Cons!73575 s!14292)) b!7791406))

(declare-fun m!8232138 () Bool)

(assert (=> b!7791410 m!8232138))

(declare-fun m!8232140 () Bool)

(assert (=> b!7791422 m!8232140))

(declare-fun m!8232142 () Bool)

(assert (=> b!7791415 m!8232142))

(declare-fun m!8232144 () Bool)

(assert (=> b!7791415 m!8232144))

(declare-fun m!8232146 () Bool)

(assert (=> b!7791412 m!8232146))

(declare-fun m!8232148 () Bool)

(assert (=> start!740888 m!8232148))

(declare-fun m!8232150 () Bool)

(assert (=> b!7791424 m!8232150))

(declare-fun m!8232152 () Bool)

(assert (=> b!7791424 m!8232152))

(declare-fun m!8232154 () Bool)

(assert (=> b!7791409 m!8232154))

(declare-fun m!8232156 () Bool)

(assert (=> b!7791409 m!8232156))

(declare-fun m!8232158 () Bool)

(assert (=> b!7791423 m!8232158))

(declare-fun m!8232160 () Bool)

(assert (=> b!7791411 m!8232160))

(declare-fun m!8232162 () Bool)

(assert (=> b!7791411 m!8232162))

(declare-fun m!8232164 () Bool)

(assert (=> b!7791418 m!8232164))

(push 1)

(assert (not start!740888))

(assert (not b!7791409))

(assert (not b!7791411))

(assert tp_is_empty!52075)

(assert (not b!7791415))

(assert (not b!7791406))

(assert (not b!7791422))

(assert (not b!7791424))

(assert (not b!7791416))

(assert (not b!7791420))

(assert (not b!7791414))

(assert (not b!7791421))

(assert (not b!7791413))

(assert (not b!7791412))

(assert (not b!7791423))

(assert (not b!7791417))

(assert (not b!7791418))

(assert (not b!7791410))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7791522 () Bool)

(declare-fun e!4613698 () Regex!20860)

(declare-fun call!722191 () Regex!20860)

(assert (=> b!7791522 (= e!4613698 (Union!20860 (Concat!29705 call!722191 (regTwo!42232 r2!6217)) EmptyLang!20860))))

(declare-fun b!7791523 () Bool)

(declare-fun c!1434945 () Bool)

(assert (=> b!7791523 (= c!1434945 (is-Union!20860 r2!6217))))

(declare-fun e!4613700 () Regex!20860)

(declare-fun e!4613696 () Regex!20860)

(assert (=> b!7791523 (= e!4613700 e!4613696)))

(declare-fun b!7791524 () Bool)

(declare-fun e!4613699 () Regex!20860)

(assert (=> b!7791524 (= e!4613696 e!4613699)))

(declare-fun c!1434948 () Bool)

(assert (=> b!7791524 (= c!1434948 (is-Star!20860 r2!6217))))

(declare-fun b!7791525 () Bool)

(declare-fun c!1434946 () Bool)

(assert (=> b!7791525 (= c!1434946 (nullable!9244 (regOne!42232 r2!6217)))))

(assert (=> b!7791525 (= e!4613699 e!4613698)))

(declare-fun b!7791526 () Bool)

(declare-fun e!4613697 () Regex!20860)

(assert (=> b!7791526 (= e!4613697 e!4613700)))

(declare-fun c!1434947 () Bool)

(assert (=> b!7791526 (= c!1434947 (is-ElementMatch!20860 r2!6217))))

(declare-fun b!7791527 () Bool)

(declare-fun call!722192 () Regex!20860)

(declare-fun call!722194 () Regex!20860)

(assert (=> b!7791527 (= e!4613696 (Union!20860 call!722192 call!722194))))

(declare-fun d!2345972 () Bool)

(declare-fun lt!2673677 () Regex!20860)

(assert (=> d!2345972 (validRegex!11274 lt!2673677)))

(assert (=> d!2345972 (= lt!2673677 e!4613697)))

(declare-fun c!1434949 () Bool)

(assert (=> d!2345972 (= c!1434949 (or (is-EmptyExpr!20860 r2!6217) (is-EmptyLang!20860 r2!6217)))))

(assert (=> d!2345972 (validRegex!11274 r2!6217)))

(assert (=> d!2345972 (= (derivativeStep!6197 r2!6217 (h!80023 s!14292)) lt!2673677)))

(declare-fun b!7791528 () Bool)

(assert (=> b!7791528 (= e!4613700 (ite (= (h!80023 s!14292) (c!1434923 r2!6217)) EmptyExpr!20860 EmptyLang!20860))))

(declare-fun call!722193 () Regex!20860)

(declare-fun b!7791529 () Bool)

(assert (=> b!7791529 (= e!4613698 (Union!20860 (Concat!29705 call!722193 (regTwo!42232 r2!6217)) call!722191))))

(declare-fun b!7791530 () Bool)

(assert (=> b!7791530 (= e!4613699 (Concat!29705 call!722193 r2!6217))))

(declare-fun bm!722186 () Bool)

(assert (=> bm!722186 (= call!722193 call!722194)))

(declare-fun bm!722187 () Bool)

(assert (=> bm!722187 (= call!722194 (derivativeStep!6197 (ite c!1434945 (regTwo!42233 r2!6217) (ite c!1434948 (reg!21189 r2!6217) (regOne!42232 r2!6217))) (h!80023 s!14292)))))

(declare-fun bm!722188 () Bool)

(assert (=> bm!722188 (= call!722191 call!722192)))

(declare-fun b!7791531 () Bool)

(assert (=> b!7791531 (= e!4613697 EmptyLang!20860)))

(declare-fun bm!722189 () Bool)

(assert (=> bm!722189 (= call!722192 (derivativeStep!6197 (ite c!1434945 (regOne!42233 r2!6217) (ite c!1434946 (regTwo!42232 r2!6217) (regOne!42232 r2!6217))) (h!80023 s!14292)))))

(assert (= (and d!2345972 c!1434949) b!7791531))

(assert (= (and d!2345972 (not c!1434949)) b!7791526))

(assert (= (and b!7791526 c!1434947) b!7791528))

(assert (= (and b!7791526 (not c!1434947)) b!7791523))

(assert (= (and b!7791523 c!1434945) b!7791527))

(assert (= (and b!7791523 (not c!1434945)) b!7791524))

(assert (= (and b!7791524 c!1434948) b!7791530))

(assert (= (and b!7791524 (not c!1434948)) b!7791525))

(assert (= (and b!7791525 c!1434946) b!7791529))

(assert (= (and b!7791525 (not c!1434946)) b!7791522))

(assert (= (or b!7791529 b!7791522) bm!722188))

(assert (= (or b!7791530 b!7791529) bm!722186))

(assert (= (or b!7791527 bm!722186) bm!722187))

(assert (= (or b!7791527 bm!722188) bm!722189))

(declare-fun m!8232194 () Bool)

(assert (=> b!7791525 m!8232194))

(declare-fun m!8232196 () Bool)

(assert (=> d!2345972 m!8232196))

(assert (=> d!2345972 m!8232164))

(declare-fun m!8232198 () Bool)

(assert (=> bm!722187 m!8232198))

(declare-fun m!8232200 () Bool)

(assert (=> bm!722189 m!8232200))

(assert (=> b!7791424 d!2345972))

(declare-fun b!7791532 () Bool)

(declare-fun e!4613703 () Regex!20860)

(declare-fun call!722195 () Regex!20860)

(assert (=> b!7791532 (= e!4613703 (Union!20860 (Concat!29705 call!722195 (regTwo!42232 r1!6279)) EmptyLang!20860))))

(declare-fun b!7791533 () Bool)

(declare-fun c!1434950 () Bool)

(assert (=> b!7791533 (= c!1434950 (is-Union!20860 r1!6279))))

(declare-fun e!4613705 () Regex!20860)

(declare-fun e!4613701 () Regex!20860)

(assert (=> b!7791533 (= e!4613705 e!4613701)))

(declare-fun b!7791534 () Bool)

(declare-fun e!4613704 () Regex!20860)

(assert (=> b!7791534 (= e!4613701 e!4613704)))

(declare-fun c!1434953 () Bool)

(assert (=> b!7791534 (= c!1434953 (is-Star!20860 r1!6279))))

(declare-fun b!7791535 () Bool)

(declare-fun c!1434951 () Bool)

(assert (=> b!7791535 (= c!1434951 (nullable!9244 (regOne!42232 r1!6279)))))

(assert (=> b!7791535 (= e!4613704 e!4613703)))

(declare-fun b!7791536 () Bool)

(declare-fun e!4613702 () Regex!20860)

(assert (=> b!7791536 (= e!4613702 e!4613705)))

(declare-fun c!1434952 () Bool)

(assert (=> b!7791536 (= c!1434952 (is-ElementMatch!20860 r1!6279))))

(declare-fun b!7791537 () Bool)

(declare-fun call!722196 () Regex!20860)

(declare-fun call!722198 () Regex!20860)

(assert (=> b!7791537 (= e!4613701 (Union!20860 call!722196 call!722198))))

(declare-fun d!2345974 () Bool)

(declare-fun lt!2673678 () Regex!20860)

(assert (=> d!2345974 (validRegex!11274 lt!2673678)))

(assert (=> d!2345974 (= lt!2673678 e!4613702)))

(declare-fun c!1434954 () Bool)

(assert (=> d!2345974 (= c!1434954 (or (is-EmptyExpr!20860 r1!6279) (is-EmptyLang!20860 r1!6279)))))

(assert (=> d!2345974 (validRegex!11274 r1!6279)))

(assert (=> d!2345974 (= (derivativeStep!6197 r1!6279 (h!80023 s!14292)) lt!2673678)))

(declare-fun b!7791538 () Bool)

(assert (=> b!7791538 (= e!4613705 (ite (= (h!80023 s!14292) (c!1434923 r1!6279)) EmptyExpr!20860 EmptyLang!20860))))

(declare-fun b!7791539 () Bool)

(declare-fun call!722197 () Regex!20860)

(assert (=> b!7791539 (= e!4613703 (Union!20860 (Concat!29705 call!722197 (regTwo!42232 r1!6279)) call!722195))))

(declare-fun b!7791540 () Bool)

(assert (=> b!7791540 (= e!4613704 (Concat!29705 call!722197 r1!6279))))

(declare-fun bm!722190 () Bool)

(assert (=> bm!722190 (= call!722197 call!722198)))

(declare-fun bm!722191 () Bool)

(assert (=> bm!722191 (= call!722198 (derivativeStep!6197 (ite c!1434950 (regTwo!42233 r1!6279) (ite c!1434953 (reg!21189 r1!6279) (regOne!42232 r1!6279))) (h!80023 s!14292)))))

(declare-fun bm!722192 () Bool)

(assert (=> bm!722192 (= call!722195 call!722196)))

(declare-fun b!7791541 () Bool)

(assert (=> b!7791541 (= e!4613702 EmptyLang!20860)))

(declare-fun bm!722193 () Bool)

(assert (=> bm!722193 (= call!722196 (derivativeStep!6197 (ite c!1434950 (regOne!42233 r1!6279) (ite c!1434951 (regTwo!42232 r1!6279) (regOne!42232 r1!6279))) (h!80023 s!14292)))))

(assert (= (and d!2345974 c!1434954) b!7791541))

(assert (= (and d!2345974 (not c!1434954)) b!7791536))

(assert (= (and b!7791536 c!1434952) b!7791538))

(assert (= (and b!7791536 (not c!1434952)) b!7791533))

(assert (= (and b!7791533 c!1434950) b!7791537))

(assert (= (and b!7791533 (not c!1434950)) b!7791534))

(assert (= (and b!7791534 c!1434953) b!7791540))

(assert (= (and b!7791534 (not c!1434953)) b!7791535))

(assert (= (and b!7791535 c!1434951) b!7791539))

(assert (= (and b!7791535 (not c!1434951)) b!7791532))

(assert (= (or b!7791539 b!7791532) bm!722192))

(assert (= (or b!7791540 b!7791539) bm!722190))

(assert (= (or b!7791537 bm!722190) bm!722191))

(assert (= (or b!7791537 bm!722192) bm!722193))

(declare-fun m!8232202 () Bool)

(assert (=> b!7791535 m!8232202))

(declare-fun m!8232204 () Bool)

(assert (=> d!2345974 m!8232204))

(assert (=> d!2345974 m!8232148))

(declare-fun m!8232206 () Bool)

(assert (=> bm!722191 m!8232206))

(declare-fun m!8232208 () Bool)

(assert (=> bm!722193 m!8232208))

(assert (=> b!7791424 d!2345974))

(declare-fun b!7791580 () Bool)

(declare-fun e!4613736 () Bool)

(declare-fun e!4613735 () Bool)

(assert (=> b!7791580 (= e!4613736 e!4613735)))

(declare-fun c!1434970 () Bool)

(assert (=> b!7791580 (= c!1434970 (is-Star!20860 r1!6279))))

(declare-fun bm!722208 () Bool)

(declare-fun call!722215 () Bool)

(declare-fun c!1434969 () Bool)

(assert (=> bm!722208 (= call!722215 (validRegex!11274 (ite c!1434969 (regOne!42233 r1!6279) (regOne!42232 r1!6279))))))

(declare-fun bm!722209 () Bool)

(declare-fun call!722213 () Bool)

(declare-fun call!722214 () Bool)

(assert (=> bm!722209 (= call!722213 call!722214)))

(declare-fun bm!722210 () Bool)

(assert (=> bm!722210 (= call!722214 (validRegex!11274 (ite c!1434970 (reg!21189 r1!6279) (ite c!1434969 (regTwo!42233 r1!6279) (regTwo!42232 r1!6279)))))))

(declare-fun d!2345976 () Bool)

(declare-fun res!3104266 () Bool)

(assert (=> d!2345976 (=> res!3104266 e!4613736)))

(assert (=> d!2345976 (= res!3104266 (is-ElementMatch!20860 r1!6279))))

(assert (=> d!2345976 (= (validRegex!11274 r1!6279) e!4613736)))

(declare-fun b!7791581 () Bool)

(declare-fun e!4613733 () Bool)

(assert (=> b!7791581 (= e!4613733 call!722213)))

(declare-fun b!7791582 () Bool)

(declare-fun e!4613731 () Bool)

(assert (=> b!7791582 (= e!4613731 call!722213)))

(declare-fun b!7791583 () Bool)

(declare-fun e!4613730 () Bool)

(assert (=> b!7791583 (= e!4613735 e!4613730)))

(assert (=> b!7791583 (= c!1434969 (is-Union!20860 r1!6279))))

(declare-fun b!7791584 () Bool)

(declare-fun res!3104267 () Bool)

(assert (=> b!7791584 (=> (not res!3104267) (not e!4613731))))

(assert (=> b!7791584 (= res!3104267 call!722215)))

(assert (=> b!7791584 (= e!4613730 e!4613731)))

(declare-fun b!7791585 () Bool)

(declare-fun e!4613734 () Bool)

(assert (=> b!7791585 (= e!4613734 call!722214)))

(declare-fun b!7791586 () Bool)

(assert (=> b!7791586 (= e!4613735 e!4613734)))

(declare-fun res!3104263 () Bool)

(assert (=> b!7791586 (= res!3104263 (not (nullable!9244 (reg!21189 r1!6279))))))

(assert (=> b!7791586 (=> (not res!3104263) (not e!4613734))))

(declare-fun b!7791587 () Bool)

(declare-fun e!4613732 () Bool)

(assert (=> b!7791587 (= e!4613732 e!4613733)))

(declare-fun res!3104265 () Bool)

(assert (=> b!7791587 (=> (not res!3104265) (not e!4613733))))

(assert (=> b!7791587 (= res!3104265 call!722215)))

(declare-fun b!7791588 () Bool)

(declare-fun res!3104264 () Bool)

(assert (=> b!7791588 (=> res!3104264 e!4613732)))

(assert (=> b!7791588 (= res!3104264 (not (is-Concat!29705 r1!6279)))))

(assert (=> b!7791588 (= e!4613730 e!4613732)))

(assert (= (and d!2345976 (not res!3104266)) b!7791580))

(assert (= (and b!7791580 c!1434970) b!7791586))

(assert (= (and b!7791580 (not c!1434970)) b!7791583))

(assert (= (and b!7791586 res!3104263) b!7791585))

(assert (= (and b!7791583 c!1434969) b!7791584))

(assert (= (and b!7791583 (not c!1434969)) b!7791588))

(assert (= (and b!7791584 res!3104267) b!7791582))

(assert (= (and b!7791588 (not res!3104264)) b!7791587))

(assert (= (and b!7791587 res!3104265) b!7791581))

(assert (= (or b!7791584 b!7791587) bm!722208))

(assert (= (or b!7791582 b!7791581) bm!722209))

(assert (= (or b!7791585 bm!722209) bm!722210))

(declare-fun m!8232222 () Bool)

(assert (=> bm!722208 m!8232222))

(declare-fun m!8232224 () Bool)

(assert (=> bm!722210 m!8232224))

(declare-fun m!8232226 () Bool)

(assert (=> b!7791586 m!8232226))

(assert (=> start!740888 d!2345976))

(declare-fun b!7791635 () Bool)

(declare-fun e!4613770 () Bool)

(declare-fun head!15937 (List!73699) C!42046)

(assert (=> b!7791635 (= e!4613770 (= (head!15937 (t!388434 s!14292)) (c!1434923 lt!2673648)))))

(declare-fun b!7791636 () Bool)

(declare-fun e!4613767 () Bool)

(declare-fun e!4613766 () Bool)

(assert (=> b!7791636 (= e!4613767 e!4613766)))

(declare-fun c!1434982 () Bool)

(assert (=> b!7791636 (= c!1434982 (is-EmptyLang!20860 lt!2673648))))

(declare-fun b!7791637 () Bool)

(declare-fun e!4613765 () Bool)

(assert (=> b!7791637 (= e!4613765 (nullable!9244 lt!2673648))))

(declare-fun b!7791638 () Bool)

(declare-fun res!3104297 () Bool)

(assert (=> b!7791638 (=> (not res!3104297) (not e!4613770))))

(declare-fun isEmpty!42212 (List!73699) Bool)

(declare-fun tail!15478 (List!73699) List!73699)

(assert (=> b!7791638 (= res!3104297 (isEmpty!42212 (tail!15478 (t!388434 s!14292))))))

(declare-fun bm!722219 () Bool)

(declare-fun call!722224 () Bool)

(assert (=> bm!722219 (= call!722224 (isEmpty!42212 (t!388434 s!14292)))))

(declare-fun b!7791639 () Bool)

(declare-fun e!4613768 () Bool)

(declare-fun e!4613771 () Bool)

(assert (=> b!7791639 (= e!4613768 e!4613771)))

(declare-fun res!3104301 () Bool)

(assert (=> b!7791639 (=> res!3104301 e!4613771)))

(assert (=> b!7791639 (= res!3104301 call!722224)))

(declare-fun b!7791641 () Bool)

(declare-fun lt!2673683 () Bool)

(assert (=> b!7791641 (= e!4613766 (not lt!2673683))))

(declare-fun b!7791642 () Bool)

(declare-fun res!3104295 () Bool)

(declare-fun e!4613769 () Bool)

(assert (=> b!7791642 (=> res!3104295 e!4613769)))

(assert (=> b!7791642 (= res!3104295 (not (is-ElementMatch!20860 lt!2673648)))))

(assert (=> b!7791642 (= e!4613766 e!4613769)))

(declare-fun b!7791643 () Bool)

(declare-fun res!3104294 () Bool)

(assert (=> b!7791643 (=> (not res!3104294) (not e!4613770))))

(assert (=> b!7791643 (= res!3104294 (not call!722224))))

(declare-fun b!7791644 () Bool)

(assert (=> b!7791644 (= e!4613767 (= lt!2673683 call!722224))))

(declare-fun b!7791645 () Bool)

(declare-fun res!3104299 () Bool)

(assert (=> b!7791645 (=> res!3104299 e!4613771)))

(assert (=> b!7791645 (= res!3104299 (not (isEmpty!42212 (tail!15478 (t!388434 s!14292)))))))

(declare-fun b!7791646 () Bool)

(assert (=> b!7791646 (= e!4613769 e!4613768)))

(declare-fun res!3104296 () Bool)

(assert (=> b!7791646 (=> (not res!3104296) (not e!4613768))))

(assert (=> b!7791646 (= res!3104296 (not lt!2673683))))

(declare-fun b!7791647 () Bool)

(assert (=> b!7791647 (= e!4613765 (matchR!10320 (derivativeStep!6197 lt!2673648 (head!15937 (t!388434 s!14292))) (tail!15478 (t!388434 s!14292))))))

(declare-fun b!7791648 () Bool)

(declare-fun res!3104300 () Bool)

(assert (=> b!7791648 (=> res!3104300 e!4613769)))

(assert (=> b!7791648 (= res!3104300 e!4613770)))

(declare-fun res!3104298 () Bool)

(assert (=> b!7791648 (=> (not res!3104298) (not e!4613770))))

(assert (=> b!7791648 (= res!3104298 lt!2673683)))

(declare-fun d!2345980 () Bool)

(assert (=> d!2345980 e!4613767))

(declare-fun c!1434983 () Bool)

(assert (=> d!2345980 (= c!1434983 (is-EmptyExpr!20860 lt!2673648))))

(assert (=> d!2345980 (= lt!2673683 e!4613765)))

(declare-fun c!1434981 () Bool)

(assert (=> d!2345980 (= c!1434981 (isEmpty!42212 (t!388434 s!14292)))))

(assert (=> d!2345980 (validRegex!11274 lt!2673648)))

(assert (=> d!2345980 (= (matchR!10320 lt!2673648 (t!388434 s!14292)) lt!2673683)))

(declare-fun b!7791640 () Bool)

(assert (=> b!7791640 (= e!4613771 (not (= (head!15937 (t!388434 s!14292)) (c!1434923 lt!2673648))))))

(assert (= (and d!2345980 c!1434981) b!7791637))

(assert (= (and d!2345980 (not c!1434981)) b!7791647))

(assert (= (and d!2345980 c!1434983) b!7791644))

(assert (= (and d!2345980 (not c!1434983)) b!7791636))

(assert (= (and b!7791636 c!1434982) b!7791641))

(assert (= (and b!7791636 (not c!1434982)) b!7791642))

(assert (= (and b!7791642 (not res!3104295)) b!7791648))

(assert (= (and b!7791648 res!3104298) b!7791643))

(assert (= (and b!7791643 res!3104294) b!7791638))

(assert (= (and b!7791638 res!3104297) b!7791635))

(assert (= (and b!7791648 (not res!3104300)) b!7791646))

(assert (= (and b!7791646 res!3104296) b!7791639))

(assert (= (and b!7791639 (not res!3104301)) b!7791645))

(assert (= (and b!7791645 (not res!3104299)) b!7791640))

(assert (= (or b!7791644 b!7791639 b!7791643) bm!722219))

(declare-fun m!8232232 () Bool)

(assert (=> b!7791647 m!8232232))

(assert (=> b!7791647 m!8232232))

(declare-fun m!8232234 () Bool)

(assert (=> b!7791647 m!8232234))

(declare-fun m!8232236 () Bool)

(assert (=> b!7791647 m!8232236))

(assert (=> b!7791647 m!8232234))

(assert (=> b!7791647 m!8232236))

(declare-fun m!8232238 () Bool)

(assert (=> b!7791647 m!8232238))

(declare-fun m!8232240 () Bool)

(assert (=> bm!722219 m!8232240))

(declare-fun m!8232242 () Bool)

(assert (=> b!7791637 m!8232242))

(assert (=> b!7791640 m!8232232))

(assert (=> b!7791635 m!8232232))

(assert (=> b!7791645 m!8232236))

(assert (=> b!7791645 m!8232236))

(declare-fun m!8232244 () Bool)

(assert (=> b!7791645 m!8232244))

(assert (=> b!7791638 m!8232236))

(assert (=> b!7791638 m!8232236))

(assert (=> b!7791638 m!8232244))

(assert (=> d!2345980 m!8232240))

(declare-fun m!8232246 () Bool)

(assert (=> d!2345980 m!8232246))

(assert (=> b!7791409 d!2345980))

(declare-fun b!7791649 () Bool)

(declare-fun e!4613774 () Regex!20860)

(declare-fun call!722225 () Regex!20860)

(assert (=> b!7791649 (= e!4613774 (Union!20860 (Concat!29705 call!722225 (regTwo!42232 lt!2673651)) EmptyLang!20860))))

(declare-fun b!7791650 () Bool)

(declare-fun c!1434984 () Bool)

(assert (=> b!7791650 (= c!1434984 (is-Union!20860 lt!2673651))))

(declare-fun e!4613776 () Regex!20860)

(declare-fun e!4613772 () Regex!20860)

(assert (=> b!7791650 (= e!4613776 e!4613772)))

(declare-fun b!7791651 () Bool)

(declare-fun e!4613775 () Regex!20860)

(assert (=> b!7791651 (= e!4613772 e!4613775)))

(declare-fun c!1434987 () Bool)

(assert (=> b!7791651 (= c!1434987 (is-Star!20860 lt!2673651))))

(declare-fun b!7791652 () Bool)

(declare-fun c!1434985 () Bool)

(assert (=> b!7791652 (= c!1434985 (nullable!9244 (regOne!42232 lt!2673651)))))

(assert (=> b!7791652 (= e!4613775 e!4613774)))

(declare-fun b!7791653 () Bool)

(declare-fun e!4613773 () Regex!20860)

(assert (=> b!7791653 (= e!4613773 e!4613776)))

(declare-fun c!1434986 () Bool)

(assert (=> b!7791653 (= c!1434986 (is-ElementMatch!20860 lt!2673651))))

(declare-fun b!7791654 () Bool)

(declare-fun call!722226 () Regex!20860)

(declare-fun call!722228 () Regex!20860)

(assert (=> b!7791654 (= e!4613772 (Union!20860 call!722226 call!722228))))

(declare-fun d!2345984 () Bool)

(declare-fun lt!2673684 () Regex!20860)

(assert (=> d!2345984 (validRegex!11274 lt!2673684)))

(assert (=> d!2345984 (= lt!2673684 e!4613773)))

(declare-fun c!1434988 () Bool)

(assert (=> d!2345984 (= c!1434988 (or (is-EmptyExpr!20860 lt!2673651) (is-EmptyLang!20860 lt!2673651)))))

(assert (=> d!2345984 (validRegex!11274 lt!2673651)))

(assert (=> d!2345984 (= (derivativeStep!6197 lt!2673651 (h!80023 s!14292)) lt!2673684)))

(declare-fun b!7791655 () Bool)

(assert (=> b!7791655 (= e!4613776 (ite (= (h!80023 s!14292) (c!1434923 lt!2673651)) EmptyExpr!20860 EmptyLang!20860))))

(declare-fun b!7791656 () Bool)

(declare-fun call!722227 () Regex!20860)

(assert (=> b!7791656 (= e!4613774 (Union!20860 (Concat!29705 call!722227 (regTwo!42232 lt!2673651)) call!722225))))

(declare-fun b!7791657 () Bool)

(assert (=> b!7791657 (= e!4613775 (Concat!29705 call!722227 lt!2673651))))

(declare-fun bm!722220 () Bool)

(assert (=> bm!722220 (= call!722227 call!722228)))

(declare-fun bm!722221 () Bool)

(assert (=> bm!722221 (= call!722228 (derivativeStep!6197 (ite c!1434984 (regTwo!42233 lt!2673651) (ite c!1434987 (reg!21189 lt!2673651) (regOne!42232 lt!2673651))) (h!80023 s!14292)))))

(declare-fun bm!722222 () Bool)

(assert (=> bm!722222 (= call!722225 call!722226)))

(declare-fun b!7791658 () Bool)

(assert (=> b!7791658 (= e!4613773 EmptyLang!20860)))

(declare-fun bm!722223 () Bool)

(assert (=> bm!722223 (= call!722226 (derivativeStep!6197 (ite c!1434984 (regOne!42233 lt!2673651) (ite c!1434985 (regTwo!42232 lt!2673651) (regOne!42232 lt!2673651))) (h!80023 s!14292)))))

(assert (= (and d!2345984 c!1434988) b!7791658))

(assert (= (and d!2345984 (not c!1434988)) b!7791653))

(assert (= (and b!7791653 c!1434986) b!7791655))

(assert (= (and b!7791653 (not c!1434986)) b!7791650))

(assert (= (and b!7791650 c!1434984) b!7791654))

(assert (= (and b!7791650 (not c!1434984)) b!7791651))

(assert (= (and b!7791651 c!1434987) b!7791657))

(assert (= (and b!7791651 (not c!1434987)) b!7791652))

(assert (= (and b!7791652 c!1434985) b!7791656))

(assert (= (and b!7791652 (not c!1434985)) b!7791649))

(assert (= (or b!7791656 b!7791649) bm!722222))

(assert (= (or b!7791657 b!7791656) bm!722220))

(assert (= (or b!7791654 bm!722220) bm!722221))

(assert (= (or b!7791654 bm!722222) bm!722223))

(declare-fun m!8232248 () Bool)

(assert (=> b!7791652 m!8232248))

(declare-fun m!8232250 () Bool)

(assert (=> d!2345984 m!8232250))

(declare-fun m!8232252 () Bool)

(assert (=> d!2345984 m!8232252))

(declare-fun m!8232254 () Bool)

(assert (=> bm!722221 m!8232254))

(declare-fun m!8232256 () Bool)

(assert (=> bm!722223 m!8232256))

(assert (=> b!7791409 d!2345984))

(declare-fun b!7791659 () Bool)

(declare-fun e!4613782 () Bool)

(assert (=> b!7791659 (= e!4613782 (= (head!15937 (t!388434 s!14292)) (c!1434923 lt!2673650)))))

(declare-fun b!7791660 () Bool)

(declare-fun e!4613779 () Bool)

(declare-fun e!4613778 () Bool)

(assert (=> b!7791660 (= e!4613779 e!4613778)))

(declare-fun c!1434990 () Bool)

(assert (=> b!7791660 (= c!1434990 (is-EmptyLang!20860 lt!2673650))))

(declare-fun b!7791661 () Bool)

(declare-fun e!4613777 () Bool)

(assert (=> b!7791661 (= e!4613777 (nullable!9244 lt!2673650))))

(declare-fun b!7791662 () Bool)

(declare-fun res!3104305 () Bool)

(assert (=> b!7791662 (=> (not res!3104305) (not e!4613782))))

(assert (=> b!7791662 (= res!3104305 (isEmpty!42212 (tail!15478 (t!388434 s!14292))))))

(declare-fun bm!722224 () Bool)

(declare-fun call!722229 () Bool)

(assert (=> bm!722224 (= call!722229 (isEmpty!42212 (t!388434 s!14292)))))

(declare-fun b!7791663 () Bool)

(declare-fun e!4613780 () Bool)

(declare-fun e!4613783 () Bool)

(assert (=> b!7791663 (= e!4613780 e!4613783)))

(declare-fun res!3104309 () Bool)

(assert (=> b!7791663 (=> res!3104309 e!4613783)))

(assert (=> b!7791663 (= res!3104309 call!722229)))

(declare-fun b!7791665 () Bool)

(declare-fun lt!2673685 () Bool)

(assert (=> b!7791665 (= e!4613778 (not lt!2673685))))

(declare-fun b!7791666 () Bool)

(declare-fun res!3104303 () Bool)

(declare-fun e!4613781 () Bool)

(assert (=> b!7791666 (=> res!3104303 e!4613781)))

(assert (=> b!7791666 (= res!3104303 (not (is-ElementMatch!20860 lt!2673650)))))

(assert (=> b!7791666 (= e!4613778 e!4613781)))

(declare-fun b!7791667 () Bool)

(declare-fun res!3104302 () Bool)

(assert (=> b!7791667 (=> (not res!3104302) (not e!4613782))))

(assert (=> b!7791667 (= res!3104302 (not call!722229))))

(declare-fun b!7791668 () Bool)

(assert (=> b!7791668 (= e!4613779 (= lt!2673685 call!722229))))

(declare-fun b!7791669 () Bool)

(declare-fun res!3104307 () Bool)

(assert (=> b!7791669 (=> res!3104307 e!4613783)))

(assert (=> b!7791669 (= res!3104307 (not (isEmpty!42212 (tail!15478 (t!388434 s!14292)))))))

(declare-fun b!7791670 () Bool)

(assert (=> b!7791670 (= e!4613781 e!4613780)))

(declare-fun res!3104304 () Bool)

(assert (=> b!7791670 (=> (not res!3104304) (not e!4613780))))

(assert (=> b!7791670 (= res!3104304 (not lt!2673685))))

(declare-fun b!7791671 () Bool)

(assert (=> b!7791671 (= e!4613777 (matchR!10320 (derivativeStep!6197 lt!2673650 (head!15937 (t!388434 s!14292))) (tail!15478 (t!388434 s!14292))))))

(declare-fun b!7791672 () Bool)

(declare-fun res!3104308 () Bool)

(assert (=> b!7791672 (=> res!3104308 e!4613781)))

(assert (=> b!7791672 (= res!3104308 e!4613782)))

(declare-fun res!3104306 () Bool)

(assert (=> b!7791672 (=> (not res!3104306) (not e!4613782))))

(assert (=> b!7791672 (= res!3104306 lt!2673685)))

(declare-fun d!2345986 () Bool)

(assert (=> d!2345986 e!4613779))

(declare-fun c!1434991 () Bool)

(assert (=> d!2345986 (= c!1434991 (is-EmptyExpr!20860 lt!2673650))))

(assert (=> d!2345986 (= lt!2673685 e!4613777)))

(declare-fun c!1434989 () Bool)

(assert (=> d!2345986 (= c!1434989 (isEmpty!42212 (t!388434 s!14292)))))

(assert (=> d!2345986 (validRegex!11274 lt!2673650)))

(assert (=> d!2345986 (= (matchR!10320 lt!2673650 (t!388434 s!14292)) lt!2673685)))

(declare-fun b!7791664 () Bool)

(assert (=> b!7791664 (= e!4613783 (not (= (head!15937 (t!388434 s!14292)) (c!1434923 lt!2673650))))))

(assert (= (and d!2345986 c!1434989) b!7791661))

(assert (= (and d!2345986 (not c!1434989)) b!7791671))

(assert (= (and d!2345986 c!1434991) b!7791668))

(assert (= (and d!2345986 (not c!1434991)) b!7791660))

(assert (= (and b!7791660 c!1434990) b!7791665))

(assert (= (and b!7791660 (not c!1434990)) b!7791666))

(assert (= (and b!7791666 (not res!3104303)) b!7791672))

(assert (= (and b!7791672 res!3104306) b!7791667))

(assert (= (and b!7791667 res!3104302) b!7791662))

(assert (= (and b!7791662 res!3104305) b!7791659))

(assert (= (and b!7791672 (not res!3104308)) b!7791670))

(assert (= (and b!7791670 res!3104304) b!7791663))

(assert (= (and b!7791663 (not res!3104309)) b!7791669))

(assert (= (and b!7791669 (not res!3104307)) b!7791664))

(assert (= (or b!7791668 b!7791663 b!7791667) bm!722224))

(assert (=> b!7791671 m!8232232))

(assert (=> b!7791671 m!8232232))

(declare-fun m!8232258 () Bool)

(assert (=> b!7791671 m!8232258))

(assert (=> b!7791671 m!8232236))

(assert (=> b!7791671 m!8232258))

(assert (=> b!7791671 m!8232236))

(declare-fun m!8232260 () Bool)

(assert (=> b!7791671 m!8232260))

(assert (=> bm!722224 m!8232240))

(declare-fun m!8232262 () Bool)

(assert (=> b!7791661 m!8232262))

(assert (=> b!7791664 m!8232232))

(assert (=> b!7791659 m!8232232))

(assert (=> b!7791669 m!8232236))

(assert (=> b!7791669 m!8232236))

(assert (=> b!7791669 m!8232244))

(assert (=> b!7791662 m!8232236))

(assert (=> b!7791662 m!8232236))

(assert (=> b!7791662 m!8232244))

(assert (=> d!2345986 m!8232240))

(declare-fun m!8232264 () Bool)

(assert (=> d!2345986 m!8232264))

(assert (=> b!7791410 d!2345986))

(declare-fun b!7791682 () Bool)

(declare-fun e!4613796 () Bool)

(assert (=> b!7791682 (= e!4613796 (= (head!15937 (t!388434 s!14292)) (c!1434923 lt!2673645)))))

(declare-fun b!7791683 () Bool)

(declare-fun e!4613793 () Bool)

(declare-fun e!4613792 () Bool)

(assert (=> b!7791683 (= e!4613793 e!4613792)))

(declare-fun c!1434995 () Bool)

(assert (=> b!7791683 (= c!1434995 (is-EmptyLang!20860 lt!2673645))))

(declare-fun b!7791684 () Bool)

(declare-fun e!4613791 () Bool)

(assert (=> b!7791684 (= e!4613791 (nullable!9244 lt!2673645))))

(declare-fun b!7791685 () Bool)

(declare-fun res!3104318 () Bool)

(assert (=> b!7791685 (=> (not res!3104318) (not e!4613796))))

(assert (=> b!7791685 (= res!3104318 (isEmpty!42212 (tail!15478 (t!388434 s!14292))))))

(declare-fun bm!722228 () Bool)

(declare-fun call!722233 () Bool)

(assert (=> bm!722228 (= call!722233 (isEmpty!42212 (t!388434 s!14292)))))

(declare-fun b!7791686 () Bool)

(declare-fun e!4613794 () Bool)

(declare-fun e!4613797 () Bool)

(assert (=> b!7791686 (= e!4613794 e!4613797)))

(declare-fun res!3104322 () Bool)

(assert (=> b!7791686 (=> res!3104322 e!4613797)))

(assert (=> b!7791686 (= res!3104322 call!722233)))

(declare-fun b!7791688 () Bool)

(declare-fun lt!2673686 () Bool)

(assert (=> b!7791688 (= e!4613792 (not lt!2673686))))

(declare-fun b!7791689 () Bool)

(declare-fun res!3104316 () Bool)

(declare-fun e!4613795 () Bool)

(assert (=> b!7791689 (=> res!3104316 e!4613795)))

(assert (=> b!7791689 (= res!3104316 (not (is-ElementMatch!20860 lt!2673645)))))

(assert (=> b!7791689 (= e!4613792 e!4613795)))

(declare-fun b!7791690 () Bool)

(declare-fun res!3104315 () Bool)

(assert (=> b!7791690 (=> (not res!3104315) (not e!4613796))))

(assert (=> b!7791690 (= res!3104315 (not call!722233))))

(declare-fun b!7791691 () Bool)

(assert (=> b!7791691 (= e!4613793 (= lt!2673686 call!722233))))

(declare-fun b!7791692 () Bool)

(declare-fun res!3104320 () Bool)

(assert (=> b!7791692 (=> res!3104320 e!4613797)))

(assert (=> b!7791692 (= res!3104320 (not (isEmpty!42212 (tail!15478 (t!388434 s!14292)))))))

(declare-fun b!7791693 () Bool)

(assert (=> b!7791693 (= e!4613795 e!4613794)))

(declare-fun res!3104317 () Bool)

(assert (=> b!7791693 (=> (not res!3104317) (not e!4613794))))

(assert (=> b!7791693 (= res!3104317 (not lt!2673686))))

(declare-fun b!7791694 () Bool)

(assert (=> b!7791694 (= e!4613791 (matchR!10320 (derivativeStep!6197 lt!2673645 (head!15937 (t!388434 s!14292))) (tail!15478 (t!388434 s!14292))))))

(declare-fun b!7791695 () Bool)

(declare-fun res!3104321 () Bool)

(assert (=> b!7791695 (=> res!3104321 e!4613795)))

(assert (=> b!7791695 (= res!3104321 e!4613796)))

(declare-fun res!3104319 () Bool)

(assert (=> b!7791695 (=> (not res!3104319) (not e!4613796))))

(assert (=> b!7791695 (= res!3104319 lt!2673686)))

(declare-fun d!2345988 () Bool)

(assert (=> d!2345988 e!4613793))

(declare-fun c!1434996 () Bool)

(assert (=> d!2345988 (= c!1434996 (is-EmptyExpr!20860 lt!2673645))))

(assert (=> d!2345988 (= lt!2673686 e!4613791)))

(declare-fun c!1434994 () Bool)

(assert (=> d!2345988 (= c!1434994 (isEmpty!42212 (t!388434 s!14292)))))

(assert (=> d!2345988 (validRegex!11274 lt!2673645)))

(assert (=> d!2345988 (= (matchR!10320 lt!2673645 (t!388434 s!14292)) lt!2673686)))

(declare-fun b!7791687 () Bool)

(assert (=> b!7791687 (= e!4613797 (not (= (head!15937 (t!388434 s!14292)) (c!1434923 lt!2673645))))))

(assert (= (and d!2345988 c!1434994) b!7791684))

(assert (= (and d!2345988 (not c!1434994)) b!7791694))

(assert (= (and d!2345988 c!1434996) b!7791691))

(assert (= (and d!2345988 (not c!1434996)) b!7791683))

(assert (= (and b!7791683 c!1434995) b!7791688))

(assert (= (and b!7791683 (not c!1434995)) b!7791689))

(assert (= (and b!7791689 (not res!3104316)) b!7791695))

(assert (= (and b!7791695 res!3104319) b!7791690))

(assert (= (and b!7791690 res!3104315) b!7791685))

(assert (= (and b!7791685 res!3104318) b!7791682))

(assert (= (and b!7791695 (not res!3104321)) b!7791693))

(assert (= (and b!7791693 res!3104317) b!7791686))

(assert (= (and b!7791686 (not res!3104322)) b!7791692))

(assert (= (and b!7791692 (not res!3104320)) b!7791687))

(assert (= (or b!7791691 b!7791686 b!7791690) bm!722228))

(assert (=> b!7791694 m!8232232))

(assert (=> b!7791694 m!8232232))

(declare-fun m!8232266 () Bool)

(assert (=> b!7791694 m!8232266))

(assert (=> b!7791694 m!8232236))

(assert (=> b!7791694 m!8232266))

(assert (=> b!7791694 m!8232236))

(declare-fun m!8232268 () Bool)

(assert (=> b!7791694 m!8232268))

(assert (=> bm!722228 m!8232240))

(declare-fun m!8232270 () Bool)

(assert (=> b!7791684 m!8232270))

(assert (=> b!7791687 m!8232232))

(assert (=> b!7791682 m!8232232))

(assert (=> b!7791692 m!8232236))

(assert (=> b!7791692 m!8232236))

(assert (=> b!7791692 m!8232244))

(assert (=> b!7791685 m!8232236))

(assert (=> b!7791685 m!8232236))

(assert (=> b!7791685 m!8232244))

(assert (=> d!2345988 m!8232240))

(declare-fun m!8232272 () Bool)

(assert (=> d!2345988 m!8232272))

(assert (=> b!7791415 d!2345988))

(declare-fun d!2345990 () Bool)

(declare-fun e!4613803 () Bool)

(assert (=> d!2345990 e!4613803))

(declare-fun res!3104328 () Bool)

(assert (=> d!2345990 (=> res!3104328 e!4613803)))

(assert (=> d!2345990 (= res!3104328 (matchR!10320 lt!2673645 (t!388434 s!14292)))))

(declare-fun lt!2673689 () Unit!168566)

(declare-fun choose!59514 (Regex!20860 Regex!20860 List!73699) Unit!168566)

(assert (=> d!2345990 (= lt!2673689 (choose!59514 lt!2673645 lt!2673650 (t!388434 s!14292)))))

(declare-fun e!4613802 () Bool)

(assert (=> d!2345990 e!4613802))

(declare-fun res!3104327 () Bool)

(assert (=> d!2345990 (=> (not res!3104327) (not e!4613802))))

(assert (=> d!2345990 (= res!3104327 (validRegex!11274 lt!2673645))))

(assert (=> d!2345990 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!403 lt!2673645 lt!2673650 (t!388434 s!14292)) lt!2673689)))

(declare-fun b!7791700 () Bool)

(assert (=> b!7791700 (= e!4613802 (validRegex!11274 lt!2673650))))

(declare-fun b!7791701 () Bool)

(assert (=> b!7791701 (= e!4613803 (matchR!10320 lt!2673650 (t!388434 s!14292)))))

(assert (= (and d!2345990 res!3104327) b!7791700))

(assert (= (and d!2345990 (not res!3104328)) b!7791701))

(assert (=> d!2345990 m!8232142))

(declare-fun m!8232280 () Bool)

(assert (=> d!2345990 m!8232280))

(assert (=> d!2345990 m!8232272))

(assert (=> b!7791700 m!8232264))

(assert (=> b!7791701 m!8232138))

(assert (=> b!7791415 d!2345990))

(declare-fun b!7791702 () Bool)

(declare-fun e!4613810 () Bool)

(declare-fun e!4613809 () Bool)

(assert (=> b!7791702 (= e!4613810 e!4613809)))

(declare-fun c!1434998 () Bool)

(assert (=> b!7791702 (= c!1434998 (is-Star!20860 lt!2673646))))

(declare-fun bm!722229 () Bool)

(declare-fun call!722236 () Bool)

(declare-fun c!1434997 () Bool)

(assert (=> bm!722229 (= call!722236 (validRegex!11274 (ite c!1434997 (regOne!42233 lt!2673646) (regOne!42232 lt!2673646))))))

(declare-fun bm!722230 () Bool)

(declare-fun call!722234 () Bool)

(declare-fun call!722235 () Bool)

(assert (=> bm!722230 (= call!722234 call!722235)))

(declare-fun bm!722231 () Bool)

(assert (=> bm!722231 (= call!722235 (validRegex!11274 (ite c!1434998 (reg!21189 lt!2673646) (ite c!1434997 (regTwo!42233 lt!2673646) (regTwo!42232 lt!2673646)))))))

(declare-fun d!2345994 () Bool)

(declare-fun res!3104332 () Bool)

(assert (=> d!2345994 (=> res!3104332 e!4613810)))

(assert (=> d!2345994 (= res!3104332 (is-ElementMatch!20860 lt!2673646))))

(assert (=> d!2345994 (= (validRegex!11274 lt!2673646) e!4613810)))

(declare-fun b!7791703 () Bool)

(declare-fun e!4613807 () Bool)

(assert (=> b!7791703 (= e!4613807 call!722234)))

(declare-fun b!7791704 () Bool)

(declare-fun e!4613805 () Bool)

(assert (=> b!7791704 (= e!4613805 call!722234)))

(declare-fun b!7791705 () Bool)

(declare-fun e!4613804 () Bool)

(assert (=> b!7791705 (= e!4613809 e!4613804)))

(assert (=> b!7791705 (= c!1434997 (is-Union!20860 lt!2673646))))

(declare-fun b!7791706 () Bool)

(declare-fun res!3104333 () Bool)

(assert (=> b!7791706 (=> (not res!3104333) (not e!4613805))))

(assert (=> b!7791706 (= res!3104333 call!722236)))

(assert (=> b!7791706 (= e!4613804 e!4613805)))

(declare-fun b!7791707 () Bool)

(declare-fun e!4613808 () Bool)

(assert (=> b!7791707 (= e!4613808 call!722235)))

(declare-fun b!7791708 () Bool)

(assert (=> b!7791708 (= e!4613809 e!4613808)))

(declare-fun res!3104329 () Bool)

(assert (=> b!7791708 (= res!3104329 (not (nullable!9244 (reg!21189 lt!2673646))))))

(assert (=> b!7791708 (=> (not res!3104329) (not e!4613808))))

(declare-fun b!7791709 () Bool)

(declare-fun e!4613806 () Bool)

(assert (=> b!7791709 (= e!4613806 e!4613807)))

(declare-fun res!3104331 () Bool)

(assert (=> b!7791709 (=> (not res!3104331) (not e!4613807))))

(assert (=> b!7791709 (= res!3104331 call!722236)))

(declare-fun b!7791710 () Bool)

(declare-fun res!3104330 () Bool)

(assert (=> b!7791710 (=> res!3104330 e!4613806)))

(assert (=> b!7791710 (= res!3104330 (not (is-Concat!29705 lt!2673646)))))

(assert (=> b!7791710 (= e!4613804 e!4613806)))

(assert (= (and d!2345994 (not res!3104332)) b!7791702))

(assert (= (and b!7791702 c!1434998) b!7791708))

(assert (= (and b!7791702 (not c!1434998)) b!7791705))

(assert (= (and b!7791708 res!3104329) b!7791707))

(assert (= (and b!7791705 c!1434997) b!7791706))

(assert (= (and b!7791705 (not c!1434997)) b!7791710))

(assert (= (and b!7791706 res!3104333) b!7791704))

(assert (= (and b!7791710 (not res!3104330)) b!7791709))

(assert (= (and b!7791709 res!3104331) b!7791703))

(assert (= (or b!7791706 b!7791709) bm!722229))

(assert (= (or b!7791704 b!7791703) bm!722230))

(assert (= (or b!7791707 bm!722230) bm!722231))

(declare-fun m!8232282 () Bool)

(assert (=> bm!722229 m!8232282))

(declare-fun m!8232284 () Bool)

(assert (=> bm!722231 m!8232284))

(declare-fun m!8232286 () Bool)

(assert (=> b!7791708 m!8232286))

(assert (=> b!7791422 d!2345994))

(declare-fun d!2345996 () Bool)

(declare-fun lt!2673692 () Int)

(assert (=> d!2345996 (>= lt!2673692 0)))

(declare-fun e!4613813 () Int)

(assert (=> d!2345996 (= lt!2673692 e!4613813)))

(declare-fun c!1435001 () Bool)

(assert (=> d!2345996 (= c!1435001 (is-Nil!73575 (t!388434 s!14292)))))

(assert (=> d!2345996 (= (ListPrimitiveSize!447 (t!388434 s!14292)) lt!2673692)))

(declare-fun b!7791715 () Bool)

(assert (=> b!7791715 (= e!4613813 0)))

(declare-fun b!7791716 () Bool)

(assert (=> b!7791716 (= e!4613813 (+ 1 (ListPrimitiveSize!447 (t!388434 (t!388434 s!14292)))))))

(assert (= (and d!2345996 c!1435001) b!7791715))

(assert (= (and d!2345996 (not c!1435001)) b!7791716))

(declare-fun m!8232288 () Bool)

(assert (=> b!7791716 m!8232288))

(assert (=> b!7791411 d!2345996))

(declare-fun d!2345998 () Bool)

(declare-fun lt!2673693 () Int)

(assert (=> d!2345998 (>= lt!2673693 0)))

(declare-fun e!4613814 () Int)

(assert (=> d!2345998 (= lt!2673693 e!4613814)))

(declare-fun c!1435002 () Bool)

(assert (=> d!2345998 (= c!1435002 (is-Nil!73575 s!14292))))

(assert (=> d!2345998 (= (ListPrimitiveSize!447 s!14292) lt!2673693)))

(declare-fun b!7791717 () Bool)

(assert (=> b!7791717 (= e!4613814 0)))

(declare-fun b!7791718 () Bool)

(assert (=> b!7791718 (= e!4613814 (+ 1 (ListPrimitiveSize!447 (t!388434 s!14292))))))

(assert (= (and d!2345998 c!1435002) b!7791717))

(assert (= (and d!2345998 (not c!1435002)) b!7791718))

(assert (=> b!7791718 m!8232160))

(assert (=> b!7791411 d!2345998))

(declare-fun b!7791719 () Bool)

(declare-fun e!4613820 () Bool)

(assert (=> b!7791719 (= e!4613820 (= (head!15937 s!14292) (c!1434923 lt!2673651)))))

(declare-fun b!7791720 () Bool)

(declare-fun e!4613817 () Bool)

(declare-fun e!4613816 () Bool)

(assert (=> b!7791720 (= e!4613817 e!4613816)))

(declare-fun c!1435004 () Bool)

(assert (=> b!7791720 (= c!1435004 (is-EmptyLang!20860 lt!2673651))))

(declare-fun b!7791721 () Bool)

(declare-fun e!4613815 () Bool)

(assert (=> b!7791721 (= e!4613815 (nullable!9244 lt!2673651))))

(declare-fun b!7791722 () Bool)

(declare-fun res!3104337 () Bool)

(assert (=> b!7791722 (=> (not res!3104337) (not e!4613820))))

(assert (=> b!7791722 (= res!3104337 (isEmpty!42212 (tail!15478 s!14292)))))

(declare-fun bm!722232 () Bool)

(declare-fun call!722237 () Bool)

(assert (=> bm!722232 (= call!722237 (isEmpty!42212 s!14292))))

(declare-fun b!7791723 () Bool)

(declare-fun e!4613818 () Bool)

(declare-fun e!4613821 () Bool)

(assert (=> b!7791723 (= e!4613818 e!4613821)))

(declare-fun res!3104341 () Bool)

(assert (=> b!7791723 (=> res!3104341 e!4613821)))

(assert (=> b!7791723 (= res!3104341 call!722237)))

(declare-fun b!7791725 () Bool)

(declare-fun lt!2673694 () Bool)

(assert (=> b!7791725 (= e!4613816 (not lt!2673694))))

(declare-fun b!7791726 () Bool)

(declare-fun res!3104335 () Bool)

(declare-fun e!4613819 () Bool)

(assert (=> b!7791726 (=> res!3104335 e!4613819)))

(assert (=> b!7791726 (= res!3104335 (not (is-ElementMatch!20860 lt!2673651)))))

(assert (=> b!7791726 (= e!4613816 e!4613819)))

(declare-fun b!7791727 () Bool)

(declare-fun res!3104334 () Bool)

(assert (=> b!7791727 (=> (not res!3104334) (not e!4613820))))

(assert (=> b!7791727 (= res!3104334 (not call!722237))))

(declare-fun b!7791728 () Bool)

(assert (=> b!7791728 (= e!4613817 (= lt!2673694 call!722237))))

(declare-fun b!7791729 () Bool)

(declare-fun res!3104339 () Bool)

(assert (=> b!7791729 (=> res!3104339 e!4613821)))

(assert (=> b!7791729 (= res!3104339 (not (isEmpty!42212 (tail!15478 s!14292))))))

(declare-fun b!7791730 () Bool)

(assert (=> b!7791730 (= e!4613819 e!4613818)))

(declare-fun res!3104336 () Bool)

(assert (=> b!7791730 (=> (not res!3104336) (not e!4613818))))

(assert (=> b!7791730 (= res!3104336 (not lt!2673694))))

(declare-fun b!7791731 () Bool)

(assert (=> b!7791731 (= e!4613815 (matchR!10320 (derivativeStep!6197 lt!2673651 (head!15937 s!14292)) (tail!15478 s!14292)))))

(declare-fun b!7791732 () Bool)

(declare-fun res!3104340 () Bool)

(assert (=> b!7791732 (=> res!3104340 e!4613819)))

(assert (=> b!7791732 (= res!3104340 e!4613820)))

(declare-fun res!3104338 () Bool)

(assert (=> b!7791732 (=> (not res!3104338) (not e!4613820))))

(assert (=> b!7791732 (= res!3104338 lt!2673694)))

(declare-fun d!2346000 () Bool)

(assert (=> d!2346000 e!4613817))

(declare-fun c!1435005 () Bool)

(assert (=> d!2346000 (= c!1435005 (is-EmptyExpr!20860 lt!2673651))))

(assert (=> d!2346000 (= lt!2673694 e!4613815)))

(declare-fun c!1435003 () Bool)

(assert (=> d!2346000 (= c!1435003 (isEmpty!42212 s!14292))))

(assert (=> d!2346000 (validRegex!11274 lt!2673651)))

(assert (=> d!2346000 (= (matchR!10320 lt!2673651 s!14292) lt!2673694)))

(declare-fun b!7791724 () Bool)

(assert (=> b!7791724 (= e!4613821 (not (= (head!15937 s!14292) (c!1434923 lt!2673651))))))

(assert (= (and d!2346000 c!1435003) b!7791721))

(assert (= (and d!2346000 (not c!1435003)) b!7791731))

(assert (= (and d!2346000 c!1435005) b!7791728))

(assert (= (and d!2346000 (not c!1435005)) b!7791720))

(assert (= (and b!7791720 c!1435004) b!7791725))

(assert (= (and b!7791720 (not c!1435004)) b!7791726))

(assert (= (and b!7791726 (not res!3104335)) b!7791732))

(assert (= (and b!7791732 res!3104338) b!7791727))

(assert (= (and b!7791727 res!3104334) b!7791722))

(assert (= (and b!7791722 res!3104337) b!7791719))

(assert (= (and b!7791732 (not res!3104340)) b!7791730))

(assert (= (and b!7791730 res!3104336) b!7791723))

(assert (= (and b!7791723 (not res!3104341)) b!7791729))

(assert (= (and b!7791729 (not res!3104339)) b!7791724))

(assert (= (or b!7791728 b!7791723 b!7791727) bm!722232))

(declare-fun m!8232290 () Bool)

(assert (=> b!7791731 m!8232290))

(assert (=> b!7791731 m!8232290))

(declare-fun m!8232292 () Bool)

(assert (=> b!7791731 m!8232292))

(declare-fun m!8232294 () Bool)

(assert (=> b!7791731 m!8232294))

(assert (=> b!7791731 m!8232292))

(assert (=> b!7791731 m!8232294))

(declare-fun m!8232296 () Bool)

(assert (=> b!7791731 m!8232296))

(declare-fun m!8232298 () Bool)

(assert (=> bm!722232 m!8232298))

(declare-fun m!8232300 () Bool)

(assert (=> b!7791721 m!8232300))

(assert (=> b!7791724 m!8232290))

(assert (=> b!7791719 m!8232290))

(assert (=> b!7791729 m!8232294))

(assert (=> b!7791729 m!8232294))

(declare-fun m!8232302 () Bool)

(assert (=> b!7791729 m!8232302))

(assert (=> b!7791722 m!8232294))

(assert (=> b!7791722 m!8232294))

(assert (=> b!7791722 m!8232302))

(assert (=> d!2346000 m!8232298))

(assert (=> d!2346000 m!8232252))

(assert (=> b!7791412 d!2346000))

(declare-fun b!7791733 () Bool)

(declare-fun e!4613828 () Bool)

(declare-fun e!4613827 () Bool)

(assert (=> b!7791733 (= e!4613828 e!4613827)))

(declare-fun c!1435007 () Bool)

(assert (=> b!7791733 (= c!1435007 (is-Star!20860 r2!6217))))

(declare-fun bm!722233 () Bool)

(declare-fun call!722240 () Bool)

(declare-fun c!1435006 () Bool)

(assert (=> bm!722233 (= call!722240 (validRegex!11274 (ite c!1435006 (regOne!42233 r2!6217) (regOne!42232 r2!6217))))))

(declare-fun bm!722234 () Bool)

(declare-fun call!722238 () Bool)

(declare-fun call!722239 () Bool)

(assert (=> bm!722234 (= call!722238 call!722239)))

(declare-fun bm!722235 () Bool)

(assert (=> bm!722235 (= call!722239 (validRegex!11274 (ite c!1435007 (reg!21189 r2!6217) (ite c!1435006 (regTwo!42233 r2!6217) (regTwo!42232 r2!6217)))))))

(declare-fun d!2346002 () Bool)

(declare-fun res!3104345 () Bool)

(assert (=> d!2346002 (=> res!3104345 e!4613828)))

(assert (=> d!2346002 (= res!3104345 (is-ElementMatch!20860 r2!6217))))

(assert (=> d!2346002 (= (validRegex!11274 r2!6217) e!4613828)))

(declare-fun b!7791734 () Bool)

(declare-fun e!4613825 () Bool)

(assert (=> b!7791734 (= e!4613825 call!722238)))

(declare-fun b!7791735 () Bool)

(declare-fun e!4613823 () Bool)

(assert (=> b!7791735 (= e!4613823 call!722238)))

(declare-fun b!7791736 () Bool)

(declare-fun e!4613822 () Bool)

(assert (=> b!7791736 (= e!4613827 e!4613822)))

(assert (=> b!7791736 (= c!1435006 (is-Union!20860 r2!6217))))

(declare-fun b!7791737 () Bool)

(declare-fun res!3104346 () Bool)

(assert (=> b!7791737 (=> (not res!3104346) (not e!4613823))))

(assert (=> b!7791737 (= res!3104346 call!722240)))

(assert (=> b!7791737 (= e!4613822 e!4613823)))

(declare-fun b!7791738 () Bool)

(declare-fun e!4613826 () Bool)

(assert (=> b!7791738 (= e!4613826 call!722239)))

(declare-fun b!7791739 () Bool)

(assert (=> b!7791739 (= e!4613827 e!4613826)))

(declare-fun res!3104342 () Bool)

(assert (=> b!7791739 (= res!3104342 (not (nullable!9244 (reg!21189 r2!6217))))))

(assert (=> b!7791739 (=> (not res!3104342) (not e!4613826))))

(declare-fun b!7791740 () Bool)

(declare-fun e!4613824 () Bool)

(assert (=> b!7791740 (= e!4613824 e!4613825)))

(declare-fun res!3104344 () Bool)

(assert (=> b!7791740 (=> (not res!3104344) (not e!4613825))))

(assert (=> b!7791740 (= res!3104344 call!722240)))

(declare-fun b!7791741 () Bool)

(declare-fun res!3104343 () Bool)

(assert (=> b!7791741 (=> res!3104343 e!4613824)))

(assert (=> b!7791741 (= res!3104343 (not (is-Concat!29705 r2!6217)))))

(assert (=> b!7791741 (= e!4613822 e!4613824)))

(assert (= (and d!2346002 (not res!3104345)) b!7791733))

(assert (= (and b!7791733 c!1435007) b!7791739))

(assert (= (and b!7791733 (not c!1435007)) b!7791736))

(assert (= (and b!7791739 res!3104342) b!7791738))

(assert (= (and b!7791736 c!1435006) b!7791737))

(assert (= (and b!7791736 (not c!1435006)) b!7791741))

(assert (= (and b!7791737 res!3104346) b!7791735))

(assert (= (and b!7791741 (not res!3104343)) b!7791740))

(assert (= (and b!7791740 res!3104344) b!7791734))

(assert (= (or b!7791737 b!7791740) bm!722233))

(assert (= (or b!7791735 b!7791734) bm!722234))

(assert (= (or b!7791738 bm!722234) bm!722235))

(declare-fun m!8232304 () Bool)

(assert (=> bm!722233 m!8232304))

(declare-fun m!8232306 () Bool)

(assert (=> bm!722235 m!8232306))

(declare-fun m!8232308 () Bool)

(assert (=> b!7791739 m!8232308))

(assert (=> b!7791418 d!2346002))

(declare-fun d!2346004 () Bool)

(declare-fun nullableFct!3626 (Regex!20860) Bool)

(assert (=> d!2346004 (= (nullable!9244 r1!6279) (nullableFct!3626 r1!6279))))

(declare-fun bs!1966344 () Bool)

(assert (= bs!1966344 d!2346004))

(declare-fun m!8232310 () Bool)

(assert (=> bs!1966344 m!8232310))

(assert (=> b!7791423 d!2346004))

(declare-fun b!7791753 () Bool)

(declare-fun e!4613831 () Bool)

(declare-fun tp!2293692 () Bool)

(declare-fun tp!2293693 () Bool)

(assert (=> b!7791753 (= e!4613831 (and tp!2293692 tp!2293693))))

(declare-fun b!7791755 () Bool)

(declare-fun tp!2293691 () Bool)

(declare-fun tp!2293694 () Bool)

(assert (=> b!7791755 (= e!4613831 (and tp!2293691 tp!2293694))))

(declare-fun b!7791754 () Bool)

(declare-fun tp!2293690 () Bool)

(assert (=> b!7791754 (= e!4613831 tp!2293690)))

(declare-fun b!7791752 () Bool)

(assert (=> b!7791752 (= e!4613831 tp_is_empty!52075)))

(assert (=> b!7791413 (= tp!2293636 e!4613831)))

(assert (= (and b!7791413 (is-ElementMatch!20860 (regOne!42232 r2!6217))) b!7791752))

(assert (= (and b!7791413 (is-Concat!29705 (regOne!42232 r2!6217))) b!7791753))

(assert (= (and b!7791413 (is-Star!20860 (regOne!42232 r2!6217))) b!7791754))

(assert (= (and b!7791413 (is-Union!20860 (regOne!42232 r2!6217))) b!7791755))

(declare-fun b!7791757 () Bool)

(declare-fun e!4613832 () Bool)

(declare-fun tp!2293697 () Bool)

(declare-fun tp!2293698 () Bool)

(assert (=> b!7791757 (= e!4613832 (and tp!2293697 tp!2293698))))

(declare-fun b!7791759 () Bool)

(declare-fun tp!2293696 () Bool)

(declare-fun tp!2293699 () Bool)

(assert (=> b!7791759 (= e!4613832 (and tp!2293696 tp!2293699))))

(declare-fun b!7791758 () Bool)

(declare-fun tp!2293695 () Bool)

(assert (=> b!7791758 (= e!4613832 tp!2293695)))

(declare-fun b!7791756 () Bool)

(assert (=> b!7791756 (= e!4613832 tp_is_empty!52075)))

(assert (=> b!7791413 (= tp!2293639 e!4613832)))

(assert (= (and b!7791413 (is-ElementMatch!20860 (regTwo!42232 r2!6217))) b!7791756))

(assert (= (and b!7791413 (is-Concat!29705 (regTwo!42232 r2!6217))) b!7791757))

(assert (= (and b!7791413 (is-Star!20860 (regTwo!42232 r2!6217))) b!7791758))

(assert (= (and b!7791413 (is-Union!20860 (regTwo!42232 r2!6217))) b!7791759))

(declare-fun b!7791761 () Bool)

(declare-fun e!4613833 () Bool)

(declare-fun tp!2293702 () Bool)

(declare-fun tp!2293703 () Bool)

(assert (=> b!7791761 (= e!4613833 (and tp!2293702 tp!2293703))))

(declare-fun b!7791763 () Bool)

(declare-fun tp!2293701 () Bool)

(declare-fun tp!2293704 () Bool)

(assert (=> b!7791763 (= e!4613833 (and tp!2293701 tp!2293704))))

(declare-fun b!7791762 () Bool)

(declare-fun tp!2293700 () Bool)

(assert (=> b!7791762 (= e!4613833 tp!2293700)))

(declare-fun b!7791760 () Bool)

(assert (=> b!7791760 (= e!4613833 tp_is_empty!52075)))

(assert (=> b!7791414 (= tp!2293646 e!4613833)))

(assert (= (and b!7791414 (is-ElementMatch!20860 (reg!21189 r1!6279))) b!7791760))

(assert (= (and b!7791414 (is-Concat!29705 (reg!21189 r1!6279))) b!7791761))

(assert (= (and b!7791414 (is-Star!20860 (reg!21189 r1!6279))) b!7791762))

(assert (= (and b!7791414 (is-Union!20860 (reg!21189 r1!6279))) b!7791763))

(declare-fun b!7791765 () Bool)

(declare-fun e!4613834 () Bool)

(declare-fun tp!2293707 () Bool)

(declare-fun tp!2293708 () Bool)

(assert (=> b!7791765 (= e!4613834 (and tp!2293707 tp!2293708))))

(declare-fun b!7791767 () Bool)

(declare-fun tp!2293706 () Bool)

(declare-fun tp!2293709 () Bool)

(assert (=> b!7791767 (= e!4613834 (and tp!2293706 tp!2293709))))

(declare-fun b!7791766 () Bool)

(declare-fun tp!2293705 () Bool)

(assert (=> b!7791766 (= e!4613834 tp!2293705)))

(declare-fun b!7791764 () Bool)

(assert (=> b!7791764 (= e!4613834 tp_is_empty!52075)))

(assert (=> b!7791420 (= tp!2293645 e!4613834)))

(assert (= (and b!7791420 (is-ElementMatch!20860 (regOne!42233 r2!6217))) b!7791764))

(assert (= (and b!7791420 (is-Concat!29705 (regOne!42233 r2!6217))) b!7791765))

(assert (= (and b!7791420 (is-Star!20860 (regOne!42233 r2!6217))) b!7791766))

(assert (= (and b!7791420 (is-Union!20860 (regOne!42233 r2!6217))) b!7791767))

(declare-fun b!7791769 () Bool)

(declare-fun e!4613835 () Bool)

(declare-fun tp!2293712 () Bool)

(declare-fun tp!2293713 () Bool)

(assert (=> b!7791769 (= e!4613835 (and tp!2293712 tp!2293713))))

(declare-fun b!7791771 () Bool)

(declare-fun tp!2293711 () Bool)

(declare-fun tp!2293714 () Bool)

(assert (=> b!7791771 (= e!4613835 (and tp!2293711 tp!2293714))))

(declare-fun b!7791770 () Bool)

(declare-fun tp!2293710 () Bool)

(assert (=> b!7791770 (= e!4613835 tp!2293710)))

(declare-fun b!7791768 () Bool)

(assert (=> b!7791768 (= e!4613835 tp_is_empty!52075)))

(assert (=> b!7791420 (= tp!2293643 e!4613835)))

(assert (= (and b!7791420 (is-ElementMatch!20860 (regTwo!42233 r2!6217))) b!7791768))

(assert (= (and b!7791420 (is-Concat!29705 (regTwo!42233 r2!6217))) b!7791769))

(assert (= (and b!7791420 (is-Star!20860 (regTwo!42233 r2!6217))) b!7791770))

(assert (= (and b!7791420 (is-Union!20860 (regTwo!42233 r2!6217))) b!7791771))

(declare-fun b!7791773 () Bool)

(declare-fun e!4613836 () Bool)

(declare-fun tp!2293717 () Bool)

(declare-fun tp!2293718 () Bool)

(assert (=> b!7791773 (= e!4613836 (and tp!2293717 tp!2293718))))

(declare-fun b!7791775 () Bool)

(declare-fun tp!2293716 () Bool)

(declare-fun tp!2293719 () Bool)

(assert (=> b!7791775 (= e!4613836 (and tp!2293716 tp!2293719))))

(declare-fun b!7791774 () Bool)

(declare-fun tp!2293715 () Bool)

(assert (=> b!7791774 (= e!4613836 tp!2293715)))

(declare-fun b!7791772 () Bool)

(assert (=> b!7791772 (= e!4613836 tp_is_empty!52075)))

(assert (=> b!7791416 (= tp!2293640 e!4613836)))

(assert (= (and b!7791416 (is-ElementMatch!20860 (regOne!42233 r1!6279))) b!7791772))

(assert (= (and b!7791416 (is-Concat!29705 (regOne!42233 r1!6279))) b!7791773))

(assert (= (and b!7791416 (is-Star!20860 (regOne!42233 r1!6279))) b!7791774))

(assert (= (and b!7791416 (is-Union!20860 (regOne!42233 r1!6279))) b!7791775))

(declare-fun b!7791777 () Bool)

(declare-fun e!4613837 () Bool)

(declare-fun tp!2293722 () Bool)

(declare-fun tp!2293723 () Bool)

(assert (=> b!7791777 (= e!4613837 (and tp!2293722 tp!2293723))))

(declare-fun b!7791779 () Bool)

(declare-fun tp!2293721 () Bool)

(declare-fun tp!2293724 () Bool)

(assert (=> b!7791779 (= e!4613837 (and tp!2293721 tp!2293724))))

(declare-fun b!7791778 () Bool)

(declare-fun tp!2293720 () Bool)

(assert (=> b!7791778 (= e!4613837 tp!2293720)))

(declare-fun b!7791776 () Bool)

(assert (=> b!7791776 (= e!4613837 tp_is_empty!52075)))

(assert (=> b!7791416 (= tp!2293642 e!4613837)))

(assert (= (and b!7791416 (is-ElementMatch!20860 (regTwo!42233 r1!6279))) b!7791776))

(assert (= (and b!7791416 (is-Concat!29705 (regTwo!42233 r1!6279))) b!7791777))

(assert (= (and b!7791416 (is-Star!20860 (regTwo!42233 r1!6279))) b!7791778))

(assert (= (and b!7791416 (is-Union!20860 (regTwo!42233 r1!6279))) b!7791779))

(declare-fun b!7791781 () Bool)

(declare-fun e!4613838 () Bool)

(declare-fun tp!2293727 () Bool)

(declare-fun tp!2293728 () Bool)

(assert (=> b!7791781 (= e!4613838 (and tp!2293727 tp!2293728))))

(declare-fun b!7791783 () Bool)

(declare-fun tp!2293726 () Bool)

(declare-fun tp!2293729 () Bool)

(assert (=> b!7791783 (= e!4613838 (and tp!2293726 tp!2293729))))

(declare-fun b!7791782 () Bool)

(declare-fun tp!2293725 () Bool)

(assert (=> b!7791782 (= e!4613838 tp!2293725)))

(declare-fun b!7791780 () Bool)

(assert (=> b!7791780 (= e!4613838 tp_is_empty!52075)))

(assert (=> b!7791421 (= tp!2293641 e!4613838)))

(assert (= (and b!7791421 (is-ElementMatch!20860 (reg!21189 r2!6217))) b!7791780))

(assert (= (and b!7791421 (is-Concat!29705 (reg!21189 r2!6217))) b!7791781))

(assert (= (and b!7791421 (is-Star!20860 (reg!21189 r2!6217))) b!7791782))

(assert (= (and b!7791421 (is-Union!20860 (reg!21189 r2!6217))) b!7791783))

(declare-fun b!7791788 () Bool)

(declare-fun e!4613841 () Bool)

(declare-fun tp!2293732 () Bool)

(assert (=> b!7791788 (= e!4613841 (and tp_is_empty!52075 tp!2293732))))

(assert (=> b!7791406 (= tp!2293644 e!4613841)))

(assert (= (and b!7791406 (is-Cons!73575 (t!388434 s!14292))) b!7791788))

(declare-fun b!7791792 () Bool)

(declare-fun e!4613842 () Bool)

(declare-fun tp!2293735 () Bool)

(declare-fun tp!2293736 () Bool)

(assert (=> b!7791792 (= e!4613842 (and tp!2293735 tp!2293736))))

(declare-fun b!7791794 () Bool)

(declare-fun tp!2293734 () Bool)

(declare-fun tp!2293737 () Bool)

(assert (=> b!7791794 (= e!4613842 (and tp!2293734 tp!2293737))))

(declare-fun b!7791793 () Bool)

(declare-fun tp!2293733 () Bool)

(assert (=> b!7791793 (= e!4613842 tp!2293733)))

(declare-fun b!7791791 () Bool)

(assert (=> b!7791791 (= e!4613842 tp_is_empty!52075)))

(assert (=> b!7791417 (= tp!2293637 e!4613842)))

(assert (= (and b!7791417 (is-ElementMatch!20860 (regOne!42232 r1!6279))) b!7791791))

(assert (= (and b!7791417 (is-Concat!29705 (regOne!42232 r1!6279))) b!7791792))

(assert (= (and b!7791417 (is-Star!20860 (regOne!42232 r1!6279))) b!7791793))

(assert (= (and b!7791417 (is-Union!20860 (regOne!42232 r1!6279))) b!7791794))

(declare-fun b!7791798 () Bool)

(declare-fun e!4613845 () Bool)

(declare-fun tp!2293740 () Bool)

(declare-fun tp!2293741 () Bool)

(assert (=> b!7791798 (= e!4613845 (and tp!2293740 tp!2293741))))

(declare-fun b!7791800 () Bool)

(declare-fun tp!2293739 () Bool)

(declare-fun tp!2293742 () Bool)

(assert (=> b!7791800 (= e!4613845 (and tp!2293739 tp!2293742))))

(declare-fun b!7791799 () Bool)

(declare-fun tp!2293738 () Bool)

(assert (=> b!7791799 (= e!4613845 tp!2293738)))

(declare-fun b!7791797 () Bool)

(assert (=> b!7791797 (= e!4613845 tp_is_empty!52075)))

(assert (=> b!7791417 (= tp!2293638 e!4613845)))

(assert (= (and b!7791417 (is-ElementMatch!20860 (regTwo!42232 r1!6279))) b!7791797))

(assert (= (and b!7791417 (is-Concat!29705 (regTwo!42232 r1!6279))) b!7791798))

(assert (= (and b!7791417 (is-Star!20860 (regTwo!42232 r1!6279))) b!7791799))

(assert (= (and b!7791417 (is-Union!20860 (regTwo!42232 r1!6279))) b!7791800))

(push 1)

(assert (not b!7791767))

(assert (not d!2345984))

(assert (not d!2346000))

(assert (not b!7791662))

(assert (not b!7791645))

(assert (not b!7791729))

(assert (not b!7791792))

(assert (not b!7791781))

(assert (not b!7791779))

(assert (not d!2345972))

(assert (not b!7791758))

(assert (not bm!722224))

(assert (not b!7791718))

(assert (not b!7791778))

(assert (not bm!722219))

(assert (not b!7791755))

(assert (not bm!722221))

(assert (not b!7791669))

(assert (not b!7791763))

(assert (not b!7791684))

(assert (not b!7791798))

(assert (not bm!722189))

(assert (not bm!722235))

(assert (not b!7791793))

(assert (not d!2345986))

(assert (not b!7791687))

(assert (not b!7791794))

(assert (not b!7791664))

(assert (not b!7791716))

(assert (not b!7791757))

(assert (not b!7791759))

(assert (not b!7791770))

(assert (not b!7791661))

(assert (not bm!722223))

(assert (not b!7791659))

(assert (not b!7791799))

(assert (not b!7791769))

(assert (not d!2345980))

(assert (not b!7791721))

(assert (not b!7791754))

(assert (not b!7791761))

(assert (not bm!722191))

(assert (not b!7791739))

(assert (not bm!722228))

(assert (not b!7791586))

(assert (not d!2345988))

(assert (not b!7791692))

(assert (not b!7791652))

(assert (not b!7791783))

(assert (not b!7791637))

(assert (not b!7791525))

(assert (not bm!722193))

(assert (not b!7791765))

(assert (not b!7791708))

(assert (not b!7791766))

(assert (not b!7791777))

(assert (not b!7791694))

(assert (not b!7791638))

(assert (not b!7791700))

(assert tp_is_empty!52075)

(assert (not b!7791701))

(assert (not bm!722233))

(assert (not b!7791724))

(assert (not bm!722229))

(assert (not bm!722187))

(assert (not bm!722210))

(assert (not b!7791671))

(assert (not bm!722232))

(assert (not b!7791775))

(assert (not b!7791774))

(assert (not b!7791719))

(assert (not b!7791635))

(assert (not b!7791647))

(assert (not bm!722231))

(assert (not b!7791788))

(assert (not b!7791682))

(assert (not b!7791773))

(assert (not b!7791731))

(assert (not b!7791753))

(assert (not b!7791771))

(assert (not b!7791762))

(assert (not b!7791722))

(assert (not d!2345974))

(assert (not bm!722208))

(assert (not b!7791800))

(assert (not b!7791535))

(assert (not d!2345990))

(assert (not b!7791640))

(assert (not d!2346004))

(assert (not b!7791782))

(assert (not b!7791685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

