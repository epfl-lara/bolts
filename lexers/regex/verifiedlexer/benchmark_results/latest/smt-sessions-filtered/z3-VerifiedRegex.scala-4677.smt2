; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243408 () Bool)

(assert start!243408)

(declare-fun b!2491162 () Bool)

(declare-fun e!1581365 () Bool)

(declare-fun tp!797688 () Bool)

(assert (=> b!2491162 (= e!1581365 tp!797688)))

(declare-fun b!2491163 () Bool)

(declare-fun e!1581368 () Bool)

(assert (=> b!2491163 (= e!1581368 false)))

(declare-datatypes ((C!14816 0))(
  ( (C!14817 (val!9060 Int)) )
))
(declare-datatypes ((Regex!7329 0))(
  ( (ElementMatch!7329 (c!396013 C!14816)) (Concat!12025 (regOne!15170 Regex!7329) (regTwo!15170 Regex!7329)) (EmptyExpr!7329) (Star!7329 (reg!7658 Regex!7329)) (EmptyLang!7329) (Union!7329 (regOne!15171 Regex!7329) (regTwo!15171 Regex!7329)) )
))
(declare-fun lt!893953 () Regex!7329)

(declare-fun lt!893954 () Regex!7329)

(declare-datatypes ((List!29394 0))(
  ( (Nil!29294) (Cons!29294 (h!34714 C!14816) (t!211093 List!29394)) )
))
(declare-fun tl!4068 () List!29394)

(declare-fun derivativeStep!1898 (Regex!7329 C!14816) Regex!7329)

(declare-fun head!5673 (List!29394) C!14816)

(assert (=> b!2491163 (= lt!893953 (derivativeStep!1898 lt!893954 (head!5673 tl!4068)))))

(declare-fun b!2491164 () Bool)

(declare-fun tp!797685 () Bool)

(declare-fun tp!797689 () Bool)

(assert (=> b!2491164 (= e!1581365 (and tp!797685 tp!797689))))

(declare-fun b!2491165 () Bool)

(declare-fun tp!797686 () Bool)

(declare-fun tp!797687 () Bool)

(assert (=> b!2491165 (= e!1581365 (and tp!797686 tp!797687))))

(declare-fun res!1054083 () Bool)

(declare-fun e!1581367 () Bool)

(assert (=> start!243408 (=> (not res!1054083) (not e!1581367))))

(declare-fun r!27340 () Regex!7329)

(declare-fun validRegex!2955 (Regex!7329) Bool)

(assert (=> start!243408 (= res!1054083 (validRegex!2955 r!27340))))

(assert (=> start!243408 e!1581367))

(assert (=> start!243408 e!1581365))

(declare-fun tp_is_empty!12513 () Bool)

(assert (=> start!243408 tp_is_empty!12513))

(declare-fun e!1581366 () Bool)

(assert (=> start!243408 e!1581366))

(declare-fun b!2491166 () Bool)

(assert (=> b!2491166 (= e!1581367 e!1581368)))

(declare-fun res!1054084 () Bool)

(assert (=> b!2491166 (=> (not res!1054084) (not e!1581368))))

(declare-fun nullable!2246 (Regex!7329) Bool)

(declare-fun derivative!24 (Regex!7329 List!29394) Regex!7329)

(assert (=> b!2491166 (= res!1054084 (nullable!2246 (derivative!24 lt!893954 tl!4068)))))

(declare-fun c!14016 () C!14816)

(assert (=> b!2491166 (= lt!893954 (derivativeStep!1898 r!27340 c!14016))))

(declare-fun b!2491167 () Bool)

(declare-fun tp!797690 () Bool)

(assert (=> b!2491167 (= e!1581366 (and tp_is_empty!12513 tp!797690))))

(declare-fun b!2491168 () Bool)

(declare-fun res!1054081 () Bool)

(assert (=> b!2491168 (=> (not res!1054081) (not e!1581368))))

(declare-fun isEmpty!16797 (List!29394) Bool)

(assert (=> b!2491168 (= res!1054081 (not (isEmpty!16797 tl!4068)))))

(declare-fun b!2491169 () Bool)

(assert (=> b!2491169 (= e!1581365 tp_is_empty!12513)))

(declare-fun b!2491170 () Bool)

(declare-fun res!1054082 () Bool)

(assert (=> b!2491170 (=> (not res!1054082) (not e!1581368))))

(get-info :version)

(assert (=> b!2491170 (= res!1054082 (and (not ((_ is EmptyExpr!7329) r!27340)) (not ((_ is EmptyLang!7329) r!27340)) ((_ is ElementMatch!7329) r!27340) (= c!14016 (c!396013 r!27340)) (= lt!893954 EmptyExpr!7329)))))

(assert (= (and start!243408 res!1054083) b!2491166))

(assert (= (and b!2491166 res!1054084) b!2491170))

(assert (= (and b!2491170 res!1054082) b!2491168))

(assert (= (and b!2491168 res!1054081) b!2491163))

(assert (= (and start!243408 ((_ is ElementMatch!7329) r!27340)) b!2491169))

(assert (= (and start!243408 ((_ is Concat!12025) r!27340)) b!2491164))

(assert (= (and start!243408 ((_ is Star!7329) r!27340)) b!2491162))

(assert (= (and start!243408 ((_ is Union!7329) r!27340)) b!2491165))

(assert (= (and start!243408 ((_ is Cons!29294) tl!4068)) b!2491167))

(declare-fun m!2858023 () Bool)

(assert (=> b!2491163 m!2858023))

(assert (=> b!2491163 m!2858023))

(declare-fun m!2858025 () Bool)

(assert (=> b!2491163 m!2858025))

(declare-fun m!2858027 () Bool)

(assert (=> start!243408 m!2858027))

(declare-fun m!2858029 () Bool)

(assert (=> b!2491166 m!2858029))

(assert (=> b!2491166 m!2858029))

(declare-fun m!2858031 () Bool)

(assert (=> b!2491166 m!2858031))

(declare-fun m!2858033 () Bool)

(assert (=> b!2491166 m!2858033))

(declare-fun m!2858035 () Bool)

(assert (=> b!2491168 m!2858035))

(check-sat (not b!2491162) (not b!2491167) (not b!2491163) (not b!2491166) (not b!2491168) tp_is_empty!12513 (not b!2491164) (not b!2491165) (not start!243408))
(check-sat)
