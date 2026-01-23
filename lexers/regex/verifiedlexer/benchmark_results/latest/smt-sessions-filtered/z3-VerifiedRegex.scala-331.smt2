; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10922 () Bool)

(assert start!10922)

(declare-fun b_free!3241 () Bool)

(declare-fun b_next!3241 () Bool)

(assert (=> start!10922 (= b_free!3241 (not b_next!3241))))

(declare-fun tp!59129 () Bool)

(declare-fun b_and!4891 () Bool)

(assert (=> start!10922 (= tp!59129 b_and!4891)))

(declare-fun b_free!3243 () Bool)

(declare-fun b_next!3243 () Bool)

(assert (=> start!10922 (= b_free!3243 (not b_next!3243))))

(declare-fun tp!59130 () Bool)

(declare-fun b_and!4893 () Bool)

(assert (=> start!10922 (= tp!59130 b_and!4893)))

(assert (=> start!10922 true))

(declare-fun lambda!2314 () Int)

(declare-fun f!927 () Int)

(declare-fun order!907 () Int)

(declare-fun order!905 () Int)

(declare-fun dynLambda!583 (Int Int) Int)

(declare-fun dynLambda!584 (Int Int) Int)

(assert (=> start!10922 (< (dynLambda!583 order!905 f!927) (dynLambda!584 order!907 lambda!2314))))

(assert (=> start!10922 true))

(declare-fun g!9 () Int)

(assert (=> start!10922 (< (dynLambda!583 order!905 g!9) (dynLambda!584 order!907 lambda!2314))))

(declare-fun b!108971 () Bool)

(declare-fun e!60572 () Bool)

(declare-fun e!60571 () Bool)

(assert (=> b!108971 (= e!60572 e!60571)))

(declare-fun res!52210 () Bool)

(assert (=> b!108971 (=> (not res!52210) (not e!60571))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!223 0))(
  ( (A!224 (val!528 Int)) )
))
(declare-fun s!1451 () (InoxSet A!223))

(declare-fun lt!30786 () (InoxSet A!223))

(assert (=> b!108971 (= res!52210 (= s!1451 lt!30786))))

(declare-fun lt!30784 () (InoxSet A!223))

(declare-fun lt!30788 () (InoxSet A!223))

(assert (=> b!108971 (= lt!30786 ((_ map or) lt!30784 lt!30788))))

(declare-datatypes ((List!1735 0))(
  ( (Nil!1729) (Cons!1729 (h!7126 A!223) (t!21682 List!1735)) )
))
(declare-fun lt!30789 () List!1735)

(declare-fun content!161 (List!1735) (InoxSet A!223))

(assert (=> b!108971 (= lt!30788 (content!161 (t!21682 lt!30789)))))

(assert (=> b!108971 (= lt!30784 (store ((as const (Array A!223 Bool)) false) (h!7126 lt!30789) true))))

(declare-fun b!108972 () Bool)

(declare-fun e!60570 () Bool)

(assert (=> b!108972 (= e!60571 (not e!60570))))

(declare-fun res!52212 () Bool)

(assert (=> b!108972 (=> res!52212 e!60570)))

(declare-fun forall!245 (List!1735 Int) Bool)

(assert (=> b!108972 (= res!52212 (not (forall!245 (t!21682 lt!30789) lambda!2314)))))

(declare-datatypes ((B!519 0))(
  ( (B!520 (val!529 Int)) )
))
(declare-fun flatMap!21 ((InoxSet A!223) Int) (InoxSet B!519))

(assert (=> b!108972 (= ((_ map or) (flatMap!21 lt!30784 g!9) (flatMap!21 lt!30788 g!9)) (flatMap!21 lt!30786 g!9))))

(declare-datatypes ((Unit!1172 0))(
  ( (Unit!1173) )
))
(declare-fun lt!30791 () Unit!1172)

(declare-fun lemmaFlatMapAssociative!10 ((InoxSet A!223) (InoxSet A!223) Int) Unit!1172)

(assert (=> b!108972 (= lt!30791 (lemmaFlatMapAssociative!10 lt!30784 lt!30788 g!9))))

(assert (=> b!108972 (= ((_ map or) (flatMap!21 lt!30784 f!927) (flatMap!21 lt!30788 f!927)) (flatMap!21 lt!30786 f!927))))

(declare-fun lt!30787 () Unit!1172)

(assert (=> b!108972 (= lt!30787 (lemmaFlatMapAssociative!10 lt!30784 lt!30788 f!927))))

(declare-fun b!108973 () Bool)

(declare-fun res!52208 () Bool)

(declare-fun e!60573 () Bool)

(assert (=> b!108973 (=> res!52208 e!60573)))

(declare-fun forall!246 ((InoxSet A!223) Int) Bool)

(assert (=> b!108973 (= res!52208 (not (forall!246 lt!30788 lambda!2314)))))

(declare-fun b!108974 () Bool)

(declare-fun e!60569 () Bool)

(assert (=> b!108974 (= e!60569 true)))

(declare-fun lt!30783 () Bool)

(declare-fun noDuplicate!7 (List!1735) Bool)

(assert (=> b!108974 (= lt!30783 (noDuplicate!7 (t!21682 lt!30789)))))

(declare-fun setIsEmpty!1369 () Bool)

(declare-fun setRes!1369 () Bool)

(assert (=> setIsEmpty!1369 setRes!1369))

(declare-fun b!108975 () Bool)

(declare-fun e!60568 () Bool)

(assert (=> b!108975 (= e!60568 e!60572)))

(declare-fun res!52207 () Bool)

(assert (=> b!108975 (=> (not res!52207) (not e!60572))))

(get-info :version)

(assert (=> b!108975 (= res!52207 ((_ is Cons!1729) lt!30789))))

(declare-fun toList!214 ((InoxSet A!223)) List!1735)

(assert (=> b!108975 (= lt!30789 (toList!214 s!1451))))

(declare-fun setNonEmpty!1369 () Bool)

(declare-fun tp!59128 () Bool)

(declare-fun tp_is_empty!813 () Bool)

(assert (=> setNonEmpty!1369 (= setRes!1369 (and tp!59128 tp_is_empty!813))))

(declare-fun setElem!1369 () A!223)

(declare-fun setRest!1369 () (InoxSet A!223))

(assert (=> setNonEmpty!1369 (= s!1451 ((_ map or) (store ((as const (Array A!223 Bool)) false) setElem!1369 true) setRest!1369))))

(declare-fun b!108976 () Bool)

(assert (=> b!108976 (= e!60570 e!60573)))

(declare-fun res!52209 () Bool)

(assert (=> b!108976 (=> res!52209 e!60573)))

(declare-fun dynLambda!585 (Int A!223) (InoxSet B!519))

(assert (=> b!108976 (= res!52209 (not (= (dynLambda!585 f!927 (h!7126 lt!30789)) (dynLambda!585 g!9 (h!7126 lt!30789)))))))

(assert (=> b!108976 (forall!246 lt!30788 lambda!2314)))

(declare-fun lt!30785 () Unit!1172)

(declare-fun lemmaForallThenOnContent!8 (List!1735 Int) Unit!1172)

(assert (=> b!108976 (= lt!30785 (lemmaForallThenOnContent!8 (t!21682 lt!30789) lambda!2314))))

(declare-fun b!108977 () Bool)

(assert (=> b!108977 (= e!60573 e!60569)))

(declare-fun res!52211 () Bool)

(assert (=> b!108977 (=> res!52211 e!60569)))

(declare-fun lt!30790 () Int)

(declare-fun size!1527 (List!1735) Int)

(assert (=> b!108977 (= res!52211 (not (= lt!30790 (size!1527 (t!21682 lt!30789)))))))

(declare-fun lt!30792 () Int)

(assert (=> b!108977 (> lt!30792 lt!30790)))

(declare-fun tail!180 (List!1735) List!1735)

(assert (=> b!108977 (= lt!30790 (size!1527 (tail!180 lt!30789)))))

(assert (=> b!108977 (= lt!30792 (size!1527 lt!30789))))

(declare-fun lt!30781 () Unit!1172)

(declare-fun lemmaToListSizeBiggerThanTailContentSize!4 ((InoxSet A!223)) Unit!1172)

(assert (=> b!108977 (= lt!30781 (lemmaToListSizeBiggerThanTailContentSize!4 s!1451))))

(declare-fun lt!30782 () Unit!1172)

(declare-fun forallContained!8 (List!1735 Int A!223) Unit!1172)

(assert (=> b!108977 (= lt!30782 (forallContained!8 lt!30789 lambda!2314 (h!7126 lt!30789)))))

(declare-fun res!52206 () Bool)

(assert (=> start!10922 (=> (not res!52206) (not e!60568))))

(assert (=> start!10922 (= res!52206 (forall!246 s!1451 lambda!2314))))

(assert (=> start!10922 e!60568))

(declare-fun condSetEmpty!1369 () Bool)

(assert (=> start!10922 (= condSetEmpty!1369 (= s!1451 ((as const (Array A!223 Bool)) false)))))

(assert (=> start!10922 setRes!1369))

(assert (=> start!10922 tp!59129))

(assert (=> start!10922 tp!59130))

(assert (= (and start!10922 res!52206) b!108975))

(assert (= (and b!108975 res!52207) b!108971))

(assert (= (and b!108971 res!52210) b!108972))

(assert (= (and b!108972 (not res!52212)) b!108976))

(assert (= (and b!108976 (not res!52209)) b!108973))

(assert (= (and b!108973 (not res!52208)) b!108977))

(assert (= (and b!108977 (not res!52211)) b!108974))

(assert (= (and start!10922 condSetEmpty!1369) setIsEmpty!1369))

(assert (= (and start!10922 (not condSetEmpty!1369)) setNonEmpty!1369))

(declare-fun b_lambda!1257 () Bool)

(assert (=> (not b_lambda!1257) (not b!108976)))

(declare-fun t!21675 () Bool)

(declare-fun tb!3207 () Bool)

(assert (=> (and start!10922 (= f!927 f!927) t!21675) tb!3207))

(assert (=> b!108976 t!21675))

(declare-fun result!4724 () Bool)

(declare-fun b_and!4895 () Bool)

(assert (= b_and!4891 (and (=> t!21675 result!4724) b_and!4895)))

(declare-fun tb!3209 () Bool)

(declare-fun t!21677 () Bool)

(assert (=> (and start!10922 (= g!9 f!927) t!21677) tb!3209))

(assert (=> b!108976 t!21677))

(declare-fun result!4726 () Bool)

(declare-fun b_and!4897 () Bool)

(assert (= b_and!4893 (and (=> t!21677 result!4726) b_and!4897)))

(declare-fun b_lambda!1259 () Bool)

(assert (=> (not b_lambda!1259) (not b!108976)))

(declare-fun t!21679 () Bool)

(declare-fun tb!3211 () Bool)

(assert (=> (and start!10922 (= f!927 g!9) t!21679) tb!3211))

(assert (=> b!108976 t!21679))

(declare-fun result!4728 () Bool)

(declare-fun b_and!4899 () Bool)

(assert (= b_and!4895 (and (=> t!21679 result!4728) b_and!4899)))

(declare-fun t!21681 () Bool)

(declare-fun tb!3213 () Bool)

(assert (=> (and start!10922 (= g!9 g!9) t!21681) tb!3213))

(assert (=> b!108976 t!21681))

(declare-fun result!4730 () Bool)

(declare-fun b_and!4901 () Bool)

(assert (= b_and!4897 (and (=> t!21681 result!4730) b_and!4901)))

(declare-fun m!97910 () Bool)

(assert (=> b!108974 m!97910))

(declare-fun m!97912 () Bool)

(assert (=> b!108976 m!97912))

(declare-fun m!97914 () Bool)

(assert (=> b!108976 m!97914))

(declare-fun m!97916 () Bool)

(assert (=> b!108976 m!97916))

(declare-fun m!97918 () Bool)

(assert (=> b!108976 m!97918))

(assert (=> b!108973 m!97916))

(declare-fun m!97920 () Bool)

(assert (=> b!108972 m!97920))

(declare-fun m!97922 () Bool)

(assert (=> b!108972 m!97922))

(declare-fun m!97924 () Bool)

(assert (=> b!108972 m!97924))

(declare-fun m!97926 () Bool)

(assert (=> b!108972 m!97926))

(declare-fun m!97928 () Bool)

(assert (=> b!108972 m!97928))

(declare-fun m!97930 () Bool)

(assert (=> b!108972 m!97930))

(declare-fun m!97932 () Bool)

(assert (=> b!108972 m!97932))

(declare-fun m!97934 () Bool)

(assert (=> b!108972 m!97934))

(declare-fun m!97936 () Bool)

(assert (=> b!108972 m!97936))

(declare-fun m!97938 () Bool)

(assert (=> b!108975 m!97938))

(declare-fun m!97940 () Bool)

(assert (=> b!108977 m!97940))

(declare-fun m!97942 () Bool)

(assert (=> b!108977 m!97942))

(declare-fun m!97944 () Bool)

(assert (=> b!108977 m!97944))

(declare-fun m!97946 () Bool)

(assert (=> b!108977 m!97946))

(declare-fun m!97948 () Bool)

(assert (=> b!108977 m!97948))

(assert (=> b!108977 m!97940))

(declare-fun m!97950 () Bool)

(assert (=> b!108977 m!97950))

(declare-fun m!97952 () Bool)

(assert (=> start!10922 m!97952))

(declare-fun m!97954 () Bool)

(assert (=> b!108971 m!97954))

(declare-fun m!97956 () Bool)

(assert (=> b!108971 m!97956))

(check-sat (not b!108976) (not tb!3207) (not tb!3209) (not b_next!3243) (not tb!3213) (not b_lambda!1257) (not tb!3211) (not setNonEmpty!1369) (not b!108972) b_and!4901 (not b!108973) (not start!10922) b_and!4899 (not b_lambda!1259) (not b!108975) (not b!108977) (not b_next!3241) tp_is_empty!813 (not b!108971) (not b!108974))
(check-sat b_and!4899 b_and!4901 (not b_next!3243) (not b_next!3241))
