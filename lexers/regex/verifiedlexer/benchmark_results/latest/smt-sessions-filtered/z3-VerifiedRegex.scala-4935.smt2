; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251624 () Bool)

(assert start!251624)

(declare-fun b!2594925 () Bool)

(assert (=> b!2594925 true))

(declare-fun b!2594924 () Bool)

(declare-fun m!2930991 () Bool)

(assert (=> b!2594924 m!2930991))

(declare-fun bs!472658 () Bool)

(assert (= bs!472658 (and b!2594924 b!2594925)))

(declare-datatypes ((B!2161 0))(
  ( (B!2162 (val!9548 Int)) )
))
(declare-datatypes ((List!29981 0))(
  ( (Nil!29881) (Cons!29881 (h!35301 B!2161) (t!212994 List!29981)) )
))
(declare-fun l1!1546 () List!29981)

(declare-fun lambda!96698 () Int)

(declare-fun lambda!96697 () Int)

(declare-fun tail!4147 (List!29981) List!29981)

(assert (=> bs!472658 (= (= (tail!4147 l1!1546) l1!1546) (= lambda!96698 lambda!96697))))

(assert (=> b!2594924 true))

(declare-fun lambda!96699 () Int)

(assert (=> bs!472658 (= (= (t!212994 l1!1546) l1!1546) (= lambda!96699 lambda!96697))))

(assert (=> b!2594924 (= (= (t!212994 l1!1546) (tail!4147 l1!1546)) (= lambda!96699 lambda!96698))))

(assert (=> b!2594924 true))

(declare-fun bs!472659 () Bool)

(declare-fun b!2594917 () Bool)

(assert (= bs!472659 (and b!2594917 b!2594925)))

(declare-fun lambda!96700 () Int)

(assert (=> bs!472659 (not (= lambda!96700 lambda!96697))))

(declare-fun bs!472660 () Bool)

(assert (= bs!472660 (and b!2594917 b!2594924)))

(assert (=> bs!472660 (not (= lambda!96700 lambda!96698))))

(assert (=> bs!472660 (not (= lambda!96700 lambda!96699))))

(assert (=> b!2594917 true))

(declare-fun b!2594916 () Bool)

(declare-fun res!1091900 () Bool)

(declare-fun e!1637334 () Bool)

(assert (=> b!2594916 (=> (not res!1091900) (not e!1637334))))

(declare-fun l2!1515 () List!29981)

(declare-fun contains!5429 (List!29981 B!2161) Bool)

(assert (=> b!2594916 (= res!1091900 (contains!5429 l2!1515 (h!35301 l1!1546)))))

(declare-fun e!1637337 () Bool)

(declare-fun exists!930 (List!29981 Int) Bool)

(assert (=> b!2594917 (= e!1637337 (exists!930 (t!212994 l1!1546) lambda!96700))))

(assert (=> b!2594917 (exists!930 (t!212994 l1!1546) lambda!96700)))

(declare-datatypes ((Unit!43916 0))(
  ( (Unit!43917) )
))
(declare-fun lt!913683 () Unit!43916)

(declare-fun lt!913682 () List!29981)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!46 (List!29981 List!29981) Unit!43916)

(assert (=> b!2594917 (= lt!913683 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!46 (t!212994 l1!1546) lt!913682))))

(declare-fun b!2594918 () Bool)

(declare-fun res!1091903 () Bool)

(declare-fun e!1637335 () Bool)

(assert (=> b!2594918 (=> (not res!1091903) (not e!1637335))))

(declare-fun noDuplicate!429 (List!29981) Bool)

(assert (=> b!2594918 (= res!1091903 (noDuplicate!429 l2!1515))))

(declare-fun b!2594919 () Bool)

(declare-fun e!1637336 () Bool)

(declare-fun tp_is_empty!13441 () Bool)

(declare-fun tp!823068 () Bool)

(assert (=> b!2594919 (= e!1637336 (and tp_is_empty!13441 tp!823068))))

(declare-fun b!2594920 () Bool)

(declare-fun e!1637339 () Bool)

(assert (=> b!2594920 (= e!1637334 (not e!1637339))))

(declare-fun res!1091901 () Bool)

(assert (=> b!2594920 (=> res!1091901 e!1637339)))

(declare-fun forall!6118 (List!29981 Int) Bool)

(assert (=> b!2594920 (= res!1091901 (not (forall!6118 lt!913682 lambda!96697)))))

(declare-fun lt!913686 () Int)

(declare-fun size!23186 (List!29981) Int)

(assert (=> b!2594920 (= (size!23186 lt!913682) (- lt!913686 1))))

(declare-fun lt!913687 () Unit!43916)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!20 (List!29981 B!2161) Unit!43916)

(assert (=> b!2594920 (= lt!913687 (lemmaRemoveElmtNoDuplicateRemoveOne!20 l2!1515 (h!35301 l1!1546)))))

(assert (=> b!2594920 (forall!6118 lt!913682 lambda!96697)))

(declare-fun lt!913688 () Unit!43916)

(declare-fun lemmaRemoveElmtMaintainsForall!22 (List!29981 B!2161 Int) Unit!43916)

(assert (=> b!2594920 (= lt!913688 (lemmaRemoveElmtMaintainsForall!22 l2!1515 (h!35301 l1!1546) lambda!96697))))

(assert (=> b!2594920 (noDuplicate!429 lt!913682)))

(declare-fun -!158 (List!29981 B!2161) List!29981)

(assert (=> b!2594920 (= lt!913682 (-!158 l2!1515 (h!35301 l1!1546)))))

(declare-fun lt!913685 () Unit!43916)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!24 (List!29981 B!2161) Unit!43916)

(assert (=> b!2594920 (= lt!913685 (lemmaRemoveElmtMaintainsNoDuplicate!24 l2!1515 (h!35301 l1!1546)))))

(declare-fun b!2594922 () Bool)

(declare-fun res!1091899 () Bool)

(assert (=> b!2594922 (=> (not res!1091899) (not e!1637334))))

(get-info :version)

(assert (=> b!2594922 (= res!1091899 ((_ is Cons!29881) l1!1546))))

(declare-fun b!2594923 () Bool)

(declare-fun e!1637338 () Bool)

(declare-fun tp!823067 () Bool)

(assert (=> b!2594923 (= e!1637338 (and tp_is_empty!13441 tp!823067))))

(assert (=> b!2594924 (= e!1637339 e!1637337)))

(declare-fun res!1091898 () Bool)

(assert (=> b!2594924 (=> res!1091898 e!1637337)))

(assert (=> b!2594924 (= res!1091898 (not (forall!6118 lt!913682 lambda!96699)))))

(assert (=> b!2594924 (forall!6118 lt!913682 lambda!96698)))

(declare-fun lt!913689 () Unit!43916)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!12 (List!29981 List!29981 B!2161) Unit!43916)

(assert (=> b!2594924 (= lt!913689 (lemmaForallContainsThenForTailIfContainsNotHead!12 lt!913682 l1!1546 (h!35301 l1!1546)))))

(declare-fun res!1091905 () Bool)

(assert (=> b!2594925 (=> (not res!1091905) (not e!1637334))))

(assert (=> b!2594925 (= res!1091905 (forall!6118 l2!1515 lambda!96697))))

(declare-fun res!1091904 () Bool)

(assert (=> start!251624 (=> (not res!1091904) (not e!1637335))))

(assert (=> start!251624 (= res!1091904 (noDuplicate!429 l1!1546))))

(assert (=> start!251624 e!1637335))

(assert (=> start!251624 e!1637336))

(assert (=> start!251624 e!1637338))

(declare-fun b!2594921 () Bool)

(assert (=> b!2594921 (= e!1637335 e!1637334)))

(declare-fun res!1091902 () Bool)

(assert (=> b!2594921 (=> (not res!1091902) (not e!1637334))))

(declare-fun lt!913684 () Int)

(assert (=> b!2594921 (= res!1091902 (> lt!913684 lt!913686))))

(assert (=> b!2594921 (= lt!913686 (size!23186 l2!1515))))

(assert (=> b!2594921 (= lt!913684 (size!23186 l1!1546))))

(assert (= (and start!251624 res!1091904) b!2594918))

(assert (= (and b!2594918 res!1091903) b!2594921))

(assert (= (and b!2594921 res!1091902) b!2594925))

(assert (= (and b!2594925 res!1091905) b!2594922))

(assert (= (and b!2594922 res!1091899) b!2594916))

(assert (= (and b!2594916 res!1091900) b!2594920))

(assert (= (and b!2594920 (not res!1091901)) b!2594924))

(assert (= (and b!2594924 (not res!1091898)) b!2594917))

(assert (= (and start!251624 ((_ is Cons!29881) l1!1546)) b!2594919))

(assert (= (and start!251624 ((_ is Cons!29881) l2!1515)) b!2594923))

(declare-fun m!2930993 () Bool)

(assert (=> b!2594920 m!2930993))

(declare-fun m!2930995 () Bool)

(assert (=> b!2594920 m!2930995))

(declare-fun m!2930997 () Bool)

(assert (=> b!2594920 m!2930997))

(declare-fun m!2930999 () Bool)

(assert (=> b!2594920 m!2930999))

(declare-fun m!2931001 () Bool)

(assert (=> b!2594920 m!2931001))

(declare-fun m!2931003 () Bool)

(assert (=> b!2594920 m!2931003))

(assert (=> b!2594920 m!2930993))

(declare-fun m!2931005 () Bool)

(assert (=> b!2594920 m!2931005))

(declare-fun m!2931007 () Bool)

(assert (=> start!251624 m!2931007))

(declare-fun m!2931009 () Bool)

(assert (=> b!2594917 m!2931009))

(assert (=> b!2594917 m!2931009))

(declare-fun m!2931011 () Bool)

(assert (=> b!2594917 m!2931011))

(declare-fun m!2931013 () Bool)

(assert (=> b!2594918 m!2931013))

(declare-fun m!2931015 () Bool)

(assert (=> b!2594916 m!2931015))

(declare-fun m!2931017 () Bool)

(assert (=> b!2594921 m!2931017))

(declare-fun m!2931019 () Bool)

(assert (=> b!2594921 m!2931019))

(declare-fun m!2931021 () Bool)

(assert (=> b!2594925 m!2931021))

(declare-fun m!2931023 () Bool)

(assert (=> b!2594924 m!2931023))

(declare-fun m!2931025 () Bool)

(assert (=> b!2594924 m!2931025))

(declare-fun m!2931027 () Bool)

(assert (=> b!2594924 m!2931027))

(check-sat (not b!2594917) (not b!2594919) (not b!2594916) (not b!2594921) (not b!2594925) (not b!2594920) (not start!251624) (not b!2594923) (not b!2594918) tp_is_empty!13441 (not b!2594924))
(check-sat)
