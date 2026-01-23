; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11178 () Bool)

(assert start!11178)

(declare-fun b_free!3401 () Bool)

(declare-fun b_next!3401 () Bool)

(assert (=> start!11178 (= b_free!3401 (not b_next!3401))))

(declare-fun tp!59604 () Bool)

(declare-fun b_and!5387 () Bool)

(assert (=> start!11178 (= tp!59604 b_and!5387)))

(declare-fun b_free!3403 () Bool)

(declare-fun b_next!3403 () Bool)

(assert (=> start!11178 (= b_free!3403 (not b_next!3403))))

(declare-fun tp!59603 () Bool)

(declare-fun b_and!5389 () Bool)

(assert (=> start!11178 (= tp!59603 b_and!5389)))

(assert (=> start!11178 true))

(declare-fun order!1067 () Int)

(declare-fun order!1065 () Int)

(declare-fun lambda!2634 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!699 (Int Int) Int)

(declare-fun dynLambda!700 (Int Int) Int)

(assert (=> start!11178 (< (dynLambda!699 order!1065 f!927) (dynLambda!700 order!1067 lambda!2634))))

(assert (=> start!11178 true))

(declare-fun g!9 () Int)

(assert (=> start!11178 (< (dynLambda!699 order!1065 g!9) (dynLambda!700 order!1067 lambda!2634))))

(declare-fun setNonEmpty!1586 () Bool)

(declare-fun setRes!1586 () Bool)

(declare-fun tp!59605 () Bool)

(declare-fun tp_is_empty!905 () Bool)

(assert (=> setNonEmpty!1586 (= setRes!1586 (and tp!59605 tp_is_empty!905))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!303 0))(
  ( (A!304 (val!604 Int)) )
))
(declare-fun s!1451 () (InoxSet A!303))

(declare-fun setElem!1586 () A!303)

(declare-fun setRest!1586 () (InoxSet A!303))

(assert (=> setNonEmpty!1586 (= s!1451 ((_ map or) (store ((as const (Array A!303 Bool)) false) setElem!1586 true) setRest!1586))))

(declare-fun b!109945 () Bool)

(declare-fun e!61301 () Bool)

(declare-fun e!61300 () Bool)

(assert (=> b!109945 (= e!61301 e!61300)))

(declare-fun res!53016 () Bool)

(assert (=> b!109945 (=> res!53016 e!61300)))

(declare-datatypes ((List!1775 0))(
  ( (Nil!1769) (Cons!1769 (h!7166 A!303) (t!22042 List!1775)) )
))
(declare-fun lt!31976 () List!1775)

(declare-datatypes ((B!591 0))(
  ( (B!592 (val!605 Int)) )
))
(declare-fun dynLambda!701 (Int A!303) (InoxSet B!591))

(assert (=> b!109945 (= res!53016 (not (= (dynLambda!701 f!927 (h!7166 lt!31976)) (dynLambda!701 g!9 (h!7166 lt!31976)))))))

(declare-fun lt!31980 () (InoxSet A!303))

(declare-fun forall!317 ((InoxSet A!303) Int) Bool)

(assert (=> b!109945 (forall!317 lt!31980 lambda!2634)))

(declare-datatypes ((Unit!1240 0))(
  ( (Unit!1241) )
))
(declare-fun lt!31977 () Unit!1240)

(declare-fun lemmaForallThenOnContent!32 (List!1775 Int) Unit!1240)

(assert (=> b!109945 (= lt!31977 (lemmaForallThenOnContent!32 (t!22042 lt!31976) lambda!2634))))

(declare-fun b!109946 () Bool)

(declare-fun e!61298 () Bool)

(declare-fun e!61299 () Bool)

(assert (=> b!109946 (= e!61298 e!61299)))

(declare-fun res!53018 () Bool)

(assert (=> b!109946 (=> (not res!53018) (not e!61299))))

(declare-fun lt!31972 () (InoxSet A!303))

(assert (=> b!109946 (= res!53018 (= s!1451 lt!31972))))

(declare-fun lt!31973 () (InoxSet A!303))

(assert (=> b!109946 (= lt!31972 ((_ map or) lt!31973 lt!31980))))

(declare-fun content!193 (List!1775) (InoxSet A!303))

(assert (=> b!109946 (= lt!31980 (content!193 (t!22042 lt!31976)))))

(assert (=> b!109946 (= lt!31973 (store ((as const (Array A!303 Bool)) false) (h!7166 lt!31976) true))))

(declare-fun b!109947 () Bool)

(declare-fun e!61296 () Bool)

(assert (=> b!109947 (= e!61300 e!61296)))

(declare-fun res!53020 () Bool)

(assert (=> b!109947 (=> res!53020 e!61296)))

(declare-fun lt!31971 () Int)

(declare-fun size!1547 (List!1775) Int)

(assert (=> b!109947 (= res!53020 (not (= lt!31971 (size!1547 (t!22042 lt!31976)))))))

(declare-fun lt!31978 () Int)

(assert (=> b!109947 (> lt!31978 lt!31971)))

(declare-fun tail!198 (List!1775) List!1775)

(assert (=> b!109947 (= lt!31971 (size!1547 (tail!198 lt!31976)))))

(assert (=> b!109947 (= lt!31978 (size!1547 lt!31976))))

(declare-fun lt!31974 () Unit!1240)

(declare-fun lemmaToListSizeBiggerThanTailContentSize!22 ((InoxSet A!303)) Unit!1240)

(assert (=> b!109947 (= lt!31974 (lemmaToListSizeBiggerThanTailContentSize!22 s!1451))))

(declare-fun lt!31970 () Unit!1240)

(declare-fun forallContained!28 (List!1775 Int A!303) Unit!1240)

(assert (=> b!109947 (= lt!31970 (forallContained!28 lt!31976 lambda!2634 (h!7166 lt!31976)))))

(declare-fun setIsEmpty!1586 () Bool)

(assert (=> setIsEmpty!1586 setRes!1586))

(declare-fun b!109948 () Bool)

(declare-fun noDuplicate!19 (List!1775) Bool)

(assert (=> b!109948 (= e!61296 (noDuplicate!19 (t!22042 lt!31976)))))

(declare-fun b!109949 () Bool)

(declare-fun res!53014 () Bool)

(assert (=> b!109949 (=> res!53014 e!61300)))

(assert (=> b!109949 (= res!53014 (not (forall!317 lt!31980 lambda!2634)))))

(declare-fun b!109950 () Bool)

(assert (=> b!109950 (= e!61299 (not e!61301))))

(declare-fun res!53019 () Bool)

(assert (=> b!109950 (=> res!53019 e!61301)))

(declare-fun forall!318 (List!1775 Int) Bool)

(assert (=> b!109950 (= res!53019 (not (forall!318 (t!22042 lt!31976) lambda!2634)))))

(declare-fun flatMap!55 ((InoxSet A!303) Int) (InoxSet B!591))

(assert (=> b!109950 (= ((_ map or) (flatMap!55 lt!31973 g!9) (flatMap!55 lt!31980 g!9)) (flatMap!55 lt!31972 g!9))))

(declare-fun lt!31975 () Unit!1240)

(declare-fun lemmaFlatMapAssociative!38 ((InoxSet A!303) (InoxSet A!303) Int) Unit!1240)

(assert (=> b!109950 (= lt!31975 (lemmaFlatMapAssociative!38 lt!31973 lt!31980 g!9))))

(assert (=> b!109950 (= ((_ map or) (flatMap!55 lt!31973 f!927) (flatMap!55 lt!31980 f!927)) (flatMap!55 lt!31972 f!927))))

(declare-fun lt!31979 () Unit!1240)

(assert (=> b!109950 (= lt!31979 (lemmaFlatMapAssociative!38 lt!31973 lt!31980 f!927))))

(declare-fun res!53015 () Bool)

(declare-fun e!61297 () Bool)

(assert (=> start!11178 (=> (not res!53015) (not e!61297))))

(assert (=> start!11178 (= res!53015 (forall!317 s!1451 lambda!2634))))

(assert (=> start!11178 e!61297))

(declare-fun condSetEmpty!1586 () Bool)

(assert (=> start!11178 (= condSetEmpty!1586 (= s!1451 ((as const (Array A!303 Bool)) false)))))

(assert (=> start!11178 setRes!1586))

(assert (=> start!11178 tp!59604))

(assert (=> start!11178 tp!59603))

(declare-fun b!109951 () Bool)

(assert (=> b!109951 (= e!61297 e!61298)))

(declare-fun res!53017 () Bool)

(assert (=> b!109951 (=> (not res!53017) (not e!61298))))

(get-info :version)

(assert (=> b!109951 (= res!53017 ((_ is Cons!1769) lt!31976))))

(declare-fun toList!254 ((InoxSet A!303)) List!1775)

(assert (=> b!109951 (= lt!31976 (toList!254 s!1451))))

(assert (= (and start!11178 res!53015) b!109951))

(assert (= (and b!109951 res!53017) b!109946))

(assert (= (and b!109946 res!53018) b!109950))

(assert (= (and b!109950 (not res!53019)) b!109945))

(assert (= (and b!109945 (not res!53016)) b!109949))

(assert (= (and b!109949 (not res!53014)) b!109947))

(assert (= (and b!109947 (not res!53020)) b!109948))

(assert (= (and start!11178 condSetEmpty!1586) setIsEmpty!1586))

(assert (= (and start!11178 (not condSetEmpty!1586)) setNonEmpty!1586))

(declare-fun b_lambda!1529 () Bool)

(assert (=> (not b_lambda!1529) (not b!109945)))

(declare-fun t!22035 () Bool)

(declare-fun tb!3527 () Bool)

(assert (=> (and start!11178 (= f!927 f!927) t!22035) tb!3527))

(assert (=> b!109945 t!22035))

(declare-fun result!5076 () Bool)

(declare-fun b_and!5391 () Bool)

(assert (= b_and!5387 (and (=> t!22035 result!5076) b_and!5391)))

(declare-fun tb!3529 () Bool)

(declare-fun t!22037 () Bool)

(assert (=> (and start!11178 (= g!9 f!927) t!22037) tb!3529))

(assert (=> b!109945 t!22037))

(declare-fun result!5078 () Bool)

(declare-fun b_and!5393 () Bool)

(assert (= b_and!5389 (and (=> t!22037 result!5078) b_and!5393)))

(declare-fun b_lambda!1531 () Bool)

(assert (=> (not b_lambda!1531) (not b!109945)))

(declare-fun tb!3531 () Bool)

(declare-fun t!22039 () Bool)

(assert (=> (and start!11178 (= f!927 g!9) t!22039) tb!3531))

(assert (=> b!109945 t!22039))

(declare-fun result!5080 () Bool)

(declare-fun b_and!5395 () Bool)

(assert (= b_and!5391 (and (=> t!22039 result!5080) b_and!5395)))

(declare-fun t!22041 () Bool)

(declare-fun tb!3533 () Bool)

(assert (=> (and start!11178 (= g!9 g!9) t!22041) tb!3533))

(assert (=> b!109945 t!22041))

(declare-fun result!5082 () Bool)

(declare-fun b_and!5397 () Bool)

(assert (= b_and!5393 (and (=> t!22041 result!5082) b_and!5397)))

(declare-fun m!99830 () Bool)

(assert (=> start!11178 m!99830))

(declare-fun m!99832 () Bool)

(assert (=> b!109948 m!99832))

(declare-fun m!99834 () Bool)

(assert (=> b!109951 m!99834))

(declare-fun m!99836 () Bool)

(assert (=> b!109949 m!99836))

(declare-fun m!99838 () Bool)

(assert (=> b!109947 m!99838))

(declare-fun m!99840 () Bool)

(assert (=> b!109947 m!99840))

(declare-fun m!99842 () Bool)

(assert (=> b!109947 m!99842))

(assert (=> b!109947 m!99840))

(declare-fun m!99844 () Bool)

(assert (=> b!109947 m!99844))

(declare-fun m!99846 () Bool)

(assert (=> b!109947 m!99846))

(declare-fun m!99848 () Bool)

(assert (=> b!109947 m!99848))

(declare-fun m!99850 () Bool)

(assert (=> b!109946 m!99850))

(declare-fun m!99852 () Bool)

(assert (=> b!109946 m!99852))

(declare-fun m!99854 () Bool)

(assert (=> b!109945 m!99854))

(declare-fun m!99856 () Bool)

(assert (=> b!109945 m!99856))

(assert (=> b!109945 m!99836))

(declare-fun m!99858 () Bool)

(assert (=> b!109945 m!99858))

(declare-fun m!99860 () Bool)

(assert (=> b!109950 m!99860))

(declare-fun m!99862 () Bool)

(assert (=> b!109950 m!99862))

(declare-fun m!99864 () Bool)

(assert (=> b!109950 m!99864))

(declare-fun m!99866 () Bool)

(assert (=> b!109950 m!99866))

(declare-fun m!99868 () Bool)

(assert (=> b!109950 m!99868))

(declare-fun m!99870 () Bool)

(assert (=> b!109950 m!99870))

(declare-fun m!99872 () Bool)

(assert (=> b!109950 m!99872))

(declare-fun m!99874 () Bool)

(assert (=> b!109950 m!99874))

(declare-fun m!99876 () Bool)

(assert (=> b!109950 m!99876))

(check-sat (not b!109945) (not b_lambda!1531) (not b_next!3401) (not start!11178) (not b!109950) (not tb!3533) (not b!109948) (not b_lambda!1529) (not b!109947) b_and!5397 tp_is_empty!905 (not b!109946) (not setNonEmpty!1586) b_and!5395 (not b_next!3403) (not b!109949) (not tb!3531) (not b!109951) (not tb!3527) (not tb!3529))
(check-sat b_and!5395 b_and!5397 (not b_next!3403) (not b_next!3401))
(get-model)

(declare-fun b_lambda!1537 () Bool)

(assert (= b_lambda!1529 (or (and start!11178 b_free!3401) (and start!11178 b_free!3403 (= g!9 f!927)) b_lambda!1537)))

(declare-fun b_lambda!1539 () Bool)

(assert (= b_lambda!1531 (or (and start!11178 b_free!3401 (= f!927 g!9)) (and start!11178 b_free!3403) b_lambda!1539)))

(check-sat (not b!109945) (not b_next!3401) (not start!11178) (not b!109950) (not b_lambda!1539) (not tb!3533) (not b!109948) (not b!109947) b_and!5397 tp_is_empty!905 (not b!109946) (not setNonEmpty!1586) b_and!5395 (not b_lambda!1537) (not b_next!3403) (not b!109949) (not tb!3531) (not b!109951) (not tb!3527) (not tb!3529))
(check-sat b_and!5395 b_and!5397 (not b_next!3403) (not b_next!3401))
(get-model)

(declare-fun d!27426 () Bool)

(declare-fun c!26159 () Bool)

(assert (=> d!27426 (= c!26159 ((_ is Nil!1769) (t!22042 lt!31976)))))

(declare-fun e!61310 () (InoxSet A!303))

(assert (=> d!27426 (= (content!193 (t!22042 lt!31976)) e!61310)))

(declare-fun b!109964 () Bool)

(assert (=> b!109964 (= e!61310 ((as const (Array A!303 Bool)) false))))

(declare-fun b!109965 () Bool)

(assert (=> b!109965 (= e!61310 ((_ map or) (store ((as const (Array A!303 Bool)) false) (h!7166 (t!22042 lt!31976)) true) (content!193 (t!22042 (t!22042 lt!31976)))))))

(assert (= (and d!27426 c!26159) b!109964))

(assert (= (and d!27426 (not c!26159)) b!109965))

(declare-fun m!99908 () Bool)

(assert (=> b!109965 m!99908))

(declare-fun m!99910 () Bool)

(assert (=> b!109965 m!99910))

(assert (=> b!109946 d!27426))

(declare-fun d!27430 () Bool)

(declare-fun lt!31990 () Bool)

(assert (=> d!27430 (= lt!31990 (forall!318 (toList!254 s!1451) lambda!2634))))

(declare-fun choose!1471 ((InoxSet A!303) Int) Bool)

(assert (=> d!27430 (= lt!31990 (choose!1471 s!1451 lambda!2634))))

(assert (=> d!27430 (= (forall!317 s!1451 lambda!2634) lt!31990)))

(declare-fun bs!10926 () Bool)

(assert (= bs!10926 d!27430))

(assert (=> bs!10926 m!99834))

(assert (=> bs!10926 m!99834))

(declare-fun m!99916 () Bool)

(assert (=> bs!10926 m!99916))

(declare-fun m!99918 () Bool)

(assert (=> bs!10926 m!99918))

(assert (=> start!11178 d!27430))

(declare-fun d!27434 () Bool)

(declare-fun choose!1473 ((InoxSet A!303) Int) (InoxSet B!591))

(assert (=> d!27434 (= (flatMap!55 lt!31980 g!9) (choose!1473 lt!31980 g!9))))

(declare-fun bs!10927 () Bool)

(assert (= bs!10927 d!27434))

(declare-fun m!99920 () Bool)

(assert (=> bs!10927 m!99920))

(assert (=> b!109950 d!27434))

(declare-fun d!27436 () Bool)

(assert (=> d!27436 (= (flatMap!55 lt!31972 f!927) (choose!1473 lt!31972 f!927))))

(declare-fun bs!10928 () Bool)

(assert (= bs!10928 d!27436))

(declare-fun m!99922 () Bool)

(assert (=> bs!10928 m!99922))

(assert (=> b!109950 d!27436))

(declare-fun d!27438 () Bool)

(assert (=> d!27438 (= ((_ map or) (flatMap!55 lt!31973 f!927) (flatMap!55 lt!31980 f!927)) (flatMap!55 ((_ map or) lt!31973 lt!31980) f!927))))

(declare-fun lt!31996 () Unit!1240)

(declare-fun choose!1474 ((InoxSet A!303) (InoxSet A!303) Int) Unit!1240)

(assert (=> d!27438 (= lt!31996 (choose!1474 lt!31973 lt!31980 f!927))))

(assert (=> d!27438 (= (lemmaFlatMapAssociative!38 lt!31973 lt!31980 f!927) lt!31996)))

(declare-fun bs!10929 () Bool)

(assert (= bs!10929 d!27438))

(assert (=> bs!10929 m!99874))

(assert (=> bs!10929 m!99870))

(declare-fun m!99932 () Bool)

(assert (=> bs!10929 m!99932))

(declare-fun m!99934 () Bool)

(assert (=> bs!10929 m!99934))

(assert (=> b!109950 d!27438))

(declare-fun d!27442 () Bool)

(declare-fun res!53040 () Bool)

(declare-fun e!61327 () Bool)

(assert (=> d!27442 (=> res!53040 e!61327)))

(assert (=> d!27442 (= res!53040 ((_ is Nil!1769) (t!22042 lt!31976)))))

(assert (=> d!27442 (= (forall!318 (t!22042 lt!31976) lambda!2634) e!61327)))

(declare-fun b!109985 () Bool)

(declare-fun e!61328 () Bool)

(assert (=> b!109985 (= e!61327 e!61328)))

(declare-fun res!53041 () Bool)

(assert (=> b!109985 (=> (not res!53041) (not e!61328))))

(declare-fun dynLambda!703 (Int A!303) Bool)

(assert (=> b!109985 (= res!53041 (dynLambda!703 lambda!2634 (h!7166 (t!22042 lt!31976))))))

(declare-fun b!109986 () Bool)

(assert (=> b!109986 (= e!61328 (forall!318 (t!22042 (t!22042 lt!31976)) lambda!2634))))

(assert (= (and d!27442 (not res!53040)) b!109985))

(assert (= (and b!109985 res!53041) b!109986))

(declare-fun b_lambda!1545 () Bool)

(assert (=> (not b_lambda!1545) (not b!109985)))

(declare-fun m!99936 () Bool)

(assert (=> b!109985 m!99936))

(declare-fun m!99938 () Bool)

(assert (=> b!109986 m!99938))

(assert (=> b!109950 d!27442))

(declare-fun d!27446 () Bool)

(assert (=> d!27446 (= (flatMap!55 lt!31980 f!927) (choose!1473 lt!31980 f!927))))

(declare-fun bs!10930 () Bool)

(assert (= bs!10930 d!27446))

(declare-fun m!99940 () Bool)

(assert (=> bs!10930 m!99940))

(assert (=> b!109950 d!27446))

(declare-fun d!27448 () Bool)

(assert (=> d!27448 (= (flatMap!55 lt!31973 g!9) (choose!1473 lt!31973 g!9))))

(declare-fun bs!10931 () Bool)

(assert (= bs!10931 d!27448))

(declare-fun m!99942 () Bool)

(assert (=> bs!10931 m!99942))

(assert (=> b!109950 d!27448))

(declare-fun d!27450 () Bool)

(assert (=> d!27450 (= (flatMap!55 lt!31973 f!927) (choose!1473 lt!31973 f!927))))

(declare-fun bs!10932 () Bool)

(assert (= bs!10932 d!27450))

(declare-fun m!99944 () Bool)

(assert (=> bs!10932 m!99944))

(assert (=> b!109950 d!27450))

(declare-fun d!27452 () Bool)

(assert (=> d!27452 (= (flatMap!55 lt!31972 g!9) (choose!1473 lt!31972 g!9))))

(declare-fun bs!10933 () Bool)

(assert (= bs!10933 d!27452))

(declare-fun m!99946 () Bool)

(assert (=> bs!10933 m!99946))

(assert (=> b!109950 d!27452))

(declare-fun d!27454 () Bool)

(assert (=> d!27454 (= ((_ map or) (flatMap!55 lt!31973 g!9) (flatMap!55 lt!31980 g!9)) (flatMap!55 ((_ map or) lt!31973 lt!31980) g!9))))

(declare-fun lt!32000 () Unit!1240)

(assert (=> d!27454 (= lt!32000 (choose!1474 lt!31973 lt!31980 g!9))))

(assert (=> d!27454 (= (lemmaFlatMapAssociative!38 lt!31973 lt!31980 g!9) lt!32000)))

(declare-fun bs!10934 () Bool)

(assert (= bs!10934 d!27454))

(assert (=> bs!10934 m!99876))

(assert (=> bs!10934 m!99860))

(declare-fun m!99948 () Bool)

(assert (=> bs!10934 m!99948))

(declare-fun m!99950 () Bool)

(assert (=> bs!10934 m!99950))

(assert (=> b!109950 d!27454))

(declare-fun d!27456 () Bool)

(declare-fun lt!32001 () Bool)

(assert (=> d!27456 (= lt!32001 (forall!318 (toList!254 lt!31980) lambda!2634))))

(assert (=> d!27456 (= lt!32001 (choose!1471 lt!31980 lambda!2634))))

(assert (=> d!27456 (= (forall!317 lt!31980 lambda!2634) lt!32001)))

(declare-fun bs!10935 () Bool)

(assert (= bs!10935 d!27456))

(declare-fun m!99952 () Bool)

(assert (=> bs!10935 m!99952))

(assert (=> bs!10935 m!99952))

(declare-fun m!99954 () Bool)

(assert (=> bs!10935 m!99954))

(declare-fun m!99956 () Bool)

(assert (=> bs!10935 m!99956))

(assert (=> b!109949 d!27456))

(assert (=> b!109945 d!27456))

(declare-fun d!27458 () Bool)

(assert (=> d!27458 (forall!317 (content!193 (t!22042 lt!31976)) lambda!2634)))

(declare-fun lt!32010 () Unit!1240)

(declare-fun choose!1477 (List!1775 Int) Unit!1240)

(assert (=> d!27458 (= lt!32010 (choose!1477 (t!22042 lt!31976) lambda!2634))))

(assert (=> d!27458 (forall!318 (t!22042 lt!31976) lambda!2634)))

(assert (=> d!27458 (= (lemmaForallThenOnContent!32 (t!22042 lt!31976) lambda!2634) lt!32010)))

(declare-fun bs!10938 () Bool)

(assert (= bs!10938 d!27458))

(assert (=> bs!10938 m!99850))

(assert (=> bs!10938 m!99850))

(declare-fun m!99974 () Bool)

(assert (=> bs!10938 m!99974))

(declare-fun m!99976 () Bool)

(assert (=> bs!10938 m!99976))

(assert (=> bs!10938 m!99864))

(assert (=> b!109945 d!27458))

(declare-fun d!27470 () Bool)

(declare-fun res!53046 () Bool)

(declare-fun e!61338 () Bool)

(assert (=> d!27470 (=> res!53046 e!61338)))

(assert (=> d!27470 (= res!53046 ((_ is Nil!1769) (t!22042 lt!31976)))))

(assert (=> d!27470 (= (noDuplicate!19 (t!22042 lt!31976)) e!61338)))

(declare-fun b!110001 () Bool)

(declare-fun e!61339 () Bool)

(assert (=> b!110001 (= e!61338 e!61339)))

(declare-fun res!53047 () Bool)

(assert (=> b!110001 (=> (not res!53047) (not e!61339))))

(declare-fun contains!290 (List!1775 A!303) Bool)

(assert (=> b!110001 (= res!53047 (not (contains!290 (t!22042 (t!22042 lt!31976)) (h!7166 (t!22042 lt!31976)))))))

(declare-fun b!110002 () Bool)

(assert (=> b!110002 (= e!61339 (noDuplicate!19 (t!22042 (t!22042 lt!31976))))))

(assert (= (and d!27470 (not res!53046)) b!110001))

(assert (= (and b!110001 res!53047) b!110002))

(declare-fun m!99986 () Bool)

(assert (=> b!110001 m!99986))

(declare-fun m!99988 () Bool)

(assert (=> b!110002 m!99988))

(assert (=> b!109948 d!27470))

(declare-fun d!27476 () Bool)

(declare-fun e!61345 () Bool)

(assert (=> d!27476 e!61345))

(declare-fun res!53053 () Bool)

(assert (=> d!27476 (=> (not res!53053) (not e!61345))))

(declare-fun lt!32019 () List!1775)

(assert (=> d!27476 (= res!53053 (noDuplicate!19 lt!32019))))

(declare-fun choose!1478 ((InoxSet A!303)) List!1775)

(assert (=> d!27476 (= lt!32019 (choose!1478 s!1451))))

(assert (=> d!27476 (= (toList!254 s!1451) lt!32019)))

(declare-fun b!110012 () Bool)

(assert (=> b!110012 (= e!61345 (= (content!193 lt!32019) s!1451))))

(assert (= (and d!27476 res!53053) b!110012))

(declare-fun m!99996 () Bool)

(assert (=> d!27476 m!99996))

(declare-fun m!99998 () Bool)

(assert (=> d!27476 m!99998))

(declare-fun m!100000 () Bool)

(assert (=> b!110012 m!100000))

(assert (=> b!109951 d!27476))

(declare-fun d!27478 () Bool)

(declare-fun lt!32022 () Int)

(assert (=> d!27478 (>= lt!32022 0)))

(declare-fun e!61348 () Int)

(assert (=> d!27478 (= lt!32022 e!61348)))

(declare-fun c!26170 () Bool)

(assert (=> d!27478 (= c!26170 ((_ is Nil!1769) (tail!198 lt!31976)))))

(assert (=> d!27478 (= (size!1547 (tail!198 lt!31976)) lt!32022)))

(declare-fun b!110017 () Bool)

(assert (=> b!110017 (= e!61348 0)))

(declare-fun b!110018 () Bool)

(assert (=> b!110018 (= e!61348 (+ 1 (size!1547 (t!22042 (tail!198 lt!31976)))))))

(assert (= (and d!27478 c!26170) b!110017))

(assert (= (and d!27478 (not c!26170)) b!110018))

(declare-fun m!100006 () Bool)

(assert (=> b!110018 m!100006))

(assert (=> b!109947 d!27478))

(declare-fun d!27484 () Bool)

(declare-fun lt!32023 () Int)

(assert (=> d!27484 (>= lt!32023 0)))

(declare-fun e!61349 () Int)

(assert (=> d!27484 (= lt!32023 e!61349)))

(declare-fun c!26171 () Bool)

(assert (=> d!27484 (= c!26171 ((_ is Nil!1769) (t!22042 lt!31976)))))

(assert (=> d!27484 (= (size!1547 (t!22042 lt!31976)) lt!32023)))

(declare-fun b!110019 () Bool)

(assert (=> b!110019 (= e!61349 0)))

(declare-fun b!110020 () Bool)

(assert (=> b!110020 (= e!61349 (+ 1 (size!1547 (t!22042 (t!22042 lt!31976)))))))

(assert (= (and d!27484 c!26171) b!110019))

(assert (= (and d!27484 (not c!26171)) b!110020))

(declare-fun m!100008 () Bool)

(assert (=> b!110020 m!100008))

(assert (=> b!109947 d!27484))

(declare-fun d!27486 () Bool)

(declare-fun lt!32024 () Int)

(assert (=> d!27486 (>= lt!32024 0)))

(declare-fun e!61350 () Int)

(assert (=> d!27486 (= lt!32024 e!61350)))

(declare-fun c!26172 () Bool)

(assert (=> d!27486 (= c!26172 ((_ is Nil!1769) lt!31976))))

(assert (=> d!27486 (= (size!1547 lt!31976) lt!32024)))

(declare-fun b!110021 () Bool)

(assert (=> b!110021 (= e!61350 0)))

(declare-fun b!110022 () Bool)

(assert (=> b!110022 (= e!61350 (+ 1 (size!1547 (t!22042 lt!31976))))))

(assert (= (and d!27486 c!26172) b!110021))

(assert (= (and d!27486 (not c!26172)) b!110022))

(assert (=> b!110022 m!99838))

(assert (=> b!109947 d!27486))

(declare-fun d!27488 () Bool)

(assert (=> d!27488 (> (size!1547 (toList!254 s!1451)) (size!1547 (tail!198 (toList!254 s!1451))))))

(declare-fun lt!32027 () Unit!1240)

(declare-fun choose!1479 ((InoxSet A!303)) Unit!1240)

(assert (=> d!27488 (= lt!32027 (choose!1479 s!1451))))

(assert (=> d!27488 (not (= s!1451 ((as const (Array A!303 Bool)) false)))))

(assert (=> d!27488 (= (lemmaToListSizeBiggerThanTailContentSize!22 s!1451) lt!32027)))

(declare-fun bs!10942 () Bool)

(assert (= bs!10942 d!27488))

(declare-fun m!100010 () Bool)

(assert (=> bs!10942 m!100010))

(assert (=> bs!10942 m!99834))

(declare-fun m!100012 () Bool)

(assert (=> bs!10942 m!100012))

(declare-fun m!100014 () Bool)

(assert (=> bs!10942 m!100014))

(assert (=> bs!10942 m!99834))

(declare-fun m!100016 () Bool)

(assert (=> bs!10942 m!100016))

(assert (=> bs!10942 m!99834))

(assert (=> bs!10942 m!100012))

(assert (=> b!109947 d!27488))

(declare-fun d!27490 () Bool)

(assert (=> d!27490 (dynLambda!703 lambda!2634 (h!7166 lt!31976))))

(declare-fun lt!32030 () Unit!1240)

(declare-fun choose!1480 (List!1775 Int A!303) Unit!1240)

(assert (=> d!27490 (= lt!32030 (choose!1480 lt!31976 lambda!2634 (h!7166 lt!31976)))))

(declare-fun e!61353 () Bool)

(assert (=> d!27490 e!61353))

(declare-fun res!53056 () Bool)

(assert (=> d!27490 (=> (not res!53056) (not e!61353))))

(assert (=> d!27490 (= res!53056 (forall!318 lt!31976 lambda!2634))))

(assert (=> d!27490 (= (forallContained!28 lt!31976 lambda!2634 (h!7166 lt!31976)) lt!32030)))

(declare-fun b!110025 () Bool)

(assert (=> b!110025 (= e!61353 (contains!290 lt!31976 (h!7166 lt!31976)))))

(assert (= (and d!27490 res!53056) b!110025))

(declare-fun b_lambda!1559 () Bool)

(assert (=> (not b_lambda!1559) (not d!27490)))

(declare-fun m!100018 () Bool)

(assert (=> d!27490 m!100018))

(declare-fun m!100020 () Bool)

(assert (=> d!27490 m!100020))

(declare-fun m!100022 () Bool)

(assert (=> d!27490 m!100022))

(declare-fun m!100024 () Bool)

(assert (=> b!110025 m!100024))

(assert (=> b!109947 d!27490))

(declare-fun d!27492 () Bool)

(assert (=> d!27492 (= (tail!198 lt!31976) (t!22042 lt!31976))))

(assert (=> b!109947 d!27492))

(declare-fun condSetEmpty!1596 () Bool)

(assert (=> tb!3527 (= condSetEmpty!1596 (= (dynLambda!701 f!927 (h!7166 lt!31976)) ((as const (Array B!591 Bool)) false)))))

(declare-fun setRes!1596 () Bool)

(assert (=> tb!3527 (= result!5076 setRes!1596)))

(declare-fun setIsEmpty!1596 () Bool)

(assert (=> setIsEmpty!1596 setRes!1596))

(declare-fun setNonEmpty!1596 () Bool)

(declare-fun tp!59615 () Bool)

(declare-fun tp_is_empty!909 () Bool)

(assert (=> setNonEmpty!1596 (= setRes!1596 (and tp!59615 tp_is_empty!909))))

(declare-fun setRest!1596 () (InoxSet B!591))

(declare-fun setElem!1596 () B!591)

(assert (=> setNonEmpty!1596 (= (dynLambda!701 f!927 (h!7166 lt!31976)) ((_ map or) (store ((as const (Array B!591 Bool)) false) setElem!1596 true) setRest!1596))))

(assert (= (and tb!3527 condSetEmpty!1596) setIsEmpty!1596))

(assert (= (and tb!3527 (not condSetEmpty!1596)) setNonEmpty!1596))

(declare-fun condSetEmpty!1597 () Bool)

(assert (=> tb!3533 (= condSetEmpty!1597 (= (dynLambda!701 g!9 (h!7166 lt!31976)) ((as const (Array B!591 Bool)) false)))))

(declare-fun setRes!1597 () Bool)

(assert (=> tb!3533 (= result!5082 setRes!1597)))

(declare-fun setIsEmpty!1597 () Bool)

(assert (=> setIsEmpty!1597 setRes!1597))

(declare-fun setNonEmpty!1597 () Bool)

(declare-fun tp!59616 () Bool)

(assert (=> setNonEmpty!1597 (= setRes!1597 (and tp!59616 tp_is_empty!909))))

(declare-fun setRest!1597 () (InoxSet B!591))

(declare-fun setElem!1597 () B!591)

(assert (=> setNonEmpty!1597 (= (dynLambda!701 g!9 (h!7166 lt!31976)) ((_ map or) (store ((as const (Array B!591 Bool)) false) setElem!1597 true) setRest!1597))))

(assert (= (and tb!3533 condSetEmpty!1597) setIsEmpty!1597))

(assert (= (and tb!3533 (not condSetEmpty!1597)) setNonEmpty!1597))

(declare-fun condSetEmpty!1600 () Bool)

(assert (=> setNonEmpty!1586 (= condSetEmpty!1600 (= setRest!1586 ((as const (Array A!303 Bool)) false)))))

(declare-fun setRes!1600 () Bool)

(assert (=> setNonEmpty!1586 (= tp!59605 setRes!1600)))

(declare-fun setIsEmpty!1600 () Bool)

(assert (=> setIsEmpty!1600 setRes!1600))

(declare-fun setNonEmpty!1600 () Bool)

(declare-fun tp!59619 () Bool)

(assert (=> setNonEmpty!1600 (= setRes!1600 (and tp!59619 tp_is_empty!905))))

(declare-fun setElem!1600 () A!303)

(declare-fun setRest!1600 () (InoxSet A!303))

(assert (=> setNonEmpty!1600 (= setRest!1586 ((_ map or) (store ((as const (Array A!303 Bool)) false) setElem!1600 true) setRest!1600))))

(assert (= (and setNonEmpty!1586 condSetEmpty!1600) setIsEmpty!1600))

(assert (= (and setNonEmpty!1586 (not condSetEmpty!1600)) setNonEmpty!1600))

(assert (= result!5078 result!5076))

(assert (= result!5080 result!5082))

(declare-fun b_lambda!1561 () Bool)

(assert (= b_lambda!1545 (or start!11178 b_lambda!1561)))

(declare-fun bs!10943 () Bool)

(declare-fun d!27494 () Bool)

(assert (= bs!10943 (and d!27494 start!11178)))

(assert (=> bs!10943 (= (dynLambda!703 lambda!2634 (h!7166 (t!22042 lt!31976))) (= (dynLambda!701 f!927 (h!7166 (t!22042 lt!31976))) (dynLambda!701 g!9 (h!7166 (t!22042 lt!31976)))))))

(declare-fun b_lambda!1565 () Bool)

(assert (=> (not b_lambda!1565) (not bs!10943)))

(declare-fun t!22052 () Bool)

(declare-fun tb!3543 () Bool)

(assert (=> (and start!11178 (= f!927 f!927) t!22052) tb!3543))

(assert (=> bs!10943 t!22052))

(declare-fun result!5100 () Bool)

(declare-fun b_and!5415 () Bool)

(assert (= b_and!5395 (and (=> t!22052 result!5100) b_and!5415)))

(declare-fun t!22054 () Bool)

(declare-fun tb!3545 () Bool)

(assert (=> (and start!11178 (= g!9 f!927) t!22054) tb!3545))

(assert (=> bs!10943 t!22054))

(declare-fun result!5102 () Bool)

(declare-fun b_and!5417 () Bool)

(assert (= b_and!5397 (and (=> t!22054 result!5102) b_and!5417)))

(declare-fun b_lambda!1567 () Bool)

(assert (=> (not b_lambda!1567) (not bs!10943)))

(declare-fun tb!3547 () Bool)

(declare-fun t!22056 () Bool)

(assert (=> (and start!11178 (= f!927 g!9) t!22056) tb!3547))

(assert (=> bs!10943 t!22056))

(declare-fun result!5104 () Bool)

(declare-fun b_and!5419 () Bool)

(assert (= b_and!5415 (and (=> t!22056 result!5104) b_and!5419)))

(declare-fun t!22058 () Bool)

(declare-fun tb!3549 () Bool)

(assert (=> (and start!11178 (= g!9 g!9) t!22058) tb!3549))

(assert (=> bs!10943 t!22058))

(declare-fun result!5106 () Bool)

(declare-fun b_and!5421 () Bool)

(assert (= b_and!5417 (and (=> t!22058 result!5106) b_and!5421)))

(declare-fun m!100026 () Bool)

(assert (=> bs!10943 m!100026))

(declare-fun m!100028 () Bool)

(assert (=> bs!10943 m!100028))

(assert (=> b!109985 d!27494))

(declare-fun b_lambda!1563 () Bool)

(assert (= b_lambda!1559 (or start!11178 b_lambda!1563)))

(declare-fun bs!10944 () Bool)

(declare-fun d!27496 () Bool)

(assert (= bs!10944 (and d!27496 start!11178)))

(assert (=> bs!10944 (= (dynLambda!703 lambda!2634 (h!7166 lt!31976)) (= (dynLambda!701 f!927 (h!7166 lt!31976)) (dynLambda!701 g!9 (h!7166 lt!31976))))))

(declare-fun b_lambda!1569 () Bool)

(assert (=> (not b_lambda!1569) (not bs!10944)))

(assert (=> bs!10944 t!22035))

(declare-fun b_and!5423 () Bool)

(assert (= b_and!5419 (and (=> t!22035 result!5076) b_and!5423)))

(assert (=> bs!10944 t!22037))

(declare-fun b_and!5425 () Bool)

(assert (= b_and!5421 (and (=> t!22037 result!5078) b_and!5425)))

(declare-fun b_lambda!1571 () Bool)

(assert (=> (not b_lambda!1571) (not bs!10944)))

(assert (=> bs!10944 t!22039))

(declare-fun b_and!5427 () Bool)

(assert (= b_and!5423 (and (=> t!22039 result!5080) b_and!5427)))

(assert (=> bs!10944 t!22041))

(declare-fun b_and!5429 () Bool)

(assert (= b_and!5425 (and (=> t!22041 result!5082) b_and!5429)))

(assert (=> bs!10944 m!99854))

(assert (=> bs!10944 m!99856))

(assert (=> d!27490 d!27496))

(check-sat (not b_lambda!1561) (not b_lambda!1565) (not b_lambda!1571) (not d!27454) (not tb!3549) (not b!110012) (not tb!3543) (not b_lambda!1539) (not d!27452) (not b!109986) (not b!110025) (not b!110020) (not d!27476) tp_is_empty!905 (not d!27430) (not setNonEmpty!1600) (not b_lambda!1537) (not b_next!3403) tp_is_empty!909 (not d!27450) (not b!110002) (not b_lambda!1569) (not d!27434) (not b!110022) (not b_next!3401) (not tb!3547) (not b!109965) (not d!27446) (not d!27458) (not d!27438) (not d!27436) (not d!27490) b_and!5429 (not b!110001) (not tb!3545) (not b!110018) (not setNonEmpty!1597) (not d!27456) (not b_lambda!1567) b_and!5427 (not d!27488) (not b_lambda!1563) (not d!27448) (not setNonEmpty!1596))
(check-sat b_and!5427 b_and!5429 (not b_next!3403) (not b_next!3401))
(get-model)

(declare-fun b_lambda!1581 () Bool)

(assert (= b_lambda!1565 (or (and start!11178 b_free!3401) (and start!11178 b_free!3403 (= g!9 f!927)) b_lambda!1581)))

(declare-fun b_lambda!1583 () Bool)

(assert (= b_lambda!1567 (or (and start!11178 b_free!3401 (= f!927 g!9)) (and start!11178 b_free!3403) b_lambda!1583)))

(declare-fun b_lambda!1585 () Bool)

(assert (= b_lambda!1569 (or (and start!11178 b_free!3401) (and start!11178 b_free!3403 (= g!9 f!927)) b_lambda!1585)))

(declare-fun b_lambda!1587 () Bool)

(assert (= b_lambda!1571 (or (and start!11178 b_free!3401 (= f!927 g!9)) (and start!11178 b_free!3403) b_lambda!1587)))

(check-sat (not b_lambda!1561) (not d!27454) (not tb!3549) (not tb!3543) (not b_lambda!1539) (not d!27452) (not b!109986) (not d!27456) (not b!110020) (not d!27476) tp_is_empty!905 (not d!27430) (not setNonEmpty!1600) (not b_lambda!1537) (not b_next!3403) tp_is_empty!909 (not d!27450) (not b!110002) (not d!27434) (not b!110022) (not b_next!3401) (not tb!3547) (not b!109965) (not d!27446) (not b_lambda!1581) (not d!27458) (not d!27438) (not d!27436) (not d!27490) (not b_lambda!1583) (not b!110012) b_and!5429 (not b!110001) (not tb!3545) (not b!110018) (not setNonEmpty!1597) (not b_lambda!1587) (not b!110025) b_and!5427 (not d!27488) (not b_lambda!1563) (not d!27448) (not setNonEmpty!1596) (not b_lambda!1585))
(check-sat b_and!5427 b_and!5429 (not b_next!3403) (not b_next!3401))
(get-model)

(assert (=> d!27454 d!27448))

(assert (=> d!27454 d!27434))

(declare-fun d!27570 () Bool)

(assert (=> d!27570 (= (flatMap!55 ((_ map or) lt!31973 lt!31980) g!9) (choose!1473 ((_ map or) lt!31973 lt!31980) g!9))))

(declare-fun bs!10958 () Bool)

(assert (= bs!10958 d!27570))

(declare-fun m!100108 () Bool)

(assert (=> bs!10958 m!100108))

(assert (=> d!27454 d!27570))

(declare-fun d!27572 () Bool)

(assert (=> d!27572 (= ((_ map or) (flatMap!55 lt!31973 g!9) (flatMap!55 lt!31980 g!9)) (flatMap!55 ((_ map or) lt!31973 lt!31980) g!9))))

(assert (=> d!27572 true))

(declare-fun _$9!116 () Unit!1240)

(assert (=> d!27572 (= (choose!1474 lt!31973 lt!31980 g!9) _$9!116)))

(declare-fun bs!10959 () Bool)

(assert (= bs!10959 d!27572))

(assert (=> bs!10959 m!99876))

(assert (=> bs!10959 m!99860))

(assert (=> bs!10959 m!99948))

(assert (=> d!27454 d!27572))

(declare-fun d!27574 () Bool)

(assert (=> d!27574 true))

(declare-fun setRes!1616 () Bool)

(assert (=> d!27574 setRes!1616))

(declare-fun condSetEmpty!1616 () Bool)

(declare-fun res!53098 () (InoxSet B!591))

(assert (=> d!27574 (= condSetEmpty!1616 (= res!53098 ((as const (Array B!591 Bool)) false)))))

(assert (=> d!27574 (= (choose!1473 lt!31980 g!9) res!53098)))

(declare-fun setIsEmpty!1616 () Bool)

(assert (=> setIsEmpty!1616 setRes!1616))

(declare-fun setNonEmpty!1616 () Bool)

(declare-fun tp!59638 () Bool)

(assert (=> setNonEmpty!1616 (= setRes!1616 (and tp!59638 tp_is_empty!909))))

(declare-fun setElem!1616 () B!591)

(declare-fun setRest!1616 () (InoxSet B!591))

(assert (=> setNonEmpty!1616 (= res!53098 ((_ map or) (store ((as const (Array B!591 Bool)) false) setElem!1616 true) setRest!1616))))

(assert (= (and d!27574 condSetEmpty!1616) setIsEmpty!1616))

(assert (= (and d!27574 (not condSetEmpty!1616)) setNonEmpty!1616))

(assert (=> d!27434 d!27574))

(declare-fun d!27576 () Bool)

(declare-fun lt!32041 () Int)

(assert (=> d!27576 (>= lt!32041 0)))

(declare-fun e!61387 () Int)

(assert (=> d!27576 (= lt!32041 e!61387)))

(declare-fun c!26179 () Bool)

(assert (=> d!27576 (= c!26179 ((_ is Nil!1769) (t!22042 (tail!198 lt!31976))))))

(assert (=> d!27576 (= (size!1547 (t!22042 (tail!198 lt!31976))) lt!32041)))

(declare-fun b!110069 () Bool)

(assert (=> b!110069 (= e!61387 0)))

(declare-fun b!110070 () Bool)

(assert (=> b!110070 (= e!61387 (+ 1 (size!1547 (t!22042 (t!22042 (tail!198 lt!31976))))))))

(assert (= (and d!27576 c!26179) b!110069))

(assert (= (and d!27576 (not c!26179)) b!110070))

(declare-fun m!100110 () Bool)

(assert (=> b!110070 m!100110))

(assert (=> b!110018 d!27576))

(declare-fun d!27578 () Bool)

(declare-fun c!26180 () Bool)

(assert (=> d!27578 (= c!26180 ((_ is Nil!1769) lt!32019))))

(declare-fun e!61388 () (InoxSet A!303))

(assert (=> d!27578 (= (content!193 lt!32019) e!61388)))

(declare-fun b!110071 () Bool)

(assert (=> b!110071 (= e!61388 ((as const (Array A!303 Bool)) false))))

(declare-fun b!110072 () Bool)

(assert (=> b!110072 (= e!61388 ((_ map or) (store ((as const (Array A!303 Bool)) false) (h!7166 lt!32019) true) (content!193 (t!22042 lt!32019))))))

(assert (= (and d!27578 c!26180) b!110071))

(assert (= (and d!27578 (not c!26180)) b!110072))

(declare-fun m!100112 () Bool)

(assert (=> b!110072 m!100112))

(declare-fun m!100114 () Bool)

(assert (=> b!110072 m!100114))

(assert (=> b!110012 d!27578))

(declare-fun d!27580 () Bool)

(declare-fun lt!32042 () Int)

(assert (=> d!27580 (>= lt!32042 0)))

(declare-fun e!61389 () Int)

(assert (=> d!27580 (= lt!32042 e!61389)))

(declare-fun c!26181 () Bool)

(assert (=> d!27580 (= c!26181 ((_ is Nil!1769) (tail!198 (toList!254 s!1451))))))

(assert (=> d!27580 (= (size!1547 (tail!198 (toList!254 s!1451))) lt!32042)))

(declare-fun b!110073 () Bool)

(assert (=> b!110073 (= e!61389 0)))

(declare-fun b!110074 () Bool)

(assert (=> b!110074 (= e!61389 (+ 1 (size!1547 (t!22042 (tail!198 (toList!254 s!1451))))))))

(assert (= (and d!27580 c!26181) b!110073))

(assert (= (and d!27580 (not c!26181)) b!110074))

(declare-fun m!100116 () Bool)

(assert (=> b!110074 m!100116))

(assert (=> d!27488 d!27580))

(declare-fun d!27582 () Bool)

(assert (=> d!27582 (= (tail!198 (toList!254 s!1451)) (t!22042 (toList!254 s!1451)))))

(assert (=> d!27488 d!27582))

(assert (=> d!27488 d!27476))

(declare-fun d!27584 () Bool)

(declare-fun lt!32043 () Int)

(assert (=> d!27584 (>= lt!32043 0)))

(declare-fun e!61390 () Int)

(assert (=> d!27584 (= lt!32043 e!61390)))

(declare-fun c!26182 () Bool)

(assert (=> d!27584 (= c!26182 ((_ is Nil!1769) (toList!254 s!1451)))))

(assert (=> d!27584 (= (size!1547 (toList!254 s!1451)) lt!32043)))

(declare-fun b!110075 () Bool)

(assert (=> b!110075 (= e!61390 0)))

(declare-fun b!110076 () Bool)

(assert (=> b!110076 (= e!61390 (+ 1 (size!1547 (t!22042 (toList!254 s!1451)))))))

(assert (= (and d!27584 c!26182) b!110075))

(assert (= (and d!27584 (not c!26182)) b!110076))

(declare-fun m!100118 () Bool)

(assert (=> b!110076 m!100118))

(assert (=> d!27488 d!27584))

(declare-fun d!27586 () Bool)

(assert (=> d!27586 (> (size!1547 (toList!254 s!1451)) (size!1547 (tail!198 (toList!254 s!1451))))))

(assert (=> d!27586 true))

(declare-fun _$23!142 () Unit!1240)

(assert (=> d!27586 (= (choose!1479 s!1451) _$23!142)))

(declare-fun bs!10960 () Bool)

(assert (= bs!10960 d!27586))

(assert (=> bs!10960 m!99834))

(assert (=> bs!10960 m!99834))

(assert (=> bs!10960 m!100016))

(assert (=> bs!10960 m!99834))

(assert (=> bs!10960 m!100012))

(assert (=> bs!10960 m!100012))

(assert (=> bs!10960 m!100014))

(assert (=> d!27488 d!27586))

(declare-fun d!27588 () Bool)

(assert (=> d!27588 true))

(declare-fun setRes!1617 () Bool)

(assert (=> d!27588 setRes!1617))

(declare-fun condSetEmpty!1617 () Bool)

(declare-fun res!53099 () (InoxSet B!591))

(assert (=> d!27588 (= condSetEmpty!1617 (= res!53099 ((as const (Array B!591 Bool)) false)))))

(assert (=> d!27588 (= (choose!1473 lt!31972 f!927) res!53099)))

(declare-fun setIsEmpty!1617 () Bool)

(assert (=> setIsEmpty!1617 setRes!1617))

(declare-fun setNonEmpty!1617 () Bool)

(declare-fun tp!59639 () Bool)

(assert (=> setNonEmpty!1617 (= setRes!1617 (and tp!59639 tp_is_empty!909))))

(declare-fun setElem!1617 () B!591)

(declare-fun setRest!1617 () (InoxSet B!591))

(assert (=> setNonEmpty!1617 (= res!53099 ((_ map or) (store ((as const (Array B!591 Bool)) false) setElem!1617 true) setRest!1617))))

(assert (= (and d!27588 condSetEmpty!1617) setIsEmpty!1617))

(assert (= (and d!27588 (not condSetEmpty!1617)) setNonEmpty!1617))

(assert (=> d!27436 d!27588))

(declare-fun d!27590 () Bool)

(declare-fun lt!32046 () Bool)

(assert (=> d!27590 (= lt!32046 (select (content!193 lt!31976) (h!7166 lt!31976)))))

(declare-fun e!61396 () Bool)

(assert (=> d!27590 (= lt!32046 e!61396)))

(declare-fun res!53105 () Bool)

(assert (=> d!27590 (=> (not res!53105) (not e!61396))))

(assert (=> d!27590 (= res!53105 ((_ is Cons!1769) lt!31976))))

(assert (=> d!27590 (= (contains!290 lt!31976 (h!7166 lt!31976)) lt!32046)))

(declare-fun b!110081 () Bool)

(declare-fun e!61395 () Bool)

(assert (=> b!110081 (= e!61396 e!61395)))

(declare-fun res!53104 () Bool)

(assert (=> b!110081 (=> res!53104 e!61395)))

(assert (=> b!110081 (= res!53104 (= (h!7166 lt!31976) (h!7166 lt!31976)))))

(declare-fun b!110082 () Bool)

(assert (=> b!110082 (= e!61395 (contains!290 (t!22042 lt!31976) (h!7166 lt!31976)))))

(assert (= (and d!27590 res!53105) b!110081))

(assert (= (and b!110081 (not res!53104)) b!110082))

(declare-fun m!100120 () Bool)

(assert (=> d!27590 m!100120))

(declare-fun m!100122 () Bool)

(assert (=> d!27590 m!100122))

(declare-fun m!100124 () Bool)

(assert (=> b!110082 m!100124))

(assert (=> b!110025 d!27590))

(declare-fun d!27592 () Bool)

(assert (=> d!27592 true))

(declare-fun setRes!1618 () Bool)

(assert (=> d!27592 setRes!1618))

(declare-fun condSetEmpty!1618 () Bool)

(declare-fun res!53106 () (InoxSet B!591))

(assert (=> d!27592 (= condSetEmpty!1618 (= res!53106 ((as const (Array B!591 Bool)) false)))))

(assert (=> d!27592 (= (choose!1473 lt!31980 f!927) res!53106)))

(declare-fun setIsEmpty!1618 () Bool)

(assert (=> setIsEmpty!1618 setRes!1618))

(declare-fun setNonEmpty!1618 () Bool)

(declare-fun tp!59640 () Bool)

(assert (=> setNonEmpty!1618 (= setRes!1618 (and tp!59640 tp_is_empty!909))))

(declare-fun setElem!1618 () B!591)

(declare-fun setRest!1618 () (InoxSet B!591))

(assert (=> setNonEmpty!1618 (= res!53106 ((_ map or) (store ((as const (Array B!591 Bool)) false) setElem!1618 true) setRest!1618))))

(assert (= (and d!27592 condSetEmpty!1618) setIsEmpty!1618))

(assert (= (and d!27592 (not condSetEmpty!1618)) setNonEmpty!1618))

(assert (=> d!27446 d!27592))

(declare-fun d!27594 () Bool)

(declare-fun lt!32047 () Bool)

(assert (=> d!27594 (= lt!32047 (forall!318 (toList!254 (content!193 (t!22042 lt!31976))) lambda!2634))))

(assert (=> d!27594 (= lt!32047 (choose!1471 (content!193 (t!22042 lt!31976)) lambda!2634))))

(assert (=> d!27594 (= (forall!317 (content!193 (t!22042 lt!31976)) lambda!2634) lt!32047)))

(declare-fun bs!10961 () Bool)

(assert (= bs!10961 d!27594))

(assert (=> bs!10961 m!99850))

(declare-fun m!100126 () Bool)

(assert (=> bs!10961 m!100126))

(assert (=> bs!10961 m!100126))

(declare-fun m!100128 () Bool)

(assert (=> bs!10961 m!100128))

(assert (=> bs!10961 m!99850))

(declare-fun m!100130 () Bool)

(assert (=> bs!10961 m!100130))

(assert (=> d!27458 d!27594))

(assert (=> d!27458 d!27426))

(declare-fun d!27596 () Bool)

(assert (=> d!27596 (forall!317 (content!193 (t!22042 lt!31976)) lambda!2634)))

(assert (=> d!27596 true))

(declare-fun _$36!112 () Unit!1240)

(assert (=> d!27596 (= (choose!1477 (t!22042 lt!31976) lambda!2634) _$36!112)))

(declare-fun bs!10962 () Bool)

(assert (= bs!10962 d!27596))

(assert (=> bs!10962 m!99850))

(assert (=> bs!10962 m!99850))

(assert (=> bs!10962 m!99974))

(assert (=> d!27458 d!27596))

(assert (=> d!27458 d!27442))

(declare-fun d!27598 () Bool)

(declare-fun res!53107 () Bool)

(declare-fun e!61397 () Bool)

(assert (=> d!27598 (=> res!53107 e!61397)))

(assert (=> d!27598 (= res!53107 ((_ is Nil!1769) (toList!254 s!1451)))))

(assert (=> d!27598 (= (forall!318 (toList!254 s!1451) lambda!2634) e!61397)))

(declare-fun b!110083 () Bool)

(declare-fun e!61398 () Bool)

(assert (=> b!110083 (= e!61397 e!61398)))

(declare-fun res!53108 () Bool)

(assert (=> b!110083 (=> (not res!53108) (not e!61398))))

(assert (=> b!110083 (= res!53108 (dynLambda!703 lambda!2634 (h!7166 (toList!254 s!1451))))))

(declare-fun b!110084 () Bool)

(assert (=> b!110084 (= e!61398 (forall!318 (t!22042 (toList!254 s!1451)) lambda!2634))))

(assert (= (and d!27598 (not res!53107)) b!110083))

(assert (= (and b!110083 res!53108) b!110084))

(declare-fun b_lambda!1621 () Bool)

(assert (=> (not b_lambda!1621) (not b!110083)))

(declare-fun m!100132 () Bool)

(assert (=> b!110083 m!100132))

(declare-fun m!100134 () Bool)

(assert (=> b!110084 m!100134))

(assert (=> d!27430 d!27598))

(assert (=> d!27430 d!27476))

(declare-fun d!27600 () Bool)

(declare-fun res!53111 () Bool)

(assert (=> d!27600 (= res!53111 (forall!318 (toList!254 s!1451) lambda!2634))))

(assert (=> d!27600 true))

(assert (=> d!27600 (= (choose!1471 s!1451 lambda!2634) res!53111)))

(declare-fun bs!10963 () Bool)

(assert (= bs!10963 d!27600))

(assert (=> bs!10963 m!99834))

(assert (=> bs!10963 m!99834))

(assert (=> bs!10963 m!99916))

(assert (=> d!27430 d!27600))

(declare-fun d!27602 () Bool)

(assert (=> d!27602 true))

(declare-fun setRes!1619 () Bool)

(assert (=> d!27602 setRes!1619))

(declare-fun condSetEmpty!1619 () Bool)

(declare-fun res!53112 () (InoxSet B!591))

(assert (=> d!27602 (= condSetEmpty!1619 (= res!53112 ((as const (Array B!591 Bool)) false)))))

(assert (=> d!27602 (= (choose!1473 lt!31973 f!927) res!53112)))

(declare-fun setIsEmpty!1619 () Bool)

(assert (=> setIsEmpty!1619 setRes!1619))

(declare-fun setNonEmpty!1619 () Bool)

(declare-fun tp!59641 () Bool)

(assert (=> setNonEmpty!1619 (= setRes!1619 (and tp!59641 tp_is_empty!909))))

(declare-fun setElem!1619 () B!591)

(declare-fun setRest!1619 () (InoxSet B!591))

(assert (=> setNonEmpty!1619 (= res!53112 ((_ map or) (store ((as const (Array B!591 Bool)) false) setElem!1619 true) setRest!1619))))

(assert (= (and d!27602 condSetEmpty!1619) setIsEmpty!1619))

(assert (= (and d!27602 (not condSetEmpty!1619)) setNonEmpty!1619))

(assert (=> d!27450 d!27602))

(declare-fun d!27604 () Bool)

(assert (=> d!27604 (dynLambda!703 lambda!2634 (h!7166 lt!31976))))

(assert (=> d!27604 true))

(declare-fun _$7!248 () Unit!1240)

(assert (=> d!27604 (= (choose!1480 lt!31976 lambda!2634 (h!7166 lt!31976)) _$7!248)))

(declare-fun b_lambda!1623 () Bool)

(assert (=> (not b_lambda!1623) (not d!27604)))

(declare-fun bs!10964 () Bool)

(assert (= bs!10964 d!27604))

(assert (=> bs!10964 m!100018))

(assert (=> d!27490 d!27604))

(declare-fun d!27606 () Bool)

(declare-fun res!53113 () Bool)

(declare-fun e!61399 () Bool)

(assert (=> d!27606 (=> res!53113 e!61399)))

(assert (=> d!27606 (= res!53113 ((_ is Nil!1769) lt!31976))))

(assert (=> d!27606 (= (forall!318 lt!31976 lambda!2634) e!61399)))

(declare-fun b!110085 () Bool)

(declare-fun e!61400 () Bool)

(assert (=> b!110085 (= e!61399 e!61400)))

(declare-fun res!53114 () Bool)

(assert (=> b!110085 (=> (not res!53114) (not e!61400))))

(assert (=> b!110085 (= res!53114 (dynLambda!703 lambda!2634 (h!7166 lt!31976)))))

(declare-fun b!110086 () Bool)

(assert (=> b!110086 (= e!61400 (forall!318 (t!22042 lt!31976) lambda!2634))))

(assert (= (and d!27606 (not res!53113)) b!110085))

(assert (= (and b!110085 res!53114) b!110086))

(declare-fun b_lambda!1625 () Bool)

(assert (=> (not b_lambda!1625) (not b!110085)))

(assert (=> b!110085 m!100018))

(assert (=> b!110086 m!99864))

(assert (=> d!27490 d!27606))

(declare-fun d!27608 () Bool)

(assert (=> d!27608 true))

(declare-fun setRes!1620 () Bool)

(assert (=> d!27608 setRes!1620))

(declare-fun condSetEmpty!1620 () Bool)

(declare-fun res!53115 () (InoxSet B!591))

(assert (=> d!27608 (= condSetEmpty!1620 (= res!53115 ((as const (Array B!591 Bool)) false)))))

(assert (=> d!27608 (= (choose!1473 lt!31972 g!9) res!53115)))

(declare-fun setIsEmpty!1620 () Bool)

(assert (=> setIsEmpty!1620 setRes!1620))

(declare-fun setNonEmpty!1620 () Bool)

(declare-fun tp!59642 () Bool)

(assert (=> setNonEmpty!1620 (= setRes!1620 (and tp!59642 tp_is_empty!909))))

(declare-fun setElem!1620 () B!591)

(declare-fun setRest!1620 () (InoxSet B!591))

(assert (=> setNonEmpty!1620 (= res!53115 ((_ map or) (store ((as const (Array B!591 Bool)) false) setElem!1620 true) setRest!1620))))

(assert (= (and d!27608 condSetEmpty!1620) setIsEmpty!1620))

(assert (= (and d!27608 (not condSetEmpty!1620)) setNonEmpty!1620))

(assert (=> d!27452 d!27608))

(declare-fun d!27610 () Bool)

(declare-fun res!53116 () Bool)

(declare-fun e!61401 () Bool)

(assert (=> d!27610 (=> res!53116 e!61401)))

(assert (=> d!27610 (= res!53116 ((_ is Nil!1769) (t!22042 (t!22042 lt!31976))))))

(assert (=> d!27610 (= (forall!318 (t!22042 (t!22042 lt!31976)) lambda!2634) e!61401)))

(declare-fun b!110087 () Bool)

(declare-fun e!61402 () Bool)

(assert (=> b!110087 (= e!61401 e!61402)))

(declare-fun res!53117 () Bool)

(assert (=> b!110087 (=> (not res!53117) (not e!61402))))

(assert (=> b!110087 (= res!53117 (dynLambda!703 lambda!2634 (h!7166 (t!22042 (t!22042 lt!31976)))))))

(declare-fun b!110088 () Bool)

(assert (=> b!110088 (= e!61402 (forall!318 (t!22042 (t!22042 (t!22042 lt!31976))) lambda!2634))))

(assert (= (and d!27610 (not res!53116)) b!110087))

(assert (= (and b!110087 res!53117) b!110088))

(declare-fun b_lambda!1627 () Bool)

(assert (=> (not b_lambda!1627) (not b!110087)))

(declare-fun m!100136 () Bool)

(assert (=> b!110087 m!100136))

(declare-fun m!100138 () Bool)

(assert (=> b!110088 m!100138))

(assert (=> b!109986 d!27610))

(declare-fun d!27612 () Bool)

(declare-fun res!53118 () Bool)

(declare-fun e!61403 () Bool)

(assert (=> d!27612 (=> res!53118 e!61403)))

(assert (=> d!27612 (= res!53118 ((_ is Nil!1769) lt!32019))))

(assert (=> d!27612 (= (noDuplicate!19 lt!32019) e!61403)))

(declare-fun b!110089 () Bool)

(declare-fun e!61404 () Bool)

(assert (=> b!110089 (= e!61403 e!61404)))

(declare-fun res!53119 () Bool)

(assert (=> b!110089 (=> (not res!53119) (not e!61404))))

(assert (=> b!110089 (= res!53119 (not (contains!290 (t!22042 lt!32019) (h!7166 lt!32019))))))

(declare-fun b!110090 () Bool)

(assert (=> b!110090 (= e!61404 (noDuplicate!19 (t!22042 lt!32019)))))

(assert (= (and d!27612 (not res!53118)) b!110089))

(assert (= (and b!110089 res!53119) b!110090))

(declare-fun m!100140 () Bool)

(assert (=> b!110089 m!100140))

(declare-fun m!100142 () Bool)

(assert (=> b!110090 m!100142))

(assert (=> d!27476 d!27612))

(declare-fun d!27614 () Bool)

(declare-fun e!61410 () Bool)

(assert (=> d!27614 e!61410))

(declare-fun res!53124 () Bool)

(assert (=> d!27614 (=> (not res!53124) (not e!61410))))

(declare-fun res!53125 () List!1775)

(assert (=> d!27614 (= res!53124 (noDuplicate!19 res!53125))))

(declare-fun e!61409 () Bool)

(assert (=> d!27614 e!61409))

(assert (=> d!27614 (= (choose!1478 s!1451) res!53125)))

(declare-fun b!110095 () Bool)

(declare-fun tp!59645 () Bool)

(assert (=> b!110095 (= e!61409 (and tp_is_empty!905 tp!59645))))

(declare-fun b!110096 () Bool)

(assert (=> b!110096 (= e!61410 (= (content!193 res!53125) s!1451))))

(assert (= (and d!27614 ((_ is Cons!1769) res!53125)) b!110095))

(assert (= (and d!27614 res!53124) b!110096))

(declare-fun m!100144 () Bool)

(assert (=> d!27614 m!100144))

(declare-fun m!100146 () Bool)

(assert (=> b!110096 m!100146))

(assert (=> d!27476 d!27614))

(assert (=> d!27438 d!27450))

(assert (=> d!27438 d!27446))

(declare-fun d!27616 () Bool)

(assert (=> d!27616 (= (flatMap!55 ((_ map or) lt!31973 lt!31980) f!927) (choose!1473 ((_ map or) lt!31973 lt!31980) f!927))))

(declare-fun bs!10965 () Bool)

(assert (= bs!10965 d!27616))

(declare-fun m!100148 () Bool)

(assert (=> bs!10965 m!100148))

(assert (=> d!27438 d!27616))

(declare-fun d!27618 () Bool)

(assert (=> d!27618 (= ((_ map or) (flatMap!55 lt!31973 f!927) (flatMap!55 lt!31980 f!927)) (flatMap!55 ((_ map or) lt!31973 lt!31980) f!927))))

(assert (=> d!27618 true))

(declare-fun _$9!117 () Unit!1240)

(assert (=> d!27618 (= (choose!1474 lt!31973 lt!31980 f!927) _$9!117)))

(declare-fun bs!10966 () Bool)

(assert (= bs!10966 d!27618))

(assert (=> bs!10966 m!99874))

(assert (=> bs!10966 m!99870))

(assert (=> bs!10966 m!99932))

(assert (=> d!27438 d!27618))

(declare-fun d!27620 () Bool)

(declare-fun res!53126 () Bool)

(declare-fun e!61411 () Bool)

(assert (=> d!27620 (=> res!53126 e!61411)))

(assert (=> d!27620 (= res!53126 ((_ is Nil!1769) (t!22042 (t!22042 lt!31976))))))

(assert (=> d!27620 (= (noDuplicate!19 (t!22042 (t!22042 lt!31976))) e!61411)))

(declare-fun b!110097 () Bool)

(declare-fun e!61412 () Bool)

(assert (=> b!110097 (= e!61411 e!61412)))

(declare-fun res!53127 () Bool)

(assert (=> b!110097 (=> (not res!53127) (not e!61412))))

(assert (=> b!110097 (= res!53127 (not (contains!290 (t!22042 (t!22042 (t!22042 lt!31976))) (h!7166 (t!22042 (t!22042 lt!31976))))))))

(declare-fun b!110098 () Bool)

(assert (=> b!110098 (= e!61412 (noDuplicate!19 (t!22042 (t!22042 (t!22042 lt!31976)))))))

(assert (= (and d!27620 (not res!53126)) b!110097))

(assert (= (and b!110097 res!53127) b!110098))

(declare-fun m!100150 () Bool)

(assert (=> b!110097 m!100150))

(declare-fun m!100152 () Bool)

(assert (=> b!110098 m!100152))

(assert (=> b!110002 d!27620))

(declare-fun d!27622 () Bool)

(declare-fun res!53128 () Bool)

(declare-fun e!61413 () Bool)

(assert (=> d!27622 (=> res!53128 e!61413)))

(assert (=> d!27622 (= res!53128 ((_ is Nil!1769) (toList!254 lt!31980)))))

(assert (=> d!27622 (= (forall!318 (toList!254 lt!31980) lambda!2634) e!61413)))

(declare-fun b!110099 () Bool)

(declare-fun e!61414 () Bool)

(assert (=> b!110099 (= e!61413 e!61414)))

(declare-fun res!53129 () Bool)

(assert (=> b!110099 (=> (not res!53129) (not e!61414))))

(assert (=> b!110099 (= res!53129 (dynLambda!703 lambda!2634 (h!7166 (toList!254 lt!31980))))))

(declare-fun b!110100 () Bool)

(assert (=> b!110100 (= e!61414 (forall!318 (t!22042 (toList!254 lt!31980)) lambda!2634))))

(assert (= (and d!27622 (not res!53128)) b!110099))

(assert (= (and b!110099 res!53129) b!110100))

(declare-fun b_lambda!1629 () Bool)

(assert (=> (not b_lambda!1629) (not b!110099)))

(declare-fun m!100154 () Bool)

(assert (=> b!110099 m!100154))

(declare-fun m!100156 () Bool)

(assert (=> b!110100 m!100156))

(assert (=> d!27456 d!27622))

(declare-fun d!27624 () Bool)

(declare-fun e!61415 () Bool)

(assert (=> d!27624 e!61415))

(declare-fun res!53130 () Bool)

(assert (=> d!27624 (=> (not res!53130) (not e!61415))))

(declare-fun lt!32048 () List!1775)

(assert (=> d!27624 (= res!53130 (noDuplicate!19 lt!32048))))

(assert (=> d!27624 (= lt!32048 (choose!1478 lt!31980))))

(assert (=> d!27624 (= (toList!254 lt!31980) lt!32048)))

(declare-fun b!110101 () Bool)

(assert (=> b!110101 (= e!61415 (= (content!193 lt!32048) lt!31980))))

(assert (= (and d!27624 res!53130) b!110101))

(declare-fun m!100158 () Bool)

(assert (=> d!27624 m!100158))

(declare-fun m!100160 () Bool)

(assert (=> d!27624 m!100160))

(declare-fun m!100162 () Bool)

(assert (=> b!110101 m!100162))

(assert (=> d!27456 d!27624))

(declare-fun d!27626 () Bool)

(declare-fun res!53131 () Bool)

(assert (=> d!27626 (= res!53131 (forall!318 (toList!254 lt!31980) lambda!2634))))

(assert (=> d!27626 true))

(assert (=> d!27626 (= (choose!1471 lt!31980 lambda!2634) res!53131)))

(declare-fun bs!10967 () Bool)

(assert (= bs!10967 d!27626))

(assert (=> bs!10967 m!99952))

(assert (=> bs!10967 m!99952))

(assert (=> bs!10967 m!99954))

(assert (=> d!27456 d!27626))

(declare-fun d!27628 () Bool)

(declare-fun lt!32049 () Int)

(assert (=> d!27628 (>= lt!32049 0)))

(declare-fun e!61416 () Int)

(assert (=> d!27628 (= lt!32049 e!61416)))

(declare-fun c!26183 () Bool)

(assert (=> d!27628 (= c!26183 ((_ is Nil!1769) (t!22042 (t!22042 lt!31976))))))

(assert (=> d!27628 (= (size!1547 (t!22042 (t!22042 lt!31976))) lt!32049)))

(declare-fun b!110102 () Bool)

(assert (=> b!110102 (= e!61416 0)))

(declare-fun b!110103 () Bool)

(assert (=> b!110103 (= e!61416 (+ 1 (size!1547 (t!22042 (t!22042 (t!22042 lt!31976))))))))

(assert (= (and d!27628 c!26183) b!110102))

(assert (= (and d!27628 (not c!26183)) b!110103))

(declare-fun m!100164 () Bool)

(assert (=> b!110103 m!100164))

(assert (=> b!110020 d!27628))

(assert (=> b!110022 d!27484))

(declare-fun d!27630 () Bool)

(declare-fun lt!32050 () Bool)

(assert (=> d!27630 (= lt!32050 (select (content!193 (t!22042 (t!22042 lt!31976))) (h!7166 (t!22042 lt!31976))))))

(declare-fun e!61418 () Bool)

(assert (=> d!27630 (= lt!32050 e!61418)))

(declare-fun res!53133 () Bool)

(assert (=> d!27630 (=> (not res!53133) (not e!61418))))

(assert (=> d!27630 (= res!53133 ((_ is Cons!1769) (t!22042 (t!22042 lt!31976))))))

(assert (=> d!27630 (= (contains!290 (t!22042 (t!22042 lt!31976)) (h!7166 (t!22042 lt!31976))) lt!32050)))

(declare-fun b!110104 () Bool)

(declare-fun e!61417 () Bool)

(assert (=> b!110104 (= e!61418 e!61417)))

(declare-fun res!53132 () Bool)

(assert (=> b!110104 (=> res!53132 e!61417)))

(assert (=> b!110104 (= res!53132 (= (h!7166 (t!22042 (t!22042 lt!31976))) (h!7166 (t!22042 lt!31976))))))

(declare-fun b!110105 () Bool)

(assert (=> b!110105 (= e!61417 (contains!290 (t!22042 (t!22042 (t!22042 lt!31976))) (h!7166 (t!22042 lt!31976))))))

(assert (= (and d!27630 res!53133) b!110104))

(assert (= (and b!110104 (not res!53132)) b!110105))

(assert (=> d!27630 m!99910))

(declare-fun m!100166 () Bool)

(assert (=> d!27630 m!100166))

(declare-fun m!100168 () Bool)

(assert (=> b!110105 m!100168))

(assert (=> b!110001 d!27630))

(declare-fun d!27632 () Bool)

(assert (=> d!27632 true))

(declare-fun setRes!1621 () Bool)

(assert (=> d!27632 setRes!1621))

(declare-fun condSetEmpty!1621 () Bool)

(declare-fun res!53134 () (InoxSet B!591))

(assert (=> d!27632 (= condSetEmpty!1621 (= res!53134 ((as const (Array B!591 Bool)) false)))))

(assert (=> d!27632 (= (choose!1473 lt!31973 g!9) res!53134)))

(declare-fun setIsEmpty!1621 () Bool)

(assert (=> setIsEmpty!1621 setRes!1621))

(declare-fun setNonEmpty!1621 () Bool)

(declare-fun tp!59646 () Bool)

(assert (=> setNonEmpty!1621 (= setRes!1621 (and tp!59646 tp_is_empty!909))))

(declare-fun setElem!1621 () B!591)

(declare-fun setRest!1621 () (InoxSet B!591))

(assert (=> setNonEmpty!1621 (= res!53134 ((_ map or) (store ((as const (Array B!591 Bool)) false) setElem!1621 true) setRest!1621))))

(assert (= (and d!27632 condSetEmpty!1621) setIsEmpty!1621))

(assert (= (and d!27632 (not condSetEmpty!1621)) setNonEmpty!1621))

(assert (=> d!27448 d!27632))

(declare-fun d!27634 () Bool)

(declare-fun c!26184 () Bool)

(assert (=> d!27634 (= c!26184 ((_ is Nil!1769) (t!22042 (t!22042 lt!31976))))))

(declare-fun e!61419 () (InoxSet A!303))

(assert (=> d!27634 (= (content!193 (t!22042 (t!22042 lt!31976))) e!61419)))

(declare-fun b!110106 () Bool)

(assert (=> b!110106 (= e!61419 ((as const (Array A!303 Bool)) false))))

(declare-fun b!110107 () Bool)

(assert (=> b!110107 (= e!61419 ((_ map or) (store ((as const (Array A!303 Bool)) false) (h!7166 (t!22042 (t!22042 lt!31976))) true) (content!193 (t!22042 (t!22042 (t!22042 lt!31976))))))))

(assert (= (and d!27634 c!26184) b!110106))

(assert (= (and d!27634 (not c!26184)) b!110107))

(declare-fun m!100170 () Bool)

(assert (=> b!110107 m!100170))

(declare-fun m!100172 () Bool)

(assert (=> b!110107 m!100172))

(assert (=> b!109965 d!27634))

(declare-fun condSetEmpty!1622 () Bool)

(assert (=> setNonEmpty!1597 (= condSetEmpty!1622 (= setRest!1597 ((as const (Array B!591 Bool)) false)))))

(declare-fun setRes!1622 () Bool)

(assert (=> setNonEmpty!1597 (= tp!59616 setRes!1622)))

(declare-fun setIsEmpty!1622 () Bool)

(assert (=> setIsEmpty!1622 setRes!1622))

(declare-fun setNonEmpty!1622 () Bool)

(declare-fun tp!59647 () Bool)

(assert (=> setNonEmpty!1622 (= setRes!1622 (and tp!59647 tp_is_empty!909))))

(declare-fun setElem!1622 () B!591)

(declare-fun setRest!1622 () (InoxSet B!591))

(assert (=> setNonEmpty!1622 (= setRest!1597 ((_ map or) (store ((as const (Array B!591 Bool)) false) setElem!1622 true) setRest!1622))))

(assert (= (and setNonEmpty!1597 condSetEmpty!1622) setIsEmpty!1622))

(assert (= (and setNonEmpty!1597 (not condSetEmpty!1622)) setNonEmpty!1622))

(declare-fun condSetEmpty!1623 () Bool)

(assert (=> tb!3543 (= condSetEmpty!1623 (= (dynLambda!701 f!927 (h!7166 (t!22042 lt!31976))) ((as const (Array B!591 Bool)) false)))))

(declare-fun setRes!1623 () Bool)

(assert (=> tb!3543 (= result!5100 setRes!1623)))

(declare-fun setIsEmpty!1623 () Bool)

(assert (=> setIsEmpty!1623 setRes!1623))

(declare-fun setNonEmpty!1623 () Bool)

(declare-fun tp!59648 () Bool)

(assert (=> setNonEmpty!1623 (= setRes!1623 (and tp!59648 tp_is_empty!909))))

(declare-fun setRest!1623 () (InoxSet B!591))

(declare-fun setElem!1623 () B!591)

(assert (=> setNonEmpty!1623 (= (dynLambda!701 f!927 (h!7166 (t!22042 lt!31976))) ((_ map or) (store ((as const (Array B!591 Bool)) false) setElem!1623 true) setRest!1623))))

(assert (= (and tb!3543 condSetEmpty!1623) setIsEmpty!1623))

(assert (= (and tb!3543 (not condSetEmpty!1623)) setNonEmpty!1623))

(declare-fun condSetEmpty!1624 () Bool)

(assert (=> tb!3549 (= condSetEmpty!1624 (= (dynLambda!701 g!9 (h!7166 (t!22042 lt!31976))) ((as const (Array B!591 Bool)) false)))))

(declare-fun setRes!1624 () Bool)

(assert (=> tb!3549 (= result!5106 setRes!1624)))

(declare-fun setIsEmpty!1624 () Bool)

(assert (=> setIsEmpty!1624 setRes!1624))

(declare-fun setNonEmpty!1624 () Bool)

(declare-fun tp!59649 () Bool)

(assert (=> setNonEmpty!1624 (= setRes!1624 (and tp!59649 tp_is_empty!909))))

(declare-fun setElem!1624 () B!591)

(declare-fun setRest!1624 () (InoxSet B!591))

(assert (=> setNonEmpty!1624 (= (dynLambda!701 g!9 (h!7166 (t!22042 lt!31976))) ((_ map or) (store ((as const (Array B!591 Bool)) false) setElem!1624 true) setRest!1624))))

(assert (= (and tb!3549 condSetEmpty!1624) setIsEmpty!1624))

(assert (= (and tb!3549 (not condSetEmpty!1624)) setNonEmpty!1624))

(assert (= result!5104 result!5106))

(declare-fun condSetEmpty!1625 () Bool)

(assert (=> setNonEmpty!1596 (= condSetEmpty!1625 (= setRest!1596 ((as const (Array B!591 Bool)) false)))))

(declare-fun setRes!1625 () Bool)

(assert (=> setNonEmpty!1596 (= tp!59615 setRes!1625)))

(declare-fun setIsEmpty!1625 () Bool)

(assert (=> setIsEmpty!1625 setRes!1625))

(declare-fun setNonEmpty!1625 () Bool)

(declare-fun tp!59650 () Bool)

(assert (=> setNonEmpty!1625 (= setRes!1625 (and tp!59650 tp_is_empty!909))))

(declare-fun setElem!1625 () B!591)

(declare-fun setRest!1625 () (InoxSet B!591))

(assert (=> setNonEmpty!1625 (= setRest!1596 ((_ map or) (store ((as const (Array B!591 Bool)) false) setElem!1625 true) setRest!1625))))

(assert (= (and setNonEmpty!1596 condSetEmpty!1625) setIsEmpty!1625))

(assert (= (and setNonEmpty!1596 (not condSetEmpty!1625)) setNonEmpty!1625))

(declare-fun condSetEmpty!1626 () Bool)

(assert (=> setNonEmpty!1600 (= condSetEmpty!1626 (= setRest!1600 ((as const (Array A!303 Bool)) false)))))

(declare-fun setRes!1626 () Bool)

(assert (=> setNonEmpty!1600 (= tp!59619 setRes!1626)))

(declare-fun setIsEmpty!1626 () Bool)

(assert (=> setIsEmpty!1626 setRes!1626))

(declare-fun setNonEmpty!1626 () Bool)

(declare-fun tp!59651 () Bool)

(assert (=> setNonEmpty!1626 (= setRes!1626 (and tp!59651 tp_is_empty!905))))

(declare-fun setElem!1626 () A!303)

(declare-fun setRest!1626 () (InoxSet A!303))

(assert (=> setNonEmpty!1626 (= setRest!1600 ((_ map or) (store ((as const (Array A!303 Bool)) false) setElem!1626 true) setRest!1626))))

(assert (= (and setNonEmpty!1600 condSetEmpty!1626) setIsEmpty!1626))

(assert (= (and setNonEmpty!1600 (not condSetEmpty!1626)) setNonEmpty!1626))

(assert (= result!5102 result!5100))

(declare-fun b_lambda!1631 () Bool)

(assert (= b_lambda!1629 (or start!11178 b_lambda!1631)))

(declare-fun bs!10968 () Bool)

(declare-fun d!27636 () Bool)

(assert (= bs!10968 (and d!27636 start!11178)))

(assert (=> bs!10968 (= (dynLambda!703 lambda!2634 (h!7166 (toList!254 lt!31980))) (= (dynLambda!701 f!927 (h!7166 (toList!254 lt!31980))) (dynLambda!701 g!9 (h!7166 (toList!254 lt!31980)))))))

(declare-fun b_lambda!1641 () Bool)

(assert (=> (not b_lambda!1641) (not bs!10968)))

(declare-fun t!22084 () Bool)

(declare-fun tb!3575 () Bool)

(assert (=> (and start!11178 (= f!927 f!927) t!22084) tb!3575))

(assert (=> bs!10968 t!22084))

(declare-fun result!5132 () Bool)

(declare-fun b_and!5455 () Bool)

(assert (= b_and!5427 (and (=> t!22084 result!5132) b_and!5455)))

(declare-fun t!22086 () Bool)

(declare-fun tb!3577 () Bool)

(assert (=> (and start!11178 (= g!9 f!927) t!22086) tb!3577))

(assert (=> bs!10968 t!22086))

(declare-fun result!5134 () Bool)

(declare-fun b_and!5457 () Bool)

(assert (= b_and!5429 (and (=> t!22086 result!5134) b_and!5457)))

(declare-fun b_lambda!1643 () Bool)

(assert (=> (not b_lambda!1643) (not bs!10968)))

(declare-fun tb!3579 () Bool)

(declare-fun t!22088 () Bool)

(assert (=> (and start!11178 (= f!927 g!9) t!22088) tb!3579))

(assert (=> bs!10968 t!22088))

(declare-fun result!5136 () Bool)

(declare-fun b_and!5459 () Bool)

(assert (= b_and!5455 (and (=> t!22088 result!5136) b_and!5459)))

(declare-fun t!22090 () Bool)

(declare-fun tb!3581 () Bool)

(assert (=> (and start!11178 (= g!9 g!9) t!22090) tb!3581))

(assert (=> bs!10968 t!22090))

(declare-fun result!5138 () Bool)

(declare-fun b_and!5461 () Bool)

(assert (= b_and!5457 (and (=> t!22090 result!5138) b_and!5461)))

(declare-fun m!100174 () Bool)

(assert (=> bs!10968 m!100174))

(declare-fun m!100176 () Bool)

(assert (=> bs!10968 m!100176))

(assert (=> b!110099 d!27636))

(declare-fun b_lambda!1633 () Bool)

(assert (= b_lambda!1627 (or start!11178 b_lambda!1633)))

(declare-fun bs!10969 () Bool)

(declare-fun d!27638 () Bool)

(assert (= bs!10969 (and d!27638 start!11178)))

(assert (=> bs!10969 (= (dynLambda!703 lambda!2634 (h!7166 (t!22042 (t!22042 lt!31976)))) (= (dynLambda!701 f!927 (h!7166 (t!22042 (t!22042 lt!31976)))) (dynLambda!701 g!9 (h!7166 (t!22042 (t!22042 lt!31976))))))))

(declare-fun b_lambda!1645 () Bool)

(assert (=> (not b_lambda!1645) (not bs!10969)))

(declare-fun t!22092 () Bool)

(declare-fun tb!3583 () Bool)

(assert (=> (and start!11178 (= f!927 f!927) t!22092) tb!3583))

(assert (=> bs!10969 t!22092))

(declare-fun result!5140 () Bool)

(declare-fun b_and!5463 () Bool)

(assert (= b_and!5459 (and (=> t!22092 result!5140) b_and!5463)))

(declare-fun tb!3585 () Bool)

(declare-fun t!22094 () Bool)

(assert (=> (and start!11178 (= g!9 f!927) t!22094) tb!3585))

(assert (=> bs!10969 t!22094))

(declare-fun result!5142 () Bool)

(declare-fun b_and!5465 () Bool)

(assert (= b_and!5461 (and (=> t!22094 result!5142) b_and!5465)))

(declare-fun b_lambda!1647 () Bool)

(assert (=> (not b_lambda!1647) (not bs!10969)))

(declare-fun t!22096 () Bool)

(declare-fun tb!3587 () Bool)

(assert (=> (and start!11178 (= f!927 g!9) t!22096) tb!3587))

(assert (=> bs!10969 t!22096))

(declare-fun result!5144 () Bool)

(declare-fun b_and!5467 () Bool)

(assert (= b_and!5463 (and (=> t!22096 result!5144) b_and!5467)))

(declare-fun t!22098 () Bool)

(declare-fun tb!3589 () Bool)

(assert (=> (and start!11178 (= g!9 g!9) t!22098) tb!3589))

(assert (=> bs!10969 t!22098))

(declare-fun result!5146 () Bool)

(declare-fun b_and!5469 () Bool)

(assert (= b_and!5465 (and (=> t!22098 result!5146) b_and!5469)))

(declare-fun m!100178 () Bool)

(assert (=> bs!10969 m!100178))

(declare-fun m!100180 () Bool)

(assert (=> bs!10969 m!100180))

(assert (=> b!110087 d!27638))

(declare-fun b_lambda!1635 () Bool)

(assert (= b_lambda!1625 (or start!11178 b_lambda!1635)))

(assert (=> b!110085 d!27496))

(declare-fun b_lambda!1637 () Bool)

(assert (= b_lambda!1623 (or start!11178 b_lambda!1637)))

(assert (=> d!27604 d!27496))

(declare-fun b_lambda!1639 () Bool)

(assert (= b_lambda!1621 (or start!11178 b_lambda!1639)))

(declare-fun bs!10970 () Bool)

(declare-fun d!27640 () Bool)

(assert (= bs!10970 (and d!27640 start!11178)))

(assert (=> bs!10970 (= (dynLambda!703 lambda!2634 (h!7166 (toList!254 s!1451))) (= (dynLambda!701 f!927 (h!7166 (toList!254 s!1451))) (dynLambda!701 g!9 (h!7166 (toList!254 s!1451)))))))

(declare-fun b_lambda!1649 () Bool)

(assert (=> (not b_lambda!1649) (not bs!10970)))

(declare-fun t!22100 () Bool)

(declare-fun tb!3591 () Bool)

(assert (=> (and start!11178 (= f!927 f!927) t!22100) tb!3591))

(assert (=> bs!10970 t!22100))

(declare-fun result!5148 () Bool)

(declare-fun b_and!5471 () Bool)

(assert (= b_and!5467 (and (=> t!22100 result!5148) b_and!5471)))

(declare-fun tb!3593 () Bool)

(declare-fun t!22102 () Bool)

(assert (=> (and start!11178 (= g!9 f!927) t!22102) tb!3593))

(assert (=> bs!10970 t!22102))

(declare-fun result!5150 () Bool)

(declare-fun b_and!5473 () Bool)

(assert (= b_and!5469 (and (=> t!22102 result!5150) b_and!5473)))

(declare-fun b_lambda!1651 () Bool)

(assert (=> (not b_lambda!1651) (not bs!10970)))

(declare-fun t!22104 () Bool)

(declare-fun tb!3595 () Bool)

(assert (=> (and start!11178 (= f!927 g!9) t!22104) tb!3595))

(assert (=> bs!10970 t!22104))

(declare-fun result!5152 () Bool)

(declare-fun b_and!5475 () Bool)

(assert (= b_and!5471 (and (=> t!22104 result!5152) b_and!5475)))

(declare-fun t!22106 () Bool)

(declare-fun tb!3597 () Bool)

(assert (=> (and start!11178 (= g!9 g!9) t!22106) tb!3597))

(assert (=> bs!10970 t!22106))

(declare-fun result!5154 () Bool)

(declare-fun b_and!5477 () Bool)

(assert (= b_and!5473 (and (=> t!22106 result!5154) b_and!5477)))

(declare-fun m!100182 () Bool)

(assert (=> bs!10970 m!100182))

(declare-fun m!100184 () Bool)

(assert (=> bs!10970 m!100184))

(assert (=> b!110083 d!27640))

(check-sat (not b!110098) tp_is_empty!909 (not b_lambda!1581) (not b!110100) (not d!27630) b_and!5477 (not tb!3595) (not setNonEmpty!1620) tp_is_empty!905 (not d!27614) (not b!110089) (not d!27616) (not b_lambda!1561) (not d!27600) (not setNonEmpty!1619) (not setNonEmpty!1617) (not b_lambda!1637) (not b_lambda!1639) (not setNonEmpty!1623) (not b_lambda!1537) (not tb!3591) (not tb!3597) (not b_next!3403) (not b!110084) (not setNonEmpty!1616) (not b!110097) (not setNonEmpty!1624) (not d!27594) (not b!110103) (not tb!3583) (not setNonEmpty!1622) (not b_lambda!1647) b_and!5475 (not b!110076) (not tb!3577) (not d!27590) (not b_next!3401) (not b_lambda!1633) (not b_lambda!1635) (not b!110095) (not b_lambda!1649) (not b_lambda!1631) (not b_lambda!1583) (not tb!3593) (not d!27626) (not d!27572) (not tb!3575) (not b!110070) (not b!110107) (not b!110088) (not d!27586) (not tb!3581) (not b_lambda!1539) (not tb!3579) (not tb!3585) (not setNonEmpty!1626) (not setNonEmpty!1621) (not tb!3587) (not b_lambda!1651) (not d!27596) (not b!110074) (not b!110101) (not b_lambda!1587) (not d!27570) (not b!110090) (not b!110105) (not b_lambda!1645) (not d!27618) (not b!110096) (not setNonEmpty!1625) (not b_lambda!1641) (not b!110082) (not b_lambda!1563) (not setNonEmpty!1618) (not b_lambda!1585) (not d!27624) (not b!110086) (not tb!3589) (not b_lambda!1643) (not b!110072))
(check-sat b_and!5475 b_and!5477 (not b_next!3403) (not b_next!3401))
