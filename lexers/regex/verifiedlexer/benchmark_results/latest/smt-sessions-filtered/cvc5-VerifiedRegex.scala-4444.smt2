; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236326 () Bool)

(assert start!236326)

(declare-fun b!2411478 () Bool)

(declare-fun e!1535128 () Bool)

(declare-fun e!1535124 () Bool)

(assert (=> b!2411478 (= e!1535128 (not e!1535124))))

(declare-fun res!1024154 () Bool)

(assert (=> b!2411478 (=> res!1024154 e!1535124)))

(declare-datatypes ((C!14318 0))(
  ( (C!14319 (val!8401 Int)) )
))
(declare-datatypes ((Regex!7080 0))(
  ( (ElementMatch!7080 (c!384186 C!14318)) (Concat!11716 (regOne!14672 Regex!7080) (regTwo!14672 Regex!7080)) (EmptyExpr!7080) (Star!7080 (reg!7409 Regex!7080)) (EmptyLang!7080) (Union!7080 (regOne!14673 Regex!7080) (regTwo!14673 Regex!7080)) )
))
(declare-fun r!13927 () Regex!7080)

(assert (=> b!2411478 (= res!1024154 (or (is-Concat!11716 r!13927) (is-EmptyExpr!7080 r!13927)))))

(declare-datatypes ((List!28398 0))(
  ( (Nil!28300) (Cons!28300 (h!33701 C!14318) (t!208375 List!28398)) )
))
(declare-fun s!9460 () List!28398)

(declare-fun matchR!3197 (Regex!7080 List!28398) Bool)

(declare-fun matchRSpec!929 (Regex!7080 List!28398) Bool)

(assert (=> b!2411478 (= (matchR!3197 r!13927 s!9460) (matchRSpec!929 r!13927 s!9460))))

(declare-datatypes ((Unit!41431 0))(
  ( (Unit!41432) )
))
(declare-fun lt!873659 () Unit!41431)

(declare-fun mainMatchTheorem!929 (Regex!7080 List!28398) Unit!41431)

(assert (=> b!2411478 (= lt!873659 (mainMatchTheorem!929 r!13927 s!9460))))

(declare-fun b!2411479 () Bool)

(declare-fun e!1535125 () Bool)

(declare-fun tp!767129 () Bool)

(declare-fun tp!767126 () Bool)

(assert (=> b!2411479 (= e!1535125 (and tp!767129 tp!767126))))

(declare-fun b!2411480 () Bool)

(declare-fun res!1024158 () Bool)

(assert (=> b!2411480 (=> res!1024158 e!1535124)))

(declare-datatypes ((List!28399 0))(
  ( (Nil!28301) (Cons!28301 (h!33702 Regex!7080) (t!208376 List!28399)) )
))
(declare-fun l!9164 () List!28399)

(declare-fun isEmpty!16306 (List!28399) Bool)

(assert (=> b!2411480 (= res!1024158 (isEmpty!16306 l!9164))))

(declare-fun b!2411481 () Bool)

(declare-fun e!1535127 () Bool)

(declare-fun e!1535129 () Bool)

(assert (=> b!2411481 (= e!1535127 e!1535129)))

(declare-fun res!1024152 () Bool)

(assert (=> b!2411481 (=> res!1024152 e!1535129)))

(declare-fun lt!873662 () Regex!7080)

(assert (=> b!2411481 (= res!1024152 (not (= lt!873662 EmptyExpr!7080)))))

(declare-fun lt!873660 () List!28399)

(declare-fun generalisedConcat!181 (List!28399) Regex!7080)

(assert (=> b!2411481 (= lt!873662 (generalisedConcat!181 lt!873660))))

(declare-fun b!2411482 () Bool)

(declare-fun e!1535123 () Bool)

(assert (=> b!2411482 (= e!1535129 e!1535123)))

(declare-fun res!1024151 () Bool)

(assert (=> b!2411482 (=> res!1024151 e!1535123)))

(declare-fun lt!873661 () Regex!7080)

(assert (=> b!2411482 (= res!1024151 (not (matchR!3197 lt!873661 s!9460)))))

(declare-fun head!5379 (List!28399) Regex!7080)

(assert (=> b!2411482 (= lt!873661 (head!5379 l!9164))))

(declare-fun b!2411483 () Bool)

(declare-fun e!1535126 () Bool)

(declare-fun validRegex!2802 (Regex!7080) Bool)

(assert (=> b!2411483 (= e!1535126 (validRegex!2802 lt!873662))))

(declare-fun b!2411484 () Bool)

(declare-fun res!1024157 () Bool)

(assert (=> b!2411484 (=> (not res!1024157) (not e!1535128))))

(assert (=> b!2411484 (= res!1024157 (= r!13927 (generalisedConcat!181 l!9164)))))

(declare-fun b!2411485 () Bool)

(assert (=> b!2411485 (= e!1535123 e!1535126)))

(declare-fun res!1024159 () Bool)

(assert (=> b!2411485 (=> res!1024159 e!1535126)))

(assert (=> b!2411485 (= res!1024159 (not (validRegex!2802 lt!873661)))))

(declare-datatypes ((tuple2!27956 0))(
  ( (tuple2!27957 (_1!16519 List!28398) (_2!16519 List!28398)) )
))
(declare-datatypes ((Option!5589 0))(
  ( (None!5588) (Some!5588 (v!30996 tuple2!27956)) )
))
(declare-fun isDefined!4417 (Option!5589) Bool)

(declare-fun findConcatSeparation!697 (Regex!7080 Regex!7080 List!28398 List!28398 List!28398) Option!5589)

(assert (=> b!2411485 (isDefined!4417 (findConcatSeparation!697 lt!873661 EmptyExpr!7080 Nil!28300 s!9460 s!9460))))

(declare-fun lt!873663 () Unit!41431)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!53 (Regex!7080 Regex!7080 List!28398) Unit!41431)

(assert (=> b!2411485 (= lt!873663 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!53 lt!873661 EmptyExpr!7080 s!9460))))

(declare-fun e!1535121 () Bool)

(assert (=> b!2411485 e!1535121))

(declare-fun res!1024156 () Bool)

(assert (=> b!2411485 (=> (not res!1024156) (not e!1535121))))

(declare-fun lt!873665 () Regex!7080)

(declare-fun ++!7009 (List!28398 List!28398) List!28398)

(assert (=> b!2411485 (= res!1024156 (matchR!3197 lt!873665 (++!7009 s!9460 Nil!28300)))))

(assert (=> b!2411485 (= lt!873665 (Concat!11716 lt!873661 EmptyExpr!7080))))

(declare-fun lt!873664 () Unit!41431)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!79 (Regex!7080 Regex!7080 List!28398 List!28398) Unit!41431)

(assert (=> b!2411485 (= lt!873664 (lemmaTwoRegexMatchThenConcatMatchesConcatString!79 lt!873661 EmptyExpr!7080 s!9460 Nil!28300))))

(declare-fun b!2411486 () Bool)

(declare-fun tp!767128 () Bool)

(declare-fun tp!767130 () Bool)

(assert (=> b!2411486 (= e!1535125 (and tp!767128 tp!767130))))

(declare-fun b!2411487 () Bool)

(declare-fun e!1535130 () Bool)

(declare-fun tp!767124 () Bool)

(declare-fun tp!767125 () Bool)

(assert (=> b!2411487 (= e!1535130 (and tp!767124 tp!767125))))

(declare-fun b!2411477 () Bool)

(declare-fun tp_is_empty!11573 () Bool)

(assert (=> b!2411477 (= e!1535125 tp_is_empty!11573)))

(declare-fun res!1024155 () Bool)

(assert (=> start!236326 (=> (not res!1024155) (not e!1535128))))

(declare-fun lambda!90776 () Int)

(declare-fun forall!5714 (List!28399 Int) Bool)

(assert (=> start!236326 (= res!1024155 (forall!5714 l!9164 lambda!90776))))

(assert (=> start!236326 e!1535128))

(assert (=> start!236326 e!1535130))

(assert (=> start!236326 e!1535125))

(declare-fun e!1535122 () Bool)

(assert (=> start!236326 e!1535122))

(declare-fun b!2411488 () Bool)

(assert (=> b!2411488 (= e!1535121 (matchR!3197 lt!873665 s!9460))))

(declare-fun b!2411489 () Bool)

(declare-fun tp!767127 () Bool)

(assert (=> b!2411489 (= e!1535125 tp!767127)))

(declare-fun b!2411490 () Bool)

(declare-fun tp!767131 () Bool)

(assert (=> b!2411490 (= e!1535122 (and tp_is_empty!11573 tp!767131))))

(declare-fun b!2411491 () Bool)

(assert (=> b!2411491 (= e!1535124 e!1535127)))

(declare-fun res!1024153 () Bool)

(assert (=> b!2411491 (=> res!1024153 e!1535127)))

(assert (=> b!2411491 (= res!1024153 (not (isEmpty!16306 lt!873660)))))

(declare-fun tail!3651 (List!28399) List!28399)

(assert (=> b!2411491 (= lt!873660 (tail!3651 l!9164))))

(assert (= (and start!236326 res!1024155) b!2411484))

(assert (= (and b!2411484 res!1024157) b!2411478))

(assert (= (and b!2411478 (not res!1024154)) b!2411480))

(assert (= (and b!2411480 (not res!1024158)) b!2411491))

(assert (= (and b!2411491 (not res!1024153)) b!2411481))

(assert (= (and b!2411481 (not res!1024152)) b!2411482))

(assert (= (and b!2411482 (not res!1024151)) b!2411485))

(assert (= (and b!2411485 res!1024156) b!2411488))

(assert (= (and b!2411485 (not res!1024159)) b!2411483))

(assert (= (and start!236326 (is-Cons!28301 l!9164)) b!2411487))

(assert (= (and start!236326 (is-ElementMatch!7080 r!13927)) b!2411477))

(assert (= (and start!236326 (is-Concat!11716 r!13927)) b!2411479))

(assert (= (and start!236326 (is-Star!7080 r!13927)) b!2411489))

(assert (= (and start!236326 (is-Union!7080 r!13927)) b!2411486))

(assert (= (and start!236326 (is-Cons!28300 s!9460)) b!2411490))

(declare-fun m!2802547 () Bool)

(assert (=> b!2411485 m!2802547))

(declare-fun m!2802549 () Bool)

(assert (=> b!2411485 m!2802549))

(declare-fun m!2802551 () Bool)

(assert (=> b!2411485 m!2802551))

(declare-fun m!2802553 () Bool)

(assert (=> b!2411485 m!2802553))

(declare-fun m!2802555 () Bool)

(assert (=> b!2411485 m!2802555))

(assert (=> b!2411485 m!2802551))

(declare-fun m!2802557 () Bool)

(assert (=> b!2411485 m!2802557))

(assert (=> b!2411485 m!2802547))

(declare-fun m!2802559 () Bool)

(assert (=> b!2411485 m!2802559))

(declare-fun m!2802561 () Bool)

(assert (=> b!2411478 m!2802561))

(declare-fun m!2802563 () Bool)

(assert (=> b!2411478 m!2802563))

(declare-fun m!2802565 () Bool)

(assert (=> b!2411478 m!2802565))

(declare-fun m!2802567 () Bool)

(assert (=> b!2411491 m!2802567))

(declare-fun m!2802569 () Bool)

(assert (=> b!2411491 m!2802569))

(declare-fun m!2802571 () Bool)

(assert (=> b!2411480 m!2802571))

(declare-fun m!2802573 () Bool)

(assert (=> b!2411488 m!2802573))

(declare-fun m!2802575 () Bool)

(assert (=> b!2411482 m!2802575))

(declare-fun m!2802577 () Bool)

(assert (=> b!2411482 m!2802577))

(declare-fun m!2802579 () Bool)

(assert (=> b!2411483 m!2802579))

(declare-fun m!2802581 () Bool)

(assert (=> b!2411481 m!2802581))

(declare-fun m!2802583 () Bool)

(assert (=> start!236326 m!2802583))

(declare-fun m!2802585 () Bool)

(assert (=> b!2411484 m!2802585))

(push 1)

(assert (not b!2411488))

(assert (not b!2411485))

(assert (not b!2411486))

(assert (not b!2411478))

(assert (not b!2411480))

(assert (not b!2411481))

(assert (not b!2411482))

(assert (not b!2411479))

(assert tp_is_empty!11573)

(assert (not b!2411489))

(assert (not b!2411483))

(assert (not start!236326))

(assert (not b!2411491))

(assert (not b!2411487))

(assert (not b!2411484))

(assert (not b!2411490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2411561 () Bool)

(declare-fun e!1535187 () Bool)

(declare-fun call!147266 () Bool)

(assert (=> b!2411561 (= e!1535187 call!147266)))

(declare-fun b!2411562 () Bool)

(declare-fun e!1535185 () Bool)

(declare-fun e!1535181 () Bool)

(assert (=> b!2411562 (= e!1535185 e!1535181)))

(declare-fun c!384192 () Bool)

(assert (=> b!2411562 (= c!384192 (is-Union!7080 lt!873662))))

(declare-fun b!2411563 () Bool)

(declare-fun e!1535182 () Bool)

(assert (=> b!2411563 (= e!1535185 e!1535182)))

(declare-fun res!1024204 () Bool)

(declare-fun nullable!2122 (Regex!7080) Bool)

(assert (=> b!2411563 (= res!1024204 (not (nullable!2122 (reg!7409 lt!873662))))))

(assert (=> b!2411563 (=> (not res!1024204) (not e!1535182))))

(declare-fun b!2411564 () Bool)

(declare-fun e!1535183 () Bool)

(declare-fun call!147265 () Bool)

(assert (=> b!2411564 (= e!1535183 call!147265)))

(declare-fun bm!147260 () Bool)

(assert (=> bm!147260 (= call!147265 (validRegex!2802 (ite c!384192 (regOne!14673 lt!873662) (regTwo!14672 lt!873662))))))

(declare-fun call!147267 () Bool)

(declare-fun c!384193 () Bool)

(declare-fun bm!147261 () Bool)

(assert (=> bm!147261 (= call!147267 (validRegex!2802 (ite c!384193 (reg!7409 lt!873662) (ite c!384192 (regTwo!14673 lt!873662) (regOne!14672 lt!873662)))))))

(declare-fun b!2411565 () Bool)

(assert (=> b!2411565 (= e!1535182 call!147267)))

(declare-fun b!2411566 () Bool)

(declare-fun res!1024205 () Bool)

(declare-fun e!1535186 () Bool)

(assert (=> b!2411566 (=> res!1024205 e!1535186)))

(assert (=> b!2411566 (= res!1024205 (not (is-Concat!11716 lt!873662)))))

(assert (=> b!2411566 (= e!1535181 e!1535186)))

(declare-fun d!700693 () Bool)

(declare-fun res!1024207 () Bool)

(declare-fun e!1535184 () Bool)

(assert (=> d!700693 (=> res!1024207 e!1535184)))

(assert (=> d!700693 (= res!1024207 (is-ElementMatch!7080 lt!873662))))

(assert (=> d!700693 (= (validRegex!2802 lt!873662) e!1535184)))

(declare-fun b!2411567 () Bool)

(declare-fun res!1024206 () Bool)

(assert (=> b!2411567 (=> (not res!1024206) (not e!1535187))))

(assert (=> b!2411567 (= res!1024206 call!147265)))

(assert (=> b!2411567 (= e!1535181 e!1535187)))

(declare-fun b!2411568 () Bool)

(assert (=> b!2411568 (= e!1535184 e!1535185)))

(assert (=> b!2411568 (= c!384193 (is-Star!7080 lt!873662))))

(declare-fun bm!147262 () Bool)

(assert (=> bm!147262 (= call!147266 call!147267)))

(declare-fun b!2411569 () Bool)

(assert (=> b!2411569 (= e!1535186 e!1535183)))

(declare-fun res!1024203 () Bool)

(assert (=> b!2411569 (=> (not res!1024203) (not e!1535183))))

(assert (=> b!2411569 (= res!1024203 call!147266)))

(assert (= (and d!700693 (not res!1024207)) b!2411568))

(assert (= (and b!2411568 c!384193) b!2411563))

(assert (= (and b!2411568 (not c!384193)) b!2411562))

(assert (= (and b!2411563 res!1024204) b!2411565))

(assert (= (and b!2411562 c!384192) b!2411567))

(assert (= (and b!2411562 (not c!384192)) b!2411566))

(assert (= (and b!2411567 res!1024206) b!2411561))

(assert (= (and b!2411566 (not res!1024205)) b!2411569))

(assert (= (and b!2411569 res!1024203) b!2411564))

(assert (= (or b!2411567 b!2411564) bm!147260))

(assert (= (or b!2411561 b!2411569) bm!147262))

(assert (= (or b!2411565 bm!147262) bm!147261))

(declare-fun m!2802631 () Bool)

(assert (=> b!2411563 m!2802631))

(declare-fun m!2802633 () Bool)

(assert (=> bm!147260 m!2802633))

(declare-fun m!2802635 () Bool)

(assert (=> bm!147261 m!2802635))

(assert (=> b!2411483 d!700693))

(declare-fun b!2411598 () Bool)

(declare-fun e!1535208 () Bool)

(declare-fun lt!873689 () Bool)

(declare-fun call!147270 () Bool)

(assert (=> b!2411598 (= e!1535208 (= lt!873689 call!147270))))

(declare-fun b!2411600 () Bool)

(declare-fun res!1024230 () Bool)

(declare-fun e!1535207 () Bool)

(assert (=> b!2411600 (=> (not res!1024230) (not e!1535207))))

(assert (=> b!2411600 (= res!1024230 (not call!147270))))

(declare-fun b!2411601 () Bool)

(declare-fun e!1535204 () Bool)

(assert (=> b!2411601 (= e!1535204 (not lt!873689))))

(declare-fun b!2411602 () Bool)

(declare-fun e!1535206 () Bool)

(declare-fun e!1535203 () Bool)

(assert (=> b!2411602 (= e!1535206 e!1535203)))

(declare-fun res!1024228 () Bool)

(assert (=> b!2411602 (=> (not res!1024228) (not e!1535203))))

(assert (=> b!2411602 (= res!1024228 (not lt!873689))))

(declare-fun b!2411603 () Bool)

(declare-fun e!1535205 () Bool)

(assert (=> b!2411603 (= e!1535205 (nullable!2122 lt!873665))))

(declare-fun b!2411604 () Bool)

(declare-fun res!1024231 () Bool)

(declare-fun e!1535202 () Bool)

(assert (=> b!2411604 (=> res!1024231 e!1535202)))

(declare-fun isEmpty!16308 (List!28398) Bool)

(declare-fun tail!3653 (List!28398) List!28398)

(assert (=> b!2411604 (= res!1024231 (not (isEmpty!16308 (tail!3653 s!9460))))))

(declare-fun b!2411599 () Bool)

(declare-fun head!5381 (List!28398) C!14318)

(assert (=> b!2411599 (= e!1535207 (= (head!5381 s!9460) (c!384186 lt!873665)))))

(declare-fun d!700701 () Bool)

(assert (=> d!700701 e!1535208))

(declare-fun c!384201 () Bool)

(assert (=> d!700701 (= c!384201 (is-EmptyExpr!7080 lt!873665))))

(assert (=> d!700701 (= lt!873689 e!1535205)))

(declare-fun c!384202 () Bool)

(assert (=> d!700701 (= c!384202 (isEmpty!16308 s!9460))))

(assert (=> d!700701 (validRegex!2802 lt!873665)))

(assert (=> d!700701 (= (matchR!3197 lt!873665 s!9460) lt!873689)))

(declare-fun b!2411605 () Bool)

(declare-fun res!1024224 () Bool)

(assert (=> b!2411605 (=> res!1024224 e!1535206)))

(assert (=> b!2411605 (= res!1024224 (not (is-ElementMatch!7080 lt!873665)))))

(assert (=> b!2411605 (= e!1535204 e!1535206)))

(declare-fun b!2411606 () Bool)

(assert (=> b!2411606 (= e!1535208 e!1535204)))

(declare-fun c!384200 () Bool)

(assert (=> b!2411606 (= c!384200 (is-EmptyLang!7080 lt!873665))))

(declare-fun b!2411607 () Bool)

(assert (=> b!2411607 (= e!1535203 e!1535202)))

(declare-fun res!1024226 () Bool)

(assert (=> b!2411607 (=> res!1024226 e!1535202)))

(assert (=> b!2411607 (= res!1024226 call!147270)))

(declare-fun b!2411608 () Bool)

(declare-fun derivativeStep!1779 (Regex!7080 C!14318) Regex!7080)

(assert (=> b!2411608 (= e!1535205 (matchR!3197 (derivativeStep!1779 lt!873665 (head!5381 s!9460)) (tail!3653 s!9460)))))

(declare-fun b!2411609 () Bool)

(declare-fun res!1024229 () Bool)

(assert (=> b!2411609 (=> res!1024229 e!1535206)))

(assert (=> b!2411609 (= res!1024229 e!1535207)))

(declare-fun res!1024225 () Bool)

(assert (=> b!2411609 (=> (not res!1024225) (not e!1535207))))

(assert (=> b!2411609 (= res!1024225 lt!873689)))

(declare-fun bm!147265 () Bool)

(assert (=> bm!147265 (= call!147270 (isEmpty!16308 s!9460))))

(declare-fun b!2411610 () Bool)

(declare-fun res!1024227 () Bool)

(assert (=> b!2411610 (=> (not res!1024227) (not e!1535207))))

(assert (=> b!2411610 (= res!1024227 (isEmpty!16308 (tail!3653 s!9460)))))

(declare-fun b!2411611 () Bool)

(assert (=> b!2411611 (= e!1535202 (not (= (head!5381 s!9460) (c!384186 lt!873665))))))

(assert (= (and d!700701 c!384202) b!2411603))

(assert (= (and d!700701 (not c!384202)) b!2411608))

(assert (= (and d!700701 c!384201) b!2411598))

(assert (= (and d!700701 (not c!384201)) b!2411606))

(assert (= (and b!2411606 c!384200) b!2411601))

(assert (= (and b!2411606 (not c!384200)) b!2411605))

(assert (= (and b!2411605 (not res!1024224)) b!2411609))

(assert (= (and b!2411609 res!1024225) b!2411600))

(assert (= (and b!2411600 res!1024230) b!2411610))

(assert (= (and b!2411610 res!1024227) b!2411599))

(assert (= (and b!2411609 (not res!1024229)) b!2411602))

(assert (= (and b!2411602 res!1024228) b!2411607))

(assert (= (and b!2411607 (not res!1024226)) b!2411604))

(assert (= (and b!2411604 (not res!1024231)) b!2411611))

(assert (= (or b!2411598 b!2411600 b!2411607) bm!147265))

(declare-fun m!2802637 () Bool)

(assert (=> bm!147265 m!2802637))

(declare-fun m!2802639 () Bool)

(assert (=> b!2411599 m!2802639))

(assert (=> d!700701 m!2802637))

(declare-fun m!2802641 () Bool)

(assert (=> d!700701 m!2802641))

(assert (=> b!2411611 m!2802639))

(assert (=> b!2411608 m!2802639))

(assert (=> b!2411608 m!2802639))

(declare-fun m!2802643 () Bool)

(assert (=> b!2411608 m!2802643))

(declare-fun m!2802645 () Bool)

(assert (=> b!2411608 m!2802645))

(assert (=> b!2411608 m!2802643))

(assert (=> b!2411608 m!2802645))

(declare-fun m!2802647 () Bool)

(assert (=> b!2411608 m!2802647))

(assert (=> b!2411610 m!2802645))

(assert (=> b!2411610 m!2802645))

(declare-fun m!2802649 () Bool)

(assert (=> b!2411610 m!2802649))

(declare-fun m!2802651 () Bool)

(assert (=> b!2411603 m!2802651))

(assert (=> b!2411604 m!2802645))

(assert (=> b!2411604 m!2802645))

(assert (=> b!2411604 m!2802649))

(assert (=> b!2411488 d!700701))

(declare-fun d!700703 () Bool)

(declare-fun res!1024236 () Bool)

(declare-fun e!1535213 () Bool)

(assert (=> d!700703 (=> res!1024236 e!1535213)))

(assert (=> d!700703 (= res!1024236 (is-Nil!28301 l!9164))))

(assert (=> d!700703 (= (forall!5714 l!9164 lambda!90776) e!1535213)))

(declare-fun b!2411616 () Bool)

(declare-fun e!1535214 () Bool)

(assert (=> b!2411616 (= e!1535213 e!1535214)))

(declare-fun res!1024237 () Bool)

(assert (=> b!2411616 (=> (not res!1024237) (not e!1535214))))

(declare-fun dynLambda!12184 (Int Regex!7080) Bool)

(assert (=> b!2411616 (= res!1024237 (dynLambda!12184 lambda!90776 (h!33702 l!9164)))))

(declare-fun b!2411617 () Bool)

(assert (=> b!2411617 (= e!1535214 (forall!5714 (t!208376 l!9164) lambda!90776))))

(assert (= (and d!700703 (not res!1024236)) b!2411616))

(assert (= (and b!2411616 res!1024237) b!2411617))

(declare-fun b_lambda!74509 () Bool)

(assert (=> (not b_lambda!74509) (not b!2411616)))

(declare-fun m!2802653 () Bool)

(assert (=> b!2411616 m!2802653))

(declare-fun m!2802655 () Bool)

(assert (=> b!2411617 m!2802655))

(assert (=> start!236326 d!700703))

(declare-fun b!2411618 () Bool)

(declare-fun e!1535221 () Bool)

(declare-fun lt!873690 () Bool)

(declare-fun call!147271 () Bool)

(assert (=> b!2411618 (= e!1535221 (= lt!873690 call!147271))))

(declare-fun b!2411620 () Bool)

(declare-fun res!1024244 () Bool)

(declare-fun e!1535220 () Bool)

(assert (=> b!2411620 (=> (not res!1024244) (not e!1535220))))

(assert (=> b!2411620 (= res!1024244 (not call!147271))))

(declare-fun b!2411621 () Bool)

(declare-fun e!1535217 () Bool)

(assert (=> b!2411621 (= e!1535217 (not lt!873690))))

(declare-fun b!2411622 () Bool)

(declare-fun e!1535219 () Bool)

(declare-fun e!1535216 () Bool)

(assert (=> b!2411622 (= e!1535219 e!1535216)))

(declare-fun res!1024242 () Bool)

(assert (=> b!2411622 (=> (not res!1024242) (not e!1535216))))

(assert (=> b!2411622 (= res!1024242 (not lt!873690))))

(declare-fun b!2411623 () Bool)

(declare-fun e!1535218 () Bool)

(assert (=> b!2411623 (= e!1535218 (nullable!2122 r!13927))))

(declare-fun b!2411624 () Bool)

(declare-fun res!1024245 () Bool)

(declare-fun e!1535215 () Bool)

(assert (=> b!2411624 (=> res!1024245 e!1535215)))

(assert (=> b!2411624 (= res!1024245 (not (isEmpty!16308 (tail!3653 s!9460))))))

(declare-fun b!2411619 () Bool)

(assert (=> b!2411619 (= e!1535220 (= (head!5381 s!9460) (c!384186 r!13927)))))

(declare-fun d!700705 () Bool)

(assert (=> d!700705 e!1535221))

(declare-fun c!384204 () Bool)

(assert (=> d!700705 (= c!384204 (is-EmptyExpr!7080 r!13927))))

(assert (=> d!700705 (= lt!873690 e!1535218)))

(declare-fun c!384205 () Bool)

(assert (=> d!700705 (= c!384205 (isEmpty!16308 s!9460))))

(assert (=> d!700705 (validRegex!2802 r!13927)))

(assert (=> d!700705 (= (matchR!3197 r!13927 s!9460) lt!873690)))

(declare-fun b!2411625 () Bool)

(declare-fun res!1024238 () Bool)

(assert (=> b!2411625 (=> res!1024238 e!1535219)))

(assert (=> b!2411625 (= res!1024238 (not (is-ElementMatch!7080 r!13927)))))

(assert (=> b!2411625 (= e!1535217 e!1535219)))

(declare-fun b!2411626 () Bool)

(assert (=> b!2411626 (= e!1535221 e!1535217)))

(declare-fun c!384203 () Bool)

(assert (=> b!2411626 (= c!384203 (is-EmptyLang!7080 r!13927))))

(declare-fun b!2411627 () Bool)

(assert (=> b!2411627 (= e!1535216 e!1535215)))

(declare-fun res!1024240 () Bool)

(assert (=> b!2411627 (=> res!1024240 e!1535215)))

(assert (=> b!2411627 (= res!1024240 call!147271)))

(declare-fun b!2411628 () Bool)

(assert (=> b!2411628 (= e!1535218 (matchR!3197 (derivativeStep!1779 r!13927 (head!5381 s!9460)) (tail!3653 s!9460)))))

(declare-fun b!2411629 () Bool)

(declare-fun res!1024243 () Bool)

(assert (=> b!2411629 (=> res!1024243 e!1535219)))

(assert (=> b!2411629 (= res!1024243 e!1535220)))

(declare-fun res!1024239 () Bool)

(assert (=> b!2411629 (=> (not res!1024239) (not e!1535220))))

(assert (=> b!2411629 (= res!1024239 lt!873690)))

(declare-fun bm!147266 () Bool)

(assert (=> bm!147266 (= call!147271 (isEmpty!16308 s!9460))))

(declare-fun b!2411630 () Bool)

(declare-fun res!1024241 () Bool)

(assert (=> b!2411630 (=> (not res!1024241) (not e!1535220))))

(assert (=> b!2411630 (= res!1024241 (isEmpty!16308 (tail!3653 s!9460)))))

(declare-fun b!2411631 () Bool)

(assert (=> b!2411631 (= e!1535215 (not (= (head!5381 s!9460) (c!384186 r!13927))))))

(assert (= (and d!700705 c!384205) b!2411623))

(assert (= (and d!700705 (not c!384205)) b!2411628))

(assert (= (and d!700705 c!384204) b!2411618))

(assert (= (and d!700705 (not c!384204)) b!2411626))

(assert (= (and b!2411626 c!384203) b!2411621))

(assert (= (and b!2411626 (not c!384203)) b!2411625))

(assert (= (and b!2411625 (not res!1024238)) b!2411629))

(assert (= (and b!2411629 res!1024239) b!2411620))

(assert (= (and b!2411620 res!1024244) b!2411630))

(assert (= (and b!2411630 res!1024241) b!2411619))

(assert (= (and b!2411629 (not res!1024243)) b!2411622))

(assert (= (and b!2411622 res!1024242) b!2411627))

(assert (= (and b!2411627 (not res!1024240)) b!2411624))

(assert (= (and b!2411624 (not res!1024245)) b!2411631))

(assert (= (or b!2411618 b!2411620 b!2411627) bm!147266))

(assert (=> bm!147266 m!2802637))

(assert (=> b!2411619 m!2802639))

(assert (=> d!700705 m!2802637))

(declare-fun m!2802657 () Bool)

(assert (=> d!700705 m!2802657))

(assert (=> b!2411631 m!2802639))

(assert (=> b!2411628 m!2802639))

(assert (=> b!2411628 m!2802639))

(declare-fun m!2802659 () Bool)

(assert (=> b!2411628 m!2802659))

(assert (=> b!2411628 m!2802645))

(assert (=> b!2411628 m!2802659))

(assert (=> b!2411628 m!2802645))

(declare-fun m!2802661 () Bool)

(assert (=> b!2411628 m!2802661))

(assert (=> b!2411630 m!2802645))

(assert (=> b!2411630 m!2802645))

(assert (=> b!2411630 m!2802649))

(declare-fun m!2802663 () Bool)

(assert (=> b!2411623 m!2802663))

(assert (=> b!2411624 m!2802645))

(assert (=> b!2411624 m!2802645))

(assert (=> b!2411624 m!2802649))

(assert (=> b!2411478 d!700705))

(declare-fun b!2411666 () Bool)

(assert (=> b!2411666 true))

(assert (=> b!2411666 true))

(declare-fun bs!463447 () Bool)

(declare-fun b!2411672 () Bool)

(assert (= bs!463447 (and b!2411672 b!2411666)))

(declare-fun lambda!90785 () Int)

(declare-fun lambda!90784 () Int)

(assert (=> bs!463447 (not (= lambda!90785 lambda!90784))))

(assert (=> b!2411672 true))

(assert (=> b!2411672 true))

(declare-fun c!384214 () Bool)

(declare-fun bm!147271 () Bool)

(declare-fun call!147276 () Bool)

(declare-fun Exists!1130 (Int) Bool)

(assert (=> bm!147271 (= call!147276 (Exists!1130 (ite c!384214 lambda!90784 lambda!90785)))))

(declare-fun d!700707 () Bool)

(declare-fun c!384217 () Bool)

(assert (=> d!700707 (= c!384217 (is-EmptyExpr!7080 r!13927))))

(declare-fun e!1535240 () Bool)

(assert (=> d!700707 (= (matchRSpec!929 r!13927 s!9460) e!1535240)))

(declare-fun b!2411664 () Bool)

(declare-fun e!1535244 () Bool)

(assert (=> b!2411664 (= e!1535240 e!1535244)))

(declare-fun res!1024262 () Bool)

(assert (=> b!2411664 (= res!1024262 (not (is-EmptyLang!7080 r!13927)))))

(assert (=> b!2411664 (=> (not res!1024262) (not e!1535244))))

(declare-fun b!2411665 () Bool)

(declare-fun c!384216 () Bool)

(assert (=> b!2411665 (= c!384216 (is-ElementMatch!7080 r!13927))))

(declare-fun e!1535245 () Bool)

(assert (=> b!2411665 (= e!1535244 e!1535245)))

(declare-fun e!1535246 () Bool)

(assert (=> b!2411666 (= e!1535246 call!147276)))

(declare-fun b!2411667 () Bool)

(declare-fun e!1535243 () Bool)

(assert (=> b!2411667 (= e!1535243 (matchRSpec!929 (regTwo!14673 r!13927) s!9460))))

(declare-fun b!2411668 () Bool)

(declare-fun c!384215 () Bool)

(assert (=> b!2411668 (= c!384215 (is-Union!7080 r!13927))))

(declare-fun e!1535242 () Bool)

(assert (=> b!2411668 (= e!1535245 e!1535242)))

(declare-fun bm!147272 () Bool)

(declare-fun call!147277 () Bool)

(assert (=> bm!147272 (= call!147277 (isEmpty!16308 s!9460))))

(declare-fun b!2411669 () Bool)

(assert (=> b!2411669 (= e!1535240 call!147277)))

(declare-fun b!2411670 () Bool)

(declare-fun res!1024263 () Bool)

(assert (=> b!2411670 (=> res!1024263 e!1535246)))

(assert (=> b!2411670 (= res!1024263 call!147277)))

(declare-fun e!1535241 () Bool)

(assert (=> b!2411670 (= e!1535241 e!1535246)))

(declare-fun b!2411671 () Bool)

(assert (=> b!2411671 (= e!1535245 (= s!9460 (Cons!28300 (c!384186 r!13927) Nil!28300)))))

(assert (=> b!2411672 (= e!1535241 call!147276)))

(declare-fun b!2411673 () Bool)

(assert (=> b!2411673 (= e!1535242 e!1535243)))

(declare-fun res!1024264 () Bool)

(assert (=> b!2411673 (= res!1024264 (matchRSpec!929 (regOne!14673 r!13927) s!9460))))

(assert (=> b!2411673 (=> res!1024264 e!1535243)))

(declare-fun b!2411674 () Bool)

(assert (=> b!2411674 (= e!1535242 e!1535241)))

(assert (=> b!2411674 (= c!384214 (is-Star!7080 r!13927))))

(assert (= (and d!700707 c!384217) b!2411669))

(assert (= (and d!700707 (not c!384217)) b!2411664))

(assert (= (and b!2411664 res!1024262) b!2411665))

(assert (= (and b!2411665 c!384216) b!2411671))

(assert (= (and b!2411665 (not c!384216)) b!2411668))

(assert (= (and b!2411668 c!384215) b!2411673))

(assert (= (and b!2411668 (not c!384215)) b!2411674))

(assert (= (and b!2411673 (not res!1024264)) b!2411667))

(assert (= (and b!2411674 c!384214) b!2411670))

(assert (= (and b!2411674 (not c!384214)) b!2411672))

(assert (= (and b!2411670 (not res!1024263)) b!2411666))

(assert (= (or b!2411666 b!2411672) bm!147271))

(assert (= (or b!2411669 b!2411670) bm!147272))

(declare-fun m!2802665 () Bool)

(assert (=> bm!147271 m!2802665))

(declare-fun m!2802667 () Bool)

(assert (=> b!2411667 m!2802667))

(assert (=> bm!147272 m!2802637))

(declare-fun m!2802669 () Bool)

(assert (=> b!2411673 m!2802669))

(assert (=> b!2411478 d!700707))

(declare-fun d!700709 () Bool)

(assert (=> d!700709 (= (matchR!3197 r!13927 s!9460) (matchRSpec!929 r!13927 s!9460))))

(declare-fun lt!873693 () Unit!41431)

(declare-fun choose!14264 (Regex!7080 List!28398) Unit!41431)

(assert (=> d!700709 (= lt!873693 (choose!14264 r!13927 s!9460))))

(assert (=> d!700709 (validRegex!2802 r!13927)))

(assert (=> d!700709 (= (mainMatchTheorem!929 r!13927 s!9460) lt!873693)))

(declare-fun bs!463448 () Bool)

(assert (= bs!463448 d!700709))

(assert (=> bs!463448 m!2802561))

(assert (=> bs!463448 m!2802563))

(declare-fun m!2802671 () Bool)

(assert (=> bs!463448 m!2802671))

(assert (=> bs!463448 m!2802657))

(assert (=> b!2411478 d!700709))

(declare-fun bs!463449 () Bool)

(declare-fun d!700711 () Bool)

(assert (= bs!463449 (and d!700711 start!236326)))

(declare-fun lambda!90788 () Int)

(assert (=> bs!463449 (= lambda!90788 lambda!90776)))

(declare-fun b!2411699 () Bool)

(declare-fun e!1535261 () Regex!7080)

(declare-fun e!1535262 () Regex!7080)

(assert (=> b!2411699 (= e!1535261 e!1535262)))

(declare-fun c!384227 () Bool)

(assert (=> b!2411699 (= c!384227 (is-Cons!28301 l!9164))))

(declare-fun b!2411700 () Bool)

(declare-fun e!1535263 () Bool)

(declare-fun e!1535259 () Bool)

(assert (=> b!2411700 (= e!1535263 e!1535259)))

(declare-fun c!384228 () Bool)

(assert (=> b!2411700 (= c!384228 (isEmpty!16306 (tail!3651 l!9164)))))

(declare-fun b!2411701 () Bool)

(assert (=> b!2411701 (= e!1535261 (h!33702 l!9164))))

(declare-fun e!1535264 () Bool)

(assert (=> d!700711 e!1535264))

(declare-fun res!1024269 () Bool)

(assert (=> d!700711 (=> (not res!1024269) (not e!1535264))))

(declare-fun lt!873696 () Regex!7080)

(assert (=> d!700711 (= res!1024269 (validRegex!2802 lt!873696))))

(assert (=> d!700711 (= lt!873696 e!1535261)))

(declare-fun c!384229 () Bool)

(declare-fun e!1535260 () Bool)

(assert (=> d!700711 (= c!384229 e!1535260)))

(declare-fun res!1024270 () Bool)

(assert (=> d!700711 (=> (not res!1024270) (not e!1535260))))

(assert (=> d!700711 (= res!1024270 (is-Cons!28301 l!9164))))

(assert (=> d!700711 (forall!5714 l!9164 lambda!90788)))

(assert (=> d!700711 (= (generalisedConcat!181 l!9164) lt!873696)))

(declare-fun b!2411702 () Bool)

(assert (=> b!2411702 (= e!1535259 (= lt!873696 (head!5379 l!9164)))))

(declare-fun b!2411703 () Bool)

(assert (=> b!2411703 (= e!1535262 (Concat!11716 (h!33702 l!9164) (generalisedConcat!181 (t!208376 l!9164))))))

(declare-fun b!2411704 () Bool)

(declare-fun isConcat!141 (Regex!7080) Bool)

(assert (=> b!2411704 (= e!1535259 (isConcat!141 lt!873696))))

(declare-fun b!2411705 () Bool)

(declare-fun isEmptyExpr!141 (Regex!7080) Bool)

(assert (=> b!2411705 (= e!1535263 (isEmptyExpr!141 lt!873696))))

(declare-fun b!2411706 () Bool)

(assert (=> b!2411706 (= e!1535264 e!1535263)))

(declare-fun c!384226 () Bool)

(assert (=> b!2411706 (= c!384226 (isEmpty!16306 l!9164))))

(declare-fun b!2411707 () Bool)

(assert (=> b!2411707 (= e!1535260 (isEmpty!16306 (t!208376 l!9164)))))

(declare-fun b!2411708 () Bool)

(assert (=> b!2411708 (= e!1535262 EmptyExpr!7080)))

(assert (= (and d!700711 res!1024270) b!2411707))

(assert (= (and d!700711 c!384229) b!2411701))

(assert (= (and d!700711 (not c!384229)) b!2411699))

(assert (= (and b!2411699 c!384227) b!2411703))

(assert (= (and b!2411699 (not c!384227)) b!2411708))

(assert (= (and d!700711 res!1024269) b!2411706))

(assert (= (and b!2411706 c!384226) b!2411705))

(assert (= (and b!2411706 (not c!384226)) b!2411700))

(assert (= (and b!2411700 c!384228) b!2411702))

(assert (= (and b!2411700 (not c!384228)) b!2411704))

(assert (=> b!2411706 m!2802571))

(declare-fun m!2802673 () Bool)

(assert (=> b!2411707 m!2802673))

(assert (=> b!2411700 m!2802569))

(assert (=> b!2411700 m!2802569))

(declare-fun m!2802675 () Bool)

(assert (=> b!2411700 m!2802675))

(declare-fun m!2802677 () Bool)

(assert (=> b!2411705 m!2802677))

(assert (=> b!2411702 m!2802577))

(declare-fun m!2802679 () Bool)

(assert (=> b!2411703 m!2802679))

(declare-fun m!2802681 () Bool)

(assert (=> d!700711 m!2802681))

(declare-fun m!2802683 () Bool)

(assert (=> d!700711 m!2802683))

(declare-fun m!2802685 () Bool)

(assert (=> b!2411704 m!2802685))

(assert (=> b!2411484 d!700711))

(declare-fun d!700713 () Bool)

(assert (=> d!700713 (matchR!3197 (Concat!11716 lt!873661 EmptyExpr!7080) (++!7009 s!9460 Nil!28300))))

(declare-fun lt!873701 () Unit!41431)

(declare-fun choose!14265 (Regex!7080 Regex!7080 List!28398 List!28398) Unit!41431)

(assert (=> d!700713 (= lt!873701 (choose!14265 lt!873661 EmptyExpr!7080 s!9460 Nil!28300))))

(declare-fun e!1535281 () Bool)

(assert (=> d!700713 e!1535281))

(declare-fun res!1024289 () Bool)

(assert (=> d!700713 (=> (not res!1024289) (not e!1535281))))

(assert (=> d!700713 (= res!1024289 (validRegex!2802 lt!873661))))

(assert (=> d!700713 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!79 lt!873661 EmptyExpr!7080 s!9460 Nil!28300) lt!873701)))

(declare-fun b!2411739 () Bool)

(assert (=> b!2411739 (= e!1535281 (validRegex!2802 EmptyExpr!7080))))

(assert (= (and d!700713 res!1024289) b!2411739))

(assert (=> d!700713 m!2802551))

(assert (=> d!700713 m!2802551))

(declare-fun m!2802687 () Bool)

(assert (=> d!700713 m!2802687))

(declare-fun m!2802689 () Bool)

(assert (=> d!700713 m!2802689))

(assert (=> d!700713 m!2802549))

(declare-fun m!2802691 () Bool)

(assert (=> b!2411739 m!2802691))

(assert (=> b!2411485 d!700713))

(declare-fun d!700715 () Bool)

(assert (=> d!700715 (isDefined!4417 (findConcatSeparation!697 lt!873661 EmptyExpr!7080 Nil!28300 s!9460 s!9460))))

(declare-fun lt!873704 () Unit!41431)

(declare-fun choose!14266 (Regex!7080 Regex!7080 List!28398) Unit!41431)

(assert (=> d!700715 (= lt!873704 (choose!14266 lt!873661 EmptyExpr!7080 s!9460))))

(assert (=> d!700715 (validRegex!2802 lt!873661)))

(assert (=> d!700715 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!53 lt!873661 EmptyExpr!7080 s!9460) lt!873704)))

(declare-fun bs!463450 () Bool)

(assert (= bs!463450 d!700715))

(assert (=> bs!463450 m!2802547))

(assert (=> bs!463450 m!2802547))

(assert (=> bs!463450 m!2802559))

(declare-fun m!2802693 () Bool)

(assert (=> bs!463450 m!2802693))

(assert (=> bs!463450 m!2802549))

(assert (=> b!2411485 d!700715))

(declare-fun d!700717 () Bool)

(declare-fun isEmpty!16309 (Option!5589) Bool)

(assert (=> d!700717 (= (isDefined!4417 (findConcatSeparation!697 lt!873661 EmptyExpr!7080 Nil!28300 s!9460 s!9460)) (not (isEmpty!16309 (findConcatSeparation!697 lt!873661 EmptyExpr!7080 Nil!28300 s!9460 s!9460))))))

(declare-fun bs!463451 () Bool)

(assert (= bs!463451 d!700717))

(assert (=> bs!463451 m!2802547))

(declare-fun m!2802695 () Bool)

(assert (=> bs!463451 m!2802695))

(assert (=> b!2411485 d!700717))

(declare-fun b!2411764 () Bool)

(declare-fun res!1024302 () Bool)

(declare-fun e!1535293 () Bool)

(assert (=> b!2411764 (=> (not res!1024302) (not e!1535293))))

(declare-fun lt!873708 () List!28398)

(declare-fun size!22217 (List!28398) Int)

(assert (=> b!2411764 (= res!1024302 (= (size!22217 lt!873708) (+ (size!22217 s!9460) (size!22217 Nil!28300))))))

(declare-fun d!700719 () Bool)

(assert (=> d!700719 e!1535293))

(declare-fun res!1024303 () Bool)

(assert (=> d!700719 (=> (not res!1024303) (not e!1535293))))

(declare-fun content!3879 (List!28398) (Set C!14318))

(assert (=> d!700719 (= res!1024303 (= (content!3879 lt!873708) (set.union (content!3879 s!9460) (content!3879 Nil!28300))))))

(declare-fun e!1535294 () List!28398)

(assert (=> d!700719 (= lt!873708 e!1535294)))

(declare-fun c!384241 () Bool)

(assert (=> d!700719 (= c!384241 (is-Nil!28300 s!9460))))

(assert (=> d!700719 (= (++!7009 s!9460 Nil!28300) lt!873708)))

(declare-fun b!2411765 () Bool)

(assert (=> b!2411765 (= e!1535293 (or (not (= Nil!28300 Nil!28300)) (= lt!873708 s!9460)))))

(declare-fun b!2411763 () Bool)

(assert (=> b!2411763 (= e!1535294 (Cons!28300 (h!33701 s!9460) (++!7009 (t!208375 s!9460) Nil!28300)))))

(declare-fun b!2411762 () Bool)

(assert (=> b!2411762 (= e!1535294 Nil!28300)))

(assert (= (and d!700719 c!384241) b!2411762))

(assert (= (and d!700719 (not c!384241)) b!2411763))

(assert (= (and d!700719 res!1024303) b!2411764))

(assert (= (and b!2411764 res!1024302) b!2411765))

(declare-fun m!2802715 () Bool)

(assert (=> b!2411764 m!2802715))

(declare-fun m!2802717 () Bool)

(assert (=> b!2411764 m!2802717))

(declare-fun m!2802719 () Bool)

(assert (=> b!2411764 m!2802719))

(declare-fun m!2802721 () Bool)

(assert (=> d!700719 m!2802721))

(declare-fun m!2802723 () Bool)

(assert (=> d!700719 m!2802723))

(declare-fun m!2802725 () Bool)

(assert (=> d!700719 m!2802725))

(declare-fun m!2802727 () Bool)

(assert (=> b!2411763 m!2802727))

(assert (=> b!2411485 d!700719))

(declare-fun b!2411792 () Bool)

(declare-fun e!1535309 () Bool)

(assert (=> b!2411792 (= e!1535309 (matchR!3197 EmptyExpr!7080 s!9460))))

(declare-fun b!2411793 () Bool)

(declare-fun lt!873721 () Unit!41431)

(declare-fun lt!873722 () Unit!41431)

(assert (=> b!2411793 (= lt!873721 lt!873722)))

(assert (=> b!2411793 (= (++!7009 (++!7009 Nil!28300 (Cons!28300 (h!33701 s!9460) Nil!28300)) (t!208375 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!641 (List!28398 C!14318 List!28398 List!28398) Unit!41431)

(assert (=> b!2411793 (= lt!873722 (lemmaMoveElementToOtherListKeepsConcatEq!641 Nil!28300 (h!33701 s!9460) (t!208375 s!9460) s!9460))))

(declare-fun e!1535311 () Option!5589)

(assert (=> b!2411793 (= e!1535311 (findConcatSeparation!697 lt!873661 EmptyExpr!7080 (++!7009 Nil!28300 (Cons!28300 (h!33701 s!9460) Nil!28300)) (t!208375 s!9460) s!9460))))

(declare-fun b!2411795 () Bool)

(declare-fun e!1535310 () Bool)

(declare-fun lt!873720 () Option!5589)

(assert (=> b!2411795 (= e!1535310 (not (isDefined!4417 lt!873720)))))

(declare-fun b!2411796 () Bool)

(declare-fun e!1535312 () Option!5589)

(assert (=> b!2411796 (= e!1535312 (Some!5588 (tuple2!27957 Nil!28300 s!9460)))))

(declare-fun b!2411797 () Bool)

(declare-fun e!1535313 () Bool)

(declare-fun get!8683 (Option!5589) tuple2!27956)

(assert (=> b!2411797 (= e!1535313 (= (++!7009 (_1!16519 (get!8683 lt!873720)) (_2!16519 (get!8683 lt!873720))) s!9460))))

(declare-fun b!2411798 () Bool)

(assert (=> b!2411798 (= e!1535312 e!1535311)))

(declare-fun c!384249 () Bool)

(assert (=> b!2411798 (= c!384249 (is-Nil!28300 s!9460))))

(declare-fun b!2411799 () Bool)

(declare-fun res!1024320 () Bool)

(assert (=> b!2411799 (=> (not res!1024320) (not e!1535313))))

(assert (=> b!2411799 (= res!1024320 (matchR!3197 lt!873661 (_1!16519 (get!8683 lt!873720))))))

(declare-fun b!2411800 () Bool)

(assert (=> b!2411800 (= e!1535311 None!5588)))

(declare-fun b!2411794 () Bool)

(declare-fun res!1024318 () Bool)

(assert (=> b!2411794 (=> (not res!1024318) (not e!1535313))))

(assert (=> b!2411794 (= res!1024318 (matchR!3197 EmptyExpr!7080 (_2!16519 (get!8683 lt!873720))))))

(declare-fun d!700725 () Bool)

(assert (=> d!700725 e!1535310))

(declare-fun res!1024322 () Bool)

(assert (=> d!700725 (=> res!1024322 e!1535310)))

(assert (=> d!700725 (= res!1024322 e!1535313)))

(declare-fun res!1024319 () Bool)

(assert (=> d!700725 (=> (not res!1024319) (not e!1535313))))

(assert (=> d!700725 (= res!1024319 (isDefined!4417 lt!873720))))

(assert (=> d!700725 (= lt!873720 e!1535312)))

(declare-fun c!384248 () Bool)

(assert (=> d!700725 (= c!384248 e!1535309)))

(declare-fun res!1024321 () Bool)

(assert (=> d!700725 (=> (not res!1024321) (not e!1535309))))

(assert (=> d!700725 (= res!1024321 (matchR!3197 lt!873661 Nil!28300))))

(assert (=> d!700725 (validRegex!2802 lt!873661)))

(assert (=> d!700725 (= (findConcatSeparation!697 lt!873661 EmptyExpr!7080 Nil!28300 s!9460 s!9460) lt!873720)))

(assert (= (and d!700725 res!1024321) b!2411792))

(assert (= (and d!700725 c!384248) b!2411796))

(assert (= (and d!700725 (not c!384248)) b!2411798))

(assert (= (and b!2411798 c!384249) b!2411800))

(assert (= (and b!2411798 (not c!384249)) b!2411793))

(assert (= (and d!700725 res!1024319) b!2411799))

(assert (= (and b!2411799 res!1024320) b!2411794))

(assert (= (and b!2411794 res!1024318) b!2411797))

(assert (= (and d!700725 (not res!1024322)) b!2411795))

(declare-fun m!2802731 () Bool)

(assert (=> d!700725 m!2802731))

(declare-fun m!2802733 () Bool)

(assert (=> d!700725 m!2802733))

(assert (=> d!700725 m!2802549))

(declare-fun m!2802735 () Bool)

(assert (=> b!2411793 m!2802735))

(assert (=> b!2411793 m!2802735))

(declare-fun m!2802737 () Bool)

(assert (=> b!2411793 m!2802737))

(declare-fun m!2802739 () Bool)

(assert (=> b!2411793 m!2802739))

(assert (=> b!2411793 m!2802735))

(declare-fun m!2802741 () Bool)

(assert (=> b!2411793 m!2802741))

(assert (=> b!2411795 m!2802731))

(declare-fun m!2802743 () Bool)

(assert (=> b!2411794 m!2802743))

(declare-fun m!2802745 () Bool)

(assert (=> b!2411794 m!2802745))

(assert (=> b!2411797 m!2802743))

(declare-fun m!2802747 () Bool)

(assert (=> b!2411797 m!2802747))

(assert (=> b!2411799 m!2802743))

(declare-fun m!2802749 () Bool)

(assert (=> b!2411799 m!2802749))

(declare-fun m!2802751 () Bool)

(assert (=> b!2411792 m!2802751))

(assert (=> b!2411485 d!700725))

(declare-fun b!2411805 () Bool)

(declare-fun e!1535322 () Bool)

(declare-fun call!147282 () Bool)

(assert (=> b!2411805 (= e!1535322 call!147282)))

(declare-fun b!2411806 () Bool)

(declare-fun e!1535320 () Bool)

(declare-fun e!1535316 () Bool)

(assert (=> b!2411806 (= e!1535320 e!1535316)))

(declare-fun c!384251 () Bool)

(assert (=> b!2411806 (= c!384251 (is-Union!7080 lt!873661))))

(declare-fun b!2411807 () Bool)

(declare-fun e!1535317 () Bool)

(assert (=> b!2411807 (= e!1535320 e!1535317)))

(declare-fun res!1024326 () Bool)

(assert (=> b!2411807 (= res!1024326 (not (nullable!2122 (reg!7409 lt!873661))))))

(assert (=> b!2411807 (=> (not res!1024326) (not e!1535317))))

(declare-fun b!2411808 () Bool)

(declare-fun e!1535318 () Bool)

(declare-fun call!147281 () Bool)

(assert (=> b!2411808 (= e!1535318 call!147281)))

(declare-fun bm!147276 () Bool)

(assert (=> bm!147276 (= call!147281 (validRegex!2802 (ite c!384251 (regOne!14673 lt!873661) (regTwo!14672 lt!873661))))))

(declare-fun bm!147277 () Bool)

(declare-fun c!384252 () Bool)

(declare-fun call!147283 () Bool)

(assert (=> bm!147277 (= call!147283 (validRegex!2802 (ite c!384252 (reg!7409 lt!873661) (ite c!384251 (regTwo!14673 lt!873661) (regOne!14672 lt!873661)))))))

(declare-fun b!2411809 () Bool)

(assert (=> b!2411809 (= e!1535317 call!147283)))

(declare-fun b!2411810 () Bool)

(declare-fun res!1024327 () Bool)

(declare-fun e!1535321 () Bool)

(assert (=> b!2411810 (=> res!1024327 e!1535321)))

(assert (=> b!2411810 (= res!1024327 (not (is-Concat!11716 lt!873661)))))

(assert (=> b!2411810 (= e!1535316 e!1535321)))

(declare-fun d!700729 () Bool)

(declare-fun res!1024329 () Bool)

(declare-fun e!1535319 () Bool)

(assert (=> d!700729 (=> res!1024329 e!1535319)))

(assert (=> d!700729 (= res!1024329 (is-ElementMatch!7080 lt!873661))))

(assert (=> d!700729 (= (validRegex!2802 lt!873661) e!1535319)))

(declare-fun b!2411811 () Bool)

(declare-fun res!1024328 () Bool)

(assert (=> b!2411811 (=> (not res!1024328) (not e!1535322))))

(assert (=> b!2411811 (= res!1024328 call!147281)))

(assert (=> b!2411811 (= e!1535316 e!1535322)))

(declare-fun b!2411812 () Bool)

(assert (=> b!2411812 (= e!1535319 e!1535320)))

(assert (=> b!2411812 (= c!384252 (is-Star!7080 lt!873661))))

(declare-fun bm!147278 () Bool)

(assert (=> bm!147278 (= call!147282 call!147283)))

(declare-fun b!2411813 () Bool)

(assert (=> b!2411813 (= e!1535321 e!1535318)))

(declare-fun res!1024325 () Bool)

(assert (=> b!2411813 (=> (not res!1024325) (not e!1535318))))

(assert (=> b!2411813 (= res!1024325 call!147282)))

(assert (= (and d!700729 (not res!1024329)) b!2411812))

(assert (= (and b!2411812 c!384252) b!2411807))

(assert (= (and b!2411812 (not c!384252)) b!2411806))

(assert (= (and b!2411807 res!1024326) b!2411809))

(assert (= (and b!2411806 c!384251) b!2411811))

(assert (= (and b!2411806 (not c!384251)) b!2411810))

(assert (= (and b!2411811 res!1024328) b!2411805))

(assert (= (and b!2411810 (not res!1024327)) b!2411813))

(assert (= (and b!2411813 res!1024325) b!2411808))

(assert (= (or b!2411811 b!2411808) bm!147276))

(assert (= (or b!2411805 b!2411813) bm!147278))

(assert (= (or b!2411809 bm!147278) bm!147277))

(declare-fun m!2802761 () Bool)

(assert (=> b!2411807 m!2802761))

(declare-fun m!2802765 () Bool)

(assert (=> bm!147276 m!2802765))

(declare-fun m!2802771 () Bool)

(assert (=> bm!147277 m!2802771))

(assert (=> b!2411485 d!700729))

(declare-fun b!2411814 () Bool)

(declare-fun e!1535329 () Bool)

(declare-fun lt!873724 () Bool)

(declare-fun call!147284 () Bool)

(assert (=> b!2411814 (= e!1535329 (= lt!873724 call!147284))))

(declare-fun b!2411816 () Bool)

(declare-fun res!1024336 () Bool)

(declare-fun e!1535328 () Bool)

(assert (=> b!2411816 (=> (not res!1024336) (not e!1535328))))

(assert (=> b!2411816 (= res!1024336 (not call!147284))))

(declare-fun b!2411817 () Bool)

(declare-fun e!1535325 () Bool)

(assert (=> b!2411817 (= e!1535325 (not lt!873724))))

(declare-fun b!2411818 () Bool)

(declare-fun e!1535327 () Bool)

(declare-fun e!1535324 () Bool)

(assert (=> b!2411818 (= e!1535327 e!1535324)))

(declare-fun res!1024334 () Bool)

(assert (=> b!2411818 (=> (not res!1024334) (not e!1535324))))

(assert (=> b!2411818 (= res!1024334 (not lt!873724))))

(declare-fun b!2411819 () Bool)

(declare-fun e!1535326 () Bool)

(assert (=> b!2411819 (= e!1535326 (nullable!2122 lt!873665))))

(declare-fun b!2411820 () Bool)

(declare-fun res!1024337 () Bool)

(declare-fun e!1535323 () Bool)

(assert (=> b!2411820 (=> res!1024337 e!1535323)))

(assert (=> b!2411820 (= res!1024337 (not (isEmpty!16308 (tail!3653 (++!7009 s!9460 Nil!28300)))))))

(declare-fun b!2411815 () Bool)

(assert (=> b!2411815 (= e!1535328 (= (head!5381 (++!7009 s!9460 Nil!28300)) (c!384186 lt!873665)))))

(declare-fun d!700731 () Bool)

(assert (=> d!700731 e!1535329))

(declare-fun c!384254 () Bool)

(assert (=> d!700731 (= c!384254 (is-EmptyExpr!7080 lt!873665))))

(assert (=> d!700731 (= lt!873724 e!1535326)))

(declare-fun c!384255 () Bool)

(assert (=> d!700731 (= c!384255 (isEmpty!16308 (++!7009 s!9460 Nil!28300)))))

(assert (=> d!700731 (validRegex!2802 lt!873665)))

(assert (=> d!700731 (= (matchR!3197 lt!873665 (++!7009 s!9460 Nil!28300)) lt!873724)))

(declare-fun b!2411821 () Bool)

(declare-fun res!1024330 () Bool)

(assert (=> b!2411821 (=> res!1024330 e!1535327)))

(assert (=> b!2411821 (= res!1024330 (not (is-ElementMatch!7080 lt!873665)))))

(assert (=> b!2411821 (= e!1535325 e!1535327)))

(declare-fun b!2411822 () Bool)

(assert (=> b!2411822 (= e!1535329 e!1535325)))

(declare-fun c!384253 () Bool)

(assert (=> b!2411822 (= c!384253 (is-EmptyLang!7080 lt!873665))))

(declare-fun b!2411823 () Bool)

(assert (=> b!2411823 (= e!1535324 e!1535323)))

(declare-fun res!1024332 () Bool)

(assert (=> b!2411823 (=> res!1024332 e!1535323)))

(assert (=> b!2411823 (= res!1024332 call!147284)))

(declare-fun b!2411824 () Bool)

(assert (=> b!2411824 (= e!1535326 (matchR!3197 (derivativeStep!1779 lt!873665 (head!5381 (++!7009 s!9460 Nil!28300))) (tail!3653 (++!7009 s!9460 Nil!28300))))))

(declare-fun b!2411825 () Bool)

(declare-fun res!1024335 () Bool)

(assert (=> b!2411825 (=> res!1024335 e!1535327)))

(assert (=> b!2411825 (= res!1024335 e!1535328)))

(declare-fun res!1024331 () Bool)

(assert (=> b!2411825 (=> (not res!1024331) (not e!1535328))))

(assert (=> b!2411825 (= res!1024331 lt!873724)))

(declare-fun bm!147279 () Bool)

(assert (=> bm!147279 (= call!147284 (isEmpty!16308 (++!7009 s!9460 Nil!28300)))))

(declare-fun b!2411826 () Bool)

(declare-fun res!1024333 () Bool)

(assert (=> b!2411826 (=> (not res!1024333) (not e!1535328))))

(assert (=> b!2411826 (= res!1024333 (isEmpty!16308 (tail!3653 (++!7009 s!9460 Nil!28300))))))

(declare-fun b!2411827 () Bool)

(assert (=> b!2411827 (= e!1535323 (not (= (head!5381 (++!7009 s!9460 Nil!28300)) (c!384186 lt!873665))))))

(assert (= (and d!700731 c!384255) b!2411819))

(assert (= (and d!700731 (not c!384255)) b!2411824))

(assert (= (and d!700731 c!384254) b!2411814))

(assert (= (and d!700731 (not c!384254)) b!2411822))

(assert (= (and b!2411822 c!384253) b!2411817))

(assert (= (and b!2411822 (not c!384253)) b!2411821))

(assert (= (and b!2411821 (not res!1024330)) b!2411825))

(assert (= (and b!2411825 res!1024331) b!2411816))

(assert (= (and b!2411816 res!1024336) b!2411826))

(assert (= (and b!2411826 res!1024333) b!2411815))

(assert (= (and b!2411825 (not res!1024335)) b!2411818))

(assert (= (and b!2411818 res!1024334) b!2411823))

(assert (= (and b!2411823 (not res!1024332)) b!2411820))

(assert (= (and b!2411820 (not res!1024337)) b!2411827))

(assert (= (or b!2411814 b!2411816 b!2411823) bm!147279))

(assert (=> bm!147279 m!2802551))

(declare-fun m!2802773 () Bool)

(assert (=> bm!147279 m!2802773))

(assert (=> b!2411815 m!2802551))

(declare-fun m!2802775 () Bool)

(assert (=> b!2411815 m!2802775))

(assert (=> d!700731 m!2802551))

(assert (=> d!700731 m!2802773))

(assert (=> d!700731 m!2802641))

(assert (=> b!2411827 m!2802551))

(assert (=> b!2411827 m!2802775))

(assert (=> b!2411824 m!2802551))

(assert (=> b!2411824 m!2802775))

(assert (=> b!2411824 m!2802775))

(declare-fun m!2802777 () Bool)

(assert (=> b!2411824 m!2802777))

(assert (=> b!2411824 m!2802551))

(declare-fun m!2802779 () Bool)

(assert (=> b!2411824 m!2802779))

(assert (=> b!2411824 m!2802777))

(assert (=> b!2411824 m!2802779))

(declare-fun m!2802781 () Bool)

(assert (=> b!2411824 m!2802781))

(assert (=> b!2411826 m!2802551))

(assert (=> b!2411826 m!2802779))

(assert (=> b!2411826 m!2802779))

(declare-fun m!2802783 () Bool)

(assert (=> b!2411826 m!2802783))

(assert (=> b!2411819 m!2802651))

(assert (=> b!2411820 m!2802551))

(assert (=> b!2411820 m!2802779))

(assert (=> b!2411820 m!2802779))

(assert (=> b!2411820 m!2802783))

(assert (=> b!2411485 d!700731))

(declare-fun d!700735 () Bool)

(assert (=> d!700735 (= (isEmpty!16306 lt!873660) (is-Nil!28301 lt!873660))))

(assert (=> b!2411491 d!700735))

(declare-fun d!700737 () Bool)

(assert (=> d!700737 (= (tail!3651 l!9164) (t!208376 l!9164))))

(assert (=> b!2411491 d!700737))

(declare-fun d!700739 () Bool)

(assert (=> d!700739 (= (isEmpty!16306 l!9164) (is-Nil!28301 l!9164))))

(assert (=> b!2411480 d!700739))

(declare-fun bs!463454 () Bool)

(declare-fun d!700741 () Bool)

(assert (= bs!463454 (and d!700741 start!236326)))

(declare-fun lambda!90789 () Int)

(assert (=> bs!463454 (= lambda!90789 lambda!90776)))

(declare-fun bs!463455 () Bool)

(assert (= bs!463455 (and d!700741 d!700711)))

(assert (=> bs!463455 (= lambda!90789 lambda!90788)))

(declare-fun b!2411828 () Bool)

(declare-fun e!1535332 () Regex!7080)

(declare-fun e!1535333 () Regex!7080)

(assert (=> b!2411828 (= e!1535332 e!1535333)))

(declare-fun c!384257 () Bool)

(assert (=> b!2411828 (= c!384257 (is-Cons!28301 lt!873660))))

(declare-fun b!2411829 () Bool)

(declare-fun e!1535334 () Bool)

(declare-fun e!1535330 () Bool)

(assert (=> b!2411829 (= e!1535334 e!1535330)))

(declare-fun c!384258 () Bool)

(assert (=> b!2411829 (= c!384258 (isEmpty!16306 (tail!3651 lt!873660)))))

(declare-fun b!2411830 () Bool)

(assert (=> b!2411830 (= e!1535332 (h!33702 lt!873660))))

(declare-fun e!1535335 () Bool)

(assert (=> d!700741 e!1535335))

(declare-fun res!1024338 () Bool)

(assert (=> d!700741 (=> (not res!1024338) (not e!1535335))))

(declare-fun lt!873725 () Regex!7080)

(assert (=> d!700741 (= res!1024338 (validRegex!2802 lt!873725))))

(assert (=> d!700741 (= lt!873725 e!1535332)))

(declare-fun c!384259 () Bool)

(declare-fun e!1535331 () Bool)

(assert (=> d!700741 (= c!384259 e!1535331)))

(declare-fun res!1024339 () Bool)

(assert (=> d!700741 (=> (not res!1024339) (not e!1535331))))

(assert (=> d!700741 (= res!1024339 (is-Cons!28301 lt!873660))))

(assert (=> d!700741 (forall!5714 lt!873660 lambda!90789)))

(assert (=> d!700741 (= (generalisedConcat!181 lt!873660) lt!873725)))

(declare-fun b!2411831 () Bool)

(assert (=> b!2411831 (= e!1535330 (= lt!873725 (head!5379 lt!873660)))))

(declare-fun b!2411832 () Bool)

(assert (=> b!2411832 (= e!1535333 (Concat!11716 (h!33702 lt!873660) (generalisedConcat!181 (t!208376 lt!873660))))))

(declare-fun b!2411833 () Bool)

(assert (=> b!2411833 (= e!1535330 (isConcat!141 lt!873725))))

(declare-fun b!2411834 () Bool)

(assert (=> b!2411834 (= e!1535334 (isEmptyExpr!141 lt!873725))))

(declare-fun b!2411835 () Bool)

(assert (=> b!2411835 (= e!1535335 e!1535334)))

(declare-fun c!384256 () Bool)

(assert (=> b!2411835 (= c!384256 (isEmpty!16306 lt!873660))))

(declare-fun b!2411836 () Bool)

(assert (=> b!2411836 (= e!1535331 (isEmpty!16306 (t!208376 lt!873660)))))

(declare-fun b!2411837 () Bool)

(assert (=> b!2411837 (= e!1535333 EmptyExpr!7080)))

(assert (= (and d!700741 res!1024339) b!2411836))

(assert (= (and d!700741 c!384259) b!2411830))

(assert (= (and d!700741 (not c!384259)) b!2411828))

(assert (= (and b!2411828 c!384257) b!2411832))

(assert (= (and b!2411828 (not c!384257)) b!2411837))

(assert (= (and d!700741 res!1024338) b!2411835))

(assert (= (and b!2411835 c!384256) b!2411834))

(assert (= (and b!2411835 (not c!384256)) b!2411829))

(assert (= (and b!2411829 c!384258) b!2411831))

(assert (= (and b!2411829 (not c!384258)) b!2411833))

(assert (=> b!2411835 m!2802567))

(declare-fun m!2802785 () Bool)

(assert (=> b!2411836 m!2802785))

(declare-fun m!2802787 () Bool)

(assert (=> b!2411829 m!2802787))

(assert (=> b!2411829 m!2802787))

(declare-fun m!2802789 () Bool)

(assert (=> b!2411829 m!2802789))

(declare-fun m!2802791 () Bool)

(assert (=> b!2411834 m!2802791))

(declare-fun m!2802793 () Bool)

(assert (=> b!2411831 m!2802793))

(declare-fun m!2802795 () Bool)

(assert (=> b!2411832 m!2802795))

(declare-fun m!2802797 () Bool)

(assert (=> d!700741 m!2802797))

(declare-fun m!2802799 () Bool)

(assert (=> d!700741 m!2802799))

(declare-fun m!2802801 () Bool)

(assert (=> b!2411833 m!2802801))

(assert (=> b!2411481 d!700741))

(declare-fun b!2411842 () Bool)

(declare-fun e!1535344 () Bool)

(declare-fun lt!873726 () Bool)

(declare-fun call!147285 () Bool)

(assert (=> b!2411842 (= e!1535344 (= lt!873726 call!147285))))

(declare-fun b!2411844 () Bool)

(declare-fun res!1024348 () Bool)

(declare-fun e!1535343 () Bool)

(assert (=> b!2411844 (=> (not res!1024348) (not e!1535343))))

(assert (=> b!2411844 (= res!1024348 (not call!147285))))

(declare-fun b!2411845 () Bool)

(declare-fun e!1535340 () Bool)

(assert (=> b!2411845 (= e!1535340 (not lt!873726))))

(declare-fun b!2411846 () Bool)

(declare-fun e!1535342 () Bool)

(declare-fun e!1535339 () Bool)

(assert (=> b!2411846 (= e!1535342 e!1535339)))

(declare-fun res!1024346 () Bool)

(assert (=> b!2411846 (=> (not res!1024346) (not e!1535339))))

(assert (=> b!2411846 (= res!1024346 (not lt!873726))))

(declare-fun b!2411847 () Bool)

(declare-fun e!1535341 () Bool)

(assert (=> b!2411847 (= e!1535341 (nullable!2122 lt!873661))))

(declare-fun b!2411848 () Bool)

(declare-fun res!1024349 () Bool)

(declare-fun e!1535338 () Bool)

(assert (=> b!2411848 (=> res!1024349 e!1535338)))

(assert (=> b!2411848 (= res!1024349 (not (isEmpty!16308 (tail!3653 s!9460))))))

(declare-fun b!2411843 () Bool)

(assert (=> b!2411843 (= e!1535343 (= (head!5381 s!9460) (c!384186 lt!873661)))))

(declare-fun d!700743 () Bool)

(assert (=> d!700743 e!1535344))

(declare-fun c!384261 () Bool)

(assert (=> d!700743 (= c!384261 (is-EmptyExpr!7080 lt!873661))))

(assert (=> d!700743 (= lt!873726 e!1535341)))

(declare-fun c!384262 () Bool)

(assert (=> d!700743 (= c!384262 (isEmpty!16308 s!9460))))

(assert (=> d!700743 (validRegex!2802 lt!873661)))

(assert (=> d!700743 (= (matchR!3197 lt!873661 s!9460) lt!873726)))

(declare-fun b!2411849 () Bool)

(declare-fun res!1024342 () Bool)

(assert (=> b!2411849 (=> res!1024342 e!1535342)))

(assert (=> b!2411849 (= res!1024342 (not (is-ElementMatch!7080 lt!873661)))))

(assert (=> b!2411849 (= e!1535340 e!1535342)))

(declare-fun b!2411850 () Bool)

(assert (=> b!2411850 (= e!1535344 e!1535340)))

(declare-fun c!384260 () Bool)

(assert (=> b!2411850 (= c!384260 (is-EmptyLang!7080 lt!873661))))

(declare-fun b!2411851 () Bool)

(assert (=> b!2411851 (= e!1535339 e!1535338)))

(declare-fun res!1024344 () Bool)

(assert (=> b!2411851 (=> res!1024344 e!1535338)))

(assert (=> b!2411851 (= res!1024344 call!147285)))

(declare-fun b!2411852 () Bool)

(assert (=> b!2411852 (= e!1535341 (matchR!3197 (derivativeStep!1779 lt!873661 (head!5381 s!9460)) (tail!3653 s!9460)))))

(declare-fun b!2411853 () Bool)

(declare-fun res!1024347 () Bool)

(assert (=> b!2411853 (=> res!1024347 e!1535342)))

(assert (=> b!2411853 (= res!1024347 e!1535343)))

(declare-fun res!1024343 () Bool)

(assert (=> b!2411853 (=> (not res!1024343) (not e!1535343))))

(assert (=> b!2411853 (= res!1024343 lt!873726)))

(declare-fun bm!147280 () Bool)

(assert (=> bm!147280 (= call!147285 (isEmpty!16308 s!9460))))

(declare-fun b!2411854 () Bool)

(declare-fun res!1024345 () Bool)

(assert (=> b!2411854 (=> (not res!1024345) (not e!1535343))))

(assert (=> b!2411854 (= res!1024345 (isEmpty!16308 (tail!3653 s!9460)))))

(declare-fun b!2411855 () Bool)

(assert (=> b!2411855 (= e!1535338 (not (= (head!5381 s!9460) (c!384186 lt!873661))))))

(assert (= (and d!700743 c!384262) b!2411847))

(assert (= (and d!700743 (not c!384262)) b!2411852))

(assert (= (and d!700743 c!384261) b!2411842))

(assert (= (and d!700743 (not c!384261)) b!2411850))

(assert (= (and b!2411850 c!384260) b!2411845))

(assert (= (and b!2411850 (not c!384260)) b!2411849))

(assert (= (and b!2411849 (not res!1024342)) b!2411853))

(assert (= (and b!2411853 res!1024343) b!2411844))

(assert (= (and b!2411844 res!1024348) b!2411854))

(assert (= (and b!2411854 res!1024345) b!2411843))

(assert (= (and b!2411853 (not res!1024347)) b!2411846))

(assert (= (and b!2411846 res!1024346) b!2411851))

(assert (= (and b!2411851 (not res!1024344)) b!2411848))

(assert (= (and b!2411848 (not res!1024349)) b!2411855))

(assert (= (or b!2411842 b!2411844 b!2411851) bm!147280))

(assert (=> bm!147280 m!2802637))

(assert (=> b!2411843 m!2802639))

(assert (=> d!700743 m!2802637))

(assert (=> d!700743 m!2802549))

(assert (=> b!2411855 m!2802639))

(assert (=> b!2411852 m!2802639))

(assert (=> b!2411852 m!2802639))

(declare-fun m!2802803 () Bool)

(assert (=> b!2411852 m!2802803))

(assert (=> b!2411852 m!2802645))

(assert (=> b!2411852 m!2802803))

(assert (=> b!2411852 m!2802645))

(declare-fun m!2802805 () Bool)

(assert (=> b!2411852 m!2802805))

(assert (=> b!2411854 m!2802645))

(assert (=> b!2411854 m!2802645))

(assert (=> b!2411854 m!2802649))

(declare-fun m!2802807 () Bool)

(assert (=> b!2411847 m!2802807))

(assert (=> b!2411848 m!2802645))

(assert (=> b!2411848 m!2802645))

(assert (=> b!2411848 m!2802649))

(assert (=> b!2411482 d!700743))

(declare-fun d!700745 () Bool)

(assert (=> d!700745 (= (head!5379 l!9164) (h!33702 l!9164))))

(assert (=> b!2411482 d!700745))

(declare-fun e!1535359 () Bool)

(assert (=> b!2411489 (= tp!767127 e!1535359)))

(declare-fun b!2411880 () Bool)

(assert (=> b!2411880 (= e!1535359 tp_is_empty!11573)))

(declare-fun b!2411881 () Bool)

(declare-fun tp!767166 () Bool)

(declare-fun tp!767168 () Bool)

(assert (=> b!2411881 (= e!1535359 (and tp!767166 tp!767168))))

(declare-fun b!2411882 () Bool)

(declare-fun tp!767169 () Bool)

(assert (=> b!2411882 (= e!1535359 tp!767169)))

(declare-fun b!2411883 () Bool)

(declare-fun tp!767167 () Bool)

(declare-fun tp!767170 () Bool)

(assert (=> b!2411883 (= e!1535359 (and tp!767167 tp!767170))))

(assert (= (and b!2411489 (is-ElementMatch!7080 (reg!7409 r!13927))) b!2411880))

(assert (= (and b!2411489 (is-Concat!11716 (reg!7409 r!13927))) b!2411881))

(assert (= (and b!2411489 (is-Star!7080 (reg!7409 r!13927))) b!2411882))

(assert (= (and b!2411489 (is-Union!7080 (reg!7409 r!13927))) b!2411883))

(declare-fun e!1535360 () Bool)

(assert (=> b!2411479 (= tp!767129 e!1535360)))

(declare-fun b!2411884 () Bool)

(assert (=> b!2411884 (= e!1535360 tp_is_empty!11573)))

(declare-fun b!2411885 () Bool)

(declare-fun tp!767171 () Bool)

(declare-fun tp!767173 () Bool)

(assert (=> b!2411885 (= e!1535360 (and tp!767171 tp!767173))))

(declare-fun b!2411886 () Bool)

(declare-fun tp!767174 () Bool)

(assert (=> b!2411886 (= e!1535360 tp!767174)))

(declare-fun b!2411887 () Bool)

(declare-fun tp!767172 () Bool)

(declare-fun tp!767175 () Bool)

(assert (=> b!2411887 (= e!1535360 (and tp!767172 tp!767175))))

(assert (= (and b!2411479 (is-ElementMatch!7080 (regOne!14672 r!13927))) b!2411884))

(assert (= (and b!2411479 (is-Concat!11716 (regOne!14672 r!13927))) b!2411885))

(assert (= (and b!2411479 (is-Star!7080 (regOne!14672 r!13927))) b!2411886))

(assert (= (and b!2411479 (is-Union!7080 (regOne!14672 r!13927))) b!2411887))

(declare-fun e!1535361 () Bool)

(assert (=> b!2411479 (= tp!767126 e!1535361)))

(declare-fun b!2411888 () Bool)

(assert (=> b!2411888 (= e!1535361 tp_is_empty!11573)))

(declare-fun b!2411889 () Bool)

(declare-fun tp!767176 () Bool)

(declare-fun tp!767178 () Bool)

(assert (=> b!2411889 (= e!1535361 (and tp!767176 tp!767178))))

(declare-fun b!2411890 () Bool)

(declare-fun tp!767179 () Bool)

(assert (=> b!2411890 (= e!1535361 tp!767179)))

(declare-fun b!2411891 () Bool)

(declare-fun tp!767177 () Bool)

(declare-fun tp!767180 () Bool)

(assert (=> b!2411891 (= e!1535361 (and tp!767177 tp!767180))))

(assert (= (and b!2411479 (is-ElementMatch!7080 (regTwo!14672 r!13927))) b!2411888))

(assert (= (and b!2411479 (is-Concat!11716 (regTwo!14672 r!13927))) b!2411889))

(assert (= (and b!2411479 (is-Star!7080 (regTwo!14672 r!13927))) b!2411890))

(assert (= (and b!2411479 (is-Union!7080 (regTwo!14672 r!13927))) b!2411891))

(declare-fun b!2411896 () Bool)

(declare-fun e!1535364 () Bool)

(declare-fun tp!767183 () Bool)

(assert (=> b!2411896 (= e!1535364 (and tp_is_empty!11573 tp!767183))))

(assert (=> b!2411490 (= tp!767131 e!1535364)))

(assert (= (and b!2411490 (is-Cons!28300 (t!208375 s!9460))) b!2411896))

(declare-fun e!1535365 () Bool)

(assert (=> b!2411486 (= tp!767128 e!1535365)))

(declare-fun b!2411897 () Bool)

(assert (=> b!2411897 (= e!1535365 tp_is_empty!11573)))

(declare-fun b!2411898 () Bool)

(declare-fun tp!767184 () Bool)

(declare-fun tp!767186 () Bool)

(assert (=> b!2411898 (= e!1535365 (and tp!767184 tp!767186))))

(declare-fun b!2411899 () Bool)

(declare-fun tp!767187 () Bool)

(assert (=> b!2411899 (= e!1535365 tp!767187)))

(declare-fun b!2411900 () Bool)

(declare-fun tp!767185 () Bool)

(declare-fun tp!767188 () Bool)

(assert (=> b!2411900 (= e!1535365 (and tp!767185 tp!767188))))

(assert (= (and b!2411486 (is-ElementMatch!7080 (regOne!14673 r!13927))) b!2411897))

(assert (= (and b!2411486 (is-Concat!11716 (regOne!14673 r!13927))) b!2411898))

(assert (= (and b!2411486 (is-Star!7080 (regOne!14673 r!13927))) b!2411899))

(assert (= (and b!2411486 (is-Union!7080 (regOne!14673 r!13927))) b!2411900))

(declare-fun e!1535366 () Bool)

(assert (=> b!2411486 (= tp!767130 e!1535366)))

(declare-fun b!2411901 () Bool)

(assert (=> b!2411901 (= e!1535366 tp_is_empty!11573)))

(declare-fun b!2411902 () Bool)

(declare-fun tp!767189 () Bool)

(declare-fun tp!767191 () Bool)

(assert (=> b!2411902 (= e!1535366 (and tp!767189 tp!767191))))

(declare-fun b!2411903 () Bool)

(declare-fun tp!767192 () Bool)

(assert (=> b!2411903 (= e!1535366 tp!767192)))

(declare-fun b!2411904 () Bool)

(declare-fun tp!767190 () Bool)

(declare-fun tp!767193 () Bool)

(assert (=> b!2411904 (= e!1535366 (and tp!767190 tp!767193))))

(assert (= (and b!2411486 (is-ElementMatch!7080 (regTwo!14673 r!13927))) b!2411901))

(assert (= (and b!2411486 (is-Concat!11716 (regTwo!14673 r!13927))) b!2411902))

(assert (= (and b!2411486 (is-Star!7080 (regTwo!14673 r!13927))) b!2411903))

(assert (= (and b!2411486 (is-Union!7080 (regTwo!14673 r!13927))) b!2411904))

(declare-fun e!1535367 () Bool)

(assert (=> b!2411487 (= tp!767124 e!1535367)))

(declare-fun b!2411905 () Bool)

(assert (=> b!2411905 (= e!1535367 tp_is_empty!11573)))

(declare-fun b!2411906 () Bool)

(declare-fun tp!767194 () Bool)

(declare-fun tp!767196 () Bool)

(assert (=> b!2411906 (= e!1535367 (and tp!767194 tp!767196))))

(declare-fun b!2411907 () Bool)

(declare-fun tp!767197 () Bool)

(assert (=> b!2411907 (= e!1535367 tp!767197)))

(declare-fun b!2411908 () Bool)

(declare-fun tp!767195 () Bool)

(declare-fun tp!767198 () Bool)

(assert (=> b!2411908 (= e!1535367 (and tp!767195 tp!767198))))

(assert (= (and b!2411487 (is-ElementMatch!7080 (h!33702 l!9164))) b!2411905))

(assert (= (and b!2411487 (is-Concat!11716 (h!33702 l!9164))) b!2411906))

(assert (= (and b!2411487 (is-Star!7080 (h!33702 l!9164))) b!2411907))

(assert (= (and b!2411487 (is-Union!7080 (h!33702 l!9164))) b!2411908))

(declare-fun b!2411913 () Bool)

(declare-fun e!1535370 () Bool)

(declare-fun tp!767203 () Bool)

(declare-fun tp!767204 () Bool)

(assert (=> b!2411913 (= e!1535370 (and tp!767203 tp!767204))))

(assert (=> b!2411487 (= tp!767125 e!1535370)))

(assert (= (and b!2411487 (is-Cons!28301 (t!208376 l!9164))) b!2411913))

(declare-fun b_lambda!74511 () Bool)

(assert (= b_lambda!74509 (or start!236326 b_lambda!74511)))

(declare-fun bs!463456 () Bool)

(declare-fun d!700747 () Bool)

(assert (= bs!463456 (and d!700747 start!236326)))

(assert (=> bs!463456 (= (dynLambda!12184 lambda!90776 (h!33702 l!9164)) (validRegex!2802 (h!33702 l!9164)))))

(declare-fun m!2802809 () Bool)

(assert (=> bs!463456 m!2802809))

(assert (=> b!2411616 d!700747))

(push 1)

(assert (not b!2411604))

(assert (not b!2411608))

(assert (not b!2411843))

(assert (not d!700711))

(assert (not b!2411826))

(assert (not bm!147266))

(assert (not bm!147276))

(assert (not b!2411887))

(assert (not bs!463456))

(assert (not d!700717))

(assert (not b!2411852))

(assert (not b!2411703))

(assert (not b!2411913))

(assert (not bm!147265))

(assert (not b!2411834))

(assert (not bm!147260))

(assert (not d!700731))

(assert (not b!2411795))

(assert (not b!2411667))

(assert (not b!2411739))

(assert (not b!2411886))

(assert (not b!2411611))

(assert (not b!2411854))

(assert (not b!2411707))

(assert (not b!2411702))

(assert (not b!2411815))

(assert (not b!2411799))

(assert (not b!2411898))

(assert (not b!2411900))

(assert (not b!2411904))

(assert (not b!2411906))

(assert (not b!2411819))

(assert (not b!2411827))

(assert (not b!2411883))

(assert (not b_lambda!74511))

(assert (not b!2411891))

(assert (not bm!147261))

(assert (not b!2411623))

(assert (not b!2411833))

(assert (not b!2411836))

(assert (not b!2411807))

(assert (not b!2411824))

(assert (not d!700713))

(assert (not b!2411624))

(assert (not b!2411881))

(assert (not b!2411764))

(assert (not b!2411908))

(assert (not bm!147277))

(assert (not b!2411793))

(assert (not b!2411610))

(assert (not b!2411848))

(assert (not b!2411631))

(assert (not b!2411603))

(assert (not b!2411907))

(assert tp_is_empty!11573)

(assert (not b!2411890))

(assert (not b!2411797))

(assert (not b!2411832))

(assert (not b!2411829))

(assert (not b!2411705))

(assert (not b!2411835))

(assert (not d!700743))

(assert (not d!700719))

(assert (not b!2411794))

(assert (not d!700705))

(assert (not bm!147271))

(assert (not b!2411617))

(assert (not d!700709))

(assert (not b!2411899))

(assert (not d!700715))

(assert (not b!2411889))

(assert (not b!2411599))

(assert (not b!2411763))

(assert (not b!2411885))

(assert (not b!2411903))

(assert (not b!2411700))

(assert (not b!2411563))

(assert (not b!2411704))

(assert (not b!2411792))

(assert (not b!2411673))

(assert (not d!700725))

(assert (not bm!147279))

(assert (not d!700701))

(assert (not b!2411882))

(assert (not b!2411896))

(assert (not b!2411820))

(assert (not b!2411855))

(assert (not b!2411619))

(assert (not b!2411706))

(assert (not b!2411902))

(assert (not bm!147280))

(assert (not d!700741))

(assert (not bm!147272))

(assert (not b!2411630))

(assert (not b!2411847))

(assert (not b!2411628))

(assert (not b!2411831))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

