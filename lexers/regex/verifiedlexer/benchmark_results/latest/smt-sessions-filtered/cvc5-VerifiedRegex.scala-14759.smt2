; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759108 () Bool)

(assert start!759108)

(declare-fun b!8057334 () Bool)

(assert (=> b!8057334 true))

(declare-fun b!8057328 () Bool)

(declare-fun e!4748217 () Bool)

(declare-datatypes ((V!23180 0))(
  ( (V!23181 (val!33013 Int)) )
))
(declare-datatypes ((K!22926 0))(
  ( (K!22927 (val!33014 Int)) )
))
(declare-datatypes ((tuple2!70978 0))(
  ( (tuple2!70979 (_1!38792 K!22926) (_2!38792 V!23180)) )
))
(declare-datatypes ((List!75737 0))(
  ( (Nil!75611) (Cons!75611 (h!82059 tuple2!70978) (t!391509 List!75737)) )
))
(declare-datatypes ((ListMap!7349 0))(
  ( (ListMap!7350 (toList!11949 List!75737)) )
))
(declare-fun acc!836 () ListMap!7349)

(declare-fun lambda!474561 () Int)

(declare-fun forall!18531 (List!75737 Int) Bool)

(assert (=> b!8057328 (= e!4748217 (forall!18531 (toList!11949 acc!836) lambda!474561))))

(declare-fun b!8057329 () Bool)

(declare-fun tp_is_empty!55079 () Bool)

(declare-fun e!4748219 () Bool)

(declare-fun tp_is_empty!55081 () Bool)

(declare-fun tp!2414091 () Bool)

(assert (=> b!8057329 (= e!4748219 (and tp_is_empty!55079 tp_is_empty!55081 tp!2414091))))

(declare-fun b!8057330 () Bool)

(declare-fun res!3187264 () Bool)

(declare-fun e!4748218 () Bool)

(assert (=> b!8057330 (=> (not res!3187264) (not e!4748218))))

(assert (=> b!8057330 (= res!3187264 (forall!18531 (toList!11949 acc!836) lambda!474561))))

(declare-fun b!8057331 () Bool)

(declare-fun e!4748220 () Bool)

(declare-fun tp!2414090 () Bool)

(assert (=> b!8057331 (= e!4748220 tp!2414090)))

(declare-fun b!8057332 () Bool)

(declare-fun invariantList!1955 (List!75737) Bool)

(assert (=> b!8057332 (= e!4748218 (invariantList!1955 (toList!11949 acc!836)))))

(declare-fun b!8057333 () Bool)

(declare-fun res!3187266 () Bool)

(declare-fun e!4748221 () Bool)

(assert (=> b!8057333 (=> (not res!3187266) (not e!4748221))))

(declare-fun l!10976 () List!75737)

(assert (=> b!8057333 (= res!3187266 (is-Nil!75611 l!10976))))

(assert (=> b!8057334 (= e!4748221 (not e!4748218))))

(declare-fun res!3187263 () Bool)

(assert (=> b!8057334 (=> (not res!3187263) (not e!4748218))))

(assert (=> b!8057334 (= res!3187263 (forall!18531 l!10976 lambda!474561))))

(assert (=> b!8057334 e!4748217))

(declare-fun res!3187262 () Bool)

(assert (=> b!8057334 (=> (not res!3187262) (not e!4748217))))

(assert (=> b!8057334 (= res!3187262 (forall!18531 (toList!11949 acc!836) lambda!474561))))

(declare-datatypes ((Unit!172581 0))(
  ( (Unit!172582) )
))
(declare-fun lt!2730972 () Unit!172581)

(declare-fun lemmaContainsAllItsOwnKeys!1112 (ListMap!7349) Unit!172581)

(assert (=> b!8057334 (= lt!2730972 (lemmaContainsAllItsOwnKeys!1112 acc!836))))

(declare-fun res!3187265 () Bool)

(assert (=> start!759108 (=> (not res!3187265) (not e!4748221))))

(declare-fun noDuplicateKeys!2735 (List!75737) Bool)

(assert (=> start!759108 (= res!3187265 (noDuplicateKeys!2735 l!10976))))

(assert (=> start!759108 e!4748221))

(assert (=> start!759108 e!4748219))

(declare-fun inv!97400 (ListMap!7349) Bool)

(assert (=> start!759108 (and (inv!97400 acc!836) e!4748220)))

(assert (= (and start!759108 res!3187265) b!8057333))

(assert (= (and b!8057333 res!3187266) b!8057334))

(assert (= (and b!8057334 res!3187262) b!8057328))

(assert (= (and b!8057334 res!3187263) b!8057330))

(assert (= (and b!8057330 res!3187264) b!8057332))

(assert (= (and start!759108 (is-Cons!75611 l!10976)) b!8057329))

(assert (= start!759108 b!8057331))

(declare-fun m!8410448 () Bool)

(assert (=> b!8057328 m!8410448))

(assert (=> b!8057330 m!8410448))

(declare-fun m!8410450 () Bool)

(assert (=> start!759108 m!8410450))

(declare-fun m!8410452 () Bool)

(assert (=> start!759108 m!8410452))

(declare-fun m!8410454 () Bool)

(assert (=> b!8057334 m!8410454))

(assert (=> b!8057334 m!8410448))

(declare-fun m!8410456 () Bool)

(assert (=> b!8057334 m!8410456))

(declare-fun m!8410458 () Bool)

(assert (=> b!8057332 m!8410458))

(push 1)

(assert (not b!8057328))

(assert tp_is_empty!55079)

(assert (not b!8057332))

(assert tp_is_empty!55081)

(assert (not b!8057329))

(assert (not start!759108))

(assert (not b!8057331))

(assert (not b!8057334))

(assert (not b!8057330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2398838 () Bool)

(declare-fun res!3187286 () Bool)

(declare-fun e!4748241 () Bool)

(assert (=> d!2398838 (=> res!3187286 e!4748241)))

(assert (=> d!2398838 (= res!3187286 (is-Nil!75611 l!10976))))

(assert (=> d!2398838 (= (forall!18531 l!10976 lambda!474561) e!4748241)))

(declare-fun b!8057364 () Bool)

(declare-fun e!4748242 () Bool)

(assert (=> b!8057364 (= e!4748241 e!4748242)))

(declare-fun res!3187287 () Bool)

(assert (=> b!8057364 (=> (not res!3187287) (not e!4748242))))

(declare-fun dynLambda!30272 (Int tuple2!70978) Bool)

(assert (=> b!8057364 (= res!3187287 (dynLambda!30272 lambda!474561 (h!82059 l!10976)))))

(declare-fun b!8057365 () Bool)

(assert (=> b!8057365 (= e!4748242 (forall!18531 (t!391509 l!10976) lambda!474561))))

(assert (= (and d!2398838 (not res!3187286)) b!8057364))

(assert (= (and b!8057364 res!3187287) b!8057365))

(declare-fun b_lambda!290527 () Bool)

(assert (=> (not b_lambda!290527) (not b!8057364)))

(declare-fun m!8410472 () Bool)

(assert (=> b!8057364 m!8410472))

(declare-fun m!8410474 () Bool)

(assert (=> b!8057365 m!8410474))

(assert (=> b!8057334 d!2398838))

(declare-fun d!2398840 () Bool)

(declare-fun res!3187288 () Bool)

(declare-fun e!4748243 () Bool)

(assert (=> d!2398840 (=> res!3187288 e!4748243)))

(assert (=> d!2398840 (= res!3187288 (is-Nil!75611 (toList!11949 acc!836)))))

(assert (=> d!2398840 (= (forall!18531 (toList!11949 acc!836) lambda!474561) e!4748243)))

(declare-fun b!8057366 () Bool)

(declare-fun e!4748244 () Bool)

(assert (=> b!8057366 (= e!4748243 e!4748244)))

(declare-fun res!3187289 () Bool)

(assert (=> b!8057366 (=> (not res!3187289) (not e!4748244))))

(assert (=> b!8057366 (= res!3187289 (dynLambda!30272 lambda!474561 (h!82059 (toList!11949 acc!836))))))

(declare-fun b!8057367 () Bool)

(assert (=> b!8057367 (= e!4748244 (forall!18531 (t!391509 (toList!11949 acc!836)) lambda!474561))))

(assert (= (and d!2398840 (not res!3187288)) b!8057366))

(assert (= (and b!8057366 res!3187289) b!8057367))

(declare-fun b_lambda!290529 () Bool)

(assert (=> (not b_lambda!290529) (not b!8057366)))

(declare-fun m!8410476 () Bool)

(assert (=> b!8057366 m!8410476))

(declare-fun m!8410478 () Bool)

(assert (=> b!8057367 m!8410478))

(assert (=> b!8057334 d!2398840))

(declare-fun bs!1973239 () Bool)

(declare-fun d!2398842 () Bool)

(assert (= bs!1973239 (and d!2398842 b!8057334)))

(declare-fun lambda!474573 () Int)

(assert (=> bs!1973239 (= lambda!474573 lambda!474561)))

(assert (=> d!2398842 true))

(assert (=> d!2398842 (forall!18531 (toList!11949 acc!836) lambda!474573)))

(declare-fun lt!2730978 () Unit!172581)

(declare-fun choose!60565 (ListMap!7349) Unit!172581)

(assert (=> d!2398842 (= lt!2730978 (choose!60565 acc!836))))

(assert (=> d!2398842 (= (lemmaContainsAllItsOwnKeys!1112 acc!836) lt!2730978)))

(declare-fun bs!1973240 () Bool)

(assert (= bs!1973240 d!2398842))

(declare-fun m!8410482 () Bool)

(assert (=> bs!1973240 m!8410482))

(declare-fun m!8410484 () Bool)

(assert (=> bs!1973240 m!8410484))

(assert (=> b!8057334 d!2398842))

(declare-fun d!2398848 () Bool)

(declare-fun res!3187300 () Bool)

(declare-fun e!4748255 () Bool)

(assert (=> d!2398848 (=> res!3187300 e!4748255)))

(assert (=> d!2398848 (= res!3187300 (not (is-Cons!75611 l!10976)))))

(assert (=> d!2398848 (= (noDuplicateKeys!2735 l!10976) e!4748255)))

(declare-fun b!8057378 () Bool)

(declare-fun e!4748256 () Bool)

(assert (=> b!8057378 (= e!4748255 e!4748256)))

(declare-fun res!3187301 () Bool)

(assert (=> b!8057378 (=> (not res!3187301) (not e!4748256))))

(declare-fun containsKey!4913 (List!75737 K!22926) Bool)

(assert (=> b!8057378 (= res!3187301 (not (containsKey!4913 (t!391509 l!10976) (_1!38792 (h!82059 l!10976)))))))

(declare-fun b!8057379 () Bool)

(assert (=> b!8057379 (= e!4748256 (noDuplicateKeys!2735 (t!391509 l!10976)))))

(assert (= (and d!2398848 (not res!3187300)) b!8057378))

(assert (= (and b!8057378 res!3187301) b!8057379))

(declare-fun m!8410490 () Bool)

(assert (=> b!8057378 m!8410490))

(declare-fun m!8410492 () Bool)

(assert (=> b!8057379 m!8410492))

(assert (=> start!759108 d!2398848))

(declare-fun d!2398852 () Bool)

(assert (=> d!2398852 (= (inv!97400 acc!836) (invariantList!1955 (toList!11949 acc!836)))))

(declare-fun bs!1973241 () Bool)

(assert (= bs!1973241 d!2398852))

(assert (=> bs!1973241 m!8410458))

(assert (=> start!759108 d!2398852))

(assert (=> b!8057330 d!2398840))

(declare-fun d!2398854 () Bool)

(declare-fun noDuplicatedKeys!515 (List!75737) Bool)

(assert (=> d!2398854 (= (invariantList!1955 (toList!11949 acc!836)) (noDuplicatedKeys!515 (toList!11949 acc!836)))))

(declare-fun bs!1973242 () Bool)

(assert (= bs!1973242 d!2398854))

(declare-fun m!8410494 () Bool)

(assert (=> bs!1973242 m!8410494))

(assert (=> b!8057332 d!2398854))

(assert (=> b!8057328 d!2398840))

(declare-fun e!4748265 () Bool)

(declare-fun tp!2414100 () Bool)

(declare-fun b!8057390 () Bool)

(assert (=> b!8057390 (= e!4748265 (and tp_is_empty!55079 tp_is_empty!55081 tp!2414100))))

(assert (=> b!8057329 (= tp!2414091 e!4748265)))

(assert (= (and b!8057329 (is-Cons!75611 (t!391509 l!10976))) b!8057390))

(declare-fun b!8057391 () Bool)

(declare-fun e!4748266 () Bool)

(declare-fun tp!2414101 () Bool)

(assert (=> b!8057391 (= e!4748266 (and tp_is_empty!55079 tp_is_empty!55081 tp!2414101))))

(assert (=> b!8057331 (= tp!2414090 e!4748266)))

(assert (= (and b!8057331 (is-Cons!75611 (toList!11949 acc!836))) b!8057391))

(declare-fun b_lambda!290533 () Bool)

(assert (= b_lambda!290527 (or b!8057334 b_lambda!290533)))

(declare-fun bs!1973243 () Bool)

(declare-fun d!2398858 () Bool)

(assert (= bs!1973243 (and d!2398858 b!8057334)))

(declare-fun contains!21284 (ListMap!7349 K!22926) Bool)

(assert (=> bs!1973243 (= (dynLambda!30272 lambda!474561 (h!82059 l!10976)) (contains!21284 acc!836 (_1!38792 (h!82059 l!10976))))))

(declare-fun m!8410500 () Bool)

(assert (=> bs!1973243 m!8410500))

(assert (=> b!8057364 d!2398858))

(declare-fun b_lambda!290535 () Bool)

(assert (= b_lambda!290529 (or b!8057334 b_lambda!290535)))

(declare-fun bs!1973244 () Bool)

(declare-fun d!2398860 () Bool)

(assert (= bs!1973244 (and d!2398860 b!8057334)))

(assert (=> bs!1973244 (= (dynLambda!30272 lambda!474561 (h!82059 (toList!11949 acc!836))) (contains!21284 acc!836 (_1!38792 (h!82059 (toList!11949 acc!836)))))))

(declare-fun m!8410502 () Bool)

(assert (=> bs!1973244 m!8410502))

(assert (=> b!8057366 d!2398860))

(push 1)

(assert (not b!8057379))

(assert tp_is_empty!55079)

(assert (not d!2398842))

(assert (not b!8057378))

(assert (not b_lambda!290533))

(assert (not b_lambda!290535))

(assert (not b!8057367))

(assert (not bs!1973244))

(assert tp_is_empty!55081)

(assert (not d!2398852))

(assert (not b!8057390))

(assert (not b!8057365))

(assert (not b!8057391))

(assert (not bs!1973243))

(assert (not d!2398854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

