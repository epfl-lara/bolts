; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732908 () Bool)

(assert start!732908)

(declare-fun b!7601664 () Bool)

(assert (=> b!7601664 true))

(assert (=> b!7601664 true))

(assert (=> b!7601664 true))

(declare-fun bs!1942426 () Bool)

(declare-fun b!7601654 () Bool)

(assert (= bs!1942426 (and b!7601654 b!7601664)))

(declare-fun lambda!467715 () Int)

(declare-fun lambda!467714 () Int)

(assert (=> bs!1942426 (not (= lambda!467715 lambda!467714))))

(assert (=> b!7601654 true))

(assert (=> b!7601654 true))

(assert (=> b!7601654 true))

(declare-fun b!7601652 () Bool)

(declare-fun e!4522352 () Bool)

(declare-fun tp!2216495 () Bool)

(assert (=> b!7601652 (= e!4522352 tp!2216495)))

(declare-fun b!7601653 () Bool)

(declare-fun e!4522351 () Bool)

(declare-fun tp_is_empty!50673 () Bool)

(declare-fun tp!2216494 () Bool)

(assert (=> b!7601653 (= e!4522351 (and tp_is_empty!50673 tp!2216494))))

(declare-fun res!3043748 () Bool)

(declare-fun e!4522350 () Bool)

(assert (=> b!7601654 (=> (not res!3043748) (not e!4522350))))

(declare-fun Exists!4387 (Int) Bool)

(assert (=> b!7601654 (= res!3043748 (Exists!4387 lambda!467715))))

(declare-fun b!7601655 () Bool)

(declare-fun tp!2216488 () Bool)

(declare-fun tp!2216489 () Bool)

(assert (=> b!7601655 (= e!4522352 (and tp!2216488 tp!2216489))))

(declare-fun b!7601656 () Bool)

(declare-fun res!3043747 () Bool)

(assert (=> b!7601656 (=> (not res!3043747) (not e!4522350))))

(declare-datatypes ((C!40644 0))(
  ( (C!40645 (val!30762 Int)) )
))
(declare-datatypes ((Regex!20159 0))(
  ( (ElementMatch!20159 (c!1402248 C!40644)) (Concat!29004 (regOne!40830 Regex!20159) (regTwo!40830 Regex!20159)) (EmptyExpr!20159) (Star!20159 (reg!20488 Regex!20159)) (EmptyLang!20159) (Union!20159 (regOne!40831 Regex!20159) (regTwo!40831 Regex!20159)) )
))
(declare-fun r2!3249 () Regex!20159)

(declare-fun validRegex!10587 (Regex!20159) Bool)

(assert (=> b!7601656 (= res!3043747 (validRegex!10587 r2!3249))))

(declare-fun b!7601657 () Bool)

(declare-fun e!4522353 () Bool)

(declare-fun tp!2216487 () Bool)

(declare-fun tp!2216492 () Bool)

(assert (=> b!7601657 (= e!4522353 (and tp!2216487 tp!2216492))))

(declare-fun res!3043745 () Bool)

(assert (=> start!732908 (=> (not res!3043745) (not e!4522350))))

(declare-fun r1!3349 () Regex!20159)

(assert (=> start!732908 (= res!3043745 (validRegex!10587 r1!3349))))

(assert (=> start!732908 e!4522350))

(assert (=> start!732908 e!4522352))

(assert (=> start!732908 e!4522353))

(assert (=> start!732908 e!4522351))

(declare-fun b!7601658 () Bool)

(declare-fun tp!2216491 () Bool)

(assert (=> b!7601658 (= e!4522353 tp!2216491)))

(declare-fun b!7601659 () Bool)

(assert (=> b!7601659 (= e!4522350 (not true))))

(declare-datatypes ((List!73042 0))(
  ( (Nil!72918) (Cons!72918 (h!79366 C!40644) (t!387777 List!73042)) )
))
(declare-fun lt!2654375 () List!73042)

(declare-datatypes ((tuple2!69032 0))(
  ( (tuple2!69033 (_1!37819 List!73042) (_2!37819 List!73042)) )
))
(declare-fun lt!2654378 () tuple2!69032)

(declare-fun ++!17559 (List!73042 List!73042) List!73042)

(assert (=> b!7601659 (= lt!2654375 (++!17559 (_1!37819 lt!2654378) (_2!37819 lt!2654378)))))

(declare-fun matchR!9729 (Regex!20159 List!73042) Bool)

(declare-fun matchRSpec!4444 (Regex!20159 List!73042) Bool)

(assert (=> b!7601659 (= (matchR!9729 r2!3249 (_2!37819 lt!2654378)) (matchRSpec!4444 r2!3249 (_2!37819 lt!2654378)))))

(declare-datatypes ((Unit!167218 0))(
  ( (Unit!167219) )
))
(declare-fun lt!2654377 () Unit!167218)

(declare-fun mainMatchTheorem!4438 (Regex!20159 List!73042) Unit!167218)

(assert (=> b!7601659 (= lt!2654377 (mainMatchTheorem!4438 r2!3249 (_2!37819 lt!2654378)))))

(assert (=> b!7601659 (= (matchR!9729 r1!3349 (_1!37819 lt!2654378)) (matchRSpec!4444 r1!3349 (_1!37819 lt!2654378)))))

(declare-fun lt!2654376 () Unit!167218)

(assert (=> b!7601659 (= lt!2654376 (mainMatchTheorem!4438 r1!3349 (_1!37819 lt!2654378)))))

(declare-fun pickWitness!410 (Int) tuple2!69032)

(assert (=> b!7601659 (= lt!2654378 (pickWitness!410 lambda!467715))))

(declare-fun b!7601660 () Bool)

(declare-fun res!3043744 () Bool)

(assert (=> b!7601660 (=> (not res!3043744) (not e!4522350))))

(assert (=> b!7601660 (= res!3043744 (not (Exists!4387 lambda!467714)))))

(declare-fun b!7601661 () Bool)

(assert (=> b!7601661 (= e!4522353 tp_is_empty!50673)))

(declare-fun b!7601662 () Bool)

(declare-fun tp!2216490 () Bool)

(declare-fun tp!2216486 () Bool)

(assert (=> b!7601662 (= e!4522352 (and tp!2216490 tp!2216486))))

(declare-fun b!7601663 () Bool)

(assert (=> b!7601663 (= e!4522352 tp_is_empty!50673)))

(declare-fun res!3043746 () Bool)

(assert (=> b!7601664 (=> (not res!3043746) (not e!4522350))))

(assert (=> b!7601664 (= res!3043746 (not (Exists!4387 lambda!467714)))))

(declare-fun b!7601665 () Bool)

(declare-fun tp!2216493 () Bool)

(declare-fun tp!2216485 () Bool)

(assert (=> b!7601665 (= e!4522353 (and tp!2216493 tp!2216485))))

(assert (= (and start!732908 res!3043745) b!7601656))

(assert (= (and b!7601656 res!3043747) b!7601664))

(assert (= (and b!7601664 res!3043746) b!7601660))

(assert (= (and b!7601660 res!3043744) b!7601654))

(assert (= (and b!7601654 res!3043748) b!7601659))

(get-info :version)

(assert (= (and start!732908 ((_ is ElementMatch!20159) r1!3349)) b!7601663))

(assert (= (and start!732908 ((_ is Concat!29004) r1!3349)) b!7601662))

(assert (= (and start!732908 ((_ is Star!20159) r1!3349)) b!7601652))

(assert (= (and start!732908 ((_ is Union!20159) r1!3349)) b!7601655))

(assert (= (and start!732908 ((_ is ElementMatch!20159) r2!3249)) b!7601661))

(assert (= (and start!732908 ((_ is Concat!29004) r2!3249)) b!7601657))

(assert (= (and start!732908 ((_ is Star!20159) r2!3249)) b!7601658))

(assert (= (and start!732908 ((_ is Union!20159) r2!3249)) b!7601665))

(declare-fun s!10235 () List!73042)

(assert (= (and start!732908 ((_ is Cons!72918) s!10235)) b!7601653))

(declare-fun m!8145206 () Bool)

(assert (=> b!7601660 m!8145206))

(assert (=> b!7601664 m!8145206))

(declare-fun m!8145208 () Bool)

(assert (=> b!7601659 m!8145208))

(declare-fun m!8145210 () Bool)

(assert (=> b!7601659 m!8145210))

(declare-fun m!8145212 () Bool)

(assert (=> b!7601659 m!8145212))

(declare-fun m!8145214 () Bool)

(assert (=> b!7601659 m!8145214))

(declare-fun m!8145216 () Bool)

(assert (=> b!7601659 m!8145216))

(declare-fun m!8145218 () Bool)

(assert (=> b!7601659 m!8145218))

(declare-fun m!8145220 () Bool)

(assert (=> b!7601659 m!8145220))

(declare-fun m!8145222 () Bool)

(assert (=> b!7601659 m!8145222))

(declare-fun m!8145224 () Bool)

(assert (=> start!732908 m!8145224))

(declare-fun m!8145226 () Bool)

(assert (=> b!7601654 m!8145226))

(declare-fun m!8145228 () Bool)

(assert (=> b!7601656 m!8145228))

(check-sat (not b!7601659) (not b!7601660) (not b!7601653) (not b!7601665) (not b!7601662) (not b!7601652) (not b!7601664) (not b!7601658) (not b!7601656) (not start!732908) tp_is_empty!50673 (not b!7601654) (not b!7601655) (not b!7601657))
(check-sat)
