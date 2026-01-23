; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87674 () Bool)

(assert start!87674)

(declare-fun b!996885 () Bool)

(declare-fun e!639384 () Bool)

(declare-fun tp!304140 () Bool)

(assert (=> b!996885 (= e!639384 tp!304140)))

(declare-fun b!996886 () Bool)

(declare-fun tp_is_empty!5161 () Bool)

(assert (=> b!996886 (= e!639384 tp_is_empty!5161)))

(declare-fun b!996887 () Bool)

(declare-fun e!639383 () Bool)

(declare-datatypes ((C!6088 0))(
  ( (C!6089 (val!3292 Int)) )
))
(declare-datatypes ((Regex!2759 0))(
  ( (ElementMatch!2759 (c!164004 C!6088)) (Concat!4592 (regOne!6030 Regex!2759) (regTwo!6030 Regex!2759)) (EmptyExpr!2759) (Star!2759 (reg!3088 Regex!2759)) (EmptyLang!2759) (Union!2759 (regOne!6031 Regex!2759) (regTwo!6031 Regex!2759)) )
))
(declare-fun r!15766 () Regex!2759)

(declare-datatypes ((List!9989 0))(
  ( (Nil!9973) (Cons!9973 (h!15374 C!6088) (t!101035 List!9989)) )
))
(declare-fun s!10566 () List!9989)

(declare-fun matchR!1295 (Regex!2759 List!9989) Bool)

(assert (=> b!996887 (= e!639383 (matchR!1295 (Union!2759 (regOne!6031 r!15766) (regTwo!6031 r!15766)) s!10566))))

(declare-fun res!450263 () Bool)

(declare-fun e!639385 () Bool)

(assert (=> start!87674 (=> (not res!450263) (not e!639385))))

(declare-fun validRegex!1228 (Regex!2759) Bool)

(assert (=> start!87674 (= res!450263 (validRegex!1228 r!15766))))

(assert (=> start!87674 e!639385))

(assert (=> start!87674 e!639384))

(declare-fun e!639382 () Bool)

(assert (=> start!87674 e!639382))

(declare-fun b!996888 () Bool)

(declare-fun tp!304144 () Bool)

(assert (=> b!996888 (= e!639382 (and tp_is_empty!5161 tp!304144))))

(declare-fun b!996889 () Bool)

(declare-fun res!450262 () Bool)

(assert (=> b!996889 (=> res!450262 e!639383)))

(assert (=> b!996889 (= res!450262 (not (validRegex!1228 (regTwo!6031 r!15766))))))

(declare-fun b!996890 () Bool)

(declare-fun tp!304143 () Bool)

(declare-fun tp!304141 () Bool)

(assert (=> b!996890 (= e!639384 (and tp!304143 tp!304141))))

(declare-fun b!996891 () Bool)

(assert (=> b!996891 (= e!639385 (not e!639383))))

(declare-fun res!450264 () Bool)

(assert (=> b!996891 (=> res!450264 e!639383)))

(declare-fun lt!351442 () Bool)

(get-info :version)

(assert (=> b!996891 (= res!450264 (or (not lt!351442) (and ((_ is Concat!4592) r!15766) ((_ is EmptyExpr!2759) (regOne!6030 r!15766))) (and ((_ is Concat!4592) r!15766) ((_ is EmptyExpr!2759) (regTwo!6030 r!15766))) ((_ is Concat!4592) r!15766) (not ((_ is Union!2759) r!15766))))))

(declare-fun matchRSpec!558 (Regex!2759 List!9989) Bool)

(assert (=> b!996891 (= lt!351442 (matchRSpec!558 r!15766 s!10566))))

(assert (=> b!996891 (= lt!351442 (matchR!1295 r!15766 s!10566))))

(declare-datatypes ((Unit!15177 0))(
  ( (Unit!15178) )
))
(declare-fun lt!351443 () Unit!15177)

(declare-fun mainMatchTheorem!558 (Regex!2759 List!9989) Unit!15177)

(assert (=> b!996891 (= lt!351443 (mainMatchTheorem!558 r!15766 s!10566))))

(declare-fun b!996892 () Bool)

(declare-fun res!450261 () Bool)

(assert (=> b!996892 (=> res!450261 e!639383)))

(assert (=> b!996892 (= res!450261 (not (validRegex!1228 (regOne!6031 r!15766))))))

(declare-fun b!996893 () Bool)

(declare-fun tp!304139 () Bool)

(declare-fun tp!304142 () Bool)

(assert (=> b!996893 (= e!639384 (and tp!304139 tp!304142))))

(assert (= (and start!87674 res!450263) b!996891))

(assert (= (and b!996891 (not res!450264)) b!996892))

(assert (= (and b!996892 (not res!450261)) b!996889))

(assert (= (and b!996889 (not res!450262)) b!996887))

(assert (= (and start!87674 ((_ is ElementMatch!2759) r!15766)) b!996886))

(assert (= (and start!87674 ((_ is Concat!4592) r!15766)) b!996890))

(assert (= (and start!87674 ((_ is Star!2759) r!15766)) b!996885))

(assert (= (and start!87674 ((_ is Union!2759) r!15766)) b!996893))

(assert (= (and start!87674 ((_ is Cons!9973) s!10566)) b!996888))

(declare-fun m!1188535 () Bool)

(assert (=> b!996887 m!1188535))

(declare-fun m!1188537 () Bool)

(assert (=> b!996891 m!1188537))

(declare-fun m!1188539 () Bool)

(assert (=> b!996891 m!1188539))

(declare-fun m!1188541 () Bool)

(assert (=> b!996891 m!1188541))

(declare-fun m!1188543 () Bool)

(assert (=> b!996892 m!1188543))

(declare-fun m!1188545 () Bool)

(assert (=> b!996889 m!1188545))

(declare-fun m!1188547 () Bool)

(assert (=> start!87674 m!1188547))

(check-sat (not b!996893) (not b!996887) (not start!87674) (not b!996892) (not b!996888) (not b!996890) (not b!996891) (not b!996889) tp_is_empty!5161 (not b!996885))
(check-sat)
