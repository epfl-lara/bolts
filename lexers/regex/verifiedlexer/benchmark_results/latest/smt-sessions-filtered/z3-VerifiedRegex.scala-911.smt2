; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47212 () Bool)

(assert start!47212)

(assert (=> start!47212 true))

(declare-fun b!518491 () Bool)

(declare-fun e!310471 () Bool)

(declare-fun tp_is_empty!2685 () Bool)

(declare-fun tp!161636 () Bool)

(assert (=> b!518491 (= e!310471 (and tp_is_empty!2685 tp!161636))))

(declare-fun b!518492 () Bool)

(declare-fun res!219946 () Bool)

(declare-fun e!310470 () Bool)

(assert (=> b!518492 (=> (not res!219946) (not e!310470))))

(declare-datatypes ((B!1089 0))(
  ( (B!1090 (val!1832 Int)) )
))
(declare-datatypes ((List!4772 0))(
  ( (Nil!4762) (Cons!4762 (h!10163 B!1089) (t!73362 List!4772)) )
))
(declare-fun lIn!3 () List!4772)

(declare-fun contains!1122 (List!4772 B!1089) Bool)

(assert (=> b!518492 (= res!219946 (not (contains!1122 (t!73362 lIn!3) (h!10163 lIn!3))))))

(declare-fun b!518493 () Bool)

(declare-fun e!310469 () Bool)

(assert (=> b!518493 (= e!310469 true)))

(declare-fun lt!216203 () Bool)

(declare-fun l!3695 () List!4772)

(assert (=> b!518493 (= lt!216203 (contains!1122 l!3695 (h!10163 lIn!3)))))

(declare-fun b!518494 () Bool)

(declare-fun e!310472 () Bool)

(declare-fun tp!161637 () Bool)

(assert (=> b!518494 (= e!310472 (and tp_is_empty!2685 tp!161637))))

(declare-fun b!518495 () Bool)

(declare-fun e!310467 () Bool)

(assert (=> b!518495 (= e!310467 e!310470)))

(declare-fun res!219943 () Bool)

(assert (=> b!518495 (=> (not res!219943) (not e!310470))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!216202 () (InoxSet B!1089))

(declare-fun content!847 (List!4772) (InoxSet B!1089))

(assert (=> b!518495 (= res!219943 (= ((_ map implies) (content!847 lIn!3) lt!216202) ((as const (InoxSet B!1089)) true)))))

(assert (=> b!518495 (= lt!216202 (content!847 l!3695))))

(declare-datatypes ((Unit!8728 0))(
  ( (Unit!8729) )
))
(declare-fun lt!216201 () Unit!8728)

(declare-fun forallContainsSubset!8 (List!4772 List!4772) Unit!8728)

(assert (=> b!518495 (= lt!216201 (forallContainsSubset!8 lIn!3 l!3695))))

(declare-fun res!219947 () Bool)

(assert (=> start!47212 (=> (not res!219947) (not e!310467))))

(declare-fun lambda!14721 () Int)

(declare-fun forall!1431 (List!4772 Int) Bool)

(assert (=> start!47212 (= res!219947 (forall!1431 lIn!3 lambda!14721))))

(assert (=> start!47212 e!310467))

(assert (=> start!47212 e!310471))

(assert (=> start!47212 e!310472))

(declare-fun b!518496 () Bool)

(declare-fun res!219944 () Bool)

(assert (=> b!518496 (=> (not res!219944) (not e!310467))))

(declare-fun noDuplicate!123 (List!4772) Bool)

(assert (=> b!518496 (= res!219944 (noDuplicate!123 lIn!3))))

(declare-fun b!518497 () Bool)

(declare-fun e!310468 () Bool)

(assert (=> b!518497 (= e!310470 e!310468)))

(declare-fun res!219945 () Bool)

(assert (=> b!518497 (=> (not res!219945) (not e!310468))))

(declare-fun lt!216204 () List!4772)

(assert (=> b!518497 (= res!219945 (= (content!847 lt!216204) ((_ map and) lt!216202 ((_ map not) (store ((as const (Array B!1089 Bool)) false) (h!10163 lIn!3) true)))))))

(declare-fun -!54 (List!4772 B!1089) List!4772)

(assert (=> b!518497 (= lt!216204 (-!54 l!3695 (h!10163 lIn!3)))))

(declare-fun b!518498 () Bool)

(assert (=> b!518498 (= e!310468 (not e!310469))))

(declare-fun res!219942 () Bool)

(assert (=> b!518498 (=> res!219942 e!310469)))

(declare-fun lt!216207 () Int)

(declare-fun size!3889 (List!4772) Int)

(assert (=> b!518498 (= res!219942 (not (= (+ 1 lt!216207) (size!3889 lIn!3))))))

(assert (=> b!518498 (<= lt!216207 (size!3889 lt!216204))))

(assert (=> b!518498 (= lt!216207 (size!3889 (t!73362 lIn!3)))))

(declare-fun lt!216205 () Unit!8728)

(declare-fun lemmaForallContainsAndNoDuplicateThenSmallerList!2 (List!4772 List!4772) Unit!8728)

(assert (=> b!518498 (= lt!216205 (lemmaForallContainsAndNoDuplicateThenSmallerList!2 lt!216204 (t!73362 lIn!3)))))

(declare-fun lt!216206 () Unit!8728)

(declare-fun subsetContains!6 (List!4772 List!4772) Unit!8728)

(assert (=> b!518498 (= lt!216206 (subsetContains!6 (t!73362 lIn!3) lt!216204))))

(declare-fun b!518499 () Bool)

(declare-fun res!219948 () Bool)

(assert (=> b!518499 (=> (not res!219948) (not e!310467))))

(get-info :version)

(assert (=> b!518499 (= res!219948 ((_ is Cons!4762) lIn!3))))

(assert (= (and start!47212 res!219947) b!518496))

(assert (= (and b!518496 res!219944) b!518499))

(assert (= (and b!518499 res!219948) b!518495))

(assert (= (and b!518495 res!219943) b!518492))

(assert (= (and b!518492 res!219946) b!518497))

(assert (= (and b!518497 res!219945) b!518498))

(assert (= (and b!518498 (not res!219942)) b!518493))

(assert (= (and start!47212 ((_ is Cons!4762) lIn!3)) b!518491))

(assert (= (and start!47212 ((_ is Cons!4762) l!3695)) b!518494))

(declare-fun m!765463 () Bool)

(assert (=> b!518492 m!765463))

(declare-fun m!765465 () Bool)

(assert (=> b!518493 m!765465))

(declare-fun m!765467 () Bool)

(assert (=> b!518498 m!765467))

(declare-fun m!765469 () Bool)

(assert (=> b!518498 m!765469))

(declare-fun m!765471 () Bool)

(assert (=> b!518498 m!765471))

(declare-fun m!765473 () Bool)

(assert (=> b!518498 m!765473))

(declare-fun m!765475 () Bool)

(assert (=> b!518498 m!765475))

(declare-fun m!765477 () Bool)

(assert (=> b!518496 m!765477))

(declare-fun m!765479 () Bool)

(assert (=> start!47212 m!765479))

(declare-fun m!765481 () Bool)

(assert (=> b!518497 m!765481))

(declare-fun m!765483 () Bool)

(assert (=> b!518497 m!765483))

(declare-fun m!765485 () Bool)

(assert (=> b!518497 m!765485))

(declare-fun m!765487 () Bool)

(assert (=> b!518495 m!765487))

(declare-fun m!765489 () Bool)

(assert (=> b!518495 m!765489))

(declare-fun m!765491 () Bool)

(assert (=> b!518495 m!765491))

(check-sat (not b!518496) (not b!518498) (not start!47212) (not b!518491) (not b!518495) tp_is_empty!2685 (not b!518497) (not b!518493) (not b!518494) (not b!518492))
(check-sat)
