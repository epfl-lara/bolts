; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284940 () Bool)

(assert start!284940)

(declare-fun b!2930058 () Bool)

(assert (=> b!2930058 true))

(assert (=> b!2930058 true))

(assert (=> b!2930058 true))

(declare-fun lambda!109032 () Int)

(declare-fun lambda!109031 () Int)

(assert (=> b!2930058 (not (= lambda!109032 lambda!109031))))

(assert (=> b!2930058 true))

(assert (=> b!2930058 true))

(assert (=> b!2930058 true))

(declare-fun b!2930049 () Bool)

(declare-fun e!1847711 () Bool)

(declare-fun e!1847709 () Bool)

(assert (=> b!2930049 (= e!1847711 (not e!1847709))))

(declare-fun res!1209558 () Bool)

(assert (=> b!2930049 (=> res!1209558 e!1847709)))

(declare-fun lt!1027566 () Bool)

(declare-datatypes ((C!18276 0))(
  ( (C!18277 (val!11174 Int)) )
))
(declare-datatypes ((Regex!9045 0))(
  ( (ElementMatch!9045 (c!478465 C!18276)) (Concat!14366 (regOne!18602 Regex!9045) (regTwo!18602 Regex!9045)) (EmptyExpr!9045) (Star!9045 (reg!9374 Regex!9045)) (EmptyLang!9045) (Union!9045 (regOne!18603 Regex!9045) (regTwo!18603 Regex!9045)) )
))
(declare-fun r!17423 () Regex!9045)

(get-info :version)

(assert (=> b!2930049 (= res!1209558 (or (not lt!1027566) ((_ is Concat!14366) r!17423) ((_ is Union!9045) r!17423) (not ((_ is Star!9045) r!17423))))))

(declare-datatypes ((List!34910 0))(
  ( (Nil!34786) (Cons!34786 (h!40206 C!18276) (t!233975 List!34910)) )
))
(declare-fun s!11993 () List!34910)

(declare-fun matchRSpec!1182 (Regex!9045 List!34910) Bool)

(assert (=> b!2930049 (= lt!1027566 (matchRSpec!1182 r!17423 s!11993))))

(declare-fun matchR!3927 (Regex!9045 List!34910) Bool)

(assert (=> b!2930049 (= lt!1027566 (matchR!3927 r!17423 s!11993))))

(declare-datatypes ((Unit!48429 0))(
  ( (Unit!48430) )
))
(declare-fun lt!1027570 () Unit!48429)

(declare-fun mainMatchTheorem!1182 (Regex!9045 List!34910) Unit!48429)

(assert (=> b!2930049 (= lt!1027570 (mainMatchTheorem!1182 r!17423 s!11993))))

(declare-fun b!2930050 () Bool)

(declare-fun e!1847712 () Bool)

(declare-fun tp!939195 () Bool)

(assert (=> b!2930050 (= e!1847712 tp!939195)))

(declare-fun res!1209556 () Bool)

(assert (=> start!284940 (=> (not res!1209556) (not e!1847711))))

(declare-fun validRegex!3778 (Regex!9045) Bool)

(assert (=> start!284940 (= res!1209556 (validRegex!3778 r!17423))))

(assert (=> start!284940 e!1847711))

(assert (=> start!284940 e!1847712))

(declare-fun e!1847710 () Bool)

(assert (=> start!284940 e!1847710))

(declare-fun b!2930051 () Bool)

(declare-fun e!1847708 () Bool)

(declare-fun e!1847713 () Bool)

(assert (=> b!2930051 (= e!1847708 e!1847713)))

(declare-fun res!1209555 () Bool)

(assert (=> b!2930051 (=> res!1209555 e!1847713)))

(declare-datatypes ((tuple2!33740 0))(
  ( (tuple2!33741 (_1!20002 List!34910) (_2!20002 List!34910)) )
))
(declare-fun lt!1027567 () tuple2!33740)

(assert (=> b!2930051 (= res!1209555 (not (matchR!3927 (reg!9374 r!17423) (_1!20002 lt!1027567))))))

(declare-datatypes ((Option!6602 0))(
  ( (None!6601) (Some!6601 (v!34735 tuple2!33740)) )
))
(declare-fun lt!1027571 () Option!6602)

(declare-fun get!10616 (Option!6602) tuple2!33740)

(assert (=> b!2930051 (= lt!1027567 (get!10616 lt!1027571))))

(declare-fun b!2930052 () Bool)

(declare-fun tp_is_empty!15653 () Bool)

(assert (=> b!2930052 (= e!1847712 tp_is_empty!15653)))

(declare-fun b!2930053 () Bool)

(declare-fun tp!939197 () Bool)

(declare-fun tp!939193 () Bool)

(assert (=> b!2930053 (= e!1847712 (and tp!939197 tp!939193))))

(declare-fun b!2930054 () Bool)

(declare-fun res!1209557 () Bool)

(assert (=> b!2930054 (=> res!1209557 e!1847713)))

(declare-fun lt!1027569 () Regex!9045)

(assert (=> b!2930054 (= res!1209557 (not (matchR!3927 lt!1027569 (_2!20002 lt!1027567))))))

(declare-fun b!2930055 () Bool)

(declare-fun tp!939194 () Bool)

(declare-fun tp!939192 () Bool)

(assert (=> b!2930055 (= e!1847712 (and tp!939194 tp!939192))))

(declare-fun b!2930056 () Bool)

(assert (=> b!2930056 (= e!1847713 true)))

(declare-fun b!2930057 () Bool)

(declare-fun tp!939196 () Bool)

(assert (=> b!2930057 (= e!1847710 (and tp_is_empty!15653 tp!939196))))

(assert (=> b!2930058 (= e!1847709 e!1847708)))

(declare-fun res!1209554 () Bool)

(assert (=> b!2930058 (=> res!1209554 e!1847708)))

(declare-fun lt!1027568 () Bool)

(assert (=> b!2930058 (= res!1209554 (not lt!1027568))))

(declare-fun Exists!1407 (Int) Bool)

(assert (=> b!2930058 (= (Exists!1407 lambda!109031) (Exists!1407 lambda!109032))))

(declare-fun lt!1027572 () Unit!48429)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!218 (Regex!9045 List!34910) Unit!48429)

(assert (=> b!2930058 (= lt!1027572 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!218 (reg!9374 r!17423) s!11993))))

(assert (=> b!2930058 (= lt!1027568 (Exists!1407 lambda!109031))))

(declare-fun isDefined!5153 (Option!6602) Bool)

(assert (=> b!2930058 (= lt!1027568 (isDefined!5153 lt!1027571))))

(declare-fun findConcatSeparation!996 (Regex!9045 Regex!9045 List!34910 List!34910 List!34910) Option!6602)

(assert (=> b!2930058 (= lt!1027571 (findConcatSeparation!996 (reg!9374 r!17423) lt!1027569 Nil!34786 s!11993 s!11993))))

(declare-fun lt!1027573 () Unit!48429)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!778 (Regex!9045 Regex!9045 List!34910) Unit!48429)

(assert (=> b!2930058 (= lt!1027573 (lemmaFindConcatSeparationEquivalentToExists!778 (reg!9374 r!17423) lt!1027569 s!11993))))

(assert (=> b!2930058 (= lt!1027569 (Star!9045 (reg!9374 r!17423)))))

(declare-fun b!2930059 () Bool)

(declare-fun res!1209553 () Bool)

(assert (=> b!2930059 (=> res!1209553 e!1847709)))

(declare-fun isEmpty!19035 (List!34910) Bool)

(assert (=> b!2930059 (= res!1209553 (isEmpty!19035 s!11993))))

(assert (= (and start!284940 res!1209556) b!2930049))

(assert (= (and b!2930049 (not res!1209558)) b!2930059))

(assert (= (and b!2930059 (not res!1209553)) b!2930058))

(assert (= (and b!2930058 (not res!1209554)) b!2930051))

(assert (= (and b!2930051 (not res!1209555)) b!2930054))

(assert (= (and b!2930054 (not res!1209557)) b!2930056))

(assert (= (and start!284940 ((_ is ElementMatch!9045) r!17423)) b!2930052))

(assert (= (and start!284940 ((_ is Concat!14366) r!17423)) b!2930055))

(assert (= (and start!284940 ((_ is Star!9045) r!17423)) b!2930050))

(assert (= (and start!284940 ((_ is Union!9045) r!17423)) b!2930053))

(assert (= (and start!284940 ((_ is Cons!34786) s!11993)) b!2930057))

(declare-fun m!3320581 () Bool)

(assert (=> b!2930051 m!3320581))

(declare-fun m!3320583 () Bool)

(assert (=> b!2930051 m!3320583))

(declare-fun m!3320585 () Bool)

(assert (=> b!2930058 m!3320585))

(declare-fun m!3320587 () Bool)

(assert (=> b!2930058 m!3320587))

(declare-fun m!3320589 () Bool)

(assert (=> b!2930058 m!3320589))

(declare-fun m!3320591 () Bool)

(assert (=> b!2930058 m!3320591))

(declare-fun m!3320593 () Bool)

(assert (=> b!2930058 m!3320593))

(assert (=> b!2930058 m!3320585))

(declare-fun m!3320595 () Bool)

(assert (=> b!2930058 m!3320595))

(declare-fun m!3320597 () Bool)

(assert (=> b!2930049 m!3320597))

(declare-fun m!3320599 () Bool)

(assert (=> b!2930049 m!3320599))

(declare-fun m!3320601 () Bool)

(assert (=> b!2930049 m!3320601))

(declare-fun m!3320603 () Bool)

(assert (=> b!2930054 m!3320603))

(declare-fun m!3320605 () Bool)

(assert (=> start!284940 m!3320605))

(declare-fun m!3320607 () Bool)

(assert (=> b!2930059 m!3320607))

(check-sat (not b!2930050) tp_is_empty!15653 (not b!2930058) (not b!2930053) (not b!2930049) (not b!2930057) (not b!2930055) (not b!2930051) (not b!2930054) (not start!284940) (not b!2930059))
(check-sat)
