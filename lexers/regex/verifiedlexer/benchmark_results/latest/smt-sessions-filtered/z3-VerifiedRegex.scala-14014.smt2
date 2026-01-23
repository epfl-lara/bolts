; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740518 () Bool)

(assert start!740518)

(declare-fun b!7780674 () Bool)

(declare-fun res!3101420 () Bool)

(declare-fun e!4609080 () Bool)

(assert (=> b!7780674 (=> (not res!3101420) (not e!4609080))))

(declare-datatypes ((C!41972 0))(
  ( (C!41973 (val!31426 Int)) )
))
(declare-datatypes ((List!73662 0))(
  ( (Nil!73538) (Cons!73538 (h!79986 C!41972) (t!388397 List!73662)) )
))
(declare-fun s!14292 () List!73662)

(get-info :version)

(assert (=> b!7780674 (= res!3101420 ((_ is Cons!73538) s!14292))))

(declare-fun res!3101418 () Bool)

(declare-fun e!4609081 () Bool)

(assert (=> start!740518 (=> (not res!3101418) (not e!4609081))))

(declare-datatypes ((Regex!20823 0))(
  ( (ElementMatch!20823 (c!1433684 C!41972)) (Concat!29668 (regOne!42158 Regex!20823) (regTwo!42158 Regex!20823)) (EmptyExpr!20823) (Star!20823 (reg!21152 Regex!20823)) (EmptyLang!20823) (Union!20823 (regOne!42159 Regex!20823) (regTwo!42159 Regex!20823)) )
))
(declare-fun r1!6279 () Regex!20823)

(declare-fun validRegex!11237 (Regex!20823) Bool)

(assert (=> start!740518 (= res!3101418 (validRegex!11237 r1!6279))))

(assert (=> start!740518 e!4609081))

(declare-fun e!4609078 () Bool)

(assert (=> start!740518 e!4609078))

(declare-fun e!4609075 () Bool)

(assert (=> start!740518 e!4609075))

(declare-fun e!4609076 () Bool)

(assert (=> start!740518 e!4609076))

(declare-fun b!7780675 () Bool)

(declare-fun tp!2286900 () Bool)

(declare-fun tp!2286905 () Bool)

(assert (=> b!7780675 (= e!4609078 (and tp!2286900 tp!2286905))))

(declare-fun b!7780676 () Bool)

(declare-fun e!4609077 () Bool)

(declare-fun e!4609074 () Bool)

(assert (=> b!7780676 (= e!4609077 (not e!4609074))))

(declare-fun res!3101417 () Bool)

(assert (=> b!7780676 (=> res!3101417 e!4609074)))

(declare-fun lt!2672929 () Bool)

(assert (=> b!7780676 (= res!3101417 (not lt!2672929))))

(declare-fun derivative!551 (Regex!20823 List!73662) Regex!20823)

(assert (=> b!7780676 (= (derivative!551 EmptyLang!20823 (t!388397 s!14292)) EmptyLang!20823)))

(declare-datatypes ((Unit!168536 0))(
  ( (Unit!168537) )
))
(declare-fun lt!2672926 () Unit!168536)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!86 (Regex!20823 List!73662) Unit!168536)

(assert (=> b!7780676 (= lt!2672926 (lemmaEmptyLangDerivativeIsAFixPoint!86 EmptyLang!20823 (t!388397 s!14292)))))

(declare-fun e!4609073 () Bool)

(assert (=> b!7780676 e!4609073))

(declare-fun res!3101412 () Bool)

(assert (=> b!7780676 (=> res!3101412 e!4609073)))

(assert (=> b!7780676 (= res!3101412 lt!2672929)))

(declare-fun lt!2672925 () Regex!20823)

(declare-fun matchR!10283 (Regex!20823 List!73662) Bool)

(assert (=> b!7780676 (= lt!2672929 (matchR!10283 lt!2672925 (t!388397 s!14292)))))

(declare-fun lt!2672924 () Unit!168536)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!392 (Regex!20823 Regex!20823 List!73662) Unit!168536)

(assert (=> b!7780676 (= lt!2672924 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!392 lt!2672925 EmptyLang!20823 (t!388397 s!14292)))))

(declare-fun b!7780677 () Bool)

(declare-fun res!3101415 () Bool)

(assert (=> b!7780677 (=> (not res!3101415) (not e!4609081))))

(declare-fun r2!6217 () Regex!20823)

(assert (=> b!7780677 (= res!3101415 (validRegex!11237 r2!6217))))

(declare-fun b!7780678 () Bool)

(assert (=> b!7780678 (= e!4609081 e!4609080)))

(declare-fun res!3101414 () Bool)

(assert (=> b!7780678 (=> (not res!3101414) (not e!4609080))))

(declare-fun lt!2672927 () Regex!20823)

(assert (=> b!7780678 (= res!3101414 (matchR!10283 lt!2672927 s!14292))))

(assert (=> b!7780678 (= lt!2672927 (Concat!29668 r1!6279 r2!6217))))

(declare-fun b!7780679 () Bool)

(declare-fun tp!2286897 () Bool)

(assert (=> b!7780679 (= e!4609075 tp!2286897)))

(declare-fun b!7780680 () Bool)

(declare-fun tp!2286901 () Bool)

(declare-fun tp!2286902 () Bool)

(assert (=> b!7780680 (= e!4609075 (and tp!2286901 tp!2286902))))

(declare-fun b!7780681 () Bool)

(declare-fun tp_is_empty!52001 () Bool)

(declare-fun tp!2286898 () Bool)

(assert (=> b!7780681 (= e!4609076 (and tp_is_empty!52001 tp!2286898))))

(declare-fun b!7780682 () Bool)

(declare-fun tp!2286895 () Bool)

(declare-fun tp!2286899 () Bool)

(assert (=> b!7780682 (= e!4609078 (and tp!2286895 tp!2286899))))

(declare-fun b!7780683 () Bool)

(assert (=> b!7780683 (= e!4609074 true)))

(declare-fun lt!2672923 () Regex!20823)

(declare-datatypes ((tuple2!69900 0))(
  ( (tuple2!69901 (_1!38253 List!73662) (_2!38253 List!73662)) )
))
(declare-datatypes ((Option!17744 0))(
  ( (None!17743) (Some!17743 (v!54878 tuple2!69900)) )
))
(declare-fun isDefined!14356 (Option!17744) Bool)

(declare-fun findConcatSeparation!3774 (Regex!20823 Regex!20823 List!73662 List!73662 List!73662) Option!17744)

(assert (=> b!7780683 (isDefined!14356 (findConcatSeparation!3774 lt!2672923 r2!6217 Nil!73538 (t!388397 s!14292) (t!388397 s!14292)))))

(declare-fun lt!2672928 () Unit!168536)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!364 (Regex!20823 Regex!20823 List!73662) Unit!168536)

(assert (=> b!7780683 (= lt!2672928 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!364 lt!2672923 r2!6217 (t!388397 s!14292)))))

(declare-fun b!7780684 () Bool)

(declare-fun tp!2286903 () Bool)

(assert (=> b!7780684 (= e!4609078 tp!2286903)))

(declare-fun b!7780685 () Bool)

(declare-fun tp!2286896 () Bool)

(declare-fun tp!2286904 () Bool)

(assert (=> b!7780685 (= e!4609075 (and tp!2286896 tp!2286904))))

(declare-fun b!7780686 () Bool)

(assert (=> b!7780686 (= e!4609078 tp_is_empty!52001)))

(declare-fun b!7780687 () Bool)

(declare-fun e!4609079 () Bool)

(assert (=> b!7780687 (= e!4609080 e!4609079)))

(declare-fun res!3101416 () Bool)

(assert (=> b!7780687 (=> (not res!3101416) (not e!4609079))))

(declare-fun lt!2672930 () Regex!20823)

(assert (=> b!7780687 (= res!3101416 (matchR!10283 lt!2672930 (t!388397 s!14292)))))

(declare-fun derivativeStep!6166 (Regex!20823 C!41972) Regex!20823)

(assert (=> b!7780687 (= lt!2672930 (derivativeStep!6166 lt!2672927 (h!79986 s!14292)))))

(declare-fun b!7780688 () Bool)

(assert (=> b!7780688 (= e!4609075 tp_is_empty!52001)))

(declare-fun b!7780689 () Bool)

(assert (=> b!7780689 (= e!4609079 e!4609077)))

(declare-fun res!3101413 () Bool)

(assert (=> b!7780689 (=> (not res!3101413) (not e!4609077))))

(assert (=> b!7780689 (= res!3101413 (= lt!2672930 (Union!20823 lt!2672925 EmptyLang!20823)))))

(assert (=> b!7780689 (= lt!2672925 (Concat!29668 lt!2672923 r2!6217))))

(assert (=> b!7780689 (= lt!2672923 (derivativeStep!6166 r1!6279 (h!79986 s!14292)))))

(declare-fun b!7780690 () Bool)

(declare-fun res!3101419 () Bool)

(assert (=> b!7780690 (=> (not res!3101419) (not e!4609079))))

(declare-fun nullable!9211 (Regex!20823) Bool)

(assert (=> b!7780690 (= res!3101419 (not (nullable!9211 r1!6279)))))

(declare-fun b!7780691 () Bool)

(assert (=> b!7780691 (= e!4609073 (matchR!10283 EmptyLang!20823 (t!388397 s!14292)))))

(assert (= (and start!740518 res!3101418) b!7780677))

(assert (= (and b!7780677 res!3101415) b!7780678))

(assert (= (and b!7780678 res!3101414) b!7780674))

(assert (= (and b!7780674 res!3101420) b!7780687))

(assert (= (and b!7780687 res!3101416) b!7780690))

(assert (= (and b!7780690 res!3101419) b!7780689))

(assert (= (and b!7780689 res!3101413) b!7780676))

(assert (= (and b!7780676 (not res!3101412)) b!7780691))

(assert (= (and b!7780676 (not res!3101417)) b!7780683))

(assert (= (and start!740518 ((_ is ElementMatch!20823) r1!6279)) b!7780686))

(assert (= (and start!740518 ((_ is Concat!29668) r1!6279)) b!7780675))

(assert (= (and start!740518 ((_ is Star!20823) r1!6279)) b!7780684))

(assert (= (and start!740518 ((_ is Union!20823) r1!6279)) b!7780682))

(assert (= (and start!740518 ((_ is ElementMatch!20823) r2!6217)) b!7780688))

(assert (= (and start!740518 ((_ is Concat!29668) r2!6217)) b!7780680))

(assert (= (and start!740518 ((_ is Star!20823) r2!6217)) b!7780679))

(assert (= (and start!740518 ((_ is Union!20823) r2!6217)) b!7780685))

(assert (= (and start!740518 ((_ is Cons!73538) s!14292)) b!7780681))

(declare-fun m!8228924 () Bool)

(assert (=> b!7780687 m!8228924))

(declare-fun m!8228926 () Bool)

(assert (=> b!7780687 m!8228926))

(declare-fun m!8228928 () Bool)

(assert (=> b!7780691 m!8228928))

(declare-fun m!8228930 () Bool)

(assert (=> b!7780677 m!8228930))

(declare-fun m!8228932 () Bool)

(assert (=> b!7780683 m!8228932))

(assert (=> b!7780683 m!8228932))

(declare-fun m!8228934 () Bool)

(assert (=> b!7780683 m!8228934))

(declare-fun m!8228936 () Bool)

(assert (=> b!7780683 m!8228936))

(declare-fun m!8228938 () Bool)

(assert (=> b!7780690 m!8228938))

(declare-fun m!8228940 () Bool)

(assert (=> b!7780689 m!8228940))

(declare-fun m!8228942 () Bool)

(assert (=> b!7780678 m!8228942))

(declare-fun m!8228944 () Bool)

(assert (=> start!740518 m!8228944))

(declare-fun m!8228946 () Bool)

(assert (=> b!7780676 m!8228946))

(declare-fun m!8228948 () Bool)

(assert (=> b!7780676 m!8228948))

(declare-fun m!8228950 () Bool)

(assert (=> b!7780676 m!8228950))

(declare-fun m!8228952 () Bool)

(assert (=> b!7780676 m!8228952))

(check-sat (not b!7780682) (not b!7780675) (not b!7780676) (not b!7780679) (not b!7780685) (not b!7780681) (not b!7780690) (not b!7780677) (not b!7780680) (not start!740518) tp_is_empty!52001 (not b!7780678) (not b!7780689) (not b!7780683) (not b!7780687) (not b!7780691) (not b!7780684))
(check-sat)
