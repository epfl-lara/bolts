; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47286 () Bool)

(assert start!47286)

(assert (=> start!47286 true))

(declare-fun b!518852 () Bool)

(declare-fun e!310729 () Bool)

(assert (=> b!518852 (= e!310729 (not true))))

(declare-datatypes ((B!1103 0))(
  ( (B!1104 (val!1839 Int)) )
))
(declare-datatypes ((List!4779 0))(
  ( (Nil!4769) (Cons!4769 (h!10170 B!1103) (t!73369 List!4779)) )
))
(declare-fun lIn!3 () List!4779)

(declare-fun lt!216279 () List!4779)

(declare-fun size!3892 (List!4779) Int)

(assert (=> b!518852 (<= (size!3892 (t!73369 lIn!3)) (size!3892 lt!216279))))

(declare-datatypes ((Unit!8742 0))(
  ( (Unit!8743) )
))
(declare-fun lt!216280 () Unit!8742)

(declare-fun lemmaForallContainsAndNoDuplicateThenSmallerList!3 (List!4779 List!4779) Unit!8742)

(assert (=> b!518852 (= lt!216280 (lemmaForallContainsAndNoDuplicateThenSmallerList!3 lt!216279 (t!73369 lIn!3)))))

(declare-fun lt!216282 () Unit!8742)

(declare-fun subsetContains!7 (List!4779 List!4779) Unit!8742)

(assert (=> b!518852 (= lt!216282 (subsetContains!7 (t!73369 lIn!3) lt!216279))))

(declare-fun b!518853 () Bool)

(declare-fun res!220136 () Bool)

(declare-fun e!310732 () Bool)

(assert (=> b!518853 (=> (not res!220136) (not e!310732))))

(assert (=> b!518853 (= res!220136 (is-Cons!4769 lIn!3))))

(declare-fun b!518854 () Bool)

(declare-fun res!220135 () Bool)

(assert (=> b!518854 (=> (not res!220135) (not e!310732))))

(declare-fun noDuplicate!130 (List!4779) Bool)

(assert (=> b!518854 (= res!220135 (noDuplicate!130 lIn!3))))

(declare-fun b!518855 () Bool)

(declare-fun e!310733 () Bool)

(declare-fun tp_is_empty!2699 () Bool)

(declare-fun tp!161702 () Bool)

(assert (=> b!518855 (= e!310733 (and tp_is_empty!2699 tp!161702))))

(declare-fun b!518856 () Bool)

(declare-fun e!310730 () Bool)

(assert (=> b!518856 (= e!310732 e!310730)))

(declare-fun res!220138 () Bool)

(assert (=> b!518856 (=> (not res!220138) (not e!310730))))

(declare-fun lt!216281 () (Set B!1103))

(declare-fun content!854 (List!4779) (Set B!1103))

(assert (=> b!518856 (= res!220138 (set.subset (content!854 lIn!3) lt!216281))))

(declare-fun l!3695 () List!4779)

(assert (=> b!518856 (= lt!216281 (content!854 l!3695))))

(declare-fun lt!216278 () Unit!8742)

(declare-fun forallContainsSubset!15 (List!4779 List!4779) Unit!8742)

(assert (=> b!518856 (= lt!216278 (forallContainsSubset!15 lIn!3 l!3695))))

(declare-fun res!220139 () Bool)

(assert (=> start!47286 (=> (not res!220139) (not e!310732))))

(declare-fun lambda!14760 () Int)

(declare-fun forall!1438 (List!4779 Int) Bool)

(assert (=> start!47286 (= res!220139 (forall!1438 lIn!3 lambda!14760))))

(assert (=> start!47286 e!310732))

(assert (=> start!47286 e!310733))

(declare-fun e!310731 () Bool)

(assert (=> start!47286 e!310731))

(declare-fun b!518857 () Bool)

(assert (=> b!518857 (= e!310730 e!310729)))

(declare-fun res!220140 () Bool)

(assert (=> b!518857 (=> (not res!220140) (not e!310729))))

(assert (=> b!518857 (= res!220140 (= (content!854 lt!216279) (set.minus lt!216281 (set.insert (h!10170 lIn!3) (as set.empty (Set B!1103))))))))

(declare-fun -!57 (List!4779 B!1103) List!4779)

(assert (=> b!518857 (= lt!216279 (-!57 l!3695 (h!10170 lIn!3)))))

(declare-fun b!518858 () Bool)

(declare-fun res!220137 () Bool)

(assert (=> b!518858 (=> (not res!220137) (not e!310730))))

(declare-fun contains!1129 (List!4779 B!1103) Bool)

(assert (=> b!518858 (= res!220137 (not (contains!1129 (t!73369 lIn!3) (h!10170 lIn!3))))))

(declare-fun b!518859 () Bool)

(declare-fun tp!161703 () Bool)

(assert (=> b!518859 (= e!310731 (and tp_is_empty!2699 tp!161703))))

(assert (= (and start!47286 res!220139) b!518854))

(assert (= (and b!518854 res!220135) b!518853))

(assert (= (and b!518853 res!220136) b!518856))

(assert (= (and b!518856 res!220138) b!518858))

(assert (= (and b!518858 res!220137) b!518857))

(assert (= (and b!518857 res!220140) b!518852))

(assert (= (and start!47286 (is-Cons!4769 lIn!3)) b!518855))

(assert (= (and start!47286 (is-Cons!4769 l!3695)) b!518859))

(declare-fun m!765731 () Bool)

(assert (=> b!518856 m!765731))

(declare-fun m!765733 () Bool)

(assert (=> b!518856 m!765733))

(declare-fun m!765735 () Bool)

(assert (=> b!518856 m!765735))

(declare-fun m!765737 () Bool)

(assert (=> b!518852 m!765737))

(declare-fun m!765739 () Bool)

(assert (=> b!518852 m!765739))

(declare-fun m!765741 () Bool)

(assert (=> b!518852 m!765741))

(declare-fun m!765743 () Bool)

(assert (=> b!518852 m!765743))

(declare-fun m!765745 () Bool)

(assert (=> b!518857 m!765745))

(declare-fun m!765747 () Bool)

(assert (=> b!518857 m!765747))

(declare-fun m!765749 () Bool)

(assert (=> b!518857 m!765749))

(declare-fun m!765751 () Bool)

(assert (=> b!518858 m!765751))

(declare-fun m!765753 () Bool)

(assert (=> b!518854 m!765753))

(declare-fun m!765755 () Bool)

(assert (=> start!47286 m!765755))

(push 1)

(assert (not b!518857))

(assert (not b!518856))

(assert (not b!518859))

(assert (not b!518855))

(assert (not start!47286))

(assert (not b!518852))

(assert tp_is_empty!2699)

(assert (not b!518858))

(assert (not b!518854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

