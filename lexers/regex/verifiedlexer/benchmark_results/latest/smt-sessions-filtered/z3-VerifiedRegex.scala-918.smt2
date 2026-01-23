; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47372 () Bool)

(assert start!47372)

(assert (=> start!47372 true))

(declare-fun b!519290 () Bool)

(declare-fun res!220368 () Bool)

(declare-fun e!311039 () Bool)

(assert (=> b!519290 (=> (not res!220368) (not e!311039))))

(declare-datatypes ((B!1117 0))(
  ( (B!1118 (val!1846 Int)) )
))
(declare-datatypes ((List!4786 0))(
  ( (Nil!4776) (Cons!4776 (h!10177 B!1117) (t!73376 List!4786)) )
))
(declare-fun lIn!3 () List!4786)

(declare-fun noDuplicate!137 (List!4786) Bool)

(assert (=> b!519290 (= res!220368 (noDuplicate!137 lIn!3))))

(declare-fun b!519291 () Bool)

(declare-fun res!220371 () Bool)

(declare-fun e!311041 () Bool)

(assert (=> b!519291 (=> res!220371 e!311041)))

(declare-fun l!3695 () List!4786)

(declare-fun contains!1136 (List!4786 B!1117) Bool)

(assert (=> b!519291 (= res!220371 (not (contains!1136 l!3695 (h!10177 lIn!3))))))

(declare-fun b!519292 () Bool)

(declare-fun e!311040 () Bool)

(assert (=> b!519292 (= e!311039 e!311040)))

(declare-fun res!220372 () Bool)

(assert (=> b!519292 (=> (not res!220372) (not e!311040))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!216504 () (InoxSet B!1117))

(declare-fun content!861 (List!4786) (InoxSet B!1117))

(assert (=> b!519292 (= res!220372 (= ((_ map implies) (content!861 lIn!3) lt!216504) ((as const (InoxSet B!1117)) true)))))

(assert (=> b!519292 (= lt!216504 (content!861 l!3695))))

(declare-datatypes ((Unit!8756 0))(
  ( (Unit!8757) )
))
(declare-fun lt!216500 () Unit!8756)

(declare-fun forallContainsSubset!22 (List!4786 List!4786) Unit!8756)

(assert (=> b!519292 (= lt!216500 (forallContainsSubset!22 lIn!3 l!3695))))

(declare-fun b!519293 () Bool)

(declare-fun e!311042 () Bool)

(declare-fun tp_is_empty!2713 () Bool)

(declare-fun tp!161761 () Bool)

(assert (=> b!519293 (= e!311042 (and tp_is_empty!2713 tp!161761))))

(declare-fun b!519294 () Bool)

(declare-fun lt!216499 () Int)

(declare-fun lt!216497 () Int)

(assert (=> b!519294 (= e!311041 (> lt!216499 lt!216497))))

(assert (=> b!519294 (< lt!216497 lt!216499)))

(declare-fun size!3899 (List!4786) Int)

(assert (=> b!519294 (= lt!216499 (size!3899 l!3695))))

(declare-fun lt!216505 () Unit!8756)

(declare-fun lemmaRemoveElmtContainedSizeSmaller!2 (List!4786 B!1117) Unit!8756)

(assert (=> b!519294 (= lt!216505 (lemmaRemoveElmtContainedSizeSmaller!2 l!3695 (h!10177 lIn!3)))))

(declare-fun b!519295 () Bool)

(declare-fun res!220365 () Bool)

(assert (=> b!519295 (=> (not res!220365) (not e!311039))))

(get-info :version)

(assert (=> b!519295 (= res!220365 ((_ is Cons!4776) lIn!3))))

(declare-fun res!220369 () Bool)

(assert (=> start!47372 (=> (not res!220369) (not e!311039))))

(declare-fun lambda!14817 () Int)

(declare-fun forall!1445 (List!4786 Int) Bool)

(assert (=> start!47372 (= res!220369 (forall!1445 lIn!3 lambda!14817))))

(assert (=> start!47372 e!311039))

(declare-fun e!311044 () Bool)

(assert (=> start!47372 e!311044))

(assert (=> start!47372 e!311042))

(declare-fun b!519296 () Bool)

(declare-fun e!311043 () Bool)

(assert (=> b!519296 (= e!311040 e!311043)))

(declare-fun res!220367 () Bool)

(assert (=> b!519296 (=> (not res!220367) (not e!311043))))

(declare-fun lt!216498 () List!4786)

(assert (=> b!519296 (= res!220367 (= (content!861 lt!216498) ((_ map and) lt!216504 ((_ map not) (store ((as const (Array B!1117 Bool)) false) (h!10177 lIn!3) true)))))))

(declare-fun -!64 (List!4786 B!1117) List!4786)

(assert (=> b!519296 (= lt!216498 (-!64 l!3695 (h!10177 lIn!3)))))

(declare-fun b!519297 () Bool)

(assert (=> b!519297 (= e!311043 (not e!311041))))

(declare-fun res!220370 () Bool)

(assert (=> b!519297 (=> res!220370 e!311041)))

(declare-fun lt!216503 () Int)

(assert (=> b!519297 (= res!220370 (not (= (+ 1 lt!216503) (size!3899 lIn!3))))))

(assert (=> b!519297 (<= lt!216503 lt!216497)))

(assert (=> b!519297 (= lt!216497 (size!3899 lt!216498))))

(assert (=> b!519297 (= lt!216503 (size!3899 (t!73376 lIn!3)))))

(declare-fun lt!216501 () Unit!8756)

(declare-fun lemmaForallContainsAndNoDuplicateThenSmallerList!10 (List!4786 List!4786) Unit!8756)

(assert (=> b!519297 (= lt!216501 (lemmaForallContainsAndNoDuplicateThenSmallerList!10 lt!216498 (t!73376 lIn!3)))))

(declare-fun lt!216502 () Unit!8756)

(declare-fun subsetContains!14 (List!4786 List!4786) Unit!8756)

(assert (=> b!519297 (= lt!216502 (subsetContains!14 (t!73376 lIn!3) lt!216498))))

(declare-fun b!519298 () Bool)

(declare-fun res!220366 () Bool)

(assert (=> b!519298 (=> (not res!220366) (not e!311040))))

(assert (=> b!519298 (= res!220366 (not (contains!1136 (t!73376 lIn!3) (h!10177 lIn!3))))))

(declare-fun b!519299 () Bool)

(declare-fun tp!161760 () Bool)

(assert (=> b!519299 (= e!311044 (and tp_is_empty!2713 tp!161760))))

(assert (= (and start!47372 res!220369) b!519290))

(assert (= (and b!519290 res!220368) b!519295))

(assert (= (and b!519295 res!220365) b!519292))

(assert (= (and b!519292 res!220372) b!519298))

(assert (= (and b!519298 res!220366) b!519296))

(assert (= (and b!519296 res!220367) b!519297))

(assert (= (and b!519297 (not res!220370)) b!519291))

(assert (= (and b!519291 (not res!220371)) b!519294))

(assert (= (and start!47372 ((_ is Cons!4776) lIn!3)) b!519299))

(assert (= (and start!47372 ((_ is Cons!4776) l!3695)) b!519293))

(declare-fun m!766121 () Bool)

(assert (=> b!519298 m!766121))

(declare-fun m!766123 () Bool)

(assert (=> b!519294 m!766123))

(declare-fun m!766125 () Bool)

(assert (=> b!519294 m!766125))

(declare-fun m!766127 () Bool)

(assert (=> b!519291 m!766127))

(declare-fun m!766129 () Bool)

(assert (=> b!519297 m!766129))

(declare-fun m!766131 () Bool)

(assert (=> b!519297 m!766131))

(declare-fun m!766133 () Bool)

(assert (=> b!519297 m!766133))

(declare-fun m!766135 () Bool)

(assert (=> b!519297 m!766135))

(declare-fun m!766137 () Bool)

(assert (=> b!519297 m!766137))

(declare-fun m!766139 () Bool)

(assert (=> b!519292 m!766139))

(declare-fun m!766141 () Bool)

(assert (=> b!519292 m!766141))

(declare-fun m!766143 () Bool)

(assert (=> b!519292 m!766143))

(declare-fun m!766145 () Bool)

(assert (=> b!519290 m!766145))

(declare-fun m!766147 () Bool)

(assert (=> b!519296 m!766147))

(declare-fun m!766149 () Bool)

(assert (=> b!519296 m!766149))

(declare-fun m!766151 () Bool)

(assert (=> b!519296 m!766151))

(declare-fun m!766153 () Bool)

(assert (=> start!47372 m!766153))

(check-sat (not b!519294) (not start!47372) (not b!519292) tp_is_empty!2713 (not b!519298) (not b!519297) (not b!519290) (not b!519291) (not b!519293) (not b!519296) (not b!519299))
(check-sat)
