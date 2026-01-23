; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47492 () Bool)

(assert start!47492)

(assert (=> start!47492 true))

(declare-fun b!519934 () Bool)

(declare-fun res!220724 () Bool)

(declare-fun e!311515 () Bool)

(assert (=> b!519934 (=> (not res!220724) (not e!311515))))

(declare-datatypes ((B!1137 0))(
  ( (B!1138 (val!1856 Int)) )
))
(declare-datatypes ((List!4796 0))(
  ( (Nil!4786) (Cons!4786 (h!10187 B!1137) (t!73386 List!4796)) )
))
(declare-fun lIn!3 () List!4796)

(declare-fun noDuplicate!147 (List!4796) Bool)

(assert (=> b!519934 (= res!220724 (noDuplicate!147 lIn!3))))

(declare-fun b!519935 () Bool)

(declare-fun e!311517 () Bool)

(assert (=> b!519935 (= e!311515 e!311517)))

(declare-fun res!220726 () Bool)

(assert (=> b!519935 (=> (not res!220726) (not e!311517))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!216715 () (InoxSet B!1137))

(declare-fun content!869 (List!4796) (InoxSet B!1137))

(assert (=> b!519935 (= res!220726 (= ((_ map implies) (content!869 lIn!3) lt!216715) ((as const (InoxSet B!1137)) true)))))

(declare-fun l!3695 () List!4796)

(assert (=> b!519935 (= lt!216715 (content!869 l!3695))))

(declare-datatypes ((Unit!8772 0))(
  ( (Unit!8773) )
))
(declare-fun lt!216723 () Unit!8772)

(declare-fun forallContainsSubset!30 (List!4796 List!4796) Unit!8772)

(assert (=> b!519935 (= lt!216723 (forallContainsSubset!30 lIn!3 l!3695))))

(declare-fun b!519936 () Bool)

(declare-fun e!311520 () Bool)

(assert (=> b!519936 (= e!311517 e!311520)))

(declare-fun res!220728 () Bool)

(assert (=> b!519936 (=> (not res!220728) (not e!311520))))

(declare-fun lt!216721 () List!4796)

(assert (=> b!519936 (= res!220728 (= (content!869 lt!216721) ((_ map and) lt!216715 ((_ map not) (store ((as const (Array B!1137 Bool)) false) (h!10187 lIn!3) true)))))))

(declare-fun -!72 (List!4796 B!1137) List!4796)

(assert (=> b!519936 (= lt!216721 (-!72 l!3695 (h!10187 lIn!3)))))

(declare-fun b!519937 () Bool)

(declare-fun res!220721 () Bool)

(declare-fun e!311516 () Bool)

(assert (=> b!519937 (=> res!220721 e!311516)))

(declare-fun contains!1146 (List!4796 B!1137) Bool)

(assert (=> b!519937 (= res!220721 (not (contains!1146 l!3695 (h!10187 lIn!3))))))

(declare-fun res!220727 () Bool)

(assert (=> start!47492 (=> (not res!220727) (not e!311515))))

(declare-fun lambda!14901 () Int)

(declare-fun forall!1455 (List!4796 Int) Bool)

(assert (=> start!47492 (= res!220727 (forall!1455 lIn!3 lambda!14901))))

(assert (=> start!47492 e!311515))

(declare-fun e!311518 () Bool)

(assert (=> start!47492 e!311518))

(declare-fun e!311519 () Bool)

(assert (=> start!47492 e!311519))

(declare-fun b!519938 () Bool)

(declare-fun res!220725 () Bool)

(assert (=> b!519938 (=> (not res!220725) (not e!311515))))

(get-info :version)

(assert (=> b!519938 (= res!220725 ((_ is Cons!4786) lIn!3))))

(declare-fun b!519939 () Bool)

(declare-fun res!220723 () Bool)

(assert (=> b!519939 (=> (not res!220723) (not e!311517))))

(assert (=> b!519939 (= res!220723 (not (contains!1146 (t!73386 lIn!3) (h!10187 lIn!3))))))

(declare-fun lt!216720 () Int)

(declare-fun b!519940 () Bool)

(declare-fun lt!216719 () Int)

(declare-fun lt!216714 () Int)

(assert (=> b!519940 (= e!311516 (or (<= lt!216714 lt!216720) (<= lt!216719 lt!216714)))))

(assert (=> b!519940 (< lt!216720 lt!216714)))

(declare-fun size!3907 (List!4796) Int)

(assert (=> b!519940 (= lt!216714 (size!3907 l!3695))))

(declare-fun lt!216718 () Unit!8772)

(declare-fun lemmaRemoveElmtContainedSizeSmaller!4 (List!4796 B!1137) Unit!8772)

(assert (=> b!519940 (= lt!216718 (lemmaRemoveElmtContainedSizeSmaller!4 l!3695 (h!10187 lIn!3)))))

(declare-fun b!519941 () Bool)

(declare-fun tp_is_empty!2733 () Bool)

(declare-fun tp!161853 () Bool)

(assert (=> b!519941 (= e!311518 (and tp_is_empty!2733 tp!161853))))

(declare-fun b!519942 () Bool)

(declare-fun tp!161852 () Bool)

(assert (=> b!519942 (= e!311519 (and tp_is_empty!2733 tp!161852))))

(declare-fun b!519943 () Bool)

(assert (=> b!519943 (= e!311520 (not e!311516))))

(declare-fun res!220722 () Bool)

(assert (=> b!519943 (=> res!220722 e!311516)))

(declare-fun lt!216717 () Int)

(assert (=> b!519943 (= res!220722 (not (= (+ 1 lt!216717) lt!216719)))))

(assert (=> b!519943 (= lt!216719 (size!3907 lIn!3))))

(assert (=> b!519943 (<= lt!216717 lt!216720)))

(assert (=> b!519943 (= lt!216720 (size!3907 lt!216721))))

(assert (=> b!519943 (= lt!216717 (size!3907 (t!73386 lIn!3)))))

(declare-fun lt!216716 () Unit!8772)

(declare-fun lemmaForallContainsAndNoDuplicateThenSmallerList!12 (List!4796 List!4796) Unit!8772)

(assert (=> b!519943 (= lt!216716 (lemmaForallContainsAndNoDuplicateThenSmallerList!12 lt!216721 (t!73386 lIn!3)))))

(declare-fun lt!216722 () Unit!8772)

(declare-fun subsetContains!22 (List!4796 List!4796) Unit!8772)

(assert (=> b!519943 (= lt!216722 (subsetContains!22 (t!73386 lIn!3) lt!216721))))

(assert (= (and start!47492 res!220727) b!519934))

(assert (= (and b!519934 res!220724) b!519938))

(assert (= (and b!519938 res!220725) b!519935))

(assert (= (and b!519935 res!220726) b!519939))

(assert (= (and b!519939 res!220723) b!519936))

(assert (= (and b!519936 res!220728) b!519943))

(assert (= (and b!519943 (not res!220722)) b!519937))

(assert (= (and b!519937 (not res!220721)) b!519940))

(assert (= (and start!47492 ((_ is Cons!4786) lIn!3)) b!519941))

(assert (= (and start!47492 ((_ is Cons!4786) l!3695)) b!519942))

(declare-fun m!766647 () Bool)

(assert (=> b!519937 m!766647))

(declare-fun m!766649 () Bool)

(assert (=> b!519943 m!766649))

(declare-fun m!766651 () Bool)

(assert (=> b!519943 m!766651))

(declare-fun m!766653 () Bool)

(assert (=> b!519943 m!766653))

(declare-fun m!766655 () Bool)

(assert (=> b!519943 m!766655))

(declare-fun m!766657 () Bool)

(assert (=> b!519943 m!766657))

(declare-fun m!766659 () Bool)

(assert (=> b!519934 m!766659))

(declare-fun m!766661 () Bool)

(assert (=> start!47492 m!766661))

(declare-fun m!766663 () Bool)

(assert (=> b!519939 m!766663))

(declare-fun m!766665 () Bool)

(assert (=> b!519936 m!766665))

(declare-fun m!766667 () Bool)

(assert (=> b!519936 m!766667))

(declare-fun m!766669 () Bool)

(assert (=> b!519936 m!766669))

(declare-fun m!766671 () Bool)

(assert (=> b!519935 m!766671))

(declare-fun m!766673 () Bool)

(assert (=> b!519935 m!766673))

(declare-fun m!766675 () Bool)

(assert (=> b!519935 m!766675))

(declare-fun m!766677 () Bool)

(assert (=> b!519940 m!766677))

(declare-fun m!766679 () Bool)

(assert (=> b!519940 m!766679))

(check-sat tp_is_empty!2733 (not start!47492) (not b!519936) (not b!519935) (not b!519937) (not b!519943) (not b!519934) (not b!519942) (not b!519941) (not b!519940) (not b!519939))
(check-sat)
