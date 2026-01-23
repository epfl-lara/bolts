; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!245166 () Bool)

(assert start!245166)

(declare-fun b!2514017 () Bool)

(declare-fun res!1062718 () Bool)

(declare-fun e!1592944 () Bool)

(assert (=> b!2514017 (=> (not res!1062718) (not e!1592944))))

(declare-datatypes ((C!15110 0))(
  ( (C!15111 (val!9207 Int)) )
))
(declare-datatypes ((Regex!7476 0))(
  ( (ElementMatch!7476 (c!400630 C!15110)) (Concat!12172 (regOne!15464 Regex!7476) (regTwo!15464 Regex!7476)) (EmptyExpr!7476) (Star!7476 (reg!7805 Regex!7476)) (EmptyLang!7476) (Union!7476 (regOne!15465 Regex!7476) (regTwo!15465 Regex!7476)) )
))
(declare-fun r!27340 () Regex!7476)

(assert (=> b!2514017 (= res!1062718 (and (not (is-EmptyExpr!7476 r!27340)) (not (is-EmptyLang!7476 r!27340)) (not (is-ElementMatch!7476 r!27340)) (not (is-Union!7476 r!27340)) (not (is-Star!7476 r!27340))))))

(declare-fun b!2514018 () Bool)

(declare-fun e!1592948 () Bool)

(declare-fun validRegex!3102 (Regex!7476) Bool)

(assert (=> b!2514018 (= e!1592948 (validRegex!3102 (regTwo!15464 r!27340)))))

(declare-fun res!1062714 () Bool)

(assert (=> start!245166 (=> (not res!1062714) (not e!1592944))))

(assert (=> start!245166 (= res!1062714 (validRegex!3102 r!27340))))

(assert (=> start!245166 e!1592944))

(declare-fun e!1592946 () Bool)

(assert (=> start!245166 e!1592946))

(declare-fun tp_is_empty!12807 () Bool)

(assert (=> start!245166 tp_is_empty!12807))

(declare-fun e!1592947 () Bool)

(assert (=> start!245166 e!1592947))

(declare-fun b!2514019 () Bool)

(declare-fun res!1062712 () Bool)

(assert (=> b!2514019 (=> res!1062712 e!1592948)))

(declare-fun lt!898435 () Regex!7476)

(declare-datatypes ((List!29541 0))(
  ( (Nil!29441) (Cons!29441 (h!34861 C!15110) (t!211240 List!29541)) )
))
(declare-datatypes ((tuple2!29482 0))(
  ( (tuple2!29483 (_1!17283 List!29541) (_2!17283 List!29541)) )
))
(declare-fun lt!898438 () tuple2!29482)

(declare-fun matchR!3475 (Regex!7476 List!29541) Bool)

(assert (=> b!2514019 (= res!1062712 (not (matchR!3475 lt!898435 (_1!17283 lt!898438))))))

(declare-fun b!2514020 () Bool)

(declare-fun e!1592943 () Bool)

(assert (=> b!2514020 (= e!1592944 (not e!1592943))))

(declare-fun res!1062717 () Bool)

(assert (=> b!2514020 (=> res!1062717 e!1592943)))

(declare-fun lt!898434 () Bool)

(assert (=> b!2514020 (= res!1062717 (not lt!898434))))

(declare-fun tl!4068 () List!29541)

(declare-fun derivative!171 (Regex!7476 List!29541) Regex!7476)

(assert (=> b!2514020 (= (derivative!171 EmptyLang!7476 tl!4068) EmptyLang!7476)))

(declare-datatypes ((Unit!43201 0))(
  ( (Unit!43202) )
))
(declare-fun lt!898430 () Unit!43201)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!23 (Regex!7476 List!29541) Unit!43201)

(assert (=> b!2514020 (= lt!898430 (lemmaEmptyLangDerivativeIsAFixPoint!23 EmptyLang!7476 tl!4068))))

(declare-fun e!1592945 () Bool)

(assert (=> b!2514020 e!1592945))

(declare-fun res!1062711 () Bool)

(assert (=> b!2514020 (=> res!1062711 e!1592945)))

(assert (=> b!2514020 (= res!1062711 lt!898434)))

(declare-fun lt!898431 () Regex!7476)

(assert (=> b!2514020 (= lt!898434 (matchR!3475 lt!898431 tl!4068))))

(declare-fun lt!898429 () Unit!43201)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!163 (Regex!7476 Regex!7476 List!29541) Unit!43201)

(assert (=> b!2514020 (= lt!898429 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!163 lt!898431 EmptyLang!7476 tl!4068))))

(declare-fun lt!898437 () Regex!7476)

(assert (=> b!2514020 (= (matchR!3475 lt!898437 tl!4068) (matchR!3475 (derivative!171 lt!898437 tl!4068) Nil!29441))))

(declare-fun lt!898432 () Unit!43201)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!121 (Regex!7476 List!29541) Unit!43201)

(assert (=> b!2514020 (= lt!898432 (lemmaMatchRIsSameAsWholeDerivativeAndNil!121 lt!898437 tl!4068))))

(assert (=> b!2514020 (= lt!898437 (Union!7476 lt!898431 EmptyLang!7476))))

(assert (=> b!2514020 (= lt!898431 (Concat!12172 lt!898435 (regTwo!15464 r!27340)))))

(declare-fun c!14016 () C!15110)

(declare-fun derivativeStep!2045 (Regex!7476 C!15110) Regex!7476)

(assert (=> b!2514020 (= lt!898435 (derivativeStep!2045 (regOne!15464 r!27340) c!14016))))

(declare-fun b!2514021 () Bool)

(assert (=> b!2514021 (= e!1592946 tp_is_empty!12807)))

(declare-fun b!2514022 () Bool)

(assert (=> b!2514022 (= e!1592945 (matchR!3475 EmptyLang!7476 tl!4068))))

(declare-fun b!2514023 () Bool)

(declare-fun res!1062713 () Bool)

(assert (=> b!2514023 (=> (not res!1062713) (not e!1592944))))

(declare-fun nullable!2393 (Regex!7476) Bool)

(assert (=> b!2514023 (= res!1062713 (nullable!2393 (derivative!171 (derivativeStep!2045 r!27340 c!14016) tl!4068)))))

(declare-fun b!2514024 () Bool)

(declare-fun tp!803677 () Bool)

(assert (=> b!2514024 (= e!1592947 (and tp_is_empty!12807 tp!803677))))

(declare-fun b!2514025 () Bool)

(declare-fun tp!803678 () Bool)

(declare-fun tp!803676 () Bool)

(assert (=> b!2514025 (= e!1592946 (and tp!803678 tp!803676))))

(declare-fun b!2514026 () Bool)

(assert (=> b!2514026 (= e!1592943 e!1592948)))

(declare-fun res!1062715 () Bool)

(assert (=> b!2514026 (=> res!1062715 e!1592948)))

(declare-fun ++!7210 (List!29541 List!29541) List!29541)

(assert (=> b!2514026 (= res!1062715 (not (= (++!7210 (_1!17283 lt!898438) (_2!17283 lt!898438)) tl!4068)))))

(declare-datatypes ((Option!5861 0))(
  ( (None!5860) (Some!5860 (v!31791 tuple2!29482)) )
))
(declare-fun lt!898436 () Option!5861)

(declare-fun get!9178 (Option!5861) tuple2!29482)

(assert (=> b!2514026 (= lt!898438 (get!9178 lt!898436))))

(declare-fun isDefined!4683 (Option!5861) Bool)

(assert (=> b!2514026 (isDefined!4683 lt!898436)))

(declare-fun findConcatSeparation!883 (Regex!7476 Regex!7476 List!29541 List!29541 List!29541) Option!5861)

(assert (=> b!2514026 (= lt!898436 (findConcatSeparation!883 lt!898435 (regTwo!15464 r!27340) Nil!29441 tl!4068 tl!4068))))

(declare-fun lt!898433 () Unit!43201)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!165 (Regex!7476 Regex!7476 List!29541) Unit!43201)

(assert (=> b!2514026 (= lt!898433 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!165 lt!898435 (regTwo!15464 r!27340) tl!4068))))

(declare-fun b!2514027 () Bool)

(declare-fun tp!803675 () Bool)

(assert (=> b!2514027 (= e!1592946 tp!803675)))

(declare-fun b!2514028 () Bool)

(declare-fun res!1062716 () Bool)

(assert (=> b!2514028 (=> (not res!1062716) (not e!1592944))))

(assert (=> b!2514028 (= res!1062716 (not (nullable!2393 (regOne!15464 r!27340))))))

(declare-fun b!2514029 () Bool)

(declare-fun tp!803680 () Bool)

(declare-fun tp!803679 () Bool)

(assert (=> b!2514029 (= e!1592946 (and tp!803680 tp!803679))))

(assert (= (and start!245166 res!1062714) b!2514023))

(assert (= (and b!2514023 res!1062713) b!2514017))

(assert (= (and b!2514017 res!1062718) b!2514028))

(assert (= (and b!2514028 res!1062716) b!2514020))

(assert (= (and b!2514020 (not res!1062711)) b!2514022))

(assert (= (and b!2514020 (not res!1062717)) b!2514026))

(assert (= (and b!2514026 (not res!1062715)) b!2514019))

(assert (= (and b!2514019 (not res!1062712)) b!2514018))

(assert (= (and start!245166 (is-ElementMatch!7476 r!27340)) b!2514021))

(assert (= (and start!245166 (is-Concat!12172 r!27340)) b!2514029))

(assert (= (and start!245166 (is-Star!7476 r!27340)) b!2514027))

(assert (= (and start!245166 (is-Union!7476 r!27340)) b!2514025))

(assert (= (and start!245166 (is-Cons!29441 tl!4068)) b!2514024))

(declare-fun m!2871665 () Bool)

(assert (=> b!2514026 m!2871665))

(declare-fun m!2871667 () Bool)

(assert (=> b!2514026 m!2871667))

(declare-fun m!2871669 () Bool)

(assert (=> b!2514026 m!2871669))

(declare-fun m!2871671 () Bool)

(assert (=> b!2514026 m!2871671))

(declare-fun m!2871673 () Bool)

(assert (=> b!2514026 m!2871673))

(declare-fun m!2871675 () Bool)

(assert (=> start!245166 m!2871675))

(declare-fun m!2871677 () Bool)

(assert (=> b!2514023 m!2871677))

(assert (=> b!2514023 m!2871677))

(declare-fun m!2871679 () Bool)

(assert (=> b!2514023 m!2871679))

(assert (=> b!2514023 m!2871679))

(declare-fun m!2871681 () Bool)

(assert (=> b!2514023 m!2871681))

(declare-fun m!2871683 () Bool)

(assert (=> b!2514020 m!2871683))

(declare-fun m!2871685 () Bool)

(assert (=> b!2514020 m!2871685))

(declare-fun m!2871687 () Bool)

(assert (=> b!2514020 m!2871687))

(declare-fun m!2871689 () Bool)

(assert (=> b!2514020 m!2871689))

(declare-fun m!2871691 () Bool)

(assert (=> b!2514020 m!2871691))

(declare-fun m!2871693 () Bool)

(assert (=> b!2514020 m!2871693))

(assert (=> b!2514020 m!2871685))

(declare-fun m!2871695 () Bool)

(assert (=> b!2514020 m!2871695))

(declare-fun m!2871697 () Bool)

(assert (=> b!2514020 m!2871697))

(declare-fun m!2871699 () Bool)

(assert (=> b!2514020 m!2871699))

(declare-fun m!2871701 () Bool)

(assert (=> b!2514019 m!2871701))

(declare-fun m!2871703 () Bool)

(assert (=> b!2514028 m!2871703))

(declare-fun m!2871705 () Bool)

(assert (=> b!2514022 m!2871705))

(declare-fun m!2871707 () Bool)

(assert (=> b!2514018 m!2871707))

(push 1)

(assert (not b!2514026))

(assert (not b!2514025))

(assert tp_is_empty!12807)

(assert (not b!2514018))

(assert (not b!2514023))

(assert (not b!2514019))

(assert (not b!2514029))

(assert (not b!2514027))

(assert (not b!2514028))

(assert (not start!245166))

(assert (not b!2514020))

(assert (not b!2514024))

(assert (not b!2514022))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2514125 () Bool)

(declare-fun e!1592999 () Bool)

(declare-fun head!5741 (List!29541) C!15110)

(assert (=> b!2514125 (= e!1592999 (not (= (head!5741 (_1!17283 lt!898438)) (c!400630 lt!898435))))))

(declare-fun b!2514126 () Bool)

(declare-fun res!1062782 () Bool)

(declare-fun e!1593001 () Bool)

(assert (=> b!2514126 (=> (not res!1062782) (not e!1593001))))

(declare-fun call!156128 () Bool)

(assert (=> b!2514126 (= res!1062782 (not call!156128))))

(declare-fun b!2514127 () Bool)

(declare-fun res!1062780 () Bool)

(assert (=> b!2514127 (=> res!1062780 e!1592999)))

(declare-fun isEmpty!16907 (List!29541) Bool)

(declare-fun tail!4018 (List!29541) List!29541)

(assert (=> b!2514127 (= res!1062780 (not (isEmpty!16907 (tail!4018 (_1!17283 lt!898438)))))))

(declare-fun b!2514128 () Bool)

(assert (=> b!2514128 (= e!1593001 (= (head!5741 (_1!17283 lt!898438)) (c!400630 lt!898435)))))

(declare-fun b!2514129 () Bool)

(declare-fun e!1593000 () Bool)

(declare-fun e!1592997 () Bool)

(assert (=> b!2514129 (= e!1593000 e!1592997)))

(declare-fun res!1062775 () Bool)

(assert (=> b!2514129 (=> (not res!1062775) (not e!1592997))))

(declare-fun lt!898473 () Bool)

(assert (=> b!2514129 (= res!1062775 (not lt!898473))))

(declare-fun b!2514130 () Bool)

(declare-fun res!1062776 () Bool)

(assert (=> b!2514130 (=> (not res!1062776) (not e!1593001))))

(assert (=> b!2514130 (= res!1062776 (isEmpty!16907 (tail!4018 (_1!17283 lt!898438))))))

(declare-fun b!2514132 () Bool)

(declare-fun e!1592995 () Bool)

(declare-fun e!1592996 () Bool)

(assert (=> b!2514132 (= e!1592995 e!1592996)))

(declare-fun c!400644 () Bool)

(assert (=> b!2514132 (= c!400644 (is-EmptyLang!7476 lt!898435))))

(declare-fun b!2514133 () Bool)

(declare-fun e!1592998 () Bool)

(assert (=> b!2514133 (= e!1592998 (matchR!3475 (derivativeStep!2045 lt!898435 (head!5741 (_1!17283 lt!898438))) (tail!4018 (_1!17283 lt!898438))))))

(declare-fun b!2514134 () Bool)

(assert (=> b!2514134 (= e!1592997 e!1592999)))

(declare-fun res!1062777 () Bool)

(assert (=> b!2514134 (=> res!1062777 e!1592999)))

(assert (=> b!2514134 (= res!1062777 call!156128)))

(declare-fun b!2514135 () Bool)

(assert (=> b!2514135 (= e!1592995 (= lt!898473 call!156128))))

(declare-fun b!2514136 () Bool)

(declare-fun res!1062778 () Bool)

(assert (=> b!2514136 (=> res!1062778 e!1593000)))

(assert (=> b!2514136 (= res!1062778 (not (is-ElementMatch!7476 lt!898435)))))

(assert (=> b!2514136 (= e!1592996 e!1593000)))

(declare-fun b!2514137 () Bool)

(assert (=> b!2514137 (= e!1592998 (nullable!2393 lt!898435))))

(declare-fun b!2514138 () Bool)

(declare-fun res!1062779 () Bool)

(assert (=> b!2514138 (=> res!1062779 e!1593000)))

(assert (=> b!2514138 (= res!1062779 e!1593001)))

(declare-fun res!1062781 () Bool)

(assert (=> b!2514138 (=> (not res!1062781) (not e!1593001))))

(assert (=> b!2514138 (= res!1062781 lt!898473)))

(declare-fun bm!156123 () Bool)

(assert (=> bm!156123 (= call!156128 (isEmpty!16907 (_1!17283 lt!898438)))))

(declare-fun b!2514131 () Bool)

(assert (=> b!2514131 (= e!1592996 (not lt!898473))))

(declare-fun d!717092 () Bool)

(assert (=> d!717092 e!1592995))

(declare-fun c!400645 () Bool)

(assert (=> d!717092 (= c!400645 (is-EmptyExpr!7476 lt!898435))))

(assert (=> d!717092 (= lt!898473 e!1592998)))

(declare-fun c!400646 () Bool)

(assert (=> d!717092 (= c!400646 (isEmpty!16907 (_1!17283 lt!898438)))))

(assert (=> d!717092 (validRegex!3102 lt!898435)))

(assert (=> d!717092 (= (matchR!3475 lt!898435 (_1!17283 lt!898438)) lt!898473)))

(assert (= (and d!717092 c!400646) b!2514137))

(assert (= (and d!717092 (not c!400646)) b!2514133))

(assert (= (and d!717092 c!400645) b!2514135))

(assert (= (and d!717092 (not c!400645)) b!2514132))

(assert (= (and b!2514132 c!400644) b!2514131))

(assert (= (and b!2514132 (not c!400644)) b!2514136))

(assert (= (and b!2514136 (not res!1062778)) b!2514138))

(assert (= (and b!2514138 res!1062781) b!2514126))

(assert (= (and b!2514126 res!1062782) b!2514130))

(assert (= (and b!2514130 res!1062776) b!2514128))

(assert (= (and b!2514138 (not res!1062779)) b!2514129))

(assert (= (and b!2514129 res!1062775) b!2514134))

(assert (= (and b!2514134 (not res!1062777)) b!2514127))

(assert (= (and b!2514127 (not res!1062780)) b!2514125))

(assert (= (or b!2514135 b!2514126 b!2514134) bm!156123))

(declare-fun m!2871753 () Bool)

(assert (=> d!717092 m!2871753))

(declare-fun m!2871755 () Bool)

(assert (=> d!717092 m!2871755))

(declare-fun m!2871757 () Bool)

(assert (=> b!2514137 m!2871757))

(assert (=> bm!156123 m!2871753))

(declare-fun m!2871759 () Bool)

(assert (=> b!2514130 m!2871759))

(assert (=> b!2514130 m!2871759))

(declare-fun m!2871761 () Bool)

(assert (=> b!2514130 m!2871761))

(assert (=> b!2514127 m!2871759))

(assert (=> b!2514127 m!2871759))

(assert (=> b!2514127 m!2871761))

(declare-fun m!2871763 () Bool)

(assert (=> b!2514125 m!2871763))

(assert (=> b!2514133 m!2871763))

(assert (=> b!2514133 m!2871763))

(declare-fun m!2871765 () Bool)

(assert (=> b!2514133 m!2871765))

(assert (=> b!2514133 m!2871759))

(assert (=> b!2514133 m!2871765))

(assert (=> b!2514133 m!2871759))

(declare-fun m!2871767 () Bool)

(assert (=> b!2514133 m!2871767))

(assert (=> b!2514128 m!2871763))

(assert (=> b!2514019 d!717092))

(declare-fun d!717096 () Bool)

(declare-fun res!1062809 () Bool)

(declare-fun e!1593030 () Bool)

(assert (=> d!717096 (=> res!1062809 e!1593030)))

(assert (=> d!717096 (= res!1062809 (is-ElementMatch!7476 r!27340))))

(assert (=> d!717096 (= (validRegex!3102 r!27340) e!1593030)))

(declare-fun b!2514185 () Bool)

(declare-fun res!1062813 () Bool)

(declare-fun e!1593032 () Bool)

(assert (=> b!2514185 (=> res!1062813 e!1593032)))

(assert (=> b!2514185 (= res!1062813 (not (is-Concat!12172 r!27340)))))

(declare-fun e!1593031 () Bool)

(assert (=> b!2514185 (= e!1593031 e!1593032)))

(declare-fun b!2514186 () Bool)

(declare-fun e!1593033 () Bool)

(declare-fun call!156138 () Bool)

(assert (=> b!2514186 (= e!1593033 call!156138)))

(declare-fun b!2514187 () Bool)

(declare-fun e!1593036 () Bool)

(declare-fun e!1593035 () Bool)

(assert (=> b!2514187 (= e!1593036 e!1593035)))

(declare-fun res!1062811 () Bool)

(assert (=> b!2514187 (= res!1062811 (not (nullable!2393 (reg!7805 r!27340))))))

(assert (=> b!2514187 (=> (not res!1062811) (not e!1593035))))

(declare-fun bm!156132 () Bool)

(declare-fun call!156137 () Bool)

(assert (=> bm!156132 (= call!156138 call!156137)))

(declare-fun b!2514188 () Bool)

(assert (=> b!2514188 (= e!1593035 call!156137)))

(declare-fun bm!156133 () Bool)

(declare-fun c!400657 () Bool)

(declare-fun c!400658 () Bool)

(assert (=> bm!156133 (= call!156137 (validRegex!3102 (ite c!400658 (reg!7805 r!27340) (ite c!400657 (regTwo!15465 r!27340) (regOne!15464 r!27340)))))))

(declare-fun bm!156134 () Bool)

(declare-fun call!156139 () Bool)

(assert (=> bm!156134 (= call!156139 (validRegex!3102 (ite c!400657 (regOne!15465 r!27340) (regTwo!15464 r!27340))))))

(declare-fun b!2514189 () Bool)

(assert (=> b!2514189 (= e!1593036 e!1593031)))

(assert (=> b!2514189 (= c!400657 (is-Union!7476 r!27340))))

(declare-fun b!2514190 () Bool)

(declare-fun e!1593034 () Bool)

(assert (=> b!2514190 (= e!1593034 call!156139)))

(declare-fun b!2514191 () Bool)

(assert (=> b!2514191 (= e!1593030 e!1593036)))

(assert (=> b!2514191 (= c!400658 (is-Star!7476 r!27340))))

(declare-fun b!2514192 () Bool)

(assert (=> b!2514192 (= e!1593032 e!1593034)))

(declare-fun res!1062812 () Bool)

(assert (=> b!2514192 (=> (not res!1062812) (not e!1593034))))

(assert (=> b!2514192 (= res!1062812 call!156138)))

(declare-fun b!2514193 () Bool)

(declare-fun res!1062810 () Bool)

(assert (=> b!2514193 (=> (not res!1062810) (not e!1593033))))

(assert (=> b!2514193 (= res!1062810 call!156139)))

(assert (=> b!2514193 (= e!1593031 e!1593033)))

(assert (= (and d!717096 (not res!1062809)) b!2514191))

(assert (= (and b!2514191 c!400658) b!2514187))

(assert (= (and b!2514191 (not c!400658)) b!2514189))

(assert (= (and b!2514187 res!1062811) b!2514188))

(assert (= (and b!2514189 c!400657) b!2514193))

(assert (= (and b!2514189 (not c!400657)) b!2514185))

(assert (= (and b!2514193 res!1062810) b!2514186))

(assert (= (and b!2514185 (not res!1062813)) b!2514192))

(assert (= (and b!2514192 res!1062812) b!2514190))

(assert (= (or b!2514193 b!2514190) bm!156134))

(assert (= (or b!2514186 b!2514192) bm!156132))

(assert (= (or b!2514188 bm!156132) bm!156133))

(declare-fun m!2871801 () Bool)

(assert (=> b!2514187 m!2871801))

(declare-fun m!2871803 () Bool)

(assert (=> bm!156133 m!2871803))

(declare-fun m!2871805 () Bool)

(assert (=> bm!156134 m!2871805))

(assert (=> start!245166 d!717096))

(declare-fun d!717102 () Bool)

(declare-fun lt!898478 () Regex!7476)

(assert (=> d!717102 (validRegex!3102 lt!898478)))

(declare-fun e!1593053 () Regex!7476)

(assert (=> d!717102 (= lt!898478 e!1593053)))

(declare-fun c!400665 () Bool)

(assert (=> d!717102 (= c!400665 (is-Cons!29441 tl!4068))))

(assert (=> d!717102 (validRegex!3102 lt!898437)))

(assert (=> d!717102 (= (derivative!171 lt!898437 tl!4068) lt!898478)))

(declare-fun b!2514216 () Bool)

(assert (=> b!2514216 (= e!1593053 (derivative!171 (derivativeStep!2045 lt!898437 (h!34861 tl!4068)) (t!211240 tl!4068)))))

(declare-fun b!2514217 () Bool)

(assert (=> b!2514217 (= e!1593053 lt!898437)))

(assert (= (and d!717102 c!400665) b!2514216))

(assert (= (and d!717102 (not c!400665)) b!2514217))

(declare-fun m!2871807 () Bool)

(assert (=> d!717102 m!2871807))

(declare-fun m!2871809 () Bool)

(assert (=> d!717102 m!2871809))

(declare-fun m!2871811 () Bool)

(assert (=> b!2514216 m!2871811))

(assert (=> b!2514216 m!2871811))

(declare-fun m!2871813 () Bool)

(assert (=> b!2514216 m!2871813))

(assert (=> b!2514020 d!717102))

(declare-fun bm!156158 () Bool)

(declare-fun call!156165 () Regex!7476)

(declare-fun c!400691 () Bool)

(declare-fun c!400692 () Bool)

(assert (=> bm!156158 (= call!156165 (derivativeStep!2045 (ite c!400691 (regTwo!15465 (regOne!15464 r!27340)) (ite c!400692 (reg!7805 (regOne!15464 r!27340)) (regOne!15464 (regOne!15464 r!27340)))) c!14016))))

(declare-fun bm!156159 () Bool)

(declare-fun call!156168 () Regex!7476)

(assert (=> bm!156159 (= call!156168 (derivativeStep!2045 (ite c!400691 (regOne!15465 (regOne!15464 r!27340)) (regTwo!15464 (regOne!15464 r!27340))) c!14016))))

(declare-fun b!2514267 () Bool)

(declare-fun e!1593085 () Regex!7476)

(assert (=> b!2514267 (= e!1593085 (Union!7476 call!156168 call!156165))))

(declare-fun b!2514268 () Bool)

(assert (=> b!2514268 (= c!400691 (is-Union!7476 (regOne!15464 r!27340)))))

(declare-fun e!1593083 () Regex!7476)

(assert (=> b!2514268 (= e!1593083 e!1593085)))

(declare-fun b!2514269 () Bool)

(assert (=> b!2514269 (= e!1593083 (ite (= c!14016 (c!400630 (regOne!15464 r!27340))) EmptyExpr!7476 EmptyLang!7476))))

(declare-fun bm!156160 () Bool)

(declare-fun call!156167 () Regex!7476)

(assert (=> bm!156160 (= call!156167 call!156165)))

(declare-fun b!2514270 () Bool)

(declare-fun e!1593084 () Regex!7476)

(assert (=> b!2514270 (= e!1593084 EmptyLang!7476)))

(declare-fun b!2514271 () Bool)

(declare-fun e!1593081 () Regex!7476)

(declare-fun call!156166 () Regex!7476)

(assert (=> b!2514271 (= e!1593081 (Union!7476 (Concat!12172 call!156166 (regTwo!15464 (regOne!15464 r!27340))) EmptyLang!7476))))

(declare-fun b!2514272 () Bool)

(assert (=> b!2514272 (= e!1593081 (Union!7476 (Concat!12172 call!156166 (regTwo!15464 (regOne!15464 r!27340))) call!156168))))

(declare-fun b!2514273 () Bool)

(declare-fun c!400688 () Bool)

(assert (=> b!2514273 (= c!400688 (nullable!2393 (regOne!15464 (regOne!15464 r!27340))))))

(declare-fun e!1593082 () Regex!7476)

(assert (=> b!2514273 (= e!1593082 e!1593081)))

(declare-fun b!2514274 () Bool)

(assert (=> b!2514274 (= e!1593085 e!1593082)))

(assert (=> b!2514274 (= c!400692 (is-Star!7476 (regOne!15464 r!27340)))))

(declare-fun bm!156161 () Bool)

(assert (=> bm!156161 (= call!156166 call!156167)))

(declare-fun b!2514275 () Bool)

(assert (=> b!2514275 (= e!1593084 e!1593083)))

(declare-fun c!400690 () Bool)

(assert (=> b!2514275 (= c!400690 (is-ElementMatch!7476 (regOne!15464 r!27340)))))

(declare-fun b!2514276 () Bool)

(assert (=> b!2514276 (= e!1593082 (Concat!12172 call!156167 (regOne!15464 r!27340)))))

(declare-fun d!717104 () Bool)

(declare-fun lt!898483 () Regex!7476)

(assert (=> d!717104 (validRegex!3102 lt!898483)))

(assert (=> d!717104 (= lt!898483 e!1593084)))

(declare-fun c!400689 () Bool)

(assert (=> d!717104 (= c!400689 (or (is-EmptyExpr!7476 (regOne!15464 r!27340)) (is-EmptyLang!7476 (regOne!15464 r!27340))))))

(assert (=> d!717104 (validRegex!3102 (regOne!15464 r!27340))))

(assert (=> d!717104 (= (derivativeStep!2045 (regOne!15464 r!27340) c!14016) lt!898483)))

(assert (= (and d!717104 c!400689) b!2514270))

(assert (= (and d!717104 (not c!400689)) b!2514275))

(assert (= (and b!2514275 c!400690) b!2514269))

(assert (= (and b!2514275 (not c!400690)) b!2514268))

(assert (= (and b!2514268 c!400691) b!2514267))

(assert (= (and b!2514268 (not c!400691)) b!2514274))

(assert (= (and b!2514274 c!400692) b!2514276))

(assert (= (and b!2514274 (not c!400692)) b!2514273))

(assert (= (and b!2514273 c!400688) b!2514272))

(assert (= (and b!2514273 (not c!400688)) b!2514271))

(assert (= (or b!2514272 b!2514271) bm!156161))

(assert (= (or b!2514276 bm!156161) bm!156160))

(assert (= (or b!2514267 bm!156160) bm!156158))

(assert (= (or b!2514267 b!2514272) bm!156159))

(declare-fun m!2871821 () Bool)

(assert (=> bm!156158 m!2871821))

(declare-fun m!2871823 () Bool)

(assert (=> bm!156159 m!2871823))

(declare-fun m!2871825 () Bool)

(assert (=> b!2514273 m!2871825))

(declare-fun m!2871827 () Bool)

(assert (=> d!717104 m!2871827))

(declare-fun m!2871829 () Bool)

(assert (=> d!717104 m!2871829))

(assert (=> b!2514020 d!717104))

(declare-fun d!717108 () Bool)

(declare-fun lt!898484 () Regex!7476)

(assert (=> d!717108 (validRegex!3102 lt!898484)))

(declare-fun e!1593086 () Regex!7476)

(assert (=> d!717108 (= lt!898484 e!1593086)))

(declare-fun c!400693 () Bool)

(assert (=> d!717108 (= c!400693 (is-Cons!29441 tl!4068))))

(assert (=> d!717108 (validRegex!3102 EmptyLang!7476)))

(assert (=> d!717108 (= (derivative!171 EmptyLang!7476 tl!4068) lt!898484)))

(declare-fun b!2514277 () Bool)

(assert (=> b!2514277 (= e!1593086 (derivative!171 (derivativeStep!2045 EmptyLang!7476 (h!34861 tl!4068)) (t!211240 tl!4068)))))

(declare-fun b!2514278 () Bool)

(assert (=> b!2514278 (= e!1593086 EmptyLang!7476)))

(assert (= (and d!717108 c!400693) b!2514277))

(assert (= (and d!717108 (not c!400693)) b!2514278))

(declare-fun m!2871831 () Bool)

(assert (=> d!717108 m!2871831))

(declare-fun m!2871833 () Bool)

(assert (=> d!717108 m!2871833))

(declare-fun m!2871835 () Bool)

(assert (=> b!2514277 m!2871835))

(assert (=> b!2514277 m!2871835))

(declare-fun m!2871837 () Bool)

(assert (=> b!2514277 m!2871837))

(assert (=> b!2514020 d!717108))

(declare-fun b!2514279 () Bool)

(declare-fun e!1593091 () Bool)

(assert (=> b!2514279 (= e!1593091 (not (= (head!5741 Nil!29441) (c!400630 (derivative!171 lt!898437 tl!4068)))))))

(declare-fun b!2514280 () Bool)

(declare-fun res!1062836 () Bool)

(declare-fun e!1593093 () Bool)

(assert (=> b!2514280 (=> (not res!1062836) (not e!1593093))))

(declare-fun call!156169 () Bool)

(assert (=> b!2514280 (= res!1062836 (not call!156169))))

(declare-fun b!2514281 () Bool)

(declare-fun res!1062834 () Bool)

(assert (=> b!2514281 (=> res!1062834 e!1593091)))

(assert (=> b!2514281 (= res!1062834 (not (isEmpty!16907 (tail!4018 Nil!29441))))))

(declare-fun b!2514282 () Bool)

(assert (=> b!2514282 (= e!1593093 (= (head!5741 Nil!29441) (c!400630 (derivative!171 lt!898437 tl!4068))))))

(declare-fun b!2514283 () Bool)

(declare-fun e!1593092 () Bool)

(declare-fun e!1593089 () Bool)

(assert (=> b!2514283 (= e!1593092 e!1593089)))

(declare-fun res!1062829 () Bool)

(assert (=> b!2514283 (=> (not res!1062829) (not e!1593089))))

(declare-fun lt!898485 () Bool)

(assert (=> b!2514283 (= res!1062829 (not lt!898485))))

(declare-fun b!2514284 () Bool)

(declare-fun res!1062830 () Bool)

(assert (=> b!2514284 (=> (not res!1062830) (not e!1593093))))

(assert (=> b!2514284 (= res!1062830 (isEmpty!16907 (tail!4018 Nil!29441)))))

(declare-fun b!2514286 () Bool)

(declare-fun e!1593087 () Bool)

(declare-fun e!1593088 () Bool)

(assert (=> b!2514286 (= e!1593087 e!1593088)))

(declare-fun c!400694 () Bool)

(assert (=> b!2514286 (= c!400694 (is-EmptyLang!7476 (derivative!171 lt!898437 tl!4068)))))

(declare-fun b!2514287 () Bool)

(declare-fun e!1593090 () Bool)

(assert (=> b!2514287 (= e!1593090 (matchR!3475 (derivativeStep!2045 (derivative!171 lt!898437 tl!4068) (head!5741 Nil!29441)) (tail!4018 Nil!29441)))))

(declare-fun b!2514288 () Bool)

(assert (=> b!2514288 (= e!1593089 e!1593091)))

(declare-fun res!1062831 () Bool)

(assert (=> b!2514288 (=> res!1062831 e!1593091)))

(assert (=> b!2514288 (= res!1062831 call!156169)))

(declare-fun b!2514289 () Bool)

(assert (=> b!2514289 (= e!1593087 (= lt!898485 call!156169))))

(declare-fun b!2514290 () Bool)

(declare-fun res!1062832 () Bool)

(assert (=> b!2514290 (=> res!1062832 e!1593092)))

(assert (=> b!2514290 (= res!1062832 (not (is-ElementMatch!7476 (derivative!171 lt!898437 tl!4068))))))

(assert (=> b!2514290 (= e!1593088 e!1593092)))

(declare-fun b!2514291 () Bool)

(assert (=> b!2514291 (= e!1593090 (nullable!2393 (derivative!171 lt!898437 tl!4068)))))

(declare-fun b!2514292 () Bool)

(declare-fun res!1062833 () Bool)

(assert (=> b!2514292 (=> res!1062833 e!1593092)))

(assert (=> b!2514292 (= res!1062833 e!1593093)))

(declare-fun res!1062835 () Bool)

(assert (=> b!2514292 (=> (not res!1062835) (not e!1593093))))

(assert (=> b!2514292 (= res!1062835 lt!898485)))

(declare-fun bm!156164 () Bool)

(assert (=> bm!156164 (= call!156169 (isEmpty!16907 Nil!29441))))

(declare-fun b!2514285 () Bool)

(assert (=> b!2514285 (= e!1593088 (not lt!898485))))

(declare-fun d!717110 () Bool)

(assert (=> d!717110 e!1593087))

(declare-fun c!400695 () Bool)

(assert (=> d!717110 (= c!400695 (is-EmptyExpr!7476 (derivative!171 lt!898437 tl!4068)))))

(assert (=> d!717110 (= lt!898485 e!1593090)))

(declare-fun c!400696 () Bool)

(assert (=> d!717110 (= c!400696 (isEmpty!16907 Nil!29441))))

(assert (=> d!717110 (validRegex!3102 (derivative!171 lt!898437 tl!4068))))

(assert (=> d!717110 (= (matchR!3475 (derivative!171 lt!898437 tl!4068) Nil!29441) lt!898485)))

(assert (= (and d!717110 c!400696) b!2514291))

(assert (= (and d!717110 (not c!400696)) b!2514287))

(assert (= (and d!717110 c!400695) b!2514289))

(assert (= (and d!717110 (not c!400695)) b!2514286))

(assert (= (and b!2514286 c!400694) b!2514285))

(assert (= (and b!2514286 (not c!400694)) b!2514290))

(assert (= (and b!2514290 (not res!1062832)) b!2514292))

(assert (= (and b!2514292 res!1062835) b!2514280))

(assert (= (and b!2514280 res!1062836) b!2514284))

(assert (= (and b!2514284 res!1062830) b!2514282))

(assert (= (and b!2514292 (not res!1062833)) b!2514283))

(assert (= (and b!2514283 res!1062829) b!2514288))

(assert (= (and b!2514288 (not res!1062831)) b!2514281))

(assert (= (and b!2514281 (not res!1062834)) b!2514279))

(assert (= (or b!2514289 b!2514280 b!2514288) bm!156164))

(declare-fun m!2871839 () Bool)

(assert (=> d!717110 m!2871839))

(assert (=> d!717110 m!2871685))

(declare-fun m!2871841 () Bool)

(assert (=> d!717110 m!2871841))

(assert (=> b!2514291 m!2871685))

(declare-fun m!2871843 () Bool)

(assert (=> b!2514291 m!2871843))

(assert (=> bm!156164 m!2871839))

(declare-fun m!2871845 () Bool)

(assert (=> b!2514284 m!2871845))

(assert (=> b!2514284 m!2871845))

(declare-fun m!2871847 () Bool)

(assert (=> b!2514284 m!2871847))

(assert (=> b!2514281 m!2871845))

(assert (=> b!2514281 m!2871845))

(assert (=> b!2514281 m!2871847))

(declare-fun m!2871849 () Bool)

(assert (=> b!2514279 m!2871849))

(assert (=> b!2514287 m!2871849))

(assert (=> b!2514287 m!2871685))

(assert (=> b!2514287 m!2871849))

(declare-fun m!2871851 () Bool)

(assert (=> b!2514287 m!2871851))

(assert (=> b!2514287 m!2871845))

(assert (=> b!2514287 m!2871851))

(assert (=> b!2514287 m!2871845))

(declare-fun m!2871853 () Bool)

(assert (=> b!2514287 m!2871853))

(assert (=> b!2514282 m!2871849))

(assert (=> b!2514020 d!717110))

(declare-fun d!717112 () Bool)

(declare-fun e!1593103 () Bool)

(assert (=> d!717112 e!1593103))

(declare-fun res!1062842 () Bool)

(assert (=> d!717112 (=> res!1062842 e!1593103)))

(assert (=> d!717112 (= res!1062842 (matchR!3475 lt!898431 tl!4068))))

(declare-fun lt!898489 () Unit!43201)

(declare-fun choose!14899 (Regex!7476 Regex!7476 List!29541) Unit!43201)

(assert (=> d!717112 (= lt!898489 (choose!14899 lt!898431 EmptyLang!7476 tl!4068))))

(declare-fun e!1593104 () Bool)

(assert (=> d!717112 e!1593104))

(declare-fun res!1062841 () Bool)

(assert (=> d!717112 (=> (not res!1062841) (not e!1593104))))

(assert (=> d!717112 (= res!1062841 (validRegex!3102 lt!898431))))

(assert (=> d!717112 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!163 lt!898431 EmptyLang!7476 tl!4068) lt!898489)))

(declare-fun b!2514307 () Bool)

(assert (=> b!2514307 (= e!1593104 (validRegex!3102 EmptyLang!7476))))

(declare-fun b!2514308 () Bool)

(assert (=> b!2514308 (= e!1593103 (matchR!3475 EmptyLang!7476 tl!4068))))

(assert (= (and d!717112 res!1062841) b!2514307))

(assert (= (and d!717112 (not res!1062842)) b!2514308))

(assert (=> d!717112 m!2871699))

(declare-fun m!2871865 () Bool)

(assert (=> d!717112 m!2871865))

(declare-fun m!2871867 () Bool)

(assert (=> d!717112 m!2871867))

(assert (=> b!2514307 m!2871833))

(assert (=> b!2514308 m!2871705))

(assert (=> b!2514020 d!717112))

(declare-fun d!717116 () Bool)

(assert (=> d!717116 (= (matchR!3475 lt!898437 tl!4068) (matchR!3475 (derivative!171 lt!898437 tl!4068) Nil!29441))))

(declare-fun lt!898494 () Unit!43201)

(declare-fun choose!14900 (Regex!7476 List!29541) Unit!43201)

(assert (=> d!717116 (= lt!898494 (choose!14900 lt!898437 tl!4068))))

(assert (=> d!717116 (validRegex!3102 lt!898437)))

(assert (=> d!717116 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!121 lt!898437 tl!4068) lt!898494)))

(declare-fun bs!468850 () Bool)

(assert (= bs!468850 d!717116))

(assert (=> bs!468850 m!2871809))

(assert (=> bs!468850 m!2871683))

(assert (=> bs!468850 m!2871685))

(assert (=> bs!468850 m!2871687))

(assert (=> bs!468850 m!2871685))

(declare-fun m!2871869 () Bool)

(assert (=> bs!468850 m!2871869))

(assert (=> b!2514020 d!717116))

(declare-fun d!717118 () Bool)

(assert (=> d!717118 (= (derivative!171 EmptyLang!7476 tl!4068) EmptyLang!7476)))

(declare-fun lt!898498 () Unit!43201)

(declare-fun choose!14901 (Regex!7476 List!29541) Unit!43201)

(assert (=> d!717118 (= lt!898498 (choose!14901 EmptyLang!7476 tl!4068))))

(assert (=> d!717118 (= EmptyLang!7476 EmptyLang!7476)))

(assert (=> d!717118 (= (lemmaEmptyLangDerivativeIsAFixPoint!23 EmptyLang!7476 tl!4068) lt!898498)))

(declare-fun bs!468851 () Bool)

(assert (= bs!468851 d!717118))

(assert (=> bs!468851 m!2871693))

(declare-fun m!2871877 () Bool)

(assert (=> bs!468851 m!2871877))

(assert (=> b!2514020 d!717118))

(declare-fun b!2514315 () Bool)

(declare-fun e!1593112 () Bool)

(assert (=> b!2514315 (= e!1593112 (not (= (head!5741 tl!4068) (c!400630 lt!898437))))))

(declare-fun b!2514316 () Bool)

(declare-fun res!1062850 () Bool)

(declare-fun e!1593114 () Bool)

(assert (=> b!2514316 (=> (not res!1062850) (not e!1593114))))

(declare-fun call!156174 () Bool)

(assert (=> b!2514316 (= res!1062850 (not call!156174))))

(declare-fun b!2514317 () Bool)

(declare-fun res!1062848 () Bool)

(assert (=> b!2514317 (=> res!1062848 e!1593112)))

(assert (=> b!2514317 (= res!1062848 (not (isEmpty!16907 (tail!4018 tl!4068))))))

(declare-fun b!2514318 () Bool)

(assert (=> b!2514318 (= e!1593114 (= (head!5741 tl!4068) (c!400630 lt!898437)))))

(declare-fun b!2514319 () Bool)

(declare-fun e!1593113 () Bool)

(declare-fun e!1593110 () Bool)

(assert (=> b!2514319 (= e!1593113 e!1593110)))

(declare-fun res!1062843 () Bool)

(assert (=> b!2514319 (=> (not res!1062843) (not e!1593110))))

(declare-fun lt!898499 () Bool)

(assert (=> b!2514319 (= res!1062843 (not lt!898499))))

(declare-fun b!2514320 () Bool)

(declare-fun res!1062844 () Bool)

(assert (=> b!2514320 (=> (not res!1062844) (not e!1593114))))

(assert (=> b!2514320 (= res!1062844 (isEmpty!16907 (tail!4018 tl!4068)))))

(declare-fun b!2514322 () Bool)

(declare-fun e!1593108 () Bool)

(declare-fun e!1593109 () Bool)

(assert (=> b!2514322 (= e!1593108 e!1593109)))

(declare-fun c!400705 () Bool)

(assert (=> b!2514322 (= c!400705 (is-EmptyLang!7476 lt!898437))))

(declare-fun b!2514323 () Bool)

(declare-fun e!1593111 () Bool)

(assert (=> b!2514323 (= e!1593111 (matchR!3475 (derivativeStep!2045 lt!898437 (head!5741 tl!4068)) (tail!4018 tl!4068)))))

(declare-fun b!2514324 () Bool)

(assert (=> b!2514324 (= e!1593110 e!1593112)))

(declare-fun res!1062845 () Bool)

(assert (=> b!2514324 (=> res!1062845 e!1593112)))

(assert (=> b!2514324 (= res!1062845 call!156174)))

(declare-fun b!2514325 () Bool)

(assert (=> b!2514325 (= e!1593108 (= lt!898499 call!156174))))

(declare-fun b!2514326 () Bool)

(declare-fun res!1062846 () Bool)

(assert (=> b!2514326 (=> res!1062846 e!1593113)))

(assert (=> b!2514326 (= res!1062846 (not (is-ElementMatch!7476 lt!898437)))))

(assert (=> b!2514326 (= e!1593109 e!1593113)))

(declare-fun b!2514327 () Bool)

(assert (=> b!2514327 (= e!1593111 (nullable!2393 lt!898437))))

(declare-fun b!2514328 () Bool)

(declare-fun res!1062847 () Bool)

(assert (=> b!2514328 (=> res!1062847 e!1593113)))

(assert (=> b!2514328 (= res!1062847 e!1593114)))

(declare-fun res!1062849 () Bool)

(assert (=> b!2514328 (=> (not res!1062849) (not e!1593114))))

(assert (=> b!2514328 (= res!1062849 lt!898499)))

(declare-fun bm!156169 () Bool)

(assert (=> bm!156169 (= call!156174 (isEmpty!16907 tl!4068))))

(declare-fun b!2514321 () Bool)

(assert (=> b!2514321 (= e!1593109 (not lt!898499))))

(declare-fun d!717122 () Bool)

(assert (=> d!717122 e!1593108))

(declare-fun c!400706 () Bool)

(assert (=> d!717122 (= c!400706 (is-EmptyExpr!7476 lt!898437))))

(assert (=> d!717122 (= lt!898499 e!1593111)))

(declare-fun c!400707 () Bool)

(assert (=> d!717122 (= c!400707 (isEmpty!16907 tl!4068))))

(assert (=> d!717122 (validRegex!3102 lt!898437)))

(assert (=> d!717122 (= (matchR!3475 lt!898437 tl!4068) lt!898499)))

(assert (= (and d!717122 c!400707) b!2514327))

(assert (= (and d!717122 (not c!400707)) b!2514323))

(assert (= (and d!717122 c!400706) b!2514325))

(assert (= (and d!717122 (not c!400706)) b!2514322))

(assert (= (and b!2514322 c!400705) b!2514321))

(assert (= (and b!2514322 (not c!400705)) b!2514326))

(assert (= (and b!2514326 (not res!1062846)) b!2514328))

(assert (= (and b!2514328 res!1062849) b!2514316))

(assert (= (and b!2514316 res!1062850) b!2514320))

(assert (= (and b!2514320 res!1062844) b!2514318))

(assert (= (and b!2514328 (not res!1062847)) b!2514319))

(assert (= (and b!2514319 res!1062843) b!2514324))

(assert (= (and b!2514324 (not res!1062845)) b!2514317))

(assert (= (and b!2514317 (not res!1062848)) b!2514315))

(assert (= (or b!2514325 b!2514316 b!2514324) bm!156169))

(declare-fun m!2871879 () Bool)

(assert (=> d!717122 m!2871879))

(assert (=> d!717122 m!2871809))

(declare-fun m!2871881 () Bool)

(assert (=> b!2514327 m!2871881))

(assert (=> bm!156169 m!2871879))

(declare-fun m!2871883 () Bool)

(assert (=> b!2514320 m!2871883))

(assert (=> b!2514320 m!2871883))

(declare-fun m!2871885 () Bool)

(assert (=> b!2514320 m!2871885))

(assert (=> b!2514317 m!2871883))

(assert (=> b!2514317 m!2871883))

(assert (=> b!2514317 m!2871885))

(declare-fun m!2871887 () Bool)

(assert (=> b!2514315 m!2871887))

(assert (=> b!2514323 m!2871887))

(assert (=> b!2514323 m!2871887))

(declare-fun m!2871889 () Bool)

(assert (=> b!2514323 m!2871889))

(assert (=> b!2514323 m!2871883))

(assert (=> b!2514323 m!2871889))

(assert (=> b!2514323 m!2871883))

(declare-fun m!2871891 () Bool)

(assert (=> b!2514323 m!2871891))

(assert (=> b!2514318 m!2871887))

(assert (=> b!2514020 d!717122))

(declare-fun b!2514333 () Bool)

(declare-fun e!1593123 () Bool)

(assert (=> b!2514333 (= e!1593123 (not (= (head!5741 tl!4068) (c!400630 lt!898431))))))

(declare-fun b!2514334 () Bool)

(declare-fun res!1062862 () Bool)

(declare-fun e!1593125 () Bool)

(assert (=> b!2514334 (=> (not res!1062862) (not e!1593125))))

(declare-fun call!156175 () Bool)

(assert (=> b!2514334 (= res!1062862 (not call!156175))))

(declare-fun b!2514335 () Bool)

(declare-fun res!1062860 () Bool)

(assert (=> b!2514335 (=> res!1062860 e!1593123)))

(assert (=> b!2514335 (= res!1062860 (not (isEmpty!16907 (tail!4018 tl!4068))))))

(declare-fun b!2514336 () Bool)

(assert (=> b!2514336 (= e!1593125 (= (head!5741 tl!4068) (c!400630 lt!898431)))))

(declare-fun b!2514337 () Bool)

(declare-fun e!1593124 () Bool)

(declare-fun e!1593121 () Bool)

(assert (=> b!2514337 (= e!1593124 e!1593121)))

(declare-fun res!1062855 () Bool)

(assert (=> b!2514337 (=> (not res!1062855) (not e!1593121))))

(declare-fun lt!898502 () Bool)

(assert (=> b!2514337 (= res!1062855 (not lt!898502))))

(declare-fun b!2514338 () Bool)

(declare-fun res!1062856 () Bool)

(assert (=> b!2514338 (=> (not res!1062856) (not e!1593125))))

(assert (=> b!2514338 (= res!1062856 (isEmpty!16907 (tail!4018 tl!4068)))))

(declare-fun b!2514340 () Bool)

(declare-fun e!1593119 () Bool)

(declare-fun e!1593120 () Bool)

(assert (=> b!2514340 (= e!1593119 e!1593120)))

(declare-fun c!400708 () Bool)

(assert (=> b!2514340 (= c!400708 (is-EmptyLang!7476 lt!898431))))

(declare-fun b!2514341 () Bool)

(declare-fun e!1593122 () Bool)

(assert (=> b!2514341 (= e!1593122 (matchR!3475 (derivativeStep!2045 lt!898431 (head!5741 tl!4068)) (tail!4018 tl!4068)))))

(declare-fun b!2514342 () Bool)

(assert (=> b!2514342 (= e!1593121 e!1593123)))

(declare-fun res!1062857 () Bool)

(assert (=> b!2514342 (=> res!1062857 e!1593123)))

(assert (=> b!2514342 (= res!1062857 call!156175)))

(declare-fun b!2514343 () Bool)

(assert (=> b!2514343 (= e!1593119 (= lt!898502 call!156175))))

(declare-fun b!2514344 () Bool)

(declare-fun res!1062858 () Bool)

(assert (=> b!2514344 (=> res!1062858 e!1593124)))

(assert (=> b!2514344 (= res!1062858 (not (is-ElementMatch!7476 lt!898431)))))

(assert (=> b!2514344 (= e!1593120 e!1593124)))

(declare-fun b!2514345 () Bool)

(assert (=> b!2514345 (= e!1593122 (nullable!2393 lt!898431))))

(declare-fun b!2514346 () Bool)

(declare-fun res!1062859 () Bool)

(assert (=> b!2514346 (=> res!1062859 e!1593124)))

(assert (=> b!2514346 (= res!1062859 e!1593125)))

(declare-fun res!1062861 () Bool)

(assert (=> b!2514346 (=> (not res!1062861) (not e!1593125))))

(assert (=> b!2514346 (= res!1062861 lt!898502)))

(declare-fun bm!156170 () Bool)

(assert (=> bm!156170 (= call!156175 (isEmpty!16907 tl!4068))))

(declare-fun b!2514339 () Bool)

(assert (=> b!2514339 (= e!1593120 (not lt!898502))))

(declare-fun d!717124 () Bool)

(assert (=> d!717124 e!1593119))

(declare-fun c!400709 () Bool)

(assert (=> d!717124 (= c!400709 (is-EmptyExpr!7476 lt!898431))))

(assert (=> d!717124 (= lt!898502 e!1593122)))

(declare-fun c!400710 () Bool)

(assert (=> d!717124 (= c!400710 (isEmpty!16907 tl!4068))))

(assert (=> d!717124 (validRegex!3102 lt!898431)))

(assert (=> d!717124 (= (matchR!3475 lt!898431 tl!4068) lt!898502)))

(assert (= (and d!717124 c!400710) b!2514345))

(assert (= (and d!717124 (not c!400710)) b!2514341))

(assert (= (and d!717124 c!400709) b!2514343))

(assert (= (and d!717124 (not c!400709)) b!2514340))

(assert (= (and b!2514340 c!400708) b!2514339))

(assert (= (and b!2514340 (not c!400708)) b!2514344))

(assert (= (and b!2514344 (not res!1062858)) b!2514346))

(assert (= (and b!2514346 res!1062861) b!2514334))

(assert (= (and b!2514334 res!1062862) b!2514338))

(assert (= (and b!2514338 res!1062856) b!2514336))

(assert (= (and b!2514346 (not res!1062859)) b!2514337))

(assert (= (and b!2514337 res!1062855) b!2514342))

(assert (= (and b!2514342 (not res!1062857)) b!2514335))

(assert (= (and b!2514335 (not res!1062860)) b!2514333))

(assert (= (or b!2514343 b!2514334 b!2514342) bm!156170))

(assert (=> d!717124 m!2871879))

(assert (=> d!717124 m!2871867))

(declare-fun m!2871893 () Bool)

(assert (=> b!2514345 m!2871893))

(assert (=> bm!156170 m!2871879))

(assert (=> b!2514338 m!2871883))

(assert (=> b!2514338 m!2871883))

(assert (=> b!2514338 m!2871885))

(assert (=> b!2514335 m!2871883))

(assert (=> b!2514335 m!2871883))

(assert (=> b!2514335 m!2871885))

(assert (=> b!2514333 m!2871887))

(assert (=> b!2514341 m!2871887))

(assert (=> b!2514341 m!2871887))

(declare-fun m!2871895 () Bool)

(assert (=> b!2514341 m!2871895))

(assert (=> b!2514341 m!2871883))

(assert (=> b!2514341 m!2871895))

(assert (=> b!2514341 m!2871883))

(declare-fun m!2871897 () Bool)

(assert (=> b!2514341 m!2871897))

(assert (=> b!2514336 m!2871887))

(assert (=> b!2514020 d!717124))

(declare-fun d!717126 () Bool)

(assert (=> d!717126 (isDefined!4683 (findConcatSeparation!883 lt!898435 (regTwo!15464 r!27340) Nil!29441 tl!4068 tl!4068))))

(declare-fun lt!898508 () Unit!43201)

(declare-fun choose!14902 (Regex!7476 Regex!7476 List!29541) Unit!43201)

(assert (=> d!717126 (= lt!898508 (choose!14902 lt!898435 (regTwo!15464 r!27340) tl!4068))))

(assert (=> d!717126 (validRegex!3102 lt!898435)))

(assert (=> d!717126 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!165 lt!898435 (regTwo!15464 r!27340) tl!4068) lt!898508)))

(declare-fun bs!468852 () Bool)

(assert (= bs!468852 d!717126))

(assert (=> bs!468852 m!2871671))

(assert (=> bs!468852 m!2871671))

(declare-fun m!2871925 () Bool)

(assert (=> bs!468852 m!2871925))

(declare-fun m!2871927 () Bool)

(assert (=> bs!468852 m!2871927))

(assert (=> bs!468852 m!2871755))

(assert (=> b!2514026 d!717126))

(declare-fun d!717132 () Bool)

(assert (=> d!717132 (= (get!9178 lt!898436) (v!31791 lt!898436))))

(assert (=> b!2514026 d!717132))

(declare-fun d!717136 () Bool)

(declare-fun e!1593141 () Bool)

(assert (=> d!717136 e!1593141))

(declare-fun res!1062878 () Bool)

(assert (=> d!717136 (=> (not res!1062878) (not e!1593141))))

(declare-fun lt!898513 () List!29541)

(declare-fun content!4021 (List!29541) (Set C!15110))

(assert (=> d!717136 (= res!1062878 (= (content!4021 lt!898513) (set.union (content!4021 (_1!17283 lt!898438)) (content!4021 (_2!17283 lt!898438)))))))

(declare-fun e!1593140 () List!29541)

(assert (=> d!717136 (= lt!898513 e!1593140)))

(declare-fun c!400717 () Bool)

(assert (=> d!717136 (= c!400717 (is-Nil!29441 (_1!17283 lt!898438)))))

(assert (=> d!717136 (= (++!7210 (_1!17283 lt!898438) (_2!17283 lt!898438)) lt!898513)))

(declare-fun b!2514374 () Bool)

(assert (=> b!2514374 (= e!1593140 (Cons!29441 (h!34861 (_1!17283 lt!898438)) (++!7210 (t!211240 (_1!17283 lt!898438)) (_2!17283 lt!898438))))))

(declare-fun b!2514373 () Bool)

(assert (=> b!2514373 (= e!1593140 (_2!17283 lt!898438))))

(declare-fun b!2514375 () Bool)

(declare-fun res!1062877 () Bool)

(assert (=> b!2514375 (=> (not res!1062877) (not e!1593141))))

(declare-fun size!22905 (List!29541) Int)

(assert (=> b!2514375 (= res!1062877 (= (size!22905 lt!898513) (+ (size!22905 (_1!17283 lt!898438)) (size!22905 (_2!17283 lt!898438)))))))

(declare-fun b!2514376 () Bool)

(assert (=> b!2514376 (= e!1593141 (or (not (= (_2!17283 lt!898438) Nil!29441)) (= lt!898513 (_1!17283 lt!898438))))))

(assert (= (and d!717136 c!400717) b!2514373))

(assert (= (and d!717136 (not c!400717)) b!2514374))

(assert (= (and d!717136 res!1062878) b!2514375))

(assert (= (and b!2514375 res!1062877) b!2514376))

(declare-fun m!2871931 () Bool)

(assert (=> d!717136 m!2871931))

(declare-fun m!2871933 () Bool)

(assert (=> d!717136 m!2871933))

(declare-fun m!2871935 () Bool)

(assert (=> d!717136 m!2871935))

(declare-fun m!2871937 () Bool)

(assert (=> b!2514374 m!2871937))

(declare-fun m!2871939 () Bool)

(assert (=> b!2514375 m!2871939))

(declare-fun m!2871941 () Bool)

(assert (=> b!2514375 m!2871941))

(declare-fun m!2871943 () Bool)

(assert (=> b!2514375 m!2871943))

(assert (=> b!2514026 d!717136))

(declare-fun d!717138 () Bool)

(declare-fun isEmpty!16909 (Option!5861) Bool)

(assert (=> d!717138 (= (isDefined!4683 lt!898436) (not (isEmpty!16909 lt!898436)))))

(declare-fun bs!468854 () Bool)

(assert (= bs!468854 d!717138))

(declare-fun m!2871947 () Bool)

(assert (=> bs!468854 m!2871947))

(assert (=> b!2514026 d!717138))

(declare-fun b!2514423 () Bool)

(declare-fun lt!898528 () Unit!43201)

(declare-fun lt!898526 () Unit!43201)

(assert (=> b!2514423 (= lt!898528 lt!898526)))

(assert (=> b!2514423 (= (++!7210 (++!7210 Nil!29441 (Cons!29441 (h!34861 tl!4068) Nil!29441)) (t!211240 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!756 (List!29541 C!15110 List!29541 List!29541) Unit!43201)

(assert (=> b!2514423 (= lt!898526 (lemmaMoveElementToOtherListKeepsConcatEq!756 Nil!29441 (h!34861 tl!4068) (t!211240 tl!4068) tl!4068))))

(declare-fun e!1593167 () Option!5861)

(assert (=> b!2514423 (= e!1593167 (findConcatSeparation!883 lt!898435 (regTwo!15464 r!27340) (++!7210 Nil!29441 (Cons!29441 (h!34861 tl!4068) Nil!29441)) (t!211240 tl!4068) tl!4068))))

(declare-fun b!2514424 () Bool)

(declare-fun res!1062907 () Bool)

(declare-fun e!1593169 () Bool)

(assert (=> b!2514424 (=> (not res!1062907) (not e!1593169))))

(declare-fun lt!898527 () Option!5861)

(assert (=> b!2514424 (= res!1062907 (matchR!3475 lt!898435 (_1!17283 (get!9178 lt!898527))))))

(declare-fun b!2514425 () Bool)

(assert (=> b!2514425 (= e!1593167 None!5860)))

(declare-fun d!717142 () Bool)

(declare-fun e!1593168 () Bool)

(assert (=> d!717142 e!1593168))

(declare-fun res!1062909 () Bool)

(assert (=> d!717142 (=> res!1062909 e!1593168)))

(assert (=> d!717142 (= res!1062909 e!1593169)))

(declare-fun res!1062905 () Bool)

(assert (=> d!717142 (=> (not res!1062905) (not e!1593169))))

(assert (=> d!717142 (= res!1062905 (isDefined!4683 lt!898527))))

(declare-fun e!1593170 () Option!5861)

(assert (=> d!717142 (= lt!898527 e!1593170)))

(declare-fun c!400729 () Bool)

(declare-fun e!1593166 () Bool)

(assert (=> d!717142 (= c!400729 e!1593166)))

(declare-fun res!1062906 () Bool)

(assert (=> d!717142 (=> (not res!1062906) (not e!1593166))))

(assert (=> d!717142 (= res!1062906 (matchR!3475 lt!898435 Nil!29441))))

(assert (=> d!717142 (validRegex!3102 lt!898435)))

(assert (=> d!717142 (= (findConcatSeparation!883 lt!898435 (regTwo!15464 r!27340) Nil!29441 tl!4068 tl!4068) lt!898527)))

(declare-fun b!2514426 () Bool)

(assert (=> b!2514426 (= e!1593166 (matchR!3475 (regTwo!15464 r!27340) tl!4068))))

(declare-fun b!2514427 () Bool)

(assert (=> b!2514427 (= e!1593168 (not (isDefined!4683 lt!898527)))))

(declare-fun b!2514428 () Bool)

(assert (=> b!2514428 (= e!1593169 (= (++!7210 (_1!17283 (get!9178 lt!898527)) (_2!17283 (get!9178 lt!898527))) tl!4068))))

(declare-fun b!2514429 () Bool)

(assert (=> b!2514429 (= e!1593170 (Some!5860 (tuple2!29483 Nil!29441 tl!4068)))))

(declare-fun b!2514430 () Bool)

(declare-fun res!1062908 () Bool)

(assert (=> b!2514430 (=> (not res!1062908) (not e!1593169))))

(assert (=> b!2514430 (= res!1062908 (matchR!3475 (regTwo!15464 r!27340) (_2!17283 (get!9178 lt!898527))))))

(declare-fun b!2514431 () Bool)

(assert (=> b!2514431 (= e!1593170 e!1593167)))

(declare-fun c!400728 () Bool)

(assert (=> b!2514431 (= c!400728 (is-Nil!29441 tl!4068))))

(assert (= (and d!717142 res!1062906) b!2514426))

(assert (= (and d!717142 c!400729) b!2514429))

(assert (= (and d!717142 (not c!400729)) b!2514431))

(assert (= (and b!2514431 c!400728) b!2514425))

(assert (= (and b!2514431 (not c!400728)) b!2514423))

(assert (= (and d!717142 res!1062905) b!2514424))

(assert (= (and b!2514424 res!1062907) b!2514430))

(assert (= (and b!2514430 res!1062908) b!2514428))

(assert (= (and d!717142 (not res!1062909)) b!2514427))

(declare-fun m!2871975 () Bool)

(assert (=> b!2514426 m!2871975))

(declare-fun m!2871977 () Bool)

(assert (=> b!2514424 m!2871977))

(declare-fun m!2871979 () Bool)

(assert (=> b!2514424 m!2871979))

(assert (=> b!2514428 m!2871977))

(declare-fun m!2871981 () Bool)

(assert (=> b!2514428 m!2871981))

(declare-fun m!2871983 () Bool)

(assert (=> b!2514427 m!2871983))

(declare-fun m!2871985 () Bool)

(assert (=> b!2514423 m!2871985))

(assert (=> b!2514423 m!2871985))

(declare-fun m!2871987 () Bool)

(assert (=> b!2514423 m!2871987))

(declare-fun m!2871989 () Bool)

(assert (=> b!2514423 m!2871989))

(assert (=> b!2514423 m!2871985))

(declare-fun m!2871991 () Bool)

(assert (=> b!2514423 m!2871991))

(assert (=> d!717142 m!2871983))

(declare-fun m!2871993 () Bool)

(assert (=> d!717142 m!2871993))

(assert (=> d!717142 m!2871755))

(assert (=> b!2514430 m!2871977))

(declare-fun m!2871995 () Bool)

(assert (=> b!2514430 m!2871995))

(assert (=> b!2514026 d!717142))

(declare-fun b!2514444 () Bool)

(declare-fun e!1593181 () Bool)

(assert (=> b!2514444 (= e!1593181 (not (= (head!5741 tl!4068) (c!400630 EmptyLang!7476))))))

(declare-fun b!2514445 () Bool)

(declare-fun res!1062917 () Bool)

(declare-fun e!1593183 () Bool)

(assert (=> b!2514445 (=> (not res!1062917) (not e!1593183))))

(declare-fun call!156183 () Bool)

(assert (=> b!2514445 (= res!1062917 (not call!156183))))

(declare-fun b!2514446 () Bool)

(declare-fun res!1062915 () Bool)

(assert (=> b!2514446 (=> res!1062915 e!1593181)))

(assert (=> b!2514446 (= res!1062915 (not (isEmpty!16907 (tail!4018 tl!4068))))))

(declare-fun b!2514447 () Bool)

(assert (=> b!2514447 (= e!1593183 (= (head!5741 tl!4068) (c!400630 EmptyLang!7476)))))

(declare-fun b!2514448 () Bool)

(declare-fun e!1593182 () Bool)

(declare-fun e!1593179 () Bool)

(assert (=> b!2514448 (= e!1593182 e!1593179)))

(declare-fun res!1062910 () Bool)

(assert (=> b!2514448 (=> (not res!1062910) (not e!1593179))))

(declare-fun lt!898531 () Bool)

(assert (=> b!2514448 (= res!1062910 (not lt!898531))))

(declare-fun b!2514449 () Bool)

(declare-fun res!1062911 () Bool)

(assert (=> b!2514449 (=> (not res!1062911) (not e!1593183))))

(assert (=> b!2514449 (= res!1062911 (isEmpty!16907 (tail!4018 tl!4068)))))

(declare-fun b!2514451 () Bool)

(declare-fun e!1593177 () Bool)

(declare-fun e!1593178 () Bool)

(assert (=> b!2514451 (= e!1593177 e!1593178)))

(declare-fun c!400736 () Bool)

(assert (=> b!2514451 (= c!400736 (is-EmptyLang!7476 EmptyLang!7476))))

(declare-fun b!2514452 () Bool)

(declare-fun e!1593180 () Bool)

(assert (=> b!2514452 (= e!1593180 (matchR!3475 (derivativeStep!2045 EmptyLang!7476 (head!5741 tl!4068)) (tail!4018 tl!4068)))))

(declare-fun b!2514453 () Bool)

(assert (=> b!2514453 (= e!1593179 e!1593181)))

(declare-fun res!1062912 () Bool)

(assert (=> b!2514453 (=> res!1062912 e!1593181)))

(assert (=> b!2514453 (= res!1062912 call!156183)))

(declare-fun b!2514454 () Bool)

(assert (=> b!2514454 (= e!1593177 (= lt!898531 call!156183))))

(declare-fun b!2514455 () Bool)

(declare-fun res!1062913 () Bool)

(assert (=> b!2514455 (=> res!1062913 e!1593182)))

(assert (=> b!2514455 (= res!1062913 (not (is-ElementMatch!7476 EmptyLang!7476)))))

(assert (=> b!2514455 (= e!1593178 e!1593182)))

(declare-fun b!2514456 () Bool)

(assert (=> b!2514456 (= e!1593180 (nullable!2393 EmptyLang!7476))))

(declare-fun b!2514457 () Bool)

(declare-fun res!1062914 () Bool)

(assert (=> b!2514457 (=> res!1062914 e!1593182)))

(assert (=> b!2514457 (= res!1062914 e!1593183)))

(declare-fun res!1062916 () Bool)

(assert (=> b!2514457 (=> (not res!1062916) (not e!1593183))))

(assert (=> b!2514457 (= res!1062916 lt!898531)))

(declare-fun bm!156178 () Bool)

(assert (=> bm!156178 (= call!156183 (isEmpty!16907 tl!4068))))

(declare-fun b!2514450 () Bool)

(assert (=> b!2514450 (= e!1593178 (not lt!898531))))

(declare-fun d!717156 () Bool)

(assert (=> d!717156 e!1593177))

(declare-fun c!400737 () Bool)

(assert (=> d!717156 (= c!400737 (is-EmptyExpr!7476 EmptyLang!7476))))

(assert (=> d!717156 (= lt!898531 e!1593180)))

(declare-fun c!400738 () Bool)

(assert (=> d!717156 (= c!400738 (isEmpty!16907 tl!4068))))

(assert (=> d!717156 (validRegex!3102 EmptyLang!7476)))

(assert (=> d!717156 (= (matchR!3475 EmptyLang!7476 tl!4068) lt!898531)))

(assert (= (and d!717156 c!400738) b!2514456))

(assert (= (and d!717156 (not c!400738)) b!2514452))

(assert (= (and d!717156 c!400737) b!2514454))

(assert (= (and d!717156 (not c!400737)) b!2514451))

(assert (= (and b!2514451 c!400736) b!2514450))

(assert (= (and b!2514451 (not c!400736)) b!2514455))

(assert (= (and b!2514455 (not res!1062913)) b!2514457))

(assert (= (and b!2514457 res!1062916) b!2514445))

(assert (= (and b!2514445 res!1062917) b!2514449))

(assert (= (and b!2514449 res!1062911) b!2514447))

(assert (= (and b!2514457 (not res!1062914)) b!2514448))

(assert (= (and b!2514448 res!1062910) b!2514453))

(assert (= (and b!2514453 (not res!1062912)) b!2514446))

(assert (= (and b!2514446 (not res!1062915)) b!2514444))

(assert (= (or b!2514454 b!2514445 b!2514453) bm!156178))

(assert (=> d!717156 m!2871879))

(assert (=> d!717156 m!2871833))

(declare-fun m!2872001 () Bool)

(assert (=> b!2514456 m!2872001))

(assert (=> bm!156178 m!2871879))

(assert (=> b!2514449 m!2871883))

(assert (=> b!2514449 m!2871883))

(assert (=> b!2514449 m!2871885))

(assert (=> b!2514446 m!2871883))

(assert (=> b!2514446 m!2871883))

(assert (=> b!2514446 m!2871885))

(assert (=> b!2514444 m!2871887))

(assert (=> b!2514452 m!2871887))

(assert (=> b!2514452 m!2871887))

(declare-fun m!2872005 () Bool)

(assert (=> b!2514452 m!2872005))

(assert (=> b!2514452 m!2871883))

(assert (=> b!2514452 m!2872005))

(assert (=> b!2514452 m!2871883))

(declare-fun m!2872007 () Bool)

(assert (=> b!2514452 m!2872007))

(assert (=> b!2514447 m!2871887))

(assert (=> b!2514022 d!717156))

(declare-fun d!717160 () Bool)

(declare-fun nullableFct!639 (Regex!7476) Bool)

(assert (=> d!717160 (= (nullable!2393 (derivative!171 (derivativeStep!2045 r!27340 c!14016) tl!4068)) (nullableFct!639 (derivative!171 (derivativeStep!2045 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468858 () Bool)

(assert (= bs!468858 d!717160))

(assert (=> bs!468858 m!2871679))

(declare-fun m!2872009 () Bool)

(assert (=> bs!468858 m!2872009))

(assert (=> b!2514023 d!717160))

(declare-fun d!717162 () Bool)

(declare-fun lt!898532 () Regex!7476)

(assert (=> d!717162 (validRegex!3102 lt!898532)))

(declare-fun e!1593184 () Regex!7476)

(assert (=> d!717162 (= lt!898532 e!1593184)))

(declare-fun c!400739 () Bool)

(assert (=> d!717162 (= c!400739 (is-Cons!29441 tl!4068))))

(assert (=> d!717162 (validRegex!3102 (derivativeStep!2045 r!27340 c!14016))))

(assert (=> d!717162 (= (derivative!171 (derivativeStep!2045 r!27340 c!14016) tl!4068) lt!898532)))

(declare-fun b!2514458 () Bool)

(assert (=> b!2514458 (= e!1593184 (derivative!171 (derivativeStep!2045 (derivativeStep!2045 r!27340 c!14016) (h!34861 tl!4068)) (t!211240 tl!4068)))))

(declare-fun b!2514459 () Bool)

(assert (=> b!2514459 (= e!1593184 (derivativeStep!2045 r!27340 c!14016))))

(assert (= (and d!717162 c!400739) b!2514458))

(assert (= (and d!717162 (not c!400739)) b!2514459))

(declare-fun m!2872011 () Bool)

(assert (=> d!717162 m!2872011))

(assert (=> d!717162 m!2871677))

(declare-fun m!2872013 () Bool)

(assert (=> d!717162 m!2872013))

(assert (=> b!2514458 m!2871677))

(declare-fun m!2872015 () Bool)

(assert (=> b!2514458 m!2872015))

(assert (=> b!2514458 m!2872015))

(declare-fun m!2872017 () Bool)

(assert (=> b!2514458 m!2872017))

(assert (=> b!2514023 d!717162))

(declare-fun call!156184 () Regex!7476)

(declare-fun c!400744 () Bool)

(declare-fun c!400743 () Bool)

(declare-fun bm!156179 () Bool)

(assert (=> bm!156179 (= call!156184 (derivativeStep!2045 (ite c!400743 (regTwo!15465 r!27340) (ite c!400744 (reg!7805 r!27340) (regOne!15464 r!27340))) c!14016))))

(declare-fun bm!156180 () Bool)

(declare-fun call!156187 () Regex!7476)

(assert (=> bm!156180 (= call!156187 (derivativeStep!2045 (ite c!400743 (regOne!15465 r!27340) (regTwo!15464 r!27340)) c!14016))))

(declare-fun b!2514460 () Bool)

(declare-fun e!1593189 () Regex!7476)

(assert (=> b!2514460 (= e!1593189 (Union!7476 call!156187 call!156184))))

(declare-fun b!2514461 () Bool)

(assert (=> b!2514461 (= c!400743 (is-Union!7476 r!27340))))

(declare-fun e!1593187 () Regex!7476)

(assert (=> b!2514461 (= e!1593187 e!1593189)))

(declare-fun b!2514462 () Bool)

(assert (=> b!2514462 (= e!1593187 (ite (= c!14016 (c!400630 r!27340)) EmptyExpr!7476 EmptyLang!7476))))

(declare-fun bm!156181 () Bool)

(declare-fun call!156186 () Regex!7476)

(assert (=> bm!156181 (= call!156186 call!156184)))

(declare-fun b!2514463 () Bool)

(declare-fun e!1593188 () Regex!7476)

(assert (=> b!2514463 (= e!1593188 EmptyLang!7476)))

(declare-fun b!2514464 () Bool)

(declare-fun e!1593185 () Regex!7476)

(declare-fun call!156185 () Regex!7476)

(assert (=> b!2514464 (= e!1593185 (Union!7476 (Concat!12172 call!156185 (regTwo!15464 r!27340)) EmptyLang!7476))))

(declare-fun b!2514465 () Bool)

(assert (=> b!2514465 (= e!1593185 (Union!7476 (Concat!12172 call!156185 (regTwo!15464 r!27340)) call!156187))))

(declare-fun b!2514466 () Bool)

(declare-fun c!400740 () Bool)

(assert (=> b!2514466 (= c!400740 (nullable!2393 (regOne!15464 r!27340)))))

(declare-fun e!1593186 () Regex!7476)

(assert (=> b!2514466 (= e!1593186 e!1593185)))

(declare-fun b!2514467 () Bool)

(assert (=> b!2514467 (= e!1593189 e!1593186)))

(assert (=> b!2514467 (= c!400744 (is-Star!7476 r!27340))))

(declare-fun bm!156182 () Bool)

(assert (=> bm!156182 (= call!156185 call!156186)))

(declare-fun b!2514468 () Bool)

(assert (=> b!2514468 (= e!1593188 e!1593187)))

(declare-fun c!400742 () Bool)

(assert (=> b!2514468 (= c!400742 (is-ElementMatch!7476 r!27340))))

(declare-fun b!2514469 () Bool)

(assert (=> b!2514469 (= e!1593186 (Concat!12172 call!156186 r!27340))))

(declare-fun d!717166 () Bool)

(declare-fun lt!898533 () Regex!7476)

(assert (=> d!717166 (validRegex!3102 lt!898533)))

(assert (=> d!717166 (= lt!898533 e!1593188)))

(declare-fun c!400741 () Bool)

(assert (=> d!717166 (= c!400741 (or (is-EmptyExpr!7476 r!27340) (is-EmptyLang!7476 r!27340)))))

(assert (=> d!717166 (validRegex!3102 r!27340)))

(assert (=> d!717166 (= (derivativeStep!2045 r!27340 c!14016) lt!898533)))

(assert (= (and d!717166 c!400741) b!2514463))

(assert (= (and d!717166 (not c!400741)) b!2514468))

(assert (= (and b!2514468 c!400742) b!2514462))

(assert (= (and b!2514468 (not c!400742)) b!2514461))

(assert (= (and b!2514461 c!400743) b!2514460))

(assert (= (and b!2514461 (not c!400743)) b!2514467))

(assert (= (and b!2514467 c!400744) b!2514469))

(assert (= (and b!2514467 (not c!400744)) b!2514466))

(assert (= (and b!2514466 c!400740) b!2514465))

(assert (= (and b!2514466 (not c!400740)) b!2514464))

(assert (= (or b!2514465 b!2514464) bm!156182))

(assert (= (or b!2514469 bm!156182) bm!156181))

(assert (= (or b!2514460 bm!156181) bm!156179))

(assert (= (or b!2514460 b!2514465) bm!156180))

(declare-fun m!2872019 () Bool)

(assert (=> bm!156179 m!2872019))

(declare-fun m!2872021 () Bool)

(assert (=> bm!156180 m!2872021))

(assert (=> b!2514466 m!2871703))

(declare-fun m!2872023 () Bool)

(assert (=> d!717166 m!2872023))

(assert (=> d!717166 m!2871675))

(assert (=> b!2514023 d!717166))

(declare-fun d!717168 () Bool)

(assert (=> d!717168 (= (nullable!2393 (regOne!15464 r!27340)) (nullableFct!639 (regOne!15464 r!27340)))))

(declare-fun bs!468859 () Bool)

(assert (= bs!468859 d!717168))

(declare-fun m!2872025 () Bool)

(assert (=> bs!468859 m!2872025))

(assert (=> b!2514028 d!717168))

(declare-fun d!717170 () Bool)

(declare-fun res!1062918 () Bool)

(declare-fun e!1593190 () Bool)

(assert (=> d!717170 (=> res!1062918 e!1593190)))

(assert (=> d!717170 (= res!1062918 (is-ElementMatch!7476 (regTwo!15464 r!27340)))))

(assert (=> d!717170 (= (validRegex!3102 (regTwo!15464 r!27340)) e!1593190)))

(declare-fun b!2514470 () Bool)

(declare-fun res!1062922 () Bool)

(declare-fun e!1593192 () Bool)

(assert (=> b!2514470 (=> res!1062922 e!1593192)))

(assert (=> b!2514470 (= res!1062922 (not (is-Concat!12172 (regTwo!15464 r!27340))))))

(declare-fun e!1593191 () Bool)

(assert (=> b!2514470 (= e!1593191 e!1593192)))

(declare-fun b!2514471 () Bool)

(declare-fun e!1593193 () Bool)

(declare-fun call!156189 () Bool)

(assert (=> b!2514471 (= e!1593193 call!156189)))

(declare-fun b!2514472 () Bool)

(declare-fun e!1593196 () Bool)

(declare-fun e!1593195 () Bool)

(assert (=> b!2514472 (= e!1593196 e!1593195)))

(declare-fun res!1062920 () Bool)

(assert (=> b!2514472 (= res!1062920 (not (nullable!2393 (reg!7805 (regTwo!15464 r!27340)))))))

(assert (=> b!2514472 (=> (not res!1062920) (not e!1593195))))

(declare-fun bm!156183 () Bool)

(declare-fun call!156188 () Bool)

(assert (=> bm!156183 (= call!156189 call!156188)))

(declare-fun b!2514473 () Bool)

(assert (=> b!2514473 (= e!1593195 call!156188)))

(declare-fun c!400746 () Bool)

(declare-fun bm!156184 () Bool)

(declare-fun c!400745 () Bool)

(assert (=> bm!156184 (= call!156188 (validRegex!3102 (ite c!400746 (reg!7805 (regTwo!15464 r!27340)) (ite c!400745 (regTwo!15465 (regTwo!15464 r!27340)) (regOne!15464 (regTwo!15464 r!27340))))))))

(declare-fun bm!156185 () Bool)

(declare-fun call!156190 () Bool)

(assert (=> bm!156185 (= call!156190 (validRegex!3102 (ite c!400745 (regOne!15465 (regTwo!15464 r!27340)) (regTwo!15464 (regTwo!15464 r!27340)))))))

(declare-fun b!2514474 () Bool)

(assert (=> b!2514474 (= e!1593196 e!1593191)))

(assert (=> b!2514474 (= c!400745 (is-Union!7476 (regTwo!15464 r!27340)))))

(declare-fun b!2514475 () Bool)

(declare-fun e!1593194 () Bool)

(assert (=> b!2514475 (= e!1593194 call!156190)))

(declare-fun b!2514476 () Bool)

(assert (=> b!2514476 (= e!1593190 e!1593196)))

(assert (=> b!2514476 (= c!400746 (is-Star!7476 (regTwo!15464 r!27340)))))

(declare-fun b!2514477 () Bool)

(assert (=> b!2514477 (= e!1593192 e!1593194)))

(declare-fun res!1062921 () Bool)

(assert (=> b!2514477 (=> (not res!1062921) (not e!1593194))))

(assert (=> b!2514477 (= res!1062921 call!156189)))

(declare-fun b!2514478 () Bool)

(declare-fun res!1062919 () Bool)

(assert (=> b!2514478 (=> (not res!1062919) (not e!1593193))))

(assert (=> b!2514478 (= res!1062919 call!156190)))

(assert (=> b!2514478 (= e!1593191 e!1593193)))

(assert (= (and d!717170 (not res!1062918)) b!2514476))

(assert (= (and b!2514476 c!400746) b!2514472))

(assert (= (and b!2514476 (not c!400746)) b!2514474))

(assert (= (and b!2514472 res!1062920) b!2514473))

(assert (= (and b!2514474 c!400745) b!2514478))

(assert (= (and b!2514474 (not c!400745)) b!2514470))

(assert (= (and b!2514478 res!1062919) b!2514471))

(assert (= (and b!2514470 (not res!1062922)) b!2514477))

(assert (= (and b!2514477 res!1062921) b!2514475))

(assert (= (or b!2514478 b!2514475) bm!156185))

(assert (= (or b!2514471 b!2514477) bm!156183))

(assert (= (or b!2514473 bm!156183) bm!156184))

(declare-fun m!2872027 () Bool)

(assert (=> b!2514472 m!2872027))

(declare-fun m!2872029 () Bool)

(assert (=> bm!156184 m!2872029))

(declare-fun m!2872031 () Bool)

(assert (=> bm!156185 m!2872031))

(assert (=> b!2514018 d!717170))

(declare-fun b!2514483 () Bool)

(declare-fun e!1593199 () Bool)

(declare-fun tp!803701 () Bool)

(assert (=> b!2514483 (= e!1593199 (and tp_is_empty!12807 tp!803701))))

(assert (=> b!2514024 (= tp!803677 e!1593199)))

(assert (= (and b!2514024 (is-Cons!29441 (t!211240 tl!4068))) b!2514483))

(declare-fun b!2514497 () Bool)

(declare-fun e!1593202 () Bool)

(declare-fun tp!803715 () Bool)

(declare-fun tp!803712 () Bool)

(assert (=> b!2514497 (= e!1593202 (and tp!803715 tp!803712))))

(declare-fun b!2514495 () Bool)

(declare-fun tp!803713 () Bool)

(declare-fun tp!803714 () Bool)

(assert (=> b!2514495 (= e!1593202 (and tp!803713 tp!803714))))

(declare-fun b!2514494 () Bool)

(assert (=> b!2514494 (= e!1593202 tp_is_empty!12807)))

(declare-fun b!2514496 () Bool)

(declare-fun tp!803716 () Bool)

(assert (=> b!2514496 (= e!1593202 tp!803716)))

(assert (=> b!2514025 (= tp!803678 e!1593202)))

(assert (= (and b!2514025 (is-ElementMatch!7476 (regOne!15465 r!27340))) b!2514494))

(assert (= (and b!2514025 (is-Concat!12172 (regOne!15465 r!27340))) b!2514495))

(assert (= (and b!2514025 (is-Star!7476 (regOne!15465 r!27340))) b!2514496))

(assert (= (and b!2514025 (is-Union!7476 (regOne!15465 r!27340))) b!2514497))

(declare-fun b!2514501 () Bool)

(declare-fun e!1593203 () Bool)

(declare-fun tp!803720 () Bool)

(declare-fun tp!803717 () Bool)

(assert (=> b!2514501 (= e!1593203 (and tp!803720 tp!803717))))

(declare-fun b!2514499 () Bool)

(declare-fun tp!803718 () Bool)

(declare-fun tp!803719 () Bool)

(assert (=> b!2514499 (= e!1593203 (and tp!803718 tp!803719))))

(declare-fun b!2514498 () Bool)

(assert (=> b!2514498 (= e!1593203 tp_is_empty!12807)))

(declare-fun b!2514500 () Bool)

(declare-fun tp!803721 () Bool)

(assert (=> b!2514500 (= e!1593203 tp!803721)))

(assert (=> b!2514025 (= tp!803676 e!1593203)))

(assert (= (and b!2514025 (is-ElementMatch!7476 (regTwo!15465 r!27340))) b!2514498))

(assert (= (and b!2514025 (is-Concat!12172 (regTwo!15465 r!27340))) b!2514499))

(assert (= (and b!2514025 (is-Star!7476 (regTwo!15465 r!27340))) b!2514500))

(assert (= (and b!2514025 (is-Union!7476 (regTwo!15465 r!27340))) b!2514501))

(declare-fun b!2514505 () Bool)

(declare-fun e!1593204 () Bool)

(declare-fun tp!803725 () Bool)

(declare-fun tp!803722 () Bool)

(assert (=> b!2514505 (= e!1593204 (and tp!803725 tp!803722))))

(declare-fun b!2514503 () Bool)

(declare-fun tp!803723 () Bool)

(declare-fun tp!803724 () Bool)

(assert (=> b!2514503 (= e!1593204 (and tp!803723 tp!803724))))

(declare-fun b!2514502 () Bool)

(assert (=> b!2514502 (= e!1593204 tp_is_empty!12807)))

(declare-fun b!2514504 () Bool)

(declare-fun tp!803726 () Bool)

(assert (=> b!2514504 (= e!1593204 tp!803726)))

(assert (=> b!2514027 (= tp!803675 e!1593204)))

(assert (= (and b!2514027 (is-ElementMatch!7476 (reg!7805 r!27340))) b!2514502))

(assert (= (and b!2514027 (is-Concat!12172 (reg!7805 r!27340))) b!2514503))

(assert (= (and b!2514027 (is-Star!7476 (reg!7805 r!27340))) b!2514504))

(assert (= (and b!2514027 (is-Union!7476 (reg!7805 r!27340))) b!2514505))

(declare-fun b!2514509 () Bool)

(declare-fun e!1593205 () Bool)

(declare-fun tp!803730 () Bool)

(declare-fun tp!803727 () Bool)

(assert (=> b!2514509 (= e!1593205 (and tp!803730 tp!803727))))

(declare-fun b!2514507 () Bool)

(declare-fun tp!803728 () Bool)

(declare-fun tp!803729 () Bool)

(assert (=> b!2514507 (= e!1593205 (and tp!803728 tp!803729))))

(declare-fun b!2514506 () Bool)

(assert (=> b!2514506 (= e!1593205 tp_is_empty!12807)))

(declare-fun b!2514508 () Bool)

(declare-fun tp!803731 () Bool)

(assert (=> b!2514508 (= e!1593205 tp!803731)))

(assert (=> b!2514029 (= tp!803680 e!1593205)))

(assert (= (and b!2514029 (is-ElementMatch!7476 (regOne!15464 r!27340))) b!2514506))

(assert (= (and b!2514029 (is-Concat!12172 (regOne!15464 r!27340))) b!2514507))

(assert (= (and b!2514029 (is-Star!7476 (regOne!15464 r!27340))) b!2514508))

(assert (= (and b!2514029 (is-Union!7476 (regOne!15464 r!27340))) b!2514509))

(declare-fun b!2514513 () Bool)

(declare-fun e!1593206 () Bool)

(declare-fun tp!803735 () Bool)

(declare-fun tp!803732 () Bool)

(assert (=> b!2514513 (= e!1593206 (and tp!803735 tp!803732))))

(declare-fun b!2514511 () Bool)

(declare-fun tp!803733 () Bool)

(declare-fun tp!803734 () Bool)

(assert (=> b!2514511 (= e!1593206 (and tp!803733 tp!803734))))

(declare-fun b!2514510 () Bool)

(assert (=> b!2514510 (= e!1593206 tp_is_empty!12807)))

(declare-fun b!2514512 () Bool)

(declare-fun tp!803736 () Bool)

(assert (=> b!2514512 (= e!1593206 tp!803736)))

(assert (=> b!2514029 (= tp!803679 e!1593206)))

(assert (= (and b!2514029 (is-ElementMatch!7476 (regTwo!15464 r!27340))) b!2514510))

(assert (= (and b!2514029 (is-Concat!12172 (regTwo!15464 r!27340))) b!2514511))

(assert (= (and b!2514029 (is-Star!7476 (regTwo!15464 r!27340))) b!2514512))

(assert (= (and b!2514029 (is-Union!7476 (regTwo!15464 r!27340))) b!2514513))

(push 1)

(assert (not bm!156164))

(assert (not d!717122))

(assert (not d!717126))

(assert (not b!2514130))

(assert (not d!717142))

(assert (not d!717138))

(assert (not d!717108))

(assert (not b!2514128))

(assert (not b!2514345))

(assert (not b!2514281))

(assert (not b!2514308))

(assert (not b!2514496))

(assert (not bm!156169))

(assert (not b!2514336))

(assert (not b!2514497))

(assert (not b!2514327))

(assert (not b!2514216))

(assert (not bm!156178))

(assert tp_is_empty!12807)

(assert (not d!717168))

(assert (not d!717110))

(assert (not bm!156158))

(assert (not b!2514511))

(assert (not d!717092))

(assert (not b!2514430))

(assert (not b!2514446))

(assert (not b!2514449))

(assert (not d!717112))

(assert (not b!2514458))

(assert (not b!2514273))

(assert (not b!2514318))

(assert (not b!2514444))

(assert (not d!717166))

(assert (not b!2514472))

(assert (not b!2514125))

(assert (not bm!156179))

(assert (not b!2514452))

(assert (not b!2514500))

(assert (not b!2514187))

(assert (not b!2514423))

(assert (not b!2514466))

(assert (not b!2514428))

(assert (not bm!156180))

(assert (not b!2514424))

(assert (not b!2514447))

(assert (not b!2514323))

(assert (not b!2514426))

(assert (not b!2514513))

(assert (not b!2514127))

(assert (not bm!156184))

(assert (not b!2514279))

(assert (not b!2514284))

(assert (not b!2514507))

(assert (not b!2514427))

(assert (not b!2514320))

(assert (not bm!156159))

(assert (not b!2514133))

(assert (not d!717118))

(assert (not b!2514315))

(assert (not b!2514317))

(assert (not d!717156))

(assert (not b!2514277))

(assert (not b!2514499))

(assert (not b!2514335))

(assert (not b!2514338))

(assert (not b!2514503))

(assert (not b!2514505))

(assert (not d!717160))

(assert (not b!2514504))

(assert (not bm!156123))

(assert (not bm!156185))

(assert (not b!2514333))

(assert (not b!2514501))

(assert (not b!2514375))

(assert (not b!2514495))

(assert (not b!2514512))

(assert (not bm!156133))

(assert (not b!2514291))

(assert (not b!2514483))

(assert (not b!2514341))

(assert (not d!717124))

(assert (not b!2514287))

(assert (not b!2514509))

(assert (not bm!156170))

(assert (not d!717102))

(assert (not b!2514307))

(assert (not d!717162))

(assert (not d!717116))

(assert (not b!2514374))

(assert (not bm!156134))

(assert (not d!717104))

(assert (not b!2514282))

(assert (not b!2514456))

(assert (not d!717136))

(assert (not b!2514508))

(assert (not b!2514137))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

