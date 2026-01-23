; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713738 () Bool)

(assert start!713738)

(declare-fun b_free!134101 () Bool)

(declare-fun b_next!134891 () Bool)

(assert (=> start!713738 (= b_free!134101 (not b_next!134891))))

(declare-fun tp!2078485 () Bool)

(declare-fun b_and!351509 () Bool)

(assert (=> start!713738 (= tp!2078485 b_and!351509)))

(declare-fun b!7318938 () Bool)

(declare-fun res!2957659 () Bool)

(declare-fun e!4381848 () Bool)

(assert (=> b!7318938 (=> (not res!2957659) (not e!4381848))))

(declare-datatypes ((B!3649 0))(
  ( (B!3650 (val!29267 Int)) )
))
(declare-datatypes ((List!71388 0))(
  ( (Nil!71264) (Cons!71264 (h!77712 B!3649) (t!385623 List!71388)) )
))
(declare-fun l1!805 () List!71388)

(get-info :version)

(assert (=> b!7318938 (= res!2957659 ((_ is Cons!71264) l1!805))))

(declare-fun setIsEmpty!55105 () Bool)

(declare-fun setRes!55106 () Bool)

(assert (=> setIsEmpty!55105 setRes!55106))

(declare-fun res!2957658 () Bool)

(declare-fun e!4381847 () Bool)

(assert (=> start!713738 (=> (not res!2957658) (not e!4381847))))

(declare-fun lt!2603350 () List!71388)

(declare-fun subseq!885 (List!71388 List!71388) Bool)

(assert (=> start!713738 (= res!2957658 (subseq!885 l1!805 lt!2603350))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2603348 () (InoxSet B!3649))

(declare-fun toList!11675 ((InoxSet B!3649)) List!71388)

(assert (=> start!713738 (= lt!2603350 (toList!11675 lt!2603348))))

(declare-datatypes ((A!947 0))(
  ( (A!948 (val!29268 Int)) )
))
(declare-fun s2!417 () (InoxSet A!947))

(declare-fun s1!446 () (InoxSet A!947))

(declare-fun f!760 () Int)

(declare-fun flatMap!3093 ((InoxSet A!947) Int) (InoxSet B!3649))

(assert (=> start!713738 (= lt!2603348 ((_ map or) (flatMap!3093 s1!446 f!760) (flatMap!3093 s2!417 f!760)))))

(assert (=> start!713738 e!4381847))

(declare-fun condSetEmpty!55105 () Bool)

(assert (=> start!713738 (= condSetEmpty!55105 (= s2!417 ((as const (Array A!947 Bool)) false)))))

(declare-fun setRes!55105 () Bool)

(assert (=> start!713738 setRes!55105))

(declare-fun condSetEmpty!55106 () Bool)

(assert (=> start!713738 (= condSetEmpty!55106 (= s1!446 ((as const (Array A!947 Bool)) false)))))

(assert (=> start!713738 setRes!55106))

(assert (=> start!713738 tp!2078485))

(declare-fun e!4381849 () Bool)

(assert (=> start!713738 e!4381849))

(declare-fun e!4381846 () Bool)

(assert (=> start!713738 e!4381846))

(declare-fun b!7318939 () Bool)

(assert (=> b!7318939 (= e!4381848 (not true))))

(declare-datatypes ((Unit!164773 0))(
  ( (Unit!164774) )
))
(declare-fun lt!2603351 () Unit!164773)

(declare-fun subseqTail!100 (List!71388 List!71388) Unit!164773)

(assert (=> b!7318939 (= lt!2603351 (subseqTail!100 l1!805 lt!2603350))))

(declare-fun lt!2603352 () (InoxSet B!3649))

(assert (=> b!7318939 (= (select lt!2603348 (h!77712 l1!805)) (select lt!2603352 (h!77712 l1!805)))))

(declare-fun lt!2603349 () Unit!164773)

(declare-fun lemmaFlatMapAssociativeElem!18 ((InoxSet A!947) (InoxSet A!947) Int B!3649) Unit!164773)

(assert (=> b!7318939 (= lt!2603349 (lemmaFlatMapAssociativeElem!18 s1!446 s2!417 f!760 (h!77712 l1!805)))))

(declare-fun b!7318940 () Bool)

(assert (=> b!7318940 (= e!4381847 e!4381848)))

(declare-fun res!2957660 () Bool)

(assert (=> b!7318940 (=> (not res!2957660) (not e!4381848))))

(declare-fun l2!794 () List!71388)

(assert (=> b!7318940 (= res!2957660 (= l2!794 (toList!11675 lt!2603352)))))

(assert (=> b!7318940 (= lt!2603352 (flatMap!3093 ((_ map or) s1!446 s2!417) f!760))))

(declare-fun setNonEmpty!55105 () Bool)

(declare-fun tp!2078483 () Bool)

(declare-fun tp_is_empty!47785 () Bool)

(assert (=> setNonEmpty!55105 (= setRes!55105 (and tp!2078483 tp_is_empty!47785))))

(declare-fun setElem!55106 () A!947)

(declare-fun setRest!55106 () (InoxSet A!947))

(assert (=> setNonEmpty!55105 (= s2!417 ((_ map or) (store ((as const (Array A!947 Bool)) false) setElem!55106 true) setRest!55106))))

(declare-fun setNonEmpty!55106 () Bool)

(declare-fun tp!2078486 () Bool)

(assert (=> setNonEmpty!55106 (= setRes!55106 (and tp!2078486 tp_is_empty!47785))))

(declare-fun setElem!55105 () A!947)

(declare-fun setRest!55105 () (InoxSet A!947))

(assert (=> setNonEmpty!55106 (= s1!446 ((_ map or) (store ((as const (Array A!947 Bool)) false) setElem!55105 true) setRest!55105))))

(declare-fun setIsEmpty!55106 () Bool)

(assert (=> setIsEmpty!55106 setRes!55105))

(declare-fun b!7318941 () Bool)

(declare-fun tp_is_empty!47787 () Bool)

(declare-fun tp!2078482 () Bool)

(assert (=> b!7318941 (= e!4381846 (and tp_is_empty!47787 tp!2078482))))

(declare-fun b!7318942 () Bool)

(declare-fun tp!2078484 () Bool)

(assert (=> b!7318942 (= e!4381849 (and tp_is_empty!47787 tp!2078484))))

(assert (= (and start!713738 res!2957658) b!7318940))

(assert (= (and b!7318940 res!2957660) b!7318938))

(assert (= (and b!7318938 res!2957659) b!7318939))

(assert (= (and start!713738 condSetEmpty!55105) setIsEmpty!55106))

(assert (= (and start!713738 (not condSetEmpty!55105)) setNonEmpty!55105))

(assert (= (and start!713738 condSetEmpty!55106) setIsEmpty!55105))

(assert (= (and start!713738 (not condSetEmpty!55106)) setNonEmpty!55106))

(assert (= (and start!713738 ((_ is Cons!71264) l2!794)) b!7318942))

(assert (= (and start!713738 ((_ is Cons!71264) l1!805)) b!7318941))

(declare-fun m!7983756 () Bool)

(assert (=> start!713738 m!7983756))

(declare-fun m!7983758 () Bool)

(assert (=> start!713738 m!7983758))

(declare-fun m!7983760 () Bool)

(assert (=> start!713738 m!7983760))

(declare-fun m!7983762 () Bool)

(assert (=> start!713738 m!7983762))

(declare-fun m!7983764 () Bool)

(assert (=> b!7318939 m!7983764))

(declare-fun m!7983766 () Bool)

(assert (=> b!7318939 m!7983766))

(declare-fun m!7983768 () Bool)

(assert (=> b!7318939 m!7983768))

(declare-fun m!7983770 () Bool)

(assert (=> b!7318939 m!7983770))

(declare-fun m!7983772 () Bool)

(assert (=> b!7318940 m!7983772))

(declare-fun m!7983774 () Bool)

(assert (=> b!7318940 m!7983774))

(check-sat b_and!351509 (not b!7318939) (not b!7318942) (not start!713738) (not setNonEmpty!55106) tp_is_empty!47785 (not setNonEmpty!55105) (not b!7318940) (not b!7318941) (not b_next!134891) tp_is_empty!47787)
(check-sat b_and!351509 (not b_next!134891))
