; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88630 () Bool)

(assert start!88630)

(declare-fun b!1018004 () Bool)

(declare-fun e!650430 () Bool)

(declare-fun lt!353853 () Bool)

(declare-datatypes ((C!6180 0))(
  ( (C!6181 (val!3338 Int)) )
))
(declare-datatypes ((Regex!2805 0))(
  ( (ElementMatch!2805 (c!168684 C!6180)) (Concat!4638 (regOne!6122 Regex!2805) (regTwo!6122 Regex!2805)) (EmptyExpr!2805) (Star!2805 (reg!3134 Regex!2805)) (EmptyLang!2805) (Union!2805 (regOne!6123 Regex!2805) (regTwo!6123 Regex!2805)) )
))
(declare-fun r!15766 () Regex!2805)

(get-info :version)

(assert (=> b!1018004 (= e!650430 (not true))))

(declare-datatypes ((List!10035 0))(
  ( (Nil!10019) (Cons!10019 (h!15420 C!6180) (t!101081 List!10035)) )
))
(declare-fun s!10566 () List!10035)

(declare-fun matchRSpec!604 (Regex!2805 List!10035) Bool)

(assert (=> b!1018004 (= lt!353853 (matchRSpec!604 r!15766 s!10566))))

(declare-fun matchR!1341 (Regex!2805 List!10035) Bool)

(assert (=> b!1018004 (= lt!353853 (matchR!1341 r!15766 s!10566))))

(declare-datatypes ((Unit!15285 0))(
  ( (Unit!15286) )
))
(declare-fun lt!353852 () Unit!15285)

(declare-fun mainMatchTheorem!604 (Regex!2805 List!10035) Unit!15285)

(assert (=> b!1018004 (= lt!353852 (mainMatchTheorem!604 r!15766 s!10566))))

(declare-fun b!1018005 () Bool)

(declare-fun e!650431 () Bool)

(declare-fun tp!309496 () Bool)

(declare-fun tp!309499 () Bool)

(assert (=> b!1018005 (= e!650431 (and tp!309496 tp!309499))))

(declare-fun b!1018006 () Bool)

(declare-fun tp_is_empty!5253 () Bool)

(assert (=> b!1018006 (= e!650431 tp_is_empty!5253)))

(declare-fun b!1018007 () Bool)

(declare-fun tp!309498 () Bool)

(declare-fun tp!309500 () Bool)

(assert (=> b!1018007 (= e!650431 (and tp!309498 tp!309500))))

(declare-fun b!1018008 () Bool)

(declare-fun e!650429 () Bool)

(declare-fun tp!309497 () Bool)

(assert (=> b!1018008 (= e!650429 (and tp_is_empty!5253 tp!309497))))

(declare-fun res!457474 () Bool)

(assert (=> start!88630 (=> (not res!457474) (not e!650430))))

(declare-fun validRegex!1274 (Regex!2805) Bool)

(assert (=> start!88630 (= res!457474 (validRegex!1274 r!15766))))

(assert (=> start!88630 e!650430))

(assert (=> start!88630 e!650431))

(assert (=> start!88630 e!650429))

(declare-fun b!1018009 () Bool)

(declare-fun tp!309495 () Bool)

(assert (=> b!1018009 (= e!650431 tp!309495)))

(assert (= (and start!88630 res!457474) b!1018004))

(assert (= (and start!88630 ((_ is ElementMatch!2805) r!15766)) b!1018006))

(assert (= (and start!88630 ((_ is Concat!4638) r!15766)) b!1018007))

(assert (= (and start!88630 ((_ is Star!2805) r!15766)) b!1018009))

(assert (= (and start!88630 ((_ is Union!2805) r!15766)) b!1018005))

(assert (= (and start!88630 ((_ is Cons!10019) s!10566)) b!1018008))

(declare-fun m!1198813 () Bool)

(assert (=> b!1018004 m!1198813))

(declare-fun m!1198815 () Bool)

(assert (=> b!1018004 m!1198815))

(declare-fun m!1198817 () Bool)

(assert (=> b!1018004 m!1198817))

(declare-fun m!1198819 () Bool)

(assert (=> start!88630 m!1198819))

(check-sat (not b!1018008) (not b!1018005) (not start!88630) (not b!1018004) tp_is_empty!5253 (not b!1018009) (not b!1018007))
(check-sat)
