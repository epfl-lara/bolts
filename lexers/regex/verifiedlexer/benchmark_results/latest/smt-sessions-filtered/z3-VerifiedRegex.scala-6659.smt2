; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350234 () Bool)

(assert start!350234)

(declare-fun b!3717148 () Bool)

(declare-fun e!2301501 () Bool)

(declare-datatypes ((C!21900 0))(
  ( (C!21901 (val!12998 Int)) )
))
(declare-datatypes ((Regex!10857 0))(
  ( (ElementMatch!10857 (c!642561 C!21900)) (Concat!17128 (regOne!22226 Regex!10857) (regTwo!22226 Regex!10857)) (EmptyExpr!10857) (Star!10857 (reg!11186 Regex!10857)) (EmptyLang!10857) (Union!10857 (regOne!22227 Regex!10857) (regTwo!22227 Regex!10857)) )
))
(declare-fun lt!1297539 () Regex!10857)

(declare-datatypes ((List!39738 0))(
  ( (Nil!39614) (Cons!39614 (h!45034 C!21900) (t!302421 List!39738)) )
))
(declare-fun tl!3933 () List!39738)

(declare-fun matchR!5302 (Regex!10857 List!39738) Bool)

(assert (=> b!3717148 (= e!2301501 (matchR!5302 lt!1297539 tl!3933))))

(declare-fun b!3717149 () Bool)

(declare-fun e!2301502 () Bool)

(declare-fun tp!1130872 () Bool)

(declare-fun tp!1130869 () Bool)

(assert (=> b!3717149 (= e!2301502 (and tp!1130872 tp!1130869))))

(declare-fun b!3717150 () Bool)

(declare-fun tp!1130871 () Bool)

(declare-fun tp!1130868 () Bool)

(assert (=> b!3717150 (= e!2301502 (and tp!1130871 tp!1130868))))

(declare-fun b!3717151 () Bool)

(declare-fun e!2301497 () Bool)

(declare-fun e!2301499 () Bool)

(assert (=> b!3717151 (= e!2301497 e!2301499)))

(declare-fun res!1511030 () Bool)

(assert (=> b!3717151 (=> res!1511030 e!2301499)))

(declare-fun r!26326 () Regex!10857)

(declare-fun validRegex!4964 (Regex!10857) Bool)

(assert (=> b!3717151 (= res!1511030 (not (validRegex!4964 (regTwo!22226 r!26326))))))

(declare-fun lt!1297544 () Regex!10857)

(assert (=> b!3717151 (= (matchR!5302 lt!1297539 tl!3933) (matchR!5302 lt!1297544 Nil!39614))))

(declare-fun derivative!371 (Regex!10857 List!39738) Regex!10857)

(assert (=> b!3717151 (= lt!1297544 (derivative!371 lt!1297539 tl!3933))))

(declare-datatypes ((Unit!57512 0))(
  ( (Unit!57513) )
))
(declare-fun lt!1297543 () Unit!57512)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!248 (Regex!10857 List!39738) Unit!57512)

(assert (=> b!3717151 (= lt!1297543 (lemmaMatchRIsSameAsWholeDerivativeAndNil!248 lt!1297539 tl!3933))))

(declare-fun b!3717152 () Bool)

(declare-fun res!1511032 () Bool)

(assert (=> b!3717152 (=> res!1511032 e!2301499)))

(declare-fun nullable!3780 (Regex!10857) Bool)

(assert (=> b!3717152 (= res!1511032 (not (nullable!3780 lt!1297544)))))

(declare-fun res!1511028 () Bool)

(declare-fun e!2301498 () Bool)

(assert (=> start!350234 (=> (not res!1511028) (not e!2301498))))

(assert (=> start!350234 (= res!1511028 (validRegex!4964 r!26326))))

(assert (=> start!350234 e!2301498))

(assert (=> start!350234 e!2301502))

(declare-fun tp_is_empty!18729 () Bool)

(assert (=> start!350234 tp_is_empty!18729))

(declare-fun e!2301500 () Bool)

(assert (=> start!350234 e!2301500))

(declare-fun b!3717153 () Bool)

(declare-fun tp!1130870 () Bool)

(assert (=> b!3717153 (= e!2301500 (and tp_is_empty!18729 tp!1130870))))

(declare-fun b!3717154 () Bool)

(declare-fun c!13576 () C!21900)

(declare-fun contains!7950 (List!39738 C!21900) Bool)

(declare-fun usedCharacters!1120 (Regex!10857) List!39738)

(assert (=> b!3717154 (= e!2301499 (contains!7950 (usedCharacters!1120 r!26326) c!13576))))

(assert (=> b!3717154 (contains!7950 (usedCharacters!1120 (regTwo!22226 r!26326)) c!13576)))

(declare-fun lt!1297540 () Unit!57512)

(declare-fun lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!14 (Regex!10857 C!21900 List!39738) Unit!57512)

(assert (=> b!3717154 (= lt!1297540 (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!14 (regTwo!22226 r!26326) c!13576 tl!3933))))

(declare-fun b!3717155 () Bool)

(assert (=> b!3717155 (= e!2301498 (not e!2301497))))

(declare-fun res!1511033 () Bool)

(assert (=> b!3717155 (=> res!1511033 e!2301497)))

(declare-fun lt!1297541 () Bool)

(assert (=> b!3717155 (= res!1511033 lt!1297541)))

(assert (=> b!3717155 e!2301501))

(declare-fun res!1511029 () Bool)

(assert (=> b!3717155 (=> res!1511029 e!2301501)))

(assert (=> b!3717155 (= res!1511029 lt!1297541)))

(declare-fun lt!1297545 () Regex!10857)

(assert (=> b!3717155 (= lt!1297541 (matchR!5302 lt!1297545 tl!3933))))

(declare-fun lt!1297546 () Unit!57512)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!334 (Regex!10857 Regex!10857 List!39738) Unit!57512)

(assert (=> b!3717155 (= lt!1297546 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!334 lt!1297545 lt!1297539 tl!3933))))

(declare-fun lt!1297542 () Regex!10857)

(assert (=> b!3717155 (= (matchR!5302 lt!1297542 tl!3933) (matchR!5302 (derivative!371 lt!1297542 tl!3933) Nil!39614))))

(declare-fun lt!1297538 () Unit!57512)

(assert (=> b!3717155 (= lt!1297538 (lemmaMatchRIsSameAsWholeDerivativeAndNil!248 lt!1297542 tl!3933))))

(assert (=> b!3717155 (= lt!1297542 (Union!10857 lt!1297545 lt!1297539))))

(declare-fun derivativeStep!3322 (Regex!10857 C!21900) Regex!10857)

(assert (=> b!3717155 (= lt!1297539 (derivativeStep!3322 (regTwo!22226 r!26326) c!13576))))

(assert (=> b!3717155 (= lt!1297545 (Concat!17128 (derivativeStep!3322 (regOne!22226 r!26326) c!13576) (regTwo!22226 r!26326)))))

(declare-fun b!3717156 () Bool)

(declare-fun res!1511027 () Bool)

(assert (=> b!3717156 (=> (not res!1511027) (not e!2301498))))

(get-info :version)

(assert (=> b!3717156 (= res!1511027 (and (not ((_ is EmptyExpr!10857) r!26326)) (not ((_ is EmptyLang!10857) r!26326)) (not ((_ is ElementMatch!10857) r!26326)) (not ((_ is Union!10857) r!26326)) (not ((_ is Star!10857) r!26326))))))

(declare-fun b!3717157 () Bool)

(declare-fun tp!1130867 () Bool)

(assert (=> b!3717157 (= e!2301502 tp!1130867)))

(declare-fun b!3717158 () Bool)

(assert (=> b!3717158 (= e!2301502 tp_is_empty!18729)))

(declare-fun b!3717159 () Bool)

(declare-fun res!1511031 () Bool)

(assert (=> b!3717159 (=> (not res!1511031) (not e!2301498))))

(assert (=> b!3717159 (= res!1511031 (nullable!3780 (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933)))))

(declare-fun b!3717160 () Bool)

(declare-fun res!1511034 () Bool)

(assert (=> b!3717160 (=> (not res!1511034) (not e!2301498))))

(assert (=> b!3717160 (= res!1511034 (nullable!3780 (regOne!22226 r!26326)))))

(assert (= (and start!350234 res!1511028) b!3717159))

(assert (= (and b!3717159 res!1511031) b!3717156))

(assert (= (and b!3717156 res!1511027) b!3717160))

(assert (= (and b!3717160 res!1511034) b!3717155))

(assert (= (and b!3717155 (not res!1511029)) b!3717148))

(assert (= (and b!3717155 (not res!1511033)) b!3717151))

(assert (= (and b!3717151 (not res!1511030)) b!3717152))

(assert (= (and b!3717152 (not res!1511032)) b!3717154))

(assert (= (and start!350234 ((_ is ElementMatch!10857) r!26326)) b!3717158))

(assert (= (and start!350234 ((_ is Concat!17128) r!26326)) b!3717149))

(assert (= (and start!350234 ((_ is Star!10857) r!26326)) b!3717157))

(assert (= (and start!350234 ((_ is Union!10857) r!26326)) b!3717150))

(assert (= (and start!350234 ((_ is Cons!39614) tl!3933)) b!3717153))

(declare-fun m!4222589 () Bool)

(assert (=> b!3717160 m!4222589))

(declare-fun m!4222591 () Bool)

(assert (=> b!3717155 m!4222591))

(declare-fun m!4222593 () Bool)

(assert (=> b!3717155 m!4222593))

(declare-fun m!4222595 () Bool)

(assert (=> b!3717155 m!4222595))

(declare-fun m!4222597 () Bool)

(assert (=> b!3717155 m!4222597))

(declare-fun m!4222599 () Bool)

(assert (=> b!3717155 m!4222599))

(declare-fun m!4222601 () Bool)

(assert (=> b!3717155 m!4222601))

(declare-fun m!4222603 () Bool)

(assert (=> b!3717155 m!4222603))

(assert (=> b!3717155 m!4222603))

(declare-fun m!4222605 () Bool)

(assert (=> b!3717155 m!4222605))

(declare-fun m!4222607 () Bool)

(assert (=> b!3717152 m!4222607))

(declare-fun m!4222609 () Bool)

(assert (=> start!350234 m!4222609))

(declare-fun m!4222611 () Bool)

(assert (=> b!3717148 m!4222611))

(declare-fun m!4222613 () Bool)

(assert (=> b!3717154 m!4222613))

(declare-fun m!4222615 () Bool)

(assert (=> b!3717154 m!4222615))

(declare-fun m!4222617 () Bool)

(assert (=> b!3717154 m!4222617))

(declare-fun m!4222619 () Bool)

(assert (=> b!3717154 m!4222619))

(assert (=> b!3717154 m!4222619))

(declare-fun m!4222621 () Bool)

(assert (=> b!3717154 m!4222621))

(assert (=> b!3717154 m!4222615))

(declare-fun m!4222623 () Bool)

(assert (=> b!3717159 m!4222623))

(assert (=> b!3717159 m!4222623))

(declare-fun m!4222625 () Bool)

(assert (=> b!3717159 m!4222625))

(assert (=> b!3717159 m!4222625))

(declare-fun m!4222627 () Bool)

(assert (=> b!3717159 m!4222627))

(declare-fun m!4222629 () Bool)

(assert (=> b!3717151 m!4222629))

(declare-fun m!4222631 () Bool)

(assert (=> b!3717151 m!4222631))

(declare-fun m!4222633 () Bool)

(assert (=> b!3717151 m!4222633))

(declare-fun m!4222635 () Bool)

(assert (=> b!3717151 m!4222635))

(assert (=> b!3717151 m!4222611))

(check-sat (not b!3717149) (not b!3717152) (not b!3717148) (not b!3717150) (not b!3717157) (not b!3717155) (not start!350234) tp_is_empty!18729 (not b!3717153) (not b!3717154) (not b!3717151) (not b!3717159) (not b!3717160))
(check-sat)
(get-model)

(declare-fun b!3717217 () Bool)

(declare-fun e!2301536 () Bool)

(declare-fun head!8023 (List!39738) C!21900)

(declare-fun tail!5750 (List!39738) List!39738)

(assert (=> b!3717217 (= e!2301536 (matchR!5302 (derivativeStep!3322 lt!1297539 (head!8023 tl!3933)) (tail!5750 tl!3933)))))

(declare-fun b!3717218 () Bool)

(declare-fun e!2301533 () Bool)

(declare-fun lt!1297551 () Bool)

(declare-fun call!269613 () Bool)

(assert (=> b!3717218 (= e!2301533 (= lt!1297551 call!269613))))

(declare-fun b!3717219 () Bool)

(declare-fun res!1511069 () Bool)

(declare-fun e!2301531 () Bool)

(assert (=> b!3717219 (=> res!1511069 e!2301531)))

(assert (=> b!3717219 (= res!1511069 (not ((_ is ElementMatch!10857) lt!1297539)))))

(declare-fun e!2301535 () Bool)

(assert (=> b!3717219 (= e!2301535 e!2301531)))

(declare-fun b!3717220 () Bool)

(declare-fun e!2301534 () Bool)

(assert (=> b!3717220 (= e!2301534 (not (= (head!8023 tl!3933) (c!642561 lt!1297539))))))

(declare-fun b!3717221 () Bool)

(declare-fun e!2301537 () Bool)

(assert (=> b!3717221 (= e!2301531 e!2301537)))

(declare-fun res!1511067 () Bool)

(assert (=> b!3717221 (=> (not res!1511067) (not e!2301537))))

(assert (=> b!3717221 (= res!1511067 (not lt!1297551))))

(declare-fun b!3717222 () Bool)

(assert (=> b!3717222 (= e!2301536 (nullable!3780 lt!1297539))))

(declare-fun b!3717223 () Bool)

(assert (=> b!3717223 (= e!2301533 e!2301535)))

(declare-fun c!642576 () Bool)

(assert (=> b!3717223 (= c!642576 ((_ is EmptyLang!10857) lt!1297539))))

(declare-fun d!1088354 () Bool)

(assert (=> d!1088354 e!2301533))

(declare-fun c!642575 () Bool)

(assert (=> d!1088354 (= c!642575 ((_ is EmptyExpr!10857) lt!1297539))))

(assert (=> d!1088354 (= lt!1297551 e!2301536)))

(declare-fun c!642574 () Bool)

(declare-fun isEmpty!23510 (List!39738) Bool)

(assert (=> d!1088354 (= c!642574 (isEmpty!23510 tl!3933))))

(assert (=> d!1088354 (validRegex!4964 lt!1297539)))

(assert (=> d!1088354 (= (matchR!5302 lt!1297539 tl!3933) lt!1297551)))

(declare-fun b!3717224 () Bool)

(declare-fun res!1511071 () Bool)

(assert (=> b!3717224 (=> res!1511071 e!2301531)))

(declare-fun e!2301532 () Bool)

(assert (=> b!3717224 (= res!1511071 e!2301532)))

(declare-fun res!1511072 () Bool)

(assert (=> b!3717224 (=> (not res!1511072) (not e!2301532))))

(assert (=> b!3717224 (= res!1511072 lt!1297551)))

(declare-fun b!3717225 () Bool)

(declare-fun res!1511068 () Bool)

(assert (=> b!3717225 (=> (not res!1511068) (not e!2301532))))

(assert (=> b!3717225 (= res!1511068 (not call!269613))))

(declare-fun b!3717226 () Bool)

(assert (=> b!3717226 (= e!2301537 e!2301534)))

(declare-fun res!1511073 () Bool)

(assert (=> b!3717226 (=> res!1511073 e!2301534)))

(assert (=> b!3717226 (= res!1511073 call!269613)))

(declare-fun b!3717227 () Bool)

(declare-fun res!1511074 () Bool)

(assert (=> b!3717227 (=> res!1511074 e!2301534)))

(assert (=> b!3717227 (= res!1511074 (not (isEmpty!23510 (tail!5750 tl!3933))))))

(declare-fun b!3717228 () Bool)

(assert (=> b!3717228 (= e!2301535 (not lt!1297551))))

(declare-fun bm!269608 () Bool)

(assert (=> bm!269608 (= call!269613 (isEmpty!23510 tl!3933))))

(declare-fun b!3717229 () Bool)

(assert (=> b!3717229 (= e!2301532 (= (head!8023 tl!3933) (c!642561 lt!1297539)))))

(declare-fun b!3717230 () Bool)

(declare-fun res!1511070 () Bool)

(assert (=> b!3717230 (=> (not res!1511070) (not e!2301532))))

(assert (=> b!3717230 (= res!1511070 (isEmpty!23510 (tail!5750 tl!3933)))))

(assert (= (and d!1088354 c!642574) b!3717222))

(assert (= (and d!1088354 (not c!642574)) b!3717217))

(assert (= (and d!1088354 c!642575) b!3717218))

(assert (= (and d!1088354 (not c!642575)) b!3717223))

(assert (= (and b!3717223 c!642576) b!3717228))

(assert (= (and b!3717223 (not c!642576)) b!3717219))

(assert (= (and b!3717219 (not res!1511069)) b!3717224))

(assert (= (and b!3717224 res!1511072) b!3717225))

(assert (= (and b!3717225 res!1511068) b!3717230))

(assert (= (and b!3717230 res!1511070) b!3717229))

(assert (= (and b!3717224 (not res!1511071)) b!3717221))

(assert (= (and b!3717221 res!1511067) b!3717226))

(assert (= (and b!3717226 (not res!1511073)) b!3717227))

(assert (= (and b!3717227 (not res!1511074)) b!3717220))

(assert (= (or b!3717218 b!3717225 b!3717226) bm!269608))

(declare-fun m!4222637 () Bool)

(assert (=> b!3717217 m!4222637))

(assert (=> b!3717217 m!4222637))

(declare-fun m!4222639 () Bool)

(assert (=> b!3717217 m!4222639))

(declare-fun m!4222641 () Bool)

(assert (=> b!3717217 m!4222641))

(assert (=> b!3717217 m!4222639))

(assert (=> b!3717217 m!4222641))

(declare-fun m!4222643 () Bool)

(assert (=> b!3717217 m!4222643))

(assert (=> b!3717229 m!4222637))

(declare-fun m!4222645 () Bool)

(assert (=> b!3717222 m!4222645))

(assert (=> b!3717220 m!4222637))

(assert (=> b!3717227 m!4222641))

(assert (=> b!3717227 m!4222641))

(declare-fun m!4222647 () Bool)

(assert (=> b!3717227 m!4222647))

(declare-fun m!4222649 () Bool)

(assert (=> bm!269608 m!4222649))

(assert (=> d!1088354 m!4222649))

(declare-fun m!4222651 () Bool)

(assert (=> d!1088354 m!4222651))

(assert (=> b!3717230 m!4222641))

(assert (=> b!3717230 m!4222641))

(assert (=> b!3717230 m!4222647))

(assert (=> b!3717148 d!1088354))

(declare-fun d!1088358 () Bool)

(declare-fun lt!1297555 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5739 (List!39738) (InoxSet C!21900))

(assert (=> d!1088358 (= lt!1297555 (select (content!5739 (usedCharacters!1120 (regTwo!22226 r!26326))) c!13576))))

(declare-fun e!2301550 () Bool)

(assert (=> d!1088358 (= lt!1297555 e!2301550)))

(declare-fun res!1511087 () Bool)

(assert (=> d!1088358 (=> (not res!1511087) (not e!2301550))))

(assert (=> d!1088358 (= res!1511087 ((_ is Cons!39614) (usedCharacters!1120 (regTwo!22226 r!26326))))))

(assert (=> d!1088358 (= (contains!7950 (usedCharacters!1120 (regTwo!22226 r!26326)) c!13576) lt!1297555)))

(declare-fun b!3717249 () Bool)

(declare-fun e!2301549 () Bool)

(assert (=> b!3717249 (= e!2301550 e!2301549)))

(declare-fun res!1511088 () Bool)

(assert (=> b!3717249 (=> res!1511088 e!2301549)))

(assert (=> b!3717249 (= res!1511088 (= (h!45034 (usedCharacters!1120 (regTwo!22226 r!26326))) c!13576))))

(declare-fun b!3717250 () Bool)

(assert (=> b!3717250 (= e!2301549 (contains!7950 (t!302421 (usedCharacters!1120 (regTwo!22226 r!26326))) c!13576))))

(assert (= (and d!1088358 res!1511087) b!3717249))

(assert (= (and b!3717249 (not res!1511088)) b!3717250))

(assert (=> d!1088358 m!4222615))

(declare-fun m!4222671 () Bool)

(assert (=> d!1088358 m!4222671))

(declare-fun m!4222673 () Bool)

(assert (=> d!1088358 m!4222673))

(declare-fun m!4222675 () Bool)

(assert (=> b!3717250 m!4222675))

(assert (=> b!3717154 d!1088358))

(declare-fun bm!269627 () Bool)

(declare-fun call!269632 () List!39738)

(declare-fun call!269635 () List!39738)

(assert (=> bm!269627 (= call!269632 call!269635)))

(declare-fun bm!269628 () Bool)

(declare-fun call!269634 () List!39738)

(declare-fun c!642596 () Bool)

(assert (=> bm!269628 (= call!269634 (usedCharacters!1120 (ite c!642596 (regTwo!22227 r!26326) (regTwo!22226 r!26326))))))

(declare-fun b!3717295 () Bool)

(declare-fun e!2301583 () List!39738)

(assert (=> b!3717295 (= e!2301583 (Cons!39614 (c!642561 r!26326) Nil!39614))))

(declare-fun b!3717296 () Bool)

(declare-fun e!2301581 () List!39738)

(declare-fun call!269633 () List!39738)

(assert (=> b!3717296 (= e!2301581 call!269633)))

(declare-fun b!3717297 () Bool)

(declare-fun e!2301582 () List!39738)

(assert (=> b!3717297 (= e!2301582 call!269635)))

(declare-fun bm!269629 () Bool)

(declare-fun ++!9802 (List!39738 List!39738) List!39738)

(assert (=> bm!269629 (= call!269633 (++!9802 call!269632 call!269634))))

(declare-fun b!3717298 () Bool)

(declare-fun c!642594 () Bool)

(assert (=> b!3717298 (= c!642594 ((_ is Star!10857) r!26326))))

(assert (=> b!3717298 (= e!2301583 e!2301582)))

(declare-fun b!3717299 () Bool)

(declare-fun e!2301580 () List!39738)

(assert (=> b!3717299 (= e!2301580 Nil!39614)))

(declare-fun b!3717294 () Bool)

(assert (=> b!3717294 (= e!2301582 e!2301581)))

(assert (=> b!3717294 (= c!642596 ((_ is Union!10857) r!26326))))

(declare-fun d!1088364 () Bool)

(declare-fun c!642595 () Bool)

(assert (=> d!1088364 (= c!642595 (or ((_ is EmptyExpr!10857) r!26326) ((_ is EmptyLang!10857) r!26326)))))

(assert (=> d!1088364 (= (usedCharacters!1120 r!26326) e!2301580)))

(declare-fun bm!269630 () Bool)

(assert (=> bm!269630 (= call!269635 (usedCharacters!1120 (ite c!642594 (reg!11186 r!26326) (ite c!642596 (regOne!22227 r!26326) (regOne!22226 r!26326)))))))

(declare-fun b!3717300 () Bool)

(assert (=> b!3717300 (= e!2301580 e!2301583)))

(declare-fun c!642597 () Bool)

(assert (=> b!3717300 (= c!642597 ((_ is ElementMatch!10857) r!26326))))

(declare-fun b!3717301 () Bool)

(assert (=> b!3717301 (= e!2301581 call!269633)))

(assert (= (and d!1088364 c!642595) b!3717299))

(assert (= (and d!1088364 (not c!642595)) b!3717300))

(assert (= (and b!3717300 c!642597) b!3717295))

(assert (= (and b!3717300 (not c!642597)) b!3717298))

(assert (= (and b!3717298 c!642594) b!3717297))

(assert (= (and b!3717298 (not c!642594)) b!3717294))

(assert (= (and b!3717294 c!642596) b!3717296))

(assert (= (and b!3717294 (not c!642596)) b!3717301))

(assert (= (or b!3717296 b!3717301) bm!269627))

(assert (= (or b!3717296 b!3717301) bm!269628))

(assert (= (or b!3717296 b!3717301) bm!269629))

(assert (= (or b!3717297 bm!269627) bm!269630))

(declare-fun m!4222683 () Bool)

(assert (=> bm!269628 m!4222683))

(declare-fun m!4222685 () Bool)

(assert (=> bm!269629 m!4222685))

(declare-fun m!4222687 () Bool)

(assert (=> bm!269630 m!4222687))

(assert (=> b!3717154 d!1088364))

(declare-fun bm!269631 () Bool)

(declare-fun call!269636 () List!39738)

(declare-fun call!269639 () List!39738)

(assert (=> bm!269631 (= call!269636 call!269639)))

(declare-fun bm!269632 () Bool)

(declare-fun call!269638 () List!39738)

(declare-fun c!642600 () Bool)

(assert (=> bm!269632 (= call!269638 (usedCharacters!1120 (ite c!642600 (regTwo!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))

(declare-fun b!3717303 () Bool)

(declare-fun e!2301587 () List!39738)

(assert (=> b!3717303 (= e!2301587 (Cons!39614 (c!642561 (regTwo!22226 r!26326)) Nil!39614))))

(declare-fun b!3717304 () Bool)

(declare-fun e!2301585 () List!39738)

(declare-fun call!269637 () List!39738)

(assert (=> b!3717304 (= e!2301585 call!269637)))

(declare-fun b!3717305 () Bool)

(declare-fun e!2301586 () List!39738)

(assert (=> b!3717305 (= e!2301586 call!269639)))

(declare-fun bm!269633 () Bool)

(assert (=> bm!269633 (= call!269637 (++!9802 call!269636 call!269638))))

(declare-fun b!3717306 () Bool)

(declare-fun c!642598 () Bool)

(assert (=> b!3717306 (= c!642598 ((_ is Star!10857) (regTwo!22226 r!26326)))))

(assert (=> b!3717306 (= e!2301587 e!2301586)))

(declare-fun b!3717307 () Bool)

(declare-fun e!2301584 () List!39738)

(assert (=> b!3717307 (= e!2301584 Nil!39614)))

(declare-fun b!3717302 () Bool)

(assert (=> b!3717302 (= e!2301586 e!2301585)))

(assert (=> b!3717302 (= c!642600 ((_ is Union!10857) (regTwo!22226 r!26326)))))

(declare-fun d!1088368 () Bool)

(declare-fun c!642599 () Bool)

(assert (=> d!1088368 (= c!642599 (or ((_ is EmptyExpr!10857) (regTwo!22226 r!26326)) ((_ is EmptyLang!10857) (regTwo!22226 r!26326))))))

(assert (=> d!1088368 (= (usedCharacters!1120 (regTwo!22226 r!26326)) e!2301584)))

(declare-fun bm!269634 () Bool)

(assert (=> bm!269634 (= call!269639 (usedCharacters!1120 (ite c!642598 (reg!11186 (regTwo!22226 r!26326)) (ite c!642600 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))))

(declare-fun b!3717308 () Bool)

(assert (=> b!3717308 (= e!2301584 e!2301587)))

(declare-fun c!642601 () Bool)

(assert (=> b!3717308 (= c!642601 ((_ is ElementMatch!10857) (regTwo!22226 r!26326)))))

(declare-fun b!3717309 () Bool)

(assert (=> b!3717309 (= e!2301585 call!269637)))

(assert (= (and d!1088368 c!642599) b!3717307))

(assert (= (and d!1088368 (not c!642599)) b!3717308))

(assert (= (and b!3717308 c!642601) b!3717303))

(assert (= (and b!3717308 (not c!642601)) b!3717306))

(assert (= (and b!3717306 c!642598) b!3717305))

(assert (= (and b!3717306 (not c!642598)) b!3717302))

(assert (= (and b!3717302 c!642600) b!3717304))

(assert (= (and b!3717302 (not c!642600)) b!3717309))

(assert (= (or b!3717304 b!3717309) bm!269631))

(assert (= (or b!3717304 b!3717309) bm!269632))

(assert (= (or b!3717304 b!3717309) bm!269633))

(assert (= (or b!3717305 bm!269631) bm!269634))

(declare-fun m!4222689 () Bool)

(assert (=> bm!269632 m!4222689))

(declare-fun m!4222691 () Bool)

(assert (=> bm!269633 m!4222691))

(declare-fun m!4222693 () Bool)

(assert (=> bm!269634 m!4222693))

(assert (=> b!3717154 d!1088368))

(declare-fun d!1088370 () Bool)

(assert (=> d!1088370 (contains!7950 (usedCharacters!1120 (regTwo!22226 r!26326)) c!13576)))

(declare-fun lt!1297562 () Unit!57512)

(declare-fun choose!22196 (Regex!10857 C!21900 List!39738) Unit!57512)

(assert (=> d!1088370 (= lt!1297562 (choose!22196 (regTwo!22226 r!26326) c!13576 tl!3933))))

(assert (=> d!1088370 (validRegex!4964 (regTwo!22226 r!26326))))

(assert (=> d!1088370 (= (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!14 (regTwo!22226 r!26326) c!13576 tl!3933) lt!1297562)))

(declare-fun bs!574867 () Bool)

(assert (= bs!574867 d!1088370))

(assert (=> bs!574867 m!4222615))

(assert (=> bs!574867 m!4222615))

(assert (=> bs!574867 m!4222617))

(declare-fun m!4222715 () Bool)

(assert (=> bs!574867 m!4222715))

(assert (=> bs!574867 m!4222629))

(assert (=> b!3717154 d!1088370))

(declare-fun d!1088376 () Bool)

(declare-fun lt!1297563 () Bool)

(assert (=> d!1088376 (= lt!1297563 (select (content!5739 (usedCharacters!1120 r!26326)) c!13576))))

(declare-fun e!2301599 () Bool)

(assert (=> d!1088376 (= lt!1297563 e!2301599)))

(declare-fun res!1511112 () Bool)

(assert (=> d!1088376 (=> (not res!1511112) (not e!2301599))))

(assert (=> d!1088376 (= res!1511112 ((_ is Cons!39614) (usedCharacters!1120 r!26326)))))

(assert (=> d!1088376 (= (contains!7950 (usedCharacters!1120 r!26326) c!13576) lt!1297563)))

(declare-fun b!3717330 () Bool)

(declare-fun e!2301598 () Bool)

(assert (=> b!3717330 (= e!2301599 e!2301598)))

(declare-fun res!1511113 () Bool)

(assert (=> b!3717330 (=> res!1511113 e!2301598)))

(assert (=> b!3717330 (= res!1511113 (= (h!45034 (usedCharacters!1120 r!26326)) c!13576))))

(declare-fun b!3717331 () Bool)

(assert (=> b!3717331 (= e!2301598 (contains!7950 (t!302421 (usedCharacters!1120 r!26326)) c!13576))))

(assert (= (and d!1088376 res!1511112) b!3717330))

(assert (= (and b!3717330 (not res!1511113)) b!3717331))

(assert (=> d!1088376 m!4222619))

(declare-fun m!4222717 () Bool)

(assert (=> d!1088376 m!4222717))

(declare-fun m!4222719 () Bool)

(assert (=> d!1088376 m!4222719))

(declare-fun m!4222721 () Bool)

(assert (=> b!3717331 m!4222721))

(assert (=> b!3717154 d!1088376))

(declare-fun d!1088378 () Bool)

(declare-fun nullableFct!1069 (Regex!10857) Bool)

(assert (=> d!1088378 (= (nullable!3780 (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933)) (nullableFct!1069 (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933)))))

(declare-fun bs!574868 () Bool)

(assert (= bs!574868 d!1088378))

(assert (=> bs!574868 m!4222625))

(declare-fun m!4222723 () Bool)

(assert (=> bs!574868 m!4222723))

(assert (=> b!3717159 d!1088378))

(declare-fun d!1088380 () Bool)

(declare-fun lt!1297570 () Regex!10857)

(assert (=> d!1088380 (validRegex!4964 lt!1297570)))

(declare-fun e!2301610 () Regex!10857)

(assert (=> d!1088380 (= lt!1297570 e!2301610)))

(declare-fun c!642614 () Bool)

(assert (=> d!1088380 (= c!642614 ((_ is Cons!39614) tl!3933))))

(assert (=> d!1088380 (validRegex!4964 (derivativeStep!3322 r!26326 c!13576))))

(assert (=> d!1088380 (= (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933) lt!1297570)))

(declare-fun b!3717347 () Bool)

(assert (=> b!3717347 (= e!2301610 (derivative!371 (derivativeStep!3322 (derivativeStep!3322 r!26326 c!13576) (h!45034 tl!3933)) (t!302421 tl!3933)))))

(declare-fun b!3717348 () Bool)

(assert (=> b!3717348 (= e!2301610 (derivativeStep!3322 r!26326 c!13576))))

(assert (= (and d!1088380 c!642614) b!3717347))

(assert (= (and d!1088380 (not c!642614)) b!3717348))

(declare-fun m!4222747 () Bool)

(assert (=> d!1088380 m!4222747))

(assert (=> d!1088380 m!4222623))

(declare-fun m!4222749 () Bool)

(assert (=> d!1088380 m!4222749))

(assert (=> b!3717347 m!4222623))

(declare-fun m!4222751 () Bool)

(assert (=> b!3717347 m!4222751))

(assert (=> b!3717347 m!4222751))

(declare-fun m!4222753 () Bool)

(assert (=> b!3717347 m!4222753))

(assert (=> b!3717159 d!1088380))

(declare-fun b!3717437 () Bool)

(declare-fun e!2301657 () Regex!10857)

(declare-fun e!2301655 () Regex!10857)

(assert (=> b!3717437 (= e!2301657 e!2301655)))

(declare-fun c!642652 () Bool)

(assert (=> b!3717437 (= c!642652 ((_ is ElementMatch!10857) r!26326))))

(declare-fun call!269672 () Regex!10857)

(declare-fun bm!269665 () Bool)

(declare-fun c!642651 () Bool)

(assert (=> bm!269665 (= call!269672 (derivativeStep!3322 (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326)) c!13576))))

(declare-fun d!1088392 () Bool)

(declare-fun lt!1297580 () Regex!10857)

(assert (=> d!1088392 (validRegex!4964 lt!1297580)))

(assert (=> d!1088392 (= lt!1297580 e!2301657)))

(declare-fun c!642655 () Bool)

(assert (=> d!1088392 (= c!642655 (or ((_ is EmptyExpr!10857) r!26326) ((_ is EmptyLang!10857) r!26326)))))

(assert (=> d!1088392 (validRegex!4964 r!26326)))

(assert (=> d!1088392 (= (derivativeStep!3322 r!26326 c!13576) lt!1297580)))

(declare-fun bm!269666 () Bool)

(declare-fun call!269670 () Regex!10857)

(assert (=> bm!269666 (= call!269670 call!269672)))

(declare-fun b!3717438 () Bool)

(declare-fun e!2301659 () Regex!10857)

(declare-fun call!269673 () Regex!10857)

(assert (=> b!3717438 (= e!2301659 (Union!10857 (Concat!17128 call!269670 (regTwo!22226 r!26326)) call!269673))))

(declare-fun bm!269667 () Bool)

(declare-fun call!269671 () Regex!10857)

(assert (=> bm!269667 (= call!269673 call!269671)))

(declare-fun b!3717439 () Bool)

(declare-fun c!642653 () Bool)

(assert (=> b!3717439 (= c!642653 (nullable!3780 (regOne!22226 r!26326)))))

(declare-fun e!2301656 () Regex!10857)

(assert (=> b!3717439 (= e!2301656 e!2301659)))

(declare-fun b!3717440 () Bool)

(assert (=> b!3717440 (= e!2301656 (Concat!17128 call!269673 r!26326))))

(declare-fun b!3717441 () Bool)

(assert (=> b!3717441 (= e!2301657 EmptyLang!10857)))

(declare-fun b!3717442 () Bool)

(assert (=> b!3717442 (= c!642651 ((_ is Union!10857) r!26326))))

(declare-fun e!2301658 () Regex!10857)

(assert (=> b!3717442 (= e!2301655 e!2301658)))

(declare-fun b!3717443 () Bool)

(assert (=> b!3717443 (= e!2301658 e!2301656)))

(declare-fun c!642654 () Bool)

(assert (=> b!3717443 (= c!642654 ((_ is Star!10857) r!26326))))

(declare-fun b!3717444 () Bool)

(assert (=> b!3717444 (= e!2301659 (Union!10857 (Concat!17128 call!269670 (regTwo!22226 r!26326)) EmptyLang!10857))))

(declare-fun b!3717445 () Bool)

(assert (=> b!3717445 (= e!2301655 (ite (= c!13576 (c!642561 r!26326)) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3717446 () Bool)

(assert (=> b!3717446 (= e!2301658 (Union!10857 call!269672 call!269671))))

(declare-fun bm!269668 () Bool)

(assert (=> bm!269668 (= call!269671 (derivativeStep!3322 (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326))) c!13576))))

(assert (= (and d!1088392 c!642655) b!3717441))

(assert (= (and d!1088392 (not c!642655)) b!3717437))

(assert (= (and b!3717437 c!642652) b!3717445))

(assert (= (and b!3717437 (not c!642652)) b!3717442))

(assert (= (and b!3717442 c!642651) b!3717446))

(assert (= (and b!3717442 (not c!642651)) b!3717443))

(assert (= (and b!3717443 c!642654) b!3717440))

(assert (= (and b!3717443 (not c!642654)) b!3717439))

(assert (= (and b!3717439 c!642653) b!3717438))

(assert (= (and b!3717439 (not c!642653)) b!3717444))

(assert (= (or b!3717438 b!3717444) bm!269666))

(assert (= (or b!3717440 b!3717438) bm!269667))

(assert (= (or b!3717446 bm!269667) bm!269668))

(assert (= (or b!3717446 bm!269666) bm!269665))

(declare-fun m!4222787 () Bool)

(assert (=> bm!269665 m!4222787))

(declare-fun m!4222791 () Bool)

(assert (=> d!1088392 m!4222791))

(assert (=> d!1088392 m!4222609))

(assert (=> b!3717439 m!4222589))

(declare-fun m!4222793 () Bool)

(assert (=> bm!269668 m!4222793))

(assert (=> b!3717159 d!1088392))

(declare-fun d!1088404 () Bool)

(assert (=> d!1088404 (= (nullable!3780 lt!1297544) (nullableFct!1069 lt!1297544))))

(declare-fun bs!574873 () Bool)

(assert (= bs!574873 d!1088404))

(declare-fun m!4222795 () Bool)

(assert (=> bs!574873 m!4222795))

(assert (=> b!3717152 d!1088404))

(declare-fun b!3717447 () Bool)

(declare-fun e!2301665 () Bool)

(assert (=> b!3717447 (= e!2301665 (matchR!5302 (derivativeStep!3322 lt!1297544 (head!8023 Nil!39614)) (tail!5750 Nil!39614)))))

(declare-fun b!3717448 () Bool)

(declare-fun e!2301662 () Bool)

(declare-fun lt!1297581 () Bool)

(declare-fun call!269674 () Bool)

(assert (=> b!3717448 (= e!2301662 (= lt!1297581 call!269674))))

(declare-fun b!3717449 () Bool)

(declare-fun res!1511137 () Bool)

(declare-fun e!2301660 () Bool)

(assert (=> b!3717449 (=> res!1511137 e!2301660)))

(assert (=> b!3717449 (= res!1511137 (not ((_ is ElementMatch!10857) lt!1297544)))))

(declare-fun e!2301664 () Bool)

(assert (=> b!3717449 (= e!2301664 e!2301660)))

(declare-fun b!3717450 () Bool)

(declare-fun e!2301663 () Bool)

(assert (=> b!3717450 (= e!2301663 (not (= (head!8023 Nil!39614) (c!642561 lt!1297544))))))

(declare-fun b!3717451 () Bool)

(declare-fun e!2301666 () Bool)

(assert (=> b!3717451 (= e!2301660 e!2301666)))

(declare-fun res!1511135 () Bool)

(assert (=> b!3717451 (=> (not res!1511135) (not e!2301666))))

(assert (=> b!3717451 (= res!1511135 (not lt!1297581))))

(declare-fun b!3717452 () Bool)

(assert (=> b!3717452 (= e!2301665 (nullable!3780 lt!1297544))))

(declare-fun b!3717453 () Bool)

(assert (=> b!3717453 (= e!2301662 e!2301664)))

(declare-fun c!642658 () Bool)

(assert (=> b!3717453 (= c!642658 ((_ is EmptyLang!10857) lt!1297544))))

(declare-fun d!1088406 () Bool)

(assert (=> d!1088406 e!2301662))

(declare-fun c!642657 () Bool)

(assert (=> d!1088406 (= c!642657 ((_ is EmptyExpr!10857) lt!1297544))))

(assert (=> d!1088406 (= lt!1297581 e!2301665)))

(declare-fun c!642656 () Bool)

(assert (=> d!1088406 (= c!642656 (isEmpty!23510 Nil!39614))))

(assert (=> d!1088406 (validRegex!4964 lt!1297544)))

(assert (=> d!1088406 (= (matchR!5302 lt!1297544 Nil!39614) lt!1297581)))

(declare-fun b!3717454 () Bool)

(declare-fun res!1511139 () Bool)

(assert (=> b!3717454 (=> res!1511139 e!2301660)))

(declare-fun e!2301661 () Bool)

(assert (=> b!3717454 (= res!1511139 e!2301661)))

(declare-fun res!1511140 () Bool)

(assert (=> b!3717454 (=> (not res!1511140) (not e!2301661))))

(assert (=> b!3717454 (= res!1511140 lt!1297581)))

(declare-fun b!3717455 () Bool)

(declare-fun res!1511136 () Bool)

(assert (=> b!3717455 (=> (not res!1511136) (not e!2301661))))

(assert (=> b!3717455 (= res!1511136 (not call!269674))))

(declare-fun b!3717456 () Bool)

(assert (=> b!3717456 (= e!2301666 e!2301663)))

(declare-fun res!1511141 () Bool)

(assert (=> b!3717456 (=> res!1511141 e!2301663)))

(assert (=> b!3717456 (= res!1511141 call!269674)))

(declare-fun b!3717457 () Bool)

(declare-fun res!1511142 () Bool)

(assert (=> b!3717457 (=> res!1511142 e!2301663)))

(assert (=> b!3717457 (= res!1511142 (not (isEmpty!23510 (tail!5750 Nil!39614))))))

(declare-fun b!3717458 () Bool)

(assert (=> b!3717458 (= e!2301664 (not lt!1297581))))

(declare-fun bm!269669 () Bool)

(assert (=> bm!269669 (= call!269674 (isEmpty!23510 Nil!39614))))

(declare-fun b!3717459 () Bool)

(assert (=> b!3717459 (= e!2301661 (= (head!8023 Nil!39614) (c!642561 lt!1297544)))))

(declare-fun b!3717460 () Bool)

(declare-fun res!1511138 () Bool)

(assert (=> b!3717460 (=> (not res!1511138) (not e!2301661))))

(assert (=> b!3717460 (= res!1511138 (isEmpty!23510 (tail!5750 Nil!39614)))))

(assert (= (and d!1088406 c!642656) b!3717452))

(assert (= (and d!1088406 (not c!642656)) b!3717447))

(assert (= (and d!1088406 c!642657) b!3717448))

(assert (= (and d!1088406 (not c!642657)) b!3717453))

(assert (= (and b!3717453 c!642658) b!3717458))

(assert (= (and b!3717453 (not c!642658)) b!3717449))

(assert (= (and b!3717449 (not res!1511137)) b!3717454))

(assert (= (and b!3717454 res!1511140) b!3717455))

(assert (= (and b!3717455 res!1511136) b!3717460))

(assert (= (and b!3717460 res!1511138) b!3717459))

(assert (= (and b!3717454 (not res!1511139)) b!3717451))

(assert (= (and b!3717451 res!1511135) b!3717456))

(assert (= (and b!3717456 (not res!1511141)) b!3717457))

(assert (= (and b!3717457 (not res!1511142)) b!3717450))

(assert (= (or b!3717448 b!3717455 b!3717456) bm!269669))

(declare-fun m!4222797 () Bool)

(assert (=> b!3717447 m!4222797))

(assert (=> b!3717447 m!4222797))

(declare-fun m!4222799 () Bool)

(assert (=> b!3717447 m!4222799))

(declare-fun m!4222801 () Bool)

(assert (=> b!3717447 m!4222801))

(assert (=> b!3717447 m!4222799))

(assert (=> b!3717447 m!4222801))

(declare-fun m!4222803 () Bool)

(assert (=> b!3717447 m!4222803))

(assert (=> b!3717459 m!4222797))

(assert (=> b!3717452 m!4222607))

(assert (=> b!3717450 m!4222797))

(assert (=> b!3717457 m!4222801))

(assert (=> b!3717457 m!4222801))

(declare-fun m!4222805 () Bool)

(assert (=> b!3717457 m!4222805))

(declare-fun m!4222807 () Bool)

(assert (=> bm!269669 m!4222807))

(assert (=> d!1088406 m!4222807))

(declare-fun m!4222809 () Bool)

(assert (=> d!1088406 m!4222809))

(assert (=> b!3717460 m!4222801))

(assert (=> b!3717460 m!4222801))

(assert (=> b!3717460 m!4222805))

(assert (=> b!3717151 d!1088406))

(declare-fun d!1088408 () Bool)

(declare-fun lt!1297582 () Regex!10857)

(assert (=> d!1088408 (validRegex!4964 lt!1297582)))

(declare-fun e!2301667 () Regex!10857)

(assert (=> d!1088408 (= lt!1297582 e!2301667)))

(declare-fun c!642659 () Bool)

(assert (=> d!1088408 (= c!642659 ((_ is Cons!39614) tl!3933))))

(assert (=> d!1088408 (validRegex!4964 lt!1297539)))

(assert (=> d!1088408 (= (derivative!371 lt!1297539 tl!3933) lt!1297582)))

(declare-fun b!3717461 () Bool)

(assert (=> b!3717461 (= e!2301667 (derivative!371 (derivativeStep!3322 lt!1297539 (h!45034 tl!3933)) (t!302421 tl!3933)))))

(declare-fun b!3717462 () Bool)

(assert (=> b!3717462 (= e!2301667 lt!1297539)))

(assert (= (and d!1088408 c!642659) b!3717461))

(assert (= (and d!1088408 (not c!642659)) b!3717462))

(declare-fun m!4222811 () Bool)

(assert (=> d!1088408 m!4222811))

(assert (=> d!1088408 m!4222651))

(declare-fun m!4222813 () Bool)

(assert (=> b!3717461 m!4222813))

(assert (=> b!3717461 m!4222813))

(declare-fun m!4222815 () Bool)

(assert (=> b!3717461 m!4222815))

(assert (=> b!3717151 d!1088408))

(declare-fun b!3717519 () Bool)

(declare-fun res!1511176 () Bool)

(declare-fun e!2301711 () Bool)

(assert (=> b!3717519 (=> (not res!1511176) (not e!2301711))))

(declare-fun call!269688 () Bool)

(assert (=> b!3717519 (= res!1511176 call!269688)))

(declare-fun e!2301712 () Bool)

(assert (=> b!3717519 (= e!2301712 e!2301711)))

(declare-fun bm!269681 () Bool)

(declare-fun c!642674 () Bool)

(assert (=> bm!269681 (= call!269688 (validRegex!4964 (ite c!642674 (regOne!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))

(declare-fun b!3717520 () Bool)

(declare-fun call!269687 () Bool)

(assert (=> b!3717520 (= e!2301711 call!269687)))

(declare-fun b!3717521 () Bool)

(declare-fun e!2301713 () Bool)

(assert (=> b!3717521 (= e!2301713 e!2301712)))

(assert (=> b!3717521 (= c!642674 ((_ is Union!10857) (regTwo!22226 r!26326)))))

(declare-fun bm!269682 () Bool)

(declare-fun c!642673 () Bool)

(declare-fun call!269686 () Bool)

(assert (=> bm!269682 (= call!269686 (validRegex!4964 (ite c!642673 (reg!11186 (regTwo!22226 r!26326)) (ite c!642674 (regTwo!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))))

(declare-fun b!3717522 () Bool)

(declare-fun e!2301710 () Bool)

(declare-fun e!2301709 () Bool)

(assert (=> b!3717522 (= e!2301710 e!2301709)))

(declare-fun res!1511173 () Bool)

(assert (=> b!3717522 (=> (not res!1511173) (not e!2301709))))

(assert (=> b!3717522 (= res!1511173 call!269687)))

(declare-fun b!3717523 () Bool)

(declare-fun e!2301707 () Bool)

(assert (=> b!3717523 (= e!2301713 e!2301707)))

(declare-fun res!1511175 () Bool)

(assert (=> b!3717523 (= res!1511175 (not (nullable!3780 (reg!11186 (regTwo!22226 r!26326)))))))

(assert (=> b!3717523 (=> (not res!1511175) (not e!2301707))))

(declare-fun b!3717524 () Bool)

(declare-fun e!2301708 () Bool)

(assert (=> b!3717524 (= e!2301708 e!2301713)))

(assert (=> b!3717524 (= c!642673 ((_ is Star!10857) (regTwo!22226 r!26326)))))

(declare-fun b!3717525 () Bool)

(declare-fun res!1511177 () Bool)

(assert (=> b!3717525 (=> res!1511177 e!2301710)))

(assert (=> b!3717525 (= res!1511177 (not ((_ is Concat!17128) (regTwo!22226 r!26326))))))

(assert (=> b!3717525 (= e!2301712 e!2301710)))

(declare-fun bm!269683 () Bool)

(assert (=> bm!269683 (= call!269687 call!269686)))

(declare-fun d!1088410 () Bool)

(declare-fun res!1511174 () Bool)

(assert (=> d!1088410 (=> res!1511174 e!2301708)))

(assert (=> d!1088410 (= res!1511174 ((_ is ElementMatch!10857) (regTwo!22226 r!26326)))))

(assert (=> d!1088410 (= (validRegex!4964 (regTwo!22226 r!26326)) e!2301708)))

(declare-fun b!3717526 () Bool)

(assert (=> b!3717526 (= e!2301709 call!269688)))

(declare-fun b!3717527 () Bool)

(assert (=> b!3717527 (= e!2301707 call!269686)))

(assert (= (and d!1088410 (not res!1511174)) b!3717524))

(assert (= (and b!3717524 c!642673) b!3717523))

(assert (= (and b!3717524 (not c!642673)) b!3717521))

(assert (= (and b!3717523 res!1511175) b!3717527))

(assert (= (and b!3717521 c!642674) b!3717519))

(assert (= (and b!3717521 (not c!642674)) b!3717525))

(assert (= (and b!3717519 res!1511176) b!3717520))

(assert (= (and b!3717525 (not res!1511177)) b!3717522))

(assert (= (and b!3717522 res!1511173) b!3717526))

(assert (= (or b!3717520 b!3717522) bm!269683))

(assert (= (or b!3717519 b!3717526) bm!269681))

(assert (= (or b!3717527 bm!269683) bm!269682))

(declare-fun m!4222847 () Bool)

(assert (=> bm!269681 m!4222847))

(declare-fun m!4222849 () Bool)

(assert (=> bm!269682 m!4222849))

(declare-fun m!4222851 () Bool)

(assert (=> b!3717523 m!4222851))

(assert (=> b!3717151 d!1088410))

(assert (=> b!3717151 d!1088354))

(declare-fun d!1088422 () Bool)

(assert (=> d!1088422 (= (matchR!5302 lt!1297539 tl!3933) (matchR!5302 (derivative!371 lt!1297539 tl!3933) Nil!39614))))

(declare-fun lt!1297594 () Unit!57512)

(declare-fun choose!22199 (Regex!10857 List!39738) Unit!57512)

(assert (=> d!1088422 (= lt!1297594 (choose!22199 lt!1297539 tl!3933))))

(assert (=> d!1088422 (validRegex!4964 lt!1297539)))

(assert (=> d!1088422 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!248 lt!1297539 tl!3933) lt!1297594)))

(declare-fun bs!574874 () Bool)

(assert (= bs!574874 d!1088422))

(assert (=> bs!574874 m!4222651))

(assert (=> bs!574874 m!4222635))

(assert (=> bs!574874 m!4222635))

(declare-fun m!4222853 () Bool)

(assert (=> bs!574874 m!4222853))

(assert (=> bs!574874 m!4222611))

(declare-fun m!4222855 () Bool)

(assert (=> bs!574874 m!4222855))

(assert (=> b!3717151 d!1088422))

(declare-fun d!1088424 () Bool)

(assert (=> d!1088424 (= (nullable!3780 (regOne!22226 r!26326)) (nullableFct!1069 (regOne!22226 r!26326)))))

(declare-fun bs!574875 () Bool)

(assert (= bs!574875 d!1088424))

(declare-fun m!4222863 () Bool)

(assert (=> bs!574875 m!4222863))

(assert (=> b!3717160 d!1088424))

(declare-fun b!3717560 () Bool)

(declare-fun res!1511181 () Bool)

(declare-fun e!2301734 () Bool)

(assert (=> b!3717560 (=> (not res!1511181) (not e!2301734))))

(declare-fun call!269707 () Bool)

(assert (=> b!3717560 (= res!1511181 call!269707)))

(declare-fun e!2301735 () Bool)

(assert (=> b!3717560 (= e!2301735 e!2301734)))

(declare-fun bm!269700 () Bool)

(declare-fun c!642692 () Bool)

(assert (=> bm!269700 (= call!269707 (validRegex!4964 (ite c!642692 (regOne!22227 r!26326) (regTwo!22226 r!26326))))))

(declare-fun b!3717561 () Bool)

(declare-fun call!269706 () Bool)

(assert (=> b!3717561 (= e!2301734 call!269706)))

(declare-fun b!3717562 () Bool)

(declare-fun e!2301736 () Bool)

(assert (=> b!3717562 (= e!2301736 e!2301735)))

(assert (=> b!3717562 (= c!642692 ((_ is Union!10857) r!26326))))

(declare-fun call!269705 () Bool)

(declare-fun c!642691 () Bool)

(declare-fun bm!269701 () Bool)

(assert (=> bm!269701 (= call!269705 (validRegex!4964 (ite c!642691 (reg!11186 r!26326) (ite c!642692 (regTwo!22227 r!26326) (regOne!22226 r!26326)))))))

(declare-fun b!3717563 () Bool)

(declare-fun e!2301733 () Bool)

(declare-fun e!2301732 () Bool)

(assert (=> b!3717563 (= e!2301733 e!2301732)))

(declare-fun res!1511178 () Bool)

(assert (=> b!3717563 (=> (not res!1511178) (not e!2301732))))

(assert (=> b!3717563 (= res!1511178 call!269706)))

(declare-fun b!3717564 () Bool)

(declare-fun e!2301730 () Bool)

(assert (=> b!3717564 (= e!2301736 e!2301730)))

(declare-fun res!1511180 () Bool)

(assert (=> b!3717564 (= res!1511180 (not (nullable!3780 (reg!11186 r!26326))))))

(assert (=> b!3717564 (=> (not res!1511180) (not e!2301730))))

(declare-fun b!3717565 () Bool)

(declare-fun e!2301731 () Bool)

(assert (=> b!3717565 (= e!2301731 e!2301736)))

(assert (=> b!3717565 (= c!642691 ((_ is Star!10857) r!26326))))

(declare-fun b!3717566 () Bool)

(declare-fun res!1511182 () Bool)

(assert (=> b!3717566 (=> res!1511182 e!2301733)))

(assert (=> b!3717566 (= res!1511182 (not ((_ is Concat!17128) r!26326)))))

(assert (=> b!3717566 (= e!2301735 e!2301733)))

(declare-fun bm!269702 () Bool)

(assert (=> bm!269702 (= call!269706 call!269705)))

(declare-fun d!1088428 () Bool)

(declare-fun res!1511179 () Bool)

(assert (=> d!1088428 (=> res!1511179 e!2301731)))

(assert (=> d!1088428 (= res!1511179 ((_ is ElementMatch!10857) r!26326))))

(assert (=> d!1088428 (= (validRegex!4964 r!26326) e!2301731)))

(declare-fun b!3717567 () Bool)

(assert (=> b!3717567 (= e!2301732 call!269707)))

(declare-fun b!3717568 () Bool)

(assert (=> b!3717568 (= e!2301730 call!269705)))

(assert (= (and d!1088428 (not res!1511179)) b!3717565))

(assert (= (and b!3717565 c!642691) b!3717564))

(assert (= (and b!3717565 (not c!642691)) b!3717562))

(assert (= (and b!3717564 res!1511180) b!3717568))

(assert (= (and b!3717562 c!642692) b!3717560))

(assert (= (and b!3717562 (not c!642692)) b!3717566))

(assert (= (and b!3717560 res!1511181) b!3717561))

(assert (= (and b!3717566 (not res!1511182)) b!3717563))

(assert (= (and b!3717563 res!1511178) b!3717567))

(assert (= (or b!3717561 b!3717563) bm!269702))

(assert (= (or b!3717560 b!3717567) bm!269700))

(assert (= (or b!3717568 bm!269702) bm!269701))

(declare-fun m!4222871 () Bool)

(assert (=> bm!269700 m!4222871))

(declare-fun m!4222873 () Bool)

(assert (=> bm!269701 m!4222873))

(declare-fun m!4222875 () Bool)

(assert (=> b!3717564 m!4222875))

(assert (=> start!350234 d!1088428))

(declare-fun b!3717569 () Bool)

(declare-fun e!2301742 () Bool)

(assert (=> b!3717569 (= e!2301742 (matchR!5302 (derivativeStep!3322 lt!1297542 (head!8023 tl!3933)) (tail!5750 tl!3933)))))

(declare-fun b!3717570 () Bool)

(declare-fun e!2301739 () Bool)

(declare-fun lt!1297595 () Bool)

(declare-fun call!269708 () Bool)

(assert (=> b!3717570 (= e!2301739 (= lt!1297595 call!269708))))

(declare-fun b!3717571 () Bool)

(declare-fun res!1511185 () Bool)

(declare-fun e!2301737 () Bool)

(assert (=> b!3717571 (=> res!1511185 e!2301737)))

(assert (=> b!3717571 (= res!1511185 (not ((_ is ElementMatch!10857) lt!1297542)))))

(declare-fun e!2301741 () Bool)

(assert (=> b!3717571 (= e!2301741 e!2301737)))

(declare-fun b!3717572 () Bool)

(declare-fun e!2301740 () Bool)

(assert (=> b!3717572 (= e!2301740 (not (= (head!8023 tl!3933) (c!642561 lt!1297542))))))

(declare-fun b!3717573 () Bool)

(declare-fun e!2301743 () Bool)

(assert (=> b!3717573 (= e!2301737 e!2301743)))

(declare-fun res!1511183 () Bool)

(assert (=> b!3717573 (=> (not res!1511183) (not e!2301743))))

(assert (=> b!3717573 (= res!1511183 (not lt!1297595))))

(declare-fun b!3717574 () Bool)

(assert (=> b!3717574 (= e!2301742 (nullable!3780 lt!1297542))))

(declare-fun b!3717575 () Bool)

(assert (=> b!3717575 (= e!2301739 e!2301741)))

(declare-fun c!642695 () Bool)

(assert (=> b!3717575 (= c!642695 ((_ is EmptyLang!10857) lt!1297542))))

(declare-fun d!1088432 () Bool)

(assert (=> d!1088432 e!2301739))

(declare-fun c!642694 () Bool)

(assert (=> d!1088432 (= c!642694 ((_ is EmptyExpr!10857) lt!1297542))))

(assert (=> d!1088432 (= lt!1297595 e!2301742)))

(declare-fun c!642693 () Bool)

(assert (=> d!1088432 (= c!642693 (isEmpty!23510 tl!3933))))

(assert (=> d!1088432 (validRegex!4964 lt!1297542)))

(assert (=> d!1088432 (= (matchR!5302 lt!1297542 tl!3933) lt!1297595)))

(declare-fun b!3717576 () Bool)

(declare-fun res!1511187 () Bool)

(assert (=> b!3717576 (=> res!1511187 e!2301737)))

(declare-fun e!2301738 () Bool)

(assert (=> b!3717576 (= res!1511187 e!2301738)))

(declare-fun res!1511188 () Bool)

(assert (=> b!3717576 (=> (not res!1511188) (not e!2301738))))

(assert (=> b!3717576 (= res!1511188 lt!1297595)))

(declare-fun b!3717577 () Bool)

(declare-fun res!1511184 () Bool)

(assert (=> b!3717577 (=> (not res!1511184) (not e!2301738))))

(assert (=> b!3717577 (= res!1511184 (not call!269708))))

(declare-fun b!3717578 () Bool)

(assert (=> b!3717578 (= e!2301743 e!2301740)))

(declare-fun res!1511189 () Bool)

(assert (=> b!3717578 (=> res!1511189 e!2301740)))

(assert (=> b!3717578 (= res!1511189 call!269708)))

(declare-fun b!3717579 () Bool)

(declare-fun res!1511190 () Bool)

(assert (=> b!3717579 (=> res!1511190 e!2301740)))

(assert (=> b!3717579 (= res!1511190 (not (isEmpty!23510 (tail!5750 tl!3933))))))

(declare-fun b!3717580 () Bool)

(assert (=> b!3717580 (= e!2301741 (not lt!1297595))))

(declare-fun bm!269703 () Bool)

(assert (=> bm!269703 (= call!269708 (isEmpty!23510 tl!3933))))

(declare-fun b!3717581 () Bool)

(assert (=> b!3717581 (= e!2301738 (= (head!8023 tl!3933) (c!642561 lt!1297542)))))

(declare-fun b!3717582 () Bool)

(declare-fun res!1511186 () Bool)

(assert (=> b!3717582 (=> (not res!1511186) (not e!2301738))))

(assert (=> b!3717582 (= res!1511186 (isEmpty!23510 (tail!5750 tl!3933)))))

(assert (= (and d!1088432 c!642693) b!3717574))

(assert (= (and d!1088432 (not c!642693)) b!3717569))

(assert (= (and d!1088432 c!642694) b!3717570))

(assert (= (and d!1088432 (not c!642694)) b!3717575))

(assert (= (and b!3717575 c!642695) b!3717580))

(assert (= (and b!3717575 (not c!642695)) b!3717571))

(assert (= (and b!3717571 (not res!1511185)) b!3717576))

(assert (= (and b!3717576 res!1511188) b!3717577))

(assert (= (and b!3717577 res!1511184) b!3717582))

(assert (= (and b!3717582 res!1511186) b!3717581))

(assert (= (and b!3717576 (not res!1511187)) b!3717573))

(assert (= (and b!3717573 res!1511183) b!3717578))

(assert (= (and b!3717578 (not res!1511189)) b!3717579))

(assert (= (and b!3717579 (not res!1511190)) b!3717572))

(assert (= (or b!3717570 b!3717577 b!3717578) bm!269703))

(assert (=> b!3717569 m!4222637))

(assert (=> b!3717569 m!4222637))

(declare-fun m!4222885 () Bool)

(assert (=> b!3717569 m!4222885))

(assert (=> b!3717569 m!4222641))

(assert (=> b!3717569 m!4222885))

(assert (=> b!3717569 m!4222641))

(declare-fun m!4222887 () Bool)

(assert (=> b!3717569 m!4222887))

(assert (=> b!3717581 m!4222637))

(declare-fun m!4222889 () Bool)

(assert (=> b!3717574 m!4222889))

(assert (=> b!3717572 m!4222637))

(assert (=> b!3717579 m!4222641))

(assert (=> b!3717579 m!4222641))

(assert (=> b!3717579 m!4222647))

(assert (=> bm!269703 m!4222649))

(assert (=> d!1088432 m!4222649))

(declare-fun m!4222891 () Bool)

(assert (=> d!1088432 m!4222891))

(assert (=> b!3717582 m!4222641))

(assert (=> b!3717582 m!4222641))

(assert (=> b!3717582 m!4222647))

(assert (=> b!3717155 d!1088432))

(declare-fun d!1088436 () Bool)

(declare-fun e!2301761 () Bool)

(assert (=> d!1088436 e!2301761))

(declare-fun res!1511197 () Bool)

(assert (=> d!1088436 (=> res!1511197 e!2301761)))

(assert (=> d!1088436 (= res!1511197 (matchR!5302 lt!1297545 tl!3933))))

(declare-fun lt!1297602 () Unit!57512)

(declare-fun choose!22200 (Regex!10857 Regex!10857 List!39738) Unit!57512)

(assert (=> d!1088436 (= lt!1297602 (choose!22200 lt!1297545 lt!1297539 tl!3933))))

(declare-fun e!2301760 () Bool)

(assert (=> d!1088436 e!2301760))

(declare-fun res!1511198 () Bool)

(assert (=> d!1088436 (=> (not res!1511198) (not e!2301760))))

(assert (=> d!1088436 (= res!1511198 (validRegex!4964 lt!1297545))))

(assert (=> d!1088436 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!334 lt!1297545 lt!1297539 tl!3933) lt!1297602)))

(declare-fun b!3717624 () Bool)

(assert (=> b!3717624 (= e!2301760 (validRegex!4964 lt!1297539))))

(declare-fun b!3717625 () Bool)

(assert (=> b!3717625 (= e!2301761 (matchR!5302 lt!1297539 tl!3933))))

(assert (= (and d!1088436 res!1511198) b!3717624))

(assert (= (and d!1088436 (not res!1511197)) b!3717625))

(assert (=> d!1088436 m!4222593))

(declare-fun m!4222893 () Bool)

(assert (=> d!1088436 m!4222893))

(declare-fun m!4222895 () Bool)

(assert (=> d!1088436 m!4222895))

(assert (=> b!3717624 m!4222651))

(assert (=> b!3717625 m!4222611))

(assert (=> b!3717155 d!1088436))

(declare-fun b!3717626 () Bool)

(declare-fun e!2301764 () Regex!10857)

(declare-fun e!2301762 () Regex!10857)

(assert (=> b!3717626 (= e!2301764 e!2301762)))

(declare-fun c!642698 () Bool)

(assert (=> b!3717626 (= c!642698 ((_ is ElementMatch!10857) (regOne!22226 r!26326)))))

(declare-fun bm!269704 () Bool)

(declare-fun c!642697 () Bool)

(declare-fun call!269711 () Regex!10857)

(assert (=> bm!269704 (= call!269711 (derivativeStep!3322 (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326))) c!13576))))

(declare-fun d!1088438 () Bool)

(declare-fun lt!1297603 () Regex!10857)

(assert (=> d!1088438 (validRegex!4964 lt!1297603)))

(assert (=> d!1088438 (= lt!1297603 e!2301764)))

(declare-fun c!642701 () Bool)

(assert (=> d!1088438 (= c!642701 (or ((_ is EmptyExpr!10857) (regOne!22226 r!26326)) ((_ is EmptyLang!10857) (regOne!22226 r!26326))))))

(assert (=> d!1088438 (validRegex!4964 (regOne!22226 r!26326))))

(assert (=> d!1088438 (= (derivativeStep!3322 (regOne!22226 r!26326) c!13576) lt!1297603)))

(declare-fun bm!269705 () Bool)

(declare-fun call!269709 () Regex!10857)

(assert (=> bm!269705 (= call!269709 call!269711)))

(declare-fun e!2301766 () Regex!10857)

(declare-fun b!3717627 () Bool)

(declare-fun call!269712 () Regex!10857)

(assert (=> b!3717627 (= e!2301766 (Union!10857 (Concat!17128 call!269709 (regTwo!22226 (regOne!22226 r!26326))) call!269712))))

(declare-fun bm!269706 () Bool)

(declare-fun call!269710 () Regex!10857)

(assert (=> bm!269706 (= call!269712 call!269710)))

(declare-fun b!3717628 () Bool)

(declare-fun c!642699 () Bool)

(assert (=> b!3717628 (= c!642699 (nullable!3780 (regOne!22226 (regOne!22226 r!26326))))))

(declare-fun e!2301763 () Regex!10857)

(assert (=> b!3717628 (= e!2301763 e!2301766)))

(declare-fun b!3717629 () Bool)

(assert (=> b!3717629 (= e!2301763 (Concat!17128 call!269712 (regOne!22226 r!26326)))))

(declare-fun b!3717630 () Bool)

(assert (=> b!3717630 (= e!2301764 EmptyLang!10857)))

(declare-fun b!3717631 () Bool)

(assert (=> b!3717631 (= c!642697 ((_ is Union!10857) (regOne!22226 r!26326)))))

(declare-fun e!2301765 () Regex!10857)

(assert (=> b!3717631 (= e!2301762 e!2301765)))

(declare-fun b!3717632 () Bool)

(assert (=> b!3717632 (= e!2301765 e!2301763)))

(declare-fun c!642700 () Bool)

(assert (=> b!3717632 (= c!642700 ((_ is Star!10857) (regOne!22226 r!26326)))))

(declare-fun b!3717633 () Bool)

(assert (=> b!3717633 (= e!2301766 (Union!10857 (Concat!17128 call!269709 (regTwo!22226 (regOne!22226 r!26326))) EmptyLang!10857))))

(declare-fun b!3717634 () Bool)

(assert (=> b!3717634 (= e!2301762 (ite (= c!13576 (c!642561 (regOne!22226 r!26326))) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3717635 () Bool)

(assert (=> b!3717635 (= e!2301765 (Union!10857 call!269711 call!269710))))

(declare-fun bm!269707 () Bool)

(assert (=> bm!269707 (= call!269710 (derivativeStep!3322 (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326)))) c!13576))))

(assert (= (and d!1088438 c!642701) b!3717630))

(assert (= (and d!1088438 (not c!642701)) b!3717626))

(assert (= (and b!3717626 c!642698) b!3717634))

(assert (= (and b!3717626 (not c!642698)) b!3717631))

(assert (= (and b!3717631 c!642697) b!3717635))

(assert (= (and b!3717631 (not c!642697)) b!3717632))

(assert (= (and b!3717632 c!642700) b!3717629))

(assert (= (and b!3717632 (not c!642700)) b!3717628))

(assert (= (and b!3717628 c!642699) b!3717627))

(assert (= (and b!3717628 (not c!642699)) b!3717633))

(assert (= (or b!3717627 b!3717633) bm!269705))

(assert (= (or b!3717629 b!3717627) bm!269706))

(assert (= (or b!3717635 bm!269706) bm!269707))

(assert (= (or b!3717635 bm!269705) bm!269704))

(declare-fun m!4222897 () Bool)

(assert (=> bm!269704 m!4222897))

(declare-fun m!4222899 () Bool)

(assert (=> d!1088438 m!4222899))

(declare-fun m!4222901 () Bool)

(assert (=> d!1088438 m!4222901))

(declare-fun m!4222903 () Bool)

(assert (=> b!3717628 m!4222903))

(declare-fun m!4222905 () Bool)

(assert (=> bm!269707 m!4222905))

(assert (=> b!3717155 d!1088438))

(declare-fun d!1088440 () Bool)

(declare-fun lt!1297604 () Regex!10857)

(assert (=> d!1088440 (validRegex!4964 lt!1297604)))

(declare-fun e!2301767 () Regex!10857)

(assert (=> d!1088440 (= lt!1297604 e!2301767)))

(declare-fun c!642702 () Bool)

(assert (=> d!1088440 (= c!642702 ((_ is Cons!39614) tl!3933))))

(assert (=> d!1088440 (validRegex!4964 lt!1297542)))

(assert (=> d!1088440 (= (derivative!371 lt!1297542 tl!3933) lt!1297604)))

(declare-fun b!3717636 () Bool)

(assert (=> b!3717636 (= e!2301767 (derivative!371 (derivativeStep!3322 lt!1297542 (h!45034 tl!3933)) (t!302421 tl!3933)))))

(declare-fun b!3717637 () Bool)

(assert (=> b!3717637 (= e!2301767 lt!1297542)))

(assert (= (and d!1088440 c!642702) b!3717636))

(assert (= (and d!1088440 (not c!642702)) b!3717637))

(declare-fun m!4222907 () Bool)

(assert (=> d!1088440 m!4222907))

(assert (=> d!1088440 m!4222891))

(declare-fun m!4222909 () Bool)

(assert (=> b!3717636 m!4222909))

(assert (=> b!3717636 m!4222909))

(declare-fun m!4222911 () Bool)

(assert (=> b!3717636 m!4222911))

(assert (=> b!3717155 d!1088440))

(declare-fun d!1088442 () Bool)

(assert (=> d!1088442 (= (matchR!5302 lt!1297542 tl!3933) (matchR!5302 (derivative!371 lt!1297542 tl!3933) Nil!39614))))

(declare-fun lt!1297605 () Unit!57512)

(assert (=> d!1088442 (= lt!1297605 (choose!22199 lt!1297542 tl!3933))))

(assert (=> d!1088442 (validRegex!4964 lt!1297542)))

(assert (=> d!1088442 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!248 lt!1297542 tl!3933) lt!1297605)))

(declare-fun bs!574877 () Bool)

(assert (= bs!574877 d!1088442))

(assert (=> bs!574877 m!4222891))

(assert (=> bs!574877 m!4222603))

(assert (=> bs!574877 m!4222603))

(assert (=> bs!574877 m!4222605))

(assert (=> bs!574877 m!4222599))

(declare-fun m!4222913 () Bool)

(assert (=> bs!574877 m!4222913))

(assert (=> b!3717155 d!1088442))

(declare-fun b!3717638 () Bool)

(declare-fun e!2301770 () Regex!10857)

(declare-fun e!2301768 () Regex!10857)

(assert (=> b!3717638 (= e!2301770 e!2301768)))

(declare-fun c!642704 () Bool)

(assert (=> b!3717638 (= c!642704 ((_ is ElementMatch!10857) (regTwo!22226 r!26326)))))

(declare-fun call!269715 () Regex!10857)

(declare-fun bm!269708 () Bool)

(declare-fun c!642703 () Bool)

(assert (=> bm!269708 (= call!269715 (derivativeStep!3322 (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))) c!13576))))

(declare-fun d!1088444 () Bool)

(declare-fun lt!1297606 () Regex!10857)

(assert (=> d!1088444 (validRegex!4964 lt!1297606)))

(assert (=> d!1088444 (= lt!1297606 e!2301770)))

(declare-fun c!642707 () Bool)

(assert (=> d!1088444 (= c!642707 (or ((_ is EmptyExpr!10857) (regTwo!22226 r!26326)) ((_ is EmptyLang!10857) (regTwo!22226 r!26326))))))

(assert (=> d!1088444 (validRegex!4964 (regTwo!22226 r!26326))))

(assert (=> d!1088444 (= (derivativeStep!3322 (regTwo!22226 r!26326) c!13576) lt!1297606)))

(declare-fun bm!269709 () Bool)

(declare-fun call!269713 () Regex!10857)

(assert (=> bm!269709 (= call!269713 call!269715)))

(declare-fun call!269716 () Regex!10857)

(declare-fun b!3717639 () Bool)

(declare-fun e!2301772 () Regex!10857)

(assert (=> b!3717639 (= e!2301772 (Union!10857 (Concat!17128 call!269713 (regTwo!22226 (regTwo!22226 r!26326))) call!269716))))

(declare-fun bm!269710 () Bool)

(declare-fun call!269714 () Regex!10857)

(assert (=> bm!269710 (= call!269716 call!269714)))

(declare-fun b!3717640 () Bool)

(declare-fun c!642705 () Bool)

(assert (=> b!3717640 (= c!642705 (nullable!3780 (regOne!22226 (regTwo!22226 r!26326))))))

(declare-fun e!2301769 () Regex!10857)

(assert (=> b!3717640 (= e!2301769 e!2301772)))

(declare-fun b!3717641 () Bool)

(assert (=> b!3717641 (= e!2301769 (Concat!17128 call!269716 (regTwo!22226 r!26326)))))

(declare-fun b!3717642 () Bool)

(assert (=> b!3717642 (= e!2301770 EmptyLang!10857)))

(declare-fun b!3717643 () Bool)

(assert (=> b!3717643 (= c!642703 ((_ is Union!10857) (regTwo!22226 r!26326)))))

(declare-fun e!2301771 () Regex!10857)

(assert (=> b!3717643 (= e!2301768 e!2301771)))

(declare-fun b!3717644 () Bool)

(assert (=> b!3717644 (= e!2301771 e!2301769)))

(declare-fun c!642706 () Bool)

(assert (=> b!3717644 (= c!642706 ((_ is Star!10857) (regTwo!22226 r!26326)))))

(declare-fun b!3717645 () Bool)

(assert (=> b!3717645 (= e!2301772 (Union!10857 (Concat!17128 call!269713 (regTwo!22226 (regTwo!22226 r!26326))) EmptyLang!10857))))

(declare-fun b!3717646 () Bool)

(assert (=> b!3717646 (= e!2301768 (ite (= c!13576 (c!642561 (regTwo!22226 r!26326))) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3717647 () Bool)

(assert (=> b!3717647 (= e!2301771 (Union!10857 call!269715 call!269714))))

(declare-fun bm!269711 () Bool)

(assert (=> bm!269711 (= call!269714 (derivativeStep!3322 (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))) c!13576))))

(assert (= (and d!1088444 c!642707) b!3717642))

(assert (= (and d!1088444 (not c!642707)) b!3717638))

(assert (= (and b!3717638 c!642704) b!3717646))

(assert (= (and b!3717638 (not c!642704)) b!3717643))

(assert (= (and b!3717643 c!642703) b!3717647))

(assert (= (and b!3717643 (not c!642703)) b!3717644))

(assert (= (and b!3717644 c!642706) b!3717641))

(assert (= (and b!3717644 (not c!642706)) b!3717640))

(assert (= (and b!3717640 c!642705) b!3717639))

(assert (= (and b!3717640 (not c!642705)) b!3717645))

(assert (= (or b!3717639 b!3717645) bm!269709))

(assert (= (or b!3717641 b!3717639) bm!269710))

(assert (= (or b!3717647 bm!269710) bm!269711))

(assert (= (or b!3717647 bm!269709) bm!269708))

(declare-fun m!4222915 () Bool)

(assert (=> bm!269708 m!4222915))

(declare-fun m!4222917 () Bool)

(assert (=> d!1088444 m!4222917))

(assert (=> d!1088444 m!4222629))

(declare-fun m!4222919 () Bool)

(assert (=> b!3717640 m!4222919))

(declare-fun m!4222921 () Bool)

(assert (=> bm!269711 m!4222921))

(assert (=> b!3717155 d!1088444))

(declare-fun b!3717648 () Bool)

(declare-fun e!2301778 () Bool)

(assert (=> b!3717648 (= e!2301778 (matchR!5302 (derivativeStep!3322 lt!1297545 (head!8023 tl!3933)) (tail!5750 tl!3933)))))

(declare-fun b!3717649 () Bool)

(declare-fun e!2301775 () Bool)

(declare-fun lt!1297607 () Bool)

(declare-fun call!269717 () Bool)

(assert (=> b!3717649 (= e!2301775 (= lt!1297607 call!269717))))

(declare-fun b!3717650 () Bool)

(declare-fun res!1511201 () Bool)

(declare-fun e!2301773 () Bool)

(assert (=> b!3717650 (=> res!1511201 e!2301773)))

(assert (=> b!3717650 (= res!1511201 (not ((_ is ElementMatch!10857) lt!1297545)))))

(declare-fun e!2301777 () Bool)

(assert (=> b!3717650 (= e!2301777 e!2301773)))

(declare-fun b!3717651 () Bool)

(declare-fun e!2301776 () Bool)

(assert (=> b!3717651 (= e!2301776 (not (= (head!8023 tl!3933) (c!642561 lt!1297545))))))

(declare-fun b!3717652 () Bool)

(declare-fun e!2301779 () Bool)

(assert (=> b!3717652 (= e!2301773 e!2301779)))

(declare-fun res!1511199 () Bool)

(assert (=> b!3717652 (=> (not res!1511199) (not e!2301779))))

(assert (=> b!3717652 (= res!1511199 (not lt!1297607))))

(declare-fun b!3717653 () Bool)

(assert (=> b!3717653 (= e!2301778 (nullable!3780 lt!1297545))))

(declare-fun b!3717654 () Bool)

(assert (=> b!3717654 (= e!2301775 e!2301777)))

(declare-fun c!642710 () Bool)

(assert (=> b!3717654 (= c!642710 ((_ is EmptyLang!10857) lt!1297545))))

(declare-fun d!1088446 () Bool)

(assert (=> d!1088446 e!2301775))

(declare-fun c!642709 () Bool)

(assert (=> d!1088446 (= c!642709 ((_ is EmptyExpr!10857) lt!1297545))))

(assert (=> d!1088446 (= lt!1297607 e!2301778)))

(declare-fun c!642708 () Bool)

(assert (=> d!1088446 (= c!642708 (isEmpty!23510 tl!3933))))

(assert (=> d!1088446 (validRegex!4964 lt!1297545)))

(assert (=> d!1088446 (= (matchR!5302 lt!1297545 tl!3933) lt!1297607)))

(declare-fun b!3717655 () Bool)

(declare-fun res!1511203 () Bool)

(assert (=> b!3717655 (=> res!1511203 e!2301773)))

(declare-fun e!2301774 () Bool)

(assert (=> b!3717655 (= res!1511203 e!2301774)))

(declare-fun res!1511204 () Bool)

(assert (=> b!3717655 (=> (not res!1511204) (not e!2301774))))

(assert (=> b!3717655 (= res!1511204 lt!1297607)))

(declare-fun b!3717656 () Bool)

(declare-fun res!1511200 () Bool)

(assert (=> b!3717656 (=> (not res!1511200) (not e!2301774))))

(assert (=> b!3717656 (= res!1511200 (not call!269717))))

(declare-fun b!3717657 () Bool)

(assert (=> b!3717657 (= e!2301779 e!2301776)))

(declare-fun res!1511205 () Bool)

(assert (=> b!3717657 (=> res!1511205 e!2301776)))

(assert (=> b!3717657 (= res!1511205 call!269717)))

(declare-fun b!3717658 () Bool)

(declare-fun res!1511206 () Bool)

(assert (=> b!3717658 (=> res!1511206 e!2301776)))

(assert (=> b!3717658 (= res!1511206 (not (isEmpty!23510 (tail!5750 tl!3933))))))

(declare-fun b!3717659 () Bool)

(assert (=> b!3717659 (= e!2301777 (not lt!1297607))))

(declare-fun bm!269712 () Bool)

(assert (=> bm!269712 (= call!269717 (isEmpty!23510 tl!3933))))

(declare-fun b!3717660 () Bool)

(assert (=> b!3717660 (= e!2301774 (= (head!8023 tl!3933) (c!642561 lt!1297545)))))

(declare-fun b!3717661 () Bool)

(declare-fun res!1511202 () Bool)

(assert (=> b!3717661 (=> (not res!1511202) (not e!2301774))))

(assert (=> b!3717661 (= res!1511202 (isEmpty!23510 (tail!5750 tl!3933)))))

(assert (= (and d!1088446 c!642708) b!3717653))

(assert (= (and d!1088446 (not c!642708)) b!3717648))

(assert (= (and d!1088446 c!642709) b!3717649))

(assert (= (and d!1088446 (not c!642709)) b!3717654))

(assert (= (and b!3717654 c!642710) b!3717659))

(assert (= (and b!3717654 (not c!642710)) b!3717650))

(assert (= (and b!3717650 (not res!1511201)) b!3717655))

(assert (= (and b!3717655 res!1511204) b!3717656))

(assert (= (and b!3717656 res!1511200) b!3717661))

(assert (= (and b!3717661 res!1511202) b!3717660))

(assert (= (and b!3717655 (not res!1511203)) b!3717652))

(assert (= (and b!3717652 res!1511199) b!3717657))

(assert (= (and b!3717657 (not res!1511205)) b!3717658))

(assert (= (and b!3717658 (not res!1511206)) b!3717651))

(assert (= (or b!3717649 b!3717656 b!3717657) bm!269712))

(assert (=> b!3717648 m!4222637))

(assert (=> b!3717648 m!4222637))

(declare-fun m!4222923 () Bool)

(assert (=> b!3717648 m!4222923))

(assert (=> b!3717648 m!4222641))

(assert (=> b!3717648 m!4222923))

(assert (=> b!3717648 m!4222641))

(declare-fun m!4222925 () Bool)

(assert (=> b!3717648 m!4222925))

(assert (=> b!3717660 m!4222637))

(declare-fun m!4222927 () Bool)

(assert (=> b!3717653 m!4222927))

(assert (=> b!3717651 m!4222637))

(assert (=> b!3717658 m!4222641))

(assert (=> b!3717658 m!4222641))

(assert (=> b!3717658 m!4222647))

(assert (=> bm!269712 m!4222649))

(assert (=> d!1088446 m!4222649))

(assert (=> d!1088446 m!4222895))

(assert (=> b!3717661 m!4222641))

(assert (=> b!3717661 m!4222641))

(assert (=> b!3717661 m!4222647))

(assert (=> b!3717155 d!1088446))

(declare-fun b!3717662 () Bool)

(declare-fun e!2301785 () Bool)

(assert (=> b!3717662 (= e!2301785 (matchR!5302 (derivativeStep!3322 (derivative!371 lt!1297542 tl!3933) (head!8023 Nil!39614)) (tail!5750 Nil!39614)))))

(declare-fun b!3717663 () Bool)

(declare-fun e!2301782 () Bool)

(declare-fun lt!1297608 () Bool)

(declare-fun call!269718 () Bool)

(assert (=> b!3717663 (= e!2301782 (= lt!1297608 call!269718))))

(declare-fun b!3717664 () Bool)

(declare-fun res!1511209 () Bool)

(declare-fun e!2301780 () Bool)

(assert (=> b!3717664 (=> res!1511209 e!2301780)))

(assert (=> b!3717664 (= res!1511209 (not ((_ is ElementMatch!10857) (derivative!371 lt!1297542 tl!3933))))))

(declare-fun e!2301784 () Bool)

(assert (=> b!3717664 (= e!2301784 e!2301780)))

(declare-fun b!3717665 () Bool)

(declare-fun e!2301783 () Bool)

(assert (=> b!3717665 (= e!2301783 (not (= (head!8023 Nil!39614) (c!642561 (derivative!371 lt!1297542 tl!3933)))))))

(declare-fun b!3717666 () Bool)

(declare-fun e!2301786 () Bool)

(assert (=> b!3717666 (= e!2301780 e!2301786)))

(declare-fun res!1511207 () Bool)

(assert (=> b!3717666 (=> (not res!1511207) (not e!2301786))))

(assert (=> b!3717666 (= res!1511207 (not lt!1297608))))

(declare-fun b!3717667 () Bool)

(assert (=> b!3717667 (= e!2301785 (nullable!3780 (derivative!371 lt!1297542 tl!3933)))))

(declare-fun b!3717668 () Bool)

(assert (=> b!3717668 (= e!2301782 e!2301784)))

(declare-fun c!642713 () Bool)

(assert (=> b!3717668 (= c!642713 ((_ is EmptyLang!10857) (derivative!371 lt!1297542 tl!3933)))))

(declare-fun d!1088448 () Bool)

(assert (=> d!1088448 e!2301782))

(declare-fun c!642712 () Bool)

(assert (=> d!1088448 (= c!642712 ((_ is EmptyExpr!10857) (derivative!371 lt!1297542 tl!3933)))))

(assert (=> d!1088448 (= lt!1297608 e!2301785)))

(declare-fun c!642711 () Bool)

(assert (=> d!1088448 (= c!642711 (isEmpty!23510 Nil!39614))))

(assert (=> d!1088448 (validRegex!4964 (derivative!371 lt!1297542 tl!3933))))

(assert (=> d!1088448 (= (matchR!5302 (derivative!371 lt!1297542 tl!3933) Nil!39614) lt!1297608)))

(declare-fun b!3717669 () Bool)

(declare-fun res!1511211 () Bool)

(assert (=> b!3717669 (=> res!1511211 e!2301780)))

(declare-fun e!2301781 () Bool)

(assert (=> b!3717669 (= res!1511211 e!2301781)))

(declare-fun res!1511212 () Bool)

(assert (=> b!3717669 (=> (not res!1511212) (not e!2301781))))

(assert (=> b!3717669 (= res!1511212 lt!1297608)))

(declare-fun b!3717670 () Bool)

(declare-fun res!1511208 () Bool)

(assert (=> b!3717670 (=> (not res!1511208) (not e!2301781))))

(assert (=> b!3717670 (= res!1511208 (not call!269718))))

(declare-fun b!3717671 () Bool)

(assert (=> b!3717671 (= e!2301786 e!2301783)))

(declare-fun res!1511213 () Bool)

(assert (=> b!3717671 (=> res!1511213 e!2301783)))

(assert (=> b!3717671 (= res!1511213 call!269718)))

(declare-fun b!3717672 () Bool)

(declare-fun res!1511214 () Bool)

(assert (=> b!3717672 (=> res!1511214 e!2301783)))

(assert (=> b!3717672 (= res!1511214 (not (isEmpty!23510 (tail!5750 Nil!39614))))))

(declare-fun b!3717673 () Bool)

(assert (=> b!3717673 (= e!2301784 (not lt!1297608))))

(declare-fun bm!269713 () Bool)

(assert (=> bm!269713 (= call!269718 (isEmpty!23510 Nil!39614))))

(declare-fun b!3717674 () Bool)

(assert (=> b!3717674 (= e!2301781 (= (head!8023 Nil!39614) (c!642561 (derivative!371 lt!1297542 tl!3933))))))

(declare-fun b!3717675 () Bool)

(declare-fun res!1511210 () Bool)

(assert (=> b!3717675 (=> (not res!1511210) (not e!2301781))))

(assert (=> b!3717675 (= res!1511210 (isEmpty!23510 (tail!5750 Nil!39614)))))

(assert (= (and d!1088448 c!642711) b!3717667))

(assert (= (and d!1088448 (not c!642711)) b!3717662))

(assert (= (and d!1088448 c!642712) b!3717663))

(assert (= (and d!1088448 (not c!642712)) b!3717668))

(assert (= (and b!3717668 c!642713) b!3717673))

(assert (= (and b!3717668 (not c!642713)) b!3717664))

(assert (= (and b!3717664 (not res!1511209)) b!3717669))

(assert (= (and b!3717669 res!1511212) b!3717670))

(assert (= (and b!3717670 res!1511208) b!3717675))

(assert (= (and b!3717675 res!1511210) b!3717674))

(assert (= (and b!3717669 (not res!1511211)) b!3717666))

(assert (= (and b!3717666 res!1511207) b!3717671))

(assert (= (and b!3717671 (not res!1511213)) b!3717672))

(assert (= (and b!3717672 (not res!1511214)) b!3717665))

(assert (= (or b!3717663 b!3717670 b!3717671) bm!269713))

(assert (=> b!3717662 m!4222797))

(assert (=> b!3717662 m!4222603))

(assert (=> b!3717662 m!4222797))

(declare-fun m!4222929 () Bool)

(assert (=> b!3717662 m!4222929))

(assert (=> b!3717662 m!4222801))

(assert (=> b!3717662 m!4222929))

(assert (=> b!3717662 m!4222801))

(declare-fun m!4222931 () Bool)

(assert (=> b!3717662 m!4222931))

(assert (=> b!3717674 m!4222797))

(assert (=> b!3717667 m!4222603))

(declare-fun m!4222933 () Bool)

(assert (=> b!3717667 m!4222933))

(assert (=> b!3717665 m!4222797))

(assert (=> b!3717672 m!4222801))

(assert (=> b!3717672 m!4222801))

(assert (=> b!3717672 m!4222805))

(assert (=> bm!269713 m!4222807))

(assert (=> d!1088448 m!4222807))

(assert (=> d!1088448 m!4222603))

(declare-fun m!4222935 () Bool)

(assert (=> d!1088448 m!4222935))

(assert (=> b!3717675 m!4222801))

(assert (=> b!3717675 m!4222801))

(assert (=> b!3717675 m!4222805))

(assert (=> b!3717155 d!1088448))

(declare-fun b!3717680 () Bool)

(declare-fun e!2301789 () Bool)

(declare-fun tp!1130913 () Bool)

(assert (=> b!3717680 (= e!2301789 (and tp_is_empty!18729 tp!1130913))))

(assert (=> b!3717153 (= tp!1130870 e!2301789)))

(assert (= (and b!3717153 ((_ is Cons!39614) (t!302421 tl!3933))) b!3717680))

(declare-fun b!3717693 () Bool)

(declare-fun e!2301792 () Bool)

(declare-fun tp!1130928 () Bool)

(assert (=> b!3717693 (= e!2301792 tp!1130928)))

(assert (=> b!3717157 (= tp!1130867 e!2301792)))

(declare-fun b!3717694 () Bool)

(declare-fun tp!1130927 () Bool)

(declare-fun tp!1130924 () Bool)

(assert (=> b!3717694 (= e!2301792 (and tp!1130927 tp!1130924))))

(declare-fun b!3717692 () Bool)

(declare-fun tp!1130925 () Bool)

(declare-fun tp!1130926 () Bool)

(assert (=> b!3717692 (= e!2301792 (and tp!1130925 tp!1130926))))

(declare-fun b!3717691 () Bool)

(assert (=> b!3717691 (= e!2301792 tp_is_empty!18729)))

(assert (= (and b!3717157 ((_ is ElementMatch!10857) (reg!11186 r!26326))) b!3717691))

(assert (= (and b!3717157 ((_ is Concat!17128) (reg!11186 r!26326))) b!3717692))

(assert (= (and b!3717157 ((_ is Star!10857) (reg!11186 r!26326))) b!3717693))

(assert (= (and b!3717157 ((_ is Union!10857) (reg!11186 r!26326))) b!3717694))

(declare-fun b!3717697 () Bool)

(declare-fun e!2301793 () Bool)

(declare-fun tp!1130933 () Bool)

(assert (=> b!3717697 (= e!2301793 tp!1130933)))

(assert (=> b!3717149 (= tp!1130872 e!2301793)))

(declare-fun b!3717698 () Bool)

(declare-fun tp!1130932 () Bool)

(declare-fun tp!1130929 () Bool)

(assert (=> b!3717698 (= e!2301793 (and tp!1130932 tp!1130929))))

(declare-fun b!3717696 () Bool)

(declare-fun tp!1130930 () Bool)

(declare-fun tp!1130931 () Bool)

(assert (=> b!3717696 (= e!2301793 (and tp!1130930 tp!1130931))))

(declare-fun b!3717695 () Bool)

(assert (=> b!3717695 (= e!2301793 tp_is_empty!18729)))

(assert (= (and b!3717149 ((_ is ElementMatch!10857) (regOne!22226 r!26326))) b!3717695))

(assert (= (and b!3717149 ((_ is Concat!17128) (regOne!22226 r!26326))) b!3717696))

(assert (= (and b!3717149 ((_ is Star!10857) (regOne!22226 r!26326))) b!3717697))

(assert (= (and b!3717149 ((_ is Union!10857) (regOne!22226 r!26326))) b!3717698))

(declare-fun b!3717701 () Bool)

(declare-fun e!2301794 () Bool)

(declare-fun tp!1130938 () Bool)

(assert (=> b!3717701 (= e!2301794 tp!1130938)))

(assert (=> b!3717149 (= tp!1130869 e!2301794)))

(declare-fun b!3717702 () Bool)

(declare-fun tp!1130937 () Bool)

(declare-fun tp!1130934 () Bool)

(assert (=> b!3717702 (= e!2301794 (and tp!1130937 tp!1130934))))

(declare-fun b!3717700 () Bool)

(declare-fun tp!1130935 () Bool)

(declare-fun tp!1130936 () Bool)

(assert (=> b!3717700 (= e!2301794 (and tp!1130935 tp!1130936))))

(declare-fun b!3717699 () Bool)

(assert (=> b!3717699 (= e!2301794 tp_is_empty!18729)))

(assert (= (and b!3717149 ((_ is ElementMatch!10857) (regTwo!22226 r!26326))) b!3717699))

(assert (= (and b!3717149 ((_ is Concat!17128) (regTwo!22226 r!26326))) b!3717700))

(assert (= (and b!3717149 ((_ is Star!10857) (regTwo!22226 r!26326))) b!3717701))

(assert (= (and b!3717149 ((_ is Union!10857) (regTwo!22226 r!26326))) b!3717702))

(declare-fun b!3717705 () Bool)

(declare-fun e!2301795 () Bool)

(declare-fun tp!1130943 () Bool)

(assert (=> b!3717705 (= e!2301795 tp!1130943)))

(assert (=> b!3717150 (= tp!1130871 e!2301795)))

(declare-fun b!3717706 () Bool)

(declare-fun tp!1130942 () Bool)

(declare-fun tp!1130939 () Bool)

(assert (=> b!3717706 (= e!2301795 (and tp!1130942 tp!1130939))))

(declare-fun b!3717704 () Bool)

(declare-fun tp!1130940 () Bool)

(declare-fun tp!1130941 () Bool)

(assert (=> b!3717704 (= e!2301795 (and tp!1130940 tp!1130941))))

(declare-fun b!3717703 () Bool)

(assert (=> b!3717703 (= e!2301795 tp_is_empty!18729)))

(assert (= (and b!3717150 ((_ is ElementMatch!10857) (regOne!22227 r!26326))) b!3717703))

(assert (= (and b!3717150 ((_ is Concat!17128) (regOne!22227 r!26326))) b!3717704))

(assert (= (and b!3717150 ((_ is Star!10857) (regOne!22227 r!26326))) b!3717705))

(assert (= (and b!3717150 ((_ is Union!10857) (regOne!22227 r!26326))) b!3717706))

(declare-fun b!3717709 () Bool)

(declare-fun e!2301796 () Bool)

(declare-fun tp!1130948 () Bool)

(assert (=> b!3717709 (= e!2301796 tp!1130948)))

(assert (=> b!3717150 (= tp!1130868 e!2301796)))

(declare-fun b!3717710 () Bool)

(declare-fun tp!1130947 () Bool)

(declare-fun tp!1130944 () Bool)

(assert (=> b!3717710 (= e!2301796 (and tp!1130947 tp!1130944))))

(declare-fun b!3717708 () Bool)

(declare-fun tp!1130945 () Bool)

(declare-fun tp!1130946 () Bool)

(assert (=> b!3717708 (= e!2301796 (and tp!1130945 tp!1130946))))

(declare-fun b!3717707 () Bool)

(assert (=> b!3717707 (= e!2301796 tp_is_empty!18729)))

(assert (= (and b!3717150 ((_ is ElementMatch!10857) (regTwo!22227 r!26326))) b!3717707))

(assert (= (and b!3717150 ((_ is Concat!17128) (regTwo!22227 r!26326))) b!3717708))

(assert (= (and b!3717150 ((_ is Star!10857) (regTwo!22227 r!26326))) b!3717709))

(assert (= (and b!3717150 ((_ is Union!10857) (regTwo!22227 r!26326))) b!3717710))

(check-sat (not d!1088370) (not b!3717217) (not b!3717665) (not b!3717675) (not b!3717662) (not b!3717227) (not bm!269712) (not d!1088444) (not b!3717708) (not bm!269608) (not b!3717672) (not b!3717579) (not b!3717697) (not b!3717680) (not b!3717696) (not d!1088438) (not d!1088380) (not b!3717229) (not b!3717459) (not b!3717222) (not d!1088442) (not bm!269630) (not bm!269711) (not b!3717709) (not b!3717624) (not d!1088424) (not bm!269632) (not bm!269633) (not b!3717581) (not bm!269681) (not d!1088440) (not b!3717636) (not b!3717628) (not bm!269682) (not bm!269634) (not b!3717331) (not b!3717702) (not b!3717230) (not bm!269629) (not b!3717569) (not b!3717705) (not b!3717220) (not bm!269703) (not b!3717452) (not d!1088406) tp_is_empty!18729 (not b!3717347) (not b!3717457) (not bm!269708) (not d!1088392) (not bm!269713) (not bm!269704) (not b!3717674) (not d!1088354) (not b!3717693) (not d!1088432) (not b!3717582) (not bm!269665) (not b!3717698) (not b!3717648) (not bm!269700) (not b!3717704) (not b!3717461) (not b!3717572) (not b!3717694) (not d!1088378) (not b!3717450) (not d!1088422) (not b!3717706) (not b!3717651) (not b!3717710) (not d!1088408) (not b!3717701) (not b!3717250) (not b!3717439) (not bm!269701) (not bm!269669) (not d!1088358) (not d!1088448) (not b!3717564) (not b!3717574) (not b!3717667) (not b!3717661) (not b!3717658) (not b!3717460) (not b!3717523) (not b!3717700) (not d!1088404) (not b!3717692) (not bm!269668) (not d!1088446) (not b!3717640) (not b!3717625) (not d!1088436) (not d!1088376) (not b!3717660) (not b!3717447) (not bm!269707) (not b!3717653) (not bm!269628))
(check-sat)
(get-model)

(declare-fun b!3718245 () Bool)

(declare-fun res!1511375 () Bool)

(declare-fun e!2302102 () Bool)

(assert (=> b!3718245 (=> (not res!1511375) (not e!2302102))))

(declare-fun call!269850 () Bool)

(assert (=> b!3718245 (= res!1511375 call!269850)))

(declare-fun e!2302103 () Bool)

(assert (=> b!3718245 (= e!2302103 e!2302102)))

(declare-fun bm!269843 () Bool)

(declare-fun c!642854 () Bool)

(assert (=> bm!269843 (= call!269850 (validRegex!4964 (ite c!642854 (regOne!22227 (ite c!642692 (regOne!22227 r!26326) (regTwo!22226 r!26326))) (regTwo!22226 (ite c!642692 (regOne!22227 r!26326) (regTwo!22226 r!26326))))))))

(declare-fun b!3718246 () Bool)

(declare-fun call!269849 () Bool)

(assert (=> b!3718246 (= e!2302102 call!269849)))

(declare-fun b!3718247 () Bool)

(declare-fun e!2302104 () Bool)

(assert (=> b!3718247 (= e!2302104 e!2302103)))

(assert (=> b!3718247 (= c!642854 ((_ is Union!10857) (ite c!642692 (regOne!22227 r!26326) (regTwo!22226 r!26326))))))

(declare-fun call!269848 () Bool)

(declare-fun bm!269844 () Bool)

(declare-fun c!642853 () Bool)

(assert (=> bm!269844 (= call!269848 (validRegex!4964 (ite c!642853 (reg!11186 (ite c!642692 (regOne!22227 r!26326) (regTwo!22226 r!26326))) (ite c!642854 (regTwo!22227 (ite c!642692 (regOne!22227 r!26326) (regTwo!22226 r!26326))) (regOne!22226 (ite c!642692 (regOne!22227 r!26326) (regTwo!22226 r!26326)))))))))

(declare-fun b!3718248 () Bool)

(declare-fun e!2302101 () Bool)

(declare-fun e!2302100 () Bool)

(assert (=> b!3718248 (= e!2302101 e!2302100)))

(declare-fun res!1511372 () Bool)

(assert (=> b!3718248 (=> (not res!1511372) (not e!2302100))))

(assert (=> b!3718248 (= res!1511372 call!269849)))

(declare-fun b!3718249 () Bool)

(declare-fun e!2302098 () Bool)

(assert (=> b!3718249 (= e!2302104 e!2302098)))

(declare-fun res!1511374 () Bool)

(assert (=> b!3718249 (= res!1511374 (not (nullable!3780 (reg!11186 (ite c!642692 (regOne!22227 r!26326) (regTwo!22226 r!26326))))))))

(assert (=> b!3718249 (=> (not res!1511374) (not e!2302098))))

(declare-fun b!3718250 () Bool)

(declare-fun e!2302099 () Bool)

(assert (=> b!3718250 (= e!2302099 e!2302104)))

(assert (=> b!3718250 (= c!642853 ((_ is Star!10857) (ite c!642692 (regOne!22227 r!26326) (regTwo!22226 r!26326))))))

(declare-fun b!3718251 () Bool)

(declare-fun res!1511376 () Bool)

(assert (=> b!3718251 (=> res!1511376 e!2302101)))

(assert (=> b!3718251 (= res!1511376 (not ((_ is Concat!17128) (ite c!642692 (regOne!22227 r!26326) (regTwo!22226 r!26326)))))))

(assert (=> b!3718251 (= e!2302103 e!2302101)))

(declare-fun bm!269845 () Bool)

(assert (=> bm!269845 (= call!269849 call!269848)))

(declare-fun d!1088596 () Bool)

(declare-fun res!1511373 () Bool)

(assert (=> d!1088596 (=> res!1511373 e!2302099)))

(assert (=> d!1088596 (= res!1511373 ((_ is ElementMatch!10857) (ite c!642692 (regOne!22227 r!26326) (regTwo!22226 r!26326))))))

(assert (=> d!1088596 (= (validRegex!4964 (ite c!642692 (regOne!22227 r!26326) (regTwo!22226 r!26326))) e!2302099)))

(declare-fun b!3718252 () Bool)

(assert (=> b!3718252 (= e!2302100 call!269850)))

(declare-fun b!3718253 () Bool)

(assert (=> b!3718253 (= e!2302098 call!269848)))

(assert (= (and d!1088596 (not res!1511373)) b!3718250))

(assert (= (and b!3718250 c!642853) b!3718249))

(assert (= (and b!3718250 (not c!642853)) b!3718247))

(assert (= (and b!3718249 res!1511374) b!3718253))

(assert (= (and b!3718247 c!642854) b!3718245))

(assert (= (and b!3718247 (not c!642854)) b!3718251))

(assert (= (and b!3718245 res!1511375) b!3718246))

(assert (= (and b!3718251 (not res!1511376)) b!3718248))

(assert (= (and b!3718248 res!1511372) b!3718252))

(assert (= (or b!3718246 b!3718248) bm!269845))

(assert (= (or b!3718245 b!3718252) bm!269843))

(assert (= (or b!3718253 bm!269845) bm!269844))

(declare-fun m!4223301 () Bool)

(assert (=> bm!269843 m!4223301))

(declare-fun m!4223303 () Bool)

(assert (=> bm!269844 m!4223303))

(declare-fun m!4223305 () Bool)

(assert (=> b!3718249 m!4223305))

(assert (=> bm!269700 d!1088596))

(assert (=> d!1088442 d!1088432))

(declare-fun b!3718254 () Bool)

(declare-fun res!1511380 () Bool)

(declare-fun e!2302109 () Bool)

(assert (=> b!3718254 (=> (not res!1511380) (not e!2302109))))

(declare-fun call!269853 () Bool)

(assert (=> b!3718254 (= res!1511380 call!269853)))

(declare-fun e!2302110 () Bool)

(assert (=> b!3718254 (= e!2302110 e!2302109)))

(declare-fun bm!269846 () Bool)

(declare-fun c!642856 () Bool)

(assert (=> bm!269846 (= call!269853 (validRegex!4964 (ite c!642856 (regOne!22227 lt!1297542) (regTwo!22226 lt!1297542))))))

(declare-fun b!3718255 () Bool)

(declare-fun call!269852 () Bool)

(assert (=> b!3718255 (= e!2302109 call!269852)))

(declare-fun b!3718256 () Bool)

(declare-fun e!2302111 () Bool)

(assert (=> b!3718256 (= e!2302111 e!2302110)))

(assert (=> b!3718256 (= c!642856 ((_ is Union!10857) lt!1297542))))

(declare-fun bm!269847 () Bool)

(declare-fun call!269851 () Bool)

(declare-fun c!642855 () Bool)

(assert (=> bm!269847 (= call!269851 (validRegex!4964 (ite c!642855 (reg!11186 lt!1297542) (ite c!642856 (regTwo!22227 lt!1297542) (regOne!22226 lt!1297542)))))))

(declare-fun b!3718257 () Bool)

(declare-fun e!2302108 () Bool)

(declare-fun e!2302107 () Bool)

(assert (=> b!3718257 (= e!2302108 e!2302107)))

(declare-fun res!1511377 () Bool)

(assert (=> b!3718257 (=> (not res!1511377) (not e!2302107))))

(assert (=> b!3718257 (= res!1511377 call!269852)))

(declare-fun b!3718258 () Bool)

(declare-fun e!2302105 () Bool)

(assert (=> b!3718258 (= e!2302111 e!2302105)))

(declare-fun res!1511379 () Bool)

(assert (=> b!3718258 (= res!1511379 (not (nullable!3780 (reg!11186 lt!1297542))))))

(assert (=> b!3718258 (=> (not res!1511379) (not e!2302105))))

(declare-fun b!3718259 () Bool)

(declare-fun e!2302106 () Bool)

(assert (=> b!3718259 (= e!2302106 e!2302111)))

(assert (=> b!3718259 (= c!642855 ((_ is Star!10857) lt!1297542))))

(declare-fun b!3718260 () Bool)

(declare-fun res!1511381 () Bool)

(assert (=> b!3718260 (=> res!1511381 e!2302108)))

(assert (=> b!3718260 (= res!1511381 (not ((_ is Concat!17128) lt!1297542)))))

(assert (=> b!3718260 (= e!2302110 e!2302108)))

(declare-fun bm!269848 () Bool)

(assert (=> bm!269848 (= call!269852 call!269851)))

(declare-fun d!1088598 () Bool)

(declare-fun res!1511378 () Bool)

(assert (=> d!1088598 (=> res!1511378 e!2302106)))

(assert (=> d!1088598 (= res!1511378 ((_ is ElementMatch!10857) lt!1297542))))

(assert (=> d!1088598 (= (validRegex!4964 lt!1297542) e!2302106)))

(declare-fun b!3718261 () Bool)

(assert (=> b!3718261 (= e!2302107 call!269853)))

(declare-fun b!3718262 () Bool)

(assert (=> b!3718262 (= e!2302105 call!269851)))

(assert (= (and d!1088598 (not res!1511378)) b!3718259))

(assert (= (and b!3718259 c!642855) b!3718258))

(assert (= (and b!3718259 (not c!642855)) b!3718256))

(assert (= (and b!3718258 res!1511379) b!3718262))

(assert (= (and b!3718256 c!642856) b!3718254))

(assert (= (and b!3718256 (not c!642856)) b!3718260))

(assert (= (and b!3718254 res!1511380) b!3718255))

(assert (= (and b!3718260 (not res!1511381)) b!3718257))

(assert (= (and b!3718257 res!1511377) b!3718261))

(assert (= (or b!3718255 b!3718257) bm!269848))

(assert (= (or b!3718254 b!3718261) bm!269846))

(assert (= (or b!3718262 bm!269848) bm!269847))

(declare-fun m!4223307 () Bool)

(assert (=> bm!269846 m!4223307))

(declare-fun m!4223309 () Bool)

(assert (=> bm!269847 m!4223309))

(declare-fun m!4223311 () Bool)

(assert (=> b!3718258 m!4223311))

(assert (=> d!1088442 d!1088598))

(assert (=> d!1088442 d!1088440))

(declare-fun d!1088600 () Bool)

(assert (=> d!1088600 (= (matchR!5302 lt!1297542 tl!3933) (matchR!5302 (derivative!371 lt!1297542 tl!3933) Nil!39614))))

(assert (=> d!1088600 true))

(declare-fun _$108!436 () Unit!57512)

(assert (=> d!1088600 (= (choose!22199 lt!1297542 tl!3933) _$108!436)))

(declare-fun bs!574889 () Bool)

(assert (= bs!574889 d!1088600))

(assert (=> bs!574889 m!4222599))

(assert (=> bs!574889 m!4222603))

(assert (=> bs!574889 m!4222603))

(assert (=> bs!574889 m!4222605))

(assert (=> d!1088442 d!1088600))

(assert (=> d!1088442 d!1088448))

(declare-fun b!3718263 () Bool)

(declare-fun e!2302114 () Regex!10857)

(declare-fun e!2302112 () Regex!10857)

(assert (=> b!3718263 (= e!2302114 e!2302112)))

(declare-fun c!642858 () Bool)

(assert (=> b!3718263 (= c!642858 ((_ is ElementMatch!10857) (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326)))))))

(declare-fun call!269856 () Regex!10857)

(declare-fun c!642857 () Bool)

(declare-fun bm!269849 () Bool)

(assert (=> bm!269849 (= call!269856 (derivativeStep!3322 (ite c!642857 (regOne!22227 (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326)))) (regOne!22226 (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) c!13576))))

(declare-fun d!1088602 () Bool)

(declare-fun lt!1297634 () Regex!10857)

(assert (=> d!1088602 (validRegex!4964 lt!1297634)))

(assert (=> d!1088602 (= lt!1297634 e!2302114)))

(declare-fun c!642861 () Bool)

(assert (=> d!1088602 (= c!642861 (or ((_ is EmptyExpr!10857) (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326)))) ((_ is EmptyLang!10857) (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))))

(assert (=> d!1088602 (validRegex!4964 (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))

(assert (=> d!1088602 (= (derivativeStep!3322 (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))) c!13576) lt!1297634)))

(declare-fun bm!269850 () Bool)

(declare-fun call!269854 () Regex!10857)

(assert (=> bm!269850 (= call!269854 call!269856)))

(declare-fun b!3718264 () Bool)

(declare-fun call!269857 () Regex!10857)

(declare-fun e!2302116 () Regex!10857)

(assert (=> b!3718264 (= e!2302116 (Union!10857 (Concat!17128 call!269854 (regTwo!22226 (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) call!269857))))

(declare-fun bm!269851 () Bool)

(declare-fun call!269855 () Regex!10857)

(assert (=> bm!269851 (= call!269857 call!269855)))

(declare-fun b!3718265 () Bool)

(declare-fun c!642859 () Bool)

(assert (=> b!3718265 (= c!642859 (nullable!3780 (regOne!22226 (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))))

(declare-fun e!2302113 () Regex!10857)

(assert (=> b!3718265 (= e!2302113 e!2302116)))

(declare-fun b!3718266 () Bool)

(assert (=> b!3718266 (= e!2302113 (Concat!17128 call!269857 (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326)))))))

(declare-fun b!3718267 () Bool)

(assert (=> b!3718267 (= e!2302114 EmptyLang!10857)))

(declare-fun b!3718268 () Bool)

(assert (=> b!3718268 (= c!642857 ((_ is Union!10857) (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326)))))))

(declare-fun e!2302115 () Regex!10857)

(assert (=> b!3718268 (= e!2302112 e!2302115)))

(declare-fun b!3718269 () Bool)

(assert (=> b!3718269 (= e!2302115 e!2302113)))

(declare-fun c!642860 () Bool)

(assert (=> b!3718269 (= c!642860 ((_ is Star!10857) (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326)))))))

(declare-fun b!3718270 () Bool)

(assert (=> b!3718270 (= e!2302116 (Union!10857 (Concat!17128 call!269854 (regTwo!22226 (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) EmptyLang!10857))))

(declare-fun b!3718271 () Bool)

(assert (=> b!3718271 (= e!2302112 (ite (= c!13576 (c!642561 (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3718272 () Bool)

(assert (=> b!3718272 (= e!2302115 (Union!10857 call!269856 call!269855))))

(declare-fun bm!269852 () Bool)

(assert (=> bm!269852 (= call!269855 (derivativeStep!3322 (ite c!642857 (regTwo!22227 (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326)))) (ite c!642860 (reg!11186 (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326)))) (regTwo!22226 (ite c!642703 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326)))))) c!13576))))

(assert (= (and d!1088602 c!642861) b!3718267))

(assert (= (and d!1088602 (not c!642861)) b!3718263))

(assert (= (and b!3718263 c!642858) b!3718271))

(assert (= (and b!3718263 (not c!642858)) b!3718268))

(assert (= (and b!3718268 c!642857) b!3718272))

(assert (= (and b!3718268 (not c!642857)) b!3718269))

(assert (= (and b!3718269 c!642860) b!3718266))

(assert (= (and b!3718269 (not c!642860)) b!3718265))

(assert (= (and b!3718265 c!642859) b!3718264))

(assert (= (and b!3718265 (not c!642859)) b!3718270))

(assert (= (or b!3718264 b!3718270) bm!269850))

(assert (= (or b!3718266 b!3718264) bm!269851))

(assert (= (or b!3718272 bm!269851) bm!269852))

(assert (= (or b!3718272 bm!269850) bm!269849))

(declare-fun m!4223313 () Bool)

(assert (=> bm!269849 m!4223313))

(declare-fun m!4223315 () Bool)

(assert (=> d!1088602 m!4223315))

(declare-fun m!4223317 () Bool)

(assert (=> d!1088602 m!4223317))

(declare-fun m!4223319 () Bool)

(assert (=> b!3718265 m!4223319))

(declare-fun m!4223321 () Bool)

(assert (=> bm!269852 m!4223321))

(assert (=> bm!269708 d!1088602))

(declare-fun d!1088604 () Bool)

(assert (=> d!1088604 (= (isEmpty!23510 tl!3933) ((_ is Nil!39614) tl!3933))))

(assert (=> d!1088354 d!1088604))

(declare-fun b!3718273 () Bool)

(declare-fun res!1511385 () Bool)

(declare-fun e!2302121 () Bool)

(assert (=> b!3718273 (=> (not res!1511385) (not e!2302121))))

(declare-fun call!269860 () Bool)

(assert (=> b!3718273 (= res!1511385 call!269860)))

(declare-fun e!2302122 () Bool)

(assert (=> b!3718273 (= e!2302122 e!2302121)))

(declare-fun bm!269853 () Bool)

(declare-fun c!642863 () Bool)

(assert (=> bm!269853 (= call!269860 (validRegex!4964 (ite c!642863 (regOne!22227 lt!1297539) (regTwo!22226 lt!1297539))))))

(declare-fun b!3718274 () Bool)

(declare-fun call!269859 () Bool)

(assert (=> b!3718274 (= e!2302121 call!269859)))

(declare-fun b!3718275 () Bool)

(declare-fun e!2302123 () Bool)

(assert (=> b!3718275 (= e!2302123 e!2302122)))

(assert (=> b!3718275 (= c!642863 ((_ is Union!10857) lt!1297539))))

(declare-fun call!269858 () Bool)

(declare-fun c!642862 () Bool)

(declare-fun bm!269854 () Bool)

(assert (=> bm!269854 (= call!269858 (validRegex!4964 (ite c!642862 (reg!11186 lt!1297539) (ite c!642863 (regTwo!22227 lt!1297539) (regOne!22226 lt!1297539)))))))

(declare-fun b!3718276 () Bool)

(declare-fun e!2302120 () Bool)

(declare-fun e!2302119 () Bool)

(assert (=> b!3718276 (= e!2302120 e!2302119)))

(declare-fun res!1511382 () Bool)

(assert (=> b!3718276 (=> (not res!1511382) (not e!2302119))))

(assert (=> b!3718276 (= res!1511382 call!269859)))

(declare-fun b!3718277 () Bool)

(declare-fun e!2302117 () Bool)

(assert (=> b!3718277 (= e!2302123 e!2302117)))

(declare-fun res!1511384 () Bool)

(assert (=> b!3718277 (= res!1511384 (not (nullable!3780 (reg!11186 lt!1297539))))))

(assert (=> b!3718277 (=> (not res!1511384) (not e!2302117))))

(declare-fun b!3718278 () Bool)

(declare-fun e!2302118 () Bool)

(assert (=> b!3718278 (= e!2302118 e!2302123)))

(assert (=> b!3718278 (= c!642862 ((_ is Star!10857) lt!1297539))))

(declare-fun b!3718279 () Bool)

(declare-fun res!1511386 () Bool)

(assert (=> b!3718279 (=> res!1511386 e!2302120)))

(assert (=> b!3718279 (= res!1511386 (not ((_ is Concat!17128) lt!1297539)))))

(assert (=> b!3718279 (= e!2302122 e!2302120)))

(declare-fun bm!269855 () Bool)

(assert (=> bm!269855 (= call!269859 call!269858)))

(declare-fun d!1088606 () Bool)

(declare-fun res!1511383 () Bool)

(assert (=> d!1088606 (=> res!1511383 e!2302118)))

(assert (=> d!1088606 (= res!1511383 ((_ is ElementMatch!10857) lt!1297539))))

(assert (=> d!1088606 (= (validRegex!4964 lt!1297539) e!2302118)))

(declare-fun b!3718280 () Bool)

(assert (=> b!3718280 (= e!2302119 call!269860)))

(declare-fun b!3718281 () Bool)

(assert (=> b!3718281 (= e!2302117 call!269858)))

(assert (= (and d!1088606 (not res!1511383)) b!3718278))

(assert (= (and b!3718278 c!642862) b!3718277))

(assert (= (and b!3718278 (not c!642862)) b!3718275))

(assert (= (and b!3718277 res!1511384) b!3718281))

(assert (= (and b!3718275 c!642863) b!3718273))

(assert (= (and b!3718275 (not c!642863)) b!3718279))

(assert (= (and b!3718273 res!1511385) b!3718274))

(assert (= (and b!3718279 (not res!1511386)) b!3718276))

(assert (= (and b!3718276 res!1511382) b!3718280))

(assert (= (or b!3718274 b!3718276) bm!269855))

(assert (= (or b!3718273 b!3718280) bm!269853))

(assert (= (or b!3718281 bm!269855) bm!269854))

(declare-fun m!4223323 () Bool)

(assert (=> bm!269853 m!4223323))

(declare-fun m!4223325 () Bool)

(assert (=> bm!269854 m!4223325))

(declare-fun m!4223327 () Bool)

(assert (=> b!3718277 m!4223327))

(assert (=> d!1088354 d!1088606))

(assert (=> d!1088370 d!1088358))

(assert (=> d!1088370 d!1088368))

(declare-fun d!1088608 () Bool)

(assert (=> d!1088608 (contains!7950 (usedCharacters!1120 (regTwo!22226 r!26326)) c!13576)))

(assert (=> d!1088608 true))

(declare-fun _$132!119 () Unit!57512)

(assert (=> d!1088608 (= (choose!22196 (regTwo!22226 r!26326) c!13576 tl!3933) _$132!119)))

(declare-fun bs!574890 () Bool)

(assert (= bs!574890 d!1088608))

(assert (=> bs!574890 m!4222615))

(assert (=> bs!574890 m!4222615))

(assert (=> bs!574890 m!4222617))

(assert (=> d!1088370 d!1088608))

(assert (=> d!1088370 d!1088410))

(declare-fun bm!269856 () Bool)

(declare-fun call!269861 () List!39738)

(declare-fun call!269864 () List!39738)

(assert (=> bm!269856 (= call!269861 call!269864)))

(declare-fun call!269863 () List!39738)

(declare-fun c!642867 () Bool)

(declare-fun bm!269857 () Bool)

(assert (=> bm!269857 (= call!269863 (usedCharacters!1120 (ite c!642867 (regTwo!22227 (ite c!642594 (reg!11186 r!26326) (ite c!642596 (regOne!22227 r!26326) (regOne!22226 r!26326)))) (regTwo!22226 (ite c!642594 (reg!11186 r!26326) (ite c!642596 (regOne!22227 r!26326) (regOne!22226 r!26326)))))))))

(declare-fun b!3718283 () Bool)

(declare-fun e!2302127 () List!39738)

(assert (=> b!3718283 (= e!2302127 (Cons!39614 (c!642561 (ite c!642594 (reg!11186 r!26326) (ite c!642596 (regOne!22227 r!26326) (regOne!22226 r!26326)))) Nil!39614))))

(declare-fun b!3718284 () Bool)

(declare-fun e!2302125 () List!39738)

(declare-fun call!269862 () List!39738)

(assert (=> b!3718284 (= e!2302125 call!269862)))

(declare-fun b!3718285 () Bool)

(declare-fun e!2302126 () List!39738)

(assert (=> b!3718285 (= e!2302126 call!269864)))

(declare-fun bm!269858 () Bool)

(assert (=> bm!269858 (= call!269862 (++!9802 call!269861 call!269863))))

(declare-fun b!3718286 () Bool)

(declare-fun c!642865 () Bool)

(assert (=> b!3718286 (= c!642865 ((_ is Star!10857) (ite c!642594 (reg!11186 r!26326) (ite c!642596 (regOne!22227 r!26326) (regOne!22226 r!26326)))))))

(assert (=> b!3718286 (= e!2302127 e!2302126)))

(declare-fun b!3718287 () Bool)

(declare-fun e!2302124 () List!39738)

(assert (=> b!3718287 (= e!2302124 Nil!39614)))

(declare-fun b!3718282 () Bool)

(assert (=> b!3718282 (= e!2302126 e!2302125)))

(assert (=> b!3718282 (= c!642867 ((_ is Union!10857) (ite c!642594 (reg!11186 r!26326) (ite c!642596 (regOne!22227 r!26326) (regOne!22226 r!26326)))))))

(declare-fun d!1088610 () Bool)

(declare-fun c!642866 () Bool)

(assert (=> d!1088610 (= c!642866 (or ((_ is EmptyExpr!10857) (ite c!642594 (reg!11186 r!26326) (ite c!642596 (regOne!22227 r!26326) (regOne!22226 r!26326)))) ((_ is EmptyLang!10857) (ite c!642594 (reg!11186 r!26326) (ite c!642596 (regOne!22227 r!26326) (regOne!22226 r!26326))))))))

(assert (=> d!1088610 (= (usedCharacters!1120 (ite c!642594 (reg!11186 r!26326) (ite c!642596 (regOne!22227 r!26326) (regOne!22226 r!26326)))) e!2302124)))

(declare-fun bm!269859 () Bool)

(assert (=> bm!269859 (= call!269864 (usedCharacters!1120 (ite c!642865 (reg!11186 (ite c!642594 (reg!11186 r!26326) (ite c!642596 (regOne!22227 r!26326) (regOne!22226 r!26326)))) (ite c!642867 (regOne!22227 (ite c!642594 (reg!11186 r!26326) (ite c!642596 (regOne!22227 r!26326) (regOne!22226 r!26326)))) (regOne!22226 (ite c!642594 (reg!11186 r!26326) (ite c!642596 (regOne!22227 r!26326) (regOne!22226 r!26326))))))))))

(declare-fun b!3718288 () Bool)

(assert (=> b!3718288 (= e!2302124 e!2302127)))

(declare-fun c!642868 () Bool)

(assert (=> b!3718288 (= c!642868 ((_ is ElementMatch!10857) (ite c!642594 (reg!11186 r!26326) (ite c!642596 (regOne!22227 r!26326) (regOne!22226 r!26326)))))))

(declare-fun b!3718289 () Bool)

(assert (=> b!3718289 (= e!2302125 call!269862)))

(assert (= (and d!1088610 c!642866) b!3718287))

(assert (= (and d!1088610 (not c!642866)) b!3718288))

(assert (= (and b!3718288 c!642868) b!3718283))

(assert (= (and b!3718288 (not c!642868)) b!3718286))

(assert (= (and b!3718286 c!642865) b!3718285))

(assert (= (and b!3718286 (not c!642865)) b!3718282))

(assert (= (and b!3718282 c!642867) b!3718284))

(assert (= (and b!3718282 (not c!642867)) b!3718289))

(assert (= (or b!3718284 b!3718289) bm!269856))

(assert (= (or b!3718284 b!3718289) bm!269857))

(assert (= (or b!3718284 b!3718289) bm!269858))

(assert (= (or b!3718285 bm!269856) bm!269859))

(declare-fun m!4223329 () Bool)

(assert (=> bm!269857 m!4223329))

(declare-fun m!4223331 () Bool)

(assert (=> bm!269858 m!4223331))

(declare-fun m!4223333 () Bool)

(assert (=> bm!269859 m!4223333))

(assert (=> bm!269630 d!1088610))

(declare-fun d!1088612 () Bool)

(assert (=> d!1088612 (= (isEmpty!23510 (tail!5750 tl!3933)) ((_ is Nil!39614) (tail!5750 tl!3933)))))

(assert (=> b!3717582 d!1088612))

(declare-fun d!1088614 () Bool)

(assert (=> d!1088614 (= (tail!5750 tl!3933) (t!302421 tl!3933))))

(assert (=> b!3717582 d!1088614))

(declare-fun b!3718304 () Bool)

(declare-fun e!2302143 () Bool)

(declare-fun e!2302141 () Bool)

(assert (=> b!3718304 (= e!2302143 e!2302141)))

(declare-fun res!1511400 () Bool)

(assert (=> b!3718304 (=> res!1511400 e!2302141)))

(assert (=> b!3718304 (= res!1511400 ((_ is Star!10857) lt!1297544))))

(declare-fun b!3718305 () Bool)

(declare-fun e!2302142 () Bool)

(declare-fun e!2302140 () Bool)

(assert (=> b!3718305 (= e!2302142 e!2302140)))

(declare-fun res!1511398 () Bool)

(declare-fun call!269869 () Bool)

(assert (=> b!3718305 (= res!1511398 call!269869)))

(assert (=> b!3718305 (=> (not res!1511398) (not e!2302140))))

(declare-fun bm!269864 () Bool)

(declare-fun c!642871 () Bool)

(assert (=> bm!269864 (= call!269869 (nullable!3780 (ite c!642871 (regTwo!22227 lt!1297544) (regOne!22226 lt!1297544))))))

(declare-fun b!3718306 () Bool)

(declare-fun e!2302145 () Bool)

(assert (=> b!3718306 (= e!2302145 call!269869)))

(declare-fun b!3718307 () Bool)

(assert (=> b!3718307 (= e!2302142 e!2302145)))

(declare-fun res!1511397 () Bool)

(declare-fun call!269870 () Bool)

(assert (=> b!3718307 (= res!1511397 call!269870)))

(assert (=> b!3718307 (=> res!1511397 e!2302145)))

(declare-fun b!3718308 () Bool)

(assert (=> b!3718308 (= e!2302141 e!2302142)))

(assert (=> b!3718308 (= c!642871 ((_ is Union!10857) lt!1297544))))

(declare-fun bm!269865 () Bool)

(assert (=> bm!269865 (= call!269870 (nullable!3780 (ite c!642871 (regOne!22227 lt!1297544) (regTwo!22226 lt!1297544))))))

(declare-fun d!1088616 () Bool)

(declare-fun res!1511399 () Bool)

(declare-fun e!2302144 () Bool)

(assert (=> d!1088616 (=> res!1511399 e!2302144)))

(assert (=> d!1088616 (= res!1511399 ((_ is EmptyExpr!10857) lt!1297544))))

(assert (=> d!1088616 (= (nullableFct!1069 lt!1297544) e!2302144)))

(declare-fun b!3718309 () Bool)

(assert (=> b!3718309 (= e!2302144 e!2302143)))

(declare-fun res!1511401 () Bool)

(assert (=> b!3718309 (=> (not res!1511401) (not e!2302143))))

(assert (=> b!3718309 (= res!1511401 (and (not ((_ is EmptyLang!10857) lt!1297544)) (not ((_ is ElementMatch!10857) lt!1297544))))))

(declare-fun b!3718310 () Bool)

(assert (=> b!3718310 (= e!2302140 call!269870)))

(assert (= (and d!1088616 (not res!1511399)) b!3718309))

(assert (= (and b!3718309 res!1511401) b!3718304))

(assert (= (and b!3718304 (not res!1511400)) b!3718308))

(assert (= (and b!3718308 c!642871) b!3718307))

(assert (= (and b!3718308 (not c!642871)) b!3718305))

(assert (= (and b!3718307 (not res!1511397)) b!3718306))

(assert (= (and b!3718305 res!1511398) b!3718310))

(assert (= (or b!3718306 b!3718305) bm!269864))

(assert (= (or b!3718307 b!3718310) bm!269865))

(declare-fun m!4223335 () Bool)

(assert (=> bm!269864 m!4223335))

(declare-fun m!4223337 () Bool)

(assert (=> bm!269865 m!4223337))

(assert (=> d!1088404 d!1088616))

(declare-fun b!3718311 () Bool)

(declare-fun res!1511405 () Bool)

(declare-fun e!2302150 () Bool)

(assert (=> b!3718311 (=> (not res!1511405) (not e!2302150))))

(declare-fun call!269873 () Bool)

(assert (=> b!3718311 (= res!1511405 call!269873)))

(declare-fun e!2302151 () Bool)

(assert (=> b!3718311 (= e!2302151 e!2302150)))

(declare-fun bm!269866 () Bool)

(declare-fun c!642873 () Bool)

(assert (=> bm!269866 (= call!269873 (validRegex!4964 (ite c!642873 (regOne!22227 lt!1297606) (regTwo!22226 lt!1297606))))))

(declare-fun b!3718312 () Bool)

(declare-fun call!269872 () Bool)

(assert (=> b!3718312 (= e!2302150 call!269872)))

(declare-fun b!3718313 () Bool)

(declare-fun e!2302152 () Bool)

(assert (=> b!3718313 (= e!2302152 e!2302151)))

(assert (=> b!3718313 (= c!642873 ((_ is Union!10857) lt!1297606))))

(declare-fun c!642872 () Bool)

(declare-fun call!269871 () Bool)

(declare-fun bm!269867 () Bool)

(assert (=> bm!269867 (= call!269871 (validRegex!4964 (ite c!642872 (reg!11186 lt!1297606) (ite c!642873 (regTwo!22227 lt!1297606) (regOne!22226 lt!1297606)))))))

(declare-fun b!3718314 () Bool)

(declare-fun e!2302149 () Bool)

(declare-fun e!2302148 () Bool)

(assert (=> b!3718314 (= e!2302149 e!2302148)))

(declare-fun res!1511402 () Bool)

(assert (=> b!3718314 (=> (not res!1511402) (not e!2302148))))

(assert (=> b!3718314 (= res!1511402 call!269872)))

(declare-fun b!3718315 () Bool)

(declare-fun e!2302146 () Bool)

(assert (=> b!3718315 (= e!2302152 e!2302146)))

(declare-fun res!1511404 () Bool)

(assert (=> b!3718315 (= res!1511404 (not (nullable!3780 (reg!11186 lt!1297606))))))

(assert (=> b!3718315 (=> (not res!1511404) (not e!2302146))))

(declare-fun b!3718316 () Bool)

(declare-fun e!2302147 () Bool)

(assert (=> b!3718316 (= e!2302147 e!2302152)))

(assert (=> b!3718316 (= c!642872 ((_ is Star!10857) lt!1297606))))

(declare-fun b!3718317 () Bool)

(declare-fun res!1511406 () Bool)

(assert (=> b!3718317 (=> res!1511406 e!2302149)))

(assert (=> b!3718317 (= res!1511406 (not ((_ is Concat!17128) lt!1297606)))))

(assert (=> b!3718317 (= e!2302151 e!2302149)))

(declare-fun bm!269868 () Bool)

(assert (=> bm!269868 (= call!269872 call!269871)))

(declare-fun d!1088618 () Bool)

(declare-fun res!1511403 () Bool)

(assert (=> d!1088618 (=> res!1511403 e!2302147)))

(assert (=> d!1088618 (= res!1511403 ((_ is ElementMatch!10857) lt!1297606))))

(assert (=> d!1088618 (= (validRegex!4964 lt!1297606) e!2302147)))

(declare-fun b!3718318 () Bool)

(assert (=> b!3718318 (= e!2302148 call!269873)))

(declare-fun b!3718319 () Bool)

(assert (=> b!3718319 (= e!2302146 call!269871)))

(assert (= (and d!1088618 (not res!1511403)) b!3718316))

(assert (= (and b!3718316 c!642872) b!3718315))

(assert (= (and b!3718316 (not c!642872)) b!3718313))

(assert (= (and b!3718315 res!1511404) b!3718319))

(assert (= (and b!3718313 c!642873) b!3718311))

(assert (= (and b!3718313 (not c!642873)) b!3718317))

(assert (= (and b!3718311 res!1511405) b!3718312))

(assert (= (and b!3718317 (not res!1511406)) b!3718314))

(assert (= (and b!3718314 res!1511402) b!3718318))

(assert (= (or b!3718312 b!3718314) bm!269868))

(assert (= (or b!3718311 b!3718318) bm!269866))

(assert (= (or b!3718319 bm!269868) bm!269867))

(declare-fun m!4223339 () Bool)

(assert (=> bm!269866 m!4223339))

(declare-fun m!4223341 () Bool)

(assert (=> bm!269867 m!4223341))

(declare-fun m!4223343 () Bool)

(assert (=> b!3718315 m!4223343))

(assert (=> d!1088444 d!1088618))

(assert (=> d!1088444 d!1088410))

(declare-fun b!3718330 () Bool)

(declare-fun res!1511411 () Bool)

(declare-fun e!2302157 () Bool)

(assert (=> b!3718330 (=> (not res!1511411) (not e!2302157))))

(declare-fun lt!1297637 () List!39738)

(declare-fun size!30022 (List!39738) Int)

(assert (=> b!3718330 (= res!1511411 (= (size!30022 lt!1297637) (+ (size!30022 call!269636) (size!30022 call!269638))))))

(declare-fun b!3718331 () Bool)

(assert (=> b!3718331 (= e!2302157 (or (not (= call!269638 Nil!39614)) (= lt!1297637 call!269636)))))

(declare-fun b!3718328 () Bool)

(declare-fun e!2302158 () List!39738)

(assert (=> b!3718328 (= e!2302158 call!269638)))

(declare-fun b!3718329 () Bool)

(assert (=> b!3718329 (= e!2302158 (Cons!39614 (h!45034 call!269636) (++!9802 (t!302421 call!269636) call!269638)))))

(declare-fun d!1088620 () Bool)

(assert (=> d!1088620 e!2302157))

(declare-fun res!1511412 () Bool)

(assert (=> d!1088620 (=> (not res!1511412) (not e!2302157))))

(assert (=> d!1088620 (= res!1511412 (= (content!5739 lt!1297637) ((_ map or) (content!5739 call!269636) (content!5739 call!269638))))))

(assert (=> d!1088620 (= lt!1297637 e!2302158)))

(declare-fun c!642876 () Bool)

(assert (=> d!1088620 (= c!642876 ((_ is Nil!39614) call!269636))))

(assert (=> d!1088620 (= (++!9802 call!269636 call!269638) lt!1297637)))

(assert (= (and d!1088620 c!642876) b!3718328))

(assert (= (and d!1088620 (not c!642876)) b!3718329))

(assert (= (and d!1088620 res!1511412) b!3718330))

(assert (= (and b!3718330 res!1511411) b!3718331))

(declare-fun m!4223345 () Bool)

(assert (=> b!3718330 m!4223345))

(declare-fun m!4223347 () Bool)

(assert (=> b!3718330 m!4223347))

(declare-fun m!4223349 () Bool)

(assert (=> b!3718330 m!4223349))

(declare-fun m!4223351 () Bool)

(assert (=> b!3718329 m!4223351))

(declare-fun m!4223353 () Bool)

(assert (=> d!1088620 m!4223353))

(declare-fun m!4223355 () Bool)

(assert (=> d!1088620 m!4223355))

(declare-fun m!4223357 () Bool)

(assert (=> d!1088620 m!4223357))

(assert (=> bm!269633 d!1088620))

(declare-fun d!1088622 () Bool)

(assert (=> d!1088622 (= (nullable!3780 (regOne!22226 (regTwo!22226 r!26326))) (nullableFct!1069 (regOne!22226 (regTwo!22226 r!26326))))))

(declare-fun bs!574891 () Bool)

(assert (= bs!574891 d!1088622))

(declare-fun m!4223359 () Bool)

(assert (=> bs!574891 m!4223359))

(assert (=> b!3717640 d!1088622))

(assert (=> b!3717452 d!1088404))

(declare-fun d!1088624 () Bool)

(assert (=> d!1088624 (= (head!8023 tl!3933) (h!45034 tl!3933))))

(assert (=> b!3717651 d!1088624))

(declare-fun d!1088626 () Bool)

(assert (not d!1088626))

(assert (=> b!3717450 d!1088626))

(declare-fun d!1088628 () Bool)

(assert (=> d!1088628 (= (nullable!3780 lt!1297545) (nullableFct!1069 lt!1297545))))

(declare-fun bs!574892 () Bool)

(assert (= bs!574892 d!1088628))

(declare-fun m!4223361 () Bool)

(assert (=> bs!574892 m!4223361))

(assert (=> b!3717653 d!1088628))

(declare-fun d!1088630 () Bool)

(assert (=> d!1088630 (= (nullable!3780 lt!1297539) (nullableFct!1069 lt!1297539))))

(declare-fun bs!574893 () Bool)

(assert (= bs!574893 d!1088630))

(declare-fun m!4223363 () Bool)

(assert (=> bs!574893 m!4223363))

(assert (=> b!3717222 d!1088630))

(assert (=> b!3717665 d!1088626))

(assert (=> b!3717220 d!1088624))

(assert (=> b!3717624 d!1088606))

(assert (=> d!1088422 d!1088606))

(assert (=> d!1088422 d!1088408))

(declare-fun d!1088632 () Bool)

(assert (=> d!1088632 (= (matchR!5302 lt!1297539 tl!3933) (matchR!5302 (derivative!371 lt!1297539 tl!3933) Nil!39614))))

(assert (=> d!1088632 true))

(declare-fun _$108!437 () Unit!57512)

(assert (=> d!1088632 (= (choose!22199 lt!1297539 tl!3933) _$108!437)))

(declare-fun bs!574894 () Bool)

(assert (= bs!574894 d!1088632))

(assert (=> bs!574894 m!4222611))

(assert (=> bs!574894 m!4222635))

(assert (=> bs!574894 m!4222635))

(assert (=> bs!574894 m!4222853))

(assert (=> d!1088422 d!1088632))

(assert (=> d!1088422 d!1088354))

(declare-fun b!3718332 () Bool)

(declare-fun e!2302164 () Bool)

(assert (=> b!3718332 (= e!2302164 (matchR!5302 (derivativeStep!3322 (derivative!371 lt!1297539 tl!3933) (head!8023 Nil!39614)) (tail!5750 Nil!39614)))))

(declare-fun b!3718333 () Bool)

(declare-fun e!2302161 () Bool)

(declare-fun lt!1297638 () Bool)

(declare-fun call!269874 () Bool)

(assert (=> b!3718333 (= e!2302161 (= lt!1297638 call!269874))))

(declare-fun b!3718334 () Bool)

(declare-fun res!1511415 () Bool)

(declare-fun e!2302159 () Bool)

(assert (=> b!3718334 (=> res!1511415 e!2302159)))

(assert (=> b!3718334 (= res!1511415 (not ((_ is ElementMatch!10857) (derivative!371 lt!1297539 tl!3933))))))

(declare-fun e!2302163 () Bool)

(assert (=> b!3718334 (= e!2302163 e!2302159)))

(declare-fun b!3718335 () Bool)

(declare-fun e!2302162 () Bool)

(assert (=> b!3718335 (= e!2302162 (not (= (head!8023 Nil!39614) (c!642561 (derivative!371 lt!1297539 tl!3933)))))))

(declare-fun b!3718336 () Bool)

(declare-fun e!2302165 () Bool)

(assert (=> b!3718336 (= e!2302159 e!2302165)))

(declare-fun res!1511413 () Bool)

(assert (=> b!3718336 (=> (not res!1511413) (not e!2302165))))

(assert (=> b!3718336 (= res!1511413 (not lt!1297638))))

(declare-fun b!3718337 () Bool)

(assert (=> b!3718337 (= e!2302164 (nullable!3780 (derivative!371 lt!1297539 tl!3933)))))

(declare-fun b!3718338 () Bool)

(assert (=> b!3718338 (= e!2302161 e!2302163)))

(declare-fun c!642879 () Bool)

(assert (=> b!3718338 (= c!642879 ((_ is EmptyLang!10857) (derivative!371 lt!1297539 tl!3933)))))

(declare-fun d!1088634 () Bool)

(assert (=> d!1088634 e!2302161))

(declare-fun c!642878 () Bool)

(assert (=> d!1088634 (= c!642878 ((_ is EmptyExpr!10857) (derivative!371 lt!1297539 tl!3933)))))

(assert (=> d!1088634 (= lt!1297638 e!2302164)))

(declare-fun c!642877 () Bool)

(assert (=> d!1088634 (= c!642877 (isEmpty!23510 Nil!39614))))

(assert (=> d!1088634 (validRegex!4964 (derivative!371 lt!1297539 tl!3933))))

(assert (=> d!1088634 (= (matchR!5302 (derivative!371 lt!1297539 tl!3933) Nil!39614) lt!1297638)))

(declare-fun b!3718339 () Bool)

(declare-fun res!1511417 () Bool)

(assert (=> b!3718339 (=> res!1511417 e!2302159)))

(declare-fun e!2302160 () Bool)

(assert (=> b!3718339 (= res!1511417 e!2302160)))

(declare-fun res!1511418 () Bool)

(assert (=> b!3718339 (=> (not res!1511418) (not e!2302160))))

(assert (=> b!3718339 (= res!1511418 lt!1297638)))

(declare-fun b!3718340 () Bool)

(declare-fun res!1511414 () Bool)

(assert (=> b!3718340 (=> (not res!1511414) (not e!2302160))))

(assert (=> b!3718340 (= res!1511414 (not call!269874))))

(declare-fun b!3718341 () Bool)

(assert (=> b!3718341 (= e!2302165 e!2302162)))

(declare-fun res!1511419 () Bool)

(assert (=> b!3718341 (=> res!1511419 e!2302162)))

(assert (=> b!3718341 (= res!1511419 call!269874)))

(declare-fun b!3718342 () Bool)

(declare-fun res!1511420 () Bool)

(assert (=> b!3718342 (=> res!1511420 e!2302162)))

(assert (=> b!3718342 (= res!1511420 (not (isEmpty!23510 (tail!5750 Nil!39614))))))

(declare-fun b!3718343 () Bool)

(assert (=> b!3718343 (= e!2302163 (not lt!1297638))))

(declare-fun bm!269869 () Bool)

(assert (=> bm!269869 (= call!269874 (isEmpty!23510 Nil!39614))))

(declare-fun b!3718344 () Bool)

(assert (=> b!3718344 (= e!2302160 (= (head!8023 Nil!39614) (c!642561 (derivative!371 lt!1297539 tl!3933))))))

(declare-fun b!3718345 () Bool)

(declare-fun res!1511416 () Bool)

(assert (=> b!3718345 (=> (not res!1511416) (not e!2302160))))

(assert (=> b!3718345 (= res!1511416 (isEmpty!23510 (tail!5750 Nil!39614)))))

(assert (= (and d!1088634 c!642877) b!3718337))

(assert (= (and d!1088634 (not c!642877)) b!3718332))

(assert (= (and d!1088634 c!642878) b!3718333))

(assert (= (and d!1088634 (not c!642878)) b!3718338))

(assert (= (and b!3718338 c!642879) b!3718343))

(assert (= (and b!3718338 (not c!642879)) b!3718334))

(assert (= (and b!3718334 (not res!1511415)) b!3718339))

(assert (= (and b!3718339 res!1511418) b!3718340))

(assert (= (and b!3718340 res!1511414) b!3718345))

(assert (= (and b!3718345 res!1511416) b!3718344))

(assert (= (and b!3718339 (not res!1511417)) b!3718336))

(assert (= (and b!3718336 res!1511413) b!3718341))

(assert (= (and b!3718341 (not res!1511419)) b!3718342))

(assert (= (and b!3718342 (not res!1511420)) b!3718335))

(assert (= (or b!3718333 b!3718340 b!3718341) bm!269869))

(assert (=> b!3718332 m!4222797))

(assert (=> b!3718332 m!4222635))

(assert (=> b!3718332 m!4222797))

(declare-fun m!4223365 () Bool)

(assert (=> b!3718332 m!4223365))

(assert (=> b!3718332 m!4222801))

(assert (=> b!3718332 m!4223365))

(assert (=> b!3718332 m!4222801))

(declare-fun m!4223367 () Bool)

(assert (=> b!3718332 m!4223367))

(assert (=> b!3718344 m!4222797))

(assert (=> b!3718337 m!4222635))

(declare-fun m!4223369 () Bool)

(assert (=> b!3718337 m!4223369))

(assert (=> b!3718335 m!4222797))

(assert (=> b!3718342 m!4222801))

(assert (=> b!3718342 m!4222801))

(assert (=> b!3718342 m!4222805))

(assert (=> bm!269869 m!4222807))

(assert (=> d!1088634 m!4222807))

(assert (=> d!1088634 m!4222635))

(declare-fun m!4223371 () Bool)

(assert (=> d!1088634 m!4223371))

(assert (=> b!3718345 m!4222801))

(assert (=> b!3718345 m!4222801))

(assert (=> b!3718345 m!4222805))

(assert (=> d!1088422 d!1088634))

(declare-fun bm!269870 () Bool)

(declare-fun call!269875 () List!39738)

(declare-fun call!269878 () List!39738)

(assert (=> bm!269870 (= call!269875 call!269878)))

(declare-fun bm!269871 () Bool)

(declare-fun call!269877 () List!39738)

(declare-fun c!642882 () Bool)

(assert (=> bm!269871 (= call!269877 (usedCharacters!1120 (ite c!642882 (regTwo!22227 (ite c!642600 (regTwo!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))) (regTwo!22226 (ite c!642600 (regTwo!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))))

(declare-fun b!3718347 () Bool)

(declare-fun e!2302169 () List!39738)

(assert (=> b!3718347 (= e!2302169 (Cons!39614 (c!642561 (ite c!642600 (regTwo!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))) Nil!39614))))

(declare-fun b!3718348 () Bool)

(declare-fun e!2302167 () List!39738)

(declare-fun call!269876 () List!39738)

(assert (=> b!3718348 (= e!2302167 call!269876)))

(declare-fun b!3718349 () Bool)

(declare-fun e!2302168 () List!39738)

(assert (=> b!3718349 (= e!2302168 call!269878)))

(declare-fun bm!269872 () Bool)

(assert (=> bm!269872 (= call!269876 (++!9802 call!269875 call!269877))))

(declare-fun b!3718350 () Bool)

(declare-fun c!642880 () Bool)

(assert (=> b!3718350 (= c!642880 ((_ is Star!10857) (ite c!642600 (regTwo!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))

(assert (=> b!3718350 (= e!2302169 e!2302168)))

(declare-fun b!3718351 () Bool)

(declare-fun e!2302166 () List!39738)

(assert (=> b!3718351 (= e!2302166 Nil!39614)))

(declare-fun b!3718346 () Bool)

(assert (=> b!3718346 (= e!2302168 e!2302167)))

(assert (=> b!3718346 (= c!642882 ((_ is Union!10857) (ite c!642600 (regTwo!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))

(declare-fun d!1088636 () Bool)

(declare-fun c!642881 () Bool)

(assert (=> d!1088636 (= c!642881 (or ((_ is EmptyExpr!10857) (ite c!642600 (regTwo!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))) ((_ is EmptyLang!10857) (ite c!642600 (regTwo!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326))))))))

(assert (=> d!1088636 (= (usedCharacters!1120 (ite c!642600 (regTwo!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))) e!2302166)))

(declare-fun bm!269873 () Bool)

(assert (=> bm!269873 (= call!269878 (usedCharacters!1120 (ite c!642880 (reg!11186 (ite c!642600 (regTwo!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))) (ite c!642882 (regOne!22227 (ite c!642600 (regTwo!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))) (regOne!22226 (ite c!642600 (regTwo!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326))))))))))

(declare-fun b!3718352 () Bool)

(assert (=> b!3718352 (= e!2302166 e!2302169)))

(declare-fun c!642883 () Bool)

(assert (=> b!3718352 (= c!642883 ((_ is ElementMatch!10857) (ite c!642600 (regTwo!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))

(declare-fun b!3718353 () Bool)

(assert (=> b!3718353 (= e!2302167 call!269876)))

(assert (= (and d!1088636 c!642881) b!3718351))

(assert (= (and d!1088636 (not c!642881)) b!3718352))

(assert (= (and b!3718352 c!642883) b!3718347))

(assert (= (and b!3718352 (not c!642883)) b!3718350))

(assert (= (and b!3718350 c!642880) b!3718349))

(assert (= (and b!3718350 (not c!642880)) b!3718346))

(assert (= (and b!3718346 c!642882) b!3718348))

(assert (= (and b!3718346 (not c!642882)) b!3718353))

(assert (= (or b!3718348 b!3718353) bm!269870))

(assert (= (or b!3718348 b!3718353) bm!269871))

(assert (= (or b!3718348 b!3718353) bm!269872))

(assert (= (or b!3718349 bm!269870) bm!269873))

(declare-fun m!4223373 () Bool)

(assert (=> bm!269871 m!4223373))

(declare-fun m!4223375 () Bool)

(assert (=> bm!269872 m!4223375))

(declare-fun m!4223377 () Bool)

(assert (=> bm!269873 m!4223377))

(assert (=> bm!269632 d!1088636))

(declare-fun d!1088638 () Bool)

(declare-fun lt!1297639 () Bool)

(assert (=> d!1088638 (= lt!1297639 (select (content!5739 (t!302421 (usedCharacters!1120 (regTwo!22226 r!26326)))) c!13576))))

(declare-fun e!2302171 () Bool)

(assert (=> d!1088638 (= lt!1297639 e!2302171)))

(declare-fun res!1511421 () Bool)

(assert (=> d!1088638 (=> (not res!1511421) (not e!2302171))))

(assert (=> d!1088638 (= res!1511421 ((_ is Cons!39614) (t!302421 (usedCharacters!1120 (regTwo!22226 r!26326)))))))

(assert (=> d!1088638 (= (contains!7950 (t!302421 (usedCharacters!1120 (regTwo!22226 r!26326))) c!13576) lt!1297639)))

(declare-fun b!3718354 () Bool)

(declare-fun e!2302170 () Bool)

(assert (=> b!3718354 (= e!2302171 e!2302170)))

(declare-fun res!1511422 () Bool)

(assert (=> b!3718354 (=> res!1511422 e!2302170)))

(assert (=> b!3718354 (= res!1511422 (= (h!45034 (t!302421 (usedCharacters!1120 (regTwo!22226 r!26326)))) c!13576))))

(declare-fun b!3718355 () Bool)

(assert (=> b!3718355 (= e!2302170 (contains!7950 (t!302421 (t!302421 (usedCharacters!1120 (regTwo!22226 r!26326)))) c!13576))))

(assert (= (and d!1088638 res!1511421) b!3718354))

(assert (= (and b!3718354 (not res!1511422)) b!3718355))

(declare-fun m!4223379 () Bool)

(assert (=> d!1088638 m!4223379))

(declare-fun m!4223381 () Bool)

(assert (=> d!1088638 m!4223381))

(declare-fun m!4223383 () Bool)

(assert (=> b!3718355 m!4223383))

(assert (=> b!3717250 d!1088638))

(declare-fun b!3718356 () Bool)

(declare-fun e!2302174 () Regex!10857)

(declare-fun e!2302172 () Regex!10857)

(assert (=> b!3718356 (= e!2302174 e!2302172)))

(declare-fun c!642885 () Bool)

(assert (=> b!3718356 (= c!642885 ((_ is ElementMatch!10857) (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326))))))

(declare-fun call!269881 () Regex!10857)

(declare-fun bm!269874 () Bool)

(declare-fun c!642884 () Bool)

(assert (=> bm!269874 (= call!269881 (derivativeStep!3322 (ite c!642884 (regOne!22227 (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326))) (regOne!22226 (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326)))) c!13576))))

(declare-fun d!1088640 () Bool)

(declare-fun lt!1297640 () Regex!10857)

(assert (=> d!1088640 (validRegex!4964 lt!1297640)))

(assert (=> d!1088640 (= lt!1297640 e!2302174)))

(declare-fun c!642888 () Bool)

(assert (=> d!1088640 (= c!642888 (or ((_ is EmptyExpr!10857) (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326))) ((_ is EmptyLang!10857) (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326)))))))

(assert (=> d!1088640 (validRegex!4964 (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326)))))

(assert (=> d!1088640 (= (derivativeStep!3322 (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326)) c!13576) lt!1297640)))

(declare-fun bm!269875 () Bool)

(declare-fun call!269879 () Regex!10857)

(assert (=> bm!269875 (= call!269879 call!269881)))

(declare-fun call!269882 () Regex!10857)

(declare-fun e!2302176 () Regex!10857)

(declare-fun b!3718357 () Bool)

(assert (=> b!3718357 (= e!2302176 (Union!10857 (Concat!17128 call!269879 (regTwo!22226 (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326)))) call!269882))))

(declare-fun bm!269876 () Bool)

(declare-fun call!269880 () Regex!10857)

(assert (=> bm!269876 (= call!269882 call!269880)))

(declare-fun b!3718358 () Bool)

(declare-fun c!642886 () Bool)

(assert (=> b!3718358 (= c!642886 (nullable!3780 (regOne!22226 (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326)))))))

(declare-fun e!2302173 () Regex!10857)

(assert (=> b!3718358 (= e!2302173 e!2302176)))

(declare-fun b!3718359 () Bool)

(assert (=> b!3718359 (= e!2302173 (Concat!17128 call!269882 (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326))))))

(declare-fun b!3718360 () Bool)

(assert (=> b!3718360 (= e!2302174 EmptyLang!10857)))

(declare-fun b!3718361 () Bool)

(assert (=> b!3718361 (= c!642884 ((_ is Union!10857) (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326))))))

(declare-fun e!2302175 () Regex!10857)

(assert (=> b!3718361 (= e!2302172 e!2302175)))

(declare-fun b!3718362 () Bool)

(assert (=> b!3718362 (= e!2302175 e!2302173)))

(declare-fun c!642887 () Bool)

(assert (=> b!3718362 (= c!642887 ((_ is Star!10857) (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326))))))

(declare-fun b!3718363 () Bool)

(assert (=> b!3718363 (= e!2302176 (Union!10857 (Concat!17128 call!269879 (regTwo!22226 (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326)))) EmptyLang!10857))))

(declare-fun b!3718364 () Bool)

(assert (=> b!3718364 (= e!2302172 (ite (= c!13576 (c!642561 (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326)))) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3718365 () Bool)

(assert (=> b!3718365 (= e!2302175 (Union!10857 call!269881 call!269880))))

(declare-fun bm!269877 () Bool)

(assert (=> bm!269877 (= call!269880 (derivativeStep!3322 (ite c!642884 (regTwo!22227 (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326))) (ite c!642887 (reg!11186 (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326))) (regTwo!22226 (ite c!642651 (regOne!22227 r!26326) (regOne!22226 r!26326))))) c!13576))))

(assert (= (and d!1088640 c!642888) b!3718360))

(assert (= (and d!1088640 (not c!642888)) b!3718356))

(assert (= (and b!3718356 c!642885) b!3718364))

(assert (= (and b!3718356 (not c!642885)) b!3718361))

(assert (= (and b!3718361 c!642884) b!3718365))

(assert (= (and b!3718361 (not c!642884)) b!3718362))

(assert (= (and b!3718362 c!642887) b!3718359))

(assert (= (and b!3718362 (not c!642887)) b!3718358))

(assert (= (and b!3718358 c!642886) b!3718357))

(assert (= (and b!3718358 (not c!642886)) b!3718363))

(assert (= (or b!3718357 b!3718363) bm!269875))

(assert (= (or b!3718359 b!3718357) bm!269876))

(assert (= (or b!3718365 bm!269876) bm!269877))

(assert (= (or b!3718365 bm!269875) bm!269874))

(declare-fun m!4223385 () Bool)

(assert (=> bm!269874 m!4223385))

(declare-fun m!4223387 () Bool)

(assert (=> d!1088640 m!4223387))

(declare-fun m!4223389 () Bool)

(assert (=> d!1088640 m!4223389))

(declare-fun m!4223391 () Bool)

(assert (=> b!3718358 m!4223391))

(declare-fun m!4223393 () Bool)

(assert (=> bm!269877 m!4223393))

(assert (=> bm!269665 d!1088640))

(declare-fun d!1088642 () Bool)

(declare-fun lt!1297641 () Regex!10857)

(assert (=> d!1088642 (validRegex!4964 lt!1297641)))

(declare-fun e!2302177 () Regex!10857)

(assert (=> d!1088642 (= lt!1297641 e!2302177)))

(declare-fun c!642889 () Bool)

(assert (=> d!1088642 (= c!642889 ((_ is Cons!39614) (t!302421 tl!3933)))))

(assert (=> d!1088642 (validRegex!4964 (derivativeStep!3322 lt!1297542 (h!45034 tl!3933)))))

(assert (=> d!1088642 (= (derivative!371 (derivativeStep!3322 lt!1297542 (h!45034 tl!3933)) (t!302421 tl!3933)) lt!1297641)))

(declare-fun b!3718366 () Bool)

(assert (=> b!3718366 (= e!2302177 (derivative!371 (derivativeStep!3322 (derivativeStep!3322 lt!1297542 (h!45034 tl!3933)) (h!45034 (t!302421 tl!3933))) (t!302421 (t!302421 tl!3933))))))

(declare-fun b!3718367 () Bool)

(assert (=> b!3718367 (= e!2302177 (derivativeStep!3322 lt!1297542 (h!45034 tl!3933)))))

(assert (= (and d!1088642 c!642889) b!3718366))

(assert (= (and d!1088642 (not c!642889)) b!3718367))

(declare-fun m!4223395 () Bool)

(assert (=> d!1088642 m!4223395))

(assert (=> d!1088642 m!4222909))

(declare-fun m!4223397 () Bool)

(assert (=> d!1088642 m!4223397))

(assert (=> b!3718366 m!4222909))

(declare-fun m!4223399 () Bool)

(assert (=> b!3718366 m!4223399))

(assert (=> b!3718366 m!4223399))

(declare-fun m!4223401 () Bool)

(assert (=> b!3718366 m!4223401))

(assert (=> b!3717636 d!1088642))

(declare-fun b!3718368 () Bool)

(declare-fun e!2302180 () Regex!10857)

(declare-fun e!2302178 () Regex!10857)

(assert (=> b!3718368 (= e!2302180 e!2302178)))

(declare-fun c!642891 () Bool)

(assert (=> b!3718368 (= c!642891 ((_ is ElementMatch!10857) lt!1297542))))

(declare-fun c!642890 () Bool)

(declare-fun call!269885 () Regex!10857)

(declare-fun bm!269878 () Bool)

(assert (=> bm!269878 (= call!269885 (derivativeStep!3322 (ite c!642890 (regOne!22227 lt!1297542) (regOne!22226 lt!1297542)) (h!45034 tl!3933)))))

(declare-fun d!1088644 () Bool)

(declare-fun lt!1297642 () Regex!10857)

(assert (=> d!1088644 (validRegex!4964 lt!1297642)))

(assert (=> d!1088644 (= lt!1297642 e!2302180)))

(declare-fun c!642894 () Bool)

(assert (=> d!1088644 (= c!642894 (or ((_ is EmptyExpr!10857) lt!1297542) ((_ is EmptyLang!10857) lt!1297542)))))

(assert (=> d!1088644 (validRegex!4964 lt!1297542)))

(assert (=> d!1088644 (= (derivativeStep!3322 lt!1297542 (h!45034 tl!3933)) lt!1297642)))

(declare-fun bm!269879 () Bool)

(declare-fun call!269883 () Regex!10857)

(assert (=> bm!269879 (= call!269883 call!269885)))

(declare-fun e!2302182 () Regex!10857)

(declare-fun b!3718369 () Bool)

(declare-fun call!269886 () Regex!10857)

(assert (=> b!3718369 (= e!2302182 (Union!10857 (Concat!17128 call!269883 (regTwo!22226 lt!1297542)) call!269886))))

(declare-fun bm!269880 () Bool)

(declare-fun call!269884 () Regex!10857)

(assert (=> bm!269880 (= call!269886 call!269884)))

(declare-fun b!3718370 () Bool)

(declare-fun c!642892 () Bool)

(assert (=> b!3718370 (= c!642892 (nullable!3780 (regOne!22226 lt!1297542)))))

(declare-fun e!2302179 () Regex!10857)

(assert (=> b!3718370 (= e!2302179 e!2302182)))

(declare-fun b!3718371 () Bool)

(assert (=> b!3718371 (= e!2302179 (Concat!17128 call!269886 lt!1297542))))

(declare-fun b!3718372 () Bool)

(assert (=> b!3718372 (= e!2302180 EmptyLang!10857)))

(declare-fun b!3718373 () Bool)

(assert (=> b!3718373 (= c!642890 ((_ is Union!10857) lt!1297542))))

(declare-fun e!2302181 () Regex!10857)

(assert (=> b!3718373 (= e!2302178 e!2302181)))

(declare-fun b!3718374 () Bool)

(assert (=> b!3718374 (= e!2302181 e!2302179)))

(declare-fun c!642893 () Bool)

(assert (=> b!3718374 (= c!642893 ((_ is Star!10857) lt!1297542))))

(declare-fun b!3718375 () Bool)

(assert (=> b!3718375 (= e!2302182 (Union!10857 (Concat!17128 call!269883 (regTwo!22226 lt!1297542)) EmptyLang!10857))))

(declare-fun b!3718376 () Bool)

(assert (=> b!3718376 (= e!2302178 (ite (= (h!45034 tl!3933) (c!642561 lt!1297542)) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3718377 () Bool)

(assert (=> b!3718377 (= e!2302181 (Union!10857 call!269885 call!269884))))

(declare-fun bm!269881 () Bool)

(assert (=> bm!269881 (= call!269884 (derivativeStep!3322 (ite c!642890 (regTwo!22227 lt!1297542) (ite c!642893 (reg!11186 lt!1297542) (regTwo!22226 lt!1297542))) (h!45034 tl!3933)))))

(assert (= (and d!1088644 c!642894) b!3718372))

(assert (= (and d!1088644 (not c!642894)) b!3718368))

(assert (= (and b!3718368 c!642891) b!3718376))

(assert (= (and b!3718368 (not c!642891)) b!3718373))

(assert (= (and b!3718373 c!642890) b!3718377))

(assert (= (and b!3718373 (not c!642890)) b!3718374))

(assert (= (and b!3718374 c!642893) b!3718371))

(assert (= (and b!3718374 (not c!642893)) b!3718370))

(assert (= (and b!3718370 c!642892) b!3718369))

(assert (= (and b!3718370 (not c!642892)) b!3718375))

(assert (= (or b!3718369 b!3718375) bm!269879))

(assert (= (or b!3718371 b!3718369) bm!269880))

(assert (= (or b!3718377 bm!269880) bm!269881))

(assert (= (or b!3718377 bm!269879) bm!269878))

(declare-fun m!4223403 () Bool)

(assert (=> bm!269878 m!4223403))

(declare-fun m!4223405 () Bool)

(assert (=> d!1088644 m!4223405))

(assert (=> d!1088644 m!4222891))

(declare-fun m!4223407 () Bool)

(assert (=> b!3718370 m!4223407))

(declare-fun m!4223409 () Bool)

(assert (=> bm!269881 m!4223409))

(assert (=> b!3717636 d!1088644))

(declare-fun d!1088646 () Bool)

(declare-fun c!642897 () Bool)

(assert (=> d!1088646 (= c!642897 ((_ is Nil!39614) (usedCharacters!1120 (regTwo!22226 r!26326))))))

(declare-fun e!2302185 () (InoxSet C!21900))

(assert (=> d!1088646 (= (content!5739 (usedCharacters!1120 (regTwo!22226 r!26326))) e!2302185)))

(declare-fun b!3718382 () Bool)

(assert (=> b!3718382 (= e!2302185 ((as const (Array C!21900 Bool)) false))))

(declare-fun b!3718383 () Bool)

(assert (=> b!3718383 (= e!2302185 ((_ map or) (store ((as const (Array C!21900 Bool)) false) (h!45034 (usedCharacters!1120 (regTwo!22226 r!26326))) true) (content!5739 (t!302421 (usedCharacters!1120 (regTwo!22226 r!26326))))))))

(assert (= (and d!1088646 c!642897) b!3718382))

(assert (= (and d!1088646 (not c!642897)) b!3718383))

(declare-fun m!4223411 () Bool)

(assert (=> b!3718383 m!4223411))

(assert (=> b!3718383 m!4223379))

(assert (=> d!1088358 d!1088646))

(declare-fun d!1088648 () Bool)

(declare-fun lt!1297643 () Bool)

(assert (=> d!1088648 (= lt!1297643 (select (content!5739 (t!302421 (usedCharacters!1120 r!26326))) c!13576))))

(declare-fun e!2302187 () Bool)

(assert (=> d!1088648 (= lt!1297643 e!2302187)))

(declare-fun res!1511423 () Bool)

(assert (=> d!1088648 (=> (not res!1511423) (not e!2302187))))

(assert (=> d!1088648 (= res!1511423 ((_ is Cons!39614) (t!302421 (usedCharacters!1120 r!26326))))))

(assert (=> d!1088648 (= (contains!7950 (t!302421 (usedCharacters!1120 r!26326)) c!13576) lt!1297643)))

(declare-fun b!3718384 () Bool)

(declare-fun e!2302186 () Bool)

(assert (=> b!3718384 (= e!2302187 e!2302186)))

(declare-fun res!1511424 () Bool)

(assert (=> b!3718384 (=> res!1511424 e!2302186)))

(assert (=> b!3718384 (= res!1511424 (= (h!45034 (t!302421 (usedCharacters!1120 r!26326))) c!13576))))

(declare-fun b!3718385 () Bool)

(assert (=> b!3718385 (= e!2302186 (contains!7950 (t!302421 (t!302421 (usedCharacters!1120 r!26326))) c!13576))))

(assert (= (and d!1088648 res!1511423) b!3718384))

(assert (= (and b!3718384 (not res!1511424)) b!3718385))

(declare-fun m!4223413 () Bool)

(assert (=> d!1088648 m!4223413))

(declare-fun m!4223415 () Bool)

(assert (=> d!1088648 m!4223415))

(declare-fun m!4223417 () Bool)

(assert (=> b!3718385 m!4223417))

(assert (=> b!3717331 d!1088648))

(declare-fun b!3718386 () Bool)

(declare-fun res!1511428 () Bool)

(declare-fun e!2302192 () Bool)

(assert (=> b!3718386 (=> (not res!1511428) (not e!2302192))))

(declare-fun call!269889 () Bool)

(assert (=> b!3718386 (= res!1511428 call!269889)))

(declare-fun e!2302193 () Bool)

(assert (=> b!3718386 (= e!2302193 e!2302192)))

(declare-fun bm!269882 () Bool)

(declare-fun c!642899 () Bool)

(assert (=> bm!269882 (= call!269889 (validRegex!4964 (ite c!642899 (regOne!22227 lt!1297582) (regTwo!22226 lt!1297582))))))

(declare-fun b!3718387 () Bool)

(declare-fun call!269888 () Bool)

(assert (=> b!3718387 (= e!2302192 call!269888)))

(declare-fun b!3718388 () Bool)

(declare-fun e!2302194 () Bool)

(assert (=> b!3718388 (= e!2302194 e!2302193)))

(assert (=> b!3718388 (= c!642899 ((_ is Union!10857) lt!1297582))))

(declare-fun bm!269883 () Bool)

(declare-fun c!642898 () Bool)

(declare-fun call!269887 () Bool)

(assert (=> bm!269883 (= call!269887 (validRegex!4964 (ite c!642898 (reg!11186 lt!1297582) (ite c!642899 (regTwo!22227 lt!1297582) (regOne!22226 lt!1297582)))))))

(declare-fun b!3718389 () Bool)

(declare-fun e!2302191 () Bool)

(declare-fun e!2302190 () Bool)

(assert (=> b!3718389 (= e!2302191 e!2302190)))

(declare-fun res!1511425 () Bool)

(assert (=> b!3718389 (=> (not res!1511425) (not e!2302190))))

(assert (=> b!3718389 (= res!1511425 call!269888)))

(declare-fun b!3718390 () Bool)

(declare-fun e!2302188 () Bool)

(assert (=> b!3718390 (= e!2302194 e!2302188)))

(declare-fun res!1511427 () Bool)

(assert (=> b!3718390 (= res!1511427 (not (nullable!3780 (reg!11186 lt!1297582))))))

(assert (=> b!3718390 (=> (not res!1511427) (not e!2302188))))

(declare-fun b!3718391 () Bool)

(declare-fun e!2302189 () Bool)

(assert (=> b!3718391 (= e!2302189 e!2302194)))

(assert (=> b!3718391 (= c!642898 ((_ is Star!10857) lt!1297582))))

(declare-fun b!3718392 () Bool)

(declare-fun res!1511429 () Bool)

(assert (=> b!3718392 (=> res!1511429 e!2302191)))

(assert (=> b!3718392 (= res!1511429 (not ((_ is Concat!17128) lt!1297582)))))

(assert (=> b!3718392 (= e!2302193 e!2302191)))

(declare-fun bm!269884 () Bool)

(assert (=> bm!269884 (= call!269888 call!269887)))

(declare-fun d!1088650 () Bool)

(declare-fun res!1511426 () Bool)

(assert (=> d!1088650 (=> res!1511426 e!2302189)))

(assert (=> d!1088650 (= res!1511426 ((_ is ElementMatch!10857) lt!1297582))))

(assert (=> d!1088650 (= (validRegex!4964 lt!1297582) e!2302189)))

(declare-fun b!3718393 () Bool)

(assert (=> b!3718393 (= e!2302190 call!269889)))

(declare-fun b!3718394 () Bool)

(assert (=> b!3718394 (= e!2302188 call!269887)))

(assert (= (and d!1088650 (not res!1511426)) b!3718391))

(assert (= (and b!3718391 c!642898) b!3718390))

(assert (= (and b!3718391 (not c!642898)) b!3718388))

(assert (= (and b!3718390 res!1511427) b!3718394))

(assert (= (and b!3718388 c!642899) b!3718386))

(assert (= (and b!3718388 (not c!642899)) b!3718392))

(assert (= (and b!3718386 res!1511428) b!3718387))

(assert (= (and b!3718392 (not res!1511429)) b!3718389))

(assert (= (and b!3718389 res!1511425) b!3718393))

(assert (= (or b!3718387 b!3718389) bm!269884))

(assert (= (or b!3718386 b!3718393) bm!269882))

(assert (= (or b!3718394 bm!269884) bm!269883))

(declare-fun m!4223419 () Bool)

(assert (=> bm!269882 m!4223419))

(declare-fun m!4223421 () Bool)

(assert (=> bm!269883 m!4223421))

(declare-fun m!4223423 () Bool)

(assert (=> b!3718390 m!4223423))

(assert (=> d!1088408 d!1088650))

(assert (=> d!1088408 d!1088606))

(declare-fun b!3718395 () Bool)

(declare-fun res!1511433 () Bool)

(declare-fun e!2302199 () Bool)

(assert (=> b!3718395 (=> (not res!1511433) (not e!2302199))))

(declare-fun call!269892 () Bool)

(assert (=> b!3718395 (= res!1511433 call!269892)))

(declare-fun e!2302200 () Bool)

(assert (=> b!3718395 (= e!2302200 e!2302199)))

(declare-fun c!642901 () Bool)

(declare-fun bm!269885 () Bool)

(assert (=> bm!269885 (= call!269892 (validRegex!4964 (ite c!642901 (regOne!22227 (ite c!642673 (reg!11186 (regTwo!22226 r!26326)) (ite c!642674 (regTwo!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) (regTwo!22226 (ite c!642673 (reg!11186 (regTwo!22226 r!26326)) (ite c!642674 (regTwo!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))))))

(declare-fun b!3718396 () Bool)

(declare-fun call!269891 () Bool)

(assert (=> b!3718396 (= e!2302199 call!269891)))

(declare-fun b!3718397 () Bool)

(declare-fun e!2302201 () Bool)

(assert (=> b!3718397 (= e!2302201 e!2302200)))

(assert (=> b!3718397 (= c!642901 ((_ is Union!10857) (ite c!642673 (reg!11186 (regTwo!22226 r!26326)) (ite c!642674 (regTwo!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))))

(declare-fun bm!269886 () Bool)

(declare-fun c!642900 () Bool)

(declare-fun call!269890 () Bool)

(assert (=> bm!269886 (= call!269890 (validRegex!4964 (ite c!642900 (reg!11186 (ite c!642673 (reg!11186 (regTwo!22226 r!26326)) (ite c!642674 (regTwo!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) (ite c!642901 (regTwo!22227 (ite c!642673 (reg!11186 (regTwo!22226 r!26326)) (ite c!642674 (regTwo!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) (regOne!22226 (ite c!642673 (reg!11186 (regTwo!22226 r!26326)) (ite c!642674 (regTwo!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326)))))))))))

(declare-fun b!3718398 () Bool)

(declare-fun e!2302198 () Bool)

(declare-fun e!2302197 () Bool)

(assert (=> b!3718398 (= e!2302198 e!2302197)))

(declare-fun res!1511430 () Bool)

(assert (=> b!3718398 (=> (not res!1511430) (not e!2302197))))

(assert (=> b!3718398 (= res!1511430 call!269891)))

(declare-fun b!3718399 () Bool)

(declare-fun e!2302195 () Bool)

(assert (=> b!3718399 (= e!2302201 e!2302195)))

(declare-fun res!1511432 () Bool)

(assert (=> b!3718399 (= res!1511432 (not (nullable!3780 (reg!11186 (ite c!642673 (reg!11186 (regTwo!22226 r!26326)) (ite c!642674 (regTwo!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))))))

(assert (=> b!3718399 (=> (not res!1511432) (not e!2302195))))

(declare-fun b!3718400 () Bool)

(declare-fun e!2302196 () Bool)

(assert (=> b!3718400 (= e!2302196 e!2302201)))

(assert (=> b!3718400 (= c!642900 ((_ is Star!10857) (ite c!642673 (reg!11186 (regTwo!22226 r!26326)) (ite c!642674 (regTwo!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))))

(declare-fun b!3718401 () Bool)

(declare-fun res!1511434 () Bool)

(assert (=> b!3718401 (=> res!1511434 e!2302198)))

(assert (=> b!3718401 (= res!1511434 (not ((_ is Concat!17128) (ite c!642673 (reg!11186 (regTwo!22226 r!26326)) (ite c!642674 (regTwo!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326)))))))))

(assert (=> b!3718401 (= e!2302200 e!2302198)))

(declare-fun bm!269887 () Bool)

(assert (=> bm!269887 (= call!269891 call!269890)))

(declare-fun d!1088652 () Bool)

(declare-fun res!1511431 () Bool)

(assert (=> d!1088652 (=> res!1511431 e!2302196)))

(assert (=> d!1088652 (= res!1511431 ((_ is ElementMatch!10857) (ite c!642673 (reg!11186 (regTwo!22226 r!26326)) (ite c!642674 (regTwo!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))))

(assert (=> d!1088652 (= (validRegex!4964 (ite c!642673 (reg!11186 (regTwo!22226 r!26326)) (ite c!642674 (regTwo!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) e!2302196)))

(declare-fun b!3718402 () Bool)

(assert (=> b!3718402 (= e!2302197 call!269892)))

(declare-fun b!3718403 () Bool)

(assert (=> b!3718403 (= e!2302195 call!269890)))

(assert (= (and d!1088652 (not res!1511431)) b!3718400))

(assert (= (and b!3718400 c!642900) b!3718399))

(assert (= (and b!3718400 (not c!642900)) b!3718397))

(assert (= (and b!3718399 res!1511432) b!3718403))

(assert (= (and b!3718397 c!642901) b!3718395))

(assert (= (and b!3718397 (not c!642901)) b!3718401))

(assert (= (and b!3718395 res!1511433) b!3718396))

(assert (= (and b!3718401 (not res!1511434)) b!3718398))

(assert (= (and b!3718398 res!1511430) b!3718402))

(assert (= (or b!3718396 b!3718398) bm!269887))

(assert (= (or b!3718395 b!3718402) bm!269885))

(assert (= (or b!3718403 bm!269887) bm!269886))

(declare-fun m!4223425 () Bool)

(assert (=> bm!269885 m!4223425))

(declare-fun m!4223427 () Bool)

(assert (=> bm!269886 m!4223427))

(declare-fun m!4223429 () Bool)

(assert (=> b!3718399 m!4223429))

(assert (=> bm!269682 d!1088652))

(declare-fun d!1088654 () Bool)

(assert (=> d!1088654 (= (nullable!3780 (derivative!371 lt!1297542 tl!3933)) (nullableFct!1069 (derivative!371 lt!1297542 tl!3933)))))

(declare-fun bs!574895 () Bool)

(assert (= bs!574895 d!1088654))

(assert (=> bs!574895 m!4222603))

(declare-fun m!4223431 () Bool)

(assert (=> bs!574895 m!4223431))

(assert (=> b!3717667 d!1088654))

(declare-fun b!3718404 () Bool)

(declare-fun res!1511438 () Bool)

(declare-fun e!2302206 () Bool)

(assert (=> b!3718404 (=> (not res!1511438) (not e!2302206))))

(declare-fun call!269895 () Bool)

(assert (=> b!3718404 (= res!1511438 call!269895)))

(declare-fun e!2302207 () Bool)

(assert (=> b!3718404 (= e!2302207 e!2302206)))

(declare-fun bm!269888 () Bool)

(declare-fun c!642903 () Bool)

(assert (=> bm!269888 (= call!269895 (validRegex!4964 (ite c!642903 (regOne!22227 lt!1297604) (regTwo!22226 lt!1297604))))))

(declare-fun b!3718405 () Bool)

(declare-fun call!269894 () Bool)

(assert (=> b!3718405 (= e!2302206 call!269894)))

(declare-fun b!3718406 () Bool)

(declare-fun e!2302208 () Bool)

(assert (=> b!3718406 (= e!2302208 e!2302207)))

(assert (=> b!3718406 (= c!642903 ((_ is Union!10857) lt!1297604))))

(declare-fun bm!269889 () Bool)

(declare-fun call!269893 () Bool)

(declare-fun c!642902 () Bool)

(assert (=> bm!269889 (= call!269893 (validRegex!4964 (ite c!642902 (reg!11186 lt!1297604) (ite c!642903 (regTwo!22227 lt!1297604) (regOne!22226 lt!1297604)))))))

(declare-fun b!3718407 () Bool)

(declare-fun e!2302205 () Bool)

(declare-fun e!2302204 () Bool)

(assert (=> b!3718407 (= e!2302205 e!2302204)))

(declare-fun res!1511435 () Bool)

(assert (=> b!3718407 (=> (not res!1511435) (not e!2302204))))

(assert (=> b!3718407 (= res!1511435 call!269894)))

(declare-fun b!3718408 () Bool)

(declare-fun e!2302202 () Bool)

(assert (=> b!3718408 (= e!2302208 e!2302202)))

(declare-fun res!1511437 () Bool)

(assert (=> b!3718408 (= res!1511437 (not (nullable!3780 (reg!11186 lt!1297604))))))

(assert (=> b!3718408 (=> (not res!1511437) (not e!2302202))))

(declare-fun b!3718409 () Bool)

(declare-fun e!2302203 () Bool)

(assert (=> b!3718409 (= e!2302203 e!2302208)))

(assert (=> b!3718409 (= c!642902 ((_ is Star!10857) lt!1297604))))

(declare-fun b!3718410 () Bool)

(declare-fun res!1511439 () Bool)

(assert (=> b!3718410 (=> res!1511439 e!2302205)))

(assert (=> b!3718410 (= res!1511439 (not ((_ is Concat!17128) lt!1297604)))))

(assert (=> b!3718410 (= e!2302207 e!2302205)))

(declare-fun bm!269890 () Bool)

(assert (=> bm!269890 (= call!269894 call!269893)))

(declare-fun d!1088656 () Bool)

(declare-fun res!1511436 () Bool)

(assert (=> d!1088656 (=> res!1511436 e!2302203)))

(assert (=> d!1088656 (= res!1511436 ((_ is ElementMatch!10857) lt!1297604))))

(assert (=> d!1088656 (= (validRegex!4964 lt!1297604) e!2302203)))

(declare-fun b!3718411 () Bool)

(assert (=> b!3718411 (= e!2302204 call!269895)))

(declare-fun b!3718412 () Bool)

(assert (=> b!3718412 (= e!2302202 call!269893)))

(assert (= (and d!1088656 (not res!1511436)) b!3718409))

(assert (= (and b!3718409 c!642902) b!3718408))

(assert (= (and b!3718409 (not c!642902)) b!3718406))

(assert (= (and b!3718408 res!1511437) b!3718412))

(assert (= (and b!3718406 c!642903) b!3718404))

(assert (= (and b!3718406 (not c!642903)) b!3718410))

(assert (= (and b!3718404 res!1511438) b!3718405))

(assert (= (and b!3718410 (not res!1511439)) b!3718407))

(assert (= (and b!3718407 res!1511435) b!3718411))

(assert (= (or b!3718405 b!3718407) bm!269890))

(assert (= (or b!3718404 b!3718411) bm!269888))

(assert (= (or b!3718412 bm!269890) bm!269889))

(declare-fun m!4223433 () Bool)

(assert (=> bm!269888 m!4223433))

(declare-fun m!4223435 () Bool)

(assert (=> bm!269889 m!4223435))

(declare-fun m!4223437 () Bool)

(assert (=> b!3718408 m!4223437))

(assert (=> d!1088440 d!1088656))

(assert (=> d!1088440 d!1088598))

(assert (=> b!3717572 d!1088624))

(declare-fun d!1088658 () Bool)

(assert (=> d!1088658 (= (nullable!3780 lt!1297542) (nullableFct!1069 lt!1297542))))

(declare-fun bs!574896 () Bool)

(assert (= bs!574896 d!1088658))

(declare-fun m!4223439 () Bool)

(assert (=> bs!574896 m!4223439))

(assert (=> b!3717574 d!1088658))

(declare-fun b!3718415 () Bool)

(declare-fun res!1511440 () Bool)

(declare-fun e!2302209 () Bool)

(assert (=> b!3718415 (=> (not res!1511440) (not e!2302209))))

(declare-fun lt!1297644 () List!39738)

(assert (=> b!3718415 (= res!1511440 (= (size!30022 lt!1297644) (+ (size!30022 call!269632) (size!30022 call!269634))))))

(declare-fun b!3718416 () Bool)

(assert (=> b!3718416 (= e!2302209 (or (not (= call!269634 Nil!39614)) (= lt!1297644 call!269632)))))

(declare-fun b!3718413 () Bool)

(declare-fun e!2302210 () List!39738)

(assert (=> b!3718413 (= e!2302210 call!269634)))

(declare-fun b!3718414 () Bool)

(assert (=> b!3718414 (= e!2302210 (Cons!39614 (h!45034 call!269632) (++!9802 (t!302421 call!269632) call!269634)))))

(declare-fun d!1088660 () Bool)

(assert (=> d!1088660 e!2302209))

(declare-fun res!1511441 () Bool)

(assert (=> d!1088660 (=> (not res!1511441) (not e!2302209))))

(assert (=> d!1088660 (= res!1511441 (= (content!5739 lt!1297644) ((_ map or) (content!5739 call!269632) (content!5739 call!269634))))))

(assert (=> d!1088660 (= lt!1297644 e!2302210)))

(declare-fun c!642904 () Bool)

(assert (=> d!1088660 (= c!642904 ((_ is Nil!39614) call!269632))))

(assert (=> d!1088660 (= (++!9802 call!269632 call!269634) lt!1297644)))

(assert (= (and d!1088660 c!642904) b!3718413))

(assert (= (and d!1088660 (not c!642904)) b!3718414))

(assert (= (and d!1088660 res!1511441) b!3718415))

(assert (= (and b!3718415 res!1511440) b!3718416))

(declare-fun m!4223441 () Bool)

(assert (=> b!3718415 m!4223441))

(declare-fun m!4223443 () Bool)

(assert (=> b!3718415 m!4223443))

(declare-fun m!4223445 () Bool)

(assert (=> b!3718415 m!4223445))

(declare-fun m!4223447 () Bool)

(assert (=> b!3718414 m!4223447))

(declare-fun m!4223449 () Bool)

(assert (=> d!1088660 m!4223449))

(declare-fun m!4223451 () Bool)

(assert (=> d!1088660 m!4223451))

(declare-fun m!4223453 () Bool)

(assert (=> d!1088660 m!4223453))

(assert (=> bm!269629 d!1088660))

(assert (=> b!3717674 d!1088626))

(assert (=> b!3717581 d!1088624))

(assert (=> b!3717439 d!1088424))

(declare-fun b!3718417 () Bool)

(declare-fun e!2302213 () Regex!10857)

(declare-fun e!2302211 () Regex!10857)

(assert (=> b!3718417 (= e!2302213 e!2302211)))

(declare-fun c!642906 () Bool)

(assert (=> b!3718417 (= c!642906 ((_ is ElementMatch!10857) (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326))))))))

(declare-fun bm!269891 () Bool)

(declare-fun call!269898 () Regex!10857)

(declare-fun c!642905 () Bool)

(assert (=> bm!269891 (= call!269898 (derivativeStep!3322 (ite c!642905 (regOne!22227 (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326))))) (regOne!22226 (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))) c!13576))))

(declare-fun d!1088662 () Bool)

(declare-fun lt!1297645 () Regex!10857)

(assert (=> d!1088662 (validRegex!4964 lt!1297645)))

(assert (=> d!1088662 (= lt!1297645 e!2302213)))

(declare-fun c!642909 () Bool)

(assert (=> d!1088662 (= c!642909 (or ((_ is EmptyExpr!10857) (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326))))) ((_ is EmptyLang!10857) (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))))

(assert (=> d!1088662 (validRegex!4964 (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))

(assert (=> d!1088662 (= (derivativeStep!3322 (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))) c!13576) lt!1297645)))

(declare-fun bm!269892 () Bool)

(declare-fun call!269896 () Regex!10857)

(assert (=> bm!269892 (= call!269896 call!269898)))

(declare-fun e!2302215 () Regex!10857)

(declare-fun call!269899 () Regex!10857)

(declare-fun b!3718418 () Bool)

(assert (=> b!3718418 (= e!2302215 (Union!10857 (Concat!17128 call!269896 (regTwo!22226 (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))) call!269899))))

(declare-fun bm!269893 () Bool)

(declare-fun call!269897 () Regex!10857)

(assert (=> bm!269893 (= call!269899 call!269897)))

(declare-fun b!3718419 () Bool)

(declare-fun c!642907 () Bool)

(assert (=> b!3718419 (= c!642907 (nullable!3780 (regOne!22226 (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))))

(declare-fun e!2302212 () Regex!10857)

(assert (=> b!3718419 (= e!2302212 e!2302215)))

(declare-fun b!3718420 () Bool)

(assert (=> b!3718420 (= e!2302212 (Concat!17128 call!269899 (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326))))))))

(declare-fun b!3718421 () Bool)

(assert (=> b!3718421 (= e!2302213 EmptyLang!10857)))

(declare-fun b!3718422 () Bool)

(assert (=> b!3718422 (= c!642905 ((_ is Union!10857) (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326))))))))

(declare-fun e!2302214 () Regex!10857)

(assert (=> b!3718422 (= e!2302211 e!2302214)))

(declare-fun b!3718423 () Bool)

(assert (=> b!3718423 (= e!2302214 e!2302212)))

(declare-fun c!642908 () Bool)

(assert (=> b!3718423 (= c!642908 ((_ is Star!10857) (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326))))))))

(declare-fun b!3718424 () Bool)

(assert (=> b!3718424 (= e!2302215 (Union!10857 (Concat!17128 call!269896 (regTwo!22226 (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))) EmptyLang!10857))))

(declare-fun b!3718425 () Bool)

(assert (=> b!3718425 (= e!2302211 (ite (= c!13576 (c!642561 (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3718426 () Bool)

(assert (=> b!3718426 (= e!2302214 (Union!10857 call!269898 call!269897))))

(declare-fun bm!269894 () Bool)

(assert (=> bm!269894 (= call!269897 (derivativeStep!3322 (ite c!642905 (regTwo!22227 (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326))))) (ite c!642908 (reg!11186 (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326))))) (regTwo!22226 (ite c!642703 (regTwo!22227 (regTwo!22226 r!26326)) (ite c!642706 (reg!11186 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326))))))) c!13576))))

(assert (= (and d!1088662 c!642909) b!3718421))

(assert (= (and d!1088662 (not c!642909)) b!3718417))

(assert (= (and b!3718417 c!642906) b!3718425))

(assert (= (and b!3718417 (not c!642906)) b!3718422))

(assert (= (and b!3718422 c!642905) b!3718426))

(assert (= (and b!3718422 (not c!642905)) b!3718423))

(assert (= (and b!3718423 c!642908) b!3718420))

(assert (= (and b!3718423 (not c!642908)) b!3718419))

(assert (= (and b!3718419 c!642907) b!3718418))

(assert (= (and b!3718419 (not c!642907)) b!3718424))

(assert (= (or b!3718418 b!3718424) bm!269892))

(assert (= (or b!3718420 b!3718418) bm!269893))

(assert (= (or b!3718426 bm!269893) bm!269894))

(assert (= (or b!3718426 bm!269892) bm!269891))

(declare-fun m!4223455 () Bool)

(assert (=> bm!269891 m!4223455))

(declare-fun m!4223457 () Bool)

(assert (=> d!1088662 m!4223457))

(declare-fun m!4223459 () Bool)

(assert (=> d!1088662 m!4223459))

(declare-fun m!4223461 () Bool)

(assert (=> b!3718419 m!4223461))

(declare-fun m!4223463 () Bool)

(assert (=> bm!269894 m!4223463))

(assert (=> bm!269711 d!1088662))

(declare-fun d!1088664 () Bool)

(declare-fun lt!1297646 () Regex!10857)

(assert (=> d!1088664 (validRegex!4964 lt!1297646)))

(declare-fun e!2302216 () Regex!10857)

(assert (=> d!1088664 (= lt!1297646 e!2302216)))

(declare-fun c!642910 () Bool)

(assert (=> d!1088664 (= c!642910 ((_ is Cons!39614) (t!302421 tl!3933)))))

(assert (=> d!1088664 (validRegex!4964 (derivativeStep!3322 lt!1297539 (h!45034 tl!3933)))))

(assert (=> d!1088664 (= (derivative!371 (derivativeStep!3322 lt!1297539 (h!45034 tl!3933)) (t!302421 tl!3933)) lt!1297646)))

(declare-fun b!3718427 () Bool)

(assert (=> b!3718427 (= e!2302216 (derivative!371 (derivativeStep!3322 (derivativeStep!3322 lt!1297539 (h!45034 tl!3933)) (h!45034 (t!302421 tl!3933))) (t!302421 (t!302421 tl!3933))))))

(declare-fun b!3718428 () Bool)

(assert (=> b!3718428 (= e!2302216 (derivativeStep!3322 lt!1297539 (h!45034 tl!3933)))))

(assert (= (and d!1088664 c!642910) b!3718427))

(assert (= (and d!1088664 (not c!642910)) b!3718428))

(declare-fun m!4223465 () Bool)

(assert (=> d!1088664 m!4223465))

(assert (=> d!1088664 m!4222813))

(declare-fun m!4223467 () Bool)

(assert (=> d!1088664 m!4223467))

(assert (=> b!3718427 m!4222813))

(declare-fun m!4223469 () Bool)

(assert (=> b!3718427 m!4223469))

(assert (=> b!3718427 m!4223469))

(declare-fun m!4223471 () Bool)

(assert (=> b!3718427 m!4223471))

(assert (=> b!3717461 d!1088664))

(declare-fun b!3718429 () Bool)

(declare-fun e!2302219 () Regex!10857)

(declare-fun e!2302217 () Regex!10857)

(assert (=> b!3718429 (= e!2302219 e!2302217)))

(declare-fun c!642912 () Bool)

(assert (=> b!3718429 (= c!642912 ((_ is ElementMatch!10857) lt!1297539))))

(declare-fun c!642911 () Bool)

(declare-fun bm!269895 () Bool)

(declare-fun call!269902 () Regex!10857)

(assert (=> bm!269895 (= call!269902 (derivativeStep!3322 (ite c!642911 (regOne!22227 lt!1297539) (regOne!22226 lt!1297539)) (h!45034 tl!3933)))))

(declare-fun d!1088666 () Bool)

(declare-fun lt!1297647 () Regex!10857)

(assert (=> d!1088666 (validRegex!4964 lt!1297647)))

(assert (=> d!1088666 (= lt!1297647 e!2302219)))

(declare-fun c!642915 () Bool)

(assert (=> d!1088666 (= c!642915 (or ((_ is EmptyExpr!10857) lt!1297539) ((_ is EmptyLang!10857) lt!1297539)))))

(assert (=> d!1088666 (validRegex!4964 lt!1297539)))

(assert (=> d!1088666 (= (derivativeStep!3322 lt!1297539 (h!45034 tl!3933)) lt!1297647)))

(declare-fun bm!269896 () Bool)

(declare-fun call!269900 () Regex!10857)

(assert (=> bm!269896 (= call!269900 call!269902)))

(declare-fun call!269903 () Regex!10857)

(declare-fun e!2302221 () Regex!10857)

(declare-fun b!3718430 () Bool)

(assert (=> b!3718430 (= e!2302221 (Union!10857 (Concat!17128 call!269900 (regTwo!22226 lt!1297539)) call!269903))))

(declare-fun bm!269897 () Bool)

(declare-fun call!269901 () Regex!10857)

(assert (=> bm!269897 (= call!269903 call!269901)))

(declare-fun b!3718431 () Bool)

(declare-fun c!642913 () Bool)

(assert (=> b!3718431 (= c!642913 (nullable!3780 (regOne!22226 lt!1297539)))))

(declare-fun e!2302218 () Regex!10857)

(assert (=> b!3718431 (= e!2302218 e!2302221)))

(declare-fun b!3718432 () Bool)

(assert (=> b!3718432 (= e!2302218 (Concat!17128 call!269903 lt!1297539))))

(declare-fun b!3718433 () Bool)

(assert (=> b!3718433 (= e!2302219 EmptyLang!10857)))

(declare-fun b!3718434 () Bool)

(assert (=> b!3718434 (= c!642911 ((_ is Union!10857) lt!1297539))))

(declare-fun e!2302220 () Regex!10857)

(assert (=> b!3718434 (= e!2302217 e!2302220)))

(declare-fun b!3718435 () Bool)

(assert (=> b!3718435 (= e!2302220 e!2302218)))

(declare-fun c!642914 () Bool)

(assert (=> b!3718435 (= c!642914 ((_ is Star!10857) lt!1297539))))

(declare-fun b!3718436 () Bool)

(assert (=> b!3718436 (= e!2302221 (Union!10857 (Concat!17128 call!269900 (regTwo!22226 lt!1297539)) EmptyLang!10857))))

(declare-fun b!3718437 () Bool)

(assert (=> b!3718437 (= e!2302217 (ite (= (h!45034 tl!3933) (c!642561 lt!1297539)) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3718438 () Bool)

(assert (=> b!3718438 (= e!2302220 (Union!10857 call!269902 call!269901))))

(declare-fun bm!269898 () Bool)

(assert (=> bm!269898 (= call!269901 (derivativeStep!3322 (ite c!642911 (regTwo!22227 lt!1297539) (ite c!642914 (reg!11186 lt!1297539) (regTwo!22226 lt!1297539))) (h!45034 tl!3933)))))

(assert (= (and d!1088666 c!642915) b!3718433))

(assert (= (and d!1088666 (not c!642915)) b!3718429))

(assert (= (and b!3718429 c!642912) b!3718437))

(assert (= (and b!3718429 (not c!642912)) b!3718434))

(assert (= (and b!3718434 c!642911) b!3718438))

(assert (= (and b!3718434 (not c!642911)) b!3718435))

(assert (= (and b!3718435 c!642914) b!3718432))

(assert (= (and b!3718435 (not c!642914)) b!3718431))

(assert (= (and b!3718431 c!642913) b!3718430))

(assert (= (and b!3718431 (not c!642913)) b!3718436))

(assert (= (or b!3718430 b!3718436) bm!269896))

(assert (= (or b!3718432 b!3718430) bm!269897))

(assert (= (or b!3718438 bm!269897) bm!269898))

(assert (= (or b!3718438 bm!269896) bm!269895))

(declare-fun m!4223473 () Bool)

(assert (=> bm!269895 m!4223473))

(declare-fun m!4223475 () Bool)

(assert (=> d!1088666 m!4223475))

(assert (=> d!1088666 m!4222651))

(declare-fun m!4223477 () Bool)

(assert (=> b!3718431 m!4223477))

(declare-fun m!4223479 () Bool)

(assert (=> bm!269898 m!4223479))

(assert (=> b!3717461 d!1088666))

(assert (=> b!3717459 d!1088626))

(declare-fun d!1088668 () Bool)

(assert (=> d!1088668 (= (nullable!3780 (reg!11186 (regTwo!22226 r!26326))) (nullableFct!1069 (reg!11186 (regTwo!22226 r!26326))))))

(declare-fun bs!574897 () Bool)

(assert (= bs!574897 d!1088668))

(declare-fun m!4223481 () Bool)

(assert (=> bs!574897 m!4223481))

(assert (=> b!3717523 d!1088668))

(declare-fun bm!269899 () Bool)

(declare-fun call!269904 () List!39738)

(declare-fun call!269907 () List!39738)

(assert (=> bm!269899 (= call!269904 call!269907)))

(declare-fun c!642918 () Bool)

(declare-fun call!269906 () List!39738)

(declare-fun bm!269900 () Bool)

(assert (=> bm!269900 (= call!269906 (usedCharacters!1120 (ite c!642918 (regTwo!22227 (ite c!642596 (regTwo!22227 r!26326) (regTwo!22226 r!26326))) (regTwo!22226 (ite c!642596 (regTwo!22227 r!26326) (regTwo!22226 r!26326))))))))

(declare-fun b!3718440 () Bool)

(declare-fun e!2302225 () List!39738)

(assert (=> b!3718440 (= e!2302225 (Cons!39614 (c!642561 (ite c!642596 (regTwo!22227 r!26326) (regTwo!22226 r!26326))) Nil!39614))))

(declare-fun b!3718441 () Bool)

(declare-fun e!2302223 () List!39738)

(declare-fun call!269905 () List!39738)

(assert (=> b!3718441 (= e!2302223 call!269905)))

(declare-fun b!3718442 () Bool)

(declare-fun e!2302224 () List!39738)

(assert (=> b!3718442 (= e!2302224 call!269907)))

(declare-fun bm!269901 () Bool)

(assert (=> bm!269901 (= call!269905 (++!9802 call!269904 call!269906))))

(declare-fun b!3718443 () Bool)

(declare-fun c!642916 () Bool)

(assert (=> b!3718443 (= c!642916 ((_ is Star!10857) (ite c!642596 (regTwo!22227 r!26326) (regTwo!22226 r!26326))))))

(assert (=> b!3718443 (= e!2302225 e!2302224)))

(declare-fun b!3718444 () Bool)

(declare-fun e!2302222 () List!39738)

(assert (=> b!3718444 (= e!2302222 Nil!39614)))

(declare-fun b!3718439 () Bool)

(assert (=> b!3718439 (= e!2302224 e!2302223)))

(assert (=> b!3718439 (= c!642918 ((_ is Union!10857) (ite c!642596 (regTwo!22227 r!26326) (regTwo!22226 r!26326))))))

(declare-fun d!1088670 () Bool)

(declare-fun c!642917 () Bool)

(assert (=> d!1088670 (= c!642917 (or ((_ is EmptyExpr!10857) (ite c!642596 (regTwo!22227 r!26326) (regTwo!22226 r!26326))) ((_ is EmptyLang!10857) (ite c!642596 (regTwo!22227 r!26326) (regTwo!22226 r!26326)))))))

(assert (=> d!1088670 (= (usedCharacters!1120 (ite c!642596 (regTwo!22227 r!26326) (regTwo!22226 r!26326))) e!2302222)))

(declare-fun bm!269902 () Bool)

(assert (=> bm!269902 (= call!269907 (usedCharacters!1120 (ite c!642916 (reg!11186 (ite c!642596 (regTwo!22227 r!26326) (regTwo!22226 r!26326))) (ite c!642918 (regOne!22227 (ite c!642596 (regTwo!22227 r!26326) (regTwo!22226 r!26326))) (regOne!22226 (ite c!642596 (regTwo!22227 r!26326) (regTwo!22226 r!26326)))))))))

(declare-fun b!3718445 () Bool)

(assert (=> b!3718445 (= e!2302222 e!2302225)))

(declare-fun c!642919 () Bool)

(assert (=> b!3718445 (= c!642919 ((_ is ElementMatch!10857) (ite c!642596 (regTwo!22227 r!26326) (regTwo!22226 r!26326))))))

(declare-fun b!3718446 () Bool)

(assert (=> b!3718446 (= e!2302223 call!269905)))

(assert (= (and d!1088670 c!642917) b!3718444))

(assert (= (and d!1088670 (not c!642917)) b!3718445))

(assert (= (and b!3718445 c!642919) b!3718440))

(assert (= (and b!3718445 (not c!642919)) b!3718443))

(assert (= (and b!3718443 c!642916) b!3718442))

(assert (= (and b!3718443 (not c!642916)) b!3718439))

(assert (= (and b!3718439 c!642918) b!3718441))

(assert (= (and b!3718439 (not c!642918)) b!3718446))

(assert (= (or b!3718441 b!3718446) bm!269899))

(assert (= (or b!3718441 b!3718446) bm!269900))

(assert (= (or b!3718441 b!3718446) bm!269901))

(assert (= (or b!3718442 bm!269899) bm!269902))

(declare-fun m!4223483 () Bool)

(assert (=> bm!269900 m!4223483))

(declare-fun m!4223485 () Bool)

(assert (=> bm!269901 m!4223485))

(declare-fun m!4223487 () Bool)

(assert (=> bm!269902 m!4223487))

(assert (=> bm!269628 d!1088670))

(assert (=> b!3717660 d!1088624))

(assert (=> b!3717229 d!1088624))

(declare-fun b!3718447 () Bool)

(declare-fun e!2302228 () Regex!10857)

(declare-fun e!2302226 () Regex!10857)

(assert (=> b!3718447 (= e!2302228 e!2302226)))

(declare-fun c!642921 () Bool)

(assert (=> b!3718447 (= c!642921 ((_ is ElementMatch!10857) (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326)))))))

(declare-fun call!269910 () Regex!10857)

(declare-fun c!642920 () Bool)

(declare-fun bm!269903 () Bool)

(assert (=> bm!269903 (= call!269910 (derivativeStep!3322 (ite c!642920 (regOne!22227 (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326)))) (regOne!22226 (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326))))) c!13576))))

(declare-fun d!1088672 () Bool)

(declare-fun lt!1297648 () Regex!10857)

(assert (=> d!1088672 (validRegex!4964 lt!1297648)))

(assert (=> d!1088672 (= lt!1297648 e!2302228)))

(declare-fun c!642924 () Bool)

(assert (=> d!1088672 (= c!642924 (or ((_ is EmptyExpr!10857) (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326)))) ((_ is EmptyLang!10857) (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326))))))))

(assert (=> d!1088672 (validRegex!4964 (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326))))))

(assert (=> d!1088672 (= (derivativeStep!3322 (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326))) c!13576) lt!1297648)))

(declare-fun bm!269904 () Bool)

(declare-fun call!269908 () Regex!10857)

(assert (=> bm!269904 (= call!269908 call!269910)))

(declare-fun b!3718448 () Bool)

(declare-fun e!2302230 () Regex!10857)

(declare-fun call!269911 () Regex!10857)

(assert (=> b!3718448 (= e!2302230 (Union!10857 (Concat!17128 call!269908 (regTwo!22226 (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326))))) call!269911))))

(declare-fun bm!269905 () Bool)

(declare-fun call!269909 () Regex!10857)

(assert (=> bm!269905 (= call!269911 call!269909)))

(declare-fun b!3718449 () Bool)

(declare-fun c!642922 () Bool)

(assert (=> b!3718449 (= c!642922 (nullable!3780 (regOne!22226 (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326))))))))

(declare-fun e!2302227 () Regex!10857)

(assert (=> b!3718449 (= e!2302227 e!2302230)))

(declare-fun b!3718450 () Bool)

(assert (=> b!3718450 (= e!2302227 (Concat!17128 call!269911 (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326)))))))

(declare-fun b!3718451 () Bool)

(assert (=> b!3718451 (= e!2302228 EmptyLang!10857)))

(declare-fun b!3718452 () Bool)

(assert (=> b!3718452 (= c!642920 ((_ is Union!10857) (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326)))))))

(declare-fun e!2302229 () Regex!10857)

(assert (=> b!3718452 (= e!2302226 e!2302229)))

(declare-fun b!3718453 () Bool)

(assert (=> b!3718453 (= e!2302229 e!2302227)))

(declare-fun c!642923 () Bool)

(assert (=> b!3718453 (= c!642923 ((_ is Star!10857) (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326)))))))

(declare-fun b!3718454 () Bool)

(assert (=> b!3718454 (= e!2302230 (Union!10857 (Concat!17128 call!269908 (regTwo!22226 (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326))))) EmptyLang!10857))))

(declare-fun b!3718455 () Bool)

(assert (=> b!3718455 (= e!2302226 (ite (= c!13576 (c!642561 (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326))))) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3718456 () Bool)

(assert (=> b!3718456 (= e!2302229 (Union!10857 call!269910 call!269909))))

(declare-fun bm!269906 () Bool)

(assert (=> bm!269906 (= call!269909 (derivativeStep!3322 (ite c!642920 (regTwo!22227 (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326)))) (ite c!642923 (reg!11186 (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326)))) (regTwo!22226 (ite c!642651 (regTwo!22227 r!26326) (ite c!642654 (reg!11186 r!26326) (regTwo!22226 r!26326)))))) c!13576))))

(assert (= (and d!1088672 c!642924) b!3718451))

(assert (= (and d!1088672 (not c!642924)) b!3718447))

(assert (= (and b!3718447 c!642921) b!3718455))

(assert (= (and b!3718447 (not c!642921)) b!3718452))

(assert (= (and b!3718452 c!642920) b!3718456))

(assert (= (and b!3718452 (not c!642920)) b!3718453))

(assert (= (and b!3718453 c!642923) b!3718450))

(assert (= (and b!3718453 (not c!642923)) b!3718449))

(assert (= (and b!3718449 c!642922) b!3718448))

(assert (= (and b!3718449 (not c!642922)) b!3718454))

(assert (= (or b!3718448 b!3718454) bm!269904))

(assert (= (or b!3718450 b!3718448) bm!269905))

(assert (= (or b!3718456 bm!269905) bm!269906))

(assert (= (or b!3718456 bm!269904) bm!269903))

(declare-fun m!4223489 () Bool)

(assert (=> bm!269903 m!4223489))

(declare-fun m!4223491 () Bool)

(assert (=> d!1088672 m!4223491))

(declare-fun m!4223493 () Bool)

(assert (=> d!1088672 m!4223493))

(declare-fun m!4223495 () Bool)

(assert (=> b!3718449 m!4223495))

(declare-fun m!4223497 () Bool)

(assert (=> bm!269906 m!4223497))

(assert (=> bm!269668 d!1088672))

(declare-fun b!3718457 () Bool)

(declare-fun e!2302236 () Bool)

(assert (=> b!3718457 (= e!2302236 (matchR!5302 (derivativeStep!3322 (derivativeStep!3322 lt!1297545 (head!8023 tl!3933)) (head!8023 (tail!5750 tl!3933))) (tail!5750 (tail!5750 tl!3933))))))

(declare-fun b!3718458 () Bool)

(declare-fun e!2302233 () Bool)

(declare-fun lt!1297649 () Bool)

(declare-fun call!269912 () Bool)

(assert (=> b!3718458 (= e!2302233 (= lt!1297649 call!269912))))

(declare-fun b!3718459 () Bool)

(declare-fun res!1511444 () Bool)

(declare-fun e!2302231 () Bool)

(assert (=> b!3718459 (=> res!1511444 e!2302231)))

(assert (=> b!3718459 (= res!1511444 (not ((_ is ElementMatch!10857) (derivativeStep!3322 lt!1297545 (head!8023 tl!3933)))))))

(declare-fun e!2302235 () Bool)

(assert (=> b!3718459 (= e!2302235 e!2302231)))

(declare-fun b!3718460 () Bool)

(declare-fun e!2302234 () Bool)

(assert (=> b!3718460 (= e!2302234 (not (= (head!8023 (tail!5750 tl!3933)) (c!642561 (derivativeStep!3322 lt!1297545 (head!8023 tl!3933))))))))

(declare-fun b!3718461 () Bool)

(declare-fun e!2302237 () Bool)

(assert (=> b!3718461 (= e!2302231 e!2302237)))

(declare-fun res!1511442 () Bool)

(assert (=> b!3718461 (=> (not res!1511442) (not e!2302237))))

(assert (=> b!3718461 (= res!1511442 (not lt!1297649))))

(declare-fun b!3718462 () Bool)

(assert (=> b!3718462 (= e!2302236 (nullable!3780 (derivativeStep!3322 lt!1297545 (head!8023 tl!3933))))))

(declare-fun b!3718463 () Bool)

(assert (=> b!3718463 (= e!2302233 e!2302235)))

(declare-fun c!642927 () Bool)

(assert (=> b!3718463 (= c!642927 ((_ is EmptyLang!10857) (derivativeStep!3322 lt!1297545 (head!8023 tl!3933))))))

(declare-fun d!1088674 () Bool)

(assert (=> d!1088674 e!2302233))

(declare-fun c!642926 () Bool)

(assert (=> d!1088674 (= c!642926 ((_ is EmptyExpr!10857) (derivativeStep!3322 lt!1297545 (head!8023 tl!3933))))))

(assert (=> d!1088674 (= lt!1297649 e!2302236)))

(declare-fun c!642925 () Bool)

(assert (=> d!1088674 (= c!642925 (isEmpty!23510 (tail!5750 tl!3933)))))

(assert (=> d!1088674 (validRegex!4964 (derivativeStep!3322 lt!1297545 (head!8023 tl!3933)))))

(assert (=> d!1088674 (= (matchR!5302 (derivativeStep!3322 lt!1297545 (head!8023 tl!3933)) (tail!5750 tl!3933)) lt!1297649)))

(declare-fun b!3718464 () Bool)

(declare-fun res!1511446 () Bool)

(assert (=> b!3718464 (=> res!1511446 e!2302231)))

(declare-fun e!2302232 () Bool)

(assert (=> b!3718464 (= res!1511446 e!2302232)))

(declare-fun res!1511447 () Bool)

(assert (=> b!3718464 (=> (not res!1511447) (not e!2302232))))

(assert (=> b!3718464 (= res!1511447 lt!1297649)))

(declare-fun b!3718465 () Bool)

(declare-fun res!1511443 () Bool)

(assert (=> b!3718465 (=> (not res!1511443) (not e!2302232))))

(assert (=> b!3718465 (= res!1511443 (not call!269912))))

(declare-fun b!3718466 () Bool)

(assert (=> b!3718466 (= e!2302237 e!2302234)))

(declare-fun res!1511448 () Bool)

(assert (=> b!3718466 (=> res!1511448 e!2302234)))

(assert (=> b!3718466 (= res!1511448 call!269912)))

(declare-fun b!3718467 () Bool)

(declare-fun res!1511449 () Bool)

(assert (=> b!3718467 (=> res!1511449 e!2302234)))

(assert (=> b!3718467 (= res!1511449 (not (isEmpty!23510 (tail!5750 (tail!5750 tl!3933)))))))

(declare-fun b!3718468 () Bool)

(assert (=> b!3718468 (= e!2302235 (not lt!1297649))))

(declare-fun bm!269907 () Bool)

(assert (=> bm!269907 (= call!269912 (isEmpty!23510 (tail!5750 tl!3933)))))

(declare-fun b!3718469 () Bool)

(assert (=> b!3718469 (= e!2302232 (= (head!8023 (tail!5750 tl!3933)) (c!642561 (derivativeStep!3322 lt!1297545 (head!8023 tl!3933)))))))

(declare-fun b!3718470 () Bool)

(declare-fun res!1511445 () Bool)

(assert (=> b!3718470 (=> (not res!1511445) (not e!2302232))))

(assert (=> b!3718470 (= res!1511445 (isEmpty!23510 (tail!5750 (tail!5750 tl!3933))))))

(assert (= (and d!1088674 c!642925) b!3718462))

(assert (= (and d!1088674 (not c!642925)) b!3718457))

(assert (= (and d!1088674 c!642926) b!3718458))

(assert (= (and d!1088674 (not c!642926)) b!3718463))

(assert (= (and b!3718463 c!642927) b!3718468))

(assert (= (and b!3718463 (not c!642927)) b!3718459))

(assert (= (and b!3718459 (not res!1511444)) b!3718464))

(assert (= (and b!3718464 res!1511447) b!3718465))

(assert (= (and b!3718465 res!1511443) b!3718470))

(assert (= (and b!3718470 res!1511445) b!3718469))

(assert (= (and b!3718464 (not res!1511446)) b!3718461))

(assert (= (and b!3718461 res!1511442) b!3718466))

(assert (= (and b!3718466 (not res!1511448)) b!3718467))

(assert (= (and b!3718467 (not res!1511449)) b!3718460))

(assert (= (or b!3718458 b!3718465 b!3718466) bm!269907))

(assert (=> b!3718457 m!4222641))

(declare-fun m!4223499 () Bool)

(assert (=> b!3718457 m!4223499))

(assert (=> b!3718457 m!4222923))

(assert (=> b!3718457 m!4223499))

(declare-fun m!4223501 () Bool)

(assert (=> b!3718457 m!4223501))

(assert (=> b!3718457 m!4222641))

(declare-fun m!4223503 () Bool)

(assert (=> b!3718457 m!4223503))

(assert (=> b!3718457 m!4223501))

(assert (=> b!3718457 m!4223503))

(declare-fun m!4223505 () Bool)

(assert (=> b!3718457 m!4223505))

(assert (=> b!3718469 m!4222641))

(assert (=> b!3718469 m!4223499))

(assert (=> b!3718462 m!4222923))

(declare-fun m!4223507 () Bool)

(assert (=> b!3718462 m!4223507))

(assert (=> b!3718460 m!4222641))

(assert (=> b!3718460 m!4223499))

(assert (=> b!3718467 m!4222641))

(assert (=> b!3718467 m!4223503))

(assert (=> b!3718467 m!4223503))

(declare-fun m!4223509 () Bool)

(assert (=> b!3718467 m!4223509))

(assert (=> bm!269907 m!4222641))

(assert (=> bm!269907 m!4222647))

(assert (=> d!1088674 m!4222641))

(assert (=> d!1088674 m!4222647))

(assert (=> d!1088674 m!4222923))

(declare-fun m!4223511 () Bool)

(assert (=> d!1088674 m!4223511))

(assert (=> b!3718470 m!4222641))

(assert (=> b!3718470 m!4223503))

(assert (=> b!3718470 m!4223503))

(assert (=> b!3718470 m!4223509))

(assert (=> b!3717648 d!1088674))

(declare-fun b!3718471 () Bool)

(declare-fun e!2302240 () Regex!10857)

(declare-fun e!2302238 () Regex!10857)

(assert (=> b!3718471 (= e!2302240 e!2302238)))

(declare-fun c!642929 () Bool)

(assert (=> b!3718471 (= c!642929 ((_ is ElementMatch!10857) lt!1297545))))

(declare-fun call!269915 () Regex!10857)

(declare-fun bm!269908 () Bool)

(declare-fun c!642928 () Bool)

(assert (=> bm!269908 (= call!269915 (derivativeStep!3322 (ite c!642928 (regOne!22227 lt!1297545) (regOne!22226 lt!1297545)) (head!8023 tl!3933)))))

(declare-fun d!1088676 () Bool)

(declare-fun lt!1297650 () Regex!10857)

(assert (=> d!1088676 (validRegex!4964 lt!1297650)))

(assert (=> d!1088676 (= lt!1297650 e!2302240)))

(declare-fun c!642932 () Bool)

(assert (=> d!1088676 (= c!642932 (or ((_ is EmptyExpr!10857) lt!1297545) ((_ is EmptyLang!10857) lt!1297545)))))

(assert (=> d!1088676 (validRegex!4964 lt!1297545)))

(assert (=> d!1088676 (= (derivativeStep!3322 lt!1297545 (head!8023 tl!3933)) lt!1297650)))

(declare-fun bm!269909 () Bool)

(declare-fun call!269913 () Regex!10857)

(assert (=> bm!269909 (= call!269913 call!269915)))

(declare-fun e!2302242 () Regex!10857)

(declare-fun call!269916 () Regex!10857)

(declare-fun b!3718472 () Bool)

(assert (=> b!3718472 (= e!2302242 (Union!10857 (Concat!17128 call!269913 (regTwo!22226 lt!1297545)) call!269916))))

(declare-fun bm!269910 () Bool)

(declare-fun call!269914 () Regex!10857)

(assert (=> bm!269910 (= call!269916 call!269914)))

(declare-fun b!3718473 () Bool)

(declare-fun c!642930 () Bool)

(assert (=> b!3718473 (= c!642930 (nullable!3780 (regOne!22226 lt!1297545)))))

(declare-fun e!2302239 () Regex!10857)

(assert (=> b!3718473 (= e!2302239 e!2302242)))

(declare-fun b!3718474 () Bool)

(assert (=> b!3718474 (= e!2302239 (Concat!17128 call!269916 lt!1297545))))

(declare-fun b!3718475 () Bool)

(assert (=> b!3718475 (= e!2302240 EmptyLang!10857)))

(declare-fun b!3718476 () Bool)

(assert (=> b!3718476 (= c!642928 ((_ is Union!10857) lt!1297545))))

(declare-fun e!2302241 () Regex!10857)

(assert (=> b!3718476 (= e!2302238 e!2302241)))

(declare-fun b!3718477 () Bool)

(assert (=> b!3718477 (= e!2302241 e!2302239)))

(declare-fun c!642931 () Bool)

(assert (=> b!3718477 (= c!642931 ((_ is Star!10857) lt!1297545))))

(declare-fun b!3718478 () Bool)

(assert (=> b!3718478 (= e!2302242 (Union!10857 (Concat!17128 call!269913 (regTwo!22226 lt!1297545)) EmptyLang!10857))))

(declare-fun b!3718479 () Bool)

(assert (=> b!3718479 (= e!2302238 (ite (= (head!8023 tl!3933) (c!642561 lt!1297545)) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3718480 () Bool)

(assert (=> b!3718480 (= e!2302241 (Union!10857 call!269915 call!269914))))

(declare-fun bm!269911 () Bool)

(assert (=> bm!269911 (= call!269914 (derivativeStep!3322 (ite c!642928 (regTwo!22227 lt!1297545) (ite c!642931 (reg!11186 lt!1297545) (regTwo!22226 lt!1297545))) (head!8023 tl!3933)))))

(assert (= (and d!1088676 c!642932) b!3718475))

(assert (= (and d!1088676 (not c!642932)) b!3718471))

(assert (= (and b!3718471 c!642929) b!3718479))

(assert (= (and b!3718471 (not c!642929)) b!3718476))

(assert (= (and b!3718476 c!642928) b!3718480))

(assert (= (and b!3718476 (not c!642928)) b!3718477))

(assert (= (and b!3718477 c!642931) b!3718474))

(assert (= (and b!3718477 (not c!642931)) b!3718473))

(assert (= (and b!3718473 c!642930) b!3718472))

(assert (= (and b!3718473 (not c!642930)) b!3718478))

(assert (= (or b!3718472 b!3718478) bm!269909))

(assert (= (or b!3718474 b!3718472) bm!269910))

(assert (= (or b!3718480 bm!269910) bm!269911))

(assert (= (or b!3718480 bm!269909) bm!269908))

(assert (=> bm!269908 m!4222637))

(declare-fun m!4223513 () Bool)

(assert (=> bm!269908 m!4223513))

(declare-fun m!4223515 () Bool)

(assert (=> d!1088676 m!4223515))

(assert (=> d!1088676 m!4222895))

(declare-fun m!4223517 () Bool)

(assert (=> b!3718473 m!4223517))

(assert (=> bm!269911 m!4222637))

(declare-fun m!4223519 () Bool)

(assert (=> bm!269911 m!4223519))

(assert (=> b!3717648 d!1088676))

(assert (=> b!3717648 d!1088624))

(assert (=> b!3717648 d!1088614))

(declare-fun b!3718481 () Bool)

(declare-fun e!2302248 () Bool)

(assert (=> b!3718481 (= e!2302248 (matchR!5302 (derivativeStep!3322 (derivativeStep!3322 lt!1297539 (head!8023 tl!3933)) (head!8023 (tail!5750 tl!3933))) (tail!5750 (tail!5750 tl!3933))))))

(declare-fun b!3718482 () Bool)

(declare-fun e!2302245 () Bool)

(declare-fun lt!1297651 () Bool)

(declare-fun call!269917 () Bool)

(assert (=> b!3718482 (= e!2302245 (= lt!1297651 call!269917))))

(declare-fun b!3718483 () Bool)

(declare-fun res!1511452 () Bool)

(declare-fun e!2302243 () Bool)

(assert (=> b!3718483 (=> res!1511452 e!2302243)))

(assert (=> b!3718483 (= res!1511452 (not ((_ is ElementMatch!10857) (derivativeStep!3322 lt!1297539 (head!8023 tl!3933)))))))

(declare-fun e!2302247 () Bool)

(assert (=> b!3718483 (= e!2302247 e!2302243)))

(declare-fun b!3718484 () Bool)

(declare-fun e!2302246 () Bool)

(assert (=> b!3718484 (= e!2302246 (not (= (head!8023 (tail!5750 tl!3933)) (c!642561 (derivativeStep!3322 lt!1297539 (head!8023 tl!3933))))))))

(declare-fun b!3718485 () Bool)

(declare-fun e!2302249 () Bool)

(assert (=> b!3718485 (= e!2302243 e!2302249)))

(declare-fun res!1511450 () Bool)

(assert (=> b!3718485 (=> (not res!1511450) (not e!2302249))))

(assert (=> b!3718485 (= res!1511450 (not lt!1297651))))

(declare-fun b!3718486 () Bool)

(assert (=> b!3718486 (= e!2302248 (nullable!3780 (derivativeStep!3322 lt!1297539 (head!8023 tl!3933))))))

(declare-fun b!3718487 () Bool)

(assert (=> b!3718487 (= e!2302245 e!2302247)))

(declare-fun c!642935 () Bool)

(assert (=> b!3718487 (= c!642935 ((_ is EmptyLang!10857) (derivativeStep!3322 lt!1297539 (head!8023 tl!3933))))))

(declare-fun d!1088678 () Bool)

(assert (=> d!1088678 e!2302245))

(declare-fun c!642934 () Bool)

(assert (=> d!1088678 (= c!642934 ((_ is EmptyExpr!10857) (derivativeStep!3322 lt!1297539 (head!8023 tl!3933))))))

(assert (=> d!1088678 (= lt!1297651 e!2302248)))

(declare-fun c!642933 () Bool)

(assert (=> d!1088678 (= c!642933 (isEmpty!23510 (tail!5750 tl!3933)))))

(assert (=> d!1088678 (validRegex!4964 (derivativeStep!3322 lt!1297539 (head!8023 tl!3933)))))

(assert (=> d!1088678 (= (matchR!5302 (derivativeStep!3322 lt!1297539 (head!8023 tl!3933)) (tail!5750 tl!3933)) lt!1297651)))

(declare-fun b!3718488 () Bool)

(declare-fun res!1511454 () Bool)

(assert (=> b!3718488 (=> res!1511454 e!2302243)))

(declare-fun e!2302244 () Bool)

(assert (=> b!3718488 (= res!1511454 e!2302244)))

(declare-fun res!1511455 () Bool)

(assert (=> b!3718488 (=> (not res!1511455) (not e!2302244))))

(assert (=> b!3718488 (= res!1511455 lt!1297651)))

(declare-fun b!3718489 () Bool)

(declare-fun res!1511451 () Bool)

(assert (=> b!3718489 (=> (not res!1511451) (not e!2302244))))

(assert (=> b!3718489 (= res!1511451 (not call!269917))))

(declare-fun b!3718490 () Bool)

(assert (=> b!3718490 (= e!2302249 e!2302246)))

(declare-fun res!1511456 () Bool)

(assert (=> b!3718490 (=> res!1511456 e!2302246)))

(assert (=> b!3718490 (= res!1511456 call!269917)))

(declare-fun b!3718491 () Bool)

(declare-fun res!1511457 () Bool)

(assert (=> b!3718491 (=> res!1511457 e!2302246)))

(assert (=> b!3718491 (= res!1511457 (not (isEmpty!23510 (tail!5750 (tail!5750 tl!3933)))))))

(declare-fun b!3718492 () Bool)

(assert (=> b!3718492 (= e!2302247 (not lt!1297651))))

(declare-fun bm!269912 () Bool)

(assert (=> bm!269912 (= call!269917 (isEmpty!23510 (tail!5750 tl!3933)))))

(declare-fun b!3718493 () Bool)

(assert (=> b!3718493 (= e!2302244 (= (head!8023 (tail!5750 tl!3933)) (c!642561 (derivativeStep!3322 lt!1297539 (head!8023 tl!3933)))))))

(declare-fun b!3718494 () Bool)

(declare-fun res!1511453 () Bool)

(assert (=> b!3718494 (=> (not res!1511453) (not e!2302244))))

(assert (=> b!3718494 (= res!1511453 (isEmpty!23510 (tail!5750 (tail!5750 tl!3933))))))

(assert (= (and d!1088678 c!642933) b!3718486))

(assert (= (and d!1088678 (not c!642933)) b!3718481))

(assert (= (and d!1088678 c!642934) b!3718482))

(assert (= (and d!1088678 (not c!642934)) b!3718487))

(assert (= (and b!3718487 c!642935) b!3718492))

(assert (= (and b!3718487 (not c!642935)) b!3718483))

(assert (= (and b!3718483 (not res!1511452)) b!3718488))

(assert (= (and b!3718488 res!1511455) b!3718489))

(assert (= (and b!3718489 res!1511451) b!3718494))

(assert (= (and b!3718494 res!1511453) b!3718493))

(assert (= (and b!3718488 (not res!1511454)) b!3718485))

(assert (= (and b!3718485 res!1511450) b!3718490))

(assert (= (and b!3718490 (not res!1511456)) b!3718491))

(assert (= (and b!3718491 (not res!1511457)) b!3718484))

(assert (= (or b!3718482 b!3718489 b!3718490) bm!269912))

(assert (=> b!3718481 m!4222641))

(assert (=> b!3718481 m!4223499))

(assert (=> b!3718481 m!4222639))

(assert (=> b!3718481 m!4223499))

(declare-fun m!4223521 () Bool)

(assert (=> b!3718481 m!4223521))

(assert (=> b!3718481 m!4222641))

(assert (=> b!3718481 m!4223503))

(assert (=> b!3718481 m!4223521))

(assert (=> b!3718481 m!4223503))

(declare-fun m!4223523 () Bool)

(assert (=> b!3718481 m!4223523))

(assert (=> b!3718493 m!4222641))

(assert (=> b!3718493 m!4223499))

(assert (=> b!3718486 m!4222639))

(declare-fun m!4223525 () Bool)

(assert (=> b!3718486 m!4223525))

(assert (=> b!3718484 m!4222641))

(assert (=> b!3718484 m!4223499))

(assert (=> b!3718491 m!4222641))

(assert (=> b!3718491 m!4223503))

(assert (=> b!3718491 m!4223503))

(assert (=> b!3718491 m!4223509))

(assert (=> bm!269912 m!4222641))

(assert (=> bm!269912 m!4222647))

(assert (=> d!1088678 m!4222641))

(assert (=> d!1088678 m!4222647))

(assert (=> d!1088678 m!4222639))

(declare-fun m!4223527 () Bool)

(assert (=> d!1088678 m!4223527))

(assert (=> b!3718494 m!4222641))

(assert (=> b!3718494 m!4223503))

(assert (=> b!3718494 m!4223503))

(assert (=> b!3718494 m!4223509))

(assert (=> b!3717217 d!1088678))

(declare-fun b!3718495 () Bool)

(declare-fun e!2302252 () Regex!10857)

(declare-fun e!2302250 () Regex!10857)

(assert (=> b!3718495 (= e!2302252 e!2302250)))

(declare-fun c!642937 () Bool)

(assert (=> b!3718495 (= c!642937 ((_ is ElementMatch!10857) lt!1297539))))

(declare-fun call!269920 () Regex!10857)

(declare-fun bm!269913 () Bool)

(declare-fun c!642936 () Bool)

(assert (=> bm!269913 (= call!269920 (derivativeStep!3322 (ite c!642936 (regOne!22227 lt!1297539) (regOne!22226 lt!1297539)) (head!8023 tl!3933)))))

(declare-fun d!1088680 () Bool)

(declare-fun lt!1297652 () Regex!10857)

(assert (=> d!1088680 (validRegex!4964 lt!1297652)))

(assert (=> d!1088680 (= lt!1297652 e!2302252)))

(declare-fun c!642940 () Bool)

(assert (=> d!1088680 (= c!642940 (or ((_ is EmptyExpr!10857) lt!1297539) ((_ is EmptyLang!10857) lt!1297539)))))

(assert (=> d!1088680 (validRegex!4964 lt!1297539)))

(assert (=> d!1088680 (= (derivativeStep!3322 lt!1297539 (head!8023 tl!3933)) lt!1297652)))

(declare-fun bm!269914 () Bool)

(declare-fun call!269918 () Regex!10857)

(assert (=> bm!269914 (= call!269918 call!269920)))

(declare-fun call!269921 () Regex!10857)

(declare-fun e!2302254 () Regex!10857)

(declare-fun b!3718496 () Bool)

(assert (=> b!3718496 (= e!2302254 (Union!10857 (Concat!17128 call!269918 (regTwo!22226 lt!1297539)) call!269921))))

(declare-fun bm!269915 () Bool)

(declare-fun call!269919 () Regex!10857)

(assert (=> bm!269915 (= call!269921 call!269919)))

(declare-fun b!3718497 () Bool)

(declare-fun c!642938 () Bool)

(assert (=> b!3718497 (= c!642938 (nullable!3780 (regOne!22226 lt!1297539)))))

(declare-fun e!2302251 () Regex!10857)

(assert (=> b!3718497 (= e!2302251 e!2302254)))

(declare-fun b!3718498 () Bool)

(assert (=> b!3718498 (= e!2302251 (Concat!17128 call!269921 lt!1297539))))

(declare-fun b!3718499 () Bool)

(assert (=> b!3718499 (= e!2302252 EmptyLang!10857)))

(declare-fun b!3718500 () Bool)

(assert (=> b!3718500 (= c!642936 ((_ is Union!10857) lt!1297539))))

(declare-fun e!2302253 () Regex!10857)

(assert (=> b!3718500 (= e!2302250 e!2302253)))

(declare-fun b!3718501 () Bool)

(assert (=> b!3718501 (= e!2302253 e!2302251)))

(declare-fun c!642939 () Bool)

(assert (=> b!3718501 (= c!642939 ((_ is Star!10857) lt!1297539))))

(declare-fun b!3718502 () Bool)

(assert (=> b!3718502 (= e!2302254 (Union!10857 (Concat!17128 call!269918 (regTwo!22226 lt!1297539)) EmptyLang!10857))))

(declare-fun b!3718503 () Bool)

(assert (=> b!3718503 (= e!2302250 (ite (= (head!8023 tl!3933) (c!642561 lt!1297539)) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3718504 () Bool)

(assert (=> b!3718504 (= e!2302253 (Union!10857 call!269920 call!269919))))

(declare-fun bm!269916 () Bool)

(assert (=> bm!269916 (= call!269919 (derivativeStep!3322 (ite c!642936 (regTwo!22227 lt!1297539) (ite c!642939 (reg!11186 lt!1297539) (regTwo!22226 lt!1297539))) (head!8023 tl!3933)))))

(assert (= (and d!1088680 c!642940) b!3718499))

(assert (= (and d!1088680 (not c!642940)) b!3718495))

(assert (= (and b!3718495 c!642937) b!3718503))

(assert (= (and b!3718495 (not c!642937)) b!3718500))

(assert (= (and b!3718500 c!642936) b!3718504))

(assert (= (and b!3718500 (not c!642936)) b!3718501))

(assert (= (and b!3718501 c!642939) b!3718498))

(assert (= (and b!3718501 (not c!642939)) b!3718497))

(assert (= (and b!3718497 c!642938) b!3718496))

(assert (= (and b!3718497 (not c!642938)) b!3718502))

(assert (= (or b!3718496 b!3718502) bm!269914))

(assert (= (or b!3718498 b!3718496) bm!269915))

(assert (= (or b!3718504 bm!269915) bm!269916))

(assert (= (or b!3718504 bm!269914) bm!269913))

(assert (=> bm!269913 m!4222637))

(declare-fun m!4223529 () Bool)

(assert (=> bm!269913 m!4223529))

(declare-fun m!4223531 () Bool)

(assert (=> d!1088680 m!4223531))

(assert (=> d!1088680 m!4222651))

(assert (=> b!3718497 m!4223477))

(assert (=> bm!269916 m!4222637))

(declare-fun m!4223533 () Bool)

(assert (=> bm!269916 m!4223533))

(assert (=> b!3717217 d!1088680))

(assert (=> b!3717217 d!1088624))

(assert (=> b!3717217 d!1088614))

(declare-fun b!3718505 () Bool)

(declare-fun e!2302258 () Bool)

(declare-fun e!2302256 () Bool)

(assert (=> b!3718505 (= e!2302258 e!2302256)))

(declare-fun res!1511461 () Bool)

(assert (=> b!3718505 (=> res!1511461 e!2302256)))

(assert (=> b!3718505 (= res!1511461 ((_ is Star!10857) (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933)))))

(declare-fun b!3718506 () Bool)

(declare-fun e!2302257 () Bool)

(declare-fun e!2302255 () Bool)

(assert (=> b!3718506 (= e!2302257 e!2302255)))

(declare-fun res!1511459 () Bool)

(declare-fun call!269922 () Bool)

(assert (=> b!3718506 (= res!1511459 call!269922)))

(assert (=> b!3718506 (=> (not res!1511459) (not e!2302255))))

(declare-fun bm!269917 () Bool)

(declare-fun c!642941 () Bool)

(assert (=> bm!269917 (= call!269922 (nullable!3780 (ite c!642941 (regTwo!22227 (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933)) (regOne!22226 (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933)))))))

(declare-fun b!3718507 () Bool)

(declare-fun e!2302260 () Bool)

(assert (=> b!3718507 (= e!2302260 call!269922)))

(declare-fun b!3718508 () Bool)

(assert (=> b!3718508 (= e!2302257 e!2302260)))

(declare-fun res!1511458 () Bool)

(declare-fun call!269923 () Bool)

(assert (=> b!3718508 (= res!1511458 call!269923)))

(assert (=> b!3718508 (=> res!1511458 e!2302260)))

(declare-fun b!3718509 () Bool)

(assert (=> b!3718509 (= e!2302256 e!2302257)))

(assert (=> b!3718509 (= c!642941 ((_ is Union!10857) (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933)))))

(declare-fun bm!269918 () Bool)

(assert (=> bm!269918 (= call!269923 (nullable!3780 (ite c!642941 (regOne!22227 (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933)) (regTwo!22226 (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933)))))))

(declare-fun d!1088682 () Bool)

(declare-fun res!1511460 () Bool)

(declare-fun e!2302259 () Bool)

(assert (=> d!1088682 (=> res!1511460 e!2302259)))

(assert (=> d!1088682 (= res!1511460 ((_ is EmptyExpr!10857) (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933)))))

(assert (=> d!1088682 (= (nullableFct!1069 (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933)) e!2302259)))

(declare-fun b!3718510 () Bool)

(assert (=> b!3718510 (= e!2302259 e!2302258)))

(declare-fun res!1511462 () Bool)

(assert (=> b!3718510 (=> (not res!1511462) (not e!2302258))))

(assert (=> b!3718510 (= res!1511462 (and (not ((_ is EmptyLang!10857) (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933))) (not ((_ is ElementMatch!10857) (derivative!371 (derivativeStep!3322 r!26326 c!13576) tl!3933)))))))

(declare-fun b!3718511 () Bool)

(assert (=> b!3718511 (= e!2302255 call!269923)))

(assert (= (and d!1088682 (not res!1511460)) b!3718510))

(assert (= (and b!3718510 res!1511462) b!3718505))

(assert (= (and b!3718505 (not res!1511461)) b!3718509))

(assert (= (and b!3718509 c!642941) b!3718508))

(assert (= (and b!3718509 (not c!642941)) b!3718506))

(assert (= (and b!3718508 (not res!1511458)) b!3718507))

(assert (= (and b!3718506 res!1511459) b!3718511))

(assert (= (or b!3718507 b!3718506) bm!269917))

(assert (= (or b!3718508 b!3718511) bm!269918))

(declare-fun m!4223535 () Bool)

(assert (=> bm!269917 m!4223535))

(declare-fun m!4223537 () Bool)

(assert (=> bm!269918 m!4223537))

(assert (=> d!1088378 d!1088682))

(declare-fun b!3718512 () Bool)

(declare-fun e!2302263 () Regex!10857)

(declare-fun e!2302261 () Regex!10857)

(assert (=> b!3718512 (= e!2302263 e!2302261)))

(declare-fun c!642943 () Bool)

(assert (=> b!3718512 (= c!642943 ((_ is ElementMatch!10857) (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326)))))))

(declare-fun c!642942 () Bool)

(declare-fun bm!269919 () Bool)

(declare-fun call!269926 () Regex!10857)

(assert (=> bm!269919 (= call!269926 (derivativeStep!3322 (ite c!642942 (regOne!22227 (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326)))) (regOne!22226 (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326))))) c!13576))))

(declare-fun d!1088684 () Bool)

(declare-fun lt!1297653 () Regex!10857)

(assert (=> d!1088684 (validRegex!4964 lt!1297653)))

(assert (=> d!1088684 (= lt!1297653 e!2302263)))

(declare-fun c!642946 () Bool)

(assert (=> d!1088684 (= c!642946 (or ((_ is EmptyExpr!10857) (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326)))) ((_ is EmptyLang!10857) (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326))))))))

(assert (=> d!1088684 (validRegex!4964 (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326))))))

(assert (=> d!1088684 (= (derivativeStep!3322 (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326))) c!13576) lt!1297653)))

(declare-fun bm!269920 () Bool)

(declare-fun call!269924 () Regex!10857)

(assert (=> bm!269920 (= call!269924 call!269926)))

(declare-fun call!269927 () Regex!10857)

(declare-fun b!3718513 () Bool)

(declare-fun e!2302265 () Regex!10857)

(assert (=> b!3718513 (= e!2302265 (Union!10857 (Concat!17128 call!269924 (regTwo!22226 (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326))))) call!269927))))

(declare-fun bm!269921 () Bool)

(declare-fun call!269925 () Regex!10857)

(assert (=> bm!269921 (= call!269927 call!269925)))

(declare-fun b!3718514 () Bool)

(declare-fun c!642944 () Bool)

(assert (=> b!3718514 (= c!642944 (nullable!3780 (regOne!22226 (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326))))))))

(declare-fun e!2302262 () Regex!10857)

(assert (=> b!3718514 (= e!2302262 e!2302265)))

(declare-fun b!3718515 () Bool)

(assert (=> b!3718515 (= e!2302262 (Concat!17128 call!269927 (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326)))))))

(declare-fun b!3718516 () Bool)

(assert (=> b!3718516 (= e!2302263 EmptyLang!10857)))

(declare-fun b!3718517 () Bool)

(assert (=> b!3718517 (= c!642942 ((_ is Union!10857) (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326)))))))

(declare-fun e!2302264 () Regex!10857)

(assert (=> b!3718517 (= e!2302261 e!2302264)))

(declare-fun b!3718518 () Bool)

(assert (=> b!3718518 (= e!2302264 e!2302262)))

(declare-fun c!642945 () Bool)

(assert (=> b!3718518 (= c!642945 ((_ is Star!10857) (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326)))))))

(declare-fun b!3718519 () Bool)

(assert (=> b!3718519 (= e!2302265 (Union!10857 (Concat!17128 call!269924 (regTwo!22226 (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326))))) EmptyLang!10857))))

(declare-fun b!3718520 () Bool)

(assert (=> b!3718520 (= e!2302261 (ite (= c!13576 (c!642561 (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326))))) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3718521 () Bool)

(assert (=> b!3718521 (= e!2302264 (Union!10857 call!269926 call!269925))))

(declare-fun bm!269922 () Bool)

(assert (=> bm!269922 (= call!269925 (derivativeStep!3322 (ite c!642942 (regTwo!22227 (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326)))) (ite c!642945 (reg!11186 (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326)))) (regTwo!22226 (ite c!642697 (regOne!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326)))))) c!13576))))

(assert (= (and d!1088684 c!642946) b!3718516))

(assert (= (and d!1088684 (not c!642946)) b!3718512))

(assert (= (and b!3718512 c!642943) b!3718520))

(assert (= (and b!3718512 (not c!642943)) b!3718517))

(assert (= (and b!3718517 c!642942) b!3718521))

(assert (= (and b!3718517 (not c!642942)) b!3718518))

(assert (= (and b!3718518 c!642945) b!3718515))

(assert (= (and b!3718518 (not c!642945)) b!3718514))

(assert (= (and b!3718514 c!642944) b!3718513))

(assert (= (and b!3718514 (not c!642944)) b!3718519))

(assert (= (or b!3718513 b!3718519) bm!269920))

(assert (= (or b!3718515 b!3718513) bm!269921))

(assert (= (or b!3718521 bm!269921) bm!269922))

(assert (= (or b!3718521 bm!269920) bm!269919))

(declare-fun m!4223539 () Bool)

(assert (=> bm!269919 m!4223539))

(declare-fun m!4223541 () Bool)

(assert (=> d!1088684 m!4223541))

(declare-fun m!4223543 () Bool)

(assert (=> d!1088684 m!4223543))

(declare-fun m!4223545 () Bool)

(assert (=> b!3718514 m!4223545))

(declare-fun m!4223547 () Bool)

(assert (=> bm!269922 m!4223547))

(assert (=> bm!269704 d!1088684))

(declare-fun d!1088686 () Bool)

(assert (=> d!1088686 (= (nullable!3780 (reg!11186 r!26326)) (nullableFct!1069 (reg!11186 r!26326)))))

(declare-fun bs!574898 () Bool)

(assert (= bs!574898 d!1088686))

(declare-fun m!4223549 () Bool)

(assert (=> bs!574898 m!4223549))

(assert (=> b!3717564 d!1088686))

(assert (=> d!1088432 d!1088604))

(assert (=> d!1088432 d!1088598))

(declare-fun b!3718522 () Bool)

(declare-fun res!1511466 () Bool)

(declare-fun e!2302270 () Bool)

(assert (=> b!3718522 (=> (not res!1511466) (not e!2302270))))

(declare-fun call!269930 () Bool)

(assert (=> b!3718522 (= res!1511466 call!269930)))

(declare-fun e!2302271 () Bool)

(assert (=> b!3718522 (= e!2302271 e!2302270)))

(declare-fun bm!269923 () Bool)

(declare-fun c!642948 () Bool)

(assert (=> bm!269923 (= call!269930 (validRegex!4964 (ite c!642948 (regOne!22227 lt!1297570) (regTwo!22226 lt!1297570))))))

(declare-fun b!3718523 () Bool)

(declare-fun call!269929 () Bool)

(assert (=> b!3718523 (= e!2302270 call!269929)))

(declare-fun b!3718524 () Bool)

(declare-fun e!2302272 () Bool)

(assert (=> b!3718524 (= e!2302272 e!2302271)))

(assert (=> b!3718524 (= c!642948 ((_ is Union!10857) lt!1297570))))

(declare-fun call!269928 () Bool)

(declare-fun bm!269924 () Bool)

(declare-fun c!642947 () Bool)

(assert (=> bm!269924 (= call!269928 (validRegex!4964 (ite c!642947 (reg!11186 lt!1297570) (ite c!642948 (regTwo!22227 lt!1297570) (regOne!22226 lt!1297570)))))))

(declare-fun b!3718525 () Bool)

(declare-fun e!2302269 () Bool)

(declare-fun e!2302268 () Bool)

(assert (=> b!3718525 (= e!2302269 e!2302268)))

(declare-fun res!1511463 () Bool)

(assert (=> b!3718525 (=> (not res!1511463) (not e!2302268))))

(assert (=> b!3718525 (= res!1511463 call!269929)))

(declare-fun b!3718526 () Bool)

(declare-fun e!2302266 () Bool)

(assert (=> b!3718526 (= e!2302272 e!2302266)))

(declare-fun res!1511465 () Bool)

(assert (=> b!3718526 (= res!1511465 (not (nullable!3780 (reg!11186 lt!1297570))))))

(assert (=> b!3718526 (=> (not res!1511465) (not e!2302266))))

(declare-fun b!3718527 () Bool)

(declare-fun e!2302267 () Bool)

(assert (=> b!3718527 (= e!2302267 e!2302272)))

(assert (=> b!3718527 (= c!642947 ((_ is Star!10857) lt!1297570))))

(declare-fun b!3718528 () Bool)

(declare-fun res!1511467 () Bool)

(assert (=> b!3718528 (=> res!1511467 e!2302269)))

(assert (=> b!3718528 (= res!1511467 (not ((_ is Concat!17128) lt!1297570)))))

(assert (=> b!3718528 (= e!2302271 e!2302269)))

(declare-fun bm!269925 () Bool)

(assert (=> bm!269925 (= call!269929 call!269928)))

(declare-fun d!1088688 () Bool)

(declare-fun res!1511464 () Bool)

(assert (=> d!1088688 (=> res!1511464 e!2302267)))

(assert (=> d!1088688 (= res!1511464 ((_ is ElementMatch!10857) lt!1297570))))

(assert (=> d!1088688 (= (validRegex!4964 lt!1297570) e!2302267)))

(declare-fun b!3718529 () Bool)

(assert (=> b!3718529 (= e!2302268 call!269930)))

(declare-fun b!3718530 () Bool)

(assert (=> b!3718530 (= e!2302266 call!269928)))

(assert (= (and d!1088688 (not res!1511464)) b!3718527))

(assert (= (and b!3718527 c!642947) b!3718526))

(assert (= (and b!3718527 (not c!642947)) b!3718524))

(assert (= (and b!3718526 res!1511465) b!3718530))

(assert (= (and b!3718524 c!642948) b!3718522))

(assert (= (and b!3718524 (not c!642948)) b!3718528))

(assert (= (and b!3718522 res!1511466) b!3718523))

(assert (= (and b!3718528 (not res!1511467)) b!3718525))

(assert (= (and b!3718525 res!1511463) b!3718529))

(assert (= (or b!3718523 b!3718525) bm!269925))

(assert (= (or b!3718522 b!3718529) bm!269923))

(assert (= (or b!3718530 bm!269925) bm!269924))

(declare-fun m!4223551 () Bool)

(assert (=> bm!269923 m!4223551))

(declare-fun m!4223553 () Bool)

(assert (=> bm!269924 m!4223553))

(declare-fun m!4223555 () Bool)

(assert (=> b!3718526 m!4223555))

(assert (=> d!1088380 d!1088688))

(declare-fun b!3718531 () Bool)

(declare-fun res!1511471 () Bool)

(declare-fun e!2302277 () Bool)

(assert (=> b!3718531 (=> (not res!1511471) (not e!2302277))))

(declare-fun call!269933 () Bool)

(assert (=> b!3718531 (= res!1511471 call!269933)))

(declare-fun e!2302278 () Bool)

(assert (=> b!3718531 (= e!2302278 e!2302277)))

(declare-fun bm!269926 () Bool)

(declare-fun c!642950 () Bool)

(assert (=> bm!269926 (= call!269933 (validRegex!4964 (ite c!642950 (regOne!22227 (derivativeStep!3322 r!26326 c!13576)) (regTwo!22226 (derivativeStep!3322 r!26326 c!13576)))))))

(declare-fun b!3718532 () Bool)

(declare-fun call!269932 () Bool)

(assert (=> b!3718532 (= e!2302277 call!269932)))

(declare-fun b!3718533 () Bool)

(declare-fun e!2302279 () Bool)

(assert (=> b!3718533 (= e!2302279 e!2302278)))

(assert (=> b!3718533 (= c!642950 ((_ is Union!10857) (derivativeStep!3322 r!26326 c!13576)))))

(declare-fun c!642949 () Bool)

(declare-fun bm!269927 () Bool)

(declare-fun call!269931 () Bool)

(assert (=> bm!269927 (= call!269931 (validRegex!4964 (ite c!642949 (reg!11186 (derivativeStep!3322 r!26326 c!13576)) (ite c!642950 (regTwo!22227 (derivativeStep!3322 r!26326 c!13576)) (regOne!22226 (derivativeStep!3322 r!26326 c!13576))))))))

(declare-fun b!3718534 () Bool)

(declare-fun e!2302276 () Bool)

(declare-fun e!2302275 () Bool)

(assert (=> b!3718534 (= e!2302276 e!2302275)))

(declare-fun res!1511468 () Bool)

(assert (=> b!3718534 (=> (not res!1511468) (not e!2302275))))

(assert (=> b!3718534 (= res!1511468 call!269932)))

(declare-fun b!3718535 () Bool)

(declare-fun e!2302273 () Bool)

(assert (=> b!3718535 (= e!2302279 e!2302273)))

(declare-fun res!1511470 () Bool)

(assert (=> b!3718535 (= res!1511470 (not (nullable!3780 (reg!11186 (derivativeStep!3322 r!26326 c!13576)))))))

(assert (=> b!3718535 (=> (not res!1511470) (not e!2302273))))

(declare-fun b!3718536 () Bool)

(declare-fun e!2302274 () Bool)

(assert (=> b!3718536 (= e!2302274 e!2302279)))

(assert (=> b!3718536 (= c!642949 ((_ is Star!10857) (derivativeStep!3322 r!26326 c!13576)))))

(declare-fun b!3718537 () Bool)

(declare-fun res!1511472 () Bool)

(assert (=> b!3718537 (=> res!1511472 e!2302276)))

(assert (=> b!3718537 (= res!1511472 (not ((_ is Concat!17128) (derivativeStep!3322 r!26326 c!13576))))))

(assert (=> b!3718537 (= e!2302278 e!2302276)))

(declare-fun bm!269928 () Bool)

(assert (=> bm!269928 (= call!269932 call!269931)))

(declare-fun d!1088690 () Bool)

(declare-fun res!1511469 () Bool)

(assert (=> d!1088690 (=> res!1511469 e!2302274)))

(assert (=> d!1088690 (= res!1511469 ((_ is ElementMatch!10857) (derivativeStep!3322 r!26326 c!13576)))))

(assert (=> d!1088690 (= (validRegex!4964 (derivativeStep!3322 r!26326 c!13576)) e!2302274)))

(declare-fun b!3718538 () Bool)

(assert (=> b!3718538 (= e!2302275 call!269933)))

(declare-fun b!3718539 () Bool)

(assert (=> b!3718539 (= e!2302273 call!269931)))

(assert (= (and d!1088690 (not res!1511469)) b!3718536))

(assert (= (and b!3718536 c!642949) b!3718535))

(assert (= (and b!3718536 (not c!642949)) b!3718533))

(assert (= (and b!3718535 res!1511470) b!3718539))

(assert (= (and b!3718533 c!642950) b!3718531))

(assert (= (and b!3718533 (not c!642950)) b!3718537))

(assert (= (and b!3718531 res!1511471) b!3718532))

(assert (= (and b!3718537 (not res!1511472)) b!3718534))

(assert (= (and b!3718534 res!1511468) b!3718538))

(assert (= (or b!3718532 b!3718534) bm!269928))

(assert (= (or b!3718531 b!3718538) bm!269926))

(assert (= (or b!3718539 bm!269928) bm!269927))

(declare-fun m!4223557 () Bool)

(assert (=> bm!269926 m!4223557))

(declare-fun m!4223559 () Bool)

(assert (=> bm!269927 m!4223559))

(declare-fun m!4223561 () Bool)

(assert (=> b!3718535 m!4223561))

(assert (=> d!1088380 d!1088690))

(declare-fun b!3718540 () Bool)

(declare-fun res!1511476 () Bool)

(declare-fun e!2302284 () Bool)

(assert (=> b!3718540 (=> (not res!1511476) (not e!2302284))))

(declare-fun call!269936 () Bool)

(assert (=> b!3718540 (= res!1511476 call!269936)))

(declare-fun e!2302285 () Bool)

(assert (=> b!3718540 (= e!2302285 e!2302284)))

(declare-fun bm!269929 () Bool)

(declare-fun c!642952 () Bool)

(assert (=> bm!269929 (= call!269936 (validRegex!4964 (ite c!642952 (regOne!22227 (ite c!642691 (reg!11186 r!26326) (ite c!642692 (regTwo!22227 r!26326) (regOne!22226 r!26326)))) (regTwo!22226 (ite c!642691 (reg!11186 r!26326) (ite c!642692 (regTwo!22227 r!26326) (regOne!22226 r!26326)))))))))

(declare-fun b!3718541 () Bool)

(declare-fun call!269935 () Bool)

(assert (=> b!3718541 (= e!2302284 call!269935)))

(declare-fun b!3718542 () Bool)

(declare-fun e!2302286 () Bool)

(assert (=> b!3718542 (= e!2302286 e!2302285)))

(assert (=> b!3718542 (= c!642952 ((_ is Union!10857) (ite c!642691 (reg!11186 r!26326) (ite c!642692 (regTwo!22227 r!26326) (regOne!22226 r!26326)))))))

(declare-fun c!642951 () Bool)

(declare-fun call!269934 () Bool)

(declare-fun bm!269930 () Bool)

(assert (=> bm!269930 (= call!269934 (validRegex!4964 (ite c!642951 (reg!11186 (ite c!642691 (reg!11186 r!26326) (ite c!642692 (regTwo!22227 r!26326) (regOne!22226 r!26326)))) (ite c!642952 (regTwo!22227 (ite c!642691 (reg!11186 r!26326) (ite c!642692 (regTwo!22227 r!26326) (regOne!22226 r!26326)))) (regOne!22226 (ite c!642691 (reg!11186 r!26326) (ite c!642692 (regTwo!22227 r!26326) (regOne!22226 r!26326))))))))))

(declare-fun b!3718543 () Bool)

(declare-fun e!2302283 () Bool)

(declare-fun e!2302282 () Bool)

(assert (=> b!3718543 (= e!2302283 e!2302282)))

(declare-fun res!1511473 () Bool)

(assert (=> b!3718543 (=> (not res!1511473) (not e!2302282))))

(assert (=> b!3718543 (= res!1511473 call!269935)))

(declare-fun b!3718544 () Bool)

(declare-fun e!2302280 () Bool)

(assert (=> b!3718544 (= e!2302286 e!2302280)))

(declare-fun res!1511475 () Bool)

(assert (=> b!3718544 (= res!1511475 (not (nullable!3780 (reg!11186 (ite c!642691 (reg!11186 r!26326) (ite c!642692 (regTwo!22227 r!26326) (regOne!22226 r!26326)))))))))

(assert (=> b!3718544 (=> (not res!1511475) (not e!2302280))))

(declare-fun b!3718545 () Bool)

(declare-fun e!2302281 () Bool)

(assert (=> b!3718545 (= e!2302281 e!2302286)))

(assert (=> b!3718545 (= c!642951 ((_ is Star!10857) (ite c!642691 (reg!11186 r!26326) (ite c!642692 (regTwo!22227 r!26326) (regOne!22226 r!26326)))))))

(declare-fun b!3718546 () Bool)

(declare-fun res!1511477 () Bool)

(assert (=> b!3718546 (=> res!1511477 e!2302283)))

(assert (=> b!3718546 (= res!1511477 (not ((_ is Concat!17128) (ite c!642691 (reg!11186 r!26326) (ite c!642692 (regTwo!22227 r!26326) (regOne!22226 r!26326))))))))

(assert (=> b!3718546 (= e!2302285 e!2302283)))

(declare-fun bm!269931 () Bool)

(assert (=> bm!269931 (= call!269935 call!269934)))

(declare-fun d!1088692 () Bool)

(declare-fun res!1511474 () Bool)

(assert (=> d!1088692 (=> res!1511474 e!2302281)))

(assert (=> d!1088692 (= res!1511474 ((_ is ElementMatch!10857) (ite c!642691 (reg!11186 r!26326) (ite c!642692 (regTwo!22227 r!26326) (regOne!22226 r!26326)))))))

(assert (=> d!1088692 (= (validRegex!4964 (ite c!642691 (reg!11186 r!26326) (ite c!642692 (regTwo!22227 r!26326) (regOne!22226 r!26326)))) e!2302281)))

(declare-fun b!3718547 () Bool)

(assert (=> b!3718547 (= e!2302282 call!269936)))

(declare-fun b!3718548 () Bool)

(assert (=> b!3718548 (= e!2302280 call!269934)))

(assert (= (and d!1088692 (not res!1511474)) b!3718545))

(assert (= (and b!3718545 c!642951) b!3718544))

(assert (= (and b!3718545 (not c!642951)) b!3718542))

(assert (= (and b!3718544 res!1511475) b!3718548))

(assert (= (and b!3718542 c!642952) b!3718540))

(assert (= (and b!3718542 (not c!642952)) b!3718546))

(assert (= (and b!3718540 res!1511476) b!3718541))

(assert (= (and b!3718546 (not res!1511477)) b!3718543))

(assert (= (and b!3718543 res!1511473) b!3718547))

(assert (= (or b!3718541 b!3718543) bm!269931))

(assert (= (or b!3718540 b!3718547) bm!269929))

(assert (= (or b!3718548 bm!269931) bm!269930))

(declare-fun m!4223563 () Bool)

(assert (=> bm!269929 m!4223563))

(declare-fun m!4223565 () Bool)

(assert (=> bm!269930 m!4223565))

(declare-fun m!4223567 () Bool)

(assert (=> b!3718544 m!4223567))

(assert (=> bm!269701 d!1088692))

(declare-fun d!1088694 () Bool)

(assert (not d!1088694))

(assert (=> b!3717662 d!1088694))

(declare-fun d!1088696 () Bool)

(assert (not d!1088696))

(assert (=> b!3717662 d!1088696))

(assert (=> b!3717662 d!1088626))

(declare-fun d!1088698 () Bool)

(assert (not d!1088698))

(assert (=> b!3717662 d!1088698))

(declare-fun b!3718549 () Bool)

(declare-fun res!1511481 () Bool)

(declare-fun e!2302291 () Bool)

(assert (=> b!3718549 (=> (not res!1511481) (not e!2302291))))

(declare-fun call!269939 () Bool)

(assert (=> b!3718549 (= res!1511481 call!269939)))

(declare-fun e!2302292 () Bool)

(assert (=> b!3718549 (= e!2302292 e!2302291)))

(declare-fun bm!269932 () Bool)

(declare-fun c!642954 () Bool)

(assert (=> bm!269932 (= call!269939 (validRegex!4964 (ite c!642954 (regOne!22227 lt!1297580) (regTwo!22226 lt!1297580))))))

(declare-fun b!3718550 () Bool)

(declare-fun call!269938 () Bool)

(assert (=> b!3718550 (= e!2302291 call!269938)))

(declare-fun b!3718551 () Bool)

(declare-fun e!2302293 () Bool)

(assert (=> b!3718551 (= e!2302293 e!2302292)))

(assert (=> b!3718551 (= c!642954 ((_ is Union!10857) lt!1297580))))

(declare-fun bm!269933 () Bool)

(declare-fun call!269937 () Bool)

(declare-fun c!642953 () Bool)

(assert (=> bm!269933 (= call!269937 (validRegex!4964 (ite c!642953 (reg!11186 lt!1297580) (ite c!642954 (regTwo!22227 lt!1297580) (regOne!22226 lt!1297580)))))))

(declare-fun b!3718552 () Bool)

(declare-fun e!2302290 () Bool)

(declare-fun e!2302289 () Bool)

(assert (=> b!3718552 (= e!2302290 e!2302289)))

(declare-fun res!1511478 () Bool)

(assert (=> b!3718552 (=> (not res!1511478) (not e!2302289))))

(assert (=> b!3718552 (= res!1511478 call!269938)))

(declare-fun b!3718553 () Bool)

(declare-fun e!2302287 () Bool)

(assert (=> b!3718553 (= e!2302293 e!2302287)))

(declare-fun res!1511480 () Bool)

(assert (=> b!3718553 (= res!1511480 (not (nullable!3780 (reg!11186 lt!1297580))))))

(assert (=> b!3718553 (=> (not res!1511480) (not e!2302287))))

(declare-fun b!3718554 () Bool)

(declare-fun e!2302288 () Bool)

(assert (=> b!3718554 (= e!2302288 e!2302293)))

(assert (=> b!3718554 (= c!642953 ((_ is Star!10857) lt!1297580))))

(declare-fun b!3718555 () Bool)

(declare-fun res!1511482 () Bool)

(assert (=> b!3718555 (=> res!1511482 e!2302290)))

(assert (=> b!3718555 (= res!1511482 (not ((_ is Concat!17128) lt!1297580)))))

(assert (=> b!3718555 (= e!2302292 e!2302290)))

(declare-fun bm!269934 () Bool)

(assert (=> bm!269934 (= call!269938 call!269937)))

(declare-fun d!1088700 () Bool)

(declare-fun res!1511479 () Bool)

(assert (=> d!1088700 (=> res!1511479 e!2302288)))

(assert (=> d!1088700 (= res!1511479 ((_ is ElementMatch!10857) lt!1297580))))

(assert (=> d!1088700 (= (validRegex!4964 lt!1297580) e!2302288)))

(declare-fun b!3718556 () Bool)

(assert (=> b!3718556 (= e!2302289 call!269939)))

(declare-fun b!3718557 () Bool)

(assert (=> b!3718557 (= e!2302287 call!269937)))

(assert (= (and d!1088700 (not res!1511479)) b!3718554))

(assert (= (and b!3718554 c!642953) b!3718553))

(assert (= (and b!3718554 (not c!642953)) b!3718551))

(assert (= (and b!3718553 res!1511480) b!3718557))

(assert (= (and b!3718551 c!642954) b!3718549))

(assert (= (and b!3718551 (not c!642954)) b!3718555))

(assert (= (and b!3718549 res!1511481) b!3718550))

(assert (= (and b!3718555 (not res!1511482)) b!3718552))

(assert (= (and b!3718552 res!1511478) b!3718556))

(assert (= (or b!3718550 b!3718552) bm!269934))

(assert (= (or b!3718549 b!3718556) bm!269932))

(assert (= (or b!3718557 bm!269934) bm!269933))

(declare-fun m!4223569 () Bool)

(assert (=> bm!269932 m!4223569))

(declare-fun m!4223571 () Bool)

(assert (=> bm!269933 m!4223571))

(declare-fun m!4223573 () Bool)

(assert (=> b!3718553 m!4223573))

(assert (=> d!1088392 d!1088700))

(assert (=> d!1088392 d!1088428))

(declare-fun d!1088702 () Bool)

(declare-fun c!642955 () Bool)

(assert (=> d!1088702 (= c!642955 ((_ is Nil!39614) (usedCharacters!1120 r!26326)))))

(declare-fun e!2302294 () (InoxSet C!21900))

(assert (=> d!1088702 (= (content!5739 (usedCharacters!1120 r!26326)) e!2302294)))

(declare-fun b!3718558 () Bool)

(assert (=> b!3718558 (= e!2302294 ((as const (Array C!21900 Bool)) false))))

(declare-fun b!3718559 () Bool)

(assert (=> b!3718559 (= e!2302294 ((_ map or) (store ((as const (Array C!21900 Bool)) false) (h!45034 (usedCharacters!1120 r!26326)) true) (content!5739 (t!302421 (usedCharacters!1120 r!26326)))))))

(assert (= (and d!1088702 c!642955) b!3718558))

(assert (= (and d!1088702 (not c!642955)) b!3718559))

(declare-fun m!4223575 () Bool)

(assert (=> b!3718559 m!4223575))

(assert (=> b!3718559 m!4223413))

(assert (=> d!1088376 d!1088702))

(assert (=> d!1088446 d!1088604))

(declare-fun b!3718560 () Bool)

(declare-fun res!1511486 () Bool)

(declare-fun e!2302299 () Bool)

(assert (=> b!3718560 (=> (not res!1511486) (not e!2302299))))

(declare-fun call!269942 () Bool)

(assert (=> b!3718560 (= res!1511486 call!269942)))

(declare-fun e!2302300 () Bool)

(assert (=> b!3718560 (= e!2302300 e!2302299)))

(declare-fun bm!269935 () Bool)

(declare-fun c!642957 () Bool)

(assert (=> bm!269935 (= call!269942 (validRegex!4964 (ite c!642957 (regOne!22227 lt!1297545) (regTwo!22226 lt!1297545))))))

(declare-fun b!3718561 () Bool)

(declare-fun call!269941 () Bool)

(assert (=> b!3718561 (= e!2302299 call!269941)))

(declare-fun b!3718562 () Bool)

(declare-fun e!2302301 () Bool)

(assert (=> b!3718562 (= e!2302301 e!2302300)))

(assert (=> b!3718562 (= c!642957 ((_ is Union!10857) lt!1297545))))

(declare-fun c!642956 () Bool)

(declare-fun call!269940 () Bool)

(declare-fun bm!269936 () Bool)

(assert (=> bm!269936 (= call!269940 (validRegex!4964 (ite c!642956 (reg!11186 lt!1297545) (ite c!642957 (regTwo!22227 lt!1297545) (regOne!22226 lt!1297545)))))))

(declare-fun b!3718563 () Bool)

(declare-fun e!2302298 () Bool)

(declare-fun e!2302297 () Bool)

(assert (=> b!3718563 (= e!2302298 e!2302297)))

(declare-fun res!1511483 () Bool)

(assert (=> b!3718563 (=> (not res!1511483) (not e!2302297))))

(assert (=> b!3718563 (= res!1511483 call!269941)))

(declare-fun b!3718564 () Bool)

(declare-fun e!2302295 () Bool)

(assert (=> b!3718564 (= e!2302301 e!2302295)))

(declare-fun res!1511485 () Bool)

(assert (=> b!3718564 (= res!1511485 (not (nullable!3780 (reg!11186 lt!1297545))))))

(assert (=> b!3718564 (=> (not res!1511485) (not e!2302295))))

(declare-fun b!3718565 () Bool)

(declare-fun e!2302296 () Bool)

(assert (=> b!3718565 (= e!2302296 e!2302301)))

(assert (=> b!3718565 (= c!642956 ((_ is Star!10857) lt!1297545))))

(declare-fun b!3718566 () Bool)

(declare-fun res!1511487 () Bool)

(assert (=> b!3718566 (=> res!1511487 e!2302298)))

(assert (=> b!3718566 (= res!1511487 (not ((_ is Concat!17128) lt!1297545)))))

(assert (=> b!3718566 (= e!2302300 e!2302298)))

(declare-fun bm!269937 () Bool)

(assert (=> bm!269937 (= call!269941 call!269940)))

(declare-fun d!1088704 () Bool)

(declare-fun res!1511484 () Bool)

(assert (=> d!1088704 (=> res!1511484 e!2302296)))

(assert (=> d!1088704 (= res!1511484 ((_ is ElementMatch!10857) lt!1297545))))

(assert (=> d!1088704 (= (validRegex!4964 lt!1297545) e!2302296)))

(declare-fun b!3718567 () Bool)

(assert (=> b!3718567 (= e!2302297 call!269942)))

(declare-fun b!3718568 () Bool)

(assert (=> b!3718568 (= e!2302295 call!269940)))

(assert (= (and d!1088704 (not res!1511484)) b!3718565))

(assert (= (and b!3718565 c!642956) b!3718564))

(assert (= (and b!3718565 (not c!642956)) b!3718562))

(assert (= (and b!3718564 res!1511485) b!3718568))

(assert (= (and b!3718562 c!642957) b!3718560))

(assert (= (and b!3718562 (not c!642957)) b!3718566))

(assert (= (and b!3718560 res!1511486) b!3718561))

(assert (= (and b!3718566 (not res!1511487)) b!3718563))

(assert (= (and b!3718563 res!1511483) b!3718567))

(assert (= (or b!3718561 b!3718563) bm!269937))

(assert (= (or b!3718560 b!3718567) bm!269935))

(assert (= (or b!3718568 bm!269937) bm!269936))

(declare-fun m!4223577 () Bool)

(assert (=> bm!269935 m!4223577))

(declare-fun m!4223579 () Bool)

(assert (=> bm!269936 m!4223579))

(declare-fun m!4223581 () Bool)

(assert (=> b!3718564 m!4223581))

(assert (=> d!1088446 d!1088704))

(declare-fun d!1088706 () Bool)

(assert (not d!1088706))

(assert (=> b!3717447 d!1088706))

(declare-fun d!1088708 () Bool)

(assert (not d!1088708))

(assert (=> b!3717447 d!1088708))

(assert (=> b!3717447 d!1088626))

(assert (=> b!3717447 d!1088698))

(declare-fun b!3718569 () Bool)

(declare-fun e!2302307 () Bool)

(assert (=> b!3718569 (= e!2302307 (matchR!5302 (derivativeStep!3322 (derivativeStep!3322 lt!1297542 (head!8023 tl!3933)) (head!8023 (tail!5750 tl!3933))) (tail!5750 (tail!5750 tl!3933))))))

(declare-fun b!3718570 () Bool)

(declare-fun e!2302304 () Bool)

(declare-fun lt!1297654 () Bool)

(declare-fun call!269943 () Bool)

(assert (=> b!3718570 (= e!2302304 (= lt!1297654 call!269943))))

(declare-fun b!3718571 () Bool)

(declare-fun res!1511490 () Bool)

(declare-fun e!2302302 () Bool)

(assert (=> b!3718571 (=> res!1511490 e!2302302)))

(assert (=> b!3718571 (= res!1511490 (not ((_ is ElementMatch!10857) (derivativeStep!3322 lt!1297542 (head!8023 tl!3933)))))))

(declare-fun e!2302306 () Bool)

(assert (=> b!3718571 (= e!2302306 e!2302302)))

(declare-fun b!3718572 () Bool)

(declare-fun e!2302305 () Bool)

(assert (=> b!3718572 (= e!2302305 (not (= (head!8023 (tail!5750 tl!3933)) (c!642561 (derivativeStep!3322 lt!1297542 (head!8023 tl!3933))))))))

(declare-fun b!3718573 () Bool)

(declare-fun e!2302308 () Bool)

(assert (=> b!3718573 (= e!2302302 e!2302308)))

(declare-fun res!1511488 () Bool)

(assert (=> b!3718573 (=> (not res!1511488) (not e!2302308))))

(assert (=> b!3718573 (= res!1511488 (not lt!1297654))))

(declare-fun b!3718574 () Bool)

(assert (=> b!3718574 (= e!2302307 (nullable!3780 (derivativeStep!3322 lt!1297542 (head!8023 tl!3933))))))

(declare-fun b!3718575 () Bool)

(assert (=> b!3718575 (= e!2302304 e!2302306)))

(declare-fun c!642960 () Bool)

(assert (=> b!3718575 (= c!642960 ((_ is EmptyLang!10857) (derivativeStep!3322 lt!1297542 (head!8023 tl!3933))))))

(declare-fun d!1088710 () Bool)

(assert (=> d!1088710 e!2302304))

(declare-fun c!642959 () Bool)

(assert (=> d!1088710 (= c!642959 ((_ is EmptyExpr!10857) (derivativeStep!3322 lt!1297542 (head!8023 tl!3933))))))

(assert (=> d!1088710 (= lt!1297654 e!2302307)))

(declare-fun c!642958 () Bool)

(assert (=> d!1088710 (= c!642958 (isEmpty!23510 (tail!5750 tl!3933)))))

(assert (=> d!1088710 (validRegex!4964 (derivativeStep!3322 lt!1297542 (head!8023 tl!3933)))))

(assert (=> d!1088710 (= (matchR!5302 (derivativeStep!3322 lt!1297542 (head!8023 tl!3933)) (tail!5750 tl!3933)) lt!1297654)))

(declare-fun b!3718576 () Bool)

(declare-fun res!1511492 () Bool)

(assert (=> b!3718576 (=> res!1511492 e!2302302)))

(declare-fun e!2302303 () Bool)

(assert (=> b!3718576 (= res!1511492 e!2302303)))

(declare-fun res!1511493 () Bool)

(assert (=> b!3718576 (=> (not res!1511493) (not e!2302303))))

(assert (=> b!3718576 (= res!1511493 lt!1297654)))

(declare-fun b!3718577 () Bool)

(declare-fun res!1511489 () Bool)

(assert (=> b!3718577 (=> (not res!1511489) (not e!2302303))))

(assert (=> b!3718577 (= res!1511489 (not call!269943))))

(declare-fun b!3718578 () Bool)

(assert (=> b!3718578 (= e!2302308 e!2302305)))

(declare-fun res!1511494 () Bool)

(assert (=> b!3718578 (=> res!1511494 e!2302305)))

(assert (=> b!3718578 (= res!1511494 call!269943)))

(declare-fun b!3718579 () Bool)

(declare-fun res!1511495 () Bool)

(assert (=> b!3718579 (=> res!1511495 e!2302305)))

(assert (=> b!3718579 (= res!1511495 (not (isEmpty!23510 (tail!5750 (tail!5750 tl!3933)))))))

(declare-fun b!3718580 () Bool)

(assert (=> b!3718580 (= e!2302306 (not lt!1297654))))

(declare-fun bm!269938 () Bool)

(assert (=> bm!269938 (= call!269943 (isEmpty!23510 (tail!5750 tl!3933)))))

(declare-fun b!3718581 () Bool)

(assert (=> b!3718581 (= e!2302303 (= (head!8023 (tail!5750 tl!3933)) (c!642561 (derivativeStep!3322 lt!1297542 (head!8023 tl!3933)))))))

(declare-fun b!3718582 () Bool)

(declare-fun res!1511491 () Bool)

(assert (=> b!3718582 (=> (not res!1511491) (not e!2302303))))

(assert (=> b!3718582 (= res!1511491 (isEmpty!23510 (tail!5750 (tail!5750 tl!3933))))))

(assert (= (and d!1088710 c!642958) b!3718574))

(assert (= (and d!1088710 (not c!642958)) b!3718569))

(assert (= (and d!1088710 c!642959) b!3718570))

(assert (= (and d!1088710 (not c!642959)) b!3718575))

(assert (= (and b!3718575 c!642960) b!3718580))

(assert (= (and b!3718575 (not c!642960)) b!3718571))

(assert (= (and b!3718571 (not res!1511490)) b!3718576))

(assert (= (and b!3718576 res!1511493) b!3718577))

(assert (= (and b!3718577 res!1511489) b!3718582))

(assert (= (and b!3718582 res!1511491) b!3718581))

(assert (= (and b!3718576 (not res!1511492)) b!3718573))

(assert (= (and b!3718573 res!1511488) b!3718578))

(assert (= (and b!3718578 (not res!1511494)) b!3718579))

(assert (= (and b!3718579 (not res!1511495)) b!3718572))

(assert (= (or b!3718570 b!3718577 b!3718578) bm!269938))

(assert (=> b!3718569 m!4222641))

(assert (=> b!3718569 m!4223499))

(assert (=> b!3718569 m!4222885))

(assert (=> b!3718569 m!4223499))

(declare-fun m!4223583 () Bool)

(assert (=> b!3718569 m!4223583))

(assert (=> b!3718569 m!4222641))

(assert (=> b!3718569 m!4223503))

(assert (=> b!3718569 m!4223583))

(assert (=> b!3718569 m!4223503))

(declare-fun m!4223585 () Bool)

(assert (=> b!3718569 m!4223585))

(assert (=> b!3718581 m!4222641))

(assert (=> b!3718581 m!4223499))

(assert (=> b!3718574 m!4222885))

(declare-fun m!4223587 () Bool)

(assert (=> b!3718574 m!4223587))

(assert (=> b!3718572 m!4222641))

(assert (=> b!3718572 m!4223499))

(assert (=> b!3718579 m!4222641))

(assert (=> b!3718579 m!4223503))

(assert (=> b!3718579 m!4223503))

(assert (=> b!3718579 m!4223509))

(assert (=> bm!269938 m!4222641))

(assert (=> bm!269938 m!4222647))

(assert (=> d!1088710 m!4222641))

(assert (=> d!1088710 m!4222647))

(assert (=> d!1088710 m!4222885))

(declare-fun m!4223589 () Bool)

(assert (=> d!1088710 m!4223589))

(assert (=> b!3718582 m!4222641))

(assert (=> b!3718582 m!4223503))

(assert (=> b!3718582 m!4223503))

(assert (=> b!3718582 m!4223509))

(assert (=> b!3717569 d!1088710))

(declare-fun b!3718583 () Bool)

(declare-fun e!2302311 () Regex!10857)

(declare-fun e!2302309 () Regex!10857)

(assert (=> b!3718583 (= e!2302311 e!2302309)))

(declare-fun c!642962 () Bool)

(assert (=> b!3718583 (= c!642962 ((_ is ElementMatch!10857) lt!1297542))))

(declare-fun call!269946 () Regex!10857)

(declare-fun c!642961 () Bool)

(declare-fun bm!269939 () Bool)

(assert (=> bm!269939 (= call!269946 (derivativeStep!3322 (ite c!642961 (regOne!22227 lt!1297542) (regOne!22226 lt!1297542)) (head!8023 tl!3933)))))

(declare-fun d!1088712 () Bool)

(declare-fun lt!1297655 () Regex!10857)

(assert (=> d!1088712 (validRegex!4964 lt!1297655)))

(assert (=> d!1088712 (= lt!1297655 e!2302311)))

(declare-fun c!642965 () Bool)

(assert (=> d!1088712 (= c!642965 (or ((_ is EmptyExpr!10857) lt!1297542) ((_ is EmptyLang!10857) lt!1297542)))))

(assert (=> d!1088712 (validRegex!4964 lt!1297542)))

(assert (=> d!1088712 (= (derivativeStep!3322 lt!1297542 (head!8023 tl!3933)) lt!1297655)))

(declare-fun bm!269940 () Bool)

(declare-fun call!269944 () Regex!10857)

(assert (=> bm!269940 (= call!269944 call!269946)))

(declare-fun e!2302313 () Regex!10857)

(declare-fun b!3718584 () Bool)

(declare-fun call!269947 () Regex!10857)

(assert (=> b!3718584 (= e!2302313 (Union!10857 (Concat!17128 call!269944 (regTwo!22226 lt!1297542)) call!269947))))

(declare-fun bm!269941 () Bool)

(declare-fun call!269945 () Regex!10857)

(assert (=> bm!269941 (= call!269947 call!269945)))

(declare-fun b!3718585 () Bool)

(declare-fun c!642963 () Bool)

(assert (=> b!3718585 (= c!642963 (nullable!3780 (regOne!22226 lt!1297542)))))

(declare-fun e!2302310 () Regex!10857)

(assert (=> b!3718585 (= e!2302310 e!2302313)))

(declare-fun b!3718586 () Bool)

(assert (=> b!3718586 (= e!2302310 (Concat!17128 call!269947 lt!1297542))))

(declare-fun b!3718587 () Bool)

(assert (=> b!3718587 (= e!2302311 EmptyLang!10857)))

(declare-fun b!3718588 () Bool)

(assert (=> b!3718588 (= c!642961 ((_ is Union!10857) lt!1297542))))

(declare-fun e!2302312 () Regex!10857)

(assert (=> b!3718588 (= e!2302309 e!2302312)))

(declare-fun b!3718589 () Bool)

(assert (=> b!3718589 (= e!2302312 e!2302310)))

(declare-fun c!642964 () Bool)

(assert (=> b!3718589 (= c!642964 ((_ is Star!10857) lt!1297542))))

(declare-fun b!3718590 () Bool)

(assert (=> b!3718590 (= e!2302313 (Union!10857 (Concat!17128 call!269944 (regTwo!22226 lt!1297542)) EmptyLang!10857))))

(declare-fun b!3718591 () Bool)

(assert (=> b!3718591 (= e!2302309 (ite (= (head!8023 tl!3933) (c!642561 lt!1297542)) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3718592 () Bool)

(assert (=> b!3718592 (= e!2302312 (Union!10857 call!269946 call!269945))))

(declare-fun bm!269942 () Bool)

(assert (=> bm!269942 (= call!269945 (derivativeStep!3322 (ite c!642961 (regTwo!22227 lt!1297542) (ite c!642964 (reg!11186 lt!1297542) (regTwo!22226 lt!1297542))) (head!8023 tl!3933)))))

(assert (= (and d!1088712 c!642965) b!3718587))

(assert (= (and d!1088712 (not c!642965)) b!3718583))

(assert (= (and b!3718583 c!642962) b!3718591))

(assert (= (and b!3718583 (not c!642962)) b!3718588))

(assert (= (and b!3718588 c!642961) b!3718592))

(assert (= (and b!3718588 (not c!642961)) b!3718589))

(assert (= (and b!3718589 c!642964) b!3718586))

(assert (= (and b!3718589 (not c!642964)) b!3718585))

(assert (= (and b!3718585 c!642963) b!3718584))

(assert (= (and b!3718585 (not c!642963)) b!3718590))

(assert (= (or b!3718584 b!3718590) bm!269940))

(assert (= (or b!3718586 b!3718584) bm!269941))

(assert (= (or b!3718592 bm!269941) bm!269942))

(assert (= (or b!3718592 bm!269940) bm!269939))

(assert (=> bm!269939 m!4222637))

(declare-fun m!4223591 () Bool)

(assert (=> bm!269939 m!4223591))

(declare-fun m!4223593 () Bool)

(assert (=> d!1088712 m!4223593))

(assert (=> d!1088712 m!4222891))

(assert (=> b!3718585 m!4223407))

(assert (=> bm!269942 m!4222637))

(declare-fun m!4223595 () Bool)

(assert (=> bm!269942 m!4223595))

(assert (=> b!3717569 d!1088712))

(assert (=> b!3717569 d!1088624))

(assert (=> b!3717569 d!1088614))

(declare-fun d!1088714 () Bool)

(assert (=> d!1088714 (= (isEmpty!23510 Nil!39614) true)))

(assert (=> d!1088406 d!1088714))

(declare-fun b!3718593 () Bool)

(declare-fun res!1511499 () Bool)

(declare-fun e!2302318 () Bool)

(assert (=> b!3718593 (=> (not res!1511499) (not e!2302318))))

(declare-fun call!269950 () Bool)

(assert (=> b!3718593 (= res!1511499 call!269950)))

(declare-fun e!2302319 () Bool)

(assert (=> b!3718593 (= e!2302319 e!2302318)))

(declare-fun bm!269943 () Bool)

(declare-fun c!642967 () Bool)

(assert (=> bm!269943 (= call!269950 (validRegex!4964 (ite c!642967 (regOne!22227 lt!1297544) (regTwo!22226 lt!1297544))))))

(declare-fun b!3718594 () Bool)

(declare-fun call!269949 () Bool)

(assert (=> b!3718594 (= e!2302318 call!269949)))

(declare-fun b!3718595 () Bool)

(declare-fun e!2302320 () Bool)

(assert (=> b!3718595 (= e!2302320 e!2302319)))

(assert (=> b!3718595 (= c!642967 ((_ is Union!10857) lt!1297544))))

(declare-fun call!269948 () Bool)

(declare-fun bm!269944 () Bool)

(declare-fun c!642966 () Bool)

(assert (=> bm!269944 (= call!269948 (validRegex!4964 (ite c!642966 (reg!11186 lt!1297544) (ite c!642967 (regTwo!22227 lt!1297544) (regOne!22226 lt!1297544)))))))

(declare-fun b!3718596 () Bool)

(declare-fun e!2302317 () Bool)

(declare-fun e!2302316 () Bool)

(assert (=> b!3718596 (= e!2302317 e!2302316)))

(declare-fun res!1511496 () Bool)

(assert (=> b!3718596 (=> (not res!1511496) (not e!2302316))))

(assert (=> b!3718596 (= res!1511496 call!269949)))

(declare-fun b!3718597 () Bool)

(declare-fun e!2302314 () Bool)

(assert (=> b!3718597 (= e!2302320 e!2302314)))

(declare-fun res!1511498 () Bool)

(assert (=> b!3718597 (= res!1511498 (not (nullable!3780 (reg!11186 lt!1297544))))))

(assert (=> b!3718597 (=> (not res!1511498) (not e!2302314))))

(declare-fun b!3718598 () Bool)

(declare-fun e!2302315 () Bool)

(assert (=> b!3718598 (= e!2302315 e!2302320)))

(assert (=> b!3718598 (= c!642966 ((_ is Star!10857) lt!1297544))))

(declare-fun b!3718599 () Bool)

(declare-fun res!1511500 () Bool)

(assert (=> b!3718599 (=> res!1511500 e!2302317)))

(assert (=> b!3718599 (= res!1511500 (not ((_ is Concat!17128) lt!1297544)))))

(assert (=> b!3718599 (= e!2302319 e!2302317)))

(declare-fun bm!269945 () Bool)

(assert (=> bm!269945 (= call!269949 call!269948)))

(declare-fun d!1088716 () Bool)

(declare-fun res!1511497 () Bool)

(assert (=> d!1088716 (=> res!1511497 e!2302315)))

(assert (=> d!1088716 (= res!1511497 ((_ is ElementMatch!10857) lt!1297544))))

(assert (=> d!1088716 (= (validRegex!4964 lt!1297544) e!2302315)))

(declare-fun b!3718600 () Bool)

(assert (=> b!3718600 (= e!2302316 call!269950)))

(declare-fun b!3718601 () Bool)

(assert (=> b!3718601 (= e!2302314 call!269948)))

(assert (= (and d!1088716 (not res!1511497)) b!3718598))

(assert (= (and b!3718598 c!642966) b!3718597))

(assert (= (and b!3718598 (not c!642966)) b!3718595))

(assert (= (and b!3718597 res!1511498) b!3718601))

(assert (= (and b!3718595 c!642967) b!3718593))

(assert (= (and b!3718595 (not c!642967)) b!3718599))

(assert (= (and b!3718593 res!1511499) b!3718594))

(assert (= (and b!3718599 (not res!1511500)) b!3718596))

(assert (= (and b!3718596 res!1511496) b!3718600))

(assert (= (or b!3718594 b!3718596) bm!269945))

(assert (= (or b!3718593 b!3718600) bm!269943))

(assert (= (or b!3718601 bm!269945) bm!269944))

(declare-fun m!4223597 () Bool)

(assert (=> bm!269943 m!4223597))

(declare-fun m!4223599 () Bool)

(assert (=> bm!269944 m!4223599))

(declare-fun m!4223601 () Bool)

(assert (=> b!3718597 m!4223601))

(assert (=> d!1088406 d!1088716))

(assert (=> b!3717625 d!1088354))

(assert (=> d!1088448 d!1088714))

(declare-fun b!3718602 () Bool)

(declare-fun res!1511504 () Bool)

(declare-fun e!2302325 () Bool)

(assert (=> b!3718602 (=> (not res!1511504) (not e!2302325))))

(declare-fun call!269953 () Bool)

(assert (=> b!3718602 (= res!1511504 call!269953)))

(declare-fun e!2302326 () Bool)

(assert (=> b!3718602 (= e!2302326 e!2302325)))

(declare-fun bm!269946 () Bool)

(declare-fun c!642969 () Bool)

(assert (=> bm!269946 (= call!269953 (validRegex!4964 (ite c!642969 (regOne!22227 (derivative!371 lt!1297542 tl!3933)) (regTwo!22226 (derivative!371 lt!1297542 tl!3933)))))))

(declare-fun b!3718603 () Bool)

(declare-fun call!269952 () Bool)

(assert (=> b!3718603 (= e!2302325 call!269952)))

(declare-fun b!3718604 () Bool)

(declare-fun e!2302327 () Bool)

(assert (=> b!3718604 (= e!2302327 e!2302326)))

(assert (=> b!3718604 (= c!642969 ((_ is Union!10857) (derivative!371 lt!1297542 tl!3933)))))

(declare-fun c!642968 () Bool)

(declare-fun call!269951 () Bool)

(declare-fun bm!269947 () Bool)

(assert (=> bm!269947 (= call!269951 (validRegex!4964 (ite c!642968 (reg!11186 (derivative!371 lt!1297542 tl!3933)) (ite c!642969 (regTwo!22227 (derivative!371 lt!1297542 tl!3933)) (regOne!22226 (derivative!371 lt!1297542 tl!3933))))))))

(declare-fun b!3718605 () Bool)

(declare-fun e!2302324 () Bool)

(declare-fun e!2302323 () Bool)

(assert (=> b!3718605 (= e!2302324 e!2302323)))

(declare-fun res!1511501 () Bool)

(assert (=> b!3718605 (=> (not res!1511501) (not e!2302323))))

(assert (=> b!3718605 (= res!1511501 call!269952)))

(declare-fun b!3718606 () Bool)

(declare-fun e!2302321 () Bool)

(assert (=> b!3718606 (= e!2302327 e!2302321)))

(declare-fun res!1511503 () Bool)

(assert (=> b!3718606 (= res!1511503 (not (nullable!3780 (reg!11186 (derivative!371 lt!1297542 tl!3933)))))))

(assert (=> b!3718606 (=> (not res!1511503) (not e!2302321))))

(declare-fun b!3718607 () Bool)

(declare-fun e!2302322 () Bool)

(assert (=> b!3718607 (= e!2302322 e!2302327)))

(assert (=> b!3718607 (= c!642968 ((_ is Star!10857) (derivative!371 lt!1297542 tl!3933)))))

(declare-fun b!3718608 () Bool)

(declare-fun res!1511505 () Bool)

(assert (=> b!3718608 (=> res!1511505 e!2302324)))

(assert (=> b!3718608 (= res!1511505 (not ((_ is Concat!17128) (derivative!371 lt!1297542 tl!3933))))))

(assert (=> b!3718608 (= e!2302326 e!2302324)))

(declare-fun bm!269948 () Bool)

(assert (=> bm!269948 (= call!269952 call!269951)))

(declare-fun d!1088718 () Bool)

(declare-fun res!1511502 () Bool)

(assert (=> d!1088718 (=> res!1511502 e!2302322)))

(assert (=> d!1088718 (= res!1511502 ((_ is ElementMatch!10857) (derivative!371 lt!1297542 tl!3933)))))

(assert (=> d!1088718 (= (validRegex!4964 (derivative!371 lt!1297542 tl!3933)) e!2302322)))

(declare-fun b!3718609 () Bool)

(assert (=> b!3718609 (= e!2302323 call!269953)))

(declare-fun b!3718610 () Bool)

(assert (=> b!3718610 (= e!2302321 call!269951)))

(assert (= (and d!1088718 (not res!1511502)) b!3718607))

(assert (= (and b!3718607 c!642968) b!3718606))

(assert (= (and b!3718607 (not c!642968)) b!3718604))

(assert (= (and b!3718606 res!1511503) b!3718610))

(assert (= (and b!3718604 c!642969) b!3718602))

(assert (= (and b!3718604 (not c!642969)) b!3718608))

(assert (= (and b!3718602 res!1511504) b!3718603))

(assert (= (and b!3718608 (not res!1511505)) b!3718605))

(assert (= (and b!3718605 res!1511501) b!3718609))

(assert (= (or b!3718603 b!3718605) bm!269948))

(assert (= (or b!3718602 b!3718609) bm!269946))

(assert (= (or b!3718610 bm!269948) bm!269947))

(declare-fun m!4223603 () Bool)

(assert (=> bm!269946 m!4223603))

(declare-fun m!4223605 () Bool)

(assert (=> bm!269947 m!4223605))

(declare-fun m!4223607 () Bool)

(assert (=> b!3718606 m!4223607))

(assert (=> d!1088448 d!1088718))

(assert (=> bm!269608 d!1088604))

(declare-fun d!1088720 () Bool)

(assert (not d!1088720))

(assert (=> b!3717457 d!1088720))

(assert (=> b!3717457 d!1088698))

(declare-fun b!3718611 () Bool)

(declare-fun e!2302331 () Bool)

(declare-fun e!2302329 () Bool)

(assert (=> b!3718611 (= e!2302331 e!2302329)))

(declare-fun res!1511509 () Bool)

(assert (=> b!3718611 (=> res!1511509 e!2302329)))

(assert (=> b!3718611 (= res!1511509 ((_ is Star!10857) (regOne!22226 r!26326)))))

(declare-fun b!3718612 () Bool)

(declare-fun e!2302330 () Bool)

(declare-fun e!2302328 () Bool)

(assert (=> b!3718612 (= e!2302330 e!2302328)))

(declare-fun res!1511507 () Bool)

(declare-fun call!269954 () Bool)

(assert (=> b!3718612 (= res!1511507 call!269954)))

(assert (=> b!3718612 (=> (not res!1511507) (not e!2302328))))

(declare-fun bm!269949 () Bool)

(declare-fun c!642970 () Bool)

(assert (=> bm!269949 (= call!269954 (nullable!3780 (ite c!642970 (regTwo!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326)))))))

(declare-fun b!3718613 () Bool)

(declare-fun e!2302333 () Bool)

(assert (=> b!3718613 (= e!2302333 call!269954)))

(declare-fun b!3718614 () Bool)

(assert (=> b!3718614 (= e!2302330 e!2302333)))

(declare-fun res!1511506 () Bool)

(declare-fun call!269955 () Bool)

(assert (=> b!3718614 (= res!1511506 call!269955)))

(assert (=> b!3718614 (=> res!1511506 e!2302333)))

(declare-fun b!3718615 () Bool)

(assert (=> b!3718615 (= e!2302329 e!2302330)))

(assert (=> b!3718615 (= c!642970 ((_ is Union!10857) (regOne!22226 r!26326)))))

(declare-fun bm!269950 () Bool)

(assert (=> bm!269950 (= call!269955 (nullable!3780 (ite c!642970 (regOne!22227 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326)))))))

(declare-fun d!1088722 () Bool)

(declare-fun res!1511508 () Bool)

(declare-fun e!2302332 () Bool)

(assert (=> d!1088722 (=> res!1511508 e!2302332)))

(assert (=> d!1088722 (= res!1511508 ((_ is EmptyExpr!10857) (regOne!22226 r!26326)))))

(assert (=> d!1088722 (= (nullableFct!1069 (regOne!22226 r!26326)) e!2302332)))

(declare-fun b!3718616 () Bool)

(assert (=> b!3718616 (= e!2302332 e!2302331)))

(declare-fun res!1511510 () Bool)

(assert (=> b!3718616 (=> (not res!1511510) (not e!2302331))))

(assert (=> b!3718616 (= res!1511510 (and (not ((_ is EmptyLang!10857) (regOne!22226 r!26326))) (not ((_ is ElementMatch!10857) (regOne!22226 r!26326)))))))

(declare-fun b!3718617 () Bool)

(assert (=> b!3718617 (= e!2302328 call!269955)))

(assert (= (and d!1088722 (not res!1511508)) b!3718616))

(assert (= (and b!3718616 res!1511510) b!3718611))

(assert (= (and b!3718611 (not res!1511509)) b!3718615))

(assert (= (and b!3718615 c!642970) b!3718614))

(assert (= (and b!3718615 (not c!642970)) b!3718612))

(assert (= (and b!3718614 (not res!1511506)) b!3718613))

(assert (= (and b!3718612 res!1511507) b!3718617))

(assert (= (or b!3718613 b!3718612) bm!269949))

(assert (= (or b!3718614 b!3718617) bm!269950))

(declare-fun m!4223609 () Bool)

(assert (=> bm!269949 m!4223609))

(declare-fun m!4223611 () Bool)

(assert (=> bm!269950 m!4223611))

(assert (=> d!1088424 d!1088722))

(assert (=> b!3717227 d!1088612))

(assert (=> b!3717227 d!1088614))

(assert (=> b!3717658 d!1088612))

(assert (=> b!3717658 d!1088614))

(declare-fun bm!269951 () Bool)

(declare-fun call!269956 () List!39738)

(declare-fun call!269959 () List!39738)

(assert (=> bm!269951 (= call!269956 call!269959)))

(declare-fun call!269958 () List!39738)

(declare-fun bm!269952 () Bool)

(declare-fun c!642973 () Bool)

(assert (=> bm!269952 (= call!269958 (usedCharacters!1120 (ite c!642973 (regTwo!22227 (ite c!642598 (reg!11186 (regTwo!22226 r!26326)) (ite c!642600 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) (regTwo!22226 (ite c!642598 (reg!11186 (regTwo!22226 r!26326)) (ite c!642600 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))))))

(declare-fun e!2302337 () List!39738)

(declare-fun b!3718619 () Bool)

(assert (=> b!3718619 (= e!2302337 (Cons!39614 (c!642561 (ite c!642598 (reg!11186 (regTwo!22226 r!26326)) (ite c!642600 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) Nil!39614))))

(declare-fun b!3718620 () Bool)

(declare-fun e!2302335 () List!39738)

(declare-fun call!269957 () List!39738)

(assert (=> b!3718620 (= e!2302335 call!269957)))

(declare-fun b!3718621 () Bool)

(declare-fun e!2302336 () List!39738)

(assert (=> b!3718621 (= e!2302336 call!269959)))

(declare-fun bm!269953 () Bool)

(assert (=> bm!269953 (= call!269957 (++!9802 call!269956 call!269958))))

(declare-fun c!642971 () Bool)

(declare-fun b!3718622 () Bool)

(assert (=> b!3718622 (= c!642971 ((_ is Star!10857) (ite c!642598 (reg!11186 (regTwo!22226 r!26326)) (ite c!642600 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))))

(assert (=> b!3718622 (= e!2302337 e!2302336)))

(declare-fun b!3718623 () Bool)

(declare-fun e!2302334 () List!39738)

(assert (=> b!3718623 (= e!2302334 Nil!39614)))

(declare-fun b!3718618 () Bool)

(assert (=> b!3718618 (= e!2302336 e!2302335)))

(assert (=> b!3718618 (= c!642973 ((_ is Union!10857) (ite c!642598 (reg!11186 (regTwo!22226 r!26326)) (ite c!642600 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))))

(declare-fun d!1088724 () Bool)

(declare-fun c!642972 () Bool)

(assert (=> d!1088724 (= c!642972 (or ((_ is EmptyExpr!10857) (ite c!642598 (reg!11186 (regTwo!22226 r!26326)) (ite c!642600 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) ((_ is EmptyLang!10857) (ite c!642598 (reg!11186 (regTwo!22226 r!26326)) (ite c!642600 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326)))))))))

(assert (=> d!1088724 (= (usedCharacters!1120 (ite c!642598 (reg!11186 (regTwo!22226 r!26326)) (ite c!642600 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) e!2302334)))

(declare-fun bm!269954 () Bool)

(assert (=> bm!269954 (= call!269959 (usedCharacters!1120 (ite c!642971 (reg!11186 (ite c!642598 (reg!11186 (regTwo!22226 r!26326)) (ite c!642600 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) (ite c!642973 (regOne!22227 (ite c!642598 (reg!11186 (regTwo!22226 r!26326)) (ite c!642600 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))) (regOne!22226 (ite c!642598 (reg!11186 (regTwo!22226 r!26326)) (ite c!642600 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326)))))))))))

(declare-fun b!3718624 () Bool)

(assert (=> b!3718624 (= e!2302334 e!2302337)))

(declare-fun c!642974 () Bool)

(assert (=> b!3718624 (= c!642974 ((_ is ElementMatch!10857) (ite c!642598 (reg!11186 (regTwo!22226 r!26326)) (ite c!642600 (regOne!22227 (regTwo!22226 r!26326)) (regOne!22226 (regTwo!22226 r!26326))))))))

(declare-fun b!3718625 () Bool)

(assert (=> b!3718625 (= e!2302335 call!269957)))

(assert (= (and d!1088724 c!642972) b!3718623))

(assert (= (and d!1088724 (not c!642972)) b!3718624))

(assert (= (and b!3718624 c!642974) b!3718619))

(assert (= (and b!3718624 (not c!642974)) b!3718622))

(assert (= (and b!3718622 c!642971) b!3718621))

(assert (= (and b!3718622 (not c!642971)) b!3718618))

(assert (= (and b!3718618 c!642973) b!3718620))

(assert (= (and b!3718618 (not c!642973)) b!3718625))

(assert (= (or b!3718620 b!3718625) bm!269951))

(assert (= (or b!3718620 b!3718625) bm!269952))

(assert (= (or b!3718620 b!3718625) bm!269953))

(assert (= (or b!3718621 bm!269951) bm!269954))

(declare-fun m!4223613 () Bool)

(assert (=> bm!269952 m!4223613))

(declare-fun m!4223615 () Bool)

(assert (=> bm!269953 m!4223615))

(declare-fun m!4223617 () Bool)

(assert (=> bm!269954 m!4223617))

(assert (=> bm!269634 d!1088724))

(declare-fun b!3718626 () Bool)

(declare-fun res!1511514 () Bool)

(declare-fun e!2302342 () Bool)

(assert (=> b!3718626 (=> (not res!1511514) (not e!2302342))))

(declare-fun call!269962 () Bool)

(assert (=> b!3718626 (= res!1511514 call!269962)))

(declare-fun e!2302343 () Bool)

(assert (=> b!3718626 (= e!2302343 e!2302342)))

(declare-fun bm!269955 () Bool)

(declare-fun c!642976 () Bool)

(assert (=> bm!269955 (= call!269962 (validRegex!4964 (ite c!642976 (regOne!22227 lt!1297603) (regTwo!22226 lt!1297603))))))

(declare-fun b!3718627 () Bool)

(declare-fun call!269961 () Bool)

(assert (=> b!3718627 (= e!2302342 call!269961)))

(declare-fun b!3718628 () Bool)

(declare-fun e!2302344 () Bool)

(assert (=> b!3718628 (= e!2302344 e!2302343)))

(assert (=> b!3718628 (= c!642976 ((_ is Union!10857) lt!1297603))))

(declare-fun c!642975 () Bool)

(declare-fun call!269960 () Bool)

(declare-fun bm!269956 () Bool)

(assert (=> bm!269956 (= call!269960 (validRegex!4964 (ite c!642975 (reg!11186 lt!1297603) (ite c!642976 (regTwo!22227 lt!1297603) (regOne!22226 lt!1297603)))))))

(declare-fun b!3718629 () Bool)

(declare-fun e!2302341 () Bool)

(declare-fun e!2302340 () Bool)

(assert (=> b!3718629 (= e!2302341 e!2302340)))

(declare-fun res!1511511 () Bool)

(assert (=> b!3718629 (=> (not res!1511511) (not e!2302340))))

(assert (=> b!3718629 (= res!1511511 call!269961)))

(declare-fun b!3718630 () Bool)

(declare-fun e!2302338 () Bool)

(assert (=> b!3718630 (= e!2302344 e!2302338)))

(declare-fun res!1511513 () Bool)

(assert (=> b!3718630 (= res!1511513 (not (nullable!3780 (reg!11186 lt!1297603))))))

(assert (=> b!3718630 (=> (not res!1511513) (not e!2302338))))

(declare-fun b!3718631 () Bool)

(declare-fun e!2302339 () Bool)

(assert (=> b!3718631 (= e!2302339 e!2302344)))

(assert (=> b!3718631 (= c!642975 ((_ is Star!10857) lt!1297603))))

(declare-fun b!3718632 () Bool)

(declare-fun res!1511515 () Bool)

(assert (=> b!3718632 (=> res!1511515 e!2302341)))

(assert (=> b!3718632 (= res!1511515 (not ((_ is Concat!17128) lt!1297603)))))

(assert (=> b!3718632 (= e!2302343 e!2302341)))

(declare-fun bm!269957 () Bool)

(assert (=> bm!269957 (= call!269961 call!269960)))

(declare-fun d!1088726 () Bool)

(declare-fun res!1511512 () Bool)

(assert (=> d!1088726 (=> res!1511512 e!2302339)))

(assert (=> d!1088726 (= res!1511512 ((_ is ElementMatch!10857) lt!1297603))))

(assert (=> d!1088726 (= (validRegex!4964 lt!1297603) e!2302339)))

(declare-fun b!3718633 () Bool)

(assert (=> b!3718633 (= e!2302340 call!269962)))

(declare-fun b!3718634 () Bool)

(assert (=> b!3718634 (= e!2302338 call!269960)))

(assert (= (and d!1088726 (not res!1511512)) b!3718631))

(assert (= (and b!3718631 c!642975) b!3718630))

(assert (= (and b!3718631 (not c!642975)) b!3718628))

(assert (= (and b!3718630 res!1511513) b!3718634))

(assert (= (and b!3718628 c!642976) b!3718626))

(assert (= (and b!3718628 (not c!642976)) b!3718632))

(assert (= (and b!3718626 res!1511514) b!3718627))

(assert (= (and b!3718632 (not res!1511515)) b!3718629))

(assert (= (and b!3718629 res!1511511) b!3718633))

(assert (= (or b!3718627 b!3718629) bm!269957))

(assert (= (or b!3718626 b!3718633) bm!269955))

(assert (= (or b!3718634 bm!269957) bm!269956))

(declare-fun m!4223619 () Bool)

(assert (=> bm!269955 m!4223619))

(declare-fun m!4223621 () Bool)

(assert (=> bm!269956 m!4223621))

(declare-fun m!4223623 () Bool)

(assert (=> b!3718630 m!4223623))

(assert (=> d!1088438 d!1088726))

(declare-fun b!3718635 () Bool)

(declare-fun res!1511519 () Bool)

(declare-fun e!2302349 () Bool)

(assert (=> b!3718635 (=> (not res!1511519) (not e!2302349))))

(declare-fun call!269965 () Bool)

(assert (=> b!3718635 (= res!1511519 call!269965)))

(declare-fun e!2302350 () Bool)

(assert (=> b!3718635 (= e!2302350 e!2302349)))

(declare-fun bm!269958 () Bool)

(declare-fun c!642978 () Bool)

(assert (=> bm!269958 (= call!269965 (validRegex!4964 (ite c!642978 (regOne!22227 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326)))))))

(declare-fun b!3718636 () Bool)

(declare-fun call!269964 () Bool)

(assert (=> b!3718636 (= e!2302349 call!269964)))

(declare-fun b!3718637 () Bool)

(declare-fun e!2302351 () Bool)

(assert (=> b!3718637 (= e!2302351 e!2302350)))

(assert (=> b!3718637 (= c!642978 ((_ is Union!10857) (regOne!22226 r!26326)))))

(declare-fun call!269963 () Bool)

(declare-fun bm!269959 () Bool)

(declare-fun c!642977 () Bool)

(assert (=> bm!269959 (= call!269963 (validRegex!4964 (ite c!642977 (reg!11186 (regOne!22226 r!26326)) (ite c!642978 (regTwo!22227 (regOne!22226 r!26326)) (regOne!22226 (regOne!22226 r!26326))))))))

(declare-fun b!3718638 () Bool)

(declare-fun e!2302348 () Bool)

(declare-fun e!2302347 () Bool)

(assert (=> b!3718638 (= e!2302348 e!2302347)))

(declare-fun res!1511516 () Bool)

(assert (=> b!3718638 (=> (not res!1511516) (not e!2302347))))

(assert (=> b!3718638 (= res!1511516 call!269964)))

(declare-fun b!3718639 () Bool)

(declare-fun e!2302345 () Bool)

(assert (=> b!3718639 (= e!2302351 e!2302345)))

(declare-fun res!1511518 () Bool)

(assert (=> b!3718639 (= res!1511518 (not (nullable!3780 (reg!11186 (regOne!22226 r!26326)))))))

(assert (=> b!3718639 (=> (not res!1511518) (not e!2302345))))

(declare-fun b!3718640 () Bool)

(declare-fun e!2302346 () Bool)

(assert (=> b!3718640 (= e!2302346 e!2302351)))

(assert (=> b!3718640 (= c!642977 ((_ is Star!10857) (regOne!22226 r!26326)))))

(declare-fun b!3718641 () Bool)

(declare-fun res!1511520 () Bool)

(assert (=> b!3718641 (=> res!1511520 e!2302348)))

(assert (=> b!3718641 (= res!1511520 (not ((_ is Concat!17128) (regOne!22226 r!26326))))))

(assert (=> b!3718641 (= e!2302350 e!2302348)))

(declare-fun bm!269960 () Bool)

(assert (=> bm!269960 (= call!269964 call!269963)))

(declare-fun d!1088728 () Bool)

(declare-fun res!1511517 () Bool)

(assert (=> d!1088728 (=> res!1511517 e!2302346)))

(assert (=> d!1088728 (= res!1511517 ((_ is ElementMatch!10857) (regOne!22226 r!26326)))))

(assert (=> d!1088728 (= (validRegex!4964 (regOne!22226 r!26326)) e!2302346)))

(declare-fun b!3718642 () Bool)

(assert (=> b!3718642 (= e!2302347 call!269965)))

(declare-fun b!3718643 () Bool)

(assert (=> b!3718643 (= e!2302345 call!269963)))

(assert (= (and d!1088728 (not res!1511517)) b!3718640))

(assert (= (and b!3718640 c!642977) b!3718639))

(assert (= (and b!3718640 (not c!642977)) b!3718637))

(assert (= (and b!3718639 res!1511518) b!3718643))

(assert (= (and b!3718637 c!642978) b!3718635))

(assert (= (and b!3718637 (not c!642978)) b!3718641))

(assert (= (and b!3718635 res!1511519) b!3718636))

(assert (= (and b!3718641 (not res!1511520)) b!3718638))

(assert (= (and b!3718638 res!1511516) b!3718642))

(assert (= (or b!3718636 b!3718638) bm!269960))

(assert (= (or b!3718635 b!3718642) bm!269958))

(assert (= (or b!3718643 bm!269960) bm!269959))

(declare-fun m!4223625 () Bool)

(assert (=> bm!269958 m!4223625))

(declare-fun m!4223627 () Bool)

(assert (=> bm!269959 m!4223627))

(declare-fun m!4223629 () Bool)

(assert (=> b!3718639 m!4223629))

(assert (=> d!1088438 d!1088728))

(declare-fun b!3718644 () Bool)

(declare-fun res!1511524 () Bool)

(declare-fun e!2302356 () Bool)

(assert (=> b!3718644 (=> (not res!1511524) (not e!2302356))))

(declare-fun call!269968 () Bool)

(assert (=> b!3718644 (= res!1511524 call!269968)))

(declare-fun e!2302357 () Bool)

(assert (=> b!3718644 (= e!2302357 e!2302356)))

(declare-fun c!642980 () Bool)

(declare-fun bm!269961 () Bool)

(assert (=> bm!269961 (= call!269968 (validRegex!4964 (ite c!642980 (regOne!22227 (ite c!642674 (regOne!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))) (regTwo!22226 (ite c!642674 (regOne!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))))

(declare-fun b!3718645 () Bool)

(declare-fun call!269967 () Bool)

(assert (=> b!3718645 (= e!2302356 call!269967)))

(declare-fun b!3718646 () Bool)

(declare-fun e!2302358 () Bool)

(assert (=> b!3718646 (= e!2302358 e!2302357)))

(assert (=> b!3718646 (= c!642980 ((_ is Union!10857) (ite c!642674 (regOne!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))

(declare-fun c!642979 () Bool)

(declare-fun bm!269962 () Bool)

(declare-fun call!269966 () Bool)

(assert (=> bm!269962 (= call!269966 (validRegex!4964 (ite c!642979 (reg!11186 (ite c!642674 (regOne!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))) (ite c!642980 (regTwo!22227 (ite c!642674 (regOne!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))) (regOne!22226 (ite c!642674 (regOne!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326))))))))))

(declare-fun b!3718647 () Bool)

(declare-fun e!2302355 () Bool)

(declare-fun e!2302354 () Bool)

(assert (=> b!3718647 (= e!2302355 e!2302354)))

(declare-fun res!1511521 () Bool)

(assert (=> b!3718647 (=> (not res!1511521) (not e!2302354))))

(assert (=> b!3718647 (= res!1511521 call!269967)))

(declare-fun b!3718648 () Bool)

(declare-fun e!2302352 () Bool)

(assert (=> b!3718648 (= e!2302358 e!2302352)))

(declare-fun res!1511523 () Bool)

(assert (=> b!3718648 (= res!1511523 (not (nullable!3780 (reg!11186 (ite c!642674 (regOne!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))))

(assert (=> b!3718648 (=> (not res!1511523) (not e!2302352))))

(declare-fun b!3718649 () Bool)

(declare-fun e!2302353 () Bool)

(assert (=> b!3718649 (= e!2302353 e!2302358)))

(assert (=> b!3718649 (= c!642979 ((_ is Star!10857) (ite c!642674 (regOne!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))

(declare-fun b!3718650 () Bool)

(declare-fun res!1511525 () Bool)

(assert (=> b!3718650 (=> res!1511525 e!2302355)))

(assert (=> b!3718650 (= res!1511525 (not ((_ is Concat!17128) (ite c!642674 (regOne!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326))))))))

(assert (=> b!3718650 (= e!2302357 e!2302355)))

(declare-fun bm!269963 () Bool)

(assert (=> bm!269963 (= call!269967 call!269966)))

(declare-fun d!1088730 () Bool)

(declare-fun res!1511522 () Bool)

(assert (=> d!1088730 (=> res!1511522 e!2302353)))

(assert (=> d!1088730 (= res!1511522 ((_ is ElementMatch!10857) (ite c!642674 (regOne!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))))))

(assert (=> d!1088730 (= (validRegex!4964 (ite c!642674 (regOne!22227 (regTwo!22226 r!26326)) (regTwo!22226 (regTwo!22226 r!26326)))) e!2302353)))

(declare-fun b!3718651 () Bool)

(assert (=> b!3718651 (= e!2302354 call!269968)))

(declare-fun b!3718652 () Bool)

(assert (=> b!3718652 (= e!2302352 call!269966)))

(assert (= (and d!1088730 (not res!1511522)) b!3718649))

(assert (= (and b!3718649 c!642979) b!3718648))

(assert (= (and b!3718649 (not c!642979)) b!3718646))

(assert (= (and b!3718648 res!1511523) b!3718652))

(assert (= (and b!3718646 c!642980) b!3718644))

(assert (= (and b!3718646 (not c!642980)) b!3718650))

(assert (= (and b!3718644 res!1511524) b!3718645))

(assert (= (and b!3718650 (not res!1511525)) b!3718647))

(assert (= (and b!3718647 res!1511521) b!3718651))

(assert (= (or b!3718645 b!3718647) bm!269963))

(assert (= (or b!3718644 b!3718651) bm!269961))

(assert (= (or b!3718652 bm!269963) bm!269962))

(declare-fun m!4223631 () Bool)

(assert (=> bm!269961 m!4223631))

(declare-fun m!4223633 () Bool)

(assert (=> bm!269962 m!4223633))

(declare-fun m!4223635 () Bool)

(assert (=> b!3718648 m!4223635))

(assert (=> bm!269681 d!1088730))

(declare-fun d!1088732 () Bool)

(assert (=> d!1088732 (= (nullable!3780 (regOne!22226 (regOne!22226 r!26326))) (nullableFct!1069 (regOne!22226 (regOne!22226 r!26326))))))

(declare-fun bs!574899 () Bool)

(assert (= bs!574899 d!1088732))

(declare-fun m!4223637 () Bool)

(assert (=> bs!574899 m!4223637))

(assert (=> b!3717628 d!1088732))

(assert (=> bm!269703 d!1088604))

(assert (=> b!3717661 d!1088612))

(assert (=> b!3717661 d!1088614))

(assert (=> d!1088436 d!1088446))

(declare-fun d!1088734 () Bool)

(declare-fun e!2302361 () Bool)

(assert (=> d!1088734 e!2302361))

(declare-fun res!1511528 () Bool)

(assert (=> d!1088734 (=> res!1511528 e!2302361)))

(assert (=> d!1088734 (= res!1511528 (matchR!5302 lt!1297545 tl!3933))))

(assert (=> d!1088734 true))

(declare-fun _$116!397 () Unit!57512)

(assert (=> d!1088734 (= (choose!22200 lt!1297545 lt!1297539 tl!3933) _$116!397)))

(declare-fun b!3718655 () Bool)

(assert (=> b!3718655 (= e!2302361 (matchR!5302 lt!1297539 tl!3933))))

(assert (= (and d!1088734 (not res!1511528)) b!3718655))

(assert (=> d!1088734 m!4222593))

(assert (=> b!3718655 m!4222611))

(assert (=> d!1088436 d!1088734))

(assert (=> d!1088436 d!1088704))

(declare-fun b!3718656 () Bool)

(declare-fun e!2302364 () Regex!10857)

(declare-fun e!2302362 () Regex!10857)

(assert (=> b!3718656 (= e!2302364 e!2302362)))

(declare-fun c!642982 () Bool)

(assert (=> b!3718656 (= c!642982 ((_ is ElementMatch!10857) (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326))))))))

(declare-fun bm!269964 () Bool)

(declare-fun c!642981 () Bool)

(declare-fun call!269971 () Regex!10857)

(assert (=> bm!269964 (= call!269971 (derivativeStep!3322 (ite c!642981 (regOne!22227 (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326))))) (regOne!22226 (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326)))))) c!13576))))

(declare-fun d!1088736 () Bool)

(declare-fun lt!1297656 () Regex!10857)

(assert (=> d!1088736 (validRegex!4964 lt!1297656)))

(assert (=> d!1088736 (= lt!1297656 e!2302364)))

(declare-fun c!642985 () Bool)

(assert (=> d!1088736 (= c!642985 (or ((_ is EmptyExpr!10857) (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326))))) ((_ is EmptyLang!10857) (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326)))))))))

(assert (=> d!1088736 (validRegex!4964 (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326)))))))

(assert (=> d!1088736 (= (derivativeStep!3322 (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326)))) c!13576) lt!1297656)))

(declare-fun bm!269965 () Bool)

(declare-fun call!269969 () Regex!10857)

(assert (=> bm!269965 (= call!269969 call!269971)))

(declare-fun e!2302366 () Regex!10857)

(declare-fun b!3718657 () Bool)

(declare-fun call!269972 () Regex!10857)

(assert (=> b!3718657 (= e!2302366 (Union!10857 (Concat!17128 call!269969 (regTwo!22226 (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326)))))) call!269972))))

(declare-fun bm!269966 () Bool)

(declare-fun call!269970 () Regex!10857)

(assert (=> bm!269966 (= call!269972 call!269970)))

(declare-fun b!3718658 () Bool)

(declare-fun c!642983 () Bool)

(assert (=> b!3718658 (= c!642983 (nullable!3780 (regOne!22226 (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326)))))))))

(declare-fun e!2302363 () Regex!10857)

(assert (=> b!3718658 (= e!2302363 e!2302366)))

(declare-fun b!3718659 () Bool)

(assert (=> b!3718659 (= e!2302363 (Concat!17128 call!269972 (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326))))))))

(declare-fun b!3718660 () Bool)

(assert (=> b!3718660 (= e!2302364 EmptyLang!10857)))

(declare-fun b!3718661 () Bool)

(assert (=> b!3718661 (= c!642981 ((_ is Union!10857) (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326))))))))

(declare-fun e!2302365 () Regex!10857)

(assert (=> b!3718661 (= e!2302362 e!2302365)))

(declare-fun b!3718662 () Bool)

(assert (=> b!3718662 (= e!2302365 e!2302363)))

(declare-fun c!642984 () Bool)

(assert (=> b!3718662 (= c!642984 ((_ is Star!10857) (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326))))))))

(declare-fun b!3718663 () Bool)

(assert (=> b!3718663 (= e!2302366 (Union!10857 (Concat!17128 call!269969 (regTwo!22226 (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326)))))) EmptyLang!10857))))

(declare-fun b!3718664 () Bool)

(assert (=> b!3718664 (= e!2302362 (ite (= c!13576 (c!642561 (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326)))))) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3718665 () Bool)

(assert (=> b!3718665 (= e!2302365 (Union!10857 call!269971 call!269970))))

(declare-fun bm!269967 () Bool)

(assert (=> bm!269967 (= call!269970 (derivativeStep!3322 (ite c!642981 (regTwo!22227 (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326))))) (ite c!642984 (reg!11186 (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326))))) (regTwo!22226 (ite c!642697 (regTwo!22227 (regOne!22226 r!26326)) (ite c!642700 (reg!11186 (regOne!22226 r!26326)) (regTwo!22226 (regOne!22226 r!26326))))))) c!13576))))

(assert (= (and d!1088736 c!642985) b!3718660))

(assert (= (and d!1088736 (not c!642985)) b!3718656))

(assert (= (and b!3718656 c!642982) b!3718664))

(assert (= (and b!3718656 (not c!642982)) b!3718661))

(assert (= (and b!3718661 c!642981) b!3718665))

(assert (= (and b!3718661 (not c!642981)) b!3718662))

(assert (= (and b!3718662 c!642984) b!3718659))

(assert (= (and b!3718662 (not c!642984)) b!3718658))

(assert (= (and b!3718658 c!642983) b!3718657))

(assert (= (and b!3718658 (not c!642983)) b!3718663))

(assert (= (or b!3718657 b!3718663) bm!269965))

(assert (= (or b!3718659 b!3718657) bm!269966))

(assert (= (or b!3718665 bm!269966) bm!269967))

(assert (= (or b!3718665 bm!269965) bm!269964))

(declare-fun m!4223639 () Bool)

(assert (=> bm!269964 m!4223639))

(declare-fun m!4223641 () Bool)

(assert (=> d!1088736 m!4223641))

(declare-fun m!4223643 () Bool)

(assert (=> d!1088736 m!4223643))

(declare-fun m!4223645 () Bool)

(assert (=> b!3718658 m!4223645))

(declare-fun m!4223647 () Bool)

(assert (=> bm!269967 m!4223647))

(assert (=> bm!269707 d!1088736))

(assert (=> b!3717460 d!1088720))

(assert (=> b!3717460 d!1088698))

(assert (=> b!3717675 d!1088720))

(assert (=> b!3717675 d!1088698))

(assert (=> b!3717230 d!1088612))

(assert (=> b!3717230 d!1088614))

(declare-fun d!1088738 () Bool)

(declare-fun lt!1297657 () Regex!10857)

(assert (=> d!1088738 (validRegex!4964 lt!1297657)))

(declare-fun e!2302367 () Regex!10857)

(assert (=> d!1088738 (= lt!1297657 e!2302367)))

(declare-fun c!642986 () Bool)

(assert (=> d!1088738 (= c!642986 ((_ is Cons!39614) (t!302421 tl!3933)))))

(assert (=> d!1088738 (validRegex!4964 (derivativeStep!3322 (derivativeStep!3322 r!26326 c!13576) (h!45034 tl!3933)))))

(assert (=> d!1088738 (= (derivative!371 (derivativeStep!3322 (derivativeStep!3322 r!26326 c!13576) (h!45034 tl!3933)) (t!302421 tl!3933)) lt!1297657)))

(declare-fun b!3718666 () Bool)

(assert (=> b!3718666 (= e!2302367 (derivative!371 (derivativeStep!3322 (derivativeStep!3322 (derivativeStep!3322 r!26326 c!13576) (h!45034 tl!3933)) (h!45034 (t!302421 tl!3933))) (t!302421 (t!302421 tl!3933))))))

(declare-fun b!3718667 () Bool)

(assert (=> b!3718667 (= e!2302367 (derivativeStep!3322 (derivativeStep!3322 r!26326 c!13576) (h!45034 tl!3933)))))

(assert (= (and d!1088738 c!642986) b!3718666))

(assert (= (and d!1088738 (not c!642986)) b!3718667))

(declare-fun m!4223649 () Bool)

(assert (=> d!1088738 m!4223649))

(assert (=> d!1088738 m!4222751))

(declare-fun m!4223651 () Bool)

(assert (=> d!1088738 m!4223651))

(assert (=> b!3718666 m!4222751))

(declare-fun m!4223653 () Bool)

(assert (=> b!3718666 m!4223653))

(assert (=> b!3718666 m!4223653))

(declare-fun m!4223655 () Bool)

(assert (=> b!3718666 m!4223655))

(assert (=> b!3717347 d!1088738))

(declare-fun b!3718668 () Bool)

(declare-fun e!2302370 () Regex!10857)

(declare-fun e!2302368 () Regex!10857)

(assert (=> b!3718668 (= e!2302370 e!2302368)))

(declare-fun c!642988 () Bool)

(assert (=> b!3718668 (= c!642988 ((_ is ElementMatch!10857) (derivativeStep!3322 r!26326 c!13576)))))

(declare-fun call!269975 () Regex!10857)

(declare-fun c!642987 () Bool)

(declare-fun bm!269968 () Bool)

(assert (=> bm!269968 (= call!269975 (derivativeStep!3322 (ite c!642987 (regOne!22227 (derivativeStep!3322 r!26326 c!13576)) (regOne!22226 (derivativeStep!3322 r!26326 c!13576))) (h!45034 tl!3933)))))

(declare-fun d!1088740 () Bool)

(declare-fun lt!1297658 () Regex!10857)

(assert (=> d!1088740 (validRegex!4964 lt!1297658)))

(assert (=> d!1088740 (= lt!1297658 e!2302370)))

(declare-fun c!642991 () Bool)

(assert (=> d!1088740 (= c!642991 (or ((_ is EmptyExpr!10857) (derivativeStep!3322 r!26326 c!13576)) ((_ is EmptyLang!10857) (derivativeStep!3322 r!26326 c!13576))))))

(assert (=> d!1088740 (validRegex!4964 (derivativeStep!3322 r!26326 c!13576))))

(assert (=> d!1088740 (= (derivativeStep!3322 (derivativeStep!3322 r!26326 c!13576) (h!45034 tl!3933)) lt!1297658)))

(declare-fun bm!269969 () Bool)

(declare-fun call!269973 () Regex!10857)

(assert (=> bm!269969 (= call!269973 call!269975)))

(declare-fun e!2302372 () Regex!10857)

(declare-fun call!269976 () Regex!10857)

(declare-fun b!3718669 () Bool)

(assert (=> b!3718669 (= e!2302372 (Union!10857 (Concat!17128 call!269973 (regTwo!22226 (derivativeStep!3322 r!26326 c!13576))) call!269976))))

(declare-fun bm!269970 () Bool)

(declare-fun call!269974 () Regex!10857)

(assert (=> bm!269970 (= call!269976 call!269974)))

(declare-fun b!3718670 () Bool)

(declare-fun c!642989 () Bool)

(assert (=> b!3718670 (= c!642989 (nullable!3780 (regOne!22226 (derivativeStep!3322 r!26326 c!13576))))))

(declare-fun e!2302369 () Regex!10857)

(assert (=> b!3718670 (= e!2302369 e!2302372)))

(declare-fun b!3718671 () Bool)

(assert (=> b!3718671 (= e!2302369 (Concat!17128 call!269976 (derivativeStep!3322 r!26326 c!13576)))))

(declare-fun b!3718672 () Bool)

(assert (=> b!3718672 (= e!2302370 EmptyLang!10857)))

(declare-fun b!3718673 () Bool)

(assert (=> b!3718673 (= c!642987 ((_ is Union!10857) (derivativeStep!3322 r!26326 c!13576)))))

(declare-fun e!2302371 () Regex!10857)

(assert (=> b!3718673 (= e!2302368 e!2302371)))

(declare-fun b!3718674 () Bool)

(assert (=> b!3718674 (= e!2302371 e!2302369)))

(declare-fun c!642990 () Bool)

(assert (=> b!3718674 (= c!642990 ((_ is Star!10857) (derivativeStep!3322 r!26326 c!13576)))))

(declare-fun b!3718675 () Bool)

(assert (=> b!3718675 (= e!2302372 (Union!10857 (Concat!17128 call!269973 (regTwo!22226 (derivativeStep!3322 r!26326 c!13576))) EmptyLang!10857))))

(declare-fun b!3718676 () Bool)

(assert (=> b!3718676 (= e!2302368 (ite (= (h!45034 tl!3933) (c!642561 (derivativeStep!3322 r!26326 c!13576))) EmptyExpr!10857 EmptyLang!10857))))

(declare-fun b!3718677 () Bool)

(assert (=> b!3718677 (= e!2302371 (Union!10857 call!269975 call!269974))))

(declare-fun bm!269971 () Bool)

(assert (=> bm!269971 (= call!269974 (derivativeStep!3322 (ite c!642987 (regTwo!22227 (derivativeStep!3322 r!26326 c!13576)) (ite c!642990 (reg!11186 (derivativeStep!3322 r!26326 c!13576)) (regTwo!22226 (derivativeStep!3322 r!26326 c!13576)))) (h!45034 tl!3933)))))

(assert (= (and d!1088740 c!642991) b!3718672))

(assert (= (and d!1088740 (not c!642991)) b!3718668))

(assert (= (and b!3718668 c!642988) b!3718676))

(assert (= (and b!3718668 (not c!642988)) b!3718673))

(assert (= (and b!3718673 c!642987) b!3718677))

(assert (= (and b!3718673 (not c!642987)) b!3718674))

(assert (= (and b!3718674 c!642990) b!3718671))

(assert (= (and b!3718674 (not c!642990)) b!3718670))

(assert (= (and b!3718670 c!642989) b!3718669))

(assert (= (and b!3718670 (not c!642989)) b!3718675))

(assert (= (or b!3718669 b!3718675) bm!269969))

(assert (= (or b!3718671 b!3718669) bm!269970))

(assert (= (or b!3718677 bm!269970) bm!269971))

(assert (= (or b!3718677 bm!269969) bm!269968))

(declare-fun m!4223657 () Bool)

(assert (=> bm!269968 m!4223657))

(declare-fun m!4223659 () Bool)

(assert (=> d!1088740 m!4223659))

(assert (=> d!1088740 m!4222623))

(assert (=> d!1088740 m!4222749))

(declare-fun m!4223661 () Bool)

(assert (=> b!3718670 m!4223661))

(declare-fun m!4223663 () Bool)

(assert (=> bm!269971 m!4223663))

(assert (=> b!3717347 d!1088740))

(assert (=> bm!269669 d!1088714))

(assert (=> bm!269712 d!1088604))

(assert (=> b!3717672 d!1088720))

(assert (=> b!3717672 d!1088698))

(assert (=> bm!269713 d!1088714))

(assert (=> b!3717579 d!1088612))

(assert (=> b!3717579 d!1088614))

(declare-fun b!3718680 () Bool)

(declare-fun e!2302373 () Bool)

(declare-fun tp!1131079 () Bool)

(assert (=> b!3718680 (= e!2302373 tp!1131079)))

(assert (=> b!3717693 (= tp!1130928 e!2302373)))

(declare-fun b!3718681 () Bool)

(declare-fun tp!1131078 () Bool)

(declare-fun tp!1131075 () Bool)

(assert (=> b!3718681 (= e!2302373 (and tp!1131078 tp!1131075))))

(declare-fun b!3718679 () Bool)

(declare-fun tp!1131076 () Bool)

(declare-fun tp!1131077 () Bool)

(assert (=> b!3718679 (= e!2302373 (and tp!1131076 tp!1131077))))

(declare-fun b!3718678 () Bool)

(assert (=> b!3718678 (= e!2302373 tp_is_empty!18729)))

(assert (= (and b!3717693 ((_ is ElementMatch!10857) (reg!11186 (reg!11186 r!26326)))) b!3718678))

(assert (= (and b!3717693 ((_ is Concat!17128) (reg!11186 (reg!11186 r!26326)))) b!3718679))

(assert (= (and b!3717693 ((_ is Star!10857) (reg!11186 (reg!11186 r!26326)))) b!3718680))

(assert (= (and b!3717693 ((_ is Union!10857) (reg!11186 (reg!11186 r!26326)))) b!3718681))

(declare-fun b!3718684 () Bool)

(declare-fun e!2302374 () Bool)

(declare-fun tp!1131084 () Bool)

(assert (=> b!3718684 (= e!2302374 tp!1131084)))

(assert (=> b!3717702 (= tp!1130937 e!2302374)))

(declare-fun b!3718685 () Bool)

(declare-fun tp!1131083 () Bool)

(declare-fun tp!1131080 () Bool)

(assert (=> b!3718685 (= e!2302374 (and tp!1131083 tp!1131080))))

(declare-fun b!3718683 () Bool)

(declare-fun tp!1131081 () Bool)

(declare-fun tp!1131082 () Bool)

(assert (=> b!3718683 (= e!2302374 (and tp!1131081 tp!1131082))))

(declare-fun b!3718682 () Bool)

(assert (=> b!3718682 (= e!2302374 tp_is_empty!18729)))

(assert (= (and b!3717702 ((_ is ElementMatch!10857) (regOne!22227 (regTwo!22226 r!26326)))) b!3718682))

(assert (= (and b!3717702 ((_ is Concat!17128) (regOne!22227 (regTwo!22226 r!26326)))) b!3718683))

(assert (= (and b!3717702 ((_ is Star!10857) (regOne!22227 (regTwo!22226 r!26326)))) b!3718684))

(assert (= (and b!3717702 ((_ is Union!10857) (regOne!22227 (regTwo!22226 r!26326)))) b!3718685))

(declare-fun b!3718688 () Bool)

(declare-fun e!2302375 () Bool)

(declare-fun tp!1131089 () Bool)

(assert (=> b!3718688 (= e!2302375 tp!1131089)))

(assert (=> b!3717702 (= tp!1130934 e!2302375)))

(declare-fun b!3718689 () Bool)

(declare-fun tp!1131088 () Bool)

(declare-fun tp!1131085 () Bool)

(assert (=> b!3718689 (= e!2302375 (and tp!1131088 tp!1131085))))

(declare-fun b!3718687 () Bool)

(declare-fun tp!1131086 () Bool)

(declare-fun tp!1131087 () Bool)

(assert (=> b!3718687 (= e!2302375 (and tp!1131086 tp!1131087))))

(declare-fun b!3718686 () Bool)

(assert (=> b!3718686 (= e!2302375 tp_is_empty!18729)))

(assert (= (and b!3717702 ((_ is ElementMatch!10857) (regTwo!22227 (regTwo!22226 r!26326)))) b!3718686))

(assert (= (and b!3717702 ((_ is Concat!17128) (regTwo!22227 (regTwo!22226 r!26326)))) b!3718687))

(assert (= (and b!3717702 ((_ is Star!10857) (regTwo!22227 (regTwo!22226 r!26326)))) b!3718688))

(assert (= (and b!3717702 ((_ is Union!10857) (regTwo!22227 (regTwo!22226 r!26326)))) b!3718689))

(declare-fun b!3718692 () Bool)

(declare-fun e!2302376 () Bool)

(declare-fun tp!1131094 () Bool)

(assert (=> b!3718692 (= e!2302376 tp!1131094)))

(assert (=> b!3717697 (= tp!1130933 e!2302376)))

(declare-fun b!3718693 () Bool)

(declare-fun tp!1131093 () Bool)

(declare-fun tp!1131090 () Bool)

(assert (=> b!3718693 (= e!2302376 (and tp!1131093 tp!1131090))))

(declare-fun b!3718691 () Bool)

(declare-fun tp!1131091 () Bool)

(declare-fun tp!1131092 () Bool)

(assert (=> b!3718691 (= e!2302376 (and tp!1131091 tp!1131092))))

(declare-fun b!3718690 () Bool)

(assert (=> b!3718690 (= e!2302376 tp_is_empty!18729)))

(assert (= (and b!3717697 ((_ is ElementMatch!10857) (reg!11186 (regOne!22226 r!26326)))) b!3718690))

(assert (= (and b!3717697 ((_ is Concat!17128) (reg!11186 (regOne!22226 r!26326)))) b!3718691))

(assert (= (and b!3717697 ((_ is Star!10857) (reg!11186 (regOne!22226 r!26326)))) b!3718692))

(assert (= (and b!3717697 ((_ is Union!10857) (reg!11186 (regOne!22226 r!26326)))) b!3718693))

(declare-fun b!3718696 () Bool)

(declare-fun e!2302377 () Bool)

(declare-fun tp!1131099 () Bool)

(assert (=> b!3718696 (= e!2302377 tp!1131099)))

(assert (=> b!3717706 (= tp!1130942 e!2302377)))

(declare-fun b!3718697 () Bool)

(declare-fun tp!1131098 () Bool)

(declare-fun tp!1131095 () Bool)

(assert (=> b!3718697 (= e!2302377 (and tp!1131098 tp!1131095))))

(declare-fun b!3718695 () Bool)

(declare-fun tp!1131096 () Bool)

(declare-fun tp!1131097 () Bool)

(assert (=> b!3718695 (= e!2302377 (and tp!1131096 tp!1131097))))

(declare-fun b!3718694 () Bool)

(assert (=> b!3718694 (= e!2302377 tp_is_empty!18729)))

(assert (= (and b!3717706 ((_ is ElementMatch!10857) (regOne!22227 (regOne!22227 r!26326)))) b!3718694))

(assert (= (and b!3717706 ((_ is Concat!17128) (regOne!22227 (regOne!22227 r!26326)))) b!3718695))

(assert (= (and b!3717706 ((_ is Star!10857) (regOne!22227 (regOne!22227 r!26326)))) b!3718696))

(assert (= (and b!3717706 ((_ is Union!10857) (regOne!22227 (regOne!22227 r!26326)))) b!3718697))

(declare-fun b!3718700 () Bool)

(declare-fun e!2302378 () Bool)

(declare-fun tp!1131104 () Bool)

(assert (=> b!3718700 (= e!2302378 tp!1131104)))

(assert (=> b!3717706 (= tp!1130939 e!2302378)))

(declare-fun b!3718701 () Bool)

(declare-fun tp!1131103 () Bool)

(declare-fun tp!1131100 () Bool)

(assert (=> b!3718701 (= e!2302378 (and tp!1131103 tp!1131100))))

(declare-fun b!3718699 () Bool)

(declare-fun tp!1131101 () Bool)

(declare-fun tp!1131102 () Bool)

(assert (=> b!3718699 (= e!2302378 (and tp!1131101 tp!1131102))))

(declare-fun b!3718698 () Bool)

(assert (=> b!3718698 (= e!2302378 tp_is_empty!18729)))

(assert (= (and b!3717706 ((_ is ElementMatch!10857) (regTwo!22227 (regOne!22227 r!26326)))) b!3718698))

(assert (= (and b!3717706 ((_ is Concat!17128) (regTwo!22227 (regOne!22227 r!26326)))) b!3718699))

(assert (= (and b!3717706 ((_ is Star!10857) (regTwo!22227 (regOne!22227 r!26326)))) b!3718700))

(assert (= (and b!3717706 ((_ is Union!10857) (regTwo!22227 (regOne!22227 r!26326)))) b!3718701))

(declare-fun b!3718704 () Bool)

(declare-fun e!2302379 () Bool)

(declare-fun tp!1131109 () Bool)

(assert (=> b!3718704 (= e!2302379 tp!1131109)))

(assert (=> b!3717692 (= tp!1130925 e!2302379)))

(declare-fun b!3718705 () Bool)

(declare-fun tp!1131108 () Bool)

(declare-fun tp!1131105 () Bool)

(assert (=> b!3718705 (= e!2302379 (and tp!1131108 tp!1131105))))

(declare-fun b!3718703 () Bool)

(declare-fun tp!1131106 () Bool)

(declare-fun tp!1131107 () Bool)

(assert (=> b!3718703 (= e!2302379 (and tp!1131106 tp!1131107))))

(declare-fun b!3718702 () Bool)

(assert (=> b!3718702 (= e!2302379 tp_is_empty!18729)))

(assert (= (and b!3717692 ((_ is ElementMatch!10857) (regOne!22226 (reg!11186 r!26326)))) b!3718702))

(assert (= (and b!3717692 ((_ is Concat!17128) (regOne!22226 (reg!11186 r!26326)))) b!3718703))

(assert (= (and b!3717692 ((_ is Star!10857) (regOne!22226 (reg!11186 r!26326)))) b!3718704))

(assert (= (and b!3717692 ((_ is Union!10857) (regOne!22226 (reg!11186 r!26326)))) b!3718705))

(declare-fun b!3718708 () Bool)

(declare-fun e!2302380 () Bool)

(declare-fun tp!1131114 () Bool)

(assert (=> b!3718708 (= e!2302380 tp!1131114)))

(assert (=> b!3717692 (= tp!1130926 e!2302380)))

(declare-fun b!3718709 () Bool)

(declare-fun tp!1131113 () Bool)

(declare-fun tp!1131110 () Bool)

(assert (=> b!3718709 (= e!2302380 (and tp!1131113 tp!1131110))))

(declare-fun b!3718707 () Bool)

(declare-fun tp!1131111 () Bool)

(declare-fun tp!1131112 () Bool)

(assert (=> b!3718707 (= e!2302380 (and tp!1131111 tp!1131112))))

(declare-fun b!3718706 () Bool)

(assert (=> b!3718706 (= e!2302380 tp_is_empty!18729)))

(assert (= (and b!3717692 ((_ is ElementMatch!10857) (regTwo!22226 (reg!11186 r!26326)))) b!3718706))

(assert (= (and b!3717692 ((_ is Concat!17128) (regTwo!22226 (reg!11186 r!26326)))) b!3718707))

(assert (= (and b!3717692 ((_ is Star!10857) (regTwo!22226 (reg!11186 r!26326)))) b!3718708))

(assert (= (and b!3717692 ((_ is Union!10857) (regTwo!22226 (reg!11186 r!26326)))) b!3718709))

(declare-fun b!3718712 () Bool)

(declare-fun e!2302381 () Bool)

(declare-fun tp!1131119 () Bool)

(assert (=> b!3718712 (= e!2302381 tp!1131119)))

(assert (=> b!3717694 (= tp!1130927 e!2302381)))

(declare-fun b!3718713 () Bool)

(declare-fun tp!1131118 () Bool)

(declare-fun tp!1131115 () Bool)

(assert (=> b!3718713 (= e!2302381 (and tp!1131118 tp!1131115))))

(declare-fun b!3718711 () Bool)

(declare-fun tp!1131116 () Bool)

(declare-fun tp!1131117 () Bool)

(assert (=> b!3718711 (= e!2302381 (and tp!1131116 tp!1131117))))

(declare-fun b!3718710 () Bool)

(assert (=> b!3718710 (= e!2302381 tp_is_empty!18729)))

(assert (= (and b!3717694 ((_ is ElementMatch!10857) (regOne!22227 (reg!11186 r!26326)))) b!3718710))

(assert (= (and b!3717694 ((_ is Concat!17128) (regOne!22227 (reg!11186 r!26326)))) b!3718711))

(assert (= (and b!3717694 ((_ is Star!10857) (regOne!22227 (reg!11186 r!26326)))) b!3718712))

(assert (= (and b!3717694 ((_ is Union!10857) (regOne!22227 (reg!11186 r!26326)))) b!3718713))

(declare-fun b!3718716 () Bool)

(declare-fun e!2302382 () Bool)

(declare-fun tp!1131124 () Bool)

(assert (=> b!3718716 (= e!2302382 tp!1131124)))

(assert (=> b!3717694 (= tp!1130924 e!2302382)))

(declare-fun b!3718717 () Bool)

(declare-fun tp!1131123 () Bool)

(declare-fun tp!1131120 () Bool)

(assert (=> b!3718717 (= e!2302382 (and tp!1131123 tp!1131120))))

(declare-fun b!3718715 () Bool)

(declare-fun tp!1131121 () Bool)

(declare-fun tp!1131122 () Bool)

(assert (=> b!3718715 (= e!2302382 (and tp!1131121 tp!1131122))))

(declare-fun b!3718714 () Bool)

(assert (=> b!3718714 (= e!2302382 tp_is_empty!18729)))

(assert (= (and b!3717694 ((_ is ElementMatch!10857) (regTwo!22227 (reg!11186 r!26326)))) b!3718714))

(assert (= (and b!3717694 ((_ is Concat!17128) (regTwo!22227 (reg!11186 r!26326)))) b!3718715))

(assert (= (and b!3717694 ((_ is Star!10857) (regTwo!22227 (reg!11186 r!26326)))) b!3718716))

(assert (= (and b!3717694 ((_ is Union!10857) (regTwo!22227 (reg!11186 r!26326)))) b!3718717))

(declare-fun b!3718720 () Bool)

(declare-fun e!2302383 () Bool)

(declare-fun tp!1131129 () Bool)

(assert (=> b!3718720 (= e!2302383 tp!1131129)))

(assert (=> b!3717698 (= tp!1130932 e!2302383)))

(declare-fun b!3718721 () Bool)

(declare-fun tp!1131128 () Bool)

(declare-fun tp!1131125 () Bool)

(assert (=> b!3718721 (= e!2302383 (and tp!1131128 tp!1131125))))

(declare-fun b!3718719 () Bool)

(declare-fun tp!1131126 () Bool)

(declare-fun tp!1131127 () Bool)

(assert (=> b!3718719 (= e!2302383 (and tp!1131126 tp!1131127))))

(declare-fun b!3718718 () Bool)

(assert (=> b!3718718 (= e!2302383 tp_is_empty!18729)))

(assert (= (and b!3717698 ((_ is ElementMatch!10857) (regOne!22227 (regOne!22226 r!26326)))) b!3718718))

(assert (= (and b!3717698 ((_ is Concat!17128) (regOne!22227 (regOne!22226 r!26326)))) b!3718719))

(assert (= (and b!3717698 ((_ is Star!10857) (regOne!22227 (regOne!22226 r!26326)))) b!3718720))

(assert (= (and b!3717698 ((_ is Union!10857) (regOne!22227 (regOne!22226 r!26326)))) b!3718721))

(declare-fun b!3718724 () Bool)

(declare-fun e!2302384 () Bool)

(declare-fun tp!1131134 () Bool)

(assert (=> b!3718724 (= e!2302384 tp!1131134)))

(assert (=> b!3717698 (= tp!1130929 e!2302384)))

(declare-fun b!3718725 () Bool)

(declare-fun tp!1131133 () Bool)

(declare-fun tp!1131130 () Bool)

(assert (=> b!3718725 (= e!2302384 (and tp!1131133 tp!1131130))))

(declare-fun b!3718723 () Bool)

(declare-fun tp!1131131 () Bool)

(declare-fun tp!1131132 () Bool)

(assert (=> b!3718723 (= e!2302384 (and tp!1131131 tp!1131132))))

(declare-fun b!3718722 () Bool)

(assert (=> b!3718722 (= e!2302384 tp_is_empty!18729)))

(assert (= (and b!3717698 ((_ is ElementMatch!10857) (regTwo!22227 (regOne!22226 r!26326)))) b!3718722))

(assert (= (and b!3717698 ((_ is Concat!17128) (regTwo!22227 (regOne!22226 r!26326)))) b!3718723))

(assert (= (and b!3717698 ((_ is Star!10857) (regTwo!22227 (regOne!22226 r!26326)))) b!3718724))

(assert (= (and b!3717698 ((_ is Union!10857) (regTwo!22227 (regOne!22226 r!26326)))) b!3718725))

(declare-fun b!3718728 () Bool)

(declare-fun e!2302385 () Bool)

(declare-fun tp!1131139 () Bool)

(assert (=> b!3718728 (= e!2302385 tp!1131139)))

(assert (=> b!3717709 (= tp!1130948 e!2302385)))

(declare-fun b!3718729 () Bool)

(declare-fun tp!1131138 () Bool)

(declare-fun tp!1131135 () Bool)

(assert (=> b!3718729 (= e!2302385 (and tp!1131138 tp!1131135))))

(declare-fun b!3718727 () Bool)

(declare-fun tp!1131136 () Bool)

(declare-fun tp!1131137 () Bool)

(assert (=> b!3718727 (= e!2302385 (and tp!1131136 tp!1131137))))

(declare-fun b!3718726 () Bool)

(assert (=> b!3718726 (= e!2302385 tp_is_empty!18729)))

(assert (= (and b!3717709 ((_ is ElementMatch!10857) (reg!11186 (regTwo!22227 r!26326)))) b!3718726))

(assert (= (and b!3717709 ((_ is Concat!17128) (reg!11186 (regTwo!22227 r!26326)))) b!3718727))

(assert (= (and b!3717709 ((_ is Star!10857) (reg!11186 (regTwo!22227 r!26326)))) b!3718728))

(assert (= (and b!3717709 ((_ is Union!10857) (reg!11186 (regTwo!22227 r!26326)))) b!3718729))

(declare-fun b!3718732 () Bool)

(declare-fun e!2302386 () Bool)

(declare-fun tp!1131144 () Bool)

(assert (=> b!3718732 (= e!2302386 tp!1131144)))

(assert (=> b!3717704 (= tp!1130940 e!2302386)))

(declare-fun b!3718733 () Bool)

(declare-fun tp!1131143 () Bool)

(declare-fun tp!1131140 () Bool)

(assert (=> b!3718733 (= e!2302386 (and tp!1131143 tp!1131140))))

(declare-fun b!3718731 () Bool)

(declare-fun tp!1131141 () Bool)

(declare-fun tp!1131142 () Bool)

(assert (=> b!3718731 (= e!2302386 (and tp!1131141 tp!1131142))))

(declare-fun b!3718730 () Bool)

(assert (=> b!3718730 (= e!2302386 tp_is_empty!18729)))

(assert (= (and b!3717704 ((_ is ElementMatch!10857) (regOne!22226 (regOne!22227 r!26326)))) b!3718730))

(assert (= (and b!3717704 ((_ is Concat!17128) (regOne!22226 (regOne!22227 r!26326)))) b!3718731))

(assert (= (and b!3717704 ((_ is Star!10857) (regOne!22226 (regOne!22227 r!26326)))) b!3718732))

(assert (= (and b!3717704 ((_ is Union!10857) (regOne!22226 (regOne!22227 r!26326)))) b!3718733))

(declare-fun b!3718736 () Bool)

(declare-fun e!2302387 () Bool)

(declare-fun tp!1131149 () Bool)

(assert (=> b!3718736 (= e!2302387 tp!1131149)))

(assert (=> b!3717704 (= tp!1130941 e!2302387)))

(declare-fun b!3718737 () Bool)

(declare-fun tp!1131148 () Bool)

(declare-fun tp!1131145 () Bool)

(assert (=> b!3718737 (= e!2302387 (and tp!1131148 tp!1131145))))

(declare-fun b!3718735 () Bool)

(declare-fun tp!1131146 () Bool)

(declare-fun tp!1131147 () Bool)

(assert (=> b!3718735 (= e!2302387 (and tp!1131146 tp!1131147))))

(declare-fun b!3718734 () Bool)

(assert (=> b!3718734 (= e!2302387 tp_is_empty!18729)))

(assert (= (and b!3717704 ((_ is ElementMatch!10857) (regTwo!22226 (regOne!22227 r!26326)))) b!3718734))

(assert (= (and b!3717704 ((_ is Concat!17128) (regTwo!22226 (regOne!22227 r!26326)))) b!3718735))

(assert (= (and b!3717704 ((_ is Star!10857) (regTwo!22226 (regOne!22227 r!26326)))) b!3718736))

(assert (= (and b!3717704 ((_ is Union!10857) (regTwo!22226 (regOne!22227 r!26326)))) b!3718737))

(declare-fun b!3718738 () Bool)

(declare-fun e!2302388 () Bool)

(declare-fun tp!1131150 () Bool)

(assert (=> b!3718738 (= e!2302388 (and tp_is_empty!18729 tp!1131150))))

(assert (=> b!3717680 (= tp!1130913 e!2302388)))

(assert (= (and b!3717680 ((_ is Cons!39614) (t!302421 (t!302421 tl!3933)))) b!3718738))

(declare-fun b!3718741 () Bool)

(declare-fun e!2302389 () Bool)

(declare-fun tp!1131155 () Bool)

(assert (=> b!3718741 (= e!2302389 tp!1131155)))

(assert (=> b!3717708 (= tp!1130945 e!2302389)))

(declare-fun b!3718742 () Bool)

(declare-fun tp!1131154 () Bool)

(declare-fun tp!1131151 () Bool)

(assert (=> b!3718742 (= e!2302389 (and tp!1131154 tp!1131151))))

(declare-fun b!3718740 () Bool)

(declare-fun tp!1131152 () Bool)

(declare-fun tp!1131153 () Bool)

(assert (=> b!3718740 (= e!2302389 (and tp!1131152 tp!1131153))))

(declare-fun b!3718739 () Bool)

(assert (=> b!3718739 (= e!2302389 tp_is_empty!18729)))

(assert (= (and b!3717708 ((_ is ElementMatch!10857) (regOne!22226 (regTwo!22227 r!26326)))) b!3718739))

(assert (= (and b!3717708 ((_ is Concat!17128) (regOne!22226 (regTwo!22227 r!26326)))) b!3718740))

(assert (= (and b!3717708 ((_ is Star!10857) (regOne!22226 (regTwo!22227 r!26326)))) b!3718741))

(assert (= (and b!3717708 ((_ is Union!10857) (regOne!22226 (regTwo!22227 r!26326)))) b!3718742))

(declare-fun b!3718745 () Bool)

(declare-fun e!2302390 () Bool)

(declare-fun tp!1131160 () Bool)

(assert (=> b!3718745 (= e!2302390 tp!1131160)))

(assert (=> b!3717708 (= tp!1130946 e!2302390)))

(declare-fun b!3718746 () Bool)

(declare-fun tp!1131159 () Bool)

(declare-fun tp!1131156 () Bool)

(assert (=> b!3718746 (= e!2302390 (and tp!1131159 tp!1131156))))

(declare-fun b!3718744 () Bool)

(declare-fun tp!1131157 () Bool)

(declare-fun tp!1131158 () Bool)

(assert (=> b!3718744 (= e!2302390 (and tp!1131157 tp!1131158))))

(declare-fun b!3718743 () Bool)

(assert (=> b!3718743 (= e!2302390 tp_is_empty!18729)))

(assert (= (and b!3717708 ((_ is ElementMatch!10857) (regTwo!22226 (regTwo!22227 r!26326)))) b!3718743))

(assert (= (and b!3717708 ((_ is Concat!17128) (regTwo!22226 (regTwo!22227 r!26326)))) b!3718744))

(assert (= (and b!3717708 ((_ is Star!10857) (regTwo!22226 (regTwo!22227 r!26326)))) b!3718745))

(assert (= (and b!3717708 ((_ is Union!10857) (regTwo!22226 (regTwo!22227 r!26326)))) b!3718746))

(declare-fun b!3718749 () Bool)

(declare-fun e!2302391 () Bool)

(declare-fun tp!1131165 () Bool)

(assert (=> b!3718749 (= e!2302391 tp!1131165)))

(assert (=> b!3717701 (= tp!1130938 e!2302391)))

(declare-fun b!3718750 () Bool)

(declare-fun tp!1131164 () Bool)

(declare-fun tp!1131161 () Bool)

(assert (=> b!3718750 (= e!2302391 (and tp!1131164 tp!1131161))))

(declare-fun b!3718748 () Bool)

(declare-fun tp!1131162 () Bool)

(declare-fun tp!1131163 () Bool)

(assert (=> b!3718748 (= e!2302391 (and tp!1131162 tp!1131163))))

(declare-fun b!3718747 () Bool)

(assert (=> b!3718747 (= e!2302391 tp_is_empty!18729)))

(assert (= (and b!3717701 ((_ is ElementMatch!10857) (reg!11186 (regTwo!22226 r!26326)))) b!3718747))

(assert (= (and b!3717701 ((_ is Concat!17128) (reg!11186 (regTwo!22226 r!26326)))) b!3718748))

(assert (= (and b!3717701 ((_ is Star!10857) (reg!11186 (regTwo!22226 r!26326)))) b!3718749))

(assert (= (and b!3717701 ((_ is Union!10857) (reg!11186 (regTwo!22226 r!26326)))) b!3718750))

(declare-fun b!3718753 () Bool)

(declare-fun e!2302392 () Bool)

(declare-fun tp!1131170 () Bool)

(assert (=> b!3718753 (= e!2302392 tp!1131170)))

(assert (=> b!3717710 (= tp!1130947 e!2302392)))

(declare-fun b!3718754 () Bool)

(declare-fun tp!1131169 () Bool)

(declare-fun tp!1131166 () Bool)

(assert (=> b!3718754 (= e!2302392 (and tp!1131169 tp!1131166))))

(declare-fun b!3718752 () Bool)

(declare-fun tp!1131167 () Bool)

(declare-fun tp!1131168 () Bool)

(assert (=> b!3718752 (= e!2302392 (and tp!1131167 tp!1131168))))

(declare-fun b!3718751 () Bool)

(assert (=> b!3718751 (= e!2302392 tp_is_empty!18729)))

(assert (= (and b!3717710 ((_ is ElementMatch!10857) (regOne!22227 (regTwo!22227 r!26326)))) b!3718751))

(assert (= (and b!3717710 ((_ is Concat!17128) (regOne!22227 (regTwo!22227 r!26326)))) b!3718752))

(assert (= (and b!3717710 ((_ is Star!10857) (regOne!22227 (regTwo!22227 r!26326)))) b!3718753))

(assert (= (and b!3717710 ((_ is Union!10857) (regOne!22227 (regTwo!22227 r!26326)))) b!3718754))

(declare-fun b!3718757 () Bool)

(declare-fun e!2302393 () Bool)

(declare-fun tp!1131175 () Bool)

(assert (=> b!3718757 (= e!2302393 tp!1131175)))

(assert (=> b!3717710 (= tp!1130944 e!2302393)))

(declare-fun b!3718758 () Bool)

(declare-fun tp!1131174 () Bool)

(declare-fun tp!1131171 () Bool)

(assert (=> b!3718758 (= e!2302393 (and tp!1131174 tp!1131171))))

(declare-fun b!3718756 () Bool)

(declare-fun tp!1131172 () Bool)

(declare-fun tp!1131173 () Bool)

(assert (=> b!3718756 (= e!2302393 (and tp!1131172 tp!1131173))))

(declare-fun b!3718755 () Bool)

(assert (=> b!3718755 (= e!2302393 tp_is_empty!18729)))

(assert (= (and b!3717710 ((_ is ElementMatch!10857) (regTwo!22227 (regTwo!22227 r!26326)))) b!3718755))

(assert (= (and b!3717710 ((_ is Concat!17128) (regTwo!22227 (regTwo!22227 r!26326)))) b!3718756))

(assert (= (and b!3717710 ((_ is Star!10857) (regTwo!22227 (regTwo!22227 r!26326)))) b!3718757))

(assert (= (and b!3717710 ((_ is Union!10857) (regTwo!22227 (regTwo!22227 r!26326)))) b!3718758))

(declare-fun b!3718761 () Bool)

(declare-fun e!2302394 () Bool)

(declare-fun tp!1131180 () Bool)

(assert (=> b!3718761 (= e!2302394 tp!1131180)))

(assert (=> b!3717696 (= tp!1130930 e!2302394)))

(declare-fun b!3718762 () Bool)

(declare-fun tp!1131179 () Bool)

(declare-fun tp!1131176 () Bool)

(assert (=> b!3718762 (= e!2302394 (and tp!1131179 tp!1131176))))

(declare-fun b!3718760 () Bool)

(declare-fun tp!1131177 () Bool)

(declare-fun tp!1131178 () Bool)

(assert (=> b!3718760 (= e!2302394 (and tp!1131177 tp!1131178))))

(declare-fun b!3718759 () Bool)

(assert (=> b!3718759 (= e!2302394 tp_is_empty!18729)))

(assert (= (and b!3717696 ((_ is ElementMatch!10857) (regOne!22226 (regOne!22226 r!26326)))) b!3718759))

(assert (= (and b!3717696 ((_ is Concat!17128) (regOne!22226 (regOne!22226 r!26326)))) b!3718760))

(assert (= (and b!3717696 ((_ is Star!10857) (regOne!22226 (regOne!22226 r!26326)))) b!3718761))

(assert (= (and b!3717696 ((_ is Union!10857) (regOne!22226 (regOne!22226 r!26326)))) b!3718762))

(declare-fun b!3718765 () Bool)

(declare-fun e!2302395 () Bool)

(declare-fun tp!1131185 () Bool)

(assert (=> b!3718765 (= e!2302395 tp!1131185)))

(assert (=> b!3717696 (= tp!1130931 e!2302395)))

(declare-fun b!3718766 () Bool)

(declare-fun tp!1131184 () Bool)

(declare-fun tp!1131181 () Bool)

(assert (=> b!3718766 (= e!2302395 (and tp!1131184 tp!1131181))))

(declare-fun b!3718764 () Bool)

(declare-fun tp!1131182 () Bool)

(declare-fun tp!1131183 () Bool)

(assert (=> b!3718764 (= e!2302395 (and tp!1131182 tp!1131183))))

(declare-fun b!3718763 () Bool)

(assert (=> b!3718763 (= e!2302395 tp_is_empty!18729)))

(assert (= (and b!3717696 ((_ is ElementMatch!10857) (regTwo!22226 (regOne!22226 r!26326)))) b!3718763))

(assert (= (and b!3717696 ((_ is Concat!17128) (regTwo!22226 (regOne!22226 r!26326)))) b!3718764))

(assert (= (and b!3717696 ((_ is Star!10857) (regTwo!22226 (regOne!22226 r!26326)))) b!3718765))

(assert (= (and b!3717696 ((_ is Union!10857) (regTwo!22226 (regOne!22226 r!26326)))) b!3718766))

(declare-fun b!3718769 () Bool)

(declare-fun e!2302396 () Bool)

(declare-fun tp!1131190 () Bool)

(assert (=> b!3718769 (= e!2302396 tp!1131190)))

(assert (=> b!3717705 (= tp!1130943 e!2302396)))

(declare-fun b!3718770 () Bool)

(declare-fun tp!1131189 () Bool)

(declare-fun tp!1131186 () Bool)

(assert (=> b!3718770 (= e!2302396 (and tp!1131189 tp!1131186))))

(declare-fun b!3718768 () Bool)

(declare-fun tp!1131187 () Bool)

(declare-fun tp!1131188 () Bool)

(assert (=> b!3718768 (= e!2302396 (and tp!1131187 tp!1131188))))

(declare-fun b!3718767 () Bool)

(assert (=> b!3718767 (= e!2302396 tp_is_empty!18729)))

(assert (= (and b!3717705 ((_ is ElementMatch!10857) (reg!11186 (regOne!22227 r!26326)))) b!3718767))

(assert (= (and b!3717705 ((_ is Concat!17128) (reg!11186 (regOne!22227 r!26326)))) b!3718768))

(assert (= (and b!3717705 ((_ is Star!10857) (reg!11186 (regOne!22227 r!26326)))) b!3718769))

(assert (= (and b!3717705 ((_ is Union!10857) (reg!11186 (regOne!22227 r!26326)))) b!3718770))

(declare-fun b!3718773 () Bool)

(declare-fun e!2302397 () Bool)

(declare-fun tp!1131195 () Bool)

(assert (=> b!3718773 (= e!2302397 tp!1131195)))

(assert (=> b!3717700 (= tp!1130935 e!2302397)))

(declare-fun b!3718774 () Bool)

(declare-fun tp!1131194 () Bool)

(declare-fun tp!1131191 () Bool)

(assert (=> b!3718774 (= e!2302397 (and tp!1131194 tp!1131191))))

(declare-fun b!3718772 () Bool)

(declare-fun tp!1131192 () Bool)

(declare-fun tp!1131193 () Bool)

(assert (=> b!3718772 (= e!2302397 (and tp!1131192 tp!1131193))))

(declare-fun b!3718771 () Bool)

(assert (=> b!3718771 (= e!2302397 tp_is_empty!18729)))

(assert (= (and b!3717700 ((_ is ElementMatch!10857) (regOne!22226 (regTwo!22226 r!26326)))) b!3718771))

(assert (= (and b!3717700 ((_ is Concat!17128) (regOne!22226 (regTwo!22226 r!26326)))) b!3718772))

(assert (= (and b!3717700 ((_ is Star!10857) (regOne!22226 (regTwo!22226 r!26326)))) b!3718773))

(assert (= (and b!3717700 ((_ is Union!10857) (regOne!22226 (regTwo!22226 r!26326)))) b!3718774))

(declare-fun b!3718777 () Bool)

(declare-fun e!2302398 () Bool)

(declare-fun tp!1131200 () Bool)

(assert (=> b!3718777 (= e!2302398 tp!1131200)))

(assert (=> b!3717700 (= tp!1130936 e!2302398)))

(declare-fun b!3718778 () Bool)

(declare-fun tp!1131199 () Bool)

(declare-fun tp!1131196 () Bool)

(assert (=> b!3718778 (= e!2302398 (and tp!1131199 tp!1131196))))

(declare-fun b!3718776 () Bool)

(declare-fun tp!1131197 () Bool)

(declare-fun tp!1131198 () Bool)

(assert (=> b!3718776 (= e!2302398 (and tp!1131197 tp!1131198))))

(declare-fun b!3718775 () Bool)

(assert (=> b!3718775 (= e!2302398 tp_is_empty!18729)))

(assert (= (and b!3717700 ((_ is ElementMatch!10857) (regTwo!22226 (regTwo!22226 r!26326)))) b!3718775))

(assert (= (and b!3717700 ((_ is Concat!17128) (regTwo!22226 (regTwo!22226 r!26326)))) b!3718776))

(assert (= (and b!3717700 ((_ is Star!10857) (regTwo!22226 (regTwo!22226 r!26326)))) b!3718777))

(assert (= (and b!3717700 ((_ is Union!10857) (regTwo!22226 (regTwo!22226 r!26326)))) b!3718778))

(check-sat (not b!3718449) (not b!3718721) (not b!3718606) (not b!3718597) (not b!3718757) (not b!3718772) (not b!3718414) (not bm!269907) (not bm!269881) (not b!3718774) (not b!3718778) (not b!3718655) (not b!3718249) (not b!3718760) (not bm!269882) (not d!1088738) (not b!3718758) (not b!3718670) (not b!3718776) (not b!3718688) (not b!3718769) (not b!3718337) (not bm!269913) (not b!3718544) (not bm!269958) (not d!1088602) (not bm!269902) (not b!3718753) (not b!3718768) (not b!3718460) (not b!3718481) (not b!3718756) (not b!3718344) (not bm!269866) (not b!3718470) (not bm!269912) (not bm!269901) (not b!3718579) (not d!1088642) (not bm!269947) (not bm!269923) (not bm!269919) (not b!3718630) (not b!3718749) (not bm!269930) (not b!3718585) (not d!1088680) (not bm!269883) (not b!3718719) (not b!3718329) (not b!3718681) (not b!3718469) (not b!3718526) (not bm!269943) (not bm!269867) (not d!1088644) (not b!3718700) (not b!3718473) (not b!3718712) (not b!3718683) (not d!1088672) (not b!3718752) (not d!1088712) (not b!3718491) (not b!3718737) (not b!3718258) (not b!3718695) (not b!3718666) (not bm!269917) (not b!3718345) (not b!3718764) (not bm!269956) (not b!3718415) (not bm!269898) (not bm!269967) (not b!3718582) (not b!3718703) (not b!3718370) (not b!3718733) (not b!3718553) (not b!3718708) (not b!3718704) (not b!3718770) (not b!3718497) (not bm!269924) (not bm!269894) (not b!3718559) (not bm!269922) (not b!3718740) (not bm!269938) (not bm!269968) (not b!3718385) (not b!3718717) (not b!3718725) (not b!3718431) (not d!1088736) (not b!3718761) (not bm!269935) (not d!1088678) (not b!3718728) (not b!3718648) (not bm!269906) (not b!3718713) (not b!3718277) (not bm!269936) (not b!3718342) (not d!1088740) (not b!3718741) (not b!3718738) (not b!3718462) (not b!3718419) (not bm!269888) (not bm!269849) (not bm!269895) (not b!3718330) (not d!1088658) tp_is_empty!18729 (not b!3718684) (not b!3718427) (not b!3718707) (not bm!269911) (not b!3718701) (not bm!269944) (not bm!269874) (not d!1088640) (not b!3718723) (not bm!269939) (not bm!269878) (not bm!269916) (not bm!269918) (not d!1088676) (not bm!269900) (not b!3718355) (not b!3718724) (not b!3718408) (not bm!269873) (not b!3718715) (not d!1088664) (not d!1088732) (not bm!269889) (not bm!269853) (not bm!269854) (not bm!269926) (not b!3718746) (not b!3718735) (not d!1088628) (not bm!269846) (not b!3718564) (not d!1088600) (not d!1088686) (not b!3718696) (not b!3718332) (not d!1088608) (not b!3718457) (not b!3718315) (not b!3718581) (not b!3718639) (not b!3718705) (not b!3718265) (not bm!269952) (not bm!269929) (not bm!269955) (not bm!269877) (not bm!269843) (not bm!269864) (not bm!269886) (not b!3718716) (not b!3718742) (not b!3718736) (not bm!269950) (not d!1088660) (not d!1088666) (not b!3718486) (not d!1088684) (not b!3718390) (not bm!269869) (not bm!269959) (not b!3718745) (not d!1088622) (not b!3718777) (not b!3718680) (not b!3718569) (not bm!269857) (not bm!269847) (not b!3718358) (not bm!269844) (not b!3718335) (not bm!269953) (not b!3718574) (not bm!269858) (not d!1088668) (not b!3718467) (not bm!269962) (not b!3718709) (not bm!269885) (not b!3718494) (not bm!269964) (not bm!269961) (not d!1088638) (not b!3718711) (not bm!269872) (not bm!269942) (not bm!269927) (not b!3718693) (not d!1088734) (not b!3718399) (not b!3718691) (not b!3718731) (not d!1088634) (not b!3718765) (not b!3718484) (not bm!269946) (not d!1088654) (not d!1088662) (not b!3718748) (not d!1088630) (not b!3718750) (not b!3718766) (not bm!269859) (not b!3718744) (not b!3718685) (not b!3718572) (not b!3718366) (not b!3718514) (not d!1088648) (not bm!269852) (not bm!269949) (not b!3718729) (not b!3718658) (not b!3718692) (not d!1088620) (not bm!269871) (not bm!269954) (not b!3718535) (not b!3718493) (not b!3718699) (not b!3718773) (not b!3718727) (not d!1088674) (not b!3718732) (not b!3718720) (not d!1088710) (not b!3718687) (not bm!269932) (not b!3718679) (not bm!269933) (not bm!269908) (not b!3718383) (not b!3718754) (not bm!269903) (not b!3718689) (not bm!269865) (not bm!269891) (not bm!269971) (not b!3718697) (not b!3718762) (not d!1088632))
(check-sat)
