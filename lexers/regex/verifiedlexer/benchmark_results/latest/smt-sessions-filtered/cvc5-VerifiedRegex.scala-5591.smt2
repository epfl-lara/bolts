; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!280314 () Bool)

(assert start!280314)

(declare-fun b!2871846 () Bool)

(declare-fun e!1817587 () Bool)

(declare-fun e!1817588 () Bool)

(assert (=> b!2871846 (= e!1817587 e!1817588)))

(declare-fun res!1191402 () Bool)

(assert (=> b!2871846 (=> (not res!1191402) (not e!1817588))))

(declare-datatypes ((C!17654 0))(
  ( (C!17655 (val!10861 Int)) )
))
(declare-datatypes ((List!34501 0))(
  ( (Nil!34377) (Cons!34377 (h!39797 C!17654) (t!233544 List!34501)) )
))
(declare-datatypes ((Option!6411 0))(
  ( (None!6410) (Some!6410 (v!34532 List!34501)) )
))
(declare-fun lt!1018067 () Option!6411)

(assert (=> b!2871846 (= res!1191402 (is-Some!6410 lt!1018067))))

(declare-datatypes ((Regex!8736 0))(
  ( (ElementMatch!8736 (c!464701 C!17654)) (Concat!14057 (regOne!17984 Regex!8736) (regTwo!17984 Regex!8736)) (EmptyExpr!8736) (Star!8736 (reg!9065 Regex!8736)) (EmptyLang!8736) (Union!8736 (regOne!17985 Regex!8736) (regTwo!17985 Regex!8736)) )
))
(declare-datatypes ((List!34502 0))(
  ( (Nil!34378) (Cons!34378 (h!39798 Regex!8736) (t!233545 List!34502)) )
))
(declare-datatypes ((Context!5392 0))(
  ( (Context!5393 (exprs!3196 List!34502)) )
))
(declare-fun c!7184 () Context!5392)

(declare-fun getLanguageWitness!423 (Regex!8736) Option!6411)

(assert (=> b!2871846 (= lt!1018067 (getLanguageWitness!423 (h!39798 (exprs!3196 c!7184))))))

(declare-fun res!1191406 () Bool)

(assert (=> start!280314 (=> (not res!1191406) (not e!1817587))))

(declare-fun lostCause!828 (Context!5392) Bool)

(assert (=> start!280314 (= res!1191406 (not (lostCause!828 c!7184)))))

(assert (=> start!280314 e!1817587))

(declare-fun e!1817586 () Bool)

(declare-fun inv!46428 (Context!5392) Bool)

(assert (=> start!280314 (and (inv!46428 c!7184) e!1817586)))

(declare-fun b!2871847 () Bool)

(declare-fun res!1191403 () Bool)

(assert (=> b!2871847 (=> (not res!1191403) (not e!1817587))))

(assert (=> b!2871847 (= res!1191403 (is-Cons!34378 (exprs!3196 c!7184)))))

(declare-fun b!2871848 () Bool)

(declare-fun e!1817590 () Bool)

(declare-fun e!1817589 () Bool)

(assert (=> b!2871848 (= e!1817590 (not e!1817589))))

(declare-fun res!1191404 () Bool)

(assert (=> b!2871848 (=> res!1191404 e!1817589)))

(declare-fun matchR!3736 (Regex!8736 List!34501) Bool)

(assert (=> b!2871848 (= res!1191404 (not (matchR!3736 (h!39798 (exprs!3196 c!7184)) (v!34532 lt!1018067))))))

(declare-fun lt!1018068 () Context!5392)

(declare-fun lt!1018066 () Option!6411)

(declare-fun matchZipper!478 ((Set Context!5392) List!34501) Bool)

(declare-fun get!10331 (Option!6411) List!34501)

(assert (=> b!2871848 (matchZipper!478 (set.insert lt!1018068 (as set.empty (Set Context!5392))) (get!10331 lt!1018066))))

(declare-datatypes ((Unit!47973 0))(
  ( (Unit!47974) )
))
(declare-fun lt!1018069 () Unit!47973)

(declare-fun lemmaGetWitnessMatchesContext!35 (Context!5392) Unit!47973)

(assert (=> b!2871848 (= lt!1018069 (lemmaGetWitnessMatchesContext!35 lt!1018068))))

(assert (=> b!2871848 (matchR!3736 (h!39798 (exprs!3196 c!7184)) (get!10331 lt!1018067))))

(declare-fun lt!1018070 () Unit!47973)

(declare-fun lemmaGetWitnessMatches!43 (Regex!8736) Unit!47973)

(assert (=> b!2871848 (= lt!1018070 (lemmaGetWitnessMatches!43 (h!39798 (exprs!3196 c!7184))))))

(declare-fun b!2871849 () Bool)

(declare-fun tp!923467 () Bool)

(assert (=> b!2871849 (= e!1817586 tp!923467)))

(declare-fun b!2871850 () Bool)

(assert (=> b!2871850 (= e!1817588 e!1817590)))

(declare-fun res!1191405 () Bool)

(assert (=> b!2871850 (=> (not res!1191405) (not e!1817590))))

(assert (=> b!2871850 (= res!1191405 (is-Some!6410 lt!1018066))))

(declare-fun getLanguageWitness!424 (Context!5392) Option!6411)

(assert (=> b!2871850 (= lt!1018066 (getLanguageWitness!424 lt!1018068))))

(assert (=> b!2871850 (= lt!1018068 (Context!5393 (t!233545 (exprs!3196 c!7184))))))

(declare-fun b!2871851 () Bool)

(declare-fun validRegex!3514 (Regex!8736) Bool)

(assert (=> b!2871851 (= e!1817589 (validRegex!3514 (h!39798 (exprs!3196 c!7184))))))

(assert (= (and start!280314 res!1191406) b!2871847))

(assert (= (and b!2871847 res!1191403) b!2871846))

(assert (= (and b!2871846 res!1191402) b!2871850))

(assert (= (and b!2871850 res!1191405) b!2871848))

(assert (= (and b!2871848 (not res!1191404)) b!2871851))

(assert (= start!280314 b!2871849))

(declare-fun m!3290319 () Bool)

(assert (=> start!280314 m!3290319))

(declare-fun m!3290321 () Bool)

(assert (=> start!280314 m!3290321))

(declare-fun m!3290323 () Bool)

(assert (=> b!2871848 m!3290323))

(declare-fun m!3290325 () Bool)

(assert (=> b!2871848 m!3290325))

(declare-fun m!3290327 () Bool)

(assert (=> b!2871848 m!3290327))

(declare-fun m!3290329 () Bool)

(assert (=> b!2871848 m!3290329))

(declare-fun m!3290331 () Bool)

(assert (=> b!2871848 m!3290331))

(declare-fun m!3290333 () Bool)

(assert (=> b!2871848 m!3290333))

(declare-fun m!3290335 () Bool)

(assert (=> b!2871848 m!3290335))

(declare-fun m!3290337 () Bool)

(assert (=> b!2871848 m!3290337))

(assert (=> b!2871848 m!3290323))

(assert (=> b!2871848 m!3290329))

(assert (=> b!2871848 m!3290327))

(declare-fun m!3290339 () Bool)

(assert (=> b!2871851 m!3290339))

(declare-fun m!3290341 () Bool)

(assert (=> b!2871846 m!3290341))

(declare-fun m!3290343 () Bool)

(assert (=> b!2871850 m!3290343))

(push 1)

(assert (not b!2871848))

(assert (not b!2871851))

(assert (not b!2871850))

(assert (not b!2871846))

(assert (not b!2871849))

(assert (not start!280314))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2871956 () Bool)

(declare-fun c!464735 () Bool)

(declare-fun lt!1018109 () Option!6411)

(assert (=> b!2871956 (= c!464735 (is-Some!6410 lt!1018109))))

(assert (=> b!2871956 (= lt!1018109 (getLanguageWitness!424 (Context!5393 (t!233545 (exprs!3196 lt!1018068)))))))

(declare-fun e!1817649 () Option!6411)

(declare-fun e!1817650 () Option!6411)

(assert (=> b!2871956 (= e!1817649 e!1817650)))

(declare-fun b!2871957 () Bool)

(declare-fun e!1817651 () Option!6411)

(assert (=> b!2871957 (= e!1817651 e!1817649)))

(declare-fun lt!1018108 () Option!6411)

(assert (=> b!2871957 (= lt!1018108 (getLanguageWitness!423 (h!39798 (exprs!3196 lt!1018068))))))

(declare-fun c!464733 () Bool)

(assert (=> b!2871957 (= c!464733 (is-Some!6410 lt!1018108))))

(declare-fun b!2871959 () Bool)

(declare-fun ++!8173 (List!34501 List!34501) List!34501)

(assert (=> b!2871959 (= e!1817650 (Some!6410 (++!8173 (v!34532 lt!1018108) (v!34532 lt!1018109))))))

(declare-fun b!2871960 () Bool)

(assert (=> b!2871960 (= e!1817649 None!6410)))

(declare-fun b!2871961 () Bool)

(assert (=> b!2871961 (= e!1817650 None!6410)))

(declare-fun d!830018 () Bool)

(declare-fun lt!1018110 () Option!6411)

(declare-fun lambda!107113 () Int)

(declare-fun isEmpty!18714 (Option!6411) Bool)

(declare-fun exists!1159 (List!34502 Int) Bool)

(assert (=> d!830018 (= (isEmpty!18714 lt!1018110) (exists!1159 (exprs!3196 lt!1018068) lambda!107113))))

(assert (=> d!830018 (= lt!1018110 e!1817651)))

(declare-fun c!464734 () Bool)

(assert (=> d!830018 (= c!464734 (is-Cons!34378 (exprs!3196 lt!1018068)))))

(assert (=> d!830018 (= (getLanguageWitness!424 lt!1018068) lt!1018110)))

(declare-fun b!2871958 () Bool)

(assert (=> b!2871958 (= e!1817651 (Some!6410 Nil!34377))))

(assert (= (and d!830018 c!464734) b!2871957))

(assert (= (and d!830018 (not c!464734)) b!2871958))

(assert (= (and b!2871957 c!464733) b!2871956))

(assert (= (and b!2871957 (not c!464733)) b!2871960))

(assert (= (and b!2871956 c!464735) b!2871959))

(assert (= (and b!2871956 (not c!464735)) b!2871961))

(declare-fun m!3290423 () Bool)

(assert (=> b!2871956 m!3290423))

(declare-fun m!3290425 () Bool)

(assert (=> b!2871957 m!3290425))

(declare-fun m!3290427 () Bool)

(assert (=> b!2871959 m!3290427))

(declare-fun m!3290429 () Bool)

(assert (=> d!830018 m!3290429))

(declare-fun m!3290431 () Bool)

(assert (=> d!830018 m!3290431))

(assert (=> b!2871850 d!830018))

(declare-fun bm!185534 () Bool)

(declare-fun call!185540 () Bool)

(declare-fun call!185539 () Bool)

(assert (=> bm!185534 (= call!185540 call!185539)))

(declare-fun b!2871980 () Bool)

(declare-fun res!1191468 () Bool)

(declare-fun e!1817671 () Bool)

(assert (=> b!2871980 (=> res!1191468 e!1817671)))

(assert (=> b!2871980 (= res!1191468 (not (is-Concat!14057 (h!39798 (exprs!3196 c!7184)))))))

(declare-fun e!1817672 () Bool)

(assert (=> b!2871980 (= e!1817672 e!1817671)))

(declare-fun b!2871981 () Bool)

(declare-fun e!1817670 () Bool)

(assert (=> b!2871981 (= e!1817670 e!1817672)))

(declare-fun c!464740 () Bool)

(assert (=> b!2871981 (= c!464740 (is-Union!8736 (h!39798 (exprs!3196 c!7184))))))

(declare-fun d!830034 () Bool)

(declare-fun res!1191465 () Bool)

(declare-fun e!1817668 () Bool)

(assert (=> d!830034 (=> res!1191465 e!1817668)))

(assert (=> d!830034 (= res!1191465 (is-ElementMatch!8736 (h!39798 (exprs!3196 c!7184))))))

(assert (=> d!830034 (= (validRegex!3514 (h!39798 (exprs!3196 c!7184))) e!1817668)))

(declare-fun b!2871982 () Bool)

(declare-fun e!1817667 () Bool)

(declare-fun call!185541 () Bool)

(assert (=> b!2871982 (= e!1817667 call!185541)))

(declare-fun b!2871983 () Bool)

(declare-fun e!1817669 () Bool)

(assert (=> b!2871983 (= e!1817669 call!185540)))

(declare-fun b!2871984 () Bool)

(declare-fun e!1817666 () Bool)

(assert (=> b!2871984 (= e!1817670 e!1817666)))

(declare-fun res!1191464 () Bool)

(declare-fun nullable!2686 (Regex!8736) Bool)

(assert (=> b!2871984 (= res!1191464 (not (nullable!2686 (reg!9065 (h!39798 (exprs!3196 c!7184))))))))

(assert (=> b!2871984 (=> (not res!1191464) (not e!1817666))))

(declare-fun bm!185535 () Bool)

(declare-fun c!464741 () Bool)

(assert (=> bm!185535 (= call!185539 (validRegex!3514 (ite c!464741 (reg!9065 (h!39798 (exprs!3196 c!7184))) (ite c!464740 (regTwo!17985 (h!39798 (exprs!3196 c!7184))) (regOne!17984 (h!39798 (exprs!3196 c!7184)))))))))

(declare-fun bm!185536 () Bool)

(assert (=> bm!185536 (= call!185541 (validRegex!3514 (ite c!464740 (regOne!17985 (h!39798 (exprs!3196 c!7184))) (regTwo!17984 (h!39798 (exprs!3196 c!7184))))))))

(declare-fun b!2871985 () Bool)

(assert (=> b!2871985 (= e!1817668 e!1817670)))

(assert (=> b!2871985 (= c!464741 (is-Star!8736 (h!39798 (exprs!3196 c!7184))))))

(declare-fun b!2871986 () Bool)

(declare-fun res!1191467 () Bool)

(assert (=> b!2871986 (=> (not res!1191467) (not e!1817669))))

(assert (=> b!2871986 (= res!1191467 call!185541)))

(assert (=> b!2871986 (= e!1817672 e!1817669)))

(declare-fun b!2871987 () Bool)

(assert (=> b!2871987 (= e!1817671 e!1817667)))

(declare-fun res!1191466 () Bool)

(assert (=> b!2871987 (=> (not res!1191466) (not e!1817667))))

(assert (=> b!2871987 (= res!1191466 call!185540)))

(declare-fun b!2871988 () Bool)

(assert (=> b!2871988 (= e!1817666 call!185539)))

(assert (= (and d!830034 (not res!1191465)) b!2871985))

(assert (= (and b!2871985 c!464741) b!2871984))

(assert (= (and b!2871985 (not c!464741)) b!2871981))

(assert (= (and b!2871984 res!1191464) b!2871988))

(assert (= (and b!2871981 c!464740) b!2871986))

(assert (= (and b!2871981 (not c!464740)) b!2871980))

(assert (= (and b!2871986 res!1191467) b!2871983))

(assert (= (and b!2871980 (not res!1191468)) b!2871987))

(assert (= (and b!2871987 res!1191466) b!2871982))

(assert (= (or b!2871983 b!2871987) bm!185534))

(assert (= (or b!2871986 b!2871982) bm!185536))

(assert (= (or b!2871988 bm!185534) bm!185535))

(declare-fun m!3290433 () Bool)

(assert (=> b!2871984 m!3290433))

(declare-fun m!3290435 () Bool)

(assert (=> bm!185535 m!3290435))

(declare-fun m!3290437 () Bool)

(assert (=> bm!185536 m!3290437))

(assert (=> b!2871851 d!830034))

(declare-fun b!2872021 () Bool)

(declare-fun c!464762 () Bool)

(declare-fun lt!1018119 () Option!6411)

(assert (=> b!2872021 (= c!464762 (is-Some!6410 lt!1018119))))

(declare-fun call!185546 () Option!6411)

(assert (=> b!2872021 (= lt!1018119 call!185546)))

(declare-fun e!1817689 () Option!6411)

(declare-fun e!1817696 () Option!6411)

(assert (=> b!2872021 (= e!1817689 e!1817696)))

(declare-fun b!2872022 () Bool)

(declare-fun c!464759 () Bool)

(assert (=> b!2872022 (= c!464759 (is-Union!8736 (h!39798 (exprs!3196 c!7184))))))

(declare-fun e!1817691 () Option!6411)

(declare-fun e!1817690 () Option!6411)

(assert (=> b!2872022 (= e!1817691 e!1817690)))

(declare-fun b!2872023 () Bool)

(assert (=> b!2872023 (= e!1817690 e!1817689)))

(declare-fun lt!1018117 () Option!6411)

(declare-fun call!185547 () Option!6411)

(assert (=> b!2872023 (= lt!1018117 call!185547)))

(declare-fun c!464765 () Bool)

(assert (=> b!2872023 (= c!464765 (is-Some!6410 lt!1018117))))

(declare-fun b!2872024 () Bool)

(declare-fun e!1817695 () Option!6411)

(declare-fun e!1817692 () Option!6411)

(assert (=> b!2872024 (= e!1817695 e!1817692)))

(declare-fun c!464760 () Bool)

(assert (=> b!2872024 (= c!464760 (is-EmptyLang!8736 (h!39798 (exprs!3196 c!7184))))))

(declare-fun bm!185541 () Bool)

(assert (=> bm!185541 (= call!185546 (getLanguageWitness!423 (ite c!464759 (regTwo!17985 (h!39798 (exprs!3196 c!7184))) (regTwo!17984 (h!39798 (exprs!3196 c!7184))))))))

(declare-fun b!2872025 () Bool)

(declare-fun e!1817693 () Option!6411)

(assert (=> b!2872025 (= e!1817693 (Some!6410 (Cons!34377 (c!464701 (h!39798 (exprs!3196 c!7184))) Nil!34377)))))

(declare-fun b!2872026 () Bool)

(assert (=> b!2872026 (= e!1817692 None!6410)))

(declare-fun b!2872027 () Bool)

(assert (=> b!2872027 (= e!1817696 None!6410)))

(declare-fun d!830036 () Bool)

(declare-fun c!464761 () Bool)

(assert (=> d!830036 (= c!464761 (is-EmptyExpr!8736 (h!39798 (exprs!3196 c!7184))))))

(assert (=> d!830036 (= (getLanguageWitness!423 (h!39798 (exprs!3196 c!7184))) e!1817695)))

(declare-fun bm!185542 () Bool)

(assert (=> bm!185542 (= call!185547 (getLanguageWitness!423 (ite c!464759 (regOne!17985 (h!39798 (exprs!3196 c!7184))) (regOne!17984 (h!39798 (exprs!3196 c!7184))))))))

(declare-fun b!2872028 () Bool)

(declare-fun e!1817694 () Option!6411)

(declare-fun lt!1018118 () Option!6411)

(assert (=> b!2872028 (= e!1817694 lt!1018118)))

(declare-fun b!2872029 () Bool)

(declare-fun c!464764 () Bool)

(assert (=> b!2872029 (= c!464764 (is-ElementMatch!8736 (h!39798 (exprs!3196 c!7184))))))

(assert (=> b!2872029 (= e!1817692 e!1817693)))

(declare-fun b!2872030 () Bool)

(assert (=> b!2872030 (= e!1817690 e!1817694)))

(assert (=> b!2872030 (= lt!1018118 call!185547)))

(declare-fun c!464763 () Bool)

(assert (=> b!2872030 (= c!464763 (is-Some!6410 lt!1018118))))

(declare-fun b!2872031 () Bool)

(assert (=> b!2872031 (= e!1817694 call!185546)))

(declare-fun b!2872032 () Bool)

(assert (=> b!2872032 (= e!1817695 (Some!6410 Nil!34377))))

(declare-fun b!2872033 () Bool)

(assert (=> b!2872033 (= e!1817696 (Some!6410 (++!8173 (v!34532 lt!1018117) (v!34532 lt!1018119))))))

(declare-fun b!2872034 () Bool)

(assert (=> b!2872034 (= e!1817691 (Some!6410 Nil!34377))))

(declare-fun b!2872035 () Bool)

(assert (=> b!2872035 (= e!1817689 None!6410)))

(declare-fun b!2872036 () Bool)

(assert (=> b!2872036 (= e!1817693 e!1817691)))

(declare-fun c!464758 () Bool)

(assert (=> b!2872036 (= c!464758 (is-Star!8736 (h!39798 (exprs!3196 c!7184))))))

(assert (= (and d!830036 c!464761) b!2872032))

(assert (= (and d!830036 (not c!464761)) b!2872024))

(assert (= (and b!2872024 c!464760) b!2872026))

(assert (= (and b!2872024 (not c!464760)) b!2872029))

(assert (= (and b!2872029 c!464764) b!2872025))

(assert (= (and b!2872029 (not c!464764)) b!2872036))

(assert (= (and b!2872036 c!464758) b!2872034))

(assert (= (and b!2872036 (not c!464758)) b!2872022))

(assert (= (and b!2872022 c!464759) b!2872030))

(assert (= (and b!2872022 (not c!464759)) b!2872023))

(assert (= (and b!2872030 c!464763) b!2872028))

(assert (= (and b!2872030 (not c!464763)) b!2872031))

(assert (= (and b!2872023 c!464765) b!2872021))

(assert (= (and b!2872023 (not c!464765)) b!2872035))

(assert (= (and b!2872021 c!464762) b!2872033))

(assert (= (and b!2872021 (not c!464762)) b!2872027))

(assert (= (or b!2872031 b!2872021) bm!185541))

(assert (= (or b!2872030 b!2872023) bm!185542))

(declare-fun m!3290439 () Bool)

(assert (=> bm!185541 m!3290439))

(declare-fun m!3290441 () Bool)

(assert (=> bm!185542 m!3290441))

(declare-fun m!3290443 () Bool)

(assert (=> b!2872033 m!3290443))

(assert (=> b!2871846 d!830036))

(declare-fun b!2872065 () Bool)

(declare-fun e!1817714 () Bool)

(declare-fun head!6341 (List!34501) C!17654)

(assert (=> b!2872065 (= e!1817714 (not (= (head!6341 (get!10331 lt!1018067)) (c!464701 (h!39798 (exprs!3196 c!7184))))))))

(declare-fun b!2872066 () Bool)

(declare-fun e!1817711 () Bool)

(assert (=> b!2872066 (= e!1817711 (= (head!6341 (get!10331 lt!1018067)) (c!464701 (h!39798 (exprs!3196 c!7184)))))))

(declare-fun b!2872067 () Bool)

(declare-fun e!1817713 () Bool)

(assert (=> b!2872067 (= e!1817713 e!1817714)))

(declare-fun res!1191486 () Bool)

(assert (=> b!2872067 (=> res!1191486 e!1817714)))

(declare-fun call!185550 () Bool)

(assert (=> b!2872067 (= res!1191486 call!185550)))

(declare-fun b!2872068 () Bool)

(declare-fun res!1191487 () Bool)

(declare-fun e!1817715 () Bool)

(assert (=> b!2872068 (=> res!1191487 e!1817715)))

(assert (=> b!2872068 (= res!1191487 e!1817711)))

(declare-fun res!1191485 () Bool)

(assert (=> b!2872068 (=> (not res!1191485) (not e!1817711))))

(declare-fun lt!1018122 () Bool)

(assert (=> b!2872068 (= res!1191485 lt!1018122)))

(declare-fun b!2872069 () Bool)

(declare-fun res!1191489 () Bool)

(assert (=> b!2872069 (=> (not res!1191489) (not e!1817711))))

(assert (=> b!2872069 (= res!1191489 (not call!185550))))

(declare-fun b!2872070 () Bool)

(declare-fun res!1191490 () Bool)

(assert (=> b!2872070 (=> res!1191490 e!1817714)))

(declare-fun isEmpty!18715 (List!34501) Bool)

(declare-fun tail!4566 (List!34501) List!34501)

(assert (=> b!2872070 (= res!1191490 (not (isEmpty!18715 (tail!4566 (get!10331 lt!1018067)))))))

(declare-fun b!2872071 () Bool)

(declare-fun e!1817712 () Bool)

(assert (=> b!2872071 (= e!1817712 (nullable!2686 (h!39798 (exprs!3196 c!7184))))))

(declare-fun b!2872072 () Bool)

(declare-fun res!1191488 () Bool)

(assert (=> b!2872072 (=> res!1191488 e!1817715)))

(assert (=> b!2872072 (= res!1191488 (not (is-ElementMatch!8736 (h!39798 (exprs!3196 c!7184)))))))

(declare-fun e!1817717 () Bool)

(assert (=> b!2872072 (= e!1817717 e!1817715)))

(declare-fun bm!185545 () Bool)

(assert (=> bm!185545 (= call!185550 (isEmpty!18715 (get!10331 lt!1018067)))))

(declare-fun b!2872074 () Bool)

(declare-fun res!1191491 () Bool)

(assert (=> b!2872074 (=> (not res!1191491) (not e!1817711))))

(assert (=> b!2872074 (= res!1191491 (isEmpty!18715 (tail!4566 (get!10331 lt!1018067))))))

(declare-fun b!2872075 () Bool)

(declare-fun e!1817716 () Bool)

(assert (=> b!2872075 (= e!1817716 e!1817717)))

(declare-fun c!464773 () Bool)

(assert (=> b!2872075 (= c!464773 (is-EmptyLang!8736 (h!39798 (exprs!3196 c!7184))))))

(declare-fun b!2872076 () Bool)

(declare-fun derivativeStep!2319 (Regex!8736 C!17654) Regex!8736)

(assert (=> b!2872076 (= e!1817712 (matchR!3736 (derivativeStep!2319 (h!39798 (exprs!3196 c!7184)) (head!6341 (get!10331 lt!1018067))) (tail!4566 (get!10331 lt!1018067))))))

(declare-fun b!2872077 () Bool)

(assert (=> b!2872077 (= e!1817715 e!1817713)))

(declare-fun res!1191492 () Bool)

(assert (=> b!2872077 (=> (not res!1191492) (not e!1817713))))

(assert (=> b!2872077 (= res!1191492 (not lt!1018122))))

(declare-fun b!2872078 () Bool)

(assert (=> b!2872078 (= e!1817716 (= lt!1018122 call!185550))))

(declare-fun b!2872073 () Bool)

(assert (=> b!2872073 (= e!1817717 (not lt!1018122))))

(declare-fun d!830038 () Bool)

(assert (=> d!830038 e!1817716))

(declare-fun c!464772 () Bool)

(assert (=> d!830038 (= c!464772 (is-EmptyExpr!8736 (h!39798 (exprs!3196 c!7184))))))

(assert (=> d!830038 (= lt!1018122 e!1817712)))

(declare-fun c!464774 () Bool)

(assert (=> d!830038 (= c!464774 (isEmpty!18715 (get!10331 lt!1018067)))))

(assert (=> d!830038 (validRegex!3514 (h!39798 (exprs!3196 c!7184)))))

(assert (=> d!830038 (= (matchR!3736 (h!39798 (exprs!3196 c!7184)) (get!10331 lt!1018067)) lt!1018122)))

(assert (= (and d!830038 c!464774) b!2872071))

(assert (= (and d!830038 (not c!464774)) b!2872076))

(assert (= (and d!830038 c!464772) b!2872078))

(assert (= (and d!830038 (not c!464772)) b!2872075))

(assert (= (and b!2872075 c!464773) b!2872073))

(assert (= (and b!2872075 (not c!464773)) b!2872072))

(assert (= (and b!2872072 (not res!1191488)) b!2872068))

(assert (= (and b!2872068 res!1191485) b!2872069))

(assert (= (and b!2872069 res!1191489) b!2872074))

(assert (= (and b!2872074 res!1191491) b!2872066))

(assert (= (and b!2872068 (not res!1191487)) b!2872077))

(assert (= (and b!2872077 res!1191492) b!2872067))

(assert (= (and b!2872067 (not res!1191486)) b!2872070))

(assert (= (and b!2872070 (not res!1191490)) b!2872065))

(assert (= (or b!2872078 b!2872067 b!2872069) bm!185545))

(assert (=> b!2872076 m!3290323))

(declare-fun m!3290445 () Bool)

(assert (=> b!2872076 m!3290445))

(assert (=> b!2872076 m!3290445))

(declare-fun m!3290447 () Bool)

(assert (=> b!2872076 m!3290447))

(assert (=> b!2872076 m!3290323))

(declare-fun m!3290449 () Bool)

(assert (=> b!2872076 m!3290449))

(assert (=> b!2872076 m!3290447))

(assert (=> b!2872076 m!3290449))

(declare-fun m!3290451 () Bool)

(assert (=> b!2872076 m!3290451))

(declare-fun m!3290453 () Bool)

(assert (=> b!2872071 m!3290453))

(assert (=> b!2872065 m!3290323))

(assert (=> b!2872065 m!3290445))

(assert (=> d!830038 m!3290323))

(declare-fun m!3290455 () Bool)

(assert (=> d!830038 m!3290455))

(assert (=> d!830038 m!3290339))

(assert (=> b!2872074 m!3290323))

(assert (=> b!2872074 m!3290449))

(assert (=> b!2872074 m!3290449))

(declare-fun m!3290457 () Bool)

(assert (=> b!2872074 m!3290457))

(assert (=> b!2872066 m!3290323))

(assert (=> b!2872066 m!3290445))

(assert (=> b!2872070 m!3290323))

(assert (=> b!2872070 m!3290449))

(assert (=> b!2872070 m!3290449))

(assert (=> b!2872070 m!3290457))

(assert (=> bm!185545 m!3290323))

(assert (=> bm!185545 m!3290455))

(assert (=> b!2871848 d!830038))

(declare-fun d!830040 () Bool)

(assert (=> d!830040 (matchZipper!478 (set.insert lt!1018068 (as set.empty (Set Context!5392))) (get!10331 (getLanguageWitness!424 lt!1018068)))))

(declare-fun lt!1018125 () Unit!47973)

(declare-fun choose!16980 (Context!5392) Unit!47973)

(assert (=> d!830040 (= lt!1018125 (choose!16980 lt!1018068))))

(assert (=> d!830040 (not (lostCause!828 lt!1018068))))

(assert (=> d!830040 (= (lemmaGetWitnessMatchesContext!35 lt!1018068) lt!1018125)))

(declare-fun bs!522164 () Bool)

(assert (= bs!522164 d!830040))

(declare-fun m!3290459 () Bool)

(assert (=> bs!522164 m!3290459))

(declare-fun m!3290461 () Bool)

(assert (=> bs!522164 m!3290461))

(assert (=> bs!522164 m!3290327))

(declare-fun m!3290463 () Bool)

(assert (=> bs!522164 m!3290463))

(declare-fun m!3290465 () Bool)

(assert (=> bs!522164 m!3290465))

(assert (=> bs!522164 m!3290343))

(assert (=> bs!522164 m!3290463))

(assert (=> bs!522164 m!3290327))

(assert (=> bs!522164 m!3290343))

(assert (=> b!2871848 d!830040))

(declare-fun b!2872079 () Bool)

(declare-fun e!1817721 () Bool)

(assert (=> b!2872079 (= e!1817721 (not (= (head!6341 (v!34532 lt!1018067)) (c!464701 (h!39798 (exprs!3196 c!7184))))))))

(declare-fun b!2872080 () Bool)

(declare-fun e!1817718 () Bool)

(assert (=> b!2872080 (= e!1817718 (= (head!6341 (v!34532 lt!1018067)) (c!464701 (h!39798 (exprs!3196 c!7184)))))))

(declare-fun b!2872081 () Bool)

(declare-fun e!1817720 () Bool)

(assert (=> b!2872081 (= e!1817720 e!1817721)))

(declare-fun res!1191494 () Bool)

(assert (=> b!2872081 (=> res!1191494 e!1817721)))

(declare-fun call!185551 () Bool)

(assert (=> b!2872081 (= res!1191494 call!185551)))

(declare-fun b!2872082 () Bool)

(declare-fun res!1191495 () Bool)

(declare-fun e!1817722 () Bool)

(assert (=> b!2872082 (=> res!1191495 e!1817722)))

(assert (=> b!2872082 (= res!1191495 e!1817718)))

(declare-fun res!1191493 () Bool)

(assert (=> b!2872082 (=> (not res!1191493) (not e!1817718))))

(declare-fun lt!1018126 () Bool)

(assert (=> b!2872082 (= res!1191493 lt!1018126)))

(declare-fun b!2872083 () Bool)

(declare-fun res!1191497 () Bool)

(assert (=> b!2872083 (=> (not res!1191497) (not e!1817718))))

(assert (=> b!2872083 (= res!1191497 (not call!185551))))

(declare-fun b!2872084 () Bool)

(declare-fun res!1191498 () Bool)

(assert (=> b!2872084 (=> res!1191498 e!1817721)))

(assert (=> b!2872084 (= res!1191498 (not (isEmpty!18715 (tail!4566 (v!34532 lt!1018067)))))))

(declare-fun b!2872085 () Bool)

(declare-fun e!1817719 () Bool)

(assert (=> b!2872085 (= e!1817719 (nullable!2686 (h!39798 (exprs!3196 c!7184))))))

(declare-fun b!2872086 () Bool)

(declare-fun res!1191496 () Bool)

(assert (=> b!2872086 (=> res!1191496 e!1817722)))

(assert (=> b!2872086 (= res!1191496 (not (is-ElementMatch!8736 (h!39798 (exprs!3196 c!7184)))))))

(declare-fun e!1817724 () Bool)

(assert (=> b!2872086 (= e!1817724 e!1817722)))

(declare-fun bm!185546 () Bool)

(assert (=> bm!185546 (= call!185551 (isEmpty!18715 (v!34532 lt!1018067)))))

(declare-fun b!2872088 () Bool)

(declare-fun res!1191499 () Bool)

(assert (=> b!2872088 (=> (not res!1191499) (not e!1817718))))

(assert (=> b!2872088 (= res!1191499 (isEmpty!18715 (tail!4566 (v!34532 lt!1018067))))))

(declare-fun b!2872089 () Bool)

(declare-fun e!1817723 () Bool)

(assert (=> b!2872089 (= e!1817723 e!1817724)))

(declare-fun c!464777 () Bool)

(assert (=> b!2872089 (= c!464777 (is-EmptyLang!8736 (h!39798 (exprs!3196 c!7184))))))

(declare-fun b!2872090 () Bool)

(assert (=> b!2872090 (= e!1817719 (matchR!3736 (derivativeStep!2319 (h!39798 (exprs!3196 c!7184)) (head!6341 (v!34532 lt!1018067))) (tail!4566 (v!34532 lt!1018067))))))

(declare-fun b!2872091 () Bool)

(assert (=> b!2872091 (= e!1817722 e!1817720)))

(declare-fun res!1191500 () Bool)

(assert (=> b!2872091 (=> (not res!1191500) (not e!1817720))))

(assert (=> b!2872091 (= res!1191500 (not lt!1018126))))

(declare-fun b!2872092 () Bool)

(assert (=> b!2872092 (= e!1817723 (= lt!1018126 call!185551))))

(declare-fun b!2872087 () Bool)

(assert (=> b!2872087 (= e!1817724 (not lt!1018126))))

(declare-fun d!830042 () Bool)

(assert (=> d!830042 e!1817723))

(declare-fun c!464776 () Bool)

(assert (=> d!830042 (= c!464776 (is-EmptyExpr!8736 (h!39798 (exprs!3196 c!7184))))))

(assert (=> d!830042 (= lt!1018126 e!1817719)))

(declare-fun c!464778 () Bool)

(assert (=> d!830042 (= c!464778 (isEmpty!18715 (v!34532 lt!1018067)))))

(assert (=> d!830042 (validRegex!3514 (h!39798 (exprs!3196 c!7184)))))

(assert (=> d!830042 (= (matchR!3736 (h!39798 (exprs!3196 c!7184)) (v!34532 lt!1018067)) lt!1018126)))

(assert (= (and d!830042 c!464778) b!2872085))

(assert (= (and d!830042 (not c!464778)) b!2872090))

(assert (= (and d!830042 c!464776) b!2872092))

(assert (= (and d!830042 (not c!464776)) b!2872089))

(assert (= (and b!2872089 c!464777) b!2872087))

(assert (= (and b!2872089 (not c!464777)) b!2872086))

(assert (= (and b!2872086 (not res!1191496)) b!2872082))

(assert (= (and b!2872082 res!1191493) b!2872083))

(assert (= (and b!2872083 res!1191497) b!2872088))

(assert (= (and b!2872088 res!1191499) b!2872080))

(assert (= (and b!2872082 (not res!1191495)) b!2872091))

(assert (= (and b!2872091 res!1191500) b!2872081))

(assert (= (and b!2872081 (not res!1191494)) b!2872084))

(assert (= (and b!2872084 (not res!1191498)) b!2872079))

(assert (= (or b!2872092 b!2872081 b!2872083) bm!185546))

(declare-fun m!3290467 () Bool)

(assert (=> b!2872090 m!3290467))

(assert (=> b!2872090 m!3290467))

(declare-fun m!3290469 () Bool)

(assert (=> b!2872090 m!3290469))

(declare-fun m!3290471 () Bool)

(assert (=> b!2872090 m!3290471))

(assert (=> b!2872090 m!3290469))

(assert (=> b!2872090 m!3290471))

(declare-fun m!3290473 () Bool)

(assert (=> b!2872090 m!3290473))

(assert (=> b!2872085 m!3290453))

(assert (=> b!2872079 m!3290467))

(declare-fun m!3290475 () Bool)

(assert (=> d!830042 m!3290475))

(assert (=> d!830042 m!3290339))

(assert (=> b!2872088 m!3290471))

(assert (=> b!2872088 m!3290471))

(declare-fun m!3290477 () Bool)

(assert (=> b!2872088 m!3290477))

(assert (=> b!2872080 m!3290467))

(assert (=> b!2872084 m!3290471))

(assert (=> b!2872084 m!3290471))

(assert (=> b!2872084 m!3290477))

(assert (=> bm!185546 m!3290475))

(assert (=> b!2871848 d!830042))

(declare-fun d!830044 () Bool)

(declare-fun c!464781 () Bool)

(assert (=> d!830044 (= c!464781 (isEmpty!18715 (get!10331 lt!1018066)))))

(declare-fun e!1817727 () Bool)

(assert (=> d!830044 (= (matchZipper!478 (set.insert lt!1018068 (as set.empty (Set Context!5392))) (get!10331 lt!1018066)) e!1817727)))

(declare-fun b!2872097 () Bool)

(declare-fun nullableZipper!714 ((Set Context!5392)) Bool)

(assert (=> b!2872097 (= e!1817727 (nullableZipper!714 (set.insert lt!1018068 (as set.empty (Set Context!5392)))))))

(declare-fun b!2872098 () Bool)

(declare-fun derivationStepZipper!470 ((Set Context!5392) C!17654) (Set Context!5392))

(assert (=> b!2872098 (= e!1817727 (matchZipper!478 (derivationStepZipper!470 (set.insert lt!1018068 (as set.empty (Set Context!5392))) (head!6341 (get!10331 lt!1018066))) (tail!4566 (get!10331 lt!1018066))))))

(assert (= (and d!830044 c!464781) b!2872097))

(assert (= (and d!830044 (not c!464781)) b!2872098))

(assert (=> d!830044 m!3290329))

(declare-fun m!3290479 () Bool)

(assert (=> d!830044 m!3290479))

(assert (=> b!2872097 m!3290327))

(declare-fun m!3290481 () Bool)

(assert (=> b!2872097 m!3290481))

(assert (=> b!2872098 m!3290329))

(declare-fun m!3290483 () Bool)

(assert (=> b!2872098 m!3290483))

(assert (=> b!2872098 m!3290327))

(assert (=> b!2872098 m!3290483))

(declare-fun m!3290485 () Bool)

(assert (=> b!2872098 m!3290485))

(assert (=> b!2872098 m!3290329))

(declare-fun m!3290487 () Bool)

(assert (=> b!2872098 m!3290487))

(assert (=> b!2872098 m!3290485))

(assert (=> b!2872098 m!3290487))

(declare-fun m!3290489 () Bool)

(assert (=> b!2872098 m!3290489))

(assert (=> b!2871848 d!830044))

(declare-fun d!830046 () Bool)

(assert (=> d!830046 (matchR!3736 (h!39798 (exprs!3196 c!7184)) (get!10331 (getLanguageWitness!423 (h!39798 (exprs!3196 c!7184)))))))

(declare-fun lt!1018129 () Unit!47973)

(declare-fun choose!16981 (Regex!8736) Unit!47973)

(assert (=> d!830046 (= lt!1018129 (choose!16981 (h!39798 (exprs!3196 c!7184))))))

(assert (=> d!830046 (validRegex!3514 (h!39798 (exprs!3196 c!7184)))))

(assert (=> d!830046 (= (lemmaGetWitnessMatches!43 (h!39798 (exprs!3196 c!7184))) lt!1018129)))

(declare-fun bs!522165 () Bool)

(assert (= bs!522165 d!830046))

(assert (=> bs!522165 m!3290341))

(declare-fun m!3290491 () Bool)

(assert (=> bs!522165 m!3290491))

(declare-fun m!3290493 () Bool)

(assert (=> bs!522165 m!3290493))

(assert (=> bs!522165 m!3290339))

(assert (=> bs!522165 m!3290491))

(declare-fun m!3290495 () Bool)

(assert (=> bs!522165 m!3290495))

(assert (=> bs!522165 m!3290341))

(assert (=> b!2871848 d!830046))

(declare-fun d!830048 () Bool)

(assert (=> d!830048 (= (get!10331 lt!1018066) (v!34532 lt!1018066))))

(assert (=> b!2871848 d!830048))

(declare-fun d!830050 () Bool)

(assert (=> d!830050 (= (get!10331 lt!1018067) (v!34532 lt!1018067))))

(assert (=> b!2871848 d!830050))

(declare-fun bs!522166 () Bool)

(declare-fun d!830052 () Bool)

(assert (= bs!522166 (and d!830052 d!830018)))

(declare-fun lambda!107116 () Int)

(assert (=> bs!522166 (= lambda!107116 lambda!107113)))

(assert (=> d!830052 (= (lostCause!828 c!7184) (exists!1159 (exprs!3196 c!7184) lambda!107116))))

(declare-fun bs!522167 () Bool)

(assert (= bs!522167 d!830052))

(declare-fun m!3290497 () Bool)

(assert (=> bs!522167 m!3290497))

(assert (=> start!280314 d!830052))

(declare-fun bs!522168 () Bool)

(declare-fun d!830054 () Bool)

(assert (= bs!522168 (and d!830054 d!830018)))

(declare-fun lambda!107119 () Int)

(assert (=> bs!522168 (not (= lambda!107119 lambda!107113))))

(declare-fun bs!522169 () Bool)

(assert (= bs!522169 (and d!830054 d!830052)))

(assert (=> bs!522169 (not (= lambda!107119 lambda!107116))))

(declare-fun forall!7081 (List!34502 Int) Bool)

(assert (=> d!830054 (= (inv!46428 c!7184) (forall!7081 (exprs!3196 c!7184) lambda!107119))))

(declare-fun bs!522170 () Bool)

(assert (= bs!522170 d!830054))

(declare-fun m!3290499 () Bool)

(assert (=> bs!522170 m!3290499))

(assert (=> start!280314 d!830054))

(declare-fun b!2872103 () Bool)

(declare-fun e!1817730 () Bool)

(declare-fun tp!923475 () Bool)

(declare-fun tp!923476 () Bool)

(assert (=> b!2872103 (= e!1817730 (and tp!923475 tp!923476))))

(assert (=> b!2871849 (= tp!923467 e!1817730)))

(assert (= (and b!2871849 (is-Cons!34378 (exprs!3196 c!7184))) b!2872103))

(push 1)

(assert (not d!830044))

(assert (not b!2872103))

(assert (not d!830018))

(assert (not bm!185545))

(assert (not b!2872097))

(assert (not b!2872084))

(assert (not b!2872076))

(assert (not b!2871984))

(assert (not b!2872066))

(assert (not b!2872074))

(assert (not b!2871956))

(assert (not b!2872065))

(assert (not b!2872033))

(assert (not d!830038))

(assert (not bm!185535))

(assert (not b!2872088))

(assert (not d!830046))

(assert (not bm!185541))

(assert (not b!2871957))

(assert (not d!830042))

(assert (not d!830052))

(assert (not d!830040))

(assert (not b!2872085))

(assert (not b!2872079))

(assert (not b!2872098))

(assert (not bm!185546))

(assert (not d!830054))

(assert (not bm!185536))

(assert (not bm!185542))

(assert (not b!2872070))

(assert (not b!2872080))

(assert (not b!2872090))

(assert (not b!2871959))

(assert (not b!2872071))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

