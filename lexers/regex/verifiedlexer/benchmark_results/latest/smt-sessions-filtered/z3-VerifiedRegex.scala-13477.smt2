; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!727884 () Bool)

(assert start!727884)

(declare-fun b_free!134417 () Bool)

(declare-fun b_next!135207 () Bool)

(assert (=> start!727884 (= b_free!134417 (not b_next!135207))))

(declare-fun tp!2184187 () Bool)

(declare-fun b_and!352159 () Bool)

(assert (=> start!727884 (= tp!2184187 b_and!352159)))

(declare-fun b!7519930 () Bool)

(assert (=> b!7519930 true))

(declare-fun order!29747 () Int)

(declare-fun p!2194 () Int)

(declare-fun lambda!466335 () Int)

(declare-fun dynLambda!29865 (Int Int) Int)

(assert (=> b!7519930 (< (dynLambda!29865 order!29747 p!2194) (dynLambda!29865 order!29747 lambda!466335))))

(declare-fun e!4482750 () Bool)

(declare-datatypes ((B!3953 0))(
  ( (B!3954 (val!30352 Int)) )
))
(declare-datatypes ((List!72660 0))(
  ( (Nil!72536) (Cons!72536 (h!78984 B!3953) (t!387317 List!72660)) )
))
(declare-fun l!3837 () List!72660)

(declare-fun exists!4945 (List!72660 Int) Bool)

(assert (=> b!7519930 (= e!4482750 (not (exists!4945 l!3837 lambda!466335)))))

(declare-fun res!3014185 () Bool)

(assert (=> start!727884 (=> (not res!3014185) (not e!4482750))))

(declare-fun forall!18390 (List!72660 Int) Bool)

(assert (=> start!727884 (= res!3014185 (not (forall!18390 l!3837 p!2194)))))

(assert (=> start!727884 e!4482750))

(declare-fun e!4482751 () Bool)

(assert (=> start!727884 e!4482751))

(assert (=> start!727884 tp!2184187))

(declare-fun b!7519928 () Bool)

(declare-fun res!3014184 () Bool)

(assert (=> b!7519928 (=> (not res!3014184) (not e!4482750))))

(get-info :version)

(assert (=> b!7519928 (= res!3014184 ((_ is Cons!72536) l!3837))))

(declare-fun b!7519931 () Bool)

(declare-fun tp_is_empty!49863 () Bool)

(declare-fun tp!2184188 () Bool)

(assert (=> b!7519931 (= e!4482751 (and tp_is_empty!49863 tp!2184188))))

(declare-fun b!7519929 () Bool)

(declare-fun res!3014183 () Bool)

(assert (=> b!7519929 (=> (not res!3014183) (not e!4482750))))

(declare-fun dynLambda!29866 (Int B!3953) Bool)

(assert (=> b!7519929 (= res!3014183 (not (dynLambda!29866 p!2194 (h!78984 l!3837))))))

(assert (= (and start!727884 res!3014185) b!7519928))

(assert (= (and b!7519928 res!3014184) b!7519929))

(assert (= (and b!7519929 res!3014183) b!7519930))

(assert (= (and start!727884 ((_ is Cons!72536) l!3837)) b!7519931))

(declare-fun b_lambda!288531 () Bool)

(assert (=> (not b_lambda!288531) (not b!7519929)))

(declare-fun t!387316 () Bool)

(declare-fun tb!262537 () Bool)

(assert (=> (and start!727884 (= p!2194 p!2194) t!387316) tb!262537))

(declare-fun result!356378 () Bool)

(assert (=> tb!262537 (= result!356378 true)))

(assert (=> b!7519929 t!387316))

(declare-fun b_and!352161 () Bool)

(assert (= b_and!352159 (and (=> t!387316 result!356378) b_and!352161)))

(declare-fun m!8099782 () Bool)

(assert (=> b!7519930 m!8099782))

(declare-fun m!8099784 () Bool)

(assert (=> start!727884 m!8099784))

(declare-fun m!8099786 () Bool)

(assert (=> b!7519929 m!8099786))

(check-sat b_and!352161 (not b_lambda!288531) tp_is_empty!49863 (not b!7519930) (not b!7519931) (not b_next!135207) (not start!727884))
(check-sat b_and!352161 (not b_next!135207))
(get-model)

(declare-fun b_lambda!288535 () Bool)

(assert (= b_lambda!288531 (or (and start!727884 b_free!134417) b_lambda!288535)))

(check-sat b_and!352161 tp_is_empty!49863 (not b_lambda!288535) (not b!7519930) (not b!7519931) (not b_next!135207) (not start!727884))
(check-sat b_and!352161 (not b_next!135207))
(get-model)

(declare-fun bs!1939520 () Bool)

(declare-fun d!2308724 () Bool)

(assert (= bs!1939520 (and d!2308724 b!7519930)))

(declare-fun lambda!466341 () Int)

(assert (=> bs!1939520 (= (= lambda!466335 p!2194) (= lambda!466341 lambda!466335))))

(assert (=> d!2308724 true))

(assert (=> d!2308724 (< (dynLambda!29865 order!29747 lambda!466335) (dynLambda!29865 order!29747 lambda!466341))))

(assert (=> d!2308724 (= (exists!4945 l!3837 lambda!466335) (not (forall!18390 l!3837 lambda!466341)))))

(declare-fun bs!1939521 () Bool)

(assert (= bs!1939521 d!2308724))

(declare-fun m!8099794 () Bool)

(assert (=> bs!1939521 m!8099794))

(assert (=> b!7519930 d!2308724))

(declare-fun d!2308728 () Bool)

(declare-fun res!3014196 () Bool)

(declare-fun e!4482765 () Bool)

(assert (=> d!2308728 (=> res!3014196 e!4482765)))

(assert (=> d!2308728 (= res!3014196 ((_ is Nil!72536) l!3837))))

(assert (=> d!2308728 (= (forall!18390 l!3837 p!2194) e!4482765)))

(declare-fun b!7519949 () Bool)

(declare-fun e!4482766 () Bool)

(assert (=> b!7519949 (= e!4482765 e!4482766)))

(declare-fun res!3014197 () Bool)

(assert (=> b!7519949 (=> (not res!3014197) (not e!4482766))))

(assert (=> b!7519949 (= res!3014197 (dynLambda!29866 p!2194 (h!78984 l!3837)))))

(declare-fun b!7519950 () Bool)

(assert (=> b!7519950 (= e!4482766 (forall!18390 (t!387317 l!3837) p!2194))))

(assert (= (and d!2308728 (not res!3014196)) b!7519949))

(assert (= (and b!7519949 res!3014197) b!7519950))

(declare-fun b_lambda!288543 () Bool)

(assert (=> (not b_lambda!288543) (not b!7519949)))

(assert (=> b!7519949 t!387316))

(declare-fun b_and!352165 () Bool)

(assert (= b_and!352161 (and (=> t!387316 result!356378) b_and!352165)))

(assert (=> b!7519949 m!8099786))

(declare-fun m!8099796 () Bool)

(assert (=> b!7519950 m!8099796))

(assert (=> start!727884 d!2308728))

(declare-fun b!7519955 () Bool)

(declare-fun e!4482769 () Bool)

(declare-fun tp!2184194 () Bool)

(assert (=> b!7519955 (= e!4482769 (and tp_is_empty!49863 tp!2184194))))

(assert (=> b!7519931 (= tp!2184188 e!4482769)))

(assert (= (and b!7519931 ((_ is Cons!72536) (t!387317 l!3837))) b!7519955))

(declare-fun b_lambda!288545 () Bool)

(assert (= b_lambda!288543 (or (and start!727884 b_free!134417) b_lambda!288545)))

(check-sat b_and!352165 tp_is_empty!49863 (not b!7519950) (not d!2308724) (not b_next!135207) (not b_lambda!288535) (not b_lambda!288545) (not b!7519955))
(check-sat b_and!352165 (not b_next!135207))
(get-model)

(declare-fun d!2308732 () Bool)

(declare-fun res!3014198 () Bool)

(declare-fun e!4482770 () Bool)

(assert (=> d!2308732 (=> res!3014198 e!4482770)))

(assert (=> d!2308732 (= res!3014198 ((_ is Nil!72536) l!3837))))

(assert (=> d!2308732 (= (forall!18390 l!3837 lambda!466341) e!4482770)))

(declare-fun b!7519956 () Bool)

(declare-fun e!4482771 () Bool)

(assert (=> b!7519956 (= e!4482770 e!4482771)))

(declare-fun res!3014199 () Bool)

(assert (=> b!7519956 (=> (not res!3014199) (not e!4482771))))

(assert (=> b!7519956 (= res!3014199 (dynLambda!29866 lambda!466341 (h!78984 l!3837)))))

(declare-fun b!7519957 () Bool)

(assert (=> b!7519957 (= e!4482771 (forall!18390 (t!387317 l!3837) lambda!466341))))

(assert (= (and d!2308732 (not res!3014198)) b!7519956))

(assert (= (and b!7519956 res!3014199) b!7519957))

(declare-fun b_lambda!288551 () Bool)

(assert (=> (not b_lambda!288551) (not b!7519956)))

(declare-fun m!8099798 () Bool)

(assert (=> b!7519956 m!8099798))

(declare-fun m!8099800 () Bool)

(assert (=> b!7519957 m!8099800))

(assert (=> d!2308724 d!2308732))

(declare-fun d!2308734 () Bool)

(declare-fun res!3014200 () Bool)

(declare-fun e!4482772 () Bool)

(assert (=> d!2308734 (=> res!3014200 e!4482772)))

(assert (=> d!2308734 (= res!3014200 ((_ is Nil!72536) (t!387317 l!3837)))))

(assert (=> d!2308734 (= (forall!18390 (t!387317 l!3837) p!2194) e!4482772)))

(declare-fun b!7519958 () Bool)

(declare-fun e!4482773 () Bool)

(assert (=> b!7519958 (= e!4482772 e!4482773)))

(declare-fun res!3014201 () Bool)

(assert (=> b!7519958 (=> (not res!3014201) (not e!4482773))))

(assert (=> b!7519958 (= res!3014201 (dynLambda!29866 p!2194 (h!78984 (t!387317 l!3837))))))

(declare-fun b!7519959 () Bool)

(assert (=> b!7519959 (= e!4482773 (forall!18390 (t!387317 (t!387317 l!3837)) p!2194))))

(assert (= (and d!2308734 (not res!3014200)) b!7519958))

(assert (= (and b!7519958 res!3014201) b!7519959))

(declare-fun b_lambda!288553 () Bool)

(assert (=> (not b_lambda!288553) (not b!7519958)))

(declare-fun t!387319 () Bool)

(declare-fun tb!262539 () Bool)

(assert (=> (and start!727884 (= p!2194 p!2194) t!387319) tb!262539))

(declare-fun result!356384 () Bool)

(assert (=> tb!262539 (= result!356384 true)))

(assert (=> b!7519958 t!387319))

(declare-fun b_and!352169 () Bool)

(assert (= b_and!352165 (and (=> t!387319 result!356384) b_and!352169)))

(declare-fun m!8099802 () Bool)

(assert (=> b!7519958 m!8099802))

(declare-fun m!8099804 () Bool)

(assert (=> b!7519959 m!8099804))

(assert (=> b!7519950 d!2308734))

(declare-fun b!7519960 () Bool)

(declare-fun e!4482774 () Bool)

(declare-fun tp!2184195 () Bool)

(assert (=> b!7519960 (= e!4482774 (and tp_is_empty!49863 tp!2184195))))

(assert (=> b!7519955 (= tp!2184194 e!4482774)))

(assert (= (and b!7519955 ((_ is Cons!72536) (t!387317 (t!387317 l!3837)))) b!7519960))

(declare-fun b_lambda!288555 () Bool)

(assert (= b_lambda!288535 (or (and d!2308724 (= lambda!466341 p!2194)) b_lambda!288555)))

(declare-fun bs!1939523 () Bool)

(declare-fun d!2308736 () Bool)

(assert (= bs!1939523 (and d!2308736 d!2308724)))

(assert (=> bs!1939523 (= (dynLambda!29866 lambda!466341 (h!78984 l!3837)) (not (dynLambda!29866 lambda!466335 (h!78984 l!3837))))))

(declare-fun b_lambda!288561 () Bool)

(assert (=> (not b_lambda!288561) (not bs!1939523)))

(declare-fun m!8099806 () Bool)

(assert (=> bs!1939523 m!8099806))

(assert (=> (and d!2308724 (= lambda!466341 p!2194) b!7519929) d!2308736))

(declare-fun b_lambda!288557 () Bool)

(assert (= b_lambda!288553 (or (and start!727884 b_free!134417) b_lambda!288557)))

(declare-fun b_lambda!288559 () Bool)

(assert (= b_lambda!288551 (or d!2308724 b_lambda!288559)))

(declare-fun bs!1939524 () Bool)

(declare-fun d!2308738 () Bool)

(assert (= bs!1939524 (and d!2308738 d!2308724)))

(assert (=> bs!1939524 (= (dynLambda!29866 lambda!466341 (h!78984 l!3837)) (not (dynLambda!29866 lambda!466335 (h!78984 l!3837))))))

(declare-fun b_lambda!288563 () Bool)

(assert (=> (not b_lambda!288563) (not bs!1939524)))

(assert (=> bs!1939524 m!8099806))

(assert (=> b!7519956 d!2308738))

(check-sat (not b!7519960) (not b_lambda!288561) (not b_lambda!288555) (not b!7519959) (not b_next!135207) (not b_lambda!288557) b_and!352169 (not b_lambda!288545) (not b_lambda!288559) (not b_lambda!288563) tp_is_empty!49863 (not b!7519957))
(check-sat b_and!352169 (not b_next!135207))
(get-model)

(declare-fun b_lambda!288579 () Bool)

(assert (= b_lambda!288561 (or b!7519930 b_lambda!288579)))

(declare-fun bs!1939526 () Bool)

(declare-fun d!2308746 () Bool)

(assert (= bs!1939526 (and d!2308746 b!7519930)))

(assert (=> bs!1939526 (= (dynLambda!29866 lambda!466335 (h!78984 l!3837)) (not (dynLambda!29866 p!2194 (h!78984 l!3837))))))

(declare-fun b_lambda!288583 () Bool)

(assert (=> (not b_lambda!288583) (not bs!1939526)))

(assert (=> bs!1939526 t!387316))

(declare-fun b_and!352173 () Bool)

(assert (= b_and!352169 (and (=> t!387316 result!356378) b_and!352173)))

(assert (=> bs!1939526 m!8099786))

(assert (=> bs!1939523 d!2308746))

(declare-fun b_lambda!288581 () Bool)

(assert (= b_lambda!288563 (or b!7519930 b_lambda!288581)))

(assert (=> bs!1939524 d!2308746))

(check-sat (not b_lambda!288583) (not b!7519960) (not b_lambda!288555) (not b_lambda!288581) (not b!7519959) (not b_next!135207) (not b_lambda!288557) b_and!352173 (not b_lambda!288559) tp_is_empty!49863 (not b!7519957) (not b_lambda!288545) (not b_lambda!288579))
(check-sat b_and!352173 (not b_next!135207))
