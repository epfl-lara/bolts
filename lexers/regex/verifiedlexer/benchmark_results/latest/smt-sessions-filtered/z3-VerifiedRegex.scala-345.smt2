; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11142 () Bool)

(assert start!11142)

(declare-fun b_free!3353 () Bool)

(declare-fun b_next!3353 () Bool)

(assert (=> start!11142 (= b_free!3353 (not b_next!3353))))

(declare-fun tp!59491 () Bool)

(declare-fun b_and!5307 () Bool)

(assert (=> start!11142 (= tp!59491 b_and!5307)))

(declare-fun b_free!3355 () Bool)

(declare-fun b_next!3355 () Bool)

(assert (=> start!11142 (= b_free!3355 (not b_next!3355))))

(declare-fun tp!59490 () Bool)

(declare-fun b_and!5309 () Bool)

(assert (=> start!11142 (= tp!59490 b_and!5309)))

(assert (=> start!11142 true))

(declare-fun order!1019 () Int)

(declare-fun order!1017 () Int)

(declare-fun lambda!2558 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!671 (Int Int) Int)

(declare-fun dynLambda!672 (Int Int) Int)

(assert (=> start!11142 (< (dynLambda!671 order!1017 f!927) (dynLambda!672 order!1019 lambda!2558))))

(assert (=> start!11142 true))

(declare-fun g!9 () Int)

(assert (=> start!11142 (< (dynLambda!671 order!1017 g!9) (dynLambda!672 order!1019 lambda!2558))))

(declare-fun setNonEmpty!1544 () Bool)

(declare-fun setRes!1544 () Bool)

(declare-fun tp!59489 () Bool)

(declare-fun tp_is_empty!881 () Bool)

(assert (=> setNonEmpty!1544 (= setRes!1544 (and tp!59489 tp_is_empty!881))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!279 0))(
  ( (A!280 (val!582 Int)) )
))
(declare-fun s!1451 () (InoxSet A!279))

(declare-fun setElem!1544 () A!279)

(declare-fun setRest!1544 () (InoxSet A!279))

(assert (=> setNonEmpty!1544 (= s!1451 ((_ map or) (store ((as const (Array A!279 Bool)) false) setElem!1544 true) setRest!1544))))

(declare-fun b!109766 () Bool)

(declare-fun e!61177 () Bool)

(declare-fun e!61180 () Bool)

(assert (=> b!109766 (= e!61177 e!61180)))

(declare-fun res!52875 () Bool)

(assert (=> b!109766 (=> res!52875 e!61180)))

(declare-datatypes ((B!571 0))(
  ( (B!572 (val!583 Int)) )
))
(declare-fun lt!31773 () (InoxSet B!571))

(declare-fun lt!31776 () (InoxSet B!571))

(assert (=> b!109766 (= res!52875 (not (= lt!31773 lt!31776)))))

(declare-datatypes ((List!1763 0))(
  ( (Nil!1757) (Cons!1757 (h!7154 A!279) (t!21998 List!1763)) )
))
(declare-fun lt!31769 () List!1763)

(declare-fun dynLambda!673 (Int A!279) (InoxSet B!571))

(assert (=> b!109766 (= lt!31776 (dynLambda!673 g!9 (h!7154 lt!31769)))))

(assert (=> b!109766 (= lt!31773 (dynLambda!673 f!927 (h!7154 lt!31769)))))

(declare-fun lt!31771 () (InoxSet A!279))

(declare-fun forall!297 ((InoxSet A!279) Int) Bool)

(assert (=> b!109766 (forall!297 lt!31771 lambda!2558)))

(declare-datatypes ((Unit!1220 0))(
  ( (Unit!1221) )
))
(declare-fun lt!31766 () Unit!1220)

(declare-fun lemmaForallThenOnContent!28 (List!1763 Int) Unit!1220)

(assert (=> b!109766 (= lt!31766 (lemmaForallThenOnContent!28 (t!21998 lt!31769) lambda!2558))))

(declare-fun b!109767 () Bool)

(declare-fun e!61179 () Bool)

(assert (=> b!109767 (= e!61180 e!61179)))

(declare-fun res!52876 () Bool)

(assert (=> b!109767 (=> res!52876 e!61179)))

(declare-fun lt!31761 () Int)

(declare-fun lt!31764 () Int)

(assert (=> b!109767 (= res!52876 (not (= lt!31761 lt!31764)))))

(declare-fun size!1543 (List!1763) Int)

(assert (=> b!109767 (= lt!31764 (size!1543 (t!21998 lt!31769)))))

(declare-fun lt!31770 () Int)

(assert (=> b!109767 (> lt!31770 lt!31761)))

(declare-fun tail!196 (List!1763) List!1763)

(assert (=> b!109767 (= lt!31761 (size!1543 (tail!196 lt!31769)))))

(assert (=> b!109767 (= lt!31770 (size!1543 lt!31769))))

(declare-fun lt!31756 () Unit!1220)

(declare-fun lemmaToListSizeBiggerThanTailContentSize!20 ((InoxSet A!279)) Unit!1220)

(assert (=> b!109767 (= lt!31756 (lemmaToListSizeBiggerThanTailContentSize!20 s!1451))))

(declare-fun lt!31755 () Unit!1220)

(declare-fun forallContained!24 (List!1763 Int A!279) Unit!1220)

(assert (=> b!109767 (= lt!31755 (forallContained!24 lt!31769 lambda!2558 (h!7154 lt!31769)))))

(declare-fun b!109768 () Bool)

(declare-fun e!61176 () Bool)

(declare-fun lt!31757 () (InoxSet B!571))

(declare-fun lt!31775 () (InoxSet B!571))

(assert (=> b!109768 (= e!61176 (= lt!31757 lt!31775))))

(assert (=> b!109768 (= lt!31775 lt!31776)))

(declare-fun lt!31758 () (InoxSet A!279))

(declare-fun lt!31762 () Unit!1220)

(declare-fun lemmaFlatMapOnSingletonSet!4 ((InoxSet A!279) A!279 Int) Unit!1220)

(assert (=> b!109768 (= lt!31762 (lemmaFlatMapOnSingletonSet!4 lt!31758 (h!7154 lt!31769) g!9))))

(assert (=> b!109768 (= lt!31757 lt!31773)))

(declare-fun lt!31772 () Unit!1220)

(assert (=> b!109768 (= lt!31772 (lemmaFlatMapOnSingletonSet!4 lt!31758 (h!7154 lt!31769) f!927))))

(declare-fun lt!31765 () (InoxSet B!571))

(declare-fun lt!31760 () (InoxSet B!571))

(assert (=> b!109768 (= lt!31765 lt!31760)))

(declare-fun lt!31759 () Unit!1220)

(declare-fun lemmaFlatMapWithExtEqualFunctionsOnSetThenSame!6 ((InoxSet A!279) Int Int) Unit!1220)

(assert (=> b!109768 (= lt!31759 (lemmaFlatMapWithExtEqualFunctionsOnSetThenSame!6 lt!31771 f!927 g!9))))

(declare-fun b!109769 () Bool)

(declare-fun e!61181 () Bool)

(declare-fun e!61175 () Bool)

(assert (=> b!109769 (= e!61181 e!61175)))

(declare-fun res!52880 () Bool)

(assert (=> b!109769 (=> (not res!52880) (not e!61175))))

(get-info :version)

(assert (=> b!109769 (= res!52880 ((_ is Cons!1757) lt!31769))))

(declare-fun toList!242 ((InoxSet A!279)) List!1763)

(assert (=> b!109769 (= lt!31769 (toList!242 s!1451))))

(declare-fun b!109770 () Bool)

(declare-fun e!61178 () Bool)

(assert (=> b!109770 (= e!61178 (not e!61177))))

(declare-fun res!52879 () Bool)

(assert (=> b!109770 (=> res!52879 e!61177)))

(declare-fun forall!298 (List!1763 Int) Bool)

(assert (=> b!109770 (= res!52879 (not (forall!298 (t!21998 lt!31769) lambda!2558)))))

(declare-fun lt!31767 () (InoxSet A!279))

(declare-fun flatMap!45 ((InoxSet A!279) Int) (InoxSet B!571))

(assert (=> b!109770 (= ((_ map or) lt!31775 lt!31760) (flatMap!45 lt!31767 g!9))))

(assert (=> b!109770 (= lt!31760 (flatMap!45 lt!31771 g!9))))

(assert (=> b!109770 (= lt!31775 (flatMap!45 lt!31758 g!9))))

(declare-fun lt!31774 () Unit!1220)

(declare-fun lemmaFlatMapAssociative!32 ((InoxSet A!279) (InoxSet A!279) Int) Unit!1220)

(assert (=> b!109770 (= lt!31774 (lemmaFlatMapAssociative!32 lt!31758 lt!31771 g!9))))

(assert (=> b!109770 (= ((_ map or) lt!31757 lt!31765) (flatMap!45 lt!31767 f!927))))

(assert (=> b!109770 (= lt!31765 (flatMap!45 lt!31771 f!927))))

(assert (=> b!109770 (= lt!31757 (flatMap!45 lt!31758 f!927))))

(declare-fun lt!31763 () Unit!1220)

(assert (=> b!109770 (= lt!31763 (lemmaFlatMapAssociative!32 lt!31758 lt!31771 f!927))))

(declare-fun b!109771 () Bool)

(declare-fun res!52878 () Bool)

(assert (=> b!109771 (=> res!52878 e!61180)))

(assert (=> b!109771 (= res!52878 (not (forall!297 lt!31771 lambda!2558)))))

(declare-fun b!109772 () Bool)

(assert (=> b!109772 (= e!61179 e!61176)))

(declare-fun res!52882 () Bool)

(assert (=> b!109772 (=> res!52882 e!61176)))

(declare-fun lt!31754 () Int)

(assert (=> b!109772 (= res!52882 (or (not (= lt!31764 lt!31754)) (>= lt!31754 lt!31770)))))

(assert (=> b!109772 (= lt!31754 lt!31764)))

(assert (=> b!109772 (= lt!31754 (size!1543 (toList!242 lt!31771)))))

(declare-fun lt!31768 () Unit!1220)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!12 (List!1763) Unit!1220)

(assert (=> b!109772 (= lt!31768 (lemmaNoDuplicateThenContentToListSameSize!12 (t!21998 lt!31769)))))

(declare-fun res!52881 () Bool)

(assert (=> start!11142 (=> (not res!52881) (not e!61181))))

(assert (=> start!11142 (= res!52881 (forall!297 s!1451 lambda!2558))))

(assert (=> start!11142 e!61181))

(declare-fun condSetEmpty!1544 () Bool)

(assert (=> start!11142 (= condSetEmpty!1544 (= s!1451 ((as const (Array A!279 Bool)) false)))))

(assert (=> start!11142 setRes!1544))

(assert (=> start!11142 tp!59491))

(assert (=> start!11142 tp!59490))

(declare-fun setIsEmpty!1544 () Bool)

(assert (=> setIsEmpty!1544 setRes!1544))

(declare-fun b!109773 () Bool)

(assert (=> b!109773 (= e!61175 e!61178)))

(declare-fun res!52877 () Bool)

(assert (=> b!109773 (=> (not res!52877) (not e!61178))))

(assert (=> b!109773 (= res!52877 (= s!1451 lt!31767))))

(assert (=> b!109773 (= lt!31767 ((_ map or) lt!31758 lt!31771))))

(declare-fun content!185 (List!1763) (InoxSet A!279))

(assert (=> b!109773 (= lt!31771 (content!185 (t!21998 lt!31769)))))

(assert (=> b!109773 (= lt!31758 (store ((as const (Array A!279 Bool)) false) (h!7154 lt!31769) true))))

(assert (= (and start!11142 res!52881) b!109769))

(assert (= (and b!109769 res!52880) b!109773))

(assert (= (and b!109773 res!52877) b!109770))

(assert (= (and b!109770 (not res!52879)) b!109766))

(assert (= (and b!109766 (not res!52875)) b!109771))

(assert (= (and b!109771 (not res!52878)) b!109767))

(assert (= (and b!109767 (not res!52876)) b!109772))

(assert (= (and b!109772 (not res!52882)) b!109768))

(assert (= (and start!11142 condSetEmpty!1544) setIsEmpty!1544))

(assert (= (and start!11142 (not condSetEmpty!1544)) setNonEmpty!1544))

(declare-fun b_lambda!1513 () Bool)

(assert (=> (not b_lambda!1513) (not b!109766)))

(declare-fun t!21991 () Bool)

(declare-fun tb!3495 () Bool)

(assert (=> (and start!11142 (= f!927 g!9) t!21991) tb!3495))

(assert (=> b!109766 t!21991))

(declare-fun result!5040 () Bool)

(declare-fun b_and!5311 () Bool)

(assert (= b_and!5307 (and (=> t!21991 result!5040) b_and!5311)))

(declare-fun t!21993 () Bool)

(declare-fun tb!3497 () Bool)

(assert (=> (and start!11142 (= g!9 g!9) t!21993) tb!3497))

(assert (=> b!109766 t!21993))

(declare-fun result!5042 () Bool)

(declare-fun b_and!5313 () Bool)

(assert (= b_and!5309 (and (=> t!21993 result!5042) b_and!5313)))

(declare-fun b_lambda!1515 () Bool)

(assert (=> (not b_lambda!1515) (not b!109766)))

(declare-fun t!21995 () Bool)

(declare-fun tb!3499 () Bool)

(assert (=> (and start!11142 (= f!927 f!927) t!21995) tb!3499))

(assert (=> b!109766 t!21995))

(declare-fun result!5044 () Bool)

(declare-fun b_and!5315 () Bool)

(assert (= b_and!5311 (and (=> t!21995 result!5044) b_and!5315)))

(declare-fun tb!3501 () Bool)

(declare-fun t!21997 () Bool)

(assert (=> (and start!11142 (= g!9 f!927) t!21997) tb!3501))

(assert (=> b!109766 t!21997))

(declare-fun result!5046 () Bool)

(declare-fun b_and!5317 () Bool)

(assert (= b_and!5313 (and (=> t!21997 result!5046) b_and!5317)))

(declare-fun m!99516 () Bool)

(assert (=> b!109768 m!99516))

(declare-fun m!99518 () Bool)

(assert (=> b!109768 m!99518))

(declare-fun m!99520 () Bool)

(assert (=> b!109768 m!99520))

(declare-fun m!99522 () Bool)

(assert (=> b!109771 m!99522))

(declare-fun m!99524 () Bool)

(assert (=> b!109772 m!99524))

(assert (=> b!109772 m!99524))

(declare-fun m!99526 () Bool)

(assert (=> b!109772 m!99526))

(declare-fun m!99528 () Bool)

(assert (=> b!109772 m!99528))

(declare-fun m!99530 () Bool)

(assert (=> b!109770 m!99530))

(declare-fun m!99532 () Bool)

(assert (=> b!109770 m!99532))

(declare-fun m!99534 () Bool)

(assert (=> b!109770 m!99534))

(declare-fun m!99536 () Bool)

(assert (=> b!109770 m!99536))

(declare-fun m!99538 () Bool)

(assert (=> b!109770 m!99538))

(declare-fun m!99540 () Bool)

(assert (=> b!109770 m!99540))

(declare-fun m!99542 () Bool)

(assert (=> b!109770 m!99542))

(declare-fun m!99544 () Bool)

(assert (=> b!109770 m!99544))

(declare-fun m!99546 () Bool)

(assert (=> b!109770 m!99546))

(declare-fun m!99548 () Bool)

(assert (=> b!109773 m!99548))

(declare-fun m!99550 () Bool)

(assert (=> b!109773 m!99550))

(declare-fun m!99552 () Bool)

(assert (=> b!109766 m!99552))

(declare-fun m!99554 () Bool)

(assert (=> b!109766 m!99554))

(assert (=> b!109766 m!99522))

(declare-fun m!99556 () Bool)

(assert (=> b!109766 m!99556))

(declare-fun m!99558 () Bool)

(assert (=> start!11142 m!99558))

(declare-fun m!99560 () Bool)

(assert (=> b!109767 m!99560))

(declare-fun m!99562 () Bool)

(assert (=> b!109767 m!99562))

(declare-fun m!99564 () Bool)

(assert (=> b!109767 m!99564))

(declare-fun m!99566 () Bool)

(assert (=> b!109767 m!99566))

(assert (=> b!109767 m!99560))

(declare-fun m!99568 () Bool)

(assert (=> b!109767 m!99568))

(declare-fun m!99570 () Bool)

(assert (=> b!109767 m!99570))

(declare-fun m!99572 () Bool)

(assert (=> b!109769 m!99572))

(check-sat (not tb!3501) (not tb!3499) b_and!5317 (not b_lambda!1513) (not start!11142) (not b!109772) (not b!109773) (not b!109769) (not b!109771) (not tb!3497) (not tb!3495) (not b!109767) (not b_next!3353) b_and!5315 tp_is_empty!881 (not b_next!3355) (not b!109768) (not b!109766) (not b_lambda!1515) (not setNonEmpty!1544) (not b!109770))
(check-sat b_and!5315 b_and!5317 (not b_next!3355) (not b_next!3353))
