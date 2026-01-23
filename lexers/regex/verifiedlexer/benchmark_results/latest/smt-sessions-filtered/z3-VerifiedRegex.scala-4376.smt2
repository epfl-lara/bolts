; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!232656 () Bool)

(assert start!232656)

(declare-fun b!2370697 () Bool)

(assert (=> b!2370697 true))

(assert (=> b!2370697 true))

(declare-fun lambda!87751 () Int)

(declare-fun lambda!87750 () Int)

(assert (=> b!2370697 (not (= lambda!87751 lambda!87750))))

(assert (=> b!2370697 true))

(assert (=> b!2370697 true))

(declare-fun b!2370686 () Bool)

(declare-fun e!1513118 () Bool)

(declare-fun tp!757814 () Bool)

(declare-fun tp!757809 () Bool)

(assert (=> b!2370686 (= e!1513118 (and tp!757814 tp!757809))))

(declare-fun b!2370687 () Bool)

(declare-fun e!1513122 () Bool)

(declare-fun tp!757811 () Bool)

(declare-fun tp!757815 () Bool)

(assert (=> b!2370687 (= e!1513122 (and tp!757811 tp!757815))))

(declare-fun b!2370688 () Bool)

(declare-fun e!1513121 () Bool)

(assert (=> b!2370688 (= e!1513121 true)))

(declare-fun e!1513114 () Bool)

(assert (=> b!2370688 e!1513114))

(declare-fun res!1006264 () Bool)

(assert (=> b!2370688 (=> (not res!1006264) (not e!1513114))))

(declare-datatypes ((C!14048 0))(
  ( (C!14049 (val!8266 Int)) )
))
(declare-datatypes ((Regex!6945 0))(
  ( (ElementMatch!6945 (c!376807 C!14048)) (Concat!11581 (regOne!14402 Regex!6945) (regTwo!14402 Regex!6945)) (EmptyExpr!6945) (Star!6945 (reg!7274 Regex!6945)) (EmptyLang!6945) (Union!6945 (regOne!14403 Regex!6945) (regTwo!14403 Regex!6945)) )
))
(declare-fun lt!866014 () Regex!6945)

(declare-datatypes ((List!28128 0))(
  ( (Nil!28030) (Cons!28030 (h!33431 C!14048) (t!208105 List!28128)) )
))
(declare-fun s!9460 () List!28128)

(declare-fun matchR!3062 (Regex!6945 List!28128) Bool)

(declare-fun ++!6905 (List!28128 List!28128) List!28128)

(assert (=> b!2370688 (= res!1006264 (matchR!3062 lt!866014 (++!6905 s!9460 Nil!28030)))))

(declare-fun lt!866018 () Regex!6945)

(assert (=> b!2370688 (= lt!866014 (Concat!11581 lt!866018 EmptyExpr!6945))))

(declare-datatypes ((Unit!40925 0))(
  ( (Unit!40926) )
))
(declare-fun lt!866011 () Unit!40925)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!18 (Regex!6945 Regex!6945 List!28128 List!28128) Unit!40925)

(assert (=> b!2370688 (= lt!866011 (lemmaTwoRegexMatchThenConcatMatchesConcatString!18 lt!866018 EmptyExpr!6945 s!9460 Nil!28030))))

(declare-fun b!2370689 () Bool)

(declare-fun res!1006262 () Bool)

(declare-fun e!1513120 () Bool)

(assert (=> b!2370689 (=> (not res!1006262) (not e!1513120))))

(declare-fun r!13927 () Regex!6945)

(declare-datatypes ((List!28129 0))(
  ( (Nil!28031) (Cons!28031 (h!33432 Regex!6945) (t!208106 List!28129)) )
))
(declare-fun l!9164 () List!28129)

(declare-fun generalisedConcat!46 (List!28129) Regex!6945)

(assert (=> b!2370689 (= res!1006262 (= r!13927 (generalisedConcat!46 l!9164)))))

(declare-fun b!2370690 () Bool)

(declare-fun res!1006258 () Bool)

(declare-fun e!1513115 () Bool)

(assert (=> b!2370690 (=> res!1006258 e!1513115)))

(declare-fun isEmpty!15960 (List!28129) Bool)

(assert (=> b!2370690 (= res!1006258 (isEmpty!15960 l!9164))))

(declare-fun b!2370691 () Bool)

(assert (=> b!2370691 (= e!1513114 (matchR!3062 lt!866014 s!9460))))

(declare-fun b!2370692 () Bool)

(declare-fun e!1513117 () Bool)

(assert (=> b!2370692 (= e!1513115 e!1513117)))

(declare-fun res!1006263 () Bool)

(assert (=> b!2370692 (=> res!1006263 e!1513117)))

(declare-fun lt!866012 () List!28129)

(assert (=> b!2370692 (= res!1006263 (not (isEmpty!15960 lt!866012)))))

(declare-fun tail!3400 (List!28129) List!28129)

(assert (=> b!2370692 (= lt!866012 (tail!3400 l!9164))))

(declare-fun b!2370693 () Bool)

(declare-fun res!1006260 () Bool)

(assert (=> b!2370693 (=> res!1006260 e!1513117)))

(assert (=> b!2370693 (= res!1006260 (not (= (generalisedConcat!46 lt!866012) EmptyExpr!6945)))))

(declare-fun b!2370694 () Bool)

(declare-fun tp!757808 () Bool)

(declare-fun tp!757812 () Bool)

(assert (=> b!2370694 (= e!1513122 (and tp!757808 tp!757812))))

(declare-fun b!2370695 () Bool)

(declare-fun e!1513119 () Bool)

(declare-fun tp_is_empty!11303 () Bool)

(declare-fun tp!757810 () Bool)

(assert (=> b!2370695 (= e!1513119 (and tp_is_empty!11303 tp!757810))))

(declare-fun b!2370696 () Bool)

(assert (=> b!2370696 (= e!1513122 tp_is_empty!11303)))

(declare-fun e!1513116 () Bool)

(assert (=> b!2370697 (= e!1513116 e!1513115)))

(declare-fun res!1006266 () Bool)

(assert (=> b!2370697 (=> res!1006266 e!1513115)))

(declare-fun lt!866020 () Bool)

(declare-fun lt!866016 () Bool)

(assert (=> b!2370697 (= res!1006266 (not (= lt!866020 lt!866016)))))

(declare-fun Exists!1007 (Int) Bool)

(assert (=> b!2370697 (= (Exists!1007 lambda!87750) (Exists!1007 lambda!87751))))

(declare-fun lt!866019 () Unit!40925)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!346 (Regex!6945 Regex!6945 List!28128) Unit!40925)

(assert (=> b!2370697 (= lt!866019 (lemmaExistCutMatchRandMatchRSpecEquivalent!346 (regOne!14402 r!13927) (regTwo!14402 r!13927) s!9460))))

(assert (=> b!2370697 (= lt!866016 (Exists!1007 lambda!87750))))

(declare-datatypes ((tuple2!27754 0))(
  ( (tuple2!27755 (_1!16418 List!28128) (_2!16418 List!28128)) )
))
(declare-datatypes ((Option!5488 0))(
  ( (None!5487) (Some!5487 (v!30895 tuple2!27754)) )
))
(declare-fun isDefined!4316 (Option!5488) Bool)

(declare-fun findConcatSeparation!596 (Regex!6945 Regex!6945 List!28128 List!28128 List!28128) Option!5488)

(assert (=> b!2370697 (= lt!866016 (isDefined!4316 (findConcatSeparation!596 (regOne!14402 r!13927) (regTwo!14402 r!13927) Nil!28030 s!9460 s!9460)))))

(declare-fun lt!866013 () Unit!40925)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!596 (Regex!6945 Regex!6945 List!28128) Unit!40925)

(assert (=> b!2370697 (= lt!866013 (lemmaFindConcatSeparationEquivalentToExists!596 (regOne!14402 r!13927) (regTwo!14402 r!13927) s!9460))))

(declare-fun b!2370698 () Bool)

(declare-fun tp!757813 () Bool)

(assert (=> b!2370698 (= e!1513122 tp!757813)))

(declare-fun res!1006259 () Bool)

(assert (=> start!232656 (=> (not res!1006259) (not e!1513120))))

(declare-fun lambda!87749 () Int)

(declare-fun forall!5579 (List!28129 Int) Bool)

(assert (=> start!232656 (= res!1006259 (forall!5579 l!9164 lambda!87749))))

(assert (=> start!232656 e!1513120))

(assert (=> start!232656 e!1513118))

(assert (=> start!232656 e!1513122))

(assert (=> start!232656 e!1513119))

(declare-fun b!2370699 () Bool)

(assert (=> b!2370699 (= e!1513120 (not e!1513116))))

(declare-fun res!1006265 () Bool)

(assert (=> b!2370699 (=> res!1006265 e!1513116)))

(get-info :version)

(assert (=> b!2370699 (= res!1006265 (not ((_ is Concat!11581) r!13927)))))

(declare-fun lt!866017 () Bool)

(assert (=> b!2370699 (= lt!866017 lt!866020)))

(declare-fun matchRSpec!794 (Regex!6945 List!28128) Bool)

(assert (=> b!2370699 (= lt!866020 (matchRSpec!794 r!13927 s!9460))))

(assert (=> b!2370699 (= lt!866017 (matchR!3062 r!13927 s!9460))))

(declare-fun lt!866015 () Unit!40925)

(declare-fun mainMatchTheorem!794 (Regex!6945 List!28128) Unit!40925)

(assert (=> b!2370699 (= lt!866015 (mainMatchTheorem!794 r!13927 s!9460))))

(declare-fun b!2370700 () Bool)

(assert (=> b!2370700 (= e!1513117 e!1513121)))

(declare-fun res!1006261 () Bool)

(assert (=> b!2370700 (=> res!1006261 e!1513121)))

(assert (=> b!2370700 (= res!1006261 (not (matchR!3062 lt!866018 s!9460)))))

(declare-fun head!5130 (List!28129) Regex!6945)

(assert (=> b!2370700 (= lt!866018 (head!5130 l!9164))))

(assert (= (and start!232656 res!1006259) b!2370689))

(assert (= (and b!2370689 res!1006262) b!2370699))

(assert (= (and b!2370699 (not res!1006265)) b!2370697))

(assert (= (and b!2370697 (not res!1006266)) b!2370690))

(assert (= (and b!2370690 (not res!1006258)) b!2370692))

(assert (= (and b!2370692 (not res!1006263)) b!2370693))

(assert (= (and b!2370693 (not res!1006260)) b!2370700))

(assert (= (and b!2370700 (not res!1006261)) b!2370688))

(assert (= (and b!2370688 res!1006264) b!2370691))

(assert (= (and start!232656 ((_ is Cons!28031) l!9164)) b!2370686))

(assert (= (and start!232656 ((_ is ElementMatch!6945) r!13927)) b!2370696))

(assert (= (and start!232656 ((_ is Concat!11581) r!13927)) b!2370694))

(assert (= (and start!232656 ((_ is Star!6945) r!13927)) b!2370698))

(assert (= (and start!232656 ((_ is Union!6945) r!13927)) b!2370687))

(assert (= (and start!232656 ((_ is Cons!28030) s!9460)) b!2370695))

(declare-fun m!2778569 () Bool)

(assert (=> b!2370692 m!2778569))

(declare-fun m!2778571 () Bool)

(assert (=> b!2370692 m!2778571))

(declare-fun m!2778573 () Bool)

(assert (=> b!2370699 m!2778573))

(declare-fun m!2778575 () Bool)

(assert (=> b!2370699 m!2778575))

(declare-fun m!2778577 () Bool)

(assert (=> b!2370699 m!2778577))

(declare-fun m!2778579 () Bool)

(assert (=> start!232656 m!2778579))

(declare-fun m!2778581 () Bool)

(assert (=> b!2370688 m!2778581))

(assert (=> b!2370688 m!2778581))

(declare-fun m!2778583 () Bool)

(assert (=> b!2370688 m!2778583))

(declare-fun m!2778585 () Bool)

(assert (=> b!2370688 m!2778585))

(declare-fun m!2778587 () Bool)

(assert (=> b!2370691 m!2778587))

(declare-fun m!2778589 () Bool)

(assert (=> b!2370690 m!2778589))

(declare-fun m!2778591 () Bool)

(assert (=> b!2370700 m!2778591))

(declare-fun m!2778593 () Bool)

(assert (=> b!2370700 m!2778593))

(declare-fun m!2778595 () Bool)

(assert (=> b!2370689 m!2778595))

(declare-fun m!2778597 () Bool)

(assert (=> b!2370697 m!2778597))

(declare-fun m!2778599 () Bool)

(assert (=> b!2370697 m!2778599))

(declare-fun m!2778601 () Bool)

(assert (=> b!2370697 m!2778601))

(assert (=> b!2370697 m!2778597))

(declare-fun m!2778603 () Bool)

(assert (=> b!2370697 m!2778603))

(declare-fun m!2778605 () Bool)

(assert (=> b!2370697 m!2778605))

(declare-fun m!2778607 () Bool)

(assert (=> b!2370697 m!2778607))

(assert (=> b!2370697 m!2778605))

(declare-fun m!2778609 () Bool)

(assert (=> b!2370693 m!2778609))

(check-sat (not b!2370692) (not b!2370698) (not b!2370695) (not b!2370690) (not b!2370697) (not b!2370686) (not b!2370693) (not b!2370691) (not b!2370689) tp_is_empty!11303 (not b!2370687) (not b!2370694) (not b!2370688) (not start!232656) (not b!2370700) (not b!2370699))
(check-sat)
