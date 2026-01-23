; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250800 () Bool)

(assert start!250800)

(declare-fun b!2589907 () Bool)

(assert (=> b!2589907 true))

(declare-fun b!2589903 () Bool)

(declare-fun e!1633694 () Bool)

(declare-fun e!1633698 () Bool)

(assert (=> b!2589903 (= e!1633694 (not e!1633698))))

(declare-fun res!1088831 () Bool)

(assert (=> b!2589903 (=> res!1088831 e!1633698)))

(declare-fun lt!910495 () Int)

(declare-datatypes ((B!1969 0))(
  ( (B!1970 (val!9452 Int)) )
))
(declare-datatypes ((List!29885 0))(
  ( (Nil!29785) (Cons!29785 (h!35205 B!1969) (t!212898 List!29885)) )
))
(declare-fun l!3230 () List!29885)

(declare-fun size!23098 (List!29885) Int)

(assert (=> b!2589903 (= res!1088831 (>= lt!910495 (size!23098 l!3230)))))

(declare-fun lt!910498 () Int)

(assert (=> b!2589903 (= lt!910495 lt!910498)))

(assert (=> b!2589903 (= lt!910498 (size!23098 (t!212898 l!3230)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!910496 () (InoxSet B!1969))

(declare-fun toList!1736 ((InoxSet B!1969)) List!29885)

(assert (=> b!2589903 (= lt!910495 (size!23098 (toList!1736 lt!910496)))))

(declare-fun content!4126 (List!29885) (InoxSet B!1969))

(assert (=> b!2589903 (= lt!910496 (content!4126 (t!212898 l!3230)))))

(declare-datatypes ((Unit!43658 0))(
  ( (Unit!43659) )
))
(declare-fun lt!910501 () Unit!43658)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!26 (List!29885) Unit!43658)

(assert (=> b!2589903 (= lt!910501 (lemmaNoDuplicateThenContentToListSameSize!26 (t!212898 l!3230)))))

(declare-fun b!2589904 () Bool)

(declare-fun e!1633697 () Bool)

(assert (=> b!2589904 (= e!1633698 e!1633697)))

(declare-fun res!1088835 () Bool)

(assert (=> b!2589904 (=> res!1088835 e!1633697)))

(declare-fun lt!910493 () Int)

(assert (=> b!2589904 (= res!1088835 (not (= (size!23098 l!3230) lt!910493)))))

(assert (=> b!2589904 (= lt!910493 (+ 1 lt!910498))))

(declare-fun b!2589905 () Bool)

(declare-fun e!1633696 () Bool)

(declare-fun lambda!95892 () Int)

(declare-fun exists!886 (List!29885 Int) Bool)

(assert (=> b!2589905 (= e!1633696 (exists!886 l!3230 lambda!95892))))

(declare-fun b!2589906 () Bool)

(declare-fun res!1088832 () Bool)

(assert (=> b!2589906 (=> (not res!1088832) (not e!1633694))))

(get-info :version)

(assert (=> b!2589906 (= res!1088832 ((_ is Cons!29785) l!3230))))

(declare-fun e!1633693 () Bool)

(assert (=> b!2589907 (= e!1633693 e!1633696)))

(declare-fun res!1088828 () Bool)

(assert (=> b!2589907 (=> res!1088828 e!1633696)))

(assert (=> b!2589907 (= res!1088828 (not (exists!886 l!3230 lambda!95892)))))

(assert (=> b!2589907 (exists!886 l!3230 lambda!95892)))

(declare-fun lt!910494 () Unit!43658)

(declare-fun lt!910499 () List!29885)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!2 (List!29885 List!29885) Unit!43658)

(assert (=> b!2589907 (= lt!910494 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!2 l!3230 lt!910499))))

(declare-fun lt!910497 () Unit!43658)

(declare-fun subsetContains!28 (List!29885 List!29885) Unit!43658)

(assert (=> b!2589907 (= lt!910497 (subsetContains!28 lt!910499 l!3230))))

(declare-fun b!2589908 () Bool)

(declare-fun res!1088834 () Bool)

(assert (=> b!2589908 (=> res!1088834 e!1633693)))

(declare-fun lt!910500 () (InoxSet B!1969))

(assert (=> b!2589908 (= res!1088834 (not (= lt!910500 (content!4126 l!3230))))))

(declare-fun b!2589909 () Bool)

(declare-fun e!1633699 () Bool)

(assert (=> b!2589909 (= e!1633699 e!1633693)))

(declare-fun res!1088829 () Bool)

(assert (=> b!2589909 (=> res!1088829 e!1633693)))

(assert (=> b!2589909 (= res!1088829 (>= (size!23098 lt!910499) lt!910493))))

(assert (=> b!2589909 (= lt!910499 (toList!1736 lt!910500))))

(declare-fun res!1088827 () Bool)

(assert (=> start!250800 (=> (not res!1088827) (not e!1633694))))

(declare-fun noDuplicate!333 (List!29885) Bool)

(assert (=> start!250800 (= res!1088827 (noDuplicate!333 l!3230))))

(assert (=> start!250800 e!1633694))

(declare-fun e!1633695 () Bool)

(assert (=> start!250800 e!1633695))

(declare-fun b!2589910 () Bool)

(declare-fun res!1088833 () Bool)

(assert (=> b!2589910 (=> res!1088833 e!1633698)))

(declare-fun contains!5337 (List!29885 B!1969) Bool)

(assert (=> b!2589910 (= res!1088833 (contains!5337 (t!212898 l!3230) (h!35205 l!3230)))))

(declare-fun b!2589911 () Bool)

(assert (=> b!2589911 (= e!1633697 e!1633699)))

(declare-fun res!1088830 () Bool)

(assert (=> b!2589911 (=> res!1088830 e!1633699)))

(assert (=> b!2589911 (= res!1088830 (not (= (content!4126 l!3230) lt!910500)))))

(assert (=> b!2589911 (= lt!910500 ((_ map or) lt!910496 (store ((as const (Array B!1969 Bool)) false) (h!35205 l!3230) true)))))

(declare-fun b!2589912 () Bool)

(declare-fun res!1088826 () Bool)

(assert (=> b!2589912 (=> res!1088826 e!1633698)))

(assert (=> b!2589912 (= res!1088826 (select lt!910496 (h!35205 l!3230)))))

(declare-fun b!2589913 () Bool)

(declare-fun tp_is_empty!13249 () Bool)

(declare-fun tp!822558 () Bool)

(assert (=> b!2589913 (= e!1633695 (and tp_is_empty!13249 tp!822558))))

(assert (= (and start!250800 res!1088827) b!2589906))

(assert (= (and b!2589906 res!1088832) b!2589903))

(assert (= (and b!2589903 (not res!1088831)) b!2589912))

(assert (= (and b!2589912 (not res!1088826)) b!2589910))

(assert (= (and b!2589910 (not res!1088833)) b!2589904))

(assert (= (and b!2589904 (not res!1088835)) b!2589911))

(assert (= (and b!2589911 (not res!1088830)) b!2589909))

(assert (= (and b!2589909 (not res!1088829)) b!2589908))

(assert (= (and b!2589908 (not res!1088834)) b!2589907))

(assert (= (and b!2589907 (not res!1088828)) b!2589905))

(assert (= (and start!250800 ((_ is Cons!29785) l!3230)) b!2589913))

(declare-fun m!2925997 () Bool)

(assert (=> b!2589903 m!2925997))

(declare-fun m!2925999 () Bool)

(assert (=> b!2589903 m!2925999))

(declare-fun m!2926001 () Bool)

(assert (=> b!2589903 m!2926001))

(assert (=> b!2589903 m!2925997))

(declare-fun m!2926003 () Bool)

(assert (=> b!2589903 m!2926003))

(declare-fun m!2926005 () Bool)

(assert (=> b!2589903 m!2926005))

(declare-fun m!2926007 () Bool)

(assert (=> b!2589903 m!2926007))

(declare-fun m!2926009 () Bool)

(assert (=> b!2589911 m!2926009))

(declare-fun m!2926011 () Bool)

(assert (=> b!2589911 m!2926011))

(declare-fun m!2926013 () Bool)

(assert (=> b!2589910 m!2926013))

(declare-fun m!2926015 () Bool)

(assert (=> start!250800 m!2926015))

(assert (=> b!2589908 m!2926009))

(declare-fun m!2926017 () Bool)

(assert (=> b!2589909 m!2926017))

(declare-fun m!2926019 () Bool)

(assert (=> b!2589909 m!2926019))

(declare-fun m!2926021 () Bool)

(assert (=> b!2589905 m!2926021))

(assert (=> b!2589907 m!2926021))

(assert (=> b!2589907 m!2926021))

(declare-fun m!2926023 () Bool)

(assert (=> b!2589907 m!2926023))

(declare-fun m!2926025 () Bool)

(assert (=> b!2589907 m!2926025))

(declare-fun m!2926027 () Bool)

(assert (=> b!2589912 m!2926027))

(assert (=> b!2589904 m!2926001))

(check-sat (not b!2589905) (not b!2589909) (not b!2589907) (not b!2589911) (not b!2589908) (not b!2589910) tp_is_empty!13249 (not b!2589903) (not b!2589904) (not b!2589913) (not start!250800))
(check-sat)
