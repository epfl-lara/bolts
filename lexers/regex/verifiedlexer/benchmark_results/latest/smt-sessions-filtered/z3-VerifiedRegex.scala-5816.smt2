; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286804 () Bool)

(assert start!286804)

(declare-fun b!2959399 () Bool)

(assert (=> b!2959399 true))

(assert (=> b!2959399 true))

(assert (=> b!2959399 true))

(declare-fun lambda!110338 () Int)

(declare-fun lambda!110337 () Int)

(assert (=> b!2959399 (not (= lambda!110338 lambda!110337))))

(assert (=> b!2959399 true))

(assert (=> b!2959399 true))

(assert (=> b!2959399 true))

(declare-fun b!2959392 () Bool)

(declare-fun e!1863025 () Bool)

(declare-fun e!1863026 () Bool)

(assert (=> b!2959392 (= e!1863025 (not e!1863026))))

(declare-fun res!1221131 () Bool)

(assert (=> b!2959392 (=> res!1221131 e!1863026)))

(declare-fun lt!1033854 () Bool)

(declare-datatypes ((C!18552 0))(
  ( (C!18553 (val!11312 Int)) )
))
(declare-datatypes ((Regex!9183 0))(
  ( (ElementMatch!9183 (c!484907 C!18552)) (Concat!14504 (regOne!18878 Regex!9183) (regTwo!18878 Regex!9183)) (EmptyExpr!9183) (Star!9183 (reg!9512 Regex!9183)) (EmptyLang!9183) (Union!9183 (regOne!18879 Regex!9183) (regTwo!18879 Regex!9183)) )
))
(declare-fun r!17423 () Regex!9183)

(get-info :version)

(assert (=> b!2959392 (= res!1221131 (or lt!1033854 (not ((_ is Concat!14504) r!17423))))))

(declare-datatypes ((List!35048 0))(
  ( (Nil!34924) (Cons!34924 (h!40344 C!18552) (t!234113 List!35048)) )
))
(declare-fun s!11993 () List!35048)

(declare-fun matchRSpec!1320 (Regex!9183 List!35048) Bool)

(assert (=> b!2959392 (= lt!1033854 (matchRSpec!1320 r!17423 s!11993))))

(declare-fun matchR!4065 (Regex!9183 List!35048) Bool)

(assert (=> b!2959392 (= lt!1033854 (matchR!4065 r!17423 s!11993))))

(declare-datatypes ((Unit!48745 0))(
  ( (Unit!48746) )
))
(declare-fun lt!1033864 () Unit!48745)

(declare-fun mainMatchTheorem!1320 (Regex!9183 List!35048) Unit!48745)

(assert (=> b!2959392 (= lt!1033864 (mainMatchTheorem!1320 r!17423 s!11993))))

(declare-fun b!2959393 () Bool)

(declare-fun res!1221128 () Bool)

(assert (=> b!2959393 (=> res!1221128 e!1863026)))

(declare-fun isEmpty!19208 (List!35048) Bool)

(assert (=> b!2959393 (= res!1221128 (isEmpty!19208 s!11993))))

(declare-fun res!1221130 () Bool)

(assert (=> start!286804 (=> (not res!1221130) (not e!1863025))))

(declare-fun validRegex!3916 (Regex!9183) Bool)

(assert (=> start!286804 (= res!1221130 (validRegex!3916 r!17423))))

(assert (=> start!286804 e!1863025))

(declare-fun e!1863021 () Bool)

(assert (=> start!286804 e!1863021))

(declare-fun e!1863022 () Bool)

(assert (=> start!286804 e!1863022))

(declare-fun b!2959394 () Bool)

(declare-fun e!1863027 () Bool)

(assert (=> b!2959394 (= e!1863026 e!1863027)))

(declare-fun res!1221126 () Bool)

(assert (=> b!2959394 (=> res!1221126 e!1863027)))

(declare-fun lt!1033853 () Regex!9183)

(declare-fun isEmptyLang!305 (Regex!9183) Bool)

(assert (=> b!2959394 (= res!1221126 (isEmptyLang!305 lt!1033853))))

(declare-fun lt!1033852 () Regex!9183)

(declare-fun simplify!188 (Regex!9183) Regex!9183)

(assert (=> b!2959394 (= lt!1033852 (simplify!188 (regTwo!18878 r!17423)))))

(assert (=> b!2959394 (= lt!1033853 (simplify!188 (regOne!18878 r!17423)))))

(declare-fun b!2959395 () Bool)

(declare-fun tp_is_empty!15929 () Bool)

(declare-fun tp!944566 () Bool)

(assert (=> b!2959395 (= e!1863022 (and tp_is_empty!15929 tp!944566))))

(declare-fun b!2959396 () Bool)

(declare-fun e!1863024 () Bool)

(assert (=> b!2959396 (= e!1863027 e!1863024)))

(declare-fun res!1221134 () Bool)

(assert (=> b!2959396 (=> res!1221134 e!1863024)))

(declare-fun lt!1033865 () Regex!9183)

(assert (=> b!2959396 (= res!1221134 (not (matchR!4065 lt!1033865 s!11993)))))

(assert (=> b!2959396 (= lt!1033865 (Concat!14504 lt!1033853 lt!1033852))))

(declare-fun b!2959397 () Bool)

(declare-fun res!1221133 () Bool)

(assert (=> b!2959397 (=> res!1221133 e!1863027)))

(declare-fun isEmptyExpr!386 (Regex!9183) Bool)

(assert (=> b!2959397 (= res!1221133 (isEmptyExpr!386 lt!1033852))))

(declare-fun b!2959398 () Bool)

(declare-fun res!1221129 () Bool)

(assert (=> b!2959398 (=> res!1221129 e!1863027)))

(assert (=> b!2959398 (= res!1221129 (isEmptyLang!305 lt!1033852))))

(declare-fun e!1863023 () Bool)

(assert (=> b!2959399 (= e!1863024 e!1863023)))

(declare-fun res!1221132 () Bool)

(assert (=> b!2959399 (=> res!1221132 e!1863023)))

(declare-fun lt!1033863 () Bool)

(assert (=> b!2959399 (= res!1221132 (not lt!1033863))))

(declare-fun Exists!1515 (Int) Bool)

(assert (=> b!2959399 (= (Exists!1515 lambda!110337) (Exists!1515 lambda!110338))))

(declare-fun lt!1033859 () Unit!48745)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!536 (Regex!9183 Regex!9183 List!35048) Unit!48745)

(assert (=> b!2959399 (= lt!1033859 (lemmaExistCutMatchRandMatchRSpecEquivalent!536 lt!1033853 lt!1033852 s!11993))))

(assert (=> b!2959399 (= lt!1033863 (Exists!1515 lambda!110337))))

(declare-datatypes ((tuple2!33884 0))(
  ( (tuple2!33885 (_1!20074 List!35048) (_2!20074 List!35048)) )
))
(declare-datatypes ((Option!6674 0))(
  ( (None!6673) (Some!6673 (v!34807 tuple2!33884)) )
))
(declare-fun lt!1033862 () Option!6674)

(declare-fun isDefined!5225 (Option!6674) Bool)

(assert (=> b!2959399 (= lt!1033863 (isDefined!5225 lt!1033862))))

(declare-fun findConcatSeparation!1068 (Regex!9183 Regex!9183 List!35048 List!35048 List!35048) Option!6674)

(assert (=> b!2959399 (= lt!1033862 (findConcatSeparation!1068 lt!1033853 lt!1033852 Nil!34924 s!11993 s!11993))))

(declare-fun lt!1033861 () Unit!48745)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!846 (Regex!9183 Regex!9183 List!35048) Unit!48745)

(assert (=> b!2959399 (= lt!1033861 (lemmaFindConcatSeparationEquivalentToExists!846 lt!1033853 lt!1033852 s!11993))))

(assert (=> b!2959399 (matchRSpec!1320 lt!1033865 s!11993)))

(declare-fun lt!1033860 () Unit!48745)

(assert (=> b!2959399 (= lt!1033860 (mainMatchTheorem!1320 lt!1033865 s!11993))))

(declare-fun b!2959400 () Bool)

(declare-fun tp!944568 () Bool)

(declare-fun tp!944564 () Bool)

(assert (=> b!2959400 (= e!1863021 (and tp!944568 tp!944564))))

(declare-fun b!2959401 () Bool)

(assert (=> b!2959401 (= e!1863023 true)))

(declare-fun lt!1033857 () tuple2!33884)

(declare-fun ++!8342 (List!35048 List!35048) List!35048)

(assert (=> b!2959401 (matchR!4065 (Concat!14504 (regOne!18878 r!17423) (regTwo!18878 r!17423)) (++!8342 (_1!20074 lt!1033857) (_2!20074 lt!1033857)))))

(declare-fun lt!1033858 () Unit!48745)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!152 (Regex!9183 Regex!9183 List!35048 List!35048) Unit!48745)

(assert (=> b!2959401 (= lt!1033858 (lemmaTwoRegexMatchThenConcatMatchesConcatString!152 (regOne!18878 r!17423) (regTwo!18878 r!17423) (_1!20074 lt!1033857) (_2!20074 lt!1033857)))))

(assert (=> b!2959401 (= (matchR!4065 (regTwo!18878 r!17423) (_2!20074 lt!1033857)) (matchR!4065 lt!1033852 (_2!20074 lt!1033857)))))

(declare-fun lt!1033855 () Unit!48745)

(declare-fun lemmaSimplifySound!122 (Regex!9183 List!35048) Unit!48745)

(assert (=> b!2959401 (= lt!1033855 (lemmaSimplifySound!122 (regTwo!18878 r!17423) (_2!20074 lt!1033857)))))

(assert (=> b!2959401 (= (matchR!4065 (regOne!18878 r!17423) (_1!20074 lt!1033857)) (matchR!4065 lt!1033853 (_1!20074 lt!1033857)))))

(declare-fun lt!1033856 () Unit!48745)

(assert (=> b!2959401 (= lt!1033856 (lemmaSimplifySound!122 (regOne!18878 r!17423) (_1!20074 lt!1033857)))))

(declare-fun get!10738 (Option!6674) tuple2!33884)

(assert (=> b!2959401 (= lt!1033857 (get!10738 lt!1033862))))

(declare-fun b!2959402 () Bool)

(declare-fun tp!944569 () Bool)

(assert (=> b!2959402 (= e!1863021 tp!944569)))

(declare-fun b!2959403 () Bool)

(assert (=> b!2959403 (= e!1863021 tp_is_empty!15929)))

(declare-fun b!2959404 () Bool)

(declare-fun res!1221127 () Bool)

(assert (=> b!2959404 (=> res!1221127 e!1863027)))

(assert (=> b!2959404 (= res!1221127 (isEmptyExpr!386 lt!1033853))))

(declare-fun b!2959405 () Bool)

(declare-fun tp!944567 () Bool)

(declare-fun tp!944565 () Bool)

(assert (=> b!2959405 (= e!1863021 (and tp!944567 tp!944565))))

(assert (= (and start!286804 res!1221130) b!2959392))

(assert (= (and b!2959392 (not res!1221131)) b!2959393))

(assert (= (and b!2959393 (not res!1221128)) b!2959394))

(assert (= (and b!2959394 (not res!1221126)) b!2959398))

(assert (= (and b!2959398 (not res!1221129)) b!2959404))

(assert (= (and b!2959404 (not res!1221127)) b!2959397))

(assert (= (and b!2959397 (not res!1221133)) b!2959396))

(assert (= (and b!2959396 (not res!1221134)) b!2959399))

(assert (= (and b!2959399 (not res!1221132)) b!2959401))

(assert (= (and start!286804 ((_ is ElementMatch!9183) r!17423)) b!2959403))

(assert (= (and start!286804 ((_ is Concat!14504) r!17423)) b!2959405))

(assert (= (and start!286804 ((_ is Star!9183) r!17423)) b!2959402))

(assert (= (and start!286804 ((_ is Union!9183) r!17423)) b!2959400))

(assert (= (and start!286804 ((_ is Cons!34924) s!11993)) b!2959395))

(declare-fun m!3333697 () Bool)

(assert (=> b!2959392 m!3333697))

(declare-fun m!3333699 () Bool)

(assert (=> b!2959392 m!3333699))

(declare-fun m!3333701 () Bool)

(assert (=> b!2959392 m!3333701))

(declare-fun m!3333703 () Bool)

(assert (=> b!2959404 m!3333703))

(declare-fun m!3333705 () Bool)

(assert (=> b!2959398 m!3333705))

(declare-fun m!3333707 () Bool)

(assert (=> b!2959394 m!3333707))

(declare-fun m!3333709 () Bool)

(assert (=> b!2959394 m!3333709))

(declare-fun m!3333711 () Bool)

(assert (=> b!2959394 m!3333711))

(declare-fun m!3333713 () Bool)

(assert (=> b!2959393 m!3333713))

(declare-fun m!3333715 () Bool)

(assert (=> b!2959396 m!3333715))

(declare-fun m!3333717 () Bool)

(assert (=> b!2959399 m!3333717))

(declare-fun m!3333719 () Bool)

(assert (=> b!2959399 m!3333719))

(declare-fun m!3333721 () Bool)

(assert (=> b!2959399 m!3333721))

(declare-fun m!3333723 () Bool)

(assert (=> b!2959399 m!3333723))

(declare-fun m!3333725 () Bool)

(assert (=> b!2959399 m!3333725))

(declare-fun m!3333727 () Bool)

(assert (=> b!2959399 m!3333727))

(declare-fun m!3333729 () Bool)

(assert (=> b!2959399 m!3333729))

(declare-fun m!3333731 () Bool)

(assert (=> b!2959399 m!3333731))

(assert (=> b!2959399 m!3333717))

(declare-fun m!3333733 () Bool)

(assert (=> b!2959401 m!3333733))

(declare-fun m!3333735 () Bool)

(assert (=> b!2959401 m!3333735))

(declare-fun m!3333737 () Bool)

(assert (=> b!2959401 m!3333737))

(declare-fun m!3333739 () Bool)

(assert (=> b!2959401 m!3333739))

(declare-fun m!3333741 () Bool)

(assert (=> b!2959401 m!3333741))

(declare-fun m!3333743 () Bool)

(assert (=> b!2959401 m!3333743))

(declare-fun m!3333745 () Bool)

(assert (=> b!2959401 m!3333745))

(declare-fun m!3333747 () Bool)

(assert (=> b!2959401 m!3333747))

(declare-fun m!3333749 () Bool)

(assert (=> b!2959401 m!3333749))

(assert (=> b!2959401 m!3333733))

(declare-fun m!3333751 () Bool)

(assert (=> b!2959401 m!3333751))

(declare-fun m!3333753 () Bool)

(assert (=> b!2959397 m!3333753))

(declare-fun m!3333755 () Bool)

(assert (=> start!286804 m!3333755))

(check-sat (not b!2959393) (not b!2959394) (not b!2959398) (not b!2959401) (not b!2959405) (not b!2959396) (not b!2959392) (not start!286804) (not b!2959400) (not b!2959402) (not b!2959397) (not b!2959399) tp_is_empty!15929 (not b!2959404) (not b!2959395))
(check-sat)
