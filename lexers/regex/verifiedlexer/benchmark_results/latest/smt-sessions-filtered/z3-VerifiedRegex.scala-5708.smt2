; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283976 () Bool)

(assert start!283976)

(declare-fun b!2914297 () Bool)

(assert (=> b!2914297 true))

(assert (=> b!2914297 true))

(declare-fun lambda!108344 () Int)

(declare-fun lambda!108343 () Int)

(assert (=> b!2914297 (not (= lambda!108344 lambda!108343))))

(assert (=> b!2914297 true))

(assert (=> b!2914297 true))

(declare-fun b!2914296 () Bool)

(declare-fun res!1203124 () Bool)

(declare-fun e!1839181 () Bool)

(assert (=> b!2914296 (=> res!1203124 e!1839181)))

(declare-datatypes ((C!18120 0))(
  ( (C!18121 (val!11096 Int)) )
))
(declare-datatypes ((Regex!8967 0))(
  ( (ElementMatch!8967 (c!475201 C!18120)) (Concat!14288 (regOne!18446 Regex!8967) (regTwo!18446 Regex!8967)) (EmptyExpr!8967) (Star!8967 (reg!9296 Regex!8967)) (EmptyLang!8967) (Union!8967 (regOne!18447 Regex!8967) (regTwo!18447 Regex!8967)) )
))
(declare-fun r!17423 () Regex!8967)

(declare-datatypes ((List!34832 0))(
  ( (Nil!34708) (Cons!34708 (h!40128 C!18120) (t!233897 List!34832)) )
))
(declare-datatypes ((tuple2!33672 0))(
  ( (tuple2!33673 (_1!19968 List!34832) (_2!19968 List!34832)) )
))
(declare-fun lt!1024355 () tuple2!33672)

(declare-fun matchR!3849 (Regex!8967 List!34832) Bool)

(assert (=> b!2914296 (= res!1203124 (not (matchR!3849 (regTwo!18446 r!17423) (_2!19968 lt!1024355))))))

(declare-fun e!1839179 () Bool)

(assert (=> b!2914297 (= e!1839179 e!1839181)))

(declare-fun res!1203123 () Bool)

(assert (=> b!2914297 (=> res!1203123 e!1839181)))

(assert (=> b!2914297 (= res!1203123 (not (matchR!3849 (regOne!18446 r!17423) (_1!19968 lt!1024355))))))

(declare-datatypes ((Option!6568 0))(
  ( (None!6567) (Some!6567 (v!34701 tuple2!33672)) )
))
(declare-fun lt!1024351 () Option!6568)

(declare-fun get!10552 (Option!6568) tuple2!33672)

(assert (=> b!2914297 (= lt!1024355 (get!10552 lt!1024351))))

(declare-fun Exists!1347 (Int) Bool)

(assert (=> b!2914297 (= (Exists!1347 lambda!108343) (Exists!1347 lambda!108344))))

(declare-datatypes ((Unit!48273 0))(
  ( (Unit!48274) )
))
(declare-fun lt!1024352 () Unit!48273)

(declare-fun s!11993 () List!34832)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!488 (Regex!8967 Regex!8967 List!34832) Unit!48273)

(assert (=> b!2914297 (= lt!1024352 (lemmaExistCutMatchRandMatchRSpecEquivalent!488 (regOne!18446 r!17423) (regTwo!18446 r!17423) s!11993))))

(declare-fun isDefined!5119 (Option!6568) Bool)

(assert (=> b!2914297 (= (isDefined!5119 lt!1024351) (Exists!1347 lambda!108343))))

(declare-fun findConcatSeparation!962 (Regex!8967 Regex!8967 List!34832 List!34832 List!34832) Option!6568)

(assert (=> b!2914297 (= lt!1024351 (findConcatSeparation!962 (regOne!18446 r!17423) (regTwo!18446 r!17423) Nil!34708 s!11993 s!11993))))

(declare-fun lt!1024357 () Unit!48273)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!744 (Regex!8967 Regex!8967 List!34832) Unit!48273)

(assert (=> b!2914297 (= lt!1024357 (lemmaFindConcatSeparationEquivalentToExists!744 (regOne!18446 r!17423) (regTwo!18446 r!17423) s!11993))))

(declare-fun res!1203125 () Bool)

(declare-fun e!1839182 () Bool)

(assert (=> start!283976 (=> (not res!1203125) (not e!1839182))))

(declare-fun validRegex!3700 (Regex!8967) Bool)

(assert (=> start!283976 (= res!1203125 (validRegex!3700 r!17423))))

(assert (=> start!283976 e!1839182))

(declare-fun e!1839180 () Bool)

(assert (=> start!283976 e!1839180))

(declare-fun e!1839183 () Bool)

(assert (=> start!283976 e!1839183))

(declare-fun b!2914298 () Bool)

(declare-fun tp!936118 () Bool)

(declare-fun tp!936121 () Bool)

(assert (=> b!2914298 (= e!1839180 (and tp!936118 tp!936121))))

(declare-fun b!2914299 () Bool)

(assert (=> b!2914299 (= e!1839181 true)))

(declare-fun simplify!4 (Regex!8967) Regex!8967)

(assert (=> b!2914299 (matchR!3849 (simplify!4 (regOne!18446 r!17423)) (_1!19968 lt!1024355))))

(declare-fun lt!1024353 () Unit!48273)

(declare-fun lemmaSimplifySound!2 (Regex!8967 List!34832) Unit!48273)

(assert (=> b!2914299 (= lt!1024353 (lemmaSimplifySound!2 (regOne!18446 r!17423) (_1!19968 lt!1024355)))))

(declare-fun b!2914300 () Bool)

(declare-fun tp!936116 () Bool)

(declare-fun tp!936119 () Bool)

(assert (=> b!2914300 (= e!1839180 (and tp!936116 tp!936119))))

(declare-fun b!2914301 () Bool)

(declare-fun tp_is_empty!15497 () Bool)

(assert (=> b!2914301 (= e!1839180 tp_is_empty!15497)))

(declare-fun b!2914302 () Bool)

(declare-fun res!1203122 () Bool)

(assert (=> b!2914302 (=> res!1203122 e!1839179)))

(declare-fun isEmpty!18957 (List!34832) Bool)

(assert (=> b!2914302 (= res!1203122 (isEmpty!18957 s!11993))))

(declare-fun b!2914303 () Bool)

(declare-fun tp!936117 () Bool)

(assert (=> b!2914303 (= e!1839180 tp!936117)))

(declare-fun b!2914304 () Bool)

(declare-fun tp!936120 () Bool)

(assert (=> b!2914304 (= e!1839183 (and tp_is_empty!15497 tp!936120))))

(declare-fun b!2914305 () Bool)

(assert (=> b!2914305 (= e!1839182 (not e!1839179))))

(declare-fun res!1203126 () Bool)

(assert (=> b!2914305 (=> res!1203126 e!1839179)))

(declare-fun lt!1024356 () Bool)

(get-info :version)

(assert (=> b!2914305 (= res!1203126 (or (not lt!1024356) (not ((_ is Concat!14288) r!17423))))))

(declare-fun matchRSpec!1104 (Regex!8967 List!34832) Bool)

(assert (=> b!2914305 (= lt!1024356 (matchRSpec!1104 r!17423 s!11993))))

(assert (=> b!2914305 (= lt!1024356 (matchR!3849 r!17423 s!11993))))

(declare-fun lt!1024354 () Unit!48273)

(declare-fun mainMatchTheorem!1104 (Regex!8967 List!34832) Unit!48273)

(assert (=> b!2914305 (= lt!1024354 (mainMatchTheorem!1104 r!17423 s!11993))))

(assert (= (and start!283976 res!1203125) b!2914305))

(assert (= (and b!2914305 (not res!1203126)) b!2914302))

(assert (= (and b!2914302 (not res!1203122)) b!2914297))

(assert (= (and b!2914297 (not res!1203123)) b!2914296))

(assert (= (and b!2914296 (not res!1203124)) b!2914299))

(assert (= (and start!283976 ((_ is ElementMatch!8967) r!17423)) b!2914301))

(assert (= (and start!283976 ((_ is Concat!14288) r!17423)) b!2914300))

(assert (= (and start!283976 ((_ is Star!8967) r!17423)) b!2914303))

(assert (= (and start!283976 ((_ is Union!8967) r!17423)) b!2914298))

(assert (= (and start!283976 ((_ is Cons!34708) s!11993)) b!2914304))

(declare-fun m!3313895 () Bool)

(assert (=> b!2914296 m!3313895))

(declare-fun m!3313897 () Bool)

(assert (=> b!2914305 m!3313897))

(declare-fun m!3313899 () Bool)

(assert (=> b!2914305 m!3313899))

(declare-fun m!3313901 () Bool)

(assert (=> b!2914305 m!3313901))

(declare-fun m!3313903 () Bool)

(assert (=> b!2914299 m!3313903))

(assert (=> b!2914299 m!3313903))

(declare-fun m!3313905 () Bool)

(assert (=> b!2914299 m!3313905))

(declare-fun m!3313907 () Bool)

(assert (=> b!2914299 m!3313907))

(declare-fun m!3313909 () Bool)

(assert (=> b!2914297 m!3313909))

(declare-fun m!3313911 () Bool)

(assert (=> b!2914297 m!3313911))

(assert (=> b!2914297 m!3313909))

(declare-fun m!3313913 () Bool)

(assert (=> b!2914297 m!3313913))

(declare-fun m!3313915 () Bool)

(assert (=> b!2914297 m!3313915))

(declare-fun m!3313917 () Bool)

(assert (=> b!2914297 m!3313917))

(declare-fun m!3313919 () Bool)

(assert (=> b!2914297 m!3313919))

(declare-fun m!3313921 () Bool)

(assert (=> b!2914297 m!3313921))

(declare-fun m!3313923 () Bool)

(assert (=> b!2914297 m!3313923))

(declare-fun m!3313925 () Bool)

(assert (=> start!283976 m!3313925))

(declare-fun m!3313927 () Bool)

(assert (=> b!2914302 m!3313927))

(check-sat (not b!2914303) (not start!283976) (not b!2914305) (not b!2914297) (not b!2914304) (not b!2914300) (not b!2914296) (not b!2914298) (not b!2914302) (not b!2914299) tp_is_empty!15497)
(check-sat)
