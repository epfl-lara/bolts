; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245052 () Bool)

(assert start!245052)

(declare-fun b!2512836 () Bool)

(declare-fun e!1592328 () Bool)

(declare-fun tp_is_empty!12797 () Bool)

(assert (=> b!2512836 (= e!1592328 tp_is_empty!12797)))

(declare-fun b!2512837 () Bool)

(declare-fun e!1592329 () Bool)

(declare-datatypes ((C!15100 0))(
  ( (C!15101 (val!9202 Int)) )
))
(declare-datatypes ((List!29536 0))(
  ( (Nil!29436) (Cons!29436 (h!34856 C!15100) (t!211235 List!29536)) )
))
(declare-fun tl!4068 () List!29536)

(declare-datatypes ((Regex!7471 0))(
  ( (ElementMatch!7471 (c!400385 C!15100)) (Concat!12167 (regOne!15454 Regex!7471) (regTwo!15454 Regex!7471)) (EmptyExpr!7471) (Star!7471 (reg!7800 Regex!7471)) (EmptyLang!7471) (Union!7471 (regOne!15455 Regex!7471) (regTwo!15455 Regex!7471)) )
))
(declare-fun matchR!3470 (Regex!7471 List!29536) Bool)

(assert (=> b!2512837 (= e!1592329 (matchR!3470 EmptyLang!7471 tl!4068))))

(declare-fun b!2512838 () Bool)

(declare-fun tp!803437 () Bool)

(declare-fun tp!803438 () Bool)

(assert (=> b!2512838 (= e!1592328 (and tp!803437 tp!803438))))

(declare-fun b!2512839 () Bool)

(declare-fun res!1062230 () Bool)

(declare-fun e!1592326 () Bool)

(assert (=> b!2512839 (=> (not res!1062230) (not e!1592326))))

(declare-fun r!27340 () Regex!7471)

(declare-fun nullable!2388 (Regex!7471) Bool)

(assert (=> b!2512839 (= res!1062230 (not (nullable!2388 (regOne!15454 r!27340))))))

(declare-fun b!2512840 () Bool)

(declare-fun tp!803433 () Bool)

(declare-fun tp!803434 () Bool)

(assert (=> b!2512840 (= e!1592328 (and tp!803433 tp!803434))))

(declare-fun b!2512841 () Bool)

(declare-fun res!1062225 () Bool)

(assert (=> b!2512841 (=> (not res!1062225) (not e!1592326))))

(declare-fun c!14016 () C!15100)

(declare-fun derivative!166 (Regex!7471 List!29536) Regex!7471)

(declare-fun derivativeStep!2040 (Regex!7471 C!15100) Regex!7471)

(assert (=> b!2512841 (= res!1062225 (nullable!2388 (derivative!166 (derivativeStep!2040 r!27340 c!14016) tl!4068)))))

(declare-fun b!2512842 () Bool)

(declare-fun res!1062227 () Bool)

(assert (=> b!2512842 (=> (not res!1062227) (not e!1592326))))

(get-info :version)

(assert (=> b!2512842 (= res!1062227 (and (not ((_ is EmptyExpr!7471) r!27340)) (not ((_ is EmptyLang!7471) r!27340)) (not ((_ is ElementMatch!7471) r!27340)) (not ((_ is Union!7471) r!27340)) (not ((_ is Star!7471) r!27340))))))

(declare-fun b!2512843 () Bool)

(declare-fun e!1592327 () Bool)

(assert (=> b!2512843 (= e!1592327 true)))

(declare-fun lt!898125 () Regex!7471)

(declare-datatypes ((tuple2!29472 0))(
  ( (tuple2!29473 (_1!17278 List!29536) (_2!17278 List!29536)) )
))
(declare-datatypes ((Option!5856 0))(
  ( (None!5855) (Some!5855 (v!31786 tuple2!29472)) )
))
(declare-fun isDefined!4678 (Option!5856) Bool)

(declare-fun findConcatSeparation!878 (Regex!7471 Regex!7471 List!29536 List!29536 List!29536) Option!5856)

(assert (=> b!2512843 (isDefined!4678 (findConcatSeparation!878 lt!898125 (regTwo!15454 r!27340) Nil!29436 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43191 0))(
  ( (Unit!43192) )
))
(declare-fun lt!898126 () Unit!43191)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!160 (Regex!7471 Regex!7471 List!29536) Unit!43191)

(assert (=> b!2512843 (= lt!898126 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!160 lt!898125 (regTwo!15454 r!27340) tl!4068))))

(declare-fun b!2512844 () Bool)

(assert (=> b!2512844 (= e!1592326 (not e!1592327))))

(declare-fun res!1062229 () Bool)

(assert (=> b!2512844 (=> res!1062229 e!1592327)))

(declare-fun lt!898128 () Bool)

(assert (=> b!2512844 (= res!1062229 (not lt!898128))))

(assert (=> b!2512844 (= (derivative!166 EmptyLang!7471 tl!4068) EmptyLang!7471)))

(declare-fun lt!898132 () Unit!43191)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!18 (Regex!7471 List!29536) Unit!43191)

(assert (=> b!2512844 (= lt!898132 (lemmaEmptyLangDerivativeIsAFixPoint!18 EmptyLang!7471 tl!4068))))

(assert (=> b!2512844 e!1592329))

(declare-fun res!1062226 () Bool)

(assert (=> b!2512844 (=> res!1062226 e!1592329)))

(assert (=> b!2512844 (= res!1062226 lt!898128)))

(declare-fun lt!898130 () Regex!7471)

(assert (=> b!2512844 (= lt!898128 (matchR!3470 lt!898130 tl!4068))))

(declare-fun lt!898127 () Unit!43191)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!158 (Regex!7471 Regex!7471 List!29536) Unit!43191)

(assert (=> b!2512844 (= lt!898127 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!158 lt!898130 EmptyLang!7471 tl!4068))))

(declare-fun lt!898131 () Regex!7471)

(assert (=> b!2512844 (= (matchR!3470 lt!898131 tl!4068) (matchR!3470 (derivative!166 lt!898131 tl!4068) Nil!29436))))

(declare-fun lt!898129 () Unit!43191)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!116 (Regex!7471 List!29536) Unit!43191)

(assert (=> b!2512844 (= lt!898129 (lemmaMatchRIsSameAsWholeDerivativeAndNil!116 lt!898131 tl!4068))))

(assert (=> b!2512844 (= lt!898131 (Union!7471 lt!898130 EmptyLang!7471))))

(assert (=> b!2512844 (= lt!898130 (Concat!12167 lt!898125 (regTwo!15454 r!27340)))))

(assert (=> b!2512844 (= lt!898125 (derivativeStep!2040 (regOne!15454 r!27340) c!14016))))

(declare-fun b!2512845 () Bool)

(declare-fun tp!803435 () Bool)

(assert (=> b!2512845 (= e!1592328 tp!803435)))

(declare-fun res!1062228 () Bool)

(assert (=> start!245052 (=> (not res!1062228) (not e!1592326))))

(declare-fun validRegex!3097 (Regex!7471) Bool)

(assert (=> start!245052 (= res!1062228 (validRegex!3097 r!27340))))

(assert (=> start!245052 e!1592326))

(assert (=> start!245052 e!1592328))

(assert (=> start!245052 tp_is_empty!12797))

(declare-fun e!1592330 () Bool)

(assert (=> start!245052 e!1592330))

(declare-fun b!2512846 () Bool)

(declare-fun tp!803436 () Bool)

(assert (=> b!2512846 (= e!1592330 (and tp_is_empty!12797 tp!803436))))

(assert (= (and start!245052 res!1062228) b!2512841))

(assert (= (and b!2512841 res!1062225) b!2512842))

(assert (= (and b!2512842 res!1062227) b!2512839))

(assert (= (and b!2512839 res!1062230) b!2512844))

(assert (= (and b!2512844 (not res!1062226)) b!2512837))

(assert (= (and b!2512844 (not res!1062229)) b!2512843))

(assert (= (and start!245052 ((_ is ElementMatch!7471) r!27340)) b!2512836))

(assert (= (and start!245052 ((_ is Concat!12167) r!27340)) b!2512838))

(assert (= (and start!245052 ((_ is Star!7471) r!27340)) b!2512845))

(assert (= (and start!245052 ((_ is Union!7471) r!27340)) b!2512840))

(assert (= (and start!245052 ((_ is Cons!29436) tl!4068)) b!2512846))

(declare-fun m!2870869 () Bool)

(assert (=> b!2512843 m!2870869))

(assert (=> b!2512843 m!2870869))

(declare-fun m!2870871 () Bool)

(assert (=> b!2512843 m!2870871))

(declare-fun m!2870873 () Bool)

(assert (=> b!2512843 m!2870873))

(declare-fun m!2870875 () Bool)

(assert (=> start!245052 m!2870875))

(declare-fun m!2870877 () Bool)

(assert (=> b!2512841 m!2870877))

(assert (=> b!2512841 m!2870877))

(declare-fun m!2870879 () Bool)

(assert (=> b!2512841 m!2870879))

(assert (=> b!2512841 m!2870879))

(declare-fun m!2870881 () Bool)

(assert (=> b!2512841 m!2870881))

(declare-fun m!2870883 () Bool)

(assert (=> b!2512839 m!2870883))

(declare-fun m!2870885 () Bool)

(assert (=> b!2512844 m!2870885))

(declare-fun m!2870887 () Bool)

(assert (=> b!2512844 m!2870887))

(declare-fun m!2870889 () Bool)

(assert (=> b!2512844 m!2870889))

(declare-fun m!2870891 () Bool)

(assert (=> b!2512844 m!2870891))

(assert (=> b!2512844 m!2870885))

(declare-fun m!2870893 () Bool)

(assert (=> b!2512844 m!2870893))

(declare-fun m!2870895 () Bool)

(assert (=> b!2512844 m!2870895))

(declare-fun m!2870897 () Bool)

(assert (=> b!2512844 m!2870897))

(declare-fun m!2870899 () Bool)

(assert (=> b!2512844 m!2870899))

(declare-fun m!2870901 () Bool)

(assert (=> b!2512844 m!2870901))

(declare-fun m!2870903 () Bool)

(assert (=> b!2512837 m!2870903))

(check-sat (not b!2512843) (not b!2512838) tp_is_empty!12797 (not b!2512846) (not b!2512839) (not b!2512840) (not b!2512841) (not start!245052) (not b!2512844) (not b!2512845) (not b!2512837))
(check-sat)
