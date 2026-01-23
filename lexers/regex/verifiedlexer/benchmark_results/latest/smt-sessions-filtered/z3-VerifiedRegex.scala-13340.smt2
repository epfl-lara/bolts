; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724022 () Bool)

(assert start!724022)

(declare-fun b!7464300 () Bool)

(assert (=> b!7464300 true))

(assert (=> b!7464300 true))

(assert (=> b!7464300 true))

(declare-fun lambda!461871 () Int)

(declare-fun lambda!461870 () Int)

(assert (=> b!7464300 (not (= lambda!461871 lambda!461870))))

(assert (=> b!7464300 true))

(assert (=> b!7464300 true))

(assert (=> b!7464300 true))

(declare-fun b!7464284 () Bool)

(declare-fun e!4454213 () Bool)

(declare-fun tp!2163675 () Bool)

(declare-fun tp!2163668 () Bool)

(assert (=> b!7464284 (= e!4454213 (and tp!2163675 tp!2163668))))

(declare-fun b!7464285 () Bool)

(declare-fun e!4454208 () Bool)

(declare-fun tp!2163664 () Bool)

(declare-fun tp!2163660 () Bool)

(assert (=> b!7464285 (= e!4454208 (and tp!2163664 tp!2163660))))

(declare-fun b!7464286 () Bool)

(declare-fun tp!2163665 () Bool)

(declare-fun tp!2163663 () Bool)

(assert (=> b!7464286 (= e!4454208 (and tp!2163665 tp!2163663))))

(declare-fun b!7464287 () Bool)

(declare-fun e!4454214 () Bool)

(declare-fun e!4454212 () Bool)

(assert (=> b!7464287 (= e!4454214 (not e!4454212))))

(declare-fun res!2994086 () Bool)

(assert (=> b!7464287 (=> res!2994086 e!4454212)))

(declare-fun lt!2623235 () Bool)

(assert (=> b!7464287 (= res!2994086 lt!2623235)))

(declare-fun lt!2623231 () Bool)

(declare-datatypes ((C!39360 0))(
  ( (C!39361 (val!30078 Int)) )
))
(declare-datatypes ((Regex!19543 0))(
  ( (ElementMatch!19543 (c!1379730 C!39360)) (Concat!28388 (regOne!39598 Regex!19543) (regTwo!39598 Regex!19543)) (EmptyExpr!19543) (Star!19543 (reg!19872 Regex!19543)) (EmptyLang!19543) (Union!19543 (regOne!39599 Regex!19543) (regTwo!39599 Regex!19543)) )
))
(declare-fun lt!2623227 () Regex!19543)

(declare-datatypes ((List!72259 0))(
  ( (Nil!72135) (Cons!72135 (h!78583 C!39360) (t!386828 List!72259)) )
))
(declare-fun s!13591 () List!72259)

(declare-fun matchRSpec!4222 (Regex!19543 List!72259) Bool)

(assert (=> b!7464287 (= lt!2623231 (matchRSpec!4222 lt!2623227 s!13591))))

(declare-fun matchR!9307 (Regex!19543 List!72259) Bool)

(assert (=> b!7464287 (= lt!2623231 (matchR!9307 lt!2623227 s!13591))))

(declare-datatypes ((Unit!165921 0))(
  ( (Unit!165922) )
))
(declare-fun lt!2623236 () Unit!165921)

(declare-fun mainMatchTheorem!4216 (Regex!19543 List!72259) Unit!165921)

(assert (=> b!7464287 (= lt!2623236 (mainMatchTheorem!4216 lt!2623227 s!13591))))

(declare-fun lt!2623233 () Regex!19543)

(assert (=> b!7464287 (= lt!2623235 (matchRSpec!4222 lt!2623233 s!13591))))

(assert (=> b!7464287 (= lt!2623235 (matchR!9307 lt!2623233 s!13591))))

(declare-fun lt!2623239 () Unit!165921)

(assert (=> b!7464287 (= lt!2623239 (mainMatchTheorem!4216 lt!2623233 s!13591))))

(declare-fun lt!2623237 () Regex!19543)

(declare-fun lt!2623230 () Regex!19543)

(assert (=> b!7464287 (= lt!2623227 (Union!19543 lt!2623237 lt!2623230))))

(declare-fun r2!5783 () Regex!19543)

(declare-fun rTail!78 () Regex!19543)

(assert (=> b!7464287 (= lt!2623230 (Concat!28388 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19543)

(assert (=> b!7464287 (= lt!2623237 (Concat!28388 r1!5845 rTail!78))))

(declare-fun lt!2623228 () Regex!19543)

(assert (=> b!7464287 (= lt!2623233 (Concat!28388 lt!2623228 rTail!78))))

(assert (=> b!7464287 (= lt!2623228 (Union!19543 r1!5845 r2!5783))))

(declare-fun b!7464288 () Bool)

(declare-fun tp!2163667 () Bool)

(assert (=> b!7464288 (= e!4454213 tp!2163667)))

(declare-fun b!7464289 () Bool)

(declare-fun tp!2163671 () Bool)

(assert (=> b!7464289 (= e!4454208 tp!2163671)))

(declare-fun b!7464290 () Bool)

(declare-fun tp_is_empty!49375 () Bool)

(assert (=> b!7464290 (= e!4454213 tp_is_empty!49375)))

(declare-fun b!7464291 () Bool)

(assert (=> b!7464291 (= e!4454208 tp_is_empty!49375)))

(declare-fun b!7464293 () Bool)

(declare-fun res!2994084 () Bool)

(assert (=> b!7464293 (=> (not res!2994084) (not e!4454214))))

(declare-fun validRegex!10057 (Regex!19543) Bool)

(assert (=> b!7464293 (= res!2994084 (validRegex!10057 rTail!78))))

(declare-fun b!7464294 () Bool)

(declare-fun res!2994082 () Bool)

(assert (=> b!7464294 (=> (not res!2994082) (not e!4454214))))

(assert (=> b!7464294 (= res!2994082 (validRegex!10057 r2!5783))))

(declare-fun b!7464295 () Bool)

(declare-fun e!4454211 () Bool)

(assert (=> b!7464295 (= e!4454211 true)))

(assert (=> b!7464295 (= (matchR!9307 lt!2623230 s!13591) (matchRSpec!4222 lt!2623230 s!13591))))

(declare-fun lt!2623229 () Unit!165921)

(assert (=> b!7464295 (= lt!2623229 (mainMatchTheorem!4216 lt!2623230 s!13591))))

(assert (=> b!7464295 (= (matchR!9307 lt!2623237 s!13591) (matchRSpec!4222 lt!2623237 s!13591))))

(declare-fun lt!2623238 () Unit!165921)

(assert (=> b!7464295 (= lt!2623238 (mainMatchTheorem!4216 lt!2623237 s!13591))))

(declare-fun b!7464296 () Bool)

(declare-fun tp!2163673 () Bool)

(declare-fun tp!2163662 () Bool)

(assert (=> b!7464296 (= e!4454213 (and tp!2163673 tp!2163662))))

(declare-fun b!7464297 () Bool)

(declare-fun e!4454210 () Bool)

(declare-fun tp!2163669 () Bool)

(assert (=> b!7464297 (= e!4454210 tp!2163669)))

(declare-fun b!7464298 () Bool)

(assert (=> b!7464298 (= e!4454210 tp_is_empty!49375)))

(declare-fun res!2994085 () Bool)

(assert (=> start!724022 (=> (not res!2994085) (not e!4454214))))

(assert (=> start!724022 (= res!2994085 (validRegex!10057 r1!5845))))

(assert (=> start!724022 e!4454214))

(assert (=> start!724022 e!4454208))

(assert (=> start!724022 e!4454210))

(assert (=> start!724022 e!4454213))

(declare-fun e!4454209 () Bool)

(assert (=> start!724022 e!4454209))

(declare-fun b!7464292 () Bool)

(declare-fun tp!2163661 () Bool)

(declare-fun tp!2163674 () Bool)

(assert (=> b!7464292 (= e!4454210 (and tp!2163661 tp!2163674))))

(declare-fun b!7464299 () Bool)

(declare-fun tp!2163670 () Bool)

(assert (=> b!7464299 (= e!4454209 (and tp_is_empty!49375 tp!2163670))))

(assert (=> b!7464300 (= e!4454212 e!4454211)))

(declare-fun res!2994083 () Bool)

(assert (=> b!7464300 (=> res!2994083 e!4454211)))

(declare-fun lt!2623226 () Bool)

(assert (=> b!7464300 (= res!2994083 (or lt!2623226 (not lt!2623231)))))

(declare-fun Exists!4162 (Int) Bool)

(assert (=> b!7464300 (= (Exists!4162 lambda!461870) (Exists!4162 lambda!461871))))

(declare-fun lt!2623234 () Unit!165921)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2496 (Regex!19543 Regex!19543 List!72259) Unit!165921)

(assert (=> b!7464300 (= lt!2623234 (lemmaExistCutMatchRandMatchRSpecEquivalent!2496 lt!2623228 rTail!78 s!13591))))

(assert (=> b!7464300 (= lt!2623226 (Exists!4162 lambda!461870))))

(declare-datatypes ((tuple2!68536 0))(
  ( (tuple2!68537 (_1!37571 List!72259) (_2!37571 List!72259)) )
))
(declare-datatypes ((Option!17100 0))(
  ( (None!17099) (Some!17099 (v!54228 tuple2!68536)) )
))
(declare-fun isDefined!13789 (Option!17100) Bool)

(declare-fun findConcatSeparation!3222 (Regex!19543 Regex!19543 List!72259 List!72259 List!72259) Option!17100)

(assert (=> b!7464300 (= lt!2623226 (isDefined!13789 (findConcatSeparation!3222 lt!2623228 rTail!78 Nil!72135 s!13591 s!13591)))))

(declare-fun lt!2623232 () Unit!165921)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2980 (Regex!19543 Regex!19543 List!72259) Unit!165921)

(assert (=> b!7464300 (= lt!2623232 (lemmaFindConcatSeparationEquivalentToExists!2980 lt!2623228 rTail!78 s!13591))))

(declare-fun b!7464301 () Bool)

(declare-fun tp!2163672 () Bool)

(declare-fun tp!2163666 () Bool)

(assert (=> b!7464301 (= e!4454210 (and tp!2163672 tp!2163666))))

(assert (= (and start!724022 res!2994085) b!7464294))

(assert (= (and b!7464294 res!2994082) b!7464293))

(assert (= (and b!7464293 res!2994084) b!7464287))

(assert (= (and b!7464287 (not res!2994086)) b!7464300))

(assert (= (and b!7464300 (not res!2994083)) b!7464295))

(get-info :version)

(assert (= (and start!724022 ((_ is ElementMatch!19543) r1!5845)) b!7464291))

(assert (= (and start!724022 ((_ is Concat!28388) r1!5845)) b!7464285))

(assert (= (and start!724022 ((_ is Star!19543) r1!5845)) b!7464289))

(assert (= (and start!724022 ((_ is Union!19543) r1!5845)) b!7464286))

(assert (= (and start!724022 ((_ is ElementMatch!19543) r2!5783)) b!7464298))

(assert (= (and start!724022 ((_ is Concat!28388) r2!5783)) b!7464301))

(assert (= (and start!724022 ((_ is Star!19543) r2!5783)) b!7464297))

(assert (= (and start!724022 ((_ is Union!19543) r2!5783)) b!7464292))

(assert (= (and start!724022 ((_ is ElementMatch!19543) rTail!78)) b!7464290))

(assert (= (and start!724022 ((_ is Concat!28388) rTail!78)) b!7464284))

(assert (= (and start!724022 ((_ is Star!19543) rTail!78)) b!7464288))

(assert (= (and start!724022 ((_ is Union!19543) rTail!78)) b!7464296))

(assert (= (and start!724022 ((_ is Cons!72135) s!13591)) b!7464299))

(declare-fun m!8063854 () Bool)

(assert (=> b!7464294 m!8063854))

(declare-fun m!8063856 () Bool)

(assert (=> b!7464300 m!8063856))

(declare-fun m!8063858 () Bool)

(assert (=> b!7464300 m!8063858))

(declare-fun m!8063860 () Bool)

(assert (=> b!7464300 m!8063860))

(declare-fun m!8063862 () Bool)

(assert (=> b!7464300 m!8063862))

(declare-fun m!8063864 () Bool)

(assert (=> b!7464300 m!8063864))

(assert (=> b!7464300 m!8063856))

(assert (=> b!7464300 m!8063860))

(declare-fun m!8063866 () Bool)

(assert (=> b!7464300 m!8063866))

(declare-fun m!8063868 () Bool)

(assert (=> b!7464293 m!8063868))

(declare-fun m!8063870 () Bool)

(assert (=> b!7464287 m!8063870))

(declare-fun m!8063872 () Bool)

(assert (=> b!7464287 m!8063872))

(declare-fun m!8063874 () Bool)

(assert (=> b!7464287 m!8063874))

(declare-fun m!8063876 () Bool)

(assert (=> b!7464287 m!8063876))

(declare-fun m!8063878 () Bool)

(assert (=> b!7464287 m!8063878))

(declare-fun m!8063880 () Bool)

(assert (=> b!7464287 m!8063880))

(declare-fun m!8063882 () Bool)

(assert (=> b!7464295 m!8063882))

(declare-fun m!8063884 () Bool)

(assert (=> b!7464295 m!8063884))

(declare-fun m!8063886 () Bool)

(assert (=> b!7464295 m!8063886))

(declare-fun m!8063888 () Bool)

(assert (=> b!7464295 m!8063888))

(declare-fun m!8063890 () Bool)

(assert (=> b!7464295 m!8063890))

(declare-fun m!8063892 () Bool)

(assert (=> b!7464295 m!8063892))

(declare-fun m!8063894 () Bool)

(assert (=> start!724022 m!8063894))

(check-sat (not b!7464301) (not b!7464284) (not b!7464288) (not b!7464289) (not b!7464285) (not b!7464294) (not b!7464296) (not start!724022) (not b!7464299) (not b!7464293) (not b!7464297) (not b!7464292) tp_is_empty!49375 (not b!7464295) (not b!7464300) (not b!7464286) (not b!7464287))
(check-sat)
