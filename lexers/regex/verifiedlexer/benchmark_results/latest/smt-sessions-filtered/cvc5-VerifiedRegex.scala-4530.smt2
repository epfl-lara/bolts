; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!239932 () Bool)

(assert start!239932)

(declare-fun b_free!70589 () Bool)

(declare-fun b_next!71293 () Bool)

(assert (=> start!239932 (= b_free!70589 (not b_next!71293))))

(declare-fun tp!783483 () Bool)

(declare-fun b_and!185637 () Bool)

(assert (=> start!239932 (= tp!783483 b_and!185637)))

(declare-fun b!2460967 () Bool)

(declare-fun res!1042906 () Bool)

(declare-fun e!1560808 () Bool)

(assert (=> b!2460967 (=> (not res!1042906) (not e!1560808))))

(declare-fun p!1945 () Int)

(declare-datatypes ((B!1887 0))(
  ( (B!1888 (val!8573 Int)) )
))
(declare-datatypes ((List!28730 0))(
  ( (Nil!28630) (Cons!28630 (h!34031 B!1887) (t!208739 List!28730)) )
))
(declare-fun l!3055 () List!28730)

(declare-fun dynLambda!12287 (Int B!1887) Bool)

(assert (=> b!2460967 (= res!1042906 (not (dynLambda!12287 p!1945 (h!34031 l!3055))))))

(declare-fun b!2460968 () Bool)

(declare-fun res!1042907 () Bool)

(assert (=> b!2460968 (=> (not res!1042907) (not e!1560808))))

(declare-fun isEmpty!16644 (List!28730) Bool)

(assert (=> b!2460968 (= res!1042907 (not (isEmpty!16644 l!3055)))))

(declare-fun b!2460969 () Bool)

(declare-fun e!1560807 () Bool)

(declare-fun tp_is_empty!11917 () Bool)

(declare-fun tp!783482 () Bool)

(assert (=> b!2460969 (= e!1560807 (and tp_is_empty!11917 tp!783482))))

(declare-fun res!1042905 () Bool)

(assert (=> start!239932 (=> (not res!1042905) (not e!1560808))))

(declare-fun forall!5882 (List!28730 Int) Bool)

(assert (=> start!239932 (= res!1042905 (not (forall!5882 l!3055 p!1945)))))

(assert (=> start!239932 e!1560808))

(assert (=> start!239932 e!1560807))

(assert (=> start!239932 tp!783483))

(declare-fun b!2460970 () Bool)

(declare-fun res!1042908 () Bool)

(assert (=> b!2460970 (=> (not res!1042908) (not e!1560808))))

(assert (=> b!2460970 (= res!1042908 (not (is-Nil!28630 l!3055)))))

(declare-fun b!2460971 () Bool)

(declare-fun size!22285 (List!28730) Int)

(declare-fun filter!491 (List!28730 Int) List!28730)

(assert (=> b!2460971 (= e!1560808 (>= (size!22285 (filter!491 l!3055 p!1945)) (size!22285 l!3055)))))

(assert (= (and start!239932 res!1042905) b!2460970))

(assert (= (and b!2460970 res!1042908) b!2460967))

(assert (= (and b!2460967 res!1042906) b!2460968))

(assert (= (and b!2460968 res!1042907) b!2460971))

(assert (= (and start!239932 (is-Cons!28630 l!3055)) b!2460969))

(declare-fun b_lambda!75343 () Bool)

(assert (=> (not b_lambda!75343) (not b!2460967)))

(declare-fun t!208738 () Bool)

(declare-fun tb!138869 () Bool)

(assert (=> (and start!239932 (= p!1945 p!1945) t!208738) tb!138869))

(declare-fun result!171424 () Bool)

(assert (=> tb!138869 (= result!171424 true)))

(assert (=> b!2460967 t!208738))

(declare-fun b_and!185639 () Bool)

(assert (= b_and!185637 (and (=> t!208738 result!171424) b_and!185639)))

(declare-fun m!2830163 () Bool)

(assert (=> b!2460967 m!2830163))

(declare-fun m!2830165 () Bool)

(assert (=> b!2460968 m!2830165))

(declare-fun m!2830167 () Bool)

(assert (=> start!239932 m!2830167))

(declare-fun m!2830169 () Bool)

(assert (=> b!2460971 m!2830169))

(assert (=> b!2460971 m!2830169))

(declare-fun m!2830171 () Bool)

(assert (=> b!2460971 m!2830171))

(declare-fun m!2830173 () Bool)

(assert (=> b!2460971 m!2830173))

(push 1)

(assert (not b!2460968))

(assert (not start!239932))

(assert (not b!2460969))

(assert (not b_lambda!75343))

(assert b_and!185639)

(assert (not b_next!71293))

(assert tp_is_empty!11917)

(assert (not b!2460971))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185639)

(assert (not b_next!71293))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!75347 () Bool)

(assert (= b_lambda!75343 (or (and start!239932 b_free!70589) b_lambda!75347)))

(push 1)

(assert (not b!2460968))

(assert (not start!239932))

(assert (not b!2460969))

(assert (not b_lambda!75347))

(assert b_and!185639)

(assert (not b_next!71293))

(assert tp_is_empty!11917)

(assert (not b!2460971))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185639)

(assert (not b_next!71293))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!708405 () Bool)

(declare-fun lt!881047 () Int)

(assert (=> d!708405 (>= lt!881047 0)))

(declare-fun e!1560817 () Int)

(assert (=> d!708405 (= lt!881047 e!1560817)))

(declare-fun c!392786 () Bool)

(assert (=> d!708405 (= c!392786 (is-Nil!28630 (filter!491 l!3055 p!1945)))))

(assert (=> d!708405 (= (size!22285 (filter!491 l!3055 p!1945)) lt!881047)))

(declare-fun b!2460991 () Bool)

(assert (=> b!2460991 (= e!1560817 0)))

(declare-fun b!2460992 () Bool)

(assert (=> b!2460992 (= e!1560817 (+ 1 (size!22285 (t!208739 (filter!491 l!3055 p!1945)))))))

(assert (= (and d!708405 c!392786) b!2460991))

(assert (= (and d!708405 (not c!392786)) b!2460992))

(declare-fun m!2830187 () Bool)

(assert (=> b!2460992 m!2830187))

(assert (=> b!2460971 d!708405))

(declare-fun b!2461017 () Bool)

(declare-fun res!1042932 () Bool)

(declare-fun e!1560833 () Bool)

(assert (=> b!2461017 (=> (not res!1042932) (not e!1560833))))

(declare-fun lt!881053 () List!28730)

(declare-fun content!3945 (List!28730) (Set B!1887))

(assert (=> b!2461017 (= res!1042932 (set.subset (content!3945 lt!881053) (content!3945 l!3055)))))

(declare-fun b!2461018 () Bool)

(declare-fun e!1560834 () List!28730)

(declare-fun e!1560835 () List!28730)

(assert (=> b!2461018 (= e!1560834 e!1560835)))

(declare-fun c!392795 () Bool)

(assert (=> b!2461018 (= c!392795 (dynLambda!12287 p!1945 (h!34031 l!3055)))))

(declare-fun b!2461019 () Bool)

(assert (=> b!2461019 (= e!1560834 Nil!28630)))

(declare-fun b!2461020 () Bool)

(declare-fun call!151409 () List!28730)

(assert (=> b!2461020 (= e!1560835 (Cons!28630 (h!34031 l!3055) call!151409))))

(declare-fun b!2461021 () Bool)

(assert (=> b!2461021 (= e!1560833 (forall!5882 lt!881053 p!1945))))

(declare-fun b!2461022 () Bool)

(assert (=> b!2461022 (= e!1560835 call!151409)))

(declare-fun bm!151404 () Bool)

(assert (=> bm!151404 (= call!151409 (filter!491 (t!208739 l!3055) p!1945))))

(declare-fun d!708409 () Bool)

(assert (=> d!708409 e!1560833))

(declare-fun res!1042931 () Bool)

(assert (=> d!708409 (=> (not res!1042931) (not e!1560833))))

(assert (=> d!708409 (= res!1042931 (<= (size!22285 lt!881053) (size!22285 l!3055)))))

(assert (=> d!708409 (= lt!881053 e!1560834)))

(declare-fun c!392794 () Bool)

(assert (=> d!708409 (= c!392794 (is-Nil!28630 l!3055))))

(assert (=> d!708409 (= (filter!491 l!3055 p!1945) lt!881053)))

(assert (= (and d!708409 c!392794) b!2461019))

(assert (= (and d!708409 (not c!392794)) b!2461018))

(assert (= (and b!2461018 c!392795) b!2461020))

(assert (= (and b!2461018 (not c!392795)) b!2461022))

(assert (= (or b!2461020 b!2461022) bm!151404))

(assert (= (and d!708409 res!1042931) b!2461017))

(assert (= (and b!2461017 res!1042932) b!2461021))

(declare-fun b_lambda!75353 () Bool)

(assert (=> (not b_lambda!75353) (not b!2461018)))

(assert (=> b!2461018 t!208738))

(declare-fun b_and!185647 () Bool)

(assert (= b_and!185639 (and (=> t!208738 result!171424) b_and!185647)))

(declare-fun m!2830193 () Bool)

(assert (=> b!2461021 m!2830193))

(declare-fun m!2830195 () Bool)

(assert (=> b!2461017 m!2830195))

(declare-fun m!2830197 () Bool)

(assert (=> b!2461017 m!2830197))

(declare-fun m!2830199 () Bool)

(assert (=> bm!151404 m!2830199))

(declare-fun m!2830201 () Bool)

(assert (=> d!708409 m!2830201))

(assert (=> d!708409 m!2830173))

(assert (=> b!2461018 m!2830163))

(assert (=> b!2460971 d!708409))

(declare-fun d!708415 () Bool)

(declare-fun lt!881054 () Int)

(assert (=> d!708415 (>= lt!881054 0)))

(declare-fun e!1560836 () Int)

(assert (=> d!708415 (= lt!881054 e!1560836)))

(declare-fun c!392796 () Bool)

(assert (=> d!708415 (= c!392796 (is-Nil!28630 l!3055))))

(assert (=> d!708415 (= (size!22285 l!3055) lt!881054)))

(declare-fun b!2461023 () Bool)

(assert (=> b!2461023 (= e!1560836 0)))

(declare-fun b!2461024 () Bool)

(assert (=> b!2461024 (= e!1560836 (+ 1 (size!22285 (t!208739 l!3055))))))

(assert (= (and d!708415 c!392796) b!2461023))

(assert (= (and d!708415 (not c!392796)) b!2461024))

(declare-fun m!2830203 () Bool)

(assert (=> b!2461024 m!2830203))

(assert (=> b!2460971 d!708415))

(declare-fun d!708417 () Bool)

(declare-fun res!1042941 () Bool)

(declare-fun e!1560847 () Bool)

(assert (=> d!708417 (=> res!1042941 e!1560847)))

(assert (=> d!708417 (= res!1042941 (is-Nil!28630 l!3055))))

(assert (=> d!708417 (= (forall!5882 l!3055 p!1945) e!1560847)))

(declare-fun b!2461041 () Bool)

(declare-fun e!1560848 () Bool)

(assert (=> b!2461041 (= e!1560847 e!1560848)))

(declare-fun res!1042942 () Bool)

(assert (=> b!2461041 (=> (not res!1042942) (not e!1560848))))

(assert (=> b!2461041 (= res!1042942 (dynLambda!12287 p!1945 (h!34031 l!3055)))))

(declare-fun b!2461042 () Bool)

(assert (=> b!2461042 (= e!1560848 (forall!5882 (t!208739 l!3055) p!1945))))

(assert (= (and d!708417 (not res!1042941)) b!2461041))

(assert (= (and b!2461041 res!1042942) b!2461042))

(declare-fun b_lambda!75355 () Bool)

(assert (=> (not b_lambda!75355) (not b!2461041)))

(assert (=> b!2461041 t!208738))

(declare-fun b_and!185649 () Bool)

(assert (= b_and!185647 (and (=> t!208738 result!171424) b_and!185649)))

(assert (=> b!2461041 m!2830163))

(declare-fun m!2830205 () Bool)

(assert (=> b!2461042 m!2830205))

(assert (=> start!239932 d!708417))

(declare-fun d!708419 () Bool)

(assert (=> d!708419 (= (isEmpty!16644 l!3055) (is-Nil!28630 l!3055))))

(assert (=> b!2460968 d!708419))

(declare-fun b!2461053 () Bool)

(declare-fun e!1560854 () Bool)

(declare-fun tp!783492 () Bool)

(assert (=> b!2461053 (= e!1560854 (and tp_is_empty!11917 tp!783492))))

(assert (=> b!2460969 (= tp!783482 e!1560854)))

(assert (= (and b!2460969 (is-Cons!28630 (t!208739 l!3055))) b!2461053))

(declare-fun b_lambda!75357 () Bool)

(assert (= b_lambda!75353 (or (and start!239932 b_free!70589) b_lambda!75357)))

(declare-fun b_lambda!75359 () Bool)

(assert (= b_lambda!75355 (or (and start!239932 b_free!70589) b_lambda!75359)))

(push 1)

(assert (not b_lambda!75357))

(assert (not b_next!71293))

(assert (not b!2461042))

(assert (not b!2461024))

(assert b_and!185649)

(assert (not d!708409))

(assert (not b!2460992))

(assert (not b_lambda!75347))

(assert (not b!2461053))

(assert tp_is_empty!11917)

(assert (not bm!151404))

(assert (not b!2461017))

(assert (not b_lambda!75359))

(assert (not b!2461021))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185649)

(assert (not b_next!71293))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!708425 () Bool)

(declare-fun lt!881059 () Int)

(assert (=> d!708425 (>= lt!881059 0)))

(declare-fun e!1560859 () Int)

(assert (=> d!708425 (= lt!881059 e!1560859)))

(declare-fun c!392804 () Bool)

(assert (=> d!708425 (= c!392804 (is-Nil!28630 lt!881053))))

(assert (=> d!708425 (= (size!22285 lt!881053) lt!881059)))

(declare-fun b!2461061 () Bool)

(assert (=> b!2461061 (= e!1560859 0)))

(declare-fun b!2461062 () Bool)

(assert (=> b!2461062 (= e!1560859 (+ 1 (size!22285 (t!208739 lt!881053))))))

(assert (= (and d!708425 c!392804) b!2461061))

(assert (= (and d!708425 (not c!392804)) b!2461062))

(declare-fun m!2830219 () Bool)

(assert (=> b!2461062 m!2830219))

(assert (=> d!708409 d!708425))

(assert (=> d!708409 d!708415))

(declare-fun d!708427 () Bool)

(declare-fun res!1042945 () Bool)

(declare-fun e!1560860 () Bool)

(assert (=> d!708427 (=> res!1042945 e!1560860)))

(assert (=> d!708427 (= res!1042945 (is-Nil!28630 (t!208739 l!3055)))))

(assert (=> d!708427 (= (forall!5882 (t!208739 l!3055) p!1945) e!1560860)))

(declare-fun b!2461063 () Bool)

(declare-fun e!1560861 () Bool)

(assert (=> b!2461063 (= e!1560860 e!1560861)))

(declare-fun res!1042946 () Bool)

(assert (=> b!2461063 (=> (not res!1042946) (not e!1560861))))

(assert (=> b!2461063 (= res!1042946 (dynLambda!12287 p!1945 (h!34031 (t!208739 l!3055))))))

(declare-fun b!2461064 () Bool)

(assert (=> b!2461064 (= e!1560861 (forall!5882 (t!208739 (t!208739 l!3055)) p!1945))))

(assert (= (and d!708427 (not res!1042945)) b!2461063))

(assert (= (and b!2461063 res!1042946) b!2461064))

(declare-fun b_lambda!75367 () Bool)

(assert (=> (not b_lambda!75367) (not b!2461063)))

(declare-fun t!208744 () Bool)

(declare-fun tb!138873 () Bool)

(assert (=> (and start!239932 (= p!1945 p!1945) t!208744) tb!138873))

(declare-fun result!171432 () Bool)

(assert (=> tb!138873 (= result!171432 true)))

(assert (=> b!2461063 t!208744))

(declare-fun b_and!185653 () Bool)

(assert (= b_and!185649 (and (=> t!208744 result!171432) b_and!185653)))

(declare-fun m!2830223 () Bool)

(assert (=> b!2461063 m!2830223))

(declare-fun m!2830225 () Bool)

(assert (=> b!2461064 m!2830225))

(assert (=> b!2461042 d!708427))

(declare-fun d!708433 () Bool)

(declare-fun res!1042947 () Bool)

(declare-fun e!1560864 () Bool)

(assert (=> d!708433 (=> res!1042947 e!1560864)))

(assert (=> d!708433 (= res!1042947 (is-Nil!28630 lt!881053))))

(assert (=> d!708433 (= (forall!5882 lt!881053 p!1945) e!1560864)))

(declare-fun b!2461069 () Bool)

(declare-fun e!1560865 () Bool)

(assert (=> b!2461069 (= e!1560864 e!1560865)))

(declare-fun res!1042948 () Bool)

(assert (=> b!2461069 (=> (not res!1042948) (not e!1560865))))

(assert (=> b!2461069 (= res!1042948 (dynLambda!12287 p!1945 (h!34031 lt!881053)))))

(declare-fun b!2461070 () Bool)

(assert (=> b!2461070 (= e!1560865 (forall!5882 (t!208739 lt!881053) p!1945))))

(assert (= (and d!708433 (not res!1042947)) b!2461069))

(assert (= (and b!2461069 res!1042948) b!2461070))

(declare-fun b_lambda!75369 () Bool)

(assert (=> (not b_lambda!75369) (not b!2461069)))

(declare-fun t!208746 () Bool)

(declare-fun tb!138875 () Bool)

(assert (=> (and start!239932 (= p!1945 p!1945) t!208746) tb!138875))

(declare-fun result!171434 () Bool)

(assert (=> tb!138875 (= result!171434 true)))

(assert (=> b!2461069 t!208746))

(declare-fun b_and!185655 () Bool)

(assert (= b_and!185653 (and (=> t!208746 result!171434) b_and!185655)))

(declare-fun m!2830229 () Bool)

(assert (=> b!2461069 m!2830229))

(declare-fun m!2830231 () Bool)

(assert (=> b!2461070 m!2830231))

(assert (=> b!2461021 d!708433))

(declare-fun d!708437 () Bool)

(declare-fun lt!881062 () Int)

(assert (=> d!708437 (>= lt!881062 0)))

(declare-fun e!1560868 () Int)

(assert (=> d!708437 (= lt!881062 e!1560868)))

(declare-fun c!392807 () Bool)

(assert (=> d!708437 (= c!392807 (is-Nil!28630 (t!208739 (filter!491 l!3055 p!1945))))))

(assert (=> d!708437 (= (size!22285 (t!208739 (filter!491 l!3055 p!1945))) lt!881062)))

(declare-fun b!2461073 () Bool)

(assert (=> b!2461073 (= e!1560868 0)))

(declare-fun b!2461074 () Bool)

(assert (=> b!2461074 (= e!1560868 (+ 1 (size!22285 (t!208739 (t!208739 (filter!491 l!3055 p!1945))))))))

(assert (= (and d!708437 c!392807) b!2461073))

(assert (= (and d!708437 (not c!392807)) b!2461074))

(declare-fun m!2830235 () Bool)

(assert (=> b!2461074 m!2830235))

(assert (=> b!2460992 d!708437))

(declare-fun d!708439 () Bool)

(declare-fun c!392812 () Bool)

(assert (=> d!708439 (= c!392812 (is-Nil!28630 lt!881053))))

(declare-fun e!1560876 () (Set B!1887))

(assert (=> d!708439 (= (content!3945 lt!881053) e!1560876)))

(declare-fun b!2461087 () Bool)

(assert (=> b!2461087 (= e!1560876 (as set.empty (Set B!1887)))))

(declare-fun b!2461088 () Bool)

(assert (=> b!2461088 (= e!1560876 (set.union (set.insert (h!34031 lt!881053) (as set.empty (Set B!1887))) (content!3945 (t!208739 lt!881053))))))

(assert (= (and d!708439 c!392812) b!2461087))

(assert (= (and d!708439 (not c!392812)) b!2461088))

(declare-fun m!2830253 () Bool)

(assert (=> b!2461088 m!2830253))

(declare-fun m!2830255 () Bool)

(assert (=> b!2461088 m!2830255))

(assert (=> b!2461017 d!708439))

(declare-fun d!708447 () Bool)

(declare-fun c!392815 () Bool)

(assert (=> d!708447 (= c!392815 (is-Nil!28630 l!3055))))

(declare-fun e!1560879 () (Set B!1887))

(assert (=> d!708447 (= (content!3945 l!3055) e!1560879)))

(declare-fun b!2461093 () Bool)

(assert (=> b!2461093 (= e!1560879 (as set.empty (Set B!1887)))))

(declare-fun b!2461094 () Bool)

(assert (=> b!2461094 (= e!1560879 (set.union (set.insert (h!34031 l!3055) (as set.empty (Set B!1887))) (content!3945 (t!208739 l!3055))))))

(assert (= (and d!708447 c!392815) b!2461093))

(assert (= (and d!708447 (not c!392815)) b!2461094))

(declare-fun m!2830257 () Bool)

(assert (=> b!2461094 m!2830257))

(declare-fun m!2830259 () Bool)

(assert (=> b!2461094 m!2830259))

(assert (=> b!2461017 d!708447))

(declare-fun d!708449 () Bool)

(declare-fun lt!881064 () Int)

(assert (=> d!708449 (>= lt!881064 0)))

(declare-fun e!1560880 () Int)

(assert (=> d!708449 (= lt!881064 e!1560880)))

(declare-fun c!392816 () Bool)

(assert (=> d!708449 (= c!392816 (is-Nil!28630 (t!208739 l!3055)))))

(assert (=> d!708449 (= (size!22285 (t!208739 l!3055)) lt!881064)))

(declare-fun b!2461095 () Bool)

(assert (=> b!2461095 (= e!1560880 0)))

(declare-fun b!2461096 () Bool)

(assert (=> b!2461096 (= e!1560880 (+ 1 (size!22285 (t!208739 (t!208739 l!3055)))))))

(assert (= (and d!708449 c!392816) b!2461095))

(assert (= (and d!708449 (not c!392816)) b!2461096))

(declare-fun m!2830261 () Bool)

(assert (=> b!2461096 m!2830261))

(assert (=> b!2461024 d!708449))

(declare-fun b!2461097 () Bool)

(declare-fun res!1042956 () Bool)

(declare-fun e!1560881 () Bool)

(assert (=> b!2461097 (=> (not res!1042956) (not e!1560881))))

(declare-fun lt!881065 () List!28730)

(assert (=> b!2461097 (= res!1042956 (set.subset (content!3945 lt!881065) (content!3945 (t!208739 l!3055))))))

(declare-fun b!2461098 () Bool)

(declare-fun e!1560882 () List!28730)

(declare-fun e!1560883 () List!28730)

(assert (=> b!2461098 (= e!1560882 e!1560883)))

(declare-fun c!392818 () Bool)

(assert (=> b!2461098 (= c!392818 (dynLambda!12287 p!1945 (h!34031 (t!208739 l!3055))))))

(declare-fun b!2461099 () Bool)

(assert (=> b!2461099 (= e!1560882 Nil!28630)))

(declare-fun b!2461100 () Bool)

(declare-fun call!151414 () List!28730)

(assert (=> b!2461100 (= e!1560883 (Cons!28630 (h!34031 (t!208739 l!3055)) call!151414))))

(declare-fun b!2461101 () Bool)

(assert (=> b!2461101 (= e!1560881 (forall!5882 lt!881065 p!1945))))

(declare-fun b!2461102 () Bool)

(assert (=> b!2461102 (= e!1560883 call!151414)))

(declare-fun bm!151409 () Bool)

(assert (=> bm!151409 (= call!151414 (filter!491 (t!208739 (t!208739 l!3055)) p!1945))))

(declare-fun d!708451 () Bool)

(assert (=> d!708451 e!1560881))

(declare-fun res!1042955 () Bool)

(assert (=> d!708451 (=> (not res!1042955) (not e!1560881))))

(assert (=> d!708451 (= res!1042955 (<= (size!22285 lt!881065) (size!22285 (t!208739 l!3055))))))

(assert (=> d!708451 (= lt!881065 e!1560882)))

(declare-fun c!392817 () Bool)

(assert (=> d!708451 (= c!392817 (is-Nil!28630 (t!208739 l!3055)))))

(assert (=> d!708451 (= (filter!491 (t!208739 l!3055) p!1945) lt!881065)))

(assert (= (and d!708451 c!392817) b!2461099))

(assert (= (and d!708451 (not c!392817)) b!2461098))

(assert (= (and b!2461098 c!392818) b!2461100))

(assert (= (and b!2461098 (not c!392818)) b!2461102))

(assert (= (or b!2461100 b!2461102) bm!151409))

(assert (= (and d!708451 res!1042955) b!2461097))

(assert (= (and b!2461097 res!1042956) b!2461101))

(declare-fun b_lambda!75377 () Bool)

(assert (=> (not b_lambda!75377) (not b!2461098)))

(assert (=> b!2461098 t!208744))

(declare-fun b_and!185663 () Bool)

(assert (= b_and!185655 (and (=> t!208744 result!171432) b_and!185663)))

(declare-fun m!2830263 () Bool)

(assert (=> b!2461101 m!2830263))

(declare-fun m!2830265 () Bool)

(assert (=> b!2461097 m!2830265))

(assert (=> b!2461097 m!2830259))

(declare-fun m!2830271 () Bool)

(assert (=> bm!151409 m!2830271))

(declare-fun m!2830273 () Bool)

(assert (=> d!708451 m!2830273))

(assert (=> d!708451 m!2830203))

(assert (=> b!2461098 m!2830223))

(assert (=> bm!151404 d!708451))

(declare-fun b!2461107 () Bool)

(declare-fun e!1560886 () Bool)

(declare-fun tp!783496 () Bool)

(assert (=> b!2461107 (= e!1560886 (and tp_is_empty!11917 tp!783496))))

(assert (=> b!2461053 (= tp!783492 e!1560886)))

(assert (= (and b!2461053 (is-Cons!28630 (t!208739 (t!208739 l!3055)))) b!2461107))

(declare-fun b_lambda!75379 () Bool)

(assert (= b_lambda!75367 (or (and start!239932 b_free!70589) b_lambda!75379)))

(declare-fun b_lambda!75381 () Bool)

(assert (= b_lambda!75369 (or (and start!239932 b_free!70589) b_lambda!75381)))

(declare-fun b_lambda!75383 () Bool)

(assert (= b_lambda!75377 (or (and start!239932 b_free!70589) b_lambda!75383)))

(push 1)

(assert (not b!2461062))

(assert (not b_lambda!75357))

(assert (not b_lambda!75383))

(assert (not b_next!71293))

(assert (not b!2461097))

(assert (not d!708451))

(assert (not b!2461107))

(assert (not b!2461088))

(assert (not b!2461096))

(assert (not b!2461070))

(assert (not b!2461101))

(assert (not b_lambda!75347))

(assert tp_is_empty!11917)

(assert b_and!185663)

(assert (not b_lambda!75379))

(assert (not b_lambda!75359))

(assert (not b_lambda!75381))

(assert (not b!2461094))

(assert (not bm!151409))

(assert (not b!2461064))

(assert (not b!2461074))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185663)

(assert (not b_next!71293))

(check-sat)

(pop 1)

