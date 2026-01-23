; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740574 () Bool)

(assert start!740574)

(declare-fun b!7781603 () Bool)

(declare-fun e!4609540 () Bool)

(declare-datatypes ((C!41984 0))(
  ( (C!41985 (val!31432 Int)) )
))
(declare-datatypes ((List!73668 0))(
  ( (Nil!73544) (Cons!73544 (h!79992 C!41984) (t!388403 List!73668)) )
))
(declare-fun s!14292 () List!73668)

(declare-datatypes ((Regex!20829 0))(
  ( (ElementMatch!20829 (c!1433810 C!41984)) (Concat!29674 (regOne!42170 Regex!20829) (regTwo!42170 Regex!20829)) (EmptyExpr!20829) (Star!20829 (reg!21158 Regex!20829)) (EmptyLang!20829) (Union!20829 (regOne!42171 Regex!20829) (regTwo!42171 Regex!20829)) )
))
(declare-fun matchR!10289 (Regex!20829 List!73668) Bool)

(assert (=> b!7781603 (= e!4609540 (matchR!10289 EmptyLang!20829 (t!388403 s!14292)))))

(declare-fun b!7781604 () Bool)

(declare-fun res!3101829 () Bool)

(declare-fun e!4609542 () Bool)

(assert (=> b!7781604 (=> res!3101829 e!4609542)))

(declare-fun r2!6217 () Regex!20829)

(declare-datatypes ((tuple2!69912 0))(
  ( (tuple2!69913 (_1!38259 List!73668) (_2!38259 List!73668)) )
))
(declare-fun lt!2673181 () tuple2!69912)

(assert (=> b!7781604 (= res!3101829 (not (matchR!10289 r2!6217 (_2!38259 lt!2673181))))))

(declare-fun b!7781605 () Bool)

(declare-fun e!4609545 () Bool)

(declare-fun tp_is_empty!52013 () Bool)

(assert (=> b!7781605 (= e!4609545 tp_is_empty!52013)))

(declare-fun b!7781606 () Bool)

(declare-fun tp!2287221 () Bool)

(declare-fun tp!2287226 () Bool)

(assert (=> b!7781606 (= e!4609545 (and tp!2287221 tp!2287226))))

(declare-fun b!7781607 () Bool)

(declare-fun res!3101833 () Bool)

(assert (=> b!7781607 (=> res!3101833 e!4609542)))

(declare-fun r1!6279 () Regex!20829)

(declare-fun lt!2673190 () List!73668)

(assert (=> b!7781607 (= res!3101833 (not (matchR!10289 r1!6279 lt!2673190)))))

(declare-fun b!7781608 () Bool)

(declare-fun e!4609543 () Bool)

(declare-fun tp!2287229 () Bool)

(declare-fun tp!2287227 () Bool)

(assert (=> b!7781608 (= e!4609543 (and tp!2287229 tp!2287227))))

(declare-fun b!7781609 () Bool)

(declare-fun tp!2287224 () Bool)

(declare-fun tp!2287222 () Bool)

(assert (=> b!7781609 (= e!4609545 (and tp!2287224 tp!2287222))))

(declare-fun b!7781611 () Bool)

(declare-fun e!4609536 () Bool)

(declare-fun e!4609538 () Bool)

(assert (=> b!7781611 (= e!4609536 e!4609538)))

(declare-fun res!3101837 () Bool)

(assert (=> b!7781611 (=> (not res!3101837) (not e!4609538))))

(declare-fun lt!2673186 () Regex!20829)

(assert (=> b!7781611 (= res!3101837 (matchR!10289 lt!2673186 s!14292))))

(assert (=> b!7781611 (= lt!2673186 (Concat!29674 r1!6279 r2!6217))))

(declare-fun b!7781612 () Bool)

(declare-fun e!4609544 () Bool)

(declare-fun e!4609537 () Bool)

(assert (=> b!7781612 (= e!4609544 e!4609537)))

(declare-fun res!3101840 () Bool)

(assert (=> b!7781612 (=> (not res!3101840) (not e!4609537))))

(declare-fun lt!2673179 () Regex!20829)

(declare-fun lt!2673185 () Regex!20829)

(assert (=> b!7781612 (= res!3101840 (= lt!2673179 (Union!20829 lt!2673185 EmptyLang!20829)))))

(declare-fun lt!2673187 () Regex!20829)

(assert (=> b!7781612 (= lt!2673185 (Concat!29674 lt!2673187 r2!6217))))

(declare-fun derivativeStep!6172 (Regex!20829 C!41984) Regex!20829)

(assert (=> b!7781612 (= lt!2673187 (derivativeStep!6172 r1!6279 (h!79992 s!14292)))))

(declare-fun b!7781613 () Bool)

(declare-fun tp!2287219 () Bool)

(declare-fun tp!2287223 () Bool)

(assert (=> b!7781613 (= e!4609543 (and tp!2287219 tp!2287223))))

(declare-fun b!7781614 () Bool)

(declare-fun e!4609539 () Bool)

(assert (=> b!7781614 (= e!4609537 (not e!4609539))))

(declare-fun res!3101839 () Bool)

(assert (=> b!7781614 (=> res!3101839 e!4609539)))

(declare-fun lt!2673180 () Bool)

(assert (=> b!7781614 (= res!3101839 (not lt!2673180))))

(declare-fun derivative!557 (Regex!20829 List!73668) Regex!20829)

(assert (=> b!7781614 (= (derivative!557 EmptyLang!20829 (t!388403 s!14292)) EmptyLang!20829)))

(declare-datatypes ((Unit!168548 0))(
  ( (Unit!168549) )
))
(declare-fun lt!2673184 () Unit!168548)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!92 (Regex!20829 List!73668) Unit!168548)

(assert (=> b!7781614 (= lt!2673184 (lemmaEmptyLangDerivativeIsAFixPoint!92 EmptyLang!20829 (t!388403 s!14292)))))

(assert (=> b!7781614 e!4609540))

(declare-fun res!3101836 () Bool)

(assert (=> b!7781614 (=> res!3101836 e!4609540)))

(assert (=> b!7781614 (= res!3101836 lt!2673180)))

(assert (=> b!7781614 (= lt!2673180 (matchR!10289 lt!2673185 (t!388403 s!14292)))))

(declare-fun lt!2673183 () Unit!168548)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!398 (Regex!20829 Regex!20829 List!73668) Unit!168548)

(assert (=> b!7781614 (= lt!2673183 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!398 lt!2673185 EmptyLang!20829 (t!388403 s!14292)))))

(declare-fun b!7781615 () Bool)

(declare-fun e!4609541 () Bool)

(declare-fun tp!2287220 () Bool)

(assert (=> b!7781615 (= e!4609541 (and tp_is_empty!52013 tp!2287220))))

(declare-fun b!7781616 () Bool)

(declare-fun res!3101841 () Bool)

(assert (=> b!7781616 (=> (not res!3101841) (not e!4609544))))

(declare-fun nullable!9217 (Regex!20829) Bool)

(assert (=> b!7781616 (= res!3101841 (not (nullable!9217 r1!6279)))))

(declare-fun b!7781617 () Bool)

(assert (=> b!7781617 (= e!4609539 e!4609542)))

(declare-fun res!3101835 () Bool)

(assert (=> b!7781617 (=> res!3101835 e!4609542)))

(declare-fun ++!17923 (List!73668 List!73668) List!73668)

(assert (=> b!7781617 (= res!3101835 (not (= (++!17923 lt!2673190 (_2!38259 lt!2673181)) s!14292)))))

(assert (=> b!7781617 (= lt!2673190 (Cons!73544 (h!79992 s!14292) (_1!38259 lt!2673181)))))

(declare-datatypes ((Option!17750 0))(
  ( (None!17749) (Some!17749 (v!54884 tuple2!69912)) )
))
(declare-fun lt!2673189 () Option!17750)

(declare-fun get!26291 (Option!17750) tuple2!69912)

(assert (=> b!7781617 (= lt!2673181 (get!26291 lt!2673189))))

(declare-fun isDefined!14362 (Option!17750) Bool)

(assert (=> b!7781617 (isDefined!14362 lt!2673189)))

(declare-fun findConcatSeparation!3780 (Regex!20829 Regex!20829 List!73668 List!73668 List!73668) Option!17750)

(assert (=> b!7781617 (= lt!2673189 (findConcatSeparation!3780 lt!2673187 r2!6217 Nil!73544 (t!388403 s!14292) (t!388403 s!14292)))))

(declare-fun lt!2673188 () Unit!168548)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!370 (Regex!20829 Regex!20829 List!73668) Unit!168548)

(assert (=> b!7781617 (= lt!2673188 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!370 lt!2673187 r2!6217 (t!388403 s!14292)))))

(declare-fun b!7781618 () Bool)

(assert (=> b!7781618 (= e!4609543 tp_is_empty!52013)))

(declare-fun res!3101838 () Bool)

(assert (=> start!740574 (=> (not res!3101838) (not e!4609536))))

(declare-fun validRegex!11243 (Regex!20829) Bool)

(assert (=> start!740574 (= res!3101838 (validRegex!11243 r1!6279))))

(assert (=> start!740574 e!4609536))

(assert (=> start!740574 e!4609545))

(assert (=> start!740574 e!4609543))

(assert (=> start!740574 e!4609541))

(declare-fun b!7781610 () Bool)

(declare-fun res!3101832 () Bool)

(assert (=> b!7781610 (=> res!3101832 e!4609542)))

(assert (=> b!7781610 (= res!3101832 (not (= (++!17923 Nil!73544 s!14292) s!14292)))))

(declare-fun b!7781619 () Bool)

(assert (=> b!7781619 (= e!4609542 true)))

(assert (=> b!7781619 (isDefined!14362 (findConcatSeparation!3780 r1!6279 r2!6217 Nil!73544 s!14292 s!14292))))

(declare-fun lt!2673182 () Unit!168548)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!132 (Regex!20829 Regex!20829 List!73668 List!73668 List!73668 List!73668 List!73668) Unit!168548)

(assert (=> b!7781619 (= lt!2673182 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!132 r1!6279 r2!6217 lt!2673190 (_2!38259 lt!2673181) s!14292 Nil!73544 s!14292))))

(declare-fun b!7781620 () Bool)

(declare-fun res!3101834 () Bool)

(assert (=> b!7781620 (=> (not res!3101834) (not e!4609536))))

(assert (=> b!7781620 (= res!3101834 (validRegex!11243 r2!6217))))

(declare-fun b!7781621 () Bool)

(declare-fun res!3101842 () Bool)

(assert (=> b!7781621 (=> (not res!3101842) (not e!4609538))))

(get-info :version)

(assert (=> b!7781621 (= res!3101842 ((_ is Cons!73544) s!14292))))

(declare-fun b!7781622 () Bool)

(declare-fun res!3101831 () Bool)

(assert (=> b!7781622 (=> res!3101831 e!4609542)))

(declare-fun isPrefix!6253 (List!73668 List!73668) Bool)

(assert (=> b!7781622 (= res!3101831 (not (isPrefix!6253 Nil!73544 lt!2673190)))))

(declare-fun b!7781623 () Bool)

(declare-fun tp!2287228 () Bool)

(assert (=> b!7781623 (= e!4609543 tp!2287228)))

(declare-fun b!7781624 () Bool)

(assert (=> b!7781624 (= e!4609538 e!4609544)))

(declare-fun res!3101830 () Bool)

(assert (=> b!7781624 (=> (not res!3101830) (not e!4609544))))

(assert (=> b!7781624 (= res!3101830 (matchR!10289 lt!2673179 (t!388403 s!14292)))))

(assert (=> b!7781624 (= lt!2673179 (derivativeStep!6172 lt!2673186 (h!79992 s!14292)))))

(declare-fun b!7781625 () Bool)

(declare-fun tp!2287225 () Bool)

(assert (=> b!7781625 (= e!4609545 tp!2287225)))

(assert (= (and start!740574 res!3101838) b!7781620))

(assert (= (and b!7781620 res!3101834) b!7781611))

(assert (= (and b!7781611 res!3101837) b!7781621))

(assert (= (and b!7781621 res!3101842) b!7781624))

(assert (= (and b!7781624 res!3101830) b!7781616))

(assert (= (and b!7781616 res!3101841) b!7781612))

(assert (= (and b!7781612 res!3101840) b!7781614))

(assert (= (and b!7781614 (not res!3101836)) b!7781603))

(assert (= (and b!7781614 (not res!3101839)) b!7781617))

(assert (= (and b!7781617 (not res!3101835)) b!7781622))

(assert (= (and b!7781622 (not res!3101831)) b!7781610))

(assert (= (and b!7781610 (not res!3101832)) b!7781607))

(assert (= (and b!7781607 (not res!3101833)) b!7781604))

(assert (= (and b!7781604 (not res!3101829)) b!7781619))

(assert (= (and start!740574 ((_ is ElementMatch!20829) r1!6279)) b!7781605))

(assert (= (and start!740574 ((_ is Concat!29674) r1!6279)) b!7781609))

(assert (= (and start!740574 ((_ is Star!20829) r1!6279)) b!7781625))

(assert (= (and start!740574 ((_ is Union!20829) r1!6279)) b!7781606))

(assert (= (and start!740574 ((_ is ElementMatch!20829) r2!6217)) b!7781618))

(assert (= (and start!740574 ((_ is Concat!29674) r2!6217)) b!7781608))

(assert (= (and start!740574 ((_ is Star!20829) r2!6217)) b!7781623))

(assert (= (and start!740574 ((_ is Union!20829) r2!6217)) b!7781613))

(assert (= (and start!740574 ((_ is Cons!73544) s!14292)) b!7781615))

(declare-fun m!8229422 () Bool)

(assert (=> b!7781617 m!8229422))

(declare-fun m!8229424 () Bool)

(assert (=> b!7781617 m!8229424))

(declare-fun m!8229426 () Bool)

(assert (=> b!7781617 m!8229426))

(declare-fun m!8229428 () Bool)

(assert (=> b!7781617 m!8229428))

(declare-fun m!8229430 () Bool)

(assert (=> b!7781617 m!8229430))

(declare-fun m!8229432 () Bool)

(assert (=> b!7781612 m!8229432))

(declare-fun m!8229434 () Bool)

(assert (=> start!740574 m!8229434))

(declare-fun m!8229436 () Bool)

(assert (=> b!7781624 m!8229436))

(declare-fun m!8229438 () Bool)

(assert (=> b!7781624 m!8229438))

(declare-fun m!8229440 () Bool)

(assert (=> b!7781604 m!8229440))

(declare-fun m!8229442 () Bool)

(assert (=> b!7781616 m!8229442))

(declare-fun m!8229444 () Bool)

(assert (=> b!7781614 m!8229444))

(declare-fun m!8229446 () Bool)

(assert (=> b!7781614 m!8229446))

(declare-fun m!8229448 () Bool)

(assert (=> b!7781614 m!8229448))

(declare-fun m!8229450 () Bool)

(assert (=> b!7781614 m!8229450))

(declare-fun m!8229452 () Bool)

(assert (=> b!7781610 m!8229452))

(declare-fun m!8229454 () Bool)

(assert (=> b!7781620 m!8229454))

(declare-fun m!8229456 () Bool)

(assert (=> b!7781622 m!8229456))

(declare-fun m!8229458 () Bool)

(assert (=> b!7781603 m!8229458))

(declare-fun m!8229460 () Bool)

(assert (=> b!7781619 m!8229460))

(assert (=> b!7781619 m!8229460))

(declare-fun m!8229462 () Bool)

(assert (=> b!7781619 m!8229462))

(declare-fun m!8229464 () Bool)

(assert (=> b!7781619 m!8229464))

(declare-fun m!8229466 () Bool)

(assert (=> b!7781607 m!8229466))

(declare-fun m!8229468 () Bool)

(assert (=> b!7781611 m!8229468))

(check-sat (not b!7781619) (not b!7781606) (not b!7781611) (not b!7781617) (not start!740574) (not b!7781614) (not b!7781622) (not b!7781609) (not b!7781623) (not b!7781625) (not b!7781615) (not b!7781610) tp_is_empty!52013 (not b!7781603) (not b!7781620) (not b!7781612) (not b!7781608) (not b!7781624) (not b!7781607) (not b!7781613) (not b!7781616) (not b!7781604))
(check-sat)
