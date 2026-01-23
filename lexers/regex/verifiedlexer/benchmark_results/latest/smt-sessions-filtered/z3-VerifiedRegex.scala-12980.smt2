; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713714 () Bool)

(assert start!713714)

(declare-fun b_free!134097 () Bool)

(declare-fun b_next!134887 () Bool)

(assert (=> start!713714 (= b_free!134097 (not b_next!134887))))

(declare-fun tp!2078439 () Bool)

(declare-fun b_and!351505 () Bool)

(assert (=> start!713714 (= tp!2078439 b_and!351505)))

(declare-fun b!7318858 () Bool)

(declare-fun res!2957610 () Bool)

(declare-fun e!4381785 () Bool)

(assert (=> b!7318858 (=> (not res!2957610) (not e!4381785))))

(declare-datatypes ((B!3645 0))(
  ( (B!3646 (val!29263 Int)) )
))
(declare-datatypes ((List!71386 0))(
  ( (Nil!71262) (Cons!71262 (h!77710 B!3645) (t!385621 List!71386)) )
))
(declare-fun l1!805 () List!71386)

(get-info :version)

(assert (=> b!7318858 (= res!2957610 ((_ is Cons!71262) l1!805))))

(declare-fun b!7318859 () Bool)

(declare-fun e!4381784 () Bool)

(declare-fun tp_is_empty!47779 () Bool)

(declare-fun tp!2078440 () Bool)

(assert (=> b!7318859 (= e!4381784 (and tp_is_empty!47779 tp!2078440))))

(declare-fun setNonEmpty!55085 () Bool)

(declare-fun setRes!55086 () Bool)

(declare-fun tp!2078436 () Bool)

(declare-fun tp_is_empty!47777 () Bool)

(assert (=> setNonEmpty!55085 (= setRes!55086 (and tp!2078436 tp_is_empty!47777))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!943 0))(
  ( (A!944 (val!29264 Int)) )
))
(declare-fun s2!417 () (InoxSet A!943))

(declare-fun setElem!55085 () A!943)

(declare-fun setRest!55086 () (InoxSet A!943))

(assert (=> setNonEmpty!55085 (= s2!417 ((_ map or) (store ((as const (Array A!943 Bool)) false) setElem!55085 true) setRest!55086))))

(declare-fun setIsEmpty!55085 () Bool)

(assert (=> setIsEmpty!55085 setRes!55086))

(declare-fun b!7318860 () Bool)

(declare-fun isEmpty!40875 (List!71386) Bool)

(assert (=> b!7318860 (= e!4381785 (not (not (isEmpty!40875 l1!805))))))

(declare-fun lt!2603308 () (InoxSet B!3645))

(declare-fun lt!2603306 () (InoxSet B!3645))

(assert (=> b!7318860 (= (select lt!2603308 (h!77710 l1!805)) (select lt!2603306 (h!77710 l1!805)))))

(declare-datatypes ((Unit!164769 0))(
  ( (Unit!164770) )
))
(declare-fun lt!2603307 () Unit!164769)

(declare-fun s1!446 () (InoxSet A!943))

(declare-fun f!760 () Int)

(declare-fun lemmaFlatMapAssociativeElem!16 ((InoxSet A!943) (InoxSet A!943) Int B!3645) Unit!164769)

(assert (=> b!7318860 (= lt!2603307 (lemmaFlatMapAssociativeElem!16 s1!446 s2!417 f!760 (h!77710 l1!805)))))

(declare-fun b!7318861 () Bool)

(declare-fun e!4381782 () Bool)

(assert (=> b!7318861 (= e!4381782 e!4381785)))

(declare-fun res!2957608 () Bool)

(assert (=> b!7318861 (=> (not res!2957608) (not e!4381785))))

(declare-fun l2!794 () List!71386)

(declare-fun toList!11673 ((InoxSet B!3645)) List!71386)

(assert (=> b!7318861 (= res!2957608 (= l2!794 (toList!11673 lt!2603306)))))

(declare-fun flatMap!3091 ((InoxSet A!943) Int) (InoxSet B!3645))

(assert (=> b!7318861 (= lt!2603306 (flatMap!3091 ((_ map or) s1!446 s2!417) f!760))))

(declare-fun res!2957609 () Bool)

(assert (=> start!713714 (=> (not res!2957609) (not e!4381782))))

(declare-fun subseq!883 (List!71386 List!71386) Bool)

(assert (=> start!713714 (= res!2957609 (subseq!883 l1!805 (toList!11673 lt!2603308)))))

(assert (=> start!713714 (= lt!2603308 ((_ map or) (flatMap!3091 s1!446 f!760) (flatMap!3091 s2!417 f!760)))))

(assert (=> start!713714 e!4381782))

(declare-fun condSetEmpty!55085 () Bool)

(assert (=> start!713714 (= condSetEmpty!55085 (= s2!417 ((as const (Array A!943 Bool)) false)))))

(assert (=> start!713714 setRes!55086))

(declare-fun condSetEmpty!55086 () Bool)

(assert (=> start!713714 (= condSetEmpty!55086 (= s1!446 ((as const (Array A!943 Bool)) false)))))

(declare-fun setRes!55085 () Bool)

(assert (=> start!713714 setRes!55085))

(assert (=> start!713714 tp!2078439))

(assert (=> start!713714 e!4381784))

(declare-fun e!4381783 () Bool)

(assert (=> start!713714 e!4381783))

(declare-fun setIsEmpty!55086 () Bool)

(assert (=> setIsEmpty!55086 setRes!55085))

(declare-fun b!7318862 () Bool)

(declare-fun tp!2078438 () Bool)

(assert (=> b!7318862 (= e!4381783 (and tp_is_empty!47779 tp!2078438))))

(declare-fun setNonEmpty!55086 () Bool)

(declare-fun tp!2078437 () Bool)

(assert (=> setNonEmpty!55086 (= setRes!55085 (and tp!2078437 tp_is_empty!47777))))

(declare-fun setElem!55086 () A!943)

(declare-fun setRest!55085 () (InoxSet A!943))

(assert (=> setNonEmpty!55086 (= s1!446 ((_ map or) (store ((as const (Array A!943 Bool)) false) setElem!55086 true) setRest!55085))))

(assert (= (and start!713714 res!2957609) b!7318861))

(assert (= (and b!7318861 res!2957608) b!7318858))

(assert (= (and b!7318858 res!2957610) b!7318860))

(assert (= (and start!713714 condSetEmpty!55085) setIsEmpty!55085))

(assert (= (and start!713714 (not condSetEmpty!55085)) setNonEmpty!55085))

(assert (= (and start!713714 condSetEmpty!55086) setIsEmpty!55086))

(assert (= (and start!713714 (not condSetEmpty!55086)) setNonEmpty!55086))

(assert (= (and start!713714 ((_ is Cons!71262) l2!794)) b!7318859))

(assert (= (and start!713714 ((_ is Cons!71262) l1!805)) b!7318862))

(declare-fun m!7983660 () Bool)

(assert (=> b!7318860 m!7983660))

(declare-fun m!7983662 () Bool)

(assert (=> b!7318860 m!7983662))

(declare-fun m!7983664 () Bool)

(assert (=> b!7318860 m!7983664))

(declare-fun m!7983666 () Bool)

(assert (=> b!7318860 m!7983666))

(declare-fun m!7983668 () Bool)

(assert (=> b!7318861 m!7983668))

(declare-fun m!7983670 () Bool)

(assert (=> b!7318861 m!7983670))

(declare-fun m!7983672 () Bool)

(assert (=> start!713714 m!7983672))

(assert (=> start!713714 m!7983672))

(declare-fun m!7983674 () Bool)

(assert (=> start!713714 m!7983674))

(declare-fun m!7983676 () Bool)

(assert (=> start!713714 m!7983676))

(declare-fun m!7983678 () Bool)

(assert (=> start!713714 m!7983678))

(check-sat b_and!351505 (not setNonEmpty!55085) (not start!713714) (not b!7318860) (not b!7318862) tp_is_empty!47779 tp_is_empty!47777 (not b_next!134887) (not setNonEmpty!55086) (not b!7318861) (not b!7318859))
(check-sat b_and!351505 (not b_next!134887))
(get-model)

(declare-fun d!2272735 () Bool)

(assert (=> d!2272735 (= (isEmpty!40875 l1!805) ((_ is Nil!71262) l1!805))))

(assert (=> b!7318860 d!2272735))

(declare-fun d!2272737 () Bool)

(assert (=> d!2272737 (= (select ((_ map or) (flatMap!3091 s1!446 f!760) (flatMap!3091 s2!417 f!760)) (h!77710 l1!805)) (select (flatMap!3091 ((_ map or) s1!446 s2!417) f!760) (h!77710 l1!805)))))

(declare-fun lt!2603311 () Unit!164769)

(declare-fun choose!56818 ((InoxSet A!943) (InoxSet A!943) Int B!3645) Unit!164769)

(assert (=> d!2272737 (= lt!2603311 (choose!56818 s1!446 s2!417 f!760 (h!77710 l1!805)))))

(assert (=> d!2272737 (= (lemmaFlatMapAssociativeElem!16 s1!446 s2!417 f!760 (h!77710 l1!805)) lt!2603311)))

(declare-fun bs!1915667 () Bool)

(assert (= bs!1915667 d!2272737))

(assert (=> bs!1915667 m!7983678))

(assert (=> bs!1915667 m!7983676))

(declare-fun m!7983680 () Bool)

(assert (=> bs!1915667 m!7983680))

(declare-fun m!7983682 () Bool)

(assert (=> bs!1915667 m!7983682))

(declare-fun m!7983684 () Bool)

(assert (=> bs!1915667 m!7983684))

(assert (=> bs!1915667 m!7983670))

(assert (=> b!7318860 d!2272737))

(declare-fun b!7318884 () Bool)

(declare-fun e!4381806 () Bool)

(declare-fun e!4381809 () Bool)

(assert (=> b!7318884 (= e!4381806 e!4381809)))

(declare-fun res!2957631 () Bool)

(assert (=> b!7318884 (=> (not res!2957631) (not e!4381809))))

(assert (=> b!7318884 (= res!2957631 ((_ is Cons!71262) (toList!11673 lt!2603308)))))

(declare-fun b!7318886 () Bool)

(declare-fun e!4381808 () Bool)

(assert (=> b!7318886 (= e!4381808 (subseq!883 (t!385621 l1!805) (t!385621 (toList!11673 lt!2603308))))))

(declare-fun b!7318887 () Bool)

(declare-fun e!4381807 () Bool)

(assert (=> b!7318887 (= e!4381807 (subseq!883 l1!805 (t!385621 (toList!11673 lt!2603308))))))

(declare-fun d!2272739 () Bool)

(declare-fun res!2957633 () Bool)

(assert (=> d!2272739 (=> res!2957633 e!4381806)))

(assert (=> d!2272739 (= res!2957633 ((_ is Nil!71262) l1!805))))

(assert (=> d!2272739 (= (subseq!883 l1!805 (toList!11673 lt!2603308)) e!4381806)))

(declare-fun b!7318885 () Bool)

(assert (=> b!7318885 (= e!4381809 e!4381807)))

(declare-fun res!2957634 () Bool)

(assert (=> b!7318885 (=> res!2957634 e!4381807)))

(assert (=> b!7318885 (= res!2957634 e!4381808)))

(declare-fun res!2957632 () Bool)

(assert (=> b!7318885 (=> (not res!2957632) (not e!4381808))))

(assert (=> b!7318885 (= res!2957632 (= (h!77710 l1!805) (h!77710 (toList!11673 lt!2603308))))))

(assert (= (and d!2272739 (not res!2957633)) b!7318884))

(assert (= (and b!7318884 res!2957631) b!7318885))

(assert (= (and b!7318885 res!2957632) b!7318886))

(assert (= (and b!7318885 (not res!2957634)) b!7318887))

(declare-fun m!7983690 () Bool)

(assert (=> b!7318886 m!7983690))

(declare-fun m!7983692 () Bool)

(assert (=> b!7318887 m!7983692))

(assert (=> start!713714 d!2272739))

(declare-fun d!2272743 () Bool)

(declare-fun e!4381815 () Bool)

(assert (=> d!2272743 e!4381815))

(declare-fun res!2957640 () Bool)

(assert (=> d!2272743 (=> (not res!2957640) (not e!4381815))))

(declare-fun lt!2603317 () List!71386)

(declare-fun noDuplicate!3075 (List!71386) Bool)

(assert (=> d!2272743 (= res!2957640 (noDuplicate!3075 lt!2603317))))

(declare-fun choose!56819 ((InoxSet B!3645)) List!71386)

(assert (=> d!2272743 (= lt!2603317 (choose!56819 lt!2603308))))

(assert (=> d!2272743 (= (toList!11673 lt!2603308) lt!2603317)))

(declare-fun b!7318893 () Bool)

(declare-fun content!14894 (List!71386) (InoxSet B!3645))

(assert (=> b!7318893 (= e!4381815 (= (content!14894 lt!2603317) lt!2603308))))

(assert (= (and d!2272743 res!2957640) b!7318893))

(declare-fun m!7983694 () Bool)

(assert (=> d!2272743 m!7983694))

(declare-fun m!7983696 () Bool)

(assert (=> d!2272743 m!7983696))

(declare-fun m!7983698 () Bool)

(assert (=> b!7318893 m!7983698))

(assert (=> start!713714 d!2272743))

(declare-fun d!2272745 () Bool)

(declare-fun choose!56820 ((InoxSet A!943) Int) (InoxSet B!3645))

(assert (=> d!2272745 (= (flatMap!3091 s1!446 f!760) (choose!56820 s1!446 f!760))))

(declare-fun bs!1915668 () Bool)

(assert (= bs!1915668 d!2272745))

(declare-fun m!7983706 () Bool)

(assert (=> bs!1915668 m!7983706))

(assert (=> start!713714 d!2272745))

(declare-fun d!2272749 () Bool)

(assert (=> d!2272749 (= (flatMap!3091 s2!417 f!760) (choose!56820 s2!417 f!760))))

(declare-fun bs!1915669 () Bool)

(assert (= bs!1915669 d!2272749))

(declare-fun m!7983708 () Bool)

(assert (=> bs!1915669 m!7983708))

(assert (=> start!713714 d!2272749))

(declare-fun d!2272751 () Bool)

(declare-fun e!4381816 () Bool)

(assert (=> d!2272751 e!4381816))

(declare-fun res!2957641 () Bool)

(assert (=> d!2272751 (=> (not res!2957641) (not e!4381816))))

(declare-fun lt!2603318 () List!71386)

(assert (=> d!2272751 (= res!2957641 (noDuplicate!3075 lt!2603318))))

(assert (=> d!2272751 (= lt!2603318 (choose!56819 lt!2603306))))

(assert (=> d!2272751 (= (toList!11673 lt!2603306) lt!2603318)))

(declare-fun b!7318894 () Bool)

(assert (=> b!7318894 (= e!4381816 (= (content!14894 lt!2603318) lt!2603306))))

(assert (= (and d!2272751 res!2957641) b!7318894))

(declare-fun m!7983710 () Bool)

(assert (=> d!2272751 m!7983710))

(declare-fun m!7983712 () Bool)

(assert (=> d!2272751 m!7983712))

(declare-fun m!7983714 () Bool)

(assert (=> b!7318894 m!7983714))

(assert (=> b!7318861 d!2272751))

(declare-fun d!2272753 () Bool)

(assert (=> d!2272753 (= (flatMap!3091 ((_ map or) s1!446 s2!417) f!760) (choose!56820 ((_ map or) s1!446 s2!417) f!760))))

(declare-fun bs!1915670 () Bool)

(assert (= bs!1915670 d!2272753))

(declare-fun m!7983716 () Bool)

(assert (=> bs!1915670 m!7983716))

(assert (=> b!7318861 d!2272753))

(declare-fun b!7318899 () Bool)

(declare-fun e!4381819 () Bool)

(declare-fun tp!2078443 () Bool)

(assert (=> b!7318899 (= e!4381819 (and tp_is_empty!47779 tp!2078443))))

(assert (=> b!7318859 (= tp!2078440 e!4381819)))

(assert (= (and b!7318859 ((_ is Cons!71262) (t!385621 l2!794))) b!7318899))

(declare-fun b!7318900 () Bool)

(declare-fun e!4381820 () Bool)

(declare-fun tp!2078444 () Bool)

(assert (=> b!7318900 (= e!4381820 (and tp_is_empty!47779 tp!2078444))))

(assert (=> b!7318862 (= tp!2078438 e!4381820)))

(assert (= (and b!7318862 ((_ is Cons!71262) (t!385621 l1!805))) b!7318900))

(declare-fun condSetEmpty!55089 () Bool)

(assert (=> setNonEmpty!55085 (= condSetEmpty!55089 (= setRest!55086 ((as const (Array A!943 Bool)) false)))))

(declare-fun setRes!55089 () Bool)

(assert (=> setNonEmpty!55085 (= tp!2078436 setRes!55089)))

(declare-fun setIsEmpty!55089 () Bool)

(assert (=> setIsEmpty!55089 setRes!55089))

(declare-fun setNonEmpty!55089 () Bool)

(declare-fun tp!2078447 () Bool)

(assert (=> setNonEmpty!55089 (= setRes!55089 (and tp!2078447 tp_is_empty!47777))))

(declare-fun setElem!55089 () A!943)

(declare-fun setRest!55089 () (InoxSet A!943))

(assert (=> setNonEmpty!55089 (= setRest!55086 ((_ map or) (store ((as const (Array A!943 Bool)) false) setElem!55089 true) setRest!55089))))

(assert (= (and setNonEmpty!55085 condSetEmpty!55089) setIsEmpty!55089))

(assert (= (and setNonEmpty!55085 (not condSetEmpty!55089)) setNonEmpty!55089))

(declare-fun condSetEmpty!55090 () Bool)

(assert (=> setNonEmpty!55086 (= condSetEmpty!55090 (= setRest!55085 ((as const (Array A!943 Bool)) false)))))

(declare-fun setRes!55090 () Bool)

(assert (=> setNonEmpty!55086 (= tp!2078437 setRes!55090)))

(declare-fun setIsEmpty!55090 () Bool)

(assert (=> setIsEmpty!55090 setRes!55090))

(declare-fun setNonEmpty!55090 () Bool)

(declare-fun tp!2078448 () Bool)

(assert (=> setNonEmpty!55090 (= setRes!55090 (and tp!2078448 tp_is_empty!47777))))

(declare-fun setElem!55090 () A!943)

(declare-fun setRest!55090 () (InoxSet A!943))

(assert (=> setNonEmpty!55090 (= setRest!55085 ((_ map or) (store ((as const (Array A!943 Bool)) false) setElem!55090 true) setRest!55090))))

(assert (= (and setNonEmpty!55086 condSetEmpty!55090) setIsEmpty!55090))

(assert (= (and setNonEmpty!55086 (not condSetEmpty!55090)) setNonEmpty!55090))

(check-sat b_and!351505 (not setNonEmpty!55089) (not b!7318900) (not d!2272753) (not d!2272743) (not d!2272745) tp_is_empty!47779 (not b!7318899) (not b_next!134887) (not b!7318894) (not d!2272749) (not d!2272751) (not b!7318886) (not d!2272737) (not setNonEmpty!55090) (not b!7318887) (not b!7318893) tp_is_empty!47777)
(check-sat b_and!351505 (not b_next!134887))
