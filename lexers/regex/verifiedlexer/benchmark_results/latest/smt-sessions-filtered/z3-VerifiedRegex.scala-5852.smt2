; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287308 () Bool)

(assert start!287308)

(declare-fun b!2969108 () Bool)

(declare-fun e!1868297 () Bool)

(declare-fun e!1868295 () Bool)

(assert (=> b!2969108 (= e!1868297 (not e!1868295))))

(declare-fun res!1224571 () Bool)

(assert (=> b!2969108 (=> res!1224571 e!1868295)))

(declare-fun lt!1035885 () Bool)

(declare-datatypes ((C!18696 0))(
  ( (C!18697 (val!11384 Int)) )
))
(declare-datatypes ((Regex!9255 0))(
  ( (ElementMatch!9255 (c!487027 C!18696)) (Concat!14576 (regOne!19022 Regex!9255) (regTwo!19022 Regex!9255)) (EmptyExpr!9255) (Star!9255 (reg!9584 Regex!9255)) (EmptyLang!9255) (Union!9255 (regOne!19023 Regex!9255) (regTwo!19023 Regex!9255)) )
))
(declare-fun r!17423 () Regex!9255)

(get-info :version)

(assert (=> b!2969108 (= res!1224571 (or lt!1035885 ((_ is Concat!14576) r!17423) ((_ is Union!9255) r!17423) (not ((_ is Star!9255) r!17423))))))

(declare-datatypes ((List!35120 0))(
  ( (Nil!34996) (Cons!34996 (h!40416 C!18696) (t!234185 List!35120)) )
))
(declare-fun s!11993 () List!35120)

(declare-fun matchRSpec!1392 (Regex!9255 List!35120) Bool)

(assert (=> b!2969108 (= lt!1035885 (matchRSpec!1392 r!17423 s!11993))))

(declare-fun matchR!4137 (Regex!9255 List!35120) Bool)

(assert (=> b!2969108 (= lt!1035885 (matchR!4137 r!17423 s!11993))))

(declare-datatypes ((Unit!48889 0))(
  ( (Unit!48890) )
))
(declare-fun lt!1035886 () Unit!48889)

(declare-fun mainMatchTheorem!1392 (Regex!9255 List!35120) Unit!48889)

(assert (=> b!2969108 (= lt!1035886 (mainMatchTheorem!1392 r!17423 s!11993))))

(declare-fun b!2969109 () Bool)

(declare-fun e!1868294 () Bool)

(declare-fun tp!946925 () Bool)

(declare-fun tp!946928 () Bool)

(assert (=> b!2969109 (= e!1868294 (and tp!946925 tp!946928))))

(declare-fun b!2969110 () Bool)

(declare-fun e!1868296 () Bool)

(declare-fun tp_is_empty!16073 () Bool)

(declare-fun tp!946926 () Bool)

(assert (=> b!2969110 (= e!1868296 (and tp_is_empty!16073 tp!946926))))

(declare-fun b!2969111 () Bool)

(assert (=> b!2969111 (= e!1868294 tp_is_empty!16073)))

(declare-fun b!2969112 () Bool)

(declare-fun tp!946927 () Bool)

(assert (=> b!2969112 (= e!1868294 tp!946927)))

(declare-fun b!2969113 () Bool)

(declare-fun tp!946924 () Bool)

(declare-fun tp!946929 () Bool)

(assert (=> b!2969113 (= e!1868294 (and tp!946924 tp!946929))))

(declare-fun b!2969115 () Bool)

(declare-fun e!1868293 () Bool)

(assert (=> b!2969115 (= e!1868293 true)))

(declare-fun lt!1035888 () Regex!9255)

(assert (=> b!2969115 (= (matchR!4137 (reg!9584 r!17423) s!11993) (matchR!4137 lt!1035888 s!11993))))

(declare-fun lt!1035887 () Unit!48889)

(declare-fun lemmaSimplifySound!164 (Regex!9255 List!35120) Unit!48889)

(assert (=> b!2969115 (= lt!1035887 (lemmaSimplifySound!164 (reg!9584 r!17423) s!11993))))

(declare-fun b!2969114 () Bool)

(assert (=> b!2969114 (= e!1868295 e!1868293)))

(declare-fun res!1224572 () Bool)

(assert (=> b!2969114 (=> res!1224572 e!1868293)))

(declare-fun isEmptyLang!369 (Regex!9255) Bool)

(assert (=> b!2969114 (= res!1224572 (not (isEmptyLang!369 lt!1035888)))))

(declare-fun simplify!256 (Regex!9255) Regex!9255)

(assert (=> b!2969114 (= lt!1035888 (simplify!256 (reg!9584 r!17423)))))

(declare-fun res!1224570 () Bool)

(assert (=> start!287308 (=> (not res!1224570) (not e!1868297))))

(declare-fun validRegex!3988 (Regex!9255) Bool)

(assert (=> start!287308 (= res!1224570 (validRegex!3988 r!17423))))

(assert (=> start!287308 e!1868297))

(assert (=> start!287308 e!1868294))

(assert (=> start!287308 e!1868296))

(assert (= (and start!287308 res!1224570) b!2969108))

(assert (= (and b!2969108 (not res!1224571)) b!2969114))

(assert (= (and b!2969114 (not res!1224572)) b!2969115))

(assert (= (and start!287308 ((_ is ElementMatch!9255) r!17423)) b!2969111))

(assert (= (and start!287308 ((_ is Concat!14576) r!17423)) b!2969113))

(assert (= (and start!287308 ((_ is Star!9255) r!17423)) b!2969112))

(assert (= (and start!287308 ((_ is Union!9255) r!17423)) b!2969109))

(assert (= (and start!287308 ((_ is Cons!34996) s!11993)) b!2969110))

(declare-fun m!3337631 () Bool)

(assert (=> b!2969108 m!3337631))

(declare-fun m!3337633 () Bool)

(assert (=> b!2969108 m!3337633))

(declare-fun m!3337635 () Bool)

(assert (=> b!2969108 m!3337635))

(declare-fun m!3337637 () Bool)

(assert (=> b!2969115 m!3337637))

(declare-fun m!3337639 () Bool)

(assert (=> b!2969115 m!3337639))

(declare-fun m!3337641 () Bool)

(assert (=> b!2969115 m!3337641))

(declare-fun m!3337643 () Bool)

(assert (=> b!2969114 m!3337643))

(declare-fun m!3337645 () Bool)

(assert (=> b!2969114 m!3337645))

(declare-fun m!3337647 () Bool)

(assert (=> start!287308 m!3337647))

(check-sat (not b!2969114) tp_is_empty!16073 (not b!2969109) (not b!2969115) (not b!2969110) (not b!2969113) (not start!287308) (not b!2969112) (not b!2969108))
(check-sat)
