; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740470 () Bool)

(assert start!740470)

(declare-fun b!7779932 () Bool)

(declare-fun res!3101123 () Bool)

(declare-fun e!4608700 () Bool)

(assert (=> b!7779932 (=> (not res!3101123) (not e!4608700))))

(declare-datatypes ((C!41964 0))(
  ( (C!41965 (val!31422 Int)) )
))
(declare-datatypes ((Regex!20819 0))(
  ( (ElementMatch!20819 (c!1433566 C!41964)) (Concat!29664 (regOne!42150 Regex!20819) (regTwo!42150 Regex!20819)) (EmptyExpr!20819) (Star!20819 (reg!21148 Regex!20819)) (EmptyLang!20819) (Union!20819 (regOne!42151 Regex!20819) (regTwo!42151 Regex!20819)) )
))
(declare-fun r2!6217 () Regex!20819)

(declare-fun validRegex!11233 (Regex!20819) Bool)

(assert (=> b!7779932 (= res!3101123 (validRegex!11233 r2!6217))))

(declare-fun b!7779933 () Bool)

(declare-fun e!4608701 () Bool)

(declare-fun tp!2286637 () Bool)

(assert (=> b!7779933 (= e!4608701 tp!2286637)))

(declare-fun res!3101121 () Bool)

(assert (=> start!740470 (=> (not res!3101121) (not e!4608700))))

(declare-fun r1!6279 () Regex!20819)

(assert (=> start!740470 (= res!3101121 (validRegex!11233 r1!6279))))

(assert (=> start!740470 e!4608700))

(declare-fun e!4608696 () Bool)

(assert (=> start!740470 e!4608696))

(assert (=> start!740470 e!4608701))

(declare-fun e!4608698 () Bool)

(assert (=> start!740470 e!4608698))

(declare-fun b!7779934 () Bool)

(declare-fun tp!2286647 () Bool)

(assert (=> b!7779934 (= e!4608696 tp!2286647)))

(declare-fun b!7779935 () Bool)

(declare-fun tp_is_empty!51993 () Bool)

(declare-fun tp!2286643 () Bool)

(assert (=> b!7779935 (= e!4608698 (and tp_is_empty!51993 tp!2286643))))

(declare-fun b!7779936 () Bool)

(declare-fun tp!2286644 () Bool)

(declare-fun tp!2286646 () Bool)

(assert (=> b!7779936 (= e!4608696 (and tp!2286644 tp!2286646))))

(declare-fun b!7779937 () Bool)

(declare-fun e!4608697 () Bool)

(declare-fun e!4608695 () Bool)

(assert (=> b!7779937 (= e!4608697 (not e!4608695))))

(declare-fun res!3101118 () Bool)

(assert (=> b!7779937 (=> res!3101118 e!4608695)))

(declare-fun lt!2672766 () Bool)

(assert (=> b!7779937 (= res!3101118 (not lt!2672766))))

(declare-datatypes ((List!73658 0))(
  ( (Nil!73534) (Cons!73534 (h!79982 C!41964) (t!388393 List!73658)) )
))
(declare-fun s!14292 () List!73658)

(declare-fun derivative!547 (Regex!20819 List!73658) Regex!20819)

(assert (=> b!7779937 (= (derivative!547 EmptyLang!20819 (t!388393 s!14292)) EmptyLang!20819)))

(declare-datatypes ((Unit!168528 0))(
  ( (Unit!168529) )
))
(declare-fun lt!2672767 () Unit!168528)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!82 (Regex!20819 List!73658) Unit!168528)

(assert (=> b!7779937 (= lt!2672767 (lemmaEmptyLangDerivativeIsAFixPoint!82 EmptyLang!20819 (t!388393 s!14292)))))

(declare-fun e!4608694 () Bool)

(assert (=> b!7779937 e!4608694))

(declare-fun res!3101122 () Bool)

(assert (=> b!7779937 (=> res!3101122 e!4608694)))

(assert (=> b!7779937 (= res!3101122 lt!2672766)))

(declare-fun lt!2672768 () Regex!20819)

(declare-fun matchR!10279 (Regex!20819 List!73658) Bool)

(assert (=> b!7779937 (= lt!2672766 (matchR!10279 lt!2672768 (t!388393 s!14292)))))

(declare-fun lt!2672772 () Unit!168528)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!388 (Regex!20819 Regex!20819 List!73658) Unit!168528)

(assert (=> b!7779937 (= lt!2672772 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!388 lt!2672768 EmptyLang!20819 (t!388393 s!14292)))))

(declare-fun b!7779938 () Bool)

(declare-fun res!3101116 () Bool)

(declare-fun e!4608693 () Bool)

(assert (=> b!7779938 (=> (not res!3101116) (not e!4608693))))

(get-info :version)

(assert (=> b!7779938 (= res!3101116 ((_ is Cons!73534) s!14292))))

(declare-fun b!7779939 () Bool)

(assert (=> b!7779939 (= e!4608696 tp_is_empty!51993)))

(declare-fun b!7779940 () Bool)

(declare-fun e!4608699 () Bool)

(assert (=> b!7779940 (= e!4608693 e!4608699)))

(declare-fun res!3101119 () Bool)

(assert (=> b!7779940 (=> (not res!3101119) (not e!4608699))))

(declare-fun lt!2672771 () Regex!20819)

(assert (=> b!7779940 (= res!3101119 (matchR!10279 lt!2672771 (t!388393 s!14292)))))

(declare-fun lt!2672770 () Regex!20819)

(declare-fun derivativeStep!6162 (Regex!20819 C!41964) Regex!20819)

(assert (=> b!7779940 (= lt!2672771 (derivativeStep!6162 lt!2672770 (h!79982 s!14292)))))

(declare-fun b!7779941 () Bool)

(declare-fun tp!2286638 () Bool)

(declare-fun tp!2286639 () Bool)

(assert (=> b!7779941 (= e!4608696 (and tp!2286638 tp!2286639))))

(declare-fun b!7779942 () Bool)

(assert (=> b!7779942 (= e!4608701 tp_is_empty!51993)))

(declare-fun b!7779943 () Bool)

(assert (=> b!7779943 (= e!4608695 true)))

(declare-fun lt!2672769 () Regex!20819)

(declare-datatypes ((tuple2!69892 0))(
  ( (tuple2!69893 (_1!38249 List!73658) (_2!38249 List!73658)) )
))
(declare-datatypes ((Option!17740 0))(
  ( (None!17739) (Some!17739 (v!54874 tuple2!69892)) )
))
(declare-fun isDefined!14352 (Option!17740) Bool)

(declare-fun findConcatSeparation!3770 (Regex!20819 Regex!20819 List!73658 List!73658 List!73658) Option!17740)

(assert (=> b!7779943 (isDefined!14352 (findConcatSeparation!3770 lt!2672769 r2!6217 Nil!73534 (t!388393 s!14292) (t!388393 s!14292)))))

(declare-fun lt!2672765 () Unit!168528)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!360 (Regex!20819 Regex!20819 List!73658) Unit!168528)

(assert (=> b!7779943 (= lt!2672765 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!360 lt!2672769 r2!6217 (t!388393 s!14292)))))

(declare-fun b!7779944 () Bool)

(assert (=> b!7779944 (= e!4608699 e!4608697)))

(declare-fun res!3101120 () Bool)

(assert (=> b!7779944 (=> (not res!3101120) (not e!4608697))))

(assert (=> b!7779944 (= res!3101120 (= lt!2672771 (Union!20819 lt!2672768 EmptyLang!20819)))))

(assert (=> b!7779944 (= lt!2672768 (Concat!29664 lt!2672769 r2!6217))))

(assert (=> b!7779944 (= lt!2672769 (derivativeStep!6162 r1!6279 (h!79982 s!14292)))))

(declare-fun b!7779945 () Bool)

(declare-fun res!3101124 () Bool)

(assert (=> b!7779945 (=> (not res!3101124) (not e!4608699))))

(declare-fun nullable!9207 (Regex!20819) Bool)

(assert (=> b!7779945 (= res!3101124 (not (nullable!9207 r1!6279)))))

(declare-fun b!7779946 () Bool)

(assert (=> b!7779946 (= e!4608700 e!4608693)))

(declare-fun res!3101117 () Bool)

(assert (=> b!7779946 (=> (not res!3101117) (not e!4608693))))

(assert (=> b!7779946 (= res!3101117 (matchR!10279 lt!2672770 s!14292))))

(assert (=> b!7779946 (= lt!2672770 (Concat!29664 r1!6279 r2!6217))))

(declare-fun b!7779947 () Bool)

(declare-fun tp!2286645 () Bool)

(declare-fun tp!2286641 () Bool)

(assert (=> b!7779947 (= e!4608701 (and tp!2286645 tp!2286641))))

(declare-fun b!7779948 () Bool)

(declare-fun tp!2286642 () Bool)

(declare-fun tp!2286640 () Bool)

(assert (=> b!7779948 (= e!4608701 (and tp!2286642 tp!2286640))))

(declare-fun b!7779949 () Bool)

(assert (=> b!7779949 (= e!4608694 (matchR!10279 EmptyLang!20819 (t!388393 s!14292)))))

(assert (= (and start!740470 res!3101121) b!7779932))

(assert (= (and b!7779932 res!3101123) b!7779946))

(assert (= (and b!7779946 res!3101117) b!7779938))

(assert (= (and b!7779938 res!3101116) b!7779940))

(assert (= (and b!7779940 res!3101119) b!7779945))

(assert (= (and b!7779945 res!3101124) b!7779944))

(assert (= (and b!7779944 res!3101120) b!7779937))

(assert (= (and b!7779937 (not res!3101122)) b!7779949))

(assert (= (and b!7779937 (not res!3101118)) b!7779943))

(assert (= (and start!740470 ((_ is ElementMatch!20819) r1!6279)) b!7779939))

(assert (= (and start!740470 ((_ is Concat!29664) r1!6279)) b!7779936))

(assert (= (and start!740470 ((_ is Star!20819) r1!6279)) b!7779934))

(assert (= (and start!740470 ((_ is Union!20819) r1!6279)) b!7779941))

(assert (= (and start!740470 ((_ is ElementMatch!20819) r2!6217)) b!7779942))

(assert (= (and start!740470 ((_ is Concat!29664) r2!6217)) b!7779948))

(assert (= (and start!740470 ((_ is Star!20819) r2!6217)) b!7779933))

(assert (= (and start!740470 ((_ is Union!20819) r2!6217)) b!7779947))

(assert (= (and start!740470 ((_ is Cons!73534) s!14292)) b!7779935))

(declare-fun m!8228560 () Bool)

(assert (=> b!7779944 m!8228560))

(declare-fun m!8228562 () Bool)

(assert (=> b!7779945 m!8228562))

(declare-fun m!8228564 () Bool)

(assert (=> b!7779932 m!8228564))

(declare-fun m!8228566 () Bool)

(assert (=> b!7779940 m!8228566))

(declare-fun m!8228568 () Bool)

(assert (=> b!7779940 m!8228568))

(declare-fun m!8228570 () Bool)

(assert (=> b!7779949 m!8228570))

(declare-fun m!8228572 () Bool)

(assert (=> b!7779937 m!8228572))

(declare-fun m!8228574 () Bool)

(assert (=> b!7779937 m!8228574))

(declare-fun m!8228576 () Bool)

(assert (=> b!7779937 m!8228576))

(declare-fun m!8228578 () Bool)

(assert (=> b!7779937 m!8228578))

(declare-fun m!8228580 () Bool)

(assert (=> b!7779946 m!8228580))

(declare-fun m!8228582 () Bool)

(assert (=> b!7779943 m!8228582))

(assert (=> b!7779943 m!8228582))

(declare-fun m!8228584 () Bool)

(assert (=> b!7779943 m!8228584))

(declare-fun m!8228586 () Bool)

(assert (=> b!7779943 m!8228586))

(declare-fun m!8228588 () Bool)

(assert (=> start!740470 m!8228588))

(check-sat (not b!7779933) (not b!7779941) (not b!7779943) (not b!7779934) (not b!7779946) (not b!7779937) (not b!7779936) (not b!7779948) (not b!7779944) (not b!7779947) (not b!7779940) tp_is_empty!51993 (not b!7779945) (not b!7779949) (not b!7779935) (not start!740470) (not b!7779932))
(check-sat)
