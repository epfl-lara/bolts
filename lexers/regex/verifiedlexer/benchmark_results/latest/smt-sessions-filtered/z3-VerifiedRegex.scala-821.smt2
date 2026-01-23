; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45496 () Bool)

(assert start!45496)

(declare-fun res!210456 () Bool)

(declare-fun e!289669 () Bool)

(assert (=> start!45496 (=> (not res!210456) (not e!289669))))

(declare-datatypes ((C!3200 0))(
  ( (C!3201 (val!1586 Int)) )
))
(declare-datatypes ((Regex!1139 0))(
  ( (ElementMatch!1139 (c!94970 C!3200)) (Concat!2039 (regOne!2790 Regex!1139) (regTwo!2790 Regex!1139)) (EmptyExpr!1139) (Star!1139 (reg!1468 Regex!1139)) (EmptyLang!1139) (Union!1139 (regOne!2791 Regex!1139) (regTwo!2791 Regex!1139)) )
))
(declare-fun r!20230 () Regex!1139)

(declare-fun validRegex!367 (Regex!1139) Bool)

(assert (=> start!45496 (= res!210456 (validRegex!367 r!20230))))

(assert (=> start!45496 e!289669))

(declare-fun e!289666 () Bool)

(assert (=> start!45496 e!289666))

(declare-fun b!474039 () Bool)

(declare-fun e!289667 () Bool)

(declare-fun lostCause!133 (Regex!1139) Bool)

(assert (=> b!474039 (= e!289667 (lostCause!133 (regTwo!2790 r!20230)))))

(declare-fun b!474040 () Bool)

(declare-fun tp!131739 () Bool)

(declare-fun tp!131737 () Bool)

(assert (=> b!474040 (= e!289666 (and tp!131739 tp!131737))))

(declare-fun b!474041 () Bool)

(declare-fun tp!131738 () Bool)

(declare-fun tp!131740 () Bool)

(assert (=> b!474041 (= e!289666 (and tp!131738 tp!131740))))

(declare-fun b!474042 () Bool)

(declare-fun tp_is_empty!2275 () Bool)

(assert (=> b!474042 (= e!289666 tp_is_empty!2275)))

(declare-fun b!474043 () Bool)

(declare-fun tp!131741 () Bool)

(assert (=> b!474043 (= e!289666 tp!131741)))

(declare-fun b!474044 () Bool)

(declare-fun e!289668 () Bool)

(assert (=> b!474044 (= e!289668 (not true))))

(declare-fun lt!210680 () Bool)

(assert (=> b!474044 (not lt!210680)))

(declare-datatypes ((Unit!8348 0))(
  ( (Unit!8349) )
))
(declare-fun lt!210679 () Unit!8348)

(declare-fun lemmaNullableThenNotLostCause!6 (Regex!1139) Unit!8348)

(assert (=> b!474044 (= lt!210679 (lemmaNullableThenNotLostCause!6 (regOne!2790 r!20230)))))

(declare-fun b!474045 () Bool)

(declare-fun res!210454 () Bool)

(assert (=> b!474045 (=> (not res!210454) (not e!289668))))

(declare-fun nullable!274 (Regex!1139) Bool)

(assert (=> b!474045 (= res!210454 (nullable!274 (regOne!2790 r!20230)))))

(declare-fun b!474046 () Bool)

(declare-fun res!210453 () Bool)

(assert (=> b!474046 (=> (not res!210453) (not e!289669))))

(get-info :version)

(assert (=> b!474046 (= res!210453 (and (not ((_ is EmptyLang!1139) r!20230)) (not ((_ is EmptyExpr!1139) r!20230)) (not ((_ is ElementMatch!1139) r!20230)) (not ((_ is Union!1139) r!20230)) (not ((_ is Star!1139) r!20230))))))

(declare-fun b!474047 () Bool)

(declare-fun res!210452 () Bool)

(assert (=> b!474047 (=> (not res!210452) (not e!289669))))

(assert (=> b!474047 (= res!210452 (lostCause!133 r!20230))))

(declare-fun b!474048 () Bool)

(assert (=> b!474048 (= e!289669 e!289668)))

(declare-fun res!210455 () Bool)

(assert (=> b!474048 (=> (not res!210455) (not e!289668))))

(assert (=> b!474048 (= res!210455 e!289667)))

(declare-fun res!210457 () Bool)

(assert (=> b!474048 (=> res!210457 e!289667)))

(assert (=> b!474048 (= res!210457 lt!210680)))

(assert (=> b!474048 (= lt!210680 (lostCause!133 (regOne!2790 r!20230)))))

(assert (= (and start!45496 res!210456) b!474047))

(assert (= (and b!474047 res!210452) b!474046))

(assert (= (and b!474046 res!210453) b!474048))

(assert (= (and b!474048 (not res!210457)) b!474039))

(assert (= (and b!474048 res!210455) b!474045))

(assert (= (and b!474045 res!210454) b!474044))

(assert (= (and start!45496 ((_ is ElementMatch!1139) r!20230)) b!474042))

(assert (= (and start!45496 ((_ is Concat!2039) r!20230)) b!474041))

(assert (= (and start!45496 ((_ is Star!1139) r!20230)) b!474043))

(assert (= (and start!45496 ((_ is Union!1139) r!20230)) b!474040))

(declare-fun m!746811 () Bool)

(assert (=> start!45496 m!746811))

(declare-fun m!746813 () Bool)

(assert (=> b!474039 m!746813))

(declare-fun m!746815 () Bool)

(assert (=> b!474044 m!746815))

(declare-fun m!746817 () Bool)

(assert (=> b!474047 m!746817))

(declare-fun m!746819 () Bool)

(assert (=> b!474048 m!746819))

(declare-fun m!746821 () Bool)

(assert (=> b!474045 m!746821))

(check-sat (not b!474044) (not b!474043) (not b!474045) tp_is_empty!2275 (not start!45496) (not b!474040) (not b!474041) (not b!474047) (not b!474039) (not b!474048))
(check-sat)
