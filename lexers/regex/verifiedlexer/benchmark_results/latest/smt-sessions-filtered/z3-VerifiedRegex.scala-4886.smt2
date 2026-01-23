; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250796 () Bool)

(assert start!250796)

(declare-fun b!2589833 () Bool)

(assert (=> b!2589833 true))

(declare-fun b!2589832 () Bool)

(declare-fun res!1088772 () Bool)

(declare-fun e!1633641 () Bool)

(assert (=> b!2589832 (=> (not res!1088772) (not e!1633641))))

(declare-datatypes ((B!1965 0))(
  ( (B!1966 (val!9450 Int)) )
))
(declare-datatypes ((List!29883 0))(
  ( (Nil!29783) (Cons!29783 (h!35203 B!1965) (t!212896 List!29883)) )
))
(declare-fun l!3230 () List!29883)

(get-info :version)

(assert (=> b!2589832 (= res!1088772 ((_ is Cons!29783) l!3230))))

(declare-fun res!1088766 () Bool)

(declare-fun e!1633639 () Bool)

(assert (=> b!2589833 (=> res!1088766 e!1633639)))

(declare-fun lt!910440 () List!29883)

(declare-fun lambda!95878 () Int)

(declare-fun forall!6069 (List!29883 Int) Bool)

(assert (=> b!2589833 (= res!1088766 (not (forall!6069 lt!910440 lambda!95878)))))

(declare-fun b!2589834 () Bool)

(declare-fun e!1633643 () Bool)

(assert (=> b!2589834 (= e!1633643 e!1633639)))

(declare-fun res!1088773 () Bool)

(assert (=> b!2589834 (=> res!1088773 e!1633639)))

(declare-fun noDuplicate!331 (List!29883) Bool)

(assert (=> b!2589834 (= res!1088773 (not (noDuplicate!331 lt!910440)))))

(declare-datatypes ((Unit!43654 0))(
  ( (Unit!43655) )
))
(declare-fun lt!910442 () Unit!43654)

(declare-fun subsetContains!26 (List!29883 List!29883) Unit!43654)

(assert (=> b!2589834 (= lt!910442 (subsetContains!26 lt!910440 l!3230))))

(declare-fun b!2589835 () Bool)

(declare-fun e!1633644 () Bool)

(declare-fun e!1633642 () Bool)

(assert (=> b!2589835 (= e!1633644 e!1633642)))

(declare-fun res!1088768 () Bool)

(assert (=> b!2589835 (=> res!1088768 e!1633642)))

(declare-fun lt!910447 () Int)

(declare-fun size!23096 (List!29883) Int)

(assert (=> b!2589835 (= res!1088768 (not (= (size!23096 l!3230) lt!910447)))))

(declare-fun lt!910439 () Int)

(assert (=> b!2589835 (= lt!910447 (+ 1 lt!910439))))

(declare-fun b!2589836 () Bool)

(declare-fun e!1633645 () Bool)

(declare-fun tp_is_empty!13245 () Bool)

(declare-fun tp!822552 () Bool)

(assert (=> b!2589836 (= e!1633645 (and tp_is_empty!13245 tp!822552))))

(declare-fun b!2589837 () Bool)

(assert (=> b!2589837 (= e!1633641 (not e!1633644))))

(declare-fun res!1088767 () Bool)

(assert (=> b!2589837 (=> res!1088767 e!1633644)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!910445 () (InoxSet B!1965))

(declare-fun lt!910444 () Int)

(declare-fun lt!910446 () Int)

(assert (=> b!2589837 (= res!1088767 (or (>= lt!910446 lt!910444) (select lt!910445 (h!35203 l!3230))))))

(assert (=> b!2589837 (= lt!910444 (size!23096 l!3230))))

(assert (=> b!2589837 (= lt!910446 lt!910439)))

(assert (=> b!2589837 (= lt!910439 (size!23096 (t!212896 l!3230)))))

(declare-fun toList!1734 ((InoxSet B!1965)) List!29883)

(assert (=> b!2589837 (= lt!910446 (size!23096 (toList!1734 lt!910445)))))

(declare-fun content!4124 (List!29883) (InoxSet B!1965))

(assert (=> b!2589837 (= lt!910445 (content!4124 (t!212896 l!3230)))))

(declare-fun lt!910443 () Unit!43654)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!24 (List!29883) Unit!43654)

(assert (=> b!2589837 (= lt!910443 (lemmaNoDuplicateThenContentToListSameSize!24 (t!212896 l!3230)))))

(declare-fun res!1088774 () Bool)

(assert (=> start!250796 (=> (not res!1088774) (not e!1633641))))

(assert (=> start!250796 (= res!1088774 (noDuplicate!331 l!3230))))

(assert (=> start!250796 e!1633641))

(assert (=> start!250796 e!1633645))

(declare-fun b!2589838 () Bool)

(assert (=> b!2589838 (= e!1633639 (forall!6069 lt!910440 lambda!95878))))

(declare-fun b!2589839 () Bool)

(declare-fun res!1088771 () Bool)

(assert (=> b!2589839 (=> res!1088771 e!1633639)))

(declare-fun lt!910438 () Int)

(assert (=> b!2589839 (= res!1088771 (<= lt!910444 lt!910438))))

(declare-fun b!2589840 () Bool)

(declare-fun res!1088765 () Bool)

(assert (=> b!2589840 (=> res!1088765 e!1633643)))

(declare-fun lt!910441 () (InoxSet B!1965))

(assert (=> b!2589840 (= res!1088765 (not (= lt!910441 (content!4124 l!3230))))))

(declare-fun b!2589841 () Bool)

(declare-fun res!1088770 () Bool)

(assert (=> b!2589841 (=> res!1088770 e!1633644)))

(declare-fun contains!5335 (List!29883 B!1965) Bool)

(assert (=> b!2589841 (= res!1088770 (contains!5335 (t!212896 l!3230) (h!35203 l!3230)))))

(declare-fun b!2589842 () Bool)

(declare-fun e!1633640 () Bool)

(assert (=> b!2589842 (= e!1633642 e!1633640)))

(declare-fun res!1088775 () Bool)

(assert (=> b!2589842 (=> res!1088775 e!1633640)))

(assert (=> b!2589842 (= res!1088775 (not (= (content!4124 l!3230) lt!910441)))))

(assert (=> b!2589842 (= lt!910441 ((_ map or) lt!910445 (store ((as const (Array B!1965 Bool)) false) (h!35203 l!3230) true)))))

(declare-fun b!2589843 () Bool)

(assert (=> b!2589843 (= e!1633640 e!1633643)))

(declare-fun res!1088769 () Bool)

(assert (=> b!2589843 (=> res!1088769 e!1633643)))

(assert (=> b!2589843 (= res!1088769 (>= lt!910438 lt!910447))))

(assert (=> b!2589843 (= lt!910438 (size!23096 lt!910440))))

(assert (=> b!2589843 (= lt!910440 (toList!1734 lt!910441))))

(assert (= (and start!250796 res!1088774) b!2589832))

(assert (= (and b!2589832 res!1088772) b!2589837))

(assert (= (and b!2589837 (not res!1088767)) b!2589841))

(assert (= (and b!2589841 (not res!1088770)) b!2589835))

(assert (= (and b!2589835 (not res!1088768)) b!2589842))

(assert (= (and b!2589842 (not res!1088775)) b!2589843))

(assert (= (and b!2589843 (not res!1088769)) b!2589840))

(assert (= (and b!2589840 (not res!1088765)) b!2589834))

(assert (= (and b!2589834 (not res!1088773)) b!2589839))

(assert (= (and b!2589839 (not res!1088771)) b!2589833))

(assert (= (and b!2589833 (not res!1088766)) b!2589838))

(assert (= (and start!250796 ((_ is Cons!29783) l!3230)) b!2589836))

(declare-fun m!2925933 () Bool)

(assert (=> b!2589834 m!2925933))

(declare-fun m!2925935 () Bool)

(assert (=> b!2589834 m!2925935))

(declare-fun m!2925937 () Bool)

(assert (=> b!2589842 m!2925937))

(declare-fun m!2925939 () Bool)

(assert (=> b!2589842 m!2925939))

(declare-fun m!2925941 () Bool)

(assert (=> b!2589841 m!2925941))

(declare-fun m!2925943 () Bool)

(assert (=> start!250796 m!2925943))

(declare-fun m!2925945 () Bool)

(assert (=> b!2589838 m!2925945))

(declare-fun m!2925947 () Bool)

(assert (=> b!2589843 m!2925947))

(declare-fun m!2925949 () Bool)

(assert (=> b!2589843 m!2925949))

(declare-fun m!2925951 () Bool)

(assert (=> b!2589835 m!2925951))

(assert (=> b!2589833 m!2925945))

(assert (=> b!2589840 m!2925937))

(declare-fun m!2925953 () Bool)

(assert (=> b!2589837 m!2925953))

(assert (=> b!2589837 m!2925951))

(declare-fun m!2925955 () Bool)

(assert (=> b!2589837 m!2925955))

(declare-fun m!2925957 () Bool)

(assert (=> b!2589837 m!2925957))

(declare-fun m!2925959 () Bool)

(assert (=> b!2589837 m!2925959))

(declare-fun m!2925961 () Bool)

(assert (=> b!2589837 m!2925961))

(declare-fun m!2925963 () Bool)

(assert (=> b!2589837 m!2925963))

(assert (=> b!2589837 m!2925955))

(check-sat tp_is_empty!13245 (not b!2589834) (not b!2589838) (not b!2589840) (not b!2589835) (not b!2589836) (not b!2589833) (not b!2589843) (not b!2589837) (not b!2589841) (not b!2589842) (not start!250796))
(check-sat)
