; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!233194 () Bool)

(assert start!233194)

(declare-fun b!2376381 () Bool)

(assert (=> b!2376381 true))

(assert (=> b!2376381 true))

(declare-fun lambda!88268 () Int)

(declare-fun lambda!88267 () Int)

(assert (=> b!2376381 (not (= lambda!88268 lambda!88267))))

(assert (=> b!2376381 true))

(assert (=> b!2376381 true))

(declare-fun b!2376367 () Bool)

(declare-fun res!1008978 () Bool)

(declare-fun e!1516165 () Bool)

(assert (=> b!2376367 (=> res!1008978 e!1516165)))

(declare-datatypes ((C!14086 0))(
  ( (C!14087 (val!8285 Int)) )
))
(declare-datatypes ((Regex!6964 0))(
  ( (ElementMatch!6964 (c!377748 C!14086)) (Concat!11600 (regOne!14440 Regex!6964) (regTwo!14440 Regex!6964)) (EmptyExpr!6964) (Star!6964 (reg!7293 Regex!6964)) (EmptyLang!6964) (Union!6964 (regOne!14441 Regex!6964) (regTwo!14441 Regex!6964)) )
))
(declare-datatypes ((List!28166 0))(
  ( (Nil!28068) (Cons!28068 (h!33469 Regex!6964) (t!208143 List!28166)) )
))
(declare-fun l!9164 () List!28166)

(declare-fun isEmpty!16010 (List!28166) Bool)

(assert (=> b!2376367 (= res!1008978 (isEmpty!16010 l!9164))))

(declare-fun b!2376368 () Bool)

(declare-fun e!1516159 () Bool)

(declare-fun e!1516166 () Bool)

(assert (=> b!2376368 (= e!1516159 e!1516166)))

(declare-fun res!1008975 () Bool)

(assert (=> b!2376368 (=> res!1008975 e!1516166)))

(declare-fun lt!867133 () Regex!6964)

(declare-datatypes ((List!28167 0))(
  ( (Nil!28069) (Cons!28069 (h!33470 C!14086) (t!208144 List!28167)) )
))
(declare-fun s!9460 () List!28167)

(declare-fun matchR!3081 (Regex!6964 List!28167) Bool)

(assert (=> b!2376368 (= res!1008975 (matchR!3081 lt!867133 s!9460))))

(declare-fun head!5165 (List!28166) Regex!6964)

(assert (=> b!2376368 (= lt!867133 (head!5165 l!9164))))

(declare-fun b!2376369 () Bool)

(declare-fun e!1516161 () Bool)

(declare-fun tp_is_empty!11341 () Bool)

(assert (=> b!2376369 (= e!1516161 tp_is_empty!11341)))

(declare-fun b!2376370 () Bool)

(declare-fun e!1516160 () Bool)

(declare-fun tp!759053 () Bool)

(assert (=> b!2376370 (= e!1516160 (and tp_is_empty!11341 tp!759053))))

(declare-fun b!2376371 () Bool)

(declare-fun tp!759051 () Bool)

(assert (=> b!2376371 (= e!1516161 tp!759051)))

(declare-fun b!2376372 () Bool)

(declare-fun e!1516164 () Bool)

(declare-fun e!1516163 () Bool)

(assert (=> b!2376372 (= e!1516164 (not e!1516163))))

(declare-fun res!1008973 () Bool)

(assert (=> b!2376372 (=> res!1008973 e!1516163)))

(declare-fun r!13927 () Regex!6964)

(assert (=> b!2376372 (= res!1008973 (not (is-Concat!11600 r!13927)))))

(declare-fun lt!867130 () Bool)

(declare-fun lt!867136 () Bool)

(assert (=> b!2376372 (= lt!867130 lt!867136)))

(declare-fun matchRSpec!813 (Regex!6964 List!28167) Bool)

(assert (=> b!2376372 (= lt!867136 (matchRSpec!813 r!13927 s!9460))))

(assert (=> b!2376372 (= lt!867130 (matchR!3081 r!13927 s!9460))))

(declare-datatypes ((Unit!40963 0))(
  ( (Unit!40964) )
))
(declare-fun lt!867131 () Unit!40963)

(declare-fun mainMatchTheorem!813 (Regex!6964 List!28167) Unit!40963)

(assert (=> b!2376372 (= lt!867131 (mainMatchTheorem!813 r!13927 s!9460))))

(declare-fun b!2376373 () Bool)

(declare-fun res!1008974 () Bool)

(assert (=> b!2376373 (=> (not res!1008974) (not e!1516164))))

(declare-fun generalisedConcat!65 (List!28166) Regex!6964)

(assert (=> b!2376373 (= res!1008974 (= r!13927 (generalisedConcat!65 l!9164)))))

(declare-fun b!2376374 () Bool)

(assert (=> b!2376374 (= e!1516165 e!1516159)))

(declare-fun res!1008979 () Bool)

(assert (=> b!2376374 (=> res!1008979 e!1516159)))

(declare-fun lt!867134 () List!28166)

(assert (=> b!2376374 (= res!1008979 (not (isEmpty!16010 lt!867134)))))

(declare-fun tail!3435 (List!28166) List!28166)

(assert (=> b!2376374 (= lt!867134 (tail!3435 l!9164))))

(declare-fun b!2376376 () Bool)

(declare-fun res!1008981 () Bool)

(assert (=> b!2376376 (=> res!1008981 e!1516159)))

(assert (=> b!2376376 (= res!1008981 (not (= (generalisedConcat!65 lt!867134) EmptyExpr!6964)))))

(declare-fun b!2376377 () Bool)

(declare-fun res!1008977 () Bool)

(assert (=> b!2376377 (=> res!1008977 e!1516166)))

(declare-datatypes ((tuple2!27792 0))(
  ( (tuple2!27793 (_1!16437 List!28167) (_2!16437 List!28167)) )
))
(declare-datatypes ((Option!5507 0))(
  ( (None!5506) (Some!5506 (v!30914 tuple2!27792)) )
))
(declare-fun isDefined!4335 (Option!5507) Bool)

(declare-fun findConcatSeparation!615 (Regex!6964 Regex!6964 List!28167 List!28167 List!28167) Option!5507)

(assert (=> b!2376377 (= res!1008977 (not (isDefined!4335 (findConcatSeparation!615 lt!867133 EmptyExpr!6964 Nil!28069 s!9460 s!9460))))))

(declare-fun b!2376378 () Bool)

(declare-fun tp!759054 () Bool)

(declare-fun tp!759049 () Bool)

(assert (=> b!2376378 (= e!1516161 (and tp!759054 tp!759049))))

(declare-fun b!2376379 () Bool)

(declare-fun e!1516162 () Bool)

(declare-fun tp!759048 () Bool)

(declare-fun tp!759055 () Bool)

(assert (=> b!2376379 (= e!1516162 (and tp!759048 tp!759055))))

(declare-fun res!1008976 () Bool)

(assert (=> start!233194 (=> (not res!1008976) (not e!1516164))))

(declare-fun lambda!88266 () Int)

(declare-fun forall!5598 (List!28166 Int) Bool)

(assert (=> start!233194 (= res!1008976 (forall!5598 l!9164 lambda!88266))))

(assert (=> start!233194 e!1516164))

(assert (=> start!233194 e!1516162))

(assert (=> start!233194 e!1516161))

(assert (=> start!233194 e!1516160))

(declare-fun b!2376375 () Bool)

(assert (=> b!2376375 (= e!1516166 (not (= l!9164 Nil!28068)))))

(declare-fun b!2376380 () Bool)

(declare-fun tp!759052 () Bool)

(declare-fun tp!759050 () Bool)

(assert (=> b!2376380 (= e!1516161 (and tp!759052 tp!759050))))

(assert (=> b!2376381 (= e!1516163 e!1516165)))

(declare-fun res!1008980 () Bool)

(assert (=> b!2376381 (=> res!1008980 e!1516165)))

(declare-fun lt!867129 () Bool)

(assert (=> b!2376381 (= res!1008980 (not (= lt!867136 lt!867129)))))

(declare-fun Exists!1026 (Int) Bool)

(assert (=> b!2376381 (= (Exists!1026 lambda!88267) (Exists!1026 lambda!88268))))

(declare-fun lt!867135 () Unit!40963)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!365 (Regex!6964 Regex!6964 List!28167) Unit!40963)

(assert (=> b!2376381 (= lt!867135 (lemmaExistCutMatchRandMatchRSpecEquivalent!365 (regOne!14440 r!13927) (regTwo!14440 r!13927) s!9460))))

(assert (=> b!2376381 (= lt!867129 (Exists!1026 lambda!88267))))

(assert (=> b!2376381 (= lt!867129 (isDefined!4335 (findConcatSeparation!615 (regOne!14440 r!13927) (regTwo!14440 r!13927) Nil!28069 s!9460 s!9460)))))

(declare-fun lt!867132 () Unit!40963)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!615 (Regex!6964 Regex!6964 List!28167) Unit!40963)

(assert (=> b!2376381 (= lt!867132 (lemmaFindConcatSeparationEquivalentToExists!615 (regOne!14440 r!13927) (regTwo!14440 r!13927) s!9460))))

(assert (= (and start!233194 res!1008976) b!2376373))

(assert (= (and b!2376373 res!1008974) b!2376372))

(assert (= (and b!2376372 (not res!1008973)) b!2376381))

(assert (= (and b!2376381 (not res!1008980)) b!2376367))

(assert (= (and b!2376367 (not res!1008978)) b!2376374))

(assert (= (and b!2376374 (not res!1008979)) b!2376376))

(assert (= (and b!2376376 (not res!1008981)) b!2376368))

(assert (= (and b!2376368 (not res!1008975)) b!2376377))

(assert (= (and b!2376377 (not res!1008977)) b!2376375))

(assert (= (and start!233194 (is-Cons!28068 l!9164)) b!2376379))

(assert (= (and start!233194 (is-ElementMatch!6964 r!13927)) b!2376369))

(assert (= (and start!233194 (is-Concat!11600 r!13927)) b!2376378))

(assert (= (and start!233194 (is-Star!6964 r!13927)) b!2376371))

(assert (= (and start!233194 (is-Union!6964 r!13927)) b!2376380))

(assert (= (and start!233194 (is-Cons!28069 s!9460)) b!2376370))

(declare-fun m!2781883 () Bool)

(assert (=> b!2376372 m!2781883))

(declare-fun m!2781885 () Bool)

(assert (=> b!2376372 m!2781885))

(declare-fun m!2781887 () Bool)

(assert (=> b!2376372 m!2781887))

(declare-fun m!2781889 () Bool)

(assert (=> b!2376368 m!2781889))

(declare-fun m!2781891 () Bool)

(assert (=> b!2376368 m!2781891))

(declare-fun m!2781893 () Bool)

(assert (=> b!2376377 m!2781893))

(assert (=> b!2376377 m!2781893))

(declare-fun m!2781895 () Bool)

(assert (=> b!2376377 m!2781895))

(declare-fun m!2781897 () Bool)

(assert (=> b!2376373 m!2781897))

(declare-fun m!2781899 () Bool)

(assert (=> start!233194 m!2781899))

(declare-fun m!2781901 () Bool)

(assert (=> b!2376381 m!2781901))

(declare-fun m!2781903 () Bool)

(assert (=> b!2376381 m!2781903))

(declare-fun m!2781905 () Bool)

(assert (=> b!2376381 m!2781905))

(assert (=> b!2376381 m!2781901))

(declare-fun m!2781907 () Bool)

(assert (=> b!2376381 m!2781907))

(declare-fun m!2781909 () Bool)

(assert (=> b!2376381 m!2781909))

(declare-fun m!2781911 () Bool)

(assert (=> b!2376381 m!2781911))

(assert (=> b!2376381 m!2781909))

(declare-fun m!2781913 () Bool)

(assert (=> b!2376376 m!2781913))

(declare-fun m!2781915 () Bool)

(assert (=> b!2376367 m!2781915))

(declare-fun m!2781917 () Bool)

(assert (=> b!2376374 m!2781917))

(declare-fun m!2781919 () Bool)

(assert (=> b!2376374 m!2781919))

(push 1)

(assert (not b!2376376))

(assert (not b!2376377))

(assert (not b!2376367))

(assert (not b!2376380))

(assert (not b!2376370))

(assert (not b!2376371))

(assert tp_is_empty!11341)

(assert (not b!2376373))

(assert (not b!2376368))

(assert (not b!2376372))

(assert (not b!2376379))

(assert (not b!2376374))

(assert (not b!2376378))

(assert (not start!233194))

(assert (not b!2376381))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!696071 () Bool)

(assert (=> d!696071 (= (isEmpty!16010 l!9164) (is-Nil!28068 l!9164))))

(assert (=> b!2376367 d!696071))

(declare-fun bs!461583 () Bool)

(declare-fun b!2376495 () Bool)

(assert (= bs!461583 (and b!2376495 b!2376381)))

(declare-fun lambda!88286 () Int)

(assert (=> bs!461583 (not (= lambda!88286 lambda!88267))))

(assert (=> bs!461583 (not (= lambda!88286 lambda!88268))))

(assert (=> b!2376495 true))

(assert (=> b!2376495 true))

(declare-fun bs!461584 () Bool)

(declare-fun b!2376498 () Bool)

(assert (= bs!461584 (and b!2376498 b!2376381)))

(declare-fun lambda!88287 () Int)

(assert (=> bs!461584 (not (= lambda!88287 lambda!88267))))

(assert (=> bs!461584 (= lambda!88287 lambda!88268)))

(declare-fun bs!461585 () Bool)

(assert (= bs!461585 (and b!2376498 b!2376495)))

(assert (=> bs!461585 (not (= lambda!88287 lambda!88286))))

(assert (=> b!2376498 true))

(assert (=> b!2376498 true))

(declare-fun b!2376489 () Bool)

(declare-fun e!1516225 () Bool)

(declare-fun e!1516226 () Bool)

(assert (=> b!2376489 (= e!1516225 e!1516226)))

(declare-fun res!1009041 () Bool)

(assert (=> b!2376489 (= res!1009041 (not (is-EmptyLang!6964 r!13927)))))

(assert (=> b!2376489 (=> (not res!1009041) (not e!1516226))))

(declare-fun b!2376490 () Bool)

(declare-fun call!144424 () Bool)

(assert (=> b!2376490 (= e!1516225 call!144424)))

(declare-fun b!2376491 () Bool)

(declare-fun e!1516227 () Bool)

(assert (=> b!2376491 (= e!1516227 (matchRSpec!813 (regTwo!14441 r!13927) s!9460))))

(declare-fun b!2376492 () Bool)

(declare-fun e!1516224 () Bool)

(assert (=> b!2376492 (= e!1516224 (= s!9460 (Cons!28069 (c!377748 r!13927) Nil!28069)))))

(declare-fun b!2376493 () Bool)

(declare-fun e!1516222 () Bool)

(declare-fun e!1516221 () Bool)

(assert (=> b!2376493 (= e!1516222 e!1516221)))

(declare-fun c!377765 () Bool)

(assert (=> b!2376493 (= c!377765 (is-Star!6964 r!13927))))

(declare-fun b!2376494 () Bool)

(declare-fun c!377764 () Bool)

(assert (=> b!2376494 (= c!377764 (is-Union!6964 r!13927))))

(assert (=> b!2376494 (= e!1516224 e!1516222)))

(declare-fun d!696073 () Bool)

(declare-fun c!377762 () Bool)

(assert (=> d!696073 (= c!377762 (is-EmptyExpr!6964 r!13927))))

(assert (=> d!696073 (= (matchRSpec!813 r!13927 s!9460) e!1516225)))

(declare-fun e!1516223 () Bool)

(declare-fun call!144423 () Bool)

(assert (=> b!2376495 (= e!1516223 call!144423)))

(declare-fun b!2376496 () Bool)

(declare-fun res!1009039 () Bool)

(assert (=> b!2376496 (=> res!1009039 e!1516223)))

(assert (=> b!2376496 (= res!1009039 call!144424)))

(assert (=> b!2376496 (= e!1516221 e!1516223)))

(declare-fun bm!144418 () Bool)

(declare-fun isEmpty!16012 (List!28167) Bool)

(assert (=> bm!144418 (= call!144424 (isEmpty!16012 s!9460))))

(declare-fun b!2376497 () Bool)

(declare-fun c!377763 () Bool)

(assert (=> b!2376497 (= c!377763 (is-ElementMatch!6964 r!13927))))

(assert (=> b!2376497 (= e!1516226 e!1516224)))

(assert (=> b!2376498 (= e!1516221 call!144423)))

(declare-fun b!2376499 () Bool)

(assert (=> b!2376499 (= e!1516222 e!1516227)))

(declare-fun res!1009040 () Bool)

(assert (=> b!2376499 (= res!1009040 (matchRSpec!813 (regOne!14441 r!13927) s!9460))))

(assert (=> b!2376499 (=> res!1009040 e!1516227)))

(declare-fun bm!144419 () Bool)

(assert (=> bm!144419 (= call!144423 (Exists!1026 (ite c!377765 lambda!88286 lambda!88287)))))

(assert (= (and d!696073 c!377762) b!2376490))

(assert (= (and d!696073 (not c!377762)) b!2376489))

(assert (= (and b!2376489 res!1009041) b!2376497))

(assert (= (and b!2376497 c!377763) b!2376492))

(assert (= (and b!2376497 (not c!377763)) b!2376494))

(assert (= (and b!2376494 c!377764) b!2376499))

(assert (= (and b!2376494 (not c!377764)) b!2376493))

(assert (= (and b!2376499 (not res!1009040)) b!2376491))

(assert (= (and b!2376493 c!377765) b!2376496))

(assert (= (and b!2376493 (not c!377765)) b!2376498))

(assert (= (and b!2376496 (not res!1009039)) b!2376495))

(assert (= (or b!2376495 b!2376498) bm!144419))

(assert (= (or b!2376490 b!2376496) bm!144418))

(declare-fun m!2781959 () Bool)

(assert (=> b!2376491 m!2781959))

(declare-fun m!2781961 () Bool)

(assert (=> bm!144418 m!2781961))

(declare-fun m!2781963 () Bool)

(assert (=> b!2376499 m!2781963))

(declare-fun m!2781965 () Bool)

(assert (=> bm!144419 m!2781965))

(assert (=> b!2376372 d!696073))

(declare-fun bm!144422 () Bool)

(declare-fun call!144427 () Bool)

(assert (=> bm!144422 (= call!144427 (isEmpty!16012 s!9460))))

(declare-fun b!2376548 () Bool)

(declare-fun e!1516258 () Bool)

(declare-fun derivativeStep!1676 (Regex!6964 C!14086) Regex!6964)

(declare-fun head!5167 (List!28167) C!14086)

(declare-fun tail!3437 (List!28167) List!28167)

(assert (=> b!2376548 (= e!1516258 (matchR!3081 (derivativeStep!1676 r!13927 (head!5167 s!9460)) (tail!3437 s!9460)))))

(declare-fun b!2376549 () Bool)

(declare-fun e!1516259 () Bool)

(declare-fun lt!867166 () Bool)

(assert (=> b!2376549 (= e!1516259 (= lt!867166 call!144427))))

(declare-fun b!2376550 () Bool)

(declare-fun nullable!2018 (Regex!6964) Bool)

(assert (=> b!2376550 (= e!1516258 (nullable!2018 r!13927))))

(declare-fun b!2376551 () Bool)

(declare-fun res!1009068 () Bool)

(declare-fun e!1516260 () Bool)

(assert (=> b!2376551 (=> res!1009068 e!1516260)))

(assert (=> b!2376551 (= res!1009068 (not (isEmpty!16012 (tail!3437 s!9460))))))

(declare-fun d!696077 () Bool)

(assert (=> d!696077 e!1516259))

(declare-fun c!377781 () Bool)

(assert (=> d!696077 (= c!377781 (is-EmptyExpr!6964 r!13927))))

(assert (=> d!696077 (= lt!867166 e!1516258)))

(declare-fun c!377782 () Bool)

(assert (=> d!696077 (= c!377782 (isEmpty!16012 s!9460))))

(declare-fun validRegex!2691 (Regex!6964) Bool)

(assert (=> d!696077 (validRegex!2691 r!13927)))

(assert (=> d!696077 (= (matchR!3081 r!13927 s!9460) lt!867166)))

(declare-fun b!2376552 () Bool)

(declare-fun e!1516255 () Bool)

(assert (=> b!2376552 (= e!1516255 (not lt!867166))))

(declare-fun b!2376553 () Bool)

(declare-fun res!1009067 () Bool)

(declare-fun e!1516257 () Bool)

(assert (=> b!2376553 (=> res!1009067 e!1516257)))

(declare-fun e!1516254 () Bool)

(assert (=> b!2376553 (= res!1009067 e!1516254)))

(declare-fun res!1009063 () Bool)

(assert (=> b!2376553 (=> (not res!1009063) (not e!1516254))))

(assert (=> b!2376553 (= res!1009063 lt!867166)))

(declare-fun b!2376554 () Bool)

(declare-fun res!1009064 () Bool)

(assert (=> b!2376554 (=> res!1009064 e!1516257)))

(assert (=> b!2376554 (= res!1009064 (not (is-ElementMatch!6964 r!13927)))))

(assert (=> b!2376554 (= e!1516255 e!1516257)))

(declare-fun b!2376555 () Bool)

(assert (=> b!2376555 (= e!1516259 e!1516255)))

(declare-fun c!377780 () Bool)

(assert (=> b!2376555 (= c!377780 (is-EmptyLang!6964 r!13927))))

(declare-fun b!2376556 () Bool)

(assert (=> b!2376556 (= e!1516254 (= (head!5167 s!9460) (c!377748 r!13927)))))

(declare-fun b!2376557 () Bool)

(declare-fun e!1516256 () Bool)

(assert (=> b!2376557 (= e!1516257 e!1516256)))

(declare-fun res!1009062 () Bool)

(assert (=> b!2376557 (=> (not res!1009062) (not e!1516256))))

(assert (=> b!2376557 (= res!1009062 (not lt!867166))))

(declare-fun b!2376558 () Bool)

(assert (=> b!2376558 (= e!1516260 (not (= (head!5167 s!9460) (c!377748 r!13927))))))

(declare-fun b!2376559 () Bool)

(declare-fun res!1009065 () Bool)

(assert (=> b!2376559 (=> (not res!1009065) (not e!1516254))))

(assert (=> b!2376559 (= res!1009065 (not call!144427))))

(declare-fun b!2376560 () Bool)

(assert (=> b!2376560 (= e!1516256 e!1516260)))

(declare-fun res!1009066 () Bool)

(assert (=> b!2376560 (=> res!1009066 e!1516260)))

(assert (=> b!2376560 (= res!1009066 call!144427)))

(declare-fun b!2376561 () Bool)

(declare-fun res!1009069 () Bool)

(assert (=> b!2376561 (=> (not res!1009069) (not e!1516254))))

(assert (=> b!2376561 (= res!1009069 (isEmpty!16012 (tail!3437 s!9460)))))

(assert (= (and d!696077 c!377782) b!2376550))

(assert (= (and d!696077 (not c!377782)) b!2376548))

(assert (= (and d!696077 c!377781) b!2376549))

(assert (= (and d!696077 (not c!377781)) b!2376555))

(assert (= (and b!2376555 c!377780) b!2376552))

(assert (= (and b!2376555 (not c!377780)) b!2376554))

(assert (= (and b!2376554 (not res!1009064)) b!2376553))

(assert (= (and b!2376553 res!1009063) b!2376559))

(assert (= (and b!2376559 res!1009065) b!2376561))

(assert (= (and b!2376561 res!1009069) b!2376556))

(assert (= (and b!2376553 (not res!1009067)) b!2376557))

(assert (= (and b!2376557 res!1009062) b!2376560))

(assert (= (and b!2376560 (not res!1009066)) b!2376551))

(assert (= (and b!2376551 (not res!1009068)) b!2376558))

(assert (= (or b!2376549 b!2376559 b!2376560) bm!144422))

(assert (=> bm!144422 m!2781961))

(declare-fun m!2781981 () Bool)

(assert (=> b!2376550 m!2781981))

(assert (=> d!696077 m!2781961))

(declare-fun m!2781983 () Bool)

(assert (=> d!696077 m!2781983))

(declare-fun m!2781985 () Bool)

(assert (=> b!2376551 m!2781985))

(assert (=> b!2376551 m!2781985))

(declare-fun m!2781987 () Bool)

(assert (=> b!2376551 m!2781987))

(declare-fun m!2781989 () Bool)

(assert (=> b!2376556 m!2781989))

(assert (=> b!2376548 m!2781989))

(assert (=> b!2376548 m!2781989))

(declare-fun m!2781991 () Bool)

(assert (=> b!2376548 m!2781991))

(assert (=> b!2376548 m!2781985))

(assert (=> b!2376548 m!2781991))

(assert (=> b!2376548 m!2781985))

(declare-fun m!2781993 () Bool)

(assert (=> b!2376548 m!2781993))

(assert (=> b!2376561 m!2781985))

(assert (=> b!2376561 m!2781985))

(assert (=> b!2376561 m!2781987))

(assert (=> b!2376558 m!2781989))

(assert (=> b!2376372 d!696077))

(declare-fun d!696085 () Bool)

(assert (=> d!696085 (= (matchR!3081 r!13927 s!9460) (matchRSpec!813 r!13927 s!9460))))

(declare-fun lt!867169 () Unit!40963)

(declare-fun choose!13863 (Regex!6964 List!28167) Unit!40963)

(assert (=> d!696085 (= lt!867169 (choose!13863 r!13927 s!9460))))

(assert (=> d!696085 (validRegex!2691 r!13927)))

(assert (=> d!696085 (= (mainMatchTheorem!813 r!13927 s!9460) lt!867169)))

(declare-fun bs!461587 () Bool)

(assert (= bs!461587 d!696085))

(assert (=> bs!461587 m!2781885))

(assert (=> bs!461587 m!2781883))

(declare-fun m!2781995 () Bool)

(assert (=> bs!461587 m!2781995))

(assert (=> bs!461587 m!2781983))

(assert (=> b!2376372 d!696085))

(declare-fun d!696087 () Bool)

(declare-fun isEmpty!16013 (Option!5507) Bool)

(assert (=> d!696087 (= (isDefined!4335 (findConcatSeparation!615 lt!867133 EmptyExpr!6964 Nil!28069 s!9460 s!9460)) (not (isEmpty!16013 (findConcatSeparation!615 lt!867133 EmptyExpr!6964 Nil!28069 s!9460 s!9460))))))

(declare-fun bs!461588 () Bool)

(assert (= bs!461588 d!696087))

(assert (=> bs!461588 m!2781893))

(declare-fun m!2781997 () Bool)

(assert (=> bs!461588 m!2781997))

(assert (=> b!2376377 d!696087))

(declare-fun b!2376608 () Bool)

(declare-fun e!1516288 () Option!5507)

(declare-fun e!1516287 () Option!5507)

(assert (=> b!2376608 (= e!1516288 e!1516287)))

(declare-fun c!377794 () Bool)

(assert (=> b!2376608 (= c!377794 (is-Nil!28069 s!9460))))

(declare-fun b!2376609 () Bool)

(declare-fun e!1516286 () Bool)

(declare-fun lt!867179 () Option!5507)

(declare-fun ++!6921 (List!28167 List!28167) List!28167)

(declare-fun get!8547 (Option!5507) tuple2!27792)

(assert (=> b!2376609 (= e!1516286 (= (++!6921 (_1!16437 (get!8547 lt!867179)) (_2!16437 (get!8547 lt!867179))) s!9460))))

(declare-fun d!696089 () Bool)

(declare-fun e!1516285 () Bool)

(assert (=> d!696089 e!1516285))

(declare-fun res!1009100 () Bool)

(assert (=> d!696089 (=> res!1009100 e!1516285)))

(assert (=> d!696089 (= res!1009100 e!1516286)))

(declare-fun res!1009099 () Bool)

(assert (=> d!696089 (=> (not res!1009099) (not e!1516286))))

(assert (=> d!696089 (= res!1009099 (isDefined!4335 lt!867179))))

(assert (=> d!696089 (= lt!867179 e!1516288)))

(declare-fun c!377793 () Bool)

(declare-fun e!1516289 () Bool)

(assert (=> d!696089 (= c!377793 e!1516289)))

(declare-fun res!1009098 () Bool)

(assert (=> d!696089 (=> (not res!1009098) (not e!1516289))))

(assert (=> d!696089 (= res!1009098 (matchR!3081 lt!867133 Nil!28069))))

(assert (=> d!696089 (validRegex!2691 lt!867133)))

(assert (=> d!696089 (= (findConcatSeparation!615 lt!867133 EmptyExpr!6964 Nil!28069 s!9460 s!9460) lt!867179)))

(declare-fun b!2376610 () Bool)

(declare-fun res!1009097 () Bool)

(assert (=> b!2376610 (=> (not res!1009097) (not e!1516286))))

(assert (=> b!2376610 (= res!1009097 (matchR!3081 EmptyExpr!6964 (_2!16437 (get!8547 lt!867179))))))

(declare-fun b!2376611 () Bool)

(assert (=> b!2376611 (= e!1516285 (not (isDefined!4335 lt!867179)))))

(declare-fun b!2376612 () Bool)

(assert (=> b!2376612 (= e!1516289 (matchR!3081 EmptyExpr!6964 s!9460))))

(declare-fun b!2376613 () Bool)

(assert (=> b!2376613 (= e!1516287 None!5506)))

(declare-fun b!2376614 () Bool)

(assert (=> b!2376614 (= e!1516288 (Some!5506 (tuple2!27793 Nil!28069 s!9460)))))

(declare-fun b!2376615 () Bool)

(declare-fun res!1009096 () Bool)

(assert (=> b!2376615 (=> (not res!1009096) (not e!1516286))))

(assert (=> b!2376615 (= res!1009096 (matchR!3081 lt!867133 (_1!16437 (get!8547 lt!867179))))))

(declare-fun b!2376616 () Bool)

(declare-fun lt!867180 () Unit!40963)

(declare-fun lt!867178 () Unit!40963)

(assert (=> b!2376616 (= lt!867180 lt!867178)))

(assert (=> b!2376616 (= (++!6921 (++!6921 Nil!28069 (Cons!28069 (h!33470 s!9460) Nil!28069)) (t!208144 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!565 (List!28167 C!14086 List!28167 List!28167) Unit!40963)

(assert (=> b!2376616 (= lt!867178 (lemmaMoveElementToOtherListKeepsConcatEq!565 Nil!28069 (h!33470 s!9460) (t!208144 s!9460) s!9460))))

(assert (=> b!2376616 (= e!1516287 (findConcatSeparation!615 lt!867133 EmptyExpr!6964 (++!6921 Nil!28069 (Cons!28069 (h!33470 s!9460) Nil!28069)) (t!208144 s!9460) s!9460))))

(assert (= (and d!696089 res!1009098) b!2376612))

(assert (= (and d!696089 c!377793) b!2376614))

(assert (= (and d!696089 (not c!377793)) b!2376608))

(assert (= (and b!2376608 c!377794) b!2376613))

(assert (= (and b!2376608 (not c!377794)) b!2376616))

(assert (= (and d!696089 res!1009099) b!2376615))

(assert (= (and b!2376615 res!1009096) b!2376610))

(assert (= (and b!2376610 res!1009097) b!2376609))

(assert (= (and d!696089 (not res!1009100)) b!2376611))

(declare-fun m!2781999 () Bool)

(assert (=> b!2376609 m!2781999))

(declare-fun m!2782001 () Bool)

(assert (=> b!2376609 m!2782001))

(assert (=> b!2376610 m!2781999))

(declare-fun m!2782003 () Bool)

(assert (=> b!2376610 m!2782003))

(declare-fun m!2782005 () Bool)

(assert (=> b!2376616 m!2782005))

(assert (=> b!2376616 m!2782005))

(declare-fun m!2782007 () Bool)

(assert (=> b!2376616 m!2782007))

(declare-fun m!2782009 () Bool)

(assert (=> b!2376616 m!2782009))

(assert (=> b!2376616 m!2782005))

(declare-fun m!2782011 () Bool)

(assert (=> b!2376616 m!2782011))

(assert (=> b!2376615 m!2781999))

(declare-fun m!2782013 () Bool)

(assert (=> b!2376615 m!2782013))

(declare-fun m!2782015 () Bool)

(assert (=> d!696089 m!2782015))

(declare-fun m!2782017 () Bool)

(assert (=> d!696089 m!2782017))

(declare-fun m!2782019 () Bool)

(assert (=> d!696089 m!2782019))

(assert (=> b!2376611 m!2782015))

(declare-fun m!2782021 () Bool)

(assert (=> b!2376612 m!2782021))

(assert (=> b!2376377 d!696089))

(declare-fun bs!461589 () Bool)

(declare-fun d!696091 () Bool)

(assert (= bs!461589 (and d!696091 start!233194)))

(declare-fun lambda!88291 () Int)

(assert (=> bs!461589 (= lambda!88291 lambda!88266)))

(declare-fun b!2376655 () Bool)

(declare-fun e!1516317 () Regex!6964)

(assert (=> b!2376655 (= e!1516317 (Concat!11600 (h!33469 lt!867134) (generalisedConcat!65 (t!208143 lt!867134))))))

(declare-fun b!2376656 () Bool)

(declare-fun e!1516315 () Bool)

(declare-fun e!1516316 () Bool)

(assert (=> b!2376656 (= e!1516315 e!1516316)))

(declare-fun c!377808 () Bool)

(assert (=> b!2376656 (= c!377808 (isEmpty!16010 (tail!3435 lt!867134)))))

(declare-fun b!2376657 () Bool)

(declare-fun lt!867184 () Regex!6964)

(declare-fun isEmptyExpr!38 (Regex!6964) Bool)

(assert (=> b!2376657 (= e!1516315 (isEmptyExpr!38 lt!867184))))

(declare-fun b!2376658 () Bool)

(declare-fun e!1516318 () Regex!6964)

(assert (=> b!2376658 (= e!1516318 e!1516317)))

(declare-fun c!377807 () Bool)

(assert (=> b!2376658 (= c!377807 (is-Cons!28068 lt!867134))))

(declare-fun b!2376659 () Bool)

(assert (=> b!2376659 (= e!1516317 EmptyExpr!6964)))

(declare-fun e!1516314 () Bool)

(assert (=> d!696091 e!1516314))

(declare-fun res!1009118 () Bool)

(assert (=> d!696091 (=> (not res!1009118) (not e!1516314))))

(assert (=> d!696091 (= res!1009118 (validRegex!2691 lt!867184))))

(assert (=> d!696091 (= lt!867184 e!1516318)))

(declare-fun c!377809 () Bool)

(declare-fun e!1516313 () Bool)

(assert (=> d!696091 (= c!377809 e!1516313)))

(declare-fun res!1009117 () Bool)

(assert (=> d!696091 (=> (not res!1009117) (not e!1516313))))

(assert (=> d!696091 (= res!1009117 (is-Cons!28068 lt!867134))))

(assert (=> d!696091 (forall!5598 lt!867134 lambda!88291)))

(assert (=> d!696091 (= (generalisedConcat!65 lt!867134) lt!867184)))

(declare-fun b!2376660 () Bool)

(assert (=> b!2376660 (= e!1516313 (isEmpty!16010 (t!208143 lt!867134)))))

(declare-fun b!2376661 () Bool)

(declare-fun isConcat!38 (Regex!6964) Bool)

(assert (=> b!2376661 (= e!1516316 (isConcat!38 lt!867184))))

(declare-fun b!2376662 () Bool)

(assert (=> b!2376662 (= e!1516318 (h!33469 lt!867134))))

(declare-fun b!2376663 () Bool)

(assert (=> b!2376663 (= e!1516316 (= lt!867184 (head!5165 lt!867134)))))

(declare-fun b!2376664 () Bool)

(assert (=> b!2376664 (= e!1516314 e!1516315)))

(declare-fun c!377806 () Bool)

(assert (=> b!2376664 (= c!377806 (isEmpty!16010 lt!867134))))

(assert (= (and d!696091 res!1009117) b!2376660))

(assert (= (and d!696091 c!377809) b!2376662))

(assert (= (and d!696091 (not c!377809)) b!2376658))

(assert (= (and b!2376658 c!377807) b!2376655))

(assert (= (and b!2376658 (not c!377807)) b!2376659))

(assert (= (and d!696091 res!1009118) b!2376664))

(assert (= (and b!2376664 c!377806) b!2376657))

(assert (= (and b!2376664 (not c!377806)) b!2376656))

(assert (= (and b!2376656 c!377808) b!2376663))

(assert (= (and b!2376656 (not c!377808)) b!2376661))

(declare-fun m!2782039 () Bool)

(assert (=> b!2376660 m!2782039))

(declare-fun m!2782041 () Bool)

(assert (=> b!2376655 m!2782041))

(declare-fun m!2782043 () Bool)

(assert (=> b!2376657 m!2782043))

(declare-fun m!2782045 () Bool)

(assert (=> d!696091 m!2782045))

(declare-fun m!2782047 () Bool)

(assert (=> d!696091 m!2782047))

(declare-fun m!2782049 () Bool)

(assert (=> b!2376661 m!2782049))

(assert (=> b!2376664 m!2781917))

(declare-fun m!2782051 () Bool)

(assert (=> b!2376656 m!2782051))

(assert (=> b!2376656 m!2782051))

(declare-fun m!2782053 () Bool)

(assert (=> b!2376656 m!2782053))

(declare-fun m!2782055 () Bool)

(assert (=> b!2376663 m!2782055))

(assert (=> b!2376376 d!696091))

(declare-fun d!696097 () Bool)

(declare-fun res!1009125 () Bool)

(declare-fun e!1516325 () Bool)

(assert (=> d!696097 (=> res!1009125 e!1516325)))

(assert (=> d!696097 (= res!1009125 (is-Nil!28068 l!9164))))

(assert (=> d!696097 (= (forall!5598 l!9164 lambda!88266) e!1516325)))

(declare-fun b!2376671 () Bool)

(declare-fun e!1516326 () Bool)

(assert (=> b!2376671 (= e!1516325 e!1516326)))

(declare-fun res!1009126 () Bool)

(assert (=> b!2376671 (=> (not res!1009126) (not e!1516326))))

(declare-fun dynLambda!12085 (Int Regex!6964) Bool)

(assert (=> b!2376671 (= res!1009126 (dynLambda!12085 lambda!88266 (h!33469 l!9164)))))

(declare-fun b!2376672 () Bool)

(assert (=> b!2376672 (= e!1516326 (forall!5598 (t!208143 l!9164) lambda!88266))))

(assert (= (and d!696097 (not res!1009125)) b!2376671))

(assert (= (and b!2376671 res!1009126) b!2376672))

(declare-fun b_lambda!74005 () Bool)

(assert (=> (not b_lambda!74005) (not b!2376671)))

(declare-fun m!2782061 () Bool)

(assert (=> b!2376671 m!2782061))

(declare-fun m!2782063 () Bool)

(assert (=> b!2376672 m!2782063))

(assert (=> start!233194 d!696097))

(declare-fun d!696101 () Bool)

(assert (=> d!696101 (= (isDefined!4335 (findConcatSeparation!615 (regOne!14440 r!13927) (regTwo!14440 r!13927) Nil!28069 s!9460 s!9460)) (not (isEmpty!16013 (findConcatSeparation!615 (regOne!14440 r!13927) (regTwo!14440 r!13927) Nil!28069 s!9460 s!9460))))))

(declare-fun bs!461590 () Bool)

(assert (= bs!461590 d!696101))

(assert (=> bs!461590 m!2781901))

(declare-fun m!2782065 () Bool)

(assert (=> bs!461590 m!2782065))

(assert (=> b!2376381 d!696101))

(declare-fun bs!461591 () Bool)

(declare-fun d!696103 () Bool)

(assert (= bs!461591 (and d!696103 b!2376381)))

(declare-fun lambda!88294 () Int)

(assert (=> bs!461591 (= lambda!88294 lambda!88267)))

(assert (=> bs!461591 (not (= lambda!88294 lambda!88268))))

(declare-fun bs!461592 () Bool)

(assert (= bs!461592 (and d!696103 b!2376495)))

(assert (=> bs!461592 (not (= lambda!88294 lambda!88286))))

(declare-fun bs!461593 () Bool)

(assert (= bs!461593 (and d!696103 b!2376498)))

(assert (=> bs!461593 (not (= lambda!88294 lambda!88287))))

(assert (=> d!696103 true))

(assert (=> d!696103 true))

(assert (=> d!696103 true))

(assert (=> d!696103 (= (isDefined!4335 (findConcatSeparation!615 (regOne!14440 r!13927) (regTwo!14440 r!13927) Nil!28069 s!9460 s!9460)) (Exists!1026 lambda!88294))))

(declare-fun lt!867187 () Unit!40963)

(declare-fun choose!13864 (Regex!6964 Regex!6964 List!28167) Unit!40963)

(assert (=> d!696103 (= lt!867187 (choose!13864 (regOne!14440 r!13927) (regTwo!14440 r!13927) s!9460))))

(assert (=> d!696103 (validRegex!2691 (regOne!14440 r!13927))))

(assert (=> d!696103 (= (lemmaFindConcatSeparationEquivalentToExists!615 (regOne!14440 r!13927) (regTwo!14440 r!13927) s!9460) lt!867187)))

(declare-fun bs!461594 () Bool)

(assert (= bs!461594 d!696103))

(assert (=> bs!461594 m!2781901))

(assert (=> bs!461594 m!2781903))

(declare-fun m!2782067 () Bool)

(assert (=> bs!461594 m!2782067))

(declare-fun m!2782069 () Bool)

(assert (=> bs!461594 m!2782069))

(declare-fun m!2782071 () Bool)

(assert (=> bs!461594 m!2782071))

(assert (=> bs!461594 m!2781901))

(assert (=> b!2376381 d!696103))

(declare-fun bs!461595 () Bool)

(declare-fun d!696105 () Bool)

(assert (= bs!461595 (and d!696105 b!2376498)))

(declare-fun lambda!88301 () Int)

(assert (=> bs!461595 (not (= lambda!88301 lambda!88287))))

(declare-fun bs!461596 () Bool)

(assert (= bs!461596 (and d!696105 b!2376495)))

(assert (=> bs!461596 (not (= lambda!88301 lambda!88286))))

(declare-fun bs!461597 () Bool)

(assert (= bs!461597 (and d!696105 b!2376381)))

(assert (=> bs!461597 (= lambda!88301 lambda!88267)))

(assert (=> bs!461597 (not (= lambda!88301 lambda!88268))))

(declare-fun bs!461598 () Bool)

(assert (= bs!461598 (and d!696105 d!696103)))

(assert (=> bs!461598 (= lambda!88301 lambda!88294)))

(assert (=> d!696105 true))

(assert (=> d!696105 true))

(assert (=> d!696105 true))

(declare-fun lambda!88302 () Int)

(assert (=> bs!461595 (= lambda!88302 lambda!88287)))

(declare-fun bs!461599 () Bool)

(assert (= bs!461599 d!696105))

(assert (=> bs!461599 (not (= lambda!88302 lambda!88301))))

(assert (=> bs!461596 (not (= lambda!88302 lambda!88286))))

(assert (=> bs!461597 (not (= lambda!88302 lambda!88267))))

(assert (=> bs!461597 (= lambda!88302 lambda!88268)))

(assert (=> bs!461598 (not (= lambda!88302 lambda!88294))))

(assert (=> d!696105 true))

(assert (=> d!696105 true))

(assert (=> d!696105 true))

(assert (=> d!696105 (= (Exists!1026 lambda!88301) (Exists!1026 lambda!88302))))

(declare-fun lt!867190 () Unit!40963)

(declare-fun choose!13865 (Regex!6964 Regex!6964 List!28167) Unit!40963)

(assert (=> d!696105 (= lt!867190 (choose!13865 (regOne!14440 r!13927) (regTwo!14440 r!13927) s!9460))))

(assert (=> d!696105 (validRegex!2691 (regOne!14440 r!13927))))

(assert (=> d!696105 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!365 (regOne!14440 r!13927) (regTwo!14440 r!13927) s!9460) lt!867190)))

(declare-fun m!2782073 () Bool)

(assert (=> bs!461599 m!2782073))

(declare-fun m!2782075 () Bool)

(assert (=> bs!461599 m!2782075))

(declare-fun m!2782077 () Bool)

(assert (=> bs!461599 m!2782077))

(assert (=> bs!461599 m!2782067))

(assert (=> b!2376381 d!696105))

(declare-fun d!696107 () Bool)

(declare-fun choose!13866 (Int) Bool)

(assert (=> d!696107 (= (Exists!1026 lambda!88267) (choose!13866 lambda!88267))))

(declare-fun bs!461600 () Bool)

(assert (= bs!461600 d!696107))

(declare-fun m!2782079 () Bool)

(assert (=> bs!461600 m!2782079))

(assert (=> b!2376381 d!696107))

(declare-fun b!2376717 () Bool)

(declare-fun e!1516354 () Option!5507)

(declare-fun e!1516353 () Option!5507)

(assert (=> b!2376717 (= e!1516354 e!1516353)))

(declare-fun c!377819 () Bool)

(assert (=> b!2376717 (= c!377819 (is-Nil!28069 s!9460))))

(declare-fun b!2376718 () Bool)

(declare-fun e!1516352 () Bool)

(declare-fun lt!867192 () Option!5507)

(assert (=> b!2376718 (= e!1516352 (= (++!6921 (_1!16437 (get!8547 lt!867192)) (_2!16437 (get!8547 lt!867192))) s!9460))))

(declare-fun d!696109 () Bool)

(declare-fun e!1516351 () Bool)

(assert (=> d!696109 e!1516351))

(declare-fun res!1009159 () Bool)

(assert (=> d!696109 (=> res!1009159 e!1516351)))

(assert (=> d!696109 (= res!1009159 e!1516352)))

(declare-fun res!1009158 () Bool)

(assert (=> d!696109 (=> (not res!1009158) (not e!1516352))))

(assert (=> d!696109 (= res!1009158 (isDefined!4335 lt!867192))))

(assert (=> d!696109 (= lt!867192 e!1516354)))

(declare-fun c!377818 () Bool)

(declare-fun e!1516355 () Bool)

(assert (=> d!696109 (= c!377818 e!1516355)))

(declare-fun res!1009157 () Bool)

(assert (=> d!696109 (=> (not res!1009157) (not e!1516355))))

(assert (=> d!696109 (= res!1009157 (matchR!3081 (regOne!14440 r!13927) Nil!28069))))

(assert (=> d!696109 (validRegex!2691 (regOne!14440 r!13927))))

(assert (=> d!696109 (= (findConcatSeparation!615 (regOne!14440 r!13927) (regTwo!14440 r!13927) Nil!28069 s!9460 s!9460) lt!867192)))

(declare-fun b!2376719 () Bool)

(declare-fun res!1009156 () Bool)

(assert (=> b!2376719 (=> (not res!1009156) (not e!1516352))))

(assert (=> b!2376719 (= res!1009156 (matchR!3081 (regTwo!14440 r!13927) (_2!16437 (get!8547 lt!867192))))))

(declare-fun b!2376720 () Bool)

(assert (=> b!2376720 (= e!1516351 (not (isDefined!4335 lt!867192)))))

(declare-fun b!2376721 () Bool)

(assert (=> b!2376721 (= e!1516355 (matchR!3081 (regTwo!14440 r!13927) s!9460))))

(declare-fun b!2376722 () Bool)

(assert (=> b!2376722 (= e!1516353 None!5506)))

(declare-fun b!2376723 () Bool)

(assert (=> b!2376723 (= e!1516354 (Some!5506 (tuple2!27793 Nil!28069 s!9460)))))

(declare-fun b!2376724 () Bool)

(declare-fun res!1009155 () Bool)

(assert (=> b!2376724 (=> (not res!1009155) (not e!1516352))))

(assert (=> b!2376724 (= res!1009155 (matchR!3081 (regOne!14440 r!13927) (_1!16437 (get!8547 lt!867192))))))

(declare-fun b!2376725 () Bool)

(declare-fun lt!867193 () Unit!40963)

(declare-fun lt!867191 () Unit!40963)

(assert (=> b!2376725 (= lt!867193 lt!867191)))

(assert (=> b!2376725 (= (++!6921 (++!6921 Nil!28069 (Cons!28069 (h!33470 s!9460) Nil!28069)) (t!208144 s!9460)) s!9460)))

(assert (=> b!2376725 (= lt!867191 (lemmaMoveElementToOtherListKeepsConcatEq!565 Nil!28069 (h!33470 s!9460) (t!208144 s!9460) s!9460))))

(assert (=> b!2376725 (= e!1516353 (findConcatSeparation!615 (regOne!14440 r!13927) (regTwo!14440 r!13927) (++!6921 Nil!28069 (Cons!28069 (h!33470 s!9460) Nil!28069)) (t!208144 s!9460) s!9460))))

(assert (= (and d!696109 res!1009157) b!2376721))

(assert (= (and d!696109 c!377818) b!2376723))

(assert (= (and d!696109 (not c!377818)) b!2376717))

(assert (= (and b!2376717 c!377819) b!2376722))

(assert (= (and b!2376717 (not c!377819)) b!2376725))

(assert (= (and d!696109 res!1009158) b!2376724))

(assert (= (and b!2376724 res!1009155) b!2376719))

(assert (= (and b!2376719 res!1009156) b!2376718))

(assert (= (and d!696109 (not res!1009159)) b!2376720))

(declare-fun m!2782081 () Bool)

(assert (=> b!2376718 m!2782081))

(declare-fun m!2782083 () Bool)

(assert (=> b!2376718 m!2782083))

(assert (=> b!2376719 m!2782081))

(declare-fun m!2782085 () Bool)

(assert (=> b!2376719 m!2782085))

(assert (=> b!2376725 m!2782005))

(assert (=> b!2376725 m!2782005))

(assert (=> b!2376725 m!2782007))

(assert (=> b!2376725 m!2782009))

(assert (=> b!2376725 m!2782005))

(declare-fun m!2782087 () Bool)

(assert (=> b!2376725 m!2782087))

(assert (=> b!2376724 m!2782081))

(declare-fun m!2782089 () Bool)

(assert (=> b!2376724 m!2782089))

(declare-fun m!2782091 () Bool)

(assert (=> d!696109 m!2782091))

(declare-fun m!2782093 () Bool)

(assert (=> d!696109 m!2782093))

(assert (=> d!696109 m!2782067))

(assert (=> b!2376720 m!2782091))

(declare-fun m!2782095 () Bool)

(assert (=> b!2376721 m!2782095))

(assert (=> b!2376381 d!696109))

(declare-fun d!696111 () Bool)

(assert (=> d!696111 (= (Exists!1026 lambda!88268) (choose!13866 lambda!88268))))

(declare-fun bs!461601 () Bool)

(assert (= bs!461601 d!696111))

(declare-fun m!2782097 () Bool)

(assert (=> bs!461601 m!2782097))

(assert (=> b!2376381 d!696111))

(declare-fun d!696113 () Bool)

(assert (=> d!696113 (= (isEmpty!16010 lt!867134) (is-Nil!28068 lt!867134))))

(assert (=> b!2376374 d!696113))

(declare-fun d!696115 () Bool)

(assert (=> d!696115 (= (tail!3435 l!9164) (t!208143 l!9164))))

(assert (=> b!2376374 d!696115))

(declare-fun bm!144428 () Bool)

(declare-fun call!144433 () Bool)

(assert (=> bm!144428 (= call!144433 (isEmpty!16012 s!9460))))

(declare-fun b!2376726 () Bool)

(declare-fun e!1516360 () Bool)

(assert (=> b!2376726 (= e!1516360 (matchR!3081 (derivativeStep!1676 lt!867133 (head!5167 s!9460)) (tail!3437 s!9460)))))

(declare-fun b!2376727 () Bool)

(declare-fun e!1516361 () Bool)

(declare-fun lt!867194 () Bool)

(assert (=> b!2376727 (= e!1516361 (= lt!867194 call!144433))))

(declare-fun b!2376728 () Bool)

(assert (=> b!2376728 (= e!1516360 (nullable!2018 lt!867133))))

(declare-fun b!2376729 () Bool)

(declare-fun res!1009166 () Bool)

(declare-fun e!1516362 () Bool)

(assert (=> b!2376729 (=> res!1009166 e!1516362)))

(assert (=> b!2376729 (= res!1009166 (not (isEmpty!16012 (tail!3437 s!9460))))))

(declare-fun d!696117 () Bool)

(assert (=> d!696117 e!1516361))

(declare-fun c!377821 () Bool)

(assert (=> d!696117 (= c!377821 (is-EmptyExpr!6964 lt!867133))))

(assert (=> d!696117 (= lt!867194 e!1516360)))

(declare-fun c!377822 () Bool)

(assert (=> d!696117 (= c!377822 (isEmpty!16012 s!9460))))

(assert (=> d!696117 (validRegex!2691 lt!867133)))

(assert (=> d!696117 (= (matchR!3081 lt!867133 s!9460) lt!867194)))

(declare-fun b!2376730 () Bool)

(declare-fun e!1516357 () Bool)

(assert (=> b!2376730 (= e!1516357 (not lt!867194))))

(declare-fun b!2376731 () Bool)

(declare-fun res!1009165 () Bool)

(declare-fun e!1516359 () Bool)

(assert (=> b!2376731 (=> res!1009165 e!1516359)))

(declare-fun e!1516356 () Bool)

(assert (=> b!2376731 (= res!1009165 e!1516356)))

(declare-fun res!1009161 () Bool)

(assert (=> b!2376731 (=> (not res!1009161) (not e!1516356))))

(assert (=> b!2376731 (= res!1009161 lt!867194)))

(declare-fun b!2376732 () Bool)

(declare-fun res!1009162 () Bool)

(assert (=> b!2376732 (=> res!1009162 e!1516359)))

(assert (=> b!2376732 (= res!1009162 (not (is-ElementMatch!6964 lt!867133)))))

(assert (=> b!2376732 (= e!1516357 e!1516359)))

(declare-fun b!2376733 () Bool)

(assert (=> b!2376733 (= e!1516361 e!1516357)))

(declare-fun c!377820 () Bool)

(assert (=> b!2376733 (= c!377820 (is-EmptyLang!6964 lt!867133))))

(declare-fun b!2376734 () Bool)

(assert (=> b!2376734 (= e!1516356 (= (head!5167 s!9460) (c!377748 lt!867133)))))

(declare-fun b!2376735 () Bool)

(declare-fun e!1516358 () Bool)

(assert (=> b!2376735 (= e!1516359 e!1516358)))

(declare-fun res!1009160 () Bool)

(assert (=> b!2376735 (=> (not res!1009160) (not e!1516358))))

(assert (=> b!2376735 (= res!1009160 (not lt!867194))))

(declare-fun b!2376736 () Bool)

(assert (=> b!2376736 (= e!1516362 (not (= (head!5167 s!9460) (c!377748 lt!867133))))))

(declare-fun b!2376737 () Bool)

(declare-fun res!1009163 () Bool)

(assert (=> b!2376737 (=> (not res!1009163) (not e!1516356))))

(assert (=> b!2376737 (= res!1009163 (not call!144433))))

(declare-fun b!2376738 () Bool)

(assert (=> b!2376738 (= e!1516358 e!1516362)))

(declare-fun res!1009164 () Bool)

(assert (=> b!2376738 (=> res!1009164 e!1516362)))

(assert (=> b!2376738 (= res!1009164 call!144433)))

(declare-fun b!2376739 () Bool)

(declare-fun res!1009167 () Bool)

(assert (=> b!2376739 (=> (not res!1009167) (not e!1516356))))

(assert (=> b!2376739 (= res!1009167 (isEmpty!16012 (tail!3437 s!9460)))))

(assert (= (and d!696117 c!377822) b!2376728))

(assert (= (and d!696117 (not c!377822)) b!2376726))

(assert (= (and d!696117 c!377821) b!2376727))

(assert (= (and d!696117 (not c!377821)) b!2376733))

(assert (= (and b!2376733 c!377820) b!2376730))

(assert (= (and b!2376733 (not c!377820)) b!2376732))

(assert (= (and b!2376732 (not res!1009162)) b!2376731))

(assert (= (and b!2376731 res!1009161) b!2376737))

(assert (= (and b!2376737 res!1009163) b!2376739))

(assert (= (and b!2376739 res!1009167) b!2376734))

(assert (= (and b!2376731 (not res!1009165)) b!2376735))

(assert (= (and b!2376735 res!1009160) b!2376738))

(assert (= (and b!2376738 (not res!1009164)) b!2376729))

(assert (= (and b!2376729 (not res!1009166)) b!2376736))

(assert (= (or b!2376727 b!2376737 b!2376738) bm!144428))

(assert (=> bm!144428 m!2781961))

(declare-fun m!2782099 () Bool)

(assert (=> b!2376728 m!2782099))

(assert (=> d!696117 m!2781961))

(assert (=> d!696117 m!2782019))

(assert (=> b!2376729 m!2781985))

(assert (=> b!2376729 m!2781985))

(assert (=> b!2376729 m!2781987))

(assert (=> b!2376734 m!2781989))

(assert (=> b!2376726 m!2781989))

(assert (=> b!2376726 m!2781989))

(declare-fun m!2782101 () Bool)

(assert (=> b!2376726 m!2782101))

(assert (=> b!2376726 m!2781985))

(assert (=> b!2376726 m!2782101))

(assert (=> b!2376726 m!2781985))

(declare-fun m!2782103 () Bool)

(assert (=> b!2376726 m!2782103))

(assert (=> b!2376739 m!2781985))

(assert (=> b!2376739 m!2781985))

(assert (=> b!2376739 m!2781987))

(assert (=> b!2376736 m!2781989))

(assert (=> b!2376368 d!696117))

(declare-fun d!696119 () Bool)

(assert (=> d!696119 (= (head!5165 l!9164) (h!33469 l!9164))))

(assert (=> b!2376368 d!696119))

(declare-fun bs!461602 () Bool)

(declare-fun d!696121 () Bool)

(assert (= bs!461602 (and d!696121 start!233194)))

(declare-fun lambda!88305 () Int)

(assert (=> bs!461602 (= lambda!88305 lambda!88266)))

(declare-fun bs!461603 () Bool)

(assert (= bs!461603 (and d!696121 d!696091)))

(assert (=> bs!461603 (= lambda!88305 lambda!88291)))

(declare-fun b!2376740 () Bool)

(declare-fun e!1516367 () Regex!6964)

(assert (=> b!2376740 (= e!1516367 (Concat!11600 (h!33469 l!9164) (generalisedConcat!65 (t!208143 l!9164))))))

(declare-fun b!2376741 () Bool)

(declare-fun e!1516365 () Bool)

(declare-fun e!1516366 () Bool)

(assert (=> b!2376741 (= e!1516365 e!1516366)))

(declare-fun c!377825 () Bool)

(assert (=> b!2376741 (= c!377825 (isEmpty!16010 (tail!3435 l!9164)))))

(declare-fun b!2376742 () Bool)

(declare-fun lt!867195 () Regex!6964)

(assert (=> b!2376742 (= e!1516365 (isEmptyExpr!38 lt!867195))))

(declare-fun b!2376743 () Bool)

(declare-fun e!1516368 () Regex!6964)

(assert (=> b!2376743 (= e!1516368 e!1516367)))

(declare-fun c!377824 () Bool)

(assert (=> b!2376743 (= c!377824 (is-Cons!28068 l!9164))))

(declare-fun b!2376744 () Bool)

(assert (=> b!2376744 (= e!1516367 EmptyExpr!6964)))

(declare-fun e!1516364 () Bool)

(assert (=> d!696121 e!1516364))

(declare-fun res!1009169 () Bool)

(assert (=> d!696121 (=> (not res!1009169) (not e!1516364))))

(assert (=> d!696121 (= res!1009169 (validRegex!2691 lt!867195))))

(assert (=> d!696121 (= lt!867195 e!1516368)))

(declare-fun c!377826 () Bool)

(declare-fun e!1516363 () Bool)

(assert (=> d!696121 (= c!377826 e!1516363)))

(declare-fun res!1009168 () Bool)

(assert (=> d!696121 (=> (not res!1009168) (not e!1516363))))

(assert (=> d!696121 (= res!1009168 (is-Cons!28068 l!9164))))

(assert (=> d!696121 (forall!5598 l!9164 lambda!88305)))

(assert (=> d!696121 (= (generalisedConcat!65 l!9164) lt!867195)))

(declare-fun b!2376745 () Bool)

(assert (=> b!2376745 (= e!1516363 (isEmpty!16010 (t!208143 l!9164)))))

(declare-fun b!2376746 () Bool)

(assert (=> b!2376746 (= e!1516366 (isConcat!38 lt!867195))))

(declare-fun b!2376747 () Bool)

(assert (=> b!2376747 (= e!1516368 (h!33469 l!9164))))

(declare-fun b!2376748 () Bool)

(assert (=> b!2376748 (= e!1516366 (= lt!867195 (head!5165 l!9164)))))

(declare-fun b!2376749 () Bool)

(assert (=> b!2376749 (= e!1516364 e!1516365)))

(declare-fun c!377823 () Bool)

(assert (=> b!2376749 (= c!377823 (isEmpty!16010 l!9164))))

(assert (= (and d!696121 res!1009168) b!2376745))

(assert (= (and d!696121 c!377826) b!2376747))

(assert (= (and d!696121 (not c!377826)) b!2376743))

(assert (= (and b!2376743 c!377824) b!2376740))

(assert (= (and b!2376743 (not c!377824)) b!2376744))

(assert (= (and d!696121 res!1009169) b!2376749))

(assert (= (and b!2376749 c!377823) b!2376742))

(assert (= (and b!2376749 (not c!377823)) b!2376741))

(assert (= (and b!2376741 c!377825) b!2376748))

(assert (= (and b!2376741 (not c!377825)) b!2376746))

(declare-fun m!2782105 () Bool)

(assert (=> b!2376745 m!2782105))

(declare-fun m!2782107 () Bool)

(assert (=> b!2376740 m!2782107))

(declare-fun m!2782109 () Bool)

(assert (=> b!2376742 m!2782109))

(declare-fun m!2782111 () Bool)

(assert (=> d!696121 m!2782111))

(declare-fun m!2782113 () Bool)

(assert (=> d!696121 m!2782113))

(declare-fun m!2782115 () Bool)

(assert (=> b!2376746 m!2782115))

(assert (=> b!2376749 m!2781915))

(assert (=> b!2376741 m!2781919))

(assert (=> b!2376741 m!2781919))

(declare-fun m!2782117 () Bool)

(assert (=> b!2376741 m!2782117))

(assert (=> b!2376748 m!2781891))

(assert (=> b!2376373 d!696121))

(declare-fun b!2376763 () Bool)

(declare-fun e!1516371 () Bool)

(declare-fun tp!759091 () Bool)

(declare-fun tp!759094 () Bool)

(assert (=> b!2376763 (= e!1516371 (and tp!759091 tp!759094))))

(declare-fun b!2376760 () Bool)

(assert (=> b!2376760 (= e!1516371 tp_is_empty!11341)))

(declare-fun b!2376762 () Bool)

(declare-fun tp!759093 () Bool)

(assert (=> b!2376762 (= e!1516371 tp!759093)))

(assert (=> b!2376371 (= tp!759051 e!1516371)))

(declare-fun b!2376761 () Bool)

(declare-fun tp!759092 () Bool)

(declare-fun tp!759090 () Bool)

(assert (=> b!2376761 (= e!1516371 (and tp!759092 tp!759090))))

(assert (= (and b!2376371 (is-ElementMatch!6964 (reg!7293 r!13927))) b!2376760))

(assert (= (and b!2376371 (is-Concat!11600 (reg!7293 r!13927))) b!2376761))

(assert (= (and b!2376371 (is-Star!6964 (reg!7293 r!13927))) b!2376762))

(assert (= (and b!2376371 (is-Union!6964 (reg!7293 r!13927))) b!2376763))

(declare-fun b!2376768 () Bool)

(declare-fun e!1516374 () Bool)

(declare-fun tp!759097 () Bool)

(assert (=> b!2376768 (= e!1516374 (and tp_is_empty!11341 tp!759097))))

(assert (=> b!2376370 (= tp!759053 e!1516374)))

(assert (= (and b!2376370 (is-Cons!28069 (t!208144 s!9460))) b!2376768))

(declare-fun b!2376772 () Bool)

(declare-fun e!1516375 () Bool)

(declare-fun tp!759099 () Bool)

(declare-fun tp!759102 () Bool)

(assert (=> b!2376772 (= e!1516375 (and tp!759099 tp!759102))))

(declare-fun b!2376769 () Bool)

(assert (=> b!2376769 (= e!1516375 tp_is_empty!11341)))

(declare-fun b!2376771 () Bool)

(declare-fun tp!759101 () Bool)

(assert (=> b!2376771 (= e!1516375 tp!759101)))

(assert (=> b!2376380 (= tp!759052 e!1516375)))

(declare-fun b!2376770 () Bool)

(declare-fun tp!759100 () Bool)

(declare-fun tp!759098 () Bool)

(assert (=> b!2376770 (= e!1516375 (and tp!759100 tp!759098))))

(assert (= (and b!2376380 (is-ElementMatch!6964 (regOne!14441 r!13927))) b!2376769))

(assert (= (and b!2376380 (is-Concat!11600 (regOne!14441 r!13927))) b!2376770))

(assert (= (and b!2376380 (is-Star!6964 (regOne!14441 r!13927))) b!2376771))

(assert (= (and b!2376380 (is-Union!6964 (regOne!14441 r!13927))) b!2376772))

(declare-fun b!2376776 () Bool)

(declare-fun e!1516376 () Bool)

(declare-fun tp!759104 () Bool)

(declare-fun tp!759107 () Bool)

(assert (=> b!2376776 (= e!1516376 (and tp!759104 tp!759107))))

(declare-fun b!2376773 () Bool)

(assert (=> b!2376773 (= e!1516376 tp_is_empty!11341)))

(declare-fun b!2376775 () Bool)

(declare-fun tp!759106 () Bool)

(assert (=> b!2376775 (= e!1516376 tp!759106)))

(assert (=> b!2376380 (= tp!759050 e!1516376)))

(declare-fun b!2376774 () Bool)

(declare-fun tp!759105 () Bool)

(declare-fun tp!759103 () Bool)

(assert (=> b!2376774 (= e!1516376 (and tp!759105 tp!759103))))

(assert (= (and b!2376380 (is-ElementMatch!6964 (regTwo!14441 r!13927))) b!2376773))

(assert (= (and b!2376380 (is-Concat!11600 (regTwo!14441 r!13927))) b!2376774))

(assert (= (and b!2376380 (is-Star!6964 (regTwo!14441 r!13927))) b!2376775))

(assert (= (and b!2376380 (is-Union!6964 (regTwo!14441 r!13927))) b!2376776))

(declare-fun b!2376780 () Bool)

(declare-fun e!1516377 () Bool)

(declare-fun tp!759109 () Bool)

(declare-fun tp!759112 () Bool)

(assert (=> b!2376780 (= e!1516377 (and tp!759109 tp!759112))))

(declare-fun b!2376777 () Bool)

(assert (=> b!2376777 (= e!1516377 tp_is_empty!11341)))

(declare-fun b!2376779 () Bool)

(declare-fun tp!759111 () Bool)

(assert (=> b!2376779 (= e!1516377 tp!759111)))

(assert (=> b!2376379 (= tp!759048 e!1516377)))

(declare-fun b!2376778 () Bool)

(declare-fun tp!759110 () Bool)

(declare-fun tp!759108 () Bool)

(assert (=> b!2376778 (= e!1516377 (and tp!759110 tp!759108))))

(assert (= (and b!2376379 (is-ElementMatch!6964 (h!33469 l!9164))) b!2376777))

(assert (= (and b!2376379 (is-Concat!11600 (h!33469 l!9164))) b!2376778))

(assert (= (and b!2376379 (is-Star!6964 (h!33469 l!9164))) b!2376779))

(assert (= (and b!2376379 (is-Union!6964 (h!33469 l!9164))) b!2376780))

(declare-fun b!2376785 () Bool)

(declare-fun e!1516380 () Bool)

(declare-fun tp!759117 () Bool)

(declare-fun tp!759118 () Bool)

(assert (=> b!2376785 (= e!1516380 (and tp!759117 tp!759118))))

(assert (=> b!2376379 (= tp!759055 e!1516380)))

(assert (= (and b!2376379 (is-Cons!28068 (t!208143 l!9164))) b!2376785))

(declare-fun b!2376789 () Bool)

(declare-fun e!1516381 () Bool)

(declare-fun tp!759120 () Bool)

(declare-fun tp!759123 () Bool)

(assert (=> b!2376789 (= e!1516381 (and tp!759120 tp!759123))))

(declare-fun b!2376786 () Bool)

(assert (=> b!2376786 (= e!1516381 tp_is_empty!11341)))

(declare-fun b!2376788 () Bool)

(declare-fun tp!759122 () Bool)

(assert (=> b!2376788 (= e!1516381 tp!759122)))

(assert (=> b!2376378 (= tp!759054 e!1516381)))

(declare-fun b!2376787 () Bool)

(declare-fun tp!759121 () Bool)

(declare-fun tp!759119 () Bool)

(assert (=> b!2376787 (= e!1516381 (and tp!759121 tp!759119))))

(assert (= (and b!2376378 (is-ElementMatch!6964 (regOne!14440 r!13927))) b!2376786))

(assert (= (and b!2376378 (is-Concat!11600 (regOne!14440 r!13927))) b!2376787))

(assert (= (and b!2376378 (is-Star!6964 (regOne!14440 r!13927))) b!2376788))

(assert (= (and b!2376378 (is-Union!6964 (regOne!14440 r!13927))) b!2376789))

(declare-fun b!2376793 () Bool)

(declare-fun e!1516382 () Bool)

(declare-fun tp!759125 () Bool)

(declare-fun tp!759128 () Bool)

(assert (=> b!2376793 (= e!1516382 (and tp!759125 tp!759128))))

(declare-fun b!2376790 () Bool)

(assert (=> b!2376790 (= e!1516382 tp_is_empty!11341)))

(declare-fun b!2376792 () Bool)

(declare-fun tp!759127 () Bool)

(assert (=> b!2376792 (= e!1516382 tp!759127)))

(assert (=> b!2376378 (= tp!759049 e!1516382)))

(declare-fun b!2376791 () Bool)

(declare-fun tp!759126 () Bool)

(declare-fun tp!759124 () Bool)

(assert (=> b!2376791 (= e!1516382 (and tp!759126 tp!759124))))

(assert (= (and b!2376378 (is-ElementMatch!6964 (regTwo!14440 r!13927))) b!2376790))

(assert (= (and b!2376378 (is-Concat!11600 (regTwo!14440 r!13927))) b!2376791))

(assert (= (and b!2376378 (is-Star!6964 (regTwo!14440 r!13927))) b!2376792))

(assert (= (and b!2376378 (is-Union!6964 (regTwo!14440 r!13927))) b!2376793))

(declare-fun b_lambda!74007 () Bool)

(assert (= b_lambda!74005 (or start!233194 b_lambda!74007)))

(declare-fun bs!461604 () Bool)

(declare-fun d!696123 () Bool)

(assert (= bs!461604 (and d!696123 start!233194)))

(assert (=> bs!461604 (= (dynLambda!12085 lambda!88266 (h!33469 l!9164)) (validRegex!2691 (h!33469 l!9164)))))

(declare-fun m!2782119 () Bool)

(assert (=> bs!461604 m!2782119))

(assert (=> b!2376671 d!696123))

(push 1)

(assert (not b!2376780))

(assert (not b!2376741))

(assert (not b!2376491))

(assert (not b!2376789))

(assert (not d!696085))

(assert (not b!2376745))

(assert (not b!2376719))

(assert (not b!2376726))

(assert (not b!2376734))

(assert (not bm!144428))

(assert (not b!2376720))

(assert (not b!2376609))

(assert (not b!2376768))

(assert (not b!2376791))

(assert (not b!2376611))

(assert (not bm!144422))

(assert (not b!2376724))

(assert (not b!2376772))

(assert (not b!2376655))

(assert (not b!2376610))

(assert (not b!2376774))

(assert (not b!2376748))

(assert (not b!2376792))

(assert (not b!2376785))

(assert (not b!2376551))

(assert (not b!2376778))

(assert (not b!2376761))

(assert (not b!2376763))

(assert (not bm!144419))

(assert (not b!2376550))

(assert (not b!2376762))

(assert (not b!2376561))

(assert (not d!696107))

(assert (not b!2376612))

(assert (not b!2376779))

(assert (not b!2376787))

(assert (not b!2376746))

(assert (not b!2376739))

(assert (not b!2376615))

(assert (not b!2376661))

(assert (not b!2376771))

(assert (not d!696109))

(assert (not bm!144418))

(assert (not b!2376742))

(assert (not b!2376793))

(assert (not b!2376660))

(assert (not b!2376672))

(assert (not b!2376664))

(assert (not b!2376788))

(assert (not b!2376775))

(assert (not d!696103))

(assert (not b!2376663))

(assert (not b!2376740))

(assert (not b!2376548))

(assert (not b!2376499))

(assert (not d!696101))

(assert (not b!2376718))

(assert (not d!696077))

(assert (not b!2376770))

(assert (not d!696087))

(assert (not b!2376736))

(assert (not b!2376721))

(assert (not d!696089))

(assert (not b!2376616))

(assert tp_is_empty!11341)

(assert (not b_lambda!74007))

(assert (not d!696121))

(assert (not b!2376556))

(assert (not b!2376558))

(assert (not bs!461604))

(assert (not d!696105))

(assert (not b!2376656))

(assert (not b!2376729))

(assert (not b!2376725))

(assert (not d!696091))

(assert (not d!696111))

(assert (not b!2376728))

(assert (not b!2376749))

(assert (not b!2376657))

(assert (not d!696117))

(assert (not b!2376776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

