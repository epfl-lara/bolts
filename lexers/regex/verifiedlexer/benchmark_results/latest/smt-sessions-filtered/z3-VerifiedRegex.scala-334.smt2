; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10934 () Bool)

(assert start!10934)

(declare-fun b_free!3265 () Bool)

(declare-fun b_next!3265 () Bool)

(assert (=> start!10934 (= b_free!3265 (not b_next!3265))))

(declare-fun tp!59184 () Bool)

(declare-fun b_and!4963 () Bool)

(assert (=> start!10934 (= tp!59184 b_and!4963)))

(declare-fun b_free!3267 () Bool)

(declare-fun b_next!3267 () Bool)

(assert (=> start!10934 (= b_free!3267 (not b_next!3267))))

(declare-fun tp!59183 () Bool)

(declare-fun b_and!4965 () Bool)

(assert (=> start!10934 (= tp!59183 b_and!4965)))

(assert (=> start!10934 true))

(declare-fun lambda!2388 () Int)

(declare-fun order!929 () Int)

(declare-fun order!931 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!601 (Int Int) Int)

(declare-fun dynLambda!602 (Int Int) Int)

(assert (=> start!10934 (< (dynLambda!601 order!929 f!927) (dynLambda!602 order!931 lambda!2388))))

(assert (=> start!10934 true))

(declare-fun g!9 () Int)

(assert (=> start!10934 (< (dynLambda!601 order!929 g!9) (dynLambda!602 order!931 lambda!2388))))

(declare-fun b!109132 () Bool)

(declare-fun e!60697 () Bool)

(declare-fun e!60696 () Bool)

(assert (=> b!109132 (= e!60697 e!60696)))

(declare-fun res!52360 () Bool)

(assert (=> b!109132 (=> (not res!52360) (not e!60696))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!235 0))(
  ( (A!236 (val!540 Int)) )
))
(declare-fun s!1451 () (InoxSet A!235))

(declare-fun lt!31081 () (InoxSet A!235))

(assert (=> b!109132 (= res!52360 (= s!1451 lt!31081))))

(declare-fun lt!31095 () (InoxSet A!235))

(declare-fun lt!31088 () (InoxSet A!235))

(assert (=> b!109132 (= lt!31081 ((_ map or) lt!31095 lt!31088))))

(declare-datatypes ((List!1741 0))(
  ( (Nil!1735) (Cons!1735 (h!7132 A!235) (t!21736 List!1741)) )
))
(declare-fun lt!31098 () List!1741)

(declare-fun content!167 (List!1741) (InoxSet A!235))

(assert (=> b!109132 (= lt!31088 (content!167 (t!21736 lt!31098)))))

(assert (=> b!109132 (= lt!31095 (store ((as const (Array A!235 Bool)) false) (h!7132 lt!31098) true))))

(declare-fun b!109133 () Bool)

(declare-fun e!60695 () Bool)

(assert (=> b!109133 (= e!60696 (not e!60695))))

(declare-fun res!52361 () Bool)

(assert (=> b!109133 (=> res!52361 e!60695)))

(declare-fun forall!257 (List!1741 Int) Bool)

(assert (=> b!109133 (= res!52361 (not (forall!257 (t!21736 lt!31098) lambda!2388)))))

(declare-datatypes ((B!531 0))(
  ( (B!532 (val!541 Int)) )
))
(declare-fun lt!31084 () (InoxSet B!531))

(declare-fun flatMap!27 ((InoxSet A!235) Int) (InoxSet B!531))

(assert (=> b!109133 (= ((_ map or) (flatMap!27 lt!31095 g!9) lt!31084) (flatMap!27 lt!31081 g!9))))

(assert (=> b!109133 (= lt!31084 (flatMap!27 lt!31088 g!9))))

(declare-datatypes ((Unit!1184 0))(
  ( (Unit!1185) )
))
(declare-fun lt!31080 () Unit!1184)

(declare-fun lemmaFlatMapAssociative!16 ((InoxSet A!235) (InoxSet A!235) Int) Unit!1184)

(assert (=> b!109133 (= lt!31080 (lemmaFlatMapAssociative!16 lt!31095 lt!31088 g!9))))

(declare-fun lt!31097 () (InoxSet B!531))

(declare-fun lt!31091 () (InoxSet B!531))

(assert (=> b!109133 (= ((_ map or) lt!31091 lt!31097) (flatMap!27 lt!31081 f!927))))

(assert (=> b!109133 (= lt!31097 (flatMap!27 lt!31088 f!927))))

(assert (=> b!109133 (= lt!31091 (flatMap!27 lt!31095 f!927))))

(declare-fun lt!31089 () Unit!1184)

(assert (=> b!109133 (= lt!31089 (lemmaFlatMapAssociative!16 lt!31095 lt!31088 f!927))))

(declare-fun b!109134 () Bool)

(declare-fun e!60694 () Bool)

(assert (=> b!109134 (= e!60695 e!60694)))

(declare-fun res!52355 () Bool)

(assert (=> b!109134 (=> res!52355 e!60694)))

(declare-fun lt!31087 () (InoxSet B!531))

(declare-fun dynLambda!603 (Int A!235) (InoxSet B!531))

(assert (=> b!109134 (= res!52355 (not (= lt!31087 (dynLambda!603 g!9 (h!7132 lt!31098)))))))

(assert (=> b!109134 (= lt!31087 (dynLambda!603 f!927 (h!7132 lt!31098)))))

(declare-fun forall!258 ((InoxSet A!235) Int) Bool)

(assert (=> b!109134 (forall!258 lt!31088 lambda!2388)))

(declare-fun lt!31090 () Unit!1184)

(declare-fun lemmaForallThenOnContent!14 (List!1741 Int) Unit!1184)

(assert (=> b!109134 (= lt!31090 (lemmaForallThenOnContent!14 (t!21736 lt!31098) lambda!2388))))

(declare-fun res!52359 () Bool)

(declare-fun e!60699 () Bool)

(assert (=> start!10934 (=> (not res!52359) (not e!60699))))

(assert (=> start!10934 (= res!52359 (forall!258 s!1451 lambda!2388))))

(assert (=> start!10934 e!60699))

(declare-fun condSetEmpty!1387 () Bool)

(assert (=> start!10934 (= condSetEmpty!1387 (= s!1451 ((as const (Array A!235 Bool)) false)))))

(declare-fun setRes!1387 () Bool)

(assert (=> start!10934 setRes!1387))

(assert (=> start!10934 tp!59184))

(assert (=> start!10934 tp!59183))

(declare-fun b!109135 () Bool)

(declare-fun res!52362 () Bool)

(assert (=> b!109135 (=> res!52362 e!60694)))

(assert (=> b!109135 (= res!52362 (not (forall!258 lt!31088 lambda!2388)))))

(declare-fun b!109136 () Bool)

(declare-fun e!60693 () Bool)

(assert (=> b!109136 (= e!60694 e!60693)))

(declare-fun res!52356 () Bool)

(assert (=> b!109136 (=> res!52356 e!60693)))

(declare-fun lt!31083 () Int)

(declare-fun lt!31082 () Int)

(assert (=> b!109136 (= res!52356 (not (= lt!31083 lt!31082)))))

(declare-fun size!1533 (List!1741) Int)

(assert (=> b!109136 (= lt!31082 (size!1533 (t!21736 lt!31098)))))

(declare-fun lt!31079 () Int)

(assert (=> b!109136 (> lt!31079 lt!31083)))

(declare-fun tail!186 (List!1741) List!1741)

(assert (=> b!109136 (= lt!31083 (size!1533 (tail!186 lt!31098)))))

(assert (=> b!109136 (= lt!31079 (size!1533 lt!31098))))

(declare-fun lt!31096 () Unit!1184)

(declare-fun lemmaToListSizeBiggerThanTailContentSize!10 ((InoxSet A!235)) Unit!1184)

(assert (=> b!109136 (= lt!31096 (lemmaToListSizeBiggerThanTailContentSize!10 s!1451))))

(declare-fun lt!31086 () Unit!1184)

(declare-fun forallContained!14 (List!1741 Int A!235) Unit!1184)

(assert (=> b!109136 (= lt!31086 (forallContained!14 lt!31098 lambda!2388 (h!7132 lt!31098)))))

(declare-fun b!109137 () Bool)

(declare-fun e!60698 () Bool)

(assert (=> b!109137 (= e!60698 true)))

(assert (=> b!109137 (= lt!31091 lt!31087)))

(declare-fun lt!31093 () Unit!1184)

(declare-fun lemmaFlatMapOnSingletonSet!2 ((InoxSet A!235) A!235 Int) Unit!1184)

(assert (=> b!109137 (= lt!31093 (lemmaFlatMapOnSingletonSet!2 lt!31095 (h!7132 lt!31098) f!927))))

(assert (=> b!109137 (= lt!31097 lt!31084)))

(declare-fun lt!31085 () Unit!1184)

(declare-fun lemmaFlatMapWithExtEqualFunctionsOnSetThenSame!4 ((InoxSet A!235) Int Int) Unit!1184)

(assert (=> b!109137 (= lt!31085 (lemmaFlatMapWithExtEqualFunctionsOnSetThenSame!4 lt!31088 f!927 g!9))))

(declare-fun b!109138 () Bool)

(assert (=> b!109138 (= e!60699 e!60697)))

(declare-fun res!52358 () Bool)

(assert (=> b!109138 (=> (not res!52358) (not e!60697))))

(get-info :version)

(assert (=> b!109138 (= res!52358 ((_ is Cons!1735) lt!31098))))

(declare-fun toList!220 ((InoxSet A!235)) List!1741)

(assert (=> b!109138 (= lt!31098 (toList!220 s!1451))))

(declare-fun setNonEmpty!1387 () Bool)

(declare-fun tp!59182 () Bool)

(declare-fun tp_is_empty!825 () Bool)

(assert (=> setNonEmpty!1387 (= setRes!1387 (and tp!59182 tp_is_empty!825))))

(declare-fun setElem!1387 () A!235)

(declare-fun setRest!1387 () (InoxSet A!235))

(assert (=> setNonEmpty!1387 (= s!1451 ((_ map or) (store ((as const (Array A!235 Bool)) false) setElem!1387 true) setRest!1387))))

(declare-fun setIsEmpty!1387 () Bool)

(assert (=> setIsEmpty!1387 setRes!1387))

(declare-fun b!109139 () Bool)

(assert (=> b!109139 (= e!60693 e!60698)))

(declare-fun res!52357 () Bool)

(assert (=> b!109139 (=> res!52357 e!60698)))

(declare-fun lt!31092 () Int)

(assert (=> b!109139 (= res!52357 (or (not (= lt!31082 lt!31092)) (>= lt!31092 lt!31079)))))

(assert (=> b!109139 (= lt!31092 lt!31082)))

(assert (=> b!109139 (= lt!31092 (size!1533 (toList!220 lt!31088)))))

(declare-fun lt!31094 () Unit!1184)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!6 (List!1741) Unit!1184)

(assert (=> b!109139 (= lt!31094 (lemmaNoDuplicateThenContentToListSameSize!6 (t!21736 lt!31098)))))

(assert (= (and start!10934 res!52359) b!109138))

(assert (= (and b!109138 res!52358) b!109132))

(assert (= (and b!109132 res!52360) b!109133))

(assert (= (and b!109133 (not res!52361)) b!109134))

(assert (= (and b!109134 (not res!52355)) b!109135))

(assert (= (and b!109135 (not res!52362)) b!109136))

(assert (= (and b!109136 (not res!52356)) b!109139))

(assert (= (and b!109139 (not res!52357)) b!109137))

(assert (= (and start!10934 condSetEmpty!1387) setIsEmpty!1387))

(assert (= (and start!10934 (not condSetEmpty!1387)) setNonEmpty!1387))

(declare-fun b_lambda!1281 () Bool)

(assert (=> (not b_lambda!1281) (not b!109134)))

(declare-fun t!21729 () Bool)

(declare-fun tb!3255 () Bool)

(assert (=> (and start!10934 (= f!927 g!9) t!21729) tb!3255))

(assert (=> b!109134 t!21729))

(declare-fun result!4772 () Bool)

(declare-fun b_and!4967 () Bool)

(assert (= b_and!4963 (and (=> t!21729 result!4772) b_and!4967)))

(declare-fun t!21731 () Bool)

(declare-fun tb!3257 () Bool)

(assert (=> (and start!10934 (= g!9 g!9) t!21731) tb!3257))

(assert (=> b!109134 t!21731))

(declare-fun result!4774 () Bool)

(declare-fun b_and!4969 () Bool)

(assert (= b_and!4965 (and (=> t!21731 result!4774) b_and!4969)))

(declare-fun b_lambda!1283 () Bool)

(assert (=> (not b_lambda!1283) (not b!109134)))

(declare-fun t!21733 () Bool)

(declare-fun tb!3259 () Bool)

(assert (=> (and start!10934 (= f!927 f!927) t!21733) tb!3259))

(assert (=> b!109134 t!21733))

(declare-fun result!4776 () Bool)

(declare-fun b_and!4971 () Bool)

(assert (= b_and!4967 (and (=> t!21733 result!4776) b_and!4971)))

(declare-fun t!21735 () Bool)

(declare-fun tb!3261 () Bool)

(assert (=> (and start!10934 (= g!9 f!927) t!21735) tb!3261))

(assert (=> b!109134 t!21735))

(declare-fun result!4778 () Bool)

(declare-fun b_and!4973 () Bool)

(assert (= b_and!4969 (and (=> t!21735 result!4778) b_and!4973)))

(declare-fun m!98226 () Bool)

(assert (=> b!109134 m!98226))

(declare-fun m!98228 () Bool)

(assert (=> b!109134 m!98228))

(declare-fun m!98230 () Bool)

(assert (=> b!109134 m!98230))

(declare-fun m!98232 () Bool)

(assert (=> b!109134 m!98232))

(declare-fun m!98234 () Bool)

(assert (=> b!109137 m!98234))

(declare-fun m!98236 () Bool)

(assert (=> b!109137 m!98236))

(declare-fun m!98238 () Bool)

(assert (=> b!109138 m!98238))

(declare-fun m!98240 () Bool)

(assert (=> b!109132 m!98240))

(declare-fun m!98242 () Bool)

(assert (=> b!109132 m!98242))

(declare-fun m!98244 () Bool)

(assert (=> start!10934 m!98244))

(declare-fun m!98246 () Bool)

(assert (=> b!109139 m!98246))

(assert (=> b!109139 m!98246))

(declare-fun m!98248 () Bool)

(assert (=> b!109139 m!98248))

(declare-fun m!98250 () Bool)

(assert (=> b!109139 m!98250))

(assert (=> b!109135 m!98230))

(declare-fun m!98252 () Bool)

(assert (=> b!109136 m!98252))

(declare-fun m!98254 () Bool)

(assert (=> b!109136 m!98254))

(declare-fun m!98256 () Bool)

(assert (=> b!109136 m!98256))

(declare-fun m!98258 () Bool)

(assert (=> b!109136 m!98258))

(declare-fun m!98260 () Bool)

(assert (=> b!109136 m!98260))

(assert (=> b!109136 m!98256))

(declare-fun m!98262 () Bool)

(assert (=> b!109136 m!98262))

(declare-fun m!98264 () Bool)

(assert (=> b!109133 m!98264))

(declare-fun m!98266 () Bool)

(assert (=> b!109133 m!98266))

(declare-fun m!98268 () Bool)

(assert (=> b!109133 m!98268))

(declare-fun m!98270 () Bool)

(assert (=> b!109133 m!98270))

(declare-fun m!98272 () Bool)

(assert (=> b!109133 m!98272))

(declare-fun m!98274 () Bool)

(assert (=> b!109133 m!98274))

(declare-fun m!98276 () Bool)

(assert (=> b!109133 m!98276))

(declare-fun m!98278 () Bool)

(assert (=> b!109133 m!98278))

(declare-fun m!98280 () Bool)

(assert (=> b!109133 m!98280))

(check-sat (not b!109138) b_and!4971 (not tb!3261) (not b!109132) (not tb!3259) (not b!109135) (not setNonEmpty!1387) (not b!109137) (not b_lambda!1283) (not tb!3257) (not tb!3255) (not b!109136) (not b_next!3265) (not b!109133) (not start!10934) (not b!109139) (not b_next!3267) b_and!4973 (not b_lambda!1281) (not b!109134) tp_is_empty!825)
(check-sat b_and!4971 b_and!4973 (not b_next!3267) (not b_next!3265))
