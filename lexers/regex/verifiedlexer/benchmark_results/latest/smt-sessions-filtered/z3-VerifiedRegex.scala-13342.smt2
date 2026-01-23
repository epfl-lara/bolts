; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724030 () Bool)

(assert start!724030)

(declare-fun b!7464611 () Bool)

(assert (=> b!7464611 true))

(assert (=> b!7464611 true))

(assert (=> b!7464611 true))

(declare-fun lambda!461923 () Int)

(declare-fun lambda!461922 () Int)

(assert (=> b!7464611 (not (= lambda!461923 lambda!461922))))

(assert (=> b!7464611 true))

(assert (=> b!7464611 true))

(assert (=> b!7464611 true))

(declare-fun bs!1929861 () Bool)

(declare-fun b!7464620 () Bool)

(assert (= bs!1929861 (and b!7464620 b!7464611)))

(declare-fun lambda!461924 () Int)

(declare-datatypes ((C!39368 0))(
  ( (C!39369 (val!30082 Int)) )
))
(declare-datatypes ((Regex!19547 0))(
  ( (ElementMatch!19547 (c!1379734 C!39368)) (Concat!28392 (regOne!39606 Regex!19547) (regTwo!39606 Regex!19547)) (EmptyExpr!19547) (Star!19547 (reg!19876 Regex!19547)) (EmptyLang!19547) (Union!19547 (regOne!39607 Regex!19547) (regTwo!39607 Regex!19547)) )
))
(declare-fun lt!2623433 () Regex!19547)

(declare-fun r1!5845 () Regex!19547)

(assert (=> bs!1929861 (= (= r1!5845 lt!2623433) (= lambda!461924 lambda!461922))))

(assert (=> bs!1929861 (not (= lambda!461924 lambda!461923))))

(assert (=> b!7464620 true))

(assert (=> b!7464620 true))

(assert (=> b!7464620 true))

(declare-fun lambda!461925 () Int)

(assert (=> bs!1929861 (not (= lambda!461925 lambda!461922))))

(assert (=> bs!1929861 (= (= r1!5845 lt!2623433) (= lambda!461925 lambda!461923))))

(assert (=> b!7464620 (not (= lambda!461925 lambda!461924))))

(assert (=> b!7464620 true))

(assert (=> b!7464620 true))

(assert (=> b!7464620 true))

(declare-fun b!7464607 () Bool)

(declare-fun e!4454346 () Bool)

(declare-fun e!4454345 () Bool)

(assert (=> b!7464607 (= e!4454346 e!4454345)))

(declare-fun res!2994236 () Bool)

(assert (=> b!7464607 (=> res!2994236 e!4454345)))

(declare-fun lt!2623448 () Bool)

(declare-fun lt!2623434 () Bool)

(assert (=> b!7464607 (= res!2994236 (or (and (not lt!2623448) (not lt!2623434)) (not lt!2623448)))))

(declare-fun lt!2623449 () Regex!19547)

(declare-datatypes ((List!72263 0))(
  ( (Nil!72139) (Cons!72139 (h!78587 C!39368) (t!386832 List!72263)) )
))
(declare-fun s!13591 () List!72263)

(declare-fun matchRSpec!4226 (Regex!19547 List!72263) Bool)

(assert (=> b!7464607 (= lt!2623434 (matchRSpec!4226 lt!2623449 s!13591))))

(declare-fun matchR!9311 (Regex!19547 List!72263) Bool)

(assert (=> b!7464607 (= lt!2623434 (matchR!9311 lt!2623449 s!13591))))

(declare-datatypes ((Unit!165929 0))(
  ( (Unit!165930) )
))
(declare-fun lt!2623442 () Unit!165929)

(declare-fun mainMatchTheorem!4220 (Regex!19547 List!72263) Unit!165929)

(assert (=> b!7464607 (= lt!2623442 (mainMatchTheorem!4220 lt!2623449 s!13591))))

(declare-fun lt!2623443 () Regex!19547)

(assert (=> b!7464607 (= lt!2623448 (matchRSpec!4226 lt!2623443 s!13591))))

(assert (=> b!7464607 (= lt!2623448 (matchR!9311 lt!2623443 s!13591))))

(declare-fun lt!2623438 () Unit!165929)

(assert (=> b!7464607 (= lt!2623438 (mainMatchTheorem!4220 lt!2623443 s!13591))))

(declare-fun b!7464608 () Bool)

(declare-fun e!4454349 () Bool)

(declare-fun tp!2163862 () Bool)

(assert (=> b!7464608 (= e!4454349 tp!2163862)))

(declare-fun b!7464609 () Bool)

(declare-fun res!2994237 () Bool)

(declare-fun e!4454350 () Bool)

(assert (=> b!7464609 (=> (not res!2994237) (not e!4454350))))

(declare-fun rTail!78 () Regex!19547)

(declare-fun validRegex!10061 (Regex!19547) Bool)

(assert (=> b!7464609 (= res!2994237 (validRegex!10061 rTail!78))))

(declare-fun b!7464610 () Bool)

(declare-fun e!4454348 () Bool)

(assert (=> b!7464610 (= e!4454350 (not e!4454348))))

(declare-fun res!2994238 () Bool)

(assert (=> b!7464610 (=> res!2994238 e!4454348)))

(declare-fun lt!2623444 () Bool)

(assert (=> b!7464610 (= res!2994238 lt!2623444)))

(declare-fun lt!2623439 () Bool)

(declare-fun lt!2623432 () Regex!19547)

(assert (=> b!7464610 (= lt!2623439 (matchRSpec!4226 lt!2623432 s!13591))))

(assert (=> b!7464610 (= lt!2623439 (matchR!9311 lt!2623432 s!13591))))

(declare-fun lt!2623441 () Unit!165929)

(assert (=> b!7464610 (= lt!2623441 (mainMatchTheorem!4220 lt!2623432 s!13591))))

(declare-fun lt!2623446 () Regex!19547)

(assert (=> b!7464610 (= lt!2623444 (matchRSpec!4226 lt!2623446 s!13591))))

(assert (=> b!7464610 (= lt!2623444 (matchR!9311 lt!2623446 s!13591))))

(declare-fun lt!2623447 () Unit!165929)

(assert (=> b!7464610 (= lt!2623447 (mainMatchTheorem!4220 lt!2623446 s!13591))))

(assert (=> b!7464610 (= lt!2623432 (Union!19547 lt!2623443 lt!2623449))))

(declare-fun r2!5783 () Regex!19547)

(assert (=> b!7464610 (= lt!2623449 (Concat!28392 r2!5783 rTail!78))))

(assert (=> b!7464610 (= lt!2623443 (Concat!28392 r1!5845 rTail!78))))

(assert (=> b!7464610 (= lt!2623446 (Concat!28392 lt!2623433 rTail!78))))

(assert (=> b!7464610 (= lt!2623433 (Union!19547 r1!5845 r2!5783))))

(assert (=> b!7464611 (= e!4454348 e!4454346)))

(declare-fun res!2994233 () Bool)

(assert (=> b!7464611 (=> res!2994233 e!4454346)))

(declare-fun lt!2623435 () Bool)

(assert (=> b!7464611 (= res!2994233 (or lt!2623435 (not lt!2623439)))))

(declare-fun Exists!4166 (Int) Bool)

(assert (=> b!7464611 (= (Exists!4166 lambda!461922) (Exists!4166 lambda!461923))))

(declare-fun lt!2623440 () Unit!165929)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2500 (Regex!19547 Regex!19547 List!72263) Unit!165929)

(assert (=> b!7464611 (= lt!2623440 (lemmaExistCutMatchRandMatchRSpecEquivalent!2500 lt!2623433 rTail!78 s!13591))))

(assert (=> b!7464611 (= lt!2623435 (Exists!4166 lambda!461922))))

(declare-datatypes ((tuple2!68544 0))(
  ( (tuple2!68545 (_1!37575 List!72263) (_2!37575 List!72263)) )
))
(declare-datatypes ((Option!17104 0))(
  ( (None!17103) (Some!17103 (v!54232 tuple2!68544)) )
))
(declare-fun isDefined!13793 (Option!17104) Bool)

(declare-fun findConcatSeparation!3226 (Regex!19547 Regex!19547 List!72263 List!72263 List!72263) Option!17104)

(assert (=> b!7464611 (= lt!2623435 (isDefined!13793 (findConcatSeparation!3226 lt!2623433 rTail!78 Nil!72139 s!13591 s!13591)))))

(declare-fun lt!2623445 () Unit!165929)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2984 (Regex!19547 Regex!19547 List!72263) Unit!165929)

(assert (=> b!7464611 (= lt!2623445 (lemmaFindConcatSeparationEquivalentToExists!2984 lt!2623433 rTail!78 s!13591))))

(declare-fun b!7464612 () Bool)

(declare-fun e!4454344 () Bool)

(declare-fun tp!2163855 () Bool)

(declare-fun tp!2163856 () Bool)

(assert (=> b!7464612 (= e!4454344 (and tp!2163855 tp!2163856))))

(declare-fun b!7464613 () Bool)

(declare-fun e!4454347 () Bool)

(declare-fun tp!2163860 () Bool)

(declare-fun tp!2163857 () Bool)

(assert (=> b!7464613 (= e!4454347 (and tp!2163860 tp!2163857))))

(declare-fun b!7464614 () Bool)

(declare-fun res!2994235 () Bool)

(assert (=> b!7464614 (=> (not res!2994235) (not e!4454350))))

(assert (=> b!7464614 (= res!2994235 (validRegex!10061 r2!5783))))

(declare-fun b!7464615 () Bool)

(declare-fun tp!2163859 () Bool)

(declare-fun tp!2163865 () Bool)

(assert (=> b!7464615 (= e!4454349 (and tp!2163859 tp!2163865))))

(declare-fun b!7464616 () Bool)

(declare-fun tp!2163863 () Bool)

(assert (=> b!7464616 (= e!4454347 tp!2163863)))

(declare-fun b!7464617 () Bool)

(declare-fun tp!2163864 () Bool)

(declare-fun tp!2163852 () Bool)

(assert (=> b!7464617 (= e!4454347 (and tp!2163864 tp!2163852))))

(declare-fun res!2994234 () Bool)

(assert (=> start!724030 (=> (not res!2994234) (not e!4454350))))

(assert (=> start!724030 (= res!2994234 (validRegex!10061 r1!5845))))

(assert (=> start!724030 e!4454350))

(assert (=> start!724030 e!4454347))

(assert (=> start!724030 e!4454344))

(assert (=> start!724030 e!4454349))

(declare-fun e!4454343 () Bool)

(assert (=> start!724030 e!4454343))

(declare-fun b!7464618 () Bool)

(declare-fun tp_is_empty!49383 () Bool)

(assert (=> b!7464618 (= e!4454344 tp_is_empty!49383)))

(declare-fun b!7464619 () Bool)

(assert (=> b!7464619 (= e!4454347 tp_is_empty!49383)))

(assert (=> b!7464620 (= e!4454345 true)))

(assert (=> b!7464620 (= (Exists!4166 lambda!461924) (Exists!4166 lambda!461925))))

(declare-fun lt!2623436 () Unit!165929)

(assert (=> b!7464620 (= lt!2623436 (lemmaExistCutMatchRandMatchRSpecEquivalent!2500 r1!5845 rTail!78 s!13591))))

(assert (=> b!7464620 (= (isDefined!13793 (findConcatSeparation!3226 r1!5845 rTail!78 Nil!72139 s!13591 s!13591)) (Exists!4166 lambda!461924))))

(declare-fun lt!2623437 () Unit!165929)

(assert (=> b!7464620 (= lt!2623437 (lemmaFindConcatSeparationEquivalentToExists!2984 r1!5845 rTail!78 s!13591))))

(declare-fun b!7464621 () Bool)

(assert (=> b!7464621 (= e!4454349 tp_is_empty!49383)))

(declare-fun b!7464622 () Bool)

(declare-fun tp!2163866 () Bool)

(declare-fun tp!2163854 () Bool)

(assert (=> b!7464622 (= e!4454349 (and tp!2163866 tp!2163854))))

(declare-fun b!7464623 () Bool)

(declare-fun tp!2163858 () Bool)

(declare-fun tp!2163867 () Bool)

(assert (=> b!7464623 (= e!4454344 (and tp!2163858 tp!2163867))))

(declare-fun b!7464624 () Bool)

(declare-fun tp!2163861 () Bool)

(assert (=> b!7464624 (= e!4454343 (and tp_is_empty!49383 tp!2163861))))

(declare-fun b!7464625 () Bool)

(declare-fun tp!2163853 () Bool)

(assert (=> b!7464625 (= e!4454344 tp!2163853)))

(assert (= (and start!724030 res!2994234) b!7464614))

(assert (= (and b!7464614 res!2994235) b!7464609))

(assert (= (and b!7464609 res!2994237) b!7464610))

(assert (= (and b!7464610 (not res!2994238)) b!7464611))

(assert (= (and b!7464611 (not res!2994233)) b!7464607))

(assert (= (and b!7464607 (not res!2994236)) b!7464620))

(get-info :version)

(assert (= (and start!724030 ((_ is ElementMatch!19547) r1!5845)) b!7464619))

(assert (= (and start!724030 ((_ is Concat!28392) r1!5845)) b!7464613))

(assert (= (and start!724030 ((_ is Star!19547) r1!5845)) b!7464616))

(assert (= (and start!724030 ((_ is Union!19547) r1!5845)) b!7464617))

(assert (= (and start!724030 ((_ is ElementMatch!19547) r2!5783)) b!7464618))

(assert (= (and start!724030 ((_ is Concat!28392) r2!5783)) b!7464623))

(assert (= (and start!724030 ((_ is Star!19547) r2!5783)) b!7464625))

(assert (= (and start!724030 ((_ is Union!19547) r2!5783)) b!7464612))

(assert (= (and start!724030 ((_ is ElementMatch!19547) rTail!78)) b!7464621))

(assert (= (and start!724030 ((_ is Concat!28392) rTail!78)) b!7464615))

(assert (= (and start!724030 ((_ is Star!19547) rTail!78)) b!7464608))

(assert (= (and start!724030 ((_ is Union!19547) rTail!78)) b!7464622))

(assert (= (and start!724030 ((_ is Cons!72139) s!13591)) b!7464624))

(declare-fun m!8064050 () Bool)

(assert (=> b!7464610 m!8064050))

(declare-fun m!8064052 () Bool)

(assert (=> b!7464610 m!8064052))

(declare-fun m!8064054 () Bool)

(assert (=> b!7464610 m!8064054))

(declare-fun m!8064056 () Bool)

(assert (=> b!7464610 m!8064056))

(declare-fun m!8064058 () Bool)

(assert (=> b!7464610 m!8064058))

(declare-fun m!8064060 () Bool)

(assert (=> b!7464610 m!8064060))

(declare-fun m!8064062 () Bool)

(assert (=> b!7464614 m!8064062))

(declare-fun m!8064064 () Bool)

(assert (=> b!7464620 m!8064064))

(declare-fun m!8064066 () Bool)

(assert (=> b!7464620 m!8064066))

(declare-fun m!8064068 () Bool)

(assert (=> b!7464620 m!8064068))

(declare-fun m!8064070 () Bool)

(assert (=> b!7464620 m!8064070))

(declare-fun m!8064072 () Bool)

(assert (=> b!7464620 m!8064072))

(declare-fun m!8064074 () Bool)

(assert (=> b!7464620 m!8064074))

(assert (=> b!7464620 m!8064066))

(assert (=> b!7464620 m!8064064))

(declare-fun m!8064076 () Bool)

(assert (=> start!724030 m!8064076))

(declare-fun m!8064078 () Bool)

(assert (=> b!7464611 m!8064078))

(declare-fun m!8064080 () Bool)

(assert (=> b!7464611 m!8064080))

(declare-fun m!8064082 () Bool)

(assert (=> b!7464611 m!8064082))

(assert (=> b!7464611 m!8064082))

(declare-fun m!8064084 () Bool)

(assert (=> b!7464611 m!8064084))

(declare-fun m!8064086 () Bool)

(assert (=> b!7464611 m!8064086))

(assert (=> b!7464611 m!8064084))

(declare-fun m!8064088 () Bool)

(assert (=> b!7464611 m!8064088))

(declare-fun m!8064090 () Bool)

(assert (=> b!7464607 m!8064090))

(declare-fun m!8064092 () Bool)

(assert (=> b!7464607 m!8064092))

(declare-fun m!8064094 () Bool)

(assert (=> b!7464607 m!8064094))

(declare-fun m!8064096 () Bool)

(assert (=> b!7464607 m!8064096))

(declare-fun m!8064098 () Bool)

(assert (=> b!7464607 m!8064098))

(declare-fun m!8064100 () Bool)

(assert (=> b!7464607 m!8064100))

(declare-fun m!8064102 () Bool)

(assert (=> b!7464609 m!8064102))

(check-sat (not start!724030) (not b!7464624) (not b!7464613) tp_is_empty!49383 (not b!7464622) (not b!7464617) (not b!7464612) (not b!7464620) (not b!7464625) (not b!7464611) (not b!7464609) (not b!7464623) (not b!7464610) (not b!7464608) (not b!7464607) (not b!7464614) (not b!7464615) (not b!7464616))
(check-sat)
