; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731316 () Bool)

(assert start!731316)

(declare-fun b!7573541 () Bool)

(assert (=> b!7573541 true))

(assert (=> b!7573541 true))

(declare-fun b!7573535 () Bool)

(declare-fun e!4508482 () Bool)

(declare-fun tp!2206965 () Bool)

(assert (=> b!7573535 (= e!4508482 tp!2206965)))

(declare-fun b!7573536 () Bool)

(declare-fun e!4508484 () Bool)

(declare-fun e!4508483 () Bool)

(assert (=> b!7573536 (= e!4508484 (not e!4508483))))

(declare-fun res!3033866 () Bool)

(assert (=> b!7573536 (=> res!3033866 e!4508483)))

(declare-datatypes ((C!40404 0))(
  ( (C!40405 (val!30642 Int)) )
))
(declare-datatypes ((Regex!20039 0))(
  ( (ElementMatch!20039 (c!1397200 C!40404)) (Concat!28884 (regOne!40590 Regex!20039) (regTwo!40590 Regex!20039)) (EmptyExpr!20039) (Star!20039 (reg!20368 Regex!20039)) (EmptyLang!20039) (Union!20039 (regOne!40591 Regex!20039) (regTwo!40591 Regex!20039)) )
))
(declare-fun r!22341 () Regex!20039)

(declare-fun lt!2651686 () Bool)

(get-info :version)

(assert (=> b!7573536 (= res!3033866 (or ((_ is EmptyLang!20039) r!22341) ((_ is EmptyExpr!20039) r!22341) ((_ is ElementMatch!20039) r!22341) ((_ is Union!20039) r!22341) ((_ is Star!20039) r!22341) (not lt!2651686)))))

(declare-datatypes ((List!72922 0))(
  ( (Nil!72798) (Cons!72798 (h!79246 C!40404) (t!387657 List!72922)) )
))
(declare-fun s!13436 () List!72922)

(declare-fun matchRSpec!4358 (Regex!20039 List!72922) Bool)

(assert (=> b!7573536 (= lt!2651686 (matchRSpec!4358 r!22341 s!13436))))

(declare-fun matchR!9635 (Regex!20039 List!72922) Bool)

(assert (=> b!7573536 (= lt!2651686 (matchR!9635 r!22341 s!13436))))

(declare-datatypes ((Unit!167034 0))(
  ( (Unit!167035) )
))
(declare-fun lt!2651688 () Unit!167034)

(declare-fun mainMatchTheorem!4352 (Regex!20039 List!72922) Unit!167034)

(assert (=> b!7573536 (= lt!2651688 (mainMatchTheorem!4352 r!22341 s!13436))))

(declare-fun b!7573537 () Bool)

(declare-fun tp!2206966 () Bool)

(declare-fun tp!2206967 () Bool)

(assert (=> b!7573537 (= e!4508482 (and tp!2206966 tp!2206967))))

(declare-fun b!7573539 () Bool)

(declare-fun res!3033868 () Bool)

(assert (=> b!7573539 (=> (not res!3033868) (not e!4508484))))

(declare-fun lostCause!1815 (Regex!20039) Bool)

(assert (=> b!7573539 (= res!3033868 (lostCause!1815 r!22341))))

(declare-fun b!7573540 () Bool)

(declare-fun tp!2206968 () Bool)

(declare-fun tp!2206969 () Bool)

(assert (=> b!7573540 (= e!4508482 (and tp!2206968 tp!2206969))))

(assert (=> b!7573541 (= e!4508483 true)))

(declare-fun lambda!466479 () Int)

(declare-datatypes ((tuple2!68872 0))(
  ( (tuple2!68873 (_1!37739 List!72922) (_2!37739 List!72922)) )
))
(declare-datatypes ((Option!17272 0))(
  ( (None!17271) (Some!17271 (v!54406 tuple2!68872)) )
))
(declare-fun isDefined!13918 (Option!17272) Bool)

(declare-fun findConcatSeparation!3332 (Regex!20039 Regex!20039 List!72922 List!72922 List!72922) Option!17272)

(declare-fun Exists!4282 (Int) Bool)

(assert (=> b!7573541 (= (isDefined!13918 (findConcatSeparation!3332 (regOne!40590 r!22341) (regTwo!40590 r!22341) Nil!72798 s!13436 s!13436)) (Exists!4282 lambda!466479))))

(declare-fun lt!2651687 () Unit!167034)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3090 (Regex!20039 Regex!20039 List!72922) Unit!167034)

(assert (=> b!7573541 (= lt!2651687 (lemmaFindConcatSeparationEquivalentToExists!3090 (regOne!40590 r!22341) (regTwo!40590 r!22341) s!13436))))

(declare-fun b!7573538 () Bool)

(declare-fun tp_is_empty!50433 () Bool)

(assert (=> b!7573538 (= e!4508482 tp_is_empty!50433)))

(declare-fun res!3033865 () Bool)

(assert (=> start!731316 (=> (not res!3033865) (not e!4508484))))

(declare-fun validRegex!10467 (Regex!20039) Bool)

(assert (=> start!731316 (= res!3033865 (validRegex!10467 r!22341))))

(assert (=> start!731316 e!4508484))

(assert (=> start!731316 e!4508482))

(declare-fun e!4508485 () Bool)

(assert (=> start!731316 e!4508485))

(declare-fun b!7573542 () Bool)

(declare-fun res!3033867 () Bool)

(assert (=> b!7573542 (=> (not res!3033867) (not e!4508484))))

(declare-fun isEmpty!41457 (List!72922) Bool)

(assert (=> b!7573542 (= res!3033867 (not (isEmpty!41457 s!13436)))))

(declare-fun b!7573543 () Bool)

(declare-fun tp!2206964 () Bool)

(assert (=> b!7573543 (= e!4508485 (and tp_is_empty!50433 tp!2206964))))

(assert (= (and start!731316 res!3033865) b!7573539))

(assert (= (and b!7573539 res!3033868) b!7573542))

(assert (= (and b!7573542 res!3033867) b!7573536))

(assert (= (and b!7573536 (not res!3033866)) b!7573541))

(assert (= (and start!731316 ((_ is ElementMatch!20039) r!22341)) b!7573538))

(assert (= (and start!731316 ((_ is Concat!28884) r!22341)) b!7573537))

(assert (= (and start!731316 ((_ is Star!20039) r!22341)) b!7573535))

(assert (= (and start!731316 ((_ is Union!20039) r!22341)) b!7573540))

(assert (= (and start!731316 ((_ is Cons!72798) s!13436)) b!7573543))

(declare-fun m!8132986 () Bool)

(assert (=> b!7573541 m!8132986))

(assert (=> b!7573541 m!8132986))

(declare-fun m!8132988 () Bool)

(assert (=> b!7573541 m!8132988))

(declare-fun m!8132990 () Bool)

(assert (=> b!7573541 m!8132990))

(declare-fun m!8132992 () Bool)

(assert (=> b!7573541 m!8132992))

(declare-fun m!8132994 () Bool)

(assert (=> b!7573542 m!8132994))

(declare-fun m!8132996 () Bool)

(assert (=> b!7573536 m!8132996))

(declare-fun m!8132998 () Bool)

(assert (=> b!7573536 m!8132998))

(declare-fun m!8133000 () Bool)

(assert (=> b!7573536 m!8133000))

(declare-fun m!8133002 () Bool)

(assert (=> b!7573539 m!8133002))

(declare-fun m!8133004 () Bool)

(assert (=> start!731316 m!8133004))

(check-sat tp_is_empty!50433 (not start!731316) (not b!7573541) (not b!7573539) (not b!7573535) (not b!7573542) (not b!7573537) (not b!7573536) (not b!7573543) (not b!7573540))
(check-sat)
