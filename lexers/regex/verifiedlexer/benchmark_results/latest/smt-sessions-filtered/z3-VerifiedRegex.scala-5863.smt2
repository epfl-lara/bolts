; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287552 () Bool)

(assert start!287552)

(declare-fun b!2973420 () Bool)

(assert (=> b!2973420 true))

(assert (=> b!2973420 true))

(assert (=> b!2973420 true))

(declare-fun b!2973418 () Bool)

(declare-fun e!1870672 () Bool)

(declare-fun tp!947854 () Bool)

(assert (=> b!2973418 (= e!1870672 tp!947854)))

(declare-fun b!2973419 () Bool)

(declare-fun e!1870670 () Bool)

(declare-fun e!1870673 () Bool)

(assert (=> b!2973419 (= e!1870670 (not e!1870673))))

(declare-fun res!1226033 () Bool)

(assert (=> b!2973419 (=> res!1226033 e!1870673)))

(declare-fun lt!1036582 () Bool)

(declare-datatypes ((C!18740 0))(
  ( (C!18741 (val!11406 Int)) )
))
(declare-datatypes ((Regex!9277 0))(
  ( (ElementMatch!9277 (c!488033 C!18740)) (Concat!14598 (regOne!19066 Regex!9277) (regTwo!19066 Regex!9277)) (EmptyExpr!9277) (Star!9277 (reg!9606 Regex!9277)) (EmptyLang!9277) (Union!9277 (regOne!19067 Regex!9277) (regTwo!19067 Regex!9277)) )
))
(declare-fun r!17423 () Regex!9277)

(get-info :version)

(assert (=> b!2973419 (= res!1226033 (or lt!1036582 ((_ is Concat!14598) r!17423) ((_ is Union!9277) r!17423) (not ((_ is Star!9277) r!17423))))))

(declare-datatypes ((List!35142 0))(
  ( (Nil!35018) (Cons!35018 (h!40438 C!18740) (t!234207 List!35142)) )
))
(declare-fun s!11993 () List!35142)

(declare-fun matchRSpec!1414 (Regex!9277 List!35142) Bool)

(assert (=> b!2973419 (= lt!1036582 (matchRSpec!1414 r!17423 s!11993))))

(declare-fun matchR!4159 (Regex!9277 List!35142) Bool)

(assert (=> b!2973419 (= lt!1036582 (matchR!4159 r!17423 s!11993))))

(declare-datatypes ((Unit!48933 0))(
  ( (Unit!48934) )
))
(declare-fun lt!1036580 () Unit!48933)

(declare-fun mainMatchTheorem!1414 (Regex!9277 List!35142) Unit!48933)

(assert (=> b!2973419 (= lt!1036580 (mainMatchTheorem!1414 r!17423 s!11993))))

(declare-fun e!1870674 () Bool)

(assert (=> b!2973420 (= e!1870674 true)))

(declare-fun lt!1036579 () Regex!9277)

(declare-fun lambda!110620 () Int)

(declare-fun lt!1036583 () Regex!9277)

(declare-datatypes ((tuple2!33892 0))(
  ( (tuple2!33893 (_1!20078 List!35142) (_2!20078 List!35142)) )
))
(declare-datatypes ((Option!6678 0))(
  ( (None!6677) (Some!6677 (v!34811 tuple2!33892)) )
))
(declare-fun isDefined!5229 (Option!6678) Bool)

(declare-fun findConcatSeparation!1072 (Regex!9277 Regex!9277 List!35142 List!35142 List!35142) Option!6678)

(declare-fun Exists!1557 (Int) Bool)

(assert (=> b!2973420 (= (isDefined!5229 (findConcatSeparation!1072 lt!1036583 lt!1036579 Nil!35018 s!11993 s!11993)) (Exists!1557 lambda!110620))))

(declare-fun lt!1036584 () Unit!48933)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!850 (Regex!9277 Regex!9277 List!35142) Unit!48933)

(assert (=> b!2973420 (= lt!1036584 (lemmaFindConcatSeparationEquivalentToExists!850 lt!1036583 lt!1036579 s!11993))))

(declare-fun b!2973421 () Bool)

(declare-fun tp_is_empty!16117 () Bool)

(assert (=> b!2973421 (= e!1870672 tp_is_empty!16117)))

(declare-fun b!2973422 () Bool)

(declare-fun tp!947857 () Bool)

(declare-fun tp!947853 () Bool)

(assert (=> b!2973422 (= e!1870672 (and tp!947857 tp!947853))))

(declare-fun b!2973423 () Bool)

(declare-fun e!1870669 () Bool)

(assert (=> b!2973423 (= e!1870669 e!1870674)))

(declare-fun res!1226032 () Bool)

(assert (=> b!2973423 (=> res!1226032 e!1870674)))

(declare-fun isEmpty!19255 (List!35142) Bool)

(assert (=> b!2973423 (= res!1226032 (isEmpty!19255 s!11993))))

(assert (=> b!2973423 (matchRSpec!1414 lt!1036579 s!11993)))

(declare-fun lt!1036581 () Unit!48933)

(assert (=> b!2973423 (= lt!1036581 (mainMatchTheorem!1414 lt!1036579 s!11993))))

(declare-fun res!1226036 () Bool)

(assert (=> start!287552 (=> (not res!1226036) (not e!1870670))))

(declare-fun validRegex!4010 (Regex!9277) Bool)

(assert (=> start!287552 (= res!1226036 (validRegex!4010 r!17423))))

(assert (=> start!287552 e!1870670))

(assert (=> start!287552 e!1870672))

(declare-fun e!1870671 () Bool)

(assert (=> start!287552 e!1870671))

(declare-fun b!2973424 () Bool)

(declare-fun tp!947855 () Bool)

(declare-fun tp!947852 () Bool)

(assert (=> b!2973424 (= e!1870672 (and tp!947855 tp!947852))))

(declare-fun b!2973425 () Bool)

(declare-fun tp!947856 () Bool)

(assert (=> b!2973425 (= e!1870671 (and tp_is_empty!16117 tp!947856))))

(declare-fun b!2973426 () Bool)

(declare-fun e!1870675 () Bool)

(assert (=> b!2973426 (= e!1870675 e!1870669)))

(declare-fun res!1226035 () Bool)

(assert (=> b!2973426 (=> res!1226035 e!1870669)))

(assert (=> b!2973426 (= res!1226035 (not (matchR!4159 lt!1036579 s!11993)))))

(assert (=> b!2973426 (= lt!1036579 (Star!9277 lt!1036583))))

(declare-fun b!2973427 () Bool)

(assert (=> b!2973427 (= e!1870673 e!1870675)))

(declare-fun res!1226034 () Bool)

(assert (=> b!2973427 (=> res!1226034 e!1870675)))

(declare-fun isEmptyLang!391 (Regex!9277) Bool)

(assert (=> b!2973427 (= res!1226034 (isEmptyLang!391 lt!1036583))))

(declare-fun simplify!278 (Regex!9277) Regex!9277)

(assert (=> b!2973427 (= lt!1036583 (simplify!278 (reg!9606 r!17423)))))

(assert (= (and start!287552 res!1226036) b!2973419))

(assert (= (and b!2973419 (not res!1226033)) b!2973427))

(assert (= (and b!2973427 (not res!1226034)) b!2973426))

(assert (= (and b!2973426 (not res!1226035)) b!2973423))

(assert (= (and b!2973423 (not res!1226032)) b!2973420))

(assert (= (and start!287552 ((_ is ElementMatch!9277) r!17423)) b!2973421))

(assert (= (and start!287552 ((_ is Concat!14598) r!17423)) b!2973422))

(assert (= (and start!287552 ((_ is Star!9277) r!17423)) b!2973418))

(assert (= (and start!287552 ((_ is Union!9277) r!17423)) b!2973424))

(assert (= (and start!287552 ((_ is Cons!35018) s!11993)) b!2973425))

(declare-fun m!3339029 () Bool)

(assert (=> b!2973420 m!3339029))

(assert (=> b!2973420 m!3339029))

(declare-fun m!3339031 () Bool)

(assert (=> b!2973420 m!3339031))

(declare-fun m!3339033 () Bool)

(assert (=> b!2973420 m!3339033))

(declare-fun m!3339035 () Bool)

(assert (=> b!2973420 m!3339035))

(declare-fun m!3339037 () Bool)

(assert (=> b!2973419 m!3339037))

(declare-fun m!3339039 () Bool)

(assert (=> b!2973419 m!3339039))

(declare-fun m!3339041 () Bool)

(assert (=> b!2973419 m!3339041))

(declare-fun m!3339043 () Bool)

(assert (=> b!2973426 m!3339043))

(declare-fun m!3339045 () Bool)

(assert (=> b!2973423 m!3339045))

(declare-fun m!3339047 () Bool)

(assert (=> b!2973423 m!3339047))

(declare-fun m!3339049 () Bool)

(assert (=> b!2973423 m!3339049))

(declare-fun m!3339051 () Bool)

(assert (=> b!2973427 m!3339051))

(declare-fun m!3339053 () Bool)

(assert (=> b!2973427 m!3339053))

(declare-fun m!3339055 () Bool)

(assert (=> start!287552 m!3339055))

(check-sat (not b!2973418) (not b!2973427) tp_is_empty!16117 (not b!2973420) (not b!2973423) (not b!2973426) (not b!2973419) (not start!287552) (not b!2973422) (not b!2973425) (not b!2973424))
(check-sat)
