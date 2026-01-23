; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184130 () Bool)

(assert start!184130)

(declare-fun b_free!51593 () Bool)

(declare-fun b_next!52297 () Bool)

(assert (=> start!184130 (= b_free!51593 (not b_next!52297))))

(declare-fun tp!521997 () Bool)

(declare-fun b_and!143789 () Bool)

(assert (=> start!184130 (= tp!521997 b_and!143789)))

(declare-fun res!828946 () Bool)

(declare-fun e!1179726 () Bool)

(assert (=> start!184130 (=> (not res!828946) (not e!1179726))))

(declare-datatypes ((A!447 0))(
  ( (A!448 (val!5783 Int)) )
))
(declare-fun a!855 () A!447)

(declare-datatypes ((B!1605 0))(
  ( (B!1606 (val!5784 Int)) )
))
(declare-datatypes ((List!20451 0))(
  ( (Nil!20379) (Cons!20379 (h!25780 B!1605) (t!172116 List!20451)) )
))
(declare-fun l!2946 () List!20451)

(declare-fun f!1069 () Int)

(declare-datatypes ((List!20452 0))(
  ( (Nil!20380) (Cons!20380 (h!25781 A!447) (t!172117 List!20452)) )
))
(declare-fun contains!3752 (List!20452 A!447) Bool)

(declare-fun map!4283 (List!20451 Int) List!20452)

(assert (=> start!184130 (= res!828946 (contains!3752 (map!4283 l!2946 f!1069) a!855))))

(assert (=> start!184130 e!1179726))

(declare-fun e!1179725 () Bool)

(assert (=> start!184130 e!1179725))

(assert (=> start!184130 tp!521997))

(declare-fun tp_is_empty!8415 () Bool)

(assert (=> start!184130 tp_is_empty!8415))

(declare-fun b!1845997 () Bool)

(declare-fun res!828949 () Bool)

(assert (=> b!1845997 (=> (not res!828949) (not e!1179726))))

(declare-fun dynLambda!10135 (Int B!1605) A!447)

(assert (=> b!1845997 (= res!828949 (not (= (dynLambda!10135 f!1069 (h!25780 l!2946)) a!855)))))

(declare-fun b!1845998 () Bool)

(declare-fun tp_is_empty!8413 () Bool)

(declare-fun tp!521996 () Bool)

(assert (=> b!1845998 (= e!1179725 (and tp_is_empty!8413 tp!521996))))

(declare-fun b!1845999 () Bool)

(declare-fun ListPrimitiveSize!130 (List!20451) Int)

(assert (=> b!1845999 (= e!1179726 (>= (ListPrimitiveSize!130 (t!172116 l!2946)) (ListPrimitiveSize!130 l!2946)))))

(declare-fun b!1846000 () Bool)

(declare-fun res!828947 () Bool)

(assert (=> b!1846000 (=> (not res!828947) (not e!1179726))))

(assert (=> b!1846000 (= res!828947 (contains!3752 (map!4283 (t!172116 l!2946) f!1069) a!855))))

(declare-fun b!1846001 () Bool)

(declare-fun res!828948 () Bool)

(assert (=> b!1846001 (=> (not res!828948) (not e!1179726))))

(get-info :version)

(assert (=> b!1846001 (= res!828948 (not ((_ is Nil!20379) l!2946)))))

(assert (= (and start!184130 res!828946) b!1846001))

(assert (= (and b!1846001 res!828948) b!1845997))

(assert (= (and b!1845997 res!828949) b!1846000))

(assert (= (and b!1846000 res!828947) b!1845999))

(assert (= (and start!184130 ((_ is Cons!20379) l!2946)) b!1845998))

(declare-fun b_lambda!61303 () Bool)

(assert (=> (not b_lambda!61303) (not b!1845997)))

(declare-fun t!172115 () Bool)

(declare-fun tb!112859 () Bool)

(assert (=> (and start!184130 (= f!1069 f!1069) t!172115) tb!112859))

(declare-fun result!135960 () Bool)

(assert (=> tb!112859 (= result!135960 tp_is_empty!8415)))

(assert (=> b!1845997 t!172115))

(declare-fun b_and!143791 () Bool)

(assert (= b_and!143789 (and (=> t!172115 result!135960) b_and!143791)))

(declare-fun m!2274289 () Bool)

(assert (=> start!184130 m!2274289))

(assert (=> start!184130 m!2274289))

(declare-fun m!2274291 () Bool)

(assert (=> start!184130 m!2274291))

(declare-fun m!2274293 () Bool)

(assert (=> b!1845997 m!2274293))

(declare-fun m!2274295 () Bool)

(assert (=> b!1845999 m!2274295))

(declare-fun m!2274297 () Bool)

(assert (=> b!1845999 m!2274297))

(declare-fun m!2274299 () Bool)

(assert (=> b!1846000 m!2274299))

(assert (=> b!1846000 m!2274299))

(declare-fun m!2274301 () Bool)

(assert (=> b!1846000 m!2274301))

(check-sat tp_is_empty!8415 (not start!184130) tp_is_empty!8413 (not b_next!52297) (not b!1845998) (not b!1845999) b_and!143791 (not b!1846000) (not b_lambda!61303))
(check-sat b_and!143791 (not b_next!52297))
(get-model)

(declare-fun b_lambda!61305 () Bool)

(assert (= b_lambda!61303 (or (and start!184130 b_free!51593) b_lambda!61305)))

(check-sat (not b_lambda!61305) tp_is_empty!8415 (not start!184130) tp_is_empty!8413 (not b_next!52297) (not b!1845998) (not b!1845999) b_and!143791 (not b!1846000))
(check-sat b_and!143791 (not b_next!52297))
(get-model)

(declare-fun lt!714869 () Bool)

(declare-fun d!565024 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3035 (List!20452) (InoxSet A!447))

(assert (=> d!565024 (= lt!714869 (select (content!3035 (map!4283 l!2946 f!1069)) a!855))))

(declare-fun e!1179733 () Bool)

(assert (=> d!565024 (= lt!714869 e!1179733)))

(declare-fun res!828954 () Bool)

(assert (=> d!565024 (=> (not res!828954) (not e!1179733))))

(assert (=> d!565024 (= res!828954 ((_ is Cons!20380) (map!4283 l!2946 f!1069)))))

(assert (=> d!565024 (= (contains!3752 (map!4283 l!2946 f!1069) a!855) lt!714869)))

(declare-fun b!1846012 () Bool)

(declare-fun e!1179734 () Bool)

(assert (=> b!1846012 (= e!1179733 e!1179734)))

(declare-fun res!828955 () Bool)

(assert (=> b!1846012 (=> res!828955 e!1179734)))

(assert (=> b!1846012 (= res!828955 (= (h!25781 (map!4283 l!2946 f!1069)) a!855))))

(declare-fun b!1846013 () Bool)

(assert (=> b!1846013 (= e!1179734 (contains!3752 (t!172117 (map!4283 l!2946 f!1069)) a!855))))

(assert (= (and d!565024 res!828954) b!1846012))

(assert (= (and b!1846012 (not res!828955)) b!1846013))

(assert (=> d!565024 m!2274289))

(declare-fun m!2274303 () Bool)

(assert (=> d!565024 m!2274303))

(declare-fun m!2274305 () Bool)

(assert (=> d!565024 m!2274305))

(declare-fun m!2274307 () Bool)

(assert (=> b!1846013 m!2274307))

(assert (=> start!184130 d!565024))

(declare-fun d!565028 () Bool)

(declare-fun lt!714876 () List!20452)

(declare-fun size!16128 (List!20452) Int)

(declare-fun size!16129 (List!20451) Int)

(assert (=> d!565028 (= (size!16128 lt!714876) (size!16129 l!2946))))

(declare-fun e!1179743 () List!20452)

(assert (=> d!565028 (= lt!714876 e!1179743)))

(declare-fun c!301395 () Bool)

(assert (=> d!565028 (= c!301395 ((_ is Nil!20379) l!2946))))

(assert (=> d!565028 (= (map!4283 l!2946 f!1069) lt!714876)))

(declare-fun b!1846026 () Bool)

(assert (=> b!1846026 (= e!1179743 Nil!20380)))

(declare-fun b!1846027 () Bool)

(declare-fun $colon$colon!483 (List!20452 A!447) List!20452)

(assert (=> b!1846027 (= e!1179743 ($colon$colon!483 (map!4283 (t!172116 l!2946) f!1069) (dynLambda!10135 f!1069 (h!25780 l!2946))))))

(assert (= (and d!565028 c!301395) b!1846026))

(assert (= (and d!565028 (not c!301395)) b!1846027))

(declare-fun b_lambda!61309 () Bool)

(assert (=> (not b_lambda!61309) (not b!1846027)))

(assert (=> b!1846027 t!172115))

(declare-fun b_and!143793 () Bool)

(assert (= b_and!143791 (and (=> t!172115 result!135960) b_and!143793)))

(declare-fun m!2274311 () Bool)

(assert (=> d!565028 m!2274311))

(declare-fun m!2274313 () Bool)

(assert (=> d!565028 m!2274313))

(assert (=> b!1846027 m!2274299))

(assert (=> b!1846027 m!2274293))

(assert (=> b!1846027 m!2274299))

(assert (=> b!1846027 m!2274293))

(declare-fun m!2274315 () Bool)

(assert (=> b!1846027 m!2274315))

(assert (=> start!184130 d!565028))

(declare-fun lt!714878 () Bool)

(declare-fun d!565034 () Bool)

(assert (=> d!565034 (= lt!714878 (select (content!3035 (map!4283 (t!172116 l!2946) f!1069)) a!855))))

(declare-fun e!1179746 () Bool)

(assert (=> d!565034 (= lt!714878 e!1179746)))

(declare-fun res!828962 () Bool)

(assert (=> d!565034 (=> (not res!828962) (not e!1179746))))

(assert (=> d!565034 (= res!828962 ((_ is Cons!20380) (map!4283 (t!172116 l!2946) f!1069)))))

(assert (=> d!565034 (= (contains!3752 (map!4283 (t!172116 l!2946) f!1069) a!855) lt!714878)))

(declare-fun b!1846030 () Bool)

(declare-fun e!1179747 () Bool)

(assert (=> b!1846030 (= e!1179746 e!1179747)))

(declare-fun res!828963 () Bool)

(assert (=> b!1846030 (=> res!828963 e!1179747)))

(assert (=> b!1846030 (= res!828963 (= (h!25781 (map!4283 (t!172116 l!2946) f!1069)) a!855))))

(declare-fun b!1846031 () Bool)

(assert (=> b!1846031 (= e!1179747 (contains!3752 (t!172117 (map!4283 (t!172116 l!2946) f!1069)) a!855))))

(assert (= (and d!565034 res!828962) b!1846030))

(assert (= (and b!1846030 (not res!828963)) b!1846031))

(assert (=> d!565034 m!2274299))

(declare-fun m!2274323 () Bool)

(assert (=> d!565034 m!2274323))

(declare-fun m!2274325 () Bool)

(assert (=> d!565034 m!2274325))

(declare-fun m!2274327 () Bool)

(assert (=> b!1846031 m!2274327))

(assert (=> b!1846000 d!565034))

(declare-fun d!565038 () Bool)

(declare-fun lt!714879 () List!20452)

(assert (=> d!565038 (= (size!16128 lt!714879) (size!16129 (t!172116 l!2946)))))

(declare-fun e!1179748 () List!20452)

(assert (=> d!565038 (= lt!714879 e!1179748)))

(declare-fun c!301396 () Bool)

(assert (=> d!565038 (= c!301396 ((_ is Nil!20379) (t!172116 l!2946)))))

(assert (=> d!565038 (= (map!4283 (t!172116 l!2946) f!1069) lt!714879)))

(declare-fun b!1846032 () Bool)

(assert (=> b!1846032 (= e!1179748 Nil!20380)))

(declare-fun b!1846033 () Bool)

(assert (=> b!1846033 (= e!1179748 ($colon$colon!483 (map!4283 (t!172116 (t!172116 l!2946)) f!1069) (dynLambda!10135 f!1069 (h!25780 (t!172116 l!2946)))))))

(assert (= (and d!565038 c!301396) b!1846032))

(assert (= (and d!565038 (not c!301396)) b!1846033))

(declare-fun b_lambda!61311 () Bool)

(assert (=> (not b_lambda!61311) (not b!1846033)))

(declare-fun t!172119 () Bool)

(declare-fun tb!112861 () Bool)

(assert (=> (and start!184130 (= f!1069 f!1069) t!172119) tb!112861))

(declare-fun result!135964 () Bool)

(assert (=> tb!112861 (= result!135964 tp_is_empty!8415)))

(assert (=> b!1846033 t!172119))

(declare-fun b_and!143795 () Bool)

(assert (= b_and!143793 (and (=> t!172119 result!135964) b_and!143795)))

(declare-fun m!2274329 () Bool)

(assert (=> d!565038 m!2274329))

(declare-fun m!2274331 () Bool)

(assert (=> d!565038 m!2274331))

(declare-fun m!2274333 () Bool)

(assert (=> b!1846033 m!2274333))

(declare-fun m!2274335 () Bool)

(assert (=> b!1846033 m!2274335))

(assert (=> b!1846033 m!2274333))

(assert (=> b!1846033 m!2274335))

(declare-fun m!2274337 () Bool)

(assert (=> b!1846033 m!2274337))

(assert (=> b!1846000 d!565038))

(declare-fun d!565040 () Bool)

(declare-fun lt!714884 () Int)

(assert (=> d!565040 (>= lt!714884 0)))

(declare-fun e!1179753 () Int)

(assert (=> d!565040 (= lt!714884 e!1179753)))

(declare-fun c!301401 () Bool)

(assert (=> d!565040 (= c!301401 ((_ is Nil!20379) (t!172116 l!2946)))))

(assert (=> d!565040 (= (ListPrimitiveSize!130 (t!172116 l!2946)) lt!714884)))

(declare-fun b!1846042 () Bool)

(assert (=> b!1846042 (= e!1179753 0)))

(declare-fun b!1846043 () Bool)

(assert (=> b!1846043 (= e!1179753 (+ 1 (ListPrimitiveSize!130 (t!172116 (t!172116 l!2946)))))))

(assert (= (and d!565040 c!301401) b!1846042))

(assert (= (and d!565040 (not c!301401)) b!1846043))

(declare-fun m!2274339 () Bool)

(assert (=> b!1846043 m!2274339))

(assert (=> b!1845999 d!565040))

(declare-fun d!565042 () Bool)

(declare-fun lt!714885 () Int)

(assert (=> d!565042 (>= lt!714885 0)))

(declare-fun e!1179754 () Int)

(assert (=> d!565042 (= lt!714885 e!1179754)))

(declare-fun c!301402 () Bool)

(assert (=> d!565042 (= c!301402 ((_ is Nil!20379) l!2946))))

(assert (=> d!565042 (= (ListPrimitiveSize!130 l!2946) lt!714885)))

(declare-fun b!1846044 () Bool)

(assert (=> b!1846044 (= e!1179754 0)))

(declare-fun b!1846045 () Bool)

(assert (=> b!1846045 (= e!1179754 (+ 1 (ListPrimitiveSize!130 (t!172116 l!2946))))))

(assert (= (and d!565042 c!301402) b!1846044))

(assert (= (and d!565042 (not c!301402)) b!1846045))

(assert (=> b!1846045 m!2274295))

(assert (=> b!1845999 d!565042))

(declare-fun b!1846052 () Bool)

(declare-fun e!1179758 () Bool)

(declare-fun tp!522000 () Bool)

(assert (=> b!1846052 (= e!1179758 (and tp_is_empty!8413 tp!522000))))

(assert (=> b!1845998 (= tp!521996 e!1179758)))

(assert (= (and b!1845998 ((_ is Cons!20379) (t!172116 l!2946))) b!1846052))

(declare-fun b_lambda!61315 () Bool)

(assert (= b_lambda!61309 (or (and start!184130 b_free!51593) b_lambda!61315)))

(declare-fun b_lambda!61317 () Bool)

(assert (= b_lambda!61311 (or (and start!184130 b_free!51593) b_lambda!61317)))

(check-sat (not b_lambda!61305) tp_is_empty!8415 (not d!565024) (not b!1846013) tp_is_empty!8413 (not d!565034) (not b_next!52297) (not b!1846052) (not b!1846027) (not b!1846031) (not b!1846033) (not d!565038) (not b!1846043) (not b!1846045) (not b_lambda!61315) (not b_lambda!61317) b_and!143795 (not d!565028))
(check-sat b_and!143795 (not b_next!52297))
