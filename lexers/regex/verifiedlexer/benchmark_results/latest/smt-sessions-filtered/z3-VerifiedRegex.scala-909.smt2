; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47204 () Bool)

(assert start!47204)

(assert (=> start!47204 true))

(declare-fun bs!60336 () Bool)

(declare-fun b!518371 () Bool)

(assert (= bs!60336 (and b!518371 start!47204)))

(declare-datatypes ((B!1081 0))(
  ( (B!1082 (val!1828 Int)) )
))
(declare-datatypes ((List!4768 0))(
  ( (Nil!4758) (Cons!4758 (h!10159 B!1081) (t!73358 List!4768)) )
))
(declare-fun lt!216138 () List!4768)

(declare-fun lambda!14703 () Int)

(declare-fun lambda!14702 () Int)

(declare-fun l!3695 () List!4768)

(assert (=> bs!60336 (= (= lt!216138 l!3695) (= lambda!14703 lambda!14702))))

(assert (=> b!518371 true))

(declare-fun b!518368 () Bool)

(declare-fun res!219854 () Bool)

(declare-fun e!310384 () Bool)

(assert (=> b!518368 (=> (not res!219854) (not e!310384))))

(declare-fun lIn!3 () List!4768)

(get-info :version)

(assert (=> b!518368 (= res!219854 ((_ is Cons!4758) lIn!3))))

(declare-fun b!518369 () Bool)

(declare-fun res!219855 () Bool)

(assert (=> b!518369 (=> (not res!219855) (not e!310384))))

(declare-fun noDuplicate!119 (List!4768) Bool)

(assert (=> b!518369 (= res!219855 (noDuplicate!119 lIn!3))))

(declare-fun b!518370 () Bool)

(declare-fun res!219852 () Bool)

(declare-fun e!310386 () Bool)

(assert (=> b!518370 (=> (not res!219852) (not e!310386))))

(declare-fun contains!1118 (List!4768 B!1081) Bool)

(assert (=> b!518370 (= res!219852 (not (contains!1118 (t!73358 lIn!3) (h!10159 lIn!3))))))

(declare-fun e!310385 () Bool)

(declare-fun e!310383 () Bool)

(assert (=> b!518371 (= e!310385 e!310383)))

(declare-fun res!219851 () Bool)

(assert (=> b!518371 (=> (not res!219851) (not e!310383))))

(declare-fun forall!1427 (List!4768 Int) Bool)

(assert (=> b!518371 (= res!219851 (forall!1427 (t!73358 lIn!3) lambda!14703))))

(declare-datatypes ((Unit!8720 0))(
  ( (Unit!8721) )
))
(declare-fun lt!216140 () Unit!8720)

(declare-fun subsetContains!2 (List!4768 List!4768) Unit!8720)

(assert (=> b!518371 (= lt!216140 (subsetContains!2 (t!73358 lIn!3) lt!216138))))

(declare-fun b!518372 () Bool)

(declare-fun e!310388 () Bool)

(declare-fun tp_is_empty!2677 () Bool)

(declare-fun tp!161613 () Bool)

(assert (=> b!518372 (= e!310388 (and tp_is_empty!2677 tp!161613))))

(declare-fun b!518373 () Bool)

(assert (=> b!518373 (= e!310383 (not (forall!1427 (t!73358 lIn!3) lambda!14703)))))

(declare-fun b!518374 () Bool)

(declare-fun res!219857 () Bool)

(assert (=> b!518374 (=> (not res!219857) (not e!310383))))

(assert (=> b!518374 (= res!219857 (noDuplicate!119 (t!73358 lIn!3)))))

(declare-fun res!219856 () Bool)

(assert (=> start!47204 (=> (not res!219856) (not e!310384))))

(assert (=> start!47204 (= res!219856 (forall!1427 lIn!3 lambda!14702))))

(assert (=> start!47204 e!310384))

(declare-fun e!310387 () Bool)

(assert (=> start!47204 e!310387))

(assert (=> start!47204 e!310388))

(declare-fun b!518375 () Bool)

(declare-fun tp!161612 () Bool)

(assert (=> b!518375 (= e!310387 (and tp_is_empty!2677 tp!161612))))

(declare-fun b!518376 () Bool)

(assert (=> b!518376 (= e!310386 e!310385)))

(declare-fun res!219853 () Bool)

(assert (=> b!518376 (=> (not res!219853) (not e!310385))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!216141 () (InoxSet B!1081))

(declare-fun content!843 (List!4768) (InoxSet B!1081))

(assert (=> b!518376 (= res!219853 (= (content!843 lt!216138) ((_ map and) lt!216141 ((_ map not) (store ((as const (Array B!1081 Bool)) false) (h!10159 lIn!3) true)))))))

(declare-fun -!50 (List!4768 B!1081) List!4768)

(assert (=> b!518376 (= lt!216138 (-!50 l!3695 (h!10159 lIn!3)))))

(declare-fun b!518377 () Bool)

(assert (=> b!518377 (= e!310384 e!310386)))

(declare-fun res!219858 () Bool)

(assert (=> b!518377 (=> (not res!219858) (not e!310386))))

(assert (=> b!518377 (= res!219858 (= ((_ map implies) (content!843 lIn!3) lt!216141) ((as const (InoxSet B!1081)) true)))))

(assert (=> b!518377 (= lt!216141 (content!843 l!3695))))

(declare-fun lt!216139 () Unit!8720)

(declare-fun forallContainsSubset!4 (List!4768 List!4768) Unit!8720)

(assert (=> b!518377 (= lt!216139 (forallContainsSubset!4 lIn!3 l!3695))))

(assert (= (and start!47204 res!219856) b!518369))

(assert (= (and b!518369 res!219855) b!518368))

(assert (= (and b!518368 res!219854) b!518377))

(assert (= (and b!518377 res!219858) b!518370))

(assert (= (and b!518370 res!219852) b!518376))

(assert (= (and b!518376 res!219853) b!518371))

(assert (= (and b!518371 res!219851) b!518374))

(assert (= (and b!518374 res!219857) b!518373))

(assert (= (and start!47204 ((_ is Cons!4758) lIn!3)) b!518375))

(assert (= (and start!47204 ((_ is Cons!4758) l!3695)) b!518372))

(declare-fun m!765361 () Bool)

(assert (=> b!518376 m!765361))

(declare-fun m!765363 () Bool)

(assert (=> b!518376 m!765363))

(declare-fun m!765365 () Bool)

(assert (=> b!518376 m!765365))

(declare-fun m!765367 () Bool)

(assert (=> b!518377 m!765367))

(declare-fun m!765369 () Bool)

(assert (=> b!518377 m!765369))

(declare-fun m!765371 () Bool)

(assert (=> b!518377 m!765371))

(declare-fun m!765373 () Bool)

(assert (=> b!518374 m!765373))

(declare-fun m!765375 () Bool)

(assert (=> b!518370 m!765375))

(declare-fun m!765377 () Bool)

(assert (=> b!518371 m!765377))

(declare-fun m!765379 () Bool)

(assert (=> b!518371 m!765379))

(declare-fun m!765381 () Bool)

(assert (=> b!518369 m!765381))

(assert (=> b!518373 m!765377))

(declare-fun m!765383 () Bool)

(assert (=> start!47204 m!765383))

(check-sat (not b!518374) tp_is_empty!2677 (not b!518375) (not start!47204) (not b!518377) (not b!518371) (not b!518372) (not b!518370) (not b!518373) (not b!518369) (not b!518376))
(check-sat)
