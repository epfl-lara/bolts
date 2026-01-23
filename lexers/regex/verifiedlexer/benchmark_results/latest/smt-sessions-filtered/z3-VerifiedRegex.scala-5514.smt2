; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!278034 () Bool)

(assert start!278034)

(declare-fun b!2856342 () Bool)

(assert (=> b!2856342 true))

(assert (=> b!2856342 true))

(declare-fun e!1809012 () Bool)

(assert (=> b!2856342 (= e!1809012 (not true))))

(declare-fun e!1809013 () Bool)

(assert (=> b!2856342 e!1809013))

(declare-fun res!1186612 () Bool)

(assert (=> b!2856342 (=> (not res!1186612) (not e!1809013))))

(declare-fun lambda!105043 () Int)

(declare-fun Exists!1289 (Int) Bool)

(assert (=> b!2856342 (= res!1186612 (Exists!1289 lambda!105043))))

(declare-datatypes ((Unit!47709 0))(
  ( (Unit!47710) )
))
(declare-fun lt!1013998 () Unit!47709)

(declare-datatypes ((C!17348 0))(
  ( (C!17349 (val!10708 Int)) )
))
(declare-datatypes ((Regex!8583 0))(
  ( (ElementMatch!8583 (c!460292 C!17348)) (Concat!13904 (regOne!17678 Regex!8583) (regTwo!17678 Regex!8583)) (EmptyExpr!8583) (Star!8583 (reg!8912 Regex!8583)) (EmptyLang!8583) (Union!8583 (regOne!17679 Regex!8583) (regTwo!17679 Regex!8583)) )
))
(declare-fun lt!1013999 () Regex!8583)

(declare-datatypes ((List!34180 0))(
  ( (Nil!34056) (Cons!34056 (h!39476 C!17348) (t!233211 List!34180)) )
))
(declare-fun prefix!1470 () List!34180)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!337 (Regex!8583 List!34180) Unit!47709)

(assert (=> b!2856342 (= lt!1013998 (lemmaPrefixMatchThenExistsStringThatMatches!337 lt!1013999 (t!233211 prefix!1470)))))

(declare-fun r!23423 () Regex!8583)

(declare-fun derivativeStep!2272 (Regex!8583 C!17348) Regex!8583)

(assert (=> b!2856342 (= lt!1013999 (derivativeStep!2272 r!23423 (h!39476 prefix!1470)))))

(declare-fun b!2856343 () Bool)

(declare-fun e!1809011 () Bool)

(declare-fun tp_is_empty!14903 () Bool)

(declare-fun tp!919248 () Bool)

(assert (=> b!2856343 (= e!1809011 (and tp_is_empty!14903 tp!919248))))

(declare-fun b!2856344 () Bool)

(declare-fun e!1809014 () Bool)

(assert (=> b!2856344 (= e!1809014 tp_is_empty!14903)))

(declare-fun b!2856345 () Bool)

(declare-fun tp!919245 () Bool)

(declare-fun tp!919247 () Bool)

(assert (=> b!2856345 (= e!1809014 (and tp!919245 tp!919247))))

(declare-fun b!2856347 () Bool)

(declare-fun tp!919244 () Bool)

(assert (=> b!2856347 (= e!1809014 tp!919244)))

(declare-fun b!2856348 () Bool)

(declare-fun res!1186609 () Bool)

(assert (=> b!2856348 (=> (not res!1186609) (not e!1809012))))

(get-info :version)

(assert (=> b!2856348 (= res!1186609 (not ((_ is Nil!34056) prefix!1470)))))

(declare-fun b!2856349 () Bool)

(declare-fun res!1186611 () Bool)

(assert (=> b!2856349 (=> (not res!1186611) (not e!1809012))))

(declare-fun prefixMatch!891 (Regex!8583 List!34180) Bool)

(assert (=> b!2856349 (= res!1186611 (prefixMatch!891 r!23423 prefix!1470))))

(declare-fun b!2856350 () Bool)

(assert (=> b!2856350 (= e!1809013 (Exists!1289 lambda!105043))))

(declare-fun res!1186610 () Bool)

(assert (=> start!278034 (=> (not res!1186610) (not e!1809012))))

(declare-fun validRegex!3453 (Regex!8583) Bool)

(assert (=> start!278034 (= res!1186610 (validRegex!3453 r!23423))))

(assert (=> start!278034 e!1809012))

(assert (=> start!278034 e!1809014))

(assert (=> start!278034 e!1809011))

(declare-fun b!2856346 () Bool)

(declare-fun tp!919246 () Bool)

(declare-fun tp!919243 () Bool)

(assert (=> b!2856346 (= e!1809014 (and tp!919246 tp!919243))))

(assert (= (and start!278034 res!1186610) b!2856349))

(assert (= (and b!2856349 res!1186611) b!2856348))

(assert (= (and b!2856348 res!1186609) b!2856342))

(assert (= (and b!2856342 res!1186612) b!2856350))

(assert (= (and start!278034 ((_ is ElementMatch!8583) r!23423)) b!2856344))

(assert (= (and start!278034 ((_ is Concat!13904) r!23423)) b!2856345))

(assert (= (and start!278034 ((_ is Star!8583) r!23423)) b!2856347))

(assert (= (and start!278034 ((_ is Union!8583) r!23423)) b!2856346))

(assert (= (and start!278034 ((_ is Cons!34056) prefix!1470)) b!2856343))

(declare-fun m!3278863 () Bool)

(assert (=> b!2856342 m!3278863))

(declare-fun m!3278865 () Bool)

(assert (=> b!2856342 m!3278865))

(declare-fun m!3278867 () Bool)

(assert (=> b!2856342 m!3278867))

(declare-fun m!3278869 () Bool)

(assert (=> b!2856349 m!3278869))

(assert (=> b!2856350 m!3278863))

(declare-fun m!3278871 () Bool)

(assert (=> start!278034 m!3278871))

(check-sat (not b!2856347) tp_is_empty!14903 (not b!2856350) (not b!2856346) (not b!2856349) (not start!278034) (not b!2856342) (not b!2856343) (not b!2856345))
(check-sat)
