; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11078 () Bool)

(assert start!11078)

(declare-fun b_free!3313 () Bool)

(declare-fun b_next!3313 () Bool)

(assert (=> start!11078 (= b_free!3313 (not b_next!3313))))

(declare-fun tp!59385 () Bool)

(declare-fun b_and!5155 () Bool)

(assert (=> start!11078 (= tp!59385 b_and!5155)))

(declare-fun b_free!3315 () Bool)

(declare-fun b_next!3315 () Bool)

(assert (=> start!11078 (= b_free!3315 (not b_next!3315))))

(declare-fun tp!59386 () Bool)

(declare-fun b_and!5157 () Bool)

(assert (=> start!11078 (= tp!59386 b_and!5157)))

(assert (=> start!11078 true))

(declare-fun order!979 () Int)

(declare-fun order!977 () Int)

(declare-fun f!927 () Int)

(declare-fun lambda!2448 () Int)

(declare-fun dynLambda!639 (Int Int) Int)

(declare-fun dynLambda!640 (Int Int) Int)

(assert (=> start!11078 (< (dynLambda!639 order!977 f!927) (dynLambda!640 order!979 lambda!2448))))

(assert (=> start!11078 true))

(declare-fun g!9 () Int)

(assert (=> start!11078 (< (dynLambda!639 order!977 g!9) (dynLambda!640 order!979 lambda!2448))))

(declare-fun b!109481 () Bool)

(declare-fun e!60964 () Bool)

(declare-fun e!60967 () Bool)

(assert (=> b!109481 (= e!60964 (not e!60967))))

(declare-fun res!52652 () Bool)

(assert (=> b!109481 (=> res!52652 e!60967)))

(declare-datatypes ((A!259 0))(
  ( (A!260 (val!562 Int)) )
))
(declare-datatypes ((List!1753 0))(
  ( (Nil!1747) (Cons!1747 (h!7144 A!259) (t!21892 List!1753)) )
))
(declare-fun lt!31294 () List!1753)

(declare-fun forall!277 (List!1753 Int) Bool)

(assert (=> b!109481 (= res!52652 (not (forall!277 (t!21892 lt!31294) lambda!2448)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!31300 () (InoxSet A!259))

(declare-fun lt!31298 () (InoxSet A!259))

(declare-fun lt!31297 () (InoxSet A!259))

(declare-datatypes ((B!551 0))(
  ( (B!552 (val!563 Int)) )
))
(declare-fun flatMap!35 ((InoxSet A!259) Int) (InoxSet B!551))

(assert (=> b!109481 (= ((_ map or) (flatMap!35 lt!31298 g!9) (flatMap!35 lt!31297 g!9)) (flatMap!35 lt!31300 g!9))))

(declare-datatypes ((Unit!1200 0))(
  ( (Unit!1201) )
))
(declare-fun lt!31295 () Unit!1200)

(declare-fun lemmaFlatMapAssociative!22 ((InoxSet A!259) (InoxSet A!259) Int) Unit!1200)

(assert (=> b!109481 (= lt!31295 (lemmaFlatMapAssociative!22 lt!31298 lt!31297 g!9))))

(assert (=> b!109481 (= ((_ map or) (flatMap!35 lt!31298 f!927) (flatMap!35 lt!31297 f!927)) (flatMap!35 lt!31300 f!927))))

(declare-fun lt!31299 () Unit!1200)

(assert (=> b!109481 (= lt!31299 (lemmaFlatMapAssociative!22 lt!31298 lt!31297 f!927))))

(declare-fun b!109482 () Bool)

(declare-fun e!60966 () Bool)

(declare-fun forall!278 ((InoxSet A!259) Int) Bool)

(assert (=> b!109482 (= e!60966 (forall!278 lt!31297 lambda!2448))))

(declare-fun setNonEmpty!1500 () Bool)

(declare-fun setRes!1500 () Bool)

(declare-fun tp!59387 () Bool)

(declare-fun tp_is_empty!857 () Bool)

(assert (=> setNonEmpty!1500 (= setRes!1500 (and tp!59387 tp_is_empty!857))))

(declare-fun s!1451 () (InoxSet A!259))

(declare-fun setElem!1500 () A!259)

(declare-fun setRest!1500 () (InoxSet A!259))

(assert (=> setNonEmpty!1500 (= s!1451 ((_ map or) (store ((as const (Array A!259 Bool)) false) setElem!1500 true) setRest!1500))))

(declare-fun b!109484 () Bool)

(declare-fun e!60963 () Bool)

(assert (=> b!109484 (= e!60963 e!60964)))

(declare-fun res!52651 () Bool)

(assert (=> b!109484 (=> (not res!52651) (not e!60964))))

(assert (=> b!109484 (= res!52651 (= s!1451 lt!31300))))

(assert (=> b!109484 (= lt!31300 ((_ map or) lt!31298 lt!31297))))

(declare-fun content!175 (List!1753) (InoxSet A!259))

(assert (=> b!109484 (= lt!31297 (content!175 (t!21892 lt!31294)))))

(assert (=> b!109484 (= lt!31298 (store ((as const (Array A!259 Bool)) false) (h!7144 lt!31294) true))))

(declare-fun b!109485 () Bool)

(declare-fun e!60965 () Bool)

(assert (=> b!109485 (= e!60965 e!60963)))

(declare-fun res!52653 () Bool)

(assert (=> b!109485 (=> (not res!52653) (not e!60963))))

(get-info :version)

(assert (=> b!109485 (= res!52653 ((_ is Cons!1747) lt!31294))))

(declare-fun toList!232 ((InoxSet A!259)) List!1753)

(assert (=> b!109485 (= lt!31294 (toList!232 s!1451))))

(declare-fun setIsEmpty!1500 () Bool)

(assert (=> setIsEmpty!1500 setRes!1500))

(declare-fun b!109483 () Bool)

(assert (=> b!109483 (= e!60967 e!60966)))

(declare-fun res!52654 () Bool)

(assert (=> b!109483 (=> res!52654 e!60966)))

(declare-fun dynLambda!641 (Int A!259) (InoxSet B!551))

(assert (=> b!109483 (= res!52654 (not (= (dynLambda!641 f!927 (h!7144 lt!31294)) (dynLambda!641 g!9 (h!7144 lt!31294)))))))

(assert (=> b!109483 (forall!278 lt!31297 lambda!2448)))

(declare-fun lt!31296 () Unit!1200)

(declare-fun lemmaForallThenOnContent!18 (List!1753 Int) Unit!1200)

(assert (=> b!109483 (= lt!31296 (lemmaForallThenOnContent!18 (t!21892 lt!31294) lambda!2448))))

(declare-fun res!52650 () Bool)

(assert (=> start!11078 (=> (not res!52650) (not e!60965))))

(assert (=> start!11078 (= res!52650 (forall!278 s!1451 lambda!2448))))

(assert (=> start!11078 e!60965))

(declare-fun condSetEmpty!1500 () Bool)

(assert (=> start!11078 (= condSetEmpty!1500 (= s!1451 ((as const (Array A!259 Bool)) false)))))

(assert (=> start!11078 setRes!1500))

(assert (=> start!11078 tp!59385))

(assert (=> start!11078 tp!59386))

(assert (= (and start!11078 res!52650) b!109485))

(assert (= (and b!109485 res!52653) b!109484))

(assert (= (and b!109484 res!52651) b!109481))

(assert (= (and b!109481 (not res!52652)) b!109483))

(assert (= (and b!109483 (not res!52654)) b!109482))

(assert (= (and start!11078 condSetEmpty!1500) setIsEmpty!1500))

(assert (= (and start!11078 (not condSetEmpty!1500)) setNonEmpty!1500))

(declare-fun b_lambda!1433 () Bool)

(assert (=> (not b_lambda!1433) (not b!109483)))

(declare-fun t!21885 () Bool)

(declare-fun tb!3399 () Bool)

(assert (=> (and start!11078 (= f!927 f!927) t!21885) tb!3399))

(assert (=> b!109483 t!21885))

(declare-fun result!4936 () Bool)

(declare-fun b_and!5159 () Bool)

(assert (= b_and!5155 (and (=> t!21885 result!4936) b_and!5159)))

(declare-fun t!21887 () Bool)

(declare-fun tb!3401 () Bool)

(assert (=> (and start!11078 (= g!9 f!927) t!21887) tb!3401))

(assert (=> b!109483 t!21887))

(declare-fun result!4938 () Bool)

(declare-fun b_and!5161 () Bool)

(assert (= b_and!5157 (and (=> t!21887 result!4938) b_and!5161)))

(declare-fun b_lambda!1435 () Bool)

(assert (=> (not b_lambda!1435) (not b!109483)))

(declare-fun tb!3403 () Bool)

(declare-fun t!21889 () Bool)

(assert (=> (and start!11078 (= f!927 g!9) t!21889) tb!3403))

(assert (=> b!109483 t!21889))

(declare-fun result!4940 () Bool)

(declare-fun b_and!5163 () Bool)

(assert (= b_and!5159 (and (=> t!21889 result!4940) b_and!5163)))

(declare-fun t!21891 () Bool)

(declare-fun tb!3405 () Bool)

(assert (=> (and start!11078 (= g!9 g!9) t!21891) tb!3405))

(assert (=> b!109483 t!21891))

(declare-fun result!4942 () Bool)

(declare-fun b_and!5165 () Bool)

(assert (= b_and!5161 (and (=> t!21891 result!4942) b_and!5165)))

(declare-fun m!98892 () Bool)

(assert (=> b!109484 m!98892))

(declare-fun m!98894 () Bool)

(assert (=> b!109484 m!98894))

(declare-fun m!98896 () Bool)

(assert (=> b!109485 m!98896))

(declare-fun m!98898 () Bool)

(assert (=> b!109482 m!98898))

(declare-fun m!98900 () Bool)

(assert (=> start!11078 m!98900))

(declare-fun m!98902 () Bool)

(assert (=> b!109483 m!98902))

(declare-fun m!98904 () Bool)

(assert (=> b!109483 m!98904))

(assert (=> b!109483 m!98898))

(declare-fun m!98906 () Bool)

(assert (=> b!109483 m!98906))

(declare-fun m!98908 () Bool)

(assert (=> b!109481 m!98908))

(declare-fun m!98910 () Bool)

(assert (=> b!109481 m!98910))

(declare-fun m!98912 () Bool)

(assert (=> b!109481 m!98912))

(declare-fun m!98914 () Bool)

(assert (=> b!109481 m!98914))

(declare-fun m!98916 () Bool)

(assert (=> b!109481 m!98916))

(declare-fun m!98918 () Bool)

(assert (=> b!109481 m!98918))

(declare-fun m!98920 () Bool)

(assert (=> b!109481 m!98920))

(declare-fun m!98922 () Bool)

(assert (=> b!109481 m!98922))

(declare-fun m!98924 () Bool)

(assert (=> b!109481 m!98924))

(check-sat (not b!109483) (not b!109484) (not tb!3403) (not b!109482) (not tb!3399) (not b!109485) (not tb!3405) b_and!5163 b_and!5165 (not setNonEmpty!1500) (not b!109481) (not b_next!3313) (not b_next!3315) (not b_lambda!1433) (not tb!3401) tp_is_empty!857 (not start!11078) (not b_lambda!1435))
(check-sat b_and!5163 b_and!5165 (not b_next!3315) (not b_next!3313))
