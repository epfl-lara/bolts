; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284580 () Bool)

(assert start!284580)

(declare-fun b!2924542 () Bool)

(declare-fun e!1844765 () Bool)

(declare-datatypes ((C!18208 0))(
  ( (C!18209 (val!11140 Int)) )
))
(declare-datatypes ((Regex!9011 0))(
  ( (ElementMatch!9011 (c!477461 C!18208)) (Concat!14332 (regOne!18534 Regex!9011) (regTwo!18534 Regex!9011)) (EmptyExpr!9011) (Star!9011 (reg!9340 Regex!9011)) (EmptyLang!9011) (Union!9011 (regOne!18535 Regex!9011) (regTwo!18535 Regex!9011)) )
))
(declare-fun r!17423 () Regex!9011)

(declare-datatypes ((List!34876 0))(
  ( (Nil!34752) (Cons!34752 (h!40172 C!18208) (t!233941 List!34876)) )
))
(declare-fun s!11993 () List!34876)

(declare-fun matchR!3893 (Regex!9011 List!34876) Bool)

(assert (=> b!2924542 (= e!1844765 (matchR!3893 (regTwo!18535 r!17423) s!11993))))

(declare-fun b!2924543 () Bool)

(declare-fun e!1844761 () Bool)

(assert (=> b!2924543 (= e!1844761 true)))

(declare-fun lt!1026392 () Regex!9011)

(declare-fun simplify!40 (Regex!9011) Regex!9011)

(assert (=> b!2924543 (= lt!1026392 (simplify!40 (regOne!18535 r!17423)))))

(declare-fun b!2924544 () Bool)

(declare-fun e!1844762 () Bool)

(declare-fun tp!937976 () Bool)

(assert (=> b!2924544 (= e!1844762 tp!937976)))

(declare-fun b!2924545 () Bool)

(declare-fun tp!937974 () Bool)

(declare-fun tp!937972 () Bool)

(assert (=> b!2924545 (= e!1844762 (and tp!937974 tp!937972))))

(declare-fun b!2924546 () Bool)

(declare-fun e!1844766 () Bool)

(declare-fun e!1844764 () Bool)

(assert (=> b!2924546 (= e!1844766 (not e!1844764))))

(declare-fun res!1207165 () Bool)

(assert (=> b!2924546 (=> res!1207165 e!1844764)))

(declare-fun lt!1026389 () Bool)

(get-info :version)

(assert (=> b!2924546 (= res!1207165 (or (not lt!1026389) ((_ is Concat!14332) r!17423) (not ((_ is Union!9011) r!17423))))))

(declare-fun matchRSpec!1148 (Regex!9011 List!34876) Bool)

(assert (=> b!2924546 (= lt!1026389 (matchRSpec!1148 r!17423 s!11993))))

(assert (=> b!2924546 (= lt!1026389 (matchR!3893 r!17423 s!11993))))

(declare-datatypes ((Unit!48361 0))(
  ( (Unit!48362) )
))
(declare-fun lt!1026393 () Unit!48361)

(declare-fun mainMatchTheorem!1148 (Regex!9011 List!34876) Unit!48361)

(assert (=> b!2924546 (= lt!1026393 (mainMatchTheorem!1148 r!17423 s!11993))))

(declare-fun res!1207166 () Bool)

(assert (=> start!284580 (=> (not res!1207166) (not e!1844766))))

(declare-fun validRegex!3744 (Regex!9011) Bool)

(assert (=> start!284580 (= res!1207166 (validRegex!3744 r!17423))))

(assert (=> start!284580 e!1844766))

(assert (=> start!284580 e!1844762))

(declare-fun e!1844767 () Bool)

(assert (=> start!284580 e!1844767))

(declare-fun b!2924547 () Bool)

(declare-fun tp_is_empty!15585 () Bool)

(declare-fun tp!937973 () Bool)

(assert (=> b!2924547 (= e!1844767 (and tp_is_empty!15585 tp!937973))))

(declare-fun b!2924548 () Bool)

(declare-fun e!1844763 () Bool)

(assert (=> b!2924548 (= e!1844764 e!1844763)))

(declare-fun res!1207167 () Bool)

(assert (=> b!2924548 (=> res!1207167 e!1844763)))

(declare-fun lt!1026390 () Bool)

(assert (=> b!2924548 (= res!1207167 lt!1026390)))

(assert (=> b!2924548 e!1844765))

(declare-fun res!1207164 () Bool)

(assert (=> b!2924548 (=> res!1207164 e!1844765)))

(assert (=> b!2924548 (= res!1207164 lt!1026390)))

(assert (=> b!2924548 (= lt!1026390 (matchR!3893 (regOne!18535 r!17423) s!11993))))

(declare-fun lt!1026388 () Unit!48361)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!260 (Regex!9011 Regex!9011 List!34876) Unit!48361)

(assert (=> b!2924548 (= lt!1026388 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!260 (regOne!18535 r!17423) (regTwo!18535 r!17423) s!11993))))

(declare-fun b!2924549 () Bool)

(assert (=> b!2924549 (= e!1844762 tp_is_empty!15585)))

(declare-fun b!2924550 () Bool)

(declare-fun tp!937975 () Bool)

(declare-fun tp!937977 () Bool)

(assert (=> b!2924550 (= e!1844762 (and tp!937975 tp!937977))))

(declare-fun b!2924551 () Bool)

(assert (=> b!2924551 (= e!1844763 e!1844761)))

(declare-fun res!1207168 () Bool)

(assert (=> b!2924551 (=> res!1207168 e!1844761)))

(declare-fun lt!1026391 () Bool)

(assert (=> b!2924551 (= res!1207168 (not lt!1026391))))

(declare-fun lt!1026395 () Bool)

(assert (=> b!2924551 (= lt!1026395 lt!1026391)))

(declare-fun lt!1026387 () Regex!9011)

(assert (=> b!2924551 (= lt!1026391 (matchR!3893 lt!1026387 s!11993))))

(assert (=> b!2924551 (= lt!1026395 (matchR!3893 (regTwo!18535 r!17423) s!11993))))

(assert (=> b!2924551 (= lt!1026387 (simplify!40 (regTwo!18535 r!17423)))))

(declare-fun lt!1026394 () Unit!48361)

(declare-fun lemmaSimplifySound!38 (Regex!9011 List!34876) Unit!48361)

(assert (=> b!2924551 (= lt!1026394 (lemmaSimplifySound!38 (regTwo!18535 r!17423) s!11993))))

(assert (= (and start!284580 res!1207166) b!2924546))

(assert (= (and b!2924546 (not res!1207165)) b!2924548))

(assert (= (and b!2924548 (not res!1207164)) b!2924542))

(assert (= (and b!2924548 (not res!1207167)) b!2924551))

(assert (= (and b!2924551 (not res!1207168)) b!2924543))

(assert (= (and start!284580 ((_ is ElementMatch!9011) r!17423)) b!2924549))

(assert (= (and start!284580 ((_ is Concat!14332) r!17423)) b!2924550))

(assert (= (and start!284580 ((_ is Star!9011) r!17423)) b!2924544))

(assert (= (and start!284580 ((_ is Union!9011) r!17423)) b!2924545))

(assert (= (and start!284580 ((_ is Cons!34752) s!11993)) b!2924547))

(declare-fun m!3318287 () Bool)

(assert (=> start!284580 m!3318287))

(declare-fun m!3318289 () Bool)

(assert (=> b!2924551 m!3318289))

(declare-fun m!3318291 () Bool)

(assert (=> b!2924551 m!3318291))

(declare-fun m!3318293 () Bool)

(assert (=> b!2924551 m!3318293))

(declare-fun m!3318295 () Bool)

(assert (=> b!2924551 m!3318295))

(assert (=> b!2924542 m!3318291))

(declare-fun m!3318297 () Bool)

(assert (=> b!2924543 m!3318297))

(declare-fun m!3318299 () Bool)

(assert (=> b!2924546 m!3318299))

(declare-fun m!3318301 () Bool)

(assert (=> b!2924546 m!3318301))

(declare-fun m!3318303 () Bool)

(assert (=> b!2924546 m!3318303))

(declare-fun m!3318305 () Bool)

(assert (=> b!2924548 m!3318305))

(declare-fun m!3318307 () Bool)

(assert (=> b!2924548 m!3318307))

(check-sat (not b!2924550) (not b!2924547) (not start!284580) (not b!2924543) (not b!2924548) (not b!2924551) (not b!2924546) (not b!2924544) (not b!2924545) tp_is_empty!15585 (not b!2924542))
(check-sat)
