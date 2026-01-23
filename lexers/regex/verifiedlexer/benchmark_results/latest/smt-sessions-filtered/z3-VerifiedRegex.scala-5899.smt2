; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288880 () Bool)

(assert start!288880)

(declare-fun b!2991556 () Bool)

(assert (=> b!2991556 true))

(assert (=> b!2991556 true))

(assert (=> b!2991556 true))

(declare-fun lambda!111848 () Int)

(declare-fun lambda!111847 () Int)

(assert (=> b!2991556 (not (= lambda!111848 lambda!111847))))

(assert (=> b!2991556 true))

(assert (=> b!2991556 true))

(assert (=> b!2991556 true))

(declare-fun b!2991549 () Bool)

(declare-fun e!1880380 () Bool)

(assert (=> b!2991549 (= e!1880380 true)))

(declare-fun lt!1040513 () Int)

(declare-datatypes ((C!18884 0))(
  ( (C!18885 (val!11478 Int)) )
))
(declare-datatypes ((List!35214 0))(
  ( (Nil!35090) (Cons!35090 (h!40510 C!18884) (t!234279 List!35214)) )
))
(declare-datatypes ((tuple2!34016 0))(
  ( (tuple2!34017 (_1!20140 List!35214) (_2!20140 List!35214)) )
))
(declare-fun lt!1040506 () tuple2!34016)

(declare-fun size!26499 (List!35214) Int)

(assert (=> b!2991549 (= lt!1040513 (size!26499 (_1!20140 lt!1040506)))))

(declare-fun b!2991550 () Bool)

(declare-fun e!1880379 () Bool)

(declare-fun e!1880377 () Bool)

(assert (=> b!2991550 (= e!1880379 e!1880377)))

(declare-fun res!1233859 () Bool)

(assert (=> b!2991550 (=> res!1233859 e!1880377)))

(declare-datatypes ((Regex!9349 0))(
  ( (ElementMatch!9349 (c!491683 C!18884)) (Concat!14670 (regOne!19210 Regex!9349) (regTwo!19210 Regex!9349)) (EmptyExpr!9349) (Star!9349 (reg!9678 Regex!9349)) (EmptyLang!9349) (Union!9349 (regOne!19211 Regex!9349) (regTwo!19211 Regex!9349)) )
))
(declare-fun r!17423 () Regex!9349)

(declare-fun matchR!4231 (Regex!9349 List!35214) Bool)

(assert (=> b!2991550 (= res!1233859 (not (matchR!4231 (reg!9678 r!17423) (_1!20140 lt!1040506))))))

(declare-datatypes ((Option!6740 0))(
  ( (None!6739) (Some!6739 (v!34873 tuple2!34016)) )
))
(declare-fun lt!1040507 () Option!6740)

(declare-fun get!10882 (Option!6740) tuple2!34016)

(assert (=> b!2991550 (= lt!1040506 (get!10882 lt!1040507))))

(declare-fun b!2991551 () Bool)

(declare-fun e!1880378 () Bool)

(declare-fun tp!951149 () Bool)

(assert (=> b!2991551 (= e!1880378 tp!951149)))

(declare-fun b!2991552 () Bool)

(declare-fun tp_is_empty!16261 () Bool)

(assert (=> b!2991552 (= e!1880378 tp_is_empty!16261)))

(declare-fun b!2991553 () Bool)

(declare-fun tp!951150 () Bool)

(declare-fun tp!951153 () Bool)

(assert (=> b!2991553 (= e!1880378 (and tp!951150 tp!951153))))

(declare-fun b!2991554 () Bool)

(declare-fun res!1233866 () Bool)

(assert (=> b!2991554 (=> res!1233866 e!1880377)))

(declare-fun lt!1040508 () Regex!9349)

(assert (=> b!2991554 (= res!1233866 (not (matchR!4231 lt!1040508 (_2!20140 lt!1040506))))))

(declare-fun b!2991555 () Bool)

(assert (=> b!2991555 (= e!1880377 e!1880380)))

(declare-fun res!1233863 () Bool)

(assert (=> b!2991555 (=> res!1233863 e!1880380)))

(declare-fun s!11993 () List!35214)

(assert (=> b!2991555 (= res!1233863 (not (= (size!26499 (_2!20140 lt!1040506)) (size!26499 s!11993))))))

(declare-fun simplify!340 (Regex!9349) Regex!9349)

(assert (=> b!2991555 (matchR!4231 (simplify!340 (reg!9678 r!17423)) (_1!20140 lt!1040506))))

(declare-datatypes ((Unit!49101 0))(
  ( (Unit!49102) )
))
(declare-fun lt!1040510 () Unit!49101)

(declare-fun lemmaSimplifySound!198 (Regex!9349 List!35214) Unit!49101)

(assert (=> b!2991555 (= lt!1040510 (lemmaSimplifySound!198 (reg!9678 r!17423) (_1!20140 lt!1040506)))))

(declare-fun e!1880375 () Bool)

(assert (=> b!2991556 (= e!1880375 e!1880379)))

(declare-fun res!1233862 () Bool)

(assert (=> b!2991556 (=> res!1233862 e!1880379)))

(declare-fun lt!1040514 () Bool)

(assert (=> b!2991556 (= res!1233862 (not lt!1040514))))

(declare-fun Exists!1622 (Int) Bool)

(assert (=> b!2991556 (= (Exists!1622 lambda!111847) (Exists!1622 lambda!111848))))

(declare-fun lt!1040505 () Unit!49101)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!298 (Regex!9349 List!35214) Unit!49101)

(assert (=> b!2991556 (= lt!1040505 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!298 (reg!9678 r!17423) s!11993))))

(assert (=> b!2991556 (= lt!1040514 (Exists!1622 lambda!111847))))

(declare-fun isDefined!5291 (Option!6740) Bool)

(assert (=> b!2991556 (= lt!1040514 (isDefined!5291 lt!1040507))))

(declare-fun findConcatSeparation!1134 (Regex!9349 Regex!9349 List!35214 List!35214 List!35214) Option!6740)

(assert (=> b!2991556 (= lt!1040507 (findConcatSeparation!1134 (reg!9678 r!17423) lt!1040508 Nil!35090 s!11993 s!11993))))

(declare-fun lt!1040512 () Unit!49101)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!912 (Regex!9349 Regex!9349 List!35214) Unit!49101)

(assert (=> b!2991556 (= lt!1040512 (lemmaFindConcatSeparationEquivalentToExists!912 (reg!9678 r!17423) lt!1040508 s!11993))))

(assert (=> b!2991556 (= lt!1040508 (Star!9349 (reg!9678 r!17423)))))

(declare-fun b!2991557 () Bool)

(declare-fun res!1233864 () Bool)

(assert (=> b!2991557 (=> res!1233864 e!1880380)))

(declare-fun ++!8393 (List!35214 List!35214) List!35214)

(assert (=> b!2991557 (= res!1233864 (not (= (++!8393 (_1!20140 lt!1040506) (_2!20140 lt!1040506)) s!11993)))))

(declare-fun res!1233865 () Bool)

(declare-fun e!1880381 () Bool)

(assert (=> start!288880 (=> (not res!1233865) (not e!1880381))))

(declare-fun validRegex!4082 (Regex!9349) Bool)

(assert (=> start!288880 (= res!1233865 (validRegex!4082 r!17423))))

(assert (=> start!288880 e!1880381))

(assert (=> start!288880 e!1880378))

(declare-fun e!1880376 () Bool)

(assert (=> start!288880 e!1880376))

(declare-fun b!2991558 () Bool)

(declare-fun tp!951152 () Bool)

(assert (=> b!2991558 (= e!1880376 (and tp_is_empty!16261 tp!951152))))

(declare-fun b!2991559 () Bool)

(assert (=> b!2991559 (= e!1880381 (not e!1880375))))

(declare-fun res!1233861 () Bool)

(assert (=> b!2991559 (=> res!1233861 e!1880375)))

(declare-fun lt!1040509 () Bool)

(get-info :version)

(assert (=> b!2991559 (= res!1233861 (or (not lt!1040509) ((_ is Concat!14670) r!17423) ((_ is Union!9349) r!17423) (not ((_ is Star!9349) r!17423))))))

(declare-fun matchRSpec!1486 (Regex!9349 List!35214) Bool)

(assert (=> b!2991559 (= lt!1040509 (matchRSpec!1486 r!17423 s!11993))))

(assert (=> b!2991559 (= lt!1040509 (matchR!4231 r!17423 s!11993))))

(declare-fun lt!1040511 () Unit!49101)

(declare-fun mainMatchTheorem!1486 (Regex!9349 List!35214) Unit!49101)

(assert (=> b!2991559 (= lt!1040511 (mainMatchTheorem!1486 r!17423 s!11993))))

(declare-fun b!2991560 () Bool)

(declare-fun res!1233860 () Bool)

(assert (=> b!2991560 (=> res!1233860 e!1880375)))

(declare-fun isEmpty!19360 (List!35214) Bool)

(assert (=> b!2991560 (= res!1233860 (isEmpty!19360 s!11993))))

(declare-fun b!2991561 () Bool)

(declare-fun tp!951151 () Bool)

(declare-fun tp!951148 () Bool)

(assert (=> b!2991561 (= e!1880378 (and tp!951151 tp!951148))))

(assert (= (and start!288880 res!1233865) b!2991559))

(assert (= (and b!2991559 (not res!1233861)) b!2991560))

(assert (= (and b!2991560 (not res!1233860)) b!2991556))

(assert (= (and b!2991556 (not res!1233862)) b!2991550))

(assert (= (and b!2991550 (not res!1233859)) b!2991554))

(assert (= (and b!2991554 (not res!1233866)) b!2991555))

(assert (= (and b!2991555 (not res!1233863)) b!2991557))

(assert (= (and b!2991557 (not res!1233864)) b!2991549))

(assert (= (and start!288880 ((_ is ElementMatch!9349) r!17423)) b!2991552))

(assert (= (and start!288880 ((_ is Concat!14670) r!17423)) b!2991553))

(assert (= (and start!288880 ((_ is Star!9349) r!17423)) b!2991551))

(assert (= (and start!288880 ((_ is Union!9349) r!17423)) b!2991561))

(assert (= (and start!288880 ((_ is Cons!35090) s!11993)) b!2991558))

(declare-fun m!3347619 () Bool)

(assert (=> b!2991556 m!3347619))

(declare-fun m!3347621 () Bool)

(assert (=> b!2991556 m!3347621))

(declare-fun m!3347623 () Bool)

(assert (=> b!2991556 m!3347623))

(declare-fun m!3347625 () Bool)

(assert (=> b!2991556 m!3347625))

(assert (=> b!2991556 m!3347625))

(declare-fun m!3347627 () Bool)

(assert (=> b!2991556 m!3347627))

(declare-fun m!3347629 () Bool)

(assert (=> b!2991556 m!3347629))

(declare-fun m!3347631 () Bool)

(assert (=> start!288880 m!3347631))

(declare-fun m!3347633 () Bool)

(assert (=> b!2991560 m!3347633))

(declare-fun m!3347635 () Bool)

(assert (=> b!2991550 m!3347635))

(declare-fun m!3347637 () Bool)

(assert (=> b!2991550 m!3347637))

(declare-fun m!3347639 () Bool)

(assert (=> b!2991557 m!3347639))

(declare-fun m!3347641 () Bool)

(assert (=> b!2991559 m!3347641))

(declare-fun m!3347643 () Bool)

(assert (=> b!2991559 m!3347643))

(declare-fun m!3347645 () Bool)

(assert (=> b!2991559 m!3347645))

(declare-fun m!3347647 () Bool)

(assert (=> b!2991554 m!3347647))

(declare-fun m!3347649 () Bool)

(assert (=> b!2991549 m!3347649))

(declare-fun m!3347651 () Bool)

(assert (=> b!2991555 m!3347651))

(assert (=> b!2991555 m!3347651))

(declare-fun m!3347653 () Bool)

(assert (=> b!2991555 m!3347653))

(declare-fun m!3347655 () Bool)

(assert (=> b!2991555 m!3347655))

(declare-fun m!3347657 () Bool)

(assert (=> b!2991555 m!3347657))

(declare-fun m!3347659 () Bool)

(assert (=> b!2991555 m!3347659))

(check-sat (not b!2991558) (not b!2991559) (not b!2991549) (not start!288880) (not b!2991556) (not b!2991555) (not b!2991550) (not b!2991560) (not b!2991554) (not b!2991551) (not b!2991557) tp_is_empty!16261 (not b!2991553) (not b!2991561))
(check-sat)
