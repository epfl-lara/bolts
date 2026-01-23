; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184050 () Bool)

(assert start!184050)

(declare-fun b_free!51581 () Bool)

(declare-fun b_next!52285 () Bool)

(assert (=> start!184050 (= b_free!51581 (not b_next!52285))))

(declare-fun tp!521938 () Bool)

(declare-fun b_and!143739 () Bool)

(assert (=> start!184050 (= tp!521938 b_and!143739)))

(declare-fun b!1845654 () Bool)

(assert (=> b!1845654 true))

(assert (=> b!1845654 true))

(declare-fun order!13139 () Int)

(declare-fun lambda!72670 () Int)

(declare-fun order!13137 () Int)

(declare-fun f!1069 () Int)

(declare-fun dynLambda!10120 (Int Int) Int)

(declare-fun dynLambda!10121 (Int Int) Int)

(assert (=> b!1845654 (< (dynLambda!10120 order!13137 f!1069) (dynLambda!10121 order!13139 lambda!72670))))

(declare-fun res!828825 () Bool)

(declare-fun e!1179537 () Bool)

(assert (=> start!184050 (=> (not res!828825) (not e!1179537))))

(declare-datatypes ((A!435 0))(
  ( (A!436 (val!5771 Int)) )
))
(declare-fun a!855 () A!435)

(declare-datatypes ((B!1593 0))(
  ( (B!1594 (val!5772 Int)) )
))
(declare-datatypes ((List!20439 0))(
  ( (Nil!20367) (Cons!20367 (h!25768 B!1593) (t!172072 List!20439)) )
))
(declare-fun l!2946 () List!20439)

(declare-datatypes ((List!20440 0))(
  ( (Nil!20368) (Cons!20368 (h!25769 A!435) (t!172073 List!20440)) )
))
(declare-fun contains!3746 (List!20440 A!435) Bool)

(declare-fun map!4274 (List!20439 Int) List!20440)

(assert (=> start!184050 (= res!828825 (contains!3746 (map!4274 l!2946 f!1069) a!855))))

(assert (=> start!184050 e!1179537))

(declare-fun e!1179538 () Bool)

(assert (=> start!184050 e!1179538))

(assert (=> start!184050 tp!521938))

(declare-fun tp_is_empty!8391 () Bool)

(assert (=> start!184050 tp_is_empty!8391))

(declare-fun b!1845653 () Bool)

(declare-fun res!828824 () Bool)

(assert (=> b!1845653 (=> (not res!828824) (not e!1179537))))

(get-info :version)

(assert (=> b!1845653 (= res!828824 ((_ is Nil!20367) l!2946))))

(declare-fun exists!673 (List!20439 Int) Bool)

(assert (=> b!1845654 (= e!1179537 (not (exists!673 l!2946 lambda!72670)))))

(declare-fun b!1845655 () Bool)

(declare-fun tp_is_empty!8389 () Bool)

(declare-fun tp!521939 () Bool)

(assert (=> b!1845655 (= e!1179538 (and tp_is_empty!8389 tp!521939))))

(assert (= (and start!184050 res!828825) b!1845653))

(assert (= (and b!1845653 res!828824) b!1845654))

(assert (= (and start!184050 ((_ is Cons!20367) l!2946)) b!1845655))

(declare-fun m!2273997 () Bool)

(assert (=> start!184050 m!2273997))

(assert (=> start!184050 m!2273997))

(declare-fun m!2273999 () Bool)

(assert (=> start!184050 m!2273999))

(declare-fun m!2274001 () Bool)

(assert (=> b!1845654 m!2274001))

(check-sat (not b_next!52285) tp_is_empty!8391 (not b!1845655) b_and!143739 tp_is_empty!8389 (not b!1845654) (not start!184050))
(check-sat b_and!143739 (not b_next!52285))
(get-model)

(declare-fun bs!409260 () Bool)

(declare-fun d!564905 () Bool)

(assert (= bs!409260 (and d!564905 b!1845654)))

(declare-fun lambda!72676 () Int)

(assert (=> bs!409260 (not (= lambda!72676 lambda!72670))))

(assert (=> d!564905 true))

(assert (=> d!564905 (< (dynLambda!10121 order!13139 lambda!72670) (dynLambda!10121 order!13139 lambda!72676))))

(declare-fun forall!4381 (List!20439 Int) Bool)

(assert (=> d!564905 (= (exists!673 l!2946 lambda!72670) (not (forall!4381 l!2946 lambda!72676)))))

(declare-fun bs!409261 () Bool)

(assert (= bs!409261 d!564905))

(declare-fun m!2274011 () Bool)

(assert (=> bs!409261 m!2274011))

(assert (=> b!1845654 d!564905))

(declare-fun d!564909 () Bool)

(declare-fun lt!714795 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3030 (List!20440) (InoxSet A!435))

(assert (=> d!564909 (= lt!714795 (select (content!3030 (map!4274 l!2946 f!1069)) a!855))))

(declare-fun e!1179556 () Bool)

(assert (=> d!564909 (= lt!714795 e!1179556)))

(declare-fun res!828837 () Bool)

(assert (=> d!564909 (=> (not res!828837) (not e!1179556))))

(assert (=> d!564909 (= res!828837 ((_ is Cons!20368) (map!4274 l!2946 f!1069)))))

(assert (=> d!564909 (= (contains!3746 (map!4274 l!2946 f!1069) a!855) lt!714795)))

(declare-fun b!1845687 () Bool)

(declare-fun e!1179555 () Bool)

(assert (=> b!1845687 (= e!1179556 e!1179555)))

(declare-fun res!828836 () Bool)

(assert (=> b!1845687 (=> res!828836 e!1179555)))

(assert (=> b!1845687 (= res!828836 (= (h!25769 (map!4274 l!2946 f!1069)) a!855))))

(declare-fun b!1845688 () Bool)

(assert (=> b!1845688 (= e!1179555 (contains!3746 (t!172073 (map!4274 l!2946 f!1069)) a!855))))

(assert (= (and d!564909 res!828837) b!1845687))

(assert (= (and b!1845687 (not res!828836)) b!1845688))

(assert (=> d!564909 m!2273997))

(declare-fun m!2274023 () Bool)

(assert (=> d!564909 m!2274023))

(declare-fun m!2274025 () Bool)

(assert (=> d!564909 m!2274025))

(declare-fun m!2274027 () Bool)

(assert (=> b!1845688 m!2274027))

(assert (=> start!184050 d!564909))

(declare-fun d!564911 () Bool)

(declare-fun lt!714798 () List!20440)

(declare-fun size!16118 (List!20440) Int)

(declare-fun size!16119 (List!20439) Int)

(assert (=> d!564911 (= (size!16118 lt!714798) (size!16119 l!2946))))

(declare-fun e!1179559 () List!20440)

(assert (=> d!564911 (= lt!714798 e!1179559)))

(declare-fun c!301328 () Bool)

(assert (=> d!564911 (= c!301328 ((_ is Nil!20367) l!2946))))

(assert (=> d!564911 (= (map!4274 l!2946 f!1069) lt!714798)))

(declare-fun b!1845693 () Bool)

(assert (=> b!1845693 (= e!1179559 Nil!20368)))

(declare-fun b!1845694 () Bool)

(declare-fun $colon$colon!478 (List!20440 A!435) List!20440)

(declare-fun dynLambda!10123 (Int B!1593) A!435)

(assert (=> b!1845694 (= e!1179559 ($colon$colon!478 (map!4274 (t!172072 l!2946) f!1069) (dynLambda!10123 f!1069 (h!25768 l!2946))))))

(assert (= (and d!564911 c!301328) b!1845693))

(assert (= (and d!564911 (not c!301328)) b!1845694))

(declare-fun b_lambda!61221 () Bool)

(assert (=> (not b_lambda!61221) (not b!1845694)))

(declare-fun t!172077 () Bool)

(declare-fun tb!112835 () Bool)

(assert (=> (and start!184050 (= f!1069 f!1069) t!172077) tb!112835))

(declare-fun result!135914 () Bool)

(assert (=> tb!112835 (= result!135914 tp_is_empty!8391)))

(assert (=> b!1845694 t!172077))

(declare-fun b_and!143743 () Bool)

(assert (= b_and!143739 (and (=> t!172077 result!135914) b_and!143743)))

(declare-fun m!2274029 () Bool)

(assert (=> d!564911 m!2274029))

(declare-fun m!2274031 () Bool)

(assert (=> d!564911 m!2274031))

(declare-fun m!2274033 () Bool)

(assert (=> b!1845694 m!2274033))

(declare-fun m!2274035 () Bool)

(assert (=> b!1845694 m!2274035))

(assert (=> b!1845694 m!2274033))

(assert (=> b!1845694 m!2274035))

(declare-fun m!2274037 () Bool)

(assert (=> b!1845694 m!2274037))

(assert (=> start!184050 d!564911))

(declare-fun b!1845701 () Bool)

(declare-fun e!1179562 () Bool)

(declare-fun tp!521945 () Bool)

(assert (=> b!1845701 (= e!1179562 (and tp_is_empty!8389 tp!521945))))

(assert (=> b!1845655 (= tp!521939 e!1179562)))

(assert (= (and b!1845655 ((_ is Cons!20367) (t!172072 l!2946))) b!1845701))

(declare-fun b_lambda!61223 () Bool)

(assert (= b_lambda!61221 (or (and start!184050 b_free!51581) b_lambda!61223)))

(check-sat (not b_next!52285) tp_is_empty!8391 tp_is_empty!8389 (not b!1845701) (not d!564905) (not d!564911) b_and!143743 (not b!1845694) (not d!564909) (not b!1845688) (not b_lambda!61223))
(check-sat b_and!143743 (not b_next!52285))
