; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!727598 () Bool)

(assert start!727598)

(declare-fun b_free!134385 () Bool)

(declare-fun b_next!135175 () Bool)

(assert (=> start!727598 (= b_free!134385 (not b_next!135175))))

(declare-fun tp!2179900 () Bool)

(declare-fun b_and!352059 () Bool)

(assert (=> start!727598 (= tp!2179900 b_and!352059)))

(declare-fun b!7509962 () Bool)

(declare-fun res!3012957 () Bool)

(declare-fun e!4478168 () Bool)

(assert (=> b!7509962 (=> (not res!3012957) (not e!4478168))))

(declare-fun e!4478170 () Bool)

(assert (=> b!7509962 (= res!3012957 e!4478170)))

(declare-fun res!3012959 () Bool)

(assert (=> b!7509962 (=> res!3012959 e!4478170)))

(declare-datatypes ((B!3921 0))(
  ( (B!3922 (val!30320 Int)) )
))
(declare-datatypes ((List!72614 0))(
  ( (Nil!72490) (Cons!72490 (h!78938 B!3921) (t!387223 List!72614)) )
))
(declare-fun l!2942 () List!72614)

(get-info :version)

(assert (=> b!7509962 (= res!3012959 (not ((_ is Cons!72490) l!2942)))))

(declare-fun b!7509963 () Bool)

(declare-fun e!4478169 () Bool)

(declare-fun tp_is_empty!49813 () Bool)

(declare-fun tp!2179899 () Bool)

(assert (=> b!7509963 (= e!4478169 (and tp_is_empty!49813 tp!2179899))))

(declare-fun b!7509964 () Bool)

(declare-fun ListPrimitiveSize!442 (List!72614) Int)

(assert (=> b!7509964 (= e!4478168 (>= (ListPrimitiveSize!442 (t!387223 l!2942)) (ListPrimitiveSize!442 l!2942)))))

(declare-fun b!7509965 () Bool)

(declare-fun res!3012956 () Bool)

(assert (=> b!7509965 (=> (not res!3012956) (not e!4478168))))

(assert (=> b!7509965 (= res!3012956 ((_ is Cons!72490) l!2942))))

(declare-fun res!3012958 () Bool)

(assert (=> start!727598 (=> (not res!3012958) (not e!4478168))))

(declare-fun p!1842 () Int)

(declare-fun exists!4925 (List!72614 Int) Bool)

(assert (=> start!727598 (= res!3012958 (exists!4925 l!2942 p!1842))))

(assert (=> start!727598 e!4478168))

(assert (=> start!727598 e!4478169))

(assert (=> start!727598 tp!2179900))

(declare-fun b!7509961 () Bool)

(declare-fun dynLambda!29826 (Int B!3921) Bool)

(assert (=> b!7509961 (= e!4478170 (not (dynLambda!29826 p!1842 (h!78938 l!2942))))))

(assert (= (and start!727598 res!3012958) b!7509962))

(assert (= (and b!7509962 (not res!3012959)) b!7509961))

(assert (= (and b!7509962 res!3012957) b!7509965))

(assert (= (and b!7509965 res!3012956) b!7509964))

(assert (= (and start!727598 ((_ is Cons!72490) l!2942)) b!7509963))

(declare-fun b_lambda!288055 () Bool)

(assert (=> (not b_lambda!288055) (not b!7509961)))

(declare-fun t!387222 () Bool)

(declare-fun tb!262489 () Bool)

(assert (=> (and start!727598 (= p!1842 p!1842) t!387222) tb!262489))

(declare-fun result!356268 () Bool)

(assert (=> tb!262489 (= result!356268 true)))

(assert (=> b!7509961 t!387222))

(declare-fun b_and!352061 () Bool)

(assert (= b_and!352059 (and (=> t!387222 result!356268) b_and!352061)))

(declare-fun m!8093910 () Bool)

(assert (=> b!7509964 m!8093910))

(declare-fun m!8093912 () Bool)

(assert (=> b!7509964 m!8093912))

(declare-fun m!8093914 () Bool)

(assert (=> start!727598 m!8093914))

(declare-fun m!8093916 () Bool)

(assert (=> b!7509961 m!8093916))

(check-sat tp_is_empty!49813 (not b_lambda!288055) b_and!352061 (not b!7509964) (not b!7509963) (not start!727598) (not b_next!135175))
(check-sat b_and!352061 (not b_next!135175))
(get-model)

(declare-fun b_lambda!288059 () Bool)

(assert (= b_lambda!288055 (or (and start!727598 b_free!134385) b_lambda!288059)))

(check-sat tp_is_empty!49813 (not b_lambda!288059) b_and!352061 (not b!7509964) (not b!7509963) (not start!727598) (not b_next!135175))
(check-sat b_and!352061 (not b_next!135175))
(get-model)

(declare-fun d!2306232 () Bool)

(declare-fun lt!2637324 () Int)

(assert (=> d!2306232 (>= lt!2637324 0)))

(declare-fun e!4478177 () Int)

(assert (=> d!2306232 (= lt!2637324 e!4478177)))

(declare-fun c!1386844 () Bool)

(assert (=> d!2306232 (= c!1386844 ((_ is Nil!72490) (t!387223 l!2942)))))

(assert (=> d!2306232 (= (ListPrimitiveSize!442 (t!387223 l!2942)) lt!2637324)))

(declare-fun b!7509978 () Bool)

(assert (=> b!7509978 (= e!4478177 0)))

(declare-fun b!7509979 () Bool)

(assert (=> b!7509979 (= e!4478177 (+ 1 (ListPrimitiveSize!442 (t!387223 (t!387223 l!2942)))))))

(assert (= (and d!2306232 c!1386844) b!7509978))

(assert (= (and d!2306232 (not c!1386844)) b!7509979))

(declare-fun m!8093920 () Bool)

(assert (=> b!7509979 m!8093920))

(assert (=> b!7509964 d!2306232))

(declare-fun d!2306238 () Bool)

(declare-fun lt!2637325 () Int)

(assert (=> d!2306238 (>= lt!2637325 0)))

(declare-fun e!4478178 () Int)

(assert (=> d!2306238 (= lt!2637325 e!4478178)))

(declare-fun c!1386845 () Bool)

(assert (=> d!2306238 (= c!1386845 ((_ is Nil!72490) l!2942))))

(assert (=> d!2306238 (= (ListPrimitiveSize!442 l!2942) lt!2637325)))

(declare-fun b!7509980 () Bool)

(assert (=> b!7509980 (= e!4478178 0)))

(declare-fun b!7509981 () Bool)

(assert (=> b!7509981 (= e!4478178 (+ 1 (ListPrimitiveSize!442 (t!387223 l!2942))))))

(assert (= (and d!2306238 c!1386845) b!7509980))

(assert (= (and d!2306238 (not c!1386845)) b!7509981))

(assert (=> b!7509981 m!8093910))

(assert (=> b!7509964 d!2306238))

(declare-fun d!2306240 () Bool)

(assert (=> d!2306240 true))

(declare-fun order!29709 () Int)

(declare-fun lambda!466154 () Int)

(declare-fun dynLambda!29827 (Int Int) Int)

(assert (=> d!2306240 (< (dynLambda!29827 order!29709 p!1842) (dynLambda!29827 order!29709 lambda!466154))))

(declare-fun forall!18369 (List!72614 Int) Bool)

(assert (=> d!2306240 (= (exists!4925 l!2942 p!1842) (not (forall!18369 l!2942 lambda!466154)))))

(declare-fun bs!1939098 () Bool)

(assert (= bs!1939098 d!2306240))

(declare-fun m!8093922 () Bool)

(assert (=> bs!1939098 m!8093922))

(assert (=> start!727598 d!2306240))

(declare-fun b!7509994 () Bool)

(declare-fun e!4478183 () Bool)

(declare-fun tp!2179903 () Bool)

(assert (=> b!7509994 (= e!4478183 (and tp_is_empty!49813 tp!2179903))))

(assert (=> b!7509963 (= tp!2179899 e!4478183)))

(assert (= (and b!7509963 ((_ is Cons!72490) (t!387223 l!2942))) b!7509994))

(check-sat (not b!7509979) (not b_lambda!288059) (not b_next!135175) (not b!7509994) (not d!2306240) b_and!352061 (not b!7509981) tp_is_empty!49813)
(check-sat b_and!352061 (not b_next!135175))
