; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739824 () Bool)

(assert start!739824)

(declare-fun b!7767129 () Bool)

(declare-fun e!4602464 () Bool)

(declare-fun e!4602465 () Bool)

(assert (=> b!7767129 (= e!4602464 e!4602465)))

(declare-fun res!3096401 () Bool)

(assert (=> b!7767129 (=> (not res!3096401) (not e!4602465))))

(declare-datatypes ((C!41800 0))(
  ( (C!41801 (val!31340 Int)) )
))
(declare-datatypes ((Regex!20737 0))(
  ( (ElementMatch!20737 (c!1431538 C!41800)) (Concat!29582 (regOne!41986 Regex!20737) (regTwo!41986 Regex!20737)) (EmptyExpr!20737) (Star!20737 (reg!21066 Regex!20737)) (EmptyLang!20737) (Union!20737 (regOne!41987 Regex!20737) (regTwo!41987 Regex!20737)) )
))
(declare-fun lt!2671024 () Regex!20737)

(declare-datatypes ((List!73578 0))(
  ( (Nil!73454) (Cons!73454 (h!79902 C!41800) (t!388313 List!73578)) )
))
(declare-fun s!14904 () List!73578)

(declare-fun lt!2671023 () Regex!20737)

(declare-fun derivativeStep!6082 (Regex!20737 C!41800) Regex!20737)

(assert (=> b!7767129 (= res!3096401 (= (derivativeStep!6082 lt!2671023 (h!79902 s!14904)) (Concat!29582 lt!2671024 lt!2671023)))))

(declare-fun r!25924 () Regex!20737)

(assert (=> b!7767129 (= lt!2671024 (derivativeStep!6082 r!25924 (h!79902 s!14904)))))

(declare-fun b!7767130 () Bool)

(declare-fun res!3096402 () Bool)

(assert (=> b!7767130 (=> (not res!3096402) (not e!4602464))))

(get-info :version)

(assert (=> b!7767130 (= res!3096402 ((_ is Cons!73454) s!14904))))

(declare-fun res!3096404 () Bool)

(assert (=> start!739824 (=> (not res!3096404) (not e!4602464))))

(declare-fun validRegex!11151 (Regex!20737) Bool)

(assert (=> start!739824 (= res!3096404 (validRegex!11151 lt!2671023))))

(assert (=> start!739824 (= lt!2671023 (Star!20737 r!25924))))

(assert (=> start!739824 e!4602464))

(declare-fun e!4602463 () Bool)

(assert (=> start!739824 e!4602463))

(declare-fun e!4602462 () Bool)

(assert (=> start!739824 e!4602462))

(declare-fun b!7767131 () Bool)

(declare-fun res!3096403 () Bool)

(assert (=> b!7767131 (=> (not res!3096403) (not e!4602464))))

(declare-fun matchR!10199 (Regex!20737 List!73578) Bool)

(assert (=> b!7767131 (= res!3096403 (matchR!10199 lt!2671023 s!14904))))

(declare-fun b!7767132 () Bool)

(assert (=> b!7767132 (= e!4602465 (not true))))

(declare-datatypes ((tuple2!69840 0))(
  ( (tuple2!69841 (_1!38223 List!73578) (_2!38223 List!73578)) )
))
(declare-datatypes ((Option!17714 0))(
  ( (None!17713) (Some!17713 (v!54848 tuple2!69840)) )
))
(declare-fun isDefined!14326 (Option!17714) Bool)

(declare-fun findConcatSeparation!3744 (Regex!20737 Regex!20737 List!73578 List!73578 List!73578) Option!17714)

(assert (=> b!7767132 (isDefined!14326 (findConcatSeparation!3744 lt!2671024 lt!2671023 Nil!73454 (t!388313 s!14904) (t!388313 s!14904)))))

(declare-datatypes ((Unit!168436 0))(
  ( (Unit!168437) )
))
(declare-fun lt!2671022 () Unit!168436)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!334 (Regex!20737 Regex!20737 List!73578) Unit!168436)

(assert (=> b!7767132 (= lt!2671022 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!334 lt!2671024 lt!2671023 (t!388313 s!14904)))))

(declare-fun b!7767133 () Bool)

(declare-fun tp!2281692 () Bool)

(declare-fun tp!2281691 () Bool)

(assert (=> b!7767133 (= e!4602463 (and tp!2281692 tp!2281691))))

(declare-fun b!7767134 () Bool)

(declare-fun tp!2281689 () Bool)

(assert (=> b!7767134 (= e!4602463 tp!2281689)))

(declare-fun b!7767135 () Bool)

(declare-fun tp_is_empty!51829 () Bool)

(assert (=> b!7767135 (= e!4602463 tp_is_empty!51829)))

(declare-fun b!7767136 () Bool)

(declare-fun tp!2281693 () Bool)

(assert (=> b!7767136 (= e!4602462 (and tp_is_empty!51829 tp!2281693))))

(declare-fun b!7767137 () Bool)

(declare-fun tp!2281690 () Bool)

(declare-fun tp!2281688 () Bool)

(assert (=> b!7767137 (= e!4602463 (and tp!2281690 tp!2281688))))

(assert (= (and start!739824 res!3096404) b!7767131))

(assert (= (and b!7767131 res!3096403) b!7767130))

(assert (= (and b!7767130 res!3096402) b!7767129))

(assert (= (and b!7767129 res!3096401) b!7767132))

(assert (= (and start!739824 ((_ is ElementMatch!20737) r!25924)) b!7767135))

(assert (= (and start!739824 ((_ is Concat!29582) r!25924)) b!7767133))

(assert (= (and start!739824 ((_ is Star!20737) r!25924)) b!7767134))

(assert (= (and start!739824 ((_ is Union!20737) r!25924)) b!7767137))

(assert (= (and start!739824 ((_ is Cons!73454) s!14904)) b!7767136))

(declare-fun m!8223132 () Bool)

(assert (=> b!7767129 m!8223132))

(declare-fun m!8223134 () Bool)

(assert (=> b!7767129 m!8223134))

(declare-fun m!8223136 () Bool)

(assert (=> start!739824 m!8223136))

(declare-fun m!8223138 () Bool)

(assert (=> b!7767131 m!8223138))

(declare-fun m!8223140 () Bool)

(assert (=> b!7767132 m!8223140))

(assert (=> b!7767132 m!8223140))

(declare-fun m!8223142 () Bool)

(assert (=> b!7767132 m!8223142))

(declare-fun m!8223144 () Bool)

(assert (=> b!7767132 m!8223144))

(check-sat (not start!739824) (not b!7767134) tp_is_empty!51829 (not b!7767131) (not b!7767132) (not b!7767133) (not b!7767136) (not b!7767129) (not b!7767137))
(check-sat)
