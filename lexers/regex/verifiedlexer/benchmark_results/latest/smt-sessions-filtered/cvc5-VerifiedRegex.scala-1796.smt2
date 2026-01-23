; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!89536 () Bool)

(assert start!89536)

(declare-fun b!1028498 () Bool)

(assert (=> b!1028498 true))

(assert (=> b!1028498 true))

(declare-fun lambda!36808 () Int)

(declare-fun lambda!36807 () Int)

(assert (=> b!1028498 (not (= lambda!36808 lambda!36807))))

(assert (=> b!1028498 true))

(assert (=> b!1028498 true))

(declare-fun b!1028496 () Bool)

(declare-fun e!655948 () Bool)

(declare-fun tp!311852 () Bool)

(declare-fun tp!311853 () Bool)

(assert (=> b!1028496 (= e!655948 (and tp!311852 tp!311853))))

(declare-fun b!1028497 () Bool)

(declare-fun tp_is_empty!5343 () Bool)

(assert (=> b!1028497 (= e!655948 tp_is_empty!5343)))

(declare-fun e!655946 () Bool)

(declare-fun e!655949 () Bool)

(assert (=> b!1028498 (= e!655946 e!655949)))

(declare-fun res!462036 () Bool)

(assert (=> b!1028498 (=> res!462036 e!655949)))

(declare-datatypes ((C!6270 0))(
  ( (C!6271 (val!3383 Int)) )
))
(declare-datatypes ((List!10080 0))(
  ( (Nil!10064) (Cons!10064 (h!15465 C!6270) (t!101126 List!10080)) )
))
(declare-fun s!10566 () List!10080)

(declare-fun isEmpty!6437 (List!10080) Bool)

(assert (=> b!1028498 (= res!462036 (isEmpty!6437 s!10566))))

(declare-fun Exists!577 (Int) Bool)

(assert (=> b!1028498 (= (Exists!577 lambda!36807) (Exists!577 lambda!36808))))

(declare-datatypes ((Unit!15375 0))(
  ( (Unit!15376) )
))
(declare-fun lt!355572 () Unit!15375)

(declare-datatypes ((Regex!2850 0))(
  ( (ElementMatch!2850 (c!170583 C!6270)) (Concat!4683 (regOne!6212 Regex!2850) (regTwo!6212 Regex!2850)) (EmptyExpr!2850) (Star!2850 (reg!3179 Regex!2850)) (EmptyLang!2850) (Union!2850 (regOne!6213 Regex!2850) (regTwo!6213 Regex!2850)) )
))
(declare-fun r!15766 () Regex!2850)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!273 (Regex!2850 Regex!2850 List!10080) Unit!15375)

(assert (=> b!1028498 (= lt!355572 (lemmaExistCutMatchRandMatchRSpecEquivalent!273 (regOne!6212 r!15766) EmptyExpr!2850 s!10566))))

(declare-datatypes ((tuple2!11474 0))(
  ( (tuple2!11475 (_1!6563 List!10080) (_2!6563 List!10080)) )
))
(declare-datatypes ((Option!2379 0))(
  ( (None!2378) (Some!2378 (v!19795 tuple2!11474)) )
))
(declare-fun lt!355575 () Option!2379)

(declare-fun isDefined!2021 (Option!2379) Bool)

(assert (=> b!1028498 (= (isDefined!2021 lt!355575) (Exists!577 lambda!36807))))

(declare-fun findConcatSeparation!485 (Regex!2850 Regex!2850 List!10080 List!10080 List!10080) Option!2379)

(assert (=> b!1028498 (= lt!355575 (findConcatSeparation!485 (regOne!6212 r!15766) EmptyExpr!2850 Nil!10064 s!10566 s!10566))))

(declare-fun lt!355576 () Unit!15375)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!485 (Regex!2850 Regex!2850 List!10080) Unit!15375)

(assert (=> b!1028498 (= lt!355576 (lemmaFindConcatSeparationEquivalentToExists!485 (regOne!6212 r!15766) EmptyExpr!2850 s!10566))))

(declare-fun b!1028499 () Bool)

(declare-fun tp!311854 () Bool)

(declare-fun tp!311849 () Bool)

(assert (=> b!1028499 (= e!655948 (and tp!311854 tp!311849))))

(declare-fun b!1028500 () Bool)

(declare-fun res!462032 () Bool)

(assert (=> b!1028500 (=> res!462032 e!655949)))

(declare-fun isEmpty!6438 (Option!2379) Bool)

(assert (=> b!1028500 (= res!462032 (not (isEmpty!6438 lt!355575)))))

(declare-fun b!1028501 () Bool)

(declare-fun e!655945 () Bool)

(declare-fun tp!311850 () Bool)

(assert (=> b!1028501 (= e!655945 (and tp_is_empty!5343 tp!311850))))

(declare-fun b!1028503 () Bool)

(declare-fun e!655947 () Bool)

(assert (=> b!1028503 (= e!655947 (not e!655946))))

(declare-fun res!462035 () Bool)

(assert (=> b!1028503 (=> res!462035 e!655946)))

(declare-fun lt!355571 () Bool)

(assert (=> b!1028503 (= res!462035 (or lt!355571 (and (is-Concat!4683 r!15766) (is-EmptyExpr!2850 (regOne!6212 r!15766))) (not (is-Concat!4683 r!15766)) (not (is-EmptyExpr!2850 (regTwo!6212 r!15766)))))))

(declare-fun matchRSpec!649 (Regex!2850 List!10080) Bool)

(assert (=> b!1028503 (= lt!355571 (matchRSpec!649 r!15766 s!10566))))

(declare-fun matchR!1386 (Regex!2850 List!10080) Bool)

(assert (=> b!1028503 (= lt!355571 (matchR!1386 r!15766 s!10566))))

(declare-fun lt!355573 () Unit!15375)

(declare-fun mainMatchTheorem!649 (Regex!2850 List!10080) Unit!15375)

(assert (=> b!1028503 (= lt!355573 (mainMatchTheorem!649 r!15766 s!10566))))

(declare-fun b!1028504 () Bool)

(declare-fun tp!311851 () Bool)

(assert (=> b!1028504 (= e!655948 tp!311851)))

(declare-fun b!1028505 () Bool)

(declare-fun e!655944 () Bool)

(assert (=> b!1028505 (= e!655949 e!655944)))

(declare-fun res!462033 () Bool)

(assert (=> b!1028505 (=> res!462033 e!655944)))

(declare-fun lt!355570 () Bool)

(declare-fun lt!355577 () Bool)

(assert (=> b!1028505 (= res!462033 (or (not lt!355570) (not lt!355577)))))

(assert (=> b!1028505 (= lt!355577 lt!355570)))

(declare-fun lt!355578 () Regex!2850)

(assert (=> b!1028505 (= lt!355570 (matchR!1386 lt!355578 s!10566))))

(assert (=> b!1028505 (= lt!355577 (matchR!1386 (regOne!6212 r!15766) s!10566))))

(declare-fun removeUselessConcat!407 (Regex!2850) Regex!2850)

(assert (=> b!1028505 (= lt!355578 (removeUselessConcat!407 (regOne!6212 r!15766)))))

(declare-fun lt!355574 () Unit!15375)

(declare-fun lemmaRemoveUselessConcatSound!245 (Regex!2850 List!10080) Unit!15375)

(assert (=> b!1028505 (= lt!355574 (lemmaRemoveUselessConcatSound!245 (regOne!6212 r!15766) s!10566))))

(declare-fun b!1028506 () Bool)

(declare-fun res!462034 () Bool)

(assert (=> b!1028506 (=> res!462034 e!655944)))

(declare-fun validRegex!1319 (Regex!2850) Bool)

(assert (=> b!1028506 (= res!462034 (not (validRegex!1319 (regOne!6212 r!15766))))))

(declare-fun res!462031 () Bool)

(assert (=> start!89536 (=> (not res!462031) (not e!655947))))

(assert (=> start!89536 (= res!462031 (validRegex!1319 r!15766))))

(assert (=> start!89536 e!655947))

(assert (=> start!89536 e!655948))

(assert (=> start!89536 e!655945))

(declare-fun b!1028502 () Bool)

(assert (=> b!1028502 (= e!655944 true)))

(assert (= (and start!89536 res!462031) b!1028503))

(assert (= (and b!1028503 (not res!462035)) b!1028498))

(assert (= (and b!1028498 (not res!462036)) b!1028500))

(assert (= (and b!1028500 (not res!462032)) b!1028505))

(assert (= (and b!1028505 (not res!462033)) b!1028506))

(assert (= (and b!1028506 (not res!462034)) b!1028502))

(assert (= (and start!89536 (is-ElementMatch!2850 r!15766)) b!1028497))

(assert (= (and start!89536 (is-Concat!4683 r!15766)) b!1028496))

(assert (= (and start!89536 (is-Star!2850 r!15766)) b!1028504))

(assert (= (and start!89536 (is-Union!2850 r!15766)) b!1028499))

(assert (= (and start!89536 (is-Cons!10064 s!10566)) b!1028501))

(declare-fun m!1203393 () Bool)

(assert (=> b!1028506 m!1203393))

(declare-fun m!1203395 () Bool)

(assert (=> b!1028505 m!1203395))

(declare-fun m!1203397 () Bool)

(assert (=> b!1028505 m!1203397))

(declare-fun m!1203399 () Bool)

(assert (=> b!1028505 m!1203399))

(declare-fun m!1203401 () Bool)

(assert (=> b!1028505 m!1203401))

(declare-fun m!1203403 () Bool)

(assert (=> b!1028498 m!1203403))

(declare-fun m!1203405 () Bool)

(assert (=> b!1028498 m!1203405))

(declare-fun m!1203407 () Bool)

(assert (=> b!1028498 m!1203407))

(declare-fun m!1203409 () Bool)

(assert (=> b!1028498 m!1203409))

(assert (=> b!1028498 m!1203407))

(declare-fun m!1203411 () Bool)

(assert (=> b!1028498 m!1203411))

(declare-fun m!1203413 () Bool)

(assert (=> b!1028498 m!1203413))

(declare-fun m!1203415 () Bool)

(assert (=> b!1028498 m!1203415))

(declare-fun m!1203417 () Bool)

(assert (=> start!89536 m!1203417))

(declare-fun m!1203419 () Bool)

(assert (=> b!1028500 m!1203419))

(declare-fun m!1203421 () Bool)

(assert (=> b!1028503 m!1203421))

(declare-fun m!1203423 () Bool)

(assert (=> b!1028503 m!1203423))

(declare-fun m!1203425 () Bool)

(assert (=> b!1028503 m!1203425))

(push 1)

(assert tp_is_empty!5343)

(assert (not b!1028501))

(assert (not b!1028505))

(assert (not b!1028496))

(assert (not b!1028504))

(assert (not b!1028499))

(assert (not b!1028503))

(assert (not start!89536))

(assert (not b!1028506))

(assert (not b!1028498))

(assert (not b!1028500))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

