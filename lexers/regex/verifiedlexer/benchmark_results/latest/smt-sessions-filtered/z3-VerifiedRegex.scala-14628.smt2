; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756556 () Bool)

(assert start!756556)

(declare-fun b!8031519 () Bool)

(declare-fun e!4731535 () Bool)

(declare-fun tp!2403786 () Bool)

(assert (=> b!8031519 (= e!4731535 tp!2403786)))

(declare-fun b!8031520 () Bool)

(declare-fun res!3176153 () Bool)

(declare-fun e!4731532 () Bool)

(assert (=> b!8031520 (=> (not res!3176153) (not e!4731532))))

(declare-fun e!4731533 () Bool)

(assert (=> b!8031520 (= res!3176153 e!4731533)))

(declare-fun res!3176159 () Bool)

(assert (=> b!8031520 (=> res!3176159 e!4731533)))

(declare-fun lt!2721931 () Bool)

(assert (=> b!8031520 (= res!3176159 (not lt!2721931))))

(declare-fun b!8031521 () Bool)

(declare-fun tp_is_empty!54413 () Bool)

(assert (=> b!8031521 (= e!4731535 tp_is_empty!54413)))

(declare-fun b!8031522 () Bool)

(declare-fun res!3176155 () Bool)

(assert (=> b!8031522 (=> res!3176155 e!4731533)))

(declare-datatypes ((C!43756 0))(
  ( (C!43757 (val!32654 Int)) )
))
(declare-datatypes ((List!75174 0))(
  ( (Nil!75048) (Cons!75048 (h!81496 C!43756) (t!390944 List!75174)) )
))
(declare-fun lt!2721930 () List!75174)

(declare-fun isEmpty!43027 (List!75174) Bool)

(assert (=> b!8031522 (= res!3176155 (not (isEmpty!43027 lt!2721930)))))

(declare-fun b!8031523 () Bool)

(declare-fun input!5983 () List!75174)

(assert (=> b!8031523 (= e!4731532 (= input!5983 Nil!75048))))

(declare-fun b!8031524 () Bool)

(declare-fun res!3176156 () Bool)

(declare-fun e!4731534 () Bool)

(assert (=> b!8031524 (=> (not res!3176156) (not e!4731534))))

(assert (=> b!8031524 (= res!3176156 (not (isEmpty!43027 input!5983)))))

(declare-fun res!3176152 () Bool)

(assert (=> start!756556 (=> (not res!3176152) (not e!4731534))))

(declare-datatypes ((Regex!21709 0))(
  ( (ElementMatch!21709 (c!1473414 C!43756)) (Concat!30712 (regOne!43930 Regex!21709) (regTwo!43930 Regex!21709)) (EmptyExpr!21709) (Star!21709 (reg!22038 Regex!21709)) (EmptyLang!21709) (Union!21709 (regOne!43931 Regex!21709) (regTwo!43931 Regex!21709)) )
))
(declare-fun r!13230 () Regex!21709)

(declare-fun validRegex!12005 (Regex!21709) Bool)

(assert (=> start!756556 (= res!3176152 (validRegex!12005 r!13230))))

(assert (=> start!756556 e!4731534))

(assert (=> start!756556 e!4731535))

(declare-fun e!4731531 () Bool)

(assert (=> start!756556 e!4731531))

(declare-fun b!8031525 () Bool)

(declare-fun tp!2403791 () Bool)

(declare-fun tp!2403787 () Bool)

(assert (=> b!8031525 (= e!4731535 (and tp!2403791 tp!2403787))))

(declare-fun b!8031526 () Bool)

(declare-fun res!3176158 () Bool)

(assert (=> b!8031526 (=> (not res!3176158) (not e!4731532))))

(assert (=> b!8031526 (= res!3176158 (not lt!2721931))))

(declare-fun b!8031527 () Bool)

(declare-fun tp!2403788 () Bool)

(assert (=> b!8031527 (= e!4731531 (and tp_is_empty!54413 tp!2403788))))

(declare-fun b!8031528 () Bool)

(declare-fun res!3176157 () Bool)

(assert (=> b!8031528 (=> (not res!3176157) (not e!4731532))))

(assert (=> b!8031528 (= res!3176157 (isEmpty!43027 lt!2721930))))

(declare-fun b!8031529 () Bool)

(declare-fun lt!2721932 () C!43756)

(assert (=> b!8031529 (= e!4731533 (not (= lt!2721932 (c!1473414 r!13230))))))

(declare-fun b!8031530 () Bool)

(assert (=> b!8031530 (= e!4731534 e!4731532)))

(declare-fun res!3176154 () Bool)

(assert (=> b!8031530 (=> (not res!3176154) (not e!4731532))))

(get-info :version)

(assert (=> b!8031530 (= res!3176154 (and (not ((_ is EmptyExpr!21709) r!13230)) (not ((_ is EmptyLang!21709) r!13230)) ((_ is ElementMatch!21709) r!13230)))))

(declare-fun matchR!10782 (Regex!21709 List!75174) Bool)

(declare-fun derivativeStep!6652 (Regex!21709 C!43756) Regex!21709)

(assert (=> b!8031530 (= lt!2721931 (matchR!10782 (derivativeStep!6652 r!13230 lt!2721932) lt!2721930))))

(declare-fun tail!16056 (List!75174) List!75174)

(assert (=> b!8031530 (= lt!2721930 (tail!16056 input!5983))))

(declare-fun head!16515 (List!75174) C!43756)

(assert (=> b!8031530 (= lt!2721932 (head!16515 input!5983))))

(declare-fun b!8031531 () Bool)

(declare-fun tp!2403790 () Bool)

(declare-fun tp!2403789 () Bool)

(assert (=> b!8031531 (= e!4731535 (and tp!2403790 tp!2403789))))

(assert (= (and start!756556 res!3176152) b!8031524))

(assert (= (and b!8031524 res!3176156) b!8031530))

(assert (= (and b!8031530 res!3176154) b!8031520))

(assert (= (and b!8031520 (not res!3176159)) b!8031522))

(assert (= (and b!8031522 (not res!3176155)) b!8031529))

(assert (= (and b!8031520 res!3176153) b!8031526))

(assert (= (and b!8031526 res!3176158) b!8031528))

(assert (= (and b!8031528 res!3176157) b!8031523))

(assert (= (and start!756556 ((_ is ElementMatch!21709) r!13230)) b!8031521))

(assert (= (and start!756556 ((_ is Concat!30712) r!13230)) b!8031525))

(assert (= (and start!756556 ((_ is Star!21709) r!13230)) b!8031519))

(assert (= (and start!756556 ((_ is Union!21709) r!13230)) b!8031531))

(assert (= (and start!756556 ((_ is Cons!75048) input!5983)) b!8031527))

(declare-fun m!8392320 () Bool)

(assert (=> b!8031524 m!8392320))

(declare-fun m!8392322 () Bool)

(assert (=> b!8031528 m!8392322))

(assert (=> b!8031522 m!8392322))

(declare-fun m!8392324 () Bool)

(assert (=> b!8031530 m!8392324))

(assert (=> b!8031530 m!8392324))

(declare-fun m!8392326 () Bool)

(assert (=> b!8031530 m!8392326))

(declare-fun m!8392328 () Bool)

(assert (=> b!8031530 m!8392328))

(declare-fun m!8392330 () Bool)

(assert (=> b!8031530 m!8392330))

(declare-fun m!8392332 () Bool)

(assert (=> start!756556 m!8392332))

(check-sat (not start!756556) (not b!8031530) (not b!8031522) (not b!8031528) (not b!8031527) (not b!8031524) tp_is_empty!54413 (not b!8031519) (not b!8031531) (not b!8031525))
(check-sat)
(get-model)

(declare-fun d!2394687 () Bool)

(assert (=> d!2394687 (= (isEmpty!43027 input!5983) ((_ is Nil!75048) input!5983))))

(assert (=> b!8031524 d!2394687))

(declare-fun d!2394689 () Bool)

(assert (=> d!2394689 (= (isEmpty!43027 lt!2721930) ((_ is Nil!75048) lt!2721930))))

(assert (=> b!8031522 d!2394689))

(assert (=> b!8031528 d!2394689))

(declare-fun d!2394691 () Bool)

(declare-fun e!4731571 () Bool)

(assert (=> d!2394691 e!4731571))

(declare-fun c!1473427 () Bool)

(assert (=> d!2394691 (= c!1473427 ((_ is EmptyExpr!21709) (derivativeStep!6652 r!13230 lt!2721932)))))

(declare-fun lt!2721935 () Bool)

(declare-fun e!4731576 () Bool)

(assert (=> d!2394691 (= lt!2721935 e!4731576)))

(declare-fun c!1473429 () Bool)

(assert (=> d!2394691 (= c!1473429 (isEmpty!43027 lt!2721930))))

(assert (=> d!2394691 (validRegex!12005 (derivativeStep!6652 r!13230 lt!2721932))))

(assert (=> d!2394691 (= (matchR!10782 (derivativeStep!6652 r!13230 lt!2721932) lt!2721930) lt!2721935)))

(declare-fun b!8031587 () Bool)

(declare-fun res!3176198 () Bool)

(declare-fun e!4731573 () Bool)

(assert (=> b!8031587 (=> res!3176198 e!4731573)))

(assert (=> b!8031587 (= res!3176198 (not (isEmpty!43027 (tail!16056 lt!2721930))))))

(declare-fun b!8031588 () Bool)

(declare-fun res!3176194 () Bool)

(declare-fun e!4731574 () Bool)

(assert (=> b!8031588 (=> (not res!3176194) (not e!4731574))))

(assert (=> b!8031588 (= res!3176194 (isEmpty!43027 (tail!16056 lt!2721930)))))

(declare-fun b!8031589 () Bool)

(declare-fun res!3176193 () Bool)

(assert (=> b!8031589 (=> (not res!3176193) (not e!4731574))))

(declare-fun call!745028 () Bool)

(assert (=> b!8031589 (= res!3176193 (not call!745028))))

(declare-fun b!8031590 () Bool)

(declare-fun e!4731577 () Bool)

(declare-fun e!4731575 () Bool)

(assert (=> b!8031590 (= e!4731577 e!4731575)))

(declare-fun res!3176191 () Bool)

(assert (=> b!8031590 (=> (not res!3176191) (not e!4731575))))

(assert (=> b!8031590 (= res!3176191 (not lt!2721935))))

(declare-fun b!8031591 () Bool)

(declare-fun res!3176196 () Bool)

(assert (=> b!8031591 (=> res!3176196 e!4731577)))

(assert (=> b!8031591 (= res!3176196 e!4731574)))

(declare-fun res!3176192 () Bool)

(assert (=> b!8031591 (=> (not res!3176192) (not e!4731574))))

(assert (=> b!8031591 (= res!3176192 lt!2721935)))

(declare-fun b!8031592 () Bool)

(assert (=> b!8031592 (= e!4731573 (not (= (head!16515 lt!2721930) (c!1473414 (derivativeStep!6652 r!13230 lt!2721932)))))))

(declare-fun b!8031593 () Bool)

(declare-fun e!4731572 () Bool)

(assert (=> b!8031593 (= e!4731572 (not lt!2721935))))

(declare-fun b!8031594 () Bool)

(declare-fun res!3176197 () Bool)

(assert (=> b!8031594 (=> res!3176197 e!4731577)))

(assert (=> b!8031594 (= res!3176197 (not ((_ is ElementMatch!21709) (derivativeStep!6652 r!13230 lt!2721932))))))

(assert (=> b!8031594 (= e!4731572 e!4731577)))

(declare-fun b!8031595 () Bool)

(declare-fun nullable!9741 (Regex!21709) Bool)

(assert (=> b!8031595 (= e!4731576 (nullable!9741 (derivativeStep!6652 r!13230 lt!2721932)))))

(declare-fun b!8031596 () Bool)

(assert (=> b!8031596 (= e!4731574 (= (head!16515 lt!2721930) (c!1473414 (derivativeStep!6652 r!13230 lt!2721932))))))

(declare-fun b!8031597 () Bool)

(assert (=> b!8031597 (= e!4731571 e!4731572)))

(declare-fun c!1473428 () Bool)

(assert (=> b!8031597 (= c!1473428 ((_ is EmptyLang!21709) (derivativeStep!6652 r!13230 lt!2721932)))))

(declare-fun b!8031598 () Bool)

(assert (=> b!8031598 (= e!4731575 e!4731573)))

(declare-fun res!3176195 () Bool)

(assert (=> b!8031598 (=> res!3176195 e!4731573)))

(assert (=> b!8031598 (= res!3176195 call!745028)))

(declare-fun b!8031599 () Bool)

(assert (=> b!8031599 (= e!4731576 (matchR!10782 (derivativeStep!6652 (derivativeStep!6652 r!13230 lt!2721932) (head!16515 lt!2721930)) (tail!16056 lt!2721930)))))

(declare-fun bm!745023 () Bool)

(assert (=> bm!745023 (= call!745028 (isEmpty!43027 lt!2721930))))

(declare-fun b!8031600 () Bool)

(assert (=> b!8031600 (= e!4731571 (= lt!2721935 call!745028))))

(assert (= (and d!2394691 c!1473429) b!8031595))

(assert (= (and d!2394691 (not c!1473429)) b!8031599))

(assert (= (and d!2394691 c!1473427) b!8031600))

(assert (= (and d!2394691 (not c!1473427)) b!8031597))

(assert (= (and b!8031597 c!1473428) b!8031593))

(assert (= (and b!8031597 (not c!1473428)) b!8031594))

(assert (= (and b!8031594 (not res!3176197)) b!8031591))

(assert (= (and b!8031591 res!3176192) b!8031589))

(assert (= (and b!8031589 res!3176193) b!8031588))

(assert (= (and b!8031588 res!3176194) b!8031596))

(assert (= (and b!8031591 (not res!3176196)) b!8031590))

(assert (= (and b!8031590 res!3176191) b!8031598))

(assert (= (and b!8031598 (not res!3176195)) b!8031587))

(assert (= (and b!8031587 (not res!3176198)) b!8031592))

(assert (= (or b!8031600 b!8031589 b!8031598) bm!745023))

(assert (=> bm!745023 m!8392322))

(declare-fun m!8392340 () Bool)

(assert (=> b!8031596 m!8392340))

(declare-fun m!8392342 () Bool)

(assert (=> b!8031588 m!8392342))

(assert (=> b!8031588 m!8392342))

(declare-fun m!8392344 () Bool)

(assert (=> b!8031588 m!8392344))

(assert (=> b!8031599 m!8392340))

(assert (=> b!8031599 m!8392324))

(assert (=> b!8031599 m!8392340))

(declare-fun m!8392346 () Bool)

(assert (=> b!8031599 m!8392346))

(assert (=> b!8031599 m!8392342))

(assert (=> b!8031599 m!8392346))

(assert (=> b!8031599 m!8392342))

(declare-fun m!8392348 () Bool)

(assert (=> b!8031599 m!8392348))

(assert (=> b!8031592 m!8392340))

(assert (=> d!2394691 m!8392322))

(assert (=> d!2394691 m!8392324))

(declare-fun m!8392350 () Bool)

(assert (=> d!2394691 m!8392350))

(assert (=> b!8031587 m!8392342))

(assert (=> b!8031587 m!8392342))

(assert (=> b!8031587 m!8392344))

(assert (=> b!8031595 m!8392324))

(declare-fun m!8392352 () Bool)

(assert (=> b!8031595 m!8392352))

(assert (=> b!8031530 d!2394691))

(declare-fun b!8031663 () Bool)

(declare-fun call!745040 () Regex!21709)

(declare-fun e!4731610 () Regex!21709)

(declare-fun call!745041 () Regex!21709)

(assert (=> b!8031663 (= e!4731610 (Union!21709 (Concat!30712 call!745041 (regTwo!43930 r!13230)) call!745040))))

(declare-fun b!8031664 () Bool)

(declare-fun e!4731609 () Regex!21709)

(declare-fun call!745042 () Regex!21709)

(assert (=> b!8031664 (= e!4731609 (Union!21709 call!745042 call!745040))))

(declare-fun b!8031665 () Bool)

(declare-fun c!1473453 () Bool)

(assert (=> b!8031665 (= c!1473453 (nullable!9741 (regOne!43930 r!13230)))))

(declare-fun e!4731611 () Regex!21709)

(assert (=> b!8031665 (= e!4731611 e!4731610)))

(declare-fun b!8031666 () Bool)

(declare-fun e!4731612 () Regex!21709)

(declare-fun e!4731613 () Regex!21709)

(assert (=> b!8031666 (= e!4731612 e!4731613)))

(declare-fun c!1473449 () Bool)

(assert (=> b!8031666 (= c!1473449 ((_ is ElementMatch!21709) r!13230))))

(declare-fun b!8031667 () Bool)

(declare-fun call!745043 () Regex!21709)

(assert (=> b!8031667 (= e!4731611 (Concat!30712 call!745043 r!13230))))

(declare-fun b!8031668 () Bool)

(declare-fun c!1473451 () Bool)

(assert (=> b!8031668 (= c!1473451 ((_ is Union!21709) r!13230))))

(assert (=> b!8031668 (= e!4731613 e!4731609)))

(declare-fun b!8031669 () Bool)

(assert (=> b!8031669 (= e!4731612 EmptyLang!21709)))

(declare-fun b!8031670 () Bool)

(assert (=> b!8031670 (= e!4731610 (Union!21709 (Concat!30712 call!745041 (regTwo!43930 r!13230)) EmptyLang!21709))))

(declare-fun c!1473450 () Bool)

(declare-fun bm!745036 () Bool)

(assert (=> bm!745036 (= call!745042 (derivativeStep!6652 (ite c!1473451 (regOne!43931 r!13230) (ite c!1473450 (reg!22038 r!13230) (regOne!43930 r!13230))) lt!2721932))))

(declare-fun bm!745037 () Bool)

(assert (=> bm!745037 (= call!745040 (derivativeStep!6652 (ite c!1473451 (regTwo!43931 r!13230) (regTwo!43930 r!13230)) lt!2721932))))

(declare-fun bm!745038 () Bool)

(assert (=> bm!745038 (= call!745043 call!745042)))

(declare-fun b!8031671 () Bool)

(assert (=> b!8031671 (= e!4731609 e!4731611)))

(assert (=> b!8031671 (= c!1473450 ((_ is Star!21709) r!13230))))

(declare-fun b!8031672 () Bool)

(assert (=> b!8031672 (= e!4731613 (ite (= lt!2721932 (c!1473414 r!13230)) EmptyExpr!21709 EmptyLang!21709))))

(declare-fun d!2394701 () Bool)

(declare-fun lt!2721941 () Regex!21709)

(assert (=> d!2394701 (validRegex!12005 lt!2721941)))

(assert (=> d!2394701 (= lt!2721941 e!4731612)))

(declare-fun c!1473452 () Bool)

(assert (=> d!2394701 (= c!1473452 (or ((_ is EmptyExpr!21709) r!13230) ((_ is EmptyLang!21709) r!13230)))))

(assert (=> d!2394701 (validRegex!12005 r!13230)))

(assert (=> d!2394701 (= (derivativeStep!6652 r!13230 lt!2721932) lt!2721941)))

(declare-fun bm!745035 () Bool)

(assert (=> bm!745035 (= call!745041 call!745043)))

(assert (= (and d!2394701 c!1473452) b!8031669))

(assert (= (and d!2394701 (not c!1473452)) b!8031666))

(assert (= (and b!8031666 c!1473449) b!8031672))

(assert (= (and b!8031666 (not c!1473449)) b!8031668))

(assert (= (and b!8031668 c!1473451) b!8031664))

(assert (= (and b!8031668 (not c!1473451)) b!8031671))

(assert (= (and b!8031671 c!1473450) b!8031667))

(assert (= (and b!8031671 (not c!1473450)) b!8031665))

(assert (= (and b!8031665 c!1473453) b!8031663))

(assert (= (and b!8031665 (not c!1473453)) b!8031670))

(assert (= (or b!8031663 b!8031670) bm!745035))

(assert (= (or b!8031667 bm!745035) bm!745038))

(assert (= (or b!8031664 b!8031663) bm!745037))

(assert (= (or b!8031664 bm!745038) bm!745036))

(declare-fun m!8392368 () Bool)

(assert (=> b!8031665 m!8392368))

(declare-fun m!8392370 () Bool)

(assert (=> bm!745036 m!8392370))

(declare-fun m!8392372 () Bool)

(assert (=> bm!745037 m!8392372))

(declare-fun m!8392374 () Bool)

(assert (=> d!2394701 m!8392374))

(assert (=> d!2394701 m!8392332))

(assert (=> b!8031530 d!2394701))

(declare-fun d!2394705 () Bool)

(assert (=> d!2394705 (= (tail!16056 input!5983) (t!390944 input!5983))))

(assert (=> b!8031530 d!2394705))

(declare-fun d!2394707 () Bool)

(assert (=> d!2394707 (= (head!16515 input!5983) (h!81496 input!5983))))

(assert (=> b!8031530 d!2394707))

(declare-fun b!8031711 () Bool)

(declare-fun e!4731638 () Bool)

(declare-fun e!4731640 () Bool)

(assert (=> b!8031711 (= e!4731638 e!4731640)))

(declare-fun c!1473469 () Bool)

(assert (=> b!8031711 (= c!1473469 ((_ is Union!21709) r!13230))))

(declare-fun b!8031712 () Bool)

(declare-fun e!4731641 () Bool)

(declare-fun call!745058 () Bool)

(assert (=> b!8031712 (= e!4731641 call!745058)))

(declare-fun b!8031713 () Bool)

(declare-fun e!4731639 () Bool)

(declare-fun e!4731644 () Bool)

(assert (=> b!8031713 (= e!4731639 e!4731644)))

(declare-fun res!3176234 () Bool)

(assert (=> b!8031713 (=> (not res!3176234) (not e!4731644))))

(declare-fun call!745059 () Bool)

(assert (=> b!8031713 (= res!3176234 call!745059)))

(declare-fun b!8031714 () Bool)

(declare-fun res!3176237 () Bool)

(assert (=> b!8031714 (=> res!3176237 e!4731639)))

(assert (=> b!8031714 (= res!3176237 (not ((_ is Concat!30712) r!13230)))))

(assert (=> b!8031714 (= e!4731640 e!4731639)))

(declare-fun bm!745053 () Bool)

(assert (=> bm!745053 (= call!745059 (validRegex!12005 (ite c!1473469 (regOne!43931 r!13230) (regOne!43930 r!13230))))))

(declare-fun b!8031715 () Bool)

(declare-fun e!4731642 () Bool)

(assert (=> b!8031715 (= e!4731642 e!4731638)))

(declare-fun c!1473468 () Bool)

(assert (=> b!8031715 (= c!1473468 ((_ is Star!21709) r!13230))))

(declare-fun b!8031716 () Bool)

(assert (=> b!8031716 (= e!4731644 call!745058)))

(declare-fun b!8031717 () Bool)

(declare-fun e!4731643 () Bool)

(declare-fun call!745060 () Bool)

(assert (=> b!8031717 (= e!4731643 call!745060)))

(declare-fun d!2394709 () Bool)

(declare-fun res!3176233 () Bool)

(assert (=> d!2394709 (=> res!3176233 e!4731642)))

(assert (=> d!2394709 (= res!3176233 ((_ is ElementMatch!21709) r!13230))))

(assert (=> d!2394709 (= (validRegex!12005 r!13230) e!4731642)))

(declare-fun b!8031718 () Bool)

(assert (=> b!8031718 (= e!4731638 e!4731643)))

(declare-fun res!3176235 () Bool)

(assert (=> b!8031718 (= res!3176235 (not (nullable!9741 (reg!22038 r!13230))))))

(assert (=> b!8031718 (=> (not res!3176235) (not e!4731643))))

(declare-fun bm!745054 () Bool)

(assert (=> bm!745054 (= call!745060 (validRegex!12005 (ite c!1473468 (reg!22038 r!13230) (ite c!1473469 (regTwo!43931 r!13230) (regTwo!43930 r!13230)))))))

(declare-fun b!8031719 () Bool)

(declare-fun res!3176236 () Bool)

(assert (=> b!8031719 (=> (not res!3176236) (not e!4731641))))

(assert (=> b!8031719 (= res!3176236 call!745059)))

(assert (=> b!8031719 (= e!4731640 e!4731641)))

(declare-fun bm!745055 () Bool)

(assert (=> bm!745055 (= call!745058 call!745060)))

(assert (= (and d!2394709 (not res!3176233)) b!8031715))

(assert (= (and b!8031715 c!1473468) b!8031718))

(assert (= (and b!8031715 (not c!1473468)) b!8031711))

(assert (= (and b!8031718 res!3176235) b!8031717))

(assert (= (and b!8031711 c!1473469) b!8031719))

(assert (= (and b!8031711 (not c!1473469)) b!8031714))

(assert (= (and b!8031719 res!3176236) b!8031712))

(assert (= (and b!8031714 (not res!3176237)) b!8031713))

(assert (= (and b!8031713 res!3176234) b!8031716))

(assert (= (or b!8031719 b!8031713) bm!745053))

(assert (= (or b!8031712 b!8031716) bm!745055))

(assert (= (or b!8031717 bm!745055) bm!745054))

(declare-fun m!8392376 () Bool)

(assert (=> bm!745053 m!8392376))

(declare-fun m!8392378 () Bool)

(assert (=> b!8031718 m!8392378))

(declare-fun m!8392380 () Bool)

(assert (=> bm!745054 m!8392380))

(assert (=> start!756556 d!2394709))

(declare-fun b!8031724 () Bool)

(declare-fun e!4731647 () Bool)

(declare-fun tp!2403794 () Bool)

(assert (=> b!8031724 (= e!4731647 (and tp_is_empty!54413 tp!2403794))))

(assert (=> b!8031527 (= tp!2403788 e!4731647)))

(assert (= (and b!8031527 ((_ is Cons!75048) (t!390944 input!5983))) b!8031724))

(declare-fun e!4731650 () Bool)

(assert (=> b!8031531 (= tp!2403790 e!4731650)))

(declare-fun b!8031738 () Bool)

(declare-fun tp!2403807 () Bool)

(declare-fun tp!2403808 () Bool)

(assert (=> b!8031738 (= e!4731650 (and tp!2403807 tp!2403808))))

(declare-fun b!8031737 () Bool)

(declare-fun tp!2403809 () Bool)

(assert (=> b!8031737 (= e!4731650 tp!2403809)))

(declare-fun b!8031736 () Bool)

(declare-fun tp!2403805 () Bool)

(declare-fun tp!2403806 () Bool)

(assert (=> b!8031736 (= e!4731650 (and tp!2403805 tp!2403806))))

(declare-fun b!8031735 () Bool)

(assert (=> b!8031735 (= e!4731650 tp_is_empty!54413)))

(assert (= (and b!8031531 ((_ is ElementMatch!21709) (regOne!43931 r!13230))) b!8031735))

(assert (= (and b!8031531 ((_ is Concat!30712) (regOne!43931 r!13230))) b!8031736))

(assert (= (and b!8031531 ((_ is Star!21709) (regOne!43931 r!13230))) b!8031737))

(assert (= (and b!8031531 ((_ is Union!21709) (regOne!43931 r!13230))) b!8031738))

(declare-fun e!4731651 () Bool)

(assert (=> b!8031531 (= tp!2403789 e!4731651)))

(declare-fun b!8031742 () Bool)

(declare-fun tp!2403812 () Bool)

(declare-fun tp!2403813 () Bool)

(assert (=> b!8031742 (= e!4731651 (and tp!2403812 tp!2403813))))

(declare-fun b!8031741 () Bool)

(declare-fun tp!2403814 () Bool)

(assert (=> b!8031741 (= e!4731651 tp!2403814)))

(declare-fun b!8031740 () Bool)

(declare-fun tp!2403810 () Bool)

(declare-fun tp!2403811 () Bool)

(assert (=> b!8031740 (= e!4731651 (and tp!2403810 tp!2403811))))

(declare-fun b!8031739 () Bool)

(assert (=> b!8031739 (= e!4731651 tp_is_empty!54413)))

(assert (= (and b!8031531 ((_ is ElementMatch!21709) (regTwo!43931 r!13230))) b!8031739))

(assert (= (and b!8031531 ((_ is Concat!30712) (regTwo!43931 r!13230))) b!8031740))

(assert (= (and b!8031531 ((_ is Star!21709) (regTwo!43931 r!13230))) b!8031741))

(assert (= (and b!8031531 ((_ is Union!21709) (regTwo!43931 r!13230))) b!8031742))

(declare-fun e!4731652 () Bool)

(assert (=> b!8031519 (= tp!2403786 e!4731652)))

(declare-fun b!8031746 () Bool)

(declare-fun tp!2403817 () Bool)

(declare-fun tp!2403818 () Bool)

(assert (=> b!8031746 (= e!4731652 (and tp!2403817 tp!2403818))))

(declare-fun b!8031745 () Bool)

(declare-fun tp!2403819 () Bool)

(assert (=> b!8031745 (= e!4731652 tp!2403819)))

(declare-fun b!8031744 () Bool)

(declare-fun tp!2403815 () Bool)

(declare-fun tp!2403816 () Bool)

(assert (=> b!8031744 (= e!4731652 (and tp!2403815 tp!2403816))))

(declare-fun b!8031743 () Bool)

(assert (=> b!8031743 (= e!4731652 tp_is_empty!54413)))

(assert (= (and b!8031519 ((_ is ElementMatch!21709) (reg!22038 r!13230))) b!8031743))

(assert (= (and b!8031519 ((_ is Concat!30712) (reg!22038 r!13230))) b!8031744))

(assert (= (and b!8031519 ((_ is Star!21709) (reg!22038 r!13230))) b!8031745))

(assert (= (and b!8031519 ((_ is Union!21709) (reg!22038 r!13230))) b!8031746))

(declare-fun e!4731653 () Bool)

(assert (=> b!8031525 (= tp!2403791 e!4731653)))

(declare-fun b!8031750 () Bool)

(declare-fun tp!2403822 () Bool)

(declare-fun tp!2403823 () Bool)

(assert (=> b!8031750 (= e!4731653 (and tp!2403822 tp!2403823))))

(declare-fun b!8031749 () Bool)

(declare-fun tp!2403824 () Bool)

(assert (=> b!8031749 (= e!4731653 tp!2403824)))

(declare-fun b!8031748 () Bool)

(declare-fun tp!2403820 () Bool)

(declare-fun tp!2403821 () Bool)

(assert (=> b!8031748 (= e!4731653 (and tp!2403820 tp!2403821))))

(declare-fun b!8031747 () Bool)

(assert (=> b!8031747 (= e!4731653 tp_is_empty!54413)))

(assert (= (and b!8031525 ((_ is ElementMatch!21709) (regOne!43930 r!13230))) b!8031747))

(assert (= (and b!8031525 ((_ is Concat!30712) (regOne!43930 r!13230))) b!8031748))

(assert (= (and b!8031525 ((_ is Star!21709) (regOne!43930 r!13230))) b!8031749))

(assert (= (and b!8031525 ((_ is Union!21709) (regOne!43930 r!13230))) b!8031750))

(declare-fun e!4731654 () Bool)

(assert (=> b!8031525 (= tp!2403787 e!4731654)))

(declare-fun b!8031754 () Bool)

(declare-fun tp!2403827 () Bool)

(declare-fun tp!2403828 () Bool)

(assert (=> b!8031754 (= e!4731654 (and tp!2403827 tp!2403828))))

(declare-fun b!8031753 () Bool)

(declare-fun tp!2403829 () Bool)

(assert (=> b!8031753 (= e!4731654 tp!2403829)))

(declare-fun b!8031752 () Bool)

(declare-fun tp!2403825 () Bool)

(declare-fun tp!2403826 () Bool)

(assert (=> b!8031752 (= e!4731654 (and tp!2403825 tp!2403826))))

(declare-fun b!8031751 () Bool)

(assert (=> b!8031751 (= e!4731654 tp_is_empty!54413)))

(assert (= (and b!8031525 ((_ is ElementMatch!21709) (regTwo!43930 r!13230))) b!8031751))

(assert (= (and b!8031525 ((_ is Concat!30712) (regTwo!43930 r!13230))) b!8031752))

(assert (= (and b!8031525 ((_ is Star!21709) (regTwo!43930 r!13230))) b!8031753))

(assert (= (and b!8031525 ((_ is Union!21709) (regTwo!43930 r!13230))) b!8031754))

(check-sat (not bm!745053) (not d!2394701) (not b!8031737) (not d!2394691) (not b!8031665) (not b!8031753) (not b!8031724) (not bm!745054) (not b!8031749) (not b!8031587) (not bm!745036) (not b!8031592) (not b!8031746) (not b!8031596) (not b!8031745) (not b!8031588) (not b!8031744) tp_is_empty!54413 (not b!8031595) (not b!8031752) (not b!8031599) (not b!8031742) (not b!8031738) (not b!8031718) (not b!8031754) (not b!8031736) (not b!8031748) (not bm!745037) (not b!8031740) (not bm!745023) (not b!8031750) (not b!8031741))
(check-sat)
