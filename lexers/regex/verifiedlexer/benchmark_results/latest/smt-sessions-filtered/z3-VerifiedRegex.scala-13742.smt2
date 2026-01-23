; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733764 () Bool)

(assert start!733764)

(declare-fun b!7616850 () Bool)

(assert (=> b!7616850 true))

(assert (=> b!7616850 true))

(declare-fun b!7616847 () Bool)

(declare-fun res!3049185 () Bool)

(declare-fun e!4529483 () Bool)

(assert (=> b!7616847 (=> (not res!3049185) (not e!4529483))))

(declare-datatypes ((C!40884 0))(
  ( (C!40885 (val!30882 Int)) )
))
(declare-datatypes ((Regex!20279 0))(
  ( (ElementMatch!20279 (c!1403944 C!40884)) (Concat!29124 (regOne!41070 Regex!20279) (regTwo!41070 Regex!20279)) (EmptyExpr!20279) (Star!20279 (reg!20608 Regex!20279)) (EmptyLang!20279) (Union!20279 (regOne!41071 Regex!20279) (regTwo!41071 Regex!20279)) )
))
(declare-fun r!14126 () Regex!20279)

(get-info :version)

(assert (=> b!7616847 (= res!3049185 (and (not ((_ is EmptyExpr!20279) r!14126)) (not ((_ is EmptyLang!20279) r!14126)) (not ((_ is ElementMatch!20279) r!14126)) (not ((_ is Union!20279) r!14126)) ((_ is Star!20279) r!14126)))))

(declare-fun b!7616848 () Bool)

(declare-fun e!4529485 () Bool)

(declare-fun tp!2224199 () Bool)

(declare-fun tp!2224198 () Bool)

(assert (=> b!7616848 (= e!4529485 (and tp!2224199 tp!2224198))))

(declare-fun b!7616849 () Bool)

(declare-fun tp!2224197 () Bool)

(declare-fun tp!2224195 () Bool)

(assert (=> b!7616849 (= e!4529485 (and tp!2224197 tp!2224195))))

(declare-fun res!3049188 () Bool)

(assert (=> start!733764 (=> (not res!3049188) (not e!4529483))))

(declare-fun validRegex!10699 (Regex!20279) Bool)

(assert (=> start!733764 (= res!3049188 (validRegex!10699 r!14126))))

(assert (=> start!733764 e!4529483))

(assert (=> start!733764 e!4529485))

(declare-fun e!4529484 () Bool)

(assert (=> start!733764 e!4529484))

(declare-fun e!4529482 () Bool)

(assert (=> b!7616850 (= e!4529483 (not e!4529482))))

(declare-fun res!3049187 () Bool)

(assert (=> b!7616850 (=> res!3049187 e!4529482)))

(declare-fun lt!2655523 () Bool)

(assert (=> b!7616850 (= res!3049187 (not lt!2655523))))

(declare-fun lambda!468171 () Int)

(declare-fun Exists!4435 (Int) Bool)

(assert (=> b!7616850 (= lt!2655523 (Exists!4435 lambda!468171))))

(declare-datatypes ((List!73132 0))(
  ( (Nil!73008) (Cons!73008 (h!79456 C!40884) (t!387867 List!73132)) )
))
(declare-datatypes ((tuple2!69120 0))(
  ( (tuple2!69121 (_1!37863 List!73132) (_2!37863 List!73132)) )
))
(declare-datatypes ((Option!17354 0))(
  ( (None!17353) (Some!17353 (v!54488 tuple2!69120)) )
))
(declare-fun lt!2655522 () Option!17354)

(declare-fun isDefined!13970 (Option!17354) Bool)

(assert (=> b!7616850 (= lt!2655523 (isDefined!13970 lt!2655522))))

(declare-fun s!9605 () List!73132)

(declare-fun findConcatSeparation!3384 (Regex!20279 Regex!20279 List!73132 List!73132 List!73132) Option!17354)

(assert (=> b!7616850 (= lt!2655522 (findConcatSeparation!3384 (reg!20608 r!14126) r!14126 Nil!73008 s!9605 s!9605))))

(declare-datatypes ((Unit!167390 0))(
  ( (Unit!167391) )
))
(declare-fun lt!2655524 () Unit!167390)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3142 (Regex!20279 Regex!20279 List!73132) Unit!167390)

(assert (=> b!7616850 (= lt!2655524 (lemmaFindConcatSeparationEquivalentToExists!3142 (reg!20608 r!14126) r!14126 s!9605))))

(declare-fun b!7616851 () Bool)

(declare-fun tp!2224196 () Bool)

(assert (=> b!7616851 (= e!4529485 tp!2224196)))

(declare-fun b!7616852 () Bool)

(declare-fun tp_is_empty!50913 () Bool)

(assert (=> b!7616852 (= e!4529485 tp_is_empty!50913)))

(declare-fun b!7616853 () Bool)

(declare-fun res!3049186 () Bool)

(assert (=> b!7616853 (=> (not res!3049186) (not e!4529483))))

(declare-fun isEmpty!41619 (List!73132) Bool)

(assert (=> b!7616853 (= res!3049186 (not (isEmpty!41619 s!9605)))))

(declare-fun b!7616854 () Bool)

(assert (=> b!7616854 (= e!4529482 true)))

(declare-fun lt!2655520 () tuple2!69120)

(declare-fun matchR!9786 (Regex!20279 List!73132) Bool)

(declare-fun matchRSpec!4478 (Regex!20279 List!73132) Bool)

(assert (=> b!7616854 (= (matchR!9786 r!14126 (_2!37863 lt!2655520)) (matchRSpec!4478 r!14126 (_2!37863 lt!2655520)))))

(declare-fun lt!2655521 () Unit!167390)

(declare-fun mainMatchTheorem!4472 (Regex!20279 List!73132) Unit!167390)

(assert (=> b!7616854 (= lt!2655521 (mainMatchTheorem!4472 r!14126 (_2!37863 lt!2655520)))))

(assert (=> b!7616854 (= (matchR!9786 (reg!20608 r!14126) (_1!37863 lt!2655520)) (matchRSpec!4478 (reg!20608 r!14126) (_1!37863 lt!2655520)))))

(declare-fun lt!2655519 () Unit!167390)

(assert (=> b!7616854 (= lt!2655519 (mainMatchTheorem!4472 (reg!20608 r!14126) (_1!37863 lt!2655520)))))

(declare-fun get!25730 (Option!17354) tuple2!69120)

(assert (=> b!7616854 (= lt!2655520 (get!25730 lt!2655522))))

(declare-fun b!7616855 () Bool)

(declare-fun tp!2224194 () Bool)

(assert (=> b!7616855 (= e!4529484 (and tp_is_empty!50913 tp!2224194))))

(assert (= (and start!733764 res!3049188) b!7616847))

(assert (= (and b!7616847 res!3049185) b!7616853))

(assert (= (and b!7616853 res!3049186) b!7616850))

(assert (= (and b!7616850 (not res!3049187)) b!7616854))

(assert (= (and start!733764 ((_ is ElementMatch!20279) r!14126)) b!7616852))

(assert (= (and start!733764 ((_ is Concat!29124) r!14126)) b!7616848))

(assert (= (and start!733764 ((_ is Star!20279) r!14126)) b!7616851))

(assert (= (and start!733764 ((_ is Union!20279) r!14126)) b!7616849))

(assert (= (and start!733764 ((_ is Cons!73008) s!9605)) b!7616855))

(declare-fun m!8150020 () Bool)

(assert (=> start!733764 m!8150020))

(declare-fun m!8150022 () Bool)

(assert (=> b!7616850 m!8150022))

(declare-fun m!8150024 () Bool)

(assert (=> b!7616850 m!8150024))

(declare-fun m!8150026 () Bool)

(assert (=> b!7616850 m!8150026))

(declare-fun m!8150028 () Bool)

(assert (=> b!7616850 m!8150028))

(declare-fun m!8150030 () Bool)

(assert (=> b!7616853 m!8150030))

(declare-fun m!8150032 () Bool)

(assert (=> b!7616854 m!8150032))

(declare-fun m!8150034 () Bool)

(assert (=> b!7616854 m!8150034))

(declare-fun m!8150036 () Bool)

(assert (=> b!7616854 m!8150036))

(declare-fun m!8150038 () Bool)

(assert (=> b!7616854 m!8150038))

(declare-fun m!8150040 () Bool)

(assert (=> b!7616854 m!8150040))

(declare-fun m!8150042 () Bool)

(assert (=> b!7616854 m!8150042))

(declare-fun m!8150044 () Bool)

(assert (=> b!7616854 m!8150044))

(check-sat (not b!7616854) (not b!7616853) (not b!7616850) (not start!733764) (not b!7616849) tp_is_empty!50913 (not b!7616855) (not b!7616848) (not b!7616851))
(check-sat)
