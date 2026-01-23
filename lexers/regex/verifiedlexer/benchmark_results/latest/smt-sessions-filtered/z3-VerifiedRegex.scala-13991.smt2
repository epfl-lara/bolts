; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740210 () Bool)

(assert start!740210)

(declare-fun b!7774297 () Bool)

(declare-fun e!4605935 () Bool)

(declare-fun e!4605931 () Bool)

(assert (=> b!7774297 (= e!4605935 e!4605931)))

(declare-fun res!3098861 () Bool)

(assert (=> b!7774297 (=> (not res!3098861) (not e!4605931))))

(declare-datatypes ((C!41880 0))(
  ( (C!41881 (val!31380 Int)) )
))
(declare-datatypes ((Regex!20777 0))(
  ( (ElementMatch!20777 (c!1432786 C!41880)) (Concat!29622 (regOne!42066 Regex!20777) (regTwo!42066 Regex!20777)) (EmptyExpr!20777) (Star!20777 (reg!21106 Regex!20777)) (EmptyLang!20777) (Union!20777 (regOne!42067 Regex!20777) (regTwo!42067 Regex!20777)) )
))
(declare-fun lt!2671732 () Regex!20777)

(declare-datatypes ((List!73616 0))(
  ( (Nil!73492) (Cons!73492 (h!79940 C!41880) (t!388351 List!73616)) )
))
(declare-fun s!14292 () List!73616)

(declare-fun matchR!10237 (Regex!20777 List!73616) Bool)

(assert (=> b!7774297 (= res!3098861 (matchR!10237 lt!2671732 s!14292))))

(declare-fun r1!6279 () Regex!20777)

(declare-fun r2!6217 () Regex!20777)

(assert (=> b!7774297 (= lt!2671732 (Concat!29622 r1!6279 r2!6217))))

(declare-fun b!7774298 () Bool)

(declare-fun e!4605934 () Bool)

(declare-fun tp_is_empty!51909 () Bool)

(assert (=> b!7774298 (= e!4605934 tp_is_empty!51909)))

(declare-fun b!7774299 () Bool)

(declare-fun tp!2284370 () Bool)

(assert (=> b!7774299 (= e!4605934 tp!2284370)))

(declare-fun b!7774300 () Bool)

(declare-fun tp!2284377 () Bool)

(declare-fun tp!2284375 () Bool)

(assert (=> b!7774300 (= e!4605934 (and tp!2284377 tp!2284375))))

(declare-fun b!7774301 () Bool)

(assert (=> b!7774301 (= e!4605931 false)))

(declare-fun lt!2671733 () Regex!20777)

(declare-fun derivativeStep!6120 (Regex!20777 C!41880) Regex!20777)

(assert (=> b!7774301 (= lt!2671733 (derivativeStep!6120 r2!6217 (h!79940 s!14292)))))

(declare-fun lt!2671734 () Regex!20777)

(assert (=> b!7774301 (= lt!2671734 (derivativeStep!6120 r1!6279 (h!79940 s!14292)))))

(declare-fun b!7774302 () Bool)

(declare-fun e!4605933 () Bool)

(assert (=> b!7774302 (= e!4605933 tp_is_empty!51909)))

(declare-fun b!7774303 () Bool)

(declare-fun res!3098865 () Bool)

(assert (=> b!7774303 (=> (not res!3098865) (not e!4605935))))

(declare-fun validRegex!11191 (Regex!20777) Bool)

(assert (=> b!7774303 (= res!3098865 (validRegex!11191 r2!6217))))

(declare-fun b!7774304 () Bool)

(declare-fun tp!2284379 () Bool)

(declare-fun tp!2284373 () Bool)

(assert (=> b!7774304 (= e!4605934 (and tp!2284379 tp!2284373))))

(declare-fun b!7774305 () Bool)

(declare-fun res!3098863 () Bool)

(assert (=> b!7774305 (=> (not res!3098863) (not e!4605931))))

(declare-fun nullable!9165 (Regex!20777) Bool)

(assert (=> b!7774305 (= res!3098863 (nullable!9165 r1!6279))))

(declare-fun res!3098864 () Bool)

(assert (=> start!740210 (=> (not res!3098864) (not e!4605935))))

(assert (=> start!740210 (= res!3098864 (validRegex!11191 r1!6279))))

(assert (=> start!740210 e!4605935))

(assert (=> start!740210 e!4605933))

(assert (=> start!740210 e!4605934))

(declare-fun e!4605932 () Bool)

(assert (=> start!740210 e!4605932))

(declare-fun b!7774306 () Bool)

(declare-fun tp!2284371 () Bool)

(assert (=> b!7774306 (= e!4605932 (and tp_is_empty!51909 tp!2284371))))

(declare-fun b!7774307 () Bool)

(declare-fun res!3098866 () Bool)

(assert (=> b!7774307 (=> (not res!3098866) (not e!4605931))))

(get-info :version)

(assert (=> b!7774307 (= res!3098866 ((_ is Cons!73492) s!14292))))

(declare-fun b!7774308 () Bool)

(declare-fun tp!2284376 () Bool)

(declare-fun tp!2284374 () Bool)

(assert (=> b!7774308 (= e!4605933 (and tp!2284376 tp!2284374))))

(declare-fun b!7774309 () Bool)

(declare-fun tp!2284378 () Bool)

(declare-fun tp!2284369 () Bool)

(assert (=> b!7774309 (= e!4605933 (and tp!2284378 tp!2284369))))

(declare-fun b!7774310 () Bool)

(declare-fun tp!2284372 () Bool)

(assert (=> b!7774310 (= e!4605933 tp!2284372)))

(declare-fun b!7774311 () Bool)

(declare-fun res!3098862 () Bool)

(assert (=> b!7774311 (=> (not res!3098862) (not e!4605931))))

(assert (=> b!7774311 (= res!3098862 (matchR!10237 (derivativeStep!6120 lt!2671732 (h!79940 s!14292)) (t!388351 s!14292)))))

(assert (= (and start!740210 res!3098864) b!7774303))

(assert (= (and b!7774303 res!3098865) b!7774297))

(assert (= (and b!7774297 res!3098861) b!7774307))

(assert (= (and b!7774307 res!3098866) b!7774311))

(assert (= (and b!7774311 res!3098862) b!7774305))

(assert (= (and b!7774305 res!3098863) b!7774301))

(assert (= (and start!740210 ((_ is ElementMatch!20777) r1!6279)) b!7774302))

(assert (= (and start!740210 ((_ is Concat!29622) r1!6279)) b!7774308))

(assert (= (and start!740210 ((_ is Star!20777) r1!6279)) b!7774310))

(assert (= (and start!740210 ((_ is Union!20777) r1!6279)) b!7774309))

(assert (= (and start!740210 ((_ is ElementMatch!20777) r2!6217)) b!7774298))

(assert (= (and start!740210 ((_ is Concat!29622) r2!6217)) b!7774304))

(assert (= (and start!740210 ((_ is Star!20777) r2!6217)) b!7774299))

(assert (= (and start!740210 ((_ is Union!20777) r2!6217)) b!7774300))

(assert (= (and start!740210 ((_ is Cons!73492) s!14292)) b!7774306))

(declare-fun m!8226126 () Bool)

(assert (=> b!7774305 m!8226126))

(declare-fun m!8226128 () Bool)

(assert (=> start!740210 m!8226128))

(declare-fun m!8226130 () Bool)

(assert (=> b!7774297 m!8226130))

(declare-fun m!8226132 () Bool)

(assert (=> b!7774301 m!8226132))

(declare-fun m!8226134 () Bool)

(assert (=> b!7774301 m!8226134))

(declare-fun m!8226136 () Bool)

(assert (=> b!7774311 m!8226136))

(assert (=> b!7774311 m!8226136))

(declare-fun m!8226138 () Bool)

(assert (=> b!7774311 m!8226138))

(declare-fun m!8226140 () Bool)

(assert (=> b!7774303 m!8226140))

(check-sat tp_is_empty!51909 (not b!7774297) (not b!7774308) (not b!7774305) (not b!7774311) (not start!740210) (not b!7774301) (not b!7774309) (not b!7774299) (not b!7774306) (not b!7774310) (not b!7774300) (not b!7774304) (not b!7774303))
(check-sat)
