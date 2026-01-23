; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739788 () Bool)

(assert start!739788)

(declare-fun b!7766631 () Bool)

(declare-fun res!3096218 () Bool)

(declare-fun e!4602210 () Bool)

(assert (=> b!7766631 (=> (not res!3096218) (not e!4602210))))

(declare-datatypes ((C!41792 0))(
  ( (C!41793 (val!31336 Int)) )
))
(declare-datatypes ((Regex!20733 0))(
  ( (ElementMatch!20733 (c!1431442 C!41792)) (Concat!29578 (regOne!41978 Regex!20733) (regTwo!41978 Regex!20733)) (EmptyExpr!20733) (Star!20733 (reg!21062 Regex!20733)) (EmptyLang!20733) (Union!20733 (regOne!41979 Regex!20733) (regTwo!41979 Regex!20733)) )
))
(declare-fun lt!2670944 () Regex!20733)

(declare-datatypes ((List!73574 0))(
  ( (Nil!73450) (Cons!73450 (h!79898 C!41792) (t!388309 List!73574)) )
))
(declare-fun s!14904 () List!73574)

(declare-fun matchR!10195 (Regex!20733 List!73574) Bool)

(assert (=> b!7766631 (= res!3096218 (matchR!10195 lt!2670944 s!14904))))

(declare-fun b!7766632 () Bool)

(declare-fun e!4602211 () Bool)

(declare-fun tp!2281542 () Bool)

(declare-fun tp!2281541 () Bool)

(assert (=> b!7766632 (= e!4602211 (and tp!2281542 tp!2281541))))

(declare-fun b!7766633 () Bool)

(declare-fun e!4602209 () Bool)

(assert (=> b!7766633 (= e!4602209 (not true))))

(declare-fun lt!2670942 () Regex!20733)

(declare-datatypes ((tuple2!69832 0))(
  ( (tuple2!69833 (_1!38219 List!73574) (_2!38219 List!73574)) )
))
(declare-datatypes ((Option!17710 0))(
  ( (None!17709) (Some!17709 (v!54844 tuple2!69832)) )
))
(declare-fun isDefined!14322 (Option!17710) Bool)

(declare-fun findConcatSeparation!3740 (Regex!20733 Regex!20733 List!73574 List!73574 List!73574) Option!17710)

(assert (=> b!7766633 (isDefined!14322 (findConcatSeparation!3740 lt!2670942 lt!2670944 Nil!73450 (t!388309 s!14904) (t!388309 s!14904)))))

(declare-datatypes ((Unit!168428 0))(
  ( (Unit!168429) )
))
(declare-fun lt!2670943 () Unit!168428)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!330 (Regex!20733 Regex!20733 List!73574) Unit!168428)

(assert (=> b!7766633 (= lt!2670943 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!330 lt!2670942 lt!2670944 (t!388309 s!14904)))))

(declare-fun b!7766634 () Bool)

(assert (=> b!7766634 (= e!4602210 e!4602209)))

(declare-fun res!3096219 () Bool)

(assert (=> b!7766634 (=> (not res!3096219) (not e!4602209))))

(declare-fun derivativeStep!6078 (Regex!20733 C!41792) Regex!20733)

(assert (=> b!7766634 (= res!3096219 (= (derivativeStep!6078 lt!2670944 (h!79898 s!14904)) (Concat!29578 lt!2670942 lt!2670944)))))

(declare-fun r!25924 () Regex!20733)

(assert (=> b!7766634 (= lt!2670942 (derivativeStep!6078 r!25924 (h!79898 s!14904)))))

(declare-fun res!3096217 () Bool)

(assert (=> start!739788 (=> (not res!3096217) (not e!4602210))))

(declare-fun validRegex!11147 (Regex!20733) Bool)

(assert (=> start!739788 (= res!3096217 (validRegex!11147 lt!2670944))))

(assert (=> start!739788 (= lt!2670944 (Star!20733 r!25924))))

(assert (=> start!739788 e!4602210))

(assert (=> start!739788 e!4602211))

(declare-fun e!4602208 () Bool)

(assert (=> start!739788 e!4602208))

(declare-fun b!7766635 () Bool)

(declare-fun tp!2281545 () Bool)

(declare-fun tp!2281543 () Bool)

(assert (=> b!7766635 (= e!4602211 (and tp!2281545 tp!2281543))))

(declare-fun b!7766636 () Bool)

(declare-fun tp!2281544 () Bool)

(assert (=> b!7766636 (= e!4602211 tp!2281544)))

(declare-fun b!7766637 () Bool)

(declare-fun res!3096220 () Bool)

(assert (=> b!7766637 (=> (not res!3096220) (not e!4602210))))

(get-info :version)

(assert (=> b!7766637 (= res!3096220 ((_ is Cons!73450) s!14904))))

(declare-fun b!7766638 () Bool)

(declare-fun tp_is_empty!51821 () Bool)

(assert (=> b!7766638 (= e!4602211 tp_is_empty!51821)))

(declare-fun b!7766639 () Bool)

(declare-fun tp!2281540 () Bool)

(assert (=> b!7766639 (= e!4602208 (and tp_is_empty!51821 tp!2281540))))

(assert (= (and start!739788 res!3096217) b!7766631))

(assert (= (and b!7766631 res!3096218) b!7766637))

(assert (= (and b!7766637 res!3096220) b!7766634))

(assert (= (and b!7766634 res!3096219) b!7766633))

(assert (= (and start!739788 ((_ is ElementMatch!20733) r!25924)) b!7766638))

(assert (= (and start!739788 ((_ is Concat!29578) r!25924)) b!7766632))

(assert (= (and start!739788 ((_ is Star!20733) r!25924)) b!7766636))

(assert (= (and start!739788 ((_ is Union!20733) r!25924)) b!7766635))

(assert (= (and start!739788 ((_ is Cons!73450) s!14904)) b!7766639))

(declare-fun m!8222900 () Bool)

(assert (=> b!7766631 m!8222900))

(declare-fun m!8222902 () Bool)

(assert (=> b!7766633 m!8222902))

(assert (=> b!7766633 m!8222902))

(declare-fun m!8222904 () Bool)

(assert (=> b!7766633 m!8222904))

(declare-fun m!8222906 () Bool)

(assert (=> b!7766633 m!8222906))

(declare-fun m!8222908 () Bool)

(assert (=> b!7766634 m!8222908))

(declare-fun m!8222910 () Bool)

(assert (=> b!7766634 m!8222910))

(declare-fun m!8222912 () Bool)

(assert (=> start!739788 m!8222912))

(check-sat (not b!7766632) (not b!7766633) (not start!739788) tp_is_empty!51821 (not b!7766634) (not b!7766636) (not b!7766631) (not b!7766635) (not b!7766639))
(check-sat)
