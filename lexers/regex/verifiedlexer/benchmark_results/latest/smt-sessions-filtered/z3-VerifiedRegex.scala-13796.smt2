; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734868 () Bool)

(assert start!734868)

(declare-fun b!7631645 () Bool)

(assert (=> b!7631645 true))

(assert (=> b!7631645 true))

(declare-fun b!7631639 () Bool)

(declare-fun e!4537043 () Bool)

(assert (=> b!7631639 (= e!4537043 true)))

(declare-datatypes ((C!41100 0))(
  ( (C!41101 (val!30990 Int)) )
))
(declare-datatypes ((List!73238 0))(
  ( (Nil!73114) (Cons!73114 (h!79562 C!41100) (t!387973 List!73238)) )
))
(declare-fun lt!2658845 () List!73238)

(declare-datatypes ((tuple2!69332 0))(
  ( (tuple2!69333 (_1!37969 List!73238) (_2!37969 List!73238)) )
))
(declare-fun lt!2658847 () tuple2!69332)

(declare-fun ++!17667 (List!73238 List!73238) List!73238)

(assert (=> b!7631639 (= lt!2658845 (++!17667 (_1!37969 lt!2658847) (_2!37969 lt!2658847)))))

(declare-fun b!7631640 () Bool)

(declare-fun e!4537039 () Bool)

(declare-fun tp_is_empty!51129 () Bool)

(assert (=> b!7631640 (= e!4537039 tp_is_empty!51129)))

(declare-fun b!7631641 () Bool)

(declare-fun tp!2228053 () Bool)

(assert (=> b!7631641 (= e!4537039 tp!2228053)))

(declare-fun b!7631642 () Bool)

(declare-fun res!3056308 () Bool)

(assert (=> b!7631642 (=> res!3056308 e!4537043)))

(declare-datatypes ((Regex!20387 0))(
  ( (ElementMatch!20387 (c!1405972 C!41100)) (Concat!29232 (regOne!41286 Regex!20387) (regTwo!41286 Regex!20387)) (EmptyExpr!20387) (Star!20387 (reg!20716 Regex!20387)) (EmptyLang!20387) (Union!20387 (regOne!41287 Regex!20387) (regTwo!41287 Regex!20387)) )
))
(declare-fun r!14126 () Regex!20387)

(declare-fun validRegex!10805 (Regex!20387) Bool)

(assert (=> b!7631642 (= res!3056308 (not (validRegex!10805 (regTwo!41286 r!14126))))))

(declare-fun b!7631643 () Bool)

(declare-fun res!3056305 () Bool)

(declare-fun e!4537041 () Bool)

(assert (=> b!7631643 (=> (not res!3056305) (not e!4537041))))

(get-info :version)

(assert (=> b!7631643 (= res!3056305 (and (not ((_ is EmptyExpr!20387) r!14126)) (not ((_ is EmptyLang!20387) r!14126)) (not ((_ is ElementMatch!20387) r!14126)) (not ((_ is Union!20387) r!14126)) (not ((_ is Star!20387) r!14126))))))

(declare-fun b!7631644 () Bool)

(declare-fun e!4537040 () Bool)

(declare-fun tp!2228054 () Bool)

(assert (=> b!7631644 (= e!4537040 (and tp_is_empty!51129 tp!2228054))))

(declare-fun e!4537042 () Bool)

(assert (=> b!7631645 (= e!4537041 (not e!4537042))))

(declare-fun res!3056309 () Bool)

(assert (=> b!7631645 (=> res!3056309 e!4537042)))

(declare-fun s!9605 () List!73238)

(declare-fun matchR!9890 (Regex!20387 List!73238) Bool)

(assert (=> b!7631645 (= res!3056309 (matchR!9890 r!14126 s!9605))))

(declare-fun lt!2658848 () Bool)

(declare-fun lambda!469117 () Int)

(declare-fun Exists!4541 (Int) Bool)

(assert (=> b!7631645 (= lt!2658848 (Exists!4541 lambda!469117))))

(declare-datatypes ((Option!17460 0))(
  ( (None!17459) (Some!17459 (v!54594 tuple2!69332)) )
))
(declare-fun lt!2658844 () Option!17460)

(declare-fun isDefined!14076 (Option!17460) Bool)

(assert (=> b!7631645 (= lt!2658848 (isDefined!14076 lt!2658844))))

(declare-fun findConcatSeparation!3490 (Regex!20387 Regex!20387 List!73238 List!73238 List!73238) Option!17460)

(assert (=> b!7631645 (= lt!2658844 (findConcatSeparation!3490 (regOne!41286 r!14126) (regTwo!41286 r!14126) Nil!73114 s!9605 s!9605))))

(declare-datatypes ((Unit!167702 0))(
  ( (Unit!167703) )
))
(declare-fun lt!2658846 () Unit!167702)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3248 (Regex!20387 Regex!20387 List!73238) Unit!167702)

(assert (=> b!7631645 (= lt!2658846 (lemmaFindConcatSeparationEquivalentToExists!3248 (regOne!41286 r!14126) (regTwo!41286 r!14126) s!9605))))

(declare-fun res!3056306 () Bool)

(assert (=> start!734868 (=> (not res!3056306) (not e!4537041))))

(assert (=> start!734868 (= res!3056306 (validRegex!10805 r!14126))))

(assert (=> start!734868 e!4537041))

(assert (=> start!734868 e!4537039))

(assert (=> start!734868 e!4537040))

(declare-fun b!7631646 () Bool)

(declare-fun tp!2228057 () Bool)

(declare-fun tp!2228056 () Bool)

(assert (=> b!7631646 (= e!4537039 (and tp!2228057 tp!2228056))))

(declare-fun b!7631647 () Bool)

(assert (=> b!7631647 (= e!4537042 e!4537043)))

(declare-fun res!3056310 () Bool)

(assert (=> b!7631647 (=> res!3056310 e!4537043)))

(assert (=> b!7631647 (= res!3056310 (not (validRegex!10805 (regOne!41286 r!14126))))))

(declare-fun get!25845 (Option!17460) tuple2!69332)

(assert (=> b!7631647 (= lt!2658847 (get!25845 lt!2658844))))

(declare-fun b!7631648 () Bool)

(declare-fun res!3056307 () Bool)

(assert (=> b!7631648 (=> res!3056307 e!4537042)))

(assert (=> b!7631648 (= res!3056307 (not lt!2658848))))

(declare-fun b!7631649 () Bool)

(declare-fun tp!2228055 () Bool)

(declare-fun tp!2228052 () Bool)

(assert (=> b!7631649 (= e!4537039 (and tp!2228055 tp!2228052))))

(assert (= (and start!734868 res!3056306) b!7631643))

(assert (= (and b!7631643 res!3056305) b!7631645))

(assert (= (and b!7631645 (not res!3056309)) b!7631648))

(assert (= (and b!7631648 (not res!3056307)) b!7631647))

(assert (= (and b!7631647 (not res!3056310)) b!7631642))

(assert (= (and b!7631642 (not res!3056308)) b!7631639))

(assert (= (and start!734868 ((_ is ElementMatch!20387) r!14126)) b!7631640))

(assert (= (and start!734868 ((_ is Concat!29232) r!14126)) b!7631649))

(assert (= (and start!734868 ((_ is Star!20387) r!14126)) b!7631641))

(assert (= (and start!734868 ((_ is Union!20387) r!14126)) b!7631646))

(assert (= (and start!734868 ((_ is Cons!73114) s!9605)) b!7631644))

(declare-fun m!8158274 () Bool)

(assert (=> start!734868 m!8158274))

(declare-fun m!8158276 () Bool)

(assert (=> b!7631639 m!8158276))

(declare-fun m!8158278 () Bool)

(assert (=> b!7631647 m!8158278))

(declare-fun m!8158280 () Bool)

(assert (=> b!7631647 m!8158280))

(declare-fun m!8158282 () Bool)

(assert (=> b!7631642 m!8158282))

(declare-fun m!8158284 () Bool)

(assert (=> b!7631645 m!8158284))

(declare-fun m!8158286 () Bool)

(assert (=> b!7631645 m!8158286))

(declare-fun m!8158288 () Bool)

(assert (=> b!7631645 m!8158288))

(declare-fun m!8158290 () Bool)

(assert (=> b!7631645 m!8158290))

(declare-fun m!8158292 () Bool)

(assert (=> b!7631645 m!8158292))

(check-sat (not b!7631639) tp_is_empty!51129 (not b!7631641) (not start!734868) (not b!7631642) (not b!7631645) (not b!7631647) (not b!7631646) (not b!7631644) (not b!7631649))
(check-sat)
