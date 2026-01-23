; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739332 () Bool)

(assert start!739332)

(declare-fun b!7759595 () Bool)

(assert (=> b!7759595 true))

(assert (=> b!7759595 true))

(assert (=> b!7759595 true))

(declare-fun b!7759587 () Bool)

(declare-fun e!4598997 () Bool)

(declare-fun tp_is_empty!51713 () Bool)

(declare-fun tp!2278335 () Bool)

(assert (=> b!7759587 (= e!4598997 (and tp_is_empty!51713 tp!2278335))))

(declare-fun b!7759588 () Bool)

(declare-fun res!3093479 () Bool)

(declare-fun e!4598994 () Bool)

(assert (=> b!7759588 (=> (not res!3093479) (not e!4598994))))

(declare-datatypes ((C!41684 0))(
  ( (C!41685 (val!31282 Int)) )
))
(declare-datatypes ((List!73522 0))(
  ( (Nil!73398) (Cons!73398 (h!79846 C!41684) (t!388257 List!73522)) )
))
(declare-datatypes ((tuple2!69744 0))(
  ( (tuple2!69745 (_1!38175 List!73522) (_2!38175 List!73522)) )
))
(declare-datatypes ((Option!17666 0))(
  ( (None!17665) (Some!17665 (v!54800 tuple2!69744)) )
))
(declare-fun lt!2670190 () Option!17666)

(declare-fun isEmpty!42062 (Option!17666) Bool)

(assert (=> b!7759588 (= res!3093479 (isEmpty!42062 lt!2670190))))

(declare-fun b!7759590 () Bool)

(declare-fun e!4598992 () Bool)

(declare-fun tp!2278340 () Bool)

(declare-fun tp!2278333 () Bool)

(assert (=> b!7759590 (= e!4598992 (and tp!2278340 tp!2278333))))

(declare-fun b!7759591 () Bool)

(declare-fun e!4598993 () Bool)

(assert (=> b!7759591 (= e!4598993 tp_is_empty!51713)))

(declare-fun b!7759592 () Bool)

(declare-fun res!3093481 () Bool)

(declare-fun e!4598991 () Bool)

(assert (=> b!7759592 (=> (not res!3093481) (not e!4598991))))

(declare-datatypes ((Regex!20679 0))(
  ( (ElementMatch!20679 (c!1430668 C!41684)) (Concat!29524 (regOne!41870 Regex!20679) (regTwo!41870 Regex!20679)) (EmptyExpr!20679) (Star!20679 (reg!21008 Regex!20679)) (EmptyLang!20679) (Union!20679 (regOne!41871 Regex!20679) (regTwo!41871 Regex!20679)) )
))
(declare-fun r2!3230 () Regex!20679)

(declare-fun validRegex!11095 (Regex!20679) Bool)

(assert (=> b!7759592 (= res!3093481 (validRegex!11095 r2!3230))))

(declare-fun b!7759593 () Bool)

(declare-fun res!3093480 () Bool)

(assert (=> b!7759593 (=> (not res!3093480) (not e!4598994))))

(declare-fun cut!25 () tuple2!69744)

(declare-fun s!10216 () List!73522)

(declare-fun ++!17856 (List!73522 List!73522) List!73522)

(assert (=> b!7759593 (= res!3093480 (= (++!17856 (_1!38175 cut!25) (_2!38175 cut!25)) s!10216))))

(declare-fun b!7759594 () Bool)

(declare-fun e!4598995 () Bool)

(declare-fun tp!2278331 () Bool)

(assert (=> b!7759594 (= e!4598995 (and tp_is_empty!51713 tp!2278331))))

(declare-fun res!3093483 () Bool)

(assert (=> b!7759595 (=> (not res!3093483) (not e!4598994))))

(declare-fun lambda!471969 () Int)

(declare-fun Exists!4725 (Int) Bool)

(assert (=> b!7759595 (= res!3093483 (Exists!4725 lambda!471969))))

(declare-fun b!7759596 () Bool)

(assert (=> b!7759596 (= e!4598991 e!4598994)))

(declare-fun res!3093484 () Bool)

(assert (=> b!7759596 (=> (not res!3093484) (not e!4598994))))

(declare-fun isDefined!14278 (Option!17666) Bool)

(assert (=> b!7759596 (= res!3093484 (not (isDefined!14278 lt!2670190)))))

(declare-fun r1!3330 () Regex!20679)

(declare-fun findConcatSeparation!3696 (Regex!20679 Regex!20679 List!73522 List!73522 List!73522) Option!17666)

(assert (=> b!7759596 (= lt!2670190 (findConcatSeparation!3696 r1!3330 r2!3230 Nil!73398 s!10216 s!10216))))

(declare-fun res!3093482 () Bool)

(assert (=> start!739332 (=> (not res!3093482) (not e!4598991))))

(assert (=> start!739332 (= res!3093482 (validRegex!11095 r1!3330))))

(assert (=> start!739332 e!4598991))

(assert (=> start!739332 e!4598992))

(assert (=> start!739332 e!4598993))

(declare-fun e!4598996 () Bool)

(assert (=> start!739332 (and e!4598997 e!4598996)))

(assert (=> start!739332 e!4598995))

(declare-fun b!7759589 () Bool)

(assert (=> b!7759589 (= e!4598994 false)))

(declare-fun lt!2670189 () Bool)

(declare-fun matchR!10151 (Regex!20679 List!73522) Bool)

(assert (=> b!7759589 (= lt!2670189 (matchR!10151 r1!3330 (_1!38175 cut!25)))))

(declare-fun b!7759597 () Bool)

(declare-fun tp!2278336 () Bool)

(declare-fun tp!2278339 () Bool)

(assert (=> b!7759597 (= e!4598992 (and tp!2278336 tp!2278339))))

(declare-fun b!7759598 () Bool)

(declare-fun tp!2278330 () Bool)

(declare-fun tp!2278334 () Bool)

(assert (=> b!7759598 (= e!4598993 (and tp!2278330 tp!2278334))))

(declare-fun b!7759599 () Bool)

(declare-fun tp!2278329 () Bool)

(assert (=> b!7759599 (= e!4598996 (and tp_is_empty!51713 tp!2278329))))

(declare-fun b!7759600 () Bool)

(declare-fun tp!2278332 () Bool)

(assert (=> b!7759600 (= e!4598992 tp!2278332)))

(declare-fun b!7759601 () Bool)

(assert (=> b!7759601 (= e!4598992 tp_is_empty!51713)))

(declare-fun b!7759602 () Bool)

(declare-fun tp!2278337 () Bool)

(declare-fun tp!2278341 () Bool)

(assert (=> b!7759602 (= e!4598993 (and tp!2278337 tp!2278341))))

(declare-fun b!7759603 () Bool)

(declare-fun tp!2278338 () Bool)

(assert (=> b!7759603 (= e!4598993 tp!2278338)))

(assert (= (and start!739332 res!3093482) b!7759592))

(assert (= (and b!7759592 res!3093481) b!7759596))

(assert (= (and b!7759596 res!3093484) b!7759588))

(assert (= (and b!7759588 res!3093479) b!7759595))

(assert (= (and b!7759595 res!3093483) b!7759593))

(assert (= (and b!7759593 res!3093480) b!7759589))

(get-info :version)

(assert (= (and start!739332 ((_ is ElementMatch!20679) r1!3330)) b!7759601))

(assert (= (and start!739332 ((_ is Concat!29524) r1!3330)) b!7759597))

(assert (= (and start!739332 ((_ is Star!20679) r1!3330)) b!7759600))

(assert (= (and start!739332 ((_ is Union!20679) r1!3330)) b!7759590))

(assert (= (and start!739332 ((_ is ElementMatch!20679) r2!3230)) b!7759591))

(assert (= (and start!739332 ((_ is Concat!29524) r2!3230)) b!7759602))

(assert (= (and start!739332 ((_ is Star!20679) r2!3230)) b!7759603))

(assert (= (and start!739332 ((_ is Union!20679) r2!3230)) b!7759598))

(assert (= (and start!739332 ((_ is Cons!73398) (_1!38175 cut!25))) b!7759587))

(assert (= (and start!739332 ((_ is Cons!73398) (_2!38175 cut!25))) b!7759599))

(assert (= (and start!739332 ((_ is Cons!73398) s!10216)) b!7759594))

(declare-fun m!8220234 () Bool)

(assert (=> start!739332 m!8220234))

(declare-fun m!8220236 () Bool)

(assert (=> b!7759589 m!8220236))

(declare-fun m!8220238 () Bool)

(assert (=> b!7759593 m!8220238))

(declare-fun m!8220240 () Bool)

(assert (=> b!7759588 m!8220240))

(declare-fun m!8220242 () Bool)

(assert (=> b!7759596 m!8220242))

(declare-fun m!8220244 () Bool)

(assert (=> b!7759596 m!8220244))

(declare-fun m!8220246 () Bool)

(assert (=> b!7759595 m!8220246))

(declare-fun m!8220248 () Bool)

(assert (=> b!7759592 m!8220248))

(check-sat tp_is_empty!51713 (not start!739332) (not b!7759597) (not b!7759589) (not b!7759587) (not b!7759588) (not b!7759598) (not b!7759590) (not b!7759594) (not b!7759596) (not b!7759600) (not b!7759595) (not b!7759599) (not b!7759602) (not b!7759592) (not b!7759603) (not b!7759593))
(check-sat)
